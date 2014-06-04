/******************************************************************************

  Copyright (C), 2001-2011, Huawei Tech. Co., Ltd.

 ******************************************************************************
 File Name     : tde_type.h
Version       : Initial Draft
Author        : w54130
Created       : 2007/5/21
Last Modified :
Description   : TDE public type
Function List :
History       :
1.Date        : 2007/5/21
Author      : w54130
Modification: Created file

 ******************************************************************************/
#ifndef __HI_JPGE_TYPE_H__
#define __HI_JPGE_TYPE_H__


#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* End of #ifdef __cplusplus */

#include "hi_jpge_errcode.h"

/****************************************************************************/
/*                             TDE2 types define                             */
/****************************************************************************/

/*JPEG handle define*/
/*CNcomment:JPGE¾ä±ú¶¨Òå*/
typedef HI_S32 JPGE_HANDLE;


#define JPGE_YUV420       0
#define JPGE_YUV422       1
#define JPGE_YUV444       2

#define JPGE_SEMIPLANNAR  0
#define JPGE_PLANNAR      1
#define JPGE_PACKAGE      2

#define JPGE_ROTATION_0   0
#define JPGE_ROTATION_90  1
#define JPGE_ROTATION_270 2
#define JPGE_ROTATION_180 3

/*
the attributes of src jpeg data 
*/
typedef struct
{
    HI_U32  FrameWidth;    /* 16-4096, 4-byte aligned */
    HI_U32  FrameHeight;   /* 16-4096, 4-byte aligned */
    
    HI_U32  YuvSampleType; /* 420 422 or 444 */
    HI_U32  YuvStoreType;  /* SemiPlannar, Plannar or Package */
    HI_U32  RotationAngle; /* 0 90 180 or 270 degree */
    
    HI_U16  SlcSplitEn;    /* Slice split enable */
    HI_U16  SplitSize;     /* MCU Number @ Slice  */
    
    HI_U32  Qlevel;        /* 1 ~ 99, large value = high image quality = large JFIF size */
    
} Jpge_EncCfg_S;

typedef struct
{
    HI_U32  BusViY;      /* 16-byte aligned  */
    HI_U32  BusViC;      /* 16-byte aligned  */  /* N/A @ package */
    HI_U32  BusViV;      /* 16-byte aligned  */  /* N/A @ package & semiplannar */
    HI_U32  ViYStride;   /* 16-byte aligned  */
    HI_U32  ViCStride;   /* 16-byte aligned  */  /* N/A @ package */
    
    HI_U32  BusOutBuf;   /* Stream Buf Bus Addr */
    HI_U8  *pOutBuf;     /* Stream Buf Virtual Addr */
    HI_U32  OutBufSize;  /* in byte */    
} Jpge_EncIn_S;

typedef struct
{
    HI_U32  BusStream;   /* JFIF Stream Bus Addr */
    HI_U8  *pStream;     /* JFIF Stream Virtual Addr */
    HI_U32  StrmSize;    /* JFIF Stream Size in byte */    
} Jpge_EncOut_S;

typedef struct _Jpge_EncCfgInfo_S
{
    JPGE_HANDLE   *pEncHandle;
    Jpge_EncCfg_S EncCfg;
}Jpge_EncCfgInfo_S;


typedef struct _Jpge_EncInfo_S
{
    JPGE_HANDLE   EncHandle;
    Jpge_EncIn_S  EncIn; 
    Jpge_EncOut_S EncOut;
}Jpge_EncInfo_S;

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */


#endif /* End of #ifndef __HI_JPGE_TYPE_H__ */



