#include "hi_drv_vpss.h"
#include "vpss_ctrl.h"
#include "drv_vpss_ext.h"
#include "vpss_common.h"
#include "vpss_instance.h"
#include "hi_drv_module.h"
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

#define BUF_DBG_OUT 0
#define BUF_DBG_IN 0

static const HI_CHAR    g_VpssDevName[] = "/dev/"UMAP_DEVNAME_VPSS;

static VPSS_EXPORT_FUNC_S s_VpssExportFuncs =
{
    .pfnVpssGlobalInit = HI_DRV_VPSS_GlobalInit,
    .pfnVpssGlobalDeInit = HI_DRV_VPSS_GlobalDeInit,
    
    .pfnVpssGetDefaultCfg = HI_DRV_VPSS_GetDefaultCfg,
    .pfnVpssCreateVpss = HI_DRV_VPSS_CreateVpss,
    .pfnVpssDestroyVpss = HI_DRV_VPSS_DestroyVpss,
    .pfnVpssSetVpssCfg = HI_DRV_VPSS_SetVpssCfg,
    .pfnVpssGetVpssCfg = HI_DRV_VPSS_GetVpssCfg,

    .pfnVpssGetDefaultPortCfg = HI_DRV_VPSS_GetDefaultPortCfg,
    .pfnVpssCreatePort = HI_DRV_VPSS_CreatePort,
    .pfnVpssDestroyPort = HI_DRV_VPSS_DestroyPort,
    .pfnVpssGetPortCfg = HI_DRV_VPSS_GetPortCfg,
    .pfnVpssSetPortCfg = HI_DRV_VPSS_SetPortCfg,
    .pfnVpssEnablePort = HI_DRV_VPSS_EnablePort,

    .pfnVpssSendCommand = HI_DRV_VPSS_SendCommand,

    .pfnVpssGetPortFrame = HI_DRV_VPSS_GetPortFrame,    
    .pfnVpssRelPortFrame = HI_DRV_VPSS_RelPortFrame,

    .pfnVpssGetPortBufListState = HI_DRV_VPSS_GetPortBufListState,
    .pfnVpssCheckPortBufListFul = HI_NULL,

    .pfnVpssSetSourceMode = HI_DRV_VPSS_SetSourceMode,
    .pfnVpssPutImage = HI_DRV_VPSS_PutImage,
    .pfnVpssGetImage = HI_DRV_VPSS_GetImage,

    .pfnVpssRegistHook = HI_DRV_VPSS_RegistHook,
    .pfnVpssUpdatePqData = HI_DRV_VPSS_UpdatePqData     

};

HI_S32 HI_DRV_VPSS_Init(HI_VOID)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_DRV_MODULE_Register(HI_ID_VPSS,VPSS_NAME,(HI_VOID*)&s_VpssExportFuncs);
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("Regist HI_ID_VPSS failed\n");
        return HI_FAILURE;
    }
    
    s32Ret = VPSS_CTRL_RegistISR();
    if (s32Ret != HI_SUCCESS)
    {
        goto VPSS_Init_UnRegist_Module;
    }
    
    s32Ret = VPSS_CTRL_Init(DEF_HI_DRV_VPSS_VERSION);
    if (s32Ret != HI_SUCCESS)
    {
        goto VPSS_Init_UnRegist_IRQ;
    }

    s32Ret = VPSS_CTRL_CreateThread();
    if (s32Ret != HI_SUCCESS)
    {
        goto VPSS_Init_UnRegist_IRQ;
    }
    
    VPSS_CTRL_SetMceFlag(HI_TRUE);
    
    return HI_SUCCESS;
    
VPSS_Init_UnRegist_IRQ:
    VPSS_CTRL_UnRegistISR();
VPSS_Init_UnRegist_Module:
    HI_DRV_MODULE_UnRegister(HI_ID_VPSS);

    return HI_FAILURE;
}

HI_VOID HI_DRV_VPSS_Exit(HI_VOID)
{   
    
    VPSS_FATAL("Can't be supported\n");
    #if 0
    HI_S32 s32Ret;
	
    s32Ret = VPSS_CTRL_DelInit();
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("VPSS DelInit Error.\n");
    }
    
    VPSS_CTRL_UnRegistISR();

    s32Ret = VPSS_CTRL_DestoryThread();
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("VPSS DestoryThread Error.\n");
    }
    
    VPSS_HAL_CloseClock();
    
    s32Ret = HI_DRV_MODULE_UnRegister(HI_ID_VPSS);

    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("VPSS ModUnRegist Error.\n");
    }
    #endif
    
}
HI_S32 VPSS_DRV_Init(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;
    
#ifndef HI_MCE_SUPPORT
    s32Ret = HI_DRV_MODULE_Register(HI_ID_VPSS,VPSS_NAME,(HI_VOID*)&s_VpssExportFuncs);
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("Regist HI_ID_VPSS failed\n");
        return HI_FAILURE;
    }
    
    
    s32Ret = VPSS_CTRL_RegistISR();
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("VPSS_CTRL_RegistISR Failed\n");
        goto DRV_Init_Destory_Thread;
    }   
    
    s32Ret = VPSS_CTRL_Init(DEF_HI_DRV_VPSS_VERSION);
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("VPSS_CTRL_Init Failed\n");
        goto DRV_Init_UnRegist_IRQ;
    }
    s32Ret = VPSS_CTRL_CreateThread();
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("VPSS_CTRL_CreateThread Failed\n");
        goto DRV_Init_UnRegist_Module;
    } 

    
#endif
    s32Ret = VPSS_CTRL_InitDev();
    if (s32Ret == HI_SUCCESS)
    {
        return HI_SUCCESS;
    }
    else 
    {
        VPSS_FATAL("VPSS Dev Can't opened\n");
    }
    
#ifndef HI_MCE_SUPPORT
DRV_Init_UnRegist_IRQ:
    VPSS_CTRL_UnRegistISR();
    
DRV_Init_Destory_Thread:
    s32Ret = VPSS_CTRL_DestoryThread();
DRV_Init_UnRegist_Module:
    HI_DRV_MODULE_UnRegister(HI_ID_VPSS);
#endif
    
    return HI_FAILURE;
    
}

HI_VOID VPSS_DRV_Exit(HI_VOID)
{   
    HI_S32 s32Ret;
    
	s32Ret = VPSS_CTRL_DestoryThread();
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("VPSS DestoryThread Error.\n");
    }
    
    s32Ret = VPSS_CTRL_DelInit();
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("VPSS DelInit Error.\n");
    }
    VPSS_CTRL_UnRegistISR();

    VPSS_CTRL_DeInitDev();
    
    VPSS_HAL_CloseClock();
    
    s32Ret = HI_DRV_MODULE_UnRegister(HI_ID_VPSS);

    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("VPSS ModUnRegist Error.\n");
    }
}
HI_S32 VPSS_DRV_ModInit(HI_VOID)
{
    VPSS_DRV_Init();

#ifdef MODULE
    HI_PRINT("Load hi_vpss.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return HI_SUCCESS;
}

HI_VOID VPSS_DRV_ModExit(HI_VOID)
{    
    VPSS_DRV_Exit();
    
#ifdef MODULE
    HI_PRINT("Unload hi_vpss.ko success.\t(%s)\n", VERSION_STRING);
#endif
}

HI_S32 HI_DRV_VPSS_GlobalInit(HI_VOID)
{
    HI_S32 s32Ret;
    
    s32Ret = VPSS_CTRL_Init(DEF_HI_DRV_VPSS_VERSION);
    if (s32Ret == HI_FAILURE)
    {
        VPSS_FATAL("GlobalInit Error.\n");
    }
    return s32Ret;
      
}

HI_S32 HI_DRV_VPSS_GlobalDeInit(HI_VOID)
{
    HI_S32 s32Ret;
	
    s32Ret = VPSS_CTRL_DelInit();
    if (s32Ret == HI_FAILURE)
    {
        VPSS_FATAL("GlobalDeInit Error.\n");
    }
    return s32Ret;
   
}


HI_S32  HI_DRV_VPSS_GetDefaultCfg(HI_DRV_VPSS_CFG_S *pstVpssCfg)
{
    VPSS_INST_GetDefInstCfg(pstVpssCfg);

    return HI_SUCCESS;
}
HI_S32  HI_DRV_VPSS_CreateVpss(HI_DRV_VPSS_CFG_S *pstVpssCfg,VPSS_HANDLE *hVPSS)
{
    VPSS_HANDLE hInst;
    
    hInst = VPSS_CTRL_CreateInstance(pstVpssCfg);
    if(hInst != VPSS_INVALID_HANDLE)
    {
        *hVPSS = hInst;
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}
HI_S32  HI_DRV_VPSS_DestroyVpss(VPSS_HANDLE hVPSS)
{
    
    HI_S32 s32Ret;
    
    s32Ret = VPSS_CTRL_DestoryInstance(hVPSS);

    return s32Ret;
}



HI_S32  HI_DRV_VPSS_SetVpssCfg(VPSS_HANDLE hVPSS, HI_DRV_VPSS_CFG_S *pstVpssCfg)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);

    if(pstInstance)
    {
        s32Ret = VPSS_INST_SetInstCfg(pstInstance, pstVpssCfg);
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
    
}

HI_S32  HI_DRV_VPSS_GetVpssCfg(VPSS_HANDLE hVPSS, HI_DRV_VPSS_CFG_S *pstVpssCfg)
{
    VPSS_INSTANCE_S * pstInstance;
    
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);

    if(pstInstance)
    {
        VPSS_INST_GetInstCfg(pstInstance, pstVpssCfg);
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}
HI_S32  HI_DRV_VPSS_GetDefaultPortCfg(HI_DRV_VPSS_PORT_CFG_S *pstVpssPortCfg)
{
    VPSS_INST_GetDefPortCfg(pstVpssPortCfg);

    return HI_SUCCESS;
}

HI_S32  HI_DRV_VPSS_CreatePort(VPSS_HANDLE hVPSS,HI_DRV_VPSS_PORT_CFG_S *pstVpssPortCfg,VPSS_HANDLE *phPort)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);
    
    if(pstInstance)
    {
        VPSS_OSAL_DownLock(&(pstInstance->stInstLock));
        s32Ret = VPSS_INST_CreatePort(pstInstance, pstVpssPortCfg, phPort);
        VPSS_OSAL_UpLock(&(pstInstance->stInstLock));
        return s32Ret;
    }
    else
    {
        return HI_FAILURE;
    }
    
}
HI_S32  HI_DRV_VPSS_DestroyPort(VPSS_HANDLE hPort)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    VPSS_HANDLE hVPSS;
    hVPSS = PORTHANDLE_TO_VPSSID(hPort);
    
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);

    if(!pstInstance)
    {
        return HI_FAILURE;
    }
	VPSS_OSAL_DownLock(&(pstInstance->stInstLock)); 
    s32Ret = VPSS_INST_DestoryPort(pstInstance, hPort);
    VPSS_OSAL_UpLock(&(pstInstance->stInstLock));
    return s32Ret;
}


HI_S32  HI_DRV_VPSS_GetPortCfg(VPSS_HANDLE hPort, HI_DRV_VPSS_PORT_CFG_S *pstVpssPortCfg)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    VPSS_HANDLE hVPSS;
    hVPSS = PORTHANDLE_TO_VPSSID(hPort);
    
    pstInstance= VPSS_CTRL_GetInstance(hVPSS);

    if(!pstInstance)
    {
        return HI_FAILURE;
    }

    s32Ret = VPSS_INST_GetPortCfg(pstInstance, hPort,pstVpssPortCfg);

    return s32Ret;
}   

HI_S32  HI_DRV_VPSS_SetPortCfg(VPSS_HANDLE hPort, HI_DRV_VPSS_PORT_CFG_S *pstVpssPortCfg)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    VPSS_HANDLE hVPSS;
    hVPSS = PORTHANDLE_TO_VPSSID(hPort);
    
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);

    if(!pstInstance)
    {
        return HI_FAILURE;
    }
    
	//VPSS_OSAL_DownLock(&(pstInstance->stInstLock));
    s32Ret = VPSS_INST_CheckPortCfg(pstInstance, hPort,pstVpssPortCfg);
    
    if(s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("SetPortCfg Error.\n");
        return HI_FAILURE;
    }
    s32Ret = VPSS_INST_SetPortCfg(pstInstance, hPort,pstVpssPortCfg);
	//VPSS_OSAL_UpLock(&(pstInstance->stInstLock));

    return s32Ret;
}

HI_S32  HI_DRV_VPSS_EnablePort(VPSS_HANDLE hPort, HI_BOOL bEnable)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    VPSS_HANDLE hVPSS;
    hVPSS = PORTHANDLE_TO_VPSSID(hPort);

    pstInstance = VPSS_CTRL_GetInstance(hVPSS);
    
    if(!pstInstance)
    {
        return HI_FAILURE;
    }
    VPSS_OSAL_DownLock(&(pstInstance->stInstLock));
    s32Ret = VPSS_INST_EnablePort(pstInstance, hPort,bEnable);
    VPSS_OSAL_UpLock(&(pstInstance->stInstLock));
    return s32Ret;
}


HI_S32  HI_DRV_VPSS_SendCommand(VPSS_HANDLE hVPSS, HI_DRV_VPSS_USER_COMMAND_E eCommand, HI_VOID *pArgs)
{   
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);
    
    if(!pstInstance)
    {
        return HI_FAILURE;
    }
    
    switch(eCommand)
    {
        case HI_DRV_VPSS_USER_COMMAND_IMAGEREADY:
            s32Ret = VPSS_CTRL_WakeUpThread();
            break;
        default:
            s32Ret = VPSS_INST_ReplyUserCommand(pstInstance,eCommand,pArgs);
            break;
    }
    
    return s32Ret;
    
}

HI_S32  HI_DRV_VPSS_GetPortFrame(VPSS_HANDLE hPort, HI_DRV_VIDEO_FRAME_S *pstVpssFrame)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    VPSS_HANDLE hVPSS;
    hVPSS = PORTHANDLE_TO_VPSSID(hPort);
    
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);
    
    if (!pstInstance)
    {
        return HI_FAILURE;
    }
    //VPSS_OSAL_DownLock(&(pstInstance->stInstLock));
    s32Ret = VPSS_INST_GetPortFrame(pstInstance,hPort,pstVpssFrame);
    
    //VPSS_OSAL_UpLock(&(pstInstance->stInstLock));
    if (s32Ret == HI_SUCCESS)
    { 
        #if BUF_DBG_OUT
            HI_PRINT("%s h %#x Get %d addr %#x\n",
                    __func__,
                    hPort,
                    pstVpssFrame->u32FrameIndex,
                    pstVpssFrame->stBufAddr[0].u32PhyAddr_Y);
        #endif
        VPSS_INFO("\n Port = %d GetPortFrame %d Success",hPort,pstVpssFrame->u32FrameIndex);
	}
    else
    {
        VPSS_INFO("\n Port = %d GetPortFrame Failed",hPort);
    }
    return s32Ret;
}

HI_S32  HI_DRV_VPSS_RelPortFrame(VPSS_HANDLE hPort, HI_DRV_VIDEO_FRAME_S *pstVpssFrame)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    VPSS_HANDLE hVPSS;
    hVPSS = PORTHANDLE_TO_VPSSID(hPort);
    
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);

    if(!pstInstance)
    {
        return HI_FAILURE;
    }
    //VPSS_OSAL_DownLock(&(pstInstance->stInstLock));
    #if BUF_DBG_IN
        HI_PRINT("%s h %#x Rel %d addr %#x\n",
                    __func__,
                    hPort,
                    pstVpssFrame->u32FrameIndex,
                    pstVpssFrame->stBufAddr[0].u32PhyAddr_Y);
    #endif
    s32Ret = VPSS_INST_RelPortFrame(pstInstance,hPort,pstVpssFrame);

    if(s32Ret != HI_SUCCESS)
    {
        VPSS_INFO("\t\n Port = %d RelPortFrame %d Failed",hPort,pstVpssFrame->u32FrameIndex);
    }
    else
    {   
        VPSS_INFO("\n Port = %d RelPortFrame %d Success",hPort,pstVpssFrame->u32FrameIndex);
    }
    
    //VPSS_OSAL_UpLock(&(pstInstance->stInstLock));
    return s32Ret;
}


HI_S32  HI_DRV_VPSS_RegistHook(VPSS_HANDLE hVPSS, HI_HANDLE hDst, PFN_VPSS_CALLBACK pfVpssCallback)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);

    if(!pstInstance)
    {
        return HI_FAILURE;
    }
    s32Ret = VPSS_INST_SetCallBack(pstInstance, hDst, pfVpssCallback);

    return s32Ret;
    
}



HI_S32 HI_DRV_VPSS_PutImage(VPSS_HANDLE hVPSS,HI_DRV_VIDEO_FRAME_S *pstImage)
{
    VPSS_INSTANCE_S * pstInstance;
    VPSS_IMAGE_NODE_S *pstImgNode;
    HI_S32 s32Ret;

    pstInstance = VPSS_CTRL_GetInstance(hVPSS);

    if(!pstInstance)
    {
        return HI_FAILURE;
    }
    if(pstInstance->eSrcImgMode != VPSS_SOURCE_MODE_USERACTIVE)
    {
        return HI_FAILURE;
    }
    //VPSS_OSAL_DownLock(&(pstInstance->stInstLock));
    pstImgNode = VPSS_INST_GetEmptyImage(pstInstance);
    
    if(!pstImgNode)
    {
        //VPSS_OSAL_UpLock(&(pstInstance->stInstLock));
        VPSS_WARN("\n------%d----PutImage-NO EmptyImage",pstInstance->ID);
        return HI_FAILURE;
    }

    memcpy(&(pstImgNode->stSrcImage),pstImage,sizeof(HI_DRV_VIDEO_FRAME_S));

    
    s32Ret = VPSS_INST_AddFulImage(pstInstance,pstImgNode);

    if (s32Ret == HI_SUCCESS)
        VPSS_INFO("\n Inst %d PutImage h=0x%x id=0x%x Cnt=%d Success",pstInstance->ID,
                                    pstImage->u32Priv[0],
                                    pstImage->u32Priv[1],
                                    pstImage->u32FrameIndex);
                             
    //VPSS_OSAL_UpLock(&(pstInstance->stInstLock));
    return HI_SUCCESS;
}
HI_S32 HI_DRV_VPSS_GetImage(VPSS_HANDLE hVPSS,HI_DRV_VIDEO_FRAME_S *pstImage)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);
    if(!pstInstance)
    {
        return HI_FAILURE;
    }

    if(pstInstance->eSrcImgMode != VPSS_SOURCE_MODE_USERACTIVE)
    {
        return HI_FAILURE;
    }
    
    VPSS_OSAL_DownLock(&(pstInstance->stInstLock));
    
    s32Ret = VPSS_INST_DelDoneImage(pstInstance,pstImage);
    
    VPSS_OSAL_UpLock(&(pstInstance->stInstLock));
    
    if (s32Ret == HI_SUCCESS)
        VPSS_INFO("\n Instance %x GetImage h=0x%x id=0x%x Cnt=%d Success",pstInstance->ID,
                                    pstImage->u32Priv[0],
                                    pstImage->u32Priv[1],
                                    pstImage->u32FrameIndex);
                                    
    return s32Ret;
    
}
HI_S32 HI_DRV_VPSS_SetSourceMode(VPSS_HANDLE hVPSS,
                          HI_DRV_VPSS_SOURCE_MODE_E eSrcMode,
                          HI_DRV_VPSS_SOURCE_FUNC_S* pstRegistSrcFunc)
{
    VPSS_INSTANCE_S * pstInstance;

    pstInstance = VPSS_CTRL_GetInstance(hVPSS);

    if(!pstInstance)
    {
        return HI_FAILURE;
    }

    switch(eSrcMode)
    {
        case VPSS_SOURCE_MODE_USERACTIVE:
            pstInstance->eSrcImgMode = VPSS_SOURCE_MODE_USERACTIVE;
            return HI_SUCCESS;
            break;
        case VPSS_SOURCE_MODE_VPSSACTIVE:
            if(pstRegistSrcFunc == HI_NULL)
            {
                VPSS_FATAL("pstRegistSrcFunc is NULL.\n");
                return HI_FAILURE;
            }
            else
            {
                pstInstance->eSrcImgMode = VPSS_SOURCE_MODE_VPSSACTIVE;
                if (pstRegistSrcFunc->VPSS_GET_SRCIMAGE == HI_NULL
                    || pstRegistSrcFunc->VPSS_REL_SRCIMAGE== HI_NULL)
                {
                    VPSS_FATAL("VPSS_GET_SRCIMAGE || VPSS_REL_SRCIMAGE is NULL.\n");
                    return HI_FAILURE;
                }
                else
                {
                    pstInstance->stSrcFuncs.VPSS_GET_SRCIMAGE = 
                                    pstRegistSrcFunc->VPSS_GET_SRCIMAGE;
                    pstInstance->stSrcFuncs.VPSS_REL_SRCIMAGE = 
                                    pstRegistSrcFunc->VPSS_REL_SRCIMAGE;  
                }
            }
            return HI_SUCCESS;
            break;
        default:
            VPSS_FATAL("SourceMode is invalid.\n");
            return HI_FAILURE;
            break;
    }
}

HI_S32  HI_DRV_VPSS_GetPortBufListState(VPSS_HANDLE hPort, HI_DRV_VPSS_PORT_BUFLIST_STATE_S *pstVpssBufListState)
{
    VPSS_INSTANCE_S * pstInstance;
    HI_S32 s32Ret;
    VPSS_HANDLE hVPSS;
    hVPSS = PORTHANDLE_TO_VPSSID(hPort);
    pstInstance = VPSS_CTRL_GetInstance(hVPSS);
    
    
    if(pstInstance)
    {
        s32Ret = VPSS_INST_GetPortListState(pstInstance,hPort,pstVpssBufListState);
        return s32Ret;
    }
    else
    {
        return HI_FAILURE;
    }
    
}

HI_S32 HI_DRV_VPSS_UpdatePqData(HI_U32 u32UpdateType, PQ_PARAM_S* pstPqParam)
{

    if ((PQ_CMD_VIRTUAL_DEI_CTRL <= u32UpdateType) && (PQ_CMD_VIRTUAL_DEI_CRS_CLR >= u32UpdateType))
    {
        VPSS_ALG_SetPqDebug(HI_TRUE);            
        ALG_SetDeiDbgPara(&(pstPqParam->stPQCoef.stDeiCoef));
    }
    else if ((PQ_CMD_VIRTUAL_FMD_CTRL <= u32UpdateType) && (PQ_CMD_VIRTUAL_FMD_LAST >= u32UpdateType))
    {
        VPSS_ALG_SetPqDebug(HI_TRUE);    
        ALG_SetFmdDbgPara(&(pstPqParam->stPQCoef.stFmdCoef));
    }
    else if ((PQ_CMD_VIRTUAL_DNR_CTRL <= u32UpdateType) && (PQ_CMD_VIRTUAL_DNR_INFO >= u32UpdateType))
    {
        VPSS_ALG_SetPqDebug(HI_TRUE);    
        ALG_SetDnrDbgPara(&(pstPqParam->stPQCoef.stDnrCoef));
    }
    else  
    {
        VPSS_FATAL("HI_DRV_VPSS_UpdatePqData fail unknown type = %x.\n",u32UpdateType);
        return HI_FAILURE;		
    }
	
    return HI_SUCCESS;
}
#ifdef MODULE
module_init(VPSS_DRV_ModInit);
module_exit(VPSS_DRV_ModExit);
#endif

MODULE_LICENSE("GPL");
MODULE_AUTHOR("HISILICON");


EXPORT_SYMBOL(HI_DRV_VPSS_GlobalInit);
EXPORT_SYMBOL(HI_DRV_VPSS_GlobalDeInit);
EXPORT_SYMBOL(HI_DRV_VPSS_GetDefaultCfg);
EXPORT_SYMBOL(HI_DRV_VPSS_CreateVpss);
EXPORT_SYMBOL(HI_DRV_VPSS_DestroyVpss);

EXPORT_SYMBOL(HI_DRV_VPSS_GetDefaultPortCfg);
EXPORT_SYMBOL(HI_DRV_VPSS_CreatePort);
EXPORT_SYMBOL(HI_DRV_VPSS_EnablePort);
EXPORT_SYMBOL(HI_DRV_VPSS_DestroyPort);


EXPORT_SYMBOL(HI_DRV_VPSS_GetPortCfg);

EXPORT_SYMBOL(HI_DRV_VPSS_SetPortCfg);

EXPORT_SYMBOL(HI_DRV_VPSS_RegistHook);

EXPORT_SYMBOL(HI_DRV_VPSS_GetPortFrame);

EXPORT_SYMBOL(HI_DRV_VPSS_RelPortFrame);

EXPORT_SYMBOL(HI_DRV_VPSS_SendCommand);

EXPORT_SYMBOL(HI_DRV_VPSS_SetSourceMode);

EXPORT_SYMBOL(HI_DRV_VPSS_PutImage);

EXPORT_SYMBOL(HI_DRV_VPSS_GetImage);

EXPORT_SYMBOL(HI_DRV_VPSS_UpdatePqData);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

