/******************************************************************************

  Copyright (C), 2013-2020, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : hi_jpeg_hdec_api.c
Version		    : Initial Draft
Author		    :
Created		    : 2013/06/20
Description	    : The user will use this api to realize some function
Function List 	:


History       	:
Date				Author        		Modification
2013/06/20		    y00181162  		    Created file
******************************************************************************/

/****************************  add include here     ***************************/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "hi_jpeg_config.h"
#include "jpeg_hdec_api.h"
#include "jpeg_hdec_adp.h"
#include "hi_jpeg_api.h"

/***************************** Macro Definition     ***************************/

/***************************** Structure Definition ***************************/

/********************** Global Variable declaration **************************/

/********************** API forward declarations    **************************/

/**********************       API realization       **************************/

/**
 \brief Sets dec output message. CNcomment:设置解码输出的信息上下文 CNend
 \attention \n
HI_JPEG_SetOutDesc should have called create jpeg decoder.set the output address \n
and output stride,set whether crop, set crop rect \n
CNcomment:必须在创建解码器之后，启动解码之前调用该接口，主要设置解码输出地址和输出 \n
          行间距，设置是否裁剪以及对应的裁剪区域 CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[in]	*pstSurfaceDesc. CNcomment:解码输出描述信息 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_SetOutDesc
 */

HI_S32  HI_JPEG_SetOutDesc(const struct jpeg_decompress_struct *cinfo,
                           const HI_JPEG_SURFACE_DESCRIPTION_S *pstSurfaceDesc)
{
    HI_S32 s32Cnt = 0;
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    if (NULL == pstSurfaceDesc)
    {
        return HI_FAILURE;
    }

    for (s32Cnt = 0; s32Cnt < MAX_PIXEL_COMPONENT_NUM; s32Cnt++)
    {
        pJpegHandle->stOutDesc.stOutSurface.pOutPhy[s32Cnt] = pstSurfaceDesc->stOutSurface.pOutPhy[s32Cnt];
        pJpegHandle->stOutDesc.stOutSurface.pOutVir[s32Cnt] = pstSurfaceDesc->stOutSurface.pOutVir[s32Cnt];
        pJpegHandle->stOutDesc.stOutSurface.u32OutStride[s32Cnt] = pstSurfaceDesc->stOutSurface.u32OutStride[s32Cnt];
    }

    pJpegHandle->stOutDesc.stOutSurface.bUserPhyMem = pstSurfaceDesc->stOutSurface.bUserPhyMem;

    if (HI_TRUE == pstSurfaceDesc->bCrop)
    {
		if( (pstSurfaceDesc->stCropRect.w <= 0)||(pstSurfaceDesc->stCropRect.h <= 0))
		{
			return HI_FAILURE;
		}
        pJpegHandle->stOutDesc.stCropRect.x = pstSurfaceDesc->stCropRect.x;
        pJpegHandle->stOutDesc.stCropRect.y = pstSurfaceDesc->stCropRect.y;
        pJpegHandle->stOutDesc.stCropRect.w = pstSurfaceDesc->stCropRect.w;
        pJpegHandle->stOutDesc.stCropRect.h = pstSurfaceDesc->stCropRect.h;
    }

    pJpegHandle->stOutDesc.bCrop = pstSurfaceDesc->bCrop;

    return HI_SUCCESS;
}

/**
 \brief Get Jpeg information. CNcomment:获取jpeg图片信息 CNend
 \attention \n
if you want to get input format and input width and input height,you should set bOutInfo false.\n
others you can get the information as follows: output rgb widht/height/stride/size or output \n
yuvsp lu width/height/stride/size and ch width/height/stride/size.\n
you call this function should after read header and set the ouput parameter.\n
CNcomment:当bOutInfo设置成FALSE的时候，可以获取到图片输出的宽度和高度以及像素格式，当设置成TRUE的 \n
          时候则可以获取到如下信息，要是解码RGB则获取到宽度/高度/行间距/大小,要是解码输出yuvsp，\n
          则可以获取的亮度和色度的宽度/高度/行间距/大小的信息。 CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[out] pJpegInfo.	CNcomment:解码jpeg的相关信息  CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_GetJpegInfo
 */
HI_S32  HI_JPEG_GetJpegInfo(j_decompress_ptr cinfo, HI_JPEG_INFO_S *pJpegInfo)
{
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    if (NULL == pJpegInfo)
    {
        return HI_FAILURE;
    }

    if (HI_FALSE == pJpegInfo->bOutInfo)
    {
        memset(pJpegInfo, 0, sizeof(HI_JPEG_INFO_S));
        pJpegInfo->u32Width[0]  = cinfo->image_width;
        pJpegInfo->u32Height[0] = cinfo->image_height;
        pJpegInfo->enFmt = pJpegHandle->enImageFmt;
        return HI_SUCCESS;
    }

    JPEG_HDEC_GetImagInfo(cinfo);

    /**
    ** output message,the output stride should 16byte align by tde request
    ** CNcomment: 输出信息 CNend\n
    **/
    switch (cinfo->out_color_space)
    {
    case JCS_YUV400_SP:
    case JCS_YUV444_SP:
    case JCS_YUV420_SP:
    case JCS_YUV422_SP_12:
    case JCS_YUV422_SP_21:
        pJpegInfo->u32Width[0]  = pJpegHandle->stJpegSofInfo.u32YWidth;
        pJpegInfo->u32Width[1]  = pJpegHandle->stJpegSofInfo.u32CWidth;
        pJpegInfo->u32Height[0] = pJpegHandle->stJpegSofInfo.u32YHeight;
        pJpegInfo->u32Height[1] = pJpegHandle->stJpegSofInfo.u32CHeight;
        pJpegInfo->u32OutStride[0] = pJpegHandle->stJpegSofInfo.u32YStride;
        pJpegInfo->u32OutStride[1] = pJpegHandle->stJpegSofInfo.u32CbCrStride;
        pJpegInfo->u32OutSize[0] = pJpegHandle->stJpegSofInfo.u32YSize;
        pJpegInfo->u32OutSize[1] = pJpegHandle->stJpegSofInfo.u32CSize;
        break;
    case JCS_ARGB_8888:
    case JCS_ABGR_8888:
    case JCS_RGB:
    case JCS_BGR:
    case JCS_RGB_565:
    case JCS_BGR_565:
    case JCS_ARGB_1555:
    case JCS_ABGR_1555:
    case JCS_CrCbY:
    case JCS_YCbCr:
        pJpegInfo->u32Width[0]  = cinfo->output_width;
        pJpegInfo->u32Height[0] = cinfo->output_height;
        pJpegInfo->u32OutStride[0] = pJpegHandle->stJpegSofInfo.u32DisplayStride;
        pJpegInfo->u32OutSize[0] = pJpegInfo->u32OutStride[0] * pJpegInfo->u32Height[0];
        break;
    default:
        break;
    }

    /**
    ** now use save dec width and height and stride and size.
    ** CNcomment: 暂时做为解码分辨率用 CNend\n
    **/
    pJpegInfo->u32Width[2]  = pJpegHandle->stJpegSofInfo.u32DecW;
    pJpegInfo->u32Height[2] = pJpegHandle->stJpegSofInfo.u32DecH;
    pJpegInfo->u32OutStride[2] = pJpegHandle->stJpegSofInfo.u32DecStride;
    pJpegInfo->u32OutSize[2] = pJpegInfo->u32OutStride[2] * pJpegInfo->u32Height[2];
    return HI_SUCCESS;
}

/**
 \brief set jpeg dec inflexion. CNcomment:在硬件解码支持的情况下，设置软解和硬解的拐点 CNend
 \attention \n
HI_JPEG_SetInflexion should have called jpeg_create_decompress.if no call this \n
function,use the default flexion \n
CNcomment:必须在创建完解码器之后调用该函数，要是没有设置拐点，使用默认的拐点大小 CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[in]	u32flexionSize. CNcomment:要设置的解码拐点大小 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_SetInflexion
 */
HI_S32 HI_JPEG_SetInflexion(const struct jpeg_decompress_struct *cinfo, const HI_U32 u32flexionSize)
{
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    pJpegHandle->u32Inflexion = u32flexionSize;

    return HI_SUCCESS;
}

/**
 \brief get jpeg dec inflexion. CNcomment:获取软件和硬件解码的拐点 CNend
 \attention \n
HI_JPEG_GetInflexion should have called jpeg_create_decompress.\n
CNcomment:在调用HI_JPEG_GetInflexion之前必须已经创建好了解码器 CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[out] pu32flexionSize. CNcomment:解码拐点大小 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_SetInflexion
 */
HI_S32 HI_JPEG_GetInflexion(const struct jpeg_decompress_struct *cinfo, HI_U32 *pu32flexionSize)
{
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    if (NULL == pu32flexionSize)
    {
        return HI_FAILURE;
    }

    *pu32flexionSize = pJpegHandle->u32Inflexion;

    return HI_SUCCESS;
}

/**
 \brief set jpeg dec coef when output argb. CNcomment:在解码输出ARGB的情况下设置相关系数 CNend
 \attention \n
HI_JPEG_SetDecCoef should have called jpeg_create_decompress.set whether horizontal \n
and vertical fliter,whether set horizontal and ver sample, whether set csc coefficient, \n
and set there coefficient.if no call this function, use the default parameter. \n
CNcomment:必须在创建完解码器之后调用该函数，主要设置是否垂直和水平滤波，是否设置垂直和水平 \n
          采样系数，是否设置CSS系数，并设置相对应的系数，要是没有调用该函数，使用默认值 CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[in]	*pstDecCoef. CNcomment:解码系数 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_SetDecCoef
 */
HI_S32 HI_JPEG_SetDecCoef(const struct jpeg_decompress_struct *cinfo, const HI_JPEG_DEC_COEF_S *pstDecCoef)
{
#ifdef CONFIG_JPEG_HARDDEC2ARGB
    HI_S32 s32CpyBytes = 0;
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    if (NULL == pstDecCoef)
    {
        return HI_FAILURE;
    }

    pJpegHandle->stDecCoef.bEnHorMedian = pstDecCoef->bEnHorMedian;
    pJpegHandle->stDecCoef.bEnVerMedian = pstDecCoef->bEnVerMedian;
    pJpegHandle->stDecCoef.bSetHorSampleCoef = pstDecCoef->bSetHorSampleCoef;
    pJpegHandle->stDecCoef.bSetVerSampleCoef = pstDecCoef->bSetVerSampleCoef;
    pJpegHandle->stDecCoef.bSetCSCCoef = pstDecCoef->bSetCSCCoef;

    s32CpyBytes = sizeof(pstDecCoef->s16HorCoef[0][0]) * MAX_HORCOEF_ROW * MAX_HORCOEF_COL;
    memcpy(pJpegHandle->stDecCoef.s16HorCoef[0], pstDecCoef->s16HorCoef[0], (size_t)s32CpyBytes);

    s32CpyBytes = sizeof(pstDecCoef->s16VerCoef[0][0]) * MAX_VERCOEF_ROW * MAX_VERCOEF_COL;
    memcpy(pJpegHandle->stDecCoef.s16VerCoef[0], pstDecCoef->s16VerCoef[0], (size_t)s32CpyBytes);

    s32CpyBytes = sizeof(pstDecCoef->s16CSCCoef[0][0]) * MAX_CSCCOEF_ROW * MAX_CSCCOEF_COL;
    memcpy(pJpegHandle->stDecCoef.s16CSCCoef[0], pstDecCoef->s16CSCCoef[0], (size_t)s32CpyBytes);

    return HI_SUCCESS;

#else
    return HI_FAILURE;
#endif

}

/**
 \brief get jpeg dec coef when output argb. CNcomment:在解码输出ARGB的情况下获取设置的相关系数 CNend
 \attention \n
HI_JPEG_GetDecCoef should have called HI_JPEG_SetDecCoef.\n
CNcomment:在调用HI_JPEG_GetDecCoef之前必须已经HI_JPEG_SetDecCoef CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[out]	pstOutDecCoef. CNcomment:输出解码系数 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_GetDecCoef
 */
#ifdef CONFIG_JPEG_HARDDEC2ARGB
HI_S32 HI_JPEG_GetDecCoef(const struct jpeg_decompress_struct *cinfo, HI_JPEG_DEC_COEF_S *pstOutDecCoef)
{
    HI_S32 s32CpyBytes = 0;
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    if (NULL == pstOutDecCoef)
    {
        return HI_FAILURE;
    }

    pstOutDecCoef->bEnHorMedian = pJpegHandle->stDecCoef.bEnHorMedian;
    pstOutDecCoef->bEnVerMedian = pJpegHandle->stDecCoef.bEnVerMedian;
    pstOutDecCoef->bSetHorSampleCoef = pJpegHandle->stDecCoef.bSetHorSampleCoef;
    pstOutDecCoef->bSetVerSampleCoef = pJpegHandle->stDecCoef.bSetVerSampleCoef;
    pstOutDecCoef->bSetCSCCoef = pJpegHandle->stDecCoef.bSetCSCCoef;

    s32CpyBytes = sizeof(pstOutDecCoef->s16HorCoef[0][0]) * MAX_HORCOEF_ROW * MAX_HORCOEF_COL;
    memcpy(pstOutDecCoef->s16HorCoef[0], pJpegHandle->stDecCoef.s16HorCoef[0], (size_t)s32CpyBytes);

    s32CpyBytes = sizeof(pstOutDecCoef->s16VerCoef[0][0]) * MAX_VERCOEF_ROW * MAX_VERCOEF_COL;
    memcpy(pstOutDecCoef->s16VerCoef[0], pJpegHandle->stDecCoef.s16VerCoef[0], (size_t)s32CpyBytes);

    s32CpyBytes = sizeof(pstOutDecCoef->s16CSCCoef[0][0]) * MAX_CSCCOEF_ROW * MAX_CSCCOEF_COL;
    memcpy(pstOutDecCoef->s16CSCCoef[0], pJpegHandle->stDecCoef.s16CSCCoef[0], (size_t)s32CpyBytes);

    return HI_SUCCESS;

}
#else
HI_S32 HI_JPEG_GetDecCoef(const struct jpeg_decompress_struct *cinfo, HI_JPEG_DEC_COEF_S *pstOutDecCoef)
{
   return HI_FAILURE;
}
#endif

/**
 \brief set alpha value. CNcomment:设置alpha的值 CNend
 \attention \n
HI_JPEG_SetAlpha should have called jpeg_create_decompress.when decode output \n
argb8888 and argb8888,we can call this function,if no call it,use the default value. \n
CNcomment:必须在创建完解码器之后调用该函数，当解码输出为ARGB8888和ABGR8888的时候可以 \n
调用该函数，要是没有调用该函数，就使用默认的值 CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[in]	s32Alpha. CNcomment:设置alpha值 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_SetAlpha
 */
HI_S32 HI_JPEG_SetAlpha(const struct jpeg_decompress_struct *cinfo, const HI_U32 u32Alpha)
{
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    pJpegHandle->u32Alpha = u32Alpha;

    return HI_SUCCESS;
}

/**
 \brief set stream from flag of use phy mem	or virtual mem. CNcomment:设置码流连续还是虚拟内存信息 CNend
 \attention \n
if want to use this function,should call between create decompress and
jpeg_stdio_src or jpeg_mem_src.if not call this we should check\n
CNcomment:如果要调用，必须在创建完解码器关联码流之前调用，如果没有调用该接口也有可能是连续的内存 CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[in]	pStreamPhyAddr. CNcomment:码流物理地址 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_SetStreamPhyMem
 */
HI_S32 HI_JPEG_SetStreamPhyMem(const struct jpeg_decompress_struct *cinfo, HI_CHAR* pStreamPhyAddr)
{
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    if (NULL == pStreamPhyAddr)
    {
        return HI_FAILURE;
    }

    pJpegHandle->stHDecDataBuf.pDataPhyBuf = pStreamPhyAddr;
    pJpegHandle->stHDecDataBuf.bUserPhyMem = HI_TRUE;

    return HI_SUCCESS;
}

/**
 \brief set if dec output yuv420sp. CNcomment:设置是否统一输出yuv420sp标识 CNend
 \attention \n
HI_JPEG_SetYCbCr420spFlag should have called jpeg_create_decompress.\n
CNcomment:在调用HI_JPEG_SetYCbCr420spFlag之前必须已经创建好了解码器 CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[in]	bOutYCbCr420sp. CNcomment:是否统一解码输出yuv420sp格式 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_SetYCbCr420spFlag
 */
HI_S32 HI_JPEG_SetYCbCr420spFlag(const struct jpeg_decompress_struct *cinfo, const HI_BOOL bOutYCbCr420sp)
{
#ifdef CONFIG_JPEG_OUTPUT_YUV420SP
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    pJpegHandle->bOutYUV420SP = bOutYCbCr420sp;

    return HI_SUCCESS;

#else
    return HI_FAILURE;
#endif

}

/**
 \brief set if output lu pixle sum value. CNcomment:设置是否统计亮度值标识 CNend
 \attention \n
HI_JPEG_SetLuPixSumFlag should have called jpeg_create_decompress.\n
CNcomment:在调用HI_JPEG_SetLuPixSumFlag之前必须已经创建好了解码器 CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[in]	bLuPixSum. CNcomment:设置是否统计亮度值标识 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_SetLuPixSumFlag
 */
HI_S32 HI_JPEG_SetLuPixSumFlag(const struct jpeg_decompress_struct *cinfo, const HI_BOOL bLuPixSum)
{
#ifdef CONFIG_JPEG_OUTPUT_LUPIXSUM
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    pJpegHandle->bLuPixSum = bLuPixSum;

    return HI_SUCCESS;

#else
    return HI_FAILURE;
#endif

}

/**
 \brief get lu pixle sum value. CNcomment:获取亮度值 CNend
 \attention \n
If you want to get the luminance value, you can call this function, \n
but you should call it after jpeg_start_decompress and have call HI_JPEG_SetLuPixSumFlag.\n
CNcomment:要是想得到亮度值，可以调用该函数，但必须在jpeg_start_decompress之后调用而且解码 \n
          之前要调用HI_JPEG_SetLuPixSumFlag CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[out] u64LuPixSum. CNcomment:输出亮度值 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_GetLuPixSum
 */
HI_S32 HI_JPEG_GetLuPixSum(const struct jpeg_decompress_struct *cinfo, HI_U64 *u64LuPixSum)

{
    if (NULL == u64LuPixSum)
    {
        return HI_FAILURE;
    }

#ifdef CONFIG_JPEG_OUTPUT_LUPIXSUM
    JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

    *u64LuPixSum = pJpegHandle->u64LuPixValue;

    return HI_SUCCESS;

#else
    *u64LuPixSum = 0;
    return HI_FAILURE;
#endif

}

/**
 \brief get jpeg dec time. CNcomment:获取jpeg解码时间 CNend
 \attention \n
If you want to know how much the decode cost time ,you can call HI_JPEG_GetDecTime, \n
but should have called it after jpeg_finish_decompress.\n
CNcomment:要是想看解码花费了多少时间可以调用该函数，但必须在解码完成之后调用 CNend\n

 \param[in]	cinfo. CNcomment:解码对象 CNend
 \param[out] pu32DecTime. CNcomment:输出整个解码时间 CNend

 \retval ::HI_SUCCESS
 \retval ::HI_FAILURE

 \see \n
::HI_JPEG_GetDecTime
 */
HI_S32 HI_JPEG_GetDecTime(const struct jpeg_decompress_struct *cinfo, HI_U32 *pu32DecTime)
{
#ifdef CONFIG_JPEG_GETDECTIME
		if (NULL == pu32DecTime)
		{
			return HI_FAILURE;
		}

		JPEG_HDEC_HANDLE_S_PTR pJpegHandle = (JPEG_HDEC_HANDLE_S_PTR)(cinfo->client_data);

		*pu32DecTime = pJpegHandle->u32DecTime;

		return HI_SUCCESS;

#else
		return HI_FAILURE;
#endif

}
