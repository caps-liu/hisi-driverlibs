#ifndef __JPGE_HAL_C__
#define __JPGE_HAL_C__

#include <linux/delay.h>
#include <asm/cacheflush.h>
#include <linux/dma-direction.h>
#include <asm/io.h>

#include "jpge_reg.h"
#include "jpge_hal.h"
#include "hi_reg_common.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif
/*************************************************************************************/

#define JPGE_MAX_CHN 4

static Jpge_ChnCtx_S JpgeChnCtx[JPGE_MAX_CHN];
static Jpge_IpCtx_S  JpgeIpCtx;

/*************************************************************************************/

static const HI_U8 ZigZagScan[64] =
{
 	 0,  1,  5,  6, 14, 15, 27, 28,
  	 2,  4,  7, 13, 16, 26, 29, 42,
  	 3,  8, 12, 17, 25, 30, 41, 43,
  	 9, 11, 18, 24, 31, 40, 44, 53,
  	10, 19, 23, 32, 39, 45, 52, 54,
  	20, 22, 33, 38, 46, 51, 55, 60,
  	21, 34, 37, 47, 50, 56, 59, 61,
  	35, 36, 48, 49, 57, 58, 62, 63
};

static const HI_U8 Jpge_Yqt[64] = 
{
    16, 11, 10, 16,  24,  40,  51,  61,
    12, 12, 14, 19,  26,  58,  60,  55,
    14, 13, 16, 24,  40,  57,  69,  56,
    14, 17, 22, 29,  51,  87,  80,  62,
    18, 22, 37, 56,  68, 109, 103,  77,
    24, 35, 55, 64,  81, 104, 113,  92,
    49, 64, 78, 87, 103, 121, 120, 101,
    72, 92, 95, 98, 112, 100, 103,  99
};
static const HI_U8 Jpge_Cqt[64] = 
{
    17, 18, 24, 47, 99, 99, 99, 99, 
    18, 21, 26, 66, 99, 99, 99, 99, 
    24, 26, 56, 99, 99, 99, 99, 99, 
    47, 66, 99, 99, 99, 99, 99, 99, 
    99, 99, 99, 99, 99, 99, 99, 99, 
    99, 99, 99, 99, 99, 99, 99, 99, 
    99, 99, 99, 99, 99, 99, 99, 99, 
    99, 99, 99, 99, 99, 99, 99, 99
};


static const HI_U8 Jpge_JfifHdr[698] =  /* 2(SOI)+18(APP0)+207(DQT)+19(SOF)+432(DHT)+6(DRI)+14(SOS) */
{
    0xff, 0xd8, 0xff, 0xe0, 0x00, 0x10, 0x4a, 0x46, 0x49, 0x46, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 
    0xff, 0xdb, 0x00, 0x43, 0x00, 0x10, 0x0b, 0x0c, 0x0e, 0x0c, 0x0a, 0x10, 0x0e, 0x0d, 0x0e, 0x12, 0x11, 0x10, 0x13, 0x18, 
    0x28, 0x1a, 0x18, 0x16, 0x16, 0x18, 0x31, 0x23, 0x25, 0x1d, 0x28, 0x3a, 0x33, 0x3d, 0x3c, 0x39, 0x33, 0x38, 0x37, 0x40, 
    0x48, 0x5c, 0x4e, 0x40, 0x44, 0x57, 0x45, 0x37, 0x38, 0x50, 0x6d, 0x51, 0x57, 0x5f, 0x62, 0x67, 0x68, 0x67, 0x3e, 0x4d, 
    0x71, 0x79, 0x70, 0x64, 0x78, 0x5c, 0x65, 0x67, 0x63, 0xff, 0xdb, 0x00, 0x43, 0x01, 0x11, 0x12, 0x12, 0x18, 0x15, 0x18, 
    0x2f, 0x1a, 0x1a, 0x2f, 0x63, 0x42, 0x38, 0x42, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 
    0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 
    0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0xff, 0xdb, 
    0x00, 0x43, 0x02, 0x11, 0x12, 0x12, 0x18, 0x15, 0x18, 0x2f, 0x1a, 0x1a, 0x2f, 0x63, 0x42, 0x38, 0x42, 0x63, 0x63, 0x63, 
    0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 
    0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 
    0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0xff, 0xc0, 0x00, 0x11, 0x08, 0x01, 0x20, 0x01, 0x60, 0x03, 0x01, 0x22, 0x00, 
    0x02, 0x11, 0x01, 0x03, 0x11, 0x02, 0xff, 0xc4, 0x00, 0x1f, 0x00, 0x00, 0x01, 0x05, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0xff, 
    0xc4, 0x00, 0x1f, 0x01, 0x00, 0x03, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0xff, 0xc4, 0x00, 0xb5, 0x10, 0x00, 0x02, 0x01, 
    0x03, 0x03, 0x02, 0x04, 0x03, 0x05, 0x05, 0x04, 0x04, 0x00, 0x00, 0x01, 0x7d, 0x01, 0x02, 0x03, 0x00, 0x04, 0x11, 0x05, 
    0x12, 0x21, 0x31, 0x41, 0x06, 0x13, 0x51, 0x61, 0x07, 0x22, 0x71, 0x14, 0x32, 0x81, 0x91, 0xa1, 0x08, 0x23, 0x42, 0xb1, 
    0xc1, 0x15, 0x52, 0xd1, 0xf0, 0x24, 0x33, 0x62, 0x72, 0x82, 0x09, 0x0a, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x25, 0x26, 0x27, 
    0x28, 0x29, 0x2a, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x53, 0x54, 
    0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 
    0x79, 0x7a, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9a, 0xa2, 
    0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xc2, 0xc3, 0xc4, 
    0xc5, 0xc6, 0xc7, 0xc8, 0xc9, 0xca, 0xd2, 0xd3, 0xd4, 0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda, 0xe1, 0xe2, 0xe3, 0xe4, 0xe5, 
    0xe6, 0xe7, 0xe8, 0xe9, 0xea, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8, 0xf9, 0xfa, 0xff, 0xc4, 0x00, 0xb5, 0x11, 
    0x00, 0x02, 0x01, 0x02, 0x04, 0x04, 0x03, 0x04, 0x07, 0x05, 0x04, 0x04, 0x00, 0x01, 0x02, 0x77, 0x00, 0x01, 0x02, 0x03, 
    0x11, 0x04, 0x05, 0x21, 0x31, 0x06, 0x12, 0x41, 0x51, 0x07, 0x61, 0x71, 0x13, 0x22, 0x32, 0x81, 0x08, 0x14, 0x42, 0x91, 
    0xa1, 0xb1, 0xc1, 0x09, 0x23, 0x33, 0x52, 0xf0, 0x15, 0x62, 0x72, 0xd1, 0x0a, 0x16, 0x24, 0x34, 0xe1, 0x25, 0xf1, 0x17, 
    0x18, 0x19, 0x1a, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 
    0x49, 0x4a, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x73, 0x74, 
    0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x92, 0x93, 0x94, 0x95, 0x96, 
    0x97, 0x98, 0x99, 0x9a, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 
    0xb9, 0xba, 0xc2, 0xc3, 0xc4, 0xc5, 0xc6, 0xc7, 0xc8, 0xc9, 0xca, 0xd2, 0xd3, 0xd4, 0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda, 
    0xe2, 0xe3, 0xe4, 0xe5, 0xe6, 0xe7, 0xe8, 0xe9, 0xea, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8, 0xf9, 0xfa, 0xff, 0xdd, 
    0x00, 0x04, 0x00, 0x64, 0xff, 0xda, 0x00, 0x0c, 0x03, 0x01, 0x00, 0x02, 0x11, 0x03, 0x11, 0x00, 0x3f, 0x00
};

/*************************************************************************************/

static HI_S32 Jpge_ChkChnCfg( Jpge_EncCfg_S *pEncCfg )
{
    HI_S32 CfgErr = 0;
    CfgErr |= (pEncCfg->FrameWidth  < 16) | (pEncCfg->FrameWidth  > 4096);
    CfgErr |= (pEncCfg->FrameHeight < 16) | (pEncCfg->FrameHeight > 4096);
    
    CfgErr |= (pEncCfg->YuvStoreType  > JPGE_PACKAGE);
    CfgErr |= (pEncCfg->YuvStoreType  > JPGE_ROTATION_180);
    CfgErr |= (pEncCfg->YuvSampleType > JPGE_YUV444);
    
    CfgErr |= (pEncCfg->SlcSplitEn != 0);
    CfgErr |= (pEncCfg->Qlevel      < 1) | (pEncCfg->Qlevel    > 99);
    
    if( CfgErr ) return HI_FAILURE;
    else         return HI_SUCCESS;
}

static HI_VOID Jpge_MakeQTable(HI_S32 s32Q, HI_U8* pLumaQt, HI_U8 *pChromaQt)
{
    HI_S32 i = 0;
    HI_S32 lq = 0;
    HI_S32 cq = 0;
    HI_S32 factor = s32Q;
    HI_S32 q = s32Q;

    if (q < 1)
    {
        factor = 1;
    }
    if (q > 99)
    {
        factor = 99;
    }

    if (q < 50)
    {
        q = 5000 / factor;
    }
    else
    {
        q = 200 - factor * 2;
    }

    /* Calculate the new quantizer */
    for (i = 0; i < 64; i++)
    {
        lq = (Jpge_Yqt[i] * q + 50) / 100;
        cq = (Jpge_Cqt[i] * q + 50) / 100;

        /* Limit the quantizers to 1 <= q <= 255 */
        if (lq < 1) lq = 1;
        else if (lq > 255) lq = 255;
        pLumaQt[i] = lq;

        if (cq < 1) cq = 1;
        else if (cq > 255) cq = 255;
        pChromaQt[i] = cq;
    }
}
/******************************************************************************
Function   : 
Description: 
Calls      : 
Input      : 
Output     : 
Return     : 
Others     : 
******************************************************************************/
static HI_S32 Jpge_StartOneFrame( HI_U32 EncHandle, Jpge_EncIn_S *pEncIn )
{
    Jpge_EncPara_S  *pEncPara  = (Jpge_EncPara_S *)EncHandle;
    
    HI_U32 JfifHdrLen = pEncPara->SlcSplitEn ? 698 : 698 - 6;
    HI_U32 BusBitBuf  = pEncIn->BusOutBuf + JfifHdrLen;
    
    BusBitBuf += 64 - (BusBitBuf & 63);
    
    pEncPara->StrmBufAddr   = BusBitBuf;      /* 64-byte aligned */
    pEncPara->StrmBufRpAddr = BusBitBuf - 16; /* 16-byte aligned */
    pEncPara->StrmBufWpAddr = BusBitBuf - 32; /* 16-byte aligned */
    
    pEncPara->StrmBufSize   = pEncIn->OutBufSize - (BusBitBuf - pEncIn->BusOutBuf);
    pEncPara->StrmBufSize  &= 0xFFFFFF00;
    
    pEncPara->Vir2BusOffset = (HI_U32)pEncIn->pOutBuf - pEncIn->BusOutBuf;
    
    pEncPara->SrcYAddr   = pEncIn->BusViY;
    pEncPara->SrcCAddr   = pEncIn->BusViC;
    pEncPara->SrcVAddr   = pEncIn->BusViV;
    pEncPara->SrcYStride = pEncIn->ViYStride;
    pEncPara->SrcCStride = pEncIn->ViCStride;
    
    *(HI_U32 *)(pEncPara->StrmBufRpAddr + pEncPara->Vir2BusOffset) = 0;
    *(HI_U32 *)(pEncPara->StrmBufWpAddr + pEncPara->Vir2BusOffset) = 0;

    /* 
     * DMA similarity operation need flush l1cache and l2cache manually *
    */
    __cpuc_flush_kern_all(); // flush l1cache
    outer_flush_all(); // flush l2cache

    /*Invalidate output buf cache*/
    outer_inv_range(pEncIn->BusOutBuf, pEncIn->BusOutBuf + pEncIn->OutBufSize);
    dmac_unmap_area(pEncIn->pOutBuf, pEncIn->OutBufSize, DMA_FROM_DEVICE);
    
    return HI_SUCCESS;
}

/******************************************************************************
Function   : 
Description: 
Calls      : 
Input      : 
Output     : 
Return     : 
Others     : 
******************************************************************************/
static HI_VOID Jpge_CfgReg( HI_U32 EncHandle )
{
    Jpge_EncPara_S *pEncPara = (Jpge_EncPara_S *)EncHandle;    
    S_JPGE_REGS_TYPE  *pAllReg = (S_JPGE_REGS_TYPE  *)pEncPara->pRegBase;   
    
    {   
        U_JPGE_INTMASK D32;
        D32.u32 = 0;
        
        D32.bits.VencEndOfPicMask = 1;
        D32.bits.VencBufFullMask  = 1;
        
        pAllReg->JPGE_INTMASK.u32 = D32.u32;
    }

    {   //pic cfg
        U_JPGE_PICFG D32;
        D32.u32 = 0;
        
        D32.bits.strFmt        = pEncPara->YuvStoreType;
        D32.bits.yuvFmt        = pEncPara->YuvSampleType;
        D32.bits.rotationAngle = pEncPara->RotationAngle;
        D32.bits.packageSel    = pEncPara->PackageSel & 0xFF; /* todo...cfg based ver */
        
        if( (pEncPara->RotationAngle == 1 || pEncPara->RotationAngle == 2) &&
             pEncPara->YuvSampleType == 1  ) /* 90 or 270 @ 422 */
            D32.bits.yuvFmt = 0;         /* change 422 to 420 */
        
        pAllReg->JPGE_PICFG.u32 = D32.u32;
    }

    {   //ecs cfg
        U_JPGE_ECSCFG D32;
        D32.u32 = 0;
        
        D32.bits.ecsSplit = pEncPara->SlcSplitEn;
        D32.bits.ecsSize  = pEncPara->SplitSize - 1;
        
        pAllReg->JPGE_ECSCFG.u32 = D32.u32;
    }

    {   //image size
        U_JPGE_VEDIMGSIZE D32;
        D32.u32 = 0;
        
        D32.bits.ImgWidthInPixelsMinus1  = pEncPara->PicWidth  - 1;
        D32.bits.ImgHeightInPixelsMinus1 = pEncPara->PicHeight - 1;
        
        pAllReg->JPGE_VEDIMGSIZE.u32 = D32.u32;
    }

    pAllReg->JPGE_SRCYADDR = pEncPara->SrcYAddr;
    pAllReg->JPGE_SRCCADDR = pEncPara->SrcCAddr;
    pAllReg->JPGE_SRCVADDR = pEncPara->SrcVAddr;
    
    {   
        U_JPGE_SSTRIDE D32;
        D32.u32 = 0;
        
        D32.bits.SrcYStride = pEncPara->SrcYStride; 
        D32.bits.SrcCStride = pEncPara->SrcCStride; 
        
        if( (pEncPara->RotationAngle == 1 || pEncPara->RotationAngle == 2) &&
             pEncPara->YuvSampleType == 1  )                  /* 90 or 270 @ 422 */
            D32.bits.SrcCStride = pEncPara->SrcCStride << 1;  /* change 422 to 420 */
        
        pAllReg->JPGE_SSTRIDE.u32 = D32.u32;
    }
    //output stream buffer
    pAllReg->JPGE_STRMADDR       = pEncPara->StrmBufAddr;
    pAllReg->JPGE_SRPTRADDR      = pEncPara->StrmBufRpAddr;
    pAllReg->JPGE_SWPTRADDR      = pEncPara->StrmBufWpAddr;
    pAllReg->JPGE_STRMBUFLEN.u32 = pEncPara->StrmBufSize;
    
    {   // jpge dqt
        U_JPGE_QPT D32;
        int i, j;

        for(i = 0; i < 16; i++)
        {
            j = (i & 1) * 32 + (i >> 1);
            D32.bits.QP0 = pEncPara->pJpgeYqt[j   ];
            D32.bits.QP1 = pEncPara->pJpgeYqt[j+ 8];
            D32.bits.QP2 = pEncPara->pJpgeYqt[j+16];
            D32.bits.QP3 = pEncPara->pJpgeYqt[j+24];
            pAllReg->JPGE_QPT[i].u32 = D32.u32;
            
            D32.bits.QP0 = pEncPara->pJpgeCqt[j   ];
            D32.bits.QP1 = pEncPara->pJpgeCqt[j+ 8];
            D32.bits.QP2 = pEncPara->pJpgeCqt[j+16];
            D32.bits.QP3 = pEncPara->pJpgeCqt[j+24];
            pAllReg->JPGE_QPT[i+16].u32 = D32.u32;
            
            D32.bits.QP0 = pEncPara->pJpgeCqt[j   ];
            D32.bits.QP1 = pEncPara->pJpgeCqt[j+ 8];
            D32.bits.QP2 = pEncPara->pJpgeCqt[j+16];
            D32.bits.QP3 = pEncPara->pJpgeCqt[j+24];
            pAllReg->JPGE_QPT[i+32].u32 = D32.u32;
        }

    }
    
    // start HW to encoder
    pAllReg->JPGE_START.u32 = 0;
    pAllReg->JPGE_START.u32 = 1;

}
/******************************************************************************
Function   : 
Description: 
Calls      : 
Input      : 
Output     : 
Return     : 
Others     : 
******************************************************************************/
static HI_VOID Jpge_ReadReg( HI_U32 EncHandle )
{
    Jpge_EncPara_S  *pEncPara  = (Jpge_EncPara_S *)EncHandle;
    
    S_JPGE_REGS_TYPE *pAllReg = (S_JPGE_REGS_TYPE *)pEncPara->pRegBase;
    
    /* read IntStat reg */
    pEncPara->EndOfPic  = pAllReg->JPGE_INTSTAT.bits.VencEndOfPic;
    pEncPara->BufFull   = pAllReg->JPGE_INTSTAT.bits.VencBufFull;
    
    /* clear jpge int */
    pAllReg->JPGE_INTCLR.u32 = 0xFFFFFFFF;
}

/******************************************************************************
Function   : 
Description: 
Calls      : 
Input      : 
Output     : 
Return     : 
Others     : 
******************************************************************************/
static HI_S32 Jpge_EndOneFrame( HI_U32 EncHandle, Jpge_EncOut_S *pEncOut )
{
    Jpge_EncPara_S  *pEncPara = (Jpge_EncPara_S *)EncHandle;
    Jpge_NaluHdr_S  *pNaluHdr = (Jpge_NaluHdr_S *)(pEncPara->StrmBufAddr + pEncPara->Vir2BusOffset);
    
    HI_U32 JfifHdrLen = pEncPara->SlcSplitEn ? 698 : 698 - 6;
    HI_U32 i;
    
    if( pEncPara->BufFull )
    {
        pEncOut->StrmSize  = 0;
        pEncOut->BusStream = 0;
        pEncOut->pStream   = NULL;
        return HI_FAILURE;
    }

#if 0
    /* 
     * DMA similarity operation need flush l1cache and l2cache manually *
    */
    __cpuc_flush_kern_all(); // flush l1cache
    outer_flush_all(); // flush l2cache
#endif

    pEncOut->StrmSize  = pNaluHdr->PacketLen - 64 - pNaluHdr->InvldByte + JfifHdrLen;
    pEncOut->BusStream = pEncPara->StrmBufAddr + 64 - JfifHdrLen;
    pEncOut->pStream   = (HI_U8 *)(pEncOut->BusStream + pEncPara->Vir2BusOffset);   
    
    for( i = 0; i < JfifHdrLen; i++ )
        *(pEncOut->pStream + i) = pEncPara->pJfifHdr[i];
    
    return HI_SUCCESS;
}
/******************************************************************************
Function   : 
Description: 
Calls      : 
Input      : 
Output     : 
Return     : 
Others     : 
******************************************************************************/
static HI_VOID Jpge_Isr( HI_VOID )
{
    Jpge_EncPara_S  *pEncPara = (Jpge_EncPara_S *)JpgeIpCtx.CurrHandle;
    
    Jpge_ReadReg( JpgeIpCtx.CurrHandle );
    
    JpgeOsal_MutexUnlock( &pEncPara->IsrMutex );
}

HI_S32 Jpge_Open( HI_VOID )
{
    int i;
    
    /* init IRQ */
    if( HI_FAILURE == JpgeOsal_IrqInit( JPGE_IRQ_ID, Jpge_Isr ) )
    {
        return HI_FAILURE;
    }

    /* map reg_base_addr to virtual address */
    JpgeIpCtx.pRegBase = (HI_U32 *)JpgeOsal_MapRegisterAddr( JPGE_REG_BASE_ADDR, 0x1000 );

    Jpge_SetClock();
    
    /* init lock & mutex */
    JpgeOsal_LockInit ( &JpgeIpCtx.ChnLock  );
    JpgeOsal_MutexInit( &JpgeIpCtx.ChnMutex );
    
    /* clear channel status */
    for( i = 0; i < JPGE_MAX_CHN; i++ )
    {
        JpgeChnCtx[i].ChnNull = 1;
    }
    
    return HI_SUCCESS;
}

HI_S32 Jpge_Close( HI_VOID )
{
    JpgeOsal_IrqFree( JPGE_IRQ_ID );
    
    JpgeOsal_UnmapRegisterAddr( JpgeIpCtx.pRegBase );
    
    return HI_SUCCESS;
}
/******************************************************************************
Function   : 
Description: 
Calls      : 
Input      : 
Output     : 
Return     : 
Others     : 
******************************************************************************/
HI_S32 Jpge_Create( HI_U32 *pEncHandle, Jpge_EncCfg_S *pEncCfg )
{
    Jpge_EncPara_S  *pEncPara = NULL;
    HI_U32 i;
    JPGE_LOCK_FLAG flag;
    
    /* check channel config */
    if( HI_FAILURE == Jpge_ChkChnCfg( pEncCfg ) )
    {
        return HI_FAILURE;
    }
    
    /* find free channel */
    JpgeOsal_Lock( &JpgeIpCtx.ChnLock, &flag );
    for( i = 0; i < JPGE_MAX_CHN; i++ )
    {
        if( JpgeChnCtx[i].ChnNull == 1 )
        {
            pEncPara = &JpgeChnCtx[i].EncPara;
            JpgeChnCtx[i].ChnNull = 0;
            break;
        }
    }
    JpgeOsal_Unlock( &JpgeIpCtx.ChnLock, &flag );
    
    if( i == JPGE_MAX_CHN )
    {
        return HI_FAILURE;
    }
    
    /* init mutex */
    JpgeOsal_MutexInit( &pEncPara->IsrMutex );
    JpgeOsal_MutexLock( &pEncPara->IsrMutex );
    
    /* Make JFIF header bitstream */
    {
        HI_U32 w = pEncCfg->FrameWidth, t, i;
        HI_U32 h = pEncCfg->FrameHeight;
        
        HI_U8  dri[] = {0xff, 0xdd, 0x00, 0x04, 0x00, 0x64};
        HI_U8  sos[] = {0xff, 0xda, 0x00, 0x0c, 0x03, 0x01, 0x00, 0x02, 0x11, 0x03, 0x11, 0x00, 0x3f, 0x00};
        
        for( i = 0; i < 698; i++ )
            pEncPara->pJfifHdr[i] = Jpge_JfifHdr[i];
        
        /* 420 422 or 444 */
        if     ( pEncCfg->YuvSampleType == JPGE_YUV420 ) pEncPara->pJfifHdr[238] = 0x22;
        else if( pEncCfg->YuvSampleType == JPGE_YUV422 ) pEncPara->pJfifHdr[238] = 0x21;
        else if( pEncCfg->YuvSampleType == JPGE_YUV444 ) pEncPara->pJfifHdr[238] = 0x11;
        
        if( pEncCfg->RotationAngle == JPGE_ROTATION_90 || 
            pEncCfg->RotationAngle == JPGE_ROTATION_270 )
        {
            if(pEncCfg->YuvSampleType == JPGE_YUV422) /* 90 or 270 @ 422 */
                pEncPara->pJfifHdr[238] = 0x22;       /* change 422 to 420 */
            t = w; w = h; h = t;
        }
        /* img size */
        pEncPara->pJfifHdr[232] = h >> 8; pEncPara->pJfifHdr[233] = h & 0xFF;
        pEncPara->pJfifHdr[234] = w >> 8; pEncPara->pJfifHdr[235] = w & 0xFF;
        
        /* DRI & SOS */
        t = 678;
        if(pEncCfg->SlcSplitEn)
        {
            dri[4] = pEncCfg->SplitSize >> 8;
            dri[5] = pEncCfg->SplitSize & 0xFF;
            for( i = 0; i < 6; i++, t++ )
                pEncPara->pJfifHdr[t] = dri[i];
        }
        
        for( i = 0; i < 14; i++, t++ )
            pEncPara->pJfifHdr[t] = sos[i];
        
        /* DQT */
        Jpge_MakeQTable( pEncCfg->Qlevel, pEncPara->pJpgeYqt, pEncPara->pJpgeCqt );
        for( i = 0; i < 64; i++ )
        {
            t = ZigZagScan[i];
            pEncPara->pJfifHdr[t +  25] = pEncPara->pJpgeYqt[i];
            pEncPara->pJfifHdr[t +  94] = pEncPara->pJpgeCqt[i];
            pEncPara->pJfifHdr[t + 163] = pEncPara->pJpgeCqt[i];
        }
        
    }
    
    /* Init other reg */
    pEncPara->PicWidth  = pEncCfg->FrameWidth;
    pEncPara->PicHeight = pEncCfg->FrameHeight;
    
    pEncPara->YuvSampleType = pEncCfg->YuvSampleType;
    pEncPara->YuvStoreType  = pEncCfg->YuvStoreType;
    pEncPara->RotationAngle = pEncCfg->RotationAngle;
    pEncPara->PackageSel    = 0xd8;
    
    pEncPara->SlcSplitEn    = pEncCfg->SlcSplitEn;
    pEncPara->SplitSize     = pEncCfg->SplitSize;
    
    pEncPara->pRegBase      = JpgeIpCtx.pRegBase;
    
    *pEncHandle = (HI_U32)pEncPara;
    return HI_SUCCESS;
}

HI_S32 Jpge_Destroy( HI_U32 EncHandle )
{
    Jpge_EncPara_S  *pEncPara = (Jpge_EncPara_S *)EncHandle;
    HI_U32 i;
    JPGE_LOCK_FLAG flag;
    
    if( pEncPara == NULL )
        return HI_FAILURE;
    
    /* find channel to destroy */
    JpgeOsal_Lock( &JpgeIpCtx.ChnLock, &flag );
    for( i = 0; i < JPGE_MAX_CHN; i++ )
    {
        if( pEncPara == &JpgeChnCtx[i].EncPara )
        {
            JpgeChnCtx[i].ChnNull = 1;
            break;
        }
    }
    JpgeOsal_Unlock( &JpgeIpCtx.ChnLock, &flag );
    
    if( i == JPGE_MAX_CHN )
    {
        return HI_FAILURE;
    }
    
    return HI_SUCCESS;
}
/******************************************************************************
Function   : 
Description: 
Calls      : 
Input      : 
Output     : 
Return     : 
Others     : 
******************************************************************************/
HI_S32 Jpge_Encode( HI_U32 EncHandle, Jpge_EncIn_S *pEncIn, Jpge_EncOut_S *pEncOut )
{
    Jpge_EncPara_S  *pEncPara = (Jpge_EncPara_S *)EncHandle;
    
    Jpge_StartOneFrame( EncHandle, pEncIn );    
    JpgeOsal_MutexLock( &JpgeIpCtx.ChnMutex ); /* Multi-Chn Mutex */    
    JpgeIpCtx.CurrHandle = EncHandle;
    Jpge_CfgReg( EncHandle );
    JpgeOsal_MutexLock( &pEncPara->IsrMutex );  /* wait isr */
    JpgeOsal_MutexUnlock( &JpgeIpCtx.ChnMutex );
    return Jpge_EndOneFrame( EncHandle, pEncOut );
}

HI_VOID Jpge_SetClock(HI_VOID)
{
    U_PERI_CRG36 unTempValue;

    unTempValue.u32 = g_pstRegCrg->PERI_CRG36.u32;

    /*cancel reset*/
    unTempValue.bits.jpge_srst_req = 0x0;

    /*enable clock */
    unTempValue.bits.jpge_cken = 0x1;

    g_pstRegCrg->PERI_CRG36.u32 = unTempValue.u32;
    
    return;
}

/*************************************************************************************/
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif
