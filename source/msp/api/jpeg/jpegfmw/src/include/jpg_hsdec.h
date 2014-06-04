/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpg_hsdec.h

Version		    : Initial Draft
Author		    : 
Created		    : 2012/11/2
Description	    : 
Function List 	: 
			  		  
History       	:
Date				Author        		Modification
2012/11/2		   y00181162    	    Created file      	
******************************************************************************/

#ifndef  _JPG_HSDEC_H_
#define  _JPG_HSDEC_H_

#include "jpg_parse.h"
#include "hi_jpg_type.h"
#include "jpg_decctrl.h"
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif  /* __cplusplus */
#endif  /* __cplusplus */



/***************************** Macro Definition ******************************/

typedef enum hiJPGDEC_DECODESTATE_E
{
    JPGDEC_DECODESTATE_CONTINUE = 0, 
    JPGDEC_DECODESTATE_FINISH,       
    JPGDEC_DECODESTATE_ERROR,        
    JPGDEC_DECODESTATE_BUTT
}JPGDEC_DECODESTATE_E;


typedef enum hiJPG_ENCFMT_E
{
    JPGHAL_ENCFMT_400=0,
    JPGHAL_ENCFMT_420=3,
    JPGHAL_ENCFMT_422_21,
    JPGHAL_ENCFMT_422_12,    
    JPGHAL_ENCFMT_444,
    JPGHAL_ENCFMT_BUTT
}JPG_ENCFMT_E;


typedef enum hiJPG_SCALE_E
{
    JPG_SCALEDOWN_1 = 0,  
    JPG_SCALEDOWN_2,      
    JPG_SCALEDOWN_4,      
    JPG_SCALEDOWN_8,      
    JPG_SCALEDOWN_BUTT
}JPG_SCALE_E;


typedef struct hiJPGDEC_CHECKINFO_S
{
    HI_U32 QuantTblNum;    
    HI_U32 AcHuffTblNum;   
    HI_U32 DcHuffTblNum;   
    HI_U32 Width;          
    HI_U32 Height;         
    HI_U32 ComponentNum;   
    HI_U32 Precise;        
    HI_U32 Profile;        
    JPG_ENCFMT_E EncFmt;   
}JPGDEC_CHECKINFO_S;


typedef struct hiJPGDEC_DECODEATTR_S
{
    HI_U32 Height;               
    HI_U32 Width;                
    JPG_ENCFMT_E EncFmt;         
    JPG_SURFACE_S *pOutSurface;      
    JPG_QUANT_TBL * pQuanTbl[4]; 
    JPG_HUFF_TBL * pDcHuffTbl[4];
    JPG_HUFF_TBL * pAcHuffTbl[4];
}JPGDEC_DECODEATTR_S;


typedef enum hiJPG_HDSTATE_E
{
    JPG_HDSTATE_STOP = 0,     
    JPG_HDSTATE_DECODING = 6, 
    JPG_HDSTATE_DECODED,      
    JPG_HDSTATE_DECODEERR,    
    JPG_HDSTATE_BUTT
}JPG_HDSTATE_E;


typedef struct hiJPG_DECODER_FUNC
{
    HI_S32  (*JPGDEC_CreateInstance)(JPG_HANDLE *pHandle, HI_U32 u32FileLen);
    HI_S32 (*JPGDEC_DestroyInstance)(JPG_HANDLE Handle);
    HI_S32 (*JPGDEC_FlushBuf)(JPG_HANDLE Handle);
    HI_S32 (*JPGDEC_Reset) (JPG_HANDLE Handle);
    HI_S32 (*JPGDEC_Reset1) (JPG_HANDLE Handle);	
    HI_S32  (*JPGDEC_Check) (JPG_HANDLE Handle, const JPGDEC_CHECKINFO_S *pCheckInfo);
    HI_S32  (*JPGDEC_SetDecodeInfo) (JPG_HANDLE Handle,
                         JPGDEC_DECODEATTR_S *pstruDecodeAttr);
    HI_S32 (*JPGDEC_SendStream) (JPG_HANDLE Handle, JPGDEC_WRITESTREAM_S* pStreamInfo);
    HI_S32  (*JPGDEC_Start) (JPG_HANDLE Handle);
    HI_S32  (*JPGDEC_GetDecodeInfo) (JPGDEC_DECODESTATE_E *pDecodeState,
                          HI_U32 *pSize,HI_U32 TimeOut);
    HI_S32  (*JPGDEC_Status)(JPG_HANDLE Handle, HI_VOID **pBuf, HI_U32 *pBufLen,
                       JPG_HDSTATE_E* pHdState);
} JPG_DECODER_FUNC;

/******************************************************************************
* Function:      JPGDEC_InitHW
* Description:   
* Input:         pstruDecoder 
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID JPGDEC_InitHW(JPG_DECODER_FUNC *pstruDecoder);


/******************************************************************************
                         
******************************************************************************/

#define X5_MAX_WIDTH  8192
#define X5_MAX_HEIGHT 8192

#ifdef JPG_V200_IP
#define X5_QUANTBL_MAX_NUM  3
#define X5_EVERYHUFFTBL_MAX_NUM  2
#define X5_COMPONENT_NUM 3
#define X5_PRECISE_VALUE 8
#else
#define Hi3560_QUANTBL_MAX_NUM  3
#define Hi3560_EVERYHUFFTBL_MAX_NUM  2
#define Hi3560_MAX_WIDTH  4096
#define Hi3560_MAX_HEIGHT 4096
#define Hi3560_COMPONENT_NUM 3
#define Hi3560_PRECISE_VALUE 8
#endif

#define JPG_ALIGN_LEN				    64


typedef struct hiJPGHD_CTX_S
{
    HI_VOID*  pAllocVirtAddr;       
    HI_U32    AllocPhysAddr;        

    HI_VOID*  pVirtAddr;            
    HI_U32    PhysAddr;             
    HI_U32    RegOffset;            

#if defined(CHIP_TYPE_hi3716cv200) || defined(CHIP_TYPE_hi3718cv100) \
	|| defined(CHIP_TYPE_hi3719cv100) || defined(CHIP_TYPE_hi3719mv100_a)
	HI_CHAR* pStremPhyBuf;
	HI_CHAR* pStremVirBuf;
	HI_U32	 u32StremSize;
	HI_BOOL  bAllocStrem;
#endif

    JPG_CYCLEBUF_S  HDecBuf;        

    HI_BOOL         bFirstStart;    
    HI_BOOL         bEnd;           
    HI_BOOL         bForStart;      

    JPG_HDSTATE_E   eHwState;       

    HI_VOID*  pDownMsgVirtAddr;
    HI_U32    DownMsgPhyAddr;
    HI_U32	  ResetRegOffset;     
    HI_U32    VhbRegOffset;       
    HI_VOID*  pTabVirtAddr;         
    HI_U32    TabPhysAddr;          
}JPGHD_CTX_S;

#define JPG_ALIGN2MUL(x,a)             ( ((x) + ((a) - 1)) & (~((a) - 1)) )

#define JPG_ALIGNED_SCALE(x, i)  (((x) + (1 << (i)) - 1) >> (i))


/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/



/*****************************************************************************

*****************************************************************************/


    #ifdef __cplusplus
        #if __cplusplus

}

        #endif  /* __cplusplus */
   #endif  /* __cplusplus */

#endif /* _JPG_HSDEC_H_*/
