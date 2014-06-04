#include <linux/clk.h>
#include <mach/platform.h>
#include <linux/clkdev.h>
#include <asm/clkdev.h>
#include <mach/clock.h>
#include <linux/kernel.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#ifdef CONFIG_PROC_FS
#include <linux/proc_fs.h>
#endif
#include <linux/seq_file.h>

#include "hi_drv_proc.h"
#include "hi_drv_pmoc.h"

int gpu_dvfs_set_voltage(unsigned int voltage);
int gpu_dvfs_set_freq(unsigned int freq);
unsigned int gpu_dvfs_get_voltage(void);
unsigned int gpu_dvfs_get_freq(void);


HI_S32 GPUDebugCtrl(HI_U32 u32Para1, HI_U32 u32Para2)
{
	HI_U32 u32CpuCurFreq = 0;
    
    HI_INFO_PM("\n gpu freq = 0x%x, voltage = 0x%x \n", u32Para1, u32Para2);
    
	if ((0 == u32Para1) && (0 == u32Para2))
	{
		HI_ERR_PM("plese set the valid value \n");
		return HI_SUCCESS;
	}
    
    
	//TODO check param invaild
	if (0 == u32Para2)
	{
        gpu_dvfs_set_freq(u32Para1);
		//printk("\n set rate2 = 0x%x finish \n", u32Para1);
		
		return HI_SUCCESS;
	}
	else if (0 == u32Para1)
	{
		gpu_dvfs_set_voltage(u32Para2);
		//printk("\n set volt = 0x%x finish \n", u32Para2);
		
		return HI_SUCCESS;
	}
	u32CpuCurFreq = gpu_dvfs_get_freq();
	if (u32Para1 > u32CpuCurFreq)
	{
		gpu_dvfs_set_voltage(u32Para2);
		//printk("\n set rate = 0x%x before \n", u32Para1);
		gpu_dvfs_set_freq(u32Para1);
		//printk("\n set rate = 0x%x finish \n", u32Para1);
	}
	else
	{
		//printk("\n set rate = 0x%x before \n", u32Para1);
		gpu_dvfs_set_freq(u32Para1);
		//printk("\n set rate = 0x%x finish \n", u32Para1);
		gpu_dvfs_set_voltage(u32Para2);
		//printk("\n set volt = 0x%x finish \n", u32Para2);
	}
    
    return HI_SUCCESS;
}

static HI_S32 GPUProcRead(struct seq_file *p, HI_VOID *v)
{
	unsigned int u32GpuVolt, u32GpuFreq;
    
    u32GpuFreq = gpu_dvfs_get_freq();
    
	u32GpuVolt = gpu_dvfs_get_voltage();
	
	PROC_PRINT(p, "gpu_freq = %d(Khz) gpu_volt = %d(mv) \n", u32GpuFreq, u32GpuVolt);

    return 0;
}

static HI_S32 GPUProcWrite(struct file * file,
                           const char __user * buf, size_t count, loff_t *ppos)
{
    return HI_DRV_PROC_ModuleWrite(file, buf, count, ppos, GPUDebugCtrl);
}

int gpu_proc_create(void)
{
    DRV_PROC_ITEM_S *item;
	item = HI_DRV_PROC_AddModule("pm_gpu", NULL, NULL);
    if (!item)
    {
        HI_ERR_PM(KERN_ERR "add GPU proc module failed\n");
        return -1;
    }
	item->read	    = GPUProcRead;
	item->write     = GPUProcWrite;
    return 0;
}

int gpu_proc_destroy(void)
{
    HI_DRV_PROC_RemoveModule("pm_gpu");
    return 0;
}


