/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_pvr_rec_ctrl.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2008/04/10
  Description   :
  History       :
  1.Date        : 2008/04/10
    Author      : q46153
    Modification: Created file

******************************************************************************/

#ifndef __HI_PVR_REC_CTRL_H__
#define __HI_PVR_REC_CTRL_H__

#include "hi_pvr_priv.h"
#include "hi_pvr_index.h"
#include "hi_pvr_fifo.h"

#include "hi_drv_pvr.h"
#include "hi_mpi_demux.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* End of #ifdef __cplusplus */


#define PVR_REC_MIN_DMXID 0
#define PVR_REC_MAX_DMXID 6

#define PVR_REC_DMX_GET_SC_TIME_OUT     1000  /* ms */
#define PVR_REC_DMX_GET_STREAM_TIME_OUT 1500  /* ms */

#define PVR_REC_APPEND_LEN  (PVR_TS_LEN * 2)

#define CHECK_REC_CHNID(u32ChnID)\
    do\
    {\
       if ((u32ChnID < PVR_REC_START_NUM) || (u32ChnID >= (PVR_REC_MAX_CHN_NUM + PVR_REC_START_NUM)))\
       {\
           return HI_ERR_PVR_INVALID_CHNID;\
       }\
    } while (0)

#define CHECK_REC_INIT(pCommAttr)\
    do\
    {\
        if ((pCommAttr)->bInit != HI_TRUE)\
        {\
            HI_ERR_PVR("Record Module is not Initialized!\n");\
            return HI_ERR_PVR_NOT_INIT;\
        }\
    } while (0)

#define CHECK_REC_DEMUX_ID(DemuxID)\
    do\
    {\
        if (DemuxID > PVR_REC_MAX_DMXID || DemuxID < PVR_REC_MIN_DMXID)\
        {\
            return HI_ERR_PVR_REC_INVALID_DMXID;\
        }\
    } while (0)

#define CHECK_REC_CHN_INIT(enState)\
    do\
    {\
        if (HI_UNF_PVR_REC_STATE_INVALID ==  enState )\
        {\
            return HI_ERR_PVR_CHN_NOT_INIT;\
        }\
    } while (0)

#define CHECK_REC_CHN_INIT_UNLOCK(pRecChnAttr)\
            do\
            {\
                if (HI_UNF_PVR_REC_STATE_INVALID ==  pRecChnAttr->enState )\
                {\
                    PVR_UNLOCK(&(pRecChnAttr->stMutex));\
                    return HI_ERR_PVR_CHN_NOT_INIT;\
                }\
            } while (0)


/* common information for record module                                     */
typedef struct hiPVR_REC_COMM_S
{
    HI_BOOL             bInit ;                             /* module init flag */
    HI_S32              s32Reserved;                        /* reserved */
} PVR_REC_COMM_S;

typedef struct hiPVR_SCD_INFO_S
{
    HI_U32 ScdCnt;
    DMX_IDX_DATA_S ScdBuffer[20];
}PVR_SCD_INFO_S;

/* attributes of record channel                                             */
typedef struct hiPVR_REC_CHN_S
{
    HI_U32                  u32ChnID;
    HI_HANDLE               hCipher;                   /* cipher handle */
    PVR_INDEX_HANDLE        IndexHandle;               /* index handle */

    HI_UNF_PVR_REC_ATTR_S   stUserCfg;                 /* record attributes for user configure */

    HI_U32                  u32Flashlen;
    volatile HI_U64         u64CurFileSize;            /* current size of record file, included rewind */
    HI_UNF_PVR_REC_STATE_E  enState;                   /* record state */
    PVR_FILE64              dataFile;                  /* descriptor of record file */

    pthread_t               RecordIndexThread;         /* record thread pids */
    pthread_t               RecordStreamThread;

    HI_BOOL                 bSavingData;               /* whether saving data or not */
    HI_S32                  s32OverFixTimes;
	HI_BOOL                 bTimeRewindFlg;            /* Timerewind flag*/
    HI_BOOL                 bEventFlg;                 /* Event flag */

    pthread_mutex_t         stMutex;

    struct timespec         tv_start;
    struct timespec         tv_stop;
        
    ExtraCallBack           writeCallBack;
    HI_U32                  u32RecStartTimeMs;
} PVR_REC_CHN_S;

extern HI_BOOL PVR_Rec_IsFileSaving(const HI_CHAR *pFileName);
extern HI_BOOL PVR_Rec_IsChnRecording(HI_U32 u32ChnID);
extern HI_S32 PVR_Rec_MarkPausePos(HI_U32 u32ChnID);
extern HI_BOOL PVR_Rec_IsRecording(void);
extern HI_S32 HI_PVR_CreateIdxFile2(const HI_CHAR* pstTsFileName, HI_CHAR* pstIdxFileName, HI_UNF_PVR_GEN_IDX_ATTR_S* pAttr);
HI_S32 HI_PVR_RecRegisterWriteCallBack(HI_U32 u32ChnID, ExtraCallBack writeCallBack);
HI_S32 HI_PVR_RecUnRegisterWriteCallBack(HI_U32 u32ChnID);
PVR_REC_CHN_S* PVRRecGetChnAttrByName(const HI_CHAR *pFileName);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */


#endif /* End of #ifdef __HI_PVR_H__ */

