/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_advca_ext.h
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
#ifndef __DRV_ADVCA_EXT_H_
#define __DRV_ADVCA_EXT_H_

#include "hi_type.h"
#include "hi_unf_cipher.h"

#ifdef __cplusplus
extern "C"{
#endif /* __cplusplus */

typedef enum hiDRV_ADVCA_CA_TARGET_E
{
	DRV_ADVCA_CA_TARGET_DEMUX         = 0,
	DRV_ADVCA_CA_TARGET_MULTICIPHER,
}DRV_ADVCA_CA_TARGET_E;

typedef struct hiDRV_ADVCA_EXTFUNC_PARAM_S
{
    HI_UNF_CIPHER_CA_TYPE_E enCAType;
    DRV_ADVCA_CA_TARGET_E enTarget;
    HI_U32 AddrID;
    HI_U32 EvenOrOdd;
    HI_U8 *pu8Data;
    HI_BOOL bIsDeCrypt;
}DRV_ADVCA_EXTFUNC_PARAM_S;

typedef HI_S32  (*FN_CA_Crypto)(DRV_ADVCA_EXTFUNC_PARAM_S stParam);

typedef struct s_ADVCA_RegisterFunctionlist
{
    FN_CA_Crypto pfnAdvcaCrypto;
}ADVCA_EXPORT_FUNC_S;

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif   /* _DRV_ADVCA_EXT_H_ */

