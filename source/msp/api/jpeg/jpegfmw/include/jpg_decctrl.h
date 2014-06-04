/*******************************************************************************
 *              Copyright 2006 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: jpg_decctrl.h
 * Description:
 *
 * History:
 * Version   Date             Author    DefectNum    Description
 * main\1    2008-03-26       d37024    HI_NULL      Create this file.
 ******************************************************************************/
#ifndef _JPG_STATE_H_
#define _JPG_STATE_H_

#include "hi_type.h"
#include "hi_jpg_type.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif  /* __cplusplus */
#endif  /* __cplusplus */

/****************************************************************************
*                       data structure, macro and function                  *
****************************************************************************/

/*state for the decode controler*/
typedef enum hiJPG_STATE_E
{
    JPG_STATE_STOP = 0,             /*decode or parsing not lanched*/

    JPG_STATE_PARSING,              
    JPG_STATE_PARTPARSED,           /*some thumbs parsed*/
    JPG_STATE_THUMBPARSED,          /*all thumbs are parsed*/
    JPG_STATE_PARSED,               /*parsing finished*/
    JPG_STATE_PARSEERR,             /*parsing error*/

    JPG_STATE_DECODING,             
    JPG_STATE_DECODED,              
    JPG_STATE_DECODEERR,            

    JPG_STATE_BUTT
}JPG_STATE_E;

typedef struct hiJPGDEC_WRITESTREAM_S
{
    HI_VOID *pStreamAddr;    /*vir addr for the compressed jpeg data*/
    HI_U32   StreamLen;      /*data length, in bytes*/
    HI_BOOL  EndFlag;        /*1 indicate the end of the stream*/
    HI_U32   CopyLen;        /*data length actually copied*/
    HI_BOOL  NeedCopyFlag;   /*if deed copy, copy is not necessary in some case*/
}JPGDEC_WRITESTREAM_S;


/*****************************************************************************/
/*                          JPG FirmWare interface                           */
/*****************************************************************************/

/******************************************************************************
* Function:      JPG_CreateDecoder
* Description:   create instance
* Input:         u32FileLen file length
* Output:        pHandle JPG decoder handle
* Return:        HI_SUCCESS:            success
*                HI_ERR_JPG_DEC_BUSY:   decoder busy
*                HI_ERR_JPG_DEV_NOOPEN: device not opened yet
*                HI_ERR_JPG_NO_MEM:     memory not enough
*                HI_FAILURE:            system call error
* Others:        null
******************************************************************************/
HI_S32 JPG_CreateDecoder(JPG_HANDLE *pHandle, JPG_IMGTYPE_E ImgType, HI_U32 ImgLen);

/******************************************************************************
* Function:      JPG_DestroyDecoder
* Description:   delete JPG decoder instance
* Input:         
* Output:        Handle JPG decoder handle
* Return:        HI_SUCCESS                 success
* Others:        no
******************************************************************************/
HI_S32  JPG_DestroyDecoder(JPG_HANDLE Handle);

/******************************************************************************
* Function:      JPG_Probe
* Description:   to see if the data stand for a jpeg image according to the 
*                data given by the user
* Input:         Handle decoder handle
*                pBuf    data block from the upper layer
*                BufLen data block length
* Output:        none 
* Return:        HI_SUCCESS              yes, is a jpeg file
*                HI_ERR_JPG_WANT_STREAM  data not enough
*                HI_FAILURE              no, not a jpeg file
* Others:        2 bytes or more are needed
******************************************************************************/
HI_S32  JPG_Probe(JPG_HANDLE Handle, HI_VOID* pBuf, HI_U32 BufLen);

/******************************************************************************
* Function:      JPG_Decode
* Description:   decoding
* Input:         Handle   decoder instance
*                pSurface output surface
*                Index    which picture will be decoded, o for main pic, others for thumbs
* Output:        none
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_INVALID_HANDLE  
*                HI_ERR_JPG_INVALID_PARA    
*                HI_ERR_JPG_WANT_STREAM     
*                HI_ERR_JPG_DEC_FAIL        
*                HI_FAILURE                 
* Others:        none
******************************************************************************/
HI_S32  JPG_Decode(JPG_HANDLE Handle, JPG_SURFACE_S *pSurface, HI_U32 Index);

/******************************************************************************
* Function:      JPG_GetPrimaryInfo
* Description:   get info
* Input:         Handle   
* Output:        pImageInfo 
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_INVALID_HANDLE  
*                HI_ERR_JPG_WANT_STREAM     
*                HI_ERR_JPG_PARSE_FAIL      
*                HI_FAILURE                 
* Others:        
******************************************************************************/
HI_S32  JPG_GetPrimaryInfo(JPG_HANDLE Handle, JPG_PRIMARYINFO_S **pPrimaryInfo);

/******************************************************************************
* Function:      JPG_ReleasePrimaryInfo
* Description:   release picture info
* Input:         Handle   
* Output:        pImageInfo 
* Return:        HI_SUCCESS 
* Others:        none
******************************************************************************/
HI_S32  JPG_ReleasePrimaryInfo(JPG_HANDLE Handle, const JPG_PRIMARYINFO_S *pImageInfo);

/******************************************************************************
* Function:      JPG_GetPicInfo
* Description:   get info of a specified picture
* Input:         Handle   
*                Index    index, 0 for main picture, others for thumbs
* Output:        pPicInfo 
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_INVALID_HANDLE  
*                HI_ERR_JPG_WANT_STREAM     
*                HI_ERR_JPG_PARSE_FAIL      
*                HI_ERR_JPG_THUMB_NOEXIST   
*                HI_FAILURE                 
* Others:        none
******************************************************************************/
HI_S32  JPG_GetPicInfo(JPG_HANDLE Handle, JPG_PICINFO_S *pPicInfo,
                             HI_U32 Index);

/******************************************************************************
* Function:      JPG_GetStatus
* Description:   get state of the decoder instance
* Input:         Handle   
* Output:        pState   
*                pIndex   
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_PTR_NULL        
*                HI_ERR_JPG_INVALID_HANDLE  
* Others:        none
******************************************************************************/
HI_S32  JPG_GetStatus(JPG_HANDLE Handle, JPG_STATE_E *pState, HI_U32 *pIndex);

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
HI_S32  JPG_SendStream(HI_U32 Handle, JPGDEC_WRITESTREAM_S *pWriteInfo);

/******************************************************************************
* Function:      JPG_ResetDecoder
* Description:   reset decoder instance
* Input:         Handle     
* Output:        
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_INVALID_HANDLE  
* Others:        
******************************************************************************/
HI_S32  JPG_ResetDecoder(JPG_HANDLE Handle);

/******************************************************************************
* Function:      JPG_ResetDecoder1
* Description:   reset the decoder insance asynchronously
* Input:         Handle     
* Output:        
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_INVALID_HANDLE  
* Others:        
******************************************************************************/
HI_S32  JPG_ResetDecoder1(JPG_HANDLE Handle);

/******************************************************************************
* Function:      JPG_IsNeedStream
* Description:   inquire if stream is needed,if need return the free buffer size
* Input:         Handle     
* Output:        pSize      
* Return:        HI_SUCCESS 
*                HI_FAILURE 
* Others:        
******************************************************************************/
HI_S32  JPG_IsNeedStream(JPG_HANDLE Handle, HI_VOID** pAddr, HI_U32 *pSize);

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
HI_S32  JPG_GetExifData(JPG_HANDLE Handle, HI_VOID** pAddr, HI_U32 *pSize);

/******************************************************************************
* Function:      JPG_ReleaseExifData
* Description:   release App1 Exif 
* Input:         Handle     
*                pAddr      
* Output:
* Return:        HI_SUCCESS
*                    HI_FAILURE
* Others:        
******************************************************************************/
HI_S32  JPG_ReleaseExifData(JPG_HANDLE Handle, const HI_VOID* pAddr);

/******************************************************************************
* Function:      JPG_HdecCheck
* Description:   inquire the hardware can decode the picture or not
* Input:         Handle   
*                pSurface 
*                Index    
* Output:        
* Return:        HI_SUCCESS 
*                HI_FAILURE 
*                HI_ERR_JPG_INVALID_HANDLE  
*                HI_ERR_JPG_DEC_FAIL        
* Others:        
******************************************************************************/
HI_S32 JPG_HdecCheck(JPG_HANDLE Handle, HI_U32 Index);
#ifdef __cplusplus
#if __cplusplus
}
#endif  /* __cplusplus */
#endif  /* __cplusplus */

#endif /*_JPG_STATE_H_*/

