/******************************************************************************

  Copyright (C), 2008-2018, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : hi_gfx_test_comm.h
Version		    : version 1.0
Author		    : 
Created		    : 2013/07/04
Description	    : CNcomment:API跨平台适配,用来做FPGA验证和EDA验证的函数封装
                            函数名一样，实现不一样 CNend\n
Function List 	: 

History       	:
Date				Author        		Modification
2013/07/04		    y00181162  		    
******************************************************************************/


#ifndef  _HI_GFX_TEST_COMM_H_
#define  _HI_GFX_TEST_COMM_H_


/***************************** SDK Version Macro Definition *********************/

/** \addtogroup 	GFX COMM */
/** @{ */  /** <!-- 【GFX COMM】 */


/** @} */	/*! <!-- Macro Definition end */


/*********************************add include here******************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/time.h>
#include <sys/ioctl.h>
#include <memory.h>
#include <fcntl.h>
#include <sys/mman.h>


#include "hi_type.h"


/***************************** Macro Definition ******************************/

/** \addtogroup 	GFX COMM */
/** @{ */  /** <!-- 【GFX COMM】 */

#define GFX_Printf( fmt, args... )\
do { \
		fprintf(stderr,fmt, ##args );\
} while (0)



#define ConvertID(module_id) (module_id + HI_ID_TDE - HIGFX_TDE_ID)

#ifdef CONFIG_GFX_COMM_DEBUG_DISABLE
    #define HI_GFX_COMM_LOG_FATAL(module_id,fmt...)    
    #define HI_GFX_COMM_LOG_ERROR(module_id,fmt...)    
    #define HI_GFX_COMM_LOG_WARNING(module_id,fmt...)  
    #define HI_GFX_COMM_LOG_INFO(module_id,fmt...)     
#else 
    #define HI_GFX_COMM_LOG_FATAL(module_id, fmt...)
    #define HI_GFX_COMM_LOG_ERROR(module_id,fmt...)
    #define HI_GFX_COMM_LOG_WARNING(module_id,fmt...)
    #define HI_GFX_COMM_LOG_INFO(module_id,fmt...)
#endif 

extern HI_S32 sg_s32MMZDev;

#define MMZ_INIT(mmzname)	  \
	do { \
		if((sg_s32MMZDev = open(mmzname, O_RDWR)) < 0) \
		{\
			 fprintf(stderr,"open mmz failue\n");\
			 return; 			   \
		}\
	} while (0)

#define MMZ_DINIT()	  \
	do { \
		if(sg_s32MMZDev >=	0)	\
		{\
		   close(sg_s32MMZDev);	\
		}\
		sg_s32MMZDev = -1;		\
	} while (0)


#define IOC_MMB_ALLOC		           _IOWR('m', 10,  mmb_info)
#define IOC_MMB_FREE		           _IOW ('m', 12,  mmb_info)
#define IOC_MMB_USER_REMAP	           _IOWR('m', 20,  mmb_info)
#define IOC_MMB_USER_REMAP_CACHED    _IOWR('m', 21,  mmb_info)
#define IOC_MMB_USER_UNMAP	           _IOWR('m', 22,  mmb_info)
#define IOC_MMB_FLUSH_DCACHE	       _IO  ('c', 40)


/** @} */	/*! <!-- Macro Definition end */


/*************************** Enum Definition ****************************/

/** \addtogroup 	 GFX COMM */
/** @{ */  /** <!-- 【GFX COMM】 */

/** enum of the module ID */
/** CNcomment:每个模块的ID号 */
typedef enum tagHIGFX_MODE_ID_E
{

	HIGFX_TDE_ID      = 0,    /**< TDE ID         */
	HIGFX_JPGDEC_ID,          /**< JPEG DECODE ID */
	HIGFX_JPGENC_ID,          /**< JPEG_ENCODE ID */
	HIGFX_FB_ID,              /**<  FRAMEBUFFER ID */
	HIGFX_PNG_ID,             /**< PNG ID          */
	HIGFX_BUTT_ID,
	
}HIGFX_MODE_ID_E;


/** @} */  /*! <!-- enum Definition end */

/*************************** Structure Definition ****************************/


/** \addtogroup 	 GFX COMM */
/** @{ */  /** <!-- 【GFX COMM】 */

typedef struct
{
	unsigned long phys_addr;   /** phys-memory address **/
	unsigned long align;	    /** if you need your phys-memory have special align size **/
	unsigned long size;		    /** length of memory you need, in bytes **/
	unsigned int order;
	void *mapped;			    /** userspace mapped ptr **/

	union
	{
	
    		struct
    		{
    			unsigned long prot  :8;	 /** PROT_READ or PROT_WRITE **/
    			unsigned long flags :12; /** MAP_SHARED or MAP_PRIVATE **/
    		};
    		unsigned long w32_stuf;
    		
	};
	
	char mmb_name[16];
	char mmz_name[32];
	unsigned long gfp;	 /* reserved, do set to 0 */
	
} mmb_info;



/** @} */  /*! <!-- Structure Definition end */


/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/

/** \addtogroup 	 GFX COMM */
/** @{ */  /** <!-- 【GFX COMM】 */


/** 
\brief get the system time,not use gettimeofday to get time. CNcomment:获取系统时间，不使用gettimeofday的原因在于这个函数获取的时间有可能被客户的后台程序修改 CNend
\attention \n

\param[out] *pu32TimeMs  CNcomment:获取到的时间ms CNend\n
\param[out] *pu32TimeUs  CNcomment:获取到的时间us CNend\n
\retval ::HI_SUCCESS
\retval ::HI_FAILURE

\see \n
::HI_GFX_GetTimeStamp
*/
static inline HI_S32 HI_GFX_GetTimeStamp(HI_U32 *pu32TimeMs, HI_U32 *pu32TimeUs)
{/**使用gettime来实现 **/

		struct timeval tv_cur;

		if(HI_NULL == pu32TimeMs)
		{
			return HI_FAILURE;
		}

		gettimeofday(&tv_cur, NULL);

		*pu32TimeMs = (tv_cur.tv_usec / 10000) + (tv_cur.tv_sec * 1000);

		return HI_SUCCESS;

		
}

static inline HI_VOID* GFX_MMZ_New(HI_S32 mmz,HI_U32 size,HI_U32 align,HI_CHAR *mmz_name, HI_CHAR *mmb_name)
{

	      mmb_info   mmi;
	      
	      memset(&mmi,0,sizeof(mmi));
	      
	      mmi.size = size;
	      mmi.align =align;
	      
	      if (mmz_name != NULL)
	      {   
	          /**
	           ** sizeof 包含了字符串的'\0'的长度
	           ** strlen 第一个 '\0' 之前所有字符的数量,不包括'\0'
	           ** sizeof("d\0sign")  = 7
	           ** strlen("d\0sign")  = 1
	           ** 参考修改建议
	           **/
	          strncpy(mmi.mmz_name, mmz_name, strlen(mmi.mmz_name));
			  mmi.mmz_name[strlen(mmz_name)]='\0';
	      }
	      
	      if (mmb_name != NULL)
	      {
	          strncpy(mmi.mmb_name, mmb_name, strlen(mmi.mmb_name));
			  mmi.mmz_name[strlen(mmb_name)]='\0';
	      }
		  
	      if (ioctl(mmz, IOC_MMB_ALLOC, &mmi) !=0)
	      {
	    	 return NULL;
	      }

	      return (void *)mmi.phys_addr;

}

static inline HI_VOID *GFX_MMZ_Map(HI_S32 mmz, HI_VOID *phyAddr, HI_S32 cached)
{


		  int s32Ret;
		  
	      mmb_info   mmi;
	      memset(&mmi,0,sizeof(mmi));
		  
		  if(cached != 0 && cached != 1)
		  {
		    return NULL;
		  }
	      mmi.prot = PROT_READ | PROT_WRITE;
	      mmi.flags = MAP_SHARED;
	      mmi.phys_addr = (unsigned long)phyAddr;

		  if(cached)
		  {
		      s32Ret = ioctl(mmz,IOC_MMB_USER_REMAP_CACHED, &mmi);
	          if (s32Ret!=0)
	          {
	    		 return NULL;
	          }
			  
		  }
		  else
		  {
		      s32Ret = ioctl(mmz,IOC_MMB_USER_REMAP, &mmi);
	          if (s32Ret!=0)
	          {
	    		 return NULL;
	          }
		  }
		  
	      return (void *)mmi.mapped;
	  
	
}

static inline HI_S32 GFX_MMZ_UnMap(HI_S32 mmz, HI_VOID *phyAddr)
{

      mmb_info   mmi;
      memset(&mmi,0,sizeof(mmi));
      mmi.phys_addr = (unsigned long)phyAddr;
      return ioctl(mmz, IOC_MMB_USER_UNMAP, &mmi);

}
static inline HI_S32 GFX_MMZ_Delete(HI_S32 mmz, HI_VOID *phyAddr)
{

      mmb_info   mmi;
      memset(&mmi,0,sizeof(mmi));
      mmi.phys_addr = (unsigned long)phyAddr;
      return ioctl(mmz, IOC_MMB_FREE, &mmi);

}
static inline HI_S32 GFX_MMZ_Flush(HI_S32 mmz)
{
	return ioctl(mmz, IOC_MMB_FLUSH_DCACHE, NULL);
}


/** 
\brief free the mem that has alloced. CNcomment:释放分配过的内存 CNend
\attention \n

\param[in]	u32Phyaddr. CNcomment:物理地址 CNend\n

\retval ::HI_SUCCESS
\retval ::HI_FAILURE

\see \n
::HI_GFX_FreeMem
*/

static inline HI_S32 HI_GFX_FreeMem(HI_U32 u32Phyaddr)
{
    return GFX_MMZ_Delete(sg_s32MMZDev,(HI_VOID*)u32Phyaddr);
}


/** 
\brief alloc the mem that need. CNcomment:分配需要的内存 CNend\n
\attention \n

\param[in]	pName.        CNcomment:模块名   CNend\n
\param[in]	pZoneName.
\param[in]	u32LayerSize. CNcomment:内存大小 CNend\n

\retval ::HI_SUCCESS
\retval ::HI_FAILURE

\see \n
::HI_GFX_AllocMem
*/

static inline HI_VOID *HI_GFX_AllocMem(HI_U32 u32Size , HI_U32 u32Align, HI_CHAR* pZoneName, HI_CHAR *pName)
{

		HI_VOID *pAddr = NULL;

		pAddr = GFX_MMZ_New(sg_s32MMZDev,u32Size, u32Align, pZoneName, pName);
		if(NULL != pAddr)
		{
			return pAddr;
		}

		pAddr = GFX_MMZ_New(sg_s32MMZDev,u32Size, u32Align, "graphics", pName);
		if(NULL != pAddr)
		{
			return pAddr;
		}

		pAddr = GFX_MMZ_New(sg_s32MMZDev,u32Size, u32Align, NULL, pName);

		return pAddr;

}


static inline HI_VOID *HI_GFX_Map(HI_U32 u32PhyAddr)
{ 
    	return GFX_MMZ_Map(sg_s32MMZDev,(HI_VOID*)u32PhyAddr,HI_FALSE);
}

static inline HI_VOID *HI_GFX_MapCached(HI_U32 u32PhyAddr)
{   
		return GFX_MMZ_Map(sg_s32MMZDev,(HI_VOID*)u32PhyAddr,HI_TRUE);
}
static inline HI_S32 HI_GFX_Unmap(HI_U32 u32PhyAddr)
{
	return GFX_MMZ_UnMap(sg_s32MMZDev,(HI_VOID*)u32PhyAddr);
}

static inline HI_S32 HI_GFX_Flush(HI_U32 u32PhyAddr)
{
	return GFX_MMZ_Flush(sg_s32MMZDev);
}



/** @} */  /*! <!-- API declaration end */


#endif /*_HI_GFX_TEST_COMM_H_ */
