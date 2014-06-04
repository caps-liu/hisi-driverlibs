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
#include "hal_aiao_common.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/

/* global function */
HI_S32					iHAL_AIAO_Init(HI_VOID);
HI_VOID					iHAL_AIAO_DeInit(HI_VOID);
HI_VOID					iHAL_AIAO_GetHwCapability(HI_U32 *pu32Capability);
HI_VOID					iHAL_AIAO_GetHwVersion(HI_U32 *pu32Version);
HI_VOID					iHAL_AIAO_DBG_RWReg(AIAO_Dbg_Reg_S *pstReg);
HI_VOID					iHAL_AIAO_SetTopInt(HI_U32 u32Multibit);
HI_U32					iHAL_AIAO_GetTopIntRawStatus(HI_VOID);
HI_U32					iHAL_AIAO_GetTopIntStatus(HI_VOID);

/*****************************************************************************
 Description  : AIAO TX/RX Port DSP Control HAL API
*****************************************************************************/
HI_VOID					iHAL_AIAO_P_SetInt(AIAO_PORT_ID_E enPortID, HI_U32 u32Multibit);
HI_VOID					iHAL_AIAO_P_ClrInt(AIAO_PORT_ID_E enPortID, HI_U32 u32Multibit);
HI_U32					iHAL_AIAO_P_GetIntStatusRaw(AIAO_PORT_ID_E enPortID);
HI_U32					iHAL_AIAO_P_GetIntStatus(AIAO_PORT_ID_E enPortID);

/* global port function */
HI_S32					iHAL_AIAO_P_Open(const AIAO_PORT_ID_E enPortID, const AIAO_PORT_USER_CFG_S *pstConfig,
                                        HI_HANDLE *phandle, AIAO_IsrFunc** pIsr);


HI_VOID					iHAL_AIAO_P_Close(HI_HANDLE handle);
HI_S32					iHAL_AIAO_P_Start(HI_HANDLE handle);
HI_S32					iHAL_AIAO_P_Stop(HI_HANDLE handle, AIAO_PORT_STOPMODE_E enStopMode);
HI_S32					iHAL_AIAO_P_Mute(HI_HANDLE handle, HI_BOOL bMute);
HI_S32					iHAL_AIAO_P_SetVolume(HI_HANDLE handle, HI_U32 u32VolumedB);
HI_S32					iHAL_AIAO_P_SetTrackMode(HI_HANDLE handle, AIAO_TRACK_MODE_E enTrackMode);
HI_S32 iAIAO_HAL_P_SetBypass(HI_HANDLE handle, HI_BOOL bByBass);
HI_S32					iHAL_AIAO_P_GetUserCongfig(HI_HANDLE handle, AIAO_PORT_USER_CFG_S *pstUserConfig);
HI_S32					iHAL_AIAO_P_GetStatus(HI_HANDLE handle, AIAO_PORT_STAUTS_S *pstProcInfo);
HI_S32					iHAL_AIAO_P_SelectSpdifSource(HI_HANDLE handle, AIAO_SPDIFPORT_SOURCE_E eSrcChnId);
HI_S32					iHAL_AIAO_P_SetSpdifOutPort(HI_HANDLE handle, HI_S32 bEn);
HI_S32					iHAL_AIAO_P_SetI2SSdSelect(HI_HANDLE handle, AIAO_I2SDataSel_S  *pstSdSel);
HI_S32 iHAL_AIAO_P_SetAttr(HI_HANDLE handle, AIAO_PORT_ATTR_S *pstAttr);
HI_S32 iHAL_AIAO_P_GetAttr(HI_HANDLE handle, AIAO_PORT_ATTR_S *pstAttr);
HI_VOID iHAL_AIAO_P_ProcStatistics(HI_HANDLE handle, HI_U32 u32IntStatus);
HI_S32 iHAL_AIAO_P_SetI2SMasterClk(AIAO_PORT_ID_E enPortID, AIAO_IfAttr_S *pstIfAttr);


/* port buffer function */
HI_U32					iHAL_AIAO_P_ReadData(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize);
HI_U32					iHAL_AIAO_P_WriteData(HI_HANDLE handle, HI_U8 * pu32Src, HI_U32 u3SrcLen);
HI_U32					iHAL_AIAO_P_PrepareData(HI_HANDLE handle, HI_U8 * pu32Src, HI_U32 u3SrcLen);
HI_U32					iHAL_AIAO_P_QueryBufData(HI_HANDLE handle);
HI_U32					iHAL_AIAO_P_QueryBufFree(HI_HANDLE handle);
HI_U32					iHAL_AIAO_P_UpdateRptr(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize);
HI_U32					iHAL_AIAO_P_UpdateWptr(HI_HANDLE handle, HI_U8 * pu32Src, HI_U32 u3SrcLen);
HI_S32                  iHAL_AIAO_P_GetRbfAttr(HI_HANDLE handle, AIAO_RBUF_ATTR_S *pstRbfAttr);
HI_VOID iHAL_AIAO_P_GetDelayMs(HI_HANDLE handle, HI_U32 * pu32Delayms);
#ifdef HI_ALSA_AI_SUPPORT
HI_U32 iHAL_AIAO_P_ALSA_UpdateRptr(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize);
HI_U32 iHAL_AIAO_P_ALSA_QueryWritePos (HI_HANDLE handle);
HI_U32 iHAL_AIAO_P_ALSA_QueryReadPos (HI_HANDLE handle);

HI_U32 iHAL_AIAO_P_ALSA_UpdateWptr(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize);
HI_U32 iHAL_AIAO_P_ALSA_FLASH(HI_HANDLE handle);
#endif
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  // __HI_AIAO_FUNC_H__
