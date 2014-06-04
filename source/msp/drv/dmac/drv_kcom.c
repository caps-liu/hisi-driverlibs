#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/mm.h>
#include <linux/mman.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/device.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/smp_lock.h>
//#include <linux/devfs_fs_kernel.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <mach/hardware.h>
#include <asm/io.h>
#include <asm/system.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/spinlock.h>
#include <linux/vmalloc.h>
#include <linux/string.h>
#include <linux/list.h>
#include <linux/time.h>
//#include <linux/kcom.h>
#include "hi_drv_dmac.h"


int kcom_dmac_channelclose(unsigned int channel)
{
    return dmac_channelclose(channel);
}

int kcom_dmac_register_isr(unsigned int channel,void *pisr)
{
    return dmac_register_isr(channel, pisr);
}

int kcom_dmac_channel_free(unsigned int channel)
{
    return dmac_channel_free(channel);
}

int kcom_free_dmalli_space(unsigned int *ppheadlli, unsigned int page_num)
{
    return free_dmalli_space(ppheadlli, page_num);
}

int kcom_dmac_start_llim2p(unsigned int channel, unsigned int *pfirst_lli, unsigned int uwperipheralid)
{
    return dmac_start_llim2p(channel, pfirst_lli, uwperipheralid);
}

int kcom_dmac_buildllim2m(unsigned int * ppheadlli, unsigned int pdest, unsigned int psource, 
                           unsigned int totaltransfersize, unsigned int uwnumtransfers)
{
    return dmac_buildllim2m(ppheadlli, pdest, psource, totaltransfersize, uwnumtransfers);
}

int kcom_dmac_channelstart(unsigned int u32channel)
{
    return dmac_channelstart(u32channel);
}

int kcom_dmac_start_llim2m(unsigned int channel, unsigned int *pfirst_lli)
{
    return dmac_start_llim2m(channel, pfirst_lli);
}

int kcom_dmac_channel_allocate(void *pisr)
{
    return dmac_channel_allocate(pisr);
}

int kcom_allocate_dmalli_space(unsigned int *ppheadlli, unsigned int page_num)
{
    return allocate_dmalli_space(ppheadlli, page_num);
}

int kcom_dmac_buildllim2p( unsigned int *ppheadlli, unsigned int *pmemaddr, 
                              unsigned int uwperipheralid, unsigned int totaltransfersize,
                              unsigned int uwnumtransfers ,unsigned int burstsize)
{
    return dmac_buildllim2p(ppheadlli, pmemaddr, uwperipheralid, totaltransfersize,uwnumtransfers , burstsize);
}

int kcom_dmac_start_m2p(unsigned int channel, unsigned int pmemaddr, unsigned int uwperipheralid, 
                         unsigned int  uwnumtransfers,unsigned int next_lli_addr)
{
    return dmac_start_m2p( channel,pmemaddr, uwperipheralid, uwnumtransfers,next_lli_addr);
}

int kcom_dmac_start_m2m(unsigned int channel, unsigned int psource, unsigned int pdest, unsigned int uwnumtransfers)
{
    return dmac_start_m2m(channel, psource, pdest, uwnumtransfers);
}

int kcom_dmac_wait(unsigned int channel)
{
    return dmac_wait(channel);
}


struct kcom_hi_dmac kcom_hidmac = {
	.kcom = KCOM_OBJ_INIT(UUID_HI_DMAC_V_1_0_0_0, UUID_HI_DMAC_V_1_0_0_0, NULL, THIS_MODULE, KCOM_TYPE_OBJECT, NULL),
    .dmac_channelclose = kcom_dmac_channelclose,
    .dmac_register_isr = kcom_dmac_register_isr,
    .dmac_channel_free = kcom_dmac_channel_free,
    .free_dmalli_space = kcom_free_dmalli_space,
    .dmac_start_llim2p = kcom_dmac_start_llim2p,
    .dmac_buildllim2m  = kcom_dmac_buildllim2m,
    .dmac_channelstart = kcom_dmac_channelstart,
    .dmac_start_llim2m = kcom_dmac_start_llim2m,
    .dmac_channel_allocate = kcom_dmac_channel_allocate,
    .allocate_dmalli_space = kcom_allocate_dmalli_space,
    .dmac_buildllim2p  = kcom_dmac_buildllim2p,
    .dmac_start_m2p    = kcom_dmac_start_m2p,
    .dmac_start_m2m    = kcom_dmac_start_m2m,
    .dmac_wait         = kcom_dmac_wait
};

int kcom_hidmac_register(void)
{
	return kcom_register(&kcom_hidmac.kcom);
}

void kcom_hidmac_unregister(void)
{
	kcom_unregister(&kcom_hidmac.kcom);
}

