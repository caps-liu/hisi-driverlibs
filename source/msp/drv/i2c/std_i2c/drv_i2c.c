/*  extdrv/interface/i2c/hi_i2c.c
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
 *      19-April-2006 create this file
 */
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

#include "hi_kernel_adapt.h"
#include "hi_drv_reg.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_sys.h"
#include "drv_i2c.h"
#include "drv_i2c_ioctl.h"
#include "drv_i2c_ext.h"
#include "hi_common.h"
#include "hi_reg_common.h"
#include "hi_drv_i2c.h"
#include "hi_module.h"
#include "hi_drv_module.h"
#include "hi_drv_mem.h"

#define I2C_WAIT_TIME_OUT 0x1000

#define I2C_WRITE_REG(Addr, Value) ((*(volatile HI_U32 *)(Addr)) = (Value))
#define I2C_READ_REG(Addr) (*(volatile HI_U32 *)(Addr))

//static UMAP_DEVICE_S   g_I2cRegisterData;
//static atomic_t g_I2cCount = ATOMIC_INIT(0);
HI_DECLARE_MUTEX(g_I2cMutex);

static HI_U32 g_I2cKernelAddr[HI_STD_I2C_NUM];
static HI_U32 regI2CStore[HI_STD_I2C_NUM] = {0};
HI_U32 g_aI2cRate[HI_STD_I2C_NUM] = {0};

static HI_CHIP_TYPE_E g_enChipType;

static I2C_EXT_FUNC_S g_stI2cExtFuncs =
{
    .pfnI2cWriteConfig	= HI_DRV_I2C_WriteConfig,
    .pfnI2cWrite		= HI_DRV_I2C_Write,
    .pfnI2cRead			= HI_DRV_I2C_Read,
    .pfnI2cWriteNostop	= HI_DRV_I2C_Write_NoSTOP,
    .pfnI2cReadDirectly = HI_DRV_I2C_ReadDirectly,
};

HI_VOID I2C_DRV_SetRate(HI_U32 I2cNum, HI_U32 I2cRate)
{
    HI_U32 Value = 0;
    HI_U32 SclH = 0;
    HI_U32 SclL = 0;

    //HI_CHIP_TYPE_E enChipType;
    //HI_U32 u32ChipVersion;
    HI_U32 SysClock = I2C_DFT_SYSCLK;

    if (I2cNum >= HI_STD_I2C_NUM)
    {
        return;
    }

    g_aI2cRate[I2cNum] = I2cRate;

    /* read i2c I2C_CTRL register*/
    Value = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_CTRL_REG));

    /* close all i2c  interrupt */
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_CTRL_REG), (Value & (~I2C_UNMASK_TOTAL)));

    //HI_DRV_SYS_GetChipVersion( &enChipType, &u32ChipVersion );
    if (HI_CHIP_TYPE_HI3716C == g_enChipType)
    {
        SysClock = I2C_3716C_SYSCLK;
    }

    SclH = (SysClock / (I2cRate * 2)) / 2 - 1;
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_SCL_H_REG), SclH);

    SclL = (SysClock / (I2cRate * 2)) / 2 - 1;
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_SCL_L_REG), SclL);

    /*enable i2c interrupt, resume original  interrupt*/
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_CTRL_REG), Value);

    return;
}

HI_S32 I2C_DRV_WaitWriteEnd(HI_U32 I2cNum)
{
    HI_U32 I2cSrReg;
    HI_U32 i = 0;

    do
    {
        I2cSrReg = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_SR_REG));

        if (i > I2C_WAIT_TIME_OUT)
        {
            HI_ERR_I2C("wait write data timeout!\n");
            return HI_FAILURE;
        }

        i++;
    } while ((I2cSrReg & I2C_OVER_INTR) != I2C_OVER_INTR);

    if (I2cSrReg & I2C_ACK_INTR)
    {
        HI_ERR_I2C("wait write data timeout!\n");
        return HI_FAILURE;
    }

    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_ICR_REG), I2C_CLEAR_ALL);

    return HI_SUCCESS;
}

HI_S32 I2C_DRV_WaitRead(HI_U32 I2cNum)
{
    HI_U32 I2cSrReg;
    HI_U32 i = 0;

    do
    {
        I2cSrReg = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_SR_REG));

        if (i > I2C_WAIT_TIME_OUT)
        {
            HI_ERR_I2C("wait Read data timeout!\n");
            return HI_FAILURE;
        }

        i++;
    } while ((I2cSrReg & I2C_RECEIVE_INTR) != I2C_RECEIVE_INTR);

    return HI_SUCCESS;
}

/*
add by Jiang Lei 2010-08-24
I2C write finished acknowledgement function
it use to e2prom device ,make sure it finished write operation.
i2c master start next write operation must waiting when it acknowledge e2prom write cycle finished.
 */
HI_S32 I2C_DRV_WriteConfig(HI_U32 I2cNum, HI_U8 I2cDevAddr)
{
    HI_U32 i = 0;
    HI_U32 j = 0;
    HI_U32 I2cSrReg;

    do
    {
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (I2cDevAddr & WRITE_OPERATION));
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), (I2C_WRITE | I2C_START));

        j = 0;
        do
        {
            I2cSrReg = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_SR_REG));

            if (j > I2C_WAIT_TIME_OUT)
            {
                HI_ERR_I2C("wait write data timeout!\n");
                return HI_FAILURE;
            }

            j++;
        } while ((I2cSrReg & I2C_OVER_INTR) != I2C_OVER_INTR);

        I2cSrReg = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_SR_REG));
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_ICR_REG), I2C_CLEAR_ALL);

        i++;

        if (i > 0x200000) //I2C_WAIT_TIME_OUT)
        {
            HI_ERR_I2C("wait write ack ok timeout!\n");
            return HI_FAILURE;
        }
    } while ((I2cSrReg & I2C_ACK_INTR));

    return HI_SUCCESS;
}

HI_S32 I2C_DRV_Write(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum, HI_U8 *pData,
                     HI_U32 DataLen, HI_BOOL bWithStop)
{
    HI_U32 i;

    //    unsigned long   IntFlag;
    HI_U32 RegAddr;

    //local_irq_save(IntFlag);

    /*  clear interrupt flag*/
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_ICR_REG), I2C_CLEAR_ALL);

    /* send devide address */
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (I2cDevAddr & WRITE_OPERATION));
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), (I2C_WRITE | I2C_START));

    if (I2C_DRV_WaitWriteEnd(I2cNum))
    {
        //local_irq_restore(IntFlag);
        //HI_ERR_I2C("wait write data timeout!%s, %d\n", __func__, __LINE__);
        return HI_ERR_I2C_WRITE_TIMEOUT;
    }

    /* send register address which will need to write */
    for (i = 0; i < I2cRegAddrByteNum; i++)
    {
        RegAddr = I2cRegAddr >> ((I2cRegAddrByteNum - i - 1) * 8);
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), RegAddr);

        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_WRITE);

        if (I2C_DRV_WaitWriteEnd(I2cNum))
        {
            //local_irq_restore(IntFlag);
            //HI_ERR_I2C("wait write data timeout!%s, %d\n", __func__, __LINE__);
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
    }

    /* send data */
    for (i = 0; i < DataLen; i++)
    {
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (*(pData + i)));
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_WRITE);

        if (I2C_DRV_WaitWriteEnd(I2cNum))
        {
            //local_irq_restore(IntFlag);
            //HI_ERR_I2C("wait write data timeout!%s, %d\n", __func__, __LINE__);
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
    }

    if (bWithStop)
    {
        /*   send stop flag bit*/
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_STOP);
        if (I2C_DRV_WaitWriteEnd(I2cNum))
        {
            //local_irq_restore(IntFlag);
            //HI_ERR_I2C("wait write data timeout!%s, %d\n", __func__, __LINE__);
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
    }

    //local_irq_restore(IntFlag);

    return HI_SUCCESS;
}

int I2C_DRV_Read(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_BOOL bSendSlave, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum,
                 HI_U8 *pData, HI_U32 DataLen)
{
    HI_U32 dataTmp = 0xff;
    HI_U32 i;

    //    unsigned long   IntFlag;
    HI_U32 RegAddr;

    //local_irq_save(IntFlag);

    if (bSendSlave)
    {
        /* clear interrupt flag*/
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_ICR_REG), I2C_CLEAR_ALL);

        /* send devide address*/
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (I2cDevAddr & WRITE_OPERATION));
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), (I2C_WRITE | I2C_START));

        if (I2C_DRV_WaitWriteEnd(I2cNum))
        {
            //local_irq_restore(IntFlag);
            //HI_ERR_I2C("wait write data timeout!\n");
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
    }

    /* send register address which will need to write*/
    for (i = 0; i < I2cRegAddrByteNum; i++)
    {
        RegAddr = I2cRegAddr >> ((I2cRegAddrByteNum - i - 1) * 8);
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), RegAddr);

        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_WRITE);

        if (I2C_DRV_WaitWriteEnd(I2cNum))
        {
            //local_irq_restore(IntFlag);
            //HI_ERR_I2C("wait write data timeout!\n");
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
    }

    /* send register address which will need to read */
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (I2cDevAddr | READ_OPERATION));
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_WRITE | I2C_START);

    if (I2C_DRV_WaitWriteEnd(I2cNum))
    {
        //local_irq_restore(IntFlag);
        return HI_ERR_I2C_WRITE_TIMEOUT;
    }

    /* repetitivily read data */
    for (i = 0; i < DataLen; i++)
    {
        /*  the last byte don't need send ACK*/
        if (i == (DataLen - 1))
        {
            I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), (I2C_READ | (~I2C_SEND_ACK)));
        }
        /*  if i2c master receive data will send ACK*/
        else
        {
            I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_READ);
        }

        if (I2C_DRV_WaitRead(I2cNum))
        {
            //local_irq_restore(IntFlag);
            //HI_ERR_I2C("wait read data timeout!\n");
            return HI_ERR_I2C_READ_TIMEOUT;
        }

        dataTmp = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_RXR_REG));
        *(pData + i) = dataTmp & 0xff;

        if (I2C_DRV_WaitWriteEnd(I2cNum))
        {
            //local_irq_restore(IntFlag);
            //HI_ERR_I2C("wait write data timeout!\n");
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
    }

    /* send stop flag bit*/
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_STOP);
    if (I2C_DRV_WaitWriteEnd(I2cNum))
    {
        //local_irq_restore(IntFlag);
        //HI_ERR_I2C("wait write data timeout!\n");
        return HI_ERR_I2C_WRITE_TIMEOUT;
    }

    //local_irq_restore(IntFlag);

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype    :
 Description  : I2C  mudole suspend function
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
struct i2c_pm_Info
{
    unsigned int rsclh;
    unsigned int rscll;
};
static int i2cState = 0;
static struct i2c_pm_Info pmStatus[HI_I2C_MAX_NUM];

/*
static void  i2c_pm_reset(void)
{
    int i;
    i2cState = 0;
    for(i = 0; i < HI_I2C_MAX_NUM; i++)
    {
        if (i > HI_UNF_I2C_CHANNEL_QAM)
        {
            break;
        }
        pmStatus[i].rsclh = I2C_DFT_RATE;
        pmStatus[i].rscll = I2C_DFT_RATE;
    }
    return;
}
 */

/* beacuse this mudule have opened in  tuner/e2prom ModeuleInit, so relational opened operation register need to  store */
int  i2c_pm_suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    int i;
    int ret;

    ret = down_trylock(&g_I2cMutex);
    if (ret)
    {
        HI_INFO_I2C("lock err!\n");
        return -1;
    }

    // 1

    // 2
    for (i = 0; i < HI_STD_I2C_NUM; i++)
    {
        /* disable all i2c interrupt */
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_CTRL_REG), 0x0);

        /* clear all i2c interrupt*/
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_ICR_REG), I2C_CLEAR_ALL);

        /*store  I2C_SCL_H and  I2C_SCL_L  register*/
        pmStatus[i].rsclh = I2C_READ_REG(g_I2cKernelAddr[i] + I2C_SCL_H_REG);
        pmStatus[i].rscll = I2C_READ_REG(g_I2cKernelAddr[i] + I2C_SCL_L_REG);
    }

#if  defined (CHIP_TYPE_hi3716cv200es) || defined (CHIP_TYPE_hi3716cv200) \
	|| defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100)  \
	|| defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
	|| defined (CHIP_TYPE_hi3718mv100) 
    regI2CStore[0] = g_pstRegCrg->PERI_CRG27.u32;
#endif


    up(&g_I2cMutex);
    HI_INFO_I2C("i2c_pm_suspend ok \n");
    return 0;
}

int  i2c_pm_resume(PM_BASEDEV_S *pdev)
{
    int i;
    int ret;

    ret = down_trylock(&g_I2cMutex);
    if (ret)
    {
        HI_INFO_I2C("lock err!\n");
        return -1;
    }

#if  defined (CHIP_TYPE_hi3716cv200es) || defined (CHIP_TYPE_hi3716cv200) \
	|| defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100)  \
	|| defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
	|| defined (CHIP_TYPE_hi3718mv100) 
    g_pstRegCrg->PERI_CRG27.u32 = regI2CStore[0];
#endif

    // 1
    // 2
    for (i = 0; i < HI_STD_I2C_NUM; i++)
    {
        /*disable all i2c interrupt*/
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_CTRL_REG), 0x0);

        /*resume previous store register before suspend*/
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_SCL_H_REG), pmStatus[i].rsclh);
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_SCL_L_REG), pmStatus[i].rscll);

        /*  config scl clk rate*/
        I2C_DRV_SetRate(i, I2C_DFT_RATE);

        /*clear all i2c interrupt*/
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_ICR_REG), I2C_CLEAR_ALL);

        /*enable relative interrupt*/
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_CTRL_REG), (I2C_ENABLE | I2C_UNMASK_TOTAL | I2C_UNMASK_ALL));
    }

    //i2c_pm_reset();
    up(&g_I2cMutex);
    HI_INFO_I2C("i2c_pm_resume ok \n");
    return 0;
}

/*****************************************************************************/
static HI_VOID HI_DRV_I2C_Open(HI_VOID)
{
    HI_S32 Ret;
    HI_U32 i;

    if (1 == i2cState)
    {
        return;
    }

    Ret = down_interruptible(&g_I2cMutex);
    if (Ret)
    {
        HI_INFO_I2C("lock g_I2cMutex error.\n");
        return;
    }

    for (i = 0; i < HI_STD_I2C_NUM; i++)
    {
        /*disable all i2c interrupt*/
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_CTRL_REG), 0x0);

        /*  config scl clk rate*/
        I2C_DRV_SetRate(i, I2C_DFT_RATE);

        /*clear all i2c interrupt*/
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_ICR_REG), I2C_CLEAR_ALL);

        /*enable relative interrupt*/
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_CTRL_REG), (I2C_ENABLE | I2C_UNMASK_TOTAL | I2C_UNMASK_ALL));
    }

    i2cState = 1;

    up(&g_I2cMutex);
    return;
}

HI_S32 I2C_Ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
    HI_S32 Ret = 0;
    HI_U8  *pData = NULL;
    I2C_DATA_S I2cData;
    I2C_RATE_S I2cRate;
    void __user *argp = (void __user*)arg;

    Ret = down_interruptible(&g_I2cMutex);
    if (Ret)
    {
        HI_INFO_I2C("lock g_I2cMutex error.\n");
        return HI_FAILURE;
    }

    switch (cmd)
    {
    case CMD_I2C_WRITE:
        {
            if (copy_from_user(&I2cData, argp, sizeof(I2C_DATA_S)))
            {
                HI_INFO_I2C("copy data from user fail!\n");
                Ret = HI_ERR_I2C_COPY_DATA_ERR;
                break;
            }

            pData = HI_KMALLOC(HI_ID_I2C, I2cData.DataLen, GFP_KERNEL);
            if (!pData)
            {
                HI_ERR_I2C("i2c kmalloc fail!\n");
                Ret = HI_ERR_I2C_MALLOC_ERR;
                break;
            }

            if (copy_from_user(pData, I2cData.pData, I2cData.DataLen))
            {
                HI_INFO_I2C("copy data from user fail!\n");
                HI_KFREE(HI_ID_I2C, pData);
                Ret = HI_ERR_I2C_COPY_DATA_ERR;
                break;
            }

            Ret = I2C_DRV_Write(I2cData.I2cNum, I2cData.I2cDevAddr, I2cData.I2cRegAddr, I2cData.I2cRegCount, pData,
                                I2cData.DataLen, HI_TRUE);
            HI_KFREE(HI_ID_I2C, pData);
            break;
        }

    case CMD_I2C_READ:
        {
            if (copy_from_user(&I2cData, argp, sizeof(I2C_DATA_S)))
            {
                HI_INFO_I2C("copy data from user fail!\n");
                Ret = HI_ERR_I2C_COPY_DATA_ERR;
                break;
            }

            pData = HI_KMALLOC(HI_ID_I2C, I2cData.DataLen, GFP_KERNEL);
            if (!pData)
            {
                HI_ERR_I2C("i2c kmalloc fail!\n");
                Ret = HI_ERR_I2C_MALLOC_ERR;
                break;
            }

            Ret = I2C_DRV_Read(I2cData.I2cNum, I2cData.I2cDevAddr, HI_TRUE, I2cData.I2cRegAddr, I2cData.I2cRegCount,
                               pData, I2cData.DataLen);
            if (HI_SUCCESS == Ret)
            {
                if (copy_to_user(I2cData.pData, pData, I2cData.DataLen))
                {
                    HI_INFO_I2C("copy data to user fail!\n");
                    Ret = HI_ERR_I2C_COPY_DATA_ERR;
                }
            }

            HI_KFREE(HI_ID_I2C, pData);
            break;
        }

    case  CMD_I2C_SET_RATE:
        {
            if (copy_from_user(&I2cRate, argp, sizeof(I2C_RATE_S)))
            {
                HI_INFO_I2C("copy data from user fail!\n");
                Ret = HI_FAILURE;
                break;
            }

            I2C_DRV_SetRate(I2cRate.I2cNum, I2cRate.I2cRate);
            Ret = HI_SUCCESS;
            break;
        }
    default:
        {
            up(&g_I2cMutex);
            return -ENOIOCTLCMD;
        }
    }

    up(&g_I2cMutex);
    return Ret;
}

HI_S32 HI_DRV_I2C_Init(HI_VOID)
{
    //HI_CHIP_TYPE_E enChipType;
    //HI_U32 u32ChipVersion = 0;
    HI_U32 u32RegVal = 0;
    HI_S32 s32Ret = HI_SUCCESS;

    s32Ret = HI_DRV_MODULE_Register(HI_ID_I2C, "HI_I2C", (HI_VOID *)&g_stI2cExtFuncs);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_I2C(" GPIO Module register failed 0x%x.\n", s32Ret);
        return HI_FAILURE;
    }

    g_I2cKernelAddr[0] = IO_ADDRESS(I2C0_PHY_ADDR);
    g_I2cKernelAddr[1] = IO_ADDRESS(I2C1_PHY_ADDR);
    g_I2cKernelAddr[2] = IO_ADDRESS(I2C2_PHY_ADDR);
    g_I2cKernelAddr[3] = IO_ADDRESS(I2C3_PHY_ADDR);
    g_I2cKernelAddr[4] = IO_ADDRESS(I2C4_PHY_ADDR);
#if  defined (CHIP_TYPE_hi3716cv200es) || defined (CHIP_TYPE_hi3716cv200) \
	|| defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100)  \
	|| defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
	|| defined (CHIP_TYPE_hi3718mv100) 
    g_I2cKernelAddr[5] = IO_ADDRESS(I2CQAM_PHY_ADDR);
#endif


#if  defined (CHIP_TYPE_hi3716cv200es) || defined (CHIP_TYPE_hi3716cv200) \
	|| defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100)  \
	|| defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
	|| defined (CHIP_TYPE_hi3718mv100) 
    u32RegVal  = g_pstRegCrg->PERI_CRG27.u32;
    u32RegVal &= ~0x222222;
    u32RegVal |= 0x111111;
    g_pstRegCrg->PERI_CRG27.u32 = u32RegVal;
#endif
    HI_DRV_I2C_Open();

    return 0;
}

HI_VOID HI_DRV_I2C_DeInit(HI_VOID)
{
    HI_U32 u32RegVal;
    HI_S32 s32Ret = HI_SUCCESS;

    s32Ret = HI_DRV_MODULE_UnRegister(HI_ID_I2C);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_I2C(" GPIO Module unregister failed 0x%x.\n", s32Ret);
    }


#if  defined (CHIP_TYPE_hi3716cv200es) || defined (CHIP_TYPE_hi3716cv200) \
	|| defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100)  \
	|| defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
	|| defined (CHIP_TYPE_hi3718mv100) 
    u32RegVal  = g_pstRegCrg->PERI_CRG27.u32;
    u32RegVal |= 0x222222;
    g_pstRegCrg->PERI_CRG27.u32 = u32RegVal;
#endif

    i2cState = 0;

    return;
}

HI_S32 HI_DRV_I2C_WriteConfig(HI_U32 I2cNum, HI_U8 I2cDevAddr)
{
    HI_S32 Ret;

    if (I2cNum >= HI_STD_I2C_NUM)
    {
        HI_ERR_I2C("I2cNum(%d) is wrong, STD_I2C_NUM is %d\n", I2cNum, HI_STD_I2C_NUM);
        return HI_FAILURE;
    }

    Ret = down_interruptible(&g_I2cMutex);
    if (Ret)
    {
        HI_INFO_I2C("lock g_I2cMutex error.\n");
        return HI_FAILURE;
    }

    Ret = I2C_DRV_WriteConfig(I2cNum, I2cDevAddr);

    up(&g_I2cMutex);

    return Ret;
}

HI_S32 HI_DRV_I2C_Write(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum, HI_U8 *pData,
                        HI_U32 DataLen)
{
    HI_S32 Ret;

    if (I2cNum >= HI_STD_I2C_NUM)
    {
        HI_ERR_I2C("I2cNum(%d) is wrong, STD_I2C_NUM is %d\n", I2cNum, HI_STD_I2C_NUM);
        return HI_FAILURE;
    }

    Ret = down_interruptible(&g_I2cMutex);
    if (Ret)
    {
        HI_INFO_I2C("lock g_I2cMutex error.\n");
        return HI_FAILURE;
    }

    Ret = I2C_DRV_Write(I2cNum, I2cDevAddr, I2cRegAddr, I2cRegAddrByteNum, pData, DataLen, HI_TRUE);
    HI_INFO_I2C("Ret=0x%x, I2cNum=%d, DevAddr=0x%x, RegAddr=0x%x, Num=%d, Len=%d, data0=0x%x\n", Ret, I2cNum,
                I2cDevAddr, I2cRegAddr, I2cRegAddrByteNum, DataLen, pData[0]);

    up(&g_I2cMutex);

    return Ret;
}

HI_S32 HI_DRV_I2C_Write_NoSTOP(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum,
                               HI_U8 *pData, HI_U32 DataLen)
{
    HI_S32 Ret;

    if (I2cNum >= HI_STD_I2C_NUM)
    {
        HI_ERR_I2C("I2cNum(%d) is wrong, STD_I2C_NUM is %d\n", I2cNum, HI_STD_I2C_NUM);
        return HI_FAILURE;
    }

    Ret = down_interruptible(&g_I2cMutex);
    if (Ret)
    {
        HI_INFO_I2C("lock g_I2cMutex error.\n");
        return HI_FAILURE;
    }

    Ret = I2C_DRV_Write(I2cNum, I2cDevAddr, I2cRegAddr, I2cRegAddrByteNum, pData, DataLen, HI_FALSE);
    HI_INFO_I2C("Ret=0x%x, I2cNum=%d, DevAddr=0x%x, RegAddr=0x%x, Num=%d, Len=%d, data0=0x%x\n", Ret, I2cNum,
                I2cDevAddr, I2cRegAddr, I2cRegAddrByteNum, DataLen, pData[0]);

    up(&g_I2cMutex);

    return Ret;
}

HI_S32 HI_DRV_I2C_Read(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum, HI_U8 *pData,
                       HI_U32 DataLen)
{
    HI_S32 Ret;

    if (I2cNum >= HI_STD_I2C_NUM)
    {
        HI_ERR_I2C("I2cNum(%d) is wrong, STD_I2C_NUM is %d\n", I2cNum, HI_STD_I2C_NUM);
        return HI_FAILURE;
    }

    Ret = down_interruptible(&g_I2cMutex);
    if (Ret)
    {
        HI_INFO_I2C("lock g_I2cMutex error.\n");
        return HI_FAILURE;
    }

    Ret = I2C_DRV_Read(I2cNum, I2cDevAddr, HI_TRUE, I2cRegAddr, I2cRegAddrByteNum, pData, DataLen);
    HI_INFO_I2C("Ret=0x%x, I2cNum=%d, DevAddr=0x%x, RegAddr=0x%x, Num=%d, Len=%d\n", Ret, I2cNum, I2cDevAddr,
                I2cRegAddr, I2cRegAddrByteNum, DataLen);

    up(&g_I2cMutex);

    return Ret;
}

/* Added begin: l00185424 20120131, for avl6211 demod */
/* Some I2C needn't send slave address before read */
HI_S32 HI_DRV_I2C_ReadDirectly(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum,
                               HI_U8 *pData, HI_U32 DataLen)
{
    HI_S32 Ret;

    if (I2cNum >= HI_STD_I2C_NUM)
    {
        HI_ERR_I2C("I2cNum(%d) is wrong, STD_I2C_NUM is %d\n", I2cNum, HI_STD_I2C_NUM);
        return HI_FAILURE;
    }

    Ret = down_interruptible(&g_I2cMutex);
    if (Ret)
    {
        HI_INFO_I2C("lock g_I2cMutex error.\n");
        return HI_FAILURE;
    }

    Ret = I2C_DRV_Read(I2cNum, I2cDevAddr, HI_FALSE, I2cRegAddr, I2cRegAddrByteNum, pData, DataLen);
    HI_INFO_I2C("Ret=0x%x, I2cNum=%d, DevAddr=0x%x, RegAddr=0x%x, Num=%d, Len=%d\n", Ret, I2cNum, I2cDevAddr,
                I2cRegAddr, I2cRegAddrByteNum, DataLen);

    up(&g_I2cMutex);

    return Ret;
}

/* Added end: l00185424 20120131, for avl6211 demod */

#ifndef MODULE
EXPORT_SYMBOL(I2C_Ioctl);
EXPORT_SYMBOL(i2c_pm_suspend);
EXPORT_SYMBOL(i2c_pm_resume);
#endif

EXPORT_SYMBOL(HI_DRV_I2C_Init);
EXPORT_SYMBOL(HI_DRV_I2C_DeInit);

#if 1
EXPORT_SYMBOL(HI_DRV_I2C_WriteConfig);
EXPORT_SYMBOL(HI_DRV_I2C_Write);
EXPORT_SYMBOL(HI_DRV_I2C_Read);
EXPORT_SYMBOL(HI_DRV_I2C_ReadDirectly);
EXPORT_SYMBOL(HI_DRV_I2C_Write_NoSTOP);
#endif
