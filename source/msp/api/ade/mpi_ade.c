/*****************************************************************************
*              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName: hi_aenc.c
* Description: Describe main functionality and purpose of this file.
*
* History:
* Version   Date         Author     DefectNum    Description
* 0.01      2013-01-31   zgjie     NULL         Create this file.
*
*****************************************************************************/

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/poll.h>
#include <pthread.h>

#include "hi_type.h"
#include "hi_debug.h"
#include "hi_error_mpi.h"
#include "hi_module.h"
#include "hi_common.h"
#include "hi_mpi_mem.h"
#include "hi_mpi_ade.h"
#include "hi_drv_struct.h"
#include "drv_ade_ioctl.h"
#include "hi_audsp_ade.h"

static HI_S32 g_ADEDevFd = -1;
static HI_S32 g_s32AdeInitCnt = 0;
static const HI_CHAR g_ADEDevName[] = "/dev/" UMAP_DEVNAME_ADE;
static pthread_mutex_t g_ADEMutex = PTHREAD_MUTEX_INITIALIZER;

#define HI_ADE_LOCK() (void)pthread_mutex_lock(&g_ADEMutex);
#define HI_ADE_UNLOCK() (void)pthread_mutex_unlock(&g_ADEMutex);
#define ADEHandle2ID(hAde) do {hAde = hAde & 0xffff;} while (0)

#define ADE_CHECK_INIT() \
    do {\
        HI_ADE_LOCK(); \
        if (g_ADEDevFd < 0)\
        {\
            HI_ERR_ADE("ADE is not init.\n"); \
            HI_ADE_UNLOCK(); \
            return HI_FAILURE; \
        } \
        HI_ADE_UNLOCK(); \
    } while (0)

#define ADE_CHECK_HANDLE(hAde) \
    do {\
        if (((hAde & 0xffff0000) != (HI_ID_ADE << 16)) \
            || ((hAde & 0x0000ffff) >= ADE_CHAN_BUTT))\
        {\
            HI_ERR_ADE("invalid ADE handle:0x%x\n", hAde); \
            return HI_FAILURE; \
        } \
    } while (0)

#define ADE_CHECK_POINTER(p) \
    do                                  \
    {                                   \
        if (HI_NULL == p)               \
        {                               \
            HI_ERR_ADE("Null pointer\n"); \
            return HI_FAILURE; \
        }                               \
    } while (0)

HI_S32 HI_MPI_ADE_Init(HI_VOID)
{
    struct stat st;

    HI_ADE_LOCK();

    if (!g_s32AdeInitCnt)
    {
        /* already opened in this process */
        if (g_ADEDevFd > 0)
        {
            HI_ADE_UNLOCK();
            return HI_SUCCESS;
        }

        if (HI_FAILURE == stat(g_ADEDevName, &st))
        {
            HI_FATAL_ADE("ADE Dev(%s) is not exist.\n", g_ADEDevName);
            HI_ADE_UNLOCK();
            return HI_FAILURE;
        }

        if (!S_ISCHR (st.st_mode))
        {
            HI_FATAL_ADE("ADE is not device.\n");
            HI_ADE_UNLOCK();
            return HI_FAILURE;
        }

        g_ADEDevFd = open(g_ADEDevName, O_RDWR | O_NONBLOCK, 0);

        if (g_ADEDevFd < 0)
        {
            HI_FATAL_ADE("open ADE fail.\n");
            HI_ADE_UNLOCK();
            return HI_FAILURE;
        }
    }

    g_s32AdeInitCnt++;

    HI_ADE_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_ADE_DeInit(HI_VOID)
{
    HI_S32 Ret;

    HI_ADE_LOCK();

    if (g_s32AdeInitCnt)
    {
        g_s32AdeInitCnt--;
        if (!g_s32AdeInitCnt)
        {
            if (g_ADEDevFd < 0)
            {
                HI_ADE_UNLOCK();
                return HI_SUCCESS;
            }

            Ret = close(g_ADEDevFd);
            if (HI_SUCCESS != Ret)
            {
                HI_FATAL_ADE("close ADE err.\n");
                HI_ADE_UNLOCK();
                return HI_FAILURE;
            }

            g_ADEDevFd = -1;
        }
    }

    HI_ADE_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_ADE_CreateDecoder(HI_HANDLE *phAde, ADE_OPEN_DECODER_S *pstParams)
{
    HI_S32 Ret;
    ADE_OPEN_DECODER_Param_S stParm;

    ADE_CHECK_INIT();
    stParm.pstOpenAttr = pstParams;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_OPEN_DECODER, &stParm);
    if (Ret == HI_SUCCESS)
    {
        *phAde = ((HI_U32)stParm.enADEId) | (HI_ID_ADE << 16);
    }
    else
    {
        HI_ERR_ADE("HI_MPI_ADE_CreateDecoder failed\n");
    }

    return Ret;
}

HI_S32 HI_MPI_ADE_DestroyDecoder(HI_HANDLE hAde)
{
    HI_S32 Ret;
    ADE_CLOSE_DECODER_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_CLOSE_DECODER, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_CLOSE_DECODER(0x%x) failed\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_ADE_StartDecoder(HI_HANDLE hAde)
{
    HI_S32 Ret;
    ADE_START_DECODER_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_START_DECODER, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_START_DECODER(0x%x) failed\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_ADE_StopDecoder(HI_HANDLE hAde)
{
    HI_S32 Ret;
    ADE_STOP_DECODER_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_STOP_DECODER, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_STOP_DECODER(0x%x) failed\n", Ret);
    }

    return Ret;
}


HI_S32 HI_MPI_ADE_InbufSyncWpos(HI_HANDLE hAde, ADE_INBUF_SYNC_WPOS_S *pstSyncInbuf)
{
    HI_S32 Ret;
    ADE_SYNC_INPUTBUFWPOS_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    stParm.pstSync = pstSyncInbuf;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_SYNC_INPUTBUFWPOS, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_SYNC_INPUTBUFWPOS(0x%x) failed\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_ADE_InbufSyncRpos(HI_HANDLE hAde, ADE_INBUF_SYNC_RPOS_S *pstSyncInbuf)
{
    HI_S32 Ret;
    ADE_SYNC_INPUTBUFRPOS_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    stParm.pstSync = pstSyncInbuf;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_SYNC_INPUTBUFRPOS, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_SYNC_INPUTBUFRPOS(0x%x) failed\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_ADE_InbufGetPtsRpos(HI_HANDLE hAde, HI_U32 *pu32PtsReadPos)
{
    HI_S32 Ret;
    ADE_GET_PTSREADPOS_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_GET_PTSREADPOS, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_GET_PTSREADPOS(0x%x) failed\n", Ret);
    }

    *pu32PtsReadPos = stParm.u32PtsReadPos;
    return Ret;
}

HI_S32 HI_MPI_ADE_InbufSetEosflag(HI_HANDLE hAde)
{
    HI_S32 Ret;
    ADE_SET_EOSFLAG_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_SET_EOSFLAG, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_SET_EOSFLAG(0x%x) failed\n", Ret);
    }

    return Ret;
}


HI_S32 HI_MPI_ADE_SendControlCmd(HI_HANDLE hAde, ADE_IOCTRL_PARAM_S *pstCtrlParams)
{
    HI_S32 Ret;
    ADE_IOCTL_DECODER_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    stParm.pstCtrlParams = pstCtrlParams;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_IOCONTROL_DECODER, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_IOCONTROL_DECODER(0x%x) failed\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_ADE_CheckCmdDone(HI_HANDLE hAde)
{
    HI_S32 Ret;
    ADE_CHECK_CMDDONE_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_CHECK_CMDDONE, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_CHECK_CMDDONE(0x%x) failed\n", stParm.u32CmdRetCode);
    }

    return Ret;
}

HI_S32 HI_MPI_ADE_InbufInit(HI_HANDLE hAde, ADE_INBUF_ATTR_S *pstParams)
{
    HI_S32 Ret;
    ADE_INIT_INPUTBUF_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId  = (ADE_CHAN_ID_E)hAde;
    stParm.pstInbuf = pstParams;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_INIT_INPUTBUF, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_INIT_INPUTBUF(0x%x) failed\n", Ret);
        return Ret;
    }
    if (pstParams->u32BufDataPhyAddr)
    {
        HI_U32 cache = 0;
        pstParams->u32BufDataVirAddr = (HI_U32)HI_MMZ_Map((HI_U32)pstParams->u32BufDataPhyAddr, cache);
        if (HI_NULL_PTR == pstParams->u32BufDataVirAddr)
        {
            HI_ERR_ADE("HI_MMZ_Map fail\n");
            return HI_FAILURE;
        }
    }
    else
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_ADE_InbufDeInit(HI_HANDLE hAde)
{
    HI_S32 Ret;
    ADE_DEINIT_INPUTBUF_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_DEINIT_INPUTBUF, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_DEINIT_INPUTBUF(0x%x) failed\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_ADE_OutbufInit(HI_HANDLE hAde, ADE_OUTBUF_ATTR_S *pstParams)
{
    HI_S32 Ret;
    ADE_INIT_OUTPUTBUF_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId  = (ADE_CHAN_ID_E)hAde;
    stParm.pstInbuf = pstParams;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_INIT_OUTPUTBUF, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_INIT_OUTPUTBUF(0x%x) failed\n", Ret);
        return Ret;
    }
    if (pstParams->u32BufDataPhyAddr)
    {
        HI_U32 cache = 1;
        pstParams->u32BufDataVirAddr = (HI_U32)HI_MMZ_Map((HI_U32)pstParams->u32BufDataPhyAddr, cache);
        if (HI_NULL_PTR == pstParams->u32BufDataVirAddr)
        {
            HI_ERR_ADE("HI_MMZ_Map fail\n");
            return HI_FAILURE;
        }
    }
    else
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;

}

HI_S32 HI_MPI_ADE_OutbufDeInit(HI_HANDLE hAde)
{
    HI_S32 Ret;
    ADE_DEINIT_OUTPUTBUF_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_DEINIT_OUTPUTBUF, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_DEINIT_OUTPUTBUF(0x%x) failed\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_ADE_ReceiveFrame(HI_HANDLE hAde, ADE_FRMAE_BUF_S * pstAOut, HI_VOID * pPrivate)
{
    HI_S32 Ret;
    ADE_RECEIVE_FRAME_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId  = (ADE_CHAN_ID_E)hAde;
    stParm.pstAOut  = pstAOut;
    stParm.pPrivate = pPrivate;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_RECEIVE_FRAME, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_RECEIVE_FRAME(0x%x) failed\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_ADE_ReleaseFrame(HI_HANDLE hAde, HI_U32 u32FrameIdx)
{
    HI_S32 Ret;
    ADE_DETACH_INPUTBUF_Param_S stParm;

    ADE_CHECK_INIT();
    ADE_CHECK_HANDLE(hAde);
    ADEHandle2ID(hAde);

    stParm.enADEId = (ADE_CHAN_ID_E)hAde;
    Ret = ioctl(g_ADEDevFd, CMD_ADE_RELEASE_FRAME, &stParm);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_ADE("CMD_ADE_RELEASE_FRAME(0x%x) failed\n", Ret);
    }

    return Ret;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */
