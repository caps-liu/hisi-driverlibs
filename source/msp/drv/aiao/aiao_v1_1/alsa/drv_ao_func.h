/*******************************************************************************
 *              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: drv_aiao_alsa_func.h
 * Description: drv aiao alsa func h
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1    
 ********************************************************************************/

#ifndef __DRV_AIAO_ALSA_FUNC_H__
#define __DRV_AIAO_ALSA_FUNC_H__

#include "hi_type.h"
#include <linux/fs.h>
#include "hi_unf_sound.h"
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

//Playback
//暂停指定AE DMA  通道 传输
int aoe_dma_stop(int dma_Index, void * p);
//使能指定AE DMA  通道 传输
int aoe_dma_start(int dma_Index, void * p);
// prepare 每次读写前/ XRUN 恢复  都会被调用保留该接口
int aoe_dma_prepare(int dma_Index, void * p);
//获取指定AE DMA  通道读/写 相对地址(建议period_size对齐)
//int aoe_dma_offsetpos(int dma_Index, int *offset);
//为指定AE DMA  通道设置dma 中断回调函数
//Dma_Index 指定AE DMA  通道
//stream : captrue / palyback
//func: 中断回调函数
//data: 回调函数带入的数据
//int aoe_dma_setbufperiodsize(int dma_Index, int stream, int buffer_size, int period_size);

int aoe_dma_sethwparam(int dma_Index, void *hw_param);
//申请/释放一路AE DMA 资源
//Stream: DMA 传输方向
//Dma_Index: 返回通道数
int aoe_dma_requestchan(int *dma_index, struct file *file, void *arg);
int aoe_dma_releasechan(int dma_index);
//Playback
void clr_dsp_int(void);
int aoe_dma_getopendefparam(void *p);
int  aoe_dma_open(void *p, struct file *file);
int  aoe_dma_close(struct file *file);
int aoe_update_writeptr(int dma_index, HI_U32 *pu32WritePos);
int aoe_get_AipReadPos(int dma_index, HI_U32 *pu32ReadPos);
int aoe_dma_flushbuf(int dma_index);
//SND Control  set global port volume 
int aoe_set_volume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S stGain);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif 
