/*******************************************************************************
 *              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: hal_aiao.c
 * Description: aiao interface of module.
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1    2012-09-22   z40717     NULL         init.
 ********************************************************************************/

#include <asm/setup.h>
#include <asm/io.h>
#include <mach/hardware.h>
#include <mach/platform.h>
#include <linux/delay.h>

#include "hi_type.h"
#include "hi_module.h"
#include "hi_drv_struct.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"

#include "hi_drv_module.h"
#include "hi_drv_mmz.h"
#include "hi_reg_common.h"
#include "hi_drv_ao.h"
#include "hi_drv_ai.h"
#include "hal_aiao.h"
#include "hal_aiao_priv.h"
#include "hal_aiao_func.h"
#include "audio_util.h"
#include "hi_reg_common.h"
#ifdef ALSA_DEBUG_TIME
#include <linux/time.h>
#endif
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

DECLARE_MUTEX(g_HalAiaoMutex);

atomic_t  atmAiaoInitCnt;

static HI_S32 g_AiaoSuspendFlag = 0;
static HI_S32 g_AiaoResumeFlag = 0;

typedef struct
{
    HI_HANDLE     hPort[AIAO_INT_BUTT];
    AIAO_IsrFunc *fRegIsr[AIAO_INT_BUTT];
	void *sub[AIAO_INT_BUTT];//only for alsa isr HI_ALSA_AI_SUPPORT
} AIAO_GLOBAL_SOURCE_S;

/* private state */
static AIAO_GLOBAL_SOURCE_S g_AIAORm;

/*
 *  AIAO interrupt handle function
 */
//TO DO
volatile HI_U32 aiao_isr_num = 0;
EXPORT_SYMBOL(aiao_isr_num);

#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
static AIAO_I2S_BOARD_CONFIG g_stI2SBoardSettings[AIAO_MAX_EXT_I2S_NUMBER];

static HI_VOID   HAL_AIAO_BoardI2SReset(HI_VOID)
{
    AIAO_I2S_BOARD_CONFIG *pstI2SBorad;
    HI_S32 n;

    for (n = 0; n < AIAO_MAX_EXT_I2S_NUMBER; n++)
    {
        pstI2SBorad = &g_stI2SBoardSettings[n];
        pstI2SBorad->u32InitFlag = 0;
        pstI2SBorad->enTxPortID = AIAO_PORT_BUTT;
        pstI2SBorad->enRxPortID = AIAO_PORT_BUTT;
    }

 #if defined (HI_I2S0_SUPPORT)
    pstI2SBorad = &g_stI2SBoardSettings[0];
 #if defined (CHIP_TYPE_hi3716cv200es) || defined (CHIP_TYPE_hi3716cv200) \
        || defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100) \
        || defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
        || defined (CHIP_TYPE_hi3718mv100) 
    pstI2SBorad->enTxPortID = AIAO_PORT_TX0;
    pstI2SBorad->enTxSource = AIAO_TX0;
    pstI2SBorad->enTxCrgSource = AIAO_TX_CRG0;
    pstI2SBorad->enTxCrgMode = AIAO_CRG_MODE_MASTER;

    pstI2SBorad->enRxPortID = AIAO_PORT_RX0;
    pstI2SBorad->enRxSource = AIAO_RX0;
    /* hi3716cv200 aiao external i2s rx allways work at   AIAO_CRG_MODE_DUPLICATE */
    pstI2SBorad->enRxCrgSource = AIAO_TX_CRG0;
    pstI2SBorad->enRxCrgMode = AIAO_CRG_MODE_DUPLICATE;

    // todo, ¹Ü½Å¸´ÓÃÅäÖÃ
#if defined (HI_UNF_I2S0_MCLK_SUPPORT)
        g_pstRegIO->ioshare_reg11.u32 = 0x1;
#endif
    
#if defined (HI_UNF_I2S0_BCLK_SUPPORT)
         g_pstRegIO->ioshare_reg12.u32 = 0x1;
#endif
    
#if defined (HI_UNF_I2S0_WS_SUPPORT)
        g_pstRegIO->ioshare_reg13.u32 = 0x1;
#endif
    
#if defined (HI_UNF_I2S0_DOUT0_SUPPORT)
        g_pstRegIO->ioshare_reg14.u32 = 0x1;
#endif
    
#if defined (HI_UNF_I2S0_DOUT1_SUPPORT)
        g_pstRegIO->ioshare_reg16.u32 = 0x2;
#endif
    
#if defined (HI_UNF_I2S0_DOUT2_SUPPORT)
        g_pstRegIO->ioshare_reg17.u32 = 0x2;
#endif
    
#if defined (HI_UNF_I2S0_DOUT3_SUPPORT)
        g_pstRegIO->ioshare_reg18.u32 = 0x2;
#endif
    
#if defined (HI_UNF_I2S0_DIN0_SUPPORT)
        g_pstRegIO->ioshare_reg15.u32 = 0x1;
#endif
    
#if defined (HI_UNF_I2S0_DIN1_SUPPORT)
        g_pstRegIO->ioshare_reg20.u32 = 0x2;
#endif
    
#if defined (HI_UNF_I2S0_DIN2_SUPPORT)
        g_pstRegIO->ioshare_reg5.u32 = 0x4;
#endif
    
#if defined (HI_UNF_I2S0_DIN3_SUPPORT)
        g_pstRegIO->ioshare_reg6.u32 = 0x4;
#endif
  
  #else
   #error YOU MUST DEFINE  CHIP_TYPE!
  #endif
 #endif

 #if defined (HI_I2S1_SUPPORT)
    pstI2SBorad = &g_stI2SBoardSettings[1];
  #if defined (CHIP_TYPE_hi3716cv200es) || (CHIP_TYPE_hi3716cv200)\
        || defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100) \
        || defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
        || defined (CHIP_TYPE_hi3718mv100) 
    pstI2SBorad->enTxPortID = AIAO_PORT_TX1;
    pstI2SBorad->enTxSource = AIAO_TX1;
    pstI2SBorad->enTxCrgSource = AIAO_TX_CRG1;
    pstI2SBorad->enTxCrgMode = AIAO_CRG_MODE_MASTER;

    pstI2SBorad->enRxPortID = AIAO_PORT_RX1;
    pstI2SBorad->enRxSource = AIAO_RX1;
    /* hi3716cv200 aiao external i2s rx allways work at   AIAO_CRG_MODE_DUPLICATE */
    pstI2SBorad->enRxCrgSource = AIAO_TX_CRG1;
    pstI2SBorad->enRxCrgMode = AIAO_CRG_MODE_DUPLICATE;

// todo, ¹Ü½Å¸´ÓÃÅäÖÃ
#if defined (CHIP_TYPE_hi3716cv200) \
        || defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100)  \
        || defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
        || defined (CHIP_TYPE_hi3718mv100) 
#if defined (HI_UNF_I2S1_MCLK_SUPPORT)
    g_pstRegIO->ioshare_reg64.u32 = 0x7;
#endif

#if defined (HI_UNF_I2S1_BCLK_SUPPORT)
    g_pstRegIO->ioshare_reg68.u32 = 0x7;
#endif

#if defined (HI_UNF_I2S1_WS_SUPPORT)
    g_pstRegIO->ioshare_reg66.u32 = 0x7;
#endif

#if defined (HI_UNF_I2S1_DOUT0_SUPPORT)
    g_pstRegIO->ioshare_reg67.u32 = 0x7;
#endif

#if defined (HI_UNF_I2S1_DIN0_SUPPORT)
    g_pstRegIO->ioshare_reg65.u32 = 0x7;
#endif
#endif
    
  #else
   #error YOU MUST DEFINE  CHIP_TYPE!
  #endif
 #endif
}

#endif

static irqreturn_t AIAOIsr(int irq, void * dev_id)
{
    HI_U32 Id;
    HI_U32 TopIntStatus;
    AIAO_PORT_ID_E enPortId;
    HI_HANDLE hPort;
    U_PERI_INT_DSP0TOA9 uTmpVal;

    TopIntStatus = iHAL_AIAO_GetTopIntStatus();
    for (Id = 0; Id < (HI_U32)AIAO_INT_BUTT; Id++)
    {
        enPortId = ID2PORT(Id);         //to verify .......+++
        if (Port2IntStatus(enPortId, TopIntStatus))
        {
            HI_U32 PortIntRawStatus = iHAL_AIAO_P_GetIntStatusRaw(enPortId);
            //TO DO
            if(AIAO_PORT_TX2 == enPortId)
            {
               ACCESS_ONCE(aiao_isr_num)++;
               
               uTmpVal.u32 = g_pstRegPeri->PERI_INT_DSP0TOA9.u32;
               uTmpVal.bits.int_swi_dsp0toa9 = 1;
               g_pstRegPeri->PERI_INT_DSP0TOA9.u32 = uTmpVal.u32;
            }

            hPort = g_AIAORm.hPort[Id];
            if (hPort)
            {
                //enPortId = ID2PORT(Id);
                if (g_AIAORm.fRegIsr[Id])
                {
                    g_AIAORm.fRegIsr[Id](ID2PORT(Id), PortIntRawStatus,g_AIAORm.sub[Id]);//g_AIAORm.sub[Id] for alsa isr  HI_ALSA_AI_SUPPORT
                }
            }

            iHAL_AIAO_P_ClrInt(enPortId, PortIntRawStatus);
        }
    }

    return IRQ_HANDLED;
}

HI_VOID    HAL_AIAO_PowerOff(HI_VOID)
{
    HI_S32 Ret;
    Ret = down_interruptible(&g_HalAiaoMutex);
    if(HI_SUCCESS != Ret)
    {
        return;
    }
    
    AIAO_HW_PowerOff();

    up(&g_HalAiaoMutex);

    return;
}

HI_S32    HAL_AIAO_Suspend(HI_VOID)
{
    if(!g_AiaoSuspendFlag)
    {
        HAL_AIAO_FreeIsr();
        g_AiaoSuspendFlag = 1;
    }

    HAL_AIAO_PowerOff();
    g_AiaoResumeFlag = 0;
    
    return HI_SUCCESS;
}

HI_S32    HAL_AIAO_Resume(HI_VOID)
{
    HI_S32 Ret;
    if(!g_AiaoResumeFlag)
    {
        
        Ret = HAL_AIAO_PowerOn();
        if (HI_SUCCESS != Ret)
        {
            HI_FATAL_AI("AIAO hw reset fail\n");
            return HI_FAILURE;
        }
        
        Ret = HAL_AIAO_RequestIsr();
        if (HI_SUCCESS != Ret)
        {
            HI_FATAL_AI("AIAO request isr fail\n");
            return HI_FAILURE;
        }
        
        HAL_AIAO_SetTopInt(0xffffffff);  /* enable all top interrupt */
        g_AiaoResumeFlag = 1;
    }
    g_AiaoSuspendFlag =0;
    return HI_SUCCESS;
}


HI_S32    HAL_AIAO_PowerOn(HI_VOID)
{
    HI_S32 Ret;
    
    Ret = down_interruptible(&g_HalAiaoMutex);
    
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
    HAL_AIAO_BoardI2SReset();
#endif
    Ret = AIAO_HW_PowerOn();

    up(&g_HalAiaoMutex);
    return Ret;
}

HI_S32    HAL_AIAO_RequestIsr(HI_VOID)
{
    if (request_irq(AIAO_IRQ_NUM, AIAOIsr, IRQF_DISABLED, "hi_aiao_irq", NULL) != 0)
    {
        HI_FATAL_AIAO("request_irq failed irq num =%d!\n", AIAO_IRQ_NUM);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_VOID    HAL_AIAO_FreeIsr(HI_VOID)
{
    /* free irq */
    free_irq(AIAO_IRQ_NUM, NULL);
}


/* global function */
HI_S32                  HAL_AIAO_Init(HI_VOID)
{
    HI_S32 Ret;
    HI_U32 Id;
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (atomic_inc_return(&atmAiaoInitCnt) == 1)
    {
        if(HI_SUCCESS!=iHAL_AIAO_Init())
        {
            HI_FATAL_AIAO("iHAL_AIAO_Init failed \n");
            up(&g_HalAiaoMutex);
            return HI_FAILURE;
        }
        /* init aiao state */
        for (Id = 0; Id < (HI_U32)AIAO_INT_BUTT; Id++)
        {
            g_AIAORm.hPort[Id] = HI_NULL;
        }

        if (HI_SUCCESS!=HAL_AIAO_RequestIsr())
        {
            HI_FATAL_AIAO("request_irq failed\n");
            up(&g_HalAiaoMutex);
            return HI_FAILURE;
        }

        iHAL_AIAO_SetTopInt(0xffffffff);  /* enable all top interrupt */
        
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
        HAL_AIAO_BoardI2SReset();
#endif

    }
    
    up(&g_HalAiaoMutex);
    return HI_SUCCESS;
}

HI_VOID                 HAL_AIAO_DeInit(HI_VOID)
{
    HI_S32 Ret;
    HI_U32 Id;
    
    Ret = down_interruptible(&g_HalAiaoMutex);
    
    if (atomic_dec_return(&atmAiaoInitCnt) == 0)
    {
        iHAL_AIAO_SetTopInt(0);  /* disable all top interrupt */
        HAL_AIAO_FreeIsr();
        
        /* close port */
        for (Id = 0; Id < (HI_U32)AIAO_INT_BUTT; Id++)
        {
            if (g_AIAORm.hPort[Id])
            {
                iHAL_AIAO_P_Close(g_AIAORm.hPort[Id]);
            }

            g_AIAORm.hPort[Id]   = HI_NULL;
            g_AIAORm.fRegIsr[Id] = HI_NULL;
        }

        iHAL_AIAO_DeInit();

    }
    
    up(&g_HalAiaoMutex);
}

HI_VOID                 HAL_AIAO_GetHwCapability(HI_U32 *pu32Capability)
{
    HI_S32 Ret;
    
    Ret = down_interruptible(&g_HalAiaoMutex);
    iHAL_AIAO_GetHwCapability(pu32Capability);
    up(&g_HalAiaoMutex);
}

HI_VOID                 HAL_AIAO_GetHwVersion(HI_U32 *pu32Version)
{
    HI_S32 Ret;
    
    Ret = down_interruptible(&g_HalAiaoMutex);
    iHAL_AIAO_GetHwVersion(pu32Version);
    up(&g_HalAiaoMutex);
}

HI_VOID                 HAL_AIAO_DBG_RWReg(AIAO_Dbg_Reg_S *pstReg)
{
    HI_S32 Ret;
    
    Ret = down_interruptible(&g_HalAiaoMutex);
    iHAL_AIAO_DBG_RWReg(pstReg);
    up(&g_HalAiaoMutex);
}

HI_VOID                 HAL_AIAO_SetTopInt(HI_U32 u32Multibit)
{
    HI_S32 Ret;
    
    Ret = down_interruptible(&g_HalAiaoMutex);
    iHAL_AIAO_SetTopInt(u32Multibit);
    up(&g_HalAiaoMutex);
}

HI_U32                  HAL_AIAO_GetTopIntRawStatus(HI_VOID)
{
    HI_S32 Ret;
    
    Ret = down_interruptible(&g_HalAiaoMutex);
    Ret = iHAL_AIAO_GetTopIntRawStatus();
    up(&g_HalAiaoMutex);
    return Ret;
}

HI_U32                  HAL_AIAO_GetTopIntStatus(HI_VOID)
{
    HI_S32 Ret;
    
    Ret = down_interruptible(&g_HalAiaoMutex);
    Ret = iHAL_AIAO_GetTopIntStatus();
    up(&g_HalAiaoMutex);
    return Ret;
}

/* global port function */
HI_S32                  HAL_AIAO_P_Open(AIAO_PORT_ID_E enPortID, const AIAO_PORT_USER_CFG_S *pstConfig)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 Id = PORT2ID(enPortID);
    AIAO_IsrFunc *pisr;
    //AIAO_I2S_BOARD_CONFIG *pstI2SBorad;
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
    HI_S32 n;
#endif    
    
    Ret = down_interruptible(&g_HalAiaoMutex);
    
    if (HI_NULL == g_AIAORm.hPort[Id])
    {
        HI_HANDLE hPort;
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
        if((AIAO_PORT_TX0 == enPortID) || (AIAO_PORT_TX1 == enPortID)||(AIAO_PORT_RX0 == enPortID)||(AIAO_PORT_RX1 == enPortID))
        {
            if (HI_SUCCESS != HAL_AIAO_P_CheckBorardI2SOpenAttr(enPortID, &pstConfig->stIfAttr))
            {
                up(&g_HalAiaoMutex);
                return HI_FAILURE;
            }
        }
#endif

        Ret = iHAL_AIAO_P_Open(ID2PORT(Id), pstConfig, &hPort, &pisr);
        if (HI_SUCCESS == Ret)
        {
            g_AIAORm.hPort[Id]   = hPort;
            g_AIAORm.fRegIsr[Id] = pisr;
		    g_AIAORm.sub[Id] = pstConfig->substream;////g_AIAORm.sub[Id] for alsa isr       HI_ALSA_AI_SUPPORT     
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
            if((AIAO_PORT_TX0 == enPortID) || (AIAO_PORT_TX1 == enPortID)||(AIAO_PORT_RX0 == enPortID)||(AIAO_PORT_RX1 == enPortID))
            {
                HAL_AIAO_P_CrateBorardI2SOpenAttr(enPortID, &pstConfig->stIfAttr);
            }
            
            if((AIAO_PORT_RX0 == enPortID)||(AIAO_PORT_RX1 == enPortID))
            {
                for (n = 0; n < AIAO_MAX_EXT_I2S_NUMBER; n++)
                {
                    if (g_stI2SBoardSettings[n].enRxPortID == enPortID && !(g_stI2SBoardSettings[n].u32InitFlag & 0x2))
                    {
                        Ret = iHAL_AIAO_P_SetI2SMasterClk(g_stI2SBoardSettings[n].enTxPortID, ( AIAO_IfAttr_S *)&pstConfig->stIfAttr);
                    }
                }
            }
#endif
        }
    }
    
    up(&g_HalAiaoMutex);
    return Ret;
}

HI_VOID                 HAL_AIAO_P_Close(AIAO_PORT_ID_E enPortID)
{
    HI_S32 Ret;
    HI_U32 Id = PORT2ID(enPortID);
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        iHAL_AIAO_P_Close(g_AIAORm.hPort[Id]);
        g_AIAORm.hPort[Id] = HI_NULL;
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
        HAL_AIAO_P_DestroyBorardI2SOpenAttr(enPortID);
#endif
    }
    up(&g_HalAiaoMutex);
}

HI_S32 HAL_AIAO_P_SetAttr(AIAO_PORT_ID_E enPortID, AIAO_PORT_ATTR_S *pstAttr)
{
    HI_U32 Id  = PORT2ID(enPortID);
    HI_S32 Ret = HI_FAILURE;
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_SetAttr(g_AIAORm.hPort[Id], pstAttr);
    }
    
    up(&g_HalAiaoMutex);

    return Ret;
}

HI_S32                  HAL_AIAO_P_Open_Veri(AIAO_PORT_ID_E enPortID, const AIAO_PORT_USER_CFG_S *pstConfig)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 Id = PORT2ID(enPortID);
    AIAO_IsrFunc *pisr;
    //AIAO_I2S_BOARD_CONFIG *pstI2SBorad;
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
    HI_S32 n;
#endif    
    
    Ret = down_interruptible(&g_HalAiaoMutex);
    
    if (HI_NULL == g_AIAORm.hPort[Id])
    {
        HI_HANDLE hPort;
#if !defined(HI_AIAO_VERIFICATION_SUPPORT)
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
        if((AIAO_PORT_TX0 == enPortID) || (AIAO_PORT_TX1 == enPortID)||(AIAO_PORT_RX0 == enPortID)||(AIAO_PORT_RX1 == enPortID))
        {
            if (HI_SUCCESS != HAL_AIAO_P_CheckBorardI2SOpenAttr(enPortID, &pstConfig->stIfAttr))
            {
                up(&g_HalAiaoMutex);
                return HI_FAILURE;
            }
        }
#endif
#endif
        Ret = iHAL_AIAO_P_Open(ID2PORT(Id), pstConfig, &hPort, &pisr);
        if (HI_SUCCESS == Ret)
        {
            g_AIAORm.hPort[Id]   = hPort;
            g_AIAORm.fRegIsr[Id] = pisr;
#if !defined(HI_AIAO_VERIFICATION_SUPPORT)
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
            if((AIAO_PORT_TX0 == enPortID) || (AIAO_PORT_TX1 == enPortID)||(AIAO_PORT_RX0 == enPortID)||(AIAO_PORT_RX1 == enPortID))
            {
                HAL_AIAO_P_CrateBorardI2SOpenAttr(enPortID, &pstConfig->stIfAttr);
            }
            
            if((AIAO_PORT_RX0 == enPortID)||(AIAO_PORT_RX1 == enPortID))
            {
                for (n = 0; n < AIAO_MAX_EXT_I2S_NUMBER; n++)
                {
                    if (g_stI2SBoardSettings[n].enRxPortID == enPortID && !(g_stI2SBoardSettings[n].u32InitFlag & 0x2))
                    {
                        Ret = iHAL_AIAO_P_SetI2SMasterClk(g_stI2SBoardSettings[n].enTxPortID, ( AIAO_IfAttr_S *)&pstConfig->stIfAttr);
                    }
                }
            }
#endif
#endif
        }
    }
    
    up(&g_HalAiaoMutex);
    return Ret;
}

HI_VOID                 HAL_AIAO_P_Close_Veri(AIAO_PORT_ID_E enPortID)
{
    HI_S32 Ret;
    HI_U32 Id = PORT2ID(enPortID);
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        iHAL_AIAO_P_Close(g_AIAORm.hPort[Id]);
        g_AIAORm.hPort[Id] = HI_NULL;
#if !defined(HI_AIAO_VERIFICATION_SUPPORT)
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
        HAL_AIAO_P_DestroyBorardI2SOpenAttr(enPortID);
#endif
#endif
    }
    up(&g_HalAiaoMutex);
}

HI_S32 HAL_AIAO_P_GetAttr(AIAO_PORT_ID_E enPortID, AIAO_PORT_ATTR_S *pstAttr)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_GetAttr(g_AIAORm.hPort[Id], pstAttr);
    }
    
    up(&g_HalAiaoMutex);

    return Ret;
}

HI_S32                  HAL_AIAO_P_Start(AIAO_PORT_ID_E enPortID)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_Start(g_AIAORm.hPort[Id]);
    }
    
    up(&g_HalAiaoMutex);

    return Ret;
}

HI_S32                  HAL_AIAO_P_Stop(AIAO_PORT_ID_E enPortID, AIAO_PORT_STOPMODE_E enStopMode)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_Stop(g_AIAORm.hPort[Id], enStopMode);
    }
    
    up(&g_HalAiaoMutex);

    return Ret;
}

HI_S32                  HAL_AIAO_P_Mute(AIAO_PORT_ID_E enPortID, HI_BOOL bMute)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_Mute(g_AIAORm.hPort[Id], bMute);
    }
    
    return Ret;
}

HI_S32                  HAL_AIAO_P_SetSampleRate(AIAO_PORT_ID_E enPortID, HI_UNF_SAMPLE_RATE_E enSampleRate)
{
    //to do
    return HI_SUCCESS;
}


HI_S32                  HAL_AIAO_P_SetVolume(AIAO_PORT_ID_E enPortID, HI_U32 u32VolumedB)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_SetVolume(g_AIAORm.hPort[Id], u32VolumedB);
    }

    return Ret;
}

HI_S32                  HAL_AIAO_P_SetTrackMode(AIAO_PORT_ID_E enPortID, AIAO_TRACK_MODE_E enTrackMode)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_SetTrackMode(g_AIAORm.hPort[Id], enTrackMode);
    }
    
    up(&g_HalAiaoMutex);

    return Ret;
}

HI_S32 AIAO_HAL_P_SetBypass(AIAO_PORT_ID_E enPortID, HI_BOOL bByBass)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);
    
    if (g_AIAORm.hPort[Id])
    {
        Ret = iAIAO_HAL_P_SetBypass(g_AIAORm.hPort[Id], bByBass); 
    }

    return Ret;
}

HI_S32                  HAL_AIAO_P_GetUserCongfig(AIAO_PORT_ID_E enPortID, AIAO_PORT_USER_CFG_S *pstUserConfig)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_GetUserCongfig(g_AIAORm.hPort[Id], pstUserConfig);
    }
    
    up(&g_HalAiaoMutex);

    return Ret;
}

HI_S32                  HAL_AIAO_P_GetStatus(AIAO_PORT_ID_E enPortID, AIAO_PORT_STAUTS_S *pstProcInfo)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_GetStatus(g_AIAORm.hPort[Id], pstProcInfo);
    }
    
    up(&g_HalAiaoMutex);

    return Ret;
}

HI_S32                  HAL_AIAO_P_SelectSpdifSource(AIAO_PORT_ID_E enPortID, AIAO_SPDIFPORT_SOURCE_E eSrcChnId)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);
    
    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_SelectSpdifSource(g_AIAORm.hPort[Id], eSrcChnId);
    }

    return Ret;
}

HI_S32                  HAL_AIAO_P_SetSpdifOutPort(AIAO_PORT_ID_E enPortID, HI_S32 bEn)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_SetSpdifOutPort(g_AIAORm.hPort[Id], bEn);
    }

    return Ret;
}

HI_S32                  HAL_AIAO_P_SetI2SSdSelect(AIAO_PORT_ID_E enPortID, AIAO_I2SDataSel_S  *pstSdSel)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_SetI2SSdSelect(g_AIAORm.hPort[Id], pstSdSel);
    }
    
    up(&g_HalAiaoMutex);

    return Ret;
}

/* port buffer function */
HI_U32                  HAL_AIAO_P_ReadData(AIAO_PORT_ID_E enPortID, HI_U8 * pu32Dest, HI_U32 u32DestSize)
{
    HI_U32 ReadBytes = 0;
    HI_U32 Id = PORT2ID(enPortID);

    if (g_AIAORm.hPort[Id])
    {
        ReadBytes = iHAL_AIAO_P_ReadData(g_AIAORm.hPort[Id], pu32Dest, u32DestSize);
    }

    return ReadBytes;
}

HI_U32                  HAL_AIAO_P_WriteData(AIAO_PORT_ID_E enPortID, HI_U8 * pu32Src, HI_U32 u3SrcLen)
{
    HI_U32 WriteBytes = 0;
    HI_U32 Id = PORT2ID(enPortID);

    if (g_AIAORm.hPort[Id])
    {
        WriteBytes = iHAL_AIAO_P_WriteData(g_AIAORm.hPort[Id], pu32Src, u3SrcLen);
    }

    return WriteBytes;
}

HI_U32                  HAL_AIAO_P_PrepareData(AIAO_PORT_ID_E enPortID, HI_U8 * pu32Src, HI_U32 u3SrcLen)
{
    HI_U32 WriteBytes = 0;
    HI_U32 Id = PORT2ID(enPortID);

    if (g_AIAORm.hPort[Id])
    {
        WriteBytes = iHAL_AIAO_P_PrepareData(g_AIAORm.hPort[Id], pu32Src, u3SrcLen);
    }

    return WriteBytes;
}

HI_U32                  HAL_AIAO_P_QueryBufData(AIAO_PORT_ID_E enPortID)
{
    HI_U32 Bytes = 0;
    HI_U32 Id = PORT2ID(enPortID);
    HI_S32 Ret;
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Bytes = iHAL_AIAO_P_QueryBufData(g_AIAORm.hPort[Id]);
    }
    
    up(&g_HalAiaoMutex);

    return Bytes;
}

HI_U32                  HAL_AIAO_P_QueryBufFree(AIAO_PORT_ID_E enPortID)
{
    HI_U32 Bytes = 0;
    HI_U32 Id = PORT2ID(enPortID);
    HI_S32 Ret;
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Bytes = iHAL_AIAO_P_QueryBufFree(g_AIAORm.hPort[Id]);
    }
    
    up(&g_HalAiaoMutex);

    return Bytes;
}

HI_U32                  HAL_AIAO_P_UpdateRptr(AIAO_PORT_ID_E enPortID, HI_U8 * pu32Dest, HI_U32 u32DestSize)
{
    HI_U32 Bytes = 0;
    HI_U32 Id = PORT2ID(enPortID);

    if (g_AIAORm.hPort[Id])
    {
        Bytes = iHAL_AIAO_P_UpdateRptr(g_AIAORm.hPort[Id], pu32Dest, u32DestSize);
    }

    return Bytes;
}

HI_U32                  HAL_AIAO_P_UpdateWptr(AIAO_PORT_ID_E enPortID, HI_U8 * pu32Src, HI_U32 u3SrcLen)
{
    HI_U32 Bytes = 0;
    HI_U32 Id = PORT2ID(enPortID);

    if (g_AIAORm.hPort[Id])
    {
        Bytes = iHAL_AIAO_P_UpdateWptr(g_AIAORm.hPort[Id], pu32Src, u3SrcLen);
    }

    return Bytes;
}

HI_VOID                  HAL_AIAO_P_GetDelayMs(AIAO_PORT_ID_E enPortID, HI_U32 * pu32Delayms)
{
    HI_U32 Id = PORT2ID(enPortID);
    
    *pu32Delayms = 0;

    if (g_AIAORm.hPort[Id])
    {
        iHAL_AIAO_P_GetDelayMs(g_AIAORm.hPort[Id],pu32Delayms);
        return ;
    }
    
    return ;
}


HI_S32                  HAL_AIAO_P_GetRbfAttr(AIAO_PORT_ID_E enPortID, AIAO_RBUF_ATTR_S *pstRbfAttr)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U32 Id = PORT2ID(enPortID);
    
    Ret = down_interruptible(&g_HalAiaoMutex);

    if (g_AIAORm.hPort[Id])
    {
        Ret = iHAL_AIAO_P_GetRbfAttr(g_AIAORm.hPort[Id], pstRbfAttr);
    }
    
    up(&g_HalAiaoMutex);

    return Ret;
}

HI_VOID HAL_AIAO_P_ProcStatistics(AIAO_PORT_ID_E enPortID, HI_U32 u32IntStatus,void * pst)//HI_ALSA_AI_SUPPORT
{
    HI_U32 Id = PORT2ID(enPortID);
    
    if (g_AIAORm.hPort[Id])
    {
        iHAL_AIAO_P_ProcStatistics(g_AIAORm.hPort[Id], u32IntStatus);
    }
}
#ifdef HI_ALSA_AI_SUPPORT
HI_U32  HAL_AIAO_P_ALSA_UpdateRptr(AIAO_PORT_ID_E enPortID, HI_U8 * pu32Dest, HI_U32 u32DestSize)
{
    HI_U32 Bytes = 0;
    HI_U32 Id = PORT2ID(enPortID);
    if (g_AIAORm.hPort[Id])
    {
        Bytes = iHAL_AIAO_P_ALSA_UpdateRptr(g_AIAORm.hPort[Id], pu32Dest, u32DestSize);
    }
    return Bytes;
}
HI_U32  HAL_AIAO_P_ALSA_UpdateWptr(AIAO_PORT_ID_E enPortID, HI_U8 * pu32Dest, HI_U32 u32DestSize)
{
    HI_U32 Bytes = 0;
    HI_U32 Id = PORT2ID(enPortID);
    if (g_AIAORm.hPort[Id])
    {
        Bytes = iHAL_AIAO_P_ALSA_UpdateWptr(g_AIAORm.hPort[Id], pu32Dest, u32DestSize);
    }
    return Bytes;
}
HI_U32  HAL_AIAO_P_ALSA_FLASH(AIAO_PORT_ID_E enPortID)
{
    HI_U32 Id = PORT2ID(enPortID);
    
    if (g_AIAORm.hPort[Id])
    {
        iHAL_AIAO_P_ALSA_FLASH(g_AIAORm.hPort[Id]);
}

	return  HI_TRUE;
}
 HI_U32 HAL_AIAO_P_ALSA_QueryWritePos(AIAO_PORT_ID_E enPortID)
{
    HI_U32 Bytes = 0;
    HI_U32 Id = PORT2ID(enPortID);
    if (g_AIAORm.hPort[Id])
    {
        Bytes = iHAL_AIAO_P_ALSA_QueryWritePos(g_AIAORm.hPort[Id]);
    }
    return Bytes;
}
  HI_U32 HAL_AIAO_P_ALSA_QueryReadPos(AIAO_PORT_ID_E enPortID)
 {
     HI_U32 Bytes = 0;
     HI_U32 Id = PORT2ID(enPortID);
     if (g_AIAORm.hPort[Id])
     {
         Bytes = iHAL_AIAO_P_ALSA_QueryReadPos(g_AIAORm.hPort[Id]);
     }
     return Bytes;
 }
#endif

//#define PERIOND_NUM 2  /* 4/16 */
#define PERIOND_NUM 4  /* 4/16 */

static AIAO_PORT_USER_CFG_S g_stAiaoTxI2SDefaultOpenAttr =
{
    .stIfAttr              =
    {
        .enCrgMode         = AIAO_CRG_MODE_MASTER,
        .enChNum           = AIAO_I2S_CHNUM_2,
        .enBitDepth        = AIAO_BIT_DEPTH_16,
        .enRiseEdge        = AIAO_MODE_EDGE_RISE,
        .enRate            = AIAO_SAMPLE_RATE_48K,
        .u32FCLK_DIV       =                     64,
        .u32BCLK_DIV       =                      4,
        .eCrgSource        = AIAO_TX_CRG0,
        .u32PcmDelayCycles =                      1,
        .enI2SMode         = AIAO_MODE_I2S,
        .enSource          = AIAO_TX0,
        .enSD0             = AIAO_I2S_SD0,
        .enSD1             = AIAO_I2S_SD1,
        .enSD2             = AIAO_I2S_SD2,
        .enSD3             = AIAO_I2S_SD3,
        .bMultislot        = HI_FALSE,
    },
    .stBufConfig           =
    {
        .u32PeriodBufSize  = AIAO_DF_PeriodBufSize,
        .u32PeriodNumber   = PERIOND_NUM,
    },
    .enTrackMode           = AIAO_TRACK_MODE_STEREO,
    .enFadeInRate          = AIAO_DF_FadeInRate,
    .enFadeOutRate         = AIAO_DF_FadeOutRate,
    .bMute                 = HI_FALSE,
    .bMuteFade             = HI_TRUE,
    .u32VolumedB           = 0x79,
    .bByBass               = HI_FALSE,
    .pIsrFunc              = HAL_AIAO_P_ProcStatistics,
};

static AIAO_PORT_USER_CFG_S g_stAiaoTxHdmiHbrSDefaultOpenAttr =
{
    .stIfAttr              =
    {
        .enCrgMode         = AIAO_CRG_MODE_MASTER,
        .enChNum           = AIAO_I2S_CHNUM_8,
        .enBitDepth        = AIAO_BIT_DEPTH_16,
        .enRiseEdge        = AIAO_MODE_EDGE_RISE,
        .enRate            = AIAO_SAMPLE_RATE_192K,
        .u32FCLK_DIV       =                     64,
        .u32BCLK_DIV       =                      4,
        .eCrgSource        = AIAO_TX_CRG0,
        .u32PcmDelayCycles =                      1,
        .enI2SMode         = AIAO_MODE_I2S,
        .enSource          = AIAO_TX0,
        .enSD0             = AIAO_I2S_SD0,
        .enSD1             = AIAO_I2S_SD1,
        .enSD2             = AIAO_I2S_SD2,
        .enSD3             = AIAO_I2S_SD3,
        .bMultislot        = HI_FALSE,
    },
    .stBufConfig           =
    {
        .u32PeriodBufSize  = AIAO_DF_PeriodBufSize*16,
        .u32PeriodNumber   = PERIOND_NUM,
    },
    .enTrackMode           = AIAO_TRACK_MODE_STEREO,
    .enFadeInRate          = AIAO_DF_FadeInRate,
    .enFadeOutRate         = AIAO_DF_FadeOutRate,
    .bMute                 = HI_FALSE,
    .bMuteFade             = HI_TRUE,
    .u32VolumedB           = 0x79,
    .bByBass               = HI_TRUE,
    .pIsrFunc              = HAL_AIAO_P_ProcStatistics,
};

static AIAO_PORT_USER_CFG_S g_stAiaoTxHdmiI2SSDefaultOpenAttr =
{
    .stIfAttr              =
    {
        .enCrgMode         = AIAO_CRG_MODE_MASTER,
        .enChNum           = AIAO_I2S_CHNUM_2,
        .enBitDepth        = AIAO_BIT_DEPTH_16,
        .enRiseEdge        = AIAO_MODE_EDGE_RISE,
        .enRate            = AIAO_SAMPLE_RATE_48K,
        .u32FCLK_DIV       =                     64,
        .u32BCLK_DIV       =                      4,
        .eCrgSource        = AIAO_TX_CRG0,
        .u32PcmDelayCycles =                      1,
        .enI2SMode         = AIAO_MODE_I2S,
        .enSource          = AIAO_TX0,
        .enSD0             = AIAO_I2S_SD0,
        .enSD1             = AIAO_I2S_SD1,
        .enSD2             = AIAO_I2S_SD2,
        .enSD3             = AIAO_I2S_SD3,
        .bMultislot        = HI_FALSE,
    },
    .stBufConfig           =
    {
        .u32PeriodBufSize  = AIAO_DF_PeriodBufSize,
        .u32PeriodNumber   = PERIOND_NUM,
    },
    .enTrackMode           = AIAO_TRACK_MODE_STEREO,
    .enFadeInRate          = AIAO_DF_FadeInRate,
    .enFadeOutRate         = AIAO_DF_FadeOutRate,
    .bMute                 = HI_FALSE,
    .bMuteFade             = HI_TRUE,
    .u32VolumedB           = 0x79,
    .bByBass               = HI_FALSE,
    .pIsrFunc              = HAL_AIAO_P_ProcStatistics,
};

static AIAO_PORT_USER_CFG_S g_stAiaoTxSpdDefaultOpenAttr =
{
    .stIfAttr             =
    {
        .enCrgMode        = AIAO_CRG_MODE_MASTER,
        .enChNum          = AIAO_I2S_CHNUM_2,
        .enBitDepth       = AIAO_BIT_DEPTH_16,
        .enRate           = AIAO_SAMPLE_RATE_48K,
        .u32FCLK_DIV      =                    128,
        .u32BCLK_DIV      =                      2,
    },
    .stBufConfig          =
    {
        .u32PeriodBufSize = AIAO_DF_PeriodBufSize,
        .u32PeriodNumber  = PERIOND_NUM,
    },
    .enTrackMode          = AIAO_TRACK_MODE_STEREO,
    .enFadeInRate         = AIAO_DF_FadeInRate,
    .enFadeOutRate        = AIAO_DF_FadeOutRate,
    .bMute                = HI_FALSE,
    .bMuteFade            = HI_TRUE,
    .u32VolumedB          = 0x79,
    .bByBass              = HI_FALSE,
    .pIsrFunc              = HAL_AIAO_P_ProcStatistics,
};
static AIAO_I2S_SOURCE_E g_enTxI2SSourceTab[8] =
{
    AIAO_TX0,
    AIAO_TX1,
    AIAO_TX2,
    AIAO_TX3,
    AIAO_TX4,
    AIAO_TX5,
    AIAO_TX6,
    AIAO_TX7,
};
static AIAO_CRG_SOURCE_E g_enTxCrgSourceTab[8] =
{
    AIAO_TX_CRG0,
    AIAO_TX_CRG1,
    AIAO_TX_CRG2,
    AIAO_TX_CRG3,
    AIAO_TX_CRG4,
    AIAO_TX_CRG5,
    AIAO_TX_CRG6,
    AIAO_TX_CRG7,
};


HI_VOID HAL_AIAO_P_SetTxI2SDfAttr(AIAO_PORT_ID_E enPortID, AIAO_IsrFunc      *pIsrFunc)//i2s only card set proc func HI_ALSA_I2S_ONLY_SUPPORT
{
    g_stAiaoTxI2SDefaultOpenAttr.pIsrFunc = pIsrFunc;
}

HI_VOID HAL_AIAO_P_GetTxI2SDfAttr(AIAO_PORT_ID_E enPortID, AIAO_PORT_USER_CFG_S *pAttr)
{
    memcpy(pAttr, &g_stAiaoTxI2SDefaultOpenAttr, sizeof(AIAO_PORT_USER_CFG_S));
    pAttr->stIfAttr.enSource   = g_enTxI2SSourceTab[PORT2CHID(enPortID)];
    pAttr->stIfAttr.eCrgSource = g_enTxCrgSourceTab[PORT2CHID(enPortID)];
}

HI_VOID HAL_AIAO_P_GetHdmiHbrDfAttr(AIAO_PORT_ID_E enPortID, AIAO_PORT_USER_CFG_S *pAttr)
{
    memcpy(pAttr, &g_stAiaoTxHdmiHbrSDefaultOpenAttr, sizeof(AIAO_PORT_USER_CFG_S));
    pAttr->stIfAttr.enSource   = g_enTxI2SSourceTab[PORT2CHID(enPortID)];
    pAttr->stIfAttr.eCrgSource = g_enTxCrgSourceTab[PORT2CHID(enPortID)];
}

HI_VOID HAL_AIAO_P_GetHdmiI2SDfAttr(AIAO_PORT_ID_E enPortID, AIAO_PORT_USER_CFG_S *pAttr)
{
    memcpy(pAttr, &g_stAiaoTxHdmiI2SSDefaultOpenAttr, sizeof(AIAO_PORT_USER_CFG_S));
    pAttr->stIfAttr.enSource   = g_enTxI2SSourceTab[PORT2CHID(enPortID)];
    pAttr->stIfAttr.eCrgSource = g_enTxCrgSourceTab[PORT2CHID(enPortID)];
}

HI_VOID HAL_AIAO_P_GetTxSpdDfAttr(AIAO_PORT_ID_E enPortID, AIAO_PORT_USER_CFG_S *pAttr)
{
    memcpy(pAttr, &g_stAiaoTxSpdDefaultOpenAttr, sizeof(AIAO_PORT_USER_CFG_S));
}

#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)

HI_VOID HAL_AIAO_P_GetBorardTxI2SDfAttr(HI_U32 u32BoardI2sNum, HI_UNF_I2S_ATTR_S  *pstI2sAttr, AIAO_PORT_ID_E *penPortID,
                                        AIAO_PORT_USER_CFG_S *pAttr)
{
    AIAO_I2S_BOARD_CONFIG *pstI2SBorad;

    pstI2SBorad = &g_stI2SBoardSettings[u32BoardI2sNum];

    memcpy(pAttr, &g_stAiaoTxI2SDefaultOpenAttr, sizeof(AIAO_PORT_USER_CFG_S));

    pAttr->stIfAttr.enCrgMode = (HI_TRUE == pstI2sAttr->bMaster) ? AIAO_CRG_MODE_MASTER : AIAO_CRG_MODE_SLAVE;
    pAttr->stIfAttr.enChNum = (AIAO_I2S_CHNUM_E)(pstI2sAttr->enChannel);
    pAttr->stIfAttr.enBitDepth  = (AIAO_BITDEPTH_E)(pstI2sAttr->enBitDepth);
    pAttr->stIfAttr.u32FCLK_DIV = AUTIL_FclkDiv(pstI2sAttr->enMclkSel, pstI2sAttr->enBclkSel);
    pAttr->stIfAttr.u32BCLK_DIV = (HI_U32)pstI2sAttr->enBclkSel;
    pAttr->stIfAttr.eCrgSource = pstI2SBorad->enTxCrgSource;
    pAttr->stIfAttr.enSource = pstI2SBorad->enTxSource;
    pAttr->stIfAttr.u32PcmDelayCycles = 0;
    if (HI_UNF_I2S_PCM_MODE == pstI2sAttr->enI2sMode)
    {
        pAttr->stIfAttr.enRiseEdge = (HI_TRUE
                                      == pstI2sAttr->bPcmSampleRiseEdge) ? AIAO_MODE_EDGE_RISE : AIAO_MODE_EDGE_FALL;
        pAttr->stIfAttr.u32PcmDelayCycles = (HI_U32)pstI2sAttr->enPcmDelayCycle;
    }

    *penPortID = pstI2SBorad->enTxPortID;
}

HI_VOID HAL_AIAO_P_GetBorardRxI2SDfAttr(HI_U32 u32BoardI2sNum, HI_UNF_I2S_ATTR_S  *pstI2sAttr, AIAO_PORT_ID_E *penPortID,
                                        AIAO_PORT_USER_CFG_S *pAttr)
{
    AIAO_I2S_BOARD_CONFIG *pstI2SBorad;

    pstI2SBorad = &g_stI2SBoardSettings[u32BoardI2sNum];

    memcpy(pAttr, &g_stAiaoTxI2SDefaultOpenAttr, sizeof(AIAO_PORT_USER_CFG_S));

    pAttr->stIfAttr.enCrgMode = pstI2SBorad->enRxCrgMode;
    pAttr->stIfAttr.enChNum = (AIAO_I2S_CHNUM_E)(pstI2sAttr->enChannel);
    pAttr->stIfAttr.enBitDepth  = (AIAO_BITDEPTH_E)(pstI2sAttr->enBitDepth);
    pAttr->stIfAttr.u32FCLK_DIV = AUTIL_FclkDiv(pstI2sAttr->enMclkSel, pstI2sAttr->enBclkSel);
    pAttr->stIfAttr.u32BCLK_DIV = (HI_U32)pstI2sAttr->enBclkSel;
    pAttr->stIfAttr.eCrgSource = pstI2SBorad->enRxCrgSource;
    pAttr->stIfAttr.enSource = pstI2SBorad->enRxSource;
    pAttr->stIfAttr.u32PcmDelayCycles = 0;
    if (HI_UNF_I2S_PCM_MODE == pstI2sAttr->enI2sMode)
    {
        pAttr->stIfAttr.enRiseEdge = (HI_TRUE
                                      == pstI2sAttr->bPcmSampleRiseEdge) ? AIAO_MODE_EDGE_RISE : AIAO_MODE_EDGE_FALL;
        pAttr->stIfAttr.u32PcmDelayCycles = (HI_U32)pstI2sAttr->enPcmDelayCycle;
    }

    *penPortID = pstI2SBorad->enRxPortID;
}

HI_S32 HAL_AIAO_P_CheckBorardI2SOpenAttr(AIAO_PORT_ID_E enPortID, const AIAO_IfAttr_S     *pstNewIfAttr)
{
    AIAO_I2S_BOARD_CONFIG *pstI2SBorad;
    AIAO_IfAttr_S     *pstOldIfAttr = NULL;
    HI_S32 n;

    for (n = 0; n < AIAO_MAX_EXT_I2S_NUMBER; n++)
    {
        pstI2SBorad = &g_stI2SBoardSettings[n];
        if ((enPortID == pstI2SBorad->enTxPortID) || (enPortID == pstI2SBorad->enRxPortID))
        {
            if (!pstI2SBorad->u32InitFlag)
            {
                return HI_SUCCESS;
            }
            
            pstOldIfAttr = &pstI2SBorad->stIfCommonAttr;
            break;
        }
    }

    if (AIAO_MAX_EXT_I2S_NUMBER == n)
    {
        return HI_SUCCESS;
    }

#if 1
       if (pstOldIfAttr->enBitDepth != pstNewIfAttr->enBitDepth)
       {
           return HI_FAILURE;
       }
    
       if (pstOldIfAttr->enChNum != pstNewIfAttr->enChNum)
       {
           return HI_FAILURE;
       }
    
       if (pstOldIfAttr->enRate != pstNewIfAttr->enRate)
       {
           return HI_FAILURE;
       }
    
       if (pstOldIfAttr->enI2SMode != pstNewIfAttr->enI2SMode)
       {
           return HI_FAILURE;
       }
    
       if (pstOldIfAttr->u32PcmDelayCycles != pstNewIfAttr->u32PcmDelayCycles)
       {
           return HI_FAILURE;
       }
    
       if ((pstOldIfAttr->u32FCLK_DIV != pstNewIfAttr->u32FCLK_DIV)
           || (pstOldIfAttr->u32BCLK_DIV != pstNewIfAttr->u32BCLK_DIV))
       {
           return HI_FAILURE;
       }
#endif

    if (pstI2SBorad->u32InitFlag)
    {
        return HI_SUCCESS;
    }

    return HI_SUCCESS;
}

HI_VOID HAL_AIAO_P_CrateBorardI2SOpenAttr(AIAO_PORT_ID_E enPortID, const AIAO_IfAttr_S     *pstNewIfAttr)
{
    AIAO_I2S_BOARD_CONFIG *pstI2SBorad;
    AIAO_IfAttr_S     *pstOldIfAttr;
    HI_S32 n;

    for (n = 0; n < AIAO_MAX_EXT_I2S_NUMBER; n++)
    {
        pstI2SBorad = &g_stI2SBoardSettings[n];
        if ((enPortID == pstI2SBorad->enTxPortID) || (enPortID == pstI2SBorad->enRxPortID))
        {
            pstOldIfAttr = &pstI2SBorad->stIfCommonAttr;
            break;
        }
    }

    if (AIAO_MAX_EXT_I2S_NUMBER == n)
    {
        return;
    }

    if (!pstI2SBorad->u32InitFlag)
    {
        // fitst i2s attr
        memcpy(pstOldIfAttr, pstNewIfAttr, sizeof(AIAO_IfAttr_S));
    }

    if (enPortID == pstI2SBorad->enTxPortID)
    {
        pstI2SBorad->u32InitFlag |= 0x2;  // set tx
    }
    else if (enPortID == pstI2SBorad->enRxPortID)
    {
        pstI2SBorad->u32InitFlag |= 0x1;  // set rx
    }

    return;
}

HI_VOID HAL_AIAO_P_DestroyBorardI2SOpenAttr(AIAO_PORT_ID_E enPortID)
{
    AIAO_I2S_BOARD_CONFIG *pstI2SBorad;
    HI_S32 n;

    for (n = 0; n < AIAO_MAX_EXT_I2S_NUMBER; n++)
    {
        pstI2SBorad = &g_stI2SBoardSettings[n];
        if ((enPortID == pstI2SBorad->enTxPortID) || (enPortID == pstI2SBorad->enRxPortID))
        {
            break;
        }
    }

    if (AIAO_MAX_EXT_I2S_NUMBER == n)
    {
        return;
    }

    if (enPortID == pstI2SBorad->enTxPortID)
    {
        pstI2SBorad->u32InitFlag &= 0x1;  // clr tx
    }
    else if (enPortID == pstI2SBorad->enRxPortID)
    {
        pstI2SBorad->u32InitFlag &= 0x2;  // clr rx
    }

    return;
}

#endif

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */
