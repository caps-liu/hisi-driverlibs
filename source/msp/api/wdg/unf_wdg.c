/***********************************************************************************
 *              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: Hi_unf_wdg.c
 * Description:
 *
 * History:
 * Version   Date               Author     DefectNum    Description
 * main\1    2006-10-10   w00142069  NULL         Create this file.
 ******************************************************************************/
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#include "drv_wdg_ioctl.h"
#include "hi_type.h"
#include "hi_error_mpi.h"
#include "hi_drv_struct.h"

static HI_S32 g_s32WDGDevFd = 0;

static const HI_U8 s_szWDGVersion[] = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

#define WATCHDOG_TIMEOUT_MAX 356000
#define WATCHDOG_TIMEOUT_MIN 1000

/*---- wdg ----*/

/*******************************************
Function:              HI_UNF_WDG_Init
Description:   Init WDG devide
Calls:        HI_WDG_Open
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_Init(HI_VOID)
{
    HI_S32 s32DevFd = 0;

    if (g_s32WDGDevFd > 0)
    {
        return HI_SUCCESS;
    }

    s32DevFd = open("/dev/"UMAP_DEVNAME_WDG, O_RDWR, 0);

    if (s32DevFd < 0)
    {
        HI_ERR_WDG("open %s error\n", UMAP_DEVNAME_WDG);
        return HI_ERR_WDG_FAILED_INIT;
    }
    else
    {
        g_s32WDGDevFd = s32DevFd;
    }

    return HI_SUCCESS;
}

/*******************************************
Function:              HI_UNF_WDG_DeInit
Description:  Deinit WDG device
Calls:        HI_WDG_Close
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_DeInit(HI_VOID)
{
    HI_S32 Ret;

    if (g_s32WDGDevFd <= 0)
    {
        return HI_SUCCESS;
    }
    else
    {
		Ret = close(g_s32WDGDevFd);

	    if (HI_SUCCESS != Ret)
	    {
	        HI_FATAL_WDG("DeInit WDG err.\n");
	        return HI_ERR_WDG_FAILED_DEINIT;
	    }
		
        g_s32WDGDevFd = 0;
        return HI_SUCCESS;
    }
}

HI_S32 HI_UNF_WDG_GetCapability(HI_U32 *pu32WdgNum)
{
	if (HI_NULL != pu32WdgNum)
	{
		*pu32WdgNum = HI_WDG_NUM;
		return HI_SUCCESS;
	}

	return HI_FAILURE;
}

/*******************************************
Function:              HI_UNF_WDG_Enable
Description:  enable WDG device
Calls:        HI_WDG_Enable
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_Enable(HI_U32 u32WdgNum)
{
    HI_S32 s32Result = 0;
	WDG_OPTION_S stOption;

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

	if (u32WdgNum >= HI_WDG_NUM) 		
    {
        HI_ERR_WDG("Input parameter(u32WdgNum) invalid: %d\n", u32WdgNum);
        return HI_ERR_WDG_INVALID_PARA;
    }

	stOption.s32Option = WDIOS_ENABLECARD;
	stOption.u32WdgIndex = u32WdgNum;

    s32Result = ioctl(g_s32WDGDevFd, WDIOC_SETOPTIONS, &stOption);
    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("wdg enable failed\n");
        return HI_ERR_WDG_FAILED_ENABLE;
    }
    else
    {
        return HI_SUCCESS;
    }
}

/*******************************************
Function:              HI_UNF_WDG_Disable
Description:  disable WDG device
Calls:        HI_WDG_Disable
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_Disable(HI_U32 u32WdgNum)
{
    int s32Result = 0;
	WDG_OPTION_S stOption; 
	
    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

	if (u32WdgNum >= HI_WDG_NUM) 		
    {
        HI_ERR_WDG("Input parameter(u32WdgNum) invalid: %d\n", u32WdgNum);
        return HI_ERR_WDG_INVALID_PARA;
    }

	stOption.s32Option = WDIOS_DISABLECARD;
	stOption.u32WdgIndex = u32WdgNum;

    s32Result = ioctl(g_s32WDGDevFd, WDIOC_SETOPTIONS, &stOption);

    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("wdg disable failed\n");
        return HI_ERR_WDG_FAILED_DISABLE;
    }
    else
    {
        return HI_SUCCESS;
    }
}

/*******************************************
Function:              HI_UNF_WDG_SetTimeout
Description:  set the time interval of feeding the WDG
Calls:        HI_WDG_SetTimeout
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_SetTimeout(HI_U32 u32WdgNum, HI_U32 u32Value)
{
    int s32Result = 0;
    HI_U32 u32ValueInSec;
	WDG_TIMEOUT_S stTimeout;

    if ((u32WdgNum >= HI_WDG_NUM) 
		|| (u32Value > WATCHDOG_TIMEOUT_MAX) 
		|| (u32Value < WATCHDOG_TIMEOUT_MIN))
    {
        HI_ERR_WDG("Input parameter(u32Value) invalid: %d\n", u32Value);
        return HI_ERR_WDG_INVALID_PARA;
    }

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

    /* convert ms to s */
    u32ValueInSec = (u32Value + 999) / 1000;
	
	stTimeout.s32Timeout = u32ValueInSec;
	stTimeout.u32WdgIndex = u32WdgNum;
	
    s32Result = ioctl(g_s32WDGDevFd, WDIOC_SETTIMEOUT, &stTimeout);
    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("wdg set timeout failed\n");
        return HI_ERR_WDG_FAILED_SETTIMEOUT;
    }
    else
    {
        return HI_SUCCESS;
    }
}

/*******************************************
Function:     HI_UNF_WDG_GetTimeout
Description:  get the time interval of feeding the WDG
Calls:        HI_WDG_GetTimeout
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:       ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_GetTimeout(HI_U32 u32WdgNum, HI_U32 *pu32Value)
{
    HI_S32 s32Result = 0;
	WDG_TIMEOUT_S stTimeout;

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

    if ((u32WdgNum >= HI_WDG_NUM) || (HI_NULL == pu32Value))
    {
        HI_ERR_WDG("para pu32Value is null.\n");
        return HI_ERR_WDG_INVALID_PARA;
    }

	stTimeout.u32WdgIndex = u32WdgNum;

    s32Result = ioctl(g_s32WDGDevFd, WDIOC_GETTIMEOUT, &stTimeout);
    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("wdg get timeout failed\n");
        return HI_ERR_WDG_FAILED_GETTIMEOUT;
    }
    else
    {
        /* convert s to ms */
        *pu32Value = stTimeout.s32Timeout * 1000;
        return HI_SUCCESS;
    }
}

/*******************************************
Function:              HI_UNF_WDG_Clear
Description:  clear the WDG
Calls:        HI_WDG_ClearWatchDog
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_Clear(HI_U32 u32WdgNum)
{
    HI_S32 s32Result = 0;

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

	if (u32WdgNum >= HI_WDG_NUM) 		
    {
        HI_ERR_WDG("Input parameter(u32WdgNum) invalid: %d\n", u32WdgNum);
        return HI_ERR_WDG_INVALID_PARA;
    }

    s32Result = ioctl(g_s32WDGDevFd, WDIOC_KEEPALIVE, &u32WdgNum);

    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("clear wdg failed\n");
        return HI_ERR_WDG_FAILED_CLEARWDG;
    }
    else
    {
        return HI_SUCCESS;
    }
}

/*******************************************
Function:              HI_UNF_WDG_Reset
Description:  reset WDG
Calls:        HI_WDG_Reset
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_Reset(HI_U32 u32WdgNum)
{
    HI_S32 s32Result = 0;
	WDG_OPTION_S stOption;

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

	if (u32WdgNum >= HI_WDG_NUM) 		
    {
        HI_ERR_WDG("Input parameter(u32WdgNum) invalid: %d\n", u32WdgNum);
        return HI_ERR_WDG_INVALID_PARA;
    }

	stOption.s32Option = WDIOS_RESET_BOARD;
	stOption.u32WdgIndex = u32WdgNum;

    s32Result = ioctl(g_s32WDGDevFd, WDIOC_SETOPTIONS, &stOption);

    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("reset faile\n");
        return HI_ERR_WDG_FAILED_RESET;
    }
    else
    {
        return HI_SUCCESS;
    }
}
