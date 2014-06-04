/*
 * hisilicon DVFS Management Routines
 *
 * Author: wangjian <stand.wang@huawei.com>
 *
 * Copyright (C) 2012 Hisilicon Instruments, Inc.
 * wangjian <stand.wang@huawei.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */

#include <linux/err.h>
#include <linux/spinlock.h>
#include <linux/plist.h>
#include <linux/slab.h>
#include "opp.h"
#include <linux/debugfs.h>
#include <linux/seq_file.h>
#include <linux/io.h>
#include <mach/platform.h>
#include <linux/platform_device.h>
#include <linux/delay.h>
#include <mach/clock.h>

#include "hi_reg_common.h"

#include "hi_dvfs.h"
#include "hi_drv_pmoc.h"
#include "drv_i2c_ext.h"
#include "hi_drv_module.h"

extern struct clk mpu_ck;

#define CONFIG_DVFS_PWM
#define VDEFAULT 1300 /*mv*/
#define CORE_DEFAULT 1150 /*mv*/

#ifndef HI_PMU_DEVICE_SELECT
#define VMAX 1315 /*mv*/
#define VMIN 900 /*mv*/
#define CORE_VMAX 1205 /*mv*/
#define CORE_VMIN 900 /*mv*/

#define PWM_STEP 5 /*mv*/
#define PWM_CLASS 2
#else
#define MULTI_NUMBER (12)
#define VMAX 1500 /*mv*/
#define VMIN 870 /*mv*/

#if defined (CHIP_TYPE_hi3716cv200es)
#define PMU_I2cNum 3
#elif defined (CHIP_TYPE_hi3716cv200)  \
            || defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100)  \
            || defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
            || defined (CHIP_TYPE_hi3718mv100)
#define PMU_I2cNum 0
#else
#error YOU MUST DEFINE  CHIP_TYPE!
#endif

#define PMU_DeviceAddress 0x90
#define CORE_Address 0x1
#define GPU_Address 0x2
#define CPU_Address 0x3

static I2C_EXT_FUNC_S *s_pI2CFunc = HI_NULL;
#define PMU_STEP 10 /*mv*/

#define CORE_VMAX 1210 /*mv*/
#define CORE_VMIN 900 /*mv*/
#endif

#define PERI_PMC6 (PMC_BASE + 0x18)
#define PERI_PMC7 (PMC_BASE + 0x1C)
#define PERI_PMC9 (PMC_BASE + 0x24)
#define BOARD_MAGIC 0x12345678

#define PWM_CPU1 PERI_PMC6
#define PWM_CPU2 PERI_PMC9

#define PWM_CORE1 PERI_PMC7
#define PWM_CORE2 PERI_PMC9

#define PWM_DUTY_MASK 0xffff0000
#define PWM_PERIOD_MASK 0xffff
#define PWM_CPU_ENABLE_BIT 0x0
#define PWM_CORE_ENABLE_BIT 0x2

#define HPM_CPU1 PERI_PMC22
#define HPM_CPU2 PERI_PMC23
#define HPM_CPU3 PERI_PMC24
#define HPM_CPU4 PERI_PMC25

#define TSENSOR_CPU1 PERI_PMC10
#define TSENSOR_CPU2 PERI_PMC12
#define TSENSOR_CPU3 PERI_PMC14

//#define PERI_PMC22 (PMC_BASE + 0x58)
#define PERI_PMC23 (PMC_BASE + 0x5c)
#define PERI_PMC24 (PMC_BASE + 0x60)
//#define PERI_PMC25 (PMC_BASE + 0x64)

#define PERI_PMC31  (PMC_BASE + 0x7c)
#define PERI_PMC32  (PMC_BASE + 0x80)

#define PERI_PMC10 (PMC_BASE + 0x28)
#define PERI_PMC11 (PMC_BASE + 0x2c)

#define PERI_PMC12 (PMC_BASE + 0x30)
#define PERI_PMC13 (PMC_BASE + 0x34)
#define PERI_PMC14 (PMC_BASE + 0x38)
#define PERI_PMC15 (PMC_BASE + 0x3c)

#define HPM_MONITOR_EN 26
#define HPM_EN 24
#define HPM_PC_RECORED_MASK 0x3ff

#define HPM_MONITOR_PERIOD_MASK

#define MIN_THRESHOLD 5
#define AVS_STEP 10 /*mv*/
#define AVS_INTERVAL 20 /*ms*/

unsigned long cur_cpu_volt = 1300;
unsigned long cur_core_volt = 1150;
int sub_volt = 0;
unsigned int reg_cpu1,reg_cpu2;

#ifdef HI_AVS_SUPPORT
struct  timer_list cpu_avs_timer;
static struct  timer_list core_avs_timer;
static unsigned int cur_vmin;
#endif

int core_volt_scale(unsigned int volt);

DEFINE_MUTEX(hi_dvfs_lock);

/**
 * struct hi_dvfs_info - The per vdd dvfs info
 * @user_lock:	spinlock for plist operations
 *
 * This is a fundamental structure used to store all the required
 * DVFS related information for a vdd.
 */
struct hi_dvfs_info
{
    unsigned long volt;
    unsigned long new_freq;
    unsigned long old_freq;
};

int cpu_volt_scale(unsigned int volt)
{
#ifndef HI_PMU_DEVICE_SELECT
    unsigned int period, duty, v, tmp;
    //unsigned int vmax, vmin, pwc, pws;

    HI_INFO_PM("%s,volt=%d\n", __FUNCTION__, volt);

    volt += sub_volt;

    if (volt > VMAX)
    {
        volt = VMAX;
        HI_ERR_PM("volt is out of range! Force it to vmax\n");
    }
    else if (volt < VMIN)
    {
        volt = VMIN;
        HI_ERR_PM("volt is out of range! Force it to vmin\n");
    }

    period = (((VMAX - VMIN) * PWM_CLASS) / PWM_STEP) + 1;
    duty = (((VMAX - volt) * PWM_CLASS) / PWM_STEP) + 1;

    HI_INFO_PM("%s,period=%#x,duty=%#x\\n", __FUNCTION__,period, duty);

    v = __raw_readl(reg_cpu1);
    tmp = PWM_PERIOD_MASK;
    v &= ~tmp;
    v |= period;

    tmp = PWM_DUTY_MASK;
    v &= ~tmp;
    v |= duty << 16;
    __raw_writel(v, reg_cpu1);

    cur_cpu_volt = volt - sub_volt;
#else
    HI_S32 s32Ret;
    HI_U32 tmp;
    HI_U8 u8VoltReg;

    if (volt > ((VMAX * MULTI_NUMBER) / PMU_STEP))
    {
        volt = (VMAX * MULTI_NUMBER) / PMU_STEP;
        HI_ERR_PM("volt is out of range! Force it to vmax\n");
    }
    else if (volt < ((VMIN * MULTI_NUMBER) / PMU_STEP))
    {
        volt = (VMIN * MULTI_NUMBER) / PMU_STEP;
        HI_ERR_PM("volt is out of range! Force it to vmin\n");
    }

    /* we change the step from 10 to 12 by changing hardware */
    tmp = ((volt * PMU_STEP) / MULTI_NUMBER) - VMIN;
    u8VoltReg = (tmp / PMU_STEP) << 2;

    HI_INFO_PM("_volt_scale,volt=%d, u8VoltReg = 0x%x tmp = %d \n", volt, u8VoltReg, tmp);

    if (s_pI2CFunc->pfnI2cWrite)
    {
        s32Ret = (s_pI2CFunc->pfnI2cWrite)(PMU_I2cNum, PMU_DeviceAddress, CPU_Address, 1, &u8VoltReg, 1);
        if (s32Ret != HI_SUCCESS)
        {
            HI_ERR_PM("call HI_I2C_Write failed.\n");
            return s32Ret;
        }
    }
    cur_cpu_volt = volt;
#endif

    return 0;
}

#ifdef HI_AVS_SUPPORT
extern unsigned int cur_cpu_hpm;
static HI_VOID avs_timeout_handler(unsigned long data)
{
    HI_U16 u16HpmCode, u16HpmCodeAverage = 0;
    HI_U32 u32RegVal;
    HI_S16 s16HpmDelta;
    HI_U8 i;

    /* read current code */
    for (i = 0; i < 2; i++)
    {
        u32RegVal = __raw_readl(PERI_PMC31);
        u16HpmCode = (u32RegVal & HPM_PC_RECORED_MASK);
        u16HpmCodeAverage += u16HpmCode;
        u16HpmCode = ((u32RegVal >> 12) & HPM_PC_RECORED_MASK);
        u16HpmCodeAverage += u16HpmCode;

        u32RegVal = __raw_readl(PERI_PMC32);
        u16HpmCode = (u32RegVal & HPM_PC_RECORED_MASK);
        u16HpmCodeAverage += u16HpmCode;
        u16HpmCode = ((u32RegVal >> 12) & HPM_PC_RECORED_MASK);
        u16HpmCodeAverage += u16HpmCode;
    }
    
    u16HpmCodeAverage = u16HpmCodeAverage / (i * 4);

    s16HpmDelta = u16HpmCodeAverage - cur_cpu_hpm;
    
    del_timer(&cpu_avs_timer);
    
    /* compare code value */
    if (s16HpmDelta <= 0x1)
    {
        /* up 10mv */
        if (cur_cpu_volt < cur_vmin)
        {
            cpu_volt_scale(cur_cpu_volt + AVS_STEP);       
        }
        HI_INFO_PM("\n up u16HpmCodeMin = 0x%x cur_cpu_hpm = 0x%x \n", u16HpmCodeAverage, cur_cpu_hpm);

        /* restart timer */
        cpu_avs_timer.expires = jiffies + msecs_to_jiffies(AVS_INTERVAL);
    }
    else if (s16HpmDelta >= 0xa)
    {
        /*down 10mv */
        cpu_volt_scale(cur_cpu_volt - AVS_STEP);

        /* restart timer */
        cpu_avs_timer.expires = jiffies + msecs_to_jiffies(AVS_INTERVAL);
    }
    else
    {
        /* restart timer */
        cpu_avs_timer.expires = jiffies + msecs_to_jiffies(AVS_INTERVAL * 10);
    }

    add_timer(&cpu_avs_timer);
    
    return;
}

static HI_VOID core_timeout_handler(unsigned long data)
{
    HI_U32 u32RegVal, u32Volt;
    HI_U16 u16HpmCode, u16HpmCodeAverage;    

    del_timer(&core_avs_timer);
    
    u32RegVal = __raw_readl(PERI_PMC23);
    u16HpmCode = (u32RegVal & HPM_PC_RECORED_MASK);
    u16HpmCodeAverage = u16HpmCode;
    u16HpmCode = ((u32RegVal >> 12) & HPM_PC_RECORED_MASK);
    u16HpmCodeAverage += u16HpmCode;
    
    u32RegVal = __raw_readl(PERI_PMC24);
    u16HpmCode = (u32RegVal & HPM_PC_RECORED_MASK);
    u16HpmCodeAverage += u16HpmCode;
    u16HpmCode = ((u32RegVal >> 12) & HPM_PC_RECORED_MASK);
    u16HpmCodeAverage += u16HpmCode;

    u16HpmCodeAverage = (u16HpmCodeAverage / 4);

    if (u16HpmCodeAverage >= 0x164)
    {
        u32Volt = 1060; //ff chip
    }
    else if (u16HpmCodeAverage < 0x130)
    {
        u32Volt = 1150; //ss chip
    }
    else
    {
        u32Volt = 1100; //tt chip
    }

    core_volt_scale(u32Volt);
    
    HI_INFO_PM("%s,volt=%d\n", __FUNCTION__, u32Volt);
}
#endif

void mpu_init_volt(void)
{
#ifndef HI_PMU_DEVICE_SELECT
    //unsigned int volt = VDEFAULT;
    unsigned int pwm_enable, v;

    v = g_pstRegSysCtrl->SC_GEN25;
    HI_INFO_PM("board type 0x%x\n", v);

    if (BOARD_MAGIC == v)
    {
        reg_cpu1 = PWM_CPU1;
        reg_cpu2 = PWM_CPU2;
        pwm_enable = PWM_CPU_ENABLE_BIT;
    }
    else
    {
        reg_cpu1 = PWM_CORE1;
        reg_cpu2 = PWM_CORE2;
        pwm_enable = PWM_CORE_ENABLE_BIT;
    }

    cpu_volt_scale(VDEFAULT);

    /* enable PWM */
    v  = __raw_readl(reg_cpu2);
    v |= (0x1 << pwm_enable);
    __raw_writel(v, reg_cpu2);

#else
    HI_S32 s32Ret;

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_I2C, (HI_VOID**)&s_pI2CFunc);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_PM("Get I2C function err:%#x!\n", s32Ret);
        return;
    }

    if (!s_pI2CFunc || !s_pI2CFunc->pfnI2cWrite || !s_pI2CFunc->pfnI2cRead)
    {
        HI_ERR_PM("I2C not found\n");
        return;
    }

    cpu_volt_scale(VDEFAULT);
   
#endif

#ifdef HI_AVS_SUPPORT
    /* set timer for avs */
    cpu_avs_timer.function = avs_timeout_handler;
    init_timer(&cpu_avs_timer);
#endif

    return;
}

int core_volt_scale(unsigned int volt)
{
#ifndef HI_PMU_DEVICE_SELECT
    unsigned int period, duty, v, tmp;
    unsigned int vmax, vmin, pwc, pws;

    HI_INFO_PM("%s,volt=%d\n", __FUNCTION__,volt);

    volt += sub_volt;
    vmax  = CORE_VMAX;
    vmin  = CORE_VMIN;
    pwc   = PWM_CLASS;
    pws   = PWM_STEP;

    period = (((vmax - vmin) * pwc) / pws) + 1;
    duty = (((vmax - volt) * pwc) / pws) + 1;

    HI_INFO_PM("%s,duty=%#x\n", __FUNCTION__,duty);

    v = __raw_readl(PWM_CORE1);
    tmp = PWM_PERIOD_MASK;
    v &= ~tmp;
    v |= period;
    
    tmp = PWM_DUTY_MASK;
    v &= ~tmp;
    v |= duty << 16;

    __raw_writel(v, PWM_CORE1);
    cur_core_volt = volt - sub_volt;
 #else
    HI_S32 s32Ret;
    HI_U8 u8VoltReg;

    /* TODO: check input is in the range */

    /* step 10mv */
    u8VoltReg = ((volt - VMIN) / PMU_STEP) << 2;

    HI_INFO_PM("_core_volt_scale,volt=%d, u8VoltReg = 0x%x \n", volt, u8VoltReg);

    if (s_pI2CFunc->pfnI2cWrite)
    {
        s32Ret = (s_pI2CFunc->pfnI2cWrite)(PMU_I2cNum, PMU_DeviceAddress, CORE_Address, 1, &u8VoltReg, 1);
        if (s32Ret != HI_SUCCESS)
        {
            HI_ERR_PM("call HI_I2C_Write failed.\n");
            return s32Ret;
        }
    }
    cur_core_volt = volt;
    
 #endif
 
    return 0;
}

void core_init_volt(void)
{
#ifndef HI_PMU_DEVICE_SELECT
    unsigned int v;
#endif

    HI_INFO_PM("%s,volt=%d\n", __FUNCTION__, CORE_DEFAULT);

    core_volt_scale(CORE_DEFAULT);

#ifdef HI_AVS_SUPPORT
    /* set timer for avs */
    core_avs_timer.function = core_timeout_handler;
    init_timer(&core_avs_timer);
    core_avs_timer.expires = jiffies + msecs_to_jiffies(100);
    add_timer(&core_avs_timer);
#endif
    
#ifndef HI_PMU_DEVICE_SELECT
    v  = __raw_readl(PWM_CORE2);
    v |= (0x1 << PWM_CORE_ENABLE_BIT);
    __raw_writel(v, PWM_CORE2);
#endif

    return;
}

/**
 * _dvfs_scale() : Scale the devices associated with a voltage domain
 *
 * Returns 0 on success else the error value.
 */
static int _dvfs_scale(struct device *target_dev, struct hi_dvfs_info *tdvfs_info)
{
    struct clk * clk;
    int ret;

    HI_INFO_PM("%s rate=%ld\n", __FUNCTION__, tdvfs_info->new_freq);

#ifdef HI_AVS_SUPPORT
        del_timer(&cpu_avs_timer);
#endif

    clk = &mpu_ck;
    if (tdvfs_info->new_freq == tdvfs_info->old_freq)
    {
        return 0;
    }
    else if (tdvfs_info->new_freq > tdvfs_info->old_freq)
    {
        ret = cpu_volt_scale(tdvfs_info->volt);
        if (ret)
        {
            HI_ERR_PM("%s: scale volt to %ld falt\n",
                    __func__, tdvfs_info->volt);
            return ret;
        }

        msleep(15);
        ret = clk_set_rate(clk, tdvfs_info->new_freq);
        if (ret)
        {
            HI_ERR_PM("%s: scale freq to %ld falt\n",
                    __func__, tdvfs_info->new_freq);
            return ret;
        }
    }
    else
    {
        ret = clk_set_rate(clk, tdvfs_info->new_freq);
        if (ret)
        {
            HI_ERR_PM("%s: scale freq to %ld falt\n",
                    __func__, tdvfs_info->new_freq);
            return ret;
        }

        msleep(10);
        ret = cpu_volt_scale(tdvfs_info->volt);
        if (ret)
        {
            HI_ERR_PM("%s: scale volt to %ld falt\n",
                    __func__, tdvfs_info->volt);
            return ret;
        }
    }

#ifdef HI_AVS_SUPPORT
    /* Do not open avs in 400M and 600M */
    if (tdvfs_info->new_freq > 600000)
    {
        cur_vmin = tdvfs_info->volt;
        HI_INFO_PM("\n  cur_vmin = %d \n", cur_vmin);
        cpu_avs_timer.expires = jiffies + msecs_to_jiffies(AVS_INTERVAL * 2);
        add_timer(&cpu_avs_timer);
    }
#endif

    return ret;
}

/**
 * hi_device_scale() - Set a new rate at which the devices is to operate
 * @rate:	the rnew rate for the device.
 *
 * This API gets the device opp table associated with this device and
 * tries putting the device to the requested rate and the voltage domain
 * associated with the device to the voltage corresponding to the
 * requested rate. Since multiple devices can be assocciated with a
 * voltage domain this API finds out the possible voltage the
 * voltage domain can enter and then decides on the final device
 * rate.
 *
 * Return 0 on success else the error value
 */
int hi_device_scale(struct device *target_dev, unsigned long old_freq, unsigned long new_freq)
{
    struct opp *opp;
    unsigned long volt, freq = new_freq;
    struct hi_dvfs_info dvfs_info;

    int ret = 0;

    HI_INFO_PM("hi_device_scale,oldfreq = %ld,newfreq = %ld\n", old_freq, new_freq);

    /* Lock me to ensure cross domain scaling is secure */
    mutex_lock(&hi_dvfs_lock);
    rcu_read_lock();

    opp = opp_find_freq_ceil(target_dev, &freq);

    /* If we dont find a max, try a floor at least */
    if (IS_ERR(opp))
    {
        opp = opp_find_freq_floor(target_dev, &freq);
    }

    if (IS_ERR(opp))
    {
        rcu_read_unlock();
        HI_ERR_PM("%s: Unable to find OPP for freq%ld\n",
                  __func__, freq);
        ret = -ENODEV;
        goto out;
    }

    volt = opp_get_voltage(opp);

    rcu_read_unlock();

    dvfs_info.old_freq = old_freq;

    dvfs_info.new_freq = freq;

    dvfs_info.volt = volt;

    /* Do the actual scaling */
    ret = _dvfs_scale( target_dev, &dvfs_info);

    if (ret)
    {
        HI_ERR_PM("%s: scale failed %d[f=%ld, v=%ld]\n",
                  __func__, ret, freq, volt);

        /* Fall through */
    }

    /* Fall through */
out:
    mutex_unlock(&hi_dvfs_lock);
    return ret;
}
