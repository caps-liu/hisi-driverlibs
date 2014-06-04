/***********************************************************************************
*              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName:
* Description: driver aiao common header
*
* History:
* Version   Date         Author         DefectNum    Description
* main\1       AudioGroup     NULL         Create this file.
***********************************************************************************/
#ifndef __DRV_AI_COMMON_H__
#define __DRV_AI_COMMON_H__

#include "circ_buf.h"
#include "hal_aiao_common.h"
#include <sound/pcm.h>


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#define AI_NAME "HI_AI"

#define AI_LATENCYMS_PERFRAME_DF  (20)
#define AI_SAMPLE_PERFRAME_DF (48000/1000*AI_LATENCYMS_PERFRAME_DF)
#define AI_BUFF_FRAME_NUM_DF  (6)

#define AI_I2S0_MSK   (0)
#define AI_I2S1_MSK   (1)
#define AI_ADAC0_MSK  (2)
#define AI_HDMI0_MSK  (3)

#define AI_OPEN_CNT_MAX  (2)

#define AI_QUERY_BUF_CNT_MAX  (AI_LATENCYMS_PERFRAME_DF*6) //48k/8k = 6

#define AI_CHNID_MASK  (0xffff)

//AI BUF ATTR
#if 0
typedef struct hiAI_BUF_ATTR_S
{
    HI_U32      u32Start;
    HI_U32      u32Read;
    HI_U32      u32Write;
    HI_U32      u32End;
    /* user space virtual address */
    HI_U32 u32UserVirBaseAddr;
    /* kernel space virtual address */
    HI_U32 u32KernelVirBaseAddr;
    //TO DO
    //MMZ Handle
    
} AI_BUF_ATTR_S;
#endif

typedef struct
{
 HI_U32  u32BufPhyAddr;  
 HI_U32  u32BufVirAddr;  
 HI_U32  u32BufSize;
 HI_U32  u32PeriodByteSize;
 HI_U32  u32Periods;
} AI_ALSA_BUF_ATTR_S;

typedef struct hiAI_ALSA_Param_S
{
    AI_ALSA_BUF_ATTR_S            stBuf; //for  alsa  mmap dma buffer
    AIAO_IsrFunc             *IsrFunc;
     void *substream;  //for alsa ISR func params   
}AI_ALSA_Param_S;

typedef enum
{
    AI_CHANNEL_STATUS_STOP = 0,
    AI_CHANNEL_STATUS_START,
    AI_CHANNEL_STATUS_CAST_BUTT,
} AI_CHANNEL_STATUS_E;

typedef struct 
{
    HI_U32         u32AqcTryCnt;
    HI_U32         u32AqcCnt;
    HI_U32         u32RelTryCnt;
    HI_U32         u32RelCnt;
} AI_PROC_INFO_S;

typedef struct
{
    HI_UNF_AI_ATTR_S  stSndPortAttr;
    HI_UNF_AI_E       enAiPort;
    AIAO_PORT_ID_E    enPort;
    AI_CHANNEL_STATUS_E  enCurnStatus;
    MMZ_BUFFER_S            stRbfMmz;    //port mmz buf
    MMZ_BUFFER_S            stAiRbfMmz;  //ai mmz buf
    AI_BUF_ATTR_S           stAiBuf;     //the same as stAiRbfMmz In physics
    HI_U32                  u32File;
    AI_PROC_INFO_S          stAiProc;
    HI_BOOL                 bAlsa;
    HI_VOID                 *pAlsaPara;
} AI_CHANNEL_STATE_S;

//AI
typedef struct hiAI_RESOURCE_S
{
    HI_UNF_AI_E              enAIPortID;               //AI Port ID
    //HI_UNF_AI_INPUTTYPE_E  enAIType;                //AI Type
    //CIRC_BUF_S               stCB;
    MMZ_BUFFER_S            stRbfMmz;
    
} AI_RESOURCE_S;

typedef struct tagAI_REGISTER_PARAM_S
{
    DRV_PROC_READ_FN  pfnReadProc;
    DRV_PROC_WRITE_FN pfnWriteProc;
} AI_REGISTER_PARAM_S;


//AI GLOABL RESOURCE 
typedef struct hiAI_GLOBAL_RESOURCE_S
{ 
    HI_U32                      u32BitFlag_AI;                              //resource usage such as  (1 << I2S | 1  << HDMI RX | 1 <<  ...)
    AI_CHANNEL_STATE_S       *pstAI_ATTR_S[AI_MAX_TOTAL_NUM];
    AI_REGISTER_PARAM_S*   pstProcParam;    /* AI Proc functions */
    //to do
    
}AI_GLOBAL_RESOURCE_S;


/* private dev state Save AI Resource opened */
typedef struct hiAI_AOESTATE_S
{
    //ai
    HI_U32 *RecordId[AI_MAX_TOTAL_NUM];
    //todo
    
} AI_STATE_S;

HI_S32 AI_DRV_Open(struct inode *finode, struct file  *ffile);
long AI_DRV_Ioctl(struct file *file, HI_U32 cmd, unsigned long arg);
HI_S32 AI_DRV_Release(struct inode *finode, struct file  *ffile);
HI_S32 AI_DRV_Init(HI_VOID);
HI_VOID AI_DRV_Exit(HI_VOID);
HI_S32 AI_DRV_ReadProc( struct seq_file* p, HI_VOID* v );
HI_S32 AI_DRV_WriteProc( struct file* file, const char __user* buf, size_t count, loff_t* ppos );
HI_S32 AI_DRV_RegisterProc(AI_REGISTER_PARAM_S * pstParam);
HI_VOID AI_DRV_UnregisterProc(HI_VOID);
HI_S32 AI_DRV_Suspend(PM_BASEDEV_S * pdev,pm_message_t   state);
HI_S32 AI_DRV_Resume(PM_BASEDEV_S * pdev);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif 
