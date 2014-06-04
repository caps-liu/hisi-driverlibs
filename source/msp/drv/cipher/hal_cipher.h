/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hal_cipher.h
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/

#ifndef __HAL_CIPHER_H__
#define __HAL_CIPHER_H__

/* add include here */
//#include <asm/arch/hardware.h> /* for IO_ADDRESS */
//#include <./arch/arm/mach-x5hd/include/mach/hardware.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/delay.h>
#include <linux/i2c.h>
#include <linux/clk.h>
#include <linux/errno.h>
#include <linux/sched.h>
#include <linux/err.h>
#include <linux/interrupt.h>
#include <linux/platform_device.h>
#include <linux/io.h>

#include <mach/hardware.h>

#include "drv_cipher_ext.h"
#include "drv_cipher_reg.h"
#include "drv_cipher_ioctl.h"
#include "drv_cipher_define.h"
#include "hi_unf_cipher.h"

#ifdef __cplusplus
extern "C" {
#endif
/***************************** Macro Definition ******************************/
#ifdef CHIP_TYPE_hi3716mv300
#define  CIPHER_IRQ_NUMBER                      (53 + 32)
#else
#define  CIPHER_IRQ_NUMBER                      (75 + 32)
#endif

#define  CIPHER_CHAN_NUM                        (8)
#define  CIPHER_PKGx1_CHAN                      (0)
#define  CIPHER_PKGxN_CHAN_MIN                  (1)
#define  CIPHER_PKGxN_CHAN_MAX                  (7)
#define  CIPHER_HMAC_KEY_LEN                    (16)

/*************************** Structure Definition ****************************/
/** */
typedef enum hiCIPHER_INT_TYPE_E
{
    CIPHER_INT_TYPE_IN_BUF  = 					0x1,
    CIPHER_INT_TYPE_OUT_BUF = 					0x2,
} CIPHER_INT_TYPE_E;

typedef enum hiCIPHER_BUF_TYPE_E
{
    CIPHER_BUF_TYPE_IN  = 						0x1,
    CIPHER_BUF_TYPE_OUT = 						0x2,
} CIPHER_BUF_TYPE_E;


/******************************* API declaration *****************************/

HI_S32 HAL_Cipher_GetInBufCnt(HI_U32 chnId, HI_U32 *pNum);
HI_S32 HAL_Cipher_GetInBufEmpty(HI_U32 chnId, HI_U32 *pNum);
HI_S32 HAL_Cipher_GetInBufNum(HI_U32 chnId, HI_U32 *pNum);
HI_S32 HAL_Cipher_GetOutBufCnt(HI_U32 chnId, HI_U32 *pNum);
HI_S32 HAL_Cipher_GetOutBufFull(HI_U32 chnId, HI_U32 *pNum);
HI_S32 HAL_Cipher_GetOutBufNum(HI_U32 chnId, HI_U32 *pNum);
HI_S32 HAL_Cipher_SetInBufCnt(HI_U32 chnId, HI_U32 num);
HI_S32 HAL_Cipher_SetInBufEmpty(HI_U32 chnId, HI_U32 num);
HI_S32 HAL_Cipher_SetInBufNum(HI_U32 chnId, HI_U32 num);
HI_S32 HAL_Cipher_SetOutBufCnt(HI_U32 chnId, HI_U32 num);
HI_S32 HAL_Cipher_SetOutBufFull(HI_U32 chnId, HI_U32 num);
HI_S32 HAL_Cipher_SetOutBufNum(HI_U32 chnId, HI_U32 num);

HI_S32 HAL_Cipher_SetAGEThreshold(HI_U32 chnId, CIPHER_INT_TYPE_E intType, HI_U32 value);
HI_S32 HAL_Cipher_SetIntThreshold(HI_U32 chnId, CIPHER_INT_TYPE_E intType, HI_U32 value);
HI_VOID HAL_Cipher_DisableAllInt(HI_VOID);
HI_S32 HAL_Cipher_DisableInt(HI_U32 chnId, int intType);
HI_S32 HAL_Cipher_EnableInt(HI_U32 chnId, int intType);
HI_VOID HAL_Cipher_GetRawIntState(HI_U32 *pState);
HI_VOID HAL_Cipher_ClrIntState(HI_U32 intStatus);
HI_VOID HAL_Cipher_GetIntState(HI_U32 *pState);
HI_VOID HAL_Cipher_GetIntEnState(HI_U32 *pState);

HI_S32 HAL_Cipher_Config(HI_U32 chnId, HI_BOOL bDecrypt, HI_BOOL bIVChange, HI_UNF_CIPHER_CTRL_S* pCtrl);

HI_S32 HAL_Cipher_SetBufAddr(HI_U32 chnId, CIPHER_BUF_TYPE_E bufType, HI_U32 addr);
HI_S32 HAL_Cipher_SetInIV(HI_U32 chnId, HI_UNF_CIPHER_CTRL_S* pCtrl);
HI_S32 HAL_Cipher_GetOutIV(HI_U32 chnId, HI_UNF_CIPHER_CTRL_S* pCtrl);
HI_S32 HAL_Cipher_SetKey(HI_U32 chnId, HI_UNF_CIPHER_CTRL_S* pCtrl);
HI_S32 HAL_CIPHER_LoadSTBRootKey(HI_U32 u32HwChID);

HI_S32 HAL_Cipher_SetDataSinglePkg(HI_DRV_CIPHER_DATA_INFO_S * info);
HI_S32 HAL_Cipher_StartSinglePkg(HI_U32 chnId);
HI_S32 HAL_Cipher_ReadDataSinglePkg(HI_U32 *pData);

HI_S32 HAL_Cipher_WaitIdle(HI_VOID);
HI_BOOL HAL_Cipher_IsIdle(HI_U32 chn);
HI_VOID HAL_Cipher_Reset(HI_VOID);

HI_S32 HAL_Cipher_SetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enHdcpKeySelectMode);
HI_S32 HAL_Cipher_GetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E *penHdcpKeySelectMode);
HI_VOID HAL_Cipher_SetHdcpKeyRamMode(HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E enMode);
HI_S32 HAL_Cipher_GetHdcpKeyRamMode(HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E *penMode);
HI_S32 HAL_Cipher_GetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E *penMode);
HI_VOID HAL_Cipher_SetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E enMode);
HI_VOID HAL_Cipher_ClearHdcpCtrlReg(HI_VOID);

HI_S32 HAL_Cipher_CalcHashInit(CIPHER_HASH_DATA_S *pCipherHashData);
HI_S32 HAL_Cipher_CalcHashUpdate(CIPHER_HASH_DATA_S *pCipherHashData);
HI_S32 HAL_Cipher_CalcHashFinal(CIPHER_HASH_DATA_S *pCipherHashData);
HI_S32 HAL_Cipher_HashSoftReset(HI_VOID);

HI_VOID HAL_Cipher_Init(void);
HI_VOID HAL_Cipher_DeInit(void);

HI_VOID HAL_CIPHER_ReadReg(HI_U32 addr, HI_U32 *pu32Val);
HI_VOID HAL_CIPHER_WriteReg(HI_U32 addr, HI_U32 u32Val);


#ifdef __cplusplus
}
#endif
#endif /* __HAL_CIPHER_H__ */


