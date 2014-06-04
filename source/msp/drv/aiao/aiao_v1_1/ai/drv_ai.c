/*******************************************************************************
 *              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: ai_intf_k.c
 * Description: ai interface of module.
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1    
 ********************************************************************************/

#include <asm/setup.h>
#include <linux/interrupt.h>

#include "hi_type.h"
#include "hi_drv_struct.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"

#include "hi_module.h"
#include "hi_drv_mmz.h"
#include "hi_drv_sys.h"
#include "hi_drv_module.h"
#include "hi_drv_mem.h"
#include "hi_error_mpi.h"

#include "hal_aiao.h"
#include "audio_util.h"

#include "hi_drv_ai.h"

#include <sound/pcm.h>

#include "drv_ai_private.h"
#include "drv_ai_ioctl.h"

#define HI_AI_DRV_SUSPEND_SUPPORT



DECLARE_MUTEX(g_AIMutex);

static atomic_t g_AIOpenCnt = ATOMIC_INIT(0);

//AI Resource
static AI_GLOBAL_RESOURCE_S  g_pstGlobalAIRS = 
{
    .pstProcParam        = HI_NULL,
};

#ifdef HI_ALSA_AI_SUPPORT
AI_ALSA_Param_S g_stAlsaAttr;
#endif
HI_S32 AI_GetDefaultAttr(HI_UNF_AI_E enAiPort, HI_UNF_AI_ATTR_S *pstAiAttr)
{
    if((HI_UNF_AI_I2S0 != enAiPort) &&(HI_UNF_AI_I2S1 != enAiPort))
    {
        HI_ERR_AI("just support I2S0 and I2S1 Port!\n");
        return HI_ERR_AI_INVALID_PARA;
    }
    else
    {
        pstAiAttr->enSampleRate = HI_UNF_SAMPLE_RATE_48K;
        pstAiAttr->u32PcmFrameMaxNum = AI_BUFF_FRAME_NUM_DF;
        pstAiAttr->u32PcmSamplesPerFrame = AI_SAMPLE_PERFRAME_DF;
        pstAiAttr->unAttr.stI2sAttr.stAttr.bMaster = HI_TRUE;
        pstAiAttr->unAttr.stI2sAttr.stAttr.enI2sMode = HI_UNF_I2S_STD_MODE;
        pstAiAttr->unAttr.stI2sAttr.stAttr.enMclkSel = HI_UNF_I2S_MCLK_256_FS;
        pstAiAttr->unAttr.stI2sAttr.stAttr.enBclkSel = HI_UNF_I2S_BCLK_4_DIV;
        pstAiAttr->unAttr.stI2sAttr.stAttr.enChannel = HI_UNF_I2S_CHNUM_2;
        pstAiAttr->unAttr.stI2sAttr.stAttr.enBitDepth = HI_UNF_I2S_BIT_DEPTH_16;
        pstAiAttr->unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge = HI_TRUE;
        pstAiAttr->unAttr.stI2sAttr.stAttr.enPcmDelayCycle = HI_UNF_I2S_PCM_0_DELAY;
    }
    return HI_SUCCESS;
}

#ifdef HI_ALSA_AI_SUPPORT    
HI_S32 AIGetProcStatistics(AIAO_IsrFunc **pFunc) //For ALSA
{
    AIAO_PORT_USER_CFG_S pAttr;
    
    HAL_AIAO_P_GetTxI2SDfAttr(AIAO_PORT_TX0,&pAttr);  //pIsrFunc is the same for all ports

    *pFunc = pAttr.pIsrFunc;
    
    return HI_SUCCESS;
}

HI_S32 AIGetEnport(HI_HANDLE hAi,AIAO_PORT_ID_E *enPort)  //For ALSA
{
    AI_CHANNEL_STATE_S *state = HI_NULL;    
    hAi &= AI_CHNID_MASK;

    state = g_pstGlobalAIRS.pstAI_ATTR_S[hAi];
    *enPort = state->enPort;
    return HI_SUCCESS;
}
#endif

static HI_S32 AI_Resume_CreateChn(HI_UNF_AI_E enAiPort, HI_UNF_AI_ATTR_S *pstAttr, HI_BOOL bAlsa, HI_VOID *pAlsaPara, AI_CHANNEL_STATE_S *state)
{
    HI_S32 Ret;
    HI_U32 u32BoardI2sNum = 0; //u32AiBufSize, u32FrameSize;
    HI_U32 u32BufSize = 0;
    AIAO_PORT_USER_CFG_S stHwPortAttr =
    {
        .u32VolumedB = 0x79,
    };
    
    AIAO_PORT_ID_E enPort = AIAO_PORT_BUTT;
    MMZ_BUFFER_S stRbfMmz;
    MMZ_BUFFER_S stAiRbfMmz;
    AIAO_CRG_SOURCE_E enCrgSource = AIAO_CRG_BUTT;
    
#ifdef HI_ALSA_AI_SUPPORT    
    AI_ALSA_Param_S *pstAlsaAttr = (AI_ALSA_Param_S*)pAlsaPara;
#endif    

    switch(enAiPort)
    {
        case HI_UNF_AI_I2S0:
            u32BoardI2sNum = 0;
            enCrgSource = AIAO_TX_CRG0;
            break;
        case HI_UNF_AI_I2S1:
            u32BoardI2sNum = 1;
            enCrgSource = AIAO_TX_CRG1;
            break;
        case HI_UNF_AI_ADC0:
            break;
        case HI_UNF_AI_HDMI0:
            break;
        default:
            HI_ERR_AI("Aiport is invalid!\n");
            goto AI_MMZRelease_ERR_EXIT;
    }

    // 1.alloc ai_buff
#if  0   
    u32FrameSize = AUTIL_CalcFrameSize(pstAttr->unAttr.stI2sAttr.stAttr.enChannel, pstAttr->unAttr.stI2sAttr.stAttr.enBitDepth);
    u32BufSize = pstAttr->u32PcmFrameMaxNum*(pstAttr->u32PcmSamplesPerFrame*u32FrameSize);

    Ret = HI_DRV_MMZ_AllocAndMap("AI_i2s", MMZ_OTHERS, u32BufSize, AIAO_BUFFER_ADDR_ALIGN,&stAiRbfMmz);
    if (state == HI_NULL)
    {
        HI_FATAL_AI("HI_KMALLOC AI_Create failed\n");
        return HI_FAILURE;
    }
#endif

    stAiRbfMmz = state->stAiRbfMmz;

    //2.set port attr
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
    HAL_AIAO_P_GetBorardRxI2SDfAttr(u32BoardI2sNum, &pstAttr->unAttr.stI2sAttr.stAttr, &enPort, &stHwPortAttr);
#endif
    u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber;
#ifdef HI_ALSA_AI_SUPPORT    
    if(bAlsa == HI_TRUE)
    {
        stHwPortAttr.bExtDmaMem = HI_TRUE;
        stHwPortAttr.stExtMem.u32BufPhyAddr = pstAlsaAttr->stBuf.u32BufPhyAddr;
        stHwPortAttr.stExtMem.u32BufVirAddr = pstAlsaAttr->stBuf.u32BufVirAddr;
        stHwPortAttr.stExtMem.u32BufSize    = pstAlsaAttr->stBuf.u32BufSize;
        stRbfMmz.u32Size         = pstAlsaAttr->stBuf.u32BufSize;
        stRbfMmz.u32StartPhyAddr = pstAlsaAttr->stBuf.u32BufPhyAddr;
        stRbfMmz.u32StartVirAddr = pstAlsaAttr->stBuf.u32BufVirAddr;
        stHwPortAttr.pIsrFunc    = pstAlsaAttr->IsrFunc;
        stHwPortAttr.substream   = pstAlsaAttr->substream;
        stHwPortAttr.stBufConfig.u32PeriodBufSize = pstAlsaAttr->stBuf.u32PeriodByteSize;
        stHwPortAttr.stBufConfig.u32PeriodNumber  = pstAlsaAttr->stBuf.u32Periods;

    }
    else
#endif        
    {
        stRbfMmz = state->stRbfMmz;

        stHwPortAttr.bExtDmaMem = HI_TRUE;
        stHwPortAttr.stExtMem.u32BufPhyAddr = stRbfMmz.u32StartPhyAddr;
        stHwPortAttr.stExtMem.u32BufVirAddr = stRbfMmz.u32StartVirAddr;
        stHwPortAttr.stExtMem.u32BufSize = u32BufSize;
    }

    if(pstAttr->unAttr.stI2sAttr.stAttr.bMaster)
    {
        stHwPortAttr.stIfAttr.enCrgMode = AIAO_CRG_MODE_DUPLICATE;
        stHwPortAttr.stIfAttr.eCrgSource = enCrgSource;

        if(0 == pstAttr->unAttr.stI2sAttr.stAttr.enBclkSel)
        {
            HI_ERR_AI("enBclkSel can not be zero!");
            goto AI_MMZRelease_ERR_EXIT;
        }
        
        stHwPortAttr.stIfAttr.u32BCLK_DIV = pstAttr->unAttr.stI2sAttr.stAttr.enBclkSel;
        stHwPortAttr.stIfAttr.u32FCLK_DIV = AUTIL_FclkDiv(pstAttr->unAttr.stI2sAttr.stAttr.enMclkSel, pstAttr->unAttr.stI2sAttr.stAttr.enBclkSel);
    }
    else
    {
        stHwPortAttr.stIfAttr.enCrgMode = AIAO_CRG_MODE_SLAVE;
    }
    stHwPortAttr.stIfAttr.enRate = (AIAO_SAMPLE_RATE_E)(pstAttr->enSampleRate);
    stHwPortAttr.stIfAttr.enI2SMode = (AIAO_I2S_MODE_E)(pstAttr->unAttr.stI2sAttr.stAttr.enI2sMode);
    stHwPortAttr.stIfAttr.enChNum = (AIAO_I2S_CHNUM_E)(pstAttr->unAttr.stI2sAttr.stAttr.enChannel);
    stHwPortAttr.stIfAttr.enBitDepth = (AIAO_BITDEPTH_E)(pstAttr->unAttr.stI2sAttr.stAttr.enBitDepth);
    stHwPortAttr.stIfAttr.u32PcmDelayCycles = pstAttr->unAttr.stI2sAttr.stAttr.enPcmDelayCycle;
    
    if(pstAttr->unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge == HI_TRUE)
    {
        stHwPortAttr.stIfAttr.enRiseEdge = AIAO_MODE_EDGE_RISE;
    }
    else
    {
        stHwPortAttr.stIfAttr.enRiseEdge = AIAO_MODE_EDGE_FALL;
    }
    Ret = HAL_AIAO_P_Open(enPort, &stHwPortAttr);
    if (HI_SUCCESS != Ret)
    {
        goto AI_MMZRelease_ERR_EXIT;
    }
  
    //3.set state
    state->stAiBuf.u32Read = stAiRbfMmz.u32Size;
    state->stAiBuf.u32Write = 0;
    
    return HI_SUCCESS;

AI_MMZRelease_ERR_EXIT:
    HI_DRV_MMZ_UnmapAndRelease(&state->stAiRbfMmz);
    HI_DRV_MMZ_UnmapAndRelease(&state->stRbfMmz);
return HI_FAILURE;
}

static HI_S32 AICreateChn(HI_UNF_AI_E enAiPort, HI_UNF_AI_ATTR_S *pstAttr, HI_BOOL bAlsa, HI_VOID *pAlsaPara, AI_CHANNEL_STATE_S *state)
{
    HI_S32 Ret;
    HI_U32 u32BoardI2sNum = 0, u32BufSize, u32AiBufSize, u32FrameSize;
    AIAO_PORT_USER_CFG_S stHwPortAttr;
    
    AIAO_PORT_ID_E enPort = AIAO_PORT_BUTT;
    MMZ_BUFFER_S stRbfMmz;
    MMZ_BUFFER_S stAiRbfMmz;
    AIAO_CRG_SOURCE_E enCrgSource = AIAO_CRG_BUTT;
    
#ifdef HI_ALSA_AI_SUPPORT    
    AI_ALSA_Param_S *pstAlsaAttr = (AI_ALSA_Param_S*)pAlsaPara;
#endif    

    switch(enAiPort)
    {
        case HI_UNF_AI_I2S0:
            u32BoardI2sNum = 0;
            enCrgSource = AIAO_TX_CRG0;
            break;
        case HI_UNF_AI_I2S1:
            u32BoardI2sNum = 1;
            enCrgSource = AIAO_TX_CRG1;
            break;
        case HI_UNF_AI_ADC0:
            break;
        case HI_UNF_AI_HDMI0:
            break;
        default:
            HI_ERR_AI("Aiport is invalid!\n");
            return HI_ERR_AI_INVALID_PARA;
    }
#if 1
    // 1.alloc ai_buff
#if  0   
    u32FrameSize = AUTIL_CalcFrameSize(pstAttr->unAttr.stI2sAttr.stAttr.enChannel, pstAttr->unAttr.stI2sAttr.stAttr.enBitDepth);
    u32BufSize = pstAttr->u32PcmFrameMaxNum*(pstAttr->u32PcmSamplesPerFrame*u32FrameSize);

    Ret = HI_DRV_MMZ_AllocAndMap("AI_i2s", MMZ_OTHERS, u32BufSize, AIAO_BUFFER_ADDR_ALIGN,&stAiRbfMmz);
    if (state == HI_NULL)
    {
        HI_FATAL_AI("HI_KMALLOC AI_Create failed\n");
        return HI_FAILURE;
    }
#endif

    u32FrameSize = AUTIL_CalcFrameSize(pstAttr->unAttr.stI2sAttr.stAttr.enChannel, pstAttr->unAttr.stI2sAttr.stAttr.enBitDepth);
    u32AiBufSize = pstAttr->u32PcmSamplesPerFrame*u32FrameSize;
    Ret = HI_DRV_MMZ_AllocAndMap("AI_chn", MMZ_OTHERS, u32AiBufSize, AIAO_BUFFER_ADDR_ALIGN,&stAiRbfMmz);
    if (HI_SUCCESS != Ret)
    {
        HI_FATAL_AI("HI_MMZ AI_BUF failed\n");
        return HI_FAILURE;
    }
     
    //2.set port attr
#if defined (HI_I2S0_SUPPORT) || defined (HI_I2S1_SUPPORT)
    HAL_AIAO_P_GetBorardRxI2SDfAttr(u32BoardI2sNum, &pstAttr->unAttr.stI2sAttr.stAttr, &enPort, &stHwPortAttr);
#endif
    u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber;
#ifdef HI_ALSA_AI_SUPPORT    
    if(bAlsa == HI_TRUE)
    {
        stHwPortAttr.bExtDmaMem = HI_TRUE;
        stHwPortAttr.stExtMem.u32BufPhyAddr = pstAlsaAttr->stBuf.u32BufPhyAddr;
        stHwPortAttr.stExtMem.u32BufVirAddr = pstAlsaAttr->stBuf.u32BufVirAddr;
        stHwPortAttr.stExtMem.u32BufSize    = pstAlsaAttr->stBuf.u32BufSize;
        stRbfMmz.u32Size         = pstAlsaAttr->stBuf.u32BufSize;
        stRbfMmz.u32StartPhyAddr = pstAlsaAttr->stBuf.u32BufPhyAddr;
        stRbfMmz.u32StartVirAddr = pstAlsaAttr->stBuf.u32BufVirAddr;
        stHwPortAttr.pIsrFunc    = pstAlsaAttr->IsrFunc;
        stHwPortAttr.substream   = pstAlsaAttr->substream;

        stHwPortAttr.stBufConfig.u32PeriodBufSize = pstAlsaAttr->stBuf.u32PeriodByteSize;
        stHwPortAttr.stBufConfig.u32PeriodNumber  = pstAlsaAttr->stBuf.u32Periods;
    }
    else
#endif        
    {
        Ret = HI_DRV_MMZ_AllocAndMap("AI_i2s", MMZ_OTHERS, u32BufSize, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
        if (HI_SUCCESS != Ret)
        {
            HI_FATAL_AI("HI_MMZ AI_PORT_BUF failed\n");
            goto AI_MMZRelease_ERR_EXIT;
        }
        
        stHwPortAttr.bExtDmaMem = HI_TRUE;
        stHwPortAttr.stExtMem.u32BufPhyAddr = stRbfMmz.u32StartPhyAddr;
        stHwPortAttr.stExtMem.u32BufVirAddr = stRbfMmz.u32StartVirAddr;
        stHwPortAttr.stExtMem.u32BufSize = u32BufSize;
    }

    if(pstAttr->unAttr.stI2sAttr.stAttr.bMaster)
    {
        stHwPortAttr.stIfAttr.enCrgMode = AIAO_CRG_MODE_DUPLICATE;
        stHwPortAttr.stIfAttr.eCrgSource = enCrgSource;
        
        if(0 == pstAttr->unAttr.stI2sAttr.stAttr.enBclkSel)
        {
            HI_ERR_AIAO("enBclkSel can not be zero!");
            goto AI_PortMMZRelease_ERR_EXIT;
        }
        
        stHwPortAttr.stIfAttr.u32BCLK_DIV = pstAttr->unAttr.stI2sAttr.stAttr.enBclkSel;
        stHwPortAttr.stIfAttr.u32FCLK_DIV = AUTIL_FclkDiv(pstAttr->unAttr.stI2sAttr.stAttr.enMclkSel, pstAttr->unAttr.stI2sAttr.stAttr.enBclkSel);
    }
    else
    {
        stHwPortAttr.stIfAttr.enCrgMode = AIAO_CRG_MODE_SLAVE;
    }
    
    stHwPortAttr.stIfAttr.enRate = (AIAO_SAMPLE_RATE_E)(pstAttr->enSampleRate);
    stHwPortAttr.stIfAttr.enI2SMode = (AIAO_I2S_MODE_E)(pstAttr->unAttr.stI2sAttr.stAttr.enI2sMode);
    stHwPortAttr.stIfAttr.enChNum = (AIAO_I2S_CHNUM_E)(pstAttr->unAttr.stI2sAttr.stAttr.enChannel);
    stHwPortAttr.stIfAttr.enBitDepth = (AIAO_BITDEPTH_E)(pstAttr->unAttr.stI2sAttr.stAttr.enBitDepth);
    stHwPortAttr.stIfAttr.u32PcmDelayCycles = pstAttr->unAttr.stI2sAttr.stAttr.enPcmDelayCycle;

    if(pstAttr->unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge == HI_TRUE)
    {
        stHwPortAttr.stIfAttr.enRiseEdge = AIAO_MODE_EDGE_RISE;
    }
    else
    {
        stHwPortAttr.stIfAttr.enRiseEdge = AIAO_MODE_EDGE_FALL;
    }

    Ret = HAL_AIAO_P_Open(enPort, &stHwPortAttr);
    if (HI_SUCCESS != Ret)
    {
        goto AI_PortMMZRelease_ERR_EXIT;
    }
  
    //3.set state
    state->enCurnStatus = AI_CHANNEL_STATUS_STOP;
    state->stRbfMmz = stRbfMmz;
    state->stAiRbfMmz = stAiRbfMmz;
    state->enAiPort = enAiPort;
    state->enPort = enPort;
    state->stAiBuf.u32PhyBaseAddr = stAiRbfMmz.u32StartPhyAddr;
    state->stAiBuf.u32Size = stAiRbfMmz.u32Size;
    state->stAiBuf.u32KernelVirBaseAddr = stAiRbfMmz.u32StartVirAddr;
    state->stAiBuf.u32Read = stAiRbfMmz.u32Size;
    state->stAiBuf.u32Write = 0;
    state->stAiBuf.u32UserVirBaseAddr = 0;
    state->stAiProc.u32AqcCnt = 0;         //init proc info
    state->stAiProc.u32AqcTryCnt = 0;
    state->stAiProc.u32RelCnt = 0;
    state->stAiProc.u32RelTryCnt = 0;

    memcpy(&state->stSndPortAttr, pstAttr, sizeof(HI_UNF_AI_ATTR_S));
    
    return HI_SUCCESS;

AI_PortMMZRelease_ERR_EXIT:
    HI_DRV_MMZ_UnmapAndRelease(&stRbfMmz);
AI_MMZRelease_ERR_EXIT:
    HI_DRV_MMZ_UnmapAndRelease(&stAiRbfMmz);
return HI_FAILURE;
#endif
}

static HI_S32 AI_Create(AI_Create_Param_S_PTR pstAi,HI_HANDLE hAi, struct file *pstFile)
{
    HI_S32 Ret,i;
    AI_CHANNEL_STATE_S *state = HI_NULL;
    HI_UNF_AI_ATTR_S *pstAttr = &pstAi->stAttr;
    HI_UNF_AI_E enAiPort = pstAi->enAiPort;

    hAi &= AI_CHNID_MASK;

    CHECK_AI_SAMPLERATE(pstAttr->enSampleRate);
    CHECK_AI_BCLKDIV(pstAttr->unAttr.stI2sAttr.stAttr.enBclkSel);
    CHECK_AI_CHN(pstAttr->unAttr.stI2sAttr.stAttr.enChannel);
    CHECK_AI_BITDEPTH(pstAttr->unAttr.stI2sAttr.stAttr.enBitDepth);
    CHECK_AI_PCMDELAY(pstAttr->unAttr.stI2sAttr.stAttr.enPcmDelayCycle);
    
    if((HI_UNF_AI_I2S0 != enAiPort) &&(HI_UNF_AI_I2S1 != enAiPort))
    {
        HI_ERR_AI("just support I2S0 and I2S1 Port!\n");
        return HI_ERR_AI_INVALID_PARA;
    }

    if(HI_UNF_I2S_MODE_BUTT <= pstAttr->unAttr.stI2sAttr.stAttr.enI2sMode)
    {
        HI_ERR_AI("dont support I2sMode(%d)\n",pstAttr->unAttr.stI2sAttr.stAttr.enI2sMode);
        return HI_ERR_AI_INVALID_PARA;
    }

    if(HI_UNF_I2S_MCLK_BUTT <= pstAttr->unAttr.stI2sAttr.stAttr.enMclkSel)
    {
        HI_ERR_AI("dont support I2S MclkSel(%d)\n",pstAttr->unAttr.stI2sAttr.stAttr.enBclkSel);
        return HI_ERR_AI_INVALID_PARA;
    }
    
    if((HI_TRUE != pstAttr->unAttr.stI2sAttr.stAttr.bMaster) &&(HI_FALSE != pstAttr->unAttr.stI2sAttr.stAttr.bMaster))
    {
        HI_ERR_AI("Invalid bMaster(%d)\n",pstAttr->unAttr.stI2sAttr.stAttr.bMaster);
        return HI_ERR_AI_INVALID_PARA;
    }

    if((HI_TRUE != pstAttr->unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge) &&(HI_FALSE != pstAttr->unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge))
    {
        HI_ERR_AI("Invalid bPcmSampleRiseEdge(%d)\n",pstAttr->unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge);
        return HI_ERR_AI_INVALID_PARA;
    }


    for(i=0;i<AI_MAX_TOTAL_NUM;i++)
    {
        if(g_pstGlobalAIRS.pstAI_ATTR_S[i])
        {
            if(g_pstGlobalAIRS.pstAI_ATTR_S[i]->enAiPort == enAiPort)
            {
                HI_ERR_AI("This port has been occupied!\n");
                return HI_FAILURE;
            }
                 
        }
    }

    state = HI_KMALLOC(HI_ID_AI, sizeof(AI_CHANNEL_STATE_S), GFP_KERNEL);
    if (state == HI_NULL)
    {
        HI_FATAL_AI("HI_KMALLOC AI_Create failed\n");
        return HI_FAILURE;
    }

    memset(state, 0, sizeof(AI_CHANNEL_STATE_S));
    
    Ret = AICreateChn(enAiPort, pstAttr, pstAi->bAlsaUse, pstAi->pAlsaPara, state);
    if(HI_SUCCESS != Ret)
    {
        HI_FATAL_AI("AICreateChn failed\n");
        goto AI_KfreeState_ERR_EXIT;
    }
    
    state->bAlsa = pstAi->bAlsaUse;
    state->pAlsaPara = pstAi->pAlsaPara;
    state->u32File = (HI_U32)pstFile;
    
    g_pstGlobalAIRS.pstAI_ATTR_S[hAi] = state;
#if  defined (HI_ALSA_AI_SUPPORT)
    if(state->bAlsa ==HI_TRUE)
    {
        memcpy(&g_stAlsaAttr,(AI_ALSA_Param_S*)(pstAi->pAlsaPara),sizeof(AI_ALSA_Param_S));
    }
#endif
    //4.set global variable
    
#if 1       //for eqe check

    if(HI_UNF_AI_I2S0 == enAiPort)
    {
        g_pstGlobalAIRS.u32BitFlag_AI = (HI_U32)1<<AI_I2S0_MSK;
    }
    else if(HI_UNF_AI_I2S1 == enAiPort)
    {
        g_pstGlobalAIRS.u32BitFlag_AI = (HI_U32)1<<AI_I2S1_MSK;
    }
        
#else
    switch(enAiPort)
    {
        case HI_UNF_AI_I2S0:
            g_pstGlobalAIRS.u32BitFlag_AI = (HI_U32)1<<AI_I2S0_MSK;
            break;
        case HI_UNF_AI_I2S1:
            g_pstGlobalAIRS.u32BitFlag_AI = (HI_U32)1<<AI_I2S1_MSK;
            break;
         
        case HI_UNF_AI_ADC0:
            break;
        case HI_UNF_AI_HDMI0:
            break;
           
        default:
            HI_ERR_AI("Aiport is invalid!\n");
            return HI_ERR_AI_INVALID_PARA;
    }
#endif 
    return HI_SUCCESS;
        
AI_KfreeState_ERR_EXIT:
    HI_KFREE(HI_ID_AI, (HI_VOID*)state);
    return HI_FAILURE;
}

static HI_S32 AIChnDestory(AI_CHANNEL_STATE_S *state)
{
    HAL_AIAO_P_Close(state->enPort);
    HI_DRV_MMZ_UnmapAndRelease(&state->stRbfMmz);
    HI_DRV_MMZ_UnmapAndRelease(&state->stAiRbfMmz);
    return HI_SUCCESS;
}

static HI_S32 AI_Destory(HI_HANDLE hAi)
{
    AI_CHANNEL_STATE_S *state = HI_NULL;
    
    hAi &= AI_CHNID_MASK;

    state = g_pstGlobalAIRS.pstAI_ATTR_S[hAi];
    if (HI_NULL == state)
    {
        HI_ERR_AI("this AI chn is not open!\n");
        return HI_ERR_AI_INVALID_PARA;
    }
    
    AIChnDestory(state);

    g_pstGlobalAIRS.pstAI_ATTR_S[hAi] = NULL;

    switch(state->enAiPort)
    {
        case HI_UNF_AI_I2S0:
            g_pstGlobalAIRS.u32BitFlag_AI &= (HI_U32)(~(1<<AI_I2S0_MSK));
            break;
        case HI_UNF_AI_I2S1:
            g_pstGlobalAIRS.u32BitFlag_AI &= (HI_U32)(~(1<<AI_I2S0_MSK));
            break;
        case HI_UNF_AI_ADC0:
            break;
        case HI_UNF_AI_HDMI0:
            break;
        default:
            HI_ERR_AI("Aiport is invalid!\n");
            return HI_ERR_AI_INVALID_PARA;;
    }

    memset(state, 0, sizeof(AI_CHANNEL_STATE_S));
    HI_KFREE(HI_ID_AI, (HI_VOID*)state);
    
    return HI_SUCCESS;
}

static HI_S32 AI_SetEnable(HI_HANDLE hAi, HI_BOOL bEnable)
{
    HI_S32 Ret;
    AI_CHANNEL_STATE_S *state = HI_NULL;
    
    hAi &= AI_CHNID_MASK;

    state = g_pstGlobalAIRS.pstAI_ATTR_S[hAi];
    
    if (HI_NULL == state)
    {
        HI_ERR_AI("this AI chn is not open!\n");
        return HI_ERR_AI_INVALID_PARA;;
    }
    
    if(bEnable)
    {
        Ret = HAL_AIAO_P_Start(state->enPort);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AI("HAL_AIAO_P_Start(%d) failed\n", state->enPort);
        }
        else
        {
            state->enCurnStatus  = AI_CHANNEL_STATUS_START;
        }
    }
    else
    {
        Ret = HAL_AIAO_P_Stop(state->enPort, AIAO_STOP_IMMEDIATE);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AI("HAL_AIAO_P_Stop(%d) failed\n", state->enPort);
        }
        else
        {
            state->enCurnStatus  = AI_CHANNEL_STATUS_STOP;
        }
    }
    return Ret;
}

static HI_S32 AI_SetAttr(HI_HANDLE hAi, HI_UNF_AI_ATTR_S *pAiAttr)
{
    AI_CHANNEL_STATE_S *state = HI_NULL;
    AIAO_PORT_ATTR_S stPortAttr;
    
    hAi &= AI_CHNID_MASK;

    CHECK_AI_SAMPLERATE(pAiAttr->enSampleRate);
    CHECK_AI_BCLKDIV(pAiAttr->unAttr.stI2sAttr.stAttr.enBclkSel);
    CHECK_AI_CHN(pAiAttr->unAttr.stI2sAttr.stAttr.enChannel);
    CHECK_AI_BITDEPTH(pAiAttr->unAttr.stI2sAttr.stAttr.enBitDepth);
    CHECK_AI_PCMDELAY(pAiAttr->unAttr.stI2sAttr.stAttr.enPcmDelayCycle);
    
    if(HI_UNF_I2S_MODE_BUTT <= pAiAttr->unAttr.stI2sAttr.stAttr.enI2sMode)
    {
        HI_ERR_AI("dont support I2sMode(%d)\n",pAiAttr->unAttr.stI2sAttr.stAttr.enI2sMode);
        return HI_ERR_AI_INVALID_PARA;
    }

    if(HI_UNF_I2S_MCLK_BUTT <= pAiAttr->unAttr.stI2sAttr.stAttr.enMclkSel)
    {
        HI_ERR_AI("dont support I2S MclkSel(%d)\n",pAiAttr->unAttr.stI2sAttr.stAttr.enBclkSel);
        return HI_ERR_AI_INVALID_PARA;
    }
    
    if((HI_TRUE != pAiAttr->unAttr.stI2sAttr.stAttr.bMaster) &&(HI_FALSE != pAiAttr->unAttr.stI2sAttr.stAttr.bMaster))
    {
        HI_ERR_AI("Invalid bMaster(%d)\n",pAiAttr->unAttr.stI2sAttr.stAttr.bMaster);
        return HI_ERR_AI_INVALID_PARA;
    }

    if((HI_TRUE != pAiAttr->unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge) &&(HI_FALSE != pAiAttr->unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge))
    {
        HI_ERR_AI("Invalid bPcmSampleRiseEdge(%d)\n",pAiAttr->unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge);
        return HI_ERR_AI_INVALID_PARA;
    }


    state = g_pstGlobalAIRS.pstAI_ATTR_S[hAi];
    if (HI_NULL == state)
    {
        HI_ERR_AI("this AI chn is not open!\n");
        return HI_ERR_AI_INVALID_PARA;;
    }
    
    if(AI_CHANNEL_STATUS_STOP != state->enCurnStatus)
    {
        HI_ERR_AI("current state is not stop,can not set attr!\n");
        return HI_FAILURE;
    }

    HAL_AIAO_P_GetAttr(state->enPort,&stPortAttr);

    if(pAiAttr->unAttr.stI2sAttr.stAttr.bMaster)
    {
        stPortAttr.stIfAttr.enCrgMode = AIAO_CRG_MODE_DUPLICATE;
        switch(state->enAiPort)
        {
            case HI_UNF_AI_I2S0:
                stPortAttr.stIfAttr.eCrgSource = AIAO_TX_CRG0;
                break;
            case HI_UNF_AI_I2S1:
                stPortAttr.stIfAttr.eCrgSource = AIAO_TX_CRG1;
                break;
            case HI_UNF_AI_ADC0:
                break;
            case HI_UNF_AI_HDMI0:
                break;
            default:
                HI_ERR_AI("Aiport is invalid!\n");
                return HI_ERR_AI_INVALID_PARA;;
        }
        
        if(0 == pAiAttr->unAttr.stI2sAttr.stAttr.enBclkSel)
        {
            HI_ERR_AIAO("enBclkSel can not be zero!");
            return HI_FAILURE;
        }
        stPortAttr.stIfAttr.u32BCLK_DIV = pAiAttr->unAttr.stI2sAttr.stAttr.enBclkSel;
        stPortAttr.stIfAttr.u32FCLK_DIV = AUTIL_FclkDiv(pAiAttr->unAttr.stI2sAttr.stAttr.enMclkSel, pAiAttr->unAttr.stI2sAttr.stAttr.enBclkSel);
    }
    else
    {
        stPortAttr.stIfAttr.enCrgMode = AIAO_CRG_MODE_SLAVE;
    }
    
    stPortAttr.stIfAttr.enRate = (AIAO_SAMPLE_RATE_E)(pAiAttr->enSampleRate);
    stPortAttr.stIfAttr.enI2SMode = (AIAO_I2S_MODE_E)(pAiAttr->unAttr.stI2sAttr.stAttr.enI2sMode);
    stPortAttr.stIfAttr.enChNum = (AIAO_I2S_CHNUM_E)(pAiAttr->unAttr.stI2sAttr.stAttr.enChannel);
    stPortAttr.stIfAttr.enBitDepth = (AIAO_BITDEPTH_E)(pAiAttr->unAttr.stI2sAttr.stAttr.enBitDepth);
    stPortAttr.stIfAttr.u32PcmDelayCycles = pAiAttr->unAttr.stI2sAttr.stAttr.enPcmDelayCycle;

    if(pAiAttr->unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge == HI_TRUE)
    {
        stPortAttr.stIfAttr.enRiseEdge = AIAO_MODE_EDGE_RISE;
    }
    else
    {
        stPortAttr.stIfAttr.enRiseEdge = AIAO_MODE_EDGE_FALL;
    }
        
    HAL_AIAO_P_SetAttr(state->enPort,&stPortAttr);
    
    memcpy(&state->stSndPortAttr, pAiAttr, sizeof(HI_UNF_AI_ATTR_S));
    
    return HI_SUCCESS;
}

static HI_S32 AI_GetAttr(HI_HANDLE hAi, HI_UNF_AI_ATTR_S *pAiAttr)
{
    AI_CHANNEL_STATE_S *state = HI_NULL;
    
    hAi &= AI_CHNID_MASK;

    state = g_pstGlobalAIRS.pstAI_ATTR_S[hAi];
    if (HI_NULL == state)
    {
        HI_ERR_AI("this AI chn is not open!\n");
        return HI_ERR_AI_INVALID_PARA;;
    }
    memcpy(pAiAttr, &state->stSndPortAttr, sizeof(HI_UNF_AI_ATTR_S));
    
    return HI_SUCCESS;
}

static HI_S32 AI_AcquireFrame(HI_HANDLE hAi, HI_UNF_AO_FRAMEINFO_S *pstFrame)
{
    HI_U32 u32ReadBytes, u32NeedBytes, u32DataBytes, u32FrameSize, u32QurBufDataCnt = 0;
    AI_CHANNEL_STATE_S *state = HI_NULL;
    
    hAi &= AI_CHNID_MASK;

    state = g_pstGlobalAIRS.pstAI_ATTR_S[hAi];
    
    if (HI_NULL == state)
    {
        HI_ERR_AI("AI chn is not open,can not get frame!\n");
        return HI_ERR_AI_INVALID_PARA;
    }

    state->stAiProc.u32AqcTryCnt++;

    if(AI_CHANNEL_STATUS_STOP == state->enCurnStatus)
    {
        HI_ERR_AI("current state is stop,can not get frame!\n");
        return HI_FAILURE;
    }

    if(!state->stAiBuf.u32Read)         //do not need read data from port buff
    {
        pstFrame->bInterleaved = HI_TRUE;
        pstFrame->s32BitPerSample = state->stSndPortAttr.unAttr.stI2sAttr.stAttr.enBitDepth;
        pstFrame->u32Channels = state->stSndPortAttr.unAttr.stI2sAttr.stAttr.enChannel;
        pstFrame->u32PcmSamplesPerFrame = state->stSndPortAttr.u32PcmSamplesPerFrame;
        pstFrame->u32SampleRate = state->stSndPortAttr.enSampleRate;
        return HI_SUCCESS;
    }

    u32FrameSize = AUTIL_CalcFrameSize(state->stSndPortAttr.unAttr.stI2sAttr.stAttr.enChannel, state->stSndPortAttr.unAttr.stI2sAttr.stAttr.enBitDepth);
    u32NeedBytes= state->stSndPortAttr.u32PcmSamplesPerFrame*u32FrameSize;
    
    while(1)
    {
        u32QurBufDataCnt++;
        u32DataBytes = HAL_AIAO_P_QueryBufData(state->enPort);
        if (u32DataBytes > u32NeedBytes)
        {
            break;
        }
        
        if (u32QurBufDataCnt > AI_QUERY_BUF_CNT_MAX)
        {
            HI_ERR_AI("Query BufData time out!\n");
            return HI_FAILURE;
        }
        msleep(1);
    }
#if 0
    u32ReadBytes = HAL_AIAO_P_ReadData(state->enPort, (HI_U8*)pstFrame->ps32PcmBuffer, u32NeedBytes);
    if (u32ReadBytes != u32NeedBytes)
    {
        HI_ERR_AI("Read Port Data Error!\n");
        return HI_FAILURE;
    }
#endif

    u32ReadBytes = HAL_AIAO_P_ReadData(state->enPort, (HI_U8*)state->stAiBuf.u32KernelVirBaseAddr, u32NeedBytes);

    if (u32ReadBytes != u32NeedBytes)
    {
        HI_ERR_AI("Read Port Data Error!\n");
        return HI_FAILURE;
    }
    
    pstFrame->bInterleaved = HI_TRUE;
    pstFrame->s32BitPerSample = state->stSndPortAttr.unAttr.stI2sAttr.stAttr.enBitDepth;
    pstFrame->u32Channels = state->stSndPortAttr.unAttr.stI2sAttr.stAttr.enChannel;
    pstFrame->u32PcmSamplesPerFrame = state->stSndPortAttr.u32PcmSamplesPerFrame;
    pstFrame->u32SampleRate = state->stSndPortAttr.enSampleRate;

    state->stAiBuf.u32Write = u32ReadBytes;
    state->stAiBuf.u32Read = 0;
    state->stAiProc.u32AqcCnt++;
    
    return HI_SUCCESS;
}

static HI_S32 AI_ReleaseFrame(HI_HANDLE hAi, HI_UNF_AO_FRAMEINFO_S *pstFrame)
{
    //HI_U32 u32DataBytes, u32UpRptrBytes, u32FrameSize;
    
    AI_CHANNEL_STATE_S *state = HI_NULL;
    
    hAi &= AI_CHNID_MASK;

    state = g_pstGlobalAIRS.pstAI_ATTR_S[hAi];
    if (HI_NULL == state)
    {
        HI_ERR_AI("this AI chn is not open!\n");
        return HI_FAILURE;
    }
    
    state->stAiProc.u32RelTryCnt++;
#if 0
    u32FrameSize = AUTIL_CalcFrameSize(pstFrame->u32Channels, pstFrame->s32BitPerSample);
    u32DataBytes= pstFrame->u32PcmSamplesPerFrame*u32FrameSize;
    
    u32UpRptrBytes = HAL_AIAO_P_UpdateRptr(state->enPort, (HI_U8*)pstFrame->ps32PcmBuffer, u32DataBytes);
    if (u32UpRptrBytes != u32DataBytes)
    {
        HI_ERR_AI("Up Port Rptr Error!\n");
        return HI_FAILURE;
    }
#endif
    state->stAiBuf.u32Read =state->stAiBuf.u32Read + pstFrame->u32PcmSamplesPerFrame*pstFrame->u32Channels*pstFrame->s32BitPerSample /8;

    state->stAiProc.u32RelCnt++;
    return HI_SUCCESS;
}

static HI_S32 AI_GetAiBufInfo(HI_HANDLE hAi, AI_BUF_ATTR_S *pstAiBuf)
{
    AI_CHANNEL_STATE_S *state = HI_NULL;
    
    hAi &= AI_CHNID_MASK;

    state = g_pstGlobalAIRS.pstAI_ATTR_S[hAi];

    if (HI_NULL == state)
    {
        HI_ERR_AI("AI chn is not open,can not get frame!\n");
        return HI_ERR_AI_INVALID_PARA;
    }

    pstAiBuf->u32PhyBaseAddr = state->stAiBuf.u32PhyBaseAddr;
    pstAiBuf->u32Size = state->stAiBuf.u32Size;
    pstAiBuf->u32KernelVirBaseAddr = state->stAiBuf.u32KernelVirBaseAddr;
    pstAiBuf->u32Read = state->stAiBuf.u32Read;
    pstAiBuf->u32Write = state->stAiBuf.u32Write;
    pstAiBuf->u32UserVirBaseAddr = state->stAiBuf.u32UserVirBaseAddr;

    return HI_SUCCESS;
}

static HI_S32 AI_SetAiBufInfo(HI_HANDLE hAi, AI_BUF_ATTR_S *pstAiBuf)
{
    AI_CHANNEL_STATE_S *state = HI_NULL;
    
    hAi &= AI_CHNID_MASK;
    
    state = g_pstGlobalAIRS.pstAI_ATTR_S[hAi];
    
    if (HI_NULL == state)
    {
        HI_ERR_AI("AI chn is not open,can not get frame!\n");
        return HI_ERR_AI_INVALID_PARA;
    }

    state->stAiBuf.u32UserVirBaseAddr = pstAiBuf->u32UserVirBaseAddr;
    
    return HI_SUCCESS;
}

static HI_S32 AI_AllocHandle(HI_HANDLE *phHandle)
{
    HI_U32 i;
    
    if (HI_NULL == phHandle)
    {
        HI_ERR_AI("Bad param!\n");
        return HI_FAILURE;
    }
    
    /* Allocate new Ai channel */
    for (i = 0; i < AI_MAX_TOTAL_NUM; i++)
    {
        if (NULL == g_pstGlobalAIRS.pstAI_ATTR_S[i])
        {
            break;
        }
    }

    if (i >= AI_MAX_TOTAL_NUM)
    {
        HI_ERR_AI("Too many Ai channel!\n");
        return HI_FAILURE;
    }
        
    *phHandle =(HI_ID_AI << 16) | i;
        
    return HI_SUCCESS;
}

static HI_VOID AI_FreeHandle(HI_HANDLE hHandle)
{
    hHandle &= AI_CHNID_MASK;
    g_pstGlobalAIRS.pstAI_ATTR_S[hHandle] = NULL;
}

static HI_S32 AI_OpenDev(HI_VOID)
{
    HI_U32 i;

    g_pstGlobalAIRS.u32BitFlag_AI = 0;

    for (i=0;i<AI_MAX_TOTAL_NUM;i++)
    {
        g_pstGlobalAIRS.pstAI_ATTR_S[i] = NULL;
    }

    HAL_AIAO_Init();
    
    return HI_SUCCESS;
}

static HI_S32 AI_CloseDev(HI_VOID)
{
    HI_U32 i;
    
    g_pstGlobalAIRS.u32BitFlag_AI = 0;

    for (i=0;i<AI_MAX_TOTAL_NUM;i++)
    {
        g_pstGlobalAIRS.pstAI_ATTR_S[i] = NULL;
    }
    
    HAL_AIAO_DeInit();
    
    return HI_SUCCESS;
}


/************************************************************************/
static HI_S32 AI_ProcessCmd(struct file *file, HI_U32 cmd, HI_VOID *arg)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    
    switch(cmd)
    {
        case CMD_AI_GEtDEFAULTATTR:
        {
            AI_GetDfAttr_Param_S_PTR pstAiDfAttr = (AI_GetDfAttr_Param_S_PTR)arg;            
            Ret = AI_GetDefaultAttr(pstAiDfAttr->enAiPort, &pstAiDfAttr->stAttr);
            break;
        }
        case CMD_AI_CREATE:
        {
            AI_Create_Param_S_PTR pstAi =  (AI_Create_Param_S_PTR)arg;
                
            if (HI_SUCCESS == AI_AllocHandle(&hHandle))
            {
                Ret = AI_Create(pstAi, hHandle, file);
                
                if (HI_SUCCESS != Ret)
                {
                    AI_FreeHandle(hHandle);
                    break;
                }
                
                pstAi->hAi = hHandle;
            }
            else
            {
                Ret = HI_FAILURE;
            }
            break;
        }
        case CMD_AI_DESTROY:
        {
            HI_HANDLE hAi = *(HI_HANDLE *)arg;
            CHECK_AI_CHN_OPEN(hAi);

            Ret = AI_Destory(hAi);
            if (HI_SUCCESS != Ret)
            {
                break;
            }
            
            AI_FreeHandle(hAi);
            break;
        }
        case CMD_AI_SETENABLE:
        {
            AI_Enable_Param_S_PTR pstAiEnable = (AI_Enable_Param_S_PTR)arg;
            
            CHECK_AI_CHN_OPEN(pstAiEnable->hAi);
                        
            Ret = AI_SetEnable(pstAiEnable->hAi, pstAiEnable->bAiEnable);
            break;
        }
        
        case CMD_AI_ACQUIREFRAME:
        {
            AI_Frame_Param_S_PTR pstAiFrame = (AI_Frame_Param_S_PTR)arg;
            
            CHECK_AI_CHN_OPEN(pstAiFrame->hAi);

            Ret = AI_AcquireFrame(pstAiFrame->hAi, &pstAiFrame->stAiFrame);
            break;
        }
        
        case CMD_AI_RELEASEFRAME:
        {
            AI_Frame_Param_S_PTR pstAiFrame = (AI_Frame_Param_S_PTR)arg;

            CHECK_AI_CHN_OPEN(pstAiFrame->hAi);

            Ret = AI_ReleaseFrame(pstAiFrame->hAi, &pstAiFrame->stAiFrame);
            break;
        }
        
        case CMD_AI_SETATTR:
        {
            AI_Attr_Param_S_PTR pstAiAttr = (AI_Attr_Param_S_PTR)arg;

            CHECK_AI_CHN_OPEN(pstAiAttr->hAi);

            Ret = AI_SetAttr(pstAiAttr->hAi, &pstAiAttr->stAttr);
            break;
        }
        
        case CMD_AI_GETATTR:
        {
            AI_Attr_Param_S_PTR pstAiAttr = (AI_Attr_Param_S_PTR)arg;

            CHECK_AI_CHN_OPEN(pstAiAttr->hAi);

            Ret = AI_GetAttr(pstAiAttr->hAi, &pstAiAttr->stAttr);
            break;
        }
        
        case CMD_AI_GETBUFINFO:
        {
            AI_Buf_Param_S_PTR pstAiBufInfo = (AI_Buf_Param_S_PTR)arg;

            CHECK_AI_CHN_OPEN(pstAiBufInfo->hAi);

            Ret = AI_GetAiBufInfo(pstAiBufInfo->hAi, &pstAiBufInfo->stAiBuf);
            break;
        }
        
        case CMD_AI_SETBUFINFO:
        {
            AI_Buf_Param_S_PTR pstAiBufInfo = (AI_Buf_Param_S_PTR)arg;

            CHECK_AI_CHN_OPEN(pstAiBufInfo->hAi);

            Ret = AI_SetAiBufInfo(pstAiBufInfo->hAi, &pstAiBufInfo->stAiBuf);
            break;
        }
        
        default:
        {
            Ret = HI_ERR_AI_INVALID_PARA;;
            HI_WARN_AI("unknown cmd: 0x%x\n", cmd);
            break;
        }

    }

    return Ret;

}

long AI_DRV_Ioctl(struct file *file, HI_U32 cmd, unsigned long arg)
{
    long Ret;

    Ret = down_interruptible(&g_AIMutex);

    //cmd process
    Ret = (long)AI_ProcessCmd(file,cmd, (HI_VOID *)arg);

    up(&g_AIMutex);
    return Ret;
}


HI_S32 AI_DRV_Open(struct inode *inode, struct file  *filp)
{
    HI_S32 Ret;
    
    Ret = down_interruptible(&g_AIMutex);
   
    if (atomic_inc_return(&g_AIOpenCnt) == 1)
    {
        if (HI_SUCCESS != AI_OpenDev())
        {
            HI_FATAL_AI("AI_OpenDev err!\n" );
            up(&g_AIMutex);
            return HI_FAILURE;
        }
    }
    
    up(&g_AIMutex);
    return HI_SUCCESS;
}

HI_S32 AI_DRV_Release(struct inode *inode, struct file  *filp)
{
    HI_S32 Ret,i;
    HI_HANDLE hAi;
    
    Ret = down_interruptible(&g_AIMutex);
    
    for(i=0;i<AI_MAX_TOTAL_NUM;i++)
    {
        if((NULL != g_pstGlobalAIRS.pstAI_ATTR_S[i]) && (((HI_U32)filp)) == g_pstGlobalAIRS.pstAI_ATTR_S[i]->u32File)
        {
            hAi = (HI_HANDLE)i;

            AI_Destory(hAi);
            
            AI_FreeHandle(hAi);
        }
    }
    
    if (atomic_dec_and_test(&g_AIOpenCnt))
    {
        if (HI_SUCCESS != AI_CloseDev())
        {
            HI_FATAL_AI("AI_CloseDev err!\n" );
        }
    }
    
    up(&g_AIMutex);
    
    return HI_SUCCESS;
}

static HI_S32 AI_ShowChnProc(struct seq_file* p,HI_U32 u32Chn)
{
    HI_S32 Ret;
    HI_U32 u32BufSizeUsed, u32BufPerCentUsed;
    AIAO_PORT_ID_E enPort;
    AIAO_PORT_STAUTS_S pstPortStatus;
    AI_CHANNEL_STATE_S *state = HI_NULL;
    
    state = g_pstGlobalAIRS.pstAI_ATTR_S[u32Chn];
    
    enPort = state->enPort;
    Ret = HAL_AIAO_P_GetStatus(enPort, &pstPortStatus);
    
    if(*(pstPortStatus.stCircBuf.pu32Write) >= *(pstPortStatus.stCircBuf.pu32Read))
    {
        u32BufSizeUsed = *(pstPortStatus.stCircBuf.pu32Write) - *(pstPortStatus.stCircBuf.pu32Read);
    }
    else
    {
        u32BufSizeUsed = pstPortStatus.stCircBuf.u32Lenght - (*(pstPortStatus.stCircBuf.pu32Read) - *(pstPortStatus.stCircBuf.pu32Write));
    }
    
    u32BufPerCentUsed = u32BufSizeUsed*100/pstPortStatus.stCircBuf.u32Lenght;

    PROC_PRINT( p, 
                "\n--------------------- AI[%d] Status ---------------------\n",
                u32Chn);
    PROC_PRINT(p,
               "Status                               :%s\n",
               (HI_CHAR*)((AIAO_PORT_STATUS_START == pstPortStatus.enStatus) ? "start" : ((AIAO_PORT_STATUS_STOP == pstPortStatus.enStatus) ? "stop" : "stopping")));
    PROC_PRINT(p,
               "AiPort                               :%s\n",
               (HI_CHAR*)((AIAO_PORT_RX0 == enPort) ? "I2S0" : ((AIAO_PORT_RX1 == enPort) ? "I2S1" : "UNKOWN")));
    PROC_PRINT(p,
               "SampleRate                           :%d\n",
               state->stSndPortAttr.enSampleRate);
    PROC_PRINT(p,
               "PcmFrameMaxNum                       :%d\n",
               state->stSndPortAttr.u32PcmFrameMaxNum);
    PROC_PRINT(p,
               "PcmSamplesPerFrame                   :%d\n\n",
               state->stSndPortAttr.u32PcmSamplesPerFrame);
    PROC_PRINT(p,
               "DmaCnt                               :%d\n",
               pstPortStatus.stProcStatus.uDMACnt);
    PROC_PRINT(p,
               "BufFullCnt                           :%d\n",
               pstPortStatus.stProcStatus.uBufFullCnt);
    PROC_PRINT(p,
               "FiFoFullCnt                          :%d\n",
               pstPortStatus.stProcStatus.uInfFiFoFullCnt);
    PROC_PRINT(p,
               "FrameBuf(Total/Use/Percent)(Bytes)   :%d/%d/%d%%\n",
               pstPortStatus.stBuf.u32BUFF_SIZE, u32BufSizeUsed, u32BufPerCentUsed);
    PROC_PRINT(p,
               "AcquireFrame(Try/OK)                 :%d/%d\n",
               state->stAiProc.u32AqcTryCnt, state->stAiProc.u32AqcCnt);
    PROC_PRINT(p,
               "ReleaseFrame(Try/OK)                 :%d/%d\n\n",
               state->stAiProc.u32RelTryCnt, state->stAiProc.u32RelCnt);

    
    return HI_SUCCESS;
}


HI_S32 AI_DRV_ReadProc( struct seq_file* p, HI_VOID* v )
{
    HI_S32 i;
    
    for (i = 0; i < AI_MAX_TOTAL_NUM; i++)
    {
        if(g_pstGlobalAIRS.pstAI_ATTR_S[i])
        {
            AI_ShowChnProc( p, i);
        }
    }

    return HI_SUCCESS;
}

HI_S32 AI_DRV_WriteProc( struct file* file, const char __user* buf, size_t count, loff_t* ppos )
{
    return HI_SUCCESS;
}

static HI_S32 AI_RegProc(HI_VOID)
{
    DRV_PROC_ITEM_S*  pProcItem;

    /* Check parameters */
    if (HI_NULL == g_pstGlobalAIRS.pstProcParam)
    {
        return HI_FAILURE;
    }

    /* Create proc */
    pProcItem = HI_DRV_PROC_AddModule("ai", HI_NULL, HI_NULL);
    if (!pProcItem)
    {
        HI_FATAL_AO("Create ai proc entry fail!\n");
        return HI_FAILURE;
    }

    /* Set functions */
    pProcItem->read  = g_pstGlobalAIRS.pstProcParam->pfnReadProc;
    pProcItem->write = g_pstGlobalAIRS.pstProcParam->pfnWriteProc;

    HI_INFO_AO("Create Ai proc entry for OK!\n");
    return HI_SUCCESS;
}

static HI_VOID AI_UnRegProc(HI_VOID)
{
    HI_DRV_PROC_RemoveModule("ai");
}


HI_S32 AI_DRV_RegisterProc(AI_REGISTER_PARAM_S * pstParam)
{
    /* Check parameters */
    if (HI_NULL == pstParam)
    {
        return HI_FAILURE;
    }

    g_pstGlobalAIRS.pstProcParam = pstParam;

    /* Create proc */
        AI_RegProc();

    return HI_SUCCESS;
}

HI_VOID AI_DRV_UnregisterProc(HI_VOID)
{
    AI_UnRegProc();

    /* Clear param */
    g_pstGlobalAIRS.pstProcParam = HI_NULL;
    return;
}

HI_S32 AI_DRV_Suspend(PM_BASEDEV_S * pdev,
                      pm_message_t   state)
{
#if defined (HI_AI_DRV_SUSPEND_SUPPORT)  
    HI_U32 i;
    HI_S32 s32Ret;
    AI_CHANNEL_STATE_S *pAistate = HI_NULL;
    HI_FATAL_AI("entering\n");
    
    s32Ret = down_interruptible(&g_AIMutex);
    if(0 != atomic_read(&g_AIOpenCnt))
    {
        for(i=0; i<AI_MAX_TOTAL_NUM; i++)
        {
            if (g_pstGlobalAIRS.pstAI_ATTR_S[i])
            {
                pAistate = g_pstGlobalAIRS.pstAI_ATTR_S[i];
                HAL_AIAO_P_Close(pAistate->enPort);
            }
        }
        
        s32Ret = HAL_AIAO_Suspend();
        if(HI_SUCCESS != s32Ret)
        {
            HI_FATAL_AI("AIAO Suspend fail\n");
            up(&g_AIMutex);
            return HI_FAILURE;
        }
    }
    HI_FATAL_AI("ok\n");
#endif   
    up(&g_AIMutex);
    return HI_SUCCESS;
}

HI_S32 AI_DRV_Resume(PM_BASEDEV_S * pdev)
{
#if defined (HI_AI_DRV_SUSPEND_SUPPORT)    
    HI_S32 s32Ret;
    HI_U32 i;
    HI_UNF_AI_E enAiPort;
    HI_UNF_AI_ATTR_S stAiAttr;
    HI_BOOL bAlsa;
    HI_VOID *pAlsaPara;
    AI_CHANNEL_STATE_S *state = HI_NULL;
    AI_CHANNEL_STATUS_E  enAiStatus;
    
    HI_FATAL_AI("entering\n");

    s32Ret = down_interruptible(&g_AIMutex);
    
    if(0 != atomic_read(&g_AIOpenCnt))
    {
        s32Ret = HAL_AIAO_Resume();
        if(HI_SUCCESS != s32Ret)
        {
            HI_FATAL_AI("AIAO Resume fail\n");
            up(&g_AIMutex);
            return HI_FAILURE;
        }

        for(i=0; i<AI_MAX_TOTAL_NUM; i++)
        {
            if (g_pstGlobalAIRS.pstAI_ATTR_S[i])
            {
                state = g_pstGlobalAIRS.pstAI_ATTR_S[i];
                enAiPort = g_pstGlobalAIRS.pstAI_ATTR_S[i]->enAiPort;
                stAiAttr = g_pstGlobalAIRS.pstAI_ATTR_S[i]->stSndPortAttr;
                bAlsa = g_pstGlobalAIRS.pstAI_ATTR_S[i]->bAlsa;
                pAlsaPara = g_pstGlobalAIRS.pstAI_ATTR_S[i]->pAlsaPara;
                enAiStatus= state->enCurnStatus;
                #ifdef HI_ALSA_AI_SUPPORT
                if(bAlsa ==HI_TRUE)
                {                     
                     pAlsaPara= (void*)&g_stAlsaAttr;                    
                }
                #endif
                s32Ret = AI_Resume_CreateChn(enAiPort, &stAiAttr, bAlsa, pAlsaPara, state);
                
                if(HI_SUCCESS != s32Ret)
                {
                    HI_FATAL_AI("AICreateChn failed\n");
                    up(&g_AIMutex);
                    return HI_FAILURE;
                }
                
                if(AI_CHANNEL_STATUS_START == enAiStatus)
                {
                    s32Ret = AI_SetEnable(i, HI_TRUE);
                    if(HI_SUCCESS != s32Ret)
                    {
                        HI_ERR_AI("Set AI Enable failed\n");
                        up(&g_AIMutex);
                        return HI_FAILURE;
                    }                
                }
            }
        }
    }
    up(&g_AIMutex);
    HI_FATAL_AI("ok\n");
#endif
    return HI_SUCCESS;
}


HI_S32 AI_DRV_Init(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = down_interruptible(&g_AIMutex);
    s32Ret = HI_DRV_MODULE_Register(HI_ID_AI, AI_NAME,NULL);
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_AI("Reg Ai module fail:%#x!\n", s32Ret);
        up(&g_AIMutex);
        return s32Ret;
    }

    up(&g_AIMutex);
    return HI_SUCCESS;
}

HI_VOID AI_DRV_Exit(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = down_interruptible(&g_AIMutex);
    
    HI_DRV_MODULE_UnRegister(HI_ID_AI);

    up(&g_AIMutex);
    return;
}

