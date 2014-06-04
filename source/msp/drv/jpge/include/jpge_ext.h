/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : jpge_ext.h
Version       : 
Author        : J35383
Created       : 2010/05/10
Last Modified :
Description   : Jpeg Encoder Hardware Interface for X5HD
History       :

******************************************************************************/
#ifndef __JPGE_EXT_H__
#define __JPGE_EXT_H__

#include "hi_type.h"
#include "hi_jpge_type.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif
/*************************************************************************************/



/* Open & Close Hardware */
HI_S32 Jpge_Open ( HI_VOID );
HI_S32 Jpge_Close( HI_VOID );

/* Create & Destroy One Encoder Channel */
HI_S32 Jpge_Create ( HI_U32 *pEncHandle, Jpge_EncCfg_S *pEncCfg );
HI_S32 Jpge_Destroy( HI_U32   EncHandle );

/* Encode One Frame */
HI_S32 Jpge_Encode ( HI_U32 EncHandle, Jpge_EncIn_S *pEncIn, Jpge_EncOut_S *pEncOut );

/*************************************************************************************/
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif
