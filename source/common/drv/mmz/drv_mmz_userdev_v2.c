/* userdev.c
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
*/

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
//#include <linux/fs.h>
//#include <linux/slab.h>
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36)) 
#include <linux/smp_lock.h>
#endif
//#include <linux/devfs_fs_kernel.h>
#include <linux/init.h>
//#include <linux/delay.h>
//#include <linux/interrupt.h>
//#include <linux/ioport.h>
#include <linux/spinlock.h>
#include <linux/vmalloc.h>
#include <linux/string.h>
#include <linux/list.h>
//#include <linux/time.h>
#include <linux/sched.h>
#include <linux/dma-mapping.h>

#include <asm/uaccess.h>
#include <mach/hardware.h>
#include <asm/io.h>
#include <asm/system.h>
#include <asm/cacheflush.h>

#include "hi_drv_dev.h"
#include "drv_media_mem.h"
#include "drv_mmz_ioctl.h"
#include "hi_kernel_adapt.h"


#define error(s...)   do{ printk(KERN_ERR "mmz_userdev:%s: ", __FUNCTION__); printk(s); }while(0)
#define warning(s...) do{ printk(KERN_WARNING "mmz_userdev:%s: ", __FUNCTION__); printk(s); }while(0)

#define MMB_SHARE_SUPPORT  1
#define MMB_SHARE_DEBUG    0
#if MMB_SHARE_SUPPORT
#define MMB_TYPE_NOMAL     0   // nomal , not share and not copy
#define MMB_TYPE_BASE      1   // share and new mmb information
#define MMB_TYPE_COPY      2   // share and copy mmb information

#define MMB_SHARE_NONE    0
#define MMB_SHARE_SHM      1
#define MMB_SHARE_COM      2

static LIST_HEAD(mmb_share_list);
//static DECLARE_MUTEX(mmb_share_lock);
static  unsigned long share_com_phy_start = 0;
static  int                 share_com_size = 0;
#endif

extern int media_mem_init_0(void);
extern void media_mem_exit_0(void);


#define SUPPORT_DRV_MUTIOPEN   1
#define MMZ_MUTIOPEN_DEBUG     0
#if SUPPORT_DRV_MUTIOPEN
struct process_dev_info {
    struct mmz_userdev_info *pmu;
    int count;
    struct list_head list;
};

static LIST_HEAD(process_dev_list);
#endif

/****************************fops*********************************/
struct mmz_userdev_info {
    pid_t pid;
    pid_t mmap_pid;
    struct semaphore sem;
    struct list_head list;
#if MMB_MAP_OPTIMIZE
    hil_mmz_t  *mmz_info;
    unsigned long mmz_vm_start;
    int mmap_mmz_total;
    int mmaped_already;
    int mmaped_cached;
#endif
};

#define    CACHE_LINE_SIZE  (0x20)
static DEFINE_SPINLOCK(cache_lock);

static int mmz_flush_dcache_mmb_dirty(struct dirty_area *p_area)
{
    unsigned long flags;
    
    if (p_area == NULL)
        return -EINVAL;

    spin_lock_irqsave(&cache_lock, flags);

    /*flush l1 cache, use vir addr*/    
    __cpuc_flush_dcache_area((void*)p_area->dirty_virt_start, p_area->dirty_size);
    /* flush l2 cache, use phy addr */
    outer_flush_range(p_area->dirty_phys_start, p_area->dirty_phys_start + p_area->dirty_size);

    spin_unlock_irqrestore(&cache_lock, flags);

    //printk("MMZ:special dcache dirty[0x%08lx, 0x%08lx, 0x%08lx]\n", p_area->dirty_virt_start, p_area->dirty_phys_start, p_area->dirty_size);
    
    return 0;
}

static int mmz_flush_dcache_mmb(struct mmb_info *pmi)
{
    hil_mmb_t *mmb;
    unsigned long flags;

    if (pmi == NULL)
        return -EINVAL;

    mmb = pmi->mmb;
    if (mmb == NULL || pmi->map_cached == 0) {
        printk("%s->%d,error![%p,%d]\n", __func__,__LINE__,mmb,pmi->map_cached);
        return -EINVAL;
    }
    spin_lock_irqsave(&cache_lock, flags);

    /*flush l1 cache, use vir addr*/    
    __cpuc_flush_dcache_area((void *)pmi->mapped, pmi->size);
    /* flush l2 cache, use phy addr */
    outer_flush_range(mmb->phys_addr, mmb->phys_addr + mmb->length);

    spin_unlock_irqrestore(&cache_lock, flags);

    return 0;
}

static int mmz_flush_dcache_all(void)
{
    /* flush l1 all cache */
    __cpuc_flush_kern_all();
    /* flush l2 all cache */
    outer_flush_all(); 

    return 0;
}

#if SUPPORT_DRV_MUTIOPEN
int get_mmbinfo_pid_exist(struct mmz_userdev_info *pmu)
{
    struct mmb_info *p,*pShare;

    list_for_each_entry(p, &pmu->list, list) {
        if(p->pid == pmu->pid) {
            return 1;
        }
    }    

    list_for_each_entry(p, &mmb_share_list, list) {
        if(p->pid == pmu->pid ) {
            return 1;
        }
        
        list_for_each_entry(pShare, &p->share_list, share_list) {
            if(pShare->pid == pmu->pid ) {
               return 1;
            }           
        }   
    }

    return 0;
}
#endif

int mmz_userdev_open(struct inode *inode, struct file *file)
{
    struct mmz_userdev_info *pmu;
#if SUPPORT_DRV_MUTIOPEN
    struct process_dev_info *devInfo;
#if MMZ_MUTIOPEN_DEBUG    
    printk( "[MMZ]:%s----->Start.%d.%d.%d.%d\n", __FUNCTION__,current->pid,current->tgid, current->parent->pid, current->real_parent->pid);
#endif
    list_for_each_entry(devInfo, &process_dev_list, list) {
#if MMZ_MUTIOPEN_DEBUG       
        if(!devInfo->pmu) {
            printk( "[MMZ]:%s:devInfo->pmu == NULL\n", __FUNCTION__);
            break;        
        }
#endif        
        if(devInfo->pmu->pid == current->pid) {
#if 0            
            if(!get_mmbinfo_pid_exist(devInfo->pmu) && devInfo->count < 2)            
            {
#if MMZ_MUTIOPEN_DEBUG    
                printk( "[MMZ]:%s.reset map.%d\n", __FUNCTION__, devInfo->count);
#endif            
#if 0    // TODO: can  optimize here!        
                devInfo->pmu->mmap_pid = 0;
#if MMB_MAP_OPTIMIZE                
                devInfo->pmu->mmaped_already = 0;
                devInfo->pmu->mmaped_cached = 1;
#endif
                HI_INIT_MUTEX(&devInfo->pmu->sem);
                INIT_LIST_HEAD(&devInfo->pmu->list);
                devInfo->count = 0;
#else
                list_del(&devInfo->list);
                kfree(devInfo);
                break;
#endif
            }
#endif            
            file->private_data = (void*)devInfo->pmu;
            devInfo->count++;
#if MMZ_MUTIOPEN_DEBUG
            printk( "[MMZ]:%s----->End.open again[%d, %d].%d.%d.0x%08lx\n", __FUNCTION__, devInfo->pmu->pid, devInfo->count,current->pid, current->tgid, current->flags);
#endif
            return 0;
        }
    }
#endif
    pmu = kmalloc(sizeof(*pmu), GFP_KERNEL);
    if (pmu == NULL) {
        error("alloc mmz_userdev_info failed!\n");
        return -ENOMEM;
    }
    pmu->pid = current->pid;
    pmu->mmap_pid = 0;
#if MMB_MAP_OPTIMIZE
    pmu->mmaped_already = 0;
    pmu->mmaped_cached = 1;
#endif    
    HI_INIT_MUTEX(&pmu->sem);
    INIT_LIST_HEAD(&pmu->list);
    file->private_data = (void*)pmu;
#if SUPPORT_DRV_MUTIOPEN
    devInfo = kmalloc(sizeof(*devInfo), GFP_KERNEL);
    devInfo->pmu = pmu;
    devInfo->count = 1;
    list_add_tail(&devInfo->list, &process_dev_list);
#if MMZ_MUTIOPEN_DEBUG
    printk( "[MMZ]:%s----->End.first open, new drv info[%d, %d].%d.%d.0x%08lx\n", __FUNCTION__, devInfo->pmu->pid, devInfo->count, current->pid, current->tgid, current->flags);
#endif                                                                                                                                              
#endif
#if MMB_SHARE_DEBUG
    printk( "[MMZ]:mmz_userdev_open\n");
#endif
    return 0;
}

static int ioctl_mmb_alloc(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
    struct mmz_userdev_info *pmu = file->private_data;
    struct mmb_info *new_mmbinfo;
    hil_mmb_t *mmb;

    mmb = hil_mmb_alloc(pmi->mmb_name, pmi->size, pmi->align, pmi->gfp, pmi->mmz_name);
    if (mmb == NULL) {
        /* error("hil_mmb_alloc(%s, %lu, 0x%08lX, %lu, %s) failed!\n", 
                pmi->mmb_name, pmi->size, pmi->align, pmi->gfp, pmi->mmz_name);  */
        return -ENOMEM;
    }

    new_mmbinfo = kmalloc(sizeof(*new_mmbinfo), GFP_KERNEL);
    if (new_mmbinfo == NULL) {
        hil_mmb_free(mmb);
        error("alloc mmb_info failed!\n");
        return -ENOMEM;
    }

    memcpy(new_mmbinfo, pmi, sizeof(*new_mmbinfo));
    new_mmbinfo->phys_addr = hil_mmb_phys(mmb);
    new_mmbinfo->mmb = mmb;
    new_mmbinfo->prot = PROT_READ;
    new_mmbinfo->flags = MAP_SHARED;
#if MMB_SHARE_SUPPORT  
    new_mmbinfo->mmb_type = MMB_TYPE_NOMAL;
    new_mmbinfo->pid = pmu->pid;
    INIT_LIST_HEAD(&new_mmbinfo->share_list);
    if (iocmd) {  
        new_mmbinfo->mmb_type = MMB_TYPE_BASE;
        list_add_tail(&new_mmbinfo->list, &mmb_share_list);
        if(iocmd == MMB_SHARE_COM && !share_com_phy_start) {
            share_com_phy_start = new_mmbinfo->phys_addr;
            share_com_size = new_mmbinfo->size;	
        }
#if MMB_SHARE_DEBUG
        printk( "[MMZ]:alloc share mmb [0x%08lX, 0x%08lX].%ld\n", new_mmbinfo->phys_addr,new_mmbinfo->size,new_mmbinfo->pid);
#endif
    }
    else 
#endif
    {
#if MMB_SHARE_DEBUG
        printk( "[MMZ]:alloc nomal mmb [0x%08lX, 0x%08lX].%ld\n", new_mmbinfo->phys_addr,new_mmbinfo->size,new_mmbinfo->pid);
#endif    
        list_add_tail(&new_mmbinfo->list, &pmu->list);
    }

    pmi->phys_addr = new_mmbinfo->phys_addr;
    hil_mmb_get(mmb);

    return 0;
}

static int ioctl_mmb_alloc_v2(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
    struct mmz_userdev_info *pmu = file->private_data;
    struct mmb_info *new_mmbinfo;
    hil_mmb_t *mmb;

    mmb = hil_mmb_alloc_v2(pmi->mmb_name, pmi->size, pmi->align, pmi->gfp, pmi->mmz_name, pmi->order);
    if (mmb == NULL) {
        error("hil_mmb_alloc(%s, %lu, 0x%08lX, %lu, %s) failed!\n", 
                pmi->mmb_name, pmi->size, pmi->align, pmi->gfp, pmi->mmz_name);
        return -ENOMEM;
    }

    new_mmbinfo = kmalloc(sizeof(*new_mmbinfo), GFP_KERNEL);
    if (new_mmbinfo == NULL) {
        hil_mmb_free(mmb);
        error("alloc mmb_info failed!\n");
        return -ENOMEM;
    }

    memcpy(new_mmbinfo, pmi, sizeof(*new_mmbinfo));
    new_mmbinfo->phys_addr = hil_mmb_phys(mmb);
    new_mmbinfo->mmb = mmb;
    new_mmbinfo->prot = PROT_READ;
    new_mmbinfo->flags = MAP_SHARED;
    list_add_tail(&new_mmbinfo->list, &pmu->list);

    pmi->phys_addr = new_mmbinfo->phys_addr;

    hil_mmb_get(mmb);

    return 0;
}

#if MMB_SHARE_SUPPORT
//the position of the same phy_add in the share list
static struct mmb_info* get_baseshare_mmbinfo(unsigned long addr)
{
    struct mmb_info *p;

    list_for_each_entry(p, &mmb_share_list, list) {
        if (p->phys_addr == addr) {
            return p;
        }           
    }
    
    return NULL;
}

//get mmb information used by current process in the share list
static struct mmb_info* get_currpidshare_mmbinfo(unsigned long addr, struct mmz_userdev_info *pmu)
{
    struct mmb_info *p,*pShare;

    list_for_each_entry(p, &mmb_share_list, list) {
        if (p->phys_addr == addr) {
            if(p->pid == pmu->pid) {
                 return p;
            }
            
            list_for_each_entry(pShare, &p->share_list, share_list) {
                if (pShare->pid == pmu->pid) {
                    return pShare;
                }            
            }  
            break;
        }           
    }
    
    return NULL;   
}

//get mmb information used by current process in the share mmb list, p is the header
static struct mmb_info* get_currpidshare_mapmmbinfo(struct mmb_info *pbase, struct mmz_userdev_info *pmu)
{
    struct mmb_info *pShare;

     if(pbase->pid == pmu->pid) {
          return pbase;
     }    
            
     list_for_each_entry(pShare, &pbase->share_list, share_list) {
         if (pShare->pid == pmu->pid) {
             return pShare;
         }            
     }  

     return NULL;
}

static struct mmb_info* get_mmbinfo_byusraddr_from_share(unsigned long addr, struct mmz_userdev_info *pmu)
{
    struct mmb_info *p,*pShare;

    list_for_each_entry(p, &mmb_share_list, list) {
        if(p->pid == pmu->pid ) {
            if ( ((unsigned long)p->mapped <= addr) && 
                 ((unsigned long)p->mapped + p->size > addr) ) {
                return p;
            }
        }
        
        list_for_each_entry(pShare, &p->share_list, share_list) {
            if(pShare->pid == pmu->pid ) {
                if ( ((unsigned long)pShare->mapped <= addr) && 
                     ((unsigned long)pShare->mapped + p->size > addr) ) {
                    return pShare;
                }
            }           
        }   
    }

    return NULL;
}
#endif

static struct mmb_info* get_mmbinfo(unsigned long addr, struct mmz_userdev_info *pmu)
{
    struct mmb_info *p;
    
    list_for_each_entry(p, &pmu->list, list) {
        if (p->phys_addr == addr) {
            break;
        }
    }
    
    if ( &p->list == &pmu->list) {
        return NULL;
    }

    return p;
}

static struct mmb_info* get_mmbinfo_safe(unsigned long addr, struct mmz_userdev_info *pmu)
{
    struct mmb_info *p;

    p = get_mmbinfo(addr, pmu);

    if ( p == NULL) {
#if MMB_SHARE_SUPPORT
        p = get_currpidshare_mmbinfo(addr, pmu);
        if( p == NULL) {
            error("mmb(0x%08lX) not found!\n", addr);
            return NULL;         
        }
#else
        error("mmb(0x%08lX) not found!\n", addr);
        return NULL;
#endif        
    }

    return p;
}

static int _usrdev_mmb_free(struct mmb_info *p,struct file *file)
{
    int ret = 0;
    //struct mmz_userdev_info *pmu = file->private_data;
#if MMB_SHARE_SUPPORT
    struct mmb_info *pShare,*pn, *pBase;  
    if ( p->mmb_type == MMB_TYPE_BASE) {
        pBase = p;
        list_for_each_entry_safe(pShare, pn, &p->share_list, share_list) {
#if MMB_SHARE_DEBUG
           printk( "[MMZ]:delete share mmb base[0x%08lX, 0x%08lX].%ld\n", pShare->phys_addr,pShare->size,pShare->pid);
#endif             
            hil_mmb_put(pShare->mmb);
            list_del(&pShare->share_list);
            kfree(pShare);
        }  
    } else if (p->mmb_type == MMB_TYPE_COPY) {
        // TODO: may to delete one time for check list
        pBase = get_baseshare_mmbinfo(p->phys_addr);          
        list_for_each_entry_safe(pShare, pn, &pBase->share_list, share_list) {
#if MMB_SHARE_DEBUG
           printk( "[MMZ]:delete share mmb copy[0x%08lX, 0x%08lX].%ld\n", pShare->phys_addr,pShare->size,pShare->pid);
#endif          
            hil_mmb_put(pShare->mmb);
            list_del(&pShare->share_list);
            kfree(pShare);
        }  
    } else {
        pBase = p;
#if MMB_SHARE_DEBUG
        printk( "[MMZ]:delete nomal mmb [0x%08lX, 0x%08lX].%ld\n", pBase->phys_addr,pBase->size,pBase->pid);
#endif                
    }
    
    hil_mmb_put(pBase->mmb);
    list_del(&pBase->list);
    ret = hil_mmb_free(pBase->mmb);
    if(pBase->mmb->phys_addr == share_com_phy_start) {
        share_com_phy_start = 0;
        share_com_size = 0;
    }
    kfree(pBase);    
#else
    list_del(&p->list);
    hil_mmb_put(p->mmb);
    ret = hil_mmb_free(p->mmb);
    kfree(p);
#endif
    p = NULL;
#if MMB_SHARE_DEBUG
    printk( "[MMZ]:ret = %d\n",ret);
#endif    
    return ret;
}

static int _usrdev_mmb_force_free(struct mmb_info *p)
{
    int ret = 0;

#if MMB_SHARE_SUPPORT
    struct mmb_info *pShare,*pn, *pBase;  
    if ( p->mmb_type == MMB_TYPE_BASE) {
        pBase = p;
        list_for_each_entry_safe(pShare, pn, &p->share_list, share_list) {
#if MMB_SHARE_DEBUG
           printk( "[MMZ]:delete share mmb base[0x%08lX, 0x%08lX].%ld\n", pShare->phys_addr,pShare->size,pShare->pid);
#endif             
            hil_mmb_force_put(pShare->mmb);
            list_del(&pShare->share_list);
            kfree(pShare);
        }  
    } else if (p->mmb_type == MMB_TYPE_COPY) {
        // TODO: may to delete one time for check list
        pBase = get_baseshare_mmbinfo(p->phys_addr);          
        list_for_each_entry_safe(pShare, pn, &pBase->share_list, share_list) {
#if MMB_SHARE_DEBUG
           printk( "[MMZ]:delete share mmb copy[0x%08lX, 0x%08lX].%ld\n", pShare->phys_addr,pShare->size,pShare->pid);
#endif          
            hil_mmb_force_put(pShare->mmb);
            list_del(&pShare->share_list);
            kfree(pShare);
        }  
    } else {
        pBase = p;
#if MMB_SHARE_DEBUG
        printk( "[MMZ]:delete nomal mmb [0x%08lX, 0x%08lX].%ld\n", pBase->phys_addr,pBase->size,pBase->pid);
#endif                
    }
    
    hil_mmb_force_put(pBase->mmb);
    list_del(&pBase->list);
    ret = hil_mmb_free(pBase->mmb);
    if(pBase->mmb->phys_addr == share_com_phy_start) {
        share_com_phy_start = 0;
        share_com_size = 0;
    }
    kfree(pBase);    

#endif
    p = NULL;
#if MMB_SHARE_DEBUG
    printk( "[MMZ]:ret = %d\n",ret);
#endif    
    return ret;
}

static int ioctl_mmb_free(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
    int ret = 0;
    struct mmz_userdev_info *pmu = file->private_data;
    struct mmb_info *p;
    
#if MMB_SHARE_SUPPORT    
    if ((p = get_mmbinfo(pmi->phys_addr, pmu)) != NULL) {
        //found in the nomal used list.
        if (p->delayed_free) {
            warning("mmb<%s> is delayed_free, can not free again!\n", p->mmb->name);
            return -EBUSY;
        }
    
        if (p->map_ref > 0 || p->mmb_ref > 0) {
            warning("mmb<%s>.1 is still used!%d\n", p->mmb->name,p->pid);
            p->delayed_free = 1;
            return -EBUSY;
        }   
        
        ret = _usrdev_mmb_free(p,file);
    } else if ((p = get_baseshare_mmbinfo(pmi->phys_addr)) != NULL) {
        //foudn in the share list
        struct mmb_info *pShare,*pn;
        int busy;
#if MMB_SHARE_DEBUG
        printk( "[MMZ]:%s.share list [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, p->phys_addr, p->size, p->pid);
#endif                                                  
        list_for_each_entry_safe(pShare, pn, &p->share_list, share_list) {
#if MMB_SHARE_DEBUG
            printk( "[MMZ]:%s.check [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__,pShare->phys_addr,pShare->size,pShare->pid);
#endif                                          
            busy = 0;
            if (pShare->delayed_free) {
                warning("mmb<%s> is delayed_free, can not free again!\n",pShare->mmb->name);
                busy = 1;
            }        
            if (pShare->map_ref > 0 || pShare->mmb_ref > 0) {
#if MMB_SHARE_DEBUG                
                warning("mmb<%s>.2 is still used!%d\n", pShare->mmb->name,pShare->pid);
#endif
                pShare->delayed_free = 1;
                busy = 1;
            }

            //if unmap then delete the mmb info in the share mmb list
            if(/*pShare->pid == pmu->pid && */busy == 0) {
#if MMB_SHARE_DEBUG
                printk( "[MMZ]:%s.list_del [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__,pShare->phys_addr,pShare->size,pShare->pid);
#endif                                                       
                list_del(&pShare->share_list);
                kfree(pShare);       
            }
        } 
        
        if (p->delayed_free) {            
            warning("mmb<%s> is delayed_free, can not free again!\n", p->mmb->name); 
            return -EBUSY;
        }    
        if (p->map_ref > 0 || p->mmb_ref > 0) {
#if MMB_SHARE_DEBUG            
            warning("mmb<%s>.3 is still used!%d,%d,%d\n", p->mmb->name,p->map_ref,p->mmb_ref,p->pid);
#endif
            p->delayed_free = 1;
            return -EBUSY;
        }   

        if(&p->share_list == p->share_list.next) {
            //only one the same phy_addr share list
#if MMB_SHARE_DEBUG
            printk( "[MMZ]:%s.delete base(one) [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, p->phys_addr, p->size, p->pid);
#endif                                             
            ret = _usrdev_mmb_free(p, file);          
        } else {
            pShare =  list_entry(p->share_list.next, struct mmb_info, share_list);
            pShare->mmb_type = MMB_TYPE_BASE;
#if MMB_SHARE_DEBUG
            printk( "[MMZ]:%s.delete base [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__,pShare->phys_addr,pShare->size,pShare->pid);
#endif                                 
            list_add(&pShare->list, p->list.prev);
            list_del(&p->list);     
            
            hil_mmb_put(p->mmb);
            list_del(&p->share_list);            
            kfree(p);            
        }           
    }
    else {
#if MMB_SHARE_DEBUG     
        warning("mmb<%s> not found![0x%08lX, 0x%08lX].%ld.%d\n", pmi->mmb_name,pmi->phys_addr,pmi->size,pmi->pid,pmi->mmb_type);
#endif
        return -EPERM;
   }
#else
    if ((p = get_mmbinfo_safe(pmi->phys_addr, pmu)) == NULL)
        return -EPERM;

    if (p->delayed_free) {
        warning("mmb<%s> is delayed_free, can not free again!\n", p->mmb->name);
        return -EBUSY;
    }

    if (p->map_ref > 0 || p->mmb_ref > 0) {
        warning("mmb<%s> is still used!%d\n", p->mmb->name,p->pid);
        p->delayed_free = 1;
        return -EBUSY;
    }
    ret = _usrdev_mmb_free(p,file);
#endif    
    
    return ret;
}

static int ioctl_mmb_force_free(struct mmb_info *pmi)
{
    int ret = 0;
    struct mmb_info *p;

#if MMB_SHARE_SUPPORT    
    if ((p = get_baseshare_mmbinfo(pmi->phys_addr)) != NULL) {
        //foudn in the share list
        struct mmb_info *pShare,*pn;
#if MMB_SHARE_DEBUG
        printk( "[MMZ]:%s.share list [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, p->phys_addr, p->size, p->pid);
#endif                                                  
        list_for_each_entry_safe(pShare, pn, &p->share_list, share_list) {
#if MMB_SHARE_DEBUG
            printk( "[MMZ]:%s.check [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__,pShare->phys_addr,pShare->size,pShare->pid);                                  
            if (pShare->delayed_free) {
                warning("mmb<%s> is delayed_free, can not free again!\n",pShare->mmb->name);
            }        
            if (pShare->map_ref > 0 || pShare->mmb_ref > 0) {               
                warning("mmb<%s>.2 is still used!%d\n", pShare->mmb->name,pShare->pid);

                pShare->delayed_free = 1;
            }
            printk( "[MMZ]:%s.list_del [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__,pShare->phys_addr,pShare->size,pShare->pid);
#endif                                                       
            list_del(&pShare->share_list);
            kfree(pShare);       
        } 
#if MMB_SHARE_DEBUG            
        if (p->delayed_free) {            
            warning("mmb<%s> is delayed_free, can not free again!\n", p->mmb->name); 
        }    
        if (p->map_ref > 0 || p->mmb_ref > 0) {        
            warning("mmb<%s>.3 is still used!%d,%d,%d\n", p->mmb->name,p->map_ref,p->mmb_ref,p->pid);
            p->delayed_free = 1;
        }   
#endif
        if(&p->share_list == p->share_list.next) {
            //only one the same phy_addr share list
#if MMB_SHARE_DEBUG
            printk( "[MMZ]:%s.delete base(one) [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, p->phys_addr, p->size, p->pid);
#endif                                             
            ret = _usrdev_mmb_force_free(p);          
        } else {
            pShare =  list_entry(p->share_list.next, struct mmb_info, share_list);
            pShare->mmb_type = MMB_TYPE_BASE;
#if MMB_SHARE_DEBUG
            printk( "[MMZ]:%s.delete base [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__,pShare->phys_addr,pShare->size,pShare->pid);
#endif                                 
            list_add(&pShare->list, p->list.prev);
            list_del(&p->list);     
            
            hil_mmb_put(p->mmb);
            list_del(&p->share_list);            
            kfree(p);            
        }           
    }
    else {
#if MMB_SHARE_DEBUG     
        warning("mmb<%s> not found![0x%08lX, 0x%08lX].%ld.%d\n", pmi->mmb_name,pmi->phys_addr,pmi->size,pmi->pid,pmi->mmb_type);
#endif
        return -EPERM;
   }
#endif    
    
    return ret;
}


static int ioctl_mmb_attr(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
    struct mmz_userdev_info *pmu = file->private_data;
    struct mmb_info *p;
    
    if ((p = get_mmbinfo_safe(pmi->phys_addr, pmu)) == NULL)  
        return -EPERM;

    memcpy(pmi, p, sizeof(*pmi));
    return 0;
}

static int ioctl_mmb_user_remap(struct file *file, unsigned int iocmd, struct mmb_info *pmi, int cached)
{
    struct mmz_userdev_info *pmu = file->private_data;
    struct mmb_info *p,*pMapped;

    unsigned long addr, len, prot, flags, pgoff;
#if MMB_SHARE_SUPPORT
     if((p = get_mmbinfo(pmi->phys_addr, pmu)) == NULL) { 
        //not in the share list
        if ((p = get_baseshare_mmbinfo(pmi->phys_addr)) == NULL) {
             return -EPERM;       
        }        
        // in the share list, but not mapped
        if ((pMapped = get_currpidshare_mapmmbinfo(p, pmu)) == NULL) {
            struct mmb_info *pNew = kmalloc(sizeof(*pNew), GFP_KERNEL);
            if (pNew == NULL) {
                error("alloc mmb_info failed!\n");
                return -ENOMEM;
            }    
            memcpy(pNew, p, sizeof(*pNew));
            pNew->mmb_type = MMB_TYPE_COPY;
            pNew->map_ref = 0;
            pNew->mmb_ref = 0;
            pNew->map_cached = 0;
            pNew->pid = pmu->pid;
            list_add_tail(&pNew->share_list, &p->share_list);
#if MMB_SHARE_DEBUG
            printk( "[MMZ]:%s.new copy [0x%08lX, 0x%08lX].%ld--from[0x%08lX].%ld\n", __FUNCTION__ ,pNew->phys_addr,pNew->size,pNew->pid,p->phys_addr,p->pid);
#endif                                             
            p = pNew;    
#if 0//def MMB_SHARE_DEBUG
            if(p == NULL || p->mmb == NULL) {
                 printk( "[MMZ]:%s fatal error,please debug\n", __FUNCTION__ );
            } else {
                 printk( "[MMZ]:%s copy mmb info[0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, p->mmb->phys_addr , p->mmb->length , p->mmb->flags);
            }
#endif            
        } else {
#if 0//def MMB_SHARE_DEBUG
            printk( "[MMZ]:%s.base map [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, pMapped->phys_addr, pMapped->size,pMapped->pid);
#endif                                                     
            p = pMapped;
        }
    }
#else
    if ((p = get_mmbinfo_safe(pmi->phys_addr, pmu)) == NULL) { 
        return -EPERM;
    }
#endif   

    if ( p->mapped && p->map_ref > 0) {
        if (cached != p->map_cached) {
            error("mmb<%s> already mapped %s, can not be remap to %s.\n", p->mmb->name, 
                    p->map_cached ? "cached" : "non-cached",
                    cached ? "cached" : "non-cached");
            //return -EINVAL;
        }

        //p->map_ref++;
        //p->mmb_ref++;
        //hil_mmb_get(p->mmb);

        pmi->mapped = p->mapped;
#if MMB_SHARE_DEBUG
        printk( "[MMZ]:%s. had mapped [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, p->phys_addr, p->mapped,p->pid);
#endif                                                     
        return 0;
    }

    if (p->phys_addr & ~PAGE_MASK)
        return -EINVAL;

    addr = 0;
    pgoff = p->phys_addr >> PAGE_SHIFT;

    len = PAGE_ALIGN(p->size);

    prot = pmi->prot;
    flags = pmi->flags;
    if (prot == 0)
        prot = p->prot;
    if (flags == 0)
        flags = p->flags;

#if MMB_MAP_OPTIMIZE
    if (pmu->mmaped_already == 0) {
        pmu->mmaped_cached = cached;
        pmu->mmz_info = p->mmb->zone;
        if (pmu->mmz_info != NULL) {
            //printk( "[MMZ]:START");
            down_write(&current->mm->mmap_sem);
            pmu->mmap_pid = current->pid;
            pmu->mmap_mmz_total = 1;
            pmu->mmz_vm_start = do_mmap_pgoff(file, 0, pmu->mmz_info->nbytes, PROT_READ | PROT_WRITE, MAP_SHARED, (pmu->mmz_info->phys_start>> PAGE_SHIFT));            
            pmu->mmap_mmz_total = 0;
            pmu->mmap_pid = 0;
            up_write(&current->mm->mmap_sem);    
        
            pmu->mmaped_already = 1;

            //printk( "[MMZ]:%s.[0x%08lX, 0x%08lX, 0x%08lX].cached:%d\n", __FUNCTION__,pmu->mmz_info->phys_start, pmu->mmz_info->nbytes, pmu->mmz_vm_start,cached);
        }        
    }

    if (pmu->mmaped_already) {
        addr = p->phys_addr - pmu->mmz_info->phys_start + pmu->mmz_vm_start;
        p->map_cached = pmu->mmaped_cached;
        if (pmu->mmaped_cached != cached) {
            //pleased confim that using map function right in the app
            //warning("mmz init cached is %d, but this mmb requested cached is %d!\n", pmu->mmaped_cached,cached);
        }
        //printk( "----------------%s.get from former,0x%08lX\n",__FUNCTION__, addr);
    } else
#endif
    {
        //printk( "----------------%s.mmap nomalr\n",__FUNCTION__);
        down_write(&current->mm->mmap_sem);
        pmu->mmap_pid = current->pid;
        p->map_cached = cached;
        addr = do_mmap_pgoff(file, addr, len, prot, flags, pgoff);
        pmu->mmap_pid = 0;
        up_write(&current->mm->mmap_sem);
    }
    
    if (IS_ERR_VALUE(addr)) {
        error("do_mmap_pgoff(file, 0, %lu, 0x%08lX, 0x%08lX, 0x%08lX) return 0x%08lX\n", 
                len, prot, flags, pgoff, addr);
        return addr;
    }

    p->mapped = (void*)addr;
    p->prot = prot;
    p->flags = flags;

    p->map_ref++;
    p->mmb_ref++;
    hil_mmb_get(p->mmb);

    pmi->mapped = p->mapped;
#if MMB_SHARE_DEBUG
    printk( "[MMZ]:%s. mapped end [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, p->phys_addr, p->mapped,p->pid);
#endif                                                     

    return 0;
}

static int ioctl_mmb_user_unmap(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
    int ret;
    unsigned long addr, len;
    struct mmb_info *p;
    struct mmz_userdev_info *pmu = file->private_data;
#if MMB_SHARE_SUPPORT
    struct mmb_info *pBase,*pMapped;
    if ((p = get_mmbinfo(pmi->phys_addr, pmu)) == NULL)  {
        if ((pBase = get_baseshare_mmbinfo(pmi->phys_addr)) == NULL) {
            return -EPERM;       
        }  
        if ((pMapped = get_currpidshare_mapmmbinfo(pBase, pmu)) == NULL) {
#if MMB_SHARE_DEBUG
            printk( "[MMZ]:%s.base unmap not found!\n", __FUNCTION__,pBase);
#endif                                                                         
            return -EPERM;  
        }
#if MMB_SHARE_DEBUG
        printk( "[MMZ]:%s.base unmap [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, pMapped->phys_addr,pMapped->size,pMapped->pid);
#endif                                                             
        p = pMapped;
    }
#else
    if ((p = get_mmbinfo_safe(pmi->phys_addr, pmu)) == NULL) 
        return -EPERM;
#endif    
    if (!p->mapped) {
        printk(KERN_WARNING "mmb(0x%08lX) have'nt been user-mapped yet!\n", p->phys_addr);
        pmi->mapped = NULL;
        return -EIO;
    }

    if (!(p->map_ref > 0 && p->mmb_ref > 0)) {
        error("mmb<%s> has invalid refer: map_ref = %d, mmb_ref = %d.\n", p->mmb->name, p->map_ref, p->mmb_ref);
        return -EIO;
    }
    
    p->map_ref--;
    p->mmb_ref--;    
    hil_mmb_put(p->mmb);

    if (p->map_ref > 0)
        return 0;
#if MMB_MAP_OPTIMIZE
    if (pmu->mmaped_already) {
        addr = (unsigned long)p->mapped;
        len  = PAGE_ALIGN(p->size);
        ret = 0;
    } else
#endif
    {
        addr = (unsigned long)p->mapped;
        len  = PAGE_ALIGN(p->size);
        down_write(&current->mm->mmap_sem);
        ret = do_munmap(current->mm, addr, len);
        up_write(&current->mm->mmap_sem);
    }
    
    //printk( "%s.[0x%08lX,0x%08lX,%d,%d]\n", __FUNCTION__,len, addr,p->map_ref,p->mmb_ref);

    if (!IS_ERR_VALUE(ret)) {
        p->mapped = NULL;
        pmi->mapped = NULL;
    }
#if MMB_SHARE_SUPPORT
    if(p->mmb_type == MMB_TYPE_COPY || p->mmb_type == MMB_TYPE_BASE)
    {
        struct mmb_info *pShare,*pn,*pNext;
        list_for_each_entry_safe(pShare, pn, &pBase->share_list, share_list) {     
             if(pShare->delayed_free && pShare->mmb_ref == 0 && pShare->mmb_ref == 0) {
                 // delete this phy_add same list node if delayed free
#if MMB_SHARE_DEBUG
                printk( "[MMZ]:%s.check delayed free [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, pShare->phys_addr,pShare->size,pShare->pid);
#endif                                                                                       
                 list_del(&pShare->share_list);
                 kfree(pShare);
             }
        }

        if(pBase->delayed_free && pBase->mmb_ref == 0 && pBase->mmb_ref == 0) {
            if(&pBase->share_list == pBase->share_list.next) {
                //only one in the same phy_addr list, the free when check delayed free
#if MMB_SHARE_DEBUG
                printk( "[MMZ]:%s.base node delay free [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, pBase->phys_addr,pBase->size,pBase->pid);
#endif                                                                                      
                _usrdev_mmb_free(pBase, file);                  
            } else {
                //delete the base phy_add same list node if exist other nodes
#if MMB_SHARE_DEBUG
                printk( "[MMZ]:%s.delete base [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, pBase->phys_addr,pBase->size,pBase->pid);
#endif                                                                                                      
                pNext = list_entry(pBase->share_list.next, struct mmb_info, share_list);
                pNext->mmb_type = MMB_TYPE_BASE;
                list_add(&pNext->list, pBase->list.prev);
                list_del(&pBase->list);                
                list_del(&pBase->share_list);                
                kfree(pBase);                 
            }
        } 
    } else 
#endif
    if (p->delayed_free && p->mmb_ref == 0 && p->mmb_ref == 0) {
        _usrdev_mmb_free(p,file);
    }

    return ret;
}

// find mmbinfo by use addr
static struct mmb_info* get_mmbinfo_byusraddr(unsigned long addr, struct mmz_userdev_info *pmu)
{
    struct mmb_info *p;

    list_for_each_entry(p, &pmu->list, list) {
        if ( ((unsigned long)p->mapped <= addr) && 
            ((unsigned long)p->mapped + p->size > addr) )
                break;
    }
    if ( &p->list == &pmu->list) {
#if MMB_SHARE_SUPPORT
        if((p = get_mmbinfo_byusraddr_from_share(addr, pmu)) == NULL) {
            return NULL;
        }
#else
        return NULL;
#endif
    }

    return p;
}

// 应当有 get/put两个接口，保证ref的获取释放，不过用户对该接口暂时自己确认，使用中不进行释放
static int ioctl_mmb_user_getphyaddr(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
    struct mmb_info *p;
    struct mmz_userdev_info *pmu = file->private_data;

    p = get_mmbinfo_byusraddr((unsigned long)pmi->mapped, pmu);
    if ( p == NULL)
        return -EPERM;

    if (!(p->map_ref > 0 && p->mmb_ref > 0)) {
        error("mmb<%s> has invalid refer: map_ref = %d, mmb_ref = %d.\n", p->mmb->name, p->map_ref, p->mmb_ref);
        return -EIO;
    }

    pmi->phys_addr = p->phys_addr + ((unsigned long)pmi->mapped - (unsigned long)p->mapped);
    pmi->size = p->size - ((unsigned long)pmi->mapped - (unsigned long)p->mapped);
    return 0;
}



static int mmz_userdev_ioctl_m(struct inode *inode, struct file *file, unsigned int cmd, struct mmb_info *pmi)
{     
	int ret = 0;
    switch (_IOC_NR(cmd)) {
        case _IOC_NR(IOC_MMB_ALLOC):
            ret = ioctl_mmb_alloc(file, 0, pmi);
            break;
        case _IOC_NR(IOC_MMB_ALLOC_V2):
            ret = ioctl_mmb_alloc_v2(file, cmd, pmi);
            break;             
        case _IOC_NR(IOC_MMB_ALLOC_SHARE):
#if MMB_SHARE_SUPPORT    
            ret = ioctl_mmb_alloc(file, MMB_SHARE_SHM, pmi);
#else
            ret = ioctl_mmb_alloc(file, 0, pmi);
#endif
            break;    
        case _IOC_NR(IOC_MMB_ALLOC_SHM_COM):
#if MMB_SHARE_SUPPORT   
            if(share_com_phy_start) {
	         ret = -ENOMEM;
            } else {
                ret = ioctl_mmb_alloc(file, MMB_SHARE_COM, pmi);
            }
#else
            ret = ioctl_mmb_alloc(file, 0, pmi);
#endif
            break;  
        case _IOC_NR(IOC_MMB_GET_SHM_COM):
#if MMB_SHARE_SUPPORT    
            pmi->phys_addr = share_com_phy_start;
            pmi->size = share_com_size;
#endif
            break;  
        case _IOC_NR(IOC_MMB_ATTR):
            ret = ioctl_mmb_attr(file, cmd, pmi);
            break;
        case _IOC_NR(IOC_MMB_FREE):
            ret = ioctl_mmb_free(file, cmd, pmi);
            break;
        case _IOC_NR(IOC_MMB_FORCE_FREE):
            ret = ioctl_mmb_force_free(pmi);
            break;			
        case _IOC_NR(IOC_MMB_USER_REMAP):
            ret = ioctl_mmb_user_remap(file, cmd, pmi, 0);
            break;
        case _IOC_NR(IOC_MMB_USER_REMAP_CACHED):
            ret = ioctl_mmb_user_remap(file, cmd, pmi, 1);
            break;
        case _IOC_NR(IOC_MMB_USER_UNMAP):
            ret = ioctl_mmb_user_unmap(file, cmd, pmi);
            break;
        case _IOC_NR(IOC_MMB_USER_GETPHYADDR):
            ret = ioctl_mmb_user_getphyaddr(file, cmd, pmi);
            break;            
        
        default:
            error("invalid ioctl cmd = %08X\n", cmd);
            ret = -EINVAL;
            break;
    }

    return ret;
}

static int mmz_userdev_ioctl_r(struct inode *inode, struct file *file, unsigned int cmd, struct mmb_info *pmi)
{
#if MMB_SHARE_DEBUG
    printk( "[MMZ]:%s.ioctl [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, pmi->phys_addr,pmi->size,pmi->pid);
#endif
    switch (_IOC_NR(cmd)) {
        case _IOC_NR(IOC_MMB_ADD_REF):
            pmi->mmb_ref++;
            hil_mmb_get(pmi->mmb);
            break;
        case _IOC_NR(IOC_MMB_DEC_REF):
            if (pmi->mmb_ref <= 0) {
                error("mmb<%s> mmb_ref is %d!\n", pmi->mmb->name, pmi->mmb_ref);
                return -EPERM;
            }
            pmi->mmb_ref--;
            hil_mmb_put(pmi->mmb);
            if (pmi->delayed_free && pmi->mmb_ref == 0 && pmi->mmb_ref == 0) {
#if MMB_SHARE_SUPPORT
                // TODO:
#endif
                _usrdev_mmb_free(pmi, file);
            }
            break;
        default:
            return -EINVAL;
            break;
    }

    return 0;
}

/* just for test */
static int mmz_userdev_ioctl_t(struct inode *inode, struct file *file, unsigned int cmd, struct mmb_info *pmi)
{
    return 0;
}

long mmz_userdev_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	long ret = 0;
    struct mmz_userdev_info *pmu = file->private_data;    

    down(&pmu->sem);

    if (_IOC_TYPE(cmd) == 'm') {

        struct mmb_info mi;

        if (_IOC_SIZE(cmd) > sizeof(mi) || arg == 0) {
            error("_IOC_SIZE(cmd)=%d, arg==0x%08lX\n", _IOC_SIZE(cmd), arg);
            ret = -EINVAL;
            goto __error_exit;
        }
        memset(&mi, 0, sizeof(mi));
        if (copy_from_user(&mi, (void*)arg, _IOC_SIZE(cmd)))
        {
            printk("\nmmz_userdev_ioctl: copy_from_user error.\n");
            ret = -EFAULT;
            goto __error_exit;
        }
		ret = mmz_userdev_ioctl_m(file->f_dentry->d_inode, file, cmd, &mi);
        if (!ret && (cmd&IOC_OUT))
        {
            if (copy_to_user((void*)arg, &mi, _IOC_SIZE(cmd)))
            {
                printk("\nmmz_userdev_ioctl: copy_to_user error.\n");
                ret = -EFAULT;
                goto __error_exit;
            }
        }
    } else if (_IOC_TYPE(cmd) == 'r') {
        //not support for share mmb_info list
        struct mmb_info *pmi;
        if ((pmi = get_mmbinfo_safe(arg, pmu)) == NULL) {        
            ret = -EPERM;
            goto __error_exit;
        }
		ret = mmz_userdev_ioctl_r(file->f_dentry->d_inode, file, cmd, pmi);
    } else if (_IOC_TYPE(cmd) == 'c') {

        struct mmb_info *pmi;
        if (arg == 0) {
#if MMB_FLUSH_OPTIMIZE 
              up(&pmu->sem);               
#endif
              mmz_flush_dcache_all();  
#if MMB_FLUSH_OPTIMIZE 
              goto __rightnow_exit;
#else
              goto __error_exit; 
#endif
        }
        if ((pmi = get_mmbinfo_safe(arg, pmu)) == NULL) {
            ret = -EPERM;
            goto __error_exit;
        }        
        //printk("\nflsuh:%ld\n",pmi->size);
#if MMB_FLUSH_OPTIMIZE       
        up(&pmu->sem);      
        if (!pmi->map_cached) {
             mmz_flush_dcache_all();
             goto __rightnow_exit;
        }
#endif
        switch (_IOC_NR(cmd)) {
            case _IOC_NR(IOC_MMB_FLUSH_DCACHE):
#if MMB_FLUSH_OPTIMIZE
                #define FLUSH_INFLEXTION 0x7000 //28K
                if (pmi->size > FLUSH_INFLEXTION) {                    
                    mmz_flush_dcache_all();                     
                }
                else
#endif
                mmz_flush_dcache_mmb(pmi);
                break;

            default:
                ret = -EINVAL;
                break;
        }
#if MMB_FLUSH_OPTIMIZE        
        goto __rightnow_exit;
#endif
    } else if (_IOC_TYPE(cmd) == 'd') {
           //hil_mmb_t *mmb;
           //struct mmb_info *pmi;
           struct dirty_area area;
           
#ifndef MMB_FLUSH_OPTIMIZE
           unsigned long offset;
#endif
           unsigned long orig_addr;
   
           if (_IOC_SIZE(cmd) != sizeof(area) || arg == 0) {
               error("_IOC_SIZE(cmd)=%d, arg==0x%08lx\n", _IOC_SIZE(cmd), arg);
               ret = -EINVAL;
               goto __error_exit;
           }
           memset(&area, 0, sizeof(area));
           if (copy_from_user(&area, (void *)arg, _IOC_SIZE(cmd))) {
               printk(KERN_WARNING "\nmmz_userdev_ioctl: copy_from_user error.\n");
               ret = -EFAULT;
               goto __error_exit;
           }
#ifndef MMB_FLUSH_OPTIMIZE           
           if ((mmb = hil_mmb_getby_phys_2(area.dirty_phys_start, &offset)) == NULL) {
               error("dirty_phys_addr=0x%08lx\n", area.dirty_phys_start);
               ret = -EFAULT;
               goto __error_exit;
           }
           pmi = get_mmbinfo_safe(mmb->phys_addr, pmu);
           if (pmi == NULL) {
               ret = -EPERM;
               goto __error_exit;
           }
           if (area.dirty_virt_start != (unsigned long)pmi->mapped + offset) {
               printk(KERN_WARNING \
                   "dirty_virt_start addr was not consistent with dirty_phys_start addr!\n");
               ret = -EFAULT;
               goto __error_exit;
           }
           if (area.dirty_phys_start + area.dirty_size > mmb->phys_addr + mmb->length) {
               printk(KERN_WARNING "\ndirty area overflow!\n");
               ret = -EFAULT;
               goto __error_exit;
           }
   #endif
           /*cache line aligned*/
           orig_addr = area.dirty_phys_start;
           area.dirty_phys_start &= ~(CACHE_LINE_SIZE - 1);
           area.dirty_virt_start &= ~(CACHE_LINE_SIZE - 1);
           area.dirty_size = (area.dirty_size + (orig_addr - area.dirty_phys_start)
               + (CACHE_LINE_SIZE - 1)) & ~(CACHE_LINE_SIZE - 1);
#if 0//def MMB_FLUSH_OPTIMIZE    
           switch (_IOC_NR(cmd)) {
               case _IOC_NR(IOC_MMB_FLUSH_DCACHE_DIRTY):
                   mmz_flush_dcache_mmb_dirty(&area);
                   break;                    
           }
#else
           mmz_flush_dcache_mmb_dirty(&area);
#endif
    } else if (_IOC_TYPE(cmd) == 't') {
        struct mmb_info mi;
        struct mmb_info *pmi;

        memset(&mi, 0, sizeof(mi));
        if (copy_from_user(&mi, (void*)arg, _IOC_SIZE(cmd)))
        {
            printk("\nmmz_userdev_ioctl: copy_from_user error.\n");
            ret = -EFAULT;
            goto __error_exit;
        } 
        if ( (pmi = get_mmbinfo_safe(mi.phys_addr, pmu)) == NULL) {
            ret = -EPERM;
            goto __error_exit;
        }
	ret = mmz_userdev_ioctl_t(file->f_dentry->d_inode, file, cmd, &mi);

    } else {
        ret = -EINVAL;
    }

__error_exit:
    up(&pmu->sem);
__rightnow_exit:        
    return ret;
}

int mmz_userdev_mmap(struct file *file, struct vm_area_struct *vma)
{

    struct mmz_userdev_info *pmu = file->private_data;
    unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
    int  map_cached = 0;

    if (current->pid != pmu->mmap_pid) {
        error("do not call mmap() yourself!\n");
        return -EPERM;
    }
#if MMB_MAP_OPTIMIZE
    if (pmu->mmap_mmz_total) {
        map_cached = pmu->mmaped_cached;
    }
    else
#endif        
    {
        struct mmb_info *p;
#if MMB_SHARE_SUPPORT
        p = get_mmbinfo_safe(offset, pmu);
#else
        p = get_mmbinfo(offset, pmu);
#endif
        if ( p == NULL) {
            error("I'm confused, mmb(0x%08lX) not found?!\n", offset);
            return -EPERM;
        }
        if (p->mapped) {
            error("I'm confused, mmb(0x%08lX) have been mapped yet?!\n", offset);
            return -EIO;
        }
        map_cached = p->map_cached?1:0;
    }

    if (offset >= PHYS_OFFSET && offset <  __pa(high_memory) ) {
        error("map address 0x%08lX in kernel range!\n", offset);
        return -EINVAL;
    }    

#if defined(pgprot_noncached)
    //printk( "--------------------%s.pgprot_noncached", __FUNCTION__);
    if (file->f_flags & O_SYNC) {
        vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
    } else {
        if (map_cached)
            vma->vm_page_prot = __pgprot(pgprot_val(vma->vm_page_prot) | L_PTE_PRESENT | L_PTE_YOUNG | L_PTE_DIRTY | L_PTE_WRITE | L_PTE_MT_DEV_CACHED);
        else
            vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
    }
#endif

    //printk("\n[%s, 0x%08lX, 0x%08lX,0x%08lX,0x%05lX]\n", __FUNCTION__, offset,vma->vm_start,vma->vm_end,vma->vm_pgoff);

    /* Remap-pfn-range will mark the range VM_IO and VM_RESERVED */
    if (remap_pfn_range(vma,
                vma->vm_start,
                vma->vm_pgoff,
                vma->vm_end-vma->vm_start,
                vma->vm_page_prot))
        return -EAGAIN;
    
    return 0;
}

int mmz_userdev_release(struct inode *inode, struct file *file)
{
    struct mmz_userdev_info *pmu;
    struct mmb_info *p, *n;
#if SUPPORT_DRV_MUTIOPEN
    struct process_dev_info *devInfo;
#endif

#if MMB_SHARE_SUPPORT
        struct mmb_info *pShare,*pn,*pNext;
#endif

    pmu = file->private_data;    
#if MMZ_MUTIOPEN_DEBUG   
    if(file->private_data == NULL ||  file == NULL )
    {
        printk( "[MMZ]:%s private_data is NULL\n", __FUNCTION__);
    }
    printk( "[MMZ]:%s----->Start.%d.%d.%d.%d.%d\n", __FUNCTION__,current->pid, pmu->pid, current->tgid, current->parent->pid, current->real_parent->pid);
#endif

#if SUPPORT_DRV_MUTIOPEN
    down(&pmu->sem);
    list_for_each_entry(devInfo, &process_dev_list, list) {
        //if(devInfo->pmu->pid == current->pid || devInfo->pmu->pid == current->tgid) {   
        if(devInfo->pmu->pid == current->pid || devInfo->pmu->pid == pmu->pid) {  
            devInfo->count--;
            if(devInfo->count > 0) {
#if MMZ_MUTIOPEN_DEBUG
                printk( "[MMZ]:%s----->End,not release all[%d, %d].%d\n", __FUNCTION__, devInfo->pmu->pid, devInfo->count, current->pid);
#endif                        
                //file->private_data = NULL;
                up(&pmu->sem);
                return 0;
            }      
#if MMZ_MUTIOPEN_DEBUG
            printk( "[MMZ]:%s.found in drv list [%d, %d].%d\n", __FUNCTION__, devInfo->pmu->pid, devInfo->count, current->pid);
#endif                                                                                                      
            break;
        }
    }    
#endif

#if 0//MMB_MAP_OPTIMIZE [confirmed]
//?????????/* we do not need to release mapped-area here, system will do it for us */
    if (pmu->mmaped_already){
           unsigned long addr,len;
        addr = (unsigned long)pmu->mmz_vm_start;
        len  = PAGE_ALIGN(pmu->mmz_info->nbytes);
        down_write(&current->mm->mmap_sem);
        do_munmap(current->mm, addr, len);
        up_write(&current->mm->mmap_sem);   
        pmu->mmaped_already = 0;
    }
#endif

    list_for_each_entry_safe(p, n, &pmu->list, list) {
        /*
        printk(KERN_ERR "MMB LEAK(pid=%d): 0x%08lX, %lu bytes, '%s'\n", \
                pmu->pid, hil_mmb_phys(p->mmb), \
                hil_mmb_length(p->mmb),
                hil_mmb_name(p->mmb));
        */
        /* we do not need to release mapped-area here, system will do it for us */
        /*
        if (p->mapped)
            printk(KERN_WARNING "mmz_userdev_release: mmb<0x%08lX> mapped to userspace 0x%p will be force unmaped!\n", p->phys_addr, p->mapped);
        */
        for (; p->mmb_ref > 0; p->mmb_ref--) {
            hil_mmb_put(p->mmb);
        }
        _usrdev_mmb_free(p,file);
    }

#if MMB_SHARE_SUPPORT
    list_for_each_entry_safe(p, n, &mmb_share_list, list) {        
        list_for_each_entry_safe(pShare, pn, &p->share_list, share_list) {
            //if ((pShare->pid == current->pid) || (pShare->pid == current->tgid) || (pShare->map_ref == 0 && pShare->mmb_ref == 0 && (!pShare->delayed_free))) {
            if ((pShare->pid == current->pid) || (pShare->pid == pmu->pid) || (pShare->map_ref == 0 && pShare->mmb_ref == 0 && (!pShare->delayed_free))) {
#if MMB_SHARE_DEBUG
                printk( "[MMZ]:%s.found in share list [0x%08lX, 0x%08lX].%d.%d\n", __FUNCTION__, pShare->phys_addr,pShare->size,pShare->pid, pmu->tgid);
#endif                                                                                          
                for (; pShare->mmb_ref > 0; pShare->mmb_ref--) {
                    hil_mmb_put(pShare->mmb);
                }             
                list_del(&pShare->share_list);
                kfree(pShare);                
            }            
        }    
        
        //if ((p->pid == current->pid) || (p->pid == current->tgid) ||(p->map_ref == 0 && p->mmb_ref == 0 && (!p->delayed_free))) {
        if ((p->pid == current->pid) || (p->pid == pmu->pid) ||(p->map_ref == 0 && p->mmb_ref == 0 && (!p->delayed_free))) {
            if(&p->share_list == p->share_list.next) {
                //only one in the same phy_addr list
#if MMB_SHARE_DEBUG
                printk( "[MMZ]:%s.delete one [0x%08lX, 0x%08lX].%d,%d\n", __FUNCTION__, p->phys_addr,p->size,p->pid, current->tgid);
#endif                  
                for (; p->mmb_ref > 0; p->mmb_ref--) {
                    hil_mmb_put(p->mmb);
                }
                _usrdev_mmb_free(p, file);                
            } else {
#if MMB_SHARE_DEBUG
                printk( "[MMZ]:%s.delete base [0x%08lX, 0x%08lX].%ld\n", __FUNCTION__, p->phys_addr,p->size,p->pid);
#endif                                                                                         
                pNext = list_entry(p->share_list.next, struct mmb_info, share_list);
                pNext->mmb_type = MMB_TYPE_BASE;
                list_add(&pNext->list, p->list.prev);
                list_del(&p->list);  
                
                for (; p->mmb_ref > 0; p->mmb_ref--) {
                    hil_mmb_put(p->mmb);
                }                    
                list_del(&p->share_list);                
                kfree(p);                 
            }
        }        
    }
#endif
#if SUPPORT_DRV_MUTIOPEN
    if ( &devInfo->list != &process_dev_list) {
#if MMZ_MUTIOPEN_DEBUG
        printk( "[MMZ]:%s.free drv info[%d, %d].%d\n", __FUNCTION__, devInfo->pmu->pid, devInfo->count, current->pid,current->tgid);
#endif                                                                                                                              
        list_del(&devInfo->list);
        kfree(devInfo);
    }
    up(&pmu->sem);
#endif
    kfree(pmu);
    file->private_data = NULL;
    pmu = NULL;
#if MMZ_MUTIOPEN_DEBUG
    printk( "[MMZ]:%s----->End\n", __FUNCTION__);
#endif
    return 0;
}

static struct file_operations mmz_userdev_fops = {
    .owner   = THIS_MODULE,
    .open    = mmz_userdev_open,
    .release = mmz_userdev_release,
    .unlocked_ioctl = mmz_userdev_ioctl,
    .mmap   = mmz_userdev_mmap,
};

/****************************proc**********************************/
#define MEDIA_MEM_NAME  "media-mem"
static int media_mem_proc_init(void)
{
#if !(0 == HI_PROC_SUPPORT)
    struct proc_dir_entry *p;

//    p = create_proc_entry(MEDIA_MEM_NAME, 0644, &proc_root);
    p = create_proc_entry(MEDIA_MEM_NAME, 0644,NULL); 
    if (p == NULL)
        return -1;
    p->read_proc = mmz_read_proc;
    p->write_proc = mmz_write_proc;
#endif

    return 0;
}

static void media_mem_proc_exit(void)
{
#if !(0 == HI_PROC_SUPPORT)
    remove_proc_entry(MEDIA_MEM_NAME, NULL);
#endif
}

/********************init**************************/
static PM_DEVICE_S mmz_userdev = {
    .minor    = HIMEDIA_DYNAMIC_MINOR,
    .name    = "mmz_userdev",
    .owner = THIS_MODULE,
    .app_ops= &mmz_userdev_fops 
};

int DRV_MMZ_ModInit(void)
{
    printk(KERN_INFO "Hisilicon Media Memory Zone Manager stage 1\n");

#ifndef HI_MCE_SUPPORT
    media_mem_init_0();
#endif
    media_mem_proc_init();
    HI_DRV_PM_Register(&mmz_userdev);

    return 0;
}

void DRV_MMZ_ModExit(void)
{
    HI_DRV_PM_UnRegister(&mmz_userdev);
    media_mem_proc_exit();
#ifndef HI_MCE_SUPPORT
    media_mem_exit_0();
#endif
}

#ifdef MODULE
module_init(DRV_MMZ_ModInit);
module_exit(DRV_MMZ_ModExit);
#endif

EXPORT_SYMBOL(DRV_MMZ_ModInit);
EXPORT_SYMBOL(DRV_MMZ_ModExit);


MODULE_LICENSE("GPL");
MODULE_AUTHOR("liu jiandong");

