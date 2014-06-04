/******************************************************************************

  Copyright (C), 2013-2020, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpg_suspend.h
Version		    : Initial Draft
Author		    : 
Created		    : 2013/06/20
Description	    : the suspend dispose
                  CNcomment: 待机处理 CNend\n
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2013/06/20		    y00181162  		    Created file      	
******************************************************************************/
#ifndef __JPG_SUSPEND_H__
#define __JPG_SUSPEND_H__


/*********************************add include here******************************/

#include "hi_jpeg_config.h"

#ifdef CONFIG_JPEG_SUSPEND

#include "hi_type.h"
#include "hi_jpeg_hal_api.h"

/*****************************************************************************/

#ifdef __cplusplus
#if __cplusplus
   extern "C" 
{
#endif
#endif /* __cplusplus */


    /***************************** Macro Definition ******************************/

	 /*************************** Enum Definition ****************************/

	/*************************** Structure Definition ****************************/

    /********************** Global Variable declaration **************************/
 
    /******************************* API declaration *****************************/

	/*****************************************************************************
	* func			: JPG_WaitDecTaskDone
	* description	: waite the jpeg decode task done
					  CNcomment: 等待解码任务完成  CNend\n
	* param[in] 	: NULL
	* retval		: NA
	* others:		: NA
	*****************************************************************************/
	HI_VOID JPG_WaitDecTaskDone(HI_VOID);


	/*****************************************************************************
	* func			: JPG_GetResumeValue
	* description	: get the value that resume need
					  CNcomment: 获取待机唤醒需要的值  CNend\n
	* param[in] 	: *pSaveInfo
	* retval		: NA
	* others:		: NA
	*****************************************************************************/
	HI_VOID JPG_GetResumeValue(HI_JPG_SAVEINFO_S *pSaveInfo);
	
	/*****************************************************************************
	* func			: JPG_SuspendInit
	* description	: suspend initial
					  CNcomment: 待机初始化  CNend\n
	* param[in] 	: u32JpegRegBase
	* retval		: NA
	* others:		: NA
	*****************************************************************************/
	HI_VOID JPG_SuspendInit(HI_U32 u32JpegRegBase);


	/*****************************************************************************
	* func			: JPG_SuspendExit
	* description	: suspend exit
					  CNcomment: 待机去初始化  CNend\n
	* param[in] 	: u32JpegRegBase
	* retval		: NA
	* others:		: NA
	*****************************************************************************/
	HI_VOID JPG_SuspendExit(HI_VOID);

    /****************************************************************************/



#ifdef __cplusplus
    
#if __cplusplus
   
}
#endif
#endif /* __cplusplus */

#endif

#endif /* __JPG_SUSPEND_H__*/
