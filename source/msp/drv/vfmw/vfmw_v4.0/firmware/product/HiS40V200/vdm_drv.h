
/*********************************************************************** 
*
* Copyright (c) 2009 Hisilicon - All Rights Reserved
*
* File: $vdm_drv.h$
* Date: $2009/05/08$
* Revision: $v1.0$
* Purpose: VDEC driver interface.
*
* Change History:
*
* Date       Author            Change
* ======     ======            ======
* 20090508   q45134            Original
*
************************************************************************/

#ifndef __VDM_DRV_HEADER__
#define __VDM_DRV_HEADER__
#include "vfmw.h"
#include "sysconfig.h"

#ifdef __cplusplus
extern "C" {
#endif

#define VDH_IDLE    0
#define VDH_BUSY    1

#define COUNT_WAIT_NO_ISR   400     // x10ms
#define MAX_TIME_VDM_DEC    500     // ms
#define MAX_TIME_WAIT_MORE_START  200  //ms

#define VDMDRV_OK  0
#define VDMDRV_ERR -1

#define    MSG_SLOT_SIZE               256 //512    //一个SLOT大小, WORD
#define    UP_MSG_SLOT_NUM             2
#define    UP_MSG_SIZE                 (UP_MSG_SLOT_NUM * MSG_SLOT_SIZE)  //分配的消息大小, WORD
#define    MAX_UP_MSG_SLICE_NUM        128

#define    LUMA_HISTORGAM_NUM         32
typedef enum
{
    VDM_NULL_STATE       = 0,
    VDM_DECODE_STATE     = 1,
    VDM_REPAIR_STATE_0   = 2,  // First repair
    VDM_REPAIR_STATE_1   = 3   // Second repair, only used for AVS field mode repair
} VDMDRV_STATEMACHINE_E;

typedef enum
{
    VDMDRV_SLEEP_STAGE_NONE = 0,      // 未休眠
    VDMDRV_SLEEP_STAGE_PREPARE,       // 收到休眠命令，但还未完成休眠
    VDMDRV_SLEEP_STAGE_SLEEP          // 已休眠
} VDMDRV_SLEEP_STAGE_E;

typedef struct
{
    VDMDRV_STATEMACHINE_E VdmStateMachine;
    //SINT32 PriorTab[MAX_CHAN_NUM];
    SINT32 ErrRatio;
    SINT32 ChanId;
    VID_STD_E VidStd;
    VOID *pDecParam;
    UINT32 StartTime;  // ms
    UINT32 CurrTime;   // ms
    SINT32 H264NeedMoreStart;
    SINT32 H264FinishedMultiStart;
    SINT32 VdmTimeOut;
    UINT32 LastWaitMoreStartTime;
    SINT32 ChanResetFlag;
	#ifdef VFMW_MODULE_LOWDLY_SUPPORT
	//add by l00225186 fordsp
	SINT32 ChanIntState;/*用来表示vdh中断状态的标志，1:同时检测到行号中断和解码完成中断*/
	#endif
} VDMDRV_PARAM_S;

typedef struct 
{
    SINT32 PriorByChanId[MAX_CHAN_NUM];/*按通道号顺序各通道的优先级信息*/
    SINT32 ChanIdTabByPrior[MAX_CHAN_NUM]; /* -1: 复位值，没有要处理的通道*/
    SINT32 ChanDecByVdhPlusOne[MAX_CHAN_NUM]; /* 0: 未被VDH解码，n: 正在被(VDH_id + 1)解码  5: 正在被VEDU解码 */
} CHAN_CTX;

/* VDM自用内存地址 */
typedef struct
{
    // vdm register base vir addr
    SINT32    *pVdmRegVirAddr;
    SINT32    *pVdmResetVirAddr;

    SINT32    *pBpdRegVirAddr;
    SINT32    *pBpdResetVirAddr;
	
    // vdm hal base addr
    SINT32    HALMemBaseAddr;
    SINT32    HALMemSize;
    SINT32    VahbStride;   

    /* message pool */
    SINT32    MsgSlotAddr[256];
    SINT32    ValidMsgSlotNum;

    /* vlc code table */
    SINT32    H264TabAddr;    /* 32 Kbyte */    
    SINT32    MPEG2TabAddr;   /* 32 Kbyte */
    SINT32    MPEG4TabAddr;   /* 32 Kbyte */
    SINT32    AVSTabAddr;     /* 32 Kbyte */
    SINT32    VC1TabAddr;
    /* cabac table */
    SINT32    H264MnAddr;

    /*nei info for vdh */
    SINT32    SedTopAddr;     /* len = 64*4*x*/
    SINT32    PmvTopAddr;     /* len = 64*4*x*/
    SINT32    RcnTopAddr;     /* len = 64*4*x*/
    SINT32    ItransTopAddr;
    SINT32    DblkTopAddr;
    SINT32    PpfdBufAddr;
    SINT32    PpfdBufLen;

    SINT32    Dnr2dBufAddr;
    SINT32    IntensityConvTabAddr;
    SINT32    BitplaneInfoAddr;
    SINT32    Vp6TabAddr;
    SINT32    Vp8TabAddr;
	
    /* dnr mbinfo */
    SINT32    DnrMbInfoAddr;

    UINT8*      luma_2d_vir_addr;
    UINT32      luma_2d_phy_addr;
    UINT8*      chrom_2d_vir_addr;
    UINT32      chrom_2d_phy_addr;
    #ifdef VFMW_MODULE_LOWDLY_SUPPORT
	/*模块间低延时使用的行号*/
	UINT32      line_num_stAddr;
	#endif

} VDMHAL_HWMEM_S;
typedef struct
{
	UINT32    LumaSumHigh;
	UINT32    LumaSumLow;
	UINT32    LumaHistorgam[LUMA_HISTORGAM_NUM];
}LUMA_INFO_S;
/* 解码报告数据结构 */
typedef struct
{
    UINT32    BasicCfg1;
    UINT32    VdmState;
    UINT32    Mb0QpInCurrPic;
    UINT32    SwitchRounding;
    UINT32    SedSta;
    UINT32    SedEnd0;

    UINT32    DecCyclePerPic;
    UINT32    RdBdwidthPerPic;
    UINT32    WrBdWidthPerPic;
    UINT32    RdReqPerPic;
    UINT32    WrReqPerPic;
	UINT32    LumaSumHigh;
	UINT32    LumaSumLow;
	UINT32    LumaHistorgam[LUMA_HISTORGAM_NUM];
} VDMHAL_BACKUP_S;

/* 修补参数数据结构 */
typedef struct
{
    VID_STD_E VidStd;
    SINT32    ImageAddr;
	SINT32    Image2DAddr;
	SINT32    VahbStride;
    SINT32    RefImageAddr;
    SINT32    CurrPmvAddr;
    SINT32    ImageWidth;
    SINT32    ImageHeight;
    SINT32    IsFrame;        // 0:fld, 1:frm
    SINT32    ImageCSP;       // 0:420, 1:400
    struct
    {
        SINT16    StartMbn;
        SINT16    EndMbn;
    } MbGroup[MAX_UP_MSG_SLICE_NUM];  
    SINT32     ValidGroupNum;
    SINT32     rpr_ref_pic_type;
    //add by l00225186
	SINT32     Compress_en;
	SINT32     Pic_type;
	SINT32     FullRepair;
} VDMHAL_REPAIR_PARAM_S;
/* 解码报告数据结构 */
typedef struct
{
    UINT32    RetType;
    UINT32    ImgStride;
    UINT32    DecSliceNum;
    UINT16    SliceMbRange[MAX_UP_MSG_SLICE_NUM+1][2];    
} VDMHAL_DEC_REPORT_S;

/*#########################################################################################
       全局变量申明
 ##########################################################################################*/
extern VDMHAL_HWMEM_S    g_HwMem[MAX_VDH_NUM];
extern UINT32 g_UpMsg[MAX_VDH_NUM][UP_MSG_SIZE];   //上行消息镜像
extern VDMHAL_REPAIR_PARAM_S g_RepairParam[MAX_VDH_NUM][2];
extern VDMHAL_DEC_REPORT_S g_DecReport[MAX_VDH_NUM];
extern VDMHAL_BACKUP_S       g_BackUp[MAX_VDH_NUM];

extern UINT32 USE_FF_APT_EN;
extern VDMDRV_PARAM_S g_VdmDrvParam[MAX_VDH_NUM];
extern CHAN_CTX g_ChanCtx;

VOID VDMDRV_Init( SINT32 VdhId );
VOID VDMDRV_Reset( SINT32 VdhId );
VOID VDMDRV_SetPriority(SINT32 *pPrioArray);
VOID VDMDRV_VdmIntServProc( SINT32 VdhId );
VOID VDMDRV_WakeUpVdm( VOID );
SINT32 VDMDRV_IsVdmIdle( SINT32 VdhId );
SINT32 VDMDRV_WaitVdmReadyIfNoIsr( SINT32 VdhId );
SINT32 VDMDRV_GetCurrChanID(SINT32 VdhId);
SINT32 VDMDRV_IsVdmInISR(SINT32 VdhId);
SINT32 VDMDRV_PrepareSleep(SINT32 VdhId);
VDMDRV_SLEEP_STAGE_E VDMDRV_GetSleepStage(SINT32 VdhId);
VOID VDMDRV_ForeceSleep(SINT32 VdhId);
VOID VDMDRV_ExitSleep(SINT32 VdhId);
VOID VDMDRV_ClearChanIsDec( SINT32 ChanID );
SINT32 VDMDRV_H264NeedMoreStart(VID_STD_E VidStd, VOID *pDecParam);
SINT32 VDMDRV_H264FinishedMultiStart(VID_STD_E VidStd, VOID *pDecParam);
SINT32 VDMDRV_AvsFirstFldNeedRepair(VID_STD_E VidStd, VOID *pDecParam, SINT32 VdhId);
SINT32 VDMDRV_AvsSecondFldNeedRepair(VID_STD_E VidStd, VOID *pDecParam,SINT32 VdhId);
SINT32 VDMDRV_IsMpeg4NvopCopy(VID_STD_E VidStd, VOID *pDecParam);
SINT32 VDMDRV_IsVc1SkpicCopy(VID_STD_E VidStd, VOID *pDecParam);
SINT32 VDMDRV_IsVp6NvopCopy(VID_STD_E VidStd, VOID *pDecParam);
VOID VDMDRV_SetChanIsDec( SINT32 ChanID, SINT32 VdhID );
VOID VDMDRV_ClearChanIsDec( SINT32 ChanID );
SINT32 VDMDRV_IsChanDec( SINT32 ChanID );

#ifdef __cplusplus
}
#endif


#endif  //__VDM_DRV_H__
