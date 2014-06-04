/*******************************************************************************
 *              Copyright 2006 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: hi_jpg_errcode.h
 * Description: 
 *
 * History:
 * Version   Date             Author    DefectNum    Description
 * main\1    2008-03-19       d37024    HI_NULL      Create this file.
 ******************************************************************************/
#ifndef __HI_JPG_ERRCODE_H__
#define __HI_JPG_ERRCODE_H__

#include "hi_type.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

/********************************************************
  JPG error code definition
 *********************************************************/
#define MID_JPG 0x25/*JPG module ID*/

#define HI_ERR_JPGAPPID  (0x80UL + 0x7EUL)

#define HI_DEF_JPGERR( mid, level, errid) \
    ((HI_S32)((HI_ERR_JPGAPPID) << 24) | ((mid) << 16 ) | ((level)<<13) | (errid))

typedef enum hiLOG_JPGERRLEVEL_E
{
    HI_JPGLOG_LEVEL_DEBUG   = 0,               /* debug-level                                  */
    HI_JPGLOG_LEVEL_INFO ,                     /* informational                                */
    HI_JPGLOG_LEVEL_NOTICE,                    /* normal but significant condition             */
    HI_JPGLOG_LEVEL_WARNING,                   /* warning conditions                           */
    HI_JPGLOG_LEVEL_ERROR,                     /* error conditions                             */
    HI_JPGLOG_LEVEL_CRIT,                      /* critical conditions                          */
    HI_JPGLOG_LEVEL_ALERT,                     /* action must be taken immediately             */
    HI_JPGLOG_LEVEL_FATAL,                     /* just for compatibility with previous version */
    HI_JPGLOG_LEVEL_BUTT
} LOG_JPGERRLEVEL_E;

/*JPG API error code*/
enum hiJPG_ErrorCode_E
{
    ERR_JPG_PTR_NULL       = 0x1,    
    ERR_JPG_DEV_OPENED     = 0x2,    
    ERR_JPG_DEV_NOOPEN     = 0x3,    
    ERR_JPG_INVALID_PARA   = 0x4,    
    ERR_JPG_INVALID_FILE   = 0x5,    
    ERR_JPG_NO_MEM         = 0x6,    
    ERR_JPG_INVALID_SOURCE = 0x7,    
    ERR_JPG_TIME_OUT       = 0x8,    
    ERR_JPG_INVALID_HANDLE = 0x9,    
    ERR_JPG_EXIST_INSTANCE = 0xA,    
    ERR_JPG_THUMB_NOEXIST  = 0xB,    
    ERR_JPG_NO_TASK        = 0xC,    
    ERR_JPG_NOSUPPORT_FMT  = 0xD,    
    ERR_JPG_DEC_BUSY       = 0xE,    
    ERR_JPG_DEC_PARSING    = 0xF,    
    ERR_JPG_DEC_DECODING   = 0x10,   
    ERR_JPG_WANT_STREAM    = 0x11,   
    ERR_JPG_DEC_FAIL       = 0x12,   
    ERR_JPG_PARSE_FAIL     = 0x13,   
    ERR_JPG_DEC_RUNNING    = 0x14    
};

/*JPG error code define*/
#define HI_ERR_JPG_PTR_NULL\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_PTR_NULL)

#define HI_ERR_JPG_DEV_OPENED\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_DEV_OPENED)

#define HI_ERR_JPG_DEV_NOOPEN\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_DEV_NOOPEN)

#define HI_ERR_JPG_INVALID_PARA\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_INVALID_PARA)

#define HI_ERR_JPG_INVALID_FILE\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_INVALID_FILE)

#define HI_ERR_JPG_NO_MEM\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_NO_MEM)

#define HI_ERR_JPG_INVALID_SOURCE\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_INVALID_SOURCE)

#define HI_ERR_JPG_TIME_OUT\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_TIME_OUT)

#define HI_ERR_JPG_INVALID_HANDLE\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_INVALID_HANDLE)

#define HI_ERR_JPG_EXIST_INSTANCE\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_EXIST_INSTANCE)

#define HI_ERR_JPG_THUMB_NOEXIST\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_THUMB_NOEXIST)

#define HI_ERR_JPG_NO_TASK\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_NO_TASK)

#define HI_ERR_JPG_NOSUPPORT_FMT\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_NOSUPPORT_FMT)

#define HI_ERR_JPG_DEC_BUSY\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_DEC_BUSY)

#define HI_ERR_JPG_DEC_PARSING\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_DEC_PARSING)

#define HI_ERR_JPG_DEC_DECODING\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_DEC_DECODING)    

#define HI_ERR_JPG_WANT_STREAM\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_WANT_STREAM)   

#define HI_ERR_JPG_DEC_FAIL\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_DEC_FAIL) 

#define HI_ERR_JPG_PARSE_FAIL\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_PARSE_FAIL)  

#define HI_ERR_JPG_DEC_RUNNING\
    HI_DEF_JPGERR(MID_JPG, HI_JPGLOG_LEVEL_ERROR, ERR_JPG_DEC_RUNNING) 


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __HI_JPG_ERRCODE_H__ */

