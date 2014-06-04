/******************************************************************************
 Copyright (C), 2009-2019, Hisilicon Tech. Co., Ltd.
 ******************************************************************************
 File Name     : hi_mpi_descrambler.h
 Version       : Initial Draft
 Author        : Hisilicon multimedia software group
 Created       : 2013/04/16
 Description   :
******************************************************************************/

#ifndef __HI_MPI_DESCRAMBLER_H__
#define __HI_MPI_DESCRAMBLER_H__

#include "hi_type.h"

#include "hi_unf_descrambler.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

HI_S32 HI_MPI_DMX_CreateDescrambler(HI_U32 u32DmxId, const HI_UNF_DMX_DESCRAMBLER_ATTR_S *pstDesramblerAttr, HI_HANDLE *phKey);
HI_S32 HI_MPI_DMX_DestroyDescrambler(HI_HANDLE hKey);
HI_S32 HI_MPI_DMX_SetDescramblerEvenKey(HI_HANDLE hKey, const HI_U8 *pu8EvenKey);
HI_S32 HI_MPI_DMX_SetDescramblerOddKey(HI_HANDLE hKey, const HI_U8 *pu8OddKey);
HI_S32 HI_MPI_DMX_SetDescramblerEvenIVKey(HI_HANDLE hKey, const HI_U8 *pu8IVKey);
HI_S32 HI_MPI_DMX_SetDescramblerOddIVKey(HI_HANDLE hKey, const HI_U8 *pu8IVKey);
HI_S32 HI_MPI_DMX_AttachDescrambler(HI_HANDLE hKey, HI_HANDLE hChannel);
HI_S32 HI_MPI_DMX_DetachDescrambler(HI_HANDLE hKey, HI_HANDLE hChannel);
HI_S32 HI_MPI_DMX_GetDescramblerKeyHandle(HI_HANDLE hChannel, HI_HANDLE *phKey);
HI_S32 HI_MPI_DMX_GetFreeDescramblerKeyCount(HI_U32 u32DmxId, HI_U32 *pu32FreeCount);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif  /* __HI_MPI_DESCRAMBLER_H__ */

