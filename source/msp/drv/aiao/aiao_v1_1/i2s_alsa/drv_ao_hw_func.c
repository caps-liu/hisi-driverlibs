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
#include "hal_aiao_common.h"

#include "drv_ao_hw_func.h"
#include "hi_drv_ao.h"
#include "drv_ao_ioctl.h"
#include <linux/kernel.h>
#include <asm/io.h>

#include "hal_aiao.h"


/************************ interface with aiao *******************************/
//DRV Interface

extern HI_S32 Alsa_AO_OpenDev(struct file  *file,void *p);
extern HI_S32 Alsa_AO_CloseDev(struct file  *file,HI_UNF_SND_E snd_idx);

extern int  ao_dma_close(struct file *file,HI_UNF_SND_E snd_idx);
extern HI_S32 AO_DRV_Kopen(struct file  *file);
extern HI_S32 AO_DRV_Krelease(struct file  *file);
//SND Interface 
extern HI_S32 AOGetSndDefOpenAttr(HI_UNF_SND_ATTR_S *pstSndAttr);
extern HI_S32 AO_Snd_Kopen(AO_SND_Open_Param_S_PTR arg, struct file *file);
extern HI_S32 AO_Snd_Kclose(HI_UNF_SND_E  arg, struct file *file);

extern HI_S32 AOSetProcStatistics(AIAO_IsrFunc *pFunc);

extern HI_S32 AOGetProcStatistics(AIAO_IsrFunc **pFunc);
extern HI_S32 AOGetEnport(HI_UNF_SND_E enSound,AIAO_PORT_ID_E *enPort);
extern HI_S32 AOGetHandel(HI_UNF_SND_E enSound,HI_HANDLE *hSndOp);

extern HI_S32 AlsaHwSndOpStop(HI_HANDLE hSndOp, HI_VOID *pstParams);

extern HI_S32 AlsaHwSndOpStart(HI_HANDLE hSndOp, HI_VOID *pstParams);

/*int hi_ao_alsa_update_readptr(HI_UNF_SND_E snd_idx,HI_U32 *pu32WritePos)
{
     AIAO_PORT_ID_E enPort;
     
     AOGetEnport(snd_idx,&enPort);  

     return HAL_AIAO_P_ALSA_UpdateRptr(enPort,NULL, *pu32WritePos);
}
void hi_ao_alsa_query_writepos(HI_UNF_SND_E snd_idx,HI_U32 *pos)
{
    AIAO_PORT_ID_E enPort;
    AOGetEnport(snd_idx,&enPort);  

   *pos = HI_U32HAL_AIAO_P_ALSA_QueryWritePos(enPort);

}

*/

int ao_dma_start(HI_UNF_SND_E snd_idx, void * p)
{
    HI_HANDLE hSndOp;
    int ret;
    
    ret = AOGetHandel(snd_idx,&hSndOp);
    if(ret != HI_SUCCESS )
    {
       return HI_FAILURE;
    }
    
    return AlsaHwSndOpStart(hSndOp, HI_NULL);
}

int ao_dma_stop(HI_UNF_SND_E snd_idx, void * p)
{
    int ret;
    HI_HANDLE hSndOp;
    
    ret = AOGetHandel(snd_idx,&hSndOp);
    if(ret != HI_SUCCESS )
    {
       return HI_FAILURE;
    }
    
    return AlsaHwSndOpStop(hSndOp, HI_NULL);
}

int ao_dma_sethwparam(void *param)
{
    HI_UNF_SND_ATTR_S *pstSndAttr = (HI_UNF_SND_ATTR_S *)param;
    pstSndAttr->u32PortNum = 0;

    pstSndAttr->enSampleRate = HI_UNF_SAMPLE_RATE_48K;
    #if 0//def HI_ALSA_HDMI_ONLY_SUPPORT
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].enOutPort = HI_UNF_SND_OUTPUTPORT_HDMI0;
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].unAttr.stHDMIAttr.pPara = HI_NULL;
    #else
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].enOutPort = HI_UNF_SND_OUTPUTPORT_I2S0;
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].unAttr.stI2sAttr.stAttr.bMaster = HI_TRUE;
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].unAttr.stI2sAttr.stAttr.enI2sMode = HI_UNF_I2S_STD_MODE;
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].unAttr.stI2sAttr.stAttr.enMclkSel = HI_UNF_I2S_MCLK_256_FS;
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].unAttr.stI2sAttr.stAttr.enBclkSel = HI_UNF_I2S_BCLK_4_DIV;
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].unAttr.stI2sAttr.stAttr.enChannel = HI_UNF_I2S_CHNUM_2;
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].unAttr.stI2sAttr.stAttr.enBitDepth = HI_UNF_I2S_BIT_DEPTH_16;
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge = HI_TRUE;
    pstSndAttr->stOutport[pstSndAttr->u32PortNum].unAttr.stI2sAttr.stAttr.enPcmDelayCycle = HI_UNF_I2S_PCM_1_DELAY;
    #endif
    pstSndAttr->u32PortNum++;

    return HI_TRUE;


}



int ao_dma_getopendefparam(void *p)
{
    return AOGetSndDefOpenAttr((HI_UNF_SND_ATTR_S *)p);
}



int hi_ao_alsa_update_writeptr(HI_UNF_SND_E snd_idx,HI_U32 *pu32WritePos)
{
    int ret;
    AIAO_PORT_ID_E enPort;
     
     ret = AOGetEnport(snd_idx,&enPort);  
     if(ret != HI_SUCCESS )
     {
        return HI_FAILURE;
     }

    return HAL_AIAO_P_ALSA_UpdateWptr(enPort,NULL, *pu32WritePos);
}



void hi_ao_alsa_query_readpos(HI_UNF_SND_E snd_idx,HI_U32 *pos)
{
    int ret;
    AIAO_PORT_ID_E enPort;
     
    ret = AOGetEnport(snd_idx,&enPort); 
    
   *pos = HAL_AIAO_P_ALSA_QueryReadPos(enPort);
}


int ao_dma_flushbuf(HI_UNF_SND_E snd_idx)
{
     int ret;
     AIAO_PORT_ID_E enPort; 
     
     ret = AOGetEnport(snd_idx,&enPort);  
     if(ret != HI_SUCCESS )
     {
        return HI_FAILURE;
     }
     
     return HAL_AIAO_P_ALSA_FLASH(enPort);   
}

int hi_ao_alsa_get_proc_func(AIAO_IsrFunc **pFunc)
{
    return  AOGetProcStatistics(pFunc);
}


int hi_ao_alsa_set_proc_func(AIAO_IsrFunc *pFunc)
{
    return  AOSetProcStatistics(pFunc);
}



int  ao_dma_open(void *p, struct file *file)
{
   int ret;

   ret = Alsa_AO_OpenDev(file,p);
   return ret;
    /*   AO_DRV_Kopen(file);

    return AO_Snd_Kopen((AO_SND_Open_Param_S*)p, file);*/
}

int  ao_dma_close(struct file *file,HI_UNF_SND_E snd_idx)
{

   int ret;

   ret = Alsa_AO_CloseDev(file,snd_idx);
   return ret;
   /*
    AO_Snd_Kclose(snd_idx, file);

    return AO_DRV_Krelease(file);*/


}

