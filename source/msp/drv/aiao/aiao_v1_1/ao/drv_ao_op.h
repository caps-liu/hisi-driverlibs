/******************************************************************************

Copyright (C), 2009-2019, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : hal_aiao_func.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2012/09/22
Last Modified :
Description   : aiao
Function List :
History       :
* main\1    2012-09-22   z40717     init.
******************************************************************************/
#ifndef __HI_AO_OP_FUNC_H__
#define __HI_AO_OP_FUNC_H__

#include "hi_unf_sound.h"
#include "hi_drv_ao.h"
#include "hal_aoe_func.h"
#include "hal_aiao_func.h"
#include "hal_aiao_common.h"
#include "hal_aoe.h"
#include "hal_cast.h"
#include "hal_aiao.h"
#include "hal_tianlai_adac.h"
#include "drv_ao_private.h"

#ifdef HI_SND_CAST_SUPPORT
#include "drv_ao_ioctl.h"
#endif
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/
#define AO_SNDOP_PERIODBUFSIZE  4096
#define AO_SNDOP_LATENCY_THDMS  64

#define AO_SNDOP_GLOBAL_MUTE_BIT 1
#define AO_SNDOP_LOCAL_MUTE_BIT  0

#define AO_SNDOP_MAX_AOP_NUM 2  //max aop number per op 

/******************************Snd OP process FUNC*************************************/

//zgjiere; 检查部分直接绕过OP操作Hal(aop/aiao)的函数 ? 模块解耦

//zgjiere; sndop分层，该文件代码行太大，不利于维护

typedef struct
{
    HI_U32 u32BitPerSample;
    HI_U32 u32Channels;
    HI_U32 u32SampleRate;
    HI_U32 u32DataFormat;
    HI_U32 u32LatencyThdMs;
    HI_U32 u32PeriodBufSize;
    HI_U32 u32PeriodNumber;
    union
    {
        HI_UNF_SND_DAC_ATTR_S stDacAttr;
        HI_UNF_SND_I2S_ATTR_S stI2sAttr;
        HI_UNF_SND_SPDIF_ATTR_S stSpdifAttr;
        HI_UNF_SND_HDMI_ATTR_S stHDMIAttr;
        HI_UNF_SND_ARC_ATTR_S stArcAttr;
#if defined(SND_CAST_SUPPORT) 
        HI_UNF_SND_CAPTURE_ATTR_S stCaptureAttr;
#endif
    } unAttr;
} SND_OP_ATTR_S;

typedef enum
{
    SND_AOP_TYPE_I2S   = 0,     /* hbr or 2.0 pcm or 7.1 lpcm */
    SND_AOP_TYPE_SPDIF,         /* lbr or hbr(ddp) */
    SND_AOP_TYPE_CAST,          /* 2.0 16bit pcm only */

    SND_AOP_TYPE_BUTT
} SND_AOP_TYPE_E;

typedef enum
{
    SND_OUTPUT_TYPE_DAC,

    SND_OUTPUT_TYPE_I2S,

    SND_OUTPUT_TYPE_SPDIF,

    SND_OUTPUT_TYPE_HDMI,

    SND_OUTPUT_TYPE_CAST,

    SND_OUTPUT_TYPE_BUTT,
} SND_OUTPUT_TYPE_E;
typedef struct
{
    SND_OP_ATTR_S stSndPortAttr;

    HI_UNF_SND_GAIN_ATTR_S stUserGain;
    HI_UNF_TRACK_MODE_E    enUserTrackMode;
    HI_U32                 u32UserMute;   //bit[1]:global mute; bit[0]:local mute. if u32UserMute=0, real mute;else real unmute
    HI_UNF_SAMPLE_RATE_E   enSampleRate;

    /* internal state */
    SND_OP_STATUS_E         enCurnStatus;
    SND_OUTPUT_TYPE_E enOutType;
    HI_UNF_SND_OUTPUTPORT_E enOutPort;
    HI_S32                  ActiveId; /* 0 or 1*/
    HI_U32                  u32OpMask; /* bit0(0/1) and bit1(0/1)*/
    AIAO_PORT_ID_E          enPortID[AO_SNDOP_MAX_AOP_NUM];
    AOE_AOP_ID_E            enAOP[AO_SNDOP_MAX_AOP_NUM];
    SND_ENGINE_TYPE_E       enEngineType[AO_SNDOP_MAX_AOP_NUM];
    MMZ_BUFFER_S            stRbfMmz[AO_SNDOP_MAX_AOP_NUM];
    AIAO_PORT_USER_CFG_S    stPortUserAttr[AO_SNDOP_MAX_AOP_NUM];
    AIAO_CAST_ID_E          CastId;
    AIAO_CAST_ATTR_S        stCastAttr;
} SND_OP_STATE_S;

HI_VOID 				SND_GetDelayMs(SND_CARD_STATE_S *pCard, HI_U32 *pdelayms);
HI_VOID					SND_DestroyOp(SND_CARD_STATE_S *pCard);
HI_S32                  SND_CreateOp(SND_CARD_STATE_S *pCard, HI_UNF_SND_ATTR_S *pstAttr,AO_ALSA_I2S_Param_S* pstAoI2sParam);
HI_S32					SND_SetOpMute(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bMute);
HI_S32					SND_GetOpMute(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL *pbMute);
HI_S32                  SND_SetOpHdmiMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_HDMI_MODE_E enMode);
HI_S32                  SND_GetOpHdmiMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_HDMI_MODE_E *penMode);
HI_S32                  SND_SetOpSpdifMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_SPDIF_MODE_E enMode);
HI_S32                  SND_GetOpSpdifMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_SPDIF_MODE_E *penMode);
HI_S32					SND_SetOpVolume(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                        HI_UNF_SND_GAIN_ATTR_S stGain);
HI_S32					SND_GetOpVolume(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                        HI_UNF_SND_GAIN_ATTR_S *pstGain);
HI_S32					SND_SetOpSampleRate(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                            HI_UNF_SAMPLE_RATE_E enSampleRate);
HI_S32					SND_GetOpSampleRate(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                            HI_UNF_SAMPLE_RATE_E *penSampleRate);
HI_S32					SND_SetOpTrackMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                           HI_UNF_TRACK_MODE_E enMode);
HI_S32					SND_GetOpTrackMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                           HI_UNF_TRACK_MODE_E *penMode);
HI_S32					SND_SetOpAttr(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                      SND_OP_ATTR_S *pstSndPortAttr);
HI_S32					SND_GetOpAttr(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                      SND_OP_ATTR_S *pstSndPortAttr);
HI_S32                  SND_GetOpStatus(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, AIAO_PORT_STAUTS_S *pstPortStatus);

HI_S32					SND_StopOp(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort);
HI_S32					SND_StartOp(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort);


HI_HANDLE				SND_GetOpHandlebyOutType(SND_CARD_STATE_S *pCard, SND_OUTPUT_TYPE_E enOutType);
SND_ENGINE_TYPE_E		SND_OpGetEngineType(HI_HANDLE hSndOp);
AOE_AOP_ID_E			SND_OpGetAopId(HI_HANDLE hSndOp);
SND_ENGINE_TYPE_E		SND_GetOpGetOutType(HI_HANDLE hSndOp);
HI_UNF_SND_OUTPUTPORT_E SND_GetOpOutputport(HI_HANDLE hSndOp);

#if defined (HI_SND_DRV_SUSPEND_SUPPORT)
HI_S32 SND_GetSetting(SND_CARD_STATE_S *pCard, SND_CARD_SETTINGS_S* pstSndSettings);
HI_S32 SND_RestoreSetting(SND_CARD_STATE_S *pCard, SND_CARD_SETTINGS_S* pstSndSettings);
#endif


#ifdef HI_SND_CAST_SUPPORT
HI_S32 SND_StopCastOp(SND_CARD_STATE_S *pCard, HI_S32 s32CastID);
HI_S32 SND_StartCastOp(SND_CARD_STATE_S *pCard, HI_S32 s32CastID);
HI_S32 SND_CreateCastOp(SND_CARD_STATE_S *pCard,  HI_S32 *ps32CastId, HI_UNF_SND_CAST_ATTR_S *pstAttr, MMZ_BUFFER_S *pstMMz);

HI_S32 SND_DestoryCastOp(SND_CARD_STATE_S *pCard,  HI_U32 CastId);
HI_U32 SND_ReadCastData(SND_CARD_STATE_S *pCard, HI_S32 u32CastId, AO_Cast_Data_Param_S *pstCastData);
HI_U32 SND_ReleaseCastData(SND_CARD_STATE_S *pCard, HI_S32 u32CastId, AO_Cast_Data_Param_S *pstCastData);
#endif
HI_S32 SND_ReadOpProc(struct seq_file* p, SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enPort);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  // __HI_AO_OP_FUNC_H__
