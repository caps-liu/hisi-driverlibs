/******************************************************************************

  Copyright (C), 2014-2020, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpg_osr.c
Version		    : Initial Draft
Author		    : 
Created		    : 2013/07/01
Description	    : 
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2013/07/01		    y00181162  		    Created file      	
******************************************************************************/



/*********************************add include here******************************/
#include <linux/module.h>
#include <linux/init.h>
#include <linux/moduleparam.h>
#include <linux/sched.h>
#include <linux/kernel.h>
#include <linux/types.h>
#include <linux/fs.h>
#include <linux/miscdevice.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/ioctl.h>
#include <linux/delay.h>
#include <linux/fs.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/spinlock.h>
#include <linux/mm.h>
#include <linux/stddef.h>
#include <linux/fcntl.h>
#include <linux/slab.h>
#include <asm/atomic.h>
#include <asm/bitops.h>
#include <asm/system.h>
#include <asm/io.h>
#include <asm/uaccess.h>
#include <asm/pgtable.h>

#include "hi_jpeg_config.h"
#include "hi_gfx_comm_k.h"
#include "hi_jpeg_hal_api.h"
#include "hi_drv_jpeg_reg.h"
#include "jpg_hal.h"
#include "jpg_suspend.h"

#include "hi_type.h"

#ifdef CONFIG_JPEG_PROC_ENABLE
	#include "jpg_proc.h"
#endif

#ifdef CONFIG_JPEG_USE_SDK_CRG_ENABLE
#include "hi_reg_common.h"
#include "hi_drv_reg.h"
#endif

/***************************** Macro Definition ******************************/


/** module register name */
/** CNcomment:向SDK注册模块名 */
#define JPEGNAME                  "hi_jpeg_irq"
#define JPEGDEVNAME               "jpeg"


/*************************** Structure Definition ****************************/


/** jpeg device imformation */
/** CNcomment:jpeg设备信息 */
typedef struct hiJPG_OSRDEV_S
{

	HI_BOOL bSuspendSignal;      /**< whether get suspend signal  *//**<CNcomment:获取待机信号       */
	HI_BOOL bResumeSignal;	       /**< whether get resume signal   *//**<CNcomment:获取待机唤醒信号  */
	HI_BOOL bEngageFlag;          /**< whether be occupied, HI_TRUE if be occupied */
	HI_BOOL bDecTask;             /**< whether have jpeg dec task   *//**<CNcomment:是否有jpeg解码任务  */
    struct semaphore   SemGetDev; /**< protect the device to occupy the operation singnal */
    struct file        *pFile;
    JPG_INTTYPE_E      IntType;    /**< lately happened halt type  */
    wait_queue_head_t  QWaitInt;   /**< waite halt queue           */

}JPG_OSRDEV_S;



/** dispose close device */
/** CNcomment:关设备处理 */
typedef struct hiJPG_DISPOSE_CLOSE_S
{

     HI_S32 s32SuspendClose;
     HI_S32 s32DecClose;
     HI_BOOL bOpenUp;
     HI_BOOL bSuspendUp;
     HI_BOOL bRealse;

}JPG_DISPOSE_CLOSE_S;


/********************** Global Variable declaration **************************/

extern HI_JPEG_PROC_INFO_S s_stJpeg6bProcInfo;

/** read or write register value */
/** CNcomment: 读或写寄存器的值 */
static volatile HI_U64  sg_u64RegValue     = 0;
#ifndef CONFIG_JPEG_USE_SDK_CRG_ENABLE
static volatile HI_U32  *s_pJpegCRG     = HI_NULL;
#endif
static volatile HI_U32  *s_pJpegRegBase = HI_NULL;
static JPG_OSRDEV_S *s_pstruJpgOsrDev   = HI_NULL;

HI_GFX_DECLARE_MUTEX(s_JpegMutex);      /**< dec muxtex     *//**<CNcomment:解码多线程保护 */
HI_GFX_DECLARE_MUTEX(s_SuspendMutex);   /**< suspend muxtex *//**<CNcomment:待机多线程保护 */

/******************************* API forward declarations *******************/
static HI_S32 jpg_osr_open(struct inode *inode, struct file *file);
static HI_S32 jpg_osr_close( struct inode *inode, struct file *file);
static HI_S32 jpg_osr_mmap(struct file * filp, struct vm_area_struct *vma);
static HI_S32 jpg_osr_suspend(PM_BASEDEV_S *pdev, pm_message_t state);
static HI_S32 jpg_osr_resume(PM_BASEDEV_S *pdev);
static long jpg_osr_ioctl(struct file *file, HI_U32 Cmd, unsigned long Arg);


DECLARE_GFX_NODE(JPEGDEVNAME,jpg_osr_open, jpg_osr_close,jpg_osr_mmap,jpg_osr_ioctl,jpg_osr_suspend, jpg_osr_resume);

/******************************* API realization *****************************/


/***************************************************************************************
* func			: jpg_do_cancel_reset
* description	: cancel reset jpeg register
				  CNcomment: 测消复位 CNend\n
* param[in] 	: HI_VOID
* retval		: NA
* others:		: NA
***************************************************************************************/
static HI_VOID jpg_do_cancel_reset(HI_VOID)
{
#ifdef CONFIG_JPEG_USE_SDK_CRG_ENABLE
		volatile U_PERI_CRG31 unTempValue;

		unTempValue.u32 = g_pstRegCrg->PERI_CRG31.u32;
		/** no reset, */
		/** CNcomment:不复位,要是一直处于复位状态,jpeg是无法工作的，第四bit写0 */
		#if defined(CONFIG_CHIP_3716CV200_VERSION) || defined(CONFIG_CHIP_3719CV100_VERSION) || defined(CONFIG_CHIP_3718CV100_VERSION) || defined(CONFIG_CHIP_3719MV100_A_VERSION)
		unTempValue.bits.jpgd_srst_req  = 0x0;
		#elif defined(CONFIG_CHIP_S40V200_VERSION)
		unTempValue.bits.jpgd0_srst_req = 0x0;
		#endif

		g_pstRegCrg->PERI_CRG31.u32 = unTempValue.u32;
#else
		volatile HI_U32* pResetAddr = NULL;

		pResetAddr   = s_pJpegCRG;

		/** no reset */
		/** CNcomment:不复位,要是一直处于复位状态,jpeg是无法工作的 */
		*pResetAddr &= JPGD_UNRESET_REG_VALUE;
#endif
}

/***************************************************************************************
* func			: jpg_do_reset
* description	: reset jpeg register
				  CNcomment: 复位 CNend\n
* param[in] 	: HI_VOID
* retval		: NA
* others:		: NA
***************************************************************************************/
static HI_VOID jpg_do_reset(HI_VOID)
{
#ifdef CONFIG_JPEG_USE_SDK_CRG_ENABLE
		volatile HI_U32* pBusyAddr = NULL;
		volatile U_PERI_CRG31 unTempValue;

		pBusyAddr	 = s_pJpegRegBase;

		unTempValue.u32 = g_pstRegCrg->PERI_CRG31.u32;
		/** when dec finish, should reset to dec next jpeg steam */
		/** CNcomment:当解码完成之后要进行复位,进行下一帧解码,第四bit写1 */
		#if defined(CONFIG_CHIP_3716CV200_VERSION) || defined(CONFIG_CHIP_3719CV100_VERSION) || defined(CONFIG_CHIP_3718CV100_VERSION) || defined(CONFIG_CHIP_3719MV100_A_VERSION)
		unTempValue.bits.jpgd_srst_req  = 0x1;
		#elif defined(CONFIG_CHIP_S40V200_VERSION)
		unTempValue.bits.jpgd0_srst_req = 0x1;
		#endif
		g_pstRegCrg->PERI_CRG31.u32 = unTempValue.u32;

		/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		[31:2]	reserve 	   : 保留
		[1]		whether reset  : 是否复位标志
		0: has reset   : 已经复位
		1: no reset    : 没有复位
		[0]		start decode   : JPEG解码启动寄存器
		1: startup dec : 启动JPEG进行解码，解码启动后，此寄存器会自动清0。
		++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

		/** when reset,should cancle reset */
		/** CNcomment:如果已经复位了则撤消复位,这样就能进行下一帧解码了 */
		while (*pBusyAddr & 0x2)
		{	
		/*nothing to do!*/
		}
		/** the 4 bit write 0 */
		/** CNcomment:第4bit写0不复位,0x10是第4bit，哪个bit就是在那个地方为1 */
		unTempValue.u32 = g_pstRegCrg->PERI_CRG31.u32;
		#if defined(CONFIG_CHIP_3716CV200_VERSION) || defined(CONFIG_CHIP_3719CV100_VERSION) || defined(CONFIG_CHIP_3718CV100_VERSION) || defined(CONFIG_CHIP_3719MV100_A_VERSION)
		unTempValue.bits.jpgd_srst_req  = 0x0;
		#elif defined(CONFIG_CHIP_S40V200_VERSION)
		unTempValue.bits.jpgd0_srst_req = 0x0;
		#endif
		g_pstRegCrg->PERI_CRG31.u32 = unTempValue.u32;	
#else
		volatile HI_U32* pResetAddr = NULL;
		volatile HI_U32* pBusyAddr = NULL;

		pResetAddr   = s_pJpegCRG;
		pBusyAddr    = s_pJpegRegBase;

		*pResetAddr |= JPGD_RESET_REG_VALUE;

		while (*pBusyAddr & 0x2)
		{	
		/*nothing to do!*/
		}
		*pResetAddr &= JPGD_UNRESET_REG_VALUE;

#endif
}

/***************************************************************************************
* func			: jpg_do_clock_off
* description	: close the jpeg clock
				  CNcomment: 关闭jpeg时钟 CNend\n
* param[in] 	: HI_VOID
* retval		: NA
* others:		: NA
***************************************************************************************/
static HI_VOID jpg_do_clock_off(HI_VOID)
{
#ifdef CONFIG_JPEG_USE_SDK_CRG_ENABLE
		volatile U_PERI_CRG31 unTempValue;

		unTempValue.u32 = g_pstRegCrg->PERI_CRG31.u32;
		/** the 0 bit write 0 */
		/** CNcomment:第0bit写0 ，0x0 & 0x1 = 0 */
		#if defined(CONFIG_CHIP_3716CV200_VERSION) || defined(CONFIG_CHIP_3719CV100_VERSION) || defined(CONFIG_CHIP_3718CV100_VERSION) || defined(CONFIG_CHIP_3719MV100_A_VERSION)
		unTempValue.bits.jpgd_cken = 0x0;
		#elif defined(CONFIG_CHIP_S40V200_VERSION)
		unTempValue.bits.jpgd0_cken = 0x0;
		#endif
		g_pstRegCrg->PERI_CRG31.u32 = unTempValue.u32;

#else
		volatile HI_U32* pResetAddr = NULL;
		pResetAddr   = s_pJpegCRG;

		*pResetAddr &= JPGD_CLOCK_OFF;
#endif

}

/***************************************************************************************
* func			: jpg_do_clock_on
* description	: open the jpeg clock
				  CNcomment: 打开jpeg时钟 CNend\n
* param[in] 	: HI_VOID
* retval		: NA
* others:		: NA
***************************************************************************************/
static HI_VOID jpg_do_clock_on(HI_VOID)
{
#ifdef CONFIG_JPEG_USE_SDK_CRG_ENABLE
		volatile U_PERI_CRG31 unTempValue;

		unTempValue.u32 = g_pstRegCrg->PERI_CRG31.u32;
		/** the 0 bit write 1 */
		/** CNcomment:第0bit写1，0x1 & 0x1 = 1 */
		#if defined(CONFIG_CHIP_3716CV200_VERSION) || defined(CONFIG_CHIP_3719CV100_VERSION) || defined(CONFIG_CHIP_3718CV100_VERSION) || defined(CONFIG_CHIP_3719MV100_A_VERSION)
		unTempValue.bits.jpgd_cken  = 0x1;
		#elif defined(CONFIG_CHIP_S40V200_VERSION)
		unTempValue.bits.jpgd0_cken = 0x1;
		#endif
		g_pstRegCrg->PERI_CRG31.u32 = unTempValue.u32;

#else
		volatile HI_U32* pResetAddr = NULL;
		pResetAddr   = s_pJpegCRG;

		*pResetAddr |= JPGD_CLOCK_ON;
#endif
}

 /***************************************************************************************
 * func 		 : jpg_select_clock_frep
 * description	 : select the clock frequence
				   CNcomment: jpeg时钟频率选择 CNend\n
 * param[in]	 : HI_VOID
 * retval		 : NA
 * others:		 : NA
 ***************************************************************************************/
 static HI_VOID jpg_select_clock_frep(HI_VOID)
 {
#ifdef CONFIG_JPEG_USE_SDK_CRG_ENABLE
		volatile U_PERI_CRG31 unTempValue;

		unTempValue.u32 = g_pstRegCrg->PERI_CRG31.u32;
		/** the 8 bit write 0(200M) or 1(150M) **/
		/** CNcomment:第8bit写0，或 1,这里寄存器可以通过himd.l JPGD_CRG_REG_PHYADDR来查看 **/
		#if defined(CONFIG_CHIP_3716CV200_VERSION) || defined(CONFIG_CHIP_3719CV100_VERSION) || defined(CONFIG_CHIP_3718CV100_VERSION) || defined(CONFIG_CHIP_3719MV100_A_VERSION)
		unTempValue.bits.jpgd_clk_sel  = 0x0;
		#elif defined(CONFIG_CHIP_S40V200_VERSION)
		/** 00：250MHz    01：300MHz   10：200MHz  11：reserved **/
		//unTempValue.bits.jpgd0_clk_sel = 0x0; /** 250MHz **/
		unTempValue.bits.jpgd0_clk_sel = 0x1; /** 300MHz **/
		//unTempValue.bits.jpgd0_clk_sel = 0x2; /** 200MHz **/
		#endif
		g_pstRegCrg->PERI_CRG31.u32 = unTempValue.u32;

#else
		volatile HI_U32* pResetAddr = NULL;

		pResetAddr   = s_pJpegCRG;

		*pResetAddr = 0x000;
#endif
 }


/***************************************************************************************
* func 		 : jpg_osr_suspend
* description: get the suspend signale.
			   CNcomment: 收到待机信号 CNend\n
* param[in]	 : *pdev
* param[in]	 : state
* retval	 : HI_SUCCESS 成功
* retval	 : HI_FAILURE 失败
* others:	 : NA
***************************************************************************************/
static HI_S32 jpg_osr_suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
 
#ifdef CONFIG_JPEG_SUSPEND
 
	 HI_S32 Ret  = 0;
 
	 /** if you continue suspend and resume,this can be protected */
	 /** CNcomment:如果不停的待机唤醒，这里会起保护作用，始终使待机与唤醒配对操作 */
	 Ret  = down_interruptible(&s_SuspendMutex);
	 if(HI_TRUE == s_pstruJpgOsrDev->bDecTask)
	 {
		 JPG_WaitDecTaskDone();
		 /** tell the api received suspend signal */
		 /** CNcomment:通知应用层有待机信号了 */
		 s_pstruJpgOsrDev->bSuspendSignal = HI_TRUE;
	 }
#endif
 
	 return HI_SUCCESS;
	 
	 
}
 
/***************************************************************************************
* func 		 : jpg_osr_resume
* description: get the resume signale.
			   CNcomment: 收到待机唤醒信号 CNend\n
* param[in]	 : *pdev
* retval	 : HI_SUCCESS 成功
* retval	 : HI_FAILURE 失败
* others:	 : NA
***************************************************************************************/
static HI_S32 jpg_osr_resume(PM_BASEDEV_S *pdev)
{	 
 
#ifdef CONFIG_JPEG_SUSPEND
 
	 /** tell the api received resume signal */
	 /** CNcomment:通知应用层有待机唤醒信号了 */
	 if(HI_TRUE == s_pstruJpgOsrDev->bDecTask)
	 {
		 s_pstruJpgOsrDev->bResumeSignal  = HI_TRUE;
	 }
	 up(&s_SuspendMutex);
#endif

	 /** if suspend resume,the clock should open,if not open **/
	 /** when you read and write register,the system will no work**/
	 /** CNcomment:由于待机已经把时钟关闭了，要是唤醒的时候没有打开，则
      **           系统会挂死而无法正常工作 **/
	 jpg_do_clock_on();

	 return HI_SUCCESS;
	 
	 
}
 

 /***************************************************************************************
 * func 		 : JpgOsrISR
 * description	 : the halt function
				   CNcomment: 中断响应函数 CNend\n
 * param[in]	 : irq
 * param[in]	 : * devId
 * param[in]	 : * ptrReg
 * retval		 : HI_SUCCESS 成功
 * retval		 : HI_FAILURE 失败
 * others:		 : NA
 ***************************************************************************************/
static HI_S32 JpgOsrISR(HI_S32 irq, HI_VOID * devId, struct pt_regs * ptrReg)
{

        HI_U32 IntType = 0;
        
        /** get and set the halt status */
		/** CNcomment:获取当前的中断状态 */
        JpgHalGetIntStatus(&IntType);
		/** get and set the halt status */
		/** CNcomment:重新设置中断状态 */
        JpgHalSetIntStatus(IntType);

        if (IntType & 0x1)
        {
            s_pstruJpgOsrDev->IntType = JPG_INTTYPE_FINISH;	  
        }
        else if (IntType & 0x2)
        {
            //JPEG_TRACE("=== jpeg interrupt is err !\n");
            s_pstruJpgOsrDev->IntType = JPG_INTTYPE_ERROR;
        }
        else if (IntType & 0x4)
        {
            s_pstruJpgOsrDev->IntType = JPG_INTTYPE_CONTINUE;
        }

		/** AI7D02761 wake up the waiting halt */
		/** CNcomment:等待中断唤醒 */
        wake_up_interruptible(&s_pstruJpgOsrDev->QWaitInt);
        
        return IRQ_HANDLED;
        
    
}

/***************************************************************************************
* func			: Jpg_Request_irq
* description	: register the halt function
				  CNcomment: 根据中断号注册中断响应函数 CNend\n
* param[in] 	: HI_VOID
* retval		: NA
* others:		: NA
***************************************************************************************/
static HI_VOID Jpg_Request_irq(HI_VOID)
{

	    HI_S32 Ret = -1;
	    Ret = request_irq(JPGD_IRQ_NUM, (irq_handler_t)JpgOsrISR, IRQF_SHARED, JPEGNAME, s_pstruJpgOsrDev);
	    if(HI_SUCCESS != Ret )
	    {   
			HI_GFX_KFREE(HIGFX_JPGDEC_ID, (HI_VOID *)s_pstruJpgOsrDev);
	        s_pstruJpgOsrDev = HI_NULL;
	    }
}


/***************************************************************************************
* func			: Jpg_Free_irq
* description	: free the halt
				  CNcomment: 销毁中断响应 CNend\n
* param[in] 	: HI_VOID
* retval		: NA
* others:		: NA
***************************************************************************************/
static HI_VOID Jpg_Free_irq(HI_VOID)
{
    free_irq(JPGD_IRQ_NUM, (HI_VOID *)s_pstruJpgOsrDev);
}


/***************************************************************************************
* func			: JpgOsrDeinit
* description	: when remout driver,call this deinit function
				  CNcomment: 卸载设备的时候去初始化 CNend\n
* param[in] 	: *pOsrDev
* retval		: NA
* others:		: NA
***************************************************************************************/
static HI_VOID JpgOsrDeinit(JPG_OSRDEV_S *pOsrDev)
{    


	    /** use to initial waitqueue head and mutex */
		/** CNcomment:初始参数 */
	    pOsrDev->bEngageFlag = HI_FALSE;
	    pOsrDev->pFile       = HI_NULL;
	    pOsrDev->IntType     = JPG_INTTYPE_NONE;

	    /** initial the waiting halt waiting queue  */
		/** CNcomment: */
	    init_waitqueue_head(&pOsrDev->QWaitInt);

	    /** initial device occupy operation singnal */
		/** CNcomment: */
		HI_GFX_INIT_MUTEX(&pOsrDev->SemGetDev);
	    HI_GFX_INIT_MUTEX(&s_SuspendMutex);

        #ifdef CONFIG_JPEG_PROC_ENABLE
	    JPEG_Proc_Cleanup();
        #endif
		
	    /** unmap the register address and set s_u32JpgRegAddr with zero */
		/** CNcomment: */
	    JpgHalExit();
		
		#ifdef CONFIG_JPEG_SUSPEND
        JPG_SuspendExit();
		#endif
		
}


 /***************************************************************************************
 * func 		 : JPEG_DRV_ModExit
 * description	 : remount the jpeg driver
				   CNcomment: 卸载设备 CNend\n
 * param[in]	 : *pOsrDev
 * retval		 : NA
 * others:		 : NA
 ***************************************************************************************/
HI_VOID JPEG_DRV_ModExit(HI_VOID)
{


	    JPG_OSRDEV_S *pDev = s_pstruJpgOsrDev;

	    /** unregister the jpeg from sdk */
		/** CNcomment: 将jpeg模块从SDK去除 */
		HI_GFX_MODULE_UnRegister(HIGFX_JPGDEC_ID);

	    /** uninstall the device  */
		/** CNcomment: 卸载设备   */
	    HI_GFX_PM_UnRegister();
		
	    /** free the halt  */
		/** CNcomment: 释放中断  */
        Jpg_Free_irq();

		jpg_do_clock_off();
		
	    JpgOsrDeinit(pDev);

		HI_GFX_KFREE(HIGFX_JPGDEC_ID, (HI_VOID *)pDev);

	    s_pstruJpgOsrDev = HI_NULL;
        
        HI_GFX_REG_UNMAP((HI_VOID*)s_pJpegRegBase);
		s_pJpegRegBase  = NULL;
		
		#ifndef CONFIG_JPEG_USE_SDK_CRG_ENABLE
        HI_GFX_REG_UNMAP((HI_VOID*)s_pJpegCRG);
		s_pJpegCRG      = NULL;
		#endif    

	    return;

    
}


/***************************************************************************************
* func			: JpgOsrInit
* description	: when insmod the driver call this function
				  CNcomment: 加载设备初始化 CNend\n
* param[in] 	: *pOsrDev
* retval		: HI_SUCCESS
* retval		: HI_FAILURE
* others:		: NA
***************************************************************************************/
static HI_S32 JpgOsrInit(JPG_OSRDEV_S *pOsrDev)
{    


	    /** display the version message  */
		/** CNcomment: 显示版本号  */
        HI_GFX_ShowVersionK(HIGFX_JPGDEC_ID);

        #ifdef CONFIG_JPEG_PROC_ENABLE
		JPEG_Proc_init();
        #endif
		
        HI_GFX_INIT_MUTEX(&s_JpegMutex);

        /** trun the halt status  */
		/** CNcomment:   */
        JpgHalSetIntMask(0x0);

        /** request halt  */
		/** CNcomment:   */
         Jpg_Request_irq();

        /** use to initial waitqueue head and mutex */
		/** CNcomment:   */
        pOsrDev->bEngageFlag  = HI_FALSE;
        pOsrDev->pFile       = HI_NULL;
        pOsrDev->IntType     = JPG_INTTYPE_NONE;

        /** initial the waiting halt waiting queue */
		/** CNcomment:   */
        init_waitqueue_head(&pOsrDev->QWaitInt);

        /** initial device occupy operation singnal  */
		/** CNcomment:   */
	    HI_GFX_INIT_MUTEX(&pOsrDev->SemGetDev);
	    HI_GFX_INIT_MUTEX(&s_SuspendMutex);
		
        return HI_SUCCESS;

    
}

/***************************************************************************************
* func			: JPEG_DRV_ModInit
* description	: when insmod the driver call this function
				  CNcomment: 加载设备初始化 CNend\n
* param[in] 	: NA
* retval		: HI_SUCCESS
* retval		: HI_FAILURE
* others:		: NA
***************************************************************************************/
HI_S32 JPEG_DRV_ModInit(HI_VOID)
{

	
        HI_S32 Ret = HI_FAILURE;
		HI_U64 u64BaseAddr = JPGD_REG_BASEADDR;
		#ifndef CONFIG_JPEG_USE_SDK_CRG_ENABLE
		HI_U64 u64CRGAddr  = JPGD_CRG_REG_PHYADDR;
		#endif
        HIGFX_CHIP_TYPE_E enChipType = HIGFX_CHIP_TYPE_BUTT;
			
		/** if operation, return failure -EBUSY  */
		/** CNcomment:   */
        if (HI_NULL != s_pstruJpgOsrDev)
        {   
            return -EBUSY;
        }

		HI_GFX_SYS_GetChipVersion(&enChipType);

	    s_pJpegRegBase = (volatile HI_U32*)HI_GFX_REG_MAP(u64BaseAddr, JPGD_REG_LENGTH);
        #ifndef CONFIG_JPEG_USE_SDK_CRG_ENABLE
		s_pJpegCRG     = (volatile HI_U32*)HI_GFX_REG_MAP(u64CRGAddr, JPGD_CRG_REG_LENGTH);
        #endif
		/** select clock frequence  */
		/** CNcomment: 选择时钟频率 */
		jpg_select_clock_frep();
		/** open the clock  */
		/** CNcomment: 打开工作时钟 */
        jpg_do_clock_on();
		/** cancle the reset,now can work  */
		/** CNcomment: 撤消复位使之能够工作 */
		jpg_do_cancel_reset();
		
        /** malloc and initial the struct that drive needed to s_pstruJpgOsrDev,if malloc failure, return -NOMEM  */
		/** CNcomment:  */
        s_pstruJpgOsrDev = (JPG_OSRDEV_S *)HI_GFX_KMALLOC(HIGFX_JPGDEC_ID,sizeof(JPG_OSRDEV_S),GFP_KERNEL);
        if ( HI_NULL == s_pstruJpgOsrDev )
        {   
            return -ENOMEM;
        }
        memset(s_pstruJpgOsrDev, 0x0, sizeof(JPG_OSRDEV_S));


        JpgHalInit((HI_U32)s_pJpegRegBase);
		#ifdef CONFIG_JPEG_SUSPEND
        JPG_SuspendInit((HI_U32)s_pJpegRegBase);
		#endif
			   
       /** call JpgOsrInit to initial OSR modual, if failure should release the
        ** resource and return failure
        **/
        Ret = JpgOsrInit(s_pstruJpgOsrDev);
        if (HI_SUCCESS != Ret)
        {
		   HI_GFX_KFREE(HIGFX_JPGDEC_ID, (HI_VOID *)s_pstruJpgOsrDev);
           s_pstruJpgOsrDev = HI_NULL;
           return Ret;
        }
    
        Ret = HI_GFX_PM_Register();
        if (HI_SUCCESS != Ret)
        { 
			HI_GFX_KFREE(HIGFX_JPGDEC_ID, (HI_VOID *)s_pstruJpgOsrDev);
            s_pstruJpgOsrDev = HI_NULL;
            return HI_FAILURE;
        }

         Ret = HI_GFX_MODULE_Register(HIGFX_JPGDEC_ID, JPEGDEVNAME, NULL);
        if(HI_SUCCESS != Ret)
        {
            JPEG_DRV_ModExit();
	        return HI_FAILURE;
        }
    	   
        return HI_SUCCESS;

    
}


/***************************************************************************************
* func			: jpg_osr_open
* description	: open jpeg device
				  CNcomment: 打开jpeg设备 CNend\n
* param[in] 	: *inode
* param[in] 	: *file
* retval		: HI_SUCCESS
* retval		: HI_FAILURE
* others:		: NA
***************************************************************************************/
static HI_S32 jpg_osr_open(struct inode *inode, struct file *file)
{   

	
	    JPG_DISPOSE_CLOSE_S *sDisposeClose = NULL;

	    sDisposeClose = (JPG_DISPOSE_CLOSE_S *)HI_GFX_KMALLOC(HIGFX_JPGDEC_ID,           \
			                                                   sizeof(JPG_DISPOSE_CLOSE_S),\
			                                                   GFP_KERNEL);
		if ( HI_NULL == sDisposeClose )
	    {    
	        return -ENOMEM;
	    }
		
	    memset(sDisposeClose, 0x0, sizeof(JPG_DISPOSE_CLOSE_S));
	    file->private_data             = sDisposeClose;
	    sDisposeClose->s32DecClose     = HI_SUCCESS;
	    sDisposeClose->s32SuspendClose = HI_FAILURE;
	    sDisposeClose->bOpenUp         = HI_FALSE;
	    sDisposeClose->bSuspendUp      = HI_FALSE;
	    sDisposeClose->bRealse         = HI_FALSE;

		sg_u64RegValue = 0;
		
		
	    return HI_SUCCESS;
    
}

 /***************************************************************************************
 * func 		 : jpg_osr_close
 * description	 : close jpeg device
				   CNcomment: 关闭jpeg设备 CNend\n
 * param[in]	 : *inode
 * param[in]	 : *file
 * retval		 : HI_SUCCESS
 * retval		 : HI_FAILURE
 * others:		 : NA
 ***************************************************************************************/
static HI_S32 jpg_osr_close( struct inode *inode, struct file *file)
{
         

        JPG_DISPOSE_CLOSE_S *sDisposeClose = NULL;

        sDisposeClose = file->private_data;
        if(NULL == sDisposeClose)
        {  
           return HI_FAILURE;
        }

		sg_u64RegValue = 0;

		/**
		 **if device has not initial, return failure
		 **/
		if (HI_NULL == s_pstruJpgOsrDev)
		{	 
			up(&s_JpegMutex);
			return HI_FAILURE;
		}

        /**
	     **解码任务完成
	     **/
		 s_pstruJpgOsrDev->bDecTask = HI_FALSE;
		 s_pstruJpgOsrDev->bSuspendSignal = HI_FALSE;
		 s_pstruJpgOsrDev->bResumeSignal  = HI_FALSE;
		
        /** if suspend dispose */
		/** CNcomment: 如果是待机则将待机需要的设备关回掉即可 */
        if(HI_SUCCESS==sDisposeClose->s32SuspendClose)
		{
             if(HI_TRUE == sDisposeClose->bSuspendUp)
			 {
                up(&s_JpegMutex);
             }
			 HI_GFX_KFREE(HIGFX_JPGDEC_ID, (HI_VOID *)sDisposeClose);
             return HI_SUCCESS;
        }

        if(HI_SUCCESS==sDisposeClose->s32DecClose)
		{
             if(HI_TRUE == sDisposeClose->bOpenUp)
			 {
                up(&s_JpegMutex);
             }
			 HI_GFX_KFREE(HIGFX_JPGDEC_ID, (HI_VOID *)sDisposeClose);
             return HI_SUCCESS;
        }


        /**
         **  if call realse, should not call this
         **/
        if(HI_FALSE == sDisposeClose->bRealse)
        {
            /**
             ** set file private data to HI_NULL 
             **/
            HI_GFX_KFREE(HIGFX_JPGDEC_ID, (HI_VOID *)sDisposeClose);

            /**
             ** if the file occupy the device, set this device to not occupied,
             ** wake up waiting halt waiting queue
             **/
            if(down_interruptible(&s_pstruJpgOsrDev->SemGetDev))
            {
              /*nothing to do!*/
            }

            if ((HI_TRUE == s_pstruJpgOsrDev->bEngageFlag) && (file == s_pstruJpgOsrDev->pFile))
            {
            
                s_pstruJpgOsrDev->bEngageFlag = HI_FALSE;
                (HI_VOID)wake_up_interruptible(&s_pstruJpgOsrDev->QWaitInt);
                
            }
            /**
             ** to JPG reset operation, open the clock
             **/
            if(s_pstruJpgOsrDev->bEngageFlag != HI_FALSE)
			{
				jpg_do_cancel_reset();
                up(&s_pstruJpgOsrDev->SemGetDev);
                up(&s_JpegMutex);
        		return HI_FAILURE;
        	}
            if(s_pstruJpgOsrDev->IntType != JPG_INTTYPE_NONE)
			{
				jpg_do_cancel_reset();
                up(&s_pstruJpgOsrDev->SemGetDev);
                up(&s_JpegMutex);
        		return HI_FAILURE;
            }

			jpg_do_cancel_reset();
           
            up(&s_JpegMutex);
			
            up(&s_pstruJpgOsrDev->SemGetDev);
            
            return HI_SUCCESS;
            
            
        }

        /**
         ** set file private data to HI_NULL 
         **/
		HI_GFX_KFREE(HIGFX_JPGDEC_ID, (HI_VOID *)sDisposeClose);

        return HI_SUCCESS;

        
}
	

 /***************************************************************************************
 * func 		 : jpg_osr_mmap
 * description	 : mmap jpeg device
				   CNcomment: 映射jpeg设备 CNend\n
 * param[in]	 : *filp
 * param[in]	 : *vma
 * retval		 : HI_SUCCESS
 * retval		 : HI_FAILURE
 * others:		 : NA
 ***************************************************************************************/
static HI_S32 jpg_osr_mmap(struct file * filp, struct vm_area_struct *vma)
{
      
		/** if api call mmap,will call this function */
		/** CNcomment: 上层map jpeg设备的时候调用 */
        HI_U32 Phys;
        HI_U64 u64BaseAddr = JPGD_REG_BASEADDR;
        /**
         ** set map parameter 
         **/
		Phys = (u64BaseAddr >> PAGE_SHIFT);

        vma->vm_flags |= VM_RESERVED | VM_LOCKED | VM_IO;

        /** cancel map **/
        vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

        if (remap_pfn_range(vma, vma->vm_start, Phys, vma->vm_end - vma->vm_start, 
                            vma->vm_page_prot))
        {
            return -EAGAIN;
        }

        return HI_SUCCESS;

    
}
 
 /*****************************************************************************
* func            : jpg_osr_ioctl
* description     : jpeg device control interface
* param[in]       : inode  
* param[in]       : flip    device file message
* param[in]       : Cmd  
* param[in]       : Arg    
* output          : none
* retval          : HI_SUCCESS
* retval          : HI_ERR_JPG_DEC_BUSY
* retval          : -EINVAL
* retval          : -EAGAIN
* others:	      : nothing
*****************************************************************************/
static long jpg_osr_ioctl(struct file *file, HI_U32 Cmd, unsigned long Arg)
{


	    
        HI_U32 u32StartTimeMs = 0; /** ms **/
		HI_U32 u32EndTimeMs   = 0; /** ms **/
        HI_S32 IRQ_NUM         = JPGD_IRQ_NUM;
        #ifdef CONFIG_JPEG_SUSPEND
        HI_JPG_SAVEINFO_S stSaveInfo = {0};
		#endif
	    switch(Cmd)
	    {
	    
	        case CMD_JPG_GETDEVICE:
	        {

	            JPG_DISPOSE_CLOSE_S *sDisposeClose = NULL;
	            sDisposeClose = file->private_data;
	            
	        	/********if jpeg has not close, so jpeg is busy, you should suspend now **/
	        	if(down_interruptible(&s_JpegMutex)){ /** Mutex initial with 1, and after this func,the
	        	                             ** Mutex is zero, so has not mutex, next time should
	        	                             ** wait here, only the mutex is no zero, followed can
	        	                             ** operation
	        	                             **/
	        	      sDisposeClose->bOpenUp = HI_FALSE;
	                  return -ERESTARTSYS;
	            }
	        	/*************************************************************************/
	        			
	            /**
	             ** if has not initial device, return failure
	             **/
	            if (HI_NULL == s_pstruJpgOsrDev)
	            {   
	                return HI_FAILURE;
	            }

	            /**
	             ** locked the occupied device 
	             **/
	            if(down_interruptible(&s_pstruJpgOsrDev->SemGetDev))
	            {
	               /*nothing to do!*/
	            }

	            s_pstruJpgOsrDev->bEngageFlag = HI_TRUE;
	            s_pstruJpgOsrDev->IntType    = JPG_INTTYPE_NONE;
	            s_pstruJpgOsrDev->pFile      = file;
	            
	            sDisposeClose->s32DecClose   = HI_FAILURE;
	            sDisposeClose->bOpenUp       = HI_TRUE;
	            sDisposeClose->bRealse       = HI_FALSE;
	            /**
	             ** to JPG reset operation, open the clock
	             **/
				 jpg_do_reset();
				 
	             up(&s_pstruJpgOsrDev->SemGetDev);

                 /**
                  **开始解码任务
                  **/
				 s_pstruJpgOsrDev->bDecTask = HI_TRUE;
				 
	             break;
	             
	        }
	        case CMD_JPG_RELEASEDEVICE:
	        {

	            JPG_DISPOSE_CLOSE_S *sDisposeClose = NULL;
	            sDisposeClose = file->private_data;
	            /**
	             **if device has not initial, return failure
	             **/
	            if (HI_NULL == s_pstruJpgOsrDev)
	            {
	                up(&s_JpegMutex);
	                return HI_FAILURE;
	            }
	            /**
	             ** if the file occupy the device, set this device to not occupied,
	             ** wake up waiting halt waiting queue
	             **/
	            if(down_interruptible(&s_pstruJpgOsrDev->SemGetDev))
	            {
				   /*nothing to do!*/
				}

	            if ((HI_TRUE == s_pstruJpgOsrDev->bEngageFlag) && (file == s_pstruJpgOsrDev->pFile))
	            {
	            
	                s_pstruJpgOsrDev->bEngageFlag = HI_FALSE;
	                (HI_VOID)wake_up_interruptible(&s_pstruJpgOsrDev->QWaitInt);
	                
	            }
	            
	            /**
	             ** to JPG reset operation, open the clock
	             **/
	            if(s_pstruJpgOsrDev->bEngageFlag != HI_FALSE)
				{
	                up(&s_pstruJpgOsrDev->SemGetDev);
	                up(&s_JpegMutex);
	        		return HI_FAILURE;
	        	}
	            if(s_pstruJpgOsrDev->IntType != JPG_INTTYPE_NONE)
				{
	                up(&s_pstruJpgOsrDev->SemGetDev);
	                up(&s_JpegMutex);
	        		return HI_FAILURE;
	            }

				jpg_do_cancel_reset();
				
	            up(&s_JpegMutex);
	            sDisposeClose->bRealse = HI_TRUE;

			   /**
				**解码任务结束
				**/
				s_pstruJpgOsrDev->bDecTask = HI_FALSE;

	            up(&s_pstruJpgOsrDev->SemGetDev);
	                     
	            break;
	            
	        }
	        case CMD_JPG_SUSPEND:
	        {    
				 #ifdef CONFIG_JPEG_SUSPEND
                	pm_message_t state = {0};
				 	jpg_osr_suspend(NULL,state);
				 #endif
	             break;
	        }
	        case CMD_JPG_RESUME:
	        {    
				 #ifdef CONFIG_JPEG_SUSPEND
	             	jpg_osr_resume(NULL);
				 #endif
	             break;
	        }
	        case CMD_JPG_GETINTSTATUS:
	        {

				
	            JPG_GETINTTYPE_S IntInfo;
	            HI_S32 Ret = 0;
	            HI_S32 loop = 0;
	            HI_U32 FirstCount = 1;
	            /**
	             ** checkt parameter
	             **/
	            if (0 == Arg)
	            {
	                return HI_FAILURE;
	            }

	            /**
	             ** copy input parameter
	             **/
	           if(copy_from_user((HI_VOID *)&IntInfo, (HI_VOID *)Arg, sizeof(JPG_GETINTTYPE_S)))
			   {   
	                return -EFAULT;  
	           	}

	            disable_irq(IRQ_NUM);
	            
	           /**
	            ** get the halt type 
	            **/
	            if (    (JPG_INTTYPE_NONE != s_pstruJpgOsrDev->IntType)
	                 || (0 == IntInfo.TimeOut))
	            {

					
	                IntInfo.IntType = s_pstruJpgOsrDev->IntType;
	                s_pstruJpgOsrDev->IntType = JPG_INTTYPE_NONE;
	                enable_irq(IRQ_NUM);
	                
	                if(copy_to_user((HI_VOID *)Arg, (HI_VOID *)&IntInfo, sizeof(JPG_GETINTTYPE_S)))
	  		        { 
	                    return -EFAULT;  
	           	    }
	                break;
	            }
	            enable_irq(IRQ_NUM);

	            do
	            {			
	               /**
	                ** if the value of overtime, to overtime waitiong
	                **/
	                Ret = wait_event_interruptible_timeout(s_pstruJpgOsrDev->QWaitInt, 
	                              JPG_INTTYPE_NONE != s_pstruJpgOsrDev->IntType, 
	                              IntInfo.TimeOut * HZ/1000);
					 
	                loop = 0;

	                if(Ret > 0 || (JPG_INTTYPE_NONE != s_pstruJpgOsrDev->IntType))
	                {

	                    disable_irq(IRQ_NUM);
	                    IntInfo.IntType = s_pstruJpgOsrDev->IntType;
	                    s_pstruJpgOsrDev->IntType = JPG_INTTYPE_NONE;
	                    enable_irq(IRQ_NUM);
	                    break;
	                } 
	                else if( -ERESTARTSYS == Ret)
	                {

	                    if(FirstCount)
	                    {
							HI_GFX_GetTimeStamp(&u32StartTimeMs,NULL);
	                        FirstCount = 0;
	                        loop = 1;
	                    } 
	                    else
	                    {
							HI_GFX_GetTimeStamp(&u32EndTimeMs,NULL);
	                        /** avoid dead lock **/
                            loop = ((u32EndTimeMs - u32StartTimeMs) <  IntInfo.TimeOut)?1:0; 
	                        /** check timeout **/
							if(!loop)
	                        {
	                        	 return HI_FAILURE;
	                        }
	                    }
						
	                } 
	                else /** == 0(wait timeout) and others **/ 
	                {
	                    return HI_FAILURE;
	                }
					
	            }while(loop);

	            /** 
	             ** get halt status and return
	             **/
	            if(copy_to_user((HI_VOID *)Arg, (HI_VOID *)&IntInfo,sizeof(JPG_GETINTTYPE_S)))
			    {
	                return -EFAULT;  
	           	}
	            
	            break;
	        }
	        case CMD_JPG_READPROC:
	        {   

                 #ifdef CONFIG_JPEG_PROC_ENABLE 
		            HI_BOOL bIsProcOn = HI_FALSE;
					JPEG_Get_Proc_Status(&bIsProcOn);
		            if(HI_TRUE == bIsProcOn)
		            {
			            if (0 == Arg)
			            {
			                return HI_FAILURE;
			            }
			                        
			            if(copy_from_user((HI_VOID *)&s_stJpeg6bProcInfo, (HI_VOID *)Arg, sizeof(HI_JPEG_PROC_INFO_S)))
					    {  
			                return -EFAULT;  
			           	}
		            }
				#endif
				
	            break;
				
	        }   	
	        case CMD_JPG_GETRESUMEVALUE:
	        {/** 获取待机唤醒信息 **/
				#ifdef CONFIG_JPEG_SUSPEND				
	            if (0 == Arg)
	            {
	                return HI_FAILURE;
	            }
	            JPG_GetResumeValue(&stSaveInfo);             
	            if(copy_to_user((HI_VOID *)Arg, (HI_VOID *)&stSaveInfo,sizeof(stSaveInfo)))
			    {  
	                return -EFAULT;  
	           	}
				s_pstruJpgOsrDev->bSuspendSignal = HI_FALSE;
    			s_pstruJpgOsrDev->bResumeSignal  = HI_FALSE;
				#endif
	            break;
				
	        }
	        case CMD_JPG_GETSUSPEND:
	        { /** 获取待机信息 **/
				
                #ifdef CONFIG_JPEG_SUSPEND
	            if (0 == Arg)
	            {
	                return HI_FAILURE;
	            }
	            if(copy_to_user((HI_VOID *)Arg, (HI_VOID *)&s_pstruJpgOsrDev->bSuspendSignal,sizeof(s_pstruJpgOsrDev->bSuspendSignal)))
			    {  
	                return -EFAULT;  
	           	}
				#endif
	            break;
				
	        }
	        case CMD_JPG_GETRESUME:
	        {/** 获取待机唤醒信息 **/  
				#ifdef CONFIG_JPEG_SUSPEND
	            if (0 == Arg)
	            {
	                return HI_FAILURE;
	            }
	                        
	            if(copy_to_user((HI_VOID *)Arg, (HI_VOID *)&s_pstruJpgOsrDev->bResumeSignal,sizeof(s_pstruJpgOsrDev->bResumeSignal)))
			    {  
	                return -EFAULT;  
	           	}
				#endif
	            break;
				
	        }
            case CMD_JPG_CANCEL_RESET:
			{
                 jpg_do_cancel_reset();
				 break;
            }
            case CMD_JPG_RESET:
			{
                 jpg_do_reset();
				 break;
            }
			case CMD_JPG_WRITE_REGVALUE:
			{ 
				 if(copy_from_user((HI_VOID *)&sg_u64RegValue, (HI_VOID *)Arg, sizeof(sg_u64RegValue)))
				 {	
					 return -EFAULT;  
				 }
				 break;
				 
			 }		 
			 case CMD_JPG_READ_REGVALUE:
			 { 
				 if(copy_to_user((HI_VOID *)Arg, (HI_VOID *)&sg_u64RegValue,sizeof(sg_u64RegValue)))
				 {	
					 return -EFAULT;  
				 }
				 break;
				 
			 }
	        default:
	        {
	            return -EINVAL;
	        }
	        
	    }
		
	    return HI_SUCCESS;

    
}



/** 这两个函数要按此命名 **/
#ifdef MODULE
/** 
 ** this two function is defined at msp/drv/include/drv_jpeg_ext.h
 **/
module_init(JPEG_DRV_ModInit);
module_exit(JPEG_DRV_ModExit);
#endif

MODULE_DESCRIPTION("driver for the all jpeg");
MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");


#ifdef __cplusplus
    #if __cplusplus
}
    #endif  /* __cplusplus */
#endif  /* __cplusplus */
