/*
 * hi-cpufreq.c - hisilicon Processor cpufreq Driver
 *
 * Copyright (C) 2012-2016 Hisilicon, Inc.
 *
 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or (at
 *  your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful, but
 *  WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License along
 *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.
 *
 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 */

#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/err.h>
#include <linux/clk.h>
#include <linux/smp.h>
#include <linux/sched.h>
#include <linux/cpufreq.h>
#include <linux/compiler.h>
#include <linux/dmi.h>
#include <linux/slab.h>

//#include <linux/opp.h>
#include "opp.h"
#include <linux/io.h>
#include <linux/delay.h>
#include <linux/uaccess.h>
#include <mach/clock.h>
#include <linux/platform_device.h>

#include <asm/processor.h>
#include <linux/cpu.h>
#include <asm/system.h>
#include <asm/smp_plat.h>
#include <asm/cpu.h>
#include "hi_dvfs.h"

//#include "mach/hipm.h"
#include "hipm.h"
#include "hi_drv_pmoc.h"

MODULE_AUTHOR("wang jian");
MODULE_DESCRIPTION("hisilicon stb Processor cpufreq Driver");
MODULE_LICENSE("GPL");

#ifndef MODULE
#ifdef CONFIG_SMP
struct lpj_info
{
    unsigned long ref;
    unsigned int  freq;
};

static DEFINE_PER_CPU(struct lpj_info, lpj_ref);
static struct lpj_info global_lpj_ref;
#endif
#endif

static struct cpufreq_frequency_table *freq_table;

static atomic_t freq_table_users = ATOMIC_INIT(0);
static unsigned int max_freq;
static unsigned int current_target_freq;
static bool hi_cpufreq_ready;
bool hi_cpufreq_suspended = 0;

static DEFINE_MUTEX(hi_cpufreq_lock);

struct clk *pMpuClk;
static unsigned int hi_cpufreq_getspeed(unsigned int cpu)
{
    unsigned long rate;

    if (cpu >= NR_CPUS)
    {
        return 0;
    }

    rate = clk_get_rate(pMpuClk);

    return rate;
}

static int hi_cpufreq_scale(unsigned int target_freq, unsigned int cur_freq)
{
#ifndef MODULE
    unsigned int i;
#endif

    int ret;
    struct cpufreq_freqs freqs;

    freqs.new = target_freq;
    freqs.old = hi_cpufreq_getspeed(0);

    if ((freqs.old == freqs.new) && (cur_freq = freqs.new))
    {
        return 0;
    }

    get_online_cpus();

    /* notifiers */
    for_each_online_cpu(freqs.cpu)
    cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);

    //printk("hi_cpufreq: transition: %u --> %u\n", freqs.old, freqs.new);
    ret = hi_device_scale(&mpu_dev, freqs.old, freqs.new );

    freqs.new = hi_cpufreq_getspeed(0);

#ifndef MODULE
#ifdef CONFIG_SMP
    /*
     * Note that loops_per_jiffy is not updated on SMP systems in
     * cpufreq driver. So, update the per-CPU loops_per_jiffy value
     * on frequency transition. We need to update all dependent CPUs.
     */
    for_each_possible_cpu(i)
    {
        struct lpj_info *lpj = &per_cpu(lpj_ref, i);

        if (!lpj->freq)
        {
            lpj->ref  = per_cpu(cpu_data, i).loops_per_jiffy;
            lpj->freq = freqs.old;
        }

        per_cpu(cpu_data, i).loops_per_jiffy =
            cpufreq_scale(lpj->ref, lpj->freq, freqs.new);
    }

    /* And don't forget to adjust the global one */
    if (!global_lpj_ref.freq)
    {
        global_lpj_ref.ref	= loops_per_jiffy;
        global_lpj_ref.freq = freqs.old;
    }

    loops_per_jiffy = cpufreq_scale(global_lpj_ref.ref, global_lpj_ref.freq,
                                    freqs.new);
#endif
#endif

    /* notifiers */
    for_each_online_cpu(freqs.cpu)
    cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);

    put_online_cpus();

    return ret;
}

static int hi_cpufreq_target(struct cpufreq_policy *policy,
                             unsigned int target_freq, unsigned int relation)
{
    unsigned int i;
    int ret = 0;

    if (!freq_table)
    {
        HI_ERR_PM("%s: cpu%d: no freq table!\n", __func__,
                  policy->cpu);
        return -EINVAL;
    }

    ret = cpufreq_frequency_table_target(policy, freq_table, target_freq,
                                         relation, &i);
    if (ret)
    {
        HI_WARN_PM("%s: cpu%d: no freq match for %d(ret=%d)\n",
                   __func__, policy->cpu, target_freq, ret);
        return ret;
    }

    mutex_lock(&hi_cpufreq_lock);

    current_target_freq = freq_table[i].frequency;

    if (!hi_cpufreq_suspended)
    {
        ret = hi_cpufreq_scale(current_target_freq, policy->cur);
    }

    mutex_unlock(&hi_cpufreq_lock);

    return ret;
}

static int hi_cpufreq_verify(struct cpufreq_policy *policy)
{
    if (!freq_table)
    {
        return -EINVAL;
    }

    return cpufreq_frequency_table_verify(policy, freq_table);
}

static inline void freq_table_free(void)
{
    if (atomic_dec_and_test(&freq_table_users))
    {
        opp_free_cpufreq_table(&mpu_dev, &freq_table);
    }
}

extern struct clk mpu_ck;
static int hi_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
    int result = 0;
    int i;

    HI_INFO_PM("Enter %s\n", __FUNCTION__);
    pMpuClk = &mpu_ck;
    if (IS_ERR(pMpuClk))
    {
        return PTR_ERR(pMpuClk);
    }

    if (policy->cpu >= 1)
    {
        result = -EINVAL;
        goto fail_ck;
    }

    policy->cur = policy->min = policy->max = hi_cpufreq_getspeed(policy->cpu);

    if (atomic_inc_return(&freq_table_users) == 1)
    {
        result = opp_init_cpufreq_table(&mpu_dev, &freq_table);
    }

    if (result)
    {
        HI_ERR_PM("%s: cpu%d: failed creating freq table[%d]\n",
                __func__, policy->cpu, result);
        goto fail_ck;
    }

    result = cpufreq_frequency_table_cpuinfo(policy, freq_table);
    if (result)
    {
        goto fail_table;
    }

    cpufreq_frequency_table_get_attr(freq_table, policy->cpu);

    policy->min = policy->cpuinfo.min_freq;
    policy->max = policy->cpuinfo.max_freq;
    policy->cur = hi_cpufreq_getspeed(policy->cpu);

    for (i = 0; freq_table[i].frequency != CPUFREQ_TABLE_END; i++)
    {
        max_freq = max(freq_table[i].frequency, max_freq);
    }

    /*
     * On hisilicon SMP configuartion, both processors share the voltage
     * and clock. So both CPUs needs to be scaled together and hence
     * needs software co-ordination. Use cpufreq affected_cpus
     * interface to handle this scenario. Additional is_smp() check
     * is to keep SMP_ON_UP build working.
     */

#ifndef MODULE
#ifdef CONFIG_SMP
    if (is_smp())
    {
        policy->shared_type = CPUFREQ_SHARED_TYPE_ANY;
        cpumask_setall(policy->cpus);
    }
#endif
#endif

    /* FIXME: what's the actual transition time? */
    policy->cpuinfo.transition_latency = 300 * 1000;

    return 0;

fail_table:
    freq_table_free();
fail_ck:
    clk_put(pMpuClk);
    return result;
}

static int hi_cpufreq_cpu_exit(struct cpufreq_policy *policy)
{
    freq_table_free();
    clk_put(pMpuClk);
    return 0;
}

static int hi_cpufreq_resume(struct cpufreq_policy *policy)
{
    return 0;
}

static int hi_cpufreq_resume_noirq(struct device *dev)
{
    return 0;
}

static int hi_cpufreq_suspend_noirq(struct device *dev)
{
    return 0;
}

static struct freq_attr *hi_cpufreq_attr[] = {
    &cpufreq_freq_attr_scaling_available_freqs,
    NULL,
};

static struct cpufreq_driver hi_cpufreq_driver = {
    .verify = hi_cpufreq_verify,
    .target = hi_cpufreq_target,
    .get  = hi_cpufreq_getspeed,
    .init = hi_cpufreq_cpu_init,
    .exit = hi_cpufreq_cpu_exit,
    .resume = hi_cpufreq_resume,
    .name  = "hi-cpufreq",
    .owner = THIS_MODULE,
    .attr  = hi_cpufreq_attr,
};

static struct dev_pm_ops hi_cpufreq_driver_pm_ops = {
    .suspend_noirq = hi_cpufreq_suspend_noirq,
    .resume_noirq  = hi_cpufreq_resume_noirq,
};

static struct platform_driver hi_cpufreq_platform_driver = {
    .driver.name = "hi_cpufreq",
    .driver.pm	 = &hi_cpufreq_driver_pm_ops,
};

static void cf_platform_device_release(struct device* dev){}

static struct platform_device hi_cpufreq_device = {
    .name = "mpu_pm_dev",
    .dev  = {
        .platform_data = NULL,
        .release	   = cf_platform_device_release,
    },
};

int  hi_cpufreq_init(void)
{
    int ret;

    HI_INFO_PM("Enter %s\n", __FUNCTION__);
    hi_opp_init();
    ret = cpufreq_register_driver(&hi_cpufreq_driver);
    hi_cpufreq_ready = !ret;

    if (!ret)
    {
        int t;

        t = platform_device_register(&hi_cpufreq_device);
        if (t)
        {
            HI_ERR_PM("%s_init: platform_device_register failed\n",
                      __func__);
        }

        t = platform_driver_register(&hi_cpufreq_platform_driver);
        if (t)
        {
            HI_WARN_PM("%s_init: platform_driver_register failed\n",
                       __func__);
        }
    }

    return ret;
}

void  hi_cpufreq_exit(void)
{
    HI_INFO_PM("hi_cpufreq_exit\n");

    platform_driver_unregister(&hi_cpufreq_platform_driver);
    platform_device_unregister(&hi_cpufreq_device);
    cpufreq_unregister_driver(&hi_cpufreq_driver);
}

MODULE_DESCRIPTION("cpufreq driver for hisilicon SOCs");
MODULE_LICENSE("GPL");
#if 0
#ifndef MODULE
late_initcall(hi_cpufreq_init);
module_exit(hi_cpufreq_exit);
#endif
#endif
