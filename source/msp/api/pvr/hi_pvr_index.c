/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : hi_pvr_index.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2008/04/16
  Description   : INDEX module
  History       :
  1.Date        : 2008/04/16
    Author      : q46153
    Modification: Created file

******************************************************************************/
#include <errno.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/time.h>
#include <sys/times.h>

#include "hi_module.h"
#include "hi_mpi_mem.h"

#include "pvr_debug.h"
#include "hi_pvr_index.h"
#include "hi_pvr_rec_ctrl.h"
#include "hi_pvr_play_ctrl.h"
#include "hi_pvr_fifo.h"


//#include "hi_pvr_stub.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C"
{
#endif
#endif /* End of #ifdef __cplusplus */

#define PVR_INDEX_NUM (PVR_REC_MAX_CHN_NUM + PVR_PLAY_MAX_CHN_NUM)

/**
    only replay, use the first 2,
    only record, use the last 3,
    on timeshift, player use the index struct of record.
    only play, the index channel number is equal the play channel.
    but, the index channel number is not equal the record channel, it should be equal with the index parser channel number
*/
static PVR_INDEX_S g_stPVRIndex[PVR_INDEX_NUM];
static HI_U32 g_u32PvrIndexInit = 0; 


#define PVR_DIFF_FRAME_THR  700
#define PVR_DFT_GOP_LEN     200
#define PVR_DFT_STEP_LEN    10


#define PVR_DIFF_FFLUSH_HEADINFO 1000

#define PVR_GET_HEADER_OFFSET() ((HI_U32) (&((PVR_IDX_HEADER_INFO_S *)0)->stCycInfo))
#define PVR_GET_USR_DATA_OFFSET(headInfo) (sizeof(PVR_IDX_HEADER_INFO_S) + PVR_MAX_CADATA_LEN)
#define PVR_GET_CA_DATA_OFFSET() (sizeof(PVR_IDX_HEADER_INFO_S))
#define PVR_GET_IDX_INFO_OFFSET(headInfo) (sizeof(PVR_IDX_HEADER_INFO_S) + (headInfo.u32CADataInfoLen) - sizeof(PVR_REC_INDEX_INFO_S))

#define PVR_IS_CYC_READFRAME_INVLD(start, end, read) \
(((end) > (start) && ((read) < (start) || (read) > (end)))\
     || ((end) < (start) && ((read) < (start) && (read) > (end))) )

#define PVR_IDX_IS_REWIND(handle) ((handle)->stCycMgr.bIsRewind)

#define PVR_WRITE_INDEX(saveSz, wantSz, buf, fd, offset, handle) \
do{\
saveSz = PVR_WRITE(buf, wantSz, fd, (off_t)(offset + handle->u32IdxStartOffsetLen));\
if (saveSz != (ssize_t)wantSz)\
{\
    if (NULL != &errno)\
    {\
        if (ENOSPC == errno)\
        {\
            HI_ERR_PVR("PVR_WRITE fail:%d, want:%u\n", saveSz, wantSz);\
            PVR_IDX_CACHE_UNLOCK(&(handle->stIdxWriteCache.stCacheMutex));\
            return HI_ERR_PVR_FILE_DISC_FULL;\
        }\
        else\
        {\
            HI_ERR_PVR("PVR_WRITE fail:%d, want:%u\n", saveSz, wantSz);\
            PVR_IDX_CACHE_UNLOCK(&(handle->stIdxWriteCache.stCacheMutex));\
            return HI_ERR_PVR_FILE_CANT_WRITE;\
        }\
    }\
}\
}while(0)

#define PVR_READ_INDEX_DIRECTLY(readSz,buf, size, fd,  offset, handle)\
do{\
if (PVR_Index_IfOffsetInWriteCache(handle,offset,size))\
{\
    PVR_Index_FlushIdxWriteCache(handle);\
}\
readSz = PVR_READALL(buf, size, fd,  (off_t)(offset + handle->u32IdxStartOffsetLen));\
}while(0)

                          
#define PVR_READ_INDEX(readSz, buf, size, fd, offset, handle)\
do{\
readSz = PVRCacheReadIdx(handle,fd,(HI_VOID*)buf,size,(off_t)offset,0);\
}while(0)


#define PVR_IDX_CHECK_CYC_SIZE(pstRecAttr) \
    do{\
        if (pstRecAttr->u64MaxFileSize >= PVR_MIN_CYC_SIZE)\
        {\
            pstRecAttr->u64MaxTimeInMs = 0;\
        }\
        else if(pstRecAttr->u64MaxTimeInMs >= PVR_MIN_CYC_TIMEMS )\
        {\
            pstRecAttr->u64MaxFileSize = 0;\
        }\
        else\
        {\
            HI_WARN_PVR("invalidate u64MaxFileSize and u64MaxTimeInMs error!\n");\
        }\
    }while(0)

#define MKSTR(exp) # exp
#define MKMARCOTOSTR(exp) MKSTR(exp)
static const HI_U8 s_szPvrVersion[] __attribute__((used)) = "SDK_VERSION:["\
										MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
										__DATE__", "__TIME__"]";
static HI_S32 PVR_Index_GetPreIFrameByNum(const PVR_INDEX_HANDLE handle,  PVR_INDEX_ENTRY_S *pEntry, HI_U32 num);
/*use cache when read*/
static ssize_t PVRCacheReadIdx(PVR_INDEX_HANDLE  handle,PVR_FILE fd, HI_VOID* pData,size_t size, 
                              HI_U32 offset,HI_U32 u32DirectFlag);
static HI_S32 PVR_Index_IfOffsetReadCache(PVR_INDEX_HANDLE  handle,HI_U32 u32Offset,HI_U32 u32Size);
static HI_S32 PVRIndexGetEntryByNum(const PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pEntry, HI_U32 u32FrameNum);

/*
static HI_U32 PVRIndex_UpdatePreEntryTimeMs(PVR_INDEX_HANDLE pvrIndexHandle, HI_U32 u32TimeMs)
{
    HI_U32 u32MaxCount = sizeof(pvrIndexHandle->stPreEntryTime.u32PreEntryTimeMs)/sizeof(pvrIndexHandle->stPreEntryTime.u32PreEntryTimeMs[0]);
    HI_U32 u32Index = 0;
    HI_U32 u32AverageRet = 0;
    HI_U64 u64TotalValue = 0;

    for (u32Index=0; u32Index<(u32MaxCount-1); u32Index++)
    {
        pvrIndexHandle->stPreEntryTime.u32PreEntryTimeMs[u32Index] = pvrIndexHandle->stPreEntryTime.u32PreEntryTimeMs[u32Index+1];

        u64TotalValue += pvrIndexHandle->stPreEntryTime.u32PreEntryTimeMs[u32Index];
    }

    pvrIndexHandle->stPreEntryTime.u32PreEntryTimeMs[u32MaxCount-1] = u32TimeMs;

    u64TotalValue += pvrIndexHandle->stPreEntryTime.u32PreEntryTimeMs[u32MaxCount-1];

    u32AverageRet = u64TotalValue / u32MaxCount;

    pvrIndexHandle->stPreEntryTime.s32Count++;
    pvrIndexHandle->stPreEntryTime.s32Count %= u32MaxCount;

    return u32AverageRet;
}

static HI_U32 PVRIndex_GetPreEntryAverageTimeMs(PVR_INDEX_HANDLE pvrIndexHandle)
{
    HI_U32 u32MaxCount = sizeof(pvrIndexHandle->stPreEntryTime.u32PreEntryTimeMs)/sizeof(pvrIndexHandle->stPreEntryTime.u32PreEntryTimeMs[0]);
    HI_U32 u32Index = 0;
    HI_U32 u32AverageRet = 0;
    HI_U64 u64TotalValue = 0;

    for (u32Index=0; u32Index<u32MaxCount; u32Index++)
    {
        u64TotalValue += pvrIndexHandle->stPreEntryTime.u32PreEntryTimeMs[u32Index];
    }

    u32AverageRet = u64TotalValue / u32MaxCount;

    return u32AverageRet;
}
*/

HI_U32 PVRIndexGetCurTimeMs(HI_VOID)
{
    HI_U32    Ticks;
	struct tms buf;
    Ticks = (HI_U32)times(&buf);

    return Ticks * 10;
}
/** @defgroup PVR_INNER_FUN Just only for pvr module innner use */
/*! @{ */

/**
@brief Convert record index type to uniform index type(std)

@param[in] vtype     : video type
@param[in] indexType : index type

@return Standard type of VIDSTD_E.

@retval VIDSTD_BUTT if NOT match the input index, return this.
@retval VIDSTD_AUDIO_PES indexType is equal to HI_UNF_PVR_REC_INDEX_TYPE_AUDIO.
@retval others seel also VIDSTD_E.

@sa VIDSTD_E
@sa HI_UNF_VCODEC_TYPE_E
@sa HI_UNF_PVR_REC_INDEX_TYPE_E
*/
static VIDSTD_E PVRIndexUnfTypeToIdxType(HI_UNF_VCODEC_TYPE_E vtype, HI_UNF_PVR_REC_INDEX_TYPE_E indexType)
{
    VIDSTD_E idxType;

    if (indexType == HI_UNF_PVR_REC_INDEX_TYPE_AUDIO)
    {
        return VIDSTD_AUDIO_PES;
    }

    switch ( vtype )
    {
    case HI_UNF_VCODEC_TYPE_MPEG2:
        idxType = VIDSTD_MPEG2;
        break;
    case HI_UNF_VCODEC_TYPE_MPEG4:
        idxType = VIDSTD_MPEG4;
        break;
    case HI_UNF_VCODEC_TYPE_AVS:
        idxType = VIDSTD_AVS;
        break;
    case HI_UNF_VCODEC_TYPE_H263:
        idxType = VIDSTD_H263;
        break;
    case HI_UNF_VCODEC_TYPE_H264:
        idxType = VIDSTD_H264;
        break;
    case HI_UNF_VCODEC_TYPE_REAL9:
        idxType = VIDSTD_BUTT;
        break;
    case HI_UNF_VCODEC_TYPE_REAL8:
        idxType = VIDSTD_BUTT;
        break;
    case HI_UNF_VCODEC_TYPE_VC1:
        idxType = VIDSTD_VC1;
        break;
    case HI_UNF_VCODEC_TYPE_DIVX3:
        idxType = VIDSTD_DIVX3;
        break;

    default:
        idxType = VIDSTD_BUTT;
        break;
    }

    return idxType;
}

/*****************************************************************************
 Prototype       : PVRIndexIsFileRecording
 Description     : check whether the file is recording or not.
 Input           : pIdxFileName--- to check the file
 Output          : handle------- PVR index handle
 Return Value    : On successfully, return HI_TRUE. otherwise return HI_FALSE;
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2010/06/18
    Author       : j40671
    Modification : Created function

*****************************************************************************/
/**
@brief Check the index file whether is the recording one or not. If HI_TRUE, param handle will save the recording index handle.

@param[in] pIdxFileName : the name of index file
@param[out] handle      : if return HI_TRUE, this param save the recording index handle.

@return HI_BOOL

@retval HI_FALSE The index file does NOT record, yet
@retval HI_TRUE The index file is recording

@author j40671
@date 2010/06/18
@sa PVRIndexIsFilePlaying.
*/
static HI_BOOL PVRIndexIsFileRecording(const HI_CHAR *pIdxFileName, PVR_INDEX_HANDLE *handle)
{
    HI_U32 i;

    if ((NULL == handle) || (NULL == pIdxFileName))
    {
        HI_PRINT("\n<%s %d>: Input pointer parameter is NULL!\n", __FUNCTION__, __LINE__);
        return HI_FALSE;   
    }

    for (i = 0; i < PVR_INDEX_NUM; i++)
    {
        if (g_stPVRIndex[i].bIsRec)
        {
            if  (!strncmp(g_stPVRIndex[i].szIdxFileName, pIdxFileName,strlen(pIdxFileName)))
            {
                *handle = &g_stPVRIndex[i];

                return HI_TRUE;
            }
        }
    }

    return HI_FALSE;
}

/*****************************************************************************
 Prototype       : PVRIndexIsFilePlaying
 Description     : get index handle by file name
 Input           : pFileName  **
 Output          : handle     **
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2010/06/18
    Author       : j40671
    Modification : Created function

*****************************************************************************/
/**
@brief Check the index file whether is the playing one or not. If HI_TRUE, param handle will save the playing index handle.

@param[in] pIdxFileName : the name of index file
@param[out] handle      : if return HI_TRUE, this param save the playing index handle.

@return HI_BOOL

@retval HI_FALSE The index file does NOT play, yet
@retval HI_TRUE The index file is playing

@author j40671
@date 2010/06/18
@sa PVRIndexIsFileRecording.
*/

static HI_BOOL PVRIndexIsFilePlaying(const HI_CHAR *pIdxFileName, PVR_INDEX_HANDLE *handle)
{
    HI_U32 i;
    
    if ((NULL == handle) || (NULL == pIdxFileName))
    {
        HI_PRINT("\n<%s %d>: Input pointer parameter is NULL!\n", __FUNCTION__, __LINE__);
        return HI_FALSE;   
    }

    for (i = 0; i < PVR_INDEX_NUM; i++)
    {
        if (g_stPVRIndex[i].bIsPlay)
        {
            if  (!strncmp(g_stPVRIndex[i].szIdxFileName, pIdxFileName,strlen(pIdxFileName)))
            {
                *handle = &g_stPVRIndex[i];

                return HI_TRUE;
            }
        }
    }

    return HI_FALSE;
}

#if 0
STATIC INLINE HI_U32 PVRIndexCycAdjReadFrame(const PVR_INDEX_HANDLE handle, HI_U32 u32CurReadFrame)
{
    HI_U32 u32ReadFrame = u32CurReadFrame;
    HI_U32 u32StartFrame = 0;
    HI_U32 u32EndFrame = 0;
    HI_U32 u32LastFrame = 0;

    /*

    HI_ERR_PVR("==>: S:%d, E:%d, L:%d, C:%d, O:%d, u32ReadFrame:%d\n", handle->stCycMgr.u32StartFrame,
                handle->stCycMgr.u32EndFrame, handle->stCycMgr.u32LastFrame,
                handle->u32ReadFrame, handle->u32ReadFrame, u32ReadFrame);
    */
    u32StartFrame = handle->stCycMgr.u32StartFrame;
    u32EndFrame = handle->stCycMgr.u32EndFrame; ///--------wxl for test
    if ((HI_S32)u32EndFrame < 0)
        u32EndFrame = 0;

    u32LastFrame = handle->stCycMgr.u32LastFrame;

    if (u32StartFrame < u32EndFrame)
    {
        if ((HI_S32)u32ReadFrame < (HI_S32)u32StartFrame)
        {
            u32ReadFrame = u32StartFrame;
        }
        if (u32ReadFrame > u32EndFrame)
        {
            u32ReadFrame = u32EndFrame;
        }
    }
    else
    {
        if ((HI_S32)u32ReadFrame < 0)
        {
            u32ReadFrame = u32LastFrame  + (HI_S32)u32ReadFrame;
        }
        else if (u32ReadFrame > (u32LastFrame - 1))
        {
            u32ReadFrame = u32ReadFrame - u32LastFrame;
        }
        else if ((u32ReadFrame < u32StartFrame) && (u32ReadFrame > u32EndFrame))
        {
            u32ReadFrame = ((u32ReadFrame - u32EndFrame) > (u32StartFrame - u32ReadFrame)) ? (u32StartFrame) : (u32EndFrame);
            //u32ReadFrame = u32EndFrame;
        }
    }

    /*

    HI_ERR_PVR("<==: S:%d, E:%d, L:%d, C:%d, O:%d\n", handle->stCycMgr.u32StartFrame,
                handle->stCycMgr.u32EndFrame, handle->stCycMgr.u32LastFrame,
                u32ReadFrame, handle->u32ReadFrame);
    */
    return u32ReadFrame;
}

/* move over or move back s32Offset frames.If beyond scope, the pointor will be directed to beginning or end*/
/*CNcomment:向前移或向后移s32Offset帧，移动后超出开始和结束，则将读指针放到开始或结束 */
STATIC INLINE HI_VOID PVRIndexCycMoveReadFrame(PVR_INDEX_HANDLE handle, HI_S32 s32Offset)
{
    HI_U32 u32ReadFrame = 0;
    //HI_U32 u32OldReadFrame = handle->u32ReadFrame;

    /*

    HI_ERR_PVR("**** Move, S:%u, E:%u, L:%u, C:%u, Off:%d ****\n",
        handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
        handle->stCycMgr.u32LastFrame, handle->u32ReadFrame, s32Offset);

    */
    /*if did not rewind, move it directly*//*CNcomment: 没有环绕直接移动就好了*/
    if (!PVR_IDX_IS_REWIND(handle))
    {
        handle->u32ReadFrame += s32Offset;
        if ((HI_S32)handle->u32ReadFrame < 0)
        {
            handle->u32ReadFrame = 0;
        }

        if ((HI_S32)handle->u32ReadFrame > handle->stCycMgr.u32EndFrame)
        {
            handle->u32ReadFrame = handle->stCycMgr.u32EndFrame;
        }
    }
    else /* call moving function when rewind*//*CNcomment:环绕的情况，使用环绕移动函数 */
    {
        u32ReadFrame = handle->u32ReadFrame + s32Offset;
        handle->u32ReadFrame = PVRIndexCycAdjReadFrame(handle, u32ReadFrame);
    }

}
#endif

/** Check whether someone frame is the end frame or not
 *
 *  @param[in] handle    Index handle
 *  @param[in] u32FrmPos To check frame
 *
 *  @retval ::HI_TRUE u32FrmPos is the end frame.
 *  @retval ::HI_FALSE u32FrmPos is not the end frame.
 *
 *  @note
 *
 *  @see ::PVRIndexIsFrameStart.
 */
STATIC INLINE HI_BOOL PVRIndexIsFrameEnd(PVR_INDEX_HANDLE handle, HI_U32 u32FrmPos)
{
    if (u32FrmPos == handle->stCycMgr.u32EndFrame)
    {
        return HI_TRUE;
    }
    else
    {
        return HI_FALSE;
    }
}

/**
 *  @brief Check whether someone frame is the start frame or not.
 *
 *  @param[] handle    : index handle
 *  @param[] u32FrmPos : to check frame
 *
 *  @retval ::HI_TRUE u32FrmPos is start frame.
 *  @retval ::HI_FALSE u32FrmPos is NOT start frame.
 *
 *  @note
 *
 *  @see ::PVRIndexIsFrameEnd.
 */
STATIC INLINE HI_BOOL PVRIndexIsFrameStart(PVR_INDEX_HANDLE handle, HI_U32 u32FrmPos)
{
    if (u32FrmPos == handle->stCycMgr.u32StartFrame)
    {
        return HI_TRUE;
    }
    else
    {
        return HI_FALSE;
    }
}


/* between start and end, whether some position is valid frame position or not */
STATIC INLINE HI_BOOL PVRIndexIsFrameValid(PVR_INDEX_HANDLE handle, HI_U32 u32FrmPos)
{
    HI_U32 u32StartFrame = 0;
    HI_U32 u32EndFrame = 0;
    HI_U32 u32LastFrame = 0;

    u32StartFrame = handle->stCycMgr.u32StartFrame;
    u32EndFrame = handle->stCycMgr.u32EndFrame;
    u32LastFrame = handle->stCycMgr.u32LastFrame;

    /*
        1. Not rewind case
        =================
        |//////////////////// |
        |//////////////////// |
        =================
        /\                                  /\
         |                                   |
         StartFrame                    EndFrame

         2. Rewind case
         =================
         |////|xxxxx |/////////|
         |////|xxxxx |/////////|
         =================
                /\         /\               /\
                 |          |                |
          EndFrame  StartFrame  LastFrame
        */
    /* Not rewind case */
    if (u32StartFrame < u32EndFrame)
    {
        if ((u32FrmPos >= u32StartFrame) && (u32FrmPos <= u32EndFrame))
        {
            return HI_TRUE;
        }
    }
    else
    {
        /* rewind case */
        if (((u32FrmPos >= u32StartFrame) && (u32FrmPos <= u32LastFrame))
            || (u32FrmPos <= u32EndFrame))
        {
            return HI_TRUE;
        }
    }

    return HI_FALSE;
}
/*! @}*/
#if 0 /* by g00182102 gaoyanfeng */

/* calculate the total frame number, input three valid position. allow rewind or not*/
STATIC INLINE HI_U32 PVRIndexCalcFrameNum(HI_U32 u32StartFrame, HI_U32 u32EndFrame, HI_U32 u32LastFrame)
{
    HI_U32 u32FrameNum = 0;

    if (u32StartFrame < u32EndFrame)
    {
        u32FrameNum = u32EndFrame - u32StartFrame;
    }
    else
    {
        u32FrameNum = u32LastFrame - u32StartFrame + u32EndFrame;
    }

    return u32FrameNum;
}


/*
away from u32FrmPos with s32Offset in the direction of forward or backward.
if s32Offset reach to start, it will be start.
if s32Offset reach to end, it will be end.
the return value is the new position.
*/
STATIC INLINE HI_U32 PVRIndexCalcNewPos(PVR_INDEX_HANDLE handle, HI_U32 u32FrmPos, HI_S32 s32Offset)
{
    HI_U32 u32NewPos = 0;
    HI_U32 u32StartFrame = 0;
    HI_U32 u32EndFrame = 0;
    HI_U32 u32LastFrame = 0;
    HI_U32 u32Pos2Start = 0; /* the frame number from current pos to start pos*/
    HI_U32 u32Pos2End = 0;  /* the frame numbre from current pos to end pos */

    u32StartFrame = handle->stCycMgr.u32StartFrame;
    u32EndFrame = handle->stCycMgr.u32EndFrame;
    u32LastFrame = handle->stCycMgr.u32LastFrame;

    /* check whether the start position is valid or not. invalid, set it to start or end */
    if (!PVRIndexIsFrameValid(handle, u32FrmPos))
    {
        /* direction forward, set it to start */
        if (s32Offset <= 0)
        {
            u32NewPos = u32StartFrame;
        }
        else
        {
            u32NewPos = u32EndFrame;
        }
        return u32NewPos;
    }

    /* direction forward, that is toward the start position, whether it over than the start, if that, set it to start */
    if (s32Offset < 0)
    {
        u32Pos2Start = PVRIndexCalcFrameNum(u32StartFrame, u32FrmPos, u32LastFrame);
        if (abs(s32Offset) > u32Pos2Start)
        {
            u32NewPos = u32StartFrame;
            return u32NewPos;
        }
    }
    else /* direction backward, whether it over than the end, if that, set it to end */
    {
        u32Pos2End = PVRIndexCalcFrameNum(u32FrmPos, u32EndFrame, u32LastFrame);
        if (abs(s32Offset) > u32Pos2End)
        {
            u32NewPos = u32EndFrame;
            return u32NewPos;
        }
    }

    /* for security, make further check it */
    u32NewPos = u32FrmPos + s32Offset;

    if (u32StartFrame < u32EndFrame) /*not rewind*/
    {
        /* check the boundary, the value should be range from u32StartFrame to u32EndFrame. */
        if ((HI_S32)u32NewPos < (HI_S32)u32StartFrame)
        {
            u32NewPos = u32StartFrame;
        }

        if (u32NewPos > u32EndFrame)
        {
            u32NewPos = u32EndFrame;
        }
    }
    else /*be rewind*/
    {
        if ((HI_S32)u32NewPos < 0)
        {
            u32NewPos = u32LastFrame  + (HI_S32)u32NewPos;
        }
        else if (u32NewPos > (u32LastFrame - 1))
        {
            u32NewPos = u32NewPos - u32LastFrame;
        }
        else if ((u32NewPos < u32StartFrame) && (u32NewPos > u32EndFrame))
        {
            /* between start and end, assigned with the most close to it. normally, never incoming here*/
            u32NewPos = ((u32NewPos - u32EndFrame) > (u32StartFrame - u32NewPos)) ? (u32StartFrame) : (u32EndFrame);
        }
    }

    if(abs(s32Offset) > 1)
    {
    HI_WARN_PVR("\033[1;42;34m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! POSITION IS NOT EQUAL Info start !!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    HI_WARN_PVR("u32StartFrame = %u, u32EndFrame = %u, u32LastFrame = %u\n",u32StartFrame, u32EndFrame, u32LastFrame);
    HI_WARN_PVR("new position = %u u32FrmPos = %u, s32Offset = %d\n",u32NewPos, u32FrmPos, s32Offset);
    HI_WARN_PVR("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! POSITION IS NOT EQUAL Info end!!!!!!!!!!!!!!!!!!!!!!!!!!!\n\033[0m\n");
    }

    return u32NewPos;
}
#else

//#define DBG_FRAME_POS

#ifdef DBG_FRAME_POS
#define MAX_PRINT_TIMES 10 /* Max print info times. */
static int g_dbgFlag = 0; /* used only by PVRIndexCalcNewPos, just only for debug, enable print times */
static int nPrintTimes = 0;
#endif



/** @addtogroup PVR_INNER_FUN */
/*! @{ */
STATIC INLINE HI_U32 PVRIndexCalcNewPos(PVR_INDEX_HANDLE handle, HI_U32 u32FrmPos, HI_S32 s32Offset)
{
    HI_U32 u32NewPos = 0;

    HI_U32 u32StartFrame = 0;
    HI_U32 u32EndFrame = 0;
    HI_U32 u32LastFrame = 0;

    HI_U32 u32Boundary = 0;
    HI_U32 u32DiffToStart = 0;
    HI_U32 u32DiffToEnd = 0;

    u32StartFrame = handle->stCycMgr.u32StartFrame;
    u32EndFrame = handle->stCycMgr.u32EndFrame;
    u32LastFrame = handle->stCycMgr.u32LastFrame;

#ifdef DBG_FRAME_POS
    if(g_dbgFlag >= 0)
    {
        HI_ERR_PVR("\033[1;45;37m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Info start !!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
        HI_ERR_PVR("u32StartFrame = %u, u32EndFrame = %u, u32LastFrame = %u\n",u32StartFrame, u32EndFrame, u32LastFrame);
        HI_ERR_PVR("u32FrmPos = %u, s32Offset = %d\n",u32FrmPos, s32Offset);
        HI_ERR_PVR("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Info end!!!!!!!!!!!!!!!!!!!!!!!!!!!\n\033[0m\n");
    }
#else
    HI_INFO_PVR("\033[1;45;37m #######%s########\n", __func__);
    HI_INFO_PVR("u32StartFrame = %u, u32EndFrame = %u, u32LastFrame = %u\n",u32StartFrame, u32EndFrame, u32LastFrame);
    HI_INFO_PVR("u32FrmPos = %u, s32Offset = %d\n",u32FrmPos, s32Offset);
    HI_INFO_PVR("##############################################\n\033[0m\n");
#endif

    /* check whether the frame position is valid or not. invalid, set it to start or end */
    if (!PVRIndexIsFrameValid(handle, u32FrmPos))
    {
#ifdef DBG_FRAME_POS
        HI_ERR_PVR("\033[1;45;37m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Info start !!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
        HI_ERR_PVR("u32StartFrame = %u, u32EndFrame = %u, u32LastFrame = %u\n",u32StartFrame, u32EndFrame, u32LastFrame);
        HI_ERR_PVR("u32FrmPos = %u, s32Offset = %d\n",u32FrmPos, s32Offset);
        HI_ERR_PVR("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Info end!!!!!!!!!!!!!!!!!!!!!!!!!!!\n\033[0m\n");
#endif
        if ( (u32StartFrame > u32EndFrame) && (u32FrmPos > u32EndFrame) && (u32FrmPos < u32StartFrame) )
        {
            u32DiffToStart = u32StartFrame - u32FrmPos;
            u32DiffToEnd = u32FrmPos - u32EndFrame;

            u32NewPos = (u32DiffToStart > u32DiffToEnd ) ? u32EndFrame : u32StartFrame;

            HI_WARN_PVR("Frame %u value invalid, set it to Frame %u, offset to end:%u, offset to start:%u\n",u32FrmPos,u32NewPos,u32DiffToEnd,u32DiffToStart);
        }
        else
        {
            /* more than u32LastFrame */
            u32NewPos = u32LastFrame;

            HI_WARN_PVR("Frame value invalid, set it to Frame %u\n",u32NewPos);
        }

        HI_WARN_PVR("\033[1;37;30mNow u32NewPos is %u in line:%d\n\033[0m", u32NewPos, __LINE__);

        return u32NewPos;
    }

    u32NewPos = u32FrmPos + (HI_U32)s32Offset;

    if(s32Offset >= 0)/* away from the u32FrmPos forward direction toward to u32EndFrame */
    {
        /*
            1. Not rewind (X stands for the sample point)
            --------------------------------------------------
            |                    /     \                     |
            |(offset direction)  ---|--- (offset direction)  |
            |                    \     /                     |
            ------------------------X-------------------------
            /\                      /\                      /\
            ||                      ||                      ||
            u32StartFrame        u32FrmPos     u32LastFrame(u32EndFrame)

            *****************************************************************

            2. Rewind (X1 and X2 stand for the sample point)
            -------------------------------------------
            |              |\    /\  |   u32FrmPos    |
            |              | \  /  \ |     ||         |
            |              |  \/    \|     \/         |
            ---X1--------------------------X2----------
            /\             /\        /\               /\
            ||             ||        ||               ||
            u32FrmPos  u32EndFrame u32StartFrame u32LastFrame

            In the above graphic, the "\    /\" stands for invalid frame position bound.
                                        \  /  \
                                         \/    \

            Notes:(offset forward direction)
            (1) Not rewind, the right boundary should always be u32LastFrame(u32EndFrame).
            (2) Rewind, sample point range from 0 to u32EndFrame, which is similar with Not rewind, the right boudary is u32EndFrame.
            (3) Rewind, sample point range from u32StartFrame to u32LastFrame.The right boundary as following:
                (a). Right boundary -- u32LastFrame, u32NewPos not over u32LastFrame.
                (b). Right boundary -- u32EndFrame, u32NewPos over u32LastFrame, which rewind to u32EndFrame, so it.

        */

        u32Boundary = u32EndFrame; /* not rewind, the boundary should be the u32EndFrame */

        if( (u32StartFrame >= u32EndFrame) && (u32FrmPos >= u32StartFrame) && (u32FrmPos <= u32LastFrame) )
        {
            if(u32NewPos > u32LastFrame)/* rewind, the frame is like X2 */
            {
                HI_WARN_PVR("Frame:%u rewind, offset:%d, LastFrame:%u\n",u32FrmPos, s32Offset, u32LastFrame);
                
                /* in this case, frame rewind to the u32EndFrame direction, so the right boundary should be the u32EndFrame */
                if (u32NewPos == u32LastFrame + 1)
                    u32NewPos = 0;
                else
                    u32NewPos -= u32LastFrame;
                HI_WARN_PVR("So subtract LastFrame, new frame:%u\n",u32NewPos);
            }
            else
            {
                /* in this case, frame is not real rewind, so the right boundary should be the u32LastFrame */
                u32Boundary = u32LastFrame;
            }
        }

        /* check the right boundary, make sure the value valid */
        u32NewPos = (u32NewPos > u32Boundary) ? u32Boundary : u32NewPos;
#ifdef DBG_FRAME_POS
        if (u32NewPos == 0)
        {
            HI_WARN_PVR("Seek forward, frame position:%u, u32Boundary = %d u32EndFrame = %d u32LastFrame = %d s32Offset = %d\n",u32NewPos,u32Boundary, u32EndFrame,u32LastFrame, s32Offset);
        }
#endif
    }
    else/* away from the u32FrmPos backward direction toward to u32StartFrame */
    {
        /*
           Notes:(offset backward direction)
            (1) Not rewind, the left boundary should always be u32StartFrame(that is ZERO).
            (2) Rewind, sample point range from u32StartFrame to u32LastFrame, which is similar with Not rewind,
                the left boudary is u32StartFrame(NOT ZERO).
            (3) Rewind, sample point range from 0 to u32EndFrame.The left boundary as following:
                (a). left boundary -- ZERO, u32NewPos more than ZERO.
                (b). left boundary -- u32StartFrame, u32NewPos less than ZERO, which rewind to u32StartFrame, so it.

        */
        u32Boundary = u32StartFrame; /* not rewind, the boundary should be the u32StartFrame */

        if( (u32StartFrame >= u32EndFrame) && (u32FrmPos <= u32EndFrame))
        {
            /* rewind*/
            if((HI_S32)u32NewPos < 0)
            {
                HI_WARN_PVR("Frame:%u rewind, offset is %d, LastFrame:%u, line:%d\n",u32FrmPos, s32Offset, u32LastFrame, __LINE__);
                
                /* frame rewind to the range u32StartFrame to u32LastFrame, like Frame X1 */
                if ((HI_S32)u32NewPos == -1)
                    u32NewPos = u32LastFrame;
                else
                    u32NewPos = u32LastFrame + u32NewPos;
            }
            else
            {
                /* In this case, the left boundary should be zero, NOT u32StartFrame! */
                u32Boundary = 0;
                HI_WARN_PVR("Seek backward, ref frame:%u, u32EndFrame=%d u32LastFrame=%d s32Offset=%d u32NewPos=%d\n",u32FrmPos,u32Boundary, u32EndFrame,u32LastFrame,s32Offset,u32NewPos);
            }
        }

        /* check the left boundary, make sure the value valid.*/
        u32NewPos = ((HI_S32)u32NewPos < (HI_S32)u32Boundary) ? u32Boundary : u32NewPos;
#ifdef DBG_FRAME_POS
        if (u32NewPos == 0)
        {
            HI_WARN_PVR("Seek backward, frame position:%u, u32FrmPos = %d u32Boundary = %d u32EndFrame = %d u32LastFrame = %d s32Offset = %d\n",u32NewPos,u32FrmPos,u32Boundary, u32EndFrame,u32LastFrame,s32Offset);
        }
#endif
    }

#ifdef DBG_FRAME_POS
    if(abs(s32Offset) > 1)
    {
        HI_ERR_PVR("\033[1;42;34m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! POSITION IS NOT EQUAL Info start !!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
        HI_ERR_PVR("u32StartFrame = %u, u32EndFrame = %u, u32LastFrame = %u\n",u32StartFrame, u32EndFrame, u32LastFrame);
        HI_ERR_PVR("new position = %u u32FrmPos = %u, s32Offset = %d\n",u32NewPos, u32FrmPos, s32Offset);
        HI_ERR_PVR("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! POSITION IS NOT EQUAL Info end!!!!!!!!!!!!!!!!!!!!!!!!!!!\n\033[0m\n");
        g_dbgFlag = MAX_PRINT_TIMES;
        nPrintTimes = 0;
    }

    if(g_dbgFlag >= 0)
    {
        HI_ERR_PVR("\033[1;37;30mNow u32NewPos is %u\n\033[0m", u32NewPos);
        g_dbgFlag--;
    }

    if(nPrintTimes == 0)
    {
        HI_ERR_PVR("\033[1;37;30mNow u32NewPos is %u in line:%d\n\033[0m", u32NewPos, __LINE__);
        nPrintTimes = 1;
    }
#endif

    HI_INFO_PVR("\033[1;37;30m%s now u32NewPos is %u in line:%d\n\033[0m", __func__, u32NewPos, __LINE__);

    return u32NewPos;
}
#endif


/* move s32Offset direction forward or backward, over the end or start, set it to the end or start */
STATIC INLINE HI_VOID PVRIndexCycMoveReadFrame(PVR_INDEX_HANDLE handle, HI_S32 s32Offset)
{
    /* in regardless of rewind, calculate the new position for read by the following interface. */
    handle->u32ReadFrame = PVRIndexCalcNewPos(handle, handle->u32ReadFrame, s32Offset);
}

/**
 * @brief Record cycle infomation
 *
 *
 *  @param[in] handle : The recording index handle
 *
 *  @retval :: HI_FAILURE on failure.
 *  @retval :: HI_SUCCESS on success.
 *
 *  @note
 *
 *  @see ::
 */
STATIC HI_S32 PVRIndexRecordCycInfo(PVR_INDEX_HANDLE handle)
{
    PVR_CYC_HEADER_INFO_S stCycInfo;
    HI_U32                u32CurrentTime;
    HI_U32                u32TimeDiff;
    HI_S32 s32WriteRet = sizeof(PVR_CYC_HEADER_INFO_S);
    
    HI_ASSERT_RET((PVR_INDEX_HANDLE)NULL != handle);

    stCycInfo.u32StartFrame = handle->stCycMgr.u32StartFrame;
    stCycInfo.u32IsRewind   = handle->stCycMgr.bIsRewind;
    if (handle->stCycMgr.u32EndFrame <= handle->stCycMgr.u32StartFrame)
    {
        stCycInfo.u32EndFrame   = (0 == handle->stCycMgr.u32EndFrame)?0:(handle->stCycMgr.u32EndFrame - 1);
        stCycInfo.u32LastFrame  = handle->stCycMgr.u32LastFrame;
    }
    else
    {
        stCycInfo.u32EndFrame   = handle->stCycMgr.u32EndFrame - 1;
        stCycInfo.u32LastFrame  = handle->stCycMgr.u32LastFrame - 1;
    }    

    //HI_INFO_PVR("XXXXXXXXXXXXXXX record cyc info XXXXXXXXXXXXXXXX\n");
    /*
    HI_INFO_PVR("S:%d, E:%d, L:%d\n", handle->stCycMgr.u32StartFrame,
                handle->stCycMgr.u32EndFrame, handle->stCycMgr.u32LastFrame);
    */

    /*
    u32FileSize = handle->u32IdxStartOffsetLen + handle->stCycMgr.u32LastFrame*sizeof(PVR_INDEX_ENTRY_S);
    if(u32FileSize>=(PVR_INDEX_SPACE_MAX*handle->u32IndexSpaceNum))
    {
        ret = PVR_GetPatitionSpaceInfor(handle->szIdxFileName);
        if(HI_SUCCESS==ret)
        {
            handle->u32IndexSpaceNum++;
            PVR_CREATEI_INX_FILE(handle->s32WriteFd,handle->u32IndexSpaceNum,(handle->u32IdxStartOffsetLen + (handle->stCycMgr.u32LastFrame-1)*sizeof(PVR_INDEX_ENTRY_S)));
        }
    }*/
//lint -e774 -e413
    if ((PVR_INDEX_HANDLE)NULL != handle)
    {
	    s32WriteRet = PVR_WRITE((void *)&stCycInfo, (size_t)sizeof(PVR_CYC_HEADER_INFO_S),
                                 handle->s32HeaderFd, (off_t)PVR_GET_HEADER_OFFSET());
    }
//lint +e774 +e413
    if ( s32WriteRet < 0)
    {
        HI_ERR_PVR("write cyc info err\n");
        return HI_FAILURE;
    }
    u32CurrentTime = PVRIndexGetCurTimeMs();
    if(handle->u32FflushTime==0)
    {
        handle->u32FflushTime = u32CurrentTime;
    }
    if(handle->u32FflushTime<=u32CurrentTime)
    {
        u32TimeDiff = u32CurrentTime - handle->u32FflushTime;
    }
    else
    {
        u32TimeDiff = 0xffffffff - handle->u32FflushTime + u32CurrentTime;
    }
    if(u32TimeDiff>=PVR_DIFF_FFLUSH_HEADINFO)
    {
    	handle->u32FflushTime = u32CurrentTime;
    	//PVR_FSYNC(handle->s32HeaderFd); Affect the u disk performance, comment out
    	
    }
    return HI_SUCCESS;
}

/* get the header struct info from index file */
STATIC INLINE HI_S32 PVRIndexGetHeaderInfo(HI_S32 s32Fd, PVR_IDX_HEADER_INFO_S* pHeadInfo)
{
    HI_S32 s32ReadRet = sizeof(PVR_IDX_HEADER_INFO_S);
    HI_S64 indexFileSize;
    HI_S32 tmpOffset;
    HI_U32 indexEntryNum;


    s32ReadRet = PVR_READ(pHeadInfo, sizeof(PVR_IDX_HEADER_INFO_S), s32Fd, 0);
    if (s32ReadRet != (HI_S32)sizeof(PVR_IDX_HEADER_INFO_S))
    {
        HI_ERR_PVR("read Header info err, ret:%d, fd:%d, size:%d\n", s32ReadRet, s32Fd, s32ReadRet);
        memset(pHeadInfo, 0, sizeof(PVR_IDX_HEADER_INFO_S));
        return HI_FAILURE;
    }

    if (PVR_INDEX_HEADER_CODE != pHeadInfo->u32StartCode)
    {
        HI_ERR_PVR("Header info StartCode:0x%x, No head at this file, still play.\n", pHeadInfo->u32StartCode);
        memset(pHeadInfo, 0, sizeof(PVR_IDX_HEADER_INFO_S));
        return HI_FAILURE;
    }

    /* for temp use, TODO: we must make sure the index file biger than cycInfo */
    tmpOffset = (HI_S32)pvr_lseek(s32Fd, 0, SEEK_CUR);
    if (tmpOffset < 0)
    {
        HI_ERR_PVR("can't seek to 0.\n");
        memset(pHeadInfo, 0, sizeof(PVR_IDX_HEADER_INFO_S));
        return HI_FAILURE;
    }
    indexFileSize = (HI_S64)pvr_lseek(s32Fd, 0, SEEK_END);
    pvr_lseek(s32Fd, tmpOffset, SEEK_SET);

    indexEntryNum = (HI_U32)(((HI_U64)indexFileSize - (HI_U64)pHeadInfo->u32HeaderLen)/(HI_U64)sizeof(PVR_INDEX_ENTRY_S));

    if (pHeadInfo->stCycInfo.u32EndFrame > indexEntryNum)
    {
        HI_ERR_PVR("HeadInfo's CycInfo.EndFrame(%u) > indexEntryNum(%u).\n", pHeadInfo->stCycInfo.u32EndFrame, indexEntryNum);
        pHeadInfo->stCycInfo.u32EndFrame = indexEntryNum;
    }

    if (pHeadInfo->stCycInfo.u32LastFrame > indexEntryNum)
    {
        HI_ERR_PVR("HeadInfo's CycInfo.LastFrame(%u) > indexEntryNum(%u).\n", pHeadInfo->stCycInfo.u32LastFrame, indexEntryNum);
        pHeadInfo->stCycInfo.u32LastFrame = indexEntryNum;
    }

    return HI_SUCCESS;
}

/* read the header info, and allowed without header info */
static HI_S32 PVRIndexReadHeaderInfo(PVR_INDEX_HANDLE handle)
{
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo;

    memset(&stIdxHeaderInfo, 0, sizeof(PVR_IDX_HEADER_INFO_S));

    /* means not found the header info in this index file */
    if (HI_SUCCESS != PVRIndexGetHeaderInfo(handle->s32HeaderFd, &stIdxHeaderInfo))
    {
        return HI_FAILURE;
    }
    else
    {
        handle->u32IdxStartOffsetLen =  stIdxHeaderInfo.u32HeaderLen;
        handle->stCycMgr.bIsRewind = (HI_BOOL)(stIdxHeaderInfo.stCycInfo.u32IsRewind);
        handle->stCycMgr.u32StartFrame = stIdxHeaderInfo.stCycInfo.u32StartFrame;
        handle->stCycMgr.u32EndFrame = stIdxHeaderInfo.stCycInfo.u32EndFrame;
        handle->stCycMgr.u32LastFrame = stIdxHeaderInfo.stCycInfo.u32LastFrame;
        handle->stCycMgr.u64MaxCycSize = stIdxHeaderInfo.u64ValidSize;

        handle->u32ReadFrame = handle->stCycMgr.u32StartFrame;
    }

    return HI_SUCCESS;
}

/* initialize */
STATIC INLINE HI_VOID PVRIndexSetDftAttr(PVR_INDEX_HANDLE handle)
{
    HI_INFO_PVR("index set default attr.\n");

    handle->u64GlobalOffset = 0;
    handle->u32LastDavBufOffset = 0;
    handle->u32PauseFrame  = 0;
    handle->u64PauseOffset = PVR_INDEX_PAUSE_INVALID_OFFSET;
    handle->u32ReadFrame  = 0;
    handle->u32WriteFrame = 0;
    handle->u16RecLastIframe = PVR_INDEX_INVALID_I_FRAME_OFFSET;
    handle->u32RecLastValidPtsMs = PVR_INDEX_INVALID_PTSMS;
    handle->u32RecPicParser = 0xffffffff;
    handle->u16RecUpFlowFlag = 0;
    handle->u32RecFirstFrmTimeMs = 0;
    handle->u32RecReachPlay = 0;

    handle->s32WriteFd = PVR_FILE_INVALID_FILE;
    handle->s32ReadFd = PVR_FILE_INVALID_FILE;
    handle->s32SeekFd = PVR_FILE_INVALID_FILE;
    handle->s32HeaderFd = PVR_FILE_INVALID_FILE;
    handle->u32IdxStartOffsetLen = 0;
    memset(&handle->stCurPlayFrame, 0, sizeof(PVR_INDEX_ENTRY_S) );
    memset(&handle->stCurRecFrame, 0, sizeof(PVR_INDEX_ENTRY_S) );
    memset(&handle->stIndexFileAttr, 0, sizeof(HI_UNF_PVR_FILE_ATTR_S) );
    memset(&handle->stCycMgr, 0, sizeof(PVR_CYC_MGR_S));
    memset(handle->szIdxFileName, 0, PVR_MAX_FILENAME_LEN+4);
}

static HI_S32 PVRCacheWriteIdx(HI_U32 InstIdx,HI_U8* pu8Data,HI_U32 u32Bytes2Write,HI_U32 u32Offset,
                                   HI_U32 u32DirectFlag,HI_U32* u32WriteFlag)
{
    PVR_INDEX_HANDLE    handle;
    HI_U32 u32SaveSz;
    handle = &g_stPVRIndex[InstIdx + PVR_PLAY_MAX_CHN_NUM];
    PVR_IDX_CACHE_LOCK(&(handle->stIdxWriteCache.stCacheMutex));
    
    if (u32DirectFlag || handle->stIdxWriteCache.u32BufferLen == 0)/*direct write*/
    {
        //lint -e774
        if (handle->stIdxWriteCache.u32BufferLen && handle->stIdxWriteCache.u32UsedSize)/*have data cache*/
        {
            if ((u32Offset == (handle->stIdxWriteCache.u32StartOffset + handle->stIdxWriteCache.u32UsedSize)) &&
                ((handle->stIdxWriteCache.u32BufferLen - handle->stIdxWriteCache.u32UsedSize) >= u32Bytes2Write))/*data Contiguous*/
            {
                memcpy((handle->stIdxWriteCache.pu8Addr + handle->stIdxWriteCache.u32UsedSize),pu8Data,u32Bytes2Write);
                PVR_WRITE_INDEX(u32SaveSz, (handle->stIdxWriteCache.u32UsedSize + u32Bytes2Write),handle->stIdxWriteCache.pu8Addr,
                                handle->s32WriteFd,handle->stIdxWriteCache.u32StartOffset, handle);
                *u32WriteFlag = 1;
                handle->stIdxWriteCache.u32UsedSize = 0;
                handle->stIdxWriteCache.u32StartOffset = 0;
            }
            else
            {
                PVR_WRITE_INDEX(u32SaveSz, handle->stIdxWriteCache.u32UsedSize,handle->stIdxWriteCache.pu8Addr,
                                handle->s32WriteFd,handle->stIdxWriteCache.u32StartOffset, handle);
                PVR_WRITE_INDEX(u32SaveSz, u32Bytes2Write, pu8Data, handle->s32WriteFd,u32Offset, handle);
                *u32WriteFlag = 1;
                handle->stIdxWriteCache.u32UsedSize = 0;
                handle->stIdxWriteCache.u32StartOffset = 0;
            }
        }
        else/*no cache data*/
        {
            PVR_WRITE_INDEX(u32SaveSz, u32Bytes2Write, pu8Data, handle->s32WriteFd,u32Offset, handle);
            *u32WriteFlag = 1;
        }
        //lint +e774
    }
    else
    {
        /*data not Contiguous or buffer not enough,clear the cache first*/
        if ((u32Offset != (handle->stIdxWriteCache.u32StartOffset + handle->stIdxWriteCache.u32UsedSize))
            ||
            ((handle->stIdxWriteCache.u32BufferLen - handle->stIdxWriteCache.u32UsedSize) < u32Bytes2Write)) 
            
        {
            //lint -e774
            PVR_WRITE_INDEX(u32SaveSz, handle->stIdxWriteCache.u32UsedSize,handle->stIdxWriteCache.pu8Addr, 
                            handle->s32WriteFd,handle->stIdxWriteCache.u32StartOffset, handle);
            *u32WriteFlag = 1;
            handle->stIdxWriteCache.u32UsedSize = 0;
            handle->stIdxWriteCache.u32StartOffset = 0;
            //lint +e774
        }
        /*1.data Contiguous && buffer enough;2.buffer is empty;----cache it*/
        memcpy(handle->stIdxWriteCache.pu8Addr + handle->stIdxWriteCache.u32UsedSize,pu8Data,u32Bytes2Write);
        if(handle->stIdxWriteCache.u32UsedSize == 0)//cache is empty
        {
           handle->stIdxWriteCache.u32StartOffset  = u32Offset;
        }
        handle->stIdxWriteCache.u32UsedSize +=  u32Bytes2Write;            
    }
    PVR_IDX_CACHE_UNLOCK(&(handle->stIdxWriteCache.stCacheMutex));
    
    PVR_IDX_CACHE_LOCK(&(handle->stIdxReadCache.stCacheMutex));
    if (PVR_Index_IfOffsetReadCache(handle,u32Offset,u32Bytes2Write))//write data been cached or appears in cache
    {
        handle->stIdxReadCache.u32UsedSize = 0;//invalid the read cache buffer
    }
    PVR_IDX_CACHE_UNLOCK(&(handle->stIdxReadCache.stCacheMutex));
    
    return HI_SUCCESS;
}

HI_S32 PVR_Index_FlushIdxWriteCache(PVR_INDEX_HANDLE    handle)
{
    HI_U32 u32SaveSz;
    if (handle->stIdxWriteCache.u32BufferLen == 0)
    {
        return HI_SUCCESS;
    }
    PVR_IDX_CACHE_LOCK(&(handle->stIdxWriteCache.stCacheMutex));
    if (handle->stIdxWriteCache.u32UsedSize)
    {
        //lint -e774
        PVR_WRITE_INDEX(u32SaveSz, handle->stIdxWriteCache.u32UsedSize,handle->stIdxWriteCache.pu8Addr, 
                            handle->s32WriteFd,handle->stIdxWriteCache.u32StartOffset, handle);
        handle->stIdxWriteCache.u32UsedSize = 0;
        handle->stIdxWriteCache.u32StartOffset = 0;
        memset(handle->stIdxWriteCache.pu8Addr, 0x5a, handle->stIdxWriteCache.u32BufferLen);
        //lint +e774
    }
    PVR_IDX_CACHE_UNLOCK(&(handle->stIdxWriteCache.stCacheMutex));
    return HI_SUCCESS;
}
/*check if the offset in cache:1 in cache,0 not in cache*/
HI_S32 PVR_Index_IfOffsetInWriteCache(PVR_INDEX_HANDLE  handle,HI_U32 u32Offset,HI_U32 u32Size)
{
    if (handle->stIdxWriteCache.u32BufferLen == 0)
    {
        return 0;
    }
    PVR_IDX_CACHE_LOCK(&(handle->stIdxWriteCache.stCacheMutex));
    if (handle->stIdxWriteCache.u32BufferLen != 0 && handle->stIdxWriteCache.u32UsedSize)
    {
        if ((u32Offset >= handle->stIdxWriteCache.u32StartOffset && 
            u32Offset <= (handle->stIdxWriteCache.u32StartOffset + handle->stIdxWriteCache.u32UsedSize)) ||
            (u32Offset < handle->stIdxWriteCache.u32StartOffset && 
            ((u32Offset+u32Size) > handle->stIdxWriteCache.u32StartOffset)))
        {
            PVR_IDX_CACHE_UNLOCK(&(handle->stIdxWriteCache.stCacheMutex));
            return 1;
        }
    }
    PVR_IDX_CACHE_UNLOCK(&(handle->stIdxWriteCache.stCacheMutex));
    return 0;
}

/*check if the offset in read cache:1 all in cache,0 not in cache,2 offset in cache*/
static HI_S32 PVR_Index_IfOffsetReadCache(PVR_INDEX_HANDLE  handle,HI_U32 u32Offset,HI_U32 u32Size)
{
    if (handle->stIdxReadCache.u32BufferLen && handle->stIdxReadCache.u32UsedSize)/*have data cached*/
    {
        if (u32Offset >= handle->stIdxReadCache.u32StartOffset && 
            ((u32Offset-handle->stIdxReadCache.u32StartOffset) <= handle->stIdxReadCache.u32UsedSize))
        {
            if ((u32Offset - handle->stIdxReadCache.u32StartOffset + u32Size) <= handle->stIdxReadCache.u32UsedSize)
            {
                return 1;
            }
            return 2;
        }
    }
    return 0;
}


static ssize_t PVRCacheReadIdx(PVR_INDEX_HANDLE  handle,PVR_FILE fd, HI_VOID* pData,size_t size, 
                              HI_U32 offset,HI_U32 u32DirectFlag)
{
    ssize_t readNum = 0;
    HI_S32 s32CachedFlag;
    HI_S32 s32CacheStartReadOffset;
    HI_U8* pDataAddr;
    static HI_U32 u32CacheNum = 0,NotCacheNum = 0;
    
    PVR_IDX_CACHE_LOCK(&(handle->stIdxReadCache.stCacheMutex));
    if (handle->stIdxReadCache.u32BufferLen == 0 || u32DirectFlag || 
        size > handle->stIdxReadCache.u32BufferLen)/*read directly*/
    {
        PVR_READ_INDEX_DIRECTLY(readNum, pData, size, fd, (off_t)offset, handle);
        NotCacheNum++;
    }
    else
    {
        s32CachedFlag = PVR_Index_IfOffsetReadCache(handle,offset,size);
        if (s32CachedFlag == 1)/*cached*/
        {
            pDataAddr = handle->stIdxReadCache.pu8Addr + offset - handle->stIdxReadCache.u32StartOffset;
            memcpy(pData,pDataAddr,size);
            readNum = size;
            u32CacheNum ++;
        }
        else/*not cached*/
        {
            /*
            flush cache buffer:
            --------------------------------------------------
            |                    /     \                     |
            |       offset in middle of cache buffer         |
            |                    \     /                     |
            ------------------------X-------------------------
            /\                      /\                      /\
            ||                      ||                      ||
            cache start        offset          cache end
            */
            s32CacheStartReadOffset = (HI_S32)(offset - (handle->stIdxReadCache.u32BufferLen / 2));
            if (s32CacheStartReadOffset < 0)
            {
                s32CacheStartReadOffset = 0;
            }
            PVR_READ_INDEX_DIRECTLY(readNum, handle->stIdxReadCache.pu8Addr, handle->stIdxReadCache.u32BufferLen, 
                                    fd, (off_t)s32CacheStartReadOffset, handle);
            handle->stIdxReadCache.u32UsedSize = readNum;
            handle->stIdxReadCache.u32StartOffset = s32CacheStartReadOffset;
            
            s32CachedFlag = PVR_Index_IfOffsetReadCache(handle,offset,size);/*check again*/
            if (s32CachedFlag == 1)
            {
                pDataAddr = handle->stIdxReadCache.pu8Addr + offset - handle->stIdxReadCache.u32StartOffset;
                memcpy(pData,pDataAddr,size);
                readNum = size;
                NotCacheNum++;
            }
            else/*try read directly */
            {
                HI_WARN_PVR("idx read cache not works!\n");
                PVR_READ_INDEX_DIRECTLY(readNum, pData, size, fd, (off_t)offset, handle); 
                NotCacheNum++;
            }
        }         
    }
    if ((!(u32CacheNum%5000 ) && u32CacheNum != 0) || (!(NotCacheNum %5000) && NotCacheNum != 0))
    {
        HI_INFO_PVR(">>>> u32CacheNum:%d,NotCacheNum:%d\n",u32CacheNum,NotCacheNum);
    }
    PVR_IDX_CACHE_UNLOCK(&(handle->stIdxReadCache.stCacheMutex));
    return readNum;
}


/** save valid index into the file, called by FIDX_FeedStartCode.
 *
 *  @param[in] InstIdx
 *  @param[in] pstScInfo
 *
 *  @retval ::HI_SUCCESS
 *  @retval ::
 *
 *  @note
 *
 *  @see ::
 */
HI_S32 PVR_Index_SaveFramePosition(HI_U32 InstIdx, FRAME_POS_S *pstScInfo,HI_U32 u32DirectFlag)
{
    PVR_INDEX_HANDLE    handle;
    HI_U32              byte2Save;
    PVR_INDEX_ENTRY_S   indexEntry;
    PVR_INDEX_ENTRY_S   startEntry;
    PVR_CYC_MGR_S       *pCycMgr;
    HI_U32              u32CurFrmTimeMs;
    HI_U32              u32TimeNow = 0;
    /*HI_U64              u64CurCycTimeMs = 0;  */
    HI_BOOL             bRewindFlg = HI_FALSE;
    HI_S32              Ret;
    HI_U32              u32WriteFlag = 0;
    
    handle = &g_stPVRIndex[InstIdx + PVR_PLAY_MAX_CHN_NUM];
    pCycMgr = &(handle->stCycMgr);
    memset(&indexEntry,0,sizeof(PVR_INDEX_ENTRY_S));
    memset(&startEntry, 0, sizeof(PVR_INDEX_ENTRY_S));

    /*
    HI_INFO_PVR("FIDX out index(%d): type=%d, offset=0x%llx, PTS=%u\n",
                        InstIdx,
                        pstScInfo->eFrameType,
                        pstScInfo->s64GlobalOffset,
                        pstScInfo->u32PTS);
    */

    if (FIDX_FRAME_TYPE_PESH == pstScInfo->eFrameType)
    {
    //    HI_INFO_PVR("Get a PTS: %u, '%u', %lld\n", pstScInfo->eFrameType, pstScInfo->u32PTS, pstScInfo->s64GlobalOffset);
        return HI_SUCCESS;
    }

    if (PVR_INDEX_INVALID_I_FRAME_OFFSET != handle->u16RecLastIframe)
    {
        handle->u16RecLastIframe++;
    }
    else
    {
        handle->u16RecLastIframe = 0;
    }


    if (FIDX_FRAME_TYPE_I == pstScInfo->eFrameType)
    {
        handle->u16RecLastIframe = 0;
    //    HI_INFO_PVR("Get a Frame: %d, %d, %lld\n", pstScInfo->eFrameType, pstScInfo->s32FrameSize, pstScInfo->s64GlobalOffset);
    }
    else
    {
    //    HI_INFO_PVR("Get a Frame: %d, %d, %lld\n", pstScInfo->eFrameType, pstScInfo->s32FrameSize, pstScInfo->s64GlobalOffset);
    }

    if ((PVR_INDEX_INVALID_PTSMS != pstScInfo->u32PTS) && (0 != pstScInfo->u32PTS))
    {
        handle->u32RecLastValidPtsMs = pstScInfo->u32PTS;
    }

    if ((0 == pCycMgr->s32CycTimes) && (0 == handle->u32WriteFrame))
    {
       // HI_U32 u32ICnt = 0;
        //HI_U32 u32MaxCount = sizeof(handle->stPreEntryTime.u32PreEntryTimeMs)/sizeof(handle->stPreEntryTime.u32PreEntryTimeMs[0]);
        handle->u32RecFirstFrmTimeMs = handle->u32DmxClkTimeMs;// handle->u32RecLastValidPtsMs;///PVRIndexGetCurTimeMs();
        u32CurFrmTimeMs = 0;
        indexEntry.u32DisplayTimeMs = 0;
       // handle->stPreEntryTime.s32Count = 0;
        //for(u32ICnt=0; u32ICnt<u32MaxCount; u32ICnt++)
        //{
        //    handle->stPreEntryTime.u32PreEntryTimeMs[u32ICnt] = handle->u32DmxClkTimeMs;
       // }
    }
    else
    {
        u32TimeNow = handle->u32DmxClkTimeMs;///PVRIndexGetCurTimeMs();
        if (u32TimeNow >= handle->stCurRecFrame.u32DisplayTimeMs)
        {
            u32CurFrmTimeMs = u32TimeNow - handle->u32RecFirstFrmTimeMs;

            //handle->u32RecFirstFrmTimeMs = u32TimeNow;

            //PVRIndex_UpdatePreEntryTimeMs(handle, handle->u32DmxClkTimeMs);
        }
        else
        {
            //u32PreEntryTimeMs = PVRIndex_GetPreEntryAverageTimeMs(handle);
            //PVRIndex_UpdatePreEntryTimeMs(handle, handle->u32DmxClkTimeMs);

            HI_WARN_PVR("The time rewinded firstTimeMs(%u)\n", handle->u32RecFirstFrmTimeMs);
            if ((handle->u32FRollTime*PVR_INDEX_SCD_WRAP_MS + u32TimeNow) < handle->stCurRecFrame.u32DisplayTimeMs)
            {
                handle->u32FRollTime ++;
            }
            u32CurFrmTimeMs = handle->u32FRollTime*PVR_INDEX_SCD_WRAP_MS - handle->u32RecFirstFrmTimeMs + u32TimeNow;
            HI_WARN_PVR("cur indexEntry.u32DisplayTimeMs = %u set the reference time is %u, displayTimeMs increase = %u\n",indexEntry.u32DisplayTimeMs, u32TimeNow,u32CurFrmTimeMs);
            //handle->u32RecFirstFrmTimeMs = u32TimeNow;
        }
    }
    //HI_INFO_PVR("u32CurFrmTimeMs:%u, u32TimeNow:%u ref:%u\n", u32CurFrmTimeMs, u32TimeNow, handle->u32RecFirstFrmTimeMs);

    indexEntry.u16FrameTypeAndGop = ((pstScInfo->eFrameType) & 0x3) << 14 | (handle->u16RecLastIframe & 0x3fff);
    indexEntry.u16UpFlowFlag = handle->u16RecUpFlowFlag;
    indexEntry.s32CycTimes = (HI_U32)pCycMgr->s32CycTimes;
    indexEntry.u64GlobalOffset = (HI_U64)pstScInfo->s64GlobalOffset;
    indexEntry.u32FrameSize = (HI_U32)pstScInfo->s32FrameSize;
    indexEntry.u32PtsMs = handle->u32RecLastValidPtsMs;
    indexEntry.u16IndexType = (HI_U16)handle->enIndexType;
    indexEntry.u161stFrameOfTT = 0;
    
    /* In case the recording data lose, compensate the current time */
    if ((u32CurFrmTimeMs - handle->u32LastDispTime) >= 1000)
    {
        handle->u32DeltaDispTimeMs += (u32CurFrmTimeMs - handle->u32LastDispTime);
    }
    
    indexEntry.u32DisplayTimeMs = u32CurFrmTimeMs - handle->u32DeltaDispTimeMs;   
    handle->u32LastDispTime = u32CurFrmTimeMs;

    byte2Save = sizeof(PVR_INDEX_ENTRY_S);
    if (FIDX_FRAME_TYPE_PESH != pstScInfo->eFrameType) /* clear the flag when find a frame */
    {
        handle->u16RecUpFlowFlag = 0;
    }

    PVR_INDEX_LOCK(&(handle->stMutex));

    if (PVR_IDX_IS_REWIND(handle))
    {
        //HI_INFO_PVR("index start offset:%d, maxsize:%llu\n", handle->u32IdxStartOffsetLen, pCycMgr->u64MaxCycSize);
        /*time  rewind*/   
        if ((PVR_INDEX_REWIND_BY_TIME == pCycMgr->enRewindType) && (0 == pCycMgr->s32CycTimes))
        {
            indexEntry.u64Offset = (HI_U64)pstScInfo->s64GlobalOffset;
            /*u64CurCycTimeMs      = (HI_U64)(handle->u32DmxClkTimeMs - handle->u32RecFirstFrmTimeMs);  */
            if(indexEntry.u32DisplayTimeMs > pCycMgr->u64MaxCycTimeInMs)
            {
                if (0 == pCycMgr->u32StartFrame)
                {
                    /* first time reporting rewind event, just at the end of the u64MaxCycTimeInMs */
                    pCycMgr->u64MaxCycSize = (((HI_U64)indexEntry.u64Offset)/PVR_FIFO_WRITE_BLOCK_SIZE) * PVR_FIFO_WRITE_BLOCK_SIZE;
                }
                pCycMgr->u32StartFrame++;
                if(pCycMgr->u32StartFrame >= PVR_DFT_GOP_LEN)
                {
                    /* the rest reporting rewind event, at the time which u64MaxCycTimeInMs plus the PVR_DFT_GOP_LEN time */
                    pCycMgr->u64MaxCycSize = (((HI_U64)indexEntry.u64Offset)/PVR_FIFO_WRITE_BLOCK_SIZE) * PVR_FIFO_WRITE_BLOCK_SIZE;
                    bRewindFlg = HI_TRUE;
                    handle->bTimeRewindFlg = HI_TRUE;
                }
                HI_INFO_PVR("time rewind index pCycMgr->u64MaxCycSize =%llu \n",pCycMgr->u64MaxCycSize);  
            }
        }
        else /*fix file size rewind*/
        {
            indexEntry.u64Offset = (HI_U64)pstScInfo->s64GlobalOffset - (pCycMgr->u64MaxCycSize * pCycMgr->s32CycTimes);

            if (indexEntry.u64Offset > pCycMgr->u64MaxCycSize)
            {
                indexEntry.u64Offset = indexEntry.u64Offset - pCycMgr->u64MaxCycSize;
                bRewindFlg = HI_TRUE;
                HI_INFO_PVR("file size rewind index \n");
            }
        }
        /*
        HI_INFO_PVR("before save index: type=%d, offset=0x%llx/0x%llx, PTS=%u, write=%d\n",
                        indexEntry.u16IndexType,
                        indexEntry.u64Offset,
                        indexEntry.u64GlobalOffset,
                        indexEntry.u32PtsMs,
                        handle->u32WriteFrame);
        */

        memcpy(&handle->stCurRecFrame, &indexEntry, sizeof(PVR_INDEX_ENTRY_S));

        /* if saved stream less than 50M use direct write */
        if(indexEntry.u64GlobalOffset < 0x3200000)
        {
            u32DirectFlag = 1;
        }

        PVR_Index_RecIdxInfo(handle, &indexEntry);
        Ret = PVRCacheWriteIdx(InstIdx,(HI_U8*)&indexEntry,byte2Save,handle->u32WriteFrame * sizeof(PVR_INDEX_ENTRY_S),
                                   u32DirectFlag,&u32WriteFlag);
        if (Ret != HI_SUCCESS)
        {
            PVR_INDEX_UNLOCK(&(handle->stMutex));
            return Ret;
        }

        handle->u32WriteFrame++;

        /* find the cycle of ts, so clear the pointer to zero */
        if(bRewindFlg)
        {
            pCycMgr->s32CycTimes++;

            handle->u32WriteFrame = 0;
            pCycMgr->u32LastFrame = pCycMgr->u32EndFrame;
            pCycMgr->u32EndFrame = 0;
            pCycMgr->u32StartFrame = PVR_DFT_GOP_LEN;
            bRewindFlg = HI_FALSE;
            PVR_Index_UpdateIdxInfoWhenRewind(handle);
        }
        else /* normally move */
        {
            pCycMgr->u32EndFrame++;

            /* not rewind, but index maybe reach to the start, tune the end frame postion */
            if (pCycMgr->u32LastFrame < pCycMgr->u32EndFrame)
            {
                pCycMgr->u32LastFrame++;
            }
            else /* not increase Last, need to move start */
            {
                pCycMgr->u32StartFrame++;
                /* For the scd number is change every time,when start pointer is between write and last,the entry it point to may
                invalid.In that's case,need to move the start pointer forward.
            -------------------------------------------
            |              |\    /\  |   u32FrmPos    |
            |              | \  /  \ |     ||         |
            |              |  \/    \|     \/         |
            -------------------------------X2----------
                           /\        /\               /\
                           ||        ||               ||
                    u32WriteFrame u32StartFrame u32LastFrame*/
                if (pCycMgr->u32StartFrame > handle->u32WriteFrame  && pCycMgr->u32StartFrame < pCycMgr->u32LastFrame)
                {
                    Ret = PVRIndexGetEntryByNum(handle,&startEntry,pCycMgr->u32StartFrame);
                    if (HI_SUCCESS != Ret)
                    {
                        HI_ERR_PVR("get start entry error \n");
                    }
                    else
                    {
                        if (indexEntry.u64Offset > startEntry.u64Offset)
                        {
                            pCycMgr->u32StartFrame += PVR_DFT_STEP_LEN;
                        }
                    }
                }
                
                
            }

            if (pCycMgr->u32StartFrame >  pCycMgr->u32LastFrame)
            {
                pCycMgr->u32StartFrame = 0; /* reach to the end, assign it to zero */
            }
        }
    }
    else
    {
        if((0 == pCycMgr->u64MaxCycSize)&&(pCycMgr->u64MaxCycTimeInMs > 0))
        {
            //u64CurCycTimeMs = (HI_U64)(handle->u32DmxClkTimeMs - handle->u32RecFirstFrmTimeMs);
            
            if(indexEntry.u32DisplayTimeMs > pCycMgr->u64MaxCycTimeInMs)
            {
                pCycMgr->u64MaxCycSize = (HI_U64)pstScInfo->s64GlobalOffset / PVR_FIFO_WRITE_BLOCK_SIZE * PVR_FIFO_WRITE_BLOCK_SIZE;
                HI_INFO_PVR("reach fix size: u64MaxCycSize =%llu \n\n",pCycMgr->u64MaxCycSize);
            }
        }
        indexEntry.u64Offset = (HI_U64)pstScInfo->s64GlobalOffset;
        /*
        HI_INFO_PVR("no rewind before save index: type=%d, offset=0x%llx/0x%llx, PTS=%u, write=%d\n",
                        indexEntry.u16IndexType,
                        indexEntry.u64Offset,
                        indexEntry.u64GlobalOffset,
                        indexEntry.u32PtsMs,
                        handle->u32WriteFrame);
        */
        memcpy(&handle->stCurRecFrame, &indexEntry, sizeof(PVR_INDEX_ENTRY_S));

        /* if saved stream less than 50M use direct write */
        if(indexEntry.u64GlobalOffset < 0x3200000)
        {
            u32DirectFlag = 1;
        }
        
        PVR_Index_RecIdxInfo(handle, &indexEntry);
        Ret = PVRCacheWriteIdx(InstIdx,(HI_U8*)&indexEntry,byte2Save,handle->u32WriteFrame * sizeof(PVR_INDEX_ENTRY_S),u32DirectFlag,&u32WriteFlag);
        if (Ret != HI_SUCCESS)
        {
            PVR_INDEX_UNLOCK(&(handle->stMutex));
            return Ret;
        }

        handle->u32WriteFrame++;
        pCycMgr->u32EndFrame++;
        pCycMgr->u32LastFrame++;
    }

	//PVR_FSYNC(handle->s32WriteFd); /* now we must sync index file to fit index head. */
    if (u32DirectFlag || u32WriteFlag)
	{
	    PVRIndexRecordCycInfo(handle);
	}
    
    HI_INFO_PVR("S:%u, E:%u, L:%u, W:%u\n",
                    pCycMgr->u32StartFrame,
                    pCycMgr->u32EndFrame,
                    pCycMgr->u32LastFrame,
                    handle->u32WriteFrame);

    HI_ASSERT(handle->u32WriteFrame >= pCycMgr->u32EndFrame);
    //HI_ASSERT(handle->stCurRecFrame.u32FrameSize == (indexEntry.u64SeqHeadOffset - handle->stCurRecFrame.u64SeqHeadOffset));

    /*
    HI_INFO_PVR("save index(%d): type=%d, offset=0x%llx/0x%llx, PTS=%u, Time=%u\n",
                        InstIdx,
                        indexEntry.u16IndexType,
                        indexEntry.u64Offset,
                        indexEntry.u64GlobalOffset,
                        indexEntry.u32PtsMs,
                        indexEntry.u32DisplayTimeMs);
    */
    PVR_INDEX_UNLOCK(&(handle->stMutex));

    return 0;
}


HI_S32 PVR_Index_Init(HI_VOID)
{
    HI_U32 i;

    if (0 == g_u32PvrIndexInit)
    {
        for (i = 0; i < PVR_INDEX_NUM; i++)
        {
            memset(&g_stPVRIndex[i], 0, sizeof(PVR_INDEX_S));
        }
        g_u32PvrIndexInit++;
    }

    return HI_SUCCESS;
}


/*****************************************************************************
 Prototype       : PVR_Index_CreatPlay
 Description     : init index module, get index handle
 Input           : pfileName  **
                    enIndexType: need this just only on recording
 Output          : None
 Return Value    : HI_NULL_PTR:failure, maybe operate file fail, included the wrong index file format
                   handle: success, retruen the handle of index
 Global Variable
    Read Only    :
    Read & Write : pIsNoIdx :index file exist or not
  History
  1.Date         : 2008/4/16
    Author       : q46153
    Modification : Created function
  2.Date         : 2010/06/19
    Author       : Jiang Lei
    Modification : modify for HD
*****************************************************************************/
PVR_INDEX_HANDLE PVR_Index_CreatPlay(HI_U32 chnID,
                                const HI_UNF_PVR_PLAY_ATTR_S *pstPlayAttr,
                                HI_BOOL *pIsNoIdx)
{
    HI_S32 ret = HI_SUCCESS;
    PVR_INDEX_HANDLE handle;
    HI_CHAR szIndexName[PVR_MAX_FILENAME_LEN + 4];
    //HI_BOOL bPlayOnly = HI_FALSE;
    //HI_U32 PicParser;

    if(!pstPlayAttr)
    {
        return HI_NULL_PTR;
    }

    handle = &g_stPVRIndex[chnID];
    HI_ASSERT(HI_FALSE == handle->bIsPlay);

    memset(&handle->stIdxReadCache,0,sizeof(HIPVR_IDX_BUF_S));

    handle->stIdxReadCache.pu8Addr = HI_MALLOC(HI_ID_PVR, PVR_DFT_IDX_READCACHE_SIZE);
    if (handle->stIdxReadCache.pu8Addr)
    {
        handle->stIdxReadCache.u32BufferLen = PVR_DFT_IDX_READCACHE_SIZE;
        handle->stIdxReadCache.u32UsedSize = 0;
        handle->stIdxReadCache.u32StartOffset = 0;
        if(-1 == pthread_mutex_init(&(handle->stIdxReadCache.stCacheMutex), NULL))
        {
            HI_ERR_PVR("init mutex lock for PVR index failed,check it\n");
        }
    }
    else
    {
        HI_ERR_PVR("HI_MALLOC read cache buffer failed!\n");
        handle->stIdxReadCache.u32BufferLen = 0;
    }
    
    snprintf(szIndexName,sizeof(szIndexName), "%s.%s", pstPlayAttr->szFileName, "idx");
	/* on recording file, play it, and return the recorded index handle */
    if (PVRIndexIsFileRecording(szIndexName, &handle))
    {
        handle->bIsPlay = HI_TRUE;
        return handle;
    }

    PVRIndexSetDftAttr(handle);

    memset(handle->szIdxFileName, 0, sizeof(handle->szIdxFileName));
    strncpy(handle->szIdxFileName, szIndexName, strlen(szIndexName));

    if(-1 == pthread_mutex_init(&(handle->stMutex), NULL))
    {
        HI_ERR_PVR("init mutex lock for PVR index failed \n");
        goto ErrorExit;
    }


    handle->bIsPlay = HI_TRUE;
    handle->bIsRec = HI_FALSE;

    /* check whether index file exist or not, if not, just  track it and not to open */
    if (PVR_CHECK_FILE_EXIST(szIndexName))
    {
        *pIsNoIdx = HI_FALSE;
        handle->s32ReadFd = PVR_OPEN(szIndexName, PVR_FOPEN_MODE_INDEX_READ);
        if (PVR_FILE_INVALID_FILE == handle->s32ReadFd)
        {
            HI_ERR_PVR("PVR open Index File for read failed !\n");
            perror("can not open file:");
            goto ErrorExit;
        }

        handle->s32SeekFd = PVR_OPEN(szIndexName, PVR_FOPEN_MODE_INDEX_READ);
        if (PVR_FILE_INVALID_FILE == handle->s32SeekFd)
        {
            HI_ERR_PVR("PVR open Index File for seek failed !\n");
            perror("can not open file:");
            PVR_CLOSE(handle->s32ReadFd);
            goto ErrorExit;
        }

        handle->s32HeaderFd = PVR_OPEN(szIndexName, PVR_FOPEN_MODE_INDEX_BOTH);
        if (PVR_FILE_INVALID_FILE == handle->s32HeaderFd)
        {
            HI_ERR_PVR("PVR open Index File for Header failed !\n");
            perror("can not open file:");
            PVR_CLOSE(handle->s32SeekFd);
            PVR_CLOSE(handle->s32ReadFd);
            goto ErrorExit;
        }

        ret = PVRIndexReadHeaderInfo(handle);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("PVR read Index File Header failed !\n");
            PVR_CLOSE(handle->s32ReadFd);
            PVR_CLOSE(handle->s32SeekFd);
            PVR_CLOSE(handle->s32HeaderFd);
            goto ErrorExit;
        }

        ret = PVR_Index_PlayGetFileAttrByFileName(pstPlayAttr->szFileName, &handle->stIndexFileAttr);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("PVR read Index File Header failed !\n");
            PVR_CLOSE(handle->s32ReadFd);
            PVR_CLOSE(handle->s32SeekFd);
            PVR_CLOSE(handle->s32HeaderFd);
            goto ErrorExit;
        }

        handle->enIndexType = handle->stIndexFileAttr.enIdxType;

        /*alone play, not open write handle */
        handle->s32WriteFd = PVR_FILE_INVALID_FILE;
    }
    else  /* NO index file, no need to process! */
    {
        //*pIsNoIdx = HI_TRUE;
        //handle->enIndexType = HI_UNF_PVR_REC_INDEX_TYPE_NONE;
        HI_ERR_PVR("No index file for '%s' found!.\n", pstPlayAttr->szFileName);
        goto ErrorExit;
    }

    return handle;

ErrorExit:
    if (handle->stIdxReadCache.pu8Addr)
    {
        HI_FREE(HI_ID_PVR, handle->stIdxReadCache.pu8Addr);
    }
    memset(&handle->stIdxReadCache,0,sizeof(HIPVR_IDX_BUF_S));
    handle->bIsPlay = HI_FALSE;
    (HI_VOID)pthread_mutex_destroy(&(handle->stMutex));
    return HI_NULL_PTR;
}

/*****************************************************************************
 Prototype       : PVR_Index_CreatRec
 Description     : create pvr rec channel
 Input           : pfileName  **
                    enIndexType: need this just only on recording
 Output          : None
 Return Value    : HI_NULL_PTR: failure, maybe operate file failure or the file playing, which the need to record.
                   handle: success, retruen the handle of index
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/16
    Author       : q46153
    Modification : Created function
  2.Date         : 2010/06/19
    Author       : Jiang Lei
    Modification : modify for HD
*****************************************************************************/
PVR_INDEX_HANDLE PVR_Index_CreatRec(HI_U32 chnID,
                                HI_UNF_PVR_REC_ATTR_S *pstRecAttr)
{
    PVR_INDEX_HANDLE handle = HI_NULL;
    HI_CHAR szIndexName[PVR_MAX_FILENAME_LEN + 4] = {0};
    HI_S32 PicParser = 0;
    VIDSTD_E vidStd = VIDSTD_BUTT;

    if(!pstRecAttr)
    {
        return HI_NULL_PTR;
    }

    snprintf(szIndexName,sizeof(szIndexName), "%s.%s", pstRecAttr->szFileName, "idx");

    /** if the file has been playing, return HI_NULL_PTR */
    if (PVRIndexIsFilePlaying(szIndexName, &handle))
    {
        HI_ERR_PVR("the file %s is playing, please stop it before recordring the same file.\n", pstRecAttr->szFileName);
        return HI_NULL_PTR;
    }

    /* the sequence up to FIDX */
    vidStd = PVRIndexUnfTypeToIdxType(pstRecAttr->enIndexVidType, pstRecAttr->enIndexType);
    PicParser = FIDX_OpenInstance(vidStd, STRM_TYPE_ES);
    HI_ASSERT(PicParser + PVR_PLAY_MAX_CHN_NUM < PVR_INDEX_NUM);

    if (PicParser < 0)
    {
        HI_ERR_PVR("PicParser %d is invlid value.\n",PicParser);
        return HI_NULL_PTR;
    }

    handle = &g_stPVRIndex[PicParser + PVR_PLAY_MAX_CHN_NUM];

    HI_ASSERT(HI_FALSE == handle->bIsRec);

    PVRIndexSetDftAttr(handle);

    memset(handle->szIdxFileName, 0, sizeof(handle->szIdxFileName));
    strncpy(handle->szIdxFileName, szIndexName, strlen(szIndexName));

    if(-1 == pthread_mutex_init(&(handle->stMutex), NULL))
    {
        HI_ERR_PVR("init mutex lock for PVR index failed \n");
        FIDX_CloseInstance(PicParser);
        return HI_NULL_PTR;
    }

    PVR_IDX_CHECK_CYC_SIZE(pstRecAttr);

    handle->bIsPlay = HI_FALSE;
    handle->bIsRec = HI_TRUE;
    handle->u32RecPicParser = (HI_U32)PicParser;
    handle->enIndexType = pstRecAttr->enIndexType;
    handle->u32DavBufSize = pstRecAttr->u32DavBufSize;
    handle->stCycMgr.bIsRewind = pstRecAttr->bRewind;
    handle->stCycMgr.u64MaxCycSize = (pstRecAttr->u64MaxFileSize / PVR_FIFO_WRITE_BLOCK_SIZE) * PVR_FIFO_WRITE_BLOCK_SIZE;
    handle->stCycMgr.u64MaxCycTimeInMs = pstRecAttr->u64MaxTimeInMs ;
    if ((handle->stCycMgr.u64MaxCycSize == 0) &&  (handle->stCycMgr.u64MaxCycTimeInMs > 0))
    {
        handle->stCycMgr.enRewindType = PVR_INDEX_REWIND_BY_TIME;
    }
    else
    {
        handle->stCycMgr.enRewindType = PVR_INDEX_REWIND_BY_SIZE;
    }
	handle->u32FflushTime = 0;
	memset(&handle->stIdxWriteCache,0,sizeof(HIPVR_IDX_BUF_S));
    handle->s32WriteFd = PVR_OPEN(szIndexName, PVR_FOPEN_MODE_INDEX_WRITE);
    if (PVR_FILE_INVALID_FILE == handle->s32WriteFd)
    {
        HI_ERR_PVR("PVR open Index File for write failed !\n");
        perror("can not open file:");
        goto ErrorExit;
    }


    handle->s32SeekFd = PVR_OPEN(szIndexName, PVR_FOPEN_MODE_INDEX_READ);
    if (PVR_FILE_INVALID_FILE == handle->s32SeekFd)
    {
        HI_ERR_PVR("PVR open Index File for seek failed !\n");
        perror("can not open file:");
        PVR_CLOSE(handle->s32WriteFd);
        goto ErrorExit;
    }

    handle->s32HeaderFd = PVR_OPEN(szIndexName, PVR_FOPEN_MODE_INDEX_BOTH);
    if (PVR_FILE_INVALID_FILE == handle->s32HeaderFd)
    {
        HI_ERR_PVR("PVR open Index File for Idx Header failed !\n");
        perror("can not open file:");
        PVR_CLOSE(handle->s32WriteFd);
        PVR_CLOSE(handle->s32SeekFd);
        goto ErrorExit;
    }

    handle->s32ReadFd = PVR_OPEN(szIndexName, PVR_FOPEN_MODE_INDEX_READ);
    if (PVR_FILE_INVALID_FILE == handle->s32ReadFd)
    {
        perror("can not open file:");
        PVR_CLOSE(handle->s32WriteFd);
        PVR_CLOSE(handle->s32SeekFd);
        PVR_CLOSE(handle->s32HeaderFd);
        (HI_VOID)remove(szIndexName);
        HI_ERR_PVR("PVR open Index File for read failed !\n");
        goto ErrorExit;
    }
    handle->stIdxWriteCache.pu8Addr = HI_MALLOC(HI_ID_PVR, PVR_DFT_IDX_WRITECACHE_SIZE);
    if (handle->stIdxWriteCache.pu8Addr)
    {
        handle->stIdxWriteCache.u32BufferLen = PVR_DFT_IDX_WRITECACHE_SIZE;
        handle->stIdxWriteCache.u32UsedSize = 0;
        handle->stIdxWriteCache.u32StartOffset = 0;
        if(-1 == pthread_mutex_init(&(handle->stIdxWriteCache.stCacheMutex), NULL))
        {
            HI_ERR_PVR("init mutex lock for PVR index failed,check it\n");
        }
    }
    else
    {
        handle->stIdxWriteCache.u32BufferLen = 0;
        HI_ERR_PVR("HI_MALLOC write cache buffer failed!\n");
    }
    handle->u32FRollTime = 0;
    handle->u32DeltaDispTimeMs = 0;
    handle->u32LastDispTime = 0;
    handle->u32TimeShiftTillEndTimeMs = 0;
    handle->u32TimeShiftTillEndCnt = 0;
	handle->bTimeRewindFlg = HI_FALSE;
    memset(&(handle->stRecIdxInfo), 0, sizeof(PVR_REC_INDEX_INFO_S));

    UNUSED(chnID);

    return handle;

ErrorExit:
    FIDX_CloseInstance(PicParser);
    (HI_VOID)pthread_mutex_destroy(&(handle->stMutex));
    return HI_NULL_PTR;
}


/*****************************************************************************
 Prototype       : PVR_Index_Destroy
 Description     : de-init index module, release index handle and relative resource
                 may stop either record or play at any time, which are independent
 Input           : handle  **
                   u32PlayOrRec  need to stop record or play
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/16
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 PVR_Index_Destroy(PVR_INDEX_HANDLE handle, HI_U32 u32PlayOrRec)
{
    PVR_CHECK_POINTER(handle);
    HI_CHAR  szFileName[PVR_MAX_FILENAME_LEN] = {0};

    if (PVR_INDEX_PLAY == u32PlayOrRec)
    {
        handle->bIsPlay = HI_FALSE;
    }
    else
    {
        handle->bIsRec = HI_FALSE;
    }

    if (handle->bIsPlay || handle->bIsRec)
    {
        HI_WARN_PVR("also play or rec was using this index.\n");
        return HI_SUCCESS;
    }
    
    if (PVR_Index_FlushIdxWriteCache(handle) != HI_SUCCESS)
    {
        HI_ERR_PVR("rec flush cache error!\n");
    }

    memcpy(szFileName, handle->szIdxFileName, 
           ((HI_U32)strstr(handle->szIdxFileName,".idx") - (HI_U32)handle->szIdxFileName));    
    
    if(NULL != PVRRecGetChnAttrByName(szFileName))
    {
        PVRIndexRecordCycInfo(handle);
    }

    (HI_VOID)pthread_mutex_destroy(&(handle->stMutex));

    /* close index file                                                        */
    if (handle->s32ReadFd && (handle->s32ReadFd != PVR_FILE_INVALID_FILE))
    {
        PVR_CLOSE(handle->s32ReadFd);
        handle->s32ReadFd = PVR_FILE_INVALID_FILE;
    }

    if (handle->s32WriteFd && (handle->s32WriteFd != PVR_FILE_INVALID_FILE))
    {
        PVR_CLOSE(handle->s32WriteFd);
        handle->s32WriteFd = PVR_FILE_INVALID_FILE;
    }

    if (handle->s32SeekFd && (handle->s32SeekFd != PVR_FILE_INVALID_FILE))
    {
        PVR_CLOSE(handle->s32SeekFd);
        handle->s32SeekFd = PVR_FILE_INVALID_FILE;
    }

    if (handle->s32HeaderFd && (handle->s32HeaderFd != PVR_FILE_INVALID_FILE))
    {
        PVR_CLOSE(handle->s32HeaderFd);
        handle->s32HeaderFd = PVR_FILE_INVALID_FILE;
    }

    /* release index handle                                                 */
    if (handle->u32RecPicParser != 0xffffffff)
    {
        FIDX_CloseInstance((HI_S32)handle->u32RecPicParser);
        handle->u32RecPicParser = 0xffffffff;
    }
    
    if (handle->stIdxWriteCache.pu8Addr)
    {
        HI_FREE(HI_ID_PVR, handle->stIdxWriteCache.pu8Addr);
        handle->stIdxWriteCache.pu8Addr = HI_NULL;
        handle->stIdxWriteCache.u32StartOffset = 0;
        handle->stIdxWriteCache.u32UsedSize = 0;
        (HI_VOID)pthread_mutex_destroy(&(handle->stIdxWriteCache.stCacheMutex));        
    }
    if (handle->stIdxReadCache.pu8Addr)
    {
        HI_FREE(HI_ID_PVR, handle->stIdxReadCache.pu8Addr);
        handle->stIdxReadCache.pu8Addr = HI_NULL;
        handle->stIdxReadCache.u32StartOffset = 0;
        handle->stIdxReadCache.u32UsedSize = 0;
        (HI_VOID)pthread_mutex_destroy(&(handle->stIdxReadCache.stCacheMutex));        
    }

    return HI_SUCCESS;
}



/*
  |---n * sizeof(PVR_INDEX_ENTRY_S)---|
  +---------+-------------------------+-------...
  | CycInfo | UsrDataInfo             | Idx data
  +---------+-------------------------+---------...
*/
HI_S32 PVR_Index_PrepareHeaderInfo(PVR_INDEX_HANDLE handle, HI_U32 u32UsrDataLen, HI_U32 u32Vtype)
{
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo;
    HI_U32 u32HeadInfoSize = 0;
    HI_S32 s32WriteRet;
    HI_U8* pTmpBuff = NULL;

    memset(&stIdxHeaderInfo, 0x0, sizeof(PVR_IDX_HEADER_INFO_S));

    stIdxHeaderInfo.u32CADataInfoLen = PVR_MAX_CADATA_LEN;

    /* compute HeaderSize, which should be the times of sizeof(PVR_INDEX_ENTRY_S)*/
    u32HeadInfoSize = (sizeof(PVR_IDX_HEADER_INFO_S) + stIdxHeaderInfo.u32CADataInfoLen + u32UsrDataLen + sizeof(PVR_INDEX_ENTRY_S))
                      / sizeof(PVR_INDEX_ENTRY_S) * sizeof(PVR_INDEX_ENTRY_S);

    stIdxHeaderInfo.u32HeaderLen = u32HeadInfoSize;
    stIdxHeaderInfo.u32StartCode = PVR_INDEX_HEADER_CODE;
    stIdxHeaderInfo.u32UsrDataInfoLen = u32UsrDataLen;



    stIdxHeaderInfo.u64ValidSize = handle->stCycMgr.u64MaxCycSize;
    stIdxHeaderInfo.stCycInfo.u32StartFrame = handle->stCycMgr.u32StartFrame;
    stIdxHeaderInfo.stCycInfo.u32EndFrame   = handle->stCycMgr.u32EndFrame;
    stIdxHeaderInfo.stCycInfo.u32LastFrame  = handle->stCycMgr.u32LastFrame;
    stIdxHeaderInfo.stCycInfo.u32IsRewind   = handle->stCycMgr.bIsRewind;
    /* use u32Reserved low 16bits to store HI_UNF_VCODEC_TYPE_E */
    stIdxHeaderInfo.u32Reserved = 0xFFFF & (100 + u32Vtype); 
    if ((HI_S32)stIdxHeaderInfo.u32UsrDataInfoLen < 0)
    {
        HI_ERR_PVR("calc usr data len:%d err\n", stIdxHeaderInfo.u32UsrDataInfoLen);
        return HI_FAILURE;
    }

    pTmpBuff = HI_MALLOC(HI_ID_PVR, u32HeadInfoSize);
    if (NULL == pTmpBuff)
    {
        HI_ERR_PVR("no mem, want=%u\n", u32HeadInfoSize);
        return HI_FAILURE;
    }
    memset(pTmpBuff, 0x0, u32HeadInfoSize);
    memcpy(pTmpBuff, &stIdxHeaderInfo, sizeof(PVR_IDX_HEADER_INFO_S));

    s32WriteRet = (HI_S32)u32HeadInfoSize;
    if (s32WriteRet != PVR_WRITE((HI_VOID*)pTmpBuff, (size_t)u32HeadInfoSize, handle->s32HeaderFd, 0))
    {
        HI_ERR_PVR("write header info err, fd:%d, size:%d\n", handle->s32HeaderFd, u32HeadInfoSize);
        perror("write index file error:");
        HI_FREE(HI_ID_PVR, pTmpBuff);
        return HI_FAILURE;
    }
    HI_INFO_PVR("write header info ok(%uByte writen), UDLen:%u, MaxSize:%llu\n", s32WriteRet, stIdxHeaderInfo.u32UsrDataInfoLen, stIdxHeaderInfo.u64ValidSize);
    PVR_FSYNC(handle->s32HeaderFd);

    handle->u32IdxStartOffsetLen = u32HeadInfoSize;

    HI_FREE(HI_ID_PVR, pTmpBuff);

    return HI_SUCCESS;
}

/* reset the player attribute, called when start play*/
HI_VOID PVR_Index_ResetPlayAttr(PVR_INDEX_HANDLE handle)
{
    handle->u32ReadFrame  = handle->stCycMgr.u32StartFrame;
    memset(&handle->stCurPlayFrame, 0, sizeof(PVR_INDEX_ENTRY_S));
}

/* reset the player attribute, called when start record */
HI_VOID PVR_Index_ResetRecAttr(PVR_INDEX_HANDLE handle)
{
    handle->u64GlobalOffset = 0;
    handle->u32LastDavBufOffset = 0;
    handle->u32PauseFrame  = 0;
    handle->u64PauseOffset = PVR_INDEX_PAUSE_INVALID_OFFSET;
    handle->u32WriteFrame = 0;
    handle->u16RecLastIframe = PVR_INDEX_INVALID_I_FRAME_OFFSET;
    handle->u32RecLastValidPtsMs = PVR_INDEX_INVALID_PTSMS;
    handle->u16RecUpFlowFlag = 0;
    handle->u32RecFirstFrmTimeMs = 0;
    handle->stCycMgr.u32StartFrame = 0;
    handle->stCycMgr.u32EndFrame = 0;
    handle->stCycMgr.u32LastFrame = 0;
    handle->stCycMgr.s32CycTimes = 0;
    handle->stCycMgr.u32StartFrame = 0;

    memset(&handle->stCurRecFrame, 0, sizeof(PVR_INDEX_ENTRY_S) );
}

/* set current frame size is zero, prevent from repeatly sending the last frame when switch play mode */
HI_S32 PVR_Index_ChangePlayMode(PVR_INDEX_HANDLE handle)
{
    handle->stCurPlayFrame.u32FrameSize = 0;
    return HI_SUCCESS;
}


HI_S32 PVR_Index_GetUsrDataInfo(HI_S32 s32Fd, HI_U8* pBuff, HI_U32 u32BuffSize)
{
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo = {0};
    HI_S32 s32ReadRet;
    HI_U32 u32ReadLen;

    if (HI_SUCCESS != PVRIndexGetHeaderInfo(s32Fd, &stIdxHeaderInfo))
    {
        HI_ERR_PVR("No userDataInfo in this file.\n");
        return HI_ERR_PVR_FILE_CANT_READ;
    }

    u32ReadLen = (stIdxHeaderInfo.u32UsrDataInfoLen > u32BuffSize) ? (u32BuffSize) : (stIdxHeaderInfo.u32UsrDataInfoLen);

    s32ReadRet = PVR_READ(pBuff, u32ReadLen, s32Fd, PVR_GET_USR_DATA_OFFSET(stIdxHeaderInfo));
    if (s32ReadRet != (HI_S32)u32ReadLen)
    {
        HI_ERR_PVR("read usr data info err, read ret:0x%x\n", s32ReadRet);
        return HI_FAILURE;
    }
    return s32ReadRet;
}

HI_S32 PVR_Index_SetUsrDataInfo(HI_S32 s32Fd, HI_U8* pBuff, HI_U32 u32UsrDataLen)
{
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo = {0};
    HI_S32 s32WriteRet = (HI_S32)u32UsrDataLen;

    if (HI_SUCCESS != PVRIndexGetHeaderInfo(s32Fd, &stIdxHeaderInfo))
    {
        return HI_ERR_PVR_FILE_CANT_READ;
    }
    if (stIdxHeaderInfo.u32UsrDataInfoLen < u32UsrDataLen)
    {
        HI_ERR_PVR("usr data len is no enough:%d\n", stIdxHeaderInfo.u32UsrDataInfoLen);
        return HI_FAILURE;
    }

    s32WriteRet = (HI_S32)PVR_WRITE((HI_VOID*)pBuff, (size_t)u32UsrDataLen, s32Fd, (off_t)PVR_GET_USR_DATA_OFFSET(stIdxHeaderInfo));
    if (s32WriteRet != (HI_S32)u32UsrDataLen)
    {
        HI_ERR_PVR("read usr data info err:0x%x\n", s32WriteRet);
        return HI_FAILURE;
    }

    return s32WriteRet;
}

HI_S32 PVR_Index_GetCADataInfo(HI_S32 s32Fd, HI_U8* pBuff, HI_U32 u32BuffSize)
{
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo = {0};
    HI_S32 s32ReadRet;
    HI_U32 u32ReadLen;

    if (HI_SUCCESS != PVRIndexGetHeaderInfo(s32Fd, &stIdxHeaderInfo))
    {
        HI_ERR_PVR("No CADataInfo in this file.\n");
        return HI_ERR_PVR_FILE_CANT_READ;
    }

    u32ReadLen = (stIdxHeaderInfo.u32CADataInfoLen > u32BuffSize) ? (u32BuffSize) : (stIdxHeaderInfo.u32CADataInfoLen);

    s32ReadRet = PVR_READ(pBuff, u32ReadLen, s32Fd, PVR_GET_CA_DATA_OFFSET());
    if (s32ReadRet != u32ReadLen)
    {
        HI_ERR_PVR("read usr CA info err, read ret:0x%x\n", s32ReadRet);
        return HI_FAILURE;
    }

    return s32ReadRet;
}


HI_S32 PVR_Index_SetCADataInfo(HI_S32 s32Fd, HI_U8* pBuff, HI_U32 u32CADataLen)
{
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo = {0};
    HI_S32 s32WriteRet = u32CADataLen;

    if (HI_SUCCESS != PVRIndexGetHeaderInfo(s32Fd, &stIdxHeaderInfo))
    {
        return HI_ERR_PVR_FILE_CANT_READ;
    }

    if (stIdxHeaderInfo.u32CADataInfoLen < u32CADataLen)
    {
        HI_ERR_PVR("CA data len is no enough:%d\n", stIdxHeaderInfo.u32CADataInfoLen);
        return HI_FAILURE;
    }

    s32WriteRet = PVR_WRITE(pBuff, u32CADataLen, s32Fd, PVR_GET_CA_DATA_OFFSET());
    if (s32WriteRet != u32CADataLen)
    {
        HI_ERR_PVR("read CA data info err:0x%x\n", s32WriteRet);
        return HI_FAILURE;
    }

    return s32WriteRet;
}

HI_VOID PVR_Index_GetIdxInfo(PVR_INDEX_HANDLE handle)
{
    HI_S32 i = 0;
    HI_U32 u32StartFrm = 0, u32EndFrm = 0, u32LastFrm = 0;
    HI_U32 u32FindStart = 0;
    PVR_INDEX_ENTRY_S stEntryTmp = {0};
    HI_U32 u32CurGopSize = 0, u32GopSizeSeg = 0;
    
    u32StartFrm = handle->stCycMgr.u32StartFrame;
    u32EndFrm = handle->stCycMgr.u32EndFrame;
    u32LastFrm = handle->stCycMgr.u32LastFrame;

    if (u32StartFrm >= u32EndFrm)
    {
        handle->stRecIdxInfo.stIdxInfo.u32FrameTotalNum = u32LastFrm - u32StartFrm + u32EndFrm;
    }
    else
    {
        handle->stRecIdxInfo.stIdxInfo.u32FrameTotalNum = u32LastFrm + 1;
    }

    for(i = (HI_S32)u32EndFrm; i >= (HI_S32)u32FindStart; i--)
    {
        if (HI_SUCCESS == PVR_Index_GetFrameByNum(handle, &stEntryTmp, i))
        {
            if (0 != (stEntryTmp.u16FrameTypeAndGop & 0x3fff))
            {
                u32CurGopSize = (stEntryTmp.u16FrameTypeAndGop & 0x3fff) + 1;
                
                handle->stRecIdxInfo.stIdxInfo.u32GopTotalNum++;
                
                if(0 != handle->stRecIdxInfo.stIdxInfo.u32GopTotalNum)
                {
                    u32GopSizeSeg = (u32CurGopSize/10);
                    u32GopSizeSeg = (u32GopSizeSeg > 12) ? 12 : u32GopSizeSeg;
                    handle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[u32GopSizeSeg]++;
                }

                if (handle->stRecIdxInfo.stIdxInfo.u32MaxGopSize < u32CurGopSize)
                {
                    handle->stRecIdxInfo.stIdxInfo.u32MaxGopSize = u32CurGopSize;
                }

                i -= (HI_S32)(stEntryTmp.u16FrameTypeAndGop & 0x3fff);
            }
        }

        if ((u32StartFrm >= u32EndFrm)&&(i <= 0))
        {
            u32FindStart = u32StartFrm;
            i = (HI_S32)u32LastFrm;
            u32EndFrm = u32LastFrm;
            continue;
        }
    } 

    if (HI_SUCCESS == PVR_Index_GetFrameByNum(handle, &stEntryTmp, u32FindStart))
    {
        if (0 != (stEntryTmp.u16FrameTypeAndGop & 0x3fff))
        {
            handle->stRecIdxInfo.stIdxInfo.u32GopTotalNum--;
            u32GopSizeSeg = (u32CurGopSize/10);
            u32GopSizeSeg = (u32GopSizeSeg > 12) ? 12 : u32GopSizeSeg;
            handle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[u32GopSizeSeg]--;
        }
    }
}

HI_VOID PVR_Index_GetRecIdxInfo(PVR_INDEX_HANDLE handle)
{
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo = {0};
    HI_S32 s32ReadRet = 0;

    if (HI_SUCCESS != PVRIndexGetHeaderInfo(handle->s32HeaderFd, &stIdxHeaderInfo))
    {
        HI_ERR_PVR("Can't get index header info.\n");
        return;
    }
    
    s32ReadRet = PVR_READ(&(handle->stRecIdxInfo), 
                            sizeof(PVR_REC_INDEX_INFO_S), 
                            handle->s32HeaderFd, 
                            PVR_GET_IDX_INFO_OFFSET(stIdxHeaderInfo));
    
    if (s32ReadRet != sizeof(PVR_REC_INDEX_INFO_S))
    {
        HI_ERR_PVR("Write index info fail ret=0x%x\n", s32ReadRet);
        return;
    }
}


HI_VOID PVR_Index_RecIdxInfo(PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pstIdxEntry)
{
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo = {0};
    PVR_INDEX_ENTRY_S stRewindStartEntry = {0};
    HI_S32 s32WriteRet = 0;
    HI_U32 u32GopSizeSeg = 0;
    HI_U32 u32RewindStartGopFrmNum = 0;

    if (HI_SUCCESS != PVRIndexGetHeaderInfo(handle->s32HeaderFd, &stIdxHeaderInfo))
    {
        HI_ERR_PVR("Can't get index header info.\n");
        return;
    }

    handle->stRecIdxInfo.u32MagicWord = PVR_REC_INDEX_MAGIC_WORD;

    if (0 != handle->stCycMgr.s32CycTimes)
    {
        handle->stRecIdxInfo.stIdxInfo.u32FrameTotalNum = handle->stCycMgr.u32LastFrame - 
                                                          handle->stCycMgr.u32StartFrame + 
                                                          handle->stCycMgr.u32EndFrame;
    }
    else
    {
        handle->stRecIdxInfo.stIdxInfo.u32FrameTotalNum = handle->stCycMgr.u32LastFrame + 1;
    }

    if (0 != handle->stCycMgr.s32CycTimes)
    {
        u32RewindStartGopFrmNum = handle->stCycMgr.u32StartFrame;
        
        if (HI_SUCCESS == PVRIndexGetEntryByNum(handle, &stRewindStartEntry, 
                                                u32RewindStartGopFrmNum))
        {
            if (PVR_INDEX_is_Iframe(&stRewindStartEntry))
            {
                handle->stRecIdxInfo.stIdxInfo.u32GopTotalNum--;
                
                u32RewindStartGopFrmNum++;
                if (u32RewindStartGopFrmNum > handle->stCycMgr.u32LastFrame)
                {
                    u32RewindStartGopFrmNum = 0;
                }

                do 
                {
                    if (HI_SUCCESS == PVRIndexGetEntryByNum(handle, &stRewindStartEntry, 
                                                u32RewindStartGopFrmNum))
                    {
                        u32RewindStartGopFrmNum++;
                        if (u32RewindStartGopFrmNum > handle->stCycMgr.u32LastFrame)
                        {
                            u32RewindStartGopFrmNum = 0;
                        }
                    }
                    else
                    {
                        HI_ERR_PVR("Can't get index %d entry.\n",u32RewindStartGopFrmNum);
                    }
                }
                while (!PVR_INDEX_is_Iframe(&stRewindStartEntry));
                
                if (HI_SUCCESS == PVRIndexGetEntryByNum(handle, &stRewindStartEntry, 
                                                (u32RewindStartGopFrmNum-2)))
                {
                    u32GopSizeSeg = ((stRewindStartEntry.u16FrameTypeAndGop & 0x3fff) + 1)/10;
                    u32GopSizeSeg = (u32GopSizeSeg > 12) ? 12 : u32GopSizeSeg;
                    handle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[u32GopSizeSeg]--;
                }
                else
                {
                    HI_ERR_PVR("Can't get index %d entry.\n",u32RewindStartGopFrmNum);
                }
                
                s32WriteRet = PVR_WRITE(&(handle->stRecIdxInfo), 
                            sizeof(PVR_REC_INDEX_INFO_S), 
                            handle->s32HeaderFd, 
                            PVR_GET_IDX_INFO_OFFSET(stIdxHeaderInfo));
    
                if (s32WriteRet != sizeof(PVR_REC_INDEX_INFO_S))
                {
                    HI_ERR_PVR("Write index info fail ret=0x%x\n", s32WriteRet);
                    return;
                }
            }
        }
        else
        {
            HI_ERR_PVR("Can't get index %d entry.\n",u32RewindStartGopFrmNum);
        }
    }

    if (PVR_INDEX_is_Iframe(pstIdxEntry))
    {
        handle->stRecIdxInfo.stIdxInfo.u32GopTotalNum++;

        if (handle->stRecIdxInfo.u32LastGopSize > handle->stRecIdxInfo.stIdxInfo.u32MaxGopSize)
        {
            handle->stRecIdxInfo.stIdxInfo.u32MaxGopSize = handle->stRecIdxInfo.u32LastGopSize;
        }

        if (0 != handle->stRecIdxInfo.u32LastGopSize)
        {
            u32GopSizeSeg = (handle->stRecIdxInfo.u32LastGopSize/10);
            u32GopSizeSeg = (u32GopSizeSeg > 12) ? 12 : u32GopSizeSeg;
            handle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[u32GopSizeSeg]++;
        }

        s32WriteRet = PVR_WRITE(&(handle->stRecIdxInfo), 
                            sizeof(PVR_REC_INDEX_INFO_S), 
                            handle->s32HeaderFd, 
                            PVR_GET_IDX_INFO_OFFSET(stIdxHeaderInfo));
    
        if (s32WriteRet != sizeof(PVR_REC_INDEX_INFO_S))
        {
            HI_ERR_PVR("Write index info fail ret=0x%x\n", s32WriteRet);
            return;
        }
    }

    handle->stRecIdxInfo.u32LastGopSize = (pstIdxEntry->u16FrameTypeAndGop & 0x3fff) + 1;
    
    return;
}

HI_VOID PVR_Index_UpdateIdxInfoWhenRewind(PVR_INDEX_HANDLE handle)
{
    PVR_INDEX_ENTRY_S stEntryTmp = {0};
    HI_U32 u32GopSizeSeg = 0;
    HI_U32 i = handle->stCycMgr.u32EndFrame;

    if (1 != handle->stCycMgr.s32CycTimes)
    {
        return;
    }

    while(1) 
    {
        if (HI_SUCCESS == PVRIndexGetEntryByNum(handle, &stEntryTmp, i))
        {
            if (PVR_INDEX_is_Iframe(&stEntryTmp))
            {
                if (i != handle->stCycMgr.u32EndFrame)
                {
                    if (HI_SUCCESS == PVRIndexGetEntryByNum(handle, &stEntryTmp, (i-1)))
                    {
                        u32GopSizeSeg = ((stEntryTmp.u16FrameTypeAndGop & 0x3fff) + 1)/10;
                        u32GopSizeSeg = (u32GopSizeSeg > 12) ? 12 : u32GopSizeSeg;
                        handle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[u32GopSizeSeg]--;
                    }
                    else
                    {
                        HI_ERR_PVR("Can't get index %d entry.\n",i);
                    }
                }
                
                if (i >= handle->stCycMgr.u32StartFrame)
                {
                    break;
                }
                
                handle->stRecIdxInfo.stIdxInfo.u32GopTotalNum--;
            }
        }
        else
        {
            HI_ERR_PVR("Can't get index %d entry.\n",i);
        }
        i++;
    }
}

HI_VOID PVR_Index_RecLastIdxInfo(PVR_INDEX_HANDLE handle)
{
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo = {0};
    PVR_INDEX_ENTRY_S stEntryTmp = {0};
    HI_U32 u32GopSizeSeg = 0;
    HI_S32 s32WriteRet = 0;

    if (HI_SUCCESS != PVRIndexGetHeaderInfo(handle->s32HeaderFd, &stIdxHeaderInfo))
    {
        HI_ERR_PVR("Can't get index header info.\n");
        return;
    }

    /*if (0 != handle->stCycMgr.s32CycTimes)
    {
        handle->stRecIdxInfo.stIdxInfo.u32FrameTotalNum = handle->stCycMgr.u32LastFrame - 
                                                          handle->stCycMgr.u32StartFrame + 
                                                          handle->stCycMgr.u32EndFrame;
    }
    else
    {
        handle->stRecIdxInfo.stIdxInfo.u32FrameTotalNum = handle->stCycMgr.u32LastFrame;
    }*/

    if (HI_SUCCESS == PVRIndexGetEntryByNum(handle, &stEntryTmp, (handle->stCycMgr.u32EndFrame -1)))
    {
        if (((stEntryTmp.u16FrameTypeAndGop & 0x3fff) + 1) > handle->stRecIdxInfo.stIdxInfo.u32MaxGopSize)
        {
            handle->stRecIdxInfo.stIdxInfo.u32MaxGopSize = ((stEntryTmp.u16FrameTypeAndGop & 0x3fff) + 1);
        }
        
        u32GopSizeSeg = ((stEntryTmp.u16FrameTypeAndGop & 0x3fff) + 1)/10;
        u32GopSizeSeg = (u32GopSizeSeg > 12) ? 12 : u32GopSizeSeg;
        handle->stRecIdxInfo.stIdxInfo.u32GopSizeInfo[u32GopSizeSeg]++;
    }
    else
    {
        HI_ERR_PVR("Can't get index %d entry.\n",handle->stCycMgr.u32EndFrame);
    }

    s32WriteRet = PVR_WRITE(&(handle->stRecIdxInfo), 
                            sizeof(PVR_REC_INDEX_INFO_S), 
                            handle->s32HeaderFd, 
                            PVR_GET_IDX_INFO_OFFSET(stIdxHeaderInfo));
    
    if (s32WriteRet != sizeof(PVR_REC_INDEX_INFO_S))
    {
        HI_ERR_PVR("Write index info fail ret=0x%x\n", s32WriteRet);
        return;
    }
}

HI_BOOL PVR_Index_CheckSetRecReachPlay(PVR_INDEX_HANDLE handle)
{
    HI_U32 u32ReadFrame = 0;
    HI_U32 u32StartFrame = 0;
    HI_U32 u32EndFrame = 0;
    HI_U32 u32LastFrame = 0;

    u32StartFrame = handle->stCycMgr.u32StartFrame;
    u32EndFrame = handle->stCycMgr.u32EndFrame;
    u32ReadFrame = handle->u32ReadFrame;
    u32LastFrame = handle->stCycMgr.u32LastFrame;


    if (u32StartFrame < u32EndFrame) /* NOT cycled, 0--S--R--E--L  */
    {

        if ((HI_S32)u32StartFrame + PVR_TPLAY_MIN_DISTANCE > (HI_S32)u32ReadFrame)
        {
            HI_ERR_PVR("Rec almost over Play: S/R/E/L: %u,%u,%u,%u.\n",
                   u32StartFrame, u32ReadFrame,u32EndFrame, u32LastFrame);
            handle->u32RecReachPlay = 1;
            return HI_TRUE;
        }
        else
        {
            return HI_FALSE;
        }
    }
    else  /* Cycled */
    {
        if (u32ReadFrame > u32StartFrame) /* 0----E----S----R--L */
        {
            if (u32ReadFrame - u32StartFrame > PVR_TPLAY_MIN_DISTANCE)
            {
                return HI_FALSE;
            }
            else
            {
                HI_ERR_PVR("Rec almost over Play: E/S/R/L: %u,%u,%u,%u.\n",
                   u32EndFrame, u32StartFrame, u32ReadFrame, u32LastFrame);
                handle->u32RecReachPlay = 1;
                return HI_TRUE;
            }
        }
        else /* 0--R--E----S--L */
        {
            HI_U32 startToLast;

            startToLast = u32LastFrame - u32StartFrame;

            if (startToLast + u32ReadFrame > PVR_TPLAY_MIN_DISTANCE)
            {
                return HI_FALSE;
            }
            else
            {
                HI_ERR_PVR("Rec almost over Play: R/E/S/L: %u,%u,%u,%u.\n",
                   u32ReadFrame, u32EndFrame, u32StartFrame, u32LastFrame);

                handle->u32RecReachPlay = 1;
                return HI_TRUE;
            }
        }
    }
}

HI_BOOL PVR_Index_QureyClearRecReachPlay(PVR_INDEX_HANDLE handle)
{
    if (1 == handle->u32RecReachPlay)
    {
        handle->u32RecReachPlay = 0;
        return HI_TRUE;
    }

    return HI_FALSE;
}

/*****************************************************************************
 Prototype       : PVR_IndexGetNextEntry
 Description     : to find next frame,
 first, check whether the read pointer is beyond the mark(by the result of read interface, if failure, the device maybe be unplugged)
 sedond, read frame
 last, move the read pointer to the next frame. again, check the valid, because, the end maybe not the last frame of index file
 so, this interface can be used for checking whether it reach to the end of the index file.
 Input           : handle  **
                   pEntry  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/17
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 PVRIndexGetNextEntry(PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pEntry)
{
    ssize_t readNum;
    HI_U32 u32OldFrame;

    HI_ASSERT_RET(NULL != handle);
    HI_ASSERT_RET(NULL != pEntry);

    /*
    HI_INFO_PVR("S:%d, E:%d, L:%d, R:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
               handle->stCycMgr.u32LastFrame, handle->u32ReadFrame);
    */
    //readNum = PVR_READALL(pEntry, sizeof(PVR_INDEX_ENTRY_S), handle->s32ReadFd, (handle->u32ReadFrame * sizeof(PVR_INDEX_ENTRY_S)));
    PVR_READ_INDEX(readNum,pEntry, sizeof(PVR_INDEX_ENTRY_S), handle->s32ReadFd,
                             (handle->u32ReadFrame * sizeof(PVR_INDEX_ENTRY_S)), handle);

    if (readNum != (ssize_t)sizeof(PVR_INDEX_ENTRY_S))
    {
        if (-1 == readNum)
        {
            HI_WARN_PVR("read index error: ");
            return HI_ERR_PVR_FILE_CANT_READ;
        }
        else
        {
            HI_INFO_PVR("read to end, cur and next is same: S:%d, E:%d, L:%d, C:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
                   handle->stCycMgr.u32LastFrame, handle->u32ReadFrame);
            return HI_ERR_PVR_FILE_TILL_END;
        }
    }

    u32OldFrame = handle->u32ReadFrame;
    PVRIndexCycMoveReadFrame(handle, 1);
    if (u32OldFrame == handle->u32ReadFrame)
    {
        HI_WARN_PVR("read to end, S:%d, E:%d, L:%d, C:%d, O:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
                   handle->stCycMgr.u32LastFrame, handle->u32ReadFrame, u32OldFrame);
        return HI_ERR_PVR_FILE_TILL_END;
    }

    HI_INFO_PVR("after get: Read frame:%u, Type:%u, offset:%llu, PTS:%u, Time:%u \n", handle->u32ReadFrame,
                PVR_INDEX_get_frameType(pEntry), pEntry->u64Offset, pEntry->u32PtsMs, pEntry->u32DisplayTimeMs);
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVR_IndexGetPlayNextEntry
 Description     : to find next frame of current play frame,
 Input           : handle  **
                   pEntry  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 
    Author       : 
    Modification : Created function

*****************************************************************************/
HI_S32 PVRIndexGetPlayNextEntry(PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pEntry)
{
    ssize_t readNum;

    HI_ASSERT_RET(NULL != handle);
    HI_ASSERT_RET(NULL != pEntry);

    
    PVR_READ_INDEX(readNum, pEntry, sizeof(PVR_INDEX_ENTRY_S), handle->s32ReadFd,
                             (handle->u32PlayFrame * sizeof(PVR_INDEX_ENTRY_S)), handle);

    if (readNum != (ssize_t)sizeof(PVR_INDEX_ENTRY_S))
    {
        if (-1 == readNum)
        {
            HI_WARN_PVR("read index error: ");
            return HI_ERR_PVR_FILE_CANT_READ;
        }
        else
        {
            HI_INFO_PVR("read to end, cur and next is same: S:%d, E:%d, L:%d, C:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
                   handle->stCycMgr.u32LastFrame, handle->u32ReadFrame);
            return HI_ERR_PVR_FILE_TILL_END;
        }
    }
    HI_INFO_PVR("after get: Read frame:%u, Type:%u, offset:%llu, PTS:%u, Time:%u \n", handle->u32ReadFrame,
                PVR_INDEX_get_frameType(pEntry), pEntry->u64Offset, pEntry->u32PtsMs, pEntry->u32DisplayTimeMs);
    handle->u32PlayFrame = PVRIndexCalcNewPos(handle, handle->u32PlayFrame, 1);
    return HI_SUCCESS;
}



/*****************************************************************************
 Prototype       : PVRIndexGetNextIEntry
 Description     : to find next I frame
 Input           : handle  **
                   pEntry  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/17
    Author       : q46153
    Modification : Created function

*****************************************************************************/
STATIC INLINE HI_S32 PVRIndexGetNextIEntry(const PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pEntry)
{
    HI_S32 ret;

    HI_ASSERT_RET(NULL != handle);
    HI_ASSERT_RET(NULL != pEntry);

    while (1)
    {
        ret = PVRIndexGetNextEntry(handle, pEntry);
        if (ret != HI_SUCCESS)
        {
            return ret;
        }

        /* I frame, and not found the frame upflow flag*/
        if (PVR_INDEX_is_Iframe(pEntry) && !(pEntry->u16UpFlowFlag))
        {
            break;
        }
        handle->u32FrameDistance++;
    }

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVR_IndexGetPreEntry
 Description     : to find previous frame
 Input           : handle  **
                   pEntry  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/17
    Author       : q46153
    Modification : Created function

*****************************************************************************/
STATIC INLINE HI_S32 PVRIndexGetPreEntry(PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pEntry)
{
    ssize_t readNum ;
    HI_U32 u32OldFrame;

    HI_ASSERT_RET(NULL != handle);
    HI_ASSERT_RET(NULL != pEntry);

    HI_INFO_PVR("S:%d, E:%d, L:%d, R:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
               handle->stCycMgr.u32LastFrame, handle->u32ReadFrame);

    u32OldFrame = handle->u32ReadFrame;
    PVRIndexCycMoveReadFrame(handle, (HI_S32)(-1));

    if (u32OldFrame == handle->u32ReadFrame)
    {
        HI_WARN_PVR("read to start, cur and pre is same: S:%d, E:%d, L:%d, C:%d, O:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
                   handle->stCycMgr.u32LastFrame, handle->u32ReadFrame, u32OldFrame);
        return HI_ERR_PVR_FILE_TILL_START;
    }

    PVR_READ_INDEX(readNum, pEntry, sizeof(PVR_INDEX_ENTRY_S), handle->s32ReadFd,
                             (handle->u32ReadFrame * sizeof(PVR_INDEX_ENTRY_S)), handle);
    if (readNum != (ssize_t)sizeof(PVR_INDEX_ENTRY_S))
    {
        if (-1 == readNum)
        {
            HI_WARN_PVR("read index error: ");
            return HI_ERR_PVR_FILE_CANT_READ;
        }
        else
        {
            HI_WARN_PVR("read to start,  S:%d, E:%d, L:%d, C:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
                   handle->stCycMgr.u32LastFrame, handle->u32ReadFrame);
            return HI_ERR_PVR_FILE_TILL_START;
        }
    }

    HI_INFO_PVR("after get: R:%u, Type:%u, offset:%llu, PTS:%u \n", handle->u32ReadFrame,
                PVR_INDEX_get_frameType(pEntry), pEntry->u64Offset, pEntry->u32PtsMs);

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVR_IndexGetPreIEntry
 Description     : to find the previous I frame
 Input           : handle  **
                   pEntry  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/17
    Author       : q46153
    Modification : Created function

*****************************************************************************/
STATIC INLINE HI_S32 PVRIndexGetPreIEntry(const PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pEntry)
{
    HI_S32 ret;

    HI_ASSERT_RET(NULL != handle);
    HI_ASSERT_RET(NULL != pEntry);

    while (1)
    {
        ret = PVRIndexGetPreEntry(handle, pEntry);
        if (ret != HI_SUCCESS)
        {
            return ret;
        }

        /* I frame, and not found the frame upflow flag*/
        if (PVR_INDEX_is_Iframe(pEntry) && !(pEntry->u16UpFlowFlag))
        {
            break;
        }
        handle->u32FrameDistance++;
    }


    return HI_SUCCESS;
}


/*****************************************************************************
 Prototype       : PVR_IndexGetCurrentEntry
 Description     : to get current frame information
                    if the read pointer reach to the end, it will return failure, because of it reach to the end of the file .
 Input           : handle  **
                   pEntry  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/17
    Author       : q46153
    Modification : Created function

*****************************************************************************/
STATIC INLINE HI_S32 PVRIndexGetCurrentEntry(const PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pEntry)
{
    ssize_t readNum ;

    HI_ASSERT_RET(handle != NULL);
    HI_ASSERT_RET(pEntry != NULL);

    HI_INFO_PVR("S:%d, E:%d, L:%d, C:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
               handle->stCycMgr.u32LastFrame, handle->u32ReadFrame);

    if (handle->u32ReadFrame == handle->stCycMgr.u32EndFrame)
    {
        HI_WARN_PVR("read to end, S:%d, E:%d, L:%d, C:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
               handle->stCycMgr.u32LastFrame, handle->u32ReadFrame);
        return HI_ERR_PVR_FILE_TILL_END;
    }

    PVR_READ_INDEX(readNum, pEntry, sizeof(PVR_INDEX_ENTRY_S), handle->s32ReadFd,
                             (handle->u32ReadFrame * sizeof(PVR_INDEX_ENTRY_S)), handle);
    if (readNum != (ssize_t)sizeof(PVR_INDEX_ENTRY_S))
    {
        /* PVR play to the end of file, no way for PVR_EVENT_PLAY_EOF, AI7D02611 */
        if (-1 == readNum)
        {
            HI_WARN_PVR("read failed in PVRIndexGetCurrentEntry");
            return HI_ERR_PVR_FILE_CANT_READ;
        }
        else
        {
            HI_WARN_PVR("read to end, S:%d, E:%d, L:%d, C:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
                   handle->stCycMgr.u32LastFrame, handle->u32ReadFrame);
            return HI_ERR_PVR_FILE_TILL_END;
        }
    }

    HI_INFO_PVR("frame cur <Read frame:%u, Type:%u, offset:%llu, PTS:%u> \n", handle->u32ReadFrame,
                PVR_INDEX_get_frameType(pEntry), pEntry->u64Offset, pEntry->u32PtsMs);

    return HI_SUCCESS;
}

STATIC INLINE HI_S32 PVRIndexGetEntryByNum(const PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pEntry, HI_U32 u32FrameNum)
{
    ssize_t readNum ;
    PVR_READ_INDEX(readNum, pEntry, sizeof(PVR_INDEX_ENTRY_S), handle->s32ReadFd,
                             (u32FrameNum * sizeof(PVR_INDEX_ENTRY_S)), handle);
    if (readNum != (ssize_t)sizeof(PVR_INDEX_ENTRY_S))
    {
        if (-1 == readNum)
        {
            HI_WARN_PVR("read failed in PVRIndexGetEntryByNum");
            return HI_ERR_PVR_FILE_CANT_READ;
        }
        else
        {
            HI_WARN_PVR("read to end, S:%d, E:%d, L:%d, C:%d G:%d\n", handle->stCycMgr.u32StartFrame, handle->stCycMgr.u32EndFrame,
                   handle->stCycMgr.u32LastFrame, handle->u32ReadFrame, u32FrameNum);
            return HI_ERR_PVR_FILE_TILL_END;
        }
    }

    return HI_SUCCESS;
}


STATIC HI_U32 PVRIndexSeachByTime(PVR_INDEX_HANDLE handle, HI_U32 timeWant,
                                  HI_U32 start, HI_U32 end,  PVR_FILE seekFd)
{
    ssize_t l_readNum;
    HI_U32 target;
    PVR_INDEX_ENTRY_S entry;
    HI_U32 nextStart, nextEnd;

    memset(&entry, 0, sizeof(PVR_INDEX_ENTRY_S));   
    target = (start + end)/2;

    if (target == start || target == end)
    {
        HI_WARN_PVR("PVRIndexSeachByTime end, ret:%d\n", target);
        return target;
    }

    /* get target's time */
    PVR_READ_INDEX(l_readNum, &entry, sizeof(PVR_INDEX_ENTRY_S), seekFd,
                               (target*sizeof(PVR_INDEX_ENTRY_S)), handle);
    if (l_readNum != (ssize_t)sizeof(PVR_INDEX_ENTRY_S))
    {
        HI_ERR_PVR("read err,  want:%u, get:%u, off:%u\n", (sizeof(PVR_INDEX_ENTRY_S)), (l_readNum), target*sizeof(PVR_INDEX_ENTRY_S));
        if (-1 == l_readNum)
        {
            HI_WARN_PVR("read index error: ");
            return 0;
        }
        else if (0 == l_readNum) /* if meet error at the end of file, return the last frame AI7D03033 */
        {
            HI_U32 u32LastPos;
            u32LastPos = (HI_U32)PVR_SEEK(seekFd, (off_t)(0 - (HI_S32)sizeof(PVR_INDEX_ENTRY_S)), SEEK_END);
            if ((HI_S32)u32LastPos >= 0)
            {
                (void)PVR_READ(&entry, sizeof(PVR_INDEX_ENTRY_S), seekFd, u32LastPos);
                return (u32LastPos / sizeof(PVR_INDEX_ENTRY_S));
            }
            else
            {
                HI_WARN_PVR("can't get the last frame\n");
                return 0;
            }
        }
        else
        {
            return 0;
        }
    }

    HI_INFO_PVR("^^^^ search time:want=%d, target=%d ^^^^\n", timeWant, entry.u32DisplayTimeMs);
    if (entry.u32DisplayTimeMs <= timeWant)
    {
        nextStart = target;
        nextEnd = end;
    }
    else
    {
        nextStart = start;
        nextEnd = target;
    }

    return PVRIndexSeachByTime(handle, timeWant, nextStart, nextEnd, seekFd);
}

/*****************************************************************************
 Prototype       : PVRIndexFindFrameByTime
 Description     : find a frame match the time
 Input           : handle           **
                   offsetFromStart  **
 Output          : None
 Return Value    : the frame ID from start of file.
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/6/30
    Author       : fd
    Modification : Created function

*****************************************************************************/
STATIC INLINE HI_U32 PVRIndexFindFrameByTime(PVR_INDEX_HANDLE handle, HI_U32 u32FindTime)
{
    HI_U32  frameId;
    HI_U32  u32StartFrame;
    HI_U32  u32EndFrame;

    PVR_INDEX_ENTRY_S lastEntry;
    HI_S32 s32Offset;
    HI_S32 s32Read;
    HI_U32 u32LastFrame;

    u32EndFrame = handle->stCycMgr.u32EndFrame;
    u32StartFrame = handle->stCycMgr.u32StartFrame;
    u32LastFrame = handle->stCycMgr.u32LastFrame;

    memset(&lastEntry, 0, sizeof(PVR_INDEX_ENTRY_S));   
    /* Not rewind, find it directly*/
    if (u32EndFrame > u32StartFrame)
    {
        frameId = PVRIndexSeachByTime(handle, u32FindTime, u32StartFrame,
                                      u32EndFrame,  handle->s32SeekFd);
    }
    else /* Rewind, find it for two part*/
    {
        s32Offset = (HI_S32)(sizeof(PVR_INDEX_ENTRY_S) * (handle->stCycMgr.u32LastFrame));
        PVR_READ_INDEX(s32Read, &lastEntry, sizeof(PVR_INDEX_ENTRY_S), handle->s32SeekFd, (HI_U32)s32Offset, handle);
        if (s32Read != (HI_S32)sizeof(PVR_INDEX_ENTRY_S))
        {
            HI_ERR_PVR("HI_PVR_GetFileAttrByFileName-read idx failed\n");
            return (handle->stCycMgr.u32StartFrame + PVR_DFT_GOP_LEN);
        }

        HI_INFO_PVR("last entry PTS=%d ms\n", lastEntry.u32DisplayTimeMs);

        if (u32FindTime <= lastEntry.u32DisplayTimeMs)
        {
            HI_WARN_PVR("%s, u32FindTime:%u, u32DisplayTimeMs:%u, find it in the last section\n",__func__, u32FindTime,lastEntry.u32DisplayTimeMs);
            frameId = PVRIndexSeachByTime(handle, u32FindTime, u32StartFrame,
                                          u32LastFrame,  handle->s32SeekFd);
        }
        else /* find it in the start part */
        {
            HI_WARN_PVR("%s, u32FindTime:%u, u32DisplayTimeMs:%u, find it in the first section\n",__func__, u32FindTime,lastEntry.u32DisplayTimeMs);
            frameId = PVRIndexSeachByTime(handle, u32FindTime, PVR_DFT_GOP_LEN,
                                          u32EndFrame,  handle->s32SeekFd);
        }
    }

    return frameId;
}

/* find PTS from u32FrmPos direction forward or backward, which close to the frame of u32PtsMs, and return the frame number */
HI_U32 PVRIndexFindFrameByPTS(PVR_INDEX_HANDLE handle, HI_U32 u32PtsSearched, HI_U32 u32FrmPos, HI_U32 IsForword)
{
    PVR_INDEX_ENTRY_S entry,IEntry;
    HI_U32 u32SearchPos;
    HI_U32 u32LastEntryPts;
    HI_S32 s32FrameNum;

    memset(&entry, 0, sizeof(PVR_INDEX_ENTRY_S)); 
	memset(&IEntry, 0, sizeof(PVR_INDEX_ENTRY_S));
    /*the pos invalid, return the start frame */
    if (!PVRIndexIsFrameValid(handle, u32FrmPos))
    {
        u32SearchPos = handle->stCycMgr.u32StartFrame;
        HI_WARN_PVR("PVRIndexFindFrameByPTS u32FrmPos %u is not valid, return start frame\n", u32FrmPos);
        return u32SearchPos;
    }

    u32SearchPos = u32FrmPos;

    /* reach to the end of TS */
    if (PVRIndexIsFrameEnd(handle, u32SearchPos))
    {
        HI_WARN_PVR("*****************************u32SearchPos:%u is to the end!\n", u32SearchPos);
        u32SearchPos = PVRIndexCalcNewPos(handle, u32SearchPos, -1);
        if (HI_SUCCESS == PVRIndexGetEntryByNum(handle, &entry, u32SearchPos))
        {
            /* the finding frame more than the last frame, it maybe the last B/P frame, check the difference less than one sequence */
            if ((entry.u32PtsMs < u32PtsSearched) && (u32PtsSearched - entry.u32PtsMs < 5000))
            {
                HI_WARN_PVR("get to end and small than to seek: to seek=%u, end:%u\n", u32PtsSearched, entry.u32PtsMs);
                return u32SearchPos;
            }
        }
        else
        {
            HI_ERR_PVR("No frame in index file.\n");
            u32SearchPos = handle->stCycMgr.u32StartFrame;
            return u32SearchPos;
        }
    }
    else
    {
        HI_WARN_PVR("*****************************u32SearchPos:%u is not to the end and end frame is %u!\n", u32SearchPos,handle->stCycMgr.u32EndFrame);
        if (HI_SUCCESS != PVRIndexGetEntryByNum(handle, &entry, u32SearchPos))
        {
            HI_ERR_PVR("Frame in index file error.\n");
            u32SearchPos = handle->stCycMgr.u32StartFrame;
            return u32SearchPos;
        }
    }

    /* the reading equal the playing, return it directly */
    if (entry.u32PtsMs == u32PtsSearched)
    {
        HI_WARN_PVR("seek OK: to seek=%u, pos:%u\n", u32PtsSearched, u32SearchPos);
        return u32SearchPos;
    }

    /* save the fitst frame PTS */
    u32LastEntryPts = entry.u32PtsMs;

    /*find forward, used for play backward*/
    if (IsForword)
    {
        u32SearchPos = PVRIndexCalcNewPos(handle, u32SearchPos, 1);
        while(!PVRIndexIsFrameEnd(handle, u32SearchPos) && (HI_SUCCESS == PVRIndexGetEntryByNum(handle, &entry, u32SearchPos)))
        {
            /* invalid PTS, continue*/
            if ((0 == entry.u32PtsMs) || (PVR_INDEX_INVALID_PTSMS == entry.u32PtsMs))
            {
                u32SearchPos = PVRIndexCalcNewPos(handle, u32SearchPos, 1);
                continue;
            }
            s32FrameNum = PVR_Index_GetPreIFrameByNum(handle,&IEntry,u32SearchPos);
            if (s32FrameNum > 0 && IEntry.u32PtsMs == entry.u32PtsMs)//prev I frame pts == current frame pts.
            {
                entry.u32PtsMs += s32FrameNum*PVR_INDEX_DEFFRAME_PTSMS;//use 40ms as frame during time for simple
            }

            if ((entry.u32PtsMs == u32PtsSearched)  /* equal, find it */
                || ((u32LastEntryPts < u32PtsSearched) && (entry.u32PtsMs > u32PtsSearched)) /* previous frame less than next frame, use current I frame */
                || ((u32LastEntryPts > entry.u32PtsMs)
                    && (u32LastEntryPts < u32PtsSearched) && (entry.u32PtsMs < u32PtsSearched)
                    && ((HI_U32)abs((HI_S32)(u32LastEntryPts - u32PtsSearched)) < 2000))) /* rewind ts, both previous frame and next frame less than find fram, and before rewinding,  the difference between last frame and find frame less than 2 second */
            {
                break;
            }
            u32LastEntryPts = entry.u32PtsMs;
            u32SearchPos = PVRIndexCalcNewPos(handle, u32SearchPos, 1);
        }
    }
    else     /*find backward, used for play forward */
    {
        u32SearchPos = PVRIndexCalcNewPos(handle, u32SearchPos, -1);
        while (!PVRIndexIsFrameStart(handle, u32SearchPos) && (HI_SUCCESS == PVRIndexGetEntryByNum(handle, &entry, u32SearchPos)))
        {
            /* invalid PTS, continue*/
            if ((0 == entry.u32PtsMs) || (PVR_INDEX_INVALID_PTSMS == entry.u32PtsMs))
            {
                u32SearchPos = PVRIndexCalcNewPos(handle, u32SearchPos, -1);
                continue;
            }
            s32FrameNum = PVR_Index_GetPreIFrameByNum(handle,&IEntry,u32SearchPos);
            if (s32FrameNum > 0 && IEntry.u32PtsMs == entry.u32PtsMs)//prev I frame pts == current frame pts.
            {
                entry.u32PtsMs += s32FrameNum*PVR_INDEX_DEFFRAME_PTSMS;//use 40ms as frame gap for simple
            }

            if ((entry.u32PtsMs == u32PtsSearched)  /* equal, find it */
                || ((u32LastEntryPts > u32PtsSearched) && (entry.u32PtsMs < u32PtsSearched)) /* previous frame more than next frame, use current I frame */
                || ((u32LastEntryPts <= entry.u32PtsMs)
                    && (u32LastEntryPts < u32PtsSearched) && (entry.u32PtsMs < u32PtsSearched)
                    && ((HI_U32)abs((int)(entry.u32PtsMs - u32PtsSearched)) < 2000))) /* rewind ts, both previous frame and next frame less than find fram, and before rewinding,  the difference between last frame and find frame less than 2 second */
            {
                break;
            }
            u32LastEntryPts = entry.u32PtsMs;
            u32SearchPos = PVRIndexCalcNewPos(handle, u32SearchPos, -1);
        }
    }

    HI_WARN_PVR("seek OK: to seek=%u, now:%u\n", u32PtsSearched, entry.u32PtsMs);

    return u32SearchPos;
}

/*****************************************************************************
 Prototype       : PVR_Index_SeekByFrame2I
 Description     : seek by frame
 Input           : handle  **
                   offset  ** number of frame
                   whence  ** from start frame
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/28
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 PVR_Index_SeekByFrame2I(PVR_INDEX_HANDLE handle, HI_S32 offset, HI_S32 whence)
{
    HI_S32 ret = HI_SUCCESS;
//    HI_S32 pos;
//    HI_U32 maxFrameNum;

    HI_INFO_PVR("whence:%s, offset:%d\n", WHENCE_STRING(whence), offset);

    PVR_INDEX_LOCK(&(handle->stMutex));
    switch ( whence )
    {
    case SEEK_SET :
        handle->u32ReadFrame = handle->stCycMgr.u32StartFrame;
        PVRIndexCycMoveReadFrame(handle, offset);
        break;
    case SEEK_CUR :
        PVRIndexCycMoveReadFrame(handle, offset);
        break;
    case SEEK_END:
        handle->u32ReadFrame = handle->stCycMgr.u32EndFrame;
        PVRIndexCycMoveReadFrame(handle, offset);
        break;
    default:
        PVR_INDEX_UNLOCK(&(handle->stMutex));
        return HI_ERR_PVR_INVALID_PARA;
    }

    if ((SEEK_SET == whence) || ((SEEK_CUR == whence) && (offset > 0)))
    {
        ret = PVRIndexGetNextIEntry(handle, &(handle->stCurPlayFrame));
        if (HI_SUCCESS != ret)
        {
            ret = PVRIndexGetPreIEntry(handle, &(handle->stCurPlayFrame));
            if (HI_SUCCESS != ret)
            {
                HI_ERR_PVR("get next I entry error, file end.\n");
            }
        }
        else
        {
            PVRIndexCycMoveReadFrame(handle, -1);
        }
    }

    if ((SEEK_END == whence) || ((SEEK_CUR == whence) && (offset < 0)))
    {
        ret = PVRIndexGetPreIEntry(handle, &(handle->stCurPlayFrame));
        if (HI_SUCCESS != ret)
        {
            ret = PVRIndexGetNextIEntry(handle, &(handle->stCurPlayFrame));
            if (HI_SUCCESS != ret)
            {
                HI_ERR_PVR("get next I entry error, file end.\n");
            }
            else
            {
                PVRIndexCycMoveReadFrame(handle, -1);
            }
        }
    }

    HI_WARN_PVR("Ret:%#x. Cur frame Type:%lu, PTS:%u, at last seekto:%u\n",
               ret,
               PVR_INDEX_get_frameType (&(handle->stCurPlayFrame)),
               handle->stCurPlayFrame.u32PtsMs,
               handle->u32ReadFrame);

    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("can not find I frame@both, Err:%#x\n", ret);
        PVR_INDEX_UNLOCK(&(handle->stMutex));
        return ret;
    }

    PVR_INDEX_UNLOCK(&(handle->stMutex));
    return HI_SUCCESS;
}

HI_S32 PVR_Index_SeekToPTS(PVR_INDEX_HANDLE handle, HI_U32 u32PtsMs, HI_U32 IsForword, HI_U32 IsNextForword)
{
    PVR_INDEX_ENTRY_S entry;
    HI_U32 u32PtsPos;

    memset(&entry,0,sizeof(PVR_INDEX_ENTRY_S));

    PVR_INDEX_LOCK(&(handle->stMutex));
    HI_WARN_PVR("seek to PTS:%u\n", u32PtsMs);

    u32PtsPos = PVRIndexFindFrameByPTS(handle, u32PtsMs, handle->u32ReadFrame, IsForword);
    HI_WARN_PVR("seek to PTS:%u, Pos:%u\n", u32PtsMs, u32PtsPos);

    handle->u32ReadFrame = u32PtsPos;

    /*forward seek, used for backward play*/
    if (IsForword)
    {
        /* continuous to backward play, backward two frame */
        if (IsNextForword)
        {
            (void)PVRIndexGetPreIEntry(handle, &entry);
            (void)PVRIndexGetPreIEntry(handle, &entry);
        }
    }
    else     /*backward seek, used for forward play*/
    {
        /* coninous to forward play, forward two frames */
        if (!IsNextForword)
        {
            (void)PVRIndexGetNextIEntry(handle, &entry);
            (void)PVRIndexGetNextIEntry(handle, &entry);
            PVRIndexCycMoveReadFrame(handle, -1);
        }
    }
    HI_INFO_PVR("seek OK: to seek=%u, now:%u\n", u32PtsMs, entry.u32PtsMs);

    PVR_INDEX_UNLOCK(&(handle->stMutex));

    return HI_SUCCESS;
}


/*****************************************************************************
 Prototype       : PVR_Index_SeekToTime
 Description     : seek the read pointer of index to I frame closed to the time value
 Input           : handle         **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function
*****************************************************************************/
HI_S32 PVR_Index_SeekToTime(PVR_INDEX_HANDLE handle, HI_U32 u32TimeMs)
{
    HI_U32 frameToSeek;
    HI_U32 offsetEndFrame = 0;
    HI_U32 offsetStartFrame = 0;

    /* frame position to seek by time*/
    frameToSeek = PVRIndexFindFrameByTime(handle, u32TimeMs);

    HI_WARN_PVR("seek to time:%d, frame pos:%u\n", u32TimeMs, frameToSeek);

    if (PVR_IDX_IS_REWIND(handle)) /* rewind */
    {
        if ( HI_FALSE == PVRIndexIsFrameValid(handle, frameToSeek) )
        {
            /* frame position is invalid, so check which close to the frame, and then set it */
            offsetEndFrame = frameToSeek - handle->stCycMgr.u32EndFrame;
            offsetStartFrame = handle->stCycMgr.u32StartFrame - frameToSeek;

            HI_WARN_PVR("frame position(%u) to seek is invalid\n", frameToSeek);
            HI_WARN_PVR("Now startFrame is %u, endFrame is %u, lastFrame is %u\n", handle->stCycMgr.u32StartFrame,
                handle->stCycMgr.u32EndFrame, handle->stCycMgr.u32LastFrame);

            if(offsetStartFrame > offsetEndFrame)
            {
                frameToSeek = handle->stCycMgr.u32EndFrame;
            }
            else
            {
                frameToSeek = handle->stCycMgr.u32StartFrame+10;
            }
        }

        /* frameToSeek should be the offset from u32StartFrame*/
        if (frameToSeek >= handle->stCycMgr.u32StartFrame)
        {
            frameToSeek -= handle->stCycMgr.u32StartFrame;
        }
        else
        {
            frameToSeek = handle->stCycMgr.u32LastFrame - handle->stCycMgr.u32StartFrame + frameToSeek;
        }
    }

    HI_WARN_PVR("seek frame position is %u to PVR_Index_SeekByFrame2I. S:%u, E:%u, L:%u\n", frameToSeek, handle->stCycMgr.u32StartFrame,
                handle->stCycMgr.u32EndFrame, handle->stCycMgr.u32LastFrame);

    return PVR_Index_SeekByFrame2I(handle, (HI_S32)frameToSeek, SEEK_SET);

}

/*****************************************************************************
 Prototype       : PVR_Index_SeekByTime
 Description     : By current time,  the start and end time will offset some time, in millisecond.
 Input           : handle         **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function
*****************************************************************************/
HI_S32 PVR_Index_SeekByTime(PVR_INDEX_HANDLE handle, HI_S64 offset, HI_S32 whence, HI_U32 curplaytime)
{
    HI_S32 ret;
    PVR_INDEX_ENTRY_S    stFrameTmp;
    HI_U32 u32CurFrmTime;
    HI_U32 u32StartFrmTime;
    HI_U32 u32EndFrmTime;
    HI_U32 u32SeekToTime = 0;
    HI_U32 u32StartFrmPos;
    HI_U32 u32EndFrmPos;

    HI_INFO_PVR("seek pos(%lld) whence:%s.\n", offset,  WHENCE_STRING(whence));

    memset(&stFrameTmp, 0, sizeof(PVR_INDEX_ENTRY_S));    

    u32StartFrmPos = handle->stCycMgr.u32StartFrame;
    if (handle->stCycMgr.u32EndFrame > 0)
    {
        u32EndFrmPos = handle->stCycMgr.u32EndFrame - 1;
    }
    else
    {
        u32EndFrmPos = handle->stCycMgr.u32LastFrame - 1;
    }
        
    ret = PVRIndexGetEntryByNum(handle, &stFrameTmp, u32StartFrmPos);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("Can't get StartFrame:%d\n", u32StartFrmPos);
        return ret;
    }
    u32StartFrmTime = stFrameTmp.u32DisplayTimeMs;


    ret = PVRIndexGetEntryByNum(handle, &stFrameTmp, u32EndFrmPos);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("Can't get EndFrame:%d\n", u32EndFrmPos);
        return ret;
    }
    u32EndFrmTime = stFrameTmp.u32DisplayTimeMs;

    u32CurFrmTime = curplaytime;

    HI_INFO_PVR("frame info start:%d, end:%d, cur:%d\n",
                     u32StartFrmTime, u32EndFrmTime, u32CurFrmTime);

    if (u32CurFrmTime < u32StartFrmTime)
    {
        u32CurFrmTime = u32StartFrmTime;
    }
    if (u32CurFrmTime > u32EndFrmTime)
    {
        u32CurFrmTime = u32EndFrmTime;
    }

    switch ( whence )
    {
    case SEEK_SET:
        u32SeekToTime = (HI_S32)offset;
        break;
    case SEEK_CUR:
        u32SeekToTime = u32CurFrmTime + (HI_S32)offset;
        break;
    case SEEK_END:
        u32SeekToTime = u32EndFrmTime + (HI_S32)offset;
        break;
    default:
        return HI_ERR_PVR_INVALID_PARA;
    }

    if ((HI_S32)u32SeekToTime > (HI_S32)u32EndFrmTime) /* over the end, set it the end */
    {
        u32SeekToTime = u32EndFrmTime;
    }
    else if ((HI_S32)u32SeekToTime < (HI_S32)u32StartFrmTime) /* less the start, set it the start */
    {
        u32SeekToTime = u32StartFrmTime;
    }

    HI_WARN_PVR("seek to time: %u.  whence:%s, offset:%lld, start:%d, end:%d, cur:%d\n",
               u32SeekToTime, WHENCE_STRING(whence), offset,  u32StartFrmTime, u32EndFrmTime, u32CurFrmTime);

    return PVR_Index_SeekToTime(handle, u32SeekToTime);
}

/*****************************************************************************
 Prototype       : PVR_Index_SeekToStart
 Description     : move the read pointer of  index to the start frame. if recording, move it direction backward more 20 frames.
 Input           : handle         **
                   pFrame         **
                   pDisplayTimes  **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/09/21
    Author       : j40671
    Modification : Created function

*****************************************************************************/
HI_S32 PVR_Index_SeekToStart(PVR_INDEX_HANDLE handle)
{
    HI_U32 before_seek;

    HI_ASSERT_RET(handle != NULL);

    PVR_INDEX_LOCK(&(handle->stMutex));
    handle->u32ReadFrame = handle->stCycMgr.u32StartFrame;
    before_seek = handle->u32ReadFrame;

    if ((handle->bIsRec) && (handle->stCycMgr.u32StartFrame >= handle->stCycMgr.u32EndFrame))
    {
        PVRIndexCycMoveReadFrame(handle, PVR_TPLAY_MIN_DISTANCE);
    }

    HI_WARN_PVR("seek to start, %u --> %u\n", before_seek, handle->u32ReadFrame);

    PVR_INDEX_UNLOCK(&(handle->stMutex));

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVR_Index_SeekToEnd
 Description     : move the read pointer of index to the end frame
 Input           : handle         **
                   pFrame         **
                   pDisplayTimes  **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/09/21
    Author       : j40671
    Modification : Created function

*****************************************************************************/
HI_S32 PVR_Index_SeekToEnd(PVR_INDEX_HANDLE handle)
{
    HI_ASSERT_RET(handle != NULL);

    PVR_INDEX_LOCK(&(handle->stMutex));
    HI_WARN_PVR("seek to end\n");

    handle->u32ReadFrame = handle->stCycMgr.u32EndFrame;
    PVR_INDEX_UNLOCK(&(handle->stMutex));

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVR_Index_SeekToPauseOrStart
 Description     : on starting to play, seek the read pointer of index to the marked pause frame or start frame.
                        if exist paused frame, seek it to that.
                        if rewritten the pause frame, seek it to the start frame
 Input           : handle         **
                   pFrame         **
                   pDisplayTimes  **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function

*****************************************************************************/
HI_S32 PVR_Index_SeekToPauseOrStart(PVR_INDEX_HANDLE handle)
{
    HI_S32 ret = HI_SUCCESS;
    PVR_INDEX_ENTRY_S startEntry;
    HI_U32 u32StartFrameNum;
    HI_U32 u32SeekToPos;

    HI_ASSERT_RET(handle != NULL);
	
	memset(&startEntry, 0, sizeof(PVR_INDEX_ENTRY_S));
	
    PVR_INDEX_LOCK(&(handle->stMutex));

    /* have been paused, play from pause postion, if the positiong haven't been rewritten by rewind file*/
    if (handle->u64PauseOffset != PVR_INDEX_PAUSE_INVALID_OFFSET)
    {
        HI_ASSERT(handle->u64PauseOffset <= handle->u64GlobalOffset);

        /* straight recording, the start should move direction to the backward, hold some frame(about 20 frames), which prevent  from catching up the live */
        u32StartFrameNum = PVRIndexCalcNewPos(handle, handle->stCycMgr.u32StartFrame, 20);

        ret = PVRIndexGetEntryByNum(handle, &startEntry, u32StartFrameNum);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("Can't get StartFrame:%d\n", handle->stCycMgr.u32StartFrame);
            PVR_INDEX_UNLOCK(&(handle->stMutex));
            return ret;
        }

        /* check whether pause postion is rewritten or not, if the offset of start frame more than pause frame, it implies rewrite the pause frame */
        if (startEntry.u64GlobalOffset >= handle->u64PauseOffset)
        {
            /* on rewriting, seek it to the start frame */
            u32SeekToPos = u32StartFrameNum;
            HI_INFO_PVR("Pause frame was covered, so seek to start frame:%u\n", u32SeekToPos);
        }
        else
        {
            /* case, not rewrite pause frame, seek to pause frame */
            u32SeekToPos = handle->u32PauseFrame;
            HI_INFO_PVR("Seek to pause frame:%u\n", u32SeekToPos);
        }

        handle->u32ReadFrame = u32SeekToPos;
        handle->u64PauseOffset = PVR_INDEX_PAUSE_INVALID_OFFSET;
        handle->u32PauseFrame = 0;
    }

    PVR_INDEX_UNLOCK(&(handle->stMutex));
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVR_Index_GetNextFrame
 Description     : get next frame for decode
 Input           : handle         **
                   pFrame         **
                   pDisplayTimes  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/28
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 PVR_Index_GetNextFrame(PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pFrame)
{
    HI_S32 ret;

    HI_ASSERT_RET(handle != NULL);
    HI_ASSERT_RET(pFrame != NULL);

    PVR_INDEX_LOCK(&(handle->stMutex));

    ret = PVRIndexGetNextEntry(handle, pFrame);
    if (HI_SUCCESS != ret)
    {
        HI_INFO_PVR("get next entry error, file end.\n");
        PVR_INDEX_UNLOCK(&(handle->stMutex));
        return ret;
    }

    if (1 == pFrame->u16UpFlowFlag)
    {
        ret = PVRIndexGetNextIEntry(handle, pFrame);
        if (HI_SUCCESS != ret)
        {
            HI_INFO_PVR("get next I entry error, file end.\n");
            PVR_INDEX_UNLOCK(&(handle->stMutex));
            return ret;
        }
    }

    memcpy(&(handle->stCurPlayFrame), pFrame, sizeof(PVR_INDEX_ENTRY_S));

    PVR_INDEX_UNLOCK(&(handle->stMutex));
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVR_Index_GetNextIFrame
 Description     : get next I frame for decode
 Input           : handle         **
                   pFrame         **
                   pDisplayTimes  **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function

*****************************************************************************/
HI_S32 PVR_Index_GetNextIFrame(PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pFrame)
{
    HI_S32 ret;

    HI_ASSERT_RET(handle != NULL);
    HI_ASSERT_RET(pFrame != NULL);

    PVR_INDEX_LOCK(&(handle->stMutex));

    ret = PVRIndexGetNextIEntry(handle, pFrame);
    if (HI_SUCCESS != ret)
    {
        HI_WARN_PVR("get next I entry error, file end.\n");
        PVR_INDEX_UNLOCK(&(handle->stMutex));
        return ret;
    }
    memcpy(&(handle->stCurPlayFrame), pFrame, sizeof(PVR_INDEX_ENTRY_S));

    PVR_INDEX_UNLOCK(&(handle->stMutex));
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVR_Index_GetPreIFrame
 Description     : get pre I frame for decode
 Input           : handle         **
                   pFrame         **
                   pDisplayTimes  **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function

*****************************************************************************/
HI_S32 PVR_Index_GetPreIFrame(PVR_INDEX_HANDLE handle, PVR_INDEX_ENTRY_S *pFrame)
{
    HI_S32 ret;

    HI_ASSERT_RET(handle != NULL);
    HI_ASSERT_RET(pFrame != NULL);

    PVR_INDEX_LOCK(&(handle->stMutex));

    ret = PVRIndexGetPreIEntry(handle, pFrame);
    if (HI_SUCCESS != ret)
    {
        HI_WARN_PVR("get pre I entry error, file end.\n");
        PVR_INDEX_UNLOCK(&(handle->stMutex));
        return ret;
    }
    memcpy(&(handle->stCurPlayFrame), pFrame, sizeof(PVR_INDEX_ENTRY_S));

    PVR_INDEX_UNLOCK(&(handle->stMutex));
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVR_Index_GetCurrentFrame
 Description     : get the frame pointed to the current read pointer. not move the read pointer
 Input           : handle         **
                   pFrame         **
                   pDisplayTimes  **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function
*****************************************************************************/
HI_S32 PVR_Index_GetCurrentFrame(const PVR_INDEX_HANDLE handle,  PVR_INDEX_ENTRY_S *pEntry)
{
    HI_S32 ret;
    HI_ASSERT_RET(NULL != handle);
    HI_ASSERT_RET(NULL != pEntry);

    PVR_INDEX_LOCK(&(handle->stMutex));

    ret =  PVRIndexGetCurrentEntry(handle, pEntry);

    PVR_INDEX_UNLOCK(&(handle->stMutex));
    return ret;
}


/*****************************************************************************
 Prototype       : PVR_Index_GetFrameByNum
 Description     : get the index by the num. but not move the read pointer
 Input           : handle         **
                   pFrame         **
                   num  **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function
*****************************************************************************/

HI_S32 PVR_Index_GetFrameByNum(const PVR_INDEX_HANDLE handle,  PVR_INDEX_ENTRY_S *pEntry, HI_U32 num)
{
    HI_S32 ret;
    HI_ASSERT_RET(NULL != handle);
    HI_ASSERT_RET(NULL != pEntry);

    PVR_INDEX_LOCK(&(handle->stMutex));

    ret = PVRIndexGetEntryByNum(handle,pEntry,num);

    PVR_INDEX_UNLOCK(&(handle->stMutex));
    return ret;
}


/*get the pre i farme by the num. but not move the read pointer*/
static HI_S32 PVR_Index_GetPreIFrameByNum(const PVR_INDEX_HANDLE handle,  PVR_INDEX_ENTRY_S *pEntry, HI_U32 num)
{
	HI_S32 ret;
	HI_U32 u32NewPos;
	HI_U32 u32FrameDistance = 0;
    HI_ASSERT_RET(NULL != handle);
    HI_ASSERT_RET(NULL != pEntry);
    u32NewPos = num;
	while (1)
    {
        num = PVRIndexCalcNewPos(handle, u32NewPos, -1);
        if (num == u32NewPos)
        {
            return -1;
        }
        u32NewPos = num;
        if (PVRIndexIsFrameValid(handle,u32NewPos) != HI_TRUE)
        {
            return -1;
        }
        ret = PVRIndexGetEntryByNum(handle,pEntry,u32NewPos);
        if (ret != HI_SUCCESS)
        {
            return -1;
        }

        /* I frame, and not found the frame upflow flag*/
        if (PVR_INDEX_is_Iframe(pEntry) && !(pEntry->u16UpFlowFlag))
        {
            break;
        }
        u32FrameDistance++;
        
    }
    return u32FrameDistance;
}


/*****************************************************************************
 Prototype       : PVR_Index_GetCurrentFrame
 Description     : get current read pointer,pointed to frame. but not move read pointer
 Input           : handle         **
                   pFrame         **
                   pDisplayTimes  **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function
*****************************************************************************/
HI_S32 PVR_Index_QueryFrameByPTS(const PVR_INDEX_HANDLE handle, HI_U32 u32SearchPTS, PVR_INDEX_ENTRY_S *pEntry, HI_U32 *pu32Pos, HI_U32 IsForword)
{
    HI_U32 u32PtsPos;
    HI_S32 ret;

    HI_ASSERT_RET(NULL != handle);
    HI_ASSERT_RET(NULL != pEntry);

    PVR_INDEX_LOCK(&(handle->stMutex));

    u32PtsPos = PVRIndexFindFrameByPTS(handle, u32SearchPTS, handle->u32ReadFrame, IsForword);
    *pu32Pos =  u32PtsPos;
    HI_WARN_PVR("search PTS:%u, Pos:%u\n", u32SearchPTS, u32PtsPos);

    ret = PVRIndexGetEntryByNum(handle, pEntry, u32PtsPos);
    if (ret != HI_SUCCESS)
    {
        if (HI_ERR_PVR_FILE_TILL_END == ret)
        {
            if (HI_SUCCESS != PVRIndexGetEntryByNum(handle, pEntry, --u32PtsPos))
            {
                HI_ERR_PVR("Can't get Frame:%d\n", u32PtsPos);
                PVR_INDEX_UNLOCK(&(handle->stMutex));
                return ret;
            }
        }
    }
    HI_WARN_PVR("Pos:%u, realPTS:%u, time:%u\n", u32PtsPos, pEntry->u32PtsMs, pEntry->u32DisplayTimeMs);

    PVR_INDEX_UNLOCK(&(handle->stMutex));

    return HI_SUCCESS;
}


HI_S32 PVR_Index_QueryFrameByTime(const PVR_INDEX_HANDLE handle, HI_U32 u32SearchTime, PVR_INDEX_ENTRY_S *pEntry, HI_U32 *pu32Pos)
{
    HI_U32 u32PtsPos;
    HI_S32 ret;

    HI_ASSERT_RET(NULL != handle);
    HI_ASSERT_RET(NULL != pEntry);

    PVR_INDEX_LOCK(&(handle->stMutex));

    u32PtsPos = PVRIndexFindFrameByTime(handle, u32SearchTime);
    *pu32Pos =  u32PtsPos;
    HI_WARN_PVR("search Time:%u, Pos:%u\n", u32SearchTime, u32PtsPos);

    ret = PVRIndexGetEntryByNum(handle, pEntry, u32PtsPos);
    if (ret != HI_SUCCESS)
    {
        if (HI_ERR_PVR_FILE_TILL_END == ret)
        {
            if (HI_SUCCESS != PVRIndexGetEntryByNum(handle, pEntry, --u32PtsPos))
            {
                HI_ERR_PVR("Can't get Frame:%d\n", u32PtsPos);
                PVR_INDEX_UNLOCK(&(handle->stMutex));
                return ret;
            }
        }
    }
    HI_WARN_PVR("Pos:%u, time:%u\n", u32PtsPos, pEntry->u32DisplayTimeMs);

    PVR_INDEX_UNLOCK(&(handle->stMutex));

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVR_Index_MarkPausePos
 Description     : mark a flag for timeshift, where flag current record position. if start timeshift, play it from this position
 Input           : handle         **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function
*****************************************************************************/
HI_S32 PVR_Index_MarkPausePos(PVR_INDEX_HANDLE handle)
{
    /* save the frame number of current recording frame*/
    handle->u32PauseFrame = handle->u32WriteFrame;

    /* save the absolute offset for the current frame, used for checking whether the pause position rewrote or not by rewind, on playing */
    handle->u64PauseOffset = handle->u64GlobalOffset;

    HI_WARN_PVR("<<==PVR_Index_MarkPausePos: frame=%d, global offset=%lld.\n",
                handle->u32PauseFrame, handle->u64PauseOffset);
    return HI_SUCCESS;

}

HI_VOID PVR_Index_GetIdxFileName(HI_CHAR* pIdxFileName, HI_CHAR* pSrcFileName)
{
    HI_CHAR* pSearch = NULL;
    HI_CHAR* pAppend = NULL;

    pSearch = strstr(pSrcFileName, ".idx");
    while(NULL != pSearch)
    {
        if (NULL != pSearch)
        {
            pAppend = pSearch;
            pSearch = strstr(pSearch + 1, ".idx");
        }
    }

    /* make sure it end with the .idx */
    if (NULL != pAppend && *(pAppend + 4) == 0)
    {
        strncpy(pIdxFileName, pSrcFileName,strlen(pSrcFileName)+1);
    }
    else
    {
        snprintf(pIdxFileName, PVR_MAX_FILENAME_LEN,"%s.idx", pSrcFileName);
    }
    return;
}


/*****************************************************************************
 Prototype       : PVR_Index_PlayGetFileAttrByFileName
 Description     : get the current state of the record file by file name. and can't get it without including index file.
 Input           : handle         **
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function
*****************************************************************************/
HI_S32 PVR_Index_PlayGetFileAttrByFileName(const HI_CHAR *pFileName, HI_UNF_PVR_FILE_ATTR_S *pAttr)
{
    HI_S32            fdIdx;
    HI_CHAR           szIndexName[PVR_MAX_FILENAME_LEN + 5] = {0};
//    HI_S32            i = 1;
    HI_S32            readNum;
    PVR_INDEX_ENTRY_S startEntry;
    PVR_INDEX_ENTRY_S endEntry;
    PVR_INDEX_ENTRY_S lastEntry;
//    HI_U64            u64TsDataSize;
//    HI_U32            validIdxSize;
    HI_S32            s32Offset;
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo = {0};

    if (!pFileName)
    {
        return HI_ERR_PVR_NUL_PTR;
    }
    if (!pAttr)
    {
        return HI_ERR_PVR_NUL_PTR;
    }

    PVR_Index_GetIdxFileName(szIndexName, (HI_CHAR*)pFileName);
    fdIdx = PVR_OPEN(szIndexName, PVR_FOPEN_MODE_DATA_READ);
    if (fdIdx < 0)
    {
        HI_ERR_PVR("can not open index file:%s\n", szIndexName);
        return HI_ERR_PVR_FILE_CANT_OPEN;
    }

    if (HI_SUCCESS != PVRIndexGetHeaderInfo(fdIdx, &stIdxHeaderInfo))
    {
        HI_ERR_PVR("No Header Info in index File:%s\n", szIndexName);
        PVR_CLOSE(fdIdx);
        return HI_ERR_PVR_INDEX_FORMAT_ERR;
    }

    if (((0 == stIdxHeaderInfo.stCycInfo.u32StartFrame)
            && (0 == stIdxHeaderInfo.stCycInfo.u32EndFrame))
        || (0 == stIdxHeaderInfo.stCycInfo.u32LastFrame))
    {
        HI_WARN_PVR("No frame in index File:%s\n", szIndexName);
        pAttr->u32FrameNum = 0;
        pAttr->u32StartTimeInMs = 0;
        pAttr->u32EndTimeInMs = 0;
        pAttr->u64ValidSizeInByte = 0;
        pAttr->enIdxType = HI_UNF_PVR_REC_INDEX_TYPE_NONE;

        PVR_CLOSE(fdIdx);
        return HI_SUCCESS;
    }

    /* deal it with the same mode, regardless of rewind of the index file */

    /* read the start frame info */
    s32Offset = (HI_S32)(stIdxHeaderInfo.u32HeaderLen + sizeof(PVR_INDEX_ENTRY_S) * stIdxHeaderInfo.stCycInfo.u32StartFrame);
    readNum = PVR_READ(&startEntry, sizeof(PVR_INDEX_ENTRY_S), fdIdx, s32Offset);
    if (readNum != (HI_S32)sizeof(PVR_INDEX_ENTRY_S))
    {
        HI_ERR_PVR("read start_idx failed, offset:%d.\n", s32Offset);
        HI_ERR_PVR("The index file is too small, can't play.\n");
        perror("file can't read:");
        PVR_CLOSE(fdIdx);
        return HI_ERR_PVR_FILE_CANT_READ;
    }

    /* read the end frame info */
    s32Offset = (HI_S32)(stIdxHeaderInfo.u32HeaderLen + sizeof(PVR_INDEX_ENTRY_S) *
                (stIdxHeaderInfo.stCycInfo.u32EndFrame - 1));
    readNum = PVR_READ(&endEntry, sizeof(PVR_INDEX_ENTRY_S), fdIdx, s32Offset);
    if (readNum != (HI_S32)sizeof(PVR_INDEX_ENTRY_S))
    {
        HI_ERR_PVR("read end_idx failed, endframe:%d, offset:%d.\n",stIdxHeaderInfo.stCycInfo.u32EndFrame, s32Offset);
        perror("can not read file:");
        PVR_CLOSE(fdIdx);
        return HI_ERR_PVR_FILE_CANT_READ;
    }

    /* read the last frame info */
    s32Offset = (HI_S32)(stIdxHeaderInfo.u32HeaderLen + sizeof(PVR_INDEX_ENTRY_S) *
                (stIdxHeaderInfo.stCycInfo.u32LastFrame - 1));
    readNum = PVR_READ(&lastEntry, sizeof(PVR_INDEX_ENTRY_S), fdIdx, s32Offset);
    if (readNum !=(HI_S32)sizeof(PVR_INDEX_ENTRY_S))
    {
        HI_ERR_PVR("read last_idx failed, lastFrame:%d, offset:%d.\n",stIdxHeaderInfo.stCycInfo.u32LastFrame, s32Offset);
        perror("can not read file:");
        PVR_CLOSE(fdIdx);
        return HI_ERR_PVR_FILE_CANT_READ;
    }

    if (stIdxHeaderInfo.stCycInfo.u32EndFrame > stIdxHeaderInfo.stCycInfo.u32StartFrame)
    {
        pAttr->u32FrameNum = stIdxHeaderInfo.stCycInfo.u32EndFrame
                             - stIdxHeaderInfo.stCycInfo.u32StartFrame;
    }
    else
    {
        pAttr->u32FrameNum = stIdxHeaderInfo.stCycInfo.u32LastFrame
                             - stIdxHeaderInfo.stCycInfo.u32StartFrame
                             + stIdxHeaderInfo.stCycInfo.u32EndFrame;
    }
    pAttr->u32StartTimeInMs = startEntry.u32DisplayTimeMs;
    pAttr->u32EndTimeInMs = (0 == stIdxHeaderInfo.stCycInfo.u32EndFrame) ? lastEntry.u32DisplayTimeMs : endEntry.u32DisplayTimeMs;
    pAttr->u64ValidSizeInByte = lastEntry.u64Offset + lastEntry.u32FrameSize;
    pAttr->enIdxType = (HI_UNF_PVR_REC_INDEX_TYPE_E)(startEntry.u16IndexType);

    PVR_CLOSE(fdIdx);
    return HI_SUCCESS;
}

HI_S32 PVR_Index_GetFrmNumByEntry(PVR_INDEX_HANDLE pstIndexHandle, PTR_PVR_INDEX_ENTRY pstIndexEntry, HI_S32 *ps32FrmNum)
{
    HI_S32 s32Ret = 0;
    HI_U32 u32StartFrmNum = 0;
    HI_U32 u32EndFrmNum = 0;
    HI_U32 u32LastFrmNum = 0;
    HI_U32 u32MidFrmNum = 0;

    PVR_INDEX_ENTRY_S stStartIndexEntry = {0};
    PVR_INDEX_ENTRY_S stEndIndexEntry = {0};
    PVR_INDEX_ENTRY_S stMidIndexEntry = {0};
    PVR_INDEX_ENTRY_S stZeroIndexEntry = {0};
    PVR_INDEX_ENTRY_S stLastIndexEntry = {0};

    u32StartFrmNum = pstIndexHandle->stCycMgr.u32StartFrame;
    u32EndFrmNum = pstIndexHandle->stCycMgr.u32EndFrame;
    u32LastFrmNum = pstIndexHandle->stCycMgr.u32LastFrame;

    if(HI_SUCCESS != PVR_Index_GetFrameByNum(pstIndexHandle, &stStartIndexEntry, u32StartFrmNum))
    {
        HI_ERR_PVR("get the %d entry fail.\n", u32StartFrmNum);
        return HI_FAILURE;
    }
    
    if(HI_SUCCESS != PVR_Index_GetFrameByNum(pstIndexHandle, &stZeroIndexEntry, 0))
    {
        HI_ERR_PVR("get the %d entry fail.\n", 0);
        return HI_FAILURE;
    }

    s32Ret = PVR_Index_GetFrameByNum(pstIndexHandle, &stLastIndexEntry, u32LastFrmNum);

    if(HI_SUCCESS != s32Ret)
    {
        if (HI_ERR_PVR_FILE_TILL_END == s32Ret)
        {
            s32Ret = PVR_Index_GetFrameByNum(pstIndexHandle, &stLastIndexEntry, --u32LastFrmNum);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_PVR("get the %d entry fail.\n", u32LastFrmNum);
                return HI_FAILURE;
            }
        }
        else
        {
            HI_ERR_PVR("get the %d entry fail.\n", u32LastFrmNum);
            return HI_FAILURE;
        }
    }

    s32Ret = PVR_Index_GetFrameByNum(pstIndexHandle, &stEndIndexEntry, u32EndFrmNum);

    if((HI_ERR_PVR_FILE_TILL_END == s32Ret) ||
       (stEndIndexEntry.u64GlobalOffset < stStartIndexEntry.u64GlobalOffset))
    {
        s32Ret = PVR_Index_GetFrameByNum(pstIndexHandle, &stEndIndexEntry, --u32EndFrmNum);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_PVR("get the %d entry fail.\n", u32EndFrmNum);
            return HI_FAILURE;
        }
    }
    else if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_PVR("get the %d entry fail.\n", u32LastFrmNum);
        return HI_FAILURE;
    }

    if (u32EndFrmNum <= u32StartFrmNum)
    {
        if((pstIndexEntry->u64GlobalOffset >= stStartIndexEntry.u64GlobalOffset) &&
          (pstIndexEntry->u64GlobalOffset <= stLastIndexEntry.u64GlobalOffset))
        {
            u32MidFrmNum = (u32LastFrmNum - u32StartFrmNum)/2;
            u32EndFrmNum = u32LastFrmNum;
            
            if(HI_SUCCESS != PVR_Index_GetFrameByNum(pstIndexHandle, &stEndIndexEntry, u32EndFrmNum))
            {
                HI_ERR_PVR("get the %d entry fail.\n", u32EndFrmNum);
                return HI_FAILURE;
            }
        }
        else if((pstIndexEntry->u64GlobalOffset <= stEndIndexEntry.u64GlobalOffset) &&
               (pstIndexEntry->u64GlobalOffset >= stZeroIndexEntry.u64GlobalOffset))
        {
            u32MidFrmNum = u32EndFrmNum/2;
            u32StartFrmNum = 0;
            
            if(HI_SUCCESS != PVR_Index_GetFrameByNum(pstIndexHandle, &stStartIndexEntry, u32StartFrmNum))
            {
                HI_ERR_PVR("get the %d entry fail.\n", u32StartFrmNum);
                return HI_FAILURE;
            }
        }
        else
        {
            HI_ERR_PVR("invalid entry offset=%#llx zero(0)ffset=%#llx start(%d)offset=%#llx end(%d)offset=%#llx last(%d)offset=%#llx.\n",
                pstIndexEntry->u64GlobalOffset,stZeroIndexEntry.u64GlobalOffset,
                u32StartFrmNum, stStartIndexEntry.u64GlobalOffset,
                u32EndFrmNum, stEndIndexEntry.u64GlobalOffset,
                u32LastFrmNum, stLastIndexEntry.u64GlobalOffset);
            return HI_FAILURE;
        }
    }
    else
    {
        u32MidFrmNum = u32EndFrmNum/2;
    }

    if(HI_SUCCESS != PVR_Index_GetFrameByNum(pstIndexHandle, &stMidIndexEntry, u32MidFrmNum))
    {
        HI_ERR_PVR("get the %d entry fail.\n", u32MidFrmNum);
        return HI_FAILURE;
    }
	
    while((HI_S32)u32StartFrmNum <= (HI_S32)u32EndFrmNum)
    {
        u32MidFrmNum = u32StartFrmNum + (u32EndFrmNum - u32StartFrmNum)/2;

        if(HI_SUCCESS != PVR_Index_GetFrameByNum(pstIndexHandle, &stMidIndexEntry, u32MidFrmNum))
        {
            HI_ERR_PVR("get the %d entry fail.\n", u32MidFrmNum);
            return HI_FAILURE;
        }
        
        if(stMidIndexEntry.u64GlobalOffset > pstIndexEntry->u64GlobalOffset)
		{
			u32EndFrmNum = u32MidFrmNum - 1;
		}
        else if(stMidIndexEntry.u64GlobalOffset < pstIndexEntry->u64GlobalOffset)
		{
			u32StartFrmNum = u32MidFrmNum + 1;
		}
		else
		{
            if (HI_TRUE == PVRIndexIsFrameValid(pstIndexHandle, u32MidFrmNum))
            {
                *ps32FrmNum = (HI_S32)u32MidFrmNum;
                return HI_SUCCESS;
            }
            else
            {
                HI_ERR_PVR("find invalid frame number %d(start=%d end=%d) from entry offset %#llx pts %d.\n", 
                    u32MidFrmNum, u32StartFrmNum, u32EndFrmNum, pstIndexEntry->u64GlobalOffset,pstIndexEntry->u32PtsMs);
                return HI_FAILURE;
            }
        }
    }
    HI_ERR_PVR("can not find frame number from entry offset %#llx pts %d start=%d end=%d mid=%d. \n", 
               pstIndexEntry->u64GlobalOffset,pstIndexEntry->u32PtsMs, u32StartFrmNum, u32EndFrmNum, u32MidFrmNum);
	return HI_FAILURE;
}


/*get vedio type from index header info   */
HI_S32 PVR_Index_GetVtype(PVR_INDEX_HANDLE handle)
{
    PVR_IDX_HEADER_INFO_S stIdxHeaderInfo;

    memset(&stIdxHeaderInfo, 0, sizeof(PVR_IDX_HEADER_INFO_S));

	/* means not found the header info in this index file */
    if (HI_SUCCESS != PVRIndexGetHeaderInfo(handle->s32HeaderFd, &stIdxHeaderInfo))
    {
        return HI_FAILURE;
    }
    else
        return (stIdxHeaderInfo.u32Reserved & 0xFFFF);
}


HI_S32 PVR_Index_GetFBwardAttr(PVR_PLAY_CHN_S *pChnAttr, HI_PVR_FAST_FORWARD_BACKWARD_S *FBwardAttr)
{
    HI_UNF_AVPLAY_STREAM_INFO_S stStreamInfo;
    HI_SYS_VERSION_S SysVer;
    HI_U32 u32VideoType = 0;

    memset(&SysVer, 0, sizeof(HI_SYS_VERSION_S));
    
    if (HI_SUCCESS != HI_SYS_GetVersion(&SysVer))
    {
        HI_FATAL_PVR("Cannot get system version\n");
        return HI_FAILURE;
    }

    /* get vedio type, which is recored in index headinfo */
    u32VideoType = PVR_Index_GetVtype(pChnAttr->IndexHandle);
    if (HI_FAILURE == (HI_S32)u32VideoType)
    {
        HI_FATAL_PVR("Cannot get video type\n");
        return HI_FAILURE;
    }

    if (HI_SUCCESS != HI_UNF_AVPLAY_GetStreamInfo(pChnAttr->hAvplay, &stStreamInfo))
    {
        HI_FATAL_PVR("Cannot get stream info\n");
        return HI_FAILURE;
    }

    FBwardAttr->enSpeed = pChnAttr->enSpeed;
    FBwardAttr->enVideoType = (HI_UNF_VCODEC_TYPE_E)(u32VideoType - 100);
    FBwardAttr->enChipID = SysVer.enChipTypeHardWare;
    FBwardAttr->enChipVer = SysVer.enChipVersion;
    FBwardAttr->u32Width = stStreamInfo.stVidStreamInfo.u32Width;
    FBwardAttr->u32Height = stStreamInfo.stVidStreamInfo.u32Height;

    return HI_SUCCESS;

}

/*reserved function for smooth play */
HI_S32 PVR_Index_GetMaxBitrate(PVR_INDEX_HANDLE piIndexHandle)
{
    return 0x100;
}

/*get stream bit rate  */
HI_S32 PVR_Index_GetStreamBitRate(PVR_INDEX_HANDLE piIndexHandle,
                                      HI_U32 *pBitRate,
                                      HI_U32 u32StartFrameNum, 
                                      HI_U32 u32EndFrameNum)
{
    PVR_INDEX_ENTRY_S  frame_tmp ={0}; 
    HI_U32 i = 0, u32StartTime = 0, u32EndTime = 0;
    HI_U64 u64TotalBytes = 0;

    if (HI_TRUE != PVRIndexIsFrameValid(piIndexHandle, u32StartFrameNum))
    {
        HI_ERR_PVR("input start frame number is invalid.\n");
        return HI_FAILURE;
    }

    if (HI_TRUE != PVRIndexIsFrameValid(piIndexHandle, u32EndFrameNum))
    {
        HI_ERR_PVR("input end frame number is invalid.\n");
        return HI_FAILURE;
    }

    if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, u32StartFrameNum))
    {
         HI_INFO_PVR("get the %d entry fail.\n", i);
         return HI_FAILURE;
    }
    u32StartTime = frame_tmp.u32DisplayTimeMs;

    if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, u32EndFrameNum))
    {
         HI_INFO_PVR("get the %d entry fail.\n", i);
         return HI_FAILURE;
    }
    u32EndTime = frame_tmp.u32DisplayTimeMs;

    if((u32StartTime == u32EndTime) || (u32StartTime >= u32EndTime))
    {
        HI_INFO_PVR("invalid pts, can not get bitrate.\n");
        return HI_FAILURE;
    }

    /* TODO: use global offset to calc total bytes */
    if (u32EndFrameNum < u32StartFrameNum)
    {
        for (i = u32StartFrameNum; i < piIndexHandle->stCycMgr.u32LastFrame; i++)
        {
            if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, i))
            {
                 HI_INFO_PVR("get the %d entry fail.\n", i);
                 return HI_FAILURE;
            }
            
            u64TotalBytes += frame_tmp.u32FrameSize;
        }

        for (i = 0; i < u32EndFrameNum; i++)
        {
            if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, i))
            {
                 HI_INFO_PVR("get the %d entry fail.\n", i);
                 return HI_FAILURE;
            }
            
            u64TotalBytes += frame_tmp.u32FrameSize;
        }
    }
    else
    {
        for (i = u32StartFrameNum; i < u32EndFrameNum; i++)
        {
            if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, i))
            {
                 HI_INFO_PVR("get the %d entry fail.\n", i);
                 return HI_FAILURE;
            }
            
            u64TotalBytes += frame_tmp.u32FrameSize;
        }
    }

   *pBitRate =  (u64TotalBytes*8)/((u32EndTime - u32StartTime)/1000);
    
    return HI_SUCCESS;
}

HI_S32 PVR_Index_GetFrameRate(PVR_INDEX_HANDLE piIndexHandle, HI_U32 *pFrameRate)
{
    PVR_INDEX_ENTRY_S  frame_tmp ={0}; 
    HI_S32 s32Ret = 0;
    HI_U32 u32StartTime = 0, u32EndTime = 0;
    HI_U64 u64TotalFrames = 0;
    HI_U32 u32StartFrmNum = 0;
    HI_U32 u32EndFrmNum = 0;
    HI_U32 u32LastFrmNum = 0;
    HI_U32 u32TotalTimeMs = 0;

    HI_ASSERT_RET(piIndexHandle != NULL);

    u32StartFrmNum = piIndexHandle->stCycMgr.u32StartFrame;
    u32EndFrmNum = piIndexHandle->stCycMgr.u32EndFrame;
    u32LastFrmNum = piIndexHandle->stCycMgr.u32LastFrame;

    if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, u32StartFrmNum))
    {
         HI_INFO_PVR("get the %d entry fail.\n", piIndexHandle->stCycMgr.u32StartFrame);
         return HI_FAILURE;
    }
    u32StartTime = frame_tmp.u32DisplayTimeMs;

    while(u32EndTime <= u32StartTime)
    {
        s32Ret = PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, u32EndFrmNum);
        if(HI_SUCCESS != s32Ret)
        {
             if (HI_ERR_PVR_FILE_TILL_END == s32Ret)
             {
                s32Ret = PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, --u32EndFrmNum);
                
                if (HI_SUCCESS != s32Ret)
                {
                    HI_ERR_PVR("get the %d entry fail.\n", u32EndFrmNum);
                    return HI_FAILURE;
                }
             }
             else
             {
                HI_ERR_PVR("get the %d entry fail.\n", u32EndFrmNum);
                return HI_FAILURE;
             }
        }

        u32EndTime = frame_tmp.u32DisplayTimeMs;
        
        if((piIndexHandle->stCycMgr.u32EndFrame <= piIndexHandle->stCycMgr.u32StartFrame)
            &&(u32EndTime <= u32StartTime))
        {
            u32EndFrmNum--;
            
            if (0 == u32EndFrmNum)
            {
                u32EndFrmNum = u32LastFrmNum;
            }
        }
    }
    
    if (piIndexHandle->stCycMgr.u32EndFrame <= piIndexHandle->stCycMgr.u32StartFrame)
    {
        u64TotalFrames = (u32LastFrmNum - u32StartFrmNum) + u32EndFrmNum + 1;
    }
    else
    {
        u64TotalFrames = u32LastFrmNum + 1;  
    }

    u32TotalTimeMs = ((u32EndTime - u32StartTime) < 1000) ? 1000 : (u32EndTime - u32StartTime);
   *pFrameRate =  u64TotalFrames/(u32TotalTimeMs/1000);
    
    return HI_SUCCESS;
}

/* get pre I/P/B frame number
   0 == u32Direction BACKWARD
   1 == u32Direction FORWARD*/
HI_S32 PVR_Index_GetFBwardIPBFrameNum(PVR_INDEX_HANDLE handle, HI_U32 u32Direction, HI_U32 u32FrameType, HI_U32 u32CurFrameNum, HI_U32 *pu32NextFrameNum)
{
    HI_S32 s32NextFrameNum = (HI_S32)u32CurFrameNum;
    PVR_INDEX_ENTRY_S pFrame; 
    
    HI_ASSERT_RET(handle != NULL);
    HI_ASSERT_RET(pu32NextFrameNum != NULL);

    memset(&pFrame, 0, sizeof(PVR_INDEX_ENTRY_S));
	
    if (HI_TRUE != PVRIndexIsFrameValid(handle, u32CurFrameNum))
    {
        HI_WARN_PVR("input frame number %d is invalid.\n", u32CurFrameNum);
        return HI_FAILURE;
    }

    while (1)
    {
        if (0 == u32Direction)
            s32NextFrameNum--;
        else
            s32NextFrameNum++;

        if (handle->stCycMgr.u32EndFrame <= handle->stCycMgr.u32StartFrame)
        {
            if (0 == u32Direction)
                s32NextFrameNum = (0 > s32NextFrameNum) ? (HI_S32)handle->stCycMgr.u32LastFrame : s32NextFrameNum;
            else
                s32NextFrameNum = (handle->stCycMgr.u32LastFrame < (HI_U32)s32NextFrameNum) ? 0 : s32NextFrameNum;
        }
        
        if (HI_TRUE != PVRIndexIsFrameValid(handle, s32NextFrameNum))
        {
            HI_WARN_PVR("next frame number %d is invalid.\n",s32NextFrameNum);
            return PVR_INDEX_ERR_INVALID;
        }

        if (HI_SUCCESS != PVR_Index_GetFrameByNum(handle, &pFrame, s32NextFrameNum))
        {
            return HI_FAILURE;
        }

		/* IPB frame, and not found the frame upflow flag*/
        if (u32FrameType == PVR_INDEX_FRAME_I)
        {
            if (PVR_INDEX_is_Iframe(&pFrame))
                break;
        }
        else if (u32FrameType == PVR_INDEX_FRAME_P)
        {
            if (PVR_INDEX_is_Pframe(&pFrame))
                break;
        }
        else if (u32FrameType == PVR_INDEX_FRAME_B)
        {
            if (PVR_INDEX_is_Bframe(&pFrame))
                break;
        }
        else
            return HI_FAILURE;
    }
    
    *pu32NextFrameNum = (HI_U32)s32NextFrameNum;
    return HI_SUCCESS;
}


/* get frame number, frame attribute, GOP attribute from one frame plus N forward*/
HI_S32 PVR_Index_GetForwardGOPAttr(PVR_INDEX_HANDLE piIndexHandle, 
                                HI_PVR_FETCH_RESULT_S *pPvrFetchRes, 
                                HI_U32 u32StartFrameNum, 
                                HI_U32 u32FrameNum)
{
    PVR_INDEX_ENTRY_S  frame_tmp ={0}; 
    HI_U32 i = 0, u32ReadFrameEnd = 0, u32GopTotalFrameNum = 0, u32GopFlag = 0;
    HI_S32 ret = 0;
	
	HI_ASSERT_RET(NULL != piIndexHandle);
	HI_ASSERT_RET(NULL != pPvrFetchRes);

    if (HI_TRUE != PVRIndexIsFrameValid(piIndexHandle, u32StartFrameNum))
    {
        HI_ERR_PVR("input frame number is invalid.\n");
        return HI_FAILURE;
    }
    
    memset(pPvrFetchRes, 0, sizeof(HI_PVR_FETCH_RESULT_S));
    u32ReadFrameEnd = u32StartFrameNum + u32FrameNum;

    for(i = u32StartFrameNum; i < u32ReadFrameEnd; i++)
    {        
        if(i > piIndexHandle->stCycMgr.u32LastFrame)
        {
            if (piIndexHandle->stCycMgr.u32EndFrame <= piIndexHandle->stCycMgr.u32StartFrame)
            {
                i = 0;
                u32ReadFrameEnd = u32FrameNum - (piIndexHandle->stCycMgr.u32LastFrame - u32StartFrameNum + 1) - 1;
                u32ReadFrameEnd = (u32ReadFrameEnd >= piIndexHandle->stCycMgr.u32EndFrame) ? piIndexHandle->stCycMgr.u32EndFrame : u32ReadFrameEnd;
            }
            else
                break;
        }
        
        if (HI_TRUE != PVRIndexIsFrameValid(piIndexHandle, i))
        {
            return HI_SUCCESS;
        }

        ret = PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, i);
        if(HI_SUCCESS != ret)
        {
             if(ret == HI_ERR_PVR_FILE_TILL_END)
             {
                return HI_SUCCESS;
             }
             else
             {
                HI_WARN_PVR("get the %d entry fail.\n", i);
                return HI_FAILURE;
             }
        }

        pPvrFetchRes->sFrame[pPvrFetchRes->u32TotalFrameNum].u32FrameNum = i;
        pPvrFetchRes->sFrame[pPvrFetchRes->u32TotalFrameNum].u32FrameSize = frame_tmp.u32FrameSize;
        pPvrFetchRes->sFrame[pPvrFetchRes->u32TotalFrameNum].u32FrameType = PVR_INDEX_get_frameType(&frame_tmp);
        pPvrFetchRes->sFrame[pPvrFetchRes->u32TotalFrameNum].u32PTS = frame_tmp.u32PtsMs;
        memcpy(&(pPvrFetchRes->sFrame[pPvrFetchRes->u32TotalFrameNum].stIndexEntry), &frame_tmp, sizeof(PVR_INDEX_ENTRY_S));
        pPvrFetchRes->u32TotalFrameNum++;

        if (PVR_INDEX_is_Iframe(&frame_tmp))
        {
            u32GopFlag = 1;
            pPvrFetchRes->u32IFrameNum++;
            if((0 != pPvrFetchRes->u32GopNum) && (0 != i))
                pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum - 1].u32LastFrameNum = i-1;
            pPvrFetchRes->u32GopNum++;
            pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum - 1].u32FirstFrameNum = i;
        }     
        
        if (PVR_INDEX_is_Bframe(&frame_tmp))
        {
            pPvrFetchRes->u32BFrameNum++;
            if (1 == u32GopFlag)  
                pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum - 1].u32BFrameNum++;
        }

        if (PVR_INDEX_is_Pframe(&frame_tmp))
        {
            pPvrFetchRes->u32PFrameNum++;
            if (1 == u32GopFlag)  
                pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum-1].u32PFrameNum++;
        }
        
        if (1 == u32GopFlag)  
        {
            u32GopTotalFrameNum = pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum-1].u32TotalFrameNum;
            pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum-1].sFrame[u32GopTotalFrameNum].u32FrameNum = i;
            pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum-1].sFrame[u32GopTotalFrameNum].u32FrameSize = frame_tmp.u32FrameSize;
            pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum-1].sFrame[u32GopTotalFrameNum].u32FrameType = PVR_INDEX_get_frameType(&frame_tmp);
            pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum-1].sFrame[u32GopTotalFrameNum].u32PTS = frame_tmp.u32PtsMs;
            memcpy(&(pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum-1].sFrame[u32GopTotalFrameNum].stIndexEntry), &frame_tmp, sizeof(PVR_INDEX_ENTRY_S));
            pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum-1].u32TotalFrameNum++;
        }
    }

    pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum-1].u32LastFrameNum = i - 1;

    return HI_SUCCESS;
}

/* get frame number, frame attribute, GOP attribute from one frame plus N backward*/
HI_S32 PVR_Index_GetBackwardGOPAttr(PVR_INDEX_HANDLE piIndexHandle, 
                                HI_PVR_FETCH_RESULT_S *pPvrFetchRes, 
                                HI_U32 u32StartFrameNum, 
                                HI_U32 u32FrameNum)
{
    PVR_INDEX_ENTRY_S  frame_tmp ={0}; 
    HI_PVR_FETCH_GOP_S *gop_tmp = (HI_PVR_FETCH_GOP_S *)NULL;
    HI_S32 i = 0 , s32ReadFrameEnd = 0;
    HI_U32 u32GopTotalFrameNum = 0 , u32GopFlag = 1;
	
	HI_ASSERT_RET(NULL != piIndexHandle);
	HI_ASSERT_RET(NULL != pPvrFetchRes);

    if (HI_TRUE != PVRIndexIsFrameValid(piIndexHandle, u32StartFrameNum))
    {
        HI_ERR_PVR("input frame number is invalid.\n");
        return HI_FAILURE;
    }    

    gop_tmp = (HI_PVR_FETCH_GOP_S *)HI_MALLOC(HI_ID_PVR, sizeof(HI_PVR_FETCH_GOP_S));
    
    if((HI_PVR_FETCH_GOP_S *)NULL == gop_tmp)
    {
        HI_WARN_PVR("HI_MALLOC HI_PVR_FETCH_GOP_S fail.\n");
        return HI_FAILURE;
    }
    
    memset(gop_tmp, 0, sizeof(HI_PVR_FETCH_GOP_S));
    memset(pPvrFetchRes, 0, sizeof(HI_PVR_FETCH_RESULT_S));
    
    s32ReadFrameEnd = (HI_S32)u32StartFrameNum - (HI_S32)u32FrameNum;
    for(i = u32StartFrameNum; i > s32ReadFrameEnd; i--)
    {        
        if(i < 0)
        {
            if (piIndexHandle->stCycMgr.u32EndFrame <= piIndexHandle->stCycMgr.u32StartFrame)
            {
                i = piIndexHandle->stCycMgr.u32LastFrame;
                s32ReadFrameEnd = (HI_S32)(piIndexHandle->stCycMgr.u32LastFrame) - ((HI_S32)u32FrameNum - (HI_S32)(u32StartFrameNum+1)) + 1;
                s32ReadFrameEnd = (s32ReadFrameEnd <= (HI_S32)(piIndexHandle->stCycMgr.u32StartFrame)) ? (HI_S32)(piIndexHandle->stCycMgr.u32StartFrame) : s32ReadFrameEnd;
            }
            else
                break;
        }
        if (HI_TRUE != PVRIndexIsFrameValid(piIndexHandle, i))
        {
            HI_FREE(HI_ID_PVR, gop_tmp);
            gop_tmp = (HI_PVR_FETCH_GOP_S *)NULL;
            return HI_SUCCESS;
        }
        
        if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, i))
        {
             HI_WARN_PVR("get the %d entry fail.\n", i);
             HI_FREE(HI_ID_PVR, gop_tmp);
             gop_tmp = (HI_PVR_FETCH_GOP_S *)NULL;
             return HI_FAILURE;
        }

        if (1 == u32GopFlag)
        {
            gop_tmp->u32LastFrameNum = i;
            u32GopFlag = 0;
        }

        u32GopTotalFrameNum = gop_tmp->u32TotalFrameNum;
        gop_tmp->sFrame[u32GopTotalFrameNum].u32FrameNum = i;
        gop_tmp->sFrame[u32GopTotalFrameNum].u32FrameSize = frame_tmp.u32FrameSize;
        gop_tmp->sFrame[u32GopTotalFrameNum].u32FrameType = PVR_INDEX_get_frameType(&frame_tmp);
        gop_tmp->sFrame[u32GopTotalFrameNum].u32PTS = frame_tmp.u32PtsMs;
        memcpy(&(gop_tmp->sFrame[u32GopTotalFrameNum].stIndexEntry), &frame_tmp, sizeof(PVR_INDEX_ENTRY_S));
        gop_tmp->u32TotalFrameNum++;
        
        pPvrFetchRes->sFrame[pPvrFetchRes->u32TotalFrameNum].u32FrameNum = i;
        pPvrFetchRes->sFrame[pPvrFetchRes->u32TotalFrameNum].u32FrameSize = frame_tmp.u32FrameSize;
        pPvrFetchRes->sFrame[pPvrFetchRes->u32TotalFrameNum].u32FrameType = PVR_INDEX_get_frameType(&frame_tmp);
        pPvrFetchRes->sFrame[pPvrFetchRes->u32TotalFrameNum].u32PTS = frame_tmp.u32PtsMs;
        memcpy(&(pPvrFetchRes->sFrame[pPvrFetchRes->u32TotalFrameNum].stIndexEntry), &frame_tmp, sizeof(PVR_INDEX_ENTRY_S));
        pPvrFetchRes->u32TotalFrameNum++;

        if (PVR_INDEX_is_Iframe(&frame_tmp))
        {
            u32GopFlag = 1;
            pPvrFetchRes->u32IFrameNum++;
            gop_tmp->u32FirstFrameNum = i;
        }     
        
        if (PVR_INDEX_is_Bframe(&frame_tmp))
        {
            pPvrFetchRes->u32BFrameNum++;
            gop_tmp->u32BFrameNum++;
        }

        if (PVR_INDEX_is_Pframe(&frame_tmp))
        {
            pPvrFetchRes->u32PFrameNum++;
            gop_tmp->u32PFrameNum++;
        }
        
        if (1 == u32GopFlag)  
        {
            HI_S32 j = 0, k = 0;
            memcpy((void *)&(pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum]), (void *)gop_tmp, sizeof(HI_PVR_FETCH_GOP_S));
            for(j = gop_tmp->u32TotalFrameNum - 1; j >= 0; j--)
            {
                memcpy((void *)&(pPvrFetchRes->sGop[pPvrFetchRes->u32GopNum].sFrame[k]),
                       (void *)&(gop_tmp->sFrame[j]),
                       sizeof(HI_PVR_FETCH_FRAME_S));
                k++;
            }
            memset(gop_tmp, 0, sizeof(HI_PVR_FETCH_GOP_S));
            pPvrFetchRes->u32GopNum++;
        }
    }

    HI_FREE(HI_ID_PVR, gop_tmp);
    gop_tmp = (HI_PVR_FETCH_GOP_S *)NULL;
    return HI_SUCCESS;
}


/* get current GOP's attribute, include total frame number, numbers of B/P frame, from one I frame */
HI_S32 PVR_Index_GetCurGOPAttr(PVR_INDEX_HANDLE piIndexHandle, 
                                    HI_PVR_FETCH_GOP_S *pPvrGopAttr, 
                                    HI_U32 u32StartIFrameNum)
{
    PVR_INDEX_ENTRY_S  frame_tmp ={0}; 
    HI_U32 u32FrameNumTmp = u32StartIFrameNum, u32GopFlag = 0;
    HI_S32 u32Ret = 0;
	
	HI_ASSERT_RET(NULL != piIndexHandle);
	HI_ASSERT_RET(NULL != pPvrGopAttr);

    if (HI_TRUE != PVRIndexIsFrameValid(piIndexHandle, u32StartIFrameNum))
    {
        HI_ERR_PVR("input frame number is invalid.\n");
        return HI_FAILURE;
    }

    if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, u32StartIFrameNum))
    {
         HI_WARN_PVR("get the %d entry fail.\n", u32StartIFrameNum);
         return HI_FAILURE;
    }

    if (!PVR_INDEX_is_Iframe(&frame_tmp))
    {
        HI_WARN_PVR("start frame is not a I frame.\n");
        return HI_FAILURE;
    }

    memset(pPvrGopAttr, 0, sizeof(HI_PVR_FETCH_GOP_S));

    while(1)
    {        
        if (piIndexHandle->stCycMgr.u32EndFrame <= piIndexHandle->stCycMgr.u32StartFrame)
        {
            if (u32FrameNumTmp > piIndexHandle->stCycMgr.u32LastFrame)
                u32FrameNumTmp = 0;
            if ((1 == u32GopFlag) &&
                (u32FrameNumTmp > piIndexHandle->stCycMgr.u32EndFrame) && 
                (u32FrameNumTmp < piIndexHandle->stCycMgr.u32StartFrame))
            {
                HI_WARN_PVR("Can not find next I frame.\n");
                return HI_FAILURE;
            }
        }
        else
        {
             if ((1 == u32GopFlag) && (u32FrameNumTmp > piIndexHandle->stCycMgr.u32LastFrame))
            {
                HI_WARN_PVR("Can not find next I frame.\n");
                return HI_FAILURE;
            }
        }

        u32Ret = PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, u32FrameNumTmp);
        if(HI_SUCCESS != u32Ret)
        {   
             if (HI_ERR_PVR_FILE_TILL_END == u32Ret)
             {
                HI_WARN_PVR("Reach the end of index, return success.\n");
                return HI_SUCCESS;
             }
             else
             {
                HI_WARN_PVR("get the %d entry fail.\n", u32FrameNumTmp);
                return HI_FAILURE;
             }
        }
        
        if (PVR_INDEX_is_Iframe(&frame_tmp))
        {
            u32GopFlag++;
            if (1 == u32GopFlag)
                pPvrGopAttr->u32FirstFrameNum = u32FrameNumTmp;
        }
        
        if (1 < u32GopFlag)
        {
            pPvrGopAttr->u32LastFrameNum = u32FrameNumTmp - 1;
            break;
        }
        
        if (piIndexHandle->stCycMgr.u32EndFrame == u32FrameNumTmp)
        {
            pPvrGopAttr->u32LastFrameNum = u32FrameNumTmp;
            break;
        }
        
        if (1 == u32GopFlag)
        {
            if (PVR_INDEX_is_Pframe(&frame_tmp))
                pPvrGopAttr->u32PFrameNum++;
            
            if (PVR_INDEX_is_Bframe(&frame_tmp))
                pPvrGopAttr->u32BFrameNum++;

            pPvrGopAttr->sFrame[pPvrGopAttr->u32TotalFrameNum].u32FrameNum = u32FrameNumTmp;
            pPvrGopAttr->sFrame[pPvrGopAttr->u32TotalFrameNum].u32FrameSize = frame_tmp.u32FrameSize;
            pPvrGopAttr->sFrame[pPvrGopAttr->u32TotalFrameNum].u32FrameType = PVR_INDEX_get_frameType(&frame_tmp);
            pPvrGopAttr->sFrame[pPvrGopAttr->u32TotalFrameNum].u32PTS = frame_tmp.u32PtsMs;
            memcpy(&(pPvrGopAttr->sFrame[pPvrGopAttr->u32TotalFrameNum].stIndexEntry), &frame_tmp, sizeof(PVR_INDEX_ENTRY_S));
                
            pPvrGopAttr->u32TotalFrameNum++;
        }

        u32FrameNumTmp++;
    }

    return HI_SUCCESS;
}


/* get the next GOP's attribute, include total frame number, numbers of B/P frame, from one I frame */
HI_S32 PVR_Index_GetNextGOPAttr(PVR_INDEX_HANDLE piIndexHandle, 
                                    HI_PVR_FETCH_GOP_S *pPvrGopAttr, 
                                    HI_U32 u32StartIFrameNum)
{
    PVR_INDEX_ENTRY_S  frame_tmp ={0}; 
    HI_U32 u32FrameNumTmp = u32StartIFrameNum, u32GopFlag = 0;
	
	HI_ASSERT_RET(NULL != piIndexHandle);
	HI_ASSERT_RET(NULL != pPvrGopAttr);

    if (HI_TRUE != PVRIndexIsFrameValid(piIndexHandle, u32StartIFrameNum))
    {
        HI_ERR_PVR("input frame number is invalid.\n");
        return HI_FAILURE;
    }

    if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, u32StartIFrameNum))
    {
         HI_WARN_PVR("get the %d entry fail.\n", u32StartIFrameNum);
         return HI_FAILURE;
    }

    if (!PVR_INDEX_is_Iframe(&frame_tmp))
    {
        HI_WARN_PVR("start frame is not a I frame.\n");
        return HI_FAILURE;
    }

    memset(pPvrGopAttr, 0, sizeof(HI_PVR_FETCH_GOP_S));

    while(1)
    {
        u32FrameNumTmp++;
        
        if (piIndexHandle->stCycMgr.u32EndFrame <= piIndexHandle->stCycMgr.u32StartFrame)
        {
            if (u32FrameNumTmp > piIndexHandle->stCycMgr.u32LastFrame)
                u32FrameNumTmp = 0;
            if ((0 == u32GopFlag) &&
                (u32FrameNumTmp > piIndexHandle->stCycMgr.u32EndFrame) && 
                (u32FrameNumTmp < piIndexHandle->stCycMgr.u32StartFrame))
            {
                HI_WARN_PVR("Can not find next I frame.\n");
                return HI_FAILURE;
            }
        }
        else
        {
             if ((0 == u32GopFlag) && (u32FrameNumTmp > piIndexHandle->stCycMgr.u32LastFrame))
            {
                HI_WARN_PVR("Can not find next I frame.\n");
                return HI_FAILURE;
            }
        }
                    
        if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, u32FrameNumTmp))
        {
             HI_WARN_PVR("get the %d entry fail.\n", u32FrameNumTmp);
             return HI_FAILURE;
        }
        
        if (PVR_INDEX_is_Iframe(&frame_tmp))
        {
            u32GopFlag++;
            if (1 == u32GopFlag)
                pPvrGopAttr->u32FirstFrameNum = u32FrameNumTmp;
        }
        
        if (1 < u32GopFlag)
        {
            pPvrGopAttr->u32LastFrameNum = u32FrameNumTmp - 1;
            break;
        }
        
        if (1 == u32GopFlag)
        {
            if (u32FrameNumTmp > piIndexHandle->stCycMgr.u32EndFrame)
            {
                pPvrGopAttr->u32LastFrameNum = u32FrameNumTmp - 1;
                break;
            }
            
            if (PVR_INDEX_is_Pframe(&frame_tmp))
                pPvrGopAttr->u32PFrameNum++;
            
            if (PVR_INDEX_is_Bframe(&frame_tmp))
                pPvrGopAttr->u32BFrameNum++;

            pPvrGopAttr->sFrame[pPvrGopAttr->u32TotalFrameNum].u32FrameNum = u32FrameNumTmp;
            pPvrGopAttr->sFrame[pPvrGopAttr->u32TotalFrameNum].u32FrameSize = frame_tmp.u32FrameSize;
            pPvrGopAttr->sFrame[pPvrGopAttr->u32TotalFrameNum].u32FrameType = PVR_INDEX_get_frameType(&frame_tmp);
            pPvrGopAttr->sFrame[pPvrGopAttr->u32TotalFrameNum].u32PTS = frame_tmp.u32PtsMs;
            memcpy(&(pPvrGopAttr->sFrame[pPvrGopAttr->u32TotalFrameNum].stIndexEntry), &frame_tmp, sizeof(PVR_INDEX_ENTRY_S));
                
            pPvrGopAttr->u32TotalFrameNum++;
        }
    }

    return HI_SUCCESS;
}

/* get the pre GOP's attribute, include total frame number, numbers of B/P frame, from one I frame */
HI_S32 PVR_Index_GetPreGOPAttr(PVR_INDEX_HANDLE piIndexHandle, 
                               HI_PVR_FETCH_GOP_S *pPvrGopAttr, 
                               HI_U32 u32StartIFrameNum)
{
    PVR_INDEX_ENTRY_S  frame_tmp ={0}; 
    HI_PVR_FETCH_GOP_S *gop_tmp = (HI_PVR_FETCH_GOP_S *)NULL;
    HI_S32 s32FrameNumTmp = (HI_S32)u32StartIFrameNum;
    HI_U32 u32GopFlag = 1;
    HI_S32 j = 0, k = 0;
	
	HI_ASSERT_RET(NULL != piIndexHandle);
	HI_ASSERT_RET(NULL != pPvrGopAttr);

    if (HI_TRUE != PVRIndexIsFrameValid(piIndexHandle, u32StartIFrameNum))
    {
        HI_ERR_PVR("input frame number is invalid.\n");
        return HI_FAILURE;
    }

    if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, u32StartIFrameNum))
    {
         HI_WARN_PVR("get the %d entry fail.\n", u32StartIFrameNum);
         return HI_FAILURE;
    }

    if (!PVR_INDEX_is_Iframe(&frame_tmp))
    {
        HI_WARN_PVR("start frame is not a I frame.\n");
        return HI_FAILURE;
    }

    gop_tmp = (HI_PVR_FETCH_GOP_S *)HI_MALLOC(HI_ID_PVR, sizeof(HI_PVR_FETCH_GOP_S));
    
    if((HI_PVR_FETCH_GOP_S *)NULL == gop_tmp)
    {
        HI_WARN_PVR("HI_MALLOC HI_PVR_FETCH_GOP_S fail.\n");
        return HI_FAILURE;
    }

    memset(pPvrGopAttr, 0, sizeof(HI_PVR_FETCH_GOP_S));
    memset(gop_tmp, 0, sizeof(HI_PVR_FETCH_GOP_S));

    while(1)
    {
        s32FrameNumTmp--;
        
        if (piIndexHandle->stCycMgr.u32EndFrame <= piIndexHandle->stCycMgr.u32StartFrame)
        {
            if (s32FrameNumTmp < 0)
                s32FrameNumTmp = (HI_S32)(piIndexHandle->stCycMgr.u32LastFrame);

            if ((s32FrameNumTmp < (HI_S32)(piIndexHandle->stCycMgr.u32StartFrame)) &&
                (s32FrameNumTmp > (HI_S32)(piIndexHandle->stCycMgr.u32EndFrame)))
            {
                HI_WARN_PVR("Can not find pre I frame.\n");
                HI_FREE(HI_ID_PVR, gop_tmp);
                gop_tmp = (HI_PVR_FETCH_GOP_S *)NULL;
                return HI_FAILURE;
            }
        }
        else
        {
            if (s32FrameNumTmp < (HI_S32)(piIndexHandle->stCycMgr.u32StartFrame))
            {
                HI_WARN_PVR("Can not find pre I frame.\n");
                HI_FREE(HI_ID_PVR, gop_tmp);
                gop_tmp = (HI_PVR_FETCH_GOP_S *)NULL;
                return HI_FAILURE;
            }
        }
        
        if(HI_SUCCESS != PVR_Index_GetFrameByNum(piIndexHandle, &frame_tmp, s32FrameNumTmp))
        {
             HI_WARN_PVR("get the %d entry fail.\n", s32FrameNumTmp);
             HI_FREE(HI_ID_PVR, gop_tmp);
             gop_tmp = (HI_PVR_FETCH_GOP_S *)NULL;
             return HI_FAILURE;
        }

        if (1 == u32GopFlag)
        {
            gop_tmp->u32LastFrameNum = s32FrameNumTmp;
            u32GopFlag = 0;
        }

        if (PVR_INDEX_is_Pframe(&frame_tmp))
            gop_tmp->u32PFrameNum++;
        
        if (PVR_INDEX_is_Bframe(&frame_tmp))
            gop_tmp->u32BFrameNum++;

        gop_tmp->sFrame[gop_tmp->u32TotalFrameNum].u32FrameNum = s32FrameNumTmp;
        gop_tmp->sFrame[gop_tmp->u32TotalFrameNum].u32FrameSize = frame_tmp.u32FrameSize;
        gop_tmp->sFrame[gop_tmp->u32TotalFrameNum].u32FrameType = PVR_INDEX_get_frameType(&frame_tmp);
        gop_tmp->sFrame[gop_tmp->u32TotalFrameNum].u32PTS = frame_tmp.u32PtsMs;
        memcpy(&(gop_tmp->sFrame[gop_tmp->u32TotalFrameNum].stIndexEntry), &frame_tmp, sizeof(PVR_INDEX_ENTRY_S));
        gop_tmp->u32TotalFrameNum++;

        if (PVR_INDEX_is_Iframe(&frame_tmp))
        {
            gop_tmp->u32FirstFrameNum = s32FrameNumTmp;
            break;
        }
    }
    
    memcpy((void *)pPvrGopAttr, (void *)gop_tmp, sizeof(HI_PVR_FETCH_GOP_S));
    for(j = gop_tmp->u32TotalFrameNum - 1; j >= 0; j--)
    {
        memcpy((void *)&(pPvrGopAttr->sFrame[k]),
               (void *)&(gop_tmp->sFrame[j]),
               sizeof(HI_PVR_FETCH_FRAME_S));
        k++;
    }

    HI_FREE(HI_ID_PVR, gop_tmp);
    gop_tmp = (HI_PVR_FETCH_GOP_S *)NULL;
    return HI_SUCCESS;
}



#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

