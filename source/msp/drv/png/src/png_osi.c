/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.
******************************************************************************
File Name	: hi_png_api.c
Version		: Initial Draft
Author		: z00141204
Created		: 2010/10/11
Description	: png osi layer code        CNcomment:png osi层实现
Function List 	: 
			  	  
History       	:
Date				Author        		Modification
2010/10/11		z00141204		Created file      	

******************************************************************************/

#ifdef __cplusplus
#if __cplusplus
#extern "C"{
#endif 	/* __cplusplus */
#endif 	/* __cplusplus */

#include <linux/interrupt.h>

#include "hi_png_errcode.h"
#include "hi_drv_png.h"
#include "png_define.h"
#include "png_osi.h"
#include "png_osires.h"
#include "png_hal.h"
#include "hi_tde_type.h"
#include "drv_tde_ext.h"
#include "png_proc.h"
#include "hi_png_config.h"


/* rle window size, can't be changed */
#define PNG_RDCBUF_SIZE (32 * 1024)

extern PNG_PROC_INFO_S s_stPngProcInfo; 

HI_VOID PngOsiAddTimer(HI_U32 u32Expires);
HI_VOID PngOsiDelTimer(HI_VOID);
static HI_VOID PngTimerFunc(unsigned long data);
HI_S32 PngOsiSuspend(HI_VOID);
HI_S32 pngOsiResume(HI_VOID);
HI_VOID PngOsiReset(HI_VOID);
static HI_S32 PngOsiClutToRgb(HI_PNG_HANDLE s32Handle);

/* png decoder queue*/
PNG_DECLARE_WAITQUEUE(g_PngWaitQueue);

/* png device lock*/
HI_DECLARE_MUTEX(g_DevMutex);

/* activ handle,hardware handle */
static HI_PNG_HANDLE g_ActiveHandle = 0;

DEFINE_TIMER(g_PngTimer, PngTimerFunc, 0, (unsigned long)&g_ActiveHandle);

/* flag of time starting */
HI_BOOL g_bAddTimer = HI_FALSE;

/* rle window physical address*/
static HI_U32 g_u32RdcBufPhyaddr = 0;

/* Png device reference count*/
static atomic_t g_PngRef = ATOMIC_INIT(0);

/* flag of png device open */
#define PNG_CHECK_OPEN() do\
{\
    if (0 == atomic_read(&g_PngRef))\
    {\
        PNG_ERROR("Png device not open!\n");\
        return HI_ERR_PNG_DEV_NOOPEN;\
    }\
}while(0)

/********************************************************************************************
* func:	png osi init
* in:	none
* out:	none
* ret:	HI_SUCCESS success
* ret:	HI_ERR_PNG_NOMEM	no memory
* others:
*********************************************************************************************/
HI_S32 PngOsiInit(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;
    
    /* alloc rle window buf */
    s32Ret = PngOsiResAllocMem("PNG_RdcBuf", PNG_RDCBUF_SIZE, 16, &g_u32RdcBufPhyaddr);
    if (s32Ret < 0)
    {
    	return s32Ret;
    }

    /* set rle window address */
    PngHalSetRdcAddr(g_u32RdcBufPhyaddr);

    g_bAddTimer = HI_FALSE;

    return HI_SUCCESS;    
}

/********************************************************************************************
* func:	png osi deinit
* in:	none
* out:	none
* ret:	none
* others:	
*********************************************************************************************/
HI_VOID PngOsiDeinit(HI_VOID)
{
    PngOsiResReleaseMem(g_u32RdcBufPhyaddr);

    g_u32RdcBufPhyaddr = 0;
    
    return;
}

/********************************************************************************************
* func:	open PNG device
* in:	none
* out:	none
* ret:	HI_SUCCESS	:succes
* others:	before using png moudle, open the device, multi thread/process is support.
*********************************************************************************************/
static TDE_EXPORT_FUNC_S *ps_TdeExportFuncs;

HI_S32 PngOsiOpen(HI_VOID)
{
    HI_S32 s32Ret;
    
    if (atomic_inc_return(&g_PngRef) == 1)
    {
        ps_TdeExportFuncs = HI_NULL;
        s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_TDE, (HI_VOID**)&ps_TdeExportFuncs);
        if((NULL == ps_TdeExportFuncs) || (HI_SUCCESS != s32Ret))
        {
            HIPNG_TRACE("Tde is not available!\n");
            return -1;
        }
    }
    return 0;
}

EXPORT_SYMBOL(PngOsiOpen);

/********************************************************************************************
* func:	close PNG device
* in:	none
* out:	none
* ret:	none		
* others:	
*********************************************************************************************/
HI_VOID PngOsiClose(HI_VOID)
{
    if (atomic_read(&g_PngRef) == 1)
    {
        PngOsiDelTimer();
    
        PngHalReset();

        PngOsiReset();
    }

    atomic_dec(&g_PngRef);

    PNG_ASSERT(atomic_read(&g_PngRef) >= 0);
    
    return;
}

EXPORT_SYMBOL(PngOsiClose);

/********************************************************************************************
* func:	create decoder
* in:	        none
* out:	ps32Handle: ptr to decoder handle 
* ret:	HI_SUCCESS: success
* ret:	HI_ERR_PNG_NOOPEN:	device not open
* ret:	HI_ERR_PNG_NOHANDLE	no decoder
* ret:       HI_ERR_PNG_NULLPTR: invalid ptr
* others:	can support 32 decoder at most
*********************************************************************************************/
HI_S32 PngOsiCreateDecoder(HI_PNG_HANDLE *ps32Handle)
{
    if (HI_NULL == ps32Handle)
    {
        return HI_ERR_PNG_NULLPTR;
    }

    PNG_CHECK_OPEN();
    
    return PngOsiResAllocHandle(ps32Handle);
}

EXPORT_SYMBOL(PngOsiCreateDecoder);

/********************************************************************************************
* func:	destroy decoder
* in:	        s32Handle: decoder handle
* out:	none
* ret:	HI_SUCCESS:        success
* ret:	HI_ERR_PNG_NOOPEN: device not open
* ret:	HI_ERR_PNG_INVALID_HANDLE: invalid decoder handle
* others:	relation to HI_PNG_CreateDecoder
*********************************************************************************************/
HI_S32 PngOsiDestroyDecoder(HI_PNG_HANDLE s32Handle)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_INSTANCE_S *pstInstance = HI_NULL;

    PNG_CHECK_OPEN();
    
    s32Ret = PngOsiResGetInstance(s32Handle, &pstInstance);
    if (s32Ret < 0)
    {
        return s32Ret;
    }
    
    PNG_DOWN_INTERRUPTIBLE(&pstInstance->stInstanceLock);
    
    if (HI_PNG_STATE_DECING == pstInstance->eState)
    {
        PNG_UP(&pstInstance->stInstanceLock);
        return HI_ERR_PNG_DEV_BUSY;
    }

    /* release filter buf */
    PngOsiResReleaseMem(pstInstance->u32FilterBufPhyaddr);

    PNG_UP(&pstInstance->stInstanceLock);

    /* release decoder memory */
    PngOsiReleaseBuf(s32Handle);

    /* release decoder */
    s32Ret = PngOsiResReleaseHandle(s32Handle);
    //assert(HI_SUCCESS == s32Ret);

    return HI_SUCCESS;
}

EXPORT_SYMBOL(PngOsiDestroyDecoder);

/********************************************************************************************
* func:	get stream buf
* in:	s32Handle:	decoder handle
* in:	pstBuf->u32Len: buffer size
* out:	pstBuf:         buf info,including physical address and size
* ret:	HI_SUCCESS:     success
* ret:	HI_ERR_PNG_INVALID_HANDL: invalid handle
* ret:	HI_ERR_PNG_NOMEM:	no mem
* ret:	HI_ERR_PNG_NULLPTR:	invalid pter
* others:	with this interface get stream buffer, and writer stram,  if pstBuf->u32Len =0, then 
                        alloc default size mem, else use pstBuf->u32Len .pstBuf->u32Len  record the actual size
*********************************************************************************************/
HI_S32 PngOsiAllocBuf(HI_PNG_HANDLE s32Handle, HI_PNG_BUF_S *pstBuf)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_INSTANCE_S *pstInstance = HI_NULL;
    HI_U32 u32Phyaddr = 0;
    HI_U32 u32Size = 0;
    HI_VOID *pViraddr = HI_NULL;

    PNG_CHECK_OPEN();

    if (HI_NULL == pstBuf)
    {
        PNG_ERROR("NULL param!\n");
    	return HI_ERR_PNG_NULLPTR;
    }

    /* in calse of overflow, do check */
    if ((0xffffffff - pstBuf->u32Size) < sizeof(PNG_BUF_HEAD_S))
    {
        PNG_ERROR("No mem!\n");
        return HI_ERR_PNG_NOMEM;
    }

    /* alloc*/
    if (pstBuf->u32Size)
    {
    	u32Size = pstBuf->u32Size + sizeof(PNG_BUF_HEAD_S);
    }

    s32Ret = PngOsiResAllocBuf(&u32Phyaddr, &u32Size);
    if (s32Ret < 0)
    {
    	return s32Ret;
    }

    s32Ret = PngOsiResMapMem(u32Phyaddr, &pViraddr);
    if (s32Ret < 0)
    {
    	PngOsiResReleaseMem(u32Phyaddr);
    	return s32Ret;
    }

    memset(pViraddr, 0, sizeof(PNG_BUF_HEAD_S));

    /* get decoder instance*/
    s32Ret = PngOsiResGetInstance(s32Handle, &pstInstance);
    if (s32Ret < 0)
    {
        PngOsiResUnMapMem(pViraddr);
        PngOsiResReleaseMem(u32Phyaddr);
    	return s32Ret;
    }

    PNG_DOWN_INTERRUPTIBLE(&pstInstance->stInstanceLock);
    
    /* alloc stream buffer ,before decoder not start */
    if (pstInstance->eState != HI_PNG_STATE_NOSTART)
    {
        PNG_ERROR("Decode has been started!\n");
        PngOsiResUnMapMem(pViraddr);
        PngOsiResReleaseMem(u32Phyaddr);        
        PNG_UP(&pstInstance->stInstanceLock);
        return HI_ERR_PNG_DEV_BUSY;
    }

    /* refresh handle instance*/
    /* decoder alloc buffer, first time */
    if (0 == pstInstance->u32StartBufPhyAddr)
    {
    	pstInstance->u32StartBufPhyAddr = u32Phyaddr;
    	pstInstance->pStartBufVir = pViraddr;
    }
    else
    {
    	((PNG_BUF_HEAD_S *)(pstInstance->pEndBufVir))->u32NextPhyaddr = u32Phyaddr;
    	((PNG_BUF_HEAD_S *)(pstInstance->pEndBufVir))->pNextViraddr = pViraddr;
    }

    pstInstance->u32EndBufPhyAddr = u32Phyaddr;
    pstInstance->pEndBufVir = pViraddr;

    ((PNG_BUF_HEAD_S *)(pstInstance->pEndBufVir))->u32BufSize = u32Size - sizeof(PNG_BUF_HEAD_S);
    ((PNG_BUF_HEAD_S *)(pstInstance->pEndBufVir))->u32StreamLen = 0;

    PNG_UP(&pstInstance->stInstanceLock);

    pstBuf->u32PhyAddr = u32Phyaddr + sizeof(PNG_BUF_HEAD_S);
    pstBuf->pVir = pViraddr + sizeof(PNG_BUF_HEAD_S);
    pstBuf->u32Size = u32Size - sizeof(PNG_BUF_HEAD_S);

    return HI_SUCCESS;
}

EXPORT_SYMBOL(PngOsiAllocBuf);

/********************************************************************************************
* func:	release stream buf
* in:	        s32Handle:	decoder handle
* out:      none
* ret:	HI_SUCCESS:	success
* ret:	HI_ERR_PNG_NOOPEN:	device not open
* ret:	HI_ERR_PNG_INVALID_HANDLE:	invalid handle
* others:	
*********************************************************************************************/
HI_S32 PngOsiReleaseBuf(HI_PNG_HANDLE s32Handle)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_INSTANCE_S *pstInstance = HI_NULL;
    HI_U32 u32Phyaddr = 0;
    HI_VOID *pViraddr = HI_NULL;
    HI_U32 u32NextPhyaddr = 0;
    HI_VOID *pNextViraddr = HI_NULL;
    
    PNG_CHECK_OPEN();
    
    s32Ret = PngOsiResGetInstance(s32Handle, &pstInstance);
    if (s32Ret < 0)
    {
        return s32Ret;
    }

    PNG_DOWN_INTERRUPTIBLE(&pstInstance->stInstanceLock);

    if (HI_PNG_STATE_DECING == pstInstance->eState)
    {
        PNG_UP(&pstInstance->stInstanceLock);
        return HI_ERR_PNG_DEV_BUSY;
    }

    u32Phyaddr = pstInstance->u32StartBufPhyAddr;
    pViraddr = pstInstance->pStartBufVir;
    while(HI_NULL != pViraddr)
    {
        u32NextPhyaddr = ((PNG_BUF_HEAD_S *)pViraddr)->u32NextPhyaddr;
        pNextViraddr = ((PNG_BUF_HEAD_S *)pViraddr)->pNextViraddr;

        PngOsiResUnMapMem(pViraddr);
        PngOsiResReleaseMem(u32Phyaddr);

        u32Phyaddr = u32NextPhyaddr;
        pViraddr = pNextViraddr;
    }

    pstInstance->u32StartBufPhyAddr = 0;
    pstInstance->pStartBufVir = HI_NULL;
    
    PNG_UP(&pstInstance->stInstanceLock);
    
    return HI_SUCCESS;
}


/********************************************************************************************
* func:	set stream len
* in:	s32Handle:	decoder handle
* in:	stBuf:          stream info
* out:	
* ret:	HI_SUCCESS:	success
* ret:	HI_ERR_PNG_INVALID_HANDLE:	invalid handle
* ret:	HI_ERR_PNG_INVALID_STREAMLEN:   invalid stream size
* others:	match with HI_PNG_GetBuf.after get stream lenght, set  stream length. 
                ther bufer length is the latest stream length,it can't abover the stream length.
*********************************************************************************************/
HI_S32 PngOsiSetStreamLen(HI_PNG_HANDLE s32Handle, HI_U32 u32Phyaddr, HI_U32 u32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_INSTANCE_S *pstInstance = HI_NULL;
    PNG_BUF_HEAD_S *pstBufHead = HI_NULL;
    HI_U32 u32BufPhyaddr = 0;

    PNG_CHECK_OPEN();

    s32Ret = PngOsiResGetInstance(s32Handle, &pstInstance);
    if (s32Ret < 0)
    {
    	return s32Ret;
    }

    PNG_DOWN_INTERRUPTIBLE(&pstInstance->stInstanceLock);

    /* before decoder starting, set stream length */
    if (pstInstance->eState != HI_PNG_STATE_NOSTART)
    {
        PNG_ERROR("Decode has been started!\n");        
        PNG_UP(&pstInstance->stInstanceLock);
        return HI_ERR_PNG_DEV_BUSY;
    }

    u32BufPhyaddr = pstInstance->u32StartBufPhyAddr;
    pstBufHead = (PNG_BUF_HEAD_S *)(pstInstance->pStartBufVir);
    while((u32Phyaddr != u32BufPhyaddr + sizeof(PNG_BUF_HEAD_S))
        && (0 != u32BufPhyaddr))
    {
        u32BufPhyaddr = pstBufHead->u32NextPhyaddr;
        pstBufHead = (PNG_BUF_HEAD_S *)pstBufHead->pNextViraddr;
    }

    if ((HI_NULL == pstBufHead) || (pstBufHead->u32BufSize < u32Len))
    {
        PNG_ERROR("Can't find buf(%x) or stream len is too large(>buf len)!addr:%x, streamlen:%x\n", pstBufHead, u32Phyaddr, u32Len);        
        PNG_UP(&pstInstance->stInstanceLock);
        return HI_ERR_PNG_INVALID_PARAM;
    }

    pstBufHead->u32StreamLen = u32Len;

    PNG_UP(&pstInstance->stInstanceLock);

    return HI_SUCCESS;
}

EXPORT_SYMBOL(PngOsiSetStreamLen);

/********************************************************************************************
* func:	get stream length
* in:	        s32Handle:      decoder handle
* in:	        u32Phyaddr	buf physical address
* out:	pu32Len:                stream length
* ret:	HI_SUCCESS:              success
* ret:	HI_ERR_PNG_NOOPEN:      device not open
* ret:	HI_ERR_PNG_INVALID_HANDLE: invalid handle
* ret:       HI_ERR_PNG_NULLPTR: invalid ptr
* others:	
*********************************************************************************************/
HI_S32 PngOsiGetStreamLen(HI_PNG_HANDLE s32Handle, HI_U32 u32Phyaddr, HI_U32 *pu32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_INSTANCE_S *pstInstance = HI_NULL;
    PNG_BUF_HEAD_S *pstBufHead = HI_NULL;
    HI_U32 u32BufPhyaddr = 0;

    PNG_CHECK_OPEN();

    if (HI_NULL == pu32Len)
    {
        return HI_ERR_PNG_NULLPTR;
    }

    s32Ret = PngOsiResGetInstance(s32Handle, &pstInstance);
    if (s32Ret < 0)
    {
    	return s32Ret;
    }

    PNG_DOWN_INTERRUPTIBLE(&pstInstance->stInstanceLock);

    u32BufPhyaddr = pstInstance->u32StartBufPhyAddr;
    pstBufHead = (PNG_BUF_HEAD_S *)(pstInstance->pStartBufVir);
    while((u32Phyaddr != u32BufPhyaddr + sizeof(PNG_BUF_HEAD_S))
        && (0 != u32BufPhyaddr))
    {
        u32BufPhyaddr = pstBufHead->u32NextPhyaddr;
        pstBufHead = (PNG_BUF_HEAD_S *)pstBufHead->pNextViraddr;
    }

    if (HI_NULL == pstBufHead)
    {
        PNG_ERROR("Can't find buf addr:%x\n", u32Phyaddr);        
        PNG_UP(&pstInstance->stInstanceLock);
        return HI_ERR_PNG_INVALID_PARAM;
    }

    *pu32Len = pstBufHead->u32StreamLen;

    PNG_UP(&pstInstance->stInstanceLock);

    return HI_SUCCESS;
}


/* get bytes according width and depths */
#define PNG_GETROWBYTES(u32RowBytes, u32PassWidth, u8PixelDepth) \
do\
{\
    u32RowBytes = ((u8PixelDepth >= 8) ? (u32PassWidth * u8PixelDepth >> 3) \
        : ((u32PassWidth * u8PixelDepth + 7) >> 3));\
}while(0)

/********************************************************************************************
* func:	start decodr
* in:	s32Handle:	decoder handle
* in:	stDecInfo	decoder info
* out:	
* ret:	HI_SUCCESS	success
* ret:	HI_ERR_PNG_INVALID_HANDLE	invalid handle
* ret:	HI_ERR_PNG_NOMEM	no mem
* others:
*********************************************************************************************/
HI_S32 PngOsiDecode(HI_PNG_HANDLE s32Handle, HI_PNG_DECINFO_S *pstDecInfo)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_INSTANCE_S *pstInstance = HI_NULL;
    HI_U32 u32FltPhyaddr = 0;
    HI_U32 u32RowBytes = 0;
    HI_U8 u8PixelDepth = 0;
    
    if (HI_NULL == pstDecInfo)
    {
        return HI_ERR_PNG_NULLPTR;
    }

    PNG_CHECK_OPEN();

    if ((0 == pstDecInfo->u32Phyaddr) || (0 == pstDecInfo->u32Stride)
        || ((pstDecInfo->u32Phyaddr & 0xf) != 0) || ((pstDecInfo->u32Stride & 0xf) != 0))
    {
        PNG_ERROR("Invalid phyaddr or stride!phyaddr:%x, stride:%x\n", 
            pstDecInfo->u32Phyaddr, pstDecInfo->u32Stride);
        return HI_ERR_PNG_INVALID_PARAM;
    }

    /* alloc filter buf */
    switch(pstDecInfo->stPngInfo.eColorFmt)
    {
        case HI_PNG_IMAGEFMT_GRAY:
        {
            if ((pstDecInfo->stPngInfo.u8BitDepth != 1) && (pstDecInfo->stPngInfo.u8BitDepth != 2)
                && (pstDecInfo->stPngInfo.u8BitDepth != 4) && (pstDecInfo->stPngInfo.u8BitDepth != 8)
                && (pstDecInfo->stPngInfo.u8BitDepth != 16))
            {
                PNG_ERROR("Invalid fmt!fmt:Gray, bitdepth:%d\n", pstDecInfo->stPngInfo.u8BitDepth);
                return HI_ERR_PNG_INVALID_PARAM;
            }
            u8PixelDepth = pstDecInfo->stPngInfo.u8BitDepth;
            break;
        }
        case HI_PNG_IMAGEFMT_RGB:
        {
            if ((pstDecInfo->stPngInfo.u8BitDepth != 8) && (pstDecInfo->stPngInfo.u8BitDepth != 16))
            {
                PNG_ERROR("Invalid fmt!fmt:RGB, bitdepth:%d\n", pstDecInfo->stPngInfo.u8BitDepth);
                return HI_ERR_PNG_INVALID_PARAM;
            }
            u8PixelDepth = pstDecInfo->stPngInfo.u8BitDepth * 3;
            break;
        }
        case HI_PNG_IMAGEFMT_CLUT:
        {
            if ((pstDecInfo->stPngInfo.u8BitDepth != 1) && (pstDecInfo->stPngInfo.u8BitDepth != 2)
                && (pstDecInfo->stPngInfo.u8BitDepth != 4) && (pstDecInfo->stPngInfo.u8BitDepth != 8))
            {
                PNG_ERROR("Invalid fmt!fmt:Clut, bitdepth:%d\n",  pstDecInfo->stPngInfo.u8BitDepth);
                return HI_ERR_PNG_INVALID_PARAM;
            }
            u8PixelDepth = pstDecInfo->stPngInfo.u8BitDepth;
            break;
        }
        case HI_PNG_IMAGEFMT_AGRAY:
        {
            if ((pstDecInfo->stPngInfo.u8BitDepth != 8) && (pstDecInfo->stPngInfo.u8BitDepth != 16))
            {
                PNG_ERROR("Invalid fmt!fmt:AGray, bitdepth:%d\n", pstDecInfo->stPngInfo.u8BitDepth);
                return HI_ERR_PNG_INVALID_PARAM;
            }
            u8PixelDepth = pstDecInfo->stPngInfo.u8BitDepth * 2;
            break;
        }
        case HI_PNG_IMAGEFMT_ARGB:
        {
            if ((pstDecInfo->stPngInfo.u8BitDepth != 8) && (pstDecInfo->stPngInfo.u8BitDepth != 16))
            {
                PNG_ERROR("Invalid fmt!fmt:ARGB, bitdepth:%d\n", pstDecInfo->stPngInfo.u8BitDepth);
                return HI_ERR_PNG_INVALID_PARAM;
            }
            u8PixelDepth = pstDecInfo->stPngInfo.u8BitDepth * 4;
            break;
        }
        default:
        {
            PNG_ERROR("Invalid fmt!\n");
            return HI_ERR_PNG_INVALID_PARAM;
        }
    }

    PNG_GETROWBYTES(u32RowBytes, pstDecInfo->stPngInfo.u32Width, u8PixelDepth);
    u32RowBytes = (u32RowBytes + 0xf) & ~0xf;

    s32Ret = PngOsiResAllocMem("PNG_FilterBuf", u32RowBytes, 16, &u32FltPhyaddr);
    if (s32Ret < 0)
    {
        return s32Ret;
    }

    /* alloc device lock, attention release it after decoding*/
    PNG_DOWN_INTERRUPTIBLE(&g_DevMutex);
        
    s32Ret = PngOsiResGetInstance(s32Handle, &pstInstance);
    if (s32Ret < 0)
    {
        PngOsiResReleaseMem(u32FltPhyaddr);        
        PNG_UP(&g_DevMutex);
        return s32Ret;
    }

    PNG_DOWN_INTERRUPTIBLE(&pstInstance->stInstanceLock);

    pstInstance->eState = HI_PNG_STATE_DECING;

    /* no stream buf */
    if (0 == pstInstance->u32StartBufPhyAddr)
    {
        PngOsiResReleaseMem(u32FltPhyaddr);        
        PNG_UP(&pstInstance->stInstanceLock);
        PNG_UP(&g_DevMutex);
        PNG_ERROR("No stream!\n");
        return HI_ERR_PNG_NOSTREAM;
    }

    pstInstance->bSync = pstDecInfo->bSync;
    pstInstance->u32Phyaddr = pstDecInfo->u32Phyaddr;
    pstInstance->u32Stride = pstDecInfo->u32Stride;
    pstInstance->u32ClutPhyaddr = pstDecInfo->stTransform.u32ClutPhyaddr;
    pstInstance->bClutAlpha = pstDecInfo->stTransform.bClutAlpha;
    pstInstance->u32Transform = pstDecInfo->stTransform.u32Transform;
    pstInstance->u32FilterBufPhyaddr = u32FltPhyaddr;
    pstInstance->eOutFmt = pstDecInfo->stTransform.eOutFmt;
    memcpy(&(pstInstance->stPngInfo), &pstDecInfo->stPngInfo, sizeof(HI_PNG_INFO_S));

    pstInstance->u32HwUseBufPhyAddr = pstInstance->u32StartBufPhyAddr;
    pstInstance->pHwUseBufVir = pstInstance->pStartBufVir;

    /* recoder active decoder */
    g_ActiveHandle = s32Handle;

    /* confiture registre, config png basic info*/
    PngHalSetImgInfo(pstDecInfo->stPngInfo);

#if 1
    /* revise transparency info : if 1/2/4bit gray , then convert it to 8bit*/
    if ((pstDecInfo->stPngInfo.eColorFmt == HI_PNG_IMAGEFMT_GRAY) && (pstDecInfo->stPngInfo.u8BitDepth < 8)
        && (pstDecInfo->stTransform.u32Transform & HI_PNG_TRANSFORM_GRAY124TO8))
    {
        if (pstDecInfo->stPngInfo.u8BitDepth == 1)
        {
            pstDecInfo->stTransform.sTrnsInfo.u16Blue *= 0xff;
        }
        else if (pstDecInfo->stPngInfo.u8BitDepth == 2)
        {
            pstDecInfo->stTransform.sTrnsInfo.u16Blue *= 0x55;
        }
        else
        {
            pstDecInfo->stTransform.sTrnsInfo.u16Blue *= 0x11;
        }
    }

    if (pstDecInfo->stPngInfo.eColorFmt == HI_PNG_IMAGEFMT_GRAY)
    {
        pstDecInfo->stTransform.sTrnsInfo.u16Red = pstDecInfo->stTransform.sTrnsInfo.u16Blue;
        pstDecInfo->stTransform.sTrnsInfo.u16Green = pstDecInfo->stTransform.sTrnsInfo.u16Blue;
    }
#endif

    /* set convert fmt */
    PngHalSetTransform(pstDecInfo->stTransform);

    /* set bilter buffer address*/
    PngHalSetFltAddr(u32FltPhyaddr, u32RowBytes);

    /* set target buf and stride*/
    PngHalSetTgt(pstDecInfo->u32Phyaddr, pstDecInfo->u32Stride);

    /* set stream buf address*/
    PngHalSetStreamBuf(pstInstance->u32HwUseBufPhyAddr, 
    ((PNG_BUF_HEAD_S *)(pstInstance->pHwUseBufVir))->u32BufSize + sizeof(PNG_BUF_HEAD_S));

    /* set stream buffer address*/
    PngHalSetStreamAddr(pstInstance->u32HwUseBufPhyAddr + sizeof(PNG_BUF_HEAD_S), 
    ((PNG_BUF_HEAD_S *)(pstInstance->pHwUseBufVir))->u32StreamLen);

    g_bAddTimer = HI_FALSE;
    #ifndef  CONFIG_PNG_PROC_DISABLE
    if (PNG_IsProcOn())
    {
        s_stPngProcInfo.eColorFmt = pstInstance->stPngInfo.eColorFmt;
        s_stPngProcInfo.eState = pstInstance->eState;
        s_stPngProcInfo.u32FlterPhyaddr = pstInstance->u32FilterBufPhyaddr;
        s_stPngProcInfo.u32Size = u32RowBytes;
        s_stPngProcInfo.u32Height = pstInstance->stPngInfo.u32Height;
        s_stPngProcInfo.u32Width = pstInstance->stPngInfo.u32Width;
        s_stPngProcInfo.u32StreamBufPhyaddr = pstInstance->u32StartBufPhyAddr;
        s_stPngProcInfo.u8BitDepth = pstInstance->stPngInfo.u8BitDepth;
        s_stPngProcInfo.u32ImagePhyaddr = pstInstance->u32Phyaddr;
        s_stPngProcInfo.u32Stride = pstInstance->u32Stride;
        s_stPngProcInfo.u32Transform = pstInstance->u32Transform;
        s_stPngProcInfo.bSync = pstInstance->bSync;
        s_stPngProcInfo.u16TrnsColorRed = pstDecInfo->stTransform.sTrnsInfo.u16Red;
        s_stPngProcInfo.u16TrnsColorGreen = pstDecInfo->stTransform.sTrnsInfo.u16Green;
        s_stPngProcInfo.u16TrnsColorBlue = pstDecInfo->stTransform.sTrnsInfo.u16Blue;
        s_stPngProcInfo.u16Filler = pstDecInfo->stTransform.u16Filler;
    }
   #endif

    /* start to decoder*/
    PngHalStartDecode();

    /* wait until decoding */
    if (pstDecInfo->bSync)
    {
        s32Ret = PNG_WAIT_EVENT_INTERRUPTIBLE(g_PngWaitQueue, HI_PNG_STATE_DECING != pstInstance->eState);
        if (s32Ret < 0)
        {
            /* decoding is interrupted*/
            pstInstance->bSync = HI_FALSE;

            PNG_UP(&pstInstance->stInstanceLock);

            return HI_SUCCESS;
        }

        /* release hardware device */
        PNG_UP(&g_DevMutex);

        if (HI_PNG_STATE_FINISH != pstInstance->eState)
        {
            PNG_UP(&pstInstance->stInstanceLock);
            
            return HI_PNG_ERR_INTERNAL;
        }

        /* conver clut to RGB */
        if ((HI_PNG_IMAGEFMT_CLUT == pstDecInfo->stPngInfo.eColorFmt) 
            && (pstDecInfo->stTransform.u32Transform & HI_PNG_TRANSFORM_CLUT2RGB))
        {
            s32Ret = PngOsiClutToRgb(s32Handle);
            if (s32Ret < 0)
            {
                pstInstance->eState = HI_PNG_STATE_ERR;
            }
        }
    }

    PNG_UP(&pstInstance->stInstanceLock);


    return HI_SUCCESS;

}

EXPORT_SYMBOL(PngOsiDecode);

/* CLUT to RGB,the index table use 6 bit:
-------------------------
|   |   |   |   |   |   |
-------------------------
      |        |   |  |
                       ---------wether use alpha
      |        |   |
                   -------------wether switch alpha
      |        |
               -----------------wether switch R,B
      |
      ------0x000:4444;
            0x001:1555;
            0x010:565;
            0x011:555;
            0x100:444;
            0x101---0x111:not convert 32 bit to 16 bit
*/
static TDE2_COLOR_FMT_E g_ClutToRgbTable[64] = {
    TDE2_COLOR_FMT_ABGR4444, TDE2_COLOR_FMT_BGR888, TDE2_COLOR_FMT_BGRA4444, TDE2_COLOR_FMT_BGR888,
    TDE2_COLOR_FMT_ARGB4444, TDE2_COLOR_FMT_RGB888, TDE2_COLOR_FMT_RGBA4444, TDE2_COLOR_FMT_RGB888,
    TDE2_COLOR_FMT_ABGR1555, TDE2_COLOR_FMT_BGR888, TDE2_COLOR_FMT_BGRA1555, TDE2_COLOR_FMT_BGR888,
    TDE2_COLOR_FMT_ARGB1555, TDE2_COLOR_FMT_RGB888, TDE2_COLOR_FMT_RGBA1555, TDE2_COLOR_FMT_RGB888,
    TDE2_COLOR_FMT_BGR565, TDE2_COLOR_FMT_BGR888, TDE2_COLOR_FMT_BGR565, TDE2_COLOR_FMT_BGR888,
    TDE2_COLOR_FMT_RGB565, TDE2_COLOR_FMT_RGB888, TDE2_COLOR_FMT_RGB565, TDE2_COLOR_FMT_RGB888,
    TDE2_COLOR_FMT_BGR555, TDE2_COLOR_FMT_BGR888, TDE2_COLOR_FMT_BGR555, TDE2_COLOR_FMT_BGR888,
    TDE2_COLOR_FMT_RGB555, TDE2_COLOR_FMT_RGB888, TDE2_COLOR_FMT_RGB555, TDE2_COLOR_FMT_RGB888,
    TDE2_COLOR_FMT_BGR444, TDE2_COLOR_FMT_BGR888, TDE2_COLOR_FMT_BGR444, TDE2_COLOR_FMT_BGR888,
    TDE2_COLOR_FMT_RGB444, TDE2_COLOR_FMT_RGB888, TDE2_COLOR_FMT_RGB444, TDE2_COLOR_FMT_RGB888,
    TDE2_COLOR_FMT_ABGR8888, TDE2_COLOR_FMT_BGR888, TDE2_COLOR_FMT_BGRA8888, TDE2_COLOR_FMT_BGR888,
    TDE2_COLOR_FMT_ARGB8888, TDE2_COLOR_FMT_RGB888, TDE2_COLOR_FMT_RGBA8888, TDE2_COLOR_FMT_RGB888,                
    TDE2_COLOR_FMT_ABGR8888, TDE2_COLOR_FMT_BGR888, TDE2_COLOR_FMT_BGRA8888, TDE2_COLOR_FMT_BGR888,
    TDE2_COLOR_FMT_ARGB8888, TDE2_COLOR_FMT_RGB888, TDE2_COLOR_FMT_RGBA8888, TDE2_COLOR_FMT_RGB888,                
    TDE2_COLOR_FMT_ABGR8888, TDE2_COLOR_FMT_BGR888, TDE2_COLOR_FMT_BGRA8888, TDE2_COLOR_FMT_BGR888,
    TDE2_COLOR_FMT_ARGB8888, TDE2_COLOR_FMT_RGB888, TDE2_COLOR_FMT_RGBA8888, TDE2_COLOR_FMT_RGB888
};

/* png hardwart not support clut to rgb, instead of TDE */
HI_S32 PngOsiClutToRgb(HI_PNG_HANDLE s32Handle)
{
    TDE_HANDLE s32TdeHandle = -1;
    TDE2_SURFACE_S stForeGround = {0};
    TDE2_SURFACE_S stDst = {0};
    TDE2_RECT_S stRect = {0};
    TDE2_OPT_S stOpt = {0};
    HI_U8 u8Index = 0;
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_INSTANCE_S *pstInstance = HI_NULL;
	
    s32Ret = PngOsiResGetInstance(s32Handle, &pstInstance);
    if (s32Ret < 0)
    {
        return s32Ret;
    }
	
    s32Ret = ps_TdeExportFuncs->pfnTdeOpen();
    if (s32Ret < 0)
    {
        PNG_ERROR("TdeOsiOpen fail!\n");
        return HI_PNG_ERR_INTERNAL;
    }
    s32Ret = ps_TdeExportFuncs->pfnTdeBeginJob(&s32TdeHandle);
    if (s32Ret < 0)
    {
        ps_TdeExportFuncs->pfnTdeClose();
        PNG_ERROR("TdeOsiBeginJob fail!\n");
        return HI_PNG_ERR_INTERNAL;
    }

    stForeGround.u32PhyAddr = pstInstance->u32Phyaddr;
    stForeGround.u32Stride = pstInstance->u32Stride;
    stForeGround.u32Width = pstInstance->stPngInfo.u32Width;
    stForeGround.u32Height = pstInstance->stPngInfo.u32Height;
    stForeGround.pu8ClutPhyAddr = (HI_U8 *)pstInstance->u32ClutPhyaddr;
    stForeGround.bAlphaMax255 = HI_TRUE;
    switch(pstInstance->stPngInfo.u8BitDepth)
    {
        case 1:
        {
            stForeGround.enColorFmt = TDE2_COLOR_FMT_CLUT1;
            break;
        }
        case 2:
        {
            stForeGround.enColorFmt = TDE2_COLOR_FMT_CLUT2;
            break;
        }
        case 4:
        {
            stForeGround.enColorFmt = TDE2_COLOR_FMT_CLUT4;
            break;
        }
        case 8:
        default:
        {
            stForeGround.enColorFmt = TDE2_COLOR_FMT_CLUT8;
            break;
        }
    }


    if ((pstInstance->u32Transform & HI_PNG_TRANSFORM_STRIPALPHA) || !pstInstance->bClutAlpha)
    {
        u8Index |= 0x1;
    }

    if (pstInstance->u32Transform & HI_PNG_TRANSFORM_SWAPALPHA)
    {
        u8Index |= (0x1 << 1);
    }

    if (pstInstance->u32Transform & HI_PNG_TRANSFORM_BGR2RGB)
    {
        u8Index |= (0x1 << 2);
    }

    if (pstInstance->u32Transform & HI_PNG_TRANSFORM_8TO4)
    {
        u8Index |= (pstInstance->eOutFmt << 3);
    }
    else
    {
        u8Index |= (0x5 << 3);
    }

    //HIPNG_TRACE("index:%d\n", u8Index);

    memcpy(&stDst, &stForeGround, sizeof(TDE2_SURFACE_S));

    stDst.enColorFmt = g_ClutToRgbTable[u8Index];

    stRect.u32Width = pstInstance->stPngInfo.u32Width;
    stRect.u32Height = pstInstance->stPngInfo.u32Height;

    stOpt.bClutReload = HI_TRUE;
    stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_FOREGROUND;
    s32Ret = ps_TdeExportFuncs->pfnTdeBlit(s32TdeHandle, HI_NULL, HI_NULL, &stForeGround, &stRect, &stDst, &stRect, &stOpt);
    if (s32Ret < 0)
    {
		ps_TdeExportFuncs->pfnTdeCancelJob(s32TdeHandle);
        ps_TdeExportFuncs->pfnTdeClose();
        PNG_ERROR("TdeOsiBlit fail!\n");
        return HI_PNG_ERR_INTERNAL;
    }
    
    s32Ret = ps_TdeExportFuncs->pfnTdeEndJob(s32TdeHandle, HI_TRUE, 100, HI_FALSE, HI_NULL, HI_NULL);
    if (s32Ret < 0)
    {
		ps_TdeExportFuncs->pfnTdeCancelJob(s32TdeHandle);
        ps_TdeExportFuncs->pfnTdeClose();
        PNG_ERROR("TdeOsiEndJob fail!\n");
        return HI_PNG_ERR_INTERNAL;
    }

    return HI_SUCCESS;
}

/********************************************************************************************
* func:	deal interrput 
* in:	none
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngOsiIntHandle(HI_U32 u32Int)
{
    HI_S32 s32Ret = HI_SUCCESS;
    
    PNG_INSTANCE_S *pstInstance = NULL;

    /* del time incase of no hardware interrupt */
    PngOsiDelTimer();
    
    s32Ret = PngOsiResGetInstance(g_ActiveHandle, &pstInstance);
    if (s32Ret < 0)
    {
        return;
    }

    if (HI_PNG_STATE_DECING != pstInstance->eState)
    {
        PNG_WARNING("Can't find working decoder in int!\n");
        return;
    }
    
    /* interrupt for decoder finish the task */
    if (u32Int & PNG_INT_FINISH_MASK)
    { 
        pstInstance->eState = HI_PNG_STATE_FINISH;
        #ifndef  CONFIG_PNG_PROC_DISABLE
        if (PNG_IsProcOn())
        {
            s_stPngProcInfo.eState = HI_PNG_STATE_FINISH;
        }
        #endif
        
        PngHalReset();
        
        if (pstInstance->bSync || pstInstance->bInBlockQuery)

        {
            PNG_WAKE_UP_INTERRUPTIBLE(&g_PngWaitQueue);
        }
        
        if (!pstInstance->bSync)
        {
            PNG_UP(&g_DevMutex);
        }
        PNG_INFO("^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^:Finished!\n");
        //HIPNG_TRACE("^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^:Finished!\n");

        return;
    }

    /* error interrout */
    if (u32Int & PNG_INT_ERR_MASK)
    {
        pstInstance->eState = HI_PNG_STATE_ERR;
        #ifndef  CONFIG_PNG_PROC_DISABLE
        if (PNG_IsProcOn())
        {
            s_stPngProcInfo.eState = HI_PNG_STATE_ERR;
        }
        #endif
        
        /* hard reset  */
        PngHalReset();
        
        if (pstInstance->bSync || pstInstance->bInBlockQuery)
        {
            PNG_WAKE_UP_INTERRUPTIBLE(&g_PngWaitQueue);
        }
        
        if (!pstInstance->bSync)
        {
            PNG_UP(&g_DevMutex);
        }
        PNG_INFO("ooooooooooooooooooooooooooooo:Err!\n");
        HIPNG_TRACE("ooooooooooooooooooooooooooooo:Err!\n");
                    
        return;
    }

    /* int for send stream */
    if (u32Int & PNG_INT_RESUME_MASK)
    {
        pstInstance->u32HwUseBufPhyAddr = ((PNG_BUF_HEAD_S *)(pstInstance->pHwUseBufVir))->u32NextPhyaddr;
        pstInstance->pHwUseBufVir = ((PNG_BUF_HEAD_S *)(pstInstance->pHwUseBufVir))->pNextViraddr;

        if (pstInstance->u32HwUseBufPhyAddr && ((PNG_BUF_HEAD_S *)pstInstance->pHwUseBufVir)->u32StreamLen)
        {
            /* set stream buf address*/
            PngHalSetStreamBuf(pstInstance->u32HwUseBufPhyAddr, 
            ((PNG_BUF_HEAD_S *)(pstInstance->pHwUseBufVir))->u32BufSize + sizeof(PNG_BUF_HEAD_S));
        
            /* set stream address*/
            PngHalSetStreamAddr(pstInstance->u32HwUseBufPhyAddr + sizeof(PNG_BUF_HEAD_S), 
            ((PNG_BUF_HEAD_S *)(pstInstance->pHwUseBufVir))->u32StreamLen);

            /* start send stream */
            PngHalResumeDecode();
        }
        else
        {  
            /*
            if without stream , there still be interrupt, then starting  timer.if time coming,  after decoding, the task is failed.
            timeout value is 50 jiffies. 
            */
            PngOsiAddTimer(50);
        }
    }

    return;
}

/********************************************************************************************
* func:	get decoding result
* in:	s32Handle	decoder handle
* in:	bBlock:         wether block
* out:	peDecResult:    decoding result
* ret:	HI_SUCCESS:     success
* ret:	HI_ERR_PNG_INVALID_HANDLE: invalid handle
* others:
*********************************************************************************************/
HI_S32 PngOsiGetResult(HI_PNG_HANDLE s32Handle, HI_BOOL bBlock, HI_PNG_STATE_E *peDecResult)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_INSTANCE_S *pstInstance = HI_NULL;

    PNG_CHECK_OPEN();
    
    s32Ret = PngOsiResGetInstance(s32Handle, &pstInstance);
    if (s32Ret < 0)
    {
        return s32Ret;
    }
    
    PNG_DOWN_INTERRUPTIBLE(&pstInstance->stInstanceLock);

    if (bBlock)
    {
        pstInstance->bInBlockQuery = HI_TRUE;
        PNG_WAIT_EVENT_INTERRUPTIBLE(g_PngWaitQueue, (HI_PNG_STATE_DECING != pstInstance->eState));
        pstInstance->bInBlockQuery = HI_FALSE;
    }

    if (HI_PNG_STATE_FINISH != pstInstance->eState)
    {
        *peDecResult = pstInstance->eState;    
        
        PNG_UP(&pstInstance->stInstanceLock);
        
        return HI_SUCCESS;
    }

    /* clut 2 RGB */
    if ((HI_PNG_IMAGEFMT_CLUT == pstInstance->stPngInfo.eColorFmt) 
        && (pstInstance->u32Transform & HI_PNG_TRANSFORM_CLUT2RGB))
    {
        s32Ret = PngOsiClutToRgb(s32Handle);
        if (s32Ret < 0)
        {
            pstInstance->eState = HI_PNG_STATE_ERR;
        }
    }
    
    *peDecResult = pstInstance->eState;
        
    PNG_UP(&pstInstance->stInstanceLock);
    
    return HI_SUCCESS;
}

EXPORT_SYMBOL(PngOsiGetResult);

/********************************************************************************************
* func:	get the first stream buffer address
* in:	s32Handle	decoder handle
* out:	pu32Phyaddr:    physical address
* ret:	HI_SUCCESS:     success
* ret:	HI_ERR_PNG_INVALID_HANDLE: invalid handle
* others:
*********************************************************************************************/
HI_S32 PngOsiGetBufParam(HI_PNG_HANDLE s32Handle, HI_U32 *pu32Phyaddr, HI_U32 *pu32Size)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_INSTANCE_S *pstInstance = HI_NULL;

    PNG_CHECK_OPEN();
    
    s32Ret = PngOsiResGetInstance(s32Handle, &pstInstance);
    if (s32Ret < 0)
    {
        return s32Ret;
    }
    
    PNG_DOWN_INTERRUPTIBLE(&pstInstance->stInstanceLock);

    *pu32Phyaddr = pstInstance->u32StartBufPhyAddr;
    if (pstInstance->pStartBufVir)
    {
        *pu32Size = ((PNG_BUF_HEAD_S *)(pstInstance->pStartBufVir))->u32BufSize + sizeof(PNG_BUF_HEAD_S);
    }
    
    PNG_UP(&pstInstance->stInstanceLock);

    return HI_SUCCESS;
}

EXPORT_SYMBOL(PngOsiGetBufParam);


static void PngTimerFunc(unsigned long data)
{
    HI_PNG_HANDLE s32Handle = *(HI_PNG_HANDLE *)data;
    HI_S32 s32Ret = HI_SUCCESS;
    PNG_INSTANCE_S *pstInstance = HI_NULL;

    PNG_INFO("ooooooooooooooooooooooooooo:Timer func!\n");
    HIPNG_TRACE("ooooooooooooooooooooooooooo:Timer func!\n");

    s32Ret = PngOsiResGetInstance(s32Handle, &pstInstance);
    if (s32Ret < 0)
    {
        return;
    }

    pstInstance->eState = HI_PNG_STATE_ERR;
    #ifndef  CONFIG_PNG_PROC_DISABLE
    if (PNG_IsProcOn())
    {
        s_stPngProcInfo.eState = HI_PNG_STATE_ERR;
    }
    #endif
    PngHalReset();
    
    if (pstInstance->bSync || pstInstance->bInBlockQuery)
    {
        PNG_WAKE_UP_INTERRUPTIBLE(&g_PngWaitQueue);
    }
    
    if (!pstInstance->bSync)
    {
        PNG_UP(&g_DevMutex);
    }

    return;
}


/* add timer */
HI_VOID PngOsiAddTimer(HI_U32 u32Expires)
{
    if (HI_TRUE == g_bAddTimer)
    {
        return;
    }
    
    g_PngTimer.expires = jiffies + u32Expires;

    add_timer(&g_PngTimer);

    g_bAddTimer = HI_TRUE;

    PNG_INFO("add timer!\n");
    //HIPNG_TRACE("add timer!\n");

    return;
}

HI_VOID PngOsiDelTimer(HI_VOID)
{
    if (HI_FALSE == g_bAddTimer)
    {
        return;
    }

    PNG_INFO("delete timer!\n");
    //HIPNG_TRACE("delete timer!\n");
    del_timer(&g_PngTimer);

    g_bAddTimer = HI_FALSE;

    return;
}

/* suspend */
int PngOsiSuspend(HI_VOID)
{
    PNG_INSTANCE_S *pstInstance = HI_NULL;
    HI_S32 s32Ret = HI_SUCCESS;
    
    /*if decoder is working then wiating, else suspend*/
    /*CNcomment:判断是否有解码器正在工作，若是，则等待当前解码完成，再进入待机 */
    s32Ret = PngOsiResGetInstance(g_ActiveHandle, &pstInstance);
    if (s32Ret < 0)
    {
        HIPNG_TRACE("==============Png suspend!\n");
        return HI_SUCCESS;
    }

    PNG_DOWN_INTERRUPTIBLE(&pstInstance->stInstanceLock);

    pstInstance->bInBlockQuery = HI_TRUE;
    
    PNG_UP(&pstInstance->stInstanceLock);
    
    PNG_WAIT_EVENT_INTERRUPTIBLE(g_PngWaitQueue, HI_PNG_STATE_DECING != pstInstance->eState);
    pstInstance->bInBlockQuery = HI_FALSE;

    HIPNG_TRACE("==============Png suspend!\n");
    
    return HI_SUCCESS;
}

/* resume */
int pngOsiResume(HI_VOID)
{
    /* resume */
    //PngHalReset();
    PngHalSetClock();

    /* set rle window address */
    PngHalSetRdcAddr(g_u32RdcBufPhyaddr);

    PngHalSetAxiAndTimeout();
    
    /* open all interrupt*/
    PngHalSetIntmask(0xffffffff);

    /* set err strategy: stopping when error is occoured */
    PngHalSetErrmode(0xffff0000);

    HIPNG_TRACE("====================Png resume!\n");

    return HI_SUCCESS;
}

HI_VOID PngOsiReset(HI_VOID)
{
    HI_U32 i = 0;

    for (i = 0; i < PNG_MAX_HANDLE; i++)
    {
        PngOsiDestroyDecoder(i+1);
    }

    return;
}


#ifdef __cplusplus
#if __cpluscplus
}
#endif	/* __cplusplus */
#endif	/* __cplusplus */
