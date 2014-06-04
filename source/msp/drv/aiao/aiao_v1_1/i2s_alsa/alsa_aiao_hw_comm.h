/*******************************************************************************
 *              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: drv comm
 * Description: alsa drv comm
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1    
 ********************************************************************************/
#ifndef __ALSA_AIAO_COMM_H__
#define __ALSA_AIAO_COMM_H__

#include <sound/soc.h>
#include <sound/pcm.h>
#if 1//def HI_ALSA_AI_SUPPORT
#include "hal_aiao_common.h"
#endif
//TODO 
#define CONFIG_AIAO_ALSA_PROC_SUPPORT
#define USE_DSP_ISR
//#define CONFIG_I2S_ALSA_VOLUMN_SUPPORT

#define AIAO_RATES (SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_11025 |\
	SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_22050 | SNDRV_PCM_RATE_44100 | \
	SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_88200 | SNDRV_PCM_RATE_96000)

#define AIAO_FORMATS (SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S20_3LE |\
	SNDRV_PCM_FMTBIT_S24_LE)






struct hisi_aiao_hwparams {
	unsigned int channels;		 /* channels */
	unsigned int rate;		        /* rate in Hz */
	snd_pcm_format_t format;	 /* SNDRV_PCM_FORMAT_* */
       unsigned int frame_size;
       unsigned int buffer_bytes;
	snd_pcm_uframes_t period_size;  /* period size */
	unsigned int periods;		          /* periods */
	snd_pcm_uframes_t buffer_size;  /* buffer size */
};

//private hisi audio data
struct hii2saudio_data {
    struct hisi_aiao_hwparams sthwparam;    //aiao hw params
    struct mutex mutex;
    
    int irq_num;       //interrupt num
    int first_irq;
    int open_cnt;    //snd open counter 

    int dma_index;
    
    int hw_readpos; //port read pointer
    int aoe_readpos; //aip read pointer
    int aoe_freesize;
    //todo
    int aoe_overwrite_cnt;
    
    struct file file;
    //isr
    #ifdef USE_DSP_ISR
    unsigned int local_isr_num;
    unsigned int aiao_isr_num;
    
    unsigned int isr_total_cnt;
    unsigned int isr_discard_cnt;
    #else
    #endif

    //ack
    unsigned int ack_cnt;
    unsigned int last_pos;
    
    unsigned int runtime_appl_ptr;  //cur pos
    unsigned int runtime_appl_offset;  
    unsigned int aoe_write_ptr;
    unsigned int aoe_write_offset;
    unsigned int aoe_updatewptr_offset;
    AIAO_IsrFunc *IsrAoProc;     //ISR func for alsa
	#if 1//def HI_ALSA_AI_SUPPORT
	int ai_handle;
	struct file cfile;
    unsigned int ack_c_cnt;    
	unsigned int ai_writepos;
    unsigned int ai_readpos;
	unsigned int last_c_pos;
    unsigned int current_c_pos;
    AIAO_IsrFunc *IsrAiProc;     //ISR func for alsa
    unsigned int isr_total_cnt_c;
	#endif   

#ifdef CONFIG_AIAO_ALSA_PROC_SUPPORT
    //pointer
    unsigned int  pointer_frame_offset;
    struct snd_info_entry *entry;
#endif

};

#ifdef CONFIG_ALSA_VOLUMN_SUPPORT
struct hiaudio_sw_volume {
    signed int v_all;
    signed int v_hdmi;
    signed int v_spdif;
    signed int v_adac;
    signed int v_i2s;
};
#endif

#endif
