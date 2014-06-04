/*
 * Copyright (c) (2011 - ...) digital media project platform development dept,
 * Hisilicon. All rights reserved.
 *
 * File: vdec.c
 *
 * Purpose: omx vdec driver funcs
 *
 * Author: y00226912
 *
 * Date: 16, 03, 2013
 *
 */
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/device.h>
#include <linux/file.h>
#include <linux/fs.h>
#include <linux/kref.h>
#include <linux/slab.h>
#include <linux/spinlock.h>
#include <linux/string.h>
#include <linux/freezer.h>
#include <linux/utsname.h>
#include <linux/uaccess.h>
#include <linux/platform_device.h>
#include <asm/io.h>
#include <linux/cdev.h>

#include "hi_drv_module.h"
#include "drv_omxvdec_ext.h"
#include "vdec.h"
#include "hisi_vdec.h"
#include "channel.h"

static const HI_CHAR driver_name []  = OMXVDEC_NAME;
static struct class* hivdec_class    = HI_NULL;
struct vdec_entry* the_vdec          = HI_NULL; 
static dev_t hivdec_devno;

/* HI_U32 vdec_trace_param = VDEC_TRACE_IOCTL | VDEC_TRACE_CALLS; */
/*HI_U32 vdec_trace_param = 4;
module_param_named(vdec_trace_param, vdec_trace_param, uint, S_IWUSR);
MODULE_PARM_DESC(vdec_trace_param, "trace flag for internal infomation");*/
/*
HI_U32 OmxTraceParam = (1<<OMX_FATAL)+(1<<OMX_ERR);
module_param_named(trace_param, OmxTraceParam, uint, S_IWUSR);
MODULE_PARM_DESC(OmxTraceParam, "trace flag for internal information");
*/

st_OmxFunc g_stOmxFunc = {0};

MODULE_DESCRIPTION("omx vdec driver");
MODULE_AUTHOR("y00226912, 2013-03-14");
MODULE_LICENSE("GPL");

static HI_S32 hivdec_open(struct inode *inode, struct file *fd);
static long hivdec_ioctl(struct file *fd, unsigned int code, unsigned long arg);
static HI_S32 hivdec_release(struct inode *inode, struct file *fd);
static HI_S32 __devinit hivdec_probe(struct platform_device * pltdev);
static HI_S32 hivdec_remove(struct platform_device *pltdev);
static HI_S32 hivdec_suspend(struct platform_device *pltdev, pm_message_t state);
static HI_S32 hivdec_resume(struct platform_device *pltdev);
static HI_VOID hivdec_platform_device_release(struct device* dev);

static const struct file_operations hivdec_fops = {
    
	.owner             = THIS_MODULE,
	.open              = hivdec_open,
	.unlocked_ioctl    = hivdec_ioctl,
	.release           = hivdec_release,
};

static struct platform_driver hivdec_driver = {

	.probe             = hivdec_probe,
	.remove            = hivdec_remove,

#ifdef CONFIG_PM
	.suspend           = hivdec_suspend,
	.resume            = hivdec_resume,
#endif
	.driver = {
	    .name          = (HI_PCHAR) driver_name,
	    .owner         = THIS_MODULE,
	},
};

static struct platform_device hivdec_device = {
    
	.name              = driver_name,
	.id                = -1,
    .dev = {
        .platform_data = NULL,
        .release       = hivdec_platform_device_release,
    },	
};

/* ==========================================================================
 * interface used with vfmw.
 * =========================================================================*/
typedef HI_S32 (*vfmw_event_handler)(HI_S32 chan_num, HI_S32 event_type, HI_VOID *pargs);

static inline HI_S32 vdec_init_with_vfmw(vfmw_event_handler handler)
{
	return (g_stOmxFunc.pVfmwFunc->pfnVfmwInit)(handler);
}

static inline HI_S32 vdec_exit_with_vfmw(HI_VOID)
{
	return (g_stOmxFunc.pVfmwFunc->pfnVfmwExit)();
}

/* ==========================================================================
 * interface used with vpss.
 * =========================================================================*/

static inline HI_S32 vdec_init_with_vpss(HI_VOID)
{
	return (g_stOmxFunc.pVpssFunc->pfnVpssGlobalInit)();
}

static inline HI_S32 vdec_exit_with_vpss(HI_VOID)
{
	return (g_stOmxFunc.pVpssFunc->pfnVpssGlobalDeInit)();
}

static HI_S32 hivdec_event_handler(HI_S32 chan_id, s32 event_type, HI_VOID *pargs)
{
	struct vdec_entry *vdec   = the_vdec;
	struct chan_ctx_s  *pchan = HI_NULL;
	HI_S32 ret                = -1;

	pchan = find_match_channel(vdec, chan_id);
	if (NULL == pchan) 
    {
        OmxPrint(OMX_FATAL, "%s can't find Chan(%d).\n", __func__, chan_id);
        return -1;
	}

	switch (event_type) 
    { 
       	/*case EVNT_FRMRATE_CHANGE:
       	{
       		HI_U32 *ptemp = NULL;
       		HI_U32 frame_rate;
            
       		if (!pargs)
            {
                break;
            }
       
       		ptemp = pargs;
       		frame_rate = ptemp[0];
            
       		ret = channel_handle_framerate_changed(pchan, frame_rate);
       		break;
       	}*/

		case EVNT_LAST_FRAME:
        {
            HI_U32 *ptemp = NULL;
            
            OmxPrint(OMX_INFO, "Get Last Frame Report!\n");
            if (!pargs)
            {
                break;
            }
            
            /* pargs[0]-> 0: success, 1: fail,  2+: report last frame image id */
            ptemp = pargs;
            if (REPORT_LAST_FRAME_FAIL != ptemp[0])
            {
                pchan->last_frame_flag[0] = VFMW_REPORT_LAST_FRAME;
                pchan->last_frame_flag[1] = ptemp[0];
                OmxPrint(OMX_INFO, "Last Image report: %d %d\n", pchan->last_frame_flag[0], pchan->last_frame_flag[1]);
            }
            else 
            {
                OmxPrint(OMX_ERR, "Last frame report failed!\n");
            }
            break;
        }
       
       	default:
        {
            //OmxPrint(OMX_INFO, "\nUnsupport Event Type: 0x%4.4x, arg=%p\n", event_type, pargs);
            break;
        }
	}

	return ret;
}

/* ==========================================================================
 * get correct channel context,now is not based on prior!
 * =========================================================================*/
HI_U32 get_channel_num(struct vdec_entry *vdec)
{
	HI_U32 chan_num = 0;
    
	if (!vdec) 
    {
        OmxPrint(OMX_FATAL, "%s: vdec = NULL\n", __func__);
		return -EINVAL;
	}
	
	if (vdec->total_chan_num >= MAX_CHAN_NUM) 
    {
        OmxPrint(OMX_FATAL, "%s: total_chan_num(%d) invalid\n", __func__, vdec->total_chan_num);
		return -EINVAL;
	}

	/*chan_num = find_next_zero_bit(&vdec->chan_bitmap, MAX_CHAN_NUM, 0);

	if (chan_num >= MAX_CHAN_NUM) 
    {
        OmxPrint(OMX_FATAL, "%s: can't find a valid chan num\n", __func__);
        return -EBUSY;
	}

	set_bit(chan_num, &vdec->chan_bitmap);*/
	
    vdec->total_chan_num += 1;
    
	return chan_num;
}


HI_VOID release_channel_num(struct vdec_entry *vdec, HI_S32 chan_num)
{
	if (!vdec || chan_num < 0 || chan_num > MAX_CHAN_NUM)
    {   
        OmxPrint(OMX_FATAL, "%s: vdec = NULL / chan_num(%d) invalid\n", __func__, chan_num);
		return;
    }

    /*if (!test_bit(chan_num, &vdec->chan_bitmap))
    {
        OmxPrint(OMX_FATAL, "%s: chan_num(%d) is not set\n", __func__, chan_num);
        return;
    }

	clear_bit(chan_num, &vdec->chan_bitmap);*/
	
    vdec->total_chan_num -= 1;
}


struct chan_ctx_s *find_match_channel(struct vdec_entry *vdec, HI_S32 chan_num)
{
	struct chan_ctx_s *pchan = NULL;
	unsigned long flags;

	if (!vdec || chan_num < 0 || chan_num > MAX_CHAN_NUM)
    {   
        OmxPrint(OMX_FATAL, "%s: vdec = NULL / chan_num(%d) invalid\n", __func__, chan_num);
        return NULL;
    }

	spin_lock_irqsave(&vdec->channel_lock, flags);
	if (!list_empty(&vdec->chan_list)) 
    {
        list_for_each_entry(pchan, &vdec->chan_list, chan_list)
        {      
            if(pchan->chan_id == chan_num)
            {         
                break;
            }
        }
    }
	spin_unlock_irqrestore(&vdec->channel_lock, flags);

	return pchan;
}


struct chan_ctx_s *find_match_channel_by_vpssid(struct vdec_entry *vdec, HI_S32 VpssId)
{
	unsigned long flags;
	struct chan_ctx_s *pchan = NULL;

	if (!vdec || VpssId < 0 || VpssId > MAX_VPSS_NUM)
    {   
        OmxPrint(OMX_FATAL, "%s: vdec = NULL / VpssId(%d) invalid\n", __func__, VpssId);
        return NULL;
    }

	spin_lock_irqsave(&vdec->channel_lock, flags);
	if (!list_empty(&vdec->chan_list)) 
    {
        list_for_each_entry(pchan, &vdec->chan_list, chan_list)
        {      
            if(pchan->hVpss == VpssId)
            {         
                break;
            }
        }
    }
	spin_unlock_irqrestore(&vdec->channel_lock, flags);

	return pchan;
}


static HI_S32 hivdec_free_resource(struct chan_ctx_s *pchan)
{
       HI_S32 ret;

       ret = channel_free_resource(pchan);
       if (0 != ret)
       {
           OmxPrint(OMX_FATAL, "%s call channel_free_resource failed\n", __func__);
           return -EFAULT;
       }

       return 0;
}

/* ==========================================================================
 * vdec device mode
 * =========================================================================*/
static HI_S32 hivdec_setup_cdev(struct vdec_entry *vdec, const struct file_operations *fops)
{
	HI_S32 rc = -ENODEV;
	struct device *dev;

	hivdec_class = class_create(THIS_MODULE, "hivdec_class");
	if (IS_ERR(hivdec_class)) 
    {
        rc = PTR_ERR(hivdec_class);
        OmxPrint(OMX_FATAL, "%s call class_create failed, rc = %d\n", __func__, rc);
		return rc;
	}
    
	rc = alloc_chrdev_region(&hivdec_devno, 0, 1, "hisi video decoder");
	if (rc) 
    {
        OmxPrint(OMX_FATAL, "%s call alloc_chrdev_region failed, rc = %d\n", __func__, rc);
		goto cls_destroy;
	}

	dev = device_create(hivdec_class, NULL, hivdec_devno, NULL, OMXVDEC_NAME);
	if (IS_ERR(dev)) 
    {
        rc = PTR_ERR(dev);
        OmxPrint(OMX_FATAL, "%s call device_create failed, rc = %d\n", __func__, rc);
		goto unregister_region;
	}

	cdev_init(&vdec->cdev, fops);
	vdec->cdev.owner = THIS_MODULE;
	vdec->cdev.ops = fops;
	rc = cdev_add(&vdec->cdev, hivdec_devno , 1);
	if (rc < 0) 
    {
        OmxPrint(OMX_FATAL, "%s call cdev_add failed, rc = %d\n", __func__, rc);
		goto dev_destroy;
	}

	return 0;

dev_destroy:
	device_destroy(hivdec_class, hivdec_devno);
unregister_region:
	unregister_chrdev_region(hivdec_devno, 1);
cls_destroy:
	class_destroy(hivdec_class);
    
	return rc;
}

static HI_S32 hivdec_cleanup_cdev(struct vdec_entry *vdec)
{
	cdev_del(&vdec->cdev);
	device_destroy(hivdec_class, hivdec_devno);
	unregister_chrdev_region(hivdec_devno, 1);
	class_destroy(hivdec_class);

	return 0;
}


/* ==========================================================================
 * HI_CHAR device ops functions
 * =========================================================================*/
static HI_S32 hivdec_open(struct inode *inode, struct file *fd)
{
	HI_S32  ret = -EBUSY;
	unsigned long	 flags;
	struct vdec_entry	*vdec;

	OmxPrint(OMX_TRACE, "omx vdec prepare to open.\n");
    
	vdec = container_of(inode->i_cdev, struct vdec_entry, cdev);

	spin_lock_irqsave(&vdec->lock, flags);
	if (vdec->open_count < MAX_OPEN_COUNT)
    {
        vdec->open_count++;
        if (1 == vdec->open_count)
        {
           spin_unlock_irqrestore(&vdec->lock, flags);
           g_stOmxFunc.pVfmwFunc = HI_NULL;
           g_stOmxFunc.pVpssFunc = HI_NULL;
           
           /* Get vfmw functions */
           ret = HI_DRV_MODULE_GetFunction(HI_ID_VFMW, (HI_VOID**)&g_stOmxFunc.pVfmwFunc);
           if ((HI_SUCCESS != ret)
              || (HI_NULL == g_stOmxFunc.pVfmwFunc)
              || (HI_NULL == g_stOmxFunc.pVfmwFunc->pfnVfmwInit)
              || (HI_NULL == g_stOmxFunc.pVfmwFunc->pfnVfmwInitWithOperation)
              || (HI_NULL == g_stOmxFunc.pVfmwFunc->pfnVfmwExit)
              || (HI_NULL == g_stOmxFunc.pVfmwFunc->pfnVfmwControl)
              || (HI_NULL == g_stOmxFunc.pVfmwFunc->pfnVfmwSuspend)
              || (HI_NULL == g_stOmxFunc.pVfmwFunc->pfnVfmwResume)
              || (HI_NULL == g_stOmxFunc.pVfmwFunc->pfnVfmwSetDbgOption))
           {
               OmxPrint(OMX_FATAL, "Get vfmw function err!\n");
               goto error;
           }
           
           /*Get vpss functions*/
           ret = HI_DRV_MODULE_GetFunction(HI_ID_VPSS, (HI_VOID**)&g_stOmxFunc.pVpssFunc);
           if (HI_SUCCESS != ret || HI_NULL == g_stOmxFunc.pVpssFunc)
           {
               OmxPrint(OMX_FATAL, "Get vpss function err:%#x!\n", ret);
               goto error;
           }
           
           ret = vdec_init_with_vfmw(hivdec_event_handler);
           if(ret < 0) 
           {
               OmxPrint(OMX_FATAL, "%s call vdec_init_with_vfmw failed!\n", __func__);
               goto error;
           }
           
           ret = vdec_init_with_vpss();
           if(ret < 0) 
           {
               OmxPrint(OMX_FATAL, "%s call vdec_init_with_vpss failed!\n", __func__);
               goto error1;
           }
           
           spin_lock_irqsave(&vdec->lock, flags);
        }
        
        fd->private_data = vdec;
        
        OmxPrint(OMX_TRACE, "omx vdec open ok.\n");
        
        ret = 0;
	}
    else 
    {
        OmxPrint(OMX_FATAL, "%s open vdec instance too much! \n", __func__);
		ret = -EBUSY;
	}
	spin_unlock_irqrestore(&vdec->lock, flags);

	return ret;

error1:
    vdec_exit_with_vfmw();
error:
    vdec->open_count--;
    return ret;
    
}

static HI_S32 hivdec_release(struct inode *inode, struct file *fd)
{
	unsigned long  flags;
	struct vdec_entry	*vdec  = HI_NULL;
	struct chan_ctx_s *pchan   = HI_NULL;
	struct chan_ctx_s *n       = HI_NULL;

	OmxPrint(OMX_TRACE, "omx vdec prepare to release.\n");
    
    vdec = fd->private_data;
    if (NULL == vdec)
    {
	    OmxPrint(OMX_FATAL, "%s: vdec = null, error!\n", __func__);
	    return -EFAULT;
    }

	spin_lock_irqsave(&vdec->channel_lock, flags);
	if (!list_empty(&vdec->chan_list)) 
    {
		list_for_each_entry_safe(pchan, n, &vdec->chan_list, chan_list)
        {
             if((pchan->file_id == (HI_U32)fd) && (CHAN_STATE_INVALID != pchan->state))
             {      
                 spin_unlock_irqrestore(&vdec->channel_lock, flags);
                 hivdec_free_resource(pchan);                          
                 spin_lock_irqsave(&vdec->channel_lock, flags);
             }
        }
	}
	spin_unlock_irqrestore(&vdec->channel_lock, flags);

	spin_lock_irqsave(&vdec->lock, flags);
	if(vdec->open_count > 0)
    {   
        vdec->open_count--;
        if(0 == vdec->open_count)
        {
            spin_unlock_irqrestore(&vdec->lock, flags);
            vdec_exit_with_vpss();
            vdec_exit_with_vfmw();
            g_stOmxFunc.pVfmwFunc = HI_NULL;
            g_stOmxFunc.pVpssFunc = HI_NULL;
            spin_lock_irqsave(&vdec->lock, flags);
        }
    }
       
	fd->private_data = NULL;
	spin_unlock_irqrestore(&vdec->lock, flags);
    
	OmxPrint(OMX_TRACE, "omx vdec release ok.\n");
    
	return 0;
}


static long hivdec_ioctl(struct file *fd, unsigned int code, unsigned long arg)
{
	HI_S32 status = 0;
	struct vdec_ioctl_msg vdec_msg;
	struct vdec_user_buf_desc user_buf;
   
	struct chan_ctx_s *pchan = NULL;
	HI_VOID __user *u_arg = (HI_VOID __user *)arg;
	struct vdec_entry	*vdec = fd->private_data;


	if (copy_from_user(&vdec_msg, u_arg, sizeof(vdec_msg))) 
    {
        OmxPrint(OMX_FATAL, "%s call copy_from_user failed! \n", __func__);
        return -EFAULT;
	}

	if (code != VDEC_IOCTL_CHAN_CREATE) 
    {
        HI_S32 chan_num = vdec_msg.chan_num;
        if (chan_num < 0) 
        {
            OmxPrint(OMX_FATAL, "%s Invalid Chan Num: %d.\n", __func__, chan_num);
            return -EINVAL;
        }
        
        pchan = find_match_channel(vdec, chan_num);
        if (NULL == pchan) 
        {
            OmxPrint(OMX_WARN, "%s can't find Chan(%d).\n", __func__, chan_num);
            return -1;
        }
    }

	/* handle ioctls */
	switch (code)
    {
	/* when alloc buffer in omx ,we need to sync it with vdec, because the buffer is share with omx
	 & player & driver, here we use a input/output buf table to record its info */

         case VDEC_IOCTL_CHAN_BIND_BUFFER:
         {
             if (!pchan->ops || !pchan->ops->bind_buffer)
             {      
                 OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
                 return -EFAULT;
             }
             
             if (copy_from_user(&user_buf, vdec_msg.in, sizeof(user_buf))) 
             {
                 OmxPrint(OMX_FATAL, "%s(), l%d: case call copy_from_user failed!\n", __func__, __LINE__);
                 return -EIO;
             }
             
             status  = pchan->ops->bind_buffer(pchan, &user_buf);
             if (status < 0) 
             {
                 OmxPrint(OMX_FATAL, "%s(), l%d: case call bind_buffer failed!\n", __func__, __LINE__);
                 return -EFAULT;
             }
         }
         break;

	case VDEC_IOCTL_CHAN_UNBIND_BUFFER:
	{
		if (!pchan->ops || !pchan->ops->unbind_buffer)
        {      
            OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
            return -EFAULT;
        }

		if (copy_from_user(&user_buf, vdec_msg.in, sizeof(user_buf)))
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call copy_from_user failed!\n", __func__, __LINE__);
            return -EIO;
		}

		status  = pchan->ops->unbind_buffer(pchan, &user_buf);
		if (status < 0) 
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call unbind_buffer failed!\n", __func__, __LINE__);
            return -EFAULT;
		}
	}
	break;

	case VDEC_IOCTL_EMPTY_INPUT_STREAM:
	{
		if (!pchan->ops || !pchan->ops->empty_stream)
        {      
            OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
            return -EFAULT;
        }

		if (copy_from_user(&user_buf, vdec_msg.in, sizeof(user_buf))) 
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call copy_from_user failed!\n", __func__, __LINE__);
            return -EIO;
		}

		status  = pchan->ops->empty_stream(pchan, &user_buf);
		if (status < 0) 
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call empty_stream failed!\n", __func__, __LINE__);
            return -EFAULT;
		}
	}
	break;

	case VDEC_IOCTL_FILL_OUTPUT_FRAME:
	{
		if (!pchan->ops || !pchan->ops->fill_frame)
        {      
            OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
            return -EFAULT;
        }

		if (copy_from_user(&user_buf, vdec_msg.in, sizeof(user_buf))) 
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call copy_from_user failed!\n", __func__, __LINE__);
            return -EIO;
		}

		status  = pchan->ops->fill_frame(pchan, &user_buf);
		if (status < 0) 
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call fill_frame failed!\n", __func__, __LINE__);
            return -EFAULT;
		}
	}
	break;

	case VDEC_IOCTL_FLUSH_PORT:
	{
		enum vdec_port_dir flush_dir;

		if (!pchan->ops || !pchan->ops->flush_port)
        {      
            OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
            return -EFAULT;
        }

		if (copy_from_user(&flush_dir, vdec_msg.in, sizeof(flush_dir)))
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call copy_from_user failed!\n", __func__, __LINE__);
            return -EFAULT;
		}

		status  = pchan->ops->flush_port(pchan, flush_dir);
		if (status < 0) 
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call flush_port failed!\n", __func__, __LINE__);
            return -EFAULT;
		}
	}
	break;

	case VDEC_IOCTL_CHAN_GET_MSG:
	{
		struct vdec_msginfo msg;

		if (HI_NULL == pchan->ops)
		{
            OmxPrint(OMX_FATAL, "%s(), L%d: case condition invalid! ops = NULL\n", __func__, __LINE__);
            return -EFAULT;
        }
        if (HI_NULL == pchan->ops->get_msg)
        {      
            OmxPrint(OMX_FATAL, "%s(), L%d: case condition invalid! get_msg = NULL\n", __func__, __LINE__);
            return -EFAULT;
        }

		status  = pchan->ops->get_msg(pchan, &msg);
        if (status != HI_SUCCESS)
        {
            if (status == -EAGAIN) 
            {
                OmxPrint(OMX_INFO, "%s(), L%d: no msg found, try again.\n", __func__, __LINE__); 
                return -EAGAIN;
            }
            else
            {
                OmxPrint(OMX_WARN, "%s(), L%d: get msg error!\n", __func__, __LINE__);
                return -EFAULT;
            }
        }
        
        if (copy_to_user(vdec_msg.out, &msg, sizeof(msg)))
        {
            OmxPrint(OMX_FATAL, "%s(), L%d: case call copy_from_user failed!\n", __func__, __LINE__);
            return -EIO;
        }
	}
	break;
/*
	case VDEC_IOCTL_CHAN_STOP_MSG:   // ²»Ê¹ÓÃ
	{
		if (!pchan->ops || !pchan->ops->stop_msg )
        {      
            OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
            return -EFAULT;
        }

		pchan->ops->stop_msg(pchan);
	}
	break;
*/
	case VDEC_IOCTL_CHAN_PAUSE:
	{
		if (!pchan->ops || !pchan->ops->pause) 
        {      
            OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
            return -EFAULT;
        }

		status = pchan->ops->pause(pchan);
		if (status < 0)
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call pause failed!\n", __func__, __LINE__);
            return -EFAULT;
        }

	}
	break;

	case VDEC_IOCTL_CHAN_RESUME:
	{
		if (!pchan->ops || !pchan->ops->resume) 
        {      
            OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
            return -EFAULT;
        }

		status = pchan->ops->resume(pchan);
		if (status < 0)
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call resume failed!\n", __func__, __LINE__);
            return -EFAULT;
        }

	}
	break;

	case VDEC_IOCTL_CHAN_START:
	{
		if (!pchan->ops || !pchan->ops->start) 
        {      
            OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
            return -EFAULT;
        }

		status = pchan->ops->start(pchan);
		if (status < 0)
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call start failed!\n", __func__, __LINE__);
            return -EFAULT;
        }

	}
	break;

	case VDEC_IOCTL_CHAN_STOP:
	{
        if (!pchan->ops || !pchan->ops->stop) 
        {      
            OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
            return -EFAULT;
        }

		status = pchan->ops->stop(pchan);
		if (status < 0)
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call stop failed!\n", __func__, __LINE__);
            return -EFAULT;
        }
	}
	break;

	case VDEC_IOCTL_CHAN_CREATE:
	{
		driver_cfg chan_cfg;
        
		if (copy_from_user(&chan_cfg, vdec_msg.in, sizeof(driver_cfg)))
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call copy_from_user failed!\n", __func__, __LINE__);
			return -EFAULT;
        }

		status = channel_init(fd, &chan_cfg);
		if (status < 0) 
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call channel_init failed!\n", __func__, __LINE__);
			return -EFAULT;
		}

		if (copy_to_user(vdec_msg.out, &status, 4))
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call copy_from_user failed!\n", __func__, __LINE__);
            return -EIO;
        }
	}
	break;

	case VDEC_IOCTL_CHAN_RELEASE:
	{
        if (!pchan->ops || !pchan->ops->release) 
        {      
            OmxPrint(OMX_FATAL, "%s(), l%d: case condition invalid!\n", __func__, __LINE__);
            return -EFAULT;
        }

		status = pchan->ops->release(pchan);
		if (status < 0)
        {
            OmxPrint(OMX_FATAL, "%s(), l%d: case call release failed!\n", __func__, __LINE__);
            return -EFAULT;
        }
	}
	break;

	default:
        /* could not handle ioctl */
        OmxPrint(OMX_FATAL, "%s(), l%d: ERROR cmd=0x%4.4x is not supported!\n", __func__, __LINE__, code);
        return -ENOTTY;

	}

	return HI_SUCCESS;
}


static HI_S32 __devinit hivdec_probe(struct platform_device * pltdev)
{
	HI_S32 ret = 0;
	struct vdec_entry *vdec = HI_NULL;

	OmxPrint(OMX_TRACE, "omx vdec prepare to probe.\n");
    
	vdec = kzalloc(sizeof(struct vdec_entry), GFP_KERNEL);
	if (!vdec) 
    {
        OmxPrint(OMX_FATAL, "%s() call kzalloc failed!\n", __func__);
		return -ENOMEM;
	}

	INIT_LIST_HEAD(&vdec->chan_list);
	spin_lock_init(&vdec->lock); 
	spin_lock_init(&vdec->channel_lock);

	ret = hivdec_setup_cdev(vdec, &hivdec_fops);
	if(ret < 0) 
    {
        OmxPrint(OMX_FATAL, "%s() call hivdec_setup_cdev failed!\n", __func__);
		goto cleanup;
	}

	vdec->device = &pltdev->dev;
	platform_set_drvdata(pltdev,vdec);
	the_vdec = vdec;

	OmxPrint(OMX_TRACE, "omx vdec probe ok.\n");
    
	return 0;
    
cleanup:
	kfree(vdec);
    
	return ret;
}

static HI_S32 hivdec_remove(struct platform_device *pltdev)
{
	struct vdec_entry *vdec;

	OmxPrint(OMX_TRACE, "omx vdec prepare to remove.\n");
    
	vdec = platform_get_drvdata(pltdev);
	hivdec_cleanup_cdev(vdec);
	platform_set_drvdata(pltdev,NULL);
	kfree(vdec);
	the_vdec = NULL;

	OmxPrint(OMX_TRACE, "omx vdec remove ok.\n");
    
	return 0;
}

#ifdef CONFIG_PM
static HI_S32 hivdec_suspend(struct platform_device *pltdev,	pm_message_t state)
{
	return 0;
}

static HI_S32 hivdec_resume(struct platform_device *pltdev)
{
	return 0;
}
#endif

static HI_VOID hivdec_platform_device_release(struct device* dev){}


HI_S32 OMXVDEC_DRV_ModInit(HI_VOID)
{
    HI_S32 ret;

    ret = platform_device_register(&hivdec_device);
    if(ret < 0)
    {  
        OmxPrint(OMX_FATAL, "%s call platform_device_register failed!\n", __func__); 
        return ret;
    }
    
    ret = platform_driver_register(&hivdec_driver);
    if(ret < 0)
    {
        OmxPrint(OMX_FATAL, "%s call platform_driver_register failed!\n", __func__);    
        goto exit;
    }
	
#ifndef HI_ADVCA_FUNCTION_RELEASE
    ret = channel_proc_init();
    if (HI_SUCCESS != ret)
    {
        OmxPrint(OMX_FATAL, "OMXVDEC Reg proc fail:%#x!\n", ret); 
        goto exit1;
    }

#ifdef MODULE
	HI_PRINT("Load hi_omxvdec.ko success.\t(%s)\n", VERSION_STRING);
#endif
#endif

	return HI_SUCCESS;
    
exit1:   
	platform_driver_unregister(&hivdec_driver);
exit:
	platform_device_unregister(&hivdec_device);
    
	return ret;
}

HI_VOID OMXVDEC_DRV_ModExit(HI_VOID)
{
	platform_driver_unregister(&hivdec_driver);
	platform_device_unregister(&hivdec_device);
	
#ifndef HI_ADVCA_FUNCTION_RELEASE
    channel_proc_exit(); 

#ifdef MODULE
    HI_PRINT("Unload hi_omxvdec.ko success.\t(%s)\n", VERSION_STRING);
#endif
#endif

}


#ifdef MODULE
module_init(OMXVDEC_DRV_ModInit);
module_exit(OMXVDEC_DRV_ModExit);
#endif



