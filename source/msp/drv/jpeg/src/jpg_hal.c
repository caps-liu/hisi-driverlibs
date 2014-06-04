/******************************************************************************

  Copyright (C), 2014-2020, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpg_hal.c
Version		    : Initial Draft
Author		    : 
Created		    : 2013/07/01
Description	    : 
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2013/07/01		    y00181162  		    Created file      	
******************************************************************************/



/*********************************add include here******************************/
#include "jpg_hal.h"
#include "hi_drv_jpeg_reg.h"

/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/



/********************** Global Variable declaration **************************/

static HI_U32 s_u32JpgRegAddr = 0;

/******************************* API forward declarations *******************/

/******************************* API realization *****************************/
HI_U32 JPGDRV_READ_REG(HI_U32 base,HI_U32 offset)
{
	return (*(volatile HI_U32 *)((HI_U32)(base) + (offset)));
}

HI_VOID  JPGDRV_WRITE_REG(HI_U32 base, HI_U32 offset, HI_U32 value)
{
	(*(volatile HI_U32 *)((HI_U32)(base) + (offset)) = (value));
}


/*****************************************************************************
* func            : JpgHalInit
* description     : initial the jpeg device
* param[in]       : none
* retval          : none
* output          : none
* others:	      : nothing
*****************************************************************************/
HI_VOID JpgHalInit(HI_U32 u32JpegRegBase)
{
	  s_u32JpgRegAddr = u32JpegRegBase;
}

 /*****************************************************************************
* func            : JpgHalExit
* description     : exit initial the jpeg device
* param[in]       : none
* retval          : none
* output          : none
* others:	      : nothing
*****************************************************************************/
HI_VOID JpgHalExit(HI_VOID)
{
    s_u32JpgRegAddr = 0;
}

/*****************************************************************************
* func            : JpgHalGetIntStatus
* description     : get halt status
* param[in]       : none
* retval          : none
* output          : pIntStatus  the value of halt state
* others:	      : nothing
*****************************************************************************/
HI_VOID JpgHalGetIntStatus(HI_U32 *pIntStatus)
{
    /**
     ** read the halt register and write it to *pIntStatus
     **/
    *pIntStatus = JPGDRV_READ_REG(s_u32JpgRegAddr, JPGD_REG_INT);
}

/*****************************************************************************
* func            : JpgHalSetIntStatus
* description     : set halt status
* param[in]       : IntStatus    the halt value
* retval          : none
* output          : none
* others:	      : nothing
*****************************************************************************/
HI_VOID JpgHalSetIntStatus(HI_U32 IntStatus)
{
    /**
     ** read halt register and write it to *pIntStatus
     **/
    JPGDRV_WRITE_REG(s_u32JpgRegAddr, JPGD_REG_INT, IntStatus);
}

/*****************************************************************************
* func            : JpgHalSetIntMask
* description     : set halt mask
* param[in]       : IntMask     halt mask
* retval          : none
* output          : none
* others:	      : nothing
*****************************************************************************/
HI_VOID JpgHalSetIntMask(HI_U32 IntMask)
{
    /** set halt mask with IntMask **/
    JPGDRV_WRITE_REG(s_u32JpgRegAddr, JPGD_REG_INTMASK, IntMask);
}


/*****************************************************************************
* func            : JpgHalGetIntMask
* description     : get halt mask
* param[in]       : none
* retval          : none
* output          : pIntMask   halt mask
* others:	      : nothing
*****************************************************************************/
HI_VOID JpgHalGetIntMask(HI_U32 *pIntMask)
{
    /** get halt mask and write it to *pIntMask **/
    *pIntMask = JPGDRV_READ_REG(s_u32JpgRegAddr, JPGD_REG_INTMASK);
}
