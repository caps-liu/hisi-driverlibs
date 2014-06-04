/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_hdcp.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
#include <linux/device.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/delay.h>
#include <linux/poll.h>
#include <mach/hardware.h>
#include <linux/interrupt.h>
#include <linux/delay.h>
#include <linux/mm.h>

#include "hi_common.h"
#include "hi_kernel_adapt.h"
#include "hi_drv_dev.h"
#include "hi_drv_mmz.h"
#include "hi_drv_module.h"
#include "drv_hdcp_ioctl.h"
#include "drv_otp_ext.h"
#include "drv_cipher_ext.h"

CIPHER_RegisterFunctionlist_S *g_pCIPHERExportFunctionList_forhdcp = HI_NULL;
OTP_RegisterFunctionlist_S *g_pOTPExportFunctionList_forhdcp = HI_NULL;

/*************************************************************************
*   Macro Definition   *
*************************************************************************/

/* OTP */
#define OTP_CA_PRM0       (0x00)
#define OTP_CA_PRM1       (0x04)
#define OTP_CA_PRM2       (0x08)
#define OTP_CA_PRM3       (0x0c)
#define OTP_CA_PRM4       (0x10)
#define OTP_CA_PRM5       (0x14)
#define OTP_CA_PRM6       (0x18)
#define OTP_CA_PRM7       (0x1C)

#define OTP_BOOT_MODE_SEL_0      (0x00)
#define OTP_BOOT_MODE_SEL_1      (0x01)
#define OTP_SCS_ACTIVATION       (0x02) 
#define OTP_JTAG_PRT_MODE_0      (0x03) 
#define OTP_JTAG_PRT_MODE_1      (0x04)  
#define OTP_CW_KEY_DEACTIVATION  (0x05)  
#define OTP_R2R_KEY_DEACTIVATION (0x06)  
#define OTP_DEBUG_DISABLE        (0x07) 
#define OTP_RSV                  (0x08)
#define OTP_JTAG_KEY_LEN         (0x09)
#define OTP_MKT_ID_P             (0x0A)
#define OTP_STB_SN_P             (0x0B)
#define OTP_CW_LV_ORG            (0x0C)
#define OTP_CW_LV_SEL            (0x0D)
#define OTP_SECURE_CHIP_P        (0x0E)
#define OTP_CW_INFO_P            (0x0F)
#define OTP_BLOAD_DEC_EN         (0x10)
#define OTP_R2R_LV_SEL           (0x11)
#define OTP_LINK_PRT_DISABLE     (0x12)
#define OTP_BOOTSEL_LOCK         (0x13)
#define OTP_CA_RSV_LOCK          (0x14)
#define OTP_TDES_LOCK            (0x15)
#define OTP_CW_LV_LOCK           (0x16)
#define OTP_R2R_LV_LOCK          (0x17)
#define OTP_R2R_HARD_KEY_LOCK    (0x18)
#define OTP_SELF_BOOT_DISABLE    (0x19)

#define OTP_JTAG_KEY0     (0x20)
#define OTP_JTAG_KEY1     (0x24)
#define OTP_CHIPID        (0x28)
#define OTP_MARKETID      (0x2c)
#define OTP_DVB_ROOTKEY0  (0x30)
#define OTP_DVB_ROOTKEY1  (0x34)
#define OTP_DVB_ROOTKEY2  (0x38)
#define OTP_DVB_ROOTKEY3  (0x3C)
#define OTP_R2R_ROOTKEY0  (0x40)
#define OTP_R2R_ROOTKEY1  (0x44)
#define OTP_R2R_ROOTKEY2  (0x48)
#define OTP_R2R_ROOTKEY3  (0x4C)
#define OTP_STB_SN        (0x50)
#define OTP_SECURE_CHIP   (0x55)   /*CA manufacturer ID*/
#define OTP_CW_INFO_RSV   (0x57)
#define OTP_CW_HARD_SEL   (0x58)
#define OTP_CSA3_SEL      (0x5C)
#define OTP_HDCP          (0x60)
#define OTP_RSA           (0x200)
#define OTP_SR            (0x400)
/*************************************************************************
*  Structure  *
*************************************************************************/

/*************************************************************************
*  Variable  *
*************************************************************************/
HI_DECLARE_MUTEX(g_SetHDCPSem);
/*************************************************************************
*  SetHDCP func  *
*************************************************************************/

static HI_S32 HDCPKey_DecryptAndFormat(HI_UNF_HDCP_HDCPKEY_S *pSrcKey, OTP_HDCPKEY_S *pstOtpHdcpKey);

#define ENCRYPTED_HDCPKEY_LENGTH 320

#define P32 0xEDB88320L
static HI_S32 crc_tab32_init = 0;
static HI_U32 crc_tab32[256];

static HI_VOID init_crc32_tab( HI_VOID ) 
{
    HI_U32 i,j;
    HI_U32 u32Crc = 0;
 
    for (i=0; i<256; i++) {
        u32Crc = (HI_U32) i;
        for (j=0; j<8; j++) {
            if (u32Crc & 0x00000001L) {
                u32Crc = (u32Crc >> 1) ^ P32;
            } else {
                u32Crc = u32Crc >> 1;
            }
        }
        crc_tab32[i] = u32Crc;
    }
    crc_tab32_init = 1;
} 

static HI_U32 update_crc_32(HI_U32 u32Crc, HI_CHAR s8C) 
{
    HI_U32 u32Tmp, u32Long_c;

    u32Long_c = 0x000000ffL & (HI_U32) s8C;
    u32Tmp = u32Crc ^ u32Long_c;
    u32Crc = (u32Crc >> 8) ^ crc_tab32[u32Tmp & 0xff];
    return u32Crc;
} 

static HI_S32 HDCPKey_CRC32( HI_U8* pu8Buff,HI_U32 length, HI_U32 *pu32Crc32Result)
{
    HI_U32 u32Crc32 = 0;
    HI_U32 i = 0;
    u32Crc32 = 0xffffffffL;

    if ( (NULL == pu32Crc32Result) || (NULL == pu8Buff) )
    {
        return HI_FAILURE;
    }
    
    if (!crc_tab32_init) {
		init_crc32_tab();
    }
    for(i=0 ; i < length ; i++) {
        u32Crc32 = update_crc_32(u32Crc32,(char)pu8Buff[i]);
    }
    u32Crc32 ^= 0xffffffffL;

    *pu32Crc32Result = u32Crc32;
    
    return HI_SUCCESS;
}

static HI_VOID HDCPKey_Format(HI_UNF_HDCP_DECRYPT_S *pSrcKey, OTP_HDCPKEY_S *pDstKey)
{
	HI_S32        i;
	HI_U8         TailBytes[31] = {0x14, 0xf7, 0x61, 0x03, 0xb7, 0x59, 0x45, 0xe3,
		                           0x0c, 0x7d, 0xb4, 0x45, 0x19, 0xea, 0x8f, 0xd2, 
                                   0x89, 0xee, 0xbd, 0x90, 0x21, 0x8b, 0x05, 0xe0,
                                   0x4e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
	HI_U32        CheckSum = 0xa3c5;
    HI_U32        XorValue,Temp;

	memset(pDstKey->HdcpKey, 0, 320);

	/* Byte 0*/
    pDstKey->HdcpKey[0] = 0x00;
    /* Byte 1 ~ 5 KSV */
    for (i = 0; i < 5; i ++)
    {
        pDstKey->HdcpKey[1 + i] = pSrcKey->u8KSV[i];
    }
	/* Byte 8 */
    pDstKey->HdcpKey[8] = 0xa8;
    /* Byte 9 ~ 288 Device Private Key */
    for (i = 0; i < 280; i ++)
    {
        pDstKey->HdcpKey[9 + i] = pSrcKey->u8PrivateKey[i];
    }
    /* Byte 289 ~ 319 */
    for (i = 0; i < 31; i ++)
    {
        pDstKey->HdcpKey[289 + i] = TailBytes[i];
    }

    /* Count CRC value */
    for(i=0; i<320; i++)
    {
        if((i>=6) && (i<=8)) 
        {
	        continue;        	
        }
        XorValue = CheckSum ^ pDstKey->HdcpKey[i];
        Temp = ~((XorValue >> 7) ^ (XorValue >> 16));
        XorValue = XorValue << 1;
        XorValue = (XorValue & 0x1fffe) | (Temp & 1);
        CheckSum = XorValue;
    }
	
    for(i=0; i<8; i++)
    {
        XorValue = CheckSum;
        Temp = ~((XorValue >> 7) ^ (XorValue >> 16));
        XorValue = XorValue << 1;
        XorValue = (XorValue & 0x1fffe) | (Temp & 1);
        CheckSum = XorValue;
    }

	/* Byte 6 && 7  CRC Value */
    pDstKey->HdcpKey[6] = CheckSum & 0xff;
    pDstKey->HdcpKey[7] = (CheckSum >> 8) & 0xff;

	return;
}

static HI_BOOL	g_bDataDone;
wait_queue_head_t cipher_wait_queue;
static HI_VOID DRV_CIPHER_UserCommCallBack(HI_U32 arg)
{
    HI_INFO_HDCP("arg=%#x.\n", arg);

    g_bDataDone = HI_TRUE;
    wake_up_interruptible(&cipher_wait_queue);

    return ;
}
static HI_S32 HDCPKey_CipherAesCbc(HI_U8 *pu8Input,
                                    HI_U32 u32InputLen, 
                                    HI_DRV_CIPHER_HDCP_KEY_MODE_E enHdcpEnMode, 
                                    HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E enRamMode,
                                    HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enKeyType,
                                    HI_BOOL bIsDecryption, 
                                    HI_U8 *pu8Output)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 softChnId = 0;
    HI_UNF_CIPHER_CTRL_S CipherCtrl;
    HI_DRV_CIPHER_TASK_S pCITask;
    HI_U32 i = 0;

    HI_DECLARE_MUTEX(g_CipherMutexKernel);

    if ( NULL == pu8Input )
    {
        HI_ERR_HDCP("Invalid param , null pointer input!\n");
        return HI_FAILURE;
    }

    if ((NULL == pu8Output ) && (HI_FALSE == bIsDecryption))
    {
        HI_ERR_HDCP("Invalid param , null pointer!\n");
        return HI_FAILURE;
    }

    if ( CIPHER_HDCP_MODE_HDCP_KEY != enHdcpEnMode)
    {
        HI_ERR_HDCP("Invalid HDCP mode!\n");
        return HI_FAILURE;
    }

    if ( 320 != u32InputLen)
    {
        HI_ERR_HDCP("Invalid keylength input!\n");
        return HI_FAILURE;
    }
   			    
    memset(&pCITask, 0, sizeof(pCITask));
    memset(&CipherCtrl, 0, sizeof(CipherCtrl));

    Ret = (g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_OpenChn)(softChnId);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_HDCP("(g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_OpenChn) failed\n");
        (HI_VOID)(g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_ClearHdcpConfig)();
        return HI_FAILURE;
    }

    for(i = 0;i < 20; i++)
    {
        Ret = down_interruptible(&g_CipherMutexKernel);
        
    /* config hdcp param */
        Ret = (g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_HdcpParamConfig)(enHdcpEnMode, enRamMode, enKeyType);
        if ( HI_FAILURE == Ret)
        {
            up(&g_CipherMutexKernel);
            return HI_FAILURE;
        } 

        CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
        CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
        CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
        CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;        
        memset(CipherCtrl.u32IV, 0 , sizeof(CipherCtrl.u32IV));
        CipherCtrl.stChangeFlags.bit1IV = (0 == i) ? 1 : 0;            

       
        Ret = (g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_ConfigChn)(softChnId, &CipherCtrl, DRV_CIPHER_UserCommCallBack);

        memcpy((HI_U8 *)(pCITask.stData2Process.u32DataPkg), pu8Input + (i * 16), 16);
        pCITask.stData2Process.u32length = 16;
        pCITask.stData2Process.bDecrypt = bIsDecryption;
        pCITask.u32CallBackArg = softChnId;
        
        Ret = (g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_CreatTask)(softChnId, &pCITask, NULL, NULL);
        if (HI_SUCCESS != Ret)
        {
            (HI_VOID)(g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_ClearHdcpConfig)();
            (g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_CloseChn)(softChnId);
            HI_ERR_HDCP("(g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_CreatTask) call failed\n");
            up(&g_CipherMutexKernel);        
            return HI_FAILURE;
        }

        if ( NULL != pu8Output )
        {
            memcpy(pu8Output + ( i * 16), (HI_U8 *)(pCITask.stData2Process.u32DataPkg), 16);
        }
        up(&g_CipherMutexKernel); 
        
    }//end for
                 
    (HI_VOID)(g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_ClearHdcpConfig)();
    (g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_CloseChn)(softChnId);    
    HI_INFO_HDCP("In Drv_burnhdcp:Decrypt OK, chnNum = %#x!\n", softChnId);	    
    
    return HI_SUCCESS;
}

static HI_S32 HDCPKey_Decryption(HI_UNF_HDCP_HDCPKEY_S *pSrcKey,  HI_UNF_HDCP_DECRYPT_S *pDstkey)
{
	HI_U32 softChnId = 0;
	HI_U8 key[16];
	HI_U8 ResultBuf[320];
	HI_S32 Ret = HI_SUCCESS;
	HI_U8 VersionBuf[8];
	HI_BOOL ValidFlag = HI_TRUE;
	HI_U32 i = 0;
    HI_S32 ret = HI_SUCCESS;
	HI_UNF_HDCP_ENCRYPT_S stEncryptKey;
	HI_UNF_CIPHER_CTRL_S CipherCtrl;
	MMZ_BUFFER_S encrypt_buf, decrypt_buf;
	HI_DRV_CIPHER_TASK_S stCITask;
	HI_DECLARE_MUTEX(g_CipherMutexKernel);
	init_waitqueue_head(&cipher_wait_queue);

	if(!pSrcKey->EncryptionFlag)
	{
		HI_ERR_HDCP("EncryptionFlag Error!\n");
		return HI_FAILURE;
	}
	
	//stEncryptKey = (HI_UNF_HDCP_ENCRYPT_S)(pSrcKey->key.EncryptData);
    memset(&stEncryptKey, 0, sizeof(stEncryptKey));
	memcpy(&stEncryptKey, &pSrcKey->key, sizeof(HI_UNF_HDCP_ENCRYPT_S));
	
    ret = down_interruptible(&g_CipherMutexKernel);			
	softChnId = 7;
	Ret = (g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_OpenChn)(softChnId);
	if (HI_SUCCESS != Ret)
	{
		up(&g_CipherMutexKernel);
		HI_ERR_HDCP("Cipher open chn failed\n");
		return HI_FAILURE;
	}

    memset(&CipherCtrl, 0, sizeof(CipherCtrl));
	CipherCtrl.bKeyByCA = HI_FALSE;
	CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
	CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
	CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_8BIT;
	CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
	CipherCtrl.stChangeFlags.bit1IV = 1;

    memset(VersionBuf, 0, sizeof(VersionBuf));
	memcpy(VersionBuf, &stEncryptKey.u8EncryptKey[8], 8);
	
	for(i = 0; i < 8; ++i)
	{
		if(VersionBuf[i] != "V0000001"[i])
		{
			ValidFlag = HI_FALSE;
			i = 8;
		}
	}

	if(!ValidFlag)
	{
		HI_ERR_HDCP("EncryptKey check version failed\n");
		return HI_FAILURE;
	}

	memset(key, 0, sizeof(key)); 
	key[0] = 'z';
	key[1] = 'h';
	key[2] = 'o';
	key[3] = 'n';
	key[4] = 'g'; 
	memcpy((HI_U8 *)CipherCtrl.u32Key, key, sizeof(key));
	
	memset(CipherCtrl.u32IV, 0, sizeof(CipherCtrl.u32IV));

	Ret = (g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_ConfigChn)(softChnId, &CipherCtrl, DRV_CIPHER_UserCommCallBack);
	up(&g_CipherMutexKernel);

    memset(&encrypt_buf, 0, sizeof(encrypt_buf));
	if (HI_SUCCESS != HI_DRV_MMZ_AllocAndMap("EncryptBuf", MMZ_OTHERS, 320, 32, &encrypt_buf))
	{					
		HI_ERR_HDCP("CMPI_MEM_AllocAndMapMem EncryptBuf failed\n");
		return HI_FAILURE;
	}

	memset((HI_U8 *)(encrypt_buf.u32StartVirAddr), 0x0, 320);

    memset(&decrypt_buf, 0, sizeof(decrypt_buf));
	if (HI_SUCCESS != HI_DRV_MMZ_AllocAndMap("DecryptBuf", MMZ_OTHERS, 320, 32, &decrypt_buf))
	{
		HI_DRV_MMZ_UnmapAndRelease(&encrypt_buf);
		HI_ERR_HDCP("CMPI_MEM_AllocAndMapMem EncryptBuf failed\n");
		return HI_FAILURE;
	}

	memset((HI_U8 *)(decrypt_buf.u32StartVirAddr), 0x0, 320);

	memcpy((HI_U8 *)encrypt_buf.u32StartVirAddr, (HI_U8 *)stEncryptKey.u8EncryptKey + 48, 320);

    memset(&stCITask, 0, sizeof(stCITask));
	stCITask.stData2Process.u32src = encrypt_buf.u32StartPhyAddr;
	stCITask.stData2Process.u32dest = decrypt_buf.u32StartPhyAddr;
	stCITask.stData2Process.u32length = 320;
	stCITask.stData2Process.bDecrypt = HI_TRUE;

	stCITask.u32CallBackArg = softChnId; 	
	HI_INFO_HDCP("In drv_sethdcp:Start to Decrypt, chnNum = %#x!\n", softChnId);		

    g_bDataDone = HI_FALSE;
    
	Ret = (g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_CreatTask)(softChnId, &stCITask, NULL, NULL);
	if (HI_SUCCESS != Ret)
	{
		HI_DRV_MMZ_UnmapAndRelease(&encrypt_buf);
		HI_DRV_MMZ_UnmapAndRelease(&decrypt_buf);
		HI_ERR_HDCP("(g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_CreatTask) call failed\n");
		return HI_FAILURE;
	}

	if (0 == wait_event_interruptible_timeout(cipher_wait_queue, g_bDataDone != HI_FALSE, 200*HZ/1000))
	{
		HI_DRV_MMZ_UnmapAndRelease(&encrypt_buf);
		HI_DRV_MMZ_UnmapAndRelease(&decrypt_buf);
		HI_ERR_HDCP("Encrypt time out!\n");
		return HI_FAILURE;
	}

    memset(&ResultBuf, 0, sizeof(ResultBuf));
	memcpy(ResultBuf, (HI_U8 *)decrypt_buf.u32StartVirAddr, 320);
	if(ResultBuf[5] || ResultBuf[6] || ResultBuf[7])
	{
		HI_DRV_MMZ_UnmapAndRelease(&encrypt_buf);
		HI_DRV_MMZ_UnmapAndRelease(&decrypt_buf);
		HI_ERR_HDCP("Check bit[5:7] failed after decrypt!\n");
		return HI_FAILURE;
	}
	memcpy(pDstkey->u8KSV, ResultBuf, sizeof(pDstkey->u8KSV));
	memcpy(pDstkey->u8PrivateKey, ResultBuf + 8, sizeof(pDstkey->u8PrivateKey));
			
	HI_DRV_MMZ_UnmapAndRelease(&encrypt_buf);
	HI_DRV_MMZ_UnmapAndRelease(&decrypt_buf);
	(g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_CloseChn)(softChnId);
	HI_INFO_HDCP("In Drv_burnhdcp:Decrypt OK, chnNum = %#x!\n", softChnId);

	
	return HI_SUCCESS;
}


static HI_S32 HDCPKey_Encryption(OTP_HDCP_KEY_TRANSFER_S *pstHdcpKeyTransfer)    
{
    HI_S32 s32Ret = HI_SUCCESS;
    OTP_HDCPKEY_S stOtpHdcpKey;
    HI_U8 u8KeyBuf[320];    
    HI_U32 u32CRC_0 = 0;
	HI_U32 u32CRC_1 = 0;
    HI_U8 u8WriteFlagChar[2] = {'H', 'I'};

    if ( NULL== pstHdcpKeyTransfer)
    {
        HI_ERR_HDCP("Invalid param, null pointer!\n");
        return HI_FAILURE;
    }

    memset(&stOtpHdcpKey, 0, sizeof(stOtpHdcpKey));
    memset(u8KeyBuf, 0, sizeof(u8KeyBuf));

    s32Ret = (g_pCIPHERExportFunctionList_forhdcp->DRV_Cipher_SoftReset)();
    if ( HI_SUCCESS != s32Ret )
    {
        HI_ERR_HDCP("CIPHER Soft Reset Error!\n");
        return HI_FAILURE;
    }
    
    /* header config */
    if ( HI_TRUE ==  pstHdcpKeyTransfer->bIsUseOTPRootKey)
    {    
        memset(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[0]), 0x00, 1);
    }
    else
    {
        memset(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[0]), 0x80, 1);
    }
    memset(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[1]), 0x00, 1);
    /* 'H' 'I' display that the Encrypted Hdpcp Key Exists */
    memcpy(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[2]), u8WriteFlagChar, 2);

    /* format clear text to 320 bytes*/
    if ( HI_TRUE == pstHdcpKeyTransfer->stHdcpKey.EncryptionFlag)
    {
        s32Ret = HDCPKey_DecryptAndFormat(&(pstHdcpKeyTransfer->stHdcpKey), &stOtpHdcpKey);
        if ( HI_FAILURE == s32Ret)
        {
            HI_ERR_HDCP("HDCPKey decytion and format failed!\n");
            return HI_FAILURE;
        }
    }
    else
    {
        HDCPKey_Format((HI_UNF_HDCP_DECRYPT_S *)&pstHdcpKeyTransfer->stHdcpKey.key, &stOtpHdcpKey);                            
    }

    /* encrypt formated text*/
    if ( HI_TRUE ==  pstHdcpKeyTransfer->bIsUseOTPRootKey)
    {
        s32Ret = HDCPKey_CipherAesCbc(stOtpHdcpKey.HdcpKey, 
                                    320, 
                                    CIPHER_HDCP_MODE_HDCP_KEY,
                                    CIPHER_HDCP_KEY_RAM_MODE_WRITE,
                                    CIPHER_HDCP_KEY_TYPE_OTP_ROOT_KEY,
                                    HI_FALSE,
                                    u8KeyBuf );
        if ( HI_FAILURE == s32Ret)
        {
            HI_ERR_HDCP("Encrypt HDCP Key using rootkey in otp failed!\n");
            return HI_FAILURE;
        }            
        
    }
    else
    {
        s32Ret = HDCPKey_CipherAesCbc(stOtpHdcpKey.HdcpKey, 
                                    320, 
                                    CIPHER_HDCP_MODE_HDCP_KEY,
                                    CIPHER_HDCP_KEY_RAM_MODE_WRITE,
                                    CIPHER_HDCP_KEY_TYPE_HISI_DEFINED,
                                    HI_FALSE,
                                    u8KeyBuf );
        if ( HI_FAILURE == s32Ret)
        {
            HI_ERR_HDCP("Encrypt HDCP Key using rootkey in otp failed!\n");
            return HI_FAILURE;
        }            
    }
    memcpy(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[4]), u8KeyBuf, 320);
      
    
    /* crc32_0 and crc32_1  calculate */
    s32Ret = HDCPKey_CRC32(stOtpHdcpKey.HdcpKey, 320, &u32CRC_0);
    if ( HI_FAILURE == s32Ret)
    {
        HI_ERR_HDCP("CRC32_0 calc failed!\n");
        return HI_FAILURE;
    }        
    memcpy(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[324]), &u32CRC_0, 4);
    
    s32Ret = HDCPKey_CRC32(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey, (332-4), &u32CRC_1);
    if ( HI_FAILURE == s32Ret)
    {
        HI_ERR_HDCP("CRC32_1 calc failed!\n");
        return HI_FAILURE;
    }
    memcpy(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[328]), &u32CRC_1, 4);
    
    return HI_SUCCESS;
}

static HI_S32 HDCPKey_DecryptAndFormat(HI_UNF_HDCP_HDCPKEY_S *pSrcKey, OTP_HDCPKEY_S *pstOtpHdcpKey)
{
    HI_S32 ret = HI_SUCCESS;
    HI_UNF_HDCP_DECRYPT_S DstKey;

    if ( NULL == pstOtpHdcpKey)
    {
        HI_ERR_HDCP("Invalid param, null pointer!\n");
        return HI_FAILURE;
    }

    memset(&DstKey, 0, sizeof(DstKey));

    if(pSrcKey->EncryptionFlag)
    {
        ret = HDCPKey_Decryption(pSrcKey, &DstKey);
        if(ret != HI_SUCCESS)
        {
        	HI_ERR_HDCP("HDCPKey_Decryption failed!\n");
        	return HI_FAILURE;
        }
    }
    else
    {
        memcpy(&DstKey, &pSrcKey->key, sizeof(HI_UNF_HDCP_DECRYPT_S));
    }
#if 0 
    if(pSrcKey->Reserved == 0xabcd1234)
    {
        int i;

        HI_INFO_HDCP("\n***** Debug HDCP Key, just debug HDCP key, Do not really write key *****\n");
        HI_INFO_HDCP("u8KSV:\n");
        for(i = 0; i < 5; ++i)
        {
        	HI_INFO_HDCP("%02X ", DstKey.u8KSV[i]);
        }

        HI_INFO_HDCP("\n u8PrivateKey:\n");
        for(i = 0; i < 280; ++i)
        {
        	HI_INFO_HDCP("%02X ", DstKey.u8PrivateKey[i]);
        	if(((i+1)%16) == 0)
        		HI_INFO_HDCP("\n");
        }
        HI_INFO_HDCP("\n\n");

        return HI_SUCCESS;
    }
#endif    
 
    //transform HDCP key to Chip's requirement!
    HDCPKey_Format(&DstKey, pstOtpHdcpKey);

    return HI_SUCCESS;
}

HI_S32 HDCP_Ioctl(struct inode *inode, struct file *file,
                       unsigned int cmd, void* arg)
{
    HI_S32 s32Ret = HI_SUCCESS;

    s32Ret = down_interruptible(&g_SetHDCPSem);
    if (s32Ret)
    {
        HI_ERR_HDCP("%s:  down_interruptible err ! \n", __FUNCTION__);
        return s32Ret;
    }

    switch (cmd)
    {
        case CMD_HDCP_ENCRYPTKEY:
        {    
            OTP_HDCP_KEY_TRANSFER_S * pstOtpDecryptHdcpKeyTransfer = (OTP_HDCP_KEY_TRANSFER_S *)arg;            
            s32Ret = HDCPKey_Encryption(pstOtpDecryptHdcpKeyTransfer);
            if ( HI_SUCCESS != s32Ret)
            {
                HI_ERR_HDCP("HDCPKEY_Encryption failed!\n");
                s32Ret = HI_FAILURE;
            }
            
            break;
        }                 
        default:
        {
            s32Ret = -ENOIOCTLCMD;
            break;
        }
    }

    up(&g_SetHDCPSem);
    if (HI_SUCCESS == s32Ret)
    {
        HI_INFO_HDCP("set hdcp cmd = 0x%08x  ok !\n", cmd);
    }

    return s32Ret;
}

int DRV_HDCP_Open(struct inode *inode, struct file *filp)
{
    if (down_interruptible(&g_SetHDCPSem))
    {
        HI_ERR_HDCP("%s:  down_interruptible err ! \n", __FUNCTION__);
        return -1;
    }
    
    (HI_VOID)HI_DRV_MODULE_GetFunction(HI_ID_CIPHER, (HI_VOID**)&g_pCIPHERExportFunctionList_forhdcp);
    if( NULL == g_pCIPHERExportFunctionList_forhdcp)
    {
    	HI_ERR_HDCP("Get cipher functions failed!\n");
    	up(&g_SetHDCPSem);
    	return -1;
    }
    
    HI_DRV_MODULE_GetFunction(HI_ID_OTP, (HI_VOID**)&g_pOTPExportFunctionList_forhdcp);
    if( NULL == g_pOTPExportFunctionList_forhdcp)
    {
    	HI_ERR_HDCP("Get otp functions failed!\n");
    	up(&g_SetHDCPSem);
    	return -1;
    }

    up(&g_SetHDCPSem);
    return 0;
}

int DRV_HDCP_Release(struct inode *inode, struct file *filp)
{
    if (down_interruptible(&g_SetHDCPSem))
    {
        HI_ERR_HDCP("%s:  down_interruptible err ! \n", __FUNCTION__);
        return -1;
    }

    up(&g_SetHDCPSem);
    return 0;
}
