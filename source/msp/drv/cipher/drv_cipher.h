/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_cipher.h
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/

#ifndef __DRV_CIPHER_H__
#define __DRV_CIPHER_H__

/* add include here */
#include "hal_cipher.h"
#include "drv_cipher_ioctl.h"


#ifdef __cplusplus
extern "C" {
#endif

/***************************** Macro Definition ******************************/
#define CIPHER_DEFAULT_INT_NUM    1
#define CIPHER_SOFT_CHAN_NUM      CIPHER_CHAN_NUM
#define CIPHER_INVALID_CHN        (0xffffffff)

HI_S32 DRV_CIPHER_ReadReg(HI_U32 addr, HI_U32 *pVal);
HI_S32 DRV_CIPHER_WriteReg(HI_U32 addr, HI_U32 Val);

HI_S32 DRV_Cipher_OpenChn(HI_U32 softChnId);
HI_S32 DRV_Cipher_CloseChn(HI_U32 softChnId);
HI_S32 DRV_Cipher_ConfigChn(HI_U32 softChnId, HI_UNF_CIPHER_CTRL_S *pConfig, funcCipherCallback fnCallBack);
HI_S32 DRV_Cipher_CreatTask(HI_U32 softChnId, HI_DRV_CIPHER_TASK_S *pTask, HI_U32 *pKey, HI_U32 *pIV);
HI_S32 DRV_Cipher_HdcpParamConfig(HI_DRV_CIPHER_HDCP_KEY_MODE_E enHdcpEnMode, HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E enRamMode, HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enKeyType);
HI_S32 DRV_Cipher_ClearHdcpConfig(HI_VOID);
HI_S32 DRV_Cipher_SoftReset(HI_VOID);
HI_S32 DRV_Cipher_LoadHdcpKey(HI_DRV_CIPHER_FLASH_ENCRYPT_HDCPKEY_S *pstFlashHdcpKey);

HI_S32 DRV_Cipher_CreatMultiPkgTask(HI_U32 softChnId, HI_DRV_CIPHER_DATA_INFO_S *pBuf2Process, HI_U32 pkgNum, HI_U32 callBackArg);

HI_S32 DRV_Cipher_Init(HI_VOID);
HI_VOID DRV_Cipher_DeInit(HI_VOID);
HI_VOID DRV_Cipher_Suspend(HI_VOID);
HI_S32 DRV_Cipher_Resume(HI_VOID);
HI_S32 DRV_Cipher_GetHandleConfig(HI_U32 u32SoftChanId, HI_UNF_CIPHER_CTRL_S *pCipherCtrl);
HI_VOID DRV_Cipher_SetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E enMode);
HI_S32 DRV_Cipher_GetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E *penMode);
HI_VOID DRV_Cipher_SetHdcpKeyRamMode(HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E enMode);
HI_S32 DRV_Cipher_SetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enHdcpKeySelectMode);
HI_S32 DRV_Cipher_GetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E *penHdcpKeySelectMode);

HI_S32 DRV_Cipher_CalcHashInit(CIPHER_HASH_DATA_S *pCipherHashData);
HI_S32 DRV_Cipher_CalcHashUpdate(CIPHER_HASH_DATA_S *pCipherHashData);
HI_S32 DRV_Cipher_CalcHashFinal(CIPHER_HASH_DATA_S *pCipherHashData);


#ifdef __cplusplus
}
#endif
#endif /* __DRV_CIPHER_H__ */