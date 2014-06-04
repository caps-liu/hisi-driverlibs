/***********************************************************************************
*              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName   :  drv_vi.c
* Description:
*
***********************************************************************************/

#include <linux/kernel.h>
#include <linux/interrupt.h>
#include <asm/io.h>

#include "hi_drv_module.h"
#include "hi_error_mpi.h"
#include "hal_vi.h"
#include "drv_vi.h"
#include "hi_drv_vi.h"
#include "hi_drv_reg.h"
#include "drv_venc_ext.h"
#include "drv_vdec_ext.h"
#include "drv_vpss_ext.h"
#include "drv_win_ext.h"
#include "hi_reg_common.h"

VI_DRV_S g_ViDrv[MAX_VI_PORT][MAX_VI_CHN];

static HI_BOOL bRealViOpened = HI_FALSE;
static HI_U32 portLoop, chnLoop, vpssPortLoop;
extern VI_REG_S *pViReg;

#define VI_PHY_PORT0 0
#define VI_PHY_CHN0 0

#define VI_CHECK_NULL_PTR(ptr) \
    do {\
        if (NULL == ptr)\
        {\
            HI_ERR_VI("NULL point \r\n"); \
            return HI_ERR_VI_NULL_PTR; \
        } \
    } while (0)

#define VI_PARSE_VPSS(hVpss, enPort, viChn) \
    do { \
        HI_BOOL find_vpss_handle = HI_FALSE; \
        if ((HI_INVALID_HANDLE == (hVpss)) /* || (HI_NULL == (hVpss))*/)\
        {\
            HI_ERR_VI("VPSS handle(%#x) is invalid.\n", (hVpss)); \
            return HI_ERR_VI_CHN_NOT_EXIST; \
        } \
        for (portLoop = 0; portLoop < MAX_VI_PORT; portLoop++) \
        {\
            for (chnLoop = 0; chnLoop < MAX_VI_CHN; chnLoop++) \
            {\
                if (g_ViDrv[portLoop][chnLoop].hVpss == (hVpss)) \
                { \
                    find_vpss_handle = HI_TRUE; \
                    enPort = (HI_UNF_VI_E)(portLoop); \
                    viChn = chnLoop; \
                } \
            } \
        } \
        if (HI_FALSE == find_vpss_handle) \
        { \
            return HI_ERR_VI_CHN_NOT_EXIST; \
        } \
    } while (0)

#define VI_PARSE_VPSS_PORT(hPort, enPort, viChn) \
    do { \
        HI_BOOL find_vpss_port1 = HI_FALSE; \
        if ((HI_INVALID_HANDLE == (hPort)) /*|| (HI_NULL == (hPort))*/)\
        {\
            HI_ERR_VI("VPSS Port handle(%#x) is invalid.\n", (hPort)); \
            return HI_ERR_VI_CHN_NOT_EXIST; \
        } \
        for (portLoop = 0; portLoop < MAX_VI_PORT; portLoop++) \
        {\
            for (chnLoop = 0; chnLoop < MAX_VI_CHN; chnLoop++) \
            {\
                for (vpssPortLoop = 0; vpssPortLoop < VI_MAX_VPSS_PORT; vpssPortLoop++) \
                {\
                    if (g_ViDrv[portLoop][chnLoop].stPortParam[vpssPortLoop].hPort == (hPort)) \
                    { \
                        find_vpss_port1 = HI_TRUE; \
                        enPort = (HI_UNF_VI_E)(portLoop); \
                        viChn = chnLoop; \
                    } \
                } \
            } \
        } \
        if (HI_FALSE == find_vpss_port1) \
        { \
            return HI_ERR_VI_CHN_NOT_EXIST; \
        } \
    } while (0)

#define VI_PARSE_VESS_PORT_GET_HDST(hPort, enPort, viChn, hDst) \
    do { \
        HI_BOOL find_vpss_port2 = HI_FALSE; \
        if ((HI_INVALID_HANDLE == (hPort)) /*|| (HI_NULL == (hPort))*/)\
        {\
            HI_ERR_VI("VPSS Port handle(%#x) is invalid.\n", (hPort)); \
            return HI_ERR_VI_CHN_NOT_EXIST; \
        } \
        for (portLoop = 0; portLoop < MAX_VI_PORT; portLoop++) \
        {\
            for (chnLoop = 0; chnLoop < MAX_VI_CHN; chnLoop++) \
            {\
                for (vpssPortLoop = 0; vpssPortLoop < VI_MAX_VPSS_PORT; vpssPortLoop++) \
                {\
                    if (g_ViDrv[portLoop][chnLoop].stPortParam[vpssPortLoop].hPort == (hPort)) \
                    { \
                        find_vpss_port2 = HI_TRUE; \
                        enPort = (HI_UNF_VI_E)(portLoop); \
                        viChn = chnLoop; \
                        hDst = g_ViDrv[portLoop][chnLoop].stPortParam[vpssPortLoop].hDst; \
                    } \
                } \
            } \
        } \
        if (HI_FALSE == find_vpss_port2) \
        { \
            return HI_ERR_VI_CHN_NOT_EXIST; \
        } \
    } while (0)

HI_S32 VI_Convert_FrameInfo(HI_UNF_VIDEO_FRAME_INFO_S *pstUnfFrm, HI_DRV_VIDEO_FRAME_S *pstDrvFrm)
{
    VI_CHECK_NULL_PTR(pstUnfFrm);
    VI_CHECK_NULL_PTR(pstDrvFrm);

    memset(pstDrvFrm, 0, sizeof(HI_DRV_VIDEO_FRAME_S));

    pstDrvFrm->u32FrameIndex = pstUnfFrm->u32FrameIndex;
    pstDrvFrm->stBufAddr[0].u32PhyAddr_Y = pstUnfFrm->stVideoFrameAddr[0].u32YAddr;
    pstDrvFrm->stBufAddr[0].u32Stride_Y  = pstUnfFrm->stVideoFrameAddr[0].u32YStride;
    pstDrvFrm->stBufAddr[0].u32PhyAddr_C = pstUnfFrm->stVideoFrameAddr[0].u32CAddr;
    pstDrvFrm->stBufAddr[0].u32Stride_C   = pstUnfFrm->stVideoFrameAddr[0].u32CStride;
    pstDrvFrm->stBufAddr[0].u32PhyAddr_Cr = pstUnfFrm->stVideoFrameAddr[0].u32CrAddr;
    pstDrvFrm->stBufAddr[0].u32Stride_Cr  = pstUnfFrm->stVideoFrameAddr[0].u32CrStride;
    pstDrvFrm->stBufAddr[1].u32PhyAddr_Y  = pstUnfFrm->stVideoFrameAddr[1].u32YAddr;
    pstDrvFrm->stBufAddr[1].u32Stride_Y  = pstUnfFrm->stVideoFrameAddr[1].u32YStride;
    pstDrvFrm->stBufAddr[1].u32PhyAddr_C = pstUnfFrm->stVideoFrameAddr[1].u32CAddr;
    pstDrvFrm->stBufAddr[1].u32Stride_C   = pstUnfFrm->stVideoFrameAddr[1].u32CStride;
    pstDrvFrm->stBufAddr[1].u32PhyAddr_Cr = pstUnfFrm->stVideoFrameAddr[1].u32CrAddr;
    pstDrvFrm->stBufAddr[1].u32Stride_Cr  = pstUnfFrm->stVideoFrameAddr[1].u32CrStride;
    pstDrvFrm->u32Width  = pstUnfFrm->u32Width;
    pstDrvFrm->u32Height = pstUnfFrm->u32Height;
    pstDrvFrm->u32SrcPts = pstUnfFrm->u32SrcPts;
    pstDrvFrm->u32Pts = pstUnfFrm->u32Pts;
    pstDrvFrm->u32AspectWidth  = pstUnfFrm->u32AspectWidth;
    pstDrvFrm->u32AspectHeight = pstUnfFrm->u32AspectHeight;
    pstDrvFrm->u32FrameRate = pstUnfFrm->stFrameRate.u32fpsInteger * 1000 +
                              pstUnfFrm->stFrameRate.u32fpsDecimal;

    switch (pstUnfFrm->enVideoFormat)
    {
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_NV61_2X1;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_NV21;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_400:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_NV80;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_411:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_NV12_411;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_NV61;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_444:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_NV42;
        break;
    case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_UYVY;
        break;
    case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_YUYV;
        break;
    case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_YVYU;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_400:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_YUV400;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_411:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_YUV411;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_420:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_YUV420p;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_422_1X2:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_YUV422_1X2;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_422_2X1:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_YUV422_2X1;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_444:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_YUV_444;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_410:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_FMT_YUV410p;
        break;
    default:
        pstDrvFrm->ePixFormat = HI_DRV_PIX_BUTT;
        break;
    }

    pstDrvFrm->bProgressive = pstUnfFrm->bProgressive;

    switch (pstUnfFrm->enFieldMode)
    {
    case HI_UNF_VIDEO_FIELD_ALL:
        pstDrvFrm->enFieldMode = HI_DRV_FIELD_ALL;
        break;
    case HI_UNF_VIDEO_FIELD_TOP:
        pstDrvFrm->enFieldMode = HI_DRV_FIELD_TOP;
        break;
    case HI_UNF_VIDEO_FIELD_BOTTOM:
        pstDrvFrm->enFieldMode = HI_DRV_FIELD_BOTTOM;
        break;
    default:
        pstDrvFrm->enFieldMode = HI_DRV_FIELD_BUTT;
        break;
    }

    pstDrvFrm->bTopFieldFirst = pstUnfFrm->bTopFieldFirst;
    pstDrvFrm->stDispRect.s32Height = pstUnfFrm->u32DisplayHeight;
    pstDrvFrm->stDispRect.s32Width = pstUnfFrm->u32DisplayWidth;
    pstDrvFrm->stDispRect.s32X = pstUnfFrm->u32DisplayCenterX;
    pstDrvFrm->stDispRect.s32Y = pstUnfFrm->u32DisplayCenterY;
    pstDrvFrm->eFrmType = (HI_DRV_FRAME_TYPE_E)pstUnfFrm->enFramePackingType;
    pstDrvFrm->u32Circumrotate = pstUnfFrm->u32Circumrotate;
    pstDrvFrm->bToFlip_H = pstUnfFrm->bHorizontalMirror;
    pstDrvFrm->bToFlip_V = pstUnfFrm->bVerticalMirror;
    pstDrvFrm->u32ErrorLevel = pstUnfFrm->u32ErrorLevel;

    memcpy(pstDrvFrm->u32Priv, pstUnfFrm->u32Private, sizeof(HI_U32) * 64);

    return HI_SUCCESS;
}

HI_S32 VI_Convert_WinInfo(HI_DRV_WIN_PRIV_INFO_S* pstWinInfo, HI_DRV_VPSS_CFG_S *pstVpssCfg,
                          HI_DRV_VPSS_PORT_CFG_S* pstPortCfg)
{
    VI_CHECK_NULL_PTR(pstWinInfo);
    VI_CHECK_NULL_PTR(pstVpssCfg);
    VI_CHECK_NULL_PTR(pstPortCfg);

    if (pstWinInfo->bUseCropRect)
    {
        pstVpssCfg->stProcCtrl.bUseCropRect = HI_TRUE;
        pstVpssCfg->stProcCtrl.stCropRect.u32TopOffset = pstWinInfo->stCropRect.u32TopOffset;
        pstVpssCfg->stProcCtrl.stCropRect.u32BottomOffset = pstWinInfo->stCropRect.u32BottomOffset;
        pstVpssCfg->stProcCtrl.stCropRect.u32LeftOffset  = pstWinInfo->stCropRect.u32LeftOffset;
        pstVpssCfg->stProcCtrl.stCropRect.u32RightOffset = pstWinInfo->stCropRect.u32RightOffset;
    }
    else
    {
        pstVpssCfg->stProcCtrl.bUseCropRect  = HI_FALSE;
        pstVpssCfg->stProcCtrl.stInRect.s32X = pstWinInfo->stInRect.s32X;
        pstVpssCfg->stProcCtrl.stInRect.s32Y = pstWinInfo->stInRect.s32Y;
        pstVpssCfg->stProcCtrl.stInRect.s32Width  = pstWinInfo->stInRect.s32Width;
        pstVpssCfg->stProcCtrl.stInRect.s32Height = pstWinInfo->stInRect.s32Height;
    }

    pstPortCfg->s32OutputWidth  = pstWinInfo->stOutRect.s32Width;
    pstPortCfg->s32OutputHeight = pstWinInfo->stOutRect.s32Height;
    pstPortCfg->u32MaxFrameRate = pstWinInfo->u32MaxRate;
    pstPortCfg->eDstCS      = HI_DRV_CS_BT709_YUV_LIMITED;
    pstPortCfg->eFormat     = pstWinInfo->ePixFmt;
    pstPortCfg->eAspMode    = pstWinInfo->enARCvrs;
    pstPortCfg->stCustmAR   = pstWinInfo->stCustmAR;
    pstPortCfg->stDispPixAR = pstWinInfo->stScreenAR;
    pstPortCfg->stScreen    = pstWinInfo->stScreen;

    return HI_SUCCESS;
}

HI_S32 VI_Vpss_Event(HI_HANDLE hVi, HI_DRV_VPSS_EVENT_E enEventID, HI_VOID *pstArgs)
{
    VPSS_EXPORT_FUNC_S *pVpssExtFunc = HI_NULL;
    HI_DRV_VPSS_PORT_BUFLIST_STATE_S stBufState;
    VPSS_HANDLE hPort;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_S32 Ret;
    HI_U32 i;

    GET_PORT_CHN(hVi, enPort, u32Chn);

    Ret = HI_DRV_MODULE_GetFunction(HI_ID_VPSS, (HI_VOID**)&pVpssExtFunc);
    if ((HI_NULL == pVpssExtFunc) || (HI_SUCCESS != Ret))
    {
        HI_ERR_VI("Get Function from VPSS failed.\n");
        return HI_FAILURE;
    }

    switch (enEventID)
    {
    case VPSS_EVENT_BUFLIST_FULL:
    {
        for (i = 0; i < VI_MAX_VPSS_PORT; i++)
        {
            if (g_ViDrv[enPort][u32Chn].stPortParam[i].bEnable == HI_FALSE)
            {
                continue;
            }

            hPort = g_ViDrv[enPort][u32Chn].stPortParam[i].hPort;
            if (g_ViDrv[enPort][u32Chn].stPortParam[i].hDst >> 16 != HI_ID_VENC)
            {
                Ret = (pVpssExtFunc->pfnVpssGetPortBufListState)(hPort, &stBufState);
                if (HI_SUCCESS == Ret)
                {
                    if (stBufState.u32FulBufNumber > (stBufState.u32TotalBufNumber - 2))
                    {
                        (*(HI_DRV_VPSS_BUFFUL_STRATAGY_E *)pstArgs) = HI_DRV_VPSS_BUFFUL_PAUSE;
                        break;
                    }
                    else
                    {
                        (*(HI_DRV_VPSS_BUFFUL_STRATAGY_E *)pstArgs) = HI_DRV_VPSS_BUFFUL_KEEPWORKING;
                    }
                }
                else
                {
                    HI_ERR_VI("pfnVpssGetPortBufListState failed, ret = 0x%08x\n", Ret);
                    return HI_FAILURE;
                }
            }
        }

        break;
    }
    default:
        break;
    }

    return HI_SUCCESS;
}

HI_S32 VI_DRV_FrameProcessThread(HI_VOID *Arg)
{
    HI_S32 Ret = HI_FAILURE;
    VPSS_EXPORT_FUNC_S *pVpssFunc    = HI_NULL;
    WIN_EXPORT_FUNC_S *pWinExtFunc   = HI_NULL;
    VENC_EXPORT_FUNC_S *pVencExtFunc = HI_NULL;
    HI_DRV_VPSS_PORT_AVAILABLE_S stCanGetFrm;
    HI_DRV_VIDEO_FRAME_S stVidFrm;
    VI_DRV_S *pVi;
    HI_BOOL bFrameRdy  = HI_FALSE;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_U32 i;

    //    unsigned long flag;

    pVi = (VI_DRV_S *)Arg;
    GET_PORT_CHN(pVi->hVi, enPort, u32Chn);
    pVpssFunc = g_ViDrv[enPort][u32Chn].pVpssFunc;

    Ret = HI_DRV_MODULE_GetFunction(HI_ID_VO, (HI_VOID**)&pWinExtFunc);
    if ((HI_NULL == pWinExtFunc) || (HI_SUCCESS != Ret))
    {
        HI_ERR_VI("Get Function from VO failed.\n");
        return HI_FAILURE;
    }

    Ret = HI_DRV_MODULE_GetFunction(HI_ID_VENC, (HI_VOID**)&pVencExtFunc);
    if ((HI_NULL == pVencExtFunc) || (HI_SUCCESS != Ret))
    {
        HI_ERR_VI("Get Function from VO failed.\n");
        return HI_FAILURE;
    }

    while (!kthread_should_stop())
    {
        bFrameRdy = HI_TRUE;
        for (i = 0; i < VI_MAX_VPSS_PORT; i++)
        {
            if ((HI_TRUE == g_ViDrv[enPort][u32Chn].stPortParam[i].bEnable)
                && (HI_ID_VENC != (g_ViDrv[enPort][u32Chn].stPortParam[i].hDst >> 16)))
            {
                stCanGetFrm.hPort = g_ViDrv[enPort][u32Chn].stPortParam[i].hPort;
                stCanGetFrm.bAvailable = HI_FALSE;
                pVpssFunc->pfnVpssSendCommand(g_ViDrv[enPort][u32Chn].hVpss,
                                              HI_DRV_VPSS_USER_COMMAND_CHECKAVAILABLE, &stCanGetFrm);
                if (stCanGetFrm.bAvailable == HI_FALSE)
                {
                    msleep(5);
                    bFrameRdy = HI_FALSE;
                }
            }
        }

        /* DO NOT get frame from vpss, until all window DSTS are ready to keep synchro */
        if (HI_FALSE == bFrameRdy)
        {
            continue;
        }

        for (i = 0; i < VI_MAX_VPSS_PORT; i++)
        {
            // VI_UtilsLock(g_ViDrv[enPort][u32Chn].stThread.pLock, &flag);
            if (HI_TRUE == g_ViDrv[enPort][u32Chn].stPortParam[i].bEnable)
            {
                g_ViDrv[enPort][u32Chn].stStat.GetTry++;
                Ret = (pVpssFunc->pfnVpssGetPortFrame)(g_ViDrv[enPort][u32Chn].stPortParam[i].hPort, &stVidFrm);
                if (HI_SUCCESS != Ret)
                {
                    ;
                }
                else
                {
                    g_ViDrv[enPort][u32Chn].stStat.GetOK++;

                    /* get frame successfully, queue frame to destination */
                    switch ((g_ViDrv[enPort][u32Chn].stPortParam[i].hDst >> 16) & 0xff)
                    {
                    case HI_ID_VO:
                    {
                        g_ViDrv[enPort][u32Chn].stStat.QWinTry++;
                        Ret = (pWinExtFunc->pfnWinQueueFrm)(g_ViDrv[enPort][u32Chn].stPortParam[i].hDst, &stVidFrm);
                        if (HI_SUCCESS != Ret)
                        {
                            HI_WARN_VI("Q to WIN failed, ret = 0x%08x\n", Ret);
                            g_ViDrv[enPort][u32Chn].stStat.PutTry++;
                            Ret = pVpssFunc->pfnVpssRelPortFrame(g_ViDrv[enPort][u32Chn].stPortParam[i].hPort,
                                                                 &stVidFrm);
                            if (HI_SUCCESS != Ret)
                            {
                                HI_WARN_VI("pfnVpssRelPortFrame failed, ret = 0x%08x\n", Ret);
                            }
                            else
                            {
                                g_ViDrv[enPort][u32Chn].stStat.PutOK++;
                            }
                        }
                        else
                        {
                            g_ViDrv[enPort][u32Chn].stStat.QWinOK++;
                        }

                        break;
                    }
                    case HI_ID_VENC:
                    {
                        g_ViDrv[enPort][u32Chn].stStat.QVencTry++;
                        Ret = (pVencExtFunc->pfnVencQueueFrame)(g_ViDrv[enPort][u32Chn].stPortParam[i].hDst, &stVidFrm);
                        if (HI_SUCCESS != Ret)
                        {
                            HI_WARN_VI("Q to VENC failed, ret = 0x%08x\n", Ret);
                            g_ViDrv[enPort][u32Chn].stStat.PutTry++;
                            Ret = pVpssFunc->pfnVpssRelPortFrame(g_ViDrv[enPort][u32Chn].stPortParam[i].hPort,
                                                                 &stVidFrm);
                            if (HI_SUCCESS != Ret)
                            {
                                HI_WARN_VI("pfnVpssRelPortFrame failed, ret = 0x%08x\n", Ret);
                            }
                            else
                            {
                                g_ViDrv[enPort][u32Chn].stStat.PutOK++;
                            }
                        }
                        else
                        {
                            g_ViDrv[enPort][u32Chn].stStat.QVencOK++;
                        }

                        break;
                    }
                    default:
                    {
                        return HI_FAILURE;
                    }
                    }
                }
            }

            //   VI_UtilsUnlock(g_ViDrv[enPort][u32Chn].stThread.pLock, &flag);
        }

        (HI_VOID)msleep(10);
    }

    return HI_SUCCESS;
}

HI_S32 VI_Vpss_Create(HI_HANDLE hVi, VPSS_HANDLE *phVpss)
{
    HI_S32 Ret;
    VPSS_EXPORT_FUNC_S *pVpssFunc = HI_NULL;
    HI_DRV_VPSS_CFG_S stVpssCfg;
    HI_DRV_VPSS_SOURCE_FUNC_S stVpssSrcFunc;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;

    VI_CHECK_NULL_PTR(phVpss);
    GET_PORT_CHN(hVi, enPort, u32Chn);

    Ret = HI_DRV_MODULE_GetFunction(HI_ID_VPSS, (HI_VOID**)&g_ViDrv[enPort][u32Chn].pVpssFunc);
    if ((HI_NULL == g_ViDrv[enPort][u32Chn].pVpssFunc) || (HI_SUCCESS != Ret))
    {
        HI_ERR_VI("HI_DRV_MODULE_GetFunction failed.\n");
        return HI_FAILURE;
    }

    pVpssFunc = g_ViDrv[enPort][u32Chn].pVpssFunc;

    Ret = pVpssFunc->pfnVpssGlobalInit();
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssGlobalInit failed, ret = 0x%08x\n", Ret);
        goto ERR0;
    }

    Ret = pVpssFunc->pfnVpssGetDefaultCfg(&stVpssCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssGetDefaultCfg failed, ret = 0x%08x\n", Ret);
        goto ERR1;
    }

    stVpssCfg.enProgInfo = HI_DRV_VPSS_PRODETECT_PROGRESSIVE;
    Ret = pVpssFunc->pfnVpssCreateVpss(&stVpssCfg, phVpss);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssCreateVpss failed, ret = 0x%08x\n", Ret);
        goto ERR1;
    }

    Ret = pVpssFunc->pfnVpssRegistHook(*phVpss, hVi, VI_Vpss_Event);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssRegistHook failed, ret = 0x%08x\n", Ret);
        goto ERR2;
    }

    stVpssSrcFunc.VPSS_GET_SRCIMAGE = VI_DRV_AcquireFrame;
    stVpssSrcFunc.VPSS_REL_SRCIMAGE = VI_DRV_ReleaseFrame;
    Ret = pVpssFunc->pfnVpssSetSourceMode(*phVpss, VPSS_SOURCE_MODE_VPSSACTIVE, &stVpssSrcFunc);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssSetSourceMode failed, ret = 0x%08x\n", Ret);
        goto ERR2;
    }

    Ret = VI_UtilsLockCreate(&g_ViDrv[enPort][u32Chn].stThread.pLock);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("VI_UtilsLockCreate failed, ret = 0x%08x\n", Ret);
        goto ERR2;
    }

    return HI_SUCCESS;

ERR2:
    pVpssFunc->pfnVpssDestroyVpss(*phVpss);
ERR1:
    pVpssFunc->pfnVpssGlobalDeInit();
ERR0:
    return HI_FAILURE;
}

HI_S32 VI_Vpss_Destroy(HI_HANDLE hVi, VPSS_HANDLE hVpss)
{
    VPSS_EXPORT_FUNC_S *pVpssFunc = HI_NULL;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;

    if ((HI_INVALID_HANDLE == hVpss) || (HI_INVALID_HANDLE == hVi))
    {
        return HI_FAILURE;
    }

    GET_PORT_CHN(hVi, enPort, u32Chn);

    pVpssFunc = g_ViDrv[enPort][u32Chn].pVpssFunc;

    if (g_ViDrv[enPort][u32Chn].stThread.pViThreadInst)
    {
        kthread_stop(g_ViDrv[enPort][u32Chn].stThread.pViThreadInst);
        g_ViDrv[enPort][u32Chn].stThread.pViThreadInst = HI_NULL;
    }

    VI_UtilsLockDestroy(g_ViDrv[enPort][u32Chn].stThread.pLock);

    pVpssFunc->pfnVpssDestroyVpss(hVpss);
    pVpssFunc->pfnVpssGlobalDeInit();

    return HI_SUCCESS;
}

HI_VOID VI_PHY_BoardInit(HI_UNF_VI_INPUT_MODE_E enInputMode)
{
    U_PERI_CRG55 unTmpValue;

    unTmpValue.u32 = g_pstRegCrg->PERI_CRG55.u32;
    unTmpValue.bits.vi_bus_cken = 1;
    unTmpValue.bits.vi0_cken = 1;
    unTmpValue.bits.vi_bus_srst_req = 0;
    unTmpValue.bits.vi0_srst_req = 0;
    unTmpValue.bits.vi0_pctrl = 1;
#if defined (CHIP_TYPE_hi3716cv200es)
    unTmpValue.bits.vi0_clk_sel = 1;
#elif defined (CHIP_TYPE_hi3716cv200)  \
        || defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100)  \
        || defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
        || defined (CHIP_TYPE_hi3718mv100)

    unTmpValue.bits.vicap_clk_sel_vi = 1;
    if (HI_UNF_VI_MODE_BT1120_1080P_60 == enInputMode)
    {
        /* 200MHz */
        unTmpValue.bits.vicap_clk_sel = 1;
    }
    else
    {
        /* 150MHz */
        unTmpValue.bits.vicap_clk_sel = 0;
    }
#endif
    g_pstRegCrg->PERI_CRG55.u32 = unTmpValue.u32;

    pViReg = (VI_REG_S *)ioremap_nocache(VI_REG_BASE, 0x40000);

    return;
}

HI_VOID VI_PHY_BoardDeinit(HI_VOID)
{
    U_PERI_CRG55 unTmpValue;

    unTmpValue.u32 = g_pstRegCrg->PERI_CRG55.u32;
    unTmpValue.bits.vi_bus_cken = 0;
    unTmpValue.bits.vi0_cken = 0;
    unTmpValue.bits.vi_bus_srst_req = 1;
    unTmpValue.bits.vi0_srst_req = 1;
    unTmpValue.bits.vi0_pctrl = 0;
#if defined (CHIP_TYPE_hi3716cv200es)
    unTmpValue.bits.vi0_clk_sel = 1;
#elif defined (CHIP_TYPE_hi3716cv200)  \
            || defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100)  \
            || defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
            || defined (CHIP_TYPE_hi3718mv100)

    unTmpValue.bits.vicap_clk_sel_vi = 0;
    unTmpValue.bits.vicap_clk_sel = 0;
#endif
    g_pstRegCrg->PERI_CRG55.u32 = unTmpValue.u32;

    iounmap(pViReg);

    return;
}

HI_S32 VI_PHY_Create(HI_HANDLE hVi, const HI_UNF_VI_ATTR_S *pstAttr)
{
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    VI_DRV_CHN_STORE_INFO stStoreCfg;
    VI_DRV_CHN_ZME_INFO stZmeInfo;
    HI_U32 Coef[2] = {16, 16};

    VI_CHECK_NULL_PTR(pstAttr);
    GET_PORT_CHN(hVi, enPort, u32Chn);

    VI_PHY_BoardInit(pstAttr->enInputMode);
    if (pstAttr->enInputMode <= HI_UNF_VI_MODE_BT656_480I)
    {
        VI_DRV_SetTiming_BT656(enPort);
    }
    else if ((pstAttr->enInputMode >= HI_UNF_VI_MODE_BT1120_480P)
             && (pstAttr->enInputMode <= HI_UNF_VI_MODE_BT1120_1080P_60))
    {
        VI_DRV_SetTiming_BT1120(enPort);
        if ((HI_UNF_VI_MODE_BT1120_1080I_60 == pstAttr->enInputMode)
            || (HI_UNF_VI_MODE_BT1120_1080I_50 == pstAttr->enInputMode))
        {
            g_ViDrv[enPort][u32Chn].bProgressive = HI_FALSE;
        }
        else
        {
            g_ViDrv[enPort][u32Chn].bProgressive = HI_TRUE;
        }
    }
    else
    {
        HI_ERR_VI("unsupport VI mode %d\n", pstAttr->enInputMode);
        VI_PHY_BoardDeinit();
        return HI_ERR_VI_INVALID_PARA;
    }

    stStoreCfg.enPixFormat = pstAttr->enVideoFormat;
    stStoreCfg.u32BitWidth = 8;
    stStoreCfg.u32Width  = (HI_U32)pstAttr->stInputRect.s32Width;
    stStoreCfg.u32Height = (HI_U32)pstAttr->stInputRect.s32Height;
    if (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == stStoreCfg.enPixFormat)
    {
        stStoreCfg.u32Stride = stStoreCfg.u32Width;
        stZmeInfo.stSrcSize.u32Width  = (HI_U32)pstAttr->stInputRect.s32Width;
        stZmeInfo.stSrcSize.u32Height = (HI_U32)pstAttr->stInputRect.s32Height;
        stZmeInfo.enSrcPixFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_422;

        stZmeInfo.stDstSize.u32Width  = (HI_U32)pstAttr->stInputRect.s32Width;
        stZmeInfo.stDstSize.u32Height = (HI_U32)pstAttr->stInputRect.s32Height;
        stZmeInfo.enDstPixFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_422;
        VI_DRV_SetChZme(VI_PHY_CHN0, &stZmeInfo);
        VI_DRV_SetChVcdsEn(VI_PHY_CHN0, HI_TRUE);
        VI_DRV_SetChVcdsCoef(VI_PHY_CHN0, Coef);
    }
    else if (HI_UNF_FORMAT_YUV_SEMIPLANAR_422 == stStoreCfg.enPixFormat)
    {
        stStoreCfg.u32Stride = stStoreCfg.u32Width * 2;

        //todo
    }
    else
    {
        HI_ERR_VI("unsupport VI store mode %d\n", stStoreCfg.enPixFormat);
        VI_PHY_BoardDeinit();
        return HI_ERR_VI_INVALID_PARA;
    }

    stStoreCfg.bProgressive = g_ViDrv[enPort][u32Chn].bProgressive;
    VI_DRV_SetVcapInit(VI_PHY_CHN0, &stStoreCfg);

    /* SP444-> SP422 */
    VI_DRV_SetChSkip(VI_PHY_CHN0, 0xffffffff, 0xaaaaaaaa);

    if (0 != request_irq(VI_INT_NUM, VI_PHY_InterruptHandler, IRQF_DISABLED, "hi_vi_irq", HI_NULL))
    {
        HI_FATAL_VI("VI request_irq error.\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_VOID VI_PHY_Destroy(HI_HANDLE hVi)
{
    free_irq(VI_INT_NUM, HI_NULL);
    VI_PHY_BoardDeinit();
}

irqreturn_t VI_PHY_InterruptHandler(int irq, void *dev_id)
{
    HI_U32 u32PtInt, u32ChInt;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn;
    VI_FB_S stFb;
    HI_U32 offset;
    HI_S32 Ret;
    HI_U32 u32BtmYAddr, u32BtmCAddr;
    HI_U32 i;

    //find channel for real vi 
    for (i = 0; i < MAX_VI_CHN; i++)
    {
         if ((HI_INVALID_HANDLE != g_ViDrv[enPort][i].hVi)
            && (HI_FALSE == g_ViDrv[enPort][i].stAttr.bVirtual))
        {
            break;
        }
    }

    if (MAX_VI_CHN == i)
    {
        HI_ERR_VI("vi phy int failed, max channel number reached!\n");
        return IRQ_HANDLED;
    }

    u32Chn = i;

    u32PtInt = VI_DRV_GetPtIntStatus(VI_PHY_PORT0);
    VI_DRV_ClrPtIntStatus(VI_PHY_PORT0, u32PtInt);

    u32ChInt = VI_DRV_GetChIntStatus(VI_PHY_CHN0);
    VI_DRV_ClrChIntStatus(VI_PHY_CHN0, u32ChInt);

    if ((u32ChInt & VI_FRAMEPULSE_INT) == VI_FRAMEPULSE_INT)
    {
        if (HI_TRUE == g_ViDrv[enPort][u32Chn].bProgressive)
        {
            g_ViDrv[enPort][u32Chn].stStat.FrmStart++;
            g_ViDrv[enPort][u32Chn].stStat.Cnt++;
            Ret = VI_DRV_BufGet(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stFb);
            if (HI_SUCCESS != Ret)
            {
                g_ViDrv[enPort][u32Chn].stStat.Unload++;
                return IRQ_HANDLED;
            }

            offset = (HI_U32)g_ViDrv[enPort][u32Chn].stAttr.stInputRect.s32Width
                     * (HI_U32)g_ViDrv[enPort][u32Chn].stAttr.stInputRect.s32Height;
            VI_DRV_SetChDesAddr(VI_PHY_CHN0, stFb.u32PhysAddr, (stFb.u32PhysAddr + offset));
            Ret = VI_DRV_BufPut(&g_ViDrv[enPort][u32Chn].stFrameBuf, stFb.u32PhysAddr);
            if (HI_SUCCESS != Ret)
            {
                g_ViDrv[enPort][u32Chn].stStat.Unload++;
                return IRQ_HANDLED;
            }

            VI_DRV_SetChRegNewer(VI_PHY_CHN0);
        }
        else
        {
            g_ViDrv[enPort][u32Chn].stStat.FrmStart++;
            g_ViDrv[enPort][u32Chn].stStat.Cnt++;

            /* make sure receive top field firstly */
            if ((1 == g_ViDrv[enPort][u32Chn].stStat.Cnt) && (HI_FALSE == VI_DRV_IsInCapTop(VI_PHY_PORT0)))
            {
                g_ViDrv[enPort][u32Chn].stStat.BtmField++;
                g_ViDrv[enPort][u32Chn].stStat.Unload++;
                return IRQ_HANDLED;
            }

            if (HI_TRUE == VI_DRV_IsInCapTop(VI_PHY_PORT0))
            {
                g_ViDrv[enPort][u32Chn].stStat.TopField++;
                Ret = VI_DRV_BufGet(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stFb);
                if (HI_SUCCESS != Ret)
                {
                    g_ViDrv[enPort][u32Chn].stStat.Unload++;
                    return IRQ_HANDLED;
                }

                offset = (HI_U32)g_ViDrv[enPort][u32Chn].stAttr.stInputRect.s32Width
                         * (HI_U32)g_ViDrv[enPort][u32Chn].stAttr.stInputRect.s32Height;
                VI_DRV_SetChDesAddr(VI_PHY_CHN0, stFb.u32PhysAddr, (stFb.u32PhysAddr + offset));
                VI_DRV_SetChRegNewer(VI_PHY_CHN0);
            }
            else
            {
                g_ViDrv[enPort][u32Chn].stStat.BtmField++;
                u32BtmYAddr = VI_DRV_GetChDesYAddr(VI_PHY_CHN0)
                              + (HI_U32)g_ViDrv[enPort][u32Chn].stAttr.stInputRect.s32Width;
                u32BtmCAddr = VI_DRV_GetChDesCAddr(VI_PHY_CHN0)
                              + (HI_U32)g_ViDrv[enPort][u32Chn].stAttr.stInputRect.s32Width;

                VI_DRV_SetChDesAddr(VI_PHY_CHN0, u32BtmYAddr, u32BtmCAddr);
                VI_DRV_SetChRegNewer(VI_PHY_CHN0);

                Ret = VI_DRV_BufPut(&g_ViDrv[enPort][u32Chn].stFrameBuf,
                                    u32BtmYAddr - (HI_U32)g_ViDrv[enPort][u32Chn].stAttr.stInputRect.s32Width);
                if (HI_SUCCESS != Ret)
                {
                    g_ViDrv[enPort][u32Chn].stStat.Unload++;
                    return IRQ_HANDLED;
                }
            }
        }
    }

    if ((u32ChInt & VI_CC_INT) == VI_CC_INT)
    {
        g_ViDrv[enPort][u32Chn].stStat.CcInt++;
    }

    if ((u32ChInt & VI_BUFOVF_INT) == VI_BUFOVF_INT)
    {
        g_ViDrv[enPort][u32Chn].stStat.BufOverflow++;
    }

    if ((u32ChInt & VI_DATATHROW_INT) == VI_DATATHROW_INT)
    {
        g_ViDrv[enPort][u32Chn].stStat.FieldThrow++;
    }

    if ((u32ChInt & VI_UPDATECFG_INT) == VI_UPDATECFG_INT)
    {
        g_ViDrv[enPort][u32Chn].stStat.UpdateReg++;
    }

    if ((u32ChInt & VI_BUSERRC_INT) == VI_BUSERRC_INT)
    {
        g_ViDrv[enPort][u32Chn].stStat.CBusError++;
    }

    if ((u32ChInt & VI_BUSERRY_INT) == VI_BUSERRY_INT)
    {
        g_ViDrv[enPort][u32Chn].stStat.YBusError++;
    }

    if (0 == u32ChInt)
    {
        g_ViDrv[enPort][u32Chn].stStat.ZeroInt++;
    }

    return IRQ_HANDLED;
}

HI_S32 VI_DRV_ReleaseImage(HI_HANDLE hPort, HI_DRV_VIDEO_FRAME_S* pstFrame)
{
    HI_S32 Ret = HI_FAILURE;
    VPSS_EXPORT_FUNC_S *pVpssFunc = HI_NULL;
    HI_HANDLE hDst = HI_INVALID_HANDLE;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;

    VI_CHECK_NULL_PTR(pstFrame);
    VI_PARSE_VESS_PORT_GET_HDST(hPort, enPort, u32Chn, hDst);

    pVpssFunc = g_ViDrv[enPort][u32Chn].pVpssFunc;

    switch ((hDst >> 16) & 0xff)
    {
    case HI_ID_VENC:
        g_ViDrv[enPort][u32Chn].stStat.DqVencTry++;
        break;
    case HI_ID_VO:
        g_ViDrv[enPort][u32Chn].stStat.DqWinTry++;
        break;
    }

    g_ViDrv[enPort][u32Chn].stStat.PutTry++;

    Ret = pVpssFunc->pfnVpssRelPortFrame(hPort, pstFrame);
    if (HI_SUCCESS != Ret)
    {
        HI_WARN_VI("pfnVpssRelPortFrame failed, ret = 0x%08x\n", Ret);
        return Ret;
    }

    g_ViDrv[enPort][u32Chn].stStat.PutOK++;

    switch ((hDst >> 16) & 0xff)
    {
    case HI_ID_VENC:
        g_ViDrv[enPort][u32Chn].stStat.DqVencOK++;
        break;
    case HI_ID_VO:
        g_ViDrv[enPort][u32Chn].stStat.DqWinOK++;
        break;
    }

    return HI_SUCCESS;
}

HI_S32 VI_DRV_ChangeVencInfo(HI_HANDLE hPort, HI_U32 u32Width, HI_U32 u32Height)
{
    HI_S32 Ret;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    VPSS_EXPORT_FUNC_S *pVpssFunc = HI_NULL;
    HI_DRV_VPSS_PORT_CFG_S stPortCfg;

    VI_PARSE_VPSS_PORT(hPort, enPort, u32Chn);

    pVpssFunc = g_ViDrv[enPort][u32Chn].pVpssFunc;
    if (pVpssFunc == HI_NULL)
    {
        return HI_FAILURE;
    }

    Ret = pVpssFunc->pfnVpssGetPortCfg(hPort, &stPortCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssGetPortCfg failed, ret = 0x%08x\n", Ret);
        return HI_FAILURE;
    }

    stPortCfg.s32OutputWidth  = (HI_S32)u32Width;
    stPortCfg.s32OutputHeight = (HI_S32)u32Height;
    Ret = pVpssFunc->pfnVpssSetPortCfg(hPort, &stPortCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssSetPortCfg failed, ret = 0x%08x\n", Ret);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 VI_DRV_ChangeWinInfo(HI_HANDLE hPort, HI_DRV_WIN_PRIV_INFO_S* pstWinInfo)
{
    HI_S32 Ret;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    VPSS_EXPORT_FUNC_S *pVpssFunc = HI_NULL;
    HI_DRV_VPSS_CFG_S stVpssCfg, stVpssCfgBak;
    HI_DRV_VPSS_PORT_CFG_S stPortCfg;

    VI_CHECK_NULL_PTR(pstWinInfo);
    VI_PARSE_VPSS_PORT(hPort, enPort, u32Chn);

    pVpssFunc = g_ViDrv[enPort][u32Chn].pVpssFunc;
    if (pVpssFunc == HI_NULL)
    {
        return HI_FAILURE;
    }

    Ret = pVpssFunc->pfnVpssGetPortCfg(hPort, &stPortCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssGetPortCfg failed, ret = 0x%08x\n", Ret);
        return Ret;
    }

    Ret = pVpssFunc->pfnVpssGetVpssCfg(g_ViDrv[enPort][u32Chn].hVpss, &stVpssCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssGetVpssCfg failed, ret = 0x%08x\n", Ret);
        return Ret;
    }

    memcpy(&stVpssCfgBak, &stVpssCfg, sizeof(HI_DRV_VPSS_CFG_S));
    Ret = VI_Convert_WinInfo(pstWinInfo, &stVpssCfg, &stPortCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("VI_Convert_WinInfo failed, ret = 0x%08x\n", Ret);
        return Ret;
    }

    Ret = pVpssFunc->pfnVpssSetVpssCfg(g_ViDrv[enPort][u32Chn].hVpss, &stVpssCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssSetVpssCfg failed, ret = 0x%08x\n", Ret);
        return Ret;
    }

    Ret = pVpssFunc->pfnVpssSetPortCfg(hPort, &stPortCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssSetPortCfg failed, ret = 0x%08x\n", Ret);
        pVpssFunc->pfnVpssSetVpssCfg(g_ViDrv[enPort][u32Chn].hVpss, &stVpssCfgBak);
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 VI_DRV_AcquireFrame(VPSS_HANDLE hVpss, HI_DRV_VIDEO_FRAME_S *pstFrame)
{
    HI_S32 Ret;
    VI_FB_S stFbAttr;
    HI_UNF_VIDEO_FRAME_INFO_S stFrameUnf;
    HI_DRV_VIDEO_PRIVATE_S *pstPrivInfo = HI_NULL;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_U32 u32Width, u32Height;
    HI_U32 i;

    VI_CHECK_NULL_PTR(pstFrame);
    VI_PARSE_VPSS(hVpss, enPort, u32Chn);

    g_ViDrv[enPort][u32Chn].stStat.AcquireTry++;

    Ret = VI_DRV_BufAdd(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stFbAttr);
    if (HI_SUCCESS != Ret)
    {
        HI_WARN_VI("VI_DRV_BufAdd failed\n");
        return HI_ERR_VI_BUF_EMPTY;
    }

    for (i = 0; i < g_ViDrv[enPort][u32Chn].stAttr.u32BufNum; i++)
    {
        if (stFbAttr.u32PhysAddr == g_ViDrv[enPort][u32Chn].stFrame[i].stVideoFrameAddr[0].u32YAddr)
        {
            /* generate frame info in REAL VI mode */
            if (HI_FALSE == g_ViDrv[enPort][u32Chn].stAttr.bVirtual)
            {
                u32Width  = (HI_U32)g_ViDrv[enPort][u32Chn].stAttr.stInputRect.s32Width;
                u32Height = (HI_U32)g_ViDrv[enPort][u32Chn].stAttr.stInputRect.s32Height;
                g_ViDrv[enPort][u32Chn].stFrame[i].enVideoFormat = g_ViDrv[enPort][u32Chn].stAttr.enVideoFormat;
                g_ViDrv[enPort][u32Chn].stFrame[i].stVideoFrameAddr[0].u32CAddr =
                    g_ViDrv[enPort][u32Chn].stFrame[i].stVideoFrameAddr[0].u32YAddr + u32Width * u32Height;
                g_ViDrv[enPort][u32Chn].stFrame[i].stVideoFrameAddr[0].u32YStride = u32Width;
                g_ViDrv[enPort][u32Chn].stFrame[i].stVideoFrameAddr[0].u32CStride = u32Width;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32Width  = u32Width;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32Height = u32Height;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32AspectWidth  = u32Width;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32AspectHeight = u32Height;
                g_ViDrv[enPort][u32Chn].stFrame[i].stFrameRate.u32fpsDecimal = 0;
                g_ViDrv[enPort][u32Chn].stFrame[i].stFrameRate.u32fpsInteger = 30; //todo
                g_ViDrv[enPort][u32Chn].stFrame[i].bProgressive = HI_TRUE;
                g_ViDrv[enPort][u32Chn].stFrame[i].enFieldMode = HI_UNF_VIDEO_FIELD_ALL;
                g_ViDrv[enPort][u32Chn].stFrame[i].bTopFieldFirst = HI_FALSE;
                g_ViDrv[enPort][u32Chn].stFrame[i].enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_NONE;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32Circumrotate   = 0;
                g_ViDrv[enPort][u32Chn].stFrame[i].bVerticalMirror   = HI_FALSE;
                g_ViDrv[enPort][u32Chn].stFrame[i].bHorizontalMirror = HI_FALSE;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32DisplayWidth   = u32Width;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32DisplayHeight  = u32Height;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32DisplayCenterX = u32Width / 2;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32DisplayCenterY = u32Height / 2;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32ErrorLevel = 0;
                g_ViDrv[enPort][u32Chn].stFrame[i].u32Pts = VI_UtilsGetPTS(); //todo: move to interrupt
                g_ViDrv[enPort][u32Chn].stFrame[i].u32SrcPts = g_ViDrv[enPort][u32Chn].stFrame[i].u32Pts;
            }

            memcpy(&stFrameUnf, &g_ViDrv[enPort][u32Chn].stFrame[i], sizeof(HI_UNF_VIDEO_FRAME_INFO_S));

            break;
        }
    }

    if (i == g_ViDrv[enPort][u32Chn].stAttr.u32BufNum)
    {
        HI_ERR_VI("cannot find frame in VI\n");
        return HI_FAILURE;
    }

    memset(pstFrame, 0, sizeof(HI_DRV_VIDEO_FRAME_S));

    Ret = VI_Convert_FrameInfo(&stFrameUnf, pstFrame);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("VI_Convert_FrameInfo failed\n");
        return HI_FAILURE;
    }

    pstPrivInfo = (HI_DRV_VIDEO_PRIVATE_S *)pstFrame->u32Priv;
    pstPrivInfo->u32FrmCnt   = 0;
    pstPrivInfo->u32PlayTime = 1;
    g_ViDrv[enPort][u32Chn].u32FrameCnt++;
    pstFrame->u32FrameIndex = g_ViDrv[enPort][u32Chn].u32FrameCnt;

    g_ViDrv[enPort][u32Chn].stStat.AcquireOK++;

    HI_INFO_VI("ACQ from VI OK, phyaddr[0x%08x]\n", pstFrame->stBufAddr[0].u32PhyAddr_Y);
    return HI_SUCCESS;
}

HI_S32 VI_DRV_ReleaseFrame(VPSS_HANDLE hVpss, HI_DRV_VIDEO_FRAME_S *pstFrame)
{
    HI_S32 Ret;
    HI_U32 u32PhyAddr;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;

    VI_CHECK_NULL_PTR(pstFrame);
    VI_PARSE_VPSS(hVpss, enPort, u32Chn);

    g_ViDrv[enPort][u32Chn].stStat.ReleaseTry++;

    u32PhyAddr = pstFrame->stBufAddr[0].u32PhyAddr_Y;
    Ret = VI_DRV_BufSub(&g_ViDrv[enPort][u32Chn].stFrameBuf, u32PhyAddr);
    if (HI_SUCCESS != Ret)
    {
        HI_WARN_VI("VI_DRV_BufSub failed\n");
        return HI_FAILURE;
    }

    g_ViDrv[enPort][u32Chn].stStat.ReleaseOK++;

    HI_INFO_VI("RLS to VI OK, phyaddr[0x%08x]\n", pstFrame->stBufAddr[0].u32PhyAddr_Y);

    return HI_SUCCESS;
}

HI_S32 VI_DRV_DestroyForce(HI_HANDLE hVi)
{
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    VI_VPSS_PORT_S stVpssPort;
    VI_FB_ATTR_S stFbAttr;
    HI_U32 i;

    GET_PORT_CHN(hVi, enPort, u32Chn);

    if (HI_FALSE == g_ViDrv[enPort][u32Chn].stAttr.bVirtual)
    {
        VI_PHY_Destroy(hVi);
        bRealViOpened = HI_FALSE;
    }

    (void)VI_Vpss_Destroy(hVi, g_ViDrv[enPort][u32Chn].hVpss);

    for (i = 0; i < VI_MAX_VPSS_PORT; i++)
    {
        if (HI_INVALID_HANDLE != g_ViDrv[enPort][u32Chn].stPortParam[i].hPort)
        {
            stVpssPort.hVi   = g_ViDrv[enPort][u32Chn].hVi;
            stVpssPort.hVpss = g_ViDrv[enPort][u32Chn].hVpss;
            memcpy(&stVpssPort.stPortParam, &g_ViDrv[enPort][u32Chn].stPortParam, sizeof(VI_VPSS_PORT_PARAM_S));
            HI_DRV_VI_DestroyVpssPort(hVi, &stVpssPort);
        }
    }

    memset(&stFbAttr, 0, sizeof(VI_FB_ATTR_S));
    if (HI_FALSE == g_ViDrv[enPort][u32Chn].stAttr.bVirtual)
    {
        if (HI_UNF_VI_BUF_ALLOC == g_ViDrv[enPort][u32Chn].stAttr.enBufMgmtMode)
        {
            stFbAttr.enBufMode = VI_FB_MODE_ALLOC;
        }
        else
        {
            stFbAttr.enBufMode = VI_FB_MODE_MMAP;
        }
    }
    else
    {
        stFbAttr.enBufMode = VI_FB_MODE_VIRTUAL;
    }

    VI_DRV_BufDeInit(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stFbAttr);
    (void)VI_DRV_ProcDel(hVi);

    return HI_SUCCESS;
}

HI_VOID VI_DRV_InitParam(HI_VOID)
{
    HI_U32 iPort, iChn;
    HI_U32 i;

    for (iPort = 0; iPort < MAX_VI_PORT; iPort++)
    {
        for (iChn = 0; iChn < MAX_VI_CHN; iChn++)
        {
            memset(&g_ViDrv[iPort][iChn], 0x0, sizeof(VI_DRV_S));
            g_ViDrv[iPort][iChn].hVi   = HI_INVALID_HANDLE;
            g_ViDrv[iPort][iChn].hVpss = HI_INVALID_HANDLE;

            for (i = 0; i < MAX_VI_FB_NUM; i++)
            {
                g_ViDrv[iPort][iChn].stFrame[i].u32FrameIndex = 0;
                g_ViDrv[iPort][iChn].stFrame[i].u32Width  = 0;
                g_ViDrv[iPort][iChn].stFrame[i].u32Height = 0;
                g_ViDrv[iPort][iChn].stFrame[i].u32SrcPts = 0;
                g_ViDrv[iPort][iChn].stFrame[i].u32Pts = 0;
                g_ViDrv[iPort][iChn].stFrame[i].u32AspectWidth  = 0;
                g_ViDrv[iPort][iChn].stFrame[i].u32AspectHeight = 0;
                g_ViDrv[iPort][iChn].stFrame[i].stFrameRate.u32fpsDecimal = 0;
                g_ViDrv[iPort][iChn].stFrame[i].stFrameRate.u32fpsInteger = 0;
                g_ViDrv[iPort][iChn].stFrame[i].enVideoFormat = HI_UNF_FORMAT_YUV_BUTT;
                g_ViDrv[iPort][iChn].stFrame[i].bProgressive = HI_TRUE;
                g_ViDrv[iPort][iChn].stFrame[i].enFieldMode = HI_UNF_VIDEO_FIELD_ALL;
                g_ViDrv[iPort][iChn].stFrame[i].bTopFieldFirst = HI_FALSE;
                g_ViDrv[iPort][iChn].stFrame[i].enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_NONE;
                g_ViDrv[iPort][iChn].stFrame[i].u32Circumrotate   = 0;
                g_ViDrv[iPort][iChn].stFrame[i].bVerticalMirror   = HI_FALSE;
                g_ViDrv[iPort][iChn].stFrame[i].bHorizontalMirror = HI_FALSE;
                g_ViDrv[iPort][iChn].stFrame[i].u32DisplayWidth   = 0;
                g_ViDrv[iPort][iChn].stFrame[i].u32DisplayHeight  = 0;
                g_ViDrv[iPort][iChn].stFrame[i].u32DisplayCenterX = 0;
                g_ViDrv[iPort][iChn].stFrame[i].u32DisplayCenterY = 0;
                g_ViDrv[iPort][iChn].stFrame[i].u32ErrorLevel = 0;
                memset(&g_ViDrv[iPort][iChn].stFrame[i].stVideoFrameAddr, 0, 2 * sizeof(HI_UNF_VIDEO_FRAME_ADDR_S));
                memset(&g_ViDrv[iPort][iChn].stFrame[i].u32Private, 0, 64 * sizeof(HI_U32));
            }

            for (i = 0; i < VI_MAX_VPSS_PORT; i++)
            {
                g_ViDrv[iPort][iChn].stPortParam[i].hDst  = HI_INVALID_HANDLE;
                g_ViDrv[iPort][iChn].stPortParam[i].hPort = HI_INVALID_HANDLE;
            }
        }
    }
}

HI_VOID VI_DRV_DeInitParam(struct file *file)
{
    HI_U32 iPort, iChn;
    HI_U32 i;

    for (iPort = 0; iPort < MAX_VI_PORT; iPort++)
    {
        for (iChn = 0; iChn < MAX_VI_CHN; iChn++)
        {
            if ((file == g_ViDrv[iPort][iChn].fileOpened)
                && (HI_INVALID_HANDLE != g_ViDrv[iPort][iChn].hVi))
            {
                (void)VI_DRV_DestroyForce(g_ViDrv[iPort][iChn].hVi);

                memset(&g_ViDrv[iPort][iChn], 0, sizeof(VI_DRV_S));
                g_ViDrv[iPort][iChn].hVi   = HI_INVALID_HANDLE;
                g_ViDrv[iPort][iChn].hVpss = HI_INVALID_HANDLE;

                for (i = 0; i < VI_MAX_VPSS_PORT; i++)
                {
                    g_ViDrv[iPort][iChn].stPortParam[i].hDst  = HI_INVALID_HANDLE;
                    g_ViDrv[iPort][iChn].stPortParam[i].hPort = HI_INVALID_HANDLE;
                }
            }
        }
    }
}

HI_S32 HI_DRV_VI_Create(VI_CREATE_S *pstCreate, HI_VOID *file)
{
    HI_S32 Ret = HI_FAILURE;
    VI_FB_ATTR_S stBufAttr;
    HI_U32 u32Width, u32Height;
    HI_U32 u32Chn;
    HI_U32 i;

    VI_CHECK_NULL_PTR(pstCreate);
    VI_CHECK_NULL_PTR(file);

    if ((HI_FALSE == pstCreate->stViAttr.bVirtual) && (HI_TRUE == bRealViOpened))
    {
        HI_ERR_VI("REAL VI only support ONE instance!\n");
        return HI_ERR_VI_NOT_SUPPORT;
    }

    for (i = 0; i < MAX_VI_CHN; i++)
    {
        if (HI_INVALID_HANDLE == g_ViDrv[pstCreate->enPort][i].hVi)
        {
            break;
        }
    }

    if (MAX_VI_CHN == i)
    {
        HI_ERR_VI("create vi failed, max channel number reached!\n");
        return HI_ERR_VI_NOT_SUPPORT;
    }

    u32Chn = i;
    pstCreate->hVi = ((HI_ID_VI << 16) | (pstCreate->enPort << 8) | u32Chn);

    Ret = VI_DRV_ProcAdd(pstCreate->hVi);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_VI("VI_ProcAdd failed, ret = 0x%08x\n", Ret);
        goto ERR0;
    }

    Ret = VI_Vpss_Create(pstCreate->hVi, &(pstCreate->hVpss));
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_VI("VI_Vpss_Create failed, ret = 0x%08x\n", Ret);
        goto ERR1;
    }

    memset(&stBufAttr, 0, sizeof(VI_FB_ATTR_S));
    stBufAttr.u32BufNum = pstCreate->stViAttr.u32BufNum;
    if ((HI_FALSE == pstCreate->stViAttr.bVirtual) && (HI_UNF_VI_BUF_ALLOC == pstCreate->stViAttr.enBufMgmtMode))
    {
        stBufAttr.enBufMode = VI_FB_MODE_ALLOC;
        u32Width  = (HI_U32)pstCreate->stViAttr.stInputRect.s32Width;
        u32Height = (HI_U32)pstCreate->stViAttr.stInputRect.s32Height;
        switch (pstCreate->stViAttr.enVideoFormat)
        {
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
            stBufAttr.u32BufSize = pstCreate->stViAttr.u32BufNum * u32Width * u32Height * 2;
            break;
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
            stBufAttr.u32BufSize = pstCreate->stViAttr.u32BufNum * u32Width * u32Height * 3 / 2;
            break;
        default:
            HI_ERR_VI("invalid vi store format %d\n", pstCreate->stViAttr.enVideoFormat);
            goto ERR2;
        }

        Ret = VI_DRV_BufInit(&g_ViDrv[pstCreate->enPort][u32Chn].stFrameBuf, &stBufAttr);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_VI("VI_DRV_BufInit failed.\n");
            goto ERR2;
        }

        for (i = 0; i < pstCreate->stViAttr.u32BufNum; i++)
        {
            g_ViDrv[pstCreate->enPort][u32Chn].stFrame[i].stVideoFrameAddr[0].u32YAddr = stBufAttr.u32PhyAddr[i];
        }
    }
    else if (HI_TRUE == pstCreate->stViAttr.bVirtual)
    {
        stBufAttr.enBufMode = VI_FB_MODE_VIRTUAL;
        Ret = VI_DRV_BufInit(&g_ViDrv[pstCreate->enPort][u32Chn].stFrameBuf, &stBufAttr);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_VI("VI_DRV_BufInit failed.\n");
            goto ERR2;
        }
    }

    VI_UtilsInitEvent(&g_ViDrv[pstCreate->enPort][u32Chn].waitFrame, 0);

    if (HI_FALSE == pstCreate->stViAttr.bVirtual)
    {
        Ret = VI_PHY_Create(pstCreate->hVi, &(pstCreate->stViAttr));
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_VI("VI_PHY_Create failed.\n");
            goto ERR2;
        }

        bRealViOpened = HI_TRUE;
    }

    g_ViDrv[pstCreate->enPort][u32Chn].hVi   = pstCreate->hVi;
    g_ViDrv[pstCreate->enPort][u32Chn].hVpss = pstCreate->hVpss;
    g_ViDrv[pstCreate->enPort][u32Chn].fileOpened = file;
    memcpy(&g_ViDrv[pstCreate->enPort][u32Chn].stAttr, &(pstCreate->stViAttr), sizeof(HI_UNF_VI_ATTR_S));

    return HI_SUCCESS;

ERR2:
    (void)VI_Vpss_Destroy(pstCreate->hVi, pstCreate->hVpss);
ERR1:
    (void)VI_DRV_ProcDel(pstCreate->hVi);
ERR0:
    return HI_FAILURE;
}

HI_S32 HI_DRV_VI_Destroy(HI_HANDLE hVi)
{
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_U32 j;
    VI_FB_ATTR_S stFbAttr;

    GET_PORT_CHN(hVi, enPort, u32Chn);

    if (HI_FALSE == g_ViDrv[enPort][u32Chn].stAttr.bVirtual)
    {
        VI_PHY_Destroy(hVi);
        bRealViOpened = HI_FALSE;
    }

    (void)VI_Vpss_Destroy(hVi, g_ViDrv[enPort][u32Chn].hVpss);

    memset(&stFbAttr, 0, sizeof(VI_FB_ATTR_S));
    if (HI_FALSE == g_ViDrv[enPort][u32Chn].stAttr.bVirtual)
    {
        if (HI_UNF_VI_BUF_ALLOC == g_ViDrv[enPort][u32Chn].stAttr.enBufMgmtMode)
        {
            stFbAttr.enBufMode = VI_FB_MODE_ALLOC;
        }
        else
        {
            stFbAttr.enBufMode = VI_FB_MODE_MMAP;
        }
    }
    else
    {
        stFbAttr.enBufMode = VI_FB_MODE_VIRTUAL;
    }

    VI_DRV_BufDeInit(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stFbAttr);
    (void)VI_DRV_ProcDel(hVi);

    memset(&g_ViDrv[enPort][u32Chn], 0, sizeof(VI_DRV_S));
    g_ViDrv[enPort][u32Chn].hVi   = HI_INVALID_HANDLE;
    g_ViDrv[enPort][u32Chn].hVpss = HI_INVALID_HANDLE;
    for (j = 0; j < VI_MAX_VPSS_PORT; j++)
    {
        g_ViDrv[enPort][u32Chn].stPortParam[j].hDst  = HI_INVALID_HANDLE;
        g_ViDrv[enPort][u32Chn].stPortParam[j].hPort = HI_INVALID_HANDLE;
    }

    return HI_SUCCESS;
}

HI_S32 HI_DRV_VI_SetAttr(HI_HANDLE hVi, HI_UNF_VI_ATTR_S *pstAttr)
{
    HI_S32 Ret;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    VI_FB_ATTR_S stBufAttr;
    HI_U32 u32Width, u32Height;
    HI_U32 i;

    VI_CHECK_NULL_PTR(pstAttr);
    GET_PORT_CHN(hVi, enPort, u32Chn);

    /* rebuild VI buffer */
    memset(&stBufAttr, 0, sizeof(VI_FB_ATTR_S));
    if (HI_FALSE == g_ViDrv[enPort][u32Chn].stAttr.bVirtual)
    {
        if (HI_UNF_VI_BUF_ALLOC == g_ViDrv[enPort][u32Chn].stAttr.enBufMgmtMode)
        {
            stBufAttr.enBufMode = VI_FB_MODE_ALLOC;
        }
        else
        {
            stBufAttr.enBufMode = VI_FB_MODE_MMAP;
        }
    }
    else
    {
        stBufAttr.enBufMode = VI_FB_MODE_VIRTUAL;
    }

    VI_DRV_BufDeInit(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stBufAttr);

    stBufAttr.u32BufNum = pstAttr->u32BufNum;
    if ((HI_FALSE == pstAttr->bVirtual) && (HI_UNF_VI_BUF_ALLOC == pstAttr->enBufMgmtMode))
    {
        stBufAttr.enBufMode = VI_FB_MODE_ALLOC;
        u32Width  = (HI_U32)pstAttr->stInputRect.s32Width;
        u32Height = (HI_U32)pstAttr->stInputRect.s32Height;
        switch (pstAttr->enVideoFormat)
        {
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
            stBufAttr.u32BufSize = pstAttr->u32BufNum * u32Width * u32Height * 2;
            break;
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
            stBufAttr.u32BufSize = pstAttr->u32BufNum * u32Width * u32Height * 3 / 2;
            break;
        default:
            HI_ERR_VI("invalid vi store format %d\n", pstAttr->enVideoFormat);
            return HI_ERR_VI_INVALID_PARA;
        }

        Ret = VI_DRV_BufInit(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stBufAttr);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_VI("VI_DRV_BufInit failed.\n");
            return HI_ERR_VI_CHN_INIT_BUF_ERR;
        }

        for (i = 0; i < pstAttr->u32BufNum; i++)
        {
            g_ViDrv[enPort][u32Chn].stFrame[i].stVideoFrameAddr[0].u32YAddr = stBufAttr.u32PhyAddr[i];
        }
    }
    else if (HI_TRUE == pstAttr->bVirtual)
    {
        stBufAttr.enBufMode = VI_FB_MODE_VIRTUAL;
        Ret = VI_DRV_BufInit(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stBufAttr);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_VI("VI_DRV_BufInit failed.\n");
            return HI_ERR_VI_CHN_INIT_BUF_ERR;
        }
    }

    /* transform between real and virtual VI */
    if ((HI_TRUE == g_ViDrv[enPort][u32Chn].stAttr.bVirtual)
        && (HI_FALSE == pstAttr->bVirtual))
    {
        Ret = VI_PHY_Create(hVi, pstAttr);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_VI("VI_PHY_Create failed.\n");
            return HI_FAILURE;
        }

        bRealViOpened = HI_TRUE;
    }
    else if ((HI_FALSE == g_ViDrv[enPort][u32Chn].stAttr.bVirtual)
             && (HI_TRUE == pstAttr->bVirtual))
    {
        VI_PHY_Destroy(hVi);
        bRealViOpened = HI_FALSE;
    }

    memcpy(&g_ViDrv[enPort][u32Chn].stAttr, pstAttr, sizeof(HI_UNF_VI_ATTR_S));
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VI_SetExtBuf(HI_HANDLE hVi, HI_UNF_VI_BUFFER_ATTR_S *pstBufAttr)
{
    VI_FB_ATTR_S stBufAttr;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_S32 Ret;
    HI_U32 i;

    VI_CHECK_NULL_PTR(pstBufAttr);
    GET_PORT_CHN(hVi, enPort, u32Chn);

    memset(&stBufAttr, 0, sizeof(VI_FB_ATTR_S));
    stBufAttr.enBufMode = VI_FB_MODE_MMAP;
    stBufAttr.u32BufNum = pstBufAttr->u32BufNum;
    for (i = 0; i < stBufAttr.u32BufNum; i++)
    {
        stBufAttr.u32PhyAddr[i] = pstBufAttr->u32PhyAddr[i];
    }

    Ret = VI_DRV_BufInit(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stBufAttr);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("VI_DRV_BufInit failed, ret = 0x%08x\n", Ret);
        return Ret;
    }

    for (i = 0; i < stBufAttr.u32BufNum; i++)
    {
        g_ViDrv[enPort][u32Chn].stFrame[i].stVideoFrameAddr[0].u32YAddr = pstBufAttr->u32PhyAddr[i];
    }

    return HI_SUCCESS;
}

HI_S32 HI_DRV_VI_CreateVpssPort(HI_HANDLE hVi, VI_VPSS_PORT_S *pstVpssPort)
{
    HI_S32 Ret = HI_FAILURE;
    VPSS_EXPORT_FUNC_S *pVpssFunc = HI_NULL;
    HI_DRV_VPSS_PORT_CFG_S stVpssPortCfg;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_U32 i;

    //    unsigned long flag;
    VI_CHECK_NULL_PTR(pstVpssPort);
    GET_PORT_CHN(hVi, enPort, u32Chn);

    pVpssFunc = g_ViDrv[enPort][u32Chn].pVpssFunc;

    for (i = 0; i < VI_MAX_VPSS_PORT; i++)
    {
        if (HI_INVALID_HANDLE == g_ViDrv[enPort][u32Chn].stPortParam[i].hPort)
        {
            break;
        }
    }

    if (i == VI_MAX_VPSS_PORT)
    {
        HI_ERR_VI("vi create vpss port failed, max number limited.\n");
        return HI_FAILURE;
    }

    Ret = pVpssFunc->pfnVpssGetDefaultPortCfg(&stVpssPortCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssGetDefaultPortCfg failed, ret = 0x%08x\n", Ret);
        return Ret;
    }

    if (HI_ID_VENC == ((pstVpssPort->stPortParam.hDst >> 16) & 0xff))
    {
        stVpssPortCfg.u32MaxFrameRate = 30;
    }

    if (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == g_ViDrv[enPort][u32Chn].stAttr.enVideoFormat)
    {
        stVpssPortCfg.stBufListCfg.u32BufSize   = stVpssPortCfg.s32OutputHeight * stVpssPortCfg.s32OutputWidth * 3 / 2;
    }
    else if (HI_UNF_FORMAT_YUV_SEMIPLANAR_422 == g_ViDrv[enPort][u32Chn].stAttr.enVideoFormat)
    {
        stVpssPortCfg.stBufListCfg.u32BufSize   = stVpssPortCfg.s32OutputHeight * stVpssPortCfg.s32OutputWidth * 2;
    }

    stVpssPortCfg.stBufListCfg.u32BufStride = stVpssPortCfg.s32OutputWidth;

    Ret = pVpssFunc->pfnVpssCreatePort(pstVpssPort->hVpss, &stVpssPortCfg, &pstVpssPort->stPortParam.hPort);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssCreatePort failed, ret = 0x%08x\n", Ret);
        return Ret;
    }

    Ret = pVpssFunc->pfnVpssEnablePort(pstVpssPort->stPortParam.hPort, HI_TRUE);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("pfnVpssEnablePort failed, ret = 0x%08x\n", Ret);
        pVpssFunc->pfnVpssDestroyPort(pstVpssPort->hVpss);
        return Ret;
    }

    //VI_UtilsLock(g_ViDrv[enPort][u32Chn].stThread.pLock, &flag);

    pstVpssPort->stPortParam.bEnable = HI_TRUE;

    //VI_UtilsUnlock(g_ViDrv[enPort][u32Chn].stThread.pLock, &flag);
    pstVpssPort->stPortParam.pfRlsImage = VI_DRV_ReleaseImage;
    pstVpssPort->stPortParam.pfChangeWinInfo  = VI_DRV_ChangeWinInfo;
    pstVpssPort->stPortParam.pfChangeVencInfo = VI_DRV_ChangeVencInfo;

    memcpy((void *)&g_ViDrv[enPort][u32Chn].stPortParam[i], (void *)&pstVpssPort->stPortParam,
           sizeof(VI_VPSS_PORT_PARAM_S));
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VI_DestroyVpssPort(HI_HANDLE hVi, VI_VPSS_PORT_S *pstVpssPort)
{
    HI_S32 Ret = HI_FAILURE;
    VPSS_EXPORT_FUNC_S *pVpssFunc = HI_NULL;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_U32 i;

    //    unsigned long flag;
    VI_CHECK_NULL_PTR(pstVpssPort);
    GET_PORT_CHN(hVi, enPort, u32Chn);

    pVpssFunc = g_ViDrv[enPort][u32Chn].pVpssFunc;

    for (i = 0; i < VI_MAX_VPSS_PORT; i++)
    {
        if (pstVpssPort->stPortParam.hDst == g_ViDrv[enPort][u32Chn].stPortParam[i].hDst)
        {
            break;
        }
    }

    if (i == VI_MAX_VPSS_PORT)
    {
        HI_ERR_VI("Cannot find vpss port\n");
        return HI_FAILURE;
    }

    Ret = pVpssFunc->pfnVpssEnablePort(g_ViDrv[enPort][u32Chn].stPortParam[i].hPort, HI_FALSE);
    if (HI_SUCCESS != Ret)
    {
        HI_WARN_VI("pfnVpssEnablePort failed, ret = 0x%08x\n", Ret);
        return Ret;
    }

    Ret = pVpssFunc->pfnVpssDestroyPort(g_ViDrv[enPort][u32Chn].stPortParam[i].hPort);
    if (HI_SUCCESS != Ret)
    {
        HI_WARN_VI("pfnVpssDestroyPort failed, ret = 0x%08x\n", Ret);
        return Ret;
    }

    g_ViDrv[enPort][u32Chn].stPortParam[i].hPort = HI_INVALID_HANDLE;
    g_ViDrv[enPort][u32Chn].stPortParam[i].hDst = HI_INVALID_HANDLE;

    //VI_UtilsLock(g_ViDrv[enPort][u32Chn].stThread.pLock, &flag);
    g_ViDrv[enPort][u32Chn].stPortParam[i].bEnable = HI_FALSE;

    //VI_UtilsUnlock(g_ViDrv[enPort][u32Chn].stThread.pLock, &flag);

    g_ViDrv[enPort][u32Chn].stPortParam[i].pfRlsImage = HI_NULL;
    g_ViDrv[enPort][u32Chn].stPortParam[i].pfChangeWinInfo  = HI_NULL;
    g_ViDrv[enPort][u32Chn].stPortParam[i].pfChangeVencInfo = HI_NULL;

    return HI_SUCCESS;
}

HI_S32 HI_DRV_VI_Start(HI_HANDLE hVi)
{
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;

    GET_PORT_CHN(hVi, enPort, u32Chn);

    if (HI_FALSE == g_ViDrv[enPort][u32Chn].stAttr.bVirtual)
    {
        VI_DRV_SetPtEn(enPort, HI_TRUE);
        VI_DRV_SetChEn(VI_PHY_CHN0, HI_TRUE);
    }

    g_ViDrv[enPort][u32Chn].stThread.pViThreadInst =
        kthread_create(VI_DRV_FrameProcessThread, &g_ViDrv[enPort][u32Chn], "HI_VI");
    if (IS_ERR(g_ViDrv[enPort][u32Chn].stThread.pViThreadInst) < 0)
    {
        HI_ERR_VI("create vi thread failed!\n");
        return HI_FAILURE;
    }

    wake_up_process(g_ViDrv[enPort][u32Chn].stThread.pViThreadInst);

    g_ViDrv[enPort][u32Chn].bStarted = HI_TRUE;
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VI_Stop(HI_HANDLE hVi)
{
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;

    GET_PORT_CHN(hVi, enPort, u32Chn);

    if (g_ViDrv[enPort][u32Chn].stThread.pViThreadInst)
    {
        kthread_stop(g_ViDrv[enPort][u32Chn].stThread.pViThreadInst);
        g_ViDrv[enPort][u32Chn].stThread.pViThreadInst = HI_NULL;
    }

    if (HI_FALSE == g_ViDrv[enPort][u32Chn].stAttr.bVirtual)
    {
        VI_DRV_SetChEn(VI_PHY_CHN0, HI_FALSE);
    }

    g_ViDrv[enPort][u32Chn].bStarted = HI_FALSE;
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VI_DequeueFrame(HI_HANDLE hVi, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame)
{
    HI_S32 Ret;
    VI_FB_S stFbAttr;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_U32 i;

    VI_CHECK_NULL_PTR(pstFrame);
    GET_PORT_CHN(hVi, enPort, u32Chn);

    g_ViDrv[enPort][u32Chn].stStat.DequeueTry++;

    Ret = VI_DRV_BufGet(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stFbAttr);
    if (HI_SUCCESS != Ret)
    {
        HI_WARN_VI("VI_DRV_BufGet failed\n");
        return HI_ERR_VI_BUF_EMPTY;
    }

    for (i = 0; i < g_ViDrv[enPort][u32Chn].stAttr.u32BufNum; i++)
    {
        if (g_ViDrv[enPort][u32Chn].stFrame[i].stVideoFrameAddr[0].u32YAddr == stFbAttr.u32PhysAddr)
        {
            memcpy(pstFrame, &g_ViDrv[enPort][u32Chn].stFrame[i], sizeof(HI_UNF_VIDEO_FRAME_INFO_S));
            break;
        }
    }

    if (i == g_ViDrv[enPort][u32Chn].stAttr.u32BufNum)
    {
        HI_ERR_VI("cannot find frame\n");
        return HI_FAILURE;
    }

    g_ViDrv[enPort][u32Chn].stStat.DequeueOK++;

    HI_INFO_VI("DQ from VI OK, index[%d], phyaddr[0x%08x]\n", stFbAttr.u32Index, stFbAttr.u32PhysAddr);

    return HI_SUCCESS;
}

HI_S32 HI_DRV_VI_QueueFrame(HI_HANDLE hVi, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame)
{
    HI_S32 Ret;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_U32 u32FrameIndex;
    HI_U32 u32FrameAddr;

    VI_CHECK_NULL_PTR(pstFrame);
    GET_PORT_CHN(hVi, enPort, u32Chn);

    g_ViDrv[enPort][u32Chn].stStat.QueueTry++;

    u32FrameAddr = pstFrame->stVideoFrameAddr[0].u32YAddr;
    Ret = VI_DRV_BufPut(&g_ViDrv[enPort][u32Chn].stFrameBuf, u32FrameAddr);
    if (HI_SUCCESS != Ret)
    {
        HI_WARN_VI("VI_DRV_BufPut failed\n");
        return HI_FAILURE;
    }

    /* pack PTS when Q frame into VI */
    pstFrame->u32Pts = VI_UtilsGetPTS();
    pstFrame->u32SrcPts = pstFrame->u32Pts;
    u32FrameIndex = g_ViDrv[enPort][u32Chn].u32NextIndex;
    memcpy(&g_ViDrv[enPort][u32Chn].stFrame[u32FrameIndex], pstFrame, sizeof(HI_UNF_VIDEO_FRAME_INFO_S));
    g_ViDrv[enPort][u32Chn].u32NextIndex++;
    if (g_ViDrv[enPort][u32Chn].u32NextIndex == g_ViDrv[enPort][u32Chn].stAttr.u32BufNum)
    {
        g_ViDrv[enPort][u32Chn].u32NextIndex = 0;
    }

    g_ViDrv[enPort][u32Chn].stStat.QueueOK++;

    HI_INFO_VI("Q to VI OK, index[%d], phyaddr[0x%08x]\n", u32FrameIndex, u32FrameAddr);

    return HI_SUCCESS;
}

HI_S32 HI_DRV_VI_UsrAcquireFrame(HI_HANDLE hVi, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame, HI_U32 u32TimeoutMs)
{
    VI_FB_S stFbAttr;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_S32 Ret;
    HI_U32 i;

    VI_CHECK_NULL_PTR(pstFrame);
    GET_PORT_CHN(hVi, enPort, u32Chn);

    g_ViDrv[enPort][u32Chn].stStat.UsrAcqTry++;

    Ret = VI_DRV_BufAdd(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stFbAttr);
    if (HI_SUCCESS != Ret)
    {
        if (0 == u32TimeoutMs)
        {
            HI_WARN_VI("VI_DRV_BufAdd failed\n");
            return HI_ERR_VI_BUF_EMPTY;
        }
        else
        {
            Ret = VI_UtilsWaitEvent(&g_ViDrv[enPort][u32Chn].waitFrame, u32TimeoutMs);
            if (HI_FAILURE == Ret)
            {
                return HI_ERR_VI_BUF_EMPTY;
            }

            Ret = VI_DRV_BufAdd(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stFbAttr);
            if (HI_SUCCESS != Ret)
            {
                HI_WARN_VI("VI_DRV_BufAdd failed\n");
                return HI_ERR_VI_BUF_EMPTY;
            }
        }
    }

    for (i = 0; i < g_ViDrv[enPort][u32Chn].stAttr.u32BufNum; i++)
    {
        if (stFbAttr.u32PhysAddr == g_ViDrv[enPort][u32Chn].stFrame[i].stVideoFrameAddr[0].u32YAddr)
        {
            memcpy(pstFrame, &g_ViDrv[enPort][u32Chn].stFrame[i], sizeof(HI_UNF_VIDEO_FRAME_INFO_S));
            break;
        }
    }

    if (i == g_ViDrv[enPort][u32Chn].stAttr.u32BufNum)
    {
        HI_ERR_VI("cannot find frame in VI\n");
        return HI_FAILURE;
    }

    g_ViDrv[enPort][u32Chn].stStat.UsrAcqOK++;

    return HI_SUCCESS;
}

HI_S32 HI_DRV_VI_UsrReleaseFrame(HI_HANDLE hVi, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame)
{
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_S32 Ret;
    HI_U32 u32PhyAddr;

    VI_CHECK_NULL_PTR(pstFrame);
    GET_PORT_CHN(hVi, enPort, u32Chn);

    g_ViDrv[enPort][u32Chn].stStat.UsrRlsTry++;

    u32PhyAddr = pstFrame->stVideoFrameAddr[0].u32YAddr;
    Ret = VI_DRV_BufSub(&g_ViDrv[enPort][u32Chn].stFrameBuf, u32PhyAddr);
    if (HI_SUCCESS != Ret)
    {
        HI_WARN_VI("VI_DRV_BufSub failed\n");
        return HI_FAILURE;
    }

    g_ViDrv[enPort][u32Chn].stStat.UsrRlsOK++;

    return HI_SUCCESS;
}
