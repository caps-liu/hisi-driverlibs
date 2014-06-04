/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpg_hdec.c

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

#define JPG_SWAP(a, b) \
    do { \
        a = a + b; \
        b = a - b; \
        a = a - b; \
    } while (0)

#define GET_PA(V, P, va) (((HI_U32)(va) - (HI_U32)(V)) + (P))



#define X5_JPGHDEC_BUFLEN (128 << 10) * 2
#define X5_JPGREG_START 0x0
#define X5_JPGREG_RESUME 0x4
#define X5_JPGREG_RESET 0x8
#define X5_JPGREG_STRIDE 0xC
#define X5_JPGREG_PICSIZE 0x10
#define X5_JPGREG_PICTYPE 0x14
#define X5_JPGREG_STADDR 0x20
#define X5_JPGREG_ENDADDR 0x24
#define X5_JPGREG_STADD 0x28
#define X5_JPGREG_ENDADD 0x2C
#define X5_JPGREG_YSTADDR 0x30
#define X5_JPGREG_UVSTADDR 0x34
#define X5_JPGREG_SCALE 0x40
#define X5_JPGREG_INT 0x100
#define X5_JPGREG_INTMASK 0x104
#define X5_JPGREG_QUANT 0x200
#define X5_JPGREG_HDCTABLE 0x300
#define X5_JPGREG_HACMINTABLE 0x340
#define X5_JPGREG_HACBASETABLE 0x360
#define X5_JPGREG_HACSYMTABLE 0x400


/*************************** Structure Definition ****************************/

typedef union hiJPG_START_U
{
    struct
    {
        HI_U32 Start     : 1;
        HI_U32  Reset    : 1;
        HI_U32  Reserve   : 30; 
    } struBits;

    HI_U32 All;
} JPG_START_U;

typedef union hiJPG_RESUME_U
{
    struct
    {
        HI_U32 Start     : 1;
        HI_U32 LastFlag  : 1;
        HI_U32 Reserve   : 30;
    } struBits;

    HI_U32 All;
} JPG_RESUME_U;

typedef union hiJPG_RESET_U
{
    struct
    {
        HI_U32 Reset     : 1;
        HI_U32 Reserve   : 31;
    } struBits;

    HI_U32 All;
} JPG_RESET_U;

typedef union hiJPG_STRIDE_U
{
    struct
    {
#ifdef CHIP_TYPE_hi3716cv200es
        HI_U32  Reserve0   : 6;  
        HI_U32  YStride   : 10; 
        HI_U32  Reserve1   : 6;  
        HI_U32  UVStride  : 10; 
#else
        HI_U32  YStride   : 16; 
        HI_U32  UVStride  : 16; 
#endif
    } struBits;

    HI_U32 All;
} JPG_STRIDE_U;

typedef union hiJPG_PICSIZE_U
{
    struct
    {
        HI_U32 MCUWidth  : 10;
        HI_U32 Reserve0   : 6;
        HI_U32 MCUHeight : 10;
        HI_U32 Reserve1   : 6;
    } struBits;

    HI_U32 All;
} JPG_PICSIZE_U;

typedef union hiJPG_PICTYPE_U
{
    struct
    {
        HI_U32 PicType   : 3;
        HI_U32 Reserve0   : 5;
        HI_U32 PicStr    : 1;
        HI_U32 Reserve1  : 23;
    } struBits;

    HI_U32 All;
} JPG_PICTYPE_U;

typedef union hiJPG_STADDR_U
{
    struct
    {
        HI_U32 Reserve0   : 6;
        HI_U32 StAddr    : 23;
        HI_U32 Reserve1   : 3;
    } struBits;

    HI_U32 All;
} JPG_STADDR_U;

typedef union hiJPG_ENDADDR_U
{
    struct
    {
        HI_U32 Reserve0   : 6;
        HI_U32 EndAddr    : 23;
        HI_U32 Reserve1   : 3;
    } struBits;

    HI_U32 All;
} JPG_ENDADDR_U;

typedef union hiJPG_STADD_U
{
    struct
    {
        HI_U32 StAdd     : 29;
        HI_U32 Reserve   : 3;
    } struBits;

    HI_U32 All;
} JPG_STADD_U;

typedef union hiJPG_ENDADD_U
{
    struct
    {
        HI_U32 EndAdd    : 29;
        HI_U32 Reserve   : 3;
    } struBits;

    HI_U32 All;
} JPG_ENDADD_U;

typedef union hiJPG_YSTADDR_U
{
    struct
    {
        HI_U32 Reserve0   : 6;
        HI_U32 YStaddr   : 23;
        HI_U32 Reserve1   : 3;
    } struBits;

    HI_U32 All;
} JPG_YSTADDR_U;

typedef union hiJPG_UVSTADDR_U
{
    struct
    {
        HI_U32 Reserve0   : 6;
        HI_U32 UVStaddr   : 23;
        HI_U32 Reserve1   : 3;
    } struBits;

    HI_U32 All;
} JPG_UVSTADDR_U;

typedef union hiJPG_SCALE_U
{
    struct
    {
        HI_U32 Scale   : 2;
        HI_U32  jidct_emar_en : 1;
        HI_U32  ck_gt_en : 1;
        HI_U32 Outstanding : 4;
        HI_U32 Reserve : 24;
    } struBits;

    HI_U32 All;
} JPG_SCALE_U;

typedef union hiJPG_INTMASK_U
{
    struct
    {
        HI_U32 Fnsh    : 1;
        HI_U32 Err     : 1;
        HI_U32 Res     : 1;
        HI_U32 Reserve : 29;
    } struBits;

    HI_U32 All;
} JPG_INTMASK_U;


#define  JPGHDEC_WRITE_REG(baseaddr, offset, value) \
do {\
    (*(volatile HI_U32 *)((HI_U32)(baseaddr) + (offset)) = (value)); \
                                                           } while (0)

#define  JPGHDEC_READ_REG(baseaddr, offset, value) \
do {\
    (value) = (*(volatile HI_U32 *)((HI_U32)(baseaddr) + (offset))); \
} while (0)



/********************** Global Variable declaration **************************/

static HI_U8 DC_codelen[2][13];
static HI_U16 DC_codeword[2][13];
static HI_U8 DC_category[2][12];
static HI_U8 AC_RunSize[2][256];
static HI_U8 AC_Mincode[2][16];
static HI_S8 AC_BaseOffset[2][16];

HI_U16 g_HwVersion = 0;

/******************************* API declaration *****************************/

extern HI_U32  JPG_MMB_Alloc(HI_U32 Size, HI_U32 align, HI_U8* mmb_name, HI_U32 cached, HI_VOID** ppVirtAddr);
extern HI_VOID JPG_MMB_Free(HI_U32 PhysAddr);



/*****************************************************************************

*****************************************************************************/


/*******************************************************************************
* Function:        JpegDrvAssembleQTbl
* Description:
* Data Accessed:
* Data Updated:
* Input:           pQTbl
*                  pDstAddr
* Output:
* Return:
* Others:
*******************************************************************************/
static HI_VOID JpgHDecAssembleQTbl(HI_VOID *             pRegVirPtr,
                                   JPG_QUANT_TBL * const pQTbl[])
{


	    HI_U16 *pQY, *pQCb;
	    HI_U32 Cnt;
	    HI_U32 *pOutput;

	    HI_U16 *pQCr;


	    pQY = (HI_U16*)pQTbl[0]->Quantval;

	    if (HI_NULL != pQTbl[1])
	    {
	        pQCb = (HI_U16 *)pQTbl[1]->Quantval;
	        if (HI_NULL != pQTbl[2])
	        {
	            pQCr = (HI_U16*)pQTbl[2]->Quantval;
	        }
	        else
	        {
	            pQCr = (HI_U16 *)pQTbl[1]->Quantval;
	        }
	    }
	    else
	    {
	        pQCb = (HI_U16*)pQTbl[0]->Quantval;
	        pQCr = (HI_U16*)pQTbl[0]->Quantval;
	    }

	    pOutput = (HI_U32 *)((HI_U8*)pRegVirPtr + X5_JPGREG_QUANT);

	    for (Cnt = 0; Cnt < 64; Cnt++)
	    {
	        *pOutput++ = (HI_U32)(((HI_U32)((*pQCr & 0xFF) << 16))
	                              | ((HI_U32)((*pQCb & 0xFF) << 8))
	                              | ((HI_U32)(*pQY & 0xFF)));
	        pQCb++;
	        pQCr++;
	        pQY++;
	    }

	    return;

	 
}

/*******************************************************************************
* Function:        JpegDrvMakeDcHuffTbl
* Description:
* Input:           pHTbl
*                  Tblno
* Output:
* Return:
* Others:
*******************************************************************************/
static HI_S32 JpgHDecMakeDcHuffTbl (const JPG_HUFF_TBL *pHTbl, HI_U32 Tblno)
{



	    HI_U32 NumSymbols, Code, NumP, NumL, NumI, Si;

	    if ((2 <= Tblno) || (pHTbl == HI_NULL))
	    {
	        return HI_FAILURE;
	    }

	    JPGVCOS_memset(DC_codelen[Tblno], 0, sizeof(DC_codelen[Tblno]));
	    JPGVCOS_memset(DC_codeword[Tblno], 0, sizeof(DC_codeword[Tblno]));

	    /*Huffman Code length*/
	    NumP = 0;
	    for (NumL = 1; NumL <= 12; NumL++)
	    {
	        NumI = pHTbl->Bits[NumL];

	        if (NumP + NumI > 12)
	        {
	            return HI_FAILURE;
	        }

	        while (NumI--)
	        {
	            DC_codelen[Tblno][NumP++] = (HI_U8) NumL;
	        }
	    }

	    DC_codelen[Tblno][NumP] = 0;
	    NumSymbols = NumP;

	    /* huffman code*/
	    Code = 0;
	    Si   = DC_codelen[Tblno][0];
	    NumP = 0;
	    while (DC_codelen[Tblno][NumP])
	    {
	        while (DC_codelen[Tblno][NumP] == Si)
	        {
	            DC_codeword[Tblno][NumP++] = (HI_U16)Code;
	            Code++;
	        }

	        if (((HI_S32) Code) >= (((HI_S32) 1) << Si))
	        {
	            return HI_FAILURE;
	        }

	        Code <<= 1;
	        Si++;
    	}


	    JPGVCOS_memset(DC_category[Tblno], 0xFF, sizeof(DC_category[Tblno]));
	    JPGVCOS_memcpy(DC_category[Tblno], pHTbl->HuffVal, pHTbl->HuffValLen);

	    jpg_assert((NumSymbols < 13), return HI_FAILURE);
	    for (NumI = 0; NumI < NumSymbols; NumI++)
	    {
	        HI_U8 Sym = pHTbl->HuffVal[NumI];
	        if (15 < Sym)
	        {
	            return HI_FAILURE;
	        }
	    }

        return HI_SUCCESS;

		
}

/*******************************************************************************
* Function:        JpgHDecMakeAcHuffTbl
* Description:
* Input:           pHTbl
*                  Tblno
* Output:
* Return:
* Others:
*******************************************************************************/
static HI_S32 JpgHDecMakeAcHuffTbl (const JPG_HUFF_TBL *pHTbl, HI_U32 Tblno)
{


	    HI_CHAR HuffSize[257] = {0};
	    HI_U32 HuffCode[257] = {0};
	    HI_U32 MaxCodeLen = 0;
	    HI_U32 NumP, NumI, NumJ, Si, NumSymbols, Code;
	    HI_S32 NumL;

	    if ((2 <= Tblno) || (pHTbl == HI_NULL))
	    {
	        return HI_FAILURE;
	    }

	    /*Huffman Code length*/
	    NumP = 0;
	    for (NumL = 1; NumL <= 16; NumL++)
	    {
	        NumI = (HI_U32) pHTbl->Bits[NumL];

	        if (NumP + NumI > 256)
	        {
	            return HI_FAILURE;
	        }

	        while (NumI--)
	        {
	            HuffSize[NumP++] = (HI_CHAR) NumL;
	        }
	    }

	    HuffSize[NumP] = 0;
	    NumSymbols = NumP;

	    /* huffman code*/
	    Code = 0;
	    Si   = (HI_U32)((HI_U8)HuffSize[0]);
	    NumP = 0;
	    while (HuffSize[NumP])
	    {
	        while (((HI_U32)((HI_U8)HuffSize[NumP])) == Si)
	        {
	            HuffCode[NumP++] = Code;
	            Code++;
	        }

	        if (((HI_S32) Code) >= (((HI_S32) 1) << Si))
	        {
	            return HI_FAILURE;
	        }

	        Code <<= 1;
	        Si++;
	    }

	    for (NumL = 15; NumL >= 0; NumL--)
	    {
	        if (0 != pHTbl->Bits[NumL + 1])
	        {
	            MaxCodeLen = (HI_U32)NumL;
	            break;
	        }
	    }

	    NumP = 0;
	    jpg_assert(((HI_S32)MaxCodeLen < 16), return HI_FAILURE);
	    for (NumL = 0; NumL <= (HI_S32)MaxCodeLen; NumL++)
	    {
	        if (pHTbl->Bits[NumL + 1])
	        {
	            AC_Mincode[Tblno][NumL] = (HI_U8)HuffCode[NumP];
	            AC_BaseOffset[Tblno][NumL] = (HI_S8)((HI_S32) NumP - (HI_S32) HuffCode[NumP]);
	            NumP += pHTbl->Bits[NumL + 1];
	        }
	        else
	        {
	            NumJ = (HI_U32)NumL + 1;
	            while ((NumJ <= MaxCodeLen) && (pHTbl->Bits[NumJ + 1] == 0))
	            {
	                NumJ++;
	            }

	            AC_Mincode[Tblno][NumL] = (HI_U8)(HuffCode[NumP] >> (NumJ - (HI_U32)NumL));
	            AC_BaseOffset[Tblno][NumL] = 0;
	        }
	    }

	    for (NumL = (HI_S32)MaxCodeLen + 1; NumL < 16; NumL++)
	    {
	        AC_Mincode[Tblno][NumL] = 0xff;
	        AC_BaseOffset[Tblno][NumL] = 0;
	    }

	    JPGVCOS_memset(AC_RunSize[Tblno], 0, sizeof (AC_RunSize[Tblno]));
	    JPGVCOS_memcpy(AC_RunSize[Tblno], pHTbl->HuffVal, NumSymbols);

	    return HI_SUCCESS;
		
}

/*******************************************************************************
* Function:        JpgHDecBuildHTbl
* Description:
* Data Accessed:
* Data Updated:
* Input:           pDcHuffTbl    DC
*                  pAcHuffTbl    AC
* Output:
* Return:
* Others:
*******************************************************************************/
static HI_S32 JpgHDecBuildHTbl(JPG_HUFF_TBL * const pDcHuffTbl[],
                                          JPG_HUFF_TBL * const pAcHuffTbl[])
{



	    HI_U32 Cnt;
	    HI_S32 Ret;

	    for (Cnt = 0; Cnt < 4; Cnt++)
	    {
	        if (pDcHuffTbl[Cnt])
	        {
	            Ret = JpgHDecMakeDcHuffTbl(pDcHuffTbl[Cnt], Cnt);
	            if (HI_FAILURE == Ret)
	            {
	                return HI_FAILURE;
	            }
	        }
	        else
	        {
	            break;
	        }
	    }

	    for (Cnt = 0; Cnt < 4; Cnt++)
	    {
	        if (pAcHuffTbl[Cnt])
	        {
	            Ret = JpgHDecMakeAcHuffTbl(pAcHuffTbl[Cnt], Cnt);
	            if (HI_FAILURE == Ret)
	            {
	                return HI_FAILURE;
	            }
	        }
	        else
	        {
	            break;
	        }
	    }

	    return HI_SUCCESS;
	
}

/*******************************************************************************
* Function:        JPEGHDECCateGorySort
* Description:
* Data Accessed:
* Data Updated:
* Input:
* Output:
* Return:
* Others:
*******************************************************************************/
static HI_VOID JpgHDecCateGorySort(HI_U32 Index)
{


	    HI_S32 Cnt1, Cnt2;
	    HI_BOOL ExChange = HI_TRUE;

	    for (Cnt1 = 0; Cnt1 < 11; Cnt1++)
	    {
	        ExChange = HI_FALSE;
	        jpg_assert((Cnt1 >= 0), return );
	        for (Cnt2 = 10; Cnt2 >= Cnt1; Cnt2--)
	        {
	            if (DC_category[Index][Cnt2 + 1] < DC_category[Index][Cnt2])
	            {
	                JPG_SWAP(DC_category[Index][Cnt2 + 1], DC_category[Index][Cnt2]);
	                JPG_SWAP(DC_codeword[Index][Cnt2 + 1], DC_codeword[Index][Cnt2]);
	                JPG_SWAP(DC_codelen[Index][Cnt2 + 1], DC_codelen[Index][Cnt2]);
	                ExChange = HI_TRUE;
	            }
	        }

	        if (HI_FALSE == ExChange)
	        {
	            return;
	        }
	    }

	    return;
	
}

/*******************************************************************************
* Function:        JpgHDecAssembleHTbl
* Description:
* Data Accessed:
* Data Updated:
* Input:           pRegVirPtr
*                  pDcHuffTbl    DC
*                  pAcHuffTbl    AC
* Output:
* Return:
* Others:
*******************************************************************************/
static HI_S32 JpgHDecAssembleHTbl(HI_VOID *pRegVirPtr,
                                               JPG_HUFF_TBL *  pDcHuffTbl[], 
                                               JPG_HUFF_TBL * pAcHuffTbl[])
{



	    HI_U16 *pu16DCCodeWord0, *pu16DCCodeWord1;
	    HI_U8 *pu8DCCategory0, *pu8DCCategory1;
	    HI_U8 *pu8DCCodeLen0, *pu8DCCodeLen1;
	    HI_U8 *pu8ACMinCode0, *pu8ACMinCode1;
	    HI_U8 *pu8ACBaseMem0, *pu8ACBaseMem1;
	    HI_U8 *pu8ACRunSize0, *pu8ACRunSize1;
	    HI_U32 u32Cnt;
	    HI_U32 *pDstAddr;
	    HI_S32 Ret;

	    if (HI_NULL == pDcHuffTbl[1])
	    {
	        pDcHuffTbl[1] = pDcHuffTbl[0];
	    }

	    if (HI_NULL == pAcHuffTbl[1])
	    {
	        pAcHuffTbl[1] = pAcHuffTbl[0];
	    }

	    Ret = JpgHDecBuildHTbl((JPG_HUFF_TBL **)pDcHuffTbl,
	                           (JPG_HUFF_TBL **)pAcHuffTbl);
	    if (HI_FAILURE == Ret)
	    {
	        return HI_FAILURE;
	    }

	    JpgHDecCateGorySort(0);
	    JpgHDecCateGorySort(1);

	    pu16DCCodeWord0 = *(DC_codeword + 0);
	    pu16DCCodeWord1 = *(DC_codeword + 1);
	    pu8DCCategory0 = *(DC_category + 0);
	    pu8DCCategory1 = *(DC_category + 1);
	    pu8DCCodeLen0 = *(DC_codelen + 0);
	    pu8DCCodeLen1 = *(DC_codelen + 1);

        pDstAddr = (HI_U32 *)((HI_U32)pRegVirPtr + X5_JPGREG_HDCTABLE);

	    for (u32Cnt = 0; u32Cnt < 12; u32Cnt++)
	    {
	        *(pDstAddr + u32Cnt) = 0XFFFF;
	    }

	    u32Cnt = 0;

	    while ((0xFF != *pu8DCCategory0) && (u32Cnt < 12))
	    {
	        *(pDstAddr + *pu8DCCategory0) = (*(pDstAddr + *pu8DCCategory0) & (~0xFFF))
	                                        | (((*(pu8DCCodeLen0 + u32Cnt)) & 0xf) << 8)
	                                        | ((HI_U32)(*(pu16DCCodeWord0 + u32Cnt)) & 0xff);
	        pu8DCCategory0++;
	        u32Cnt++;
	    }


	    u32Cnt = 0;
	    while ((0xFF != *pu8DCCategory1) && (u32Cnt < 12))
	    {
	        *(pDstAddr + *pu8DCCategory1) = (*(pDstAddr + *pu8DCCategory1) & (~0xFFF000))
	                                        | ((((*(pu8DCCodeLen1 + u32Cnt)) & 0xf) << 20)
	                                           | (((HI_U32)(*(pu16DCCodeWord1 + u32Cnt)) & 0xff) << 12));
	        pu8DCCategory1++;
	        u32Cnt++;
	    }

	    /* AC Huffman Mincode*/
	    pDstAddr = (HI_U32 *)((HI_U32)pRegVirPtr + X5_JPGREG_HACMINTABLE);
	    pu8ACMinCode0 = *(AC_Mincode + 0);
	    pu8ACMinCode1 = *(AC_Mincode + 1);
	    for (u32Cnt = 0; u32Cnt < 8; u32Cnt++)
	    {
	        *pDstAddr++ = (HI_U32)(((HI_U32)(*(pu8ACMinCode1 + 1)) << 24)
	                               | ((HI_U32)(*(pu8ACMinCode1)) << 16)
	                               | ((HI_U32)(*(pu8ACMinCode0 + 1)) << 8)
	                               | (HI_U32)(*pu8ACMinCode0));
	        pu8ACMinCode1 += 2;
	        pu8ACMinCode0 += 2;
	    }



	    /*AC Huffman BaseMemory*/
	    pDstAddr = (HI_U32 *)((HI_U32)pRegVirPtr + X5_JPGREG_HACBASETABLE);
	    pu8ACBaseMem0 = (HI_U8 *)(*(AC_BaseOffset + 0));
	    pu8ACBaseMem1 = (HI_U8 *)(*(AC_BaseOffset + 1));
	    for (u32Cnt = 0; u32Cnt < 8; u32Cnt++)
	    {
	        *pDstAddr = (HI_U32)(((HI_U32)*pu8ACBaseMem0++)
	                             | (((HI_U32)*pu8ACBaseMem1++) << 16));
	        *pDstAddr |= (HI_U32)((((HI_U32)*pu8ACBaseMem0++) << 8)
	                              | (((HI_U32)*pu8ACBaseMem1++) << 24));
	        pDstAddr++;
	    }

	    pDstAddr = (HI_U32 *)((HI_U32)pRegVirPtr + X5_JPGREG_HACSYMTABLE);
	    pu8ACRunSize0 = *(AC_RunSize + 0);
	    pu8ACRunSize1 = *(AC_RunSize + 1);
	    for (u32Cnt = 0; u32Cnt < 256; u32Cnt++)
	    {
	        *pDstAddr++ = (HI_U32)((((HI_U32)*pu8ACRunSize1++) << 8)
	                               | ((HI_U32)*pu8ACRunSize0++)) & 0xffff;
	    }

        return HI_SUCCESS;

		
}



/******************************************************************************
* Function:      JPGDEC_InitHW
* Description:
* Input:         Handle
* Output:        pSize
* Return:        HI_SUCCESS
*                HI_FAILURE
* Others:
******************************************************************************/
HI_VOID JPGDEC_InitHW(JPG_DECODER_FUNC *pstruDecoder)
{

    pstruDecoder->JPGDEC_CreateInstance  = JPGHDEC_CreateInstance;
    pstruDecoder->JPGDEC_DestroyInstance = JPGHDEC_DestroyInstance;
    pstruDecoder->JPGDEC_FlushBuf = JPGHDEC_FlushBuf;
    pstruDecoder->JPGDEC_Reset  = JPGHDEC_Reset;
    pstruDecoder->JPGDEC_Reset1 = JPGHDEC_Reset;
    pstruDecoder->JPGDEC_Check = JPGHDEC_Check;
    pstruDecoder->JPGDEC_SetDecodeInfo = JPGHDEC_SetDecodeInfo;
    pstruDecoder->JPGDEC_SendStream = JPGHDEC_SendStream;
    pstruDecoder->JPGDEC_Start  = JPGHDEC_Start;
    pstruDecoder->JPGDEC_Status = JPGHDEC_Status;

}


/*******************************************************************************
 * Function:        JPGHDECResetVDM
 * Description:
 * Data Accessed:
 * Data Updated:
 * Input:
 * Output:
 * Return:
 * Others:
 ******************************************************************************/
HI_S32 JPGHDEC_ResetJpgHW(JPGHD_CTX_S*  pstHdCtx)
{


    extern HI_VOID *s_pRegReset;

    JPG_INTMASK_U IntMask;
      JPG_RESET_U Reset;
    JPG_STADDR_U BufStAddr;
    JPG_ENDADDR_U BufEndAddr;

    JPG_STADD_U StrmStAddr;
    JPG_ENDADD_U StrmEndAddr;

    IntMask.struBits.Fnsh = 1;
    IntMask.struBits.Err = 1;
    IntMask.struBits.Res = 1;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_INT, IntMask.All);

    Reset.struBits.Reset = 1;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_RESET, Reset.All);

    if (0 != s_pRegReset)
    {
        #define X5HD_RESET_BIT 0
        HI_U32 u32Reset = 0;
        HI_U32 u32Busy = 0;

        //volatile int j = 0;

        HI_U32* pResetAddr = s_pRegReset; //(HI_U32*)pstHdCtx->ResetRegOffset;
        //HI_S32 i = 200;
        u32Reset    = *pResetAddr; //	usleep(2000);
        u32Reset   |= 0x10;//(1 << X5HD_RESET_BIT); //	usleep(2000); // bit[17] = 1, 0x20000
        *pResetAddr = u32Reset; //usleep(2000);
        #if 1
        {
            JPGHDEC_READ_REG(pstHdCtx->RegOffset, X5_JPGREG_START, u32Busy);
            while (0 != (u32Busy & 0x2))
            {
                JPGHDEC_READ_REG(pstHdCtx->RegOffset, X5_JPGREG_START, u32Busy);
            }
        }
         #endif
        u32Reset   &= 0xffffffef;//(~(1 << X5HD_RESET_BIT));
        *pResetAddr = u32Reset;
    }
    else
    {
        HIJPEG_TRACE("reset register vir address is NULL!\n");
    }


    BufStAddr.All = 0;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_STADDR, BufStAddr.All);

    BufEndAddr.All = 0;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_ENDADDR, BufEndAddr.All);

    StrmStAddr.All = 0;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_STADD, StrmStAddr.All);

    StrmEndAddr.All = 0;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_ENDADD, StrmEndAddr.All);

    return HI_SUCCESS;
}


/*******************************************************************************
* Function:        JPGHDEC_CreateInstance
* Description:
* Data Accessed:
* Data Updated:
* Input:           u32FileLen
* Output:
* Return:          HI_SUCCESS:
*                  HI_ERR_JPG_NO_MEM:
*                  HI_ERR_JPG_DEC_BUSY:
*                  HI_FAILURE:
* Others:
*******************************************************************************/
HI_S32 JPGHDEC_CreateInstance(JPG_HANDLE *pHandle, HI_U32 u32FileLen)
{
    JPGHD_CTX_S* pHDecCtx = HI_NULL;
    HI_U32 u32BufLen;
    HI_U32 PhysAddr = 0;
    HI_VOID*   pVirtAddr = NULL;
    JPG_HANDLE HDecHandle;
    HI_VOID *pRegAddr = HI_NULL;
    HI_S32 Ret = HI_FAILURE;

    HI_VOID *pRstRegAddr = HI_NULL;
    HI_VOID *pVhbRegAddr = HI_NULL;

    HI_U32 Dat32;

    JPG_CHECK_NULLPTR(pHandle);

    //JPG_CHECK_LEN(u32FileLen);

    /*clear global vars*/
    {
        JPGVCOS_memset(DC_codelen, 0, sizeof(DC_codelen));
        JPGVCOS_memset(DC_codeword, 0, sizeof(DC_codeword));
        JPGVCOS_memset(DC_category, 0, sizeof(DC_category));
        JPGVCOS_memset(AC_RunSize, 0, sizeof(AC_RunSize));
        JPGVCOS_memset(AC_Mincode, 0, sizeof(AC_Mincode));
        JPGVCOS_memset(AC_BaseOffset, 0, sizeof(AC_BaseOffset));
    }

    Ret = JPGDRV_GetRegisterAddr(&pRegAddr, &pRstRegAddr, &pVhbRegAddr);
    if (HI_SUCCESS != Ret)
    {
        Ret = (HI_ERR_JPG_DEC_BUSY == Ret) ? Ret : HI_FAILURE;
        return Ret;
    }

    /*u32BufLen = u32CtxAlignLen + u32FileLen*/

    //u32BufLen = JPG_ALIGN2MUL(u32FileLen, JPG_ALIGN_LEN);
    u32BufLen = X5_JPGHDEC_BUFLEN;

    PhysAddr = (HI_U32)JPG_MMB_Alloc(u32BufLen, JPG_ALIGN_LEN, (HI_U8*)"JPEG_HDEC", JPG_UNCACHED, &pVirtAddr);
    if (0 == PhysAddr)
    {
        Ret = HI_ERR_JPG_NO_MEM;
        goto LABEL0;
    }

    //	JPGFMW_MemReset(&s_DecCtrlMem.s_HDecMem, 0);

    //pHDecCtx = (JPGHD_CTX_S*)VCOS_malloc(sizeof(JPGHD_CTX_S));
    pHDecCtx = (JPGHD_CTX_S*)JPGFMW_MemGet(&s_DecCtrlMem.s_HDecMem, sizeof(JPGHD_CTX_S));
    if (NULL == pHDecCtx)
    {
        Ret = HI_ERR_JPG_NO_MEM;
        goto LABEL1;
    }

    if (HI_SUCCESS != JPGFMW_Handle_Alloc(&HDecHandle, (HI_VOID*)pHDecCtx))
    {
        Ret = HI_ERR_JPG_NO_MEM;
        goto LABEL2;
    }

    //VCOS_memset((HI_VOID *)pHDecCtx, 0x0, sizeof(JPGHD_CTX_S));

    pHDecCtx->RegOffset = (HI_U32)pRegAddr;
    pHDecCtx->pVirtAddr = pVirtAddr;
    pHDecCtx->PhysAddr = PhysAddr;
    pHDecCtx->bFirstStart = HI_TRUE;

#if defined(CHIP_TYPE_hi3716cv200) || defined(CHIP_TYPE_hi3718cv100) \
	|| defined(CHIP_TYPE_hi3719cv100) || defined(CHIP_TYPE_hi3719mv100_a)
	pHDecCtx->pStremPhyBuf	= NULL;
	pHDecCtx->pStremVirBuf	= NULL;
	pHDecCtx->u32StremSize	= 0;
	pHDecCtx->bAllocStrem	= HI_FALSE;
#endif

    pHDecCtx->ResetRegOffset = (HI_U32)pRstRegAddr;
    Dat32 = *(volatile HI_U32 *)((HI_U32)pRegAddr + X5_JPGREG_INT);
    g_HwVersion = (HI_U16)((Dat32 >> 16) & 0xffff);


    (HI_VOID)JPGBUF_Init(&pHDecCtx->HDecBuf, pVirtAddr,
                         (u32BufLen - JPG_ALIGN_LEN), JPG_ALIGN_LEN);

    JPGHDEC_Reset(HDecHandle);

    *pHandle = HDecHandle;
    return HI_SUCCESS;

LABEL2:

    //		JPGFMW_MemReset(&s_DecCtrlMem.s_HDecMem, 0);
LABEL1:
    JPG_MMB_Free(PhysAddr);
LABEL0:
    return Ret;
}

/*******************************************************************************
* Function:        JPGHDEC_DestroyInstance
* Description:
* Data Accessed:
* Data Updated:
* Input:
* Output:
* Return:
* Others:
*******************************************************************************/
HI_S32 JPGHDEC_DestroyInstance(JPG_HANDLE Handle)
{
    JPGHD_CTX_S *pHDecCtx = HI_NULL;
    HI_U32 PhysAddr;

    pHDecCtx = (JPGHD_CTX_S *)JPGFMW_Handle_GetInstance(Handle);
    JPG_CHECK_HANDLE(pHDecCtx);

    //JPGHDEC_Reset(Handle);

    PhysAddr = pHDecCtx->PhysAddr;
    JPG_MMB_Free(PhysAddr);

    //VCOS_free(pHDecCtx);
    //    JPGFMW_MemReset(&s_DecCtrlMem.s_HDecMem, 0);
    JPGFMW_Handle_Free(Handle);

#if defined(CHIP_TYPE_hi3716cv200) || defined(CHIP_TYPE_hi3718cv100) \
	|| defined(CHIP_TYPE_hi3719cv100) || defined(CHIP_TYPE_hi3719mv100_a)
	if(HI_TRUE == pHDecCtx->bAllocStrem)
	{
		HI_MMZ_Unmap((HI_U32)pHDecCtx->pStremPhyBuf);
		HI_MMZ_Delete((HI_U32)pHDecCtx->pStremPhyBuf);
		pHDecCtx->pStremPhyBuf = NULL;
		pHDecCtx->pStremVirBuf = NULL;
		pHDecCtx->u32StremSize = 0;
		pHDecCtx->bAllocStrem  = HI_FALSE;
	}
#endif

    return HI_SUCCESS;
}

/*******************************************************************************
* Function:        JPGHDEC_FlushBuf
* Description:
* Data Accessed:
* Data Updated:
* Input:
* Output:
* Return:
* Others:
*******************************************************************************/
HI_S32 JPGHDEC_FlushBuf(JPG_HANDLE Handle)
{
    JPGHD_CTX_S*  pstHdCtx = NULL;

    pstHdCtx = (JPGHD_CTX_S*)JPGFMW_Handle_GetInstance(Handle);
    JPG_CHECK_HANDLE(pstHdCtx);

    JPGBUF_Reset(&pstHdCtx->HDecBuf);
    pstHdCtx->bEnd = HI_FALSE;

    return HI_SUCCESS;
}

/*******************************************************************************
* Function:        JPGHDEC_Reset
* Description:
* Data Accessed:
* Data Updated:
* Input:
* Output:
* Return:
* Others:
*******************************************************************************/
HI_S32 JPGHDEC_Reset(JPG_HANDLE Handle)
{
    JPGHD_CTX_S*  pstHdCtx = NULL;

    pstHdCtx = (JPGHD_CTX_S*)JPGFMW_Handle_GetInstance(Handle);
    JPG_CHECK_HANDLE(pstHdCtx);

    if (HI_SUCCESS != JPGHDEC_ResetJpgHW(pstHdCtx))
    {
        return HI_FAILURE;
    }

    pstHdCtx->eHwState = JPG_HDSTATE_STOP;

    pstHdCtx->bFirstStart = HI_TRUE;
    pstHdCtx->bEnd = HI_FALSE;
    pstHdCtx->bForStart = HI_FALSE;

    return HI_SUCCESS;
}

/*******************************************************************************
* Function:        JPGHDEC_Check
* Description:
* Data Accessed:
* Data Updated:
* Input:           pstruCheckInfo
* Output:
* Return:          HI_SUCCESS
*                  HI_FAILURE
* Others:
*******************************************************************************/
HI_S32 JPGHDEC_Check(JPG_HANDLE Handle, const JPGDEC_CHECKINFO_S *pCheckInfo)
{


	    JPG_CHECK_NULLPTR(pCheckInfo);

	    if ((X5_QUANTBL_MAX_NUM < pCheckInfo->QuantTblNum)
	        || (X5_EVERYHUFFTBL_MAX_NUM < pCheckInfo->AcHuffTblNum)
	        || (X5_EVERYHUFFTBL_MAX_NUM < pCheckInfo->DcHuffTblNum)
	        || (X5_MAX_WIDTH < pCheckInfo->Width)
	        || (X5_MAX_HEIGHT < pCheckInfo->Height)
	        || (X5_COMPONENT_NUM < pCheckInfo->ComponentNum)
	        || (X5_PRECISE_VALUE != pCheckInfo->Precise)
	        || (JPG_PICTYPE_BASELINE != pCheckInfo->Profile))
	    {
	        return HI_FAILURE;
	    }

	    return HI_SUCCESS;

	
}

/*******************************************************************************
* Function:        JPGHDEC_SetDecodeInfo
* Description:
* Data Accessed:
* Data Updated:
* Input:           pstruDecodeAttr
* Output:
* Return:
* Others:
*******************************************************************************/
HI_S32 JPGHDEC_SetDecodeInfo(JPG_HANDLE           Handle,
                             JPGDEC_DECODEATTR_S *pDecodeAttr)
{


    JPGHD_CTX_S *pstHdCtx;
    JPG_STRIDE_U Stride;
    JPG_PICSIZE_U PicSize;
    JPG_PICTYPE_U PicType;
    JPG_YSTADDR_U YStAddr;
    JPG_UVSTADDR_U UvStAddr;
    JPG_SCALE_U Scale;
    HI_U32 WidthInMCU  = 0;
    HI_U32 HeightInMCU = 0;
    HI_U32 YStride, UVStride;
    HI_U32 DstYPhyAddr;
    HI_U32 DstCbCrPhyAddr;

    JPG_SURFACE_S* pSurface;
    JPG_STADDR_U BufStAddr;
    JPG_ENDADDR_U BufEndAddr;
    HI_U32 u32Scale = 0;

    pstHdCtx = (JPGHD_CTX_S *)JPGFMW_Handle_GetInstance(Handle);
    JPG_CHECK_HANDLE(pstHdCtx);
    JPG_CHECK_NULLPTR(pDecodeAttr);

    {
        JPG_MBSURFACE_S* pMbSurface;

        pSurface = pDecodeAttr->pOutSurface;

        //ScaleFactor.HoriScale = pSurface->SurfaceInfo.MbSurface.Reserved;

        pMbSurface = &pSurface->SurfaceInfo.MbSurface;
        for (u32Scale = JPG_SCALEDOWN_1; u32Scale <= JPG_SCALEDOWN_8; u32Scale++)
        {
            if (JPG_ALIGNED_SCALE(pDecodeAttr->Width, u32Scale) == pMbSurface->YWidth)
            {
                break;
            }
        }

        if (JPG_ALIGNED_SCALE(pDecodeAttr->Width, (u32Scale + 1)) == pMbSurface->YWidth)
        {
            for (u32Scale = JPG_SCALEDOWN_1; u32Scale <= JPG_SCALEDOWN_8; u32Scale++)
            {
                if (JPG_ALIGNED_SCALE(pDecodeAttr->Height, u32Scale) == pMbSurface->YHeight)
                {
                    break;
                }
            }
        }

        if (u32Scale > JPG_SCALEDOWN_8)
        {
            return HI_ERR_JPG_INVALID_PARA;
        }
    }

    switch (pDecodeAttr->EncFmt)
    {
    case JPGHAL_ENCFMT_400:
    case JPGHAL_ENCFMT_444:
        WidthInMCU  = (pDecodeAttr->Width + 7) >> 3;
        HeightInMCU = (pDecodeAttr->Height + 7) >> 3;
        break;
    case JPGHAL_ENCFMT_420:
        WidthInMCU  = (pDecodeAttr->Width + 15) >> 4;
        HeightInMCU = (pDecodeAttr->Height + 15) >> 4;
        break;
    case JPGHAL_ENCFMT_422_12:
        WidthInMCU  = (pDecodeAttr->Width + 7) >> 3;
        HeightInMCU = (pDecodeAttr->Height + 15) >> 4;
        break;
    case JPGHAL_ENCFMT_422_21:
        WidthInMCU  = (pDecodeAttr->Width + 15) >> 4;
        HeightInMCU = (pDecodeAttr->Height + 7) >> 3;
        break;
    default:
        jpg_assert((pDecodeAttr->EncFmt < JPGHAL_ENCFMT_BUTT), return HI_FAILURE);
        break;
    }

    {
        JPG_MBSURFACE_S* pMbSurface = &pSurface->SurfaceInfo.MbSurface;
        YStride  = pMbSurface->YStride;
        UVStride = pMbSurface->CbCrStride;
        DstYPhyAddr = pMbSurface->YPhyAddr;
        DstCbCrPhyAddr = pMbSurface->CbCrPhyAddr;
    }

    BufStAddr.All = GET_PA(pstHdCtx->pVirtAddr, pstHdCtx->PhysAddr, pstHdCtx->HDecBuf.pBase);
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_STADDR, BufStAddr.All);

    BufEndAddr.All = BufStAddr.All + pstHdCtx->HDecBuf.u32BufLen;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_ENDADDR, BufEndAddr.All);

#ifdef CHIP_TYPE_hi3716cv200es
    YStAddr.struBits.YStaddr = DstYPhyAddr >> 6;
#else
    YStAddr.All = DstYPhyAddr;
#endif
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_YSTADDR, YStAddr.All);

#ifdef CHIP_TYPE_hi3716cv200es
    Stride.struBits.YStride = YStride >> 6;
    Stride.struBits.UVStride = UVStride >> 6;
#else
    Stride.struBits.YStride = YStride;
    Stride.struBits.UVStride = UVStride;
#endif

    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_STRIDE, Stride.All);

    PicSize.All = 0;
    PicSize.struBits.MCUWidth  = WidthInMCU;
    PicSize.struBits.MCUHeight = HeightInMCU;

    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_PICSIZE, PicSize.All);

    PicType.struBits.PicType = (HI_U32)pDecodeAttr->EncFmt;
    PicType.struBits.PicStr = 0;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_PICTYPE, PicType.All);

#ifdef CHIP_TYPE_hi3716cv200es
    UvStAddr.struBits.UVStaddr = DstCbCrPhyAddr >> 6;
#else
    UvStAddr.All = DstCbCrPhyAddr;
#endif
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_UVSTADDR, UvStAddr.All);

    Scale.struBits.Scale = u32Scale;
    Scale.struBits.Outstanding = 3;
#if defined(CHIP_TYPE_hi3716cv200) || defined(CHIP_TYPE_hi3718cv100) \
	|| defined(CHIP_TYPE_hi3719cv100) || defined(CHIP_TYPE_hi3719mv100_a)
    Scale.struBits.jidct_emar_en = 1;
#endif


    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_SCALE, Scale.All);

    JpgHDecAssembleQTbl((HI_VOID*)pstHdCtx->RegOffset, pDecodeAttr->pQuanTbl);

    (HI_VOID)JpgHDecAssembleHTbl((HI_VOID*)pstHdCtx->RegOffset,
                                 (JPG_HUFF_TBL **)pDecodeAttr->pDcHuffTbl,
                                 (JPG_HUFF_TBL **)pDecodeAttr->pAcHuffTbl);

    return HI_SUCCESS;
}

/*******************************************************************************
* Function:        JPGHDEC_SendStream
* Description:
* Data Accessed:
* Data Updated:
* Input:           pstruStreamInfo
* Output:
* Return:
* Others:
*******************************************************************************/
HI_S32 JPGHDEC_SendStream(JPG_HANDLE Handle, JPGDEC_WRITESTREAM_S* pStreamInfo)
{
    JPGHD_CTX_S*  pstHdCtx;
    HI_U32 FreeLen;

    HI_U32 u32MinLen;
    HI_BOOL bEOI = pStreamInfo->EndFlag;

    pstHdCtx = (JPGHD_CTX_S*)JPGFMW_Handle_GetInstance(Handle);
    JPG_CHECK_HANDLE(pstHdCtx);
    JPG_CHECK_NULLPTR(pStreamInfo);

    FreeLen = JPGBUF_GetFreeLen(&pstHdCtx->HDecBuf);
    if (0 == FreeLen)
    {
        pStreamInfo->CopyLen = 0;
        return HI_SUCCESS;
    }

    u32MinLen = (pStreamInfo->StreamLen < FreeLen) ? pStreamInfo->StreamLen : FreeLen;

    if (HI_TRUE == pStreamInfo->NeedCopyFlag)
    {
        (HI_VOID)JPGBUF_Write(&pstHdCtx->HDecBuf, pStreamInfo->pStreamAddr, u32MinLen);
    }
    else
    {
        JPGBUF_SetWrHead(&pstHdCtx->HDecBuf, pStreamInfo->StreamLen);
    }

    pstHdCtx->bEnd = HI_FALSE;
    if (bEOI && (u32MinLen == pStreamInfo->StreamLen))
    {
        pstHdCtx->bEnd = HI_TRUE;
    }

    pStreamInfo->CopyLen = u32MinLen;

    if (HI_TRUE == pstHdCtx->bForStart)
    {
        JPGHDEC_Start(Handle);
    }

    return HI_SUCCESS;
}

/*******************************************************************************
* Function:        JPGHDEC_Start
* Description:
* Data Accessed:
* Data Updated:
* Input:
* Output:
* Return:          HI_SUCCESS
*
* Others:
*******************************************************************************/
HI_S32 JPGHDEC_Start(JPG_HANDLE Handle)
{
    JPGHD_CTX_S*  pstHdCtx;
    JPGBUF_DATA_S stRdInfo;

    JPG_STADD_U StrmStAddr;
    JPG_ENDADD_U StrmEndAddr;
    JPG_START_U DecStart;
    JPG_RESUME_U DecResume;
    HI_BOOL bStrmEnd;

    HI_U32 Len;
    HI_VOID*     pAddrEnd;

#if defined(CHIP_TYPE_hi3716cv200) || defined(CHIP_TYPE_hi3718cv100) \
	|| defined(CHIP_TYPE_hi3719cv100) || defined(CHIP_TYPE_hi3719mv100_a)
	HI_U32 u32TmpSize    = 0;
	HI_U32 u32BufStAddr  = 0;
	HI_U32 u32BufEndAddr = 0;
#endif
    pstHdCtx = (JPGHD_CTX_S*)JPGFMW_Handle_GetInstance(Handle);
    JPG_CHECK_HANDLE(pstHdCtx);

    (HI_VOID)JPGBUF_StepRdHead(&pstHdCtx->HDecBuf);

    (HI_VOID)JPGBUF_GetDataBtwRhRt(&pstHdCtx->HDecBuf, &stRdInfo);
    Len = stRdInfo.u32Len[0] + stRdInfo.u32Len[1];

    if (Len == 0)
    {
        //return HI_ERR_JPG_WANT_STREAM;
    }

    if (Len <= 64)  /*#define*/
    {
        if (HI_FALSE == pstHdCtx->bEnd)
        {
            pstHdCtx->bForStart = HI_TRUE;
            return HI_SUCCESS;
        }

        Len = 64;
    }

    if (HI_TRUE == pstHdCtx->bForStart)
    {
        pstHdCtx->bForStart = HI_FALSE;
    }

    if (Len <= stRdInfo.u32Len[0])
    {
        pAddrEnd = (HI_U8*)stRdInfo.pAddr[0] + Len;
    }
    else
    {
        pAddrEnd = (HI_U8*)stRdInfo.pAddr[1] + (Len - stRdInfo.u32Len[0]);
    }

    StrmStAddr.All = 0;
    StrmStAddr.All = GET_PA(pstHdCtx->pVirtAddr, pstHdCtx->PhysAddr, stRdInfo.pAddr[0]);
	StrmEndAddr.All = 0;
	StrmEndAddr.All = GET_PA(pstHdCtx->pVirtAddr, pstHdCtx->PhysAddr, pAddrEnd);

#if defined(CHIP_TYPE_hi3716cv200) || defined(CHIP_TYPE_hi3718cv100) \
	|| defined(CHIP_TYPE_hi3719cv100) || defined(CHIP_TYPE_hi3719mv100_a)
	u32TmpSize = StrmEndAddr.All - StrmStAddr.All;

	if( (0 != StrmStAddr.All % 4 ) && (HI_TRUE == pstHdCtx->bAllocStrem) && (u32TmpSize > pstHdCtx->u32StremSize) )
	{
		HI_MMZ_Unmap((HI_U32)pstHdCtx->pStremPhyBuf);
		HI_MMZ_Delete((HI_U32)pstHdCtx->pStremPhyBuf);
		pstHdCtx->pStremPhyBuf = NULL;
		pstHdCtx->pStremVirBuf = NULL;
		pstHdCtx->bAllocStrem  = HI_FALSE;
	}
	
	if( (0 != StrmStAddr.All % 4 ) && (HI_FALSE == pstHdCtx->bAllocStrem) )
	{
		
		pstHdCtx->pStremPhyBuf = (HI_CHAR*)HI_MMZ_New(u32TmpSize,4,NULL,(HI_CHAR*)"JPEG_STREAM_BUF");
		if(NULL == pstHdCtx->pStremPhyBuf )
		{
			return HI_FAILURE;
		}
		pstHdCtx->pStremVirBuf = (HI_CHAR*)HI_MMZ_Map((HI_U32)pstHdCtx->pStremPhyBuf,HI_TRUE);
		if(NULL == pstHdCtx->pStremVirBuf)
		{
			return HI_FAILURE;
		}
		memcpy(pstHdCtx->pStremVirBuf,stRdInfo.pAddr[0],u32TmpSize);
		HI_MMZ_Flush(0);
		
		u32BufStAddr  = ((HI_U32)pstHdCtx->pStremPhyBuf - 64 + 64 - 1) & (~(64 - 1));
		u32BufEndAddr = (HI_U32)pstHdCtx->pStremPhyBuf + u32TmpSize + 64;
		
		pstHdCtx->bAllocStrem  = HI_TRUE;
		pstHdCtx->u32StremSize = u32TmpSize;
		JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_STADDR, u32BufStAddr );
		JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_ENDADDR,u32BufEndAddr);
		JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_STADD,  (HI_U32)pstHdCtx->pStremPhyBuf);
		JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_ENDADD, (HI_U32)(pstHdCtx->pStremPhyBuf + u32TmpSize));
		
	}
	else
#endif
	{
		JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_STADD, StrmStAddr.All);
		JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_ENDADD, StrmEndAddr.All);
	}

    if (pstHdCtx->bFirstStart)
    {
        if (HI_TRUE == pstHdCtx->bEnd)
        {
            JPG_RESUME_U Resume;
            Resume.All = 0;
            Resume.struBits.LastFlag = 1;
            JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_RESUME, Resume.All);
        }

        pstHdCtx->bFirstStart   = HI_FALSE;
        DecStart.struBits.Start = 1;
        JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_START, DecStart.All);
    }
    else
    {
        bStrmEnd = (HI_BOOL)((pstHdCtx->bEnd) && (0 == stRdInfo.u32Len[1]));

        DecResume.struBits.LastFlag = bStrmEnd;
        DecResume.struBits.Start = 1;
        JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, X5_JPGREG_RESUME, DecResume.All);
    }

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGHDEC_Status
* Description:

* Input:         Handle
* Output:        pSize
* Return:        HI_ERR_JPG_WANT_STREAM
*                HI_SUCCESS
* Others:
******************************************************************************/
HI_S32  JPGHDEC_Status(JPG_HANDLE Handle, HI_VOID **pBuf, HI_U32 *pBufLen,
                       JPG_HDSTATE_E* pHdState)
{
    JPGHD_CTX_S*    pstHdCtx;
    JPG_INTTYPE_E IntType;
    HI_S32 Ret = HI_SUCCESS;

    pstHdCtx = (JPGHD_CTX_S*)JPGFMW_Handle_GetInstance(Handle);
    JPG_CHECK_HANDLE(pstHdCtx);

    JPG_CHECK_NULLPTR(pBuf);
    JPG_CHECK_NULLPTR(pBufLen);
    JPG_CHECK_NULLPTR(pHdState);

    Ret = JPGDRV_GetIntStatus(&IntType, 1000);

    /* AI7D02596 Modify */
    if (HI_ERR_JPG_DEV_NOOPEN == Ret)
    {
        IntType = JPG_INTTYPE_ERROR;
    }
    else  if ((HI_SUCCESS != Ret) || (JPG_INTTYPE_NONE == IntType))
    {
        JPGBUF_GetFreeInfo(&pstHdCtx->HDecBuf, pBuf, pBufLen);
        if (0 != *pBufLen)
        {
            *pHdState = JPG_HDSTATE_DECODING;
            return HI_ERR_JPG_WANT_STREAM;
        }
        else
        {
            Ret = JPGDRV_GetIntStatus(&IntType, 1000);
            if (HI_SUCCESS != Ret)
            {
                IntType = JPG_INTTYPE_NONE;
            }
        }
    }

    switch (IntType)
    {
    case JPG_INTTYPE_ERROR:
        *pHdState = JPG_HDSTATE_DECODEERR;
        return HI_SUCCESS;

    case JPG_INTTYPE_NONE:
        JPGBUF_GetFreeInfo(&pstHdCtx->HDecBuf, pBuf, pBufLen);
        *pHdState = JPG_HDSTATE_DECODING;
        return HI_ERR_JPG_WANT_STREAM;

    case JPG_INTTYPE_FINISH:
        {
            (HI_VOID)JPGBUF_StepRdTail(&pstHdCtx->HDecBuf);

            pstHdCtx->bFirstStart = HI_TRUE;
            pstHdCtx->bEnd = HI_FALSE;
            pstHdCtx->bForStart = HI_FALSE;

            *pHdState = JPG_HDSTATE_DECODED;
            return HI_SUCCESS;
        }

    case JPG_INTTYPE_CONTINUE:
        {
            (HI_VOID)JPGBUF_StepRdTail(&pstHdCtx->HDecBuf);
            JPGBUF_GetFreeInfo(&pstHdCtx->HDecBuf, pBuf, pBufLen);
            *pHdState = JPG_HDSTATE_DECODING;

            JPGHDEC_Start(Handle);

            return HI_ERR_JPG_WANT_STREAM;
        }
    default:
        return HI_SUCCESS;
    }
}

HI_U16 JPGHDEC_GetVersion(HI_VOID)
{
    return g_HwVersion;
}

HI_VOID JPGHDEC_SetVersion(HI_U16 u16Version)
{
    g_HwVersion = u16Version;
}
