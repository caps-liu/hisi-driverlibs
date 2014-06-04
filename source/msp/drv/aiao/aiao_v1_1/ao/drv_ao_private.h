/***********************************************************************************
*              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName:
* Description: driver ao common header
*
* History:
* Version   Date         Author         DefectNum    Description
* main\1       AudioGroup     NULL         Create this file.
***********************************************************************************/
#ifndef __DRV_AO_PRIVATE_H__
#define __DRV_AO_PRIVATE_H__

#include "hi_type.h"
#include "hi_module.h"
#include "hi_drv_sys.h"
#include "hi_drv_dev.h"
#include "hi_drv_mmz.h"
#include "hi_drv_mem.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"
#include "hi_drv_module.h"
#include "drv_adsp_ext.h"
#include "drv_ao_ext.h"
#include "drv_gpio_ext.h"
#include "drv_ao_ioctl.h"//HI_ALSA_I2S_ONLY_SUPPORT

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */
#define AO_MAX_TOTAL_SND_NUM (HI_UNF_SND_BUTT)

#define AO_SND_FILE_NOUSE_FLAG  0xFFFFFFFF


#define AO_SND_DESTORY_NORMAL  HI_TRUE	//for suspent popfree
#define AO_SND_DESTORY_SUSPENT HI_FALSE

#ifdef ENA_AO_IRQ_PROC
 #define AO_IRQ_NUM (38 + 32)           /*interrupt adetor*/
#endif
#define AO_NAME "HI_AO"

#define SND_MAX_OPEN_NUM 32

#define AO_STRING_SKIP_BLANK(str)       \
    while (str[0] == ' ')           \
    {                               \
        (str)++;                    \
    }  

#define AO_STRING_SKIP_NON_BLANK(str)       \
    while (str[0] != ' ')           \
    {                               \
        (str)++;                    \
    }    

#define AO_DEBUG_SHOW_HELP(u32Snd) \
    do                                                         \
    {                                                          \
        printk("\nfunction: save pcm data from track\n"); \
        printk("commad:   echo save_track track_id start|stop > /proc/msp/sound%d\n", u32Snd); \
        printk("example:  echo save_track 0 start > /proc/msp/sound%d\n", u32Snd); \
        printk("function: \nfunction: save pcm data from sound\n"); \
        printk("commad:   echo save_sound start|stop > /proc/msp/sound%d\n", u32Snd); \
        printk("example:  echo save_sound start > /proc/msp/sound%d\n\n", u32Snd); \
    } while (0)        

typedef enum
{
    SND_DEBUG_CMD_CTRL_START = 0,
    SND_DEBUG_CMD_CTRL_STOP,
    SND_DEBUG_CMD_CTRL_BUTT
} SND_DEBUG_CMD_CTRL_E;     

typedef enum
{
    SND_DEBUG_CMD_PROC_SAVE_TRACK = 0,
    //SND_DEBUG_CMD_PROC_SAVE_SOUND,
    SND_DEBUG_CMD_PROC_BUTT
} SND_DEBUG_CMD_PROC_E;        

typedef enum
{
    SND_HDMI_MODE_NONE = 0,  //don't attatch hdmi
    SND_HDMI_MODE_PCM,
    SND_HDMI_MODE_LBR,
    SND_HDMI_MODE_HBR,
} SND_HDMI_MODE_E;

typedef enum
{
    SND_SPDIF_MODE_NONE = 0,  //don't attatch spdif
    SND_SPDIF_MODE_PCM,
    SND_SPDIF_MODE_LBR,
} SND_SPDIF_MODE_E;

typedef enum
{
    SND_ENGINE_TYPE_PCM = 0,
    SND_ENGINE_TYPE_SPDIF_RAW = 1,
    SND_ENGINE_TYPE_HDMI_RAW = 2,

    SND_ENGINE_TYPE_BUTT
} SND_ENGINE_TYPE_E;

typedef enum
{
    SND_TRACK_STATUS_STOP = 0,
    SND_TRACK_STATUS_START,
    SND_TRACK_STATUS_PAUSE,
    SND_TRACK_STATUS_BUTT,
} SND_TRACK_STATUS_E;

typedef enum
{
    SND_OP_STATUS_STOP = 0,
    SND_OP_STATUS_START,
    SND_OP_STATUS_CAST_BUTT,
} SND_OP_STATUS_E;

#if 1//def HI_ALSA_I2S_ONLY_SUPPORT
 typedef struct
 {
  HI_U32  u32BufPhyAddr;  
  HI_U32  u32BufVirAddr;  
  HI_U32  u32BufSize;
  HI_U32  u32PeriodByteSize;
  HI_U32  u32Periods;
 } AO_ALSA_BUF_ATTR_S;
 typedef struct hiAO_ALSA_Param_S //HI_ALSA_I2S_ONLY_SUPPORT
 {
     HI_BOOL                  bAlsaI2sUse; //if HI_ALSA_I2S_ONLY_SUPPORT //0730
     HI_UNF_SAMPLE_RATE_E       enRate;
     AO_ALSA_BUF_ATTR_S       stBuf; //for  alsa  mmap dma buffer
     void                     *IsrFunc;    //for alsa ISR func 
     void                     *substream;  //for alsa ISR func params 
 }AO_ALSA_I2S_Param_S;
#endif
typedef struct
{
    AO_ALSA_I2S_Param_S     stUserOpenParamI2s;//for i2s only card resume  HI_ALSA_I2S_ONLY_SUPPORT
    HI_UNF_SND_ATTR_S       stUserOpenParam;
    HI_UNF_SAMPLE_RATE_E    enUserSampleRate;
    HI_UNF_SND_HDMI_MODE_E  enUserHdmiMode;
    HI_UNF_SND_SPDIF_MODE_E enUserSpdifMode;
    
    /* internal state */
    SND_HDMI_MODE_E         enHdmiPassthrough;   /*0(no hdmi),  1(pcm), 2(lbr), 3(hbr/7.1 lpcm)*/
    SND_SPDIF_MODE_E        enSpdifPassthrough;  /*0(no spdif),  1(pcm), 2(lbr)*/
    HI_U32                  u32HdmiDataFormat;
    HI_U32                  u32SpdifDataFormat;
    HDMI_EXPORT_FUNC_S      *pstHdmiFunc;
    GPIO_EXT_FUNC_S         *pstGpioFunc;

    HI_U32                  uSndTrackInitFlag;
    HI_HANDLE               hSndOp[HI_UNF_SND_OUTPUTPORT_MAX];
    HI_HANDLE               hSndTrack[AO_MAX_TOTAL_TRACK_NUM];
    HI_HANDLE               hSndEngine[SND_ENGINE_TYPE_BUTT];
    MMZ_BUFFER_S            stTrackRbfMmz[SND_ENGINE_TYPE_BUTT];

    HI_BOOL                 bHdmiDebug;
    HI_BOOL                 bSndDestoryFlag;	/*for suspent popfree, Destory snd flag,when suspent or normal */
#ifdef HI_SND_CAST_SUPPORT
    HI_U32    uSndCastInitFlag;
    HI_HANDLE hCast[AO_MAX_CAST_NUM];
    HI_HANDLE hCastOp[AO_MAX_CAST_NUM]; /*op cast used */
#endif	
} SND_CARD_STATE_S;

typedef struct tagAO_REGISTER_PARAM_S
{
    DRV_PROC_READ_FN  pfnReadProc;
    DRV_PROC_WRITE_FN pfnWriteProc;
} AO_REGISTER_PARAM_S;

#if defined(HI_SND_DRV_SUSPEND_SUPPORT)
typedef struct
{
    HI_UNF_SND_E                enSound; 
    HI_UNF_AUDIOTRACK_ATTR_S    stTrackAttr;        
    HI_BOOL                     bAlsaTrack;
    AO_BUF_ATTR_S               stBufAttr;
    HI_UNF_SND_GAIN_ATTR_S      stTrackGain;
    SND_TRACK_STATUS_E          enCurnStatus;
    AO_SND_SPEEDADJUST_TYPE_E   enType;
    HI_S32                      s32Speed;
} SND_TRACK_SETTINGS_S;

typedef struct
{
    HI_UNF_SND_E           enSound;
    HI_BOOL                bUserEnableSetting;
    HI_U32                 u32UserVirtAddr;
    HI_UNF_SND_CAST_ATTR_S stCastAttr;
} SND_CAST_SETTINGS_S;

typedef struct
{
    HI_UNF_SND_GAIN_ATTR_S stUserGain;
    HI_UNF_TRACK_MODE_E    enUserTrackMode;
    HI_U32                 u32UserMute;
    SND_OP_STATUS_E        enCurnStatus;
} SND_OUTPORT_ATTR_S;

typedef struct
{
    AO_ALSA_I2S_Param_S     stUserOpenParamI2s;//for i2s only card resume  HI_ALSA_I2S_ONLY_SUPPORT
    HI_UNF_SND_ATTR_S       stUserOpenParam;
    HI_UNF_SND_HDMI_MODE_E  enUserHdmiMode;
    HI_UNF_SND_SPDIF_MODE_E enUserSpdifMode;
    SND_OUTPORT_ATTR_S      stPortAttr[HI_UNF_SND_OUTPUTPORT_MAX];
} SND_CARD_SETTINGS_S;
#endif


/* private dev state Save AO Resource opened */
typedef struct
{
    HI_U32      u32SndBit; 
    HI_U32      u32TrackBit;
    //todo
} AO_STATE_S;

#ifdef HI_SND_CAST_SUPPORT
/* Cast entity */
typedef struct tagAO_Cast_ENTITY_S
{
    HI_U32       u32ReqSize;
    MMZ_BUFFER_S stRbfMmz;     /* mmz dont release at suspend */
 #if defined (HI_SND_DRV_SUSPEND_SUPPORT)
    SND_CAST_SETTINGS_S stSuspendAttr;
 #endif
    HI_U32   u32File;          /* File handle */
    atomic_t atmUseCnt;        /* Cast use count, only support single user */
} AO_CAST_ENTITY_S;
#endif

/* Track entity */
typedef struct tagAO_CHAN_ENTITY_S
{
#if defined (HI_SND_DRV_SUSPEND_SUPPORT)
    SND_TRACK_SETTINGS_S stSuspendAttr;
#endif
    HI_U32   u32File;          /* File handle */
    atomic_t atmUseCnt;        /* Track use count, only support single user */
} AO_CHAN_ENTITY_S;

/* Snd entity */
typedef struct tagAO_SND_ENTITY_S
{
    SND_CARD_STATE_S *    pCard;                /* Snd structure pointer */
#if defined (HI_SND_DRV_SUSPEND_SUPPORT)
    SND_CARD_SETTINGS_S stSuspendAttr;
#endif
    HI_U32   u32File[SND_MAX_OPEN_NUM];                    /* File handle */
    atomic_t atmUseTotalCnt;     /* Snd use count, support multi user */
} AO_SND_ENTITY_S;

/* Global parameter */
typedef struct
{
#ifdef HI_SND_CAST_SUPPORT
    HI_U32           u32CastNum;        /* Record AO Cast num */
    AO_CAST_ENTITY_S astCastEntity[AO_MAX_CAST_NUM];
#endif    
    HI_U32           u32TrackNum;        /* Record AO track num */
    AO_CHAN_ENTITY_S astTrackEntity[AO_MAX_TOTAL_TRACK_NUM];   /* Track parameter */

    HI_U32          u32SndNum;           /* Record AO snd num */
    AO_SND_ENTITY_S astSndEntity[AO_MAX_TOTAL_SND_NUM];   /* Snd parameter */

    atomic_t               atmOpenCnt;      /* Open times */
    HI_BOOL                bReady;          /* Init flag */
    AO_REGISTER_PARAM_S*   pstProcParam;    /* AO Proc functions */
    ADSP_EXPORT_FUNC_S*    pAdspFunc;       /* AO need ADSP extenal functions */
    AIAO_EXPORT_FUNC_S     stExtFunc;       /* AO provide extenal functions */
} AO_GLOBAL_PARAM_S;

typedef struct hiDRV_AO_STATE_S
{
    atomic_t atmUserOpenCnt[AO_MAX_TOTAL_SND_NUM];      /*user snd Open times */
    HI_S32  u32FileId;
}DRV_AO_STATE_S;

HI_S32	AO_DRV_Init(HI_VOID);
HI_VOID AO_DRV_Exit(HI_VOID);
long    AO_DRV_Ioctl(struct file *file, HI_U32 cmd, unsigned long arg);
HI_S32	AO_DRV_Open(struct inode *inode, struct file  *filp);
HI_S32	AO_DRV_Release(struct inode *inode, struct file  *filp);
HI_S32	AO_DRV_RegisterProc(AO_REGISTER_PARAM_S *pstParam);
HI_VOID AO_DRV_UnregisterProc(HI_VOID);
HI_S32	AO_DRV_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
HI_S32	AO_DRV_Resume(PM_BASEDEV_S *pdev);
HI_S32  AO_DRV_WriteProc(struct file * file,
                                 const char __user * buf, size_t count, loff_t *ppos);

HI_S32  AO_DRV_ReadProc(struct seq_file *p, HI_VOID *v);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif 
