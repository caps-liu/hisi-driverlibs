/******************************************************************************

  Copyright (C), 2012-2022, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : mjpeg.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2012/12/03
  Description   :
  History       :
  1.Date        : 2012/12/03
    Author      : l00185424
    Modification: Created file

******************************************************************************/

/******************************* Include Files *******************************/

/* Sys headers */
#include <stdio.h>
#include <stdlib.h> 
#include <string.h> 
#include <setjmp.h> 
#include <pthread.h> 

/* Other headers */
//#include "jpeglib.h"
#include "hi_type.h"
#include "hi_module.h"
#include "hi_debug.h"
#include "hi_codec.h"
#include "drv_vdec_ioctl.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

/****************************** Macro Definition *****************************/

#define HI_MJPEG_MAX_CHANNEL (HI_VDEC_MAX_INSTANCE_NEW)
#define HI_MJPEG_OUTPUT_SEMIPLANAR_444 (1)

#define HI_ERR_CODEC(fmt...) \
    HI_ERR_PRINT(HI_ID_VDEC, fmt)
#define HI_WARN_CODEC(fmt...) \
    HI_WARN_PRINT(HI_ID_VDEC, fmt)
#define HI_INFO_CODEC(fmt...) \
    HI_INFO_PRINT(HI_ID_VDEC, fmt)

/************************ Static Structure Definition ************************/

typedef struct 
{
    HI_BOOL bUsed;
    HI_U32 u32Width;
    HI_U32 u32Height;
}HI_MJPEG_PARAM_S;

/***************************** Global Definition *****************************/

/***************************** Static Definition *****************************/

HI_S32 MJPEG_GetCap(HI_CODEC_CAP_S *pstCodecCap);
HI_S32 MJPEG_Create(HI_HANDLE* phInst, const HI_CODEC_OPENPARAM_S * pstParam);
HI_S32 MJPEG_Destroy(HI_HANDLE hInst);
HI_S32 MJPEG_SetAttr(HI_HANDLE hInst, const HI_CODEC_ATTR_S* pstAttr);
HI_S32 MJPEG_GetAttr(HI_HANDLE hInst, HI_CODEC_ATTR_S* pstAttr);
HI_S32 MJPEG_DecodeFrame(HI_HANDLE hInst, HI_CODEC_STREAM_S * pstIn, HI_CODEC_FRAME_S * pstOut);
HI_S32 MJPEG_GetStreamInfo(HI_HANDLE hInst, HI_CODEC_STREAMINFO_S *pstStreamInfo);

static HI_MJPEG_PARAM_S s_stMjpegParam[HI_MJPEG_MAX_CHANNEL];
static pthread_mutex_t  s_stMjpegMutex = PTHREAD_MUTEX_INITIALIZER;        /* Mutex */
#if 0
static jmp_buf s_stJmpBuf;
#endif

static HI_CODEC_SUPPORT_S s_stCodecSupport = 
{
    .u32Type        = HI_CODEC_TYPE_DEC,
    .enID           = HI_CODEC_ID_VIDEO_MJPEG,
    .pstNext        = HI_NULL
};

static HI_CODEC_S hi_codec_entry =
{
    .pszName		= "MJPEG",
    .unVersion		= {.stVersion = {1, 0, 0, 0}},
    .pszDescription = "Hisilicon MJPEG codec",

    .GetCap			= MJPEG_GetCap,
    .Create			= MJPEG_Create,
    .Destroy		= MJPEG_Destroy,
    .Start			= HI_NULL,
    .Stop			= HI_NULL,
    .Reset			= HI_NULL,
    .SetAttr		= MJPEG_SetAttr,
    .GetAttr		= MJPEG_GetAttr,
    .DecodeFrame	= MJPEG_DecodeFrame,
    .EncodeFrame	= HI_NULL,
    .GetStreamInfo	= MJPEG_GetStreamInfo,
    .Control		= HI_NULL,
};

/*********************************** Code ************************************/

HI_CODEC_S* VDEC_MJPEG_Codec(HI_VOID)
{
    return &hi_codec_entry;
}

HI_S32 MJPEG_GetCap(HI_CODEC_CAP_S *pstCodecCap)
{
    if (HI_NULL == pstCodecCap)
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    pstCodecCap->u32CapNumber = HI_CODEC_CAP_DRIVENOUTSIDE | HI_CODEC_CAP_OUTPUT2SPECADDR;
    pstCodecCap->pstSupport = &s_stCodecSupport;
    HI_INFO_CODEC("MJPEG_GetCap success.\n");
    return HI_SUCCESS;
}

HI_S32 MJPEG_Create(HI_HANDLE* phInst, const HI_CODEC_OPENPARAM_S * pstParam)
{
    HI_S32 i;

    VDEC_LOCK(s_stMjpegMutex);
    for (i=0; i<HI_MJPEG_MAX_CHANNEL; i++)
    {
        if (!s_stMjpegParam[i].bUsed)
        {
            s_stMjpegParam[i].u32Width = 0;
            s_stMjpegParam[i].u32Height = 0;
            s_stMjpegParam[i].bUsed = HI_TRUE;
            VDEC_UNLOCK(s_stMjpegMutex);
            *phInst = (HI_HANDLE)i;
            HI_INFO_CODEC("MJPEG_Create success.\n");
            return HI_SUCCESS;
        }
    }
    VDEC_UNLOCK(s_stMjpegMutex);

    return HI_ERR_CODEC_NOENOUGHRES;
}

HI_S32 MJPEG_Destroy(HI_HANDLE hInst)
{
    if (hInst < HI_MJPEG_MAX_CHANNEL)
    {
        VDEC_LOCK(s_stMjpegMutex);
        s_stMjpegParam[hInst].bUsed = HI_FALSE;
        VDEC_UNLOCK(s_stMjpegMutex);
        HI_INFO_CODEC("MJPEG_Destroy success.\n");
    }
    return HI_SUCCESS;
}

HI_S32 MJPEG_SetAttr(HI_HANDLE hInst, const HI_CODEC_ATTR_S* pstAttr)
{
    HI_INFO_CODEC("MJPEG_SetAttr success.\n");
    return HI_SUCCESS;
}

HI_S32 MJPEG_GetAttr(HI_HANDLE hInst, HI_CODEC_ATTR_S* pstAttr)
{
    if ((hInst >= HI_MJPEG_MAX_CHANNEL) || (HI_NULL == pstAttr))
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }
    
    pstAttr->enID = HI_CODEC_ID_VIDEO_MJPEG;
    HI_INFO_CODEC("MJPEG_GetAttr success.\n");
    return HI_SUCCESS;
}

#if 1
#include <unistd.h>
#include "hi_jpg_type.h"
#include "hi_jpg_errcode.h"
#include "jpg_decctrl.h"

#define JPGDEC_ERR HI_FAILURE
#define JPGDEC_OK HI_SUCCESS

#define JPG_SURFACE_ALIGN     128

#define JPGHDEC_MCU_ALIGN8  8
#define JPGHDEC_MCU_ALIGN16 16

extern HI_S32  HI_JPG_Open(HI_VOID);

/* data structure for MemSize calculation */
typedef struct hiDECMem_INFO_S
{
    JPG_SOURCEFMT_E  SrcFmt;    /* coding format */
    HI_U32           Height;    /* original image height */
    HI_U32           Width;     /* original image width */
    HI_U32           YMemSize;  /* mem size for Y(luma) component */
    HI_U32           CMemSize;  /* mem size for Chrom components */
    HI_U32           YStride;   /* luma Stride*/
    HI_U32           CStride;   /* chrom Stride*/
    JPG_MBCOLORFMT_E MbFmt;
} JPGDECMEM_INFO_S;


HI_S32  CheckJpgFileAvail(HI_U8 *pu8Stream, HI_U32 u32StreamSize)
{
    if (u32StreamSize < 2)
    {
        return JPGDEC_ERR;
    }

    if(HI_SUCCESS != JPG_Probe(0, pu8Stream, 2))
    {
        return JPGDEC_ERR;
    }
    
    return JPGDEC_OK;
}

HI_VOID SendStream(JPG_HANDLE Handle, HI_U8 *pu8Stream, HI_S32 s32StreamSize, HI_S32 *ps32DatOfst)
{
    JPGDEC_WRITESTREAM_S StreamInfo;
    HI_U32 CopyLen = 0;
    HI_U32 FreeSize = 0;
    HI_BOOL EndFlag = HI_FALSE;
    HI_VOID *pAddr = HI_NULL_PTR;
    HI_S32 Ret;

    while (1)
    {
        Ret = JPG_IsNeedStream(Handle, &pAddr, &FreeSize);
		if(Ret != HI_SUCCESS)
		{
			break;
		}

        /** FreeSize=0 means the stream data is sufficient, do not need any more, so sleep some time */
        if (0 == FreeSize)
        {
            (HI_VOID)usleep(1000);
            continue;
        }

        /*  try to push 'FreeSize' bytes into the mem pointed by 'pAddr', then calclulate the var 'CopyLen'
          and 'EndFlag' by the relationship between the left data size and 'FreeSize' */
        if ((HI_S32)(s32StreamSize - *ps32DatOfst) > (HI_S32)FreeSize)
        {
            CopyLen = FreeSize;
            EndFlag = HI_FALSE;
        }
        else
        {
            CopyLen = (HI_U32)(s32StreamSize - *ps32DatOfst);
            EndFlag = HI_TRUE;
            
        }
        memcpy(pAddr, pu8Stream + *ps32DatOfst, CopyLen);
#if 1
        *ps32DatOfst += CopyLen;
#endif

        /** push stream data into the decoder */
        StreamInfo.pStreamAddr = pAddr;
        StreamInfo.StreamLen = CopyLen;
        StreamInfo.CopyLen = 0;
        StreamInfo.NeedCopyFlag = HI_FALSE;
        StreamInfo.EndFlag = EndFlag;

        Ret = JPG_SendStream(Handle, &StreamInfo);
#if 1
        if (StreamInfo.CopyLen < StreamInfo.StreamLen)
        {
            *ps32DatOfst = *ps32DatOfst - (HI_S32)StreamInfo.StreamLen + (HI_S32)StreamInfo.CopyLen;
        }
#else
        *ps32DatOfst += StreamInfo.CopyLen;
#endif

        /** stop seeding stream if meet the end of file  */
        if ((HI_TRUE == EndFlag) && (StreamInfo.CopyLen >= StreamInfo.StreamLen))
        {
            return;
        }

        if (0 == StreamInfo.CopyLen)
        {
            (HI_VOID)usleep(1000);
            continue;
        }
    }

    return;
}

static void GetDecMemInfo(JPGDECMEM_INFO_S *pMemSizeInfo)
{
    HI_U32 YHeightTmp = 0;
    HI_U32 CHeightTmp = 0;/*l00165842*/

    /*YStride need to be aligned to 64 bytes */
    pMemSizeInfo->YStride = (pMemSizeInfo->Width + JPG_SURFACE_ALIGN - 1)
                             & (~(JPG_SURFACE_ALIGN - 1));

    switch (pMemSizeInfo->SrcFmt)
    {
        case JPG_SOURCE_COLOR_FMT_YCBCR400:
        {
            /* height need to be aligned by multiple of MCU's height */
            YHeightTmp = (pMemSizeInfo->Height + JPGHDEC_MCU_ALIGN8 - 1)
                       & (~(JPGHDEC_MCU_ALIGN8 - 1));

            /* parameters for Chrom components should be set to 0 */
            pMemSizeInfo->CStride  = 0;
            pMemSizeInfo->CMemSize = 0;
            pMemSizeInfo->MbFmt    = JPG_MBCOLOR_FMT_JPG_YCbCr400MBP;
            break;
        }
        case JPG_SOURCE_COLOR_FMT_YCBCR420:
        {
            /* height need to be aligned by multiple of MCU's height */
            YHeightTmp = (pMemSizeInfo->Height + JPGHDEC_MCU_ALIGN16 - 1)
                       & (~(JPGHDEC_MCU_ALIGN16 - 1));
            /* height for chrom is half of the luma's height, 'Stride' is the same as luma */
            CHeightTmp = YHeightTmp >> 1;
            pMemSizeInfo->CStride = pMemSizeInfo->YStride;
            pMemSizeInfo->MbFmt = JPG_MBCOLOR_FMT_JPG_YCbCr420MBP;
            break;
        }
        case JPG_SOURCE_COLOR_FMT_YCBCR422BHP:
        {
            /* height need to be aligned by multiple of MCU's height */
            YHeightTmp = (pMemSizeInfo->Height + JPGHDEC_MCU_ALIGN8 - 1)
                         & (~(JPGHDEC_MCU_ALIGN8 - 1));

            /* chrom and luma have the same height and stride */
            CHeightTmp = YHeightTmp;
            pMemSizeInfo->CStride = pMemSizeInfo->YStride;
            pMemSizeInfo->MbFmt = JPG_MBCOLOR_FMT_JPG_YCbCr422MBHP;
            break;
        }
        case JPG_SOURCE_COLOR_FMT_YCBCR422BVP:
        {
            /* height need to be aligned by multiple of MCU's height */
            YHeightTmp = (pMemSizeInfo->Height + JPGHDEC_MCU_ALIGN16 - 1)
                         & (~(JPGHDEC_MCU_ALIGN16 - 1));

            /* height for chrom is half of the luma's, but stride is double */
            CHeightTmp = YHeightTmp >> 1;
            pMemSizeInfo->CStride = pMemSizeInfo->YStride << 1;

            pMemSizeInfo->MbFmt = JPG_MBCOLOR_FMT_JPG_YCbCr422MBVP;
            break;
        }
        default:   /*JPGHAL_ENCFMT_444:*/
        {
            /* height need to be aligned by multiple of MCU's height */
            YHeightTmp = (pMemSizeInfo->Height + JPGHDEC_MCU_ALIGN8 - 1)
                         & (~(JPGHDEC_MCU_ALIGN8 - 1));

            
            /* height for chrom is the same as the luma's, but stride is double */
            CHeightTmp = YHeightTmp;
            pMemSizeInfo->CStride = pMemSizeInfo->YStride << 1;
            pMemSizeInfo->MbFmt = JPG_MBCOLOR_FMT_JPG_YCbCr444MBP;
            break;
        }
    }

    /* calculate MemSize */
    pMemSizeInfo->YMemSize = YHeightTmp * pMemSizeInfo->YStride;
    pMemSizeInfo->CMemSize = CHeightTmp * pMemSizeInfo->CStride;
    return;
}

HI_S32  MJPEG_DecodeFrame(HI_HANDLE hInst, HI_CODEC_STREAM_S * pstIn, HI_CODEC_FRAME_S * pstOut)
{
    HI_S32   s32Ret;
    JPG_HANDLE  Handle = (JPG_HANDLE)-1;
    JPG_PICINFO_S  PicInfo;
    JPG_SURFACE_S  Surface;
    JPGDECMEM_INFO_S  MemInfo;
    JPG_STATE_E  State = JPG_STATE_STOP;
    HI_U32  StateIndex;
    HI_S32  s32DatOfst = 0;
    HI_S32  cnt;

    if ((hInst >= HI_MJPEG_MAX_CHANNEL) || (HI_NULL == pstIn) || (HI_NULL == pstOut))
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    /* 1. check the validity of the jpeg file */
    s32Ret = CheckJpgFileAvail(pstIn->pu8Addr, pstIn->u32Size);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("this is not a jpeg file!\n");
        goto exit_JpgDecode;
    }

    VDEC_LOCK(s_stMjpegMutex);

    /* 2. create jpeg decoder  */
    s32Ret = HI_JPG_Open();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("open jpeg dev fail\n");
        goto exit_JpgDecode;        
    }
    
    s32Ret = JPG_CreateDecoder(&Handle, JPG_IMGTYPE_NORMAL, pstIn->u32Size);
    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_VDEC("create jpeg decoder error, %#x\n", s32Ret);
        goto exit_JpgDecode;
    }

    /* 3. obtain the information of the jpeg file */
    memset(&PicInfo, 0, sizeof(JPG_PICINFO_S));
    s32Ret = JPG_GetPicInfo(Handle, &PicInfo, 0);
    //HI_ERR_VDEC("pstIn->pu8Addr = %p, pstIn->u32Size = %d, s32DatOfst = %d\n", pstIn->pu8Addr, pstIn->u32Size, s32DatOfst);
    SendStream(Handle, pstIn->pu8Addr, (HI_S32)pstIn->u32Size, &s32DatOfst);
    s32Ret = JPG_GetPicInfo(Handle, &PicInfo, 0);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("JPG_GetPicInfo s32Ret = %#x\n", s32Ret);
        goto exit_JpgDecode;
    }

    /* 4. create surface according to the jpeg file */
    memset(&MemInfo, 0, sizeof(MemInfo));
    MemInfo.SrcFmt = PicInfo.EncodeFormat;
    MemInfo.Width  = PicInfo.Width;
    MemInfo.Height = PicInfo.Height;
    GetDecMemInfo(&MemInfo);
    Surface.OutType = JPG_OUTTYPE_MACROBLOCK;
    Surface.SurfaceInfo.MbSurface.YPhyAddr     = pstOut->stOutputAddr.u32Phy;
    Surface.SurfaceInfo.MbSurface.YVirtAddr    = (HI_VOID*)pstOut->stOutputAddr.u32Vir;

    Surface.SurfaceInfo.MbSurface.YStride      = MemInfo.YStride;
    Surface.SurfaceInfo.MbSurface.CbCrStride   = MemInfo.CStride;
    Surface.SurfaceInfo.MbSurface.CbCrPhyAddr  = pstOut->stOutputAddr.u32Phy + MemInfo.YMemSize;
    Surface.SurfaceInfo.MbSurface.CbCrVirtAddr = (HI_VOID*)(pstOut->stOutputAddr.u32Vir + MemInfo.YMemSize);
    Surface.SurfaceInfo.MbSurface.YHeight      = MemInfo.Height;
    Surface.SurfaceInfo.MbSurface.YWidth       = MemInfo.Width;
    Surface.SurfaceInfo.MbSurface.MbFmt        = MemInfo.MbFmt;

#if 0    
    HI_ERR_VDEC("%-20s: %#x\n", "YPhyAddr", Surface.SurfaceInfo.MbSurface.YPhyAddr);
    HI_ERR_VDEC("%-20s: %#x\n", "CbCrPhyAddr", Surface.SurfaceInfo.MbSurface.CbCrPhyAddr);
    HI_ERR_VDEC("%-20s: %#x\n", "YVirtAddr", Surface.SurfaceInfo.MbSurface.YVirtAddr);
    HI_ERR_VDEC("%-20s: %#x\n", "CbCrVirtAddr", Surface.SurfaceInfo.MbSurface.CbCrVirtAddr);
    HI_ERR_VDEC("%-20s: %d\n", "YStride", Surface.SurfaceInfo.MbSurface.YStride);
    HI_ERR_VDEC("%-20s: %d\n", "CbCrStride", Surface.SurfaceInfo.MbSurface.CbCrStride);
    HI_ERR_VDEC("%-20s: %d\n", "YHeight", Surface.SurfaceInfo.MbSurface.YHeight);
    HI_ERR_VDEC("%-20s: %d\n", "YWidth", Surface.SurfaceInfo.MbSurface.YWidth);
#endif

    /* 5. decode the jpeg file */
    s32Ret = JPG_Decode(Handle, &Surface, 0);
    SendStream(Handle, pstIn->pu8Addr, pstIn->u32Size, &s32DatOfst);
    s32Ret = JPG_GetStatus(Handle, &State, &StateIndex);
    for (cnt = 0; cnt < 500; cnt++)
    {
        HI_U8 *pBufAddr;
        HI_U32 BufSize;
        
        s32Ret = JPG_IsNeedStream(Handle, (HI_VOID**)&pBufAddr, &BufSize);
        s32Ret = JPG_GetStatus(Handle, &State, &StateIndex);
        if(State == JPG_STATE_DECODEERR || State == JPG_STATE_DECODED)  
        {
            if (State == JPG_STATE_DECODEERR)
            {
                HI_WARN_VDEC("decode error!!!\n");
            }
            break;
        }
        usleep(1000);
    }

    if (State == JPG_STATE_DECODED)
    {
        //pstFrameDesc->enFmt           = Surface.SurfaceInfo.MbSurface.MbFmt;
        switch  (Surface.SurfaceInfo.MbSurface.MbFmt)
        {
            case JPG_MBCOLOR_FMT_JPG_YCbCr400MBP:
                pstOut->unInfo.stVideo.enColorFormat = HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_400;
                break;
            case JPG_MBCOLOR_FMT_JPG_YCbCr422MBHP :
                pstOut->unInfo.stVideo.enColorFormat = HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_422_2X1;
                break;
            case JPG_MBCOLOR_FMT_JPG_YCbCr422MBVP :
                pstOut->unInfo.stVideo.enColorFormat = HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_422_1X2;
                break;
            case JPG_MBCOLOR_FMT_MP1_YCbCr420MBP :
            case JPG_MBCOLOR_FMT_MP2_YCbCr420MBP :
            case JPG_MBCOLOR_FMT_MP2_YCbCr420MBI :
            case JPG_MBCOLOR_FMT_JPG_YCbCr420MBP :
                pstOut->unInfo.stVideo.enColorFormat = HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_420;
                break;
            case JPG_MBCOLOR_FMT_JPG_YCbCr444MBP :
                pstOut->unInfo.stVideo.enColorFormat = HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_444;
                break;
            default:
                pstOut->unInfo.stVideo.enColorFormat = HI_CODEC_COLOR_FORMAT_YUV_BUTT;
        }
        pstOut->unInfo.stVideo.u32Width = Surface.SurfaceInfo.MbSurface.YWidth;
        pstOut->unInfo.stVideo.u32Height = Surface.SurfaceInfo.MbSurface.YHeight;

        pstOut->unInfo.stVideo.u32YAddr = Surface.SurfaceInfo.MbSurface.YPhyAddr;
        pstOut->unInfo.stVideo.u32YStride = Surface.SurfaceInfo.MbSurface.YStride;

        pstOut->unInfo.stVideo.u32UAddr = Surface.SurfaceInfo.MbSurface.CbCrPhyAddr;
        pstOut->unInfo.stVideo.u32UStride = Surface.SurfaceInfo.MbSurface.CbCrStride;

        pstOut->unInfo.stVideo.u32VAddr = 0;
        pstOut->unInfo.stVideo.u32VStride = 0;


        pstOut->s64SrcPtsMs = pstOut->s64PtsMs = pstIn->s64PtsMs;
        pstOut->unInfo.stVideo.enFrameType = HI_CODEC_VIDEO_FRAME_TYPE_I;
        pstOut->unInfo.stVideo.bProgressive = HI_TRUE;
        pstOut->unInfo.stVideo.enFieldMode = HI_CODEC_VIDEO_FIELD_ALL;
        pstOut->unInfo.stVideo.bTopFieldFirst = HI_FALSE;
        pstOut->unInfo.stVideo.enFramePackingType = HI_CODEC_VIDEO_FRAME_PACKING_NONE;
        pstOut->unInfo.stVideo.u32FrameRate = 0;
        pstOut->unInfo.stVideo.u32AspectWidth = 0;
        pstOut->unInfo.stVideo.u32AspectHeight = 2;
        pstOut->unInfo.stVideo.pu8UserData = HI_NULL;
        pstOut->unInfo.stVideo.u32UserDataSize = 0;

        s_stMjpegParam[hInst].u32Width = pstOut->unInfo.stVideo.u32Width;
        s_stMjpegParam[hInst].u32Height = pstOut->unInfo.stVideo.u32Height;
    }
    else
    {
        HI_WARN_VDEC("jpeg decode error\n");
    }

    /* 6. destroy the jpeg decoder, and exit */
exit_JpgDecode:    

    if (Handle != (JPG_HANDLE)-1)
    {
        s32Ret = JPG_DestroyDecoder(Handle);
        if (s32Ret != 0)
        {
            VDEC_UNLOCK(s_stMjpegMutex);
            HI_WARN_VDEC("destroy jpeg decoder error\n");
            return HI_ERR_CODEC_OPERATEFAIL;
        }
    }

    VDEC_UNLOCK(s_stMjpegMutex);

    if (State == JPG_STATE_DECODED)
    {
        return HI_SUCCESS;
    }
    else if (HI_ERR_JPG_DEC_BUSY == s32Ret)
    {
        return HI_ERR_CODEC_BUSY;
    }
    else
    {
        return HI_ERR_CODEC_OPERATEFAIL;
    }
}

#else

HI_VOID JPEG_Error (j_common_ptr stInfo)
{
    (*stInfo->err->output_message)(stInfo);
    longjmp(s_stJmpBuf, 1);
}

HI_S32 MJPEG_DecodeFrame(HI_HANDLE hInst, HI_CODEC_STREAM_S * pstIn, HI_CODEC_FRAME_S * pstOut)
{
    struct jpeg_decompress_struct stInfo;
    struct jpeg_error_mgr stErrMngr;
    JSAMPARRAY stBuffer;                /* Output line buffer */
    HI_U32 u32RowStride;                /* Row stride */
    HI_S32 s32Ret;
    HI_BOOL bRet;
    HI_UCHAR* pYAddr = HI_NULL;
    HI_UCHAR* pUAddr = HI_NULL;
    HI_U32 u32YStride = 0;
    HI_U32 u32UStride = 0;    
    HI_U32 i = 0;
#if (0 == HI_MJPEG_OUTPUT_SEMIPLANAR_444)
    HI_UCHAR* pVAddr = HI_NULL;
    HI_U32 u32VStride = 0;
#endif

    if ((hInst >= HI_MJPEG_MAX_CHANNEL) || (HI_NULL == pstIn) || (HI_NULL == pstOut))
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stInfo.err = jpeg_std_error(&stErrMngr);     /* return jpeg_error_mgr sturcture pointer */
    stErrMngr.error_exit = JPEG_Error;          /* Register err manager function */

    /* If err, jump to here */
    if (setjmp(s_stJmpBuf))
    {
        HI_ERR_CODEC("decode fail!\n");
        jpeg_destroy_decompress(&stInfo);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    jpeg_create_decompress(&stInfo);             /* Create decoder */

    (HI_VOID)jpeg_stdio_buffer_src(&stInfo, (HI_CHAR*)(pstIn->pu8Addr), pstIn->u32Size);
    (HI_VOID)jpeg_read_header(&stInfo, TRUE);             /* Parse JPEG file */        

    /* Set output parameter.
     * Must between jpeg_read_header() and jpeg_start_decompress()
     * Set scale and output format, default 1,1 and RGB
     */
    stInfo.scale_num = 1 ;     
    stInfo.scale_denom = 1;                        /* Don't scale */
    stInfo.out_color_space = JCS_YCbCr;            /* Output color format */

    /* If you want to get image info(width,height), open this function */
#if 0
    jpeg_calc_output_dimensions(&stInfo);
#endif

    bRet = (HI_BOOL)jpeg_start_decompress(&stInfo);       /* Start decoder */
    if(HI_FALSE == bRet)
    {
        HI_ERR_CODEC("jpeg_start_decompress fail!\n");
        jpeg_destroy_decompress(&stInfo);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    u32RowStride = (((stInfo.output_width*3)+15)&(~15));

    u32YStride = (stInfo.output_width + 15) & (~15);
    pYAddr = (HI_UCHAR*)pstOut->stOutputAddr.u32Vir;
#if (1 == HI_MJPEG_OUTPUT_SEMIPLANAR_444)
    /* SemiPlanar */
    u32UStride = u32YStride*2;
    pUAddr = pYAddr + u32YStride*stInfo.output_height;
#else
    /* Planar */
    u32VStride = u32UStride = u32YStride;
    pUAddr = pYAddr + u32YStride*stInfo.output_height;
    pVAddr = pUAddr + u32UStride*stInfo.output_height;
#endif

    /* Output every line to stBuffer */
    stBuffer = (*stInfo.mem->alloc_sarray)((j_common_ptr) &stInfo, JPOOL_IMAGE, u32RowStride, 1);

    while (stInfo.output_scanline < stInfo.output_height) 
    {
        s32Ret = jpeg_read_scanlines(&stInfo, stBuffer, 1);
        if(s32Ret <= 0)
        {
            HI_ERR_CODEC("jpeg_read_scanlines fail\n");
            jpeg_destroy_decompress(&stInfo);
            return HI_ERR_CODEC_OPERATEFAIL;
        }
        
        /* Move YUV data */
        for (i=0; i<stInfo.output_width; i++)
        {
            HI_U8* p = stBuffer[0] + i*3;
            pYAddr[i] = p[0];              /* Y */
#if (1 == HI_MJPEG_OUTPUT_SEMIPLANAR_444)
            /* SemiPlanar */
            pUAddr[i*2] = p[2];         /* V */
            pUAddr[i*2+1] = p[1];       /* U */
#else
            /* Planar */
            pUAddr[i] = p[1];           /* U */
            pVAddr[i] = p[2];           /* V */
#endif
        }

        pYAddr += u32YStride;
#if (1 == HI_MJPEG_OUTPUT_SEMIPLANAR_444)
        pUAddr += u32UStride;
#else
        pUAddr += u32UStride;
        pVAddr += u32VStride;
#endif
    }

    bRet = (HI_BOOL)jpeg_finish_decompress(&stInfo);        /* Decode over */
    if(HI_FALSE == bRet)
    {
        HI_ERR_CODEC("jpeg_finish_decompress fail!\n");
        jpeg_destroy_decompress(&stInfo);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    jpeg_destroy_decompress(&stInfo);               /* Destroy decoder */

    pstOut->s64SrcPtsMs = pstOut->s64PtsMs = pstIn->s64PtsMs;
    pstOut->unInfo.stVideo.enFrameType = HI_CODEC_VIDEO_FRAME_TYPE_I;
    pstOut->unInfo.stVideo.bProgressive = HI_TRUE;
    pstOut->unInfo.stVideo.enFieldMode = HI_CODEC_VIDEO_FIELD_ALL;
    pstOut->unInfo.stVideo.bTopFieldFirst = HI_FALSE;
    pstOut->unInfo.stVideo.enFramePackingType = HI_CODEC_VIDEO_FRAME_PACKING_NONE;
    pstOut->unInfo.stVideo.u32FrameRate = 0;
    pstOut->unInfo.stVideo.u32Width = stInfo.output_width;
    pstOut->unInfo.stVideo.u32Height = stInfo.output_height;
    pstOut->unInfo.stVideo.u32AspectWidth = stInfo.output_width;
    pstOut->unInfo.stVideo.u32AspectHeight = stInfo.output_height;
    pstOut->unInfo.stVideo.u32YAddr = pstOut->stOutputAddr.u32Phy;
    pstOut->unInfo.stVideo.u32UAddr = pstOut->stOutputAddr.u32Phy + u32YStride*stInfo.output_height;
    pstOut->unInfo.stVideo.u32YStride = u32YStride;
    pstOut->unInfo.stVideo.u32UStride = u32UStride;
#if (1 == HI_MJPEG_OUTPUT_SEMIPLANAR_444)
    pstOut->unInfo.stVideo.enColorFormat = HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_444;
    pstOut->unInfo.stVideo.u32VAddr = 0;
    pstOut->unInfo.stVideo.u32VStride = 0;
#else
    pstOut->unInfo.stVideo.enColorFormat = HI_CODEC_COLOR_FORMAT_YUV_PLANAR_444;
    pstOut->unInfo.stVideo.u32VAddr = pstOut->stOutputAddr.u32Phy + 2*u32YStride*stInfo.output_height;
    pstOut->unInfo.stVideo.u32VStride = u32UStride;
#endif
    pstOut->unInfo.stVideo.pu8UserData = HI_NULL;
    pstOut->unInfo.stVideo.u32UserDataSize = 0;

    s_stMjpegParam[hInst].u32Width = stInfo.output_width;
    s_stMjpegParam[hInst].u32Height = stInfo.output_height;

    /* Save YUV */
#if 0
    {
        static int num = 0;
        int size;
        FILE* fp = HI_NULL;

        if (num == 0)
        {
            fp = fopen("/mnt/mjpeg.yuv", "wb+");
            if (HI_NULL == fp)
            {
                HI_INFO_CODEC("Open /mnt/mjpeg.yuv fail.\n");
                return HI_SUCCESS;
            }
            
            size = fwrite((HI_VOID*)pstOut->stOutputAddr.u32Vir, 1, u32YStride*3*stInfo.output_height, fp);
            HI_INFO_CODEC("Write %dB to /mnt/mjpeg.yuv.\n", size);
            
            fclose(fp);
        }
        num++;
    }
#endif

    return HI_SUCCESS;
}
#endif

HI_S32 MJPEG_GetStreamInfo(HI_HANDLE hInst, HI_CODEC_STREAMINFO_S *pstStreamInfo)
{
    if ((hInst >= HI_MJPEG_MAX_CHANNEL) || (HI_NULL == pstStreamInfo))
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }
    
    pstStreamInfo->stVideo.enCodecID = HI_CODEC_ID_VIDEO_MJPEG;
    pstStreamInfo->stVideo.enSubStandard = HI_CODEC_VIDEO_SUB_STANDARD_UNKNOWN;
    pstStreamInfo->stVideo.u32SubVersion = 0;
    pstStreamInfo->stVideo.u32Profile = 0;
    pstStreamInfo->stVideo.u32Level = 0;
    pstStreamInfo->stVideo.enDisplayNorm = HI_CODEC_ENC_FMT_BUTT;
    pstStreamInfo->stVideo.bProgressive = HI_TRUE;
    pstStreamInfo->stVideo.u32AspectWidth = 0;
    pstStreamInfo->stVideo.u32AspectHeight = 2;
    pstStreamInfo->stVideo.u32bps = 0;
    pstStreamInfo->stVideo.u32FrameRateInt = 0;
    pstStreamInfo->stVideo.u32FrameRateDec = 0;    
    pstStreamInfo->stVideo.u32Width = s_stMjpegParam[hInst].u32Width;
    pstStreamInfo->stVideo.u32Height = s_stMjpegParam[hInst].u32Height;
    pstStreamInfo->stVideo.u32DisplayWidth = s_stMjpegParam[hInst].u32Width;
    pstStreamInfo->stVideo.u32DisplayHeight = s_stMjpegParam[hInst].u32Height;
    pstStreamInfo->stVideo.u32DisplayCenterX = s_stMjpegParam[hInst].u32Width / 2;
    pstStreamInfo->stVideo.u32DisplayCenterY = s_stMjpegParam[hInst].u32Height / 2;

    HI_INFO_CODEC("MJPEG_GetStreamInfo success.\n");
    return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */
