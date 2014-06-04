/******************************************************************************

Copyright (C), 2009-2019, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : hal_aoe.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2013/03/09
Last Modified :
Description   : hal_aoe
Function List :
History       :
* main\1    2012-03-09  zgjie     init.
******************************************************************************/
#ifndef __HI_HAL_AOE_H__
#define __HI_HAL_AOE_H__

#include "hi_type.h"
#include "hi_audsp_common.h"
#include "hal_aoe_common.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/
#define AOE_AIP_BUFF_LATENCYMS_MIN 10
#define AOE_AIP_FIFO_LATENCYMS_MIN 10
#define AOE_AOP_BUFF_LATENCYMS_MIN 10

#define AOE_AOP_BUFF_LATENCYMS_DF  (AOE_AOP_BUFF_LATENCYMS_MIN*4)
#define AOE_AOP_BUFF_LATENCYMS_MAX (AOE_AOP_BUFF_LATENCYMS_MIN*10)
#define AOE_CAST_BUFF_LATENCYMS_MAX (512)

#define AO_DAC_MMZSIZE_MAX    ((48000*2*sizeof(HI_U32)/1000)*AOE_AOP_BUFF_LATENCYMS_MAX)
#define AO_I2S_MMZSIZE_MAX    ((48000*2*sizeof(HI_U32)/1000)*AOE_AOP_BUFF_LATENCYMS_MAX)
#define AO_SPDIF_MMZSIZE_MAX  ((192000*2*sizeof(HI_U16)/1000)*AOE_AOP_BUFF_LATENCYMS_MAX)
#define AO_HDMI_MMZSIZE_MAX   ((192000*8*sizeof(HI_U16)/1000)*AOE_AOP_BUFF_LATENCYMS_MAX)
#define AO_CAST_MMZSIZE_MAX   ((48000*2*sizeof(HI_U16)/1000)*AOE_CAST_BUFF_LATENCYMS_MAX)

static inline HI_U32 CALC_LATENCY_MS(HI_U32 Rate, HI_U32 FrameSize, HI_U32 Byte)
{                                                          
    if(Rate&&FrameSize)                                      
    {                                                         
        return (1000 * Byte) / (Rate * FrameSize);                                     
    }                                                           
    else                                                       
    {                                                         
        return 0;                                                
    }                                                           
}

/* global function */
HI_S32                  HAL_AOE_Init(HI_BOOL bSwAoeFlag);
HI_VOID					HAL_AOE_DeInit(HI_VOID);

/* AIP function */
HI_S32					HAL_AOE_AIP_Create(AOE_AIP_ID_E *penAIP, AOE_AIP_CHN_ATTR_S *pstAttr);
HI_VOID					HAL_AOE_AIP_Destroy(AOE_AIP_ID_E enAIP);
HI_S32					HAL_AOE_AIP_SetAttr(AOE_AIP_ID_E enAIP, AOE_AIP_CHN_ATTR_S *pstAttr);
HI_S32					HAL_AOE_AIP_GetAttr(AOE_AIP_ID_E enAIP, AOE_AIP_CHN_ATTR_S *pstAttr);
HI_S32					HAL_AOE_AIP_Start(AOE_AIP_ID_E enAIP);
HI_S32					HAL_AOE_AIP_Stop(AOE_AIP_ID_E enAIP);
HI_S32					HAL_AOE_AIP_Pause(AOE_AIP_ID_E enAIP);
HI_S32					HAL_AOE_AIP_Flush(AOE_AIP_ID_E enAIP);
HI_S32					HAL_AOE_AIP_SetVolume(AOE_AIP_ID_E enAIP, HI_U32 u32VolumedB);
HI_S32                  HAL_AOE_AIP_SetSpeed(AOE_AIP_ID_E enAIP, HI_S32 s32AdjSpeed);
HI_U32					HAL_AOE_AIP_WriteBufData(AOE_AIP_ID_E enAIP, HI_U8 * pu32Src, HI_U32 u32SrcBytes);
HI_U32					HAL_AOE_AIP_QueryBufData(AOE_AIP_ID_E enAIP);
HI_U32					HAL_AOE_AIP_QueryBufFree(AOE_AIP_ID_E enAIP);
HI_VOID					HAL_AOE_AIP_GetBufDelayMs(AOE_AIP_ID_E enAIP, HI_U32 *pDelayms);  // for aip buf delay
HI_VOID					HAL_AOE_AIP_GetFiFoDelayMs(AOE_AIP_ID_E enAIP, HI_U32 *pDelayms); // for aip fifo delay
HI_VOID					HAL_AOE_AIP_GetStatus(AOE_AIP_ID_E enAIP, AOE_AIP_STATUS_E *peStatus);



/* AOP function */
HI_S32					HAL_AOE_AOP_Create(AOE_AOP_ID_E *penAOP, AOE_AOP_CHN_ATTR_S *pstAttr);
HI_VOID					HAL_AOE_AOP_Destroy(AOE_AOP_ID_E enAOP);
HI_S32					HAL_AOE_AOP_SetAttr(AOE_AOP_ID_E enAOP, AOE_AOP_CHN_ATTR_S *pstAttr);
HI_S32					HAL_AOE_AOP_GetAttr(AOE_AOP_ID_E enAOP, AOE_AOP_CHN_ATTR_S *pstAttr);
HI_S32					HAL_AOE_AOP_Start(AOE_AOP_ID_E enAOP);
HI_S32					HAL_AOE_AOP_Stop(AOE_AOP_ID_E enAOP);
HI_S32					HAL_AOE_AOP_GetStatus(AOE_AOP_ID_E enAOP, HI_VOID *pstStatus);

/* ENGINE function */
HI_S32					HAL_AOE_ENGINE_Create(AOE_ENGINE_ID_E *penENGINE, AOE_ENGINE_CHN_ATTR_S *pstAttr);
HI_VOID					HAL_AOE_ENGINE_Destroy(AOE_ENGINE_ID_E enENGINE);
HI_S32					HAL_AOE_ENGINE_SetAttr(AOE_ENGINE_ID_E enENGINE, AOE_ENGINE_CHN_ATTR_S *pstAttr);
HI_S32					HAL_AOE_ENGINE_GetAttr(AOE_ENGINE_ID_E enENGINE, AOE_ENGINE_CHN_ATTR_S *pstAttr);
HI_S32					HAL_AOE_ENGINE_Start(AOE_ENGINE_ID_E enENGINE);
HI_S32					HAL_AOE_ENGINE_Stop(AOE_ENGINE_ID_E enENGINE);
HI_S32					HAL_AOE_ENGINE_GetAttr(AOE_ENGINE_ID_E enENGINE, AOE_ENGINE_CHN_ATTR_S *pstAttr);
HI_S32					HAL_AOE_ENGINE_AttachAip(AOE_ENGINE_ID_E enENGINE, AOE_AIP_ID_E enAIP);
HI_S32					HAL_AOE_ENGINE_DetachAip(AOE_ENGINE_ID_E enENGINE, AOE_AIP_ID_E enAIP);
HI_S32					HAL_AOE_ENGINE_AttachAop(AOE_ENGINE_ID_E enENGINE, AOE_AOP_ID_E enAOP);
HI_S32					HAL_AOE_ENGINE_DetachAop(AOE_ENGINE_ID_E enENGINE, AOE_AOP_ID_E enAOP);
HI_S32					HAL_AOE_ENGINE_GetStatus(AOE_ENGINE_ID_E enENGINE, HI_VOID *pstStatus);


//for ALSA
HI_VOID HAL_AOE_AIP_SetPeriodSize(AOE_AIP_ID_E enAIP, HI_U32 u32PeriodSize);     //NO USED
//HI_VOID HAL_AOE_AIP_EnableAlsa(AOE_AIP_ID_E enAIP, HI_BOOL bEnableAlsa);     //NO USED
HI_U32 HAL_AOE_AIP_UpdateWritePos(AOE_AIP_ID_E enAIP, HI_U32 *pu32WptrLen);
HI_U32 HAL_AOE_AIP_FlushBuf(AOE_AIP_ID_E enAIP);
HI_U32 HAL_AOE_AIP_GetReadPos(AOE_AIP_ID_E enAIP, HI_U32 *pu32ReadPos);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  // __HI_HAL_AOE_H__
