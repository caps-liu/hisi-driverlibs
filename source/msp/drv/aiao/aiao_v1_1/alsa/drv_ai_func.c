
//#include "hi_drv_ao.h"
//#include "drv_ao_ioctl.h"
//#include <linux/kernel.h>
//#include <asm/io.h>
#ifdef HI_ALSA_AI_SUPPORT
#include "hal_aiao_common.h"
#include "hi_drv_ai.h"
#include "drv_ai_ioctl.h"
#include "hal_aiao.h"
#include "drv_ai_func.h"
#include "hi_drv_mmz.h"
#include "hi_drv_ai.h"
#include "hi_drv_proc.h"
#include "hi_drv_dev.h"
#include "drv_ai_private.h"
#endif


#ifdef HI_ALSA_AI_SUPPORT
extern    HI_S32 AIGetEnport(HI_HANDLE hAi,AIAO_PORT_ID_E *enPort);
extern  HI_S32 AI_GetDefaultAttr(HI_UNF_AI_E enAiPort, HI_UNF_AI_ATTR_S *pstAiAttr);
extern HI_S32 AIGetProcStatistics(AIAO_IsrFunc **pFunc);
extern  HI_S32 AI_ProcessCmd(HI_U32 cmd, HI_VOID *arg, AI_STATE_S *pState, HI_BOOL bUser);
extern HI_S32 AI_DRV_Open(struct inode *inode, struct file  *filp);
extern HI_S32 AI_DRV_Release(struct inode *inode, struct file  *filp);
extern long AI_DRV_Ioctl(struct file *file, HI_U32 cmd, unsigned long arg);


int hi_ai_alsa_update_readptr(int ai_handle,HI_U32 *pu32WritePos)
{
    AIAO_PORT_ID_E enPort;
        
    AIGetEnport(ai_handle,&enPort);    
    return HAL_AIAO_P_ALSA_UpdateRptr(enPort,NULL, *pu32WritePos);
}
void hi_ai_alsa_query_writepos(int ai_handle,HI_U32 *pos)
{
    AIAO_PORT_ID_E enPort;
    AIGetEnport(ai_handle,&enPort);    
   *pos = HAL_AIAO_P_ALSA_QueryWritePos(enPort);

}
void hi_ai_alsa_query_readpos(int ai_handle,HI_U32 *pos)
{
    AIAO_PORT_ID_E enPort;
        
    AIGetEnport(ai_handle,&enPort);    
   *pos = HAL_AIAO_P_ALSA_QueryReadPos(enPort);

}


int hi_ai_alsa_flush_buffer(int ai_handle)
{
    AIAO_PORT_ID_E enPort;
        
    AIGetEnport(ai_handle,&enPort);    
    return HAL_AIAO_P_ALSA_FLASH(enPort);
}

int hi_ai_alsa_get_proc_func(AIAO_IsrFunc **pFunc)
{

    return  AIGetProcStatistics(pFunc);

}



int hi_ai_alsa_get_attr(HI_UNF_AI_E enAiPort,void *p)
{
     
    return AI_GetDefaultAttr(enAiPort,(HI_UNF_AI_ATTR_S*)p);

}


long hi_ai_alsa_open(void *p,struct file* filep)

{
    long ret;
    AI_Create_Param_S* pstAiParam = (AI_Create_Param_S*) p;
    struct inode *inode = NULL;

    pstAiParam->bAlsaUse = HI_TRUE;	
    AI_DRV_Open(inode, filep);
    ret = AI_DRV_Ioctl(filep,CMD_AI_CREATE,(unsigned long)pstAiParam);
    return ret;
}

long hi_ai_alsa_setEnable(int ai_handle,struct file* filep,HI_BOOL bEnable)
{
    long ret;
    AI_Enable_Param_S stAiEnable;	
    
    stAiEnable.hAi = ai_handle;
    stAiEnable.bAiEnable = bEnable; 
    ret = AI_DRV_Ioctl(filep,CMD_AI_SETENABLE,(unsigned long)&stAiEnable);
    return ret;
}

long hi_ai_alsa_destroy(int ai_handle,struct file *filep)
{
    struct inode *inode = NULL;
    long ret;

    ret = AI_DRV_Ioctl(filep,CMD_AI_DESTROY,(unsigned long)&ai_handle);
    AI_DRV_Release(inode,filep);
    return ret;

}
#endif
