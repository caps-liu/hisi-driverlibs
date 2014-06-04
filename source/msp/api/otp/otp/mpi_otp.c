/******************************************************************************

  Copyright (C), 2001-2012, Hisilicon Tech. Co., Ltd.

******************************************************************************
    File Name   : mpi_otp.c
    Version       : Initial Draft
    Author        : Hisilicon multimedia software group
    Created      : 2012/02/29
    Description :
    History        :
    1.Date        : 2012/02/29
        Author    : c00209458
        Modification: Created file
******************************************************************************/

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include "hi_drv_struct.h"
#include "drv_otp_ioctl.h"
#include "hi_common.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

static HI_S32 g_OtpDevFd    =   -1;
static HI_S32 g_OtpOpenCnt  =   0;
static pthread_mutex_t   g_OtpMutex = PTHREAD_MUTEX_INITIALIZER;

#define HI_OTP_LOCK()    (HI_VOID)pthread_mutex_lock(&g_OtpMutex);
#define HI_OTP_UNLOCK()  (HI_VOID)pthread_mutex_unlock(&g_OtpMutex);

#define CHECK_OTP_INIT()\
do{\
    HI_OTP_LOCK();\
    if (g_OtpDevFd < 0)\
    {\
        HI_ERR_OTP("OTP is not init.\n");\
        HI_OTP_UNLOCK();\
        return HI_FAILURE;\
    }\
    HI_OTP_UNLOCK();\
}while(0)

HI_S32 HI_MPI_OTP_Init(HI_VOID)
{
    HI_OTP_LOCK();

    if (-1 != g_OtpDevFd)
    {
        g_OtpOpenCnt++;
        HI_OTP_UNLOCK();
        return HI_SUCCESS;
    }

    g_OtpDevFd = open("/dev/"UMAP_DEVNAME_OTP, O_RDWR, 0);
    if ( g_OtpDevFd < 0)
    {
        HI_FATAL_OTP("Open OTP ERROR.\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    g_OtpOpenCnt++;
    HI_OTP_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_OTP_DeInit(HI_VOID)
{
    HI_OTP_LOCK();

    if ( g_OtpDevFd < 0)
    {
        HI_OTP_UNLOCK();
        return HI_SUCCESS;
    }

    g_OtpOpenCnt--;
    if ( 0 == g_OtpOpenCnt)
    {
        close(g_OtpDevFd);
        g_OtpDevFd = -1;
    }

    HI_OTP_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_OTP_SetCustomerKey(HI_U8 *pKey, HI_U32 u32KeyLen)
{
    HI_S32 Ret = HI_SUCCESS;
    OTP_CUSTOMER_KEY_TRANSTER_S stCustomerKeyTransfer;

    if (HI_NULL == pKey)
    {
        HI_ERR_OTP("Null ptr for otp writes\n");
        return HI_FAILURE;
    }

    if( OTP_CUSTOMER_KEY_LEN !=  u32KeyLen )
    {
       HI_ERR_OTP("Invalid customer key length!\n");
       return HI_FAILURE;
    }

    CHECK_OTP_INIT();

    HI_OTP_LOCK();

    memset(&stCustomerKeyTransfer, 0x00, sizeof(stCustomerKeyTransfer));
    memcpy((HI_U8 *)stCustomerKeyTransfer.stkey.u32CustomerKey, pKey, u32KeyLen);
    stCustomerKeyTransfer.u32KeyLen = u32KeyLen;
    
    /* Write Customer Key */
    Ret = ioctl(g_OtpDevFd, CMD_OTP_SETCUSTOMERKEY, &stCustomerKeyTransfer);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_OTP("Failed to write otp\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    HI_OTP_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_OTP_GetCustomerKey(HI_U8 *pKey, HI_U32 u32KeyLen)
{
    HI_S32 Ret = HI_SUCCESS;
    OTP_CUSTOMER_KEY_TRANSTER_S stCustomerKeyTransfer;

    if (HI_NULL == pKey)
    {
        HI_ERR_OTP("Null ptr for otp read\n");
        return HI_FAILURE;
    }

    if( OTP_CUSTOMER_KEY_LEN !=  u32KeyLen )
    {
       HI_ERR_OTP("Invalid customer key length!\n");  
       return HI_FAILURE;
    }

    CHECK_OTP_INIT();

    HI_OTP_LOCK();

    memset(&stCustomerKeyTransfer, 0x00, sizeof(stCustomerKeyTransfer));   
    stCustomerKeyTransfer.u32KeyLen = u32KeyLen;

    Ret = ioctl(g_OtpDevFd, CMD_OTP_GETCUSTOMERKEY, &stCustomerKeyTransfer);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_OTP("Failed to read customer key\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    memcpy(pKey, stCustomerKeyTransfer.stkey.u32CustomerKey, u32KeyLen);
    
    HI_OTP_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_OTP_IsDDPLUSSupport(HI_BOOL* pbDDPLUSFlag)
{
    HI_S32 Ret = HI_SUCCESS;

    if(HI_NULL == pbDDPLUSFlag)
    {
        HI_ERR_OTP("NULL pointer!\n");
        return HI_FAILURE;
    }
    
    *pbDDPLUSFlag = HI_FALSE;

    CHECK_OTP_INIT();

    HI_OTP_LOCK();
    
    Ret = ioctl(g_OtpDevFd, CMD_OTP_GETDDPLUSFLAG, pbDDPLUSFlag);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_OTP("Failed to get dolby_en flag in otp!\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }
    
    HI_OTP_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_OTP_IsDTSSupport(HI_BOOL* pbDTSFlag)
{
    HI_S32 Ret = HI_SUCCESS;

    if(HI_NULL == pbDTSFlag)
    {
        HI_ERR_OTP("NULL pointer!\n");
        return HI_FAILURE;
    }

    CHECK_OTP_INIT();
    
    HI_OTP_LOCK();

    *pbDTSFlag = HI_FALSE;
    
    /* Read Audio support flag */
    Ret = ioctl(g_OtpDevFd, CMD_OTP_GETDTSFLAG, pbDTSFlag);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_OTP("failed to get dts_en flag!\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    HI_OTP_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_OTP_SetStbPrivData(HI_U32 u32Offset, HI_U8 u8Data)
{
    HI_S32 Ret = HI_SUCCESS;
    OTP_STB_PRIV_DATA_S OtpStbPrivData;
    
    if (u32Offset >= 16) //should be less than 16
    {
        HI_ERR_OTP("u32Offset (%d) invalid!\n", u32Offset);
        return HI_FAILURE;
    }

    CHECK_OTP_INIT();
    HI_OTP_LOCK();

    memset(&OtpStbPrivData, 0, sizeof(OTP_STB_PRIV_DATA_S));
    OtpStbPrivData.u32Offset = u32Offset;
    OtpStbPrivData.u8Data = u8Data;

    Ret = ioctl(g_OtpDevFd, CMD_OTP_SETSTBPRIVDATA, &OtpStbPrivData);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_OTP("Failed to write stb private data\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    HI_OTP_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_OTP_GetStbPrivData(HI_U32 u32Offset, HI_U8 *pu8Data)
{
    HI_S32 Ret = HI_SUCCESS;
    OTP_STB_PRIV_DATA_S OtpStbPrivData;
    
    if (HI_NULL == pu8Data)
    {
        HI_ERR_OTP("Null ptr for otp read\n");
        return HI_FAILURE;
    }

    if (u32Offset >= 16) //should be less than 16
    {
        HI_ERR_OTP("u32Offset (%d) invalid!\n", u32Offset);
        return HI_FAILURE;
    }

    CHECK_OTP_INIT();
    HI_OTP_LOCK();
    
    memset(&OtpStbPrivData, 0, sizeof(OTP_STB_PRIV_DATA_S));
    OtpStbPrivData.u32Offset = u32Offset;

    Ret = ioctl(g_OtpDevFd, CMD_OTP_GETSTBPRIVDATA, &OtpStbPrivData);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_OTP("Failed to read stb private data\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }
    *pu8Data = OtpStbPrivData.u8Data;

    HI_OTP_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_OTP_WriteHdcpRootKey(HI_U8 *pu8Key, HI_U32 u32KeyLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    OTP_HDCP_ROOT_KEY_S stHdcpRootKey;
    
        
    if ( NULL == pu8Key)    
    {
        HI_ERR_OTP("Invalid param, null pointer!\n");
        return HI_FAILURE;
    }

    if ( OTP_HDCP_ROOT_KEY_LEN != u32KeyLen )
    {
        HI_ERR_OTP("Invalid Input Key Length!\n");
        return HI_FAILURE;
    }
    
    CHECK_OTP_INIT();
    HI_OTP_LOCK();

    memset(&stHdcpRootKey, 0, sizeof(OTP_HDCP_ROOT_KEY_S));
    memcpy(stHdcpRootKey.u8Key, pu8Key, OTP_HDCP_ROOT_KEY_LEN);
    s32Ret = ioctl(g_OtpDevFd, CMD_OTP_WRITEHDCPROOTKEY, &stHdcpRootKey);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_OTP("Failed to burn hdcp root key!\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    HI_OTP_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_OTP_ReadHdcpRootKey(HI_U8 *pu8Key, HI_U32 u32KeyLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    OTP_HDCP_ROOT_KEY_S stOtpHdcpRootKey;

    if ( NULL == pu8Key)    
    {
        HI_ERR_OTP("Invalid param, null pointer!\n");
        return HI_FAILURE;
    }

    if ( OTP_HDCP_ROOT_KEY_LEN != u32KeyLen )
    {
        HI_ERR_OTP("Invalid Input Key Length!\n");
        return HI_FAILURE;
    }
    
    CHECK_OTP_INIT();
    
    HI_OTP_LOCK();

    memset(&stOtpHdcpRootKey, 0, sizeof(OTP_HDCP_ROOT_KEY_S));
    s32Ret = ioctl(g_OtpDevFd, CMD_OTP_READHDCPROOTKEY, &stOtpHdcpRootKey);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_OTP("Failed to read hdcp root key!\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    memcpy(pu8Key, stOtpHdcpRootKey.u8Key, OTP_HDCP_ROOT_KEY_LEN);
    
    HI_OTP_UNLOCK();    
    return HI_SUCCESS;
}

HI_S32 HI_MPI_OTP_LockHdcpRootKey(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;

    CHECK_OTP_INIT();
    
    HI_OTP_LOCK();

    s32Ret = ioctl(g_OtpDevFd, CMD_OTP_LOCKHDCPROOTKEY);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_OTP("Failed to lock hdcp root key!\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    HI_OTP_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_OTP_GetHdcpRootKeyLockFlag(HI_BOOL *pbKeyLockFlag)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if ( NULL == pbKeyLockFlag)
    {
        HI_ERR_OTP("Invalid param, null pointer!\n");
        return HI_FAILURE;
    }
    
    CHECK_OTP_INIT();
    
    HI_OTP_LOCK();

    s32Ret = ioctl(g_OtpDevFd, CMD_OTP_GETHDCPROOTKEYLOCKFLAG, pbKeyLockFlag);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_OTP("Failed to get hdcp root key lock flag!\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    HI_OTP_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_OTP_WriteStbRootKey(HI_U8 *pu8Key, HI_U32 u32KeyLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    OTP_STB_ROOT_KEY_S stStbRootKey;
        
    if ( NULL == pu8Key)    
    {
        HI_ERR_OTP("Invalid param, null pointer!\n");
        return HI_FAILURE;
    }
    
    if ( OTP_STB_ROOT_KEY_LEN != u32KeyLen )
    {
        HI_ERR_OTP("Invalid Input Key Length!\n");
        return HI_FAILURE;
    }    
    
    CHECK_OTP_INIT();    
    HI_OTP_LOCK();

    memset(&stStbRootKey, 0, sizeof(OTP_STB_ROOT_KEY_S));
    memcpy(stStbRootKey.u8Key, pu8Key, OTP_STB_ROOT_KEY_LEN);
    
    s32Ret = ioctl(g_OtpDevFd, CMD_OTP_WRITESTBROOTKEY, &stStbRootKey);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_OTP("Failed to burn STB root key!\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    HI_OTP_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_OTP_ReadStbRootKey(HI_U8 *pu8Key, HI_U32 u32KeyLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    OTP_STB_ROOT_KEY_S stStbRootKey;

    if ( NULL == pu8Key)
    {
        HI_ERR_OTP("Invalid param, null pointer!\n");
        return HI_FAILURE;
    }

    if ( OTP_STB_ROOT_KEY_LEN != u32KeyLen )
    {
        HI_ERR_OTP("Invalid Input Key Length!\n");
        return HI_FAILURE;
    }
    
    CHECK_OTP_INIT();
    
    HI_OTP_LOCK();

    memset(&stStbRootKey, 0, sizeof(OTP_STB_ROOT_KEY_S));
    s32Ret = ioctl(g_OtpDevFd, CMD_OTP_READSTBROOTKEY, &stStbRootKey);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_OTP("Failed to read stb root key!\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    memcpy(pu8Key, stStbRootKey.u8Key, OTP_STB_ROOT_KEY_LEN);
    
    HI_OTP_UNLOCK();    
    return HI_SUCCESS;
}

HI_S32 HI_MPI_OTP_LockStbRootKey(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;

    CHECK_OTP_INIT();
    HI_OTP_LOCK();

    s32Ret = ioctl(g_OtpDevFd, CMD_OTP_LOCKSTBROOTKEY);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_OTP("Failed to lock stb root key!\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    HI_OTP_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_OTP_GetStbRootKeyLockFlag(HI_BOOL *pbKeyLockFlag)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if ( NULL == pbKeyLockFlag)
    {
        HI_ERR_OTP("Invalid param, null pointer!\n");
        return HI_FAILURE;
    }
    
    CHECK_OTP_INIT();
    HI_OTP_LOCK();

    s32Ret = ioctl(g_OtpDevFd, CMD_OTP_GETSTBROOTKEYLOCKFLAG, pbKeyLockFlag);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_OTP("Failed to get stb root key lock flag!\n");
        HI_OTP_UNLOCK();
        return HI_FAILURE;
    }

    HI_OTP_UNLOCK();
    return HI_SUCCESS;
}


#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */

