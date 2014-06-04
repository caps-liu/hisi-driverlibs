/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : drv_vdec_intf_k.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2006/05/17
  Description   :
  History       :
  1.Date        : 2006/05/17
    Author      : g45345
    Modification: Created file
  2.Date        : 2012/08/16
    Author      : l00185424
    Modification: Reconstruction

******************************************************************************/

/******************************* Include Files *******************************/

/* Sys headers */
#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <linux/vmalloc.h>
#include <linux/interrupt.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <mach/hardware.h>

/* Unf headers */
#include "hi_unf_avplay.h"
#include "hi_error_mpi.h"
#include "hi_unf_common.h"
/* Drv headers */
#include "hi_kernel_adapt.h"
#include "hi_drv_demux.h"
#include "drv_demux_ext.h"
#include "drv_vdec_ext.h"
#include "vfmw.h"
#include "vfmw_ext.h"
#include "drv_vpss_ext.h"
#include "hi_drv_vpss.h"
/* Local headers */
#include "drv_vdec_private.h"
#include "drv_vdec_pts_recv.h"
#include "drv_vdec_buf_mng.h"
#include "drv_vdec_usrdata.h"
#include "hi_drv_vdec.h"
#include "hi_mpi_vdec.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/
#define VDH_IRQ_NUM (95 + 32)            /*interrupt vdector*/
#define MCE_INVALID_FILP (0xffffffff)
#define VDEC_NAME "HI_VDEC"
#define VDEC_IFRAME_MAX_READTIMES 2

#define HI_VMALLOC_BUFMNG(size)     HI_VMALLOC(HI_ID_VDEC, size)
#define HI_VFREE_BUFMNG(addr)       HI_VFREE(HI_ID_VDEC, addr)
#define HI_KMALLOC_ATOMIC_BUFMNG(size)     HI_KMALLOC(HI_ID_VDEC, size, GFP_ATOMIC)
#define HI_KFREE_BUFMNG(addr)       HI_KFREE(HI_ID_VDEC, addr)

#define VDEC_CHAN_STRMBUF_ATTACHED(pstChan) \
    (((HI_INVALID_HANDLE != pstChan->hStrmBuf) && (HI_INVALID_HANDLE == pstChan->hDmxVidChn)) \
     || ((HI_INVALID_HANDLE == pstChan->hStrmBuf) && (HI_INVALID_HANDLE != pstChan->hDmxVidChn)))

#define VDEC_CHAN_TRY_USE_DOWN(pstEnt) \
    s32Ret = VDEC_CHAN_TRY_USE_DOWN_HELP((pstEnt));

#define VDEC_CHAN_USE_UP(pstEnt) \
    VDEC_CHAN_USE_UP_HELP((pstEnt));

#define VDEC_CHAN_RLS_DOWN(pstEnt, time) \
    s32Ret = VDEC_CHAN_RLS_DOWN_HELP((pstEnt), (time));

#define VDEC_CHAN_RLS_UP(pstEnt) \
    VDEC_CHAN_RLS_UP_HELP((pstEnt));

#define HI_VDEC_SVDEC_VDH_MEM (0x2800000)
#define HI_VDEC_REF_FRAME_MIN (4)
#define HI_VDEC_REF_FRAME_MAX (10)
#define HI_VDEC_DISP_FRAME_MIN (3)
#define HI_VDEC_DISP_FRAME_MAX (18)
#if (1 == HI_VDEC_HD_SIMPLE)
#define HI_VDEC_BUFFER_FRAME (1)
#else
#define HI_VDEC_BUFFER_FRAME (2)
#endif

#define HI_VDEC_TREEBUFFER_MIN (11)

#define HI_VDEC_RESOCHANGE_MASK (0x1)
#define HI_VDEC_CLOSEDEI_MASK   (0x2) /* Close deinterlace */

/*************************** Structure Definition ****************************/

/* Channel entity */
typedef struct tagVDEC_CHAN_ENTITY_S{
	VDEC_CHANNEL_S *    pstChan;        /* Channel structure pointer for vfmw*/
	VDEC_VPSSCHANNEL_S  stVpssChan;     /* vpss Channel structure */
    HI_U32              u32File;        /* File handle */
    HI_BOOL             bUsed;          /* Busy or free */
	atomic_t            atmUseCnt;      /* Channel use count, support multi user */
	atomic_t            atmRlsFlag;     /* Channel release flag */
	wait_queue_head_t   stRlsQue;       /* Release queue */
}VDEC_CHAN_ENTITY_S;

/* Global parameter */
typedef struct
{
	HI_U32                  u32ChanNum;     /* Record vfmw channel num */  
	VDEC_CAP_S              stVdecCap;      /* Vfmw capability */
	VDEC_CHAN_ENTITY_S      astChanEntity[HI_VDEC_MAX_INSTANCE_NEW];   /* Channel parameter */
	struct semaphore        stSem;          /* Mutex */
	struct timer_list       stTimer;
    atomic_t                atmOpenCnt;     /* Open times */
    HI_BOOL                 bReady;         /* Init flag */
    HI_UNF_VCODEC_ATTR_S    stDefCfg;       /* Default channel config */
    VDEC_REGISTER_PARAM_S*  pstProcParam;   /* VDEC Proc functions */
    DEMUX_EXPORT_FUNC_S*    pDmxFunc;       /* Demux extenal functions */
    VFMW_EXPORT_FUNC_S*     pVfmwFunc;      /* VFMW extenal functions */
	VPSS_EXPORT_FUNC_S*      pVpssFunc;       /*VPSS external functions*/
    FN_VDEC_Watermark       pfnWatermark;   /* Watermark function */
    VDEC_EXPORT_FUNC_S      stExtFunc;      /* VDEC extenal functions */
}VDEC_GLOBAL_PARAM_S;

/***************************** Global Definition *****************************/

/***************************** Static Definition *****************************/


static HI_S32 RefFrameNum = HI_VDEC_MAX_REF_FRAME;
static HI_S32 DispFrameNum = HI_VDEC_MAX_DISP_FRAME;
static HI_S32 EnVcmp = 1;
static HI_S32 En2d = 1;
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)
//#define VDH_MMZ_SIZE (127*1024*1024)
#define VDH_MMZ_SIZE (HI_VDEC_PRE_FRAMEBUFFER*1024*1024)
MMZ_BUFFER_S g_stVDHMMZ = {0, 0, 0};
HI_BOOL g_bVdecPreVDHMMZUsed = HI_FALSE;
#endif

#if (1 == PRE_ALLOC_VDEC_SCD_MMZ)
#define SCD_MMZ_SIZE (2080*1024)
MMZ_BUFFER_S g_stSCDMMZ = {0, 0, 0};
HI_BOOL g_bVdecPreSCDMMZUsed = HI_FALSE;
#endif

#if (1 == PRE_ALLOC_VDEC_ESBUF_MMZ)
#define ESBUF_MMZ_SIZE (20*1024*1024)
MMZ_BUFFER_S g_stESBUFMMZ = {0, 0, 0};
HI_BOOL g_bVdecPreESBUFMMZUsed = HI_FALSE;
#endif

static HI_S32  VDEC_RegChanProc(HI_S32 s32Num);
static HI_VOID VDEC_UnRegChanProc(HI_S32 s32Num);
static HI_S32 VDEC_Chan_VpssRecvFrmBuf(VPSS_HANDLE hVpss, HI_DRV_VIDEO_FRAME_S* pstFrm);
static HI_S32 VDEC_Chan_VpssRlsFrmBuf(VPSS_HANDLE hVpss, HI_DRV_VIDEO_FRAME_S  *pstFrm);
//static HI_S32 VDEC_Chan_Vpss_RecvFrmBuf(HI_HANDLE hHandle, HI_DRV_VIDEO_FRAME_S* pstFrm);
//static HI_S32 VDEC_Chan_Vpss_RlsFrmBuf(HI_HANDLE hHandle, HI_DRV_VIDEO_FRAME_S  *pstFrm);
#if 1
static HI_VOID VDEC_ConvertFrm(HI_UNF_VCODEC_TYPE_E enType, VDEC_CHANNEL_S *pstChan, 
            VDEC_CHAN_STATE_S *pstChanState, IMAGE *pstImage, HI_DRV_VIDEO_FRAME_S *pstFrame);
#else
static HI_VOID VDEC_ConvertFrm(HI_UNF_VCODEC_TYPE_E enType, VDEC_CHANNEL_S *pstChan, 
             IMAGE *pstImage, HI_DRV_VIDEO_FRAME_S *pstFrame);
#endif
static HI_S32 VDEC_FindVdecHandleByVpssHandle(VPSS_HANDLE hVpss,HI_HANDLE * hVdec);
static VDEC_GLOBAL_PARAM_S s_stVdecDrv = 
{
    .atmOpenCnt = ATOMIC_INIT(0),
    .bReady = HI_FALSE,
    .stDefCfg = 
    {
        .enType         = HI_UNF_VCODEC_TYPE_H264,
        .enMode         = HI_UNF_VCODEC_MODE_NORMAL,
        .u32ErrCover    = 100,
        .bOrderOutput   = 0,
        .u32Priority    = 15
    },
    .pstProcParam = HI_NULL,
    .pDmxFunc = HI_NULL,
    .pVfmwFunc = HI_NULL,
    .pVpssFunc = HI_NULL,
    .pfnWatermark = HI_NULL,
    .stExtFunc = 
    {
        .pfnVDEC_RecvFrm     = (HI_VOID *)HI_DRV_VDEC_RecvFrmBuf,
        .pfnVDEC_RlsFrm      = (HI_VOID *)HI_DRV_VDEC_RlsFrmBuf,
        .pfnVDEC_RlsFrmWithoutHandle = (HI_VOID *)HI_DRV_VDEC_RlsFrmBufWithoutHandle,
        .pfnVDEC_BlockToLine = (HI_VOID *)HI_DRV_VDEC_BlockToLine,
        .pfnVDEC_GetEsBuf    = (HI_VOID *)HI_DRV_VDEC_GetEsBuf,
        .pfnVDEC_PutEsBuf    = (HI_VOID *)HI_DRV_VDEC_PutEsBuf
    }
};

/*********************************** Code ************************************/

#if (VDEC_DEBUG == 1)
static HI_VOID VDEC_PrintImage(IMAGE *pstImg)
{
	HI_FATAL_VDEC("<0>top_luma_phy_addr = 0x%08x \n", pstImg->top_luma_phy_addr);
	HI_FATAL_VDEC("<0>top_chrom_phy_addr = 0x%08x \n", pstImg->top_chrom_phy_addr);
	HI_FATAL_VDEC("<0>btm_luma_phy_addr = 0x%08x \n", pstImg->btm_luma_phy_addr);
	HI_FATAL_VDEC("<0>btm_chrom_phy_addr = 0x%08x \n", pstImg->btm_chrom_phy_addr);
	HI_FATAL_VDEC("<0>disp_width = %d \n", pstImg->disp_width);
	HI_FATAL_VDEC("<0>disp_height = %d \n", pstImg->disp_height);
	HI_FATAL_VDEC("<0>disp_center_x = %d \n", pstImg->disp_center_x);
	HI_FATAL_VDEC("<0>disp_center_y = %d \n", pstImg->disp_center_y);
	HI_FATAL_VDEC("<0>error_level = %d \n", pstImg->error_level);
	HI_FATAL_VDEC("<0>seq_cnt = %d \n", pstImg->seq_cnt);
	HI_FATAL_VDEC("<0>seq_img_cnt = %d \n", pstImg->seq_img_cnt);
	HI_FATAL_VDEC("<0>PTS = %lld \n", pstImg->PTS);
}

static HI_VOID VDEC_PrintFrmInfo(HI_UNF_VIDEO_FRAME_INFO_S *pstFrame)
{
	HI_FATAL_VDEC("<0>u32Height = %d\n", pstFrame->u32Height);
	HI_FATAL_VDEC("<0>u32Width = %d\n", pstFrame->u32Width);
	HI_FATAL_VDEC("<0>u32DisplayWidth = %d\n", pstFrame->u32DisplayWidth);
	HI_FATAL_VDEC("<0>u32DisplayHeight = %d\n", pstFrame->u32DisplayHeight);
	HI_FATAL_VDEC("<0>u32DisplayCenterX = %d\n", pstFrame->u32DisplayCenterX);
	HI_FATAL_VDEC("<0>u32DisplayCenterY = %d\n", pstFrame->u32DisplayCenterY);
}
#endif

static inline HI_S32  VDEC_CHAN_TRY_USE_DOWN_HELP(VDEC_CHAN_ENTITY_S *pstEnt)
{
    atomic_inc(&pstEnt->atmUseCnt);
    if (atomic_read(&pstEnt->atmRlsFlag) != 0)
    {
        atomic_dec(&pstEnt->atmUseCnt);
        if (atomic_read(&pstEnt->atmRlsFlag) != 1)
        {
            HI_ERR_VDEC("Use lock err\n");
            //while (1)
            //{}
        }

        return HI_FAILURE;
    }
    return HI_SUCCESS;
}

static inline HI_S32  VDEC_CHAN_USE_UP_HELP(VDEC_CHAN_ENTITY_S *pstEnt)
{
    if (atomic_dec_return(&pstEnt->atmUseCnt) < 0)
    {
        HI_ERR_VDEC("Use unlock err\n");
        //while (1)
        //{}
    }
    return HI_SUCCESS;
}

static inline HI_S32  VDEC_CHAN_RLS_DOWN_HELP(VDEC_CHAN_ENTITY_S *pstEnt, HI_U32 time)
{
    HI_S32 s32Ret;

    /* Realse all */
    /* CNcomment:多个进行释放 */
    if (atomic_inc_return(&pstEnt->atmRlsFlag) != 1)
    {
        atomic_dec(&pstEnt->atmRlsFlag);
        return HI_FAILURE;
    }
    if (atomic_read(&pstEnt->atmUseCnt) != 0)
    {
        if (HI_INVALID_TIME == time)
        {
            s32Ret = wait_event_interruptible(pstEnt->stRlsQue, (atomic_read(&pstEnt->atmUseCnt) == 0));
        }
        else
        {
            s32Ret = wait_event_interruptible_timeout(pstEnt->stRlsQue, (atomic_read(&pstEnt->atmUseCnt) == 0), time);
        }

        if (s32Ret == 0)
        {
            return HI_SUCCESS;
        }
        else
        {
            if (s32Ret < 0)
            {
                return HI_SUCCESS;
            }
            atomic_dec(&pstEnt->atmRlsFlag);
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

static inline HI_S32  VDEC_CHAN_RLS_UP_HELP(VDEC_CHAN_ENTITY_S *pstEnt)
{
    if (atomic_dec_return(&pstEnt->atmRlsFlag) < 0)
    {
        //while (1)
        //{}
    }

    return HI_SUCCESS;
}

/* 初始化互斥锁*/
HI_S32  VDEC_InitSpinLock( VDEC_PORT_FRAME_LIST_LOCK_S *pIntrMutex )
{
    spin_lock_init(&pIntrMutex->irq_lock);
    pIntrMutex->isInit = HI_TRUE;
    return HI_SUCCESS;
}
/* 中断互斥加锁(关中断且加锁)*/
HI_S32 VDEC_SpinLockIRQ( VDEC_PORT_FRAME_LIST_LOCK_S *pIntrMutex )
{
    if(pIntrMutex->isInit == HI_FALSE)
	{
        spin_lock_init(&pIntrMutex->irq_lock);  
        pIntrMutex->isInit = HI_TRUE;
    }
    spin_lock_irqsave(&pIntrMutex->irq_lock, pIntrMutex->irq_lockflags);

	return HI_SUCCESS;
}
/* 中断互斥解锁(开中断且去锁)*/
HI_S32 VDEC_SpinUnLockIRQ( VDEC_PORT_FRAME_LIST_LOCK_S *pIntrMutex )
{
    if(pIntrMutex->isInit == HI_TRUE)
	{
	    spin_unlock_irqrestore(&pIntrMutex->irq_lock, pIntrMutex->irq_lockflags);
    }
	return HI_SUCCESS;
}

/* 初始化互斥锁*/
HI_S32  BUFMNG_InitSpinLock( BUFMNG_VPSS_IRQ_LOCK_S *pIntrMutex )
{
    spin_lock_init(&pIntrMutex->irq_lock);
    pIntrMutex->isInit = HI_TRUE;
    return HI_SUCCESS;
}
/* 中断互斥加锁(关中断且加锁)*/
HI_S32 BUFMNG_SpinLockIRQ( BUFMNG_VPSS_IRQ_LOCK_S *pIntrMutex )
{
    if(pIntrMutex->isInit == HI_FALSE)
	{
        spin_lock_init(&pIntrMutex->irq_lock);  
        pIntrMutex->isInit = HI_TRUE;
    }
    spin_lock_irqsave(&pIntrMutex->irq_lock, pIntrMutex->irq_lockflags);

	return HI_SUCCESS;
}
/* 中断互斥解锁(开中断且去锁)*/
HI_S32 BUFMNG_SpinUnLockIRQ( BUFMNG_VPSS_IRQ_LOCK_S *pIntrMutex )
{
    if(pIntrMutex->isInit == HI_TRUE)
	{
	    spin_unlock_irqrestore(&pIntrMutex->irq_lock, pIntrMutex->irq_lockflags);
    }
	return HI_SUCCESS;
}
static HI_S32 BUFMNG_VPSS_Init(BUFMNG_VPSS_INST_S* pstBufVpssInst)
{
	HI_S32 i;
	BUFMNG_VPSS_NODE_S* pstBufNode;
	HI_S32 s32Ret = HI_SUCCESS;
    //s32Ret  = BUFMNG_InitSpinLock(&pstBufVpssInst->stAvailableListLock);
    memset(&pstBufVpssInst->stUnAvailableListLock,0,sizeof(BUFMNG_VPSS_IRQ_LOCK_S));
	s32Ret  = BUFMNG_InitSpinLock(&pstBufVpssInst->stUnAvailableListLock);
    INIT_LIST_HEAD(&pstBufVpssInst->stVpssBufAvailableList);
	INIT_LIST_HEAD(&pstBufVpssInst->stVpssBufUnAvailableList);
	if(HI_SUCCESS != s32Ret)
	{
		return s32Ret;
	}
	for(i=0;i<pstBufVpssInst->u32BufNum;i++)
	{
		pstBufNode = HI_VMALLOC_BUFMNG(sizeof(BUFMNG_VPSS_NODE_S));
		
		if (HI_NULL == pstBufNode)
        {
            HI_VFREE_BUFMNG(pstBufNode);
            HI_ERR_VDEC("BUFMNG_VPSS_Init No memory.\n");
			return HI_ERR_BM_NO_MEMORY;
		}
		pstBufNode->bBufUsed = HI_FALSE;
		s32Ret = HI_DRV_MMZ_AllocAndMap("VDEC_VPSSBuf", "VDEC", pstBufVpssInst->u32BufSize, 0, &pstBufNode->stMMZBuf);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("BUFMNG_VPSS_Init Alloc MMZ fail:0x%x.\n", s32Ret);
		    HI_VFREE_BUFMNG(pstBufNode);
            return HI_ERR_BM_NO_MEMORY;
        }
		BUFMNG_SpinLockIRQ(&pstBufVpssInst->stUnAvailableListLock);
		list_add_tail(&(pstBufNode->node), &(pstBufVpssInst->stVpssBufAvailableList));
		BUFMNG_SpinUnLockIRQ(&pstBufVpssInst->stUnAvailableListLock);
	}
	pstBufVpssInst->pstUnAvailableListPos = &pstBufVpssInst->stVpssBufUnAvailableList;
    return s32Ret;
}
static HI_S32 BUFMNG_VPSS_DeInit(BUFMNG_VPSS_INST_S* pstBufVpssInst)
{
	HI_S32 s32Ret = HI_SUCCESS;
	struct list_head *pos,*n;
	BUFMNG_VPSS_NODE_S* pstTarget;
    list_for_each_safe(pos, n, &(pstBufVpssInst->stVpssBufAvailableList))
    {
        pstTarget = list_entry(pos, BUFMNG_VPSS_NODE_S, node);
        HI_DRV_MMZ_UnmapAndRelease(&(pstTarget->stMMZBuf));
        list_del_init(pos);
        vfree(pstTarget);
    }

    list_for_each_safe(pos, n, &(pstBufVpssInst->stVpssBufUnAvailableList))
    {
        pstTarget = list_entry(pos, BUFMNG_VPSS_NODE_S, node);
        HI_DRV_MMZ_UnmapAndRelease(&(pstTarget->stMMZBuf));
        list_del_init(pos);
        vfree(pstTarget);
    }
    return s32Ret;
}

static HI_S32 BUFMNG_VPSS_RecBuffer(HI_HANDLE hVpss,HI_HANDLE hPort,MMZ_BUFFER_S* pstMMZ_Buffer)
{
	HI_S32 s32Ret;
    HI_S32 i,j;
	struct list_head *pos;
	BUFMNG_VPSS_NODE_S* pstTarget;
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
    
	if (HI_INVALID_HANDLE == hPort || HI_INVALID_HANDLE == hVpss)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
	/*首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Too many chans!\n");
        return HI_FAILURE;
    } 
	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);
	/*查找port是否存在*/
    for(j = 0; j<VDEC_MAX_PORT_NUM; j++)
    {
        if(hPort == pstVpssChan->stPort[j].hPort)
        {
            break;
        }
    }
    if(j >= VDEC_MAX_PORT_NUM)
    {
        HI_WARN_VDEC("Port %d not exist!\n", hPort);
        return HI_FAILURE;
    }
    else
    {
		/*获取帧存*/
		//list_for_each_safe(pos, n, &(pstChan->stPort[j].stBufVpssInst.stVpssBufAvailableList))
		{
			BUFMNG_SpinLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
			if((&pstVpssChan->stPort[j].stBufVpssInst.stVpssBufAvailableList) == pstVpssChan->stPort[j].stBufVpssInst.stVpssBufAvailableList.next)
			{
				VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
				BUFMNG_SpinUnLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
				return HI_FAILURE;
			}
			 pos = pstVpssChan->stPort[j].stBufVpssInst.stVpssBufAvailableList.next;
		     pstTarget = list_entry(pos, BUFMNG_VPSS_NODE_S, node);
			 /*删除stVpssBufAvailableList上的pos节点*/
             list_del_init(pos); 
			 /*将pos节点添加到stVpssBufUnAvailableList上去*/
			 list_add_tail(pos, &(pstVpssChan->stPort[j].stBufVpssInst.stVpssBufUnAvailableList));
             BUFMNG_SpinUnLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
		}
		memcpy(pstMMZ_Buffer,&pstTarget->stMMZBuf,sizeof(MMZ_BUFFER_S));
    }
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
	return HI_SUCCESS;
}
static HI_S32 BUFMNG_VPSS_RelBuffer(HI_HANDLE hVpss,HI_HANDLE hPort,HI_DRV_VIDEO_FRAME_S* pstImage)
{
	HI_S32 s32Ret;
    HI_S32 i,j;
	struct list_head *pos,*n;
	BUFMNG_VPSS_NODE_S* pstTarget;
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
	if (HI_INVALID_HANDLE == hPort || HI_INVALID_HANDLE == hVpss)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
    
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Too many chans!\n");
        return HI_FAILURE;
    } 
    
	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);
	/*查找port是否存在*/
    for(j = 0; j<VDEC_MAX_PORT_NUM; j++)
    {
        if(hPort == pstVpssChan->stPort[j].hPort)
        {
            break;
        }
    }
    if(j >= VDEC_MAX_PORT_NUM)
    {
        HI_WARN_VDEC("Port %d not exist!\n", hPort);
        return HI_FAILURE;
    }
    else
    {
		/*释放帧存*/
		//pos从stVpssBufUnAvailableList的next开始
		BUFMNG_SpinLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
		list_for_each_safe(pos, n, &(pstVpssChan->stPort[j].stBufVpssInst.stVpssBufUnAvailableList))
		{
		     pstTarget = list_entry(pos, BUFMNG_VPSS_NODE_S, node);
			 if(pstImage->stBufAddr[0].u32PhyAddr_Y == pstTarget->stMMZBuf.u32StartPhyAddr)
			 {
			 	//pstImage->stBufAddr[0].u32PhyAddr_Y,pstTarget->stMMZBuf.u32StartPhyAddr);
			 	 pstTarget->bBufUsed = HI_FALSE;
				 /*删除stVpssBufUnAvailableList上的pos节点*/
				 #if 0
				 if(pos == pstVpssChan->stPort[j].stBufVpssInst.pstUnAvailableListPos)
				 {
				 	pstVpssChan->stPort[j].stBufVpssInst.pstUnAvailableListPos = pos->prev;
				 }
				 #endif
	             list_del_init(pos);
				 /*将pos节点添加到stVpssBufAvailableList上去*/
				 list_add_tail(&(pstTarget->node), &(pstVpssChan->stPort[j].stBufVpssInst.stVpssBufAvailableList));
	             break;
			 }
		}
		BUFMNG_SpinUnLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
    }
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
	return HI_SUCCESS;
}
static HI_S32 VDEC_VpssNewImageEvent(HI_HANDLE hVpss,HI_HANDLE hPort,HI_DRV_VIDEO_FRAME_S* pstImage)
{
	HI_S32 s32Ret;
    HI_S32 i,j;
	struct list_head *pos,*n;
	BUFMNG_VPSS_NODE_S* pstTarget;
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
    
	if (HI_INVALID_HANDLE == hPort || HI_INVALID_HANDLE == hVpss)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
    
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Too many chans!\n");
        return HI_FAILURE;
    }
    
	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);
	/*查找port是否存在*/
    for(j = 0; j<VDEC_MAX_PORT_NUM; j++)
    {
        if(hPort == pstVpssChan->stPort[j].hPort)
        {
            break;
        }
    }
    if(j >= VDEC_MAX_PORT_NUM)
    {
        HI_WARN_VDEC("Port %d not exist!\n", hPort);
        return HI_FAILURE;
    }
    else
    {
        #if 1
		BUFMNG_SpinLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
		list_for_each_safe(pos, n, &(pstVpssChan->stPort[j].stBufVpssInst.stVpssBufUnAvailableList))
		{
		     pstTarget = list_entry(pos, BUFMNG_VPSS_NODE_S, node);
			 if(pstTarget->stMMZBuf.u32StartPhyAddr == pstImage->stBufAddr[0].u32PhyAddr_Y)
			 {
				BUFMNG_SpinUnLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
				memcpy(&pstTarget->stVpssOutFrame,pstImage,sizeof(HI_DRV_VIDEO_FRAME_S));
				BUFMNG_SpinLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
				pstTarget->bBufUsed = HI_TRUE;
				//pstChan->stPort[j].stBufVpssInst.pstUnAvailableListPos = &(pstTarget->node);
			    break;
			 }
             
		}
		BUFMNG_SpinUnLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
		//memcpy(&pstTarget->stVpssOutFrame,pstImage,sizeof(HI_DRV_VIDEO_FRAME_S));
	    #endif
    }
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
	return HI_SUCCESS;
}
static HI_S32 VDEC_FindVdecHandleByVpssHandle(VPSS_HANDLE hVpss, HI_HANDLE* phVdec)
{
	HI_U32 i;
    
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
        if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
        {
            break;
        }
    }
    
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }
	else
	{
        if(HI_INVALID_HANDLE == s_stVdecDrv.astChanEntity[i].stVpssChan.hVdec)
        {
            /*HI_ERR_VDEC("Invalid hVdec!\n");*/
            return HI_FAILURE;
        }
		*phVdec = s_stVdecDrv.astChanEntity[i].stVpssChan.hVdec;
		return HI_SUCCESS;
	}
}
HI_S32 VDEC_FindVpssHandleByVdecHandle(HI_HANDLE hVdec, HI_HANDLE *phVpss)
{
    HI_U32 i;
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
        if (hVdec == s_stVdecDrv.astChanEntity[i].stVpssChan.hVdec)
        {
            break;
        }
    }
	if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Too many chans!\n");
        return HI_FAILURE;
    }
	else
	{
		*phVpss = s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss;
		return HI_SUCCESS;
	}
}

static HI_S32 VDEC_CheckVpssPortOutFrameStatus(HI_HANDLE hVdec)
{
    HI_S32 i=0;
	HI_HANDLE hMASTER = HI_INVALID_HANDLE;
    HI_HANDLE hSLAVE = HI_INVALID_HANDLE;
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
	pstVpssChan = &(s_stVdecDrv.astChanEntity[hVdec].stVpssChan);
	
    for(i = 0; i < VDEC_MAX_PORT_NUM; i++)
    {
        if ((HI_INVALID_HANDLE != pstVpssChan->stPort[i].hPort) 
            && (HI_TRUE == pstVpssChan->stPort[i].bEnable))
        {
			if((HI_DRV_VPSS_BUF_VPSS_ALLOC_MANAGE == pstVpssChan->stPort[i].bufferType) 
			    && ((VDEC_PORT_TYPE_MASTER == pstVpssChan->stPort[i].enPortType) 
			        || (VDEC_PORT_TYPE_SLAVE == pstVpssChan->stPort[i].enPortType)))
			{
			    if (VDEC_PORT_TYPE_MASTER == pstVpssChan->stPort[i].enPortType)
			    {
                    hMASTER = pstVpssChan->stPort[i].hPort;
			    }
			    
			    if (VDEC_PORT_TYPE_SLAVE == pstVpssChan->stPort[i].enPortType)
			    {
                    hSLAVE = pstVpssChan->stPort[i].hPort;
			    }
			}
        }
    }

    if (hMASTER != HI_INVALID_HANDLE || hSLAVE != HI_INVALID_HANDLE)
    {
        HI_DRV_VPSS_PORT_AVAILABLE_S stCanGetFrm;
        
        if (hMASTER != HI_INVALID_HANDLE)
        {
            stCanGetFrm.hPort = hMASTER;
            stCanGetFrm.bAvailable = HI_FALSE;
            s_stVdecDrv.pVpssFunc->pfnVpssSendCommand(pstVpssChan->hVpss,
                            HI_DRV_VPSS_USER_COMMAND_CHECKAVAILABLE,&(stCanGetFrm));
            if (stCanGetFrm.bAvailable == HI_FALSE)
            {
                return HI_FAILURE;
            }
        }

        if (hSLAVE != HI_INVALID_HANDLE)
        {
            stCanGetFrm.hPort = hSLAVE;
            stCanGetFrm.bAvailable = HI_FALSE;
            s_stVdecDrv.pVpssFunc->pfnVpssSendCommand(pstVpssChan->hVpss,
                            HI_DRV_VPSS_USER_COMMAND_CHECKAVAILABLE,&(stCanGetFrm));
            if (stCanGetFrm.bAvailable == HI_FALSE)
            {
                return HI_FAILURE;
            }
        }
    }
	return HI_SUCCESS;
}
static HI_S32 VDEC_CheckPortFrameListStatus(HI_HANDLE hVdec)
{
	HI_S32 i = 0;
	HI_HANDLE hPort = HI_INVALID_HANDLE;
	VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
	pstVpssChan = &(s_stVdecDrv.astChanEntity[hVdec].stVpssChan);

	/*check list frame status, if the master port and slave port enable then must ensure there exists data in the framelist*/
	for(i=0; i<VDEC_MAX_PORT_NUM; i++)
	{
		if ((HI_INVALID_HANDLE != pstVpssChan->stPort[i].hPort) 
	            && (HI_TRUE == pstVpssChan->stPort[i].bEnable))
	    {
			if(HI_DRV_VPSS_BUF_VPSS_ALLOC_MANAGE == pstVpssChan->stPort[i].bufferType) 
			{
			    if ((HI_TRUE == pstVpssChan->stPort[i].bEnable) && 
				    ((VDEC_PORT_TYPE_MASTER == pstVpssChan->stPort[i].enPortType) ||
				    (VDEC_PORT_TYPE_SLAVE == pstVpssChan->stPort[i].enPortType)))
			    {
                    hPort = pstVpssChan->stPort[i].hPort;
					if(HI_INVALID_HANDLE !=hPort)
					{
					    if((&(pstVpssChan->stPort[i].stPortList.stVdecPortFrameList)) == 
                            (pstVpssChan->stPort[i].stPortList.stVdecPortFrameList.next))
					    {
					        return HI_FAILURE;
					    }
					}
			    }
				else
				{
                    if ((HI_TRUE == pstVpssChan->stPort[i].bEnable) && (VDEC_PORT_TYPE_VIRTUAL == pstVpssChan->stPort[i].enPortType))
                    {
				        if((&pstVpssChan->stPort[i].stPortList.stVdecPortFrameList) != 
                            (pstVpssChan->stPort[i].stPortList.stVdecPortFrameList.next))
				        {
				            return HI_SUCCESS;
				        }
                    }
				}
			}
	     }
	}
    
    return HI_SUCCESS;
}
static HI_S32 VDEC_Chan_RecvVdecPortListFrame(HI_HANDLE hVdec, HI_DRV_VIDEO_FRAME_PACKAGE_S* pstFrm)
{
    HI_S32 s32Ret = HI_FAILURE;
	HI_S32 i = 0;
	VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
	VDEC_PORT_FRAME_LIST_LOCK_S *pListLock = HI_NULL;
	VDEC_PORT_FRAME_LIST_NODE_S *pstListNode = HI_NULL;

	if ((HI_INVALID_HANDLE == hVdec) || (HI_NULL == pstFrm))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
	
	pstFrm->u32FrmNum = 0;
	s32Ret = VDEC_CheckPortFrameListStatus(hVdec);
	if(HI_SUCCESS == s32Ret)
	{
	    pstVpssChan = &(s_stVdecDrv.astChanEntity[hVdec].stVpssChan);
		for(i = 0; i < VDEC_MAX_PORT_NUM; i++)
		{
			pListLock = &pstVpssChan->stPort[i].stPortList.stPortFrameListLock;
		  	if((HI_INVALID_HANDLE != pstVpssChan->stPort[i].hPort) && (HI_TRUE == pstVpssChan->stPort[i].bEnable))
			{
				 VDEC_SpinLockIRQ(pListLock);
				 if((&pstVpssChan->stPort[i].stPortList.stVdecPortFrameList) != (pstVpssChan->stPort[i].stPortList.stVdecPortFrameList.next))
				 {
					 pstListNode = list_entry(pstVpssChan->stPort[i].stPortList.stVdecPortFrameList.next, VDEC_PORT_FRAME_LIST_NODE_S, node);				
                     memcpy((void *)&(pstFrm->stFrame[pstFrm->u32FrmNum].stFrameVideo), &(pstListNode->stPortOutFrame), sizeof(HI_DRV_VIDEO_FRAME_S));
                     pstFrm->stFrame[pstFrm->u32FrmNum].hport = pstVpssChan->stPort[i].hPort;
					 pstFrm->u32FrmNum++;
                     list_del_init(&(pstListNode->node));
					 HI_KFREE_BUFMNG(pstListNode);
					 VDEC_SpinUnLockIRQ(pListLock);
				 }
				 else
				 {
					 VDEC_SpinUnLockIRQ(pListLock);
                     continue;
				 }	
			 }
	     }    
	}
	else
	{
	    return HI_FAILURE;
	}

    if (pstFrm->u32FrmNum > 0)
    {
    	return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}
static HI_S32 VDEC_InsertTmpListIntoPortList(HI_HANDLE hVdec, HI_HANDLE hPort)
{
    HI_S32 i = 0;
	struct list_head *pstVdecPortFrameList;
	struct list_head *pnode;
	VDEC_PORT_FRAME_LIST_LOCK_S *pListLock = HI_NULL;
    VDEC_PORT_FRAME_LIST_NODE_S *pstVdecPortFrameListNode = HI_NULL;
	
	pListLock = &(s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].stPortList.stPortFrameListLock);
	if ((HI_INVALID_HANDLE == hVdec) || (HI_INVALID_HANDLE == hPort))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

	VDEC_SpinLockIRQ(pListLock);

    i = s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].s32PortTmpListPos - 1;
    if (i < 0)
    {
        VDEC_SpinUnLockIRQ(pListLock);
        return HI_FAILURE;
    }
	/*s32LastValidPos = s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].s32PortTmpListPos;  */
	pstVdecPortFrameList = &(s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].stPortList.stVdecPortFrameList);    

	for(;i>=0;i--)
	{
	    pstVdecPortFrameListNode = HI_KMALLOC_ATOMIC_BUFMNG(sizeof(VDEC_PORT_FRAME_LIST_NODE_S));
	    if (HI_NULL == pstVdecPortFrameListNode)
        {
            HI_ERR_VDEC("VDEC_InsertTmpListIntoPortList No memory.\n");
			return HI_ERR_BM_NO_MEMORY;
		}
	    memcpy(&(pstVdecPortFrameListNode->stPortOutFrame),&(s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].astPortTmpList[i].stPortOutFrame),sizeof(HI_DRV_VIDEO_FRAME_S));
	    pnode = &(pstVdecPortFrameListNode->node);
        list_add_tail(pnode,pstVdecPortFrameList);
	}
	/*memcpy(&(s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].astPortTmpList[0]),     
		   &(s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].astPortTmpList[s32LastValidPos]),
		   sizeof(VDEC_PORT_FRAME_LIST_NODE_S));*/
	s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].s32PortTmpListPos = 0;
    
	VDEC_SpinUnLockIRQ(pListLock);

	return HI_SUCCESS;
}

static HI_S32 VDEC_InsertFrameIntoTmpList(HI_HANDLE hVdec, HI_HANDLE hPort, HI_DRV_VIDEO_FRAME_S *pstFrame)
{
	HI_S32 s32Index = 0;
	//VDEC_PORT_FRAME_LIST_NODE_S *pstVdecPortFrameListNode = HI_NULL;
	VDEC_PORT_FRAME_LIST_LOCK_S *pListLock = HI_NULL;
	
	pListLock = &(s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].stPortList.stPortFrameListLock);

	VDEC_SpinLockIRQ(pListLock);
	//pstVdecPortFrameListNode = HI_KMALLOC_ATOMIC_BUFMNG(sizeof(VDEC_PORT_FRAME_LIST_NODE_S));
    //if(HI_NULL == pstVdecPortFrameListNode)
    //{
    //    HI_ERR_VDEC("HI_KMALLOC_ATOMIC_BUFMNG err!\n"); 
    //    return HI_FAILURE;
    //}
	s32Index = s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].s32PortTmpListPos;
	if(s32Index >= VDEC_MAX_PORT_FRAME)
	{
	    HI_ERR_VDEC("Invalid List Index :%d!\n",s32Index);
		VDEC_SpinUnLockIRQ(pListLock);
		return HI_FAILURE;
	}


    memcpy(&(s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].astPortTmpList[s32Index].stPortOutFrame),
            pstFrame,sizeof(HI_DRV_VIDEO_FRAME_S));
	
	s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].s32PortTmpListPos ++;

	VDEC_SpinUnLockIRQ(pListLock);

	return HI_SUCCESS;
}

static HI_S32 VDEC_RecvPortFrameFromVpss(HI_HANDLE hVdec, HI_HANDLE hPort, HI_DRV_VIDEO_FRAME_S *pstFrame)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hPortTmp = 0;
    
    if ((HI_INVALID_HANDLE == hVdec) || (HI_INVALID_HANDLE == hPort))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    hPortTmp = s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stPort[hPort].hPort;
    
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortFrame)(hPortTmp, pstFrame);
	if(HI_SUCCESS != s32Ret)
	{
        HI_ERR_VDEC("Get Port %d Frame err!\n",hPort);
        return HI_FAILURE;	
	}
	
	return s32Ret;
}
static HI_S32 VDEC_EventHandle(HI_S32 s32ChanID, HI_S32 s32EventType, HI_VOID *pArgs)
{
    HI_S32 s32Ret;
    HI_HANDLE hHandle;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    USRDAT *pstUsrData = HI_NULL;
    HI_U32 u32WriteID;
    HI_U32 u32ReadID;
    HI_U32 u32IStreamSize = 0;
    IMAGE* pstImg;
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    HI_U32 u32ID;
    HI_U8 u8Type;
#endif

    /* Find channel number */
    for (hHandle=0; hHandle<HI_VDEC_MAX_INSTANCE_NEW; hHandle++)
    {
        if (s_stVdecDrv.astChanEntity[hHandle].pstChan)
        {
            if (s_stVdecDrv.astChanEntity[hHandle].pstChan->hChan == s32ChanID)
            {
                break;
            }
        }
    }
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("bad handle %d!\n", hHandle);
        return HI_FAILURE;
    }
    
    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);    
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Event handle */
    switch (s32EventType)
    {
    case EVNT_DISP_EREA:
    case EVNT_IMG_SIZE_CHANGE:
    case EVNT_FRMRATE_CHANGE:
    case EVNT_SCAN_CHANGE:
    case EVNT_ASPR_CHANGE:
        break;

    case EVNT_NEW_IMAGE:
        if (pstChan->enCurState == VDEC_CHAN_STATE_RUN)
        {
            HI_DRV_VIDEO_FRAME_S* pstLastFrm  = &(pstChan->stLastFrm);
            HI_DRV_VIDEO_FRAME_S stFrameInfo;

            pstImg = (IMAGE*)(*(HI_U32*)pArgs);
            if (HI_NULL != pstImg)
            {
                VDEC_ConvertFrm(pstChan->stCurCfg.enType, pstChan,HI_NULL, pstImg, &stFrameInfo);

                /* Check norm change */
                if ((stFrameInfo.stDispRect.s32Height != pstLastFrm->stDispRect.s32Height) || 
                    (stFrameInfo.stDispRect.s32Width != pstLastFrm->stDispRect.s32Width) || 
                    (stFrameInfo.bProgressive != pstLastFrm->bProgressive))
                {
                    pstChan->bNormChange = HI_TRUE;
                    pstChan->stNormChangeParam.enNewFormat    = pstChan->enDisplayNorm;
                    pstChan->stNormChangeParam.u32ImageWidth  = stFrameInfo.u32Width;
                    pstChan->stNormChangeParam.u32ImageHeight = stFrameInfo.u32Height;
                    pstChan->stNormChangeParam.u32FrameRate = stFrameInfo.u32FrameRate;//stFrameRate.u32fpsInteger;
                    //pstChan->stNormChangeParam.stFrameRate.u32fpsDecimal = 0;//stFrameInfo.stFrameRate.u32fpsDecimal;
                    pstChan->stNormChangeParam.bProgressive = stFrameInfo.bProgressive;
                }
                //not same l00225186
                /* Check frame packing */
                //if (stFrameInfo.enFramePackingType != pstLastFrm->enFramePackingType)
				if (stFrameInfo.eFrmType != pstLastFrm->eFrmType)
                {
                    pstChan->bFramePackingChange = HI_TRUE;
                    //pstChan->enFramePackingType = stFrameInfo.enFramePackingType;
                    pstChan->enFramePackingType = stFrameInfo.eFrmType;
                }
                
                /* Save last frame */
                *pstLastFrm = stFrameInfo;
                pstChan->bNewFrame = HI_TRUE;
            }
		    if(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32Speed < 0)            
			{                
			    (void)(s_stVdecDrv.pVpssFunc->pfnVpssSendCommand)(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.hVpss,HI_DRV_VPSS_USER_COMMAND_IMAGEREADY, NULL);            
			}
        }
        break;

    case EVNT_FIND_IFRAME:
        pstChan->stStatInfo.u32TotalVdecParseIFrame++;
        if (1 == pstChan->stStatInfo.u32TotalVdecParseIFrame)
        {
            u32IStreamSize = *(HI_U32*)pArgs;
            HI_DRV_STAT_Event(STAT_EVENT_ISTREAMGET, u32IStreamSize);
        }
        break;
        
    case EVNT_USRDAT:
        pstUsrData = (USRDAT *)(*(HI_U32*)pArgs);

#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)

        if (pstUsrData->data_size > 5)
        {
            u32ID = *((HI_U32*)pstUsrData->data);
            u8Type = pstUsrData->data[4];
            if ((VDEC_USERDATA_IDENTIFIER_DVB1 == u32ID) && (VDEC_USERDATA_TYPE_DVB1_CC == u8Type))
            {
                #if (1 == VDEC_USERDATA_NEED_ARRANGE)
                USRDATA_Arrange(hHandle, pstUsrData);
			    #endif
                break;
            }
        }

#endif

        if (HI_NULL == pstChan->pstUsrData)
        {
            pstChan->pstUsrData = HI_KMALLOC_ATOMIC_VDEC(sizeof(VDEC_USRDATA_PARAM_S));
            if (HI_NULL == pstChan->pstUsrData)
            {
                VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
                HI_ERR_VDEC("No memory\n");
                return HI_FAILURE;
            }
            memset(pstChan->pstUsrData, 0, sizeof(VDEC_USRDATA_PARAM_S));
        }

        /* Discard if the buffer of user data full */
        /* CNcomment: 如果用户数据buffer满就直接丢弃 */
        u32WriteID = pstChan->pstUsrData->u32WriteID;
        u32ReadID = pstChan->pstUsrData->u32ReadID;
        if ((u32WriteID + 1) % VDEC_UDC_MAX_NUM == u32ReadID)
        {
            HI_INFO_VDEC("Chan %d drop user data\n", hHandle);
            break;
        }

        pstChan->pstUsrData->stAttr[u32WriteID].enBroadcastProfile = HI_UNF_VIDEO_BROADCAST_DVB;
        pstChan->pstUsrData->stAttr[u32WriteID].enPositionInStream = pstUsrData->from;
        pstChan->pstUsrData->stAttr[u32WriteID].u32Pts = (HI_U32)pstUsrData->PTS;
        pstChan->pstUsrData->stAttr[u32WriteID].u32SeqCnt = pstUsrData->seq_cnt;
        pstChan->pstUsrData->stAttr[u32WriteID].u32SeqFrameCnt  = pstUsrData->seq_img_cnt;
        pstChan->pstUsrData->stAttr[u32WriteID].bBufferOverflow = (pstUsrData->data_size > VDEC_KUD_MAX_LEN);
        pstChan->pstUsrData->stAttr[u32WriteID].pu8Buffer = pstChan->pstUsrData->au8Buf[u32WriteID];
        pstChan->pstUsrData->stAttr[u32WriteID].u32Length =
            (pstUsrData->data_size > VDEC_KUD_MAX_LEN) ? MAX_USER_DATA_LEN : pstUsrData->data_size;
        memcpy(pstChan->pstUsrData->stAttr[u32WriteID].pu8Buffer, pstUsrData->data,
                                        pstChan->pstUsrData->stAttr[u32WriteID].u32Length);
        pstChan->pstUsrData->u32WriteID = (u32WriteID + 1) % VDEC_UDC_MAX_NUM;
        HI_INFO_VDEC("Chan: %d get user data\n", hHandle);
        pstChan->bNewUserData = HI_TRUE;
        break;
    
    case EVNT_VDM_ERR:
    case EVNT_SE_ERR:
        pstChan->stStatInfo.u32TotalStreamErrNum++;
        break;

    case EVNT_IFRAME_ERR:
        pstChan->bIFrameErr = HI_TRUE;
        break;

//#ifdef CHIP_TYPE_hi3712
    /* Capture BTL over */
    case EVNT_CAPTURE_BTL_OVER:
    {
        IMAGE* pstImage;
        
        if ((HI_NULL != pstChan->stBTL.pstFrame) && (1 == atomic_read(&pstChan->stBTL.atmWorking)))
        {
            pstImage = (IMAGE*)(*((HI_U32*)pArgs));
            VDEC_ConvertFrm(pstChan->stCurCfg.enType, pstChan,HI_NULL, pstImage, pstChan->stBTL.pstFrame);
            atomic_dec(&pstChan->stBTL.atmWorking);
            wake_up_interruptible(&(pstChan->stBTL.stWaitQue));
        }
        break;
    }
//#endif

    /* End frame */
    case EVNT_LAST_FRAME:
        /* *(HI_U32*)pArgs: 0 success, 1 fail,  2 report last frame image id */
        if (1 == *(HI_U32*)pArgs)
        {
            pstChan->u32EndFrmFlag = 1;
        }
        else if (2 <= *(HI_U32*)pArgs)
        {
            pstChan->u32EndFrmFlag = 2;
            pstChan->u32LastFrmId = *(HI_U32*)pArgs - 2;
        }
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
        USRDATA_SetEosFlag(hHandle);
#endif
        pstChan->bEndOfStrm = HI_TRUE;
        break;

    /* Resolution change */
    case EVNT_RESOLUTION_CHANGE:
        pstChan->u8ResolutionChange = 1;
        break;
	case EVNT_UNSUPPORT:
		pstChan->bUnSupportStream = 1;
		break;

    default:
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

//add by l00225186
/*vpss 回调函数*/
static HI_S32 VDEC_VpssEventHandle(HI_HANDLE hVdec, HI_DRV_VPSS_EVENT_E enEventID, HI_VOID *pstArgs)
{
	HI_S32 s32Ret;
	HI_S32 i;
    HI_HANDLE hHandle;
	HI_HANDLE hPort = HI_INVALID_HANDLE;
	HI_HANDLE hVpss = HI_INVALID_HANDLE;
	MMZ_BUFFER_S stMMZ_Buffer;
	HI_DRV_VIDEO_FRAME_S stFrame;
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
	HI_VDEC_PRIV_FRAMEINFO_S* pstPrivInfo = HI_NULL;
	HI_DRV_VPSS_PORT_BUFLIST_STATE_S stVpssBufListState;
	/* Find channel number */
    for (hHandle=0; hHandle<HI_VDEC_MAX_INSTANCE_NEW - 1; hHandle++)
    {
        if (s_stVdecDrv.astChanEntity[hHandle].stVpssChan.hVdec == hVdec)
        {
            break;
        }
    }

    if (hHandle > HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("bad handle %d!\n", hHandle);
        return HI_FAILURE;
    }
    
    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);    
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }
    pstVpssChan = &(s_stVdecDrv.astChanEntity[hHandle].stVpssChan);

    /* Event handle */
    switch (enEventID)
    {
	 case VPSS_EVENT_GET_FRMBUFFER:
	 	hPort = ((HI_DRV_VPSS_FRMBUF_S*)pstArgs)->hPort;
		hVpss = (HI_HANDLE)PORTHANDLE_TO_VPSSID(hPort);
		memset(&stMMZ_Buffer, 0, sizeof(MMZ_BUFFER_S));
		stMMZ_Buffer.u32Size = ((HI_DRV_VPSS_FRMBUF_S*)pstArgs)->u32Size;		
	 	s32Ret = BUFMNG_VPSS_RecBuffer(hVpss,hPort,&stMMZ_Buffer);
	    if (HI_SUCCESS != s32Ret)
        {
            HI_INFO_VDEC("Chan %d BUFMNG_VPSS_RecBuffer fail!\n", hHandle);
            return HI_FAILURE;
        }
		((HI_DRV_VPSS_FRMBUF_S*)pstArgs)->u32StartPhyAddr = stMMZ_Buffer.u32StartPhyAddr;
		((HI_DRV_VPSS_FRMBUF_S*)pstArgs)->u32StartVirAddr = stMMZ_Buffer.u32StartVirAddr;
	 break;
     case VPSS_EVENT_REL_FRMBUFFER:
	 	hPort = ((HI_DRV_VPSS_FRMBUF_S*)pstArgs)->hPort;
		hVpss = (HI_HANDLE)PORTHANDLE_TO_VPSSID(hPort);
		stFrame.stBufAddr[0].u32PhyAddr_Y = ((HI_DRV_VPSS_FRMBUF_S*)pstArgs)->u32StartPhyAddr;
		BUFMNG_VPSS_RelBuffer(hVpss,hPort,&stFrame);
	 break;
     case VPSS_EVENT_NEW_FRAME:
	    if(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32Speed < 0)
	    {            	        
            SINT32 s32VpssHaveFrame = 0;
            
            s32VpssHaveFrame = VDEC_CheckVpssPortOutFrameStatus(hVdec);
	        for(i=0; i<VDEC_MAX_PORT_NUM; i++)
	        {
	            if(HI_SUCCESS == s32VpssHaveFrame)
	            {
                    if(HI_INVALID_HANDLE != s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].hPort
						&& (HI_TRUE == pstVpssChan->stPort[i].bEnable))
		            {
		                memset(&stFrame,0,sizeof(stFrame));
		                s32Ret = VDEC_RecvPortFrameFromVpss(hVdec, i, &stFrame);
					    if(HI_SUCCESS == s32Ret)
					    {
					        if(HI_TRUE == s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stControlInfo.u32DispOptimizeFlag)  
					        {
						        if(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].u32LastFrameIndex == stFrame.u32FrameIndex)
						        {
						            s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssRelPortFrame)(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].hPort, &stFrame);
									if(HI_SUCCESS != s32Ret)
									{
									     HI_ERR_VDEC("vdec RelPortFrame err!\n");
									}
						            continue;
						        }
                                else
                                {
                                    stFrame.u32FrameRate /= 2;
                                }
					        }
							s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].u32LastFrameIndex = stFrame.u32FrameIndex;
					        pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S *)(((HI_DRV_VIDEO_PRIVATE_S*)(stFrame.u32Priv))->u32Reserve);
			                s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32RecvNewFrame = 1;
					    }
                        else
                        {
			                s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32RecvNewFrame = 0;
                            continue;
                        }
		            }
                    else
                    {
                        continue;
                    }
	            }
                else
                {
                    continue;
                }
                
		        if(HI_FALSE == s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stControlInfo.u32BackwardOptimizeFlag) 
		        {
		            /*if get a new I frame then insert the tmpFrames to portFrameList from tail to head*/
		            if((HI_FALSE != s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32GetFirstVpssFrameFlag) &&
						(((0 == pstPrivInfo->s32FrameFormat) && (0 == pstPrivInfo->s32FieldFlag)) ||
						(((0 == pstPrivInfo->s32BottomFieldFrameFormat)||(0 == pstPrivInfo->s32TopFieldFrameFormat))&&(1 == pstPrivInfo->s32FieldFlag))))
		            {
		                VDEC_InsertTmpListIntoPortList(hHandle, i);
		            }
					else
					{
                        if(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32RecvNewFrame)
                        {
    					    s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32GetFirstVpssFrameFlag = HI_TRUE;
    						s_stVdecDrv.astChanEntity[hHandle].stVpssChan.eLastFrameFormat = pstPrivInfo->s32FrameFormat;
                        }
					}
		        }
				else
				{                    
                    hHandle &= 0x000000ff;
		            /*if get a new Gop_Num then insert the tmpFrames to portFrameList from tail to head*/
			        if((HI_TRUE == s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32GetFirstVpssFrameFlag) && 
							((pstPrivInfo->s32GopNum) != (s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32PortLastFrameGopNum)) &&
							(0 < s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32PortTmpListPos))
		            {
		                VDEC_InsertTmpListIntoPortList(hHandle, i);
		            }
					/*insert the new frame into tmpFrames*/
					//else
					{
                        if(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32RecvNewFrame)
                        {
    					    s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32GetFirstVpssFrameFlag = HI_TRUE;
    					    s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32PortLastFrameGopNum = pstPrivInfo->s32GopNum;
                        }

					}				    
				}
                
                if(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32RecvNewFrame)
                {
                    VDEC_InsertFrameIntoTmpList(hHandle, i, &stFrame);
                    s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32RecvNewFrame = 0;
                }
	      }
		}
		else
		{
	        for(i=0; i<VDEC_MAX_PORT_NUM; i++)
	        {
                if(HI_DRV_VPSS_BUF_USER_ALLOC_MANAGE == s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].bufferType)
                {
                    hPort = ((HI_DRV_VPSS_FRMINFO_S*)pstArgs)->hPort;
                    hVpss = (HI_HANDLE)PORTHANDLE_TO_VPSSID(hPort);
                    s32Ret = VDEC_VpssNewImageEvent(hVpss,hPort,&((HI_DRV_VPSS_FRMINFO_S*)pstArgs)->stFrame);
                }
	        }
		}
		
	 break;
	 #if 1
	 case  VPSS_EVENT_BUFLIST_FULL:
	 	for(i = 0; i<VDEC_MAX_PORT_NUM; i++)
        {
            if(VDEC_PORT_TYPE_MASTER == pstVpssChan->stPort[i].enPortType
               || VDEC_PORT_TYPE_SLAVE == pstVpssChan->stPort[i].enPortType)
            {
            	hPort = pstVpssChan->stPort[i].hPort;
            	memset(&stVpssBufListState, 0, sizeof(HI_DRV_VPSS_PORT_BUFLIST_STATE_S));
		        s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortBufListState)(hPort, &stVpssBufListState);
			    if(HI_SUCCESS == s32Ret)
			    {
    			    /*master_port slave_port full:HI_DRV_VPSS_BUFFUL_PAUSE,master_port slave_port not full:HI_DRV_VPSS_BUFFUL_KEEPWORKING*/
    				if(stVpssBufListState.u32FulBufNumber > stVpssBufListState.u32TotalBufNumber-2)
    				{
    				 /*master_port slave_port full:HI_DRV_VPSS_BUFFUL_PAUSE*/
    				 *(HI_DRV_VPSS_BUFFUL_STRATAGY_E *)pstArgs = HI_DRV_VPSS_BUFFUL_PAUSE;
    				 break;
    			    }
    				else
    				{
    				 /*master_port slave_port not full:HI_DRV_VPSS_BUFFUL_KEEPWORKING*/  
    				 *(HI_DRV_VPSS_BUFFUL_STRATAGY_E *)pstArgs = HI_DRV_VPSS_BUFFUL_KEEPWORKING;
    				}
			    }
            }
			else
			{
			   //*(HI_DRV_VPSS_BUFFUL_STRATAGY_E *)pstArgs = HI_DRV_VPSS_BUFFUL_KEEPWORKING;
			}
        }

        if(i >= VDEC_MAX_PORT_NUM)
        {
            HI_WARN_VDEC("Port not exist!\n"); 
			VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            return HI_FAILURE;
        }
        else
        {
            
        }

		break;
     #endif
     #if 0
      case  VPSS_EVENT_BUFLIST_FULL:
	 	for(i = 0; i<VDEC_MAX_PORT_NUM; i++)
        {
            if(VDEC_PORT_TYPE_MASTER == pstVpssChan->stPort[i].enPortType
               || VDEC_PORT_TYPE_SLAVE == pstVpssChan->stPort[i].enPortType)
            {
            	hPort = pstVpssChan->stPort[i].hPort;
                break;
            }
			else
			{
			    *(HI_DRV_VPSS_BUFFUL_STRATAGY_E *)pstArgs = HI_DRV_VPSS_BUFFUL_KEEPWORKING;
                break;
			}
        }

        if(i >= VDEC_MAX_PORT_NUM)
        {
            HI_WARN_VDEC("Port not exist!\n"); 
			VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            return HI_FAILURE;
        }
        else
        {
            memset(&stVpssBufListState, 0, sizeof(HI_DRV_VPSS_PORT_BUFLIST_STATE_S));
		    s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortBufListState)(hPort, &stVpssBufListState);
			if(HI_SUCCESS == s32Ret)
			{
			    /*master_port slave_port full:HI_DRV_VPSS_BUFFUL_PAUSE,master_port slave_port not full:HI_DRV_VPSS_BUFFUL_KEEPWORKING*/
				if(stVpssBufListState.u32FulBufNumber == stVpssBufListState.u32TotalBufNumber)
				{
				     /*master_port slave_port full:HI_DRV_VPSS_BUFFUL_PAUSE*/
				     *(HI_DRV_VPSS_BUFFUL_STRATAGY_E *)pstArgs = HI_DRV_VPSS_BUFFUL_PAUSE;
				     break;
			    }
				else
				{
				 /*master_port slave_port not full:HI_DRV_VPSS_BUFFUL_KEEPWORKING*/  
				 *(HI_DRV_VPSS_BUFFUL_STRATAGY_E *)pstArgs = HI_DRV_VPSS_BUFFUL_KEEPWORKING;
				}
			}
        }

		break;
		#endif
     default:
         VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
         return HI_FAILURE;   	
    }
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}
static HI_S32 VDEC_GetCap(VDEC_CAP_S* pstCap)
{
    HI_S32 s32Ret;

    if (HI_NULL == pstCap)
    {
        return HI_FAILURE;
    }

    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(HI_INVALID_HANDLE, VDEC_CID_GET_CAPABILITY, pstCap);
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_VDEC("VFMW GET_CAPABILITY err:%d!\n", s32Ret);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_CreateStrmBuf(HI_DRV_VDEC_STREAM_BUF_S *pstBuf)
{
    HI_S32 s32Ret;
    BUFMNG_INST_CONFIG_S stBufInstCfg;

    if (HI_NULL == pstBuf)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    /* Create buffer manager instance */
    stBufInstCfg.enAllocType = BUFMNG_ALLOC_INNER;
    stBufInstCfg.u32PhyAddr = 0;
    stBufInstCfg.pu8UsrVirAddr = HI_NULL;
    stBufInstCfg.pu8KnlVirAddr = HI_NULL;
    stBufInstCfg.u32Size = pstBuf->u32Size;
    strncpy(stBufInstCfg.aszName, "VDEC_ESBuf", 16);
    s32Ret = BUFMNG_Create(&(pstBuf->hHandle), &stBufInstCfg);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_VDEC("BUFMNG_Create err!\n");
        return HI_FAILURE;
    }

    pstBuf->u32PhyAddr = stBufInstCfg.u32PhyAddr;
    return HI_SUCCESS;
}

static HI_S32 VDEC_StrmBuf_SetUserAddr(HI_HANDLE hHandle, HI_U32 u32Addr)
{
    return BUFMNG_SetUserAddr(hHandle, u32Addr);
}

static HI_S32 VDEC_DestroyStrmBuf(HI_HANDLE hHandle)
{
    /* Destroy instance */
    if (HI_SUCCESS != BUFMNG_Destroy(hHandle))
    {
        HI_ERR_VDEC("Destroy buf %d err!\n", hHandle);
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_AttachStrmBuf(HI_HANDLE hHandle, HI_U32 u32BufSize, HI_HANDLE hDmxVidChn, HI_HANDLE hStrmBuf)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_ERR_VDEC_INVALID_CHANID;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Must attach buffer before start */
    if (pstChan->enCurState != VDEC_CHAN_STATE_STOP)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d state err:%d!\n", hHandle, pstChan->enCurState);
        return HI_ERR_VDEC_INVALID_STATE;
    }

    if (VDEC_CHAN_STRMBUF_ATTACHED(pstChan))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d has strm buf:%d!\n", hHandle, pstChan->hStrmBuf);
        return HI_ERR_VDEC_BUFFER_ATTACHED;
    }

    if (HI_INVALID_HANDLE != hDmxVidChn)
    {
        pstChan->hDmxVidChn = hDmxVidChn;
        pstChan->u32DmxBufSize = u32BufSize;
        pstChan->hStrmBuf = HI_INVALID_HANDLE;
        pstChan->u32StrmBufSize = 0;
    }
    else
    {
        pstChan->hStrmBuf = hStrmBuf;
        pstChan->u32StrmBufSize = u32BufSize;
        pstChan->hDmxVidChn = HI_INVALID_HANDLE;
        pstChan->u32DmxBufSize = 0;
    }
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_DetachStrmBuf(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Must stop channel first */
    if (pstChan->enCurState != VDEC_CHAN_STATE_STOP)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d state err:%d!\n", hHandle, pstChan->enCurState);
        return HI_FAILURE;
    }

    /* Clear handles */
    pstChan->hStrmBuf = HI_INVALID_HANDLE;
    pstChan->u32StrmBufSize = 0;
    pstChan->hDmxVidChn = HI_INVALID_HANDLE;
    pstChan->u32DmxBufSize = 0;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_SetEosFlag(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    HI_U8 au8EndFlag[5][20] = 
    {
        /* H264 */
        {0x00, 0x00, 0x01, 0x0b, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4e, 0x44, 
         0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00},
        /* VC1ap,AVS */
        {0x00, 0x00, 0x01, 0xfe, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4e, 0x44, 
         0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00},
        /* MPEG4 short header */
        {0x00, 0x00, 0x80, 0x00, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4e, 0x44, 
         0x00, 0x00, 0x80, 0x00, 0x00, 0x80, 0x00, 0x00},
        /* MPEG4 long header */
        {0x00, 0x00, 0x01, 0xb6, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4e, 0x44, 
         0x00, 0x00, 0x01, 0xb6, 0x00, 0x00, 0x01, 0x00},
        /* MPEG2 */
        {0x00, 0x00, 0x01, 0xb7, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4e, 0x44, 
         0x00, 0x00, 0x01, 0xb7, 0x00, 0x00, 0x00, 0x00},
    };
    HI_U8 au8ShortEndFlag[4] = {0xff, 0xff, 0xff, 0xff};
    HI_U8* pu8Flag = HI_NULL;
    HI_U32 u32FlagLen;
	
    VDEC_CHAN_STATE_S stChanState = {0};

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);    
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;


    switch (pstChan->stCurCfg.enType)
    {
        case HI_UNF_VCODEC_TYPE_H264:
            pu8Flag = au8EndFlag[0];
            u32FlagLen = 15;
            break;
            
        case HI_UNF_VCODEC_TYPE_AVS:
            pu8Flag = au8EndFlag[1];
            u32FlagLen = 15;
            break;

        case HI_UNF_VCODEC_TYPE_MPEG4:
            s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_CHAN_STATE, &stChanState);
            if (VDEC_OK != s32Ret)
            {
                HI_ERR_VDEC("Chan %d GET_CHAN_STATE err\n", pstChan->hChan);
                s32Ret = HI_FAILURE;
                goto err0;
            }

            /* Short header */
            if (2 == stChanState.mpeg4_shorthead)
            {
                pu8Flag = au8EndFlag[2];
                u32FlagLen = 18;
            }
            /* Long header */
            else if (1 == stChanState.mpeg4_shorthead)
            {
                pu8Flag = au8EndFlag[3];
                u32FlagLen = 19;
            }
            /* Type error */
            else
            {
                s32Ret = HI_FAILURE;
                goto err0;
            }
            break;

        case HI_UNF_VCODEC_TYPE_MPEG2:
            pu8Flag = au8EndFlag[4];
            u32FlagLen = 16;
            break;

        case HI_UNF_VCODEC_TYPE_VC1:
            /* AP */
            if ((1 == pstChan->stCurCfg.unExtAttr.stVC1Attr.bAdvancedProfile) && 
                (8 == pstChan->stCurCfg.unExtAttr.stVC1Attr.u32CodecVersion))
            {
                pu8Flag = au8EndFlag[1];
                u32FlagLen = 15;
            }
            /* SMP */
            else
            {
                pu8Flag = au8ShortEndFlag;
                u32FlagLen = 4;
            }
            break;

        case HI_UNF_VCODEC_TYPE_REAL8:
        case HI_UNF_VCODEC_TYPE_REAL9:
        case HI_UNF_VCODEC_TYPE_VP6:
        case HI_UNF_VCODEC_TYPE_VP6F:
        case HI_UNF_VCODEC_TYPE_VP6A:
        case HI_UNF_VCODEC_TYPE_VP8:
        case HI_UNF_VCODEC_TYPE_DIVX3:
        case HI_UNF_VCODEC_TYPE_H263:
        case HI_UNF_VCODEC_TYPE_SORENSON:
            pu8Flag = au8ShortEndFlag;
            u32FlagLen = 4;
            break;
            
        default:
            s32Ret = HI_SUCCESS;
            goto err0;
            break;
    }

    if (HI_NULL != pu8Flag)
    {
        /* Alloc EOS MMZ */
#if defined (CFG_ANDROID_TOOLCHAIN)
        s32Ret = HI_DRV_MMZ_AllocAndMap("VDEC_EOS", "vdec", u32FlagLen, 0, &pstChan->stEOSBuffer);
#else
        s32Ret = HI_DRV_MMZ_AllocAndMap("VDEC_EOS", HI_NULL, u32FlagLen, 0, &pstChan->stEOSBuffer);
#endif
        
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Chan %d alloc EOS MMZ err!\n", hHandle);
            goto err0;
        }
        memcpy((HI_VOID*)pstChan->stEOSBuffer.u32StartVirAddr, pu8Flag, u32FlagLen);
        pstChan->bSetEosFlag = HI_TRUE;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    HI_INFO_VDEC("Chan %d STREAM_END OK\n", hHandle);
    return HI_SUCCESS;

err0:
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return s32Ret;
}

HI_S32 HI_DRV_VDEC_DiscardFrm(HI_HANDLE hHandle, VDEC_DISCARD_FRAME_S* pstParam)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstParam)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
    
    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);    
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Call vfmw */
    if (HI_INVALID_HANDLE != pstChan->hChan)
    {
        s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_DISCARDPICS_PARAM, pstParam);
        if (VDEC_OK != s32Ret)
        {
            HI_ERR_VDEC("Chan %d DISCARDPICS err!\n", pstChan->hChan);
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            return HI_FAILURE;
        }
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    HI_INFO_VDEC("Chan %d DiscardFrm mode %d OK\n", hHandle, pstParam->enMode);
    return HI_SUCCESS;
}

static HI_S32 VDEC_GetStrmBuf(HI_HANDLE hHandle, VDEC_ES_BUF_S *pstEsBuf, HI_BOOL bUserSpace)
{
    HI_S32 s32Ret;
    BUFMNG_BUF_S stElem;

    if (HI_NULL == pstEsBuf)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Get buffer */
    stElem.u32Size = pstEsBuf->u32BufSize;
    s32Ret = BUFMNG_GetWriteBuffer(hHandle, &stElem);
    if (s32Ret != HI_SUCCESS)
    {
        return s32Ret;
    }
    pstEsBuf->u32BufSize = stElem.u32Size;

    /* If invoked by user space, return user virtual address */
    if (bUserSpace)
    {
        pstEsBuf->pu8Addr = stElem.pu8UsrVirAddr;
    }
    /* else, invoked by kernel space, return kernel virtual address */
    else
    {
        pstEsBuf->pu8Addr = stElem.pu8KnlVirAddr;
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_PutStrmBuf(HI_HANDLE hHandle, VDEC_ES_BUF_S *pstEsBuf, HI_BOOL bUserSpace)
{
    HI_S32 s32Ret;
    BUFMNG_BUF_S stElem;

    /* Check parameter */
    if (HI_NULL == pstEsBuf)
    {
        HI_INFO_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    /* If user sapce, put by pu8UsrVirAddr */
    if (bUserSpace)
    {
        stElem.pu8UsrVirAddr = pstEsBuf->pu8Addr;
        stElem.pu8KnlVirAddr = 0;
    }
    /* If kernek sapce, put by pu8KnlVirAddr */
    else
    {
        stElem.pu8KnlVirAddr = pstEsBuf->pu8Addr;
        stElem.pu8UsrVirAddr = 0;
    }
    stElem.u64Pts = pstEsBuf->u64Pts;
    stElem.u32Marker = 0;
    if (!pstEsBuf->bEndOfFrame)
    {
        stElem.u32Marker |= BUFMNG_NOT_END_FRAME_BIT;
    }
    if (pstEsBuf->bDiscontinuous)
    {
        stElem.u32Marker |= BUFMNG_DISCONTINUOUS_BIT;
    }
    stElem.u32Size = pstEsBuf->u32BufSize;
    s32Ret = BUFMNG_PutWriteBuffer(hHandle, &stElem);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_VDEC("Buf %d put err!\n", hHandle);
        return HI_FAILURE;
    }

	/* save raw stream */
	BUFMNG_SaveRaw(hHandle, stElem.pu8KnlVirAddr, stElem.u32Size);
	
    return HI_SUCCESS;
}

static HI_S32 VDEC_RecvStrmBuf(HI_HANDLE hHandle, STREAM_DATA_S *pstPacket, HI_BOOL bUserSpace)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    BUFMNG_BUF_S stEsBuf;
    memset(&stEsBuf, 0, sizeof(BUFMNG_BUF_S));
    /* Check parameter */
    if (HI_NULL == pstPacket)
    {
        HI_ERR_VDEC("bad param!\n");
        return HI_FAILURE;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        s32Ret = HI_FAILURE;
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return s32Ret;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;
    
    /* Get ES data from demux directly */
    if ((pstChan->hDmxVidChn != HI_INVALID_HANDLE) && s_stVdecDrv.pDmxFunc&& s_stVdecDrv.pDmxFunc->pfnDmxAcquireEs)
    {
        DMX_Stream_S vidEsBuf = {0};

        pstChan->stStatInfo.u32VdecAcqBufTry++;

        s32Ret = (s_stVdecDrv.pDmxFunc->pfnDmxAcquireEs)(pstChan->hDmxVidChn, &vidEsBuf);
        if (HI_SUCCESS != s32Ret)
        {
            goto OUT;
        }

        pstPacket->PhyAddr = vidEsBuf.u32BufPhyAddr;
        pstPacket->VirAddr = (HI_U8*)vidEsBuf.u32BufVirAddr;
        pstPacket->Length = vidEsBuf.u32BufLen;
        pstPacket->Pts   = vidEsBuf.u32PtsMs;
        pstPacket->Index = vidEsBuf.u32Index;
        pstPacket->DispTime = (HI_U64)vidEsBuf.u32DispTime;
        pstPacket->DispEnableFlag = vidEsBuf.u32DispEnableFlag;
        pstPacket->DispFrameDistance = vidEsBuf.u32DispFrameDistance;
        pstPacket->DistanceBeforeFirstFrame = vidEsBuf.u32DistanceBeforeFirstFrame;
        pstPacket->GopNum = vidEsBuf.u32GopNum;
        pstPacket->is_not_last_packet_flag = 0;
        pstPacket->UserTag = 0;
        pstPacket->discontinue_count = 0;
        pstPacket->is_stream_end_flag = 0;

        /*get first valid pts*/
        if (0 == pstChan->u32ValidPtsFlag && -1 != vidEsBuf.u32PtsMs)
        {
            pstChan->bFirstValidPts = HI_TRUE;
            pstChan->u32FirstValidPts = vidEsBuf.u32PtsMs;
            pstChan->u32ValidPtsFlag = 1;
        }
        /*get second valid pts*/
        else if (1 == pstChan->u32ValidPtsFlag && -1 != vidEsBuf.u32PtsMs)
        {
            pstChan->bSecondValidPts = HI_TRUE;
            pstChan->u32SecondValidPts = vidEsBuf.u32PtsMs;
            pstChan->u32ValidPtsFlag = 2;            
        }

        if (0 == pstChan->stStatInfo.u32TotalVdecInByte)
        {
            HI_DRV_STAT_Event(STAT_EVENT_STREAMIN, 0);
        }

        pstChan->stStatInfo.u32TotalVdecInByte   += pstPacket->Length;
        pstChan->stStatInfo.u32TotalVdecHoldByte += pstPacket->Length;
        pstChan->stStatInfo.u32VdecAcqBufOK++;

#ifdef TEST_VDEC_SAVEFILE
        VDEC_Dbg_RecSaveFile(hHandle, pstPacket->VirAddr, pstPacket->Length);
#endif
    }
    /* Get ES data from BM */
    else
    {
        s32Ret = BUFMNG_AcqReadBuffer(pstChan->hStrmBuf, &stEsBuf);
        if (HI_SUCCESS != s32Ret)
        {
            goto OUT;
        }

        pstPacket->PhyAddr = stEsBuf.u32PhyAddr;
        /* If get from user space, pass user virtual address */
        if (bUserSpace)
        {
            pstPacket->VirAddr = stEsBuf.pu8UsrVirAddr;
        }
        /* If get from kernel space, pass kernel virtual address */
        else
        {
            pstPacket->VirAddr = stEsBuf.pu8KnlVirAddr;
        }
        pstPacket->Length = stEsBuf.u32Size;
        pstPacket->Pts = stEsBuf.u64Pts;
        pstPacket->Index = stEsBuf.u32Index;
        pstPacket->is_not_last_packet_flag = stEsBuf.u32Marker & BUFMNG_NOT_END_FRAME_BIT;
        if (stEsBuf.u32Marker & BUFMNG_DISCONTINUOUS_BIT)
        {
            pstChan->u32DiscontinueCount++;
        }
        pstPacket->UserTag = 0;
        pstPacket->discontinue_count = pstChan->u32DiscontinueCount;
        pstPacket->is_stream_end_flag = (stEsBuf.u32Marker & BUFMNG_END_OF_STREAM_BIT) ? 1 : 0;

        /*get first valid pts*/
        if (0 == pstChan->u32ValidPtsFlag && -1 != (HI_U32)stEsBuf.u64Pts)
        {
            pstChan->bFirstValidPts = HI_TRUE;
            pstChan->u32FirstValidPts = (HI_U32)stEsBuf.u64Pts;
            pstChan->u32ValidPtsFlag = 1;
        }
        /*get second valid pts*/
        else if (1 == pstChan->u32ValidPtsFlag && -1 != (HI_U32)stEsBuf.u64Pts)
        {
            pstChan->bSecondValidPts = HI_TRUE;
            pstChan->u32SecondValidPts = (HI_U32)stEsBuf.u64Pts;
            pstChan->u32ValidPtsFlag = 2;            
        }

        pstChan->stStatInfo.u32TotalVdecInByte   += pstPacket->Length;
        pstChan->stStatInfo.u32TotalVdecHoldByte += pstPacket->Length;
    }

OUT:
    /* Added for set eos flag */
    /* Must be end of stream */
    if ((pstChan->bSetEosFlag) && 
           /* Get ES buffer fail */
         (((pstChan->hStrmBuf != HI_INVALID_HANDLE) && (HI_SUCCESS != s32Ret)) || 
           /* Get Demux buffer HI_ERR_DMX_EMPTY_BUFFER */
          ((pstChan->hDmxVidChn != HI_INVALID_HANDLE) && (HI_ERR_DMX_EMPTY_BUFFER == s32Ret))))
    {
        pstPacket->PhyAddr = pstChan->stEOSBuffer.u32StartPhyAddr;
        pstPacket->VirAddr = (HI_U8*)pstChan->stEOSBuffer.u32StartVirAddr;
        pstPacket->Length = pstChan->stEOSBuffer.u32Size;
        pstPacket->Pts = HI_INVALID_PTS;
        pstPacket->Index = 0;
        pstPacket->UserTag = 0;
        if (pstChan->hDmxVidChn != HI_INVALID_HANDLE)
        {
            pstPacket->discontinue_count = 0;
        }
        else
        {
            pstPacket->discontinue_count = pstChan->u32DiscontinueCount;
        }
        pstPacket->is_not_last_packet_flag = 0;
        pstPacket->is_stream_end_flag = 1;
        pstChan->bSetEosFlag = HI_FALSE;
        s32Ret = HI_SUCCESS;
    }
    
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return s32Ret;
}

static HI_S32 VDEC_RlsStrmBuf(HI_HANDLE hHandle, STREAM_DATA_S *pstPacket, HI_BOOL bUserSpace)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    BUFMNG_BUF_S stBuf;

    if (HI_NULL == pstPacket)
    {
        HI_INFO_VDEC("INFO: %d pstPacket == HI_NULL!\n", hHandle);
        return HI_FAILURE;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Release EOS MMZ buffer */
    if (pstPacket->PhyAddr == pstChan->stEOSBuffer.u32StartPhyAddr)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stEOSBuffer);
        memset(&pstChan->stEOSBuffer, 0, sizeof(pstChan->stEOSBuffer));
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_SUCCESS;
    }
    
    /* Put ES buffer of demux */
    if ((pstChan->hDmxVidChn != HI_INVALID_HANDLE) && s_stVdecDrv.pDmxFunc && s_stVdecDrv.pDmxFunc->pfnDmxReleaseEs)
    {
        DMX_Stream_S vidEsBuf;

        pstChan->stStatInfo.u32VdecRlsBufTry++;
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

        vidEsBuf.u32BufPhyAddr = pstPacket->PhyAddr;
        vidEsBuf.u32BufVirAddr = (HI_U32)pstPacket->VirAddr;
        vidEsBuf.u32BufLen = pstPacket->Length;
        vidEsBuf.u32PtsMs = pstPacket->Pts;
        vidEsBuf.u32Index = pstPacket->Index;

        s32Ret = (s_stVdecDrv.pDmxFunc->pfnDmxReleaseEs)(pstChan->hDmxVidChn, &vidEsBuf);
        if (HI_SUCCESS != s32Ret)
        {
            HI_WARN_VDEC("VDEC ReleaseBuf(%#x) to Dmx err:%#x.\n", pstPacket->PhyAddr, s32Ret);
        }
        else
        {
            pstChan->stStatInfo.u32TotalVdecHoldByte -= pstPacket->Length;
            pstChan->stStatInfo.u32VdecRlsBufOK++;
        }

        return s32Ret;
    }
    /* Put BM buffer */
    else
    {
        stBuf.u32PhyAddr = 0;
        if (bUserSpace)
        {
            stBuf.pu8UsrVirAddr = pstPacket->VirAddr;
            stBuf.pu8KnlVirAddr = HI_NULL;
        }
        else
        {
            stBuf.pu8KnlVirAddr = pstPacket->VirAddr;
            stBuf.pu8UsrVirAddr = HI_NULL;
        }
        stBuf.u32Size  = pstPacket->Length;
        stBuf.u32Index = pstPacket->Index;
        stBuf.u64Pts = pstPacket->Pts;
        /* Don't care stBuf.u32Marker here. */
        
        /* Put */
        s32Ret = BUFMNG_RlsReadBuffer(pstChan->hStrmBuf, &stBuf);
        if (HI_SUCCESS != s32Ret)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            return HI_FAILURE;
        }
        
        pstChan->stStatInfo.u32TotalVdecHoldByte -= pstPacket->Length;
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    }
    
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_RecvStrmBuf(HI_S32 hHandle, STREAM_DATA_S *pstPacket)
{
    return VDEC_RecvStrmBuf((HI_HANDLE)hHandle, pstPacket, HI_FALSE);
}

static HI_S32 VDEC_Chan_RlsStrmBuf(HI_S32 hHandle, STREAM_DATA_S *pstPacket)
{
    return VDEC_RlsStrmBuf((HI_HANDLE)hHandle, pstPacket, HI_FALSE);
}
//add by l00225186
/*提供给vo收帧的函数*/
static HI_S32 VDEC_Chan_VOAcqFrame(HI_HANDLE hPort, HI_DRV_VIDEO_FRAME_S *pstVpssFrame)
{
    HI_S32 s32Ret;
    s32Ret = HI_SUCCESS;
    if ((HI_INVALID_HANDLE == hPort) || (HI_NULL == pstVpssFrame))
    {
        HI_ERR_VDEC("VDEC_Chan_VOAcqFrame Bad param!\n");
        return HI_FAILURE;
    }
	/*调用vpss的获取帧存函数,要确定vpss释放函数成功返回的是HI_SUCCESS*/
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortFrame)(hPort, pstVpssFrame);
    return s32Ret;
}

/*提供给vo释放帧的函数*/
static HI_S32 VDEC_Chan_VORlsFrame(HI_HANDLE hPort, HI_DRV_VIDEO_FRAME_S *pstVpssFrame)
{
    HI_S32 s32Ret;
	HI_DRV_VPSS_PORT_CFG_S stVpssPortCfg;
    s32Ret = HI_SUCCESS;
    if ((HI_INVALID_HANDLE == hPort) || (HI_NULL == pstVpssFrame))
    {
        HI_ERR_VDEC("VDEC_Chan_VORlsFrame Bad param!\n");
        return HI_FAILURE;
    }
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortCfg)(hPort,&stVpssPortCfg);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_VDEC("HI_DRV_VPSS_GetDefaultPortCfg err!\n");
		return HI_FAILURE;
	}
	if(HI_DRV_VPSS_BUF_USER_ALLOC_MANAGE == stVpssPortCfg.stBufListCfg.eBufType)
	{
		s32Ret = BUFMNG_VPSS_RelBuffer((HI_HANDLE)PORTHANDLE_TO_VPSSID(hPort),hPort,pstVpssFrame);
		if(HI_SUCCESS != s32Ret)
	    {
		    HI_ERR_VDEC("BUFMNG_VPSS_RelBuffer err!\n");
		    return HI_FAILURE;
	    }
	}
	else
	{
		/*调用vpss的释放帧存函数*/
		s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssRelPortFrame)(hPort, pstVpssFrame);
	}
    return s32Ret;
}
static HI_S32 VDEC_ConvertWinInfo(HI_DRV_VPSS_PORT_CFG_S* pstVpssPortCfg, HI_DRV_WIN_PRIV_INFO_S* pstWinInfo)
{
	pstVpssPortCfg->s32OutputWidth               = pstWinInfo->stOutRect.s32Width;
	pstVpssPortCfg->s32OutputHeight              = pstWinInfo->stOutRect.s32Height;
	pstVpssPortCfg->u32MaxFrameRate              = pstWinInfo->u32MaxRate;
	pstVpssPortCfg->eDstCS                       = HI_DRV_CS_BT709_YUV_LIMITED;
	pstVpssPortCfg->eFormat                      = pstWinInfo->ePixFmt;
	pstVpssPortCfg->eAspMode                     = pstWinInfo->enARCvrs;
	pstVpssPortCfg->stCustmAR                    = pstWinInfo->stCustmAR;

	
	pstVpssPortCfg->stDispPixAR                 = pstWinInfo->stScreenAR;

    pstVpssPortCfg->stScreen = pstWinInfo->stScreen;
    pstVpssPortCfg->b3Dsupport = pstWinInfo->bIn3DMode;
	/*
	pstVpssPortCfg->stBufListCfg.eBufType        = 0;
	pstVpssPortCfg->stBufListCfg.u32BufNumber    = 6; 
	pstVpssPortCfg->stBufListCfg.u32BufSize      = 2*(pstWinInfo->stOutRect.s32Width)*(pstWinInfo->stOutRect.s32Height);
	pstVpssPortCfg->stBufListCfg.u32BufStride    = pstVpssPortCfg->s32OutputWidth;
	*/
	return HI_SUCCESS;
}
//add by l00225186
static HI_S32 VDEC_Chan_VOChangeWinInfo(HI_HANDLE hPort,HI_DRV_WIN_PRIV_INFO_S* pstWinInfo)
{
	HI_S32 s32Ret;
	HI_DRV_VPSS_PORT_CFG_S stVpssPortCfg;
	HI_DRV_VPSS_CFG_S stVpssCfg;
	HI_HANDLE hVpss;
    if ((HI_INVALID_HANDLE == hPort) || (HI_NULL == pstWinInfo))
    {
        HI_ERR_VDEC("VDEC_Chan_VORlsFrame Bad param!\n");
        return HI_FAILURE;
    }   
    hVpss = PORTHANDLE_TO_VPSSID(hPort);
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortCfg)(hPort, &stVpssPortCfg);
	
	if(HI_SUCCESS != s32Ret)
	{
		return s32Ret;
	}
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetVpssCfg)(hVpss,&stVpssCfg);
	
	
	if(HI_SUCCESS != s32Ret)
	{
		return s32Ret;
	}

	if (pstWinInfo->bUseCropRect )
	{
	    stVpssCfg.stProcCtrl.bUseCropRect = HI_TRUE;
        stVpssCfg.stProcCtrl.stCropRect.u32LeftOffset = pstWinInfo->stCropRect.u32LeftOffset;
        stVpssCfg.stProcCtrl.stCropRect.u32RightOffset = pstWinInfo->stCropRect.u32RightOffset;
        stVpssCfg.stProcCtrl.stCropRect.u32BottomOffset = pstWinInfo->stCropRect.u32BottomOffset;
        stVpssCfg.stProcCtrl.stCropRect.u32TopOffset = pstWinInfo->stCropRect.u32TopOffset;
	}
	else
	{
	    stVpssCfg.stProcCtrl.bUseCropRect = HI_FALSE;
        stVpssCfg.stProcCtrl.stInRect.s32Height = pstWinInfo->stInRect.s32Height;
        stVpssCfg.stProcCtrl.stInRect.s32Width  = pstWinInfo->stInRect.s32Width;
        stVpssCfg.stProcCtrl.stInRect.s32X      = pstWinInfo->stInRect.s32X;
        stVpssCfg.stProcCtrl.stInRect.s32Y      = pstWinInfo->stInRect.s32Y;
	}

	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSetVpssCfg)(hVpss,&stVpssCfg);
	
	VDEC_ConvertWinInfo(&stVpssPortCfg,pstWinInfo);
	/*重新设置PORT属性*/
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSetPortCfg)(hPort, &stVpssPortCfg);
	return s32Ret;
}
//add by l00225185
/*创建vpss*/
static HI_S32 VDEC_Chan_CreateVpss(HI_HANDLE hVdec,HI_HANDLE * phVpss)
{
    HI_S32 s32Ret;
    HI_DRV_VPSS_CFG_S stVpssCfg;
	HI_DRV_VPSS_SOURCE_FUNC_S stRegistSrcFunc;
    
    if ((HI_INVALID_HANDLE == hVdec) || (HI_NULL == phVpss))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    hVdec &= 0xFF;
    if(hVdec >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("VDEC_Chan_CreateVpss err hvdec:%d too large!\n",hVdec);
        return HI_FAILURE;  
    }
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetDefaultCfg)(&stVpssCfg);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_VDEC("HI_DRV_VPSS_GetDefaultCfg err!\n");
        return HI_FAILURE;
	}

	/*向上返回创建的vpss句柄*/
    s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssCreateVpss)(&stVpssCfg,phVpss);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("HI_DRV_VPSS_CreateVpss err!\n");
        return HI_FAILURE;
    }

    s32Ret = down_interruptible(&s_stVdecDrv.stSem);

    /*保存vpss句柄*/
    s_stVdecDrv.astChanEntity[hVdec].stVpssChan.hVpss = *phVpss;
    up(&s_stVdecDrv.stSem);

    
	s_stVdecDrv.astChanEntity[hVdec].stVpssChan.eFramePackType = HI_UNF_FRAME_PACKING_TYPE_BUTT;
    /*注册vpss回调函数*/
    s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssRegistHook)(*phVpss,hVdec,VDEC_VpssEventHandle);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("HI_DRV_VPSS_RegistHook err!\n");
        return HI_FAILURE;
    }	
	stRegistSrcFunc.VPSS_GET_SRCIMAGE = VDEC_Chan_VpssRecvFrmBuf;
	stRegistSrcFunc.VPSS_REL_SRCIMAGE = VDEC_Chan_VpssRlsFrmBuf;
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSetSourceMode)(*phVpss,VPSS_SOURCE_MODE_VPSSACTIVE,&stRegistSrcFunc);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("HI_DRV_VPSS_SetSourceMode err!\n");
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}

HI_S32 VDEC_Chan_DestroyVpss(HI_HANDLE hVdec)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_HANDLE hVpss;

    //s32Ret = down_interruptible(&s_stVdecDrv.stSem);
    hVpss = s_stVdecDrv.astChanEntity[hVdec].stVpssChan.hVpss;
    if(HI_INVALID_HANDLE != hVpss)
    {
		s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssDestroyVpss)(hVpss);
        if(HI_SUCCESS != s32Ret)
        {
            up(&s_stVdecDrv.stSem);
            return s32Ret;
        }
        s_stVdecDrv.astChanEntity[hVdec].stVpssChan.hVpss = HI_INVALID_HANDLE;
		s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stControlInfo.u32BackwardOptimizeFlag = HI_FALSE;
	    s_stVdecDrv.astChanEntity[hVdec].stVpssChan.stControlInfo.u32DispOptimizeFlag = HI_FALSE;
	    s_stVdecDrv.astChanEntity[hVdec].stVpssChan.s32GetFirstIFrameFlag = HI_FALSE;
	    s_stVdecDrv.astChanEntity[hVdec].stVpssChan.s32GetFirstVpssFrameFlag = HI_FALSE;
		s_stVdecDrv.astChanEntity[hVdec].stVpssChan.eLastFrameFormat = VDEC_FRAME_BUTT;
		//s_stVdecDrv.astChanEntity[hVdec].stVpssChan.s32LastFrameGopNum = -1;
		s_stVdecDrv.astChanEntity[hVdec].stVpssChan.s32ImageDistance = 0;
    }
    //up(&s_stVdecDrv.stSem);

	return s32Ret;
}

static HI_S32 VDEC_Chan_CreatePort(HI_HANDLE hVpss,HI_HANDLE* phPort, VDEC_PORT_ABILITY_E ePortAbility )
{
    HI_S32 s32Ret;
    HI_DRV_VPSS_PORT_CFG_S stVpssPortCfg;
    HI_S32 i,j;
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
    
	if ((HI_INVALID_HANDLE == hVpss) || (HI_NULL == phPort))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
	/*find astChanEntity by vpss handle*/
	/*CNcomment:首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }

	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);
    
	/*get defualt port cfg*/
	/*CNcomment:创建port操作，调用vpss创建port函数，并在vdec端做记录*/
    s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetDefaultPortCfg)(&stVpssPortCfg);
	if(HI_SUCCESS != s32Ret)
	{
		VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
		HI_ERR_VDEC("HI_DRV_VPSS_GetDefaultPortCfg err!\n");
		return HI_FAILURE;
	}
    
#if 0
	stVpssPortCfg.stBufListCfg.eBufType = HI_DRV_VPSS_BUF_USER_ALLOC_MANAGE;
#else
	stVpssPortCfg.stBufListCfg.eBufType = HI_DRV_VPSS_BUF_VPSS_ALLOC_MANAGE;
#endif

	/*create port*/
    /*CNcomment:创建port*/
	if(HI_DRV_VPSS_BUF_USER_ALLOC_MANAGE == stVpssPortCfg.stBufListCfg.eBufType)
	{
		stVpssPortCfg.stBufListCfg.u32BufNumber = 6;
		stVpssPortCfg.stBufListCfg.u32BufSize = stVpssPortCfg.s32OutputHeight*stVpssPortCfg.s32OutputWidth*2;
		stVpssPortCfg.stBufListCfg.u32BufStride = stVpssPortCfg.s32OutputWidth;
	}
#if 1
	switch (ePortAbility)
	{
	case VDEC_PORT_HD:
        stVpssPortCfg.s32OutputHeight = 1080;
		stVpssPortCfg.s32OutputWidth  = 1920;
		break;
	case VDEC_PORT_SD:
        stVpssPortCfg.s32OutputHeight = 576;
		stVpssPortCfg.s32OutputWidth  = 720;
		break;
	case VDEC_PORT_STR:
		stVpssPortCfg.s32OutputHeight = 720;
		stVpssPortCfg.s32OutputWidth  = 1280;
		break;
	default:
		break;
	}
	stVpssPortCfg.stBufListCfg.u32BufSize = stVpssPortCfg.s32OutputHeight*stVpssPortCfg.s32OutputWidth*3/2;
	stVpssPortCfg.stBufListCfg.u32BufStride = stVpssPortCfg.s32OutputWidth;
#endif 

	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssCreatePort)(hVpss,&stVpssPortCfg,phPort);
	if(HI_SUCCESS != s32Ret)
	{
	    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
		HI_ERR_VDEC("HI_DRV_VPSS_CreatePort err!\n");
		return HI_FAILURE;
	}

	/*save port handle*/
    /*CNcomment:vdec端记录port句柄*/
    for(j=0;j<VDEC_MAX_PORT_NUM;j++)
    {
        if(HI_INVALID_HANDLE == pstVpssChan->stPort[j].hPort)
        {
            break;
        }
    }
    if(j >= VDEC_MAX_PORT_NUM)
    {
        HI_ERR_VDEC("Too many ports!\n");
		VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
        return HI_FAILURE;
    }
    else
    {
        pstVpssChan->stPort[j].hPort = *phPort;
		pstVpssChan->stPort[j].bEnable = HI_TRUE;
        pstVpssChan->stPort[j].enPortType = VDEC_PORT_TYPE_BUTT;
		pstVpssChan->stPort[j].bufferType = stVpssPortCfg.stBufListCfg.eBufType;
        
		/*init the vpss buffer*/
		/*CNcomment:如果由vdec来管理vpss的帧存则进行帧存的初始化*/
		if(HI_DRV_VPSS_BUF_USER_ALLOC_MANAGE == stVpssPortCfg.stBufListCfg.eBufType)
	    {
	    	pstVpssChan->stPort[j].stBufVpssInst.u32BufNum = stVpssPortCfg.stBufListCfg.u32BufNumber;
			pstVpssChan->stPort[j].stBufVpssInst.u32BufSize = stVpssPortCfg.stBufListCfg.u32BufSize;
			pstVpssChan->stPort[j].bufferType = HI_DRV_VPSS_BUF_USER_ALLOC_MANAGE;
			BUFMNG_VPSS_Init(&(pstVpssChan->stPort[j].stBufVpssInst));
	    }
    }
    
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_DestroyPort(HI_HANDLE hVpss, HI_HANDLE hPort)
{
    HI_S32 s32Ret;
    HI_S32 i,j;
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;

	if ((HI_INVALID_HANDLE == hVpss) || (HI_INVALID_HANDLE == hPort))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
    
	/*find astChanEntity by vpss handle*/
	/*CNcomment:首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }
    
	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);
	/*find port*/
	/*CNcomment:查找port是否存在*/
    for(j = 0; j<VDEC_MAX_PORT_NUM; j++)
    {
        if(hPort == pstVpssChan->stPort[j].hPort)
        {
            break;
        }
    }
    if(j >= VDEC_MAX_PORT_NUM)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
        HI_WARN_VDEC("Port %d not exist!\n", hPort);
        return HI_FAILURE;
    }
    else
    {
		pstVpssChan->stPort[j].hPort= HI_INVALID_HANDLE;
		pstVpssChan->stPort[j].bEnable = HI_FALSE;
		pstVpssChan->stPort[j].enPortType = VDEC_PORT_TYPE_BUTT;
		pstVpssChan->stPort[j].s32PortTmpListPos = 0;

		/*call vpss funtion to destory port*/
		/*CNcomment:调用vpss接口销毁port*/
		s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssDestroyPort)(hPort);
		if(HI_SUCCESS != s32Ret)
		{
		    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
            HI_WARN_VDEC("HI_DRV_VPSS_DestroyPort err!\n");
            return HI_FAILURE;				
		}

		if(HI_DRV_VPSS_BUF_USER_ALLOC_MANAGE == pstVpssChan->stPort[j].bufferType)
		{
			BUFMNG_VPSS_DeInit(&pstVpssChan->stPort[j].stBufVpssInst);
		}
    }
    
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);

    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_EnablePort(HI_HANDLE hVpss,HI_HANDLE hPort )
{
    HI_S32 s32Ret;
    HI_S32 i,j;
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
    
	if ((HI_INVALID_HANDLE == hVpss) || (HI_INVALID_HANDLE == hPort))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
    
	/*find astChanEntity by vpss handle*/
	/*CNcomment:首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }
    
	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);
    
	/*enable port*/
	/*CNcomment:查找port是否存在*/
    for(j = 0; j<VDEC_MAX_PORT_NUM; j++)
    {
        if(hPort == pstVpssChan->stPort[j].hPort)
        {
            break;
        }
    }
    if(j >= VDEC_MAX_PORT_NUM)
    {
        HI_WARN_VDEC("Port %d not exist!\n", hPort);
        return HI_FAILURE;
    }
    else
    {
		pstVpssChan->stPort[j].bEnable = HI_TRUE;
		s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssEnablePort)(hPort, HI_TRUE);
    }
    
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_DisablePort(HI_HANDLE hVpss,HI_HANDLE hPort )
{
    HI_S32 s32Ret;
    HI_S32 i,j;
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
    
	if ((HI_INVALID_HANDLE == hVpss) || (HI_INVALID_HANDLE == hPort))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
    
	/*find astChanEntity by vpss handle*/
	/*CNcomment:首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }
    
	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);
	/*disenable port,find port*/
	/*CNcomment:查找port是否存在*/
    for(j = 0; j<VDEC_MAX_PORT_NUM; j++)
    {
        if(hPort == pstVpssChan->stPort[j].hPort)
        {
            break;
        }
    }
    if(j >= VDEC_MAX_PORT_NUM)
    {
        HI_WARN_VDEC("Port %d not exist!\n", hPort);
        return HI_FAILURE;
    }
    else
    {
		pstVpssChan->stPort[j].bEnable = HI_FALSE;
        pstVpssChan->stPort[j].s32PortLastFrameGopNum = -1;
		pstVpssChan->stPort[j].u32LastFrameIndex = -1;
		s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssEnablePort)(hPort, HI_FALSE);
    }
    
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_ResetVpss(HI_HANDLE hVpss)
{
    HI_S32 i = 0;
	HI_S32 s32Ret;
    HI_U32 u32Index;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
	VDEC_PORT_FRAME_LIST_LOCK_S *pListLock = HI_NULL;
	VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
	VDEC_PORT_FRAME_LIST_NODE_S *pstListNode = HI_NULL;
    
    if (HI_INVALID_HANDLE == hVpss)
    {
        HI_ERR_VDEC("VDEC_Chan_ResetVpss Bad param!\n");
        return HI_FAILURE;
    }

    s32Ret = VDEC_FindVdecHandleByVpssHandle(hVpss, &hHandle);
	if(HI_SUCCESS != s32Ret)
	{
	    HI_ERR_VDEC("VDEC_FindVdecHandleByVpssHandle err!\n");
        return HI_FAILURE;  
	}

    /*Reset pvr tmplist and portlist data*/
    for(i = 0; i < VDEC_MAX_PORT_NUM; i++)
	{
	    pListLock = &(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].stPortList.stPortFrameListLock);
	    pstVpssChan = &(s_stVdecDrv.astChanEntity[hHandle].stVpssChan);
        
	  	if((HI_INVALID_HANDLE != pstVpssChan->stPort[i].hPort) && (HI_TRUE == pstVpssChan->stPort[i].bEnable))
		{
			 VDEC_SpinLockIRQ(pListLock);

             if (0 < pstVpssChan->stPort[i].s32PortTmpListPos)
             {
                 for(u32Index = 0; u32Index < pstVpssChan->stPort[i].s32PortTmpListPos; u32Index++)
                 {
                     s32Ret = VDEC_Chan_VORlsFrame(pstVpssChan->stPort[i].hPort,&(pstVpssChan->stPort[i].astPortTmpList[u32Index].stPortOutFrame));
                     if(s32Ret != HI_SUCCESS)
                     {
                         HI_ERR_VDEC("VDEC pvr mode rls vpss port %d frame error.\n",pstVpssChan->stPort[i].hPort);
                     } 
                 }
             }

			 pstVpssChan->stPort[i].s32PortTmpListPos = 0;

			 while((&pstVpssChan->stPort[i].stPortList.stVdecPortFrameList) != (pstVpssChan->stPort[i].stPortList.stVdecPortFrameList.next))
			 {
				 pstListNode = list_entry(pstVpssChan->stPort[i].stPortList.stVdecPortFrameList.next, VDEC_PORT_FRAME_LIST_NODE_S, node);				
                 s32Ret = VDEC_Chan_VORlsFrame(pstVpssChan->stPort[i].hPort,&(pstListNode->stPortOutFrame));
                 if(s32Ret != HI_SUCCESS)
                 {
                    HI_ERR_VDEC("VDEC pvr mode rls vpss port %d frame error.\n",pstVpssChan->stPort[i].hPort);
                 }
                 list_del_init(&(pstListNode->node));
				 HI_KFREE_BUFMNG(pstListNode);
			 }
		     VDEC_SpinUnLockIRQ(pListLock);
		 }
     }
    
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSendCommand)(hVpss, HI_DRV_VPSS_USER_COMMAND_RESET, HI_NULL);
	return s32Ret;
}

static HI_S32 VDEC_Chan_SetPortType(HI_HANDLE hVpss,HI_HANDLE hPort, VDEC_PORT_TYPE_E enPortType )
{
    HI_S32 s32Ret;
    HI_S32 i,j;
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
	HI_DRV_VPSS_PORT_CFG_S stVpssPortCfg;
    
	if ((HI_INVALID_HANDLE == hVpss) || (HI_INVALID_HANDLE == hPort))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
    
	/*find astChanEntity by vpss handle*/
	/*CNcomment:首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }
    
	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);
    
	/*set main port,find port*/
	/*CNcomment:查找port是否存在*/
    for(j = 0; j<VDEC_MAX_PORT_NUM; j++)
    {
        if(hPort == pstVpssChan->stPort[j].hPort)
        {
            break;
        }
    }
    if(j >= VDEC_MAX_PORT_NUM)
    {
        HI_WARN_VDEC("Port %d not exist!\n", hPort);
        return HI_FAILURE;
    }
    else
    {
		pstVpssChan->stPort[j].enPortType = enPortType;
		/*set MaxFrameRate 30pfs when port is virtual port*/
		if(VDEC_PORT_TYPE_VIRTUAL == enPortType)
		{
		    s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortCfg)(hPort, &stVpssPortCfg);
		    if(HI_SUCCESS != s32Ret)
		    {
			    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
			    HI_ERR_VDEC("pfnVpssGetPortCfg err!\n");
			    return HI_FAILURE;
		    }
            
			stVpssPortCfg.u32MaxFrameRate  = 30;
			s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSetPortCfg)(hPort, &stVpssPortCfg);
			if(HI_SUCCESS != s32Ret)
		    {
			    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
			    HI_ERR_VDEC("pfnVpssSetPortCfg err!\n");
			    return HI_FAILURE;
		    }
		}
    }

	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_SetVpssAttr(HI_HANDLE hVpss,HI_HANDLE hPort, HI_DRV_VPSS_PORT_CFG_S *pstPortCfg)
{
    HI_S32                  s32Ret;
    HI_S32                  i,j;
    VDEC_VPSSCHANNEL_S      *pstVpssChan = HI_NULL;

	if (HI_INVALID_HANDLE == hPort)
    {
        HI_ERR_VDEC("hPort is invalid!\n");
        return HI_FAILURE;
    }

    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }    

    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Too many chans!\n");
        return HI_FAILURE;
    } 

    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);

    for(j = 0; j<VDEC_MAX_PORT_NUM; j++)
    {
        if(hPort == pstVpssChan->stPort[j].hPort)
        {
            break;
        }
    }
    
    if(j >= VDEC_MAX_PORT_NUM)
    {
        HI_WARN_VDEC("Port %d not exist!\n", hPort);
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
        return HI_FAILURE;
    }
    else
    {
        s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSetPortCfg)(hPort, pstPortCfg);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("pfnVpssSetPortCfg ERR, Ret=%#x\n", s32Ret);
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
            return s32Ret;
        }

    }

	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
	
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_GetVpssAttr(HI_HANDLE hVpss,HI_HANDLE hPort, HI_DRV_VPSS_PORT_CFG_S *pstPortCfg)
{
    HI_S32                  s32Ret;
    HI_S32                  i,j;
    VDEC_VPSSCHANNEL_S      *pstVpssChan = HI_NULL;

	if (HI_INVALID_HANDLE == hPort)
    {
        HI_ERR_VDEC("hPort is invalid!\n");
        return HI_FAILURE;
    }

    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }    

    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Too many chans!\n");
        return HI_FAILURE;
    } 

    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);

    for(j = 0; j<VDEC_MAX_PORT_NUM; j++)
    {
        if(hPort == pstVpssChan->stPort[j].hPort)
        {
            break;
        }
    }
    
    if(j >= VDEC_MAX_PORT_NUM)
    {
        HI_WARN_VDEC("Port %d not exist!\n", hPort);
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
        return HI_FAILURE;
    }
    else
    {
        s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortCfg)(hPort, pstPortCfg);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("pfnVpssGetPortCfg ERR, Ret=%#x\n", s32Ret);
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
            return HI_FAILURE;
        }

    }

	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
	
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_SetFrmPackingType(HI_HANDLE hVpss,HI_UNF_VIDEO_FRAME_PACKING_TYPE_E eFramePackType)
{
	HI_S32 s32Ret;
    HI_S32 i;
    
	if ((HI_INVALID_HANDLE == hVpss) || (HI_UNF_FRAME_PACKING_TYPE_BUTT == eFramePackType))
    {
        HI_ERR_VDEC("Bad param eFramePackType!\n");
        return HI_FAILURE;
    }
    
	/*find astChanEntity by vpss handle*/
	/*CNcomment:首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }

	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

	s_stVdecDrv.astChanEntity[i].stVpssChan.eFramePackType = eFramePackType;
	if(HI_NULL != s_stVdecDrv.astChanEntity[i].pstChan)
	{
	    s_stVdecDrv.astChanEntity[i].pstChan->eFramePackType = eFramePackType;
	}
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
    return HI_SUCCESS;
}
static HI_S32 VDEC_Chan_GetFrmPackingType(HI_HANDLE hVpss,HI_UNF_VIDEO_FRAME_PACKING_TYPE_E *penFramePackType)
{
	HI_S32 s32Ret;
    HI_S32 i;
    
	if ((HI_INVALID_HANDLE == hVpss) || (HI_NULL == penFramePackType))
    {
        HI_ERR_VDEC("Bad param penFramePackType!\n");
        return HI_FAILURE;
    }
    
	/*find astChanEntity by vpss handle*/
	/*CNcomment:首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }

	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }
    
	*penFramePackType = s_stVdecDrv.astChanEntity[i].stVpssChan.eFramePackType;
    
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_GetPortParam(HI_HANDLE hVpss,HI_HANDLE hPort,VDEC_PORT_PARAM_S* pstPortParam)
{
	HI_S32 s32Ret;
	HI_U32 i;

	if ((HI_INVALID_HANDLE == hVpss) || (HI_INVALID_HANDLE == hPort) || (HI_NULL == pstPortParam))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

	/*find astChanEntity by vpss handle*/
	/*CNcomment:首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }

	/* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

	/*主要是给vo提供获取/释放帧存的函数和wininfo改变的处理函数,获取帧存的函数只是为了和释放配对*/
    pstPortParam->pfVOAcqFrame = VDEC_Chan_VOAcqFrame; 
	pstPortParam->pfVORlsFrame = VDEC_Chan_VORlsFrame;
    pstPortParam->pfVOSendWinInfo = VDEC_Chan_VOChangeWinInfo;
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_GetPortState(HI_HANDLE hHandle, HI_BOOL *bAllPortComplete)
{
    HI_S32 s32Ret;
	VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
    
    /* check input parameters */
    if ((HI_INVALID_HANDLE == hHandle) || (HI_NULL == bAllPortComplete))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    
    pstVpssChan = &(s_stVdecDrv.astChanEntity[hHandle].stVpssChan);
    
	/*get vpss status*/
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSendCommand)(pstVpssChan->hVpss, HI_DRV_VPSS_USER_COMMAND_CHECKALLDONE, bAllPortComplete);
	if(HI_SUCCESS != s32Ret)
	{
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Vpss:%d HI_DRV_VPSS_USER_COMMAND_CHECKALLDONE error!\n", pstVpssChan->hVpss);
        return HI_FAILURE;
	}
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_SendEos(HI_HANDLE hVdec)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    
    hVdec = hVdec & 0xff;
    if (hVdec >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hVdec]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_VDEC("Chan %d lock fail!\n", hVdec);
        return HI_FAILURE;
    }
    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hVdec].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hVdec]);
        HI_WARN_VDEC("Chan %d not init!\n", hVdec);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hVdec].pstChan;
	((HI_VDEC_PRIV_FRAMEINFO_S *)(((HI_DRV_VIDEO_PRIVATE_S*)(pstChan->stLastFrm.u32Priv))->u32Reserve))->u8EndFrame = 1;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hVdec]);
	return HI_SUCCESS;
	
}

static HI_S32 VDEC_Chan_GetFrmStatusInfo(HI_HANDLE hVdec,HI_HANDLE hPort,VDEC_FRMSTATUSINFO_S* pstVdecFrmStatusInfo)
{
	HI_S32 s32Ret;
	VDEC_CHANNEL_S *pstChan = HI_NULL;
	HI_DRV_VPSS_PORT_BUFLIST_STATE_S stVpssBufListState;
	//VDEC_CHAN_FRMSTATUSINFO_S stVdecChanFrmStatusInfo;
	VDEC_CHAN_STATE_S stChanState;
	/* check input parameters */
    if (HI_NULL == pstVdecFrmStatusInfo)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hVdec]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hVdec);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hVdec].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hVdec]);
        HI_ERR_VDEC("Chan %d not init!\n", hVdec);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hVdec].pstChan;

    /*get vfmw frame status*/
	//TODO: add function in vfmw VDEC_CID_GET_CHAN_STATE
	s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_CHAN_STATE, &stChanState);
    if (VDEC_OK != s32Ret)
    {
        HI_FATAL_VDEC("Chan %d GET_CHAN_STATE err\n", pstChan->hChan);
    }
    else
    {
       pstVdecFrmStatusInfo->u32DecodedFrmNum = stChanState.decoded_1d_frame_num + stChanState.wait_disp_frame_num;
       pstVdecFrmStatusInfo->u32StrmSize = stChanState.buffered_stream_size;//u32StrmSize;
    }

	/*get vpss port frame status*/
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortBufListState)(hPort,&stVpssBufListState);
	if(HI_SUCCESS != s32Ret)
	{
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hVdec]);
        HI_ERR_VDEC("Get Port %d status error!\n", hPort);

        return HI_FAILURE;
	}
    
	/*port used_buffer number*/
	pstVdecFrmStatusInfo->u32OutBufFrmNum = stVpssBufListState.u32FulBufNumber;

    /*copy from VDEC_Chan_GetStatusInfo*/
	pstVdecFrmStatusInfo->u32StrmInBps = pstChan->stStatInfo.u32AvrgVdecInBps;

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hVdec]);
	
	return s32Ret;
}

static HI_S32 VDEC_Chan_AllPortHaveDate(HI_HANDLE hVpss)
{
    HI_S32 i,j=0;
	BUFMNG_VPSS_NODE_S* pstTarget;
	VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
    
	/*find astChanEntity by vpss handle*/
	/*CNcomment:首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }
    
	pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);
    
	for(j = 0; j < VDEC_MAX_PORT_NUM; j++)
	{
	    if((HI_INVALID_HANDLE != pstVpssChan->stPort[j].hPort) && (HI_TRUE == pstVpssChan->stPort[j].bEnable))
	    {
			if(HI_DRV_VPSS_BUF_USER_ALLOC_MANAGE == pstVpssChan->stPort[j].bufferType)
			{
				/*首先判断是不是所有的有效port队列上都有数据，只要有一个没有则退出*/
				if(pstVpssChan->stPort[j].stBufVpssInst.pstUnAvailableListPos->next
					!= &pstVpssChan->stPort[j].stBufVpssInst.stVpssBufUnAvailableList)
				{
					pstTarget = list_entry(pstVpssChan->stPort[j].stBufVpssInst.pstUnAvailableListPos->next, BUFMNG_VPSS_NODE_S, node);
					if (NULL == pstTarget)
					{	
						return HI_FAILURE;
					}
					if (HI_TRUE == pstTarget->bBufUsed)
					{
						continue;
					}
					else
					{   
						return HI_FAILURE;
					}
			   }
			   else
			   {
			  	    return HI_FAILURE;
			   }   
			}
	    }
	}
	return HI_SUCCESS;
}
//add by l00225186
/*Avplay收帧，vdec直接在vpss中取*/
static HI_S32 VDEC_Chan_RecvVpssFrmBuf(HI_HANDLE hVpss, HI_DRV_VIDEO_FRAME_PACKAGE_S* pstFrm)
{
	HI_S32 s32Ret;
    HI_S32 i,j=0;
	BUFMNG_VPSS_NODE_S* pstTarget;
    HI_HANDLE hMASTER = HI_INVALID_HANDLE;
    HI_HANDLE hSLAVE = HI_INVALID_HANDLE;
    
    VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
    
	if ((HI_INVALID_HANDLE == hVpss) || (HI_NULL == pstFrm))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }
    
	pstFrm->u32FrmNum =0;
    
	/*find astChanEntity by vpss handle*/
	/*CNcomment:首先应该找到hVpss对应的是第几个astChanEntity*/
    for(i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
       if (hVpss == s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
       {
            break;
       }
    }
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Can't find vpss :%s %d!\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[i]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", i);
        return HI_FAILURE;
    }

    pstVpssChan = &(s_stVdecDrv.astChanEntity[i].stVpssChan);
    for(j = 0; j < VDEC_MAX_PORT_NUM; j++)
    {
        if ((HI_INVALID_HANDLE != pstVpssChan->stPort[j].hPort) 
            && (HI_TRUE == pstVpssChan->stPort[j].bEnable))
        {
			if((HI_DRV_VPSS_BUF_VPSS_ALLOC_MANAGE == pstVpssChan->stPort[j].bufferType) 
			    && ((VDEC_PORT_TYPE_MASTER == pstVpssChan->stPort[j].enPortType) 
			        || (VDEC_PORT_TYPE_SLAVE == pstVpssChan->stPort[j].enPortType)))
			{
			    if (VDEC_PORT_TYPE_MASTER == pstVpssChan->stPort[j].enPortType)
			    {
                    hMASTER = pstVpssChan->stPort[j].hPort;
			    }
			    
			    if (VDEC_PORT_TYPE_SLAVE == pstVpssChan->stPort[j].enPortType)
			    {
                    hSLAVE = pstVpssChan->stPort[j].hPort;
			    }
			}
        }
    }

    if (hMASTER != HI_INVALID_HANDLE || hSLAVE != HI_INVALID_HANDLE)
    {
        HI_DRV_VPSS_PORT_AVAILABLE_S stCanGetFrm;
        
        if (hMASTER != HI_INVALID_HANDLE)
        {
            stCanGetFrm.hPort = hMASTER;
            stCanGetFrm.bAvailable = HI_FALSE;
            s_stVdecDrv.pVpssFunc->pfnVpssSendCommand(pstVpssChan->hVpss,
                            HI_DRV_VPSS_USER_COMMAND_CHECKAVAILABLE,&(stCanGetFrm));
            if (stCanGetFrm.bAvailable == HI_FALSE)
            {
                VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
                return HI_FAILURE;
            }
        }

        if (hSLAVE != HI_INVALID_HANDLE)
        {
            stCanGetFrm.hPort = hSLAVE;
            stCanGetFrm.bAvailable = HI_FALSE;
            s_stVdecDrv.pVpssFunc->pfnVpssSendCommand(pstVpssChan->hVpss,
                            HI_DRV_VPSS_USER_COMMAND_CHECKAVAILABLE,&(stCanGetFrm));
            if (stCanGetFrm.bAvailable == HI_FALSE)
            {
                VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
                return HI_FAILURE;
            }
        }
    }
    
    /*调用vpss接口获取主port数据*/
    if (hMASTER != HI_INVALID_HANDLE)
    {
        s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortFrame)(hMASTER,&pstFrm->stFrame[pstFrm->u32FrmNum].stFrameVideo);
	    if(HI_SUCCESS != s32Ret)
	    {
		    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
		    HI_ERR_VDEC("Get MainPort Frame err!\n");
            return HI_FAILURE;	
	    }
        pstFrm->stFrame[pstFrm->u32FrmNum].hport = hMASTER;
        pstFrm->u32FrmNum++;
    }
    
    if (hSLAVE != HI_INVALID_HANDLE)
    {
        s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortFrame)(hSLAVE,&pstFrm->stFrame[pstFrm->u32FrmNum].stFrameVideo);
	    if(HI_SUCCESS != s32Ret)
	    {
		    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
		    HI_ERR_VDEC("Get SlavePort Frame err!\n");
            return HI_FAILURE;	
	    }
        pstFrm->stFrame[pstFrm->u32FrmNum].hport = hSLAVE;
        pstFrm->u32FrmNum++;
    }
    
    for(j = 0; j < VDEC_MAX_PORT_NUM; j++)
    {
        if((HI_INVALID_HANDLE != pstVpssChan->stPort[j].hPort) && (1 == pstVpssChan->stPort[j].bEnable))
        {
			if((HI_DRV_VPSS_BUF_VPSS_ALLOC_MANAGE == pstVpssChan->stPort[j].bufferType) && (VDEC_PORT_TYPE_VIRTUAL == pstVpssChan->stPort[j].enPortType))
			{
				/*调用vpss接口获取从port数据*/
	            s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortFrame)(pstVpssChan->stPort[j].hPort,&pstFrm->stFrame[pstFrm->u32FrmNum].stFrameVideo);
                if(HI_SUCCESS == s32Ret)
                {
				    pstFrm->stFrame[pstFrm->u32FrmNum].hport = pstVpssChan->stPort[j].hPort;
			        pstFrm->u32FrmNum++;
                }
			}
        }
    }
	if(0 == pstFrm->u32FrmNum)
	{
		VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
	    return HI_FAILURE;
	}
	
    
	for(j = 0; j < VDEC_MAX_PORT_NUM; j++)
	{
	  	if((HI_INVALID_HANDLE != pstVpssChan->stPort[j].hPort) && (HI_TRUE == pstVpssChan->stPort[j].bEnable))
		{
		     if(HI_DRV_VPSS_BUF_USER_ALLOC_MANAGE == pstVpssChan->stPort[j].bufferType)
			 {
				 /*从vdec维护的队列中获取数据*/
				 BUFMNG_SpinLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
				 if(HI_SUCCESS == VDEC_Chan_AllPortHaveDate(hVpss))
				 {
					 pstTarget = list_entry(pstVpssChan->stPort[j].stBufVpssInst.pstUnAvailableListPos->next, BUFMNG_VPSS_NODE_S, node);				
					 BUFMNG_SpinUnLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
					 memcpy(&pstFrm->stFrame[j].stFrameVideo,&pstTarget->stVpssOutFrame,sizeof(HI_DRV_VIDEO_FRAME_S));
					 BUFMNG_SpinLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
					 if(pstVpssChan->stPort[j].stBufVpssInst.pstUnAvailableListPos->next 
						 != &pstVpssChan->stPort[j].stBufVpssInst.stVpssBufUnAvailableList)
					 {
						 pstVpssChan->stPort[j].stBufVpssInst.pstUnAvailableListPos = pstVpssChan->stPort[j].stBufVpssInst.pstUnAvailableListPos->next;
					 }
					 BUFMNG_SpinUnLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
					 pstFrm->stFrame[j].hport = pstVpssChan->stPort[j].hPort;
			         pstFrm->u32FrmNum++;
				 }
				 else
				 {
					 BUFMNG_SpinUnLockIRQ(&pstVpssChan->stPort[j].stBufVpssInst.stUnAvailableListLock);
				 }
			  }
			
		 }
     }
    

	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[i]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_GetEsBuf(HI_HANDLE hHandle, VDEC_ES_BUF_S *pstEsBuf)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstEsBuf)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Get */
    s32Ret = VDEC_GetStrmBuf(pstChan->hStrmBuf, pstEsBuf, HI_FALSE);
    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return s32Ret;
    }
    
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_PutEsBuf(HI_HANDLE hHandle, VDEC_ES_BUF_S *pstEsBuf)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstEsBuf)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;
    
    s32Ret = VDEC_PutStrmBuf(pstChan->hStrmBuf, pstEsBuf, HI_FALSE);
    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return s32Ret;
    }
    
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}
static HI_VOID VDEC_ConvertFrm(HI_UNF_VCODEC_TYPE_E enType, VDEC_CHANNEL_S *pstChan, 
            VDEC_CHAN_STATE_S *pstChanState, IMAGE *pstImage, HI_DRV_VIDEO_FRAME_S *pstFrame)
{
	UINT32 u32fpsInteger,u32fpsDecimal;
	HI_CHIP_TYPE_E enChipType = HI_CHIP_TYPE_HI3716CES;
	HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_V200;
    HI_VDEC_PRIV_FRAMEINFO_S* pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S *)(((HI_DRV_VIDEO_PRIVATE_S*)(pstFrame->u32Priv))->u32Reserve);
	if ((pstImage->format & 0x3000) != 0)
    {
        pstFrame->bTopFieldFirst= HI_TRUE;
    }
    else
    {
        pstFrame->bTopFieldFirst = HI_FALSE;
    }

    /* Don't use 0x1C000 bits. */    

    /* Image compress flag to frame flag */
#if 1//def CHIP_TYPE_hi3712
    pstPrivInfo->stCompressInfo.u32CompressFlag = (1 == pstImage->BTLInfo.u32IsCompress) ? 1 : 0;
#else
    pstPrivInfo->stCompressInfo.u32CompressFlag = (1 == pstImage->ImageDnr.s32VcmpEn) ? 1 : 0;
#endif

    if (0 == (pstImage->ImageDnr.s32VcmpFrameHeight % 16))
    {
        pstPrivInfo->stCompressInfo.s32CompFrameHeight = pstImage->ImageDnr.s32VcmpFrameHeight;
    }
    else
    {
        HI_WARN_VDEC("s32CompFrameHeight err!\n");
        pstPrivInfo->stCompressInfo.s32CompFrameHeight = 0;
    }

    if (0 == (pstImage->ImageDnr.s32VcmpFrameWidth % 16))
    {
        pstPrivInfo->stCompressInfo.s32CompFrameWidth = pstImage->ImageDnr.s32VcmpFrameWidth;
    }
    else
    {
        HI_WARN_VDEC("s32CompFrameWidth err!\n");
        pstPrivInfo->stCompressInfo.s32CompFrameWidth = 0;
    }
	HI_DRV_SYS_GetChipVersion(&enChipType,&enChipVersion);
	if(HI_CHIP_TYPE_HI3716CES == enChipType )
	{
		if(!pstImage->BTLInfo.u32IsCompress && HI_UNF_VCODEC_TYPE_H263 != enType && 
                      HI_UNF_VCODEC_TYPE_SORENSON != enType && HI_UNF_VCODEC_TYPE_MJPEG != enType)
		{
			switch (pstImage->BTLInfo.YUVFormat)
			{

			case SPYCbCr420:
				pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV12_CMP;
				break;
			case SPYCbCr400:
				pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV08_CMP;
				break;
			case SPYCbCr444:
			    pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV24_CMP;
				break;	
			default:
			    pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV12_CMP;
				break;
				
			}
		}
		else
		{
		    switch (pstImage->BTLInfo.YUVFormat)
		    {
		    case SPYCbCr400:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV08;
		        break;
		    case SPYCbCr411:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV12_411;
		        break;
		    case SPYCbCr422_1X2:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV16;
		        break;
		    case SPYCbCr422_2X1:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV16_2X1;
		        break;
		    case SPYCbCr444:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV24;
		        break;
		    case PLNYCbCr400:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV400;
		        break;
		    case PLNYCbCr411:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV411;
		        break;
		    case PLNYCbCr420:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV420p;
		        break;
		    case PLNYCbCr422_1X2:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV422_1X2;
		        break;
		    case PLNYCbCr422_2X1:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV422_2X1;
		        break;
		    case PLNYCbCr444:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV_444;
		        break;
		    case PLNYCbCr410:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV410p;
		        break;
		    case SPYCbCr420:
		    default:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV21;
		        break;
		    }
		}
	}
	else if(HI_CHIP_TYPE_HI3716C == enChipType || HI_CHIP_TYPE_HI3718C == enChipType || HI_CHIP_TYPE_HI3719C == enChipType || HI_CHIP_TYPE_HI3719M_A == enChipType)
	{
	     if(HI_UNF_VCODEC_TYPE_H263 == enType || HI_UNF_VCODEC_TYPE_SORENSON == enType )
	     {
	         pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV21;
	     }
		 else if(HI_UNF_VCODEC_TYPE_MJPEG == enType)
		 {
		    switch (pstImage->BTLInfo.YUVFormat)
		    {
		    case SPYCbCr400:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV08;
		        break;
		    case SPYCbCr411:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV12_411;
		        break;
		    case SPYCbCr422_1X2:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV16;
		        break;
		    case SPYCbCr422_2X1:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV16_2X1;
		        break;
		    case SPYCbCr444:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV24;
		        break;
		    case PLNYCbCr400:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV400;
		        break;
		    case PLNYCbCr411:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV411;
		        break;
		    case PLNYCbCr420:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV420p;
		        break;
		    case PLNYCbCr422_1X2:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV422_1X2;
		        break;
		    case PLNYCbCr422_2X1:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV422_2X1;
		        break;
		    case PLNYCbCr444:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV_444;
		        break;
		    case PLNYCbCr410:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_YUV410p;
		        break;
		    case SPYCbCr420:
		    default:
		        pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV21;
		        break;
		    }     
		 }
		 else
		 {
		     if(0 == EnVcmp)
		     {
		         switch ((pstImage->format>>2)&7)
			     {
		         case 0:
		             pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV21_TILE;
		             break;
		         case 1:
		             pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV21_TILE;
		             break;
		         default:
		             pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV21_TILE;
		             break;
			     }
		    }
			else
			{ 
			     switch ((pstImage->format>>2)&7)
			     {
		         case 0:
		             pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV21_TILE_CMP;
		             break;
		         case 1:
		             pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV21_TILE_CMP;
		             break;
		         default:
		             pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV21_TILE_CMP;
		             break;
			     }   
			}
		 }
	}

    switch (pstImage->format & 0xE0)
    {
    case 0x20:
        pstChan->enDisplayNorm = HI_UNF_ENC_FMT_PAL;
        break;
    case 0x40:
        pstChan->enDisplayNorm = HI_UNF_ENC_FMT_NTSC;
        break;
    default:
        pstChan->enDisplayNorm = HI_UNF_ENC_FMT_BUTT;
        break;
    }

    switch (pstImage->format & 0x300)
    {
    case 0x0: /* PROGRESSIVE */
        pstFrame->bProgressive= HI_TRUE;
        pstChan->stStatInfo.u32FrameType[1]++;
        break;
    case 0x100: /* INTERLACE */
    case 0x200: /* INFERED_PROGRESSIVE */
    case 0x300: /* INFERED_INTERLACE */
    default: 
        pstFrame->bProgressive= HI_FALSE;
        pstChan->stStatInfo.u32FrameType[0]++;
        break;
    }
    switch (pstImage->format & 0xC00)
    {
    case 0x400:
        pstFrame->enFieldMode= HI_DRV_FIELD_TOP;
        break;
    case 0x800:
        pstFrame->enFieldMode = HI_DRV_FIELD_BOTTOM;
        break;
    case 0xC00:
        pstFrame->enFieldMode = HI_DRV_FIELD_ALL;
        break;
    default:
        pstFrame->enFieldMode = HI_DRV_FIELD_BUTT;
        break;
    }

    if(HI_CHIP_TYPE_HI3716CES == enChipType)
	{
        pstFrame->stBufAddr[0].u32PhyAddr_Y        = pstImage->top_luma_phy_addr;
        pstFrame->stBufAddr[0].u32Stride_Y         = pstImage->image_stride;
        pstFrame->stBufAddr[0].u32PhyAddr_YHead    = pstImage->BTLInfo.u32YHeadAddr;
        pstFrame->stBufAddr[0].u32PhyAddr_C        = pstImage->top_chrom_phy_addr;
        pstFrame->stBufAddr[0].u32Stride_C         = pstImage->BTLInfo.u32CStride;
        pstFrame->stBufAddr[0].u32PhyAddr_CHead    = pstImage->BTLInfo.u32CHeadAddr;
        pstFrame->stBufAddr[0].u32PhyAddr_Cr       = pstImage->BTLInfo.u32CrAddr;
        pstFrame->stBufAddr[0].u32Stride_Cr        = pstImage->BTLInfo.u32CrStride;
        pstFrame->stBufAddr[0].u32PhyAddr_CrHead   = pstImage->BTLInfo.u32CHeadAddr;
    }
	else if(HI_CHIP_TYPE_HI3716C == enChipType || HI_CHIP_TYPE_HI3718C == enChipType || HI_CHIP_TYPE_HI3719C == enChipType || HI_CHIP_TYPE_HI3719M_A == enChipType)
	{
	    if(HI_UNF_VCODEC_TYPE_MJPEG == enType || HI_UNF_VCODEC_TYPE_SORENSON == enType)
	    {
	        pstFrame->stBufAddr[0].u32PhyAddr_Y        = pstImage->top_luma_phy_addr;
            pstFrame->stBufAddr[0].u32Stride_Y         = pstImage->image_stride;
            pstFrame->stBufAddr[0].u32PhyAddr_YHead    = pstImage->BTLInfo.u32YHeadAddr;
            pstFrame->stBufAddr[0].u32PhyAddr_C        = pstImage->top_chrom_phy_addr;
            pstFrame->stBufAddr[0].u32Stride_C         = pstFrame->stBufAddr[0].u32Stride_Y;
            pstFrame->stBufAddr[0].u32PhyAddr_CHead    = pstImage->BTLInfo.u32CHeadAddr;
            pstFrame->stBufAddr[0].u32PhyAddr_Cr       = pstImage->BTLInfo.u32CrAddr;
            pstFrame->stBufAddr[0].u32Stride_Cr        = pstImage->BTLInfo.u32CrStride;
            pstFrame->stBufAddr[0].u32PhyAddr_CrHead   = pstImage->BTLInfo.u32CHeadAddr;
	    }
		else
		{
		    if(0 == EnVcmp)
		    {
		        pstFrame->stBufAddr[0].u32PhyAddr_Y        = pstImage->top_luma_phy_addr;
			    if(HI_UNF_VCODEC_TYPE_H263 == enType)
			    {
	                pstFrame->stBufAddr[0].u32Stride_Y         = pstImage->image_stride;
			    }
			    else
			    {
			        pstFrame->stBufAddr[0].u32Stride_Y         = pstImage->image_stride/16;
			    }
	            pstFrame->stBufAddr[0].u32PhyAddr_C        = pstImage->top_chrom_phy_addr;
	            pstFrame->stBufAddr[0].u32Stride_C         = pstFrame->stBufAddr[0].u32Stride_Y;
		    }
			else
            {
                pstFrame->stBufAddr[0].u32PhyAddr_YHead    = pstImage->top_luma_phy_addr;
	            pstFrame->stBufAddr[0].u32PhyAddr_Y        = pstImage->top_luma_phy_addr+(pstImage->image_height+31)/32 * 32*16;
	            pstFrame->stBufAddr[0].u32Stride_Y         = pstImage->image_stride/16;
	            pstFrame->stBufAddr[0].u32PhyAddr_CHead    = pstImage->top_chrom_phy_addr;
                pstFrame->stBufAddr[0].u32PhyAddr_C        = pstImage->top_chrom_phy_addr+(pstImage->image_height+31)/32 * 32*8;
                pstFrame->stBufAddr[0].u32Stride_C         = pstFrame->stBufAddr[0].u32Stride_Y;
            }

		}
	}
	//FOR MVC DEBUG
    if (pstImage->is_3D)
    {
       if(HI_CHIP_TYPE_HI3716CES == enChipType)
       {
	        pstFrame->stBufAddr[1].u32PhyAddr_Y           = pstImage->top_luma_phy_addr_1;
	        pstFrame->stBufAddr[1].u32Stride_Y            = pstImage->image_stride;
	        pstFrame->stBufAddr[1].u32PhyAddr_YHead       = pstImage->BTLInfo_1.u32YHeadAddr;
	        pstFrame->stBufAddr[1].u32PhyAddr_C           = pstImage->top_chrom_phy_addr_1;
	        pstFrame->stBufAddr[1].u32Stride_C            = pstImage->BTLInfo_1.u32CStride;
	        pstFrame->stBufAddr[1].u32PhyAddr_CHead       = pstImage->BTLInfo_1.u32CHeadAddr;
	        pstFrame->stBufAddr[1].u32PhyAddr_Cr          = pstImage->BTLInfo_1.u32CrAddr;
	        pstFrame->stBufAddr[1].u32Stride_Cr           = pstImage->BTLInfo_1.u32CrStride;
	        pstFrame->stBufAddr[1].u32PhyAddr_CrHead      = pstImage->BTLInfo_1.u32CHeadAddr;
	        
       }
	   else
	   {
            pstFrame->stBufAddr[1].u32PhyAddr_YHead       = pstImage->top_luma_phy_addr_1;
			pstFrame->stBufAddr[1].u32PhyAddr_Y           = pstImage->top_luma_phy_addr_1+(pstImage->image_height+31)/32 * 32*16;
	        pstFrame->stBufAddr[1].u32Stride_Y            = pstImage->image_stride/16;
			
	        pstFrame->stBufAddr[1].u32PhyAddr_CHead       = pstImage->top_chrom_phy_addr_1;
	        pstFrame->stBufAddr[1].u32PhyAddr_C           = pstImage->top_chrom_phy_addr_1+(pstImage->image_height+31)/32 * 32*8;
	        pstFrame->stBufAddr[1].u32Stride_C            = pstFrame->stBufAddr[1].u32Stride_Y;
	        if(0 == EnVcmp)
	        {
	            pstFrame->stBufAddr[1].u32PhyAddr_Y       = pstImage->top_luma_phy_addr_1;
	            pstFrame->stBufAddr[1].u32PhyAddr_C       = pstImage->top_chrom_phy_addr_1;
	        }
	   	}
    }
	
	
    if ((HI_UNF_VCODEC_TYPE_VP6 == enType) || (HI_UNF_VCODEC_TYPE_VP6F == enType) || (HI_UNF_VCODEC_TYPE_VP6A == enType))
    {
        if(HI_CHIP_TYPE_HI3716CES == enChipType)
        {
            pstFrame->u32Circumrotate = pstImage->BTLInfo.u32Reversed;
        }
		else if(HI_CHIP_TYPE_HI3716C == enChipType || HI_CHIP_TYPE_HI3718C == enChipType || HI_CHIP_TYPE_HI3719C == enChipType || HI_CHIP_TYPE_HI3719M_A == enChipType)
		{
		    if (HI_UNF_VCODEC_TYPE_VP6A == enType)
		    {
		    	pstFrame->u32Circumrotate = pstChan->stCurCfg.unExtAttr.stVP6Attr.bReversed&0x1;    
		    }
		    else
		    {
		       pstFrame->u32Circumrotate = !(pstChan->stCurCfg.unExtAttr.stVP6Attr.bReversed&0x1);  
		    }
		}
    }
    else
    {
        pstFrame->u32Circumrotate = 0;
    }
    pstFrame->u32AspectWidth                   = pstImage->u32AspectWidth;
    pstFrame->u32AspectHeight                  = pstImage->u32AspectHeight;
    pstFrame->u32Width                         = (HI_U32)pstImage->disp_width;
    pstFrame->u32Height                        = (HI_U32)pstImage->disp_height;
    pstFrame->stDispRect.s32Width              = (HI_S32)pstImage->disp_width;
    pstFrame->stDispRect.s32Height             = (HI_S32)pstImage->disp_height;
    pstFrame->stDispRect.s32X                  = 0;
    pstFrame->stDispRect.s32Y                  = 0;
    pstFrame->u32ErrorLevel                    = pstImage->error_level;
    pstFrame->u32SrcPts                        = (HI_U32)pstImage->SrcPts;
    pstFrame->u32Pts                           = (HI_U32)pstImage->PTS;
	//pstFrame->u32FrmCnt                        = pstImage->seq_img_cnt;
	pstFrame->u32FrameIndex                    = pstImage->seq_img_cnt;
	pstChan->u32DecodeAspectWidth              = pstImage->u32AspectWidth;
	pstChan->u32DecodeAspectHeight             = pstImage->u32AspectHeight;

/* vfmw解码出来的FP信息不外透，统一由上层设置
   MVC传递的是两帧地址，还是保留 */
if (HI_UNF_VCODEC_TYPE_MVC == enType)
{
    switch(pstImage->eFramePackingType)
    {
    case FRAME_PACKING_TYPE_NONE:
		pstFrame->eFrmType = HI_DRV_FT_NOT_STEREO;
		break;
	case FRAME_PACKING_TYPE_SIDE_BY_SIDE:
		pstFrame->eFrmType = HI_DRV_FT_SBS;
		break;
	case FRAME_PACKING_TYPE_TOP_BOTTOM:
		pstFrame->eFrmType = HI_DRV_FT_TAB;
		break;
	case FRAME_PACKING_TYPE_TIME_INTERLACED:
		pstFrame->eFrmType = HI_DRV_FT_FPK;
		break;
	default:
		pstFrame->eFrmType = FRAME_PACKING_TYPE_BUTT;
		break;
    }
}
    
    pstPrivInfo->image_id       = pstImage->image_id;
	pstPrivInfo->image_id_1     = pstImage->image_id_1;
    pstPrivInfo->u32SeqFrameCnt = pstImage->seq_img_cnt;
    pstPrivInfo->u8Repeat       = !(pstImage->format & 0x80000);  /* control vo discard frame bit19 */
    pstPrivInfo->u8TestFlag     = pstImage->optm_inf.Rwzb;
    pstPrivInfo->u8EndFrame     = pstImage->last_frame;	
    pstPrivInfo->s32FrameFormat = pstImage->format & 0x3;
	pstPrivInfo->s32TopFieldFrameFormat = pstImage->top_fld_type & 0x03;
	pstPrivInfo->s32BottomFieldFrameFormat = pstImage->bottom_fld_type & 0x03;
	pstPrivInfo->s32FieldFlag      = pstImage->is_fld_save;
	
	pstPrivInfo->s32GopNum      = pstImage->GopNum;
	
//#ifdef CHIP_TYPE_hi3712 
    /* For VC1 */
    if (HI_UNF_VCODEC_TYPE_VC1 == enType)
    {
    	pstPrivInfo->u32BeVC1 = HI_TRUE;
        pstPrivInfo->stVC1RangeInfo.u8PicStructure = pstImage->ImageDnr.pic_structure;
        pstPrivInfo->stVC1RangeInfo.u8PicQPEnable = pstImage->ImageDnr.use_pic_qp_en;
        pstPrivInfo->stVC1RangeInfo.s32QPY = pstImage->ImageDnr.QP_Y;
        pstPrivInfo->stVC1RangeInfo.s32QPU = pstImage->ImageDnr.QP_U;
        pstPrivInfo->stVC1RangeInfo.s32QPV = pstImage->ImageDnr.QP_V;
        pstPrivInfo->stVC1RangeInfo.u8ChromaFormatIdc = pstImage->ImageDnr.chroma_format_idc;
        pstPrivInfo->stVC1RangeInfo.u8VC1Profile = pstImage->ImageDnr.vc1_profile;
        pstPrivInfo->stVC1RangeInfo.s32RangedFrm = pstImage->ImageDnr.Rangedfrm;
        pstPrivInfo->stVC1RangeInfo.u8RangeMapYFlag = pstImage->ImageDnr.Range_mapy_flag;
        pstPrivInfo->stVC1RangeInfo.u8RangeMapY = pstImage->ImageDnr.Range_mapy;
        pstPrivInfo->stVC1RangeInfo.u8RangeMapUVFlag = pstImage->ImageDnr.Range_mapuv_flag;
        pstPrivInfo->stVC1RangeInfo.u8RangeMapUV = pstImage->ImageDnr.Range_mapuv;
        pstPrivInfo->stVC1RangeInfo.u8BtmRangeMapYFlag = pstImage->ImageDnr.bottom_Range_mapy_flag;
        pstPrivInfo->stVC1RangeInfo.u8BtmRangeMapY = pstImage->ImageDnr.bottom_Range_mapy;
        pstPrivInfo->stVC1RangeInfo.u8BtmRangeMapUVFlag = pstImage->ImageDnr.bottom_Range_mapuv_flag;
        pstPrivInfo->stVC1RangeInfo.u8BtmRangeMapUV = pstImage->ImageDnr.bottom_Range_mapuv;
    }
	else
	{
	    pstPrivInfo->u32BeVC1 = HI_FALSE;
	}

    //pstFrame->stVideoFrameAddr[0].u32CrAddr = pstImage->BTLInfo.u32CrAddr;
    //pstFrame->stVideoFrameAddr[0].u32CrStride = pstImage->BTLInfo.u32CrStride;
    pstPrivInfo->stCompressInfo.u32HeadOffset = pstImage->BTLInfo.u32HeadOffset;
    pstPrivInfo->stCompressInfo.u32YHeadAddr = pstImage->BTLInfo.u32YHeadAddr;
    pstPrivInfo->stCompressInfo.u32CHeadAddr = pstImage->BTLInfo.u32CHeadAddr;
    pstPrivInfo->stCompressInfo.u32HeadStride = pstImage->BTLInfo.u32HeadStride;
    pstPrivInfo->stBTLInfo.u32BTLImageID = pstImage->BTLInfo.btl_imageid;
    pstPrivInfo->stBTLInfo.u32Is1D = pstImage->BTLInfo.u32Is1D;
    pstPrivInfo->stBTLInfo.u32IsCompress = pstImage->BTLInfo.u32IsCompress;
    pstPrivInfo->stBTLInfo.u32DNROpen = pstImage->BTLInfo.u32DNROpen;
    pstPrivInfo->stBTLInfo.u32DNRInfoAddr = pstImage->BTLInfo.u32DNRInfoAddr;
    pstPrivInfo->stBTLInfo.u32DNRInfoStride = pstImage->BTLInfo.u32DNRInfoStride;    
//#endif

    if (pstFrame->u32Height <= 288)
    {
        pstFrame->bProgressive= HI_TRUE;
    }

    switch (pstChan->stFrameRateParam.enFrmRateType)
    {
    case HI_UNF_AVPLAY_FRMRATE_TYPE_USER:
		u32fpsInteger = pstChan->stFrameRateParam.stSetFrmRate.u32fpsInteger;
		u32fpsDecimal = pstChan->stFrameRateParam.stSetFrmRate.u32fpsDecimal;
        //pstFrame->stFrameRate.u32fpsInteger = pstChan->stFrameRateParam.stSetFrmRate.u32fpsInteger;
        //pstFrame->stFrameRate.u32fpsDecimal = pstChan->stFrameRateParam.stSetFrmRate.u32fpsDecimal;stSetFrmRate.u32fpsDecimal;

        break;
        
    case HI_UNF_AVPLAY_FRMRATE_TYPE_PTS:
    case HI_UNF_AVPLAY_FRMRATE_TYPE_USER_PTS:
    case HI_UNF_AVPLAY_FRMRATE_TYPE_STREAM:
    default:
        u32fpsInteger = pstImage->frame_rate/1024;
        u32fpsDecimal = pstImage->frame_rate%1024;
		//pstFrame->stFrameRate.u32fpsInteger = pstImage->frame_rate/1024;
        //pstFrame->stFrameRate.u32fpsDecimal = (pstImage->frame_rate*1000/1024)%1000;
 
        break;
    }
    pstFrame->u32FrameRate = u32fpsInteger*1000 + u32fpsDecimal;
    pstPrivInfo->entype = enType;
	((HI_DRV_VIDEO_PRIVATE_S*)(pstFrame->u32Priv))->u32PrivDispTime = pstImage->DispTime;
}
static HI_S32 VDEC_RecvFastBackFrm(HI_HANDLE hHandle, IMAGE_INTF_S *pstImgInft, IMAGE *pstImage)
{
     HI_S32 s32Ret;
	 
	 /*receive an effective image from vfmw*/
     s32Ret = pstImgInft->read_image(pstImgInft->image_provider_inst_id, pstImage);
	 if(VDEC_OK == s32Ret)
	 {
         if(HI_FALSE == s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stControlInfo.u32BackwardOptimizeFlag)
         {
             if(HI_FALSE == s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32GetFirstIFrameFlag)
             {
                 if (((pstImage->is_fld_save == 0)&&(0 == (pstImage->format & 0x03)))||
                     ((pstImage->is_fld_save == 1)&&((0 == (pstImage->top_fld_type & 0x03))||(0 == (pstImage->bottom_fld_type & 0x03)))))
                 {
                     s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32GetFirstIFrameFlag = HI_TRUE;
					 return HI_SUCCESS;
                 }
				 else
				 {
				     s32Ret = pstImgInft->release_image(pstImgInft->image_provider_inst_id, pstImage);
		             return HI_FAILURE;
				 }
             }
			 else
			 {
			     return HI_SUCCESS;
			 }
         }
		 else
		 {
             if(HI_TRUE == pstImage->DispEnableFlag)
             {
			     if(HI_FALSE == s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32GetFirstIFrameFlag)
	             {
	                 //if (pstImage->GopNum !=  s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32LastFrameGopNum)
	                 {
	                     s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32GetFirstIFrameFlag = HI_TRUE;
						 //s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32LastFrameGopNum = pstImage->GopNum;
						 s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32ImageDistance = pstImage->DistanceBeforeFirstFrame;
						 if(0 != s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32ImageDistance)
						 {
						     s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32ImageDistance --;
						     s32Ret = pstImgInft->release_image(pstImgInft->image_provider_inst_id, pstImage);
			                 return HI_FAILURE;
						 }
						 else
						 {
						     return HI_SUCCESS;
						 }
	                 }
					 /*else  
					 {
					     can go here?
					     s32Ret = pstImgInft->release_image(pstImgInft->image_provider_inst_id, pstImage);
			             return HI_FAILURE;
					 }*/
			     }
			     else
				 {
				     if(0 != s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32ImageDistance)
				     {
					     s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32ImageDistance --;
						 s32Ret = pstImgInft->release_image(pstImgInft->image_provider_inst_id, pstImage);
			             return HI_FAILURE;
				     }
					 else
					 {
						 s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32ImageDistance = pstImage->DispFrameDistance;
						 return HI_SUCCESS;
				     }    
				 }
             }
             else
             {
                s32Ret = pstImgInft->release_image(pstImgInft->image_provider_inst_id, pstImage);
                return HI_FAILURE;
             }
		 }
	 }
	 else
	 {
	     return HI_FAILURE;
	 }
     
	 return HI_FAILURE;
}
static HI_S32 VDEC_RecvFrm(HI_HANDLE hHandle, VDEC_CHANNEL_S *pstChan, HI_DRV_VIDEO_FRAME_S *pstFrame)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_U32 u32UserdataId;
    IMAGE stImage;
	VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
    VDEC_CHAN_STATE_S stChanState = {0};
    IMAGE_INTF_S *pstImgInft = &pstChan->stImageIntf;
    VDEC_CHAN_STATINFO_S *pstStatInfo = &pstChan->stStatInfo;
    HI_VDEC_PRIV_FRAMEINFO_S* pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S *)(((HI_DRV_VIDEO_PRIVATE_S*)(pstFrame->u32Priv))->u32Reserve);
    HI_VDEC_PRIV_FRAMEINFO_S* pstLastFrmPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S *)(((HI_DRV_VIDEO_PRIVATE_S*)(pstChan->stLastDispFrameInfo.u32Priv))->u32Reserve);
    HI_DRV_VIDEO_PRIVATE_S* pstVideoPriv = (HI_DRV_VIDEO_PRIVATE_S*)(pstFrame->u32Priv);

	memset(&stImage,0,sizeof(stImage));
    if (pstLastFrmPrivInfo->u8EndFrame == 1)
    {
        pstPrivInfo->u8EndFrame = 2;
        pstChan->u32EndFrmFlag = 0;
        pstChan->u32LastFrmTryTimes = 0;
        pstChan->u32LastFrmId = -1;
	    pstFrame->bProgressive = HI_FALSE;
        pstFrame->enFieldMode = HI_DRV_FIELD_ALL;
		pstVideoPriv->u32LastFlag = DEF_HI_DRV_VPSS_LAST_ERROR_FLAG;

        return HI_SUCCESS;
    }

    /*VDEC Receive frame from VFMW */
    pstStatInfo->u32VdecRcvFrameTry++;
	if(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32Speed < 0)
	{
	    s32Ret = VDEC_RecvFastBackFrm(hHandle, pstImgInft, &stImage);
        if (HI_SUCCESS != s32Ret)
        {
            VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
            pstVpssChan = &(s_stVdecDrv.astChanEntity[hHandle].stVpssChan);
            //(void)(s_stVdecDrv.pVpssFunc->pfnVpssSendCommand)(pstVpssChan->hVpss,HI_DRV_VPSS_USER_COMMAND_IMAGEREADY, NULL);
        }
	}
	else
	{
        s32Ret = pstImgInft->read_image(pstImgInft->image_provider_inst_id, &stImage);
	}
    if (VDEC_OK != s32Ret)
    {
            /* If last frame decode fail, retry 5 times */
        if (((pstChan->u32EndFrmFlag == 1) && (pstChan->u32LastFrmTryTimes++ >= 4)) ||
            /* If report last frame id after this frame had been outputed, check last frame id */
            ((pstChan->u32EndFrmFlag == 2) && (pstLastFrmPrivInfo->image_id%100 == pstChan->u32LastFrmId)) ||//(HI_VDEC_PRIV_FRAMEINFO_S*)pstFrame->u32Priv
            /* For user space decode mode, the first fail means receive over. */
            (pstChan->u32EndFrmFlag == 3))
        {
            /* Last frame is the end frame */
            pstPrivInfo->u8EndFrame = 2;
            pstChan->u32EndFrmFlag = 0;
            pstChan->u32LastFrmTryTimes = 0;
            pstChan->u32LastFrmId = -1;
			pstFrame->bProgressive = HI_FALSE;
            pstFrame->enFieldMode = HI_DRV_FIELD_ALL;
		    pstVideoPriv->u32LastFlag = DEF_HI_DRV_VPSS_LAST_ERROR_FLAG;

            return HI_SUCCESS;
        }

        return HI_FAILURE;
    }
    pstChan->u32LastFrmTryTimes = 0;

    pstStatInfo->u32VdecRcvFrameOK++;
    pstStatInfo->u32TotalVdecOutFrame++;

    /* Calculate PTS */
    PTSREC_CalcStamp(hHandle, pstChan->stCurCfg.enType, &stImage);

    /*interleaved source, VPSS module swtich field to frame, need to adjust pts*/
    pstPrivInfo->s32InterPtsDelta = PTSREC_GetInterPtsDelta(hHandle);

    /* Save user data for watermark */
    for (u32UserdataId = 0; u32UserdataId < 4; u32UserdataId++)
    {
        pstChan->pu8UsrDataForWaterMark[u32UserdataId] = stImage.p_usrdat[u32UserdataId];
    }

    /* Get channel state */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_CHAN_STATE, &stChanState);
    if (VDEC_OK != s32Ret)
    {
        HI_FATAL_VDEC("Chan %d GET_CHAN_STATE err\n", pstChan->hChan);
    }
	#if (0 == VDEC_USERDATA_NEED_ARRANGE)
    if(HI_NULL != stImage.p_usrdat)
    {
        USRDATA_Arrange(hHandle,stImage.p_usrdat[0]);
    }
	#endif
    /* Convert VFMW-IMAGE to VO-HI_UNF_VIDEO_FRAME_INFO_S */
    VDEC_ConvertFrm(pstChan->stCurCfg.enType, pstChan, &stChanState, &stImage, pstFrame);

    if (stImage.image_id%100 == pstChan->u32LastFrmId)
    {
        pstPrivInfo->u8EndFrame = 1;
		pstVideoPriv->u32LastFlag = DEF_HI_DRV_VPSS_LAST_FRAME_FLAG;
    }
	/*set framePackingType for pstFrame*/
    pstVpssChan = &(s_stVdecDrv.astChanEntity[hHandle].stVpssChan);
	if(HI_UNF_FRAME_PACKING_TYPE_BUTT != pstVpssChan->eFramePackType)
	{
		switch(pstVpssChan->eFramePackType)
		{
			case HI_UNF_FRAME_PACKING_TYPE_NONE:            /**< Normal frame, not a 3D frame */
				pstFrame->eFrmType = HI_DRV_FT_NOT_STEREO;
				break;
	        case HI_UNF_FRAME_PACKING_TYPE_SIDE_BY_SIDE:     /**< Side by side */
				pstFrame->eFrmType = HI_DRV_FT_SBS;
				if(stImage.disp_width/2 > stImage.disp_height)
			    {
				    pstFrame->u32AspectWidth = stImage.disp_width/2;
				    pstFrame->u32AspectHeight = stImage.disp_height;
				}
				else
			    {
					pstFrame->u32AspectWidth = stImage.disp_width;
				    pstFrame->u32AspectHeight = stImage.disp_height;    
			    }
				s_stVdecDrv.astChanEntity[hHandle].pstChan->u32UserSetAspectWidth = pstFrame->u32AspectWidth;
				s_stVdecDrv.astChanEntity[hHandle].pstChan->u32UserSetAspectHeight = pstFrame->u32AspectHeight;
				break;
	        case HI_UNF_FRAME_PACKING_TYPE_TOP_AND_BOTTOM:   /**< Top and bottom */
				pstFrame->eFrmType = HI_DRV_FT_TAB;
				if(stImage.disp_width < stImage.disp_height)
			    {
				    pstFrame->u32AspectWidth = stImage.disp_width;
				    pstFrame->u32AspectHeight = stImage.disp_height/2;
				}
				else
			    {
					pstFrame->u32AspectWidth = stImage.disp_width;
				    pstFrame->u32AspectHeight = stImage.disp_height;    
			    }
				s_stVdecDrv.astChanEntity[hHandle].pstChan->u32UserSetAspectWidth = pstFrame->u32AspectWidth;
				s_stVdecDrv.astChanEntity[hHandle].pstChan->u32UserSetAspectHeight = pstFrame->u32AspectHeight;
				break;
	        case HI_UNF_FRAME_PACKING_TYPE_TIME_INTERLACED:  /**< Time interlaced: one frame for left eye, the next frame for right eye */
	            //pstFrame->eFrmType = HI_DRV_FT_FPK;
				break;
			default:
				pstFrame->eFrmType = HI_DRV_FT_BUTT;
				break;
		}
	}
    /* Count err frame */
    pstStatInfo->u32VdecErrFrame = stChanState.error_frame_num;

    pstFrame->bIsFirstIFrame = HI_FALSE;

    /*Record the interval of I frames and the output time of the first I frame*/
    /*CNcomment: 记录I帧间隔和换台后第一个I帧解码输出时间 */
    if (0 == (stImage.format & 0x3)) /* I frame */
    {
        HI_DRV_STAT_Event(STAT_EVENT_IFRAMEINTER, pstFrame->u32Pts);
        if (1 == pstStatInfo->u32TotalVdecOutFrame)
        {
            pstFrame->bIsFirstIFrame = HI_TRUE;
            HI_DRV_STAT_Event(STAT_EVENT_IFRAMEOUT, 0);
        }
    }

    if (pstChan->bIsIFrameDec)
    {
        //pstFrame->ePixFormat = HI_DRV_PIX_FMT_NV21;
        pstFrame->bProgressive = HI_TRUE;
        pstPrivInfo->u8Marker |= 0x2; 
    }
    else
    {
        pstPrivInfo->u8Marker &= 0xfd; 
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_RlsFrm(VDEC_CHANNEL_S *pstChan, HI_DRV_VIDEO_FRAME_S *pstFrame)
{
    HI_S32 s32Ret;
    IMAGE stImage;
    IMAGE_INTF_S *pstImgInft = &pstChan->stImageIntf;
    VDEC_CHAN_STATINFO_S *pstStatInfo = &pstChan->stStatInfo;
    HI_VDEC_PRIV_FRAMEINFO_S* pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S*)(((HI_DRV_VIDEO_PRIVATE_S *)(pstFrame->u32Priv))->u32Reserve);
	
    memset(&stImage,0,sizeof(stImage));
    stImage.image_stride = pstFrame->stBufAddr[0].u32Stride_Y;
    stImage.image_height = pstFrame->u32Height;
    stImage.image_width   = pstFrame->u32Width;
    stImage.luma_phy_addr = pstFrame->stBufAddr[0].u32PhyAddr_Y;
    stImage.top_luma_phy_addr = pstFrame->stBufAddr[0].u32PhyAddr_Y;
	stImage.image_id             = pstPrivInfo->image_id;
	stImage.image_id_1           = pstPrivInfo->image_id_1;
    stImage.BTLInfo.btl_imageid  = pstPrivInfo->stBTLInfo.u32BTLImageID;
    stImage.BTLInfo.u32Is1D      = pstPrivInfo->stBTLInfo.u32Is1D;

    pstStatInfo->u32VdecRlsFrameTry++;
    s32Ret = pstImgInft->release_image(pstImgInft->image_provider_inst_id, &stImage);
    if (VDEC_OK != s32Ret)
    {
        pstStatInfo->u32VdecRlsFrameFail++;
        return HI_FAILURE;
    }
    else
    {
        pstStatInfo->u32VdecRlsFrameOK++;
        return HI_SUCCESS;
    }
}

HI_S32 HI_DRV_VDEC_GetFrmBuf(HI_HANDLE hHandle, HI_DRV_VDEC_FRAME_BUF_S* pstFrm)
{
    HI_S32 s32Ret;
    HI_S32 as8TmpBuf[16];
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstFrm)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Get from VFMW */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_USRDEC_FRAME, as8TmpBuf);
    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d GET_USRDEC_FRAME err!\n", pstChan->hChan);
        return HI_FAILURE;
    }

    pstFrm->u32PhyAddr = (HI_U32)(as8TmpBuf[0]);
    pstFrm->u32Size = (HI_U32)(as8TmpBuf[1]);
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_PutFrmBuf(HI_HANDLE hHandle, HI_DRV_VDEC_USR_FRAME_S* pstFrm)
{
    HI_S32 s32Ret;
    USRDEC_FRAME_DESC_S stFrameDesc;
    VDEC_CHANNEL_S       *pstChan = HI_NULL;

    if (HI_NULL == pstFrm)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }
    
    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Convert color format */
    switch (pstFrm->enFormat)
    {
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
        stFrameDesc.enFmt = COLOR_FMT_422_2x1;
        stFrameDesc.s32IsSemiPlanar = HI_TRUE;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
        stFrameDesc.enFmt = COLOR_FMT_420;
        stFrameDesc.s32IsSemiPlanar = HI_TRUE;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_400:
        stFrameDesc.enFmt = COLOR_FMT_400;
        stFrameDesc.s32IsSemiPlanar = HI_TRUE;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_411:
        stFrameDesc.enFmt = COLOR_FMT_411;
        stFrameDesc.s32IsSemiPlanar = HI_TRUE;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2:
        stFrameDesc.enFmt = COLOR_FMT_422_1x2;
        stFrameDesc.s32IsSemiPlanar = HI_TRUE;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_444:
        stFrameDesc.enFmt = COLOR_FMT_444;
        stFrameDesc.s32IsSemiPlanar = HI_TRUE;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_400:
        stFrameDesc.enFmt = COLOR_FMT_400;
        stFrameDesc.s32IsSemiPlanar = HI_FALSE;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_411:
        stFrameDesc.enFmt = COLOR_FMT_411;
        stFrameDesc.s32IsSemiPlanar = HI_FALSE;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_420:
        stFrameDesc.enFmt = COLOR_FMT_420;
        stFrameDesc.s32IsSemiPlanar = HI_FALSE;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_422_1X2:
        stFrameDesc.enFmt = COLOR_FMT_422_1x2;
        stFrameDesc.s32IsSemiPlanar = HI_FALSE;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_422_2X1:
        stFrameDesc.enFmt = COLOR_FMT_422_2x1;
        stFrameDesc.s32IsSemiPlanar = HI_FALSE;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_444:
        stFrameDesc.enFmt = COLOR_FMT_444;
        stFrameDesc.s32IsSemiPlanar = HI_FALSE;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_410:
        stFrameDesc.enFmt = COLOR_FMT_410;
        stFrameDesc.s32IsSemiPlanar = HI_FALSE;
        break;
    case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
    case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
    case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
    default:
        stFrameDesc.enFmt = COLOR_FMT_BUTT;
        stFrameDesc.s32IsSemiPlanar = HI_FALSE;
        break;
    }

    stFrameDesc.Pts = pstFrm->u32Pts;
    stFrameDesc.s32YWidth  = pstFrm->s32YWidth;
    stFrameDesc.s32YHeight = pstFrm->s32YHeight;
    stFrameDesc.s32LumaPhyAddr = pstFrm->s32LumaPhyAddr;
    stFrameDesc.s32LumaStride = pstFrm->s32LumaStride;
    stFrameDesc.s32CbPhyAddr    = pstFrm->s32CbPhyAddr;
    stFrameDesc.s32CrPhyAddr    = pstFrm->s32CrPhyAddr;
    stFrameDesc.s32ChromStride  = pstFrm->s32ChromStride;
//#ifdef CHIP_TYPE_hi3712
    stFrameDesc.s32ChromCrStride  = pstFrm->s32ChromCrStride;
//#endif
    stFrameDesc.s32IsFrameValid = pstFrm->bFrameValid;

    /* Last frame is the end frame */
    if (pstFrm->bEndOfStream)
    {
        pstChan->u32EndFrmFlag = 3;
    }

    /* Put */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_PUT_USRDEC_FRAME, &stFrameDesc);
    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d PUT_USRDEC_FRAME err!\n", pstChan->hChan);
        return HI_FAILURE;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

 HI_S32 HI_DRV_VDEC_RecvFrmBuf(HI_HANDLE hHandle, HI_DRV_VIDEO_FRAME_S* pstFrm)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    //HI_DRV_VIDEO_FRAME_S* pstLastFrm = HI_NULL;

    if ((HI_NULL == pstFrm) || (HI_INVALID_HANDLE == hHandle))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    memset(pstFrm, 0, sizeof(HI_DRV_VIDEO_FRAME_S));

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;


    if (VDEC_CHAN_STATE_RUN != pstChan->enCurState)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d isn't runnig!\n", hHandle);
        return HI_FAILURE;
    }

    /*VPSS Read a frame from VDEC */
    pstChan->stStatInfo.u32UserAcqFrameTry++;
    s32Ret = VDEC_RecvFrm(hHandle, pstChan, pstFrm);
    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }
    pstChan->stStatInfo.u32UserAcqFrameOK++;

    pstChan->stLastDispFrameInfo = *pstFrm;
    
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

	/* save yuv data */
	BUFMNG_SaveYuv(hHandle, pstFrm,pstChan->stCurCfg.enType);   
	
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_RlsFrmBuf(HI_HANDLE hHandle, HI_DRV_VIDEO_FRAME_S  *pstFrm)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if ((HI_NULL == pstFrm) || (HI_INVALID_HANDLE == hHandle))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    pstChan->stStatInfo.u32UserRlsFrameTry++;
    s32Ret = VDEC_RlsFrm(pstChan, pstFrm);
    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        //HI_ERR_VDEC("VDEC_RlsFrm err!\n");
        return HI_FAILURE;
    }

    pstChan->stStatInfo.u32UserRlsFrameOK++;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}
static HI_S32 VDEC_Chan_VpssRecvFrmBuf(VPSS_HANDLE hVpss, HI_DRV_VIDEO_FRAME_S* pstFrm)
{
	HI_S32 s32Ret;
	HI_HANDLE hVdec;
	if (HI_NULL == pstFrm)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

	s32Ret = VDEC_FindVdecHandleByVpssHandle(hVpss,&hVdec);
	if(HI_SUCCESS != s32Ret)
	{
		return s32Ret;
	}
	s32Ret = HI_DRV_VDEC_RecvFrmBuf(hVdec,pstFrm);
	return s32Ret;
}
static HI_S32 VDEC_Chan_VpssRlsFrmBuf(VPSS_HANDLE hVpss, HI_DRV_VIDEO_FRAME_S  *pstFrm)
{
    HI_S32 s32Ret;
	HI_HANDLE hVdec;
	if (HI_NULL == pstFrm)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

	s32Ret = VDEC_FindVdecHandleByVpssHandle(hVpss,&hVdec);
	if(HI_SUCCESS != s32Ret)
	{
		return s32Ret;
	}
	s32Ret = HI_DRV_VDEC_RlsFrmBuf(hVdec,pstFrm);
	return s32Ret;
}
HI_S32 HI_DRV_VDEC_RlsFrmBufWithoutHandle(HI_DRV_VIDEO_FRAME_S *pstFrm)
{
    HI_S32 s32Ret;
    HI_U32 u32Yaddr;

    if (HI_NULL == pstFrm)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Get handle value */
    u32Yaddr = pstFrm->stBufAddr[0].u32PhyAddr_Y;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(HI_INVALID_HANDLE, VDEC_CID_GET_CHAN_ID_BY_MEM, &u32Yaddr);
    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("VMFW GET_CHAN_ID_BY_MEM err!\n");
        return HI_FAILURE;
    }

    return HI_DRV_VDEC_RlsFrmBuf(u32Yaddr&0xff, pstFrm);
}

#if 0
static inline HI_VOID VDEC_YUVFormat_UNF2VFMW(HI_UNF_VIDEO_FORMAT_E enUNF, YUV_FORMAT_E* penVFMW)
{
    switch (enUNF)
    {
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
        *penVFMW = SPYCbCr422_2X1;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
        *penVFMW = SPYCbCr420;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_400:
        *penVFMW = SPYCbCr400;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_411:
        *penVFMW = SPYCbCr411;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2:
        *penVFMW = SPYCbCr422_1X2;
        break;
    case HI_UNF_FORMAT_YUV_SEMIPLANAR_444:
        *penVFMW = SPYCbCr444;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_400:
        *penVFMW = PLNYCbCr400;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_411:
        *penVFMW = PLNYCbCr411;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_420:
        *penVFMW = PLNYCbCr420;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_422_1X2:
        *penVFMW = PLNYCbCr422_1X2;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_422_2X1:
        *penVFMW = PLNYCbCr422_2X1;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_444:
        *penVFMW = PLNYCbCr444;
        break;
    case HI_UNF_FORMAT_YUV_PLANAR_410:
        *penVFMW = PLNYCbCr410;
        break;
    case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
    case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
    case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
    default:
        *penVFMW = SPYCbCr420;
        break;
    }
}
#endif

static inline HI_VOID VDEC_YUVFormat_UNF2VFMW(HI_DRV_PIX_FORMAT_E enVideo, YUV_FORMAT_E* penVFMW)
{
    switch(enVideo)
    {
		    case HI_DRV_PIX_FMT_NV08:
		        *penVFMW = SPYCbCr400;
		        break;
		    case HI_DRV_PIX_FMT_NV12_411:
		        *penVFMW = SPYCbCr411;
		        break;
		    case HI_DRV_PIX_FMT_NV16:
		        *penVFMW = SPYCbCr422_1X2;
		        break;
		    case HI_DRV_PIX_FMT_NV16_2X1:
		        *penVFMW = SPYCbCr422_2X1;
		        break;
		    case HI_DRV_PIX_FMT_NV24:
		        *penVFMW = SPYCbCr444;
		        break;
		    case HI_DRV_PIX_FMT_YUV400:
		        *penVFMW = PLNYCbCr400;
		        break;
		    case HI_DRV_PIX_FMT_YUV411:
		        *penVFMW = PLNYCbCr411;
		        break;
		    case HI_DRV_PIX_FMT_YUV420p:
		        *penVFMW = PLNYCbCr420;
		        break;
		    case HI_DRV_PIX_FMT_YUV422_1X2:
		        *penVFMW = PLNYCbCr422_1X2;
		        break;
		    case HI_DRV_PIX_FMT_YUV422_2X1:
		        *penVFMW = PLNYCbCr422_2X1;
		        break;
		    case HI_DRV_PIX_FMT_YUV_444:
		        *penVFMW = PLNYCbCr444;
		        break;
		    case HI_DRV_PIX_FMT_YUV410p:
		        *penVFMW = PLNYCbCr410;
		        break;
		    case HI_DRV_PIX_FMT_NV21:
		    default:
		        *penVFMW = SPYCbCr420;
		        break;
    }
}


HI_S32 HI_DRV_VDEC_BlockToLine(HI_S32 hHandle, HI_DRV_VDEC_BTL_S *pstBTL)
{
    /* Only hi3712 support this interface now. */
//#ifdef CHIP_TYPE_hi3712
#if 1
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    struct 
    {
        IMAGE astImage[2];
        HI_U32 u32Size;
    }stBTLParam;
    HI_VDEC_PRIV_FRAMEINFO_S* pstPrivInfo = HI_NULL;

    if ((HI_NULL == pstBTL) || (HI_NULL == pstBTL->pstInFrame) || 
        (HI_NULL == pstBTL->pstOutFrame) || (HI_INVALID_HANDLE == hHandle))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }
    
    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;
    pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S*)pstBTL->pstInFrame->u32Priv;

    /* Set input image data */
    stBTLParam.astImage[0].top_luma_phy_addr = pstBTL->pstInFrame->stBufAddr[0].u32PhyAddr_Y;
    stBTLParam.astImage[0].top_chrom_phy_addr = pstBTL->pstInFrame->stBufAddr[0].u32PhyAddr_C;
    stBTLParam.astImage[0].luma_phy_addr = pstBTL->pstInFrame->stBufAddr[0].u32PhyAddr_Y;
    stBTLParam.astImage[0].chrom_phy_addr = pstBTL->pstInFrame->stBufAddr[0].u32PhyAddr_C;
    stBTLParam.astImage[0].image_width = pstBTL->pstInFrame->u32Width;
    stBTLParam.astImage[0].image_height = pstBTL->pstInFrame->u32Height;
    stBTLParam.astImage[0].image_stride = pstBTL->pstInFrame->stBufAddr[0].u32Stride_Y;
    //stBTLParam.astImage[0].image_id = pstBTL->pstInFrame->u32FrameIndex;
    stBTLParam.astImage[0].BTLInfo.u32Is1D = pstPrivInfo->stBTLInfo.u32Is1D;
    stBTLParam.astImage[0].BTLInfo.u32IsCompress = pstPrivInfo->stBTLInfo.u32IsCompress;
    stBTLParam.astImage[0].BTLInfo.u32HeadStride = pstPrivInfo->stCompressInfo.u32HeadStride;
    stBTLParam.astImage[0].BTLInfo.u32HeadOffset = pstPrivInfo->stCompressInfo.u32HeadOffset;
    stBTLParam.astImage[0].BTLInfo.u32YHeadAddr = pstPrivInfo->stCompressInfo.u32YHeadAddr;
    stBTLParam.astImage[0].BTLInfo.u32CHeadAddr = pstPrivInfo->stCompressInfo.u32CHeadAddr;
    stBTLParam.astImage[0].BTLInfo.u32CrStride = pstBTL->pstInFrame->stBufAddr[0].u32Stride_Cr;
    stBTLParam.astImage[0].BTLInfo.u32CrAddr = pstBTL->pstInFrame->stBufAddr[0].u32PhyAddr_Cr;
    //stBTLParam.astImage[0].BTLInfo.u32Reversed = pstBTL->pstInFrame->u32Circumrotate;
    VDEC_YUVFormat_UNF2VFMW(pstBTL->pstInFrame->ePixFormat, &(stBTLParam.astImage[0].BTLInfo.YUVFormat));

    /* Set output image data */
    stBTLParam.astImage[1].luma_2d_phy_addr = pstBTL->u32PhyAddr;

    /* Set buffer size */
    stBTLParam.u32Size = pstBTL->u32Size;

    pstChan->stBTL.pstFrame = pstBTL->pstOutFrame;
    atomic_inc(&pstChan->stBTL.atmWorking);
    
    /* VDEC_CID_FRAME_BTL */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_FRAME_BTL, &stBTLParam);
    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("Chan %d VDEC_CID_FRAME_BTL err!\n", pstChan->hChan);
        goto err;
    }

    /* Wait for over */
    if (0 == wait_event_interruptible_timeout(pstChan->stBTL.stWaitQue, 
            (atomic_read(&pstChan->stBTL.atmWorking) == 0), msecs_to_jiffies(pstBTL->u32TimeOutMs)))
    {
        HI_ERR_VDEC("Chan %d BlockToLine time out!\n", pstChan->hChan);
        goto err;
    }

    pstChan->stBTL.pstFrame = HI_NULL;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;

err:
    pstChan->stBTL.pstFrame = HI_NULL;
    atomic_set(&pstChan->stBTL.atmWorking, 0);
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_FAILURE;
#else
    return HI_FAILURE;
#endif
}

static VDEC_CHAN_CAP_LEVEL_E VDEC_CapLevelUnfToFmw(HI_UNF_AVPLAY_OPEN_OPT_S *pstVdecCapParam)
{
    if (HI_UNF_VCODEC_DEC_TYPE_ISINGLE == pstVdecCapParam->enDecType)
    {
        return CAP_LEVEL_SINGLE_IFRAME_FHD;
    }
    else if (HI_UNF_VCODEC_DEC_TYPE_NORMAL == pstVdecCapParam->enDecType)
    {
        if (HI_UNF_VCODEC_PRTCL_LEVEL_H264 == pstVdecCapParam->enProtocolLevel)
        {
            switch(pstVdecCapParam->enCapLevel)
            {
		    case HI_UNF_VCODEC_CAP_LEVEL_QCIF:
				return CAP_LEVEL_H264_QCIF;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_CIF:
				return CAP_LEVEL_MPEG_CIF;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_D1:
				return CAP_LEVEL_H264_D1;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_720P:
				return CAP_LEVEL_H264_720;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_FULLHD:
				return CAP_LEVEL_H264_FHD;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_1280x800:
				return CAP_LEVEL_1280x800;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_800x1280:
				return CAP_LEVEL_800x1280;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_1488x1280:
				return CAP_LEVEL_1488x1280;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_1280x1488:
				return CAP_LEVEL_1280x1488;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_2160x1280:
				return CAP_LEVEL_2160x1280;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_1280x2160:
				return CAP_LEVEL_1280x2160;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_2160x2160:
				return CAP_LEVEL_2160x2160;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_4096x2160:
				return CAP_LEVEL_4096x2160;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_2160x4096:
				return CAP_LEVEL_2160x4096;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_4096x4096:
				return CAP_LEVEL_4096x4096;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_8192x4096:
				return CAP_LEVEL_8192x4096;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_4096x8192:
				return CAP_LEVEL_4096x8192;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_8192x8192:
				return CAP_LEVEL_8192x8192;
			    break;
			default:
				return CAP_LEVEL_H264_FHD;
				break;
            }
        }
		else if(HI_UNF_VCODEC_PRTCL_LEVEL_MVC == pstVdecCapParam->enProtocolLevel)
		{
		    return CAP_LEVEL_MVC_FHD;
		}
        else
        {
            switch(pstVdecCapParam->enCapLevel)
            {
		    case HI_UNF_VCODEC_CAP_LEVEL_QCIF:
				return CAP_LEVEL_MPEG_QCIF;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_CIF:
				return CAP_LEVEL_MPEG_CIF;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_D1:
				return CAP_LEVEL_MPEG_D1;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_720P:
				return CAP_LEVEL_MPEG_720;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_FULLHD:
				return CAP_LEVEL_MPEG_FHD;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_1280x800:
				return CAP_LEVEL_1280x800;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_800x1280:
				return CAP_LEVEL_800x1280;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_1488x1280:
				return CAP_LEVEL_1488x1280;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_1280x1488:
				return CAP_LEVEL_1280x1488;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_2160x1280:
				return CAP_LEVEL_2160x1280;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_1280x2160:
				return CAP_LEVEL_1280x2160;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_2160x2160:
				return CAP_LEVEL_2160x2160;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_4096x2160:
				return CAP_LEVEL_4096x2160;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_2160x4096:
				return CAP_LEVEL_2160x4096;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_4096x4096:
				return CAP_LEVEL_4096x4096;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_8192x4096:
				return CAP_LEVEL_8192x4096;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_4096x8192:
				return CAP_LEVEL_4096x8192;
			    break;
			case HI_UNF_VCODEC_CAP_LEVEL_8192x8192:
				return CAP_LEVEL_8192x8192;
			    break;
			default:
				return CAP_LEVEL_MPEG_FHD;
				break;
            }
        }
    }
    else
    {
        return CAP_LEVEL_BUTT;
    }
}

static HI_S32 VDEC_Chan_AllocHandle(HI_HANDLE *phHandle, struct file *pstFile)
{
    HI_U32 i,j;

    if (HI_NULL == phHandle)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Check ready flag */
    if (s_stVdecDrv.bReady != HI_TRUE)
    {
        HI_ERR_VDEC("Need open first!\n");
        return HI_ERR_VDEC_NOT_OPEN;
    }

    /* Lock */
    if (down_interruptible(&s_stVdecDrv.stSem))
    {
        HI_ERR_VDEC("Global lock err!\n");
        return HI_FAILURE;
    }

    /* Check channel number */
    if ((s_stVdecDrv.u32ChanNum >= HI_VDEC_MAX_INSTANCE_NEW)
       || (s_stVdecDrv.u32ChanNum >= s_stVdecDrv.stVdecCap.s32MaxChanNum))
    {
        HI_ERR_VDEC("Too many chans:%d!\n", s_stVdecDrv.u32ChanNum);
        goto err0;
    }

    /* Allocate new channel */
    for (i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
        if (HI_FALSE == s_stVdecDrv.astChanEntity[i].bUsed)
        {
            s_stVdecDrv.astChanEntity[i].bUsed = HI_TRUE;
            s_stVdecDrv.astChanEntity[i].pstChan = HI_NULL;
            s_stVdecDrv.astChanEntity[i].u32File = (HI_U32)HI_NULL;
            atomic_set(&s_stVdecDrv.astChanEntity[i].atmUseCnt, 0);
            atomic_set(&s_stVdecDrv.astChanEntity[i].atmRlsFlag, 0);
            break;
        }
    }

    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Too many chans!\n");
        goto err0;
    }

    s_stVdecDrv.astChanEntity[i].pstChan = HI_NULL;
    s_stVdecDrv.astChanEntity[i].u32File = (HI_U32)pstFile;

    s_stVdecDrv.astChanEntity[i].stVpssChan.hVdec = i;
    s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss = HI_INVALID_HANDLE;
	s_stVdecDrv.astChanEntity[i].stVpssChan.stControlInfo.u32BackwardOptimizeFlag = HI_FALSE;
	s_stVdecDrv.astChanEntity[i].stVpssChan.stControlInfo.u32DispOptimizeFlag = HI_FALSE;
	s_stVdecDrv.astChanEntity[i].stVpssChan.s32GetFirstIFrameFlag = HI_FALSE;
	s_stVdecDrv.astChanEntity[i].stVpssChan.eLastFrameFormat = VDEC_FRAME_BUTT;
	//s_stVdecDrv.astChanEntity[i].stVpssChan.s32LastFrameGopNum = -1;
	s_stVdecDrv.astChanEntity[i].stVpssChan.s32Speed = 1024;
	s_stVdecDrv.astChanEntity[i].stVpssChan.s32ImageDistance = 0;
	for(j = 0;j < VDEC_MAX_PORT_NUM; j++)
	{
        s_stVdecDrv.astChanEntity[i].stVpssChan.stPort[j].hPort = HI_INVALID_HANDLE;
        s_stVdecDrv.astChanEntity[i].stVpssChan.stPort[j].bEnable= HI_FALSE;
        s_stVdecDrv.astChanEntity[i].stVpssChan.stPort[j].enPortType = VDEC_PORT_TYPE_BUTT;
		s_stVdecDrv.astChanEntity[i].stVpssChan.stPort[j].s32PortTmpListPos = 0;
		s_stVdecDrv.astChanEntity[i].stVpssChan.stPort[j].s32GetFirstVpssFrameFlag = HI_FALSE;
        s_stVdecDrv.astChanEntity[i].stVpssChan.stPort[j].s32RecvNewFrame = HI_FALSE;
        s_stVdecDrv.astChanEntity[i].stVpssChan.stPort[j].s32PortLastFrameGopNum = -1;
		s_stVdecDrv.astChanEntity[i].stVpssChan.stPort[j].u32LastFrameIndex = -1;
		INIT_LIST_HEAD(&s_stVdecDrv.astChanEntity[i].stVpssChan.stPort[j].stPortList.stVdecPortFrameList);
		VDEC_InitSpinLock(&s_stVdecDrv.astChanEntity[i].stVpssChan.stPort[j].stPortList.stPortFrameListLock);
		
	}
    
    s_stVdecDrv.u32ChanNum++;
    *phHandle = (HI_ID_VDEC << 16) | i;
    
	up(&s_stVdecDrv.stSem);
    return HI_SUCCESS;

err0:
    up(&s_stVdecDrv.stSem);
    return HI_FAILURE;
}

static HI_S32 VDEC_Chan_FreeHandle(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
        
    /* Clear global parameter */
    s32Ret = down_interruptible(&s_stVdecDrv.stSem);
    if (s_stVdecDrv.u32ChanNum > 0)
    {
        s_stVdecDrv.u32ChanNum--;
    }
    s_stVdecDrv.astChanEntity[hHandle].bUsed = HI_FALSE;
    up(&s_stVdecDrv.stSem);
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_Alloc(HI_HANDLE hHandle, HI_UNF_AVPLAY_OPEN_OPT_S *pstCapParam)
{
    HI_S32 s32Ret;
    HI_S8 as8TmpBuf[128];
    VDEC_CHANNEL_S*         pstChan = HI_NULL;
    IMAGE_INTF_S*           pstImageIntf  = HI_NULL;
    STREAM_INTF_S*          pstStreamIntf = HI_NULL;
    VDEC_CHAN_CAP_LEVEL_E   enCapToFmw;
    HI_U32 u32VDHSize = 0;
	HI_CHIP_TYPE_E enChipType = HI_CHIP_TYPE_HI3716CES;
	HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_V200;

    HI_DRV_SYS_GetChipVersion(&enChipType,&enChipVersion);
    /* check input parameters */
    if (HI_NULL == pstCapParam)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Allocate resource */
    pstChan = HI_VMALLOC_VDEC(sizeof(VDEC_CHANNEL_S));
    if (HI_NULL == pstChan)
    {
        HI_ERR_VDEC("No memory\n");
        goto err0;
    }

    /* Initialize the channel attributes */
    memset(pstChan, 0, sizeof(VDEC_CHANNEL_S));

    pstChan->hVdec = hHandle;
    pstChan->hChan = HI_INVALID_HANDLE;
    pstChan->hStrmBuf = HI_INVALID_HANDLE;
    pstChan->u32StrmBufSize = 0;
    pstChan->hDmxVidChn = HI_INVALID_HANDLE;
    pstChan->u32DmxBufSize = 0;
    pstChan->bNormChange = HI_FALSE;
    pstChan->stNormChangeParam.enNewFormat    = HI_UNF_ENC_FMT_BUTT;
    pstChan->stNormChangeParam.u32ImageWidth  = 0;
    pstChan->stNormChangeParam.u32ImageHeight = 0;
    pstChan->stNormChangeParam.u32FrameRate   = 0;
    pstChan->stNormChangeParam.bProgressive = HI_FALSE;
    pstChan->stIFrame.st2dBuf.u32Size = 0;
    pstChan->bNewFrame = HI_FALSE;
    pstChan->bFramePackingChange = HI_FALSE;
    pstChan->bNewSeq = HI_FALSE;
    pstChan->bNewUserData = HI_FALSE;
    pstChan->bIFrameErr = HI_FALSE;
	pstChan->bUnSupportStream = HI_FALSE;
    pstChan->pstUsrData = HI_NULL;
    pstChan->stFrameRateParam.enFrmRateType = HI_UNF_AVPLAY_FRMRATE_TYPE_PTS;
    pstChan->stFrameRateParam.stSetFrmRate.u32fpsInteger = 25;
    pstChan->stFrameRateParam.stSetFrmRate.u32fpsDecimal = 0;
    pstChan->bSetEosFlag = HI_FALSE;
    pstChan->u8ResolutionChange = 0;
    pstChan->u32DiscontinueCount = 0;
    pstChan->s32Speed = 1024;
    atomic_set(&pstChan->stBTL.atmWorking, 0);
    init_waitqueue_head(&pstChan->stBTL.stWaitQue);
    pstChan->stBTL.pstFrame = HI_NULL;

    pstChan->bIsIFrameDec = HI_FALSE;

    /* Get proper buffer size */
    enCapToFmw = VDEC_CapLevelUnfToFmw(pstCapParam);
    *(VDEC_CHAN_CAP_LEVEL_E *)as8TmpBuf = enCapToFmw;
    pstChan->stOption.Purpose = PURPOSE_DECODE;
    pstChan->stOption.MemAllocMode = MODE_PART_BY_SDK;
    switch (enCapToFmw)
    {
    case CAP_LEVEL_MPEG_QCIF:
        pstChan->stOption.s32MaxWidth  = 176;
        pstChan->stOption.s32MaxHeight = 144;
        break;
    case CAP_LEVEL_MPEG_CIF:
        pstChan->stOption.s32MaxWidth  = 352;
        pstChan->stOption.s32MaxHeight = 288;
        break;
    case CAP_LEVEL_MPEG_D1:
        pstChan->stOption.s32MaxWidth  = 720;
        pstChan->stOption.s32MaxHeight = 576;
        break;
    case CAP_LEVEL_MPEG_720:
        pstChan->stOption.s32MaxWidth  = 1280;
        pstChan->stOption.s32MaxHeight = 720;
        break;
    case CAP_LEVEL_MPEG_FHD:
        pstChan->stOption.s32MaxWidth  = 1920;
        pstChan->stOption.s32MaxHeight = 1088;
        break;
    case CAP_LEVEL_H264_QCIF:
        pstChan->stOption.s32MaxWidth  = 176;
        pstChan->stOption.s32MaxHeight = 144;
        break;
    case CAP_LEVEL_H264_CIF:
        pstChan->stOption.s32MaxWidth  = 352;
        pstChan->stOption.s32MaxHeight = 288;
        break;
    case CAP_LEVEL_H264_D1:
        pstChan->stOption.s32MaxWidth  = 720;
        pstChan->stOption.s32MaxHeight = 576;
        break;
    case CAP_LEVEL_H264_720:
        pstChan->stOption.s32MaxWidth  = 1280;
        pstChan->stOption.s32MaxHeight = 720;
        break;
    case CAP_LEVEL_H264_FHD:
	case CAP_LEVEL_MVC_FHD:
        pstChan->stOption.s32MaxWidth  = 1920;
        pstChan->stOption.s32MaxHeight = 1088;
        break;
    case CAP_LEVEL_H264_BYDHD:
        pstChan->stOption.s32MaxWidth  = 5632;
        pstChan->stOption.s32MaxHeight = 4224;
        break;
    case CAP_LEVEL_SINGLE_IFRAME_FHD:
        pstChan->stOption.s32MaxWidth  = 1920;
        pstChan->stOption.s32MaxHeight = 1088;
        break;
    default:
        pstChan->stOption.s32MaxWidth  = 1920;
        pstChan->stOption.s32MaxHeight = 1088;
        break;
    }

    pstChan->stOption.s32MaxSliceNum = 136;
    pstChan->stOption.s32MaxSpsNum = 32;
    pstChan->stOption.s32MaxPpsNum = 256;
    pstChan->stOption.s32SupportBFrame = 1;
    pstChan->stOption.s32SupportH264 = 1;
    pstChan->stOption.s32ReRangeEn = 1;     /* Support rerange frame buffer when definition change */
    pstChan->stOption.s32SlotWidth = 0;
    pstChan->stOption.s32SlotHeight = 0;
	if(CAP_LEVEL_MVC_FHD == enCapToFmw)
	{
	    pstChan->stOption.s32MaxRefFrameNum = 16;
	    if(HI_CHIP_TYPE_HI3716C ==enChipType || HI_CHIP_TYPE_HI3718C == enChipType || HI_CHIP_TYPE_HI3719C == enChipType || HI_CHIP_TYPE_HI3719M_A == enChipType)
	    {
	        pstChan->stOption.s32DisplayFrameNum = 6;
	    }
		else
		{
		   	pstChan->stOption.s32DisplayFrameNum = 18;
		}
	}
	else
	{
        if (RefFrameNum < HI_VDEC_REF_FRAME_MIN)
        {
            RefFrameNum = HI_VDEC_REF_FRAME_MIN;
        }
        else if (RefFrameNum > HI_VDEC_REF_FRAME_MAX)
        {
            RefFrameNum = HI_VDEC_REF_FRAME_MAX;
        }
		
        if (CAP_LEVEL_SINGLE_IFRAME_FHD == enCapToFmw)
        {
            pstChan->stOption.s32MaxRefFrameNum = 1;
        }
        else
        {
            pstChan->stOption.s32MaxRefFrameNum = RefFrameNum;
        }
        if (DispFrameNum < HI_VDEC_DISP_FRAME_MIN)
        {
            DispFrameNum = HI_VDEC_DISP_FRAME_MIN;
        }
        else if (DispFrameNum > HI_VDEC_DISP_FRAME_MAX)
        {
            DispFrameNum = HI_VDEC_DISP_FRAME_MAX;
        }
        if (CAP_LEVEL_SINGLE_IFRAME_FHD == enCapToFmw)
        {
            pstChan->stOption.s32DisplayFrameNum = 1;
        }
        else
        {
            pstChan->stOption.s32DisplayFrameNum = DispFrameNum - HI_VDEC_BUFFER_FRAME;
        }
	}
	  pstChan->stOption.s32SCDBufSize = HI_VDEC_SCD_BUFFER_SIZE;
//debug 4k*2k
#if 1
        if(enCapToFmw > CAP_LEVEL_1280x2160)
        {
             switch (enCapToFmw)
             {
             case CAP_LEVEL_2160x2160:
			 	 pstChan->stOption.s32MaxWidth  = 2160;
		         pstChan->stOption.s32MaxHeight = 2160;
		         pstChan->stOption.s32MaxRefFrameNum = 9;
				 if(HI_CHIP_TYPE_HI3716C ==enChipType || HI_CHIP_TYPE_HI3718C == enChipType || HI_CHIP_TYPE_HI3719C == enChipType || HI_CHIP_TYPE_HI3719M_A == enChipType)
				 {
		             pstChan->stOption.s32DisplayFrameNum = 3;
				 }
				 else
				 {
				     pstChan->stOption.s32DisplayFrameNum = 5; 
				 }
				 pstChan->stOption.s32SCDBufSize = 3*1024*1024;
                 break;
             case CAP_LEVEL_4096x2160:
			     pstChan->stOption.s32MaxWidth  = 4096;
		         pstChan->stOption.s32MaxHeight = 2160;
		         pstChan->stOption.s32MaxRefFrameNum = 4;
		         pstChan->stOption.s32DisplayFrameNum = 4;
				 pstChan->stOption.s32SCDBufSize = 5*1024*1024;
				 break;
		     case CAP_LEVEL_2160x4096:
			 	 pstChan->stOption.s32MaxWidth  = 2160;
		         pstChan->stOption.s32MaxHeight = 4096;
		         pstChan->stOption.s32MaxRefFrameNum = 4;
		         pstChan->stOption.s32DisplayFrameNum = 4;
				 pstChan->stOption.s32SCDBufSize = 5*1024*1024;
                 break;
			 case CAP_LEVEL_4096x4096:
			 	 pstChan->stOption.s32MaxWidth  = 4096;
		         pstChan->stOption.s32MaxHeight = 4096;
		         pstChan->stOption.s32MaxRefFrameNum = 4;
		         pstChan->stOption.s32DisplayFrameNum = 2;
				 pstChan->stOption.s32SCDBufSize = 8*1024*1024;
			     break;
			 case CAP_LEVEL_8192x4096:
			 	 pstChan->stOption.s32MaxWidth  = 8192;
		         pstChan->stOption.s32MaxHeight = 4096;
		         pstChan->stOption.s32MaxRefFrameNum = 4;
		         pstChan->stOption.s32DisplayFrameNum = 2;
				 pstChan->stOption.s32SCDBufSize = 10*1024*1024;
			     break;
			 case CAP_LEVEL_4096x8192:
			 	 pstChan->stOption.s32MaxWidth  = 4096;
		         pstChan->stOption.s32MaxHeight = 8192;
		         pstChan->stOption.s32MaxRefFrameNum = 4;
		         pstChan->stOption.s32DisplayFrameNum = 2;
				 pstChan->stOption.s32SCDBufSize = 10*1024*1024;
			     break;
			 case CAP_LEVEL_8192x8192:
			 	 pstChan->stOption.s32MaxWidth  = 8192;
		         pstChan->stOption.s32MaxHeight = 8192;
		         pstChan->stOption.s32MaxRefFrameNum = 4;
		         pstChan->stOption.s32DisplayFrameNum = 2;
				 pstChan->stOption.s32SCDBufSize = 20*1024*1024;
		     default:
			     break;
             }
        }
#endif
//
  

//#ifdef CHIP_TYPE_hi3712
    /* 1: Enable 1D to 2D, the data got by VOU is 2D; 0: Disable */
    /* Can't support 1D->2D switching. Because 2D must allocate memory when VDEC_CID_CREATE_CHAN. */
    pstChan->stOption.s32Btl1Dt2DEnable = En2d;     /* Default 1D */
    /* 1: Enable DbDr info calculation, used by DNR in VOU; 0: Disable */
    pstChan->stOption.s32BtlDbdrEnable = 1;         /* DNR Enable */
#if (1 == HI_VDEC_HD_SIMPLE)
    pstChan->stOption.s32TreeFsEnable = 0;
#else
#if 0
    if (pstChan->stOption.s32MaxRefFrameNum + 
        pstChan->stOption.s32DisplayFrameNum +
        HI_VDEC_BUFFER_FRAME 
          >= HI_VDEC_TREEBUFFER_MIN)
    {
        pstChan->stOption.s32TreeFsEnable = 1;      /* Support tree buffer */
    }
    else
    {
        pstChan->stOption.s32TreeFsEnable = 0;
    }
#else
    pstChan->stOption.s32TreeFsEnable = 0;          /* Support tree buffer */
#endif
#endif
//#endif

    ((HI_S32*)as8TmpBuf)[0] = (HI_S32)enCapToFmw;
    ((HI_S32*)as8TmpBuf)[1] = (HI_S32)&pstChan->stOption;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(HI_INVALID_HANDLE, VDEC_CID_GET_CHAN_DETAIL_MEMSIZE_WITH_OPTION, as8TmpBuf);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("VFMW GET_CHAN_MEM_CFG err!\n");
        goto err1;
    }

    pstChan->stMemSize = *(DETAIL_MEM_SIZE *)as8TmpBuf;

    /* Alloc SCD buffer */
    if (pstChan->stMemSize.ScdDetailMem > 0)
    {      
    
#if (1 == PRE_ALLOC_VDEC_SCD_MMZ)
        /* Only first handle use g_stVDHMMZ */
        if ((HI_FALSE == g_bVdecPreSCDMMZUsed) && (pstChan->stMemSize.ScdDetailMem <= g_stSCDMMZ.u32Size))
        {
            g_bVdecPreSCDMMZUsed = HI_TRUE;
			HI_DRV_MMZ_Map(&g_stSCDMMZ);
            pstChan->stSCDMMZBuf.u32Size = pstChan->stMemSize.ScdDetailMem;
            pstChan->stSCDMMZBuf.u32StartPhyAddr = g_stSCDMMZ.u32StartPhyAddr;
            pstChan->stSCDMMZBuf.u32StartVirAddr = g_stSCDMMZ.u32StartVirAddr;
        }
        else
#endif
        {
#if defined (CFG_ANDROID_TOOLCHAIN)
            s32Ret = HI_DRV_MMZ_AllocAndMap("VFMW_SCD", "vdec", pstChan->stMemSize.ScdDetailMem, 0, &pstChan->stSCDMMZBuf);
#else
            s32Ret = HI_DRV_MMZ_AllocAndMap("VFMW_SCD", HI_NULL, pstChan->stMemSize.ScdDetailMem, 0, &pstChan->stSCDMMZBuf);
#endif

            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_VDEC("Chan %d alloc SCD MMZ err!\n", hHandle);
                goto err1;
            }

        }
        
        /*pstChan->stSCDMMZBuf.u32SizeD的大小就是从vfmw获取的大小:pstChan->stMemSize.ScdDetailMem*/
        pstChan->stOption.MemDetail.ChanMemScd.Length  = pstChan->stSCDMMZBuf.u32Size;
        pstChan->stOption.MemDetail.ChanMemScd.PhyAddr = pstChan->stSCDMMZBuf.u32StartPhyAddr;
        pstChan->stOption.MemDetail.ChanMemScd.VirAddr = (HI_VOID*)pstChan->stSCDMMZBuf.u32StartVirAddr;
        HI_INFO_VDEC("<0>SCD Buffer allocate %d!\n", pstChan->stSCDMMZBuf.u32Size);
    }

    /* Context memory allocated by VFMW */
	/* CNcomment: 这部分由vfmw自己进行分配，scd和vdh的内存由vdec进行分配*/
    pstChan->stOption.MemDetail.ChanMemCtx.Length  = 0;
    pstChan->stOption.MemDetail.ChanMemCtx.PhyAddr = 0;
    pstChan->stOption.MemDetail.ChanMemCtx.VirAddr = HI_NULL;

    /* Allocate frame buffer memory(VDH) */
//#if (defined CHIP_TYPE_hi3712) && 
#if (1 == HI_VDEC_SVDEC_SUPPORT)
	u32VDHSize = (pstChan->stMemSize.VdhDetailMem > HI_VDEC_SVDEC_VDH_MEM) ? pstChan->stMemSize.VdhDetailMem : HI_VDEC_SVDEC_VDH_MEM;
#else
    u32VDHSize = pstChan->stMemSize.VdhDetailMem;
#endif
    if (u32VDHSize > 0)
    {
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)
        if ((HI_FALSE == g_bVdecPreVDHMMZUsed) && (u32VDHSize <= g_stVDHMMZ.u32Size))
        {
            g_bVdecPreVDHMMZUsed = HI_TRUE;
			s32Ret = HI_DRV_MMZ_Map(&g_stVDHMMZ);
			if (HI_SUCCESS != s32Ret)
			{
			    HI_ERR_VDEC("Chan %d map VDH MMZ err!\n", hHandle);
                goto err1;
			}
			/* CNcomment:解码采用预分配内存的方式，所以将预分配内存的大小分配给解码，而不是把其需要的大小赋值*/
            pstChan->stVDHMMZBuf.u32Size  = g_stVDHMMZ.u32Size;
            pstChan->stVDHMMZBuf.u32StartPhyAddr = g_stVDHMMZ.u32StartPhyAddr;
            pstChan->stVDHMMZBuf.u32StartVirAddr = g_stVDHMMZ.u32StartVirAddr;
        }
        else
#endif
        {
#if defined (CFG_ANDROID_TOOLCHAIN)
            s32Ret = HI_DRV_MMZ_AllocAndMap("VFMW_VDH", "vdec", u32VDHSize, 0, &pstChan->stVDHMMZBuf);
#else
            s32Ret = HI_DRV_MMZ_AllocAndMap("VFMW_VDH", HI_NULL, u32VDHSize, 0, &pstChan->stVDHMMZBuf);
#endif
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_VDEC("Chan %d alloc VDH MMZ err!\n", hHandle);
                goto errA;
            }
        }
        
        pstChan->stOption.MemDetail.ChanMemVdh.Length  = pstChan->stVDHMMZBuf.u32Size;
        pstChan->stOption.MemDetail.ChanMemVdh.PhyAddr = pstChan->stVDHMMZBuf.u32StartPhyAddr;
        pstChan->stOption.MemDetail.ChanMemVdh.VirAddr = (HI_VOID*)pstChan->stVDHMMZBuf.u32StartVirAddr;
        HI_INFO_VDEC("VDH Buffer allocate %d!\n", pstChan->stVDHMMZBuf.u32Size);
    }

    ((HI_S32*)as8TmpBuf)[0] = (HI_S32)enCapToFmw;
    ((HI_S32*)as8TmpBuf)[1] = (HI_S32)&pstChan->stOption;

    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(HI_INVALID_HANDLE, VDEC_CID_CREATE_CHAN_WITH_OPTION, as8TmpBuf);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("VFMW CREATE_CHAN_WITH_OPTION err!\n");
        goto err2;
    }

    /* Record hHandle */
    pstChan->hChan = *(HI_U32 *)as8TmpBuf;
    pstChan->enCurState = VDEC_CHAN_STATE_STOP;
    HI_INFO_VDEC("Create channel success:%d!\n", pstChan->hChan);

    /* Set interface of read/release stream buffer */
    pstStreamIntf = &pstChan->stStrmIntf;
    pstStreamIntf->stream_provider_inst_id = hHandle;
    pstStreamIntf->read_stream = VDEC_Chan_RecvStrmBuf;
    pstStreamIntf->release_stream = VDEC_Chan_RlsStrmBuf;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_STREAM_INTF, pstStreamIntf);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d SET_STREAM_INTF err!\n", hHandle);
        goto err3;
    }

    /* Get interface of read/release image */
    pstImageIntf = &pstChan->stImageIntf;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_IMAGE_INTF, pstImageIntf);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d GET_IMAGE_INTF err!\n", hHandle);
        goto err3;
    }

    /* Register proc file of this chan */
    VDEC_RegChanProc(hHandle);

    /* Set default config */
    pstChan->stCurCfg = s_stVdecDrv.stDefCfg;

    pstChan->enDisplayNorm = HI_UNF_ENC_FMT_BUTT;
    pstChan->stLastFrm.eFrmType= HI_DRV_FT_BUTT;
    pstChan->u32ValidPtsFlag = 0;

    /* Alloc pts recover channel */
    PTSREC_Alloc(hHandle);

    /* Update information of VDEC device */
    s_stVdecDrv.astChanEntity[hHandle].pstChan = pstChan;
    pstChan->stUserCfgCap = *pstCapParam;

    s_stVdecDrv.astChanEntity[hHandle].stVpssChan.hVdec = hHandle;
    
#ifdef TEST_VDEC_SAVEFILE
    VDEC_Dbg_OpenSaveFile(hHandle);
#endif

    HI_INFO_VDEC("Chan %d alloc OK!\n", hHandle);
    return HI_SUCCESS;

err3:
    (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)( pstChan->hChan, VDEC_CID_DESTROY_CHAN_WITH_OPTION, HI_NULL);

err2:
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)
    if (g_bVdecPreVDHMMZUsed && (pstChan->stVDHMMZBuf.u32StartPhyAddr == g_stVDHMMZ.u32StartPhyAddr))
    {
        g_bVdecPreVDHMMZUsed = HI_FALSE;
		HI_DRV_MMZ_Unmap(&g_stVDHMMZ);
    }
    else
#endif
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stVDHMMZBuf);
    }

errA:
#if (1 == PRE_ALLOC_VDEC_SCD_MMZ) 
    if (g_bVdecPreSCDMMZUsed && (pstChan->stSCDMMZBuf.u32StartPhyAddr == g_stSCDMMZ.u32StartPhyAddr))
    {
        g_bVdecPreSCDMMZUsed = HI_FALSE;
		HI_DRV_MMZ_Unmap(&g_stSCDMMZ);
    }
    else
#endif
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stSCDMMZBuf);
    }

err1:
    HI_VFREE_VDEC(pstChan);
err0:
    return HI_FAILURE;
}

static HI_S32 VDEC_Chan_Free(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    /* Stop channel first */
    HI_DRV_VDEC_ChanStop(hHandle);
    VDEC_CHAN_RLS_DOWN(&s_stVdecDrv.astChanEntity[hHandle], HI_INVALID_TIME);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("INFO: %d use too long !\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_RLS_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;
    if(HI_NULL == pstChan)
    {
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    /* Remove proc interface */
    VDEC_UnRegChanProc(hHandle);

#ifdef TEST_VDEC_SAVEFILE
    VDEC_Dbg_CloseSaveFile(hHandle);
#endif

    /* Destroy VFMW decode channel */
    if (HI_INVALID_HANDLE != pstChan->hChan)
    {
        s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)( pstChan->hChan, VDEC_CID_DESTROY_CHAN_WITH_OPTION, HI_NULL);
        if (VDEC_OK != s32Ret)
        {
            HI_ERR_VDEC("Chan %d DESTROY_CHAN err!\n", hHandle);
        }

        pstChan->hChan = HI_INVALID_HANDLE;
    }

    /* Free vfmw memory */
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)
    if (pstChan->stVDHMMZBuf.u32StartPhyAddr == g_stVDHMMZ.u32StartPhyAddr)
    {
        g_bVdecPreVDHMMZUsed = HI_FALSE;
		HI_DRV_MMZ_Unmap(&g_stVDHMMZ);
    }
    else
#endif
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stVDHMMZBuf);
    }

#if (1 == PRE_ALLOC_VDEC_SCD_MMZ)
    if (pstChan->stSCDMMZBuf.u32StartPhyAddr == g_stSCDMMZ.u32StartPhyAddr)
    {
        g_bVdecPreSCDMMZUsed = HI_FALSE;
		HI_DRV_MMZ_Unmap(&g_stSCDMMZ);
    }
    else
#endif
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stSCDMMZBuf);
    }


    /* Free I frame 2d buffer */
    if (0 != pstChan->stIFrame.st2dBuf.u32Size)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stIFrame.st2dBuf);
        pstChan->stIFrame.st2dBuf.u32Size = 0;
    }

    /* Free EOS MMZ */
    if (0 != pstChan->stEOSBuffer.u32Size)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stEOSBuffer);
        pstChan->stEOSBuffer.u32Size = 0;
    }
 
    /* Free pts recover channel */
    PTSREC_Free(hHandle);

    /* Free user data */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_Free(hHandle);
#endif

    /* Clear global parameter */
    s32Ret = down_interruptible(&s_stVdecDrv.stSem);
    s_stVdecDrv.astChanEntity[hHandle].pstChan = HI_NULL;
	s_stVdecDrv.astChanEntity[hHandle].stVpssChan.hVdec = HI_INVALID_HANDLE;
    s_stVdecDrv.astChanEntity[hHandle].u32File = (HI_U32)HI_NULL;
    up(&s_stVdecDrv.stSem);

    /* Free resource */
    if (pstChan)
    {
        if (pstChan->pstUsrData)
        {
            HI_KFREE_VDEC(pstChan->pstUsrData);
        }
        HI_VFREE_VDEC(pstChan);
    }

    VDEC_CHAN_RLS_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    HI_INFO_VDEC("Chan %d free OK!\n", hHandle);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_ChanStart(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Lock %d err!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if ((HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan) ||
        (HI_INVALID_HANDLE == s_stVdecDrv.astChanEntity[hHandle].pstChan->hChan))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Already running, retrun HI_SUCCESS */
    if (pstChan->enCurState == VDEC_CHAN_STATE_RUN)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);        
        return HI_SUCCESS;
    }

    /* Initialize status information*/
    memset(&(pstChan->stStatInfo), 0, sizeof(VDEC_CHAN_STATINFO_S));
    pstChan->bEndOfStrm = HI_FALSE;
    pstChan->u32EndFrmFlag = 0;
    pstChan->u32LastFrmId = -1;
    pstChan->u32LastFrmTryTimes = 0;
    pstChan->u8ResolutionChange = 0;
    pstChan->u32DiscontinueCount = 0;
	pstChan->s32Speed = 1024;
    pstChan->bSetEosFlag = HI_FALSE;

    /* Start VFMW channel */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_START_CHAN, HI_NULL);
    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d START_CHAN err!\n", pstChan->hChan);
        return HI_FAILURE;
    }

    /* Start pts recover channel */
    PTSREC_Start(hHandle);

    /* Start user data channel */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_Start(hHandle);
#endif

    /* Save state */
    pstChan->enCurState = VDEC_CHAN_STATE_RUN;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    HI_INFO_VDEC("Chan %d start OK\n", hHandle);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_ChanStop(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if ((HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan) ||
        (HI_INVALID_HANDLE == s_stVdecDrv.astChanEntity[hHandle].pstChan->hChan))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Already stop, retrun HI_SUCCESS */
    if (pstChan->enCurState == VDEC_CHAN_STATE_STOP)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_SUCCESS;
    }

    /* Stop VFMW */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_STOP_CHAN, HI_NULL);
    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("Chan %d STOP_CHAN err!\n", pstChan->hChan);
    }

    /* Stop user data channel */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_Stop(hHandle);
#endif

    /* Stop pts recover channel */
    PTSREC_Stop(hHandle);

    /* Save state */
    pstChan->enCurState = VDEC_CHAN_STATE_STOP;
    pstChan->bEndOfStrm = HI_FALSE;
    pstChan->u32EndFrmFlag = 0;
    pstChan->u32LastFrmId = -1;
    pstChan->u32LastFrmTryTimes = 0;
	pstChan->u32ValidPtsFlag = 0;
    pstChan->u8ResolutionChange = 0;
    pstChan->u32DiscontinueCount = 0;
	pstChan->s32Speed = 1024;
    pstChan->bSetEosFlag = HI_FALSE;
    if (0 != pstChan->stEOSBuffer.u32Size)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stEOSBuffer);
        pstChan->stEOSBuffer.u32Size = 0;
    }
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    HI_INFO_VDEC("Chan %d stop ret:%x\n", hHandle, s32Ret);
    return s32Ret;
}

static HI_S32 VDEC_Chan_Reset(HI_HANDLE hHandle, HI_DRV_VDEC_RESET_TYPE_E enType)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);    
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Must stop channel before reset */
    if (pstChan->enCurState != VDEC_CHAN_STATE_STOP)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d state err:%d!\n", hHandle, pstChan->enCurState);
        return HI_FAILURE;
    }

    if (HI_INVALID_HANDLE != pstChan->hStrmBuf)
    {
        s32Ret = BUFMNG_Reset(pstChan->hStrmBuf);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Chan %d strm buf reset err!\n", hHandle);
        }
    }

    /* Reset vfmw */
    if (HI_INVALID_HANDLE != pstChan->hChan)
    {
        s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_RESET_CHAN, HI_NULL);
        if (VDEC_OK != s32Ret)
        {
            HI_ERR_VDEC("Chan %d RESET_CHAN err!\n", pstChan->hChan);
        }
    }

    /* Reset end frame flag */
    pstChan->bEndOfStrm = HI_FALSE;
    pstChan->u32EndFrmFlag = 0;
    pstChan->u32LastFrmId = -1;
    pstChan->u32LastFrmTryTimes = 0;

    pstChan->u32ValidPtsFlag = 0;
    pstChan->u8ResolutionChange = 0;
    pstChan->u32DiscontinueCount = 0;
	pstChan->s32Speed = 1024;
    pstChan->bSetEosFlag = HI_FALSE;
    pstChan->bUnSupportStream = HI_FALSE;
    /* Reset pts recover channel */
    PTSREC_Reset(hHandle);

    /* Reset user data channel */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_Reset(hHandle);
#endif
        
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    HI_INFO_VDEC("Chan %d reset OK\n", hHandle);
    return HI_SUCCESS;
}

static VID_STD_E VDEC_CodecTypeUnfToFmw(HI_UNF_VCODEC_TYPE_E unfType)
{
    switch (unfType)
    {
    case HI_UNF_VCODEC_TYPE_MPEG2:
        return STD_MPEG2;
    case HI_UNF_VCODEC_TYPE_MPEG4:
        return STD_MPEG4;
    case HI_UNF_VCODEC_TYPE_AVS:
        return STD_AVS;
    case HI_UNF_VCODEC_TYPE_H263:
        return STD_H263;
    case HI_UNF_VCODEC_TYPE_VP6:
        return STD_VP6;
    case HI_UNF_VCODEC_TYPE_VP6F:
        return STD_VP6F;
    case HI_UNF_VCODEC_TYPE_VP6A:
        return STD_VP6A;
    case HI_UNF_VCODEC_TYPE_VP8:
        return STD_VP8;
    case HI_UNF_VCODEC_TYPE_SORENSON:
        return STD_SORENSON;
    case HI_UNF_VCODEC_TYPE_H264:
        return STD_H264;
    case HI_UNF_VCODEC_TYPE_REAL9:
        return STD_REAL9;
    case HI_UNF_VCODEC_TYPE_REAL8:
        return STD_REAL8;
    case HI_UNF_VCODEC_TYPE_VC1:
        return STD_VC1;
    case HI_UNF_VCODEC_TYPE_DIVX3:
        return STD_DIVX3;
    case HI_UNF_VCODEC_TYPE_MVC:
        return STD_MVC;
    case HI_UNF_VCODEC_TYPE_RAW:
        return STD_RAW;
    case HI_UNF_VCODEC_TYPE_MJPEG:
        return STD_USER;
    default:
        return STD_END_RESERVED;
    }
}

static HI_S32 VDEC_SetAttr(VDEC_CHANNEL_S *pstChan)
{
    HI_S32 s32Ret;
    VDEC_CHAN_CFG_S stVdecChanCfg;
    HI_UNF_VCODEC_ATTR_S *pstCfg = &pstChan->stCurCfg;
    HI_CHIP_TYPE_E enChipType = HI_CHIP_TYPE_HI3716CES;
    HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_V200;

    stVdecChanCfg.eVidStd = VDEC_CodecTypeUnfToFmw(pstCfg->enType);
    if (HI_UNF_VCODEC_TYPE_VC1 == pstCfg->enType)
    {
        stVdecChanCfg.StdExt.Vc1Ext.IsAdvProfile = pstCfg->unExtAttr.stVC1Attr.bAdvancedProfile;
        stVdecChanCfg.StdExt.Vc1Ext.CodecVersion = (HI_S32)(pstCfg->unExtAttr.stVC1Attr.u32CodecVersion);
    }
    else if ((HI_UNF_VCODEC_TYPE_VP6 == pstCfg->enType) || 
             (HI_UNF_VCODEC_TYPE_VP6F == pstCfg->enType) || 
             (HI_UNF_VCODEC_TYPE_VP6A == pstCfg->enType))
    {
        stVdecChanCfg.StdExt.Vp6Ext.bReversed = pstCfg->unExtAttr.stVP6Attr.bReversed;
    }

    stVdecChanCfg.s32ChanPriority = pstCfg->u32Priority;
    stVdecChanCfg.s32ChanErrThr = pstCfg->u32ErrCover;

    switch (pstCfg->enMode)
    {
    case HI_UNF_VCODEC_MODE_NORMAL:
        stVdecChanCfg.s32DecMode = IPB_MODE;
        break;
    case HI_UNF_VCODEC_MODE_IP:
        stVdecChanCfg.s32DecMode = IP_MODE;
        break;
    case HI_UNF_VCODEC_MODE_I:
        stVdecChanCfg.s32DecMode = I_MODE;
        break;
    case HI_UNF_VCODEC_MODE_DROP_INVALID_B:
        stVdecChanCfg.s32DecMode = DISCARD_B_BF_P_MODE;
        break;
    case HI_UNF_VCODEC_MODE_BUTT:
    default:
        stVdecChanCfg.s32DecMode = IPB_MODE;
        break;
    }
    
    if (HI_TRUE == pstCfg->bOrderOutput)  // normal/simple dpb mode
    {
        stVdecChanCfg.s32DecOrderOutput = pstCfg->bOrderOutput + pstCfg->s32CtrlOptions;
    }
    else  // display mode
    {
        stVdecChanCfg.s32DecOrderOutput = 0;
    }
    
    stVdecChanCfg.s32ChanStrmOFThr = (pstChan->u32DmxBufSize * 95) / 100;
    stVdecChanCfg.s32DnrTfEnable = 0;
    stVdecChanCfg.s32DnrDispOutEnable = 0;

    /* MV300 COMPRESS PATCH */
    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipVersion);
    #if 1
	if(HI_CHIP_TYPE_HI3716C == enChipType || HI_CHIP_TYPE_HI3718C == enChipType || HI_CHIP_TYPE_HI3719C == enChipType || HI_CHIP_TYPE_HI3719M_A == enChipType)
    {
         EnVcmp  = 0;
    }
	#endif
    if(1)
    {
        /* Config decode compress attr */
        stVdecChanCfg.s32VcmpEn = EnVcmp;
		
        stVdecChanCfg.s32VcmpWmStartLine = 0;
        stVdecChanCfg.s32VcmpWmEndLine = 0;
    }
    else
    {
        if (HI_UNF_VCODEC_TYPE_VP8 == pstCfg->enType)
        {
            HI_ERR_VDEC("Unsupport protocol: %d!\n", pstCfg->enType);
            return HI_FAILURE;
        }

        /* Others do not compress */
        stVdecChanCfg.s32VcmpEn = 0;
    }

//#ifdef CHIP_TYPE_hi3712
#if 1
    stVdecChanCfg.s32Btl1Dt2DEnable = pstChan->stOption.s32Btl1Dt2DEnable; 
    stVdecChanCfg.s32BtlDbdrEnable = pstChan->stOption.s32BtlDbdrEnable;
#endif

    HI_INFO_VDEC("StrmOFThr:%dK/%dK.\n", (stVdecChanCfg.s32ChanStrmOFThr / 1024), (pstChan->u32DmxBufSize / 1024));

    /* Only if pstCfg->orderOutput is 1 we do the judge */
    if (pstCfg->bOrderOutput)
    {
        if (pstCfg->bOrderOutput& HI_UNF_VCODEC_CTRL_OPTION_SIMPLE_DPB)
        {
            /* set to 2 means both bOrderoutput and SIMPLE_DPB */
            stVdecChanCfg.s32DecOrderOutput = 2;
        }
    }

    /* Set to VFMW */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_CFG_CHAN, &stVdecChanCfg);
    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("VFMW CFG_CHAN err!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_CheckCfg(VDEC_CHANNEL_S *pstChan, HI_UNF_VCODEC_ATTR_S *pstCfgParam)
{
    HI_S32 s32Level = 0;
    HI_UNF_VCODEC_ATTR_S *pstCfg = &pstChan->stCurCfg;

    if (pstCfgParam->enType >= HI_UNF_VCODEC_TYPE_BUTT)
    {
        HI_ERR_VDEC("Bad type:%d!\n", pstCfgParam->enType);
        return HI_FAILURE;
    }

    if (pstCfgParam->enMode >= HI_UNF_VCODEC_MODE_BUTT)
    {
        HI_ERR_VDEC("Bad mode:%d!\n", pstCfgParam->enMode);
        return HI_FAILURE;
    }

    if (pstCfgParam->u32ErrCover > 100)
    {
        HI_ERR_VDEC("Bad err_cover:%d!\n", pstCfgParam->u32ErrCover);
        return HI_FAILURE;
    }

    if (pstCfgParam->u32Priority > HI_UNF_VCODEC_MAX_PRIORITY)
    {
        HI_ERR_VDEC("Bad priority:%d!\n", pstCfgParam->u32Priority);
        return HI_FAILURE;
    }

    /* enVdecType can't be set dynamically */
    if (pstCfg->enType != pstCfgParam->enType)
    {
        s32Level |= 1;
    }
    else if ((HI_UNF_VCODEC_TYPE_VC1 == pstCfg->enType)
             && ((pstCfg->unExtAttr.stVC1Attr.bAdvancedProfile != pstCfgParam->unExtAttr.stVC1Attr.bAdvancedProfile)
                 || (pstCfg->unExtAttr.stVC1Attr.u32CodecVersion != pstCfgParam->unExtAttr.stVC1Attr.u32CodecVersion)))
    {
        s32Level |= 1;
    }

    /* priority can't be set dynamically */
    if (pstCfg->u32Priority != pstCfgParam->u32Priority)
    {
        s32Level |= 1;
    }

    return s32Level;
}

HI_S32 HI_DRV_VDEC_SetChanAttr(HI_HANDLE hHandle, HI_UNF_VCODEC_ATTR_S *pstCfgParam)
{
    HI_S32 s32Ret;
    HI_S32 s32Level;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    
    /* check input parameters */
    if (HI_NULL == pstCfgParam)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if ((HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan) || 
        (HI_INVALID_HANDLE == s_stVdecDrv.astChanEntity[hHandle].pstChan->hChan))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;    

    /* Check parameter */
    s32Level = VDEC_Chan_CheckCfg(pstChan, pstCfgParam);
    if (s32Level < 0)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    /* Some parameter can't be set when channel is running */
    if ((pstChan->enCurState != VDEC_CHAN_STATE_STOP) && (s32Level))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d state err:%d!\n", hHandle, pstChan->enCurState);
        return HI_FAILURE;
    }

    /* Set config */
    pstChan->stCurCfg = *pstCfgParam;
    s32Ret = VDEC_SetAttr(pstChan);
    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d SetAttr err!\n", hHandle);
        return HI_FAILURE;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    HI_INFO_VDEC("Chan %d SetAttr OK\n", hHandle);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_GetChanAttr(HI_HANDLE hHandle, HI_UNF_VCODEC_ATTR_S *pstCfgParam)
{
    HI_S32 s32Ret;
    
    /* check input parameters */
    if (HI_NULL == pstCfgParam)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }
    
    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);    
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    
    *pstCfgParam = s_stVdecDrv.astChanEntity[hHandle].pstChan->stCurCfg;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    
    HI_INFO_VDEC("Chan %d GetAttr OK\n", hHandle);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_GetChanStatusInfo(HI_HANDLE hHandle, VDEC_STATUSINFO_S* pstStatus)
{
    HI_S32 i;
    HI_U32 freeSize;
    HI_U32 busySize;
    HI_S32 s32Ret;
	HI_HANDLE hMasterPortHandle = HI_INVALID_HANDLE;
	HI_HANDLE hVirPortHandle = HI_INVALID_HANDLE;
	HI_HANDLE hPortHandle = HI_INVALID_HANDLE;
	HI_BOOL bAllPortCompleteFrm = HI_FALSE;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
	VDEC_VPSSCHANNEL_S *pstVpssChan = HI_NULL;
    VDEC_CHAN_STATE_S stChanState;
    BUFMNG_STATUS_S stStatus;
    HI_DRV_VPSS_PORT_BUFLIST_STATE_S stVpssBufListState;

    /* check input parameters */
    if (HI_NULL == pstStatus)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        //HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;
    pstVpssChan = &(s_stVdecDrv.astChanEntity[hHandle].stVpssChan);
    
    if (HI_INVALID_HANDLE != pstChan->hStrmBuf)
    {
        s32Ret = BUFMNG_GetStatus(pstChan->hStrmBuf, &stStatus);
        if (HI_SUCCESS != s32Ret)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            HI_ERR_VDEC("Chan %d get strm buf status err!\n", hHandle);
            return HI_FAILURE;
        }

        freeSize = stStatus.u32Free;
        busySize = stStatus.u32Used;
        pstStatus->u32BufferSize = pstChan->u32StrmBufSize;
        pstStatus->u32BufferUsed = busySize;
        pstStatus->u32BufferAvailable = freeSize;
    }

    pstStatus->u32StrmInBps = pstChan->stStatInfo.u32AvrgVdecInBps;
    pstStatus->u32TotalDecFrmNum = pstChan->stStatInfo.u32TotalVdecOutFrame;
    pstStatus->u32TotalErrFrmNum = pstChan->stStatInfo.u32VdecErrFrame;
    pstStatus->u32TotalErrStrmNum = pstChan->stStatInfo.u32TotalStreamErrNum;

    /* judge if reach end of stream */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_CHAN_STATE, &stChanState);
    if (VDEC_OK != s32Ret)
    {
        HI_FATAL_VDEC("Chan %d GET_CHAN_STATE err\n", pstChan->hChan);
    }

    pstStatus->u32FrameBufNum = stChanState.wait_disp_frame_num;

    /* Get frame num and stream size vfmw holded */
    pstStatus->u32VfmwFrmNum  = stChanState.decoded_1d_frame_num;
    pstStatus->u32VfmwStrmSize = stChanState.buffered_stream_size;

    pstStatus->stVfmwFrameRate.u32fpsInteger = stChanState.frame_rate/10;
    pstStatus->stVfmwFrameRate.u32fpsDecimal = stChanState.frame_rate%10*100;
    pstStatus->u32VfmwStrmNum = stChanState.buffered_stream_num;
    //pstStatus->u32VfmwTotalDispFrmNum = stChanState.total_disp_frame_num;
    pstStatus->u32FieldFlag = stChanState.is_field_flg;
    if (pstChan->bEndOfStrm)
    {
        pstStatus->bEndOfStream = HI_TRUE;
    }
    else
    {
        pstStatus->bEndOfStream = HI_FALSE;
    }
    /*get vpss status*/
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSendCommand)(pstVpssChan->hVpss,HI_DRV_VPSS_USER_COMMAND_CHECKALLDONE,&bAllPortCompleteFrm);
	if(HI_SUCCESS != s32Ret)
	{
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Vpss:%d HI_DRV_VPSS_USER_COMMAND_CHECKALLDONE error!\n", pstVpssChan->hVpss);
        return HI_FAILURE;
	}
	pstStatus->bAllPortCompleteFrm = bAllPortCompleteFrm;

    for(i=0;i<VDEC_MAX_PORT_NUM;i++)
    {
        if(VDEC_PORT_TYPE_MASTER == s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].enPortType)
        {
            hMasterPortHandle = s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].hPort;
            break;
        }
        else if(VDEC_PORT_TYPE_VIRTUAL == s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].enPortType)
        {
            hVirPortHandle = s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].hPort;
        }
    }
    if(HI_INVALID_HANDLE != hMasterPortHandle)
    {
        hPortHandle = hMasterPortHandle;
    }
    else if(HI_INVALID_HANDLE != hVirPortHandle)
    {
        hPortHandle = hVirPortHandle;
    }
    s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetPortBufListState)(hPortHandle,&stVpssBufListState);
	if(HI_SUCCESS == s32Ret)
	{
	    pstStatus->u32VfmwTotalDispFrmNum = stVpssBufListState.u32TotalBufNumber;
	}
	else
	{
	    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE; 
	}
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_GetChanStreamInfo(HI_HANDLE hHandle, HI_UNF_VCODEC_STREAMINFO_S *pstStreamInfo)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    VDEC_CHAN_STATE_S stChanState;

    /* check input parameters */
    if (HI_NULL == pstStreamInfo)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_CHAN_STATE, &stChanState);
    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("Chan %d GET_CHAN_STATE err\n", pstChan->hChan);
    }

    pstStreamInfo->enVCodecType  = pstChan->stCurCfg.enType;
    pstStreamInfo->enSubStandard = HI_UNF_VIDEO_SUB_STANDARD_UNKNOWN;
    pstStreamInfo->u32SubVersion = 0;
    pstStreamInfo->u32Profile = stChanState.profile;
    pstStreamInfo->u32Level = stChanState.level;
    pstStreamInfo->enDisplayNorm = pstChan->enDisplayNorm;
    pstStreamInfo->bProgressive = (pstChan->stLastFrm.bProgressive);
    pstStreamInfo->u32AspectWidth = pstChan->stLastFrm.u32AspectWidth;
    pstStreamInfo->u32AspectHeight = pstChan->stLastFrm.u32AspectHeight;
    pstStreamInfo->u32bps = stChanState.bit_rate;
	//pstStreamInfo->u32fpsInteger = pstChan->stLastFrm.stFrameRate.u32fpsInteger;
    //pstStreamInfo->u32fpsDecimal = pstChan->stLastFrm.stFrameRate.u32fpsDecimal;
    pstStreamInfo->u32fpsInteger = pstChan->stLastFrm.u32FrameRate/1000;
    pstStreamInfo->u32fpsDecimal = pstChan->stLastFrm.u32FrameRate%1000;
    pstStreamInfo->u32Width  = pstChan->stLastFrm.u32Width;
    pstStreamInfo->u32Height = pstChan->stLastFrm.u32Height;
    pstStreamInfo->u32DisplayWidth   = pstChan->stLastFrm.stDispRect.s32Width;
    pstStreamInfo->u32DisplayHeight  = pstChan->stLastFrm.stDispRect.s32Height;
    pstStreamInfo->u32DisplayCenterX = pstChan->stLastFrm.stDispRect.s32Width/2;
    pstStreamInfo->u32DisplayCenterY = pstChan->stLastFrm.stDispRect.s32Height/2;

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_CheckNewEvent(HI_HANDLE hHandle, VDEC_EVENT_S *pstEvent)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* check input parameters */
    if (HI_NULL == pstEvent)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }
    
    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Check norm change event */
    if (pstChan->bNormChange)
    {
        pstChan->bNormChange = HI_FALSE;
        pstEvent->bNormChange = HI_TRUE;
        pstEvent->stNormChangeParam = pstChan->stNormChangeParam;
    }
    else
    {
        pstEvent->bNormChange = HI_FALSE;
    }

    /* Check frame packing event */
    if (pstChan->bFramePackingChange)
    {
        pstChan->bFramePackingChange = HI_FALSE;
        pstEvent->bFramePackingChange = HI_TRUE;
        pstEvent->enFramePackingType = pstChan->enFramePackingType;
    }
    else
    {
        pstEvent->bFramePackingChange = HI_FALSE;
        pstEvent->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_NONE;
    }

    /* Check new frame event */
    if (pstChan->bNewFrame)
    {
        pstChan->bNewFrame = HI_FALSE;
        pstEvent->bNewFrame = HI_TRUE;
    }
    else
    {
        pstEvent->bNewFrame = HI_FALSE;
    }

    /* Check new seq event */
    if (pstChan->bNewSeq)
    {
        pstChan->bNewSeq = HI_FALSE;
        pstEvent->bNewSeq = HI_TRUE;
    }
    else
    {
        pstEvent->bNewSeq = HI_FALSE;
    }

    /* Check new user data event */
    if (pstChan->bNewUserData)
    {
        pstChan->bNewUserData = HI_FALSE;
        pstEvent->bNewUserData = HI_TRUE;
    }
    else
    {
        pstEvent->bNewUserData = HI_FALSE;
    }

    /* Check I frame err event */
    if (pstChan->bIFrameErr)
    {
        pstChan->bIFrameErr = HI_FALSE;
        pstEvent->bIFrameErr = HI_TRUE;
    }
    else
    {
        pstEvent->bIFrameErr = HI_FALSE;
    }

    if (pstChan->bFirstValidPts)
    {
        pstChan->bFirstValidPts = HI_FALSE;
        pstEvent->bFirstValidPts = HI_TRUE;
        pstEvent->u32FirstValidPts = pstChan->u32FirstValidPts;
    }

    if (pstChan->bSecondValidPts)
    {
        pstChan->bSecondValidPts = HI_FALSE;
        pstEvent->bSecondValidPts = HI_TRUE;
        pstEvent->u32SecondValidPts = pstChan->u32SecondValidPts;
    }
	
	if (pstChan->bUnSupportStream)
	{
	    pstChan->bUnSupportStream = HI_FALSE;
		pstEvent->bUnSupportStream = HI_TRUE;
		
	}
	else
	{
	   	pstEvent->bUnSupportStream = HI_FALSE;

	}

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_GetUsrData(HI_HANDLE hHandle, HI_UNF_VIDEO_USERDATA_S *pstUsrData)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* check input parameters */
    if (HI_NULL == pstUsrData)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);    
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* If pstUsrData is null, it must be none user data */
    if (HI_NULL == pstChan->pstUsrData)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d none user data!\n", hHandle);
        return HI_FAILURE;
    }

    /* Copy usrdata data */
    s32Ret = copy_to_user(pstUsrData->pu8Buffer, 
                pstChan->pstUsrData->au8Buf[pstChan->pstUsrData->u32ReadID],
                pstChan->pstUsrData->stAttr[pstChan->pstUsrData->u32ReadID].u32Length);
    if (s32Ret != 0)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d copy_to_user err!\n", hHandle);
        return HI_FAILURE;
    }

    /* copy usrdata attribute */
    memcpy(pstUsrData, 
                &pstChan->pstUsrData->stAttr[pstChan->pstUsrData->u32ReadID], 
                sizeof(HI_UNF_VIDEO_USERDATA_S));
    pstChan->pstUsrData->u32ReadID = (pstChan->pstUsrData->u32ReadID + 1) % VDEC_UDC_MAX_NUM;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_SetProgressive(HI_HANDLE hHandle, HI_BOOL pProgressive)
{
    HI_S32 s32Ret;
	HI_HANDLE hVpss;
	HI_DRV_VPSS_CFG_S stVpssCfg;
    /* check input parameters 
    if (HI_NULL == pProgressive)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }*/
    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hVpss = s_stVdecDrv.astChanEntity[hHandle].stVpssChan.hVpss;
	
   	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetVpssCfg)(hVpss,&stVpssCfg);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("vdec call Vpss %d VpssGetVpssCfg err\n", hVpss);
		return HI_FAILURE;
    }
	if(pProgressive)
	{
	    stVpssCfg.enProgInfo = HI_DRV_VPSS_PRODETECT_PROGRESSIVE;
	}
	else
	{
	    stVpssCfg.enProgInfo = HI_DRV_VPSS_PRODETECT_INTERLACE;
	}
    s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSetVpssCfg)(hVpss,&stVpssCfg);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("vdec call Vpss %d VpssSetVpssCfg err\n", hVpss);
		return HI_FAILURE;
    }
    return HI_SUCCESS;

}

HI_S32 HI_DRV_VDEC_SetTrickMode(HI_HANDLE hHandle, HI_UNF_AVPLAY_TPLAY_OPT_S* pstOpt)
{
    HI_S32 i = 0;
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    HI_S32 s32Speed;
	HI_HANDLE hVpss;
	HI_DRV_VPSS_CFG_S stVpssCfg;

    HI_BOOL bProgressive = HI_FALSE;
    /* check input parameters */
    if (HI_NULL == pstOpt)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (VDEC_CHAN_STATE_RUN != pstChan->enCurState)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d isn't runnig!\n", hHandle);
        return HI_FAILURE;
    }

    s32Speed = (pstOpt->u32SpeedInteger * 1000 + pstOpt->u32SpeedDecimal)*1024/1000;
    if (HI_UNF_AVPLAY_TPLAY_DIRECT_BACKWARD == pstOpt->enTplayDirect)
    {
        s32Speed = -s32Speed;
    }
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_TRICK_MODE, &s32Speed);
    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("VFMW Chan %d set trick mode err\n", pstChan->hChan);
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    if (s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32Speed != s32Speed)
    {
        for (i = 0; i < VDEC_MAX_PORT_NUM; i++)
        {
            s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32RecvNewFrame = HI_FALSE;
            //s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32PortTmpListPos = 0;
            s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32GetFirstVpssFrameFlag = 0;
            s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].s32PortLastFrameGopNum = -1;
			s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stPort[i].u32LastFrameIndex = -1;
        }
    }
    if(1024 == s32Speed)
    {
        hVpss = s_stVdecDrv.astChanEntity[hHandle].stVpssChan.hVpss;
   	    s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGetVpssCfg)(hVpss,&stVpssCfg);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("vdec call Vpss %d VpssGetVpssCfg err\n", hVpss);
		    return HI_FAILURE;
        }
	    stVpssCfg.enProgInfo = HI_DRV_VPSS_PRODETECT_AUTO;
        s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSetVpssCfg)(hVpss,&stVpssCfg);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("vdec call Vpss %d VpssSetVpssCfg err\n", hVpss);
		    return HI_FAILURE;
        }

    }
    pstChan->s32Speed = s32Speed;
	s_stVdecDrv.astChanEntity[hHandle].stVpssChan.s32Speed = s32Speed;
	#if 1
	if((s32Speed > 1024) && (HI_TRUE == s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stControlInfo.u32DispOptimizeFlag))
	{
	    bProgressive = HI_FALSE;
	    s32Ret = HI_DRV_VDEC_SetProgressive(hHandle, bProgressive);
        if (HI_SUCCESS != s32Ret)
		{
			HI_ERR_VDEC("VDEC %d HI_DRV_VDEC_SetProgressive err\n", pstChan->hChan);
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            return HI_FAILURE;
		}
	}
	#endif
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);    
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_SetCtrlInfo(HI_HANDLE hHandle, HI_UNF_AVPLAY_CONTROL_INFO_S* pstCtrlInfo)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    VFMW_CONTROLINFO_S stInfo;
    HI_BOOL bProgressive = HI_FALSE;
    /* check input parameters */
    if (HI_NULL == pstCtrlInfo)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (VDEC_CHAN_STATE_RUN != pstChan->enCurState)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d isn't runnig!\n", hHandle);
        return HI_FAILURE;
    }

    stInfo.u32IDRFlag = pstCtrlInfo->u32IDRFlag;
    stInfo.u32BFrmRefFlag = pstCtrlInfo->u32BFrmRefFlag;
    stInfo.u32ContinuousFlag = pstCtrlInfo->u32ContinuousFlag;
	stInfo.u32BackwardOptimizeFlag = pstCtrlInfo->u32BackwardOptimizeFlag;
	stInfo.u32DispOptimizeFlag = pstCtrlInfo->u32DispOptimizeFlag;
	s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stControlInfo.u32BackwardOptimizeFlag = pstCtrlInfo->u32BackwardOptimizeFlag;
	s_stVdecDrv.astChanEntity[hHandle].stVpssChan.stControlInfo.u32DispOptimizeFlag = pstCtrlInfo->u32DispOptimizeFlag;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_CTRL_INFO, &stInfo);
    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("VFMW Chan %d set ctrl info err\n", pstChan->hChan);
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }
    if(!pstCtrlInfo->u32DispOptimizeFlag)
    {
        bProgressive = HI_TRUE;
    }
	else
	{ 
	    bProgressive = HI_FALSE;   
	}
	
    s32Ret = HI_DRV_VDEC_SetProgressive(hHandle,bProgressive);
    if (HI_SUCCESS != s32Ret)
	{
		HI_ERR_VDEC("VDEC %d HI_DRV_VDEC_SetProgressive err\n", pstChan->hChan);
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
	} 
    
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}


static HI_S32 VDEC_IFrame_GetStrm(HI_S32 hHandle, STREAM_DATA_S * pstPacket)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstPacket)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("bad handle %d!\n", hHandle);
        return HI_FAILURE;
    }

    s32Ret = VDEC_CHAN_TRY_USE_DOWN_HELP(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (pstChan->stIFrame.u32ReadTimes >= VDEC_IFRAME_MAX_READTIMES)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    pstPacket->PhyAddr = pstChan->stIFrame.stMMZBuf.u32StartPhyAddr;
    pstPacket->VirAddr = (HI_U8*)pstChan->stIFrame.stMMZBuf.u32StartVirAddr;
    pstPacket->Length = pstChan->stIFrame.stMMZBuf.u32Size;
    pstPacket->Pts = 0;
    pstPacket->Index = 0;
    pstPacket->is_not_last_packet_flag = 0;
    pstPacket->UserTag = 0;
    pstPacket->discontinue_count = 0;
    pstPacket->is_stream_end_flag = 0;

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    pstChan->stIFrame.u32ReadTimes++;
    return HI_SUCCESS;
}

static HI_S32 VDEC_IFrame_PutStrm(HI_S32 hHandle, STREAM_DATA_S *pstPacket)
{
    return HI_SUCCESS;
}

static HI_S32 VDEC_IFrame_SetAttr(VDEC_CHANNEL_S *pstChan, HI_UNF_VCODEC_TYPE_E type)
{
    HI_S32 s32Ret;
    VDEC_CHAN_CFG_S stVdecChanCfg = {0};
    HI_CHIP_TYPE_E enChipType = HI_CHIP_TYPE_HI3716CES;
    HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_V200;

    stVdecChanCfg.eVidStd = VDEC_CodecTypeUnfToFmw(type);
    stVdecChanCfg.s32ChanPriority = 18;
    stVdecChanCfg.s32ChanErrThr = 100;
    stVdecChanCfg.s32DecMode = I_MODE;
    stVdecChanCfg.s32DecOrderOutput = 1;

//#ifdef CHIP_TYPE_hi3712
#if 1
    stVdecChanCfg.s32Btl1Dt2DEnable = pstChan->stOption.s32Btl1Dt2DEnable;
    stVdecChanCfg.s32BtlDbdrEnable = pstChan->stOption.s32BtlDbdrEnable;
#endif

    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipVersion);

    if (((HI_CHIP_TYPE_HI3716M == enChipType) && (HI_CHIP_VERSION_V300 == enChipVersion)) ||
        ((HI_CHIP_TYPE_HI3712 == enChipType) && (HI_CHIP_VERSION_V100 == enChipVersion)))
    {
        /* do nothing */
    }
    else
    {
        if (HI_UNF_VCODEC_TYPE_VP8 == type)
        {
            HI_ERR_VDEC("Unsupport protocol:%d!\n", type);
            return HI_FAILURE;
        }
    }

    /* Do not use compress in i frame decode mode*/
    stVdecChanCfg.s32VcmpEn = 0;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_CFG_CHAN, &stVdecChanCfg);
    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("VFMW CFG_CHAN err!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_IFrame_BufInit(HI_U32 u32BufSize, MMZ_BUFFER_S* pstMMZBuf)
{
#if defined (CFG_ANDROID_TOOLCHAIN)
    return HI_DRV_MMZ_AllocAndMap("VDEC_IFrame", "vdec", u32BufSize, 0, pstMMZBuf);
#else
    return HI_DRV_MMZ_AllocAndMap("VDEC_IFrame", HI_NULL, u32BufSize, 0, pstMMZBuf);
#endif
}

static HI_VOID VDEC_IFrame_BufDeInit(MMZ_BUFFER_S* pstMMZBuf)
{
    HI_DRV_MMZ_UnmapAndRelease(pstMMZBuf);
}

HI_S32 HI_DRV_VDEC_DecodeIFrame(HI_HANDLE hHandle, HI_UNF_AVPLAY_I_FRAME_S *pstStreamInfo,
                          HI_DRV_VIDEO_FRAME_S *pstFrameInfo, HI_BOOL bCapture, HI_BOOL bUserSpace)
{
    HI_S32 s32Ret, i;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    STREAM_INTF_S stSteamIntf;

#if 0
    HI_S32 s322DbufferSize;
    HI_DRV_VDEC_BTL_S stBtl;
    HI_DRV_VIDEO_FRAME_S st2dFrame;
#endif

    /*parameter check*/
    if ((HI_NULL == pstStreamInfo) || (HI_NULL == pstFrameInfo))
    {
        HI_ERR_VDEC("bad param\n");
        return HI_FAILURE;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        HI_ERR_VDEC("bad handle %d!\n", hHandle);
        return HI_FAILURE;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;
    
    if (pstChan->enCurState != VDEC_CHAN_STATE_STOP)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d state err:%d!\n", hHandle, pstChan->enCurState);
        return HI_FAILURE;
    }

    if (!VDEC_CHAN_STRMBUF_ATTACHED(pstChan))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d bad strm buf!\n", hHandle);
        return HI_FAILURE;
    }

    /* Modify the decoder's attributes */
    s32Ret = VDEC_IFrame_SetAttr(pstChan, pstStreamInfo->enType);
    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("IFrame_SetAttr err\n");
        return HI_FAILURE;
    }

    pstChan->bIsIFrameDec = HI_TRUE;

    /* Init I frame buffer */
    pstChan->stIFrame.u32ReadTimes = 0;
	/* malloc the memory to save the stream from user,unmalloc below (OUT1) until read the frame from vfmw successly */
    s32Ret = VDEC_IFrame_BufInit(pstStreamInfo->u32BufSize, &(pstChan->stIFrame.stMMZBuf));
    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Alloc IFrame buf err\n");
        goto OUT0;
    }

    if (!bUserSpace)
    {
        /*not from user space : from kernel ddr ,use memcpy is ok*/
        memcpy((HI_U8*)pstChan->stIFrame.stMMZBuf.u32StartVirAddr, 
                                pstStreamInfo->pu8Addr, pstStreamInfo->u32BufSize);
    }
    else
    {
        /*I MODE : the stream from user is one IFrame stream, copy the stream from user space , should use function : copy_from_user*/
        if (0 != copy_from_user((HI_U8*)pstChan->stIFrame.stMMZBuf.u32StartVirAddr, 
                            pstStreamInfo->pu8Addr, pstStreamInfo->u32BufSize))
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            HI_ERR_VDEC("Chan %d IFrame copy %dB %p->%p err!\n",
                            hHandle, pstStreamInfo->u32BufSize, pstStreamInfo->pu8Addr, 
                            (HI_U8*)pstChan->stIFrame.stMMZBuf.u32StartVirAddr);
            goto OUT1;
        }
        HI_INFO_VDEC("Chan %d IFrame copy %dB %p->%p success!\n",
                        hHandle, pstStreamInfo->u32BufSize, pstStreamInfo->pu8Addr, 
                        (HI_U8*)pstChan->stIFrame.stMMZBuf.u32StartVirAddr);
    }

    /* Set IFrame stream read functions */
    stSteamIntf.stream_provider_inst_id = hHandle;
    stSteamIntf.read_stream = VDEC_IFrame_GetStrm;
    stSteamIntf.release_stream = VDEC_IFrame_PutStrm;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_STREAM_INTF, &stSteamIntf);
    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d SET_STREAM_INTF err!\n", hHandle);
        goto OUT1;
    }

    /* Start decode */
    memset(&pstChan->stStatInfo, 0, sizeof(VDEC_CHAN_STATINFO_S));
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_START_CHAN, HI_NULL);
    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d START_CHAN err!\n", hHandle);
        goto OUT2;
    }
    pstChan->enCurState = VDEC_CHAN_STATE_RUN;

    /* Start PTS recover channel */
    PTSREC_Start(hHandle);

    /* Here we invoke USE_UP function to release the atomic number, so that the VFMW can decode
      by invoking the interface of get stream, the VDEC_Event_Handle function can also hHandle
      EVNT_NEW_IMAGE */
    /*CNcomment: 此处调用USE_UP释放锁 以使 VFMW 可以调用获取码流接口 进行解码
      VDEC_Event_Handle 可以处理 EVNT_NEW_IMAGE 事件 */
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    /* wait for vdec process complete */
    for (i=0; i<10; i++)
    {
        msleep(10);
    }

#if 0
    /* Waiting for decode complete */
    for (i = 0; i < 40; i++)
    {
        s32Ret = HI_FAILURE;
        msleep(5);
        s32Ret = HI_DRV_VDEC_RecvFrmBuf(hHandle, pstFrameInfo);
        if (HI_SUCCESS == s32Ret)
        {
            /* Elude 4+64 EVNT_RESOLUTION_CHANGE event 
             * In this case, HI_DRV_VDEC_RecvFrmBuf will return HI_SUCCESS but give an invalid frame,
             * only send the flag.
             */
            if (0 != pstFrameInfo->u32Width)
            {
                break;
            }
        }
    }

    if (i >= 40)
    {
        HI_ERR_VDEC("IFrame decode timeout\n");
        goto OUT3;
    }
    /*OSD just need 1D data ,vdec malloc the memory to save the 1D data from vfmw and release it, user use IFrameRelease to release the memory malloc by vdec*/
    if ((bCapture) && (0 == pstChan->stOption.s32Btl1Dt2DEnable))
    {
        s322DbufferSize = pstFrameInfo->u32Width * pstFrameInfo->u32Height * 3;
#if defined (CFG_ANDROID_TOOLCHAIN)
        s32Ret = HI_DRV_MMZ_AllocAndMap("VDEC_IFrame_2d", "vdec", s322DbufferSize, 0, &pstChan->stIFrame.st2dBuf);
#else
        s32Ret = HI_DRV_MMZ_AllocAndMap("VDEC_IFrame_2d", HI_NULL, s322DbufferSize, 0, &pstChan->stIFrame.st2dBuf);
#endif
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Alloc 2d buffer fail:%d.\n", s322DbufferSize);
            goto OUT4;
        }

        stBtl.u32PhyAddr = pstChan->stIFrame.st2dBuf.u32StartPhyAddr;
        stBtl.u32Size = s322DbufferSize;
        stBtl.u32TimeOutMs = 1000;
        stBtl.pstInFrame = pstFrameInfo;
        stBtl.pstOutFrame = &st2dFrame;
        s32Ret = HI_DRV_VDEC_BlockToLine(hHandle, &stBtl);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("BTL fail.\n");
            HI_DRV_MMZ_UnmapAndRelease(&pstChan->stIFrame.st2dBuf);
            pstChan->stIFrame.st2dBuf.u32Size = 0;
            goto OUT4;
        }

        st2dFrame.stDispRect.s32Width = pstFrameInfo->stDispRect.s32Width;
        st2dFrame.stDispRect.s32Height = pstFrameInfo->stDispRect.s32Height;
        st2dFrame.stDispRect.s32X = pstFrameInfo->stDispRect.s32X;
        st2dFrame.stDispRect.s32Y = pstFrameInfo->stDispRect.s32Y;

OUT4:
        /* For capture, release vfmw frame here. For VO, release in vo */
        HI_DRV_VDEC_RlsFrmBuf(hHandle, pstFrameInfo);
        *pstFrameInfo = st2dFrame;
    }
    
OUT3:
#endif
    /* Stop channel */
    PTSREC_Stop(hHandle);
    (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_STOP_CHAN, HI_NULL);
    pstChan->enCurState = VDEC_CHAN_STATE_STOP;

OUT2:
    /* Resume stream interface */
    (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_STREAM_INTF, &pstChan->stStrmIntf);
    
OUT1:
    /* Free MMZ buffer */
    VDEC_IFrame_BufDeInit(&(pstChan->stIFrame.stMMZBuf));
    pstChan->stIFrame.u32ReadTimes = 0;
    
OUT0:
    /* Resume channel attribute */
    VDEC_SetAttr(pstChan);

    pstChan->bIsIFrameDec = HI_FALSE;
    
    return s32Ret;
}

HI_S32 HI_DRV_VDEC_ReleaseIFrame(HI_HANDLE hHandle, HI_DRV_VIDEO_FRAME_S *pstFrameInfo)
{    
    HI_S32 s32Ret = HI_SUCCESS;
   // VDEC_CHANNEL_S *pstChan = HI_NULL;

    return s32Ret;
    #if 0
    if (HI_NULL == pstFrameInfo)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;
    
    if (0 != pstChan->stIFrame.st2dBuf.u32Size)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stIFrame.st2dBuf);
        pstChan->stIFrame.st2dBuf.u32Size = 0;
    }
    
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
	#endif
}

HI_S32 VDEC_Ioctl(struct inode *inode, struct file  *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    /* Check parameter in this switch */
    switch (cmd)
    {
        
        case UMAPC_VDEC_GETCAP:
        case UMAPC_VDEC_ALLOCHANDLE:
        case UMAPC_VDEC_CREATE_ESBUF:
        case UMAPC_VDEC_DESTROY_ESBUF:
        case UMAPC_VDEC_GETBUF:
        case UMAPC_VDEC_PUTBUF:
        case UMAPC_VDEC_SETUSERADDR:
        case UMAPC_VDEC_RCVBUF:
        case UMAPC_VDEC_RLSBUF:
        case UMAPC_VDEC_RESET_ESBUF:
        case UMAPC_VDEC_GET_ESBUF_STATUS:
            if (HI_NULL == arg)
            {
                HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID*)cmd);
                return HI_ERR_VDEC_INVALID_PARA;
            }
            break;

        case UMAPC_VDEC_FREEHANDLE:
        case UMAPC_VDEC_CHAN_ALLOC:
        case UMAPC_VDEC_CHAN_FREE:
        case UMAPC_VDEC_CHAN_START:
        case UMAPC_VDEC_CHAN_STOP:
        case UMAPC_VDEC_CHAN_RESET:
        case UMAPC_VDEC_CHAN_SETATTR:
        case UMAPC_VDEC_CHAN_GETATTR:
        case UMAPC_VDEC_CHAN_ATTACHBUF:
        case UMAPC_VDEC_CHAN_DETACHBUF:
        case UMAPC_VDEC_CHAN_SETEOSFLAG:
        case UMAPC_VDEC_CHAN_DISCARDFRM:
        case UMAPC_VDEC_CHAN_USRDATA:
        case UMAPC_VDEC_CHAN_STATUSINFO:
        case UMAPC_VDEC_CHAN_STREAMINFO:
        case UMAPC_VDEC_CHAN_CHECKEVT:
        case UMAPC_VDEC_CHAN_EVNET_NEWFRAME:
        case UMAPC_VDEC_CHAN_IFRMDECODE:
        case UMAPC_VDEC_CHAN_IFRMRELEASE:
        case UMAPC_VDEC_CHAN_SETFRMRATE:
        case UMAPC_VDEC_CHAN_GETFRMRATE:
        case UMAPC_VDEC_CHAN_GETFRM:
        case UMAPC_VDEC_CHAN_PUTFRM:
        case UMAPC_VDEC_CHAN_RLSFRM:
        case UMAPC_VDEC_CHAN_RCVFRM:
        case UMAPC_VDEC_CHAN_SETTRICKMODE:
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
        case UMAPC_VDEC_CHAN_USERDATAINITBUF:
        case UMAPC_VDEC_CHAN_USERDATASETBUFADDR:
        case UMAPC_VDEC_CHAN_ACQUSERDATA:
        case UMAPC_VDEC_CHAN_RLSUSERDATA:
#endif
        case UMAPC_VDEC_CHAN_SETCTRLINFO:
        case UMAPC_VDEC_CHAN_GETFRMSTATUSINFO:
		case UMAPC_VDEC_CHAN_SENDEOS:
		case UMAPC_VDEC_CHAN_GETPORTSTATE:
        case UMAPC_VDEC_CHAN_PROGRSSIVE:
            if (HI_NULL == arg)
            {
                HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID*)cmd);
                return HI_ERR_VDEC_INVALID_PARA;
            }
            hHandle = (*((HI_HANDLE*)arg)) & 0xff;            
            if (hHandle >= HI_VDEC_MAX_INSTANCE_NEW)
            {
                HI_ERR_VDEC("CMD %p bad handle:%d!\n", (HI_VOID*)cmd, hHandle);
                return HI_ERR_VDEC_INVALID_PARA;
            }
            break;
		case UMAPC_VDEC_CHAN_CREATEVPSS:
		case UMAPC_VDEC_CHAN_DESTORYVPSS:
            if (HI_NULL == arg)
            {
                HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID*)cmd);
                return HI_ERR_VDEC_INVALID_PARA;
            }
            hHandle = (*((HI_HANDLE*)arg)) & 0xff;
            break;
		//add by l00225186
        /*调用vpss接口的时候，使用的是vpss的句柄，因此需要将句柄参数传递过来，并提取*/
		case UMAPC_VDEC_CHAN_GETPORTPARAM:
		case UMAPC_VDEC_CHAN_RCVVPSSFRM:
		case UMAPC_VDEC_CHAN_CREATEPORT:
		case UMAPC_VDEC_CHAN_DESTROYPORT:
		case UMAPC_VDEC_CHAN_ENABLEPORT:
		case UMAPC_VDEC_CHAN_DISABLEPORT:
		case UMAPC_VDEC_CHAN_SETPORTTYPE:
		case UMAPC_VDEC_CHAN_CANCLEMAINPORT:
		case UMAPC_VDEC_CHAN_SETFRMPACKTYPE:
		case UMAPC_VDEC_CHAN_GETFRMPACKTYPE:
		case UMAPC_VDEC_CHAN_RESETVPSS:
		case UMAPC_VDEC_CHAN_SETPORTATTR:
		case UMAPC_VDEC_CHAN_GETPORTATTR:
		case UMAPC_VDEC_CHAN_RLSPORTFRM:
			if (HI_NULL == arg)
            {
                HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID*)cmd);
                return HI_ERR_VDEC_INVALID_PARA;
            }
            hHandle = *((HI_HANDLE*)arg);//vpss的句柄是什么生成规则未知，不做判断
			break;
        default:
            HI_ERR_VDEC("CMD %p unsupport now!\n", (HI_VOID*)cmd);
            return HI_ERR_VDEC_NOT_SUPPORT;

    }

    /* Call function in this switch */
    switch (cmd)
    {
    case UMAPC_VDEC_CHAN_USRDATA:
    {
        s32Ret = HI_DRV_VDEC_GetUsrData(hHandle, &(((VDEC_CMD_USERDATA_S*)arg)->stUserData));
        break;
    }
    
    case UMAPC_VDEC_CHAN_IFRMDECODE:
    {
        VDEC_CMD_IFRAME_DEC_S *pstIFrameDec = (VDEC_CMD_IFRAME_DEC_S*)arg;
        s32Ret  = HI_DRV_VDEC_DecodeIFrame((pstIFrameDec->hHandle)&0xff, &pstIFrameDec->stIFrame, 
            &(pstIFrameDec->stVoFrameInfo), pstIFrameDec->bCapture, HI_TRUE);
        s32Ret |= VDEC_Chan_Reset((pstIFrameDec->hHandle)&0xff, VDEC_RESET_TYPE_ALL);
        break;
    }

    case UMAPC_VDEC_CHAN_IFRMRELEASE:
    {
        s32Ret = HI_DRV_VDEC_ReleaseIFrame(hHandle, &(((VDEC_CMD_IFRAME_RLS_S*)arg)->stVoFrameInfo));
        break;
    }
    
    case UMAPC_VDEC_CHAN_ALLOC:
    {
        s32Ret = VDEC_Chan_Alloc(hHandle, &(((VDEC_CMD_ALLOC_S*)arg)->stOpenOpt));
        *((HI_HANDLE*)arg) = hHandle;
        break;
    }
    case UMAPC_VDEC_CHAN_FREE:
    {
        s32Ret = VDEC_Chan_Free(hHandle);
        break;
    }
    case UMAPC_VDEC_CHAN_START:
    {
        s32Ret = HI_DRV_VDEC_ChanStart(hHandle);
        break;
    }
    case UMAPC_VDEC_CHAN_STOP:
    {
        s32Ret = HI_DRV_VDEC_ChanStop(hHandle);
        break;
    }
    case UMAPC_VDEC_CHAN_RESET:
    {
        s32Ret = VDEC_Chan_Reset(hHandle, ((VDEC_CMD_RESET_S*)arg)->enType);
        break;
    }
    case UMAPC_VDEC_CHAN_SETATTR:
    {
        s32Ret = HI_DRV_VDEC_SetChanAttr(hHandle, &(((VDEC_CMD_ATTR_S*)arg)->stAttr));
        break;
    }
    case UMAPC_VDEC_CHAN_GETATTR:
    {
        s32Ret = HI_DRV_VDEC_GetChanAttr(hHandle, &(((VDEC_CMD_ATTR_S*)arg)->stAttr));
        break;
    }
    case UMAPC_VDEC_CREATE_ESBUF:
    {
        s32Ret = VDEC_CreateStrmBuf((HI_DRV_VDEC_STREAM_BUF_S *)arg);
        break;
    }
    case UMAPC_VDEC_DESTROY_ESBUF:
    {
        s32Ret = VDEC_DestroyStrmBuf(*((HI_HANDLE*)arg));
        break;
    }
    case UMAPC_VDEC_GETBUF:
    {
        VDEC_CMD_BUF_S *pstBuf = (VDEC_CMD_BUF_S*)arg;
        s32Ret = VDEC_GetStrmBuf(pstBuf->hHandle, &(pstBuf->stBuf), HI_TRUE);
        break;
    }
    case UMAPC_VDEC_PUTBUF:
    {
        VDEC_CMD_BUF_S *pstBuf = (VDEC_CMD_BUF_S*)arg;
        s32Ret = VDEC_PutStrmBuf(pstBuf->hHandle, &(pstBuf->stBuf), HI_TRUE);
        break;
    }
    case UMAPC_VDEC_SETUSERADDR:
    {
        VDEC_CMD_BUF_USERADDR_S* pstUserAddr = (VDEC_CMD_BUF_USERADDR_S*)arg;
        s32Ret = VDEC_StrmBuf_SetUserAddr(pstUserAddr->hHandle, pstUserAddr->u32UserAddr);
        break;
    }
    case UMAPC_VDEC_RCVBUF:
    {
        BUFMNG_BUF_S stEsBuf;
        VDEC_CMD_BUF_S *pstBuf = (VDEC_CMD_BUF_S*)arg;

        s32Ret = BUFMNG_AcqReadBuffer(pstBuf->hHandle, &stEsBuf);
        if (HI_SUCCESS == s32Ret)
        {
            pstBuf->stBuf.pu8Addr = stEsBuf.pu8UsrVirAddr;
            pstBuf->stBuf.u32BufSize = stEsBuf.u32Size;
            pstBuf->stBuf.u64Pts = stEsBuf.u64Pts;
            pstBuf->stBuf.bEndOfFrame = !(stEsBuf.u32Marker & BUFMNG_NOT_END_FRAME_BIT);
            pstBuf->stBuf.bDiscontinuous = (stEsBuf.u32Marker & BUFMNG_DISCONTINUOUS_BIT) ? 1 : 0;
        }
        break;
    }
    case UMAPC_VDEC_RLSBUF:
    {
        BUFMNG_BUF_S stEsBuf;
        VDEC_CMD_BUF_S *pstBuf = (VDEC_CMD_BUF_S*)arg;

        stEsBuf.u32PhyAddr = 0;
        stEsBuf.pu8UsrVirAddr = pstBuf->stBuf.pu8Addr;
        stEsBuf.pu8KnlVirAddr = HI_NULL;
        stEsBuf.u32Size = pstBuf->stBuf.u32BufSize;
        stEsBuf.u64Pts = pstBuf->stBuf.u64Pts;
        /* Don't care stEsBuf.u32Marker here. */
        s32Ret = BUFMNG_RlsReadBuffer(pstBuf->hHandle, &stEsBuf);
        break;
    }
    case UMAPC_VDEC_RESET_ESBUF:
    {
        s32Ret = BUFMNG_Reset((*((HI_HANDLE*)arg)));
        break;
    }
    case UMAPC_VDEC_GET_ESBUF_STATUS:
    {
        BUFMNG_STATUS_S stBMStatus;
        VDEC_CMD_BUF_STATUS_S* pstStatus = (VDEC_CMD_BUF_STATUS_S*)arg;
        s32Ret = BUFMNG_GetStatus(pstStatus->hHandle, &stBMStatus);
        if (HI_SUCCESS == s32Ret)
        {
            pstStatus->stStatus.u32Size = stBMStatus.u32Used + stBMStatus.u32Free;
            pstStatus->stStatus.u32Available = stBMStatus.u32Free;
            pstStatus->stStatus.u32Used = stBMStatus.u32Used;
		    pstStatus->stStatus.u32DataNum = stBMStatus.u32DataNum;
        }
        break;
    }
    case UMAPC_VDEC_CHAN_RLSFRM:
    {
        s32Ret = HI_DRV_VDEC_RlsFrmBuf(hHandle, &(((VDEC_CMD_VO_FRAME_S*)arg)->stFrame));
        break;
    }
    case UMAPC_VDEC_CHAN_RCVFRM:
    {
        s32Ret = HI_DRV_VDEC_RecvFrmBuf(hHandle, &(((VDEC_CMD_VO_FRAME_S*)arg)->stFrame));
        break;
    }
    case UMAPC_VDEC_CHAN_STATUSINFO:
    {
        s32Ret = HI_DRV_VDEC_GetChanStatusInfo(hHandle, &(((VDEC_CMD_STATUS_S*)arg)->stStatus));
        break;
    }
    case UMAPC_VDEC_CHAN_STREAMINFO:
    {
        s32Ret = HI_DRV_VDEC_GetChanStreamInfo(hHandle, &(((VDEC_CMD_STREAM_INFO_S*)arg)->stInfo));
        break;
    }
    case UMAPC_VDEC_CHAN_ATTACHBUF:
    {
        VDEC_CMD_ATTACH_BUF_S stParam = *((VDEC_CMD_ATTACH_BUF_S*)arg);

        s32Ret = VDEC_Chan_AttachStrmBuf(hHandle, stParam.u32BufSize, stParam.hDmxVidChn, stParam.hStrmBuf);
        break;
    }
    case UMAPC_VDEC_CHAN_DETACHBUF:
    {
        s32Ret = VDEC_Chan_DetachStrmBuf(hHandle);
        break;
    }
    case UMAPC_VDEC_CHAN_SETEOSFLAG:
    {
        s32Ret = HI_DRV_VDEC_SetEosFlag(hHandle);
        break;
    }
    case UMAPC_VDEC_CHAN_DISCARDFRM:
    {
        s32Ret = HI_DRV_VDEC_DiscardFrm(hHandle, &(((VDEC_CMD_DISCARD_FRAME_S*)arg)->stDiscardOpt));
        break;
    }
    case UMAPC_VDEC_CHAN_CHECKEVT:
    {
        s32Ret = HI_DRV_VDEC_CheckNewEvent(hHandle, &(((VDEC_CMD_EVENT_S*)arg)->stEvent));
        break;
    }
    case UMAPC_VDEC_CHAN_EVNET_NEWFRAME:
    {
        VDEC_CMD_FRAME_S* pstFrameCmd = (VDEC_CMD_FRAME_S*)arg;
        pstFrameCmd->stFrame = s_stVdecDrv.astChanEntity[pstFrameCmd->hHandle&0xff].pstChan->stLastFrm;
        s32Ret = HI_SUCCESS;
        break;
    }
    case UMAPC_VDEC_CHAN_GETFRM:
    {
        s32Ret = HI_DRV_VDEC_GetFrmBuf(hHandle, &(((VDEC_CMD_GET_FRAME_S*)arg)->stFrame));
        break;
    }
    case UMAPC_VDEC_CHAN_PUTFRM:
    {
        s32Ret = HI_DRV_VDEC_PutFrmBuf(hHandle, &(((VDEC_CMD_PUT_FRAME_S*)arg)->stFrame));
        break;
    }

    case UMAPC_VDEC_CHAN_SETFRMRATE:
    {
        HI_UNF_AVPLAY_FRMRATE_PARAM_S *pstParam = &(((VDEC_CMD_FRAME_RATE_S*)arg)->stFrameRate);
        if (HI_NULL != s_stVdecDrv.astChanEntity[hHandle].pstChan)
        {
            s_stVdecDrv.astChanEntity[hHandle].pstChan->stFrameRateParam = *pstParam;
            s32Ret = PTSREC_SetFrmRate(hHandle, pstParam);
        }
        else
        {
            s32Ret = HI_FAILURE;
        }
        break;
    }

    case UMAPC_VDEC_CHAN_GETFRMRATE:
    {
        HI_UNF_AVPLAY_FRMRATE_PARAM_S *pstParam = &(((VDEC_CMD_FRAME_RATE_S*)arg)->stFrameRate);
        if (HI_NULL != s_stVdecDrv.astChanEntity[hHandle].pstChan)
        {
            *pstParam = s_stVdecDrv.astChanEntity[hHandle].pstChan->stFrameRateParam;
            s32Ret = HI_SUCCESS;
        }
        else
        {
            s32Ret = HI_FAILURE;
        }
        break;
    }

#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    case UMAPC_VDEC_CHAN_USERDATAINITBUF:
    {
        s32Ret = USRDATA_Alloc(hHandle, &(((VDEC_CMD_USERDATABUF_S*)arg)->stBuf));
        break;
    }

    case UMAPC_VDEC_CHAN_USERDATASETBUFADDR:
    {
        s32Ret = USRDATA_SetUserAddr(hHandle, ((VDEC_CMD_BUF_USERADDR_S*)arg)->u32UserAddr);
        break;
    }

    case UMAPC_VDEC_CHAN_ACQUSERDATA:
    {
        s32Ret = USRDATA_Acq(hHandle, &(((VDEC_CMD_USERDATA_ACQMODE_S*)arg)->stUserData), 
                                        &(((VDEC_CMD_USERDATA_ACQMODE_S*)arg)->enType));
        break;
    }

    case UMAPC_VDEC_CHAN_RLSUSERDATA:
    {
        s32Ret = USRDATA_Rls(hHandle, &(((VDEC_CMD_USERDATA_S*)arg)->stUserData));
        break;
    }
#endif

    case UMAPC_VDEC_GETCAP:
    {
        s32Ret = VDEC_GetCap((VDEC_CAP_S*)arg);
        break;
    }

    case UMAPC_VDEC_ALLOCHANDLE:
    {
        s32Ret = VDEC_Chan_AllocHandle((HI_HANDLE*)arg, filp);
        break;
    }

    case UMAPC_VDEC_FREEHANDLE:
    {
        s32Ret = VDEC_Chan_FreeHandle(hHandle);
        break;
    }
	
	case UMAPC_VDEC_CHAN_SETTRICKMODE:
    {
        s32Ret = HI_DRV_VDEC_SetTrickMode(hHandle, &(((VDEC_CMD_TRICKMODE_OPT_S*)arg)->stTPlayOpt));
        break;
    }

    case UMAPC_VDEC_CHAN_SETCTRLINFO:
    {
        s32Ret = HI_DRV_VDEC_SetCtrlInfo(hHandle, &(((VDEC_CMD_SET_CTRL_INFO_S*)arg)->stCtrlInfo));
        break;
    }
	case UMAPC_VDEC_CHAN_PROGRSSIVE:
	{
		s32Ret = HI_DRV_VDEC_SetProgressive(hHandle,((VDEC_CMD_SET_PROGRESSIVE_S*)arg)->bProgressive);
		break;
	}

    //add by l00225186
    case UMAPC_VDEC_CHAN_RCVVPSSFRM:
	{
		//hHandle表示vpss的handle
		HI_HANDLE hVdec = HI_INVALID_HANDLE;
        VDEC_CMD_VPSS_FRAME_S *pstVpssFrmTmp = (VDEC_CMD_VPSS_FRAME_S*)arg;
        
		s32Ret = VDEC_FindVdecHandleByVpssHandle(hHandle, &hVdec);
		if(HI_SUCCESS == s32Ret)
		{
		    if(s_stVdecDrv.astChanEntity[hVdec].stVpssChan.s32Speed < 0)
		    {
		        s32Ret = VDEC_Chan_RecvVdecPortListFrame(hVdec, &(pstVpssFrmTmp->stFrame));
		    }
		    else
		    {
		        s32Ret = VDEC_Chan_RecvVpssFrmBuf(hHandle, &(pstVpssFrmTmp->stFrame));
		    }
		}
        break;
	}
	case UMAPC_VDEC_CHAN_RLSPORTFRM:
		s32Ret = VDEC_Chan_VORlsFrame(hHandle,((VDEC_CMD_VPSS_FRAME_S*)arg)->pVideoFrame);
		if(HI_SUCCESS != s32Ret)
		{
		    HI_ERR_VDEC("VDEC release port %d frame ERR:%x!\n",s32Ret);
		}
		break;
    case UMAPC_VDEC_CHAN_CREATEVPSS:
    {
        HI_U32 hOuthandle = HI_INVALID_HANDLE;
        s32Ret = VDEC_Chan_CreateVpss(hHandle,&hOuthandle);
        if (s32Ret == HI_SUCCESS)
        {
            *((HI_HANDLE*)arg) = hOuthandle;//将vpss的句柄返回，供用户态代码中使用
        }
        break;
    }
	case UMAPC_VDEC_CHAN_DESTORYVPSS:
	{
		s32Ret = VDEC_Chan_DestroyVpss(hHandle);
		break;
	}
	case UMAPC_VDEC_CHAN_CREATEPORT:
	{
		s32Ret = VDEC_Chan_CreatePort(hHandle,&((VDEC_CMD_VPSS_FRAME_S*)arg)->hPort, ((VDEC_CMD_VPSS_FRAME_S*)arg)->ePortAbility);
        break;
	}
	case UMAPC_VDEC_CHAN_DESTROYPORT:
	{
		s32Ret = VDEC_Chan_DestroyPort(hHandle,((VDEC_CMD_VPSS_FRAME_S*)arg)->hPort);
        break;
	}
	case UMAPC_VDEC_CHAN_ENABLEPORT:
	{
		s32Ret = VDEC_Chan_EnablePort(hHandle,((VDEC_CMD_VPSS_FRAME_S*)arg)->hPort);
        break;
	}
	case UMAPC_VDEC_CHAN_DISABLEPORT:
	{
		s32Ret = VDEC_Chan_DisablePort(hHandle,((VDEC_CMD_VPSS_FRAME_S*)arg)->hPort);
        break;
	}
	case UMAPC_VDEC_CHAN_SETPORTTYPE:
	{
	    s32Ret = VDEC_Chan_SetPortType(hHandle,((VDEC_CMD_VPSS_FRAME_S*)arg)->hPort,((VDEC_CMD_VPSS_FRAME_S*)arg)->enPortType);
        break;
	}
	case UMAPC_VDEC_CHAN_CANCLEMAINPORT:
	{
        break;
	}
	case UMAPC_VDEC_CHAN_SETFRMPACKTYPE:
	{
		s32Ret = VDEC_Chan_SetFrmPackingType(hHandle,((VDEC_CMD_VPSS_FRAME_S*)arg)->eFramePackType);
		break;
	}
	case UMAPC_VDEC_CHAN_GETFRMPACKTYPE:
	{
	    s32Ret = VDEC_Chan_GetFrmPackingType(hHandle,&((VDEC_CMD_VPSS_FRAME_S*)arg)->eFramePackType);
		break;

	}
	case UMAPC_VDEC_CHAN_GETPORTPARAM:
	{
		s32Ret = VDEC_Chan_GetPortParam(hHandle,((VDEC_CMD_VPSS_FRAME_S*)arg)->hPort,&((VDEC_CMD_VPSS_FRAME_S*)arg)->stPortParam);
        break;
	}
	case UMAPC_VDEC_CHAN_RESETVPSS:
	{
		s32Ret = VDEC_Chan_ResetVpss(hHandle);
		break;
	}
	case UMAPC_VDEC_CHAN_SENDEOS:
	{
	    s32Ret = VDEC_Chan_SendEos(hHandle);
		break;
	}
	case UMAPC_VDEC_CHAN_GETPORTSTATE:
	{
		s32Ret = VDEC_Chan_GetPortState(hHandle,&((VDEC_CMD_VPSS_FRAME_S*)arg)->bAllPortComplete);
		break;
	}
	case UMAPC_VDEC_CHAN_GETFRMSTATUSINFO:
	{
		s32Ret = VDEC_Chan_GetFrmStatusInfo(hHandle,((VDEC_CMD_VPSS_FRAME_S*)arg)->hPort,&((VDEC_CMD_VPSS_FRAME_S*)arg)->stVdecFrmStatusInfo);
        break;
	}
	case UMAPC_VDEC_CHAN_SETPORTATTR:
	{
	    s32Ret = VDEC_Chan_SetVpssAttr(hHandle, ((VDEC_CMD_VPSS_FRAME_S*)arg)->hPort, &((VDEC_CMD_VPSS_FRAME_S*)arg)->stPortCfg);
        break;
	}
	case UMAPC_VDEC_CHAN_GETPORTATTR:
	{
	    s32Ret = VDEC_Chan_GetVpssAttr(hHandle, ((VDEC_CMD_VPSS_FRAME_S*)arg)->hPort, &((VDEC_CMD_VPSS_FRAME_S*)arg)->stPortCfg);
        break;
	}
	default:
        s32Ret = HI_FAILURE;
        break;
    }

    return s32Ret;
}
#if 0
/* Vdec static functions */
static irqreturn_t VDEC_IntVdmProc(HI_S32 irq, HI_VOID *dev_id)
{
#ifndef VDM_BUSY_WAITTING
    /*VDM ISR*/
    (s_stVdecDrv.pVfmwFunc->pfnVfmwVdmIntServProc) (0);
#endif

    return IRQ_HANDLED;
}
#endif
static HI_S32 VDEC_RegChanProc(HI_S32 s32Num)
{
    HI_CHAR aszBuf[16];
    DRV_PROC_ITEM_S *pstItem;

    /* Check parameters */
    if (HI_NULL == s_stVdecDrv.pstProcParam)
    {
        return HI_FAILURE;
    }

    /* Create proc */
	if (-1 == s32Num)
	{
        snprintf(aszBuf, sizeof(aszBuf), "vdec_ctrl");
	}
	else
	{
        snprintf(aszBuf, sizeof(aszBuf), "vdec%02d", s32Num);
	}
    pstItem = HI_DRV_PROC_AddModule(aszBuf, HI_NULL, HI_NULL);
    if (!pstItem)
    {
        HI_FATAL_VDEC("Create vdec proc entry fail!\n");
        return HI_FAILURE;
    }

    /* Set functions */
	if (-1 == s32Num)
	{
        pstItem->read  = s_stVdecDrv.pstProcParam->pfnCtrlReadProc;
        pstItem->write = s_stVdecDrv.pstProcParam->pfnCtrlWriteProc;
	}
	else
	{
        pstItem->read  = s_stVdecDrv.pstProcParam->pfnReadProc;
        pstItem->write = s_stVdecDrv.pstProcParam->pfnWriteProc;
	}

    HI_INFO_VDEC("Create proc entry for vdec%d OK!\n", s32Num);
    return HI_SUCCESS;
}

static HI_VOID VDEC_UnRegChanProc(HI_S32 s32Num)
{
    HI_CHAR aszBuf[16];

	if (-1 == s32Num)
	{
        snprintf(aszBuf, sizeof(aszBuf), "vdec_ctrl");
	}
	else
	{
        snprintf(aszBuf, sizeof(aszBuf), "vdec%02d", s32Num);
	}
    HI_DRV_PROC_RemoveModule(aszBuf);

    return;
}

static HI_VOID VDEC_TimerFunc(HI_LENGTH_T value)
{
    HI_HANDLE hHandle;
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    VDEC_CHAN_STATINFO_S *pstStatInfo = HI_NULL;

    s_stVdecDrv.stTimer.expires  = jiffies + (HZ);
    s_stVdecDrv.stTimer.function = VDEC_TimerFunc;

    for (hHandle = 0; hHandle < HI_VDEC_MAX_INSTANCE_NEW; hHandle++)
    {
        /* Lock */
        VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
        if (HI_SUCCESS != s32Ret)
        {
            continue;
        }

        /* Check and get pstChan pointer */
        if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            continue;
        }
        pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;
        
        if (pstChan->enCurState != VDEC_CHAN_STATE_RUN)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            continue;
        }

        pstStatInfo = &pstChan->stStatInfo;
        pstStatInfo->u32TotalVdecTime++;
        pstStatInfo->u32CalcBpsVdecTime++;
        pstStatInfo->u32AvrgVdecFpsLittle = (HI_U32)((pstStatInfo->u32TotalVdecOutFrame
                                                      * 100) / pstStatInfo->u32TotalVdecTime);

        pstStatInfo->u32AvrgVdecFps = (HI_U32)(pstStatInfo->u32TotalVdecOutFrame / pstStatInfo->u32TotalVdecTime);
        pstStatInfo->u32AvrgVdecFpsLittle -= (pstStatInfo->u32AvrgVdecFps * 100);
        pstStatInfo->u32AvrgVdecInBps = (HI_U32)(pstStatInfo->u32TotalVdecInByte / pstStatInfo->u32CalcBpsVdecTime * 8);
        //pstStatInfo->u32AvrgVdecInBps = (HI_U32)(pstStatInfo->u32TotalVdecInByte / 1024);
		//pstStatInfo->u32TotalVdecInByte = 0;
        if (pstStatInfo->u32TotalVdecInByte > 0xFEFFFFFFUL)
        {
            pstStatInfo->u32TotalVdecInByte = 0;
            pstStatInfo->u32CalcBpsVdecTime = 0;
        }

        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    }

    add_timer(&s_stVdecDrv.stTimer);
    return;
}
HI_S32 VDEC_VPSS_Init(HI_VOID)
{
	//HI_U32 i,j;
	HI_S32 s32Ret;
	/*init vpss*/
	/*CNcomment:对vpss初始化*/
	s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssGlobalInit)();
	return s32Ret;
}

static HI_S32 VDEC_OpenDev(HI_VOID)
{
    HI_U32 i;
    HI_S32 s32Ret;
    VDEC_OPERATION_S stOpt;

    /* Init global parameter */
    HI_INIT_MUTEX(&s_stVdecDrv.stSem);
    init_timer(&s_stVdecDrv.stTimer);

    for (i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
        atomic_set(&s_stVdecDrv.astChanEntity[i].atmUseCnt, 0);
        atomic_set(&s_stVdecDrv.astChanEntity[i].atmRlsFlag, 0);
        init_waitqueue_head(&s_stVdecDrv.astChanEntity[i].stRlsQue);
        s_stVdecDrv.astChanEntity[i].stVpssChan.hVdec = HI_INVALID_HANDLE;
        s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss = HI_INVALID_HANDLE;
    }

    /* Init buffer manager */
    s32Ret = BUFMNG_Init();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("BUFMNG_Init err!\n");
        goto err0;
    }


    /* Init vfmw */
    stOpt.VdecCallback = VDEC_EventHandle;
    stOpt.mem_malloc = HI_NULL;
    stOpt.mem_free = HI_NULL;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwInitWithOperation)(&stOpt);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Init vfmw err:%d!\n", s32Ret);
        goto err1;
    }

    /* Get vfmw capabilite */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(HI_INVALID_HANDLE, VDEC_CID_GET_CAPABILITY, &s_stVdecDrv.stVdecCap);
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_VDEC("VFMW GET_CAPABILITY err:%d!\n", s32Ret);
        goto err2;
    }

    /* Init pts recover function */
    PTSREC_Init();

    /* Init CC user data function */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_Init();
#endif

    VDEC_VPSS_Init();
    /* Set global timer */
    s_stVdecDrv.stTimer.expires  = jiffies + (HZ);
    s_stVdecDrv.stTimer.function = VDEC_TimerFunc;
    add_timer(&s_stVdecDrv.stTimer);

    /* Set ready flag */
    s_stVdecDrv.bReady = HI_TRUE;

    HI_INFO_VDEC("VDEC_OpenDev OK.\n");
    return HI_SUCCESS;

err2:
    (s_stVdecDrv.pVfmwFunc->pfnVfmwExit)();
err1:
    BUFMNG_DeInit();
err0:
    return HI_FAILURE;
}

static HI_S32 VDEC_CloseDev(HI_VOID)
{
    HI_U32 i;
    HI_S32 s32Ret = HI_SUCCESS;

    /* Reentrant */
    if (s_stVdecDrv.bReady == HI_FALSE)
    {
        return HI_SUCCESS;
    }

    /* Set ready flag */
    s_stVdecDrv.bReady = HI_FALSE;

    /* Delete timer */
    del_timer(&s_stVdecDrv.stTimer);

    /* Free all channels */
    for (i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
        s32Ret = down_interruptible(&s_stVdecDrv.stSem); 
        if (HI_INVALID_HANDLE != s_stVdecDrv.astChanEntity[i].stVpssChan.hVpss)
        {
             VDEC_Chan_DestroyVpss(i);
        }
		up(&s_stVdecDrv.stSem);
        
        if (s_stVdecDrv.astChanEntity[i].bUsed)
        {
            if (s_stVdecDrv.astChanEntity[i].pstChan)
            {
                VDEC_Chan_Free(i);
            }
            VDEC_Chan_FreeHandle(i);
        }
    }

    /* Vfmw exit */
    (s_stVdecDrv.pVfmwFunc->pfnVfmwExit)();

    /* Buffer manager exit  */
    BUFMNG_DeInit();

    /* Pts recover exit */
    PTSREC_DeInit();
   (s_stVdecDrv.pVpssFunc->pfnVpssGlobalDeInit)();

    /* CC user data exit */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_DeInit();
#endif

    return HI_SUCCESS;
}

HI_S32 VDEC_DRV_Open(struct inode *inode, struct file  *filp)
{
    HI_S32 s32Ret;

    if (atomic_inc_return(&s_stVdecDrv.atmOpenCnt) == 1)
    {
        s_stVdecDrv.pDmxFunc  = HI_NULL;
        s_stVdecDrv.pVfmwFunc = HI_NULL;
        s_stVdecDrv.pVpssFunc = HI_NULL;


        /* Get demux functions */
        s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_DEMUX, (HI_VOID**)&s_stVdecDrv.pDmxFunc);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Get demux function err:%#x!\n", s32Ret);
        }

        /* Get vfmw functions */
        s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VFMW, (HI_VOID**)&s_stVdecDrv.pVfmwFunc);

        /* Check vfmw functions */
        if ((HI_SUCCESS != s32Ret)
           || (HI_NULL == s_stVdecDrv.pVfmwFunc)
           || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwInitWithOperation)
           || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwExit)
           || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwControl)
           || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwSuspend)
           || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwResume)
#ifndef VDM_BUSY_WAITTING
           || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwVdmIntServProc)
#endif
           || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwSetDbgOption))
        {
            HI_FATAL_VDEC("Get vfmw function err!\n");
            goto err;
        }
		/*Get vpss functions*/
		s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VPSS, (HI_VOID**)&s_stVdecDrv.pVpssFunc);
		if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Get vpss function err:%#x!\n", s32Ret);
			goto err;
        }
        /* Init device */
        if (HI_SUCCESS != VDEC_OpenDev())
        {
            HI_FATAL_VDEC("VDEC_OpenDev err!\n" );
            goto err;
        }
    }

    return HI_SUCCESS;

err:
    atomic_dec(&s_stVdecDrv.atmOpenCnt);
    return HI_FAILURE;
}

HI_S32 VDEC_DRV_Release(struct inode *inode, struct file  *filp)
{
    HI_S32 i;

    /* Not the last close, only close the channel match with the 'filp' */
    if (atomic_dec_return(&s_stVdecDrv.atmOpenCnt) != 0)
    {
        for (i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
        {
            if (s_stVdecDrv.astChanEntity[i].u32File == ((HI_U32)filp))
            {
                if (s_stVdecDrv.astChanEntity[i].bUsed)
                {
                    if (s_stVdecDrv.astChanEntity[i].pstChan)
                    {
                        if (HI_SUCCESS != VDEC_Chan_Free(i))
                        {
                            atomic_inc(&s_stVdecDrv.atmOpenCnt);
                            return HI_FAILURE;
                        }
                    }
                    VDEC_Chan_FreeHandle(i);
                }
            }
        }
    }
    /* Last close */
    else
    {
        VDEC_CloseDev();
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_DRV_RegWatermarkFunc(FN_VDEC_Watermark pfnFunc)
{
    /* Check parameters */
    if (HI_NULL == pfnFunc)
    {
        return HI_FAILURE;
    }

    s_stVdecDrv.pfnWatermark = pfnFunc;
    return HI_SUCCESS;
}

HI_VOID VDEC_DRV_UnRegWatermarkFunc(HI_VOID)
{
    s_stVdecDrv.pfnWatermark = HI_NULL;
    return;
}

HI_S32 VDEC_DRV_RegisterProc(VDEC_REGISTER_PARAM_S *pstParam)
{
    HI_S32 i;

    /* Check parameters */
    if (HI_NULL == pstParam)
    {
        return HI_FAILURE;
    }

    s_stVdecDrv.pstProcParam = pstParam;
	
    /* Create ctrl proc */
    VDEC_RegChanProc(-1);
	
    /* Create proc */
    for (i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
        if (s_stVdecDrv.astChanEntity[i].pstChan)
        {
            VDEC_RegChanProc(i);
        }
    }

    return HI_SUCCESS;
}

HI_VOID VDEC_DRV_UnregisterProc(HI_VOID)
{
    HI_S32 i;
	
    /* Unregister ctrl proc*/
	VDEC_UnRegChanProc(-1);

    /* Unregister */
    for (i = 0; i < HI_VDEC_MAX_INSTANCE_NEW; i++)
    {
        if (s_stVdecDrv.astChanEntity[i].pstChan)
        {
            VDEC_UnRegChanProc(i);
        }
    }

    /* Clear param */
    s_stVdecDrv.pstProcParam = HI_NULL;
    return;
}

HI_S32 VDEC_DRV_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    if (s_stVdecDrv.pVfmwFunc && s_stVdecDrv.pVfmwFunc->pfnVfmwSuspend)
    {
        if ((s_stVdecDrv.pVfmwFunc->pfnVfmwSuspend)())
        {
            HI_FATAL_VDEC("Suspend err!\n");
            return HI_FAILURE;
        }
    }

    HI_FATAL_VDEC("ok\n");
    return HI_SUCCESS;
}

HI_S32 VDEC_DRV_Resume(PM_BASEDEV_S *pdev)
{
    if (s_stVdecDrv.pVfmwFunc && s_stVdecDrv.pVfmwFunc->pfnVfmwResume)
    {
        if ((s_stVdecDrv.pVfmwFunc->pfnVfmwResume)())
        {
            HI_FATAL_VDEC("Resume err!\n");
            return HI_FAILURE;
        }
    }

    HI_FATAL_VDEC("ok\n");
    return HI_SUCCESS;
}

/*this function is the interface of controlling by proc file system*/
/*CNcomment: 通过proc文件系统进行控制的函数入口*/
HI_S32 VDEC_DRV_DebugCtrl(HI_U32 u32Para1, HI_U32 u32Para2)
{
    HI_INFO_VDEC("Para1=0x%x, Para2=0x%x\n", u32Para1, u32Para2);
    (s_stVdecDrv.pVfmwFunc->pfnVfmwSetDbgOption)(u32Para1, (HI_U8 *)&u32Para2);

    return HI_SUCCESS;
}

VDEC_CHANNEL_S * VDEC_DRV_GetChan(HI_HANDLE hHandle)
{
    if (s_stVdecDrv.bReady)
    {
        if (hHandle < HI_VDEC_MAX_INSTANCE_NEW)
        {
            if (s_stVdecDrv.astChanEntity[hHandle].pstChan)
            {
                return s_stVdecDrv.astChanEntity[hHandle].pstChan;
            }
        }
    }

    return HI_NULL;
}

HI_S32 VDEC_DRV_Init(HI_VOID)
{
    HI_S32 s32Ret;

	BUFMNG_SaveInit();

    s32Ret = HI_DRV_MODULE_Register(HI_ID_VDEC, VDEC_NAME, (HI_VOID*)&s_stVdecDrv.stExtFunc);
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_VDEC("Reg module fail:%#x!\n", s32Ret);
        return s32Ret;
    }

#if 0
    /* register vdec ISR */
    if (0 != request_irq(VDH_IRQ_NUM, VDEC_IntVdmProc, IRQF_DISABLED, "VDEC_VDM", HI_NULL))
    {
        HI_FATAL_VDEC("FATAL: request_irq for VDI VDM err!\n");
        return HI_FAILURE;
    }
#endif
#if (1 == PRE_ALLOC_VDEC_SCD_MMZ)
    s32Ret = HI_DRV_MMZ_Alloc("VFMW_SCD_PRE", "VFMW", SCD_MMZ_SIZE, 0, &g_stSCDMMZ);
    if (HI_SUCCESS != s32Ret)
    {
        g_stSCDMMZ.u32Size = 0;
        HI_ERR_VDEC("Alloc SCD MMZ err: %#x!\n", s32Ret);
        return HI_FAILURE;
    }
#endif
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)
    if(0 != VDH_MMZ_SIZE)
    {
	    s32Ret = HI_DRV_MMZ_Alloc("VFMW_VDH_PRE", "VFMW", VDH_MMZ_SIZE, 0, &g_stVDHMMZ);
        if (HI_SUCCESS != s32Ret)
        {
            g_stVDHMMZ.u32Size = 0;
            HI_ERR_VDEC("Alloc VDH MMZ err: %#x!\n", s32Ret);
            return HI_FAILURE;
        }
    }
	else
	{
	    g_stVDHMMZ.u32Size = 0;  
	}
#endif
#if (1 == PRE_ALLOC_VDEC_ESBUF_MMZ)
    s32Ret = HI_DRV_MMZ_AllocAndMap("VDEC_ESBuf_PRE", "VDEC", ESBUF_MMZ_SIZE, 0, &g_stESBUFMMZ);
    if (HI_SUCCESS != s32Ret)
    {
        g_stESBUFMMZ.u32Size = 0;
        HI_ERR_VDEC("Alloc ESBUF MMZ err: %#x!\n", s32Ret);
    }
#endif
    return HI_SUCCESS;
}

HI_VOID VDEC_DRV_Exit(HI_VOID)
{
#if (1 == PRE_ALLOC_VDEC_ESBUF_MMZ)
    if (0 != g_stESBUFMMZ.u32Size)
    {
        HI_DRV_MMZ_Release(&g_stESBUFMMZ);
        g_stESBUFMMZ.u32Size = 0;
    }
#endif
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)
    if (0 != g_stVDHMMZ.u32Size)
    {
        HI_DRV_MMZ_Release(&g_stVDHMMZ);
        g_stVDHMMZ.u32Size = 0;
    }
#endif
#if (1 == PRE_ALLOC_VDEC_SCD_MMZ)
    if (0 != g_stSCDMMZ.u32Size)
    {
        HI_DRV_MMZ_UnmapAndRelease(&g_stSCDMMZ);
        g_stSCDMMZ.u32Size = 0;
    }
#endif
    
#if 0
    free_irq(VDH_IRQ_NUM, HI_NULL);
#endif

    HI_DRV_MODULE_UnRegister(HI_ID_VDEC);

    return;
}


HI_S32 HI_DRV_VDEC_Init(HI_VOID)
{
    return VDEC_DRV_Init();
}

HI_VOID HI_DRV_VDEC_DeInit(HI_VOID)
{
    return VDEC_DRV_Exit();
}

HI_S32 HI_DRV_VDEC_Open(HI_VOID)
{
    return VDEC_DRV_Open(HI_NULL, HI_NULL);
}

HI_S32 HI_DRV_VDEC_Close(HI_VOID)
{
    return VDEC_DRV_Release(HI_NULL, HI_NULL);
}

HI_S32 HI_DRV_VDEC_AllocChan(HI_HANDLE *phHandle, HI_UNF_AVPLAY_OPEN_OPT_S *pstCapParam)
{
    HI_S32 s32Ret;
	HI_HANDLE hVpss = HI_INVALID_HANDLE;

    s32Ret = VDEC_Chan_AllocHandle(phHandle, (struct file*)MCE_INVALID_FILP);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

	s32Ret = VDEC_Chan_CreateVpss((*phHandle) & 0xff, &hVpss);

   	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_VDEC("VDEC_Chan_CreateVpss err!\n");
		return HI_FAILURE;
	}
    return VDEC_Chan_Alloc((*phHandle)&0xff, pstCapParam);
}

HI_S32 HI_DRV_VDEC_FreeChan(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    
    s32Ret = VDEC_Chan_Free(hHandle & 0xff);
    s32Ret |= VDEC_Chan_FreeHandle(hHandle & 0xff);
    s32Ret |= VDEC_Chan_DestroyVpss(hHandle & 0xff);

    return s32Ret;
}
HI_S32 HI_DRV_VDEC_CreateStrmBuf(HI_HANDLE hVdec, HI_DRV_VDEC_STREAM_BUF_S *pstBuf)
{
    HI_S32 s32Ret;
	s32Ret = VDEC_CreateStrmBuf(pstBuf);
	VDEC_Chan_AttachStrmBuf(hVdec, pstBuf->u32Size,HI_INVALID_HANDLE, pstBuf->hHandle);
	return s32Ret;
}
HI_S32 HI_DRV_VDEC_ChanBufferInit(HI_HANDLE hHandle, HI_U32 u32BufSize, HI_HANDLE hDmxVidChn)
{
    HI_S32 s32Ret;
	HI_DRV_VDEC_STREAM_BUF_S stBuf;
    if (HI_INVALID_HANDLE == hDmxVidChn)
    {
    	stBuf.u32Size = u32BufSize;
        s32Ret = HI_DRV_VDEC_CreateStrmBuf(hHandle & 0xff, &stBuf);
		if(HI_SUCCESS != s32Ret)
		{
		    return HI_FAILURE;
		}
    }
    else
    {
        s32Ret =  VDEC_Chan_AttachStrmBuf(hHandle & 0xff, u32BufSize, hDmxVidChn, HI_INVALID_HANDLE);
    }
	return s32Ret;
}

HI_S32 HI_DRV_VDEC_ChanBufferDeInit(HI_HANDLE hHandle)
{  
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hDemuxHandle;
	if((hHandle & 0xff) >HI_VDEC_MAX_INSTANCE_NEW -1)
	{
	     HI_ERR_VDEC("HI_DRV_VDEC_ChanBufferDeInit error hHandle:%d wrong!\n",hHandle);
		 return s32Ret;
	}
	hDemuxHandle = s_stVdecDrv.astChanEntity[hHandle & 0xff].pstChan->hDmxVidChn;

	if (HI_INVALID_HANDLE == hDemuxHandle)
	{
	    s32Ret = VDEC_DestroyStrmBuf(s_stVdecDrv.astChanEntity[hHandle & 0xff].pstChan->hStrmBuf);
		if(HI_SUCCESS != s32Ret)
		{
		    HI_ERR_VDEC("VDEC_DestroyStrmBuf error!\n");
			return s32Ret;
		}
	}
    s32Ret = VDEC_Chan_DetachStrmBuf(hHandle & 0xff);	return s32Ret;
}

	
HI_S32 HI_DRV_VDEC_ResetChan(HI_HANDLE hHandle)
{
    return VDEC_Chan_Reset(hHandle & 0xff, VDEC_RESET_TYPE_ALL);
}

HI_S32 HI_DRV_VDEC_SetPortType(HI_HANDLE hVdec,HI_HANDLE hPort, VDEC_PORT_TYPE_E enPortType )
{
	HI_S32 s32Ret;
	HI_HANDLE hVpss;
	s32Ret = VDEC_FindVpssHandleByVdecHandle(hVdec & 0xff, &hVpss);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_VDEC("VDEC_FindVpssHandleByVdecHandle err!\n");
		return HI_FAILURE;
	}
    return VDEC_Chan_SetPortType(hVpss, hPort, enPortType );
}

HI_S32 HI_DRV_VDEC_EnablePort(HI_HANDLE hVdec,HI_HANDLE hPort)
{
    HI_S32 s32Ret;
	HI_HANDLE hVpss;
	s32Ret = VDEC_FindVpssHandleByVdecHandle(hVdec & 0xff, &hVpss);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_VDEC("VDEC_FindVpssHandleByVdecHandle err!\n");
		return HI_FAILURE;
	}
    return VDEC_Chan_EnablePort(hVpss, hPort);
}

HI_S32 HI_DRV_VDEC_CreatePort(HI_HANDLE hVdec,HI_HANDLE* phPort, VDEC_PORT_ABILITY_E ePortAbility)
{
    HI_S32 s32Ret;
	HI_HANDLE hVpss;
	s32Ret = VDEC_FindVpssHandleByVdecHandle(hVdec & 0xff, &hVpss);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_VDEC("VDEC_FindVpssHandleByVdecHandle err!\n");
		return HI_FAILURE;
	}
    return VDEC_Chan_CreatePort(hVpss, phPort, ePortAbility );
}

HI_S32 HI_DRV_VDEC_DestroyPort(HI_HANDLE hVdec,HI_HANDLE hPort)
{
    HI_S32 s32Ret;
	HI_HANDLE hVpss;
	s32Ret = VDEC_FindVpssHandleByVdecHandle(hVdec & 0xff, &hVpss);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_VDEC("VDEC_FindVpssHandleByVdecHandle err!\n");
		return HI_FAILURE;
	}
    return VDEC_Chan_DestroyPort(hVpss, hPort);
}

HI_S32 HI_DRV_VDEC_GetPortParam(HI_HANDLE hVdec,HI_HANDLE hPort,VDEC_PORT_PARAM_S* pstPortParam)
{
    HI_S32 s32Ret;
	HI_HANDLE hVpss;
	s32Ret = VDEC_FindVpssHandleByVdecHandle(hVdec & 0xff, &hVpss);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_VDEC("VDEC_FindVpssHandleByVdecHandle err!\n");
		return HI_FAILURE;
	}
    return VDEC_Chan_GetPortParam(hVpss, hPort, pstPortParam);
}
HI_S32 HI_DRV_VDEC_Chan_RecvVpssFrmBuf(HI_HANDLE hVdec, HI_DRV_VIDEO_FRAME_PACKAGE_S* pstFrm)
{
    HI_S32 s32Ret;
	HI_HANDLE hVpss;
	s32Ret = VDEC_FindVpssHandleByVdecHandle(hVdec & 0xff, &hVpss);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_VDEC("VDEC_FindVpssHandleByVdecHandle err!\n");
		return HI_FAILURE;
	}
    return VDEC_Chan_RecvVpssFrmBuf(hVpss, pstFrm);
}
HI_S32 HI_DRV_VDEC_SetChanFrmRate(HI_HANDLE hHandle, HI_UNF_AVPLAY_FRMRATE_PARAM_S *pstFrmRate)
{
    return PTSREC_GetFrmRate(hHandle, pstFrmRate);
}
HI_S32 HI_DRV_VDEC_GetChanFrmRate(HI_HANDLE hHandle, HI_UNF_AVPLAY_FRMRATE_PARAM_S *pstFrmRate)
{
    return PTSREC_SetFrmRate(hHandle, pstFrmRate);
}
HI_VOID HI_DRV_VDEC_GetVcmpFlag(HI_BOOL* pbVcmpFlag)
{
	if(1 == EnVcmp)
	{
	    *pbVcmpFlag = HI_TRUE; 
	}
	else
	{
	    *pbVcmpFlag = HI_FALSE; 
	}
}

module_param(RefFrameNum, int, S_IRUGO);
module_param(DispFrameNum, int, S_IRUGO);
module_param(EnVcmp, int, S_IRUGO);
module_param(En2d, int, S_IRUGO);


#ifdef MODULE
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)
EXPORT_SYMBOL(g_stVDHMMZ);
EXPORT_SYMBOL(g_bVdecPreVDHMMZUsed);
#endif

#if (1 == PRE_ALLOC_VDEC_SCD_MMZ)
EXPORT_SYMBOL(g_stSCDMMZ);
EXPORT_SYMBOL(g_bVdecPreSCDMMZUsed);
#endif

#if (1 == PRE_ALLOC_VDEC_ESBUF_MMZ)
EXPORT_SYMBOL(g_stESBUFMMZ);
EXPORT_SYMBOL(g_bVdecPreESBUFMMZUsed);
#endif
#endif

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */
