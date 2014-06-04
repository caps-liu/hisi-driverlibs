/******************************************************************************

Copyright (C), 2009-2019, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : hal_aiao_func.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2012/09/22
Last Modified :
Description   : aiao
Function List :
History       :
* main\1    2012-09-22   z40717     init.
******************************************************************************/
#ifndef __HI_AIAO_FUNC_H__
#define __HI_AIAO_FUNC_H__

#include "hi_type.h"
#include "hal_aoe_common.h"
#include "hi_audsp_aoe.h"
#include "hi_drv_ao.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/

/* global function */
/* global function */
HI_S32					iHAL_AOE_Init(HI_BOOL bSwAoeFlag);
HI_VOID					iHAL_AOE_DeInit(HI_VOID);
HI_VOID					iHAL_AOE_GetHwCapability(HI_U32 *pu32Capability);
HI_VOID					iHAL_AOE_GetHwVersion(HI_U32 *pu32Version);

/* AIP function */
HI_S32					iHAL_AOE_AIP_Create(AOE_AIP_ID_E enAIP, AOE_AIP_CHN_ATTR_S *pstAttr);
HI_VOID					iHAL_AOE_AIP_Destroy(AOE_AIP_ID_E enAIP);
HI_S32					iHAL_AOE_AIP_SetAttr(AOE_AIP_ID_E enAIP, AOE_AIP_CHN_ATTR_S *pstAttr);
HI_S32					iHAL_AOE_AIP_SetCmd(AOE_AIP_ID_E enAIP, AOE_AIP_CMD_E newcmd);
HI_VOID					iHAL_AOE_AIP_SetVolume(AOE_AIP_ID_E enAIP, HI_U32 u32VolumedB);
HI_S32					iHAL_AOE_AIP_SetSpeed(AOE_AIP_ID_E enAIP, HI_S32 u32AdjSpeed);
HI_S32					iHAL_AOE_AIP_GetStatus(AOE_AIP_ID_E enAIP, HI_VOID *pstStatus);
//HI_U32					iHAL_AOE_AIP_WriteData(AOE_AIP_ID_E enAIP, HI_U8 * pu32Src, HI_U32 u32SrcBytes);
//HI_U32					iHAL_AOE_AIP_QueryBufData(AOE_AIP_ID_E enAIP);
//HI_U32					iHAL_AOE_AIP_QueryBufFree(AOE_AIP_ID_E enAIP);
HI_U32                  iHAL_AOE_AIP_GetFiFoDelayMs(AOE_AIP_ID_E enAIP);
HI_VOID					iHAL_AOE_AIP_GetRptrAndWptrRegAddr(AOE_AIP_ID_E enAIP, HI_U32 *pu32WptrReg, HI_U32 *pu32RptrReg);
HI_VOID                 iHAL_AOE_AIP_ReSetRptrAndWptrReg(AOE_AIP_ID_E enAIP);
//for ALSA
HI_VOID                 iHAL_AOE_AIP_EnableAlsa(AOE_AIP_ID_E enAIP, HI_BOOL bEnableAlsa);           //USED

/* AOP function */
HI_S32					iHAL_AOE_AOP_Create(AOE_AOP_ID_E enAOP, AOE_AOP_CHN_ATTR_S *pstAttr);
HI_VOID					iHAL_AOE_AOP_Destroy(AOE_AOP_ID_E enAOP);
HI_S32					iHAL_AOE_AOP_SetAttr(AOE_AOP_ID_E enAOP, AOE_AOP_CHN_ATTR_S *pstAttr);
HI_VOID					iHAL_AOE_AOP_GetRptrAndWptrRegAddr(AOE_AOP_ID_E enAOP, HI_U32 *pu32WptrReg, HI_U32 *pu32RptrReg);
HI_S32					iHAL_AOE_AOP_SetCmd(AOE_AOP_ID_E enAOP, AOE_AOP_CMD_E newcmd);
HI_S32					iHAL_AOE_AOP_GetStatus(AOE_AOP_ID_E enAOP, HI_VOID *pstStatus);
#if 0   //not Mirror Here
HI_U32					iHAL_AOE_AOP_ReadData(AOE_AOP_ID_E enAOP, HI_U8 * pu32Dest, HI_U32 u32DestSize);  // mirror
HI_U32					iHAL_AOE_AOP_QueryBufData(AOE_AOP_ID_E enAOP);
HI_U32					iHAL_AOE_AOP_QueryBufFree(AOE_AOP_ID_E enAOP);
#endif

/* ENGINE function */
HI_S32					iHAL_AOE_ENGINE_Create(AOE_ENGINE_ID_E enENGINE, AOE_ENGINE_CHN_ATTR_S *pstAttr);
HI_VOID					iHAL_AOE_ENGINE_Destroy(AOE_ENGINE_ID_E enENGINE);
HI_S32					iHAL_AOE_ENGINE_SetCmd(AOE_ENGINE_ID_E enEngine, AOE_ENGINE_CMD_E newcmd);
HI_S32					iHAL_AOE_ENGINE_GetStatus(AOE_ENGINE_ID_E enENGINE, HI_VOID *pstStatus);
HI_S32					iHAL_AOE_ENGINE_SetAttr(AOE_ENGINE_ID_E enENGINE, AOE_ENGINE_CHN_ATTR_S stAttr);
HI_S32					iHAL_AOE_ENGINE_AttachAip(AOE_ENGINE_ID_E enENGINE, AOE_AIP_ID_E enAIP);
HI_S32					iHAL_AOE_ENGINE_DetachAip(AOE_ENGINE_ID_E enENGINE, AOE_AIP_ID_E enAIP);
HI_S32					iHAL_AOE_ENGINE_AttachAop(AOE_ENGINE_ID_E enENGINE, AOE_AOP_ID_E enAOP);
HI_S32					iHAL_AOE_ENGINE_DetachAop(AOE_ENGINE_ID_E enENGINE, AOE_AOP_ID_E enAOP);


#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  // __HI_AIAO_FUNC_H__
