/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name             :   hi_mpi_ade.h
  Version               :   Initial Draft
  Author                :   Hisilicon multimedia software group
  Created               :   2012/12/20
  Last Modified         :
  Description           :
  Function List         :
  History               :
  1.Date                :   2013/01/30
    Author              :   zgjie
Modification            :   Created file
******************************************************************************/

#ifndef  __MPI_ADE_H__
#define  __MPI_ADE_H__

#include "hi_drv_ade.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

/******************************* MPI for ADE *****************************/
HI_S32   HI_MPI_ADE_Init(HI_VOID);
HI_S32   HI_MPI_ADE_DeInit(HI_VOID);
HI_S32   HI_MPI_ADE_CreateDecoder(HI_HANDLE *phAde, ADE_OPEN_DECODER_S *pstParams);
HI_S32   HI_MPI_ADE_DestroyDecoder(HI_HANDLE hAde);
HI_S32   HI_MPI_ADE_StartDecoder(HI_HANDLE hAde);
HI_S32   HI_MPI_ADE_StopDecoder(HI_HANDLE hAde);
HI_S32   HI_MPI_ADE_InbufSyncWpos(HI_HANDLE hAde, ADE_INBUF_SYNC_WPOS_S *pstSyncInbuf);
HI_S32   HI_MPI_ADE_InbufSyncRpos(HI_HANDLE hAde, ADE_INBUF_SYNC_RPOS_S *pstSyncInbuf);
HI_S32   HI_MPI_ADE_InbufGetPtsRpos(HI_HANDLE hAde, HI_U32 *pu32PtsReadPos);
HI_S32   HI_MPI_ADE_InbufSetEosflag(HI_HANDLE hAde);
HI_S32   HI_MPI_ADE_CheckCmdDone(HI_HANDLE hAde);
HI_S32   HI_MPI_ADE_SendControlCmd(HI_HANDLE hAde, ADE_IOCTRL_PARAM_S *pstAttr);
HI_S32   HI_MPI_ADE_InbufInit(HI_HANDLE hAde, ADE_INBUF_ATTR_S *pstParams);
HI_S32   HI_MPI_ADE_InbufDeInit(HI_HANDLE hAde);
HI_S32   HI_MPI_ADE_OutbufInit(HI_HANDLE hAde, ADE_OUTBUF_ATTR_S *pstParams);
HI_S32   HI_MPI_ADE_OutbufDeInit(HI_HANDLE hAde);
HI_S32   HI_MPI_ADE_ReceiveFrame(HI_HANDLE hAde, ADE_FRMAE_BUF_S * pstAOut, HI_VOID * pPrivate);
HI_S32   HI_MPI_ADE_ReleaseFrame(HI_HANDLE hAde, HI_U32 u32FrameIdx);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */

#endif //__MPI_ADE_H__
