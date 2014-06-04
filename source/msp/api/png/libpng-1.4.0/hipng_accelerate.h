/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name	: hipng_accelerate.h
Version		: Initial Draft
Author		: z00141204
Created		: 2010/10/18
Description	: libpng适配层
Function List 	: 
			  		  
History       	:
Date				Author        		Modification
2010/10/18		z00141204		Created file      	
******************************************************************************/

#ifndef __HIPNG_ACCELERATE_H__
#define __HIPNG_ACCELERATE_H__

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif  /* __cplusplus */
#endif  /* __cplusplus */

#include "hi_type.h"

#define PNG_NO_PEDANTIC_WARNINGS
#include "png.h"
#include "hi_png_type.h"
#include "hi_png_api.h"

#define HIPNG_SWDEC_MASK 0x1
#define HIPNG_HWDEC_MASK 0x2
#define HIPNG_DEC_COPY 0x4

/* 硬件解码控制结构体 */
typedef struct tag_hipng_struct_hwctl_s
{
    HI_U8 u8DecMode;         /*Decode mode*//*CNcomment:解码模式*/

    /*Decode mode specified by user*/
    /*CNcomment:用户指定的解码模式*/
    HI_U8 u8UserDecMode; /* 用户指定的解码模式 */
    HI_BOOL bSyncDec;       /*Sync decode flag*//*CNcomment:是否同步解码*/
    HI_PNG_HANDLE s32Handle; /*Decoder handle*//*CNcomment:硬件解码器句柄*/
    HI_PNG_STATE_E eState;  /*Decoder state*//*CNcomment:解码器状态 */

    /*IO function of software decode*/
    /*CNcomment:libpng原来的IO函数指针*/
    png_rw_ptr read_data_fn;    /* libpng原来的IO函数指针 */

    /*IO function of hardware decode*/
    /*CNcomment:硬件的IO函数指针*/
    HI_PNG_READ_FN read_data_fn_hw; /* 硬件的IO函数指针 */
    png_bytepp image;       /*Output buf*//*CNcomment:目标解码内存 */
    png_uint_32 idat_size;     /* current IDAT size for read */
    png_uint_32 crc;           /* current chunk CRC value */
    png_byte chunk_name[5];
    png_uint_32 pallateaddr;
    HI_BOOL bPallateAlpha;
    HI_U32 u32Phyaddr;
    HI_U32 u32Stride;
    HI_U32 u32InflexionSize;
}hipng_struct_hwctl_s;


/*****************************************************************
* func:	创建硬件解码信息结构体
* in:	      user_png_ver,error_ptr,png_error_ptr and warn_fn are useless, only for keep
            the same style with hipng_create_read_struct
            CNcomment:user_png_ver,error_ptr,png_error_ptr,warn_fn 无用,
            只是为了和libpng的形式保持一致
* out:	A pointer to struct hipng_struct_hwctl_s
            CNcomment:结构体指针
* ret:   none
* others:	
*****************************************************************/
hipng_struct_hwctl_s *hipng_create_read_struct_hw(png_const_charp user_png_ver, png_voidp error_ptr,
   png_error_ptr error_fn, png_error_ptr warn_fn);

/*****************************************************************
* func:	Destroy hardware decoder
            CNcomment:销毁硬件解码信息结构体
* in:	pstHwctlStruct A pointer to decoder struct  CNcomment:解码信息结构体
* out:	none
* ret:   none
* others:	
*****************************************************************/
HI_VOID hipng_destroy_read_struct_hw(hipng_struct_hwctl_s *pstHwctlStruct);

/*****************************************************************
* func:	Start hardware decode       CNcomment:png硬件解码
* in:	png_ptr png   decoder ptr     CNcomment:解码结构体
* out:	none
* ret:	HI_SUCCESS	Success     CNcomment:解码成功
*		HI_FAILURE	Failure     CNcomment:解码失败
* others:	
*****************************************************************/
HI_S32 hipng_read_image_hw(png_structp png_ptr);

HI_S32 hipng_get_readfn_hw(png_structp png_ptr);

HI_S32 hipng_get_result(png_structp png_ptr, HI_BOOL bBlock);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif  /* __HIPNG_ACCELERATE_H__ */

