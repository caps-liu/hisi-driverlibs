
/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : viu.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       :
  Description   :
  History       :
  1.Date        : 2010/03/17
    Author      : j00131665
    Modification: Created file
******************************************************************************/

#include <asm/uaccess.h>
#include <linux/delay.h>

#include "hi_unf_common.h"
#include "hi_drv_dev.h"
#include "drv_venc_ext.h"
#include "hi_drv_file.h"
#include "hi_drv_proc.h"
#include "hi_drv_module.h"
#include "drv_venc_efl.h"
#include "drv_omxvenc_efl.h"
#include "drv_venc_ioctl.h"
#include "drv_venc.h"
#include "drv_omxvenc.h"
#include "hi_kernel_adapt.h"

#include "drv_vpss_ext.h"
//#include "hi_drv_vpss.h"

static UMAP_DEVICE_S g_VencRegisterData;

#define HI_VENC_LOCK() (void)pthread_mutex_lock(&g_VencMutex);
#define HI_VENC_UNLOCK() (void)pthread_mutex_unlock(&g_VencMutex);
VPSS_EXPORT_FUNC_S *pVpssFunc = HI_NULL;

extern int vedu_init( void );
extern OPTM_VENC_CHN_S g_stVencChn[VENC_MAX_CHN_NUM];

#define GET_INDEX_BYKERNHANDLE(s32ChIndx, hKernChn) \
    do {\
        s32ChIndx = 0; \
        while (s32ChIndx < VENC_MAX_CHN_NUM)\
        {   \
            if (g_stVencChn[s32ChIndx].hVEncHandle == hKernChn)\
            { \
                break; \
            } \
            s32ChIndx++; \
        } \
    } while (0)
    
#define GET_INDEX_BYUSRHANDLE(s32ChIndx, hUsrChn) \
    do {\
        s32ChIndx = 0; \
        while (s32ChIndx < VENC_MAX_CHN_NUM)\
        {   \
            if (g_stVencChn[s32ChIndx].hUsrHandle == hUsrChn)\
            { \
                break; \
            } \
            s32ChIndx++; \
        } \
    } while (0)
    
HI_BOOL gb_IsVencChanAlive[VENC_MAX_CHN_NUM] = {HI_FALSE};
//HI_HANDLE gh_AttachedSrc[VENC_MAX_CHN_NUM] = {HI_INVALID_HANDLE};

/*============Deviece===============*/

//VENC device open times
static atomic_t g_VencCount = ATOMIC_INIT(0);


HI_CHAR g_szYUVType[][8] = {"YUV_420", "YUV_422", "YUV_444", "UNKNOW"};
HI_CHAR g_szStoreType[][12] = {"SEMIPLANNAR", "PLANNAR", "PACKAGE", "UNKNOW"};

//static HI_S32  VENC_ProcRead(struct seq_file *p, HI_VOID *v);
//static HI_S32  VENC_ProcWrite(struct file * file, const char __user * buf, size_t count, loff_t *ppos);
static HI_VOID VENC_TimerFunc(HI_LENGTH_T value);

/*static VENC_EXPORT_FUNC_S s_VencExportFuncs =
{
    .pfnVencEncodeFrame = VENC_DRV_EflEncodeFrame,
};*/

/*typedef enum
{
    VENC_PROC_TIMEMODE = 0,
    VENC_PROC_FRAMEMODE,
    VENC_PROC_BUTT
} VENC_PROC_COMMAND_E;*/

static struct timer_list vencTimer;

HI_DECLARE_MUTEX(g_VencMutex);

HI_U32 g_u32VencOpenFlag = 0;

//add by l00228308
/*vpss 回调函数*/
HI_S32 VENC_VpssEventHandle(HI_HANDLE hVenc, HI_DRV_VPSS_EVENT_E enEventID, HI_VOID *pstArgs)
{  
    HI_DRV_VPSS_BUFFUL_STRATAGY_E *pstStratagy;

    if (!hVenc)
    {
        HI_ERR_VENC("bad handle %d in the function of VENC_VpssEventHandle!\n", hVenc);
        return HI_FAILURE;
    }

    /* Event handle */
    switch (enEventID)
    {
	 case  VPSS_EVENT_BUFLIST_FULL:
         pstStratagy = (HI_DRV_VPSS_BUFFUL_STRATAGY_E *)pstArgs;
         *pstStratagy = HI_DRV_VPSS_BUFFUL_PAUSE;
	 	 break;
     default:
         return HI_FAILURE;   	
    }

    return HI_SUCCESS;
}

static HI_S32 VENC_DRV_Open(struct inode *finode, struct file  *ffile)
{
    HI_S32 Ret, i;
    //HI_CHAR ProcName[12];
    //DRV_PROC_ITEM_S  *pProcItem;

    Ret = down_interruptible(&g_VencMutex);

    if (1 == atomic_inc_return(&g_VencCount))
    {
        VENC_DRV_BoardInit();

        Ret = VENC_DRV_EflOpenVedu();
        if (HI_SUCCESS != Ret)
        {
            HI_FATAL_VENC("VeduEfl_OpenVedu failed, ret=%d\n", Ret);
            atomic_dec(&g_VencCount);
            up(&g_VencMutex);
            return HI_FAILURE;
        }


        for (i = 0; i < VENC_MAX_CHN_NUM; i++)
        {
            memset(&(g_stVencChn[i]), 0, sizeof(OPTM_VENC_CHN_S));
            g_stVencChn[i].hVEncHandle = HI_INVALID_HANDLE;
        }

        init_timer(&vencTimer);
        vencTimer.expires  = jiffies + (HZ);
        vencTimer.function = VENC_TimerFunc;
        add_timer(&vencTimer);
    }

    g_u32VencOpenFlag = 1;
    up(&g_VencMutex);

    Ret = HI_DRV_MODULE_GetFunction(HI_ID_VPSS, (HI_VOID**)&pVpssFunc);
    if ((HI_NULL == pVpssFunc)||(HI_NULL == pVpssFunc->pfnVpssGlobalInit)||Ret)
    {
        HI_ERR_VENC("GetFunction from VPSS  failed.\n");
		return HI_FAILURE;
    }
    Ret = pVpssFunc->pfnVpssGlobalInit();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_VENC("VPSS_GlobalInit failed, ret=%d\n", Ret);
		return HI_FAILURE;
    }     
    return HI_SUCCESS;
}

static HI_S32 VENC_DRV_Close(struct inode *finode, struct file  *ffile)
{
    HI_U32 i = 0;
    HI_S32 Ret = 0;

   // HI_CHAR ProcName[12];

    Ret = down_interruptible(&g_VencMutex);

    del_timer(&vencTimer);

    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        if ((g_stVencChn[i].pWhichFile == ffile)
            && (g_stVencChn[i].hVEncHandle != HI_INVALID_HANDLE))
        {
            Ret |= (pVpssFunc->pfnVpssDestroyPort)(g_stVencChn[i].hPort[0]);
            Ret |= (pVpssFunc->pfnVpssDestroyVpss)(g_stVencChn[i].hVPSS);
            HI_INFO_VENC("Try VENC_DestroyChn %d/%#x.\n", i, g_stVencChn[i].hVEncHandle);
            Ret |= VENC_DRV_DestroyChn(g_stVencChn[i].hVEncHandle);
            if (HI_SUCCESS != Ret)
            {
                HI_WARN_VENC("force DestroyChn %d failed, Ret=%#x.\n", i, Ret);
            }

            g_stVencChn[i].pWhichFile = HI_NULL;
        }
    }
     
    Ret = pVpssFunc->pfnVpssGlobalDeInit();
    if(HI_SUCCESS != Ret)
    HI_ERR_VENC("VPSS_GlobalInit failed, ret=%d\n", Ret);  

    if (atomic_dec_and_test(&g_VencCount))
    {
        Ret = VENC_DRV_EflCloseVedu();
        if (HI_SUCCESS != Ret)
        {
            HI_FATAL_VENC("VeduEfl_CloseVedu failed, ret=%d\n", Ret);
            up(&g_VencMutex);
            return HI_FAILURE;
        }

        VENC_DRV_BoardDeinit();
    }

    g_u32VencOpenFlag = 0;
    up(&g_VencMutex);

    
    return HI_SUCCESS;
}

static HI_S32 VENC_DRV_Suspend(HI_VOID)
{
    HI_U32 i = 0;
    HI_S32 Ret;

    if (!g_u32VencOpenFlag)
    {
        HI_FATAL_VENC("entering VENC_DRV_Suspend\n");
        return 0;
    }

    Ret = down_interruptible(&g_VencMutex);
    HI_FATAL_VENC("entering VENC_DRV_Suspend\n");
    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        HI_FATAL_VENC("suspend venc channel %d handle %x, invalid = %x\n", i, g_stVencChn[i].hVEncHandle,
                      HI_INVALID_HANDLE );
        if (g_stVencChn[i].hVEncHandle != HI_INVALID_HANDLE && g_stVencChn[i].bEnable == 1)
        {
       
            Ret = VENC_DRV_StopReceivePic(g_stVencChn[i].hVEncHandle);
            if (HI_SUCCESS != Ret)
            {
                HI_WARN_VENC("VENC_StopReceivePic %d failed, Ret=%#x.\n", i, Ret);
            }

            gb_IsVencChanAlive[i] = HI_TRUE;
        }
        else
        {
            gb_IsVencChanAlive[i] = HI_FALSE;
        }
    }

    if (atomic_dec_and_test(&g_VencCount))
    {
        Ret = VENC_DRV_EflSuspendVedu();
        if (HI_SUCCESS != Ret)
        {
            HI_FATAL_VENC("VeduEfl_CloseVedu failed, ret=%d\n", Ret);
            up(&g_VencMutex);
            return HI_FAILURE;
        }

        VENC_DRV_BoardDeinit();
    }
	
    HI_FATAL_VENC("suspend venc ok!\n");
    up(&g_VencMutex);
    return HI_SUCCESS;
}

static HI_S32 VENC_DRV_Resume(HI_VOID)
{
   HI_S32 Ret, i;
    //HI_MOD_ID_E enModId;

    if (!g_u32VencOpenFlag)
    {
        HI_FATAL_VENC("entering VENC_DRV_Resume\n");
        return 0;
    }

    Ret = down_interruptible(&g_VencMutex);
    if (1 == atomic_inc_return(&g_VencCount))
    {
        VENC_DRV_BoardInit();
        Ret = VENC_DRV_EflResumeVedu();
        if (HI_SUCCESS != Ret)
        {
            HI_FATAL_VENC("VeduEfl_OpenVedu failed, ret=%d\n", Ret);
            atomic_dec(&g_VencCount);
            up(&g_VencMutex);
            return HI_FAILURE;
        }
    }

    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        if (gb_IsVencChanAlive[i])
        {
            HI_FATAL_VENC(" h %d, fr %d. gop %d\n ",
                          g_stVencChn[i].stChnUserCfg.u32Height,
                          g_stVencChn[i].stChnUserCfg.u32TargetFrmRate,
                          g_stVencChn[i].stChnUserCfg.u32Gop);
            Ret = VENC_DRV_StartReceivePic(g_stVencChn[i].hVEncHandle);
            if (HI_SUCCESS != Ret)
            {
                HI_FATAL_VENC(KERN_ERR "Resume VENC_StartReceivePic %d failed.\n", i);
                continue;
            }
        }
    }

    HI_FATAL_VENC(KERN_ERR "VENC_DRV_Resume OK.\n");
    up(&g_VencMutex);
    return HI_SUCCESS;
}

HI_S32 VENC_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, HI_VOID *arg)
{
    HI_S32 Ret = 0;
    HI_U32 u32Index = 0;
	
    /*vpss*/
    VPSS_HANDLE hVPSS;
    VPSS_HANDLE hPort0;
    HI_DRV_VPSS_CFG_S stVPSSCfg;
    HI_DRV_VPSS_PORT_CFG_S stPort0Cfg;
    //PFN_VPSS_PORT_CALLBACK stUserCallBack;

    //Ret = down_interruptible(&g_VencMutex);
    switch (cmd)
    {
    case CMD_VENC_CREATE_CHN:
    {   // VENC
        VENC_INFO_CREATE_S *pstCreateInfo = (VENC_INFO_CREATE_S *)arg;
		Ret = down_interruptible(&g_VencMutex);
        Ret = VENC_DRV_CreateChn(&(pstCreateInfo->hVencChn), &(pstCreateInfo->stAttr), 
			                      &(pstCreateInfo->stVeInfo),pstCreateInfo->bOMXChn, file);
		GET_INDEX_BYKERNHANDLE(u32Index, pstCreateInfo->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CREATE_ERR; 
		}
        g_stVencChn[u32Index].hUsrHandle = GET_VENC_CHHANDLE(u32Index);
        pstCreateInfo->hVencChn = g_stVencChn[u32Index].hUsrHandle;
         
		if (!g_stVencChn[u32Index].bOMXChn)
		{
	        /*create VPSS instance*/
	        Ret |= (pVpssFunc->pfnVpssGetDefaultCfg)(&stVPSSCfg);
	        Ret |= (pVpssFunc->pfnVpssCreateVpss)(&stVPSSCfg, &hVPSS);

	        /*create VPSS Port*/
	        Ret |= (pVpssFunc->pfnVpssGetDefaultPortCfg)(&stPort0Cfg);
	        stPort0Cfg.s32OutputWidth            = pstCreateInfo->stAttr.u32Width;
	        stPort0Cfg.s32OutputHeight           = pstCreateInfo->stAttr.u32Height;
	        stPort0Cfg.u32MaxFrameRate           = pstCreateInfo->stAttr.u32TargetFrmRate;//pstCreateInfo->stAttr.u32InputFrmRate;
	        stPort0Cfg.eDstCS                    = HI_DRV_CS_BT709_YUV_LIMITED;        
	        stPort0Cfg.stBufListCfg.eBufType     = HI_DRV_VPSS_BUF_VPSS_ALLOC_MANAGE; 
	        stPort0Cfg.stBufListCfg.u32BufNumber = 6;
	        stPort0Cfg.stBufListCfg.u32BufSize   = 2*(pstCreateInfo->stAttr.u32Width * pstCreateInfo->stAttr.u32Height);
	        stPort0Cfg.stBufListCfg.u32BufStride = pstCreateInfo->stAttr.u32Width;     
	        //stPort0Cfg.eAspMode                = HI_DRV_ASP_RAT_MODE_FULL;                      /*不同比例缩放策略*/
	        stPort0Cfg.eFormat                   = HI_DRV_PIX_FMT_NV21;                           /* 21  Y/CrCb 4:2:0  */
	        Ret |= (pVpssFunc->pfnVpssCreatePort)(hVPSS, &stPort0Cfg, &hPort0);
	        if (HI_SUCCESS == Ret)
	        {
	           g_stVencChn[u32Index].hVPSS       = hVPSS;
	           g_stVencChn[u32Index].hPort[0]    = hPort0;
	        }
	        /*注册vpss回调函数*/
	        Ret |= (pVpssFunc->pfnVpssRegistHook)(hVPSS, pstCreateInfo->hVencChn, VENC_VpssEventHandle);
		}
        up(&g_VencMutex);
    }
        break;
    case CMD_VENC_DESTROY_CHN:
    {
        // VENC
        HI_HANDLE *phVencChn = (HI_HANDLE *)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, *phVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
		
        if (!g_stVencChn[u32Index].bOMXChn)
        {
	        //VPSS
	        Ret |= (pVpssFunc->pfnVpssDestroyPort)(g_stVencChn[u32Index].hPort[0]);
	        Ret |= (pVpssFunc->pfnVpssDestroyVpss)(g_stVencChn[u32Index].hVPSS);
        }
        Ret  |= VENC_DRV_DestroyChn(g_stVencChn[u32Index].hVEncHandle);

        up(&g_VencMutex);
    }
        break;
    case CMD_VENC_ATTACH_INPUT:
    {
        VENC_INFO_ATTACH_S *pAttachInfo = (VENC_INFO_ATTACH_S*)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, pAttachInfo->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
        Ret = VENC_DRV_AttachInput(g_stVencChn[u32Index].hVEncHandle, pAttachInfo->hSrc, pAttachInfo->enModId);
        up(&g_VencMutex);
    }
        break;
    case CMD_VENC_DETACH_INPUT:
    {
        VENC_INFO_ATTACH_S *pAttachInfo = (VENC_INFO_ATTACH_S*)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, pAttachInfo->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
        pAttachInfo->enModId = (HI_MOD_ID_E)((g_stVencChn[u32Index].hSource & 0xff0000) >> 16);
        Ret = VENC_DRV_DetachInput(g_stVencChn[u32Index].hVEncHandle,g_stVencChn[u32Index].hSource, pAttachInfo->enModId);
        up(&g_VencMutex);
    }
        break;
    case CMD_VENC_SET_SRCINFO:
    {
        VENC_SET_SRC_INFO_S *pSetSrcInfo = (VENC_SET_SRC_INFO_S*)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, pSetSrcInfo->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
        Ret = VENC_DRV_SetSrcInfo(g_stVencChn[u32Index].hVEncHandle,&(pSetSrcInfo->stVencSrcInfo));
        up(&g_VencMutex);
    }
        break;
    case CMD_VENC_ACQUIRE_STREAM:
    {
        VENC_INFO_ACQUIRE_STREAM_S *pstAcqStrm = (VENC_INFO_ACQUIRE_STREAM_S*)arg;
		HI_HANDLE tempHandle;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, pstAcqStrm->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
		tempHandle = g_stVencChn[u32Index].hVEncHandle;
		up(&g_VencMutex);
		
        //GET_INDEX_BYUSRHANDLE(u32Index, pstAcqStrm->hVencChn);
        Ret = VENC_DRV_AcquireStream(tempHandle/*g_stVencChn[u32Index].hVEncHandle*/, 
                                     &(pstAcqStrm->stStream),
                                     pstAcqStrm->u32BlockFlag,
                                     &(pstAcqStrm->stBufOffSet));
    }
        break;
    case CMD_VENC_RELEASE_STREAM:
    {
        VENC_INFO_ACQUIRE_STREAM_S *pstAcqStrm = (VENC_INFO_ACQUIRE_STREAM_S*)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, pstAcqStrm->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
        Ret = VENC_DRV_ReleaseStream(g_stVencChn[u32Index].hVEncHandle, &(pstAcqStrm->stStream));
		up(&g_VencMutex);
    }
        break;
    case CMD_VENC_START_RECV_PIC:
    {
        HI_HANDLE *pHandle = (HI_HANDLE*)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, *pHandle);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
        Ret = VENC_DRV_StartReceivePic(g_stVencChn[u32Index].hVEncHandle);
		up(&g_VencMutex);
    }
        break;
    case CMD_VENC_STOP_RECV_PIC:
    {
        HI_HANDLE *pHandle = (HI_HANDLE*)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, *pHandle);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
        Ret = VENC_DRV_StopReceivePic(g_stVencChn[u32Index].hVEncHandle);
		up(&g_VencMutex);
    }
        break;
    case CMD_VENC_SET_CHN_ATTR:
    {
        VENC_INFO_CREATE_S *pstCreateInfo = (VENC_INFO_CREATE_S *)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, pstCreateInfo->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
        Ret = VENC_DRV_SetAttr(g_stVencChn[u32Index].hVEncHandle, &(pstCreateInfo->stAttr));
		up(&g_VencMutex);
    }
        break;
    case CMD_VENC_GET_CHN_ATTR:
    {
        VENC_INFO_CREATE_S *pstCreateInfo = (VENC_INFO_CREATE_S *)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, pstCreateInfo->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
        Ret = VENC_DRV_GetAttr(g_stVencChn[u32Index].hVEncHandle, &(pstCreateInfo->stAttr));
		up(&g_VencMutex);
    }
        break;
    case CMD_VENC_REQUEST_I_FRAME:
    {
        HI_HANDLE *pHandle = (HI_HANDLE*)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, *pHandle);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
        Ret = VENC_DRV_RequestIFrame(g_stVencChn[u32Index].hVEncHandle);
		up(&g_VencMutex);
    }
        break;
    case CMD_VENC_QUEUE_FRAME:                 //both omxvenc & venc use!!                                          
    {   
        VENC_INFO_QUEUE_FRAME_S *pQueueFrameInfo = (VENC_INFO_QUEUE_FRAME_S*)arg;
        Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, pQueueFrameInfo->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}

		if (g_stVencChn[u32Index].bOMXChn)
		{
		   Ret = VENC_DRV_QueueFrame_OMX(g_stVencChn[u32Index].hVEncHandle, &(pQueueFrameInfo->stVencFrame_OMX));
		}
		else
		{
		   Ret = VENC_DRV_QueueFrame(g_stVencChn[u32Index].hVEncHandle, &(pQueueFrameInfo->stVencFrame));
		}
        
		up(&g_VencMutex);
    }
        break;
    case CMD_VENC_DEQUEUE_FRAME:
    {
        VENC_INFO_QUEUE_FRAME_S *pQueueFrameInfo = (VENC_INFO_QUEUE_FRAME_S*)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index,pQueueFrameInfo->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}
        Ret = VENC_DRV_DequeueFrame(g_stVencChn[u32Index].hVEncHandle,&(pQueueFrameInfo->stVencFrame));
		up(&g_VencMutex);
    }
        break;       
    case CMD_VENC_GET_MSG:
    {
        VENC_INFO_GET_MSG_S *pMessageInfo   = (VENC_INFO_GET_MSG_S *)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index,pMessageInfo->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}		
        Ret = VENC_DRV_GetMessage_OMX(g_stVencChn[u32Index].hVEncHandle,&(pMessageInfo->msg_info_omx));
		up(&g_VencMutex);
    }
        break;
    case CMD_VENC_MMZ_MAP:
    {
        VENC_INFO_MMZ_MAP_S *pMMBInfo   = (VENC_INFO_MMZ_MAP_S *)arg;
		Ret = down_interruptible(&g_VencMutex);
        Ret = VENC_DRV_MMZ_Map_OMX(pMMBInfo->hVencChn, &(pMMBInfo->stVencBuf) );
		up(&g_VencMutex);
    }
        break;  
    case CMD_VENC_MMZ_UMMAP:
    {
        VENC_INFO_MMZ_MAP_S *pMMBInfo   = (VENC_INFO_MMZ_MAP_S *)arg;
		Ret = down_interruptible(&g_VencMutex);
        Ret = VENC_DRV_MMZ_UMMap_OMX(pMMBInfo->hVencChn, &(pMMBInfo->stVencBuf) );
		up(&g_VencMutex);
    }
        break;  
    case CMD_VENC_QUEUE_STREAM:                    //juse omxvenc use this api
    {

        VENC_INFO_QUEUE_FRAME_S *pstQueStrm = (VENC_INFO_QUEUE_FRAME_S*)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, pstQueStrm->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}			
        Ret = VENC_DRV_QueueStream_OMX(g_stVencChn[u32Index].hVEncHandle, &(pstQueStrm->stVencFrame_OMX));
		up(&g_VencMutex);
    }
        break;
    case CMD_VENC_FLUSH_PORT:
    {
        VENC_INFO_FLUSH_PORT_S *pstFlushPort = (VENC_INFO_FLUSH_PORT_S*)arg;
		Ret = down_interruptible(&g_VencMutex);
        GET_INDEX_BYUSRHANDLE(u32Index, pstFlushPort->hVencChn);
		if (u32Index >= VENC_MAX_CHN_NUM)
		{
		   up(&g_VencMutex);
		   return HI_ERR_VENC_CHN_NOT_EXIST; 
		}			
        Ret = VENC_DRV_FlushPort_OMX(g_stVencChn[u32Index].hVEncHandle, pstFlushPort->u32PortIndex);
		up(&g_VencMutex);
    }
        break;   
    default:
        HI_ERR_VENC("venc cmd unknown:%x\n", cmd);
        break;
    }

    //up(&g_VencMutex);
    return Ret;
}

static long VENC_DRV_Ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
    long Ret;

    Ret = (long)HI_DRV_UserCopy(file->f_dentry->d_inode, file, cmd, arg, VENC_Ioctl);
    return Ret;
}

static struct file_operations VENC_FOPS =
{
    .owner			= THIS_MODULE,
    .open			= VENC_DRV_Open,
    .unlocked_ioctl = VENC_DRV_Ioctl,
    .release		= VENC_DRV_Close,
};

/*****************************************************************************
 Prototype    : VENC_DRV_Suspend
 Description  : VENC module standby function
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
static int  venc_pm_suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
#if 1
    VENC_DRV_Suspend();
#else
    int i;
    int ret;
    HI_FATAL_VENC("entering venc_pm_suspend\n");

    // 0  now all usr processes are in sleep status, any delay is serious error!
    ret = down_trylock(&g_VencMutex);
    if (ret)
    {
        HI_FATAL_VENC("err0: lock !\n");
        return -1;
    }

    // 1.0
    if (atomic_read(&g_VencCount))
    {
        up(&g_VencMutex);
        HI_FATAL_VENC("err1: not close all file \n");
        return -1;
    }

    // 1.2
    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        if (g_stVencChn[i].pWhichFile)
        {
            up(&g_VencMutex);
            HI_FATAL_VENC("err2: chan %d not close \n", i);
            return -1;
        }
    }

    HI_FATAL_VENC("ok !\n");
    up(&g_VencMutex);
#endif
    return 0;
}

/*****************************************************************************
 Prototype    : VENC_DRV_Resume
 Description  : VENC module wake-up function
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
static int venc_pm_resume(PM_BASEDEV_S *pdev)
{
#if 1
    VENC_DRV_Resume();
#else
 #if 0
    down_trylock(&g_VencMutex);
    up(&g_VencMutex);
 #endif
    HI_FATAL_VENC("ok !\n");
#endif
    return 0;
}

static PM_BASEOPS_S venc_drvops =
{
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = venc_pm_suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = venc_pm_resume,
};

HI_S32 VENC_DRV_ModInit(HI_VOID)
{
    HI_U32 i;
    HI_S32 s32Ret = HI_FAILURE;


    s32Ret = VENC_DRV_Init();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VENC("Init drv fail!\n");
        return HI_FAILURE;
    }

    snprintf(g_VencRegisterData.devfs_name, 64, "%s", UMAP_DEVNAME_VENC);
    g_VencRegisterData.fops   = &VENC_FOPS;
    g_VencRegisterData.minor  = UMAP_MIN_MINOR_VENC;
    g_VencRegisterData.owner  = THIS_MODULE;
    g_VencRegisterData.drvops = &venc_drvops;
    if (HI_DRV_DEV_Register(&g_VencRegisterData) < 0)
    {
        HI_FATAL_VENC("register VENC failed.\n");
        return HI_FAILURE;
    }

    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        g_stVencChn[i].pWhichFile = NULL;
    }

    HI_INFO_VENC("register VENC successful.\n");

#ifdef MODULE
    HI_PRINT("Load hi_venc.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return 0;
}

HI_VOID VENC_DRV_ModExit(HI_VOID)
{
    HI_DRV_DEV_UnRegister(&g_VencRegisterData);
    VENC_DRV_Exit();

    return;
}

#if 0
static HI_S32 VENC_ProcRead(struct seq_file *p, HI_VOID *v)
{
    HI_U32 i = 0;
    HI_S32 s32Ret = HI_FAILURE;
    VeduEfl_StatInfo_S StatInfo;
    VeduEfl_StatInfo_S *pStatInfo = &StatInfo;
    HI_U32  srcID;
    HI_CHAR srcTab[4][8]={{"VI"},{"VO"},{"DISP"},{"User"}};
	HI_U32 u32SkipNum = 0;
    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        if (g_stVencChn[i].hVEncHandle != HI_INVALID_HANDLE)
        {
            s32Ret = VENC_DRV_EflQueryStatInfo(g_stVencChn[i].hVEncHandle, pStatInfo);
            if (s32Ret != HI_SUCCESS)
            {
                // to do: ?
                return HI_FAILURE;
            }
            switch(g_stVencChn[i].enSrcModId)
            {
                case HI_ID_VI:
                    srcID = 0;
                    break;
                case HI_ID_VO:
                    srcID = 1;
                    break;
                case HI_ID_DISP:
                    srcID = 2;
                    break;					
                default:
                    srcID = 3;
                    break;
            }
            PROC_PRINT(p, "------ Venc  %d ------\n", i);
            PROC_PRINT(p,
                            "Codec ID               :%s(0x%x)\n"
                            "Encode Cap Level       :%s\n"
                            "bOMXChn                :%d\n"
                            "Gop                    :%u\n"
                            "FrmRate(Input/Encoded) :%u/%u(fps)\n"
                            "BitRate(Target/Real)   :%u/%u(kbps)\n"
                            "Stream:  TotalByte=0x%x, bSplitEn=%d, SpiltSize= %uMB(%u)\n"
                            "         MaxQP = %u, MinQP = %u\n"
                            "Channel: bQuickEncode=%d, priority=%u\n"
                            "Picture: %d*%d, EncodedNum/SkipNum=%u/%u, InputRate=%u(%u)\n"
                            "         TargetRate=%u(%u),   Rotation=%u\n"
                            "Property: GetImgae per second(Try/OK):%u/%u\n"
                            "          PutImgae per second(Try/OK):%u/%u\n\n"
                            ,

                            g_szProtocol[g_stVencChn[i].stChnUserCfg.enVencType],
                            g_stVencChn[i].stChnUserCfg.enVencType,
                            g_szEncodeLevel[g_stVencChn[i].stChnUserCfg.enCapLevel],
                            g_stVencChn[i].bOMXChn,    
                            g_stVencChn[i].stChnUserCfg.u32Gop,

                            g_stVencChn[i].u32LastSecInputFps  ,
                            g_stVencChn[i].u32LastSecEncodedFps,

                            g_stVencChn[i].stChnUserCfg.u32TargetBitRate / 1000U,
                            g_stVencChn[i].u32LastSecKbps * 8 / 1000U,

                            pStatInfo->StreamTotalByte,
                            g_stVencChn[i].stChnUserCfg.bSlcSplitEn,
                            g_stVencChn[i].u32SliceSize,g_stVencChn[i].u32SliceSize*16,
                            g_stVencChn[i].stChnUserCfg.u32MaxQp,
                            g_stVencChn[i].stChnUserCfg.u32MinQp,
                            g_stVencChn[i].stChnUserCfg.bQuickEncode,
                            g_stVencChn[i].stChnUserCfg.u8Priority,

                            g_stVencChn[i].stChnUserCfg.u32Width,
                            g_stVencChn[i].stChnUserCfg.u32Height,
                            (pStatInfo->GetFrameNumOK - pStatInfo->SkipFrmNum),
                            pStatInfo->SkipFrmNum,
                            g_stVencChn[i].stChnUserCfg.u32InputFrmRate,pStatInfo->u32RealSendInputRrmRate,
                            g_stVencChn[i].stChnUserCfg.u32TargetFrmRate,pStatInfo->u32RealSendOutputFrmRate,

                            g_stVencChn[i].stChnUserCfg.u32RotationAngle,
                            
                            g_stVencChn[i].u32LastSecTryNum,g_stVencChn[i].u32LastSecOKNum,
                            g_stVencChn[i].u32LastSecPutNum,g_stVencChn[i].u32LastSecPutNum);
                            

            PROC_PRINT(p,
                            "Frame Input(%s->VENC):\n"
                            "    Acquire(Try/OK):  %d/%d\n"
                            "    Release(Try/OK):  %d/%d\n",
                            srcTab[srcID]/*(HI_ID_VI == g_stVencChn[i].enSrcModId) ? "VI" : "VO"*/,
                            pStatInfo->GetFrameNumTry, pStatInfo->GetFrameNumOK,
                            pStatInfo->PutFrameNumTry, pStatInfo->PutFrameNumOK);

            PROC_PRINT(p,
                            "Stream Output(VENC->User):\n"
                            "    Acquire(Try/OK):  %d/%d\n"
                            "    Release(Try/OK):  %d/%d\n\n",
                            pStatInfo->GetStreamNumTry, pStatInfo->GetStreamNumOK,
                            pStatInfo->PutStreamNumTry, pStatInfo->PutStreamNumOK);
        }
    }

    return HI_SUCCESS;
}

static HI_S32 VENC_ProcWrite(struct file * file,
                             const char __user * buf, size_t count, loff_t *ppos)

{
    HI_CHAR *p;
    HI_CHAR *org;
    HI_CHAR FileName[35];
    static HI_U32 u32Count;
    HI_U32 u32Para1, u32Para2;

    /* make sure input parameter is ok */
    if (count >= 4)
    {
        p = (char *)__get_free_page(GFP_KERNEL);
        if (copy_from_user(p, buf, count))
        {
            HI_ERR_VENC("copy_from_user failed.\n");
            return HI_FAILURE;
        }

        org = p;

        u32Para1 = (HI_U32)simple_strtoul(p, &p, 10);
        u32Para2 = (HI_U32)simple_strtoul(p + 1, &p, 10);

        switch (u32Para1)
        {
        case VENC_PROC_TIMEMODE:
            snprintf(FileName, 35,"/hidbg/venc_dump_%d.h264", u32Count++);
            g_VencProcWrite.bTimeModeRun = HI_TRUE;
            g_VencProcWrite.fpSaveFile = HI_DRV_FILE_Open(FileName, 1);
            if (HI_NULL == g_VencProcWrite.fpSaveFile)
            {
                HI_ERR_VENC("Can not create %s file.\n", FileName);
                g_VencProcWrite.bTimeModeRun = HI_FALSE;
                free_page((HI_U32)org);
                org = HI_NULL;
                p = HI_NULL;
                return HI_FAILURE;
            }

            msleep(1000 * u32Para2);
            g_VencProcWrite.bTimeModeRun = HI_FALSE;
            HI_DRV_FILE_Close(g_VencProcWrite.fpSaveFile);
            break;

        case VENC_PROC_FRAMEMODE:
            snprintf(FileName, 35,"/hidbg/venc_dump_%d.h264", u32Count++);
            g_VencProcWrite.bFrameModeRun = HI_TRUE;
            g_VencProcWrite.fpSaveFile = HI_DRV_FILE_Open(FileName, 1);
            if (HI_NULL == g_VencProcWrite.fpSaveFile)
            {
                HI_ERR_VENC("Can not create %s file.\n", FileName);
                g_VencProcWrite.bFrameModeRun = HI_FALSE;
                free_page((HI_U32)org);
                org = HI_NULL;
                p = HI_NULL;
                return HI_FAILURE;
            }

            g_VencProcWrite.u32FrameModeCount = u32Para2;
            while (1)
            {
                /* if the frame count reaches to aim, break */
                if (HI_FALSE == g_VencProcWrite.bFrameModeRun)
                {
                    break;
                }
                else
                {
                    msleep(100);
                }
            }

            HI_DRV_FILE_Close(g_VencProcWrite.fpSaveFile);
            break;

        default:
#ifndef HI_ADVCA_FUNCTION_RELEASE         
            printk("echo P1 P2 > /proc/msp/venc\n");
            printk("\tP1: 0-Time Latency Mode; 1-Frame Count Mode\n");
            printk("\tP2: Time Latency Seconds or Frame Count\n");
            printk("Only support P1 = 0 or 1 now.\n");
#endif            
            break;
        }

        free_page((HI_U32)org);
        org = HI_NULL;
        p = HI_NULL;
    }
    else
    {
#ifndef HI_ADVCA_FUNCTION_RELEASE    
        printk("echo P1 P2 > /proc/msp/venc\n");
        printk("\tP1: 0-Time Latency Mode; 1-Frame Count Mode\n");
        printk("\tP2: Time Latency Seconds or Frame Count\n");
#endif        
    }

    return count;
}
#endif

static HI_VOID VENC_TimerFunc(HI_LENGTH_T value)
{
    HI_U32 i = 0;
    HI_S32 s32Ret = HI_FAILURE;
    VeduEfl_StatInfo_S StatInfo;
    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        if (g_stVencChn[i].hVEncHandle != HI_INVALID_HANDLE)
        {
            s32Ret = VENC_DRV_EflQueryStatInfo(g_stVencChn[i].hVEncHandle, &StatInfo);
            if (HI_SUCCESS == s32Ret)
            {
                /* video encoder does frame rate control by this value */
                g_stVencChn[i].u32LastSecEncodedFps = StatInfo.GetFrameNumOK - StatInfo.QuickEncodeSkip 
                                                     -StatInfo.ErrCfgSkip - StatInfo.FrmRcCtrlSkip - StatInfo.SamePTSSkip
                                                     -StatInfo.TooFewBufferSkip - g_stVencChn[i].u32FrameNumLastEncoded;
                g_stVencChn[i].u32LastSecInputFps = StatInfo.GetFrameNumOK - g_stVencChn[i].u32FrameNumLastInput;
                g_stVencChn[i].u32LastSecKbps = StatInfo.StreamTotalByte - g_stVencChn[i].u32TotalByteLastEncoded;
                g_stVencChn[i].u32LastSecTryNum = StatInfo.GetFrameNumTry - g_stVencChn[i].u32LastTryNumTotal;
				g_stVencChn[i].u32LastSecOKNum = StatInfo.GetFrameNumOK - g_stVencChn[i].u32LastOKNumTotal;
                g_stVencChn[i].u32LastSecPutNum = StatInfo.PutFrameNumOK - g_stVencChn[i].u32LastPutNumTotal;
                /* save value for next calculation */
                g_stVencChn[i].u32FrameNumLastInput    = StatInfo.GetFrameNumOK;
                g_stVencChn[i].u32FrameNumLastEncoded  = StatInfo.GetFrameNumOK - StatInfo.QuickEncodeSkip - StatInfo.ErrCfgSkip
					                                   - StatInfo.FrmRcCtrlSkip - StatInfo.SamePTSSkip - StatInfo.TooFewBufferSkip;
                g_stVencChn[i].u32TotalByteLastEncoded = StatInfo.StreamTotalByte;
                g_stVencChn[i].u32LastTryNumTotal      = StatInfo.GetFrameNumTry;
				g_stVencChn[i].u32LastOKNumTotal       = StatInfo.GetFrameNumOK;
                g_stVencChn[i].u32LastPutNumTotal      = StatInfo.PutFrameNumOK;
            }
        }
    }

    vencTimer.expires  = jiffies + (HZ);
    vencTimer.function = VENC_TimerFunc;
    add_timer(&vencTimer);

    return;
}





#ifdef MODULE
module_init(VENC_DRV_ModInit);
module_exit(VENC_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");
