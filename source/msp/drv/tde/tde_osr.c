#include <linux/version.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/miscdevice.h>
#include <linux/kernel.h>    /* printk() */
#include <linux/slab.h>      /* kmalloc() */
#include <linux/fs.h>        /* everything... */
#include <linux/errno.h> /* error codes */
#include <linux/types.h> /* size_t */
#include <linux/fcntl.h> /* O_ACCMODE */
#include <linux/cdev.h>
#include <asm/uaccess.h> /* copy_*_user */
#include <linux/interrupt.h>
#include <linux/poll.h>
#include <linux/workqueue.h>
#include <asm/io.h>

#ifdef CONFIG_PROC_FS
#include <linux/proc_fs.h>
#endif

#include "hi_type.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "tde_proc.h"
#include "hi_gfx_comm_k.h"
#include "tde_config.h"
#define MKSTR(exp) # exp
#define MKMARCOTOSTR(exp) MKSTR(exp)

extern int tde_init_module_k(void);
extern void tde_cleanup_module_k(void);
extern int tde_open(struct inode *finode, struct file  *ffile);
extern int tde_release(struct inode *finode, struct file  *ffile);

extern long tde_ioctl(struct file  *ffile, unsigned int  cmd, unsigned long arg); 

extern int tde_pm_suspend(PM_BASEDEV_S *pdev, pm_message_t state);
extern int tde_pm_resume(PM_BASEDEV_S *pdev);

DECLARE_GFX_NODE("hi_tde",tde_open, tde_release, tde_ioctl, tde_pm_suspend, tde_pm_resume);

HI_S32  TDE_DRV_ModInit(HI_VOID)
{

#ifndef HI_MCE_SUPPORT
    int ret = 0;
    ret = tde_init_module_k();
    if (0 != ret)
    {
        return -1;
    }    
#endif
    /* register tde device */
    HI_GFX_PM_Register();

#ifndef CONFIG_TDE_PROC_DISABLE
{
   GFX_PROC_ITEM_S pProcItem = {tde_read_proc,tde_write_proc,NULL};
   HI_GFX_PROC_AddModule("tde", &pProcItem, NULL);
}    
#endif
#ifndef CONFIG_TDE_VERSION_DISABLE
   HI_GFX_ShowVersionK(HIGFX_TDE_ID);
#endif
    return 0;
}

HI_VOID  TDE_DRV_ModExit(HI_VOID)
{
    #ifndef CONFIG_TDE_PROC_DISABLE
    HI_GFX_PROC_RemoveModule("tde");
    #endif
#ifndef HI_MCE_SUPPORT
    tde_cleanup_module_k();
#endif

    /* cleanup_module is never called if registering failed */
    HI_GFX_PM_UnRegister();
}

#ifdef MODULE
module_init(TDE_DRV_ModInit);
module_exit(TDE_DRV_ModExit);
#endif


MODULE_AUTHOR("Digital Media Team, Hisilicon crop.");
MODULE_DESCRIPTION("Hisilicon TDE Device driver for X5HD");
MODULE_LICENSE("GPL");
MODULE_VERSION("V1.0.0.0");


