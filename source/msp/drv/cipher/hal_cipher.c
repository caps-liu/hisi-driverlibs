/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hal_cipher.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/

#include <linux/jiffies.h>
#include <asm/barrier.h>    /* mb() */
#include "hi_type.h"
#include "hi_debug.h"
#include "hi_common.h"
#include "hi_error_mpi.h"
#include "drv_cipher_ioctl.h"
#include "drv_cipher_reg.h"
#include "hal_cipher.h"
#include "drv_advca_ext.h"
#include "hi_drv_mmz.h"
#include "hi_drv_cipher.h"
#include "hi_drv_reg.h"
#include "hi_reg_common.h"

/* Set the defualt timeout value for hash calculating (5000 ms)*/
#define HASH_MAX_DURATION (5000)

extern HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion);

/***************************** Macro Definition ******************************/
/*process of bit*/
#define HAL_SET_BIT(src, bit)        ((src) |= (1<<bit))
#define HAL_CLEAR_BIT(src,bit)       ((src) &= ~(1<<bit))

#if 0
#ifndef HI_REG_READ32
#define HI_REG_READ32(addr,result)  ((result) = *(volatile unsigned int *)(addr))
#endif
#ifndef HI_REG_WRITE32
#define HI_REG_WRITE32(addr,result)  (*(volatile unsigned int *)(addr) = (result))
#endif
#endif

/*************************** Structure Definition ****************************/
typedef enum
{
    HASH_READY,
    REC_READY,
    DMA_READY,
}HASH_WAIT_TYPE;

/******************************* API declaration *****************************/
HI_VOID HAL_CIPHER_ReadReg(HI_U32 addr, HI_U32 *pu32Val)
{
    HI_REG_READ32(addr, *pu32Val);
    return;
}

HI_VOID HAL_CIPHER_WriteReg(HI_U32 addr, HI_U32 u32Val)
{
    HI_REG_WRITE32(addr, u32Val);
    return;
}

inline HI_S32 HASH_WaitReady( HASH_WAIT_TYPE enType)
{
    CIPHER_SHA_STATUS_U unCipherSHAstatus;
    HI_SIZE_T ulStartTime = 0;
    HI_SIZE_T ulLastTime = 0;
    HI_SIZE_T ulDuraTime = 0;

    /* wait for hash_rdy */
    ulStartTime = jiffies;
    while(1)
    {
        unCipherSHAstatus.u32 = 0;
        (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_STATUS_ADDR, &unCipherSHAstatus.u32);
        if(HASH_READY == enType)
        {
            if(1 == unCipherSHAstatus.bits.hash_rdy)
            {
                break;
            }
        }
        else if (REC_READY == enType)
        {
            if(1 == unCipherSHAstatus.bits.rec_rdy)
            {
                break;
            }
        }
        else if (DMA_READY == enType)
        {
            if(1 == unCipherSHAstatus.bits.dma_rdy)
            {
                break;
            }
        }
        else
        {
            HI_ERR_CIPHER("Error! Invalid wait type!\n");
            return HI_FAILURE;
        }

        ulLastTime = jiffies;
        ulDuraTime = jiffies_to_msecs(ulLastTime - ulStartTime);
        if (ulDuraTime >= HASH_MAX_DURATION )
        { 
            HI_ERR_CIPHER("Error! Hash time out!\n");
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

/* check if hash module is idle or not */
static HI_S32 HAL_CIPHER_WaitHashIdle(HI_VOID)
{
    CIPHER_SHA_CTRL_U unCipherSHACtrl;
    HI_SIZE_T ulStartTime = 0;
    HI_SIZE_T ulLastTime = 0;
    HI_SIZE_T ulDuraTime = 0;

__HASH_WAIT__:
    ulStartTime = jiffies;
    unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
    while(0 != (unCipherSHACtrl.bits.usedbyarm | unCipherSHACtrl.bits.usedbyc51))
    {
        ulLastTime = jiffies;
        ulDuraTime = jiffies_to_msecs(ulLastTime - ulStartTime);
        if (ulDuraTime >= HASH_MAX_DURATION )
        { 
            HI_ERR_CIPHER("Error! Hash module is busy now!\n");
            return HI_FAILURE;
        }
        else
        {
            mdelay(1);
            unCipherSHACtrl.u32 = 0;
            (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
            continue;
        }
    }

    /* set bit 6 */
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.usedbyarm = 0x1;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);

    /* check if set bit 6 valid or not */
    unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
    unCipherSHACtrl.u32 = (unCipherSHACtrl.u32 >> 6) & 0x3;
    switch(unCipherSHACtrl.u32)
    {
        case 0x1:
        {
            return HI_SUCCESS;
        }
        case 0x3:
        {
            /* clear bit 6*/
            (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
            unCipherSHACtrl.bits.usedbyarm = 0;
            (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
            goto __HASH_WAIT__;
        }
        default:
        {
            goto __HASH_WAIT__;
        }
    }
}

static HI_VOID HAL_CIPHER_MarkHashIdle(HI_VOID)
{
    CIPHER_SHA_CTRL_U unCipherSHACtrl;

    unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.usedbyarm = 0x0;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);

    return;
}

HI_S32 HAL_Cipher_SetInBufNum(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    /* register0~15 bit is valid, others bits reserved */
    regAddr = CIPHER_REG_CHANn_IBUF_NUM(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%#x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER(" cnt=%u\n", num);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetInBufNum(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr  = 0;
    HI_U32 regValue = 0;

    if (CIPHER_PKGx1_CHAN == chnId || HI_NULL == pNum)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_IBUF_NUM(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);
    
    *pNum = regValue;

    HI_INFO_CIPHER(" cnt=%u\n", regValue);
    
    return HI_SUCCESS;
}


HI_S32 HAL_Cipher_SetInBufCnt(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_IBUF_CNT(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER(" HAL_Cipher_SetInBufCnt=%u\n", num);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetInBufCnt(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    if ( (CIPHER_PKGx1_CHAN == chnId) || (HI_NULL == pNum) )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_IBUF_CNT(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);
    *pNum = regValue;
    
    HI_INFO_CIPHER(" cnt=%u\n", regValue);
    
    return HI_SUCCESS;
}


HI_S32 HAL_Cipher_SetInBufEmpty(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_IEMPTY_CNT(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER(" cnt=%u\n", num);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetInBufEmpty(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    if ( (CIPHER_PKGx1_CHAN == chnId) || (HI_NULL == pNum) )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_IEMPTY_CNT(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);
    
    *pNum = regValue;
    
    HI_INFO_CIPHER(" cnt=%u\n", regValue);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_SetOutBufNum(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OBUF_NUM(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER("chn=%d cnt=%u\n", chnId, num);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetOutBufNum(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    if ( (CIPHER_PKGx1_CHAN == chnId) || (HI_NULL == pNum) )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OBUF_NUM(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    *pNum = regValue;

    HI_INFO_CIPHER(" cnt=%u\n", regValue);
    
    return HI_SUCCESS;
}


HI_S32 HAL_Cipher_SetOutBufCnt(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OBUF_CNT(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER("SetOutBufCnt=%u, chnId=%u\n", num,chnId);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetOutBufCnt(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    if ( (CIPHER_PKGx1_CHAN == chnId) || (HI_NULL == pNum) )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OBUF_CNT(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    *pNum = regValue;

    HI_INFO_CIPHER(" HAL_Cipher_GetOutBufCnt=%u\n", regValue);
    
    return HI_SUCCESS;
}


HI_S32 HAL_Cipher_SetOutBufFull(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OFULL_CNT(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER(" cnt=%u\n", num);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetOutBufFull(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    if ( (CIPHER_PKGx1_CHAN == chnId) || (HI_NULL == pNum) )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OFULL_CNT(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    *pNum = regValue;

    HI_INFO_CIPHER(" cnt=%u\n", regValue);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_WaitIdle(HI_VOID)
{
    HI_S32 i = 0;
    HI_U32 u32RegAddr = 0;
    HI_U32 u32RegValue = 0;

    /* channel 0 configuration register [31-2]:reserved, [1]:ch0_busy, [0]:ch0_start 
         * [1]:channel 0 status signal, [0]:channel 0 encrypt/decrypt start signal
         */

    u32RegAddr = CIPHER_REG_CHAN0_CFG;
    for (i = 0; i < CIPHER_WAIT_IDEL_TIMES; i++)
    {
        (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &u32RegValue);
        if (0x0 == ((u32RegValue >> 1) & 0x01))
        {
            return HI_SUCCESS;
        }
        else
        {
            //udelay(1);
        }
    }

    return HI_FAILURE;
}
/*
just only check for channel 0
 */
HI_BOOL HAL_Cipher_IsIdle(HI_U32 chn)
{
    HI_U32 u32RegValue = 0;

    HI_ASSERT(CIPHER_PKGx1_CHAN == chn);

    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_REG_CHAN0_CFG, &u32RegValue);
    if (0x0 == ((u32RegValue >> 1) & 0x01))
    {
        return HI_TRUE;
    }

    return HI_FALSE;
}

HI_S32 HAL_Cipher_SetDataSinglePkg(HI_DRV_CIPHER_DATA_INFO_S * info)
{
    HI_U32 regAddr = 0;
    HI_U32 i = 0;

    regAddr = CIPHER_REG_CHAN0_CIPHER_DIN(0);
    
    /***/
    for (i = 0; i < (16/sizeof(HI_U32)); i++)
    {
        (HI_VOID)HAL_CIPHER_WriteReg(regAddr + (i * sizeof(HI_U32)), (*(info->u32DataPkg + i)) );
    }
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_ReadDataSinglePkg(HI_U32 *pData)
{
    HI_U32 regAddr = 0;
    HI_U32 i = 0;

    regAddr = CIPHER_REG_CHAN0_CIPHER_DOUT(0);

    /***/
    for (i = 0; i < (16/sizeof(HI_U32)); i++)
    {
        (HI_VOID)HAL_CIPHER_ReadReg(regAddr + (i * sizeof(HI_U32)), &(*(pData+ i)));
    }
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_StartSinglePkg(HI_U32 chnId)
{
    HI_U32 u32RegAddr = 0;
    HI_U32 u32RegValue = 0;

    HI_ASSERT(CIPHER_PKGx1_CHAN == chnId);

    u32RegAddr = CIPHER_REG_CHAN0_CFG;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &u32RegValue);
    
    u32RegValue |= 0x1;
    (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, u32RegValue); /* start work */
    
    return HI_SUCCESS;
}


HI_S32 HAL_Cipher_SetBufAddr(HI_U32 chnId, CIPHER_BUF_TYPE_E bufType, HI_U32 addr)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (CIPHER_BUF_TYPE_IN == bufType)
    {
        regAddr = CIPHER_REG_CHANn_SRC_LST_SADDR(chnId);
    }
    else if (CIPHER_BUF_TYPE_OUT == bufType)
    {
        regAddr = CIPHER_REG_CHANn_DEST_LST_SADDR(chnId);
    }
    else
    {
        HI_ERR_CIPHER("SetBufAddr type err:%x.\n", bufType);
        return HI_ERR_CIPHER_INVALID_PARA;
    }


    HI_INFO_CIPHER("Set chn%d '%s' BufAddr to:%x.\n",chnId,
        (CIPHER_BUF_TYPE_IN == bufType)?"In":"Out",  addr);

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, addr);

    return HI_SUCCESS;
}



HI_VOID HAL_Cipher_Reset(HI_VOID)
{

    //(HI_VOID)HAL_CIPHER_WriteReg(CIPHER_SOFT_RESET_ADDR, 1);
    return;
}

HI_S32 HAL_Cipher_GetOutIV(HI_U32 chnId, HI_UNF_CIPHER_CTRL_S* pCtrl)
{
    HI_U32 i = 0;
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN != chnId)
    {
        regAddr = CIPHER_REG_CHAN0_CIPHER_IVIN(0);
    }
    else
    {
        regAddr = CIPHER_REG_CHAN_CIPHER_IVOUT(chnId);
    }


    /***/
    for (i = 0; i < (CI_IV_SIZE/sizeof(HI_U32)); i++)
    {
        (HI_VOID)HAL_CIPHER_ReadReg(regAddr + (i * sizeof(HI_U32)), &(pCtrl->u32IV[i]));
    }

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_SetInIV(HI_U32 chnId, HI_UNF_CIPHER_CTRL_S* pCtrl)
{
    HI_U32 i = 0;
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN != chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHAN0_CIPHER_IVIN(0);

    /***/
    for (i = 0; i < (CI_IV_SIZE/sizeof(HI_U32)); i++)
    {
        (HI_VOID)HAL_CIPHER_WriteReg(regAddr + (i * sizeof(HI_U32)), pCtrl->u32IV[i]);
    }

    return HI_SUCCESS;
}

extern ADVCA_EXPORT_FUNC_S  *s_pAdvcaFunc;

HI_S32 HAL_Cipher_SetKey(HI_U32 chnId, HI_UNF_CIPHER_CTRL_S* pCtrl)
{
    HI_U32 i = 0;
    HI_U32 regAddr = 0;
    DRV_ADVCA_EXTFUNC_PARAM_S stADVCAFuncParam = {0};

    regAddr = CIPHER_REG_CIPHER_KEY(chnId);

    if(NULL == pCtrl)
    {
        HI_ERR_CIPHER("Error, null pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    if (HI_FALSE == pCtrl->bKeyByCA)
    {
        for (i = 0; i < (CI_KEY_SIZE/sizeof(HI_U32)); i++)
        {
            (HI_VOID)HAL_CIPHER_WriteReg(regAddr + (i * sizeof(HI_U32)), pCtrl->u32Key[i]);
        }
    }
    else
    {
        if (s_pAdvcaFunc && s_pAdvcaFunc->pfnAdvcaCrypto)
        {
            memset(&stADVCAFuncParam, 0, sizeof(stADVCAFuncParam));
            stADVCAFuncParam.enCAType = pCtrl->enCaType;
            stADVCAFuncParam.AddrID = chnId;
            /* Ignore evenOrOdd value here */
            stADVCAFuncParam.EvenOrOdd = 0;
            stADVCAFuncParam.pu8Data = (HI_U8 *)pCtrl->u32Key;
            stADVCAFuncParam.bIsDeCrypt = HI_TRUE;
            stADVCAFuncParam.enTarget = DRV_ADVCA_CA_TARGET_MULTICIPHER;
            return (s_pAdvcaFunc->pfnAdvcaCrypto)(stADVCAFuncParam); 
        }
    }

    HI_INFO_CIPHER("SetKey: chn%u,Key:%#x, %#x, %#x, %#x.\n", chnId, pCtrl->u32Key[0], pCtrl->u32Key[1], pCtrl->u32Key[2], pCtrl->u32Key[3]);
    
    return HI_SUCCESS;
}

static HI_S32 HAL_CIPHER_IsCABusy(HI_VOID)
{
    HI_U32 cnt = 0;
    HI_U32 u32CAState = 0;

    while (cnt < 50)
    {
        u32CAState = 0;
        (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_REG_CA_STATE, &u32CAState);
        if( ((u32CAState >> 31) & 0x1) == 0)
        {
            break;
        }
        mdelay(10);
        cnt++;
    }

    if (cnt >= 50)
    {
        HI_ERR_CIPHER("Error Time out! \n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 HAL_CIPHER_LoadSTBRootKey(HI_U32 u32ChID)
{
    HI_S32 ret = HI_SUCCESS;
    CIPHER_CA_STB_KEY_CTRL_U unSTBKeyCtrl;
    CIPHER_CA_CONFIG_STATE_U unConfigState;

    unConfigState.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_REG_CA_CONFIG_STATE, &unConfigState.u32);
    if(unConfigState.bits.st_vld != 1)
    {
        HI_ERR_CIPHER("Error: ca unStatus.bits.st_vld != 1\n");
        return HI_FAILURE;
    }

    ret = HAL_CIPHER_IsCABusy();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("CA time out!\n");
        return HI_FAILURE;
    }

    unSTBKeyCtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_REG_STB_KEY_CTRL, &unSTBKeyCtrl.u32);
    unSTBKeyCtrl.bits.key_addr = u32ChID;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_REG_STB_KEY_CTRL, unSTBKeyCtrl.u32);

    ret = HAL_CIPHER_IsCABusy();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("CA time out!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}


/*
=========channel n control register==========
[31:22]             weight [in 64bytes, just only for multi-packet channel encrypt or decrypt, otherwise reserved.]
[21:17]             reserved
[16:14]     RW    key_adder [current key sequence number]
[13]          RW    key_sel [key select control, 0-CPU keys, 1-keys from key Ladder]
[12:11]             reserved
[10:9]      RW      key_length[key length control
                                            (1).AES, 00-128 bits key, 01-192bits 10-256bits, 11-128bits
                                            (2).DES, 00-3 keys, 01-3keys, 10-3keys, 11-2keys]
[8]                     reserved
[7:6]       RW      width[bits width control
                                 (1).for DES/3DES, 00-64bits, 01-8bits, 10-1bit, 11-64bits
                                 (2).for AES, 00-128bits, 01-8bits, 10-1bit, 11-128bits]
[5:4]       RW      alg_sel[algorithm type, 00-DES, 01-3DES, 10-AES, 11-DES]
[3:1]       RW      mode[mode control, 
                                  (1).for AES, 000-ECB, 001-CBC, 010-CFB, 011-OFB, 100-CTR, others-ECB
                                  (2).for DES, 000-ECB, 001-CBC, 010-CFB, 011-OFB, others-ECB]
[0]         RW      decrypt[encrypt or decrypt control, 0 stands for encrypt, 1 stands for decrypt]
*/
HI_S32 HAL_Cipher_Config(HI_U32 chnId, HI_BOOL bDecrypt, HI_BOOL bIVChange, HI_UNF_CIPHER_CTRL_S* pCtrl)
{
    HI_U32 keyId = 0;
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    HI_BOOL bKeyByCA = pCtrl->bKeyByCA;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        /* channel 0, single packet encrypt or decrypt channel */
        regAddr = CIPHER_REG_CHAN0_CIPHER_CTRL;
    }
    else
    {
        regAddr = CIPHER_REG_CHANn_CIPHER_CTRL(chnId);
    }

    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    if (HI_FALSE == bDecrypt)/* encrypt */
    {
        regValue &= ~(1 << 0);
    }
    else /* decrypt */
    {
        regValue |= 1;
    }

    /* set mode */
    regValue &= ~(0x07 << 1);/* clear bit1~bit3 */
    regValue |= ((pCtrl->enWorkMode & 0x7) << 1);

    /* set algorithm bits */
    regValue &= ~(0x03 << 4); /* clear algorithm bits*/
    regValue |= ((pCtrl->enAlg & 0x3) << 4);

    /* set bits width */
    regValue &= ~(0x03 << 6);
    regValue |= ((pCtrl->enBitWidth & 0x3) << 6);

    regValue &= ~(0x01 << 8);
    regValue |= ((bIVChange & 0x1) << 8);
    if (bIVChange) ///?
    {
        HAL_Cipher_SetInIV(chnId, pCtrl);
    }

    regValue &= ~(0x03 << 9);
    regValue |= ((pCtrl->enKeyLen & 0x3) << 9);

    regValue &= ~(0x01 << 13);
    regValue |= ((bKeyByCA & 0x1) << 13);

//    if (HI_FALSE == bKeyByCA) /* By User */
//    {
        keyId = chnId;/**/

        //HAL_Cipher_SetKey(chnId, pCtrl->u32Key);

        regValue &= ~(0x07 << 14);
        regValue |= ((keyId & 0x7) << 14);
//    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_SetAGEThreshold(HI_U32 chnId, CIPHER_INT_TYPE_E intType, HI_U32 value)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (CIPHER_INT_TYPE_IN_BUF == intType)
    {
        regAddr = CIPHER_REG_CHANn_IAGE_CNT(chnId);
    }
    else if (CIPHER_INT_TYPE_OUT_BUF == intType)
    {
        regAddr = CIPHER_REG_CHANn_OAGE_CNT(chnId);
    }
    else
    {
        HI_ERR_CIPHER("SetAGEThreshold type err:%x.\n", intType);
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (value > 0xffff)
    {
        HI_ERR_CIPHER("SetAGEThreshold value err:%x, set to 0xffff\n", value);
        value = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, value);

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_SetIntThreshold(HI_U32 chnId, CIPHER_INT_TYPE_E intType, HI_U32 value)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (CIPHER_INT_TYPE_IN_BUF == intType)
    {
        regAddr = CIPHER_REG_CHANn_INT_ICNTCFG(chnId);
    }
    else if (CIPHER_INT_TYPE_OUT_BUF == intType)
    {
        regAddr = CIPHER_REG_CHANn_INT_OCNTCFG(chnId);
    }
    else
    {
        HI_ERR_CIPHER("SetIntThreshold type err:%x.\n", intType);
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (value > 0xffff)
    {
        HI_ERR_CIPHER("SetIntThreshold value err:%x, set to 0xffff\n", value);
        value = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, value);

    return HI_SUCCESS;
}

/*
interrupt enable
[31]-----cipher module unitary interrupt enable
[30:16]--reserved
[15] channel 7 output queue data interrupt enable
[14] channel 6 output queue data interrupt enable
[... ] channel ... output queue data interrupt enable
[9]   channel 1 output queue data interrupt enable
[8]   channel 0 data dispose finished interrupt enble
[7] channel 7 input queue data interrupt enable
[6] channel 6 input queue data interrupt enable
...
[1] channel 1 input queue data interrupt enable
[0] reserved
*/
HI_S32 HAL_Cipher_EnableInt(HI_U32 chnId, int intType)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    regValue |= (1 << 31); /* sum switch int_en */

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        regValue |= (1 << 8);
    }
    else
    {
        if (CIPHER_INT_TYPE_OUT_BUF == (CIPHER_INT_TYPE_OUT_BUF & intType))
        {
            regValue |= (1 << (8 + chnId));
        }

        /* NOT else if */
        if (CIPHER_INT_TYPE_IN_BUF == (CIPHER_INT_TYPE_IN_BUF & intType))
        {
            regValue |= (1 << (0 + chnId));
        }
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);

    HI_INFO_CIPHER("HAL_Cipher_EnableInt: Set INT_EN:%#x\n", regValue);

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_DisableInt(HI_U32 chnId, int intType)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        regValue &= ~(1 << 8);
    }
    else
    {
        if (CIPHER_INT_TYPE_OUT_BUF == (CIPHER_INT_TYPE_OUT_BUF & intType))
        {
            regValue &= ~(1 << (8 + chnId));
        }

        /* NOT else if */
        if (CIPHER_INT_TYPE_IN_BUF == (CIPHER_INT_TYPE_IN_BUF & intType))
        {
            regValue &= ~(1 << (0 + chnId));
        }
    }

    if (0 == (regValue & 0x7fffffff))
    {
        regValue &= ~(1 << 31); /* regValue = 0; sum switch int_en */
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);

    HI_INFO_CIPHER("HAL_Cipher_DisableInt: Set INT_EN:%#x\n", regValue);

    return HI_SUCCESS;
}

HI_VOID HAL_Cipher_DisableAllInt(HI_VOID)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    regValue = 0;
    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);
}
/*
interrupt status register
[31:16]--reserved
[15] channel 7 output queue data interrupt enable
[14] channel 6 output queue data interrupt enable
[... ] channel ... output queue data interrupt enable
[9]   channel 1 output queue data interrupt enable
[8]   channel 0 data dispose finished interrupt enble
[7] channel 7 input queue data interrupt enable
[6] channel 6 input queue data interrupt enable
...
[1] channel 1 input queue data interrupt enable
[0] reserved
*/

HI_VOID HAL_Cipher_GetIntState(HI_U32 *pState)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_STATUS;
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    if (pState)
    {
        *pState = regValue;
    }

   HI_INFO_CIPHER("HAL_Cipher_GetIntState=%#x\n", regValue);
}

HI_VOID HAL_Cipher_GetIntEnState(HI_U32 *pState)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    if (pState)
    {
        *pState = regValue;
    }

   HI_INFO_CIPHER("HAL_Cipher_GetIntEnState=%#x\n", regValue);
}

HI_VOID HAL_Cipher_GetRawIntState(HI_U32 *pState)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_RAW;
    
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    if (pState)
    {
        *pState = regValue;
    }

    HI_INFO_CIPHER("HAL_Cipher_GetRawIntState=%#x\n", regValue);
}

HI_VOID HAL_Cipher_ClrIntState(HI_U32 intStatus)
{
    HI_U32 regAddr;
    HI_U32 regValue;

    regAddr = CIPHER_REG_INT_RAW;
    regValue = intStatus;
    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);
}

HI_VOID HAL_Cipher_SetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E enMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U stHDCPModeCtrl;

    memset((HI_VOID *)&stHDCPModeCtrl, 0, sizeof(stHDCPModeCtrl.u32));

    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &stHDCPModeCtrl.u32);
    
    if ( CIPHER_HDCP_MODE_NO_HDCP_KEY == enMode)
    {
        stHDCPModeCtrl.bits.hdcp_mode_en = 0;
    }
    else
    {
        stHDCPModeCtrl.bits.hdcp_mode_en = 1;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, stHDCPModeCtrl.u32);
    
    return;
}

HI_S32 HAL_Cipher_GetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E *penMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U stHDCPModeCtrl;

    if ( NULL == penMode )
    {
        HI_ERR_CIPHER("Invald param, null pointer!\n");
        return HI_FAILURE;
    }

    memset((HI_VOID *)&stHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));

    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &stHDCPModeCtrl.u32);
    
    if ( 0 == stHDCPModeCtrl.bits.hdcp_mode_en)
    {
        *penMode = CIPHER_HDCP_MODE_NO_HDCP_KEY;
    }
    else
    {
        *penMode = CIPHER_HDCP_MODE_HDCP_KEY;
    }

    return HI_SUCCESS;
}

HI_VOID HAL_Cipher_SetHdcpKeyRamMode(HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E enMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U unHDCPModeCtrl;

    memset((HI_VOID *)&unHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));

    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);

    if ( CIPHER_HDCP_KEY_RAM_MODE_READ == enMode)
    {
        unHDCPModeCtrl.bits.tx_read = 0x1;      //hdmi read mode
    }
    else
    {
        unHDCPModeCtrl.bits.tx_read = 0x0;      //cpu write mode
    }    

    (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, unHDCPModeCtrl.u32);
    
    return;
}

HI_S32 HAL_Cipher_GetHdcpKeyRamMode(HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E *penMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U unHDCPModeCtrl;

    if ( NULL == penMode )
    {
        return HI_FAILURE;
    }

    memset((HI_VOID *)&unHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));
    
    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);
    
    if ( 0 == unHDCPModeCtrl.bits.tx_read )
    {
        *penMode = CIPHER_HDCP_KEY_RAM_MODE_WRITE;      //cpu write mode
    }
    else
    {
        *penMode = CIPHER_HDCP_KEY_RAM_MODE_READ;       //hdmi read mode
    }    
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_SetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enHdcpKeySelectMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U unHDCPModeCtrl;

    memset((HI_VOID *)&unHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));

    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);       
    
    if ( CIPHER_HDCP_KEY_TYPE_OTP_ROOT_KEY == enHdcpKeySelectMode )
    {
        unHDCPModeCtrl.bits.hdcp_rootkey_sel = 0x00;
    }
    else if ( CIPHER_HDCP_KEY_TYPE_HISI_DEFINED == enHdcpKeySelectMode )
    {
        unHDCPModeCtrl.bits.hdcp_rootkey_sel = 0x01;
    }
    else if ( CIPHER_HDCP_KEY_TYPE_HOST_ROOT_KEY == enHdcpKeySelectMode)
    {
        unHDCPModeCtrl.bits.hdcp_rootkey_sel = 0x2;
    }
    else
    {
        unHDCPModeCtrl.bits.hdcp_rootkey_sel = 0x3;
        (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, unHDCPModeCtrl.u32);

        HI_ERR_CIPHER("Unexpected hdcp key type selected!\n");
        return HI_FAILURE;
    }
    
    (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, unHDCPModeCtrl.u32);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E *penHdcpKeySelectMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U unHDCPModeCtrl;
    
    if ( NULL == penHdcpKeySelectMode )
    {
        HI_ERR_CIPHER("Invalid param, NULL pointer!\n");
        return HI_FAILURE;
    }

    memset((HI_VOID *)&unHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));
    
    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);

    if ( 0x00 == unHDCPModeCtrl.bits.hdcp_rootkey_sel )
    {
        *penHdcpKeySelectMode = CIPHER_HDCP_KEY_TYPE_OTP_ROOT_KEY;
    }
    else if ( 0x01 == unHDCPModeCtrl.bits.hdcp_rootkey_sel)
    {
        *penHdcpKeySelectMode = CIPHER_HDCP_KEY_TYPE_HISI_DEFINED;
    }
    else if (  0x02 == unHDCPModeCtrl.bits.hdcp_rootkey_sel )
    {
        *penHdcpKeySelectMode = CIPHER_HDCP_KEY_TYPE_HOST_ROOT_KEY;
    }
    else
    {
        *penHdcpKeySelectMode = CIPHER_HDCP_KEY_TYPE_BUTT;
    }
    
    return HI_SUCCESS;
}

HI_VOID HAL_Cipher_ClearHdcpCtrlReg(HI_VOID)
{
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_REG_HDCP_MODE_CTRL, 0);
    return;
}

HI_U32 g_u32HashCount = 0;
HI_U32 g_u32RecLen = 0;
HI_S32 HAL_Cipher_CalcHashInit(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 ret = HI_SUCCESS;
    CIPHER_SHA_CTRL_U unCipherSHACtrl;
    CIPHER_SHA_START_U unCipherSHAStart;
    HI_CHIP_TYPE_E enChipType = HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_BUTT;
    HI_U32 u32WriteData = 0;
    HI_U32 i = 0;

    if( NULL == pCipherHashData )
    {
        HI_ERR_CIPHER("Error! Null pointer input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    ret = HAL_CIPHER_WaitHashIdle();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Time out!Hash is busy now!\n");
        (HI_VOID)HAL_CIPHER_MarkHashIdle();
        return HI_FAILURE;
    }

    g_u32HashCount = 0;
    g_u32RecLen = 0;

    /* set little-endian for cv200es */
    (HI_VOID)HI_DRV_SYS_GetChipVersion(&enChipType, &enChipVersion);
    if((HI_CHIP_TYPE_HI3716CES == enChipType) && (HI_CHIP_VERSION_V200 == enChipVersion))
    {
        (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_SEC_MISC_CTR_ADDR, 0x2);
    }

    /* wait for hash_rdy */
    ret = HASH_WaitReady(HASH_READY);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    /* set hmac-sha key */
    if( ((HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType) || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType))
        && (HI_CIPHER_HMAC_KEY_FROM_CPU == pCipherHashData->enHMACKeyFrom) )
    {
        for( i = 0; i < CIPHER_HMAC_KEY_LEN; i = i + 4)
        {
            u32WriteData = (pCipherHashData->u8HMACKey[3+i] << 24) |
                           (pCipherHashData->u8HMACKey[2+i] << 16) |
                           (pCipherHashData->u8HMACKey[1+i] << 8)  |
                           (pCipherHashData->u8HMACKey[0+i]);
            (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_MCU_KEY0 + i, u32WriteData);
        }
    }

    /* write total len low and high */
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_TOTALLEN_LOW_ADDR, pCipherHashData->u32TotalDataLen + pCipherHashData->u32PaddingLen);
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_TOTALLEN_HIGH_ADDR, 0);

    /* config sha_ctrl : read by dma first, and by cpu in the hash final function */
    unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.read_ctrl = 0;
    if( HI_UNF_CIPHER_HASH_TYPE_SHA1 == pCipherHashData->enShaType )
    {
        unCipherSHACtrl.bits.hardkey_hmac_flag = 0;
        unCipherSHACtrl.bits.sha_sel= 0x0;
    }
    else if( HI_UNF_CIPHER_HASH_TYPE_SHA256 == pCipherHashData->enShaType )
    {
        unCipherSHACtrl.bits.hardkey_hmac_flag = 0;
        unCipherSHACtrl.bits.sha_sel= 0x1;
    }
    else if( HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType )
    {
        unCipherSHACtrl.bits.hardkey_hmac_flag = 1;
        unCipherSHACtrl.bits.sha_sel= 0x0;
        unCipherSHACtrl.bits.hardkey_sel = pCipherHashData->enHMACKeyFrom;
    }
    else if( HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType )
    {
        unCipherSHACtrl.bits.hardkey_hmac_flag = 1;
        unCipherSHACtrl.bits.sha_sel= 0x1;
        unCipherSHACtrl.bits.hardkey_sel = pCipherHashData->enHMACKeyFrom;
    }
    else
    {
        HI_ERR_CIPHER("Invalid hash type input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);    
    
    /* config sha_start */
    unCipherSHAStart.u32 = 0;
    unCipherSHAStart.bits.sha_start = 1;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_START_ADDR, unCipherSHAStart.u32);

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_CalcHashUpdate(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CIPHER_SHA_STATUS_U unCipherSHAStatus;
    CIPHER_SHA_CTRL_U unCipherSHACtrl;
    MMZ_BUFFER_S stMMZBuffer = {0};
    HI_U32 u32WriteData = 0;
    HI_U32 u32WriteLength = 0;
    HI_U32 u32CPUWriteRound = 0;
    HI_U8 *pu8Ptr = NULL;
    HI_U32 i = 0;
    HI_U32 u32RecDmaLen = 0;
    HI_SIZE_T ulStartTime = 0;
    HI_SIZE_T ulLastTime = 0;
    HI_SIZE_T ulDuraTime = 0;

    if( (NULL == pCipherHashData) || ( NULL == pCipherHashData->pu8InputData) )
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    s32Ret= HASH_WaitReady(REC_READY);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        s32Ret = HI_FAILURE;
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    unCipherSHAStatus.u32 = 0;
    u32WriteLength = pCipherHashData->u32InputDataLen & (~0x3f);

    if( 0 != u32WriteLength )
    {
        s32Ret = HI_DRV_MMZ_AllocAndMap("HASH", NULL, u32WriteLength, 0, &stMMZBuffer);
        if( HI_SUCCESS != s32Ret )
        {
            HI_ERR_CIPHER("Error, mmz alloc and map failed!\n");
            (HI_VOID)HAL_Cipher_HashSoftReset();
            return HI_FAILURE;
        }

        memcpy((HI_U8 *)stMMZBuffer.u32StartVirAddr, pCipherHashData->pu8InputData, u32WriteLength);
        mb();
        (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DMA_START_ADDR, stMMZBuffer.u32StartPhyAddr);
        (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DMA_LEN, u32WriteLength);
        g_u32HashCount += u32WriteLength;
        g_u32RecLen += u32WriteLength;
    }

    ulStartTime = jiffies;
    while(1)
    {
        (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_REC_LEN1, &u32RecDmaLen);
        if( (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType)
         || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType) )
        {
            if(g_u32RecLen == (u32RecDmaLen - 0x40))
            {
                break;
            }
        }
        else
        {
            if(g_u32RecLen == u32RecDmaLen)
            {
                break;
            }
        }

        ulLastTime = jiffies;
        ulDuraTime = jiffies_to_msecs(ulLastTime - ulStartTime);
        if (ulDuraTime >= HASH_MAX_DURATION )
        {
            HI_ERR_CIPHER("Error! Hash time out!g_u32RecLen = 0x%08x, u32RecDmaLen = 0x%08x\n", g_u32RecLen, u32RecDmaLen);
            s32Ret = HI_FAILURE;
            (HI_VOID)HAL_Cipher_HashSoftReset();
            goto __QUIT__;
        }
    }

    s32Ret  = HASH_WaitReady(REC_READY);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        s32Ret = HI_FAILURE;
        (HI_VOID)HAL_Cipher_HashSoftReset();
        goto __QUIT__;
    }

    u32WriteLength = pCipherHashData->u32InputDataLen & 0x3f;

    if( 0 == u32WriteLength )
    {
        s32Ret = HI_SUCCESS;
        goto __QUIT__;
    }

    /* the last round , if input data is not 64bytes aligned */
    pu8Ptr = pCipherHashData->pu8InputData + pCipherHashData->u32InputDataLen - u32WriteLength;

    unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.read_ctrl = 1;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32); 

    u32CPUWriteRound = u32WriteLength / 4;
    if( 0 != u32CPUWriteRound)
    {
        for(i = 0; i < u32CPUWriteRound * 4; i += 4 )
        {
            s32Ret  = HASH_WaitReady(REC_READY);
            if(HI_SUCCESS != s32Ret)
            {
                HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
                s32Ret = HI_FAILURE;
                (HI_VOID)HAL_Cipher_HashSoftReset();
                goto __QUIT__;
            }

            u32WriteData = ( pu8Ptr[i + 3] << 24)
                         | ( pu8Ptr[i + 2] << 16)
                         | ( pu8Ptr[i + 1] << 8 )
                         |   pu8Ptr[i];
            (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DATA_IN, u32WriteData);
            g_u32HashCount += 4;
        }
    }

    pu8Ptr += u32CPUWriteRound * 4;
    u32WriteLength = pCipherHashData->u32InputDataLen & 0x3;

    s32Ret  = HASH_WaitReady(REC_READY);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        s32Ret = HI_FAILURE;
        (HI_VOID)HAL_Cipher_HashSoftReset();
        goto __QUIT__;
    }

    switch(u32WriteLength)
    {
        case 1:
        {
            u32WriteData = ( pCipherHashData->u8Padding[2] << 24)
                         | ( pCipherHashData->u8Padding[1] << 16)
                         | ( pCipherHashData->u8Padding[0] << 8 )
                         |   pu8Ptr[0];
            (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DATA_IN, u32WriteData);
            g_u32HashCount += 4;
            break;
        }
        case 2:
        {
            u32WriteData = ( pCipherHashData->u8Padding[1] << 24)
                         | ( pCipherHashData->u8Padding[0] << 16)
                         | ( pu8Ptr[1] << 8 )
                         |   pu8Ptr[0];
            (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DATA_IN, u32WriteData);
            g_u32HashCount += 4;
            break;
        }
        case 3:
        {
            u32WriteData = ( pCipherHashData->u8Padding[0] << 24)
                         | ( pu8Ptr[2] << 16)
                         | ( pu8Ptr[1] << 8 )
                         |   pu8Ptr[0];
            (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DATA_IN, u32WriteData);
            g_u32HashCount += 4;
            break;
        }
        default:
        {
            /* the input data is 4bytes aligned */
            break;
        }
    }

__QUIT__:
    HI_DRV_MMZ_UnmapAndRelease(&stMMZBuffer);

    /* the last step: make sure rec_ready */
    if( HI_SUCCESS == s32Ret )
    {
        s32Ret= HASH_WaitReady(REC_READY);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
            (HI_VOID)HAL_Cipher_HashSoftReset();
            s32Ret = HI_FAILURE;
        }
    }

    return s32Ret;
}

HI_S32 HAL_Cipher_CalcHashFinal(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CIPHER_SHA_STATUS_U unCipherSHAStatus;
    CIPHER_SHA_CTRL_U unCipherSHACtrl;
    HI_U32 u32WriteData = 0;
	HI_U32 sha_out[8];
    HI_U32 i = 0;
    HI_U32 u32WritePaddingLength = 0;
    HI_U32 u32DataLengthNotAligned = 0;
    HI_U32 u32StartFromPaddingBuffer = 0;

    if( (NULL == pCipherHashData) || (NULL == pCipherHashData->pu8Output) )
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    /* write padding data */
    unCipherSHAStatus.u32 = 0;
    u32DataLengthNotAligned = pCipherHashData->u32TotalDataLen & 0x3;
    u32StartFromPaddingBuffer = (0 == u32DataLengthNotAligned)?(0):(4 - u32DataLengthNotAligned);
    u32WritePaddingLength = pCipherHashData->u32PaddingLen - u32StartFromPaddingBuffer;

    if( 0 != (u32WritePaddingLength & 0x3) )
    {
        HI_ERR_CIPHER("Error, Padding length not aligned: %d!\n", (u32WritePaddingLength & 0x3));
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    s32Ret  = HASH_WaitReady(REC_READY);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.read_ctrl = 1;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32); 

    for( i = u32StartFromPaddingBuffer; i < pCipherHashData->u32PaddingLen; i = i + 4)
    {
        s32Ret  = HASH_WaitReady(REC_READY);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
            (HI_VOID)HAL_Cipher_HashSoftReset();
            return HI_FAILURE;
        }

        unCipherSHACtrl.u32 = 0;
        (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
        unCipherSHACtrl.bits.read_ctrl = 1;
        (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);          

        /* small endian */
        u32WriteData = (pCipherHashData->u8Padding[3+i] << 24) 
                     | (pCipherHashData->u8Padding[2+i] << 16) 
                     | (pCipherHashData->u8Padding[1+i] << 8) 
                     |  pCipherHashData->u8Padding[0+i];
        (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DATA_IN, u32WriteData);
        g_u32HashCount += 4;
    }
 
    /* wait for hash_ready */
    s32Ret= HASH_WaitReady(HASH_READY);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    /* read digest */
    unCipherSHAStatus.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_STATUS_ADDR, &unCipherSHAStatus.u32);

    if( 0x00 == unCipherSHAStatus.bits.error_state )
    {
        memset(sha_out, 0x0, sizeof(sha_out));
        if( (HI_UNF_CIPHER_HASH_TYPE_SHA1 == pCipherHashData->enShaType)
         || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType))
        {
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT1, &(sha_out[0]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT2, &(sha_out[1]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT3, &(sha_out[2]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT4, &(sha_out[3]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT5, &(sha_out[4]));

    		for(i = 0; i < 5; i++)
    		{
    		    /* small endian */
    			pCipherHashData->pu8Output[i * 4 + 3] = sha_out[i] >> 24;
    			pCipherHashData->pu8Output[i * 4 + 2] = sha_out[i] >> 16;
    			pCipherHashData->pu8Output[i * 4 + 1] = sha_out[i] >> 8;
    			pCipherHashData->pu8Output[i * 4]     = sha_out[i];
    		}
        }
        else if( (HI_UNF_CIPHER_HASH_TYPE_SHA256 == pCipherHashData->enShaType )
              || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType))
        {
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT1, &(sha_out[0]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT2, &(sha_out[1]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT3, &(sha_out[2]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT4, &(sha_out[3]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT5, &(sha_out[4]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT6, &(sha_out[5]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT7, &(sha_out[6]));
    		(HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT8, &(sha_out[7]));

    		for(i = 0; i < 8; i++)
    		{
    		    /* small endian */
    			pCipherHashData->pu8Output[i * 4 + 3] = sha_out[i] >> 24;
    			pCipherHashData->pu8Output[i * 4 + 2] = sha_out[i] >> 16;
    			pCipherHashData->pu8Output[i * 4 + 1] = sha_out[i] >> 8;
    			pCipherHashData->pu8Output[i * 4]     = sha_out[i];
    		}
        }
        else
        {
            HI_ERR_CIPHER("Invalid hash type : %d!\n", pCipherHashData->enShaType);
            (HI_VOID)HAL_Cipher_HashSoftReset();
            return HI_FAILURE;
        }
    }
    else
    {
        HI_ERR_CIPHER("Error! SHA Status Reg: error_state = %d!\n", unCipherSHAStatus.bits.error_state);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    (HI_VOID)HAL_CIPHER_MarkHashIdle();

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_HashSoftReset(HI_VOID)
{
    U_PERI_CRG49 unShaCrg;

/* reset request */
    unShaCrg.u32 = g_pstRegCrg->PERI_CRG49.u32;
    unShaCrg.bits.sha_cken = 1;
    unShaCrg.bits.sha_srst_req = 1;
    g_pstRegCrg->PERI_CRG49.u32 = unShaCrg.u32;

    mdelay(1);

/* cancel reset */
    unShaCrg.u32 = g_pstRegCrg->PERI_CRG49.u32;
    unShaCrg.bits.sha_cken = 1;
    unShaCrg.bits.sha_srst_req = 0;
    g_pstRegCrg->PERI_CRG49.u32 = unShaCrg.u32;

    (HI_VOID)HAL_CIPHER_MarkHashIdle();
    return HI_SUCCESS;
}

HI_VOID HAL_Cipher_Init(void)
{
    U_PERI_CRG48 unCipherCrg;

#ifdef CHIP_TYPE_hi3716cv200es
    unCipherCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    /* reset request */
    unCipherCrg.bits.ca_kl_srst_req = 1;
    unCipherCrg.bits.ca_ci_srst_req = 1;
    unCipherCrg.bits.otp_srst_req = 1;
    /* clock open */
    unCipherCrg.bits.ca_kl_bus_cken = 1;
    unCipherCrg.bits.ca_ci_bus_cken = 1;
    unCipherCrg.bits.ca_ci_cken = 1;
    /* ca clock select : 200M */
    unCipherCrg.bits.ca_clk_sel = 0;
    g_pstRegCrg->PERI_CRG48.u32 = unCipherCrg.u32;

    mdelay(1);

    unCipherCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    /* cancel reset */
    unCipherCrg.bits.ca_kl_srst_req = 0;
    unCipherCrg.bits.ca_ci_srst_req = 0;
    unCipherCrg.bits.otp_srst_req = 0;
    /* make sure clock opened */
    unCipherCrg.bits.ca_kl_bus_cken = 1;
    unCipherCrg.bits.ca_ci_bus_cken = 1;
    unCipherCrg.bits.ca_ci_cken = 1;
    /* make sure ca clock select : 200M */
    unCipherCrg.bits.ca_clk_sel = 0;
    g_pstRegCrg->PERI_CRG48.u32 = unCipherCrg.u32;

#else
    unCipherCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    /* reset request */
    unCipherCrg.bits.ca_kl_srst_req = 1;
    unCipherCrg.bits.ca_ci_srst_req = 1;
    unCipherCrg.bits.otp_srst_req = 1;
    /* ca clock select : 200M */
    unCipherCrg.bits.ca_ci_clk_sel = 0;
    g_pstRegCrg->PERI_CRG48.u32 = unCipherCrg.u32;

    mdelay(1);

    unCipherCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    unCipherCrg.bits.ca_kl_srst_req = 0;
    unCipherCrg.bits.ca_ci_srst_req = 0;
    unCipherCrg.bits.otp_srst_req = 0;
    /* make sure ca clock select : 200M */
    unCipherCrg.bits.ca_ci_clk_sel = 0;
    g_pstRegCrg->PERI_CRG48.u32 = unCipherCrg.u32;
#endif

    return;
}

HI_VOID HAL_Cipher_DeInit(void)
{
    return;
}


