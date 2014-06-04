/*****************************************************************************
  Copyright (C), 2004-2050, Hisilicon Tech. Co., Ltd.
 ******************************************************************************
  File Name     : drv_omxvenc.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2013/08/21
  Last Modified :
  Description   :
  Function List :
  History       :
  1.Date        :
  Author        : l00228308
  Modification  : Created file
 ******************************************************************************/

#include "hal_venc.h"
#include "drv_vi_ext.h"
#include "drv_win_ext.h"
#include "drv_vpss_ext.h"
#include "drv_venc_ext.h"
#include "drv_disp_ext.h"
#include "hi_drv_module.h"
#include "hi_drv_file.h"
#include "drv_ndpt_ext.h"
#include "drv_venc_efl.h"
#include "drv_omxvenc_efl.h"
#include "drv_venc_osal.h"
#include "drv_venc_buf_mng.h"
#include "drv_omxvenc.h"
#include "hi_mpi_venc.h"
#include "hi_drv_video.h"
#include "hi_kernel_adapt.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#define VENC_MAX_FRAME_LEN 200000
extern OPTM_VENC_CHN_S g_stVencChn[VENC_MAX_CHN_NUM];


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



HI_S32 VENC_DRV_QueueFrame_OMX(HI_HANDLE hVencChn, venc_user_buf *pstFrameInfo )     //add
{
   HI_S32 s32Ret;
   HI_S32 s32VeChn = 0;
   VeduEfl_EncPara_S  *pEncPara ;
   
   D_VENC_GET_CHN(s32VeChn, hVencChn);
   if(VENC_MAX_CHN_NUM == s32VeChn )
   {
       HI_ERR_VENC("%s:: the handle(%x) does not start or even not be create either!\n",__func__,hVencChn);
       return HI_FAILURE;
   }
   pEncPara = (VeduEfl_EncPara_S *)hVencChn;
   s32Ret = VENC_DRV_EflPutMsg_OMX(pEncPara->FrameQueue_OMX,VENC_MSG_RESP_INPUT_DONE, 0, pstFrameInfo);
   if (!s32Ret)
   {
      pEncPara->stStat.QueueNum++;
   }
   return s32Ret;
}

HI_S32 VENC_DRV_QueueStream_OMX(HI_HANDLE hVencChn, venc_user_buf *pstFrameInfo )     //add
{
   HI_S32 s32Ret;
   HI_S32 s32VeChn = 0;
   VeduEfl_EncPara_S  *pEncPara ;
   
   D_VENC_GET_CHN(s32VeChn, hVencChn);
   if(VENC_MAX_CHN_NUM == s32VeChn )
   {
       HI_ERR_VENC("%s:: the handle(%x) does not start or even not be create either!\n",__func__,hVencChn);
       return HI_FAILURE;
   }
   pEncPara = (VeduEfl_EncPara_S *)hVencChn;
   s32Ret = VENC_DRV_EflPutMsg_OMX(pEncPara->StreamQueue_OMX,VENC_MSG_RESP_OUTPUT_DONE, 0, pstFrameInfo);
   if (!s32Ret)
   {
      pEncPara->stStat.StreamQueueNum++;
   }
   return s32Ret;
}

HI_S32 VENC_DRV_GetMessage_OMX(HI_HANDLE hVencChn, venc_msginfo *pmsg_info )
{
   HI_S32 s32Ret;
   HI_S32 s32VeChn = 0;
   venc_msginfo msg_info;
   VeduEfl_EncPara_S* pstEncChnPara;
   
   D_VENC_GET_CHN(s32VeChn, hVencChn);
   if(VENC_MAX_CHN_NUM == s32VeChn )
   {
       HI_ERR_VENC("%s:: the handle(%x) does not start or even not be create either!\n",__func__,hVencChn);
       return HI_FAILURE;
   }
   if(!pmsg_info)
   {
       HI_ERR_VENC("%s invalid param,LINE:%d\n", __func__,__LINE__);
       return HI_FAILURE;
   }
   pstEncChnPara = (VeduEfl_EncPara_S*)hVencChn;
   
   s32Ret = VENC_DRV_EflGetMsg_OMX(pstEncChnPara->MsgQueue_OMX, &msg_info);
   if (HI_SUCCESS != s32Ret)
   {
        return HI_FAILURE;
   }

   pstEncChnPara->stStat.MsgQueueNum--;
   memcpy(pmsg_info , &msg_info , sizeof(venc_msginfo));
   return HI_SUCCESS;
}

HI_S32 VENC_DRV_FlushPort_OMX(HI_HANDLE hVencChn, HI_U32 u32PortIndex)
{
   HI_S32 s32Ret;
   HI_S32 s32VeChn = 0;
   
   D_VENC_GET_CHN(s32VeChn, hVencChn);
   if(VENC_MAX_CHN_NUM == s32VeChn )
   {
       HI_ERR_VENC("%s:: the handle(%x) does not start or even not be create either!\n",__func__,hVencChn);
       return HI_FAILURE;
   }
   
   s32Ret = VENC_DRV_EflFlushPort_OMX(hVencChn,u32PortIndex,HI_FALSE);
   return s32Ret;
}



HI_S32 VENC_DRV_MMZ_Map_OMX(HI_HANDLE hVencChn, HI_MMZ_BUF_S *pMMZbuf )
{
   HI_S32 s32Ret;

   if(!pMMZbuf)
   {
      HI_ERR_VENC("%s:: bad input!!\n",__func__);
      return HI_FAILURE;
   }      
  
   s32Ret = VENC_DRV_EflMMapToKernel_OMX(hVencChn, pMMZbuf);
   if((s32Ret != HI_SUCCESS) || (NULL == pMMZbuf->kernel_viraddr))
   {
      HI_ERR_VENC("%s:: VENC_DRV_EflMMapToKernel failed!\n",__func__);
      return HI_FAILURE;
   }
   return HI_SUCCESS;
}

HI_S32 VENC_DRV_MMZ_UMMap_OMX(HI_HANDLE hVencChn, HI_MMZ_BUF_S *pMMZbuf )
{
   HI_S32 s32Ret;

   if(!pMMZbuf)
   {
      HI_ERR_VENC("%s:: bad input!!\n",__func__);
      return HI_FAILURE;
   }      
   
   s32Ret = VENC_DRV_EflUMMapToKernel_OMX(hVencChn, pMMZbuf);
   if( HI_SUCCESS != s32Ret )
   {
      HI_ERR_VENC("%s:: VENC_DRV_EflUMMapToKernel failed!\n",__func__);
      return HI_FAILURE;
   }
   return HI_SUCCESS;
}
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

