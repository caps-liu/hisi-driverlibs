/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_cipher.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
//#include <asm/arch/hardware.h>
#include <asm/setup.h>
#include <asm/barrier.h>    /* mb() */
#include <asm/uaccess.h>
#include <linux/string.h>
#include <linux/slab.h>
#include <linux/errno.h>
#include <linux/miscdevice.h>
#include <linux/fcntl.h>
#include <linux/param.h>
#include <linux/delay.h>

#include <linux/init.h>
#include <asm/io.h>
#include <linux/delay.h>
#include <linux/proc_fs.h>
#include <linux/workqueue.h>
#include <linux/module.h>
#include <linux/sched.h>
#include <linux/list.h>
#include <linux/wait.h>
//#include <asm/semaphore.h>
#include <linux/spinlock.h>
#include <linux/version.h>
#include <linux/interrupt.h>
#include <linux/time.h>
#include <linux/random.h>

#include "hi_type.h"
#include "hi_debug.h"
#include "hi_common.h"
#include "drv_cipher_define.h"
#include "drv_cipher_ioctl.h"
#include "drv_cipher_ext.h"
#include "hi_kernel_adapt.h"
#include "hi_drv_mmz.h"
#include "hi_drv_module.h"
#include "hal_cipher.h"
#include "drv_cipher.h"
#include "drv_cipher_sha1.h"
#include "drv_cipher_sha2.h"

extern HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipID);

#define CIPHER_NAME "HI_CIPHER"

#define CI_BUF_LIST_SetIVFlag(u32Flags)
#define CI_BUF_LIST_SetEndFlag(u32Flags)

static CIPHER_RegisterFunctionlist_S s_CIPHERExportFunctionList =
{
	.DRV_Cipher_OpenChn =           DRV_Cipher_OpenChn,
	.DRV_Cipher_CloseChn =          DRV_Cipher_CloseChn,
	.DRV_Cipher_ConfigChn =         DRV_Cipher_ConfigChn,
	.DRV_Cipher_CreatTask =         DRV_Cipher_CreatTask,
	.DRV_Cipher_HdcpParamConfig =   DRV_Cipher_HdcpParamConfig,
	.DRV_Cipher_ClearHdcpConfig =   DRV_Cipher_ClearHdcpConfig,
	.DRV_Cipher_SoftReset =         DRV_Cipher_SoftReset,
	.DRV_Cipher_LoadHdcpKey =       DRV_Cipher_LoadHdcpKey,
	.DRV_Cipher_CalcHashInit =      DRV_Cipher_CalcHashInit,
	.DRV_Cipher_CalcHashUpdate =    DRV_Cipher_CalcHashUpdate,
    .DRV_Cipher_CalcHashFinal =     DRV_Cipher_CalcHashFinal,
};

typedef struct hiCIPHER_IV_VALUE_S
{
    HI_U32    u32PhyAddr;
    HI_U32   *pu32VirAddr;
    //HI_U8   au8IVValue[CI_IV_SIZE];
} CIPHER_IV_VALUE_S;


/*
-----------------------------------------------------------
0 | input buf list Node(16Byte) | ...  * CIPHER_MAX_LIST_NUM  | = 16*CIPHER_MAX_LIST_NUM
-----------------------------------------------------------
  | output buf list Node(16Byte)| ...  * CIPHER_MAX_LIST_NUM  |
-----------------------------------------------------------
  | IV (16Byte)                 | ...  * CIPHER_MAX_LIST_NUM  |
-----------------------------------------------------------
... * 7 Channels


*/

typedef struct hiCIPHER_PKGN_MNG_S
{
    HI_U32              u32TotalPkg;  /*  */
    HI_U32              u32CurrentPtr;
    HI_U32              u32BusyCnt;
    HI_U32              u32FreeCnt;
} CIPHER_PKGN_MNG_S;

typedef struct hiCIPHER_PKG1_MNG_S
{
    HI_U32              au32Data[4];
} CIPHER_PKG1_MNG_S;

typedef union hiCIPHER_DATA_MNG_U
{
    CIPHER_PKGN_MNG_S  stPkgNMng;
    CIPHER_PKG1_MNG_S  stPkg1Mng;
}CIPHER_DATA_MNG_U;

typedef struct hiCIPHER_CHAN_S
{
    HI_U32                  chnId;
    CI_BUF_LIST_ENTRY_S     *pstInBuf;
    CI_BUF_LIST_ENTRY_S     *pstOutBuf;
    CIPHER_IV_VALUE_S       astCipherIVValue[CIPHER_MAX_LIST_NUM]; /*  */
    HI_U32                  au32WitchSoftChn[CIPHER_MAX_LIST_NUM];
    HI_U32                  au32CallBackArg[CIPHER_MAX_LIST_NUM];
    HI_BOOL                 bNeedCallback[CIPHER_MAX_LIST_NUM];                                               
    CIPHER_DATA_MNG_U       unInData;
    CIPHER_DATA_MNG_U       unOutData;
} CIPHER_CHAN_S;

typedef struct hiCIPHER_SOFTCHAN_S
{
    HI_BOOL               bOpen;
    HI_U32                u32HardWareChn;

    HI_UNF_CIPHER_CTRL_S  stCtrl;

    HI_BOOL               bIVChange;
    HI_BOOL               bKeyChange;
    HI_U32                u32LastPkg;     /* save which pkg's IV we should use for next pkg */
    HI_BOOL               bDecrypt;       /* hi_false: encrypt */

    HI_U32                u32PrivateData;
    funcCipherCallback    pfnCallBack;

} CIPHER_SOFTCHAN_S;

/********************** Global Variable declaration **************************/
extern HI_U32 g_u32CipherStartCase;


typedef struct hiCIPHER_COMM_S
{
    MMZ_BUFFER_S        stPhyBuf;
} CIPHER_COMM_S;
extern HI_U32 g_u32CipherEndCase;

/* */
static CIPHER_COMM_S g_stCipherComm;
static CIPHER_CHAN_S g_stCipherChans[CIPHER_CHAN_NUM];
static CIPHER_SOFTCHAN_S g_stCipherSoftChans[CIPHER_SOFT_CHAN_NUM];

extern HI_VOID DRV_CIPHER_UserCommCallBack(HI_U32 arg);

#define P32 0xEDB88320L
static HI_S32 crc_tab32_init = 0;
static HI_U32 crc_tab32[256];

static HI_VOID init_crc32_tab( HI_VOID ) 
{
    HI_U32 i,j;
    HI_U32 u32Crc;
 
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

static HI_S32 Cipher_CRC32( HI_U8* pu8Buff,HI_U32 length, HI_U32 *pu32Crc32Result)
{
    HI_U32 u32Crc32;
    HI_U32 i;
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

static HI_S32 Cipher_HashMsgPadding(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_U32 u32Tmp = 0;
    HI_U32 i = 0;
    HI_U8 u8PadLen[8];

    if( NULL == pCipherHashData )
    {
        HI_ERR_CIPHER("Error! Null pointer input!\n");
        return HI_FAILURE;
    }

    memset(pCipherHashData->u8Padding, 0, sizeof(pCipherHashData->u8Padding));
    
    u32Tmp = pCipherHashData->u32TotalDataLen % CIPHER_HASH_PAD_MAX_LEN;
    /* 56 = 64 - 8, 120 = 56 + 64 */
    pCipherHashData->u32PaddingLen = (u32Tmp < 56) ? (56 - u32Tmp) : (120 - u32Tmp);
    /* add 8 bytes fix data length */
    pCipherHashData->u32PaddingLen += 8;

    /* Format(binary): {data|1000...00| fix_data_len(bits)} */
    memset(pCipherHashData->u8Padding, 0x80, 1);
    memset(pCipherHashData->u8Padding + 1, 0, pCipherHashData->u32PaddingLen - 1 - 8);
    /* write 8 bytes fix data length */
    memset(u8PadLen, 0, sizeof(u8PadLen));
    u32Tmp = pCipherHashData->u32TotalDataLen;

    if( (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType)
     || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType) )
    {
        for (i = 0; i < 8; i++)
        {
            u8PadLen[i] = ((u32Tmp * 8 + 512) >> (7 - i) * 8) & 0xff;
        }
    }
    else
    {
        for (i = 0; i < 8; i++)
        {
            u8PadLen[i] = ((u32Tmp * 8) >> (7 - i) * 8) & 0xff;
        }
    }
    
    memcpy(pCipherHashData->u8Padding + pCipherHashData->u32PaddingLen - 8, u8PadLen, 8);

    return HI_SUCCESS;
}

static HI_S32 Cipher_HdcpKeyAesCbc(HI_U8 *pu8Input,
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
    HI_DRV_CIPHER_TASK_S stCITask;
    HI_U32 i = 0;

    HI_DECLARE_MUTEX(g_CipherMutexKernel);

    if ( NULL == pu8Input )
    {
        HI_ERR_CIPHER("Invalid param , null pointer input!\n");
        return HI_FAILURE;
    }

    if ((NULL == pu8Output ) && (HI_FALSE == bIsDecryption))
    {
        HI_ERR_CIPHER("Invalid param , null pointer!\n");
        return HI_FAILURE;
    }

    if ( CIPHER_HDCP_MODE_HDCP_KEY != enHdcpEnMode)
    {
        HI_ERR_CIPHER("Invalid HDCP mode!\n");
        return HI_FAILURE;
    }

    if ( 320 != u32InputLen)
    {
        HI_ERR_CIPHER("Invalid keylength input!\n");
        return HI_FAILURE;
    }
   			    
    softChnId = 0;
    Ret = DRV_Cipher_OpenChn(softChnId);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CIPHER("DRV_Cipher_OpenChn failed\n");
        (HI_VOID)DRV_Cipher_ClearHdcpConfig();
        return HI_FAILURE;
    }

    for(i = 0;i < 20; i++)
    {
        Ret = down_interruptible(&g_CipherMutexKernel);
        
    /* config hdcp param */
        Ret = DRV_Cipher_HdcpParamConfig(enHdcpEnMode, enRamMode, enKeyType);
        if ( HI_FAILURE == Ret)
        {
            up(&g_CipherMutexKernel);
            return HI_FAILURE;
        }

        memset(&CipherCtrl, 0 , sizeof(CipherCtrl));        
        CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
        CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
        CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
        CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;        
        memset(CipherCtrl.u32IV, 0 , sizeof(CipherCtrl.u32IV));
        CipherCtrl.stChangeFlags.bit1IV = (0 == i) ? 1 : 0;            

        Ret = DRV_Cipher_ConfigChn(softChnId, &CipherCtrl, DRV_CIPHER_UserCommCallBack);

        memset(&stCITask, 0, sizeof(stCITask));
        memcpy((HI_U8 *)(stCITask.stData2Process.u32DataPkg), pu8Input + (i * 16), 16);
        stCITask.stData2Process.u32length = 16;
        stCITask.stData2Process.bDecrypt = bIsDecryption;
        stCITask.u32CallBackArg = softChnId;

        Ret = DRV_Cipher_CreatTask(softChnId, &stCITask, NULL, NULL);
        if (HI_SUCCESS != Ret)
        {
            (HI_VOID)DRV_Cipher_ClearHdcpConfig();
            DRV_Cipher_CloseChn(softChnId);
            HI_ERR_CIPHER("DRV_Cipher_CreatTask call failed\n");
            up(&g_CipherMutexKernel);        
            return HI_FAILURE;
        }

        if ( NULL != pu8Output )
        {
            memcpy(pu8Output + ( i * 16), (HI_U8 *)(stCITask.stData2Process.u32DataPkg), 16);
        }
        up(&g_CipherMutexKernel); 
        
    }//end for

    (HI_VOID)DRV_Cipher_ClearHdcpConfig();
    DRV_Cipher_CloseChn(softChnId);    
    HI_INFO_CIPHER("In Drv_burnhdcp:Decrypt OK, chnNum = %#x!\n", softChnId);	    
    
    return HI_SUCCESS;
}

HI_S32 DRV_CIPHER_ReadReg(HI_U32 addr, HI_U32 *pVal)
{
    if ( NULL == pVal )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    (HI_VOID)HAL_CIPHER_ReadReg(addr, pVal);

    return HI_SUCCESS;;
}

HI_S32 DRV_CIPHER_WriteReg(HI_U32 addr, HI_U32 Val)
{
    (HI_VOID)HAL_CIPHER_WriteReg(addr, Val);
    return HI_SUCCESS;
}

HI_S32 DRV_CipherInitHardWareChn(HI_U32 chnId )
{
    HI_U32        i;
    CIPHER_CHAN_S *pChan;

    pChan = &g_stCipherChans[chnId];

    HAL_Cipher_SetInBufNum(chnId, CIPHER_MAX_LIST_NUM);
    HAL_Cipher_SetInBufCnt(chnId, 0);
//    HAL_Cipher_SetInBufEmpty(chnId, CIPHER_MAX_LIST_NUM);

    HAL_Cipher_SetOutBufNum(chnId, CIPHER_MAX_LIST_NUM);
    HAL_Cipher_SetOutBufCnt(chnId, CIPHER_MAX_LIST_NUM);
//    HAL_Cipher_SetOutBufFull(chnId, 0);

    HAL_Cipher_SetAGEThreshold(chnId, CIPHER_INT_TYPE_OUT_BUF, 0);
    HAL_Cipher_SetAGEThreshold(chnId, CIPHER_INT_TYPE_IN_BUF, 0);

    HAL_Cipher_DisableInt(chnId, CIPHER_INT_TYPE_OUT_BUF | CIPHER_INT_TYPE_IN_BUF);

    //HAL_Cipher_Config(chnId, 0);

    for (i = 0; i < CIPHER_MAX_LIST_NUM; i++)
    {
        ;
    }

    return HI_SUCCESS;
}

HI_S32 DRV_CipherDeInitHardWareChn(HI_U32 chnId)
{
/*
    HAL_Cipher_SetInBufNum(CIPHER_MAX_LIST_NUM);
    HAL_Cipher_SetInBufCnt(0);
    HAL_Cipher_SetInBufEmpty(CIPHER_MAX_LIST_NUM);

    HAL_Cipher_SetOutBufNum(CIPHER_MAX_LIST_NUM);
    HAL_Cipher_SetOutBufCnt(CIPHER_MAX_LIST_NUM);
    HAL_Cipher_SetOutBufFull(0);
*/

    HAL_Cipher_DisableInt(chnId, CIPHER_INT_TYPE_OUT_BUF | CIPHER_INT_TYPE_IN_BUF);
    return HI_SUCCESS;
}
/*
set interrupt threshold level and enable it, and flag soft channel opened
*/
HI_S32 DRV_Cipher_OpenChn(HI_U32 softChnId)
{
    HI_S32 ret = 0;
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    pSoftChan->u32HardWareChn = softChnId;

    pChan = &g_stCipherChans[pSoftChan->u32HardWareChn];

    HAL_Cipher_SetIntThreshold(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF, CIPHER_DEFAULT_INT_NUM);
    //ret = HAL_Cipher_EnableInt(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF | CIPHER_INT_TYPE_IN_BUF);
    ret = HAL_Cipher_EnableInt(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF);

    pSoftChan->bOpen = HI_TRUE;
    return ret;
}

/*
flag soft channel closed
*/
HI_S32 DRV_Cipher_CloseChn(HI_U32 softChnId)
{
    HI_S32 ret = HI_SUCCESS;
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    pChan = &g_stCipherChans[pSoftChan->u32HardWareChn];

    pSoftChan->bOpen = HI_FALSE;

//    ret = HAL_Cipher_DisableInt(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF);
    return ret;
}

HI_S32 DRV_Cipher_ConfigChn(HI_U32 softChnId,  HI_UNF_CIPHER_CTRL_S *pConfig,
                            funcCipherCallback fnCallBack)
{
    HI_S32 ret = HI_SUCCESS;
    HI_BOOL bDecrypt = HI_FALSE;
    HI_U32 hardWareChn;
    HI_BOOL bIVSet;
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    hardWareChn = pSoftChan->u32HardWareChn;
    pChan = &g_stCipherChans[pSoftChan->u32HardWareChn];
    pSoftChan->pfnCallBack = fnCallBack;
    bIVSet = (pConfig->stChangeFlags.bit1IV & 0x1) ? HI_TRUE : HI_FALSE;

    ret = HAL_Cipher_Config(pChan->chnId, bDecrypt, bIVSet, pConfig);

    pSoftChan->bIVChange = bIVSet;
    pSoftChan->bKeyChange = HI_TRUE;

    memcpy(&(pSoftChan->stCtrl), pConfig, sizeof(HI_UNF_CIPHER_CTRL_S));

    /* set Key */
    if (pSoftChan->bKeyChange &&  (HI_TRUE == pConfig->bKeyByCA))
    {
        /* Used for copy protection mode */
        if( 0 == hardWareChn)
        {
            ret = HAL_CIPHER_LoadSTBRootKey(0);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("Load STB root key failed!\n");
                return ret;
            }
        }
        else
        {
            ret = HAL_Cipher_SetKey(hardWareChn, &(pSoftChan->stCtrl));
            if (HI_SUCCESS != ret)
            {
                return ret;
            }
        }
        pSoftChan->bKeyChange = HI_FALSE;
    }

    return ret;
}

/*
*/
HI_S32 DRV_CipherStartSinglePkgChn(HI_U32 softChnId, HI_DRV_CIPHER_DATA_INFO_S *pBuf2Process)
{
    HI_U32 ret;
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    pChan = &g_stCipherChans[pSoftChan->u32HardWareChn];
    
    HAL_Cipher_Config(0, pBuf2Process->bDecrypt, pSoftChan->bIVChange, &(pSoftChan->stCtrl));

    HAL_Cipher_SetInIV(0, &(pSoftChan->stCtrl));

    HAL_Cipher_SetKey(0, &(pSoftChan->stCtrl));
    HAL_Cipher_SetDataSinglePkg(pBuf2Process);
   
    HAL_Cipher_StartSinglePkg(pChan->chnId);
    ret = HAL_Cipher_WaitIdle();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }
    HAL_Cipher_ReadDataSinglePkg(pBuf2Process->u32DataPkg);

    return HI_SUCCESS;
}

/*
*/
HI_S32 DRV_CipherStartMultiPkgChn(HI_U32 softChnId, HI_DRV_CIPHER_DATA_INFO_S *pBuf2Process, HI_U32 callBackArg)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 hardWareChn;
    HI_U32 BusyCnt;
    HI_U32 currentPtr;
    CI_BUF_LIST_ENTRY_S *pInBuf;
    CI_BUF_LIST_ENTRY_S *pOutBuf;

    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    hardWareChn = pSoftChan->u32HardWareChn;
    pChan = &g_stCipherChans[hardWareChn];

    HAL_Cipher_GetInBufCnt(hardWareChn, &BusyCnt);
    HI_DEBUG_CIPHER("HAL_Cipher_GetInBufCnt, BusyCnt=%d.\n", BusyCnt);

    pChan->unInData.stPkgNMng.u32BusyCnt = BusyCnt;
    currentPtr = pChan->unInData.stPkgNMng.u32CurrentPtr;

    pInBuf = pChan->pstInBuf + currentPtr;
    pOutBuf = pChan->pstOutBuf + currentPtr;

    if (BusyCnt < CIPHER_MAX_LIST_NUM) /* */
    {
        /* set addr */
        pInBuf->u32DataAddr = pBuf2Process->u32src;
        pInBuf->U32DataLen = pBuf2Process->u32length;

        pOutBuf->u32DataAddr = pBuf2Process->u32dest;
        pOutBuf->U32DataLen = pBuf2Process->u32length;

        /* set IV */
        if (pSoftChan->bIVChange)
        {
            memcpy(pChan->astCipherIVValue[currentPtr].pu32VirAddr,
                pSoftChan->stCtrl.u32IV, CI_IV_SIZE);
            mb();
            pInBuf->u32IVStartAddr
                = pChan->astCipherIVValue[currentPtr].u32PhyAddr;

            pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_IVSET_BIT);
        }
        else
        {
#if 1       /* for 1 pkg task,  save IV for next pkg unless user config the handle again */
            pInBuf->u32Flags &= ~(1 << CI_BUF_LIST_FLAG_IVSET_BIT); 
#else
			memcpy(pChan->astCipherIVValue[currentPtr].pu32VirAddr,
                pChan->astCipherIVValue[pSoftChan->u32LastPkg].pu32VirAddr, CI_IV_SIZE);

            pInBuf->u32IVStartAddr
                = pChan->astCipherIVValue[currentPtr].u32PhyAddr;

            pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_IVSET_BIT);
#endif
        }

        /* set Key */
        if (pSoftChan->bKeyChange)
        {
            ret = HAL_Cipher_SetKey(hardWareChn, &(pSoftChan->stCtrl));
            if (HI_SUCCESS != ret)
            {
                return ret;
            }
            
            pSoftChan->bKeyChange = HI_FALSE;
        }
        else
        {
            ;
        }

        /* just set each node to End_of_list <--- changed by q46153, 20111108, no need,  we think the task is NOT over */
        //pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_EOL_BIT);
        //pOutBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_EOL_BIT);

        //ret = HAL_Cipher_Config(hardWareChn, pSoftChan->bDecrypt, pSoftChan->bIVChange, &(pSoftChan->stCtrl));
        ret = HAL_Cipher_Config(hardWareChn, pBuf2Process->bDecrypt, pSoftChan->bIVChange, &(pSoftChan->stCtrl));
        pSoftChan->bIVChange = HI_FALSE;

        pChan->au32WitchSoftChn[currentPtr] = softChnId;
        pChan->au32CallBackArg[currentPtr] = callBackArg;
        pSoftChan->u32PrivateData = callBackArg;
        pChan->bNeedCallback[currentPtr] = HI_TRUE;
        HI_INFO_CIPHER("pkg %d set ok.\n", currentPtr);
        
        currentPtr++;
        if (currentPtr >=  CIPHER_MAX_LIST_NUM)
        {
            currentPtr = 0;
        }

        /* save list Node */
        pChan->unInData.stPkgNMng.u32CurrentPtr = currentPtr;
        pChan->unInData.stPkgNMng.u32TotalPkg++;
        pChan->unOutData.stPkgNMng.u32TotalPkg++;

        HAL_Cipher_GetOutBufCnt(hardWareChn, &BusyCnt);
        HI_INFO_CIPHER("%s %#x->%#x, LEN:%#x\n", pBuf2Process->bDecrypt ? "Dec" : "ENC",
                pBuf2Process->u32src, pBuf2Process->u32dest,
                pBuf2Process->u32length );
        HAL_Cipher_SetInBufCnt(hardWareChn, 1); /* +1 */

    }
    else
    {
        return HI_FAILURE;
    }

    return ret;
}


HI_S32 DRV_Cipher_CreatMultiPkgTask(HI_U32 softChnId, HI_DRV_CIPHER_DATA_INFO_S *pBuf2Process, HI_U32 pkgNum, HI_U32 callBackArg)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 hardWareChn;
    HI_U32 BusyCnt, i;
    HI_U32 currentPtr;
    CI_BUF_LIST_ENTRY_S *pInBuf;
    CI_BUF_LIST_ENTRY_S *pOutBuf;

    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;
    HI_DRV_CIPHER_DATA_INFO_S *pTmpDataPkg = pBuf2Process;
    
    pSoftChan = &g_stCipherSoftChans[softChnId];
    hardWareChn = pSoftChan->u32HardWareChn;
    pChan = &g_stCipherChans[hardWareChn];

    HAL_Cipher_GetInBufCnt(hardWareChn, &BusyCnt);
    HI_DEBUG_CIPHER("HAL_Cipher_GetInBufCnt, BusyCnt=%d.\n", BusyCnt);

    pChan->unInData.stPkgNMng.u32BusyCnt = BusyCnt;
 
    if (BusyCnt + pkgNum > CIPHER_MAX_LIST_NUM) /* */
    {
         HI_ERR_CIPHER("%s: pkg want to do: %u, free pkg num:%u.\n", pBuf2Process->bDecrypt ? "Dec" : "ENC",
                pkgNum, CIPHER_MAX_LIST_NUM - BusyCnt);
         return HI_ERR_CIPHER_BUSY;
    }


    /* set Key */
    if (pSoftChan->bKeyChange)
    {
        HAL_Cipher_SetKey(hardWareChn, &(pSoftChan->stCtrl));
        pSoftChan->bKeyChange = HI_FALSE;
    }
    else
    {
        ;
    }

    
    currentPtr = pChan->unInData.stPkgNMng.u32CurrentPtr;
    
    for (i = 0; i < pkgNum; i++)
    {
        pTmpDataPkg = pBuf2Process + i;
        pInBuf = pChan->pstInBuf + currentPtr;
        pOutBuf = pChan->pstOutBuf + currentPtr;

        
        /* set addr */
        pInBuf->u32DataAddr = pTmpDataPkg->u32src;
        pInBuf->U32DataLen = pTmpDataPkg->u32length;

        pOutBuf->u32DataAddr = pTmpDataPkg->u32dest;
        pOutBuf->U32DataLen = pTmpDataPkg->u32length;

        /* set IV */
        if (pSoftChan->bIVChange)
        {
            memcpy(pChan->astCipherIVValue[currentPtr].pu32VirAddr,
                pSoftChan->stCtrl.u32IV, CI_IV_SIZE);
            mb();
            pInBuf->u32IVStartAddr
                = pChan->astCipherIVValue[currentPtr].u32PhyAddr;

            pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_IVSET_BIT);
        }
        else
        {
#if 0       
			pInBuf->u32Flags &= ~(1 << CI_BUF_LIST_FLAG_IVSET_BIT); 
#else  /* for multi pkg task, reset IV(use the user configed IV ) each time. */
			memcpy(pChan->astCipherIVValue[currentPtr].pu32VirAddr,
				pSoftChan->stCtrl.u32IV, CI_IV_SIZE);
            mb();
			pInBuf->u32IVStartAddr
				= pChan->astCipherIVValue[currentPtr].u32PhyAddr;

			pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_IVSET_BIT);
#endif	

        }

    
        pChan->au32WitchSoftChn[currentPtr] = softChnId;
        pChan->au32CallBackArg[currentPtr] = callBackArg;
        pSoftChan->u32PrivateData = callBackArg;
        if ((i + 1) == pkgNum)
        {
            pChan->bNeedCallback[currentPtr] = HI_TRUE ;

            /* just set each node to End_of_list, <--- changed by q46153, 20111108, only the last pkg need this. */
            pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_EOL_BIT);
            pOutBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_EOL_BIT);
        }
        else
        {
            pChan->bNeedCallback[currentPtr] = HI_FALSE ;
        }
        
        
        currentPtr++;
        if (currentPtr >=  CIPHER_MAX_LIST_NUM)
        {
            currentPtr = 0;
        }

        /* save list Node */
        pChan->unInData.stPkgNMng.u32CurrentPtr = currentPtr;
        pChan->unInData.stPkgNMng.u32TotalPkg++;
        pChan->unOutData.stPkgNMng.u32TotalPkg++;
    }


    ret = HAL_Cipher_Config(hardWareChn, pTmpDataPkg->bDecrypt, 
                            pSoftChan->bIVChange, &(pSoftChan->stCtrl));
    pSoftChan->bIVChange = HI_FALSE;

    HAL_Cipher_SetIntThreshold(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF, pkgNum);
    
    HAL_Cipher_GetOutBufCnt(hardWareChn, &BusyCnt);
    HAL_Cipher_SetInBufCnt(hardWareChn, pkgNum); /* commit task */
    HI_INFO_CIPHER("%s: pkg:%#x.\n", pTmpDataPkg->bDecrypt ? "Dec" : "ENC",   pkgNum);
    return HI_SUCCESS;
}

/*
*/
HI_S32 DRV_Cipher_CreatTask(HI_U32 softChnId, HI_DRV_CIPHER_TASK_S *pTask, HI_U32 *pKey, HI_U32 *pIV)
{
    HI_S32 ret;
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    pChan = &g_stCipherChans[pSoftChan->u32HardWareChn];
   
    if (pKey)
    {
        pSoftChan->bKeyChange = HI_TRUE;
        memcpy(pSoftChan->stCtrl.u32Key, pKey, CI_KEY_SIZE);
    }

    if (pIV)
    {
        pSoftChan->bIVChange = HI_TRUE;
        memcpy(pSoftChan->stCtrl.u32IV, pIV, CI_IV_SIZE);
    }

    HAL_Cipher_SetIntThreshold(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF, 1);
    
    if (CIPHER_PKGx1_CHAN == pSoftChan->u32HardWareChn)
    {
        ret = DRV_CipherStartSinglePkgChn(softChnId, &(pTask->stData2Process));
    }
    else
    {
        ret = DRV_CipherStartMultiPkgChn(softChnId, &(pTask->stData2Process), pTask->u32CallBackArg);
    }

    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("can't create task, ERR=%#x.\n", ret);
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 DRV_CipherDataDoneSinglePkg(HI_U32 chnId)
{
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pChan = &g_stCipherChans[chnId];
    HI_DEBUG_CIPHER("Data DONE, hwChn:%d\n", chnId);
    pSoftChan = &g_stCipherSoftChans[chnId];

    if (pSoftChan->pfnCallBack)
    {
        pSoftChan->pfnCallBack(pSoftChan->u32PrivateData);
    }
    return HI_SUCCESS;
}

HI_S32 DRV_CipherDataDoneMultiPkg(HI_U32 chnId)
{
    HI_S32 ret;
    HI_U32 currentPtr = 0;
    HI_U32 softChnId = 0;
    HI_U32 fullCnt = 0;
    HI_U32 i, idx = 0;
    CIPHER_CHAN_S *pChan = NULL;
    CIPHER_SOFTCHAN_S *pSoftChan = NULL;
    CI_BUF_LIST_ENTRY_S *pInBuf = NULL;
    CI_BUF_LIST_ENTRY_S *pOutBuf = NULL;

    pChan = &g_stCipherChans[chnId];
    HI_DEBUG_CIPHER("Data DONE, hwChn:%d\n", chnId);

    currentPtr = pChan->unOutData.stPkgNMng.u32CurrentPtr;

    HI_DEBUG_CIPHER("Data DONE, hwChn:%u, currentPtr=%u\n", chnId, currentPtr);

    /* get the finished output data buffer count */
    ret = HAL_Cipher_GetOutBufFull(chnId, &fullCnt);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }
    idx = currentPtr;

    if(idx >= CIPHER_MAX_LIST_NUM)
    {
        HI_ERR_CIPHER("idx error: idx=%u, chnId=%d \n", idx, chnId);
        return HI_FAILURE;
    }

    if (fullCnt > 0) /* have list entry */
    {
        for (i = 0; i < fullCnt; i++)
        {
//            idx = currentPtr;

            softChnId = pChan->au32WitchSoftChn[idx];
            pChan->au32WitchSoftChn[idx] = CIPHER_INVALID_CHN;

            pSoftChan = &g_stCipherSoftChans[softChnId];
            pSoftChan->u32LastPkg = idx;
            HI_DEBUG_CIPHER("softChnId=%d, idx=%u, needCallback:%d\n", softChnId, idx, pChan->bNeedCallback[idx]);
            if (pSoftChan->pfnCallBack && pChan->bNeedCallback[idx])
            {
                HI_DEBUG_CIPHER("CallBack function\n");
                pSoftChan->pfnCallBack(pSoftChan->u32PrivateData);
            }

            pInBuf = pChan->pstInBuf + idx;  /* reset the flag of each pkg */
            pInBuf->u32Flags = 0;
            
            pOutBuf = pChan->pstOutBuf + idx; /* reset the flag of each pkg */
            pOutBuf->u32Flags = 0;
    
            idx++;
            if (idx >= CIPHER_MAX_LIST_NUM)
            {
                idx = 0;
            }
        }

        pChan->unOutData.stPkgNMng.u32CurrentPtr = idx;
        HAL_Cipher_SetInBufEmpty(chnId, fullCnt);  /* -  */
        HAL_Cipher_SetOutBufFull(chnId, fullCnt);  /* -  */
        HAL_Cipher_SetOutBufCnt(chnId, fullCnt);   /* +  */
    }
    else
    {
        HI_U32 regValue = 0xabcd;

        HI_ERR_CIPHER("Data done, but fullCnt=0, chn%d\n", chnId);

        HAL_Cipher_GetIntState(&regValue);
        HI_ERR_CIPHER("INTSt:%#x\n", regValue);

        HAL_Cipher_GetIntEnState(&regValue);
        HI_ERR_CIPHER("INTEnSt:%#x\n", regValue);

        HAL_Cipher_GetRawIntState(&regValue);
        HI_ERR_CIPHER("INTRawSt:%#x\n", regValue);

        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/* interrupt routine, callback */
irqreturn_t DRV_Cipher_ISR(HI_S32 irq, HI_VOID *devId)
{
    HI_U32 i;
    HI_U32 INTValue;

    HAL_Cipher_GetIntState(&INTValue);
    HAL_Cipher_ClrIntState(INTValue);

    HI_DEBUG_CIPHER(" in the isr INTValue=%#x!\n", INTValue);

    if (INTValue >> 8 & 0x1) /* single pkg */
    {
        DRV_CipherDataDoneSinglePkg(0);
    }

    for(i = 1; i < CIPHER_CHAN_NUM; i++)
    {
        if ((INTValue >> (i+8)) & 0x1)
        {
            DRV_CipherDataDoneMultiPkg(i);
        }
    }
//    HAL_Cipher_ClrIntState();
    return IRQ_HANDLED;
}


HI_S32 DRV_Cipher_Init(HI_VOID)
{
    HI_U32 i,j, hwChnId;
    HI_S32 ret;
    HI_U32 bufSizeChn = 0; /* all the buffer list size, included data buffer size and IV buffer size */
    HI_U32 databufSizeChn = 0; /* max list number data buffer size */
    HI_U32 ivbufSizeChn = 0; /* all the list IV size */
    HI_U32 bufSizeTotal = 0; /* all the channel buffer size */
    MMZ_BUFFER_S   cipherListBuf;
    CIPHER_CHAN_S *pChan;

    ret = HI_DRV_MODULE_Register(HI_ID_CIPHER, CIPHER_NAME, (HI_VOID*)&s_CIPHERExportFunctionList);
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_CIPHER("HI_DRV_MODULE_Register failed\n");
        return ret;
    }

    memset(&g_stCipherComm, 0, sizeof(g_stCipherComm));
    memset(&g_stCipherChans, 0, sizeof(g_stCipherChans));
    memset(&g_stCipherSoftChans, 0, sizeof(g_stCipherSoftChans));

/*
==========================channel-1=============================
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |inBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |outBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |keyBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
=============================================================
...
...
...
==========================channel-7=============================
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |inBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |outBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |keyBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
=============================================================
*/

    databufSizeChn = sizeof(CI_BUF_LIST_ENTRY_S) * CIPHER_MAX_LIST_NUM;
    ivbufSizeChn = CI_IV_SIZE * CIPHER_MAX_LIST_NUM;
    bufSizeChn = (databufSizeChn * 2) + ivbufSizeChn;/* inBuf + outBuf + keyBuf */
    bufSizeTotal = bufSizeChn * (CIPHER_PKGxN_CHAN_MAX - CIPHER_PKGxN_CHAN_MIN + 1) ; /* only 7 channels need buf */

    HAL_Cipher_Init();
    HAL_Cipher_DisableAllInt();

    /* allocate 7 channels size */
    ret = HI_DRV_MMZ_AllocAndMap("CIPHER_ChnBuf",NULL, bufSizeTotal, 0, &(cipherListBuf));
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Can NOT get mem for cipher, init failed, exit...\n");
        return HI_FAILURE;
    }
    else
    {
        memset((void*)(cipherListBuf.u32StartVirAddr), 0, cipherListBuf.u32Size);

        /* save the whole memory info, included physical address, virtual address and their size */
        memcpy(&(g_stCipherComm.stPhyBuf), &(cipherListBuf), sizeof(g_stCipherComm.stPhyBuf));
    }

    HI_DEBUG_CIPHER("TOTAL BUF: %#x/%#x", cipherListBuf.u32StartPhyAddr, cipherListBuf.u32StartVirAddr);

    /* assign hardware channel ID from 0 to 7 */
    for (i = 0; i <= CIPHER_PKGxN_CHAN_MAX; i++)
    {
        pChan = &g_stCipherChans[i];
        pChan->chnId = i;
    }

/*
channel layout
==============================================================
|
|
==============================================================
/\                                     /\                                      /\
 |              IV buf                  |             IN buf                    |             OUT buf
startPhyAddr
==============================================================
|
|
==============================================================
/\                                     /\                                      /\
 |              IV buf                  |             IN buf                    |             OUT buf
 startVirAddr
*/
    for (i = 0; i < CIPHER_PKGxN_CHAN_MAX; i++)
    {
        /* config channel from 1 to 7 */
        hwChnId = i+CIPHER_PKGxN_CHAN_MIN;
        pChan = &g_stCipherChans[hwChnId];

        pChan->astCipherIVValue[0].u32PhyAddr
            = cipherListBuf.u32StartPhyAddr + (i * bufSizeChn);
        pChan->astCipherIVValue[0].pu32VirAddr
            = (HI_U32*)(cipherListBuf.u32StartVirAddr + (i * bufSizeChn));

        for (j = 1; j < CIPHER_MAX_LIST_NUM; j++)
        {
            pChan->astCipherIVValue[j].u32PhyAddr
                = pChan->astCipherIVValue[0].u32PhyAddr + (CI_IV_SIZE * j);
            pChan->astCipherIVValue[j].pu32VirAddr
                = (HI_U32*)(((HI_U32)pChan->astCipherIVValue[0].pu32VirAddr) + (CI_IV_SIZE * j));

            pChan->bNeedCallback[j] = HI_FALSE;
        }

        pChan->pstInBuf = (CI_BUF_LIST_ENTRY_S*)((HI_U32)(pChan->astCipherIVValue[0].pu32VirAddr) + ivbufSizeChn);
        pChan->pstOutBuf = (CI_BUF_LIST_ENTRY_S*)((HI_U32)(pChan->pstInBuf) + databufSizeChn);

        HAL_Cipher_SetBufAddr(hwChnId, CIPHER_BUF_TYPE_IN,
            pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn);
        HAL_Cipher_SetBufAddr(hwChnId, CIPHER_BUF_TYPE_OUT,
            pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn + databufSizeChn);

        DRV_CipherInitHardWareChn(hwChnId);


    }

    /* debug info */
    for (i = 0; i < CIPHER_PKGxN_CHAN_MAX; i++)
    {
        hwChnId = i+CIPHER_PKGxN_CHAN_MIN;
        pChan = &g_stCipherChans[hwChnId];

        HI_DEBUG_CIPHER("Chn%02x, IV:%#x/%p In:%#x/%p, Out:%#x/%p.\n", i,
            pChan->astCipherIVValue[0].u32PhyAddr,
            pChan->astCipherIVValue[0].pu32VirAddr,
            pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn, pChan->pstInBuf,
            pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn + databufSizeChn, pChan->pstOutBuf );
    }

    HAL_Cipher_ClrIntState(0xffffffff);

    /* request irq */
    ret = request_irq(CIPHER_IRQ_NUMBER, DRV_Cipher_ISR, IRQF_DISABLED, "hi_cipher_irq", &g_stCipherComm);
    if(HI_SUCCESS != ret)
    {
        HAL_Cipher_DisableAllInt();
        HAL_Cipher_ClrIntState(0xffffffff);

        HI_ERR_CIPHER("Irq request failure, ret=%#x.", ret);
        HI_DRV_MMZ_UnmapAndRelease(&(g_stCipherComm.stPhyBuf));
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_VOID DRV_Cipher_DeInit(HI_VOID)
{
    HI_U32 i, hwChnId;

    HI_DRV_MODULE_UnRegister(HI_ID_CIPHER);

    HAL_Cipher_DisableAllInt();
    HAL_Cipher_ClrIntState(0xffffffff);

    for (i = 0; i < CIPHER_PKGxN_CHAN_MAX; i++)
    {
        hwChnId = i+CIPHER_PKGxN_CHAN_MIN;
        DRV_CipherDeInitHardWareChn(hwChnId);
    }

    /* free irq */
    free_irq(CIPHER_IRQ_NUMBER, &g_stCipherComm);

    HI_DRV_MMZ_UnmapAndRelease(&(g_stCipherComm.stPhyBuf));

    HAL_Cipher_DeInit();

    return;
}

HI_VOID  DRV_Cipher_Suspend(HI_VOID)
{
    DRV_Cipher_DeInit();
    return;
}

HI_S32 DRV_Cipher_Resume(HI_VOID)
{
    HI_U32 i, j, hwChnId;
    HI_S32 ret = HI_SUCCESS;
    HI_U32 bufSizeChn = 0; 		/* all the buffer list size, included data buffer size and IV buffer size */
    HI_U32 databufSizeChn = 0; 	/* max list number data buffer size */
    HI_U32 ivbufSizeChn = 0; 	/* all the list IV size */
    HI_U32 bufSizeTotal = 0; 	/* all the channel buffer size */
    MMZ_BUFFER_S   cipherListBuf;
    CIPHER_CHAN_S *pChan;

	ret = HI_DRV_MODULE_Register(HI_ID_CIPHER, CIPHER_NAME, (HI_VOID*)&s_CIPHERExportFunctionList);
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_CIPHER("HI_DRV_MODULE_Register failed\n");
        return ret;
    }

    memset(&g_stCipherComm, 0, sizeof(g_stCipherComm));
    memset(&g_stCipherChans, 0, sizeof(g_stCipherChans));
    
    databufSizeChn = sizeof(CI_BUF_LIST_ENTRY_S) * CIPHER_MAX_LIST_NUM;
    ivbufSizeChn = CI_IV_SIZE * CIPHER_MAX_LIST_NUM;
    bufSizeChn = (databufSizeChn * 2) + ivbufSizeChn;/* inBuf + outBuf + keyBuf */
    bufSizeTotal = bufSizeChn * (CIPHER_PKGxN_CHAN_MAX - CIPHER_PKGxN_CHAN_MIN + 1) ; /* only 7 channels need buf */

    HAL_Cipher_Init();
    HAL_Cipher_HashSoftReset();
    HAL_Cipher_DisableAllInt();

    /* allocate 7 channels size */
    ret = HI_DRV_MMZ_AllocAndMap("CIPHER_ChnBuf", NULL, bufSizeTotal, 0, &(cipherListBuf));
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Can NOT get mem for cipher, init failed, exit...\n");
        return ret;
    }
    else
    {
        memset((void*)(cipherListBuf.u32StartVirAddr), 0, cipherListBuf.u32Size);

        /* save the whole memory info, included physical address, virtual address and their size */
        memcpy(&(g_stCipherComm.stPhyBuf), &(cipherListBuf), sizeof(g_stCipherComm.stPhyBuf));
    }

    /* assign hardware channel ID from 0 to 7 */
    for (i = 0; i <= CIPHER_PKGxN_CHAN_MAX; i++)
    {
        pChan = &g_stCipherChans[i];
        pChan->chnId = i;
    }

    for (i = 0; i < CIPHER_PKGxN_CHAN_MAX; i++)
    {
        /* config channel from 1 to 7 */
        hwChnId = i + CIPHER_PKGxN_CHAN_MIN;
        pChan = &g_stCipherChans[hwChnId];

        pChan->astCipherIVValue[0].u32PhyAddr
            = cipherListBuf.u32StartPhyAddr + (i * bufSizeChn);
        pChan->astCipherIVValue[0].pu32VirAddr
            = (HI_U32*)(cipherListBuf.u32StartVirAddr + (i * bufSizeChn));

        for (j = 1; j < CIPHER_MAX_LIST_NUM; j++)
        {
            pChan->astCipherIVValue[j].u32PhyAddr
                = pChan->astCipherIVValue[0].u32PhyAddr + (CI_IV_SIZE * j);
            pChan->astCipherIVValue[j].pu32VirAddr
                = (HI_U32*)(((HI_U32)pChan->astCipherIVValue[0].pu32VirAddr) + (CI_IV_SIZE * j));

            pChan->bNeedCallback[j] = HI_FALSE;
        }

        pChan->pstInBuf = (CI_BUF_LIST_ENTRY_S*)((HI_U32)(pChan->astCipherIVValue[0].pu32VirAddr) + ivbufSizeChn);
        pChan->pstOutBuf = (CI_BUF_LIST_ENTRY_S*)((HI_U32)(pChan->pstInBuf) + databufSizeChn);

        HAL_Cipher_SetBufAddr(hwChnId, CIPHER_BUF_TYPE_IN,
            pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn);
        HAL_Cipher_SetBufAddr(hwChnId, CIPHER_BUF_TYPE_OUT,
            pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn + databufSizeChn);

        DRV_CipherInitHardWareChn(hwChnId);
    }

    HAL_Cipher_ClrIntState(0xffffffff);

    /* request irq */
    ret = request_irq(CIPHER_IRQ_NUMBER, DRV_Cipher_ISR, IRQF_DISABLED, "hi_cipher_irq", &g_stCipherComm);
    if(HI_SUCCESS != ret)
    {
        HAL_Cipher_DisableAllInt();
        HAL_Cipher_ClrIntState(0xffffffff);

        HI_ERR_CIPHER("Irq request failure, ret=%#x.", ret);
        HI_DRV_MMZ_UnmapAndRelease(&(g_stCipherComm.stPhyBuf));
        return ret;
    }

    for(i = 0; i < CIPHER_CHAN_NUM; i++)
    {
        if (g_stCipherSoftChans[i].bOpen)
        {
            DRV_Cipher_OpenChn(i);
            DRV_Cipher_ConfigChn(i, &g_stCipherSoftChans[i].stCtrl, DRV_CIPHER_UserCommCallBack);
        }
    }

    return HI_SUCCESS;
}

HI_S32 DRV_Cipher_GetHandleConfig(HI_U32 u32SoftChanId, HI_UNF_CIPHER_CTRL_S *pCipherCtrl)
{
    CIPHER_SOFTCHAN_S *pSoftChan;

    if(pCipherCtrl == NULL)
    {
        HI_ERR_CIPHER("Error! NULL pointer!\n");
        return HI_FAILURE;
    }

    pSoftChan = &g_stCipherSoftChans[u32SoftChanId];
    memcpy(pCipherCtrl, &(pSoftChan->stCtrl), sizeof(HI_UNF_CIPHER_CTRL_S));

    return HI_SUCCESS;
}

HI_VOID DRV_Cipher_SetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E enMode)
{
    HAL_Cipher_SetHdcpModeEn(enMode);
    return;
}

HI_S32 DRV_Cipher_GetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E *penMode)
{
    return HAL_Cipher_GetHdcpModeEn(penMode);    
}

HI_VOID DRV_Cipher_SetHdcpKeyRamMode(HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E enMode)
{
    HAL_Cipher_SetHdcpKeyRamMode(enMode);
    return;
}

HI_S32 DRV_Cipher_SetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enHdcpKeySelectMode)
{
    return HAL_Cipher_SetHdcpKeySelectMode(enHdcpKeySelectMode);
}

HI_S32 DRV_Cipher_GetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E *penHdcpKeySelectMode)
{
    return HAL_Cipher_GetHdcpKeySelectMode(penHdcpKeySelectMode);
}

HI_S32 DRV_Cipher_HdcpParamConfig(HI_DRV_CIPHER_HDCP_KEY_MODE_E enHdcpEnMode, HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E enRamMode, HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enKeyType)
{ 
    DRV_Cipher_SetHdcpModeEn(enHdcpEnMode);    
    DRV_Cipher_SetHdcpKeyRamMode(enRamMode);
    return DRV_Cipher_SetHdcpKeySelectMode(enKeyType);
}

HI_S32 DRV_Cipher_ClearHdcpConfig(HI_VOID)
{    
    HAL_Cipher_ClearHdcpCtrlReg();
    return HI_SUCCESS;
}

HI_S32 DRV_Cipher_SoftReset()
{
    HI_S32 ret = HI_SUCCESS;

    DRV_Cipher_Suspend();
    
    ret = DRV_Cipher_Resume();
    if( HI_SUCCESS != ret )
    {
        HI_ERR_CIPHER("Cipher Soft Reset failed in cipher resume!\n");
        return HI_FAILURE;
    }
    
    return HI_SUCCESS;
}

static HI_U32 u32HashHandleSeed = 0xa0000000;
static HI_HANDLE g_hashHandle = -1;
static sha1_context g_sha1Context;
static sha2_context g_sha2Context;
static HI_BOOL g_is224 = HI_FALSE;

static HI_S32 Cipher_CalcHashInit_Sw(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 ticks;
    struct timeval tv;

    do_gettimeofday(&tv);
    ticks = tv.tv_sec + tv.tv_usec;
    srandom32 (ticks);  //set the seed of random data
    g_hashHandle = random32();

    switch(pCipherHashData->enShaType)
    {
        case HI_UNF_CIPHER_HASH_TYPE_SHA1:
            sha1_starts(&g_sha1Context);
            pCipherHashData->hHandle = g_hashHandle;
            break;

        case HI_UNF_CIPHER_HASH_TYPE_SHA256:
            g_is224 = HI_FALSE;
            sha2_starts(&g_sha2Context, g_is224);
            pCipherHashData->hHandle = g_hashHandle;
            break;

        default:
           HI_ERR_CIPHER("Invalid hash type!\n");
           pCipherHashData->hHandle = -1;
           Ret = HI_FAILURE;
           break;
    }

    return Ret;
}

HI_S32 Cipher_CalcHashInit_Hw(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 s32Ret = HI_SUCCESS;

    g_hashHandle = u32HashHandleSeed++;
    pCipherHashData->hHandle = g_hashHandle;

    s32Ret = Cipher_HashMsgPadding(pCipherHashData);
    if( HI_SUCCESS != s32Ret )
    {
        HI_ERR_CIPHER("Cipher hash padding failed!\n");
        return HI_FAILURE;
    }

    s32Ret = HAL_Cipher_CalcHashInit(pCipherHashData);
    if( HI_SUCCESS != s32Ret )
    {
        HI_ERR_CIPHER("Cipher hash init failed!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 Cipher_CalcHashUpdate_Sw(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 Ret = HI_SUCCESS;

    if(pCipherHashData->hHandle != g_hashHandle)
    {
        HI_ERR_CIPHER("Invalid hash handle!\n");
        return HI_FAILURE;
    }
    
    switch(pCipherHashData->enShaType)
    {
        case HI_UNF_CIPHER_HASH_TYPE_SHA1:
            sha1_update(&g_sha1Context, pCipherHashData->pu8InputData, pCipherHashData->u32InputDataLen);
            break;

        case HI_UNF_CIPHER_HASH_TYPE_SHA256:
            sha2_update(&g_sha2Context, pCipherHashData->pu8InputData, pCipherHashData->u32InputDataLen);
            break;

        default:
            HI_ERR_CIPHER("Invalid hash type!\n");
            Ret = HI_FAILURE;
            break;
    }

    return Ret;
}

static HI_S32 Cipher_CalcHashUpdate_Hw(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if( NULL == pCipherHashData )
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        return HI_FAILURE;
    }

    if(pCipherHashData->hHandle != g_hashHandle)
    {
        HI_ERR_CIPHER("Invalid hash handle!\n");
        return HI_FAILURE;
    }

    s32Ret = HAL_Cipher_CalcHashUpdate(pCipherHashData);
    if(HI_FAILURE == s32Ret)
    {
        HI_ERR_CIPHER("Cipher hash update failed!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 Cipher_CalcHashFinal_Sw(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 ticks;
    struct timeval tv;

    if(pCipherHashData->hHandle != g_hashHandle)
    {
        HI_ERR_CIPHER("Invalid hash handle!\n");
        return HI_FAILURE;
    }

    /* reset the handle */
    do_gettimeofday(&tv);
    ticks = tv.tv_sec + tv.tv_usec;
    srandom32 (ticks);  /* set the seed of random data */
    g_hashHandle = random32();    

    switch(pCipherHashData->enShaType)
    {
    case HI_UNF_CIPHER_HASH_TYPE_SHA1:

        sha1_finish(&g_sha1Context, pCipherHashData->pu8Output);
        break;

    case HI_UNF_CIPHER_HASH_TYPE_SHA256:

        sha2_finish(&g_sha2Context, pCipherHashData->pu8Output);
        break;

    default:
       HI_ERR_CIPHER("Invalid hash type!\n");
       Ret = HI_FAILURE;
       break;
    }

    return Ret;
}

HI_S32 Cipher_CalcHashFinal_Hw(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if( NULL == pCipherHashData )
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        return HI_FAILURE;
    }

    if(pCipherHashData->hHandle != g_hashHandle)
    {
        HI_ERR_CIPHER("Invalid hash handle!\n");
        return HI_FAILURE;
    }

    s32Ret = HAL_Cipher_CalcHashFinal(pCipherHashData);
    if(HI_FAILURE == s32Ret)
    {
        HI_ERR_CIPHER("Cipher hash final failed!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 DRV_Cipher_CalcHashInit(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E enchipVersion = HI_CHIP_VERSION_BUTT;

    if( NULL == pCipherHashData )
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        return HI_FAILURE;
    }

    HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
    if( (HI_CHIP_VERSION_V300 == enchipVersion) && (HI_CHIP_TYPE_HI3716M == enchipType) )
    {
        s32Ret = Cipher_CalcHashInit_Sw(pCipherHashData);
    }
    else if( ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716C == enchipType))
          || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716CES == enchipType))
          || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3718C == enchipType))
          || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719C == enchipType))
          || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719M_A == enchipType)))
    {
        s32Ret = Cipher_CalcHashInit_Hw(pCipherHashData);
    }
    else
    {
        HI_ERR_CIPHER("Not supported!\n");
        return HI_FAILURE;
    }

    if(HI_FAILURE ==  s32Ret)
    {
        HI_ERR_CIPHER("CIPHER hash init failed!\n");
        return HI_FAILURE;
    }

    return s32Ret;
}


HI_S32 DRV_Cipher_CalcHashUpdate(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E enchipVersion = HI_CHIP_VERSION_BUTT;

    HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
    if( (HI_CHIP_VERSION_V300 == enchipVersion) && (HI_CHIP_TYPE_HI3716M == enchipType) )
    {
        s32Ret = Cipher_CalcHashUpdate_Sw(pCipherHashData);
    }
    else if( ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716C == enchipType))
          || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716CES == enchipType))
          || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3718C == enchipType))
          || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719C == enchipType))
          || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719M_A == enchipType)))
    {
        s32Ret = Cipher_CalcHashUpdate_Hw(pCipherHashData);
    }
    else
    {
        HI_ERR_CIPHER("Not supported!\n");
        return HI_FAILURE;
    }

    if(HI_FAILURE ==  s32Ret)
    {
        HI_ERR_CIPHER("Cipher hash update failed!\n");
        return HI_FAILURE;
    }

    return s32Ret;
}

HI_S32 DRV_Cipher_CalcHashFinal(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_CHIP_TYPE_E enchipType = HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E enchipVersion = HI_CHIP_VERSION_BUTT;

    HI_DRV_SYS_GetChipVersion(&enchipType, &enchipVersion);
    if( (HI_CHIP_VERSION_V300 == enchipVersion) && (HI_CHIP_TYPE_HI3716M == enchipType) )
    {
        s32Ret = Cipher_CalcHashFinal_Sw(pCipherHashData);
    }
    else if( ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716C == enchipType))
          || ((HI_CHIP_VERSION_V200 == enchipVersion) && (HI_CHIP_TYPE_HI3716CES == enchipType))
          || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3718C == enchipType))
          || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719C == enchipType))
          || ((HI_CHIP_VERSION_V100 == enchipVersion) && (HI_CHIP_TYPE_HI3719M_A == enchipType)))
    {
        s32Ret = Cipher_CalcHashFinal_Hw(pCipherHashData);
    }
    else
    {
        HI_ERR_CIPHER("Not supported!\n");
        return HI_FAILURE;
    }

    return s32Ret;
}

/*
        head              HDMIIP_HDCPKey                 CRC32_0 CRC32_1
      |-------|-----------------------------------------|------|------|
      |4bytes-|-----------------Encrypt(320bytes)-------|-4byte|-4byte|
*/
HI_S32 DRV_Cipher_LoadHdcpKey(HI_DRV_CIPHER_FLASH_ENCRYPT_HDCPKEY_S *pstFlashHdcpKey)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32Crc32Result = 0;
    HI_U32 u32CRC32_1;
    HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enKeyType;
    HI_U32 u32Tmp = 0;

    if( NULL == pstFlashHdcpKey)
    {
        HI_ERR_CIPHER("NULL Pointer, Invalid param input!\n");
        return  HI_FAILURE;
    }

    u32Tmp = pstFlashHdcpKey->u8Key[0] & 0xc0;
    if ( 0x00 == u32Tmp)
    {
        enKeyType = CIPHER_HDCP_KEY_TYPE_OTP_ROOT_KEY;
    }
    else if( 0x80 == u32Tmp)
    {
        enKeyType = CIPHER_HDCP_KEY_TYPE_HISI_DEFINED;
    }
    else
    {
        HI_ERR_CIPHER("Invalid keySelect mode input!\n");
        return  HI_FAILURE;
    }

    /* verify crc32_1 */
    s32Ret = Cipher_CRC32(pstFlashHdcpKey->u8Key, (332-4), &u32Crc32Result);
    if ( HI_FAILURE == s32Ret)
    {
        HI_ERR_CIPHER("HDCP KEY CRC32_1 calc failed!\n");
        return HI_FAILURE;
    }

    memcpy((HI_U8 *)&u32CRC32_1, &pstFlashHdcpKey->u8Key[328], 4);
    
    if ( u32Crc32Result != u32CRC32_1 )
    {
        HI_ERR_CIPHER("HDCP KEY CRC32_1 compare failed!");
        return HI_FAILURE;
    }

    s32Ret = Cipher_HdcpKeyAesCbc(pstFlashHdcpKey->u8Key+4,
                                     320,
                                     CIPHER_HDCP_MODE_HDCP_KEY,
                                     CIPHER_HDCP_KEY_RAM_MODE_WRITE,
                                     enKeyType,
                                     HI_TRUE,
                                     NULL);
    if ( HI_FAILURE == s32Ret)
    {
        HI_ERR_CIPHER("HDCP key decrypt final failed!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}


EXPORT_SYMBOL(DRV_Cipher_OpenChn);
EXPORT_SYMBOL(DRV_Cipher_CloseChn);
EXPORT_SYMBOL(DRV_Cipher_ConfigChn);
EXPORT_SYMBOL(DRV_Cipher_CreatTask);
EXPORT_SYMBOL(HAL_Cipher_GetIntState);
EXPORT_SYMBOL(HAL_Cipher_GetIntEnState);
EXPORT_SYMBOL(DRV_Cipher_GetHdcpModeEn);
EXPORT_SYMBOL(DRV_Cipher_HdcpParamConfig);
EXPORT_SYMBOL(DRV_Cipher_ClearHdcpConfig);
EXPORT_SYMBOL(DRV_Cipher_SoftReset);
EXPORT_SYMBOL(DRV_Cipher_GetHdcpKeySelectMode);
EXPORT_SYMBOL(DRV_Cipher_LoadHdcpKey);
EXPORT_SYMBOL(DRV_Cipher_CalcHashInit);
EXPORT_SYMBOL(DRV_Cipher_CalcHashUpdate);
EXPORT_SYMBOL(DRV_Cipher_CalcHashFinal);

