/******************************************************************************

  Copyright (C), 2013-2020, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpeg_hdec_mem.c
Version		    : Initial Draft
Author		    : y00181162
Created		    : 2013/06/20
Description	    : the mem alloc realize in this file
                  CNcomment: jpeg硬件解码需要的内存在这个文件中实现.
                  MMZ内存使用原则:
                  (1)刷局部cach而不是刷全局cach，要是内存小于cach大小局部比全局快 
                  (2)要是没有用到虚拟内存不需要映射以及用非cach方式，要是使用cach方式
                     则使用这块内存之前要刷cach，不然cach中会有数据残留以及要是cach满了
                     会向物理内存回写导致数据错误，cach只对虚拟内存有影响。
                  (3)每次分配YUV内存会导致性能下降很多，TC需要的内存比较小可以自己维护
                     这块内存，固定分配一块内存，不够的时候重新分配。因为这时候属于临界
                     资源，会影响到多线程以及用户分配内存的情况，考虑到通用性不做统一维护了。
                     多进程每份资源是独立的，他们资源要共享就是通信了
                  (4)分配完连续物理内存并且映射成cach方式内存之后要刷一次cach，可以不用初始化，
                     否则cach中以前的残留会影响到后面的使用效果CNend\n
Function List 	:

			  		  
History       	:
Date				Author        		Modification
2013/06/20		    y00181162		    Created file      	
******************************************************************************/

/*********************************add include here******************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include  "hi_jpeg_config.h"
#include  "jpeg_hdec_mem.h"
#include  "jpeg_hdec_api.h"
#include  "jpeg_hdec_error.h"

/***************************** Macro Definition ******************************/

/** the first class is jpeg */
/** CNcomment:第一级内存为jpeg分区 */
#define MMZ_TAG          "jpeg"
/** the second class is jpeg */
/** CNcomment:第二级内存为graphics分区 */
//#define MMZ_TAG_1        "graphics"
/** the last class is jpeg */
/** CNcomment:最后一级内存为整个MMZ分区 */
//#define MMZ_TAG_2        ""

/** the module name */
/** CNcomment:分配给jpeg模块的名字，这里可以通过mmz proc来查看分配给谁了 */
#define MMZ_MODULE       "JPEG_STREAM_OUT_BUF"


#if defined(CONFIG_JPEG_ANDROID_DEBUG_ENABLE) && defined(CONFIG_JPEG_DEBUG_INFO)
#define LOG_TAG    "libjpeg"
#endif

/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

/******************************* API forward declarations *******************/

/******************************* API realization *****************************/


/*****************************************************************************
* func			: JPEG_HDEC_GetStreamMem
* description	: alloc the stream buffer mem
                  CNcomment: 分配码流buffer内存 CNend\n
* param[in] 	: u32MemSize   CNcomment: 要分配的内存大小    CNend\n
* param[out]	: pOutPhyAddr  CNcomment: 分配得到的物理地址  CNend\n
* param[out]	: pOutVirAddr  CNcomment: 分配得到的虚拟地址  CNend\n
* retval		: HI_SUCCESS   CNcomment: 成功  CNend\n
* retval		: HI_FAILURE   CNcomment: 失败   CNend\n
* others:		: NA
*****************************************************************************/
#ifdef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
HI_S32	JPEG_HDEC_GetStreamMem(const HI_U32 u32MemSize,HI_CHAR **pOutPhyAddr,HI_CHAR **pOutVirAddr)
#else
HI_S32	JPEG_HDEC_GetStreamMem(JPEG_HDEC_HANDLE_S_PTR	 pJpegHandle,const HI_U32 u32MemSize)
#endif
{


		HI_CHAR *pPhyBuf = NULL;
		HI_CHAR *pVirBuf = NULL;
		HI_U32 u32StreamSize = JPGD_STREAM_BUFFER;

		JPEG_ASSERT((0 == u32MemSize),HI_FAILURE);

		if(u32StreamSize < 4096)/*lint !e774 ignore by y00181162, because this cast is ok */  
		{
			JPEG_TRACE("the save stream size is small than the input buffer size\n");
			return HI_FAILURE;
		}
		/**
		** use the third class manage to alloc mem,the stream buffer should 64bytes align
		** CNcomment: 使用三级分配管理来分配内存 CNend\n
		**/
        #ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		pPhyBuf = (HI_CHAR*)HI_GFX_AllocMem(pJpegHandle->s32MMZDev,u32MemSize, JPGD_HDEC_MMZ_ALIGN_64BYTES, (HI_CHAR*)MMZ_TAG, (HI_CHAR*)MMZ_MODULE);
        #else
		pPhyBuf = (HI_CHAR*)HI_GFX_AllocMem(u32MemSize, JPGD_HDEC_MMZ_ALIGN_64BYTES, (HI_CHAR*)MMZ_TAG, (HI_CHAR*)MMZ_MODULE);
        #endif
		if(NULL == pPhyBuf)
		{
			JPEG_TRACE("%s %s %d == HI_GFX_AllocMem FAILURE\n",__FILE__,__FUNCTION__,__LINE__);
			return HI_FAILURE;
		}
	    #ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		pVirBuf = (HI_CHAR*)HI_GFX_MapCached(pJpegHandle->s32MMZDev,(HI_U32)pPhyBuf);
        #else
		pVirBuf = (HI_CHAR*)HI_GFX_MapCached((HI_U32)pPhyBuf);
        #endif
		if(NULL == pVirBuf)
		{
			JPEG_TRACE("HI_GFX_MapCached FAILURE\n");
			return HI_FAILURE;
		}
#if 0
		/**
		** when use this mem, should memset this mem
		** CNcomment: 在使用该内存的地址初始化该内存，memset需要时间，使用与否慎用 CNend\n
		**/
		memset(pVirAddr,0,u32MemSize);
		HI_GFX_Flush((HI_U32)pPhyBuf);
#endif


#ifdef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
		*pOutPhyAddr = pPhyBuf;
		*pOutVirAddr = pVirBuf;
#else
		pJpegHandle->stHDecDataBuf.pSaveStreamPhyBuf      = pPhyBuf;
		pJpegHandle->stHDecDataBuf.pSaveStreamVirBuf      = pVirBuf;
		/**
		** use the virtual memory, every time should read data size
		** CNcomment: 虚拟内存码流的时候每次需要读取的码流大小 CNend\n
		**/
		pJpegHandle->stHDecDataBuf.u32ReadDataSize	      = u32StreamSize;
#endif


		return HI_SUCCESS;

		
}



/*****************************************************************************
* func			: JPEG_HDEC_FreeStreamMem
* description	: free the stream buffer mem
                  CNcomment: 释放码流buffer内存 CNend\n
* param[in] 	: pInPhyAddr    CNcomment: 要释放的码流buffer物理地址 CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
#ifdef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
HI_VOID JPEG_HDEC_FreeStreamMem(HI_CHAR *pInPhyAddr)
#else
HI_VOID JPEG_HDEC_FreeStreamMem(JPEG_HDEC_HANDLE_S_PTR pJpegHandle)
#endif
{

       HI_S32 s32Ret = HI_SUCCESS;
	   
#ifdef CONFIG_JPEG_REALIZEFUNC_BEFORMAINFUNC
	  if(NULL == pInPhyAddr)
	  {
	     return;
	  }
	  s32Ret = HI_GFX_Unmap((HI_U32)pInPhyAddr);
	  s32Ret = HI_GFX_FreeMem((HI_U32)pInPhyAddr);
	  if(HI_SUCCESS != s32Ret)
	  {
	     return;
	  }
#else

      if(NULL == pJpegHandle)
      {
           JPEG_TRACE("%s :%s : %d (the pJpegHandle is NULL)\n",__FILE__,__FUNCTION__,__LINE__);
		   return;
      }
	  
	  if( NULL == pJpegHandle->stHDecDataBuf.pSaveStreamPhyBuf)
	  {
		   return;
	  }
	  #ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
	  s32Ret = HI_GFX_Unmap(pJpegHandle->s32MMZDev,(HI_U32)pJpegHandle->stHDecDataBuf.pSaveStreamPhyBuf);
	  s32Ret = HI_GFX_FreeMem(pJpegHandle->s32MMZDev,(HI_U32)pJpegHandle->stHDecDataBuf.pSaveStreamPhyBuf);
	  #else
	  s32Ret = HI_GFX_Unmap((HI_U32)pJpegHandle->stHDecDataBuf.pSaveStreamPhyBuf);
	  s32Ret = HI_GFX_FreeMem((HI_U32)pJpegHandle->stHDecDataBuf.pSaveStreamPhyBuf);
	  #endif
	  if(HI_SUCCESS != s32Ret)
	  {
	      JPEG_TRACE("HI_GFX_Unmap or  HI_GFX_FreeMem FAILURE\n");
	      return;
	  }
	  pJpegHandle->stHDecDataBuf.pSaveStreamPhyBuf	    = NULL;
	  pJpegHandle->stHDecDataBuf.pSaveStreamVirBuf	    = NULL;
#endif
	  
}


/*****************************************************************************
* func			: JPEG_HDEC_GetYUVMem
* description	: get the hard decode output mem
				  CNcomment: 获取硬件解码输出的内存 CNend\n
* param[in]	    : pJpegHandle   CNcomment: 解码器句柄 CNend\n
* retval		: HI_SUCCESS	CNcomment: 成功 CNend\n
* retval		: HI_FAILURE	CNcomment: 失败 CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_GetYUVMem(JPEG_HDEC_HANDLE_S_PTR	pJpegHandle)
{


		HI_U32 u32MemSize = 0;
		HI_CHAR *pYUVPhy  = NULL;
		HI_CHAR *pYUVVir  = NULL;
		HI_U32 u32Align   = 0;
		HI_S32 s32Ret = HI_SUCCESS;
		/**
		 ** check whether to alloc jpeg hard decode middle mem
		 ** CNcomment: 判断是否分配硬件解码的中间buffer CNend\n
		 **/
#ifdef  CONFIG_JPEG_HARDDEC2ARGB
		if(   (HI_TRUE == pJpegHandle->bOutYCbCrSP || HI_TRUE == pJpegHandle->bDecARGB)
			&&(HI_TRUE == pJpegHandle->stOutDesc.stOutSurface.bUserPhyMem))
#else
		if(   (HI_TRUE == pJpegHandle->bOutYCbCrSP)
			&&(HI_TRUE == pJpegHandle->stOutDesc.stOutSurface.bUserPhyMem))	
#endif
		{/**
		  ** use user mem
		  ** CNcomment: 使用用户内存 CNend\n
		  **/
		      pJpegHandle->stMiddleSurface.pMiddlePhy[0] = pJpegHandle->stOutDesc.stOutSurface.pOutPhy[0];
		      pJpegHandle->stMiddleSurface.pMiddlePhy[1] = pJpegHandle->stOutDesc.stOutSurface.pOutPhy[1];
			  pJpegHandle->stMiddleSurface.pMiddlePhy[2] = pJpegHandle->stOutDesc.stOutSurface.pOutPhy[2];
		      pJpegHandle->stMiddleSurface.pMiddleVir[0] = pJpegHandle->stOutDesc.stOutSurface.pOutVir[0];
		      pJpegHandle->stMiddleSurface.pMiddleVir[1] = pJpegHandle->stOutDesc.stOutSurface.pOutVir[1];
			  pJpegHandle->stMiddleSurface.pMiddleVir[2] = pJpegHandle->stOutDesc.stOutSurface.pOutVir[2];
		      return HI_SUCCESS;
		}


#ifdef CONFIG_JPEG_HARDDEC2ARGB
		if(HI_TRUE == pJpegHandle->bDecARGB)
		{
		  /**
		   ** 4bytes align just ok
		   ** CNcomment: 4字节对齐就可以了 CNend\n
		   **/
		   u32Align   = JPGD_HDEC_MMZ_ALIGN_4BYTES;
		   u32MemSize = pJpegHandle->stJpegSofInfo.u32YSize;
		}
		else
#endif
		{
		   u32Align   = JPGD_HDEC_MMZ_ALIGN_128BYTES;
		   u32MemSize = pJpegHandle->stJpegSofInfo.u32YSize + pJpegHandle->stJpegSofInfo.u32CSize;
		}
		/**
		 ** use the third class manage to alloc mem,the stream buffer should 128bytes align
		 ** CNcomment: 使用三级分配管理来分配内存,buffer要128字节对齐 CNend\n
		 **/
		#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		pYUVPhy = (HI_CHAR*)HI_GFX_AllocMem(pJpegHandle->s32MMZDev,u32MemSize,u32Align,(HI_CHAR*)MMZ_TAG,(HI_CHAR*)MMZ_MODULE);
		#else
		pYUVPhy = (HI_CHAR*)HI_GFX_AllocMem(u32MemSize,u32Align,(HI_CHAR*)MMZ_TAG,(HI_CHAR*)MMZ_MODULE);
		#endif
		if(NULL == pYUVPhy)
		{
		     JPEG_TRACE("%s %s %d == HI_GFX_AllocMem FAILURE\n",__FILE__,__FUNCTION__,__LINE__);
		     return HI_FAILURE;
		}

#ifndef CONFIG_JPEG_TEST_SAVE_YUVSP_DATA
/** if need save yuvsp data,should virtual address **/
		#ifdef  CONFIG_JPEG_HARDDEC2ARGB
		if( (HI_TRUE == pJpegHandle->bOutYCbCrSP) || (HI_TRUE == pJpegHandle->bDecARGB))
		#else
		if(HI_TRUE == pJpegHandle->bOutYCbCrSP)
		#endif
#endif
		{
			#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
			pYUVVir = (HI_CHAR *)HI_GFX_MapCached(pJpegHandle->s32MMZDev,(HI_U32)pYUVPhy);
			#else
			pYUVVir = (HI_CHAR *)HI_GFX_MapCached((HI_U32)pYUVPhy);
			#endif
			if (NULL == pYUVVir)
			{
				JPEG_TRACE("HI_GFX_MapCached FAILURE\n");
				return HI_FAILURE;
			}
			/**
			** when use this mem, should memset this mem
			** CNcomment: 在使用该内存的地址初始化该内存，memset需要时间，使用与否慎用 CNend\n
			**/
			//memset(pYUVVir,0,u32MemSize);
			#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
			s32Ret = HI_GFX_Flush(pJpegHandle->s32MMZDev,(HI_U32)pYUVPhy);
			#else
			s32Ret = HI_GFX_Flush((HI_U32)pYUVPhy);
			#endif
			if(HI_SUCCESS != s32Ret)
			{
				return HI_FAILURE;
			}
			pJpegHandle->stMiddleSurface.pMiddleVir[0] = pYUVVir;
			pJpegHandle->stMiddleSurface.pMiddleVir[1] = pYUVVir + pJpegHandle->stJpegSofInfo.u32YSize;
			
		}

		pJpegHandle->stMiddleSurface.pMiddlePhy[0] = pYUVPhy;
		pJpegHandle->stMiddleSurface.pMiddlePhy[1] = pYUVPhy + pJpegHandle->stJpegSofInfo.u32YSize;
		 
		return HI_SUCCESS;


}

/*****************************************************************************
* func			: JPEG_HDEC_FreeYUVMem
* description	: free the hard decode output mem
				  CNcomment: 释放硬件解码输出的地址  CNend\n
* param[in]	    : pJpegHandle   CNcomment: 解码器句柄 CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID JPEG_HDEC_FreeYUVMem(JPEG_HDEC_HANDLE_S_PTR pJpegHandle)
{

		HI_S32 s32Ret = HI_SUCCESS;


		if(NULL == pJpegHandle)
		{
			JPEG_TRACE("%s :%s : %d (the pJpegHandle is NULL)\n",__FILE__,__FUNCTION__,__LINE__);
			return;
		}

#ifdef  CONFIG_JPEG_HARDDEC2ARGB
		if(   (HI_TRUE == pJpegHandle->bOutYCbCrSP || (HI_TRUE == pJpegHandle->bDecARGB))
			&&(HI_TRUE == pJpegHandle->stOutDesc.stOutSurface.bUserPhyMem))
#else
		if(   (HI_TRUE == pJpegHandle->bOutYCbCrSP)
			&&(HI_TRUE == pJpegHandle->stOutDesc.stOutSurface.bUserPhyMem))

#endif
		{/**
		** use user mem
		** CNcomment: 使用用户内存 CNend\n
		**/
			return;
		}

		if(NULL == pJpegHandle->stMiddleSurface.pMiddlePhy[0])
		{
			return;
		}

#ifndef CONFIG_JPEG_TEST_SAVE_YUVSP_DATA
		#ifdef  CONFIG_JPEG_HARDDEC2ARGB
		if( (HI_TRUE == pJpegHandle->bOutYCbCrSP) || (HI_TRUE == pJpegHandle->bDecARGB))
		#else
		if(HI_TRUE == pJpegHandle->bOutYCbCrSP)
		#endif
#endif
		{
		    #ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		    s32Ret = HI_GFX_Unmap(pJpegHandle->s32MMZDev,(HI_U32)pJpegHandle->stMiddleSurface.pMiddlePhy[0]);
			#else
			s32Ret = HI_GFX_Unmap((HI_U32)pJpegHandle->stMiddleSurface.pMiddlePhy[0]);
			#endif
			if(HI_SUCCESS != s32Ret)
			{
				JPEG_TRACE("HI_GFX_Unmap FAILURE\n");
				return;
			}
		}

		#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		s32Ret = HI_GFX_FreeMem(pJpegHandle->s32MMZDev,(HI_U32)pJpegHandle->stMiddleSurface.pMiddlePhy[0]);
		#else
		s32Ret = HI_GFX_FreeMem((HI_U32)pJpegHandle->stMiddleSurface.pMiddlePhy[0]);
		#endif
		if(HI_SUCCESS != s32Ret)
		{
			JPEG_TRACE("HI_GFX_FreeMem FAILURE\n");
			return;
		}
		pJpegHandle->stMiddleSurface.pMiddlePhy[0]  = NULL;
		pJpegHandle->stMiddleSurface.pMiddlePhy[1]  = NULL;
		pJpegHandle->stMiddleSurface.pMiddleVir[0]  = NULL;
		pJpegHandle->stMiddleSurface.pMiddleVir[1]  = NULL;
					
}


#ifdef CONFIG_JPEG_HARDDEC2ARGB
/*****************************************************************************
* func			: JPEG_HDEC_GetMinMem
* description	: get dec output argb min memory
				  CNcomment: 获取硬件解码输出为ARGB的行buffer CNend\n
* param[in]	    : pJpegHandle   CNcomment: 解码器句柄 CNend\n
* retval		: HI_SUCCESS	CNcomment: 成功 CNend\n
* retval		: HI_FAILURE	CNcomment: 失败 CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_GetMinMem(JPEG_HDEC_HANDLE_S_PTR pJpegHandle)
{

		HI_U32 u32MemSize = 0;
		HI_CHAR *pMinPhy  = NULL;

   		u32MemSize = pJpegHandle->stJpegSofInfo.u32RGBSizeReg;

		/**
	 	 ** use the third class manage to alloc mem,the min buffer should 128bytes align
	     ** CNcomment: 使用三级分配管理来分配内存,argb行buffer要128字节对齐 CNend\n
	     **/
	    #ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
        pMinPhy = (HI_CHAR*)HI_GFX_AllocMem(pJpegHandle->s32MMZDev,u32MemSize,JPGD_HDEC_MMZ_ALIGN_128BYTES,(HI_CHAR*)MMZ_TAG,(HI_CHAR*)MMZ_MODULE);
        #else
		pMinPhy = (HI_CHAR*)HI_GFX_AllocMem(u32MemSize,JPGD_HDEC_MMZ_ALIGN_128BYTES,(HI_CHAR*)MMZ_TAG,(HI_CHAR*)MMZ_MODULE);
		#endif
		if(NULL == pMinPhy)
		{
		     JPEG_TRACE("%s %s %d == HI_GFX_AllocMem FAILURE\n",__FILE__,__FUNCTION__,__LINE__);
			 return HI_FAILURE;
		}

		pJpegHandle->pMinPhyBuf   =   pMinPhy;
			
		return HI_SUCCESS;


}

/*****************************************************************************
* func			: JPEG_HDEC_FreeMinMem
* description	: free dec output argb min memory
				  CNcomment: 释放硬件解码输出为ARGB的行buffer  CNend\n
* param[in]	    : pJpegHandle   CNcomment: 解码器句柄 CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID JPEG_HDEC_FreeMinMem(JPEG_HDEC_HANDLE_S_PTR pJpegHandle)
{

	    HI_S32 s32Ret = HI_SUCCESS;

		if(NULL == pJpegHandle)
		{
			 JPEG_TRACE("%s :%s : %d (the pJpegHandle is NULL)\n",__FILE__,__FUNCTION__,__LINE__);
			 return;
		}

		if(NULL == pJpegHandle->pMinPhyBuf)
		{
		   return;
		}
        #ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		s32Ret = HI_GFX_FreeMem(pJpegHandle->s32MMZDev,(HI_U32)pJpegHandle->pMinPhyBuf);
		#else
        s32Ret = HI_GFX_FreeMem((HI_U32)pJpegHandle->pMinPhyBuf);
		#endif
		if(HI_SUCCESS != s32Ret)
		{
		   JPEG_TRACE("HI_GFX_FreeMem FAILURE\n");
		   return;
		}
				
		pJpegHandle->pMinPhyBuf  = NULL;

}
#endif


/*****************************************************************************
* func			: JPEG_HDEC_GetOutMem
* description	: get the output buffer
				  CNcomment: 分配最终输出的内存 	 CNend\n
* param[in]	    : cinfo         CNcomment: 解码对象  CNend\n
* retval		: HI_SUCCESS    CNcomment: 成功		  CNend\n
* retval		: HI_FAILURE    CNcomment: 失败		  CNend\n
* others:		: NA
*****************************************************************************/
HI_S32 JPEG_HDEC_GetOutMem(const struct jpeg_decompress_struct *cinfo)
{


		HI_U32 u32OutStride = 0;
		HI_U32 u32MemSize   = 0;
		HI_CHAR* pOutPhy    = NULL;
		HI_CHAR* pOutVir    = NULL;
        HI_S32 s32Ret = HI_SUCCESS;
		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

		if(HI_TRUE == pJpegHandle->stOutDesc.bCrop)
		{
			pJpegHandle->stJpegSofInfo.u32DisplayStride = pJpegHandle->stOutDesc.stOutSurface.u32OutStride[0];
		}

#ifdef CONFIG_JPEG_HARDDEC2ARGB
		if(HI_TRUE == pJpegHandle->bOutYCbCrSP || HI_TRUE  == pJpegHandle->bDecARGB)
#else
		if(HI_TRUE == pJpegHandle->bOutYCbCrSP)
#endif
		{
		/**
		** shoule not csc,so not alloc output mem
		** CNcomment: 不需要颜色空间转换，所以就不需要分配输出buffer CNend\n
		**/
			return HI_SUCCESS;
		}

		if(HI_TRUE == pJpegHandle->stOutDesc.stOutSurface.bUserPhyMem)
		{  
		/**
		** use user mem
		** CNcomment: 使用用户内存 CNend\n
		**/
			pJpegHandle->stMiddleSurface.pOutPhy = pJpegHandle->stOutDesc.stOutSurface.pOutPhy[0];
			pJpegHandle->stMiddleSurface.pOutVir = pJpegHandle->stOutDesc.stOutSurface.pOutVir[0];
			return HI_SUCCESS;
		}
		u32OutStride = pJpegHandle->stJpegSofInfo.u32DisplayStride;
		u32MemSize   = u32OutStride * ((HI_U32)pJpegHandle->stOutDesc.stCropRect.h);
		
		/**
		** align depend the pixle
		** CNcomment: 按照像素对齐 CNend\n
		**/
		/** 3字节对齐是有问题的，因为map不上来**/
		#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		pOutPhy = (HI_CHAR*)HI_GFX_AllocMem(pJpegHandle->s32MMZDev,u32MemSize, JPGD_HDEC_MMZ_ALIGN_16BYTES, (HI_CHAR*)MMZ_TAG, (HI_CHAR*)MMZ_MODULE);
        #else
		pOutPhy = (HI_CHAR*)HI_GFX_AllocMem(u32MemSize, JPGD_HDEC_MMZ_ALIGN_16BYTES, (HI_CHAR*)MMZ_TAG, (HI_CHAR*)MMZ_MODULE);
		#endif
		if(0 == pOutPhy)
		{
			JPEG_TRACE("%s %s %d == HI_GFX_AllocMem FAILURE\n",__FILE__,__FUNCTION__,__LINE__);
			return HI_FAILURE;
		}
		#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		pOutVir = (HI_CHAR*)HI_GFX_MapCached(pJpegHandle->s32MMZDev,(HI_U32)pOutPhy);
		#else
		pOutVir = (HI_CHAR*)HI_GFX_MapCached((HI_U32)pOutPhy);
		#endif
		if (NULL == pOutVir)
		{
			JPEG_TRACE("HI_GFX_MapCached FAILURE\n");
			return HI_FAILURE;
		}
		/** memset 也需要耗时间，假如解码正常就不要memset操作了 **/
		//memset(pOutVir,0,u32MemSize);
		#ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		s32Ret = HI_GFX_Flush(pJpegHandle->s32MMZDev,(HI_U32)pOutPhy);
        #else
		s32Ret = HI_GFX_Flush((HI_U32)pOutPhy);
		#endif
		if(HI_SUCCESS != s32Ret)
		{
			return HI_FAILURE;
		}
		/**
		** 要是用户没有设置输出图像大小则就使用默认的输出，也就是只能1/2/4/8四种缩放
		**/
		pJpegHandle->stMiddleSurface.pOutPhy   =  pOutPhy;
		pJpegHandle->stMiddleSurface.pOutVir   =  pOutVir;

		return HI_SUCCESS;

		
}

/*****************************************************************************
* func			: JPEG_HDEC_FreeOutMem
* description	: free the output buf
				  CNcomment: 释放最终输出的内存 	   CNend\n
* param[in]	    : pJpegHandle   CNcomment: 解码器句柄  CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID JPEG_HDEC_FreeOutMem(JPEG_HDEC_HANDLE_S_PTR	 pJpegHandle)
{

		HI_S32 s32Ret = HI_SUCCESS;

		if(NULL == pJpegHandle)
		{
				JPEG_TRACE("%s :%s : %d (the pJpegHandle is NULL)\n",__FILE__,__FUNCTION__,__LINE__);
				return;
		}
#ifdef CONFIG_JPEG_HARDDEC2ARGB
		if(HI_TRUE == pJpegHandle->bOutYCbCrSP || HI_TRUE  == pJpegHandle->bDecARGB)
#else
		if(HI_TRUE == pJpegHandle->bOutYCbCrSP)
#endif
		{
			return;
		}

		if(HI_TRUE == pJpegHandle->stOutDesc.stOutSurface.bUserPhyMem)
		{   
			return;
		}


		if(NULL == pJpegHandle->stMiddleSurface.pOutPhy)
		{
			return;
		}
        #ifdef CONFIG_JPEG_USE_PRIVATE_MMZ
		s32Ret = HI_GFX_Unmap(pJpegHandle->s32MMZDev,(HI_U32)pJpegHandle->stMiddleSurface.pOutPhy );
		s32Ret = HI_GFX_FreeMem(pJpegHandle->s32MMZDev,(HI_U32)pJpegHandle->stMiddleSurface.pOutPhy);
		#else
		s32Ret = HI_GFX_Unmap((HI_U32)pJpegHandle->stMiddleSurface.pOutPhy );
		s32Ret = HI_GFX_FreeMem((HI_U32)pJpegHandle->stMiddleSurface.pOutPhy);
		#endif
		if(HI_SUCCESS != s32Ret)
		{
			JPEG_TRACE("HI_GFX_Unmap or HI_GFX_FreeMem FAILURE\n");
			return;
		}
		pJpegHandle->stMiddleSurface.pOutPhy  = NULL;
		pJpegHandle->stMiddleSurface.pOutVir  = NULL; 

}
