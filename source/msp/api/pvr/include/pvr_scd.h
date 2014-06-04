/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_pvr_index.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2008/04/24
  Description   :
  History       :
  1.Date        : 2010/06/17
    Author      : j40671
    Modification: Created file

******************************************************************************/

#ifndef __PVR_SCD_H__
#define __PVR_SCD_H__

#include "hi_pvr_priv.h"
#include "hi_pvr_fifo.h"

#include "pvr_index.h"
#include "hi_unf_demux.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

HI_S32 PVR_SCD_Scd2Idx(PVR_INDEX_HANDLE handle, const DMX_IDX_DATA_S *pDmxIndexData, FINDEX_SCD_S *pstFidx);
HI_S32 PVR_SCD_Scd2AudioFrm(PVR_INDEX_HANDLE handle, const DMX_IDX_DATA_S *pDmxIndexData, FRAME_POS_S *pstFrmInfo);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif

