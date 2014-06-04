/******************************************************************************

  Copyright (C), 2013-2020, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpeg_hdec_mem.h
Version		    : Initial Draft
Author		    : 
Created		    : 2013/06/20
Description	    : the mem mangage
                  CNcomment: 内存管理 CNend\n
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2013/06/20		    y00181162  		    Created file      	
******************************************************************************/
#ifndef __JPEG_HDEC_MEM_H__
#define __JPEG_HDEC_MEM_H__


/*********************************add include here******************************/

#include  "jpeglib.h"
#include  "hi_type.h"

#include "jpeg_hdec_api.h"
#include "hi_jpeg_config.h"


/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C" 
{
#endif
#endif /* __cplusplus */


    /***************************** Macro Definition ******************************/
    /** \addtogroup 	 JPEG MEM MACRO */
    /** @{ */  /** <!-- 【JPEG MEM MACRO】 */

	 /** this macro is from the make menuconfig */
	 /** CNcomment:底下这些宏变量可以来之make menuconfig
				   注意硬件buf地址大小要64字节对齐，存储码流buffer没有
				   做此要求，但要在硬件buf范围之内himd.l 0x60100000  0x20
				   偏移地址来确定，前两个是buf地址，后两个是码流buf地
				   址，这块临时buffer要永远存在供硬件使用 */
	 #ifndef  CFG_HI_JPEG6B_STREAMBUFFER_SIZE
	 /** the hard buffer size */
	 /** CNcomment:硬件buffer大小,要64字节对齐 */
	 #define JPGD_HARD_BUFFER				      (1024 * 1024)
	 /** the save stream size,1M is the best,the buffer size should >= INPUT_BUF_SIZE */
	 /** CNcomment:存储码流的buffer大小，经过测试1M是最好的,-64是为了保证在硬件buf范围之内,
	               码流buffer大小必须大于 INPUT_BUF_SIZE = 4096 */
	 #define JPGD_STREAM_BUFFER				  (JPGD_HARD_BUFFER - 64)
	 #else
	 #define JPGD_HARD_BUFFER					  (CFG_HI_JPEG6B_STREAMBUFFER_SIZE) > (4096 + 64) ? (CFG_HI_JPEG6B_STREAMBUFFER_SIZE) : (4096 + 64)
	 #define JPGD_STREAM_BUFFER				  (JPGD_HARD_BUFFER - 64)
	 #endif


	 /** 2bytes align */
	 /** CNcomment:2字节对齐 */
	#define JPGD_HDEC_MMZ_ALIGN_2BYTES 	  2
	 
	 /** 3bytes align */
	 /** CNcomment:3字节对齐 */
	#define JPGD_HDEC_MMZ_ALIGN_3BYTES 	  3

	
	 /** 4bytes align */
	 /** CNcomment:4字节对齐 */
	#define JPGD_HDEC_MMZ_ALIGN_4BYTES 	  4

	 /** 4bytes align */
	 /** CNcomment:16字节对齐 */
	 #define JPGD_HDEC_MMZ_ALIGN_16BYTES 	  16

	 /** 24bytes align */
	 /** CNcomment:24字节对齐 */
	 #define JPGD_HDEC_MMZ_ALIGN_24BYTES   24
	 
	 /** 64bytes align */
	 /** CNcomment:64字节对齐 */
	#define JPGD_HDEC_MMZ_ALIGN_64BYTES 	  64
	 
	 
	 /** 128bytes align */
	 /** CNcomment:128字节对齐 */
	#define JPGD_HDEC_MMZ_ALIGN_128BYTES 	  128

	 /** @} */	/*! <!-- Macro Definition end */


	 /*************************** Enum Definition ****************************/

	/** \addtogroup      JPEG MEM ENUM */
    /** @{ */  /** <!-- 【JPEG MEM ENUM】 */


	
    /** @} */  /*! <!-- enum Definition end */

	/*************************** Structure Definition ****************************/

	/** \addtogroup      JPEG MEM STRUCTURE */
    /** @{ */  /** <!-- 【JPEG MEM STRUCTURE】 */

	/** @} */  /*! <!-- Structure Definition end */

	
    /********************** Global Variable declaration **************************/
 
    /******************************* API declaration *****************************/

	/** \addtogroup      JPEG MEM API */
    /** @{ */  /** <!-- 【JPEG MEM API】 */
	

	/*****************************************************************************
	* func			: JPEG_HDEC_GetStreamMem
	* description	: alloc the stream buffer mem
					  CNcomment: 分配码流buffer内存 CNend\n
	* param[in] 	: u32MemSize   CNcomment: 要分配的内存大小	  CNend\n
	* param[out]	: pOutPhyAddr  CNcomment: 分配得到的物理地址  CNend\n
	* param[out]	: pOutVirAddr  CNcomment: 分配得到的虚拟地址  CNend\n
	* retval		: HI_SUCCESS   CNcomment: 成功	CNend\n
	* retval		: HI_FAILURE   CNcomment: 失败	 CNend\n
	* others:		: NA
	*****************************************************************************/
    #ifdef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
	HI_S32	JPEG_HDEC_GetStreamMem(const HI_U32 u32MemSize,HI_CHAR **pOutPhyAddr,HI_CHAR **pOutVirAddr);
    #else
	HI_S32	JPEG_HDEC_GetStreamMem(JPEG_HDEC_HANDLE_S_PTR	 pJpegHandle,const HI_U32 u32MemSize);
    #endif

	
	 /*****************************************************************************
	 * func 		 : JPEG_HDEC_FreeStreamMem
	 * description	 : free the stream buffer mem
					   CNcomment: 释放码流buffer内存 CNend\n
	 * param[in]	 : pInPhyAddr	 CNcomment: 要释放的码流buffer物理地址 CNend\n
	 * retval		 : NA
	 * others:		 : NA
	 *****************************************************************************/
	 #ifdef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
	 HI_VOID JPEG_HDEC_FreeStreamMem(HI_CHAR *pInPhyAddr);
	 #else
     HI_VOID JPEG_HDEC_FreeStreamMem(JPEG_HDEC_HANDLE_S_PTR pJpegHandle);
	 #endif
	
	
	 /*****************************************************************************
	 * func 		 : JPEG_HDEC_GetYUVMem
	 * description	 : get the hard decode output mem
					   CNcomment: 获取硬件解码输出的内存 CNend\n
	 * param[in]	 : pJpegHandle   CNcomment: 解码器句柄 CNend\n
	 * retval		 : HI_SUCCESS	 CNcomment: 成功       CNend\n
	 * retval		 : HI_FAILURE	 CNcomment: 失败       CNend\n
	 * others:		 : NA
	 *****************************************************************************/
	 HI_S32 JPEG_HDEC_GetYUVMem(JPEG_HDEC_HANDLE_S_PTR	 pJpegHandle);
	
	
	 /*****************************************************************************
	 * func 		 : JPEG_HDEC_FreeYUVMem
	 * description	 : free the hard decode output mem
					   CNcomment: 释放硬件解码输出的地址  CNend\n
	 * param[in]	 : pJpegHandle   CNcomment: 解码器句柄  CNend\n
	 * retval		 : NA
	 * others:		 : NA
	 *****************************************************************************/
	 HI_VOID JPEG_HDEC_FreeYUVMem(JPEG_HDEC_HANDLE_S_PTR pJpegHandle);
	
	 #ifdef CONFIG_JPEG_HARDDEC2ARGB
	 /*****************************************************************************
	 * func 		 : JPEG_HDEC_GetMinMem
	 * description	 : get dec output argb min memory
					   CNcomment: 获取硬件解码输出为ARGB的行buffer CNend\n
	 * param[in]	 : pJpegHandle   CNcomment: 解码器句柄 CNend\n
	 * retval		 : HI_SUCCESS	 CNcomment: 成功       CNend\n
	 * retval		 : HI_FAILURE	 CNcomment: 失败       CNend\n
	 * others:		 : NA
	 *****************************************************************************/
	 HI_S32 JPEG_HDEC_GetMinMem(JPEG_HDEC_HANDLE_S_PTR pJpegHandle);
	
	
	 /*****************************************************************************
	 * func 		 : JPEG_HDEC_FreeMinMem
	 * description	 : free dec output argb min memory
					   CNcomment: 释放硬件解码输出为ARGB的行buffer  CNend\n
	 * param[in]	 : pJpegHandle   CNcomment: 解码器句柄  CNend\n
	 * retval		 : NA
	 * others:		 : NA
	 *****************************************************************************/
	 HI_VOID JPEG_HDEC_FreeMinMem(JPEG_HDEC_HANDLE_S_PTR pJpegHandle);
	 #endif

	 
	 /*****************************************************************************
	 * func 		 : JPEG_HDEC_GetOutMem
	 * description	 : get the output buffer
	                   CNcomment: 分配最终输出的内存      CNend\n
	 * param[in]	 : pJpegHandle   CNcomment: 解码器句柄 CNend\n
	 * retval		 : HI_SUCCESS    CNcomment: 成功       CNend\n
	 * retval		 : HI_FAILURE    CNcomment: 失败       CNend\n
	 * others:		 : NA
	 *****************************************************************************/
	 HI_S32 JPEG_HDEC_GetOutMem(const struct jpeg_decompress_struct *cinfo);
	 
	
	 /*****************************************************************************
	 * func 		 : JPEG_HDEC_FreeOutMem
	 * description	 : free the output buf
	                   CNcomment: 释放最终输出的内存        CNend\n
	 * param[in]	 : pJpegHandle   CNcomment: 解码器句柄  CNend\n
	 * retval		 : NA
	 * others:		 : NA
	 *****************************************************************************/
	 HI_VOID JPEG_HDEC_FreeOutMem(JPEG_HDEC_HANDLE_S_PTR pJpegHandle);


	/** @} */  /*! <!-- API declaration end */
	
    /****************************************************************************/



#ifdef __cplusplus
    
#if __cplusplus
   
}
#endif
#endif /* __cplusplus */

#endif /* __JPEG_HDEC_MEM_H__*/
