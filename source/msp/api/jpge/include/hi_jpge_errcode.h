/******************************************************************************
  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.
 ******************************************************************************
 File Name     : tde_errcode.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2005/4/23
Last Modified :
Description   : err code define
Function List :
History       : May modify the code to errcode.h FOR hi3110
 ******************************************************************************/
#ifndef __HI_JPGE_ERRCODE_H__
#define __HI_JPGE_ERRCODE_H__

//#include "hi_debug.h"
#include "hi_type.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

#define HI_ID_JPGE 200

/* tde start err no. */ 
#define HI_ERR_JPGE_BASE  ((HI_S32)( ((0x80UL + 0x20UL)<<24) | (HI_ID_JPGE << 16 ) | (4 << 13) | 1 ))

enum 
{
    HI_ERR_JPGE_DEV_NOT_OPEN = HI_ERR_JPGE_BASE, /**<  jpge device not open yet */ 
    HI_ERR_JPGE_DEV_OPEN_FAILED,                 /**<  open jpge device failed */
    HI_ERR_JPGE_NULL_PTR,                        /**<  input parameters contain null ptr */
    HI_ERR_JPGE_INVALID_HANDLE,                  /**<  invalid job handle */
    HI_ERR_JPGE_INVALID_PARA,                    /**<  invalid parameter */
};
    

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __HI_JPGE_ERRCODE_H__*/


