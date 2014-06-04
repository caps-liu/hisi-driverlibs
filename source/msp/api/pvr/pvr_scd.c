/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : pvr_scd.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2008/04/16
  Description   : process of scd read from DEMUX module
  History       :
  1.Date        : 2010/06/17
    Author      : j40671
    Modification: Created file

******************************************************************************/
#include <errno.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/time.h>
#include <sys/times.h>

#include "pvr_debug.h"
#include "hi_pvr_index.h"
#include "hi_pvr_rec_ctrl.h"
#include "hi_pvr_play_ctrl.h"
#include "hi_pvr_fifo.h"
#include "pvr_scd.h"


#ifdef __cplusplus
 #if __cplusplus
extern "C"
{
#endif
#endif /* End of #ifdef __cplusplus */

/* pvr index's SCD descriptor                                               */
/* format between firmware index and demux scd */
typedef struct hiPVR_INDEX_SCD_S
{
    HI_U8  u8IndexType;                           /* type of index(pts,sc,pause,ts) */
    HI_U8  u8StartCode;                           /* type of start code */
    HI_U16 u16OffsetInTs;                         /* start code offset in a TS package */

    HI_U32 u32OffsetInDavBuf;                     /* start code offset in DAV buffer */

    HI_U8  au8ByteAfterSC[8];                      /* 8Byte next to SC */


    HI_U64 u64TSCnt;                              /* count of TS package */

    HI_U32 u32PtsMs;
    HI_U16 u16OverFlow;
    HI_U16 u16Reserv;
}PVR_INDEX_SCD_S;



static HI_VOID PVR_SCDDmxIdxToPvrIdx(const DMX_IDX_DATA_S *pDmxIndexData,
                PVR_INDEX_SCD_S *pPvrIndexData)
{
    PVR_INDEX_SCD_S indexData;

    if(!pDmxIndexData || !pPvrIndexData)
    {
        HI_ERR_PVR("null pointer!\n");
        return;
    }

    indexData.u16OverFlow = !((pDmxIndexData->u32Chn_Ovflag_IdxType_Flags >> 28) & 0x1);
    if (indexData.u16OverFlow)
    {
        HI_INFO_PVR("indexData.u16OverFlow == 1\n");
    }

    indexData.au8ByteAfterSC[0]
        = (pDmxIndexData->u32ScType_Byte12AfterSc_OffsetInTs >> 16) & 0xffU;
    indexData.au8ByteAfterSC[1]
        = (pDmxIndexData->u32ScType_Byte12AfterSc_OffsetInTs >> 8) & 0xffU;
    indexData.au8ByteAfterSC[2]
        = (pDmxIndexData->u32TsCntHi8_Byte345AfterSc >> 16) & 0xffU;
    indexData.au8ByteAfterSC[3]
        = (pDmxIndexData->u32TsCntHi8_Byte345AfterSc >> 8) & 0xffU;
    indexData.au8ByteAfterSC[4]
        = (pDmxIndexData->u32TsCntHi8_Byte345AfterSc) & 0xffU;
    indexData.au8ByteAfterSC[5]
        = (pDmxIndexData->u32ScCode_Byte678AfterSc >> 16) & 0xffU;
    indexData.au8ByteAfterSC[6]
        = (pDmxIndexData->u32ScCode_Byte678AfterSc >> 8) & 0xffU;
    indexData.au8ByteAfterSC[7]
        = (pDmxIndexData->u32ScCode_Byte678AfterSc) & 0xffU;

    indexData.u16OffsetInTs = pDmxIndexData->u32ScType_Byte12AfterSc_OffsetInTs & 0x00ff;
    indexData.u64TSCnt = pDmxIndexData->u32TsCntHi8_Byte345AfterSc & 0xff000000;
    indexData.u64TSCnt = indexData.u64TSCnt << 8;
    indexData.u64TSCnt |= pDmxIndexData->u32TsCntLo32;
    indexData.u32OffsetInDavBuf = pDmxIndexData->u32BackPacetNum & 0x0001fffff;

    indexData.u8IndexType = (pDmxIndexData->u32Chn_Ovflag_IdxType_Flags >> 24) & 0xf;
    indexData.u8StartCode = (pDmxIndexData->u32ScType_Byte12AfterSc_OffsetInTs >> 24) & 0xff;
    //indexData.u32OffsetInDavBuf += indexData.u16OffsetInTs;
    indexData.u32PtsMs = PVR_INDEX_INVALID_PTSMS;
    indexData.u16Reserv = 0;

    if (PVR_INDEX_SC_TYPE_PTS == indexData.u8IndexType)
    {
        if (0 == (pDmxIndexData->u32TsCntHi8_Byte345AfterSc & 0x2))
        {
            indexData.u32PtsMs = PVR_INDEX_INVALID_PTSMS;
        }
        else
        {
            indexData.u32PtsMs = pDmxIndexData->u32ScCode_Byte678AfterSc/90;

            if (0 != (pDmxIndexData->u32TsCntHi8_Byte345AfterSc & 0x1))
            {
                indexData.u32PtsMs += 47721858;
            }
        }

        //indexData.u8IndexType = PVR_INDEX_SC_TYPE_PIC;
        //indexData.u8StartCode = PVR_INDEX_SC_PIC;

        //indexData.au8ByteAfterSC[1] = s_refCounter++;
        //indexData.au8ByteAfterSC[1] = indexData.au8ByteAfterSC[1] << 6;
    }

    memcpy(pPvrIndexData, &indexData, sizeof(PVR_INDEX_SCD_S));
    return;
}


STATIC INLINE HI_VOID PVR_SCDIndexCalcGlobalOffset(PVR_INDEX_HANDLE handle,
                                            const PVR_INDEX_SCD_S *pScData)
{
    HI_U64 offset; /* frame header offset (tota value) */

    if(!handle || !pScData)
    {
        HI_ERR_PVR("null pointer!\n");
        return;
    }

    offset = ((pScData->u64TSCnt - pScData->u32OffsetInDavBuf - 1) * PVR_TS_LEN);
    offset = offset + pScData->u16OffsetInTs;

    /*
    usleep(1);
    HI_INFO_PVR("SC0x%02x, %u -> %u = %u, off=0x%llx.\n", pScData->u8StartCode,
        handle->u32LastDavBufOffset,
        pScData->u32OffsetInDavBuf, size, offset);
    usleep(1);
    */

    handle->u64GlobalOffset = offset;
    handle->u32LastDavBufOffset = pScData->u32OffsetInDavBuf;
}


/*****************************************************************************
 Prototype       : PVR_SCD_Scd2Idx
 Description     : transform SCD data to INDEX structure
 Input           : handle   **
                   pScData  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2010/06/17
    Author       : j40671
    Modification : Created function

*****************************************************************************/
HI_S32 PVR_SCD_Scd2Idx(PVR_INDEX_HANDLE handle, const DMX_IDX_DATA_S *pDmxIndexData, FINDEX_SCD_S *pstFidx)
{
    PVR_INDEX_SCD_S stPvrIndexData;

    HI_ASSERT_RET(handle != NULL);
    HI_ASSERT_RET(pDmxIndexData != NULL);
    HI_ASSERT_RET(pstFidx != NULL);

    memset(&stPvrIndexData, 0, sizeof(PVR_INDEX_SCD_S));
    PVR_SCDDmxIdxToPvrIdx(pDmxIndexData, &stPvrIndexData);

/*
    HI_INFO_PVR("PVR index: type=%d, start code=%#x, offset=%#x, PTS=%u  \n",
        stPvrIndexData.u8IndexType,
        stPvrIndexData.u8StartCode,
        stPvrIndexData.u16OffsetInTs,
        stPvrIndexData.u32PtsMs);
*/
    if (stPvrIndexData.u16OverFlow & 0x1)
    {
        handle->u16RecUpFlowFlag = 1;
    }

    /* just only deal with SC of frame and pts */
    if (!((PVR_INDEX_SC_TYPE_PIC == stPvrIndexData.u8IndexType)
         || (PVR_INDEX_SC_TYPE_PIC_SHORT == stPvrIndexData.u8IndexType)
         || (PVR_INDEX_SC_TYPE_PTS == stPvrIndexData.u8IndexType)))
    {
        HI_ERR_PVR("Invalid SC type:%#x.\n", stPvrIndexData.u8IndexType);
        return HI_FAILURE;
    }

    /* need to calculate global offset, that is, the size from start record to current, included rewind */
    if (PVR_INDEX_SC_TYPE_PTS != stPvrIndexData.u8IndexType)
    {
        PVR_SCDIndexCalcGlobalOffset(handle, &stPvrIndexData);
    }
    else
    {
        if (PVR_INDEX_INVALID_PTSMS == stPvrIndexData.u32PtsMs)
        {
            return  HI_FAILURE;
        }
    }

    pstFidx->s64GlobalOffset = (HI_S64)handle->u64GlobalOffset;
    pstFidx->u32PtsMs = stPvrIndexData.u32PtsMs;
    pstFidx->u8IndexType = stPvrIndexData.u8IndexType;
    pstFidx->u8StartCode = stPvrIndexData.u8StartCode;
    memcpy(pstFidx->au8DataAfterSC, stPvrIndexData.au8ByteAfterSC, 8);

/*
    HI_INFO_PVR("FIDX index: type=%d, start code=%#x, offset=0x%llx, PTS=%u  \n",
        pstFidx->u8IndexType,
        pstFidx->u8StartCode,
        pstFidx->s64GlobalOffset,
        pstFidx->u32PtsMs);
*/
    return HI_SUCCESS;
}


/*****************************************************************************
 Prototype       : PVR_SCD_Scd2Entry
 Description     : transform SCD data to INDEX structure
 Input           : handle   **
                   pScData  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2010/06/17
    Author       : j40671
    Modification : Created function

*****************************************************************************/
HI_S32 PVR_SCD_Scd2AudioFrm(PVR_INDEX_HANDLE handle, const DMX_IDX_DATA_S *pDmxIndexData, FRAME_POS_S *pstFrmInfo)
{
    PVR_INDEX_SCD_S stPvrIndexData;
    HI_U64          u64LastOffset;

    HI_ASSERT_RET(handle != NULL);
    HI_ASSERT_RET(pDmxIndexData != NULL);
    HI_ASSERT_RET(pstFrmInfo != NULL);

    memset(&stPvrIndexData, 0, sizeof(PVR_INDEX_SCD_S));
	
    HI_INFO_PVR("DEMUX scd:%#x, %#x, %#x, %#x, %#x  \n",
        pDmxIndexData->u32Chn_Ovflag_IdxType_Flags,
        pDmxIndexData->u32ScType_Byte12AfterSc_OffsetInTs,
        pDmxIndexData->u32TsCntHi8_Byte345AfterSc,
        pDmxIndexData->u32ScCode_Byte678AfterSc,
        pDmxIndexData->u32BackPacetNum);

    u64LastOffset = handle->u64GlobalOffset;
    PVR_SCDDmxIdxToPvrIdx(pDmxIndexData, &stPvrIndexData);

    HI_INFO_PVR("PVR index: type=%d, start code=%#x, offset=%#x, PTS=%u  \n",
        stPvrIndexData.u8IndexType,
        stPvrIndexData.u8StartCode,
        stPvrIndexData.u16OffsetInTs,
        stPvrIndexData.u32PtsMs);

    if (stPvrIndexData.u16OverFlow & 0x1)
    {
        handle->u16RecUpFlowFlag = 1;
    }

    /* just only deal with SC of pts */
    if (PVR_INDEX_SC_TYPE_PTS != stPvrIndexData.u8IndexType)
    {
        HI_INFO_PVR("Invalid SC type:%#x.\n", stPvrIndexData.u8IndexType);
        return HI_FAILURE;
    }

    /* need to calculate global offset, that is, the size from start record to current, included rewind */
    if (PVR_INDEX_INVALID_PTSMS != stPvrIndexData.u32PtsMs)
    {
        PVR_SCDIndexCalcGlobalOffset(handle, &stPvrIndexData);
    }
    else
    {
        return  HI_FAILURE;
    }

    pstFrmInfo->eFrameType = FIDX_FRAME_TYPE_I;
    pstFrmInfo->s32FrameSize = (HI_S32)(handle->u64GlobalOffset - u64LastOffset);
    pstFrmInfo->u32PTS = stPvrIndexData.u32PtsMs;
    pstFrmInfo->s64GlobalOffset = (HI_S64)handle->u64GlobalOffset;
    pstFrmInfo->s32OffsetInPacket = 0;
    pstFrmInfo->s32PacketCount = 0;

    HI_INFO_PVR("Audio index: type=%d, offset=0x%llx, size=%d, PTS=%u  \n",
        pstFrmInfo->eFrameType,
        pstFrmInfo->s64GlobalOffset, pstFrmInfo->s32FrameSize,
        pstFrmInfo->u32PTS);

    return HI_SUCCESS;
}


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

