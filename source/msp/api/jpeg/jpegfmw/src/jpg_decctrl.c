/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpg_decctrl.c

Version		    : Initial Draft
Author		    : 
Created		    : 2012/11/2
Description	    : 
Function List 	: 
			  		  
History       	:
Date				Author        		Modification
2012/11/2		   y00181162    	    Created file      	
******************************************************************************/
#include "jpg_type.h"
#include "jpg_driver.h"

#include "jpg_fmwcomm.h"
#include "jpg_decctrl.h"
#include "jpg_fmwhandle.h"
#include "jpg_buf.h"
#include "jpg_parse.h"

#include "jpg_hsdec.h"
#include "jpg_hdec.h"

#include "hi_jpeg_config.h"

#include "hi_common.h"


/***************************** Macro Definition ******************************/

#define JPG_DEC_AUTO 0
#define JPG_DEC_HARD 1
#define JPG_DEC_SOFT 2

#ifndef JPG_DEC_MODE
 #define JPG_DEC_MODE JPG_DEC_AUTO
#endif



/*************************** Structure Definition ****************************/



typedef enum hiJPG_DECTYPE_E
{
    JPG_DECTYPE_HW = 0,    /*hardware decode*/
    JPG_DECTYPE_SW = 1,    /*software decode*/
    JPG_DECTYPE_BUTT
} JPG_DECTYPE_E;

typedef struct hiJPG_DECCTX_S
{
    JPG_CYCLEBUF_S ParseBuf;           /*parser buf*/
    JPG_HANDLE     ParseHandle;         /*parser context handle*/

    JPG_STATE_E     State;              /*internal state*/
    HI_S32          CurrIndex;          /*index of the picture that has already been parsed*/
    HI_U32          ThumbCnt;           /*already parsed thumb counter*/
    HI_U32          ReqIndex;           /*index of the picture to be parsed*/
    HI_BOOL         bParsedFF;          /*flag, =1 means the parser has found the byte 'FF' at the end of the buf*/
    HI_BOOL         bNeedSend;          /*=1 meas the decoder need more stream*/
    HI_BOOL         bNeedCopy;          /*=1 need copy data, sometime copy is not necessary*/
    HI_U32          ThumbEcsLen;        /*ECS data length*/
    HI_BOOL         bReqExif;           /*=1 means the Exif need to be ectracted out*/
    HI_VOID*        pExifAddr;          /*valid Exit data*/

    JPG_HANDLE HDHandle;       /*hardware decoder context handle*/
    JPG_HANDLE SDHandle;       /*software decoder context handle*/

    JPG_DECODER_FUNC    struHwDec;
    JPG_DECODER_FUNC    struSwDec;
    JPG_DECODER_FUNC*   pstruCurrentDec;
    JPG_HANDLE          HDecHandle;     /*currently used decoder handle*/

    JPG_DECTYPE_E DecType;
    HI_U32        FileLen;

    HI_BOOL bHDecErr;    /*indicate if hardware decode error was found*/
    HI_BOOL ResetFlag;

    HI_U32 TotalOffset;   /*total stream size in the parse phase*/
                          /*also is the offset of the main picture in the stream space*/
    JPG_HANDLE Handle;         /* just for validation */
						  
} JPG_DECCTX_S;


#define JPG_PARSEBUF_LEN (32 << 10)
#define JPG_STREAM_PART (32 << 10)

#define JPGTAG_FF 0xFF
#define JPGTAG_SOI 0xD8
#define JPGTAG_EOI 0xD9
#define JPG_PARSED_ALL 0x0000001F
#define JPG_MAX_THUMBNUM 16

#define JPG_GETCURPICINFO(tHandle, tNeedIdx, tpNeedPicInfo) \
    do {\
        JPG_PICPARSEINFO_S* tpList = HI_NULL; \
        HI_U32 tIdx; \
        HI_S32 GetRet; \
        GetRet = JPGPARSE_GetImgInfo((tHandle), &tpList); \
        JPG_CHECK_RET(GetRet, return HI_FAILURE); \
        if (tNeedIdx > 0)\
        {\
            jpg_assert((tNeedIdx <= JPG_MAX_THUMBNUM), return HI_FAILURE); \
            for (tIdx = 0; tIdx < tNeedIdx; tIdx++)\
            {\
                tpList = tpList->pNext; \
            } \
        } \
        tpNeedPicInfo = tpList; \
    } while (0)





/*the max size supported by the soft decoder*/
#define JPGFILE_MAX (8 << 20)
#define JPGFILE_MIN (8 << 10)


/* to astimate the memory requirements*/
#define DEBUG_MEMSIZE (10 << 10)
#define JPGDEC_MEMSIZE (48 << 10)
#define JPGPARSE_MEMSIZE (128 << 10)
#define JPGHDEC_MEMSIZE (1 << 10)
#define JPGSDEC_MEMSIZE (1 << 10)
#define JPGEXIF_MEMSIZE (64 << 10)
#define JPG6B_MEMSIZE (256 << 10)

JPGDEC_CTRL_S s_DecCtrlMem = {{0}};
static JPG_HANDLE s_DecHandle = 0;

#define JPG_CHECK_DEBUGMEM() do { } while (0)





/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/



#define JPG_MMB_BLK 16


HI_U32 g_MmbBlkArray[JPG_MMB_BLK] = {0};


HI_U32 JPG_MMB_Alloc(HI_U32 Size, HI_U32 align, HI_U8* mmb_name, HI_U32 cached, HI_VOID** ppVirtAddr)
{


	    HI_U32 PhysAddr;
	    HI_VOID*    pVirtAddr;
	    HI_U32 i = 0;
	    HI_S32 s32Ret = 0;

	    *ppVirtAddr = NULL;

	    /*find a free slot*/
	    while (i < JPG_MMB_BLK)
	    {
	        if (0 == g_MmbBlkArray[i])
	        {
	            break;
	        }

	        i++;
	    }

	    /*no free slot find? */
	    if (i >= JPG_MMB_BLK)
	    {
	        JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "JPG_MMB_Alloc position full!\n");
	        return 0;
	    }

        PhysAddr = (HI_U32)HI_MMZ_New(Size, align, (HI_CHAR*)MMB_TAG, (HI_CHAR*)mmb_name);
	    if (0 == PhysAddr)
	    {
	        PhysAddr = (HI_U32)HI_MMZ_New(Size, align, (HI_CHAR*)MMB_TAG_1, (HI_CHAR*)mmb_name);
	        if (0 == PhysAddr)
	        {
	            PhysAddr = (HI_U32)HI_MMZ_New(Size, align, (HI_CHAR*)MMB_TAG_2, (HI_CHAR*)mmb_name);
	            if (0 == PhysAddr)
	            {
	                return 0;
	            }
	        }
	    }

	    pVirtAddr = (HI_VOID*)HI_MMZ_Map(PhysAddr, cached);
	    if (HI_NULL == pVirtAddr)
	    {
	        s32Ret = HI_MMZ_Delete(PhysAddr);
	        if (HI_SUCCESS != s32Ret)
	        {
	            return 0;
	        }

	        return 0;
	    }

	    g_MmbBlkArray[i] = PhysAddr;

	    *ppVirtAddr = pVirtAddr;
		
	    return PhysAddr;

	
}

HI_VOID JPG_MMB_Free(HI_U32 PhysAddr)
{



	    HI_U32 i = 0;
	    HI_S32 s32Ret = 0;

	    /*find the proper slot, then release it. this prevent some slot to be released more than once.*/
	    while (i < JPG_MMB_BLK)
	    {
	        if (PhysAddr == g_MmbBlkArray[i])
	        {
	            break;
	        }

	        i++;
	    }

	    if (i >= JPG_MMB_BLK)
	    {
	        /*maybe the input address error, maybe all slots are released already.  just return*/
	        JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "JPG_MMB_Free position empty!\n");
	        return;
	    }

	    s32Ret = HI_MMZ_Unmap(PhysAddr);
	    s32Ret = HI_MMZ_Delete(PhysAddr);
	    if (HI_SUCCESS != s32Ret)
	    {
	        return;
	    }

	    /*clear the slot*/
	    g_MmbBlkArray[i] = 0;

 
}

HI_VOID JPG_MMB_Clear()
{


	    HI_U32 i = 0;
	    HI_U32 PhysAddr;
	    HI_S32 s32Ret = 0;

	    /*release all memory with its flag not eqal to 0, and then set the flag to 0*/
	    while (i < JPG_MMB_BLK)
	    {
	        PhysAddr = g_MmbBlkArray[i];
	        if (0 != PhysAddr)
	        {

	            s32Ret = HI_MMZ_Unmap(PhysAddr);
	            s32Ret = HI_MMZ_Delete(PhysAddr);
	            if (HI_SUCCESS != s32Ret)
	            {
	                return;
	            }

	            g_MmbBlkArray[i] = 0;
				
	        }

	        i++;
			
	    }

	
}

HI_VOID*  JPGFMW_Alloc(JPG_MEM_S* pstMem, HI_U32 Size)
{


    	HI_U32 PhysAddr = 0;
	    HI_VOID* pVirtAddr = NULL;

	    if ((pstMem->pVirtAddr != NULL) && (pstMem->Total != 0))
	    {
	        /* if there is some space already allocated, to see such memory is sufficient or not */
	        if (pstMem->Total >= Size)
	        {
	            /* such memory is big enough, need not allocate any more, just use it.*/
	            pstMem->Offset = 0;
	            return pstMem->pVirtAddr;
	        }
	        else
	        {
	            /* such memory is not enough, have to allocate another one. release the former first */
	            JPGFMW_Free( pstMem );
	        }
	    }

	    PhysAddr = JPG_MMB_Alloc(Size, 64, (HI_U8*)"JPEG_DECODER", JPG_CACHED, &pVirtAddr);
	    if (0 == PhysAddr)
	    {
	        return HI_NULL;
	    }

	    pstMem->pVirtAddr = pVirtAddr;
	    pstMem->PhysAddr = PhysAddr;
	    pstMem->Total  = Size;
	    pstMem->Offset = 0;

	    return pVirtAddr;

	
}

HI_VOID JPGFMW_Free(JPG_MEM_S* pstMem)
{


	    HI_U32 PhysAddr = pstMem->PhysAddr;

	    if ((pstMem->pVirtAddr != NULL) && (pstMem->Total != 0))
	    {
	        JPG_MMB_Free(PhysAddr);

	        JPGVCOS_memset(pstMem, 0, sizeof(JPG_MEM_S));
	    }
	
}

/*RsvSize indicate the bytes from the start address, which should keep not to be cleared*/
HI_VOID JPGFMW_MemReset(JPG_MEM_S* pstMem, HI_U32 RsvSize)
{


	    pstMem->Offset = RsvSize;
	    JPGVCOS_memset((HI_U8*)pstMem->pVirtAddr + pstMem->Offset,
	                   0, pstMem->Total - pstMem->Offset);
	
}

HI_VOID* JPGFMW_MemGet(JPG_MEM_S* pstMem, HI_U32 Size)
{


	    HI_VOID* pVirtAddr = NULL;
	    HI_U32 Offset;

	    Size = (Size + 3) & (~3);    /* have 'Size' be up aligned to multiple of 4, to ensure the last address is also a multiple of 4. */

	    Offset = pstMem->Offset + Size;
	    if (Offset > pstMem->Total)
	    {
	        pVirtAddr = NULL;
	    }
	    else
	    {
	        pVirtAddr = (HI_U8*)pstMem->pVirtAddr + pstMem->Offset;
	        pstMem->Offset = Offset;
	    }

	    return pVirtAddr;

	
}


static HI_VOID  JPG_InitMem(HI_U32 PhysAddr, HI_VOID* pVAddr)
{


        HI_U32 Offset = 0;
        HI_U8*           pVirtAddr = (HI_U8*)pVAddr;

        /*overall memory info*/
        s_DecCtrlMem.s_Global.PhysAddr  = PhysAddr;
        s_DecCtrlMem.s_Global.pVirtAddr = pVirtAddr;
        s_DecCtrlMem.s_Global.Offset = 0;
        s_DecCtrlMem.s_Global.Total = DEBUG_MEMSIZE
                                      + JPGDEC_MEMSIZE
                                      + JPGPARSE_MEMSIZE
                                      + JPGHDEC_MEMSIZE
                                      + JPGSDEC_MEMSIZE
                                      + JPGEXIF_MEMSIZE
                                      + JPG6B_MEMSIZE;

        Offset = 0;

        /*mem for debug*/
        s_DecCtrlMem.s_DebugMem.PhysAddr  = PhysAddr + Offset;
        s_DecCtrlMem.s_DebugMem.pVirtAddr = pVirtAddr + Offset;
        s_DecCtrlMem.s_DebugMem.Offset = 0;
        s_DecCtrlMem.s_DebugMem.Total = DEBUG_MEMSIZE;
        Offset += DEBUG_MEMSIZE;

        /*mem for decoeer controler*/
        s_DecCtrlMem.s_DecMem.PhysAddr  = PhysAddr + Offset;
        s_DecCtrlMem.s_DecMem.pVirtAddr = pVirtAddr + Offset;
        s_DecCtrlMem.s_DecMem.Offset = 0;
        s_DecCtrlMem.s_DecMem.Total = JPGDEC_MEMSIZE;
        Offset += JPGDEC_MEMSIZE;

        /*mem for parser*/
        s_DecCtrlMem.s_ParseMem.PhysAddr  = PhysAddr + Offset;
        s_DecCtrlMem.s_ParseMem.pVirtAddr = pVirtAddr + Offset;
        s_DecCtrlMem.s_ParseMem.Offset = 0;
        s_DecCtrlMem.s_ParseMem.Total = JPGPARSE_MEMSIZE;
        Offset += JPGPARSE_MEMSIZE;

        /*mem for hardware decode module*/
        s_DecCtrlMem.s_HDecMem.PhysAddr  = PhysAddr + Offset;
        s_DecCtrlMem.s_HDecMem.pVirtAddr = pVirtAddr + Offset;
        s_DecCtrlMem.s_HDecMem.Offset = 0;
        s_DecCtrlMem.s_HDecMem.Total = JPGHDEC_MEMSIZE;
        Offset += JPGHDEC_MEMSIZE;

        /*mem for software decode module*/
        s_DecCtrlMem.s_SDecMem.PhysAddr  = PhysAddr + Offset;
        s_DecCtrlMem.s_SDecMem.pVirtAddr = pVirtAddr + Offset;
        s_DecCtrlMem.s_SDecMem.Offset = 0;
        s_DecCtrlMem.s_SDecMem.Total = JPGSDEC_MEMSIZE;
        Offset += JPGSDEC_MEMSIZE;

        /*mem for EXIF extractor*/
        s_DecCtrlMem.s_ExifMem.PhysAddr  = PhysAddr + Offset;
        s_DecCtrlMem.s_ExifMem.pVirtAddr = pVirtAddr + Offset;
        s_DecCtrlMem.s_ExifMem.Offset = 0;
        s_DecCtrlMem.s_ExifMem.Total = JPGEXIF_MEMSIZE;
        Offset += JPGEXIF_MEMSIZE;

        /*mem for JPG 6B*/
        s_DecCtrlMem.s_Jpg6bMem.PhysAddr  = PhysAddr + Offset;
        s_DecCtrlMem.s_Jpg6bMem.pVirtAddr = pVirtAddr + Offset;
        s_DecCtrlMem.s_Jpg6bMem.Offset = 0;
        s_DecCtrlMem.s_Jpg6bMem.Total = JPG6B_MEMSIZE;
		
}



STATIC_FUNC HI_S32 JPGCheckJpegEOI(HI_VOID* pBuf, HI_U32 Len, HI_BOOL bParsedFF, HI_S32* pOffset)
{


        HI_U8*   pu8Char;
        HI_U8*   pu8CharNxt;
        HI_U8*   ExtAddr;

        /* to check the validation of the input arguments*/
        JPG_CHECK_NULLPTR(pBuf);
        JPG_CHECK_NULLPTR(pOffset);

        /*search the EOI marker from the input address, keep the offset*/
        pu8Char = (HI_U8*)pBuf;
        pu8CharNxt = (HI_U8*)pBuf + 1;
        ExtAddr = (HI_U8*)pBuf + Len;

        if ((HI_TRUE == bParsedFF) && (JPGTAG_EOI == *pu8Char))
        {
            /*the first byte of the pbuf is EOI*/
            *pOffset = -1;
            return HI_SUCCESS;
        }

        while (pu8CharNxt < ExtAddr)
        {
            if (JPGTAG_EOI == *pu8CharNxt)
            {
                if (JPGTAG_FF == *(pu8CharNxt - 1))
                {
                    *pOffset = (pu8CharNxt - 1) - (HI_U8*)pBuf;

                    //*pOffset += 2;
                    return HI_SUCCESS;
                }
            }

            pu8CharNxt++;
        }

        *pOffset = (pu8CharNxt - 1) - (HI_U8*)pBuf;

        return HI_ERR_JPG_WANT_STREAM;

}


STATIC_FUNC JPG_ENCFMT_E JPGGetFormat(const JPG_PICPARSEINFO_S* image)
{


        if (1 == image->ComponentInScan)
        {
            if (image->ComponentInfo[0].HoriSampFactor != image->ComponentInfo[0].VertSampFactor)
            {
                return JPGHAL_ENCFMT_BUTT;
            }
            else
            {
                return JPGHAL_ENCFMT_400;
            }
        }

        if (3 != image->ComponentInScan)
        {
            return JPGHAL_ENCFMT_BUTT;
        }

        /* hori, vert sample factor of both components should be the same. */
        if ((image->ComponentInfo[1].HoriSampFactor != image->ComponentInfo[2].HoriSampFactor)
            || (image->ComponentInfo[1].VertSampFactor != image->ComponentInfo[2].VertSampFactor))
        {
            return JPGHAL_ENCFMT_BUTT;
        }

        /* the sample factor of component 1~2 is half of that of component 0 */
        if ((image->ComponentInfo[0].HoriSampFactor >> 1) == image->ComponentInfo[1].HoriSampFactor)
        {
            if ((image->ComponentInfo[0].VertSampFactor >> 1) == image->ComponentInfo[1].VertSampFactor)
            {
                return JPGHAL_ENCFMT_420;
            }
            else if (image->ComponentInfo[0].VertSampFactor == image->ComponentInfo[1].VertSampFactor)
            {
                return JPGHAL_ENCFMT_422_21;
            }
        }
        /* the sample factor of component 1~2 is same as that of component 0 */
        else if ((image->ComponentInfo[0].HoriSampFactor == image->ComponentInfo[1].HoriSampFactor))
        {
            if ((image->ComponentInfo[0].VertSampFactor >> 1) == image->ComponentInfo[1].VertSampFactor)
            {
                return JPGHAL_ENCFMT_422_12;
            }

            if (image->ComponentInfo[0].VertSampFactor == image->ComponentInfo[1].VertSampFactor)
            {
                return JPGHAL_ENCFMT_444;
            }
        }

        return JPGHAL_ENCFMT_BUTT;

		
}



STATIC_FUNC HI_S32 JPGConvert2PicInfo(const JPG_PICPARSEINFO_S* pParseInfo, JPG_PICINFO_S *pPicInfo)
{


        JPG_CHECK_NULLPTR(pParseInfo);
        JPG_CHECK_NULLPTR(pPicInfo);

        pPicInfo->Profile = pParseInfo->Profile;
        pPicInfo->Width  = pParseInfo->Width;
        pPicInfo->Height = pParseInfo->Height;
        pPicInfo->SamplePrecision = pParseInfo->Precise;
        pPicInfo->ComponentNum = pParseInfo->ComponentNum;
        pPicInfo->EncodeFormat = (JPG_SOURCEFMT_E)JPGGetFormat(pParseInfo);


        return HI_SUCCESS;
		
}

/*PARTPARSED indicate not end at SOS*/
/*PARSED indicate end at SOS*/

STATIC_FUNC HI_S32 JPGCheckPicAvail(JPG_STATE_E ParseState, HI_U32 CurIdx, HI_U32 ThumbCnt,
                                    HI_U32 ReqIndex)
{


        HI_S32 Ret = HI_FAILURE;


        if (ReqIndex > 0)/*do not parse main pic, parse thumbs only*/
        {
            if (ThumbCnt >= ReqIndex)
            {
                Ret = HI_SUCCESS;
            }
            else if (JPG_STATE_THUMBPARSED == ParseState)
            {
                Ret = HI_ERR_JPG_THUMB_NOEXIST;
            }
            else
            {
                Ret = HI_FAILURE;
            }
        }
        else        /*need parse main pic*/
        {
            Ret = ((0 == CurIdx) && ((ParseState == JPG_STATE_PARSED) || (ParseState >= JPG_STATE_DECODING))) ?
                  HI_SUCCESS : HI_FAILURE;
        }

        return Ret;
		
}

STATIC_FUNC HI_S32 JPGConvert2DecInfo(const JPG_PICPARSEINFO_S* pParseInfo, JPG_SURFACE_S* pSurface,
                                      JPGDEC_DECODEATTR_S* pDecodeAttr)
{


        HI_U32 i;

        if ((NULL == pParseInfo) || (NULL == pSurface) || (NULL == pDecodeAttr))
        {
            return HI_FAILURE;
        }

        pDecodeAttr->Height = pParseInfo->Height;
        pDecodeAttr->Width  = pParseInfo->Width;
        pDecodeAttr->EncFmt = JPGGetFormat(pParseInfo);
        pDecodeAttr->pOutSurface = (JPG_SURFACE_S*)pSurface;

        for (i = 0; i < 4; i++)/*pParseInfo->ComponentInScan*/
        {
            #if 0
            pDecodeAttr->pQuanTbl[i]   = pParseInfo->pQuantTbl[i];
			#else
			/**
			 **revise by y00181162,修改解码失真的问题，要根据图片原有的量化表来选择
			 **/
            pDecodeAttr->pQuanTbl[i]   = pParseInfo->pQuantTbl[pParseInfo->ComponentInfo[i].QuantTblNo];
			#endif
            pDecodeAttr->pDcHuffTbl[i] = pParseInfo->pDcHuffTbl[i];
            pDecodeAttr->pAcHuffTbl[i] = pParseInfo->pAcHuffTbl[i];
        }

        return HI_SUCCESS;
		
}




/*to be ensureed that the hardware buffer is free*/
STATIC_FUNC HI_S32 JPGCopy(const JPG_CYCLEBUF_S* pParseBuf,\
                                 JPG_HANDLE HDecHandle,\
                                 JPG_DECTYPE_E DecType,\
                                 HI_BOOL bEOI,         \
                                 HI_U32 EoiOffset)
{

	
        JPGBUF_DATA_S stData;
        JPGDEC_WRITESTREAM_S stWriteStrm;
		
		JPG_DECTYPE_E eDecType = JPG_DECTYPE_BUTT;
			
        HI_U8 EOIBuf[2] = {0xFF, 0xD9};
		
        HI_U32 CurOffset;

        HI_S32 s32Ret = 0;

        HI_S32 (*JPGDEC_SendStream)(JPG_HANDLE Handle,
                                    JPGDEC_WRITESTREAM_S * pStreamInfo);

		eDecType = DecType;


		if(JPG_DECTYPE_SW == eDecType)
		{
		    return HI_FAILURE;
		}
		else
		{
            JPGDEC_SendStream = JPGHDEC_SendStream;
		}


        (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);


        CurOffset = EoiOffset;

        jpg_assert(stData.u32Len[0] + stData.u32Len[1] >= CurOffset, return HI_FAILURE);

        stWriteStrm.NeedCopyFlag = HI_TRUE;
        stWriteStrm.EndFlag = HI_FALSE;

        if (CurOffset <= stData.u32Len[0])
        {
            stWriteStrm.pStreamAddr = stData.pAddr[0];
            stWriteStrm.StreamLen = CurOffset;
            s32Ret = JPGDEC_SendStream(HDecHandle, &stWriteStrm);
        }
        else
        {
            /* never cause overflow, because the parse buffer is smaller than the decode buffer*/
            stWriteStrm.pStreamAddr = stData.pAddr[0];
            stWriteStrm.StreamLen = stData.u32Len[0];
            s32Ret = JPGDEC_SendStream(HDecHandle, &stWriteStrm);

            stWriteStrm.pStreamAddr = stData.pAddr[1];
            stWriteStrm.StreamLen = CurOffset - stData.u32Len[0];
            s32Ret = JPGDEC_SendStream(HDecHandle, &stWriteStrm);
        }

        if (HI_TRUE == bEOI)
        {
            stWriteStrm.EndFlag = HI_TRUE;
            stWriteStrm.pStreamAddr = EOIBuf;
            stWriteStrm.StreamLen = 2;
            s32Ret = JPGDEC_SendStream(HDecHandle, &stWriteStrm);
        }

        if (HI_SUCCESS != s32Ret)
        {
            return HI_FAILURE;
        }

        return HI_SUCCESS;
		
}




STATIC_FUNC HI_S32 JPGCopyParseBuf2HDBuf(JPG_DECCTX_S*   pstCtx)
{


        JPGBUF_DATA_S stData;
        HI_S32 s32Ret;
        HI_BOOL bEOI = HI_FALSE;
        HI_U32 EOIOffset = 0;
        JPGDEC_WRITESTREAM_S stWriteStrm;

        HI_U8 FFData = 0xFF;

        HI_S32 (*JPGDEC_SendStream)(JPG_HANDLE Handle,
                                    JPGDEC_WRITESTREAM_S * pStreamInfo);



		if(JPG_DECTYPE_SW == pstCtx->DecType)
		{
		    return HI_FAILURE;
		}
		else
		{
            JPGDEC_SendStream = JPGHDEC_SendStream;
		}

        /* err handling: if no EOI in the stream, and the stream is very short, the end flag should be passed to the next step.
             but in streaming mode filelen is 0, do not process the EOI flag  */
        if ((pstCtx->TotalOffset >= pstCtx->FileLen) && (pstCtx->FileLen != 0))
        {
            bEOI = HI_TRUE;
        }

        /* if some data was left in the parser buffer, get it out.*/
        /*get the left data size in the parser buffer*/
        (HI_VOID)JPGBUF_GetDataBtwWhRh(&pstCtx->ParseBuf, &stData);
        if (0 != stData.u32Len[0])
        {
            /*check the length prior to  EOI*/
            s32Ret = JPGPARSE_EndCheck(JPGFMW_DEFAULT_HANDLE, &pstCtx->ParseBuf,
                                       &EOIOffset, &pstCtx->bParsedFF);
            if (HI_ERR_JPG_PARSE_FAIL == s32Ret)
            {
                /* AI7D02581 */
                pstCtx->State = JPG_STATE_DECODEERR;
                JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Parse fail before Decoding!\n");
                return HI_ERR_JPG_DEC_FAIL;
            }

            bEOI = (HI_SUCCESS == s32Ret) ? HI_TRUE : bEOI;

            if (HI_TRUE == bEOI)
            {
                pstCtx->bNeedSend = HI_FALSE;
            }

            /*copy the data from the parser buffer*/
            (HI_VOID)JPGCopy(&pstCtx->ParseBuf, pstCtx->HDecHandle, pstCtx->DecType, bEOI, EOIOffset);

            JPGBUF_SetRdHead(&pstCtx->ParseBuf, (HI_S32)EOIOffset);

            if ((HI_TRUE == pstCtx->bParsedFF) && (HI_FALSE == pstCtx->bNeedCopy))
            {
                stWriteStrm.pStreamAddr = &FFData; /** revise by yanjianqing **/
                stWriteStrm.StreamLen = 1;
                stWriteStrm.EndFlag = bEOI;
                stWriteStrm.NeedCopyFlag = HI_TRUE;

                s32Ret = JPGDEC_SendStream(pstCtx->HDecHandle, &stWriteStrm);
                JPG_CHECK_RET(s32Ret, return HI_FAILURE);

                if (1 == stWriteStrm.CopyLen)
                {
                    pstCtx->bParsedFF = HI_FALSE;
                }
            }
        }
        else if (HI_TRUE == bEOI)
        {
            /*Err handling: header should be copied even no ecs data*/
            (HI_VOID)JPGCopy(&pstCtx->ParseBuf, pstCtx->HDecHandle, pstCtx->DecType, bEOI, 0);
        }

        if ((0 == stData.u32Len[0]) || (HI_FALSE == bEOI))
        {
            pstCtx->bNeedSend = HI_TRUE;
        }

        /*after data was copied, the parser buffer should be cleared*/
        JPGBUF_StepRdTail(&pstCtx->ParseBuf);

        return HI_SUCCESS;

		
}



STATIC_FUNC HI_S32 JPGPreCheck(const JPG_PICPARSEINFO_S*  pCurPicInfo, JPGDEC_CHECKINFO_S*  pCheckInfo)
{



        HI_U32 QuantTblNum  = 0;
        HI_U32 DcHuffTblNum = 0;
        HI_U32 AcHuffTblNum = 0;
        HI_U32 i;

        for (i = 0; i < 4; i++)
        {
            if (NULL != pCurPicInfo->pQuantTbl[i])
            {
                QuantTblNum++;
            }

            if (NULL != pCurPicInfo->pDcHuffTbl[i])
            {
                DcHuffTblNum++;
            }

            if (NULL != pCurPicInfo->pAcHuffTbl[i])
            {
                AcHuffTblNum++;
            }
        }

        /* defect ID: AI7D02540 Modify Start */
        /*AC DHT can not be confined, because AC DHT is in the ECS if it is multi-scan*/
        if ((NULL == pCurPicInfo->pQuantTbl[0])
            || (NULL == pCurPicInfo->pDcHuffTbl[0])
            || ((NULL == pCurPicInfo->pAcHuffTbl[0])
                && (JPG_PICTYPE_BASELINE == pCurPicInfo->Profile)))
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Quan or Huff Table error!\n");
            return HI_ERR_JPG_DEC_FAIL;
        }

        /* to check if the DQT, HC DHT index is resonable */
        for (i = 0; i < 4; i++)
        {
            if ((pCurPicInfo->ComponentInfo[i].QuantTblNo >= QuantTblNum)
                || (pCurPicInfo->ComponentInfo[i].DcTblNo >= DcHuffTblNum))
            {
                JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Table Number error!\n");
                return HI_ERR_JPG_DEC_FAIL;
            }
        }

        pCheckInfo->QuantTblNum  = QuantTblNum;/*quant table count*/
        pCheckInfo->DcHuffTblNum = DcHuffTblNum;/*Dc Huffman table count*/
        pCheckInfo->AcHuffTblNum = AcHuffTblNum;/*Ac Huffman table count*/

        pCheckInfo->Width   = pCurPicInfo->Width;     /*pic width, in pixels*/
        pCheckInfo->Height  = pCurPicInfo->Height;    /*pic height, in pixels*/
        pCheckInfo->Precise = pCurPicInfo->Precise;    /*image precision*/
        pCheckInfo->Profile = pCurPicInfo->Profile;     /*JPG image type*/

        pCheckInfo->EncFmt = JPGGetFormat(pCurPicInfo); /*encode format*/
        pCheckInfo->ComponentNum = pCurPicInfo->ComponentNum;/*component count*/

        if (pCheckInfo->EncFmt >= JPGHAL_ENCFMT_BUTT)
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Decoder not supported!\n");
            return HI_ERR_JPG_NOSUPPORT_FMT;
        }

        return HI_SUCCESS;

		
}



STATIC_FUNC HI_S32 JPGCheckSurface(JPG_SURFACE_S *pSurface)
{


        JPG_MBSURFACE_S* pMbSurface;
        JPG_ILSURFACE_S* pILSurface;

        if (JPG_OUTTYPE_MACROBLOCK == pSurface->OutType)
        {
            pMbSurface = (JPG_MBSURFACE_S *)&pSurface->SurfaceInfo.MbSurface;

            JPG_CHECK_ENUM(pMbSurface->MbFmt, JPG_MBCOLOR_FMT_BUTT);

            if ((0 == pMbSurface->YWidth)
                || (0 == pMbSurface->YHeight)
                || (0 == pMbSurface->YStride))
            {
                return HI_ERR_JPG_INVALID_PARA;
            }

            /*check the luminance address*/
            if ((0 == pMbSurface->YVirtAddr)
                || (0 == pMbSurface->YPhyAddr))
            {
                return HI_ERR_JPG_INVALID_PARA;
            }

            /*check the chrom address*/
            if (JPG_MBCOLOR_FMT_JPG_YCbCr400MBP != pMbSurface->MbFmt)
            {
                if ((0 == pMbSurface->CbCrVirtAddr)
                    || (0 == pMbSurface->CbCrPhyAddr))
                {
                    return HI_ERR_JPG_INVALID_PARA;
                }
            }

        }
        else if (JPG_OUTTYPE_INTERLEAVE == pSurface->OutType)
        {
            pILSurface = (JPG_ILSURFACE_S *)&pSurface->SurfaceInfo.Surface;
            JPG_CHECK_ENUM(pILSurface->ColorFmt, JPG_ILCOLOR_FMT_BUTT);

            if ((0 == pILSurface->Width)
                || (0 == pILSurface->Height)
                || (0 == pILSurface->Stride)
                || (0 == pILSurface->PhyAddr))
            {
                return HI_ERR_JPG_INVALID_PARA;
            }
        }
        else
        {
            return HI_ERR_JPG_INVALID_PARA;
        }

        return HI_SUCCESS;
		
}


HI_S32 JPGPreCheckMem(const JPGDEC_CHECKINFO_S* pCheckInfo, HI_U32 ImgLen)
{
        return HI_SUCCESS;
}


/*****************************************************************************/
/*                          JPG FirmWare interface                           */
/*****************************************************************************/

/******************************************************************************
* Function:      JPG_CreateDecoder
* Description:   create jpg instance
* Input:          ImgType   file type
                        u32FileLen file length
* Output:        pHandle JPG decoder handle
* Return:        HI_SUCCESS:            success
*                HI_ERR_JPG_DEC_BUSY:
*                HI_ERR_JPG_DEV_NOOPEN:
*                HI_ERR_JPG_NO_MEM:
*                HI_FAILURE:
* Others:
******************************************************************************/
HI_S32 JPG_CreateDecoder(JPG_HANDLE *pHandle, JPG_IMGTYPE_E ImgType, HI_U32 ImgLen)
{



        HI_S32 s32Ret;
        JPG_DECCTX_S*   pstCtx;
        JPG_HANDLE JpgHandle;
        HI_U32 DecSize;
        JPG_MEM_S*      pMemMgr;

        JPG_CHECK_NULLPTR(pHandle);
        JPG_CHECK_ENUM(ImgType, JPG_IMGTYPE_BUTT);

        s32Ret = JPGDRV_GetDevice();
        if (HI_SUCCESS != s32Ret)
        {
            s32Ret = (HI_ERR_JPG_DEC_BUSY == s32Ret) ? s32Ret : HI_FAILURE;
            return s32Ret;
        }

        /* global vars clear*/
        {
            JPGVCOS_memset(&s_DecCtrlMem, 0, sizeof(s_DecCtrlMem));

            /* mem address slot clear */
            JPG_MMB_Clear();

            JPGFMW_Handle_Clear();
        }

        /*calc a length, which is the sumary of the following mem size:
            (1) decoder controller context
            (2) loop buf control block
            (3) 8k parser buf*/
        DecSize = DEBUG_MEMSIZE
                  + JPGDEC_MEMSIZE
                  + JPGPARSE_MEMSIZE
                  + JPGHDEC_MEMSIZE
                  + JPGSDEC_MEMSIZE
                  + JPGEXIF_MEMSIZE
                  + JPG6B_MEMSIZE;

        pMemMgr = &s_DecCtrlMem.s_Global;
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Alloc(pMemMgr, DecSize);
        if (NULL == pstCtx)
        {
            s32Ret = HI_ERR_JPG_NO_MEM;
            goto  LABEL0;
        }

        JPG_InitMem(pMemMgr->PhysAddr, pMemMgr->pVirtAddr);

        pstCtx = (JPG_DECCTX_S*)JPGFMW_MemGet(&s_DecCtrlMem.s_DecMem,
                                              (sizeof(JPG_DECCTX_S) + JPG_PARSEBUF_LEN));
        if (NULL == pstCtx)
        {
            s32Ret = HI_ERR_JPG_NO_MEM;
            goto  LABEL0;
        }

        /*convert to handle*/
        if (HI_SUCCESS != (s32Ret = JPGFMW_Handle_Alloc(&JpgHandle, pstCtx)))
        {
            s32Ret = HI_ERR_JPG_NO_MEM;
            goto LABEL1;
        }

        JPGDEC_InitHW(&pstCtx->struHwDec);
        
        pstCtx->pstruCurrentDec = &pstCtx->struHwDec;
        pstCtx->DecType = JPG_DECTYPE_HW;
        pstCtx->HDecHandle = 0;


        if (HI_SUCCESS != (s32Ret = JPGHDEC_CreateInstance(&pstCtx->HDHandle, ImgLen)))
        {
            s32Ret = HI_ERR_JPG_NO_MEM;
            goto LABEL2;
        }

        JPGHDEC_FlushBuf(pstCtx->HDHandle);
        JPGHDEC_Reset(pstCtx->HDHandle);

        pstCtx->HDecHandle = pstCtx->HDHandle;
        pstCtx->SDHandle = 0;


        /*create a parser according to the input JPG_IMGTYPE_E*/
        s32Ret = JPGPARSE_CreateInstance(&pstCtx->ParseHandle, ImgType);

        /*if create fail*/
        if (HI_SUCCESS != s32Ret)
        {
            goto LABEL3;
        }

        /* following info recorded into the decoder context:
            pointer of the parser buff, parser, hardware decoder context */

        /* init parser buf*/
        s32Ret = JPGBUF_Init(&pstCtx->ParseBuf, pstCtx + 1, JPG_PARSEBUF_LEN, sizeof(HI_U8));
        if (HI_SUCCESS != s32Ret)
        {
            goto LABEL3;
        }

        /*init the state vars of the decoder controller context*/
        pstCtx->State = JPG_STATE_STOP;
        pstCtx->CurrIndex = -1;
        pstCtx->ReqIndex    = 0;
        pstCtx->ThumbCnt    = 0;
        pstCtx->bParsedFF   = HI_FALSE;
        pstCtx->bNeedSend   = HI_TRUE;
        pstCtx->bNeedCopy   = HI_FALSE;
        pstCtx->ThumbEcsLen = 0;

        pstCtx->bReqExif  = HI_FALSE;
        pstCtx->pExifAddr = NULL;

        pstCtx->FileLen  = ImgLen;
        pstCtx->bHDecErr = HI_FALSE;

        pstCtx->ResetFlag   = HI_FALSE;
        pstCtx->TotalOffset = 0;

        pstCtx->Handle = JpgHandle;
        s_DecHandle = JpgHandle;

        /*return , success*/
        *pHandle = JpgHandle;

        return HI_SUCCESS;

        /*LABEL2: release decoder context and parser buffer*/
LABEL3:
        JPGFMW_Handle_Free(JpgHandle);
#ifdef JPG_STATIC_HDEC
LABEL2:
        JPGHDEC_DestroyInstance(pstCtx->HDHandle);
#endif
LABEL1:

        //VCOS_free(pstCtx);
        JPGFMW_Free(pMemMgr);

        /*LABEL0: return HI_ERR_JPG_NO_MEM*/
LABEL0:

        /* call driver interface 'JPGDRV_ReleaseDevice' to release hardware decoder*/
        (HI_VOID)JPGDRV_ReleaseDevice();

        return s32Ret;
		
}



/******************************************************************************
* Function:      JPG_DestroyDecoder
* Description:   delete jpg decoder instance
* Input:
* Output:        Handle JPG decoder handle
* Return:        HI_SUCCESS
* Others:
******************************************************************************/
HI_S32  JPG_DestroyDecoder(JPG_HANDLE Handle)
{



        	JPG_DECCTX_S*  pstCtx;
	        HI_S32 Ret;

	        /*get address by handle*/
	        /*validate the handle*/
	        if (NULL == s_DecCtrlMem.s_DebugMem.pVirtAddr)
	        {
	            JPG_TRACE(HI_JPGLOG_LEVEL_ERROR, JPEGFMW, "handle err!\n");
	            return HI_SUCCESS;
	        }


	        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
	        if (NULL == pstCtx)
	        {
	            return HI_SUCCESS;
	        }

	        /*if asynchronous reset, wait...*/
	        if (pstCtx->ResetFlag)
	        {
	            usleep(20000);
	        }

            #if 0
	        /*release software decoder memory*/
	        if (JPG_DECTYPE_SW == pstCtx->DecType)
	        {
	            if (pstCtx->SDHandle != 0)
	            {
	                Ret = JPGSDEC_DestroyInstance(pstCtx->SDHandle);
	                JPG_CHECK_RET(Ret, return HI_FAILURE);
	            }
	        }
			#endif

	        /*release hardware decoder memory*/
	        JPGHDEC_DestroyInstance(pstCtx->HDHandle);



	        /*destroy parser*/
	        Ret = JPGPARSE_DestroyInstance(pstCtx->ParseHandle);
	        JPG_CHECK_RET(Ret, return HI_FAILURE);

	        /*release parser buffer and decoder controller context*/

	        //VCOS_free(pstCtx);
	        JPGFMW_Free(&s_DecCtrlMem.s_Global);

	        JPGFMW_Handle_Free(Handle);
	        s_DecHandle = 0;

	        /* release hardware decoder*/
	        (HI_VOID)JPGDRV_ReleaseDevice();

	        JPG_MMB_Clear();

	        JPGVCOS_memset(&s_DecCtrlMem, 0, sizeof(s_DecCtrlMem));

	        /*success*/
	        return HI_SUCCESS;

		
}


/******************************************************************************
* Function:      JPG_Probe
* Description:  to see if it is a valid jpeg image
* Input:        Handle decoder handle
*                  pBuf    data block
*                  BufLen  data block length
* Output:
* Return:        HI_SUCCESS
*                    HI_ERR_JPG_WANT_STREAM
*                    HI_FAILURE
* Others:        at least need 2 bytes
******************************************************************************/
HI_S32  JPG_Probe(JPG_HANDLE Handle, HI_VOID* pBuf, HI_U32 BufLen)
{


        HI_U8* pu8Char;

        JPG_CHECK_NULLPTR(pBuf);
        pu8Char = (HI_U8*)pBuf;

        if (BufLen < 2)
        {
            return HI_ERR_JPG_INVALID_PARA;
        }

        while ((HI_U32)(pu8Char - (HI_U8*)pBuf) < (BufLen - 1))
        {
            if ((JPGTAG_FF == *pu8Char) && (JPGTAG_SOI == *(pu8Char + 1)))
            {
                return HI_SUCCESS;
            }

            pu8Char++;
        }

        return HI_FAILURE;
		
}



/******************************************************************************
* Function:      JPG_Decode
* Description:   dedode jpeg...
* Input:         Handle
*                pSurface output surface
*                Index    which picture to be decoded, 0 for main pic, others for thumbs
* Output:
* Return:        HI_SUCCESS
*                HI_ERR_JPG_INVALID_HANDLE
*                HI_ERR_JPG_INVALID_PARA
*                HI_ERR_JPG_WANT_STREAM
*                HI_ERR_JPG_DEC_FAIL
*                HI_FAILURE
* Others:
******************************************************************************/
HI_S32  JPG_Decode(JPG_HANDLE Handle, JPG_SURFACE_S *pSurface, HI_U32 Index)
{


        JPG_DECCTX_S*           pstCtx;
        JPGDEC_DECODEATTR_S stDecAttr;
        JPG_PICPARSEINFO_S*     pCurPicInfo;

        JPGDEC_CHECKINFO_S CheckInfo;
        JPGBUF_DATA_S stData;

        HI_S32 s32Ret;
        HI_S32 Avail = HI_FAILURE;
        HI_U32 ImgLen;
        JPG_SURFACE_S* pDecSurface = (JPG_SURFACE_S*)pSurface;

        /*validate the handle, if invalid return ERR_JPG_INVALID_HANDLE*/
        /*check if the pointer is null, if so ERR_JPG_PTR_NULL*/
        JPG_EQUAL_HANDLE(Handle);
        JPG_CHECK_DEBUGMEM();
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);
        JPG_CHECK_NULLPTR(pSurface);

        if (pstCtx->ResetFlag)
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "stopped for reset!\n");
            return HI_FAILURE;
        }

        if (HI_SUCCESS != JPGCheckSurface(pSurface))
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "JPGCheckSurface failed!\n");
            return HI_ERR_JPG_INVALID_PARA;
        }

        /*to see if this image has been parsed*/
        Avail = JPGCheckPicAvail(pstCtx->State, (HI_U32)pstCtx->CurrIndex,
                                 pstCtx->ThumbCnt, Index);
        if (Avail != HI_SUCCESS)
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Decode before parsed forbidden! state %d\n", pstCtx->State);
            return HI_ERR_JPG_DEC_FAIL;
        }

        /*the decoder controller state must stand for 'parsed'*/
        if (!((JPG_STATE_PARTPARSED <= pstCtx->State) && (JPG_STATE_PARSED >= pstCtx->State)))
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Decode before parsed forbidden! state %d\n", pstCtx->State);
            return HI_ERR_JPG_DEC_FAIL;
        }

        pstCtx->ThumbEcsLen = 0;

        /*query the chain to get the info for this pic*/
        JPG_GETCURPICINFO(pstCtx->ParseHandle, Index, pCurPicInfo);

        if (JPG_OUTTYPE_MACROBLOCK == pSurface->OutType)
        {
            if ((pSurface->SurfaceInfo.MbSurface.YWidth > pCurPicInfo->Width)
                || (pSurface->SurfaceInfo.MbSurface.YHeight > pCurPicInfo->Height))
            {
                JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "out size > real size!\n");
                return HI_ERR_JPG_INVALID_PARA;
            }
        }

        /*check, if find anly err output check information*/
        s32Ret = JPGPreCheck(pCurPicInfo, &CheckInfo);
        if (HI_ERR_JPG_DEC_FAIL == s32Ret)
        {
            pstCtx->State = JPG_STATE_DECODEERR;
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "JPGPreCheck err, ret: %#x!\n", s32Ret);
            return s32Ret;
        }

        /* default use hardware decode, unless special cases */
        pstCtx->pstruCurrentDec = &pstCtx->struHwDec;

        if (HI_SUCCESS == JPGHDEC_Check(JPGFMW_DEFAULT_HANDLE, &CheckInfo))
        {
            pstCtx->DecType = JPG_DECTYPE_HW;

        }
        else if ((pCurPicInfo->Width >= X5_MAX_WIDTH) || (pCurPicInfo->Height >= X5_MAX_HEIGHT)
                 || (JPG_PICTYPE_PROGRESSIVE == pCurPicInfo->Profile))
        {
            /**
             ** 该版本不支持软件解码
             **/
            //fprintf(stderr,"========== %s : %s : %d \n",__FILE__,__FUNCTION__,__LINE__);
            pstCtx->DecType = JPG_DECTYPE_SW;
			return HI_FAILURE;
        }
        else
        {
            pstCtx->State = JPG_STATE_DECODEERR;
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Decoder not supported!\n");
            return HI_ERR_JPG_NOSUPPORT_FMT;
        }

        #define YUV420_MAXOUTSIZE 4096

	   {
	            /* HIGO use MBSURFACE */
	            /*YUV444 YUV420 can only output 4K x 4K*/
	            /*YUV444 YUV422 2x1 can output 4K x 2K*/
	            /*YUV444 YUV422 1x2 can output 2K x 4K*/
	            /*YUV444 can output 2K x 2K*/

	            const JPG_MBSURFACE_S* pMbSurface = &pSurface->SurfaceInfo.MbSurface;
	            HI_U32 WidthMaxOutSize  = YUV420_MAXOUTSIZE;        /* 420 400 */
	            HI_U32 HeightMaxOutSize = YUV420_MAXOUTSIZE;

	            if (pMbSurface->MbFmt == JPG_MBCOLOR_FMT_JPG_YCbCr422MBHP)
	            {
	                /* 422 2x1 horizontal, 2 chrom component width same as luma*/
	                WidthMaxOutSize = YUV420_MAXOUTSIZE;

	                //HeightMaxOutSize = YUV420_MAXOUTSIZE >> 1;
	            }
	            else if (pMbSurface->MbFmt == JPG_MBCOLOR_FMT_JPG_YCbCr422MBVP)
	            {
	                WidthMaxOutSize = YUV420_MAXOUTSIZE >> 1;

	                //HeightMaxOutSize = YUV420_MAXOUTSIZE;
	            }
	            else if (pMbSurface->MbFmt == JPG_MBCOLOR_FMT_JPG_YCbCr444MBP)
	            {
	                WidthMaxOutSize = YUV420_MAXOUTSIZE >> 1;

	                //HeightMaxOutSize = YUV420_MAXOUTSIZE >> 1;
	            }

	            /* 3716V200 fixed the image width restriction, if the hardware is that, just ignore the upper width refinment */
	            if ((0 == JPGHDEC_GetVersion())
	                && ((pMbSurface->YWidth > WidthMaxOutSize) || (pMbSurface->YHeight > HeightMaxOutSize)))
	            {
	                pstCtx->DecType = JPG_DECTYPE_SW;
	                /**
		             ** 该版本不支持软件解码
		             **/
					return HI_FAILURE;
	            }
			
        }

        if (pstCtx->bHDecErr == HI_TRUE)
        {
            pstCtx->DecType = JPG_DECTYPE_SW;
            /**
             ** 该版本不支持软件解码
             **/
			return HI_FAILURE;
        }

        ImgLen = pstCtx->FileLen;
        if (0 != pstCtx->FileLen)
        {
            /* ImgLen stratage */
            s32Ret = JPGBUF_GetDataBtwWhRt(&pstCtx->ParseBuf, &stData);
            JPG_CHECK_RET(s32Ret, return HI_FAILURE);

            ImgLen = stData.u32Len[0] + stData.u32Len[1];

            ImgLen = pstCtx->FileLen - (pstCtx->TotalOffset - ImgLen);

            ImgLen += 8;  /* plus 8 for safety */

            if ((0 != Index) && (ImgLen > 0xFFFF))/*APP1 max size is 0xFFFF,thumb can not exceed that size */
            {
                ImgLen = 0xFFFF;
            }
        }
        else
        {
            /*in streaming mode, estimate the file length*/

            /*X5 hardware decoder ignore input length, HDEC forece it to 256K
            Hi3560 do not support stream mode*/
            JPG_ENCFMT_E EncFmt;
            const HI_U32 FactorTabx2[7] = {2, 0, 0, 3, 4, 4, 6};

            EncFmt   = JPGGetFormat(pCurPicInfo);
            ImgLen   = (pCurPicInfo->Width * pCurPicInfo->Height * FactorTabx2[EncFmt]) >> 1;
            ImgLen >>= 1;

            ImgLen = (ImgLen > JPGFILE_MAX) ?  JPGFILE_MAX :
                     ((ImgLen < JPGFILE_MIN) ? JPGFILE_MIN : ImgLen);
        }


        /*the following is used to force hardware/software decode, useful in debugging*/
        #if JPG_DEC_MODE == JPG_DEC_HARD
		
        {
            pstCtx->DecType = JPG_DECTYPE_HW;
            if (pCurPicInfo->Profile > 0)
            {
                pstCtx->State = JPG_STATE_DECODEERR;
                HIJPEG_TRACE("Progressive, Hard Decoder not supported!\n");
                return HI_ERR_JPG_NOSUPPORT_FMT;
            }
        }
		
        #elif JPG_DEC_MODE == JPG_DEC_SOFT
		
        pstCtx->DecType = JPG_DECTYPE_SW;
		
        #else
		
        #endif


        /*convert to what needed by the decoder*/
        s32Ret = JPGConvert2DecInfo(pCurPicInfo, pDecSurface, &stDecAttr);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        s32Ret = JPGPreCheckMem(&CheckInfo, ImgLen);
        if (HI_SUCCESS != s32Ret)
        {
            pstCtx->State = JPG_STATE_DECODEERR;
            return s32Ret;
        }

        if (JPG_DECTYPE_SW == pstCtx->DecType)
        {

	         /**
             ** 该版本不支持软件解码
             **/
             #if 1
			 return HI_FAILURE;
			 #else
	            if (HI_SUCCESS != (s32Ret = JPGSDEC_CreateInstance(&pstCtx->SDHandle, ImgLen)))
	            {
	                JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Decode err, ret: %#x!\n", s32Ret);
	                return s32Ret;
	            }

	            pstCtx->HDecHandle = pstCtx->SDHandle;
	            pstCtx->pstruCurrentDec = &pstCtx->struSwDec;
			 #endif
			 
        }


        s32Ret = pstCtx->pstruCurrentDec->JPGDEC_FlushBuf(pstCtx->HDecHandle);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        s32Ret = pstCtx->pstruCurrentDec->JPGDEC_Reset(pstCtx->HDecHandle);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        /* possibly start decode internally */
        s32Ret = JPGCopyParseBuf2HDBuf(pstCtx);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        if (HI_SUCCESS != s32Ret)
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Decode err, ret: %#x!\n", s32Ret);
            return s32Ret;
        }

        s32Ret = pstCtx->pstruCurrentDec->JPGDEC_SetDecodeInfo(pstCtx->HDecHandle, &stDecAttr);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        /*JPGHDEC_Start*/
        /*refresh stream address*/
        s32Ret = pstCtx->pstruCurrentDec->JPGDEC_Start(pstCtx->HDecHandle);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        pstCtx->State = JPG_STATE_DECODING;

        return HI_SUCCESS;
		
}


/******************************************************************************
* Function:      JPG_GetPrimaryInfo
* Description:   aquire info for the whole image
* Input:         Handle
* Output:        pImageInfo
* Return:        HI_SUCCESS
*                HI_ERR_JPG_INVALID_HANDLE
*                HI_ERR_JPG_WANT_STREAM
*                HI_ERR_JPG_PARSE_FAIL
*                HI_FAILURE
* Others:
******************************************************************************/
HI_S32  JPG_GetPrimaryInfo(JPG_HANDLE Handle, JPG_PRIMARYINFO_S **pPrimaryInfo)
{


        JPG_PICINFO_S stPicInfo;
        JPG_DECCTX_S*    pstCtx;
        HI_S32 s32Ret;

        JPG_PICPARSEINFO_S* pPicInfoHead = HI_NULL;
        JPG_PICPARSEINFO_S* pList;
        JPG_PRIMARYINFO_S*  pstPrimInfo;
        JPG_PICINFO_S*      pPicInfoAddr;
        HI_U32 i;

        /*validate the input handle, if invalidate HI_ERR_JPG_INVALID_HANDLE*/
        JPG_EQUAL_HANDLE(Handle);
        JPG_CHECK_DEBUGMEM();
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);

        /*validate pointer, if null return ERR_JPG_PTR_NULL*/
        JPG_CHECK_NULLPTR(pPrimaryInfo);

        if (pstCtx->ResetFlag)
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "stopped for reset!\n");
            return HI_FAILURE;
        }

        s32Ret = JPG_GetPicInfo(Handle, &stPicInfo, 0);
        if (HI_SUCCESS != s32Ret)
        {
            return s32Ret;
        }

        s32Ret = JPGPARSE_GetImgInfo(pstCtx->ParseHandle, &pPicInfoHead);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        /*inquire picture number */
        pList = pPicInfoHead;
        for (i = 0; (NULL != pList) && (i < JPG_MAX_THUMBNUM); i++)
        {
            pList = pList->pNext;
        }

        /*allocate mem for picture info*/
        /* if fail */
        /*return HI_FAILURE*/

        //pstPrimInfo = (JPG_PRIMARYINFO_S*)VCOS_malloc(sizeof(JPG_PRIMARYINFO_S)
        //                                            + i * sizeof(JPG_PICINFO_S));
        pstPrimInfo = (JPG_PRIMARYINFO_S*)JPGFMW_MemGet(&s_DecCtrlMem.s_DecMem, (sizeof(JPG_PRIMARYINFO_S)
                                                                                 + i * sizeof(JPG_PICINFO_S)));
        if (NULL == pstPrimInfo)
        {
            return HI_FAILURE;
        }

        /** revise by yanjianqing **/
        pPicInfoAddr = (JPG_PICINFO_S*)((HI_U32)pstPrimInfo + sizeof(JPG_PRIMARYINFO_S));
        pList = pPicInfoHead;

        pstPrimInfo->pPicInfo = pPicInfoAddr;
        for (i = 0; (NULL != pList) && (i < JPG_MAX_THUMBNUM); i++)
        {
            s32Ret = JPGConvert2PicInfo(pList, pPicInfoAddr);
            JPG_CHECK_RET(s32Ret, return HI_FAILURE);

            pList = pList->pNext;
            if (NULL != pList)
            {
                pPicInfoAddr++;
            }
        }

        pstPrimInfo->Count = i;/* Count = 1 for main pic */
        *pPrimaryInfo = pstPrimInfo;

        return HI_SUCCESS;

		
}

/******************************************************************************
* Function:      JPG_ReleasePrimaryInfo
* Description:   release pic info
* Input:         Handle
* Output:        pImageInfo
* Return:        HI_SUCCESS
*                HI_ERR_JPG_INVALID_HANDLE
* Others:
******************************************************************************/
HI_S32  JPG_ReleasePrimaryInfo(JPG_HANDLE Handle, const JPG_PRIMARYINFO_S *pImageInfo)
{



        /*validate pointer, if null return ERR_JPG_PTR_NULL*/
        JPG_CHECK_NULLPTR(pImageInfo);

        if ((0 == pImageInfo->Count) || (NULL == pImageInfo->pPicInfo))
        {
            return HI_ERR_JPG_INVALID_PARA;
        }

        //VCOS_free(pImageInfo);
        JPGFMW_MemReset(&s_DecCtrlMem.s_DecMem, (sizeof(JPG_DECCTX_S) + JPG_PARSEBUF_LEN));

        return HI_SUCCESS;
		
}

static JPG_STATE_E JPG_TransformParseState(JPG_PARSESTATE_E enState)
{
    return (JPG_STATE_E)enState;
}

/******************************************************************************
* Function:      JPG_GetPicInfo
* Description:   get info for a spcecified picture
* Input:         Handle
*                Index    picture index, 0 for main picture, others for thumbs
* Output:        pPicInfo picture info
* Return:        HI_SUCCESS
*                HI_ERR_JPG_INVALID_HANDLE
*                HI_ERR_JPG_WANT_STREAM
*                HI_ERR_JPG_PARSE_FAIL
*                HI_ERR_JPG_THUMB_NOEXIST
*                HI_FAILURE
* Others:
******************************************************************************/
HI_S32  JPG_GetPicInfo(JPG_HANDLE Handle, JPG_PICINFO_S *pPicInfo,
                       HI_U32 Index)
{


        JPG_DECCTX_S*   pstCtx;
        HI_S32 s32Ret;
        HI_S32 Avail = HI_FAILURE;

        JPG_PARSESTATE_S stParseState;
        JPG_PICPARSEINFO_S* pCurPicInfo;

        /*validate handle, if invalid return ERR_JPG_INVALID_HANDLE*/
        JPG_EQUAL_HANDLE(Handle);
        JPG_CHECK_DEBUGMEM();
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);

        /*check pointer*/
        JPG_CHECK_NULLPTR(pPicInfo);
        if (pstCtx->ResetFlag)
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "stopped for reset!\n");
            return HI_FAILURE;
        }

        if ((JPG_STATE_PARSEERR == pstCtx->State) && (0 == Index))
        {
            /*to prevent the err that no main pic found*/
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "main pic not exists!\n");
            return HI_ERR_JPG_PARSE_FAIL;
        }

        /*if necessary info is ready*/
        if (pstCtx->CurrIndex >= 0)
        {
            Avail = JPGCheckPicAvail(pstCtx->State, (HI_U32)pstCtx->CurrIndex,
                                     pstCtx->ThumbCnt, Index);
        }

        if (HI_SUCCESS == Avail)
        {
            JPG_GETCURPICINFO(pstCtx->ParseHandle, Index, pCurPicInfo);

            if (JPG_PARSED_ALL != (pCurPicInfo->SyntaxState & JPG_PARSED_ALL))
            {
                JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "pic err!\n");
                return HI_ERR_JPG_PARSE_FAIL;
            }

            s32Ret = JPGConvert2PicInfo(pCurPicInfo, pPicInfo);
            JPG_CHECK_RET(s32Ret, return HI_FAILURE);
            return HI_SUCCESS;
        }

        if (HI_ERR_JPG_THUMB_NOEXIST == Avail)
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "thumb not exists!\n");
            return HI_ERR_JPG_THUMB_NOEXIST;
        }

        /*begin parsing*/
        pstCtx->ReqIndex = Index;
        stParseState.ThumbEcsLen = pstCtx->ThumbEcsLen;
        pstCtx->ThumbEcsLen = 0;

        pstCtx->State = JPG_STATE_PARSING;
        s32Ret = JPGPARSE_Parse(pstCtx->ParseHandle, &pstCtx->ParseBuf,
                                Index, pstCtx->bReqExif, &stParseState);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        pstCtx->State = JPG_TransformParseState(stParseState.State);

        pstCtx->CurrIndex = (HI_S32)stParseState.Index;
        pstCtx->ThumbCnt = stParseState.ThumbCnt;

        if (HI_SUCCESS == s32Ret)
        {
            Avail = JPGCheckPicAvail(pstCtx->State, (HI_U32)pstCtx->CurrIndex,
                                     pstCtx->ThumbCnt, Index);
            jpg_assert((HI_SUCCESS == Avail), return HI_FAILURE);

            JPG_GETCURPICINFO(pstCtx->ParseHandle, Index, pCurPicInfo);

            if (JPG_PARSED_ALL != (pCurPicInfo->SyntaxState & JPG_PARSED_ALL))
            {
                return HI_ERR_JPG_PARSE_FAIL;
            }

            s32Ret = JPGConvert2PicInfo(pCurPicInfo, pPicInfo);
            JPG_CHECK_RET(s32Ret, return HI_FAILURE);
        }

        return s32Ret;
		
}

/******************************************************************************
* Function:      JPG_GetStatus
* Description:   get status of the specified instance
* Input:         Handle
* Output:        pState
*                pIndex
* Return:        HI_SUCCESS
*                HI_ERR_JPG_PTR_NULL
*                HI_ERR_JPG_INVALID_HANDLE
* Others:
******************************************************************************/
HI_S32  JPG_GetStatus(JPG_HANDLE Handle, JPG_STATE_E *pState, HI_U32 *pIndex)
{


        JPG_DECCTX_S*     pstCtx;

        /*vaidate handle, input pointer*/
        JPG_EQUAL_HANDLE(Handle);
        JPG_CHECK_DEBUGMEM();
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);
        JPG_CHECK_NULLPTR(pState);
        JPG_CHECK_NULLPTR(pIndex);

        if (pstCtx->ResetFlag)
        {
            pstCtx->State = JPG_STATE_STOP;
            *pState = JPG_STATE_STOP;
            *pIndex = 0;
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "stopped for reset!\n");
        }

        *pIndex = (pstCtx->CurrIndex >= 0) ? (HI_U32)pstCtx->CurrIndex : 0;

        if ((JPG_STATE_PARTPARSED == pstCtx->State)
            || (JPG_STATE_THUMBPARSED == pstCtx->State))
        {
            *pIndex = pstCtx->ThumbCnt;
        }

        *pState = pstCtx->State;

        if (pstCtx->State >= JPG_STATE_DECODED)
        {

            if (JPG_DECTYPE_SW == pstCtx->DecType)
            {
                #if 1
				return HI_FAILURE;
				#else
                if (pstCtx->SDHandle != 0)
                {
                    s32Ret = JPGSDEC_DestroyInstance(pstCtx->SDHandle);
                    JPG_CHECK_RET(s32Ret, return HI_FAILURE);

                    pstCtx->SDHandle = 0;

                    pstCtx->HDecHandle = pstCtx->HDHandle;
                }
				#endif
            }

        }

        return HI_SUCCESS;
		
}


/******************************************************************************
* Function:      JPG_SendStream
* Description:   send stream
* Input:         Handle
*                pWriteInfo
* Output:
* Return:        HI_SUCCESS
*                HI_ERR_JPG_PTR_NULL
*                HI_ERR_JPG_INVALID_PARA
*                HI_ERR_JPG_INVALID_HANDLE
* Others:
******************************************************************************/
HI_S32  JPG_SendStream(HI_U32 Handle, JPGDEC_WRITESTREAM_S *pWriteInfo)
{


        JPG_DECCTX_S*     pstCtx;
        HI_U32 FreeLen;
        HI_U32 MinLen;
        HI_S32 Offset;
        HI_S32 s32Ret;
        HI_BOOL bEOI;
        JPGDEC_WRITESTREAM_S HdStreamInfo;
        JPG_PARSESTATE_S stParseState;
        HI_S32 Avail = HI_FAILURE;
        HI_U8 EOIBuf[2] = {0xFF, 0xD9};
		
		HI_BOOL bAssert = HI_FALSE;

        HI_S32 (*JPGDEC_SendStream)(JPG_HANDLE Handle,
                                    JPGDEC_WRITESTREAM_S * pStreamInfo);

        JPG_EQUAL_HANDLE(Handle);
        JPG_CHECK_DEBUGMEM();
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);

        JPG_CHECK_NULLPTR(pWriteInfo);

        pWriteInfo->CopyLen = 0;

        if (pstCtx->ResetFlag)
        {
            //usleep(20000);
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "stopped for reset!\n");
            return HI_SUCCESS;
        }

        JPGDEC_SendStream = pstCtx->pstruCurrentDec->JPGDEC_SendStream;

        if (((0 == pWriteInfo->StreamLen) && (HI_FALSE == pWriteInfo->EndFlag))
            || ((HI_TRUE == pWriteInfo->NeedCopyFlag) && (NULL == pWriteInfo->pStreamAddr)))
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "input stream err!\n");
            return HI_ERR_JPG_INVALID_PARA;
        }

        pstCtx->bNeedCopy = pWriteInfo->NeedCopyFlag;

        /* err handling: if no EOI the end flag should be passed to the later stage. */
        if ((pstCtx->TotalOffset >= pstCtx->FileLen) && (pstCtx->FileLen != 0))
        {
            bEOI = HI_TRUE;
        }

        switch (pstCtx->State)
        {
        case JPG_STATE_STOP:
        case JPG_STATE_PARSING:
        case JPG_STATE_PARTPARSED:
        case JPG_STATE_THUMBPARSED:
        case JPG_STATE_PARSED:
        case JPG_STATE_DECODED:
            if (pstCtx->CurrIndex >= 0)
            {
                Avail = JPGCheckPicAvail(pstCtx->State, (HI_U32)pstCtx->CurrIndex,
                                         pstCtx->ThumbCnt, pstCtx->ReqIndex);
            }

            if (HI_FAILURE != Avail)
            {
                pWriteInfo->CopyLen = 0;

                //return HI_SUCCESS;
                break;
            }

            FreeLen = JPGBUF_GetFreeLen(&pstCtx->ParseBuf);
            MinLen = (FreeLen <= pWriteInfo->StreamLen) ? FreeLen : pWriteInfo->StreamLen;

            /*copy stream into the parser buffer*/
            if (HI_TRUE == pWriteInfo->NeedCopyFlag)
            {
                s32Ret = JPGBUF_Write(&pstCtx->ParseBuf, pWriteInfo->pStreamAddr, MinLen);
                JPG_CHECK_RET(s32Ret, return HI_FAILURE);

                pWriteInfo->CopyLen = MinLen;
            }
            else
            {
                JPGBUF_SetWrHead(&pstCtx->ParseBuf, pWriteInfo->StreamLen);
                pWriteInfo->CopyLen = pWriteInfo->StreamLen;
            }

            /*must start parse*/
            if (pstCtx->CurrIndex >= 0)
            {
                stParseState.ThumbEcsLen = pstCtx->ThumbEcsLen;
                pstCtx->ThumbEcsLen = 0;

                pstCtx->State = JPG_STATE_PARSING;
                s32Ret = JPGPARSE_Parse(pstCtx->ParseHandle, &pstCtx->ParseBuf,
                                        pstCtx->ReqIndex, pstCtx->bReqExif, &stParseState);
                JPG_CHECK_RET(s32Ret, return HI_FAILURE);

                pstCtx->State = JPG_TransformParseState(stParseState.State);

                /*refresh state*/
                pstCtx->CurrIndex = (HI_S32)stParseState.Index;
                pstCtx->ThumbCnt = stParseState.ThumbCnt;

                /*if parsing do not finish but file end*/
                if ((stParseState.State <= JPGPARSE_STATE_PARTPARSED)
                    && (HI_TRUE == pWriteInfo->EndFlag)
                    && (pWriteInfo->StreamLen == pWriteInfo->CopyLen))
                {
                    JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "File end, parse err!\n");
                    pstCtx->State = JPG_STATE_PARSEERR;
                }
            }

            //return HI_SUCCESS;
            break;

        case JPG_STATE_DECODING:

            /*send data into the hardware buf*/
            pWriteInfo->CopyLen = 0;

            /* if end of ESC is in the HdecBuf, no more stream needed.*/
            if (HI_FALSE == pstCtx->bNeedSend)
            {
                //return HI_SUCCESS;
                break;
            }

            if ((0 == pstCtx->CurrIndex) && (0 == pstCtx->ReqIndex))
            {
                /*need not search EOI if it is main pic.*/

                bEOI   = pWriteInfo->EndFlag;
                Offset = (HI_S32)pWriteInfo->StreamLen;
            }
            else
            {
                /* if it is thumb, search EOI to find where is the proper ESC data. data length = the bytes prior to EOI */
                s32Ret = JPGCheckJpegEOI(pWriteInfo->pStreamAddr,
                                         pWriteInfo->StreamLen, pstCtx->bParsedFF, &Offset);
                JPG_CHECK_RET(s32Ret, return HI_FAILURE);

                /*Offset is the length from the stream base address to the EOI,
                if the thumb is very large, and EOI is not found in this stream block, offset is asigned to the size of the data packet.
                'offset' is greater than 0 in most cases. but if the esc data, along with the 'FF' byte which is part of the ECS marker,
                have already been sent to the parsebuf, 'offset' should be asigned to '-1'. */

                bEOI = (HI_SUCCESS == s32Ret) ? HI_TRUE : HI_FALSE;
            }

            if (Offset > 0)
            {
                /*add 'ff' if necessary*/
                if ((HI_TRUE == pstCtx->bParsedFF) && (HI_TRUE == pstCtx->bNeedCopy))
                {
                    HdStreamInfo.pStreamAddr = (HI_VOID*)EOIBuf;
                    HdStreamInfo.StreamLen = 1;
                    HdStreamInfo.EndFlag = HI_FALSE;
                    HdStreamInfo.NeedCopyFlag = HI_TRUE;
                    s32Ret = JPGDEC_SendStream(pstCtx->HDecHandle, &HdStreamInfo);
                    JPG_CHECK_RET(s32Ret, return HI_FAILURE);

                    pstCtx->bParsedFF = (1 == HdStreamInfo.CopyLen) ? HI_FALSE : pstCtx->bParsedFF;
                }

                /*send data to the hardware decoder buffer*/
                HdStreamInfo.pStreamAddr = pWriteInfo->pStreamAddr;
                HdStreamInfo.StreamLen = (HI_U32)Offset;
                HdStreamInfo.EndFlag = bEOI;
                HdStreamInfo.NeedCopyFlag = pWriteInfo->NeedCopyFlag;
                s32Ret = JPGDEC_SendStream(pstCtx->HDecHandle, &HdStreamInfo);
                JPG_CHECK_RET(s32Ret, return HI_FAILURE);

                pWriteInfo->CopyLen = HdStreamInfo.CopyLen;
                if (0 == HdStreamInfo.CopyLen)
                {
                    //return HI_SUCCESS;
                    break;
                }

                if (0 != pstCtx->CurrIndex)
                {
                    pstCtx->ThumbEcsLen += HdStreamInfo.CopyLen;
                }

                if ((HI_TRUE == bEOI)
                    && (HdStreamInfo.StreamLen == HdStreamInfo.CopyLen))
                {
                    pstCtx->bNeedSend = HI_FALSE;
                }
            }
            else
            {
                if (HI_TRUE == pWriteInfo->NeedCopyFlag)
                {
                    HdStreamInfo.pStreamAddr = EOIBuf;
                }
                else
                {
                    /*in File/Mem cases, the api have already copied the data, stream address is not needed here.*/
                    HdStreamInfo.pStreamAddr = HI_NULL;
                }

                HdStreamInfo.StreamLen = 2;
                HdStreamInfo.EndFlag = HI_TRUE;
                HdStreamInfo.NeedCopyFlag = pWriteInfo->NeedCopyFlag;
                s32Ret = JPGDEC_SendStream(pstCtx->HDecHandle, &HdStreamInfo);
                JPG_CHECK_RET(s32Ret, return HI_FAILURE);

                pstCtx->bParsedFF   = (2 == HdStreamInfo.CopyLen) ? HI_FALSE : pstCtx->bParsedFF;
                pWriteInfo->CopyLen = 0;

                pstCtx->bNeedSend = HI_FALSE;
            }
            break;

        case JPG_STATE_PARSEERR:
        case JPG_STATE_DECODEERR:
            pWriteInfo->CopyLen = 0;
            break;

        default:
			/** revise by yanjianqing **/
            jpg_assert((HI_FALSE!=bAssert), return HI_FAILURE);
        }

        pstCtx->TotalOffset += pWriteInfo->CopyLen;


        return HI_SUCCESS;
		
}

/******************************************************************************
* Function:      JPG_ResetDecoder
* Description:   reset decoder instance
* Input:         Handle
* Output:
* Return:        HI_SUCCESS
*                HI_ERR_JPG_INVALID_HANDLE
* Others:
******************************************************************************/
HI_S32  JPG_ResetDecoder(JPG_HANDLE Handle)
{


        JPG_DECCTX_S* pstCtx;
        HI_S32 s32Ret;

        JPG_EQUAL_HANDLE(Handle);
        JPG_CHECK_DEBUGMEM();
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);

        if (pstCtx->ResetFlag)
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "return for asyn reset!\n");
            return HI_SUCCESS;
        }

        /*reset the parser*/
        s32Ret = JPGPARSE_Reset(pstCtx->ParseHandle);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        /*reset the buf of the parser*/
        JPGBUF_Reset(&pstCtx->ParseBuf);

        /*reset other parameters in the context*/
        pstCtx->State = JPG_STATE_STOP;
        pstCtx->CurrIndex = -1;
        pstCtx->ReqIndex    = 0;
        pstCtx->ThumbCnt    = 0;
        pstCtx->bParsedFF   = HI_FALSE;
        pstCtx->bNeedSend   = HI_TRUE;
        pstCtx->ThumbEcsLen = 0;

        pstCtx->bReqExif    = HI_FALSE;
        pstCtx->pExifAddr   = NULL;
        pstCtx->TotalOffset = 0;

        if (pstCtx->HDecHandle != 0)
        {
            s32Ret = pstCtx->pstruCurrentDec->JPGDEC_Reset(pstCtx->HDecHandle);
            JPG_CHECK_RET(s32Ret, return HI_FAILURE);

            s32Ret = pstCtx->pstruCurrentDec->JPGDEC_FlushBuf(pstCtx->HDecHandle);
            JPG_CHECK_RET(s32Ret, return HI_FAILURE);
        }


        return HI_SUCCESS;
		
}


/******************************************************************************
* Function:      JPG_ResetDecoder1
* Description:   asynchronously reset the decoder instance
* Input:         Handle
* Output:
* Return:        HI_SUCCESS
*                HI_ERR_JPG_INVALID_HANDLE
* Others:
******************************************************************************/
HI_S32  JPG_ResetDecoder1(JPG_HANDLE Handle)
{


        JPG_DECCTX_S* pstCtx;
        HI_S32 s32Ret;

        JPG_EQUAL_HANDLE(Handle);
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);

        if (pstCtx->ResetFlag)
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "asyn reset exists!\n");
            return HI_ERR_JPG_DEC_BUSY;
        }

        pstCtx->ResetFlag = HI_TRUE;
        JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "received asyn reset!\n");

        if (JPG_DECTYPE_HW == pstCtx->DecType)
        {
            if (pstCtx->HDecHandle != 0)
            {
                s32Ret = pstCtx->pstruCurrentDec->JPGDEC_Reset1(pstCtx->HDecHandle);
                JPG_CHECK_RET(s32Ret, return HI_FAILURE);
            }
        }
        else
        {
            #if 1
			/** 不支持软件解码 **/
            return HI_FAILURE;
			#else
            s32Ret = pstCtx->pstruCurrentDec->JPGDEC_Reset1(pstCtx->HDecHandle);
            JPG_CHECK_RET(s32Ret, return HI_FAILURE);
			#endif
        }

        /*since reset applied, hardware dec error should be cleared*/
        pstCtx->bHDecErr = HI_FALSE;

        return HI_SUCCESS;
		
}

static JPG_STATE_E JPG_TransformHdState(JPG_HDSTATE_E enState)
{
    return (JPG_STATE_E)enState;
}

/******************************************************************************
* Function:      JPG_IsNeedStream
* Description:   require if the decoder need more stream or not, if need, return the size of the free buffer
* Input:         Handle
* Output:        pSize
* Return:        HI_SUCCESS
*                    HI_FAILURE
* Others:
******************************************************************************/
HI_S32  JPG_IsNeedStream(JPG_HANDLE Handle, HI_VOID** pAddr, HI_U32 *pSize)
{


        JPG_DECCTX_S*     pstCtx;
        HI_S32 s32Ret;
        JPG_HDSTATE_E HdState;
        HI_S32 Avail = HI_FAILURE;

		HdState = (JPG_HDSTATE_E)JPG_STATE_STOP;
		
        JPG_EQUAL_HANDLE(Handle);
        JPG_CHECK_DEBUGMEM();
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);

        if (pstCtx->ResetFlag)
        {
            pstCtx->State = JPG_STATE_STOP;
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "stopped for reset!\n");
            return HI_FAILURE;
        }

        if (JPG_STATE_STOP == pstCtx->State)
        {
            s32Ret = JPGBUF_GetFreeInfo(&pstCtx->ParseBuf, pAddr, pSize);
            JPG_CHECK_RET(s32Ret, return HI_FAILURE);

            if (0 == *pSize)
            {
                return HI_FAILURE;
            }

            return HI_SUCCESS;
        }

        /* request the state of the decode controller*/
        /*if the main pic or thumb is been parsed... */
        if (((JPG_STATE_PARSING <= pstCtx->State) && (JPG_STATE_PARSED > pstCtx->State))
            || ((0 == pstCtx->ReqIndex) && (pstCtx->CurrIndex != (HI_S32)pstCtx->ReqIndex))
            || ((0 != pstCtx->ReqIndex) && (pstCtx->CurrIndex < (HI_S32)pstCtx->ReqIndex)
                && (0 != pstCtx->CurrIndex)))
        {
            /*if the task is finished*/
            if (JPG_STATE_PARSING != pstCtx->State)
            {
                if (pstCtx->CurrIndex >= 0)
                {
                    Avail = JPGCheckPicAvail(pstCtx->State, (HI_U32)pstCtx->CurrIndex,
                                             pstCtx->ThumbCnt, pstCtx->ReqIndex);
                }

                if ((HI_SUCCESS == Avail)
                    || (HI_ERR_JPG_THUMB_NOEXIST == Avail))
                {
                    *pSize = 0;
                    return HI_FAILURE;
                }
            }

            s32Ret = JPGBUF_GetFreeInfo(&pstCtx->ParseBuf, pAddr, pSize);
            JPG_CHECK_RET(s32Ret, return HI_FAILURE);

            if (0 == *pSize)
            {
                /*parsebuffer full is an error, cleare all*/
                pstCtx->State = JPG_STATE_PARSEERR;
                JPGBUF_Reset(&pstCtx->ParseBuf);

                return HI_FAILURE;
            }

            return HI_SUCCESS;
        }
        /* if decoding... */
        else if (JPG_STATE_DECODING == pstCtx->State)
        {
            /*if handle is null, asynchronous reset maybe applied*/
            if (0 == pstCtx->HDecHandle)
            {
                return HI_FAILURE;
            }

            /*request the state of the hardware decoder*/
            s32Ret = pstCtx->pstruCurrentDec->JPGDEC_Status(pstCtx->HDecHandle, pAddr, pSize, &HdState);

            JPG_CHECK_RET(s32Ret, return HI_FAILURE);

            /*maintain the state of the decoder controller according to the interrupt type*/
            pstCtx->State = JPG_TransformHdState(HdState);

            if (JPG_STATE_DECODING == pstCtx->State)
            {
                if (HI_ERR_JPG_WANT_STREAM != s32Ret)
                {
                    *pSize = 0;
                    return HI_FAILURE;
                }

                if (pstCtx->DecType == JPG_DECTYPE_HW)
                {
                    if (*pSize >= JPG_STREAM_PART)
                    {
                        *pSize = JPG_STREAM_PART;
                    }
                }

                return HI_SUCCESS;
            }
        }

        /*it is equivalant to interrupt handling*/
        if (JPG_STATE_DECODED <= pstCtx->State)
        {

            if (JPG_DECTYPE_SW == pstCtx->DecType)
            {
                #if 1
				return HI_FAILURE;
				#else
                if (pstCtx->SDHandle != 0)
                {
                    s32Ret = JPGSDEC_DestroyInstance(pstCtx->SDHandle);
                    JPG_CHECK_RET(s32Ret, return HI_FAILURE);

                    pstCtx->SDHandle = 0;

                    /* attention: must switch to hardware decode after software decoder is finished. */
                    pstCtx->HDecHandle = pstCtx->HDHandle;
                }
				#endif
            }

            /* prepare to decode it with software decoder, since the hardware decoder reported error */
            pstCtx->bHDecErr = (pstCtx->State == JPG_STATE_DECODEERR) ? HI_TRUE : HI_FALSE;

            *pSize = 0;
            return HI_FAILURE;
			
        }

        *pSize = 0;
        return HI_FAILURE;
		
}

/******************************************************************************
* Function:      JPG_GetExifData
* Description:   get App1 Exif
* Input:         Handle
* Output:        pAddr
*                pSize
* Return:        HI_SUCCESS
*                HI_ERR_JPG_INVALID_HANDLE
*                HI_ERR_JPG_WANT_STREAM
*                HI_ERR_JPG_PARSE_FAIL
*                HI_ERR_JPG_NO_MEM:
* Others:
******************************************************************************/
HI_S32  JPG_GetExifData(JPG_HANDLE Handle, HI_VOID** pAddr, HI_U32 *pSize)
{


        JPG_DECCTX_S*   pstCtx;
        HI_S32 s32Ret;
		HI_S32 s32RetVal;
        HI_U32 Index = 1;
        JPG_PARSESTATE_S stParseState;

        /*validate the input handle*/
        JPG_EQUAL_HANDLE(Handle);
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);

        *pAddr = NULL;
        *pSize = 0;

        pstCtx->bReqExif = HI_TRUE;

        /*call parsing*/
        pstCtx->ReqIndex = Index;
        stParseState.ThumbEcsLen = pstCtx->ThumbEcsLen;
        pstCtx->ThumbEcsLen = 0;
        s32Ret = JPGPARSE_Parse(pstCtx->ParseHandle, &pstCtx->ParseBuf,
                                Index, pstCtx->bReqExif, &stParseState);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        if (HI_SUCCESS == s32Ret)
        {
            s32RetVal = JPGPARSE_GetExifInfo(pstCtx->ParseHandle, pAddr, pSize);
			if(HI_SUCCESS!=s32RetVal)
			{
                return HI_FAILURE;
			}
            pstCtx->pExifAddr = (*pAddr);
            pstCtx->bReqExif = HI_FALSE;

            return HI_SUCCESS;
        }
        else if (HI_ERR_JPG_WANT_STREAM == s32Ret)
        {
            return HI_ERR_JPG_WANT_STREAM;
        }
        else if (HI_ERR_JPG_NO_MEM == s32Ret)
        {
            return HI_ERR_JPG_NO_MEM;
        }

        pstCtx->bReqExif = HI_FALSE;
        return HI_ERR_JPG_PARSE_FAIL;
		
}

/******************************************************************************
* Function:      JPG_ReleaseExifData
* Description:   release App1 Exif
* Input:         Handle
*                pAddr
* Output:
* Return:        HI_SUCCESS
*                HI_FAILURE
* Others:
******************************************************************************/
HI_S32  JPG_ReleaseExifData(JPG_HANDLE Handle, const HI_VOID* pAddr)
{


        JPG_DECCTX_S*   pstCtx;
        HI_S32 s32Ret;

        JPG_EQUAL_HANDLE(Handle);
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);

        /*validate the pointer...*/
        JPG_CHECK_NULLPTR(pAddr);

        if (pAddr != pstCtx->pExifAddr)
        {
            return HI_ERR_JPG_INVALID_PARA;
        }

        s32Ret = JPGPARSE_ReleaseExif(JPGFMW_DEFAULT_HANDLE, pAddr);
        JPG_CHECK_RET(s32Ret, return HI_FAILURE);

        pstCtx->pExifAddr = NULL;

        return HI_SUCCESS;
		
}

/******************************************************************************
* Function:      JPG_HdecCheck
* Description:   inquire if the hardware can decode this jpeg image or not
* Input:         Handle
*                pSurface display surface
*                Index
* Output:
* Return:        HI_SUCCESS
*                HI_FAILURE
*                HI_ERR_JPG_INVALID_HANDLE
*                HI_ERR_JPG_DEC_FAIL
* Others:
******************************************************************************/
HI_S32 JPG_HdecCheck(JPG_HANDLE Handle, HI_U32 Index)
{


        JPG_DECCTX_S*   pstCtx;
        HI_S32 s32Ret;
        JPGDEC_CHECKINFO_S CheckInfo;
        JPG_PICPARSEINFO_S*  pCurPicInfo;

        HI_S32 Avail = HI_FAILURE;

        HI_U32 SurfaceSize;


        JPG_EQUAL_HANDLE(Handle);
        JPG_CHECK_DEBUGMEM();
        pstCtx = (JPG_DECCTX_S*)JPGFMW_Handle_GetInstance(Handle);
        JPG_CHECK_HANDLE(pstCtx);

        if (pstCtx->ResetFlag)
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "stopped for reset!\n");
            return HI_ERR_JPG_DEC_FAIL;
        }

        /*checi if the image was parsed over*/
        Avail = JPGCheckPicAvail(pstCtx->State, (HI_U32)pstCtx->CurrIndex,
                                 pstCtx->ThumbCnt, Index);
        if (Avail != HI_SUCCESS)
        {
            return HI_ERR_JPG_DEC_FAIL;
        }

        /*the decoder status must be: parsed over*/
        if (!((JPG_STATE_PARTPARSED <= pstCtx->State) && (JPG_STATE_PARSED >= pstCtx->State)))
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Decode before parsed forbidden!\n");
            return HI_ERR_JPG_DEC_FAIL;
        }

        /*scan the list to get the info of the specified picture*/
        JPG_GETCURPICINFO(pstCtx->ParseHandle, Index, pCurPicInfo);

        /*check if any error exit...*/
        s32Ret = JPGPreCheck(pCurPicInfo, &CheckInfo);
        if (HI_ERR_JPG_DEC_FAIL == s32Ret)
        {
            pstCtx->State = JPG_STATE_DECODEERR;
            return HI_ERR_JPG_DEC_FAIL;
        }

        s32Ret = JPGHDEC_Check(JPGFMW_DEFAULT_HANDLE, &CheckInfo);
        jpg_assert((HI_SUCCESS == s32Ret) || (HI_FAILURE == s32Ret),
                   return HI_ERR_JPG_DEC_FAIL);

        /* need software decode to apply software scaling if the picture size exceed the max*/
        /*also if the stream is too large software decoder is needed.*/
        SurfaceSize = (pCurPicInfo->Width * pCurPicInfo->Height * 2);

        if (SurfaceSize + pstCtx->FileLen > (30 << 20))
        {
            return HI_FAILURE;
        }

        return s32Ret;

		
}
