/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_otp.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/delay.h>
#include <asm/delay.h>
#include <linux/kernel.h>
#include <mach/platform.h>
#include <mach/hardware.h>
#include <asm/io.h>
#include <asm/memory.h>
#include "hi_type.h"
#include "drv_otp.h"
#include "drv_otp_ext.h"
#include "drv_otp_common.h"
#include "drv_otp_v100.h"
#include "drv_otp_v200.h"
#include "drv_otp_reg_v200.h"
#include "hi_drv_dev.h"
#include "hi_drv_module.h"
#include "drv_cipher_ext.h"
#include "hi_reg_common.h"

#define OTP_NAME "HI_OTP"

static OTP_RegisterFunctionlist_S s_OTPExportFunctionList =
{
	.HAL_OTP_V200_Read 		        =	HAL_OTP_V200_Read,
	.HAL_OTP_V200_ReadByte	        =   HAL_OTP_V200_ReadByte,
	.HAL_OTP_V200_Write		        =   HAL_OTP_V200_Write,
	.HAL_OTP_V200_WriteByte	        =   HAL_OTP_V200_WriteByte,
	.HAL_OTP_V200_WriteBit	        =   HAL_OTP_V200_WriteBit,
	.HAL_OTP_V100_WriteByte	        =   HAL_OTP_V100_WriteByte,
	.HAL_OTP_V100_WriteBit		    =   HAL_OTP_V100_WriteBit,
	.HAL_OTP_V100_SetWriteProtect	=   HAL_OTP_V100_SetWriteProtect,
	.HAL_OTP_V100_GetWriteProtect	=   HAL_OTP_V100_GetWriteProtect,
	.HAL_OTP_V100_Read		        =   HAL_OTP_V100_Read,
	.HAL_OTP_V100_GetSrBit			=   HAL_OTP_V100_GetSrBit,
	.HAL_OTP_V100_SetSrBit			=   HAL_OTP_V100_SetSrBit,
	.HAL_OTP_V100_Reset				=   HAL_OTP_V100_Reset,
	.HAL_OTP_V100_FuncDisable	    =   HAL_OTP_V100_FuncDisable,
};

extern HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion);

static OTP_VERSION_E gOTPVesion = OTP_VERSION_100;

static HI_VOID DRV_OTP_ClockConfig(HI_VOID)
{
#ifdef CHIP_TYPE_hi3716cv200es
    U_PERI_CRG48 unOTPCrg;

    unOTPCrg.u32 = 0;
    unOTPCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    if( 0 == unOTPCrg.bits.otp_bus_cken )
    {
        unOTPCrg.bits.otp_bus_cken = 1;
        g_pstRegCrg->PERI_CRG48.u32 = unOTPCrg.u32;
    }
#endif
    return;
}
    
HI_S32 DRV_OTP_Init(void)
{
	HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip = HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_BUTT;

    (HI_VOID)DRV_OTP_ClockConfig();

    ret = HI_DRV_MODULE_Register(HI_ID_OTP, OTP_NAME, (HI_VOID*)&s_OTPExportFunctionList);
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_OTP("HI_DRV_MODULE_Register otp failed\n");
        return ret;
    }

    HI_DRV_SYS_GetChipVersion(&enChip, &enChipVersion);
    if( ((HI_CHIP_TYPE_HI3712 == enChip)    && (HI_CHIP_VERSION_V100 == enChipVersion))     ||
        ((HI_CHIP_TYPE_HI3716M == enChip)   && (HI_CHIP_VERSION_V300 == enChipVersion))     ||
        ((HI_CHIP_TYPE_HI3716CES == enChip) && (HI_CHIP_VERSION_V200 == enChipVersion))     ||
        ((HI_CHIP_TYPE_HI3716C == enChip)   && (HI_CHIP_VERSION_V200 == enChipVersion))     ||
        ((HI_CHIP_TYPE_HI3718C == enChip)   && (HI_CHIP_VERSION_V100 == enChipVersion))     ||
        ((HI_CHIP_TYPE_HI3719C == enChip)   && (HI_CHIP_VERSION_V100 == enChipVersion))     ||
        ((HI_CHIP_TYPE_HI3719M_A == enChip) && (HI_CHIP_VERSION_V100 == enChipVersion)))
    {
        gOTPVesion = OTP_VERSION_200;
    }
    else
    {
        gOTPVesion = OTP_VERSION_100;
    }

    return HI_SUCCESS;
}

HI_S32 DRV_OTP_DeInit(void)
{
    HI_DRV_MODULE_UnRegister(HI_ID_OTP);
    return HI_SUCCESS;
}

HI_U32 DRV_OTP_Read(HI_U32 Addr)
{
    if(gOTPVesion == OTP_VERSION_200)
    {
        return HAL_OTP_V200_Read(Addr);
    }
    else
    {
        return HAL_OTP_V100_Read(Addr);
    }
}

HI_U8 DRV_OTP_ReadByte(HI_U32 Addr)
{
    if(gOTPVesion == OTP_VERSION_200)
    {
        return HAL_OTP_V200_ReadByte(Addr);
    }
    else
    {
        HI_ERR_OTP("Not supported for otpv100!\n");
        return 0;
    }
}

HI_S32 DRV_OTP_Write(HI_U32 Addr, HI_U32 value)
{
    HI_S32 ErrorReturn = HI_SUCCESS;
    
    if(gOTPVesion == OTP_VERSION_200)
    {
        HI_U8 *pByte = (HI_U8*)&value;
        ErrorReturn = HAL_OTP_V200_WriteByte((Addr + 0), pByte[0]); 
        ErrorReturn |= HAL_OTP_V200_WriteByte((Addr + 1), pByte[1]); 
        ErrorReturn |= HAL_OTP_V200_WriteByte((Addr + 2), pByte[2]); 
        ErrorReturn |= HAL_OTP_V200_WriteByte((Addr + 3), pByte[3]);
    }
    else
    {
        HI_U8 *pByte = (HI_U8*)&value;
        ErrorReturn = HAL_OTP_V100_WriteByte((Addr + 0), pByte[0]); 
        ErrorReturn |= HAL_OTP_V100_WriteByte((Addr + 1), pByte[1]); 
        ErrorReturn |= HAL_OTP_V100_WriteByte((Addr + 2), pByte[2]); 
        ErrorReturn |= HAL_OTP_V100_WriteByte((Addr + 3), pByte[3]);
    }
    
    return ErrorReturn;
}

HI_S32 DRV_OTP_Write_Byte(HI_U32 Addr, HI_U8 value)
{
    HI_S32 ErrorReturn = HI_SUCCESS;
    
    if(gOTPVesion == OTP_VERSION_200)
    {
        ErrorReturn = HAL_OTP_V200_WriteByte(Addr, value);
    }
    else
    {
        ErrorReturn = HAL_OTP_V100_WriteByte(Addr, value);
    }
    
    return ErrorReturn;
}

HI_S32 DRV_OTP_Write_Bit(HI_U32 Addr, HI_U32 BitPos, HI_U32 BitValue)
{
    HI_S32 ErrorReturn = HI_SUCCESS;

	if (BitPos >= 8)
	{
		HI_ERR_OTP("Write OTP bit ERROR! BitPos >= 8\n");
		return HI_FAILURE;
	}
	
	if (BitValue > 1)
	{
		HI_ERR_OTP("Write OTP bit ERROR! BitValue > 1\n");
		return HI_FAILURE;
	}
	
    if(gOTPVesion == OTP_VERSION_200)
    {
        ErrorReturn = HAL_OTP_V200_WriteBit(Addr, BitPos, BitValue);
    }
    else
    {
        ErrorReturn = HAL_OTP_V100_WriteBit(Addr, BitPos, BitValue);
    }
    
    return ErrorReturn;
}

HI_S32 DRV_OTP_Reset(HI_VOID)
{
    HI_S32 ErrorReturn = HI_SUCCESS;

    if(gOTPVesion == OTP_VERSION_200)
    {
        ErrorReturn = OTP_V200_Reset();
    }
    else
    {
        ErrorReturn = HAL_OTP_V100_Reset();
    }
    
    return ErrorReturn;
}

HI_S32 DRV_OTP_Func_Disable(HI_U32 u32SRBit)
{
	HI_S32 ErrorReturn = HI_SUCCESS;
    
    if(gOTPVesion == OTP_VERSION_200)
    {
        /*Not supported on OTP V200*/
    }
    else
    {
        ErrorReturn = OTP_V100_Func_Disable(u32SRBit);
    }
    
    return ErrorReturn;
}

HI_S32 DRV_OTP_Set_CustomerKey(OTP_CUSTOMER_KEY_S *pCustomerKey)
{
	HI_S32 ErrorReturn = HI_SUCCESS;
    
    if(gOTPVesion == OTP_VERSION_200)
    {
        ErrorReturn = OTP_V200_Set_CustomerKey(pCustomerKey);
    }
    else
    {
        ErrorReturn = OTP_V100_Set_CustomerKey(pCustomerKey);
    }
    
    return ErrorReturn;
}

HI_S32 DRV_OTP_Get_CustomerKey(OTP_CUSTOMER_KEY_S *pCustomerKey)
{
	HI_S32 ErrorReturn = HI_SUCCESS;
    
    if(gOTPVesion == OTP_VERSION_200)
    {
        ErrorReturn = OTP_V200_Get_CustomerKey(pCustomerKey);
    }
    else
    {
        ErrorReturn = OTP_V100_Get_CustomerKey(pCustomerKey);
    }
    
    return ErrorReturn;
}

HI_S32 DRV_OTP_Get_DDPLUS_Flag(HI_BOOL *pDDPLUSFlag)
{
	HI_S32 ErrorReturn = HI_SUCCESS;
	
	if(gOTPVesion == OTP_VERSION_200)
	{
		ErrorReturn = OTP_V200_Get_DDPLUS_Flag(pDDPLUSFlag);
	}
	else
	{
		ErrorReturn = OTP_V100_Get_DDPLUS_Flag(pDDPLUSFlag);
	}
	
	return ErrorReturn;
}

HI_S32 DRV_OTP_Get_DTS_Flag(HI_BOOL *pDTSFlag)
{
	HI_S32 ErrorReturn = HI_SUCCESS;
	
	if(gOTPVesion == OTP_VERSION_200)
	{
		ErrorReturn = OTP_V200_Get_DTS_Flag(pDTSFlag);
	}
	else
	{
		ErrorReturn = OTP_V100_Get_DTS_Flag(pDTSFlag);
	}
	
	return ErrorReturn;
}

HI_S32 DRV_OTP_Set_StbPrivData(OTP_STB_PRIV_DATA_S *pStbPrivData)
{
    HI_S32 ErrorReturn = HI_SUCCESS;
    
    if(gOTPVesion == OTP_VERSION_200)
    {
        ErrorReturn = OTP_V200_Set_StbPrivData(pStbPrivData);
    }
    else
    {
        ErrorReturn = OTP_V100_Set_StbPrivData(pStbPrivData);
    }
    
    return ErrorReturn;
}

HI_S32 DRV_OTP_Get_StbPrivData(OTP_STB_PRIV_DATA_S *pStbPrivData)
{
    HI_S32 ErrorReturn = HI_SUCCESS;
    
    if(gOTPVesion == OTP_VERSION_200)
    {
        ErrorReturn = OTP_V200_Get_StbPrivData(pStbPrivData);
    }
    else
    {
        ErrorReturn = OTP_V100_Get_StbPrivData(pStbPrivData);
    }
    
    return ErrorReturn;
}

/*---------------------------------------------END--------------------------------------*/
