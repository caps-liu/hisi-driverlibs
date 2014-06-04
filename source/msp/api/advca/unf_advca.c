/******************************************************************************

Copyright (C), 2004-2020, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : unf_advca.c
Version       : Initial
Author        : Hisilicon hisecurity team
Created       : 2013-08-28
Last Modified :
Description   : Hisilicon CA API definition
Function List :
History       :
******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/time.h>
#include <unistd.h>
#include <string.h>
#include <semaphore.h>
#include "hi_unf_advca.h"
#include "hi_unf_cipher.h"
#include "hi_drv_struct.h"
#include "hi_error_mpi.h"
#include "hi_drv_advca.h"
#include "drv_advca_ioctl.h"
#include "drv_otp_ioctl.h"
#include "drv_otp_ext.h"

#define INVALID_VALUE (0xffffffff)

static const HI_U8 s_szAdvcaVersion[] __attribute__((used)) = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

static HI_S32 g_s32CaFd = -1;
static HI_UNF_ADVCA_KEYLADDER_LEV_E g_dvbLadder;
static HI_UNF_ADVCA_KEYLADDER_LEV_E g_r2rLadder;
static HI_UNF_ADVCA_VENDOR_TYPE_E g_vendorType;

/*for PVR*/
#define PVR_CA_MAX_CHANNEL 5
#define PVR_CA_MAX_BLOCK_NUM 50
//static HI_U64 PVR_BLOCK_SIZE = 0x100000000;//4G
static HI_U64 PVR_BLOCK_SIZE =  0x40000000; //1G

fpGetCAData g_GetCAData = NULL;
fpSetCAData g_SetCAData = NULL;
static sem_t g_PVRSem;

typedef struct hiUNF_R2RKeyladder_Cipher_Info_S
{
    HI_UNF_ADVCA_ALG_TYPE_E KeyladderAlg;
    HI_UNF_ADVCA_KEYLADDER_LEV_E KeyladderLevel;
    HI_U8 SessionKey1[16]; 
    HI_U8 SessionKey2[16]; 
    HI_HANDLE hCipherHandle ;
    HI_UNF_CIPHER_CTRL_S stCipherCtrl;
}HI_UNF_R2RKeyladder_Cipher_Info_S;  

typedef struct hiUNF_CA_PVR_CHANNEL_INFO_S
{
    HI_BOOL bAlreadyGetPlayInfo;
    HI_CHAR FileName[256];
    HI_U32 u32ChnID;
    HI_U32 u32MaxBlockNum;
    HI_U32 BlockNum;
    HI_U64 u64BlockSize;    
    HI_BOOL bCADataSavedFlag;

    HI_BOOL    bCAPrivateFileCreated;
    HI_CHAR    CAPrivateFileName[128];
    
    HI_U8 Cipherkey[PVR_CA_MAX_BLOCK_NUM][16]; 
    HI_U8 CipherTrackkey[PVR_CA_MAX_BLOCK_NUM][16]; 
    HI_UNF_R2RKeyladder_Cipher_Info_S stR2RkeyladderCipherInfo;
}HI_CA_PVR_CHANNEL_INFO_S;

typedef struct hiUNF_CA_PVR_MAC_CHANNEL_INFO_S
{
    HI_CA_PVR_CHANNEL_INFO_S stPVRChannelInfo ;
    HI_U8 u8AES_CMAC[16];     /*The MAC of upper parameter of HI_CA_PVR_CHANNEL_INFO_S, use R2R-SWPK key-ladder */
}HI_CA_PVR_MAC_CHANNEL_INFO_S;

typedef struct hiUNF_PVR_CA_INFO_S
{
    HI_CA_PVR_CHANNEL_INFO_S stPVRChannelInfo[PVR_CA_MAX_CHANNEL] ;
}HI_CA_PVR_INFO_S;


HI_CA_PVR_INFO_S g_stRecCAData;
HI_CA_PVR_INFO_S g_stPlayCAData;
#define CA_CheckPointer(p) \
    do {  \
        if (HI_NULL == p)\
        {\
            HI_ERR_CA("pointer parameter is NULL.\n"); \
            return -1; \
        } \
    } while (0)
    
#define CA_ASSERT(api, ret) \
    do{ \
        ret = api; \
        if (ret != HI_SUCCESS) \
        { \
            HI_ERR_CA("run %s failed, ERRNO:%#x.\n", #api, ret); \
            return -1;\
        } \
        else\
        {\
        /*printf("sample %s: run %s ok.\n", __FUNCTION__, #api);}*/   \
        }\
    }while(0)

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_Init
*  Description:    open ca
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_Init(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;
    HI_S32 s32DevFd = 0;
    HI_U32 u32VendorType = 0;
    HI_U8 i = 0;
    if (g_s32CaFd <= 0)
    {
#ifdef SDK_SECURITY_ARCH_VERSION_V2
        HI_INFO_CA("SDK_SECURITY_ARCH_VERSION_V2 HI_UNF_ADVCA_Init\n");
        s32DevFd = open(X5_CA_DEV_NAME, O_RDWR, 0);
#else
        s32DevFd = open("/dev/" UMAP_DEVNAME_CA, O_RDWR, 0);
#endif
        if (s32DevFd < 0)
        {
            HI_ERR_CA("ca open err. \n");
            return HI_ERR_CA_OPEN_ERR;
        }

        g_s32CaFd   = s32DevFd;
        ret = HI_UNF_ADVCA_GetDVBKeyLadderStage(&g_dvbLadder);
        ret = HI_UNF_ADVCA_GetR2RKeyLadderStage(&g_r2rLadder);

        ret = HI_UNF_ADVCA_GetVendorID(&u32VendorType);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("get vendor type err. \n");
            return HI_FAILURE;
        }

        g_vendorType = (HI_UNF_ADVCA_VENDOR_TYPE_E)u32VendorType;

        memset(&g_stRecCAData, 0, sizeof(HI_CA_PVR_INFO_S));
        memset(&g_stPlayCAData, 0, sizeof(HI_CA_PVR_INFO_S));

        for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
        {
            g_stRecCAData.stPVRChannelInfo[i].u32ChnID  = INVALID_VALUE;
            g_stPlayCAData.stPVRChannelInfo[i].u32ChnID  = INVALID_VALUE;
        }
 
        (HI_VOID)sem_init(&g_PVRSem, 0, 1);
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_KEYLED_DeInit
*  Description:    close ca
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:      ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_DeInit(HI_VOID)
{
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_SUCCESS;
    }

    close(g_s32CaFd);
    g_s32CaFd   = -1;
    g_dvbLadder = HI_UNF_ADVCA_KEYLADDER_BUTT;
    g_r2rLadder = HI_UNF_ADVCA_KEYLADDER_BUTT;
    g_vendorType = HI_UNF_ADVCA_VENDOR_NONE;

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetChipId
*  Description:    get chip id
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetChipId(HI_U32 *pu32ChipId)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pu32ChipId)
    {
        HI_ERR_CA("pu32ChipId == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_CHIPID, pu32ChipId);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_CHIPID err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetUniqueChipId
*  Description:    get chip id
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetUniqueChipId(HI_U8 pu8ChipId[4])
{
    HI_S32 ret;
    CA_KEY_S stCaKey;
    
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pu8ChipId)
    {
        HI_ERR_CA("pu32ChipId == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_UNIQUE_CHIPID, &stCaKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_CHIPID err. \n");
        return ret;
    }

    memcpy(pu8ChipId, stCaKey.KeyBuf, 4);

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetMarketId
*  Description:    get market id
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetMarketId(HI_U8 u8MarketId[4])
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == u8MarketId)
    {
        HI_ERR_CA("pu32MarketId == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_MARKETID, u8MarketId);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_MARKETID err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetMarketId
*  Description:    set market id
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetMarketId(HI_U8 u8MarketId[4])
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_MARKETID, u8MarketId);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_MARKETID err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetStbSn
*  Description:    get stb serial number
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetStbSn(HI_U8 u8StbSn[4])
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == u8StbSn)
    {
        HI_ERR_CA("pu32SerialNumber == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_STBSN, u8StbSn);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_STBSN err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetSerialNumber
*  Description:    set stb serial number
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetStbSn(HI_U8 u8StbSn[4])
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_STBSN, u8StbSn);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_STBSN err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetVersionId
*  Description:    get version id
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetVersionId(HI_U8 u8VersionId[4])
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == u8VersionId)
    {
        HI_ERR_CA("u8VersionId == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_VERSIONID, u8VersionId);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_VERSIONID err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetVersionId
*  Description:    set version id
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetVersionId(HI_U8 u8VersionId[4])
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_VERSIONID, u8VersionId);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_VERSIONID err. \n");
        return ret;
    }

    return HI_SUCCESS;
}


/** 
\brief  设置固定使用硬件CW字 默认根据Demux的配置选择使用硬件CW字还是软件CW字
*/
HI_S32 HI_UNF_ADVCA_LockHardCwSel(HI_VOID)
{
    HI_S32 ret;
    
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_LOCKHARDCWSEL,0);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_LOCKHARDCWSEL err. \n");
        return ret;
    }
    
    return HI_SUCCESS;
}

/** 
\brief 设置必须对BootLoader进行解密
*/
HI_S32 HI_UNF_ADVCA_LockBootDecEn(HI_VOID)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_LOCKBOOTDECEN, HI_NULL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_LOCKBOOTDECEN err. \n");
        return ret;
    }

    return HI_SUCCESS;    
}

/** 
\brief 获取BootLoader解密标志位
*/
HI_S32 HI_UNF_ADVCA_GetBootDecEnStat(HI_U32 *pu32Stat)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }
    
    if (HI_NULL == pu32Stat)
    {
        HI_ERR_CA("pu32Stat == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_BLOAD_DEC_EN, pu32Stat);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_BLOAD_DEC_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;    
}

/** 
\brief 设置固定用硬件密钥作为R2R的密钥
*/
HI_S32 HI_UNF_ADVCA_LockR2RHardKey(HI_VOID)
{
    HI_S32 ret;
    
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_LOCKR2RHARDKEY,0);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_LOCKR2RHARDKEY err. \n");
        return ret;
    }
    
    return HI_SUCCESS;
}

/** 
\brief  判断是否固定使用硬件CW字
*/
HI_S32 HI_UNF_ADVCA_GetHardCwSelStat(HI_BOOL *pbLock)
{
    HI_S32 ret;
    
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pbLock)
    {
        HI_ERR_CA("pbLock == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }
    
    ret = ioctl(g_s32CaFd, CMD_CA_STATHARDCWSEL,pbLock);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_STATHARDCWSEL err. \n");
        return ret;
    }    
    
    return HI_SUCCESS;
}

/** 
\brief 判断是否固定用硬件密钥作为R2R的密钥
*/
HI_S32 HI_UNF_ADVCA_GetR2RHardKeyStat(HI_BOOL *pbLock)
{
    HI_S32 ret;
    
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pbLock)
    {
        HI_ERR_CA("pbLock == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_STATR2RHARDKEY,pbLock);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_STATR2RHARDKEY err. \n");
        return ret;
    }    
    
    return HI_SUCCESS;

}

/** 
\brief 判断是否锁定CIPHER只能使用TDES
*/
HI_S32 HI_UNF_ADVCA_GetTdesLockStat(HI_BOOL *pbLock)
{
    HI_S32 ret;
    
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pbLock)
    {
        HI_ERR_CA("pbLock == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_STATTDESLOCK,pbLock);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_STATTDESLOCK err. \n");
        return ret;
    }    
    
    return HI_SUCCESS;   
}

/** 
\brief 关闭Link Protection功能
*/
HI_S32 HI_UNF_ADVCA_DisableLinkProtection(HI_VOID)
{
    HI_S32 ret;
    
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_DISABLELPT,0);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DISABLELP err. \n");
        return ret;
    }
    
    return HI_SUCCESS;
}


/** 
\brief 关闭SelfBoot功能
*/
HI_S32 HI_UNF_ADVCA_DisableSelfBoot(HI_VOID)
{
    HI_S32 ret;
    
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_DISABLESELFBOOT,0);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DISABLESELFBOOT err. \n");
        return ret;
    }
    
    return HI_SUCCESS;
}

/** 
\brief 获取SelfBoot状态
*/
HI_S32 HI_UNF_ADVCA_GetSelfBootStat(HI_BOOL *pbDisable)
{
    HI_S32 ret;
    
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pbDisable)
    {
        HI_ERR_CA("pbDisable == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_SELFBOOT, pbDisable);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_SELFBOOT err. \n");
        return ret;
    }
    
    return HI_SUCCESS;
}


/**
\brief 获取安全启动使能状态
*/
HI_S32 HI_UNF_ADVCA_GetSecBootStat(HI_BOOL *pbEnable,HI_UNF_ADVCA_FLASH_TYPE_E *penFlashType)
{
    HI_S32 ret;
    HI_U32 val;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pbEnable)
    {
        HI_ERR_CA("pbEnable == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }
    if (HI_NULL == penFlashType)
    {
        HI_ERR_CA("penFlashType == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    /* 获取安全启动使能状态 */
    ret = ioctl(g_s32CaFd, CMD_CA_GET_SCSACTIVE, &val);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_SCSACTIVE err. \n");
        return ret;
    }

    if (val)
    {
        *pbEnable = HI_TRUE;
        /* 获取安全启动的Flash类型 */
        ret = ioctl(g_s32CaFd, CMD_CA_GET_BOOTMODE, penFlashType);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("ca ioctl CMD_CA_GET_BOOTMODE err. \n");
            return ret;
        }
    }
    else
    {
        *pbEnable = HI_FALSE;
        *penFlashType = HI_UNF_ADVCA_FLASH_TYPE_BUTT;
    }

    return HI_SUCCESS;
}


/**
\brief 设置安全启动使能,同时指定安全启动的Flash类型
*/
HI_S32 HI_UNF_ADVCA_EnableSecBoot(HI_UNF_ADVCA_FLASH_TYPE_E enFlashType)
{
    HI_S32 ret;
   
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (enFlashType >= HI_UNF_ADVCA_FLASH_TYPE_BUTT)
    {
        HI_ERR_CA("enFlashType >=HI_UNF_ADVCA_FLASH_TYPE_BUTT, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    /* 使能安全启动 */
    ret = ioctl(g_s32CaFd, CMD_CA_SET_SCSACTIVE,0);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_SCSACTIVE err. \n");
        return ret;
    }

    /* 设置安全启动的Flash类型 */
    ret = ioctl(g_s32CaFd, CMD_CA_SET_BOOTMODE, &enFlashType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_BOOTMODE err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_EnableSecBootEx(HI_VOID)
{
    HI_S32 ret;
   
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

     /* 使能安全启动 */
    ret = ioctl(g_s32CaFd, CMD_CA_SET_SCSACTIVE, 0);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_SCSACTIVE err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetFlashTypeEx(HI_UNF_ADVCA_FLASH_TYPE_E enFlashType)
{
    HI_S32 ret;
    HI_U32 u32BootselCtrl = 1;
   
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (enFlashType >= HI_UNF_ADVCA_FLASH_TYPE_BUTT)
    {
        HI_ERR_CA("enFlashType >=HI_UNF_ADVCA_FLASH_TYPE_BUTT, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

     /* 设置安全启动的Flash类型 */
    ret = ioctl(g_s32CaFd, CMD_CA_SET_BOOTMODE, &enFlashType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_BOOTMODE err. \n");
        return ret;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_BOOTSEL_CTRL, &u32BootselCtrl);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_BOOTSEL_CTRL err.\n");
        return ret;
    }

    return HI_SUCCESS;
}


/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetJtagMode
*  Description:    get jtag mode
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetJtagMode(HI_UNF_ADVCA_JTAG_MODE_E *penJtagMode)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (penJtagMode == NULL)
    {
        HI_ERR_CA("penJtagMode == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_JTAGPRTMODE, penJtagMode);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_JTAGPRTMODE err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetJtagMode
*  Description:    set jtag mode
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetJtagMode(HI_UNF_ADVCA_JTAG_MODE_E enJtagMode)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (enJtagMode >= HI_UNF_ADVCA_JTAG_MODE_BUTT)
    {
        HI_ERR_CA("enJtagMode >=HI_UNF_ADVCA_JTAG_MODE_BUTT, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_JTAGPRTMODE, &enJtagMode);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_JTAGPRTMODE err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/**
\brief 获取OTP写保护是否使能
*/
HI_S32 HI_UNF_ADVCA_GetOtpWrProtect(HI_BOOL *pbEnable)
{
    HI_S32 ret;
    HI_U32 val;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pbEnable)
    {
        HI_ERR_CA("pbEnable == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_PROTECT, &val);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_PROTECT err. \n");
        return ret;
    }

    if (val)
    {
        *pbEnable = HI_TRUE;
    }
    else
    {
        *pbEnable = HI_FALSE;
    }

    return HI_SUCCESS;
}

/**
\brief 设置OTP写保护使能  
*/
HI_S32 HI_UNF_ADVCA_SetOtpWrProtect(HI_VOID)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_PROTECT,0);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_ACCESS err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetR2RKeyLadderStage
*  Description:    get r2r ladder stage
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetR2RKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E *penStage)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (penStage == NULL)
    {
        HI_ERR_CA("penStage == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_R2R_GETLADDER, penStage);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_R2R_GETLADDER err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetR2RKeyLadderStage
*  Description:    set r2r ladder stage
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetR2RKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if ((enStage >= HI_UNF_ADVCA_KEYLADDER_BUTT) || (enStage < HI_UNF_ADVCA_KEYLADDER_LEV2))
    {
        HI_ERR_CA("enStage = %d, invalid.\n", enStage);
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_R2R_SETLADDER, &enStage);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_R2R_SETLADDER err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetDVBKeyLadderStage
*  Description:    get dvb ladder stage
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetDVBKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E *penStage)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (penStage == NULL)
    {
        HI_ERR_CA("penStage == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_DVB_GETLADDER, penStage);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_CW_GETLADDER err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetDVBKeyLadderStage
*  Description:    set dvb ladder stage
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetDVBKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if ((enStage < HI_UNF_ADVCA_KEYLADDER_LEV2) || (enStage >= HI_UNF_ADVCA_KEYLADDER_BUTT))
    {
        HI_ERR_CA("enStage = %d, invalid.\n", enStage);
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_DVB_SETLADDER, &enStage);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DVB_SETLADDER err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetR2RAlg
*  Description:    set r2r alg
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_E enType)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (enType >= HI_UNF_ADVCA_ALG_TYPE_BUTT)
    {
        HI_ERR_CA("enType >=  HI_UNF_ADVCA_ALG_TYPE_BUTT, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_R2R_SETALG, &enType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_R2R_SETALG err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetDVBAlg
*  Description:    set cw alg
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetDVBAlg(HI_UNF_ADVCA_ALG_TYPE_E enType)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (enType >= HI_UNF_ADVCA_ALG_TYPE_BUTT)
    {
        HI_ERR_CA("enType >=  HI_UNF_ADVCA_ALG_TYPE_BUTT, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_DVB_SETALG, &enType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_CW_SETALG err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetR2RAlg
*  Description:    set cw alg
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_E *pEnType)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pEnType == NULL)
    {
        HI_ERR_CA("pEnType == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_R2R_GETALG, pEnType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_R2R_GETALG err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetDVBAlg
*  Description:    set cw alg
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetDVBAlg(HI_UNF_ADVCA_ALG_TYPE_E *pEnType)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pEnType == NULL)
    {
        HI_ERR_CA("pEnType == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_DVB_GETALG, pEnType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DVB_GETALG err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetR2RSessionKey
*  Description:    set r2r session key
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
/*lint -save -e818 ignored by m00190812, because these function prototypes could not be changed*/
HI_S32 HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key)
{
    HI_S32 ret;
    CA_CRYPTPM_S cryptPm;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enTotalStage;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pu8Key == NULL)
    {
        HI_ERR_CA("pu8Key == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_R2R_GETLADDER, &enTotalStage);
    if (HI_SUCCESS != ret)    
    {
        HI_ERR_CA("ca ioctl CMD_CA_R2R_GETLADDER err. \n");
        return ret;
    }

    if (enStage > enTotalStage)
    {
        HI_ERR_CA("enStage(%d) > g_dvbLadder(%d), invalid.\n", enStage, enTotalStage);
        return HI_ERR_CA_INVALID_PARA;
    }

    cryptPm.ladder = enStage;
    memcpy(cryptPm.pDin, pu8Key, 16);
    ret = ioctl(g_s32CaFd, CMD_CA_R2R_CRYPT, &cryptPm);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_R2R_CRYPT err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetDVBSessionKey
*  Description:    set dvb session key
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetDVBSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key)
{
    HI_S32 ret;
    CA_CRYPTPM_S cryptPm;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pu8Key == NULL)
    {
        HI_ERR_CA("pu8Key == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    if (enStage >= g_dvbLadder)
    {
        HI_ERR_CA("enStage(%d) >= g_dvbLadder(%d), invalid.\n", enStage, g_dvbLadder);
        return HI_ERR_CA_INVALID_PARA;
    }

    cryptPm.ladder = enStage;
    memcpy(cryptPm.pDin, pu8Key, 16);
    ret = ioctl(g_s32CaFd, CMD_CA_DVB_CRYPT, &cryptPm);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_CW_CRYPT err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetGDRMSessionKey
*  Description:    set gdrm session key
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetGDRMSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key, HI_UNF_ADVCA_CA_TARGET_E enKlTarget)
{
    HI_S32 ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stTrans;
    CA_CRYPTPM_S cryptPm;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pu8Key == NULL)
    {
        HI_ERR_CA("pu8Key == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stTrans, 0 , sizeof(stTrans));
    memset(&cryptPm, 0 , sizeof(cryptPm));

    cryptPm.ladder = enStage;
    cryptPm.enKlTarget = enKlTarget;
    memcpy(cryptPm.pDin, pu8Key, 16);

    stTrans.enCmdChildID = CMD_CHILD_ID_CA_GDRM_CRYPT;
    memcpy(stTrans.pu8ParamBuf, &cryptPm, sizeof(CA_CRYPTPM_S));
    stTrans.u32ParamLen = sizeof(CA_CRYPTPM_S);
    ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stTrans);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CHILD_ID_CA_GDRM_CRYPT err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/** 
\brief 加载LPK
*/
HI_S32 HI_UNF_ADVCA_LoadLpk(HI_U8 *pEncryptedLpk)
{
    HI_S32 ret;
    CA_LOADLPK_S stLoadLpk;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pEncryptedLpk)
    {
        HI_ERR_CA("HI_NULL == pEncryptLpk, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    if (HI_UNF_ADVCA_VENDOR_CONAX != g_vendorType)
    {
        HI_ERR_CA("CA vendor NOT match! Permission denied!\n");
        return HI_ERR_CA_NOT_SUPPORT;
    }

    memcpy(stLoadLpk.EncryptLpk, pEncryptedLpk, 16);
    ret = ioctl(g_s32CaFd, CMD_CA_LPK_LOAD, &stLoadLpk);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DECRYPTLPKDATA err. \n");
        return ret;
    }

    return HI_SUCCESS; 
}


/** 
\brief 解密智能卡传送给CPU的经过链路保护的分组数据 (Link Protection)
*/
HI_S32 HI_UNF_ADVCA_DecryptLptBlock(HI_U8 *pEncryptedBlock,HI_U8 *pPlainBlock)
{
    HI_S32 ret;
    CA_DECRYPTLPTDATA_S stDecryptLpData;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pEncryptedBlock)
    {
        HI_ERR_CA("HI_NULL == pEncryptData, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    if (HI_NULL == pPlainBlock)
    {
        HI_ERR_CA("HI_NULL == pClearData, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    if (HI_UNF_ADVCA_VENDOR_CONAX != g_vendorType)
    {
        HI_ERR_CA("CA vendor NOT match! Permission denied!\n");
        return HI_ERR_CA_NOT_SUPPORT;
    }
    
    memcpy(stDecryptLpData.EncryptData, pEncryptedBlock, 8);
    ret = ioctl(g_s32CaFd, CMD_CA_LPK_DECRYPT, &stDecryptLpData);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DECRYPTLPKDATA err. \n");
        return ret;
    }

    memcpy(pPlainBlock,stDecryptLpData.ClearData,8);
    return HI_SUCCESS;
}

/** 
\brief 解密智能卡传送给CPU的经过链路保护的数据 (Link Protection)
*/
HI_S32 HI_UNF_ADVCA_DecryptLptParam(HI_U8 *pCipherText,HI_S32 s32TextLen,HI_U8 *pPlainText)
{
    HI_S32 BlkNum, BlkIdx,s32BlkLen = 8;
    HI_S32 i,Ret;
    HI_S32 TailValidBytes;
    HI_U8 En1[8], Dn[8];
    HI_U8 IV[8];
    HI_U8 *pCipherBlk,*pPlainBlk;
    HI_U8 CN2[8],*pCN1,*pPN1,*pCN,*pPN;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }
    
    if (HI_NULL == pCipherText || HI_NULL == pPlainText || s32TextLen <= s32BlkLen)
    {
        HI_ERR_CA("invalid parameter\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    if (HI_UNF_ADVCA_VENDOR_CONAX != g_vendorType)
    {
        HI_ERR_CA("CA vendor NOT match! Permission denied!\n");
        return HI_ERR_CA_NOT_SUPPORT;
    }
    
    BlkNum = (s32TextLen + s32BlkLen - 1) / s32BlkLen;	
    pCipherBlk = pCipherText;
    pPlainBlk = pPlainText;
    memset(IV, 0, (HI_U32)s32BlkLen);
	    
    if (0 != s32TextLen%8)
    {
	    /*1. Decrypt P[0] ~ P[n-2] */
	    for (BlkIdx = 0; BlkIdx < BlkNum - 2; BlkIdx++)
	    {
	        /* ECB Decrypt */
	        Ret = HI_UNF_ADVCA_DecryptLptBlock(pCipherBlk,pPlainBlk);
	        if (HI_SUCCESS != Ret)
	        {
	            HI_ERR_CA("HI_UNF_ADVCA_DecryptLptBlock failed:%x\n",Ret);
	            return Ret;
	        }
	        
	        /* XOR */
	        for (i = 0; i < s32BlkLen; i++)
	        {
	        	pPlainBlk[i] = pPlainBlk[i] ^ IV[i];
	        }
	
	        /* Update */
	        memcpy(IV, pCipherBlk, (HI_U32)s32BlkLen);
	        pCipherBlk += s32BlkLen;
	        pPlainBlk  += s32BlkLen;
	    }
	
	    /* Record C[n-2] C[n-1] P[n-1]*/
	    memcpy(CN2, IV, (HI_U32)s32BlkLen);
	    pCN1 = pCipherBlk;
	    pPN1 = pPlainBlk;
	
	    /*2. Decrypt P[n] */
	    // D[n] = Decrypt (K, C[n-1]).
	    Ret = HI_UNF_ADVCA_DecryptLptBlock(pCN1,Dn);
	    if (HI_SUCCESS != Ret)
	    {
	        HI_ERR_CA("HI_UNF_ADVCA_DecryptLptBlock failed:%x\n",Ret);
	        return Ret;
	    }
	
	    // C = Cn || 0(B-M)
	    memcpy(IV, pCipherText + (BlkNum-1) * s32BlkLen, (HI_U32)s32BlkLen);  /* IV = Cn */
	    TailValidBytes = (0 == s32TextLen % s32BlkLen) ? (s32BlkLen) : (s32TextLen % s32BlkLen);
	    for (i = TailValidBytes; i < s32BlkLen; i++)
	    {
	        IV[i] = 0;
	    }
	
	    // X[n] = D[n] XOR C
	    for (i = 0; i < s32BlkLen; i++)
	    {
	        Dn[i] = Dn[i] ^ IV[i];
	    }
	
	    // Pn = Head(X[n],M)
	    pPN = pPlainText + (BlkNum - 1) * s32BlkLen;
	    memcpy(pPN, Dn, (HI_U32)TailValidBytes);
	
	    /*3. Decrypt P[n-1] */
	    // E[n-1] = Cn || Tail (Xn, B-M) 
	    pCN  = pCN1 + s32BlkLen;
	    memcpy(En1, pCN, (HI_U32)TailValidBytes);
	    memcpy(En1 + TailValidBytes, Dn + TailValidBytes, (HI_U32)(s32BlkLen - TailValidBytes));
	
	    // X[n-1] = Decrypt (K, E[n-1])
	    pPN1 = pPlainText + (BlkNum - 2) * s32BlkLen;
	    Ret = HI_UNF_ADVCA_DecryptLptBlock(En1,pPN1);   
	    if (HI_SUCCESS != Ret)
	    {
	        HI_ERR_CA("HI_UNF_ADVCA_DecryptLptBlock failed:%x\n",Ret);
	        return Ret;
	    }
	
	    // P[n-1] = X[n-1] XOR C[n-2]
	    for (i = 0; i < s32BlkLen; i++)
	    {
	        pPN1[i] = pPN1[i] ^ CN2[i];
	    }

    }
    else
    {
	    for (BlkIdx = 0; BlkIdx < BlkNum ; BlkIdx++)
	    {
	        /* ECB Decrypt */
	        Ret = HI_UNF_ADVCA_DecryptLptBlock(pCipherBlk,pPlainBlk);
	        if (HI_SUCCESS != Ret)
	        {
	            HI_ERR_CA("HI_UNF_ADVCA_DecryptLptBlock failed:%x\n",Ret);
	            return Ret;
	        }
	        
	        /* XOR */
	        for (i = 0; i < s32BlkLen; i++)
	        {
	        	pPlainBlk[i] = pPlainBlk[i] ^ IV[i];
	        }
	
	        /* Update */
	        memcpy(IV, pCipherBlk, (HI_U32)s32BlkLen);
	        pCipherBlk += s32BlkLen;
	        pPlainBlk  += s32BlkLen;
	    }
    }
    return HI_SUCCESS;
}

/** 
\brief 加密软件保护密钥
*/
HI_S32 HI_UNF_ADVCA_EncryptSWPK(HI_U8 *pPlainSwpk,HI_U8 *pEncryptedSwpk)
{
    HI_S32 ret;
    CA_ENCRYPTSWPK_S stEncryptSWPK;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pPlainSwpk)
    {
        HI_ERR_CA("HI_NULL == pClearSwpk, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    if (HI_NULL == pEncryptedSwpk)
    {
        HI_ERR_CA("HI_NULL == pEncryptSwpk, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memcpy(stEncryptSWPK.ClearSwpk, pPlainSwpk, 16);
    ret = ioctl(g_s32CaFd, CMD_CA_SWPK_CRYPT, &stEncryptSWPK);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SWPK_CRYPT err. \n");
        return ret;
    }

    memcpy(pEncryptedSwpk,stEncryptSWPK.EncryptSwpk,16);

    return HI_SUCCESS;
}

/*Caution: Be careful with the following functions!*/
HI_S32 HI_UNF_ADVCA_SetChipId(HI_U32 Id)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_CHIPID, &Id);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_CHIPID err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetDVBRootKey(HI_U8 *pkey)
{
    HI_S32 ret;
    CA_KEY_S stCaKey;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pkey == NULL)
    {
        HI_ERR_CA("pkey == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memcpy(stCaKey.KeyBuf, pkey, 16);
    ret = ioctl(g_s32CaFd, CMD_CA_SET_DVB_ROOT_KEY, &stCaKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_DVB_ROOT_KEY err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetDVBRootKey(HI_U8 *pkey)
{
    HI_S32 ret;
    CA_KEY_S stCaKey;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pkey == NULL)
    {
        HI_ERR_CA("pkey == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(stCaKey.KeyBuf, 0x0, sizeof(stCaKey.KeyBuf));
    ret = ioctl(g_s32CaFd, CMD_CA_GET_DVB_ROOT_KEY, &stCaKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_DVB_ROOT_KEY err. \n");
        return ret;
    }

    memcpy(pkey, stCaKey.KeyBuf, 16);

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetR2RRootKey(HI_U8 *pkey)
{
    HI_S32 ret;
    CA_KEY_S stCaKey;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pkey == NULL)
    {
        HI_ERR_CA("pkey == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memcpy(stCaKey.KeyBuf, pkey, 16);
    ret = ioctl(g_s32CaFd, CMD_CA_SET_R2R_ROOT_KEY, &stCaKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_R2R_ROOT_KEY err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetR2RRootKey(HI_U8 *pkey)
{
    HI_S32 ret;
    CA_KEY_S stCaKey;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pkey == NULL)
    {
        HI_ERR_CA("pkey == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(stCaKey.KeyBuf, 0x0, sizeof(stCaKey.KeyBuf));
    ret = ioctl(g_s32CaFd, CMD_CA_GET_R2R_ROOT_KEY, &stCaKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_R2R_ROOT_KEY err. \n");
        return ret;
    }

    memcpy(pkey, stCaKey.KeyBuf, 16);

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetJtagKey(HI_U8 *pkey)
{
    HI_S32 ret;
    CA_KEY_S stCaKey;
    HI_U32 u32ChipID = 0;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pkey == NULL)
    {
        HI_ERR_CA("pkey == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_CHIPID, &u32ChipID);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_CHIPID err, ret = 0x%x. \n", ret);
        return ret;
    }

    if(0 == u32ChipID)
    {
        HI_ERR_CA("Error! Please set chipid before setting jtag key! \n");
        return HI_FAILURE;
    }

    memcpy(stCaKey.KeyBuf, pkey, 8);
    ret = ioctl(g_s32CaFd, CMD_CA_SET_JTAG_KEY, &stCaKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_JTAG_KEY err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetJtagKey(HI_U8 *pkey)
{
    HI_S32 ret;
    CA_KEY_S stCaKey;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pkey == NULL)
    {
        HI_ERR_CA("pkey == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_JTAG_KEY, &stCaKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_JTAG_KEY err. \n");
        return ret;
    }

    memcpy(pkey, stCaKey.KeyBuf, 8);

    return HI_SUCCESS;
}


HI_S32 HI_UNF_ADVCA_SetRSAKey(HI_U8 *pkey)
{
    HI_S32 ret = HI_SUCCESS;
    CA_KEY_S stCaKey, stRdKey;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pkey == NULL)
    {
        HI_ERR_CA("pkey == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memcpy(stCaKey.KeyBuf, pkey, 512);
    ret = ioctl(g_s32CaFd, CMD_CA_EXT1_SETRSAKEY, &stCaKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_EXT1_SETRSAKEY err. \n");
        return ret;
    }

    memset(stRdKey.KeyBuf, 0, 512);
    ret = ioctl(g_s32CaFd, CMD_CA_EXT1_GETRSAKEY, &stRdKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_EXT1_GETRSAKEY err. \n");
        return ret;
    }
    
    if (memcmp(stCaKey.KeyBuf, stRdKey.KeyBuf, 512))
    {
        HI_ERR_CA("RSA Key Set err. \n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetRSAKey(HI_U8 *pkey)
{
    HI_S32 ret = HI_SUCCESS;
    CA_KEY_S stRdKey;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pkey == NULL)
    {
        HI_ERR_CA("pkey == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(stRdKey.KeyBuf, 0, 512);
    ret = ioctl(g_s32CaFd, CMD_CA_EXT1_GETRSAKEY, &stRdKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_EXT1_GETRSAKEY err. \n");
        return ret;
    }

    memcpy(pkey, stRdKey.KeyBuf, 512);

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_OtpWriteByte(HI_U32 Addr,HI_U8 Value)
{
    HI_S32 ret;
    OTP_ENTRY_S stOtpEntry;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    stOtpEntry.Addr  = Addr;
    stOtpEntry.Value = Value;
    ret = ioctl(g_s32CaFd, CMD_CA_EXT1_OTPWRITEBYTE, &stOtpEntry);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_EXT1_OPTWRITE err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_OtpRead(HI_U32 Addr, HI_U32 *pValue)
{
    HI_S32 ret;
    OTP_ENTRY_S stOtpEntry;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pValue)
    {
        HI_ERR_CA("invalid param pValue\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    stOtpEntry.Addr = Addr;
    ret = ioctl(g_s32CaFd, CMD_CA_EXT1_OTPREAD, &stOtpEntry);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_EXT1_OTPREAD err. \n");
        return ret;
    }

    *pValue = stOtpEntry.Value;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_OtpDisFunc(HI_U32 Pos)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (Pos >= 8)
    {
        HI_ERR_CA("Pos invalid\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_EXT1_OTPDISFUNC, &Pos);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_EXT1_OTPDISFUNC err. \n");
        return ret;
    }

    return HI_SUCCESS;        
}

HI_S32 HI_UNF_ADVCA_HideLockKeys(HI_VOID)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_LOCKSECRETKEY, HI_NULL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_EXT1_OTPDISFUNC err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_IsMarketIdSet(HI_BOOL *pbIsMarketIdSet)
{
    HI_S32 ret = HI_SUCCESS;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (NULL == pbIsMarketIdSet)
    {
        HI_ERR_CA("NULL pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_CHECK_MARKET_ID_SET, pbIsMarketIdSet);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_CHECK_MARKET_ID_SET err. \n");
        return ret;
    }

    return HI_SUCCESS;
}



HI_S32 HI_UNF_ADVCA_GetVendorID(HI_U32 *pu32VendorID)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pu32VendorID == NULL)
    {
        HI_ERR_CA("pu32VendorID == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_VENDOR_ID, pu32VendorID);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_VENDOR_ID err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetSPKeyLadderStage
*  Description:    get SP ladder stage
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetSPKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E *penStage)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (penStage == NULL)
    {
        HI_ERR_CA("penStage == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SP_GETLADDER, penStage);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SP_GETLADDER err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetSPKeyLadderStage
*  Description:    set SP ladder stage
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetSPKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if ((enStage >= HI_UNF_ADVCA_KEYLADDER_BUTT) || (enStage < HI_UNF_ADVCA_KEYLADDER_LEV2))
    {
        HI_ERR_CA("enStage = %d, invalid.\n", enStage);
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SP_SETLADDER, &enStage);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SP_SETLADDER err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetSPAlg
*  Description:    set SP alg
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetSPAlg(HI_UNF_ADVCA_ALG_TYPE_E enType)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (enType >= HI_UNF_ADVCA_ALG_TYPE_BUTT)
    {
        HI_ERR_CA("enType(0x%x) >=  HI_UNF_ADVCA_ALG_TYPE_BUTT(0x%x), invalid.\n", enType, HI_UNF_ADVCA_ALG_TYPE_BUTT);
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SP_SETALG, &enType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SP_SETALG err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetSPAlg
*  Description:    get SP alg
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetSPAlg(HI_UNF_ADVCA_ALG_TYPE_E *pEnType)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pEnType == NULL)
    {
        HI_ERR_CA("pEnType == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SP_GETALG, pEnType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SP_GETALG err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetSPDscMode
*  Description:    set SP dsc mode
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetSPDscMode(HI_UNF_ADVCA_SP_DSC_MODE_E enType)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (enType >= HI_UNF_ADVCA_SP_DSC_MODE_BUTT)
    {
        HI_ERR_CA("enType(0x%x) >=  HI_UNF_ADVCA_SP_DSC_MODE_BUTT(0x%x), invalid.\n", enType, HI_UNF_ADVCA_SP_DSC_MODE_BUTT);
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SP_SET_DSC_MODE, &enType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SP_SET_DSC_MODE err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetSPDscMode
*  Description:    get SP dsc mode
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetSPDscMode(HI_UNF_ADVCA_SP_DSC_MODE_E *pEnType)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pEnType == NULL)
    {
        HI_ERR_CA("pEnType == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SP_GET_DSC_MODE, pEnType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SP_GET_DSC_MODE err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetSPSessionKey
*  Description:    set SP session key
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetSPSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key)
{
    HI_S32 ret;
    CA_CRYPTPM_S cryptPm;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enTotalStage;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pu8Key == NULL)
    {
        HI_ERR_CA("pu8Key == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SP_GETLADDER, &enTotalStage);
    if (HI_SUCCESS != ret)    
    {
        HI_ERR_CA("ca ioctl CMD_CA_SP_GETLADDER err. \n");
        return ret;
    }

    if (enStage > enTotalStage)
    {
        HI_ERR_CA("enStage(%d) > enTotalStage(%d), invalid.\n", enStage, enTotalStage);
        return HI_ERR_CA_INVALID_PARA;
    }

    cryptPm.ladder = enStage;
    memcpy(cryptPm.pDin, pu8Key, 16);
    ret = ioctl(g_s32CaFd, CMD_CA_SP_CRYPT, &cryptPm);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SP_CRYPT err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetCSA3Alg
*  Description:    get the algorithm of CSA3 key ladder
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetCSA3Alg(HI_UNF_ADVCA_ALG_TYPE_E *pEnType)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pEnType == NULL)
    {
        HI_ERR_CA("pEnType == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_DVB_CSA3_GETALG, pEnType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DVB_CSA3_GETALG err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetCSA3Alg
*  Description:    set the algorithm of CSA3 key ladder
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetCSA3Alg(HI_UNF_ADVCA_ALG_TYPE_E enType)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (enType >= HI_UNF_ADVCA_ALG_TYPE_BUTT)
    {
        HI_ERR_CA("enType >=  HI_UNF_ADVCA_ALG_TYPE_BUTT, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_DVB_CSA3_SETALG, &enType);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DVB_CSA3_SETALG err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetCSA3KeyLadderStage
*  Description:    get CSA3 ladder stage
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetCSA3KeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E *penStage)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (penStage == NULL)
    {
        HI_ERR_CA("penStage == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_CSA3_GETLADDER, penStage);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_CSA3_GETLADDER err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetCSA3KeyLadderStage
*  Description:    set CSA3 ladder stage
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetCSA3KeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if ((enStage >= HI_UNF_ADVCA_KEYLADDER_BUTT) || (enStage < HI_UNF_ADVCA_KEYLADDER_LEV2))
    {
        HI_ERR_CA("enStage = %d, invalid.\n", enStage);
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_CSA3_SETLADDER, &enStage);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_CSA3_SETLADDER err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetCSA3SessionKey
*  Description:    set CSA3 session key
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetCSA3SessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key)
{
    HI_S32 ret;
    CA_CRYPTPM_S cryptPm;
    HI_UNF_ADVCA_KEYLADDER_LEV_E enTotalStage;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (pu8Key == NULL)
    {
        HI_ERR_CA("pu8Key == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_CSA3_GETLADDER, &enTotalStage);
    if (HI_SUCCESS != ret)    
    {
        HI_ERR_CA("ca ioctl CMD_CA_SP_GETLADDER err. \n");
        return ret;
    }

    if (enStage > enTotalStage)
    {
        HI_ERR_CA("enStage(%d) > enTotalStage(%d), invalid.\n", enStage, enTotalStage);
        return HI_ERR_CA_INVALID_PARA;
    }

    cryptPm.ladder = enStage;
    memcpy(cryptPm.pDin, pu8Key, 16);
    ret = ioctl(g_s32CaFd, CMD_CA_CSA3_CRYPT, &cryptPm);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_CSA3_CRYPT err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_DisableDDRWakeup(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_LOWPOWER_DISABLE, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_LOWPOWER_DISABLE err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_SetDDRScramble(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Set = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_DDR_SCRAMBLE_EN, &u32Set);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_DDR_SCRAMBLE_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_GetDDRScrambleStat(HI_U32 *pu32Stat)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pu32Stat)
    {
        HI_ERR_CA("pu32Stat == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }
    
    ret = ioctl(g_s32CaFd, CMD_CA_GET_DDR_SCRAMBLE_EN, pu32Stat);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_DDR_SCRAMBLE_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_LockCSA3HardCW(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_CSA3_HARDONLY_EN, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_CSA3_HARDONLY_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_GetCSA3HardCWStat(HI_BOOL *pbLock)
{
    HI_S32 ret;
    
    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_CSA3_HARDONLY_EN, pbLock);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_CSA3_HARDONLY_EN err. \n");
        return ret;
    }    
    
    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_LockSPHardCW(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_SP_HARDONLY_EN, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_SP_HARDONLY_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_DisableTsklDES(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_TSKL_DES_DISABLE, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_TSKL_DES_DISABLE err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_LockMcAesHardOnly(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_MC_AES_HARD_ONLY_EN, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_MC_AES_HARD_ONLY_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_LockMcTDesHardOnly(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_MC_TDES_HARD_ONLY_EN, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_MC_TDES_HARD_ONLY_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_LockGlobalOTP(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_OTP_GLOBAL_LOCK_EN, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_OTP_GLOBAL_LOCK_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_DisableDCasKl(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_DCAS_KL_DISABLE, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_DCAS_KL_DISABLE err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_EnableRuntimeCheck(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_RUNTIME_CHECK_EN, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_RUNTIME_CHECK_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_EnableDDRWakeupCheck(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_WAKEUP_DDR_CHECK_EN, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_WAKEUP_DDR_CHECK_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_EnableVersionCheck(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_VERSION_CHECK_EN, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_VERSION_CHECK_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_GetVersionCheckStat(HI_U32 *pu32Stat)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pu32Stat)
    {
        HI_ERR_CA("pu32Stat == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }
    
    ret = ioctl(g_s32CaFd, CMD_CA_GET_VERSION_CHECK_EN, pu32Stat);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_VERSION_CHECK_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_EnableBootMSIDCheck(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_BL_MSID_CHECK_EN, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_BL_MSID_CHECK_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_GetBootMSIDCheckStat(HI_U32 *pu32Stat)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == pu32Stat)
    {
        HI_ERR_CA("pu32Stat == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }
    
    ret = ioctl(g_s32CaFd, CMD_CA_GET_BL_MSID_CHECK_EN, pu32Stat);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_BL_MSID_CHECK_EN err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_DisableJtagRead(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Value = 1;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SET_JTAG_READ_DISABLE, &u32Value);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SET_JTAG_READ_DISABLE err. \n");
        return ret;
    }

    return HI_SUCCESS;     

}

HI_S32 HI_UNF_ADVCA_ConfigR2RKeyladderAndCipher(HI_UNF_R2RKeyladder_Cipher_Info_S * pstR2RkeyladderCipherInfo)
{
    HI_S32 ret = 0;
    CA_CheckPointer(pstR2RkeyladderCipherInfo);

    (HI_VOID)sem_wait(&g_PVRSem); 
    
    
    ret = HI_UNF_ADVCA_SetR2RAlg(pstR2RkeyladderCipherInfo->KeyladderAlg);
    if (ret)
    {
        HI_ERR_CA(" call HI_UNF_ADVCA_SetR2RAlg failed\n ");
        goto ConfigErr;
    }
    ret = HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV1, pstR2RkeyladderCipherInfo->SessionKey1);
    if(HI_UNF_ADVCA_KEYLADDER_LEV3 == pstR2RkeyladderCipherInfo->KeyladderLevel)
    {
        ret |= HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV2, pstR2RkeyladderCipherInfo->SessionKey2);
        if (ret)
        {
            HI_ERR_CA(" call HI_UNF_ADVCA_SetR2RSessionKey failed\n ");
            goto ConfigErr;
        }
    }

    ret = HI_UNF_CIPHER_ConfigHandle(pstR2RkeyladderCipherInfo->hCipherHandle, &(pstR2RkeyladderCipherInfo->stCipherCtrl));
    if (ret)
    {
        HI_ERR_CA(" call HI_UNF_CIPHER_ConfigHandle failed, hCipherHandle = 0x%x\n ",pstR2RkeyladderCipherInfo->hCipherHandle);
        goto ConfigErr;
    }
    
    (HI_VOID)sem_post(&g_PVRSem);
    return HI_SUCCESS;  

 ConfigErr:
    
    (HI_VOID)sem_post(&g_PVRSem); 
    return HI_FAILURE;  
}
/*the following APIs is for ADVCA_PVR*/
HI_S32 init_random ()
{
    HI_U32 ticks;
    struct timeval tv;

    (HI_VOID)gettimeofday (&tv, NULL);
    ticks = (HI_U32)tv.tv_sec + (HI_U32)tv.tv_usec;

    srand (ticks);  //set the seed of random data
    return HI_SUCCESS;
}

unsigned char new_rand ()
{
    HI_U32 u32Number = 0;
    HI_U8 n = 0;
    
    (HI_VOID)init_random();
    
    u32Number = rand();
    
    n = u32Number & 0xff;

    return n;
}

HI_S32 GetPVRIndexCAData(const HI_CHAR *pFileName, HI_CA_PVR_CHANNEL_INFO_S* pstChannelInfo)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32GetCADataLen = 0;
    HI_CA_PVR_MAC_CHANNEL_INFO_S stMacChannelInfo;
    HI_U8 MacKey[16];
    HI_U8 Mac[16];
    CA_CheckPointer(g_GetCAData);
    CA_CheckPointer(pstChannelInfo);

    memset(MacKey, 0, sizeof(MacKey));
    memset(Mac, 0, sizeof(Mac));

    memset(&stMacChannelInfo,0x00,sizeof(HI_CA_PVR_MAC_CHANNEL_INFO_S));
    CA_ASSERT(g_GetCAData(pFileName,(HI_U8*)&stMacChannelInfo,sizeof(HI_CA_PVR_MAC_CHANNEL_INFO_S),&u32GetCADataLen),ret);
    if (sizeof(HI_CA_PVR_MAC_CHANNEL_INFO_S) != u32GetCADataLen)
    {
        HI_ERR_CA("error, g_GetCAData get Data length error\n");
        return HI_FAILURE;
    }

    /*Modified by m00190812 for pc-lint*/
    memcpy(MacKey,stMacChannelInfo.stPVRChannelInfo.stR2RkeyladderCipherInfo.SessionKey1,16);

    CA_ASSERT(HI_UNF_ADVCA_CalculteAES_CMAC((HI_U8 *)&stMacChannelInfo.stPVRChannelInfo, sizeof(HI_CA_PVR_CHANNEL_INFO_S), MacKey, Mac),ret);

    if (0 != memcmp(Mac,stMacChannelInfo.u8AES_CMAC,16))
    {
        HI_ERR_CA("error, CAData Mac error\n");
        return HI_FAILURE;
    }
    memcpy(pstChannelInfo,&stMacChannelInfo.stPVRChannelInfo,sizeof(HI_CA_PVR_CHANNEL_INFO_S));
    return HI_SUCCESS;
}

HI_S32 SetPVRIndexCAData(const HI_CHAR *pFileName, HI_CA_PVR_CHANNEL_INFO_S* pstChannelInfo)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CA_PVR_MAC_CHANNEL_INFO_S stMacChannelInfo;
    HI_U8 MacKey[16];
    CA_CheckPointer(g_SetCAData);
    CA_CheckPointer(pstChannelInfo);

    memset(MacKey, 0, sizeof(MacKey));
    memset(&stMacChannelInfo,0x00,sizeof(HI_CA_PVR_MAC_CHANNEL_INFO_S));
    memcpy(&stMacChannelInfo.stPVRChannelInfo,pstChannelInfo,sizeof(HI_CA_PVR_CHANNEL_INFO_S));
    /*Modified by m00190812 for pc-lint*/
    memcpy(MacKey,pstChannelInfo->stR2RkeyladderCipherInfo.SessionKey1,16);

    CA_ASSERT(HI_UNF_ADVCA_CalculteAES_CMAC((HI_U8 *)&stMacChannelInfo.stPVRChannelInfo, sizeof(HI_CA_PVR_CHANNEL_INFO_S), MacKey, stMacChannelInfo.u8AES_CMAC),ret);

    CA_ASSERT(g_SetCAData(pFileName,(HI_U8 *)&stMacChannelInfo,sizeof(HI_CA_PVR_MAC_CHANNEL_INFO_S)),ret);
    return HI_SUCCESS;
}


HI_S32 HI_UNF_ADVCA_PVR_RegisterCADataOps(fpGetCAData funcGetData,fpSetCAData funcSetData)
{
    if((NULL == funcGetData) || (NULL == funcSetData))
    {
        HI_ERR_CA("NULL pointer error\n");
		return  HI_FAILURE;
    }
    g_GetCAData = (fpGetCAData)funcGetData;
    g_SetCAData = (fpSetCAData)funcSetData;
    
    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_PVR_RecOpen(HI_U32 u32RecChnID)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 i = 0;
    HI_U8 SessionKey1[16];
    HI_U8 SessionKey2[16];
    HI_U8 CipherKey[16];
    HI_UNF_ADVCA_KEYLADDER_LEV_E KeyladderStage;
    HI_UNF_CIPHER_CTRL_S *pstCipherCtrl = NULL;
    HI_CA_PVR_CHANNEL_INFO_S * pstPVRChannelInfo = NULL;
    HI_UNF_R2RKeyladder_Cipher_Info_S * pstR2RkeyladderCipherInfo = NULL;
#ifdef SDK_SECURITY_ARCH_VERSION_V3
    HI_UNF_CIPHER_ATTS_S stCipherAttr;
#endif

    memset(SessionKey1, 0, sizeof(SessionKey1));
    memset(SessionKey2, 0, sizeof(SessionKey2));
    memset(CipherKey, 0, sizeof(CipherKey));

    CA_ASSERT(HI_UNF_ADVCA_Init(),ret);   

    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
        if (u32RecChnID == g_stRecCAData.stPVRChannelInfo[i].u32ChnID )
        {
            HI_INFO_CA("this channel already opend\n");
            return HI_SUCCESS;
        }
    }

    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
        if(INVALID_VALUE == g_stRecCAData.stPVRChannelInfo[i].u32ChnID)
        {
            break;            
        }
    }

    if (PVR_CA_MAX_CHANNEL == i)
    {
        HI_ERR_CA("error,not enough record channel to use\n");
        return HI_FAILURE;
    }

    pstPVRChannelInfo = &g_stRecCAData.stPVRChannelInfo[i];
    memset(pstPVRChannelInfo,0,sizeof(HI_CA_PVR_CHANNEL_INFO_S));
    pstPVRChannelInfo->u32ChnID = u32RecChnID;

    pstR2RkeyladderCipherInfo = &(pstPVRChannelInfo->stR2RkeyladderCipherInfo);

    pstPVRChannelInfo->bCADataSavedFlag = HI_FALSE;
    /*config keyladder and init the CA info Data*/

    /*generate the random session key and cipher key*/
    for(i=0;i<16;i++)
    {
        SessionKey1[i] = new_rand();
        SessionKey2[i] = new_rand();
    }
    if(SessionKey1[0] == SessionKey1[8])
    {
        SessionKey1[0] = SessionKey1[8] + 1;
    }
    if(SessionKey2[0] == SessionKey2[8])
    {
        SessionKey2[0] = SessionKey2[8] + 1;
    }
    if(SessionKey1[0] == SessionKey2[0])
    {
        SessionKey1[0] = SessionKey2[0] + 1;
    }

    /*generate the random  cipher key*/
    for(i=0;i<16;i++)
    {
        CipherKey[i] = new_rand();
    }
    if (CipherKey[0] == CipherKey[8])
    {
        CipherKey[0] = CipherKey[8] + 1;
    }
 
    
    CA_ASSERT(HI_UNF_ADVCA_GetR2RKeyLadderStage(&KeyladderStage),ret);

    pstR2RkeyladderCipherInfo->KeyladderAlg = HI_UNF_ADVCA_ALG_TYPE_AES;
    pstR2RkeyladderCipherInfo->KeyladderLevel = KeyladderStage;
    memcpy(pstR2RkeyladderCipherInfo->SessionKey1,SessionKey1,sizeof(SessionKey1));
    memcpy(pstR2RkeyladderCipherInfo->SessionKey2,SessionKey2,sizeof(SessionKey2));
    pstPVRChannelInfo->u32MaxBlockNum = PVR_CA_MAX_BLOCK_NUM;
    pstPVRChannelInfo->u64BlockSize = PVR_BLOCK_SIZE;

    /*open cipher*/
    CA_ASSERT(HI_UNF_CIPHER_Open(),ret);
    pstR2RkeyladderCipherInfo->hCipherHandle = INVALID_VALUE;
#ifndef SDK_SECURITY_ARCH_VERSION_V3
    CA_ASSERT( HI_UNF_CIPHER_CreateHandle(&pstR2RkeyladderCipherInfo->hCipherHandle),ret);
#else
    memset(&stCipherAttr, 0, sizeof(stCipherAttr));
    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
	CA_ASSERT( HI_UNF_CIPHER_CreateHandle(&pstR2RkeyladderCipherInfo->hCipherHandle, &stCipherAttr),ret);
#endif
   
    pstPVRChannelInfo->BlockNum = 0;     
    memcpy(pstPVRChannelInfo->Cipherkey[0],CipherKey,16);
    pstCipherCtrl = &(pstR2RkeyladderCipherInfo->stCipherCtrl);
    pstCipherCtrl->bKeyByCA = HI_TRUE;
    pstCipherCtrl->enAlg = HI_UNF_CIPHER_ALG_AES;
    pstCipherCtrl->enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
    pstCipherCtrl->enWorkMode = HI_UNF_CIPHER_WORK_MODE_ECB;
    pstCipherCtrl->enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
        
    memcpy(pstCipherCtrl->u32Key,CipherKey,16);

    CA_ASSERT(HI_UNF_ADVCA_ConfigR2RKeyladderAndCipher(pstR2RkeyladderCipherInfo),ret);
    return  HI_SUCCESS;    
}

HI_S32 HI_UNF_ADVCA_PVR_RecClose(HI_U32 u32RecChnID)
{
    HI_S32 ret;
    HI_U32 i = 0;
    HI_HANDLE hCipher = INVALID_VALUE;
    HI_CA_PVR_CHANNEL_INFO_S * pstPVRChannelInfo = NULL;

    /*find out the PVR CA infor by PVR channel ID*/
    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
        if (u32RecChnID == g_stRecCAData.stPVRChannelInfo[i].u32ChnID )
        {
            break;
        }
    }

    if (PVR_CA_MAX_CHANNEL == i)
    {
        HI_ERR_CA("PVR channel ID error\n");
        return HI_FAILURE;
    }

    pstPVRChannelInfo = &g_stRecCAData.stPVRChannelInfo[i];

    hCipher = pstPVRChannelInfo->stR2RkeyladderCipherInfo.hCipherHandle;
    memset(pstPVRChannelInfo,0x00,sizeof(HI_CA_PVR_CHANNEL_INFO_S));
    pstPVRChannelInfo->u32ChnID = INVALID_VALUE;

    if (INVALID_VALUE != hCipher)
    {
        CA_ASSERT(HI_UNF_CIPHER_DestroyHandle(hCipher),ret);        
    }

    return  HI_SUCCESS;    
}


HI_S32 HI_UNF_ADVCA_PVR_PlayOpen(HI_U32 u32PlayChnID)
{
    HI_S32 ret;
    HI_U32 i = 0;
#ifdef SDK_SECURITY_ARCH_VERSION_V3
	HI_UNF_CIPHER_ATTS_S stCipherAttr;
#endif

    HI_CA_PVR_CHANNEL_INFO_S * pstPVRChannelInfo = NULL;

    CA_ASSERT(HI_UNF_ADVCA_Init(),ret);
    CA_ASSERT(HI_UNF_CIPHER_Open(),ret);
    
    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
        if (u32PlayChnID == g_stPlayCAData.stPVRChannelInfo[i].u32ChnID )
        {
            HI_INFO_CA("this channel already opened\n");
            return HI_SUCCESS;
        }
    }

    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
        if(INVALID_VALUE == g_stPlayCAData.stPVRChannelInfo[i].u32ChnID)
        {
            break;            
        }
    }

    if (PVR_CA_MAX_CHANNEL == i)
    {
        HI_ERR_CA("error,not enough play channel to use\n");
        return HI_FAILURE;
    }

    pstPVRChannelInfo = &g_stPlayCAData.stPVRChannelInfo[i];
    memset(pstPVRChannelInfo,0,sizeof(HI_CA_PVR_CHANNEL_INFO_S));
    pstPVRChannelInfo->u32ChnID = u32PlayChnID;
//    printf("channel i = %d ,chanenl ID = 0x%x\n",i,u32PlayChnID);

    pstPVRChannelInfo->stR2RkeyladderCipherInfo.hCipherHandle = INVALID_VALUE;
#ifndef SDK_SECURITY_ARCH_VERSION_V3
    CA_ASSERT(HI_UNF_CIPHER_CreateHandle(&pstPVRChannelInfo->stR2RkeyladderCipherInfo.hCipherHandle),ret);
#else
    memset(&stCipherAttr, 0, sizeof(stCipherAttr));
    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
	CA_ASSERT(HI_UNF_CIPHER_CreateHandle(&pstPVRChannelInfo->stR2RkeyladderCipherInfo.hCipherHandle, &stCipherAttr),ret);
#endif
    pstPVRChannelInfo->bAlreadyGetPlayInfo = HI_FALSE;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_PVR_PlayClose(HI_U32 u32PlayChnID)
{ 
    HI_U8 i = 0;
    HI_S32 ret = 0;
    HI_CA_PVR_CHANNEL_INFO_S * pstPVRChannelInfo = NULL;
    HI_HANDLE hCipher = INVALID_VALUE;

    /*find out the PVR CA infor by PVR channel ID*/
    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
        if (u32PlayChnID == g_stPlayCAData.stPVRChannelInfo[i].u32ChnID )
        {
            break;
        }
    }

    if (PVR_CA_MAX_CHANNEL == i)
    {
        HI_ERR_CA("PVR channel ID error\n");
        return HI_FAILURE;
    }

    pstPVRChannelInfo = &g_stPlayCAData.stPVRChannelInfo[i];

    hCipher = pstPVRChannelInfo->stR2RkeyladderCipherInfo.hCipherHandle;
    memset(pstPVRChannelInfo,0x00,sizeof(HI_CA_PVR_CHANNEL_INFO_S));
    pstPVRChannelInfo->u32ChnID = INVALID_VALUE;

    if (INVALID_VALUE != hCipher)
    {
        CA_ASSERT(HI_UNF_CIPHER_DestroyHandle(hCipher),ret);
    }

    return  HI_SUCCESS;
}



HI_S32 HI_UNF_ADVCA_PVR_WriteCallBack(HI_UNF_PVR_CA_CALLBACK_ARGS_S* pstCAPVRArgs)    
{ 
    CA_CheckPointer(pstCAPVRArgs);
    CA_CheckPointer(pstCAPVRArgs->pFileName);
    CA_CheckPointer(g_SetCAData);
    CA_CheckPointer(g_GetCAData);
    
    HI_S32 ret = 0;
    HI_U32 i = 0; 
    HI_U8 CipherKey[16];
    HI_U32 u32RecChnID = pstCAPVRArgs->u32ChnID;
    HI_CHAR * pFileName = pstCAPVRArgs->pFileName;
    HI_U64 u64DataStart = pstCAPVRArgs->u64GlobalOffset;
    HI_U32 u32PhyAddr = pstCAPVRArgs->u32PhyAddr;
    HI_U32 u32DataSize = pstCAPVRArgs->u32DataSize; 
    HI_U64 u64DataEnd = u64DataStart + u32DataSize;
    HI_U64 u64BlockSize = PVR_BLOCK_SIZE;
    HI_U32 u32DataSize1 = 0;
    HI_U32 u32DataSize2 = 0;
    HI_UNF_CIPHER_CTRL_S *pstCipherCtrl = NULL;
    HI_CA_PVR_CHANNEL_INFO_S * pstPVRChannelInfo = NULL;
    HI_UNF_R2RKeyladder_Cipher_Info_S * pstR2RkeyladderCipherInfo = NULL;
 
    /*find out the PVR CA infor by PVR channel ID*/
    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
        if (u32RecChnID == g_stRecCAData.stPVRChannelInfo[i].u32ChnID )
        {
            break;
        }
    }
    if (PVR_CA_MAX_CHANNEL == i)
    {
        HI_ERR_CA("PVR channel ID error\n");
        return HI_FAILURE;
    }

    memset(CipherKey, 0, sizeof(CipherKey));
    pstPVRChannelInfo = &g_stRecCAData.stPVRChannelInfo[i];

    pstR2RkeyladderCipherInfo = &(pstPVRChannelInfo->stR2RkeyladderCipherInfo);
    pstCipherCtrl = &(pstR2RkeyladderCipherInfo->stCipherCtrl);
    
    if (INVALID_VALUE == pstR2RkeyladderCipherInfo->hCipherHandle)
    {
        HI_ERR_CA("hCipherHandle = -1 , call HI_UNF_ADVCA_PVR_Open first \n");
        return HI_FAILURE;
    }
     
    if (HI_FALSE == pstPVRChannelInfo->bCADataSavedFlag)
    {
        pstPVRChannelInfo->bCADataSavedFlag = HI_TRUE;  
        memset(pstPVRChannelInfo->FileName,0,sizeof(pstPVRChannelInfo->FileName));        
        memcpy(pstPVRChannelInfo->FileName,pFileName,strlen(pFileName));
        CA_ASSERT(SetPVRIndexCAData(pFileName,pstPVRChannelInfo),ret);
    }
    else
    {        
         if (0 != memcmp(pstPVRChannelInfo->CipherTrackkey[pstPVRChannelInfo->BlockNum],pstPVRChannelInfo->Cipherkey[pstPVRChannelInfo->BlockNum],16))
         {
            CA_ASSERT(HI_UNF_ADVCA_ConfigR2RKeyladderAndCipher(pstR2RkeyladderCipherInfo),ret);
            memcpy(pstPVRChannelInfo->CipherTrackkey[pstPVRChannelInfo->BlockNum],pstPVRChannelInfo->Cipherkey[pstPVRChannelInfo->BlockNum],16);
         }
    }

    if(u64DataStart/u64BlockSize == u64DataEnd/u64BlockSize)
    {
        CA_ASSERT(HI_UNF_CIPHER_Encrypt(pstR2RkeyladderCipherInfo->hCipherHandle, u32PhyAddr, u32PhyAddr, u32DataSize),ret);
    }
    else if(u64DataStart/u64BlockSize != u64DataEnd/u64BlockSize)
    {
        u32DataSize1 = (HI_U32)(u64BlockSize - u64DataStart%u64BlockSize);
        u32DataSize2 = u32DataSize - u32DataSize1;
        CA_ASSERT(HI_UNF_CIPHER_Encrypt(pstR2RkeyladderCipherInfo->hCipherHandle, u32PhyAddr, u32PhyAddr, u32DataSize1),ret); 

        pstPVRChannelInfo->BlockNum++;
        if(pstPVRChannelInfo->BlockNum == pstPVRChannelInfo->u32MaxBlockNum)
        {
            HI_ERR_CA("error:file size is already too big\n");
            return HI_FAILURE;
        }
        /*generate the random  cipher key*/
        for(i=0;i<16;i++)
        {
            CipherKey[i] = new_rand();
        }
        if (CipherKey[0] == CipherKey[8])
        {
            CipherKey[0] = CipherKey[8] + 1;
        }
       
        memcpy(pstPVRChannelInfo->Cipherkey[pstPVRChannelInfo->BlockNum],CipherKey,16);
        memcpy(pstCipherCtrl->u32Key,CipherKey,16);
                 
        /*every time when cipher key changing, should use mutex and set keyladder and cipher again*/
        CA_ASSERT(HI_UNF_ADVCA_ConfigR2RKeyladderAndCipher(pstR2RkeyladderCipherInfo),ret);
        ret = HI_UNF_CIPHER_Encrypt(pstR2RkeyladderCipherInfo->hCipherHandle, u32PhyAddr + u32DataSize1, u32PhyAddr + u32DataSize1, u32DataSize2);
        if (ret)
        {
            HI_ERR_CA("error,HI_UNF_CIPHER_Encrypt failed ,hCipherHandle = 0x%x\n",pstR2RkeyladderCipherInfo->hCipherHandle);
            return ret;
        }  
       
        CA_ASSERT(SetPVRIndexCAData(pFileName,pstPVRChannelInfo),ret);
    }      
    return  HI_SUCCESS;
}


HI_S32 HI_UNF_ADVCA_PVR_ReadCallBack(HI_UNF_PVR_CA_CALLBACK_ARGS_S* pstCAPVRArgs)
{

    CA_CheckPointer(pstCAPVRArgs);
    CA_CheckPointer(pstCAPVRArgs->pFileName);
    CA_CheckPointer(g_SetCAData);
    CA_CheckPointer(g_GetCAData);
    
    HI_U32 i = 0;
    HI_S32 ret = 0;
    HI_U32 u32PlayChnID = pstCAPVRArgs->u32ChnID;
    HI_CHAR * pFileName = pstCAPVRArgs->pFileName;
    HI_U64 u64DataStart = pstCAPVRArgs->u64GlobalOffset;
    HI_U32 u32PhyAddr = pstCAPVRArgs->u32PhyAddr;
    HI_U32 u32DataSize = pstCAPVRArgs->u32DataSize;    
    HI_U64 u64DataEnd = u64DataStart + u32DataSize;
    HI_U64 u64BlockSize = PVR_BLOCK_SIZE;
    HI_U32 u32DataSize1 = 0;
    HI_U32 u32DataSize2 = 0;
   
    HI_UNF_CIPHER_CTRL_S *pstCipherCtrl = NULL;
    HI_UNF_R2RKeyladder_Cipher_Info_S * pstR2RkeyladderCipherInfo = NULL;
    HI_CA_PVR_CHANNEL_INFO_S * pstPVRChannelInfo  = NULL;
    HI_CA_PVR_CHANNEL_INFO_S   stTmpPVRChannelInfo;

    /*find out the PVR CA channel*/
//    printf("u32PlayChnID = 0x%x\n", u32PlayChnID);
    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
//        printf("read call back, i = %d, u32ChnID = 0x%x\n", i, g_stPlayCAData.stPVRChannelInfo[i].u32ChnID);
        if (u32PlayChnID == g_stPlayCAData.stPVRChannelInfo[i].u32ChnID )
        {
            break;
        }
    }

    if (PVR_CA_MAX_CHANNEL == i)
    {
        HI_ERR_CA("error,not enough play channel to use \n");
        printf("in HI_UNF_ADVCA_PVR_ReadCallBack u32PlayChnID = %d\n", u32PlayChnID);
        return HI_FAILURE;
    }

    pstPVRChannelInfo = &g_stPlayCAData.stPVRChannelInfo[i];

    pstR2RkeyladderCipherInfo = &(pstPVRChannelInfo->stR2RkeyladderCipherInfo);
    pstCipherCtrl = &(pstR2RkeyladderCipherInfo->stCipherCtrl);

    memset(&stTmpPVRChannelInfo, 0, sizeof(HI_CA_PVR_CHANNEL_INFO_S));
    
    if (HI_FALSE == pstPVRChannelInfo->bAlreadyGetPlayInfo )
    {
        CA_ASSERT(GetPVRIndexCAData(pFileName,&stTmpPVRChannelInfo),ret);

        stTmpPVRChannelInfo.stR2RkeyladderCipherInfo.hCipherHandle = pstPVRChannelInfo->stR2RkeyladderCipherInfo.hCipherHandle;
        stTmpPVRChannelInfo.BlockNum = 0;
        stTmpPVRChannelInfo.u32ChnID = u32PlayChnID;
        stTmpPVRChannelInfo.bAlreadyGetPlayInfo = HI_TRUE;

        memcpy(pstPVRChannelInfo, &stTmpPVRChannelInfo, sizeof(HI_CA_PVR_CHANNEL_INFO_S));          
        memcpy(pstCipherCtrl->u32Key, pstPVRChannelInfo->Cipherkey[0], 16);           
    }

    if (0 != memcmp(pstPVRChannelInfo->CipherTrackkey[pstPVRChannelInfo->BlockNum],pstPVRChannelInfo->Cipherkey[pstPVRChannelInfo->BlockNum],16))
    {
        CA_ASSERT(HI_UNF_ADVCA_ConfigR2RKeyladderAndCipher(pstR2RkeyladderCipherInfo),ret);   
        memcpy(pstPVRChannelInfo->CipherTrackkey[pstPVRChannelInfo->BlockNum],pstPVRChannelInfo->Cipherkey[pstPVRChannelInfo->BlockNum],16);
    }

    if(u64DataStart/u64BlockSize == u64DataEnd/u64BlockSize)
    {
        CA_ASSERT(HI_UNF_CIPHER_Decrypt(pstR2RkeyladderCipherInfo->hCipherHandle, u32PhyAddr, u32PhyAddr, u32DataSize),ret);
    }
    else if(u64DataStart/u64BlockSize != u64DataEnd/u64BlockSize)
    {
        /*every time play back beyond block ,should get CADATA from index file header,because maybe in situation of timeshitf(CADATA is changing)*/
        CA_ASSERT(GetPVRIndexCAData(pFileName,&stTmpPVRChannelInfo),ret);

        stTmpPVRChannelInfo.stR2RkeyladderCipherInfo.hCipherHandle = pstPVRChannelInfo->stR2RkeyladderCipherInfo.hCipherHandle;
        stTmpPVRChannelInfo.BlockNum = (HI_U32)(u64DataEnd/u64BlockSize);
        stTmpPVRChannelInfo.u32ChnID = u32PlayChnID;
        stTmpPVRChannelInfo.bAlreadyGetPlayInfo = HI_TRUE;
        memcpy(pstPVRChannelInfo,&stTmpPVRChannelInfo,sizeof(HI_CA_PVR_CHANNEL_INFO_S));  
           
        u32DataSize1 = (HI_U32)(u64BlockSize - u64DataStart%u64BlockSize);
        u32DataSize2 = u32DataSize - u32DataSize1;
        CA_ASSERT(HI_UNF_CIPHER_Decrypt(pstR2RkeyladderCipherInfo->hCipherHandle, u32PhyAddr, u32PhyAddr, u32DataSize1),ret);
        memcpy(pstCipherCtrl->u32Key,pstPVRChannelInfo->Cipherkey[pstPVRChannelInfo->BlockNum],16);
        /*every time when cipher key changing, should use mutex and set keyladder and cipher again*/
        CA_ASSERT(HI_UNF_ADVCA_ConfigR2RKeyladderAndCipher(pstR2RkeyladderCipherInfo),ret);  
        ret = HI_UNF_CIPHER_Decrypt(pstR2RkeyladderCipherInfo->hCipherHandle, u32PhyAddr + u32DataSize1, u32PhyAddr + u32DataSize1, u32DataSize2);
        if (ret)
        {
            HI_ERR_CA("error,HI_UNF_CIPHER_Decrypt failed ,hCipherHandle = 0x%x\n",pstR2RkeyladderCipherInfo->hCipherHandle);
             return ret;
        }        
    }
    
    return  HI_SUCCESS;
}


/***********************************************************************************
*  Function:       HI_UNF_ADVCA_DCASOpen
*  Description:    Open DCAS Mode
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_DCASOpen(HI_UNF_CIPHER_ALG_E enAlg)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if ((enAlg != HI_UNF_CIPHER_ALG_3DES) && (enAlg != HI_UNF_CIPHER_ALG_AES))
    {
        HI_ERR_CA("enAlg must be HI_UNF_CIPHER_ALG_3DES or HI_UNF_CIPHER_ALG_AES\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_DCAS_OPEN, &enAlg);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DCAS_OPEN err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_DCASClose
*  Description:    Close DCAS Mode
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_DCASClose(HI_VOID)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_DCAS_CLOSE, 0);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DCAS_CLOSE err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SetDCASSessionKey
*  Description:    set DCAS Session Key
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:         ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SetDCASSessionKey(HI_U32 enDCASLevel, HI_U8 *pu8Key, HI_U8 *pu8Output)
{
    HI_S32 ret;
    CA_DCAS_PARAM_S DCASParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if ((pu8Key == NULL)||(pu8Output == NULL))
    {
        HI_ERR_CA("pu8Key == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }
    
    memset(&DCASParam, 0, sizeof(CA_DCAS_PARAM_S));
    DCASParam.level = enDCASLevel;
    memcpy(DCASParam.pDin, pu8Key, 16);

    ret = ioctl(g_s32CaFd, CMD_CA_DCAS_PARAM_ID_SET, &DCASParam);
    memcpy(pu8Output, DCASParam.pDout, 16);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_DCAS_CRYPT err. \n");
        return ret;
    }

    return HI_SUCCESS;
}
/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SWPKKeyLadderOpen
*  Description:    Open SWPK keyladder
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SWPKKeyLadderOpen(HI_VOID)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SWPK_KEY_LADDER_OPEN, 0);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SWPK_KEY_LADDER_OPEN err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_SWPKKeyLadderClose
*  Description:   Close SWPK keyladder
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_SWPKKeyLadderClose(HI_VOID)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_SWPK_KEY_LADDER_CLOSE, 0);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SWPK_KEY_LADDER_CLOSE err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_OtpReset
*  Description:   Reset OTP
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_OtpReset(HI_VOID)
{
    HI_S32 ret;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_OTP_RESET, NULL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_OTP_RESET err. \n");
        return ret;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
*  Function:       HI_UNF_ADVCA_GetRevision
*  Description:   Get the software revision
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:          ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32 HI_UNF_ADVCA_GetRevision(HI_U8 u8Revision[25])
{
    HI_S32 ret;
    CA_KEY_S stCaKey;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if (HI_NULL == u8Revision)
    {
        HI_ERR_CA("u8Revision == NULL, invalid.\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    ret = ioctl(g_s32CaFd, CMD_CA_GET_REVISION, &stCaKey);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_GET_REVISION err. \n");
        return ret;
    }

    memcpy(u8Revision, stCaKey.KeyBuf, 25);
    
    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_PVR_GetCAPrivateFileName(HI_CHAR * pIndexFileName,HI_CHAR CAPrivateFileName[128])
{
    HI_CHAR   CASuffix[4] = ".ca";
    HI_CHAR *p;
    
    CA_CheckPointer(pIndexFileName);
    CA_CheckPointer(CAPrivateFileName);

    p = strrchr(pIndexFileName,'.');
    if(NULL != p)
    {
        memset(CAPrivateFileName, 0, 128);
        memcpy(CAPrivateFileName,pIndexFileName,(HI_U32)(p - pIndexFileName));
        memcpy(CAPrivateFileName + (HI_U32)(p - pIndexFileName),CASuffix,3);
        return HI_SUCCESS;
    }    
    return HI_FAILURE;
}


HI_S32 HI_UNF_ADVCA_PVR_GetCAIndexFileName(HI_CHAR * pCAPrivateFileName,HI_CHAR IndexFileName[128])
{
    HI_CHAR   IndexSuffix[5] = ".idx";
    HI_CHAR *p;
    
    CA_CheckPointer(pCAPrivateFileName);
    CA_CheckPointer(IndexFileName);

    p = strrchr(pCAPrivateFileName,'.');
    if(NULL != p)
    {
        memset(IndexFileName, 0, 128);
        memcpy(IndexFileName,pCAPrivateFileName,(HI_U32)(p - pCAPrivateFileName));
        memcpy(IndexFileName + (HI_U32)(p - pCAPrivateFileName),IndexSuffix,4);
        return HI_SUCCESS;
    }    
    return HI_FAILURE;
}

/*changed ,ok*/
HI_S32 HI_UNF_ADVCA_PVR_CreateCAPrivateFile( HI_U32 u32RecChnID,HI_CHAR * pCAPrivateFileName)
{
    HI_S32 ret = 0;
    HI_S32 fd = -1;
    HI_U8 i = 0;
    HI_U32 u32ReadCount = 0;
    HI_U8 SessionKey1[16];
    HI_U8 CurrentSessionKey2[16];
    HI_U8 MAC[16];

    HI_CA_PVR_CHANNEL_INFO_S* pstPVRChannelInfo = NULL;
    HI_UNF_PVR_CA_MacPrivateFileHead_S stMACPrivateFileHead;
    HI_UNF_PVR_CA_PrivateFileHead_S* pstPrivateFileHead = &stMACPrivateFileHead.stCAPrivateFileHead;

    CA_CheckPointer(pCAPrivateFileName);

    memset(SessionKey1, 0, sizeof(SessionKey1));
    memset(CurrentSessionKey2, 0, sizeof(CurrentSessionKey2));
    memset(MAC, 0, sizeof(MAC));
    memset(&stMACPrivateFileHead, 0, sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));

    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
        if (u32RecChnID == g_stRecCAData.stPVRChannelInfo[i].u32ChnID )
        {
            break; 
        }
    }
    if (PVR_CA_MAX_CHANNEL == i)
    {
        HI_ERR_CA("error,u32RecChnID = 0x%x have not opened, please call the HI_UNF_ADVCA_PVR_RecOpen first\n", u32RecChnID);
        return HI_FAILURE;
    }

    pstPVRChannelInfo = &g_stRecCAData.stPVRChannelInfo[i];
     
    CA_ASSERT(HI_UNF_ADVCA_PVR_GetRecStatus(u32RecChnID, SessionKey1, CurrentSessionKey2),ret);  
    /*read private file to get the file head*/
#ifdef ANDROID
    fd = open(pCAPrivateFileName,O_RDWR|O_CREAT, 0666);
#else
    fd = open(pCAPrivateFileName,O_RDWR|O_CREAT);
#endif
    lseek(fd,0,SEEK_SET);
    u32ReadCount = (HI_U32)read(fd,&stMACPrivateFileHead,sizeof(HI_UNF_PVR_CA_PrivateFileHead_S));
    if (u32ReadCount != sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S))
    {
        ret = HI_UNF_ADVCA_PVR_GetRecStatus(u32RecChnID, SessionKey1, CurrentSessionKey2);        
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("call HI_UNF_ADVCA_PVR_GetRecStatus error\n");
            close(fd);
            return HI_FAILURE;
        } 
        memset(&stMACPrivateFileHead, 0, sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));
        memcpy(pstPrivateFileHead->MacKey,SessionKey1,16);

         ret = HI_UNF_ADVCA_CalculteAES_CMAC((HI_U8 *)pstPrivateFileHead, sizeof(HI_UNF_PVR_CA_PrivateFileHead_S), pstPrivateFileHead->MacKey, MAC);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("call HI_UNF_ADVCA_CalculteAES_CMAC error\n");
            close(fd);
            return HI_FAILURE;
        }
        memcpy(stMACPrivateFileHead.Mac,MAC,16);
        lseek(fd,0,SEEK_SET);
        write(fd,&stMACPrivateFileHead,sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));

        close(fd); 
    
    }
    close(fd); 
    CA_CheckPointer(pstPVRChannelInfo);
    memcpy(pstPVRChannelInfo->CAPrivateFileName,pCAPrivateFileName, strlen(pCAPrivateFileName));
    pstPVRChannelInfo->bCAPrivateFileCreated = HI_TRUE;

    return HI_SUCCESS;

}

/*changed ,ok*/
HI_S32 HI_UNF_ADVCA_PVR_CheckCAPrivateFileCreated( HI_U32 u32RecChnID)
{
    HI_S32 fd = -1;
    HI_U8 i = 0;

    HI_CA_PVR_CHANNEL_INFO_S* pstPVRChannelInfo = NULL;

    /*find out the PVR CA infor by PVR channel ID*/
    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
        if (u32RecChnID == g_stRecCAData.stPVRChannelInfo[i].u32ChnID )
        {
            break; 
        }
    }
    if (PVR_CA_MAX_CHANNEL == i)
    {
        HI_ERR_CA("error,u32RecChnID = 0x%x have not opened, please call the HI_UNF_ADVCA_PVR_RecOpen first\n", u32RecChnID);
        return HI_FAILURE;
    }

    pstPVRChannelInfo = &g_stRecCAData.stPVRChannelInfo[i];
    
    if (HI_FALSE == pstPVRChannelInfo->bCAPrivateFileCreated)
    {
       HI_ERR_CA("CA private file has not been created,error!\n");
       return HI_FAILURE;
    }

    /*read private file to get the file head*/
    CA_CheckPointer(pstPVRChannelInfo);
     fd = open(pstPVRChannelInfo->CAPrivateFileName,O_RDWR);
    if (-1 == fd)
    {
        HI_ERR_CA("CA private file open error!\n");
        return HI_FAILURE;   
    }
    close(fd); 
    return HI_SUCCESS; 
    
}

/*changed */
HI_S32 HI_UNF_ADVCA_PVR_CheckCAPrivateFileMAC( HI_CHAR * pCAPrivateFileName)
{
    HI_S32 ret = 0;
    HI_S32 fd = -1;
    HI_U32 u32ReadCount = 0;
    HI_U32 i = 0;
    HI_U8 MAC[16];
    HI_U32 u32FPTotalNum = 0;
    HI_U32 u32URITotalNum = 0;
    HI_CHAR IdxFileName[128];
    HI_UNF_PVR_MAC_FP_INFO_S stTmpMACFP;
    HI_UNF_PVR_CA_MacPrivateFileHead_S stMACPrivateFileHead;
    HI_CA_PVR_CHANNEL_INFO_S   stTmpPVRChannelInfo;

    HI_UNF_PVR_CA_PrivateFileHead_S* pstPrivateFileHead = &stMACPrivateFileHead.stCAPrivateFileHead;
    CA_CheckPointer(pCAPrivateFileName);

    CA_ASSERT(HI_UNF_ADVCA_PVR_GetURIAndFPNum(pCAPrivateFileName,&u32URITotalNum,&u32FPTotalNum),ret);

    memset(MAC, 0, sizeof(MAC));
    memset(IdxFileName, 0, sizeof(IdxFileName));    
    memset(&stTmpMACFP, 0, sizeof(HI_UNF_PVR_MAC_FP_INFO_S));
    memset(&stMACPrivateFileHead, 0, sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));

    /*read idx file to get the CADATA head*/  
    if (g_GetCAData == NULL)
    {
        HI_ERR_CA("error:g_GetCAData is NULL, call HI_UNF_ADVCA_PVR_RegisterCADataOps first\n");
        return HI_FAILURE;
    }
    memset(&stTmpPVRChannelInfo, 0, sizeof(HI_CA_PVR_CHANNEL_INFO_S));

    CA_ASSERT(HI_UNF_ADVCA_PVR_GetCAIndexFileName(pCAPrivateFileName,IdxFileName),ret);
    
    CA_ASSERT(GetPVRIndexCAData(IdxFileName,&stTmpPVRChannelInfo),ret);
    

    /*read private file to get the file head*/
    fd = open(pCAPrivateFileName,O_RDWR);
    if (fd < 0)
    {
        HI_ERR_CA("%s is not exist\n",pCAPrivateFileName);
        return HI_FAILURE;
    }
    lseek(fd,0,SEEK_SET);
    u32ReadCount = (HI_U32)read(fd,&stMACPrivateFileHead,sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));
    if (u32ReadCount != sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S))
    {
        HI_ERR_CA("get CAPrivatehead error\n");
        goto CheckMacError;
    }

    if (0 != memcmp(pstPrivateFileHead->MacKey,stTmpPVRChannelInfo.stR2RkeyladderCipherInfo.SessionKey1,16))
    {
        HI_ERR_CA("error :CA Private file and index file not match\n");
        goto CheckMacError;
    }

    ret = HI_UNF_ADVCA_CalculteAES_CMAC((HI_U8 *)pstPrivateFileHead, sizeof(HI_UNF_PVR_CA_PrivateFileHead_S), pstPrivateFileHead->MacKey, MAC);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("call HI_UNF_ADVCA_CalculteAES_CMAC error\n");
        goto CheckMacError;
    }
    if (memcmp(MAC,stMACPrivateFileHead.Mac,16))
    {
        HI_ERR_CA("call MACPrivateFileHead check mac error\n");
        goto CheckMacError;
    }

    for ( i = 0 ; i < u32FPTotalNum ; i++ )
    {
        memset(MAC, 0, 16);
        u32ReadCount = (HI_U32)read(fd,&stTmpMACFP,sizeof(HI_UNF_PVR_MAC_FP_INFO_S));
        if (u32ReadCount != sizeof(HI_UNF_PVR_MAC_FP_INFO_S))
        {
            HI_ERR_CA("get MACFP error\n");
            goto CheckMacError;
        }
        ret = HI_UNF_ADVCA_CalculteAES_CMAC((HI_U8 *)&stTmpMACFP.stPVRFPInfo, sizeof(HI_UNF_PVR_FP_INFO_S), stTmpMACFP.stPVRFPInfo.MacKey, MAC);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("call HI_UNF_ADVCA_CalculteAES_CMAC error\n");
            goto CheckMacError;
        }
        if (memcmp(MAC,stTmpMACFP.Mac,16))
        {
            HI_ERR_CA("call FP %d mac check error error\n",i);
            goto CheckMacError;
        }
    }
    HI_INFO_CA("CheckCAPrivateFileMAC OK\n");
    close(fd); 
    return HI_SUCCESS;

CheckMacError:
    close(fd);
    return HI_FAILURE;
}

/*changed */
HI_S32 HI_UNF_ADVCA_PVR_SaveURI( HI_U32 u32RecChnID,HI_CHAR * pCAPrivateFileName ,HI_UNF_PVR_URI_S* pstPVRURI)
{
    HI_S32 ret = 0;
    HI_S32 fd = -1;
    HI_U32 u32WriteCount = 0;
    HI_U8 SessionKey1[16];
    HI_U8 CurrentSessionKey2[16];
    HI_U8 MAC[16];
    HI_UNF_PVR_CA_MacPrivateFileHead_S stMACPrivateFileHead;
    HI_UNF_PVR_CA_PrivateFileHead_S* pstPrivateFileHead = &stMACPrivateFileHead.stCAPrivateFileHead;
    CA_CheckPointer(pCAPrivateFileName);
    CA_CheckPointer(pstPVRURI);

    memset(SessionKey1, 0, sizeof(SessionKey1));
    memset(CurrentSessionKey2, 0, sizeof(CurrentSessionKey2));
    memset(MAC, 0, sizeof(MAC));
    memset(&stMACPrivateFileHead, 0, sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));

    CA_ASSERT(HI_UNF_ADVCA_PVR_GetRecStatus(u32RecChnID, SessionKey1, CurrentSessionKey2),ret);  
    //CA_ASSERT(CX_PVR_CreateCAPrivateFile(u32RecChnID,pCAPrivateFileName),ret);
    CA_ASSERT(HI_UNF_ADVCA_PVR_CheckCAPrivateFileCreated( u32RecChnID),ret);
    /*read private file to get the file head*/
    fd = open(pCAPrivateFileName,O_RDWR);
    lseek(fd,0,SEEK_SET);
    (HI_VOID)read(fd,&stMACPrivateFileHead,sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));
   
    /*save URI and caculate the MAC*/
    if (pstPrivateFileHead->URINum < MAX_URI_NUM)
    {
        memcpy((HI_U8*)&pstPrivateFileHead->URI[pstPrivateFileHead->URINum],pstPVRURI,sizeof(HI_UNF_PVR_URI_S));
        pstPrivateFileHead->URINum++;
    }
    ret = HI_UNF_ADVCA_CalculteAES_CMAC((HI_U8 *)pstPrivateFileHead, sizeof(HI_UNF_PVR_CA_PrivateFileHead_S), SessionKey1, MAC);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("call HI_UNF_ADVCA_CalculteAES_CMAC error\n");
        close(fd);
        return HI_FAILURE;
    } 
    memcpy(stMACPrivateFileHead.Mac,MAC,16);
    lseek(fd,0,SEEK_SET);
    u32WriteCount = (HI_U32)write(fd,&stMACPrivateFileHead,sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));
    if (sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S) != u32WriteCount)
    {
        HI_ERR_CA("write CA private file error\n");
        close(fd);
        return HI_FAILURE;
    }
     
    close(fd); 
    return HI_SUCCESS;
}



/*changed*/
HI_S32 HI_UNF_ADVCA_PVR_SaveFP( HI_U32 u32RecChnID,HI_CHAR * pCAPrivateFileName,HI_UNF_PVR_FP_INFO_S* pstFPInfo)
{
    HI_S32 ret = 0;
    HI_S32 fd = -1;
    HI_U32 u32Seek = 0;
    HI_U32 u32WriteCount = 0;
    HI_U8 SessionKey1[16];
    HI_U8 CurrentSessionKey2[16];
    HI_U8 HeadMAC[16];
    HI_U8 FPMAC[16];
    HI_UNF_PVR_MAC_FP_INFO_S stTmpMACFP;
    HI_UNF_PVR_CA_MacPrivateFileHead_S stMACPrivateFileHead;
    HI_UNF_PVR_CA_PrivateFileHead_S* pstPrivateFileHead = &stMACPrivateFileHead.stCAPrivateFileHead;
    CA_CheckPointer(pCAPrivateFileName);
    CA_CheckPointer(pstFPInfo);

    memset(SessionKey1, 0, sizeof(SessionKey1));
    memset(CurrentSessionKey2, 0, sizeof(CurrentSessionKey2));
    memset(HeadMAC, 0, sizeof(HeadMAC));
    memset(FPMAC, 0, sizeof(FPMAC));
    memset(&stTmpMACFP, 0, sizeof(HI_UNF_PVR_MAC_FP_INFO_S));
    memset(&stMACPrivateFileHead, 0, sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));

    CA_ASSERT(HI_UNF_ADVCA_PVR_GetRecStatus(u32RecChnID, SessionKey1, CurrentSessionKey2),ret);  
   // CA_ASSERT(CX_PVR_CreateCAPrivateFile(u32RecChnID,pCAPrivateFileName),ret);  
   CA_ASSERT(HI_UNF_ADVCA_PVR_CheckCAPrivateFileCreated( u32RecChnID),ret);
   
   
    fd = open(pCAPrivateFileName,O_RDWR);
    u32Seek = 0;
    lseek(fd,(long)u32Seek,SEEK_SET);
    (HI_VOID)read(fd,&stMACPrivateFileHead,sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));

    /*save FP and caculate the MAC*/
    memcpy(&stTmpMACFP.stPVRFPInfo,pstFPInfo,sizeof(HI_UNF_PVR_FP_INFO_S));

    /*Modified by m00190812 for pc-lint*/
    memcpy(stTmpMACFP.stPVRFPInfo.MacKey,CurrentSessionKey2,16);
    pstPrivateFileHead->FPNum++;
    ret = HI_UNF_ADVCA_CalculteAES_CMAC((HI_U8 *)&stTmpMACFP.stPVRFPInfo, sizeof(HI_UNF_PVR_FP_INFO_S), CurrentSessionKey2, FPMAC);
    ret |= HI_UNF_ADVCA_CalculteAES_CMAC((HI_U8 *)pstPrivateFileHead, sizeof(HI_UNF_PVR_CA_PrivateFileHead_S), SessionKey1, HeadMAC);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("call HI_UNF_ADVCA_CalculteAES_CMAC error\n");
        pstPrivateFileHead->FPNum--;
        close(fd);
        return HI_FAILURE;
    } 
    memcpy(stTmpMACFP.Mac,FPMAC,16);
    memcpy(stMACPrivateFileHead.Mac,HeadMAC,16);

    u32Seek = 0;
    u32Seek = sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S) + (pstPrivateFileHead->FPNum - 1) * sizeof(HI_UNF_PVR_MAC_FP_INFO_S);

    lseek(fd,(long)u32Seek,SEEK_SET);
    u32WriteCount = (HI_U32)write(fd,&stTmpMACFP,sizeof(HI_UNF_PVR_MAC_FP_INFO_S));
    if (sizeof(HI_UNF_PVR_MAC_FP_INFO_S) != u32WriteCount)
    {
        HI_ERR_CA("write CA private file error\n");
        close(fd);
        return HI_FAILURE;
    }

    u32Seek = 0;
    lseek(fd,(long)u32Seek,SEEK_SET);
    u32WriteCount = (HI_U32)write(fd,&stMACPrivateFileHead,sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));
    if (sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S) != u32WriteCount)
    {
        HI_ERR_CA("write CA private file error\n");
        close(fd);
        return HI_FAILURE;
    }
    close(fd); 
    return HI_SUCCESS;

}

/*changed*/
HI_S32 HI_UNF_ADVCA_PVR_GetURIAndFPNum( HI_CHAR * pCAPrivateFileName,HI_U32* u32URINum,HI_U32* u32FPNum)
{
    HI_S32 fd = -1;
    HI_U32 u32ReadCount = 0;
    HI_UNF_PVR_CA_MacPrivateFileHead_S stMACPrivateFileHead;
    CA_CheckPointer(pCAPrivateFileName);
    CA_CheckPointer(u32FPNum);
    CA_CheckPointer(u32URINum);

    memset(&stMACPrivateFileHead, 0, sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));

    /*read private file to get the file head*/
    fd = open(pCAPrivateFileName,O_RDWR);
    if (fd < 0)
    {
        HI_ERR_CA("%s is not exist\n",pCAPrivateFileName);
        return HI_FAILURE;
    }
    lseek(fd,0,SEEK_SET);
    u32ReadCount = (HI_U32)read(fd,&stMACPrivateFileHead,sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));
    if (u32ReadCount != sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S))
    {
        HI_ERR_CA("get CAPrivatehead error\n");
        close(fd);
        return HI_FAILURE;
    }
    *u32FPNum = stMACPrivateFileHead.stCAPrivateFileHead.FPNum;
    *u32URINum = stMACPrivateFileHead.stCAPrivateFileHead.URINum;

    close(fd); 
    return HI_SUCCESS;
}

/*changed*/
HI_S32 HI_UNF_ADVCA_PVR_GetFP( HI_CHAR * pCAPrivateFileName,HI_U32 u32FPNum,HI_UNF_PVR_FP_INFO_S* pstFPInfo)
{
    HI_S32 ret = 0;
    HI_S32 fd = -1;
    HI_U32 u32ReadCount = 0;

    HI_U32 u32Seek = 0;

    HI_U32 u32FPTotalNum = 0;
    HI_U32 u32URITotalNum = 0;
    HI_UNF_PVR_MAC_FP_INFO_S stTmpMacFPInfo;
        
    HI_UNF_PVR_CA_MacPrivateFileHead_S stMACPrivateFileHead;
    CA_CheckPointer(pCAPrivateFileName);
    CA_CheckPointer(pstFPInfo);

    memset(&stTmpMacFPInfo, 0, sizeof(HI_UNF_PVR_MAC_FP_INFO_S));
    memset(&stMACPrivateFileHead, 0, sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));

    CA_ASSERT(HI_UNF_ADVCA_PVR_GetURIAndFPNum(pCAPrivateFileName,&u32URITotalNum,&u32FPTotalNum),ret);

    if (u32FPNum == 0)
    {
        HI_ERR_CA("u32FPNum = %d error,must > 0\n",u32FPNum);
        return HI_FAILURE;
    }
    if (u32FPNum >u32FPTotalNum)
    {
        HI_ERR_CA("u32FPNum = %d  big than u32FPTotalNum = %d,error\n",u32FPNum,u32FPTotalNum);
        return HI_FAILURE;
    }

    /*read private file to get the file head*/
    fd = open(pCAPrivateFileName,O_RDWR);
    if (fd < 0)
    {
        HI_ERR_CA("%s is not exist\n",pCAPrivateFileName);
        return HI_FAILURE;
    }
    
    
    u32Seek = sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S) + (u32FPNum - 1) * sizeof(HI_UNF_PVR_MAC_FP_INFO_S);
    
    lseek(fd,(long)u32Seek,SEEK_SET);
    u32ReadCount = (HI_U32)read(fd,&stTmpMacFPInfo,sizeof(HI_UNF_PVR_MAC_FP_INFO_S));
    if (u32ReadCount != sizeof(HI_UNF_PVR_MAC_FP_INFO_S))
    {
        HI_ERR_CA("get FP error\n");
        close(fd);
        return HI_FAILURE;
    }
    memcpy(pstFPInfo,&stTmpMacFPInfo.stPVRFPInfo,sizeof(HI_UNF_PVR_FP_INFO_S));

    close(fd); 
    return HI_SUCCESS;
}

/*changed*/
HI_S32 HI_UNF_ADVCA_PVR_GetURI( HI_CHAR * pCAPrivateFileName ,HI_U32 u32URINum, HI_UNF_PVR_URI_S* pstURI)
{
    HI_S32 ret = 0;
    HI_S32 fd = -1;
    HI_U32 u32ReadCount = 0;
    HI_U32 u32FPTotalNum = 0;
    HI_U32 u32URITotalNum = 0;
    HI_UNF_PVR_CA_MacPrivateFileHead_S stMACPrivateFileHead;
    HI_UNF_PVR_CA_PrivateFileHead_S* pstPrivateFileHead = &stMACPrivateFileHead.stCAPrivateFileHead;
    CA_CheckPointer(pCAPrivateFileName);
    CA_CheckPointer(pstURI);

    memset(&stMACPrivateFileHead, 0, sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));

    CA_ASSERT(HI_UNF_ADVCA_PVR_GetURIAndFPNum(pCAPrivateFileName,&u32URITotalNum,&u32FPTotalNum),ret);

    if (u32URINum == 0)
    {
        HI_ERR_CA("u32URINum = %d error,must > 0\n",u32URINum);
        return HI_FAILURE;
    }
    if (u32URINum > u32URITotalNum)
    {
        HI_ERR_CA("u32URINum = %d  big than u32URITotalNum = %d,error\n",u32URINum,u32URITotalNum);
        return HI_FAILURE;
    }
    

    /*read private file to get the file head*/
    fd = open(pCAPrivateFileName,O_RDWR);
    if (fd < 0)
    {
        HI_ERR_CA("%s is not exist\n",pCAPrivateFileName);
        return HI_FAILURE;
    }
    lseek(fd,0,SEEK_SET);
    u32ReadCount = (HI_U32)read(fd,&stMACPrivateFileHead,sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S));
    if (u32ReadCount != sizeof(HI_UNF_PVR_CA_MacPrivateFileHead_S))
    {
        HI_ERR_CA("get CAPrivatehead error\n");
        close(fd);
        return HI_FAILURE;
    }
    memcpy((HI_U8*)pstURI,(HI_U8*)&pstPrivateFileHead->URI[u32URINum - 1],sizeof(HI_UNF_PVR_URI_S));
    close(fd); 
    return HI_SUCCESS;
}


/*changed*/
HI_S32 HI_UNF_ADVCA_CalculteAES_CMAC(HI_U8 *buffer, HI_U32 Length, HI_U8 Key[16], HI_U8 MAC[16])
{
    HI_S32 ret = 0;
    HI_HANDLE hCipher = 0xffffffff;
    HI_UNF_CIPHER_CTRL_S CipherCtrl ; 
#ifdef SDK_SECURITY_ARCH_VERSION_V3
    HI_UNF_CIPHER_ATTS_S stCipherAttr;
#endif
    
    CA_CheckPointer(buffer);
    CA_CheckPointer(Key);
    CA_CheckPointer(MAC);
    
    /*open and config cipher*/
    CA_ASSERT(HI_UNF_CIPHER_Open(),ret);
#ifndef SDK_SECURITY_ARCH_VERSION_V3
    CA_ASSERT(HI_UNF_CIPHER_CreateHandle(&hCipher),ret);
#else
    memset(&stCipherAttr, 0, sizeof(stCipherAttr));
    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    CA_ASSERT(HI_UNF_CIPHER_CreateHandle(&hCipher, &stCipherAttr),ret);
#endif
    memset(&CipherCtrl,0x00,sizeof(HI_UNF_CIPHER_CTRL_S));

    CipherCtrl.bKeyByCA = HI_TRUE;
    CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
    CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
    CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
    CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
    CipherCtrl.stChangeFlags.bit1IV = 1;

    memcpy(CipherCtrl.u32Key,Key,16);
    memset(CipherCtrl.u32IV, 0x0, 16);

    (HI_VOID)sem_wait(&g_PVRSem); /*qstian add*/

#ifndef SDK_SECURITY_ARCH_VERSION_V2
    ret = HI_UNF_ADVCA_SWPKKeyLadderOpen();  /*qstian add 20130531*/
    if (ret != HI_SUCCESS)
    {
        HI_ERR_CA("Fail to open swpk key ladder \n");
        goto ERROR_EXIT;
    }
#endif
    
    ret = HI_UNF_CIPHER_ConfigHandle(hCipher,&CipherCtrl); 
    if (ret != HI_SUCCESS)
    {
       HI_ERR_CA("Fail to config cipher \n");
       goto ERROR_EXIT;
    }

#ifndef SDK_SECURITY_ARCH_VERSION_V2
    //CA_ASSERT(HI_UNF_ADVCA_SWPKKeyLadderOpen(),ret);    
    (HI_VOID)HI_UNF_CIPHER_CalcMAC(hCipher, buffer, Length, MAC, HI_TRUE); 
    
    ret = HI_UNF_ADVCA_SWPKKeyLadderClose();
    if (ret != HI_SUCCESS)
    {
       HI_ERR_CA("Fail to close key ladder \n");
       goto ERROR_EXIT;
    }
#endif

     ret = HI_SUCCESS;

ERROR_EXIT:
    (HI_VOID)sem_post(&g_PVRSem); /*qstian add*/
    
    if (HI_SUCCESS != HI_UNF_CIPHER_DestroyHandle(hCipher))
    {
       HI_ERR_CA("Fail to destory cipher handle\n");
       return HI_FAILURE;
    }
   
    return ret;
}

HI_S32 HI_UNF_ADVCA_PVR_GetRecStatus(HI_U32 u32RecChnID, HI_U8 SessionKey1[16], HI_U8 CurrentSessionKey2[16])
{
    HI_CA_PVR_CHANNEL_INFO_S* pstPVRChannelInfo = NULL;
    HI_U8 i = 0;

    CA_CheckPointer(SessionKey1);
    CA_CheckPointer(CurrentSessionKey2);

    for ( i = 0 ; i < PVR_CA_MAX_CHANNEL ; i++ )
    {
        if (u32RecChnID == g_stRecCAData.stPVRChannelInfo[i].u32ChnID )
        {
            break; 
        }
    }
    if (PVR_CA_MAX_CHANNEL == i)
    {
        HI_ERR_CA("error,u32RecChnID = 0x%x have not opened, please call the HI_UNF_ADVCA_PVR_RecOpen first\n", u32RecChnID);
        return HI_FAILURE;
    }

    pstPVRChannelInfo = &g_stRecCAData.stPVRChannelInfo[i];      
    memcpy(SessionKey1,pstPVRChannelInfo->stR2RkeyladderCipherInfo.SessionKey1,16);
    memcpy(CurrentSessionKey2,pstPVRChannelInfo->Cipherkey[pstPVRChannelInfo->BlockNum],16);
    
    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetKlDPAClkSelEn(HI_BOOL bValue)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_BOOL bTmp = bValue;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_SET_KL_DPA_CLK_SEL_EN;
    memcpy(stCmdParam.pu8ParamBuf, &bTmp, sizeof(HI_BOOL));
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetKlDPAClkSelEn(HI_BOOL *pbValue)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( NULL == pbValue)
    {
        HI_ERR_CA("Invalid param, NULL pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_KL_DPA_CLK_SEL_EN;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(pbValue, stCmdParam.pu8ParamBuf, sizeof(HI_BOOL));

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetKlDPAFilterClkSelEn(HI_BOOL bValue)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_BOOL bTmp = bValue;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_SET_KL_DPA_FILTER_CLK_EN;
    memcpy(stCmdParam.pu8ParamBuf, &bTmp, sizeof(HI_BOOL));
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetKlDPAFilterClkSelEn(HI_BOOL *pbValue)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( NULL == pbValue)
    {
        HI_ERR_CA("Invalid param, NULL pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_KL_DPA_FILTER_CLK_EN;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }
    
    memcpy(pbValue, stCmdParam.pu8ParamBuf, sizeof(HI_BOOL));
    
    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetMcDPAClkSelEn(HI_BOOL bValue)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_BOOL bTmp = bValue;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_SET_MC_DPA_CLK_SEL_EN;
    memcpy(stCmdParam.pu8ParamBuf, &bTmp, sizeof(HI_BOOL));
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetMcDPAClkSelEn(HI_BOOL *pbValue)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }
    
    if( NULL == pbValue)
    {
        HI_ERR_CA("Invalid param, NULL pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_MC_DPA_CLK_SEL_EN;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(pbValue, stCmdParam.pu8ParamBuf, sizeof(HI_BOOL));

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetPvrDPAFilterClkEn(HI_BOOL bValue)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_BOOL bTmp = bValue;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_SET_PVR_DPA_FILTER_CLK_EN;
    memcpy(stCmdParam.pu8ParamBuf, &bTmp, sizeof(HI_BOOL));
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetPvrDPAFilterClkEn(HI_BOOL *pbValue)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( NULL == pbValue)
    {
        HI_ERR_CA("Invalid param, NULL pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_PVR_DPA_FILTER_CLK_EN;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(pbValue, stCmdParam.pu8ParamBuf, sizeof(HI_BOOL));

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetMiscRootKey(HI_U8 *pu8Key, HI_U32 u32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( (NULL == pu8Key) || (16 != u32Len) )
    {
        HI_ERR_CA("Invalid param!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_SET_MISC_ROOT_KEY;
    memcpy(stCmdParam.pu8ParamBuf, pu8Key, u32Len);
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetMiscRootKey(HI_U8 *pu8Key, HI_U32 u32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( (NULL == pu8Key) || (16 != u32Len) )
    {
        HI_ERR_CA("Invalid param!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_MISC_ROOT_KEY;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(pu8Key, stCmdParam.pu8ParamBuf, u32Len);

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetMiscRootKeyLockFlag(HI_BOOL *pbLockFlag)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if(NULL == pbLockFlag)
    {
        HI_ERR_CA("Invalid param, NULL pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_MISC_ROOT_KEY_LOCK;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(pbLockFlag, stCmdParam.pu8ParamBuf, sizeof(HI_BOOL));

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetESCK(HI_U8 *pu8Key, HI_U32 u32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( (NULL == pu8Key) || (16 != u32Len) )
    {
        HI_ERR_CA("Invalid param!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_SET_ESCK;
    memcpy(stCmdParam.pu8ParamBuf, pu8Key, u32Len);
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetESCK(HI_U8 *pu8Key, HI_U32 u32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( (NULL == pu8Key) || (16 != u32Len) )
    {
        HI_ERR_CA("Invalid param!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_ESCK;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(pu8Key, stCmdParam.pu8ParamBuf, u32Len);

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetESCKLockFlag(HI_BOOL *pbLockFlag)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if(NULL == pbLockFlag)
    {
        HI_ERR_CA("Invalid param, NULL pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_ESCK_LOCK;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(pbLockFlag, stCmdParam.pu8ParamBuf, sizeof(HI_BOOL));

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetMiscKlLevel(HI_UNF_ADVCA_KEYLADDER_LEV_E enLevel)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_BOOL bTmp = HI_FALSE;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( (HI_UNF_ADVCA_KEYLADDER_LEV2 != enLevel) && (HI_UNF_ADVCA_KEYLADDER_LEV3 != enLevel))
    {
        HI_ERR_CA("Invalid keyladder level select! Only supported 2 or 3 level\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    if(HI_UNF_ADVCA_KEYLADDER_LEV2 == enLevel)
    {
        bTmp = HI_FALSE;
    }
    else
    {
        bTmp = HI_TRUE;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_SET_MISC_LV_SEL;
    memcpy(stCmdParam.pu8ParamBuf, &bTmp, sizeof(HI_BOOL));
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}


HI_S32 HI_UNF_ADVCA_GetMiscKlLevel(HI_UNF_ADVCA_KEYLADDER_LEV_E *penLevel)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( NULL == penLevel)
    {
        HI_ERR_CA("Invalid param, NULL pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_MISC_LV_SEL;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(penLevel, stCmdParam.pu8ParamBuf, sizeof(HI_BOOL));

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetMiscAlg(HI_UNF_ADVCA_ALG_TYPE_E enType)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_MISC_SETALG;
    memcpy(stCmdParam.pu8ParamBuf, &enType, sizeof(HI_UNF_ADVCA_ALG_TYPE_E));
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetMiscAlg(HI_UNF_ADVCA_ALG_TYPE_E *penType)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_ADVCA_ALG_TYPE_E enType = HI_UNF_ADVCA_ALG_TYPE_BUTT;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if(NULL == penType)
    {
        HI_ERR_CA("Invalid param input ,NULL pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_MISC_GETALG;
    memcpy(stCmdParam.pu8ParamBuf, &enType, sizeof(HI_UNF_ADVCA_ALG_TYPE_E));
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    *penType = enType;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetOEMRootKey(HI_U8 *pu8OEMRootKey, HI_U32 u32KeyLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( (NULL == pu8OEMRootKey) || (16 != u32KeyLen))
    {
        HI_ERR_CA("Error! Invalid parameter input!\n");
        return HI_FAILURE;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_SET_OEM_ROOT_KEY;
    memcpy(stCmdParam.pu8ParamBuf, pu8OEMRootKey, u32KeyLen);
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetOEMRootKey(HI_U8 *pu8OEMRootKey, HI_U32 u32KeyLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( (NULL == pu8OEMRootKey) || (16 != u32KeyLen))
    {
        HI_ERR_CA("Error! Invalid parameter input!\n");
        return HI_FAILURE;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_OEM_ROOT_KEY;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(pu8OEMRootKey, stCmdParam.pu8ParamBuf, u32KeyLen);

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetOEMRootKeyLockFlag(HI_BOOL *pbLockFlag)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( NULL == pbLockFlag )
    {
        HI_ERR_CA("Error! Invalid parameter input!\n");
        return HI_FAILURE;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_OEM_ROOT_KEY_LOCK;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(pbLockFlag, stCmdParam.pu8ParamBuf, sizeof(HI_BOOL));

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetTZEnable(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_SET_SOC_OTP_TZ_EN;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetTZEnStatus(HI_BOOL *pbEn)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( NULL == pbEn )
    {
        HI_ERR_CA("Invalid param ,NULL pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_SOC_OTP_TZ_EN;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(pbEn, stCmdParam.pu8ParamBuf, sizeof(HI_BOOL));

    return HI_SUCCESS;
}

/* The input address should be 16byte aligned */
HI_S32 HI_UNF_ADVCA_SetTZOtp(HI_U32 u32Addr, HI_U8 *pu8InData, HI_U32 u32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;
    CA_OTP_TZ_DATA_S stOtpTzInput;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( NULL == pu8InData )
    {
        HI_ERR_CA("Invalid param, null pointer!");
        return HI_FAILURE;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    memset(&stOtpTzInput, 0, sizeof(stOtpTzInput));
    stOtpTzInput.u32Addr = u32Addr;
    stOtpTzInput.u32Len = u32Len;
    memcpy(stOtpTzInput.u8Buf, pu8InData, u32Len);

    memcpy(stCmdParam.pu8ParamBuf, &stOtpTzInput, sizeof(CA_OTP_TZ_DATA_S));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_SET_OTP_TZ;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetTZOtp(HI_U32 u32Addr, HI_U32 u32Len, HI_U8 *pu8OutData)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CA_CMD_SUPPER_ID_S stCmdParam;
    CA_OTP_TZ_DATA_S stOtpTzTrans;

    if (g_s32CaFd <= 0)
    {
        HI_ERR_CA("ca not init\n");
        return HI_ERR_CA_NOT_INIT;
    }

    if( NULL == pu8OutData )
    {
        HI_ERR_CA("Invalid param, null pointer!");
        return HI_FAILURE;
    }

    memset(&stCmdParam, 0, sizeof(stCmdParam));
    memset(&stOtpTzTrans, 0, sizeof(stOtpTzTrans));

    stOtpTzTrans.u32Addr = u32Addr;
    stOtpTzTrans.u32Len = u32Len;
    
    memcpy(stCmdParam.pu8ParamBuf, &stOtpTzTrans, sizeof(CA_OTP_TZ_DATA_S));
    stCmdParam.enCmdChildID = CMD_CHILD_ID_GET_OTP_TZ;
    s32Ret = ioctl(g_s32CaFd, CMD_CA_SUPPER_ID, &stCmdParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("ca ioctl CMD_CA_SUPPER_ID err. \n");
        return s32Ret;
    }

    memcpy(&stOtpTzTrans, stCmdParam.pu8ParamBuf, sizeof(CA_OTP_TZ_DATA_S));
    memcpy(pu8OutData, stOtpTzTrans.u8Buf, u32Len);

    return HI_SUCCESS;
}


/*--------------------------------END--------------------------------------*/

