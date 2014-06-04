/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_otp_ext.h
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/

#ifndef __DRV_OTP_EXT_H__
#define __DRV_OTP_EXT_H__

//#include "drv_otp_ioctl.h"
#include "hi_type.h"

#ifdef __cplusplus
extern "C" {
#endif

/* otp v200 hal interface */
typedef HI_U32 (*fp_HAL_OTP_V200_Read)(HI_U32 addr);
typedef HI_U8  (*fp_HAL_OTP_V200_ReadByte)(HI_U32 addr);
typedef HI_S32 (*fp_HAL_OTP_V200_Write)(HI_U32 addr,HI_U32 tdata);
typedef HI_S32 (*fp_HAL_OTP_V200_WriteByte)(HI_U32 addr, HI_U8 tdata);
typedef HI_S32 (*fp_HAL_OTP_V200_WriteBit)(HI_U32 addr, HI_U32 bit_pos, HI_U32  bit_value);

/* otp v100 hal interface */
typedef HI_S32 (*fp_HAL_OTP_V100_WriteByte)(HI_U32 addr, HI_U32 tdata);
typedef HI_S32 (*fp_HAL_OTP_V100_WriteBit)(HI_U32 addr, HI_U32 bit_pos, HI_U32 bit_value);
typedef HI_S32 (*fp_HAL_OTP_V100_SetWriteProtect)(HI_VOID);
typedef HI_S32 (*fp_HAL_OTP_V100_GetWriteProtect)(HI_U32 *penable);
typedef HI_U32 (*fp_HAL_OTP_V100_Read)(HI_U32 addr);
typedef HI_S32 (*fp_HAL_OTP_V100_GetSrBit)(HI_S32 pos,HI_S32 *pvalue);
typedef HI_S32 (*fp_HAL_OTP_V100_SetSrBit)(HI_S32 pos);
typedef HI_S32 (*fp_HAL_OTP_V100_FuncDisable)(HI_U32 bit_pos, HI_U32 bit_value);
typedef HI_S32 (*fp_HAL_OTP_V100_Reset)(void);

typedef struct s_OTP_RegisterFunctionlist
{
/* otpv200, read word */
    fp_HAL_OTP_V200_Read            HAL_OTP_V200_Read;
/* otpv200, allow not 4bytes alined */
    fp_HAL_OTP_V200_ReadByte        HAL_OTP_V200_ReadByte;
/* otpv200, write word, addr should be 4bytes alined */
    fp_HAL_OTP_V200_Write           HAL_OTP_V200_Write;
/* otpv200, write byte */
    fp_HAL_OTP_V200_WriteByte       HAL_OTP_V200_WriteByte;
/* otpv200, write bit, addr should be 4bytes alined */ 
    fp_HAL_OTP_V200_WriteBit        HAL_OTP_V200_WriteBit;
/* otpv100, write byte */
    fp_HAL_OTP_V100_WriteByte       HAL_OTP_V100_WriteByte;
/* otpv100, write bit */
    fp_HAL_OTP_V100_WriteBit        HAL_OTP_V100_WriteBit;
/* otpv100, set write protect */
    fp_HAL_OTP_V100_SetWriteProtect HAL_OTP_V100_SetWriteProtect;
/* otpv100, get write protect */
    fp_HAL_OTP_V100_GetWriteProtect HAL_OTP_V100_GetWriteProtect;
/* otpv100, read word */
    fp_HAL_OTP_V100_Read            HAL_OTP_V100_Read;
/* otpv100, get sr bit */
    fp_HAL_OTP_V100_GetSrBit        HAL_OTP_V100_GetSrBit;
/* otpv100, set sr bit */
    fp_HAL_OTP_V100_SetSrBit        HAL_OTP_V100_SetSrBit;
/* otpv100, function disable */
    fp_HAL_OTP_V100_FuncDisable     HAL_OTP_V100_FuncDisable;
/* otpv100, reset otp */
    fp_HAL_OTP_V100_Reset           HAL_OTP_V100_Reset;
}OTP_RegisterFunctionlist_S;

HI_S32	OTP_DRV_ModInit(HI_VOID);
HI_VOID	OTP_DRV_ModExit(HI_VOID);


#ifdef __cplusplus
}
#endif
#endif /* __DRV_OTP_EXT_H__ */

