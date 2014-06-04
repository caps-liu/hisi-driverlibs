/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : hi_jpge_define.h
Version		    : Initial Draft
Author		    : 
Created		    : 2012/05/14
Description	    : config the gao an macro and other CFLASS
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2011/11/23		            		    Created file      	
******************************************************************************/
#ifndef __HI_JPGE_DEFINE__
#define __HI_JPGE_DEFINE__

/*********************************add include here******************************/
#include "hi_gfx_comm_k.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" 
{
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/  
#define HIJPGE_TRACE(fmt, args... )  HI_GFX_COMM_LOG_INFO(HIGFX_JPGENC_ID,fmt)
	  	
#ifdef __cplusplus
#if __cplusplus
}
#endif        
#endif /* __cplusplus */

#endif /* __HI_JPGE_DEFINE__*/
