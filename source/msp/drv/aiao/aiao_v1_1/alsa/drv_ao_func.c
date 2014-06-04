/*******************************************************************************
 *              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: drv_aiao_alsa_func.c
 * Description: aiao alsa interface func
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1    
 ********************************************************************************/
#include "drv_ao_func.h"
#include "hi_drv_ao.h"
#include "drv_ao_ioctl.h"
#include <linux/kernel.h>
#include <asm/io.h>
#include "drv_ao_private.h"
#include "hi_reg_common.h"

/************************ interface with aiao *******************************/
//DRV Interface
extern HI_S32 AO_DRV_Kopen(struct file  *file);
extern HI_S32 AO_DRV_Krelease(struct file  *file);
//SND Interface 
extern HI_S32 AOGetSndDefOpenAttr(HI_UNF_SND_ATTR_S *pstSndAttr);
extern HI_S32 AO_Snd_Kopen(AO_SND_Open_Param_S_PTR arg, struct file *file);
extern HI_S32 AO_Snd_Kclose(HI_UNF_SND_E  arg, struct file *file);

//TRACK Interface
extern HI_S32 AO_Track_Kcreate(AO_Track_Create_Param_S_PTR  arg, struct file *file);
extern HI_S32 AO_Track_Kdestory(HI_HANDLE  *arg);
extern HI_S32 AO_Track_Kstart(HI_HANDLE  *arg);
extern HI_S32 AO_Track_Kstop(HI_HANDLE  *arg);
extern HI_S32 AO_Track_Kflush(HI_HANDLE  *arg);

extern HI_S32 AO_Track_UpdateBufWptr(HI_U32 u32TrackID, HI_U32 *pu32WritePos);
extern HI_S32 AO_Track_FlushBuf(HI_U32 u32TrackID);
extern HI_S32 AO_Track_GetAipReadPos(HI_U32 u32TrackID, HI_U32 *pu32ReadPos);
//set volume
extern HI_S32 AO_SND_SetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S stGain);
//使能指定AE DMA  通道 传输
int aoe_dma_start(int dma_Index, void * p)
{
    return AO_Track_Kstart(&dma_Index);
}

//暂停指定AE DMA  通道 传输
int aoe_dma_stop(int dma_Index, void * p)
{
    return AO_Track_Kstop(&dma_Index);
}

// prepare 每次读写前/ XRUN 恢复  都会被调用保留该接口
int aoe_dma_prepare(int dma_Index, void * p)
{
    return AO_Track_Kflush(&dma_Index);     //TO CHECK
}


void clr_dsp_int(void)
{
    U_PERI_INT_DSP0TOA9 uTmpValue;
    uTmpValue.u32 = g_pstRegPeri->PERI_INT_DSP0TOA9.u32;
    uTmpValue.bits.int_swi_dsp0toa9 = 0;
    g_pstRegPeri->PERI_INT_DSP0TOA9.u32 = uTmpValue.u32;
}

int aoe_dma_sethwparam(int dma_Index, void *param)
{
    return 0;
}

//申请/释放一路AE DMA 资源
//Stream: DMA 传输方向
//Dma_Index: 返回通道数
int aoe_dma_requestchan(int *dma_index, struct file *file, void *arg)
{
    AO_Track_Create_Param_S stTrack;
    AO_BUF_ATTR_S *parg = (AO_BUF_ATTR_S *)arg;
    HI_S32 Ret;

    memset(&stTrack,0,sizeof(AO_Track_Create_Param_S));
    stTrack.bAlsaTrack = HI_TRUE;
    stTrack.enSound = HI_UNF_SND_0;
    stTrack.stAttr.enTrackType = HI_UNF_SND_TRACK_TYPE_SLAVE;
    stTrack.stAttr.u32BufLevelMs = 400;
    stTrack.stAttr.u32FadeinMs = 0;
    stTrack.stAttr.u32FadeoutMs = 0;
    //todo 
    //pstTrack->stAttr.u32BufLevelMs
    stTrack.stBuf.u32BufPhyAddr = parg->u32BufPhyAddr;
    stTrack.stBuf.u32BufVirAddr = parg->u32BufVirAddr;
    stTrack.stBuf.u32BufSize = parg->u32BufSize;

    Ret = AO_Track_Kcreate(&stTrack, file);
    *dma_index = stTrack.hTrack;

    return Ret;
}
int aoe_dma_releasechan(int dma_index)
{
    HI_S32 Ret;

    Ret = AO_Track_Kstop(&dma_index);
    if(HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    }

    return AO_Track_Kdestory(&dma_index);
}

int aoe_dma_getopendefparam(void *p)
{
    return AOGetSndDefOpenAttr((HI_UNF_SND_ATTR_S *)p);
}

int aoe_update_writeptr(int dma_index, HI_U32 *pu32WritePos)
{
    return AO_Track_UpdateBufWptr(dma_index, pu32WritePos);
}

int aoe_get_AipReadPos(int dma_index, HI_U32 *pu32ReadPos)
{
    return AO_Track_GetAipReadPos(dma_index, pu32ReadPos);
}

int aoe_dma_flushbuf(int dma_index)
{
    return AO_Track_FlushBuf(dma_index);
}

int  aoe_dma_open(void *p, struct file *file)
{

    AO_SND_Open_Param_S stAttr;
#if 1//def HI_ALSA_I2S_ONLY_SUPPORT
    memset(&stAttr,0,sizeof(AO_SND_Open_Param_S));
    stAttr.pAlsaPara = HI_NULL;    
#endif
    
    stAttr.enSound = HI_UNF_SND_0;
    memcpy(&stAttr.stAttr, (HI_UNF_SND_ATTR_S *)p, sizeof(HI_UNF_SND_ATTR_S));

    AO_DRV_Kopen(file);

    return AO_Snd_Kopen(&stAttr, file);
}

int  aoe_dma_close(struct file *file)
{
    AO_Snd_Kclose(HI_UNF_SND_0, file);

    return AO_DRV_Krelease(file);
}

int aoe_set_volume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S stGain)
{
	return AO_SND_SetVolume(enSound, enOutPort, stGain);
}

