/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_pvr_play_ctrl.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2008/04/14
  Description   : PLAY module
  History       :
  1.Date        : 2008/04/14
    Author      : q46153
    Modification: Created file

******************************************************************************/

#include <malloc.h>
#include <time.h>
#include <sys/time.h>
#include <pthread.h>
#include <signal.h>

#include "hi_type.h"

#include "hi_mpi_pvr.h"
#include "hi_mpi_avplay.h"

#include "pvr_debug.h"
#include "hi_pvr_play_ctrl.h"
#include "hi_pvr_index.h"
#include "hi_pvr_rec_ctrl.h"
#include "hi_pvr_intf.h"
#include "hi_pvr_priv.h"
#include "hi_pvr_smooth_ctrl.h"
#include "hi_mpi_demux.h"
#include "hi_drv_pvr.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* End of #ifdef __cplusplus */

#define TIMESHIFT_INVALID_CHN           0XFF
#define PVR_PLAY_MAX_SEND_BUF_SIZE      (256*1024)

#define PVR_DMX_TS_BUFFER_GAP           0x100   /*DMX_TS_BUFFER_GAP*/

extern HI_S32   g_s32PvrFd;      /*PVR module file description */
extern char api_pathname_pvr[];

/* initial flag for play module                                             */
STATIC PVR_PLAY_COMM_S g_stPlayInit;

/* all information of play channel                                          */
STATIC PVR_PLAY_CHN_S g_stPvrPlayChns[PVR_PLAY_MAX_CHN_NUM];
#ifdef PVR_PROC_SUPPORT
static HI_PROC_ENTRY_S g_stPvrPlayProcEntry;
#endif
static FILE *g_pvrfpSend = NULL; /* handle of file */
static HI_BOOL g_bPlayTimerInitFlag = HI_FALSE;
static timer_t g_stPlayTimer;
extern HI_S32 HI_MPI_VO_GetWindowDelay(HI_HANDLE hWindow, HI_DRV_WIN_PLAY_INFO_S *pDelay);


#define PVR_GET_STATE_BY_SPEED(state, speed) \
do {\
    switch (speed)\
    {\
        case HI_UNF_PVR_PLAY_SPEED_NORMAL           :\
            state = HI_UNF_PVR_PLAY_STATE_PLAY;\
            break;\
        case HI_UNF_PVR_PLAY_SPEED_2X_FAST_FORWARD  :\
        case HI_UNF_PVR_PLAY_SPEED_4X_FAST_FORWARD  :\
        case HI_UNF_PVR_PLAY_SPEED_8X_FAST_FORWARD  :\
        case HI_UNF_PVR_PLAY_SPEED_16X_FAST_FORWARD :\
        case HI_UNF_PVR_PLAY_SPEED_32X_FAST_FORWARD :\
        case HI_UNF_PVR_PLAY_SPEED_64X_FAST_FORWARD :\
            state = HI_UNF_PVR_PLAY_STATE_FF;\
            break;\
        case HI_UNF_PVR_PLAY_SPEED_1X_FAST_BACKWARD :\
        case HI_UNF_PVR_PLAY_SPEED_2X_FAST_BACKWARD :\
        case HI_UNF_PVR_PLAY_SPEED_4X_FAST_BACKWARD :\
        case HI_UNF_PVR_PLAY_SPEED_8X_FAST_BACKWARD :\
        case HI_UNF_PVR_PLAY_SPEED_16X_FAST_BACKWARD:\
        case HI_UNF_PVR_PLAY_SPEED_32X_FAST_BACKWARD:\
        case HI_UNF_PVR_PLAY_SPEED_64X_FAST_BACKWARD:\
            state = HI_UNF_PVR_PLAY_STATE_FB;\
            break;\
        case HI_UNF_PVR_PLAY_SPEED_2X_SLOW_FORWARD  :\
        case HI_UNF_PVR_PLAY_SPEED_4X_SLOW_FORWARD  :\
        case HI_UNF_PVR_PLAY_SPEED_8X_SLOW_FORWARD  :\
        case HI_UNF_PVR_PLAY_SPEED_16X_SLOW_FORWARD :\
        case HI_UNF_PVR_PLAY_SPEED_32X_SLOW_FORWARD :\
		case HI_UNF_PVR_PLAY_SPEED_64X_SLOW_FORWARD :\
            state = HI_UNF_PVR_PLAY_STATE_SF;\
            break;\
        case HI_UNF_PVR_PLAY_SPEED_2X_SLOW_BACKWARD :\
        case HI_UNF_PVR_PLAY_SPEED_4X_SLOW_BACKWARD :\
        case HI_UNF_PVR_PLAY_SPEED_8X_SLOW_BACKWARD :\
        case HI_UNF_PVR_PLAY_SPEED_16X_SLOW_BACKWARD:\
        case HI_UNF_PVR_PLAY_SPEED_32X_SLOW_BACKWARD:\
		case HI_UNF_PVR_PLAY_SPEED_64X_SLOW_BACKWARD:\
            state = HI_UNF_PVR_PLAY_STATE_INVALID;\
            break;\
        default:\
            state = HI_UNF_PVR_PLAY_STATE_INVALID;\
            break;\
    }\
}while(0)

/*play direction whether it is forward or not: current or before pause the state is play, fast forward, slow forward or step forward */
#define PVR_IS_PLAY_FORWARD(StateNow, StateLast)\
         (  (HI_UNF_PVR_PLAY_STATE_PLAY == StateNow) \
         || (HI_UNF_PVR_PLAY_STATE_FF == StateNow) \
         || (HI_UNF_PVR_PLAY_STATE_SF == StateNow) \
         || (HI_UNF_PVR_PLAY_STATE_STEPF == StateNow)\
         || ((HI_UNF_PVR_PLAY_STATE_PAUSE == StateNow) \
             && ( (HI_UNF_PVR_PLAY_STATE_PLAY == StateLast) \
               || (HI_UNF_PVR_PLAY_STATE_FF == StateLast) \
               || (HI_UNF_PVR_PLAY_STATE_SF == StateLast) \
               || (HI_UNF_PVR_PLAY_STATE_STEPF == StateLast) \
          )))

/*play direction whether it is backward or not: current or before puase the state is fast rewind or step rewind */
#define PVR_IS_PLAY_BACKWARD(StateNow, StateLast)\
         (  (HI_UNF_PVR_PLAY_STATE_FB == StateNow) \
         || (HI_UNF_PVR_PLAY_STATE_STEPB == StateNow)\
         || ((HI_UNF_PVR_PLAY_STATE_PAUSE == StateNow) \
             && ( (HI_UNF_PVR_PLAY_STATE_FB == StateLast) \
               || (HI_UNF_PVR_PLAY_STATE_STEPB == StateLast) \
          )))


static void PVRPlayCalcTime(union sigval unSig)
{
    HI_U32 i = 0;
    HI_S32 s32SeedRatio = 0;
    PVR_PLAY_CHN_S *pChnAttr;

    unSig = unSig;

    for(i = 0; i < PVR_PLAY_MAX_CHN_NUM; i++)
    {
        pChnAttr = &g_stPvrPlayChns[i];

        if ((HI_UNF_PVR_PLAY_STATE_PAUSE == pChnAttr->enState) ||
            (HI_UNF_PVR_PLAY_STATE_STEPF == pChnAttr->enState) ||
            (pChnAttr->bEndOfFile) ||  
            (pChnAttr->bTsBufReset == HI_TRUE) ||
            pChnAttr->bQuickUpdateStatus)
        {
            usleep(1000);
            continue;
        }
        
        if (!(HI_UNF_PVR_PLAY_STATE_STOP == pChnAttr->enState
          || HI_UNF_PVR_PLAY_STATE_INVALID == pChnAttr->enState))
        {
            /* normal or fast mode */
            if (abs(pChnAttr->enSpeed) >= HI_UNF_PVR_PLAY_SPEED_NORMAL)
            {
                s32SeedRatio = pChnAttr->enSpeed/HI_UNF_PVR_PLAY_SPEED_NORMAL;
                pChnAttr->u32CurPlayTimeMs += (s32SeedRatio*((HI_S32)PVR_TIME_CTRL_TIMEBASE_NS))/1000000;
            }
            else/* slow mode */
            {
                s32SeedRatio = (HI_S32)HI_UNF_PVR_PLAY_SPEED_NORMAL/pChnAttr->enSpeed;
                pChnAttr->u32CurPlayTimeMs += (((HI_S32)PVR_TIME_CTRL_TIMEBASE_NS)/s32SeedRatio)/1000000;
            }
        }

        if((HI_S32)pChnAttr->u32CurPlayTimeMs < 0)
        {
            pChnAttr->u32CurPlayTimeMs = 0;
        }
    }
}

#ifdef PVR_PROC_SUPPORT
static HI_S32 PVRPlayShowProc(HI_PROC_SHOW_BUFFER_S * pstBuf, HI_VOID *pPrivData)
{    
    HI_U32 i=0;
    HI_U32 u32VidType=0;
    PVR_PLAY_CHN_S *pChnAttr = g_stPvrPlayChns;
    HI_S8 pStreamType[][32] = {"MPEG2", "MPEG4 DIVX4 DIVX5", "AVS", "H263", "H264",
                             "REAL8", "REAL9", "VC-1", "VP6", "VP6F", "VP6A", "MJPEG",
                             "SORENSON SPARK", "DIVX3", "RAW", "JPEG", "VP8", "MSMPEG4V1",
                             "MSMPEG4V2", "MSVIDEO1", "WMV1", "WMV2", "RV10", "RV20",
                             "SVQ1", "SVQ3", "H261", "VP3", "VP5", "CINEPAK", "INDEO2",
                             "INDEO3", "INDEO4", "INDEO5", "MJPEGB", "MVC", "HEVC", "DV", "INVALID"};
    HI_S8 pPlayStats[][16] = { "INVALID", "INIT", "PLAY", "PAUSE", "FF", "FB", "SF", "STEPF",
                             "STEPB", "STOP", "BUTT"};
    
    HI_PROC_Printf(pstBuf, "\n---------Hisilicon PVR Playing channel Info---------\n");

    for(i = 0; i < PVR_PLAY_MAX_CHN_NUM; i++)
    {
        if ((pChnAttr[i].enState != HI_UNF_PVR_PLAY_STATE_INVALID) &&
            (pChnAttr[i].enState != HI_UNF_PVR_PLAY_STATE_STOP) &&
            (pChnAttr[i].enState != HI_UNF_PVR_PLAY_STATE_BUTT))
        {
            u32VidType = PVR_Index_GetVtype(pChnAttr[i].IndexHandle)-100;
            u32VidType = (u32VidType > HI_UNF_VCODEC_TYPE_BUTT) ? HI_UNF_VCODEC_TYPE_BUTT : u32VidType;
        
            HI_PROC_Printf(pstBuf, "chan %d infomation\n", i);
            HI_PROC_Printf(pstBuf, "\tPlay filename     \t:%s\n", pChnAttr[i].stUserCfg.szFileName);
            HI_PROC_Printf(pstBuf, "\tStram type        \t:%s\n", pStreamType[u32VidType]);
            HI_PROC_Printf(pstBuf, "\tDemuxID           \t:%d\n", pChnAttr[i].u32chnID);
            HI_PROC_Printf(pstBuf, "\tTsBuffer handle   \t:%#x\n", pChnAttr[i].hTsBuffer);
            HI_PROC_Printf(pstBuf, "\tAvplay handle     \t:%#x\n", pChnAttr[i].hAvplay);
            HI_PROC_Printf(pstBuf, "\tCipher handle     \t:%#x\n", pChnAttr[i].hCipher);
            HI_PROC_Printf(pstBuf, "\tPlay State        \t:%s\n", pPlayStats[pChnAttr[i].enState]);
            HI_PROC_Printf(pstBuf, "\tPlay Speed        \t:%d\n", pChnAttr[i].enSpeed);
            HI_PROC_Printf(pstBuf, "\tStream Read Pos   \t:%#llx\n", pChnAttr[i].u64CurReadPos);
            HI_PROC_Printf(pstBuf, "\tIndex Start       \t:%d\n", pChnAttr[i].IndexHandle->stCycMgr.u32StartFrame);
            HI_PROC_Printf(pstBuf, "\tIndex End         \t:%d\n", pChnAttr[i].IndexHandle->stCycMgr.u32EndFrame);
            HI_PROC_Printf(pstBuf, "\tIndex Last        \t:%d\n", pChnAttr[i].IndexHandle->stCycMgr.u32LastFrame);
            HI_PROC_Printf(pstBuf, "\tIDR flag          \t:%d\n", pChnAttr[i].stVdecCtrlInfo.u32IDRFlag);
            HI_PROC_Printf(pstBuf, "\tB frame ref flag  \t:%d\n", pChnAttr[i].stVdecCtrlInfo.u32BFrmRefFlag);
            HI_PROC_Printf(pstBuf, "\tContinuous flag   \t:%d\n", pChnAttr[i].stVdecCtrlInfo.u32ContinuousFlag);
            HI_PROC_Printf(pstBuf, "\tDispOptimize flag \t:%d\n", pChnAttr[i].stVdecCtrlInfo.u32DispOptimizeFlag);
            HI_PROC_Printf(pstBuf, "\tStart Frm&GOP num \t:%d %d\n", (pChnAttr[i].u32GopNumOfStart)>>16, (pChnAttr[i].u32GopNumOfStart)&0xffff);
            HI_PROC_Printf(pstBuf, "\tTotal GOP num     \t:%d\n", pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopTotalNum);
            HI_PROC_Printf(pstBuf, "\tMax GOP size      \t:%d\n", pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32MaxGopSize);
            HI_PROC_Printf(pstBuf, "\tAverage GOP size  \t:%d\n", 
                           (pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32FrameTotalNum)/(pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopTotalNum));
            HI_PROC_Printf(pstBuf, "\tIndex GOP distr   \t:%d %d %d %d %d %d %d %d %d %d %d %d %d\n", 
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[0],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[1],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[2],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[3],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[4],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[5],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[6],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[7],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[8],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[9],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[10],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[11],
                           pChnAttr[i].IndexHandle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[12]);
            HI_PROC_Printf(pstBuf, "\tIndex Read Now    \t:%d\n", pChnAttr->IndexHandle->u32ReadFrame);

            if ((HI_UNF_PVR_PLAY_STATE_FF == pChnAttr[i].enState) || 
                (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr[i].enState))
            {
                HI_PROC_Printf(pstBuf, "\n");
                HI_PROC_Printf(pstBuf, "\t------ Trick play para ------\n");
                
                HI_PROC_Printf(pstBuf, "\tChip ID                   :%d\n", pChnAttr[i].stPlayProcInfo.u32ChipId);
                HI_PROC_Printf(pstBuf, "\tChip Ver                  :%x\n", pChnAttr[i].stPlayProcInfo.u32ChipVer);
                HI_PROC_Printf(pstBuf, "\tWidth                     :%d\n", pChnAttr[i].stPlayProcInfo.u32Width);
                HI_PROC_Printf(pstBuf, "\tHeigth                    :%d\n", pChnAttr[i].stPlayProcInfo.u32Heigth);
                HI_PROC_Printf(pstBuf, "\tFrame buffer              :%d\n", pChnAttr[i].u32FrmNum);                
                HI_PROC_Printf(pstBuf, "\tDecodec ablity            :%d\n", pChnAttr[i].stPlayProcInfo.u32DecAblity);
                HI_PROC_Printf(pstBuf, "\tOri frame rate            :%d\n", pChnAttr[i].stPlayProcInfo.u32OrigFrmRate);
                HI_PROC_Printf(pstBuf, "\tField flag                :%d\n", pChnAttr[i].stPlayProcInfo.u32FieldFlg);
                HI_PROC_Printf(pstBuf, "\tSetup frame rate int      :%d\n", pChnAttr[i].stPlayProcInfo.u32SetFrmRateInt);
                HI_PROC_Printf(pstBuf, "\tSetup frame rate dec      :%d\n", pChnAttr[i].stPlayProcInfo.u32SetFrmRateDec);
                if (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr[i].enState)
                {
                    HI_PROC_Printf(pstBuf, "\t-------- FB control --------\n");
                    HI_PROC_Printf(pstBuf, "\tOptimize flag             :%d\n", pChnAttr[i].stPlayProcInfo.stFBCtrlParameter.u32OptimizeFlg);
                    HI_PROC_Printf(pstBuf, "\tDisplay distance          :%d\n", pChnAttr[i].stPlayProcInfo.stFBCtrlParameter.u32DispDistance);
                    HI_PROC_Printf(pstBuf, "\tSupported max gop size    :%d\n", pChnAttr[i].stPlayProcInfo.stFBCtrlParameter.u32SupportMaxGopSize);
                    HI_PROC_Printf(pstBuf, "\tFirst frame num           :%d\n", pChnAttr[i].stPlayProcInfo.stFBCtrlParameter.u32FirstFrm);
                    HI_PROC_Printf(pstBuf, "\tTotal frame num           :%d\n", pChnAttr[i].stPlayProcInfo.stFBCtrlParameter.u32TotalFrmNum);
                    HI_PROC_Printf(pstBuf, "\tTotal GOP num             :%d\n", pChnAttr[i].stPlayProcInfo.stFBCtrlParameter.u32TotalGopNum);
                    HI_PROC_Printf(pstBuf, "\tTotal P frame num         :%d\n", pChnAttr[i].stPlayProcInfo.stFBCtrlParameter.u32TotalPFrmNum);
                    HI_PROC_Printf(pstBuf, "\tTotal B frame num         :%d\n", pChnAttr[i].stPlayProcInfo.stFBCtrlParameter.u32TotalBFrmNum);
                    HI_PROC_Printf(pstBuf, "\t-----------------------------\n");
                }
                else
                {
                    HI_PROC_Printf(pstBuf, "\t-------- FF control --------\n");
                    HI_PROC_Printf(pstBuf, "\tTime control next frame   :%d\n", pChnAttr[i].stPlayProcInfo.stFFCtrlParameter.u32TimeCtrlFindFrm);
                    HI_PROC_Printf(pstBuf, "\tTime control cur frame    :%d\n", pChnAttr[i].stPlayProcInfo.stFFCtrlParameter.u32TimeCtrlCurFrm);
                    HI_PROC_Printf(pstBuf, "\tFirst frame num           :%d\n", pChnAttr[i].stPlayProcInfo.stFFCtrlParameter.u32FirstFrm);
                    HI_PROC_Printf(pstBuf, "\tTry frame num             :%d\n", pChnAttr[i].stPlayProcInfo.stFFCtrlParameter.u32TryFrmNum);
                    HI_PROC_Printf(pstBuf, "\tTotal frame num           :%d\n", pChnAttr[i].stPlayProcInfo.stFFCtrlParameter.u32TotalFrmNum);
                    HI_PROC_Printf(pstBuf, "\tTotal I frame num         :%d\n", pChnAttr[i].stPlayProcInfo.stFFCtrlParameter.u32TotalIFrmNum);
                    HI_PROC_Printf(pstBuf, "\tTotal P frame num         :%d\n", pChnAttr[i].stPlayProcInfo.stFFCtrlParameter.u32TotalPFrmNum);
                    HI_PROC_Printf(pstBuf, "\tTotal B frame num         :%d\n", pChnAttr[i].stPlayProcInfo.stFFCtrlParameter.u32TotalBFrmNum);
                    HI_PROC_Printf(pstBuf, "\tNext I frame              :%d\n", pChnAttr[i].stPlayProcInfo.stFFCtrlParameter.u32NextIFrm);
                    HI_PROC_Printf(pstBuf, "\tNext time start frame     :%d\n", pChnAttr[i].stPlayProcInfo.stFFCtrlParameter.u32NextTimeStartFrm);
                    HI_PROC_Printf(pstBuf, "\t-----------------------------\n");
                }
            }
        }
    }

    return HI_SUCCESS;
}

HI_S32 PVRPlaySetProc(HI_PROC_SHOW_BUFFER_S * pstBuf, HI_U32 u32Argc, HI_U8 *pu8Argv[], HI_VOID *pPrivData)
{
    HI_U32 u32ChnNum = 0, u32PrintFlg = 0;
    PVR_PLAY_CHN_S *pChnAttr = g_stPvrPlayChns;
    
    if (2 != u32Argc)
    {
        HI_ERR_PVR("echo pvr_play argc is incorrect.\n");
        return HI_FAILURE;
    }

    u32ChnNum = strtoul((HI_CHAR *)pu8Argv[0], HI_NULL, 10);

    if (u32ChnNum >= PVR_PLAY_MAX_CHN_NUM)
    {
        HI_ERR_PVR("invalid channel number %d\n.", u32ChnNum);
        return HI_FAILURE;
    }

    if ((pChnAttr[u32ChnNum].enState == HI_UNF_PVR_PLAY_STATE_INVALID) ||
            (pChnAttr[u32ChnNum].enState == HI_UNF_PVR_PLAY_STATE_STOP) ||
            (pChnAttr[u32ChnNum].enState == HI_UNF_PVR_PLAY_STATE_BUTT))
    {
        HI_ERR_PVR("channel status is invalid.\n");
        return HI_FAILURE;
    }

    if ((HI_UNF_PVR_PLAY_STATE_FF == pChnAttr[u32ChnNum].enState) ||  
        (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr[u32ChnNum].enState))
    {
        u32PrintFlg = strtoul((HI_CHAR *)pu8Argv[1], HI_NULL, 10);

        if(1 == u32PrintFlg)
        {
            g_stPvrPlayChns[u32ChnNum].stPlayProcInfo.u32PrintFlg = 1;
        }
        else if (0 == u32PrintFlg)
        {
            g_stPvrPlayChns[u32ChnNum].stPlayProcInfo.u32PrintFlg = 0;
        }
    }
    
    return HI_SUCCESS;
}

#endif

STATIC INLINE HI_S32 PVRPlayDevInit(HI_VOID)
{
    int fd;

    if (g_s32PvrFd == -1)
    {
        fd = open (api_pathname_pvr, O_RDWR , 0);

        if(fd < 0)
        {
            HI_FATAL_PVR("Cannot open '%s'\n", api_pathname_pvr);
            return HI_FAILURE;
        }
        g_s32PvrFd = fd;

    }
    
    return HI_SUCCESS;
}

STATIC INLINE HI_BOOL PVRPlayIsVoEmpty(PVR_PLAY_CHN_S  *pChnAttr)
{
    HI_S32 ret = HI_FAILURE;
    HI_HANDLE hWindow;
    HI_DRV_WIN_PLAY_INFO_S stWinDelay = {0};

    ret = HI_MPI_AVPLAY_GetWindowHandle(pChnAttr->hAvplay, &hWindow);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("HI_MPI_AVPLAY_GetWindowHandle fail:0x%x\n", ret);
        return HI_TRUE;

    }

    /* never set VO DieMode disable!
    ret = HI_MPI_VO_DisableDieMode(hWindow);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("HI_MPI_VO_DisableDieMode fail:0x%x\n", ret);
        return HI_TRUE;

    }
    */
    ret = HI_MPI_VO_GetWindowDelay(hWindow, &stWinDelay);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("HI_MPI_VO_GetWindowDelay fail:0x%x\n", ret);
        return HI_TRUE;
    }

    HI_INFO_PVR("WinDelay=%d\n", stWinDelay.u32DelayTime);

    if (stWinDelay.u32DelayTime <= 40) /* less-equal than 40 is OK, less-equal than 1 frame */
    {
        return HI_TRUE;
    }
    else
    {
        return HI_FALSE;
    }
}

STATIC INLINE HI_BOOL PVRPlayIsAoEmpty(PVR_PLAY_CHN_S  *pChnAttr)
{
    HI_S32 ret = HI_FAILURE;
    HI_HANDLE hSnd;
    HI_U32 SndDelay = 0;

    ret = HI_MPI_AVPLAY_GetSndHandle(pChnAttr->hAvplay, &hSnd);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("HI_MPI_AVPLAY_GetSndHandle fail:0x%x\n", ret);
        return HI_TRUE;

    }

    ret = HI_MPI_AO_Track_GetDelayMs(hSnd, &SndDelay);
//    ret = HI_MPI_HIAO_GetDelayMs(hSnd, &SndDelay);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("HI_MPI_HIAO_GetDelayMs fail:0x%x\n", ret);
        return HI_TRUE;
    }

    if (0 == SndDelay)
    {
        return HI_TRUE;
    }
    else
    {
        return HI_FALSE;
    }
}


STATIC INLINE HI_BOOL PVRPlayIsEOS(PVR_PLAY_CHN_S  *pChnAttr)
{
    HI_BOOL Eof = HI_TRUE;
    HI_S32 ret = HI_FAILURE;
    HI_UNF_AVPLAY_BUFID_E bufID;
    HI_UNF_AVPLAY_STATUS_INFO_S info;
    HI_UNF_DMX_TSBUF_STATUS_S  stTsBufStat;
    HI_U32 u32BufLowSize = 0;
    HI_U32 u32CurPts = PVR_INDEX_INVALID_PTSMS;

    /* the audio index should set audio esbuffer, video index set video esbuffer */
    if (PVR_INDEX_IS_TYPE_AUDIO(pChnAttr->IndexHandle))
    {
        bufID = HI_UNF_AVPLAY_BUF_ID_ES_AUD;
        u32BufLowSize = 1024;

        /* audio haven't completely end the play, until to play over */
        if (!PVRPlayIsAoEmpty(pChnAttr))
        {
            Eof = HI_FALSE;
            return Eof;
        }
    }
    else /* video */
    {
        bufID = HI_UNF_AVPLAY_BUF_ID_ES_VID;
        u32BufLowSize = 8*1024;

        /* video haven't completely end the play, until to play over */
        if (!PVRPlayIsVoEmpty(pChnAttr))
        {
            Eof = HI_FALSE;
            return Eof;
        }
    }

    ret = HI_UNF_DMX_GetTSBufferStatus(pChnAttr->hTsBuffer, &stTsBufStat);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("HI_UNF_DMX_GetTSBufferStatus fail:0x%x\n", ret);
        return HI_TRUE;
    }

    ret = HI_UNF_AVPLAY_GetStatusInfo(pChnAttr->hAvplay, &info);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("HI_UNF_AVPLAY_GetStatusInfo fail:0x%x\n", ret);
        return HI_TRUE;
    }

    if (PVR_INDEX_IS_TYPE_AUDIO(pChnAttr->IndexHandle))
    {
        u32CurPts = info.stSyncStatus.u32LastAudPts;
    }
    else /* video */
    {
        u32CurPts = info.stSyncStatus.u32LastVidPts;
    }

    /* pts invariable, whether size is invariable or not or es buffer size less than some byte */
    if ((stTsBufStat.u32UsedSize < (PVR_TS_LEN + PVR_DMX_TS_BUFFER_GAP))
        && (pChnAttr->u32LastPtsMs == u32CurPts)
        && ((info.stBufStatus[bufID].u32UsedSize == pChnAttr->u32LastEsBufSize)
          || (info.stBufStatus[bufID].u32UsedSize < u32BufLowSize)))
    {
        Eof = HI_TRUE;
        HI_INFO_PVR("BUF EMPTY NOW. ES in buf:%u,lst:%u, PTS:%d,lst:%d\n",
                info.stBufStatus[bufID].u32UsedSize,pChnAttr->u32LastEsBufSize, u32CurPts, pChnAttr->u32LastPtsMs);
    }
    else
    {
        Eof = HI_FALSE;

        HI_INFO_PVR("ES in buf:%u, PTS:%d lst:%d\n", info.stBufStatus[bufID].u32UsedSize, u32CurPts, pChnAttr->u32LastPtsMs);
        pChnAttr->u32LastEsBufSize = info.stBufStatus[bufID].u32UsedSize;
        pChnAttr->u32LastPtsMs = u32CurPts;
    }

    return Eof;
}

STATIC INLINE HI_S32 PVRPlayWaitForEndOfFile(PVR_PLAY_CHN_S  *pChnAttr,  HI_U32 timeOutMs)
{
    HI_BOOL Eof = HI_TRUE;
    HI_U32 u32time = 0;

    /* On step mode, just need wait next command, that is it. regardless of whether it is end or not in main thread*/
    if (HI_UNF_PVR_PLAY_STATE_STEPF == pChnAttr->enState)
    {
        usleep(200 * 1000);
        return HI_FALSE;
    }

    do {
        Eof = PVRPlayIsEOS(pChnAttr);
        if (Eof)
        {
            break;
        }
        else
        {
            /* look up interval 200ms */
            usleep(200 * 1000);
            u32time += 200;
            continue;
        }
    } while(u32time < timeOutMs);

    HI_INFO_PVR("Eof=%d\n", Eof);

    return Eof;
}


STATIC INLINE PVR_PLAY_CHN_S * PVRPlayFindFreeChn(HI_VOID)
{
    PVR_PLAY_CHN_S * pChnAttr = NULL;

    /* find a free play channel */
#if 0 /*not support multi-thread */
    HI_U32 i;
    for (i = 0; i < PVR_PLAY_MAX_CHN_NUM; i++)
    {
        if (g_stPvrPlayChns[i].enState == HI_UNF_PVR_PLAY_STATE_INVALID)
        {
            pChnAttr = &g_stPvrPlayChns[i];
            pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_INIT;
            break;
        }
    }
#else /* manage the resources by kernel driver */
    HI_U32 ChanId;
    if (HI_SUCCESS != ioctl(g_s32PvrFd, CMD_PVR_CREATE_PLAY_CHN, (HI_S32)&ChanId))
    {
        HI_FATAL_PVR("pvr play creat channel error\n");
        return HI_NULL;
    }

    HI_ASSERT(g_stPvrPlayChns[ChanId].enState == HI_UNF_PVR_PLAY_STATE_INVALID);
    pChnAttr = &g_stPvrPlayChns[ChanId];

    PVR_LOCK(&(pChnAttr->stMutex));
    pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_INIT;
    pChnAttr->enLastState = HI_UNF_PVR_PLAY_STATE_INIT;
    PVR_UNLOCK(&(pChnAttr->stMutex));
#endif

    return pChnAttr;
}


STATIC INLINE HI_S32 PVRPlayCheckUserCfg(const HI_UNF_PVR_PLAY_ATTR_S *pUserCfg, HI_HANDLE hAvplay, HI_HANDLE hTsBuffer)
{
    HI_S32 ret;
    HI_UNF_AVPLAY_ATTR_S         AVPlayAttr;
    HI_UNF_AVPLAY_STATUS_INFO_S  StatusInfo;
    HI_UNF_DMX_TSBUF_STATUS_S    TsBufStatus;
    HI_CHAR szIndexName[PVR_MAX_FILENAME_LEN + 4];
    HI_U32 i;

    if (HI_UNF_PVR_STREAM_TYPE_TS != pUserCfg->enStreamType )
    {
        HI_ERR_PVR("invalid play enStreamType:%d\n", pUserCfg->enStreamType );
        return HI_ERR_PVR_INVALID_PARA;
    }

    PVR_CHECK_CIPHER_CFG(&pUserCfg->stDecryptCfg);

    /*  if play file name ok */
    if (!((pUserCfg->u32FileNameLen > 0)
        && (strlen(pUserCfg->szFileName) == pUserCfg->u32FileNameLen)))
    {
        HI_ERR_PVR("Invalid file name!\n");
        return HI_ERR_PVR_FILE_INVALID_FNAME;
    }

    /* check if stream exist!                                               */
    if (!PVR_CHECK_FILE_EXIST64(pUserCfg->szFileName))
    {
        HI_ERR_PVR("Stream file %s doesn't exist!\n", pUserCfg->szFileName);
        return HI_ERR_PVR_FILE_NOT_EXIST;
    }
    snprintf(szIndexName, PVR_MAX_FILENAME_LEN,"%s.%s", pUserCfg->szFileName, "idx");
    if (!PVR_CHECK_FILE_EXIST(szIndexName))
    {
        HI_ERR_PVR("can NOT find index file for '%s'!\n", pUserCfg->szFileName);
        return HI_ERR_PVR_FILE_NOT_EXIST;
    }

    for (i = 0; i < PVR_PLAY_MAX_CHN_NUM; i++)
    {
        /* check whether demux id is used or not */
        if (HI_UNF_PVR_PLAY_STATE_INVALID != g_stPvrPlayChns[i].enState)
        {
			/* check whether the same file is playing or not*/
            if (0 == strncmp(g_stPvrPlayChns[i].stUserCfg.szFileName, pUserCfg->szFileName,sizeof(pUserCfg->szFileName)))
            {
                HI_ERR_PVR("file %s was exist to be playing.\n", pUserCfg->szFileName);
                return HI_ERR_PVR_FILE_EXIST;
            }

            if (g_stPvrPlayChns[i].hAvplay == hAvplay)
            {
                HI_ERR_PVR("avplay 0x%x already has been used to play.\n", hAvplay);
                return HI_ERR_PVR_ALREADY;
            }
            if (g_stPvrPlayChns[i].hTsBuffer == hTsBuffer)
            {
                HI_ERR_PVR("Ts buffer 0x%x already has been used to play.\n", hTsBuffer);
                return HI_ERR_PVR_ALREADY;
            }
        }

    }

    ret = HI_UNF_AVPLAY_GetStatusInfo(hAvplay, &StatusInfo);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("check hAvplay for PVR failed:%#x\n", ret);
        return HI_FAILURE;
    }
    if (StatusInfo.enRunStatus != HI_UNF_AVPLAY_STATUS_STOP)
    {
        HI_WARN_PVR("the hAvplay is not stopped\n");

        //lint -e655
        ret = HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("can NOT stop hAvplay for pvr replay\n");
            return ret;
        }
        //lint +e655
    }

    ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE, &AVPlayAttr);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("check hAvplay attr failed\n");
        return HI_FAILURE;
    }
    if (AVPlayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_PVR("hAvplay's enStreamType is NOT TS.\n");
        return HI_ERR_PVR_INVALID_PARA;
    }

    ret = HI_UNF_DMX_GetTSBufferStatus(hTsBuffer, &TsBufStatus);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("check hTsBuffer failed.\n");
        return HI_ERR_PVR_INVALID_PARA;
    }

    return HI_SUCCESS;
}

STATIC INLINE HI_S32 PVRPlayPrepareCipher(PVR_PLAY_CHN_S  *pChnAttr)
{
    HI_S32 ret;
    HI_UNF_PVR_CIPHER_S *pCipherCfg;
    HI_UNF_CIPHER_CTRL_S ctrl;
    HI_UNF_CIPHER_ATTS_S stCipherAttr;

    pCipherCfg = &(pChnAttr->stUserCfg.stDecryptCfg);
    if (!pCipherCfg->bDoCipher)
    {
        return HI_SUCCESS;
    }

    /* get cipher handle */
    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    ret = HI_UNF_CIPHER_CreateHandle(&pChnAttr->hCipher, &stCipherAttr);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("HI_UNF_CIPHER_CreateHandle failed:%#x\n", ret);
        return ret;
    }

    ctrl.enAlg = pCipherCfg->enType;
    ctrl.bKeyByCA = HI_FALSE;
    memcpy(ctrl.u32Key, pCipherCfg->au8Key, sizeof(ctrl.u32Key));
    memset(ctrl.u32IV, 0, sizeof(ctrl.u32IV));

    if (HI_UNF_CIPHER_ALG_AES ==  pCipherCfg->enType )
    {
        ctrl.enBitWidth = PVR_CIPHER_AES_BIT_WIDTH;
        ctrl.enWorkMode = PVR_CIPHER_AES_WORK_MODD;
        ctrl.enKeyLen = PVR_CIPHER_AES_KEY_LENGTH;
    }
    else if (HI_UNF_CIPHER_ALG_DES ==  pCipherCfg->enType )
    {
        ctrl.enBitWidth = PVR_CIPHER_DES_BIT_WIDTH;
        ctrl.enWorkMode = PVR_CIPHER_DES_WORK_MODD;
        ctrl.enKeyLen = PVR_CIPHER_DES_KEY_LENGTH;
    }
    else
    {
        ctrl.enBitWidth = PVR_CIPHER_3DES_BIT_WIDTH;
        ctrl.enWorkMode = PVR_CIPHER_3DES_WORK_MODD;
        ctrl.enKeyLen = PVR_CIPHER_3DES_KEY_LENGTH;
    }

    ret = HI_UNF_CIPHER_ConfigHandle(pChnAttr->hCipher, &ctrl);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("HI_UNF_CIPHER_ConfigHandle failed:%#x\n", ret);
        (HI_VOID)HI_UNF_CIPHER_DestroyHandle(pChnAttr->hCipher);
        return ret;
    }

    return HI_SUCCESS;
}

STATIC INLINE HI_S32 PVRPlayReleaseCipher(PVR_PLAY_CHN_S  *pChnAttr)
{
    HI_S32 ret = HI_SUCCESS;

    /* free cipher handle */
    if ( (pChnAttr->stUserCfg.stDecryptCfg.bDoCipher) && (pChnAttr->hCipher) )
    {
        ret = HI_UNF_CIPHER_DestroyHandle(pChnAttr->hCipher);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("release Cipher handle failed! erro:%#x\n", ret);
        }
        pChnAttr->hCipher = 0;
    }

    return ret;
}

/*
table 2-3 -- ITU-T Rec. H.222.0 | ISO/IEC 13818 transport packet
        Syntax                    No. of bits        Mnemonic
transport_packet(){
    sync_byte                        8            bslbf
    transport_error_indicator        1            bslbf
    payload_unit_start_indicator     1            bslbf
    transport_priority               1            bslbf
    PID                              13            uimsbf
    transport_scrambling_control     2            bslbf
    *********************************************************
***    adaptation_field_control      2            bslbf ****** the 2bit we want
    *********************************************************
    continuity_counter               4            uimsbf
    if(adaptation_field_control=='10'  || adaptation_field_control=='11'){
        adaptation_field()
    }
    if(adaptation_field_control=='01' || adaptation_field_control=='11') {
        for (i=0;i<N;i++){
            data_byte                8            bslbf
        }
    }
}


"2.4.3.2 Transport Stream packet layer" of ISO 13818-1

adaptation_field_control
    -- This 2 bit field indicates whether this Transport Stream packet header
        is followed by an adaptation field and/or payload.

Table 2-6 -- Adaptation field control values
value    description
00    reserved for future use by ISO/IEC
01    no adaptation_field, payload only
10    adaptation_field only, no payload
11    adaptation_field followed by payload
*/
STATIC INLINE HI_VOID RVRPlaySetAdptFiled(HI_U8 *pTsHead, HI_U32 flag)
{
    HI_U8 byte4 = pTsHead[3];

    HI_ASSERT(flag <= 0x3);

    byte4 = byte4 & 0xcf;/* clear adp field bits */
    byte4 = byte4 | ((flag & 0x3) << 4); /* set adp field bits */

    pTsHead[3] = byte4;
}

STATIC INLINE HI_U8 RVRPlayGetAdptFiled(const HI_U8 *pTsHead)
{
    HI_U8 byte4 = pTsHead[3];

    byte4 = (byte4 >> 4) & 0x3;

    return byte4;
}

/*****************************************************************************
 Prototype       : RVRPlayDisOrderCnt,RVRPlayDisOrderCntEnd
 Description     : disorderly number, prevent from making the demux regard repeatly number  as lost packet
 Input           : pTsHead  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/7/21
    Author       : fd
    Modification : Created function

*****************************************************************************/
STATIC INLINE HI_VOID RVRPlayDisOrderCnt(HI_U8 *pTsHead)
{
    HI_U8 oldCnt;
    HI_U8 byte4 = pTsHead[3];

    oldCnt = byte4 & 0xf;

    oldCnt += 5; /* 5 is one random number, make the calu discontinuous */

    byte4 = byte4 & 0xf0;
    byte4 = byte4 | (oldCnt & 0xf);

    pTsHead[3] = byte4;
}

STATIC INLINE HI_VOID RVRPlayDisOrderCntEnd(HI_U8 *pTsHead)
{
    HI_U8 oldCnt;
    HI_U8 byte4 = pTsHead[3];

    oldCnt = byte4 & 0xf;

    oldCnt += 3; /* 3 is one random number, make the calu discontinuous */

    byte4 = byte4 & 0xf0;
    byte4 = byte4 | (oldCnt & 0xf);

    pTsHead[3] = byte4;
}

/* modify adaptation_field_control field, and set that length, pading with 0xff */
STATIC INLINE HI_VOID PVRPlaySetTsHead(HI_U8 *pTsHead, HI_U32 dataStartPos)
{
    HI_U8 adapt_flag;
    if (PVR_TS_HEAD_SIZE == dataStartPos)
    {
        return;
    }

    if (0 != (pTsHead[1] & 0x40))
    {
        return;
    }

    if (dataStartPos >= PVR_TS_HEAD_SIZE + PVR_TS_MIN_PD_SIZE) /* modify the padding area length */
    {
        adapt_flag = RVRPlayGetAdptFiled(pTsHead);
        /*AI7D02961 the dataStartPos is not equal the size of ts head, it should be both */
        RVRPlaySetAdptFiled(pTsHead, PVR_TS_ADAPT_BOTH);

        pTsHead[PVR_TS_PD_SIZE_POS] = (HI_U8)(dataStartPos - (PVR_TS_HEAD_SIZE + 1));

        if (!PVR_TS_ADAPT_HAVE_ADAPT(adapt_flag))
        {
            pTsHead[PVR_TS_PD_FLAG_POS] = 0;
        }

        memset(pTsHead + PVR_TS_HEAD_SIZE + PVR_TS_MIN_PD_SIZE, 0xff,
                    dataStartPos - (PVR_TS_HEAD_SIZE + PVR_TS_MIN_PD_SIZE));
    }
    else /* only 1Byte Adapt_len */
    {
        RVRPlaySetAdptFiled(pTsHead, PVR_TS_ADAPT_BOTH);
        pTsHead[PVR_TS_PD_SIZE_POS] = 0;
    }

    RVRPlayDisOrderCnt(pTsHead);
    return;
}

/*
dataEnd: position of valid data end in last TS pkg(Byte)
*                               dataEnd
*                                 |
original:                         V
* -----------------------------------------------------------
*| TS head | pending | valid data |  invalid data     |
*------------------------------------------------------------

0 == PVR_TS_MOVE_TO_END:
* -----------------------------------------------------------
*| TS head | pending | valid data |  0xff 0xff  ...  |
*------------------------------------------------------------

1 == PVR_TS_MOVE_TO_END:
* -----------------------------------------------------------
*| TS head | pending |   0xff 0xff  ... | valid data |
*------------------------------------------------------------
*/
STATIC INLINE HI_VOID PVRPlayAddTsEnd(HI_U8 *pBufAddr, HI_U32 dataEnd,  HI_U32 endToAdd)
{
    HI_U8 *pLastTsHead;
    HI_U8  adapt_flag;
    HI_U32 dataInLastTs ;

   if (0 == endToAdd)
   {
        return;
   }
#if 0 == PVR_TS_MOVE_TO_END
    memset((HI_U8*)pBufAddr + dataEnd , 0xff, endToAdd);
#else

    pLastTsHead = pBufAddr + dataEnd + endToAdd - PVR_TS_LEN;

    if (0 != (pLastTsHead[1] & 0x40))
    {
        pLastTsHead[1] = 0x1f;
        pLastTsHead[2] = 0xff;
        return;
    }

    adapt_flag = RVRPlayGetAdptFiled(pLastTsHead);

    /* TODO: 2B or 1B adapt-head */
    RVRPlaySetAdptFiled(pLastTsHead,
            ((endToAdd + PVR_TS_HEAD_SIZE) == PVR_TS_LEN)?
            PVR_TS_ADAPT_ADAPT_ONLY : PVR_TS_ADAPT_BOTH);
    RVRPlayDisOrderCntEnd(pLastTsHead);
    /* AI7D04104 event if it should have adaptation, we need to check whether it length is zero or not */
    if (PVR_TS_ADAPT_HAVE_ADAPT(adapt_flag) && 0 != pLastTsHead[PVR_TS_PD_SIZE_POS]) /* existent the padding field */
    {
        if (endToAdd + PVR_TS_HEAD_SIZE + PVR_TS_MIN_PD_SIZE > PVR_TS_LEN)
        {
            endToAdd = PVR_TS_LEN - (PVR_TS_HEAD_SIZE + PVR_TS_MIN_PD_SIZE);
        }

        dataInLastTs = PVR_TS_LEN - (endToAdd + PVR_TS_HEAD_SIZE + PVR_TS_MIN_PD_SIZE);

        memmove(pBufAddr + dataEnd  + endToAdd - dataInLastTs,
            pBufAddr + dataEnd  - dataInLastTs,
            dataInLastTs);

        memset(pBufAddr + dataEnd  - dataInLastTs, 0xff, endToAdd);
        pBufAddr[dataEnd  - (dataInLastTs + PVR_TS_MIN_PD_SIZE)] += (HI_U8)(endToAdd);
    }
    else /* nonexistent padding field */
    {
        if (endToAdd + PVR_TS_HEAD_SIZE > PVR_TS_LEN)
        {
            endToAdd = PVR_TS_LEN - (PVR_TS_HEAD_SIZE);
        }

        dataInLastTs = PVR_TS_LEN - (endToAdd + PVR_TS_HEAD_SIZE);

        memmove(pLastTsHead + PVR_TS_HEAD_SIZE + endToAdd,
            pLastTsHead + PVR_TS_HEAD_SIZE,
            dataInLastTs);

        memset(pLastTsHead + PVR_TS_HEAD_SIZE, 0xff, endToAdd);
        pLastTsHead[PVR_TS_PD_SIZE_POS] = (HI_U8)(endToAdd - 1);
        pLastTsHead[PVR_TS_PD_FLAG_POS] = 0;
    }
#endif

    return ;
}
#if 0

/*****************************************************************************
 Prototype       : PVRPlayReadStream
 Description     : read ts from file
 Input           : pChnAttr  **channel attribute, pointed by user.
 Input           : offset ** read offset
 Input           : size   **read size
 Input           : pu8Addr**data buffer
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/

static HI_S32 PVRPlayReadStream(HI_U8 *pu8Addr, HI_U32 offset, HI_U32 size, PVR_PLAY_CHN_S *pChnAttr)
{
    ssize_t  n;
    do
    {
        if ((n = PVR_PREAD64(pu8Addr, (size), pChnAttr->s32DataFile, (HI_U64)offset)) == -1)
        {
            if (EINTR == errno)
            {
                continue;
            }
            else if (errno)
            {
                perror("read ts error: ");
                return HI_ERR_PVR_FILE_CANT_READ;
            }
            else
            {
                HI_ERR_PVR("read err1,  want:%u, off:%llu \n", (size), offset);
                return HI_ERR_PVR_FILE_TILL_END;
            }
        }
        if ((0 == n) && (0 != (size)))
        {
            HI_WARN_PVR("read 0,    want:%u, off:%llu \n", (size), offset);
            return HI_ERR_PVR_FILE_TILL_END;
        }
        offset += (size);
   }while(EINTR == errno);
   return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVRPlayFindCorretEndIndex
 Description     :make sure the index of the last frame.
 Input           : pChnAttr  **channel attribute, pointed by user.
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
static HI_S32 PVRPlayFindCorretEndIndex(PVR_PLAY_CHN_S  *pChnAttr)
{
    HI_S32 ret;
    HI_U32 StartFrame;
    HI_U32 EndFrame;
    HI_U32 i;
    HI_U32 before_pos,size1,size2;
    PVR_INDEX_ENTRY_S pframe;
    HI_U8 scdbuf[4];

    StartFrame = pChnAttr->IndexHandle->stCycMgr.u32StartFrame;
    EndFrame = pChnAttr->IndexHandle->stCycMgr.u32EndFrame-1;
    for(i=EndFrame;i>=StartFrame;i--)
    {
        ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle,&pframe,i);
        if(HI_SUCCESS!=ret)
        {
            HI_ERR_PVR("Get %d Frame failed!\n",i);
            return ret;
        }

        size1 = PVR_PLAY_PICTURE_HEADER_LEN;
        size2 = 0;

        if (PVR_INDEX_IS_REWIND(pChnAttr->IndexHandle))
        {
            before_pos = (HI_U32)(pframe.u64Offset % PVR_INDEX_MAX_FILE_SIZE(pChnAttr->IndexHandle));

            if (before_pos + size1 > (HI_U32)(PVR_INDEX_MAX_FILE_SIZE(pChnAttr->IndexHandle))) /* stride rewind */
            {
                size1 = (HI_U32)PVR_INDEX_MAX_FILE_SIZE(pChnAttr->IndexHandle) - before_pos;
                size2 = PVR_PLAY_PICTURE_HEADER_LEN - size1;
            }
        }
        else
        {
            before_pos = (HI_U32)pframe.u64Offset;
        }
        ret = PVRPlayReadStream((HI_U8 *)scdbuf, before_pos, size1, pChnAttr);
        if(HI_SUCCESS!=ret)
        {
            continue;
        }
        if(size2>0)
        {
             before_pos = 0;

ret = PVRPlayReadStream(&scdbuf[size1], before_pos, size2, pChnAttr);
             if(HI_SUCCESS!=ret)
             {
                continue;
             }
        }
        if (scdbuf[0]!=0x00||scdbuf[1]!=0x00||scdbuf[2]!=0x01)
        {
            HI_ERR_PVR("frame %d error!\n",i);
            continue;
        }
        else
        {
            pChnAttr->IndexHandle->stCycMgr.u32EndFrame = i+1;
            HI_INFO_PVR("endframe index %d\n",i);
            return HI_SUCCESS;
        }
    }
    return HI_FAILURE;
}
#endif
/*****************************************************************************
 Prototype       : PVRPlaySendData
 Description     : by TS packet align mode, send pointed size data to demux, and the data must be cotinuious and valid
 Input           : pChnAttr     **the attribute of channel
                   offSet       ** the data offset from start in ts
                   bytesToSend  ** the data size
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/23
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
/*
PVR_CIPHER_PKG_LEN aligned, read file from here        PVR_CIPHER_PKG_LEN aligned, read file to here
|                                                                             |
|     188 aligned        offSet(picture header,StartCode)    188 aligned                                        |
|              |             |                                  |             |
V              V             V                                  V             V
-------------------------------------------------------------------------------
| xxx          | TS head |xx |       valid data    |    xxx     |0x47...      |
-------------------------------------------------------------------------------
|<-cipherHead->|<-headToAdd->|<---bytesToSend----->|<-endToAdd->|<-cipherEnd->|
|<---------------------------alignSize--------------------------------------->|
*/
#if 0
STATIC INLINE HI_S32 PVRPlaySendData(PVR_PLAY_CHN_S *pChnAttr, HI_U64 offSet, HI_U32 bytesToSend)
{
    HI_S32   ret;
    HI_U32   alignSize;
    HI_U32   u32BytesRead = 0;
    HI_U32   u32PhyAddr;
    HI_UNF_STREAM_BUF_S demuxBuf;

    HI_U32 headToAdd;  /* the length from beginning of data to ts header *//*CNcomment:数据起始到TS头的距离 */
    HI_U32 endToAdd;   /* the length from end of data to ts end *//*CNcomment:数据结尾到TS尾的距离 */
    HI_U32 cipherHead; /* from the first ts header to the lastest cipher array*//*CNcomment:起始TS头到向前到最近一个解密分组(同时也是O_DIRECT读取位置)的距离 */
    HI_U32 cipherEnd;  /* from the end of data to the lastest cipher array *//*CNcomment:数据结尾到向后到最近一个解密分组(同时也是O_DIRECT读取位置)的距离 */
    HI_U32 u32BytesRealSend;  /*real length be sent to buffer *//*CNcomment:真正送到TS Buffer中的长度*/
    HI_U64 u64ReadOffset;     /*read offset address of stream file*//*CNcomment:码流文件的读偏移地址 */

    if (0 == bytesToSend)
    {
        return HI_SUCCESS;
    }

    headToAdd = (HI_U32)(offSet % PVR_TS_LEN);
    endToAdd = PVR_TS_LEN - (HI_U32)((offSet + bytesToSend) % PVR_TS_LEN);

    if (pChnAttr->stUserCfg.stDecryptCfg.bDoCipher)
    {
        cipherHead = (HI_U32)((offSet - headToAdd)  % PVR_CIPHER_PKG_LEN);
        cipherEnd = PVR_CIPHER_PKG_LEN - (HI_U32)((offSet + bytesToSend + endToAdd) % PVR_CIPHER_PKG_LEN);
    }
    else
    {
        cipherHead = 0;
        cipherEnd = 0;
    }

    alignSize = bytesToSend + headToAdd + endToAdd + cipherHead + cipherEnd;

    //HI_INFO_PVR("%u = %u + %u + %u + %u + %u\n", alignSize ,bytesToSend , headToAdd, endToAdd , cipherHead , cipherEnd);

    ret = HI_MPI_DMX_GetTSBuffer(pChnAttr->hTsBuffer, alignSize, &demuxBuf, &u32PhyAddr, 0);
    while (HI_SUCCESS != ret)
    {
        if ((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop))
        {
            return HI_SUCCESS;
        }

        if (HI_ERR_DMX_NOAVAILABLE_BUF != ret)
        {
            HI_ERR_PVR("HI_MPI_DMX_GetTSBuffer failed:%#x!\n", ret);
            return ret;
        }
        else
        {
            HI_INFO_PVR("HI_MPI_DMX_GetTSBuffer busy:%#x!\n", ret);
            PVR_UNLOCK(&(pChnAttr->stMutex));
            usleep(40000);

            PVR_LOCK(&(pChnAttr->stMutex));
            if ((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop))
            {
                return HI_SUCCESS;
            }
            ret = HI_MPI_DMX_GetTSBuffer(pChnAttr->hTsBuffer, alignSize, &demuxBuf, &u32PhyAddr, 0);
        }
    }

    u64ReadOffset = ((offSet - headToAdd) - cipherHead);
    HI_INFO_PVR("cur read pos:%llu, offset:%llu, cipherHead:%#x, bytesToSend:%#x, headToAdd:%#x alignSize:%#x!\n",
                u64ReadOffset,
                offSet,
                cipherHead,
                bytesToSend,
                headToAdd,
                alignSize);

    while ((u32BytesRead + PVR_PLAY_MAX_SEND_BUF_SIZE) < alignSize)
    {
        PVR_PLAY_READ_FILE(pChnAttr->pu8DataBuf, u64ReadOffset, PVR_PLAY_MAX_SEND_BUF_SIZE, pChnAttr);
        memcpy(demuxBuf.pu8Data + u32BytesRead, pChnAttr->pu8DataBuf, PVR_PLAY_MAX_SEND_BUF_SIZE);
        u32BytesRead += PVR_PLAY_MAX_SEND_BUF_SIZE;
        //pChnAttr->u64CurReadPos += PVR_PLAY_MAX_SEND_BUF_SIZE;
    }
    PVR_PLAY_READ_FILE(pChnAttr->pu8DataBuf, u64ReadOffset, alignSize - u32BytesRead, pChnAttr);
    memcpy(demuxBuf.pu8Data + u32BytesRead, pChnAttr->pu8DataBuf, alignSize - u32BytesRead);
    //pChnAttr->u64CurReadPos += (alignSize - u32BytesRead);

    /*if decipher is necessary,do it *//*CNcomment:如果需要解密则进行解密*/
    if (pChnAttr->stUserCfg.stDecryptCfg.bDoCipher)
    {
        ret = HI_UNF_CIPHER_Decrypt(pChnAttr->hCipher, u32PhyAddr, u32PhyAddr, alignSize);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("HI_UNF_CIPHER_Decrypt failed:%#x!\n", ret);
            return ret;
        }
    }

    /*if index file don't exist, checking is unnecessary *//*CNcomment:无索引播放不需要检查*/
    if (!pChnAttr->bPlayingTsNoIdx)
    {
        HI_ASSERT(demuxBuf.pu8Data[cipherHead] == 0x47);
    }

    if ((HI_UNF_PVR_PLAY_STATE_PLAY != pChnAttr->enState)
       &&  (HI_UNF_PVR_PLAY_STATE_SF != pChnAttr->enState))
    {
        PVRPlaySetTsHead(demuxBuf.pu8Data + cipherHead, headToAdd);
        PVRPlayAddTsEnd(demuxBuf.pu8Data, cipherHead + headToAdd + bytesToSend, endToAdd);
        u32BytesRealSend = headToAdd + bytesToSend + endToAdd;
    }
    else /* normally or slow play,send whole of stream,do not add stream any more,only cut off the divicese between TS package*//*CNcomment:正常播放和慢放，送所有码流，不再补码流，只要在整包的地方切开就可以了*/
    {
        u32BytesRealSend = headToAdd + bytesToSend - ((offSet + bytesToSend) % PVR_TS_LEN);
    }

    HI_ASSERT(u32BytesRealSend <= alignSize);

    ret = HI_MPI_DMX_PutTSBuffer(pChnAttr->hTsBuffer, u32BytesRealSend, cipherHead);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("HI_MPI_DMX_PutTSBuffer failed:%#x!\n", ret);
        return ret;
    }
    else
    {
        if (g_pvrfpSend)
        {
            fwrite(demuxBuf.pu8Data + cipherHead, 1, u32BytesRealSend, g_pvrfpSend);
        }
    }

    return HI_SUCCESS;
}

#else

/* send new command, when break or execute error, return failure, otherwise, return success.
   u32BytesSend must be aligned by 512 byte */
STATIC INLINE HI_S32 PVRPlaySendToTsBuffer(PVR_PLAY_CHN_S *pChnAttr, HI_U64 u64ReadOffset,
                HI_U32 u32BytesSend, HI_BOOL IsHead, HI_BOOL IsEnd,
                HI_U32 cipherHead, HI_U32 cipherEnd,
                HI_U32 headToAdd,  HI_U32 endToAdd)
{
    HI_S32   ret;
    HI_U32   u32BytesRealSend = u32BytesSend;
    HI_U32   u32StartPos = 0;
    HI_U32   u32PhyAddr;
    HI_UNF_STREAM_BUF_S demuxBuf;
    HI_UNF_PVR_DATA_ATTR_S stDataAttr;
    PVR_INDEX_ENTRY_S stStartFrame;
    PVR_INDEX_ENTRY_S stEndFrame;
    HI_U32            u32EndFrm;
    HI_U64            u64LenAdp = 0;
    HI_U64            u64OffsetAdp = 0;

    memset(&stStartFrame, 0, sizeof(PVR_INDEX_ENTRY_S));
    memset(&stEndFrame, 0, sizeof(PVR_INDEX_ENTRY_S));
    
    /*find out ts buffer size u32ReadOnce*/
    ret = HI_MPI_DMX_GetTSBuffer(pChnAttr->hTsBuffer, u32BytesSend, &demuxBuf, &u32PhyAddr, 0);
    while (HI_SUCCESS != ret)
    {
        if ((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop))
        {
            return HI_FAILURE;
        }

        if (HI_ERR_DMX_NOAVAILABLE_BUF != ret)
        {
            HI_ERR_PVR("HI_MPI_DMX_GetTSBuffer failed:%#x!\n", ret);
            return HI_FAILURE;
        }
        else
        {
//            HI_INFO_PVR("HI_MPI_DMX_GetTSBuffer busy:%#x!\n", ret);
            PVR_UNLOCK(&(pChnAttr->stMutex));
            usleep(40000);

            PVR_LOCK(&(pChnAttr->stMutex));
            if ((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop))
            {
                return HI_FAILURE;
            }
            ret = HI_MPI_DMX_GetTSBuffer(pChnAttr->hTsBuffer, u32BytesSend, &demuxBuf, &u32PhyAddr, 0);
        }
    }

    /* read ts to buffer */
    //lint -e774
    PVR_PLAY_READ_FILE(demuxBuf.pu8Data, u64ReadOffset, u32BytesSend, pChnAttr);
    //lint +e774

    if (NULL != pChnAttr->readCallBack)
    {
        ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle,&stStartFrame,pChnAttr->IndexHandle->stCycMgr.u32StartFrame);
        if(HI_SUCCESS!=ret)
        {
            HI_ERR_PVR("Get Start Frame failed,ret=%d\n",ret);
            stStartFrame.u64Offset = 0;
        }

        if (pChnAttr->IndexHandle->stCycMgr.u32EndFrame > 0)
        {
            u32EndFrm = pChnAttr->IndexHandle->stCycMgr.u32EndFrame - 1;
        }
        else
        {
            u32EndFrm = pChnAttr->IndexHandle->stCycMgr.u32LastFrame - 1;
        }

        ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle,&stEndFrame,u32EndFrm);
        if(HI_SUCCESS!=ret)
        {
            HI_ERR_PVR("Get End Frame failed,ret=%d\n",ret);
            stEndFrame.u64Offset = 0;
        }

        stDataAttr.u32ChnID        = pChnAttr->u32chnID;
        stDataAttr.u64FileStartPos = stStartFrame.u64Offset;
        stDataAttr.u64FileEndPos   = stEndFrame.u64Offset;
        stDataAttr.u64GlobalOffset = u64ReadOffset;

        memset(stDataAttr.CurFileName, 0, sizeof(stDataAttr.CurFileName));
        PVRFileGetOffsetFName(pChnAttr->s32DataFile, u64ReadOffset, stDataAttr.CurFileName);
        PVR_Index_GetIdxFileName(stDataAttr.IdxFileName, pChnAttr->stUserCfg.szFileName);

        u64OffsetAdp = u64ReadOffset;
        u64LenAdp = (HI_U32)u32BytesSend;
        PVRFileGetRealOffset(pChnAttr->s32DataFile, &u64OffsetAdp, &u64LenAdp);
        if(u64LenAdp < u32BytesSend)
        {
            ret = pChnAttr->readCallBack(&stDataAttr, demuxBuf.pu8Data, u32PhyAddr, (HI_U32)u64OffsetAdp, (HI_U32)u64LenAdp);
            if(HI_SUCCESS!=ret)
            {
                HI_ERR_PVR("readCallBack failed,ret=%d\n",ret);
                return HI_FAILURE;
            }
            u64OffsetAdp = u64ReadOffset + u64LenAdp;
            PVRFileGetRealOffset(pChnAttr->s32DataFile, &u64OffsetAdp, NULL);
            PVRFileGetOffsetFName(pChnAttr->s32DataFile, u64ReadOffset + u32BytesSend, stDataAttr.CurFileName);
            demuxBuf.pu8Data += u64LenAdp;

            ret = pChnAttr->readCallBack(&stDataAttr, demuxBuf.pu8Data, u32PhyAddr, (HI_U32)u64OffsetAdp, u32BytesSend - (HI_U32)u64LenAdp);
            if(HI_SUCCESS!=ret)
            {
                HI_ERR_PVR("readCallBack failed,ret=%d\n",ret);
                return HI_FAILURE;
            }
        }
        else
        {
            ret = pChnAttr->readCallBack(&stDataAttr, demuxBuf.pu8Data, u32PhyAddr, (HI_U32)u64OffsetAdp, (HI_U32)u64LenAdp);
            if(HI_SUCCESS!=ret)
            {
                HI_ERR_PVR("readCallBack failed,ret=%d\n",ret);
                return HI_FAILURE;
            }
        }
    }

    /*if need to decrypt, decrypt it */
    if (pChnAttr->stUserCfg.stDecryptCfg.bDoCipher)
    {
        ret = HI_UNF_CIPHER_Decrypt(pChnAttr->hCipher, u32PhyAddr, u32PhyAddr, u32BytesSend);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("HI_UNF_CIPHER_Decrypt failed:%#x!\n", ret);
            return HI_FAILURE;
        }
    }

    /* none header or end, send u32BytesSend size data to ts buffer */
    u32BytesRealSend = u32BytesSend;
    u32StartPos = 0;
    if ((HI_UNF_PVR_PLAY_STATE_PLAY != pChnAttr->enState)
       &&  (HI_UNF_PVR_PLAY_STATE_SF != pChnAttr->enState)
       &&  (HI_UNF_PVR_PLAY_STATE_STEPF != pChnAttr->enState))
    {
        HI_INFO_PVR("===FF/FB:head=%d, end=%d\n", IsHead, IsEnd);
        if (IsHead)
        {
            PVRPlaySetTsHead(demuxBuf.pu8Data + cipherHead, headToAdd);
            u32BytesRealSend -= cipherHead;
            u32StartPos = cipherHead;
        }
        if(IsEnd)
        {
            PVRPlayAddTsEnd(demuxBuf.pu8Data, u32BytesSend - cipherEnd - endToAdd, endToAdd);
            u32BytesRealSend -= cipherEnd;
        }
    }
    else /* both normal play and slow play, send all stream,  no longer patch stream, just depart it at PVR_TS_LEN size times */
    {
        //HI_INFO_PVR("===PLAY:head=%d, end=%d\n", IsHead, IsEnd);
        if (IsHead)
        {
            u32BytesRealSend -= cipherHead;
            u32StartPos = cipherHead;
        }
        if (IsEnd && (endToAdd != 0))
        {
            u32BytesRealSend -= (cipherEnd + PVR_TS_LEN);
        }
    }
    //HI_INFO_PVR("====cipherHead:0x%x cipherEnd:0x%x, headToAdd:0x%x, endToAdd:0x%x \n", cipherHead, cipherEnd, headToAdd, endToAdd);
    //HI_INFO_PVR("====u32StartPos:0x%x u32BytesRealSend:0x%x, u64ReadOffset:0x%llx, u32BytesSend:0x%x \n", u32StartPos, u32BytesRealSend, u64ReadOffset, u32BytesSend);

    ret = HI_MPI_DMX_PutTSBuffer(pChnAttr->hTsBuffer, u32BytesRealSend, u32StartPos);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("HI_MPI_DMX_PutTSBuffer failed:%#x!\n", ret);
        return HI_FAILURE;
    }
    else
    {
        if (g_pvrfpSend)
        {
            fwrite(demuxBuf.pu8Data + u32StartPos, 1, u32BytesRealSend, g_pvrfpSend);
        }
    }

    return HI_SUCCESS;
}



STATIC INLINE HI_S32 PVRPlaySendData(PVR_PLAY_CHN_S *pChnAttr, HI_U64 offSet, HI_U32 bytesToSend)
{
    HI_S32   ret;
    HI_U32   alignSize;
    HI_S32   s32ReadTimes = 0;
    HI_U32   i;
    HI_U32 headToAdd;  /* distance from data start to TS header */
    HI_U32 endToAdd;   /* distance from data end to TS end */
    HI_U32 cipherHead; /* distance from start ts header forward to the closest cipher group(meanwhile, imply read position of O_DIRECT, too) */
    HI_U32 cipherEnd;  /* distance data end backward to the closest cipher group(meanwhile, imply read position of O_DIRECT, too) */
    HI_U64 u64ReadOffset;     /* read offset address of ts file*/

    if (0 == bytesToSend)
    {
        return HI_SUCCESS;
    }

    headToAdd = (HI_U32)(offSet % PVR_TS_LEN);
    endToAdd = PVR_TS_LEN - (HI_U32)((offSet + bytesToSend) % PVR_TS_LEN);

    cipherHead = (HI_U32)((offSet - headToAdd)  % PVR_CIPHER_PKG_LEN);
    cipherEnd = PVR_CIPHER_PKG_LEN - (HI_U32)((offSet + bytesToSend + endToAdd) % PVR_CIPHER_PKG_LEN);

    alignSize = bytesToSend + headToAdd + endToAdd + cipherHead + cipherEnd;

    u64ReadOffset = ((offSet - headToAdd) - cipherHead);

    /*
    HI_INFO_PVR("cur read pos:%llu, offset:%llu, cipherHead:%#x, bytesToSend:%#x, headToAdd:%#x alignSize:%#x!\n",
                u64ReadOffset,
                offSet,
                cipherHead,
                bytesToSend,
                headToAdd,
                alignSize); */

    //HI_INFO_PVR("%u = %u + %u + %u + %u + %u\n", alignSize ,bytesToSend , headToAdd, endToAdd , cipherHead , cipherEnd);

    /* per time send 256k byte, at last, send the not enough 256k byte along with the previous 256k byte */
    s32ReadTimes = (HI_S32)alignSize/PVR_PLAY_MAX_SEND_BUF_SIZE + 1;

    /* less than 512k byte, which need to deal with once */
    if (s32ReadTimes < 3)
    {
        ret = PVRPlaySendToTsBuffer(pChnAttr, u64ReadOffset, alignSize, HI_TRUE, HI_TRUE,
                    cipherHead, cipherEnd, headToAdd, endToAdd);

        return ret;
    }

    /* more than 512k byte, at first, send the first head */
    ret =  PVRPlaySendToTsBuffer(pChnAttr, u64ReadOffset, PVR_PLAY_MAX_SEND_BUF_SIZE,
                    HI_TRUE, HI_FALSE, cipherHead, cipherEnd, headToAdd, endToAdd);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    /*more than 512k byte, then send the middle block data*/
    for (i = 1; i < (HI_U32)s32ReadTimes-2; i++)
    {

        ret =  PVRPlaySendToTsBuffer(pChnAttr, u64ReadOffset + (HI_U64)i*PVR_PLAY_MAX_SEND_BUF_SIZE,
                    PVR_PLAY_MAX_SEND_BUF_SIZE, HI_FALSE, HI_FALSE,
                    cipherHead, cipherEnd, headToAdd, endToAdd);
        if (HI_SUCCESS != ret)
        {
            return ret;
        }

    }

    /*more  than 512k byte, send the last two block data, the last data less than or equal 256k(end) */
    ret =  PVRPlaySendToTsBuffer(pChnAttr, u64ReadOffset+(HI_U64)i*PVR_PLAY_MAX_SEND_BUF_SIZE,
                     alignSize - i*PVR_PLAY_MAX_SEND_BUF_SIZE, HI_FALSE, HI_TRUE,
                     cipherHead, cipherEnd, headToAdd, endToAdd);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    return HI_SUCCESS;
}

#endif

STATIC HI_S32 PVRPlaySendPrivatePacketToTsBuffer(PVR_PLAY_CHN_S *pChnAttr, HI_U32 u32DisPlayTime, HI_U32 u32Pid)
{
    HI_S32 ret;
    HI_U32 u32Bytes2Send = PVR_TS_LEN;
    HI_U32 u32PhyAddr;
    HI_UNF_STREAM_BUF_S DataBuf;
    HI_U8 u8PesPacket[41] = {0x00, 0x00, 0x01, 0xee, 0x00, 0x00, 0x80, 0x00, 0x00, 
                             0x00, 0x00, 0x01, 0x1E, 0x70, 0x76, 0x72, 0x63, 0x75, 0x72, 0x74, 0x6d, 
                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    
    ret = HI_MPI_DMX_GetTSBuffer(pChnAttr->hTsBuffer, u32Bytes2Send, &DataBuf, &u32PhyAddr, 0);
    while (HI_SUCCESS != ret)
    {
        if ((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop))
        {
            return HI_FAILURE;
        }

        if (HI_ERR_DMX_NOAVAILABLE_BUF != ret)
        {
            HI_ERR_PVR("HI_MPI_DMX_GetTSBuffer failed:%#x!\n", ret);
            return HI_FAILURE;
        }
        else
        {
            usleep(40000);
            if ((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop))
            {
                return HI_FAILURE;
            }

            ret = HI_MPI_DMX_GetTSBuffer(pChnAttr->hTsBuffer, u32Bytes2Send, &DataBuf, &u32PhyAddr, 0);
        }
    }
    
    memset(DataBuf.pu8Data, 0xff, DataBuf.u32Size);
    DataBuf.pu8Data[0] = 0x47;
    DataBuf.pu8Data[1] = (HI_U8)(((u32Pid & 0x1f00) >> 8) | 0x40);
    DataBuf.pu8Data[2] = (HI_U8)(u32Pid & 0xff);
    DataBuf.pu8Data[3] = 0x10;
    memcpy((void *)((HI_U32)u8PesPacket + 21), &u32DisPlayTime, sizeof(u32DisPlayTime));
    memcpy((void *)((HI_U32)u8PesPacket + 25), &(pChnAttr->stFrmTag), sizeof(PVR_FRAME_TAG_S));
    memcpy((void *)((HI_U32)DataBuf.pu8Data+4), u8PesPacket, sizeof(u8PesPacket));

    ret = HI_MPI_DMX_PutTSBuffer(pChnAttr->hTsBuffer, u32Bytes2Send, 0);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("HI_MPI_DMX_PutTSBuffer failed:%#x!\n", ret);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}


/*****************************************************************************
 Prototype       : PVRPlaySendAframe
 Description     : send one frame data to demux
 Input           : pChnAttr     **the attribute of play channel
                   pframe       ** frame index info
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_S32 PVRPlaySendAframe(PVR_PLAY_CHN_S  *pChnAttr, const PVR_INDEX_ENTRY_S *pframe)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U64 before_pos;
    HI_U32 size1;
    HI_U32 size2= 0;
    HI_U32 u32VidPid = 0x1fff;

    HI_ASSERT_RET(NULL != pframe);
    HI_ASSERT_RET(NULL != pChnAttr);

    if (0 == pframe->u32FrameSize) /* the abnormal, index file content is zero, AI7D02622 */
    {
        return HI_SUCCESS;
    }
    size1 = pframe->u32FrameSize;
    HI_INFO_PVR("Frame to send: Offset/Size/PTS(ms): %llu, %u, %u.\n",
                    pframe->u64Offset, pframe->u32FrameSize, pframe->u32PtsMs);

    if (pframe->u32FrameSize > PVR_PLAY_MAX_FRAME_SIZE)
    {
        HI_WARN_PVR("Frame size too large, drop it(Size:%u, offset=%llu).\n",
                    pframe->u32FrameSize, pframe->u64Offset);
        return HI_SUCCESS;
    }
    
    /* At present, only video support disptime TS packet */
    if (HI_SUCCESS == HI_UNF_AVPLAY_GetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID, &u32VidPid))
    {
        if (0x1fff != u32VidPid)
        {
#ifdef PVR_PROC_SUPPORT
            if ((1 == pChnAttr->stPlayProcInfo.u32PrintFlg) && 
                ((HI_UNF_PVR_PLAY_STATE_FF == pChnAttr->enState) ||
                 (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState)))
            {
                HI_ERR_PVR("Send frame disptime=%d frmtype=%d enableflg=%d distance=%d beforefirstfrm=%d gopnum=%d\n",  
                    pframe->u32DisplayTimeMs,
                    ((pframe->u16FrameTypeAndGop >> 14) & 0x3UL),
                    pChnAttr->stFrmTag.u32DispEnableFlag,
                    pChnAttr->stFrmTag.u32DispFrameDistance,
                    pChnAttr->stFrmTag.u32DistanceBeforeFirstFrame,
                    pChnAttr->stFrmTag.u32GopNum);
            }
#endif
            if (HI_SUCCESS != PVRPlaySendPrivatePacketToTsBuffer(pChnAttr, pframe->u32DisplayTimeMs, u32VidPid))  
            {
                HI_ERR_PVR("Send playing time packet fail.\n");
            }
        }
    }

#if 0  /* not need it, meanless to check it */
    /* if playing,repeat sending the beginning of stream one time.If rewind back, do not play*/
    /*CNcomment:处于播放状态，把码流开始的部分(第一帧之前)也发一下，只发一次，回退回来是不会再播放的 */
    if ((HI_UNF_PVR_PLAY_STATE_PLAY == pChnAttr->enState)
       // && (!PVR_INDEX_IS_REWIND(pChnAttr->IndexHandle))
        && (HI_FALSE == pChnAttr->bCAStreamHeadSent)
        && (0 != pframe->u64Offset))
    {
        HI_INFO_PVR("SEND:0->%llu.\n", pframe->u64Offset);

        /*send stream from the beginning of file to the beginning of the first frame*//*CNcomment:从文件开头送到第一帧开始 */
        ret |= PVRPlaySendData(pChnAttr, 0, (HI_U32)pframe->u64Offset);
        pChnAttr->bCAStreamHeadSent = HI_TRUE;

    }
#endif

    before_pos = pframe->u64Offset;

    if(pChnAttr->IndexHandle->stCycMgr.u64MaxCycSize > 0)
    {
        if (PVR_INDEX_IS_REWIND(pChnAttr->IndexHandle))
        {
            before_pos = pframe->u64Offset % PVR_INDEX_MAX_FILE_SIZE(pChnAttr->IndexHandle);

            if (before_pos + pframe->u32FrameSize > PVR_INDEX_MAX_FILE_SIZE(pChnAttr->IndexHandle)) /* stride rewind */
            {
                size1 = PVR_INDEX_MAX_FILE_SIZE(pChnAttr->IndexHandle) - before_pos;
                size2 = pframe->u32FrameSize - size1;
            }
        }
    }

    /* send frame data. if rewind, depart two and send it */
    ret = PVRPlaySendData(pChnAttr, before_pos, (HI_U32)size1);
    if ((size2) && (HI_SUCCESS == ret))
    {
        PVRPlaySendData(pChnAttr, (HI_U64)0, size2);
    }

    return HI_SUCCESS;
}

STATIC HI_S32 PVRPlaySendEmptyPacketToTsBuffer(PVR_PLAY_CHN_S *pChnAttr)
{
    HI_S32 ret;
    HI_U32 u32Bytes2Send = PVR_TS_LEN * 10;
    HI_U32 u32PhyAddr;
    HI_UNF_STREAM_BUF_S DataBuf;
    HI_U32 i;

    ret = HI_MPI_DMX_GetTSBuffer(pChnAttr->hTsBuffer, u32Bytes2Send, &DataBuf, &u32PhyAddr, 0);
    while (HI_SUCCESS != ret)
    {
        if ((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop))
        {
            return HI_FAILURE;
        }

        if (HI_ERR_DMX_NOAVAILABLE_BUF != ret)
        {
            HI_ERR_PVR("HI_MPI_DMX_GetTSBuffer failed:%#x!\n", ret);
            return HI_FAILURE;
        }
        else
        {
            usleep(40000);
            if ((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop))
            {
                return HI_FAILURE;
            }

            ret = HI_MPI_DMX_GetTSBuffer(pChnAttr->hTsBuffer, u32Bytes2Send, &DataBuf, &u32PhyAddr, 0);
        }
    }

    memset(DataBuf.pu8Data, 0xff, DataBuf.u32Size);
    for (i = 0; i < (u32Bytes2Send / PVR_TS_LEN); i++)
    {
        DataBuf.pu8Data[i * PVR_TS_LEN] = 0x47;
        DataBuf.pu8Data[i * PVR_TS_LEN + 1] = 0x1f;
        DataBuf.pu8Data[i * PVR_TS_LEN + 2] = 0xff;
        DataBuf.pu8Data[i * PVR_TS_LEN + 3] = 0x10;
    }

    ret = HI_MPI_DMX_PutTSBuffer(pChnAttr->hTsBuffer, u32Bytes2Send, 0);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("HI_MPI_DMX_PutTSBuffer failed:%#x!\n", ret);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVRPlayCheckError
 Description     : Check return value, if not success, trigger callback event
 Input           : pChnAttr  **
                   ret     **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/5/26
    Author       : q46153
    Modification : Created function

*****************************************************************************/
STATIC INLINE HI_VOID PVRPlayCheckError(const PVR_PLAY_CHN_S  *pChnAttr,  HI_S32 ret)
{
    if (HI_SUCCESS  == ret)
    {
        return;
    }

    /* after pause, stop play, notice error play event, AI7D02621 */
    if (HI_ERR_DMX_NOAVAILABLE_BUF == ret
        || HI_ERR_DMX_NOAVAILABLE_DATA == ret)
    {
        return;
    }

    HI_INFO_PVR("====callback occured, ret=0x%x\n", ret);
    switch (ret)
    {
        case HI_ERR_PVR_FILE_TILL_END:
            if (PVR_Rec_IsFileSaving(pChnAttr->stUserCfg.szFileName))
            {
                PVR_Intf_DoEventCallback(pChnAttr->u32chnID, HI_UNF_PVR_EVENT_PLAY_REACH_REC, 0);
                pChnAttr->IndexHandle->u32TimeShiftTillEndCnt = 0;
            }
            else
            {
                PVR_Intf_DoEventCallback(pChnAttr->u32chnID, HI_UNF_PVR_EVENT_PLAY_EOF, 0);
                pChnAttr->IndexHandle->u32TimeShiftTillEndCnt = 0;
            }
            break;
        case HI_ERR_PVR_FILE_TILL_START:
            //if (!PVR_Rec_IsFileSaving(pChnAttr->stUserCfg.szFileName))
            {
                PVR_Intf_DoEventCallback(pChnAttr->u32chnID, HI_UNF_PVR_EVENT_PLAY_SOF, 0);
            }
            break;
        default:
            PVR_Intf_DoEventCallback(pChnAttr->u32chnID, HI_UNF_PVR_EVENT_PLAY_ERROR, ret);
    }

    return;
}

/* play catch up to the record, how long wait to retry */
/*
STATIC INLINE HI_U32 PVRPlayCalcWaitTimeForPlayEnd(PVR_PLAY_CHN_S  *pChnAttr)
{
#define PVR_MIN_HDD_SIZE  10000
#define PVR_MID_HDD_SIZE  400000
#define PVR_DFT_WAIT_TIME 40000

    HI_U32 u32BufSizeHdd = 0;
    HI_U32 u32WaitTime = 0;
    HI_S32 ret = 0;
    HI_UNF_DMX_TSBUF_STATUS_S  tsBufStatus;

    ret = HI_UNF_DMX_GetTSBufferStatus(pChnAttr->hTsBuffer, &tsBufStatus);
    if (HI_SUCCESS != ret)
    {
        return PVR_DFT_WAIT_TIME;
    }
    u32BufSizeHdd = tsBufStatus.u32UsedSize;
    if (u32BufSizeHdd < PVR_MIN_HDD_SIZE)
        u32WaitTime = (800000 - u32BufSizeHdd);
    else if (u32BufSizeHdd >= PVR_MIN_HDD_SIZE && u32BufSizeHdd < PVR_MID_HDD_SIZE)
        u32WaitTime = (800000 - u32BufSizeHdd) / 100;
    else
        u32WaitTime = 1000;

    return u32WaitTime;
}

*/
#if 1
/* when fast forward and backward, calculate the continual time of current frame by next frame
  return : wait time
      0, no need to wait
      -1, next frame will not output
      other value, the vale need to wait, in millisecond.

   calculate the frame bumber by between I frame, and then get the display time by frame-rate, last, calculate the send frame delay of trick mode play

*/

STATIC INLINE HI_S32 PVRPlayCalcCurFrmStayTime(PVR_PLAY_CHN_S  *pChnAttr, PVR_INDEX_ENTRY_S *pNextFrame)
{
    HI_U32 u32NextPlayTimeMs;
    HI_S32 speedx;

    /* when next frame is the first frame, not need to wait, and set next frame to the reference frame */
    if (PVR_INDEX_INVALID_PTSMS == pChnAttr->stTplayCtlInfo.u32RefFrmPtsMs)
    {
        PVR_INDEX_LOCK(&pChnAttr->IndexHandle->stMutex);
        pChnAttr->stTplayCtlInfo.u32RefFrmSysTimeMs = pNextFrame->u32DisplayTimeMs;///PVRIndexGetCurTimeMs();
        pChnAttr->stTplayCtlInfo.u32RefFrmPtsMs = pNextFrame->u32PtsMs;
        pChnAttr->IndexHandle->u32FrameDistance = 0;
        PVR_INDEX_UNLOCK(&pChnAttr->IndexHandle->stMutex);
        return 0;
    }

    /* fast forward state */
    if (HI_UNF_PVR_PLAY_STATE_FF == pChnAttr->enState)
    {
        PVR_INDEX_LOCK(&pChnAttr->IndexHandle->stMutex);
        speedx = pChnAttr->enSpeed / HI_UNF_PVR_PLAY_SPEED_NORMAL;
        u32NextPlayTimeMs = (pChnAttr->IndexHandle->u32FrameDistance*PVR_TPLAY_MIN_FRAME_RATE)/(HI_U32)speedx;
        if(u32NextPlayTimeMs < PVR_TPLAY_FRAME_SHOW_TIME)
        {
            HI_INFO_PVR("drop a frame, NextPlayTimeMs %u, FrameDistance %u, Pts:%u, ReadFrame %u\n",
                u32NextPlayTimeMs,
                pChnAttr->IndexHandle->u32FrameDistance,
                pNextFrame->u32PtsMs,
                pChnAttr->IndexHandle->u32ReadFrame);

            //pChnAttr->IndexHandle->u32FrameDistance = 0;
	        PVR_INDEX_UNLOCK(&pChnAttr->IndexHandle->stMutex);
            return -1;
        }
        else
        {
            HI_INFO_PVR("---------FF:u32NextPlayTimeMs %d,u32FrameDistance %d,u32PtsMs %d,u32ReadFrame %d\n",
                u32NextPlayTimeMs,
                pChnAttr->IndexHandle->u32FrameDistance,
                pNextFrame->u32PtsMs,
                pChnAttr->IndexHandle->u32ReadFrame);

            pChnAttr->IndexHandle->u32FrameDistance = pChnAttr->IndexHandle->u32FrameDistance % (HI_U32)speedx;
	        PVR_INDEX_UNLOCK(&pChnAttr->IndexHandle->stMutex);
            return (HI_S32)u32NextPlayTimeMs;
        }
    }

    /*fast backward state */
    if (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState)
    {
        PVR_INDEX_LOCK(&pChnAttr->IndexHandle->stMutex);
        speedx = (0 - pChnAttr->enSpeed) / HI_UNF_PVR_PLAY_SPEED_NORMAL;
        u32NextPlayTimeMs = (pChnAttr->IndexHandle->u32FrameDistance*PVR_TPLAY_MIN_FRAME_RATE)/(HI_U32)speedx;
        if(u32NextPlayTimeMs < PVR_TPLAY_FRAME_SHOW_TIME)
        {
            HI_INFO_PVR("less than min distance, drop a frame, NextPlayTimeMs %d, FrameDistance %d,PtsMs %d, ReadFrame %d\n",
                u32NextPlayTimeMs,
                pChnAttr->IndexHandle->u32FrameDistance,
                pNextFrame->u32PtsMs,
                pChnAttr->IndexHandle->u32ReadFrame);

            //pChnAttr->IndexHandle->u32FrameDistance = 0;
	        PVR_INDEX_UNLOCK(&pChnAttr->IndexHandle->stMutex);
            return -1;
        }
        else
        {
            HI_INFO_PVR("----------FB:u32NextPlayTimeMs %d,u32FrameDistance %d,u32PtsMs %d,u32ReadFrame %d\n",
                u32NextPlayTimeMs,
                pChnAttr->IndexHandle->u32FrameDistance,
                pNextFrame->u32PtsMs,
                pChnAttr->IndexHandle->u32ReadFrame);

            pChnAttr->IndexHandle->u32FrameDistance = pChnAttr->IndexHandle->u32FrameDistance % (HI_U32)speedx;
	        PVR_INDEX_UNLOCK(&pChnAttr->IndexHandle->stMutex);
            return (HI_S32)u32NextPlayTimeMs;
        }
    }
    HI_ERR_PVR("invalid state.\n");
    return -1;
}

#endif

#if 0
/*according to next frame, calculate the last time of current frame when forward play or rewind play *//*CNcomment:快进和快退时根据下一帧情况，计算当前帧需要持续时间*/

STATIC INLINE HI_S32 PVRPlayCalcCurFrmStayTime(PVR_PLAY_CHN_S  *pChnAttr, PVR_INDEX_ENTRY_S *pNextFrame)
{
    HI_U32 u32CurPlayTimeMs;
    HI_U32 u32NextPlayTimeMs;
    HI_S32 speedx;

    /*if the next frame is the first frame,do not wait and set next frame to refrence frame*//*CNcomment:下一帧为第一帧不等待，并将下一帧设置为参考帧*/
    if (PVR_INDEX_INVALID_PTSMS == pChnAttr->stTplayCtlInfo.u32RefFrmPtsMs)
    {
        pChnAttr->stTplayCtlInfo.u32RefFrmPtsMs = pNextFrame->u32DisplayTimeMs;
        pChnAttr->stTplayCtlInfo.u32RefFrmSysTimeMs = PVRIndexGetCurTimeMs();
        return 0;
    }

    /*system time of current program played already *//*CNcomment: 当前节目已经播放的系统时间*/
    u32CurPlayTimeMs = PVRIndexGetCurTimeMs() - pChnAttr->stTplayCtlInfo.u32RefFrmSysTimeMs;

    /*forward *//*CNcomment:快进状态*/
    if (HI_UNF_PVR_PLAY_STATE_FF == pChnAttr->enState)
    {
        speedx = pChnAttr->enSpeed / HI_UNF_PVR_PLAY_SPEED_NORMAL;
        u32NextPlayTimeMs = (pNextFrame->u32DisplayTimeMs - pChnAttr->stTplayCtlInfo.u32RefFrmPtsMs)
                / speedx;

        /* if frame's time less than 40ms,do not play *//*CNcomment: 以内的帧就不播了 */
        if (u32NextPlayTimeMs < (u32CurPlayTimeMs + PVR_TPLAY_MIN_DISTANCE))
        {
            HI_INFO_PVR("less than min distance, donn't send this frame, PTS=%u, playtime=%d, cur+%d=%d.\n",
                pNextFrame->u32DisplayTimeMs, u32NextPlayTimeMs, PVR_TPLAY_MIN_DISTANCE,
                (u32CurPlayTimeMs + PVR_TPLAY_MIN_DISTANCE));
            return -1;
        }
        else
        {
            HI_INFO_PVR("FF: 1st frm:%u, cur frm:%u,  cur time:%u, nxt time:%u.\n",
                pChnAttr->stTplayCtlInfo.u32RefFrmPtsMs, pNextFrame->u32DisplayTimeMs,
                u32CurPlayTimeMs, u32NextPlayTimeMs);
            HI_INFO_PVR("u32NextPlayTimeMs %d,u32ReadFrame %d\n",(u32NextPlayTimeMs - u32CurPlayTimeMs),pChnAttr->IndexHandle->u32ReadFrame);
            return (u32NextPlayTimeMs - u32CurPlayTimeMs);
        }
    }

    /*rewind  *//*CNcomment: 快退状态*/
    if (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState)
    {
        speedx = (0 - pChnAttr->enSpeed) / HI_UNF_PVR_PLAY_SPEED_NORMAL;
        u32NextPlayTimeMs = (pChnAttr->stTplayCtlInfo.u32RefFrmPtsMs - pNextFrame->u32DisplayTimeMs)
                / speedx;

        if (u32NextPlayTimeMs < (u32CurPlayTimeMs + PVR_TPLAY_MIN_DISTANCE))
        {
            HI_INFO_PVR("less than min distance, donn't send this frame, PTS=%d.\n", pNextFrame->u32DisplayTimeMs);
            return -1;
        }
        else
        {

            return (u32NextPlayTimeMs - u32CurPlayTimeMs);
        }
    }

    HI_ERR_PVR("invalid state.\n");
    return -1;
}

#endif

/* seek the read pointer of index to the output one frame, so that, seek or play state can get the correct reference position*/
STATIC INLINE HI_S32 PVRPlaySeekToCurFrame(PVR_INDEX_HANDLE handle, PVR_PLAY_CHN_S  *pChnAttr,
            HI_UNF_PVR_PLAY_STATE_E enCurState, HI_UNF_PVR_PLAY_STATE_E enNextState)
{
    HI_S32 ret;
    HI_U32 u32SeekToPTS;
    HI_U32 u32SeekToTime;
    HI_U32 IsForword;
    HI_U32 IsNextForword;
    HI_UNF_AVPLAY_STATUS_INFO_S stInfo;
    HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S stAvplayPrivInfo;

    memset(&stAvplayPrivInfo, 0, sizeof(HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S));
	memset(&stInfo, 0, sizeof(HI_UNF_AVPLAY_STATUS_INFO_S));
    if (HI_UNF_PVR_PLAY_STATE_INVALID == pChnAttr->enState)
    {
        HI_ERR_PVR("Can not seek to current play frame when state is invalid!\n");
        return HI_FAILURE;
    }

    if (HI_UNF_PVR_PLAY_STATE_STEPF == pChnAttr->enState)
    {
        PVRPlaySyncTrickPlayTime(pChnAttr);
    }

	/* if current play to the start or end of file, seek it to start or end directly. no longer find it by current frame. */
    if (pChnAttr->bEndOfFile)
    {
        if (pChnAttr->bTillStartOfFile)
        {
            return PVR_Index_SeekToStart(handle);
        }
        else
        {
            return PVR_Index_SeekToEnd(handle);
        }
    }
        
    if (PVR_Rec_IsFileSaving(pChnAttr->stUserCfg.szFileName) && 
        (HI_UNF_PVR_PLAY_STATE_INIT == pChnAttr->enLastState))
    {
        if ((HI_UNF_PVR_PLAY_STATE_FB == enCurState)
            || (HI_UNF_PVR_PLAY_STATE_STEPB == enCurState))
        {
            IsForword = 1;
        }
        else
        {
            IsForword = 0;
        }

        if ((HI_UNF_PVR_PLAY_STATE_FB == enNextState)
            || (HI_UNF_PVR_PLAY_STATE_STEPB == enNextState))
        {
            IsNextForword = 1;
        }
        else
        {
            IsNextForword = 0;
        }

        ret = HI_UNF_AVPLAY_GetStatusInfo(pChnAttr->hAvplay, &stInfo);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("HI_UNF_AVPLAY_GetStatusInfo failed!\n");
            return HI_FAILURE;
        }

        if (PVR_INDEX_IS_TYPE_AUDIO(handle))
        {
             u32SeekToPTS = stInfo.stSyncStatus.u32LocalTime;
        }
        else
        {
             u32SeekToPTS = stInfo.stSyncStatus.u32LastVidPts;
        }
    	/* evade case */
        if ((PVR_INDEX_INVALID_PTSMS == u32SeekToPTS)||((stInfo.stSyncStatus.u32LastVidPts-stInfo.stSyncStatus.u32FirstVidPts)<500))
        {
            HI_WARN_PVR("current pts invalid(-1), do not seek to it!\n");
            return HI_SUCCESS;
        }

        ret = PVR_Index_SeekToPTS(handle, u32SeekToPTS, IsForword, IsNextForword);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("PVR_Index_SeekToPTS not found the PTS failed!\n");
            return HI_FAILURE;
        }
    }
    else
    {
        ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO, (void *)&stAvplayPrivInfo);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("Get Avplay private info fail.\n");
        }
        u32SeekToTime = stAvplayPrivInfo.u32LastPlayTime;
        pChnAttr->u32CurPlayTimeMs = stAvplayPrivInfo.u32LastPlayTime;

        ret = PVR_Index_SeekToTime(handle, u32SeekToTime);
        
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("PVR_Index_SeekToTime not found the time failed!\n");
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

/* reset buffer and player, seek ts position to the current play frame, if that frame invalid, mean to reset it already, the decoder no longer reset it */
STATIC INLINE HI_S32 PVRPlayResetToCurFrame(PVR_INDEX_HANDLE handle, PVR_PLAY_CHN_S  *pChnAttr, HI_UNF_PVR_PLAY_STATE_E enNextState)
{
    HI_S32 ret = HI_SUCCESS;
    HI_UNF_PVR_PLAY_STATE_E enPreState;

    /* failed to get current frame, no longer reset player and ts buffer, imply has reset it already*/
    if (HI_UNF_PVR_PLAY_STATE_PAUSE == pChnAttr->enState)
    {
        //enPreState = pChnAttr->enLastState;        
        ret = HI_SUCCESS;
    }
    else
    {
        enPreState = pChnAttr->enState;
        ret = PVRPlaySeekToCurFrame(pChnAttr->IndexHandle, pChnAttr, enPreState, enNextState);
    }

    if (HI_SUCCESS == ret)
    {
        HI_INFO_PVR("to reset buffer and player.\n");
        PVR_Index_ChangePlayMode(pChnAttr->IndexHandle);


        pChnAttr->bTsBufReset = HI_TRUE;
        ret = HI_UNF_DMX_ResetTSBuffer(pChnAttr->hTsBuffer);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("ts buffer reset failed!\n");
            return HI_FAILURE;
        }

        ret = HI_UNF_AVPLAY_Reset(pChnAttr->hAvplay, NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("AVPLAY reset failed!\n");
            return HI_FAILURE;
        }
    }

    pChnAttr->IndexHandle->u32TimeShiftTillEndCnt = 0;

    UNUSED(handle);
    return HI_SUCCESS;
}

STATIC INLINE HI_S32 PVRPlayAvplaySyncCtrl(PVR_PLAY_CHN_S  *pChnAttr, HI_U32 u32AVSyncEnFlag)
{
    HI_UNF_SYNC_ATTR_S          stSyncAttr;
    HI_UNF_AVPLAY_STOP_OPT_S    stStopOpt;
    HI_U32 u32VidPid = 0x1fff;
    HI_U32 u32AudPid = 0x1fff;
    HI_UNF_AVPLAY_MEDIA_CHAN_E enMediaChn = (HI_UNF_AVPLAY_MEDIA_CHAN_E)0;
    
    stStopOpt.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    stStopOpt.u32TimeoutMs = 0;

    //lint -e655
    if (HI_SUCCESS == HI_UNF_AVPLAY_GetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID, &u32VidPid))
    {
        if (0x1fff != u32VidPid)
        {
            enMediaChn |= HI_UNF_AVPLAY_MEDIA_CHAN_VID;
        }
    }
    if (HI_SUCCESS == HI_UNF_AVPLAY_GetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &u32AudPid))
    {
        if (0x1fff != u32AudPid)
        {
            enMediaChn |= HI_UNF_AVPLAY_MEDIA_CHAN_AUD;
        }
    }
    //lint +e655
    
    if ((HI_UNF_AVPLAY_MEDIA_CHAN_E)0 == enMediaChn)
    {
        HI_ERR_PVR("No Vpid and Apid!\n");
        return HI_FAILURE;
    }
    
    if (HI_SUCCESS != HI_UNF_AVPLAY_GetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &stSyncAttr))
        return HI_FAILURE;

    if((0 == u32AVSyncEnFlag)&&(HI_UNF_SYNC_REF_NONE == stSyncAttr.enSyncRef))
        return HI_SUCCESS;
    if((1 == u32AVSyncEnFlag)&&(HI_UNF_SYNC_REF_AUDIO == stSyncAttr.enSyncRef))
        return HI_SUCCESS;
    
    if (HI_SUCCESS != HI_UNF_AVPLAY_Stop(pChnAttr->hAvplay, enMediaChn, &stStopOpt))
        return HI_FAILURE;
    
    stSyncAttr.enSyncRef = (0 == u32AVSyncEnFlag) ? HI_UNF_SYNC_REF_NONE : HI_UNF_SYNC_REF_AUDIO;
    
    if (HI_SUCCESS != HI_UNF_AVPLAY_SetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &stSyncAttr))
    {
        (void)HI_UNF_AVPLAY_Start(pChnAttr->hAvplay, enMediaChn, HI_NULL);
        return HI_FAILURE;
    }
    
    if (HI_SUCCESS != HI_UNF_AVPLAY_Start(pChnAttr->hAvplay, enMediaChn, HI_NULL))
        return HI_FAILURE;
    
    return HI_SUCCESS;
}

STATIC INLINE HI_S32 PVRPlayCheckIfTsOverByRec(PVR_PLAY_CHN_S  *pChnAttr)
{
    HI_S32 ret;

    if (PVR_Index_QureyClearRecReachPlay(pChnAttr->IndexHandle))
    {
        if (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState) /* ts over play when FB, generate a SOF event */
        {
            return HI_ERR_PVR_FILE_TILL_START;
        }

        PVR_Index_SeekToStart(pChnAttr->IndexHandle);
        pChnAttr->bTsBufReset = HI_TRUE;
        ret = HI_UNF_DMX_ResetTSBuffer(pChnAttr->hTsBuffer);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("ts buffer reset failed!\n");
            return ret;
        }

        ret = HI_UNF_AVPLAY_Reset(pChnAttr->hAvplay, NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("AVPLAY reset failed!\n");
            return ret;
        }
    }

    return HI_SUCCESS;
}

STATIC INLINE HI_S32 PVRPlayIsChnTplay(HI_U32 u32Chn)
{
    PVR_PLAY_CHN_S  *pChnAttr;

    PVR_PLAY_CHECK_INIT(&g_stPlayInit);

    PVR_PLAY_CHECK_CHN(u32Chn);
    pChnAttr = &g_stPvrPlayChns[u32Chn];
    PVR_PLAY_CHECK_CHN_INIT(pChnAttr->enState);

    if ( pChnAttr->enState > HI_UNF_PVR_PLAY_STATE_PAUSE
        && pChnAttr->enState < HI_UNF_PVR_PLAY_STATE_STOP)
    {
        return HI_SUCCESS;
    }
    else
    {
        return HI_ERR_PVR_PLAY_INVALID_STATE;
    }
}

/*
check if the frame to play is saved to ts file
*/
STATIC INLINE HI_BOOL PVRPlayIsTsSaved(PVR_PLAY_CHN_S *pChnAttr, PVR_INDEX_ENTRY_S *pFrameToPlay)
{
    if (pChnAttr->IndexHandle->bIsRec)
    {
        if (pChnAttr->IndexHandle->u64FileSizeGlobal >= (HI_U64)pFrameToPlay->u64GlobalOffset)
        {
            return HI_TRUE;
        }
        else
        {
            HI_ERR_PVR("Play Over Rec when timeshift: R/W/Real: %lld, %llu, %llu.\n",pFrameToPlay->u64GlobalOffset,pChnAttr->IndexHandle->u64GlobalOffset, pChnAttr->IndexHandle->u64FileSizeGlobal );
            return HI_FALSE;
        }
    }
    else
    {
        return HI_TRUE;
    }
}

STATIC INLINE HI_S32 PVRPlayGetCurPlayPts(PVR_PLAY_CHN_S  *pChnAttr, HI_U32 *pu32CurPlayPts)
{
    HI_UNF_AVPLAY_STATUS_INFO_S stInfo;
    PVR_INDEX_ENTRY_S  frame_tmp ={0}; 
    HI_U32 u32LoopTime = 0;
    HI_S32 ret = 0;
    do
    {
        ret = HI_UNF_AVPLAY_GetStatusInfo(pChnAttr->hAvplay, &stInfo);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("HI_UNF_AVPLAY_GetStatusInfo failed!\n");
           
            return HI_FAILURE;
        }
        
        if (PVR_INDEX_IS_TYPE_AUDIO(pChnAttr->IndexHandle))  
            *pu32CurPlayPts = stInfo.stSyncStatus.u32LocalTime;
        else
            *pu32CurPlayPts = stInfo.stSyncStatus.u32LastVidPts;
        
        u32LoopTime ++;  
        if (PVR_INDEX_INVALID_PTSMS == *pu32CurPlayPts)
        {
            if (u32LoopTime > 10)
            {
                HI_WARN_PVR("Get invalid current pts %d from HI_UNF_AVPLAY_GetStatusInfo\n", *pu32CurPlayPts);
                break;
            }
            usleep(100*1000);
        }
        
    } while(PVR_INDEX_INVALID_PTSMS == *pu32CurPlayPts);

    if (PVR_INDEX_INVALID_PTSMS == *pu32CurPlayPts)
    {
        ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &frame_tmp, pChnAttr->IndexHandle->u32ReadFrame);
        if(HI_SUCCESS != ret)
        {
            if(HI_ERR_PVR_FILE_TILL_END == ret)
            {
                if(HI_SUCCESS != PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &frame_tmp, --pChnAttr->IndexHandle->u32ReadFrame))
                {
                    HI_INFO_PVR("get the %d entry fail.\n", pChnAttr->IndexHandle->u32ReadFrame);
                    return HI_FAILURE;
                }
            }
        }
        *pu32CurPlayPts = frame_tmp.u32PtsMs;
    }

    return HI_SUCCESS;
}

void PVRPlaySyncTrickPlayTime(PVR_PLAY_CHN_S *pChnAttr)
{
    HI_S32 ret = 0;
    HI_U32 u32CurFrmTimeMs = 0;
    HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S stAvplayPrivInfo = {0};

    ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO, &stAvplayPrivInfo);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("Get Avplay private info fail.\n");
        return;
    }

    u32CurFrmTimeMs = stAvplayPrivInfo.u32LastPlayTime;
                        
    if(u32CurFrmTimeMs > pChnAttr->u32CurPlayTimeMs)
    {
        if ((u32CurFrmTimeMs - pChnAttr->u32CurPlayTimeMs)>1000)
        {
            pChnAttr->u32CurPlayTimeMs = u32CurFrmTimeMs;
        }
    }
    else if(u32CurFrmTimeMs < pChnAttr->u32CurPlayTimeMs)
    {
        if ((pChnAttr->u32CurPlayTimeMs - u32CurFrmTimeMs)>1000)
        {
            pChnAttr->u32CurPlayTimeMs = u32CurFrmTimeMs;
        }
    }
}

static INLINE void PVRPlayAnalysisStream(PVR_PLAY_CHN_S *pChnAttr)
{
    HI_U32 u32VideoType = 0;
    HI_U32 u32PreReadCnt = 0x400;
    HI_U32 u32StartFrm=0, u32EndFrm=0, u32LastFrm=0, u32TotalFrm=0;
    HI_U32 i = 0;
    HI_U32 u32NalHeader;
    PVR_INDEX_ENTRY_S stEntry;

    memset(&stEntry,0 ,sizeof(PVR_INDEX_ENTRY_S));
	
    u32VideoType = PVR_Index_GetVtype(pChnAttr->IndexHandle);
    u32VideoType -= 100;

    if(HI_UNF_VCODEC_TYPE_H264 != u32VideoType)
    {
        return;
    }

    u32StartFrm = pChnAttr->IndexHandle->stCycMgr.u32StartFrame;
    u32EndFrm = pChnAttr->IndexHandle->stCycMgr.u32EndFrame;
    u32LastFrm = pChnAttr->IndexHandle->stCycMgr.u32LastFrame;

    if(u32StartFrm > u32EndFrm)
    {
	    u32TotalFrm = u32EndFrm + u32LastFrm - u32StartFrm;
    }
    else
    {
	    u32TotalFrm = u32LastFrm - u32StartFrm;
    }

    if (u32TotalFrm < u32PreReadCnt)
    {
        u32PreReadCnt = u32TotalFrm;
    }

    pChnAttr->u32GopNumOfStart = (u32PreReadCnt << 16);
    for(i = u32StartFrm; i < (u32StartFrm + u32PreReadCnt); i++)
    {
        u32NalHeader = 0;
        
        if (HI_SUCCESS != PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stEntry, i))
        {
            HI_ERR_PVR("Get IndexEntry fail, Can't Analysis anymore.\n");
            return;
        }

        if (PVR_INDEX_is_Pframe(&stEntry))
        {
            continue;
        }
    
        if (sizeof(u32NalHeader) != PVR_PREAD64((HI_U8 *)&u32NalHeader, sizeof(u32NalHeader), pChnAttr->s32DataFile, stEntry.u64Offset))
        {
            HI_ERR_PVR("Get Stream ES head fail, Can't Analysis anymore.\n");
            return;
        }

        u32NalHeader = (u32NalHeader >> 24);

        if (PVR_INDEX_is_Iframe(&stEntry))
        {
            if(1 != pChnAttr->stVdecCtrlInfo.u32IDRFlag)
            {
                if (5 == (u32NalHeader & 0x1f))
                {
                    pChnAttr->stVdecCtrlInfo.u32IDRFlag = 1;
                    HI_WARN_PVR("The playing stream's I frame has IDR\n");
                }
            }

            pChnAttr->u32GopNumOfStart++;
        }
        
        if ((PVR_INDEX_is_Bframe(&stEntry)) && (1 != pChnAttr->stVdecCtrlInfo.u32BFrmRefFlag))
        {
            if (0 != ((u32NalHeader >> 5) & 3))
            {
                pChnAttr->stVdecCtrlInfo.u32BFrmRefFlag = 1;
                HI_WARN_PVR("The playing stream's B frame can be reference\n");
            }
        }

        /*if((0 != pChnAttr->stVdecCtrlInfo.u32IDRFlag) && (0 != pChnAttr->stVdecCtrlInfo.u32BFrmRefFlag))  
        {
            break;
        }*/
        
        if((u32StartFrm > u32EndFrm) && ((u32StartFrm + u32PreReadCnt) > u32LastFrm) && (i == (u32LastFrm - 1)))
        {
            u32PreReadCnt = u32PreReadCnt - (u32LastFrm - u32StartFrm);
            i = 0;
            u32StartFrm = 0;
        }
    }
}

STATIC INLINE HI_BOOL  PVRPlayCheckFBTillStartInRewind(PVR_PLAY_CHN_S  *pChnAttr)
{
    PVR_INDEX_ENTRY_S stStartFrame = {0};
    HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S stAvplayPrivInfo = {0};
    HI_U32 u32CurFrmTimeMs=0;
    HI_S32 s32Ret = 0;
    
    memset(&stStartFrame, 0, sizeof(PVR_INDEX_ENTRY_S));

    s32Ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO, &stAvplayPrivInfo);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_PVR("Get Avplay private info fail.\n");
        return HI_FALSE;
    }
    else
    {
        u32CurFrmTimeMs = stAvplayPrivInfo.u32LastPlayTime;
    }
        
    s32Ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stStartFrame, pChnAttr->IndexHandle->stCycMgr.u32StartFrame);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_PVR("Can't get EndFrame:%d\n", pChnAttr->IndexHandle->u32ReadFrame);
        return HI_FALSE;
    }

    if (u32CurFrmTimeMs <= stStartFrame.u32DisplayTimeMs)
    {
        return HI_TRUE;
    }

    return HI_FALSE;
}


STATIC INLINE HI_BOOL PVRPlayCheckFFTillEnd(PVR_PLAY_CHN_S *pChnAttr)
{
	PVR_INDEX_ENTRY_S stEndFrame = {0}, stStartFrame = {0};
	HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S stAvplayPrivInfo = {0};
	HI_U32 u32CurFrmTimeMs = 0;
	HI_S32 s32Ret = 0;
    HI_U32 u32EndTimeGap = 2000;

	memset(&stEndFrame, 0, sizeof(PVR_INDEX_ENTRY_S));

    s32Ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO, &stAvplayPrivInfo);
	if (HI_SUCCESS != s32Ret)
	{
		HI_ERR_PVR("Get Avplay private info fail.\n");
		return HI_FALSE;
	}
	else
	{
		u32CurFrmTimeMs = stAvplayPrivInfo.u32LastPlayTime;
	}

	s32Ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stEndFrame, pChnAttr->IndexHandle->stCycMgr.u32EndFrame);
	if (HI_SUCCESS != s32Ret)
	{
		 if(HI_ERR_PVR_FILE_TILL_END == s32Ret)
		 {
		 	if (HI_SUCCESS != PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stEndFrame, (pChnAttr->IndexHandle->stCycMgr.u32EndFrame - 1)))
		    {
				HI_ERR_PVR("Can't get EndFrame:%d\n", (pChnAttr->IndexHandle->stCycMgr.u32EndFrame - 1));
				return HI_FALSE;
		    }
		 }
	}
    
    if (pChnAttr->IndexHandle->stCycMgr.u32EndFrame <= pChnAttr->IndexHandle->stCycMgr.u32StartFrame) 
    {
        (void)PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stStartFrame, pChnAttr->IndexHandle->stCycMgr.u32StartFrame);
        if (stEndFrame.u32DisplayTimeMs < stStartFrame.u32DisplayTimeMs)
        {
		 	if (HI_SUCCESS != PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stEndFrame, (pChnAttr->IndexHandle->stCycMgr.u32EndFrame - 1)))
		    {
				HI_ERR_PVR("Can't get EndFrame:%d\n", (pChnAttr->IndexHandle->stCycMgr.u32EndFrame - 1));
				return HI_FALSE;
		    }
        }
    }

    switch(pChnAttr->enSpeed)
    {
        case HI_UNF_PVR_PLAY_SPEED_2X_FAST_FORWARD:
            u32EndTimeGap = 1000;
            break;
        case HI_UNF_PVR_PLAY_SPEED_4X_FAST_FORWARD:
            u32EndTimeGap = 2000;
            break;
        case HI_UNF_PVR_PLAY_SPEED_8X_FAST_FORWARD:
            u32EndTimeGap = 2000;
            break;
        case HI_UNF_PVR_PLAY_SPEED_16X_FAST_FORWARD:
            u32EndTimeGap = 4000;
            break;
        case HI_UNF_PVR_PLAY_SPEED_32X_FAST_FORWARD:
            u32EndTimeGap = 4000;
            break;
        default:
            break;
    };

	pChnAttr->IndexHandle->u32TimeShiftTillEndCnt++;

    HI_WARN_PVR("EndTime=%d CurTime=%d TimeGap=%d TillEndCnt=%d\n", 
                 stEndFrame.u32DisplayTimeMs, u32CurFrmTimeMs, u32EndTimeGap, pChnAttr->IndexHandle->u32TimeShiftTillEndCnt);
	if(((u32CurFrmTimeMs+u32EndTimeGap) >= stEndFrame.u32DisplayTimeMs) || 
        (pChnAttr->IndexHandle->u32TimeShiftTillEndCnt >= 5))
	{
		return HI_TRUE;
	}

	return HI_FALSE;
}

STATIC INLINE void PVRPlayProcessLastPlayingFrames(PVR_PLAY_CHN_S *pChnAttr)
{
    HI_S32 s32Ret = 0;
    HI_U32 i = 0;
    HI_U32 u32FirstFrmNum = 0,u32EndFrmNum = 0;
    HI_U32 u32LastGopSize = 0;
    HI_U32 u32FirstFrmMoveCnt = 0;
    PVR_INDEX_ENTRY_S stEndEntry = {0},stLastIEntry = {0},stFirstIEntry = {0};
    PVR_INDEX_ENTRY_S *pSendEntryTmp = (PVR_INDEX_ENTRY_S *)NULL;

    if (0 < pChnAttr->enSpeed)
    {
        u32EndFrmNum = pChnAttr->IndexHandle->stCycMgr.u32EndFrame;

        s32Ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stEndEntry, u32EndFrmNum);
        if (HI_SUCCESS != s32Ret)
        {
            if(HI_ERR_PVR_FILE_TILL_END == s32Ret)
            {
                if (HI_SUCCESS != PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stEndEntry, --u32EndFrmNum))
                {
                    HI_WARN_PVR("Can't get the end index entry.");
                    return;
                }
            }
            else
            {
                HI_WARN_PVR("Can't get the end index entry.");
                return;
            }
        }

        u32LastGopSize = stEndEntry.u16FrameTypeAndGop & 0x3fff;

        if ((u32LastGopSize < 6) || 
            (PVR_INDEX_is_Pframe(&pChnAttr->IndexHandle->stCurPlayFrame)) ||
            (HI_UNF_PVR_PLAY_SPEED_4X_FAST_FORWARD <= pChnAttr->enSpeed))
        {
            s32Ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stLastIEntry, (u32EndFrmNum - u32LastGopSize));
            if (HI_SUCCESS == s32Ret)
            {
                pSendEntryTmp = &stLastIEntry;
            }
            else
            {
                HI_ERR_PVR("Can't get Last I frame's Entry.\n");
            }
        }
        else
        {
            pSendEntryTmp = &pChnAttr->IndexHandle->stCurPlayFrame;
        }
    }
    else
    {
        u32FirstFrmNum = pChnAttr->IndexHandle->stCycMgr.u32StartFrame;

        do
        {
            if (u32FirstFrmMoveCnt > 1000)
            {
                HI_WARN_PVR("Can't find the first I frame, Do not send the first I frame when backward till start.\n");
                return;
            }
            
            s32Ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stFirstIEntry, u32FirstFrmNum);
            if (HI_SUCCESS != s32Ret)
            {
                HI_WARN_PVR("Can't get the end index entry.");
                return;
            }
            u32FirstFrmNum++;
            u32FirstFrmMoveCnt++;
            if (pChnAttr->IndexHandle->stCycMgr.u32StartFrame >= pChnAttr->IndexHandle->stCycMgr.u32EndFrame)
            {
                if (u32FirstFrmNum > pChnAttr->IndexHandle->stCycMgr.u32LastFrame)
                {
                    u32FirstFrmNum = 0;
                }
				
				if ((u32FirstFrmNum > pChnAttr->IndexHandle->stCycMgr.u32EndFrame) && 
                    (u32FirstFrmNum < pChnAttr->IndexHandle->stCycMgr.u32StartFrame))
				{
					HI_WARN_PVR("Can't find the first I frame, Do not send the first I frame when backward till start.\n");
                	return;
				}
            }
			else
			{
				if (u32FirstFrmNum > pChnAttr->IndexHandle->stCycMgr.u32LastFrame)
				{
					HI_WARN_PVR("Can't find the first I frame, Do not send the first I frame when backward till start.\n");
                	return;
				}
			}
        }
        while(!PVR_INDEX_is_Iframe(&stFirstIEntry));

        pSendEntryTmp = &stFirstIEntry;
    }

    PVR_LOCK(&(pChnAttr->stMutex));
    if (HI_FALSE == pChnAttr->bTsBufReset)
    {
        for(i = 0; i < 6; i++)
        {
            s32Ret = PVRPlaySendAframe(pChnAttr, pSendEntryTmp);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_PVR("======== send a frame err:%x ==========\n", s32Ret);
            }
        }
    }
    PVR_UNLOCK(&(pChnAttr->stMutex));
}


/*****************************************************************************
 Prototype       : PVRPlayMainRoute
 Description     : the main control thread of player
 Input           : args  ** the attribute of play channel
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
STATIC void* PVRPlayMainRoute(void *args)
{
    HI_S32              ret = HI_SUCCESS;
    HI_S32              ret_sent = HI_SUCCESS;
    PVR_INDEX_ENTRY_S   frame ={0};
    PVR_PLAY_CHN_S      *pChnAttr = (PVR_PLAY_CHN_S*)args;
    HI_U32              waittime = 200000; /*200ms*/
    HI_BOOL             bCallBack = HI_FALSE;
    HI_BOOL             bLastFrameSent = HI_TRUE;
    HI_HANDLE hWindow;
    HI_PVR_SEND_RESULT_S *pstSendFrame = (HI_PVR_SEND_RESULT_S *)NULL;
    HI_PVR_FETCH_RESULT_S *pPvrFetchRes = (HI_PVR_FETCH_RESULT_S *)NULL;
    HI_CODEC_VIDEO_CMD_S  stVdecCmdPara = {0};
    HI_UNF_AVPLAY_TPLAY_OPT_S stTplayOpts;

    memset(&stTplayOpts, 0, sizeof(HI_UNF_AVPLAY_TPLAY_OPT_S));

    if (!pChnAttr)
    {
        return HI_NULL;
    }

    if (NULL == g_pvrfpSend)
    {
        HI_CHAR saveName[256];

        snprintf(saveName, 255, "%s_send.ts", pChnAttr->stUserCfg.szFileName);
        //g_pvrfpSend = fopen(saveName, "wb");
    }

    ret = HI_MPI_AVPLAY_GetWindowHandle(pChnAttr->hAvplay, &hWindow);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("AVPLAY get window handle failed!\n");
        return HI_NULL;
    }
    
    while (!pChnAttr->bPlayMainThreadStop)
    {
        /* read file to the end, so wait until new comman incomming */
        if (pChnAttr->bEndOfFile && !pChnAttr->bQuickUpdateStatus)
        {
            //HI_ERR_PVR("End of file, wait new commond.\n");
            usleep(10000);
            continue;
        }

        if(!((HI_UNF_PVR_PLAY_STATE_FF == pChnAttr->enState) || 
             (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState)))
        {
            if((HI_PVR_FETCH_RESULT_S *)NULL != pPvrFetchRes)
            {
                HI_FREE(HI_ID_PVR, pPvrFetchRes);
                pPvrFetchRes = (HI_PVR_FETCH_RESULT_S *)NULL;
            }

            if((HI_PVR_SEND_RESULT_S *)NULL != pstSendFrame)
            {
                HI_FREE(HI_ID_PVR, pstSendFrame);
                pstSendFrame = (HI_PVR_SEND_RESULT_S *)NULL;
            }
        }

        PVR_LOCK(&(pChnAttr->stMutex));

        ret = PVRPlayCheckIfTsOverByRec(pChnAttr);
        if (HI_SUCCESS != ret)
        {
            PVR_UNLOCK(&(pChnAttr->stMutex));
            PVRPlayCheckError(pChnAttr, ret);
            continue;
        }

        pChnAttr->bTsBufReset = HI_FALSE;
        pChnAttr->bTillStartOfFile = HI_FALSE;
        switch (pChnAttr->enState)
        {
            case HI_UNF_PVR_PLAY_STATE_PLAY:
            case HI_UNF_PVR_PLAY_STATE_SF:
            case HI_UNF_PVR_PLAY_STATE_STEPF:
            {
                /* noexistent index file, read fixed size per-time*/
                if (pChnAttr->bPlayingTsNoIdx || !pChnAttr->stUserCfg.bIsClearStream)
                {
                    if (pChnAttr->u64CurReadPos >= pChnAttr->u64TsFileSize)
                    {
                        ret = HI_ERR_PVR_FILE_TILL_END;
                    }
                    else
                    {
                        frame.u16UpFlowFlag = 0;
                        frame.u64Offset = pChnAttr->u64CurReadPos;
                        frame.u32FrameSize = PVR_FIFO_WRITE_BLOCK_SIZE;
                    }
                }
                else
                {
                    /*if (pChnAttr->bQuickUpdateStatus)
                    {
                        ret = PVR_Index_GetNextIFrame(pChnAttr->IndexHandle, &frame);
                    }
                    else*/

                    /* normal play, not need to read data from the first I frame, send all the data is ok */
                    {
                        ret = PVR_Index_GetNextFrame(pChnAttr->IndexHandle, &frame);
                        if (HI_SUCCESS == ret)
                        {
                            bLastFrameSent = HI_FALSE;
                        }
                    }

                    if (!PVRPlayIsTsSaved(pChnAttr, &frame))
                    {
                        ret = HI_ERR_PVR_FILE_TILL_END;
                    }
#if 0
                    if (HI_SUCCESS == PVR_Index_GetCurrentFrame(pChnAttr->IndexHandle, &frameNext))
                    {
                        /* think it as increase case, as for rewind, use the old length of frame */
                        if (frameNext.s64GlobalOffset > frame.s64GlobalOffset)
                        {
                            frame.u32FrameSize = frameNext.s64GlobalOffset - frame.s64GlobalOffset;
                        }
                    }
#endif
                }

                pChnAttr->bQuickUpdateStatus = HI_FALSE;
                break;
            }

            case HI_UNF_PVR_PLAY_STATE_FF:
            {
                pChnAttr->bQuickUpdateStatus = HI_FALSE;

               /* noexistent index file, read fixed size per-time*/
                if (pChnAttr->bPlayingTsNoIdx)
                {
                    frame.u16UpFlowFlag = 0;
                    frame.u64Offset = pChnAttr->u64CurReadPos;
                    frame.u32FrameSize = PVR_FIFO_WRITE_BLOCK_SIZE;
                }
                else
                {
                    memcpy((void *)&frame, 
                           (void *)&(pChnAttr->IndexHandle->stCurPlayFrame), 
                           sizeof(PVR_INDEX_ENTRY_S));
                }
                break;
            }

            case HI_UNF_PVR_PLAY_STATE_FB:
            {
                pChnAttr->bQuickUpdateStatus = HI_FALSE;

                /* noexistent index file, read fixed size per-time*/
                if (pChnAttr->bPlayingTsNoIdx)
                {
                    frame.u16UpFlowFlag = 0;
                    frame.u64Offset = pChnAttr->u64CurReadPos;
                    frame.u32FrameSize = PVR_FIFO_WRITE_BLOCK_SIZE;
                }
                else
                {
                    memcpy((void *)&frame, 
                           (void *)&(pChnAttr->IndexHandle->stCurPlayFrame), 
                           sizeof(PVR_INDEX_ENTRY_S));
                }
                break;
            }

            case HI_UNF_PVR_PLAY_STATE_PAUSE:
            {
                pChnAttr->bQuickUpdateStatus = HI_FALSE;
                PVR_UNLOCK(&(pChnAttr->stMutex));
                (HI_VOID)usleep(10000);
                continue;
            }

            case HI_UNF_PVR_PLAY_STATE_STEPB:
            {
                pChnAttr->bQuickUpdateStatus = HI_FALSE;
                pChnAttr->bEndOfFile = HI_FALSE;
                HI_ERR_PVR("not support status.\n");
                PVR_UNLOCK(&(pChnAttr->stMutex));
                (HI_VOID)usleep(10000);
                continue;
            }

            default:
            {
                HI_INFO_PVR("Stop or invalid status: State=%d\n", pChnAttr->enState);
                PVR_UNLOCK(&(pChnAttr->stMutex));
                usleep(10000);
                continue;
            }
        } /* end switch */


        if (HI_SUCCESS == ret)  /* read index OK  */
        {
            pChnAttr->bEndOfFile = HI_FALSE;
            pChnAttr->u64CurReadPos = frame.u64Offset + (HI_U64)frame.u32FrameSize;
        }
        else /* read index error */
        {
            /* on normally playing, catch up the record, wait a momnet, and then continue, the wait time up to content size of TS buffer */
            if (PVR_Rec_IsFileSaving(pChnAttr->stUserCfg.szFileName)
                && (HI_UNF_PVR_PLAY_STATE_PLAY == pChnAttr->enState)
                && (HI_ERR_PVR_FILE_TILL_END == ret))
            {
                /* not need to calculate it, probe it constantly, obtain the next frame and play it, no frame, wait 20 millisecond*/
                waittime = 200000; //PVRPlayCalcWaitTimeForPlayEnd(pChnAttr);
            }
            else
            {
                HI_WARN_PVR("read idx err:%#x.\n", ret);
            }
        }

        PVR_UNLOCK(&(pChnAttr->stMutex));

        if (pChnAttr->bPlayMainThreadStop)
        {
            break;
        }

        if (!(pChnAttr->bPlayingTsNoIdx) && 
            ((HI_UNF_PVR_PLAY_STATE_FF == pChnAttr->enState) || 
             (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState)))
        {
            if ((HI_FALSE == pChnAttr->bTsBufReset) && (HI_FALSE == pChnAttr->bQuickUpdateStatus))
            {
                if ((HI_PVR_FETCH_RESULT_S *)NULL == pPvrFetchRes)
                {
                    if((HI_PVR_FETCH_RESULT_S *)NULL == (pPvrFetchRes = (HI_PVR_FETCH_RESULT_S *)HI_MALLOC(HI_ID_PVR, sizeof(HI_PVR_FETCH_RESULT_S))))
                    {
                        HI_ERR_PVR("alloc pPvrFetchRes err!\n");
                        ret = HI_FAILURE;
                    }
                }

                if ((HI_PVR_SEND_RESULT_S *)NULL == pstSendFrame)
                {
                    if ((HI_PVR_SEND_RESULT_S *)NULL == (pstSendFrame = (HI_PVR_SEND_RESULT_S *)HI_MALLOC(HI_ID_PVR, sizeof(HI_PVR_SEND_RESULT_S))))
            	    {
            	        HI_ERR_PVR("alloc pstSendFrame fail.\n");
            	        ret = HI_FAILURE;
            	    }
                }
                
                stTplayOpts.enTplayDirect = (pChnAttr->enSpeed >= 0) ? HI_UNF_AVPLAY_TPLAY_DIRECT_FORWARD : HI_UNF_AVPLAY_TPLAY_DIRECT_BACKWARD;
                stTplayOpts.u32SpeedInteger = abs(pChnAttr->enSpeed/HI_UNF_PVR_PLAY_SPEED_NORMAL);
                stTplayOpts.u32SpeedDecimal = 0;
                stVdecCmdPara.u32CmdID = HI_UNF_AVPLAY_SET_TPLAY_PARA_CMD;
                stVdecCmdPara.pPara = &stTplayOpts;
                ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_VCODEC, (void *)&stVdecCmdPara);

                if ((HI_SUCCESS == ret) && (pstSendFrame != NULL)) //remove pc-lint warning
                {
                    memset((void *)pstSendFrame, 0, sizeof(HI_PVR_SEND_RESULT_S));
                    ret = PVRPlaySmoothFBward(pChnAttr, hWindow, pstSendFrame, pPvrFetchRes);
                    if (HI_SUCCESS == ret)
                    {
                        pChnAttr->IndexHandle->u32TimeShiftTillEndCnt = 0;
                    }
                }
            }
        }
        else
        {
            if(HI_SUCCESS == ret)
            {
                PVR_LOCK(&(pChnAttr->stMutex));
                pChnAttr->IndexHandle->u32TimeShiftTillEndCnt = 0;
                if (HI_FALSE == pChnAttr->bTsBufReset)
                {
                    ret_sent = PVRPlaySendAframe(pChnAttr, &frame);
                    if (HI_SUCCESS != ret_sent)
                    {
                        HI_ERR_PVR("======== send a frame err:%x ==========\n", ret_sent);
                    }
                    pChnAttr->IndexHandle->u32PlayFrame = pChnAttr->IndexHandle->u32ReadFrame;
                    bLastFrameSent = HI_TRUE;
                }
                PVR_UNLOCK(&(pChnAttr->stMutex));

                /* send all the frame case, send one frame wait a moment, so that make a sleep for other schedule */
                if (HI_SUCCESS == ret_sent)
                    usleep(100);
            }
        }

        if (HI_SUCCESS != ret)
        {
            if (HI_ERR_PVR_FILE_TILL_START == ret)
            {
                pChnAttr->bTillStartOfFile = HI_TRUE;
            }
            else
            {
                pChnAttr->bTillStartOfFile = HI_FALSE;
            }

            /* on normally playing, catch up the record, wait a momnet, and then continue, the wait time up to content size of TS buffer */
            if (PVR_Rec_IsFileSaving(pChnAttr->stUserCfg.szFileName))
            {
                if ( ((HI_UNF_PVR_PLAY_STATE_PLAY == pChnAttr->enState)
                      || ( HI_UNF_PVR_PLAY_STATE_STEPF == pChnAttr->enState)
                      || ( HI_UNF_PVR_PLAY_STATE_SF == pChnAttr->enState)
					  || ( HI_UNF_PVR_PLAY_STATE_FF == pChnAttr->enState))
                      && (HI_ERR_PVR_FILE_TILL_END == ret)) /* NO EOF when play speed < 1x */
                {
                    bCallBack = HI_FALSE;
                    ret = HI_SUCCESS;

					if(HI_UNF_PVR_PLAY_STATE_FF == pChnAttr->enState)
					{
						if (HI_TRUE == PVRPlayCheckFFTillEnd(pChnAttr))
						{
							bCallBack = HI_TRUE;
							ret = HI_ERR_PVR_FILE_TILL_END;
						}
					}
					else
					{
                    	if (pChnAttr->IndexHandle->u32TimeShiftTillEndTimeMs != pChnAttr->IndexHandle->stCurRecFrame.u32DisplayTimeMs)
                    	{
                        	pChnAttr->IndexHandle->u32TimeShiftTillEndCnt = 0;
                    	}
                    	else
                    	{
                        	pChnAttr->IndexHandle->u32TimeShiftTillEndCnt++;
                    	}
                    	
                    	if (pChnAttr->IndexHandle->u32TimeShiftTillEndCnt >= 10)
                    	{
                        	bCallBack = HI_TRUE;
                        	ret = HI_ERR_PVR_FILE_TILL_END;
                    	}
                    	
                    	pChnAttr->IndexHandle->u32TimeShiftTillEndTimeMs = pChnAttr->IndexHandle->stCurRecFrame.u32DisplayTimeMs;
					}
                }
                else
                {
                    bCallBack = HI_TRUE;
                }

                if ((HI_ERR_PVR_FILE_TILL_END == ret) || (HI_ERR_PVR_FILE_TILL_START == ret))
                {
                    if ((HI_ERR_PVR_FILE_TILL_START == ret) && ( HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState))
                    {
                        PVRPlayProcessLastPlayingFrames(pChnAttr);
                    }
                    
                    while (HI_TRUE != PVRPlayWaitForEndOfFile(pChnAttr, 200))
                    {
                        if ((HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState) && (0 != pChnAttr->IndexHandle->stCycMgr.s32CycTimes))
                        {
                            if (HI_FALSE ==  PVRPlayCheckFBTillStartInRewind(pChnAttr))
                            {
                                continue;
                            }
                            else
                            {
                                break;
                            }
                        }
                        
                        if ((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop))
                        {
                            bCallBack = HI_FALSE;
                            break;
                        }
                    }
                    
                    if((HI_UNF_PVR_PLAY_STATE_FF == pChnAttr->enState) || 
                       (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState))
                    {
                        if (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState)
                        {
                            pChnAttr->bEndOfFile = HI_TRUE;
                        }
                        
                        PVRPlaySyncTrickPlayTime(pChnAttr);
                        usleep(200000);
                    }
                }

                usleep(waittime);
            }
            else  /* NOT timeshift, playback only */
            {
				/* notice the complete event after waiting Vid/Aud play over */
                if ((HI_ERR_PVR_FILE_TILL_END == ret) || (HI_ERR_PVR_FILE_TILL_START == ret))
                {
                    PVRPlayProcessLastPlayingFrames(pChnAttr);
                        
					/*after finishing send ts, all the way, check whether play over or not, not finished, switch state and not callback */
                    bCallBack = HI_TRUE;
                    pChnAttr->u32LastPtsMs = 0; /* prevent from the first frame -1 being abnormal exit */
                    pChnAttr->u32LastEsBufSize = 0;
		            PVRPlaySendEmptyPacketToTsBuffer(pChnAttr);/*send some empty packet,prevent the demux ptrs do not update in case of error in ts file*/
                    usleep(200000);
                    while (HI_TRUE != PVRPlayWaitForEndOfFile(pChnAttr, 200))
                    {
                        if ((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop))
                        {
                            bCallBack = HI_FALSE;
                            break;
                        }
                    }

                    if((HI_UNF_PVR_PLAY_STATE_FF == pChnAttr->enState) || 
                     (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState))
                    {
                        PVRPlaySyncTrickPlayTime(pChnAttr);
                        usleep(200000);
                    }

                    if (bCallBack)
                    {
                       pChnAttr->bEndOfFile = HI_TRUE;
                    }
                }
            }

            /* callback by error */
            if ((bCallBack) && !((pChnAttr->bQuickUpdateStatus) || (pChnAttr->bPlayMainThreadStop)))
            {
                PVRPlayCheckError(pChnAttr, ret);
            }
        }

        ret = HI_SUCCESS;
    } /* end while */

    HI_INFO_PVR("<<----------PVRPlayMainRoute exit---------------\n");
    if (NULL != g_pvrfpSend)
    {
        fclose(g_pvrfpSend);

        g_pvrfpSend = NULL;
    }
    if ((HI_PVR_SEND_RESULT_S *)NULL != pstSendFrame)
    {
        HI_FREE(HI_ID_PVR, pstSendFrame);
        pstSendFrame = (HI_PVR_SEND_RESULT_S *)NULL;
    }
    if ((HI_PVR_FETCH_RESULT_S *)NULL != pPvrFetchRes)
    {
        HI_FREE(HI_ID_PVR, pPvrFetchRes);
        pPvrFetchRes = (HI_PVR_FETCH_RESULT_S *)NULL;
    }
    UNUSED(bLastFrameSent);
    return NULL;
}


/*the following case, the record can catch up to the live stream */
HI_BOOL PVR_Play_IsFilePlayingSlowPauseBack(const HI_CHAR *pFileName)
{
    HI_U32 i;

    if(NULL == pFileName)
    {
        HI_PRINT("\n<%s %d>: Input pointer parameter is NULL!\n", __FUNCTION__, __LINE__);
        return HI_FALSE;   
    }

    for (i = 0; i < PVR_PLAY_MAX_CHN_NUM; i++)
    {
        if (( g_stPvrPlayChns[i].enState == HI_UNF_PVR_PLAY_STATE_PAUSE)
            || ( g_stPvrPlayChns[i].enState == HI_UNF_PVR_PLAY_STATE_SF)
            || ( g_stPvrPlayChns[i].enState == HI_UNF_PVR_PLAY_STATE_STEPB)
            || ( g_stPvrPlayChns[i].enState == HI_UNF_PVR_PLAY_STATE_STEPF))
        {
            if  ( !strncmp(g_stPvrPlayChns[i].stUserCfg.szFileName, pFileName,strlen(pFileName)) )
            {
                return HI_TRUE;
            }
        }
    }

    return HI_FALSE;
}

HI_BOOL PVR_Play_IsPlaying(void)
{
    return g_stPlayInit.bInit;
}


/*****************************************************************************
 Prototype       : HI_PVR_PlayInit
 Description     : play module initializde
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/14
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayInit(HI_VOID)
{
    HI_U32 i;
    HI_S32 ret;
    PVR_PLAY_CHN_S *pChnAttr;

    if (HI_TRUE == g_stPlayInit.bInit)
    {
        HI_WARN_PVR("Play Module has been Initialized!\n");
        return HI_SUCCESS;
    }
    else
    {
        /*initialize whole of  index */
        PVR_Index_Init();

        ret = PVRPlayDevInit();
        if (HI_SUCCESS != ret)
        {
            return ret;
        }

        ret = PVRIntfInitEvent();
        if (HI_SUCCESS != ret)
        {
            close(g_s32PvrFd);
            return ret;
        }

        /* set all play channel as INVALID status                            */
        for (i = 0 ; i < PVR_PLAY_MAX_CHN_NUM; i++)
        {
            pChnAttr = &g_stPvrPlayChns[i];
            
            if(0 != pthread_mutex_init(&(pChnAttr->stMutex), NULL))
            {
                close(g_s32PvrFd);
                for(i = 0; i < PVR_PLAY_MAX_CHN_NUM; i++)
                {
                    (void)pthread_mutex_destroy(&(g_stPvrPlayChns[i].stMutex));
                }
                PVRIntfDeInitEvent();
                HI_ERR_PVR("init mutex lock for PVR play chn%d failed \n", i);
                return HI_FAILURE;
            }

            PVR_LOCK(&(pChnAttr->stMutex));
            pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_INVALID;
            pChnAttr->enLastState = HI_UNF_PVR_PLAY_STATE_INVALID;
            pChnAttr->bPlayMainThreadStop = HI_TRUE;
            pChnAttr->u32chnID = i;
            pChnAttr->s32DataFile = PVR_FILE_INVALID_FILE;
            pChnAttr->u64CurReadPos = 0;
            pChnAttr->IndexHandle = NULL;
            pChnAttr->hCipher = 0;
            pChnAttr->PlayStreamThread = 0;
            pChnAttr->bCAStreamHeadSent = HI_FALSE;
            pChnAttr->u64LastSeqHeadOffset = PVR_INDEX_INVALID_SEQHEAD_OFFSET;
            pChnAttr->readCallBack = NULL;
            memset(&pChnAttr->stUserCfg, 0, sizeof(HI_UNF_PVR_PLAY_ATTR_S));
            memset(&pChnAttr->stCipherBuf, 0, sizeof(PVR_PHY_BUF_S));
            memset(&pChnAttr->stSmoothPara, 0, sizeof(PVR_SMOOTH_PARA_S));
            pChnAttr->stSmoothPara.enBackwardLastSpeed = HI_UNF_PVR_PLAY_SPEED_NORMAL;
            pChnAttr->stSmoothPara.enSmoothLastSpeed = HI_UNF_PVR_PLAY_SPEED_BUTT;
            PVR_UNLOCK(&(pChnAttr->stMutex));
        }
        
#ifdef PVR_PROC_SUPPORT
        if (!PVR_Rec_IsRecording())
        {
            HI_SYS_Init();
            ret = HI_MODULE_Register(HI_ID_PVR, PVR_USR_PROC_DIR);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_PVR("HI_MODULE_Register(\"%s\") return %d\n", PVR_USR_PROC_DIR, ret);
            }
    
            /* Add proc dir */
            ret = HI_PROC_AddDir(PVR_USR_PROC_DIR);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_PVR("HI_PROC_AddDir(\"%s\") return %d\n", PVR_USR_PROC_DIR, ret);
            }
        }
    
        /* Will be added at /proc/hisi/${DIRNAME} directory */
        g_stPvrPlayProcEntry.pszDirectory = PVR_USR_PROC_DIR;
        g_stPvrPlayProcEntry.pszEntryName = PVR_USR_PROC_PLAY_ENTRY_NAME;
        g_stPvrPlayProcEntry.pfnShowProc = PVRPlayShowProc;
        g_stPvrPlayProcEntry.pfnCmdProc = PVRPlaySetProc;
        g_stPvrPlayProcEntry.pPrivData = g_stPvrPlayChns;
        ret = HI_PROC_AddEntry(HI_ID_PVR, &g_stPvrPlayProcEntry);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("HI_PROC_AddEntry(\"%s\") return %d\n", PVR_USR_PROC_PLAY_ENTRY_NAME, ret);
        }
#endif

        g_stPlayInit.bInit = HI_TRUE;

        return HI_SUCCESS;
    }
}

/*****************************************************************************
 Prototype       : HI_PVR_PlayDeInit
 Description     : play module de-initialize
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/14
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayDeInit(HI_VOID)
{
    HI_U32 i;

    if ( HI_FALSE == g_stPlayInit.bInit )
    {
        HI_WARN_PVR("Play Module is not Initialized!\n");
        return HI_SUCCESS;
    }
    else
    {
        /* set all play channel as INVALID status                            */
        for (i = 0 ; i < PVR_PLAY_MAX_CHN_NUM; i++)
        {
            if (g_stPvrPlayChns[i].enState != HI_UNF_PVR_PLAY_STATE_INVALID)
            {
                HI_ERR_PVR("play chn%d is in use, can NOT deInit PLAY!\n", i);
                return HI_ERR_PVR_BUSY;
            }

            (HI_VOID)pthread_mutex_destroy(&(g_stPvrPlayChns[i].stMutex));
        }

#ifdef PVR_PROC_SUPPORT
        HI_PROC_RemoveEntry(HI_ID_PVR, &g_stPvrPlayProcEntry);
        if (!PVR_Rec_IsRecording())
        {
            HI_PROC_RemoveDir(PVR_USR_PROC_DIR);
            HI_MODULE_UnRegister(HI_ID_PVR);
            HI_SYS_DeInit();
        }
#endif

        g_stPlayInit.bInit = HI_FALSE;
        PVRIntfDeInitEvent();
        return HI_SUCCESS;
    }
}

/*****************************************************************************
 Prototype       : HI_PVR_PlayCreateChn
 Description     : create one play channel
 Input           : pAttr  **the attribute of channel
 Output          : pchn   **play channel number
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayCreateChn(HI_U32 *pChn, const HI_UNF_PVR_PLAY_ATTR_S *pAttr, HI_HANDLE hAvplay, HI_HANDLE hTsBuffer)
{
    HI_S32 ret;
    PVR_PLAY_CHN_S *pChnAttr =NULL;

    PVR_CHECK_POINTER(pAttr);
    PVR_CHECK_POINTER(pChn);

    PVR_PLAY_CHECK_INIT(&g_stPlayInit);

    ret = PVRPlayCheckUserCfg(pAttr, hAvplay, hTsBuffer);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    pChnAttr = PVRPlayFindFreeChn();
    if (NULL == pChnAttr)
    {
        HI_ERR_PVR("Not enough channel to be used!\n");
        return HI_ERR_PVR_NO_CHN_LEFT;
    }

    PVR_LOCK(&(pChnAttr->stMutex));

    pChnAttr->s32DataFile = PVR_FILE_INVALID_FILE;
    pChnAttr->IndexHandle = NULL;
    pChnAttr->hCipher = 0;
    pChnAttr->PlayStreamThread = 0;
    pChnAttr->bCAStreamHeadSent = HI_FALSE;
    pChnAttr->u64LastSeqHeadOffset = PVR_INDEX_INVALID_SEQHEAD_OFFSET;
    pChnAttr->bPlayMainThreadStop = HI_TRUE;
    pChnAttr->u64CurReadPos = 0;
    //pChnAttr->bAdecStoped = HI_FALSE;
    pChnAttr->enSpeed = HI_UNF_PVR_PLAY_SPEED_NORMAL;
    pChnAttr->bPlayingTsNoIdx = HI_FALSE;
    pChnAttr->bTsBufReset = HI_TRUE;
    memcpy(&pChnAttr->stUserCfg, pAttr, sizeof(HI_UNF_PVR_PLAY_ATTR_S));
    //pChnAttr->stUserCfg.bIsClearStream = HI_FALSE;

    /* initialize cipher module */
    ret = PVRPlayPrepareCipher(pChnAttr);
    if (ret != HI_SUCCESS)
    {
        goto ErrorExit;
    }

    /*  check whether current to open file is recording or not
        if recording, return the recording file index handle, regard it as timeshift play channel to manage
        or alone play channel, which not support record the playing file.
    */
    pChnAttr->IndexHandle = PVR_Index_CreatPlay(pChnAttr->u32chnID, pAttr, &pChnAttr->bPlayingTsNoIdx);
    if (NULL == pChnAttr->IndexHandle)
    {
        HI_ERR_PVR("index init failed.\n");
        ret = HI_ERR_PVR_FILE_CANT_READ;
        goto ErrorExit;
    }

    /* open ts file */
    pChnAttr->s32DataFile = PVR_OPEN64(pAttr->szFileName,PVR_FOPEN_MODE_DATA_READ);
    if (PVR_FILE_INVALID_FILE == pChnAttr->s32DataFile)
    {
        ret = HI_ERR_PVR_FILE_CANT_OPEN;
        goto ErrorExit;
    }

    pChnAttr->u64TsFileSize = PVR_FILE_GetFileSize64(pAttr->szFileName);

    pChnAttr->hAvplay = hAvplay;
    pChnAttr->hTsBuffer = hTsBuffer;
    *pChn = pChnAttr->u32chnID;

#ifdef PVR_PROC_SUPPORT
    memset(&(pChnAttr->stPlayProcInfo), 0, sizeof(PVR_PLAY_PROC_S));
#endif

    PVR_UNLOCK(&(pChnAttr->stMutex));

    HI_INFO_PVR("\n--------PVR.PLAY.Ver:%s_%s\n\n", __DATE__, __TIME__);

    return HI_SUCCESS;

ErrorExit:
    if (PVR_FILE_INVALID_FILE != pChnAttr->s32DataFile)
    {
        (HI_VOID)PVR_CLOSE64(pChnAttr->s32DataFile);
        pChnAttr->s32DataFile = PVR_FILE_INVALID_FILE;
    }

    if (pChnAttr->IndexHandle)
    {
       (HI_VOID)PVR_Index_Destroy(pChnAttr->IndexHandle, PVR_INDEX_PLAY);
       pChnAttr->IndexHandle = NULL;
    }
    
    (HI_VOID)PVRPlayReleaseCipher(pChnAttr);

    pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_INVALID;
    ioctl(g_s32PvrFd, CMD_PVR_DESTROY_PLAY_CHN, (HI_S32)&(pChnAttr->u32chnID));
    PVR_UNLOCK(&(pChnAttr->stMutex));
    return ret;
}

/*****************************************************************************
 Prototype       : HI_PVR_PlayDestroyChn
 Description     : destroy one play channel
 Input           : u32Chn  **channel number
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayDestroyChn(HI_U32 u32Chn)
{
    PVR_PLAY_CHN_S  *pChnAttr;

    PVR_PLAY_CHECK_CHN(u32Chn);
    pChnAttr = &g_stPvrPlayChns[u32Chn];
    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    /* check channel state */
    if (!(HI_UNF_PVR_PLAY_STATE_STOP == pChnAttr->enState
        || HI_UNF_PVR_PLAY_STATE_INIT == pChnAttr->enState))
    {
        HI_ERR_PVR("You should stop channel first!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_PLAY_INVALID_STATE;
    }

    pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_INVALID;
    if (HI_SUCCESS != ioctl(g_s32PvrFd, CMD_PVR_DESTROY_PLAY_CHN, (HI_S32)&u32Chn))
    {
        HI_FATAL_PVR("pvr play destroy channel error.\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    /* close stream file                                                    */
    (HI_VOID)PVR_CLOSE64(pChnAttr->s32DataFile);

    pChnAttr->IndexHandle->u32ReadFrame = 0; //zyy 2009.05.22 AI7D05498
    (HI_VOID)PVR_Index_Destroy(pChnAttr->IndexHandle, PVR_INDEX_PLAY);
    pChnAttr->IndexHandle = NULL;

    (HI_VOID)PVRPlayReleaseCipher(pChnAttr);

    pChnAttr->u64LastSeqHeadOffset = PVR_INDEX_INVALID_SEQHEAD_OFFSET;
    pChnAttr->PlayStreamThread = 0;

#ifdef PVR_PROC_SUPPORT
    memset(&(pChnAttr->stPlayProcInfo), 0, sizeof(PVR_PLAY_PROC_S));
#endif

    PVR_UNLOCK(&(pChnAttr->stMutex));

    return HI_SUCCESS;
}


/*****************************************************************************
 Prototype       : HI_PVR_PlaySetChn
 Description     : set play channle attributes
 Input           : chn    **
                   pAttr  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/29
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32  HI_PVR_PlaySetChn(HI_U32 u32ChnID, const HI_UNF_PVR_PLAY_ATTR_S *pstPlayAttr)
{
    PVR_PLAY_CHN_S  *pChnAttr;

    PVR_PLAY_CHECK_CHN(u32ChnID);
    pChnAttr = &g_stPvrPlayChns[u32ChnID];
    PVR_PLAY_CHECK_CHN_INIT(pChnAttr->enState);

    PVR_CHECK_POINTER(pstPlayAttr);

    /* TODO: we set several attributes which can be set dynamically. */

    return HI_ERR_PVR_NOT_SUPPORT;
}

/*****************************************************************************
 Prototype       : HI_PVR_PlayGetChn
 Description     : get play channel attribute
 Input           : chn    **
                   pAttr  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/29
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayGetChn(HI_U32 u32ChnID, HI_UNF_PVR_PLAY_ATTR_S *pstPlayAttr)
{
    PVR_PLAY_CHN_S  *pChnAttr;

    PVR_PLAY_CHECK_CHN(u32ChnID);
    pChnAttr = &g_stPvrPlayChns[u32ChnID];
    PVR_PLAY_CHECK_CHN_INIT(pChnAttr->enState);

    PVR_CHECK_POINTER(pstPlayAttr);

    memcpy(pstPlayAttr, &pChnAttr->stUserCfg, sizeof(HI_UNF_PVR_PLAY_ATTR_S));

    return HI_SUCCESS;
}


/*****************************************************************************
 Prototype       : HI_PVR_PlayStartChn
 Description     : start play channel
 Input           : u32ChnID **channel number
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayStartChn(HI_U32 u32ChnID) /* pause when end of file */
{
    HI_S32                      ret;
    PVR_PLAY_CHN_S              *pChnAttr;
    HI_U32                      pid;
    HI_U32                      u32DispOptimizeFlag;
    HI_HANDLE                   hWindow;
    HI_CODEC_VIDEO_CMD_S    stVdecCmd;
    HI_UNF_AVPLAY_VDEC_INFO_S stVdecInfo = {0};
	HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S stAvplayPrivInfo = {0};
    struct sigevent stSigEvt;  
    struct itimerspec stTimeSpec;  
    PVR_INDEX_ENTRY_S stStartEntry = {0};

    PVR_PLAY_CHECK_CHN(u32ChnID);
    pChnAttr = &g_stPvrPlayChns[u32ChnID];
    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    if (!(HI_UNF_PVR_PLAY_STATE_STOP == pChnAttr->enState
          || HI_UNF_PVR_PLAY_STATE_INIT == pChnAttr->enState))
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        HI_ERR_PVR("Can't start play channel at current state!\n");
        return HI_ERR_PVR_PLAY_INVALID_STATE;
    }

    ret = HI_MPI_AVPLAY_GetWindowHandle(pChnAttr->hAvplay, &hWindow);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("AVPLAY get window handle failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

#if 0
    /* set window to step mode */
    ret = HI_MPI_VO_SetWindowStepMode(hWindow, HI_FALSE);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("Set window step mode failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }
#endif

    ret = HI_UNF_AVPLAY_SetDecodeMode(pChnAttr->hAvplay, HI_UNF_VCODEC_MODE_NORMAL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("set vdec normal mode error!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    ret = HI_UNF_AVPLAY_GetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &pid);
    if ((HI_SUCCESS != ret) || (0x1fff == pid))
    {
        HI_ERR_PVR("has not audio stream! ret=%#x pid=%d\n", ret, pid);
    }
    else
    {
        ret = HI_UNF_AVPLAY_Start(pChnAttr->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
        if (HI_SUCCESS != ret)
        {
            PVR_UNLOCK(&(pChnAttr->stMutex));
            HI_ERR_PVR("Can't start audio, error:%#x!\n", ret);
            return ret;
        }
        else
        {
            HI_INFO_PVR("HI_UNF_AVPLAY_start audio ok!\n");
        }
    }

    ret = HI_UNF_AVPLAY_GetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID, &pid);
    if ((HI_SUCCESS != ret) || (0x1fff == pid))
    {
        HI_ERR_PVR("has not video stream! ret=%#x pid=%d\n", ret, pid);
    }
    else
    {
        ret = HI_UNF_AVPLAY_Start(pChnAttr->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, NULL);
        if (HI_SUCCESS != ret)
        {
            PVR_UNLOCK(&(pChnAttr->stMutex));
            HI_ERR_PVR("Can't start video, error:%#x!\n", ret);
            return ret;
        }
        else
        {
            HI_INFO_PVR("HI_UNF_AVPLAY_start video ok!\n");
        }
    }

    ret = HI_UNF_AVPLAY_Resume(pChnAttr->hAvplay, NULL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("AVPLAY resume failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    pChnAttr->enLastState = pChnAttr->enState;
    pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_PLAY;
    pChnAttr->enSpeed = HI_UNF_PVR_PLAY_SPEED_NORMAL;
    pChnAttr->bPlayMainThreadStop = HI_FALSE;
    pChnAttr->bQuickUpdateStatus = HI_TRUE;
    pChnAttr->u64LastSeqHeadOffset = PVR_INDEX_INVALID_SEQHEAD_OFFSET;
    pChnAttr->bEndOfFile = HI_FALSE;
    
    if (HI_SUCCESS == PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stStartEntry, pChnAttr->IndexHandle->stCycMgr.u32StartFrame))
    {
        pChnAttr->u32CurPlayTimeMs = stStartEntry.u32DisplayTimeMs;
    }
    else
    {
        pChnAttr->u32CurPlayTimeMs = 0;
    }
    
    memset(&pChnAttr->stLastStatus, 0, sizeof(HI_UNF_PVR_PLAY_STATUS_S));
    memset(&pChnAttr->stVdecCtrlInfo, 0, sizeof(HI_UNF_AVPLAY_CONTROL_INFO_S));

    PVR_Index_ResetPlayAttr(pChnAttr->IndexHandle);

    /*if(HI_SUCCESS!=PVRPlayFindCorretEndIndex(pChnAttr))
    {
        HI_ERR_PVR("find endframe failed!\n");
    }*/

    if ((pChnAttr->IndexHandle->u64PauseOffset != 0) &&
       (pChnAttr->IndexHandle->u64PauseOffset != PVR_INDEX_PAUSE_INVALID_OFFSET))
    {
        HI_S32 s32Ret = 0;
        if (HI_SUCCESS != PVR_Index_SeekToPauseOrStart(pChnAttr->IndexHandle))
        {
            HI_ERR_PVR("seek to pause frame failed!\n");
        }

        s32Ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &(pChnAttr->IndexHandle->stCurPlayFrame), pChnAttr->IndexHandle->u32ReadFrame);
        if((HI_ERR_PVR_FILE_TILL_END == s32Ret) || (pChnAttr->IndexHandle->stCurPlayFrame.u64GlobalOffset < pChnAttr->IndexHandle->u64FileSizeGlobal))
        {
            s32Ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &(pChnAttr->IndexHandle->stCurPlayFrame), --pChnAttr->IndexHandle->u32ReadFrame);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_PVR("get the %d entry fail.\n", pChnAttr->IndexHandle->u32ReadFrame);
            }
        }
        pChnAttr->u32CurPlayTimeMs = pChnAttr->IndexHandle->stCurPlayFrame.u32DisplayTimeMs;
    }
    else
    {
        if (HI_SUCCESS != PVR_Index_SeekToStart(pChnAttr->IndexHandle))
        {
            HI_ERR_PVR("seek to start frame failed!\n");
        }
    }

    PVR_Index_GetRecIdxInfo(pChnAttr->IndexHandle);

    if (PVR_REC_INDEX_MAGIC_WORD != pChnAttr->IndexHandle->stRecIdxInfo.u32MagicWord)
    {
        PVR_Index_GetIdxInfo(pChnAttr->IndexHandle);
    }

    stVdecCmd.u32CmdID = HI_UNF_AVPLAY_GET_VDEC_INFO_CMD;
    stVdecCmd.pPara = &stVdecInfo;
    if (HI_SUCCESS != HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_VCODEC, &stVdecCmd))
    {
        HI_ERR_PVR("HI_UNF_AVPLAY_Invoke get vdec info fail\n");
        pChnAttr->u32FrmNum = PVR_DEFAULT_FRAME_BUFF_NUM;
    }
    else
    {
        pChnAttr->u32FrmNum = stVdecInfo.u32DispFrmBufNum;

        ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO, &stAvplayPrivInfo);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("HI_UNF_AVPLAY_Invoke get private info fail\n");
        }
        u32DispOptimizeFlag = stAvplayPrivInfo.u32DispOptimizeFlag;

        if (1 == u32DispOptimizeFlag)
        {
            if ((pChnAttr->IndexHandle->stRecIdxInfo.stIdxInfo.u32MaxGopSize + PVR_VO_FRMBUFF_NUM_OF_ENABLE_DEI) <= stVdecInfo.u32DispFrmBufNum)
            {
                pChnAttr->u32VoFrmNum = PVR_VO_FRMBUFF_NUM_OF_ENABLE_DEI;
                pChnAttr->stVdecCtrlInfo.u32DispOptimizeFlag = PVR_ENABLE_DISP_OPTIMIZE;
            }
            else
            {
                HI_ERR_PVR("Can not enable display optimize, max gop size=%d but frame buffer=%d.\n", 
                    pChnAttr->IndexHandle->stRecIdxInfo.stIdxInfo.u32MaxGopSize,
                    stVdecInfo.u32DispFrmBufNum);
                //lint -e655
                HI_UNF_AVPLAY_Stop(pChnAttr->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID, NULL);
                //lint +e655
                pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_INIT ;
                pChnAttr->enLastState = HI_UNF_PVR_PLAY_STATE_INIT ;
                PVR_UNLOCK(&(pChnAttr->stMutex));
                return HI_FAILURE;
            }
        }
        else
        {
            pChnAttr->u32VoFrmNum = PVR_VO_FRMBUFF_NUM_OF_DISABLE_DEI;
            pChnAttr->stVdecCtrlInfo.u32DispOptimizeFlag = PVR_DISABLE_DISP_OPTIMIZE;
        }        
    }
    pChnAttr->enFBTimeCtrlLastSpeed = HI_UNF_PVR_PLAY_SPEED_BUTT;
    
    PVRPlayAnalysisStream(pChnAttr);

    if (pthread_create(&pChnAttr->PlayStreamThread, NULL, PVRPlayMainRoute, pChnAttr))
    {
        HI_ERR_PVR("create play thread failed!\n");
        //lint -e655
        (void)HI_UNF_AVPLAY_Stop(pChnAttr->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID, NULL);
        //lint +e655
        /* and also reset play state to init                                      */
        pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_INIT ;
        pChnAttr->enLastState = HI_UNF_PVR_PLAY_STATE_INIT ;
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    /* init timer only once */
    if (HI_FALSE == g_bPlayTimerInitFlag)
    {
        memset (&stSigEvt, 0, sizeof (struct sigevent));  
        stSigEvt.sigev_value.sival_ptr = &g_stPlayTimer;            
        stSigEvt.sigev_notify = SIGEV_THREAD;  
        stSigEvt.sigev_notify_function = PVRPlayCalcTime;  
        
        if(HI_SUCCESS != timer_create(CLOCK_REALTIME, &stSigEvt, &g_stPlayTimer))
        {
            HI_ERR_PVR("Create play timer failed!\n");
        }
        
        stTimeSpec.it_interval.tv_sec = 0;  
        stTimeSpec.it_interval.tv_nsec = PVR_TIME_CTRL_TIMEBASE_NS;  
        stTimeSpec.it_value.tv_sec = 0;  
        stTimeSpec.it_value.tv_nsec = PVR_TIME_CTRL_TIMEBASE_NS;  
        
        if(HI_SUCCESS != timer_settime(g_stPlayTimer, 0,/*TIMER_ABSTIME,*/ &stTimeSpec, NULL))
        {
            HI_ERR_PVR("Start play timer failed!\n");
        }
        
        g_bPlayTimerInitFlag = HI_TRUE;
    }

    PVR_UNLOCK(&(pChnAttr->stMutex));

    return HI_SUCCESS;
}


/*****************************************************************************
 Prototype       : HI_PVR_PlayStopChn
 Description     : stop play channel
 Input           : u32Chn  **channel number
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayStopChn(HI_U32 u32Chn, const HI_UNF_AVPLAY_STOP_OPT_S *pstStopOpt)
{
    HI_S32 ret;
    PVR_PLAY_CHN_S  *pChnAttr;
    HI_HANDLE       hWindow;
    HI_U32 i = 0;
    HI_U32 u32VidPid = 0x1fff;
    HI_UNF_AVPLAY_FRMRATE_PARAM_S stFrmRateAttr;
    HI_CODEC_VIDEO_CMD_S  stVdecCmdPara = {0};
    HI_UNF_AVPLAY_TPLAY_OPT_S stTplayOpts;
    HI_UNF_AVPLAY_STATUS_INFO_S stAvplayStatus;

    PVR_PLAY_CHECK_CHN(u32Chn);

    memset(&stFrmRateAttr, 0, sizeof(HI_UNF_AVPLAY_FRMRATE_PARAM_S));
    memset(&stTplayOpts, 0, sizeof(HI_UNF_AVPLAY_TPLAY_OPT_S));
    memset(&stAvplayStatus, 0, sizeof(HI_UNF_AVPLAY_STATUS_INFO_S));
    pChnAttr = &g_stPvrPlayChns[u32Chn];
    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    if ((HI_UNF_PVR_PLAY_STATE_STOP == pChnAttr->enState)
        || (HI_UNF_PVR_PLAY_STATE_INIT == pChnAttr->enState))
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        HI_ERR_PVR("Play channel is stopped already!\n");
        return HI_ERR_PVR_ALREADY;
    }

    HI_INFO_PVR("wait Play thread.\n");
    pChnAttr->bPlayMainThreadStop = HI_TRUE;
    
    PVR_UNLOCK(&(pChnAttr->stMutex));

    (HI_VOID)pthread_join(pChnAttr->PlayStreamThread, NULL);
    HI_INFO_PVR("wait Play thread OK.\n");

    PVR_LOCK(&(pChnAttr->stMutex));

    stFrmRateAttr.enFrmRateType = HI_UNF_AVPLAY_FRMRATE_TYPE_PTS; 
    stFrmRateAttr.stSetFrmRate.u32fpsInteger = 0;
    stFrmRateAttr.stSetFrmRate.u32fpsDecimal = 0;
    ret = HI_UNF_AVPLAY_SetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM, &stFrmRateAttr);
    if (HI_SUCCESS != ret)  
    {
        HI_ERR_PVR("set frame to VO fail.\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    if (HI_SUCCESS == HI_UNF_AVPLAY_GetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID, &u32VidPid))
    {
        if (0x1fff != u32VidPid)
        {
            if (HI_SUCCESS == HI_UNF_AVPLAY_GetStatusInfo(pChnAttr->hAvplay, &stAvplayStatus))
            {
                if (HI_UNF_AVPLAY_STATUS_STOP != stAvplayStatus.enRunStatus)
                {
            		stTplayOpts.enTplayDirect = HI_UNF_AVPLAY_TPLAY_DIRECT_FORWARD;
                    stTplayOpts.u32SpeedInteger = 1;
                    stTplayOpts.u32SpeedDecimal = 0;
                    stVdecCmdPara.u32CmdID = HI_UNF_AVPLAY_SET_TPLAY_PARA_CMD;
                    stVdecCmdPara.pPara = &stTplayOpts;
                    ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_VCODEC, (void *)&stVdecCmdPara);
                    
            		if (HI_SUCCESS != ret)
            		{
                		HI_ERR_PVR("Resume Avplay trick mode to normal fail.\n");
                		PVR_UNLOCK(&(pChnAttr->stMutex));
                		return HI_FAILURE;
                    }
                }
            }
        }
    }

    ret = HI_MPI_AVPLAY_SetWindowRepeat(pChnAttr->hAvplay, 1);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("AVPLAY set window repeat failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    ret = HI_MPI_AVPLAY_GetWindowHandle(pChnAttr->hAvplay, &hWindow);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("AVPLAY get window handle failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }
#if 0
    /* set window to step mode */
    ret = HI_MPI_VO_SetWindowStepMode(hWindow, HI_FALSE);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("Set window step mode failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }
#endif
    ret = HI_UNF_AVPLAY_SetDecodeMode(pChnAttr->hAvplay, HI_UNF_VCODEC_MODE_NORMAL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("set vdec normal mode error!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    //lint -e655
    ret = HI_UNF_AVPLAY_Stop(pChnAttr->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID, pstStopOpt);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("HI_UNF_AVPLAY_Stop failed:%#x, force PVR stop!\n", ret);
    }
    //lint +e655

    ret = HI_UNF_DMX_ResetTSBuffer(pChnAttr->hTsBuffer);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("ts buffer reset failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    pChnAttr->enLastState = HI_UNF_PVR_PLAY_STATE_STOP;
    pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_STOP;
    pChnAttr->enSpeed = HI_UNF_PVR_PLAY_SPEED_BUTT;
    pChnAttr->bPlayMainThreadStop = HI_FALSE;
    pChnAttr->bQuickUpdateStatus = HI_FALSE;
    pChnAttr->u64LastSeqHeadOffset = PVR_INDEX_INVALID_SEQHEAD_OFFSET;
    pChnAttr->bEndOfFile = HI_FALSE;
    memset(&pChnAttr->stLastStatus, 0, sizeof(HI_UNF_PVR_PLAY_STATUS_S));

    PVR_Index_ResetPlayAttr(pChnAttr->IndexHandle);

    for(i = 0; i < PVR_PLAY_MAX_CHN_NUM; i++)
    {
        if ((HI_UNF_PVR_PLAY_STATE_STOP != g_stPvrPlayChns[i].enState) &&
            (HI_UNF_PVR_PLAY_STATE_INVALID != g_stPvrPlayChns[i].enState) &&
            (HI_UNF_PVR_PLAY_STATE_BUTT != g_stPvrPlayChns[i].enState))
        {
            break;
        }
    }
    if (i == PVR_PLAY_MAX_CHN_NUM)
    {
        if(HI_SUCCESS != timer_delete(g_stPlayTimer))
        {
            HI_ERR_PVR("Delete play timer failed!\n");
        }

        g_bPlayTimerInitFlag = HI_FALSE;
    }

    PVR_UNLOCK(&(pChnAttr->stMutex));
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : HI_PVR_PlayStartTimeShift
 Description     : start TimeShift
 Input           : pu32PlayChnID   **
                   u32DemuxID   **
                   u32RecChnID  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayStartTimeShift(HI_U32 *pu32PlayChnID, HI_U32 u32RecChnID, HI_HANDLE hAvplay, HI_HANDLE hTsBuffer)
{
    HI_S32 ret;
    HI_U32 u32PlayChnID = 0;
    HI_UNF_PVR_REC_ATTR_S RecAttr;
    HI_UNF_PVR_PLAY_ATTR_S PlayAttr;

    PVR_CHECK_POINTER(pu32PlayChnID);

    /* get record channel attribute                                            */
    ret = HI_PVR_RecGetChn(u32RecChnID, &RecAttr);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    /* configure play channel with record channel attributes                   */
    PlayAttr.enStreamType = RecAttr.enStreamType;
    PlayAttr.u32FileNameLen = RecAttr.u32FileNameLen;
    PlayAttr.bIsClearStream = RecAttr.bIsClearStream;
    memset(PlayAttr.szFileName, 0, sizeof(PlayAttr.szFileName));
    strncpy(PlayAttr.szFileName, RecAttr.szFileName, strlen(RecAttr.szFileName));
    PlayAttr.stDecryptCfg.bDoCipher = RecAttr.stEncryptCfg.bDoCipher;
    PlayAttr.stDecryptCfg.enType = RecAttr.stEncryptCfg.enType;
    PlayAttr.stDecryptCfg.u32KeyLen = RecAttr.stEncryptCfg.u32KeyLen;
    memcpy(PlayAttr.stDecryptCfg.au8Key, RecAttr.stEncryptCfg.au8Key, PVR_MAX_CIPHER_KEY_LEN);

    /* apply a new play channel for timeshift playing                          */
    ret = HI_PVR_PlayCreateChn(&u32PlayChnID, &PlayAttr, hAvplay, hTsBuffer);
    if ( HI_SUCCESS != ret)
    {
        return ret;
    }

    /* start timeshift playing                                                 */
    ret = HI_PVR_PlayStartChn(u32PlayChnID);
    if ( HI_SUCCESS != ret)
    {
        (HI_VOID)HI_PVR_PlayDestroyChn(u32PlayChnID);
        return ret;
    }

    *pu32PlayChnID = u32PlayChnID;
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : HI_PVR_PlayStopTimeShift
 Description     : stop TimeShift
 Input           : u32PlayChnID  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayStopTimeShift(HI_U32 u32PlayChnID, const HI_UNF_AVPLAY_STOP_OPT_S *pstStopOpt)
{
    HI_S32 ret;

    PVR_PLAY_CHN_S  *pChnAttr;
    PVR_PLAY_CHECK_CHN(u32PlayChnID);
    pChnAttr = &g_stPvrPlayChns[u32PlayChnID];
    PVR_PLAY_CHECK_CHN_INIT(pChnAttr->enState);

    /* stop timeshift play channel                                             */
    ret = HI_PVR_PlayStopChn(u32PlayChnID, pstStopOpt);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("stop play chn failed:%#x!\n", ret);
        return ret;
    }

    ret = HI_PVR_PlayDestroyChn(u32PlayChnID);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("destroy play chn failed:%#x!\n", ret);
        return ret;
    }
 
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : HI_PVR_PlayPauseChn
 Description     : pause play channel
 Input           : u32Chn  ** channel number
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayPauseChn(HI_U32 u32Chn)
{
    HI_S32 ret;
    PVR_PLAY_CHN_S  *pChnAttr;

    /* when u32Chn is record channel, mean to pause the live stream */
    if (PVR_Rec_IsChnRecording(u32Chn))
    {
        return PVR_Rec_MarkPausePos(u32Chn);
    }

    PVR_PLAY_CHECK_CHN(u32Chn);
    pChnAttr = &g_stPvrPlayChns[u32Chn];
    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    if (HI_UNF_PVR_PLAY_STATE_PAUSE == pChnAttr->enState)
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_SUCCESS;
    }

    if (!((HI_SUCCESS == PVRPlayIsChnTplay(u32Chn))
          || (HI_UNF_PVR_PLAY_STATE_PLAY == pChnAttr->enState)))
    {
        HI_ERR_PVR("state:%d NOT support Pause!\n", pChnAttr->enState);
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_PLAY_INVALID_STATE;
    }
    
    (void)PVRPlaySeekToCurFrame(pChnAttr->IndexHandle, pChnAttr, pChnAttr->enState, HI_UNF_PVR_PLAY_STATE_PLAY);

    ret = HI_UNF_AVPLAY_Pause(pChnAttr->hAvplay, NULL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("AVPLAY_Pause ERR:%#x!\n", ret);
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return ret;
    }

    pChnAttr->bQuickUpdateStatus = HI_TRUE;
    pChnAttr->enLastState = pChnAttr->enState;
    pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_PAUSE;
    pChnAttr->enSpeed = HI_UNF_PVR_PLAY_SPEED_NORMAL;

    HI_WARN_PVR("pause OK!\n");
    PVR_UNLOCK(&(pChnAttr->stMutex));
    return HI_SUCCESS;

}

/*****************************************************************************
 Prototype       : HI_PVR_PlayResumeChn
 Description     : resume the play channel
 Input           : u32Chn  **channel number
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayResumeChn(HI_U32 u32Chn)
{
    HI_S32 ret;
    PVR_PLAY_CHN_S  *pChnAttr;
    HI_HANDLE hWindow;
    HI_U32  pid;
    HI_UNF_AVPLAY_FRMRATE_PARAM_S stFrmRateAttr;    
    HI_CODEC_VIDEO_CMD_S  stVdecCmdPara = {0};
    HI_UNF_AVPLAY_TPLAY_OPT_S stTplayOpts;

    PVR_PLAY_CHECK_CHN(u32Chn);
    
    memset(&stFrmRateAttr, 0, sizeof(HI_UNF_AVPLAY_FRMRATE_PARAM_S));
    memset(&stTplayOpts, 0, sizeof(HI_UNF_AVPLAY_TPLAY_OPT_S));

    pChnAttr = &g_stPvrPlayChns[u32Chn];
    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    if (HI_UNF_PVR_PLAY_STATE_PLAY == pChnAttr->enState)
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_SUCCESS;
    }

    /* among forward play mode, just notice the event when reach to the start, not switch status  */
    if ((pChnAttr->bEndOfFile) && (PVR_IS_PLAY_FORWARD(pChnAttr->enState, pChnAttr->enLastState)))
    {
        HI_WARN_PVR("need not start main rout, laststate=%d!\n", pChnAttr->enState);
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_SUCCESS;
    }

    ret = HI_MPI_AVPLAY_GetWindowHandle(pChnAttr->hAvplay, &hWindow);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("AVPLAY get window handle failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }
#if 0
    /* set window to step mode */
    ret = HI_MPI_VO_SetWindowStepMode(hWindow, HI_FALSE);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("Set window step mode failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }
#endif
    ret = HI_UNF_AVPLAY_Resume(pChnAttr->hAvplay, NULL);
	if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("Resume avplay failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    //ret = PVRPlaySetWinRate(hWindow, (HI_UNF_PVR_PLAY_SPEED_E)(HI_UNF_PVR_PLAY_SPEED_NORMAL/4));
    //HI_INFO_PVR("resume play PVRPlaySetWinRate result is %d\n", ret);

    ret = HI_UNF_AVPLAY_SetDecodeMode(pChnAttr->hAvplay, HI_UNF_VCODEC_MODE_NORMAL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("set vdec normal mode error!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    ret = PVRPlayCheckIfTsOverByRec(pChnAttr);
    if (HI_SUCCESS != ret)
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        HI_ERR_PVR("PVRPlayCheckIfTsOverByRec fail.\n");
        return HI_FAILURE;
    }

    /*on n->p-n situation, it's will appear repeat play issue, normal play also need to reset buffer*/
    /*except of pause state, all the other state switch to play need to reset it to current playing frame 
    else if ((HI_UNF_PVR_PLAY_STATE_PAUSE != pChnAttr->enState)
      || ((HI_UNF_PVR_PLAY_STATE_PAUSE == pChnAttr->enState)
        && (HI_UNF_PVR_PLAY_STATE_PLAY != pChnAttr->enLastState)))*/
    {
        HI_INFO_PVR("to reset buffer and player.\n");

        ret = PVRPlayResetToCurFrame(pChnAttr->IndexHandle, pChnAttr, HI_UNF_PVR_PLAY_STATE_PLAY);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("reset to current frame failed!\n");
        }
        
        pChnAttr->enFBTimeCtrlLastSpeed = HI_UNF_PVR_PLAY_SPEED_BUTT;
    }

    ret = HI_UNF_AVPLAY_GetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &pid);
    if ((HI_SUCCESS != ret) || (0x1fff == pid))
    {
        HI_WARN_PVR("has not audio stream!\n");
    }
    else
    {
        ret = HI_UNF_AVPLAY_Start(pChnAttr->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
        if (HI_SUCCESS != ret)
        {
            PVR_UNLOCK(&(pChnAttr->stMutex));
            HI_ERR_PVR("Can't start audio, error:%#x!\n", ret);
            return ret;
        }
        else
        {
            HI_INFO_PVR("HI_UNF_AVPLAY_start audio ok!\n");
        }
    }

    ret = HI_UNF_AVPLAY_Resume(pChnAttr->hAvplay, NULL);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("AVPLAY_Resume failed:%#x\n", ret);
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    pChnAttr->bQuickUpdateStatus = HI_TRUE;
    pChnAttr->enLastState = pChnAttr->enState;
    pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_PLAY;
    pChnAttr->enSpeed = HI_UNF_PVR_PLAY_SPEED_NORMAL;

    stFrmRateAttr.enFrmRateType = HI_UNF_AVPLAY_FRMRATE_TYPE_PTS; 
    stFrmRateAttr.stSetFrmRate.u32fpsInteger = 0;
    stFrmRateAttr.stSetFrmRate.u32fpsDecimal = 0;
    if (HI_SUCCESS != HI_UNF_AVPLAY_SetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM, &stFrmRateAttr))  
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        HI_ERR_PVR("set frame to VO fail.\n");
        return HI_FAILURE;
    }

    if (HI_SUCCESS != PVRPlayAvplaySyncCtrl(pChnAttr, 1))
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        HI_ERR_PVR("Resume Avplay sync fail.\n");
        return HI_FAILURE;
    }

    stTplayOpts.enTplayDirect = HI_UNF_AVPLAY_TPLAY_DIRECT_FORWARD;
    stTplayOpts.u32SpeedInteger = 1;
    stTplayOpts.u32SpeedDecimal = 0;
    stVdecCmdPara.u32CmdID = HI_UNF_AVPLAY_SET_TPLAY_PARA_CMD;
    stVdecCmdPara.pPara = &stTplayOpts;
    ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_VCODEC, (void *)&stVdecCmdPara);
    
    if (HI_SUCCESS != ret)
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        HI_ERR_PVR("Resume Avplay trick mode to normal fail.\n");
        return HI_FAILURE;
    }
    
    HI_WARN_PVR("resume OK!\n");
    PVR_UNLOCK(&(pChnAttr->stMutex));
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : HI_PVR_PlayTrickMode
 Description     : set the play mode of play channel
 Input           : u32Chn         **channel number
                   pTrickMode  **play mode, trick mode
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayTrickMode(HI_U32 u32Chn, const HI_UNF_PVR_PLAY_MODE_S *pTrickMode)
{
    HI_S32 ret;
    PVR_PLAY_CHN_S  *pChnAttr;
    HI_UNF_PVR_PLAY_STATE_E stateToSet;
    HI_CODEC_VIDEO_CMD_S  stVdecCmdPara = {0};
    HI_UNF_AVPLAY_TPLAY_OPT_S stTPlayOpt;
    HI_UNF_AVPLAY_FRMRATE_PARAM_S stFrmRateAttr;

    PVR_CHECK_POINTER(pTrickMode);
    PVR_PLAY_CHECK_CHN(u32Chn);

    memset(&stTPlayOpt, 0, sizeof(HI_UNF_AVPLAY_TPLAY_OPT_S));
    memset(&stFrmRateAttr, 0, sizeof(HI_UNF_AVPLAY_FRMRATE_PARAM_S));
    
    /*set the mode is rate one, that should be equal to resume */
    if (HI_UNF_PVR_PLAY_SPEED_NORMAL == pTrickMode->enSpeed) /* switch to the normal mode */
    {
        return HI_PVR_PlayResumeChn(u32Chn);
    }

    pChnAttr = &g_stPvrPlayChns[u32Chn];

    PVR_GET_STATE_BY_SPEED(stateToSet, pTrickMode->enSpeed);
    if (HI_UNF_PVR_PLAY_STATE_INVALID == stateToSet)
    {
        HI_ERR_PVR("NOT support this trick mode.\n");
        return HI_ERR_PVR_NOT_SUPPORT;
    }

    /* resume first, switch every module to normal state */
    (void)HI_PVR_PlayResumeChn(u32Chn);
    
    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    if (HI_UNF_PVR_PLAY_STATE_PAUSE == pChnAttr->enLastState)
    {
        pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_PAUSE;
    }  

    /* after playing, any play state can be switched to Tplay */
    if ((pChnAttr->enState < HI_UNF_PVR_PLAY_STATE_PLAY)
        || (pChnAttr->enState > HI_UNF_PVR_PLAY_STATE_STEPB))
    {
        HI_ERR_PVR("State now:%d, NOT support TPlay!\n", pChnAttr->enState);
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_PLAY_INVALID_STATE;
    }

    if (HI_TRUE == pChnAttr->bPlayingTsNoIdx)
    {
        HI_ERR_PVR("No index file, NOT support trick mode.\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_NOT_SUPPORT;
    }

    /* audio index file not support Tplay*/
    if (PVR_INDEX_IS_TYPE_AUDIO(pChnAttr->IndexHandle))
    {
        HI_ERR_PVR("audio indexed stream NOT support trick mode.\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_NOT_SUPPORT;
    }

    /* scramble stream not support Tplay */
    if (!pChnAttr->stUserCfg.bIsClearStream)
    {
        HI_ERR_PVR("scrambed stream NOT support trick mode !\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_NOT_SUPPORT;
    }

    if ((pChnAttr->enState == stateToSet) && (pChnAttr->enSpeed == pTrickMode->enSpeed))
    {
        HI_WARN_PVR("Set the same speed: %d\n", pTrickMode->enSpeed);
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_SUCCESS;
    }
    
	if ((pChnAttr->enState != stateToSet) || (pChnAttr->enSpeed != pTrickMode->enSpeed))
    {
        /* set VO frame rate auto detect */
        stFrmRateAttr.enFrmRateType = HI_UNF_AVPLAY_FRMRATE_TYPE_PTS; 
        stFrmRateAttr.stSetFrmRate.u32fpsInteger = 0;
        stFrmRateAttr.stSetFrmRate.u32fpsDecimal = 0;
        ret = HI_UNF_AVPLAY_SetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM, &stFrmRateAttr);
        if (HI_SUCCESS != ret)  
        {
            HI_ERR_PVR("set VO frame rate auto detect fail.\n");
        }
    
        ret = PVRPlayResetToCurFrame(pChnAttr->IndexHandle, pChnAttr, stateToSet);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("reset to current frame failed!\n");
        }
    }
    
	stTPlayOpt.enTplayDirect = (pChnAttr->enSpeed >= 0) ? HI_UNF_AVPLAY_TPLAY_DIRECT_FORWARD : HI_UNF_AVPLAY_TPLAY_DIRECT_BACKWARD;
    stTPlayOpt.u32SpeedInteger = abs(pChnAttr->enSpeed/HI_UNF_PVR_PLAY_SPEED_NORMAL);
    stTPlayOpt.u32SpeedDecimal = 0;
    stVdecCmdPara.u32CmdID = HI_UNF_AVPLAY_SET_TPLAY_PARA_CMD;
    stVdecCmdPara.pPara = &stTPlayOpt;
    ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_VCODEC, (void *)&stVdecCmdPara);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("AVPLAY Tplay failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }
    
    if ((pChnAttr->enState == (HI_UNF_PVR_PLAY_STATE_E)HI_UNF_PVR_PLAY_STATE_PLAY) &&
        ((stateToSet == HI_UNF_PVR_PLAY_STATE_FB) || 
         (stateToSet == HI_UNF_PVR_PLAY_STATE_FF) ||
         (stateToSet == HI_UNF_PVR_PLAY_STATE_SF)))
    {
        if (HI_SUCCESS != PVRPlayAvplaySyncCtrl(pChnAttr, 0))
        {
            HI_ERR_PVR("Close avplay sync fail!\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }
    }

    /* between forward play and  backword play, just notice the event when reach to the start, not switch status  */
    if (((pChnAttr->bEndOfFile) && (pChnAttr->bTillStartOfFile == HI_TRUE))
        /*&& (PVR_IS_PLAY_BACKWARD(pChnAttr->enState, pChnAttr->enLastState))  */
        && ((HI_UNF_PVR_PLAY_STATE_FB == stateToSet) || (HI_UNF_PVR_PLAY_STATE_STEPB == stateToSet)))
    {
        HI_INFO_PVR("need not start main rout, state=%d, laststate=%d!\n", stateToSet, pChnAttr->enState);
        pChnAttr->bQuickUpdateStatus = HI_FALSE;
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_SUCCESS;
    }
    else if (((pChnAttr->bEndOfFile) && (pChnAttr->bTillStartOfFile == HI_FALSE))
        /*&& (PVR_IS_PLAY_FORWARD(pChnAttr->enState, pChnAttr->enLastState))  */
        && ((HI_UNF_PVR_PLAY_STATE_FF == stateToSet)
            || (HI_UNF_PVR_PLAY_STATE_SF == stateToSet)
            || (HI_UNF_PVR_PLAY_STATE_PLAY == stateToSet)
            || (HI_UNF_PVR_PLAY_STATE_STEPF == stateToSet)))
    {
        HI_INFO_PVR("need not start main rout, state=%d, laststate=%d!\n", stateToSet, pChnAttr->enState);
        pChnAttr->bQuickUpdateStatus = HI_FALSE;
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_SUCCESS;
    }

    /* record rewrite the file, reset it to start */
    ret = PVRPlayCheckIfTsOverByRec(pChnAttr);
    if (HI_SUCCESS != ret)
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    /* state invariable, not need to reset */
    else if (pChnAttr->enState == stateToSet)
    {
        HI_WARN_PVR("State not change:state=%d!\n", pChnAttr->enState);
    }
    /* before and after pause, state invariable, not need to reset */
    else if ((HI_UNF_PVR_PLAY_STATE_PAUSE == pChnAttr->enState)
        && (pChnAttr->enLastState == stateToSet))
    {
        HI_WARN_PVR("State not change before and after pause:state=%d!\n", pChnAttr->enState);
    }
    /* among PLAY/SF/STEPF state, not need to reset */
    else if (((HI_UNF_PVR_PLAY_STATE_PLAY == pChnAttr->enState)
        && (HI_UNF_PVR_PLAY_STATE_SF == stateToSet))
      || ((HI_UNF_PVR_PLAY_STATE_STEPF == pChnAttr->enState)
        && (HI_UNF_PVR_PLAY_STATE_SF == stateToSet)))
    {
        HI_WARN_PVR("Change state from %d to %d!\n", pChnAttr->enState, stateToSet);
    }
    /* before and after pause,among PLAY/SF/STEPF state,not need to reset  */
    else if (((HI_UNF_PVR_PLAY_STATE_PAUSE == pChnAttr->enState)
        && (HI_UNF_PVR_PLAY_STATE_PLAY == pChnAttr->enLastState)
        && (HI_UNF_PVR_PLAY_STATE_SF == stateToSet))
      || ((HI_UNF_PVR_PLAY_STATE_PAUSE == pChnAttr->enState)
        && (HI_UNF_PVR_PLAY_STATE_STEPF == pChnAttr->enLastState)
        && (HI_UNF_PVR_PLAY_STATE_SF == stateToSet)))
    {
        HI_WARN_PVR("Change state from %d to %d, after pause!\n", pChnAttr->enLastState, stateToSet);
    }
    /* other state need to reset the current playing frame */
    else
    {
        HI_WARN_PVR("to reset buffer and player Last state:%d, to set state:%d, play state:%d.\n", pChnAttr->enLastState, stateToSet, pChnAttr->enState);
        ret = PVRPlayResetToCurFrame(pChnAttr->IndexHandle, pChnAttr, stateToSet);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("reset to current frame failed!\n");
        }
    }

    /* video trick mode, stop the audio */
    ret = HI_UNF_AVPLAY_Stop(pChnAttr->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("AVPLAY stop audio failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }
    /* forward or backward trick mode need to set I frame mode */
    if ((HI_UNF_PVR_PLAY_STATE_FF == stateToSet)
        || (HI_UNF_PVR_PLAY_STATE_FB == stateToSet))
    {
        stTPlayOpt.enTplayDirect = (pTrickMode->enSpeed >= 0) ? HI_UNF_AVPLAY_TPLAY_DIRECT_FORWARD : HI_UNF_AVPLAY_TPLAY_DIRECT_BACKWARD;
        stTPlayOpt.u32SpeedInteger = abs(pTrickMode->enSpeed/HI_UNF_PVR_PLAY_SPEED_NORMAL);
        stTPlayOpt.u32SpeedDecimal = 0;
        
        ret = HI_UNF_AVPLAY_Tplay(pChnAttr->hAvplay, &stTPlayOpt);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("AVPLAY Tplay failed!\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }
    }
    else if (HI_UNF_PVR_PLAY_STATE_SF == stateToSet)
    {
        /* set VO frame rate auto detect */
        stFrmRateAttr.enFrmRateType = HI_UNF_AVPLAY_FRMRATE_TYPE_PTS; 
        stFrmRateAttr.stSetFrmRate.u32fpsInteger = 0;
        stFrmRateAttr.stSetFrmRate.u32fpsDecimal = 0;
        ret = HI_UNF_AVPLAY_SetAttr(pChnAttr->hAvplay, HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM, &stFrmRateAttr);
        if (HI_SUCCESS != ret)  
        {
            HI_ERR_PVR("set VO frame rate auto detect fail.\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }
        /* set none I frame mode */
        ret = HI_UNF_AVPLAY_SetDecodeMode(pChnAttr->hAvplay, HI_UNF_VCODEC_MODE_NORMAL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("set vdec normal mode error!\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }

        stTPlayOpt.enTplayDirect = HI_UNF_AVPLAY_TPLAY_DIRECT_FORWARD;
        stTPlayOpt.u32SpeedInteger = 0;
        stTPlayOpt.u32SpeedDecimal = (pTrickMode->enSpeed *1000) / HI_UNF_PVR_PLAY_SPEED_NORMAL;

        /* sf use the normal play mode */
        ret = HI_UNF_AVPLAY_Tplay(pChnAttr->hAvplay, &stTPlayOpt);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("AVPLAY resume failed!\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }
    }
    else
    {
        HI_ERR_PVR("NOT support this trick mode.\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_NOT_SUPPORT;
    }

    pChnAttr->bQuickUpdateStatus = HI_TRUE;
    pChnAttr->stTplayCtlInfo.u32RefFrmPtsMs = PVR_INDEX_INVALID_PTSMS;
    pChnAttr->enLastState = pChnAttr->enState;
    pChnAttr->enState = stateToSet;
    pChnAttr->enSpeed = pTrickMode->enSpeed;

    HI_WARN_PVR("set trickMode Ok: speed=%d!\n", pTrickMode->enSpeed);
    PVR_UNLOCK(&(pChnAttr->stMutex));
    return ret;
}

/*****************************************************************************
 Prototype       : HI_PVR_PlaySeek
 Description     : seek to play
 Input           : u32Chn        **channel number
                   pPosition  **the position to play
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlaySeek(HI_U32 u32Chn, const HI_UNF_PVR_PLAY_POSITION_S *pPosition)
{
    HI_S32 ret = HI_SUCCESS;
    PVR_PLAY_CHN_S  *pChnAttr;    
    HI_U32 u32CurPlayTime = 0;
    HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S stAvplayPrivInfo;

    PVR_CHECK_POINTER(pPosition);
    PVR_PLAY_CHECK_CHN(u32Chn);
	
    memset(&stAvplayPrivInfo, 0 ,sizeof(HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S));
	
    pChnAttr = &g_stPvrPlayChns[u32Chn];

    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    /* for scramble stream, not support seek, presently */
    if (!pChnAttr->stUserCfg.bIsClearStream)
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        /* TODO: about the scramble stream */
        HI_ERR_PVR("Not support scram ts to seek!\n");
        return HI_ERR_PVR_NOT_SUPPORT;
    }

    if (HI_UNF_PVR_PLAY_POS_TYPE_SIZE == pPosition->enPositionType)
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        HI_ERR_PVR("Not support seek by size!\n");
        return HI_ERR_PVR_NOT_SUPPORT;
    }

    if (HI_TRUE == pChnAttr->bPlayingTsNoIdx)
    {
        HI_ERR_PVR("No index file, NOT support seek.\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_NOT_SUPPORT;
    }

    if ((pPosition->s32Whence == SEEK_SET) && (pPosition->s64Offset < 0))
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        HI_ERR_PVR("seek from start, offset error: %d!\n", pPosition->s64Offset);
        return HI_ERR_PVR_INVALID_PARA;
    }

    if ((pPosition->s32Whence == SEEK_END) && (pPosition->s64Offset > 0))
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        HI_ERR_PVR("seek from end, offset error: %d!\n", pPosition->s64Offset);
        return HI_ERR_PVR_INVALID_PARA;
    }

    if ((pPosition->s32Whence == SEEK_CUR) && (pPosition->s64Offset == 0))
    {
        PVR_UNLOCK(&(pChnAttr->stMutex));
        HI_WARN_PVR("seek from current, offset is %lld!\n", pPosition->s64Offset);
        return HI_SUCCESS;
    }

    HI_INFO_PVR("Seek: type:%s, whence:%s, offset:%lld. \n",
        HI_UNF_PVR_PLAY_POS_TYPE_TIME == pPosition->enPositionType ? "TIME" : "Frame",
        WHENCE_STRING(pPosition->s32Whence),
        pPosition->s64Offset);

    if (HI_UNF_PVR_PLAY_POS_TYPE_TIME == pPosition->enPositionType)
    {        
        ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO, (void *)&stAvplayPrivInfo);
        if (HI_SUCCESS != ret)
        {
            //PVR_UNLOCK(&(pChnAttr->stMutex));
            HI_ERR_PVR("Can't get current play frame time, use default time 0!\n");
            //return HI_ERR_PVR_INVALID_PARA;
            u32CurPlayTime = 0;
        }
        else
        {
            u32CurPlayTime = stAvplayPrivInfo.u32LastPlayTime;
        }
    }

    if (((HI_UNF_PVR_PLAY_STATE_PLAY == pChnAttr->enState)
        || (HI_UNF_PVR_PLAY_STATE_PAUSE == pChnAttr->enState)
        || (HI_UNF_PVR_PLAY_STATE_FF == pChnAttr->enState)
        || (HI_UNF_PVR_PLAY_STATE_FB == pChnAttr->enState)
        || (HI_UNF_PVR_PLAY_STATE_SF == pChnAttr->enState)
        || (HI_UNF_PVR_PLAY_STATE_STEPF == pChnAttr->enState)
        || (HI_UNF_PVR_PLAY_STATE_STEPB == pChnAttr->enState))
        && (0 != u32CurPlayTime))
    {
        HI_INFO_PVR("to reset buffer and player.\n");
        pChnAttr->stTplayCtlInfo.u32RefFrmPtsMs = PVR_INDEX_INVALID_PTSMS;

        ret = PVRPlayResetToCurFrame(pChnAttr->IndexHandle, pChnAttr, pChnAttr->enState);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("reset to current frame failed!\n");
        }
    }

    switch ( pPosition->enPositionType )
    {
        case HI_UNF_PVR_PLAY_POS_TYPE_SIZE:
            /*
            ret = PVR_Index_SeekByByte(pChnAttr->IndexHandle,
                        pPosition->s64Offset, pPosition->s32Whence);
            */
            ret = HI_ERR_PVR_NOT_SUPPORT;
            break;
        case HI_UNF_PVR_PLAY_POS_TYPE_FRAME:
            /*
            if (pPosition->s64Offset > 0x7fffffff)
            {
                ret = HI_ERR_PVR_INVALID_PARA;
            }
            else
            {
                ret = PVR_Index_SeekByFrame2I(pChnAttr->IndexHandle,
                        (HI_S32)pPosition->s64Offset, pPosition->s32Whence);
            }
            */
            ret = HI_ERR_PVR_NOT_SUPPORT;
            break;
        case HI_UNF_PVR_PLAY_POS_TYPE_TIME:            
            ret = PVR_Index_SeekByTime(pChnAttr->IndexHandle, pPosition->s64Offset, pPosition->s32Whence, u32CurPlayTime);
            if(ret == HI_SUCCESS)
            {
                PVR_INDEX_ENTRY_S stReadFrame;

                memset(&stReadFrame, 0 ,sizeof(PVR_INDEX_ENTRY_S));
                
				ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stReadFrame, pChnAttr->IndexHandle->u32ReadFrame);
                if (HI_SUCCESS != ret)
                {
					if (HI_ERR_PVR_FILE_TILL_END == ret)
                    {
                        ret = PVR_Index_GetFrameByNum(pChnAttr->IndexHandle, &stReadFrame, pChnAttr->IndexHandle->u32ReadFrame-1);
                        if (HI_SUCCESS != ret)
                        {
                            PVR_UNLOCK(&(pChnAttr->stMutex));
                            HI_ERR_PVR("Can't get EndFrame:%d\n", pChnAttr->IndexHandle->u32ReadFrame);
                            return ret;
                        }
                    }
                    else
                    {
                        PVR_UNLOCK(&(pChnAttr->stMutex));
                        HI_ERR_PVR("Can't get EndFrame:%d\n", pChnAttr->IndexHandle->u32ReadFrame);
                        return ret;
                    }
               	}
                pChnAttr->u32CurPlayTimeMs = stReadFrame.u32DisplayTimeMs;
            }
            break;
        default:
            ret = HI_ERR_PVR_INVALID_PARA;
    }

    pChnAttr->bQuickUpdateStatus = HI_TRUE;

    HI_INFO_PVR("SEEK OK!\n");
    PVR_UNLOCK(&(pChnAttr->stMutex));

    return ret;
}

/*****************************************************************************
 Prototype       : HI_PVR_PlayStep
 Description     : play by step frame
 Input           : u32Chn        **channel number
                   direction  ** direction:forward or backward. presently, just only support backward.
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayStep(HI_U32 u32Chn, HI_S32 direction)
{
    HI_S32 ret = HI_SUCCESS;
    PVR_PLAY_CHN_S  *pChnAttr;
    HI_HANDLE hWindow;
    HI_CODEC_VIDEO_CMD_S  stVdecCmdPara = {0};
    HI_UNF_AVPLAY_TPLAY_OPT_S stTPlayOpt;

    PVR_PLAY_CHECK_CHN(u32Chn);
    pChnAttr = &g_stPvrPlayChns[u32Chn];

    memset(&stTPlayOpt, 0, sizeof(HI_UNF_AVPLAY_TPLAY_OPT_S));

    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    HI_INFO_PVR("PVR step once, channel=%d!\n", u32Chn);

    if (direction < 0)
    {
        HI_ERR_PVR("PVR Play: NOT support step back!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_NOT_SUPPORT;
    }

    if (direction == 0)
    {
        HI_WARN_PVR("PVR Play: step no direction!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_SUCCESS;
    }

    /* audio type index file, which not support step forward play */
    if (PVR_INDEX_IS_TYPE_AUDIO(pChnAttr->IndexHandle))
    {
        HI_ERR_PVR("audio stream NOT support step play!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_NOT_SUPPORT;
    }

    if ((pChnAttr->bEndOfFile)
        && (PVR_IS_PLAY_FORWARD(pChnAttr->enState, pChnAttr->enLastState))
        && (direction > 0))
    {
        HI_INFO_PVR("till end, need not start main rout, state=%d, laststate=%d!\n",  pChnAttr->enState);
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_SUCCESS;
    }

    /* record rewrite the file, so reset it to the start */
    if (PVR_Index_QureyClearRecReachPlay(pChnAttr->IndexHandle))
    {
        PVR_Index_SeekToStart(pChnAttr->IndexHandle);
        pChnAttr->bTsBufReset = HI_TRUE;
        ret = HI_UNF_DMX_ResetTSBuffer(pChnAttr->hTsBuffer);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("ts buffer reset failed!\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }

        ret = HI_UNF_AVPLAY_Reset(pChnAttr->hAvplay, NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("AVPLAY reset failed!\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }
    }
    else if (((HI_UNF_PVR_PLAY_STATE_PLAY != pChnAttr->enState)
        && (HI_UNF_PVR_PLAY_STATE_SF != pChnAttr->enState)
        && (HI_UNF_PVR_PLAY_STATE_PAUSE != pChnAttr->enState)
        && (HI_UNF_PVR_PLAY_STATE_STEPF != pChnAttr->enState))
     || ((HI_UNF_PVR_PLAY_STATE_PAUSE == pChnAttr->enState)
        && (HI_UNF_PVR_PLAY_STATE_PLAY != pChnAttr->enLastState)
        && (HI_UNF_PVR_PLAY_STATE_SF != pChnAttr->enLastState)
        && (HI_UNF_PVR_PLAY_STATE_STEPF != pChnAttr->enLastState)))
    {
        HI_INFO_PVR("to reset buffer and player.\n");
        ret = PVRPlayResetToCurFrame(pChnAttr->IndexHandle, pChnAttr, HI_UNF_PVR_PLAY_STATE_STEPF);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("reset to current frame failed!\n");
        }
    }

    ret = HI_MPI_AVPLAY_GetWindowHandle(pChnAttr->hAvplay, &hWindow);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("AVPLAY get window handle failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }

    /* the first incoming step play mode, set the player */
    if (HI_UNF_PVR_PLAY_STATE_STEPF != pChnAttr->enState)
    {
        ret = HI_UNF_AVPLAY_SetDecodeMode(pChnAttr->hAvplay, HI_UNF_VCODEC_MODE_NORMAL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("set vdec normal mode error!\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }

        /*video trick mode, stop the audio */
        ret = HI_UNF_AVPLAY_Stop(pChnAttr->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("AVPLAY stop audio failed!\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }
#if 0
        /* set window to step mode */
        ret = HI_MPI_VO_SetWindowStepMode(hWindow, HI_TRUE);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("Set window step mode failed!\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }
#endif
        /* on step mode, resume the player to normal mode */
        ret = HI_UNF_AVPLAY_Resume(pChnAttr->hAvplay, NULL);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("AVPLAY_Resume failed:%#x\n", ret);
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }

        pChnAttr->bQuickUpdateStatus = HI_TRUE;
        pChnAttr->enLastState = pChnAttr->enState;
        pChnAttr->enState = HI_UNF_PVR_PLAY_STATE_STEPF;

		//set play speed to normal
    	stTPlayOpt.enTplayDirect = HI_UNF_AVPLAY_TPLAY_DIRECT_FORWARD;
        stTPlayOpt.u32SpeedInteger = HI_UNF_PVR_PLAY_SPEED_NORMAL;
        stTPlayOpt.u32SpeedDecimal = 0;
        stVdecCmdPara.u32CmdID = HI_UNF_AVPLAY_SET_TPLAY_PARA_CMD;
        stVdecCmdPara.pPara = &stTPlayOpt;
        ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_VCODEC, (void *)&stVdecCmdPara);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("AVPLAY Tplay failed!\n");
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_FAILURE;
        }
    }
    
    /* on step mode forward one frame */
    /*HI_MPI_VO_SetWindowStepPlay(hWindow);  */
    ret = HI_UNF_AVPLAY_Step(pChnAttr->hAvplay, NULL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("Step window failed!\n");
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_FAILURE;
    }
    
    if (PVRPlayIsEOS(pChnAttr))
    {
        HI_INFO_PVR("till end, need not start main rout, state=%d, laststate=%d!\n",  pChnAttr->enState);
        PVR_Intf_DoEventCallback(pChnAttr->u32chnID, HI_UNF_PVR_EVENT_PLAY_EOF, 0);
    }

    PVR_UNLOCK(&(pChnAttr->stMutex));

    return HI_SUCCESS;
}

HI_S32 HI_PVR_PlayRegisterReadCallBack(HI_U32 u32Chn, ExtraCallBack readCallBack)
{
    PVR_PLAY_CHN_S              *pChnAttr;
    PVR_PLAY_CHECK_CHN(u32Chn);
    pChnAttr = &g_stPvrPlayChns[u32Chn];
    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    pChnAttr->readCallBack = readCallBack;
    PVR_UNLOCK(&(pChnAttr->stMutex));
    return HI_SUCCESS;
}

HI_S32 HI_PVR_PlayUnRegisterReadCallBack(HI_U32 u32Chn)
{
    PVR_PLAY_CHN_S              *pChnAttr;

    PVR_PLAY_CHECK_CHN(u32Chn);
    pChnAttr = &g_stPvrPlayChns[u32Chn];
    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    pChnAttr->readCallBack = NULL;

    PVR_UNLOCK(&(pChnAttr->stMutex));
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : HI_PVR_PlayGetStatus
 Description     : get the status of play channel
 Input           : u32Chn      **channel number
 Output          : pStatus  **the status of channel
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/22
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_PlayGetStatus(HI_U32 u32Chn, HI_UNF_PVR_PLAY_STATUS_S *pStatus)
{
    PVR_PLAY_CHN_S  *pChnAttr;
    HI_S32 ret;
    HI_UNF_PVR_PLAY_STATE_E enCurState;
    PVR_INDEX_ENTRY_S    stCurPlayFrame;   /* the current displaying frame info  */
    HI_U32 u32PtsPos;
    HI_U32 u32CurFrmTimeMs = 0;
    HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S stAvplayPrivInfo;

    PVR_PLAY_CHECK_CHN(u32Chn);
	
    memset(&stAvplayPrivInfo, 0, sizeof(HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S));
	
    pChnAttr = &g_stPvrPlayChns[u32Chn];
    
    ret = HI_UNF_AVPLAY_Invoke(pChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO, (void *)&stAvplayPrivInfo);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PVR("Get Avplay private info fail.\n");
    }
    u32CurFrmTimeMs = stAvplayPrivInfo.u32LastPlayTime;

    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    enCurState = pChnAttr->enState;

    if ((enCurState < HI_UNF_PVR_PLAY_STATE_PLAY)
        || (enCurState > HI_UNF_PVR_PLAY_STATE_STEPB)
        || (pChnAttr->bEndOfFile)) /*reach to the start or end of the file, return the previous status */
    {
        memcpy(pStatus, &pChnAttr->stLastStatus, sizeof(HI_UNF_PVR_PLAY_STATUS_S));
        pStatus->enState = pChnAttr->enState;
        pStatus->enSpeed = pChnAttr->enSpeed;
        if ((pChnAttr->enState == HI_UNF_PVR_PLAY_STATE_STEPF) ||
            (pChnAttr->enState == HI_UNF_PVR_PLAY_STATE_STEPB) ||
            (abs(pChnAttr->enSpeed)/HI_UNF_PVR_PLAY_SPEED_NORMAL >= 8))
        {
            pStatus->u32CurPlayTimeInMs = u32CurFrmTimeMs;
        }
        else
        {
            pStatus->u32CurPlayTimeInMs = pChnAttr->u32CurPlayTimeMs;
        }
        PVR_UNLOCK(&(pChnAttr->stMutex));

        return HI_SUCCESS;
    }

    if (HI_SUCCESS == PVR_Index_QueryFrameByTime(pChnAttr->IndexHandle, u32CurFrmTimeMs, &stCurPlayFrame, &u32PtsPos))
    {
        pStatus->u32CurPlayFrame = u32PtsPos;
        pStatus->u64CurPlayPos =  stCurPlayFrame.u64Offset;
        if ((pChnAttr->enState == HI_UNF_PVR_PLAY_STATE_STEPF) ||
            (pChnAttr->enState == HI_UNF_PVR_PLAY_STATE_STEPB) ||
            (abs(pChnAttr->enSpeed)/HI_UNF_PVR_PLAY_SPEED_NORMAL >= 8))
        {
            pStatus->u32CurPlayTimeInMs = u32CurFrmTimeMs;
        }
        else
        {
            pStatus->u32CurPlayTimeInMs = pChnAttr->u32CurPlayTimeMs;
        }
    }
    else
    {
        memcpy(pStatus, &pChnAttr->stLastStatus, sizeof(HI_UNF_PVR_PLAY_STATUS_S));
        pStatus->enState = pChnAttr->enState;
        pStatus->enSpeed = pChnAttr->enSpeed;
        if ((pChnAttr->enState == HI_UNF_PVR_PLAY_STATE_STEPF) ||
            (pChnAttr->enState == HI_UNF_PVR_PLAY_STATE_STEPB) ||
            (abs(pChnAttr->enSpeed)/HI_UNF_PVR_PLAY_SPEED_NORMAL >= 8))
        {
            pStatus->u32CurPlayTimeInMs = u32CurFrmTimeMs;
        }
        else
        {
            pStatus->u32CurPlayTimeInMs = pChnAttr->u32CurPlayTimeMs;
        }
    }
    
    pStatus->enState = pChnAttr->enState;
    pStatus->enSpeed = pChnAttr->enSpeed;

    memcpy(&pChnAttr->stLastStatus, pStatus, sizeof(HI_UNF_PVR_PLAY_STATUS_S));

    HI_WARN_PVR("========cur time:%d!\n", pStatus->u32CurPlayTimeInMs);
    PVR_UNLOCK(&(pChnAttr->stMutex));

    return HI_SUCCESS;
}

HI_S32 HI_PVR_PlayGetFileAttr(HI_U32 u32Chn, HI_UNF_PVR_FILE_ATTR_S *pAttr)
{
    HI_S32 ret;
    PVR_PLAY_CHN_S  *pChnAttr;

    PVR_CHECK_POINTER(pAttr);
    PVR_PLAY_CHECK_INIT(&g_stPlayInit);

    PVR_PLAY_CHECK_CHN(u32Chn);
    pChnAttr = &g_stPvrPlayChns[u32Chn];

    if(PVR_Rec_IsFileSaving(pChnAttr->stUserCfg.szFileName))
    {
        PVR_Index_FlushIdxWriteCache(pChnAttr->IndexHandle);
    }

    PVR_LOCK(&(pChnAttr->stMutex));
    PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr);

    ret = PVR_Index_PlayGetFileAttrByFileName(pChnAttr->stUserCfg.szFileName, pAttr);
    PVR_UNLOCK(&(pChnAttr->stMutex));

    return ret;
}

HI_S32 HI_PVR_GetFileAttrByFileName(const HI_CHAR *pFileName, HI_UNF_PVR_FILE_ATTR_S *pAttr)
{
    HI_S32 ret;
    PVR_REC_CHN_S*  pstChnAttr = NULL;

    if(PVR_Rec_IsFileSaving(pFileName))
    {
        pstChnAttr = PVRRecGetChnAttrByName(pFileName);
        
        if (pstChnAttr != NULL)
        {
             PVR_Index_FlushIdxWriteCache(pstChnAttr->IndexHandle);
        }
    }
 
    ret = PVR_Index_PlayGetFileAttrByFileName(pFileName, pAttr);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    return HI_SUCCESS;
}


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

