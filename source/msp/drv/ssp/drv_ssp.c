/*  extdrv/interface/ssp/hi_ssp.c
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
 * along with this program;
 *
 * History:
 *      21-April-2006 create this file
 */

#include <linux/module.h>
//#include <linux/config.h>
#include <linux/errno.h>
#include <linux/miscdevice.h>
#include <linux/fcntl.h>

#include <linux/init.h>
#include <linux/delay.h>
#include <linux/proc_fs.h>
#include <linux/workqueue.h>

#include <asm/uaccess.h>
#include <asm/system.h>
#include <asm/io.h>

#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/types.h>
#include <linux/mm.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/smp_lock.h>
#include <mach/hardware.h>
#include "drv_ssp.h"
#include "hi_drv_dmac.h"
#include "hi_common.h"
#include "hi_drv_module.h"
#include "drv_dmac_ext.h"

#include "hi_module.h"
#include "hi_debug.h"

static DMAC_EXPORT_FUNC_S  *s_pDmacFunc;

#define  ssp_writew(addr,value)      ((*(volatile unsigned int *)(addr)) = (value))
#define  ssp_readw(addr,ret)           (ret =(*(volatile unsigned int *)(addr)))

#define SYS_PERI_CRG_ADDR (0x101F5000)
#define SSP_CRG_OFFSET   (0xC8)

#define SSP_BASE	0x101FF000

/* SSP register definition .*/
#define SSP_CR0              IO_ADDRESS(SSP_BASE + 0x00)
#define SSP_CR1              IO_ADDRESS(SSP_BASE + 0x04)
#define SSP_DR               IO_ADDRESS(SSP_BASE + 0x08)
#define SSP_SR               IO_ADDRESS(SSP_BASE + 0x0C)
#define SSP_CPSR             IO_ADDRESS(SSP_BASE + 0x10)
#define SSP_IMSC             IO_ADDRESS(SSP_BASE + 0x14)
#define SSP_RIS              IO_ADDRESS(SSP_BASE + 0x18)
#define SSP_MIS              IO_ADDRESS(SSP_BASE + 0x1C)
#define SSP_ICR              IO_ADDRESS(SSP_BASE + 0x20)
#define SSP_DMACR            IO_ADDRESS(SSP_BASE + 0x24)

#define SSP_TIME_OUT_COUNT    1000    //us

unsigned int ssp_dmac_rx_ch,ssp_dmac_tx_ch;

/*
 * SSP reset set or clear.
 *
 */

void hi_ssp_reset(int set)
{
    unsigned int  CRGBaseAddr;
    unsigned int  *pSspCRGAddr = HI_NULL;
    unsigned int  SspCRGValue;
    CRGBaseAddr = (HI_U32)IO_ADDRESS(SYS_PERI_CRG_ADDR);
    pSspCRGAddr = (HI_U32 *)(CRGBaseAddr + SSP_CRG_OFFSET);

    SspCRGValue = *pSspCRGAddr;
    if ( set )
    {
        *pSspCRGAddr = SspCRGValue | 0x1;
    }
    else
    {
        *pSspCRGAddr = SspCRGValue & (~0x1);
    }
//    printk("ssp %s reset. \n",set?"set":"clear");
}

/*
 * enable or disable SSP clock
 *
 */

void hi_ssp_clock(int enable)
{
    unsigned int  CRGBaseAddr;
    unsigned int  *pSspCRGAddr = HI_NULL;
    unsigned int  SspCRGValue;
    CRGBaseAddr = (HI_U32)IO_ADDRESS(SYS_PERI_CRG_ADDR);
    pSspCRGAddr = (HI_U32 *)(CRGBaseAddr + SSP_CRG_OFFSET);

    SspCRGValue = *pSspCRGAddr;
    if ( enable )
    {
        *pSspCRGAddr = SspCRGValue | 0x100;
    }
    else
    {
        *pSspCRGAddr = SspCRGValue & (~0x100);
    }
//    printk("ssp %s clock\n",enable?"enable":"disable");
}

/*
 * enable SSP routine.
 *
 */
void hi_ssp_enable(void)
{	
    int ret = 0;
	s_pDmacFunc = HI_NULL;  
	HI_DRV_MODULE_GetFunction(HI_ID_DMAC, (HI_VOID**)&s_pDmacFunc);
	
    ssp_readw(SSP_CR1,ret);
    ret |= 0x01<<1;
    ssp_writew(SSP_CR1,ret);
}


/*
 * disable SSP routine.
 *
 */

void hi_ssp_disable(void)
{
    int ret = 0;
    ssp_readw(SSP_CR1,ret);
    ret &= ~(0x01<<1);
    ssp_writew(SSP_CR1,ret);
}

/*
 * set SSP frame form routine.
 *
 * @param framemode: frame form
 * 00: Motorola SPI frame form.
 * when set the mode,need set SSPCLKOUT phase and SSPCLKOUT voltage level.
 * 01: TI synchronous serial frame form
 * 10: National Microwire frame form
 * 11: reserved
 * @param sphvalue: SSPCLKOUT phase (0/1)
 * @param sp0: SSPCLKOUT voltage level (0/1)
 * @param datavalue: data bit
 * 0000: reserved    0001: reserved    0010: reserved    0011: 4bit data
 * 0100: 5bit data   0101: 6bit data   0110:7bit data    0111: 8bit data
 * 1000: 9bit data   1001: 10bit data  1010:11bit data   1011: 12bit data
 * 1100: 13bit data  1101: 14bit data  1110:15bit data   1111: 16bit data
 *
 * @return value: 0--success; -1--error.
 *
 */

int hi_ssp_set_frameform(unsigned char framemode,unsigned char spo,unsigned char sph,unsigned char datawidth)
{
    int ret = 0;
    ssp_readw(SSP_CR0,ret);
    if(framemode > 3)
    {
        //printk("set frame parameter err.\n");
        return -1;
    }
    ret = (ret & 0xFFCF) | (framemode << 4);
    if((ret & 0x30) == 0)
    {
        if(spo > 1)
        {
            //printk("set spo parameter err.\n");
            return -1;
        }
        if(sph > 1)
        {
            //printk("set sph parameter err.\n");
            return -1;
        }
        ret = (ret & 0xFF3F) | (sph << 7) | (spo << 6);
    }
    if((datawidth > 16) || (datawidth < 4))
    {
        //printk("set datawidth parameter err.\n");
        return -1;
    }
    ret = (ret & 0xFFF0) | (datawidth -1);
    ssp_writew(SSP_CR0,ret);

    return 0;
}

/*
 * set SSP serial clock rate routine.
 *
 * @param scr: scr value.(0-255,usually it is 0)
 * @param cpsdvsr: Clock prescale divisor.(2-254 even)
 *
 * @return value: 0--success; -1--error.
 *
 */

int hi_ssp_set_serialclock(unsigned char scr,unsigned char cpsdvsr)
{
    int ret = 0;
    ssp_readw(SSP_CR0,ret);
    ret = (ret & 0xFF) | (scr << 8);
    ssp_writew(SSP_CR0,ret);
    if((cpsdvsr & 0x1))
    {
        //printk("set cpsdvsr parameter err.\n");
        return -1;
    }
    ssp_writew(SSP_CPSR,cpsdvsr);
    return 0;
}

void hi_ssp_set_bigend(bool bBigEnd)
{
    int ret = 0;
    ssp_readw(SSP_CR1,ret);
    if(bBigEnd)
    {
        ret = ret & (~(0x1 << 4)); /* big/little end, 0: big, 1: little */
    }
    else
    {
        ret = ret | (0x1 << 4); /* big/little end, 0: big, 1: little */
    }
    ssp_writew(SSP_CR1,ret);
}


/*
 * set SSP interrupt routine.
 *
 * @param regvalue: SSP_IMSC register value.(0-255,usually it is 0)
 *
 */
void hi_ssp_set_inturrupt(unsigned char regvalue)
{

    ssp_writew(SSP_IMSC,(regvalue&0x0f));
}

/*
 * clear SSP interrupt routine.
 *
 */

void hi_ssp_interrupt_clear(void)
{
    ssp_writew(SSP_ICR,0x3);
}

/*
 * enable SSP dma mode routine.
 *
 */

void hi_ssp_dmac_enable(void)
{
    ssp_writew(SSP_DMACR,0x3);
}

/*
 * disable SSP dma mode routine.
 *
 */

void hi_ssp_dmac_disable(void)
{
    ssp_writew(SSP_DMACR,0);
}



/*
 * check SSP busy state routine.
 *
 * @return value: 0--free; 1--busy.
 *
 */

unsigned int hi_ssp_busystate_check(void)
{
    int ret = 0;
    ssp_readw(SSP_SR,ret);
    if((ret & 0x10) != 0x10)
        return 0;
    else
        return 1;
}

unsigned int hi_ssp_is_fifo_empty(int bSend)
{
    int ret = 0;
    ssp_readw(SSP_SR,ret);

    if (bSend)
    {
        if((ret & 0x1) == 0x1) /* send fifo */
            return 1;
        else
            return 0;
    }
    else
    {
        if((ret & 0x4) == 0x4) /* receive fifo */
            return 0;
        else
            return 1;
    }
}

/*
 *  write SSP_DR register rountine.
 *
 *  @param  sdata: data of SSP_DR register
 *
 */


void hi_ssp_writedata(unsigned short sdata)
{
    int regval;
    int count;
   
    hi_ssp_enable();
    
    ssp_writew(SSP_DR,sdata);
    
    //about wait 4us for 2.5MHz SPI_CLK to send out the data.
    count = 0;
    do
    {
        udelay(1);
        ssp_readw(SSP_SR,regval);
        count++;
    }
    while(((regval&0x15)!=0x05)&&(count<SSP_TIME_OUT_COUNT));  

    if(count >= SSP_TIME_OUT_COUNT)
    {
        return;
    }

    do
    {
        ssp_readw(SSP_DR,sdata);
        ssp_readw(SSP_SR,regval);
    }
    while((regval & 0x04) != 0x00);  

    hi_ssp_disable();
    udelay(4);      //The SPI_CS should keep released over 2.5us for SLIC chip (LE89116).
}

/*
 *  read SSP_DR register rountine.
 *
 *  @return value: data from SSP_DR register readed
 *
 */

int hi_ssp_readdata(void)
{
    int regval,data;
    int count;
    
    hi_ssp_enable();
    
    ssp_writew(SSP_DR,0);
    
    //about wait 4us for 2.5MHz SPI_CLK to send out the data.
    count = 0;
    do
    {
        udelay(1);
        ssp_readw(SSP_SR,regval);
        count++;
    }
    while(((regval&0x15)!=0x05)&&(count<SSP_TIME_OUT_COUNT));  

    if(count >= SSP_TIME_OUT_COUNT)
    {
        return 0;
    }
    
    do
    {
        ssp_readw(SSP_DR,data);
        ssp_readw(SSP_SR,regval);
    }
    while((regval & 0x04) != 0x00);  
    
    hi_ssp_disable();
    udelay(4);      //The SPI_CS should keep released over 2.5us for SLIC chip (LE89116).
    return data;
}

/*
 * check SSP busy state routine.
 * @param prx_dmac_hook : dmac rx interrupt function pointer
 * @param ptx_dmac_hook : dmac tx interrupt function pointer
 *
 * @return value: 0--success; -1--error.
 *
 */

int hi_ssp_dmac_init(void * prx_dmac_hook,void * ptx_dmac_hook)
{
    if (s_pDmacFunc && s_pDmacFunc->pfnDmacChannelAllocate)
    {
	    ssp_dmac_rx_ch = (s_pDmacFunc->pfnDmacChannelAllocate)(prx_dmac_hook);
    }
	if(ssp_dmac_rx_ch < 0)
	{
	    //printk("SSP no available rx channel can allocate.\n");
	    return -1;
	}
	ssp_dmac_tx_ch = dmac_channel_allocate(ptx_dmac_hook);
	if(ssp_dmac_tx_ch < 0)
	{
	    //printk("SSP no available tx channel can allocate.\n");
	    if (s_pDmacFunc && s_pDmacFunc->pfnDmacChannelFree)
	    {
	        (s_pDmacFunc->pfnDmacChannelFree)(ssp_dmac_rx_ch);
	    }
	    return -1;
	}
	return 0;
}


/*
 * SSP dma mode data transfer routine.
 * @param phy_rxbufaddr : rxbuf physical address
 * @param phy_txbufaddr : txbuf physical address
 * @param transfersize : transfer data size
 *
 * @return value: 0--success; -1--error.
 *
 */
int hi_ssp_dmac_transfer(unsigned int phy_rxbufaddr,unsigned int phy_txbufaddr,unsigned int transfersize)
{
	int ret=0;
    if(s_pDmacFunc && s_pDmacFunc->pfnDmacStartM2p)
    {
		ret=(s_pDmacFunc->pfnDmacStartM2p)(ssp_dmac_rx_ch,phy_rxbufaddr, DMAC_SSP_RX_REQ, transfersize,0);
		if(ret != 0)
		{
			return(ret);
	    }
		ret=(s_pDmacFunc->pfnDmacStartM2p)(ssp_dmac_tx_ch,phy_txbufaddr, DMAC_SSP_TX_REQ, transfersize,0);
		if(ret != 0)
		{
			return(ret);
	    }
    }
	if (s_pDmacFunc && s_pDmacFunc->pfnDmacChannelStart)
	{
	    (s_pDmacFunc->pfnDmacChannelStart)(ssp_dmac_rx_ch);
		(s_pDmacFunc->pfnDmacChannelStart)(ssp_dmac_tx_ch);
	}

	return 0;
}


/*
 * SSP dma mode exit
 *
 * @return value: 0 is ok
 *
 */
void hi_ssp_dmac_exit(void)
{
    if (s_pDmacFunc && s_pDmacFunc->pfnDmacChannelFree)
    {
	    (s_pDmacFunc->pfnDmacChannelFree)(ssp_dmac_rx_ch);
    }
	if (s_pDmacFunc && s_pDmacFunc->pfnDmacChannelFree)
	{
	    (s_pDmacFunc->pfnDmacChannelFree)(ssp_dmac_tx_ch);
	}
}

//static unsigned int  sspinitialized =0;

/*
 * initializes SSP interface routine.
 *
 * @return value:0--success.
 *
 */
static int __INIT__ hi_ssp_init(void)
{
#if 0
    unsigned int reg;
    KCOM_HI_DMAC_INIT();

    if (sspinitialized == 0)
    {
        reg = readl(IO_ADDRESS(0x101E0040));
        reg &= 0xfffcf3ff;
        reg |= 0x00010800;
        writel(reg,IO_ADDRESS(0x101E0040));
        sspinitialized = 1;
    }
    else
    {
        HI_ERR_PRINT(HI_ID_SIO, "SSP has been initialized.\n");
        return 0;
    }
#endif
    //spiconfig_multi();

#ifdef MODULE
    HI_PRINT("Load hi_ssp.ko success.  \t(%s)\n", VERSION_STRING);
#endif

    return 0;
}

static void __EXIT__ hi_ssp_exit(void)
{
    #if 0
    sspinitialized =0;
    hi_ssp_dmac_exit();
    KCOM_HI_DMAC_EXIT();
    #endif
}

#ifdef MODULE
module_init(hi_ssp_init);
module_exit(hi_ssp_exit);
#else
late_initcall_sync(hi_ssp_init);
#endif

EXPORT_SYMBOL(hi_ssp_reset);
EXPORT_SYMBOL(hi_ssp_clock);
EXPORT_SYMBOL(hi_ssp_enable);
EXPORT_SYMBOL(hi_ssp_disable);
EXPORT_SYMBOL(hi_ssp_set_bigend);
EXPORT_SYMBOL(hi_ssp_readdata);
EXPORT_SYMBOL(hi_ssp_writedata);
EXPORT_SYMBOL(hi_ssp_set_frameform);
EXPORT_SYMBOL(hi_ssp_set_serialclock);
EXPORT_SYMBOL(hi_ssp_set_inturrupt);
EXPORT_SYMBOL(hi_ssp_dmac_disable);
EXPORT_SYMBOL(hi_ssp_interrupt_clear);


MODULE_LICENSE("GPL");





