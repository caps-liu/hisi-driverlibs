#ifndef __VPSS_CTRL_H__
#define __VPSS_CTRL_H__

#include <linux/list.h>
#include "vpss_instance.h"
#include "vpss_fb.h"
#include "vpss_alg.h"
#ifdef HI_VPSS_DRV_VER_S40
#include "vpss_hal.h"
#endif

#ifdef HI_VPSS_DRV_VER_CV200
#include "vpss_hal_cv200.h"
#endif

#include "vpss_osal.h"
#include "hi_drv_dev.h"
#include <linux/completion.h>
#include <linux/semaphore.h>
#include <linux/rwlock.h>
#define VPSS_INSTANCE_MAX_NUMB 12

#define VPSS_IRQ_NUM 125

typedef struct completion VPSS_IRQ_LOCK;
typedef struct semaphore  VPSS_INSTLIST_LOCK;
typedef  struct task_struct*    VPSS_THREAD;

typedef struct hiVPSS_EXP_CTRL_S{
    
    rwlock_t stListLock;

    HI_U32 u32Target;

    VPSS_INSTANCE_S *pstInstPool[VPSS_INSTANCE_MAX_NUMB];

}VPSS_INST_CTRL_S;

typedef enum hiVPSS_TASK_STATE_E{
    TASK_STATE_READY = 0,
    TASK_STATE_WAIT,
    TASK_STATE_IDLE,
    TASK_STATE_BUTT
}VPSS_TASK_STATE_E;

typedef struct hiVPSS_TASK_S{
    VPSS_TASK_STATE_E stState;
    VPSS_INSTANCE_S *pstInstance;

    
    VPSS_FB_NODE_S *pstFrmNode[DEF_HI_DRV_VPSS_PORT_MAX_NUMBER*2]; 


    VPSS_ALG_CFG_S stAlgCfg[2];
	
	#if DEF_VPSS_VERSION_2_0
    /*ROTATION Info*/
    HI_U32 u32RtCount;
    HI_BOOL bNeedRo[DEF_HI_DRV_VPSS_PORT_MAX_NUMBER];
    /*enable out tunnel*/
    HI_BOOL bEnOutTunnel;
    #endif
	
    HI_U32 u32SucRate;
    HI_U32 u32LastTotal;
    HI_U32 u32Create;
    HI_U32 u32Fail;
    HI_U32 u32TimeOut;
}VPSS_TASK_S;

typedef struct hiVPSS_CTRL_S{
    HI_U32          s32IsVPSSOpen;   

    OSAL_EVENT    stTaskComplete;
    OSAL_EVENT    stTaskNext;
    OSAL_EVENT      stNewTask;
    VPSS_TASK_S     stTask;    
    HI_BOOL         bSuspend;
    
    HI_BOOL         bInMCE;
	
	
	#if DEF_VPSS_VERSION_2_0
		/*
      Rotation Buffer
      Node1:Nomal Process --RtBuffer
      Node2:Rotation Process --OutBuffer
     */
    VPSS_BUFFER_S stRtBuf[DEF_HI_DRV_VPSS_PORT_MAX_NUMBER];
	#endif
    #if DEF_VPSS_VERSION_2_0
    VPSS_BUFFER_S stPreBuf;
    HI_DRV_VIDEO_FRAME_S stTmpImg;
    HI_BOOL bPreProcess;
	#endif
    HI_HANDLE       hVpssIRQ;      

    HI_U32          u32ThreadKilled;
    HI_U32          u32ThreadSleep;     
    VPSS_THREAD     hThread;          
    HI_U32        s32ThreadPos;    
    
    VPSS_INST_CTRL_S  stInstCtrlInfo;
    
    VPSS_ALG_CTRL_S  stAlgCtrl;
    VPSS_HAL_CAP_S  stHalCaps;
}VPSS_CTRL_S;

HI_S32 VPSS_CTRL_InitDev(HI_VOID);
HI_S32 VPSS_CTRL_DeInitDev(HI_VOID);
HI_S32 VPSS_CTRL_Init(HI_U32 u32Version);
HI_S32 VPSS_CTRL_DelInit(HI_VOID);
HI_S32 VPSS_CTRL_SetMceFlag(HI_BOOL bInMCE);
VPSS_INSTANCE_S* VPSS_CTRL_GetInstance(VPSS_HANDLE hVPSS);

VPSS_HANDLE VPSS_CTRL_CreateInstance(HI_DRV_VPSS_CFG_S *pstVpssCfg);
HI_S32 VPSS_CTRL_DestoryInstance(VPSS_HANDLE hVPSS);
HI_S32 VPSS_CTRL_CreateThread(HI_VOID);
HI_S32 VPSS_CTRL_WakeUpThread(HI_VOID);
HI_S32 VPSS_CTRL_DestoryThread(HI_VOID);
HI_S32 VPSS_CTRL_RegistISR(HI_VOID);
HI_S32 VPSS_CTRL_UnRegistISR(HI_VOID);

HI_S32 VPSS_CTRL_InitInstInfo(VPSS_INST_CTRL_S *pstInstInfo);

HI_S32 VPSS_CTRL_ThreadProc(HI_VOID* pArg);
HI_S32 VPSS_CTRL_IntServe_Proc(HI_VOID);


HI_S32 VPSS_CTRL_CreateTask(VPSS_TASK_S *pstTask);
HI_S32 VPSS_CTRL_StartTask(VPSS_TASK_S *pstTask);
HI_S32 VPSS_CTRL_CompleteTask(VPSS_TASK_S *pstTask);
HI_S32 VPSS_CTRL_ClearTask(VPSS_TASK_S *pstTask);

HI_S32 VPSS_CTRL_ConfigOutFrame(VPSS_TASK_S *pstTask,VPSS_ALG_CFG_S *pstAlgCfg,HI_DRV_BUF_ADDR_E eLReye);

VPSS_INSTANCE_S *VPSS_CTRL_GetServiceInstance(HI_VOID);

VPSS_HANDLE VPSS_CTRL_AddInstance(VPSS_INSTANCE_S *pstInstance);
HI_S32 VPSS_CTRL_DelInstance(VPSS_HANDLE hVPSS);



HI_S32 VPSS_ALG_SetImageInfo(VPSS_ALG_FRMCFG_S* pstImgCfg,HI_DRV_VIDEO_FRAME_S *pstImg, HI_RECT_S stInRect);


HI_S32 VPSS_CTRL_GetDstFrmCfg(VPSS_ALG_FRMCFG_S *pstFrmCfg,
								HI_DRV_VIDEO_FRAME_S *pstFrm,
                                VPSS_BUFFER_S *pstBuff,
                                VPSS_PORT_S *pstPort,
                                HI_DRV_VIDEO_FRAME_S *pstImage,
                                HI_BOOL bRWZB);
HI_S32 VPSS_CTRL_GetUVCfg(VPSS_ALG_FRMCFG_S *pstFrmCfg,
                                HI_U32 *pu32EnUV,
                                HI_DRV_VIDEO_FRAME_S *pstImage);
HI_S32 VPSS_CTRL_CreateInstProc(VPSS_HANDLE hVPSS);
HI_S32 VPSS_CTRL_DestoryInstProc(VPSS_HANDLE hVPSS);

HI_S32 VPSS_CTRL_GetRwzbData(VPSS_ALG_RWZBCFG_S *pstRwzbCfg);    

HI_S32 VPSS_CTRL_GetDeiData(VPSS_ALG_DEICFG_S *pstDeiCfg);    

HI_S32 VPSS_CTRL_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
HI_S32 VPSS_CTRL_Resume(PM_BASEDEV_S *pdev);



HI_BOOL VPSS_CTRL_CheckRWZB(HI_DRV_VIDEO_FRAME_S *pstSrcImg,VPSS_PORT_S *pstPort,HI_BOOL bRWZB);

HI_S32 VPSS_CTRL_StoreDeiData(VPSS_INSTANCE_S *pstInstance);

#if DEF_VPSS_VERSION_2_0
HI_S32 VPSS_CTRL_StartRoTask(VPSS_TASK_S * pstTask);
#endif

#if DEF_VPSS_VERSION_2_0
HI_S32 VPSS_CTRL_PreProcess(VPSS_TASK_S *pstTask);
#endif

#endif
