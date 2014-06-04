#ifndef __JPGE_HAL_H__
#define __JPGE_HAL_H__

#include "hi_type.h"
#include "jpge_ext.h"
#include "jpge_osal.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif
/*************************************************************************************/

typedef struct
{
    HI_U32  PacketLen;        // united 64, include itself
    HI_U32  InvldByte;        // InvalidByteNum
    
    HI_U8   Reserved0;
    HI_U8   Reserved1;
    HI_U8   Reserved2;
    HI_U8   bLastSlice;
    
    HI_U32  ChnID;
    HI_U32  Reserved[12];
    
} Jpge_NaluHdr_S;

typedef struct
{
    HI_U32  SrcYAddr;
    HI_U32  SrcCAddr;
    HI_U32  SrcVAddr;
    HI_U32  SrcYStride;
    HI_U32  SrcCStride;
    
    HI_U32  StrmBufAddr;
    HI_U32  StrmBufRpAddr;
    HI_U32  StrmBufWpAddr;
    HI_U32  StrmBufSize;
    HI_U32  Vir2BusOffset; /* offset = vir - bus */
    
    HI_U32  PicWidth;
    HI_U32  PicHeight;
    HI_U32  YuvSampleType;
    HI_U32  YuvStoreType;
    HI_U32  RotationAngle;
    
    HI_U32  PackageSel;
    
    HI_U16  SlcSplitEn;
    HI_U16  SplitSize;     /* MCU @ JPGE */
    
    HI_U8   pJfifHdr[698];
    HI_U8   pJpgeYqt[64];
    HI_U8   pJpgeCqt[64];
    
    /* Read Back */
    HI_U8   EndOfPic;
    HI_U8   BufFull;
    
    /* other */
    HI_U32    *pRegBase;
    JPGE_SEM_S IsrMutex;
    
} Jpge_EncPara_S;

typedef struct
{
    Jpge_EncPara_S EncPara;
    HI_U32 ChnNull;

} Jpge_ChnCtx_S;

typedef struct
{
    HI_U32       CurrHandle;  /* used in ISR */
    HI_U32      *pRegBase;
    JPGE_SEM_S   ChnMutex;    /* for channel control */
    JPGE_LOCK_S  ChnLock;     /* lock ChnCtx[MAX_CHN] */

} Jpge_IpCtx_S;

HI_VOID Jpge_SetClock(HI_VOID);

/*************************************************************************************/
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif
