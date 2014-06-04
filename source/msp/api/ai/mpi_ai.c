/*****************************************************************************
*              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName: hi_aenc.c
* Description: Describe main functionality and purpose of this file.
*
* History:
* Version   Date         Author     DefectNum    Description
* 0.01      
*
*****************************************************************************/


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */


#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/poll.h>
#include <pthread.h>

#include "hi_type.h"
#include "hi_debug.h"
#include "hi_module.h"
#include "hi_mpi_mem.h"
#include "hi_drv_struct.h"
#include "hi_error_mpi.h"

#include "hi_mpi_ai.h"
#include "drv_ai_ioctl.h"


static HI_S32 g_s32AIFd = -1;
static const HI_CHAR g_acAIDevName[] = "/dev/" UMAP_DEVNAME_AI;


HI_S32 HI_MPI_AI_Init(HI_VOID)
{
    if (g_s32AIFd < 0)
    {
        g_s32AIFd = open(g_acAIDevName, O_RDWR, 0);
        if (g_s32AIFd < 0)    
        {
            HI_FATAL_AI("OpenAIDevice err\n");
            g_s32AIFd = -1;
            return HI_ERR_AI_NOT_INIT;
        }
    }

    return HI_SUCCESS;
}

HI_S32   HI_MPI_AI_DeInit(HI_VOID)
{
    if(g_s32AIFd > 0)  
    {
        close(g_s32AIFd);
        g_s32AIFd = -1;
    }

    return HI_SUCCESS;
}

HI_S32   HI_MPI_AI_GetDefaultAttr(HI_UNF_AI_E enAiPort, HI_UNF_AI_ATTR_S *pstAttr)
{
    HI_S32 s32Ret;
    AI_GetDfAttr_Param_S stAiGetDfAttr;

    CHECK_AI_NULL_PTR(pstAttr);
    stAiGetDfAttr.enAiPort = enAiPort;
    
    s32Ret =  ioctl(g_s32AIFd, CMD_AI_GEtDEFAULTATTR, &stAiGetDfAttr);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AI("AI GetDfAttr Failed 0x%x \n", s32Ret); 
    }

    memcpy(pstAttr, &stAiGetDfAttr.stAttr, sizeof(HI_UNF_AI_ATTR_S));

    return s32Ret;
}

HI_S32 HI_MPI_AI_SetAttr(HI_HANDLE hAI, HI_UNF_AI_ATTR_S *pstAttr)
{
    HI_S32 s32Ret;
    AI_Attr_Param_S stAiSetAttr;

    CHECK_AI_ID(hAI);
    CHECK_AI_NULL_PTR(pstAttr);

    stAiSetAttr.hAi = hAI;

    memcpy(&stAiSetAttr.stAttr, pstAttr, sizeof(HI_UNF_AI_ATTR_S));
    
    s32Ret = ioctl(g_s32AIFd, CMD_AI_SETATTR, &stAiSetAttr);
    
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AI("AI SetAttr Failed 0x%x \n", s32Ret); 
    }
    
    return s32Ret;
}

HI_S32 HI_MPI_AI_GetAttr(HI_HANDLE hAI, HI_UNF_AI_ATTR_S *pstAttr)
{
    
    HI_S32 s32Ret;
    AI_Attr_Param_S stAiGetAttr;

    CHECK_AI_ID(hAI);
    CHECK_AI_NULL_PTR(pstAttr);

    stAiGetAttr.hAi = hAI;
    
    s32Ret = ioctl(g_s32AIFd, CMD_AI_GETATTR, &stAiGetAttr);
    
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AI("AI GetAttr Failed 0x%x \n", s32Ret); 
    }
    
    memcpy(pstAttr, &stAiGetAttr.stAttr, sizeof(HI_UNF_AI_ATTR_S));
    
    return s32Ret;
    
}

HI_S32 HI_MPI_AI_Create(HI_UNF_AI_E enAiPort, HI_UNF_AI_ATTR_S *pstAttr, HI_HANDLE *phandle)
{
    HI_S32 s32Ret;

    CHECK_AI_NULL_PTR(pstAttr);
    CHECK_AI_NULL_PTR(phandle);

    AI_Create_Param_S stAiParam;
    AI_Buf_Param_S stAiBufInfo;
    
    stAiParam.enAiPort = enAiPort;
    stAiParam.bAlsaUse = HI_FALSE;
    stAiParam.pAlsaPara = NULL;

    memcpy(&stAiParam.stAttr, pstAttr, sizeof(HI_UNF_AI_ATTR_S));
    
    s32Ret = ioctl(g_s32AIFd, CMD_AI_CREATE, &stAiParam);
    
    if(HI_SUCCESS == s32Ret)
    {
        *phandle = stAiParam.hAi;
    }
    else
    {
        return s32Ret;
    }

    stAiBufInfo.hAi = stAiParam.hAi;

    s32Ret = ioctl(g_s32AIFd, CMD_AI_GETBUFINFO, &stAiBufInfo);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AI("GET AI BUF_INFO s32Ret=0x%x Failed \n", s32Ret);  
        goto ERR_CREAT;
    }   

    stAiBufInfo.stAiBuf.u32UserVirBaseAddr = (HI_S32)HI_MEM_Map(stAiBufInfo.stAiBuf.u32PhyBaseAddr, stAiBufInfo.stAiBuf.u32Size);

    s32Ret = ioctl(g_s32AIFd, CMD_AI_SETBUFINFO, &stAiBufInfo);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AI("SET AI BUF_INFO Failed 0x%x\n", s32Ret);  
        goto ERR_MMAP;
    }
    
    return s32Ret;
ERR_MMAP:
    HI_MEM_Unmap((HI_VOID *)stAiBufInfo.stAiBuf.u32PhyBaseAddr);
ERR_CREAT:
    ioctl(g_s32AIFd, CMD_AI_DESTROY, &stAiParam);
    return s32Ret;
}

HI_S32 HI_MPI_AI_Destroy(HI_HANDLE hAI)
{
    HI_S32 s32Ret;
    AI_Buf_Param_S stAiBufInfo;

    CHECK_AI_ID(hAI);

    stAiBufInfo.hAi = hAI;

    s32Ret = ioctl(g_s32AIFd, CMD_AI_GETBUFINFO, &stAiBufInfo);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AI("\n GET AI BUF_INFO s32Ret=0x%x Failed \n", s32Ret);
        return s32Ret;
    }
    else
    {
        HI_MEM_Unmap((HI_VOID *)stAiBufInfo.stAiBuf.u32UserVirBaseAddr);
    }

    return  ioctl(g_s32AIFd, CMD_AI_DESTROY, &hAI);
}

HI_S32 HI_MPI_AI_SetEnable(HI_HANDLE hAI, HI_BOOL bEnable)
{
    HI_S32 s32Ret;
    AI_Enable_Param_S stAiEnable;
    
    CHECK_AI_ID(hAI);
 
    stAiEnable.hAi = hAI;
    stAiEnable.bAiEnable = bEnable;

    s32Ret = ioctl(g_s32AIFd, CMD_AI_SETENABLE, &stAiEnable);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AI("ENABLE AI Failed 0x%x \n", s32Ret);  
    }   

    return s32Ret;
}

HI_S32 HI_MPI_AI_AcquireFrame(HI_HANDLE hAI, HI_UNF_AO_FRAMEINFO_S *pstFrame)
{
    HI_S32 s32Ret;
    AI_Frame_Param_S stAiGetFrame;
    AI_Buf_Param_S stAiBufInfo;

    CHECK_AI_ID(hAI);
    CHECK_AI_NULL_PTR(pstFrame);

    stAiBufInfo.hAi = hAI;
    stAiGetFrame.hAi = hAI;

    s32Ret = ioctl(g_s32AIFd, CMD_AI_GETBUFINFO, &stAiBufInfo);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AI("\n GET AI BUF_INFO s32Ret=0x%x Failed \n", s32Ret);  
        return s32Ret;
    }
    
    s32Ret = ioctl(g_s32AIFd, CMD_AI_ACQUIREFRAME, &stAiGetFrame);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AI("AI GetFrame Failed 0x%x \n", s32Ret);  
    }

    memcpy(pstFrame, &stAiGetFrame.stAiFrame, sizeof(HI_UNF_AO_FRAMEINFO_S));
    
    pstFrame->ps32PcmBuffer = (HI_S32 *)(stAiBufInfo.stAiBuf.u32UserVirBaseAddr);

    return s32Ret;
}

HI_S32 HI_MPI_AI_ReleaseFrame(HI_HANDLE hAI, HI_UNF_AO_FRAMEINFO_S *pstFrame)
{
    HI_S32 s32Ret;
    AI_Frame_Param_S stAiRleFrame;

    CHECK_AI_ID(hAI);
    CHECK_AI_NULL_PTR(pstFrame);

    stAiRleFrame.hAi = hAI;
    
    memcpy(&stAiRleFrame.stAiFrame, pstFrame, sizeof(HI_UNF_AO_FRAMEINFO_S));

    s32Ret = ioctl(g_s32AIFd, CMD_AI_RELEASEFRAME, &stAiRleFrame);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AI("AI ReleaseFrame Failed 0x%x \n", s32Ret);  
    }

    return s32Ret;
}


#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */
