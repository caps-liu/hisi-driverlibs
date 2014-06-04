/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_common.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/15
  Description   : Common apis for hisilicon system.
  History       :
  1.Date        : 2010/01/25
    Author      : jianglei
    Modification: Created file

*******************************************************************************/
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <pthread.h>
#include <unistd.h>

#include "hi_type.h"
#include "hi_common.h"
#include "hi_module.h"
#include "hi_osal.h"

#include "mpi_mmz.h"
#include "hi_mpi_mem.h"
#include "hi_drv_struct.h"
#include "mpi_module.h"
#include "mpi_log.h"
#include "drv_sys_ioctl.h"
#include "hi_mpi_stat.h"
#include "mpi_memdev.h"
#include "mpi_userproc.h"

//////////////////////////////////////////////////////////////////////////////////////
/// STATIC CONST Variable
//////////////////////////////////////////////////////////////////////////////////////
static const HI_U8 s_szMonth[12][4] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun",
                       "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
static const HI_U8 s_szVersion[] = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

static pthread_mutex_t   s_SysMutex = PTHREAD_MUTEX_INITIALIZER;

/// STATIC Variable
static HI_S32 s_s32SysInitTimes = 0;
static HI_S32 s_s32SysFd = -1;

/// DEFINATION MACRO
#define SYS_OPEN_FILE                                       \
do{                                                         \
    if (-1 == s_s32SysFd)                                   \
    {                                                       \
        s_s32SysFd = open("/dev/"UMAP_DEVNAME_SYS, O_RDWR); \
        if (s_s32SysFd < 0)                                 \
        {                                                   \
            perror("open");                                 \
            HI_SYS_UNLOCK();                                \
            return HI_FAILURE;                                   \
        }                                                   \
    }                                                       \
}while(0)

#define HI_SYS_LOCK()     (void)pthread_mutex_lock(&s_SysMutex);
#define HI_SYS_UNLOCK()   (void)pthread_mutex_unlock(&s_SysMutex);

#define IS_CHIP_TYPE(type) (type == SysVer.enChipTypeHardWare)
#define IS_CHIP(type, ver) ((type == SysVer.enChipTypeHardWare) && (ver == SysVer.enChipVersion))

HI_S32 HI_SYS_Init(HI_VOID)
{
    HI_S32 s32Ret = HI_FAILURE;

    HI_SYS_LOCK();

    if (0 == s_s32SysInitTimes)
    {
        SYS_OPEN_FILE;

        s32Ret = HI_MPI_LogInit();
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_SYS("HI_MPI_LogInit failure: %d\n", s32Ret);
            goto LogErrExit;
        }

        s32Ret = HI_MODULE_Init();
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_SYS("HI_ModuleMGR_Init failure: %d\n", s32Ret);
            goto ModuleErrExit;
        }

        //MUST unlock, because HI_MPI_STAT_Init calling HI_SYS_GetVersion will cause deadlock
        HI_SYS_UNLOCK();

        s32Ret = HI_MPI_STAT_Init();
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_SYS("HI_MPI_STAT_Init failure: %d\n", s32Ret);
            goto StatErrExit;
        }

        s32Ret = MPI_MEMDEV_Init();
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_SYS("MPI_MEMDEV_Init failure: %d\n", s32Ret);
            goto MemdevErrExit;
        }

        s32Ret = MPI_UPROC_Init();
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_SYS("MPI_UPROC_Init failure: %d\n", s32Ret);
            goto UprocErrExit;
        }

        HI_SYS_LOCK();

        s_s32SysInitTimes = 1;

        HI_INFO_SYS("HI_SYS_Init init OK\n");
    }

    HI_SYS_UNLOCK();

    return (HI_S32)HI_SUCCESS;
    
UprocErrExit:
    (HI_VOID)MPI_MEMDEV_DeInit();

MemdevErrExit:
    (HI_VOID)HI_MPI_STAT_DeInit();

StatErrExit:
    /* Lock for access of s_s32SysInitTimes */
    HI_SYS_LOCK();
    (HI_VOID)HI_MODULE_DeInit();

ModuleErrExit:
    HI_MPI_LogDeInit();
    
LogErrExit:
    if (s_s32SysFd != -1)
    {
        close(s_s32SysFd);
        s_s32SysFd = -1;
    }

    s_s32SysInitTimes = 0;

    HI_SYS_UNLOCK();

    return (HI_S32)HI_FAILURE;
}

HI_S32 HI_SYS_DeInit(HI_VOID)
{
    HI_SYS_LOCK();

    if (0 != s_s32SysInitTimes)
    {
        (HI_VOID)MPI_UPROC_DeInit();
        
        (HI_VOID)MPI_MEMDEV_DeInit();
        
        (HI_VOID)HI_MPI_STAT_DeInit();

        (HI_VOID)HI_MODULE_DeInit();

        HI_MPI_LogDeInit();

        if (s_s32SysFd != -1)
        {
            close(s_s32SysFd);
            s_s32SysFd = -1;
        }

        s_s32SysInitTimes = 0;
    }

    HI_SYS_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_SYS_GetBuildTime(struct tm * pstTime)
{
    char szData[] = __DATE__;
    char szTime[] = __TIME__;
    char szTmp[5];
    int i;

    if (NULL == pstTime)
    {
        return HI_FAILURE;
    }

    /* month */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szData, 3);

    for(i=0; i<12; i++)
    {
            if(!HI_OSAL_Strncmp((const char*)s_szMonth[i], szTmp, sizeof(s_szMonth[i])))
            {
                pstTime->tm_mon = i + 1;
                break;
            }
    }

    /* day */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szData+4, 2);
    pstTime->tm_mday = atoi(szTmp);

    /* year */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szData+7, 4);
    pstTime->tm_year = atoi(szTmp);

    /* hour */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szTime, 2);
    pstTime->tm_hour = atoi(szTmp);

    /* minute */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szTime+3, 2);
    pstTime->tm_min = atoi(szTmp);


    /* second */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szTime+6, 2);
    pstTime->tm_sec = atoi(szTmp);

    return HI_SUCCESS;
}

HI_S32 HI_SYS_GetVersion(HI_SYS_VERSION_S *pstVersion)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (NULL == pstVersion)
    {
        return HI_FAILURE;
    }

    HI_SYS_LOCK();

    if (s_s32SysFd < 0)
    {
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    s32Ret = ioctl(s_s32SysFd, SYS_GET_SYS_VERSION, pstVersion);
    if (s32Ret != 0)
    {
        HI_SYS_UNLOCK();

        HI_ERR_SYS("ioctl SYS_GET_SYS_VERSION error!\n");
        return HI_FAILURE;
    }

    (HI_VOID)HI_OSAL_Snprintf(pstVersion->aVersion, sizeof(pstVersion->aVersion), "%s", s_szVersion);

    /* for detect soft and chip dismatch */
#if defined(CHIP_TYPE_hi3716cv200)
    pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3716C;
#elif defined(CHIP_TYPE_hi3716cv200es)
    pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3716CES;
#elif defined(CHIP_TYPE_hi3718cv100)
    pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3718C;
#elif defined(CHIP_TYPE_hi3718mv100)
    pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3718M;
#elif defined(CHIP_TYPE_hi3719cv100)
    pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3719C;
#elif defined(CHIP_TYPE_hi3719mv100)
    pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3719M;
#elif defined(CHIP_TYPE_hi3719mv100_a)
    pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3719M_A;
#else
    pstVersion->enChipTypeSoft = HI_CHIP_TYPE_BUTT;
#endif

    HI_SYS_UNLOCK();

    return HI_SUCCESS;
}

static HI_S32 GetDolbySupportHelper(HI_U32 *pu32Support)
{
    	HI_S32 s32Ret;

	if (!pu32Support)
		return HI_FAILURE;

	HI_SYS_LOCK();
	if (s_s32SysFd < 0)
	{
		HI_SYS_UNLOCK();
		return HI_FAILURE;
	}

	s32Ret = ioctl(s_s32SysFd, SYS_GET_DOLBYSUPPORT, pu32Support);
	if(-1 == s32Ret )
	{
		HI_SYS_UNLOCK();

		HI_ERR_SYS("ioctl SYS_GET_DOLBYSUPPORT error!\n");
		return HI_FAILURE;
	}

	HI_SYS_UNLOCK();

	return HI_SUCCESS;
}

HI_S32 HI_SYS_GetChipAttr(HI_SYS_CHIP_ATTR_S *pstChipAttr)
{
    HI_S32              s32Ret;
    HI_SYS_VERSION_S    SysVer;
    HI_U32              u32DolbySupport = 0;

    if (!pstChipAttr)
    {
        HI_ERR_SYS("null ptr!\n");
        return HI_FAILURE;
    }

    memset(&SysVer, 0, sizeof(SysVer));
    
    s32Ret = HI_SYS_GetVersion(&SysVer);
    if (HI_SUCCESS != s32Ret)
    {
        return HI_FAILURE;
    }

    s32Ret =GetDolbySupportHelper(&u32DolbySupport);
    if (HI_SUCCESS != s32Ret)
    {
        return HI_FAILURE;
    }

    pstChipAttr->bDolbySupport = (HI_BOOL)u32DolbySupport;
    
    return HI_SUCCESS;

}

HI_S32 HI_SYS_SetConf(const HI_SYS_CONF_S *pstSysConf)
{
    HI_S32 s32Ret = HI_FAILURE;

    if ( NULL == pstSysConf )
    {
        HI_ERR_SYS("Set pstSysConf ptr!\n");

        return HI_FAILURE;
    }

    HI_SYS_LOCK();

    if (s_s32SysFd < 0)
    {
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    s32Ret = ioctl(s_s32SysFd, SYS_SET_CONFIG_CTRL, pstSysConf);

    HI_SYS_UNLOCK();

    return s32Ret;
}

HI_S32 HI_SYS_GetConf(HI_SYS_CONF_S *pstSysConf)
{
    HI_S32 s32Ret = HI_FAILURE;

    if ( NULL == pstSysConf )
    {
        HI_ERR_SYS("Get pstSysConf ptr!\n");

        return HI_FAILURE;
    }

    HI_SYS_LOCK();

    if (s_s32SysFd < 0)
    {
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    s32Ret = ioctl(s_s32SysFd, SYS_GET_CONFIG_CTRL, pstSysConf);

    HI_SYS_UNLOCK();

    return s32Ret;
}

HI_S32 HI_SYS_WriteRegister(HI_U32 u32RegAddr, HI_U32 u32Value)
{
    return MPI_MEMDEV_WriteRegister(u32RegAddr, u32Value);
}

HI_S32 HI_SYS_ReadRegister(HI_U32 u32RegAddr, HI_U32 *pu32Value)
{
    return MPI_MEMDEV_ReadRegister(u32RegAddr, pu32Value);
}

HI_S32 HI_SYS_MapRegister(HI_U32 u32RegAddr, HI_U32 u32Length, HI_VOID *pVirAddr)
{
    return MPI_MEMDEV_MapRegister(u32RegAddr, u32Length, pVirAddr);
}

HI_S32 HI_SYS_UnmapRegister(HI_VOID * pVirAddr)
{
    return MPI_MEMDEV_UnmapRegister(pVirAddr);
}

HI_S32 HI_SYS_GetTimeStampMs(HI_U32 *pu32TimeMs)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (HI_NULL == pu32TimeMs)
    {
        HI_ERR_SYS("null pointer error\n");
        return HI_FAILURE;
    }

    HI_SYS_LOCK();

    if (s_s32SysFd < 0)
    {
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    s32Ret = ioctl(s_s32SysFd, SYS_GET_TIMESTAMPMS, pu32TimeMs);

    HI_SYS_UNLOCK();

    return s32Ret;
}

HI_S32 HI_SYS_SetLogLevel(HI_MOD_ID_E enModId,  HI_LOG_LEVEL_E enLogLevel)
{
    return HI_MPI_LogLevelSet((HI_U32)enModId, enLogLevel);
}

HI_S32 HI_SYS_SetLogPath(const HI_CHAR* pszLogPath)
{
    return HI_MPI_LogPathSet(pszLogPath);
}

HI_S32 HI_SYS_SetStorePath(const HI_CHAR* pszPath)
{
    return HI_MPI_StorePathSet(pszPath);
}

HI_S32 HI_PROC_AddDir(const HI_CHAR * pszName)
{
    return MPI_UPROC_AddDir(pszName);
}

HI_S32 HI_PROC_RemoveDir(const HI_CHAR *pszName)
{
    return MPI_UPROC_RemoveDir(pszName);
}

HI_S32 HI_PROC_AddEntry(HI_U32 u32ModuleID, const HI_PROC_ENTRY_S* pstEntry)
{
    return MPI_UPROC_AddEntry(u32ModuleID, pstEntry);
}

HI_S32 HI_PROC_RemoveEntry(HI_U32 u32ModuleID, const HI_PROC_ENTRY_S* pstEntry)
{
    return MPI_UPROC_RemoveEntry(u32ModuleID, pstEntry);
}

HI_S32 HI_PROC_Printf(HI_PROC_SHOW_BUFFER_S *pstBuf, const HI_CHAR *pFmt, ...)
{
    HI_U32 u32Len = 0;  
    va_list args = {0};

    if ((HI_NULL == pstBuf) || (HI_NULL == pstBuf->pu8Buf) || (HI_NULL == pFmt))
    {
        return HI_FAILURE;  
    }

    /* log buffer overflow */
    if (pstBuf->u32Offset >= pstBuf->u32Size)
    {
        HI_ERR_SYS("userproc log buffer(size:%d) overflow.\n", pstBuf->u32Size);
        return HI_FAILURE;
    }

    va_start(args, pFmt);
    u32Len = (HI_U32)HI_OSAL_Vsnprintf((HI_CHAR*)pstBuf->pu8Buf + pstBuf->u32Offset, 
                            pstBuf->u32Size - pstBuf->u32Offset, pFmt, args);   
    va_end(args);
	
    pstBuf->u32Offset += u32Len;

    return HI_SUCCESS;
}

HI_S32 HI_MMZ_Malloc(HI_MMZ_BUF_S *pstBuf)
{
    return HI_MPI_MMZ_Malloc(pstBuf);
}

HI_S32 HI_MMZ_Free(HI_MMZ_BUF_S *pstBuf)
{
    return HI_MPI_MMZ_Free(pstBuf);
}

HI_VOID *HI_MMZ_New(HI_U32 u32Size , HI_U32 u32Align, HI_CHAR *ps8MMZName, HI_CHAR *ps8MMBName)
{
    return HI_MPI_MMZ_New(u32Size, u32Align, ps8MMZName, ps8MMBName);
}

HI_S32 HI_MMZ_Delete(HI_U32 u32PhysAddr)
{
    return HI_MPI_MMZ_Delete(u32PhysAddr);
}

HI_VOID *HI_MMZ_Map(HI_U32 u32PhysAddr, HI_U32 u32Cached)
{
    return HI_MPI_MMZ_Map(u32PhysAddr, u32Cached);
}

HI_S32 HI_MMZ_Unmap(HI_U32 u32PhysAddr)
{
    return HI_MPI_MMZ_Unmap(u32PhysAddr);
}

HI_S32 HI_MMZ_Flush(HI_U32 u32PhysAddr)
{
    return HI_MPI_MMZ_Flush(u32PhysAddr);
}

HI_VOID *HI_MEM_Map(HI_U32 u32PhyAddr, HI_U32 u32Size)
{
    return HI_MMAP(u32PhyAddr, u32Size);
}

HI_S32 HI_MEM_Unmap(HI_VOID *pAddrMapped)
{
    return HI_MUNMAP(pAddrMapped);
}

HI_S32 HI_MMZ_GetPhyaddr(HI_VOID * pVir, HI_U32 *pu32Phyaddr, HI_U32 *pu32Size)
{
    return HI_MPI_MMZ_GetPhyAddr(pVir, pu32Phyaddr, pu32Size);
}


HI_VOID* HI_MEM_Malloc(HI_U32 u32ModuleID, HI_U32 u32Size)
{
    return HI_MALLOC(u32ModuleID, u32Size);
}

HI_VOID HI_MEM_Free(HI_U32 u32ModuleID, HI_VOID* pMemAddr)
{
    HI_FREE(u32ModuleID, pMemAddr);
}

HI_VOID* HI_MEM_Calloc(HI_U32 u32ModuleID, HI_U32 u32MemBlock, HI_U32 u32Size)
{
    return HI_CALLOC(u32ModuleID, u32MemBlock, u32Size);
}

HI_VOID* HI_MEM_Realloc(HI_U32 u32ModuleID, HI_VOID *pMemAddr, HI_U32 u32Size)
{
    return HI_REALLOC(u32ModuleID, pMemAddr, u32Size);
}

#ifdef MMZ_V2_SUPPORT
HI_VOID *HI_MMZ_New_Share(HI_U32 u32Size , HI_U32 u32Align, HI_CHAR *ps8MMZName, HI_CHAR *ps8MMBName)
{
    return HI_MPI_MMZ_New_Share(u32Size, u32Align, ps8MMZName, ps8MMBName);
}

HI_VOID *HI_MMZ_New_Shm_Com(HI_U32 u32Size , HI_U32 u32Align, HI_CHAR *ps8MMZName, HI_CHAR *ps8MMBName)
{
    return HI_MPI_MMZ_New_Shm_Com(u32Size, u32Align, ps8MMZName, ps8MMBName);
}

HI_S32 HI_MMZ_Get_Shm_Com(HI_U32 *pu32PhysAddr, HI_U32 *pu32Size)
{
    return HI_MPI_MMZ_Get_Shm_Com(pu32PhysAddr, pu32Size);
}

HI_S32 HI_MMZ_Force_Delete(HI_U32 u32PhysAddr)
{
    return HI_MPI_MMZ_Force_Delete(u32PhysAddr);
}

HI_S32 HI_MMZ_Flush_Dirty(HI_U32 u32PhysAddr, HI_U32 u32VirtAddr, HI_U32 u32Size)
{
    return HI_MPI_MMZ_Flush_Dirty(u32PhysAddr, u32VirtAddr, u32Size);
}

HI_S32 HI_MMZ_open(HI_VOID)
{
    return HI_MPI_MMZ_open();
}

HI_S32 HI_MMZ_close(HI_VOID)
{
    return HI_MPI_MMZ_close();
}
#endif

