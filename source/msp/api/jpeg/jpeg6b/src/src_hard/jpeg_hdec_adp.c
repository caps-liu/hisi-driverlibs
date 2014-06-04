/******************************************************************************

  Copyright (C), 2010-2020, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpeg_hdec_adp.c
Version		    : Initial Draft
Author		    : 
Created		    : 2013/06/20
Description	    : the adp realize in this file
                  CNcomment: 适配的实现都在这个文件里 CNend\n
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2013/06/20		    y00181162  		    Created file      	
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

#include "hi_jpeg_config.h"
#include "jpeg_hdec_adp.h"
#include "jpeg_hdec_api.h"

/***************************** Macro Definition ******************************/


/** calculate the size according to the scale */
/** CNcomment:根据缩放比例计算大小 */
#define JPEG_ALIGNED_SCALE(x, i)  (((x) + (1 << (i)) - 1) >> (i))

/** calculate the size according to the scale */
/** CNcomment:根据缩放比例计算大小 */
#define JPEG_ROUND_UP(a,b)          ( ((a) + (b) - (1L)) / (b) )

/** the 128bytes align */
/** CNcomment:128字节对齐 */
#define JPEG_MCU_128ALIGN	              128
/** the 16bytes align */
/** CNcomment:16字节对齐 */
#define JPEG_MCU_16ALIGN 	              16
/** the 8bytes align */
/** CNcomment:8字节对齐 */
#define JPEG_MCU_8ALIGN                  8


/*************************** Structure Definition ****************************/



/********************** Global Variable declaration **************************/


/******************************* API forward declarations *******************/


/******************************* API realization *****************************/


/*****************************************************************************
* func          : JPEG_HDEC_GetOutSize
* description	: get the out size
                  CNcomment:  获取输出大小 CNend\n
* param[in]  	: s32Ration      CNcomment: 缩放比例 CNend\n
* param[in]  	: u32InWidth     CNcomment: 输入宽度 CNend\n
* param[in]  	: u32InHeight    CNcomment: 输入高度 CNend\n
* param[out] 	: pu32OutWidth   CNcomment: 输出宽度 CNend\n
* param[out]	: pu32OutHeight  CNcomment: 输出高度 CNend\n
* retval     	: NA
* others:	 	: NA
*****************************************************************************/
static HI_VOID JPEG_HDEC_GetOutSize(const HI_U32 u32Ration,    \
                                                   const HI_U32 u32InWidth,   \
                                                   const HI_U32 u32InHeight,  \
                                                   HI_U32 *pu32OutWidth,      \
                                                   HI_U32 *pu32OutHeight)
{

       switch(u32Ration)
	   {
		     case 0:
		         *pu32OutWidth  = u32InWidth;
		         *pu32OutHeight = u32InHeight;
				 break;
			 case 1:
		         *pu32OutWidth  = (JDIMENSION)JPEG_ROUND_UP((long) u32InWidth, 2L);
		         *pu32OutHeight = (JDIMENSION)JPEG_ROUND_UP((long) u32InHeight, 2L);
				  break;
			 case 2:
				*pu32OutWidth = (JDIMENSION)JPEG_ROUND_UP((long) u32InWidth, 4L);
		         *pu32OutHeight = (JDIMENSION)JPEG_ROUND_UP((long) u32InHeight, 4L);
				 break;
	         case 3:
			 	  *pu32OutWidth = (JDIMENSION)JPEG_ROUND_UP((long) u32InWidth, 8L);
		          *pu32OutHeight = (JDIMENSION)JPEG_ROUND_UP((long) u32InHeight, 8L);  
				  break;
			 default:
			 	  break;

       }

}


/*****************************************************************************
* func			: JPEG_HDEC_GetScale
* description	: get the jpeg decode scale
				  CNcomment:  获取jpeg解码要缩放的比例 CNend\n
* param[in] 	: cinfo 	  CNcomment: 解码对象	CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
static HI_VOID JPEG_HDEC_GetScale(j_decompress_ptr cinfo)
{


		HI_U32 u32Ration      = 0;
		HI_U32 u32Scale       = 0;
		HI_U32 u32TmpScale    = 0;
		HI_U32 u32TmpWidth    = 0;
		HI_U32 u32TmpHeight   = 0;
		HI_U32 u32TdeInWidth  = 0;
		HI_U32 u32TdeInHeight = 0;
		HI_U32 u32YWidth      = 0;
		HI_U32 u32YHeight     = 0;

		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

		u32TmpWidth  = cinfo->image_width;
		u32TmpHeight = cinfo->image_height;

		/**
		 ** the user set scale
		 ** CNcomment: 用户设置需要的缩放比例 CNend\n
		 **/
		if(cinfo->scale_num * 8 <= cinfo->scale_denom)
		{
		    u32Ration = JPEG_SCALEDOWN_8;
		}
		else if(cinfo->scale_num * 4 <= cinfo->scale_denom)
		{
		    u32Ration = JPEG_SCALEDOWN_4;
		}
		else if(cinfo->scale_num * 2 <= cinfo->scale_denom)
		{
			u32Ration = JPEG_SCALEDOWN_2;
		}
		else if(cinfo->scale_num == cinfo->scale_denom)
		{
		     u32Ration = JPEG_SCALEDOWN_1;
		}
		else
		{
		     u32Ration = JPEG_SCALEDOWN_BUTT;
		}


		JPEG_HDEC_GetOutSize(u32Ration,u32TmpWidth,u32TmpHeight,&u32TdeInWidth,&u32TdeInHeight);
		/**
		** if the picture size is 1*height or width*1,the scale is the same as no scale
		** CNcomment: 要是图片宽度或高度为1的情况缩放与不缩放是一样的 CNend\n
		**/
		u32YWidth   = u32TdeInWidth;
		u32YHeight  = u32TdeInHeight;
		for(u32Scale = JPEG_SCALEDOWN_1; u32Scale <= JPEG_SCALEDOWN_8; u32Scale++ )
		{
		    if(JPEG_ALIGNED_SCALE(cinfo->image_width, u32Scale) == u32YWidth)
		    {
		        break;
		    }
		}

		/*如果宽度小于8，则缩放系数有可能重复,这时要看高度*/
		if(JPEG_ALIGNED_SCALE(cinfo->image_width, (u32Scale+1)) == u32YWidth)
		{
			for(u32Scale = JPEG_SCALEDOWN_1; u32Scale <= JPEG_SCALEDOWN_8; u32Scale++)
			{
				if(JPEG_ALIGNED_SCALE(cinfo->image_height, u32Scale) == u32YHeight)
				{
				    break;
				}
			}
		}

		if(u32Scale < u32Ration)
		{
		    u32TmpScale = u32Scale;
		}
		else
		{
		    u32TmpScale = u32Ration;
		}


		/**
		** check if the jpeg hard support decode to argb8888 or abgr8888
		** CNcomment: 判断jpeg硬件是否支持解码输出argb8888或者abgr8888 CNend\n
		**/
#ifdef CONFIG_JPEG_HARDDEC2ARGB
		if(   (0 == u32TmpScale)
			   &&(   JCS_ARGB_8888 == cinfo->out_color_space 
			      || JCS_ABGR_8888 == cinfo->out_color_space))
		{
		    pJpegHandle->bDecARGB	=  HI_TRUE;
		}
#endif


		/**
		** the tde limit，the size must contain in (4095 4095)
		** CNcomment: tde规格限制，转换大小必须在(4095 4095)范围之内 CNend\n
		**/
#ifdef CONFIG_JPEG_HARDDEC2ARGB
		while( ((u32TdeInWidth > 4095) || ( u32TdeInHeight > 4095 )) && (HI_FALSE == pJpegHandle->bDecARGB) && (HI_FALSE == pJpegHandle->bOutYCbCrSP) )
#else
		while( ((u32TdeInWidth > 4095) || ( u32TdeInHeight > 4095 )) && (HI_FALSE == pJpegHandle->bOutYCbCrSP))
#endif
		{
			u32TmpScale++;
			if(u32TmpScale > 3)
			{
				u32TmpScale--;
				break;
			}
			JPEG_HDEC_GetOutSize(u32TmpScale,u32TmpWidth,u32TmpHeight,&u32TdeInWidth,&u32TdeInHeight);
		}

#ifdef CONFIG_JPEG_HARDDEC2ARGB
		if(0 != u32TmpScale)
		{
			pJpegHandle->bDecARGB	=  HI_FALSE;
		}
#endif

		/**
		** the output size
		** CNcomment: 输出大小 CNend\n
		**/
		cinfo->output_width  = u32TdeInWidth;
		cinfo->output_height = u32TdeInHeight;


		/**
		** set to hard register scale value
		** CNcomment: 配给硬件的缩放比例大小 CNend\n
		**/
		pJpegHandle->u32ScalRation = u32TmpScale;
				
}



/*****************************************************************************
* func			: JPEG_HDEC_GetImagInfo
* description	: get jpeg picture information
				  CNcomment:  获取图片信息 CNend\n
* param[in] 	: cinfo 	  CNcomment: 解码对象	CNend\n
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID JPEG_HDEC_GetImagInfo(j_decompress_ptr cinfo)
{


		HI_U32 YWidthTmp       = 0;
	    HI_U32 YHeightTmp      = 0;
	    HI_U32 CHeightTmp      = 0;
        HI_U32 u32YStride      = 0;
		HI_U32 u32UVStride     = 0;
		HI_U32 u32PicSize      = 0;
	    HI_U32 u32YWidth       = 0;
	    HI_U32 u32YHeight      = 0;
		HI_U32 u32UVWidth      = 0;
	    HI_U32 u32UVHeight     = 0;
		#ifdef CONFIG_JPEG_HARDDEC2ARGB
        HI_U32 u32McuWidth     = 0;
		HI_U32 u32DecSize      = 0;
		#endif
		HI_U32 u32YSize        = 0;
		HI_U32 u32CSize        = 0;
		JPEG_HDEC_HANDLE_S_PTR  pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

		#if defined(CONFIG_JPEG_OUTPUT_CROP) && defined(CONFIG_JPEG_HARDDEC2ARGB)
		if(HI_TRUE == pJpegHandle->stOutDesc.bCrop && HI_TRUE == pJpegHandle->bDecARGB)
		{/**
		  **  if set HI_JPEG_SetOutDesc,the crop is change
		  **  CNcomment: 设置完输出裁剪的时候所需要的大小发生变化了，所以重新计算一次 CNend\n
		  **/
		    u32DecSize = (HI_U32)(pJpegHandle->stOutDesc.stCropRect.w * pJpegHandle->stOutDesc.stCropRect.h * 4);
			pJpegHandle->stJpegSofInfo.u32YSize  =  u32DecSize;
		    pJpegHandle->stJpegSofInfo.u32CSize  =  0;
		}
        #endif

		if(HI_TRUE == pJpegHandle->stJpegSofInfo.bCalcSize)
		{
		    return;
		}
		/**
		 **  if out yuvsp,the output mem has two types,one from user, the other from inner. 
		 **  if out others, we should alloc the yuvsp mem.
		 ** CNcomment: 要是输出yuvsp 和 硬件解码输出ARGB，是否需要分配硬件解码的中间buffer有两种情况，
		 ** 		   要是输出其它格式则需要分配中间buffer  CNend\n
		 **/
		if(  (JCS_YUV400_SP	  == cinfo->out_color_space)
		   ||(JCS_YUV420_SP    == cinfo->out_color_space)
		   ||(JCS_YUV422_SP_12 == cinfo->out_color_space)
		   ||(JCS_YUV422_SP_21 == cinfo->out_color_space)
		   ||(JCS_YUV444_SP	  == cinfo->out_color_space))
		{
			pJpegHandle->bOutYCbCrSP   = HI_TRUE;
		}
		else
		{
			pJpegHandle->bOutYCbCrSP    = HI_FALSE;
		}

	    /**
		 ** this function call should after check the bOutYCbCrSP
		 ** CNcomment:这个要在上面bOutYCbCrSP判断之后调用 CNend\n
		 **/
		JPEG_HDEC_GetScale(cinfo);

		/**
		 ** the y stride should 128 bytes align
		 ** CNcomment:亮度行间距必须是128字节对齐 CNend\n
		 **/
	    u32YStride = (cinfo->output_width + JPEG_MCU_128ALIGN - 1) & (~(JPEG_MCU_128ALIGN - 1));

		/** this to save data used
		 ** CNcomment:这里是保存实际数据使用 CNend\n
		 **/
        u32YWidth   = cinfo->output_width;
		u32YHeight  = cinfo->output_height;
		if(u32YWidth  <= 1) u32YWidth  = 2;
	    if(u32YHeight <= 1) u32YHeight = 2;

		
	    switch(pJpegHandle->enImageFmt)
	    {

	        case JPEG_FMT_YUV400:
	        {
	            YHeightTmp  = (cinfo->output_height + JPEG_MCU_8ALIGN - 1) & (~(JPEG_MCU_8ALIGN - 1));
	            CHeightTmp  = 0;
				YWidthTmp   = (cinfo->output_width  + JPEG_MCU_8ALIGN - 1) & (~(JPEG_MCU_8ALIGN - 1));
				u32UVStride = 0;
				u32PicSize = (((cinfo->image_width + JPEG_MCU_8ALIGN - 1)>>3) | (((cinfo->image_height + JPEG_MCU_8ALIGN - 1)>>3)<<16));
                #ifdef CONFIG_JPEG_HARDDEC2ARGB
				u32McuWidth = (cinfo->image_width   + JPEG_MCU_8ALIGN - 1)>>3;
				#endif
				#ifdef CONFIG_JPEG_OUTPUT_YUV420SP
				if(HI_TRUE == pJpegHandle->bOutYUV420SP)
				{
					CHeightTmp  = 0;
					u32UVStride = 0;
				}
				#endif

				u32UVWidth  = 0;
				u32UVHeight = 0;

                break;
				
			}
	        case JPEG_FMT_YUV420:
	        {
	            YHeightTmp  = (cinfo->output_height + JPEG_MCU_16ALIGN - 1) & (~(JPEG_MCU_16ALIGN - 1));
	            CHeightTmp  = YHeightTmp >> 1;
				YWidthTmp   = (cinfo->output_width  + JPEG_MCU_16ALIGN - 1) & (~(JPEG_MCU_16ALIGN - 1));
                u32UVStride = u32YStride;
				u32PicSize  = (((cinfo->image_width + JPEG_MCU_16ALIGN - 1)>>4) | (((cinfo->image_height + JPEG_MCU_16ALIGN - 1)>>4)<<16));
                #ifdef CONFIG_JPEG_HARDDEC2ARGB
				u32McuWidth = (cinfo->image_width    + JPEG_MCU_16ALIGN - 1)>>4;
                #endif
				#ifdef CONFIG_JPEG_OUTPUT_YUV420SP
				if(HI_TRUE == pJpegHandle->bOutYUV420SP)
				{
					CHeightTmp  = CHeightTmp;
					u32UVStride = u32UVStride;
				}
				#endif

				u32YWidth   = (u32YWidth  >> 1) << 1;
		        u32YHeight  = (u32YHeight >> 1) << 1;
		        u32UVWidth  = u32YWidth  >> 1;
		        u32UVHeight = u32YHeight >> 1;
				
				break;
	        }
	        case JPEG_FMT_YUV422_21:
	        {
				/**
				 ** the horizontal sample
				 ** CNcomment:水平采样 CNend\n
				 **/
	            YHeightTmp  = (cinfo->output_height + JPEG_MCU_8ALIGN - 1) & (~(JPEG_MCU_8ALIGN - 1));
	            CHeightTmp  = YHeightTmp;
				YWidthTmp   = (cinfo->output_width  + JPEG_MCU_16ALIGN - 1) & (~(JPEG_MCU_16ALIGN - 1));
				u32UVStride = u32YStride;
	            u32PicSize  = (((cinfo->image_width + JPEG_MCU_16ALIGN - 1)>>4) | (((cinfo->image_height + JPEG_MCU_8ALIGN - 1)>>3)<<16));
                #ifdef CONFIG_JPEG_HARDDEC2ARGB
				u32McuWidth	= (cinfo->image_width    + JPEG_MCU_16ALIGN - 1)>>4;
                #endif
				#ifdef CONFIG_JPEG_OUTPUT_YUV420SP
				if(HI_TRUE == pJpegHandle->bOutYUV420SP)
				{
					CHeightTmp  = CHeightTmp >> 1;
					u32UVStride = u32UVStride;
				}
				#endif

				u32YWidth   = (u32YWidth  >> 1) << 1;
		        u32UVWidth  = u32YWidth >> 1;
		        u32UVHeight = u32YHeight;
				
				break;
				
	        }
	        case JPEG_FMT_YUV422_12:
	        {
				/**
				 ** the vertical sample
				 ** CNcomment:垂直采样 CNend\n
				 **/
	            YHeightTmp  = (cinfo->output_height + JPEG_MCU_16ALIGN - 1) & (~(JPEG_MCU_16ALIGN - 1));
	            CHeightTmp  = YHeightTmp>>1;
				YWidthTmp   = (cinfo->output_width  + JPEG_MCU_8ALIGN - 1) & (~(JPEG_MCU_8ALIGN - 1));
				u32UVStride = u32YStride<<1;
			    u32PicSize  = (((cinfo->image_width + JPEG_MCU_8ALIGN - 1)>>3) | (((cinfo->image_height + JPEG_MCU_16ALIGN - 1)>>4)<<16));
                #ifdef CONFIG_JPEG_HARDDEC2ARGB
				u32McuWidth	= (cinfo->image_width    + JPEG_MCU_8ALIGN - 1)>>3;
                #endif
				#ifdef CONFIG_JPEG_OUTPUT_YUV420SP
				if(HI_TRUE == pJpegHandle->bOutYUV420SP)
				{
					CHeightTmp  = CHeightTmp;
					u32UVStride = u32UVStride >> 1;
				}
				#endif

				u32YHeight  = (u32YHeight >> 1) << 1;
		        u32UVWidth  = u32YWidth;
		        u32UVHeight = u32YHeight >> 1;
				
				break;
	        }        
	        default:
	        {
	            YHeightTmp  = (cinfo->output_height + JPEG_MCU_8ALIGN- 1) & (~(JPEG_MCU_8ALIGN - 1));
	            CHeightTmp  = YHeightTmp;
				YWidthTmp   = (cinfo->output_width  + JPEG_MCU_8ALIGN - 1) & (~(JPEG_MCU_8ALIGN - 1));
				u32UVStride = u32YStride << 1;
				u32PicSize  = (((cinfo->image_width + JPEG_MCU_8ALIGN- 1)>>3) | (((cinfo->image_height + JPEG_MCU_8ALIGN- 1)>>3)<<16));
                #ifdef CONFIG_JPEG_HARDDEC2ARGB
				u32McuWidth = (cinfo->image_width + JPEG_MCU_8ALIGN- 1)>>3;
				#endif
				#ifdef CONFIG_JPEG_OUTPUT_YUV420SP
				if(HI_TRUE == pJpegHandle->bOutYUV420SP)
				{
					CHeightTmp  = CHeightTmp  >> 1;
					u32UVStride = u32UVStride >> 1;
				}
				#endif

				u32UVWidth  = u32YWidth;
		        u32UVHeight = u32YHeight;
				
				break;
				
	        }
	    }

		/** the decode size, argb output
		 ** CNcomment:解码分辨率大小，ARGB输出的 CNend\n
		 **/
		if(HI_FALSE == pJpegHandle->stOutDesc.bCrop)
		{	/**
			 ** is dec width and height,if not set crop message,use this
			 ** CNcomment:解码分辨率,如果没有设置裁剪分辨率那么就使用默认的输出大小 CNend\n
			 **/
			 pJpegHandle->stOutDesc.stCropRect.x = 0;
			 pJpegHandle->stOutDesc.stCropRect.y = 0;
			 pJpegHandle->stOutDesc.stCropRect.w = (HI_S32)cinfo->output_width;
			 pJpegHandle->stOutDesc.stCropRect.h = (HI_S32)cinfo->output_height;
			 #ifdef CONFIG_JPEG_HARDDEC2ARGB
		     u32DecSize = YWidthTmp * YHeightTmp * 4;
			 #endif
		}

        switch(cinfo->out_color_space)
		{
			case JCS_RGB:
			case JCS_BGR:
			case JCS_CrCbY:
			case JCS_YCbCr:
				 pJpegHandle->stJpegSofInfo.u32DisplayStride = (cinfo->output_width * 3 + pJpegHandle->u32StrideAlign - 1)&(~(pJpegHandle->u32StrideAlign - 1));
                 pJpegHandle->stJpegSofInfo.u32DecStride  =  YWidthTmp * 3;
				 break;
			case JCS_ARGB_8888:
			case JCS_ABGR_8888:
				 pJpegHandle->stJpegSofInfo.u32DisplayStride = (cinfo->output_width * 4 + pJpegHandle->u32StrideAlign - 1)&(~(pJpegHandle->u32StrideAlign - 1));
                 pJpegHandle->stJpegSofInfo.u32DecStride  =  YWidthTmp * 4;
				 break;
			case JCS_ARGB_1555:
			case JCS_ABGR_1555:
			case JCS_RGB_565:
			case JCS_BGR_565:
				 pJpegHandle->stJpegSofInfo.u32DisplayStride = (cinfo->output_width * 2 + pJpegHandle->u32StrideAlign - 1)&(~(pJpegHandle->u32StrideAlign - 1));
                 pJpegHandle->stJpegSofInfo.u32DecStride  =  YWidthTmp * 2;
				 break;
			default:
				 break;
		}

        
#ifdef CONFIG_JPEG_HARDDEC2ARGB
		if(HI_TRUE == pJpegHandle->bDecARGB)
		{
		    u32YSize  = u32DecSize;
			u32CSize  = 0;
		}
		else
#endif
		{
		    u32YSize = YHeightTmp * u32YStride;
			u32CSize = CHeightTmp * u32UVStride;
		}

		/**
		 ** the jpeg size info has calculated
		 ** CNcomment:jpeg大小已经计算完了，不需要重新计算了 CNend\n
		 **/
        pJpegHandle->stJpegSofInfo.bCalcSize       =  HI_TRUE;
		pJpegHandle->stJpegSofInfo.u32YWidth       =  u32YWidth;
		pJpegHandle->stJpegSofInfo.u32YHeight      =  u32YHeight;
		pJpegHandle->stJpegSofInfo.u32YSize        =  u32YSize;
		pJpegHandle->stJpegSofInfo.u32CWidth       =  u32UVWidth;
		pJpegHandle->stJpegSofInfo.u32CHeight      =  u32UVHeight;
        pJpegHandle->stJpegSofInfo.u32CSize        =  u32CSize;
        pJpegHandle->stJpegSofInfo.u32YStride      =  u32YStride;
        pJpegHandle->stJpegSofInfo.u32CbCrStride   =  u32UVStride;
        pJpegHandle->stJpegSofInfo.u32DisplayW     =  cinfo->output_width;
        pJpegHandle->stJpegSofInfo.u32DisplayH     =  cinfo->output_height;
        pJpegHandle->stJpegSofInfo.u32DecW         =  YWidthTmp;
        pJpegHandle->stJpegSofInfo.u32DecH         =  YHeightTmp;
		pJpegHandle->stJpegSofInfo.u32InWandH      =  u32PicSize;
		#ifdef CONFIG_JPEG_HARDDEC2ARGB
		pJpegHandle->stJpegSofInfo.u32McuWidth     =  u32McuWidth;
		/**
		 ** need 128 bytes align
		 ** CNcomment:128字节对齐 CNend\n
		 **/
		pJpegHandle->stJpegSofInfo.u32MINSize      =  u32McuWidth * 128;
		pJpegHandle->stJpegSofInfo.u32MIN1Size     =  pJpegHandle->stJpegSofInfo.u32MINSize;
		pJpegHandle->stJpegSofInfo.u32RGBSizeReg   =  2 * pJpegHandle->stJpegSofInfo.u32MINSize;
		#endif
		
}
