/***********************************************************************************
*              Copyright 2008 - , Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName:         hi_unf_gpio.c
* Description:      supply the api for userspace application
* History:          NULL
* Version           Date           Author     DefectNum    Description
* 1.1               2009-04-14	    s00136582   NULL	    first draft
*
***********************************************************************************/
#include <sys/ioctl.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <time.h>
#include <sys/time.h>
#include <sys/mman.h>
#include <stdlib.h>
#include <pthread.h>

#include "hi_unf_gpio.h"
#include "drv_gpio_ioctl.h"
#include "hi_drv_struct.h"

static HI_S32 g_GpioDevFd = -1;
static HI_S32 g_GpioDrvFd = -1;
static HI_S32 g_GpioOpen = 0;

#define DEVNAME_GPIO "hi_gpio"
static pthread_mutex_t g_GpioMutex = PTHREAD_MUTEX_INITIALIZER;

static const HI_U8 s_szGPIOVersion[] = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

#define HI_GPIO_LOCK() (void)pthread_mutex_lock(&g_GpioMutex);
#define HI_GPIO_UNLOCK() (void)pthread_mutex_unlock(&g_GpioMutex);

static HI_U32 g_GpioUsrAddr[HI_GPIO_MAX_GROUP_NUM];
static HI_U32 g_u32GpioUsrAddrBase;
static GPIO_GET_GPIONUM_S g_GpioNum;

HI_S32 HI_UNF_GPIO_Init(HI_VOID)
{
    HI_U32 GpioUsrAddr;
    HI_S32 Ret;

    HI_GPIO_LOCK();

    if (g_GpioDevFd > 0)
    {
        HI_GPIO_UNLOCK();
        return HI_SUCCESS;
    }

    g_GpioDrvFd = open("/dev/"UMAP_DEVNAME_GPIO, O_RDWR, 0);
    if (g_GpioDrvFd < 0)
    {
        HI_ERR_GPIO("open GPIO device failed.\n");
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_OPEN_ERR;
    }

    g_GpioDevFd = open("/dev/mem", O_RDWR | O_SYNC, 0777);
    if (g_GpioDevFd < 0)
    {
        HI_ERR_GPIO("open mem failed.\n");
        close(g_GpioDrvFd);
        g_GpioDrvFd = -1;
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_OPEN_ERR;
    }

    Ret = ioctl(g_GpioDrvFd, CMD_GPIO_GET_GPIONUM, &g_GpioNum);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_GPIO("ioctl CMD_GPIO_GET_CHIPTYPE failed.\n");
        close(g_GpioDevFd);
        close(g_GpioDrvFd);
        g_GpioDrvFd = -1;
        g_GpioDevFd = -1;
		HI_GPIO_UNLOCK();
        return HI_FAILURE;
    }

#if defined (CHIP_TYPE_hi3716cv200es) || defined (CHIP_TYPE_hi3716cv200) \
	|| defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100)  \
	|| defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a) \
	|| defined (CHIP_TYPE_hi3718mv100)
	HI_U8 ii = 0;

#define GPIO_USER_MAP_SIZE_TOTAL (0x12000)

	g_GpioUsrAddr[5] = (HI_U32)mmap(NULL, HI_GPIO_SPACE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, g_GpioDevFd,
                               HI_GPIO_5_ADDR);

    GpioUsrAddr = (HI_U32)mmap(NULL, GPIO_USER_MAP_SIZE_TOTAL, PROT_READ | PROT_WRITE, MAP_SHARED, g_GpioDevFd,
                               HI_GPIO_0_ADDR);
    if (MAP_FAILED == (HI_VOID *)GpioUsrAddr)
    {
        HI_ERR_GPIO("mmap GPIO addr failed.\n");
        close(g_GpioDevFd);
        close(g_GpioDrvFd);
        g_GpioDrvFd = -1;
        g_GpioDevFd = -1;
        HI_GPIO_UNLOCK();
        return HI_FAILURE;
    }

	for (ii = 0; ii < HI_GPIO_MAX_GROUP_NUM; ii++) 
	{
		if(ii !=5)
		{
			g_GpioUsrAddr[ii] = GpioUsrAddr + ii * 0x1000;
		}			
	}
    
#else

#define GPIO_USER_MAP_SIZE_TOTAL (0xF000)

    /* HI_GPIO_5_ADDR is the smallest Address */
    GpioUsrAddr = (HI_U32)mmap(NULL, GPIO_USER_MAP_SIZE_TOTAL, PROT_READ | PROT_WRITE, MAP_SHARED, g_GpioDevFd,
                               HI_GPIO_5_ADDR);
    if (MAP_FAILED == (HI_VOID *)GpioUsrAddr)
    {
        HI_ERR_GPIO("mmap GPIO addr failed.\n");
        close(g_GpioDevFd);
        close(g_GpioDrvFd);
        g_GpioDrvFd = -1;
        g_GpioDevFd = -1;
        HI_GPIO_UNLOCK();
        return HI_FAILURE;
    }

    g_GpioUsrAddr[0] = GpioUsrAddr + 0x2000;
    g_GpioUsrAddr[1] = GpioUsrAddr + 0x3000;
    g_GpioUsrAddr[2] = GpioUsrAddr + 0x4000;
    g_GpioUsrAddr[3] = GpioUsrAddr + 0x5000;
    g_GpioUsrAddr[4] = GpioUsrAddr + 0x6000;
    g_GpioUsrAddr[5] = GpioUsrAddr;
    g_GpioUsrAddr[6] = GpioUsrAddr + 0x8000;
    g_GpioUsrAddr[7] = GpioUsrAddr + 0x9000;
    g_GpioUsrAddr[8] = GpioUsrAddr + 0xa000;
    g_GpioUsrAddr[9] = GpioUsrAddr + 0xb000;
	
    g_GpioUsrAddr[10] = GpioUsrAddr + 0xc000;
    g_GpioUsrAddr[11] = GpioUsrAddr + 0xd000;
    g_GpioUsrAddr[12] = GpioUsrAddr + 0xe000;
#endif

    g_u32GpioUsrAddrBase = GpioUsrAddr;
    g_GpioOpen++;

    HI_GPIO_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_UNF_GPIO_DeInit(HI_VOID)
{
    HI_S32 Ret;

    HI_GPIO_LOCK();

    if (g_GpioDevFd < 0)
    {
        HI_GPIO_UNLOCK();
        return HI_SUCCESS;
    }

    g_GpioOpen--;

    if (0 == g_GpioOpen)
    {
        if (MAP_FAILED != (HI_VOID *)g_u32GpioUsrAddrBase)
        {
            Ret = munmap((HI_VOID *)g_u32GpioUsrAddrBase, GPIO_USER_MAP_SIZE_TOTAL);
            if (0 != Ret)
            {
                HI_ERR_GPIO("munmap GpioUsrAddrBase failed!\n");
            }
        }

        Ret = close(g_GpioDevFd);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_GPIO("Close GPIO mem failed.\n");
            g_GpioDevFd = -1;
            close(g_GpioDrvFd);
            g_GpioDrvFd = -1;
            HI_GPIO_UNLOCK();
            return HI_ERR_GPIO_CLOSE_ERR;
        }

        Ret = close(g_GpioDrvFd);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_GPIO("Close GPIO device failed.\n");
            g_GpioDrvFd = -1;
            HI_GPIO_UNLOCK();
            return HI_ERR_GPIO_CLOSE_ERR;
        }

        g_GpioDevFd = -1;
        g_GpioDrvFd = -1;
    }

    HI_GPIO_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_UNF_GPIO_SetDirBit(HI_U32 u32GpioNo, HI_BOOL bInput)
{
    HI_U32 GpioGroup;
    HI_U32 GpioDirtValue;
    HI_U32 GpioUsrAddr;

    if (u32GpioNo >= g_GpioNum.u8GpioMaxNum)
    {
        HI_ERR_GPIO("para u32GpioNo is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    if ((bInput != HI_TRUE)
        && (bInput != HI_FALSE)
    )
    {
        HI_ERR_GPIO("para bInput is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    HI_GPIO_LOCK();

    if (g_GpioDevFd < 0)
    {
        HI_ERR_GPIO("GPIO is not open.\n");
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_NOT_INIT;
    }

    GpioGroup     = u32GpioNo / 8;
    GpioUsrAddr   = g_GpioUsrAddr[GpioGroup];
    GpioDirtValue = REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG);

    if (!bInput)
    {
        GpioDirtValue |= (HI_U32)(HI_GPIO_OUTPUT << (u32GpioNo % HI_GPIO_BIT_NUM));
        REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG) = GpioDirtValue;
    }
    else
    {
        GpioDirtValue &= (~(HI_U32)(0X1 << (u32GpioNo % HI_GPIO_BIT_NUM)));
        REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG) = GpioDirtValue;
    }

    HI_GPIO_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_UNF_GPIO_GetDirBit(HI_U32 u32GpioNo, HI_BOOL  *pbInput)
{
    HI_U32 GpioGroup;
    HI_U32 GpioDirtValue;
    HI_U32 GpioUsrAddr;

    if (u32GpioNo >= g_GpioNum.u8GpioMaxNum)
    {
        HI_ERR_GPIO("para u32GpioNo is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    if (!pbInput)
    {
        HI_ERR_GPIO("para pbInput is null.\n");
        return HI_ERR_GPIO_NULL_PTR;
    }

    HI_GPIO_LOCK();

    if (g_GpioDevFd < 0)
    {
        HI_ERR_GPIO("GPIO is not open.\n");
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_NOT_INIT;
    }

    GpioGroup = u32GpioNo / 8;

    GpioUsrAddr = g_GpioUsrAddr[GpioGroup];

    GpioDirtValue = REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG);

    GpioDirtValue &= (1 << (u32GpioNo % HI_GPIO_BIT_NUM));

    if (GpioDirtValue == 0)
    {
        *pbInput = HI_TRUE;
    }
    else
    {
        *pbInput = HI_FALSE;
    }

    HI_GPIO_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_UNF_GPIO_WriteBit(HI_U32 u32GpioNo, HI_BOOL bHighVolt)
{
    HI_U32 GpioGroup;
    HI_U32 GpioDirtValue;
    HI_U32 GpioUsrAddr;
    HI_U32 GpioBitNum;

    if (u32GpioNo >= g_GpioNum.u8GpioMaxNum)
    {
        HI_ERR_GPIO("para u32GpioNo is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    if ((bHighVolt != HI_TRUE)
        && (bHighVolt != HI_FALSE)
    )
    {
        HI_ERR_GPIO("para bHighVolt is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    HI_GPIO_LOCK();

    if (g_GpioDevFd < 0)
    {
        HI_ERR_GPIO("GPIO is not open.\n");
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_NOT_INIT;
    }

    GpioGroup = u32GpioNo / 8;

    GpioUsrAddr = g_GpioUsrAddr[GpioGroup];

    GpioDirtValue = REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG);

    GpioDirtValue &= (1 << (u32GpioNo % HI_GPIO_BIT_NUM));

    GpioDirtValue = GpioDirtValue >> (u32GpioNo % HI_GPIO_BIT_NUM);

    if (GpioDirtValue != HI_GPIO_OUTPUT)
    {
        HI_ERR_GPIO("GPIO Direction is input, write can not operate.\n");
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_INVALID_OPT;
    }

    GpioBitNum = u32GpioNo % HI_GPIO_BIT_NUM;

    if (bHighVolt)
    {
        REG_USR_ADDR(GpioUsrAddr + (4 << GpioBitNum)) = 1 << GpioBitNum;
    }
    else
    {
        REG_USR_ADDR(GpioUsrAddr + (4 << GpioBitNum)) = 0;
    }

    HI_GPIO_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_UNF_GPIO_ReadBit(HI_U32 u32GpioNo, HI_BOOL *pbHighVolt)
{
    HI_U32 GpioGroup;
    HI_U32 GpioDirtValue;
    HI_U32 GpioUsrAddr;
    HI_U32 GpioBitNum;

    if (u32GpioNo >= g_GpioNum.u8GpioMaxNum)
    {
        HI_ERR_GPIO("para u32GpioNo is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    if (!pbHighVolt)
    {
        HI_ERR_GPIO("para pbHighVolt is null.\n");
        return HI_ERR_GPIO_NULL_PTR;
    }

    HI_GPIO_LOCK();

    if (g_GpioDevFd < 0)
    {
        HI_ERR_GPIO("GPIO is not open.\n");
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_NOT_INIT;
    }

    GpioGroup = u32GpioNo / 8;

    GpioUsrAddr = g_GpioUsrAddr[GpioGroup];

    GpioDirtValue = REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG);

    GpioDirtValue &= (1 << (u32GpioNo % HI_GPIO_BIT_NUM));

    if (GpioDirtValue != HI_GPIO_INPUT)
    {
        HI_ERR_GPIO("GPIO Direction is output,read can not operate\n");
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_INVALID_OPT;
    }

    GpioBitNum = u32GpioNo % HI_GPIO_BIT_NUM;

	if ((REG_USR_ADDR(GpioUsrAddr + (4 << GpioBitNum)) >> GpioBitNum) & 0x1)
    {
		*pbHighVolt = HI_TRUE;
	}
	else
	{
		*pbHighVolt = HI_FALSE;
	}

    HI_GPIO_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_UNF_GPIO_SetOutputType(HI_U32 u32GpioNo, HI_UNF_GPIO_OUTPUTTYPE_E  enOutputType)
{
    HI_S32 Ret = HI_SUCCESS;
	GPIO_OUTPUT_TYPE_S stOutputType;
	
	if (u32GpioNo >= g_GpioNum.u8GpioMaxNum)
    {
        HI_ERR_GPIO("para u32GpioNo is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

	if (enOutputType >= HI_UNF_GPIO_OUTPUTTYPE_BUTT)
    {
        HI_ERR_GPIO("para enOutputType is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    HI_GPIO_LOCK();

    if (g_GpioDevFd < 0)
    {
        HI_ERR_GPIO("GPIO is not open.\n");
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_NOT_INIT;
    }

	stOutputType.u32GpioNo = u32GpioNo;
	stOutputType.enOutputType = enOutputType;

	Ret = ioctl(g_GpioDrvFd, CMD_GPIO_SET_OUTPUTTYPE, &stOutputType);
    if (HI_SUCCESS != Ret)
    {
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_FAILED_SETOUTPUTTYPE;
    }

    HI_GPIO_UNLOCK();

	return Ret;
} 

HI_S32 HI_UNF_GPIO_GetOutputType(HI_U32 u32GpioNo, HI_UNF_GPIO_OUTPUTTYPE_E  *penOutputType)
{
	HI_S32 Ret = HI_SUCCESS;
	GPIO_OUTPUT_TYPE_S stOutputType;
	
	if (u32GpioNo >= g_GpioNum.u8GpioMaxNum)
    {
        HI_ERR_GPIO("para u32GpioNo is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

	if (penOutputType == HI_NULL)
    {
        HI_ERR_GPIO("para penOutputType is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    HI_GPIO_LOCK();

    if (g_GpioDevFd < 0)
    {
        HI_ERR_GPIO("GPIO is not open.\n");
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_NOT_INIT;
    }

	stOutputType.u32GpioNo = u32GpioNo;

	Ret = ioctl(g_GpioDrvFd, CMD_GPIO_GET_OUTPUTTYPE, &stOutputType);
    if (HI_SUCCESS != Ret)
    {
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_FAILED_GETOUTPUTTYPE;
    }

	*penOutputType = stOutputType.enOutputType;

    HI_GPIO_UNLOCK();

	return Ret;
} 

HI_S32 HI_UNF_GPIO_SetIntType(HI_U32 u32GpioNo, HI_UNF_GPIO_INTTYPE_E enIntType)
{
    HI_S32 Ret = HI_SUCCESS;
    GPIO_DATA_S GpioIntType;

    if (u32GpioNo >= g_GpioNum.u8GpioMaxNum)
    {
        HI_ERR_GPIO("para u32GpioNo is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    if (enIntType >= HI_UNF_GPIO_INTTYPE_BUTT)
    {
        HI_ERR_GPIO("para enIntType is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

	if ((enIntType == HI_UNF_GPIO_INTTYPE_HIGH) || (enIntType == HI_UNF_GPIO_INTTYPE_LOW))
	{
		return HI_ERR_GPIO_INTTYPE_NOT_SUPPORT;
	}

    HI_GPIO_LOCK();

    if (g_GpioDrvFd < 0)
    {
        HI_ERR_GPIO("GPIO dev has not open. fd = %d \n", g_GpioDrvFd);
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_NOT_INIT;
    }

    GpioIntType.u32GpioNo = u32GpioNo;
    GpioIntType.enIntType = enIntType;

    Ret = ioctl(g_GpioDrvFd, CMD_GPIO_SET_INT_TYPE, &GpioIntType);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_GPIO("set gpio interruput type ioctl failed .ret = %x \n", Ret);
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_FAILED_SETINT;
    }

    HI_GPIO_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_UNF_GPIO_SetIntEnable(HI_U32 u32GpioNo, HI_BOOL bEnable)
{
    HI_S32 Ret = HI_SUCCESS;
    GPIO_DATA_S GpioIntEnable;

    if (u32GpioNo >= g_GpioNum.u8GpioMaxNum)
    {
        HI_ERR_GPIO("para u32GpioNo is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE) && (bEnable != HI_FALSE))
    {
        HI_ERR_GPIO("para bEnable is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    HI_GPIO_LOCK();

    if (g_GpioDrvFd < 0)
    {
        HI_ERR_GPIO("GPIO dev has not open. fd = %d \n", g_GpioDrvFd);
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_NOT_INIT;
    }

    GpioIntEnable.u32GpioNo = u32GpioNo;
    GpioIntEnable.bEnable = bEnable;

    Ret = ioctl(g_GpioDrvFd, CMD_GPIO_SET_INT_ENABLE, &GpioIntEnable);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_GPIO("set gpio enabel or disabel ioctl failed .ret = %x \n", Ret);
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_FAILED_SETENABLE;
    }

    HI_GPIO_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_UNF_GPIO_QueryInt(HI_U32 *pu32GpioNo, HI_U32 u32TimeoutMs)
{
    HI_S32 Ret = HI_SUCCESS;
    GPIO_INT_S GpioIntValue;

    if (HI_NULL == pu32GpioNo)
    {
        HI_ERR_GPIO("para pu32GpioNo is NULL pointer.\n");
        return HI_ERR_GPIO_NULL_PTR;
    }

    HI_GPIO_LOCK();

    if (g_GpioDrvFd < 0)
    {
        HI_ERR_GPIO("GPIO dev has not open. fd = %d \n", g_GpioDrvFd);
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_NOT_INIT;
    }

    GpioIntValue.u32TimeoutMs = u32TimeoutMs;

    Ret = ioctl(g_GpioDrvFd, CMD_GPIO_GET_INT, &GpioIntValue);
    if (HI_SUCCESS != Ret)
    {
        HI_GPIO_UNLOCK();
        return HI_ERR_GPIO_FAILED_GETINT;
    }

    *pu32GpioNo = GpioIntValue.u32GpioNo;
    HI_GPIO_UNLOCK();
    return HI_SUCCESS;
}
