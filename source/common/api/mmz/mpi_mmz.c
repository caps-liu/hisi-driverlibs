/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_mem.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2006/05/17
  Description   :
  History       :
  1.Date        : 2006/05/17
    Author      : g45345
    Modification: Created file

******************************************************************************/

#include <math.h>
#include <limits.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <string.h>
#include <assert.h>
#include <stdio.h>
#include <time.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/timeb.h>
#include <pthread.h>

#include "hi_type.h"
#include "drv_mmz_ioctl.h"
#include "hi_debug.h"
#include "hi_drv_struct.h"
#include "drv_mem_ioctl.h"
#include "hi_mpi_mem.h"


#define MMZ_DEVNAME "/dev/mmz_userdev"
static HI_S32 g_s32fd = -1; /*mem device not open*/

static pthread_mutex_t g_mem_mutex = PTHREAD_MUTEX_INITIALIZER;

HI_S32 MEMDeviceCheckOpen(HI_VOID)
{
    MEM_LOCK(&g_mem_mutex);

    if (-1 == g_s32fd)
    {
        g_s32fd = open(MMZ_DEVNAME, O_RDWR);
        if (-1 == g_s32fd)
        {
            HI_FATAL_MEM("Open mem device failed!\n");
            MEM_UNLOCK(&g_mem_mutex);
            return  HI_FAILURE;
        }
    }

    MEM_UNLOCK(&g_mem_mutex);

    return HI_SUCCESS;
}


HI_S32 MEMDeviceCheckClose(HI_VOID)
{
    MEM_LOCK(&g_mem_mutex);

    if ( g_s32fd != -1 )
    {
        (HI_VOID)close(g_s32fd);
        g_s32fd = -1;
    }

    MEM_UNLOCK(&g_mem_mutex);
#ifndef MMZ_V2_SUPPORT
    MEM_LOCK_DESTROY(&g_mem_mutex);
#endif
    return HI_SUCCESS;
}

/*below is the macro used frequently*/
#ifdef MMZ_V2_SUPPORT
#define CHECK_MEM_OPEN_STATE()     MEMDeviceCheckOpen()
#define CHECK_MEM_OPEN_STATE2()     MEMDeviceCheckOpen()
#else
#define CHECK_MEM_OPEN_STATE()    \
    do{  \
        if (HI_SUCCESS != MEMDeviceCheckOpen()) return HI_FAILURE; \
    }while(0)

#define CHECK_MEM_OPEN_STATE2()    \
    do{  \
        if (HI_SUCCESS != MEMDeviceCheckOpen()) return NULL; \
    }while(0)
#endif
/*****************************************************************************
 Prototype    : HI_MPI_MMZ_Malloc
 Description  : ...
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2006/10/9
    Author       : g45345
    Modification : Created function
*****************************************************************************/
HI_S32 HI_MPI_MMZ_Malloc(HI_MMZ_BUF_S *pstBuf)
{
    HI_S32 l_return;
    struct mmb_info mmi = {0};

    CHECK_MEM_OPEN_STATE();

    /*parameters check*/
    if (NULL == pstBuf)
    {
        HI_ERR_MEM("%s:pBuf is NULL pointer!\n", __FUNCTION__);
        return HI_FAILURE;
    }

    if (pstBuf->bufsize < 0x1000)
    {
        pstBuf->bufsize = 0x1000;
    }

    if (strlen(pstBuf->bufname) >= MAX_BUFFER_NAME_SIZE)
    {
        HI_ERR_MEM("%s:the buffer name len is overflow!\n", __FUNCTION__);
        return HI_FAILURE;
    }

    mmi.size = pstBuf->bufsize;
    mmi.align = 0x1000;
    strncpy(mmi.mmb_name, pstBuf->bufname, HIL_MMB_NAME_LEN);

    MEM_LOCK(&g_mem_mutex);

    /*call ioctl to malloc*/
    l_return = MEM_IOCTL(g_s32fd, IOC_MMB_ALLOC, &mmi);
    if (l_return != 0)
    {
        MEM_UNLOCK(&g_mem_mutex);
        return HI_FAILURE;
    }

    /*call ioctl to user addr remap*/
    mmi.prot = PROT_READ | PROT_WRITE;
    mmi.flags = MAP_SHARED;
    l_return = MEM_IOCTL(g_s32fd, IOC_MMB_USER_REMAP, &mmi);
    if (l_return != 0)
    {
        MEM_IOCTL(g_s32fd, IOC_MMB_FREE, &mmi);
        MEM_UNLOCK(&g_mem_mutex);
        return HI_FAILURE;
    }

    pstBuf->phyaddr = mmi.phys_addr;
    pstBuf->user_viraddr = (HI_U8 *)mmi.mapped;
    pstBuf->overflow_threshold = 100;
    pstBuf->underflow_threshold = 0;

    MEM_UNLOCK(&g_mem_mutex);
    return HI_SUCCESS;
}


/*****************************************************************************
 Prototype    : HI_MPI_MMZ_Free
 Description  : ...
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2006/10/9
    Author       : g45345
    Modification : Created function
*****************************************************************************/
HI_S32 HI_MPI_MMZ_Free(HI_MMZ_BUF_S *pstBuf)
{
    HI_S32 l_return;
    struct mmb_info mmi;

    CHECK_MEM_OPEN_STATE();

    /*parameters check*/
    if (NULL == pstBuf)
    {
        HI_ERR_MEM("%s:pBuf is NULL pointer!\n", __FUNCTION__);
        return HI_FAILURE;
    }

    mmi.phys_addr = pstBuf->phyaddr;
    mmi.mapped = (void *)pstBuf->user_viraddr;

    MEM_LOCK(&g_mem_mutex);

    MEM_IOCTL(g_s32fd, IOC_MMB_USER_UNMAP, &mmi);

    /*call ioctl to free*/
    l_return = MEM_IOCTL(g_s32fd, IOC_MMB_FREE, &mmi);
    if (l_return == HI_SUCCESS)
    {
        MEM_UNLOCK(&g_mem_mutex);
        return HI_SUCCESS;
    }
    else
    {
        MEM_UNLOCK(&g_mem_mutex);
        return HI_FAILURE;
    }
}


HI_VOID *HI_MPI_MMZ_New(HI_U32 u32Size , HI_U32 u32Align, HI_CHAR *ps8MMZName, HI_CHAR *ps8MMBName)
{
    struct mmb_info mmi = {0};
    HI_S32 ret;

    CHECK_MEM_OPEN_STATE2();

    if( u32Size == 0 || u32Size > 0x40000000) return NULL;
    mmi.size = u32Size;

    mmi.align = u32Align;
    if( ps8MMBName != NULL ) strncpy(mmi.mmb_name, ps8MMBName, HIL_MMB_NAME_LEN);
    if( ps8MMZName != NULL ) strncpy(mmi.mmz_name, ps8MMZName, HIL_MMB_NAME_LEN);

    ret = ioctl(g_s32fd, IOC_MMB_ALLOC, &mmi);
    if (ret != 0)
        return NULL;
    else
        return (HI_VOID *)mmi.phys_addr;
}

HI_S32 HI_MPI_MMZ_Delete(HI_U32 u32PhysAddr)
{

    struct mmb_info mmi = {0};

    CHECK_MEM_OPEN_STATE();

    mmi.phys_addr = u32PhysAddr;

    return ioctl(g_s32fd, IOC_MMB_FREE, &mmi);

}

HI_S32 HI_MPI_MMZ_GetPhyAddr(HI_VOID *pRefAddr, HI_U32 *pu32PhyAddr, HI_U32 *pu32Size)
{
    int ret;
    struct mmb_info mmi = {0};

    CHECK_MEM_OPEN_STATE();

    mmi.mapped = pRefAddr;

    ret = ioctl(g_s32fd, IOC_MMB_USER_GETPHYADDR, &mmi);
    if (ret)
    {
		printf("\e[031mHI_MPI_MMZ_GetPhyAddr failed\e[0m\n");
        return -1;
    }
    if (pu32PhyAddr)
    {
        *pu32PhyAddr = mmi.phys_addr;
    }
    if (pu32Size)
    {
        *pu32Size = mmi.size;
    }
    return 0;
}

HI_VOID *HI_MPI_MMZ_Map(HI_U32 u32PhysAddr, HI_U32 u32Cached)
{
    struct mmb_info mmi = {0};
    HI_S32 ret;

    CHECK_MEM_OPEN_STATE2();

    HI_INFO_MEM("map addr:0x%x\n", u32PhysAddr);

    if(u32Cached != 0 && u32Cached != 1)  return NULL;

    mmi.prot = PROT_READ | PROT_WRITE;
    mmi.flags = MAP_SHARED;
    mmi.phys_addr = u32PhysAddr;

    if (u32Cached)
    {
    HI_INFO_MEM("map addr:0x%x\n", u32PhysAddr);
        ret = ioctl(g_s32fd, IOC_MMB_USER_REMAP_CACHED, &mmi);
        if( ret !=0 )
        {
            HI_FATAL_MEM("IOC_MMB_USER_REMAP_CACHED failed, phyaddr:0x%x\n", mmi.phys_addr);
            return NULL;
        }

    }
    else
    {
    HI_INFO_MEM("map addr:0x%x\n", u32PhysAddr);
        ret = ioctl(g_s32fd, IOC_MMB_USER_REMAP, &mmi);
        if( ret !=0 )
        {
            HI_FATAL_MEM("IOC_MMB_USER_REMAP failed, phyaddr:0x%x\n", mmi.phys_addr);
            return NULL;
        }
    }

    return (HI_VOID *)mmi.mapped;

}

HI_S32 HI_MPI_MMZ_Unmap(HI_U32 u32PhysAddr)
{

    struct mmb_info mmi = {0};

    CHECK_MEM_OPEN_STATE();

    mmi.phys_addr = u32PhysAddr;

    return ioctl(g_s32fd, IOC_MMB_USER_UNMAP, &mmi);

}

HI_S32 HI_MPI_MMZ_Flush(HI_U32 u32PhysAddr)
{
    CHECK_MEM_OPEN_STATE();

    if (!u32PhysAddr)
    {
        return ioctl(g_s32fd, IOC_MMB_FLUSH_DCACHE, NULL);
    }
    else
    {
        return ioctl(g_s32fd, IOC_MMB_FLUSH_DCACHE, u32PhysAddr);
    }
}


#ifdef MMZ_V2_SUPPORT
HI_VOID *HI_MPI_MMZ_New_Share(HI_U32 size , HI_U32 align, HI_CHAR *mmz_name, HI_CHAR *mmb_name )
{
    struct mmb_info mmi = {0};
    HI_S32 ret;

    //printf("%s[%d] \n",__FUNCTION__,g_s32fd);
    CHECK_MEM_OPEN_STATE2();

    if( size == 0 || size > 0x40000000) return NULL;
    mmi.size = size;

    mmi.align = align;
    if( mmb_name != NULL ) strncpy(mmi.mmb_name, mmb_name, HIL_MMB_NAME_LEN);
    if( mmz_name != NULL ) strncpy(mmi.mmz_name, mmz_name, HIL_MMB_NAME_LEN);

    ret = ioctl(g_s32fd, IOC_MMB_ALLOC_SHARE, &mmi);
    if(ret !=0)
            return NULL;
    else
            return (HI_VOID *)mmi.phys_addr;

}

HI_VOID *HI_MPI_MMZ_New_Shm_Com(HI_U32 size , HI_U32 align, HI_CHAR *mmz_name, HI_CHAR *mmb_name )
{
    struct mmb_info mmi = {0};
    HI_S32 ret;

    //printf("%s[%d] \n",__FUNCTION__,g_s32fd);
    CHECK_MEM_OPEN_STATE2();

    if( size == 0 || size > 0x40000000) return NULL;
    mmi.size = size;

    mmi.align = align;
    if( mmb_name != NULL ) strncpy(mmi.mmb_name, mmb_name, HIL_MMB_NAME_LEN);
    if( mmz_name != NULL ) strncpy(mmi.mmz_name, mmz_name, HIL_MMB_NAME_LEN);

    if((ret = ioctl(g_s32fd, IOC_MMB_ALLOC_SHM_COM, &mmi)) != 0)
            return NULL;
    else
            return (HI_VOID *)mmi.phys_addr;

}

HI_S32 HI_MPI_MMZ_Get_Shm_Com(HI_U32 *phyaddr, HI_U32 *size)
{
    int ret;
    struct mmb_info mmi = {0};

    CHECK_MEM_OPEN_STATE();

    ret = ioctl(g_s32fd, IOC_MMB_GET_SHM_COM, &mmi);
    if(ret) {
        return -1;
    }

    if(phyaddr)
    {
        *phyaddr = mmi.phys_addr;
    }

    if (size)
    {
        *size = mmi.size;
    }

    return 0;
}
HI_S32 HI_MPI_MMZ_Force_Delete(HI_U32 phys_addr)
{

    struct mmb_info mmi = {0};

    CHECK_MEM_OPEN_STATE();

    mmi.phys_addr = phys_addr;

    return ioctl(g_s32fd, IOC_MMB_FORCE_FREE, &mmi);

}

HI_S32 HI_MPI_MMZ_Flush_Dirty(HI_U32 phys_addr, HI_U32 virt_addr, HI_U32 size)
{
    CHECK_MEM_OPEN_STATE();

    if (!phys_addr || !virt_addr || !size)
    {
        return ioctl(g_s32fd, IOC_MMB_FLUSH_DCACHE, NULL);
    }
    else
    {
        struct dirty_area area;

        area.dirty_phys_start = phys_addr;
        area.dirty_virt_start = virt_addr;
        area.dirty_size = size;

        return ioctl(g_s32fd, IOC_MMB_FLUSH_DCACHE_DIRTY, &area);
    }
}

HI_S32 HI_MPI_MMZ_open(HI_VOID)
{
    //printf("%s[%d] \n",__FUNCTION__,g_s32fd);
    return MEMDeviceCheckOpen();
}

HI_S32 HI_MPI_MMZ_close(HI_VOID)
{
    //printf("%s[%d] \n",__FUNCTION__,g_s32fd);
    return MEMDeviceCheckClose();
}

#endif


