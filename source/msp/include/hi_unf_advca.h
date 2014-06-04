/******************************************************************************

Copyright (C), 2004-2020, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : hi_unf_advca.h
Version       : Initial
Author        : Hisilicon hisecurity team
Created       : 2013-08-28
Last Modified :
Description   : Hisilicon CA API declaration
Function List :
History       :
******************************************************************************/
#ifndef __HI_UNF_ADVCA_H__
#define __HI_UNF_ADVCA_H__

#include "hi_type.h"
#include "hi_unf_cipher.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

/*************************** Structure Definition ****************************/
/** \addtogroup      H_2_4_11 */
/** @{ */  /** <!-- [ADVCA] */
#define MAX_URI_NUM         (256)
#define MAX_FP_ID_LENGTH    (0x100)

/** Key ladder selecting parameters */
/** CNcomment:使用哪个key ladder标志 */
typedef enum hiUNF_ADVCA_CA_TYPE_E
{
    HI_UNF_ADVCA_CA_TYPE_R2R       = 0x0,    /**< Using R2R key ladder */                                                 /**< CNcomment:使用R2R key ladder */
    HI_UNF_ADVCA_CA_TYPE_SP        = 0x1,    /**< Using SP key ladder */                                                  /**< CNcomment:使用SP key ladder */
    HI_UNF_ADVCA_CA_TYPE_CSA2      = 0x1,    /**< Using CSA2 key ladder */                                                /**< CNcomment:使用CSA2 key ladder */
    HI_UNF_ADVCA_CA_TYPE_CSA3      = 0x1,    /**< Using CSA3 key ladder */                                                /**< CNcomment:使用CSA3 key ladder */
    HI_UNF_ADVCA_CA_TYPE_MISC      = 0x2,    /**< Using MISC ladder */                                                    /**< CNcomment:使用SP key ladder */
    HI_UNF_ADVCA_CA_TYPE_GDRM      = 0x3,    /**< Using GDRM ladder */                                                    /**< CNcomment:使用GDRM key ladder */
}HI_UNF_ADVCA_CA_TYPE_E;

/** advanced CA session serect key class*/
typedef enum hiUNF_ADVCA_KEYLADDER_LEV_E
{
	HI_UNF_ADVCA_KEYLADDER_LEV1     = 0,    /**<session serect key level 1*/
	HI_UNF_ADVCA_KEYLADDER_LEV2 ,	        /**<session serect key level 2*/
	HI_UNF_ADVCA_KEYLADDER_LEV3 ,	        /**<session serect key level 3*/
	HI_UNF_ADVCA_KEYLADDER_BUTT
}HI_UNF_ADVCA_KEYLADDER_LEV_E;

/** advanced CA session keyladder target */
typedef enum hiUNF_ADVCA_CA_TARGET_E
{
	HI_UNF_ADVCA_CA_TARGET_DEMUX         = 0, /**<demux*/
	HI_UNF_ADVCA_CA_TARGET_MULTICIPHER,	      /**<multicipher*/
}HI_UNF_ADVCA_CA_TARGET_E;

/** advanced CA Encrypt arith*/
typedef enum hiUNF_ADVCA_ALG_TYPE_E
{
    HI_UNF_ADVCA_ALG_TYPE_TDES      = 0,    /**<Encrypt arith :3 DES*/
    HI_UNF_ADVCA_ALG_TYPE_AES,              /**<Encrypt arith : AES*/
    HI_UNF_ADVCA_ALG_TYPE_BUTT
}HI_UNF_ADVCA_ALG_TYPE_E;

/** FLASH device types*/
typedef enum hiUNF_ADVCA_FLASH_TYPE_E
{
    HI_UNF_ADVCA_FLASH_TYPE_SPI     = 0,    /**<SPI flash*/
    HI_UNF_ADVCA_FLASH_TYPE_NAND ,          /**<nand flash*/
    HI_UNF_ADVCA_FLASH_TYPE_NOR ,           /**<nor flash*/
    HI_UNF_ADVCA_FLASH_TYPE_EMMC ,          /**<eMMC*/
    HI_UNF_ADVCA_FLASH_TYPE_BUTT
}HI_UNF_ADVCA_FLASH_TYPE_E;

/** JTAG protect mode*/
typedef enum hiUNF_ADVCA_JTAG_MODE_E
{
    HI_UNF_ADVCA_JTAG_MODE_OPEN     = 0,
    HI_UNF_ADVCA_JTAG_MODE_PROTECT,
    HI_UNF_ADVCA_JTAG_MODE_CLOSED,
    HI_UNF_ADVCA_JTAG_MODE_BUTT
}HI_UNF_ADVCA_JTAG_MODE_E;

/** =======================The following definition is for ADVCA PVR==========================================*/
/** Function pointer for setting CA private data when running PVR*/
typedef HI_S32 (*fpSetCAData)(const HI_CHAR *pFileName, HI_U8 *pInfo, HI_U32 u32CADataLen);
/** Function pointer for getting CA private data when running PVR*/
typedef HI_S32 (*fpGetCAData)(const HI_CHAR *pFileName, HI_U8 *pInfo, HI_U32 u32BufLen, HI_U32* u32CADataLen);
/** Parameter structure of API HI_UNF_ADVCA_PVR_WriteCallBack and HI_UNF_ADVCA_PVR_ReadCallBack*/
typedef struct hiUNF_PVR_CA_CALLBACK_ARGS_S
{
    HI_U32 u32ChnID;                /*channel ID of PVR*/
    HI_CHAR *pFileName;      /* index file name of recorded stream*/
    HI_U64 u64GlobalOffset;         /*Global Offset of the recording stream*/
    HI_U32 u32PhyAddr;		        /*physical address of the recording stream*/
    HI_U32 u32DataSize;             /*size of the the recording stream */ 
}HI_UNF_PVR_CA_CALLBACK_ARGS_S;


/*pay attention: centi_time is a 24bit value 
according to <basic specification 7.1> 
hour(bit 23-19),
minute(bit 18-13),
second(bit 12-7),
centi-second(bit 6-0),
and if fptime in fingerprint = 0xffffff,, which means
( u8Hour = 31,u8Minute = 63,u8Second = 63,u8Centisecond = 127) should show the fingerpring immediately*/
typedef struct HiCENTI_TIME_S
{
	HI_U8 u8Hour;			
	HI_U8 u8Minute;		
	HI_U8 u8Second;		
	HI_U8 u8Centisecond;	
}HI_CENTI_TIME_S;

typedef struct HiFP_ID_S
{
    HI_U16 u16DataLength;
    HI_U8 u8ID[MAX_FP_ID_LENGTH];	
}HI_FP_ID_S;

typedef struct HiFP_S
{
	HI_CENTI_TIME_S stCentiTime;
	HI_U16 u16Duration;            //in 0.01 second steps,for example: u16Duration = 2 means  20ms
	HI_U16 u16Position_X;
	HI_U16 u16Position_Y;
	HI_U8 u8Height;
}HI_FP_S;

typedef struct HiUNF_PVR_FP_INFO_S
{
    HI_U32 u32DisplayOffsetTime;
    HI_BOOL bisFromLPData;
    HI_FP_ID_S stFPID;  
    HI_FP_S stFP;
    HI_U8 MacKey[16]; 
}HI_UNF_PVR_FP_INFO_S;
typedef struct HiUNF_PVR_MAC_FP_INFO_S
{
    HI_UNF_PVR_FP_INFO_S stPVRFPInfo;
    HI_U8 Mac[16];    
}HI_UNF_PVR_MAC_FP_INFO_S;

/** Maturity of program*/
typedef enum hiMATURITY_RATING_S
{
	EN_RAT_G = 0x01,                               /**for the family*/
	EN_RAT_PG = 0x02,                              /**with parental guidance*/
	EN_RAT_A = 0x04,                               /**over 18*/
	EN_RAT_X = 0x08,                               /**erotic*/
    EN_RAT_RESERVE,              
}HI_MATURITY_RATING_E;

/** Recorded stream information */
typedef struct hiUNF_PVR_CA_StreamInfo_S
{
    HI_U32 u32OffsetTime;
    HI_MATURITY_RATING_E Maturity;        /* Maturity of this recorded stream*/
}HI_UNF_PVR_URI_S;

typedef struct HiUNF_PVR_CA_PrivateFileHead_S
{
    HI_U8 MagicNum[32];
    HI_U32 URINum;
    HI_U32 FPNum;
    HI_UNF_PVR_URI_S URI[MAX_URI_NUM];        /* Maturity of this recorded stream*/
    HI_U8 MacKey[16]; 
}HI_UNF_PVR_CA_PrivateFileHead_S;

typedef struct HiUNF_PVR_CA_MacPrivateFileHead_S
{
    HI_UNF_PVR_CA_PrivateFileHead_S stCAPrivateFileHead;   
    HI_U8 Mac[16];    
}HI_UNF_PVR_CA_MacPrivateFileHead_S;

typedef enum hiUNF_ADVCA_SP_DSC_MODE_E
{
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_AES_CBC_IDSA = 0x0020,
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_AES_ECB          = 0x0021,
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_AES_CBC_CI     = 0x0022,
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_AES_CBC                 = 0x4020,
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_AES_ECB                 = 0x4021,
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_AES_CBC_PIFF        = 0x4022,
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_AES_CBC_APPLE    = 0x4023,
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_AES_CTR                 = 0x4024,
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_TDES_CBC               = 0x4040,
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_TDES_ECB               = 0x4041,
     HI_UNF_ADVCA_SP_DSC_MODE_BUTT
}HI_UNF_ADVCA_SP_DSC_MODE_E;

/** Advca CA VendorID */
typedef enum hiUNF_ADVCA_VENDORID_E
{
    HI_UNF_ADVCA_NULL       = 0x00,        /**<No-Advcance CA chipset, Marked with 0*/
    HI_UNF_ADVCA_NAGRA      = 0x01,        /**<NAGRA  Chipse, Marked with R*/
    HI_UNF_ADVCA_IRDETO     = 0x02,        /**<IRDETO Chipset, Marked with I*/
    HI_UNF_ADVCA_CONAX      = 0x03,        /**<CONAX Chipset, Marked with C*/
    HI_UNF_ADVCA_SUMA       = 0x05,        /**<SUMA Chipset, Marked with S*/
    HI_UNF_ADVCA_NOVEL      = 0x06,        /**<NOVEL Chipset, Marked with Y*/
    HI_UNF_ADVCA_VERIMATRIX = 0x07,        /**<VERIMATRIX Chipset, Marked with M*/
    HI_UNF_ADVCA_CTI        = 0x08,        /**<CTI Chipset, Marked with T*/
    HI_UNF_ADVCA_COMMONDCA  = 0x0b,        /**<COMMONCA Chipset, Marked with H*/
    HI_UNF_ADVCA_VENDORIDE_BUTT
}HI_UNF_ADVCA_VENDORID_E;

/** @} */  /** <!-- ==== Structure Definition end ==== */

/******************************* API declaration *****************************/
/** \addtogroup      H_1_4_12 */
/** @{ */  /** <!-- [ADVCA] */

/**
\brief Initializes the advanced CA module CNcomment:初始化advance CA模块 CNend
\attention \n
Call this application programming interface (API) before using the advanced CA module.
The code HI_SUCCESS is returned if this API is called repeatedly.
CNcomment:在进行advance CA相关操作前应该首先调用本接口\n
重复调用本接口，会返回成功 CNend
\param N/A CNcomment:无 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_OPEN_ERR The CA device fails to start CNcomment:HI_ERR_CA_OPEN_ERR 打开CA设备失败 CNend
\see \n
::HI_UNF_ADVCA_DeInit
*/
HI_S32 HI_UNF_ADVCA_Init(HI_VOID);

/**
\brief Deinitializes the advanced CA module CNcomment:去初始化advance CA模块 CNend
\attention \n
None CNcomment:无 CNend
\param N/A CNcomment:无 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_DeInit(HI_VOID);

/**
\brief Set the ChipId CNcomment:设置ChipId  CNend
\attention \n
This application programming interface (API) is allowed to invoked only once. 
It's not allowed to call this API repeatedly.
CHIP_ID should have been setting before chipset is delivered to STB Manufacture.
Please contact Hisilicon before Customer try to use this interface.
CNcomment:\n  CNend
CNcomment:该接口只允许调用一次，不能重复调用，请谨慎使用\n
CHIP_ID可能已按照CA公司要求设置，该接口如果客户需要使用该接口需要先通知海思\n  CNend
\param[in] Id chip id CNcomment:Id chip id\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\see \n
::HI_UNF_ADVCA_SetChipId
*/
HI_S32 HI_UNF_ADVCA_SetChipId(HI_U32 Id);

/**
\brief Obtains the chip ID CNcomment:获取芯片ID  CNend
\attention \n
The chip ID is read-only.
CNcomment:芯片ID只能读不能写 CNend
\param[out] pu32ChipId Chip ID CNcomment:pu32ChipId   芯片ID  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_GetChipId(HI_U32 *pu32ChipId);


/**
\brief Obtains the market ID CNcomment:获取Market ID  CNend
\attention \n
None CNcomment:无 CNend
\param[out] u8MarketId market ID CNcomment:u8MarketId   针对市场的标识序号 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA  输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_SetMarketId
*/
HI_S32 HI_UNF_ADVCA_GetMarketId(HI_U8 u8MarketId[4]);

/**
\brief Sets the Market ID CNcomment:设置Market ID  CNend
\attention \n
The market ID of the set-top box (STB) is set before delivery. The market ID can be set once only and takes effects after the STB restarts.
CNcomment:在机顶盒出厂时设置，仅支持设置一次 设置后重启生效 CNend
\param[in] u8MarketId market ID CNcomment:u8MarketId   针对市场的标识序号 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\retval ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN  重复设置 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_SetMarketId(HI_U8 u8MarketId[4]);


/**
\brief Obtains the serial number of the STB CNcomment:获取机顶盒序列号 CNend
\attention \n
None CNcomment:无 CNend
\param[out] u8StbSn serial number of the STB CNcomment:u8StbSn   机顶盒序列号 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_SetStbSn
*/
HI_S32 HI_UNF_ADVCA_GetStbSn(HI_U8 u8StbSn[4]);

/**
\brief Sets the serial number of the STB CNcomment:设置机顶盒序列号 CNend
\attention \n
The serial number of the STB is set before delivery. The market ID can be set once only and takes effects after the STB restarts.
CNcomment:在机顶盒出厂时设置，仅支持设置一次 设置后重启生效 CNend
\param[in] u8StbSn serial number of the STB CNcomment:u8StbSn   机顶盒序列号 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\retval ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN  重复设置 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_SetStbSn(HI_U8 u8StbSn[4]);

/**
\brief Set the R2R RootKey CNcomment:设置R2R RootKey  CNend
\attention \n
This application programming interface (API) is allowed to invoked only once. 
It's not allowed to call this API repeatedly.
R2R RootKey should have been setting before chipset is delivered to STB Manufacture.
Please contact Hisilicon before Customer try to use this interface.
CNcomment:该接口只允许调用一次，不能重复调用,请谨慎使用该接口\n
R2RRootKey可能已按照CA公司要求设置，该接口如果客户需要使用该接口需要先通知海思\n  CNend
\param[in] pkey R2R Root Key CNcomment:pkey  R2R根密钥\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_GetR2RRootKey
*/
HI_S32 HI_UNF_ADVCA_SetR2RRootKey(HI_U8 *pkey);

/**
\brief Get the R2R RootKey CNcomment:获取R2R RootKey  CNend
\attention \n
None CNcomment:无 CNend
\param[out] pkey R2R Root Key CNcomment:pkey  R2R根密钥\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_SetR2RRootKey
*/
HI_S32 HI_UNF_ADVCA_GetR2RRootKey(HI_U8 *pkey);

/**
\brief Lock the burned keys CNcomment:锁定烧写的key  CNend
\attention \n
This application programming interface (API) is used to lock the root keys after burning the root keys
CNcomment:该接口供烧写完Root key之后调用用来锁定root key\n  CNend
\param N/A CNcomment:无 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\see \n
::HI_UNF_ADVCA_HideLockKeys
*/
HI_S32 HI_UNF_ADVCA_HideLockKeys(HI_VOID);

/**
\brief Obtains the security startup enable status CNcomment:获取安全启动使能状态 CNend
\attention \n
None CNcomment:无 CNend
\param[out] pbEnable: Security startup enable. CNcomment:pbEnable   安全启动是否使能， CNend
HI_TRUE enabled CNcomment:HI_TRUE 使能，  CNend
HI_FALSE disabled CNcomment:HI_FALSE 不使能 CNend
\param[out] penFlashType the startup flash type, only valid when SCS is enable
CNcomment:penFlashType 仅在安全启动使能时有效，表示安全启动的Flash类型 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_GetSecBootStat(HI_BOOL *pbEnable,HI_UNF_ADVCA_FLASH_TYPE_E *penFlashType);

/**
\brief Obtains the mode of the JTAG interface CNcomment:获取JTAG调试口模式 CNend
\attention \n
None CNcomment:无 CNend
\param[out] penJtagMode Mode of the JTAG interface CNcomment:penJtagMode   JTAG调试口模式 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_JTAG_MODE_E
*/
HI_S32 HI_UNF_ADVCA_GetJtagMode(HI_UNF_ADVCA_JTAG_MODE_E *penJtagMode);

/**
\brief Sets the mode of the JTAG interface CNcomment:设置JTAG调试口模式   CNend
\attention \n
If the mode of the JTAG interface is set to closed or password-protected, it cannot be opened.
If the JTAG interface is open, it can be closed or password-protected.
If the JATG interface is password-protected, it can be closed.
After being closed, the JATG interface cannot be set to open or password-protected mode.
CNcomment:不支持设置为打开状态。\n
打开的时候可以关闭或设置为密钥保护状态。\n
处于密钥保护状态时可以关闭。\n
关闭之后不能打开和设置为密钥保护状态 CNend
\param[in] enJtagMode Mode of the JTAG interface CNcomment:enJtagMode   JTAG调试口模式 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\retval ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN 重复设置 CNend
\see \n
::HI_UNF_ADVCA_JTAG_MODE_E
*/
HI_S32 HI_UNF_ADVCA_SetJtagMode(HI_UNF_ADVCA_JTAG_MODE_E enJtagMode);


/**
\brief Obtains the R2R key ladder stage CNcomment:获取R2R key ladder级数 CNend
\attention \n
None CNcomment:无 CNend
\param[out] penStage Key ladder stage CNcomment:penStage   key ladder级数 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_KEYLADDER_LEV_E
*/
HI_S32 HI_UNF_ADVCA_GetR2RKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E *penStage);

/**
\brief Sets the R2R key ladder stage CNcomment:设置R2R key ladder的级数    CNend
\attention \n
The key ladder stage can be set only once before delivery and cannot be changed. Please use default value.
CNcomment:机顶盒出厂时设置 仅能设置一次 不可更改,不建议使用该接口改变stage  CNend
\param[in] enStage Key ladder stage Its value is HI_UNF_ADVCA_KEYLADDER_LEV2 or HI_UNF_ADVCA_KEYLADDER_LEV3
CNcomment:enStage   key ladder级数\n 取值只能为HI_UNF_ADVCA_KEYLADDER_LEV2 或者 HI_UNF_ADVCA_KEYLADDER_LEV3  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_KEYLADDER_LEV_E
*/
HI_S32 HI_UNF_ADVCA_SetR2RKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage);

/**
\brief Obtains the digital video broadcasting (DVB) key ladder stage CNcomment:获取DVB key ladder的级数 CNend
\attention \n
None CNcomment:无 CNend
\param[out] penStage Key ladder stage CNcomment:penStage   key ladder级数 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_KEYLADDER_LEV_E
*/
HI_S32 HI_UNF_ADVCA_GetDVBKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E *penStage);

/**
\brief Sets the DVB key ladder stage CNcomment:设置DVB key ladder的级数    CNend
\attention \n
The key ladder stage can be set only once before delivery and cannot be changed. Please use default value.
CNcomment:机顶盒出厂时设置 仅能设置一次 不可更改,不建议使用该接口改变stage  CNend
\param[in] enStage Key ladder stage Its value is HI_UNF_ADVCA_KEYLADDER_LEV2 or HI_UNF_ADVCA_KEYLADDER_LEV3.
CNcomment:enStage  key ladder级数\n 取值只能为HI_UNF_ADVCA_KEYLADDER_lev2 或者 HI_UNF_ADVCA_KEYLADDER_lev3  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_KEYLADDER_LEV_E
*/
HI_S32 HI_UNF_ADVCA_SetDVBKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage);

/**
\brief Sets session keys for an R2R key ladder CNcomment:为R2R key ladder配置会话密钥    CNend
\attention \n

The stage of the session key cannot be greater than the configured stage of the key ladder. The last stage of the session key is configured by calling the API of the CIPHER module rather than this API.
That is, only session key 1 and session key 2 need to be configured for a 3-stage key ladder.
Only session key 1 needs to be configured for a 2-stage key ladder.
You need to set the key ladder stage by calling HI_UNF_ADVCA_SetR2RKeyLadderStage first.
Session keys can be set during initialization or changed at any time.
CNcomment:注意配置的级数不能超过设置的级数值，最后一级由CIPHER模块内部配置，不用通过此接口配置。\n
也就是说，对于3级key ladder，只用配置会话密钥1和会话密钥2。\n
对于2级的key ladder，只用配置会话密钥1。\n
请先调用HI_UNF_ADVCA_SetR2RKeyLadderStage设置key ladder级数。\n
会话密钥可以初始时设置一次，也可以随时修改。 CNend
\param[in] enStage Key ladder stage Its value is HI_UNF_ADVCA_KEYLADDER_LEV2 or HI_UNF_ADVCA_KEYLADDER_LEV3.
CNcomment:enStage    密钥级数，[HI_UNF_ADVCA_KEYLADDER_LEV1 ~ HI_UNF_ADVCA_KEYLADDER_LEV2]  CNend
\param[in] pu8Key Protection key pointer, 128 bits (16 bytes) in total CNcomment:pu8Key     保护密钥指针，共128bit(16byte)  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS  成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\retval ::HI_ERR_CA_WAIT_TIMEOUT Timeout occurs when the CA module waits for encryption or decryption
CNcomment:HI_ERR_CA_WAIT_TIMEOUT CA等待加解密超时 CNend
\retval ::HI_ERR_CA_R2R_DECRYPT The R2R decryption fails CNcomment:HI_ERR_CA_R2R_DECRYPT  R2R解密失败 CNend
\see \n
::HI_UNF_ADVCA_KEYLADDER_LEV_E
*/
HI_S32 HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key);

/**
\brief Sets session keys for a DVB key ladder CNcomment:为DVB key ladder配置会话密钥    CNend
\attention \n
The stage of the session key cannot be greater than the configured stage of the key ladder. The last stage of the session key is configured by calling the API of the CIPHER module rather than this API.
That is, only session key 1 and session key 2 need to be configured for a 3-stage key ladder.
Only session key 1 needs to be configured for a 2-stage key ladder.
You need to set the key ladder stage by calling HI_UNF_ADVCA_SetDVBKeyLadderStage first.
 Session keys can be set during initialization or changed at any time.
CNcomment:注意配置的级数不能超过设置的级数值，最后一级由Descrambler模块内部配置，不用通过此接口配置。\n
也就是说，对于3级key ladder，只用配置会话密钥1和会话密钥2。\n
对于2级的key ladder，只用配置会话密钥1。\n
请先调用HI_UNF_ADVCA_SetDVBKeyLadderStage设置key ladder级数。\n
会话密钥可以初始时设置一次，也可以随时修改。 CNend
\param[in] enStage Key ladder stage Its value is HI_UNF_ADVCA_KEYLADDER_LEV2 or HI_UNF_ADVCA_KEYLADDER_LEV3.
CNcomment:enStage    密钥级数，[HI_UNF_ADVCA_KEYLADDER_LEV1 ~ HI_UNF_ADVCA_KEYLADDER_LEV2]  CNend
\param[in] pu8Key Protection key pointer, 128 bits (16 bytes) in total CNcomment:pu8Key     保护密钥指针，共128bit(16byte)  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS  成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\retval ::HI_ERR_CA_WAIT_TIMEOUT Timeout occurs when the CA module waits for encryption or decryption
CNcomment:HI_ERR_CA_WAIT_TIMEOUT CA等待加解密超时 CNend
\retval ::HI_ERR_CA_R2R_DECRYPT The CW decryption fails CNcomment:HI_ERR_CA_CW_DECRYPT   CW解密失败 CNend

\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_SetDVBSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key);


/* for future reserved */
HI_S32 HI_UNF_ADVCA_SetGDRMSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key, HI_UNF_ADVCA_CA_TARGET_E enKlTarget);

/** 
\brief Encrypts software protect keys (SWPKs) CNcomment:加密软件保护密钥 CNend
\attention
Before the delivery of the STB, you need to read the SWPKs in plain text format from the flash memory, encrypt SWPKs by calling this API, and store the encrypted SWPKs in the flash memory for security startup.
CNcomment:机顶盒出厂时 从Flash上读取明文的SWPK(Software Protect Key),调用该接口加密,将加密的SWPK存储在Flash中，用于安全启动 CNend
The fist 8 bytes of the SWPK can't be equal to the last 8 bytes.
CNcomment:SWPK的前8个字节与后8个字节不能相等 CNend
This API is only for special CA, please contact Hislicon before usage.
CNcomment:注意:此接口为特定CA专用，如需使用，请联系海思 CNend
\param[in]  pPlainSwpk SWPKs in plain text format CNcomment:pPlainSwpk    明文SWPK  CNend
\param[out] pEncryptedSwpk Encrypted SWPKs CNcomment:pEncryptedSwpk  加密后的SWPK  CNend

\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS               成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT       CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA   输入参数非法 CNend
\retval ::HI_ERR_CA_NOT_SUPPORT The function is not supported CNcomment:HI_ERR_CA_NOT_SUPPORT    功能不支持 CNend
\retval ::HI_ERR_CA_WAIT_TIMEOUT Timeout occurs when the CA module waits for encryption or decryption
CNcomment:HI_ERR_CA_WAIT_TIMEOUT   CA等待加解密超时 CNend
\return ::HI_ERR_CA_SWPK_ENCRYPT SWPK encryption fails CNcomment:HI_ERR_CA_SWPK_ENCRYPT   SWPK加密失败 CNend

\see
\li ::
*/
HI_S32 HI_UNF_ADVCA_EncryptSWPK(HI_U8 *pPlainSwpk,HI_U8 *pEncryptedSwpk);

/**
\brief Sets the algorithm of the DVB key ladder CNcomment:设置DVB key ladder的算法    CNend
\attention \n
You must set an algorithm before using a key ladder in a session. The default algorithm is TDES.
It is recommended that you retain the algorithm in a session.
CNcomment:每次会话过程中使用key ladder之前，须设置具体算法, 系统初始默认值 HI_UNF_ADVCA_ALG_TYPE_TDES；\n
本次会话过程中，建议保持算法的稳定不变。 CNend
\param[in] enType Key ladder algorithm CNcomment:enType  key ladder算法\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_ALG_TYPE_E
*/
HI_S32 HI_UNF_ADVCA_SetDVBAlg(HI_UNF_ADVCA_ALG_TYPE_E enType);

/**
\brief Sets the algorithm of the R2R key ladder CNcomment:设置R2R key ladder的算法    CNend
\attention \n
You must set an algorithm before using a key ladder in a session. The default algorithm is TDES.
It is recommended that you retain the algorithm in a session.
CNcomment:每次会话过程中使用key ladder之前，须设置具体算法, 系统初始默认值 HI_UNF_ADVCA_ALG_TYPE_TDES；\n
本次会话过程中，建议保持算法的稳定不变。 CNend
\param[in] enType Key ladder algorithm CNcomment:enType  key ladder算法\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_ALG_TYPE_E
*/
HI_S32 HI_UNF_ADVCA_SetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_E enType);

/**
\brief Obtains the algorithm of the DVB key ladder CNcomment: 获取 DVB key ladder的算法    CNend
\attention \n
None CNcomment:无 CNend
\param[in] pEnType Key ladder algorithm CNcomment:pEnType  key ladder算法\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_ALG_TYPE_E
*/
HI_S32 HI_UNF_ADVCA_GetDVBAlg(HI_UNF_ADVCA_ALG_TYPE_E *pEnType);

/**
\brief Obtains the algorithm of the R2R key ladder CNcomment:获取 R2R key ladder的算法    CNend
\attention \n
None CNcomment:无 CNend
\param[in] enType Key ladder algorithm CNcomment:enType  key ladder算法\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_ALG_TYPE_E
*/
HI_S32 HI_UNF_ADVCA_GetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_E *pEnType);

/**
  \brief set RSA key CNcomment:设置签名校验的RSA密码 CNend
  \attention \n
  RSA key should have been setting before chipset is delivered to STB Manufacture.
  The length of RSA key must be 512 Bytes.
     Please contact Hisilicon before Customer try to use this interface.
  CNcomment:该接口仅用于测试芯片，正式芯片不能设置RSAKey\n
     该接口只允许调用一次，不能重复调用,请谨慎使用该接口, RSA key的长度必须为512 Bytes\n
     RSA key可能已按照CA公司要求设置，该接口如果客户需要使用该接口需要先通知海思\n  CNend
  \param[in] pkey RSA key CNcomment:pkey  RSA密码\n  CNend
  \retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
  \retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
  \retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
  \retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
  \see \n
*/
HI_S32 HI_UNF_ADVCA_SetRSAKey(HI_U8 *pkey);

/**
  \brief set RSA key CNcomment:获取签名校验的RSA密码 CNend
  \attention \n
     RSA key can only be read out, only RSAKey is not locked.
     RSA key should have been setting and lock before chipset is delivered to STB Manufacture.
     The length of RSA key must be 512 Bytes.
     Please contact Hisilicon before Customer try to use this interface.
  CNcomment:该接口仅在RSAkey没有被锁定的情况下，读取出来, RSA key的长度必须为512 Bytes\n
     RSA key可能已按照CA公司要求设置并锁定，该接口如果客户需要使用该接口需要先通知海思\n  CNend
  \param[in] pkey RSA key CNcomment:pkey  RSA密码\n  CNend
  \retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
  \retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
  \retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
  \retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
  \see \n
*/
HI_S32 HI_UNF_ADVCA_GetRSAKey(HI_U8 *pkey);


/**
  \brief This function is used to check if the MarketID is already set
  \attention \n
  None
  \param[in] pbIsMarketIdSet: the pointer point to the buffer to store the return value
  \param[out] pbIsMarketIdSet: save the return value
  \retval :: HI_SUCCESS Success
  \retval :: HI_FAILURE This API fails to be called
  \see \n
*/
HI_S32 HI_UNF_ADVCA_IsMarketIdSet(HI_BOOL *pbIsMarketIdSet);

/**
  \brief This function is used to get the vendor type of the chipset
  \attention \n
  None
  \param[out] pu32VendorID: The number indicates the vendor id
  \retval :: HI_SUCCESS Success
  \retval :: HI_FAILURE This API fails to be called
  \see \n
*/
HI_S32 HI_UNF_ADVCA_GetVendorID(HI_U32 *pu32VendorID);

/**
\brief Enables the security startup function and sets the type of flash memory for security startup
CNcomment:设置安全启动使能,同时指定安全启动的Flash类型 CNend
\attention \n
This function can be enabled only and cannot be disabled after being enabled.
CNcomment:只能使能，使能之后不可修改。 CNend
\param[in]  enFlashType Type of the flash memory for security startup CNcomment:enFlashType  启动的Flash类型 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN  重复设置 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_EnableSecBoot(HI_UNF_ADVCA_FLASH_TYPE_E enFlashType);

/**
\brief Enables the security startup function. This API should be used with the API HI_UNF_ADVCA_SetFlashTypeEx.
CNcomment:设置安全启动使能，该接口必须和HI_UNF_ADVCA_SetFlashTypeEx配套使用。 CNend
\attention \n
\param[in]  None
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN  重复设置 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_EnableSecBootEx(HI_VOID);

/**
\brief Sets the type of flash memory for security startup and disable the self boot, which mean that you cannot use the serial port to update the boot. This API should be used with the API HI_UNF_ADVCA_EnableSecBootEx
CNcomment:指定安全启动的Flash类型，同时关闭自举功能，即不能通过串口升级fastboot。该接口跟HI_UNF_ADVCA_EnableSecBootEx配套使用 CNend
\attention \n
The setting is performed before delivery and can be performed once only.
CNcomment:在机顶盒出厂时选择是否设置，仅支持设置一次 CNend
\param[in]  enFlashType Type of the flash memory for security startup CNcomment:enFlashType  启动的Flash类型 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN  重复设置 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_SetFlashTypeEx(HI_UNF_ADVCA_FLASH_TYPE_E enFlashType);

/** 
\brief  Sets whether to use hardware CWs only CNcomment:设置固定使用硬件CW字 CNend
\attention
The setting is performed before delivery and can be performed once only.
By default, the CW type (hardware CWs or software CWs) depends on the configuration of the DEMUX.
CNcomment:在机顶盒出厂时选择是否设置，仅支持设置一次
默认根据Demux的配置选择使用硬件CW字还是软件CW字 CNend
\param[in] 

\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT          CA未初始化 CNend
\return ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN    重复设置参数 CNend

\see
\li :: 
*/
HI_S32 HI_UNF_ADVCA_LockHardCwSel(HI_VOID);

/** 
\brief Disables the self-boot function CNcomment:关闭SelfBoot功能,也就是boot下不能使用串口/网口升级 CNend
\attention
The setting is performed before delivery and can be performed once only.
The self-boot function is enabled by default.
CNcomment:在机顶盒出厂时选择是否设置，仅支持设置一次
默认使能SelfBoot功能 CNend

\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized.  CNcomment:HI_ERR_CA_NOT_INIT          CA未初始化 CNend
\return ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN    重复设置参数 CNend

\see
\li ::
*/
HI_S32 HI_UNF_ADVCA_DisableSelfBoot(HI_VOID);

/**
\brief Obtains the self-boot status CNcomment:获取SelfBoot状态 CNend
\attention \n
None CNcomment:无 CNend
\param[out] pbDisable: self-boot status. CNcomment:pbEnable   SelfBoot是否禁用 CNend
HI_TRUE enabled CNcomment:HI_TRUE 禁用，  CNend
HI_FALSE disabled CNcomment:HI_FALSE 未禁用 CNend

\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_GetSelfBootStat(HI_BOOL *pbDisable);

/** 
\brief  Get whether to use hardware CWs only CNcomment:获取固定使用硬件CW字标志 CNend
\attention
None CNcomment:无 CNend
\param[out] pbLock indicates the state of hardware CWs  CNcomment:pbLock 硬件CW字的标志位 CNend

\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT          CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA  输入参数非法 CNend

\see
\li :: 
*/
HI_S32 HI_UNF_ADVCA_GetHardCwSelStat(HI_BOOL *pbLock);

/** 
\brief  Open the SWPK key ladder CNcomment:打开boot key ladder  CNend
\attention
\param[in] 

\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT          CA未初始化 CNend

\see
\li :: 
*/
HI_S32 HI_UNF_ADVCA_SWPKKeyLadderOpen(HI_VOID);

/** 
\brief  Close the SWPK key ladder CNcomment:关闭boot key ladder  CNend
\attention
\param[in] 

\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT          CA未初始化 CNend

\see
\li :: 
*/
HI_S32 HI_UNF_ADVCA_SWPKKeyLadderClose(HI_VOID);

/**
\brief Obtains the Version ID CNcomment:获取Version ID  CNend
\attention \n
None CNcomment:无 CNend
\param[out] u8VersionId version ID CNcomment:u8VersionId   版本号标志 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA  输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_SetVersionId
*/
HI_S32 HI_UNF_ADVCA_GetVersionId(HI_U8 u8VersionId[4]);

/**
\brief Sets the Version ID CNcomment:设置Version ID  CNend
\attention \n
The version ID of the set-top box (STB) is set before delivery. The version ID can be set once only and takes effects after the STB restarts.
CNcomment:在机顶盒出厂时设置，仅支持设置一次 设置后重启生效 CNend
\param[in] u8VersionId version ID CNcomment:u8VersionId   版本号标志 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\retval ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN  重复设置 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_SetVersionId(HI_U8 u8VersionId[4]);

/** 
\brief  Sets whether to check the boot version CNcomment:设置是否检查Version  CNend
\attention
The setting is performed before delivery and can be performed once only.
By default, the version check function is disabled
CNcomment:在机顶盒出厂时选择是否设置，仅支持设置一次
默认不使能version check  CNend
\param[in] 
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT          CA未初始化 CNend
\return ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN    重复设置参数 CNend
\see
\li :: 
*/
HI_S32 HI_UNF_ADVCA_EnableVersionCheck(HI_VOID);

/** 
\brief  Get the boot version check flag CNcomment:获取是否检查version的标志位 CNend
\attention \n
None CNcomment:无 CNend
\param[out] pu32Stat boot version check flag CNcomment:pu32Stat    version检查的标志位 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA  输入参数非法 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_GetVersionCheckStat(HI_U32 *pu32Stat);

/** 
\brief  Sets whether to check the MSID in boot area CNcomment:设置是否检查boot area的MSID  CNend
\attention
The setting is performed before delivery and can be performed once only.
By default, the boot MSID check function is disabled
CNcomment:在机顶盒出厂时选择是否设置，仅支持设置一次
默认不使能boot MSID check  CNend
\param[in] 
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT          CA未初始化 CNend
\return ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN    重复设置参数 CNend
\see
\li :: 
*/
HI_S32 HI_UNF_ADVCA_EnableBootMSIDCheck(HI_VOID);

/** 
\brief  Get the boot MSID check flag CNcomment:获取是否检查MSID的标志位 CNend
\attention \n
None CNcomment:无 CNend
\param[out] pu32Stat boot MSID check flag CNcomment:pu32Stat    MSID检查的标志位 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA  输入参数非法 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_GetBootMSIDCheckStat(HI_U32 *pu32Stat);

/** 
\brief  Get the software revision
CNcomment:获取软件的revision版本号 CNend
\attention \n
None CNcomment:无 CNend
\param[out] revision string of Revision CNcomment:revision    Revision版本号 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA  输入参数非法 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_GetRevision(HI_U8 revision[25]);

/** 
\brief  Set the DDR Scramble flag. Normally, this flag has been set as required by CA vendor
CNcomment:设置DDR加扰标志位，一般高安芯片出厂时已按照CA公司要求设置 CNend
\attention \n
None CNcomment:无 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_SetDDRScramble(HI_VOID);

/** 
\brief  Get the DDR Scramble flag
CNcomment:获取DDR加扰标志位 CNend
\attention \n
None CNcomment:无 CNend
\param[out] pu32Stat DDR Scramble flag CNcomment:pu32Stat    DDR加扰标志 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA  输入参数非法 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_GetDDRScrambleStat(HI_U32 *pu32Stat);

/** 
\brief Sets whether to decrypt the BootLoader CNcomment:设置必须对BootLoader进行解密 CNend
\attention
The setting is performed before delivery and can be performed once only.
CNcomment:在机顶盒出厂时选择是否设置，仅支持设置一次
默认根据Flash中的数据标识，决定BootLoader是否需要解密 CNend

\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT          CA未初始化 CNend
\return ::HI_ERR_CA_SETPARAM_AGAIN The parameter has been set CNcomment:HI_ERR_CA_SETPARAM_AGAIN    重复设置参数 CNend

\see
\li ::
*/
HI_S32 HI_UNF_ADVCA_LockBootDecEn(HI_VOID);

/** 
\brief Get the BootLoader Decryption flag CNcomment:获取BootLoader解密的标志位 CNend
\attention \n
None CNcomment:无 CNend
\param[out] pu32Stat BootLoader Decryption flag CNcomment:pu32Stat    Bootloader解密标志位 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT  CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA  输入参数非法 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_GetBootDecEnStat(HI_U32 *pu32Stat);





/*============the following is for PVR ===========*/


/** 
\brief  Open ADVCA PVR Record CNcomment:打开ADVCA PVR 录制 CNend
\attention
\param[in] u32RecChnID Channel ID of record CNcomment:u32RecChnID   录制通道号 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_FAILURE Faliure CNcomment:HI_FAILURE                  失败 CNend

\see
\li :: 
*/
HI_S32 HI_UNF_ADVCA_PVR_RecOpen(HI_U32 u32RecChnID);

/** 
\brief  Close ADVCA PVR Record CNcomment:关闭ADVCA PVR 录制 CNend
\attention
\param[in] u32RecChnID Channel ID of record CNcomment:u32RecChnID   录制通道号 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_FAILURE Faliure CNcomment:HI_FAILURE                  失败 CNend

\see
\li :: 
*/
HI_S32 HI_UNF_ADVCA_PVR_RecClose(HI_U32 u32RecChnID);

/** 
\brief  Open ADVCA PVR Play CNcomment:打开ADVCA PVR 播放 CNend
\attention
\param[in] u32PlayChnID Channel ID of record CNcomment:u32PlayChnID   播放通道号 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_FAILURE Faliure CNcomment:HI_FAILURE                  失败 CNend

\see
\li :: 
*/
HI_S32 HI_UNF_ADVCA_PVR_PlayOpen(HI_U32 u32PlayChnID);

/** 
\brief  Open ADVCA PVR Play CNcomment:关闭ADVCA PVR 播放 CNend
\attention
\param[in] u32PlayChnID Channel ID of record CNcomment:u32PlayChnID   播放通道号 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_FAILURE Faliure CNcomment:HI_FAILURE                  失败 CNend

\see
\li :: 
*/
HI_S32 HI_UNF_ADVCA_PVR_PlayClose(HI_U32 u32PlayChnID);



/** 
\brief  Register functions of operating CA data CNcomment:注册操作CA私有数据的函数 CNend
\attention \n
None CNcomment:无 CNend
\param[in] funcGetData Function of getting CA private data when running PVR CNcomment:funcGetData   当进行PVR时，获取CA私有数据的函数 CNend
\param[in] funcSetData Function of setting CA private data when running PVR CNcomment:funcSetData   当进行PVR时，设置CA私有数据的函数 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_FAILURE Faliure CNcomment:HI_FAILURE                  失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_RegisterCADataOps(fpGetCAData funcGetData,fpSetCAData funcSetData);

/** 
\brief  Write callback function which should be registered by PVR,it achieve operating keyladder and M2M encryption 
CNcomment:应该被PVR注册的录制回调函数，它主要完成使用keyladder和multicipher对录制数据进行加密 CNend
\attention \n
None CNcomment:无 CNend
\param[in] pstCAPVRArgs Structure of parameters used by this function CNcomment:pstCAPVRArgs    本函数使用的参数结构体，
详细定义见HI_UNF_PVR_CA_CALLBACK_ARGS_S结构体的定义 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_FAILURE Faliure CNcomment:HI_FAILURE                  失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_WriteCallBack(HI_UNF_PVR_CA_CALLBACK_ARGS_S* pstCAPVRArgs);

/** 
\brief  Read callback function which should be registered by PVR,it achieve operating keyladder and M2M decryption 
CNcomment:应该被PVR注册的播放回调函数，它主要完成使用keyladder和multicipher对录制数据进行解密 CNend
\attention \n
None CNcomment:无 CNend
\param[in] pstCAPVRArgs Structure of parameters used by this function CNcomment:pstCAPVRArgs    本函数使用的参数结构体，
详细定义见HI_UNF_PVR_CA_CALLBACK_ARGS_S结构体的定义 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS                  成功 CNend
\retval ::HI_FAILURE Faliure CNcomment:HI_FAILURE                  失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_ReadCallBack(HI_UNF_PVR_CA_CALLBACK_ARGS_S* pstCAPVRArgs);



/**
\brief  Get the name of CA private data file by index file name
CNcomment:通过索引文件名字获取CA私有数据文件 CNend
\attention \n
None CNcomment:无 CNend

\param[in] pIndexFileName  The name of index file        CNcomment:索引文件名字 CNend
\param[out] CAPrivateFileName  The name  CA private data file  CNcomment:私有数据文件名字 CNend


\retval ::HI_SUCCESS Success     CNcomment: 成功 CNend
\retval ::HI_FAILURE Faliure       CNcomment:  失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_GetCAPrivateFileName(HI_CHAR * pIndexFileName,HI_CHAR CAPrivateFileName[128]);

/**
\brief  Create CA private data file
CNcomment: 创建CA私有数据文件 CNend
\attention \n
None CNcomment:无 CNend

\param[in] u32RecChnID  Record channel ID        CNcomment:录制通道ID  CNend
\param[in] pCAPrivateFileName  The name  CA private data file  CNcomment:私有数据文件名字 CNend

\retval ::HI_SUCCESS Success       CNcomment:成功 CNend
\retval ::HI_FAILURE Faliure          CNcomment: 失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_CreateCAPrivateFile( HI_U32 u32RecChnID,HI_CHAR * pCAPrivateFileName);

/**
\brief  Check  if the file of CA private data is correct
CNcomment: 核对CA 私有数据文件是否正确 CNend
\attention \n
None CNcomment:无 CNend

\param[in]  pCAPrivateFileName  The name of CA private data file .     CNcomment:CA 私有数据文件名字 CNend

\retval ::HI_SUCCESS Check successfully                   CNcomment:核对成功 CNend
\retval ::HI_FAILURE  Fail to check.                          CNcomment:核对失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_CheckCAPrivateFileMAC( HI_CHAR * pCAPrivateFileName);

/**
\brief  Save the information of maturity rate into the file of CA private data
CNcomment: 将成人级信息保存到CA 私有数据文件中 CNend
\attention \n
None CNcomment:无 CNend

\param[in]  u32RecChnID  The record channel ID .                             CNcomment:录制通道ID  CNend
\param[in]  pCAPrivateFileName  The name of CA private data file .     CNcomment:CA 私有数据文件名字 CNend
\param[in]  pstPVRURI  The information of maturity rate                   CNcomment:成人级信息 CNend


\retval ::HI_SUCCESS Check successfully                   CNcomment:保存成功 CNend
\retval ::HI_FAILURE  Fail to check.                          CNcomment:保存失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_SaveURI( HI_U32 u32RecChnID,HI_CHAR * pCAPrivateFileName ,HI_UNF_PVR_URI_S* pstPVRURI);

/**
\brief  Save the information of fingerprint into the file of CA private data
CNcomment: 将指纹信息保存到CA 私有数据文件中 CNend

\attention \n
None CNcomment:无 CNend

\param[in]  u32RecChnID  The record channel ID .                             CNcomment:录制通道ID  CNend
\param[in]  pCAPrivateFileName  The name of CA private data file .     CNcomment:CA 私有数据文件名字 CNend
\param[in]  pstFPInfo  The information of fingerprint                   CNcomment:指纹信息 CNend


\retval ::HI_SUCCESS Check successfully                   CNcomment:保存成功 CNend
\retval ::HI_FAILURE  Fail to check.                          CNcomment:保存失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_SaveFP( HI_U32 u32RecChnID,HI_CHAR * pCAPrivateFileName,HI_UNF_PVR_FP_INFO_S* pstFPInfo);

/**
\brief  Get the corresponding information of maturity rate based on the number from the file of CA private data
CNcomment: 根据number 从CA 私有数据文件中获取相应的成人级信息 CNend
\attention \n
None CNcomment:无 CNend

\param[in]  pCAPrivateFileName  The name of CA private data file .      CNcomment:CA 私有数据文件名字 CNend
\param[in]  u32URINum  The number of information of maturity level .  CNcomment:成人级信息number  CNend
\param[in]  pstPVRURI   The information of maturity rate                   CNcomment:成人级信息 CNend

\retval ::HI_SUCCESS  Get successfully                  CNcomment:获取成功 CNend
\retval ::HI_FAILURE  Fail to get.                          CNcomment:获取失败 CNend

\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_GetURI( HI_CHAR * pCAPrivateFileName ,HI_U32 u32URINum, HI_UNF_PVR_URI_S* pstURI);

/**
\brief  Get the corresponding information of fingerprint based on the number from the file of CA private data
CNcomment: 根据number 从CA 私有数据文件中获取相应的指纹信息 CNend
\attention \n
None CNcomment:无 CNend

\param[in]  pCAPrivateFileName  The name of CA private data file .      CNcomment:CA 私有数据文件名字 CNend
\param[in]  u32FPNum  The number of information of fingerprint .  CNcomment:指纹信息number  CNend
\param[in]  pstPVRURI   The information of fingerprint                   CNcomment:指纹信息 CNend

\retval ::HI_SUCCESS  Get successfully                  CNcomment:获取成功 CNend
\retval ::HI_FAILURE  Fail to get.                          CNcomment:获取失败 CNend

\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_GetFP( HI_CHAR * pCAPrivateFileName,HI_U32 u32FPNum,HI_UNF_PVR_FP_INFO_S* pstFPInfo);

/**
\brief  Get the numbers of maturity rate and fingerprint from the file of CA private data
CNcomment: 从CA 私有数据文件中获取成人级和指纹信息的数量 CNend
\attention \n
None CNcomment:无 CNend

\param[in]  pCAPrivateFileName  The name of CA private data file .        CNcomment:CA 私有数据文件名字 CNend
\param[in]  u32URINum  The numbers of information of maturity rate .   CNcomment:成人级信息的数量 CNend
\param[in]  u32FPNum   The numbers of information of fingerprint           CNcomment:指纹信息的数量 CNend

\retval ::HI_SUCCESS  Get successfully                  CNcomment:获取成功 CNend
\retval ::HI_FAILURE  Fail to get.                          CNcomment:获取失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_GetURIAndFPNum( HI_CHAR * pCAPrivateFileName,HI_U32* u32URINum,HI_U32* u32FPNum);

/**
\brief  Calculte the AES_CMAC value of data  
CNcomment: 计算数据的AES_CMAC 值 CNend
\attention \n
None CNcomment:无 CNend

\param[in]  buffer  pointer of data buffer .        CNcomment:数据buffer 指针 CNend
\param[in]  Length  The length  of data .   CNcomment:数据长度 CNend
\param[in]  Key   The key used in Calculte the AES_CMAC of data           CNcomment: AES_CMAC 计算中使用的key  CNend
\param[out]  MAC   The AES_CMAC value          CNcomment:AES_CMAC 值 CNend

\retval ::HI_SUCCESS  Success                 CNcomment:成功 CNend
\retval ::HI_FAILURE    Failure                     CNcomment:失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_CalculteAES_CMAC(HI_U8 *buffer, HI_U32 Length, HI_U8 Key[16], HI_U8 MAC[16]);

/**
\brief  Get the status of PVR recording  
CNcomment: 获取 PVR 录制信息 CNend
\attention \n
None CNcomment:无 CNend

\param[in]  u32RecChnID  The channel ID of record.        CNcomment:录制通道ID  CNend
\param[out]  SessionKey1  The Session key1 of  PVR recording .   CNcomment:   PVR 录制加密session key 1.  CNend
\param[out]  CurrentSessionKey2  The Session key2 of  PVR recording .   CNcomment:  当前 正在 使用的 PVR 录制 session key 2.  CNend


\retval ::HI_SUCCESS  Success                 CNcomment:成功 CNend
\retval ::HI_FAILURE    Failure                     CNcomment:失败 CNend
\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_PVR_GetRecStatus(HI_U32 u32RecChnID, HI_U8 SessionKey1[16], HI_U8 CurrentSessionKey2[16]);

/**
\brief Sets the algorithm of the SP key ladder CNcomment:设置SP key ladder的算法    CNend
\attention \n
You must set an algorithm before using a key ladder in a session. The default algorithm is TDES.
It is recommended that you retain the algorithm in a session.
CNcomment:每次会话过程中使用key ladder之前，须设置具体算法, 系统初始默认值 HI_UNF_ADVCA_ALG_TYPE_TDES；\n
本次会话过程中，建议保持算法的稳定不变。 CNend
\param[in] enType Key ladder algorithm CNcomment:enType  key ladder算法\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_ALG_TYPE_E
*/
HI_S32 HI_UNF_ADVCA_SetSPAlg(HI_UNF_ADVCA_ALG_TYPE_E enType);

/**
\brief Obtains the algorithm of the SP key ladder CNcomment: 获取 SP key ladder的算法    CNend
\attention \n
None CNcomment:无 CNend
\param[in] pEnType Key ladder algorithm CNcomment:pEnType  key ladder算法\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_ALG_TYPE_E
*/
HI_S32 HI_UNF_ADVCA_GetSPAlg(HI_UNF_ADVCA_ALG_TYPE_E *pEnType);

/**
\brief Sets the SP key ladder stage CNcomment:设置SP key ladder的级数    CNend
\attention \n
The key ladder stage can be set only once before delivery and cannot be changed. Please use default value.
CNcomment:机顶盒出厂时设置 仅能设置一次 不可更改,不建议使用该接口改变stage  CNend
\param[in] enStage Key ladder stage Its value is HI_UNF_ADVCA_KEYLADDER_LEV2 or HI_UNF_ADVCA_KEYLADDER_LEV3.
CNcomment:enStage  key ladder级数\n 取值只能为HI_UNF_ADVCA_KEYLADDER_lev2 或者 HI_UNF_ADVCA_KEYLADDER_lev3  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_KEYLADDER_LEV_E
*/
HI_S32 HI_UNF_ADVCA_SetSPKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage);

/**
\brief Obtains the SP key ladder stage CNcomment:获取SP key ladder的级数 CNend
\attention \n
None CNcomment:无 CNend
\param[out] penStage Key ladder stage CNcomment:penStage   key ladder级数 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_KEYLADDER_LEV_E
*/
HI_S32 HI_UNF_ADVCA_GetSPKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E *penStage);


/**
\brief Sets session keys for a SP key ladder CNcomment:为SP key ladder配置会话密钥    CNend
\attention \n
The stage of the session key cannot be greater than the configured stage of the key ladder. The last stage of the session key is configured by calling the API of the CIPHER module rather than this API.
That is, only session key 1 and session key 2 need to be configured for a 3-stage key ladder.
Only session key 1 needs to be configured for a 2-stage key ladder.
You need to set the key ladder stage by calling HI_UNF_ADVCA_SetSPKeyLadderStage first.
 Session keys can be set during initialization or changed at any time.
CNcomment:注意配置的级数不能超过设置的级数值，最后一级由Descrambler模块内部配置，不用通过此接口配置。\n
也就是说，对于3级key ladder，只用配置会话密钥1和会话密钥2。\n
对于2级的key ladder，只用配置会话密钥1。\n
请先调用HI_UNF_ADVCA_SetSPKeyLadderStage设置key ladder级数。\n
会话密钥可以初始时设置一次，也可以随时修改。 CNend
\param[in] enStage Key ladder stage Its value is HI_UNF_ADVCA_KEYLADDER_LEV2 or HI_UNF_ADVCA_KEYLADDER_LEV3.
CNcomment:enStage    密钥级数，[HI_UNF_ADVCA_KEYLADDER_LEV1 ~ HI_UNF_ADVCA_KEYLADDER_LEV2]  CNend
\param[in] pu8Key Protection key pointer, 128 bits (16 bytes) in total CNcomment:pu8Key     保护密钥指针，共128bit(16byte)  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS  成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\retval ::HI_ERR_CA_WAIT_TIMEOUT Timeout occurs when the CA module waits for encryption or decryption
CNcomment:HI_ERR_CA_WAIT_TIMEOUT CA等待加解密超时 CNend
\retval ::HI_ERR_CA_R2R_DECRYPT The CW decryption fails CNcomment:HI_ERR_CA_CW_DECRYPT   CW解密失败 CNend

\see \n
None CNcomment:无 CNend
*/
HI_S32 HI_UNF_ADVCA_SetSPSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key);

/**
\brief Sets the descramble mode of the SP key ladder CNcomment:设置SP key ladder的解扰算法    CNend
\attention \n
You must set a descramble mode before using a key ladder in a session. The default algorithm is HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_AES_CBC_CI.
It is recommended that you retain the descramble mode in a session.
CNcomment:每次会话过程中使用key ladder之前，须设置具体算法, 系统初始默认值 HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_AES_CBC_CI；\n
本次会话过程中，建议保持算法的稳定不变。 CNend
\param[in] enType Key ladder algorithm CNcomment:enType  key ladder算法\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_ALG_TYPE_E
*/
HI_S32 HI_UNF_ADVCA_SetSPDscMode(HI_UNF_ADVCA_SP_DSC_MODE_E enType);

/**
\brief Obtains the descramble mode of the SP key ladder CNcomment: 获取 SP key ladder的算法    CNend
\attention \n
None CNcomment:无 CNend
\param[in] pEnType Key ladder algorithm CNcomment:pEnType  key ladder算法\n  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功 CNend
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA 输入参数非法 CNend
\see \n
::HI_UNF_ADVCA_ALG_TYPE_E
*/
HI_S32 HI_UNF_ADVCA_GetSPDscMode(HI_UNF_ADVCA_SP_DSC_MODE_E *pEnType);

/** 
\brief Decrypts a block of LPK-encrypted data
CNcomment:解密智能卡传送给CPU的经过链路保护的分组数据 (Link Protection)  CNend
\attention
\param[in] pEncryptedBlock Block data encrypted by the LPK CNcomment:pEncryptedBlock   经LPK加密的分组数据 CNend
\param[out] pPlainBlock Plain block data. The data memory is allocated by the caller CNcomment:pPlainBlock      明文分组数据 空间由调用者分配  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS               成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT       CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA   输入参数非法 CNend
\retval ::HI_ERR_CA_NOT_SUPPORT The function is not supported CNcomment:HI_ERR_CA_NOT_SUPPORT    功能不支持 CNend
\retval ::HI_ERR_CA_WAIT_TIMEOUT Timeout occurs when the CA module waits for encryption or decryption
CNcomment:HI_ERR_CA_WAIT_TIMEOUT   CA等待加解密超时 CNend
\retval ::HI_ERR_CA_LPK_DECRYPT The API fails to decrypt the LPK block CNcomment:HI_ERR_CA_LPK_DECRYPT    LPK解密失败 CNend
\see
\li ::
*/
HI_S32 HI_UNF_ADVCA_DecryptLptBlock(HI_U8 *pEncryptedBlock,HI_U8 *pPlainBlock);

/** 
\brief  Loads link protection keys (LPKs) CNcomment: 加载LPK  CNend
\attention
\param[in] pEbcryptedLpk LPK encrypted by R2RROOTKEY CNcomment:pEncryptedLpk  用R2RROOTKEY加密的LPK  CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS               成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT       CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA   输入参数非法 CNend
\retval ::HI_ERR_CA_NOT_SUPPORT The function is not supported CNcomment:HI_ERR_CA_NOT_SUPPORT    功能不支持 CNend
\retval ::HI_ERR_CA_WAIT_TIMEOUT Timeout occurs when the CA module waits for encryption or decryption
CNcomment:HI_ERR_CA_WAIT_TIMEOUT   CA等待加解密超时 CNend
\retval ::HI_ERR_CA_LPK_DECRYPT The API fails to load the LPK CNcomment:HI_ERR_CA_LPK_DECRYPT    LPK解密失败 CNend
\see
\li ::
*/

HI_S32 HI_UNF_ADVCA_LoadLpk(HI_U8 *pEncryptedLpk);

/** 
\brief Decrypts a block of link protection key (LPK)-encrypted data
CNcomment:解密智能卡传送给CPU的经过链路保护的数据 (Link Protection)  CNend
\attention
\param[in] pCipherText buffer of the cipher text to be decrypted  CNcomment:pCipherText   密文 CNend
\param[in] s32TextLen the length of the cipher text should be larger than 8 byte CNcomment:s32TextLen    密文长度 要求大于一个Block长度 8byte  CNend
\param[out] pPlainText the buffer to store the clear text CNcomment:pPlainText   明文 CNend
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS               成功 CNend
\retval ::HI_ERR_CA_NOT_INIT The advanced CA module is not initialized. CNcomment:HI_ERR_CA_NOT_INIT       CA未初始化 CNend
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA   输入参数非法 CNend
\retval ::HI_ERR_CA_NOT_SUPPORT The function is not supported CNcomment:HI_ERR_CA_NOT_SUPPORT    功能不支持 CNend
\retval ::HI_ERR_CA_WAIT_TIMEOUT Timeout occurs when the CA module waits for encryption or decryption
CNcomment:HI_ERR_CA_WAIT_TIMEOUT   CA等待加解密超时 CNend
\retval ::HI_ERR_CA_LPK_DECRYPT The API fails to decrypt the LPK Param CNcomment:HI_ERR_CA_LPK_DECRYPT    LPK解密失败 CNend
\see
\li ::
*/
HI_S32 HI_UNF_ADVCA_DecryptLptParam(HI_U8 *pCipherText,HI_S32 s32TextLen,HI_U8 *pPlainText);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __HI_UNF_ADVCA_H__ */



