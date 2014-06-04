/***********************************************************************************
 *             Copyright 2006 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: jpg_fmwcomm.h
 * Description: 
 *
 * History:
 * Version   Date             Author     DefectNum    Description
 * main\1    2008-03-27       d37024                  Create this file.
 ***********************************************************************************/

#ifndef  _JPG_FMWCOMM_H_
#define  _JPG_FMWCOMM_H_

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <time.h>


#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>

#include <semaphore.h>
#include <sys/time.h>
#include <sys/mman.h>
#include <pthread.h>


#include "hi_jpeg_config.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif  /* __cplusplus */
#endif  /* __cplusplus */


#define JPG_V200_IP      
#define JPG_STATIC_HDEC  
#define JPG_UV_SWAP		 


#ifdef JPGFMW_DEBUG
#define JPEGFMW 0x80
#define JPG_TRACE( level, module, fmt, args... ) \
do { \
		 HIJPEG_TRACE( "%s Line %d Function %s(): ", __FILE__,  __LINE__, __FUNCTION__);\
		 HIJPEG_TRACE(fmt, ##args); \
} while (0)
#elif defined WIN32
#define JPG_TRACE
#define JPEGFMW 0x80
#else
#define JPG_TRACE( level, module, fmt, args... )
#endif

#include "hi_type.h"
#include "hi_jpg_errcode.h"
#include "hi_jpg_type.h"

typedef sem_t JPGVCOS_sem_t;
typedef FILE JPGVCOS_FILE;

#define JPGVCOS_F_OK   	F_OK
#define JPGVCOS_O_RDWR 	O_RDWR
#define JPGVCOS_O_SYNC 	O_SYNC
#define JPGVCOS_PROT_READ  PROT_READ
#define JPGVCOS_PROT_WRITE PROT_WRITE
#define JPGVCOS_MAP_SHARED MAP_SHARED

#define JPGVCOS_sem_init sem_init
#define JPGVCOS_sem_destroy sem_destroy
#define JPGVCOS_sem_post sem_post
#define JPGVCOS_sem_wait sem_wait
#define JPGVCOS_printf printf
#define JPGVCOS_memset memset
#define JPGVCOS_malloc malloc
#define JPGVCOS_free   free
#define JPGVCOS_gettimeofday gettimeofday
#define JPGVCOS_fopen  fopen
#define JPGVCOS_fclose fclose
#define JPGVCOS_fseek  fseek
#define JPGVCOS_ftell  ftell
#define JPGVCOS_SEEK_END SEEK_END
#define JPGVCOS_SEEK_CUR SEEK_CUR
#define JPGVCOS_SEEK_SET SEEK_SET
#define JPGVCOS_fread  fread
#define JPGVCOS_fwrite fwrite
#define JPGVCOS_ferror ferror
#define JPGVCOS_feof   feof
#define JPGVCOS_memcpy memcpy
#define JPGVCOS_access access
#define JPGVCOS_open   open
#define JPGVCOS_close  close
#define JPGVCOS_ioctl  ioctl
#define JPGVCOS_mmap   mmap
#define JPGVCOS_munmap munmap
#define JPGVCOS_pthread_t pthread_t
#define JPGVCOS_pthread_create pthread_create
#define JPGVCOS_pthread_join pthread_join
#define JPGVCOS_usleep usleep

#ifdef WIN32
#define POS() { HIJPEG_TRACE(">>%s %d \n", __FILE__, __LINE__); }
#else
#define POS() { HIJPEG_TRACE(">>%s %d \n", __FUNCTION__, __LINE__); }
#endif

#define JPG_PRINT_RET(info, ret)  { HIJPEG_TRACE(info); HIJPEG_TRACE("  line %d return %#x\n", __LINE__, ret); }

#ifdef WIN32
#include <assert.h>
#define jpg_assert(x, action)\
do{\
    assert(x);\
}while(0)
#else
#define jpg_assert(x, action)\
do{\
    if(!(x))  \
    {\
		JPG_TRACE(HI_JPGLOG_LEVEL_ERROR, JPEGFMW, "jpg_assert error!\n");\
		action;\
    }\
}while(0)
#endif




#define JPG_CHECK_RET(Ret, action)          \
do{                                            \
    if ((HI_FAILURE == (Ret))                   \
     || (HI_ERR_JPG_INVALID_HANDLE  == (Ret))   \
     || (HI_ERR_JPG_PTR_NULL == (Ret))         \
     || (HI_ERR_JPG_INVALID_PARA == (Ret)))       \
    {                                            \
        JPG_TRACE(HI_JPGLOG_LEVEL_ERROR, JPEGFMW, "check ret error! return: %#x\n", Ret);\
        action;                                 \
    }                                           \
}while(0);



#define JPG_CHECK_SYSERR(Ret, action)          \
do{                                               \
    if ((HI_ERR_JPG_INVALID_HANDLE  == (Ret))   \
     || (HI_ERR_JPG_PTR_NULL == (Ret))         \
     || (HI_ERR_JPG_INVALID_PARA == (Ret)))       \
    {                                            \
        JPG_TRACE(HI_JPGLOG_LEVEL_ERROR, JPEGFMW, "check system error! return: %#x\n", Ret);\
        action;                                 \
    }                                           \
}while(0);

#define STATIC_FUNC   static


#if 1
#define JPG_CHECK_HANDLE(x)         \
do                                              \
{                                               \
    if (NULL == (x))    \
    {                                                       \
        return  HI_ERR_JPG_INVALID_HANDLE;\
    }                                           \
}while(0)

#define JPG_CHECK_NULLPTR(p)            \
do                                                  \
{                                               \
    if (NULL == (p))                \
    {                                               \
        return HI_ERR_JPG_PTR_NULL; \
    }                                           \
}while(0);

#define JPG_CHECK_ENUM(Par, Butt)           \
do                                                  \
{                                               \
    if ((Butt) <= (Par))                   \
    {                                               \
        return HI_ERR_JPG_INVALID_PARA;          \
    }                                           \
}while(0);

#define JPG_CHECK_LEN(Len)          \
do                                                  \
{                                               \
    if (0 == (Len))                    \
    {                                               \
        return HI_ERR_JPG_INVALID_PARA;          \
    }                                           \
}while(0);

#define JPG_EQUAL_HANDLE(InHandle)\
do                                              \
{                                               \
    if ( (InHandle) != s_DecHandle)   \
    {                                           \
    	JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "HI_ERR_JPG_INVALID_HANDLE!\n");\
        return  HI_ERR_JPG_INVALID_HANDLE;\
    }                                           \
}while(0)
#endif


typedef struct hiJPG_MEM_S
{
    HI_VOID* 	pVirtAddr;
    HI_U32 	PhysAddr;
    HI_U32     	Total;	
    HI_U32 	Offset;
} JPG_MEM_S;

typedef struct hiJPGDEC_CTRL_S
{
	JPG_MEM_S s_Global;
	JPG_MEM_S s_DebugMem;
 	JPG_MEM_S s_DecMem;
	JPG_MEM_S s_ParseMem;
	JPG_MEM_S s_HDecMem;
	JPG_MEM_S s_SDecMem;
	JPG_MEM_S s_ExifMem;
	JPG_MEM_S s_Jpg6bMem;
}JPGDEC_CTRL_S;
 


#define MMB_TAG  "jpeg"
#define MMB_TAG_1 "graphics"
#define MMB_TAG_2 ""



#define JPG_CACHED 		1
#define JPG_UNCACHED 	0

#if 1
extern JPGDEC_CTRL_S s_DecCtrlMem;

HI_VOID*  JPGFMW_Alloc(JPG_MEM_S* pstMem, HI_U32 Size);
HI_VOID   JPGFMW_Free(JPG_MEM_S* pstMem);
HI_VOID   JPGFMW_MemReset(JPG_MEM_S* pstMem, HI_U32  RsvSize);
HI_VOID*  JPGFMW_MemGet(JPG_MEM_S* pstMem, HI_U32  Size);
#endif

#if 1   /* TRACE_PATH */

#define JPG_TRACE_NUM 256

typedef struct hiJPG_TRACE_S{
    int   LineNum[JPG_TRACE_NUM];
	char  FuncName[JPG_TRACE_NUM][32];
	int info[JPG_TRACE_NUM];
    int   CurIdx;
}JPG_TRACE_S;

typedef enum hiFILE_CODE_E 
{
    JPG_API = 0,
    JPG_DECCTRL,
    JPG_BUF,
    JPG_PARSE,
    JPG_HDEC,
    JPG_SDEC,
    JPG_6B = 6,
} FILE_CODE_E;

#define TRACE_PATH(file_code, funcname, line_num, tracedata)\
{\
    g_pTrace->LineNum[g_pTrace->CurIdx] = (((int)file_code << 20) | ((int)line_num & 0xfffff));\
	sprintf(g_pTrace->FuncName[g_pTrace->CurIdx], "%s", funcname);\
	g_pTrace->info[g_pTrace->CurIdx] = tracedata;\
	g_pTrace->CurIdx = (g_pTrace->CurIdx + 1) % JPG_TRACE_NUM;\
}

#define GET_US_TIME(CurrUs) \
do{ \
    struct timeval time_val; \
	gettimeofday(&time_val, NULL); \
    CurrUs = time_val.tv_sec*1000000 + time_val.tv_usec; \
} while(0)

extern JPG_TRACE_S* g_pTrace;
extern JPG_TRACE_S* g_pLastTrace;

extern void PRINT_PATH();
extern char* g_trace_filename[7];
#endif

#ifdef __cplusplus
#if __cplusplus
}
#endif  /* __cplusplus */
#endif  /* __cplusplus */

#endif /* _JPG_COMMON_H_*/



