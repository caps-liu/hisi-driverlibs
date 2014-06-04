/******************************************************************************

  Copyright (C), 2014-2020, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : hi_jpeg_config.h
Version		    : Initial Draft
Author		    : 
Created		    : 2013/07/01
Description	    : this file is through set macro to select different funciton,
                  and select different platform
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2013/07/01		    y00181162  		    Created file      	
******************************************************************************/

 

#ifndef __HI_JPEG_CONFIG_H__
#define __HI_JPEG_CONFIG_H__


/*********************************add include here******************************/
#ifdef __KERNEL__
 #include "hi_gfx_comm_k.h"
#else
    #ifdef CONFIG_GFX_FPGA_SDK
 		#include "hi_gfx_test_comm.h"
	#else
		#include "hi_gfx_comm.h"
	#endif
#endif


/*****************************************************************************/


#ifdef __cplusplus
      #if __cplusplus
   
extern "C" 
{

      #endif
#endif /* __cplusplus */

    /***************************** Macro Definition ******************************/

	/** \addtogroup 	 JPEG CFG */
    /** @{ */  /** <!-- 【JPEG CFG】 */


    /****************************************************************************
     **底下这三种宏开关都是在Makefile中定义
     ****************************************************************************/
	/** Definition of the chip version */
	/** CNcomment:芯片类型宏定义,将宏开关放到Makefile中去 CNend */
    #if 0
       #define CONFIG_CHIP_S40V200_VERSION
	   /** the chip version is 3716CV200 */
	   /** CNcomment:3716CV200芯片 */
       #define CONFIG_CHIP_3716CV200_VERSION
	   #define CONFIG_CHIP_3719CV100_VERSION
	   #define CONFIG_CHIP_3718CV100_VERSION
	   #define CONFIG_CHIP_3719MV100_A_VERSION
	   #define CONFIG_CHIP_3719MV300_VERSION
       #define CONFIG_CHIP_3712_VERSION
	   #define CONFIG_CHIP_3535_VERSION
	   #define CONFIG_CHIP_3716MV300_VERSION
	   #define CONFIG_CHIP_OTHERS_VERSION
    #endif
	/** this macro is add google function and use in android version,define in Makefile */
	/** CNcomment:将android的google版本核入jpeg-6b中，在Makefile中控制该宏开关 CNend */
	#if 0
	#define CONFIG_JPEG_ADD_GOOGLEFUNCTION
	#endif

     /****************************************************************************
      ** function marco definition no depend chip platform
	  ** CNcomment:和芯片平台无关的宏定义
     ****************************************************************************/
     #ifndef CONFIG_GFX_ANDROID_SDK
		/** the some function realize before the main function */
		/** CNcomment:有些功能在main函数之前实现，也就是程序运行之后调用一次 */
		#define CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
	 #else
	 	/** use outsize deal with stream */
		/** CNcomment:使用外部处理码流机制，通过回调函数 */
	 	#define CONFIG_JPEG_USE_CALLBACK_STREAM
		/** use gfx mmz to alloc mem */
		/** CNcomment:使用自己封装的MMZ分配内存 */
		#define CONFIG_JPEG_USE_PRIVATE_MMZ
		/** use android debug message */
		/** CNcomment:Android版本的调试信息 */
		#define CONFIG_JPEG_ANDROID_DEBUG_ENABLE
     #endif

	 #ifndef CONFIG_GFX_ADVCA_RELEASE
	 /** if need proc message */
	 /** CNcomment:是否需要proc信息 */
     #define CONFIG_JPEG_PROC_ENABLE
	 #endif

	/** if need use soft csc to debug whether the hard csc has problem */
	/** CNcomment:使用软件转换来定位硬件转换是否有问题 */
    #define CONFIG_JPEG_SOFTCSC_ENABLE

	/** use hard idct method */
	/** CNcomment:使用硬件得IDCT算法 */
    #define CONFIG_JPEG_USEHWIDCT
	
/****************************************************************************
 ** function marco definition depend chip platform
 ** CNcomment:和芯片平台相关的宏定义
 ****************************************************************************/
#ifdef CONFIG_CHIP_3716MV300_VERSION
	/** if support crop */
    /** CNcomment:是否支持裁剪功能 */
    #define CONFIG_JPEG_OUTPUT_CROP
	/** use mmz to alloc memory */
	/** CNcomment:使用mmz分配的内存 */
	#define CONFIG_JPEG_USEMMZMEM
	/** get jpeg dec time */
	/** CNcomment:获取jpeg解码的时间 */
	#define CONFIG_JPEG_GETDECTIME
	/** support motion jpeg decode */
	/** CNcomment:支持motion jpeg 解码 */
	//#define CONFIG_JPEG_MPG_DEC_ENABLE
#endif


#ifdef CONFIG_CHIP_S40V200_VERSION
	/** if support crop */
	/** CNcomment:是否支持裁剪功能 */
    #define CONFIG_JPEG_OUTPUT_CROP
	/** use mmz to alloc memory */
	/** CNcomment:使用mmz分配的内存 */
	#define CONFIG_JPEG_USEMMZMEM
	/** get jpeg dec time */
	/** CNcomment:获取jpeg解码的时间 */
	#define CONFIG_JPEG_GETDECTIME
	/** use sdk CRG write */
	/** CNcomment:使用SDK的CRG操作 */
	#define CONFIG_JPEG_USE_SDK_CRG_ENABLE
#endif

	
#if defined(CONFIG_CHIP_3716CV200_VERSION) || defined(CONFIG_CHIP_3719CV100_VERSION) || defined(CONFIG_CHIP_3718CV100_VERSION) || defined(CONFIG_CHIP_3719MV100_A_VERSION)
	/** if support crop */
	/** CNcomment:是否支持裁剪功能 */
    #define CONFIG_JPEG_OUTPUT_CROP
	/** if support suspend */
	/** CNcomment:是否支持待机功能 */
	#define CONFIG_JPEG_SUSPEND
	/** if support jpeg hard dec to argb8888 */
	/** CNcomment:是否支持jpeg硬件解码输出argb8888 */
	//#define CONFIG_JPEG_HARDDEC2ARGB /** 这个版本不支持，由于涉及到stride问题，直接用TDE转规避了 **/
	/** use mmz to alloc memory */
	/** CNcomment:使用mmz分配的内存 */
	#define CONFIG_JPEG_USEMMZMEM
	/** get jpeg dec time */
	/** CNcomment:获取jpeg解码的时间 */
	#define CONFIG_JPEG_GETDECTIME
	/** the save stream buffer should 4bytes align about 3716CV200 */
	/** CNcomment:3716CV200芯片存储码流buffer起始地址需要4字节对齐，之后的芯片解决了这个bug */
	#define CONFIG_JPEG_STREAMBUF_4ALIGN
	/** support motion jpeg decode */
	/** CNcomment:支持motion jpeg 解码 */
	//#define CONFIG_JPEG_MPG_DEC_ENABLE
	/** use sdk CRG write */
	/** CNcomment:使用SDK的CRG操作 */
	#define CONFIG_JPEG_USE_SDK_CRG_ENABLE
#endif


#ifdef CONFIG_CHIP_3719MV300_VERSION
		/** if support crop */
		/** CNcomment:是否支持裁剪功能 */
    	#define CONFIG_JPEG_OUTPUT_CROP
	    /** all jpeg dec output yuv420sp */
	    /** CNcomment:统一解码输出yuv420sp */
        #define CONFIG_JPEG_OUTPUT_YUV420SP
	    /** dec jpeg file output lu pixel value sum */
	    /** CNcomment:统计亮度值 */
        #define CONFIG_JPEG_OUTPUT_LUPIXSUM
		/** get jpeg dec time */
	    /** CNcomment:获取jpeg解码的时间 */
	    #define CONFIG_JPEG_GETDECTIME
		/** use mmz to alloc memory */
		/** CNcomment:使用mmz分配的内存 */
		#define CONFIG_JPEG_USEMMZMEM
		/** if support suspend */
		/** CNcomment:是否支持待机功能 */
		#define CONFIG_JPEG_SUSPEND
		/** support motion jpeg decode */
		/** CNcomment:支持motion jpeg 解码 */
		//#define CONFIG_JPEG_MPG_DEC_ENABLE
#endif



#ifdef CONFIG_CHIP_3535_VERSION
		/** if support crop */
		/** CNcomment:是否支持裁剪功能 */
    	#define CONFIG_JPEG_OUTPUT_CROP
	    /** not output warning info */
	    /** CNcomment:不输出告警信息 */
		#define CONFIG_JPEG_UNPRINT_WARNING
	    /** all jpeg dec output yuv420sp */
	    /** CNcomment:统一解码输出yuv420sp */
		#define CONFIG_JPEG_OUTPUT_YUV420SP
	    /** dec jpeg file output lu pixel value sum */
	    /** CNcomment:统计亮度值 */
		#define CONFIG_JPEG_OUTPUT_LUPIXSUM
	    /** set mem */
	    /** CNcomment:通过设置内存接口来获取需要的内存 */
		#define CONFIG_JPEG_SETMEM
	    /** use no mmz cach */
	    /** CNcomment:使用不带cach的mmz内存 */
		#define CONFIG_JPEG_NOCACHE
	    /** soft decode to calc the lu pixle sum value */
	    /** CNcomment:是否需要软件统计亮度值功能 */
		#define CONFIG_JPEG_SFCALCLUPIXSUM
#endif

	/** use the calc default value dqt and dht value */
	/** CNcomment:使用计算好的量化表和哈夫曼表的值，直接配置寄存器 */
#ifdef CONFIG_JPEG_MPG_DEC_ENABLE
		#define CONFIG_JPEG_USE_CALC_DEFAULT_VALUE
#endif

    /****************************************************************************
     ** function marco definition use to fpga test and deal with bug by eda
	 ** CNcomment:用来硬件逻辑测试及定位bug使用的宏开关
     ****************************************************************************/
	/** save the scen information,use it to eda simulation */
	/** CNcomment:导现场使能，用来调试用的，现场给逻辑做EDA仿真 */
	//#define CONFIG_JPEG_FPGA_TEST_SAVE_SCEN_ENABLE
	/** save the data to bmp picture */
	/** CNcomment:保存bmp图片 */
    //#define CONFIG_JPEG_TEST_SAVE_BMP_PIC
    /** save yuv semi-planer data */
	/** CNcomment:保存yuv semi-planer数据 */
    //#define CONFIG_JPEG_TEST_SAVE_YUVSP_DATA

	/** the chip hard decode random reset test */
	/** CNcomment:随机软复位样片测试 */
	//#define CONFIG_JPEG_TEST_CHIP_RANDOM_RESET
	/** test press */
	/** CNcomment:测试反压 */
	//#define CONFIG_JPEG_TEST_CHIP_PRESS
	/** the ck_gt_en is open */
	/** CNcomment:时钟门控打开 */
	//#define CONFIG_JPEG_TEST_CHIP_OPEN_CK
	/** test hard decode capa */
	/** CNcomment:测试硬件解码性能 */
	//#define CONFIG_JPEG_TEST_HARD_DEC_CAPA
	/** save the scen information,use it to eda simulation */
	/** CNcomment:测试待机增加的几个接口 */
	//#define CONFIG_JPEG_FPGA_TEST_SUSPEND_ENABLE

	#ifdef CONFIG_GFX_FPGA_SDK
	#define CONFIG_JPEG_FPGA_TEST_ENABLE
	#endif
	
    #ifdef CONFIG_GFX_ADVCA_RELEASE
	    /** this is not has warning message */
	    /** CNcomment:只有带上参数才不会有告警信息 */
        #define JPEG_TRACE( fmt,args...)
	#else
	    #ifdef __KERNEL__
		#define JPEG_TRACE               GFX_Printk
		#else
	 	#define JPEG_TRACE               GFX_Printf
		#endif
	#endif

    /** @} */  /*! <!-- Macro Definition end */

	
    /*************************** Structure Definition ****************************/
	
    /***************************  The enum of Jpeg image format  ******************/


    /********************** Global Variable declaration **************************/
    

    /******************************* API declaration *****************************/
	
	
    #ifdef __cplusplus

        #if __cplusplus



}
      
        #endif
        
   #endif /* __cplusplus */

#endif /* __HI_JPEG_CONFIG_H__*/
