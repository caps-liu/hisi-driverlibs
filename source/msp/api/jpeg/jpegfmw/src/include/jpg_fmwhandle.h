/*******************************************************************************
 *              Copyright 2006 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: jpg_handle.h
 * Description: 
 *
 * History:
 * Version   Date             Author    DefectNum    Description
 * main\1    2008-04-07       d37024    HI_NULL      Create this file.
 ******************************************************************************/
#ifndef _JPG_FMWHANDLE_H_
#define _JPG_FMWHANDLE_H_

#include "hi_type.h"
#include "hi_jpg_type.h"
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif  /* __cplusplus */
#endif  /* __cplusplus */

#define JPGFMW_DEFAULT_HANDLE 0x7FFFFFF1  
#define JPGFMW_INVALID_HANDLE 0x0         

/*****************************************************************************/
/*                                   functions                               */
/*****************************************************************************/

HI_VOID JPGFMW_Handle_Clear(HI_VOID);

/******************************************************************************
* Function:      JPG_HandleAlloc
* Description:   
* Input:         pInstance 
* Output:        pHandle   
* Return:        HI_SUCCESS:          
*                HI_ERR_JPG_NO_MEM:   
*                HI_FAILURE:          
* Others:        
******************************************************************************/
HI_S32 JPGFMW_Handle_Alloc(JPG_HANDLE *pHandle, HI_VOID *pInstance);

/******************************************************************************
* Function:      JPG_HandleFree
* Description:   
* Input:         Handle    
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID JPGFMW_Handle_Free(JPG_HANDLE Handle);

/******************************************************************************
* Function:      JPG_HandleGetInstance
* Description:   
* Input:         Handle    
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID* JPGFMW_Handle_GetInstance(JPG_HANDLE Handle);

#ifdef __cplusplus
#if __cplusplus
}
#endif  /* __cplusplus */
#endif  /* __cplusplus */

#endif /*_JPG_HANDLE_H_*/

