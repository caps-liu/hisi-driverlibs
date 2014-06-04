#ifndef __VPSS_INSTANCE_H__
#define __VPSS_INSTANCE_H__

#include "hi_type.h"
#include"drv_vpss_ext.h"
#include "hi_drv_mmz.h"
#include "vpss_fb.h"
#include "linux/list.h"
#include "vpss_osal.h"
#include "vpss_alg.h"
#include "vpss_debug.h"

#define VPSS_PORT_MAX_NUMB 3   
#define VPSS_SOURCE_MAX_NUMB 6 
#define VPSS_AUINFO_LENGTH 256

typedef struct hiVPSS_PORT_PRC_S{
    HI_S32 s32PortId;
    HI_BOOL bEnble;

    VPSS_FB_STATE_S stFbPrc;
    HI_DRV_VPSS_BUFLIST_CFG_S stBufListCfg;
    HI_DRV_PIX_FORMAT_E eFormat; 
    HI_S32  s32OutputWidth;
    HI_S32  s32OutputHeight;
    HI_DRV_COLOR_SPACE_E eDstCS;
    
    HI_DRV_ASPECT_RATIO_S stDispPixAR;
    HI_DRV_ASP_RAT_MODE_E eAspMode;
    HI_DRV_ASPECT_RATIO_S stCustmAR;
    HI_BOOL b3Dsupport;
    HI_BOOL   bInterlaced;                
    HI_RECT_S stScreen;                  
    HI_U32 u32MaxFrameRate;  
    HI_U32 u32OutCount;    

    HI_DRV_VPSS_PORT_PROCESS_S stProcCtrl;

    HI_BOOL  bTunnelEnable;  
    HI_S32  s32SafeThr;    
}VPSS_PORT_PRC_S;

typedef struct hiVPSS_PORT_S{
    HI_S32 s32PortId;
    HI_BOOL bEnble;

    VPSS_FB_INFO_S stFrmInfo;
    
    HI_DRV_PIX_FORMAT_E eFormat; 
    HI_S32  s32OutputWidth;
    HI_S32  s32OutputHeight;
    HI_DRV_COLOR_SPACE_E eDstCS;
    
    HI_DRV_ASPECT_RATIO_S stDispPixAR;
    HI_DRV_ASP_RAT_MODE_E eAspMode;
    HI_DRV_ASPECT_RATIO_S stCustmAR;
    
    HI_BOOL b3Dsupport;

    HI_BOOL   bInterlaced;               
    HI_RECT_S stScreen;                  

    HI_U32 u32MaxFrameRate;  
    HI_U32 u32OutCount;     

    HI_DRV_VPSS_PORT_PROCESS_S stProcCtrl;

    HI_BOOL  bTunnelEnable;  
    HI_S32  s32SafeThr;   
	
	#if DEF_VPSS_VERSION_2_0
    HI_DRV_VPSS_ROTATION_E eRotation;
    #endif
}VPSS_PORT_S;

typedef struct hiVPSS_IMAGE_NODE_S{
    HI_DRV_VIDEO_FRAME_S stSrcImage;
    LIST node;
}VPSS_IMAGE_NODE_S;

typedef struct hiVPSS_IMAGELIST_INFO_S{
    VPSS_OSAL_LOCK stEmptyListLock;
    VPSS_OSAL_LOCK stFulListLock;
    HI_U32 u32GetUsrTotal;
    HI_U32 u32GetUsrSuccess;
    
    HI_U32 u32RelUsrTotal;
    HI_U32 u32RelUsrSuccess;
    
    LIST stEmptyImageList;
    LIST stFulImageList;
    LIST* pstTarget_1;
}VPSS_IMAGELIST_INFO_S;

typedef struct hiVPSS_IMAGELIST_STATE_S{
    HI_U32 u32TotalNumb;
    HI_U32 u32FulListNumb;
    HI_U32 u32EmptyListNumb;
    HI_U32 u32GetUsrTotal;
    HI_U32 u32GetUsrSuccess;
    
    HI_U32 u32RelUsrTotal;
    HI_U32 u32RelUsrSuccess;
    
    HI_U32 u32Target;
    HI_U32 u32FulList[VPSS_SOURCE_MAX_NUMB];
    HI_U32 u32EmptyList[VPSS_SOURCE_MAX_NUMB];
    HI_U32 u32List[VPSS_SOURCE_MAX_NUMB][2];
}VPSS_IMAGELIST_STATE_S;

typedef struct hiVPSS_INSTANCE_S{
    HI_S32  ID;
    HI_S32  s32Priority;    
    HI_U32  u32IsNewImage;
    VPSS_OSAL_LOCK stInstLock;

    HI_U32 u32IsNewCfg;
    HI_DRV_VPSS_CFG_S stUsrInstCfg;
    HI_DRV_VPSS_PORT_CFG_S stUsrPortCfg[DEF_HI_DRV_VPSS_PORT_MAX_NUMBER];
    VPSS_OSAL_SPIN stUsrSetSpin;

    VPSS_DBG_S stDbgCtrl;
    
    HI_U32 u32InRate;
    HI_U32 u32StreamInRate;
    HI_U32 u32StreamTopFirst;
    HI_U32 u32StreamProg;
    HI_U32 u32RealTopFirst;/*defines the stream top first info.
                                  *init:0xffffffff
                                  *Progressive:0xfffffffe
                                  *Interlace:HI_FALSE or HI_TRUE*/
    HI_U32 u32NeedRstDei;
    HI_U32 u32Rwzb;
    
    HI_BOOL bAlwaysFlushSrc;

    HI_DRV_VPSS_PRODETECT_E enProgInfo;
    
    VPSS_IMAGELIST_INFO_S stSrcImagesList;
        
    VPSS_PORT_S stPort[DEF_HI_DRV_VPSS_PORT_MAX_NUMBER];
        
    HI_U32 stAuInfo[VPSS_AUINFO_LENGTH];
    
    HI_DRV_VPSS_PROCESS_S stProcCtrl;
    
    HI_HANDLE hDst;
    PFN_VPSS_CALLBACK pfUserCallBack;

    HI_DRV_VPSS_SOURCE_MODE_E eSrcImgMode;
    HI_DRV_VPSS_SOURCE_FUNC_S stSrcFuncs;
    HI_U32 u32CheckRate;
    HI_U32 u32CheckSucRate;
    HI_U32 u32CheckCnt;
    HI_U32 u32CheckSucCnt;
    HI_U32 u32LastCheckTime;

    HI_U32 u32ImgRate;
    HI_U32 u32ImgSucRate;
    HI_U32 u32ImgCnt;
    HI_U32 u32ImgSucCnt;
    
    HI_U32 u32SrcRate;
    HI_U32 u32SrcSucRate;
    HI_U32 u32SrcCnt;
    HI_U32 u32SrcSucCnt;
    
    HI_U32 u32BufRate;
    HI_U32 u32BufSucRate;
    HI_U32 u32BufCnt;
    HI_U32 u32BufSucCnt;
    
}VPSS_INSTANCE_S;


VPSS_PORT_S *VPSS_INST_GetPort(VPSS_INSTANCE_S * pstInstance, VPSS_HANDLE hPort);

HI_S32 VPSS_INST_GetUserImage(VPSS_INSTANCE_S *pstInstance,
                                VPSS_IMAGE_NODE_S *pstSrcImage);

HI_DRV_VIDEO_FRAME_S *VPSS_INST_GetUndoImage(VPSS_INSTANCE_S *pstInstance);

HI_S32 VPSS_INST_RelDoneImage(VPSS_INSTANCE_S *pstInstance);

HI_S32 VPSS_INST_RelImageBuf(VPSS_INSTANCE_S *pstInstance,VPSS_IMAGE_NODE_S *pstDoneImageNode);

HI_BOOL VPSS_INST_CheckUndoImage(VPSS_INSTANCE_S *pstInstance);

HI_S32 VPSS_INST_DelFulImage(VPSS_INSTANCE_S *pstInstance,
                            HI_DRV_VIDEO_FRAME_S *pstImage);

VPSS_IMAGE_NODE_S* VPSS_INST_GetEmptyImage(VPSS_INSTANCE_S *pstInstance);

HI_S32 VPSS_INST_AddFulImage(VPSS_INSTANCE_S *pstInstance,
                                VPSS_IMAGE_NODE_S *pstUndoImage);


HI_U32 VPSS_INST_AddEmptyImage(VPSS_INSTANCE_S *pstInstance,
                                VPSS_IMAGE_NODE_S *pstUndoImage);
HI_S32 VPSS_INST_DelDoneImage(VPSS_INSTANCE_S *pstInstance,
                                HI_DRV_VIDEO_FRAME_S *pstImage);


HI_S32 VPSS_INST_Init(VPSS_INSTANCE_S *pstInstance,HI_DRV_VPSS_CFG_S *pstVpssCfg);
HI_S32 VPSS_INST_DelInit(VPSS_INSTANCE_S *pstInstance);
HI_S32 VPSS_INST_GetDefInstCfg(HI_DRV_VPSS_CFG_S *pstVpssCfg);
HI_S32 VPSS_INST_SetInstCfg(VPSS_INSTANCE_S *pstInstance,HI_DRV_VPSS_CFG_S *pstVpssCfg);
HI_U32 VPSS_INST_GetInstCfg(VPSS_INSTANCE_S *pstInstance,HI_DRV_VPSS_CFG_S *pstVpssCfg);
HI_S32 VPSS_INST_SetCallBack(VPSS_INSTANCE_S *pstInstance,HI_HANDLE hDst, PFN_VPSS_CALLBACK pfVpssCallback);


HI_S32 VPSS_INST_CreatePort(VPSS_INSTANCE_S *pstInstance,HI_DRV_VPSS_PORT_CFG_S *pstPortCfg,VPSS_HANDLE *phPort);
HI_S32 VPSS_INST_DestoryPort(VPSS_INSTANCE_S *pstInstance,VPSS_HANDLE hPort);
HI_U32 VPSS_INST_GetDefPortCfg(HI_DRV_VPSS_PORT_CFG_S *pstPortCfg);
HI_S32 VPSS_INST_GetPortCfg(VPSS_INSTANCE_S * pstInstance, VPSS_HANDLE hPort, HI_DRV_VPSS_PORT_CFG_S *pstPortCfg);
HI_S32 VPSS_INST_SetPortCfg(VPSS_INSTANCE_S * pstInstance, VPSS_HANDLE hPort, HI_DRV_VPSS_PORT_CFG_S *pstPortCfg);

HI_S32 VPSS_INST_RelPortFrame(VPSS_INSTANCE_S *pstInstance,VPSS_HANDLE hPort,HI_DRV_VIDEO_FRAME_S *pstFrame);
HI_S32 VPSS_INST_GetPortFrame(VPSS_INSTANCE_S *pstInstance,VPSS_HANDLE hPort,HI_DRV_VIDEO_FRAME_S *pstFrame);
HI_S32 VPSS_INST_EnablePort(VPSS_INSTANCE_S * pstInstance, VPSS_HANDLE hPort,HI_BOOL bEnPort);
HI_S32 VPSS_INST_CheckPortCfg(VPSS_INSTANCE_S * pstInstance, VPSS_HANDLE hPort,HI_DRV_VPSS_PORT_CFG_S *pstVpssPortCfg);

HI_S32 VPSS_INST_ReplyUserCommand(VPSS_INSTANCE_S * pstInstance,
                                    HI_DRV_VPSS_USER_COMMAND_E eCommand,
                                    HI_VOID *pArgs);



HI_BOOL VPSS_INST_CheckIsAvailable(VPSS_INSTANCE_S *pstInstance);

HI_S32 VPSS_INST_CompleteUndoImage(VPSS_INSTANCE_S *pstInstance);




HI_S32 VPSS_INST_GetFrmBuffer(VPSS_INSTANCE_S* pstInstance,VPSS_HANDLE hPort,
                    HI_DRV_VPSS_BUFLIST_CFG_S* pstBufCfg,VPSS_BUFFER_S *pstBuffer,
                    HI_U32 u32StoreH,HI_U32 u32StoreW);

HI_S32 VPSS_INST_RelFrmBuffer(VPSS_INSTANCE_S* pstInstance,VPSS_HANDLE  hPort,
                                HI_DRV_VPSS_BUFLIST_CFG_S   *pstBufCfg,
                                MMZ_BUFFER_S *pstMMZBuf);
                                
HI_S32 VPSS_INST_ReportNewFrm(VPSS_INSTANCE_S* pstInstance,
                                VPSS_HANDLE  hPort,HI_DRV_VIDEO_FRAME_S *pstFrm);

HI_S32 VPSS_INST_GetSrcListState(VPSS_INSTANCE_S* pstInstance,VPSS_IMAGELIST_STATE_S *pstListState);


HI_S32 VPSS_INST_GetPortListState(VPSS_INSTANCE_S* pstInstance,VPSS_HANDLE hPort,HI_DRV_VPSS_PORT_BUFLIST_STATE_S *pstListState);
HI_S32 VPSS_INST_GetDeiAddr(VPSS_INSTANCE_S* pstInstance,
                            HI_DRV_VID_FRAME_ADDR_S *pstFieldAddr,
                            HI_DRV_VPSS_DIE_MODE_E eDeiMode,
                            HI_DRV_BUF_ADDR_E eLReye);


HI_S32 VPSS_INST_CorrectImgListOrder(VPSS_INSTANCE_S* pstInstance,HI_U32 u32RealTopFirst);


HI_S32 VPSS_INST_GetVc1Info(VPSS_INSTANCE_S* pstInstance,VPSS_ALG_VC1INFO_S *pstVc1Info,HI_DRV_VPSS_DIE_MODE_E eDeiMode);

HI_S32 VPSS_INST_Reset(VPSS_INSTANCE_S *pstInstance);


HI_S32 VPSS_INST_CorrectProgInfo(VPSS_INSTANCE_S *pstInstance,HI_DRV_VIDEO_FRAME_S *pImage);


HI_S32 VPSS_INST_ChangeInRate(VPSS_INSTANCE_S *pstInstance,HI_U32 u32InRate);

HI_BOOL VPSS_INST_CheckIsDropped(VPSS_INSTANCE_S *pstInstance,HI_U32 u32OutRate,HI_U32 u32OutCount);


HI_BOOL VPSS_INST_CheckAllDone(VPSS_INSTANCE_S *pstInstance);
HI_BOOL VPSS_INST_CheckPortBuffer(VPSS_INSTANCE_S *pstInstance,VPSS_HANDLE hPort);


HI_S32 VPSS_INST_CheckNeedRstDei(VPSS_INSTANCE_S *pstInstance,HI_DRV_VIDEO_FRAME_S *pImage);


HI_S32 VPSS_INST_SyncUsrCfg(VPSS_INSTANCE_S *pstInstance);


HI_S32 VPSS_INST_GetPortPrc(VPSS_INSTANCE_S* pstInstance,VPSS_HANDLE hPort,VPSS_PORT_PRC_S *pstPortPrc);



HI_S32 VPSS_INST_StoreDeiData(VPSS_INSTANCE_S *pstInstance,ALG_FMD_RTL_STATPARA_S *pstDeiData);
HI_S32 VPSS_INST_GetDeiData(VPSS_INSTANCE_S *pstInstance,ALG_FMD_RTL_STATPARA_S *pstDeiData);

HI_BOOL VPSS_INST_Check_3D_Process(VPSS_INSTANCE_S *pstInstance);



HI_S32 VPSS_INST_ReviseImage(VPSS_INSTANCE_S *pstInstance,HI_DRV_VIDEO_FRAME_S *pImage);
#endif
