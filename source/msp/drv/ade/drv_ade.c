/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : drv_ade.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2013/04/17
  Description   :
  History       :
  1.Date        : 2013/04/17
    Author      : zgjie
    Modification: Created file

******************************************************************************/

/******************************* Include Files *******************************/

/* Sys headers */
#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <linux/vmalloc.h>
#include <linux/interrupt.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <mach/hardware.h>

/* Unf headers */
#include "hi_error_mpi.h"

/* Drv headers */
#include "drv_adsp_ext.h"
#include "drv_ade_private.h"
#include "drv_ade_ioctl.h"
#include "drv_ade_ext.h"
#include "hi_drv_ade.h"
#include "hi_audsp_ade.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/

#define ADE_NAME "HI_ADE"

/*************************** Structure Definition ****************************/
/* Channel entity */
typedef struct tagADE_CHAN_ENTITY_S
{
    ADE_CHANNEL_S *    pstChan;        /* Channel structure pointer */
    HI_U32             u32File;         /* File handle */
    HI_BOOL            bUsed;           /* Busy or free */
    atomic_t           atmUseCnt;       /* Channel use count, support multi user */
} ADE_CHAN_ENTITY_S;

typedef struct hiADE_DEFAULT_ATTR_S
{
    HI_U32 todo;
} ADE_DEFAULT_ATTR_S;

/* Global parameter */
typedef struct
{
    HI_U32                 u32ChanNum;     /* Record ADE channel num */
    ADE_CHAN_ENTITY_S      astChanEntity[HI_ADE_MAX_INSTANCE];   /* Channel parameter */
    atomic_t               atmOpenCnt;     /* Open times */
    HI_BOOL                bReady;         /* Init flag */
    ADE_DEFAULT_ATTR_S     stDefCfg;       /* Default channel config */
    ADE_REGISTER_PARAM_S*  pstProcParam;   /* ADE Proc functions */
    ADSP_EXPORT_FUNC_S*    pAdspFunc;       /* ADSP extenal functions */
    ADE_EXPORT_FUNC_S      stExtFunc;      /* ADE extenal functions */
} ADE_GLOBAL_PARAM_S;

/***************************** Global Definition *****************************/

/***************************** Static Definition *****************************/

static HI_S32 ADE_todofunc(HI_VOID)
{
    // todo

    return HI_SUCCESS;
}

DECLARE_MUTEX(g_AdeMutex);

static ADE_GLOBAL_PARAM_S s_stAdeDrv =
{
    .atmOpenCnt       = ATOMIC_INIT(0),
    .bReady           = HI_FALSE,

    .pstProcParam     = HI_NULL,

    .pAdspFunc        = HI_NULL,
    .stExtFunc        =
    {
        .pfnADE_TodoA = ADE_todofunc,
    }
};


/************************** ade pcm  decoder example *************************/
#if 1
static HI_ADE_ERRORTYPE_E ADE_PCM_Init(HI_HANDLE *phDecoder,
                               HI_ADE_OPEN_PARAM_S * pstOpenParam)
{
    return HI_ADE_ErrorNone;
}
static HI_ADE_ERRORTYPE_E ADE_PCM_DeInit(HI_HANDLE hDecoder)
{
    return HI_ADE_ErrorNone;
}
static HI_ADE_ERRORTYPE_E ADE_PCM_SetConfig(HI_HANDLE hDecoder,
                               HI_ADE_IOCTRL_PARAM_S * pstOpenParam)
{
    return HI_ADE_ErrorNone;
}
static HI_ADE_ERRORTYPE_E ADE_PCM_GetMaxPcmOutSize(HI_HANDLE hDecoder,
                               HI_U32 *pu32OutSizes)
{
    return HI_ADE_ErrorNone;
}
static HI_ADE_ERRORTYPE_E ADE_PCM_DecInquiryBytesLeftInputBuffer(HI_HANDLE hDecoder,
                               HI_U32 *pu32BytesLeft)
{
    return HI_ADE_ErrorNone;
}
static HI_ADE_ERRORTYPE_E ADE_PCM_GetInputBuffer(HI_HANDLE hDecoder,
                               HI_U32 u32RequestSize, HI_ADE_STREAM_BUF_S * pstStream)
{
    return HI_ADE_ErrorNone;
}
static HI_ADE_ERRORTYPE_E ADE_PCM_PutInputBuffer(HI_HANDLE hDecoder,
                               HI_ADE_STREAM_BUF_S * pstStream)
{
    return HI_ADE_ErrorNone;
}
static HI_ADE_ERRORTYPE_E ADE_PCM_DecodeFrame(HI_HANDLE hDecoder,
                               HI_ADE_FRMAE_BUF_S * pstAOut, HI_ADE_FRMAE_PRIV_INFO_S* pstPrivateInfo)
{
    return HI_ADE_ErrorNone;
}


HI_ADE_DECODER_S g_stAdePcmDecoder =
{
    .enCodecID           =  0x1000,
    .DecInit             =  ADE_PCM_Init,
    .DecDeInit             =  ADE_PCM_DeInit,
    .DecSetConfig             =  ADE_PCM_SetConfig,
    .DecGetMaxPcmOutSize             =  ADE_PCM_GetMaxPcmOutSize,
    .DecGetMaxBitsOutSize             =  HI_NULL,
    .DecInquiryBytesLeftInputBuffer             =  ADE_PCM_DecInquiryBytesLeftInputBuffer,
    .DecGetInputBuffer             =  ADE_PCM_GetInputBuffer,
    .DecPutInputBuffer             =  ADE_PCM_PutInputBuffer,
    .DecDecodeFrame             =  ADE_PCM_DecodeFrame,
};
#endif
/************************** ade pcm  decoder example end *********************/



/*********************************** Code ************************************/

static HI_VOID ADEMmzName(HI_HANDLE hHandle, HI_CHAR *pszMmzName)
{
    sprintf(pszMmzName, "%s%02d", "ademsg_", (HI_S32)hHandle);
}

static HI_VOID ADEMmzInbufName(HI_HANDLE hHandle, HI_CHAR *pszMmzName)
{
    sprintf(pszMmzName, "%s%02d", "adeibuf_", (HI_S32)hHandle);
}

static HI_VOID ADEMmzOutbufName(HI_HANDLE hHandle, HI_CHAR *pszMmzName)
{
    sprintf(pszMmzName, "%s%02d", "adeobuf_", (HI_S32)hHandle);
}

static HI_S32 ADE_RegChanProc(HI_S32 s32Num)
{
    HI_CHAR aszBuf[16];
    DRV_PROC_ITEM_S *pstItem;

    /* Check parameters */
    if (HI_NULL == s_stAdeDrv.pstProcParam)
    {
        return HI_FAILURE;
    }

    /* Create proc */
    sprintf(aszBuf, "ade%02d", s32Num);
    pstItem = HI_DRV_PROC_AddModule(aszBuf, HI_NULL, HI_NULL);
    if (!pstItem)
    {
        HI_FATAL_ADE("Create ade proc entry fail!\n");
        return HI_FAILURE;
    }

    /* Set functions */
    pstItem->read  = s_stAdeDrv.pstProcParam->pfnReadProc;
    pstItem->write = s_stAdeDrv.pstProcParam->pfnWriteProc;

    HI_INFO_ADE("Create proc entry for ade%d OK!\n", s32Num);
    return HI_SUCCESS;
}

static HI_VOID ADE_UnRegChanProc(HI_S32 s32Num)
{
    HI_CHAR aszBuf[16];

    sprintf(aszBuf, "ade%02d", s32Num);
    HI_DRV_PROC_RemoveModule(aszBuf);

    return;
}

static HI_S32 ADE_Chan_AllocHandle(HI_HANDLE *phHandle, struct file *pstFile)
{
    HI_U32 i;
    ADE_CHANNEL_S *pState;

    if (HI_NULL == phHandle)
    {
        HI_ERR_ADE("Bad param!\n");
        return HI_FAILURE;
    }

    /* Check ready flag */
    if (s_stAdeDrv.bReady != HI_TRUE)
    {
        HI_ERR_ADE("Need open first!\n");
        return HI_FAILURE;
    }

    /* Check channel number */
    if (s_stAdeDrv.u32ChanNum >= HI_ADE_MAX_INSTANCE)
    {
        HI_ERR_ADE("Too many chans:%d!\n", s_stAdeDrv.u32ChanNum);
        goto err0;
    }

    /* Allocate new channel */
    for (i = 0; i < HI_ADE_MAX_INSTANCE; i++)
    {
        if (0 == atomic_read(&s_stAdeDrv.astChanEntity[i].atmUseCnt))
        {
            pState = (ADE_CHANNEL_S *)HI_KMALLOC(HI_ID_ADE, sizeof(ADE_CHANNEL_S), GFP_KERNEL);
            if (HI_NULL == pState)
            {
                HI_ERR_ADE("Too many chans!\n");
                goto err0;
            }

            /* Allocate resource */
            s_stAdeDrv.astChanEntity[i].pstChan = pState;
            s_stAdeDrv.astChanEntity[i].u32File = (HI_U32)pstFile;
            s_stAdeDrv.u32ChanNum++;
            *phHandle = (HI_ID_ADE << 16) | i;
            atomic_inc(&s_stAdeDrv.astChanEntity[ i].atmUseCnt);
            break;
        }
    }

    if (i >= HI_ADE_MAX_INSTANCE)
    {
        HI_ERR_ADE("Too many chans!\n");
        goto err0;
    }

    return HI_SUCCESS;

err0:
    return HI_FAILURE;
}

static HI_S32 ADE_Chan_FreeHandle(HI_HANDLE hHandle)
{
    HI_KFREE(HI_ID_ADE, s_stAdeDrv.astChanEntity[hHandle].pstChan);
    s_stAdeDrv.astChanEntity[hHandle].pstChan = HI_NULL;
    s_stAdeDrv.astChanEntity[hHandle].u32File = (HI_U32)HI_NULL;
    s_stAdeDrv.u32ChanNum--;
    atomic_set(&s_stAdeDrv.astChanEntity[hHandle].atmUseCnt, 0);
    return HI_SUCCESS;
}

static HI_S32 ADECreateDecoder(HI_HANDLE hHandle, HI_ADE_OPEN_PARAM_S* pstOpenParams)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;

    ADE_HAL_SetMsgPoolAttr(hHandle, &pstChan->stMsgAttr);

    /* Initialize open  message */
    memcpy((HI_ADE_OPEN_PARAM_S *)pstChan->stMsgPoolMmz.u32StartVirAddr, pstOpenParams, sizeof(HI_ADE_OPEN_PARAM_S));
    if (pstOpenParams->u32CodecPrivateParamsSize)
    {
        HI_U32 u32Private = (pstChan->stMsgPoolMmz.u32StartVirAddr + sizeof(HI_ADE_OPEN_PARAM_S));
        memcpy((HI_VOID*)u32Private, pstOpenParams->pCodecPrivateData,
               pstOpenParams->u32CodecPrivateParamsSize);
    }

    if (HI_SUCCESS != ADE_HAL_SendAndAckCmd(hHandle, ADE_CMD_OPEN_DECODER))
    {
        HI_ERR_ADE(" ADE(%d) ADE_HAL_SendAndAckCmd fail!\n", hHandle);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 ADESetInputBufAttr(HI_HANDLE hHandle, HAL_ADE_INBUF_ATTR_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;

    ADE_HAL_SetInputBufAttr(hHandle, pstAttr);
    return HI_SUCCESS;
}

static HI_S32 ADE_CreateDecoder(HI_HANDLE hHandle, ADE_OPEN_DECODER_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;
    HI_ADE_OPEN_PARAM_S *pstOpenParams;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[hHandle].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;

    memset(pstChan,0, sizeof(ADE_CHANNEL_S));
    /* Initialize the channel msgpool mmz */
    ADEMmzName(hHandle, pstChan->szMsgPoolMmzName);
    if (HI_SUCCESS
        != HI_DRV_MMZ_AllocAndMap(pstChan->szMsgPoolMmzName, MMZ_OTHERS, pstAttr->u32MsgPoolSize, 4,
                                  &pstChan->stMsgPoolMmz))
    {
        HI_FATAL_ADE("Unable to mmz %s \n", pstChan->szMsgPoolMmzName);
        goto err0;
    }

    /* store  msgpoll  attr */
#if defined (HI_ADE_SWSIMULATE_SUPPORT)
    pstChan->stMsgAttr.u32MsgPoolAddr = pstChan->stMsgPoolMmz.u32StartVirAddr;
#else
    pstChan->stMsgAttr.u32MsgPoolAddr = pstChan->stMsgPoolMmz.u32StartPhyAddr;
#endif
    pstChan->stMsgAttr.u32MsgPoolSize = pstChan->stMsgPoolMmz.u32Size;


    /* store  open  attr */
    pstOpenParams = &pstChan->stOpenAttr;
    pstOpenParams->u32CodecID = pstAttr->u32CodecID;
    pstOpenParams->enDecMode  = (HI_ADE_DEC_MODE_E)pstAttr->stOpenParams.enDecMode;
    pstOpenParams->pCodecPrivateData = HI_NULL;
    pstOpenParams->u32CodecPrivateParamsSize = pstAttr->stOpenParams.u32CodecPrivateParamsSize;
    if (pstOpenParams->u32CodecPrivateParamsSize)
    {
        pstOpenParams->pCodecPrivateData = HI_KMALLOC(HI_ID_ADE, pstOpenParams->u32CodecPrivateParamsSize, GFP_KERNEL);
        if (!pstOpenParams->pCodecPrivateData)
        {
            goto err0;
        }
        memcpy(pstOpenParams->pCodecPrivateData, pstAttr->stOpenParams.pCodecPrivateData,
               pstOpenParams->u32CodecPrivateParamsSize);
    }

    if (HI_SUCCESS != ADECreateDecoder(hHandle, pstOpenParams))
    {
        goto err0;
    }

    pstChan->bStart = HI_FALSE;
    pstChan->bOpen = HI_TRUE;
    return HI_SUCCESS;
err0:
    if (pstChan->stMsgPoolMmz.u32StartPhyAddr)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stMsgPoolMmz);
    }

    if (pstChan->stOpenAttr.pCodecPrivateData)
    {
        HI_KFREE(HI_ID_ADE, pstChan->stOpenAttr.pCodecPrivateData);
    }

    return HI_FAILURE;
}

static HI_S32 ADE_DestroyDecoder(HI_HANDLE hHandle)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[hHandle].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;

    /* Stop decoder */
    if (HI_TRUE == pstChan->bStart)
    {
        if (HI_SUCCESS != ADE_HAL_SendAndAckCmd(hHandle, ADE_CMD_STOP_DECODER))
        {
            return HI_FAILURE;
        }

        pstChan->bStart = HI_FALSE;
    }

    /* Close decoder */
    if (HI_SUCCESS != ADE_HAL_SendAndAckCmd(hHandle, ADE_CMD_CLOSE_DECODER))
    {
        return HI_FAILURE;
    }

    if (pstChan->stMsgPoolMmz.u32StartPhyAddr)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stMsgPoolMmz);
    }

    if (pstChan->stInBufMmz.u32StartPhyAddr)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stInBufMmz);
    }

    if (pstChan->stOutBufMmz.u32StartPhyAddr)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stOutBufMmz);
    }

    if (pstChan->stOpenAttr.pCodecPrivateData)
    {
        HI_KFREE(HI_ID_ADE, pstChan->stOpenAttr.pCodecPrivateData);
    }

    pstChan->bOpen = HI_FALSE;
    return HI_SUCCESS;
}
static HI_S32 ADE_InitInputBuf(ADE_INIT_INPUTBUF_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;
    HAL_ADE_INBUF_ATTR_S *pstRecInputBufAttr;

    pstAttr->pstInbuf->u32BufDataPhyAddr = 0;
    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;
    if (HI_TRUE == pstChan->bStart)
    {
        HI_ERR_ADE("Chan %d should be stop!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    /* Record  input buffer  attr */
    pstRecInputBufAttr = &pstChan->stInbufAttr;
    pstRecInputBufAttr->u32BufSize = pstAttr->pstInbuf->u32BufSize;
    pstRecInputBufAttr->u32PtsBoundary = pstAttr->pstInbuf->u32Boundary;
    pstRecInputBufAttr->u32Wpos = 0;
    pstRecInputBufAttr->u32Rpos = 0;
    pstRecInputBufAttr->u32PtsLastReadPos = 0;
    pstRecInputBufAttr->bEosFlag = HI_FALSE;

    
    ADEMmzInbufName(pstAttr->enADEId, pstChan->szInBufMmzName);
    if (HI_SUCCESS
        != HI_DRV_MMZ_AllocAndMap(pstChan->szInBufMmzName, MMZ_OTHERS, pstRecInputBufAttr->u32BufSize, 4,
                                  &pstChan->stInBufMmz))
    {
        HI_FATAL_ADE("Unable to mmz %s \n", pstChan->szInBufMmzName);
        return HI_FAILURE;
    }
    pstAttr->pstInbuf->u32BufDataPhyAddr = pstChan->stInBufMmz.u32StartPhyAddr;
#if defined (HI_ADE_SWSIMULATE_SUPPORT)
    pstRecInputBufAttr->u32BufAddr = pstChan->stInBufMmz.u32StartVirAddr;
#else
    pstRecInputBufAttr->u32BufAddr = pstChan->stInBufMmz.u32StartPhyAddr;
#endif

    if (HI_SUCCESS != ADESetInputBufAttr(pstAttr->enADEId, pstRecInputBufAttr))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 ADE_DeInitInputBuf(ADE_DEINIT_INPUTBUF_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;
    if (HI_TRUE == pstChan->bStart)
    {
        HI_ERR_ADE("Chan %d should be stop!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }


    if (pstChan->stInBufMmz.u32StartPhyAddr)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stInBufMmz);
        memset(&pstChan->stInbufAttr,0,sizeof(HAL_ADE_INBUF_ATTR_S));
    }
    return HI_SUCCESS;
}

static HI_S32 ADE_InitOutputBuf(ADE_INIT_OUTPUTBUF_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;
    HI_U32 u32BufSize;
    HI_U32 u32UnitHeadSize;
    HI_U32 u32PeriodBufSize;

    pstAttr->pstInbuf->u32BufDataPhyAddr = 0;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;
    if (HI_TRUE == pstChan->bStart)
    {
        HI_ERR_ADE("Chan %d should be stop!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    // PeriodBuf = HI_ADE_FRAME_UNIT_S + FramePrivateInfoSize + FrameBufSize
    u32UnitHeadSize  = sizeof(HI_ADE_FRAME_UNIT_S);
    u32UnitHeadSize += pstAttr->pstInbuf->u32MaxFramePrivateInfoSize;
    u32PeriodBufSize = pstAttr->pstInbuf->u32MaxFrameBufSize + u32UnitHeadSize;

    u32BufSize = u32PeriodBufSize * pstAttr->pstInbuf->u32MaxFrameNumber;
    ADEMmzOutbufName(pstAttr->enADEId, pstChan->szOutBufMmzName);
    if (HI_SUCCESS
        != HI_DRV_MMZ_AllocAndMap(pstChan->szOutBufMmzName, MMZ_OTHERS, u32BufSize, 4,
                                  &pstChan->stOutBufMmz))
    {
        HI_FATAL_ADE("Unable to mmz %s \n", pstChan->szOutBufMmzName);
        return HI_FAILURE;
    }
    pstAttr->pstInbuf->u32BufDataPhyAddr = pstChan->stOutBufMmz.u32StartPhyAddr;

    /* store  outputbuf  attr */
#if defined (HI_ADE_SWSIMULATE_SUPPORT)
    pstChan->stOutBufAttr.u32BufAddr = pstChan->stOutBufMmz.u32StartVirAddr;
#else
    pstChan->stOutBufAttr.u32BufAddr = pstChan->stOutBufMmz.u32StartPhyAddr;
    if(HI_SUCCESS!=HI_DRV_MMZ_MapCache(&pstChan->stOutBufMmz))
    {
        HI_ERR_ADE("Chan %d HI_DRV_MMZ_MapCache fail!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }
#endif
    pstChan->stOutBufAttr.u32BufSize = pstChan->stOutBufMmz.u32Size;
    pstChan->stOutBufAttr.u32PeriodNumber  = pstAttr->pstInbuf->u32MaxFrameNumber;
    pstChan->stOutBufAttr.u32PeriodBufSize = u32PeriodBufSize;
    pstChan->stOutBufAttr.u32UnitHeadSize = u32UnitHeadSize;

    pstChan->stOutBufAttr.u32Wpos = 0;
    pstChan->stOutBufAttr.u32Rpos = 0;
    ADE_HAL_SetOutputBufAttr(pstAttr->enADEId, &pstChan->stOutBufAttr);



    return HI_SUCCESS;
}

static HI_S32 ADE_DeInitOutputBuf(ADE_DEINIT_OUTPUTBUF_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;
    if (HI_TRUE == pstChan->bStart)
    {
        HI_ERR_ADE("Chan %d should be stop!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }


    if (pstChan->stOutBufMmz.u32StartPhyAddr)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stOutBufMmz);
        memset(&pstChan->stOutBufAttr,0,sizeof(HAL_ADE_OUTPUTBUF_ATTR_S));
    }
    return HI_SUCCESS;
}

static HI_S32 ADE_StartDecoder(ADE_START_DECODER_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;

    if (HI_FALSE == pstChan->bStart)
    {
        if (HI_SUCCESS != ADE_HAL_SendAndAckCmd(pstAttr->enADEId, ADE_CMD_START_DECODER))
        {
            return HI_FAILURE;
        }

        pstChan->bStart = HI_TRUE;
    }

    return HI_SUCCESS;
}

static HI_S32 ADEStopDecoder(HI_HANDLE hHandle)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;

    if (HI_TRUE == pstChan->bStart)
    {
        if (HI_SUCCESS != ADE_HAL_SendAndAckCmd(hHandle, ADE_CMD_STOP_DECODER))
        {
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

static HI_S32 ADE_StopDecoder(ADE_STOP_DECODER_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;

    if (HI_SUCCESS != ADEStopDecoder(pstAttr->enADEId))
    {
        return HI_FAILURE;
    }

    pstChan->bStart = HI_FALSE;

    return HI_SUCCESS;
}

static HI_S32 ADE_IoctlDecoder(ADE_IOCTL_DECODER_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;

    /* Initialize ADE_CMD_IOCTRL_DECODER  message */
    memcpy((HI_ADE_IOCTRL_PARAM_S *)pstChan->stMsgPoolMmz.u32StartVirAddr, pstAttr, sizeof(HI_ADE_IOCTRL_PARAM_S));
    if (pstAttr->pstCtrlParams->u32PrivateSetConfigDataSize)
    {
        HI_U32 u32Private = (pstChan->stMsgPoolMmz.u32StartVirAddr + sizeof(HI_ADE_IOCTRL_PARAM_S));

        /* Initialize ADE_CMD_IOCTRL_DECODER  private message */
        if (copy_from_user((HI_VOID*)u32Private, (HI_VOID*)pstAttr->pstCtrlParams->pPrivateSetConfigData,
                           pstAttr->pstCtrlParams->u32PrivateSetConfigDataSize))
        {
            HI_ERR_ADE("copy data buf to usr failed\n");
            return HI_FAILURE;
        }
    }

    if (HI_SUCCESS != ADE_HAL_SendAndAckCmd(pstAttr->enADEId, ADE_CMD_IOCTRL_DECODER))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 ADE_SyncInputbuf(ADE_SYNC_INPUTBUF_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;

    if (HI_TRUE == pstChan->bOpen)
    {
        pstChan->u32PtsLastWritePos = pstAttr->pstSync->u32PtsWritePos;
        ADE_HAL_SyncInputBuf(pstAttr->enADEId, pstAttr->pstSync->u32WritePos, &pstAttr->pstSync->u32ReadPos);
    }

    return HI_SUCCESS;
}

static HI_S32 ADE_SetEosFlag(ADE_SET_EOSFLAG_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;

    if (HI_TRUE == pstChan->bOpen)
    {
        ADE_HAL_SetInputBufEosFlag(pstAttr->enADEId, HI_TRUE);
    }

    return HI_SUCCESS;
}

static HI_VOID ADEBuildHaFrame(HI_HANDLE hHandle, HI_ADE_FRAME_UNIT_S* pstUnit, HI_U32 u32FrameIdx,
                               ADE_RECEIVE_FRAME_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;
    ADE_FRMAE_BUF_S * pstAOut = pstAttr->pstAOut;
    HI_U32 u32VirAddr;
    HI_U32 u32PrivInfoVirAddr;
    HI_U32 u32PcmDataVirAddr;
    HI_U32 u32RawDataVirAddr;

    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;
#if !defined (HI_ADE_SWSIMULATE_SUPPORT)
{
    HI_U32 phys_addr;
    HI_U32 virt_addr;
    HI_U32 size;
    phys_addr = pstChan->stOutBufMmz.u32StartPhyAddr + pstChan->stOutBufAttr.u32PeriodBufSize * u32FrameIdx;
    virt_addr = pstChan->stOutBufMmz.u32StartVirAddr + pstChan->stOutBufAttr.u32PeriodBufSize * u32FrameIdx;
    size = pstChan->stOutBufAttr.u32PeriodBufSize;
    // todo, kernel mmz flush dirty 
    //HI_MPI_MMZ_Flush_Dirty(phys_addr,virt_addr,size);
}
#endif

    u32VirAddr  = pstChan->stOutBufMmz.u32StartVirAddr;
    u32VirAddr += pstChan->stOutBufAttr.u32PeriodBufSize * u32FrameIdx;
    u32PrivInfoVirAddr = u32VirAddr + sizeof(HI_ADE_FRAME_UNIT_S);
    u32PcmDataVirAddr = u32VirAddr + pstChan->stOutBufAttr.u32UnitHeadSize;
    u32RawDataVirAddr = u32PcmDataVirAddr + pstUnit->u32PcmOutBytes;
    if (pstUnit->u32PrivateDecInfoSize)
    {
        memcpy((HI_VOID*)pstAttr->pPrivate, (HI_VOID*)(u32VirAddr + sizeof(HI_ADE_FRAME_UNIT_S)),
               pstUnit->u32PrivateDecInfoSize);
    }

    if (pstUnit->u32PcmOutBytes)
    {
        memcpy((HI_VOID*)pstAOut->pOutbuf, (HI_VOID*)(u32PcmDataVirAddr), pstUnit->u32PcmOutBytes);
        pstAOut->u32PcmBytesPerFrame = pstUnit->u32PcmOutBytes;
        pstAOut->u32PcmBitDepth   = ADE_GET_BitPerSample(pstUnit->unPcmAttr);
        pstAOut->u32PcmChannels   = ADE_GET_Channels(pstUnit->unPcmAttr);
        pstAOut->u32PcmSampleRate = ADE_GET_SampleRate(pstUnit->unPcmAttr);
        pstAOut->bAckEosFlag = ADE_GET_AckEos(pstUnit->unPcmAttr);
    }

    if (pstUnit->u32LbrOutBytes || pstUnit->u32HbrOutBytes)
    {
        HI_U32 u32RawBytes = pstUnit->u32LbrOutBytes + pstUnit->u32HbrOutBytes;

        memcpy((HI_VOID*)(pstAOut->pOutbuf + pstUnit->u32PcmOutBytes), (HI_VOID*)(u32RawDataVirAddr), u32RawBytes);
        if (pstUnit->u32LbrOutBytes)
        {
            pstAOut->u32LbrBytesPerFrame = pstUnit->u32HbrOutBytes;
            pstAOut->u32LbrBitDepth   = ADE_GET_BitPerSample(pstUnit->unLbrAttr);
            pstAOut->u32LbrChannels   = ADE_GET_Channels(pstUnit->unLbrAttr);
            pstAOut->u32LbrSampleRate = ADE_GET_SampleRate(pstUnit->unLbrAttr);
            pstAOut->bAckEosFlag = ADE_GET_AckEos(pstUnit->unLbrAttr);
        }

        if (pstUnit->u32HbrOutBytes)
        {
            pstAOut->u32HbrBytesPerFrame = pstUnit->u32PcmOutBytes;
            pstAOut->u32HbrBitDepth   = ADE_GET_BitPerSample(pstUnit->unHbrAttr);
            pstAOut->u32HbrChannels   = ADE_GET_Channels(pstUnit->unHbrAttr);
            pstAOut->u32HbrSampleRate = ADE_GET_SampleRate(pstUnit->unHbrAttr);
            pstAOut->bAckEosFlag = ADE_GET_AckEos(pstUnit->unHbrAttr);
        }
    }

    if (pstUnit->u32PcmOutBytes || pstUnit->u32LbrOutBytes || pstUnit->u32HbrOutBytes)
    {
        pstAOut->u32CurnPtsReadPos = pstUnit->u32CurnPtsReadPos;
        pstAOut->u32StreamBitRate = pstUnit->u32BitRate;
    }
}

HI_S32 ADERecivedFrame(HI_HANDLE hHandle, HI_ADE_FRAME_UNIT_S *pstFrame, HI_U32 *pu32FrameIdx)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;
    HI_U32 u32WritePos, u32ReadPos;
    HI_U32 u32PeriodBufSize, u32DataSzie;
    HI_U32 u32ReadPtr;

    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;
    u32PeriodBufSize = pstChan->stOutBufAttr.u32PeriodBufSize;

    ADE_HAL_GetOutPutBufWptrAndRptr(hHandle, &u32WritePos, &u32ReadPos);
    u32DataSzie = u32WritePos - u32ReadPos;
    if (u32DataSzie > pstChan->stOutBufMmz.u32Size)
    {
        u32DataSzie += pstChan->stOutBufMmz.u32Size;
    }

    if (u32DataSzie < u32PeriodBufSize)
    {
        return HI_FAILURE;
    }

    HI_ASSERT(!(u32ReadPos % u32PeriodBufSize));
    *pu32FrameIdx = u32ReadPos / u32PeriodBufSize;

    u32ReadPtr = pstChan->stOutBufMmz.u32StartVirAddr + u32ReadPos;
    memcpy(pstFrame, (HI_ADE_FRAME_UNIT_S *)u32ReadPtr, sizeof(HI_ADE_FRAME_UNIT_S));

    return HI_SUCCESS;
}

HI_VOID ADEReleaseFrame(HI_HANDLE hHandle, HI_U32 u32FrameIdx)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;
    HI_U32 u32ReadPos;
    HI_U32 u32PeriodBufSize;

    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;
    u32PeriodBufSize = pstChan->stOutBufAttr.u32PeriodBufSize;
    if (u32FrameIdx >= pstChan->stOutBufAttr.u32PeriodNumber)
    {
        u32FrameIdx = 0;
    }

    u32ReadPos = u32FrameIdx * u32PeriodBufSize;

    ADE_HAL_SetOutPutBufRptr(hHandle, u32ReadPos);

    return;
}

static HI_S32 ADE_RecivedFrame(ADE_RECEIVE_FRAME_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;

    if (HI_TRUE == pstChan->bOpen)
    {
        HI_ADE_FRAME_UNIT_S stUnit;
        HI_U32 u32FrameIdx;
        if (HI_SUCCESS == ADERecivedFrame(pstAttr->enADEId, &stUnit, &u32FrameIdx))
        {
            ADEBuildHaFrame(pstAttr->enADEId, &stUnit, u32FrameIdx, pstAttr);
        }
    }

    return HI_SUCCESS;
}

static HI_S32 ADE_ReleaseFrame(ADE_RELEASE_FRAME_Param_S* pstAttr)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan)
    {
        HI_ERR_ADE("Chan %d not init!\n", pstAttr->enADEId);
        return HI_FAILURE;
    }

    pstChan = s_stAdeDrv.astChanEntity[pstAttr->enADEId].pstChan;

    if (HI_TRUE == pstChan->bOpen)
    {
        ADEReleaseFrame(pstAttr->enADEId, pstAttr->u32FrameIdx);
    }

    return HI_SUCCESS;
}

static HI_S32 ADE_OpenDev(HI_VOID)
{
    HI_U32 i;

    HI_S32 s32Ret;

    /* Init global parameter */

    for (i = 0; i < HI_ADE_MAX_INSTANCE; i++)
    {
        atomic_set(&s_stAdeDrv.astChanEntity[i].atmUseCnt, 0);
    }

    /* HAL_ADEE_Init , Init aoe hardare */
    if (s_stAdeDrv.pAdspFunc && s_stAdeDrv.pAdspFunc->pfnADSP_LoadFirmware)
    {
        s32Ret = (s_stAdeDrv.pAdspFunc->pfnADSP_LoadFirmware)(ADSP_CODE_ADE);
        if (HI_SUCCESS != s32Ret)
        {
            goto err;
        }
    }

    ADE_HAL_Init( ADE_COM_REG_BASE );

    /* Set ready flag */
    s_stAdeDrv.bReady = HI_TRUE;

    HI_INFO_ADE("ADE_OpenDev OK.\n");
    return HI_SUCCESS;
err:
    return HI_FAILURE;
}

static HI_S32 ADE_CloseDev(HI_VOID)
{
    HI_U32 i;
    HI_S32 s32Ret;

    /* Reentrant */
    if (s_stAdeDrv.bReady == HI_FALSE)
    {
        return HI_SUCCESS;
    }

    /* Set ready flag */
    s_stAdeDrv.bReady = HI_FALSE;

    /* Free all channels */
    for (i = 0; i < HI_ADE_MAX_INSTANCE; i++)
    {
        if (s_stAdeDrv.astChanEntity[i].bUsed)
        {
            if (s_stAdeDrv.astChanEntity[i].pstChan)
            {
                ADE_DestroyDecoder(i);
            }

            ADE_Chan_FreeHandle(i);
        }
    }

    /* HAL_AEE_DeInit */
    if (s_stAdeDrv.pAdspFunc && s_stAdeDrv.pAdspFunc->pfnADSP_LoadFirmware)
    {
        ADE_HAL_DeInit( );
        s32Ret = (s_stAdeDrv.pAdspFunc->pfnADSP_UnLoadFirmware)(ADSP_CODE_ADE);
    }

    return HI_SUCCESS;
}

static HI_S32 ADE_Ioctl( struct inode *inode, struct file *file, HI_U32 cmd, HI_VOID *arg )
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    switch (cmd)
    {
    case CMD_ADE_OPEN_DECODER:
    {
        ADE_OPEN_DECODER_Param_S *pstParam = (ADE_OPEN_DECODER_Param_S*)arg;
        if (HI_SUCCESS == ADE_Chan_AllocHandle(&hHandle, file))
        {
            s32Ret = ADE_CreateDecoder((hHandle) & 0xff, pstParam->pstOpenAttr);
            if (HI_SUCCESS != s32Ret)
            {
                ADE_Chan_FreeHandle(hHandle & 0xff);
                break;
            }

            pstParam->enADEId = hHandle & 0xff;
        }

        break;
    }

    case CMD_ADE_CLOSE_DECODER:
    {
        ADE_CLOSE_DECODER_Param_S *pstParam = (ADE_CLOSE_DECODER_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_DestroyDecoder( pstParam->enADEId );
        if (HI_SUCCESS != s32Ret)
        {
            break;
        }

        s32Ret = ADE_Chan_FreeHandle(hHandle & 0xff);

        break;
    }

    case CMD_ADE_INIT_INPUTBUF:
    {
        ADE_INIT_INPUTBUF_Param_S *pstParam = (ADE_INIT_INPUTBUF_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_InitInputBuf( pstParam );
        break;
    }
    case CMD_ADE_DEINIT_INPUTBUF:
    {
        ADE_DEINIT_INPUTBUF_Param_S *pstParam = (ADE_DEINIT_INPUTBUF_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_DeInitInputBuf( pstParam);
        break;
    }

    case CMD_ADE_INIT_OUTPUTBUF:
    {
        ADE_INIT_OUTPUTBUF_Param_S *pstParam = (ADE_INIT_OUTPUTBUF_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_InitOutputBuf( pstParam );
        break;
    }
    case CMD_ADE_DEINIT_OUTPUTBUF:
    {
        ADE_DEINIT_OUTPUTBUF_Param_S *pstParam = (ADE_DEINIT_OUTPUTBUF_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_DeInitOutputBuf( pstParam);
        break;
    }

    case CMD_ADE_START_DECODER:
    {
        ADE_START_DECODER_Param_S *pstParam = (ADE_START_DECODER_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_StartDecoder( pstParam );
        break;
    }
    case CMD_ADE_STOP_DECODER:
    {
        ADE_STOP_DECODER_Param_S *pstParam = (ADE_STOP_DECODER_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_StopDecoder( pstParam);
        break;
    }

    case CMD_ADE_IOCONTROL_DECODER:
    {
        ADE_IOCTL_DECODER_Param_S *pstParam = (ADE_IOCTL_DECODER_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_IoctlDecoder( pstParam);
        break;
    }

    case CMD_ADE_CHECK_CMDDONE:
    {
        break;
    }
    case CMD_ADE_SYNC_INPUTBUF:
    {
        ADE_SYNC_INPUTBUF_Param_S *pstParam = (ADE_SYNC_INPUTBUF_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_SyncInputbuf( pstParam);
        break;
    }
    case CMD_ADE_SET_EOSFLAG:
    {
        ADE_SET_EOSFLAG_Param_S *pstParam = (ADE_SET_EOSFLAG_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_SetEosFlag( pstParam);
        break;
    }
    case CMD_ADE_RECEIVE_FRAME:
    {
        ADE_RECEIVE_FRAME_Param_S *pstParam = (ADE_RECEIVE_FRAME_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_RecivedFrame( pstParam);
        break;
    }
    case CMD_ADE_RELEASE_FRAME:
    {
        ADE_RELEASE_FRAME_Param_S *pstParam = (ADE_RELEASE_FRAME_Param_S*)arg;
        CHECK_ADE_OPEN(pstParam->enADEId);
        s32Ret = ADE_ReleaseFrame( pstParam);
        break;
    }
    default:
        s32Ret = HI_FAILURE;
        {
            HI_WARN_ADE("unknown cmd: 0x%x\n", cmd);
        }
        break;
    }

    return s32Ret;
}

long ADE_DRV_Ioctl(struct file *file, HI_U32 cmd, unsigned long arg)
{
    long s32Ret = HI_SUCCESS;

    s32Ret = down_interruptible(&g_AdeMutex);

    //cmd process
    s32Ret = (long)HI_DRV_UserCopy(file->f_dentry->d_inode, file, cmd, arg, ADE_Ioctl);

    up(&g_AdeMutex);

    return s32Ret;
}

HI_S32 ADE_DRV_Open(struct inode *inode, struct file  *filp)
{
    HI_S32 s32Ret;

    s32Ret = down_interruptible(&g_AdeMutex);

    if (atomic_inc_return(&s_stAdeDrv.atmOpenCnt) == 1)
    {
        s_stAdeDrv.pAdspFunc = HI_NULL;

        /* Get demux functions */
        s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_ADSP, (HI_VOID**)&s_stAdeDrv.pAdspFunc);
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_ADE("Get adsp function err:%#x!\n", s32Ret);
            goto err;
        }

        /* Init device */
        if (HI_SUCCESS != ADE_OpenDev())
        {
            HI_FATAL_ADE("ADE_OpenDev err!\n" );
            goto err;
        }
    }

    return HI_SUCCESS;
err:
    atomic_dec(&s_stAdeDrv.atmOpenCnt);
    up(&g_AdeMutex);
    return HI_FAILURE;
}

HI_S32 ADE_DRV_Release(struct inode *inode, struct file  *filp)
{
    HI_S32 i;
    long s32Ret = HI_SUCCESS;

    s32Ret = down_interruptible(&g_AdeMutex);

    /* Not the last close, only close the channel match with the 'filp' */
    if (atomic_dec_return(&s_stAdeDrv.atmOpenCnt) != 0)
    {
        for (i = 0; i < HI_ADE_MAX_INSTANCE; i++)
        {
            if (s_stAdeDrv.astChanEntity[i].u32File == ((HI_U32)filp))
            {
                if (s_stAdeDrv.astChanEntity[i].bUsed)
                {
                    if (s_stAdeDrv.astChanEntity[i].pstChan)
                    {
                        if (HI_SUCCESS != ADE_DestroyDecoder(i))
                        {
                            atomic_inc(&s_stAdeDrv.atmOpenCnt);
                            up(&g_AdeMutex);
                            return HI_FAILURE;
                        }
                    }

                    ADE_Chan_FreeHandle(i);
                }
            }
        }
    }
    /* Last close */
    else
    {
        ADE_CloseDev();
    }

    up(&g_AdeMutex);
    return HI_SUCCESS;
}

HI_S32 ADE_DRV_RegisterProc(ADE_REGISTER_PARAM_S *pstParam)
{
    HI_S32 i;

    /* Check parameters */
    if (HI_NULL == pstParam)
    {
        return HI_FAILURE;
    }

    s_stAdeDrv.pstProcParam = pstParam;

    /* Create proc */
    for (i = 0; i < HI_ADE_MAX_INSTANCE; i++)
    {
        if (s_stAdeDrv.astChanEntity[i].pstChan)
        {
            ADE_RegChanProc(i);
        }
    }

    return HI_SUCCESS;
}

HI_VOID ADE_DRV_UnregisterProc(HI_VOID)
{
    HI_S32 i;

    /* Unregister */
    for (i = 0; i < HI_ADE_MAX_INSTANCE; i++)
    {
        if (s_stAdeDrv.astChanEntity[i].pstChan)
        {
            ADE_UnRegChanProc(i);
        }
    }

    /* Clear param */
    s_stAdeDrv.pstProcParam = HI_NULL;
    return;
}

#define HI_ADE_DRV_SUSPEND_SUPPORT
#if defined (HI_ADE_DRV_SUSPEND_SUPPORT)
static HI_S32 ADERecoverPtsReadPos(HI_HANDLE hHandle)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;
    HI_U32 LeftInbytes;

    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;

    // recover u32PtsLastReadPos
    pstChan->stInbufAttr.u32PtsLastReadPos = pstChan->u32PtsLastWritePos;
    LeftInbytes = pstChan->stInbufAttr.u32Wpos - pstChan->stInbufAttr.u32Rpos;
    if (LeftInbytes > pstChan->stInbufAttr.u32BufSize)
    {
        LeftInbytes += pstChan->stInbufAttr.u32BufSize;
    }

    pstChan->stInbufAttr.u32PtsLastReadPos = pstChan->u32PtsLastWritePos - LeftInbytes;
    if (pstChan->stInbufAttr.u32PtsLastReadPos > pstChan->stInbufAttr.u32PtsBoundary)
    {
        pstChan->stInbufAttr.u32PtsLastReadPos += pstChan->stInbufAttr.u32PtsBoundary;
    }

    return HI_SUCCESS;
}

static HI_S32 ADE_GetSettings(HI_HANDLE hHandle)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;

    ADE_HAL_GetInputBufAttr(hHandle, &pstChan->stInbufAttr);
    ADERecoverPtsReadPos(hHandle);
    ADE_HAL_GetOutputBufAttr(hHandle, &pstChan->stOutBufAttr);

    return HI_SUCCESS;
}

static HI_S32 ADE_RestoreSettings(HI_HANDLE hHandle)
{
    ADE_CHANNEL_S *pstChan = HI_NULL;

    pstChan = s_stAdeDrv.astChanEntity[hHandle].pstChan;

    ADE_HAL_SetInputBufAttr(hHandle, &pstChan->stInbufAttr);
    ADE_HAL_SetOutputBufAttr(hHandle, &pstChan->stOutBufAttr);
    if (HI_TRUE == pstChan->bStart)
    {
        if (HI_SUCCESS != ADE_HAL_SendAndAckCmd(hHandle, ADE_CMD_START_DECODER))
        {
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

#endif

HI_S32 ADE_DRV_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
#if defined (HI_ADE_DRV_SUSPEND_SUPPORT)
    HI_S32 i;
    long s32Ret = HI_SUCCESS;
    HI_FATAL_ADE("entering\n");

    s32Ret = down_interruptible(&g_AdeMutex);

    /* Destory all track */
    for (i = 0; i < HI_ADE_MAX_INSTANCE; i++)
    {
        if (atomic_read(&s_stAdeDrv.astChanEntity[i].atmUseCnt))
        {
            /* stop decoder */
            ADEStopDecoder(i);

            /* Store decoder settings */
            s32Ret = ADE_GetSettings(i);
            if (HI_SUCCESS != s32Ret)
            {
                HI_FATAL_ADE("ADE_GetSettings fail\n");
                up(&g_AdeMutex);
                return HI_FAILURE;
            }
        }
    }

    up(&g_AdeMutex);
#endif
    HI_FATAL_ADE("ok\n");
    return HI_SUCCESS;
}

HI_S32 ADE_DRV_Resume(PM_BASEDEV_S *pdev)
{
#if defined (HI_ADE_DRV_SUSPEND_SUPPORT)
    HI_S32 i;
    long s32Ret = HI_SUCCESS;
    HI_FATAL_ADE("entering\n");

    s32Ret = down_interruptible(&g_AdeMutex);

    if (HI_TRUE == s_stAdeDrv.bReady)
    {
        /* HAL_ADEE_Init , Init aoe hardare */
        if (s_stAdeDrv.pAdspFunc && s_stAdeDrv.pAdspFunc->pfnADSP_LoadFirmware)
        {
            s32Ret = (s_stAdeDrv.pAdspFunc->pfnADSP_LoadFirmware)(ADSP_CODE_ADE);
            if (HI_SUCCESS != s32Ret)
            {
                HI_FATAL_ADE("load aoe fail\n");
                up(&g_AdeMutex);
                return HI_FAILURE;
            }
        }

 #if 0
        /* ADE hardare reset */
        s32Ret = HAL_ADE_HwReset();
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_ADE("hw reset fail\n");
            up(&g_AdeMutex);
            return HI_FAILURE;
        }
 #endif


        /* Restore all ade */

        for (i = 0; i < HI_ADE_MAX_INSTANCE; i++)
        {
            if (atomic_read(&s_stAdeDrv.astChanEntity[i].atmUseCnt))
            {
                HI_ADE_OPEN_PARAM_S* pstOpenParams = &s_stAdeDrv.astChanEntity[i].pstChan->stOpenAttr;
                if (HI_SUCCESS != ADECreateDecoder(i, pstOpenParams))
                {
                    HI_FATAL_ADE("ADECreateDecoder(%d) fail\n", i);
                    up(&g_AdeMutex);
                    return HI_FAILURE;
                }

                /* Restore decoder  settings */
                s32Ret = ADE_RestoreSettings(i);
                if (HI_SUCCESS != s32Ret)
                {
                    HI_FATAL_ADE("AO_Track_Create(%d) fail\n", i);
                    up(&g_AdeMutex);
                    return HI_FAILURE;
                }
            }
        }

        up(&g_AdeMutex);
    }
#endif


    HI_FATAL_ADE("ok\n");
    return HI_SUCCESS;
}

HI_S32 ADE_DRV_Init(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = down_interruptible(&g_AdeMutex);
    s32Ret = HI_DRV_MODULE_Register(HI_ID_ADE, ADE_NAME, (HI_VOID*)&s_stAdeDrv.stExtFunc);
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_ADE("Reg module fail:%#x!\n", s32Ret);
        up(&g_AdeMutex);
        return s32Ret;
    }

    up(&g_AdeMutex);
    return HI_SUCCESS;
}

HI_VOID ADE_DRV_Exit(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = down_interruptible(&g_AdeMutex);
    HI_DRV_MODULE_UnRegister(HI_ID_ADE);

    up(&g_AdeMutex);
    return;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */
