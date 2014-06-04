/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_advca_intf.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
#include <linux/jiffies.h>
#include <linux/device.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/delay.h>
#include <linux/poll.h>
#include <linux/interrupt.h>
#include <linux/delay.h>
#include <linux/mm.h>
#include "hi_common.h"
#include "hi_module.h"
#include "hi_unf_advca.h"
#include "hi_drv_cipher.h"
#include "hi_drv_otp.h"
#include "hi_drv_sys.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_reg.h"
#include "drv_advca.h"
#include "drv_advca_ext.h"
#include "drv_advca_ioctl.h"

extern HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion);

atomic_t g_CaRefCnt = ATOMIC_INIT(0);

#if (LINUX_VERSION_CODE > KERNEL_VERSION(2, 6, 36))
DEFINE_SEMAPHORE(g_CaSem);
#else
struct semaphore g_CaSem;
#endif

#ifndef SDK_SECURITY_ARCH_VERSION_V3
#ifndef HI_REG_READ32
#define HI_REG_READ32(addr,result)  ((result) = *(volatile unsigned int *)(addr))
#endif
#ifndef HI_REG_WRITE32
#define HI_REG_WRITE32(addr,result)  (*(volatile unsigned int *)(addr) = (result))
#endif
#endif

static UMAP_DEVICE_S caUmapDev;

extern HI_S32  DRV_ADVCA_ModeInit_0(HI_VOID);
extern HI_VOID DRV_ADVCA_ModeExit_0(HI_VOID);

extern int DRV_ADVCA_PmResume(PM_BASEDEV_S *pdev);
extern int DRV_ADVCA_PmSuspend(PM_BASEDEV_S *pdev, pm_message_t state);

extern int DRV_ADVCA_Open(struct inode *inode, struct file *filp);
extern int DRV_ADVCA_Release(struct inode *inode, struct file *filp);

static HI_U32 g_CaVirAddr = 0;
#ifdef SDK_SECURITY_ARCH_VERSION_V2
#define CA_BASE      0x101c0000
#else
#define CA_BASE       0x10000000
#endif

HI_S32 CA_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, void* arg);

HI_U32 ca_io_address(HI_U32 u32Addr)
{
    return IO_ADDRESS(u32Addr);
}

HI_S32 ca_atomic_read(HI_U32 *pu32Value)
{
    if ( NULL == pu32Value )
    {
        HI_FATAL_CA("Error! Null pointer input in ca atomic read!\n");
        return HI_FAILURE;
    }
    
    *pu32Value = atomic_read(&g_CaRefCnt);

    return HI_SUCCESS;
}

HI_S32 ca_atomic_dec_return(HI_U32 *pu32Value)
{
    if ( NULL == pu32Value )
    {
        HI_FATAL_CA("Error! Null pointer input in ca atomic read!\n");
        return HI_FAILURE;
    }
    
    *pu32Value = atomic_dec_return(&g_CaRefCnt);

    return HI_SUCCESS;
}

HI_S32 ca_atomic_inc_return(HI_U32 *pu32Value)
{
    if ( NULL == pu32Value )
    {
        HI_FATAL_CA("Error! Null pointer input in ca atomic inc return!\n");
        return HI_FAILURE;
    }
    
    *pu32Value = atomic_inc_return(&g_CaRefCnt);
    return HI_SUCCESS;
}

HI_S32 ca_down_interruptible(struct semaphore *pCaSem)
{
    if (NULL == pCaSem)
    {
        return HI_FAILURE;
    }

    if (down_interruptible(pCaSem))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 ca_down_trylock(struct semaphore * pCaSem)
{
    HI_S32 s32Ret = 0;
    
    if(NULL == pCaSem)
    {
        return HI_FAILURE;
    }
    
    s32Ret = down_trylock(pCaSem);
    if( 0 != s32Ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_VOID ca_up(struct semaphore *pCaSem)
{
    if(NULL == pCaSem)
    {
        return ;
    }

    up(pCaSem);
    return ;
}


HI_VOID ca_initMutex(struct semaphore *pCaSem)
{
#ifndef SDK_SECURITY_ARCH_VERSION_V2
#if (LINUX_VERSION_CODE > KERNEL_VERSION(2, 6, 36))

#else
    init_MUTEX(pCaSem);
#endif
#else
    init_MUTEX(pCaSem);
#endif

    return;
}

HI_VOID *ca_ioremap_nocache(HI_U32 u32Addr, HI_U32 u32Len)
{
    return ioremap_nocache(u32Addr, u32Len);
}

HI_VOID ca_iounmap(HI_VOID *pAddr)
{
    iounmap(pAddr);
    return;
}


HI_VOID ca_msleep(HI_U32 u32Time)
{
    msleep(u32Time);
    return;
}

HI_VOID ca_udelay(HI_U32 us)
{
    udelay(us);
    return;
}

HI_VOID ca_mdelay(HI_U32 u32Time)
{
    mdelay(u32Time);
    return;
}

HI_VOID * ca_memset(void * s, int c, HI_S32 count)
{
    return memset(s, c, count);
}

HI_S32 ca_snprintf(char * buf, HI_U32 size, const char * fmt, ...)
{
    return snprintf(buf, size, fmt);
}

/*****************************************************************************
 Prototype    :
 Description  : CA V200 Module suspend function
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
int  ca_v200_pm_suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    int ret;
    HI_U32 u32Value = 0;

    ret = ca_down_trylock(&g_CaSem);
    if (HI_SUCCESS != ret)
    {
		HI_FATAL_CA("lock err! \n");
        return ret;
    }

    ret = ca_atomic_read(&u32Value);
    if (0 != u32Value)
    {
        ca_up(&g_CaSem);
		HI_FATAL_CA("not close! \n");
        return 0;
    }

    ca_up(&g_CaSem);
    
	HI_FATAL_CA("ok! \n");
    
    return 0;
}
int  ca_v200_pm_resume(PM_BASEDEV_S *pdev)
{

	HI_FATAL_CA("ok! \n");

    return 0;
}

HI_VOID CA_readReg(HI_U32 addr, HI_U32 *pu32Result)
{
    HI_REG_READ32(addr, *pu32Result);
    return;
}

HI_VOID CA_writeReg(HI_U32 addr, HI_U32 u32Result)
{
    HI_REG_WRITE32(addr, u32Result);
    return;
}

HI_VOID Sys_rdReg(HI_U32 addr, HI_U32 *pu32Result)
{
    HI_REG_READ32(addr, *pu32Result);
    return;
}

HI_VOID Sys_wtReg(HI_U32 addr, HI_U32 u32Result)
{
    HI_REG_READ32(addr, u32Result);
    return;
}

HI_VOID ca_v200_ReadReg(HI_U32 addr, HI_U32 *pu32Result)
{
    HI_U32 temp_addr = g_CaVirAddr + (addr - CA_BASE);
    HI_REG_READ32(temp_addr, *pu32Result);
    return;
}

HI_VOID ca_v200_WriteReg(HI_U32 addr, HI_U32 u32Result)
{
    HI_U32 temp_addr = g_CaVirAddr + (addr - CA_BASE);
    HI_REG_READ32(temp_addr, u32Result);
    return;
}

HI_VOID CA_OTP_READ_REG(HI_U32 addr, HI_U32 *pu32Result)
{
    HI_U32 addr_temp = ca_io_address(addr);
    HI_REG_READ32(addr_temp, *pu32Result);
    return;
}

HI_VOID CA_OTP_WRITE_REG(HI_U32 addr, HI_U32 u32Result)
{
    HI_U32 addr_temp = ca_io_address(addr);
    HI_REG_READ32(addr_temp, u32Result);
    return;
}

static long DRV_ADVCA_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    long ret;

    ret = (long)HI_DRV_UserCopy(ffile->f_dentry->d_inode, ffile, cmd, arg, CA_Ioctl);

    return ret;
}

static struct file_operations ca_fpops =
{
    .owner = THIS_MODULE,
    .open = DRV_ADVCA_Open,
    .release = DRV_ADVCA_Release,
	.unlocked_ioctl = DRV_ADVCA_Ioctl,
};

static PM_BASEOPS_S ca_drvops =
{
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = DRV_ADVCA_PmSuspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = DRV_ADVCA_PmResume,
};

/*****************************************************************************
 Prototype    :
 Description  : CA模块 proc 函数
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
extern HI_S32 DRV_ADVCA_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion);

static HI_S32 DRV_ADVCA_ProcGetSCSStatus(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32SCSStatus = 0;

    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_GET_SCSACTIVE, &u32SCSStatus);
    if(HI_SUCCESS != ret)
    {
        PROC_PRINT(p, "Get SCS Status failed!: 0x%x\n", ret);
        return ret;
    }

    if(1 == u32SCSStatus)
    {
        PROC_PRINT(p, "SCS(Secure Boot Activation): enabled\n");
    }
    else
    {
        PROC_PRINT(p, "SCS(Secure Boot Activation): not enabled\n");
    }

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetCAVendorType(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32VendorID = 0;
    CA_CMD_SUPPER_ID_S stSupperIDParam = {0};

    memset(&stSupperIDParam, 0, sizeof(stSupperIDParam));
    stSupperIDParam.enCmdChildID = CMD_CHILD_ID_GET_VENDOR_ID;
    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_SUPPER_ID, &stSupperIDParam);
    if(HI_SUCCESS != ret)
    {
        PROC_PRINT(p, "Get CA Vendor Type failed!: 0x%x\n", ret);
        return ret;
    }

    memcpy(&u32VendorID, stSupperIDParam.pu8ParamBuf, sizeof(u32VendorID));
    PROC_PRINT(p, "CA vendor type: 0x%08x\n", u32VendorID);

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetChipID(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32ChipId = 0;

    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_GET_CHIPID, &u32ChipId);
    if( HI_SUCCESS != ret )
    {
        PROC_PRINT(p, "Get Chip ID failed!: 0x%x\n", ret);
        return ret;
    }

    PROC_PRINT(p, "Chip ID: 0x%08x\n", u32ChipId);

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetMSID(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32MarketID = 0;

    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_GET_MARKETID, &u32MarketID);
    if( HI_SUCCESS != ret )
    {
        PROC_PRINT(p, "Get Market ID failed!: 0x%x\n", ret);
        return ret;
    }

    PROC_PRINT(p, "Market ID: 0x%08x\n", u32MarketID);

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetMSIDCheckEn(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_BOOL bNeedCheck = HI_FALSE;

    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_GET_BL_MSID_CHECK_EN, &bNeedCheck);
    if( HI_SUCCESS != ret )
    {
        PROC_PRINT(p, "Get MSID Check En failed!: 0x%x\n", ret);
        return ret;
    }

    if(HI_TRUE == bNeedCheck)
    {
        PROC_PRINT(p, "MSID need to check\n");
    }
    else
    {
        PROC_PRINT(p, "MSID do not need to check\n");
    }

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetVersionID(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32VersionID = 0;

    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_GET_VERSIONID, &u32VersionID);
    if( HI_SUCCESS != ret )
    {
        PROC_PRINT(p, "Get Version ID failed!: 0x%x\n", ret);
        return ret;
    }

    PROC_PRINT(p, "Version ID: 0x%08x\n", u32VersionID);

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetVersionIDCheckEn(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_BOOL bNeedCheck = HI_FALSE;

    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_GET_VERSION_CHECK_EN, &bNeedCheck);
    if( HI_SUCCESS != ret )
    {
        PROC_PRINT(p, "Get Version ID Check En failed!: 0x%x\n", ret);
        return ret;
    }

    if(HI_TRUE == bNeedCheck)
    {
        PROC_PRINT(p, "Version ID need to check\n");
    }
    else
    {
        PROC_PRINT(p, "Version ID do not need to check\n");
    }

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetSecretKeyChecksumStatus(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_UNF_ADVCA_CHECKSUM_FLAG_U unChecksum;
    CA_CMD_SUPPER_ID_S stSupperIDParam = {0};

    unChecksum.u32 = 0;
    memset(&stSupperIDParam, 0, sizeof(stSupperIDParam));
    stSupperIDParam.enCmdChildID = CMD_CHILD_ID_GET_CHECKSUM_FLAG;
    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_SUPPER_ID, &stSupperIDParam);
    if(HI_SUCCESS != ret)
    {
        PROC_PRINT(p, "Get Secret Key Checksum Status failed!: 0x%x\n", ret);
        return ret;
    }

    memcpy(&unChecksum.u32, stSupperIDParam.pu8ParamBuf, sizeof(unChecksum.u32));
    PROC_PRINT(p, "CA secret key checksum flag: 0x%08x\n", unChecksum.u32);

    if(0 == unChecksum.bits.CSA2_RootKey)
    {
        PROC_PRINT(p, "--CSA2_RootKey verify:       failed\n");
    }
    else
    {
        PROC_PRINT(p, "--CSA2_RootKey verify:       success\n");
    }
    
    if(0 == unChecksum.bits.R2R_RootKey)
    {
        PROC_PRINT(p, "--R2R_RootKey verify:        failed\n");
    }
    else
    {
        PROC_PRINT(p, "--R2R_RootKey verify:        success\n");
    }

    if(0 == unChecksum.bits.SP_RootKey)
    {
        PROC_PRINT(p, "--SP_RootKey verify:         failed\n");
    }
    else
    {
        PROC_PRINT(p, "--SP_RootKey verify:         success\n");
    }
    
    if(0 == unChecksum.bits.CSA3_RootKey)
    {
        PROC_PRINT(p, "--CSA3_RootKey verify:       failed\n");
    }
    else
    {
        PROC_PRINT(p, "--CSA3_RootKey verify:       success\n");
    }
    
    if(0 == unChecksum.bits.ChipID_JTAGKey)
    {
        PROC_PRINT(p, "--ChipID_JTAGKey verify:     failed\n");
    }
    else
    {
        PROC_PRINT(p, "--ChipID_JTAGKey verify      success\n");
    }
    
    if(0 == unChecksum.bits.ESCK)
    {
        PROC_PRINT(p, "--ESCK verify:               failed\n");
    }
    else
    {
        PROC_PRINT(p, "--ESCK verify:               success\n");
    }
    
    if(0 == unChecksum.bits.STB_RootKey)
    {
        PROC_PRINT(p, "--STB_RootKey verify:        failed\n");
    }
    else
    {
        PROC_PRINT(p, "--STB_RootKey verify:        success\n");
    }
    
    if(0 == unChecksum.bits.MISC_RootKey)
    {
        PROC_PRINT(p, "--MISC_RootKey verify:       failed\n");
    }
    else
    {
        PROC_PRINT(p, "--MISC_RootKey verify:       success\n");
    }
    
    if(0 == unChecksum.bits.HDCP_RootKey)
    {
        PROC_PRINT(p, "--HDCP_RootKey verify:       failed\n");
    }
    else
    {
        PROC_PRINT(p, "--HDCP_RootKey verify:       success\n");
    }
    
    if(0 == unChecksum.bits.OEM_RootKey)
    {
        PROC_PRINT(p, "--OEM_RootKey verify:        failed\n");
    }
    else
    {
        PROC_PRINT(p, "--OEM_RootKey verify:        success\n");
    }
    
    if(0 == unChecksum.bits.SecureCPU_PSWD)
    {
        PROC_PRINT(p, "--SecureCPU_PSWD verify:     failed\n");
    }
    else
    {
        PROC_PRINT(p, "--SecureCPU_PSWD verify:     success\n");
    }

    if(0x7ff == unChecksum.u32)
    {
        PROC_PRINT(p, "--All secret key verify:     success\n");
    }

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetChipType(struct seq_file* p)
{
    HI_CHIP_TYPE_E enChipType;
    HI_CHIP_VERSION_E enChipVersion;

    DRV_ADVCA_GetChipVersion(&enChipType, &enChipVersion);
    if( (HI_CHIP_TYPE_HI3716C == enChipType) && (HI_CHIP_VERSION_V200 == enChipVersion))
    {
        PROC_PRINT(p, "Chipset type: Hi3716CV200\n");
    }
    else if( (HI_CHIP_TYPE_HI3716CES == enChipType) && (HI_CHIP_VERSION_V200 == enChipVersion))
    {
        PROC_PRINT(p, "Chipset type: Hi3716CV200ES\n");
    }
    else if ( (HI_CHIP_TYPE_HI3718C == enChipType) && (HI_CHIP_VERSION_V100 == enChipVersion))
    {
        PROC_PRINT(p, "Chipset type: Hi3718CV100\n");
    }
    else if ( (HI_CHIP_TYPE_HI3719C == enChipType) && (HI_CHIP_VERSION_V100 == enChipVersion))
    {
        PROC_PRINT(p, "Chipset type: Hi3719CV100\n");
    }
    else if ( (HI_CHIP_TYPE_HI3719M_A == enChipType) && (HI_CHIP_VERSION_V100 == enChipVersion))
    {
        PROC_PRINT(p, "Chipset type: Hi3719MV100_A\n");
    }

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetCSA2KeyladderLevel(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enDvbLadder = HI_UNF_ADVCA_KEYLADDER_BUTT;

    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_DVB_GETLADDER, &enDvbLadder);
    if(ret != HI_SUCCESS)
    {
        PROC_PRINT(p, "Get CSA2 Key Ladder Level failed!: 0x%x\n", ret);
        return ret;
    }
    PROC_PRINT(p, "CSA2 Key Ladder: %d Level\n", enDvbLadder + 1);

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetR2RKeyladderLevel(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enR2RLadder = HI_UNF_ADVCA_KEYLADDER_BUTT;

    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_R2R_GETLADDER, &enR2RLadder);
    if(ret != HI_SUCCESS)
    {
        PROC_PRINT(p, "Get R2R Key Ladder Level failed!: 0x%x\n", ret);
        return ret;
    }
    PROC_PRINT(p, "R2R Key Ladder: %d Level\n", enR2RLadder + 1);

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetBootMode(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_UNF_ADVCA_FLASH_TYPE_E enBootMode = HI_UNF_ADVCA_FLASH_TYPE_BUTT;

    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_GET_BOOTMODE, &enBootMode);
    if(ret != HI_SUCCESS)
    {
        PROC_PRINT(p, "Get Boot Mode failed!: 0x%x\n", ret);
        return ret;
    }

    PROC_PRINT(p, "Boot Mode: %s\n", enBootMode == HI_UNF_ADVCA_FLASH_TYPE_SPI ? "SPI" :
    (enBootMode == HI_UNF_ADVCA_FLASH_TYPE_NAND ? "NAND" : (enBootMode == HI_UNF_ADVCA_FLASH_TYPE_EMMC ? "EMMC" : "Unknow")));

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetCWState(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    HI_BOOL bCWState = HI_FALSE;
    HI_BOOL bIsLock = HI_FALSE;

    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_STATHARDCWSEL, &bCWState);
    if(ret != HI_SUCCESS)
    {
        PROC_PRINT(p, "Get Hard CW Sel failed!: 0x%x\n", ret);
        return ret;
    }

    PROC_PRINT(p, "CW State: %s\n", bIsLock == 1 ? "Hardware CW only" : "Software CW");

    return HI_SUCCESS;
}

static HI_S32 DRV_ADVCA_ProcGetCAState(struct seq_file* p)
{
    HI_S32 ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stSupperIDParam = {0};
    HI_U32 u32CAState = 0;

    memset(&stSupperIDParam, 0, sizeof(stSupperIDParam));
    stSupperIDParam.enCmdChildID = CMD_CHILD_ID_GET_CASTATE;
    ret = DRV_ADVCA_V300_Ioctl(CMD_CA_SUPPER_ID, &stSupperIDParam);
    if(ret != HI_SUCCESS)
    {
        PROC_PRINT(p, "Get CA Error State failed!: 0x%x\n", ret);
        return ret;
    }

    memcpy(&u32CAState, stSupperIDParam.pu8ParamBuf, sizeof(u32CAState));
    PROC_PRINT(p, "CA Error state: 0x%x\n", (u32CAState & 0xF));

    return HI_SUCCESS;
}

HI_S32 DRV_ADVCA_ProcRead(struct seq_file *p, HI_VOID *v)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 au32Debug[3] = {0};

    PROC_PRINT(p, "====================================\n");    
    (HI_VOID)DRV_ADVCA_ProcGetSCSStatus(p);
    PROC_PRINT(p, "====================================\n");    
    (HI_VOID)DRV_ADVCA_ProcGetCAVendorType(p);
    PROC_PRINT(p, "====================================\n");
    (HI_VOID)DRV_ADVCA_ProcGetChipID(p);
    PROC_PRINT(p, "====================================\n");    
    (HI_VOID)DRV_ADVCA_ProcGetMSID(p);
    (HI_VOID)DRV_ADVCA_ProcGetMSIDCheckEn(p);
    PROC_PRINT(p, "====================================\n");
    (HI_VOID)DRV_ADVCA_ProcGetVersionID(p);
    (HI_VOID)DRV_ADVCA_ProcGetVersionIDCheckEn(p);
    PROC_PRINT(p, "====================================\n");
    (HI_VOID)DRV_ADVCA_ProcGetSecretKeyChecksumStatus(p);
    PROC_PRINT(p, "====================================\n");
    (HI_VOID)DRV_ADVCA_ProcGetChipType(p);
    PROC_PRINT(p, "====================================\n");
    (HI_VOID)DRV_ADVCA_ProcGetCSA2KeyladderLevel(p);
    PROC_PRINT(p, "====================================\n");
    (HI_VOID)DRV_ADVCA_ProcGetR2RKeyladderLevel(p);
    PROC_PRINT(p, "====================================\n");
    (HI_VOID)DRV_ADVCA_ProcGetBootMode(p);
    PROC_PRINT(p, "====================================\n");
    (HI_VOID)DRV_ADVCA_ProcGetCWState(p);
    PROC_PRINT(p, "====================================\n");
    (HI_VOID)DRV_ADVCA_ProcGetCAState(p);
    PROC_PRINT(p, "====================================\n");
    ret = HAL_ADVCA_ProcGetReginfo(au32Debug);
    if( NULL != HI_SUCCESS)
    {
        HI_ERR_CA("Failed to get reg infomation\n");
    }
    else
    {
        PROC_PRINT(p,"Register infomation: 0x%08x, 0x%08x, 0x%08x\n", au32Debug[0], au32Debug[1], au32Debug[2]);
    }

    PROC_PRINT(p, "====================================\n");

    return HI_SUCCESS;
}

HI_S32 DRV_ADVCA_ProcWrite(struct file * file, const char __user * buf, size_t count, loff_t *ppos)
{
    HI_CHAR ProcPara[64];

    if (copy_from_user(ProcPara, buf, count))
    {
        return -EFAULT;
    }

    /* bootrom debug infomation */
    return count;
}

/*****************************************************************************
 Prototype    :
 Description  : CA模块 注册函数
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
static HI_S32 __INIT__ ADVCA_DRV_ModeInit(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32VendorId = 0;
    HI_U8 u8Revision[25] = {0};
    DRV_PROC_EX_S stProcFunc = {0};

	ret = DRV_ADVCA_ModeInit_0();
	if(ret != HI_SUCCESS)
    {
		return HI_FAILURE;
	}

    ret = DRV_ADVCA_GetVendorId(&u32VendorId);
    if(ret != HI_SUCCESS)
    {
        HI_FATAL_CA("Get CA vendor failed.\n");
        goto err0;
    }

    ret = DRV_ADVCA_GetRevision(u8Revision);
    if(ret != HI_SUCCESS)
    {
        HI_FATAL_CA("Get CA Revision failed.\n");
        goto err0;
    }

	ca_snprintf(caUmapDev.devfs_name, sizeof(caUmapDev.devfs_name), UMAP_DEVNAME_CA);
	caUmapDev.minor  = UMAP_MIN_MINOR_CA;
	caUmapDev.owner  = THIS_MODULE;
	caUmapDev.fops   = &ca_fpops;
	caUmapDev.drvops = &ca_drvops;
    if (HI_DRV_DEV_Register(&caUmapDev) < 0)
    {
        HI_FATAL_CA("register CA failed.\n");
		goto err0;
    }

    stProcFunc.fnRead = DRV_ADVCA_ProcRead;
    stProcFunc.fnWrite = DRV_ADVCA_ProcWrite;

    HI_DRV_PROC_AddModule(HI_MOD_CA, &stProcFunc, NULL);

#ifdef MODULE
    HI_PRINT("Load hi_advca.ko(VendorId:0x%02x Revision:%s) success.\t(%s)\n", u32VendorId, u8Revision, VERSION_STRING);
#endif

    return HI_SUCCESS;

err0:

	DRV_ADVCA_ModeExit_0();
	return HI_FAILURE;
}

static HI_VOID __EXIT__ ADVCA_DRV_ModeExit(HI_VOID)
{
    HI_DRV_PROC_RemoveModule(HI_MOD_CA);

    HI_DRV_DEV_UnRegister(&caUmapDev);

    DRV_ADVCA_ModeExit_0();

    return;
}
#ifdef MODULE
module_init(ADVCA_DRV_ModeInit);
module_exit(ADVCA_DRV_ModeExit);
#endif

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("HISILICON");

