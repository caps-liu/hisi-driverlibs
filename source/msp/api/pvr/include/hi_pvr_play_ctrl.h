/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : hi_pvr_play_ctrl.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2008/04/14
  Description   :
  History       :
  1.Date        : 2008/04/14
    Author      : q46153
    Modification: Created file

******************************************************************************/

#ifndef __HI_PVR_PLAY_CTRL_H__
#define __HI_PVR_PLAY_CTRL_H__

#include "hi_type.h"
#include "hi_pvr_fifo.h"
#include "hi_pvr_index.h"

#include "hi_drv_pvr.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* End of #ifdef __cplusplus */


#define PVR_PLAY_DMX_GET_BUF_TIME_OUT 5000  /* ms */


/*whether move the short pakcet less than 188 byte to the end of TS or not.
    0:not move, and after that fill it with 0xff
    1:move it, and before that fill it with 0xff 
*/
#define PVR_TS_MOVE_TO_END   1


#define PVR_PLAY_DO_NOT_MARK_DISPLAY 0xffU

#define PVR_PLAY_STEP_WATI_TIME   1000UL  /* ms */

#define PVR_PLAY_MAX_FRAME_SIZE  (1024*1024*10)   /* the size of max frame */

#define PVR_PLAY_PICTURE_HEADER_LEN  4			/* the length of picture header ID, in byte */


#define WHENCE_STRING(whence)   ((0 == (whence)) ? "SEEK_SET" : ((1 == (whence)) ? "SEEK_CUR" : "SEEK_END"))

#define PVR_TIME_CTRL_INTERVAL 1000	

#define PVR_DEFAULT_FRAME_BUFF_NUM  6
#define PVR_VO_FRMBUFF_NUM_OF_DISABLE_DEI  3
#define PVR_VO_FRMBUFF_NUM_OF_ENABLE_DEI   7

#define PVR_ENABLE_DISP_OPTIMIZE  1
#define PVR_DISABLE_DISP_OPTIMIZE 0

/* check channel validity                                                   */
#define PVR_PLAY_CHECK_CHN(u32Chn)\
    do {\
        if (u32Chn >= PVR_PLAY_MAX_CHN_NUM )\
        {\
            HI_ERR_PVR("play chn(%u) id invalid!\n", u32Chn);\
            return HI_ERR_PVR_INVALID_CHNID;\
        }\
    }while(0)

/* check play module initialized                                            */
#define PVR_PLAY_CHECK_INIT(pCommAttr)\
    do {\
        if (HI_FALSE == (pCommAttr)->bInit)\
        {\
            HI_ERR_PVR("play not inti yet!\n");\
            return HI_ERR_PVR_NOT_INIT;\
        }\
    }while(0)

#define PVR_PLAY_CHECK_CHN_INIT(enState)\
            do\
            {\
                if (HI_UNF_PVR_PLAY_STATE_INVALID ==  enState )\
                {\
                    return HI_ERR_PVR_CHN_NOT_INIT;\
                }\
            } while (0)

#define PVR_PLAY_CHECK_CHN_INIT_UNLOCK(pChnAttr)\
                    do\
                    {\
                        if (HI_UNF_PVR_PLAY_STATE_INVALID ==  pChnAttr->enState )\
                        {\
                            PVR_UNLOCK(&(pChnAttr->stMutex));\
                            return HI_ERR_PVR_CHN_NOT_INIT;\
                        }\
                    } while (0)

/* PVR ts file read.
return pointer offset forward on success.
otherwise, return the file header.*/
#define  PVR_PLAY_READ_FILE(pu8Addr, offset, size, pChnAttr) \
            do \
            {\
                ssize_t  n;\
                if ((n = PVR_PREAD64(pu8Addr, (size), \
                            pChnAttr->s32DataFile, (offset))) == -1)\
                {\
                    if (NULL != &errno)\
                    {\
                        if (EINTR == errno)\
                        {\
                            continue;\
                        }\
                        else if (errno)\
                        { \
                            return HI_ERR_PVR_FILE_CANT_READ;\
                        }\
                        else\
                        {\
                            HI_ERR_PVR("read err1,  want:%u, off:%llu \n", (size), offset);\
                            return HI_ERR_PVR_FILE_TILL_END;\
                        }\
                    }\
                }\
                if ((0 == n) && (0 != (size)))\
                {\
                    HI_WARN_PVR("read 0,  want:%u, off:%llu \n", (size), offset);\
                    return HI_ERR_PVR_FILE_TILL_END;\
                }\
           }while(0)


/* common information for play module                                      */
typedef struct hiPVR_PLAY_COMM_S
{
    HI_BOOL bInit;
    HI_S32  s32Reserved;
} PVR_PLAY_COMM_S;

/* the info struction for calculating trick mode rate */
typedef struct hiPVR_TPLAY_SPEED_CTRL_S
{
    HI_U32               u32RefFrmPtsMs;         /* the PTS of reference frame, usually, the first frame PTS*/
    HI_U32               u32RefFrmSysTimeMs;     /* the system time of reference frame output */

}PVR_TPLAY_SPEED_CTRL_S;

/* frame tag from pvr to demux */
typedef struct hiPVR_FRAME_TAG
{
    HI_U32          u32DispEnableFlag;       
    HI_U32          u32DispFrameDistance;   
    HI_U32          u32DistanceBeforeFirstFrame;
    HI_U32          u32GopNum;
} PVR_FRAME_TAG_S;

typedef struct hiPVR_SMOOTH_PARA
{
    HI_U32  u32StartCtrlTimeInMs;
    HI_U32  u32LastCtrlTimeInMs;
    HI_U32  u32StartCtrlPtsInMs;
    HI_U32  u32FrameNumAfterLastDisp;
    HI_U32  u32GopCnt;
    HI_UNF_PVR_PLAY_SPEED_E enBackwardLastSpeed;
    HI_U32 u32TimeCtrlSkipFlag;
    HI_UNF_PVR_PLAY_SPEED_E enSmoothLastSpeed;
    HI_U32 u32BackCount;
    HI_U32 u32BackLastVORate;
    HI_U32 u32BackAverageVORate;	
}PVR_SMOOTH_PARA_S;

#ifdef PVR_PROC_SUPPORT
typedef struct hiPVR_PLAY_FF_PROC_S
{
    HI_U32          u32TimeCtrlFindFrm;
    HI_U32          u32TimeCtrlCurFrm;
    HI_U32          u32FirstFrm;
    HI_U32          u32TryFrmNum;
    HI_U32          u32NextIFrm;
    HI_U32          u32TotalFrmNum;
    HI_U32          u32TotalIFrmNum;
    HI_U32          u32TotalPFrmNum;
    HI_U32          u32TotalBFrmNum;
    HI_U32          u32NextTimeStartFrm;
}PVR_PLAY_FF_PROC_S;

typedef struct hi_PVR_PLAY_FB_PROC_S
{
    HI_U32          u32OptimizeFlg;
    HI_U32          u32DispDistance;
    HI_U32          u32SupportMaxGopSize;
    HI_U32          u32FirstFrm;
    HI_U32          u32TotalFrmNum;
    HI_U32          u32TotalGopNum;
    HI_U32          u32TotalPFrmNum;
    HI_U32          u32TotalBFrmNum;
}PVR_PLAY_FB_PROC_S;

/* attributes of play channel                                               */
typedef struct hiPVR_PLAY_CHN_PROC_S
{
    HI_U32          u32PrintFlg;
    HI_U32          u32ChipId;
    HI_U32          u32ChipVer;
    HI_U32          u32Width;
    HI_U32          u32Heigth;
    HI_U32          u32DecAblity;
    HI_U32          u32OrigFrmRate;
    HI_U32          u32FieldFlg;
    HI_U32          u32SetFrmRateInt;
    HI_U32          u32SetFrmRateDec;
    PVR_PLAY_FF_PROC_S stFFCtrlParameter;
    PVR_PLAY_FB_PROC_S stFBCtrlParameter;
} PVR_PLAY_PROC_S;
#endif

/* attributes of play channel                                               */
typedef struct hiPVR_PLAY_CHN_S
{
    HI_U32           u32chnID;

    HI_HANDLE        hAvplay;                 /* avplay handle */
    HI_HANDLE        hTsBuffer;               /* TS buffer handle */
    HI_HANDLE        hCipher;                 /* cipher handle */
    PVR_INDEX_HANDLE IndexHandle;             /* index handle */

    HI_UNF_PVR_PLAY_ATTR_S  stUserCfg;               /* play attributes for user configure */

    HI_U64           u64LastSeqHeadOffset;    /* last sequence offset */

    HI_UNF_PVR_PLAY_STATE_E enState;                 /* play state */
    HI_UNF_PVR_PLAY_STATE_E enLastState;                 /* last play state */
    HI_UNF_PVR_PLAY_SPEED_E enSpeed;

    PVR_FILE64       s32DataFile;             /* descriptor of play file */
    HI_U64           u64CurReadPos;           /* current data file read position */
    PVR_PHY_BUF_S    stCipherBuf;             /* cipher buffer for data decrypt */
    HI_BOOL          bCAStreamHeadSent;

    pthread_t        PlayStreamThread;        /* play thread id   */
    HI_BOOL          bQuickUpdateStatus;      /* new play status incoming */
    HI_BOOL          bPlayMainThreadStop;
    HI_BOOL          bEndOfFile;             /* playing to EOF */
    HI_BOOL          bTillStartOfFile;       /* TRUE: reach to the start of file, FALSE: reach to the end of the file,  used together with bEndOfFile */
    HI_BOOL          bTsBufReset;

    HI_BOOL          bPlayingTsNoIdx;
    HI_U64           u64TsFileSize;          /* the size of ts file, to control the end for playing without index file */

    HI_U32           u32LastEsBufSize;
    HI_U32           u32LastPtsMs;
    PVR_TPLAY_SPEED_CTRL_S stTplayCtlInfo;      /* control info for trick mode */
    HI_UNF_PVR_PLAY_STATUS_S stLastStatus;     /* the last play status, when failure to get current play status, return this */
    ExtraCallBack     readCallBack;
    HI_U32           u32FrmNum;
    HI_U32           u32VoFrmNum;
    HI_UNF_PVR_PLAY_SPEED_E enFBTimeCtrlLastSpeed;
    pthread_mutex_t  stMutex;
    HI_U32           u32CurPlayTimeMs;
    HI_UNF_AVPLAY_CONTROL_INFO_S  stVdecCtrlInfo;
    HI_U32           u32GopNumOfStart;
    PVR_FRAME_TAG_S  stFrmTag;
    PVR_SMOOTH_PARA_S stSmoothPara;
#ifdef PVR_PROC_SUPPORT
    PVR_PLAY_PROC_S stPlayProcInfo;
#endif
} PVR_PLAY_CHN_S;


HI_S32 HI_PVR_PlayRegisterReadCallBack(HI_U32 u32Chn, ExtraCallBack readCallBack);

HI_S32 HI_PVR_PlayUnRegisterReadCallBack(HI_U32 u32Chn);

HI_BOOL PVR_Play_IsFilePlayingSlowPauseBack(const HI_CHAR *pFileName);
HI_BOOL PVR_Play_IsPlaying(void);

void PVRPlaySyncTrickPlayTime(PVR_PLAY_CHN_S *pChnAttr);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

#endif /* End of #ifdef __HI_PVR_PLAY_CTRL_H__ */

