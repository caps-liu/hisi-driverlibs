/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_hdcp_intf.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
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
#include <linux/delay.h>
#include <linux/mm.h>

#include "hi_common.h"
#include "hi_drv_dev.h"
#include "hi_drv_module.h"
#include "drv_hdcp_ioctl.h"

static UMAP_DEVICE_S g_HDCP_Device;

extern int DRV_HDCP_Open(struct inode *inode, struct file *filp);
extern int DRV_HDCP_Release(struct inode *inode, struct file *filp);
extern HI_S32 HDCP_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, void* arg);

static long DRV_HDCP_Ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
    long Ret = HI_SUCCESS;
	Ret = (long)HI_DRV_UserCopy(file->f_dentry->d_inode, file, cmd, arg, HDCP_Ioctl);

    return Ret;
}

static struct file_operations Drv_HDCP_Fops =
{
    .owner          = THIS_MODULE,
    .open           = DRV_HDCP_Open,
    .release        = DRV_HDCP_Release,
    .unlocked_ioctl = DRV_HDCP_Ioctl,
};

static PM_BASEOPS_S HDCP_drvops =
{
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = NULL,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = NULL,
};


/*****************************************************************************
 Prototype    :
 Description  : SetHDCP module register function
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
HI_S32 HDCP_DRV_ModInit(HI_VOID)
{
    snprintf(g_HDCP_Device.devfs_name, sizeof(UMAP_DEVNAME_SETHDCP), UMAP_DEVNAME_SETHDCP);
    g_HDCP_Device.minor  = UMAP_MIN_MINOR_SETHDCP;
    g_HDCP_Device.owner  = THIS_MODULE;
    g_HDCP_Device.fops   = &Drv_HDCP_Fops;
    g_HDCP_Device.drvops = &HDCP_drvops;

    if (HI_DRV_DEV_Register(&g_HDCP_Device) < 0)
    {
        HI_ERR_HDCP("Error:register HDCP failed.\n");
		goto _ERROR_;
    }

#ifdef MODULE
    HI_PRINT("Load hi_hdcp.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return HI_SUCCESS;

_ERROR_:
	return HI_FAILURE;
}

HI_VOID HDCP_DRV_ModExit(HI_VOID)
{
    HI_DRV_DEV_UnRegister(&g_HDCP_Device);
    return;
}

#ifdef MODULE
module_init(HDCP_DRV_ModInit);
module_exit(HDCP_DRV_ModExit);
#endif

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("HISILICON");
