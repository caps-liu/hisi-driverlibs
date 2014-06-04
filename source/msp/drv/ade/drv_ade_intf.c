#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <linux/vmalloc.h>
#include <linux/interrupt.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <mach/hardware.h>

/* Unf headers */
#include "hi_error_mpi.h"
#include "hi_drv_mmz.h"
#include "hi_drv_stat.h"
#include "hi_drv_sys.h"
#include "hi_drv_proc.h"

/* Drv headers */
#include "drv_ade_ext.h"
#include "drv_ade_private.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */


static struct file_operations s_stDevFileOpts =
{
    .owner = THIS_MODULE,
    .unlocked_ioctl = ADE_DRV_Ioctl,
    .open			= ADE_DRV_Open,
    .release		= ADE_DRV_Release,
};

static PM_BASEOPS_S s_stDrvOps = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = ADE_DRV_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = ADE_DRV_Resume,
};

static ADE_REGISTER_PARAM_S s_stProcParam = {
    .pfnReadProc  = ADE_DRV_ReadProc,
    .pfnWriteProc = ADE_DRV_WriteProc,
};

/* the attribute struct of audio decode engine device */
static UMAP_DEVICE_S s_stAdeUmapDev;

static __inline__ int  ADE_DRV_RegisterDev(void)
{
    /*register aenc chn device*/
    sprintf(s_stAdeUmapDev.devfs_name, UMAP_DEVNAME_ADE);
    s_stAdeUmapDev.fops   = &s_stDevFileOpts;
    s_stAdeUmapDev.minor  = UMAP_MIN_MINOR_ADE;
    s_stAdeUmapDev.owner  = THIS_MODULE;
    s_stAdeUmapDev.drvops = &s_stDrvOps;
    if (HI_DRV_DEV_Register(&s_stAdeUmapDev) < 0)
    {
        HI_FATAL_ADE("FATAL: vdec register device failed\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static __inline__ void ADE_DRV_UnregisterDev(void)
{
    /*unregister aenc chn device*/
    HI_DRV_DEV_UnRegister(&s_stAdeUmapDev);
}

HI_S32 ADE_DRV_ModInit(HI_VOID)
{
    int ret;

#ifndef HI_MCE_SUPPORT
    ret = ADE_DRV_Init();
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_ADE("Init drv fail!\n");
        return HI_FAILURE;
    }
#endif


    ret = ADE_DRV_RegisterProc(&s_stProcParam);
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_ADE("Reg proc fail!\n");
        return HI_FAILURE;
    }

    ret = ADE_DRV_RegisterDev();
    if (HI_SUCCESS != ret)
    {
        ADE_DRV_UnregisterProc();
        HI_FATAL_ADE("Reg dev fail!\n");
        return HI_FAILURE;
    }

#ifdef MODULE
    HI_PRINT("Load hi_ade.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return HI_SUCCESS;
}

HI_VOID ADE_DRV_ModExit(HI_VOID)
{
    ADE_DRV_UnregisterDev();
    ADE_DRV_UnregisterProc();

#ifndef HI_MCE_SUPPORT
    ADE_DRV_Exit();
#endif

    return;
}

#ifdef MODULE
module_init(ADE_DRV_ModInit);
module_exit(ADE_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */
