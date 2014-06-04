/* extdrv/peripheral/vad/tvp5150.c
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
 *      10-April-2006 create this file
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
#include <linux/init.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/system.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/delay.h>
#include <linux/timer.h>
#include <linux/string.h>
#include <linux/list.h>
#include <asm/delay.h>

#include "hi_type.h"
#include "drv_i2c_ext.h"
#include "drv_gpio_ext.h"
#include "drv_gpioi2c_ext.h"
#include "hi_drv_module.h"
#include "tvp5150.h"
#include "hi_kernel_adapt.h"

/* tvp5150 i2c slaver address micro-definition. used GPIO simulate I2C*/
#define I2C_TVP5150_READ 0xB8  /*in driver gpio_i2c will +1*/
#define I2C_TVP5150_WRITE 0xB8

/*use I2C directly*/
#define I2C_TVP5150_NUM 0

//#define USED_I2C

#define VIDEO_MODE_CCIR656 0
#define VIDEO_MODE_CCIR601 1

#define VIDEO_NORM_NTSC 0
#define VIDEO_NORM_PAL 1

#define VIDEO_ADC_I2C_NUM 0
#define BIT_NUM_IN_GPIO_GROUP 8

/*0:use gpio; 1:use i2c, need input i2cnum*/
static int use_i2c_gpio = 0;
static int i2cnum = 0;

#define TVP5150_GPIO_ID_CLOCK 11
#define TVP5150_GPIO_CLOCK_BIT 3
#define TVP5150_GPIO_ID_DATA 12
#define TVP5150_GPIO_DATA_BIT 5

/*support BT.656/BT601*/
static int output_fmt = VIDEO_MODE_CCIR656;

/* tvp5150 ccir6xx working mode flag. */
static int ccirmode_flag = 0;

struct timer_list tvp5150_timer;

static I2C_EXT_FUNC_S *s_pI2cFunc   = HI_NULL;
static GPIO_EXT_FUNC_S *s_pGpioFunc = HI_NULL;
static GPIO_I2C_EXT_FUNC_S *s_pGpioI2cFunc = HI_NULL;

HI_S32 hi_i2c_write(HI_U8 RegAddr, HI_U8 RegValue)
{
    if (1 == use_i2c_gpio)
    {
        s_pI2cFunc->pfnI2cWrite(I2C_TVP5150_NUM, I2C_TVP5150_WRITE, RegAddr, 1, &RegValue, 1);
        HI_INFO_TVP5150("use I2C:");
    }
    else
    {
        s_pGpioI2cFunc->pfnGpioI2cWrite(i2cnum, I2C_TVP5150_WRITE, RegAddr, RegValue);
        HI_INFO_TVP5150("use GPIO:");
    }

    HI_INFO_TVP5150("TVP5150 write dev addr:%x\r\n", I2C_TVP5150_WRITE);
    return 0x00;
}

HI_U8   hi_i2c_read(HI_U8 RegAddr)
{
    HI_U8 ret = 0xff;

    if (1 == use_i2c_gpio)
    {
        s_pI2cFunc->pfnI2cRead(I2C_TVP5150_NUM, I2C_TVP5150_READ, RegAddr, 1, &ret, 1);
        HI_INFO_TVP5150("use I2C:");
    }
    else
    {
        s_pGpioI2cFunc->pfnGpioI2cRead(i2cnum, I2C_TVP5150_READ, RegAddr, &ret);
        HI_INFO_TVP5150("use GPIO:");
    }

    HI_INFO_TVP5150("TVP5150 read dev addr:%x\r\n", I2C_TVP5150_READ);

    return ret;
}

void check_tvp5150(unsigned long data)
{
    HI_U8 Ret_val = 0;

    if (1 == use_i2c_gpio)
    {
        if (!s_pI2cFunc || !s_pI2cFunc->pfnI2cWrite || !s_pI2cFunc->pfnI2cRead)
        {
            HI_ERR_TVP5150("I2C not found\n");
            return;
        }
    }
    else
    {
        if (!s_pGpioI2cFunc || !s_pGpioI2cFunc->pfnGpioI2cWrite || !s_pGpioI2cFunc->pfnGpioI2cRead)
        {
            HI_ERR_TVP5150("GPIO_I2C not found\n");
            return;
        }
    }

    /*
    int loopnum = 0;
    int jiffiesV1 = 0;
    int jiffiesV2 = 0;
    static unsigned get_clockbit = 0;
     */

    /*
    Ret_val = hi_i2c_read(0x28);
    HI_INFO_TVP5150("0x28:0x%x\r\n", Ret_val);

    Ret_val = hi_i2c_read(0xc6);
    HI_INFO_TVP5150("0xc6:0x%x\r\n", Ret_val);

    Ret_val = hi_i2c_read(0x86);
    HI_INFO_TVP5150("0x86:0x%x\r\n", Ret_val);

    Ret_val = hi_i2c_read( 0x1B);
    HI_INFO_TVP5150("0x1B:0x%x,be 0x14\r\n", Ret_val);
     */

    /*
    hi_i2c_write(0x03, 0x09);
    Ret_val = hi_i2c_read(0x03);
    HI_INFO_TVP5150("0x03:0x%x, be 0x09\r\n", Ret_val);
     */

    /*
    Ret_val = hi_i2c_read(0x0d);
    HI_INFO_TVP5150("0x0d:0x%x, be 0x47\r\n", Ret_val);

    Ret_val = hi_i2c_read(0x03);
    HI_INFO_TVP5150("0x03:0x%x, be 0x09\r\n", Ret_val);

    Ret_val = hi_i2c_read(0x80);
    HI_INFO_TVP5150("0x80:0x%x, be 0x51\r\n", Ret_val);
     */
    hi_i2c_write(0x03, 0x09);

    Ret_val = hi_i2c_read(0x03);
    if (0x09 != Ret_val)
    {
        tvp5150_timer.expires = jiffies + 100;
        add_timer(&tvp5150_timer);
    }

    HI_INFO_TVP5150("0x03:0x%x, should be 0x09\r\n", Ret_val);

    /* Ret_val = hi_i2c_read(0x00);
     HI_INFO_TVP5150("0x00:0x%x\r\n", Ret_val);*/

    /*liusanwei  output a clock, period 20ms*/

    /*
    s_pGpioFunc->pfnGpioDirSetBit(11, 7, HI_FALSE);
    s_pGpioFunc->pfnGpioWriteBit(11, 7, get_clockbit & 0x1);
    get_clockbit = ~get_clockbit;
     */

    /*liusanwei read */

    /*
    s_pGpioFunc->pfnGpioDirSetBit(11, 5, HI_TRUE);
    hi_gpio_read_bit(11, 5, &get_clockbit);
    HI_INFO_TVP5150("input bit11-5 value:%d \n", get_clockbit);
    get_clockbit = 0;
    s_pGpioFunc->pfnGpioDirSetBit(11, 7, HI_TRUE);
    hi_gpio_read_bit(11, 7, &get_clockbit);
    HI_INFO_TVP5150("input bit11-7 value:%d \n", get_clockbit);
    get_clockbit = 0;
     */

    /*
    loopnum = 0;
    jiffiesV1 = jiffies;
    jiffiesV2 = jiffies;

    while(jiffiesV2 ==  jiffiesV1)
    {
        jiffiesV2 = jiffies;
        tvptime_delay_us(1);
        loopnum++;
    }

    HI_INFO_TVP5150("tvp5150 driver, 1 jiffies:%d-%d-%d", jiffiesV2, jiffiesV1,loopnum);
     */

    return;
}

/*
 * tvp5150 initialise routine.

 * @param devccir: tvp5150's working mode:0--VIDEO_MODE_CCIR656; 1--VIDEO_MODE_CCIR601
 * @return value:0--success; 1--error.
 */
static int init_tvp5150(int devccir)
{
    //HI_U8 Ret_val = 0;

    if (devccir > VIDEO_MODE_CCIR601)
    {
        goto err_out;
    }

    if (devccir == VIDEO_MODE_CCIR656)
    {
        /* Set tvp5150 in ccir656 mode */
        if (hi_i2c_write(0x03, 0x09) != 0)
        {
            return -1;
        }

        /* Set tvp5150's data port active, but hsync and vsync not active, for ccir656 is not needed. */

        /*if(hi_i2c_write(0x03, 0x69) != 0)
            return -1;*/

        /*if(hi_i2c_write(0x0d, 0x47) != 0)
            return -1;*/

        return 0;
    }
    else if (devccir == VIDEO_MODE_CCIR601)
    {
        /* Set tvp5150 in ccir601 mode */
        if (hi_i2c_write( 0x0d, 0x40) != 0)
        {
            return -1;
        }

        /* Set tvp5150's data port active, but hsync and vsync not active, for ccir601 is needed. */
        if (hi_i2c_write( 0x03, 0x6f) != 0)
        {
            return -1;
        }

        return 0;
    }
    else
    {
        return -1;
    }

err_out:
    return -1;
}

/*
 * tvp5150 open routine.
 * do nothing.
 */
static int TVP5150_DRV_Open(struct inode * inode, struct file * file)
{
    return 0;
}

/*
 * tvp5150 close routine.
 * do nothing.
 */
static int TVP5150_DRV_Close(struct inode * inode, struct file * file)
{
    return 0;
}

/*
 * tvp5150 ioctl routine.
 * @param inode: pointer of the node;
 * @param file: pointer of the file;
 *
 * @param cmd: command from the app:
 * TVP5150_SET_CCIRMODE(0):set tvp5150's work mode;
 * TVP5150_GET_CCIRMODE(1):get tvp5150's work mode;
 * TVP5150_GET_NORM(2):get tvp5150's current norm, such as PAL or NTSC;
 *
 * @param arg:arg from app layer.
 */
static long TVP5150_DRV_Ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
    long ret = -ENOIOCTLCMD;
    int norm_flag;

    if (1 == use_i2c_gpio)
    {
        if (!s_pI2cFunc || !s_pI2cFunc->pfnI2cWrite || !s_pI2cFunc->pfnI2cRead)
        {
            HI_ERR_TVP5150("I2C not found\n");
            return HI_FAILURE;
        }
    }
    else
    {
        if (!s_pGpioI2cFunc || !s_pGpioI2cFunc->pfnGpioI2cWrite || !s_pGpioI2cFunc->pfnGpioI2cRead)
        {
            HI_ERR_TVP5150("GPIO_I2C not found\n");
            return HI_FAILURE;
        }
    }

    switch (cmd)
    {
        /*set tvp5150's  mode: 0-ccir656;1-ccir601.*/
    case TVP5150_SET_CCIRMODE:
    {
        ret = get_user(ccirmode_flag, (int *)arg);

        if ((ccirmode_flag == VIDEO_MODE_CCIR656) || (ccirmode_flag == VIDEO_MODE_CCIR601))
        {
            if (init_tvp5150(ccirmode_flag) != 0)
            {
                ret = -EFAULT;
            }
        }
        else
        {
            ret = -EINVAL;
        }
    }
        break;

        /*get tvp5150's mode */
    case TVP5150_GET_CCIRMODE:
    {
        ret = copy_to_user((int *)arg, &ccirmode_flag,
                           sizeof(ccirmode_flag)) ? -EFAULT : 0;
    }
        break;

    case TVP5150_GET_NORM:
    {
        /* When here we get 0x83, means PAL cvbs signal is connected. */
        if ((hi_i2c_read(0x8c) & 0x03) == 0x03)
        {
            norm_flag = VIDEO_NORM_PAL;
        }
        /* When we get 0x81, means NTSC. */
        else if ((hi_i2c_read(0x8c) & 0x01) == 0x01)
        {
            norm_flag = VIDEO_NORM_NTSC;
        }
        else
        {
            HI_ERR_TVP5150("Unsupported video norm.\n");
            norm_flag = -EFAULT;
        }

        ret = copy_to_user((int *)arg, &norm_flag,
                           sizeof(norm_flag)) ? -EFAULT : 0;
    }
        break;
    case TVP5150_SET_REG:
    {
        hi_i2c_write((arg >> 16) & 0xff, arg & 0xff);
        ret = hi_i2c_read((arg >> 16) & 0xff);
        HI_INFO_TVP5150("set reg:0x%x to:0x%x\r\n", (HI_U32)(arg >> 16) & 0xff, ret);
    }
        break;
    case TVP5150_GET_REG:
    {
        ret = hi_i2c_read((arg >> 16) & 0xff);
        HI_INFO_TVP5150("set reg:0x%x to:0x%x\r\n", (HI_U32)(arg >> 16) & 0xff, ret);
    }
        break;

    default:
        HI_ERR_TVP5150("Unrecongnised command.\n");
        ret = -EINVAL;
        break;
    }

    return ret;
}

/*
 *      The various file operations we support.
 */
static struct file_operations tvp5150_fops =
{
    .owner			= THIS_MODULE,
    .unlocked_ioctl = TVP5150_DRV_Ioctl,
    .open			= TVP5150_DRV_Open,
    .release		= TVP5150_DRV_Close
};

static struct miscdevice tvp5150_dev =
{
    MISC_DYNAMIC_MINOR,
    "tvp5150",
    &tvp5150_fops,
};

static int tvp5150_device_init(void)
{
    if (init_tvp5150(output_fmt) == 0)
    {
        return 0;
    }
    else
    {
        return -1;
    }
}

static int __init TVP5150_DRV_ModInit(void)
{
    int ret = 0;
    HI_S32 s32Ret = HI_FAILURE;

    //int loopnum = 100;
    //int jiffiesV = 0;

    if (HI_DRV_MODULE_Register(HI_ID_TVP5150, TVP5150_NAME, HI_NULL))
    {
        HI_ERR_TVP5150("Register TVP5150 module failed.\n");
        return HI_FAILURE;
    }

    s_pI2cFunc = HI_NULL;
    HI_DRV_MODULE_GetFunction(HI_ID_I2C, (HI_VOID**)&s_pI2cFunc);
    if (!s_pI2cFunc || !s_pI2cFunc->pfnI2cWrite || !s_pI2cFunc->pfnI2cRead)
    {
        HI_ERR_TVP5150("I2C not found\n");
        return HI_FAILURE;
    }

    s_pGpioFunc = HI_NULL;
    HI_DRV_MODULE_GetFunction(HI_ID_GPIO, (HI_VOID**)&s_pGpioFunc);
    if (!s_pGpioFunc || !s_pGpioFunc->pfnGpioDirSetBit || !s_pGpioFunc->pfnGpioWriteBit)
    {
        HI_ERR_TVP5150("GPIO not found\n");
        return HI_FAILURE;
    }

    s_pGpioI2cFunc = HI_NULL;
    HI_DRV_MODULE_GetFunction(HI_ID_GPIO_I2C, (HI_VOID**)&s_pGpioI2cFunc);
    if (!s_pGpioI2cFunc || !s_pGpioI2cFunc->pfnGpioI2cWrite || !s_pGpioI2cFunc->pfnGpioI2cRead)
    {
        HI_ERR_TVP5150("GPIO_I2C not found\n");
        return HI_FAILURE;
    }

    HI_INFO_TVP5150("use_i2c_gpio:0:use gpio(defalut); 1:use i2c, need input i2cnum,like 0,1....; output_fmt:0:output 655(defalut),1:output 601 \n");

    ret = misc_register(&tvp5150_dev);
    if (ret)
    {
        HI_ERR_TVP5150("could not register tvp5150 devices. \n");
        return ret;
    }

    if (use_i2c_gpio == 0)
    {
        s32Ret = s_pGpioI2cFunc->pfnGpioI2cCreateChannel(&i2cnum, TVP5150_GPIO_ID_CLOCK * 8 + TVP5150_GPIO_CLOCK_BIT,
                                                         TVP5150_GPIO_ID_DATA * 8 + TVP5150_GPIO_DATA_BIT );
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_TVP5150("GpioI2cCreateChannel failed!\n");
            return HI_FAILURE;
        }
    }

    /*liusanwei reset tvp5150*/

    /*    s_pGpioFunc->pfnGpioDirSetBit(1 * BIT_NUM_IN_GPIO_GROUP + 4, HI_FALSE);
        HI_INFO_TVP5150("reset TVP5150.\n");
        s_pGpioFunc->pfnGpioWriteBit(1 * BIT_NUM_IN_GPIO_GROUP + 4, 0);
        msleep(100);
        s_pGpioFunc->pfnGpioWriteBit(1 * BIT_NUM_IN_GPIO_GROUP + 4, 1);
        msleep(200);
     */

    //gpio_i2c_config(11, 7, 5);

    if (tvp5150_device_init() < 0)
    {
        misc_deregister(&tvp5150_dev);
        HI_ERR_TVP5150("tvp5150 driver init fail for device init error!\n");
        return -1;
    }

    init_timer(&tvp5150_timer);
    tvp5150_timer.expires = jiffies + 10;
    tvp5150_timer.data = 100;
    tvp5150_timer.function = check_tvp5150;
    add_timer(&tvp5150_timer);

    //check_tvp5150(100);

    /*
    while(loopnum--)
    {
        check_tvp5150(100);
    }
     */

    /*liusanwei reset tpv5150*/

    /*while(loopnum--)
    {
        s_pGpioFunc->pfnGpioDirSetBit(11, 2, HI_FALSE);
        s_pGpioFunc->pfnGpioWriteBit(11, 2, 0);
        msleep(100);
        s_pGpioFunc->pfnGpioWriteBit(11, 2, 1);
    }
     */

    /*liusanwei add, for call GPIO_I2C*/
    /*gpio_i2c_config(11, 7, 5);*/

    if (1 == use_i2c_gpio)
    {
        //HI_I2C_Open();
    }

#ifdef MODULE
    HI_PRINT("Load hi_tvp5150.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return ret;
}

static void __exit TVP5150_DRV_ModExit(void)
{
    misc_deregister(&tvp5150_dev);

    if (1 == use_i2c_gpio)
    {
        //HI_I2C_Close();
    }
    else
    {
        if (s_pGpioI2cFunc)
        {
            s_pGpioI2cFunc->pfnGpioI2cDestroyChannel(i2cnum);
        }
    }

    HI_DRV_MODULE_UnRegister(HI_ID_TVP5150);

#ifdef MODULE
    HI_PRINT("Unload hi_tvp5150.ko success.\t(%s)\n", VERSION_STRING);
#endif
}

module_param(use_i2c_gpio, int, S_IRUGO);
module_param(i2cnum, int, S_IRUGO);
module_param(output_fmt, int, S_IRUGO);

module_init(TVP5150_DRV_ModInit);
module_exit(TVP5150_DRV_ModExit);

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");
