/******************************************************************************

  Copyright (C), 2008-2018, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : hi_gfx_comm.h
Version		    : version 1.0
Author		    : 
Created		    : 2013/07/04
Description	    : Describes adp file. CNcomment:API跨平台适配 CNend\n
Function List 	: 

History       	:
Date				Author        		Modification
2013/07/04		    y00181162  		    
******************************************************************************/


#ifndef  _HI_GFX_COMM_H_
#define  _HI_GFX_COMM_H_


/***************************** SDK Version Macro Definition *********************/

/** \addtogroup 	GFX COMM */
/** @{ */  /** <!-- 【GFX COMM】 */

/** choice the sdk type,CONFIG_GFX_ANDROID_SDK is defined in Android.mk */
/** CNcomment:SDK版本,CONFIG_GFX_ANDROID_SDK这个宏开关在Android.mk中定义 CNend */
#ifndef CONFIG_GFX_ANDROID_SDK
	/** choice the sdk type */
	/** CNcomment:SDK版本 CNend */
	#define  CONFIG_GFX_STB_SDK
	//#define  CONFIG_GFX_BVT_SDK
#endif

/** @} */	/*! <!-- Macro Definition end */


/*********************************add include here******************************/
#include "hi_type.h"

#if defined(CONFIG_GFX_STB_SDK)
   #include "hi_common.h"
#elif defined(CONFIG_GFX_ANDROID_SDK)
   #include <sys/ioctl.h>
   #include <sys/mman.h>
   #include <utils/Log.h>
   #include <sys/syscall.h>
#elif defined(CONFIG_GFX_BVT_SDK)

#endif


/***************************** Macro Definition ******************************/

/** \addtogroup 	GFX COMM */
/** @{ */  /** <!-- 【GFX COMM】 */
/** this macro define at CFG_HI_CFLAGS,so Makefile should include CFG_HI_CFLAGS **/
#ifdef HI_ADVCA_FUNCTION_RELEASE
#define  CONFIG_GFX_ADVCA_RELEASE
#endif

#ifdef CONFIG_GFX_ADVCA_RELEASE
/** char disable */
/** CNcomment:char使能 CNend */
#define  CONFIG_GFX_COMM_STR_DISABLE
#endif

/** close the string function */
/** CNcomment:关闭字符串功能,DEBUG必须关闭 CNend */
#ifdef   CONFIG_GFX_COMM_STR_DISABLE
/** LOG disable */
/** CNcomment:log使能 CNend */
#define  CONFIG_GFX_COMM_DEBUG_DISABLE
#endif


#ifdef CONFIG_GFX_COMM_STR_DISABLE
	#define GFX_Printf( fmt,args...)
#else
	#ifdef CONFIG_GFX_ANDROID_SDK
		#if 0
		/** this is defined at *.c that will used **/
		#define LOG_TAG    "libjpeg"
		#endif
		#define GFX_Printf( fmt, args... )\
		do { \
				ALOGE(fmt, ##args );\
		} while (0)
    #else
		#define GFX_Printf( fmt, args... )\
		do { \
				fprintf(stderr,fmt, ##args );\
		} while (0)
	#endif
#endif 

#if defined(CONFIG_GFX_STB_SDK)

    #define ConvertID(module_id) (module_id + HI_ID_TDE - HIGFX_TDE_ID)
	
	#ifdef CONFIG_GFX_COMM_DEBUG_DISABLE
	    #define HI_GFX_COMM_LOG_FATAL(module_id,fmt...)    
	    #define HI_GFX_COMM_LOG_ERROR(module_id,fmt...)    
	    #define HI_GFX_COMM_LOG_WARNING(module_id,fmt...)  
	    #define HI_GFX_COMM_LOG_INFO(module_id,fmt...)     
	#else 
	    #define HI_GFX_COMM_LOG_FATAL(module_id, fmt...)   HI_TRACE(HI_LOG_LEVEL_FATAL, ConvertID(module_id), fmt)
	    #define HI_GFX_COMM_LOG_ERROR(module_id,fmt...)    HI_TRACE(HI_LOG_LEVEL_ERROR, ConvertID(module_id), fmt)
	    #define HI_GFX_COMM_LOG_WARNING(module_id,fmt...)  HI_TRACE(HI_LOG_LEVEL_WARNING, ConvertID(module_id), fmt)
	    #define HI_GFX_COMM_LOG_INFO(module_id,fmt...)     HI_TRACE(HI_LOG_LEVEL_INFO, ConvertID(module_id), fmt)
	#endif 

#elif defined(CONFIG_GFX_ANDROID_SDK)
	
	#define ConvertID(module_id) (module_id + HI_ID_TDE - HIGFX_TDE_ID)
	
	#ifdef CONFIG_GFX_COMM_DEBUG_DISABLE
		#define HI_GFX_COMM_LOG_FATAL(module_id,fmt...)	  
		#define HI_GFX_COMM_LOG_ERROR(module_id,fmt...)	  
		#define HI_GFX_COMM_LOG_WARNING(module_id,fmt...)  
		#define HI_GFX_COMM_LOG_INFO(module_id,fmt...)	  
	#else 
		#define HI_GFX_COMM_LOG_FATAL(module_id, fmt...)    HI_TRACE(HI_LOG_LEVEL_FATAL, ConvertID(module_id), fmt)
		#define HI_GFX_COMM_LOG_ERROR(module_id,fmt...)	  HI_TRACE(HI_LOG_LEVEL_ERROR, ConvertID(module_id), fmt)
		#define HI_GFX_COMM_LOG_WARNING(module_id,fmt...)   HI_TRACE(HI_LOG_LEVEL_WARNING, ConvertID(module_id), fmt)
		#define HI_GFX_COMM_LOG_INFO(module_id,fmt...)	  HI_TRACE(HI_LOG_LEVEL_INFO, ConvertID(module_id), fmt)
	#endif 
		#define IOC_MMB_ALLOC		           _IOWR('m', 10,  mmb_info)
		#define IOC_MMB_FREE		           _IOW ('m', 12,  mmb_info)
		#define IOC_MMB_USER_REMAP	           _IOWR('m', 20,  mmb_info)
		#define IOC_MMB_USER_REMAP_CACHED    _IOWR('m', 21,  mmb_info)
		#define IOC_MMB_USER_UNMAP	           _IOWR('m', 22,  mmb_info)
		#define IOC_MMB_USER_GETPHYADDR      _IOWR('m', 23,  mmb_info)
		#define IOC_MMB_FLUSH_DCACHE	       _IO  ('c', 40)
		

#elif defined(CONFIG_GFX_BVT_SDK)

	#define ConvertID(module_id) (module_id + HI_ID_TDE - HIGFX_TDE_ID)
	
	#ifdef CONFIG_GFX_COMM_DEBUG_DISABLE
	    #define HI_GFX_COMM_LOG_FATAL(module_id,fmt...)    
	    #define HI_GFX_COMM_LOG_ERROR(module_id,fmt...)    
	    #define HI_GFX_COMM_LOG_WARNING(module_id,fmt...)  
	    #define HI_GFX_COMM_LOG_INFO(module_id,fmt...)     

	#else 
		#define HI_GFX_COMM_LOG_FATAL(module_id, fmt...)        HI_TRACE(HI_LOG_LEVEL_FATAL,	  ConvertID(module_id), fmt)
		#define HI_GFX_COMM_LOG_ERROR(module_id,fmt...)	      HI_TRACE(HI_LOG_LEVEL_ERROR,	  ConvertID(module_id), fmt)
		#define HI_GFX_COMM_LOG_WARNING(module_id,fmt...)       HI_TRACE(HI_LOG_LEVEL_WARNING,  ConvertID(module_id), fmt)
		#define HI_GFX_COMM_LOG_INFO(module_id,fmt...)	      HI_TRACE(HI_LOG_LEVEL_INFO,	  ConvertID(module_id), fmt)
    #endif
#else


#endif




#ifndef CLOCK_MONOTONIC_RAW
	#define CLOCK_MONOTONIC_RAW    4
#endif

/** @} */	/*! <!-- Macro Definition end */


/*************************** Enum Definition ****************************/

/** \addtogroup 	 GFX COMM */
/** @{ */  /** <!-- 【GFX COMM】 */

/** enum of the module ID */
/** CNcomment:每个模块的ID号 CNend */
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

#ifdef CONFIG_GFX_ANDROID_SDK

typedef struct
{
	unsigned long phys_addr;
	unsigned long align;
	unsigned long size;
	unsigned int order;
	void *mapped;

	union
	{
	
    		struct
    		{
    			unsigned long prot  :8;
    			unsigned long flags :12;
    		};
    		unsigned long w32_stuf;
    		
	};
	
	char mmb_name[16];
	char mmz_name[32];
	unsigned long gfp;
	
} mmb_info;
#endif


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
{

		HI_S32 ret;
		struct timespec timenow = {0, 0};
		clockid_t id = CLOCK_MONOTONIC_RAW;

		if(HI_NULL == pu32TimeMs)
		{
			return HI_FAILURE;
		}
		
		ret = clock_gettime(id, &timenow);  
		if(ret < 0)
		{
			return HI_FAILURE;
		}
		
		*pu32TimeMs = (HI_U32)(timenow.tv_sec*1000 + timenow.tv_nsec/1000000);
		
		return HI_SUCCESS;
		
}


#ifdef CONFIG_GFX_STB_SDK
     
    
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
	return HI_MMZ_Delete(u32Phyaddr);
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

		pAddr = HI_MMZ_New(u32Size, u32Align, pZoneName, pName);
		if(NULL != pAddr)
		{
		    return pAddr;
		}
		
		pAddr = HI_MMZ_New(u32Size, u32Align, "graphics", pName);
		if(NULL != pAddr)
		{
		    return pAddr;
		}
		
		pAddr = HI_MMZ_New(u32Size, u32Align, NULL, pName);
		
		return pAddr;

}


static inline HI_VOID *HI_GFX_Map(HI_U32 u32PhyAddr)
{ 
	return HI_MMZ_Map(u32PhyAddr,HI_FALSE);
}

static inline HI_VOID *HI_GFX_MapCached(HI_U32 u32PhyAddr)
{   
	return HI_MMZ_Map(u32PhyAddr,HI_TRUE);
}
static inline HI_S32 HI_GFX_Unmap(HI_U32 u32PhyAddr)
{
	return HI_MMZ_Unmap(u32PhyAddr);
}

static inline HI_S32 HI_GFX_Flush(HI_U32 u32PhyAddr)
{
#if 0
	/** linux use flush all **/
	return HI_MMZ_Flush(u32PhyAddr);
#else
	return HI_MMZ_Flush(0);
#endif
}

static inline HI_S32 HI_GFX_GetPhyaddr(HI_VOID * pVir, HI_U32 *pu32Phyaddr, HI_U32 *pu32Size)
{
	return HI_MMZ_GetPhyaddr(pVir, pu32Phyaddr, pu32Size);
}

#elif defined(CONFIG_GFX_ANDROID_SDK) 

static inline HI_VOID* GFX_MMZ_New(HI_S32 mmz,HI_U32 size,HI_U32 align,HI_CHAR *mmz_name, HI_CHAR *mmb_name)
{

	      mmb_info   mmi;
	      
	      memset(&mmi,0,sizeof(mmi));
	      
	      mmi.size = size;
	      mmi.align =align;
	      
	      if (mmz_name != NULL)
	      {
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
static inline HI_S32 GFX_MMZ_Flush(HI_S32 mmz,HI_U32 u32PhyAddr)
{
    if (!u32PhyAddr)
    {
        return ioctl(mmz, IOC_MMB_FLUSH_DCACHE, NULL);
    }
    else
    {
        return ioctl(mmz, IOC_MMB_FLUSH_DCACHE, u32PhyAddr);
    }

}
static inline HI_S32 GFX_MMZ_GetPhyaddr(HI_S32 mmz,HI_VOID * pVir, HI_U32 *pu32Phyaddr, HI_U32 *pu32Size)
{

	int ret;
	mmb_info   mmi;
    memset(&mmi,0,sizeof(mmi));
	
	mmi.mapped = pVir;

	ret = ioctl(mmz, IOC_MMB_USER_GETPHYADDR, &mmi);
	if (ret)
	{
		return -1;
	}
	if (pu32Phyaddr)
	{
		*pu32Phyaddr = mmi.phys_addr;
	}
	if (pu32Size)
	{
		*pu32Size = mmi.size;
	}
	return 0;


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

static inline HI_S32 HI_GFX_FreeMem(HI_S32 s32MMZDev,HI_U32 u32Phyaddr)
{
    return GFX_MMZ_Delete(s32MMZDev,(HI_VOID*)u32Phyaddr);
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

static inline HI_VOID *HI_GFX_AllocMem(HI_S32 s32MMZDev,HI_U32 u32Size , HI_U32 u32Align, HI_CHAR* pZoneName, HI_CHAR *pName)
{

	HI_VOID *pAddr = NULL;

	pAddr = GFX_MMZ_New(s32MMZDev,u32Size, u32Align, pZoneName, pName);
	if(NULL != pAddr)
	{
		return pAddr;
	}

	pAddr = GFX_MMZ_New(s32MMZDev,u32Size, u32Align, "graphics", pName);
	if(NULL != pAddr)
	{
		return pAddr;
	}

	pAddr = GFX_MMZ_New(s32MMZDev,u32Size, u32Align, NULL, pName);

	return pAddr;

}


static inline HI_VOID *HI_GFX_Map(HI_S32 s32MMZDev,HI_U32 u32PhyAddr)
{ 
	return GFX_MMZ_Map(s32MMZDev,(HI_VOID*)u32PhyAddr,HI_FALSE);
}

static inline HI_VOID *HI_GFX_MapCached(HI_S32 s32MMZDev,HI_U32 u32PhyAddr)
{   
	return GFX_MMZ_Map(s32MMZDev,(HI_VOID*)u32PhyAddr,HI_TRUE);
}
static inline HI_S32 HI_GFX_Unmap(HI_S32 s32MMZDev,HI_U32 u32PhyAddr)
{
	return GFX_MMZ_UnMap(s32MMZDev,(HI_VOID*)u32PhyAddr);
}

static inline HI_S32 HI_GFX_Flush(HI_S32 s32MMZDev,HI_U32 u32PhyAddr)
{
	return GFX_MMZ_Flush(s32MMZDev,u32PhyAddr);
}

static inline HI_S32 HI_GFX_GetPhyaddr(HI_S32 s32MMZDev,HI_VOID * pVir, HI_U32 *pu32Phyaddr, HI_U32 *pu32Size)
{
	return GFX_MMZ_GetPhyaddr(s32MMZDev,pVir, pu32Phyaddr, pu32Size);
}


#elif defined(CONFIG_GFX_BVT_SDK) 


/** 
\brief free the mem that has alloced. CNcomment:释放分配过的内存 CNend\n
\attention \n

\param[in]	u32Phyaddr. CNcomment:物理地址 CNend\n

\retval ::HI_SUCCESS
\retval ::HI_FAILURE

\see \n
::HI_GFX_FreeMem
*/
static HI_VOID HI_GFX_FreeMem(HI_U32 u32Phyaddr)
{        
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
static HI_U32 HI_GFX_AllocMem(HI_CHAR *pName, HI_CHAR* pZoneName, HI_U32 u32LayerSize)
{
	return HI_SUCCESS;
}


static HI_VOID *HI_GFX_Map(HI_U32 u32PhyAddr)
{    
	return NULL;
}

static HI_VOID *HI_GFX_MapCached(HI_U32 u32PhyAddr)
{   
	return NULL;
}
static HI_S32 HI_GFX_Unmap(HI_VOID *pViraddr)
{
	return HI_SUCCESS;
}

static inline HI_S32 HI_GFX_Flush(HI_U32 u32PhyAddr)
{
	return HI_SUCCESS;
}

#else


#endif

/** @} */  /*! <!-- API declaration end */


#endif /*_HI_GFX_COMM_H_ */
