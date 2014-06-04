/***********************************************************************************
 *             Copyright 2006 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: jpg_driver.h
 * Description: 
 *
 * History:
 * Version   Date             Author     DefectNum    Description
 * main\1    2008-03-27       d37024                  Create this file.
 ***********************************************************************************/

#ifndef  _JPG_DRIVER_H_
#define  _JPG_DRIVER_H_

#include "hi_type.h"
#include "jpg_type.h"
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif  /* __cplusplus */
#endif  /* __cplusplus */

/*******************************************************************************
 * Function:        HI_JPG_Open
 * Description:     
 * Input:           
 * Output:          
 * Return:          HI_SUCCESS:    
 *                  HI_FAILURE     
 * Others: 
*******************************************************************************/
HI_S32 HI_JPG_Open(HI_VOID);

/*******************************************************************************
 * Function:        HI_JPG_Close
 * Description:     
 * Input:           
 * Output:          HI_SUCCESS    
 *                  HI_FAILURE    
 *                    
 * Return:          
 * Others:    
*******************************************************************************/
HI_S32 HI_JPG_Close(HI_VOID);

/*******************************************************************************
 * Function:        JPGDRV_GetDevice
 * Description:     
 * Data Accessed:   
 * Data Updated:  
 * Input:           
 * Output:          
 * Return:          HI_SUCCESS             
 *                  HI_ERR_JPG_DEV_NOOPEN  
 *                  HI_ERR_JPG_DEC_BUSY    
 *                  HI_FAILURE             
 * Others:       
*******************************************************************************/
HI_S32 JPGDRV_GetDevice(HI_VOID);

/*******************************************************************************
 * Function:        JPGDRV_ReleaseDevice
 * Description:     
 * Data Accessed:   
 * Data Updated:  
 * Input:           
 * Output:          
 * Return:          HI_SUCCESS             
 *                  HI_ERR_JPG_DEV_NOOPEN  
 *                  HI_FAILURE             
 * Others:       
*******************************************************************************/
HI_S32 JPGDRV_ReleaseDevice(HI_VOID);

/*******************************************************************************
 * Function:        JPGDRV_GetRegisterAddr
 * Description:     
 * Data Accessed:   
 * Data Updated:  
 * Input:           
 * Output:          pRegPtr 
 * Return:          HI_SUCCESS             
 *                  HI_ERR_JPG_DEV_NOOPEN  
 *                  HI_FAILURE             
 * Others:       
*******************************************************************************/
HI_S32 JPGDRV_GetRegisterAddr(HI_VOID **pRegPtr, HI_VOID **pRstRegPtr, HI_VOID **pVhbRegPtr);
/*******************************************************************************
 * Function:        JPGDRV_ReleaseRegAddr
 * Description:     
 * Data Accessed:   
 * Data Updated:  
 * Input:           
 * Output:          pRegPtr 
 * Return:          HI_SUCCESS             
 *                  HI_ERR_JPG_DEV_NOOPEN  
 *                  HI_FAILURE             
 * Others:       
*******************************************************************************/
HI_S32 JPGDRV_ReleaseRegAddr(HI_VOID *pRegPtr, HI_VOID *pRstRegPtr, HI_VOID *pVhbRegPtr);

/*******************************************************************************
 * Function:        JPGDRV_GetIntStatus
 * Description:     
 * Data Accessed:   
 * Data Updated:  
 * Input:           TimeOut       
 * Output:          pu32IntStatus 
 * Return:          HI_SUCCESS             
 *                  HI_ERR_JPG_DEV_NOOPEN  
 *                  HI_ERR_JPG_TIME_OUT    
 *                  HI_FAILURE             
 * Others:       
*******************************************************************************/
HI_S32 JPGDRV_GetIntStatus(JPG_INTTYPE_E *pIntType, HI_U32 TimeOut);

#ifdef __cplusplus
#if __cplusplus
}
#endif  /* __cplusplus */
#endif  /* __cplusplus */

#endif /* _JPG_DRIVER_H_*/



