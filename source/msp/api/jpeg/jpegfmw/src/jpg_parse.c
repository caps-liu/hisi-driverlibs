/*******************************************************************************
 *              Copyright 2006 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: hi_jpg_parse.c
 * Description:
 *
 * History:
 * Version   Date             Author    DefectNum    Description
 * main\1    2008-04-09       z53517    HI_NULL      Create this file.
 ******************************************************************************/

#include "jpg_fmwcomm.h"
#include "jpg_decctrl.h"
#include "jpg_fmwhandle.h"
#include "jpg_buf.h"
#include "jpg_parse.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif /* __cplusplus */
#endif  /* __cplusplus */

/****************************************************************************
*                    data structure, macro and functions                    *
****************************************************************************/
typedef struct hiJPGPARSE_APP1_S
{
    HI_BOOL   bActive;
    HI_U32    APP1MarkLen;
    HI_U32    BufLen;
    HI_VOID*  StartRdAddr;    /*start addr for app1 in the parsebuf*/
    HI_VOID*  EndRdAddr;      /*end addr for app1 in the parsebuf*/
    HI_U32    APP1Offset;
    HI_VOID*  OutAddr;        /*App1 output address*/
} JPGPARSE_APP1_S;

typedef struct hiJPGPARSE_CTX_S
{
    JPG_PARSESTATE_S     ParseState;    /*parser state*/
    JPG_PICPARSEINFO_S   MainPic;       /* dedicated node for main pic */
    JPG_PICPARSEINFO_S*  pCurrPic;      /* curr node of the chain */
    JPG_PICPARSEINFO_S*  pTailPic;      /* tail node of the chain */
    JPG_IMGTYPE_E        ImgType;            /* file type */
    HI_BOOL              bMainState;    /* 1 for main syntax parsing; 0 for appendix syntax parsing */
    HI_U32               SkipLen;       /* length to be skiped over */
    HI_VOID*             pJointSpace;   /* to connext 2 stream space */
    JPGPARSE_APP1_S      stAPP1;         /* curr state of the APP1, of it exits */

    JPGPARSE_APP1_S stExif;         /*curr state of the exit, if exists */
    HI_BOOL         bReqExif;            /* if need to extract exit */
} JPGPARSE_CTX_S;


typedef enum hiJPG_MARKER_E   /* JPEG marker codes */
{
    SOF0 = 0xc0,
    SOF1 = 0xc1,
    SOF2 = 0xc2,
    SOF3 = 0xc3,
    DHT  = 0xc4,
    //SOF5 = 0xc5,
    //SOF6 = 0xc6,
    //SOF7 = 0xc7,

    //JPG   = 0xc8,
    //SOF9  = 0xc9,
    //SOF10 = 0xca,
    //SOF11 = 0xcb,
    //DAC   = 0xcc,
    //SOF13 = 0xcd,
    //SOF14 = 0xce,
    //SOF15 = 0xcf,

    //RST0 = 0xd0,
    //RST1 = 0xd1,
    //RST2 = 0xd2,
    //RST3 = 0xd3,
    //RST4 = 0xd4,
    //RST5 = 0xd5,
    //RST6 = 0xd6,
    //RST7 = 0xd7,

    SOI = 0xd8,
    EOI = 0xd9,
    SOS = 0xda,
    DQT = 0xdb,
    //DNL = 0xdc,
    DRI = 0xdd,
    //DHP = 0xde,
    //EXP = 0xdf,

    APP0  = 0xe0,
    APP1  = 0xe1,
    //APP2  = 0xe2,
    //APP3  = 0xe3,
    //APP4  = 0xe4,
    //APP5  = 0xe5,
    //APP6  = 0xe6,
    //APP7  = 0xe7,
    //APP8  = 0xe8,
    //APP9  = 0xe9,
    //APP10 = 0xea,
    //APP11 = 0xeb,
    //APP12 = 0xec,
    //APP13 = 0xed,
    //APP14 = 0xee,
    APP15 = 0xef,

    JPG0  = 0xf0,
    //JPG1  = 0xf1,
    //JPG2  = 0xf2,
    //JPG3  = 0xf3,
    //JPG4  = 0xf4,
    //JPG5  = 0xf5,
    //JPG6  = 0xf6,
    //JPG7  = 0xf7,
    //JPG8  = 0xf8,
    //JPG9  = 0xf9,
    //JPG10 = 0xfa,
    //JPG11 = 0xfb,
    //JPG12 = 0xfc,
    //JPG13 = 0xfd,
    COM = 0xfe,

    TEM = 0x01
} JPG_MARK_E;


#define JPG_PARSED_SOI 0x00000001
#define JPG_PARSED_DQT 0x00000002
#define JPG_PARSED_DHT 0x00000004
#define JPG_PARSED_SOF 0x00000008
#define JPG_PARSED_SOS 0x00000010
//#define JPG_PARSED_APP0 0x00000020
//#define JPG_PARSED_APP1 0x00000040
#define JPG_PARSED_EOI 0x00000080

#define JPG_SYNTAX_ALL 0x0000001F
#define JPG_PARSED_ERR 0x00000100

#define JPG_JOINTSPACE_LEN (1 << 11)
#define JPGTAG 0xFF
#define JPG_EXIF 0x66697845

#define JPG_U16SWAP(u16Data) ((u16Data << 8) | (u16Data >> 8))
#define JPG_MIN(a, b) (((a) <= (b))  ?  (a) :  (b))
#define JPG_CHECK_SOI(pBuf) \
    (((JPGTAG == *(HI_U8*)(pBuf)) && (SOI == *(HI_U8*)((HI_U8*)(pBuf) + 1))) ? \
     HI_TRUE : HI_FALSE)

#if 0
#define JPG_DECIDE_HINDPIC(ReqIdx, CurIdx) \
    (((CurIdx) > 0 && ((ReqIdx) == 0 || (ReqIdx) > (CurIdx))) ? HI_TRUE : HI_FALSE)
#endif

static const HI_U32 s_ZOrder[JPG_QUANT_DCTSIZE + 16] = {
    0,   1,  8, 16,  9,  2,  3, 10,
    17, 24, 32, 25, 18, 11,  4,  5,
    12, 19, 26, 33, 40, 48, 41, 34,
    27, 20, 13,  6,  7, 14, 21, 28,
    35, 42, 49, 56, 57, 50, 43, 36,
    29, 22, 15, 23, 30, 37, 44, 51,
    58, 59, 52, 45, 38, 31, 39, 46,
    53, 60, 61, 54, 47, 55, 62, 63,
    63, 63, 63, 63, 63, 63, 63, 63, /* extra entries for safety in decoder */
    63, 63, 63, 63, 63, 63, 63, 63
};

static const HI_U8 s_DefaultHaffTable[] = {
    /* for luma DC */ 0x00,
    0x00,                    0x01, 0x05, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00,                    0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B,

    /* for chrom DC */ 0x01,
    0x00,                    0x03, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00,                    0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B,

    /* for luma AC */ 0x10,
    0x00,                    0x02, 0x01, 0x03, 0x03, 0x02, 0x04, 0x03, 0x05, 0x05, 0x04, 0x04, 0x00, 0x00, 0x01, 0x7D,
    0x01,                    0x02, 0x03, 0x00, 0x04, 0x11, 0x05, 0x12, 0x21, 0x31, 0x41, 0x06, 0x13, 0x51, 0x61, 0x07,
    0x22,                    0x71, 0x14, 0x32, 0x81, 0x91, 0xA1, 0x08, 0x23, 0x42, 0xB1, 0xC1, 0x15, 0x52, 0xD1, 0xF0,
    0x24,                    0x33, 0x62, 0x72, 0x82, 0x09, 0x0A, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x25, 0x26, 0x27, 0x28,
    0x29,                    0x2A, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49,
    0x4A,                    0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69,
    0x6A,                    0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89,
    0x8A,                    0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7,
    0xA8,                    0xA9, 0xAA, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0xC2, 0xC3, 0xC4, 0xC5,
    0xC6,                    0xC7, 0xC8, 0xC9, 0xCA, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7, 0xD8, 0xD9, 0xDA, 0xE1, 0xE2,
    0xE3,                    0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xF1, 0xF2, 0xF3, 0xF4, 0xF5, 0xF6, 0xF7, 0xF8,
    0xF9,                    0xFA,

    /* for chrom AC */ 0x11,
    0x00,                    0x02, 0x01, 0x02, 0x04, 0x04, 0x03, 0x04, 0x07, 0x05, 0x04, 0x04, 0x00, 0x01, 0x02, 0x77,
    0x00,                    0x01, 0x02, 0x03, 0x11, 0x04, 0x05, 0x21, 0x31, 0x06, 0x12, 0x41, 0x51, 0x07, 0x61, 0x71,
    0x13,                    0x22, 0x32, 0x81, 0x08, 0x14, 0x42, 0x91, 0xA1, 0xB1, 0xC1, 0x09, 0x23, 0x33, 0x52, 0xF0,
    0x15,                    0x62, 0x72, 0xD1, 0x0A, 0x16, 0x24, 0x34, 0xE1, 0x25, 0xF1, 0x17, 0x18, 0x19, 0x1A, 0x26,
    0x27,                    0x28, 0x29, 0x2A, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48,
    0x49,                    0x4A, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68,
    0x69,                    0x6A, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87,
    0x88,                    0x89, 0x8A, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0xA2, 0xA3, 0xA4, 0xA5,
    0xA6,                    0xA7, 0xA8, 0xA9, 0xAA, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0xC2, 0xC3,
    0xC4,                    0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7, 0xD8, 0xD9, 0xDA,
    0xE2,                    0xE3, 0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xF2, 0xF3, 0xF4, 0xF5, 0xF6, 0xF7, 0xF8,
    0xF9, 0xFA
};

#define JPG_MAXCOMPS_IN_SCAN 4   /* max component num in a scan*/

#define JPGPARSE_STATE_UPDATE(ParseState, pParseState) \
    do {\
        pParseState->Index = ParseState.Index; \
        pParseState->State = ParseState.State; \
        pParseState->ThumbCnt = ParseState.ThumbCnt; \
    } while (0)

#define JPGPARSE_LENGTHJUDGE(RealLen, ReqLen) \
    do {\
        if (RealLen < ReqLen) \
            return HI_FAILURE;\
    } while (0)

/*****************************************************************************/
/*                            internal used functions                        */
/*****************************************************************************/
#if 1

/******************************************************************************
* Function:      JPGParsingSOF
* Description:   parsing SOF
* Input:         pBuf   stream BUF
*                BufLen Buf length
*                pImage info for the currently parsed picture
* Output:        pImage
* Return:        HI_SUCCESS, HI_FAILURE
* Others:
******************************************************************************/
static HI_S32 JPGParsingSOF(HI_U8 Marker, HI_VOID *pBuf, HI_U32 BufLen,
                            JPG_PICPARSEINFO_S *pImage)
{
    HI_U8 Id, Factor;
    HI_U32 Cnt;
    JPG_COMPONENT_INFO * pCompnent;
    HI_U8 *pTmp   = (HI_U8*)pBuf;
    HI_U32 Length = BufLen;

    JPG_MARK_E eJpgMake = SOF0;
		
    /* 10: SOF + Lf + P + Y + X + Nf*/
    JPGPARSE_LENGTHJUDGE(BufLen, (10 - 4));
    pImage->CodeType = 0;

    pImage->Profile = (JPG_PICTYPE_E)(Marker - eJpgMake);
    pImage->Precise = (HI_U32)*pTmp++;
    pImage->Height = (*pTmp << 8) | *(pTmp + 1);
    pTmp += 2;
    pImage->Width = (*pTmp << 8) | *(pTmp + 1);
    pTmp += 2;
    pImage->ComponentNum = *pTmp++;

    Length -= 6;
    if (Length != pImage->ComponentNum * 3)
    {
        return HI_FAILURE;
    }

    if (pImage->ComponentNum > 4)
    {
        return HI_FAILURE;
    }

    pCompnent = pImage->ComponentInfo;

    jpg_assert((pImage->ComponentNum < JPG_NUM_COMPONENT), return HI_FAILURE);
    for (Cnt = 0; Cnt < pImage->ComponentNum; Cnt++)
    {
        Id = *pTmp++;
        Factor = *pTmp++;

        pCompnent[Cnt].ComponentId = Id;
        pCompnent[Cnt].ComponentIndex = Cnt;
        pCompnent[Cnt].Used = HI_TRUE;
        pCompnent[Cnt].HoriSampFactor = (Factor >> 4) & 0x0f;
        pCompnent[Cnt].VertSampFactor = Factor & 0x0f;
        pCompnent[Cnt].QuantTblNo = *pTmp++;

        /* check the index Tqi*/
        if (pCompnent[Cnt].QuantTblNo >= 4)
        {
            return HI_FAILURE;
        }

 #if 0
        if (((0 == pCompnent[Cnt].QuantTblNo) && (NULL == pImage->pQuantTbl[0]))
            || ((1 == pCompnent[Cnt].QuantTblNo) && (NULL == pImage->pQuantTbl[1])))
        {
            return HI_FAILURE;
        }
 #endif

    }

 #if 1
    if ((pCompnent[0].ComponentId == pCompnent[1].ComponentId)
        || (pCompnent[0].ComponentId == pCompnent[2].ComponentId)
        || ((pCompnent[1].ComponentId == pCompnent[2].ComponentId)
            && (0 != pCompnent[1].ComponentId)))
    {
        return HI_FAILURE;
    }
 #endif

    pImage->SyntaxState |= JPG_PARSED_SOF;

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGParsingSOS
* Description:   parse SOS
* Input:         pBuf
*                BufLen
*                pImage
* Output:        pImage
* Return:        HI_SUCCESS, HI_FAILURE
* Others:
******************************************************************************/
static HI_S32 JPGParsingSOS (HI_VOID *pBuf, HI_U32 BufLen,
                             JPG_PICPARSEINFO_S *pImage)
{
    HI_U32 Cnt;
    HI_U8 Num, CompNum;

    //HI_U8 Id;
    JPG_COMPONENT_INFO * pCompnent;
    HI_U8 *pTmp = (HI_U8*)pBuf;

    /* 10: SOS + Ls + Ns */
    JPGPARSE_LENGTHJUDGE(BufLen, (5 - 4));

    /*do not support multi-scan*/
    if (0 != pImage->ScanNmber)
    {
        return HI_FAILURE;
    }

    JPGPARSE_LENGTHJUDGE(BufLen, 1);
    CompNum = *pTmp++;

    if ((BufLen != (HI_U32)(CompNum * 2 + 4))
       || (1 > CompNum) || (JPG_MAXCOMPS_IN_SCAN < CompNum))
    {
        return HI_FAILURE;
    }

    pImage->ComponentInScan = CompNum;

    pCompnent = pImage->ComponentInfo;
    jpg_assert((CompNum < JPG_MAXCOMPS_IN_SCAN), return HI_FAILURE);
    for (Cnt = 0; Cnt < CompNum; Cnt++)
    {
        //Id = *pTmp++;

        if (HI_TRUE != pCompnent[Cnt].Used)
        {
            return HI_FAILURE;
        }

        Num = *pTmp++;
        pCompnent->DcTblNo = (Num >> 4) & 0x0f;
        pCompnent->AcTblNo = Num & 0x0f;
    }

    pImage->Ss = *pTmp++;
    pImage->Se = *pTmp++;
    Num = *pTmp++;

    pImage->Ah = (Num >> 4) & 0x0f;
    pImage->Al = Num & 0x0f;
    pImage->ScanNmber++;

    pImage->SyntaxState |= JPG_PARSED_SOS;
    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGParsingDHT
* Description:   parse DHT
* Input:         pBuf
*                BufLen
*                pImage
* Output:        pImage
* Return:        HI_SUCCESS, HI_FAILURE
* Others:
******************************************************************************/
static HI_S32 JPGParsingDHT(HI_VOID *pBuf, HI_U32 BufLen,
                            JPG_PICPARSEINFO_S *pImage)
{
    HI_U8 Index;
    HI_U32 IsActable;
    JPG_HUFF_TBL **pHtblptr;
    HI_U32 Cnt, CntTmp;
    HI_U8 *pTmp   = (HI_U8*)pBuf;
    HI_U32 Length = BufLen;

    /* 69: DHT + Lh + TcPh(1bytes) + L1~L16(16bytes) */
    JPGPARSE_LENGTHJUDGE(BufLen, (21 - 4));

    while (Length > 16)
    {
        Index = *pTmp++;

        IsActable = (Index & 0x10) ? HI_TRUE : HI_FALSE;
        Index &= 0x0f;

        /* is the index valid?*/
        if (Index >= JPG_NUM_HUFF_TBLS)
        {
            return HI_FAILURE;
        }

        pHtblptr = IsActable ? &pImage->pAcHuffTbl[Index] : &pImage->pDcHuffTbl[Index];

        if (HI_NULL == *pHtblptr)
        {
            //*pHtblptr = (JPG_HUFF_TBL *)VCOS_malloc(sizeof(JPG_HUFF_TBL));
            *pHtblptr = (JPG_HUFF_TBL *)JPGFMW_MemGet(&s_DecCtrlMem.s_ParseMem, sizeof(JPG_HUFF_TBL));
            if (HI_NULL == *pHtblptr)
            {
                return HI_FAILURE;
            }
        }

        JPGVCOS_memcpy(&((*pHtblptr)->Bits[1]), pTmp, 16);
        pTmp   += 16;
        Length -= 17;

        Cnt = 0;
        for (CntTmp = 1; CntTmp <= 16; CntTmp++)
        {
            Cnt += (*pHtblptr)->Bits[CntTmp];
        }

        if ((Cnt > 256) || (Cnt > Length))
        {
            //VCOS_free (*pHtblptr);
            *pHtblptr = NULL;
            return HI_FAILURE;
        }

        (*pHtblptr)->HuffValLen = (HI_U16)Cnt;

        if (Length < Cnt)
        {
            //VCOS_free (*pHtblptr);
            *pHtblptr = NULL;
            return HI_FAILURE;
        }

        JPGVCOS_memcpy((*pHtblptr)->HuffVal, pTmp, Cnt);
        Length -= Cnt;

        if (0 != Length)
        {
            pTmp += Cnt;
        }
    }

    if (Length != 0)
    {
        /*length error*/
        return HI_FAILURE;
    }

    pImage->SyntaxState |= JPG_PARSED_DHT;
    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGParsingDQT
* Description:   parse DQT
* Input:         pBuf
*                BufLen
*                pImage
* Output:        pImage
* Return:        HI_SUCCESS, HI_FAILURE
* Others:
******************************************************************************/
static HI_S32 JPGParsingDQT (HI_VOID *pBuf, HI_U32 BufLen, JPG_PICPARSEINFO_S *pImage)
{
    HI_U8 Num, Prec;
    JPG_QUANT_TBL *pQuantPtr;
    HI_U32 Cnt;
    HI_U8 *pTmp   = (HI_U8*)pBuf;
    HI_U32 Length = BufLen;

    /* 69: DQT + Lq + TqPq(1bytes) + QT(64bytes) */
    JPGPARSE_LENGTHJUDGE(BufLen, (69 - 4));

    while (Length > 0)
    {
        Num = *pTmp++;

        Prec = Num >> 4;
        Num &= 0x0F;

        if (Num >= JPG_NUM_QUANT_TBLS)
        {
            return HI_FAILURE;
        }

        if (HI_NULL == pImage->pQuantTbl[Num])
        {
            //pImage->pQuantTbl[Num] = (JPG_QUANT_TBL *)VCOS_malloc(sizeof(JPG_QUANT_TBL));
            pImage->pQuantTbl[Num] = (JPG_QUANT_TBL *)JPGFMW_MemGet(&s_DecCtrlMem.s_ParseMem, sizeof(JPG_QUANT_TBL));
            if (HI_NULL == pImage->pQuantTbl[Num])
            {
                return HI_FAILURE;
            }
        }

        pQuantPtr = pImage->pQuantTbl[Num];
        pQuantPtr->Precise = Prec;

        if (Length < (HI_U32)((JPG_QUANT_DCTSIZE << Prec) + 1))
        {
            //VCOS_free (pImage->pQuantTbl[Num]);
            pImage->pQuantTbl[Num] = NULL;
            return HI_FAILURE;
        }

        if (Prec) /* 16bit precision*/
        {
            for (Cnt = 0; Cnt < JPG_QUANT_DCTSIZE; Cnt++)
            {
                pQuantPtr->Quantval[s_ZOrder[Cnt]] = (*pTmp << 8) | *(pTmp + 1);
                pTmp += 2;
            }
        }
        else /* 8bit precision*/
        {
            for (Cnt = 0; Cnt < JPG_QUANT_DCTSIZE; Cnt++)
            {
                pQuantPtr->Quantval[s_ZOrder[Cnt]] = *pTmp++;
            }
        }

        Length -= (JPG_QUANT_DCTSIZE << Prec) + 1;
    }

    if (Length != 0)
    {
        /* JERR_BAD_LENGTH */
        return HI_FAILURE;
    }

    pImage->SyntaxState |= JPG_PARSED_DQT;
    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGPARSESkipData
* Description:   sikp some data with specified length
* Input:         pParseBuf   loop BUF
*                pLen        data length to be skipped
* Output:        pLen        data length after skipped
* Return:
* Others:
******************************************************************************/
STATIC_FUNC HI_VOID JPGPARSESkipData(JPG_CYCLEBUF_S *pParseBuf, HI_U32* pLen)
{
    JPGBUF_DATA_S BufInfo;
    HI_U32 ReqSkipLen;
    HI_U32 DataLen;
    
    jpg_assert((NULL != pParseBuf) && (NULL != pLen), return );

    ReqSkipLen = *pLen;

    /* skip '*pLen' bytes*/
    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &BufInfo);
    DataLen = BufInfo.u32Len[0] + BufInfo.u32Len[1];
    ReqSkipLen = JPG_MIN(ReqSkipLen, DataLen);
    JPGBUF_SetRdHead(pParseBuf, (HI_S32)ReqSkipLen);

    (*pLen) -= ReqSkipLen;
    return;
}

/******************************************************************************
* Function:      JPGPARSEFindMarker
* Description:   search Marker
* Input:         pstCB   loop BUF
* Output:        pu8Mark Marker found
* Return:        HI_SUCCESS, HI_ERR_JPG_WANT_STREAM
* Others:        if success 'pu8Mark' stand for the actual marker
*                else, 'pu8Mark' will be set to 0 or 0xff
******************************************************************************/
STATIC_FUNC HI_S32 JPGPARSEFindMarker(JPG_CYCLEBUF_S * pstCB, HI_U8* pu8Mark)
{
    JPGBUF_DATA_S stData;
    HI_U8  *pStart1, *pStart2;
    HI_U8 *pEnd1, *pEnd2;
    HI_U8*  pu8Char;
    HI_S32 s32Ret = HI_ERR_JPG_WANT_STREAM;
    HI_U32 Offset = 0;

    JPG_CHECK_NULLPTR(pstCB);
    JPG_CHECK_NULLPTR(pu8Mark);

    /*how many data was left in the buffer?*/
    (HI_VOID)JPGBUF_GetDataBtwWhRh(pstCB, &stData);

    /* if len=0, return 'stream is not enough'*/
    if (0 == stData.u32Len[0])
    {
        *pu8Mark = 0;
        return HI_ERR_JPG_WANT_STREAM;
    }

    pStart1 = (HI_U8*)stData.pAddr[0];
    pEnd1   = (HI_U8*)stData.pAddr[0] + (stData.u32Len[0] - 1);
    pStart2 = NULL;
    pEnd2 = NULL;

    pu8Char = pStart1;

    /*search marker in the first segment*/
    jpg_assert((pEnd1 - pu8Char) < (32 << 10), return HI_FAILURE);
    while (pu8Char != pEnd1)
    {
        /*if it is a Marker?*/
        if (JPGTAG == *pu8Char)
        {
            if ((*(pu8Char + 1) >= SOF0) && (*(pu8Char + 1) <= COM))
            {
                *pu8Mark = *(pu8Char + 1);
                s32Ret = HI_SUCCESS;
                break;
            }
        }

        pu8Char++;
    }

    if ((HI_SUCCESS != s32Ret) && (stData.u32Len[1] > 0))
    {
        pStart2 = (HI_U8*)stData.pAddr[1];
        pEnd2 = (HI_U8*)stData.pAddr[1] + (stData.u32Len[1] - 1);

        if ((JPGTAG == *pEnd1) && ((*pStart2 >= SOF0) && (*pStart2 <= COM)))
        {
            pu8Char  = pEnd1;
            *pu8Mark = *pStart2;
            s32Ret = HI_SUCCESS;
        }
        else
        {
            pu8Char = pStart2;

            /*search marker in the second segment*/
            jpg_assert((pEnd2 - pu8Char) < (32 << 10), return HI_FAILURE);
            while (pu8Char != pEnd2)
            {
                /*if it is a Marker*/
                if (JPGTAG == *pu8Char)
                {
                    if ((*(pu8Char + 1) >= SOF0) && (*(pu8Char + 1) <= COM))
                    {
                        *pu8Mark = *(pu8Char + 1);
                        s32Ret = HI_SUCCESS;
                        break;
                    }
                }

                pu8Char++;
            }
        }
    }

    /* calc the byte num skipped over*/
    if (pu8Char >= pStart1)
    {
        Offset = (HI_U32)((pu8Char - pStart1));
    }
    else
    {
        if(NULL!=pStart2)
        {
           Offset = (HI_U32)((pu8Char - pStart2)) + stData.u32Len[0];
        }
    }

    if (HI_SUCCESS != s32Ret)
    {
        if (JPGTAG != *pu8Char)
        {
            Offset  += 1;
            *pu8Mark = 0;
        }
        else
        {
            *pu8Mark = JPGTAG;
        }
    }

    /* skip the stream pointer to the marker's 0xff. */
    JPGBUF_SetRdHead(pstCB, (HI_S32)Offset);

    return s32Ret;
}

/******************************************************************************
* Function:      JPGPARSEGetMarkLen
* Description:   get Marker length
* Input:         pstCB   loog BUF
* Output:        pu16Len
* Return:        HI_SUCCESS, or 'lack stream'
* Others:
******************************************************************************/
STATIC_FUNC HI_S32 JPGPARSEGetMarkLen(const JPG_CYCLEBUF_S * pstCB, HI_U16* pu16Len)
{
    HI_U16 MarkLen = 0;
    HI_U8 SizeBuf[4];
    HI_S32 Ret;

    JPG_CHECK_NULLPTR(pstCB);
    JPG_CHECK_NULLPTR(pu16Len);

    Ret = JPGBUF_Read(pstCB, SizeBuf, 4);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    /*the 2 bytes after this 4 bytes stand for the length of the marker*/
    MarkLen = (SizeBuf[2] << 8) | SizeBuf[3];

    *pu16Len = MarkLen;
    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGPARSEParseMarker
* Description:
* Input:         Marker Marker
*                pBuf
*                BufLen
*                pImage
* Output:        pImage
* Return:        HI_SUCCESS, HI_FAILURE
* Others:
******************************************************************************/
STATIC_FUNC HI_S32 JPGPARSEParseMarker (HI_U8 Marker, HI_VOID *pBuf, HI_U32 BufLen,
                                        JPG_PICPARSEINFO_S *pImage)
{
    /*validate the parameters */
    JPG_CHECK_NULLPTR(pBuf);
    JPG_CHECK_NULLPTR(pImage);
    JPG_CHECK_LEN(BufLen);
    //HI_BOOL bAssert = HI_FALSE;
	
    jpg_assert(((Marker >= SOF0) && (Marker <= SOF3))
               || (Marker == DQT) || (Marker == DHT) || (Marker == SOS),
               return HI_ERR_JPG_INVALID_PARA);

    /*call the corresponding functions to parse the markers*/
    switch (Marker)
    {
        case DQT:
        {
            return JPGParsingDQT(pBuf, BufLen, pImage);
        }
        case DHT:
        {
            return JPGParsingDHT(pBuf, BufLen, pImage);
        }
        case SOF0:
        case SOF1:
        case SOF2:
        case SOF3:
        {
            return JPGParsingSOF(Marker, pBuf, BufLen, pImage);
        }
        case SOS:
        default:
        {
            return JPGParsingSOS(pBuf, BufLen, pImage);
        }
    }
}

/******************************************************************************
* Function:       JPGPARSEReleaseTable
* Description:
* Input:            pPicInfo
* Output:
* Return:
* Others:
******************************************************************************/
STATIC_FUNC HI_VOID  JPGPARSEReleaseTable(JPG_PICPARSEINFO_S* pPicInfo)
{
    HI_U32 i;

    /*release DQT  DHT*/
    jpg_assert((NULL != pPicInfo), return );

    for (i = 0; i < 4; i++)
    {
        if (NULL != pPicInfo->pQuantTbl[i])
        {
            pPicInfo->pQuantTbl[i] = NULL;
        }

        if (NULL != pPicInfo->pDcHuffTbl[i])
        {
            pPicInfo->pDcHuffTbl[i] = NULL;
        }

        if (NULL != pPicInfo->pAcHuffTbl[i])
        {
            pPicInfo->pAcHuffTbl[i] = NULL;
        }
    }

    return;
}

HI_VOID JPGPARSEInitApp1(const JPG_CYCLEBUF_S* pParseBuf, JPGPARSE_APP1_S* pstAPP1,
                         HI_U32 MarkLen)
{
    JPGBUF_DATA_S stData;

    //HI_S32         RealLen;
    HI_VOID*       BufAddr;
    HI_U32 BufLen;

    HI_S32 s32Ret = 0;
	
    jpg_assert((NULL != pParseBuf) && (NULL != pstAPP1) && (0 != MarkLen), return );

    memset(&stData, 0, sizeof(JPGBUF_DATA_S));
    s32Ret = JPGBUF_GetBufInfo(pParseBuf, &BufAddr, &BufLen);
	if(HI_SUCCESS!=s32Ret)
	{
	   return;
	}
    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);

    pstAPP1->APP1Offset = 0;
    pstAPP1->BufLen = BufLen;
    pstAPP1->APP1MarkLen = MarkLen;
    pstAPP1->StartRdAddr = stData.pAddr[0];

    return;
}

HI_VOID JPGPARSEUpdateApp1(const JPG_CYCLEBUF_S* pParseBuf, JPGPARSE_APP1_S* pstAPP1)
{
    JPGBUF_DATA_S stData;
    HI_S32 RealLen;

    jpg_assert((NULL != pParseBuf) && (NULL != pstAPP1), return );

    /*refresh APP1*/
    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);

    pstAPP1->EndRdAddr = stData.pAddr[0];
    RealLen = (HI_S32)pstAPP1->EndRdAddr - (HI_S32)pstAPP1->StartRdAddr;
    if (RealLen < 0)
    {
        RealLen += (HI_S32)pstAPP1->BufLen;
    }

    jpg_assert((RealLen >= 0), return );
    pstAPP1->APP1Offset += (HI_U32)RealLen;
    pstAPP1->StartRdAddr = pstAPP1->EndRdAddr;

    return;
}

HI_VOID JPGPARSEUpdateExif(JPG_CYCLEBUF_S *pParseBuf, const JPGPARSE_APP1_S* pstAPP1,
                           JPGPARSE_APP1_S* pstExif, HI_BOOL bExifEnd)
{
    HI_U8* pExifAddr  = NULL;
    HI_U32 u32ExifLen = 0;
    JPGBUF_DATA_S stData;

	HI_S32 s32Ret = 0;
	
    jpg_assert((NULL != pParseBuf) && (NULL != pstAPP1) && (NULL != pstExif), return );

    /*get Exif*/
    u32ExifLen = pstAPP1->APP1Offset - pstExif->APP1Offset;

    /*if the data is less than 64 bytes, do not process to prevent too much copy*/
    if ((u32ExifLen >= 64) || (HI_TRUE == bExifEnd))
    {
        /*get Exif, refresh Exif, attention that exit is between the read header and read tail*/
        s32Ret = JPGBUF_GetDataBtwRhRt(pParseBuf, &stData);
        if(HI_SUCCESS!=s32Ret)
        {
           return;
        }
        pExifAddr = (HI_U8*)pstExif->OutAddr + pstExif->APP1Offset;

        /*copying data...*/
        if (u32ExifLen <= stData.u32Len[0])
        {
            /*no rewind*/
            JPGVCOS_memcpy(pExifAddr, stData.pAddr[0], u32ExifLen);
        }
        else
        {
            JPGVCOS_memcpy(pExifAddr, stData.pAddr[0], stData.u32Len[0]);
            JPGVCOS_memcpy(pExifAddr + stData.u32Len[0], stData.pAddr[1],
                           u32ExifLen - stData.u32Len[0]);
        }

        /*refresh Exif*/
        JPGPARSEUpdateApp1(pParseBuf, pstExif);

        /*release parsed data*/
        JPGBUF_StepRdTail(pParseBuf);
    }

    return;
}

#endif

#if 1

/******************************************************************************
* Function:      JPGPARSEMarkDispose
* Description:   DQT SOS DHT SOF Mark parsing
* Input:         pParseCtx
*                pParseBuf
*                Marker
*                Index
* Output:
* Return:        HI_SUCCESS
*                HI_ERR_JPG_WANT_STREAM
*                HI_ERR_JPG_PARSE_FAIL
*                ERR_JPG_DEC_PARSING
* Others:
******************************************************************************/
STATIC_FUNC HI_S32 JPGPARSEMarkDispose(JPGPARSE_CTX_S *pParseCtx,
                                       JPG_CYCLEBUF_S *pParseBuf, HI_U8 Marker, HI_U32 Index)
{
    HI_VOID *pAnalAddr;
    HI_S32 Ret;
    HI_U16 u16MarkLen;
    HI_U32 MarkLen;
    JPG_PICPARSEINFO_S* pCurrNode = pParseCtx->pCurrPic;
    JPGBUF_DATA_S stData = {{HI_NULL}, {0}};
    JPGPARSE_APP1_S*    pstAPP1 = &pParseCtx->stAPP1;

    JPG_CHECK_NULLPTR(pParseCtx);
    JPG_CHECK_NULLPTR(pParseBuf);
    jpg_assert(((Marker >= SOF0) && (Marker <= SOF3))
               || (Marker == DQT) || (Marker == DHT) || (Marker == SOS),
               return HI_ERR_JPG_INVALID_PARA);

    pParseCtx->ParseState.State = JPGPARSE_STATE_PARSING;
    pParseCtx->ParseState.Index = pCurrNode->Index;

    /*get Marker length*/
    Ret = JPGPARSEGetMarkLen(pParseBuf, &u16MarkLen);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    MarkLen = (HI_U32)u16MarkLen;

    /*Marker length should larger than 2, if not there is an error*/
    if ((MarkLen <= 2) || (MarkLen > JPG_JOINTSPACE_LEN - 2))
    {
        pCurrNode->SyntaxState |= JPG_PARSED_ERR;
        JPGBUF_SetRdHead(pParseBuf, 2);
        JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "DQT~SOS MarkLen error!\n");
        return HI_ERR_JPG_PARSE_FAIL;
    }

    /*if the thumb end but the marker do not end, the thumb is error, skip the left bytes*/
    if (pstAPP1->APP1MarkLen > 0)
    {
        HI_U32 APP1Left = (pstAPP1->APP1MarkLen - 2) - pstAPP1->APP1Offset;
        if ((MarkLen + 2) > APP1Left)
        {
            pParseCtx->SkipLen = APP1Left;
            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "DQT~SOS error!\n");
            return HI_ERR_JPG_PARSE_FAIL;
        }
    }

    /*get the data length*/
    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);
    if (stData.u32Len[0] + stData.u32Len[1] < MarkLen + 2)
    {
        return HI_ERR_JPG_WANT_STREAM;
    }

    /*if the stream is rewinded, combine the data into a single buf*/
    if (MarkLen + 2 <= stData.u32Len[0])
    {
        pAnalAddr = (HI_U8*)stData.pAddr[0] + 4;
    }
    else
    {
        JPGVCOS_memcpy(pParseCtx->pJointSpace, stData.pAddr[0], stData.u32Len[0]);
        JPGVCOS_memcpy((HI_U8*)pParseCtx->pJointSpace + stData.u32Len[0], stData.pAddr[1],
                       MarkLen + 2 - stData.u32Len[0]);
        pAnalAddr = (HI_U8*)pParseCtx->pJointSpace + 4;
    }

    /*parse DQT DHT*/
    Ret = JPGPARSEParseMarker(Marker, pAnalAddr, MarkLen - 2, pCurrNode);

    JPGBUF_SetRdHead(pParseBuf, (HI_S32)(MarkLen + 2));

    if (HI_SUCCESS != Ret)
    {
        pCurrNode->SyntaxState |= JPG_PARSED_ERR;
        return HI_ERR_JPG_PARSE_FAIL;
    }

    if (SOS == Marker)
    {
        if ((pCurrNode->SyntaxState & JPG_PARSED_DHT) == 0)
        {
            Ret = JPGPARSEParseMarker(DHT, (HI_VOID*)s_DefaultHaffTable, sizeof(s_DefaultHaffTable), pCurrNode);
            if (HI_SUCCESS != Ret)
            {
                pCurrNode->SyntaxState |= JPG_PARSED_ERR;
                return HI_ERR_JPG_PARSE_FAIL;
            }
        }

        if (JPG_SYNTAX_ALL == (pCurrNode->SyntaxState & JPG_SYNTAX_ALL))
        {
            /*if it is not the main pic, accomplished thumb count increment by 1*/
            if (0 != pCurrNode->Index)
            {
                pParseCtx->ParseState.ThumbCnt++;
            }

            /*if the specified picture parsed over, return*/
            if (pCurrNode->Index == Index)
            {
                pParseCtx->ParseState.State = JPGPARSE_STATE_PARSED;
                return HI_SUCCESS;
            }
            else
            {
                pParseCtx->ParseState.State = JPGPARSE_STATE_PARTPARSED;
            }
        }
    }

    return HI_ERR_JPG_DEC_PARSING;
}

/******************************************************************************
* Function:      JPGPARSEMainParse
* Description:
* Input:         pParseCtx
*                pParseBuf
*                Marker
*                Index
* Output:
* Return:        HI_SUCCESS
*                HI_ERR_JPG_WANT_STREAM
*                HI_ERR_JPG_PARSE_FAIL
*                ERR_JPG_DEC_PARSING
* Others:
******************************************************************************/
static HI_S32 JPGPARSEMainParse(JPGPARSE_CTX_S *pParseCtx,
                                JPG_CYCLEBUF_S *pParseBuf,
                                HI_U8 Marker, HI_U32 Index)
{
    HI_S32 Ret = HI_ERR_JPG_DEC_PARSING;
    HI_U16 MarkerLen = 0;
    JPG_PICPARSEINFO_S *pCurrNode = pParseCtx->pCurrPic;

    JPG_CHECK_NULLPTR(pParseCtx);
    JPG_CHECK_NULLPTR(pParseBuf);
    jpg_assert(((Marker >= SOF0) && (Marker <= COM))
               || (Marker == TEM),
               return HI_ERR_JPG_INVALID_PARA);

    switch (Marker)
    {
    case SOI:
    {
        pCurrNode->SyntaxState |= JPG_PARSED_SOI;
        pParseCtx->ParseState.Index = pCurrNode->Index;
        pParseCtx->ParseState.State = JPGPARSE_STATE_PARSING;

        JPGBUF_SetRdHead(pParseBuf, 2);
        JPGBUF_StepRdTail(pParseBuf);
        break;
    }
    case APP0:
    case APP1:
    {
        jpg_assert((NULL != pCurrNode), return HI_FAILURE);

        /*if there is APP1 between DQT ~ SOS, do not skip to the appendix segment parse*/
        if ((pParseCtx->pCurrPic->SyntaxState >= JPG_PARSED_DQT)
            && (pParseCtx->pCurrPic->SyntaxState <= JPG_PARSED_SOS))
        {
            /*set the length to be skipped*/
            Ret = JPGPARSEGetMarkLen(pParseBuf, &MarkerLen);
            if (HI_SUCCESS != Ret)
            {
                return Ret;
            }

            JPGBUF_SetRdHead(pParseBuf, 4);
            pParseCtx->SkipLen = (HI_U32)MarkerLen - 2;
            Ret = HI_ERR_JPG_DEC_PARSING;
            break;
        }

        if (0 == pCurrNode->Index)
        {
            pParseCtx->bMainState = HI_FALSE;
            pParseCtx->ParseState.Index = pCurrNode->Index;
            pParseCtx->ParseState.State = JPGPARSE_STATE_PARTPARSED;
        }
        else
        {
            Ret = JPGPARSEGetMarkLen(pParseBuf, &MarkerLen);
            if (HI_SUCCESS != Ret)
            {
                return Ret;
            }

            JPGBUF_SetRdHead(pParseBuf, 4);
            pParseCtx->SkipLen = (HI_U32)MarkerLen - 2;
            Ret = HI_ERR_JPG_DEC_PARSING;
        }

        break;
    }
    case DQT:
    case DHT:
    case SOF0:
    case SOF1:
    case SOF2:
    case SOF3:
    case SOS:
    {
        /*hi3560 zhoutonghe add, discard the garbage data follow the EOI*/
        if (JPG_PARSED_EOI == (pParseCtx->MainPic.SyntaxState & JPG_PARSED_EOI))
        {
            pParseCtx->MainPic.SyntaxState &= (~JPG_PARSED_EOI);
        }

        Ret = JPGPARSEMarkDispose(pParseCtx, pParseBuf, Marker, Index);

        if (HI_ERR_JPG_PARSE_FAIL == Ret)
        {
            if (0 == pCurrNode->Index)     /*if main pic return failure*/
            {
                JPG_TRACE(HI_JPGLOG_LEVEL_NOTICE, JPEGFMW, "Main pic DQT~SOS error!\n");
                return HI_ERR_JPG_PARSE_FAIL;
            }
            else                    /* if thumb, go on*/
            {
                JPG_TRACE(HI_JPGLOG_LEVEL_NOTICE, JPEGFMW, "Thumb pic DQT~SOS error!\n");
                return HI_ERR_JPG_DEC_PARSING;
            }
        }

        break;
    }

    case EOI:
    {
        JPGBUF_SetRdHead(pParseBuf, 2);

        pCurrNode->SyntaxState |= JPG_PARSED_EOI;

        if (JPG_SYNTAX_ALL != (pCurrNode->SyntaxState & JPG_SYNTAX_ALL))
        {
            pCurrNode->SyntaxState |= JPG_PARSED_ERR;
        }

        pParseCtx->bMainState = HI_FALSE;
        pParseCtx->pCurrPic = &pParseCtx->MainPic;
        break;
    }

    default:
    {
        /*discard the marders we do not concern*/
        JPGBUF_SetRdHead(pParseBuf, 2);
        break;
    }
    }

    return Ret;
}

/******************************************************************************
* Function:      JPGPARSEAppParse
* Description:
* Input:         pParseCtx
*                pParseBuf
*                Marker
*                Index
* Output:
* Return:        HI_SUCCESS
*                HI_ERR_JPG_WANT_STREAM
*                HI_ERR_JPG_PARSE_FAIL
*                ERR_JPG_DEC_PARSING
* Others:
******************************************************************************/
static HI_S32 JPGPARSEAppParse(JPGPARSE_CTX_S *pParseCtx,
                               JPG_CYCLEBUF_S *pParseBuf,
                               HI_U8 Marker, HI_U32 Index)
{
    HI_S32 Ret = HI_ERR_JPG_DEC_PARSING;
    HI_U16 MarkLen;
    HI_U32 ThumbCnt;
    JPG_PICPARSEINFO_S *pPicInfo = HI_NULL;
    JPG_PICPARSEINFO_S *pCurrNode;

    JPGPARSE_APP1_S*  pstAPP1 = &pParseCtx->stAPP1;
    JPGPARSE_APP1_S*  pstExif = &pParseCtx->stExif;

    HI_U8 u8Char[6] = {0};
    HI_U16 ReadMark;
    HI_U16 ReadMarkLen;
    HI_S32 RetRead;

    JPG_CHECK_NULLPTR(pParseCtx);
    JPG_CHECK_NULLPTR(pParseBuf);
    jpg_assert(((Marker >= SOF0) && (Marker <= COM))
               || (Marker == TEM),
               return HI_ERR_JPG_INVALID_PARA);

    jpg_assert((pParseCtx->pCurrPic == &pParseCtx->MainPic), return HI_FAILURE);
    switch (Marker)
    {
    case SOI:
    {
        /* AI7D02624 */
 #if 1
        /* if is a valid SOI within the APP1*/
        RetRead = JPGBUF_Read(pParseBuf, u8Char, 6);
        if (HI_SUCCESS != RetRead)
        {
            return RetRead;
        }

        ReadMark = u8Char[2];
        if (JPGTAG != ReadMark)
        {
            JPGBUF_SetRdHead(pParseBuf, 2);
            break;
        }

        ReadMark = u8Char[3];

        if (!((DQT == ReadMark)
              || (DHT == ReadMark)
              || ((SOF0 <= ReadMark) && (SOF3 >= ReadMark))
              || ((APP0 <= ReadMark) && (APP15 >= ReadMark))))
        {
            /*invalid SOI, skip over*/
            JPGBUF_SetRdHead(pParseBuf, 2);
            break;
        }

        /*if the rest app1 can not contain a thumb*/
        if (pstAPP1->APP1MarkLen - pstAPP1->APP1Offset <= 256)
        {
            /*invalid SOI, skip over*/
            JPGBUF_SetRdHead(pParseBuf, 2);
            break;
        }

        ReadMarkLen = *(HI_U16*)(&u8Char[4]);
		
        ReadMarkLen = (HI_U16)JPG_U16SWAP(ReadMarkLen);

        if ((ReadMarkLen >= 0xFE00) || (0 == ReadMarkLen))
        {
            JPGBUF_SetRdHead(pParseBuf, 2);
            break;
        }
        else if ((ReadMarkLen + 6) >= (pstAPP1->APP1MarkLen - pstAPP1->APP1Offset))
        {
            JPGBUF_SetRdHead(pParseBuf, 2);
            break;
        }
 #endif


        /*get Exif */
        if (HI_TRUE == pstExif->bActive)
        {
            JPGPARSEUpdateExif(pParseBuf, pstAPP1, pstExif, HI_TRUE);
            return HI_SUCCESS;
        }

        pCurrNode = pParseCtx->pTailPic;

        /* if the former image was not parsed, this image was treated parse fail, to be discarded*/
        if (JPG_PARSED_ERR == (pCurrNode->SyntaxState & JPG_PARSED_ERR))
        {
            ThumbCnt = pCurrNode->Index;

            /*quant table, huffman table*/
            JPGPARSEReleaseTable(pCurrNode);

            JPGVCOS_memset((HI_VOID *)pCurrNode, 0, sizeof(JPG_PICPARSEINFO_S));

            /*find SOI again...*/
            pParseCtx->bMainState = HI_TRUE;
            pCurrNode->Index = ThumbCnt;
            pParseCtx->pCurrPic = pCurrNode;
            break;
        }

        pPicInfo = (JPG_PICPARSEINFO_S*)JPGFMW_MemGet(&s_DecCtrlMem.s_ParseMem, sizeof(JPG_PICPARSEINFO_S));

        if (NULL == pPicInfo)
        {
            return HI_ERR_JPG_NO_MEM;
        }

        JPGVCOS_memset((HI_VOID *)pPicInfo, 0x0, sizeof(JPG_PICPARSEINFO_S));

        ThumbCnt = pCurrNode->Index + 1;
        pCurrNode->pNext = (JPG_PICPARSEINFO_S*)pPicInfo;
        pCurrNode = pCurrNode->pNext;
        pCurrNode->Index = ThumbCnt;

        /*refresh node pointer*/
        pParseCtx->pCurrPic = pCurrNode;
        pParseCtx->pTailPic = pCurrNode;

        /*re set state, find SOI again...*/
        pParseCtx->bMainState = HI_TRUE;
        pParseCtx->ParseState.Index = pCurrNode->Index;

        break;
    }

    case APP0:       /*APP2~APP15*/
    case APP1:
    {
        if (HI_TRUE == pstAPP1->bActive)
        {
            /* AI7D02539 Modify Start */

            /*find marker within APP1,
            6: APP1 Len, 2bytes ; Mark + Len, 4bytes*/
            if (pstAPP1->APP1MarkLen > (pstAPP1->APP1Offset + 6))
            {
                /*HI_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEG,
                                "found invalid App mark %#x in App1\n", Marker);*/
                JPGBUF_SetRdHead(pParseBuf, 2);
                break;
            }

            /* AI7D02539 Modify End */
        }

        /*get app data length*/
        Ret = JPGPARSEGetMarkLen(pParseBuf, &MarkLen);
        if (HI_SUCCESS != Ret)
        {
            return Ret;
        }

        JPGBUF_SetRdHead(pParseBuf, 4);

        if (APP1 != Marker)    /*not APP1,skip over*/
        {
            //pParseCtx->SkipLen = 0;
            pParseCtx->SkipLen = MarkLen - 2;
            if (pstAPP1->bActive)
            {
                pParseCtx->SkipLen = (pParseCtx->SkipLen < pstAPP1->APP1MarkLen - pstAPP1->APP1Offset) ?
                                     pParseCtx->SkipLen : 0;
            }
        }
        else
        {
            /* AI7D02539 Modify Start */
            pstAPP1->bActive = HI_TRUE;
            JPGPARSEInitApp1(pParseBuf, pstAPP1, (HI_U32)MarkLen);
            /* AI7D02539 Modify End */

            JPGBUF_StepRdTail(pParseBuf);
        }

        break;
    }
    case DQT:
    case DHT:
    case SOF0:
    case SOF1:
    case SOF2:
    case SOF3:
    {
        if (HI_TRUE == pstAPP1->bActive)
        {
            /*find marker within the APP1,
            6:APP1 Len, 2bytes ; Mark + Len, 4bytes*/
            if (pstAPP1->APP1MarkLen > (pstAPP1->APP1Offset + 6))
            {
                /*HI_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEG,
                                "found invalid DQT~SOS mark 0x%#x in App1\n", Marker);*/
                JPGBUF_SetRdHead(pParseBuf, 2);
                break;
            }
            else
            {
                /*HI_TRACE(HI_JPGLOG_LEVEL_INFO, JPEG,
                                "found DQT~SOS mark after App1\n");*/
                pstAPP1->bActive = HI_FALSE;
            }
        }

        /*error handling*/
        if ((Index > 0) && (pParseCtx->ParseState.ThumbCnt < Index))
        {
            pParseCtx->ParseState.State = JPGPARSE_STATE_THUMBPARSED;
            return HI_ERR_JPG_THUMB_NOEXIST;
        }

        pParseCtx->pCurrPic   = &pParseCtx->MainPic;
        pParseCtx->bMainState = HI_TRUE;

        JPGBUF_StepRdTail(pParseBuf);
        break;
    }
    default:
    {
        /* discard the markers we don't concern*/
        JPGBUF_SetRdHead(pParseBuf, 2);
        break;
    }
    }

    return HI_ERR_JPG_DEC_PARSING;
}

#endif

/*****************************************************************************/
/*                                 JPG interface                             */
/*****************************************************************************/

/******************************************************************************
* Function:      JPGPARSE_CreateInstance
* Description:   create parser
* Input:         ImgType    file type
* Output:        pHandle    decoder handle
* Return:        HI_SUCCESS:
*                HI_ERR_JPG_NO_MEM: memory allocation error
* Others:
******************************************************************************/

HI_S32 JPGPARSE_CreateInstance(JPG_HANDLE *pHandle, JPG_IMGTYPE_E ImgType)
{
    JPG_HANDLE ParseHandle;
    HI_S32 s32Ret;
    JPGPARSE_CTX_S* pParseCtx;

    JPG_CHECK_NULLPTR(pHandle);
    JPG_CHECK_ENUM(ImgType, JPG_IMGTYPE_BUTT);

    //  JPGFMW_MemReset(&s_DecCtrlMem.s_ParseMem, 0);
    //	JPGFMW_MemReset(&s_DecCtrlMem.s_ExifMem, 0);

    pParseCtx = (JPGPARSE_CTX_S*)JPGFMW_MemGet(&s_DecCtrlMem.s_ParseMem,
                                               (sizeof(JPGPARSE_CTX_S) + JPG_JOINTSPACE_LEN));
    if (NULL == pParseCtx)
    {
        goto LABEL0;
    }

    s32Ret = JPGFMW_Handle_Alloc(&ParseHandle, (HI_VOID*)pParseCtx);
    if (HI_SUCCESS != s32Ret)
    {
        goto LABEL1;
    }

    JPGVCOS_memset((HI_VOID*)pParseCtx, 0, sizeof(JPGPARSE_CTX_S));

    pParseCtx->pJointSpace = pParseCtx + 1;

    pParseCtx->SkipLen = 0;
    pParseCtx->bMainState = HI_TRUE;

    /*image info chain init*/
    pParseCtx->pCurrPic = &pParseCtx->MainPic;
    pParseCtx->pTailPic = &pParseCtx->MainPic;
    pParseCtx->MainPic.SyntaxState = 0;
    pParseCtx->MainPic.Index = 0;

    pParseCtx->ImgType = ImgType;

    /*init the state of parser*/
    pParseCtx->ParseState.State = JPGPARSE_STATE_STOP;
    pParseCtx->ParseState.Index = 0;

    //pParseCtx->ParseState.ThumbCnt = 0;

    *pHandle = ParseHandle;

    return HI_SUCCESS;

LABEL1:

    //VCOS_free(pParseCtx);
    JPGFMW_MemReset(&s_DecCtrlMem.s_ParseMem, 0);
LABEL0:
    return HI_ERR_JPG_NO_MEM;
}

/******************************************************************************
* Function:      JPGPARSE_DestroyInstance
* Description:   destroy parser
* Input:         Handle
* Output:
* Return:
* Others:
******************************************************************************/
HI_S32 JPGPARSE_DestroyInstance(JPG_HANDLE Handle)
{
    JPGPARSE_CTX_S* pParseCtx;

    pParseCtx = (JPGPARSE_CTX_S*)JPGFMW_Handle_GetInstance(Handle);
    JPG_CHECK_HANDLE(pParseCtx);

    JPGFMW_Handle_Free(Handle);

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGPARSE_Parse
* Description:   parse
* Input:         Handle
*                pParseBuf
*                Index
* Output:        pParseState
* Return:        HI_SUCCESS:
*                HI_ERR_JPG_PARSE_FAIL:
*                HI_ERR_JPG_WANT_STREAM:
*                HI_ERR_JPG_THUMB_NOEXIST
* Others:        ,
******************************************************************************/
HI_S32 JPGPARSE_Parse(JPG_HANDLE Handle, JPG_CYCLEBUF_S *pParseBuf, HI_U32 Index,
                      HI_BOOL bInfo, JPG_PARSESTATE_S *pParseState)
{
    HI_S32 Ret   = HI_FAILURE;
    HI_U8 Marker = 0;
    HI_BOOL HaveBuf = HI_TRUE;
    JPGPARSE_CTX_S* pParseCtx;
    JPGBUF_DATA_S stData = {{HI_NULL}, {0}};

    JPGPARSE_APP1_S*  pstAPP1;
    JPGPARSE_APP1_S*  pstExif;

    HI_U32 ExifRead  = 0;
    HI_U8* pExifAddr = NULL;
    HI_U32 ExifLen = 0;

    /*get context, and validate the parameters*/
    pParseCtx = (JPGPARSE_CTX_S *)JPGFMW_Handle_GetInstance(Handle);
    JPG_CHECK_HANDLE(pParseCtx);
    JPG_CHECK_NULLPTR(pParseBuf);
    JPG_CHECK_NULLPTR(pParseState);

    pstAPP1 = &pParseCtx->stAPP1;
    pstExif = &pParseCtx->stExif;
    pParseCtx->bReqExif = bInfo;

    /*if it is called the 1st time, see the first 2 bytes consist SOI or not.*/
    if ((0 == pParseCtx->pCurrPic->Index)
       && (!(pParseCtx->pCurrPic->SyntaxState & JPG_PARSED_SOI)))
    {
        (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);

        if (2 > stData.u32Len[0])
        {
            JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
            return HI_ERR_JPG_WANT_STREAM;
        }

        jpg_assert((0 == stData.u32Len[1]), return HI_FAILURE);

        if (!JPG_CHECK_SOI(stData.pAddr[0]))
        {
            JPG_TRACE(HI_JPGLOG_LEVEL_ERROR, JPEGFMW, "%s\n", "Invalid Stream.");
            JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
            return HI_ERR_JPG_PARSE_FAIL;
        }
    }

    if (HI_TRUE == pParseCtx->stAPP1.bActive)
    {
        if (pParseState->ThumbEcsLen > 0)
        {
            JPGPARSEUpdateApp1(pParseBuf, pstAPP1);
            pParseCtx->stAPP1.APP1Offset += pParseState->ThumbEcsLen;
        }
    }

    while (HI_TRUE == HaveBuf)
    {
        /*skip some data if necessary*/
        if (0 != pParseCtx->SkipLen)
        {
            JPGPARSESkipData(pParseBuf, &pParseCtx->SkipLen);

            if (((Marker == APP0) || (Marker == APP1) || (Marker == 0))
                && ((pParseCtx->pCurrPic->SyntaxState >= JPG_PARSED_DQT)
                    && (pParseCtx->pCurrPic->SyntaxState <= JPG_PARSED_SOS)))
            {}
            else
            {
                JPGBUF_StepRdTail(pParseBuf);
            }

            /*refresh APP1*/
            if (HI_TRUE == pstAPP1->bActive)
            {
                JPGPARSEUpdateApp1(pParseBuf, pstAPP1);
            }

            if (0 < pParseCtx->SkipLen)
            {
                JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
                return HI_ERR_JPG_WANT_STREAM;
            }
        }

        /* process the first exif*/
        if ((HI_TRUE == pParseCtx->bReqExif)
            && (HI_TRUE == pstAPP1->bActive)
            && (HI_FALSE == pstExif->bActive))
        {
            Ret = JPGBUF_Read(pParseBuf, (HI_VOID*)&ExifRead, 4);
            if (HI_FAILURE == Ret)
            {
                return HI_ERR_JPG_WANT_STREAM;
            }

            /*query the rest stream is exit or not*/
            if (ExifRead == JPG_EXIF)
            {
                JPGVCOS_memcpy(pstExif, pstAPP1, sizeof(JPGPARSE_APP1_S));
                jpg_assert((pstAPP1->APP1MarkLen > 2), return HI_FAILURE);

                ExifLen = pstAPP1->APP1MarkLen + 2;

                pExifAddr = (HI_U8*)JPGFMW_MemGet(&s_DecCtrlMem.s_ExifMem, ExifLen);
                if (NULL == pExifAddr)
                {
                    return HI_ERR_JPG_NO_MEM;
                }

                pstExif->OutAddr = pExifAddr;
            }
        }

        (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);
        if (stData.u32Len[0] == 0)
        {
            HaveBuf = HI_FALSE;
            JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
            return HI_ERR_JPG_WANT_STREAM;
        }

        Ret = JPGPARSEFindMarker(pParseBuf, &Marker);
        JPG_CHECK_RET(Ret, return HI_FAILURE);

        Marker = (Marker > APP1 && Marker <= APP15) ? APP0 : Marker;

        /* for appendix segment*/
        if (HI_TRUE == pstAPP1->bActive)
        {
            JPGPARSEUpdateApp1(pParseBuf, pstAPP1);

            if (HI_TRUE == pstExif->bActive)
            {
                JPGPARSEUpdateExif(pParseBuf, pstAPP1, pstExif, HI_FALSE);
            }

            /*if app1 data parsed over*/
            if (pstAPP1->APP1Offset >= pstAPP1->APP1MarkLen - 2)
            {
                JPG_PICPARSEINFO_S* pPicInfo = HI_NULL;
                JPG_PICPARSEINFO_S* pTailPic = pParseCtx->pTailPic;

                JPGVCOS_memset(pstAPP1, 0, sizeof(JPGPARSE_APP1_S));

                if ((0 != pTailPic->Index)
                   && (JPG_SYNTAX_ALL != (pTailPic->SyntaxState & JPG_SYNTAX_ALL)))
                {
                    JPGPARSEReleaseTable(pTailPic);
                    pPicInfo = &pParseCtx->MainPic;

                    while (pPicInfo->pNext != pTailPic)
                    {
                        pPicInfo = pPicInfo->pNext;
                    }

                    pPicInfo->pNext = NULL;
                    pParseCtx->pTailPic = pPicInfo;

                    pParseCtx->bMainState = HI_FALSE;
                    pParseCtx->pCurrPic = &pParseCtx->MainPic;

                    JPGBUF_StepRdTail(pParseBuf);
                    continue;
                }
            }
        }

        if (HI_TRUE != pstExif->bActive)
        {
            if ((DQT == Marker)
                || (DHT == Marker)
                || ((SOF0 <= Marker) && (SOF3 >= Marker))
                || (SOS == Marker)
                || (DRI == Marker)
                || ((JPG0 <= Marker) && (Marker <= COM))
                || ((0 == Marker) && (0 == pParseCtx->pCurrPic->Index) && (HI_TRUE == pParseCtx->bMainState)))
            {
                ;
            }
            else if (((pParseCtx->pCurrPic->SyntaxState >= JPG_PARSED_DQT)
                      && (pParseCtx->pCurrPic->SyntaxState <= JPG_PARSED_SOS))
                     && ((APP0 <= Marker) && (APP15 >= Marker)))
            {
                ;
            }
            else if ((JPGTAG == Marker) && (1 == stData.u32Len[0]))
            {
                ;
            }
            else
            {
                JPGBUF_StepRdTail(pParseBuf);
            }
        }

        if (HI_ERR_JPG_WANT_STREAM == Ret)
        {
            JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
            return HI_ERR_JPG_WANT_STREAM;
        }

        if (pParseCtx->bMainState)   /**/
        {
            Ret = JPGPARSEMainParse(pParseCtx, pParseBuf, Marker, Index);
        }
        else                         /**/
        {
            Ret = JPGPARSEAppParse(pParseCtx, pParseBuf, Marker, Index);
        }

        if (HI_ERR_JPG_DEC_PARSING == Ret)
        {
            continue;
        }

        /*error handling*/
        if (HI_ERR_JPG_PARSE_FAIL == Ret)
        {
            pParseCtx->ParseState.State = JPGPARSE_STATE_PARSEERR;
            JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);

            JPG_TRACE(HI_JPGLOG_LEVEL_WARNING, JPEGFMW, "Parse Failed!\n");
            return HI_ERR_JPG_PARSE_FAIL;
        }

        JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
        return Ret;
    }

    return HI_ERR_JPG_WANT_STREAM;
}

/******************************************************************************
* Function:      JPGPARSE_Reset
* Description:   reset the parser
* Input:         Handle
* Output:
* Return:
* Others:
******************************************************************************/
HI_S32 JPGPARSE_Reset(JPG_HANDLE Handle)
{
    JPGPARSE_CTX_S* pParseCtx;
    JPG_PICPARSEINFO_S* pPicInfo;
    JPG_PICPARSEINFO_S* pPicTmp;

    pParseCtx = (JPGPARSE_CTX_S*)JPGFMW_Handle_GetInstance(Handle);
    JPG_CHECK_HANDLE(pParseCtx);

    pPicInfo = &pParseCtx->MainPic;
    while (NULL != pPicInfo)
    {
        /*release quant table, huffman table*/
        JPGPARSEReleaseTable(pPicInfo);

        /*release the node*/
        if (pPicInfo == (&pParseCtx->MainPic))
        {
            pPicInfo = pPicInfo->pNext;
        }
        else
        {
            pPicTmp = pPicInfo->pNext;

            //VCOS_free(pPicInfo);
            pPicInfo = pPicTmp;
        }
    }

    //JPGFMW_MemReset(pParseCtx, sizeof(JPGPARSE_CTX_S) + JPG_JOINTSPACE_LEN);
    JPGFMW_MemReset(&s_DecCtrlMem.s_ParseMem,
                    sizeof(JPGPARSE_CTX_S) + JPG_JOINTSPACE_LEN);
    JPGVCOS_memset(&pParseCtx->MainPic, 0, sizeof(JPG_PICPARSEINFO_S));

    pParseCtx->SkipLen = 0;
    pParseCtx->bMainState = HI_TRUE;
    pParseCtx->ParseState.State = JPGPARSE_STATE_STOP;
    pParseCtx->ParseState.Index = 0;
    pParseCtx->ParseState.ThumbCnt = 0;

    pParseCtx->pCurrPic = &pParseCtx->MainPic;
    pParseCtx->pTailPic = &pParseCtx->MainPic;
    pParseCtx->MainPic.SyntaxState = 0;
    pParseCtx->MainPic.Index = 0;

    JPGVCOS_memset(&pParseCtx->stAPP1, 0, sizeof(JPGPARSE_APP1_S));
    JPGVCOS_memset(&pParseCtx->stExif, 0, sizeof(JPGPARSE_APP1_S));

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGPARSE_EOICheck
* Description:   check EOI
* Input:         Handle
*                pParseBuf
* Output:        pOffset
* Return:        HI_SUCCESS
*                HI_FAILURE
* Others:
******************************************************************************/
HI_S32 JPGPARSE_EndCheck(JPG_HANDLE Handle, JPG_CYCLEBUF_S *pParseBuf,
                         HI_U32 *pOffset, HI_BOOL* pLastIsFF)
{
    HI_U8 Mark = 0;
    HI_S32 Ret;
    JPGBUF_DATA_S stData;
    HI_U8*   pAddr1;
    HI_U8*   pAddr2;
    HI_U32 u32Offset;
    HI_S32 s32Offset;

    /*validate parameters*/
    JPG_CHECK_NULLPTR(pParseBuf);
    JPG_CHECK_NULLPTR(pOffset);
    JPG_CHECK_NULLPTR(pLastIsFF);

    /*search EOI, get the offset*/
    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);
    pAddr1 = (HI_U8*)stData.pAddr[0];

    do
    {
        Ret = JPGPARSEFindMarker(pParseBuf, &Mark);
        JPG_CHECK_RET(Ret, return HI_FAILURE);
        if (HI_SUCCESS != Ret)
        {
            break;
        }

        if ((SOI == Mark) || (DQT == Mark) || (SOF0 == Mark))
        {
            return HI_ERR_JPG_PARSE_FAIL;
        }

        if (EOI != Mark)
        {
            JPGBUF_SetRdHead(pParseBuf, 2);
        }
    } while (EOI != Mark);

    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);
    pAddr2 = (HI_U8*)stData.pAddr[0];

    if (pAddr2 >= pAddr1)
    {
        u32Offset = (HI_U32)(pAddr2 - pAddr1);
    }
    else
    {
        u32Offset = pParseBuf->u32BufLen - (HI_U32)(pAddr1 - pAddr2);
    }

    s32Offset = (HI_S32)u32Offset;
    JPGBUF_SetRdHead(pParseBuf, -s32Offset);

    //JPGBUF_StepRdTail(pParseBuf);

    *pLastIsFF = HI_FALSE;
    if ((JPGTAG == Mark) && (HI_SUCCESS != Ret))
    {
        *pLastIsFF = HI_TRUE;
    }

    *pOffset = u32Offset;
    return Ret;
}

/******************************************************************************
* Function:      JPGPARSE_GetImgInfo
* Description:   get info from the parsing
* Input:         Handle
* Output:        pImgInfo
* Return:
* Others:
*
******************************************************************************/
HI_S32 JPGPARSE_GetImgInfo(JPG_HANDLE Handle, JPG_PICPARSEINFO_S **pImgInfoHead)
{
    JPGPARSE_CTX_S* pParseCtx;

    pParseCtx = (JPGPARSE_CTX_S*)JPGFMW_Handle_GetInstance(Handle);

    /*validate handle*/
    JPG_CHECK_HANDLE(pParseCtx);
    JPG_CHECK_NULLPTR(pImgInfoHead);

    *pImgInfoHead = &pParseCtx->MainPic;

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGPARSE_GetExifInfo
* Description:   get Exif
* Input:         Handle
* Output:        pAddr
*                pSize
* Return:
* Others:
*
******************************************************************************/
HI_S32 JPGPARSE_GetExifInfo(JPG_HANDLE Handle, HI_VOID** pAddr, HI_U32* pSize)
{
    JPGPARSE_CTX_S* pParseCtx;

    pParseCtx = (JPGPARSE_CTX_S*)JPGFMW_Handle_GetInstance(Handle);

    JPG_CHECK_HANDLE(pParseCtx);

    *pAddr = pParseCtx->stExif.OutAddr;
    *pSize = pParseCtx->stExif.APP1Offset;

    JPGVCOS_memset(&pParseCtx->stExif, 0, sizeof(JPGPARSE_APP1_S));

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGPARSE_ReleaseExif
* Description:   release Exif
* Input:         Handle
* Output:        pAddr
* Return:
* Others:
******************************************************************************/
HI_S32 JPGPARSE_ReleaseExif(JPG_HANDLE Handle, const HI_VOID* pAddr)
{
    JPG_CHECK_NULLPTR(pAddr);

    JPGFMW_MemReset(&s_DecCtrlMem.s_ExifMem, 0);

    return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif /* __cplusplus */
#endif  /* __cplusplus */
