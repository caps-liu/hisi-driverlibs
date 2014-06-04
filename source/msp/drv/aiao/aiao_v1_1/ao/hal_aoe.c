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

#include "hi_type.h"
#include "hi_module.h"
#include <linux/string.h>
#include "hi_drv_mem.h"
#include "hal_aoe.h"
#include "hal_aoe_func.h"
#include "hi_drv_struct.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"
#include "hi_drv_mem.h"
#include "hi_drv_module.h"
#include "circ_buf.h"  //todo drv_aiao_debug_common
#include "audio_util.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

typedef struct
{
    HI_HANDLE hAip[AOE_AIP_BUTT];
    HI_HANDLE hAop[AOE_AOP_BUTT];
    HI_HANDLE hMix[AOE_ENGINE_BUTT];
} AOE_GLOBAL_SOURCE_S;

typedef struct
{
    HI_U32 uTotalByteWrite;
    HI_U32 uTryWriteCnt;
} AOE_AIP_PROC_STATUS_S;

typedef struct
{
    AOE_AIP_CHN_ATTR_S stUserAttr;

    /* internal state */
    AOE_AIP_ID_E aip;
    HI_U32                u32BufFrameSize;
    HI_U32                u32FiFoFrameSize;
    HI_S32                s32AdjSpeed;
    HI_U32                u32VolumedB;
    AOE_AIP_STATUS_E      enCurnStatus;
    CIRC_BUF_S            stCB;
    AOE_AIP_PROC_STATUS_S stProc;
} AOE_AIP_CHN_STATE_S;

/* private state */
static AOE_GLOBAL_SOURCE_S g_AoeRm;

#define CHECK_AIP_OPEN(AIP) \
    do {\
        if (HI_NULL == g_AoeRm.hAip[AIP])\
        {\
            HI_ERR_AO("aip (%d) is not create.\n", AIP); \
            return HI_FAILURE; \
        } \
    } while (0)
    
static HI_VOID AOEAIPFlushState(AOE_AIP_CHN_STATE_S *state)
{
    state->s32AdjSpeed = 0;
    memset(&state->stProc,0, sizeof(AOE_AIP_PROC_STATUS_S));
    iHAL_AOE_AIP_SetSpeed(state->aip, state->s32AdjSpeed);
    //todo flush detail
}

/* global function */
HI_S32                  HAL_AOE_Init(HI_BOOL bSwAoeFlag)
{
    AOE_AIP_ID_E aip;
    AOE_AOP_ID_E aop;
    AOE_ENGINE_ID_E engine;

    /* init rm */
    for (aip = AOE_AIP0; aip < AOE_AIP_BUTT; aip++)
    {
        g_AoeRm.hAip[aip] = HI_NULL;
    }

    for (aop = AOE_AOP0; aop < AOE_AOP_BUTT; aop++)
    {
        g_AoeRm.hAop[aop] = HI_NULL;
    }

    for (engine = AOE_ENGINE0; engine < AOE_ENGINE_BUTT; engine++)
    {
        g_AoeRm.hMix[engine] = HI_NULL;
    }

    return iHAL_AOE_Init(bSwAoeFlag);
}

HI_VOID                 HAL_AOE_DeInit(HI_VOID)
{
    AOE_AIP_ID_E aip;
    AOE_AOP_ID_E aop;
    AOE_ENGINE_ID_E engine;

    /* init rm */
    for (aip = AOE_AIP0; aip < AOE_AIP_BUTT; aip++)
    {
        if (g_AoeRm.hAip[aip])
        {
            iHAL_AOE_AIP_Destroy(aip);
        }
        g_AoeRm.hAip[aip] = HI_NULL;
    }

    for (aop = AOE_AOP0; aop < AOE_AOP_BUTT; aop++)
    {
        if (g_AoeRm.hAip[aop])
        {
            iHAL_AOE_AOP_Destroy(aop);
        }
        g_AoeRm.hAop[aop] = HI_NULL;
    }

    for (engine = AOE_ENGINE0; engine < AOE_ENGINE_BUTT; engine++)
    {
        if (g_AoeRm.hMix[engine])
        {
            iHAL_AOE_ENGINE_Destroy(engine);
        }
        g_AoeRm.hMix[engine] = HI_NULL;
    }

    iHAL_AOE_DeInit();
}

AOE_AIP_ID_E  AOEGetFreeAIP(HI_VOID)
{
    AOE_AIP_ID_E enFreeAip;

    for (enFreeAip = AOE_AIP0; enFreeAip < AOE_AIP_BUTT; enFreeAip++)
    {
        if (!g_AoeRm.hAip[enFreeAip])
        {
            return enFreeAip;
        }
    }
    return AOE_AIP_BUTT;
}

AOE_AOP_ID_E  AOEGetFreeAOP(HI_VOID)
{
    AOE_AOP_ID_E enFreeAop;

    for (enFreeAop = AOE_AOP0; enFreeAop < AOE_AOP_BUTT; enFreeAop++)
    {
        if (!g_AoeRm.hAop[enFreeAop])
        {
            return enFreeAop;
        }
    }
    return AOE_AOP_BUTT;
}


static HI_U32 UTIL_CalcFrameSize(HI_U32 uCh, HI_U32 uBitDepth)
{
    HI_U32 uFrameSize = 0;

    switch (uBitDepth)
    {
    case 16:
        uFrameSize = ((HI_U32)uCh) * sizeof(HI_U16);
        break;
    case 24:
        uFrameSize = ((HI_U32)uCh) * sizeof(HI_U32);
        break;
    default: 
        break;
    }

    return uFrameSize;
}

HI_S32  HAL_AOE_AIP_Create(AOE_AIP_ID_E *penAIP, AOE_AIP_CHN_ATTR_S *pstAttr)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;
    AOE_AIP_ID_E enAIP;
    HI_S32 Ret = HI_FAILURE;

    // todo , check attr
    enAIP = AOEGetFreeAIP();
    if (AOE_AIP_BUTT == enAIP)
    {
        HI_ERR_AO("Get free Aip failed!\n");
        return HI_FAILURE;
    }

    state = AUTIL_AO_MALLOC(HI_ID_AO, sizeof(AOE_AIP_CHN_STATE_S), GFP_KERNEL);
    if (state == HI_NULL)
    {
        HI_FATAL_AO("malloc AOE_AIP_CHN_STATE_S failed\n");
        goto AIP_Create_ERR_EXIT;
    }

    memset(state, 0, sizeof(AOE_AIP_CHN_STATE_S));
    g_AoeRm.hAip[enAIP] = (HI_HANDLE)state;
    
    if (HI_SUCCESS != (Ret = HAL_AOE_AIP_SetAttr(enAIP, pstAttr)))
    {
        HI_ERR_AO("HAL_AOE_AIP_SetAttr failed!\n");
        goto AIP_Create_ERR_EXIT;
    }

    state->u32VolumedB = AOE_AIP_VOL_0dB;
    iHAL_AOE_AIP_SetVolume(enAIP, AOE_AIP_VOL_0dB);
    state->enCurnStatus = AOE_AIP_STATUS_STOP;
    state->aip = enAIP;
    
    *penAIP = enAIP;
    return HI_SUCCESS;

AIP_Create_ERR_EXIT:
    *penAIP = AOE_AIP_BUTT;
    AUTIL_AO_FREE(HI_ID_AO, (HI_VOID*)state);
    g_AoeRm.hAip[enAIP] = HI_NULL;
    return Ret;
}

HI_VOID     HAL_AOE_AIP_Destroy(AOE_AIP_ID_E enAIP)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    if (HI_NULL == g_AoeRm.hAip[enAIP])
    {
        return;
    }

    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    if (AOE_AIP_STATUS_STOP != state->enCurnStatus)
    {
        HAL_AOE_AIP_Stop(enAIP);
    }

    AUTIL_AO_FREE(HI_ID_AO, (HI_VOID*)state);
    g_AoeRm.hAip[enAIP] = HI_NULL;
    return;
}


HI_S32  HAL_AOE_AIP_SetAttr(AOE_AIP_ID_E enAIP, AOE_AIP_CHN_ATTR_S *pstAttr)
{
    HI_S32 Ret;
    AOE_AIP_CHN_STATE_S *state = HI_NULL;
    HI_U32 u32WptrAddr, u32RptrAddr;
    AOE_AIP_INBUF_ATTR_S   *pInAttr;   
    AOE_AIP_OUTFIFO_ATTR_S *pOuAttr;

    CHECK_AIP_OPEN(enAIP);

    // check attr
    if (HI_NULL == pstAttr)
    {
        HI_FATAL_AO("pstAttr is null\n");
        return HI_FAILURE;
    }
    pInAttr  = &pstAttr->stBufInAttr;
    pOuAttr  = &pstAttr->stFifoOutAttr;
    if (!pInAttr->stRbfAttr.u32BufPhyAddr || !pInAttr->stRbfAttr.u32BufVirAddr)
    {
        HI_FATAL_AO("BufPhyAddr(0x%x) BufVirAddr(0x%x) invalid\n",pInAttr->stRbfAttr.u32BufPhyAddr,pInAttr->stRbfAttr.u32BufVirAddr);
        return HI_FAILURE;
    }
    if (!pInAttr->stRbfAttr.u32BufSize)
    {
        HI_FATAL_AO("BufSize(0x%x) invalid\n",pInAttr->stRbfAttr.u32BufSize);
        return HI_FAILURE;
    }

    if (pOuAttr->u32FiFoLatencyThdMs < AOE_AIP_FIFO_LATENCYMS_MIN)
    {
        HI_FATAL_AO("FiFoLatencyThdMs(%d) is less than min(%d)\n",pOuAttr->u32FiFoLatencyThdMs,AOE_AIP_FIFO_LATENCYMS_MIN);
        return HI_FAILURE;
    }

    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];
    if (AOE_AIP_STATUS_STOP != state->enCurnStatus)
    {
        return HI_FAILURE;
    }

    Ret = iHAL_AOE_AIP_SetAttr(enAIP, pstAttr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    if (!pstAttr->stBufInAttr.stRbfAttr.u32BufWptrRptrFlag)
    {
        iHAL_AOE_AIP_GetRptrAndWptrRegAddr(enAIP, &u32WptrAddr, &u32RptrAddr);
        CIRC_BUF_Init(&state->stCB,
                      (HI_U32 *)(u32WptrAddr),
                      (HI_U32 *)(u32RptrAddr),
                      (HI_U32 *)pstAttr->stBufInAttr.stRbfAttr.u32BufVirAddr,
                      pstAttr->stBufInAttr.stRbfAttr.u32BufSize);
    }

    state->u32BufFrameSize  = UTIL_CalcFrameSize(pstAttr->stBufInAttr.u32BufChannels,
                                                 pstAttr->stBufInAttr.u32BufBitPerSample);
    state->u32FiFoFrameSize = UTIL_CalcFrameSize(pstAttr->stFifoOutAttr.u32FifoChannels,
                                                 pstAttr->stFifoOutAttr.u32FifoBitPerSample);

    state->s32AdjSpeed = 0;
    iHAL_AOE_AIP_SetSpeed(enAIP, 0);
#if 0
    // todo, record volume ????
    state->u32VolumedB = AOE_AIP_VOL_0dB;
    iHAL_AOE_AIP_SetVolume(enAIP, AOE_AIP_VOL_0dB);
#endif  
    memset(&state->stProc,0, sizeof(AOE_AIP_PROC_STATUS_S));
    memcpy(&state->stUserAttr, pstAttr, sizeof(AOE_AIP_CHN_ATTR_S));
    return HI_SUCCESS;
}

HI_S32  HAL_AOE_AIP_GetAttr(AOE_AIP_ID_E enAIP, AOE_AIP_CHN_ATTR_S *pstAttr)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    CHECK_AIP_OPEN(enAIP);

    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    memcpy(pstAttr, &state->stUserAttr, sizeof(AOE_AIP_CHN_ATTR_S));
    return HI_SUCCESS;
}

HI_S32  HAL_AOE_AIP_Start(AOE_AIP_ID_E enAIP)
{
    HI_S32 Ret;
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    CHECK_AIP_OPEN(enAIP);
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    if (AOE_AIP_STATUS_START == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }

    Ret = iHAL_AOE_AIP_SetCmd(enAIP, AOE_AIP_CMD_START);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    state->enCurnStatus = AOE_AIP_STATUS_START;
    return HI_SUCCESS;
}

    
    

HI_S32  HAL_AOE_AIP_Stop(AOE_AIP_ID_E enAIP)
{
    HI_S32 Ret;
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    CHECK_AIP_OPEN(enAIP);
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    if (AOE_AIP_STATUS_STOP == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }

    Ret = iHAL_AOE_AIP_SetCmd(enAIP, AOE_AIP_CMD_STOP);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }
    AOEAIPFlushState(state);
    state->enCurnStatus = AOE_AIP_STATUS_STOP;
    return HI_SUCCESS;
}

HI_S32  HAL_AOE_AIP_Pause(AOE_AIP_ID_E enAIP)
{
    HI_S32 Ret;
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    CHECK_AIP_OPEN(enAIP);
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    if (AOE_AIP_STATUS_PAUSE == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }

    Ret = iHAL_AOE_AIP_SetCmd(enAIP, AOE_AIP_CMD_PAUSE);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    state->enCurnStatus = AOE_AIP_STATUS_PAUSE;
    return HI_SUCCESS;
}

HI_S32  HAL_AOE_AIP_Flush(AOE_AIP_ID_E enAIP)
{
    HI_S32 Ret;
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    CHECK_AIP_OPEN(enAIP);
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];
    if (AOE_AIP_STATUS_START != state->enCurnStatus)
    {
        return HI_SUCCESS;
    }

    Ret = iHAL_AOE_AIP_SetCmd(enAIP, AOE_AIP_CMD_FLUSH);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32  HAL_AOE_AIP_SetVolume(AOE_AIP_ID_E enAIP, HI_U32 u32VolumedB)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    CHECK_AIP_OPEN(enAIP);
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    iHAL_AOE_AIP_SetVolume(enAIP, u32VolumedB);
    state->u32VolumedB = u32VolumedB;
    return HI_SUCCESS;
}

HI_S32  HAL_AOE_AIP_SetSpeed(AOE_AIP_ID_E enAIP, HI_S32 s32AdjSpeed)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    CHECK_AIP_OPEN(enAIP);
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    iHAL_AOE_AIP_SetSpeed(enAIP, s32AdjSpeed);
    state->s32AdjSpeed = s32AdjSpeed;
    return HI_SUCCESS;
}

HI_U32  HAL_AOE_AIP_QueryBufData(AOE_AIP_ID_E enAIP)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    if (HI_NULL == g_AoeRm.hAip[enAIP])
    {
        HI_WARN_AO("aip (%d) is not create.\n", enAIP);
        return 0; 
    }
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    if (AOE_AIP_STATUS_STOP == state->enCurnStatus)
    {
        return 0;
    }

    if (state->stUserAttr.stBufInAttr.stRbfAttr.u32BufWptrRptrFlag)
    {
        HI_WARN_AO("dont support AIP_QueryBufData whent u32BufWptrRptrFlag(1)\n");
        return 0;
    }

    return CIRC_BUF_QueryBusy(&state->stCB);
}

HI_U32                  HAL_AOE_AIP_QueryBufFree(AOE_AIP_ID_E enAIP)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    if (HI_NULL == g_AoeRm.hAip[enAIP])
    {
        HI_WARN_AO("aip (%d) is not create.\n", enAIP);
        return 0; 
    }
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

#if 0
    if (AOE_AIP_STATUS_STOP == state->enCurnStatus)
    {
        return 0;
    }
#endif

    if (state->stUserAttr.stBufInAttr.stRbfAttr.u32BufWptrRptrFlag)
    {
        HI_WARN_AO("dont support AIP_QueryBufFree whent u32BufWptrRptrFlag(1)\n");
        return 0;
    }

    return CIRC_BUF_QueryFree(&state->stCB);
}

HI_U32                  HAL_AOE_AIP_WriteBufData(AOE_AIP_ID_E enAIP, HI_U8 * pu32Src, HI_U32 u32SrcBytes)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;
    HI_U32 Bytes;

    if (HI_NULL == g_AoeRm.hAip[enAIP])
    {
        HI_WARN_AO("aip (%d) is not create.\n", enAIP);
        return 0; 
    }
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

#if 0
    if (AOE_AIP_STATUS_STOP == state->enCurnStatus)
    {
        return 0;
    }
#endif

    state->stProc.uTryWriteCnt++;
    if (state->stUserAttr.stBufInAttr.stRbfAttr.u32BufWptrRptrFlag)
    {
        HI_WARN_AO("dont support AIP_QueryBufFree whent u32BufWptrRptrFlag(1)\n");
        return 0;
    }

    Bytes = CIRC_BUF_Write(&state->stCB, pu32Src, u32SrcBytes);
    state->stProc.uTotalByteWrite += Bytes;
    return Bytes;
}

//for ALSA
HI_U32 HAL_AOE_AIP_UpdateWritePos(AOE_AIP_ID_E enAIP, HI_U32 *pu32WptrLen)
{
    HI_U32 ret = 0;
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    if (HI_NULL == g_AoeRm.hAip[enAIP])
    {
        HI_WARN_AO("aip (%d) is not create.\n", enAIP);
        return 0; 
    }
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    if (AOE_AIP_STATUS_STOP == state->enCurnStatus)
    {
        //HI_WARN_AO("\naip (%d) AOE_AIP_STATUS_STOP.\n", enAIP);
        //return 0;
    }
    
    //TRP(*pu32WptrLen);
    //TRP(*(state->stCB.pu32Write));

    ret = CIRC_BUF_ALSA_UpdateWptr(&state->stCB, *pu32WptrLen);
    //TRP(ret);

    return 0;
}


//for ALSA
HI_U32 HAL_AOE_AIP_GetReadPos(AOE_AIP_ID_E enAIP, HI_U32 *pu32ReadPos)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    if (HI_NULL == g_AoeRm.hAip[enAIP])
    {
        HI_WARN_AO("aip (%d) is not create.\n", enAIP);
        return 0; 
    }
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    if (AOE_AIP_STATUS_STOP == state->enCurnStatus)
    {
        //HI_WARN_AO("\naip (%d) AOE_AIP_STATUS_STOP.\n", enAIP);
        //return 0;
    }

    *pu32ReadPos = CIRC_BUF_QueryReadPos(&state->stCB);

    return 0;
}

//for ALSA
HI_U32 HAL_AOE_AIP_FlushBuf(AOE_AIP_ID_E enAIP)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;

    if (HI_NULL == g_AoeRm.hAip[enAIP])
    {
        HI_WARN_AO("aip (%d) is not create.\n", enAIP);
        return 0; 
    }
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    CIRC_BUF_Flush(&state->stCB);

    return 0;
}

HI_VOID                 HAL_AOE_AIP_GetBufDelayMs(AOE_AIP_ID_E enAIP, HI_U32 *pDelayms)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;
    HI_U32 FreeBytes = 0;

    if (HI_NULL == g_AoeRm.hAip[enAIP])
    {
        *pDelayms = 0;
        return;
    }
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

#if 0
    if (AOE_AIP_STATUS_STOP == state->enCurnStatus)
    {
        *pDelayms = 0;
        return;
    }
#endif

    if (state->stUserAttr.stBufInAttr.stRbfAttr.u32BufWptrRptrFlag)
    {
        HI_WARN_AO("dont support AIP_GetBufDelayMs whent u32BufWptrRptrFlag(1)\n");
        *pDelayms = 0;
        return;
    }

    FreeBytes = CIRC_BUF_QueryBusy(&state->stCB);
    *pDelayms = CALC_LATENCY_MS(state->stUserAttr.stBufInAttr.u32BufSampleRate, state->u32BufFrameSize, FreeBytes);
    return;
}

HI_VOID                 HAL_AOE_AIP_GetFiFoDelayMs(AOE_AIP_ID_E enAIP, HI_U32 *pDelayms)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;
    
    if (HI_NULL == g_AoeRm.hAip[enAIP])
    {
        *pDelayms = 0;
        return;
    }
    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];

    if (AOE_AIP_STATUS_STOP == state->enCurnStatus)
    {
        *pDelayms = 0;
        return;
    }


    *pDelayms = iHAL_AOE_AIP_GetFiFoDelayMs(enAIP);
    return;
}

HI_VOID HAL_AOE_AIP_GetStatus(AOE_AIP_ID_E enAIP, AOE_AIP_STATUS_E *peStatus)
{
    AOE_AIP_CHN_STATE_S *state = HI_NULL;
    
    if (HI_NULL == g_AoeRm.hAip[enAIP])
    {
        *peStatus = AOE_AIP_STATUS_STOP;
        return;
    }

    state = (AOE_AIP_CHN_STATE_S*)g_AoeRm.hAip[enAIP];
    *peStatus = state->enCurnStatus;
    return;
}


/*aop func*/
typedef struct
{
    AOE_AOP_CHN_ATTR_S stUserAttr;

    /* internal state */
    AOE_AOP_ID_E enAop;
    AOE_AOP_STATUS_E      enCurnStatus;
} AOE_AOP_CHN_STATE_S;

HI_S32 AOECheckFreeAOP(AOE_AOP_ID_E enAOP)
{
        if (g_AoeRm.hAop[enAOP])
        {
            return HI_FAILURE;
        }
    return HI_SUCCESS;
}
 
#define CHECK_AOP_OPEN(AOP) \
    do {\
        if (HI_NULL == g_AoeRm.hAop[AOP])\
        {\
            HI_ERR_AO("aop (%d) is not create.\n", AOP); \
            return HI_FAILURE; \
        } \
    } while (0)


HI_S32  HAL_AOE_AOP_SetAttr(AOE_AOP_ID_E enAOP, AOE_AOP_CHN_ATTR_S *pstAttr)
{
    HI_S32 Ret;
    AOE_AOP_CHN_STATE_S *state = HI_NULL;
    //HI_U32 u32WptrAddr, u32RptrAddr;
    AOE_AOP_OUTBUF_ATTR_S   *pOuAttr;

    CHECK_AOP_OPEN(enAOP);

    // check attr
    if (HI_NULL == pstAttr)
    {
        HI_FATAL_AO("pstAttr is null\n");
        return HI_FAILURE;
    }
    state = (AOE_AOP_CHN_STATE_S * )g_AoeRm.hAop[enAOP];
    pOuAttr  = &pstAttr->stRbfOutAttr;
    if (!pOuAttr->stRbfAttr.u32BufPhyAddr || !pOuAttr->stRbfAttr.u32BufVirAddr)
    {
        HI_FATAL_AO("BufPhyAddr(0x%x) BufVirAddr(0x%x) invalid\n",pOuAttr->stRbfAttr.u32BufPhyAddr,pOuAttr->stRbfAttr.u32BufVirAddr);
        return HI_FAILURE;
    }
    if (!pOuAttr->stRbfAttr.u32BufSize)
    {
        HI_FATAL_AO("BufSize(0x%x) invalid\n",pOuAttr->stRbfAttr.u32BufSize);
        return HI_FAILURE;
    }

    if (pOuAttr->u32BufLatencyThdMs < AOE_AOP_BUFF_LATENCYMS_MIN)
    {
        HI_FATAL_AO("FiFoLatencyThdMs(%d) is less than min(%d)\n",pOuAttr->u32BufLatencyThdMs, AOE_AOP_BUFF_LATENCYMS_MIN);
        return HI_FAILURE;
    }
    #if 0
    //check port id +++  attach Port to set
    if(enAOP)
        pstAttr->stRbfOutAttr.bRbfHwPriority = HI_TRUE;
    #endif
    
    Ret = iHAL_AOE_AOP_SetAttr(enAOP, pstAttr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }
    memcpy(&state->stUserAttr, pstAttr, sizeof(AOE_AOP_CHN_ATTR_S));


    return HI_SUCCESS;
}

HI_S32 HAL_AOE_AOP_Create(AOE_AOP_ID_E *penAOP, AOE_AOP_CHN_ATTR_S *pstAttr)
{
    AOE_AOP_CHN_STATE_S *state = HI_NULL;
    AOE_AOP_ID_E enAOP;
    HI_S32 Ret = HI_FAILURE;

    // todo , check attr

    enAOP = AOEGetFreeAOP();
    if (AOE_AOP_BUTT == enAOP)
    {
        return HI_FAILURE;
    }

    state = AUTIL_AO_MALLOC(HI_ID_AO, sizeof(AOE_AOP_CHN_STATE_S), GFP_KERNEL);
    if (state == HI_NULL)
    {
        HI_FATAL_AO("malloc AOE_AOP_CHN_ATTR_S failed\n");
        goto AOP_Create_ERR_EXIT;
    }

    memset(state, 0, sizeof(AOE_AOP_CHN_STATE_S));
    g_AoeRm.hAop[enAOP] = (HI_HANDLE)state;
    
    if (HI_SUCCESS != (Ret = HAL_AOE_AOP_SetAttr(enAOP, pstAttr)))
    {
        goto AOP_Create_ERR_EXIT;
    }

    state->enCurnStatus = AOE_AOP_STATUS_STOP;
    state->enAop = enAOP;


    *penAOP = enAOP;
    return HI_SUCCESS;

AOP_Create_ERR_EXIT:
    AUTIL_AO_FREE(HI_ID_AO, (HI_VOID*)state);
    g_AoeRm.hAop[enAOP] = HI_NULL;
    *penAOP = AOE_AOP_BUTT;
    return Ret;

}

HI_VOID HAL_AOE_AOP_Destroy(AOE_AOP_ID_E enAOP)
{
     AOE_AOP_CHN_STATE_S *state = HI_NULL;

    if (HI_NULL == g_AoeRm.hAop[enAOP])
    {
        return;
    }
    state = (AOE_AOP_CHN_STATE_S*)g_AoeRm.hAop[enAOP];

    AUTIL_AO_FREE(HI_ID_AO, (HI_VOID*)state);
    g_AoeRm.hAop[enAOP] = HI_NULL;
    return;
}

HI_S32 HAL_AOE_AOP_GetAttr(AOE_AOP_ID_E enAOP, AOE_AOP_CHN_ATTR_S *pstAttr)
{
    AOE_AOP_CHN_STATE_S *state = HI_NULL;

    CHECK_AOP_OPEN(enAOP);

    state = (AOE_AOP_CHN_STATE_S * )g_AoeRm.hAop[enAOP];
    
    memcpy(pstAttr, &state->stUserAttr, sizeof(AOE_AOP_CHN_ATTR_S));
    return HI_SUCCESS;
}

HI_S32 HAL_AOE_AOP_Start(AOE_AOP_ID_E enAOP)
{
    HI_S32 Ret;
    AOE_AOP_CHN_STATE_S *state = HI_NULL;

    CHECK_AOP_OPEN(enAOP);
    state = (AOE_AOP_CHN_STATE_S*)g_AoeRm.hAop[enAOP];

    if (AOE_AOP_STATUS_START == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }

    Ret = iHAL_AOE_AOP_SetCmd(enAOP, AOE_AOP_CMD_START);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    state->enCurnStatus = AOE_AOP_STATUS_START;
    return HI_SUCCESS;

}

static HI_VOID AOEAOPFlushState(AOE_AOP_CHN_STATE_S *state)
{
    //todo flush detail
}


HI_S32 HAL_AOE_AOP_Stop(AOE_AOP_ID_E enAOP)
{
    HI_S32 Ret;
    AOE_AOP_CHN_STATE_S *state = HI_NULL;

    CHECK_AOP_OPEN(enAOP);
    state = (AOE_AOP_CHN_STATE_S*)g_AoeRm.hAop[enAOP];

    if (AOE_AOP_STATUS_STOP == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }
    
    Ret = iHAL_AOE_AOP_SetCmd(enAOP, AOE_AOP_CMD_STOP);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }
    //TODO add+++
    AOEAOPFlushState(state);

    state->enCurnStatus = AOE_AOP_STATUS_STOP;
    return HI_SUCCESS;
}

HI_S32 HAL_AOE_AOP_GetStatus(AOE_AOP_ID_E enAOP, HI_VOID *pstStatus)
{
    //todo 
    return HI_SUCCESS;
}

/* ENGINE function */

typedef struct
{
    AOE_ENGINE_CHN_ATTR_S stUserAttr;

    /* internal state */
    AOE_ENGINE_ID_E enMix;
    AOE_ENGINE_STATUS_E      enCurnStatus;
} AOE_ENGINE_CHN_STATE_S;

AOE_ENGINE_ID_E  AOEGetFreeEngine(HI_VOID)
{
    AOE_ENGINE_ID_E enFreeEngine;

    for (enFreeEngine = AOE_ENGINE0; enFreeEngine < AOE_ENGINE_BUTT; enFreeEngine++)
    {
        if (!g_AoeRm.hMix[enFreeEngine])
        {
            return enFreeEngine;
        }
    }
    return AOE_ENGINE_BUTT;
}

#define CHECK_ENGINE_OPEN(ENGINE) \
    do {\
        if (HI_NULL == g_AoeRm.hMix[ENGINE])\
        {\
            HI_ERR_AO("engine (%d) is not create.\n", ENGINE); \
            return HI_FAILURE; \
        } \
    } while (0)

HI_S32 HAL_AOE_ENGINE_Create(AOE_ENGINE_ID_E *penENGINE, AOE_ENGINE_CHN_ATTR_S *pstAttr)
{
    AOE_ENGINE_CHN_STATE_S *state = HI_NULL;
    AOE_ENGINE_ID_E enEngine;
    HI_S32 Ret = HI_FAILURE;

    // todo , check attr

    enEngine = AOEGetFreeEngine();
    if (AOE_ENGINE_BUTT == enEngine)
    {
        HI_ERR_AO("Get free engine failed!\n");
        return HI_FAILURE;
    }

    state = AUTIL_AO_MALLOC(HI_ID_AO, sizeof(AOE_ENGINE_CHN_STATE_S), GFP_KERNEL);
    if (state == HI_NULL)
    {
        HI_FATAL_AO("malloc AOE_ENGINE_CHN_STATE_S failed\n");
        goto Engine_Create_ERR_EXIT;
    }

    memset(state, 0, sizeof(AOE_ENGINE_CHN_STATE_S));
    g_AoeRm.hMix[enEngine] = (HI_HANDLE)state;
    if (HI_SUCCESS != (Ret = HAL_AOE_ENGINE_SetAttr(enEngine, pstAttr)))
    {
        goto Engine_Create_ERR_EXIT;
    }

    state->enCurnStatus = AOE_ENGINE_STATUS_STOP;
    //TODO +++   
    state->enMix = enEngine;
    
    *penENGINE = enEngine;
    return HI_SUCCESS;

Engine_Create_ERR_EXIT:
    *penENGINE = AOE_ENGINE_BUTT;
    AUTIL_AO_FREE(HI_ID_AO, (HI_VOID*)state);
    g_AoeRm.hMix[enEngine] = HI_NULL;
    return Ret;

}

HI_VOID HAL_AOE_ENGINE_Destroy(AOE_ENGINE_ID_E enENGINE)
{
     AOE_ENGINE_CHN_STATE_S *state = HI_NULL;

    if (HI_NULL == g_AoeRm.hMix[enENGINE])
    {
        return;
    }
    state = (AOE_ENGINE_CHN_STATE_S*)g_AoeRm.hMix[enENGINE];

    AUTIL_AO_FREE(HI_ID_AO, (HI_VOID*)state);
    g_AoeRm.hMix[enENGINE] = HI_NULL;
    return;

}

HI_S32 HAL_AOE_ENGINE_SetAttr(AOE_ENGINE_ID_E enENGINE, AOE_ENGINE_CHN_ATTR_S *pstAttr)
{
    AOE_ENGINE_CHN_STATE_S *state = HI_NULL;
    HI_S32 Ret = HI_FAILURE;

    CHECK_ENGINE_OPEN(enENGINE);
    // check attr
    if (HI_NULL == pstAttr)
    {
        HI_FATAL_AO("pstAttr is null\n");
        return HI_FAILURE;
    }
    //TODO +++ check samplerate/channel/depth

    state = (AOE_ENGINE_CHN_STATE_S * )g_AoeRm.hMix[enENGINE];
    Ret = iHAL_AOE_ENGINE_SetAttr(enENGINE, *pstAttr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }
    memcpy(&state->stUserAttr, pstAttr, sizeof(AOE_ENGINE_CHN_ATTR_S));
    return HI_SUCCESS;
}

HI_S32 HAL_AOE_ENGINE_GetAttr(AOE_ENGINE_ID_E enENGINE, AOE_ENGINE_CHN_ATTR_S *pstAttr)
{
    AOE_ENGINE_CHN_STATE_S *state = HI_NULL;

    CHECK_ENGINE_OPEN(enENGINE);

    state = (AOE_ENGINE_CHN_STATE_S * )g_AoeRm.hMix[enENGINE];
    
    memcpy(pstAttr, &state->stUserAttr, sizeof(AOE_ENGINE_CHN_ATTR_S));
    return HI_SUCCESS;
}

HI_S32 HAL_AOE_ENGINE_Start(AOE_ENGINE_ID_E enENGINE)
{
    HI_S32 Ret;
    AOE_ENGINE_CHN_STATE_S *state = HI_NULL;

    CHECK_ENGINE_OPEN(enENGINE);
    state = (AOE_ENGINE_CHN_STATE_S * )g_AoeRm.hMix[enENGINE];

    if (AOE_ENGINE_STATUS_START == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }

    Ret = iHAL_AOE_ENGINE_SetCmd(enENGINE, AOE_ENGINE_CMD_START);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    state->enCurnStatus = AOE_ENGINE_STATUS_START;

    return HI_SUCCESS;
}

HI_S32 HAL_AOE_ENGINE_Stop(AOE_ENGINE_ID_E enENGINE)
{
    HI_S32 Ret;
    AOE_ENGINE_CHN_STATE_S *state = HI_NULL;

    CHECK_ENGINE_OPEN(enENGINE);
    state = (AOE_ENGINE_CHN_STATE_S * )g_AoeRm.hMix[enENGINE];

    if (AOE_ENGINE_STATUS_STOP == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }
    
    Ret = iHAL_AOE_ENGINE_SetCmd(enENGINE, AOE_ENGINE_CMD_STOP);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    state->enCurnStatus = AOE_ENGINE_STATUS_STOP;
    return HI_SUCCESS;
}

HI_S32 HAL_AOE_ENGINE_AttachAip(AOE_ENGINE_ID_E enENGINE, AOE_AIP_ID_E enAIP)
{
    CHECK_ENGINE_OPEN(enENGINE);
    CHECK_AIP_OPEN(enAIP);

    return iHAL_AOE_ENGINE_AttachAip(enENGINE, enAIP);
}

HI_S32 HAL_AOE_ENGINE_DetachAip(AOE_ENGINE_ID_E enENGINE, AOE_AIP_ID_E enAIP)
{
    CHECK_ENGINE_OPEN(enENGINE);
    CHECK_AIP_OPEN(enAIP);

    return iHAL_AOE_ENGINE_DetachAip(enENGINE, enAIP);
}
HI_S32 HAL_AOE_ENGINE_AttachAop(AOE_ENGINE_ID_E enENGINE, AOE_AOP_ID_E enAOP)
{
    CHECK_ENGINE_OPEN(enENGINE);
    CHECK_AOP_OPEN(enAOP);

    return iHAL_AOE_ENGINE_AttachAop(enENGINE, enAOP);
}

HI_S32 HAL_AOE_ENGINE_DetachAop(AOE_ENGINE_ID_E enENGINE, AOE_AOP_ID_E enAOP)
{
    CHECK_ENGINE_OPEN(enENGINE);
    CHECK_AOP_OPEN(enAOP);

    return iHAL_AOE_ENGINE_DetachAop(enENGINE, enAOP);
}

HI_S32 HAL_AOE_ENGINE_GetStatus(AOE_ENGINE_ID_E enENGINE, HI_VOID *pstStatus)
{
    //TODO
    return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */
