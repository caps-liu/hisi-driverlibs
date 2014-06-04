/*
 * include/tvp5150.h for Linux .
 *
 * This file defines tvp5150 micro-definitions for user.
 * History:
 *      10-April-2006 create this file
 */

#ifndef __TVP5150_H__
#define __TVP5150_H__

#include "hi_debug.h"

#define HI_FATAL_TVP5150(fmt...) HI_FATAL_PRINT(HI_ID_TVP5150, fmt)
#define HI_ERR_TVP5150(fmt...) HI_ERR_PRINT(HI_ID_TVP5150, fmt)
#define HI_WARN_TVP5150(fmt...) HI_WARN_PRINT(HI_ID_TVP5150, fmt)
#define HI_INFO_TVP5150(fmt...) HI_INFO_PRINT(HI_ID_TVP5150, fmt)
#define HI_DBG_TVP5150(fmt...) HI_DBG_PRINT(HI_ID_TVP5150, fmt)

#define TVP5150_NAME "HI_TVP5150"

#if 1
 #define TVP5150_SET_CCIRMODE _IOW(HI_ID_TVP5150, 0x01, int)
 #define TVP5150_GET_CCIRMODE _IOR(HI_ID_TVP5150, 0x02, int)
 #define TVP5150_GET_NORM _IOR(HI_ID_TVP5150, 0x03, int)
 #define TVP5150_SET_REG _IOW(HI_ID_TVP5150, 0x04, int)
 #define TVP5150_GET_REG _IOR(HI_ID_TVP5150, 0x05, int)
#else
 #define TVP5150_SET_CCIRMODE 0
 #define TVP5150_GET_CCIRMODE 1
 #define TVP5150_GET_NORM 2
#endif

#endif //__TVP5150_H__
