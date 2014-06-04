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



/*********************************add include here******************************/
#include "jpg_suspend.h"

#ifdef CONFIG_JPEG_SUSPEND

#include <linux/kernel.h>
#include <linux/types.h>
#include "hi_drv_jpeg_reg.h"

/***************************** Macro Definition ******************************/

/******************** to see which include file we want to use***************/



/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

static HI_JPG_SAVEINFO_S  sg_SaveInfo;
static HI_U32 s_u32SuspendJpgRegAddr = 0;

/******************************* API forward declarations *******************/

/******************************* API realization *****************************/


/*****************************************************************************
* func			: JPG_SaveResumeInfo
* description	: save the resume need information
  CNcomment: 保存待机唤醒需要的信息        CNend\n
* param[in] 	: NULL
* retval		: NA
* others:		: NA
*****************************************************************************/
static HI_VOID JPG_SaveResumeInfo(HI_VOID)
{

	sg_SaveInfo.u32ResumeData0   = JPGDRV_READ_REG(s_u32SuspendJpgRegAddr, JPGD_REG_BSRES_DATA0);
	sg_SaveInfo.u32ResumeData1   = JPGDRV_READ_REG(s_u32SuspendJpgRegAddr, JPGD_REG_BSRES_DATA1);
	sg_SaveInfo.u32ResBitRemain  = JPGDRV_READ_REG(s_u32SuspendJpgRegAddr, JPGD_REG_BSRES_BIT);
	sg_SaveInfo.u32ResByteConsu  = JPGDRV_READ_REG(s_u32SuspendJpgRegAddr, JPGD_REG_BSRES);
	sg_SaveInfo.u32ResMcuy 	  = JPGDRV_READ_REG(s_u32SuspendJpgRegAddr, JPGD_REG_MCUY);
	sg_SaveInfo.u32Pdy 		  = JPGDRV_READ_REG(s_u32SuspendJpgRegAddr, JPGD_REG_PD_Y);
	sg_SaveInfo.u32Pdcbcr		  = JPGDRV_READ_REG(s_u32SuspendJpgRegAddr, JPGD_REG_PD_CBCR);

}

/*****************************************************************************
* func			: JPG_WaitDecTaskDone
* description	: waite the jpeg decode task done
		  CNcomment: 等待解码任务完成  CNend\n
* param[in] 	: NULL
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID JPG_WaitDecTaskDone(HI_VOID)
{
	/**
	** delay, be sure the message has write the hard register.
	** CNcomment:时间延迟，等到相关信息已经写到硬件中，这样才能读到正确值 CNend\n
	**/
	HI_U32 u32StartTimeMs = 0; /** ms **/
	HI_U32 u32EndTimeMs   = 0;
	HI_BOOL loop = HI_FALSE;
	HI_GFX_GetTimeStamp(&u32StartTimeMs,NULL);
	do
	{
	    HI_GFX_GetTimeStamp(&u32EndTimeMs,NULL);
		loop = ((u32EndTimeMs - u32StartTimeMs) > 1)?HI_TRUE:HI_FALSE;
	}while(HI_FALSE == loop);
	
	JPG_SaveResumeInfo();
#if 0
	JPEG_TRACE("===============================================================\n");
	JPEG_TRACE("sg_SaveInfo.u32ResByteConsum = %d\n",sg_SaveInfo.u32ResByteConsu);
	JPEG_TRACE("sg_SaveInfo.u32ResumeData0   = %d\n",sg_SaveInfo.u32ResumeData0);
	JPEG_TRACE("sg_SaveInfo.u32ResumeData1   = %d\n",sg_SaveInfo.u32ResumeData1);
	JPEG_TRACE("sg_SaveInfo.u32ResBitRemain  = %d\n",sg_SaveInfo.u32ResBitRemain);
	JPEG_TRACE("sg_SaveInfo.u32ResMcuy       = %d\n",sg_SaveInfo.u32ResMcuy);
	JPEG_TRACE("sg_SaveInfo.u32Pdy           = %d\n",sg_SaveInfo.u32Pdy);
	JPEG_TRACE("sg_SaveInfo.u32Pdcbcr        = %d\n",sg_SaveInfo.u32Pdcbcr);
	JPEG_TRACE("===============================================================\n");
#endif		
}

/*****************************************************************************
* func			: JPG_GetResumeValue
* description	: get the value that resume need
				  CNcomment: 获取待机唤醒需要的值  CNend\n
* param[in] 	: *pSaveInfo
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID JPG_GetResumeValue(HI_JPG_SAVEINFO_S *pSaveInfo)
{

	if(NULL == pSaveInfo)
	{
	 	return;
	}
	pSaveInfo->u32ResumeData0   = sg_SaveInfo.u32ResumeData0;
	pSaveInfo->u32ResumeData1   = sg_SaveInfo.u32ResumeData1;
	pSaveInfo->u32ResBitRemain  = sg_SaveInfo.u32ResBitRemain;
	pSaveInfo->u32ResByteConsu  = sg_SaveInfo.u32ResByteConsu;
	pSaveInfo->u32ResMcuy 	     = sg_SaveInfo.u32ResMcuy;
	pSaveInfo->u32Pdy 		     = sg_SaveInfo.u32Pdy;
	pSaveInfo->u32Pdcbcr		 = sg_SaveInfo.u32Pdcbcr;
}
	
/*****************************************************************************
* func			: JPG_SuspendInit
* description	: suspend initial
				  CNcomment: 待机初始化  CNend\n
* param[in] 	: u32JpegRegBase
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID JPG_SuspendInit(HI_U32 u32JpegRegBase)
{
	s_u32SuspendJpgRegAddr = u32JpegRegBase;
}

/*****************************************************************************
* func			: JPG_SuspendExit
* description	: suspend exit
				  CNcomment: 待机去初始化  CNend\n
* param[in] 	: u32JpegRegBase
* retval		: NA
* others:		: NA
*****************************************************************************/
HI_VOID JPG_SuspendExit(HI_VOID)
{
	s_u32SuspendJpgRegAddr = 0;
}
#endif
