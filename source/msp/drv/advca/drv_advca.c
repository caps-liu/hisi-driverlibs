/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_advca.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :

******************************************************************************/
#include "hi_unf_advca.h"
#include "drv_advca_ext.h"
#include "drv_advca.h"
#include "hi_module.h"
#include "hi_common.h"
#include "hi_drv_cipher.h"
#include "hi_drv_otp.h"
#include "hi_drv_sys.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_module.h"
#include "hi_error_mpi.h"
#if defined(SDK_SECURITY_ARCH_VERSION_V2) && defined(ADVCA_NAGRA)
#include <linux/notifier.h>
#endif
#include "drv_advca_ioctl.h"
#include "drv_advca.h"
#include "drv_otp_ext.h"
#include "hi_drv_struct.h"
#ifdef SDK_SECURITY_ARCH_VERSION_V2
#include "hi_struct.h"
#endif

OTP_RegisterFunctionlist_S *g_pOTPExportFunctionList = HI_NULL;
OTP_RegisterFunctionlist_S g_stOTPExportFunctionList = {0};

static CA_RegisterFunctionlist_S s_CaExportFunctionList = 
{
    .DRV_ADVCA_Crypto = DRV_ADVCA_Crypto,
};

extern HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion);

HI_S32 DRV_ADVCA_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion)
{
    if ( (NULL == penChipVersion) || (NULL == penChipVersion) )
    {
        HI_FATAL_CA("CA get chip version failed!\n");
        return HI_FAILURE;
    }

    (HI_VOID)HI_DRV_SYS_GetChipVersion(penChipType, penChipVersion);

    return HI_SUCCESS;
}

#if defined(SDK_SECURITY_ARCH_VERSION_V2) && defined(ADVCA_NAGRA)
extern int register_reboot_notifier(struct notifier_block *nb);

static int DRV_ADVCA_SystemReboot(struct notifier_block *nb, unsigned long event, void *unused)
{
    HI_U32 u32Stat = 0;
    
    /*Set OTP read address to CA key*/
	DRV_ADVCA_SysWriteReg(ca_io_address(OTP_CTRL_ADDR), 0x0);
	
	/*Set OTP read mode to differencial mode*/
	DRV_ADVCA_SysWriteReg(ca_io_address(OTP_CHANGE_MODE_ADDR), 0x2);
	
	while (1)
	{
	    u32Stat = DRV_ADVCA_SysReadReg(ca_io_address(OTP_CHANGE_MODE_ADDR));
	    if (0 != (u32Stat & 0x08))
	    {
	        break;
	    }
	    ca_mdelay(1);
	}
	ca_mdelay(10);
	
	return HI_SUCCESS;
}

static struct notifier_block advca_reboot_notifier = {
	.notifier_call = DRV_ADVCA_SystemReboot,
};
#endif

HI_VOID DRV_ADVCA_V200_RegisterRebootNotifier(HI_VOID)
{
#if defined(SDK_SECURITY_ARCH_VERSION_V2) && defined(ADVCA_NAGRA)
    register_reboot_notifier(&advca_reboot_notifier);
#endif
    return;
}

HI_S32 CA_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, void* arg)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;

    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);
    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip)) 
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret = DRV_ADVCA_V300_Ioctl(cmd, arg);
    }
    else
    {
        ret = DRV_ADVCA_V200_Ioctl(cmd, arg);
    }
    return ret;
}

#if 0
/* only for Hi3716X!!! */
HI_S32 DRV_ADVCA_GetOTPFunction(HI_VOID* pstOTPFunction)
{
	if( NULL == pstOTPFunction)
	{
		return HI_FAILURE;
	}
	ca_memset(pstOTPFunction, 0x0, sizeof(OTP_RegisterFunctionlist_S));

	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V200_Read = HAL_OTP_V200_Read;
 	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V200_ReadByte = HAL_OTP_V200_ReadByte;
 	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V200_Write = HAL_OTP_V200_Write;    
 	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V200_WriteByte = HAL_OTP_V200_WriteByte;
 	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V200_WriteBit = HAL_OTP_V200_WriteBit;

	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V100_WriteByte = HAL_OTP_V100_WriteByte;
	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V100_WriteBit = HAL_OTP_V100_WriteBit;
	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V100_SetWriteProtect = HAL_OTP_V100_SetWriteProtect;
	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V100_GetWriteProtect = HAL_OTP_V100_GetWriteProtect;
	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V100_Read = HAL_OTP_V100_Read;
	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V100_GetSrBit = HAL_OTP_V100_GetSrBit;
	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V100_SetSrBit = HAL_OTP_V100_SetSrBit;
	((OTP_RegisterFunctionlist_S *)pstOTPFunction)->HAL_OTP_V100_FuncDisable = HAL_OTP_V100_FuncDisable;

	return	HI_SUCCESS;
}
#endif

int DRV_ADVCA_Open(struct inode *inode, struct file *filp)
{
    HI_U32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;
    
    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);
    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip)) 
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret = DRV_ADVCA_V300_Open();
    }
    else
    {
        ret = DRV_ADVCA_V200_Open();
    }
    return ret;
}

int DRV_ADVCA_Release(struct inode *inode, struct file *filp)
{
    HI_U32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;
    
    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);
    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip)) 
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret = DRV_ADVCA_V300_Release();
    }
    else
    {
        ret = DRV_ADVCA_V200_Release();
    }
    return ret;
}

int  DRV_ADVCA_PmResume(PM_BASEDEV_S *pdev)
{
    HI_FATAL_CA("ok! \n");
    return HI_SUCCESS;
}

int  DRV_ADVCA_PmSuspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    HI_FATAL_CA("ok! \n");
    return HI_SUCCESS;
}
EXPORT_SYMBOL(DRV_ADVCA_PmResume);
EXPORT_SYMBOL(DRV_ADVCA_PmSuspend);

/*****************************************************************************
 Prototype    :
 Description  : CA Module interface for Demux Chipset Pairing
                It is to set DVB level 2 Input
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
HI_S32 DRV_ADVCA_DecryptCws(HI_U32 AddrID,HI_U32 EvenOrOdd, HI_U8 *pu8Data)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enKeyladderLevel;

    if(NULL == pu8Data)
    {
        HI_ERR_CA("Error! Invald param, null pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);

    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip)) 
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret = HAL_ADVCA_V300_GetCWLadderLevel(&enKeyladderLevel);
        ret |= HAL_ADVCA_V300_DecryptCw(enKeyladderLevel, (HI_U32 *)pu8Data, AddrID, EvenOrOdd);
    }
    else
    {
        ret = DRV_ADVCA_V200_DecryptCws(AddrID, EvenOrOdd, pu8Data);
    }

    return ret;
}

HI_S32 DRV_ADVCA_DecryptCsa3s(HI_U32 AddrID,HI_U32 EvenOrOdd, HI_U8 *pu8Data)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enKeyladderLevel;

    if(NULL == pu8Data)
    {
        HI_ERR_CA("Error! Invald param, null pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);

    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip)) 
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret = HAL_ADVCA_V300_GetCSA3LadderLevel(&enKeyladderLevel);
        ret |= HAL_ADVCA_V300_DecryptCsa3(enKeyladderLevel, (HI_U32 *)pu8Data, AddrID, EvenOrOdd);
    }
    else
    {
        ret = HI_SUCCESS;
    }

    return ret;
}

/*****************************************************************************
 Prototype    :
 Description  : Conax Module interface for Demux Chipset Pairing
                It is to set DVB level 2 Input
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/

HI_S32 DRV_ADVCA_DecryptSPs(HI_U32 AddrID,HI_U32 EvenOrOdd, HI_U8 *pu8Data)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enKeyladderLevel;

    if(NULL == pu8Data)
    {
        HI_ERR_CA("Error! Invald param, null pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);

    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip)) 
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret = HAL_ADVCA_V300_GetSPLadderLevel(&enKeyladderLevel);
        ret |= HAL_ADVCA_V300_DecryptSP(enKeyladderLevel, (HI_U32*)pu8Data, AddrID, EvenOrOdd);
    }
    else
    {
        ret = DRV_ADVCA_V200_DecryptCws(AddrID, EvenOrOdd, pu8Data);
    }
    
    return ret;
}

/*****************************************************************************
 Prototype    :
 Description  : CA Module interface for Cipher
                It is to set Cipher level 2 Input
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
HI_S32 DRV_ADVCA_DecryptCipher(HI_U32 AddrID, HI_U32 *pu32DataIn)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enKeyladderLevel;

    if(NULL == pu32DataIn)
    {
        HI_ERR_CA("Error! Invald param, null pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);

    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip)) 
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret = HAL_ADVCA_V300_GetR2RLadderLevel(&enKeyladderLevel);
        ret |= HAL_ADVCA_V300_CryptR2R(enKeyladderLevel, pu32DataIn, AddrID, HI_TRUE);
    }
    else
    {
        ret = DRV_ADVCA_V200_DecryptCipher(AddrID, pu32DataIn);
    }

    return ret;
}

HI_S32 DRV_ADVCA_EncryptCipher(HI_U32 AddrID, HI_U32 *pu32DataIn)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enKeyladderLevel;

    if(NULL == pu32DataIn)
    {
        HI_ERR_CA("Error! Invald param, null pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);

    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip)) 
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret  = HAL_ADVCA_V300_GetR2RLadderLevel(&enKeyladderLevel);
        ret |= HAL_ADVCA_V300_CryptR2R(enKeyladderLevel, pu32DataIn, AddrID, HI_FALSE);
    }
    else
    {
        ret = DRV_ADVCA_V200_EncryptCipher(AddrID, pu32DataIn);
    }
    
    return ret;
}

HI_S32 DRV_ADVCA_DecryptMisc(HI_U32 AddrID,HI_U32 EvenOrOdd, HI_U8 *pu8DataIn, HI_UNF_ADVCA_CA_TARGET_E enKlTarget)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enKeyladderLevel;

    if(NULL == pu8DataIn)
    {
        HI_ERR_CA("Error, Null pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    (HI_VOID)DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);
    if( ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret  = HAL_ADVCA_V300_GetMiscKlLevel(&enKeyladderLevel);
        ret |= HAL_ADVCA_V300_DecryptMisc(enKeyladderLevel, (HI_U32 *)pu8DataIn, AddrID, EvenOrOdd);
    }
    else
    {
        HI_ERR_CA("Not supported!\n");
        return HI_FAILURE;
    }

    return ret;
}

HI_S32 DRV_ADVCA_CryptGDRM(HI_U32 AddrID, 
                    HI_U32 *pu32DataIn, 
                    HI_BOOL bIsDeCrypt,
                    HI_UNF_ADVCA_CA_TARGET_E enKlTarget)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;

    if(NULL == pu32DataIn)
    {
        HI_ERR_CA("Error, Null pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    (HI_VOID)DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);
    if( ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret = HAL_ADVCA_V300_CryptGDRM(HI_UNF_ADVCA_KEYLADDER_LEV3, pu32DataIn, AddrID, bIsDeCrypt, enKlTarget);
    }
    else
    {
        HI_ERR_CA("Not supported!\n");
        return HI_FAILURE;
    }

    return ret;
}

HI_S32 DRV_ADVCA_Crypto(DRV_ADVCA_EXTFUNC_PARAM_S stParam)
{
    HI_S32 ret = HI_SUCCESS;

    if(HI_UNF_CIPHER_CA_TYPE_SP == stParam.enCAType)
    {
        ret = DRV_ADVCA_DecryptSPs(stParam.AddrID, stParam.EvenOrOdd, stParam.pu8Data);
    }
    else if(HI_UNF_CIPHER_CA_TYPE_R2R == stParam.enCAType)
    {
        ret = DRV_ADVCA_DecryptCipher(stParam.AddrID, (HI_U32 *)stParam.pu8Data);
    }
    else if(HI_UNF_CIPHER_CA_TYPE_CSA2 == stParam.enCAType)
    {
        ret = DRV_ADVCA_DecryptCws(stParam.AddrID, stParam.EvenOrOdd, stParam.pu8Data);
    }
    else if(HI_UNF_CIPHER_CA_TYPE_CSA3 == stParam.enCAType)
    {
        ret = DRV_ADVCA_DecryptCsa3s(stParam.AddrID, stParam.EvenOrOdd, stParam.pu8Data);
    }
    else if(HI_UNF_CIPHER_CA_TYPE_MISC == stParam.enCAType)
    {
        ret = DRV_ADVCA_DecryptMisc(stParam.AddrID, stParam.EvenOrOdd, stParam.pu8Data, stParam.enTarget);
    }
    else if(HI_UNF_CIPHER_CA_TYPE_GDRM == stParam.enCAType)
    {
        ret = DRV_ADVCA_CryptGDRM(stParam.AddrID,
                          (HI_U32 *)stParam.pu8Data,
                          stParam.bIsDeCrypt,
                          (HI_UNF_ADVCA_CA_TARGET_E)stParam.enTarget);
    }
    else if(HI_UNF_CIPHER_CA_TYPE_BLPK == stParam.enCAType)
    {
        ret = HAL_ADVCA_V300_DecryptSWPK((HI_U32 *)stParam.pu8Data, stParam.AddrID);
    }
    else
    {
        HI_ERR_CA("Invalid CA type!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    return ret;
}

HI_S32 DRV_ADVCA_GetVendorId(HI_U32 *pu32VendorId)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;

	if (HI_NULL == pu32VendorId)
    {
        HI_ERR_CA("Invalid Parameters.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);

    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip)) 
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret = DRV_CA_OTP_V200_GetSecureChipId(pu32VendorId);
    }
    else
    {
        ret = DRV_CA_OTP_V200_GetVendorId(pu32VendorId);
    }

    return ret;
}

/*****************************************************************************
 Prototype    :
 Description  : CA Module interface for Other Modules
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
HI_S32 DRV_ADVCA_Callback(HI_U32 u32Cmd, HI_VOID * pArgs)
{
    switch(u32Cmd)
    {
        default:
        {
            HI_ERR_CA("CA  Not Support\n");
            return HI_FAILURE;
        }
    }
    return HI_SUCCESS;
}

HI_S32  DRV_ADVCA_ModeInit_0(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;

	ret = HI_DRV_MODULE_GetFunction(HI_ID_OTP, (HI_VOID**)&g_pOTPExportFunctionList);
	if( NULL == g_pOTPExportFunctionList)
	{
		HI_FATAL_CA("Get otp functions failed!\n");	
		return HI_FAILURE;
	}

    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);
    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        ret = HI_DRV_MODULE_Register(HI_ID_CA, HI_MOD_CA, (HI_VOID*)&s_CaExportFunctionList); 
        if (HI_SUCCESS != ret)
        {
            HI_FATAL_CA("HI_DRV_MODULE_Register failed\n");
            return ret;
        }

        ret = DRV_ADVCA_V300_ModeInit_0();
    }
    else
    {
        ret = HI_DRV_MODULE_Register(HI_ID_CA, HI_MOD_CA, (HI_VOID*)&s_CaExportFunctionList); 
        if (HI_SUCCESS != ret)
        {
            HI_FATAL_CA("HI_DRV_MODULE_Register failed\n");
            return ret;
        }

        ret = DRV_ADVCA_V200_ModeInit_0();
    }

    return ret;
}

HI_VOID DRV_ADVCA_ModeExit_0(HI_VOID)
{
    HI_CHIP_TYPE_E enChip;
    HI_CHIP_VERSION_E enChipVersion;
    
    DRV_ADVCA_GetChipVersion(&enChip, &enChipVersion);
    if( ((HI_CHIP_VERSION_V300 == enChipVersion) && (HI_CHIP_TYPE_HI3716M == enChip)) 
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716C == enChip))
     || ((HI_CHIP_VERSION_V200 == enChipVersion) && (HI_CHIP_TYPE_HI3716CES == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3718C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719C == enChip))
     || ((HI_CHIP_VERSION_V100 == enChipVersion) && (HI_CHIP_TYPE_HI3719M_A == enChip)))
    {
        DRV_ADVCA_V300_ModeExit_0();
    }
    else  
    {
        DRV_ADVCA_V200_ModeExit_0();
    }
    
    HI_DRV_MODULE_UnRegister(HI_ID_CA);

    return;
}

EXPORT_SYMBOL(DRV_ADVCA_Crypto);

/*------------------------------------------END-----------------------------------------------*/

