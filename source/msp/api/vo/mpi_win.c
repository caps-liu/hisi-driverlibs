/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_vo.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/17
  Description   :
  History       :
  1.Date        : 2009/12/17
    Author      : w58735
    Modification: Created file

*******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <errno.h>
#include <pthread.h>
#include <linux/types.h>


#include "hi_drv_video.h"
#include "hi_drv_disp.h"
#include "hi_mpi_win.h"
#include "drv_win_ioctl.h"

#include "hi_mpi_avplay.h"
#include "hi_error_mpi.h"
#include "hi_drv_struct.h"
#include "drv_vdec_ext.h"

#include "drv_venc_ext.h"

HI_VOID InitCompressor(HI_VOID);

int decompress(unsigned char *pData, int DataLen, int Width, int Height, int stride_luma, int stride_chrome, unsigned char *pFrame);

#ifdef __cplusplus
#if __cplusplus
extern "C"
{
#endif
#endif


static HI_S32           g_VoDevFd = -1;
static const HI_CHAR    g_VoDevName[] = "/dev/"UMAP_DEVNAME_VO;
static pthread_mutex_t  g_VoMutex = PTHREAD_MUTEX_INITIALIZER;

#define HI_VO_LOCK()     (void)pthread_mutex_lock(&g_VoMutex);
#define HI_VO_UNLOCK()   (void)pthread_mutex_unlock(&g_VoMutex);

#define CHECK_VO_INIT()\
do{\
    HI_VO_LOCK();\
    if (g_VoDevFd < 0)\
    {\
        HI_ERR_WIN("VO is not init.\n");\
        HI_VO_UNLOCK();\
        return HI_ERR_VO_NO_INIT;\
    }\
    HI_VO_UNLOCK();\
}while(0)


HI_S32 HI_MPI_WIN_Init(HI_VOID)
{
    struct stat st;

    HI_VO_LOCK();

    if (g_VoDevFd > 0)
    {
        HI_VO_UNLOCK();
        return HI_SUCCESS;
    }
    
    if (HI_FAILURE == stat(g_VoDevName, &st))
    {
        HI_FATAL_WIN("VO is not exist.\n");
        HI_VO_UNLOCK();
        return HI_ERR_VO_DEV_NOT_EXIST;
    }

    if (!S_ISCHR (st.st_mode))
    {
        HI_FATAL_WIN("VO is not device.\n");
        HI_VO_UNLOCK();
        return HI_ERR_VO_NOT_DEV_FILE;
    }

    g_VoDevFd = open(g_VoDevName, O_RDWR|O_NONBLOCK, 0);

    if (g_VoDevFd < 0)
    {
        HI_FATAL_WIN("open VO err.\n");
        HI_VO_UNLOCK();
        return HI_ERR_VO_DEV_OPEN_ERR;
    }

    HI_VO_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_WIN_DeInit(HI_VOID)
{
    HI_S32 Ret;

    HI_VO_LOCK();

    if (g_VoDevFd < 0)
    {
        HI_VO_UNLOCK();
        return HI_SUCCESS;
    }

    Ret = close(g_VoDevFd);

    if(HI_SUCCESS != Ret)
    {
        HI_FATAL_WIN("DeInit VO err.\n");
        HI_VO_UNLOCK();
        return HI_ERR_VO_DEV_CLOSE_ERR;
    }

    g_VoDevFd = -1;

    HI_VO_UNLOCK();

    return HI_SUCCESS;
}


HI_S32 HI_MPI_WIN_Create(const HI_DRV_WIN_ATTR_S *pWinAttr, HI_HANDLE *phWindow)
{
    HI_S32           Ret;
    WIN_CREATE_S  VoWinCreate;

    if (!pWinAttr)
    {
        HI_ERR_WIN("para pWinAttr is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    if (!phWindow)
    {
        HI_ERR_WIN("para phWindow is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    if (pWinAttr->enDisp >= HI_DRV_DISPLAY_BUTT
        && pWinAttr->bVirtual == HI_FALSE)
    {
        HI_ERR_WIN("para pWinAttr->enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (pWinAttr->enARCvrs >= HI_DRV_ASP_RAT_MODE_BUTT)
    {
        HI_ERR_WIN("para pWinAttr->enAspectCvrs is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    memcpy(&VoWinCreate.WinAttr, pWinAttr, sizeof(HI_DRV_WIN_ATTR_S));

    Ret = ioctl(g_VoDevFd, CMD_WIN_CREATE, &VoWinCreate);
    if (Ret != HI_SUCCESS)
    {
	    HI_ERR_WIN("  HI_MPI_WIN_Create failed.\n");
        return Ret;
    }

    *phWindow = VoWinCreate.hWindow;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_WIN_Destroy(HI_HANDLE hWindow)
{
    HI_S32      Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_WIN_DESTROY, &hWindow);
    
    return Ret;
}

HI_S32 HI_MPI_WIN_GetInfo(HI_HANDLE hWin, HI_DRV_WIN_INFO_S * pstInfo)
{
    HI_S32 Ret; 
    WIN_PRIV_INFO_S WinPriv;

    if (HI_INVALID_HANDLE == hWin)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }
    CHECK_VO_INIT();
	
    WinPriv.hWindow = hWin;

    Ret = ioctl(g_VoDevFd, CMD_WIN_GET_INFO, &WinPriv);
	if (!Ret)
	{
	    *pstInfo = WinPriv.stPrivInfo;
	}
    
    return Ret;
}

HI_S32 HI_MPI_WIN_GetPlayInfo(HI_HANDLE hWin, HI_DRV_WIN_PLAY_INFO_S * pstInfo)
{
    HI_S32 Ret; 
    WIN_PLAY_INFO_S WinPlay;

    if (HI_INVALID_HANDLE == hWin)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }
    CHECK_VO_INIT();
	
    WinPlay.hWindow = hWin;

    Ret = ioctl(g_VoDevFd, CMD_WIN_GET_PLAY_INFO, &WinPlay);
	if (!Ret)
	{
	    *pstInfo = WinPlay.stPlayInfo;
	}
    
    return Ret;
}


HI_S32 HI_MPI_WIN_SetSource(HI_HANDLE hWin, HI_DRV_WIN_SRC_INFO_S *pstSrc)
{
    HI_S32 Ret; 
    WIN_SOURCE_S VoWinAttach;

    if (HI_INVALID_HANDLE == hWin)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }
    CHECK_VO_INIT();
	
    VoWinAttach.hWindow = hWin;
    VoWinAttach.stSrc   = *pstSrc;

    Ret = ioctl(g_VoDevFd, CMD_WIN_SET_SOURCE, &VoWinAttach);
    
    return Ret;
}

HI_S32 HI_MPI_WIN_GetSource(HI_HANDLE hWin, HI_DRV_WIN_SRC_INFO_S *pstSrc)
{

    return HI_FAILURE;
}





HI_S32 HI_MPI_WIN_SetEnable(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    HI_S32            Ret;
    WIN_ENABLE_S   VoWinEnable;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_WIN("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinEnable.hWindow = hWindow;
    VoWinEnable.bEnable = bEnable;

    Ret = ioctl(g_VoDevFd, CMD_WIN_SET_ENABLE, &VoWinEnable);
    
    return Ret;
}


HI_S32 HI_MPI_VO_SetMainWindowEnable(HI_HANDLE hWindow, HI_BOOL bEnable)
{

    return HI_FAILURE;
}


HI_S32 HI_MPI_WIN_GetEnable(HI_HANDLE hWindow, HI_BOOL *pbEnable)
{
    HI_S32            Ret;
    WIN_ENABLE_S   VoWinEnable;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!pbEnable)
    {
        HI_ERR_WIN("para pbEnable is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinEnable.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_WIN_GET_ENABLE, &VoWinEnable);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pbEnable = VoWinEnable.bEnable;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_GetMainWindowEnable(HI_HANDLE hWindow, HI_BOOL *pbEnable)
{


    return HI_FAILURE;
}


HI_S32 HI_MPI_VO_GetWindowsVirtual(HI_HANDLE hWindow, HI_BOOL *pbVirutal)
{


    return HI_FAILURE;
}

HI_S32 HI_MPI_WIN_AcquireFrame(HI_HANDLE hWindow, HI_DRV_VIDEO_FRAME_S *pFrameinfo)
{
    HI_S32              Ret;
    WIN_FRAME_S      VoWinFrame;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!pFrameinfo)
    {
        HI_ERR_WIN("para pFrameinfo is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }
    
    CHECK_VO_INIT();

    VoWinFrame.hWindow = hWindow;
    
    Ret = ioctl(g_VoDevFd, CMD_WIN_VIR_ACQUIRE, &VoWinFrame);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }
    
    memcpy(pFrameinfo, &(VoWinFrame.stFrame), sizeof(HI_DRV_VIDEO_FRAME_S));

    return HI_SUCCESS;

}

HI_S32 HI_MPI_WIN_ReleaseFrame(HI_HANDLE hWindow, HI_DRV_VIDEO_FRAME_S *pFrameinfo)
{
    HI_S32              Ret;
    WIN_FRAME_S      VoWinFrame;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }
    
    CHECK_VO_INIT();
    
    VoWinFrame.hWindow = hWindow;
	VoWinFrame.stFrame = *pFrameinfo;
    
    Ret = ioctl(g_VoDevFd, CMD_WIN_VIR_RELEASE, &VoWinFrame);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }
    
    return HI_SUCCESS;
}

HI_S32 HI_MPI_WIN_SetAttr(HI_HANDLE hWindow, const HI_DRV_WIN_ATTR_S *pWinAttr)
{
    HI_S32           Ret;
    WIN_CREATE_S  VoWinCreate;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!pWinAttr)
    {
        HI_ERR_WIN("para pWinAttr is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }


    if (pWinAttr->enARCvrs >= HI_DRV_ASP_RAT_MODE_BUTT)
    {
        HI_ERR_WIN("para pWinAttr->enAspectCvrs is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinCreate.hWindow = hWindow;
    memcpy(&VoWinCreate.WinAttr, pWinAttr, sizeof(HI_DRV_WIN_ATTR_S));

    Ret = ioctl(g_VoDevFd, CMD_WIN_SET_ATTR, &VoWinCreate);
    
    return Ret;
}

HI_S32 HI_MPI_WIN_GetAttr(HI_HANDLE hWindow, HI_DRV_WIN_ATTR_S *pWinAttr)
{
    HI_S32           Ret;
    WIN_CREATE_S  VoWinCreate;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!pWinAttr)
    {
        HI_ERR_WIN("para pWinAttr is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinCreate.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_WIN_GET_ATTR, &VoWinCreate);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    memcpy(pWinAttr, &VoWinCreate.WinAttr, sizeof(HI_DRV_WIN_ATTR_S));

    return HI_SUCCESS;
}

HI_S32 HI_MPI_WIN_SetZorder(HI_HANDLE hWindow, HI_DRV_DISP_ZORDER_E enZFlag)
{
    HI_S32            Ret;
    WIN_ZORDER_S   VoWinZorder;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (enZFlag >= HI_DRV_DISP_ZORDER_BUTT)
    {
        HI_ERR_WIN("para enZFlag is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinZorder.hWindow = hWindow;
    VoWinZorder.eZFlag = enZFlag;

    Ret = ioctl(g_VoDevFd, CMD_WIN_SET_ZORDER, &VoWinZorder);
    
    return Ret;
}

HI_S32 HI_MPI_WIN_GetZorder(HI_HANDLE hWindow, HI_U32 *pu32Zorder)
{
    HI_S32            Ret;
    WIN_ORDER_S   VoWinOrder;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!pu32Zorder)
    {
        HI_ERR_WIN("para SrcHandle is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinOrder.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_WIN_GET_ORDER, &VoWinOrder);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pu32Zorder = VoWinOrder.Order;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_WIN_Attach(HI_HANDLE hWindow, HI_HANDLE hSrc)
{
#if 0
    HI_S32                  Ret;
    WIN_SOURCE_S         VoWinAttach;
    HI_HANDLE               hVdec;
    HI_HANDLE               hSync;
    HI_UNF_AVPLAY_ATTR_S    AvplayAttr;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!hSrc)
    {
        HI_ERR_WIN("para hSrc is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    if(HI_ID_VI == ((hSrc&0xff0000)>>16))
    {
        VoWinAttach.ModId = HI_ID_VI;
    }
    else if(HI_ID_AVPLAY == ((hSrc&0xff0000)>>16))
    {
        Ret = HI_MPI_AVPLAY_GetAttr(hSrc, HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE, &AvplayAttr);
        if (HI_SUCCESS != Ret)
        {        
            return HI_ERR_VO_INVALID_PARA;
        }
        
        VoWinAttach.ModId = HI_ID_AVPLAY;
    }
    else
    {
        return HI_ERR_VO_INVALID_PARA;
    }
    
    if (HI_ID_AVPLAY == VoWinAttach.ModId)
    {
        Ret = HI_MPI_AVPLAY_GetSyncVdecHandle(hSrc, &hVdec, &hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_AVPLAY_GetVdecHandle failed.\n");
            return Ret;
        }
        VoWinAttach.hSrc = hVdec;
        VoWinAttach.hSync = hSync;
    }
    else
    {
        VoWinAttach.hSrc = hSrc;
    }

    
    VoWinAttach.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_WIN_SET_SOURCE, &VoWinAttach);

    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }
    
    if (HI_ID_AVPLAY == VoWinAttach.ModId)
    {
        Ret = HI_MPI_AVPLAY_AttachWindow(hSrc, hWindow);
        if (Ret != HI_SUCCESS) 
        {
            HI_ERR_WIN("call HI_MPI_AVPLAY_AttachWindow failed.\n");
            (HI_VOID)ioctl(g_VoDevFd, CMD_VO_WIN_DETACH, &VoWinAttach);
            return Ret;
        }
    }
#endif

    return HI_SUCCESS;
}

HI_S32 HI_MPI_WIN_Detach(HI_HANDLE hWindow, HI_HANDLE hSrc)
{
    
    return HI_FAILURE;
}

HI_S32 HI_MPI_VO_SetWindowRatio(HI_HANDLE hWindow, HI_U32 u32WinRatio)
{

    return HI_FAILURE;
}

HI_S32 HI_MPI_WIN_Freeze(HI_HANDLE hWindow, HI_BOOL bEnable, HI_DRV_WIN_SWITCH_E enWinFreezeMode)
{
    HI_S32           Ret;
    WIN_FREEZE_S  VoWinFreeze;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_WIN("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (enWinFreezeMode >= HI_DRV_WIN_SWITCH_BUTT)
    {
        HI_ERR_WIN("para enWinFreezeMode is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinFreeze.hWindow = hWindow;
    VoWinFreeze.bEnable = bEnable;
    VoWinFreeze.eMode   = enWinFreezeMode;

    Ret = ioctl(g_VoDevFd, CMD_WIN_FREEZE, &VoWinFreeze);
    
    return Ret;
}

HI_S32 HI_MPI_WIN_SetFieldMode(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    
    return HI_FAILURE;
}

HI_S32 HI_MPI_WIN_SendFrame(HI_HANDLE hWindow, HI_DRV_VIDEO_FRAME_S *pFrame)
{
    HI_S32             Ret;
    WIN_FRAME_S     VoWinFrame;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!pFrame)
    {
        HI_ERR_WIN("para pFrame is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinFrame.hWindow  = hWindow;
	VoWinFrame.stFrame = *pFrame;

    Ret = ioctl(g_VoDevFd, CMD_WIN_SEND_FRAME, &VoWinFrame);
    
    return Ret;
}

HI_S32 HI_MPI_WIN_DequeueFrame(HI_HANDLE hWindow, HI_DRV_VIDEO_FRAME_S *pFrame)
{
    HI_S32  Ret;
    WIN_FRAME_S VoWinFrame;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!pFrame)
    {
        HI_ERR_WIN("para pFrameinfo is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinFrame.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_WIN_DQ_FRAME, &VoWinFrame);
    if (!Ret)
    {
		*pFrame = VoWinFrame.stFrame;
    }

    return Ret;
}

HI_S32 HI_MPI_WIN_QueueFrame(HI_HANDLE hWindow, HI_DRV_VIDEO_FRAME_S *pFrame)
{
    HI_S32             Ret;
    WIN_FRAME_S     VoWinFrame;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!pFrame)
    {
        HI_ERR_WIN("para pFrameinfo is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinFrame.hWindow = hWindow;
	VoWinFrame.stFrame = *pFrame;


	Ret = ioctl(g_VoDevFd, CMD_WIN_QU_FRAME, &VoWinFrame);

    return Ret;
}

HI_S32 HI_MPI_WIN_QueueUselessFrame(HI_HANDLE hWindow, HI_DRV_VIDEO_FRAME_S *pFrame)
{
    HI_S32             Ret;
    WIN_FRAME_S     VoWinFrame;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!pFrame)
    {
        HI_ERR_WIN("para pFrameinfo is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinFrame.hWindow = hWindow;
	VoWinFrame.stFrame = *pFrame;
	
    Ret = ioctl(g_VoDevFd, CMD_WIN_QU_ULSFRAME, &VoWinFrame);

    return Ret;
}


HI_S32 HI_MPI_WIN_Reset(HI_HANDLE hWindow, HI_DRV_WIN_SWITCH_E enWinFreezeMode)
{
    WIN_RESET_S   VoWinReset;
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (enWinFreezeMode >= HI_DRV_WIN_SWITCH_BUTT)
    {
        HI_ERR_WIN("para enWinFreezeMode is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinReset.hWindow = hWindow;
    VoWinReset.eMode = enWinFreezeMode;

    Ret = ioctl(g_VoDevFd, CMD_WIN_RESET, &VoWinReset);
    
    return Ret;
}

HI_S32 HI_MPI_WIN_Pause(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    WIN_PAUSE_S   VoWinPause;
    HI_S32           Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_WIN("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinPause.hWindow = hWindow;
    VoWinPause.bEnable = bEnable;

    Ret = ioctl(g_VoDevFd, CMD_WIN_PAUSE, &VoWinPause);
    
    return Ret;
}


HI_S32 HI_MPI_VO_GetWindowDelay(HI_HANDLE hWindow, HI_DRV_WIN_PLAY_INFO_S *pDelay)
{
    WIN_PLAY_INFO_S   VoWinDelay;
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    if (!pDelay)
    {
        HI_ERR_WIN("para pDelay is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinDelay.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_WIN_GET_PLAY_INFO, &VoWinDelay);
    if (!Ret)
    {
        *pDelay = VoWinDelay.stPlayInfo;
    }

    return Ret;
}

HI_S32 HI_MPI_WIN_SetStepMode(HI_HANDLE hWindow, HI_BOOL bStepMode)
{
    HI_S32              Ret;
    WIN_STEP_MODE_S  WinStepMode;
    
    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    CHECK_VO_INIT();

    WinStepMode.hWindow = hWindow;
    WinStepMode.bStep = bStepMode;

    Ret = ioctl(g_VoDevFd, CMD_WIN_STEP_MODE, &WinStepMode);
    
    return Ret;
}

HI_S32 HI_MPI_WIN_SetStepPlay(HI_HANDLE hWindow)
{
    HI_S32      Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_WIN_STEP_PLAY, &hWindow);
    
    return Ret;
}

HI_S32 HI_MPI_VO_DisableDieMode(HI_HANDLE hWindow)
{
    return HI_FAILURE;
}

HI_S32 HI_MPI_WIN_SetExtBuffer(HI_HANDLE hWindow, HI_DRV_VIDEO_BUFFER_POOL_S* pstBufAttr)
{
    HI_S32      Ret;
//    HI_S32      s32Index;
    WIN_BUF_POOL_S  bufferAttr;
	
    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    CHECK_VO_INIT();

    bufferAttr.hwin = hWindow;
    bufferAttr.stBufPool = *pstBufAttr;

    Ret = ioctl(g_VoDevFd, CMD_WIN_VIR_EXTERNBUF, &bufferAttr);
    
    return Ret;
}


HI_S32 HI_MPI_WIN_SetQuickOutput(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    WIN_SET_QUICK_S stQuickOutputAttr;
    HI_S32      Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    CHECK_VO_INIT();

    stQuickOutputAttr.hWindow = hWindow;
    stQuickOutputAttr.bQuickEnable = bEnable;

    Ret = ioctl(g_VoDevFd, CMD_WIN_SET_QUICK, &stQuickOutputAttr);
    
    return Ret;
}



HI_S32 HI_MPI_VO_UseDNRFrame(HI_HANDLE hWindow, HI_BOOL bEnable)
{ 
    return HI_FAILURE;
}


HI_S32 HI_MPI_VO_CapturePictureExt(HI_HANDLE hWindow, HI_DRV_VIDEO_FRAME_S *pstCapPicture)
{
    HI_S32            Ret = HI_SUCCESS;
    WIN_CAPTURE_S     VoWinCapture;    
    HI_U32          datalen = 0, i = 0, y_stride = 0, height = 0;
    HI_UCHAR        *DecompressOutBuf = HI_NULL, *DecompressInBuf = HI_NULL;
    HI_UCHAR        *Inptr = HI_NULL, *Outptr = HI_NULL;
    HI_VDEC_PRIV_FRAMEINFO_S pstPrivInfo;
    
    CHECK_VO_INIT();           
    if ((HI_INVALID_HANDLE == hWindow) || (!pstCapPicture))
    {          
        HI_ERR_WIN(" invalid param.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }
    
    /*first,  we get a frame from the window.*/
    VoWinCapture.hWindow = hWindow;    
    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_CAPTURE_START, &VoWinCapture);        
    if (Ret != HI_SUCCESS) 
        return Ret;
    
    y_stride = VoWinCapture.CapPicture.stBufAddr[0].u32Stride_Y;    
    /*secondary,  we make a address mapping to get a virtual addr. 
     *Pay attention please ,we should ensure that mmapped with no cache.!
     *!!!!!!!!!!!!!!!!!!!!!!!!????????
     * else we should flush the cache for other bus master using.
     */
    memcpy((void *)(&pstPrivInfo), (void*)(VoWinCapture.CapPicture.u32Priv), sizeof(HI_VDEC_PRIV_FRAMEINFO_S));    
       
    height = (HI_TRUE == pstPrivInfo.stCompressInfo.u32CompressFlag)
                     ? pstPrivInfo.stCompressInfo.s32CompFrameHeight : VoWinCapture.CapPicture.u32Height; 
    
    DecompressOutBuf = (HI_UCHAR *)(HI_MMAP(VoWinCapture.driver_supply_addr.startPhyAddr,
                                                VoWinCapture.driver_supply_addr.length));
    
    if (HI_TRUE == pstPrivInfo.stCompressInfo.u32CompressFlag) 
    {
        /*don't know why there exists these two branches, do we condidered gstreamer?*/
        if ( HI_DRV_PIX_FMT_NV21 == VoWinCapture.CapPicture.ePixFormat) 
            datalen = height * y_stride * 3 / 2 + height * 4;
        else 
            datalen = height * y_stride * 2 + height * 4;
    }
    else
    {        
        if ( HI_DRV_PIX_FMT_NV21 == VoWinCapture.CapPicture.ePixFormat) 
            datalen = height * y_stride * 3 / 2;
        else 
            datalen = height * y_stride * 2;
    }
    
    DecompressInBuf =(HI_UCHAR *)(HI_MMAP(VoWinCapture.CapPicture.stBufAddr[0].u32PhyAddr_Y, datalen));

    /*third  step, we make a decompress or simple copy from driver-vpss frame to user frame.*/
    if (pstPrivInfo.stCompressInfo.u32CompressFlag == HI_TRUE) 
    {
        #if 0
        InitCompressor();
        Ret = decompress(DecompressInBuf,
                         0, 
                         pstPrivInfo->stCompressInfo.s32CompFrameWidth, 
                         pstPrivInfo->stCompressInfo.s32CompFrameHeight, 
                         y_stride, 
                         y_stride, 
                         DecompressOutBuf);
        
        Ret = (Ret <= 0)? HI_FAILURE:HI_SUCCESS;        
        if (Ret == HI_FAILURE)         
            HI_ERR_WIN("decompress data fail\r\n");
        
        #endif        
    }
    else 
    {
            Inptr = DecompressInBuf; 
            Outptr = DecompressOutBuf;
            
            if ( (HI_NULL ==Inptr) ||(HI_NULL ==Outptr) 
                  ||(0 == y_stride))                  
                return HI_FAILURE;

            for(i = 0 ; i < datalen / y_stride; i++) 
            {
                memcpy(Outptr, Inptr, y_stride);
                Inptr += y_stride;
                Outptr += y_stride;
            }
    }
      
    if (HI_SUCCESS != HI_MUNMAP((void*)DecompressInBuf)) 
    {
        HI_ERR_WIN("decompress buffer unmap fail\r\n");
        (HI_VOID)HI_MUNMAP((void*)DecompressOutBuf);
        goto release;
    }
    
    if (HI_SUCCESS != HI_MUNMAP((void*)DecompressOutBuf))
    {
        HI_ERR_WIN("decompress buffer unmap fail\r\n");
        goto release;
    }
    
release:    

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_CAPTURE_RELEASE, &VoWinCapture);
    if (Ret != HI_SUCCESS) 
        return Ret;
    
    *pstCapPicture = VoWinCapture.CapPicture;    
    /*FIXME: we should know how the 3d will be dealed with*/
    pstCapPicture->stBufAddr[0].u32PhyAddr_Y = VoWinCapture.driver_supply_addr.startPhyAddr;        
    pstCapPicture->stBufAddr[1].u32PhyAddr_Y = VoWinCapture.driver_supply_addr.startPhyAddr;
      
    return HI_SUCCESS;
}


HI_S32 HI_MPI_WIN_CapturePicture(HI_HANDLE hWindow, HI_DRV_VIDEO_FRAME_S *pstCapPicture)
{
    HI_S32            Ret = HI_SUCCESS;
    
    Ret = HI_MPI_VO_CapturePictureExt(hWindow, pstCapPicture);    
    return Ret;	
}


HI_S32 HI_MPI_WIN_CapturePictureRelease(HI_HANDLE hWindow, HI_DRV_VIDEO_FRAME_S *pstCapPicture)
{
    HI_S32          Ret = HI_SUCCESS;
    WIN_CAPTURE_S   VoWinRls;
    
    CHECK_VO_INIT();
    if ((HI_INVALID_HANDLE == hWindow) || (!pstCapPicture))
    {
        HI_ERR_WIN("invalid  param.\n");    
        return HI_ERR_VO_INVALID_PARA; 
    }
    
    VoWinRls.hWindow = hWindow;
    VoWinRls.CapPicture = *pstCapPicture;
    VoWinRls.driver_supply_addr.startPhyAddr = pstCapPicture->stBufAddr[0].u32PhyAddr_Y;
    
    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_CAPTURE_FREE, &VoWinRls);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_WIN("HI_MPI_WIN_CapturePictureRelease fail (INVALID_PARA)\r\n");
        return Ret;
    }
    
    return HI_SUCCESS;
}

HI_S32 HI_MPI_WIN_SetRotation(HI_HANDLE hWindow, HI_DRV_ROT_ANGLE_E enRotation)
{
    HI_ERR_WIN("this chip version can not support this operation\n");
    return HI_FAILURE;
}

HI_S32 HI_MPI_WIN_GetRotation(HI_HANDLE hWindow, HI_DRV_ROT_ANGLE_E *penRotation)
{
    HI_ERR_WIN("this chip version can not support this operation\n");
    return HI_FAILURE;
}

HI_S32 HI_MPI_WIN_SetFlip(HI_HANDLE hWindow, HI_BOOL bHoriFlip, HI_BOOL bVertFlip)
{
    HI_ERR_WIN("this chip version can not support this operation\n");
    return HI_FAILURE;
}

HI_S32 HI_MPI_WIN_GetFlip(HI_HANDLE hWindow, HI_BOOL *pbHoriFlip, HI_BOOL *pbVertFlip)
{
    HI_ERR_WIN("this chip version can not support this operation\n");
    return HI_FAILURE;
}

#if 0
HI_S32 HI_MPI_VO_SetWindowExtAttr(HI_HANDLE hWindow, VO_WIN_EXTATTR_E detType, HI_BOOL bEnable)
{
    HI_S32      Ret;
    VO_WIN_DETECT_S stDetType;
    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();
    stDetType.hWindow = hWindow;
    stDetType.detType = detType;
    stDetType.bEnable = bEnable;
    Ret = ioctl(g_VoDevFd, CMD_VO_SET_DET_MODE, &stDetType);

    return Ret;
}

HI_S32 HI_MPI_VO_GetWindowExtAttr(HI_HANDLE hWindow, VO_WIN_EXTATTR_E detType, HI_BOOL *bEnable)
{
    HI_S32      Ret;
    VO_WIN_DETECT_S stDetType;
    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }
    CHECK_VO_INIT();

    stDetType.hWindow = hWindow;
    stDetType.detType = detType;
    Ret = ioctl(g_VoDevFd, CMD_VO_GET_DET_MODE, &stDetType);
    *bEnable = stDetType.bEnable;

    return Ret;
}
#endif

HI_S32 HI_MPI_WIN_Suspend(HI_VOID)
{
    HI_U32 u32Value = 0x88888888;
    HI_S32 Ret;

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_WIN_SUSPEND, &u32Value);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_WIN("HI_MPI_WIN_Suspend failed\n");
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_WIN_Resume(HI_VOID)
{
    HI_U32 u32Value = 0x88888888;
    HI_S32 Ret;

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_WIN_RESUM, &u32Value);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_WIN("HI_MPI_WIN_Resume failed\n");
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_WIN_GetHandle(WIN_GET_HANDLE_S *pstWinHandle)
{
    HI_S32 Ret;

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_WIN_GET_HANDLE, pstWinHandle);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_WIN("HI_MPI_WIN_GetHandle failed\n");
    }

    return Ret;
}

HI_S32 HI_MPI_WIN_GetWinParam(HI_HANDLE hWin, HI_DRV_WIN_INTF_S *pstWinIntf)
{
    HI_S32      Ret;
    WIN_INTF_S stWinIntf;
    
    if (HI_INVALID_HANDLE == hWin)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_WIN_GET_INTF, &stWinIntf);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_WIN("HI_MPI_WIN_AttachSink failed\n");
    }
    else
    {
       
        pstWinIntf->pfAcqFrame = stWinIntf.pfAcqFrame;
        pstWinIntf->pfRlsFrame = stWinIntf.pfRlsFrame;
        pstWinIntf->pfSetWinAttr = stWinIntf.pfSetWinAttr;
    }

    return Ret;
}


HI_S32 HI_MPI_WIN_AttachWinSink(HI_HANDLE hWin, HI_HANDLE hSink)
{
    HI_S32      Ret;
    WIN_ATTACH_S stAttach;
    
    if (HI_INVALID_HANDLE == hWin)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    CHECK_VO_INIT();

    stAttach.enType = ATTACH_TYPE_SINK;
    stAttach.hWindow = hWin;
    stAttach.hMutual = hSink;
    
    Ret = ioctl(g_VoDevFd, CMD_WIN_ATTACH, &stAttach);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_WIN("HI_MPI_WIN_AttachSink failed\n");
    }

    return Ret;
}

HI_S32 HI_MPI_WIN_DetachWinSink(HI_HANDLE hWin, HI_HANDLE hSink)
{
    HI_S32      Ret;
    WIN_ATTACH_S stAttach;
    
    if (HI_INVALID_HANDLE == hWin)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    CHECK_VO_INIT();

    stAttach.enType = ATTACH_TYPE_SINK;
    stAttach.hWindow = hWin;
    stAttach.hMutual = hSink;
    
    Ret = ioctl(g_VoDevFd, CMD_WIN_DETACH, &stAttach);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_WIN("HI_MPI_WIN_DetachSink failed\n");
    }

    return Ret;
}


HI_S32 HI_MPI_WIN_GetLatestFrameInfo(HI_HANDLE hWin, HI_DRV_VIDEO_FRAME_S  *frame_info)
{
    HI_S32      Ret; 
    WIN_FRAME_S frame_struct;
    
    if (HI_INVALID_HANDLE == hWin)
    {
        HI_ERR_WIN("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA; 
    }

    CHECK_VO_INIT();

    frame_struct.hWindow = hWin;
    
    Ret = ioctl(g_VoDevFd, CMD_WIN_GET_LATESTFRAME_INFO, &frame_struct);
    if (Ret != HI_SUCCESS)
    {
	    HI_ERR_WIN("get latest frame info failed\n");
	    return Ret;
    }

    *frame_info  = frame_struct.stFrame;   
    return Ret;
}

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

