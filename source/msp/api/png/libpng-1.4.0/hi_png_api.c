/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name	: hi_png_api.c
Version		: Initial Draft
Author		: z00141204
Created		: 2010/10/09
Description	: implemention of PNG application interface
Function List 	:

History       	:
Date				Author        		Modification
2010/10/09		z00141204		Created file
******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <linux/types.h>
#include <fcntl.h>
#include <pthread.h>
#include <sys/mman.h>
#include <assert.h>

#include "hi_png_api.h"
#include "hi_png_errcode.h"
#include "hi_drv_png.h"

#include "hi_png_config.h"
#include "hi_gfx_comm.h"
#ifdef DEBUG
 #define PNG_API_ASSERT(EXP) assert(EXP)
#else
 #define PNG_API_ASSERT(EXP)
#endif

/* PNG device path */
static const HI_CHAR *g_pPngDevPath = "/dev/hi_png";

/* memory device path */
static const HI_CHAR *g_pMemDevPath = "/dev/mem";

/* PNG device description symbol */
static HI_S32 g_s32PngFd = -1;

/* memory device description symbol */
static HI_S32 g_s32MemFd = -1;

/* PNG device quoted count */
static HI_U32 g_u32PngRef = 0;

/* PNG device lock */
static pthread_mutex_t g_PngMutex = PTHREAD_MUTEX_INITIALIZER;



    

/* check if PNG device is open */
#define PNG_CHECK_DEVSTATE() do \
    {\
        if (g_s32PngFd == -1)\
        {\
            pthread_mutex_unlock(&g_PngMutex); \
            HIPNG_TRACE("Png device not open!\n"); \
            return HI_ERR_PNG_DEV_NOOPEN; \
        } \
    } while (0)

/* list struct, mapping physical address /virtual address */
typedef struct tagPNG_MEM_NODE_S
{
    HI_PNG_BUF_S stBuf;                   /* memory information */
    struct tagPNG_MEM_NODE_S *pNext;      /* next node */
} PNG_MEM_NODE_S;

/* buf r/w info struct */
typedef struct tagPNG_READ_INFO_S
{
    HI_U32 u32Phyaddr;      /* physical address of buffer */
    HI_U32 u32Size;         /* length of buffer */
    HI_U32 u32Read;         /* length of code by read */
} PNG_READ_INFO_S;

/* user decode instance, maintain the relation on mapping  physical addr and user virtual addr */
typedef struct tagPNG_API_INSTANCE_S
{
    pthread_mutex_t  stLock;    /* Instance lock */
    PNG_MEM_NODE_S * pMemHead;  /* list head of memory */
    PNG_READ_INFO_S *pReadParam;    /* read parameter */
} PNG_API_INSTANCE_S;

/* user decoder instance array */
static PNG_API_INSTANCE_S gs_PngApiInstance[PNG_MAX_HANDLE];

HI_U32           HIPNG_Read(HI_UCHAR *pBuf, HI_U32 u32Len, HI_PNG_HANDLE s32Handle);

static HI_VOID * PNG_Map(HI_U32 u32Phyaddr, HI_U32 u32Size);
static HI_VOID   PNG_UnMap(HI_U32 u32Phyaddr, HI_VOID *pVir, HI_U32 u32Size);

/********************************************************************************************
* func:	Open PNG device
* in:	none
* out:	none
* ret:	HI_SUCCESS	Open device successfully
*		HI_ERR_PNG_DEV_NOEXIST	device is not exist
* others:	when using PNG module, open device at first: support multi_course and multi-thread
********************************************************************************************/
HI_S32 HI_PNG_Open(HI_VOID)
{
    HI_S32 s32Ret;
    
    s32Ret = pthread_mutex_lock(&g_PngMutex);
    if (HI_SUCCESS != s32Ret)
    {
        return HI_ERR_PNG_DEV_BUSY;
    }

    /* device opened, return afrer adding ref */
    if (g_s32PngFd != -1)
    {
        g_u32PngRef++;
        pthread_mutex_unlock(&g_PngMutex);
        return HI_SUCCESS;
    }

    g_s32PngFd = open(g_pPngDevPath, O_RDWR, 0);
    if (-1 == g_s32PngFd)
    {
        pthread_mutex_unlock(&g_PngMutex);

        //HIPNG_TRACE("Png device no exist:%s!\n", g_pPngDevPath);
        return HI_ERR_PNG_DEV_NOEXIST;
    }

    g_s32MemFd = open(g_pMemDevPath, O_RDWR | O_SYNC, 0);
    if (-1 == g_s32MemFd)
    {
        close(g_s32PngFd);
        pthread_mutex_unlock(&g_PngMutex);
        HIPNG_TRACE("Mem device no exist:%s\n", g_pMemDevPath);
        return HI_ERR_PNG_DEV_NOEXIST;
    }

    g_u32PngRef++;

    pthread_mutex_unlock(&g_PngMutex);

    return HI_SUCCESS;
}

/********************************************************************************************
* func:	close PNG device
* in:	none
* out:	none
* ret:	none
* others:	pair wirh HI_PNG_Open
********************************************************************************************/
HI_VOID HI_PNG_Close(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = pthread_mutex_lock(&g_PngMutex);
    if (HI_SUCCESS != s32Ret)
    {
        return;
    }

    /* device is not open,return */
    if (-1 == g_s32PngFd)
    {
        pthread_mutex_unlock(&g_PngMutex);
        return;
    }

    if (--g_u32PngRef == 0)
    {
        close(g_s32MemFd);
        g_s32MemFd = -1;
        close(g_s32PngFd);
        g_s32PngFd = -1;
        pthread_mutex_unlock(&g_PngMutex);

        return;
    }

    pthread_mutex_unlock(&g_PngMutex);

    return;
}

/********************************************************************************************
 * func:	create decoder
 * in:	none
 * out:	ps32Handle decoder handle pointer
 * ret:	HI_SUCCESS
 * ret:	HI_ERR_PNG_NOOPEN	device is not open
 * ret:	HI_ERR_PNG_NOHANDLE	no decoder resource
 * ret:       HI_ERR_PNG_NULLPTR  Null pointer
 * others:	support create 32 decoder at most
 *********************************************************************************************/
HI_S32 HI_PNG_CreateDecoder(HI_PNG_HANDLE *ps32Handle)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if (HI_NULL == ps32Handle)
    {
        return HI_ERR_PNG_NULLPTR;
    }

    /* check if device is open */
    PNG_CHECK_DEVSTATE();

    s32Ret = ioctl(g_s32PngFd, PNG_CREATE_DECODER, ps32Handle);
    if (s32Ret < 0)
    {
        return s32Ret;
    }

    s32Ret = pthread_mutex_init(&gs_PngApiInstance[*ps32Handle - 1].stLock, HI_NULL);
    gs_PngApiInstance[*ps32Handle - 1].pMemHead   = HI_NULL;
    gs_PngApiInstance[*ps32Handle - 1].pReadParam = HI_NULL;

    return HI_SUCCESS;
}

/* release all mappings of user coder buffer*/
/* only use in release decoder and code stream buffer, it's suit to release parameter by read */
HI_VOID PNG_UnMap_DecoderBuf(HI_PNG_HANDLE s32Handle)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_MEM_NODE_S *pTemp = HI_NULL;

    do
    {
        s32Ret = pthread_mutex_lock(&gs_PngApiInstance[s32Handle - 1].stLock);
    } while (s32Ret != HI_SUCCESS);

    while (gs_PngApiInstance[s32Handle - 1].pMemHead != HI_NULL)
    {
        pTemp = gs_PngApiInstance[s32Handle - 1].pMemHead->pNext;
        PNG_UnMap(gs_PngApiInstance[s32Handle - 1].pMemHead->stBuf.u32PhyAddr,
                  gs_PngApiInstance[s32Handle - 1].pMemHead->stBuf.pVir, gs_PngApiInstance[s32Handle
                                                                                           - 1].pMemHead->stBuf.u32Size);
        free(gs_PngApiInstance[s32Handle - 1].pMemHead);
        gs_PngApiInstance[s32Handle - 1].pMemHead = pTemp;
    }

    if (gs_PngApiInstance[s32Handle - 1].pReadParam)
    {
        free(gs_PngApiInstance[s32Handle - 1].pReadParam);
        gs_PngApiInstance[s32Handle - 1].pReadParam = HI_NULL;
    }

    pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);

    return;
}

/********************************************************************************************
* func:	destroy decoder
* in:	s32Handle	decoder handle
* out:	none
* ret:	HI_SUCCESS
* ret:	HI_ERR_PNG_NOOPEN	device is not open
* ret:	HI_ERR_PNG_INVALID_HANDLE	unlawful decoder handle
* others:	pair with HI_PNG_CreateDecoder
********************************************************************************************/
HI_S32 HI_PNG_DestroyDecoder(HI_PNG_HANDLE s32Handle)
{
    HI_S32 s32Ret = HI_SUCCESS;

    PNG_CHECK_DEVSTATE();

    s32Ret = ioctl(g_s32PngFd, PNG_DESTROY_DECODER, &s32Handle);
    if (s32Ret < 0)
    {
        return s32Ret;
    }

    PNG_UnMap_DecoderBuf(s32Handle);

    pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);

    return HI_SUCCESS;
}

/********************************************************************************************
* func:	Alloc code stream buffer
* in:	s32Handle	decoder handle
* in:	pstBuf->u32Len	apply the size of buffer
* out:	pstBuf	return buf information,include  basic physical addr and the size of buffer
* ret:	HI_SUCCESS
* ret:	HI_ERR_PNG_NOOPEN	device is not open
* ret:	HI_ERR_PNG_INVALID_HANDLE	unlawful decoder handle
* ret:	HI_ERR_PNG_NOMEM	memory is not enough
* ret:	HI_ERR_PNG_NULLPTR	pointer is null
* others:
            Get code stream buffer, write into code steam data;
            if pstBuf->u32Len = 0, alloc default size in memory,
            otherwise alloc by the size of pstBuf->u32Len.
            while output, the value of pstBuf->u32Len equal to its used
********************************************************************************************/
HI_S32 HI_PNG_AllocBuf(HI_PNG_HANDLE s32Handle, HI_PNG_BUF_S *pstBuf)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_GETBUF_CMD_S stCmd = {0};
    PNG_MEM_NODE_S *pstMemNode = HI_NULL;

    if (HI_NULL == pstBuf)
    {
        HIPNG_TRACE("NULL param!\n");
        return HI_ERR_PNG_NULLPTR;
    }

    PNG_CHECK_DEVSTATE();

    stCmd.s32Handle = s32Handle;
    memcpy(&stCmd.stBuf, pstBuf, sizeof(HI_PNG_BUF_S));

    //HIPNG_TRACE("user sizeof(PNG_GETBUF_CMD_S):%d\n", sizeof(PNG_GETBUF_CMD_S));

    s32Ret = ioctl(g_s32PngFd, PNG_ALLOC_BUF, &stCmd);
    if (s32Ret < 0)
    {
        return s32Ret;
    }

    memcpy(pstBuf, &stCmd.stBuf, sizeof(HI_PNG_BUF_S));

    /* memory map, create mapping list */
    pstBuf->pVir = PNG_Map(pstBuf->u32PhyAddr, pstBuf->u32Size);
    if (HI_NULL == pstBuf->pVir)
    {
        return HI_ERR_PNG_SYS;
    }

    pstMemNode = (PNG_MEM_NODE_S *)malloc(sizeof(PNG_MEM_NODE_S));
    if (HI_NULL == pstMemNode)
    {
        PNG_UnMap(pstBuf->u32PhyAddr, pstBuf->pVir, pstBuf->u32Size);
        return HI_ERR_PNG_NOMEM;
    }

    memcpy(&pstMemNode->stBuf, pstBuf, sizeof(HI_PNG_BUF_S));

    do
    {
        s32Ret = pthread_mutex_lock(&gs_PngApiInstance[s32Handle - 1].stLock);
    } while (s32Ret != HI_SUCCESS);

    /* insert node into list head */
    pstMemNode->pNext = gs_PngApiInstance[s32Handle - 1].pMemHead;
    gs_PngApiInstance[s32Handle - 1].pMemHead = pstMemNode;

    pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);

    return HI_SUCCESS;
}

/********************************************************************************************
 * func:	release code stream buffer
 * in:	s32Handle	decoder handle
 * out:      none
 * ret:	HI_SUCCESS
 * ret:	HI_ERR_PNG_NOOPEN	device is not open
 * ret:	HI_ERR_PNG_INVALID_HANDLE	unlawful decoder handle
 * others:
 *********************************************************************************************/
HI_S32 HI_PNG_ReleaseBuf(HI_PNG_HANDLE s32Handle)
{
    HI_S32 s32Ret = HI_SUCCESS;

    PNG_CHECK_DEVSTATE();

    /* the two steps of release buffer:
    1. release map in kerneled and memory
    2. release map in user */

    s32Ret = ioctl(g_s32PngFd, PNG_RELEASE_BUF, &s32Handle);
    if (s32Ret < 0)
    {
        return s32Ret;
    }

    /* Unmap in user */
    PNG_UnMap_DecoderBuf(s32Handle);

    return HI_SUCCESS;
}

/********************************************************************************************
 * func:	set code stream size
 * in:	        s32Handle	decoder handle
 * in:	        pstBuf	 info of code stream buffer
 * out:
 * ret:	HI_SUCCESS
 * ret:	HI_ERR_PNG_NOOPEN	device is not open
 * ret:	HI_ERR_PNG_INVALID_HANDLE	unlawful decoder handle
 * ret:	HI_ERR_PNG_INVALID_PARAM	invalid code stream size
 * ret:  HI_ERR_PNG_NULLPTR  point is null
 * others:
        set the size of code stream, after get code stream buffer and write code stream data
        the size of code stream is not more than the size of buffer
 *********************************************************************************************/
HI_S32 HI_PNG_SetStreamLen(HI_PNG_HANDLE s32Handle, HI_U32 u32Phyaddr, HI_U32 u32Len)
{
    PNG_SETSTREAM_CMD_S stCmd = {0};

    PNG_CHECK_DEVSTATE();

    stCmd.s32Handle  = s32Handle;
    stCmd.u32Phyaddr = u32Phyaddr;
    stCmd.u32Len = u32Len;

    //HIPNG_TRACE("user sizeof(PNG_SETSTREAM_CMD_S):%d\n", sizeof(PNG_SETSTREAM_CMD_S));

    return ioctl(g_s32PngFd, PNG_SET_STREAMLEN, &stCmd);
}

/********************************************************************************************
 * func:	Get code stream size
 * in:	        s32Handle	decoder handle
 * in:	        u32Phyaddr	physical size of buffer
 * out:	pu32Len length of code stream
 * ret:	HI_SUCCESS
 * ret:	HI_ERR_PNG_NOOPEN	device is not open
 * ret:	HI_ERR_PNG_INVALID_HANDLE	invalid decoder handle
 * ret:  HI_ERR_PNG_NULLPTR  pointer is null
 * others:
 *********************************************************************************************/
HI_S32 HI_PNG_GetStreamLen(HI_PNG_HANDLE s32Handle, HI_U32 u32Phyaddr, HI_U32 *pu32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_SETSTREAM_CMD_S stCmd = {0};

    if (pu32Len == HI_NULL)
    {
        return HI_ERR_PNG_NULLPTR;
    }

    PNG_CHECK_DEVSTATE();

    stCmd.s32Handle  = s32Handle;
    stCmd.u32Phyaddr = u32Phyaddr;

    //HIPNG_TRACE("user sizeof(PNG_SETSTREAM_CMD_S):%d\n", sizeof(PNG_SETSTREAM_CMD_S));

    s32Ret = ioctl(g_s32PngFd, PNG_GET_STREAMLEN, &stCmd);
    if (s32Ret < 0)
    {
        return s32Ret;
    }

    *pu32Len = stCmd.u32Len;

    return HI_SUCCESS;
}

/********************************************************************************************
 * func:	start decode
 * in:	        s32Handle	decoder handle
 * in:	        pstDecInfo	decoder setting information
 * out:
 * ret:	HI_SUCCESS
 * ret:	HI_ERR_PNG_NOOPEN	device is not open
 * ret:	HI_ERR_PNG_INVALID_HANDLE	invalid decoder handle
 * ret:  HI_ERR_PNG_NULLPTR pointer is null
 * ret:  HI_ERR_PNG_NOSTREAM  no code stream
 * ret:  HI_PNG_ERR_INTERNAL  decode error
 * others:
 *********************************************************************************************/
HI_S32 HI_PNG_Decode(HI_PNG_HANDLE s32Handle,  const HI_PNG_DECINFO_S *pstDecInfo)
{
    PNG_DECODE_CMD_S stCmd = {0};

    //HIPNG_TRACE("user sizeof(PNG_DECODE_CMD_S):%d\n", sizeof(PNG_DECODE_CMD_S));

    if (HI_NULL == pstDecInfo)
    {
        return HI_ERR_PNG_NULLPTR;
    }

    PNG_CHECK_DEVSTATE();

    stCmd.s32Handle = s32Handle;

    memcpy(&stCmd.stDecInfo, pstDecInfo, sizeof(HI_PNG_DECINFO_S));

    return ioctl(g_s32PngFd, PNG_DECODE, &stCmd);
}

/********************************************************************************************
* func:	Get decode result
* in:	s32Handle	decoder handle
* in:	bBlock		if block
* out:	pstDecResult	decode result
* ret:	HI_SUCCESS
* ret:	HI_ERR_PNG_NOOPEN	device is not open
* ret:	HI_ERR_PNG_INVALID_HANDLE	invalid decoder handle
* ret:	HI_ERR_PNG_NULLPTR	pointer is null
* others:
********************************************************************************************/
HI_S32 HI_PNG_GetResult(HI_PNG_HANDLE s32Handle, HI_BOOL bBlock, HI_PNG_STATE_E * peDecState)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_DECRESULT_CMD_S stCmd = {0};

    if (HI_NULL == peDecState)
    {
        HIPNG_TRACE("NULL param!\n");
        return HI_ERR_PNG_NULLPTR;
    }

    PNG_CHECK_DEVSTATE();

    stCmd.s32Handle = s32Handle;
    stCmd.bBlock = bBlock;

    //HIPNG_TRACE("user sizeof(PNG_DECRESULT_CMD_S):%d\n", sizeof(PNG_DECRESULT_CMD_S));

    s32Ret = ioctl(g_s32PngFd, PNG_GET_DECRESULT, &stCmd);

    *peDecState = stCmd.eDecResult;

    return s32Ret;
}

/********************************************************************************************
 * func:	Get read function pointer
 * in:	s32Handle	decoder handle
 * out:	pReadFunc 	read fuction
 * ret:	HI_SUCCESS
 * ret:	HI_ERR_PNG_NOOPEN	device is not open
 * ret:	HI_ERR_PNG_INVALID_HANDLE	invalid decoder handle
 * ret:	HI_ERR_PNG_NULLPTR	pointer is null
 * others:
 *********************************************************************************************/
HI_S32 HI_PNG_GetReadPtr(HI_PNG_HANDLE s32Handle, HI_PNG_READ_FN *ppReadFunc)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_GETBUFPARAM_CMD_S stCmd = {0};

    if (HI_NULL == ppReadFunc)
    {
        HIPNG_TRACE("NULL param!\n");
        return HI_ERR_PNG_NULLPTR;
    }

    PNG_CHECK_DEVSTATE();

    stCmd.s32Handle = s32Handle;

    //HIPNG_TRACE("user sizeof(PNG_GETBUFPARAM_CMD_S):%d\n", sizeof(PNG_GETBUFPARAM_CMD_S));

    s32Ret = ioctl(g_s32PngFd, PNG_GET_GETBUFPARAM, &stCmd);
    if (s32Ret < 0)
    {
        return s32Ret;
    }

    do
    {
        s32Ret = pthread_mutex_lock(&gs_PngApiInstance[s32Handle - 1].stLock);
    } while (s32Ret != HI_SUCCESS);

    if (HI_NULL == gs_PngApiInstance[s32Handle - 1].pReadParam)
    {
        gs_PngApiInstance[s32Handle - 1].pReadParam = (PNG_READ_INFO_S *)malloc(sizeof(PNG_READ_INFO_S));
        if (HI_NULL == gs_PngApiInstance[s32Handle - 1].pReadParam)
        {
            pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);
            HIPNG_TRACE("malloc failed!\n");
            return HI_ERR_PNG_NOMEM;
        }

        gs_PngApiInstance[s32Handle - 1].pReadParam->u32Phyaddr = stCmd.u32PhyAddr;
        gs_PngApiInstance[s32Handle - 1].pReadParam->u32Read = 0;
        gs_PngApiInstance[s32Handle - 1].pReadParam->u32Size = stCmd.u32Size;
    }

    pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);

    if (stCmd.u32PhyAddr)
    {
        *ppReadFunc = HIPNG_Read;
    }
    else
    {
        *ppReadFunc = HI_NULL;
    }

    return HI_SUCCESS;
}

/********************************************************************************************
* func:	Read data form code stream buffer in driver
* in:	u32Len  lenth
* in:   s32Handle decoder handle
* out:	get code stream data
* ret:  bytes read in fact
* others:
********************************************************************************************/
HI_U32 HIPNG_Read(HI_UCHAR *pBuf, HI_U32 u32Len, HI_PNG_HANDLE s32Handle)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32Phyaddr = 0;
    HI_U32 u32Size = 0;
    HI_VOID *pViraddr = HI_NULL;
    HI_U32 u32ReadLen = 0;

    if ((HI_NULL == pBuf) || (HI_NULL == gs_PngApiInstance[s32Handle - 1].pReadParam))
    {
        return 0;
    }

    do
    {
        s32Ret = pthread_mutex_lock(&gs_PngApiInstance[s32Handle - 1].stLock);
    } while (s32Ret != HI_SUCCESS);

    u32Phyaddr = gs_PngApiInstance[s32Handle - 1].pReadParam->u32Phyaddr;
    u32Size  = gs_PngApiInstance[s32Handle - 1].pReadParam->u32Size;
    pViraddr = PNG_Map(u32Phyaddr, u32Size);
    if (HI_NULL == pViraddr)
    {
        pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);
        return u32ReadLen;
    }

    while (u32Phyaddr != 0)
    {
        if (u32Len
            <= (((PNG_BUF_HEAD_S *)pViraddr)->u32StreamLen - gs_PngApiInstance[s32Handle - 1].pReadParam->u32Read))
        {
            memcpy(pBuf + u32ReadLen, (HI_UCHAR*)pViraddr + sizeof(PNG_BUF_HEAD_S)
                   + gs_PngApiInstance[s32Handle - 1].pReadParam->u32Read, u32Len);
            gs_PngApiInstance[s32Handle - 1].pReadParam->u32Read += u32Len;
            u32ReadLen += u32Len;
            PNG_UnMap(u32Phyaddr, pViraddr, u32Size);

            //HIPNG_TRACE("%x, %d\n", u32Phyaddr, u32Len);
            pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);
            return u32ReadLen;
        }
        else
        {
            HI_VOID *pTempVir = HI_NULL;
            memcpy(pBuf + u32ReadLen, (HI_UCHAR*)pViraddr + sizeof(PNG_BUF_HEAD_S)
                   + gs_PngApiInstance[s32Handle - 1].pReadParam->u32Read,
                   ((PNG_BUF_HEAD_S *)pViraddr)->u32StreamLen - gs_PngApiInstance[s32Handle - 1].pReadParam->u32Read);
            u32ReadLen += ((PNG_BUF_HEAD_S *)pViraddr)->u32StreamLen
                          - gs_PngApiInstance[s32Handle - 1].pReadParam->u32Read;
            u32Len -= ((PNG_BUF_HEAD_S *)pViraddr)->u32StreamLen - gs_PngApiInstance[s32Handle - 1].pReadParam->u32Read;

            gs_PngApiInstance[s32Handle - 1].pReadParam->u32Read = 0;
            gs_PngApiInstance[s32Handle - 1].pReadParam->u32Phyaddr = ((PNG_BUF_HEAD_S *)pViraddr)->u32NextPhyaddr;
            if (0 == gs_PngApiInstance[s32Handle - 1].pReadParam->u32Phyaddr)
            {
                PNG_UnMap(u32Phyaddr, pViraddr, u32Size);
                pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);
                return u32ReadLen;
            }

            pTempVir = PNG_Map(gs_PngApiInstance[s32Handle - 1].pReadParam->u32Phyaddr,
                                           sizeof(PNG_BUF_HEAD_S));
            if (HI_NULL == pTempVir)
            {
                PNG_UnMap(u32Phyaddr, pViraddr, u32Size);
                pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);
                return u32ReadLen;
            }

            gs_PngApiInstance[s32Handle - 1].pReadParam->u32Size =
				                                 ((PNG_BUF_HEAD_S *)pTempVir)->u32BufSize
                                                 + sizeof(PNG_BUF_HEAD_S);

            PNG_UnMap(gs_PngApiInstance[s32Handle - 1].pReadParam->u32Phyaddr, pTempVir, sizeof(PNG_BUF_HEAD_S));
            PNG_UnMap(u32Phyaddr, pViraddr, u32Size);

            u32Phyaddr = gs_PngApiInstance[s32Handle - 1].pReadParam->u32Phyaddr;
            u32Size = gs_PngApiInstance[s32Handle - 1].pReadParam->u32Size;

            pViraddr = PNG_Map(u32Phyaddr, u32Size);
            if (HI_NULL == pViraddr)
            {
                pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);
                return u32ReadLen;
            }

            //HIPNG_TRACE("%x, %x, %x, %x\n", pViraddr[0], pViraddr[1], pViraddr[2], pViraddr[3]);
        }
    }

    pthread_mutex_unlock(&gs_PngApiInstance[s32Handle - 1].stLock);

    //HIPNG_TRACE("%x, %d\n", u32Phyaddr, u32Len);
    return u32ReadLen;
}

HI_VOID *PNG_Map(HI_U32 u32Phyaddr, HI_U32 u32Size)
{
    HI_CHAR *pVir;

    pVir = (HI_CHAR *)mmap(NULL, u32Size + (u32Phyaddr & 0xfff), PROT_READ | PROT_WRITE, MAP_SHARED, g_s32MemFd,
                           (long)(u32Phyaddr & 0xfffff000));
    if (pVir == MAP_FAILED)
    {
        return HI_NULL;
    }

    return (HI_VOID *)(pVir + (u32Phyaddr & 0xfff));
}

HI_VOID PNG_UnMap(HI_U32 u32Phyaddr, HI_VOID *pVir, HI_U32 u32Size)
{

	HI_S32 s32Ret = 0;
    PNG_API_ASSERT((pVir != HI_NULL));
    PNG_API_ASSERT((u32Phyaddr != 0));

    s32Ret = munmap((HI_CHAR *)pVir - (u32Phyaddr & 0xfff), u32Size + (u32Phyaddr & 0xfff));
    if(0!=s32Ret)
    {
       return;
    }
	
    return;
}
