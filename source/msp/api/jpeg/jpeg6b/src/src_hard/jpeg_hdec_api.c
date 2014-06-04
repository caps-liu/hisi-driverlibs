/******************************************************************************

  Copyright (C), 2013-2020, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpeg_hdec_api.c
Version		    : Initial Draft
Author		    : y00181162
Created		    : 2013/06/20
Description	    : the jpeg hard decode realize in this function
                  CNcomment: jpeg硬件解码的实现在该函数中 CNend\n
Function List 	:

			  		  
History       	:
Date				Author        		Modification
2013/06/20		    y00181162		    Created file      	
******************************************************************************/

/*********************************add include here******************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <linux/types.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <assert.h>
#include <unistd.h>

#include "jpeglib.h"
#include "jdatasrc.h"
#include "jerror.h"
#include "jpegint.h"

#include "hi_jpeg_config.h"
#include "jpeg_hdec_api.h"
#include "jpeg_hdec_error.h"
#include "jpeg_hdec_mem.h"
#include "jpeg_hdec_rwreg.h"
#include "jpeg_hdec_adp.h"
#include "hi_jpeg_hal_api.h"
#include "hi_drv_jpeg_reg.h"


#include "hi_tde_api.h"
#include "hi_common.h"

#if defined(CONFIG_JPEG_TEST_SAVE_BMP_PIC) || defined(CONFIG_JPEG_TEST_SAVE_YUVSP_DATA) || defined(CONFIG_JPEG_TEST_CHIP_RANDOM_RESET)
#include "hi_jpeg_hdec_test.h"
#endif

#if defined(CONFIG_JPEG_ANDROID_DEBUG_ENABLE) && defined(CONFIG_JPEG_DEBUG_INFO)
#include <cutils/properties.h>
#define LOG_TAG "libjpeg"
#endif


/***************************** Macro Definition ******************************/

/** the jpeg structure init pointer */
/** CNcomment:jpeg私有机构体初始化指针 */
#define CLIENT_DATA_MARK				  0x00FFFFFF

/** the hard dec inflexion size */
/** CNcomment:软件和硬件解码的拐点大小 */
#define JPGD_HDEC_FLEXION_SIZE		  0 //100000000

/*************************** Structure Definition ****************************/


#ifdef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC

/** Structure of the some function should realize before main function */
/** CNcomment:一些必须在main函数之前实现的功能变量 */
typedef struct tagJPEG_DECOMPRESS_RES 
{

    HI_BOOL    bOpenTDE;         /**< whether open tde device   *//**<CNcomment:是否打开TDE设备     */
    HI_CHAR*   pStreamPhyBuf;   /**< The stream physics address *//**<CNcomment:码流buffer物理地址 */
    HI_CHAR*   pStreamVirBuf;   /**< The stream virtual address *//**<CNcomment:码流buffer虚拟地址 */
	
}JPEG_DECOMPRESS_RES;

static JPEG_DECOMPRESS_RES g_stJpegDecompressRes = {HI_FALSE ,NULL, NULL};


/********************** Global Variable declaration **************************/

#ifdef CONFIG_JPEG_FPGA_TEST_ENABLE
/**如果是使用FPGA测试，则分配的内存方式是自己封装的，以及其它实现方式也不一样**/
HI_S32 sg_s32MMZDev = -1;
#endif

/******************************* API forward declarations *******************/


/******************************* API realization *****************************/


/***************************************************************************************
* func			: __attribute__ ((constructor))
* description	: this function will realize before main function, so some function will
                  realize in this function.
                  CNcomment: 应用程序起来之后，也就是第一次调用libjpeg库的时候会先调用
                             该函数，然后再调用main函数，直到退出jpeg应用程序 CNend\n
* param[in] 	: NA
* retval		: HI_SUCCESS 成功
* retval		: HI_FAILURE 失败
* others:		: NA
***************************************************************************************/
void __attribute__ ((constructor)) jpeg_lib_creat(void)
{

        HI_S32 s32Ret = HI_SUCCESS;
		const HI_U32 u32StreamSize = JPGD_HARD_BUFFER;
		/**
		 ** when malloc mem failure at soft decode, pthread will be killed, so
		 ** we want to use MMZ malloc. we should open at creat decompress
		 ** CNcomment: 要是使用malloc分配的内存，在软件解码过程中要是内存不足
		 **            会导致系统直接挂死，所以要使用mmz来分配内存 CNend\n
		 **/

		/**
		 ** open tde device
		 ** CNcomment: 打开TDE设备  CNend\n
		 **/
		if(HI_SUCCESS == HI_TDE2_Open())
		{
		    g_stJpegDecompressRes.bOpenTDE = HI_TRUE;
		}
		else
		{
			g_stJpegDecompressRes.bOpenTDE = HI_FALSE;	  
		} 

        #ifdef CONFIG_JPEG_FPGA_TEST_ENABLE
        MMZ_INIT("/dev/mmz_userdev");
		#endif
		
		/**
		 ** get the stream mem, if the stream from the user physics mem,
		 ** no need alloc this mem.is critical variable,so should consider
		 ** the many pthread.
		 ** CNcomment: 获取码流buffer内存，要是码流来源于用户连续的物理内存
		 ** 		   这里就不需要分配了，只需要给宏开关赋值为0即可。这个
		 **            地方属于临界资源，所以要考虑到多线程的问题，要是有问题就不使用这种方式了 CNend\n
		 **/
		s32Ret = JPEG_HDEC_GetStreamMem(u32StreamSize,&g_stJpegDecompressRes.pStreamPhyBuf,&g_stJpegDecompressRes.pStreamVirBuf);
        if(HI_SUCCESS != s32Ret)
        {
            return;
        }
		
}


/***************************************************************************************
* func			: __attribute__ ((destructor))
* description	: when exit the program, will call this function
                  CNcomment: 当退出可执行程序的时候会调用该函数 CNend\n
* param[in] 	: NA
* retval		: HI_SUCCESS   CNcomment: 成功  CNend\n
* retval		: HI_FAILURE   CNcomment: 失败  CNend\n
* others:		: NA
***************************************************************************************/
void __attribute__ ((destructor)) jpeg_lib_destroy(void)
{


		  /**
		   ** close tde device
		   ** CNcomment:关闭TDE设备  CNend\n
		   **/
          if (HI_TRUE == g_stJpegDecompressRes.bOpenTDE) 
		  {
             HI_TDE2_Close();
          }
          g_stJpegDecompressRes.bOpenTDE = HI_FALSE;

		  #ifdef CONFIG_JPEG_FPGA_TEST_ENABLE
	      MMZ_DINIT();
		  #endif
		  
		  /**
		   ** free the stream buffer mem
		   ** CNcomment: 释放码流buffer内存 CNend\n
		   **/
		  JPEG_HDEC_FreeStreamMem(g_stJpegDecompressRes.pStreamPhyBuf);
          g_stJpegDecompressRes.pStreamPhyBuf = NULL;
		  g_stJpegDecompressRes.pStreamVirBuf = NULL;

}
#endif


/*****************************************************************************
* func			: JPEG_HDEC_OpenDev
* description	: open some device that decode need
				  CNcomment: 打开解码需要的相关设备 	   CNend\n
* param[in] 	: cinfo 		CNcomment: 解码对象    CNend\n
* retval		: HI_SUCCESS	CNcomment: 成功 	   CNend\n
* retval		: HI_FAILURE	CNcomment: 失败 	   CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_OpenDev(const struct jpeg_decompress_struct *cinfo)
{

		HI_S32 s32RetVal = 0;

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

		if(pJpegHandle->s32JpegDev < 0)
		{
			pJpegHandle->s32JpegDev = open(JPG_DEV, O_RDWR | O_SYNC);
			if(pJpegHandle->s32JpegDev < 0)
			{
				return HI_FAILURE; 
			}
		}

		/**
		** get jpeg device, this has signal
		** CNcomment: 获取硬件设备，这里有信号量锁，使之支持多任务 CNend\n
		**/
		s32RetVal = ioctl(pJpegHandle->s32JpegDev, CMD_JPG_GETDEVICE);
		if (HI_SUCCESS != s32RetVal)
		{
			return HI_FAILURE;
		}

		/**
		** mmap the device virtual
		** CNcomment: 映射jpeg设备虚拟地址 CNend\n
		**/
		pJpegHandle->pJpegRegVirAddr  = (volatile char*  )mmap(NULL, \
															 JPGD_REG_LENGTH, 	       \
															 PROT_READ | PROT_WRITE,   \
															 MAP_SHARED,			   \
															 pJpegHandle->s32JpegDev,  \
															 (off_t)0);
		if(MAP_FAILED == pJpegHandle->pJpegRegVirAddr)   
		{	  
			return HI_FAILURE; 
		}

#ifdef CONFIG_JPEG_TEST_CHIP_RANDOM_RESET
		HI_JPEG_SetJpegDev(pJpegHandle->s32JpegDev);
		HI_JPEG_SetJpegVir(pJpegHandle->pJpegRegVirAddr);
#endif

#ifndef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
		if(HI_FALSE == pJpegHandle->bTDEDevOpen)
		{
			if(HI_SUCCESS != HI_TDE2_Open())
			{
				return HI_FAILURE;
			}
			pJpegHandle->bTDEDevOpen = HI_TRUE;
		}
		#ifdef CONFIG_JPEG_FPGA_TEST_ENABLE
		MMZ_INIT(MMZ_DEV);
		#endif
#else
		if (HI_FALSE == g_stJpegDecompressRes.bOpenTDE) 
		{
			return HI_FAILURE;
		}
#endif

		return HI_SUCCESS;


}

#ifdef CONFIG_JPEG_PROC_ENABLE

/*****************************************************************************
* func			: JPEG_HDEC_SetProcInfo
* description	: set the proc information
				  CNcomment: 设置proc信息		  CNend\n
* param[in] 	: cinfo 	  CNcomment: 解码对象 CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功	  CNend\n
* retval		: HI_FAILURE  CNcomment: 失败	  CNend\n
* others:		: NA
*****************************************************************************/
static HI_S32 JPEG_HDEC_SetProcInfo(const struct jpeg_decompress_struct *cinfo)
{

     HI_S32 s32Ret = HI_SUCCESS;
     HI_JPEG_PROC_INFO_S stProcInfo;

	 const HI_U32 u32InFmt[10]  = {0,1,2,3,4,5,6,7,8,9};
	 const HI_U32 u32OutFmt[20] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19};
	 
     JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

     if(NULL == pJpegHandle->pJpegRegVirAddr)
     {
        return HI_FAILURE;
     }
     stProcInfo.u32YWidth        = pJpegHandle->stJpegSofInfo.u32YWidth;
	 stProcInfo.u32YHeight       = pJpegHandle->stJpegSofInfo.u32YHeight;
	 stProcInfo.u32YSize         = pJpegHandle->stJpegSofInfo.u32YSize;
	 stProcInfo.u32CWidth        = pJpegHandle->stJpegSofInfo.u32CWidth;
	 stProcInfo.u32CHeight       = pJpegHandle->stJpegSofInfo.u32CHeight;
	 stProcInfo.u32CSize         = pJpegHandle->stJpegSofInfo.u32CSize;
	 stProcInfo.u32YStride       = pJpegHandle->stJpegSofInfo.u32YStride;
	 stProcInfo.u32CbCrStride    = pJpegHandle->stJpegSofInfo.u32CbCrStride;
	 stProcInfo.u32DisplayW      = pJpegHandle->stJpegSofInfo.u32DisplayW;
	 stProcInfo.u32DisplayH      = pJpegHandle->stJpegSofInfo.u32DisplayH;
	 stProcInfo.u32DisplayStride = pJpegHandle->stJpegSofInfo.u32DisplayStride;
	 stProcInfo.u32DecW          = pJpegHandle->stJpegSofInfo.u32DecW;
	 stProcInfo.u32DecH          = pJpegHandle->stJpegSofInfo.u32DecH;
	 stProcInfo.u32DecStride     = pJpegHandle->stJpegSofInfo.u32DecStride;
	 stProcInfo.u32DataStartAddr = (HI_U32)JPEG_HDEC_ReadReg(pJpegHandle->pJpegRegVirAddr,JPGD_REG_STADDR);
	 stProcInfo.u32DataEndAddr   = (HI_U32)JPEG_HDEC_ReadReg(pJpegHandle->pJpegRegVirAddr,JPGD_REG_ENDADDR);
	 stProcInfo.u32SaveStartAddr = (HI_U32)JPEG_HDEC_ReadReg(pJpegHandle->pJpegRegVirAddr,JPGD_REG_STADD);
	 stProcInfo.u32SaveEndAddr   = (HI_U32)JPEG_HDEC_ReadReg(pJpegHandle->pJpegRegVirAddr,JPGD_REG_ENDADD);


	 stProcInfo.u32InWidth       = cinfo->image_width;
	 stProcInfo.u32InHeight      = cinfo->image_height;
	 stProcInfo.u32OutWidth      = cinfo->output_width;
	 stProcInfo.u32OutHeight     = cinfo->output_height;
	 stProcInfo.u32OutStride     = pJpegHandle->stOutDesc.stOutSurface.u32OutStride[0];
     stProcInfo.u32InFmt         = u32InFmt[pJpegHandle->enImageFmt];
	 stProcInfo.u32OutFmt        = u32OutFmt[cinfo->out_color_space];
	 stProcInfo.u32OutPhyBuf     = (HI_U32)pJpegHandle->stOutDesc.stOutSurface.pOutPhy[0];
	 if(0 == pJpegHandle->u32ScalRation)
	 {
	     stProcInfo.u32Scale     = 1;
	 }
	 else if(1 == pJpegHandle->u32ScalRation)
	 {
	     stProcInfo.u32Scale     = 2;
	 }
	 else if(2 == pJpegHandle->u32ScalRation)
	 {
	     stProcInfo.u32Scale     = 4;
	 }
	 else
	 {
	      stProcInfo.u32Scale     = 8;
	 }

	 if(DSTATE_START == cinfo->global_state)
	 {	/**
		 **create decompress
		 **/
	     pJpegHandle->eDecState = JPEG_DEC_FINISH_CREATE_DECOMPRESS;
	 }
	 else if(DSTATE_INHEADER == cinfo->global_state)
	 {  /**
		 **read header ready
		 **/
	     pJpegHandle->eDecState = JPEG_DEC_FINISH_READ_HEADER;
	 }
	 else if(DSTATE_SCANNING == cinfo->global_state)
	 {  /**
		 **start decompress ready
		 **/
	     pJpegHandle->eDecState = JPEG_DEC_FINISH_START_DECOMPRESS;
	 }
	 else if(DSTATE_SCANNING == cinfo->global_state)
	 {  /**
		 **read scanlines ready
		 **/
	     pJpegHandle->eDecState = JPEG_DEC_FINISH_READ_SCANLINES;
	 }
	 else if(DSTATE_STOPPING == cinfo->global_state)
	 {
	    /**
		 **finish decompress
		 **/
	     pJpegHandle->eDecState = JPEG_DEC_FINISH_FINISH_DECOMPRESS;
	 }
	 else if(0 == cinfo->global_state)
	 {  /**
		 **destory decompress
		 **/
	     pJpegHandle->eDecState = JPEG_DEC_FINISH_DESTORY_DECOMPRESS;
	 }
	 
	 stProcInfo.eDecState        = pJpegHandle->eDecState;
	 
	 if(HI_TRUE == pJpegHandle->bHdecEnd)
	 {
	    stProcInfo.eDecodeType      = JPEG_DEC_HW;
	 }
	 else
	 {
	    stProcInfo.eDecodeType      = JPEG_DEC_SW;
	 }
	 
	 s32Ret = ioctl(pJpegHandle->s32JpegDev, CMD_JPG_READPROC, &stProcInfo);
     if(HI_SUCCESS != s32Ret)
     {
        return HI_FAILURE;
     }
     return HI_SUCCESS;
	 
}
#endif


/*****************************************************************************
* func			: JPEG_HDEC_CloseDev
* description	: closxe some device that decode need
				  CNcomment: 关闭解码打开的相关设备 	   CNend\n
* param[in] 	: cinfo 		CNcomment: 解码对象    CNend\n
* retval		: HI_SUCCESS	CNcomment: 成功 	   CNend\n
* retval		: HI_FAILURE	CNcomment: 失败 	   CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_CloseDev(const struct jpeg_common_struct *cinfo)
{

		HI_S32 s32Ret = HI_SUCCESS;
		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

#ifdef CONFIG_JPEG_PROC_ENABLE
		s32Ret = JPEG_HDEC_SetProcInfo((j_decompress_ptr)cinfo); /*lint !e740 !e826 ignore by y00181162, because this cast is ok */  
#endif

#ifdef CONFIG_JPEG_TEST_CHIP_RANDOM_RESET
		HI_JPEG_RandomResetInit();
#endif

		if (NULL != pJpegHandle->pJpegRegVirAddr)
		{
			  s32Ret = munmap((void*)pJpegHandle->pJpegRegVirAddr, JPGD_REG_LENGTH);
			  pJpegHandle->pJpegRegVirAddr = NULL;
		}

#ifndef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
		if(HI_TRUE == pJpegHandle->bTDEDevOpen)
		{
			HI_TDE2_Close();
			pJpegHandle->bTDEDevOpen = HI_FALSE;
		}
		#ifdef CONFIG_JPEG_FPGA_TEST_ENABLE
		MMZ_DINIT();
		#endif
#endif

		/**
		 **close jpeg device
		 **/
		if(pJpegHandle->s32JpegDev < 0)
		{
		    return HI_SUCCESS;
		}

		close(pJpegHandle->s32JpegDev);
		pJpegHandle->s32JpegDev = -1;

		if(HI_SUCCESS != s32Ret)
		{
		    return HI_FAILURE;
		}

		return HI_SUCCESS;
		

}

/*****************************************************************************
* func			: JPEG_HDEC_Init
* description	: init the private structure para
                  CNcomment: 初始化私有结构体变量   CNend\n
* param[in] 	: cinfo       CNcomment: 解码对象   CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功  CNend\n
* retval		: HI_FAILURE  CNcomment: 失败  CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_Init(j_common_ptr cinfo)
{

#ifdef CONFIG_JPEG_GETDECTIME
		HI_S32 s32Ret  = HI_SUCCESS;
#endif

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = NULL;

		pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)calloc(1, SIZEOF(JPEG_HDEC_HANDLE_S));
		JPEG_ASSERT((NULL == pJpegHandle), JPEG_ERR_NOMEM);

		/**
		** if use external stream,when dec failure, call start decompress
		** again,do not need call hard decode again
		** CNcomment: 如果使用外部码流，当解码失败的时候会第二次调用解码
		**            就不需要再走硬件了CNend\n
		**/
		pJpegHandle->bFirstDec          =  HI_TRUE;

		pJpegHandle->u32StrideAlign     = JPGD_HDEC_MMZ_ALIGN_16BYTES; /** default the jpeg hard decode is 4bytes align, but tde is need 16bytes align**/

#ifdef CONFIG_JPEG_GETDECTIME
		s32Ret  = HI_GFX_GetTimeStamp(&pJpegHandle->u32DecTime,NULL);
		if(HI_SUCCESS != s32Ret)
		{
			free(pJpegHandle);
			return HI_FAILURE;
		}
#endif
		pJpegHandle->s32ClientData      =  CLIENT_DATA_MARK;
		pJpegHandle->s32JpegDev         =  -1;
		pJpegHandle->u32Inflexion       =  JPGD_HDEC_FLEXION_SIZE;
		pJpegHandle->u32Alpha           =  0xFF;

#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		pJpegHandle->s32MMZDev			=  -1;
#endif

#ifdef CONFIG_JPEG_PROC_ENABLE
		pJpegHandle->eDecState          =  JPEG_DEC_STATE_BUTT;
#endif

		/**
		** the jpeg format
		** CNcomment: 原始jpeg图片格式 CNend\n
		**/
		pJpegHandle->enImageFmt   =  JPEG_FMT_BUTT;

		/**
		** save the jpeg handle pointer
		** CNcomment: 存储jpeg句柄指针 CNend\n
		**/
		cinfo->client_data = (void *)pJpegHandle;


		return HI_SUCCESS;


}

/*****************************************************************************
* func			: JPEG_HDEC_ReleaseRes
* description	: release the resouce
				  CNcomment:  释放资源       CNend\n
* param[in] 	: cinfo 	  CNcomment: 解码对象	CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功  CNend\n
* retval		: HI_FAILURE  CNcomment: 失败  CNend\n
* others:		: NA
*****************************************************************************/
static HI_VOID JPEG_HDEC_ReleaseRes(const struct jpeg_common_struct *cinfo)
{

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);
		/**
		** get the stream mem
		** CNcomment: 获取硬件解码的码流buffer CNend\n
		**/	 
#ifndef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
		JPEG_HDEC_FreeStreamMem(pJpegHandle);
#endif

		JPEG_HDEC_FreeYUVMem(pJpegHandle);

#ifdef CONFIG_JPEG_HARDDEC2ARGB
		if(HI_TRUE == pJpegHandle->bDecARGB)
		{
			JPEG_HDEC_FreeMinMem(pJpegHandle);
		}
#endif

		JPEG_HDEC_FreeOutMem(pJpegHandle);

		if(NULL != pJpegHandle->stJpegHtoSInfo.pLeaveBuf)
		{
			free(pJpegHandle->stJpegHtoSInfo.pLeaveBuf);
		}

#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		if(pJpegHandle->s32MMZDev >= 0)
		{
			close(pJpegHandle->s32MMZDev);
		}
#endif

}

/*****************************************************************************
* func			: JPEG_HDEC_Destroy
* description	: dinit the private structure para
				  CNcomment:  销毁硬件解码器        CNend\n
* param[in] 	: cinfo 	  CNcomment: 解码对象	CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功  CNend\n
* retval		: HI_FAILURE  CNcomment: 失败  CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_Destroy(const struct jpeg_common_struct *cinfo)
{


		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);
		if (NULL == pJpegHandle)
		{
			return HI_SUCCESS;
		}
		/**
		 ** if memory leak, take out this check
		 ** CNcomment: 要是有内存释放问题，去掉该判断 CNend\n
		 **/
		if(HI_FALSE == pJpegHandle->bReleaseRes)
		{
			JPEG_HDEC_ReleaseRes(cinfo);
		}

		free(pJpegHandle);
		pJpegHandle = NULL;

		return HI_SUCCESS;
		 
}
/*****************************************************************************
* func			: JPEG_HDEC_Abort
* description	: when want use the decompress again,call this
				  CNcomment:  如果想继续使用解码器，调用该接口 CNend\n
* param[in] 	: cinfo 	  CNcomment: 解码对象	           CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功  CNend\n
* retval		: HI_FAILURE  CNcomment: 失败  CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_Abort(const struct jpeg_common_struct *cinfo)
{
#ifdef CONFIG_JPEG_GETDECTIME
		HI_S32 s32Ret  = HI_SUCCESS;
#endif

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);
		if (NULL == pJpegHandle)
		{
			return HI_SUCCESS;
		}

	   /**
		** if memory leak, take out this check
		** CNcomment: 要是有内存释放问题，去掉该判断 CNend\n
		**/
		if(HI_FALSE == pJpegHandle->bReleaseRes)
		{
			JPEG_HDEC_ReleaseRes(cinfo);
		}

		/**
		** dinit the para, these are the same as init para value
		** CNcomment: 去初始化变量的值，保证和初始化变量的值保持一致 CNend\n
		**/
		memset(pJpegHandle,0,sizeof(JPEG_HDEC_HANDLE_S));		
		pJpegHandle->bReleaseRes        =  HI_TRUE;
		

		pJpegHandle->bFirstDec			=  HI_TRUE;
		pJpegHandle->u32StrideAlign 	= JPGD_HDEC_MMZ_ALIGN_16BYTES;

#ifdef CONFIG_JPEG_GETDECTIME
		s32Ret	= HI_GFX_GetTimeStamp(&pJpegHandle->u32DecTime,NULL);
		if(HI_SUCCESS != s32Ret)
		{
			free(pJpegHandle);
			return HI_FAILURE;
		}
#endif
		pJpegHandle->s32ClientData	 =  CLIENT_DATA_MARK;
		pJpegHandle->s32JpegDev 	 =  -1;

#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		pJpegHandle->s32MMZDev		 =  -1;
#endif

		pJpegHandle->u32Inflexion	 =  JPGD_HDEC_FLEXION_SIZE;
		pJpegHandle->u32Alpha		 =  0xFF;

#ifdef CONFIG_JPEG_PROC_ENABLE
		pJpegHandle->eDecState		 =  JPEG_DEC_STATE_BUTT;
#endif

		pJpegHandle->enImageFmt      =  JPEG_FMT_BUTT;

		return HI_SUCCESS;
		 
}

/*****************************************************************************
* func			: JPEG_HDEC_CheckCropSurface
* description	: check the crop rect whether is reasonable
				  CNcomment: 判断裁剪区域是否合理 CNend\n
* param[in] 	: cinfo 	  CNcomment: 解码对象 CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID JPEG_HDEC_CheckCropSurface(const struct jpeg_decompress_struct *cinfo)
{

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);
		if(  (pJpegHandle->stOutDesc.stCropRect.w <= 0) || (pJpegHandle->stOutDesc.stCropRect.h <= 0)
		   ||(pJpegHandle->stOutDesc.stCropRect.x < 0)  ||  (pJpegHandle->stOutDesc.stCropRect.y < 0)
		   ||((HI_U32)(pJpegHandle->stOutDesc.stCropRect.x + pJpegHandle->stOutDesc.stCropRect.w) > cinfo->output_width)
		   ||((HI_U32)(pJpegHandle->stOutDesc.stCropRect.y + pJpegHandle->stOutDesc.stCropRect.h) > cinfo->output_height))
		{
			ERREXIT(cinfo, JERR_CROP_CANNOT_SUPPORT);  /*lint !e740  ignore by y00181162, because this function is macro */ 
		}

}

/*****************************************************************************
* func			: JPEG_HDEC_IfSupport
* description	: check whether the hard decode support
				  CNcomment: 判断是否支持硬件解码 CNend\n
* param[in] 	: cinfo 	  CNcomment: 解码对象 CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功	  CNend\n
* retval		: HI_FAILURE  CNcomment: 失败	  CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_IfSupport(j_decompress_ptr cinfo)
{

		HI_U32 u32ImageSize	   = 0; /**< the jpeg picture size  *//**<CNcomment:图片大小         */
		HI_S32 s32RetVal		   = HI_FAILURE;
#ifdef CONFIG_JPEG_DEBUG_INFO
	#ifdef CONFIG_JPEG_ANDROID_DEBUG_ENABLE
		HI_CHAR JpegDecMod[256]   = {0}; /**< select jpeg decode module   *//**<CNcomment:选择解码方式  */
	#else
		HI_CHAR *pJpegDecMod       = NULL;
	#endif
#endif

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

		/**
		 ** at hard decode, we check this message only once just ok 
		 ** because only one program can operation,and if the message
		 ** is wrong, the hardware can not support, so the followed 
		 ** can not operation
		 ** CNcomment: 硬件解码过程只判断一次，假如这个值被改变了，要么使用内部的退出函数
		 **            退出整个应用，要么使用用户回调的错误管理函数结束该张图片解码 CNend\n
		 **/
		if(CLIENT_DATA_MARK != pJpegHandle->s32ClientData)
		{
			ERREXIT(cinfo, JERR_CLIENT_DATA_ERR); /*lint !e740  ignore by y00181162, because this function is macro */  
		}

#ifdef CONFIG_JPEG_TEST_CHIP_RANDOM_RESET
		HI_JPEG_RandomResetInit();
#endif

		JPEG_HDEC_GetImagInfo(cinfo);
		JPEG_ASSERT((pJpegHandle->u32ScalRation > 3), JPEG_ERR_UNSUPPORT_SCALE);

		if(HI_TRUE == pJpegHandle->stOutDesc.bCrop)
		{
			JPEG_HDEC_CheckCropSurface(cinfo);
		}

	   /**
		** the leave stream dispose
		** CNcomment: 剩余码流处理 CNend\n
		**/
		if(HI_TRUE == pJpegHandle->stHDecDataBuf.bUseFileData)
		{
			pJpegHandle->stJpegHtoSInfo.pLeaveBuf  = (HI_CHAR*)calloc(1, INPUT_BUF_SIZE);
			if(NULL == pJpegHandle->stJpegHtoSInfo.pLeaveBuf)
			{
				return HI_FAILURE;
			}
		}

		pJpegHandle->bReleaseRes =  HI_FALSE;

#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		pJpegHandle->s32MMZDev = open(MMZ_DEV, O_RDWR);
		if(pJpegHandle->s32MMZDev < 0)
		{
			return HI_FAILURE; 
		}
#endif
		/**
		 ** get the stream mem
		 ** CNcomment: 获取硬件解码的码流buffer CNend\n
		 **/	
#ifndef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
		s32RetVal = JPEG_HDEC_GetStreamMem(pJpegHandle,JPGD_HARD_BUFFER);
		if(HI_SUCCESS != s32RetVal)
		{
			ERREXIT(cinfo, JERR_MMZ_STREAM_MEM_LACK);  /*lint !e740  ignore by y00181162, because this function is macro */  
		}
#else
		if(NULL == g_stJpegDecompressRes.pStreamPhyBuf)
		{
			ERREXIT(cinfo, JERR_MMZ_STREAM_MEM_LACK); /*lint !e740  ignore by y00181162, because this function is macro */  
		}
		pJpegHandle->stHDecDataBuf.pSaveStreamPhyBuf = g_stJpegDecompressRes.pStreamPhyBuf;
		pJpegHandle->stHDecDataBuf.pSaveStreamVirBuf = g_stJpegDecompressRes.pStreamVirBuf;
		pJpegHandle->stHDecDataBuf.u32ReadDataSize	 = JPGD_STREAM_BUFFER;
#endif

		/**
		** get the middle mem
		** CNcomment: 获取硬件解码的中间buffer CNend\n
		**/	
		s32RetVal = JPEG_HDEC_GetYUVMem(pJpegHandle);
		if(HI_SUCCESS != s32RetVal)
		{
			ERREXIT(cinfo, JERR_MMZ_YUV_MEM_LACK); /*lint !e740  ignore by y00181162, because this function is macro */  
		}

#ifdef CONFIG_JPEG_HARDDEC2ARGB
		if(HI_TRUE == pJpegHandle->bDecARGB)
		{
			s32RetVal = JPEG_HDEC_GetMinMem(pJpegHandle);
			if(HI_SUCCESS != s32RetVal)
			{
				ERREXIT(cinfo, JERR_MMZ_YUV_MEM_LACK); /*lint !e740  ignore by y00181162, because this function is macro */  
			}
		}
#endif

		s32RetVal = JPEG_HDEC_GetOutMem(cinfo);
		if(HI_SUCCESS != s32RetVal)
		{
			ERREXIT(cinfo, JERR_MMZ_OUT_MEM_LACK); /*lint !e740  ignore by y00181162, because this function is macro */  
		}
		
#ifdef CONFIG_JPEG_DEBUG_INFO
	#ifdef CONFIG_JPEG_ANDROID_DEBUG_ENABLE
			/**
			** how to use this, when run android,you can get default value = "hw",
			** so when you not run( setprop JPEGDECMOD soft(or other char valu) ),is all run hard decode
			** CNcomment:android程序运行过程中,首先获取默认的值hw，要是运行
			** 过程中没有setprop JPEGDECMOD soft(除了hw字符) 就一直是hw值了 CNend\n
			**/
			property_get("JPEGDECMOD",JpegDecMod,"hw");
			if(0 != strncmp("hw", JpegDecMod, strlen("hw")>strlen(JpegDecMod)?strlen("hw"):strlen(JpegDecMod)))
			{
				JPEG_TRACE("=== force to soft decode !\n");
				return HI_FAILURE;
			}
	#else
			/**
			**use the export entironment var
			**export JPEGDECMOD=soft 软件解码
			**默认硬件解码支持走硬件解码
			**/
			pJpegDecMod = getenv( "JPEGDECMOD" );
			if(pJpegDecMod && 0 == strncmp("soft", pJpegDecMod, strlen("soft")>strlen(pJpegDecMod)?strlen("soft"):strlen(pJpegDecMod)))
			{ 
				JPEG_TRACE("=== force to soft decode !\n");
				return HI_FAILURE;
			}
	#endif
#endif

		/**
		** the hard decode support resolution
		** CNcomment: 硬件支持的解码分辨率 CNend\n
		**/
		if (	(cinfo->image_width  < 1)
			|| (cinfo->image_width  > 8192)
			|| (cinfo->image_height < 1)
			|| (cinfo->image_height > 8192))
		{
			return HI_FAILURE;
		}

		/**
		** Get the image inflexion, use hardwire decode or soft decode
		** CNcomment: 获取软解和硬解的拐点 CNend\n
		**/
		u32ImageSize = cinfo->image_width * cinfo->image_height;
		if(u32ImageSize <= pJpegHandle->u32Inflexion)
		{
			return HI_FAILURE;
		}

		/**
		** the CMYK and YCCK color space,the hard decode can not support
		** JCS_YCbCr TDE not support
		** CNcomment: 这两种图像格式硬件解码不支持，TDE不支持JCS_YCbCr转换 CNend\n
		**/
		if(   (JCS_CMYK  == cinfo->jpeg_color_space)
			||(JCS_YCCK  == cinfo->jpeg_color_space)
			||(JCS_YCbCr == cinfo->out_color_space))
		{
			return HI_FAILURE;
		}

		/**
		** progressive, arith code ,data_prcidion !=8, cann't use hard decode 
		** CNcomment: progressive arith code data_prcidion !=8硬件不支持 CNend\n
		**/
		if(	(FALSE != cinfo->progressive_mode) ||(FALSE != cinfo->arith_code) ||(8 != cinfo->data_precision))
		{
			return HI_FAILURE;
		}

		/**
		** if the jpeg image have not any dqt table,we use standard table
		** CNcomment:要是jpeg文件没有带量化表就使用标准量化表 CNend\n
		**/
#ifndef CONFIG_JPEG_MPG_DEC_ENABLE
		if(NULL == cinfo->quant_tbl_ptrs[0])
		{
			ERREXIT(cinfo, JERR_NO_QUANT_TABLE); /*lint !e740 ignore by y00181162, because this is needed */
		}
#endif
		/**
		** if the jpeg image have not  huff table,we use standard table
		** CNcomment:要是jpeg文件没有带哈夫曼表就使用标准哈夫曼表 CNend\n
		**/
#ifndef CONFIG_JPEG_MPG_DEC_ENABLE
		if (	(NULL == cinfo->dc_huff_tbl_ptrs[0]) || (NULL != cinfo->dc_huff_tbl_ptrs[2]) 
			 || (NULL == cinfo->ac_huff_tbl_ptrs[0]) || (NULL != cinfo->ac_huff_tbl_ptrs[2]) )
		{
			ERREXIT(cinfo, JERR_BAD_HUFF_TABLE); /*lint !e740 ignore by y00181162, because this is needed */
		}
#endif
		 
		return HI_SUCCESS;
		 

}

/*****************************************************************************
* func			: JPEG_HDEC_Start
* description	: start jpeg hard decode
				  CNcomment: 开始硬件解码
* param[in] 	: cinfo 	  CNcomment: 解码对象  CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功	   CNend\n
* retval		: HI_FAILURE  CNcomment: 失败	   CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_Start(j_decompress_ptr cinfo)
{

		HI_S32 s32RetVal	=  HI_FAILURE;

#ifdef CONFIG_JPEG_OUTPUT_LUPIXSUM
		HI_U32 u32RegistLuaPixSum0 = 0;
		HI_U64 u64RegistLuaPixSum1 = 0;
#endif

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);


		/**
		** set parameter thar hard decode need
		** CNcomment:配置硬件解码需要的参数 CNend\n
		**/
		s32RetVal = JPEG_HDEC_SetPara(cinfo);
		if(HI_SUCCESS != s32RetVal)
		{
			return HI_FAILURE;
		}

		/**
		 ** send the stream to hard register to start dec
		 ** CNcomment:将码流送给硬件寄存器开始解码 CNend\n
		 **/
		if(HI_FALSE == pJpegHandle->stHDecDataBuf.bUseInsideData)
		{
			s32RetVal = JPEG_HDEC_SendStreamFromCallBack(cinfo);
		}
		else
		{
			if(HI_TRUE == pJpegHandle->stHDecDataBuf.bUserPhyMem)
			{
				s32RetVal = JPEG_HDEC_SendStreamFromPhyMem(cinfo);
			}
			else if(HI_TRUE == pJpegHandle->stHDecDataBuf.bUseFileData)
			{
				s32RetVal = JPEG_HDEC_SendStreamFromFile(cinfo);
			}
			else
			{
				s32RetVal = JPEG_HDEC_SendStreamFromVirMem(cinfo);
			}
		}

		if(HI_FAILURE == s32RetVal)
		{
			 return HI_FAILURE;
		}


		#ifdef CONFIG_JPEG_OUTPUT_LUPIXSUM
		/**
		 ** get the lu pixle value
		 ** CNcomment: 获取亮度值大小 CNend\n
		 **/
		if(HI_TRUE == pJpegHandle->bLuPixSum)
		{
		   	u32RegistLuaPixSum0 = (HI_U32)JPEG_HDEC_ReadReg(pJpegHandle->pJpegRegVirAddr,JPGD_REG_LPIXSUM0);
			u64RegistLuaPixSum1 = (HI_U64)(JPEG_HDEC_ReadReg(pJpegHandle->pJpegRegVirAddr,JPGD_REG_LPIXSUM1) & 0xf);
			pJpegHandle->u64LuPixValue = (HI_U64)((u64RegistLuaPixSum1<<32) | u32RegistLuaPixSum0);
		}
        #endif
		
		/**
		 ** the jpeg hard decode finish
		 ** CNcomment: jpeg硬件解码完成 CNend\n
		 **/	
		pJpegHandle->bHdecEnd  = HI_TRUE;

#ifdef CONFIG_JPEG_TEST_SAVE_YUVSP_DATA
		HI_JPEG_SaveYUVSP(cinfo);
#endif

#ifdef CONFIG_JPEG_TEST_CHIP_RANDOM_RESET
		HI_JPEG_SetDecState(HI_TRUE);
#endif

		return HI_SUCCESS;
		
}

/*****************************************************************************
* func			: JPEG_HDEC_HardCSC
* description	: use hard csc
				  CNcomment: 使用硬件进行颜色空间转换 CNend\n
* param[in] 	: cinfo 	 CNcomment: 解码对象 CNend\n
* retval		: HI_SUCCESS CNcomment: 成功	 CNend\n
* retval		: HI_FAILURE CNcomment: 失败	 CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_HardCSC(j_decompress_ptr cinfo)
{

		/** have set value,so should not init **/
		TDE2_MB_S		SrcSurface;
		TDE2_SURFACE_S	DstSurface;
		TDE2_RECT_S  SrcRect,DstRect;

		TDE2_MBOPT_S  stMbOpt;
		TDE_HANDLE s32Handle;
		HI_S32 s32Ret   =  HI_SUCCESS;

		TDE2_MB_COLOR_FMT_E enMbFmt[6] = 
		{
			TDE2_MB_COLOR_FMT_JPG_YCbCr400MBP,
			TDE2_MB_COLOR_FMT_JPG_YCbCr420MBP,
			TDE2_MB_COLOR_FMT_JPG_YCbCr422MBHP,
			TDE2_MB_COLOR_FMT_JPG_YCbCr422MBVP,
			TDE2_MB_COLOR_FMT_JPG_YCbCr444MBP,
			TDE2_MB_COLOR_FMT_BUTT,
		};

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

#ifdef  CONFIG_JPEG_HARDDEC2ARGB
		if(   (HI_TRUE == pJpegHandle->bOutYCbCrSP)
			||(HI_TRUE == pJpegHandle->bDecARGB)
			||(HI_TRUE == pJpegHandle->bCSCEnd))
#else
		if( (HI_TRUE == pJpegHandle->bOutYCbCrSP)||(HI_TRUE == pJpegHandle->bCSCEnd))
#endif
		{/**
		** no need tde csc,only add the sanlines
		** CNcomment: 不需要TDE转换了，只需要增加行数 CNend\n
		**/
			return HI_SUCCESS;
		}

		/**
		** if has image quality quest,you should change the tde coef
		** CNcomment: 如果有图片质量的需求就要通过make menuconfig来修改TDE系数，默认没有分配好内存 CNend\n
		**/

		/**
		** src data from jpeg hard dec output
		** CNcomment: jpeg 硬件解码的输出数据 CNend\n
		**/
		SrcSurface.u32YPhyAddr	  = (HI_U32)(pJpegHandle->stMiddleSurface.pMiddlePhy[0]);
		SrcSurface.u32CbCrPhyAddr = (HI_U32)(pJpegHandle->stMiddleSurface.pMiddlePhy[1]);
		SrcSurface.enMbFmt	      = enMbFmt[pJpegHandle->enImageFmt];
		SrcSurface.u32YWidth	  = pJpegHandle->stJpegSofInfo.u32DisplayW;
		SrcSurface.u32YHeight     = pJpegHandle->stJpegSofInfo.u32DisplayH;
		SrcSurface.u32YStride     = pJpegHandle->stJpegSofInfo.u32YStride;
		SrcSurface.u32CbCrStride  = pJpegHandle->stJpegSofInfo.u32CbCrStride;

#if 0
		JPEG_TRACE("============================================================================\n");
        /** crop debug **/
		JPEG_TRACE("SrcSurface.u32YWidth      = %d\n",SrcSurface.u32YWidth);
		JPEG_TRACE("SrcSurface.u32YHeight     = %d\n",SrcSurface.u32YHeight);
		JPEG_TRACE("SrcSurface.u32YStride     = %d\n",SrcSurface.u32YStride);
		JPEG_TRACE("SrcSurface.u32CbCrStride  = %d\n",SrcSurface.u32CbCrStride);
		JPEG_TRACE("============================================================================\n");
#endif
		/**
		** tde csc output data,not use memset, because the memset cost many times.
		** CNcomment: tde转换之后的输出数据 CNend\n
		**/
		switch(cinfo->out_color_space)
		{
			case JCS_RGB:
				DstSurface.enColorFmt    = TDE2_COLOR_FMT_BGR888;
				cinfo->output_components = 3;
				break; 
			case JCS_BGR:
				DstSurface.enColorFmt	 = TDE2_COLOR_FMT_RGB888;
				cinfo->output_components = 3;
				break; 
			case JCS_ARGB_8888:
				DstSurface.enColorFmt	 = TDE2_COLOR_FMT_ABGR8888;
				cinfo->output_components = 4;
				break;
			case JCS_ABGR_8888:
				DstSurface.enColorFmt	 = TDE2_COLOR_FMT_ARGB8888;
				cinfo->output_components = 4;
				break;
			case JCS_ARGB_1555:
				DstSurface.enColorFmt	 = TDE2_COLOR_FMT_ABGR1555;
				cinfo->output_components = 2;
				break;
			case JCS_ABGR_1555:
				DstSurface.enColorFmt	 = TDE2_COLOR_FMT_ARGB1555;
				cinfo->output_components = 2;
				break;
			case JCS_RGB_565:
				DstSurface.enColorFmt    = TDE2_COLOR_FMT_BGR565;
				cinfo->output_components = 2;
				break;
			case JCS_BGR_565:
				DstSurface.enColorFmt	  = TDE2_COLOR_FMT_RGB565;
				cinfo->output_components = 2;
				break;
			case JCS_CrCbY:
				DstSurface.enColorFmt    = TDE2_COLOR_FMT_YCbCr888;
				cinfo->output_components = 3;
				break; 
			default:
				return HI_FAILURE;
		}

		DstSurface.u32PhyAddr 	  = (HI_U32)pJpegHandle->stMiddleSurface.pOutPhy;
		DstSurface.u32Stride	  = pJpegHandle->stJpegSofInfo.u32DisplayStride; /** if crop, this is crop stride **/
		DstSurface.u32Width		  = (HI_U32)pJpegHandle->stOutDesc.stCropRect.w;
		DstSurface.u32Height      = (HI_U32)pJpegHandle->stOutDesc.stCropRect.h;
		DstSurface.pu8ClutPhyAddr = NULL;
		DstSurface.bYCbCrClut 	  = HI_FALSE;
		DstSurface.bAlphaMax255	  = HI_TRUE;
		DstSurface.bAlphaExt1555  = HI_TRUE;
		DstSurface.u8Alpha0		  = 0;
		DstSurface.u8Alpha1		  = 255;
		DstSurface.u32CbCrPhyAddr = 0;
		DstSurface.u32CbCrStride  = 0;

		/**
		 ** if the rect equal with the output size, that has been crop.other has no crop.
		 ** CNcomment:是否有裁剪是看rect大小,要是和输出大小保持一致就没有裁剪 CNend\n
		 **/
		SrcRect.s32Xpos   = pJpegHandle->stOutDesc.stCropRect.x;
		SrcRect.s32Ypos   = pJpegHandle->stOutDesc.stCropRect.y;
		SrcRect.u32Width  = (HI_U32)pJpegHandle->stOutDesc.stCropRect.w;
		SrcRect.u32Height = (HI_U32)pJpegHandle->stOutDesc.stCropRect.h;
		DstRect.s32Xpos   = 0;
		DstRect.s32Ypos   = 0;
		DstRect.u32Width  = (HI_U32)pJpegHandle->stOutDesc.stCropRect.w;
		DstRect.u32Height = (HI_U32)pJpegHandle->stOutDesc.stCropRect.h;

#if 0
		JPEG_TRACE("============================================================================\n");
        /** crop debug **/
		JPEG_TRACE("DstSurface.u32Width  = %d\n",DstSurface.u32Width);
		JPEG_TRACE("DstSurface.u32Height = %d\n",DstSurface.u32Height);
		JPEG_TRACE("DstSurface.u32Stride = %d\n",DstSurface.u32Stride);
		JPEG_TRACE("DstRect.s32Xpos      = %d\n",DstRect.s32Xpos);
		JPEG_TRACE("DstRect.s32Ypos      = %d\n",DstRect.s32Ypos);
		JPEG_TRACE("DstRect.u32Width     = %d\n",DstRect.u32Width);
		JPEG_TRACE("DstRect.u32Height    = %d\n",DstRect.u32Height);
		JPEG_TRACE("============================================================================\n");
#endif
		/**
		**这个操作性能会变差，但是消告警
		**/
		memset(&stMbOpt,0,sizeof(TDE2_MBOPT_S));
		stMbOpt.enResize   = TDE2_MBRESIZE_QUALITY_LOW;
		stMbOpt.bDeflicker = HI_TRUE;
		
		if ((s32Handle = HI_TDE2_BeginJob()) != HI_ERR_TDE_INVALID_HANDLE)
		{
			s32Ret = HI_TDE2_MbBlit(s32Handle, &SrcSurface, &SrcRect, &DstSurface, &DstRect, &stMbOpt);
			if(HI_SUCCESS != s32Ret)
			{
			    JPEG_TRACE("==== HI_TDE2_MbBlit Failure!\n");
				JPEG_TRACE("==== s32Ret = 0x%x\n",s32Ret);
				return HI_FAILURE;
			}
			/**
			** if HI_TRUE,is no sync. and HI_FALSE you should call tde wait for done to
			** waite the tde work finish.
			** CNcomment:HI_TRUE 阻塞，要是非阻塞要调用waitfordone等待TDE操作完成 CNend\n
			**/
			s32Ret = HI_TDE2_EndJob(s32Handle, HI_FALSE, HI_TRUE, 10000);
			if(HI_SUCCESS != s32Ret)
			{
			    JPEG_TRACE("==== HI_TDE2_EndJob Failure!\n");
				JPEG_TRACE("==== s32Ret = 0x%x\n",s32Ret);
				return HI_FAILURE;
			}
		}

		pJpegHandle->bCSCEnd = HI_TRUE;

#ifdef CONFIG_JPEG_TEST_SAVE_BMP_PIC
		HI_JPEG_SaveBmp(DstSurface.u32PhyAddr, \
						DstRect.u32Width,      \
						DstRect.u32Height,     \
						DstSurface.u32Stride,  \
						cinfo);
#endif

		return HI_SUCCESS;
		  

}
/*****************************************************************************
* func			: JPEG_HDEC_OutUserBuf
* description	: output the scanlines buffer
				  CNcomment:  输出到用户行buffer中 CNend\n
* param[in] 	: cinfo 	 CNcomment:  解码对象  CNend\n
* param[out] 	: max_lines  CNcomment:  解码行数  CNend\n
* param[out]	: scanlines  CNcomment:  行buffer  CNend\n
* retval		: HI_SUCCESS CNcomment:  成功	   CNend\n
* retval		: HI_FAILURE CNcomment:  失败	   CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_OutUserBuf(j_decompress_ptr cinfo,JDIMENSION max_lines, HI_CHAR *scanlines)
{


		HI_U32 u32Cnt            = 0;
		HI_U32 u32Stride         = 0;
		HI_S32 s32BufSrcLength  = 0;
		HI_CHAR *pDstBuf         = NULL;
		HI_CHAR *pSrcBuf         = NULL;

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

		if ((max_lines+(cinfo->output_scanline)) > (cinfo->output_height))
		{
			max_lines = (cinfo->output_height) - (cinfo->output_scanline);
		}
		if(    (HI_FALSE == pJpegHandle->bCSCEnd)
			|| (HI_TRUE == pJpegHandle->stOutDesc.stOutSurface.bUserPhyMem))
		{  
			/**
			** not use tde convert or use physics buffer,so not output the usr buffer
			** CNcomment: tde转换失败或者使用物理内存，所以不需要输出到用户buffer中 CNend\n
			**/
			for(u32Cnt=0; u32Cnt<max_lines; u32Cnt++)
			{
				(cinfo->output_scanline)++;
			}
			return (HI_S32)max_lines;
		}
		
		if(   (HI_TRUE == pJpegHandle->stOutDesc.bCrop)
			&&( ((HI_S32)(cinfo->output_scanline) < pJpegHandle->stOutDesc.stCropRect.y)
			   ||((HI_S32)(cinfo->output_scanline+1) > (pJpegHandle->stOutDesc.stCropRect.h + pJpegHandle->stOutDesc.stCropRect.y))))
		{
			for(u32Cnt=0; u32Cnt<max_lines; u32Cnt++)
			{
				(cinfo->output_scanline)++;
			}
			return (HI_S32)max_lines;
		}
		
		/**
		** is not set output description,so is output scanlines buffer
		** CNcomment:说明没有设置解码输出的属性，是输出到行buffer中 CNend\n
		**/
		u32Stride  = pJpegHandle->stJpegSofInfo.u32DisplayStride;
        
		pSrcBuf   = pJpegHandle->stMiddleSurface.pOutVir + ((HI_S32)cinfo->output_scanline - pJpegHandle->stOutDesc.stCropRect.y) * (HI_S32)(u32Stride);
		if(NULL != scanlines)
		{
			pDstBuf   = scanlines;
		}
		else
		{
			pDstBuf   = pJpegHandle->stOutDesc.stOutSurface.pOutVir[0] + ((HI_S32)cinfo->output_scanline - pJpegHandle->stOutDesc.stCropRect.y) * (HI_S32)(u32Stride);
		}
		/**
		** data size in reality
		** CNcomment: 实际的数据大小 CNend\n
		**/
		s32BufSrcLength = (cinfo->output_components) * (pJpegHandle->stOutDesc.stCropRect.w);
		for(u32Cnt = 0; u32Cnt < max_lines; u32Cnt++)
		{
			memcpy(pDstBuf,pSrcBuf,(size_t)s32BufSrcLength);
			(cinfo->output_scanline)++;
		}

#if 0
		if(cinfo->output_scanline == pJpegHandle->stOutDesc.stCropRect.h - 1)
		{
			JPEG_TRACE("============================================================================\n");
			JPEG_TRACE("s32BufSrcLength  = %d\n",s32BufSrcLength);
			JPEG_TRACE("u32Stride        = %d\n",u32Stride);
			JPEG_TRACE("============================================================================\n");
		}
#endif

		return (HI_S32)max_lines;

}
/*****************************************************************************
* func			: JPEG_HDEC_DuplicateStreamInfo
* description	: save the stream information before into hard decode
				  CNcomment: 在进入硬件解码之前保存码流信息，包括码流位置
				  剩余的码流以及剩余码流数。
* param[in] 	: cinfo 	  CNcomment: 解码对象  CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功	   CNend\n
* retval		: HI_FAILURE  CNcomment: 失败	   CNend\n
* others:		: NA
*****************************************************************************/
HI_S32	JPEG_HDEC_DuplicateStreamInfo(const struct jpeg_decompress_struct *cinfo)
{

	    
		my_src_ptr src = (my_src_ptr)cinfo->src; /*lint !e740 !e826 ignore by y00181162, because this is needed */  

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

#if 0
		if(   (HI_TRUE == pJpegHandle->stHDecDataBuf.bUseFileData)
			||(HI_FALSE == pJpegHandle->stHDecDataBuf.bUseInsideData) )
#else
		if(HI_TRUE == pJpegHandle->stHDecDataBuf.bUseFileData)
#endif
		{  /**
			** only use file stream or use external stream should save the data.
			** because the mem stream decode, the hard has no change the 
			** cinfo->src->next_input_byte buffer and leave data.
			** CNcomment: 使用文件码流才需要回退，因为内存码流硬件解码的时候
			**            没有使用cinfo->src->next_input_byte这块临时buffer以及
			**            没有改变cinfo->src->bytes_in_buffer剩余码流大小 CNend\n
			**/
			pJpegHandle->stJpegHtoSInfo.u32FilePos = (HI_U32)ftell(src->infile);
			memcpy(pJpegHandle->stJpegHtoSInfo.pLeaveBuf,	\
			(char*)cinfo->src->next_input_byte,		\
			cinfo->src->bytes_in_buffer);
			pJpegHandle->stJpegHtoSInfo.u32LeaveByte = cinfo->src->bytes_in_buffer;

		}

		return HI_SUCCESS;

}

/*****************************************************************************
* func			: JPEG_HDEC_ResumeStreamInfo
* description	: resume the stream information when hard decode failure,and
				  then into soft decode
				  CNcomment: 当硬件解码失败的时候恢复原先保存的码流信息，然后
				  继续进行软件解码
* param[in] 	: cinfo 	  CNcomment: 解码对象  CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功	   CNend\n
* retval		: HI_FAILURE  CNcomment: 失败	   CNend\n
* others:		: NA
*****************************************************************************/
HI_S32	JPEG_HDEC_ResumeStreamInfo(j_decompress_ptr cinfo)
{



		HI_S32 s32Ret;
		my_src_ptr src = (my_src_ptr) cinfo->src; /*lint !e740 !e826 ignore by y00181162, because this is needed */  

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

#if 0
		if(HI_FALSE == pJpegHandle->stHDecDataBuf.bUseInsideData)
		{
		    memcpy((char*)cinfo->src->next_input_byte,		   \
				   pJpegHandle->stJpegHtoSInfo.pLeaveBuf,	   \
				   pJpegHandle->stJpegHtoSInfo.u32LeaveByte);

		    cinfo->src->bytes_in_buffer = pJpegHandle->stJpegHtoSInfo.u32LeaveByte;
			
		    return HI_SUCCESS;
		}
#endif
		if(HI_TRUE == pJpegHandle->stHDecDataBuf.bUseFileData)
		{
			s32Ret = fseek(src->infile,(long)pJpegHandle->stJpegHtoSInfo.u32FilePos,SEEK_SET);
			if(HI_SUCCESS != s32Ret)
			{ /**
			   ** the stream back failure,not soft decode again
			   ** CNcomment: 码流回退错误，不需要在进行软件解码了 CNend\n
			   **/
				ERREXIT(cinfo, JERR_STREAM_BACK_FAILURE); /*lint !e740  ignore by y00181162, because this function is macro */  
			}
			memcpy((char*)cinfo->src->next_input_byte,		   \
				   pJpegHandle->stJpegHtoSInfo.pLeaveBuf,	   \
				   pJpegHandle->stJpegHtoSInfo.u32LeaveByte);
			
			cinfo->src->bytes_in_buffer = pJpegHandle->stJpegHtoSInfo.u32LeaveByte;
			
		}

		return HI_SUCCESS;
		
}
/*****************************************************************************
* func			: JPEG_HDEC_CheckStreamMemType
* description	: check the stream buffer type, if user no call the function
				  of set stream buffer type,call this function
				  CNcomment: 查询码流buffer类型，是连续的物理内存，还是虚拟
				  内存，要是用户没有调用设置码流buffer类型，调用该接口
* param[in] 	: cinfo 	  CNcomment: 解码对象  CNend\n
* param[in] 	: pVirBuf	  CNcomment: 虚拟内存  CNend\n
* retval		: HI_SUCCESS  CNcomment: 成功	   CNend\n
* retval		: HI_FAILURE  CNcomment: 失败	   CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_CheckStreamMemType(const struct jpeg_decompress_struct *cinfo,HI_UCHAR* pVirBuf)
{
     HI_U32 u32Size     = 0;
	 HI_S32 s32Ret      = HI_SUCCESS;
	 HI_U32 u32PhyAddr  = 0;

	 JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

	 #ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
     s32Ret = HI_GFX_GetPhyaddr(pJpegHandle->s32MMZDev,(HI_VOID*)pVirBuf, &u32PhyAddr,&u32Size);
	 #else
	 s32Ret = HI_GFX_GetPhyaddr((HI_VOID*)pVirBuf, &u32PhyAddr,&u32Size);
	 #endif
	 if(HI_SUCCESS == s32Ret)
	 {
          pJpegHandle->stHDecDataBuf.bUserPhyMem = HI_TRUE;
		  pJpegHandle->stHDecDataBuf.pDataPhyBuf = (HI_CHAR*)u32PhyAddr;
		  return HI_SUCCESS;
	 }
	 else
	 {
	     return HI_FAILURE;
	 }
	 
}
