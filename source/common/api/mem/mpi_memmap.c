/************************************************************/
/* file name : memmap.c                                     */
/* linux /dev/mem mmap support func                         */
/*                                                          */
/*                                                          */
/* Copyright 2005 huawei com.                               */
/* Author :zhouaidi(42136)                                  */
/* Create date: 2005-04-07                                  */
/* Modify history                                           */
/* 2005-06-12:												*/
/*Create manage link for the memory mapped successful to 
	avoid remap												*/
/*CNcomment:对映射成功空间建立管理链表，可以防止对重叠空间的
  CNcomment:重复映射 										*/
/* 2005-12-21: 					                            */
/*Add memunmap function										*/
/*CNcomment:增加memunmap函数								*/
/* 2010-02-05: 												*/
/*fix bug:slop over when memunmap  search for address 		*/
/*CNcomment:jianglei(40671)修改memunmap查找地址越界问题		*/
/************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <pthread.h>
#include "hi_module.h"
#include "mpi_mem.h"
#include "hi_debug.h"

#define OS_LINUX

#define WRITE_LOG_ERROR(fmt...) HI_ERR_PRINT(HI_ID_MEM, fmt)
#define WRITE_LOG_INFO(fmt...)  HI_INFO_PRINT(HI_ID_MEM, fmt)

#ifdef OS_LINUX
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>

typedef struct tag_MMAP_Node
{
    unsigned int Start_P;
    unsigned int Start_V;
    unsigned int length;
    unsigned int refcount;  /*the count of the memory after mapped*//*CNcomment: map后的空间段的引用计数 */
    struct tag_MMAP_Node * next;
}MMAP_Node_t;

MMAP_Node_t * pMMAPNode = NULL;

#define MEM_PAGE_SIZE  0x1000
#define PAGE_SIZE_MASK 0xfffff000

#define mmmp_dev "/dev/hi_mem"

#endif

static pthread_mutex_t   g_MemmapMutex = PTHREAD_MUTEX_INITIALIZER;
#define HI_MEMMAP_LOCK()  	 (void)pthread_mutex_lock(&g_MemmapMutex);
#define HI_MEMMAP_UNLOCK()   (void)pthread_mutex_unlock(&g_MemmapMutex);  

/* no need considering page_size of 4K */
HI_VOID * HI_MMAP(HI_U32 phy_addr, HI_U32 size)
{
    static int mmmp_fd = -1;

#ifndef OS_LINUX
    return (void *)phy_addr;
#else
    unsigned int phy_addr_in_page;
    unsigned int page_diff;

    unsigned int size_in_page;

    MMAP_Node_t * pTmp;
    MMAP_Node_t * pNew;

    void *addr=NULL;

    if(size == 0)
    {
        WRITE_LOG_ERROR("memmap():size can't be zero!\n");
        return NULL;
    }

    HI_MEMMAP_LOCK() ;

    /* check if the physical memory space have been mmaped */
    pTmp = pMMAPNode;
    while(pTmp != NULL)
    {
        if( (phy_addr >= pTmp->Start_P) &&
            ( (phy_addr + size) <= (pTmp->Start_P + pTmp->length) ) )
        {
            pTmp->refcount++;   /* referrence count increase by 1  */
            HI_MEMMAP_UNLOCK() ;

            return (void *)(pTmp->Start_V + phy_addr - pTmp->Start_P);
        }

        pTmp = pTmp->next;
    }

    /* not mmaped yet */
    if(mmmp_fd < 0)
    {
        /* dev not opened yet, so open it */
        mmmp_fd = open (mmmp_dev, O_RDWR | O_NONBLOCK | O_SYNC); /*without cache*/
        if (mmmp_fd < 0)
        {
            HI_MEMMAP_UNLOCK() ;
            WRITE_LOG_ERROR("memmap():open %s error!\n", mmmp_dev);
            return NULL;
        }
    }

    /* addr align in page_size(4K) */
    phy_addr_in_page = phy_addr & PAGE_SIZE_MASK;
    page_diff = phy_addr - phy_addr_in_page;

    /* size in page_size */
    size_in_page =((size + page_diff - 1) & PAGE_SIZE_MASK) + MEM_PAGE_SIZE;

    addr = mmap ((void *)0, size_in_page, PROT_READ|PROT_WRITE, MAP_SHARED, mmmp_fd, (long)phy_addr_in_page);
    if (addr == MAP_FAILED)
    {
        HI_MEMMAP_UNLOCK() ;
        WRITE_LOG_ERROR("memmap():mmap @ 0x%x error!\n", phy_addr_in_page);
        perror("memmap error\n");
        return NULL;
    }
    if(mmmp_fd > 0)
     { 
     		close(mmmp_fd);
       		mmmp_fd = -1;
    }
    //modify by y00106256
    //close(mmmp_fd);
    //mmmp_fd = -1;

    /* add this mmap to MMAP Node */
    pNew = (MMAP_Node_t *)HI_MALLOC(HI_ID_MEM, sizeof(MMAP_Node_t));
    if(NULL == pNew)
    {
        HI_MEMMAP_UNLOCK() ;
        WRITE_LOG_ERROR("memmap():malloc new node failed!\n");
        return NULL;
    }
    pNew->Start_P = phy_addr_in_page;
    pNew->Start_V = (unsigned int)addr;
    pNew->length = size_in_page;
    pNew->refcount = 1;
    pNew->next = NULL;

    if(pMMAPNode == NULL)
    {
        pMMAPNode = pNew;
    }
    else
    {
        pTmp = pMMAPNode;
        while(pTmp->next != NULL)
        {
            pTmp = pTmp->next;
        }

        pTmp->next = pNew;
    }

    //printf("\nmemmap %p to %p\n", (void *)phy_addr, (void*)(addr+page_diff));

	HI_MEMMAP_UNLOCK() ;
    return (void *)((HI_U32)addr+page_diff);
#endif
}

/*****************************************************************************
 Prototype    : memunmap
 Description  :
 Input        : void * addr_mapped
 Output       : None
 Return Value : On success, returns 0, on failure -1
 Calls        :
 Called By    :

  History        :
  1.Date         : 2005/12/21
    Author       : Z42136
    Modification : Created function

*****************************************************************************/
HI_S32 HI_MUNMAP(HI_VOID * addr_mapped)
{
    MMAP_Node_t * pPre;
    MMAP_Node_t * pTmp;

    if(pMMAPNode == NULL)
    {
        WRITE_LOG_ERROR("memunmap(): address have not been mmaped!\n");
        return -1;
    }
    
    HI_MEMMAP_LOCK() ;

    /* check if the physical memory space have been mmaped */
    pTmp = pMMAPNode;
    pPre = pMMAPNode;

    do
    {
        if( ((unsigned int)addr_mapped >= pTmp->Start_V) &&
            ((unsigned int)addr_mapped < (pTmp->Start_V + pTmp->length)))/*modify by jianglei(40671), should be '<' instead of '<=' */
        {
            pTmp->refcount--;   /* referrence count decrease by 1  */
            if(0 == pTmp->refcount)
            {
            	/*when the count is 0 the mapped memory is not in use, use memunmap to reclaim*/
                /*CNcomment:引用计数变为0, 被map的内存空间不再使用,此时需要进行munmap回收 */

                //WRITE_LOG_INFO("memunmap(): map node will be remove:0x%x!\n", pTmp);

                /* delete this map node from pMMAPNode */
                if(pTmp == pMMAPNode)
                {
                    pMMAPNode = pTmp->next;
                }
                else
                {
                    pPre->next = pTmp->next;
                }

                /* munmap */
                if(munmap((void *)pTmp->Start_V, pTmp->length) != 0 )
                {
                    /* Don't call LOG print between HI_MEMMAP_LOCK and HI_MEMMAP_UNLOCK */
                    //WRITE_LOG_INFO("memunmap(): munmap failed!\n");
                }
#if 1
                else
                {
                    //printf("\nmemunmap @ %p\n", addr_mapped);
                }
#endif

                HI_FREE(HI_ID_MEM, pTmp);
            }

		    HI_MEMMAP_UNLOCK() ;
            return 0;
        }

        pPre = pTmp;
        pTmp = pTmp->next;
    }while(pTmp != NULL);

    HI_MEMMAP_UNLOCK() ;
    WRITE_LOG_ERROR("memunmap(): address have not been mmaped!\n");
    return -1;
}

