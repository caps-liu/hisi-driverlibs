/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name	    : jpg_drvapi.c

Version		    : Initial Draft
Author		    : 
Created		    : 2012/11/2
Description	    : 
Function List 	: 
			  		  
History       	:
Date				Author        		Modification
2012/11/2		   y00181162    	    Created file      	
******************************************************************************/


#include "jpg_fmwcomm.h"
#include "jpg_type.h"
#include "jpg_driver.h"
#include "jpg_hdec.h"
#include "hi_common.h"


/***************************** Macro Definition ******************************/
#define JPEG_DEV "/dev/jpeg"

#define JPEG_DEV_1 "/dev/misc/jpeg"

#define VID_CMD_MAGIC 'j'

#define CMD_JPG_GETDEVICE _IO( VID_CMD_MAGIC, 0x0)
#define CMD_JPG_RELEASEDEVICE _IO( VID_CMD_MAGIC, 0x1)
#define CMD_JPG_GETINTSTATUS _IOWR( VID_CMD_MAGIC, 0x2, JPG_GETINTTYPE_S *)

static HI_VOID *s_pRegAddr = HI_NULL;


static HI_S32 s_s32fdJpgDev = 0;
static HI_BOOL s_bIngage = HI_FALSE;
static JPGVCOS_sem_t s_semEngage;
HI_VOID *s_pRegReset = HI_NULL;

static const HI_U8 s_szJPEGVersion[] __attribute__((used)) = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

#define JPGDRV_CHECK(jpgfd) \
    do {\
        if (0 >= jpgfd) \
        { \
            JPG_TRACE(HI_JPGLOG_LEVEL_ERROR, JPEGFMW, \
                      "%s\n", "Dev don't open."); \
            return HI_ERR_JPG_DEV_NOOPEN; \
        } \
    } while (0)


#define JPGDRV_REGISTER_LENGTH 0x800



/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/



/*****************************************************************************

*****************************************************************************/



/*******************************************************************************
* Function:        HI_JPG_Open
* Description:
* Input:
* Output:
* Return:          HI_SUCCESS:
*                  HI_FAILURE
* Others:
*******************************************************************************/
HI_S32 HI_JPG_Open(HI_VOID)
{
    HI_S32 Ret;

    if (0 < s_s32fdJpgDev)
    {
        return HI_SUCCESS;
    }

    Ret = JPGVCOS_sem_init(&s_semEngage, 0, 1);
    if (0 != Ret)
    {
        return HI_FAILURE;
    }

    s_s32fdJpgDev = JPGVCOS_open( JPEG_DEV, JPGVCOS_O_RDWR | JPGVCOS_O_SYNC, 0);
    if (0 > s_s32fdJpgDev)
    {
        s_s32fdJpgDev = JPGVCOS_open( JPEG_DEV_1, JPGVCOS_O_RDWR | JPGVCOS_O_SYNC, 0);
        if (0 > s_s32fdJpgDev)
        {
            (HI_VOID)JPGVCOS_sem_destroy(&s_semEngage);
            JPG_TRACE(HI_JPGLOG_LEVEL_ERROR, JPEGFMW,
                      "%s can't open\n", JPEG_DEV);
            return HI_FAILURE;
        }
    }

    s_pRegAddr = NULL;

    return HI_SUCCESS;

	
}

/*******************************************************************************
* Function:        HI_JPG_Close
* Description:
* Input:
* Output:          HI_SUCCESS
*                  HI_FAILURE
* Return:
* Others:
*******************************************************************************/
HI_S32 HI_JPG_Close(HI_VOID)
{


	    HI_S32 Ret;

	    if (0 >= s_s32fdJpgDev)
	    {
	        return HI_SUCCESS;
	    }

	    if (NULL != s_pRegAddr)
	    {
	        JPGDRV_ReleaseRegAddr(s_pRegAddr, s_pRegReset, NULL);
	        s_pRegAddr = NULL;
	    }

	    Ret = JPGDRV_ReleaseDevice();
	    if (HI_SUCCESS != Ret)
	    {
	        return HI_FAILURE;
	    }

	    Ret = JPGVCOS_close(s_s32fdJpgDev);
	    if (Ret < 0)
	    {
	        return HI_FAILURE;
	    }
	    else
	    {
	        (HI_VOID)JPGVCOS_sem_destroy(&s_semEngage);

	        s_s32fdJpgDev = 0;

	        return HI_SUCCESS;
	    }

	
}

/*******************************************************************************
* Function:        JPGDRV_GetDevice
* Description:
* Input:
* Output:
* Return:          HI_SUCCESS
*                  HI_ERR_JPG_DEV_NOOPEN
*                  HI_ERR_JPG_DEC_BUSY
*                  HI_FAILURE
* Others:
*******************************************************************************/
HI_S32 JPGDRV_GetDevice(HI_VOID)
{


	    HI_S32 Ret;

	    JPGDRV_CHECK(s_s32fdJpgDev);

	    (HI_VOID)JPGVCOS_sem_wait(&s_semEngage);

	    if (HI_TRUE == s_bIngage)
	    {
	        (HI_VOID)JPGVCOS_sem_post(&s_semEngage);
	        JPG_TRACE(HI_JPGLOG_LEVEL_ERROR, JPEGFMW, "%s\n", "Dev busy.");
	        return HI_ERR_JPG_DEC_BUSY;
	    }

	    Ret = JPGVCOS_ioctl(s_s32fdJpgDev, CMD_JPG_GETDEVICE, 0);
	    if (0 > Ret)
	    {
	        (HI_VOID)JPGVCOS_sem_post(&s_semEngage);
	        JPG_TRACE(HI_JPGLOG_LEVEL_ERROR, JPEGFMW,
	                  "%s\n", "Ioctl failed.");
	        return HI_FAILURE;
	    }

	    s_bIngage = HI_TRUE;

	    (HI_VOID)JPGVCOS_sem_post(&s_semEngage);

	    return HI_SUCCESS;

	
}

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
HI_S32 JPGDRV_ReleaseDevice(HI_VOID)
{


	    HI_S32 Ret;

	    JPGDRV_CHECK(s_s32fdJpgDev);

	    (HI_VOID)JPGVCOS_sem_wait(&s_semEngage);

	    if (HI_TRUE != s_bIngage)
	    {
	        (HI_VOID)JPGVCOS_sem_post(&s_semEngage);
	        return HI_SUCCESS;
	    }

	    Ret = JPGVCOS_ioctl(s_s32fdJpgDev, CMD_JPG_RELEASEDEVICE, 0);
	    if (0 > Ret)
	    {
	        (HI_VOID)JPGVCOS_sem_post(&s_semEngage);
	        JPG_TRACE(HI_JPGLOG_LEVEL_ERROR, JPEGFMW,
	                  "%s\n", "Ioctl failed.");
	        return HI_FAILURE;
	    }

	    s_bIngage = HI_FALSE;

	    (HI_VOID)JPGVCOS_sem_post(&s_semEngage);

	    return HI_SUCCESS;

	
}

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
HI_S32 JPGDRV_GetRegisterAddr(HI_VOID **pRegPtr, HI_VOID **pRstRegPtr, HI_VOID **pVhbRegPtr)
{


	    HI_S32 Ret;
	    HI_U32 Dat32;

	    JPGDRV_CHECK(s_s32fdJpgDev);

	    *pRstRegPtr = NULL;
	    *pVhbRegPtr = NULL;

	    if (HI_NULL != s_pRegAddr)
	    {
	        *pRegPtr = s_pRegAddr;
	        return HI_SUCCESS;
	    }

	    Ret = (HI_S32)JPGVCOS_mmap( NULL, JPGDRV_REGISTER_LENGTH,
	                                JPGVCOS_PROT_READ | JPGVCOS_PROT_WRITE, JPGVCOS_MAP_SHARED,
	                                s_s32fdJpgDev, 0);

	    if (0 == Ret)
	    {
	        return HI_FAILURE;
	    }
	    else
	    {
	        s_pRegAddr = (HI_VOID *)Ret;
	    }


	    if (s_pRegReset == NULL)
	    {

			#if 0
	        if (NULL == (*pRstRegPtr = (HI_VOID*)memmap(0x101f5068, 4096)))
			#else
			if (NULL == (*pRstRegPtr = (HI_VOID*)HI_MEM_Map(0xf8a2207c, 4096)))
			#endif
	        {
	            return HI_FAILURE;
	        }

	        s_pRegReset = *pRstRegPtr;
	    }
	    else
	    {
	        *pRstRegPtr = s_pRegReset;
	    }

	    Dat32 = *(volatile HI_U32 *)((HI_U32)s_pRegAddr + 0x100);
           JPGHDEC_SetVersion((HI_U16)((Dat32 >> 16) & 0xffff));
	    {
	        HI_U32  *pRstReg = (HI_U32 *)s_pRegReset;
#if 0
	        if (JPGHDEC_GetVersion() != 0)
	        {
	            pRstReg[0] |= 0x40000;
	        }

	        pRstReg[0] |= 0x100;
	        pRstReg[0] &= (~3);
#else
            pRstReg[0] &= 0xffffffef;
#endif
	    }


	    *pRegPtr = s_pRegAddr;
		
	    return HI_SUCCESS;

		
}

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
HI_S32 JPGDRV_ReleaseRegAddr(HI_VOID *pRegPtr,   \
                                            HI_VOID *pRstRegPtr, \
                                            HI_VOID *pVhbRegPtr)
{
    HI_S32 s32Ret;
    
    if (NULL != pRstRegPtr)
    {
        HI_U32  *pRstReg = (HI_U32 *)pRstRegPtr;
        pRstReg[0] &= (~0x100);
    }

    s32Ret = JPGVCOS_munmap(pRegPtr, JPGDRV_REGISTER_LENGTH);
    if (HI_SUCCESS != s32Ret)
        return HI_FAILURE;

    return HI_SUCCESS;
	
}

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
HI_S32 JPGDRV_GetIntStatus(JPG_INTTYPE_E *pIntType, HI_U32 TimeOut)
{


	    HI_S32 Ret;
	    JPG_GETINTTYPE_S GetIntType;

	    JPGDRV_CHECK(s_s32fdJpgDev);

	    GetIntType.IntType = JPG_INTTYPE_NONE;
	    GetIntType.TimeOut = TimeOut;

	    Ret = JPGVCOS_ioctl(s_s32fdJpgDev, CMD_JPG_GETINTSTATUS, &GetIntType);
	    if (HI_SUCCESS != Ret)
	    {
	        return Ret;
	    }

	    *pIntType = GetIntType.IntType;
		
	    return HI_SUCCESS;
	
}
