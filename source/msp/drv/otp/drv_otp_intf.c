/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_otp_intf.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
#include <linux/seq_file.h>
#include <linux/device.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/delay.h>
#include <linux/poll.h>
#include <mach/hardware.h>
#include <linux/interrupt.h>
#include <linux/slab.h>
#include <linux/spinlock.h>
#include <linux/vmalloc.h>

#include "hi_kernel_adapt.h"
#include "drv_otp.h"
#include "drv_otp_ext.h"
#include "hi_drv_dev.h"
#include "drv_cipher_ext.h"
#include "hi_drv_module.h"
#include "drv_otp_common.h"
#include "drv_otp_ioctl.h"
#include "drv_otp_v200.h"
#include "hi_drv_proc.h"

CIPHER_RegisterFunctionlist_S *g_pCIPHERExportFunctionList = NULL;
extern HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion);

static UMAP_DEVICE_S   g_stOtpUmapDev;
HI_DECLARE_MUTEX(g_OtpMutex);

static HI_VOID OTP_ProcGetHelpInfo(HI_VOID)
{
    HI_PRINT("\nUsage as following: \n");
    HI_PRINT("    cat /proc/hisi/msp/otp                      Display all proc information \n");
    HI_PRINT("    echo help > /proc/hisi/msp/otp              Display help infomation for otp proc module \n");
    HI_PRINT("    echo write addr data > /proc/hisi/msp/otp   Set data to addr in otp, byte by byte \n");
    HI_PRINT("    For example: echo write 0x******** 0x******** > /proc/hisi/msp/otp \n");

    HI_PRINT("\n    Attention:\n");
    HI_PRINT("        1 Operations must be carefully when setting data to otp !!!\n");
    HI_PRINT("        2 Input 'addr' and 'data' must be take the '0x' prefix in hex format !!!\n");
    HI_PRINT("        3 Otp must be set byte by byte !!!\n");

    return;
}

static HI_S32 OTP_ProcReadAllOver(struct seq_file *p)
{
    HI_U32 *pu32Val = NULL;
    HI_U32 u32Addr = 0;

    PROC_PRINT(p, "OTP read all over:\n");
    pu32Val = (HI_U32 *)vmalloc(0x800);
    
    if(NULL == pu32Val)
    {
        HI_ERR_OTP("vmalloc(size 0x800) failed!");
        return HI_FAILURE;
    }

    for (u32Addr = 0; u32Addr < 0x800; u32Addr+=4)
    {
        if (0 == (u32Addr & 0xF))
        {
            PROC_PRINT(p, "\n%04x: ", u32Addr);
        }

        pu32Val[u32Addr/4] = DRV_OTP_Read(u32Addr);
        PROC_PRINT(p, "%08x ", pu32Val[u32Addr/4]);
    }

    PROC_PRINT(p, "\n");

    if(NULL != pu32Val)
    {
        vfree((HI_VOID *)pu32Val);
    }

    return HI_SUCCESS;
}

HI_S32 OTP_ProcRead(struct seq_file *p, HI_VOID *v)
{
    PROC_PRINT(p, "---------Hisilicon OTP Info---------\n");

    OTP_ProcReadAllOver(p);

    PROC_PRINT(p, "---------Hisilicon otp Info End---------\n");

    return HI_SUCCESS;
}

HI_S32 OTP_ProcWrite(struct file * file, const char __user * pBufIn, size_t count, loff_t *ppos)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHAR ProcParam[256];
    HI_CHAR *ptr1 = NULL;
    HI_CHAR *ptr2 = NULL;
    HI_U32 u32Addr = 0;
    HI_U32 u32Value = 0;

    if (count > sizeof(ProcParam))
    {
        HI_ERR_OTP("The command string is out of buf space :%d bytes !\n", sizeof(ProcParam));
        (HI_VOID)OTP_ProcGetHelpInfo();
        return HI_FAILURE;
    }

    memset(ProcParam, 0, sizeof(ProcParam));

    if (copy_from_user(ProcParam, pBufIn, count))
    {
        HI_ERR_OTP("failed to call copy_from_user !\n");
        (HI_VOID)OTP_ProcGetHelpInfo();
        return -EFAULT;
    }

    ptr1 = strstr(ProcParam, "help");
    if( NULL != ptr1)
    {
        (HI_VOID)OTP_ProcGetHelpInfo();
        return count;
    }

    ptr1 = strstr(ProcParam, "write");
    if( NULL == ptr1)
    {
        HI_ERR_OTP("Invalid write otp command !\n");
        (HI_VOID)OTP_ProcGetHelpInfo();
        return HI_FAILURE;
    }

    ptr1 = strstr(ProcParam, "0x");
    if( NULL == ptr1)
    {
        HI_ERR_OTP("Invalid write otp command !\n");
        (HI_VOID)OTP_ProcGetHelpInfo();
        return HI_FAILURE;
    }

    u32Addr = (HI_U32)simple_strtoul(ptr1, &ptr2, 16);
    if(NULL == ptr2)
    {
        HI_ERR_OTP("Invalid write otp command !\n");
        return HI_FAILURE;
    }

    ptr2 = strstr(ptr2, "0x");
    if( NULL == ptr2)
    {
        HI_ERR_OTP("Invalid write otp command !\n");
        (HI_VOID)OTP_ProcGetHelpInfo();
        return HI_FAILURE;
    }

    if ( 0x800 <= u32Addr )
    {
        HI_ERR_OTP("Invalid input addr !\n\n");
        (HI_VOID)OTP_ProcGetHelpInfo();
        return HI_FAILURE;
    }

    u32Value = (HI_U32)simple_strtoul(ptr2, &ptr1, 16);
    if(0 != (u32Value & 0xffffff00))
    {
        HI_ERR_OTP("Invalid input data, data should be type of HI_U8 !\n\n");
        (HI_VOID)OTP_ProcGetHelpInfo();
        return HI_FAILURE;
    }

    HI_WARN_OTP("u32Addr = 0x%08x  ", u32Addr);
    HI_WARN_OTP("u8Value = 0x%02x\n", u32Value & 0xffffff00);

    ret = DRV_OTP_Write_Byte(u32Addr, (HI_U8)(u32Value & 0xff));
    if(HI_SUCCESS != ret)
    {
        HI_ERR_OTP("Write otp failed, ret = 0x%08x !\n", ret);
        return HI_FAILURE;
    }

    return count;
}

HI_S32 OTP_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, HI_VOID *arg)
{
    HI_S32   Ret = HI_SUCCESS;

    if(down_interruptible(&g_OtpMutex))
    {
        return -1;
    }

    switch (cmd)
    {
        case CMD_OTP_READ:
        {
            OTP_ENTRY_S *pOtpEntry = (OTP_ENTRY_S *)arg;
            pOtpEntry->Value = DRV_OTP_Read(pOtpEntry->Addr);
            break;
        }
        case CMD_OTP_WRITE:
        {
            OTP_ENTRY_S *pOtpEntry = (OTP_ENTRY_S *)arg; 
            Ret = DRV_OTP_Write(pOtpEntry->Addr, pOtpEntry->Value);
            break;
        }
        case CMD_OTP_WRITE_BYTE:
        {
            OTP_ENTRY_S *pOtpEntry = (OTP_ENTRY_S *)arg;
            //OTP_Write_Byte(pOtpEntry->Addr, pOtpEntry->Value); 
            Ret = DRV_OTP_Write_Byte(pOtpEntry->Addr, pOtpEntry->Value);
            break;
        } 
        case CMD_OTP_FUNCDISABLE:
        {
            HI_U32 u32SRBit = *(HI_U32*)arg;
			Ret = DRV_OTP_Func_Disable(u32SRBit);
            break;
        }
        case CMD_OTP_SETCUSTOMERKEY:
        {
            OTP_CUSTOMER_KEY_TRANSTER_S *pstCustomerKeyTransfer = (OTP_CUSTOMER_KEY_TRANSTER_S *)arg;
            if ( OTP_CUSTOMER_KEY_LEN != pstCustomerKeyTransfer->u32KeyLen )
            {
                HI_ERR_OTP("Invalid otp customer key length!\n");
                Ret = HI_FAILURE;
                break;                    
            }

            Ret = DRV_OTP_Set_CustomerKey(&(pstCustomerKeyTransfer->stkey));
            break;
        }
        case CMD_OTP_GETCUSTOMERKEY:
        {
            OTP_CUSTOMER_KEY_TRANSTER_S *pstCustomerKeyTransfer = (OTP_CUSTOMER_KEY_TRANSTER_S *)arg;            
            OTP_CUSTOMER_KEY_S *pCustomerKey = &(pstCustomerKeyTransfer->stkey);
            
            if ( OTP_CUSTOMER_KEY_LEN != pstCustomerKeyTransfer->u32KeyLen )
            {
                HI_ERR_OTP("Invalid otp customer key length!\n");
                Ret = HI_FAILURE;
                break;                    
            }

            Ret = DRV_OTP_Get_CustomerKey(pCustomerKey);
            break;
        }
        case CMD_OTP_GETDDPLUSFLAG:
        {
            HI_BOOL *pDDPLUSFlag = (HI_BOOL*)arg;
            Ret = DRV_OTP_Get_DDPLUS_Flag(pDDPLUSFlag);
            
            break;
        }
        case CMD_OTP_GETDTSFLAG:
        {
            HI_BOOL *pDTSFlag = (HI_BOOL*)arg;
            Ret = DRV_OTP_Get_DTS_Flag(pDTSFlag);
            
            break;
        }
        case CMD_OTP_SETSTBPRIVDATA:
        {
            OTP_STB_PRIV_DATA_S *pStbPrivData = (OTP_STB_PRIV_DATA_S*)arg;
	        Ret = DRV_OTP_Set_StbPrivData(pStbPrivData);

			break;
        }
        case CMD_OTP_GETSTBPRIVDATA:
        {
           	OTP_STB_PRIV_DATA_S *pStbPrivData = (OTP_STB_PRIV_DATA_S*)arg;
            Ret = DRV_OTP_Get_StbPrivData(pStbPrivData);
			break;
        }
        case CMD_OTP_WRITE_BIT:
        {
            HI_U32 u32BitPos = 0;
            HI_U32 u32BitValue = 0;

            //The higher 16 bits are the position, the lower 16 bits are the value
            OTP_ENTRY_S *pOtpEntry = (OTP_ENTRY_S *)arg;
            u32BitPos = (pOtpEntry->Value >> 16) & 0xffff;
            u32BitValue = pOtpEntry->Value & 0xffff;
            Ret = DRV_OTP_Write_Bit(pOtpEntry->Addr, u32BitPos, u32BitValue);
            break;
        }
        case CMD_OTP_RESET:
        {
            Ret = DRV_OTP_Reset();
            break;
        }
        case CMD_OTP_WRITEHDCPROOTKEY:
        {
            HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
            HI_CHIP_VERSION_E enchipVersion = 0;

            HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
            if( ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3712 == enchipType))
            || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716CES == enchipType))
            || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716C == enchipType))
            || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3718C == enchipType))
            || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719C == enchipType))
            || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719M_A == enchipType)))
            {
                OTP_HDCP_ROOT_KEY_S stHdcpRootKey = *(OTP_HDCP_ROOT_KEY_S *)arg;            
                Ret = OTP_V200_SetHdcpRootKey(stHdcpRootKey.u8Key);
                if ( HI_SUCCESS != Ret )
                {
                    break;
                }

                /* including otpv100 and otpv200 reseting */
                Ret = DRV_OTP_Reset();
            }
            else
            {
                HI_ERR_OTP("Not supported!\n");
                Ret = HI_FAILURE;
            }
            
            break;
        }
        case CMD_OTP_READHDCPROOTKEY:
        {
            HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
            HI_CHIP_VERSION_E enchipVersion = 0;

            HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
            if( (HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3712 == enchipType) )
            {
                OTP_HDCP_ROOT_KEY_S *pstHdcpRootKey = (OTP_HDCP_ROOT_KEY_S *)arg;
                Ret = OTP_V200_GetHdcpRootKey(pstHdcpRootKey->u8Key);
            }
            else
            {
                HI_ERR_OTP("Not supported!\n");
                Ret = HI_FAILURE;
            }
            break;
        }
        case CMD_OTP_LOCKHDCPROOTKEY:
        {
            HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
            HI_CHIP_VERSION_E enchipVersion = 0;

            HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
            if( ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3712 == enchipType))
                || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716CES == enchipType))
                || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3718C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719M_A == enchipType)))
            {
                Ret = OTP_V200_SetHdcpRootKeyLock();
            }
            else
            {
                HI_ERR_OTP("Not supported!\n");
                Ret = HI_FAILURE;
            }
            
            break;
        }
        case CMD_OTP_GETHDCPROOTKEYLOCKFLAG:
        {
            HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
            HI_CHIP_VERSION_E enchipVersion = 0;

            HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
            if( ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3712 == enchipType))
                || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716CES == enchipType))
                || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3718C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719M_A == enchipType)))
            {
                HI_BOOL *pbKeyLockFlag = (HI_BOOL *)arg;
                Ret = OTP_V200_GetHdcpRootKeyLock(pbKeyLockFlag);
            }
            else
            {
                HI_ERR_OTP("Not supported!\n");
                Ret = HI_FAILURE;
            }
            
            break;
        }
        case CMD_OTP_WRITESTBROOTKEY:
        {
			HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
            HI_CHIP_VERSION_E enchipVersion = 0;

            HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
            if( ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3712 == enchipType))
                || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716CES == enchipType))
                || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3718C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719M_A == enchipType)))
            {
                OTP_STB_ROOT_KEY_S stSTBRootKey = *(OTP_STB_ROOT_KEY_S *)arg;
                Ret = OTP_V200_SetSTBRootKey(stSTBRootKey.u8Key);
                if ( HI_SUCCESS != Ret )
                {
                    break;
                }

                /* including otpv100 and otpv200 reseting */
                Ret = DRV_OTP_Reset();
                Ret |= g_pCIPHERExportFunctionList->DRV_Cipher_SoftReset();
            }
            else
            {
                HI_ERR_OTP("Not supported!\n");
                Ret = HI_FAILURE;
            }
            break;
        }
        case CMD_OTP_READSTBROOTKEY:
        {
			HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
            HI_CHIP_VERSION_E enchipVersion = 0;

            HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
            if( (HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3712 == enchipType) )
            {
                OTP_STB_ROOT_KEY_S *pstSTBRootKey = (OTP_STB_ROOT_KEY_S *)arg;
            	Ret = OTP_V200_GetSTBRootKey(pstSTBRootKey->u8Key);
            }
            else
            {
                HI_ERR_OTP("Not supported!\n");
                Ret = HI_FAILURE;
            }

            break;
        }
        case CMD_OTP_LOCKSTBROOTKEY:
        {
			HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
            HI_CHIP_VERSION_E enchipVersion = 0;

            HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
            if( ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3712 == enchipType))
                || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716CES == enchipType))
                || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3718C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719M_A == enchipType)))
            {
                Ret = OTP_V200_LockSTBRootKey();
            }
            else
            {
                HI_ERR_OTP("Not supported!\n");
                Ret = HI_FAILURE;
            }
            break;
        }
        case CMD_OTP_GETSTBROOTKEYLOCKFLAG:
        {
			HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
            HI_CHIP_VERSION_E enchipVersion = 0;

            HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
            if( ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3712 == enchipType))
                || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716CES == enchipType))
                || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3718C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719C == enchipType))
                || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719M_A == enchipType)))
            {
                HI_BOOL *pbSTBRootKeyLockFlag = (HI_BOOL *)arg;
	            Ret = OTP_V200_GetSTBRootKeyLockFlag(pbSTBRootKeyLockFlag);
            }
            else
            {
                HI_ERR_OTP("Not supported!\n");
                Ret = HI_FAILURE;
            }
            break;
        }
        default:
        {
            Ret = -ENOTTY;
            break;
        }
    }

    up(&g_OtpMutex);
    return Ret;
}

static HI_S32 DRV_OTP_Open(struct inode *inode, struct file *filp)
{
    HI_S32 ret = HI_SUCCESS;

    if(down_interruptible(&g_OtpMutex))
    {
        return -1;        
    }

	ret = HI_DRV_MODULE_GetFunction(HI_ID_CIPHER, (HI_VOID**)&g_pCIPHERExportFunctionList);
	if( (HI_SUCCESS != ret) || (NULL == g_pCIPHERExportFunctionList) )
	{
		HI_FATAL_OTP("Get cipher functions failed!\n");	
		return HI_FAILURE;
	}

    up(&g_OtpMutex);
    return 0;
}

static HI_S32 DRV_OTP_Close(struct inode *inode, struct file *filp)
{
    if(down_interruptible(&g_OtpMutex))
    {
        return -1;        
    }

    up(&g_OtpMutex);
    return 0;
}


static long DRV_OTP_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    long Ret;

    Ret = (long)HI_DRV_UserCopy(ffile->f_dentry->d_inode, ffile, cmd, arg, OTP_Ioctl);

    return Ret;
}

static struct file_operations OTP_FOPS =
{
    .owner          = THIS_MODULE,
    .open           = DRV_OTP_Open,
    .unlocked_ioctl = DRV_OTP_Ioctl,
    .release        = DRV_OTP_Close,
};
 
static int  otp_pm_suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
	HI_FATAL_OTP("otp_pm_suspend ok \n");
	return 0;
}

static int  otp_pm_resume(PM_BASEDEV_S *pdev)
{
	HI_FATAL_OTP("otp_pm_resume ok \n"); 
	return 0;
}

static PM_BASEOPS_S  otp_drvops = {
	.probe        = NULL,
	.remove       = NULL,
	.shutdown     = NULL,
	.prepare      = NULL,
	.complete     = NULL,
	.suspend      = otp_pm_suspend,
	.suspend_late = NULL,
	.resume_early = NULL,
	.resume       = otp_pm_resume,
};


HI_S32 OTP_DRV_ModInit(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;
    DRV_PROC_EX_S stProcFunc = {0};

    snprintf(g_stOtpUmapDev.devfs_name, sizeof(UMAP_DEVNAME_OTP), UMAP_DEVNAME_OTP);
    g_stOtpUmapDev.minor = UMAP_MIN_MINOR_OTP;
	g_stOtpUmapDev.owner  = THIS_MODULE;
	g_stOtpUmapDev.drvops = &otp_drvops;
    g_stOtpUmapDev.fops = &OTP_FOPS;

    if (HI_DRV_DEV_Register(&g_stOtpUmapDev) < 0)
    {
        HI_FATAL_OTP("register otp failed.\n");
        return HI_FAILURE;
    }

    ret = DRV_OTP_Init();
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    stProcFunc.fnRead   = OTP_ProcRead;
    stProcFunc.fnWrite  = OTP_ProcWrite;
    HI_DRV_PROC_AddModule(HI_MOD_OTP, &stProcFunc, NULL);

#ifdef MODULE
    HI_PRINT("Load hi_otp.ko success.  \t(%s)\n", VERSION_STRING);
#endif

    return 0;
}

HI_VOID OTP_DRV_ModExit(HI_VOID)
{
    HI_DRV_PROC_RemoveModule(HI_MOD_OTP);

    DRV_OTP_DeInit();

    HI_DRV_DEV_UnRegister(&g_stOtpUmapDev);
    return;
}

#ifdef MODULE
module_init(OTP_DRV_ModInit);
module_exit(OTP_DRV_ModExit);
#endif

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("HISILICON");

