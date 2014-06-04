/*
 * ./arch/arm/mach-hi3511_v100_f01/hi_dmac.c
 *
 * Copyright (c) 2006 Hisilicon Co., Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  USA
 *
 *
 * History:
 *      17-August-2006 create this file
 */

#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/mm.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/spinlock.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <asm/uaccess.h>

//#include <asm/hardware.h>
#include <mach/hardware.h>
#include <asm/io.h>
#include <asm/system.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/dma-mapping.h>

#include "hi_type.h"
#include "hi_drv_sys.h"
#include "hi_drv_dmac.h"
#include "drv_dmac.h"
#include "hi_drv_proc.h"
#include "hi_drv_dev.h"
#include "hi_drv_mmz.h"
#include "hi_debug.h"
#include "hi_module.h"
#include "hi_drv_mem.h"
#include "drv_dmac_ext.h"
#include "hi_module.h"
#include "hi_drv_module.h"

#define DMAC_NAME                      "HI_DMAC"


//#define  SIO_DEBUG 1
#if defined(SIO_DEBUG)
#define TRC(x...) HI_ERR_PRINT(HI_ID_DMAC, KERN_ALERT x)
#else
#define TRC(x...)
#endif

#define CLR_INT(i) (*(volatile unsigned int *)IO_ADDRESS(DMAC_BASE_REG + 0x008)) = (1 << i)
#define CHANNEL_NUM 6
static int dmac_channel[CHANNEL_NUM] = {2, 3, 4, 5, 6, 7};

static int g_channel_status[DMAC_MAX_CHANNELS];

static int sio0_mode = 0; /* 0-i2s mode 1-pcm mode */
static int sio1_mode = 0; /* 0-i2s mode 1-pcm mode */
static int sio2_mode = 0; /* 0-i2s mode 1-pcm mode */

static atomic_t g_DMACInitFlag = ATOMIC_INIT(0);

static unsigned int sio0_rx_fifo = SIO0_RX_FIFO;
static unsigned int sio0_tx_fifo = SIO0_TX_FIFO;
static unsigned int sio1_rx_fifo = SIO1_RX_FIFO;
static unsigned int sio1_tx_fifo = SIO1_TX_FIFO;
static unsigned int sio2_rx_fifo = SIO2_RX_FIFO;
static unsigned int sio2_tx_fifo = SIO2_TX_FIFO;

static UMAP_DEVICE_S g_DMAumapd;

static DMAC_EXPORT_FUNC_S s_DmacExportFuncs =
{
    .pfnDmacChannelAllocate       = dmac_channel_allocate,
    .pfnDmacChannelFree           = dmac_channel_free,
    .pfnDmacAllocateDmalliSpace   = allocate_dmalli_space,
    .pfnDmacFreeDmalliSpace       = free_dmalli_space,
    .pfnDmacChannelStart          = dmac_channelstart,
    .pfnDmacChannelClose          = dmac_channelclose,
    .pfnDmacStartLlim2p           = dmac_start_llim2p,
    .pfnDmacStartM2p              = dmac_start_m2p,
    .pfnDmacBuildllim2p           = dmac_buildllim2p
};


/*
 * 	Define Memory range
 */
mem_addr mem_num[MEM_MAX_NUM] =
{
    {DDRAM_ADRS, DDRAM_SIZE},
    {FLASH_BASE, FLASH_SIZE},
    {ITCM_BASE,  ITCM_SIZE }
};

typedef void REG_ISR (int *p_dma_chn, int *p_dma_status);
REG_ISR *function[DMAC_MAX_CHANNELS];

/*
 *	DMA config array!
 */
dmac_peripheral g_peripheral[DMAC_MAX_PERIPHERALS] =
{
    /* should modify*/
    { DMAC_SCI_RX_REQ, (unsigned int*)RESERVED_DATA_REG, RESERVED_CONTROL, RESERVED_REQ0_CONFIG},
    { DMAC_SCI_TX_REQ, (unsigned int*)RESERVED_DATA_REG, RESERVED_CONTROL, RESERVED_REQ1_CONFIG},
    { DMAC_SSP_RX_REQ, (unsigned int*)RESERVED_DATA_REG, RESERVED_CONTROL, RESERVED_REQ2_CONFIG},
    { DMAC_SSP_TX_REQ, (unsigned int*)RESERVED_DATA_REG, RESERVED_CONTROL, RESERVED_REQ2_CONFIG},
    { DMAC_RESERVED_REQ4, (unsigned int*)RESERVED_DATA_REG, RESERVED_CONTROL, RESERVED_REQ4_CONFIG},
    { DMAC_RESERVED_REQ5, (unsigned int*)RESERVED_DATA_REG, RESERVED_CONTROL, RESERVED_REQ5_CONFIG},
    { DMAC_RESERVED_REQ6, (unsigned int*)RESERVED_DATA_REG, RESERVED_CONTROL, RESERVED_REQ6_CONFIG},
    { DMAC_RESERVED_REQ7, (unsigned int*)RESERVED_DATA_REG, RESERVED_CONTROL, RESERVED_REQ7_CONFIG},
    { DMAC_RESERVED_REQ8, (unsigned int*)RESERVED_DATA_REG, RESERVED_CONTROL, RESERVED_REQ8_CONFIG},
    { DMAC_RESERVED_REQ9, (unsigned int*)RESERVED_DATA_REG, RESERVED_CONTROL, RESERVED_REQ9_CONFIG},

    /*periphal 10,SIO_0_RX*/
    { DMAC_SIO0_RX_REQ,   (unsigned int*)SIO0_RX_FIFO,		SIO0_RX_CONTROL,  SIO0_RX_CONFIG      },

    /*periphal 11,SIO_0_TX*/
    { DMAC_SIO0_TX_REQ,   (unsigned int*)SIO0_TX_FIFO,		SIO0_TX_CONTROL,  SIO0_TX_CONFIG      },

    /*periphal 12,SIO1_RX*/
    { DMAC_SIO1_RX_REQ,   (unsigned int*)SIO1_RX_FIFO,		SIO1_RX_CONTROL,  SIO1_RX_CONFIG      },

    /*periphal 13,SIO1_TX*/
    { DMAC_SIO1_TX_REQ,   (unsigned int*)SIO1_TX_FIFO,		SIO1_TX_CONTROL,  SIO1_TX_CONFIG      },

    /*periphal 14,SIO2_RX*/
    { DMAC_SIO2_RX_REQ,   (unsigned int*)SIO2_RX_FIFO,		SIO2_RX_CONTROL,  SIO2_RX_CONFIG      },

    /*periphal 15,SIO2_TX*/
    { DMAC_SIO2_TX_REQ,   (unsigned int*)SIO2_TX_FIFO,		SIO2_TX_CONTROL,  SIO2_TX_CONFIG      },
};

/*
 *	dmac interrupt handle function
 */
static irqreturn_t dmac_isr(int irq, void * dev_id)
{
    unsigned int channel_status, tmp_channel_status[3], channel_tc_status, channel_err_status;
    unsigned int i, j, count = 0;

#if 0
    TRC("Jump into dmac_isr()\n");
#endif

    /*read the status of current interrupt */
    dmac_readw(DMAC_INTSTATUS, channel_status);

    /*decide which channel has trigger the interrupt*/
    for (i = 0; i < DMAC_MAX_CHANNELS; i++)
    {
        count = 0;
        while (1)
        {
            for (j = 0; j < 3; j++)
            {
                dmac_readw(DMAC_INTSTATUS, channel_status);
                tmp_channel_status[j] = (channel_status >> i) & 0x01;
            }

            if ((0x1 == tmp_channel_status[0]) && (0x1 == tmp_channel_status[1]) && (0x1 == tmp_channel_status[2]))
            {
                break;
            }
            else if ((0x0 == tmp_channel_status[0]) && (0x0 == tmp_channel_status[1]) && (0x0 == tmp_channel_status[2]))
            {
                break;
            }

            count++;
            if (count > 10)
            {
                TRC("DMAC %d channel Int status is error.\n", i);
                break;
            }
        }

        if ((tmp_channel_status[0] == 0x01))
        {

            dmac_readw(DMAC_INTTCSTATUS, channel_tc_status);
            dmac_readw(DMAC_INTERRORSTATUS, channel_err_status);
            CLR_INT(i);
            /*save the current channel transfer status to g_channel_status[i]*/
            if ((0x01 == ((channel_tc_status >> i) & 0x01)))
            {
                g_channel_status[i] = DMAC_CHN_SUCCESS;
                dmac_writew(DMAC_INTTCCLEAR, (0x01 << i));
            }
            else if ((0x01 == ((channel_err_status >> i) & 0x01)))
            {
                g_channel_status[i] = -DMAC_CHN_ERROR;
                TRC("Error in DMAC %d channel as finish!\n", i);
                dmac_writew(DMAC_INTERRCLR, (0x01 << i));
            }
            else
            {
                /*	TRC("Isr Error in DMAC_IntHandeler %d! channel\n" ,i); */
            }

            if ((function[i]) != NULL)
            {
                function[i](&i, &g_channel_status[i]);
            }
        }
    }

    return IRQ_RETVAL(1);
}

/*
 *	memory address validity check
 */
static int mem_check_valid(unsigned int addr)
{
    unsigned int cnt;

    for (cnt = 0; cnt < MEM_MAX_NUM; cnt++)
    {
        if ((addr >= mem_num[cnt].addr_base) && (addr <= (mem_num[cnt].addr_base + mem_num[cnt].size)))
        {
            return 0;
        }
    }

    return -1;
}

/*
 *	check the state of channels
 */
int dmac_check_over(unsigned int channel)
{
    if (-DMAC_CHN_ERROR == g_channel_status[channel])
    {
        /*TRC( "The transfer of Channel %d has finished with errors!\n",channel);*/
        dmac_writew(DMAC_CxCONFIG(channel), DMAC_CxDISABLE);
        g_channel_status[channel] = DMAC_CHN_VACANCY;
        return -DMAC_CHN_ERROR;
    }
    else if (DMAC_NOT_FINISHED == g_channel_status[channel])
    {
        return DMAC_NOT_FINISHED;
    }
    else if (DMAC_CHN_ALLOCAT == g_channel_status[channel])
    {
        return DMAC_CHN_ALLOCAT;
    }
    else if (DMAC_CHN_VACANCY == g_channel_status[channel])
    {
        return DMAC_CHN_VACANCY;
    }
    else if (-DMAC_CHN_TIMEOUT == g_channel_status[channel])
    {
        TRC("The transfer of Channel %d has timeout!\n", channel);
        return -DMAC_CHN_TIMEOUT;
    }
    else if (DMAC_CHN_SUCCESS == g_channel_status[channel])
    {
        /*The transfer of Channel %d has finished successfully!*/
        return DMAC_CHN_SUCCESS;
    }
    else
    {
        dmac_writew(DMAC_CxCONFIG(channel), DMAC_CxDISABLE);
        g_channel_status[channel] = DMAC_CHN_VACANCY;
        return -DMAC_CHN_ERROR;
    }
}

#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))  
spinlock_t my_lcok = SPIN_LOCK_UNLOCKED;  
#else  
spinlock_t my_lcok = __SPIN_LOCK_UNLOCKED(my_lock);  
#endif

unsigned long flags;

/*
 *	allocate channel.
 */
int  dmac_channel_allocate(void *pisr)
{
    unsigned int i, channelinfo;

    for (i = 0; i < CHANNEL_NUM; i++)
    {
        dmac_check_over(dmac_channel[i]);
    }

    spin_lock_irqsave(&my_lcok, flags);
    dmac_readw(DMAC_ENBLDCHNS, channelinfo);
    channelinfo = channelinfo & 0x00ff;

    for (i = 0; i < CHANNEL_NUM; i++)
    {
        //    	    TRC("allocate channel status is %d......\n",g_channel_status[i]);
        if (g_channel_status[dmac_channel[i]] == DMAC_CHN_VACANCY)
        {
            channelinfo = channelinfo >> dmac_channel[i];
            if (0x00 == (channelinfo & 0x01))
            {
                dmac_writew(DMAC_INTERRCLR, (0x01 << dmac_channel[i]));     /*clear the interrupt in this channel */
                dmac_writew(DMAC_INTTCCLEAR, (0x01 << dmac_channel[i]));

                function[dmac_channel[i]] = (void *)pisr;
                g_channel_status[dmac_channel[i]] = DMAC_CHN_ALLOCAT;

                //            		TRC("allocate channel is %d......\n",i);
                spin_unlock_irqrestore(&my_lcok, flags);
                return dmac_channel[i];
            }
        }
    }

    spin_unlock_irqrestore(&my_lcok, flags);
    TRC("DMAC :no available channel can allocate!\n");
    return -EINVAL;
}

int dmac_register_isr(unsigned int channel, void *pisr)
{
    if ((channel < 0) || (channel > 7))
    {
        TRC("channel which choosed %d is error !\n", channel);
        return -1;
    }

    if (g_channel_status[channel] != DMAC_CHN_VACANCY)
    {
        TRC("dma chn %d is in used!\n", channel);
        return -1;
    }

    /*clear the interrupt in this channel */
    dmac_writew(DMAC_INTERRCLR, (0x01 << channel));
    dmac_writew(DMAC_INTTCCLEAR, (0x01 << channel));
    function[channel] = (void *)pisr;
    g_channel_status[channel] = DMAC_CHN_ALLOCAT;
    return 0;
}

/*
 *	free channel
 */
int  dmac_channel_free(unsigned int channel)
{
    g_channel_status[channel] = DMAC_CHN_VACANCY;
    function[channel] = NULL;
    return 0;
}

/*
 *	init dmac register
 *	clear interupt flags
 *	called by dma_driver_init
 */
int  dmac_init(void)
{
    unsigned int i, tempvalue;
	
    // dmac clock / reset 		
    dmac_writew(DMAC_CRG_REG, 0x100);

    dmac_readw(DMAC_CONFIG, tempvalue);

    //if(tempvalue == 0)
    {
        dmac_writew(DMAC_CONFIG, DMAC_CONFIG_VAL);
        dmac_writew(DMAC_SYNC, DMAC_SYNC_VAL);
        dmac_writew(DMAC_INTTCCLEAR, 0xFF);
        dmac_writew(DMAC_INTERRCLR, 0xFF);
        for (i = 0; i < DMAC_MAX_CHANNELS; i++)
        {
            dmac_writew (DMAC_CxCONFIG(i), DMAC_CxDISABLE);
        }
    }

    if (sio0_mode == 0)
    {
        sio0_rx_fifo = SIO0_RX_FIFO;
        sio0_tx_fifo = SIO0_TX_FIFO;
    }
    else
    {
        sio0_rx_fifo = SIO0_RX_RIGHT_FIFO;
        sio0_tx_fifo = SIO0_TX_RIGHT_FIFO;
    }

    g_peripheral[DMAC_SIO0_RX_REQ].pperi_addr = (unsigned int*)sio0_rx_fifo;
    g_peripheral[DMAC_SIO0_TX_REQ].pperi_addr = (unsigned int*)sio0_tx_fifo;

    if (sio1_mode == 0)
    {
        sio1_rx_fifo = SIO1_RX_FIFO;
        sio1_tx_fifo = SIO1_TX_FIFO;
    }
    else
    {
        sio1_rx_fifo = SIO1_RX_RIGHT_FIFO;
        sio1_tx_fifo = SIO1_TX_RIGHT_FIFO;
    }

    g_peripheral[DMAC_SIO1_RX_REQ].pperi_addr = (unsigned int*)sio1_rx_fifo;
    g_peripheral[DMAC_SIO1_TX_REQ].pperi_addr = (unsigned int*)sio1_tx_fifo;

    if (sio2_mode == 0)
    {
        sio2_rx_fifo = SIO2_RX_FIFO;
        sio2_tx_fifo = SIO2_TX_FIFO;
    }
    else
    {
        sio2_rx_fifo = SIO2_RX_RIGHT_FIFO;
        sio2_tx_fifo = SIO2_TX_RIGHT_FIFO;
    }

    g_peripheral[DMAC_SIO2_RX_REQ].pperi_addr = (unsigned int*)sio2_rx_fifo;
    g_peripheral[DMAC_SIO2_TX_REQ].pperi_addr = (unsigned int*)sio2_tx_fifo;

    return 0;
}

/*
 *	alloc_dma_lli_space
 *	output:
 *             ppheadlli[0]: memory physics address
 *             ppheadlli[1]: virtual address
 *
 */
int allocate_dmalli_space(unsigned int *ppheadlli, unsigned int page_num)
{
    dma_addr_t dma_phys;
    void *dma_virt;
    unsigned int *address;

    address = ppheadlli;

    dma_virt = dma_alloc_coherent(NULL, page_num * PAGE_SIZE, &dma_phys, GFP_DMA | __GFP_WAIT);
    if (NULL == dma_virt)
    {
        TRC("can't get dma mem from system\n");
        ;
        return -1;
    }

    address[0] = (unsigned int)(dma_phys);
    address[1] = (unsigned int)(dma_virt);
    return 0;
}

/*
 *	free_dma_lli_space
 */
int free_dmalli_space(unsigned int *ppheadlli, unsigned int page_num)
{
    dma_addr_t dma_phys;
    unsigned int dma_virt;

    dma_phys = (dma_addr_t)(ppheadlli[0]);
    dma_virt = ppheadlli[1];
    dma_free_coherent(NULL, page_num * PAGE_SIZE, (void *)dma_virt, dma_phys);
    return 0;
}

#define PCM_DMA_DEBUG_TEMP       1

#if PCM_DMA_DEBUG_TEMP
#define MMZ_BUFFER_MAX_COUNT   32
struct addr_node {
    int pa;
    int va;
    MMZ_BUFFER_S smmm_buf[MMZ_BUFFER_MAX_COUNT];
    struct list_head list;
};

static LIST_HEAD(dma_alloc_list);

static int insert_dma_mmz_node(int pa, int va, MMZ_BUFFER_S *smmm_buf)
{
    struct addr_node *node;
    int idx;

    //printk("__________A_DMA_________:insert_dma_mmz_node:[%08lX,%08lX]\n", pa, va);
    list_for_each_entry(node, &dma_alloc_list, list) {
	if (node->pa == pa && node->va == va) {
	    for(idx = 0; idx < MMZ_BUFFER_MAX_COUNT; idx++) {
	        if(node->smmm_buf[idx].u32StartPhyAddr == 0) {
		     node->smmm_buf[idx].u32StartPhyAddr = smmm_buf->u32StartPhyAddr;
		     node->smmm_buf[idx].u32StartVirAddr  = smmm_buf->u32StartVirAddr;
		     node->smmm_buf[idx].u32Size              = smmm_buf->u32Size;
                   //printk("A_DMA:insert:%d[%08lX,%08lX,%08lX]\n",idx, smmm_buf->u32StartPhyAddr,smmm_buf->u32StartVirAddr, smmm_buf->u32Size);			 
                   return 0;
	        }
	    }
		
	    if(idx == MMZ_BUFFER_MAX_COUNT) {
               HI_ERR_PRINT(HI_ID_DMAC, "error,alloc so many times!\n");
	        return -1;
	    }
	}
    }	

    if ( &node->list == &dma_alloc_list) {
        node = HI_KMALLOC(HI_ID_DMAC, sizeof(struct addr_node), GFP_KERNEL);
        if (node == NULL) {
            HI_ERR_PRINT(HI_ID_DMAC, "alloc addr_node failed!\n");
            return -ENOMEM;
        }
		
	 memset(node, 0, sizeof(struct addr_node));
	 node->pa = pa;
	 node->va = va;
        node->smmm_buf[0].u32StartPhyAddr = smmm_buf->u32StartPhyAddr;
        node->smmm_buf[0].u32StartVirAddr  = smmm_buf->u32StartVirAddr;
        node->smmm_buf[0].u32Size              = smmm_buf->u32Size;
        list_add_tail(&node->list, &dma_alloc_list);
	 //printk("A_DMA:new:[%08lX,%08lX,%08lX]\n",smmm_buf->u32StartPhyAddr,smmm_buf->u32StartVirAddr, smmm_buf->u32Size);	
    }
	
    return 0;
}

static int delete_dma_mmz_node(unsigned int u32StartPhyAddr)
{
    struct addr_node *node;
    int idx,idj;

    //printk("**********A_DMA*********:delete_dma_mmz_node:[%08lX ]\n", u32StartPhyAddr);
    list_for_each_entry(node, &dma_alloc_list, list) {
        for(idx = MMZ_BUFFER_MAX_COUNT -1; idx >= 0; idx--) {
            if(node->smmm_buf[idx].u32StartPhyAddr == u32StartPhyAddr) {
                for(idj = 0; idj < MMZ_BUFFER_MAX_COUNT; idj++) {
	             if(node->smmm_buf[idj].u32StartPhyAddr) {
		          HI_DRV_MMZ_UnmapAndRelease(&node->smmm_buf[idj]);
			   //printk("A_DMA:delete:[%08lX,%08lX,%08lX]\n", node->smmm_buf[idj].u32StartPhyAddr,node->smmm_buf[idj].u32StartVirAddr, node->smmm_buf[idj].u32Size);	
	             } else {
	                 break;
	             }
                }
                list_del(&node->list);
                HI_KFREE(HI_ID_DMAC, node);
		  return 0;
            }
	}
    }	

    if ( &node->list == &dma_alloc_list) {
	 HI_DRV_MMZ_UnmapAndRelease(u32StartPhyAddr);
        return -1;
    }
	
    return 0;
}
#endif

int allocate_dmalli_space_in_mmz(unsigned int *ppheadlli, unsigned int page_num, int pa, int va)
{
    unsigned int *address;
    unsigned int u32RealBufSize = page_num * PAGE_SIZE;
    MMZ_BUFFER_S smmm_buf;

    address = ppheadlli;

    if (HI_DRV_MMZ_AllocAndMap("Audio_DMA", MMZ_OTHERS, u32RealBufSize, 32, &smmm_buf))
    {
        HI_ERR_PRINT(HI_ID_DMAC, "can't get mmz mem from system\n");
        return 0;
    }    
    
    address[0] = smmm_buf.u32StartPhyAddr;
    address[1] = smmm_buf.u32StartVirAddr;

#if PCM_DMA_DEBUG_TEMP
    insert_dma_mmz_node(pa, va,  &smmm_buf);
#endif
	
    return 0;
}

/*
 *	free_dma_lli_space
 */
int free_dmalli_space_in_mmz(unsigned int *ppheadlli, unsigned int page_num)
{
    MMZ_BUFFER_S smmm_buf;
    smmm_buf.u32StartPhyAddr = ppheadlli[0];
    smmm_buf.u32StartVirAddr = ppheadlli[1];
    smmm_buf.u32Size = page_num * PAGE_SIZE;
	
#if PCM_DMA_DEBUG_TEMP
    delete_dma_mmz_node(smmm_buf.u32StartPhyAddr);    
#else	
    HI_DRV_MMZ_UnmapAndRelease(&smmm_buf);
#endif

    return 0;
}

static atomic_t   dmac_open_cnt = ATOMIC_INIT(0);

/*
 *	Apply DMA interrupt resource
 *	init channel state
 */
int dma_driver_init(struct inode * inode, struct file * file)
{
    unsigned int i;
    int ret = 0;

    if (1 == atomic_inc_return(&dmac_open_cnt))
    {
        dmac_init();

        TRC("\n dma_driver_init() \n");

		ret = request_irq(DMAC_INT, dmac_isr, IRQF_DISABLED, "Hisilicon Dmac", NULL);
        if (0 != ret)
        {
            TRC("DMA Irq request failed, ErrCode is %d\n",ret);
            return -1;
        }

        for (i = 0; i < DMAC_MAX_CHANNELS; i++)
        {
            g_channel_status[i] = DMAC_CHN_VACANCY;
        }
    }
    return 0;
}

int dma_driver_exit(struct inode * inode, struct file * file)
{
    unsigned int i;
    if (atomic_dec_and_test(&dmac_open_cnt))
    {
        for (i = 0; i < DMAC_MAX_CHANNELS; i++)
        {
            dmac_writew (DMAC_CxCONFIG(i), DMAC_CxDISABLE);
        }

        TRC("\n dma_driver_exit() \n");
        free_irq(DMAC_INT, NULL);
    }
    return 0;
}

/*
 *	config register for memory to memory DMA tranfer without LLI
 *	note:
 *             it is necessary to call dmac_channelstart for channel enable
 */
int dmac_start_m2m(unsigned int channel, unsigned int psource, unsigned int pdest, unsigned int uwnumtransfers)
{
    unsigned int uwchannel_num, tmp_trasnsfer, addtmp;

    /*check input paramet*/
    addtmp = psource;
    if ((mem_check_valid(addtmp) == -1) || (addtmp & 0x03))
    {
        TRC( "Invalidate source address,address=%x \n", (unsigned int)psource);
        return -EINVAL;
    }

    addtmp = pdest;
    if ((mem_check_valid(addtmp) == -1) || (addtmp & 0x03))
    {
        TRC(  "Invalidate destination address,address=%x \n", (unsigned int)pdest);
        return -EINVAL;
    }

    if ((uwnumtransfers > (MAXTRANSFERSIZE << 2)) || (uwnumtransfers & 0x3))
    {
        TRC( "Invalidate transfer size,size=%x \n", uwnumtransfers);
        return -EINVAL;
    }

    uwchannel_num = channel;
    if ((uwchannel_num == DMAC_CHANNEL_INVALID) || (uwchannel_num > 7))
    {
        TRC( "failure of DMAC channel allocation in M2M function!\n ");
        return -EFAULT;
    }

    dmac_writew (DMAC_CxCONFIG(uwchannel_num), DMAC_CxDISABLE);
    dmac_writew (DMAC_CxSRCADDR(uwchannel_num), (unsigned int)psource);
    dmac_writew (DMAC_CxDESTADDR(uwchannel_num), (unsigned int)pdest);
    dmac_writew (DMAC_CxLLI(uwchannel_num), 0);
    tmp_trasnsfer = (uwnumtransfers >> 2) & 0xfff;
    tmp_trasnsfer = tmp_trasnsfer | (DMAC_CxCONTROL_M2M & (~0xfff));
    dmac_writew (DMAC_CxCONTROL(uwchannel_num), tmp_trasnsfer);
    dmac_writew (DMAC_CxCONFIG(uwchannel_num), DMAC_CxCONFIG_M2M);

    return 0;
}

/*
 *	channel enable
 *	start a dma transfer immediately
 */
int dmac_channelstart(unsigned int u32channel)
{
    unsigned int reg_value;

    if (u32channel >= DMAC_MAX_CHANNELS)
    {
        TRC(  "channel number is larger than or equal to DMAC_MAX_CHANNELS %d\n", DMAC_MAX_CHANNELS);
        return -EINVAL;
    }

    g_channel_status[u32channel] = DMAC_NOT_FINISHED;
    dmac_readw(DMAC_CxCONFIG(u32channel), reg_value);
    dmac_writew(DMAC_CxCONFIG(u32channel), (reg_value | DMAC_CHANNEL_ENABLE));

    return 0;
}

/*
 *	wait for transfer end
 */
int dmac_wait(unsigned int channel)
{
    int ret_result;

    ret_result = dmac_check_over(channel);
    while (1)
    {
        if (ret_result == -DMAC_CHN_ERROR)
        {
            TRC("DMAC Transfer Error.\n");
            return -1;
        }
        else  if (ret_result == DMAC_NOT_FINISHED)
        {
            udelay(100);
            ret_result = dmac_check_over(channel);
        }
        else if (ret_result == DMAC_CHN_SUCCESS)
        {
            return 0;
        }
        else if (ret_result == DMAC_CHN_VACANCY)
        {
            return 0;
        }
        else if (ret_result == -DMAC_CHN_TIMEOUT)
        {
            TRC("DMAC Transfer Error.\n");
            dmac_writew (DMAC_CxCONFIG(channel), DMAC_CxDISABLE);
            g_channel_status[channel] = DMAC_CHN_VACANCY;
            return -1;
        }
    }
}

/*
 *	buile LLI for memory to memory DMA tranfer
 */
int dmac_buildllim2m(unsigned int *ppheadlli, unsigned int pdest, unsigned int psource, unsigned int totaltransfersize,
                     unsigned int uwnumtransfers)
{
    unsigned int lli_num  = 0;
    unsigned int last_lli = 0;
    unsigned int address, phy_address, srcaddr, denstaddr;
    unsigned int j;

    lli_num = (totaltransfersize / uwnumtransfers);
    if ((totaltransfersize % uwnumtransfers) != 0)
    {
        last_lli = 1, ++lli_num;
    }

    if (ppheadlli != NULL)
    {
        phy_address = (unsigned int)(ppheadlli[0]);
        address = (unsigned int)(ppheadlli[1]);
        for (j = 0; j < lli_num; j++)
        {
            srcaddr = (psource + (j * uwnumtransfers));
            dmac_writew(address, srcaddr);
            address += 4;
            phy_address += 4;
            denstaddr = (pdest + (j * uwnumtransfers));
            dmac_writew(address, denstaddr);
            address += 4;
            phy_address += 4;
            if (j == (lli_num - 1))
            {
                dmac_writew(address, 0);
            }
            else
            {
                dmac_writew(address, (((phy_address + 8) & (~0x03)) | DMAC_CxLLI_LM));
            }

            address += 4;
            phy_address += 4;

            if ((j == (lli_num - 1)) && (last_lli == 0))
            {
                dmac_writew(address, ((DMAC_CxCONTROL_LLIM2M & (~0xfff)) | (uwnumtransfers >> 2) | 0x80000000));
            }
            else if ((j == (lli_num - 1)) && (last_lli == 1))
            {
                dmac_writew(address, ((DMAC_CxCONTROL_LLIM2M
                                       & (~0xfff)) | ((totaltransfersize % uwnumtransfers) >> 2) | 0x80000000));
            }
            else
            {
                dmac_writew(address, (((DMAC_CxCONTROL_LLIM2M & (~0xfff)) | (uwnumtransfers >> 2)) & 0x7fffffff));
            }

            address += 4;
            phy_address += 4;
        }
    }

    return 0;
}

/*
 *	disable channel
 *	used before the operation of register configuration
 */
int dmac_channelclose(unsigned int channel)
{
    unsigned int reg_value, count;

    if (channel >= DMAC_MAX_CHANNELS)
    {
        TRC("\nCLOSE :channel number is larger than or equal to DMAC_CHANNEL_NUM_TOTAL.\n");
        return -EINVAL;
    }

    dmac_readw(DMAC_CxCONFIG(channel), reg_value);

#define CHANNEL_CLOSE_IMMEDIATE
#ifdef CHANNEL_CLOSE_IMMEDIATE
    reg_value &= 0xFFFFFFFE;
    dmac_writew(DMAC_CxCONFIG(channel), reg_value);
#else
    reg_value |= DMAC_CONFIGURATIONx_HALT_DMA_ENABLE;
    dmac_writew(DMAC_CxCONFIG(channel), reg_value);          /*ignore incoming dma request*/
    dmac_readw(DMAC_CxCONFIG(channel), reg_value);
    while ((reg_value & DMAC_CONFIGURATIONx_ACTIVE) == DMAC_CONFIGURATIONx_ACTIVE)     /*if FIFO is empty*/
    {
        dmac_readw(DMAC_CxCONFIG(channel), reg_value);
    }

    reg_value &= 0xFFFFFFFE;
    dmac_writew(DMAC_CxCONFIG(channel), reg_value);
#endif

    dmac_readw(DMAC_ENBLDCHNS, reg_value);
    reg_value = reg_value & 0x00ff;
    count = 0;
    while (((reg_value >> channel) & 0x1) == 1)
    {
        dmac_readw(DMAC_ENBLDCHNS, reg_value);
        reg_value = reg_value & 0x00ff;
        if (count++ > 10000)
        {
            TRC("channel close failure.\n");
            return -1;
        }
    }

    return 0;
}

/*
 *	load configuration from LLI for memory to memory
 */
int dmac_start_llim2m(unsigned int channel, unsigned int *pfirst_lli)
{
    unsigned int uwchannel_num;
    dmac_lli plli;
    unsigned int first_lli;

    if (NULL == pfirst_lli)
    {
        TRC("Invalidate LLI head!\n");
        return -EFAULT;
    }

    uwchannel_num = channel;
    if ((uwchannel_num == DMAC_CHANNEL_INVALID) || (uwchannel_num > 7))
    {
        TRC("failure of DMAC channel allocation in LLIM2M function,channel=%x!\n ", uwchannel_num);
        return -EINVAL;
    }

    memset(&plli, 0, sizeof(plli));
    first_lli = (unsigned int )pfirst_lli[1];
    dmac_readw(first_lli, plli.src_addr);
    dmac_readw(first_lli + 4, plli.dst_addr);
    dmac_readw(first_lli + 8, plli.next_lli);
    dmac_readw(first_lli + 12, plli.lli_transfer_ctrl);

    dmac_channelclose(uwchannel_num);
    dmac_writew (DMAC_INTTCCLEAR, (0x1 << uwchannel_num));
    dmac_writew (DMAC_INTERRCLR, (0x1 << uwchannel_num));
    dmac_writew (DMAC_SYNC, 0x0);

    dmac_writew(DMAC_CxCONFIG(uwchannel_num), DMAC_CxDISABLE);
    dmac_writew (DMAC_CxSRCADDR(uwchannel_num), (unsigned int)(plli.src_addr));
    dmac_writew (DMAC_CxDESTADDR (uwchannel_num), (unsigned int)(plli.dst_addr));
    dmac_writew (DMAC_CxLLI (uwchannel_num), (unsigned int)(plli.next_lli));
    dmac_writew (DMAC_CxCONTROL(uwchannel_num), (unsigned int)(plli.lli_transfer_ctrl));
    dmac_writew(DMAC_CxCONFIG(uwchannel_num), DMAC_CxCONFIG_LLIM2M);

    return 0;
}

/*
 *	load configuration from LLI for memory and peripheral
 */
int dmac_start_llim2p(unsigned int channel, unsigned int *pfirst_lli, unsigned int uwperipheralid)
{
    unsigned int uwchannel_num;
    dmac_lli plli;
    unsigned int first_lli;
    unsigned int temp = 0;

    if (NULL == pfirst_lli)
    {
        TRC("Invalidate LLI head!\n");
        return -EINVAL;
    }

    uwchannel_num = channel;
    if ((uwchannel_num == DMAC_CHANNEL_INVALID) || (uwchannel_num > 7))
    {
        TRC(" failure of DMAC channel allocation in LLIM2P function,channel=%x!\n ", uwchannel_num);
        return -EINVAL;
    }

    memset(&plli, 0, sizeof(plli));
    first_lli = (unsigned int )pfirst_lli[1];
    dmac_readw(first_lli, plli.src_addr);
    dmac_readw(first_lli + 4, plli.dst_addr);
    dmac_readw(first_lli + 8, plli.next_lli);
    dmac_readw(first_lli + 12, plli.lli_transfer_ctrl);

    dmac_channelclose(uwchannel_num);
    dmac_writew (DMAC_INTTCCLEAR, (0x1 << uwchannel_num));
    dmac_writew (DMAC_INTERRCLR, (0x1 << uwchannel_num));
    dmac_writew (DMAC_SYNC, 0x0);
#if 1
    dmac_readw  (DMAC_CxCONFIG(uwchannel_num), temp);
    dmac_writew (DMAC_CxCONFIG(uwchannel_num), temp | DMAC_CxDISABLE);
    dmac_writew (DMAC_CxSRCADDR(uwchannel_num), plli.src_addr);
    dmac_writew (DMAC_CxDESTADDR(uwchannel_num), plli.dst_addr);
    dmac_writew (DMAC_CxLLI(uwchannel_num), plli.next_lli);
    dmac_writew (DMAC_CxCONTROL(uwchannel_num), plli.lli_transfer_ctrl);

    dmac_readw  (DMAC_CxCONFIG(uwchannel_num), temp);
    dmac_writew (DMAC_CxCONFIG(uwchannel_num), temp
                 | ((g_peripheral[uwperipheralid].transfer_cfg) & DMAC_CHANNEL_DISABLE));
#else
    dmac_writew (DMAC_CxCONFIG(uwchannel_num), DMAC_CxDISABLE);
    dmac_writew (DMAC_CxSRCADDR(uwchannel_num), plli.src_addr);
    dmac_writew (DMAC_CxDESTADDR(uwchannel_num), plli.dst_addr);
    dmac_writew (DMAC_CxLLI(uwchannel_num), plli.next_lli);
    dmac_writew (DMAC_CxCONTROL(uwchannel_num), plli.lli_transfer_ctrl);
    dmac_writew (DMAC_CxCONFIG(uwchannel_num), ((g_peripheral[uwperipheralid].transfer_cfg) & DMAC_CHANNEL_DISABLE));
#endif

    return 0;
}

/*
 *	enable memory and peripheral dma transfer
 *	note:
 *	       it is necessary to call dmac_channelstart to enable channel
 */
int dmac_start_m2p(unsigned int channel, unsigned int pmemaddr, unsigned int uwperipheralid,
                   unsigned int uwnumtransfers,
                   unsigned int next_lli_addr)
{
    unsigned int uwchannel_num, uwtrans_control = 0;
    unsigned int addtmp, tmp;
    unsigned int uwdst_addr = 0, uwsrc_addr = 0;
    unsigned int uwwidth = 0;

    addtmp = pmemaddr;
    if ((mem_check_valid(addtmp) == -1) || (addtmp & 0x3))
    {
        TRC("Invalidate source address,address=%x \n", (unsigned int)pmemaddr);
        return -EINVAL;
    }

    if ((uwperipheralid > 15))
    {
        TRC("Invalidate peripheral id in M2P function, id=%x! \n", uwperipheralid);
        return -EINVAL;
    }

    uwchannel_num = channel;
    if ((uwchannel_num == DMAC_CHANNEL_INVALID) || (uwchannel_num > 7) || (uwchannel_num < 0))
    {
        TRC("failure of DMAC channel allocation in M2P function\n");
        return -EFAULT;
    }

#if 0
    if ((DMAC_UART0_TX_REQ == uwperipheralid) || (DMAC_UART0_RX_REQ == uwperipheralid) \
        || (DMAC_SSP_TX_REQ == uwperipheralid) || (DMAC_SSP_RX_REQ == uwperipheralid))
    {
        uwwidth = 0;
    } \
    else if ((DMAC_SIO0_TX_REQ == uwperipheralid) || (DMAC_SIO0_RX_REQ == uwperipheralid) \
             || (DMAC_SIO1_RX_REQ == uwperipheralid))
    {
        uwwidth = 1;
    }
    else
    {
        uwwidth = 2;
    }
#endif


    if ((DMAC_SIO0_TX_REQ == uwperipheralid) || (DMAC_SIO0_RX_REQ == uwperipheralid)
       || (DMAC_SIO1_TX_REQ == uwperipheralid) || (DMAC_SIO1_RX_REQ == uwperipheralid)
       || (DMAC_SIO2_TX_REQ == uwperipheralid) || (DMAC_SIO2_RX_REQ == uwperipheralid))
    {
        uwwidth = 2;
    }

    if (uwperipheralid & 0x01)
    {
        uwsrc_addr = pmemaddr;
        uwdst_addr = (unsigned int)(g_peripheral[uwperipheralid].pperi_addr);
    }
    else
    {
        uwsrc_addr = (unsigned int)(g_peripheral[uwperipheralid].pperi_addr);
        uwdst_addr = pmemaddr;
    }

    tmp = uwnumtransfers >> uwwidth;
    if (tmp & (~0x0fff))
    {
        TRC("Invalidate transfer size,size=%x! \n", uwnumtransfers);
        return -EINVAL;
    }

    tmp = tmp & 0xfff;
    uwtrans_control = tmp | (g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff));

    dmac_writew(DMAC_INTTCCLEAR, (0x1 << uwchannel_num));
    dmac_writew(DMAC_INTERRCLR, (0x1 << uwchannel_num));
    dmac_writew(DMAC_CxSRCADDR(uwchannel_num), (unsigned int)uwsrc_addr);
    dmac_writew(DMAC_CxDESTADDR(uwchannel_num), (unsigned int)uwdst_addr);
    dmac_writew(DMAC_CxLLI(uwchannel_num), (unsigned int)next_lli_addr);
    dmac_writew(DMAC_CxCONTROL(uwchannel_num), (unsigned int)uwtrans_control );
    dmac_writew (DMAC_CxCONFIG(uwchannel_num), ((g_peripheral[uwperipheralid].transfer_cfg) & DMAC_CHANNEL_DISABLE));

    return 0;
}

#if 0

/*
 *	build LLI for memory to sio0
 *      called by dmac_buildllim2p
 */
void buildlli4m2sio0(unsigned int *ppheadlli,
                     unsigned int *pmemaddr,
                     unsigned int  uwperipheralid,
                     unsigned int  lli_num,
                     unsigned int  totaltransfersize,
                     unsigned int  uwnumtransfers,
                     unsigned int  uwwidth,
                     unsigned int  last_lli)
{
    unsigned int srcaddr, address, phy_address, j;

    phy_address = (unsigned int)(ppheadlli[0]);
    address = (unsigned int)(ppheadlli[1]);

    for (j = 0; j < lli_num; j++)
    {
        srcaddr = (pmemaddr[0] + (j * uwnumtransfers));
        dmac_writew(address, srcaddr);

        address += 4;
        phy_address += 4;
        dmac_writew(address, SIO0_TX_LEFT_FIFO);

        address += 4;
        phy_address += 4;
        dmac_writew(address, (((phy_address + 8) & (~0x03)) | DMAC_CxLLI_LM));

        address += 4;
        phy_address += 4;
        if ((j == (lli_num - 1)) && (last_lli == 1))
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) | \
                                  (((totaltransfersize % uwnumtransfers) >> uwwidth) & 0x7fffffff)));
        }
        else
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) | \
                                  (uwnumtransfers >> uwwidth)) & 0x7fffffff);
        }

        address += 4;
        phy_address += 4;
        srcaddr = (pmemaddr[1] + (j * uwnumtransfers));
        dmac_writew(address, srcaddr);

        address += 4;
        phy_address += 4;
        dmac_writew(address, SIO0_TX_RIGHT_FIFO);

        address += 4;
        phy_address += 4;
        if (j == (lli_num - 1))
        {
            dmac_writew(address, 0);
        }
        else
        {
            dmac_writew(address, (((phy_address + 8) & (~0x03)) | DMAC_CxLLI_LM));
        }

        address += 4;
        phy_address += 4;
        if ((j == (lli_num - 1)) && (last_lli == 0))
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) | \
                                  (uwnumtransfers >> uwwidth) | 0x80000000));
        }
        else if ((j == (lli_num - 1)) && (last_lli == 1))
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) | \
                                  ((totaltransfersize % uwnumtransfers) >> uwwidth) | 0x80000000));
        }
        else
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) | \
                                  (uwnumtransfers >> uwwidth)) & 0x7fffffff);
        }

        address += 4;
        phy_address += 4;
    }
}

/*
 *	build LLI for sio0 to memory
 *      called by dmac_buildllim2p
 */
void buildlli4sio02m(unsigned int *ppheadlli,
                     unsigned int *pmemaddr,
                     unsigned int  uwperipheralid,
                     unsigned int  lli_num,
                     unsigned int  totaltransfersize,
                     unsigned int  uwnumtransfers,
                     unsigned int  uwwidth,
                     unsigned int  last_lli)
{
    unsigned int srcaddr, address, phy_address, j;

    phy_address = (unsigned int)(ppheadlli[0]);
    address = (unsigned int)(ppheadlli[1]);
    srcaddr = (pmemaddr[0]);

    for (j = 0; j < lli_num; j++)
    {
        dmac_writew(address, SIO0_RX_LEFT_FIFO);
        address += 4;
        phy_address += 4;
        srcaddr = (pmemaddr[0] + (j * uwnumtransfers));
        dmac_writew(address, srcaddr);
        address += 4;
        phy_address += 4;
        dmac_writew(address, (((phy_address + 8) & (~0x03)) | DMAC_CxLLI_LM));
        address += 4;
        phy_address += 4;
        if ((j == (lli_num - 1)) && (last_lli == 1))
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) \
                                  | (((totaltransfersize % uwnumtransfers) >> uwwidth) & 0x7fffffff)));
        }
        else
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) | \
                                  (uwnumtransfers >> uwwidth)) & 0x7fffffff);
        }

        address += 4;
        phy_address += 4;
        dmac_writew(address, SIO0_RX_RIGHT_FIFO);
        address += 4;
        phy_address += 4;
        srcaddr = (pmemaddr[1] + (j * uwnumtransfers));
        dmac_writew(address, srcaddr);
        address += 4;
        phy_address += 4;
        if (j == (lli_num - 1))
        {
            dmac_writew(address, 0);
        }
        else
        {
            dmac_writew(address, (((phy_address + 8) & (~0x03)) | DMAC_CxLLI_LM));
        }

        address += 4;
        phy_address += 4;

        if ((j == (lli_num - 1)) && (last_lli == 0))
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) \
                                  | (uwnumtransfers >> uwwidth) | 0x80000000));
        }
        else if ((j == (lli_num - 1)) && (last_lli == 1))
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) \
                                  | ((totaltransfersize % uwnumtransfers) >> uwwidth) | 0x80000000));
        }
        else
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) | \
                                  (uwnumtransfers >> uwwidth)));
        }

        address += 4;
        phy_address += 4;
    }
}

/*
 *	build LLI for sio1 to memory
 *      called by dmac_buildllim2p
 */
void buildlli4sio12m(unsigned int *ppheadlli,
                     unsigned int *pmemaddr,
                     unsigned int  uwperipheralid,
                     unsigned int  lli_num,
                     unsigned int  totaltransfersize,
                     unsigned int  uwnumtransfers,
                     unsigned int  uwwidth,
                     unsigned int  last_lli)
{
    unsigned int srcaddr, address, phy_address, j;

    phy_address = (unsigned int)(ppheadlli[0]);
    address = (unsigned int)(ppheadlli[1]);
    srcaddr = (pmemaddr[0]);

    for (j = 0; j < lli_num; j++)
    {
        dmac_writew(address, SIO1_RX_LEFT_FIFO);
        address += 4;
        phy_address += 4;
        srcaddr = (pmemaddr[0] + (j * uwnumtransfers));
        dmac_writew(address, srcaddr);
        address += 4;
        phy_address += 4;
        dmac_writew(address, (((phy_address + 8) & (~0x03)) | DMAC_CxLLI_LM));
        address += 4;
        phy_address += 4;
        if ((j == (lli_num - 1)) && (last_lli == 1))
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) \
                                  | (((totaltransfersize % uwnumtransfers) >> uwwidth) & 0x7fffffff)));
        }
        else
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) | \
                                  (uwnumtransfers >> uwwidth)) & 0x7fffffff);
        }

        address += 4;
        phy_address += 4;
        dmac_writew(address, SIO1_RX_RIGHT_FIFO);
        address += 4;
        phy_address += 4;
        srcaddr = (pmemaddr[1] + (j * uwnumtransfers));
        dmac_writew(address, srcaddr);
        address += 4;
        phy_address += 4;
        if (j == (lli_num - 1))
        {
            dmac_writew(address, 0);
        }
        else
        {
            dmac_writew(address, (((phy_address + 8) & (~0x03)) | DMAC_CxLLI_LM));
        }

        address += 4;
        phy_address += 4;

        if ((j == (lli_num - 1)) && (last_lli == 0))
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) \
                                  | (uwnumtransfers >> uwwidth) | 0x80000000));
        }
        else if ((j == (lli_num - 1)) && (last_lli == 1))
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) \
                                  | ((totaltransfersize % uwnumtransfers) >> uwwidth) | 0x80000000));
        }
        else
        {
            dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl & (~0xfff)) | \
                                  (uwnumtransfers >> uwwidth)));
        }

        address += 4;
        phy_address += 4;
    }
}

#endif

/*
 *	build LLI for memory to peripheral
 */
int  dmac_buildllim2p( unsigned int *ppheadlli, unsigned int *pmemaddr, unsigned int uwperipheralid,
                       unsigned int totaltransfersize, unsigned int uwnumtransfers,
                       unsigned int burstsize)
{
    unsigned int addtmp, address = 0, phy_address = 0, srcaddr = 0;
    unsigned int uwwidth = 0, lli_num = 0, last_lli = 0;
    unsigned int j = 0;

    addtmp = pmemaddr[0];
    if ((mem_check_valid(addtmp) == -1) || (addtmp & 0x3))
    {
        TRC("Invalidate source address,address=%x \n", (unsigned int)pmemaddr[0]);
        return -EINVAL;
    }

#if 0
    if ((DMAC_SIO0_TX_REQ == uwperipheralid) || (DMAC_SIO0_RX_REQ == uwperipheralid) \
        || (DMAC_SIO1_RX_REQ == uwperipheralid))
    {
        addtmp = pmemaddr[1];
        if ((mem_check_valid(addtmp) == -1) || (addtmp & 0x3))
        {
            TRC("Invalidate source address,address=%x \n", (unsigned int)pmemaddr);
            return -EINVAL;
        }
    }
#endif

    if (uwperipheralid > 15)
    {
        TRC("Invalidate peripheral id in M2P LLI function, id=%x! \n", addtmp);
        return -EINVAL;
    }

#if 0
    if (((DMAC_SSP_TX_REQ == uwperipheralid) || (DMAC_SSP_RX_REQ == uwperipheralid)))
    {
        uwwidth = 0;
    } \
    else  if ((DMAC_SIO0_TX_REQ == uwperipheralid) || (DMAC_SIO0_RX_REQ == uwperipheralid) \
              || (DMAC_SIO1_RX_REQ == uwperipheralid))
    {
        uwwidth = 1;
    }
    else
    {
        uwwidth = 2;
    }
#endif


    if ((DMAC_SIO0_TX_REQ == uwperipheralid) || (DMAC_SIO0_RX_REQ == uwperipheralid)
       || (DMAC_SIO1_TX_REQ == uwperipheralid) || (DMAC_SIO1_RX_REQ == uwperipheralid)
       || (DMAC_SIO2_TX_REQ == uwperipheralid) || (DMAC_SIO2_RX_REQ == uwperipheralid))
    {
        uwwidth = 2;      /* X5HD MPW SIO use 32bit dma */
    }

    if ((uwnumtransfers > (MAXTRANSFERSIZE << uwwidth)))
    {
        TRC("Invalidate transfer size,size=%x \n", uwnumtransfers);
        return -EINVAL;
    }

    lli_num = (totaltransfersize / uwnumtransfers);
    if ((totaltransfersize % uwnumtransfers) != 0)
    {
        last_lli = 1, ++lli_num;
    }

    if (ppheadlli != NULL)
    {
        phy_address = (unsigned int)(ppheadlli[0]);
        address = (unsigned int)(ppheadlli[1]);

        /*memory to peripheral*/
        if (uwperipheralid & 0x01)
        {
#if 0
            /*create lli for sio*/
            if (DMAC_SIO0_TX_REQ == uwperipheralid)
            {
                buildlli4m2sio0(ppheadlli, pmemaddr, uwperipheralid, lli_num, \
                                totaltransfersize, uwnumtransfers, uwwidth, last_lli);
            }
            else
#endif
            {
                for (j = 0; j < lli_num; j++)
                {
                    srcaddr = (pmemaddr[0] + (j * uwnumtransfers));
                    dmac_writew(address, srcaddr);
                    address += 4;
                    phy_address += 4;

                    dmac_writew(address, (unsigned int)(g_peripheral[uwperipheralid].pperi_addr));
                    address += 4;
                    phy_address += 4;

                    if (j == (lli_num - 1))
                    {
                        dmac_writew(address, 0);
                    }
                    else
                    {
                        dmac_writew(address, (((phy_address + 8) & (~0x03)) | DMAC_CxLLI_LM));
                    }

                    address += 4;
                    phy_address += 4;

                    if ((j == (lli_num - 1)) && (last_lli == 0))
                    {
                        dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl
                                               & (~0xfff)) | (uwnumtransfers >> uwwidth) | 0x80000000));
                    }
                    else if ((j == (lli_num - 1)) && (last_lli == 1))
                    {
                        dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl\
                                               & (~0xfff)) | ((totaltransfersize % uwnumtransfers) \
                                                              >> uwwidth)
                                              | 0x80000000));
                    }
                    else
                    {
                        dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl
                                               & (~0xfff)) | (uwnumtransfers >> uwwidth)) & 0x7fffffff);
                    }

                    address += 4;
                    phy_address += 4;
                }
            }
        }
        /*peripheral to memory*/
        else
        {
#if 0
            /*create lli for sio*/
            if (DMAC_SIO0_RX_REQ == uwperipheralid)
            {
                buildlli4sio02m(ppheadlli, pmemaddr, uwperipheralid, lli_num, \
                                totaltransfersize, uwnumtransfers, uwwidth, last_lli);
            }
            else if (DMAC_SIO1_RX_REQ == uwperipheralid)
            {
                buildlli4sio12m(ppheadlli, pmemaddr, uwperipheralid, lli_num, \
                                totaltransfersize, uwnumtransfers, uwwidth, last_lli);
            }
            else
#endif
            {
                for (j = 0; j < lli_num; j++)
                {
                    dmac_writew(address, (unsigned int)(g_peripheral[uwperipheralid].pperi_addr));
                    address += 4;
                    phy_address += 4;

                    srcaddr = (pmemaddr[0] + (j * uwnumtransfers));
                    dmac_writew(address, srcaddr);
                    address += 4;
                    phy_address += 4;

                    if (j == (lli_num - 1))
                    {
                        dmac_writew(address, 0);
                    }
                    else
                    {
                        dmac_writew(address, (((phy_address + 8) & (~0x03)) | DMAC_CxLLI_LM));
                    }

                    address += 4;
                    phy_address += 4;

                    if ((j == (lli_num - 1)) && (last_lli == 0))
                    {
                        dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl
                                               & (~0xfff)) | (uwnumtransfers >> uwwidth) | 0x80000000));
                    }
                    else if ((j == (lli_num - 1)) && (last_lli == 1))
                    {
                        dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl\
                                               & (~0xfff)) | ((totaltransfersize % uwnumtransfers) \
                                                              >> uwwidth)
                                              | 0x80000000));
                    }
                    else
                    {
                        dmac_writew(address, ((g_peripheral[uwperipheralid].transfer_ctrl
                                               & (~0xfff)) | (uwnumtransfers >> uwwidth)) & 0x7fffffff);
                    }

                    address += 4;
                    phy_address += 4;
                }
            }
        }
    }

    return 0;
}

/*
 *	execute memory to memory dma transfer without LLI
 */
int dmac_m2m_transfer(unsigned int *psource, unsigned int *pdest, unsigned int uwtransfersize)
{
    unsigned int ulchnn, dma_size = 0;
    unsigned int dma_count, left_size;

    left_size = uwtransfersize;
    dma_count = 0;
    ulchnn = dmac_channel_allocate(NULL);
    if (DMAC_CHANNEL_INVALID == ulchnn)
    {
        return -1;
    }

    while ((left_size >> 2) >= 0xffc)
    {
        dma_size   = 0xffc;
        left_size -= dma_size * 4;
        dmac_start_m2m(ulchnn, (unsigned int)(psource + dma_count * dma_size), (unsigned int)(pdest + dma_count
                                                                                              * dma_size), (dma_size
       << 2));
        if (dmac_channelstart(ulchnn) != 0)
        {
            return -1;
        }

        if (dmac_wait(ulchnn) != DMAC_CHN_SUCCESS)
        {
            return -1;
        }

        dma_count++;
    }

    dmac_start_m2m(ulchnn, (unsigned int)(psource + dma_count * dma_size), (unsigned int)(pdest + dma_count * dma_size),
                   left_size);
    if (dmac_channelstart(ulchnn) != 0)
    {
        return -1;
    }

    if (dmac_wait(ulchnn) != DMAC_CHN_SUCCESS)
    {
        return -1;
    }

    return 0;
}

/*
 *	execute memory to peripheral dma transfer without LLI
 */
int dmac_m2p_transfer(unsigned int *pmemaddr, unsigned int uwperipheralid, unsigned int uwtransfersize)
{
    unsigned int ulchnn, dma_size = 0;
    unsigned int dma_count, left_size, uwwidth = 0;

    left_size = uwtransfersize;
    dma_count = 0;
    ulchnn = dmac_channel_allocate(NULL);
    if (DMAC_CHANNEL_INVALID == ulchnn)
    {
        return -1;
    }

#if 0
    if ((DMAC_UART0_TX_REQ == uwperipheralid) || (DMAC_UART0_RX_REQ == uwperipheralid) \
        || (DMAC_SSP_TX_REQ == uwperipheralid) || (DMAC_SSP_RX_REQ == uwperipheralid))
    {
        uwwidth = 0;
    } \
    else if ((DMAC_SIO0_TX_REQ == uwperipheralid) || (DMAC_SIO0_RX_REQ == uwperipheralid) \
             || (DMAC_SIO1_RX_REQ == uwperipheralid))

    {
        uwwidth = 1;
    }
    else
    {
        uwwidth = 2;
    }
#endif


    if ((DMAC_SIO0_TX_REQ == uwperipheralid) || (DMAC_SIO0_RX_REQ == uwperipheralid)
       || (DMAC_SIO1_TX_REQ == uwperipheralid) || (DMAC_SIO1_RX_REQ == uwperipheralid)
       || (DMAC_SIO2_TX_REQ == uwperipheralid) || (DMAC_SIO2_RX_REQ == uwperipheralid))
    {
        uwwidth = 2;      /* X5HD MPW SIO use 32bit dma */
    }

    if (uwtransfersize > (MAXTRANSFERSIZE << uwwidth))
    {
        TRC("Invalidate transfer size,size=%x \n", uwtransfersize);
        return -EINVAL;
    }

    while ((left_size >> uwwidth) >= 0xffc)
    {
        dma_size   = 0xffc;
        left_size -= dma_size * 2 * uwwidth;
        dmac_start_m2p(ulchnn, (unsigned int)(pmemaddr + dma_count * dma_size), uwperipheralid, (dma_size << 2), 0);
        if (dmac_channelstart(ulchnn) != 0)
        {
            return -1;
        }

        if (dmac_wait(ulchnn) != DMAC_CHN_SUCCESS)
        {
            return -1;
        }

        dma_count++;
    }

    dmac_start_m2p(ulchnn, (unsigned int)(pmemaddr + dma_count * dma_size), uwperipheralid, left_size, 0);
    if (dmac_channelstart(ulchnn) != 0)
    {
        return -1;
    }

    if (dmac_wait(ulchnn) != DMAC_CHN_SUCCESS)
    {
        return -1;
    }

    return 0;
}

static HI_S32 dma_ioctl(struct inode *inode,
						struct file  *pFile,
                        unsigned int  cmd,
                        void*         arg)
{
    HI_S32 s32Ret = 0;

    return s32Ret;
}

static long DmaIoctl(struct file  *pFile,
                       unsigned int  cmd,
                       unsigned long arg)
{
    long ret;

    ret = (long)HI_DRV_UserCopy(pFile->f_dentry->d_inode, pFile, cmd, arg, dma_ioctl);

    return ret;
}

static struct file_operations dma_fops =
{
    .owner  		= THIS_MODULE,
    .open    		= dma_driver_init,
    .release 		= dma_driver_exit,
    .unlocked_ioctl = DmaIoctl,
};


static int  dmac_pm_suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
	int i;
	// 0
	for (i = 0; i < CHANNEL_NUM; i++)	{
		dmac_check_over(dmac_channel[i]);
	}
	for (i = 0; i < CHANNEL_NUM; i++) {
		// TRC("allocate channel status is %d......\n",g_channel_status[i]);
		if (g_channel_status[dmac_channel[i]] == DMAC_CHN_VACANCY){
			break;
		}  
    }
	if(i >= CHANNEL_NUM){
		TRC("!!! dmac channel=%d not close \n", i);
		return -1;
	}
	TRC(" dmac suspend ok !\n");
	return 0;
}



static int  dmac_pm_resume(PM_BASEDEV_S *pdev)
{
#if 1
	int i;
	// dmac_init(), a part of

	// dmac clock / reset		  
	dmac_writew(DMAC_CRG_REG, 0x100);

	dmac_writew(DMAC_CONFIG, DMAC_CONFIG_VAL);
	dmac_writew(DMAC_SYNC, DMAC_SYNC_VAL);
	dmac_writew(DMAC_INTTCCLEAR, 0xFF);
	dmac_writew(DMAC_INTERRCLR, 0xFF);
	for (i = 0; i < DMAC_MAX_CHANNELS; i++){
		dmac_writew (DMAC_CxCONFIG(i), DMAC_CxDISABLE);
	}
#endif
	TRC(" dmac resume ok !\n");
	return 0;
}

static PM_BASEOPS_S  dmac_drvops = {
	.probe        = NULL,
	.remove       = NULL,
	.shutdown     = NULL,
	.prepare      = NULL,
	.complete     = NULL,
	.suspend      = dmac_pm_suspend,
	.suspend_late = NULL,
	.resume_early = NULL,
	.resume       = dmac_pm_resume,
};



HI_S32 DMA_DRV_Proc(struct seq_file *p, HI_VOID *v)
{
    return HI_SUCCESS;
}

static int __INIT__ dmac_module_init(void)
{
    HI_S32 ret;
    ret = HI_DRV_MODULE_Register(HI_ID_DMAC, DMAC_NAME, (HI_VOID*)&s_DmacExportFuncs);
	if(HI_SUCCESS != ret)
	{
		TRC("HI_DRV_MODULE_Register failed\n");
		return ret;
	}
	
    if (atomic_inc_return(&g_DMACInitFlag) == 1)
    {
        /*init g_DMAumapd*/
        sprintf(g_DMAumapd.devfs_name, "%s", HI_MOD_DMA);
        g_DMAumapd.fops  = &dma_fops;
        g_DMAumapd.minor = UMAP_MIN_MINOR_DMA;
        g_DMAumapd.owner  = THIS_MODULE;
		g_DMAumapd.drvops = &dmac_drvops;
        if (HI_SUCCESS != HI_DRV_DEV_Register(&g_DMAumapd))
        {
            return HI_FAILURE;
        }

        HI_DRV_PROC_AddModule("dma", DMA_DRV_Proc, NULL);
    }

#ifdef MODULE
    HI_PRINT("Load hi_dmac.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return HI_SUCCESS;
}

static void __EXIT__ dma_module_exit(void)
{
    if (atomic_dec_return(&g_DMACInitFlag) == 0)
    {
        //free_irq(DMAC_INT,NULL);

        HI_DRV_DEV_UnRegister(&g_DMAumapd);

        HI_DRV_PROC_RemoveModule("dma");
    }
	HI_DRV_MODULE_UnRegister(HI_ID_DMAC);
}

module_init(dmac_module_init);
module_exit(dma_module_exit);

module_param(sio0_mode, int, S_IRUGO);
module_param(sio1_mode, int, S_IRUGO);
module_param(sio2_mode, int, S_IRUGO);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("hi_driver_group");
MODULE_VERSION("HI_VERSION=" OSDRV_MODULE_VERSION_STRING);

EXPORT_SYMBOL(dmac_start_llim2p);
EXPORT_SYMBOL(dmac_channel_allocate);
EXPORT_SYMBOL(dmac_channelstart);
EXPORT_SYMBOL(dmac_buildllim2p);
EXPORT_SYMBOL(free_dmalli_space);
EXPORT_SYMBOL(allocate_dmalli_space);
EXPORT_SYMBOL(free_dmalli_space_in_mmz);
EXPORT_SYMBOL(allocate_dmalli_space_in_mmz);
EXPORT_SYMBOL(dmac_channelclose);
EXPORT_SYMBOL(dmac_channel_free);
EXPORT_SYMBOL(dmac_register_isr);
EXPORT_SYMBOL(dmac_start_m2p);
