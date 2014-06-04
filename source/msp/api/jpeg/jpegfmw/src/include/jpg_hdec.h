/***********************************************************************************
 *             Copyright 2006 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: jpg_hal.h
 * Description: 
 *
 * History:
 * Version   Date             Author     DefectNum    Description
 * main\1    2008-03-27       d37024                  Create this file.
 ***********************************************************************************/

#ifndef  _JPG_HAL_H_
#define  _JPG_HAL_H_

#include "hi_type.h"
#include "hi_jpg_type.h"
#include "jpg_hsdec.h"
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif  /* __cplusplus */
#endif  /* __cplusplus */

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
HI_S32 JPGHDEC_CreateInstance(JPG_HANDLE *pHandle, HI_U32 u32FileLen);

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
HI_S32 JPGHDEC_DestroyInstance(JPG_HANDLE Handle);

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
HI_S32 JPGHDEC_FlushBuf(JPG_HANDLE Handle);

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
HI_S32 JPGHDEC_Reset(JPG_HANDLE Handle);

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
HI_S32 JPGHDEC_Check(JPG_HANDLE Handle, const JPGDEC_CHECKINFO_S *pCheckInfo);

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
HI_S32 JPGHDEC_SetDecodeInfo(JPG_HANDLE Handle,
                                         JPGDEC_DECODEATTR_S *pstruDecodeAttr);

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
HI_S32 JPGHDEC_SendStream(JPG_HANDLE Handle, JPGDEC_WRITESTREAM_S* pStreamInfo);

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
HI_S32 JPGHDEC_Start(JPG_HANDLE Handle);

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
                       JPG_HDSTATE_E* pHdState);

HI_U16 JPGHDEC_GetVersion(HI_VOID);

HI_VOID JPGHDEC_SetVersion(HI_U16 u16Version);

#ifdef __cplusplus
#if __cplusplus
}
#endif  /* __cplusplus */
#endif  /* __cplusplus */

#endif /* _JPG_HAL_H_*/



