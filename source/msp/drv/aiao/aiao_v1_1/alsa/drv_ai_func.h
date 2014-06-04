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

#ifndef __DRV_AI_ALSA_FUNC_H__
#define __DRV_AI_ALSA_FUNC_H__
#include <linux/fs.h>


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */
#ifdef HI_ALSA_AI_SUPPORT
long hi_ai_alsa_open(void *p,struct file* filep);
int hi_ai_alsa_update_readptr(int ai_handle,HI_U32 *pu32WritePos);
void hi_ai_alsa_query_readpos(int ai_handle,HI_U32 *pos);
int hi_ai_alsa_flush_buffer(int ai_handle);
void hi_ai_alsa_query_writepos(int ai_handle,HI_U32 *pos);
long hi_ai_alsa_destroy(int ai_handle,struct file *filep);
long hi_ai_alsa_setEnable(int ai_handle,struct file* filep,HI_BOOL bEnable);
int hi_ai_alsa_get_attr(HI_UNF_AI_E enAiPort,void *p);
int hi_ai_alsa_get_proc_func(AIAO_IsrFunc **pFunc);
#endif

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif 
