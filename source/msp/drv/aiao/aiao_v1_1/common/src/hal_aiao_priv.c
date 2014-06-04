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
#include "hi_drv_struct.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"
#include "hi_drv_module.h"
#include "hi_drv_mmz.h"
#include "hi_reg_common.h"

#include "hal_aiao_priv.h"

//for alsa TO DO
#include "hi_audsp_aoe.h"
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */
/* private state */

static volatile S_AIAO_COM_REGS_TYPE *      g_pAIAOComReg = NULL;
static volatile S_AIAO_RX_REGS_TYPE *       g_pAIAORxReg[AIAO_MAX_RX_PORT_NUMBER];
static volatile S_AIAO_TX_REGS_TYPE *       g_pAIAOTxReg[AIAO_MAX_TX_PORT_NUMBER];
static volatile S_AIAO_TXSPDIF_REGS_TYPE *  g_pAIAOTxSpdifReg[AIAO_MAX_TXSPDIF_PORT_NUMBER];
static volatile S_AIAO_SPDIFER_REGS_TYPE *  g_pAIAOSpdiferReg[AIAO_MAX_TXSPDIF_PORT_NUMBER];

/* global */
static HI_VOID			AIAO_LOW_SetCrgClkEn(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn);
static HI_VOID			AIAO_LOW_SetSPDIFMasterClkEn(HI_U32 u32ChnId, HI_S32 bEn);
static HI_VOID			AIAO_LOW_SetI2SSlaveClk(HI_U32 u32ChnId, HI_S32 Dir, AIAO_IfAttr_S *pstIfAttrSlave);
static HI_VOID			AIAO_LOW_SetI2SMasterClk(HI_U32 u32ChnId, HI_S32 Dir, AIAO_IfAttr_S *pstIfAttrMaster);
static HI_VOID			AIAO_LOW_SetSPDIFMasterClk(HI_U32 u32ChnId, AIAO_IfAttr_S *pstIfAttrMaster);
static HI_VOID			AIAO_LOW_SetI2SDulicateClk(HI_U32 u32ChnId, HI_S32 Dir, AIAO_IfAttr_S *pstIfAttrDuplicate);

/* tx/rx i2s interface */
static HI_VOID			AIAO_LOW_SetI2SSourceSelect(HI_U32 u32ChnId, HI_S32 Dir, AIAO_I2S_SOURCE_E eI2SSel);
static HI_VOID			AIAO_LOW_SetI2SDataSelect(HI_U32 u32ChnId, HI_S32 Dir, AIAO_I2S_SD_E eOrgSd,
                                                  AIAO_I2S_SD_E eSrcSd);
static HI_VOID			AIAO_LOW_SetI2SBitDepth(HI_U32 u32ChnId, HI_S32 Dir, AIAO_BITDEPTH_E eBitDepth);
static HI_VOID			AIAO_LOW_SetI2SMode(HI_U32 u32ChnId, HI_S32 Dir, AIAO_I2S_MODE_E eMode);
static HI_VOID			AIAO_LOW_SetTrackMode(HI_U32 u32ChnId, HI_S32 Dir, AIAO_TRACK_MODE_E eTrackMode);
static HI_VOID			AIAO_LOW_SetMultislotMode(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn);
static HI_VOID			AIAO_LOW_SetI2SChNum(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 isMultislot, AIAO_I2S_CHNUM_E eChaNum);
static HI_VOID			AIAO_LOW_SetPcmSyncDelay(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 nDelayCycles);
static HI_VOID			AIAO_LOW_SPDIFSetBitDepth(HI_U32 u32ChnId, AIAO_BITDEPTH_E eBitDepth);
static HI_VOID			AIAO_LOW_SPDIFSetTrackMode(HI_U32 u32ChnId, AIAO_TRACK_MODE_E eTrackMode);
static HI_VOID			AIAO_LOW_SPDIFSetChNum(HI_U32 u32ChnId, AIAO_I2S_CHNUM_E eChaNum);

/* tx/rx I2S DSP */
static HI_VOID			AIAO_LOW_SetStart(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn);
static HI_VOID			AIAO_LOW_SetMute(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn);
static HI_VOID			AIAO_LOW_SetMuteFade(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn);
static HI_VOID			AIAO_LOW_SetFadeInRate(HI_U32 u32ChnId, HI_S32 Dir, AIAO_FADE_RATE_E eFadeRate);
static HI_VOID			AIAO_LOW_SetFadeOutRate(HI_U32 u32ChnId, HI_S32 Dir, AIAO_FADE_RATE_E eFadeRate);
static HI_VOID			AIAO_LOW_SetVolumedB(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 VoldB);
static HI_VOID			AIAO_LOW_SetBypass(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn);
static HI_S32			AIAO_LOW_GetStopDoneStatus(HI_U32 u32ChnId, HI_S32 Dir);

/* tx SPDIF DSP */
static HI_VOID			AIAO_LOW_SPDIFSetStart(HI_U32 u32ChnId, HI_S32 bEn);
static HI_VOID			AIAO_LOW_SPDIFSetMute(HI_U32 u32ChnId, HI_S32 bEn);
static HI_VOID			AIAO_LOW_SPDIFSetMuteFade(HI_U32 u32ChnId, HI_S32 bEn);
static HI_VOID			AIAO_LOW_SPDIFSetFadeInRate(HI_U32 u32ChnId, AIAO_FADE_RATE_E eFadeRate);
static HI_VOID			AIAO_LOW_SPDIFSetFadeOutRate(HI_U32 u32ChnId, AIAO_FADE_RATE_E eFadeRate);
static HI_VOID			AIAO_LOW_SPDIFSetVolumedB(HI_U32 u32ChnId, HI_S32 VoldB);
static HI_VOID			AIAO_LOW_SPDIFSetBypass(HI_U32 u32ChnId, HI_S32 bEn);
static HI_S32			AIAO_LOW_SPDIFGetStopDoneStatus(HI_U32 u32ChnId);

/* tx i2s/spdif Buffer */
static HI_VOID			AIAO_TXBUF_SetBufAddrAndSize(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 u32StartAddr,
                                                     HI_U32 u32Size);
static HI_VOID			AIAO_TXBUF_SetBufWptr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 u32Wptr);
static HI_VOID			AIAO_TXBUF_SetBufRptr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 u32Rptr);
static HI_VOID			AIAO_TXBUF_GetBufWptr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32Wptr);
static HI_VOID			AIAO_TXBUF_GetBufRptr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32Rptr);
static HI_VOID			AIAO_TXBUF_SetBufTransSize(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 u32PeriodSize);
static HI_VOID			AIAO_TXBUF_SetBufAlemptySize(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 u32AlemptySize);
static HI_VOID			AIAO_TXBUF_GetDebugBCLKCnt(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32BCLKCnt);
static HI_VOID			AIAO_TXBUF_GetDebugFCLKCnt(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32FCLKCnt);
static HI_VOID			AIAO_TXBUF_GetBufWptrAddr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32WptrAddr);
static HI_VOID			AIAO_TXBUF_GetBufRptrAddr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32RptrAddr);

/* rx Buffer */
static HI_VOID			AIAO_RXBUF_SetBufAddrAndSize(HI_U32 u32ChnId, HI_U32 u32StartAddr, HI_U32 u32Size);
static HI_VOID			AIAO_RXBUF_SetBufWptr(HI_U32 u32ChnId, HI_U32 u32Wptr);
static HI_VOID			AIAO_RXBUF_SetBufRptr(HI_U32 u32ChnId, HI_U32 u32Rptr);
static HI_VOID			AIAO_RXBUF_GetBufWptr(HI_U32 u32ChnId, HI_U32 *pu32Wptr);
static HI_VOID			AIAO_RXBUF_GetBufRptr(HI_U32 u32ChnId, HI_U32 *pu32Rptr);
static HI_VOID			AIAO_RXBUF_SetBufTransSize(HI_U32 u32ChnId, HI_U32 u32PeriodSize);
static HI_VOID			AIAO_RXBUF_SetBufAlfullSize(HI_U32 u32ChnId, HI_U32 u32AlfullSize);
static HI_VOID			AIAO_RXBUF_GetDebugBCLKCnt(HI_U32 u32ChnId, HI_U32 *pu32BCLKCnt);
static HI_VOID			AIAO_RXBUF_GetDebugFCLKCnt(HI_U32 u32ChnId, HI_U32 *pu32FCLKCnt);
static HI_VOID			AIAO_RXBUF_GetBufWptrAddr(HI_U32 u32ChnId, HI_U32 *pu32WptrAddr);
static HI_VOID			AIAO_RXBUF_GetBufRptrAddr(HI_U32 u32ChnId, HI_U32 *pu32RptrAddr);

/* tx/rx i2s/spdif interface */
HI_VOID					AIAO_HW_SetI2SSourceSelect(AIAO_PORT_ID_E enPortID, AIAO_I2S_SOURCE_E eI2SSel);
HI_VOID					AIAO_HW_SetI2SDataSelect(AIAO_PORT_ID_E enPortID, AIAO_I2S_SD_E eOrgSd, AIAO_I2S_SD_E eSrcSd);
HI_VOID					AIAO_HW_SetI2SBitDepth(AIAO_PORT_ID_E enPortID, AIAO_BITDEPTH_E eBitDepth);
HI_VOID					AIAO_HW_SetI2SMode(AIAO_PORT_ID_E enPortID, AIAO_I2S_MODE_E eMode);
HI_VOID					AIAO_HW_SetTrackMode(AIAO_PORT_ID_E enPortID, AIAO_TRACK_MODE_E eTrackMode);
HI_VOID					AIAO_HW_SetMultislotMode(AIAO_PORT_ID_E enPortID, HI_S32 bEn);
HI_VOID					AIAO_HW_SetI2SChNum(AIAO_PORT_ID_E enPortID, HI_S32 isMultislot, AIAO_I2S_CHNUM_E eChaNum);
HI_VOID					AIAO_HW_SetPcmSyncDelay(AIAO_PORT_ID_E enPortID, HI_S32 nDelayCycles);

/*****************************************************************************
 Description  : SPDIF IP HAL API
*****************************************************************************/
HI_VOID					AIAO_SPDIF_HAL_SetMode(AIAO_PORT_ID_E enPortID, AIAO_SPDIF_MODE_E eMode);
HI_VOID					AIAO_SPDIF_HAL_SetEnable(AIAO_PORT_ID_E enPortID, HI_S32 bEn);
HI_VOID					AIAO_SPDIF_HAL_SetUnknow(AIAO_PORT_ID_E enPortID);
HI_VOID					AIAO_SPDIF_HAL_SetBitWidth(AIAO_PORT_ID_E enPortID, AIAO_BITDEPTH_E enBitwidth);
HI_VOID					AIAO_SPDIF_HAL_SetSamplerate(AIAO_PORT_ID_E enPortID, AIAO_SAMPLE_RATE_E enSampleRate);

static const HI_U16 g_u16BclkDivTab[16] =
{
    1, 3, 2, 4, 6, 8, 12, 16, 24, 32, 48, 64, 8, 8, 8, 8
};

static const HI_U16 g_u16FsDivTab[6] =
{
    16, 32, 48, 64, 128, 256,
};

/* aiao_replace */
#define AIAO_0128FS_TAB_IDX 0
#define AIAO_0256FS_TAB_IDX 1
#define AIAO_0384FS_TAB_IDX 2
#define AIAO_0512FS_TAB_IDX 3
#define AIAO_1024FS_TAB_IDX 4

#define AIAO_008KHz_SUB_IDX 0
#define AIAO_011KHz_SUB_IDX 1
#define AIAO_012KHz_SUB_IDX 2
#define AIAO_016KHz_SUB_IDX 3
#define AIAO_022KHz_SUB_IDX 4
#define AIAO_024KHz_SUB_IDX 5
#define AIAO_032KHz_SUB_IDX 6
#define AIAO_044KHz_SUB_IDX 7
#define AIAO_048KHz_SUB_IDX 8
#define AIAO_088KHz_SUB_IDX 9
#define AIAO_096KHz_SUB_IDX 10
#define AIAO_176KHz_SUB_IDX 11
#define AIAO_192KHz_SUB_IDX 12

/*
 * This file is machine generated, DO NOT EDIT!
 */
#if defined (AIAO_PLL_600MHZ)
static HI_U32 g_u32MclkPLLTab[5][13] = {
        /* crg = mclk0*pow(2, CRG_POW)/ ARM_BPLL_FREQ */ 
    /* 128*FS mclk */ 
    {0x00037ec8,/* 8000 */ 0x0004d120,/* 11025 */ 0x00053e2d,/* 12000 */ 0x0006fd91,/* 16000 */ 0x0009a240,/* 22050 */ 0x000a7c5a,/* 24000 */ 0x000dfb23,/* 32000 */ 
    0x00134480,/* 44100 */ 0x0014f8b5,/* 48000 */ 0x00268900,/* 88200 */ 0x0029f16b,/* 96000 */ 0x004d1201,/* 176400 */ 0x0053e2d6,/* 192000 */ },
    /* 256*FS mclk */ 
    {0x0006fd91,/* 8000 */ 0x0009a240,/* 11025 */ 0x000a7c5a,/* 12000 */ 0x000dfb23,/* 16000 */ 0x00134480,/* 22050 */ 0x0014f8b5,/* 24000 */ 0x001bf647,/* 32000 */ 
    0x00268900,/* 44100 */ 0x0029f16b,/* 48000 */ 0x004d1201,/* 88200 */ 0x0053e2d6,/* 96000 */ 0x009a2403,/* 176400 */ 0x00a7c5ac,/* 192000 */ },
    /* 384*FS mclk */ 
    {0x000a7c5a,/* 8000 */ 0x000e7360,/* 11025 */ 0x000fba88,/* 12000 */ 0x0014f8b5,/* 16000 */ 0x001ce6c0,/* 22050 */ 0x001f7510,/* 24000 */ 0x0029f16b,/* 32000 */ 
    0x0039cd81,/* 44100 */ 0x003eea20,/* 48000 */ 0x00739b02,/* 88200 */ 0x007dd441,/* 96000 */ 0x00e73605,/* 176400 */ 0x00fba882,/* 192000 */ },
    /* 512*FS mclk */ 
    {0x000dfb23,/* 8000 */ 0x00134480,/* 11025 */ 0x0014f8b5,/* 12000 */ 0x001bf647,/* 16000 */ 0x00268900,/* 22050 */ 0x0029f16b,/* 24000 */ 0x0037ec8e,/* 32000 */ 
    0x004d1201,/* 44100 */ 0x0053e2d6,/* 48000 */ 0x009a2403,/* 88200 */ 0x00a7c5ac,/* 96000 */ 0x01344806,/* 176400 */ 0x014f8b58,/* 192000 */ },
    /* 1024*FS mclk */ 
    {0x001bf647,/* 8000 */ 0x00268900,/* 11025 */ 0x0029f16b,/* 12000 */ 0x0037ec8e,/* 16000 */ 0x004d1201,/* 22050 */ 0x0053e2d6,/* 24000 */ 0x006fd91d,/* 32000 */ 
    0x009a2403,/* 44100 */ 0x00a7c5ac,/* 48000 */ 0x01344806,/* 88200 */ 0x014f8b58,/* 96000 */ 0x0268900c,/* 176400 */ 0x029f16b0,/* 192000 */ },
    
};

#elif defined (AIAO_PLL_492MHZ)
static HI_U32 g_u32MclkPLLTab[5][13] = {
/* crg = mclk0*pow(2, CRG_POW)/ ARM_BPLL_FREQ */ 
/* 128*FS mclk */ 
{0x00044444,/* 8000 */ 0x0005e147,/* 11025 */ 0x00066666,/* 12000 */ 0x00088888,/* 16000 */ 0x000bc28f,/* 22050 */ 0x000ccccc,/* 24000 */ 0x00111111,/* 32000 */ 
0x0017851e,/* 44100 */ 0x00199999,/* 48000 */ 0x002f0a3d,/* 88200 */ 0x00333333,/* 96000 */ 0x005e147b,/* 176400 */ 0x00666666,/* 192000 */ },
/* 256*FS mclk */ 
{0x00088888,/* 8000 */ 0x000bc28f,/* 11025 */ 0x000ccccc,/* 12000 */ 0x00111111,/* 16000 */ 0x0017851e,/* 22050 */ 0x00199999,/* 24000 */ 0x00222222,/* 32000 */ 
0x002f0a3d,/* 44100 */ 0x00333333,/* 48000 */ 0x005e147b,/* 88200 */ 0x00666666,/* 96000 */ 0x00bc28f6,/* 176400 */ 0x00cccccd,/* 192000 */ },
/* 384*FS mclk */ 
{0x000ccccc,/* 8000 */ 0x0011a3d7,/* 11025 */ 0x00133333,/* 12000 */ 0x00199999,/* 16000 */ 0x002347ae,/* 22050 */ 0x00266666,/* 24000 */ 0x00333333,/* 32000 */ 
0x00468f5c,/* 44100 */ 0x004ccccd,/* 48000 */ 0x008d1eb8,/* 88200 */ 0x0099999a,/* 96000 */ 0x011a3d70,/* 176400 */ 0x01333334,/* 192000 */ },
/* 512*FS mclk */ 
{0x00111111,/* 8000 */ 0x0017851e,/* 11025 */ 0x00199999,/* 12000 */ 0x00222222,/* 16000 */ 0x002f0a3d,/* 22050 */ 0x00333333,/* 24000 */ 0x00444444,/* 32000 */ 
0x005e147b,/* 44100 */ 0x00666666,/* 48000 */ 0x00bc28f6,/* 88200 */ 0x00cccccd,/* 96000 */ 0x017851ec,/* 176400 */ 0x0199999a,/* 192000 */ },
/* 1024*FS mclk */ 
{0x00222222,/* 8000 */ 0x002f0a3d,/* 11025 */ 0x00333333,/* 12000 */ 0x00444444,/* 16000 */ 0x005e147b,/* 22050 */ 0x00666666,/* 24000 */ 0x00888889,/* 32000 */ 
0x00bc28f6,/* 44100 */ 0x00cccccd,/* 48000 */ 0x017851ec,/* 88200 */ 0x0199999a,/* 96000 */ 0x02f0a3d8,/* 176400 */ 0x03333334,/* 192000 */ },
};


#elif defined (AIAO_PLL_750MHZ)
static HI_U32 g_u32MclkPLLTab[5][13] = {
/* crg = mclk0*pow(2, CRG_POW)/ ARM_BPLL_FREQ */ 
/* 128*FS mclk */ 
{0x0002cbd3,/* 8000 */ 0x0003da80,/* 11025 */ 0x000431bd,/* 12000 */ 0x000597a7,/* 16000 */ 0x0007b500,/* 22050 */ 0x0008637b,/* 24000 */ 0x000b2f4f,/* 32000 */ 
0x000f6a00,/* 44100 */ 0x0010c6f7,/* 48000 */ 0x001ed400,/* 88200 */ 0x00218def,/* 96000 */ 0x003da801,/* 176400 */ 0x00431bde,/* 192000 */ },
/* 256*FS mclk */ 
{0x000597a7,/* 8000 */ 0x0007b500,/* 11025 */ 0x0008637b,/* 12000 */ 0x000b2f4f,/* 16000 */ 0x000f6a00,/* 22050 */ 0x0010c6f7,/* 24000 */ 0x00165e9f,/* 32000 */ 
0x001ed400,/* 44100 */ 0x00218def,/* 48000 */ 0x003da801,/* 88200 */ 0x00431bde,/* 96000 */ 0x007b5002,/* 176400 */ 0x008637bd,/* 192000 */ },
/* 384*FS mclk */ 
{0x0008637b,/* 8000 */ 0x000b8f80,/* 11025 */ 0x000c9539,/* 12000 */ 0x0010c6f7,/* 16000 */ 0x00171f00,/* 22050 */ 0x00192a73,/* 24000 */ 0x00218def,/* 32000 */ 
0x002e3e01,/* 44100 */ 0x003254e7,/* 48000 */ 0x005c7c02,/* 88200 */ 0x0064a9ce,/* 96000 */ 0x00b8f804,/* 176400 */ 0x00c9539c,/* 192000 */ },
/* 512*FS mclk */ 
{0x000b2f4f,/* 8000 */ 0x000f6a00,/* 11025 */ 0x0010c6f7,/* 12000 */ 0x00165e9f,/* 16000 */ 0x001ed400,/* 22050 */ 0x00218def,/* 24000 */ 0x002cbd3f,/* 32000 */ 
0x003da801,/* 44100 */ 0x00431bde,/* 48000 */ 0x007b5002,/* 88200 */ 0x008637bd,/* 96000 */ 0x00f6a005,/* 176400 */ 0x010c6f7a,/* 192000 */ },
/* 1024*FS mclk */ 
{0x00165e9f,/* 8000 */ 0x001ed400,/* 11025 */ 0x00218def,/* 12000 */ 0x002cbd3f,/* 16000 */ 0x003da801,/* 22050 */ 0x00431bde,/* 24000 */ 0x00597a7e,/* 32000 */ 
0x007b5002,/* 44100 */ 0x008637bd,/* 48000 */ 0x00f6a005,/* 88200 */ 0x010c6f7a,/* 96000 */ 0x01ed400a,/* 176400 */ 0x0218def4,/* 192000 */ },
};

#elif defined (AIAO_PLL_307MHZ)
int g_u32MclkPLLTab[5][13] = {
        /* crg = mclk0*pow(2, CRG_POW)/ ARM_BPLL_FREQ */ 
    /* 128*FS mclk */ 
    {0x0006d3a0,/* 8000 */ 0x00096872,/* 11025 */ 0x000a3d70,/* 12000 */ 0x000da740,/* 16000 */ 0x0012d0e5,/* 22050 */ 0x00147ae1,/* 24000 */ 0x001b4e81,/* 32000 */ 
    0x0025a1ca,/* 44100 */ 0x0028f5c2,/* 48000 */ 0x004b4395,/* 88200 */ 0x0051eb85,/* 96000 */ 0x0096872b,/* 176400 */ 0x00a3d70a,/* 192000 */ },
    /* 256*FS mclk */ 
    {0x000da740,/* 8000 */ 0x0012d0e5,/* 11025 */ 0x00147ae1,/* 12000 */ 0x001b4e81,/* 16000 */ 0x0025a1ca,/* 22050 */ 0x0028f5c2,/* 24000 */ 0x00369d03,/* 32000 */ 
    0x004b4395,/* 44100 */ 0x0051eb85,/* 48000 */ 0x0096872b,/* 88200 */ 0x00a3d70a,/* 96000 */ 0x012d0e56,/* 176400 */ 0x0147ae14,/* 192000 */ },
    /* 384*FS mclk */ 
    {0x00147ae1,/* 8000 */ 0x001c3958,/* 11025 */ 0x001eb851,/* 12000 */ 0x0028f5c2,/* 16000 */ 0x003872b0,/* 22050 */ 0x003d70a3,/* 24000 */ 0x0051eb85,/* 32000 */ 
    0x0070e560,/* 44100 */ 0x007ae147,/* 48000 */ 0x00e1cac1,/* 88200 */ 0x00f5c28f,/* 96000 */ 0x01c39582,/* 176400 */ 0x01eb851e,/* 192000 */ },
    /* 512*FS mclk */ 
    {0x001b4e81,/* 8000 */ 0x0025a1ca,/* 11025 */ 0x0028f5c2,/* 12000 */ 0x00369d03,/* 16000 */ 0x004b4395,/* 22050 */ 0x0051eb85,/* 24000 */ 0x006d3a07,/* 32000 */ 
    0x0096872b,/* 44100 */ 0x00a3d70a,/* 48000 */ 0x012d0e56,/* 88200 */ 0x0147ae14,/* 96000 */ 0x025a1cac,/* 176400 */ 0x028f5c28,/* 192000 */ },
    /* 1024*FS mclk */ 
    {0x00369d03,/* 8000 */ 0x004b4395,/* 11025 */ 0x0051eb85,/* 12000 */ 0x006d3a07,/* 16000 */ 0x0096872b,/* 22050 */ 0x00a3d70a,/* 24000 */ 0x00da740e,/* 32000 */ 
    0x012d0e56,/* 44100 */ 0x0147ae14,/* 48000 */ 0x025a1cac,/* 88200 */ 0x028f5c28,/* 96000 */ 0x04b43958,/* 176400 */ 0x051eb850,/* 192000 */ },

};

#elif defined (AIAO_PLL_297MHZ)
static HI_U32 g_u32MclkPLLTab[5][13] = {
    /* crg = mclk0*pow(2, CRG_POW)/ ARM_BPLL_FREQ */
    /* 128*FS mclk */
    {																								0x00070fa5,

                                                                                                    /* 8000 */ 0x0009bb29,

                                                                                                    /* 11025 */ 0x000a9778,

                                                                                                    /* 12000 */ 0x000e1f4a,

                                                                                                    /* 16000 */ 0x00137653,

                                                                                                    /* 22050 */ 0x00152ef0,

                                                                                                    /* 24000 */ 0x001c3e95,                          /* 32000 */
                                                                                                    0x0026eca6,

                                                                                                    /* 44100 */ 0x002a5de0,

                                                                                                    /* 48000 */ 0x004dd94c,

                                                                                                    /* 88200 */ 0x0054bbc1,

                                                                                                    /* 96000 */ 0x009bb299,

                                                                                                    /* 176400 */ 0x00a97782, /* 192000 */ },

    /* 256*FS mclk */
    {																								0x000e1f4a,

                                                                                                    /* 8000 */ 0x00137653,

                                                                                                    /* 11025 */ 0x00152ef0,

                                                                                                    /* 12000 */ 0x001c3e95,

                                                                                                    /* 16000 */ 0x0026eca6,

                                                                                                    /* 22050 */ 0x002a5de0,

                                                                                                    /* 24000 */ 0x00387d2b,                          /* 32000 */
                                                                                                    0x004dd94c,

                                                                                                    /* 44100 */ 0x0054bbc1,

                                                                                                    /* 48000 */ 0x009bb299,

                                                                                                    /* 88200 */ 0x00a97782,

                                                                                                    /* 96000 */ 0x01376532,

                                                                                                    /* 176400 */ 0x0152ef04, /* 192000 */ },

    /* 384*FS mclk */
    {																								0x00152ef0,

                                                                                                    /* 8000 */ 0x001d317c,

                                                                                                    /* 11025 */ 0x001fc668,

                                                                                                    /* 12000 */ 0x002a5de0,

                                                                                                    /* 16000 */ 0x003a62f9,

                                                                                                    /* 22050 */ 0x003f8cd0,

                                                                                                    /* 24000 */ 0x0054bbc1,                          /* 32000 */
                                                                                                    0x0074c5f3,

                                                                                                    /* 44100 */ 0x007f19a1,

                                                                                                    /* 48000 */ 0x00e98be6,

                                                                                                    /* 88200 */ 0x00fe3343,

                                                                                                    /* 96000 */ 0x01d317cc,

                                                                                                    /* 176400 */ 0x01fc6686, /* 192000 */ },

    /* 512*FS mclk */
    {																								0x001c3e95,

                                                                                                    /* 8000 */ 0x0026eca6,

                                                                                                    /* 11025 */ 0x002a5de0,

                                                                                                    /* 12000 */ 0x00387d2b,

                                                                                                    /* 16000 */ 0x004dd94c,

                                                                                                    /* 22050 */ 0x0054bbc1,

                                                                                                    /* 24000 */ 0x0070fa56,                          /* 32000 */
                                                                                                    0x009bb299,

                                                                                                    /* 44100 */ 0x00a97782,

                                                                                                    /* 48000 */ 0x01376532,

                                                                                                    /* 88200 */ 0x0152ef04,

                                                                                                    /* 96000 */ 0x026eca64,

                                                                                                    /* 176400 */ 0x02a5de08, /* 192000 */ },

    /* 1024*FS mclk */
    {																								0x00387d2b,

                                                                                                    /* 8000 */ 0x004dd94c,

                                                                                                    /* 11025 */ 0x0054bbc1,

                                                                                                    /* 12000 */ 0x0070fa56,

                                                                                                    /* 16000 */ 0x009bb299,

                                                                                                    /* 22050 */ 0x00a97782,

                                                                                                    /* 24000 */ 0x00e1f4ad,                          /* 32000 */
                                                                                                    0x01376532,

                                                                                                    /* 44100 */ 0x0152ef04,

                                                                                                    /* 48000 */ 0x026eca64,

                                                                                                    /* 88200 */ 0x02a5de08,

                                                                                                    /* 96000 */ 0x04dd94c8,

                                                                                                    /* 176400 */ 0x054bbc10, /* 192000 */ },
};
#else
 #error YOU MUST DEFINE AIAO PLL SOURCE!
#endif

static HI_U32 GetMclkCrg(HI_U32 u32SampleRate, HI_U32 bclk_div, HI_U32 fclk_div)
{
    HI_U32 *pu32MclkTab;

    HI_U32 mclk_div = bclk_div * fclk_div;
    switch (mclk_div)
    {
    case 128:
        pu32MclkTab = g_u32MclkPLLTab[AIAO_0128FS_TAB_IDX];
        break;
    case 256:
        pu32MclkTab = g_u32MclkPLLTab[AIAO_0256FS_TAB_IDX];
        break;
    case 384:
        pu32MclkTab = g_u32MclkPLLTab[AIAO_0384FS_TAB_IDX];
        break;
    case 512:
        pu32MclkTab = g_u32MclkPLLTab[AIAO_0512FS_TAB_IDX];
        break;
    case 1024:
        pu32MclkTab = g_u32MclkPLLTab[AIAO_1024FS_TAB_IDX];
        break;
    default:
        pu32MclkTab = g_u32MclkPLLTab[AIAO_0256FS_TAB_IDX];    /* defaulse 256*FS */
    }

    switch (u32SampleRate)
    {
    case 8000:
        return pu32MclkTab[AIAO_008KHz_SUB_IDX];
    case 11025:
        return pu32MclkTab[AIAO_011KHz_SUB_IDX];
    case 12000:
        return pu32MclkTab[AIAO_012KHz_SUB_IDX];
    case 16000:
        return pu32MclkTab[AIAO_016KHz_SUB_IDX];
    case 22050:
        return pu32MclkTab[AIAO_022KHz_SUB_IDX];
    case 24000:
        return pu32MclkTab[AIAO_024KHz_SUB_IDX];
    case 32000:
        return pu32MclkTab[AIAO_032KHz_SUB_IDX];
    case 44100:
        return pu32MclkTab[AIAO_044KHz_SUB_IDX];
    case 48000:
        return pu32MclkTab[AIAO_048KHz_SUB_IDX];
    case 88200:
        return pu32MclkTab[AIAO_088KHz_SUB_IDX];
    case 96000:
        return pu32MclkTab[AIAO_096KHz_SUB_IDX];
    case 176400:
        return pu32MclkTab[AIAO_176KHz_SUB_IDX];
    case 192000:
        return pu32MclkTab[AIAO_192KHz_SUB_IDX];
    default:
        return pu32MclkTab[AIAO_048KHz_SUB_IDX];
    }
}

static HI_U32 GetFslkDiv(HI_U32 u32FSDiv)
{
    HI_U32 n;

    for (n = 0; n < sizeof(g_u16FsDivTab) / sizeof(g_u16FsDivTab[0]); n++)
    {
        if (((HI_U32)g_u16FsDivTab[n]) == u32FSDiv)
        {
            break;
        }
    }

    return (HI_U32)n;
}

static HI_U32 GetBclkDiv(HI_U32 u32XclkDiv)
{
    HI_U32 n;

    for (n = 0; n < 16; n++)
    {
        if (((HI_U32)g_u16BclkDivTab[n]) == u32XclkDiv)
        {
            break;
        }
    }

    return (HI_U32)n;
}

static HI_VOID IOAddressMap(HI_VOID)
{
    HI_U32 u32RegAIAOVirAddr;
    HI_S32 ch;

    u32RegAIAOVirAddr = (HI_U32 )IO_ADDRESS(AIAO_CBB_REGBASE);
    g_pAIAOComReg = (S_AIAO_COM_REGS_TYPE *)u32RegAIAOVirAddr;

    for (ch = 0; ch < AIAO_MAX_RX_PORT_NUMBER; ch++)
    {
        g_pAIAORxReg[ch] = (S_AIAO_RX_REGS_TYPE *)((u32RegAIAOVirAddr + AIAO_RX_OFFSET) + AIAO_RX_REG_BANDSIZE * ch);
    }

    for (ch = 0; ch < AIAO_MAX_TX_PORT_NUMBER; ch++)
    {
        g_pAIAOTxReg[ch] = (S_AIAO_TX_REGS_TYPE *)((u32RegAIAOVirAddr + AIAO_TX_OFFSET) + AIAO_TX_REG_BANDSIZE * ch);
    }

    for (ch = 0; ch < AIAO_MAX_TXSPDIF_PORT_NUMBER; ch++)
    {
        g_pAIAOTxSpdifReg[ch] = (S_AIAO_TXSPDIF_REGS_TYPE *)((u32RegAIAOVirAddr
                                                              + AIAO_TXSDPIF_OFFSET) + AIAO_TXSPDIF_REG_BANDSIZE
                                                             * ch);
    }

    for (ch = 0; ch < AIAO_MAX_TXSPDIF_PORT_NUMBER; ch++)
    {
        g_pAIAOSpdiferReg[ch] = (S_AIAO_SPDIFER_REGS_TYPE *)((u32RegAIAOVirAddr
                                                              + AIAO_SDPIFER_OFFSET) + AIAO_SPDIFER_REG_BANDSIZE
                                                             * ch);
    }

    return;
}

static HI_VOID IOaddressUnmap(HI_VOID)
{
    HI_S32 ch;

    g_pAIAOComReg = HI_NULL;

    for (ch = 0; ch < AIAO_MAX_RX_PORT_NUMBER; ch++)
    {
        g_pAIAORxReg[ch] = HI_NULL;
    }

    for (ch = 0; ch < AIAO_MAX_TX_PORT_NUMBER; ch++)
    {
        g_pAIAOTxReg[ch] = HI_NULL;
    }

    for (ch = 0; ch < AIAO_MAX_TXSPDIF_PORT_NUMBER; ch++)
    {
        g_pAIAOTxSpdifReg[ch] = HI_NULL;
    }

    for (ch = 0; ch < AIAO_MAX_TXSPDIF_PORT_NUMBER; ch++)
    {
        g_pAIAOSpdiferReg[ch] = HI_NULL;
    }
}

HI_S32 AIAO_HW_PowerOn(HI_VOID)
{
    U_PERI_CRG70 uTmpVal;

    uTmpVal.u32 = g_pstRegCrg->PERI_CRG70.u32;
    uTmpVal.bits.aiao_cken = 1;      /* enable aiao working clock */
    uTmpVal.bits.aiao_srst_req = 0;  /* enable aiao */
    
#if defined (CHIP_TYPE_hi3716cv200)       /*interface clock source select*/     \
        || defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100) \
        || defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
        || defined (CHIP_TYPE_hi3718mv100)     
#if defined (AIAO_PLL_492MHZ)
    uTmpVal.bits.aiao_mclk_sel = 0;
#elif defined (AIAO_PLL_600MHZ)
    uTmpVal.bits.aiao_mclk_sel = 1;
#elif defined (AIAO_PLL_750MHZ)
    uTmpVal.bits.aiao_mclk_sel = 2;
#endif
#endif

    g_pstRegCrg->PERI_CRG70.u32 = uTmpVal.u32;

    if (!g_pAIAOComReg->HW_CAPABILITY)
    {
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}

HI_VOID AIAO_HW_PowerOff(HI_VOID)
{
    U_PERI_CRG70 uTmpVal;
    
    uTmpVal.u32 = g_pstRegCrg->PERI_CRG70.u32;
    uTmpVal.bits.aiao_cken = 0;      /* disable aiao working clock */
    uTmpVal.bits.aiao_srst_req = 1;  /* disable aiao */

    g_pstRegCrg->PERI_CRG70.u32 = uTmpVal.u32;
}


HI_S32 AIAO_HW_Init(HI_VOID)
{
    IOAddressMap();


    return AIAO_HW_PowerOn();
}

HI_VOID  AIAO_HW_DeInit(HI_VOID)
{
    AIAO_HW_PowerOff();
    IOaddressUnmap();
}

HI_VOID  AIAO_HW_GetHwCapability(HI_U32 *pu32Capability)
{
    *pu32Capability = g_pAIAOComReg->HW_CAPABILITY;
}

HI_VOID  AIAO_HW_DBG_RWReg(AIAO_Dbg_Reg_S *pstReg)
{
    volatile HI_U32 *pu32Addr;

    if (HI_CRG_BASE_ADDR == pstReg->u32RegAddrBase)
    {
        if(AIAO_SYSCRG_REGOFFSET == pstReg->u32RegAddrOffSet)
        {
            if (pstReg->isRead)
            {
                pstReg->u32RegValue = g_pstRegCrg->PERI_CRG70.u32;
            }
            else
            {
                g_pstRegCrg->PERI_CRG70.u32 = pstReg->u32RegValue;
            }
        }
        else
        {
            HI_ERR_AIAO(" err u32RegAddrOffSet(0x%x) \n", pstReg->u32RegAddrOffSet);
        }
    }
    else if (AIAO_CBB_REGBASE == pstReg->u32RegAddrBase)
    {
        pu32Addr = (HI_U32*)(((HI_U32)g_pAIAOComReg) + pstReg->u32RegAddrOffSet);
        if (pstReg->isRead)
        {
            pstReg->u32RegValue = *pu32Addr;
        }
        else
        {
            *pu32Addr = pstReg->u32RegValue;
        }
    }
    else
    {
        HI_ERR_AIAO(" err u32RegAddrBase(0x%x) \n", pstReg->u32RegAddrBase);
        return;
    }
}

HI_VOID AIAO_HW_GetHwVersion(HI_U32 *pu32Version)
{
    *pu32Version = g_pAIAOComReg->HW_VERSION;
}

HI_VOID  AIAO_HW_SetTopInt(HI_U32 u32Multibit)
{
    g_pAIAOComReg->AIAO_INT_ENA.u32 = u32Multibit;
}

HI_U32   AIAO_HW_GetTopIntRawStatus(HI_VOID)
{
    return g_pAIAOComReg->AIAO_INT_RAW.u32;
}

HI_U32   AIAO_HW_GetTopIntStatus(HI_VOID)
{
    return g_pAIAOComReg->AIAO_INT_STATUS.u32;
}

HI_VOID AIAO_HW_SetInt(AIAO_PORT_ID_E enPortID, HI_U32 u32Multibit)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        g_pAIAORxReg[ChnId]->RX_INT_ENA.u32 = u32Multibit;
        break;
    case AIAO_MODE_TXI2S:
        g_pAIAOTxReg[ChnId]->TX_INT_ENA.u32 = u32Multibit;
        break;
    case AIAO_MODE_TXSPDIF:
        g_pAIAOTxSpdifReg[ChnId]->SPDIFTX_INT_ENA.u32 = u32Multibit;
        break;
    }
}

HI_VOID  AIAO_HW_ClrInt(AIAO_PORT_ID_E enPortID, HI_U32 u32Multibit)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        g_pAIAORxReg[ChnId]->RX_INT_CLR.u32 = u32Multibit;
        break;
    case AIAO_MODE_TXI2S:
        g_pAIAOTxReg[ChnId]->TX_INT_CLR.u32 = u32Multibit;
        break;
    case AIAO_MODE_TXSPDIF:
        g_pAIAOTxSpdifReg[ChnId]->SPDIFTX_INT_CLR.u32 = u32Multibit;
        break;
    }
}

HI_U32 AIAO_HW_GetIntStatusRaw(AIAO_PORT_ID_E enPortID)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        return g_pAIAORxReg[ChnId]->RX_INT_RAW.u32;
    case AIAO_MODE_TXI2S:
        return g_pAIAOTxReg[ChnId]->TX_INT_RAW.u32;
    case AIAO_MODE_TXSPDIF:
        return g_pAIAOTxSpdifReg[ChnId]->SPDIFTX_INT_RAW.u32;
    }

    return 0;
}

HI_U32 AIAO_HW_GetIntStatus(AIAO_PORT_ID_E enPortID)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        return g_pAIAORxReg[ChnId]->RX_INT_STATUS.u32;
    case AIAO_MODE_TXI2S:
        return g_pAIAOTxReg[ChnId]->TX_INT_STATUS.u32;
    case AIAO_MODE_TXSPDIF:
        return g_pAIAOTxSpdifReg[ChnId]->SPDIFTX_INT_STATUS.u32;
    }

    return 0;
}

HI_VOID  AIAO_HW_SetBufPeriodSize(AIAO_PORT_ID_E enPortID, HI_U32 u32PeriodSize)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_SetBufTransSize(PORT2CHID(enPortID), u32PeriodSize);
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_SetBufTransSize(PORT2CHID(enPortID), PORT2MODE(enPortID), u32PeriodSize);
        break;
    }
}

HI_S32 AIAO_HW_SetStart(AIAO_PORT_ID_E enPortID, HI_S32 bEn)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetStart(PORT2CHID(enPortID), PORT2DIR(enPortID), bEn);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SPDIFSetStart(PORT2CHID(enPortID), bEn);
        AIAO_SPDIF_HAL_SetUnknow(enPortID);
        AIAO_SPDIF_HAL_SetEnable(enPortID, bEn);
        break;
    }
#if 1

    if(!bEn)
    {
        volatile HI_S32 loop = 0;

#if defined (HW_CHN_PTR_BUG)
        AIAO_HW_SetBufPeriodSize(enPortID, 1);
        switch (PORT2MODE(enPortID))
        {
        case AIAO_MODE_RXI2S:
            AIAO_HW_SetBufWptr(enPortID, 0);
            break;
        case AIAO_MODE_TXI2S:
        case AIAO_MODE_TXSPDIF:
            AIAO_HW_SetBufRptr(enPortID, 0);
            break;
        }
        udelay(500);       
#endif
        
#if defined (CHIP_TYPE_hi3716cv200) \
        || defined (CHIP_TYPE_hi3719cv100) || defined (CHIP_TYPE_hi3718cv100) \
        || defined (CHIP_TYPE_hi3719mv100) || defined (CHIP_TYPE_hi3719mv100_a)\
        || defined (CHIP_TYPE_hi3718mv100)
        for (loop = 0; loop < 100; loop++)
        {
            udelay(10);
            if (AIAO_HW_GetStopDoneStatus(enPortID))
            {
                return HI_SUCCESS;
            } 
        } 
        HI_ERR_AIAO("stop cmd time out \n");
        return HI_FAILURE;
#else			
        for (loop = 0; loop < 10; loop++)  //for (loop = 0; loop < 100; loop++)  TODO
        {
            udelay(1);                      //udelay(10); 
            if (AIAO_HW_GetStopDoneStatus(enPortID))
            {
                return HI_SUCCESS;
            }
        }

        HI_WARN_AIAO("stop cmd time out \n");
        return HI_SUCCESS;     //return HI_FAILURE
#endif		
    }

#endif
    return HI_SUCCESS;
}

HI_S32   AIAO_HW_GetStopDoneStatus(AIAO_PORT_ID_E enPortID)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        return AIAO_LOW_GetStopDoneStatus(PORT2CHID(enPortID), PORT2DIR(enPortID));
    case AIAO_MODE_TXSPDIF:
        return AIAO_LOW_SPDIFGetStopDoneStatus(PORT2CHID(enPortID));
    default:
        return 1;
    }
}

HI_VOID AIAO_HW_SetBypass(AIAO_PORT_ID_E enPortID, HI_S32 bEn)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetBypass(PORT2CHID(enPortID), PORT2DIR(enPortID), bEn);
        break;
    case AIAO_MODE_TXSPDIF:

        /* aiao_check eBitDepth at spdif bypass */
        AIAO_LOW_SPDIFSetBypass(PORT2CHID(enPortID), bEn);

        AIAO_SPDIF_HAL_SetMode(enPortID, bEn ? AIAO_SPDIF_MODE_COMPRESSED : AIAO_SPDIF_MODE_PCM);
        break;
    }
}

HI_VOID AIAO_HW_SetVolumedB(AIAO_PORT_ID_E enPortID, HI_S32 VoldB)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetVolumedB(PORT2CHID(enPortID), PORT2DIR(enPortID), VoldB);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SPDIFSetVolumedB(PORT2CHID(enPortID), VoldB);
        break;
    }
}

HI_VOID AIAO_HW_SetFadeOutRate(AIAO_PORT_ID_E enPortID, AIAO_FADE_RATE_E eFadeRate)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetFadeOutRate(PORT2CHID(enPortID), PORT2DIR(enPortID), eFadeRate);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SPDIFSetFadeOutRate(PORT2CHID(enPortID), eFadeRate);
        break;
    }
}

HI_VOID AIAO_HW_SetFadeInRate(AIAO_PORT_ID_E enPortID, AIAO_FADE_RATE_E eFadeRate)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetFadeInRate(PORT2CHID(enPortID), PORT2DIR(enPortID), eFadeRate);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SPDIFSetFadeInRate(PORT2CHID(enPortID), eFadeRate);
        break;
    }
}

HI_VOID AIAO_HW_SetMuteFade(AIAO_PORT_ID_E enPortID, HI_S32 bEn)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetMuteFade(PORT2CHID(enPortID), PORT2DIR(enPortID), bEn);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SPDIFSetMuteFade(PORT2CHID(enPortID), bEn);
        break;
    }
}

HI_VOID AIAO_HW_SetMute(AIAO_PORT_ID_E enPortID, HI_S32 bEn)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetMute(PORT2CHID(enPortID), PORT2DIR(enPortID), bEn);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SPDIFSetMute(PORT2CHID(enPortID), bEn);
        break;
    }
}

HI_VOID AIAO_HW_SetBuf(AIAO_PORT_ID_E enPortID, AIAO_BufInfo_S *pstBuf)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_SetBufAddrAndSize(ChnId, pstBuf->u32BUFF_SADDR, pstBuf->u32BUFF_SIZE);
        AIAO_RXBUF_SetBufWptr(ChnId, pstBuf->u32BUFF_WPTR);
        AIAO_RXBUF_SetBufRptr(ChnId, pstBuf->u32BUFF_RPTR);
#ifdef AIAO_RWPTR_SWBUG
        if(pstBuf->u32BUFF_RPTR==pstBuf->u32BUFF_WPTR)
        {   
            HI_U32 u32BUFF_WPTR;
            AIAO_RXBUF_GetBufWptr(ChnId, &u32BUFF_WPTR);
            AIAO_RXBUF_SetBufRptr(ChnId, u32BUFF_WPTR);
            
        }
#endif        
        AIAO_RXBUF_SetBufAlfullSize(PORT2CHID(enPortID), pstBuf->u32ThresholdSize);
        AIAO_RXBUF_SetBufTransSize(PORT2CHID(enPortID), pstBuf->u32PeriodBufSize);
        break;
    case AIAO_MODE_TXI2S:
        AIAO_TXBUF_SetBufAddrAndSize(ChnId, AIAO_MODE_TXI2S, pstBuf->u32BUFF_SADDR, pstBuf->u32BUFF_SIZE);
        AIAO_TXBUF_SetBufWptr(ChnId, AIAO_MODE_TXI2S, pstBuf->u32BUFF_WPTR);
        AIAO_TXBUF_SetBufRptr(ChnId, AIAO_MODE_TXI2S, pstBuf->u32BUFF_RPTR);
#ifdef AIAO_RWPTR_SWBUG
        if(pstBuf->u32BUFF_RPTR==pstBuf->u32BUFF_WPTR)
        {   
            HI_U32 u32BUFF_RPTR;
            AIAO_TXBUF_GetBufRptr(ChnId, AIAO_MODE_TXI2S,&u32BUFF_RPTR);
            AIAO_TXBUF_SetBufWptr(ChnId, AIAO_MODE_TXI2S,u32BUFF_RPTR);
            
        }
#endif        
        AIAO_TXBUF_SetBufAlemptySize(PORT2CHID(enPortID), PORT2MODE(enPortID), pstBuf->u32ThresholdSize);
        AIAO_TXBUF_SetBufTransSize(PORT2CHID(enPortID), PORT2MODE(enPortID), pstBuf->u32PeriodBufSize);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_SetBufAddrAndSize(ChnId, AIAO_MODE_TXSPDIF, pstBuf->u32BUFF_SADDR, pstBuf->u32BUFF_SIZE);
        AIAO_TXBUF_SetBufWptr(ChnId, AIAO_MODE_TXSPDIF, pstBuf->u32BUFF_WPTR);
        AIAO_TXBUF_SetBufRptr(ChnId, AIAO_MODE_TXSPDIF, pstBuf->u32BUFF_RPTR);
#ifdef AIAO_RWPTR_SWBUG
        if(pstBuf->u32BUFF_RPTR==pstBuf->u32BUFF_WPTR)
        {   
            HI_U32 u32BUFF_RPTR;
            AIAO_TXBUF_GetBufRptr(ChnId, AIAO_MODE_TXSPDIF,&u32BUFF_RPTR);
            AIAO_TXBUF_SetBufWptr(ChnId, AIAO_MODE_TXSPDIF,u32BUFF_RPTR);
            
        }
#endif        
        AIAO_TXBUF_SetBufAlemptySize(PORT2CHID(enPortID), PORT2MODE(enPortID), pstBuf->u32ThresholdSize);
        AIAO_TXBUF_SetBufTransSize(PORT2CHID(enPortID), PORT2MODE(enPortID), pstBuf->u32PeriodBufSize);
        break;
    }
}

HI_VOID  AIAO_HW_SetBufThresholdSize(AIAO_PORT_ID_E enPortID, HI_U32 u32ThresholdSize)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_SetBufAlfullSize(PORT2CHID(enPortID), u32ThresholdSize);
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_SetBufAlemptySize(PORT2CHID(enPortID), PORT2MODE(enPortID), u32ThresholdSize);
        break;
    }
}

HI_VOID AIAO_HW_GetRptrAndWptrRegAddr(AIAO_PORT_ID_E enPortID, HI_U32 *pu32WptrReg, HI_U32 *pu32RptrReg)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_GetBufWptrAddr(ChnId, pu32WptrReg);
        AIAO_RXBUF_GetBufRptrAddr(ChnId, pu32RptrReg);
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_GetBufWptrAddr(ChnId, PORT2MODE(enPortID), pu32WptrReg);
        AIAO_TXBUF_GetBufRptrAddr(ChnId, PORT2MODE(enPortID), pu32RptrReg);
        break;
    }
}

HI_VOID AIAO_HW_GetRptrAndWptrRegPhyAddr(AIAO_PORT_ID_E enPortID, HI_U32 *pu32WptrReg, HI_U32 *pu32RptrReg)
{
    HI_U32 ChnId = PORT2CHID(enPortID);
    HI_U32 offset,u32WptrReg,u32RptrReg;
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_GetBufWptrAddr(ChnId, &u32WptrReg);
        AIAO_RXBUF_GetBufRptrAddr(ChnId, &u32RptrReg);
        offset = (HI_U32)u32WptrReg - (HI_U32)g_pAIAOComReg;
        *pu32WptrReg = (HI_U32)AIAO_CBB_REGBASE + offset;
        offset = (HI_U32)u32RptrReg - (HI_U32)g_pAIAOComReg;
        *pu32RptrReg = (HI_U32)AIAO_CBB_REGBASE + offset;
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_GetBufWptrAddr(ChnId, PORT2MODE(enPortID), &u32WptrReg);
        AIAO_TXBUF_GetBufRptrAddr(ChnId, PORT2MODE(enPortID), &u32RptrReg);
        offset = (HI_U32)u32WptrReg - (HI_U32)g_pAIAOComReg;
        *pu32WptrReg = (HI_U32)AIAO_CBB_REGBASE + offset;
        offset = (HI_U32)u32RptrReg - (HI_U32)g_pAIAOComReg;
        *pu32RptrReg = (HI_U32)AIAO_CBB_REGBASE + offset;
        break;
    }
}


HI_VOID  AIAO_HW_GetDbgWsCnt(AIAO_PORT_ID_E enPortID, HI_U32 *pu32WsCnt)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_GetDebugFCLKCnt(PORT2CHID(enPortID), pu32WsCnt);
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_GetDebugFCLKCnt(PORT2CHID(enPortID), PORT2MODE(enPortID), pu32WsCnt);
        break;
    }
}

HI_VOID  AIAO_HW_GetDbgBclkCnt(AIAO_PORT_ID_E enPortID, HI_U32 *pu32BclkCnt)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_GetDebugBCLKCnt(PORT2CHID(enPortID), pu32BclkCnt);
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_GetDebugBCLKCnt(PORT2CHID(enPortID), PORT2MODE(enPortID), pu32BclkCnt);
        break;
    }
}

HI_VOID  AIAO_HW_SetBufAddrAndSize(AIAO_PORT_ID_E enPortID, HI_U32 u32StartAddr, HI_U32 u32Size)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_SetBufAddrAndSize(PORT2CHID(enPortID), u32StartAddr, u32Size);
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_SetBufAddrAndSize(PORT2CHID(enPortID), PORT2MODE(enPortID), u32StartAddr, u32Size);
        break;
    }
}

HI_VOID  AIAO_HW_SetBufRptr(AIAO_PORT_ID_E enPortID, HI_U32 u32Rptr)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_SetBufRptr(PORT2CHID(enPortID), u32Rptr);
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_SetBufRptr(PORT2CHID(enPortID), PORT2MODE(enPortID), u32Rptr);
        break;
    }
}

HI_VOID  AIAO_HW_SetBufWptr(AIAO_PORT_ID_E enPortID, HI_U32 u32Wptr)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_SetBufWptr(PORT2CHID(enPortID), u32Wptr);
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_SetBufWptr(PORT2CHID(enPortID), PORT2MODE(enPortID), u32Wptr);
        break;
    }
}

HI_VOID  AIAO_HW_GetBufu32Rptr(AIAO_PORT_ID_E enPortID, HI_U32 *pu32Rptr)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_GetBufRptr(PORT2CHID(enPortID), pu32Rptr);
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_GetBufRptr(PORT2CHID(enPortID), PORT2MODE(enPortID), pu32Rptr);
        break;
    }
}

HI_VOID  AIAO_HW_GetBufu32Wptr(AIAO_PORT_ID_E enPortID, HI_U32 *pu32Wptr)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        AIAO_RXBUF_GetBufWptr(PORT2CHID(enPortID), pu32Wptr);
        break;
    case AIAO_MODE_TXI2S:
    case AIAO_MODE_TXSPDIF:
        AIAO_TXBUF_GetBufWptr(PORT2CHID(enPortID), PORT2MODE(enPortID), pu32Wptr);
        break;
    }
}

/* crg */
HI_VOID  AIAO_HW_SetMasterClkEn(AIAO_PORT_ID_E enPortID, AIAO_IfAttr_S *pstIfAttrMaster, HI_S32 bEn)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetCrgClkEn(ChnId, PORT2DIR(enPortID), bEn);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SetSPDIFMasterClkEn(ChnId, bEn);
        break;
    }
}

static HI_VOID  AIAO_HW_SetI2SSlaveClk(AIAO_PORT_ID_E enPortID, AIAO_IfAttr_S *pstIfAttrSlave)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetI2SSlaveClk(ChnId, PORT2DIR(enPortID), pstIfAttrSlave);
        AIAO_LOW_SetCrgClkEn(ChnId, PORT2DIR(enPortID), 1);
        break;
    default:
        break;
    }
}

HI_VOID  AIAO_HW_SetI2SMasterClk(AIAO_PORT_ID_E enPortID, AIAO_IfAttr_S *pstIfAttrMaster)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetI2SMasterClk(ChnId, PORT2DIR(enPortID), pstIfAttrMaster);
        AIAO_LOW_SetCrgClkEn(ChnId, PORT2DIR(enPortID), 1);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SetSPDIFMasterClk(ChnId, pstIfAttrMaster);
        AIAO_SPDIF_HAL_SetSamplerate(enPortID, pstIfAttrMaster->enRate);
        break;
    }
}

static HI_VOID  AIAO_HW_SetI2SDulicateClk(AIAO_PORT_ID_E enPortID, AIAO_IfAttr_S *pstIfAttrDuplicate)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetI2SDulicateClk(ChnId, PORT2DIR(enPortID), pstIfAttrDuplicate);
        AIAO_LOW_SetCrgClkEn(ChnId, PORT2DIR(enPortID), 1);
        break;
    default:
        break;
    }
}

HI_VOID  AIAO_HW_SetIfAttr(AIAO_PORT_ID_E enPortID, AIAO_IfAttr_S *pstIfAttr)
{
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        if (AIAO_MODE_PCM == pstIfAttr->enI2SMode)
        {
            AIAO_HW_SetPcmSyncDelay(enPortID, pstIfAttr->u32PcmDelayCycles);
        }
        else
        {
            AIAO_HW_SetI2SDataSelect(enPortID, AIAO_I2S_SD0, pstIfAttr->enSD0);
            AIAO_HW_SetI2SDataSelect(enPortID, AIAO_I2S_SD1, pstIfAttr->enSD1);
            AIAO_HW_SetI2SDataSelect(enPortID, AIAO_I2S_SD2, pstIfAttr->enSD2);
            AIAO_HW_SetI2SDataSelect(enPortID, AIAO_I2S_SD3, pstIfAttr->enSD3);
        }

        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_HW_SetSPDIFPortEn(enPortID, 1);
        break;

    default:
        break;
    }

    AIAO_HW_SetMultislotMode(enPortID, pstIfAttr->bMultislot);
    AIAO_HW_SetI2SChNum(enPortID, pstIfAttr->bMultislot, pstIfAttr->enChNum);
    AIAO_HW_SetI2SBitDepth(enPortID, pstIfAttr->enBitDepth);
    AIAO_HW_SetI2SSourceSelect(enPortID, pstIfAttr->enSource);
    switch (pstIfAttr->enCrgMode)
    {
    case AIAO_CRG_MODE_MASTER:
        AIAO_HW_SetI2SMasterClk(enPortID, pstIfAttr);
        AIAO_HW_SetI2SDulicateClk(enPortID, pstIfAttr);
        break;
    case AIAO_CRG_MODE_SLAVE:
        AIAO_HW_SetI2SSlaveClk(enPortID, pstIfAttr);
        AIAO_HW_SetI2SDulicateClk(enPortID, pstIfAttr);
        break;
    case AIAO_CRG_MODE_DUPLICATE:
        AIAO_HW_SetI2SDulicateClk(enPortID, pstIfAttr);
        break;
    default:
        break;
    }
}

HI_VOID AIAO_HW_SetSPDIFPortEn(AIAO_PORT_ID_E enPortID, HI_S32 bEn)
{
    switch (PORT2CHID(enPortID))
    {
    case 0:
        g_pAIAOComReg->SPDIF_TX_MUX.bits.spdif_tx_0_port_en = bEn;
        break;

    case 1:
        g_pAIAOComReg->SPDIF_TX_MUX.bits.spdif_tx_1_port_en = bEn;
        break;
    case 2:
        g_pAIAOComReg->SPDIF_TX_MUX.bits.spdif_tx_2_port_en = bEn;
        break;

    case 3:
        g_pAIAOComReg->SPDIF_TX_MUX.bits.spdif_tx_3_port_en = bEn;
        break;

    default:
        break;
    }
}

HI_VOID AIAO_HW_SetSPDIFPortSelect(AIAO_PORT_ID_E enPortID, AIAO_SPDIFPORT_SOURCE_E eSrcChnId)
{
    switch (PORT2CHID(enPortID))
    {
    case 0:
        g_pAIAOComReg->SPDIF_TX_MUX.bits.spdif_tx_0_port_sel = eSrcChnId;
        break;

    case 1:
        g_pAIAOComReg->SPDIF_TX_MUX.bits.spdif_tx_1_port_sel = eSrcChnId;
        break;
    case 2:
        g_pAIAOComReg->SPDIF_TX_MUX.bits.spdif_tx_2_port_sel = eSrcChnId;
        break;

    case 3:
        g_pAIAOComReg->SPDIF_TX_MUX.bits.spdif_tx_3_port_sel = eSrcChnId;
        break;

    default:
        break;
    }
}

HI_VOID  AIAO_HW_SetI2SSourceSelect(AIAO_PORT_ID_E enPortID, AIAO_I2S_SOURCE_E eI2SSel)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetI2SSourceSelect(ChnId, PORT2DIR(enPortID), eI2SSel);
        break;
    default:
        break;
    }
}

HI_VOID  AIAO_HW_SetI2SDataSelect(AIAO_PORT_ID_E enPortID, AIAO_I2S_SD_E eOrgSd, AIAO_I2S_SD_E eSrcSd)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetI2SDataSelect(ChnId, PORT2DIR(enPortID), eOrgSd, eSrcSd);
        break;
    default:
        break;
    }
}

HI_VOID  AIAO_HW_SetI2SBitDepth(AIAO_PORT_ID_E enPortID, AIAO_BITDEPTH_E eBitDepth)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetI2SBitDepth(ChnId, PORT2DIR(enPortID), eBitDepth);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SPDIFSetBitDepth(ChnId, eBitDepth);
        AIAO_SPDIF_HAL_SetBitWidth(enPortID, eBitDepth);
        break;
    default:
        break;
    }
}

HI_VOID  AIAO_HW_SetI2SMode(AIAO_PORT_ID_E enPortID, AIAO_I2S_MODE_E eMode)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetI2SMode(ChnId, PORT2DIR(enPortID), eMode);
        break;
    default:
        break;
    }
}

HI_VOID  AIAO_HW_SetTrackMode(AIAO_PORT_ID_E enPortID, AIAO_TRACK_MODE_E eTrackMode)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    udelay(10);
    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetTrackMode(ChnId, PORT2DIR(enPortID), eTrackMode);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SPDIFSetTrackMode(ChnId, eTrackMode);
        break;
    default:
        break;
    }
    udelay(10);
}

HI_VOID  AIAO_HW_SetMultislotMode(AIAO_PORT_ID_E enPortID, HI_S32 bEn)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetMultislotMode(ChnId, PORT2DIR(enPortID), bEn);
        break;
    default:
        break;
    }
}

HI_VOID  AIAO_HW_SetI2SChNum(AIAO_PORT_ID_E enPortID, HI_S32 isMultislot, AIAO_I2S_CHNUM_E eChaNum)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetI2SChNum(ChnId, PORT2DIR(enPortID), isMultislot, eChaNum);
        break;
    case AIAO_MODE_TXSPDIF:
        AIAO_LOW_SPDIFSetChNum(ChnId, eChaNum);
        break;

    default:
        break;
    }
}

HI_VOID  AIAO_HW_SetPcmSyncDelay(AIAO_PORT_ID_E enPortID, HI_S32 nDelayCycles)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
    case AIAO_MODE_TXI2S:
        AIAO_LOW_SetPcmSyncDelay(ChnId, PORT2DIR(enPortID), nDelayCycles);
        break;
    default:
        break;
    }
}


static HI_VOID  AIAO_LOW_SetI2SSlaveClk(HI_U32 u32ChnId, HI_S32 Dir, AIAO_IfAttr_S *pstIfAttrSlave)
{
    AIAO_LOW_SetI2SMode(u32ChnId, Dir, pstIfAttrSlave->enI2SMode);

    if (AIAO_MODE_EDGE_RISE == pstIfAttrSlave->enRiseEdge)
    {
        if (AIAO_DIR_RX == Dir)
        {
            g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkin_pctrl = 1;
            g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_oen = 1;
            g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_sel = 1;
            if (AIAO_MODE_I2S == pstIfAttrSlave->enI2SMode)
            {
                // i2s allways aiao_bclkin_pctrl 0 
                g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkin_pctrl = 0;
            }
        }
        else
        {
            g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkin_pctrl = 1;
            g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_oen = 1;
            g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_sel = 1;
            if (AIAO_MODE_I2S == pstIfAttrSlave->enI2SMode)
            {
                // i2s allways aiao_bclkin_pctrl 0 
                g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkin_pctrl = 0;
            }
        }
    }
    else
    {
        if (AIAO_DIR_RX == Dir)
        {
            g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkin_pctrl = 0;
            g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_oen = 1;
            g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_sel = 1;
        }
        else
        {
            g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkin_pctrl = 0;
            g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_oen = 1;
            g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_sel = 1;
        }
    }

    
}

static HI_VOID  AIAO_LOW_SetCrgClkEn(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn)
{
    if (AIAO_DIR_RX == Dir)
    {
        g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_cken = bEn;
    }
    else
    {
        g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_cken = bEn;
    }
}

static HI_VOID  AIAO_LOW_SetI2SMasterClk(HI_U32 u32ChnId, HI_S32 Dir, AIAO_IfAttr_S *pstIfAttrMaster)
{
    HI_U32 mclk, bclk, fclk;

    mclk = GetMclkCrg((HI_U32)(pstIfAttrMaster->enRate), pstIfAttrMaster->u32BCLK_DIV, pstIfAttrMaster->u32FCLK_DIV);
    bclk = GetBclkDiv(pstIfAttrMaster->u32BCLK_DIV);
    fclk = GetFslkDiv(pstIfAttrMaster->u32FCLK_DIV);
    AIAO_LOW_SetI2SMode(u32ChnId, Dir, pstIfAttrMaster->enI2SMode);
    if (AIAO_DIR_RX == Dir)
    {
        g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG0.bits.aiao_mclk_div  = mclk;
        g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_div  = bclk;
        g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_fsclk_div = fclk;
        g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_oen = 0;
        g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_sel = 0;
        if (AIAO_MODE_EDGE_RISE == pstIfAttrMaster->enRiseEdge)
        {
            g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkout_pctrl = 1;
        }
        else
        {
            g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkout_pctrl = 0;
        }
        if (AIAO_MODE_I2S == pstIfAttrMaster->enI2SMode)
        {
            // i2s allways aiao_bclkout_pctrl 0 
            g_pAIAOComReg->I2S_RX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkout_pctrl = 0;
        }
    }
    else
    {
        g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG0.bits.aiao_mclk_div  = mclk;
        g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_div  = bclk;
        g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_fsclk_div = fclk;
        g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_oen = 0;
        g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclk_sel = 0;
        if (AIAO_MODE_EDGE_RISE == pstIfAttrMaster->enRiseEdge)
        {
            g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkout_pctrl = 1;
        }
        else
        {
            g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkout_pctrl = 0;
        }
        if (AIAO_MODE_I2S == pstIfAttrMaster->enI2SMode)
        {
            // i2s allways aiao_bclkout_pctrl 0 
            g_pAIAOComReg->I2S_TX_CRG[u32ChnId].I2S_CRG_CFG1.bits.aiao_bclkout_pctrl = 0;
        }
    }
}

static HI_VOID  AIAO_LOW_SetI2SDulicateClk(HI_U32 u32ChnId, HI_S32 Dir, AIAO_IfAttr_S *pstIfAttrDuplicate)
{
    AIAO_CRG_SOURCE_E org_eSource = pstIfAttrDuplicate->eCrgSource;

    if (AIAO_DIR_RX == Dir)
    {
        switch (u32ChnId)
        {
        case 0:
            g_pAIAOComReg->AIAO_SWITCH_RX_BCLK.bits.inner_bclk_ws_sel_rx_00 = org_eSource;
            break;

        case 1:
            g_pAIAOComReg->AIAO_SWITCH_RX_BCLK.bits.inner_bclk_ws_sel_rx_01 = org_eSource;
            break;
        case 2:
            g_pAIAOComReg->AIAO_SWITCH_RX_BCLK.bits.inner_bclk_ws_sel_rx_02 = org_eSource;
            break;
        case 3:
            g_pAIAOComReg->AIAO_SWITCH_RX_BCLK.bits.inner_bclk_ws_sel_rx_03 = org_eSource;
            break;

        case 4:
            g_pAIAOComReg->AIAO_SWITCH_RX_BCLK.bits.inner_bclk_ws_sel_rx_04 = org_eSource;
            break;

        case 5:
            g_pAIAOComReg->AIAO_SWITCH_RX_BCLK.bits.inner_bclk_ws_sel_rx_05 = org_eSource;
            break;
        case 6:
            g_pAIAOComReg->AIAO_SWITCH_RX_BCLK.bits.inner_bclk_ws_sel_rx_06 = org_eSource;
            break;
        case 7:
            g_pAIAOComReg->AIAO_SWITCH_RX_BCLK.bits.inner_bclk_ws_sel_rx_07 = org_eSource;
            break;
        default:
            break;
        }
    }
    else if (AIAO_DIR_TX == Dir)
    {
        switch (u32ChnId)
        {
        case 0:
            g_pAIAOComReg->AIAO_SWITCH_TX_BCLK.bits.inner_bclk_ws_sel_tx_00 = org_eSource;
            break;

        case 1:
            g_pAIAOComReg->AIAO_SWITCH_TX_BCLK.bits.inner_bclk_ws_sel_tx_01 = org_eSource;
            break;
        case 2:
            g_pAIAOComReg->AIAO_SWITCH_TX_BCLK.bits.inner_bclk_ws_sel_tx_02 = org_eSource;
            break;

        case 3:
            g_pAIAOComReg->AIAO_SWITCH_TX_BCLK.bits.inner_bclk_ws_sel_tx_03 = org_eSource;
            break;
        case 4:
            g_pAIAOComReg->AIAO_SWITCH_TX_BCLK.bits.inner_bclk_ws_sel_tx_04 = org_eSource;
            break;

        case 5:
            g_pAIAOComReg->AIAO_SWITCH_TX_BCLK.bits.inner_bclk_ws_sel_tx_05 = org_eSource;
            break;
        case 6:
            g_pAIAOComReg->AIAO_SWITCH_TX_BCLK.bits.inner_bclk_ws_sel_tx_06 = org_eSource;
            break;

        case 7:
            g_pAIAOComReg->AIAO_SWITCH_TX_BCLK.bits.inner_bclk_ws_sel_tx_07 = org_eSource;
            break;

        default:
            break;
        }
    }

    AIAO_LOW_SetI2SMode(u32ChnId, Dir, pstIfAttrDuplicate->enI2SMode);
}

static HI_VOID  AIAO_LOW_SetSPDIFMasterClk(HI_U32 u32ChnId, AIAO_IfAttr_S *pstIfAttrMaster)
{
    HI_U32 mclk, bclk, fclk;

    mclk = GetMclkCrg((HI_U32)(pstIfAttrMaster->enRate), pstIfAttrMaster->u32BCLK_DIV, pstIfAttrMaster->u32FCLK_DIV);
    bclk = GetBclkDiv(pstIfAttrMaster->u32BCLK_DIV);
    fclk = GetFslkDiv(pstIfAttrMaster->u32FCLK_DIV);
    g_pAIAOComReg->SPDIF_CRG[u32ChnId].SPDIF_CRG_CFG0.bits.aiao_mclk_div_spdif  = mclk;
    g_pAIAOComReg->SPDIF_CRG[u32ChnId].SPDIF_CRG_CFG1.bits.aiao_bclk_div_spdif  = bclk;
    g_pAIAOComReg->SPDIF_CRG[u32ChnId].SPDIF_CRG_CFG1.bits.aiao_fsclk_div_spdif = fclk;
    g_pAIAOComReg->SPDIF_CRG[u32ChnId].SPDIF_CRG_CFG1.bits.aiao_cken_spdif = 1;
}

static HI_VOID  AIAO_LOW_SetSPDIFMasterClkEn(HI_U32 u32ChnId, HI_S32 bEn)
{
    if (0 == bEn)
    {
        g_pAIAOComReg->SPDIF_CRG[u32ChnId].SPDIF_CRG_CFG1.bits.aiao_srst_req_spdif = 0;
    }
    else
    {
        g_pAIAOComReg->SPDIF_CRG[u32ChnId].SPDIF_CRG_CFG1.bits.aiao_srst_req_spdif = 1; // reset hold
    }

    g_pAIAOComReg->SPDIF_CRG[u32ChnId].SPDIF_CRG_CFG1.bits.aiao_cken_spdif = bEn;
}

static HI_VOID AIAO_LOW_SetI2SSourceSelect(HI_U32 u32ChnId, HI_S32 Dir, AIAO_I2S_SOURCE_E eI2SSel)
{
    if (AIAO_DIR_RX == Dir)
    {
        g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_sd_source_sel = eI2SSel;
    }
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_sd_source_sel = eI2SSel;
    }
}

static HI_VOID AIAO_LOW_SetI2SDataSelect(HI_U32 u32ChnId, HI_S32 Dir, AIAO_I2S_SD_E eOrgSd, AIAO_I2S_SD_E eSrcSd)
{
    if (AIAO_DIR_RX == Dir)
    {
        switch (eOrgSd)
        {
        case AIAO_I2S_SD0:
            g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_sd0_sel = eSrcSd;
            break;
        case AIAO_I2S_SD1:
            g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_sd1_sel = eSrcSd;
            break;
        case AIAO_I2S_SD2:
            g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_sd2_sel = eSrcSd;
            break;
        case AIAO_I2S_SD3:
            g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_sd3_sel = eSrcSd;
            break;
        }
    }
    else if (AIAO_DIR_TX == Dir)
    {
        switch (eOrgSd)
        {
        case AIAO_I2S_SD0:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_sd0_sel = eSrcSd;
            break;
        case AIAO_I2S_SD1:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_sd1_sel = eSrcSd;
            break;
        case AIAO_I2S_SD2:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_sd2_sel = eSrcSd;
            break;
        case AIAO_I2S_SD3:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_sd3_sel = eSrcSd;
            break;
        }
    }
}

static HI_VOID AIAO_LOW_SetI2SBitDepth(HI_U32 u32ChnId, HI_S32 Dir, AIAO_BITDEPTH_E eBitDepth)
{
    if (AIAO_DIR_RX == Dir)
    {
        switch (eBitDepth)
        {
        case AIAO_BIT_DEPTH_8:
            g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_i2s_precision = 0;
            break;
        case AIAO_BIT_DEPTH_16:
            g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_i2s_precision = 1;
            break;
        case AIAO_BIT_DEPTH_24:
            g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_i2s_precision = 2;
            break;
        }
    }
    else if (AIAO_DIR_TX == Dir)
    {
        switch (eBitDepth)
        {
        case AIAO_BIT_DEPTH_8:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_i2s_precision = 0;
            break;
        case AIAO_BIT_DEPTH_16:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_i2s_precision = 1;
            break;
        case AIAO_BIT_DEPTH_24:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_i2s_precision = 2;
            break;
        }
    }
}

static HI_VOID AIAO_LOW_SetI2SMode(HI_U32 u32ChnId, HI_S32 Dir, AIAO_I2S_MODE_E eMode)
{
    if (AIAO_DIR_RX == Dir)
    {
        g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_mode = eMode;
    }
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_mode = eMode;
    }
}

static HI_VOID AIAO_LOW_SetPcmSyncDelay(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 nDelayCycles)
{
    if (AIAO_DIR_RX == Dir)
    {
        g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_sd_offset = nDelayCycles;
    }
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_sd_offset = nDelayCycles;
    }
}

static HI_VOID AIAO_LOW_SetTrackMode(HI_U32 u32ChnId, HI_S32 Dir, AIAO_TRACK_MODE_E eTrackMode)
{
    if (AIAO_DIR_RX == Dir)
    {
        g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_trackmode = eTrackMode;
    }
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_trackmode = eTrackMode;
    }
}

static HI_VOID AIAO_LOW_SetI2SChNum(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 isMultislot, AIAO_I2S_CHNUM_E eChaNum)
{
    if (AIAO_DIR_RX == Dir)
    {
        if (isMultislot)
        {
            switch (eChaNum)
            {
            case AIAO_I2S_CHNUM_2:
                g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_ch_num = 0;
                break;
            case AIAO_I2S_CHNUM_4:
                g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_ch_num = 1;
                break;
            case AIAO_I2S_CHNUM_8:
                g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_ch_num = 2;
                break;
            case AIAO_I2S_CHNUM_16:
                g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_ch_num = 3;
                break;
            default:
                g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_ch_num = 0;
            }
        }
        else
        {
            switch (eChaNum)
            {
            case AIAO_I2S_CHNUM_1:
                g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_ch_num = 0;
                break;
            case AIAO_I2S_CHNUM_2:
                g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_ch_num = 1;
                break;
            case AIAO_I2S_CHNUM_8:
                g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_ch_num = 3;
                break;
            default:
                g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_ch_num = 1;
            }
        }
    }
    else if (AIAO_DIR_TX == Dir)
    {
        switch (eChaNum)
        {
        case AIAO_I2S_CHNUM_1:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_ch_num = 0;
            break;
        case AIAO_I2S_CHNUM_2:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_ch_num = 1;
            break;
        case AIAO_I2S_CHNUM_8:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_ch_num = 3;
            break;
        default:
            g_pAIAOTxReg[u32ChnId]->TX_IF_ATTRI.bits.tx_ch_num = 1;
        }
    }
}

static HI_VOID AIAO_LOW_SetMultislotMode(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn)
{
    if (AIAO_DIR_RX == Dir)
    {
        g_pAIAORxReg[u32ChnId]->RX_IF_ATTRI.bits.rx_multislot_en = bEn;
    }
    else if (AIAO_DIR_TX == Dir)
    {}
}

static HI_VOID AIAO_LOW_SetMute(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn)
{
    if (AIAO_DIR_RX == Dir)
    {}
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_DSP_CTRL.bits.mute_en = bEn;
    }
}

static HI_VOID AIAO_LOW_SetMuteFade(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn)
{
    if (AIAO_DIR_RX == Dir)
    {}
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_DSP_CTRL.bits.mute_fade_en = bEn;
    }
}

static HI_VOID AIAO_LOW_SetFadeInRate(HI_U32 u32ChnId, HI_S32 Dir, AIAO_FADE_RATE_E eFadeRate)
{
    if (AIAO_DIR_RX == Dir)
    {}
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_DSP_CTRL.bits.fade_in_rate = eFadeRate;
    }
}

static HI_VOID AIAO_LOW_SetFadeOutRate(HI_U32 u32ChnId, HI_S32 Dir, AIAO_FADE_RATE_E eFadeRate)
{
    if (AIAO_DIR_RX == Dir)
    {}
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_DSP_CTRL.bits.fade_out_rate = eFadeRate;
    }
}

static HI_VOID AIAO_LOW_SetVolumedB(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 VoldB)
{
    if (VoldB > AIAO_VOL_MAX_dB)
    {
        VoldB = AIAO_VOL_MAX_dB;
    }

    if (VoldB < AIAO_VOL_MIN_dB)
    {
        VoldB = AIAO_VOL_MIN_dB;
    }

    if (AIAO_DIR_RX == Dir)
    {}
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_DSP_CTRL.bits.volume = VoldB;
    }
}

static HI_VOID AIAO_LOW_SetBypass(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn)
{
    if (AIAO_DIR_RX == Dir)
    {
        g_pAIAORxReg[u32ChnId]->RX_DSP_CTRL.bits.bypass_en = bEn;
    }
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_DSP_CTRL.bits.bypass_en = bEn;
    }
}

static HI_S32 AIAO_LOW_GetStopDoneStatus(HI_U32 u32ChnId, HI_S32 Dir)
{
    if (AIAO_DIR_RX == Dir)
    {
        return g_pAIAORxReg[u32ChnId]->RX_DSP_CTRL.bits.rx_disable_done;
    }
    else if (AIAO_DIR_TX == Dir)
    {
        return g_pAIAOTxReg[u32ChnId]->TX_DSP_CTRL.bits.tx_disable_done;
    }

    return 1;
}

static HI_VOID AIAO_LOW_SetStart(HI_U32 u32ChnId, HI_S32 Dir, HI_S32 bEn)
{
    if (AIAO_DIR_RX == Dir)
    {
        g_pAIAORxReg[u32ChnId]->RX_DSP_CTRL.bits.rx_enable = bEn;
    }
    else if (AIAO_DIR_TX == Dir)
    {
        g_pAIAOTxReg[u32ChnId]->TX_DSP_CTRL.bits.tx_enable = bEn;
    }
}

/* tx SPDIF interface */
static HI_VOID AIAO_LOW_SPDIFSetBitDepth(HI_U32 u32ChnId, AIAO_BITDEPTH_E eBitDepth)
{
    switch (eBitDepth)
    {
    case AIAO_BIT_DEPTH_16:
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_IF_ATTRI.bits.tx_i2s_precision = 1;
        break;
    case AIAO_BIT_DEPTH_24:
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_IF_ATTRI.bits.tx_i2s_precision = 2;
        break;
    default:
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_IF_ATTRI.bits.tx_i2s_precision = 1;
        break;
    }
}

static HI_VOID AIAO_LOW_SPDIFSetTrackMode(HI_U32 u32ChnId, AIAO_TRACK_MODE_E eTrackMode)
{
    g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_IF_ATTRI.bits.tx_trackmode = eTrackMode;
}

static HI_VOID AIAO_LOW_SPDIFSetChNum(HI_U32 u32ChnId, AIAO_I2S_CHNUM_E eChaNum)
{
    switch (eChaNum)
    {
    case AIAO_I2S_CHNUM_1:
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_IF_ATTRI.bits.tx_ch_num = 0;
        break;
    case AIAO_I2S_CHNUM_2:
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_IF_ATTRI.bits.tx_ch_num = 1;
        break;
    default:
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_IF_ATTRI.bits.tx_ch_num = 1;
    }
}

/* tx SPDIF DSP */
static HI_VOID AIAO_LOW_SPDIFSetMute(HI_U32 u32ChnId, HI_S32 bEn)
{
    g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_DSP_CTRL.bits.mute_en = bEn;
}

static HI_VOID AIAO_LOW_SPDIFSetMuteFade(HI_U32 u32ChnId, HI_S32 bEn)
{
    g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_DSP_CTRL.bits.mute_fade_en = bEn;
}

static HI_VOID AIAO_LOW_SPDIFSetFadeInRate(HI_U32 u32ChnId, AIAO_FADE_RATE_E eFadeRate)
{
    g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_DSP_CTRL.bits.fade_in_rate = eFadeRate;
}

static HI_VOID AIAO_LOW_SPDIFSetFadeOutRate(HI_U32 u32ChnId, AIAO_FADE_RATE_E eFadeRate)
{
    g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_DSP_CTRL.bits.fade_out_rate = eFadeRate;
}

static HI_VOID AIAO_LOW_SPDIFSetVolumedB(HI_U32 u32ChnId, HI_S32 VoldB)
{
    if (VoldB > AIAO_VOL_MAX_dB)
    {
        VoldB = AIAO_VOL_MAX_dB;
    }

    if (VoldB < AIAO_VOL_MIN_dB)
    {
        VoldB = AIAO_VOL_MIN_dB;
    }

    g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_DSP_CTRL.bits.volume = VoldB;
}

static HI_VOID  AIAO_LOW_SPDIFSetBypass(HI_U32 u32ChnId, HI_S32 bEn)
{
    g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_DSP_CTRL.bits.bypass_en = bEn;
}

static HI_S32  AIAO_LOW_SPDIFGetStopDoneStatus(HI_U32 u32ChnId)
{
    return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_DSP_CTRL.bits.tx_disable_done;
}

static HI_VOID  AIAO_LOW_SPDIFSetStart(HI_U32 u32ChnId, HI_S32 bEn)
{
    g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_DSP_CTRL.bits.tx_enable = bEn;
}

/* tx Buffer */
static HI_VOID AIAO_TXBUF_SetBufAddrAndSize(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 u32StartAddr, HI_U32 u32BufSize)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        g_pAIAOTxReg[u32ChnId]->TX_BUFF_SADDR = u32StartAddr;
        g_pAIAOTxReg[u32ChnId]->TX_BUFF_SIZE.bits.tx_buff_size = u32BufSize;
    }
    else
    {
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_SADDR = u32StartAddr;
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_SIZE.bits.tx_buff_size = u32BufSize;
    }
}

static HI_VOID AIAO_TXBUF_SetBufWptr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 u32Wptr)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        g_pAIAOTxReg[u32ChnId]->TX_BUFF_WPTR.bits.tx_buff_wptr = u32Wptr;
        //printk("tx_enable=%d,tx_disable_done=%d\n",g_pAIAOTxReg[u32ChnId]->TX_DSP_CTRL.bits.tx_enable,g_pAIAOTxReg[u32ChnId]->TX_DSP_CTRL.bits.tx_disable_done);
        //printk("tx_buff_wptr=0x%x\n",g_pAIAOTxReg[u32ChnId]->TX_BUFF_WPTR.bits.tx_buff_wptr);
    }
    else
    {
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_WPTR.bits.tx_buff_wptr = u32Wptr;
        //printk("spdif tx_buff_wptr=0x%x\n",g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_WPTR.bits.tx_buff_wptr);
    }
}

static HI_VOID AIAO_TXBUF_SetBufRptr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 u32Rptr)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        g_pAIAOTxReg[u32ChnId]->TX_BUFF_RPTR.bits.tx_buff_rptr = u32Rptr;
        //printk("u32Rptr=0x%x,tx_buff_rptr=0x%x\n",u32Rptr,g_pAIAOTxReg[u32ChnId]->TX_BUFF_RPTR.bits.tx_buff_rptr);
    }
    else
    {
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_RPTR.bits.tx_buff_rptr = u32Rptr;
       // printk("u32Rptr,=0x%x,spdif tx_buff_rptr=0x%x\n",u32Rptr,g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_RPTR.bits.tx_buff_rptr);
    }
}

static HI_VOID AIAO_TXBUF_GetBufWptr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32Wptr)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        *pu32Wptr = g_pAIAOTxReg[u32ChnId]->TX_BUFF_WPTR.bits.tx_buff_wptr;
    }
    else
    {
        *pu32Wptr = g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_WPTR.bits.tx_buff_wptr;
    }
}

static HI_VOID AIAO_TXBUF_GetBufRptr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32Rptr)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        *pu32Rptr = g_pAIAOTxReg[u32ChnId]->TX_BUFF_RPTR.bits.tx_buff_rptr;
    }
    else
    {
        *pu32Rptr = g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_RPTR.bits.tx_buff_rptr;
    }
}

static HI_VOID AIAO_TXBUF_GetBufRptrAddr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32RptrAddr)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        *pu32RptrAddr = (HI_U32)(&(g_pAIAOTxReg[u32ChnId]->TX_BUFF_RPTR.u32));
    }
    else
    {
        *pu32RptrAddr = (HI_U32)(&(g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_RPTR.u32));
    }
}

static HI_VOID AIAO_TXBUF_GetBufWptrAddr(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32WptrAddr)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        *pu32WptrAddr = (HI_U32)(&(g_pAIAOTxReg[u32ChnId]->TX_BUFF_WPTR.u32));
    }
    else
    {
        *pu32WptrAddr = (HI_U32)(&(g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_WPTR.u32));
    }
}

static HI_VOID AIAO_TXBUF_SetBufTransSize(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 u32PeriodSize)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        g_pAIAOTxReg[u32ChnId]->TX_TRANS_SIZE.bits.tx_trans_size = u32PeriodSize;
    }
    else
    {
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_TRANS_SIZE.bits.tx_trans_size = u32PeriodSize;
    }
}

static HI_VOID AIAO_TXBUF_SetBufAlemptySize(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 u32AlemptySize)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        g_pAIAOTxReg[u32ChnId]->TX_BUFF_ALEMPTY_TH.bits.tx_buff_alempty_th = u32AlemptySize;
    }
    else
    {
        g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BUFF_ALEMPTY_TH.bits.tx_buff_alempty_th = u32AlemptySize;
    }
}

#if 0
HI_VOID AIAO_TXBUF_GetBufRptrTmp(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32RptrTmp)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        *pu32RptrTmp = g_pAIAOTxReg[u32ChnId]->TX_RPTR_TMP.bits.tx_rptr_tmp;
    }
    else
    {
        *pu32RptrTmp = g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_RPTR_TMP.bits.tx_rptr_tmp;
    }
}

#endif

static HI_VOID AIAO_TXBUF_GetDebugBCLKCnt(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32DbgBCLKCnt)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        *pu32DbgBCLKCnt = g_pAIAOTxReg[u32ChnId]->TX_BCLK_CNT.bits.bclk_count;
    }
    else
    {
        *pu32DbgBCLKCnt = g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_BCLK_CNT.bits.bclk_count;
    }
}

static HI_VOID AIAO_TXBUF_GetDebugFCLKCnt(HI_U32 u32ChnId, HI_S32 TxType, HI_U32 *pu32DbgFCLKCnt)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        *pu32DbgFCLKCnt = g_pAIAOTxReg[u32ChnId]->TX_WS_CNT.bits.ws_count;
    }
    else
    {
        *pu32DbgFCLKCnt = g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_WS_CNT.bits.ws_count;
    }
}

/* tx interrupt */
#if 0
static HI_VOID  AIAO_TXBUF_SetInt(HI_U32 u32ChnId, HI_S32 TxType, AIAO_TX_INTMODE_E eIntMode, HI_S32 bEn)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        switch (eIntMode)
        {
        case AIAO_TXINT0_BUF_TRANSFINISH:
            g_pAIAOTxReg[u32ChnId]->TX_INT_ENA.bits.tx_trans_int_ena = bEn;
            break;
        case AIAO_TXINT1_BUF_EMPTY:
            g_pAIAOTxReg[u32ChnId]->TX_INT_ENA.bits.tx_empty_int_ena = bEn;
            break;
        case AIAO_TXINT2_BUF_AEMPTY:
            g_pAIAOTxReg[u32ChnId]->TX_INT_ENA.bits.tx_alempty_int_ena = bEn;
            break;
        case AIAO_TXINT3_BUF_FIFOEMPTY:
            g_pAIAOTxReg[u32ChnId]->TX_INT_ENA.bits.tx_bfifo_empty_int_ena = bEn;
            break;
        case AIAO_TXINT4_IF_FIFOEMPTY:
            g_pAIAOTxReg[u32ChnId]->TX_INT_ENA.bits.tx_ififo_empty_int_ena = bEn;
            break;
        case AIAO_TXINT5_STOP_DONE:
            g_pAIAOTxReg[u32ChnId]->TX_INT_ENA.bits.tx_stop_int_ena = bEn;
            break;
        case AIAO_TXINT6_MUTEFADE_DONE:
            g_pAIAOTxReg[u32ChnId]->TX_INT_ENA.bits.tx_mfade_int_ena = bEn;
            break;
        case AIAO_TXINT7_PAUSEFADE_DONE:
            g_pAIAOTxReg[u32ChnId]->TX_INT_ENA.bits.tx_pfate_int_ena = bEn;
            break;
        default:
            break;
        }
    }
    else
    {
        switch (eIntMode)
        {
        case AIAO_TXINT0_BUF_TRANSFINISH:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_ENA.bits.tx_trans_int_ena = bEn;
            break;
        case AIAO_TXINT1_BUF_EMPTY:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_ENA.bits.tx_empty_int_ena = bEn;
            break;
        case AIAO_TXINT2_BUF_AEMPTY:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_ENA.bits.tx_alempty_int_ena = bEn;
            break;
        case AIAO_TXINT3_BUF_FIFOEMPTY:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_ENA.bits.tx_bfifo_empty_int_ena = bEn;
            break;
        case AIAO_TXINT4_IF_FIFOEMPTY:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_ENA.bits.tx_ififo_empty_int_ena = bEn;
            break;
        case AIAO_TXINT5_STOP_DONE:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_ENA.bits.tx_stop_int_ena = bEn;
            break;
        case AIAO_TXINT6_MUTEFADE_DONE:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_ENA.bits.tx_mfade_int_ena = bEn;
            break;
        case AIAO_TXINT7_PAUSEFADE_DONE:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_ENA.bits.tx_pfate_int_ena = bEn;
            break;
        default:
            break;
        }
    }
}

static HI_VOID  AIAO_TXBUF_ClrInt(HI_U32 u32ChnId, HI_S32 TxType, AIAO_TX_INTMODE_E eIntMode)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        switch (eIntMode)
        {
        case AIAO_TXINT0_BUF_TRANSFINISH:
            g_pAIAOTxReg[u32ChnId]->TX_INT_CLR.bits.tx_trans_int_clear = 1;
            break;
        case AIAO_TXINT1_BUF_EMPTY:
            g_pAIAOTxReg[u32ChnId]->TX_INT_CLR.bits.tx_empty_int_clear = 1;
            break;
        case AIAO_TXINT2_BUF_AEMPTY:
            g_pAIAOTxReg[u32ChnId]->TX_INT_CLR.bits.tx_alempty_int_clear = 1;
            break;
        case AIAO_TXINT3_BUF_FIFOEMPTY:
            g_pAIAOTxReg[u32ChnId]->TX_INT_CLR.bits.tx_bfifo_empty_int_clear = 1;
            break;
        case AIAO_TXINT4_IF_FIFOEMPTY:
            g_pAIAOTxReg[u32ChnId]->TX_INT_CLR.bits.tx_ififo_empty_int_clear = 1;
            break;
        case AIAO_TXINT5_STOP_DONE:
            g_pAIAOTxReg[u32ChnId]->TX_INT_CLR.bits.tx_stop_int_clear = 1;
            break;
        case AIAO_TXINT6_MUTEFADE_DONE:
            g_pAIAOTxReg[u32ChnId]->TX_INT_CLR.bits.tx_mfade_int_clear = 1;
            break;
        case AIAO_TXINT7_PAUSEFADE_DONE:
            g_pAIAOTxReg[u32ChnId]->TX_INT_CLR.bits.tx_pfate_int_clear = 1;
            break;
        default:
            break;
        }
    }
    else
    {
        switch (eIntMode)
        {
        case AIAO_TXINT0_BUF_TRANSFINISH:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_CLR.bits.tx_trans_int_clear = 1;
            break;
        case AIAO_TXINT1_BUF_EMPTY:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_CLR.bits.tx_empty_int_clear = 1;
            break;
        case AIAO_TXINT2_BUF_AEMPTY:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_CLR.bits.tx_alempty_int_clear = 1;
            break;
        case AIAO_TXINT3_BUF_FIFOEMPTY:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_CLR.bits.tx_bfifo_empty_int_clear = 1;
            break;
        case AIAO_TXINT4_IF_FIFOEMPTY:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_CLR.bits.tx_ififo_empty_int_clear = 1;
            break;
        case AIAO_TXINT5_STOP_DONE:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_CLR.bits.tx_stop_int_clear = 1;
            break;
        case AIAO_TXINT6_MUTEFADE_DONE:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_CLR.bits.tx_mfade_int_clear = 1;
            break;
        case AIAO_TXINT7_PAUSEFADE_DONE:
            g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_CLR.bits.tx_pfate_int_clear = 1;
            break;
        default:
            break;
        }
    }
}

static HI_S32  AIAO_TXBUF_GetIntStatus(HI_U32 u32ChnId, HI_S32 TxType, AIAO_TX_INTMODE_E eIntMode)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        switch (eIntMode)
        {
        case AIAO_TXINT0_BUF_TRANSFINISH:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_STATUS.bits.tx_trans_int_status;
        case AIAO_TXINT1_BUF_EMPTY:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_STATUS.bits.tx_empty_int_status;
        case AIAO_TXINT2_BUF_AEMPTY:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_STATUS.bits.tx_alempty_int_status;
        case AIAO_TXINT3_BUF_FIFOEMPTY:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_STATUS.bits.tx_bfifo_empty_int_status;
        case AIAO_TXINT4_IF_FIFOEMPTY:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_STATUS.bits.tx_ififo_empty_int_status;
        case AIAO_TXINT5_STOP_DONE:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_STATUS.bits.tx_stop_int_status;
        case AIAO_TXINT6_MUTEFADE_DONE:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_STATUS.bits.tx_mfade_int_status;
        case AIAO_TXINT7_PAUSEFADE_DONE:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_STATUS.bits.tx_pfate_int_status;
        default:
            return 0;
        }
    }
    else
    {
        switch (eIntMode)
        {
        case AIAO_TXINT0_BUF_TRANSFINISH:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_STATUS.bits.tx_trans_int_status;
        case AIAO_TXINT1_BUF_EMPTY:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_STATUS.bits.tx_empty_int_status;
        case AIAO_TXINT2_BUF_AEMPTY:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_STATUS.bits.tx_alempty_int_status;
        case AIAO_TXINT3_BUF_FIFOEMPTY:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_STATUS.bits.tx_bfifo_empty_int_status;
        case AIAO_TXINT4_IF_FIFOEMPTY:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_STATUS.bits.tx_ififo_empty_int_status;
        case AIAO_TXINT5_STOP_DONE:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_STATUS.bits.tx_stop_int_status;
        case AIAO_TXINT6_MUTEFADE_DONE:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_STATUS.bits.tx_mfade_int_status;
        case AIAO_TXINT7_PAUSEFADE_DONE:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_STATUS.bits.tx_pfate_int_status;
        default:
            return 0;
        }
    }
}

static HI_S32  AIAO_TXBUF_GetIntRawStatus(HI_U32 u32ChnId, HI_S32 TxType, AIAO_TX_INTMODE_E eIntMode)
{
    if (AIAO_MODE_TXI2S == TxType)
    {
        switch (eIntMode)
        {
        case AIAO_TXINT0_BUF_TRANSFINISH:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_RAW.bits.tx_trans_int_raw;
        case AIAO_TXINT1_BUF_EMPTY:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_RAW.bits.tx_empty_int_raw;
        case AIAO_TXINT2_BUF_AEMPTY:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_RAW.bits.tx_alempty_int_raw;
        case AIAO_TXINT3_BUF_FIFOEMPTY:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_RAW.bits.tx_bfifo_empty_int_raw;
        case AIAO_TXINT4_IF_FIFOEMPTY:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_RAW.bits.tx_ififo_empty_int_raw;
        case AIAO_TXINT5_STOP_DONE:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_RAW.bits.tx_stop_int_raw;
        case AIAO_TXINT6_MUTEFADE_DONE:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_RAW.bits.tx_mfade_int_raw;
        case AIAO_TXINT7_PAUSEFADE_DONE:
            return g_pAIAOTxReg[u32ChnId]->TX_INT_RAW.bits.tx_pfate_int_raw;
        default:
            return 0;
        }
    }
    else
    {
        switch (eIntMode)
        {
        case AIAO_TXINT0_BUF_TRANSFINISH:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_RAW.bits.tx_trans_int_raw;
        case AIAO_TXINT1_BUF_EMPTY:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_RAW.bits.tx_empty_int_raw;
        case AIAO_TXINT2_BUF_AEMPTY:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_RAW.bits.tx_alempty_int_raw;
        case AIAO_TXINT3_BUF_FIFOEMPTY:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_RAW.bits.tx_bfifo_empty_int_raw;
        case AIAO_TXINT4_IF_FIFOEMPTY:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_RAW.bits.tx_ififo_empty_int_raw;
        case AIAO_TXINT5_STOP_DONE:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_RAW.bits.tx_stop_int_raw;
        case AIAO_TXINT6_MUTEFADE_DONE:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_RAW.bits.tx_mfade_int_raw;
        case AIAO_TXINT7_PAUSEFADE_DONE:
            return g_pAIAOTxSpdifReg[u32ChnId]->SPDIFTX_INT_RAW.bits.tx_pfate_int_raw;
        default:
            return 0;
        }
    }
}

#endif

static HI_VOID AIAO_RXBUF_SetBufAddrAndSize(HI_U32 u32ChnId, HI_U32 u32StartAddr, HI_U32 u32BufSize)
{
    g_pAIAORxReg[u32ChnId]->RX_BUFF_SADDR = u32StartAddr;
    g_pAIAORxReg[u32ChnId]->RX_BUFF_SIZE.bits.rx_buff_size = u32BufSize;
}

static HI_VOID AIAO_RXBUF_SetBufWptr(HI_U32 u32ChnId, HI_U32 u32Wptr)
{
    g_pAIAORxReg[u32ChnId]->RX_BUFF_WPTR.bits.rx_buff_wptr = u32Wptr;
    
    //printk("rx_enable=%d,rx_disable_done=%d\n",g_pAIAORxReg[u32ChnId]->RX_DSP_CTRL.bits.rx_enable,g_pAIAORxReg[u32ChnId]->RX_DSP_CTRL.bits.rx_disable_done);
    //printk("u32Wptr=0x%x,rx_buff_wptr=0x%x\n",u32Wptr,g_pAIAORxReg[u32ChnId]->RX_BUFF_WPTR.bits.rx_buff_wptr);
}

static HI_VOID AIAO_RXBUF_SetBufRptr(HI_U32 u32ChnId, HI_U32 u32Rptr)
{
    g_pAIAORxReg[u32ChnId]->RX_BUFF_RPTR.bits.rx_buff_rptr = u32Rptr;
    //printk("u32Rptr=0x%x,rx_buff_rptr=0x%x\n",u32Rptr,g_pAIAORxReg[u32ChnId]->RX_BUFF_RPTR.bits.rx_buff_rptr);
}

static HI_VOID AIAO_RXBUF_GetBufWptr(HI_U32 u32ChnId, HI_U32 *pu32Wptr)
{
    *pu32Wptr = g_pAIAORxReg[u32ChnId]->RX_BUFF_WPTR.bits.rx_buff_wptr;
}

static HI_VOID AIAO_RXBUF_GetBufRptr(HI_U32 u32ChnId, HI_U32 *pu32Rptr)
{
    *pu32Rptr = g_pAIAORxReg[u32ChnId]->RX_BUFF_RPTR.bits.rx_buff_rptr;
}

static HI_VOID  AIAO_RXBUF_GetBufWptrAddr(HI_U32 u32ChnId, HI_U32 *pu32WptrAddr)
{
    *pu32WptrAddr = (HI_U32)(&(g_pAIAORxReg[u32ChnId]->RX_BUFF_WPTR.u32));
}

static HI_VOID  AIAO_RXBUF_GetBufRptrAddr(HI_U32 u32ChnId, HI_U32 *pu32RptrAddr)
{
    *pu32RptrAddr = (HI_U32)(&(g_pAIAORxReg[u32ChnId]->RX_BUFF_RPTR.u32));
}

static HI_VOID AIAO_RXBUF_SetBufTransSize(HI_U32 u32ChnId, HI_U32 u32PeriodSize)
{
    g_pAIAORxReg[u32ChnId]->RX_TRANS_SIZE.bits.rx_trans_size = u32PeriodSize;
}

static HI_VOID AIAO_RXBUF_SetBufAlfullSize(HI_U32 u32ChnId, HI_U32 u32AlfullSize)
{
    g_pAIAORxReg[u32ChnId]->RX_BUFF_ALFULL_TH.bits.rx_buff_alfull_th = u32AlfullSize;
}

/*
HI_VOID AIAO_RXBUF_GetBufWptrTmp(HI_U32 u32ChnId, HI_U32 *pu32WptrTmp)
{
 *pu32WptrTmp = g_pAIAORxReg[u32ChnId]->RX_WPTR_TMP.bits.rx_wptr_tmp;
}
 */

static HI_VOID AIAO_RXBUF_GetDebugBCLKCnt(HI_U32 u32ChnId, HI_U32 *pu32DbgBCLKCnt)
{
    *pu32DbgBCLKCnt = g_pAIAORxReg[u32ChnId]->RX_BCLK_CNT.bits.bclk_count;
}

static HI_VOID AIAO_RXBUF_GetDebugFCLKCnt(HI_U32 u32ChnId, HI_U32 *pu32DbgFCLKCnt)
{
    *pu32DbgFCLKCnt = g_pAIAORxReg[u32ChnId]->RX_WS_CNT.bits.ws_count;
}

/* rx interrupt */
#if 0
static HI_VOID  AIAO_RXBUF_SetInt(HI_U32 u32ChnId, AIAO_RX_INTMODE_E eIntMode, HI_S32 bEn)
{
    switch (eIntMode)
    {
    case AIAO_RXINT0_BUF_TRANSFINISH:
        g_pAIAORxReg[u32ChnId]->RX_INT_ENA.bits.rx_trans_int_ena = bEn;
        break;
    case AIAO_RXINT1_BUF_FULL:
        g_pAIAORxReg[u32ChnId]->RX_INT_ENA.bits.rx_full_int_ena = bEn;
        break;
    case AIAO_RXINT2_BUF_AFULL:
        g_pAIAORxReg[u32ChnId]->RX_INT_ENA.bits.rx_alfull_int_ena = bEn;
        break;
    case AIAO_RXINT3_BUF_FIFOFULL:
        g_pAIAORxReg[u32ChnId]->RX_INT_ENA.bits.rx_bfifo_full_int_ena = bEn;
        break;
    case AIAO_RXINT4_IF_FIFOFULL:
        g_pAIAORxReg[u32ChnId]->RX_INT_ENA.bits.rx_ififo_full_int_ena = bEn;
        break;
    case AIAO_RXINT5_STOP_DONE:
        g_pAIAORxReg[u32ChnId]->RX_INT_ENA.bits.rx_stop_int_ena = bEn;
        break;
    default:
        break;
    }
}

static HI_VOID  AIAO_RXBUF_ClrInt(HI_U32 u32ChnId, AIAO_RX_INTMODE_E eIntMode)
{
    switch (eIntMode)
    {
    case AIAO_RXINT0_BUF_TRANSFINISH:
        g_pAIAORxReg[u32ChnId]->RX_INT_CLR.bits.rx_trans_int_clear = 1;
        break;
    case AIAO_RXINT1_BUF_FULL:
        g_pAIAORxReg[u32ChnId]->RX_INT_CLR.bits.rx_full_int_clear = 1;
        break;
    case AIAO_RXINT2_BUF_AFULL:
        g_pAIAORxReg[u32ChnId]->RX_INT_CLR.bits.rx_alfull_int_clear = 1;
        break;
    case AIAO_RXINT3_BUF_FIFOFULL:
        g_pAIAORxReg[u32ChnId]->RX_INT_CLR.bits.rx_bfifo_full_int_clear = 1;
        break;
    case AIAO_RXINT4_IF_FIFOFULL:
        g_pAIAORxReg[u32ChnId]->RX_INT_CLR.bits.rx_ififo_full_int_clear = 1;
        break;
    case AIAO_RXINT5_STOP_DONE:
        g_pAIAORxReg[u32ChnId]->RX_INT_CLR.bits.Reserved_0 = 1;
        break;
    default:
        break;
    }
}

static HI_S32  AIAO_RXBUF_GetIntStatus(HI_U32 u32ChnId, AIAO_RX_INTMODE_E eIntMode)
{
    switch (eIntMode)
    {
    case AIAO_RXINT0_BUF_TRANSFINISH:
        return g_pAIAORxReg[u32ChnId]->RX_INT_STATUS.bits.rx_trans_int_status;
    case AIAO_RXINT1_BUF_FULL:
        return g_pAIAORxReg[u32ChnId]->RX_INT_STATUS.bits.rx_full_int_status;
    case AIAO_RXINT2_BUF_AFULL:
        return g_pAIAORxReg[u32ChnId]->RX_INT_STATUS.bits.rx_alfull_int_status;
    case AIAO_RXINT3_BUF_FIFOFULL:
        return g_pAIAORxReg[u32ChnId]->RX_INT_STATUS.bits.rx_bfifo_full_int_status;
    case AIAO_RXINT4_IF_FIFOFULL:
        return g_pAIAORxReg[u32ChnId]->RX_INT_STATUS.bits.rx_ififo_full_int_status;
    case AIAO_RXINT5_STOP_DONE:
        return g_pAIAORxReg[u32ChnId]->RX_INT_STATUS.bits.rx_stop_int_status;
    default:
        return 0;
    }
}

static HI_S32  AIAO_RXBUF_GetIntRawStatus(HI_U32 u32ChnId, AIAO_RX_INTMODE_E eIntMode)
{
    switch (eIntMode)
    {
    case AIAO_RXINT0_BUF_TRANSFINISH:
        return g_pAIAORxReg[u32ChnId]->RX_INT_RAW.bits.rx_trans_int_raw;
    case AIAO_RXINT1_BUF_FULL:
        return g_pAIAORxReg[u32ChnId]->RX_INT_RAW.bits.rx_full_int_raw;
    case AIAO_RXINT2_BUF_AFULL:
        return g_pAIAORxReg[u32ChnId]->RX_INT_RAW.bits.rx_alfull_int_raw;
    case AIAO_RXINT3_BUF_FIFOFULL:
        return g_pAIAORxReg[u32ChnId]->RX_INT_RAW.bits.rx_bfifo_full_int_raw;
    case AIAO_RXINT4_IF_FIFOFULL:
        return g_pAIAORxReg[u32ChnId]->RX_INT_RAW.bits.rx_ififo_full_int_raw;
    case AIAO_RXINT5_STOP_DONE:
        return g_pAIAORxReg[u32ChnId]->RX_INT_RAW.bits.rx_stop_int_raw;
    default:
        return 0;
    }
}

#endif

/*****************************************************************************
 Description  : SPDIF IP HAL API
*****************************************************************************/

HI_VOID AIAO_SPDIF_HAL_SetMode(AIAO_PORT_ID_E enPortID, AIAO_SPDIF_MODE_E eMode)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    if (AIAO_SPDIF_MODE_COMPRESSED == eMode)
    {
        /* passthrough */
        g_pAIAOSpdiferReg[ChnId]->SPDIF_CONFIG.u32 = 1;
        g_pAIAOSpdiferReg[ChnId]->SPDIF_CH_STATUS1.u32 = 0x0606;
    }
    else
    {
        /* PCM */
        g_pAIAOSpdiferReg[ChnId]->SPDIF_CONFIG.u32 = 0;
        g_pAIAOSpdiferReg[ChnId]->SPDIF_CH_STATUS1.u32 = 0x0404;
    }

    return;
}

HI_VOID AIAO_SPDIF_HAL_SetEnable(AIAO_PORT_ID_E enPortID, HI_S32 bEn)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    g_pAIAOSpdiferReg[ChnId]->SPDIF_CTRL.bits.spdif_en = bEn;

    return;
}

HI_VOID AIAO_SPDIF_HAL_SetUnknow(AIAO_PORT_ID_E enPortID)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    g_pAIAOSpdiferReg[ChnId]->SPDIF_CH_STATUS3.u32 = 0x2010;

    return;
}


HI_VOID AIAO_SPDIF_HAL_SetBitWidth(AIAO_PORT_ID_E enPortID, AIAO_BITDEPTH_E enBitwidth)
{
    HI_U32 tmp;
    HI_U32 maxsamplebits;
    HI_U32 cursamplebits;
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (enBitwidth)
    {
    case AIAO_BIT_DEPTH_16:
        cursamplebits = 0x1;
        maxsamplebits = 0;
        break;
    case AIAO_BIT_DEPTH_24:
        cursamplebits = 0x5;
        maxsamplebits = 1;
        break;
    default:
        cursamplebits = 0x1;
        maxsamplebits = 0;
        HI_WARN_AIAO("Invaild Bitwidth For Spdif %d\n", enBitwidth);
    }

    tmp  = g_pAIAOSpdiferReg[ChnId]->SPDIF_CH_STATUS5.u32;
    tmp &= (~0x1);
    tmp |= maxsamplebits;
    tmp &= (~(0x1 << 8));
    tmp |= ((maxsamplebits) << 8);
    tmp &= (0xfffffff1);
    tmp |= (cursamplebits << 1);
    tmp &= (0xfffff1ff);
    tmp |= ((cursamplebits) << 9);
    g_pAIAOSpdiferReg[ChnId]->SPDIF_CH_STATUS5.u32 = tmp;
}

HI_VOID AIAO_SPDIF_HAL_SetSamplerate(AIAO_PORT_ID_E enPortID, AIAO_SAMPLE_RATE_E enSampleRate)
{
    HI_U32 playsamplerate;
    HI_U32 orgsamplerate;
    HI_U32 tmp;
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (enSampleRate)
    {
    case AIAO_SAMPLE_RATE_32K:
        playsamplerate = 0x3;
        orgsamplerate = 0xc;
        break;
    case AIAO_SAMPLE_RATE_44K:
        playsamplerate = 0x0;
        orgsamplerate = 0xf;
        break;
    case AIAO_SAMPLE_RATE_48K:
        playsamplerate = 0x2;
        orgsamplerate = 0xd;
        break;
    case AIAO_SAMPLE_RATE_88K:
        playsamplerate = 0x8;
        orgsamplerate = 0x7;
        break;
    case AIAO_SAMPLE_RATE_96K:
        playsamplerate = 0xa;
        orgsamplerate = 0x5;
        break;
    case AIAO_SAMPLE_RATE_176K:
        playsamplerate = 0xc;
        orgsamplerate = 0xf;
        break;
    case AIAO_SAMPLE_RATE_192K:
        playsamplerate = 0xe;
#if 1
        orgsamplerate = 0xd;
#else
        orgsamplerate = 0xd;/* EAC3 should set the source sample rate  to 48kHz */
#endif
        break;
    default:
        playsamplerate = 0x2;
        orgsamplerate = 0xd;
    }

    /* config SPDIF IP channel status Reg for samplerate */
    tmp  = g_pAIAOSpdiferReg[ChnId]->SPDIF_CH_STATUS4.u32;
    tmp &= 0xf0f0;
    tmp |= playsamplerate;
    tmp |= (playsamplerate << 8);
    g_pAIAOSpdiferReg[ChnId]->SPDIF_CH_STATUS4.u32 = tmp;

    tmp  = g_pAIAOSpdiferReg[ChnId]->SPDIF_CH_STATUS5.u32;
    tmp &= 0x0f0f;
    tmp |= (orgsamplerate << 4);
    tmp |= (orgsamplerate << 12);
    g_pAIAOSpdiferReg[ChnId]->SPDIF_CH_STATUS5.u32 = tmp;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */
