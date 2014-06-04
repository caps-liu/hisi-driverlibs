/*****************************************************************************
  Copyright (C), 2004-2050, Hisilicon Tech. Co., Ltd.
 ******************************************************************************
  File Name     : drv_venc.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/04/07
  Last Modified :
  Description   :
  Function List :
  History       :
  1.Date        :
  Author        : j00131665
  Modification  : Created file
 ******************************************************************************/

#include "hal_venc.h"
#include "drv_vi_ext.h"
#include "drv_win_ext.h"
#include "drv_vpss_ext.h"
#include "drv_venc_ext.h"
#include "drv_disp_ext.h"
#include "hi_drv_proc.h"
#include "hi_drv_module.h"
#include "hi_drv_file.h"
#include "drv_ndpt_ext.h"
#include "hi_drv_reg.h"
#include "drv_venc_efl.h"
#include "drv_venc_osal.h"
#include "drv_venc_buf_mng.h"
#include "drv_venc.h"
#include "hi_mpi_venc.h"
#include "hi_drv_video.h"
#include "hi_kernel_adapt.h"
#include "hi_reg_common.h"
#include "hi_osal.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

//Check null pointer
//#define VDEC_APPENDIX_LEN 16
#define VENC_MAX_FRAME_LEN 200000
OPTM_VENC_CHN_S g_stVencChn[VENC_MAX_CHN_NUM];
VEDU_OSAL_EVENT g_VencWait_Stream[VENC_MAX_CHN_NUM];

spinlock_t g_SendFrame_Lock[VENC_MAX_CHN_NUM];     /*lock the destroy and send frame*/
//HI_DECLARE_MUTEX(g_VencStreamMutex[VENC_MAX_CHN_NUM]);

volatile HI_U32 g_VENCCrgCtrl = 0;
//HI_S32 VencThreadGetIFrame(HI_VOID * arg);

HI_U32 g_vedu_chip_id = 0;
extern VPSS_EXPORT_FUNC_S *pVpssFunc;
#define D_VENC_GET_CHN(u32VeChn, hVencChn) \
    do {\
        u32VeChn = 0; \
        while (u32VeChn < VENC_MAX_CHN_NUM)\
        {   \
            if (g_stVencChn[u32VeChn].hVEncHandle == hVencChn)\
            { \
                break; \
            } \
            u32VeChn++; \
        } \
    } while (0)
    
#define D_VENC_GET_PRIORITY_ID(s32VeChn, sPriorityID) \
    do {\
        sPriorityID = 0; \
        while (sPriorityID < VENC_MAX_CHN_NUM)\
        {   \
            if (PriorityTab[0][sPriorityID] == s32VeChn)\
            { \
                break; \
            } \
            sPriorityID++; \
        } \
    } while (0)

//extern HI_U32 gVpNethandle;
wait_queue_head_t gEncodeFrame;
volatile HI_U32 gencodeframe = 0;
extern HI_S32 gMax, gBMAX;
//HI_U8 gSendbuf[VENC_MAX_FRAME_LEN + VDEC_APPENDIX_LEN + 4];
HI_U8 ZeroDelaySuffix[] = {0x00, 0x00, 0x01, 0x1e, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4E, 0x44, 0x00, 0x00, 0x01,
                           0x1e};
HI_U32 gVencVppayload = 0;
//extern wait_queue_head_t stSendTimeQue;
//volatile HI_U32 gSendStart = 0;

//extern HI_U32 g_VpStaticCtrl;
//extern HI_S32 g_VpStatic[];
//extern HI_S32 g_Pts;

HI_S8 PriorityTab[2][VENC_MAX_CHN_NUM]={{-1,-1,-1,-1,-1,-1,-1,-1},{}};                
///////////////////////////////////////////////////////////////
static VENC_EXPORT_FUNC_S s_VencExportFuncs =
{
    /*.pfnVencEncodeFrame = VENC_DRV_EflEncodeFrame,*/
    .pfnVencQueueFrame  = VENC_DRV_EflQFrameByAttach,
	.pfnVencWakeUpThread= VENC_DRV_EflWakeUpThread
};

static HI_S32 Convert_FrameStructure(HI_UNF_VIDEO_FRAME_INFO_S *pstUnfImage,HI_DRV_VIDEO_FRAME_S *pstDrvImage)
{
   D_VENC_CHECK_PTR(pstUnfImage);
   D_VENC_CHECK_PTR(pstDrvImage);
   pstDrvImage->u32FrameIndex  = pstUnfImage->u32FrameIndex;
   pstDrvImage->stBufAddr[0].u32PhyAddr_Y = pstUnfImage->stVideoFrameAddr[0].u32YAddr;
   pstDrvImage->stBufAddr[0].u32Stride_Y  = pstUnfImage->stVideoFrameAddr[0].u32YStride;
   pstDrvImage->stBufAddr[0].u32PhyAddr_C = pstUnfImage->stVideoFrameAddr[0].u32CAddr;
   pstDrvImage->stBufAddr[0].u32Stride_C  = pstUnfImage->stVideoFrameAddr[0].u32CStride;
   pstDrvImage->stBufAddr[0].u32PhyAddr_Cr= pstUnfImage->stVideoFrameAddr[0].u32CrAddr;
   pstDrvImage->stBufAddr[0].u32Stride_Cr = pstUnfImage->stVideoFrameAddr[0].u32CrStride;

   pstDrvImage->stBufAddr[1].u32PhyAddr_Y = pstUnfImage->stVideoFrameAddr[1].u32YAddr;
   pstDrvImage->stBufAddr[1].u32Stride_Y  = pstUnfImage->stVideoFrameAddr[1].u32YStride;
   pstDrvImage->stBufAddr[1].u32PhyAddr_C = pstUnfImage->stVideoFrameAddr[1].u32CAddr;
   pstDrvImage->stBufAddr[1].u32Stride_C  = pstUnfImage->stVideoFrameAddr[1].u32CStride;
   pstDrvImage->stBufAddr[1].u32PhyAddr_Cr= pstUnfImage->stVideoFrameAddr[1].u32CrAddr;
   pstDrvImage->stBufAddr[1].u32Stride_Cr = pstUnfImage->stVideoFrameAddr[1].u32CrStride;
   pstDrvImage->u32Width = pstUnfImage->u32Width;
   pstDrvImage->u32Height= pstUnfImage->u32Height;   
   pstDrvImage->u32SrcPts= pstUnfImage->u32SrcPts;
   pstDrvImage->u32Pts   = pstUnfImage->u32Pts;
   pstDrvImage->u32AspectWidth       = pstUnfImage->u32AspectWidth;
   pstDrvImage->u32AspectHeight      = pstUnfImage->u32AspectHeight;
   pstDrvImage->u32FrameRate = pstUnfImage->stFrameRate.u32fpsInteger;

   switch(pstUnfImage->enVideoFormat)
   {
      case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_NV61_2X1;
        break;
      case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_NV21;
        break;
      case HI_UNF_FORMAT_YUV_SEMIPLANAR_400:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_NV80;
        break;
      case HI_UNF_FORMAT_YUV_SEMIPLANAR_411:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_NV12_411;
        break;
      case HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_NV61;
        break;
      case HI_UNF_FORMAT_YUV_SEMIPLANAR_444:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_NV42;
        break;
      case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_UYVY;
        break;
      case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_YUYV;
        break;
      case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_YVYU;
        break;
      case HI_UNF_FORMAT_YUV_PLANAR_400:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_YUV400;
        break;
      case HI_UNF_FORMAT_YUV_PLANAR_411:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_YUV411;
        break;
      case HI_UNF_FORMAT_YUV_PLANAR_420:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_YUV420p;
        break;
      case HI_UNF_FORMAT_YUV_PLANAR_422_1X2:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_YUV422_1X2;
        break;
      case HI_UNF_FORMAT_YUV_PLANAR_422_2X1:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_YUV422_2X1;
        break;
      case HI_UNF_FORMAT_YUV_PLANAR_444:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_YUV_444;
        break;
      case HI_UNF_FORMAT_YUV_PLANAR_410:
        pstDrvImage->ePixFormat = HI_DRV_PIX_FMT_YUV410p;
        break;
      default:
        pstDrvImage->ePixFormat = HI_DRV_PIX_BUTT;
        break;     
   }
   pstDrvImage->bProgressive    = pstUnfImage->bProgressive;
   
   switch(pstUnfImage->enFieldMode)
   {
      case HI_UNF_VIDEO_FIELD_ALL:
        pstDrvImage->enFieldMode= HI_DRV_FIELD_ALL;
        break;
      case HI_UNF_VIDEO_FIELD_TOP:
        pstDrvImage->enFieldMode = HI_DRV_FIELD_TOP;
        break;
      case HI_UNF_VIDEO_FIELD_BOTTOM:
        pstDrvImage->enFieldMode = HI_DRV_FIELD_BOTTOM;
        break;
      default:
        pstDrvImage->enFieldMode = HI_DRV_FIELD_BUTT;
        break;
   }
   pstDrvImage->bTopFieldFirst = pstUnfImage->bTopFieldFirst;
   pstDrvImage->stDispRect.s32Height = pstUnfImage->u32DisplayHeight;
   pstDrvImage->stDispRect.s32Width  = pstUnfImage->u32DisplayWidth;
   pstDrvImage->stDispRect.s32X      = pstUnfImage->u32DisplayCenterX;
   pstDrvImage->stDispRect.s32Y      = pstUnfImage->u32DisplayCenterY;
   pstDrvImage->eFrmType = (HI_DRV_FRAME_TYPE_E)pstUnfImage->enFramePackingType;
   pstDrvImage->u32Circumrotate = pstUnfImage->u32Circumrotate;
   pstDrvImage->bToFlip_H = pstUnfImage->bHorizontalMirror;
   pstDrvImage->bToFlip_V = pstUnfImage->bVerticalMirror;
   pstDrvImage->u32ErrorLevel=pstUnfImage->u32ErrorLevel;

   memcpy(pstDrvImage->u32Priv , pstUnfImage->u32Private,sizeof(HI_U32)*64);
   return HI_SUCCESS;
}

static HI_S32 Convert_DrvFrameStructure(HI_DRV_VIDEO_FRAME_S *pstDrvImage, HI_UNF_VIDEO_FRAME_INFO_S *pstUnfImage)
{
   D_VENC_CHECK_PTR(pstUnfImage);
   D_VENC_CHECK_PTR(pstDrvImage);
   pstUnfImage->u32FrameIndex  = pstDrvImage->u32FrameIndex; 
   pstUnfImage->stVideoFrameAddr[0].u32YAddr = pstDrvImage->stBufAddr[0].u32PhyAddr_Y ; 
   pstUnfImage->stVideoFrameAddr[0].u32YStride =pstDrvImage->stBufAddr[0].u32Stride_Y ;
   pstUnfImage->stVideoFrameAddr[0].u32CAddr=pstDrvImage->stBufAddr[0].u32PhyAddr_C ;
   pstUnfImage->stVideoFrameAddr[0].u32CStride=pstDrvImage->stBufAddr[0].u32Stride_C ;
   pstUnfImage->stVideoFrameAddr[0].u32CrAddr = pstDrvImage->stBufAddr[0].u32PhyAddr_Cr;
   pstUnfImage->stVideoFrameAddr[0].u32CrStride = pstDrvImage->stBufAddr[0].u32Stride_Cr ;

   pstUnfImage->stVideoFrameAddr[1].u32YAddr = pstDrvImage->stBufAddr[1].u32PhyAddr_Y ; 
   pstUnfImage->stVideoFrameAddr[1].u32YStride =pstDrvImage->stBufAddr[1].u32Stride_Y ;
   pstUnfImage->stVideoFrameAddr[1].u32CAddr=pstDrvImage->stBufAddr[1].u32PhyAddr_C ;
   pstUnfImage->stVideoFrameAddr[1].u32CStride=pstDrvImage->stBufAddr[1].u32Stride_C ;
   pstUnfImage->stVideoFrameAddr[1].u32CrAddr = pstDrvImage->stBufAddr[1].u32PhyAddr_Cr;
   pstUnfImage->stVideoFrameAddr[1].u32CrStride = pstDrvImage->stBufAddr[1].u32Stride_Cr ;
   
   pstUnfImage->u32Width =pstDrvImage->u32Width; 
   pstUnfImage->u32Height=pstDrvImage->u32Height;  
   pstUnfImage->u32SrcPts=pstDrvImage->u32SrcPts; 
   pstUnfImage->u32Pts=pstDrvImage->u32Pts ;
   pstUnfImage->u32AspectWidth=pstDrvImage->u32AspectWidth;
   pstUnfImage->u32AspectHeight=pstDrvImage->u32AspectHeight;
   pstUnfImage->stFrameRate.u32fpsInteger=pstDrvImage->u32FrameRate;

   switch(pstDrvImage->ePixFormat)
   {
      case HI_DRV_PIX_FMT_NV61_2X1:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_422 ;
        break;
      case HI_DRV_PIX_FMT_NV12:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420 ;
        break;
      case HI_DRV_PIX_FMT_NV21:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420 ;
        break;
      case HI_DRV_PIX_FMT_NV80:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_400;
        break;
      case HI_DRV_PIX_FMT_NV12_411:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_411;
        break;
      case HI_DRV_PIX_FMT_NV61:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2;
        break;
      case HI_DRV_PIX_FMT_NV42:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_444;
        break;
      case HI_DRV_PIX_FMT_UYVY:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_UYVY;
        break;
      case HI_DRV_PIX_FMT_YUYV:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_YUYV;
        break;
      case HI_DRV_PIX_FMT_YVYU:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_YVYU;
        break;
      case HI_DRV_PIX_FMT_YUV400:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_400;
        break;
      case HI_DRV_PIX_FMT_YUV411:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_411;
        break;
      case HI_DRV_PIX_FMT_YUV420p:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_420;
        break;
      case HI_DRV_PIX_FMT_YUV422_1X2:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_422_1X2;
        break;
      case HI_DRV_PIX_FMT_YUV422_2X1:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_422_2X1;
        break;
      case HI_DRV_PIX_FMT_YUV_444:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_444;
        break;
      case HI_DRV_PIX_FMT_YUV410p:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_410;
        break;
      default:
        pstUnfImage->enVideoFormat = HI_UNF_FORMAT_YUV_BUTT;
        break;     
   }
   pstUnfImage->bProgressive = pstDrvImage->bProgressive;
   
   switch(pstDrvImage->enFieldMode) 
   {
      case HI_DRV_FIELD_ALL:
        pstUnfImage->enFieldMode = HI_UNF_VIDEO_FIELD_ALL;
        break;
      case HI_DRV_FIELD_TOP:
        pstUnfImage->enFieldMode = HI_UNF_VIDEO_FIELD_TOP;
        break;
      case HI_DRV_FIELD_BOTTOM:
        pstUnfImage->enFieldMode = HI_UNF_VIDEO_FIELD_BOTTOM;
        break;
      default:
        pstUnfImage->enFieldMode = HI_UNF_VIDEO_FIELD_BUTT;
        break;
   }
   pstUnfImage->bTopFieldFirst=pstDrvImage->bTopFieldFirst;
   pstUnfImage->u32DisplayHeight=pstDrvImage->stDispRect.s32Height;
   pstUnfImage->u32DisplayWidth=pstDrvImage->stDispRect.s32Width;
   pstUnfImage->u32DisplayCenterX=pstDrvImage->stDispRect.s32X;
   pstUnfImage->u32DisplayCenterY=pstDrvImage->stDispRect.s32Y;
   pstUnfImage->enFramePackingType=(HI_UNF_VIDEO_FRAME_PACKING_TYPE_E)pstDrvImage->eFrmType ;
   pstUnfImage->u32Circumrotate=pstDrvImage->u32Circumrotate; 
   pstUnfImage->bHorizontalMirror =pstDrvImage->bToFlip_H;
   pstUnfImage->bVerticalMirror =pstDrvImage->bToFlip_V;
   pstUnfImage->u32ErrorLevel = pstDrvImage->u32ErrorLevel;

   memcpy( pstUnfImage->u32Private,pstDrvImage->u32Priv ,sizeof(HI_U32)*64);

   return HI_SUCCESS;
}

HI_VOID VENC_DRV_BoardInit(HI_VOID)
{
    HI_U32 i;
	U_PERI_CRG35 unTmpValue;

	/* reset */
	unTmpValue.bits.venc_srst_req = 1;
	g_pstRegCrg->PERI_CRG35.u32 = unTmpValue.u32;
	
    msleep(1);
	
    /* open vedu clock */
	unTmpValue.bits.venc_cken     = 1;
	/* config vedu clock frequency: 200Mhz */
	unTmpValue.bits.venc_clk_sel  = 0;
	/* cancel reset */
	unTmpValue.bits.venc_srst_req = 0;
	g_pstRegCrg->PERI_CRG35.u32 = unTmpValue.u32;
	
    msleep(1);

    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        //init_waitqueue_head(&g_astVencWait[i]);
         VENC_DRV_OsalInitEvent(&g_VencWait_Stream[i], 0);
		 spin_lock_init(&g_SendFrame_Lock[i]);
    }

    init_waitqueue_head(&gEncodeFrame);
    gencodeframe = 0;

#ifdef __VENC_S40V200_CONFIG__
    g_vedu_chip_id = 2;
#else
    g_vedu_chip_id = g_pstRegPeri->PERI_SOC_FUSE.bits.vedu_chip_id;
#endif
}

HI_VOID VENC_DRV_BoardDeinit(HI_VOID)
{
    U_PERI_CRG35 unTmpValue;
	
    /* reset */
    unTmpValue.bits.venc_srst_req = 1;
	g_pstRegCrg->PERI_CRG35.u32 = unTmpValue.u32;

    msleep(1);

    /* close vedu clock */
    unTmpValue.bits.venc_cken     = 0;
	g_pstRegCrg->PERI_CRG35.u32 = unTmpValue.u32;
}

HI_S32 VENC_DRV_CreateChn(HI_HANDLE *phVencChn, HI_UNF_VENC_CHN_ATTR_S *pstAttr,
                      VENC_CHN_INFO_S *pstVeInfo,HI_BOOL bOMXChn, struct file  *pfile)
{
    HI_S32 s32Ret = 0, i = 0;
    VeduEfl_EncCfg_S EncCfg;
    VeduEfl_EncPara_S *pstEncChnPara;
    VeduEfl_RcAttr_S RcAttrCfg;
	HI_CHAR YUVFileName[64]={""};
	HI_CHAR StreamFileName[64]={""};

    D_VENC_CHECK_PTR(phVencChn);
    D_VENC_CHECK_PTR(pstAttr);
	D_VENC_CHECK_PTR(pstVeInfo);

    if ((sizeof(VeduEfl_NALU_S)) > HI_VENC_STREAM_RESERV_SIZE)
    {
        HI_ERR_VENC("(sizeof(VeduEfl_NALU_S)) > HI_VENC_STREAM_RESERV_SIZE, check source code!\n");
        return HI_ERR_VENC_INVALID_PARA;
    }

    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        if (g_stVencChn[i].hVEncHandle == HI_INVALID_HANDLE)
        {
            break;
        }
    }

    if (i == VENC_MAX_CHN_NUM)
    {
        HI_ERR_VENC("channal create err! \n");
        return HI_ERR_VENC_CREATE_ERR;
    }

    switch (pstAttr->enVencType)
    {
    case HI_UNF_VCODEC_TYPE_H264:
        EncCfg.Protocol = VEDU_H264;
		EncCfg.Profile  = (HI_U32)pstAttr->enVencProfile;
        break;
    case HI_UNF_VCODEC_TYPE_H263:
        EncCfg.Protocol = VEDU_H263;
        break;
    case HI_UNF_VCODEC_TYPE_MPEG4:
        EncCfg.Protocol = VEDU_MPEG4;
        break;
	 case HI_UNF_VCODEC_TYPE_JPEG:
        EncCfg.Protocol = VEDU_JPGE;
	    EncCfg.QLevel   = pstAttr->u32Qlevel;
        break;
    default:
        EncCfg.Protocol = VEDU_H264;
        break;
    }

    switch(g_vedu_chip_id)
    {
       case 0:
		   	if (pstAttr->enCapLevel > HI_UNF_VCODEC_CAP_LEVEL_D1)
		   	{
			   HI_ERR_VENC("vedu_chip_id(%d) not support create this level(%d) channel(should below D1)!\n",g_vedu_chip_id,pstAttr->enCapLevel);
		       return HI_ERR_VENC_NOT_SUPPORT;			   	
		   	}
            break;
	   case 1:
		   	if (pstAttr->enCapLevel > HI_UNF_VCODEC_CAP_LEVEL_720P)
		   	{
			   HI_ERR_VENC("vedu_chip_id(%d) not support create this level(%d) channel(should below 720p)!\n",g_vedu_chip_id,pstAttr->enCapLevel);
		       return HI_ERR_VENC_NOT_SUPPORT;			   	
		   	}
            break;
	   default:
		break;
    }
	
    EncCfg.CapLevel      = pstAttr->enCapLevel;
    EncCfg.FrameWidth    = pstAttr->u32Width;
    EncCfg.FrameHeight   = pstAttr->u32Height;
    EncCfg.RotationAngle = pstAttr->u32RotationAngle;
    EncCfg.Priority      = pstAttr->u8Priority;
    EncCfg.streamBufSize = pstAttr->u32StrmBufSize;
	EncCfg.Gop           = pstAttr->u32Gop;
    EncCfg.QuickEncode   = pstAttr->bQuickEncode;
    EncCfg.SlcSplitEn    = (HI_TRUE == pstAttr->bSlcSplitEn) ? 1 : 0;
	if (EncCfg.SlcSplitEn)
	{
	    if (pstAttr->u32Width >= 1280)  
        {
           EncCfg.SplitSize  = 4;
        }
		else if (pstAttr->u32Width >= 720)
	    {
	       EncCfg.SplitSize  = 6;
	    }
		else 
	    {
	       EncCfg.SplitSize  = 8;
	    }			
	}
	else
	{
	    EncCfg.SplitSize  = 0;
	}
	EncCfg.bOMXChn  = bOMXChn;

    s32Ret = VENC_DRV_EflCreateVenc(phVencChn, &EncCfg);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }
    pstEncChnPara = (VeduEfl_EncPara_S*)(*phVencChn);
    RcAttrCfg.BitRate    = pstAttr->u32TargetBitRate;
    RcAttrCfg.InFrmRate  = pstAttr->u32InputFrmRate;
    RcAttrCfg.OutFrmRate = pstAttr->u32TargetFrmRate;
    RcAttrCfg.MaxQp      = pstAttr->u32MaxQp;
    RcAttrCfg.MinQp      = pstAttr->u32MinQp;
    
    s32Ret = VENC_DRV_EflRcAttrInit(*phVencChn, &RcAttrCfg);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VENC("config venc err:%#x.\n", s32Ret);
        VENC_DRV_EflDestroyVenc(*phVencChn);
        return HI_ERR_VENC_INVALID_PARA;
    }

    /*creat one proc file*/
    s32Ret = VENC_DRV_ProcAdd(*phVencChn,i);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_VENC("venc_ProcAdd failed, ret = 0x%08x\n", s32Ret);
        VENC_DRV_EflDestroyVenc(*phVencChn);
        return HI_FAILURE;
    }    
	
    pstVeInfo->handle            = *phVencChn;
    pstVeInfo->u32StrmBufPhyAddr = pstEncChnPara->StrmBufAddr;
    pstVeInfo->u32BufSize        = pstEncChnPara->StrmBufSize;

    g_stVencChn[i].StrmBufAddr   = pstEncChnPara->StrmBufAddr;
    g_stVencChn[i].StrmBufSize   = pstEncChnPara->StrmBufSize;
    g_stVencChn[i].hVEncHandle   = *phVencChn;
    g_stVencChn[i].hSource       = HI_INVALID_HANDLE;
    g_stVencChn[i].stChnUserCfg  = *pstAttr;
    g_stVencChn[i].pWhichFile    = pfile;
	g_stVencChn[i].u32SliceSize            = EncCfg.SplitSize;
    g_stVencChn[i].u32FrameNumLastInput    = 0;
    g_stVencChn[i].u32FrameNumLastEncoded  = 0;
    g_stVencChn[i].u32TotalByteLastEncoded = 0;
    g_stVencChn[i].u32LastSecInputFps      = 0;
    g_stVencChn[i].u32LastSecEncodedFps    = 0;
    g_stVencChn[i].u32LastSecKbps          = 0;
    g_stVencChn[i].u32LastSecTryNum        = 0;
    g_stVencChn[i].u32LastTryNumTotal      = 0;
	g_stVencChn[i].u32LastSecOKNum         = 0;
    g_stVencChn[i].u32LastOKNumTotal       = 0;
    g_stVencChn[i].u32LastSecPutNum        = 0;
    g_stVencChn[i].u32LastPutNumTotal      = 0;
    g_stVencChn[i].bNeedVPSS               = HI_FALSE;
	g_stVencChn[i].bFrameBufMng            = HI_TRUE;
	g_stVencChn[i].bEnable                 = HI_FALSE;
	g_stVencChn[i].enSrcModId              = HI_ID_BUTT;
    g_stVencChn[i].bOMXChn                 = bOMXChn;
	g_stVencChn[i].stProcWrite.bFrameModeRun     = HI_FALSE;
	g_stVencChn[i].stProcWrite.bTimeModeRun      = HI_FALSE;
	g_stVencChn[i].stProcWrite.bSaveYUVFileRun   = HI_FALSE;
	g_stVencChn[i].stProcWrite.u32FrameModeCount = 0;
	g_stVencChn[i].stProcWrite.fpSaveFile        = HI_NULL;

    s32Ret = HI_OSAL_Snprintf(YUVFileName, sizeof(YUVFileName), "venc_proc_chn%02d.yuv", i);
	if (0 == s32Ret)
    {
        HI_ERR_VENC("HI_OSAL_Snprintf failed!\n");
    }
	memcpy(g_stVencChn[i].stProcWrite.YUVFileName,YUVFileName,64);
    s32Ret = HI_OSAL_Snprintf(StreamFileName, sizeof(StreamFileName), "venc_proc_chn%02d.h264", i);
	if (0 == s32Ret)
    {
        HI_ERR_VENC("HI_OSAL_Snprintf failed!\n");
    }
	memcpy(g_stVencChn[i].stProcWrite.StreamFileName,StreamFileName,64);
    HI_INFO_VENC("create OK, Chn:%d/%#x.\n", i, g_stVencChn[i].hVEncHandle);
    return HI_SUCCESS;
}

HI_S32 VENC_DRV_DestroyChn( HI_HANDLE hVencChn)
{
    HI_S32 s32Ret   = 0;
    HI_U32 u32VeChn = 0;
    OPTM_VENC_CHN_S *pstVenc;
	unsigned long flags;
    //VI_EXPORT_FUNC_S *pViFunc = HI_NULL;
    VeduEfl_EncPara_S  *pstEncChnPara;
    D_VENC_GET_CHN(u32VeChn, hVencChn);
    D_VENC_CHECK_CHN(u32VeChn);

    spin_lock_irqsave(&g_SendFrame_Lock[u32VeChn],flags);
    pstVenc = &g_stVencChn[u32VeChn];
    pstEncChnPara = (VeduEfl_EncPara_S*)g_stVencChn[u32VeChn].hVEncHandle;
    spin_unlock_irqrestore(&g_SendFrame_Lock[u32VeChn],flags);
    //VENC must be stop working
    if (pstVenc->bEnable)
    {
        HI_WARN_VENC("Error:Destroy channel when VENC is run.\n");
        VENC_DRV_EflStopVenc(hVencChn);
		VENC_DRV_OsalGiveEvent(&g_VencWait_Stream[u32VeChn]);
    }

    switch (pstVenc->enSrcModId)
    {
        case HI_ID_DISP:
        {
            pstEncChnPara->stSrcInfo.pfDetachFunc(pstVenc->hSource,pstVenc->hUsrHandle);
        }
         break;
        default:
         break;
    }
/**/    
    VENC_DRV_ProcDel(hVencChn,u32VeChn);

    s32Ret = VENC_DRV_EflDestroyVenc(hVencChn);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

#if 0
    if (g_stVencChn[s32VeChn].hSource != HI_INVALID_HANDLE)
    {

        if (HI_ID_VI == g_stVencChn[s32VeChn].enSrcModId)
        {
            HI_DRV_MODULE_GetFunction(HI_ID_VI, (HI_VOID**)&pViFunc);
            if (HI_NULL != pViFunc)
            {
                s32Ret = pViFunc->pfnViPutUsrID(pstVenc->hSource & 0xff, pstVenc->u32SrcUser);
                if (HI_SUCCESS != s32Ret)
                {
                    HI_ERR_VENC("ViuPutUsrID failed, Ret=%#x.\n", s32Ret);
                    return s32Ret;
                }
            }
        }
    }
#endif

    spin_lock_irqsave(&g_SendFrame_Lock[u32VeChn],flags);
	g_stVencChn[u32VeChn].hSource     = HI_INVALID_HANDLE;
    g_stVencChn[u32VeChn].hVEncHandle = HI_INVALID_HANDLE;
    g_stVencChn[u32VeChn].bNeedVPSS   = HI_FALSE;
	g_stVencChn[u32VeChn].bFrameBufMng= HI_TRUE;
	g_stVencChn[u32VeChn].bOMXChn     = HI_FALSE;
	g_stVencChn[u32VeChn].bEnable     = HI_FALSE;
	
	spin_unlock_irqrestore(&g_SendFrame_Lock[u32VeChn],flags);
    HI_INFO_VENC("VENC_DestroyChn %d OK\n", u32VeChn);
    return HI_SUCCESS;
}

HI_S32 VENC_DRV_AttachInput(HI_HANDLE hVencChn, HI_HANDLE hSrc, HI_MOD_ID_E enModId )
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32VeChn = 0;
    OPTM_VENC_CHN_S *pstVenc;
    VeduEfl_SrcInfo_S stSrcInfo = {0};
    //VI_EXPORT_FUNC_S *pViFunc = HI_NULL;
    //WIN_EXPORT_FUNC_S *pVoFunc = HI_NULL;
    DISP_EXPORT_FUNC_S *pDispFunc = HI_NULL; //to be continued with vdp
	
    if (enModId >= HI_ID_BUTT)
    {
        return HI_ERR_VENC_INVALID_PARA;
    }

    D_VENC_GET_CHN(u32VeChn, hVencChn);
    D_VENC_CHECK_CHN(u32VeChn);

    pstVenc = &g_stVencChn[u32VeChn];
	
	if (HI_TRUE == pstVenc->bEnable)
    {
        HI_ERR_VENC("VENC has already start! please attach before start!\n");
        return HI_ERR_VENC_CHN_INVALID_STAT;       
    }
    if ((enModId != HI_ID_VI) && (enModId != HI_ID_VO) &&(enModId != HI_ID_DISP))
    {
        HI_ERR_VENC("ModId not surpport now, enModId=%x!\n", enModId);
        return HI_ERR_VENC_INVALID_PARA;
    }

    if (pstVenc->hSource != HI_INVALID_HANDLE)
    {
        HI_ERR_VENC("Venc%d already attached to %#x!\n", u32VeChn, pstVenc->hSource);
        return HI_ERR_VENC_CHN_INVALID_STAT;
    }

#if 0    
    switch (enModId)
    {
        case HI_ID_VI:
        {

            HI_DRV_MODULE_GetFunction(HI_ID_VI, (HI_VOID**)&pViFunc);
            if (HI_NULL != pViFunc)
            {
                ret = pViFunc->pfnViGetUsrID(hSrc & 0xff, HI_ID_VENC, &(pstVenc->u32SrcUser));
                if (HI_SUCCESS != ret)
                {
                    HI_ERR_VENC("Attach to VI failed, Ret=%#x.\n", ret);
                    return ret;
                }
    
                stSrcInfo.handle = pstVenc->u32SrcUser;
                stSrcInfo.pfGetImage = (VE_IMAGE_FUNC)(pViFunc->pfnViAcquireFrame);
                stSrcInfo.pfPutImage = (VE_IMAGE_FUNC)(pViFunc->pfnViReleaseFrame);
            }      

            break;
			
        }
        case HI_ID_VO:
        {
            HI_DRV_MODULE_GetFunction(HI_ID_VO, (HI_VOID**)&pVoFunc);
            if (HI_NULL != pVoFunc)
            {
                stSrcInfo.handle = hSrc;
                stSrcInfo.pfGetImage = (VE_IMAGE_FUNC)(pVoFunc->FN_AcquireFrame);
                stSrcInfo.pfPutImage = (VE_IMAGE_FUNC)(pVoFunc->FN_ReleaseFrame);
            }
            ret = VENC_DRV_EflAttachInput(hVencChn, &stSrcInfo);
            break;
        }
        default:
            break;
    }
#endif

    if ( HI_ID_DISP == enModId )              
    {
           ret = HI_DRV_MODULE_GetFunction(HI_ID_DISP, (HI_VOID**)&pDispFunc);
		   if (ret)
		   {
		      HI_ERR_VENC("GetFunction for Module(%d),failed!\n",HI_ID_DISP);
		      return HI_FAILURE;
		   }
            if (HI_NULL != pDispFunc)
            {
                stSrcInfo.handle     = hSrc;
                stSrcInfo.pfGetImage = VENC_DRV_EflGetImage;
                stSrcInfo.pfPutImage = (VE_IMAGE_FUNC)(pDispFunc->pfnDispRlsCastFrm);
                stSrcInfo.pfDetachFunc = (VE_DETACH_FUNC)(pDispFunc->pfnDispExtDeAttach);
                stSrcInfo.pfChangeInfo = NULL;
            }
            ret = VENC_DRV_EflAttachInput(hVencChn, &stSrcInfo);
    }

	if (HI_SUCCESS == ret)
	{
	    pstVenc->enSrcModId   = enModId;
        pstVenc->hSource      = hSrc;
        pstVenc->bFrameBufMng = HI_TRUE;
        HI_INFO_VENC("VENC%d attchInputOK, srcHdl:%#x, UserHdl:%#x.\n", u32VeChn, pstVenc->hSource, pstVenc->u32SrcUser);
	}
	return ret;
}

HI_S32 VENC_DRV_SetSrcInfo(HI_HANDLE hVencChn,HI_DRV_VENC_SRC_INFO_S *pstSrcInfo)
{
   HI_S32 s32Ret;
   HI_U32 u32VeChn = 0;
   VeduEfl_SrcInfo_S stSrcInfo;
   OPTM_VENC_CHN_S *pstVenc;
   VeduEfl_EncPara_S  *pEncPara;
   D_VENC_GET_CHN(u32VeChn, hVencChn);
   D_VENC_CHECK_CHN(u32VeChn);
   D_VENC_CHECK_PTR(pstSrcInfo);
   pstVenc = &g_stVencChn[u32VeChn];
   pEncPara= (VeduEfl_EncPara_S *)g_stVencChn[u32VeChn].hVEncHandle;
   
   if (pstVenc->hSource == HI_INVALID_HANDLE)
   {
       HI_ERR_VENC("Venc%d haven't attach any src!\n", u32VeChn);
       return HI_ERR_VENC_CHN_INVALID_STAT;
   }
   
   switch(pstVenc->enSrcModId)
   {
      case HI_ID_VI:
	  	   D_VENC_CHECK_PTR(pstSrcInfo->pfChangeInfo);
		   s32Ret =(pstSrcInfo->pfChangeInfo)(pstSrcInfo->hSrc,pEncPara->PicWidth,pEncPara->PicHeight);
		   if (HI_SUCCESS != s32Ret)
		   {
		      HI_ERR_VENC("The first time SetInfo to VI failed!ret = %x\n",s32Ret);
			  pstVenc->hSource      = HI_INVALID_HANDLE;
			  pstVenc->enSrcModId   = HI_ID_BUTT;
	          pstVenc->bFrameBufMng = HI_TRUE;		  
		      return HI_FAILURE;
		   }
           stSrcInfo.handle       = pstSrcInfo->hSrc;
	       stSrcInfo.pfGetImage   = VENC_DRV_EflGetImage;                   
	       stSrcInfo.pfPutImage   = (VE_IMAGE_FUNC)pstSrcInfo->pfRlsFrame;
	       stSrcInfo.pfChangeInfo = (VE_CHANGE_INFO_FUNC)pstSrcInfo->pfChangeInfo;    
		   pstVenc->bFrameBufMng = HI_TRUE;
        break;
      case HI_ID_VO:
           D_VENC_CHECK_PTR(pstSrcInfo->pfChangeInfo);
		   s32Ret =(pstSrcInfo->pfChangeInfo)(pstSrcInfo->hSrc,pEncPara->PicWidth,pEncPara->PicHeight);
		   if (HI_SUCCESS != s32Ret)
		   {
		      HI_ERR_VENC("The first time SetInfo to WINDOW failed!ret = %x\n",s32Ret);
			  pstVenc->hSource      = HI_INVALID_HANDLE;
			  pstVenc->enSrcModId   = HI_ID_BUTT;
	          pstVenc->bFrameBufMng = HI_TRUE;		  
		      return HI_FAILURE;
		   }
	  	   if (pstSrcInfo->pfAcqFrame != NULL)
	  	   {
	  	       stSrcInfo.pfGetImage   = (VE_IMAGE_FUNC)pstSrcInfo->pfAcqFrame;
			   pstVenc->bFrameBufMng  = HI_FALSE;
	  	   }
		   else
		   {
		       stSrcInfo.pfGetImage   = VENC_DRV_EflGetImage;
		   }
           stSrcInfo.handle       = pstSrcInfo->hSrc;              
	       stSrcInfo.pfPutImage   = (VE_IMAGE_FUNC)pstSrcInfo->pfRlsFrame;
	       stSrcInfo.pfChangeInfo = (VE_CHANGE_INFO_FUNC)pstSrcInfo->pfChangeInfo;  
        break;
      default:
        HI_ERR_VENC("VENC not support set Src to Mod(%d)\n",pstVenc->enSrcModId);
        return HI_ERR_VENC_INVALID_PARA; 
   } 
   s32Ret = VENC_DRV_EflAttachInput(hVencChn, &stSrcInfo);
   return s32Ret;
}

HI_S32 VENC_DRV_DetachInput(HI_HANDLE hVencChn, HI_HANDLE hSrc, HI_MOD_ID_E enModId )
{
    HI_U32 u32VeChn = 0;
    //HI_S32 s32Ret = HI_FAILURE;
    OPTM_VENC_CHN_S *pstVenc;
    VeduEfl_SrcInfo_S stSrcInfo = {0};
    //VI_EXPORT_FUNC_S *pViFunc = HI_NULL;

    if (enModId >= HI_ID_BUTT)
    {
        return HI_ERR_VENC_CHN_NO_ATTACH;
    }

    D_VENC_GET_CHN(u32VeChn, hVencChn);
    D_VENC_CHECK_CHN(u32VeChn);

    pstVenc = &g_stVencChn[u32VeChn];
    if (pstVenc->hSource == HI_INVALID_HANDLE)
    {
        HI_WARN_VENC("Venc%d NOT attached.\n", u32VeChn);
        return HI_ERR_VENC_CHN_NO_ATTACH;
    }

    if (pstVenc->hSource != hSrc)
    {
        HI_ERR_VENC("Venc%d NOT attached to %#x, but attached to %#x.\n", u32VeChn, hSrc, pstVenc->hSource);
        return HI_ERR_VENC_CHN_INVALID_STAT;
    }

    if ((enModId != HI_ID_VI) && (enModId != HI_ID_VO)&&(enModId != HI_ID_DISP))
    {
        HI_ERR_VENC("Venc Detach, ModId not surpport now, enModId=%x!\n", enModId);
        return HI_ERR_VENC_INVALID_PARA;
    }

    //VENC must be stop working
    if (pstVenc->bEnable)
    {
        //HI_ERR_VENC("CanNOT detachInput when VENC is run.\n");
        //return HI_ERR_VENC_CHN_INVALID_STAT;
        VENC_DRV_StopReceivePic(hVencChn);
        
    }

#if 0
    switch (enModId)
    {
    case HI_ID_VI:
    {
        stSrcInfo.handle = HI_INVALID_HANDLE;
        stSrcInfo.pfGetImage = HI_NULL;
        stSrcInfo.pfPutImage = HI_NULL;


        HI_DRV_MODULE_GetFunction(HI_ID_VI, (HI_VOID**)&pViFunc);
        if (HI_NULL != pViFunc)
        {
            s32Ret = pViFunc->pfnViPutUsrID(hSrc & 0xff, pstVenc->u32SrcUser);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_VENC("ViuPutUsrID failed, Ret=%#x.\n", s32Ret);
                return s32Ret;
            }
        }
        break;
    }
    case HI_ID_VO:
    {
        stSrcInfo.handle = HI_INVALID_HANDLE;
        stSrcInfo.pfGetImage = HI_NULL;
        stSrcInfo.pfPutImage = HI_NULL;
        break;
    }
    default:
        break;
    }
#endif	

    stSrcInfo.handle      = HI_INVALID_HANDLE;
    stSrcInfo.pfGetImage  = HI_NULL;
    stSrcInfo.pfPutImage  = HI_NULL;
	stSrcInfo.pfChangeInfo= HI_NULL;
	stSrcInfo.pfDetachFunc= HI_NULL;

    VENC_DRV_EflDetachInput(hVencChn, &stSrcInfo);
    HI_INFO_VENC("VENC%d dettchInputOK, srcHdl:%#x, UserHdl:%#x.\n", u32VeChn, pstVenc->hSource, pstVenc->u32SrcUser);

    g_stVencChn[u32VeChn].enSrcModId = HI_ID_BUTT;
    g_stVencChn[u32VeChn].hSource = HI_INVALID_HANDLE;
	g_stVencChn[u32VeChn].bFrameBufMng = HI_TRUE;

    return HI_SUCCESS;
}

HI_S32 VENC_DRV_AcquireStream(HI_HANDLE hVencChn, HI_UNF_VENC_STREAM_S *pstStream, HI_U32 u32TimeoutMs,
                          VENC_BUF_OFFSET_S *pstBufOffSet)
{
    HI_S32 s32Ret   = -1;
    HI_S32 u32VeChn = 0;
	unsigned long flags;
    VeduEfl_NALU_S stVeduPacket;
	VeduEfl_EncPara_S *pstEncChnPara = HI_NULL;
    //extern VENC_PROC_WRITE_S g_VencProcWrite;
    static HI_BOOL bTagFirstTimeSave = HI_TRUE;
    static HI_U32 u32SaveFrameStartCount = 0;
    VeduEfl_StatInfo_S StatInfo;
    HI_U32 u32SkipFrmNum = 0;
    D_VENC_CHECK_PTR(pstStream);
    D_VENC_CHECK_PTR(pstBufOffSet);


    D_VENC_GET_CHN(u32VeChn, hVencChn);
    D_VENC_CHECK_CHN(u32VeChn);

    spin_lock_irqsave(&g_SendFrame_Lock[u32VeChn],flags);

    pstEncChnPara = (VeduEfl_EncPara_S*)g_stVencChn[u32VeChn].hVEncHandle;
	if(!pstEncChnPara || (g_stVencChn[u32VeChn].hVEncHandle == HI_INVALID_HANDLE))
	{
	   spin_unlock_irqrestore(&g_SendFrame_Lock[u32VeChn],flags);	
	   return HI_ERR_VENC_CHN_NOT_EXIST;
	}
	else
	{
	   pstEncChnPara->stStat.GetStreamNumTry++; 
	}
	spin_unlock_irqrestore(&g_SendFrame_Lock[u32VeChn],flags);	
	
    if (VENC_DRV_EflGetStreamLen(hVencChn) <= 0)
    {
        if (u32TimeoutMs == 0)
        {
            return HI_ERR_VENC_BUF_EMPTY;

        }
        else 
        {
            s32Ret = VENC_DRV_OsalWaitEvent(&g_VencWait_Stream[u32VeChn], u32TimeoutMs);
            if (HI_FAILURE == s32Ret)
            {
                return HI_ERR_VENC_BUF_EMPTY;
            }

            s32Ret = VENC_DRV_EflGetStreamLen(hVencChn);
            if (s32Ret <= 0)
            {
                return HI_ERR_VENC_BUF_EMPTY;
            }
        }
    }

    s32Ret = VENC_DRV_EflGetBitStream(hVencChn, &stVeduPacket);
    if (s32Ret != HI_SUCCESS)
    {
        return HI_ERR_VENC_BUF_EMPTY;
    }
	
    pstEncChnPara->stStat.GetStreamNumOK++;

#if 1	
	if (stVeduPacket.SlcLen[1] > 0)
	{
        memcpy(&g_stVencChn[u32VeChn].stChnPacket, &stVeduPacket, sizeof(stVeduPacket));
	}
#else
     memcpy(&g_stVencChn[u32VeChn].stChnPacket, &stVeduPacket, sizeof(stVeduPacket));
#endif
    pstStream->pu8Addr      = stVeduPacket.pVirtAddr[0];
    pstStream->u32SlcLen    = stVeduPacket.SlcLen[0]+stVeduPacket.SlcLen[1];
    pstStream->u32PtsMs     = stVeduPacket.PTS0;
  
    pstStream->bFrameEnd = (0 == stVeduPacket.bFrameEnd) ? HI_FALSE : HI_TRUE;
    pstStream->enDataType.enH264EType = stVeduPacket.NaluType;
    if (pstStream->u32SlcLen > 0) 
    {
        pstBufOffSet->u32StrmBufOffset[0]
        = stVeduPacket.PhyAddr[0] - g_stVencChn[u32VeChn].StrmBufAddr;
    }

    /*
    if(HI_UNF_VENC_TYPE_H264==g_stVencChn[s32VeChn].eVencType)
    {
        pstStream->enDataType.enH264EType=*((HI_CHAR*)stVeduPacket.pVirtAddr[0]+4)&0x1f;
    }
     */

    /*
    HI_INFO_VENC("GetOK, Chn%d, %d,%#x / %d,%#x.\n", s32VeChn,
                    pstPacket->SlcLen[0], pstPacket->PhyAddr[0],
                    pstPacket->SlcLen[1], pstPacket->PhyAddr[1]);
     */
    HI_TRACE(HI_LOG_LEVEL_INFO, HI_ID_VSYNC, "PTS=%u.\n", pstStream->u32PtsMs);

    if ((HI_TRUE == g_stVencChn[u32VeChn].stProcWrite.bTimeModeRun) || (HI_TRUE == g_stVencChn[u32VeChn].stProcWrite.bFrameModeRun))
    {
        s32Ret = VENC_DRV_EflQueryStatInfo(g_stVencChn[u32VeChn].hVEncHandle, &StatInfo);
        if (s32Ret != HI_SUCCESS)
        {
            HI_ERR_VENC("VeduEfl_QueryStatInfo failed.\n");
            return HI_FAILURE;
        }

        u32SkipFrmNum = StatInfo.QuickEncodeSkip + StatInfo.SamePTSSkip + StatInfo.ErrCfgSkip
			          + StatInfo.FrmRcCtrlSkip + StatInfo.TooFewBufferSkip;
			
        /* request one I frame and record u32SaveFrameStartCount to compare with g_VencSaveFrameCount when save file firstly */
        if (HI_TRUE == bTagFirstTimeSave)
        {
            VENC_DRV_EflRequestIframe(hVencChn);
            bTagFirstTimeSave = HI_FALSE;
            u32SaveFrameStartCount = StatInfo.GetFrameNumOK - u32SkipFrmNum;
            return HI_SUCCESS;
        }

        /* compare with u32FrameModeCount each time */
        if ((HI_TRUE == g_stVencChn[u32VeChn].stProcWrite.bFrameModeRun)
            && (StatInfo.GetFrameNumOK - u32SkipFrmNum - u32SaveFrameStartCount)
            > g_stVencChn[u32VeChn].stProcWrite.u32FrameModeCount)
        {
            /* time to stop save file */
            g_stVencChn[u32VeChn].stProcWrite.bFrameModeRun = HI_FALSE;
            return HI_SUCCESS;
        }
        if (pstStream->u32SlcLen > 0)
        {
            s32Ret = VENC_DRV_OsalFwrite(pstStream->pu8Addr, pstStream->u32SlcLen ,g_stVencChn[u32VeChn].stProcWrite.fpSaveFile);
            if (s32Ret != pstStream->u32SlcLen)
            {
                HI_ERR_VENC("VeduOsal_Fwrite failed.\n");
                g_stVencChn[u32VeChn].stProcWrite.bTimeModeRun  = HI_FALSE;
                g_stVencChn[u32VeChn].stProcWrite.bFrameModeRun = HI_FALSE;
            }
        }
    }
    /* end of save file */
    else
    {
        bTagFirstTimeSave = HI_TRUE;
    }
    return HI_SUCCESS;
}

HI_S32 VENC_DRV_ReleaseStream(HI_HANDLE hVencChn, HI_UNF_VENC_STREAM_S *pstStream)
{
    HI_U32 u32VeChn = 0;
    HI_S32 s32Ret = 0;
    VeduEfl_NALU_S stVeduPacket;
    //VeduEfl_EncPara_S  *pstEncChnPara;
    D_VENC_CHECK_PTR(pstStream);

    D_VENC_GET_CHN(u32VeChn, hVencChn);
    D_VENC_CHECK_CHN(u32VeChn);

    //pstEncChnPara = (VeduEfl_EncPara_S*)hVencChn;

    pstStream->pu8Addr += g_stVencChn[u32VeChn].StrmBufAddr;                /*phyaddr[0]*/
    pstStream->pu8Addr  = (HI_U8 *)phys_to_virt((phys_addr_t)pstStream->pu8Addr);
   
#if 1   
	if (g_stVencChn[u32VeChn].stChnPacket.pVirtAddr[0] == pstStream->pu8Addr)
	{
	   memcpy(&stVeduPacket, &g_stVencChn[u32VeChn].stChnPacket, sizeof(stVeduPacket));
	   memset(&g_stVencChn[u32VeChn].stChnPacket,0,sizeof(VeduEfl_NALU_S));
	}
	else
	{
       stVeduPacket.pVirtAddr[0] = pstStream->pu8Addr ;
       stVeduPacket.SlcLen[0]    = pstStream->u32SlcLen;
	   stVeduPacket.pVirtAddr[1] = stVeduPacket.pVirtAddr[0]+ stVeduPacket.SlcLen[0];
       stVeduPacket.SlcLen[1]    = 0;
       stVeduPacket.PTS0         = pstStream->u32PtsMs;
       stVeduPacket.PTS1         = 0;
	   stVeduPacket.bFrameEnd    = (HI_U32)pstStream->bFrameEnd;
       stVeduPacket.NaluType     = pstStream->enDataType.enH264EType;	
	}
#else
    memcpy(&stVeduPacket, &g_stVencChn[u32VeChn].stChnPacket, sizeof(stVeduPacket));
#endif

    s32Ret = VENC_DRV_EflSkpBitStream(hVencChn, &stVeduPacket);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VENC("Release stream failed, ret= %#x.\n", s32Ret);
        return HI_ERR_VENC_CHN_RELEASE_ERR;
    }

    return HI_SUCCESS;
}

HI_S32 VENC_DRV_StartReceivePic(HI_U32 EncHandle)
{
    HI_S32 s32Ret   = HI_FAILURE;
    HI_U32 u32VeChn = 0;
    VeduEfl_EncPara_S  *pstEncChnPara;
    D_VENC_GET_CHN(u32VeChn, EncHandle);
    D_VENC_CHECK_CHN(u32VeChn);

    pstEncChnPara = (VeduEfl_EncPara_S *)EncHandle;
#if 0
    if (g_stVencChn[u32VeChn].hSource == HI_INVALID_HANDLE)
    {
        HI_ERR_VENC("source venc%d is NOT Attached.\n", u32VeChn);
        return HI_ERR_VENC_CHN_NO_ATTACH;
    }
#endif
    if (HI_TRUE == g_stVencChn[u32VeChn].bEnable)
    {
        return HI_SUCCESS;
    }

    s32Ret = VENC_DRV_EflStartVenc(EncHandle);
    if (HI_SUCCESS == s32Ret)
    {
        g_stVencChn[u32VeChn].bEnable = HI_TRUE;

        if ( g_stVencChn[u32VeChn].enSrcModId >= HI_ID_BUTT)  /*non attach mode*/
        {
               if (g_stVencChn[u32VeChn].bOMXChn)
               {
                  pstEncChnPara->stSrcInfo.pfGetImage = HI_NULL;
				  pstEncChnPara->stSrcInfo.pfGetImage_OMX = VENC_DRV_EflGetImage_OMX;
               }
			   else
			   {
			      pstEncChnPara->stSrcInfo.pfGetImage = VENC_DRV_EflGetImage;
				  pstEncChnPara->stSrcInfo.pfGetImage_OMX = HI_NULL;
			   }
               
               pstEncChnPara->stSrcInfo.pfPutImage = VENC_DRV_EflPutImage;          
			   g_stVencChn[u32VeChn].stSrcInfo = pstEncChnPara->stSrcInfo;
			   g_stVencChn[u32VeChn].bNeedVPSS = HI_TRUE;
        }
        do_gettimeofday(&(g_stVencChn[u32VeChn].stTimeStart));
        HI_INFO_VENC("start Chn %d/%#x. OK\n", u32VeChn, EncHandle);
        VENC_DRV_EflRequestIframe(EncHandle);
    }
    else
    {
        s32Ret = HI_ERR_VENC_INVALID_CHNID;
    }
    return s32Ret;
}

HI_S32 VENC_DRV_StopReceivePic(HI_U32 EncHandle)
{
    HI_S32 s32Ret   = HI_FAILURE;
    HI_U32 u32VeChn = 0;

    D_VENC_GET_CHN(u32VeChn, EncHandle);
    D_VENC_CHECK_CHN(u32VeChn);

    if (HI_FALSE == g_stVencChn[u32VeChn].bEnable)
    {
        return HI_SUCCESS;
    }

    s32Ret = VENC_DRV_EflStopVenc(EncHandle);
    if (HI_SUCCESS == s32Ret)
    {
        g_stVencChn[u32VeChn].bEnable = HI_FALSE;
		g_stVencChn[u32VeChn].bNeedVPSS = HI_FALSE;
        HI_INFO_VENC("stop Chn %d/%#x. OK\n", u32VeChn, EncHandle);
    }
    return s32Ret;
}

HI_S32 VENC_DRV_SetAttr(HI_U32 EncHandle, HI_UNF_VENC_CHN_ATTR_S *pstAttr)
{
    HI_S32 s32Ret   = -1;
    HI_U32 u32VeChn = 0;
    HI_BOOL RcFlag  = HI_FALSE;
	HI_BOOL ErrCfg  = HI_FALSE;
    OPTM_VENC_CHN_S *pstVenc;
    VeduEfl_RcAttr_S RcAttrCfg;
	HI_DRV_VPSS_PORT_CFG_S stPort0Cfg;
    VeduEfl_EncPara_S* pstEncChnPara = (VeduEfl_EncPara_S*)EncHandle;
    
    D_VENC_GET_CHN(u32VeChn, EncHandle);
    D_VENC_CHECK_CHN(u32VeChn);
	D_VENC_CHECK_PTR(pstAttr);
    pstVenc = &g_stVencChn[u32VeChn];

    ErrCfg |= (pstVenc->stChnUserCfg.enVencType != pstAttr->enVencType);
	ErrCfg |= (pstVenc->stChnUserCfg.enCapLevel != pstAttr->enCapLevel);
	ErrCfg |= (pstVenc->stChnUserCfg.bSlcSplitEn != pstAttr->bSlcSplitEn);
	ErrCfg |= (pstVenc->stChnUserCfg.u32RotationAngle!= pstAttr->u32RotationAngle);
	ErrCfg |= (pstVenc->stChnUserCfg.u32StrmBufSize!= pstAttr->u32StrmBufSize);

	if (pstVenc->bEnable)   
	{
	    ErrCfg |= (pstVenc->stChnUserCfg.enVencProfile!= pstAttr->enVencProfile);
	}
    if (HI_TRUE == ErrCfg)
    {
        HI_ERR_VENC("VENC not support this active change!\n");
        return HI_ERR_VENC_NOT_SUPPORT;
    }

    if ((pstVenc->stChnUserCfg.u32Height  != pstAttr->u32Height)                //should be change
        || (pstVenc->stChnUserCfg.u32Width!= pstAttr->u32Width))
    {
		if (HI_ID_BUTT != pstVenc->enSrcModId)     //attach mode
		{
		    if (HI_ID_DISP == pstVenc->enSrcModId)    /*temp cast isn't support this change!*/
		    {
		       HI_ERR_VENC("VENC attach Cast: not support this change!\n");
		       return HI_ERR_VENC_NOT_SUPPORT;
		    }
			
			if(HI_SUCCESS != (pstEncChnPara->stSrcInfo.pfChangeInfo)(pstEncChnPara->stSrcInfo.handle,pstAttr->u32Width,pstAttr->u32Height))
		    {
		       HI_ERR_VENC("Src Handle(%x) change Info failed!.\n", pstEncChnPara->stSrcInfo.handle);
		       return HI_FAILURE;
		    }
		    if (HI_FALSE == pstVenc->bEnable)   /*if not start encode release all frame*/
		    {
		       VENC_DRV_EflRlsAllFrame( EncHandle );
		    }
		} 
		
	    (pVpssFunc->pfnVpssGetPortCfg)(pstVenc->hPort[0],&stPort0Cfg);
		 stPort0Cfg.s32OutputWidth    = pstAttr->u32Width;
         stPort0Cfg.s32OutputHeight   = pstAttr->u32Height;
		 if(HI_SUCCESS != (pVpssFunc->pfnVpssSetPortCfg)(pstVenc->hPort[0],  &stPort0Cfg))
	     {
	        HI_ERR_VENC("VPSS Handle(%x) SetPortCfg failed!.\n", pstVenc->hPort[0]);
	        return HI_FAILURE;
	     }
		}

    pstVenc->stChnUserCfg.u32Height = pstAttr->u32Height;
    pstVenc->stChnUserCfg.u32Width  = pstAttr->u32Width;
    RcFlag |= (pstVenc->stChnUserCfg.u32TargetBitRate != pstAttr->u32TargetBitRate);
    RcFlag |= (pstVenc->stChnUserCfg.u32InputFrmRate  != pstAttr->u32InputFrmRate);
    RcFlag |= (pstVenc->stChnUserCfg.u32TargetFrmRate != pstAttr->u32TargetFrmRate);
    RcFlag |= (pstVenc->stChnUserCfg.u32Gop           != pstAttr->u32Gop);
    if (HI_TRUE == RcFlag)             
    {
        RcAttrCfg.BitRate    = pstAttr->u32TargetBitRate;
        RcAttrCfg.InFrmRate  = pstAttr->u32InputFrmRate;
        RcAttrCfg.OutFrmRate = pstAttr->u32TargetFrmRate;
		RcAttrCfg.Gop        = pstAttr->u32Gop;

        s32Ret = VENC_DRV_EflRcSetAttr(pstVenc->hVEncHandle, &RcAttrCfg);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VENC("config venc Rate Control Attribute err:%#x.\n", s32Ret);
            return HI_FAILURE;
        }
    }
    
    if (pstVenc->stChnUserCfg.u8Priority != pstAttr->u8Priority)
    {
        HI_U32 PriorityID;
        D_VENC_GET_PRIORITY_ID(u32VeChn, PriorityID);
		D_VENC_CHECK_CHN(PriorityID);
        PriorityTab[1][PriorityID] = pstAttr->u8Priority;
        VENC_DRV_EflSortPriority();
    }

    pstVenc->stChnUserCfg.u32Gop           = pstAttr->u32Gop;
    pstVenc->stChnUserCfg.u8Priority       = pstAttr->u8Priority;
    pstVenc->stChnUserCfg.u32TargetBitRate = pstAttr->u32TargetBitRate;
    pstVenc->stChnUserCfg.u32InputFrmRate  = pstAttr->u32InputFrmRate;
    pstVenc->stChnUserCfg.u32TargetFrmRate = pstAttr->u32TargetFrmRate;
    pstVenc->stChnUserCfg.u32MaxQp         = pstAttr->u32MaxQp;
    pstVenc->stChnUserCfg.u32MinQp         = pstAttr->u32MinQp;
    pstVenc->stChnUserCfg.bQuickEncode     = pstAttr->bQuickEncode;
    pstVenc->stChnUserCfg.enVencProfile    = pstAttr->enVencProfile;
    
    pstEncChnPara->MinQp                   = pstAttr->u32MinQp;
	pstEncChnPara->MaxQp                   = pstAttr->u32MaxQp;
    pstEncChnPara->QuickEncode             = pstAttr->bQuickEncode;
    return HI_SUCCESS;
}

HI_S32 VENC_DRV_GetAttr(HI_U32 EncHandle, HI_UNF_VENC_CHN_ATTR_S *pstAttr)
{
    HI_U32 u32VeChn = 0;
    OPTM_VENC_CHN_S *pstVenc;

    D_VENC_GET_CHN(u32VeChn, EncHandle);
    D_VENC_CHECK_CHN(u32VeChn);
	D_VENC_CHECK_PTR(pstAttr);
    pstVenc = &g_stVencChn[u32VeChn];

    *pstAttr = pstVenc->stChnUserCfg;

    return HI_SUCCESS;
}

HI_S32 VENC_DRV_RequestIFrame(HI_U32 EncHandle)
{
    HI_S32 s32Ret   = -1;
    HI_S32 u32VeChn = 0;
    OPTM_VENC_CHN_S *pstVenc;

    D_VENC_GET_CHN(u32VeChn, EncHandle);
    D_VENC_CHECK_CHN(u32VeChn);
    pstVenc = &g_stVencChn[u32VeChn];

    s32Ret = VENC_DRV_EflRequestIframe(pstVenc->hVEncHandle);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VENC("request IFrame err:%#x.\n", s32Ret);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 VENC_DRV_QueueFrame(HI_HANDLE hVencChn, HI_UNF_VIDEO_FRAME_INFO_S *pstFrameInfo )
{
   HI_S32 s32Ret;
   HI_U32 u32VeChn = 0;
   HI_DRV_VIDEO_FRAME_S stFrame;
   VeduEfl_EncPara_S *pstEncChnPara;
   
   D_VENC_GET_CHN(u32VeChn, hVencChn);
   D_VENC_CHECK_CHN(u32VeChn);
   D_VENC_CHECK_PTR(pstFrameInfo);
   
   pstEncChnPara = (VeduEfl_EncPara_S *)hVencChn;
   if (HI_TRUE == pstEncChnPara->bNeverEnc)
   {
       if (HI_ID_BUTT == g_stVencChn[u32VeChn].enSrcModId)   //如果未绑定则设置
       {
           pstEncChnPara->stSrcInfo.pfGetImage = VENC_DRV_EflGetImage;
           pstEncChnPara->stSrcInfo.pfPutImage = VENC_DRV_EflPutImage;
       }
       else
       {
           HI_ERR_VENC("the venc had already attach another sourse!QueueFrame is  invalid!! \n");
           return HI_ERR_VENC_CHN_INVALID_STAT;
       }
   }
   s32Ret = Convert_FrameStructure(pstFrameInfo,&stFrame);
   
   if (HI_TRUE == pstEncChnPara->bNeverEnc)
   {
      VENC_DRV_EflJudgeVPSS(g_stVencChn[u32VeChn].hVEncHandle , &stFrame);
   }
   
   if (HI_TRUE == g_stVencChn[u32VeChn].bNeedVPSS)
   {
      if (g_stVencChn[u32VeChn].stProcWrite.bSaveYUVFileRun)     //save the yuv before send to vpss
      {
          VENC_DRV_DbgWriteYUV(&stFrame, g_stVencChn[u32VeChn].stProcWrite.YUVFileName);
      }
      stFrame.bProgressive = 1;
      s32Ret = (pVpssFunc->pfnVpssPutImage)(g_stVencChn[u32VeChn].hVPSS,&stFrame); 
	  if (!s32Ret)
	  {
	     pstEncChnPara->stStat.QueueNum++;
	  }
   }
   else
   {
      s32Ret = VENC_DRV_EflQueueFrame(hVencChn, &stFrame);
   }
   
   if (HI_SUCCESS != s32Ret)
   {
        return HI_FAILURE;
   }
   return HI_SUCCESS;
}

HI_S32 VENC_DRV_DequeueFrame(HI_HANDLE hVencChn, HI_UNF_VIDEO_FRAME_INFO_S *pstFrameInfo )
{
   HI_S32 s32Ret;
   HI_S32 u32VeChn = 0;
   HI_DRV_VIDEO_FRAME_S stFrame;
   VeduEfl_EncPara_S *pstEncChnPara;
   D_VENC_GET_CHN(u32VeChn, hVencChn);
   D_VENC_CHECK_CHN(u32VeChn);
   D_VENC_CHECK_PTR(pstFrameInfo);
   pstEncChnPara = (VeduEfl_EncPara_S *)hVencChn;
   if (g_stVencChn[u32VeChn].enSrcModId < HI_ID_BUTT)
   {
      HI_ERR_VENC("the venc had already attach another sourse!DequeueFrame is  invalid!! \n");
      return HI_ERR_VENC_CHN_INVALID_STAT;   
   }

   if (HI_TRUE == g_stVencChn[u32VeChn].bNeedVPSS)
   {
     s32Ret = (pVpssFunc->pfnVpssGetImage)(g_stVencChn[u32VeChn].hVPSS,&stFrame);
	 if (!s32Ret)
	 {
	    pstEncChnPara->stStat.DequeueNum--;
	 }
   }
   else
   {
     s32Ret = VENC_DRV_EflDequeueFrame(hVencChn, &stFrame);
   }

   if (HI_SUCCESS != s32Ret)
   {
        return HI_FAILURE;
   }
   s32Ret = Convert_DrvFrameStructure(&stFrame, pstFrameInfo);
   return HI_SUCCESS;
}

/*new function interface*/

HI_S32 VENC_DRV_Init(HI_VOID)
{
    HI_S32 s32Ret = HI_FAILURE;
    
    s32Ret = HI_DRV_MODULE_Register(HI_ID_VENC, "HI_VENC", (HI_VOID*)&s_VencExportFuncs);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VENC("HI_DRV_MODULE_Register failed, mode ID = 0x%08X\n", HI_ID_VENC);
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}

HI_VOID VENC_DRV_Exit(HI_VOID)
{
    HI_DRV_MODULE_UnRegister(HI_ID_VENC);
    return;
}


HI_S32 HI_DRV_VENC_Init(HI_VOID)
{
    HI_S32 s32Ret = 0;

    /*Init the VENC device*/
    s32Ret = VENC_DRV_Init();
    if(s32Ret != HI_SUCCESS)
    {
        HI_ERR_VENC("Init VENC drv fail!\n");
        return HI_FAILURE;
    }

    /*open vedu clock*/
    VENC_DRV_BoardInit();

    /*creat thread to manage channel*/
    s32Ret = VENC_DRV_EflOpenVedu();
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_VENC("VeduEfl_OpenVedu failed, ret=%d\n", s32Ret);
        return HI_FAILURE;
    }
    return s32Ret;
}

HI_S32 HI_DRV_VENC_DeInit(HI_VOID)
{

    HI_S32 s32Ret = 0;
    HI_U32 i = 0;

    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        if (g_stVencChn[i].hVEncHandle == HI_INVALID_HANDLE)
        {
            break;
        }
    }
    for (i = 0; i < VENC_MAX_CHN_NUM; i++)
    {
        if (/*(g_stVencChn[i].pWhichFile == ffile)&& */(g_stVencChn[i].hVEncHandle != HI_INVALID_HANDLE))
        {
            HI_INFO_VENC("Try VENC_DestroyChn %d/%#x.\n", i, g_stVencChn[i].hVEncHandle);
            s32Ret = VENC_DRV_DestroyChn(g_stVencChn[i].hVEncHandle);
            if (HI_SUCCESS != s32Ret)
            {
                HI_WARN_VENC("force DestroyChn %d failed, Ret=%#x.\n", i, s32Ret);
            }
            g_stVencChn[i].pWhichFile = HI_NULL;
        }
    }

    s32Ret = VENC_DRV_EflCloseVedu();
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_VENC("VeduEfl_CloseVedu failed, ret=%d\n", s32Ret);
        return HI_FAILURE;
    }

    /*close the venc lock*/
    VENC_DRV_BoardDeinit();

    VENC_DRV_Exit();
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VENC_GetDefaultAttr(HI_UNF_VENC_CHN_ATTR_S *pstAttr)
{
    if(NULL==pstAttr)
    {
        return HI_ERR_VENC_NULL_PTR;
    }
    pstAttr->u32Width=720;
    pstAttr->u32Height=576;
    pstAttr->enVencType=HI_UNF_VCODEC_TYPE_H264;
	pstAttr->enCapLevel=HI_UNF_VCODEC_CAP_LEVEL_D1;
    pstAttr->u32RotationAngle=0;

    pstAttr->bSlcSplitEn = HI_FALSE;
    //pstAttr->u32SplitSize =4;
    
    pstAttr->u32StrmBufSize = 720 * 576 * 2;   
    
    pstAttr->u32TargetBitRate = 4*1024*1024;    
    pstAttr->u32InputFrmRate = 25;    
    pstAttr->u32TargetFrmRate = 25;    
    pstAttr->u32Gop = 0x7fffffff;    
    pstAttr->u32MaxQp = 48;
    pstAttr->u32MinQp = 16;
    
    pstAttr->bQuickEncode = HI_FALSE;
    pstAttr->u8Priority   = 0;
    
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VENC_Create(HI_HANDLE *phVencChn, HI_UNF_VENC_CHN_ATTR_S *pstAttr,HI_BOOL bOMXChn, struct file  *pfile)
{
   VENC_CHN_INFO_S stVeInfo;   //no use output in the mode
   return VENC_DRV_CreateChn(phVencChn,pstAttr,&stVeInfo,bOMXChn,pfile);   
}

HI_S32 HI_DRV_VENC_Destroy(HI_HANDLE hVenc)
{
   return VENC_DRV_DestroyChn(hVenc);
}

HI_S32 HI_DRV_VENC_AttachInput(HI_HANDLE hVenc,HI_HANDLE hSrc)
{
    return VENC_DRV_AttachInput(hVenc, hSrc, ((hSrc & 0xff0000) >> 16));
}

HI_S32 HI_DRV_VENC_DetachInput(HI_HANDLE hVencChn)
{
    HI_U32 u32VeChn = 0;
    HI_HANDLE hSrc = 0;
    VeduEfl_EncPara_S *pstEncChnPara = NULL;
    D_VENC_GET_CHN(u32VeChn, hVencChn);
    D_VENC_CHECK_CHN(u32VeChn);
    pstEncChnPara = (VeduEfl_EncPara_S *)hVencChn;
    hSrc = pstEncChnPara->stSrcInfo.handle;
    return VENC_DRV_DetachInput(hVencChn,hSrc, ((hSrc & 0xff0000) >> 16));
}

HI_S32 HI_DRV_VENC_Start(HI_HANDLE hVenc)
{
    return VENC_DRV_StartReceivePic(hVenc);
}

HI_S32 HI_DRV_VENC_Stop(HI_HANDLE hVenc)
{
    return VENC_DRV_StopReceivePic(hVenc);
}

HI_S32 HI_DRV_VENC_AcquireStream(HI_HANDLE hVenc,HI_UNF_VENC_STREAM_S *pstStream, HI_U32 u32TimeoutMs)
{
   VENC_BUF_OFFSET_S stBufOffSet;    //no use output in the mode
   return VENC_DRV_AcquireStream(hVenc, pstStream, u32TimeoutMs, &stBufOffSet);
}

HI_S32 HI_DRV_VENC_ReleaseStream(HI_HANDLE hVenc, HI_UNF_VENC_STREAM_S *pstStream)
{
   return VENC_DRV_ReleaseStream(hVenc, pstStream);
}

HI_S32 HI_DRV_VENC_SetAttr(HI_HANDLE hVenc,HI_UNF_VENC_CHN_ATTR_S *pstAttr)
{
   return VENC_DRV_SetAttr(hVenc, pstAttr);
}

HI_S32 HI_DRV_VENC_GetAttr(HI_HANDLE hVenc, HI_UNF_VENC_CHN_ATTR_S *pstAttr)
{
   return VENC_DRV_GetAttr(hVenc, pstAttr);
}

HI_S32 HI_DRV_VENC_RequestIFrame(HI_HANDLE hVenc)
{
   return VENC_DRV_RequestIFrame(hVenc);
}

HI_S32 HI_DRV_VENC_QueueFrame(HI_HANDLE hVenc, HI_UNF_VIDEO_FRAME_INFO_S *pstFrameinfo)
{
   return VENC_DRV_QueueFrame(hVenc, pstFrameinfo );
}

HI_S32 HI_DRV_VENC_DequeueFrame(HI_HANDLE hVenc, HI_UNF_VIDEO_FRAME_INFO_S *pstFrameinfo)
{
   return VENC_DRV_DequeueFrame(hVenc, pstFrameinfo);
}


#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

