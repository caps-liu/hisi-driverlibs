/*========================================================================
Open MAX   Component: Video Decoder
This module contains the class definition for openMAX encoder component.
file:	vdec_drv_ctx.c
author: liucan l00180788
date:	26, DEC, 2011.
==========================================================================*/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>

#include <sys/ioctl.h>

#include <sys/types.h>


#include "omx_venc_drv.h"
#include "OMX_Types.h"
#include "drv_venc_ioctl.h"
#include "hi_drv_struct.h"

#include "hi_mpi_mem.h"
#include "omx_dbg.h"

#define VENC_CHECK_POINT_NULL( pSt )\
    do{\
        if (0 == pSt)\
        {\
           DEBUG_PRINT_ERROR("\n %s() input null point!!\n", __func__);\
           return -1;\
         }\
    }while(0)

static OMX_S32 venc_check_static_attr( venc_channel_S* pChnAttr)
{
     VENC_CHECK_POINT_NULL(pChnAttr);
     
     if( pChnAttr->chan_cfg.protocol != HI_UNF_VCODEC_TYPE_H264 )
     {
       DEBUG_PRINT_ERROR("\n %s() ,NOT support Type(%d) VENC channel.\n", __func__,pChnAttr->chan_cfg.protocol);
       return -1;
     }
     
     if ((pChnAttr->chan_cfg.frame_height < HI_VENC_MIN_HEIGTH)
        || (pChnAttr->chan_cfg.frame_width < HI_VENC_MIN_WIDTH))
     {
        DEBUG_PRINT_ERROR("Picture Width(%u) or Heigth(%u) too small.\n", pChnAttr->chan_cfg.frame_width, pChnAttr->chan_cfg.frame_height);
        return -1;
     }
     
     if ((pChnAttr->chan_cfg.frame_height > HI_VENC_MAX_HEIGTH) || (pChnAttr->chan_cfg.frame_width > HI_VENC_MAX_WIDTH))
     {
        DEBUG_PRINT_ERROR("Picture Width(%u) or Heigth(%u) too large.\n", pChnAttr->chan_cfg.frame_width, pChnAttr->chan_cfg.frame_height);
        return -1;
     }

     if ((pChnAttr->chan_cfg.frame_height % HI_VENC_PIC_SZIE_ALIGN) || (pChnAttr->chan_cfg.frame_width % HI_VENC_PIC_SZIE_ALIGN))
     {
        DEBUG_PRINT_ERROR("Picture Width(%u) or Heigth(%u) invalid, should N*%d.\n", pChnAttr->chan_cfg.frame_width, pChnAttr->chan_cfg.frame_height,
                    HI_VENC_PIC_SZIE_ALIGN);
        return -1;
     }

     if (pChnAttr->chan_cfg.rotation_angle != 0)
     {
        DEBUG_PRINT_ERROR("u32RotationAngle(%u) only support 0 now.\n", pChnAttr->chan_cfg.rotation_angle );
        return -1;
     }

     if (!((0 == pChnAttr->chan_cfg.SlcSplitEn) || (1 == pChnAttr->chan_cfg.SlcSplitEn)))
     {
        DEBUG_PRINT_ERROR("bSlcSplitEn(%u) is invalid.\n", pChnAttr->chan_cfg.SlcSplitEn);
        return -1;
     }

     /*if ((pChnAttr->chan_cfg.SplitSize < HI_VENC_MIN_SPLIT_SIZE)
        || (pChnAttr->chan_cfg.SplitSize > HI_VENC_MAX_SPLIT_SIZE))
     {
        DEBUG_PRINT_ERROR("u32SplitSize(%u) is invalid.\n", pChnAttr->chan_cfg.SplitSize);
        return -1;
     }*/

     return 0;  
}

static OMX_S32 venc_check_active_attr(venc_channel_S* pChnAttr)
{
     VENC_CHECK_POINT_NULL(pChnAttr);
     
     if ((pChnAttr->chan_cfg.TargetBitRate < HI_VENC_MIN_bps)
        || (pChnAttr->chan_cfg.TargetBitRate  > HI_VENC_MAX_bps))
     {
        DEBUG_PRINT_ERROR("TargetBitRate(%u) is invalid.\n", pChnAttr->chan_cfg.TargetBitRate);
        return -1;
     }
     
     if ((pChnAttr->chan_cfg.InputFrmRate < HI_VENC_MIN_fps)
        || (pChnAttr->chan_cfg.InputFrmRate  > HI_VENC_MAX_fps))
     {
        DEBUG_PRINT_ERROR("InputFrmRate(%u) is invalid.\n", pChnAttr->chan_cfg.InputFrmRate );
        return -1;
     }

     if ((pChnAttr->chan_cfg.TargetFrmRate  < HI_VENC_MIN_fps)
        || (pChnAttr->chan_cfg.TargetFrmRate > pChnAttr->chan_cfg.InputFrmRate))
     {
        DEBUG_PRINT_ERROR("TargetFrmRate(%u) is invalid, should 1~inputFrameRate.\n", pChnAttr->chan_cfg.TargetFrmRate);
        return -1;
     }

     if (pChnAttr->chan_cfg.Gop < HI_VENC_MIN_GOP)
     {
        DEBUG_PRINT_ERROR("Gop(%u) is invalid, should > %u.\n", pChnAttr->chan_cfg.Gop, HI_VENC_MIN_GOP);
        return -1;
     }
     
     if (pChnAttr->chan_cfg.MinQP > HI_VENC_MAX_QP)
     {
        DEBUG_PRINT_ERROR("MinQp(%u) is invalid, should < %u.\n", pChnAttr->chan_cfg.MinQP, HI_VENC_MAX_QP);
        return -1;
     }
     if (pChnAttr->chan_cfg.MaxQP > HI_VENC_MAX_QP)
     {
        DEBUG_PRINT_ERROR("MaxQp(%u) is invalid, should < %u.\n", pChnAttr->chan_cfg.MaxQP, HI_VENC_MAX_QP);
        return -1;
     }
     
     if (pChnAttr->chan_cfg.MinQP >= pChnAttr->chan_cfg.MaxQP)
     {
        DEBUG_PRINT_ERROR("MinQp(%u) is invalid, should < MaxQp(%u).\n", pChnAttr->chan_cfg.MinQP ,pChnAttr->chan_cfg.MaxQP);
        return -1;
     }
     
     if (pChnAttr->chan_cfg.priority >= HI_VENC_MAX_PRIORITY )
     {
        DEBUG_PRINT_ERROR("u8Priority(%u) is invalid, should < u8MaxPriority(%u).\n", pChnAttr->chan_cfg.priority ,HI_VENC_MAX_PRIORITY);
        return -1;
     } 
     
     return 0;
}


OMX_S32 channel_create(venc_drv_context *drv_ctx)
{
   VENC_INFO_CREATE_S stVencChnCreate;
   OMX_S32 patchBufSize = 0;
   OMX_S32 s32Ret = 0;
   
   VENC_CHECK_POINT_NULL(drv_ctx);

   //check if venc has been init!
   if(drv_ctx->video_driver_fd < 0)
   {
      DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
      return -1;
   }

   if( venc_check_static_attr( &(drv_ctx->venc_chan_attr) ) )
   {
      DEBUG_PRINT_ERROR("ERROR: venc channel attributes is not valid!!\n");
      return -1;
   }
   
   if( venc_check_active_attr( &(drv_ctx->venc_chan_attr) ) )
   {
      DEBUG_PRINT_ERROR("ERROR: venc channel attributes is not valid!!\n");
      return -1;
   }

   stVencChnCreate.stAttr.u32Width = drv_ctx->venc_chan_attr.chan_cfg.frame_width;
   stVencChnCreate.stAttr.u32Height = drv_ctx->venc_chan_attr.chan_cfg.frame_height;
   stVencChnCreate.stAttr.enVencType = (HI_UNF_VCODEC_TYPE_E)drv_ctx->venc_chan_attr.chan_cfg.protocol;
   stVencChnCreate.stAttr.bSlcSplitEn = (HI_BOOL)drv_ctx->venc_chan_attr.chan_cfg.SlcSplitEn;
   //stVencChnCreate.stAttr.u32SplitSize = drv_ctx->venc_chan_attr.chan_cfg.SplitSize;
   stVencChnCreate.stAttr.u32Gop        = drv_ctx->venc_chan_attr.chan_cfg.Gop;
   stVencChnCreate.stAttr.u32RotationAngle = drv_ctx->venc_chan_attr.chan_cfg.rotation_angle;
   stVencChnCreate.stAttr.u32InputFrmRate  = drv_ctx->venc_chan_attr.chan_cfg.InputFrmRate;
   stVencChnCreate.stAttr.u32TargetFrmRate = drv_ctx->venc_chan_attr.chan_cfg.TargetFrmRate;
   stVencChnCreate.stAttr.u32TargetBitRate = drv_ctx->venc_chan_attr.chan_cfg.TargetBitRate;
   stVencChnCreate.stAttr.u32MaxQp         = drv_ctx->venc_chan_attr.chan_cfg.MaxQP;
   stVencChnCreate.stAttr.u32MinQp         = drv_ctx->venc_chan_attr.chan_cfg.MinQP;

   stVencChnCreate.stAttr.bQuickEncode     = (HI_BOOL)drv_ctx->venc_chan_attr.chan_cfg.QuickEncode;
   stVencChnCreate.stAttr.u8Priority       = (HI_U8)drv_ctx->venc_chan_attr.chan_cfg.priority;
   //stVencChnCreate.stAttr.u32StrmBufSize   = drv_ctx->venc_chan_attr.chan_cfg.streamBufSize;

   if(stVencChnCreate.stAttr.u32Width > 1280)
   {
      stVencChnCreate.stAttr.enCapLevel      = HI_UNF_VCODEC_CAP_LEVEL_FULLHD;
      stVencChnCreate.stAttr.u32StrmBufSize  = 1920 * 1080 * 2;   
   }
   else if(stVencChnCreate.stAttr.u32Width > 720)
   {
      stVencChnCreate.stAttr.enCapLevel      = HI_UNF_VCODEC_CAP_LEVEL_720P;
      stVencChnCreate.stAttr.u32StrmBufSize  = 1280 * 720 * 2;  
   }
   else if(stVencChnCreate.stAttr.u32Width > 352)
   {
      stVencChnCreate.stAttr.enCapLevel      = HI_UNF_VCODEC_CAP_LEVEL_D1;
      stVencChnCreate.stAttr.u32StrmBufSize  = 720 * 576 * 2; 
   }
   else
   {
      stVencChnCreate.stAttr.enCapLevel      = HI_UNF_VCODEC_CAP_LEVEL_CIF;
      stVencChnCreate.stAttr.u32StrmBufSize  = 352 * 288 * 2; 
   }   

   stVencChnCreate.stAttr.enVencProfile      = HI_UNF_H264_PROFILE_HIGH;
   stVencChnCreate.bOMXChn = HI_TRUE;
   s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_CREATE_CHN, &stVencChnCreate);
   if (0 != s32Ret)
   {
        DEBUG_PRINT_ERROR("\n %s() failed", __func__);
		return -1;
   }
   
    drv_ctx->venc_chan_attr.chan_handle = stVencChnCreate.hVencChn;
	drv_ctx->venc_chan_attr.state       = 2;                     
    DEBUG_PRINT("\n create channel %lu ok\n",drv_ctx->venc_chan_attr.chan_handle);
    return 0; 
}

OMX_S32 channel_destroy(venc_drv_context *drv_ctx)
{
    OMX_S32 s32Ret = 0;
    
    VENC_CHECK_POINT_NULL(drv_ctx);

    //check if venc has been init!
    if(drv_ctx->video_driver_fd < 0)
    {
       DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
       return -1;
    }
    
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }

    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_DESTROY_CHN, &(drv_ctx->venc_chan_attr.chan_handle));
    if (0 != s32Ret)
    {
        return s32Ret;
    }  

    drv_ctx->venc_chan_attr.chan_handle = HI_INVALID_HANDLE;
	drv_ctx->venc_chan_attr.state       = 0; 
    return s32Ret;
}


OMX_S32 channel_start(venc_drv_context *drv_ctx)
{
    OMX_S32 s32Ret = 0;
    VENC_CHECK_POINT_NULL(drv_ctx);

    //check if venc has been init!
    if(drv_ctx->video_driver_fd < 0)
    {
       DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
       return -1;
    }
    
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }

    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_START_RECV_PIC, &(drv_ctx->venc_chan_attr.chan_handle));
    if(s32Ret != 0)
    {
       DEBUG_PRINT_ERROR("\n~~~%s failed!! %d\n",__func__,s32Ret);
    }
    else DEBUG_PRINT("\n~~~%s success!!\n",__func__);

	drv_ctx->venc_chan_attr.state       = 1; 
    return s32Ret;
}


OMX_S32 channel_stop(venc_drv_context *drv_ctx)
{
    OMX_S32 s32Ret = 0;
    VENC_CHECK_POINT_NULL(drv_ctx);

    //check if venc has been init!
    if(drv_ctx->video_driver_fd < 0)
    {
       DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
       return -1;
    }
    
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }
    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_STOP_RECV_PIC, &(drv_ctx->venc_chan_attr.chan_handle));
    drv_ctx->venc_chan_attr.state       = 2; 
    return s32Ret;

}

OMX_S32 channel_flush_port(venc_drv_context *drv_ctx,
		OMX_U32 flush_dir)
{
#if 0
	struct vdec_ioctl_msg msg = {0, NULL, NULL};
	OMX_S32 vdec_fd = -1;
	OMX_S32 dir;

	if (!drv_ctx || (drv_ctx->chan_handle < 0))
	{
		DEBUG_PRINT_ERROR("\n %s() failed", __func__);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	dir = flush_dir;
	msg.in = &dir;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_FLUSH_PORT, (void *)&msg);
#endif
    VENC_INFO_FLUSH_PORT_S stFlushInfo;
    OMX_S32 s32Ret = 0;
    VENC_CHECK_POINT_NULL(drv_ctx);

    if(drv_ctx->video_driver_fd < 0)
    {
       DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
       return -1;
    }
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }
    stFlushInfo.hVencChn     = drv_ctx->venc_chan_attr.chan_handle;
    stFlushInfo.u32PortIndex = flush_dir;
    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_FLUSH_PORT, &stFlushInfo);
    return s32Ret;
}


OMX_S32 channel_get_msg(venc_drv_context *drv_ctx,venc_msginfo *msginfo)
{
#if 0
	struct vdec_ioctl_msg msg = {0, NULL, NULL};
	OMX_S32 vdec_fd = -1;

	if (!drv_ctx || !msginfo || (drv_ctx->chan_handle < 0))
	{
		DEBUG_PRINT_ERROR("\n %s() failed", __func__);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.out = msginfo;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_GET_MSG, (void *)&msg);
#endif

    OMX_S32 s32Ret = 0;
    VENC_INFO_GET_MSG_S stVencMessage;
    
    VENC_CHECK_POINT_NULL(drv_ctx);
    VENC_CHECK_POINT_NULL(msginfo);

    //check if venc has been init!
    if(drv_ctx->video_driver_fd < 0)
    {
       DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
       return -1;
    }
    
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }

    stVencMessage.hVencChn = drv_ctx->venc_chan_attr.chan_handle;
    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_GET_MSG, &stVencMessage);
    if (0 != s32Ret)
    {
        return s32Ret;
    } 
    //*msginfo = stVencMessage.msg_info_omx;
    memcpy(msginfo,&stVencMessage.msg_info_omx,sizeof(venc_msginfo));
    return s32Ret;

}


OMX_S32 channel_stop_msg(venc_drv_context *drv_ctx)
{
#if 0
	struct vdec_ioctl_msg msg = {0, NULL, NULL};
	OMX_S32 vdec_fd = -1;

	if (!drv_ctx || drv_ctx->chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("\n %s() failed", __func__);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_STOP_MSG, (void *)&msg);
#endif
    return 0;
}


OMX_U32 pts = 1;
OMX_U32 FrameCnt = 0;

OMX_S32 channel_queue_Image(venc_drv_context *drv_ctx,
	venc_user_buf *puser_buf)
{
#if 0
	struct vdec_ioctl_msg msg = {0, NULL, NULL};
	OMX_S32 vdec_fd = -1;

	if (!drv_ctx || !puser_buf || drv_ctx->chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("\n %s() failed", __func__);
		return -1;
	}

	vdec_fd		= drv_ctx->video_driver_fd;
	msg.chan_num	= drv_ctx->chan_handle;
	msg.in		= puser_buf;
	msg.out	= NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_EMPTY_INPUT_STREAM, (void *)&msg);
#endif
    
    OMX_S32 s32Ret = 0,i = 0;
    VENC_INFO_QUEUE_FRAME_S stVencQueueFrame; 
    
    VENC_CHECK_POINT_NULL(drv_ctx);
    VENC_CHECK_POINT_NULL(puser_buf);
    if(drv_ctx->video_driver_fd < 0)
    {
      DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
      return -1;
    }
    
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }

    stVencQueueFrame.hVencChn = drv_ctx->venc_chan_attr.chan_handle;   
    memcpy(&(stVencQueueFrame.stVencFrame_OMX), puser_buf, sizeof(venc_user_buf));
    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_QUEUE_FRAME, &stVencQueueFrame);   //LIMINQI
    return s32Ret;  

}

#if 0

OMX_S32 channel_dequeue_Image(venc_drv_context *drv_ctx,
	venc_user_buf *puser_buf)
{
#if 0
	struct vdec_ioctl_msg msg = {0, NULL, NULL};
	OMX_S32 vdec_fd = -1;

	if (!drv_ctx || !puser_buf || drv_ctx->chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("\n %s() failed", __func__);
		return -1;
	}

	vdec_fd		= drv_ctx->video_driver_fd;
	msg.chan_num	= drv_ctx->chan_handle;
	msg.in		= puser_buf;
	msg.out	= NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_EMPTY_INPUT_STREAM, (void *)&msg);
#endif

    OMX_S32 s32Ret = 0,i = 0;
    VENC_INFO_QUEUE_FRAME_S stVencQueueFrame; 
    VENC_CHECK_POINT_NULL(drv_ctx);
    VENC_CHECK_POINT_NULL(puser_buf);

    //check if venc has been init!
    if(drv_ctx->video_driver_fd < 0)
    {
      DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
      return -1;
    }
    
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }

    stVencQueueFrame.hVencChn = drv_ctx->venc_chan_attr.chan_handle;

    
    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_DEQUEUE_FRAME, &stVencQueueFrame);   //LIMINQI

	if (!s32Ret)
	{
    	memcpy(puser_buf, &(stVencQueueFrame.stVencFrame_OMX), sizeof(venc_user_buf));
	}

    return s32Ret;  
    
}
#endif

OMX_S32 channel_queue_stream(venc_drv_context *drv_ctx,venc_user_buf *puser_buf)
{
    OMX_S32 s32Ret = 0, i = 0;
#if 1
    VENC_INFO_QUEUE_FRAME_S stVencQueueStream;
    VENC_BUF_OFFSET_S stBufOffSet;
    OMX_U8 *stream_virAddr;

    VENC_CHECK_POINT_NULL(drv_ctx);
    VENC_CHECK_POINT_NULL(puser_buf);

    //check if venc has been init!
    if(drv_ctx->video_driver_fd < 0)
    {
      DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
      return -1;
    }
    
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }

    stVencQueueStream.hVencChn      = drv_ctx->venc_chan_attr.chan_handle;
    memcpy(&(stVencQueueStream.stVencFrame_OMX), puser_buf ,sizeof(venc_user_buf));
    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_QUEUE_STREAM, &stVencQueueStream);
#endif
    return s32Ret;
}



OMX_S32 channel_release_stream(venc_drv_context *drv_ctx,
	venc_user_buf *puser_buf)
{

    OMX_S32 s32Ret = 0,i = 0;
    VENC_INFO_ACQUIRE_STREAM_S stVencAcquireStream;

    VENC_CHECK_POINT_NULL(drv_ctx);
    VENC_CHECK_POINT_NULL(puser_buf);

    //check if venc has been init!
    if(drv_ctx->video_driver_fd < 0)
    {
      DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
      return -1;
    }
    
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }

    stVencAcquireStream.hVencChn = drv_ctx->venc_chan_attr.chan_handle;

    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_RELEASE_STREAM, &stVencAcquireStream);

    puser_buf->data_len    = 0;
    
    return s32Ret;
}


#if 0
OMX_S32 channel_bind_buffer(venc_drv_context *drv_ctx,
	venc_user_buf *puser_buf)
{
	struct vdec_ioctl_msg msg = {0, NULL, NULL};
	OMX_S32 vdec_fd = -1;

	if (!drv_ctx || drv_ctx->chan_handle < 0 || !puser_buf)
	{
		DEBUG_PRINT_ERROR("\n %s() invalid param.", __func__);
		return -1;
	}

	vdec_fd =  drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.in = puser_buf;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_BIND_BUFFER, (void *)&msg);
}


OMX_S32 channel_unbind_buffer(venc_drv_context *drv_ctx,
	venc_user_buf *puser_buf)
{
	struct vdec_ioctl_msg msg = {0, NULL, NULL};
	OMX_S32 vdec_fd = -1;

	if (!drv_ctx || !puser_buf || drv_ctx->chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("\n %s() failed", __func__);
		return -1;
	}

	vdec_fd =  drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.in = puser_buf;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_UNBIND_BUFFER, (void *)&msg);
}
#endif

void venc_deinit_drv_context(venc_drv_context  *drv_ctx)
{
	if (!drv_ctx)
	{
		DEBUG_PRINT_ERROR("\n %s() failed", __func__);
		return;
	}

    if (drv_ctx->video_driver_fd < 0)
    {
        return;
    }
	if (drv_ctx->venc_chan_attr.chan_handle != 0xffffffff)        //单通道
	{
		if ( channel_destroy(drv_ctx)!= 0)
		{
           DEBUG_PRINT_ERROR("%s()destroy channel Error!\n", __func__);
		}
	}

	close(drv_ctx->video_driver_fd);
	drv_ctx->video_driver_fd = -1;	
}


OMX_S32 venc_init_drv_context(venc_drv_context *drv_ctx)          //打开设备文件，清空设备通道句柄、索引
{
	OMX_S32 r = -1;
    OMX_S32 i = 0;
	if (!drv_ctx)
	{
		DEBUG_PRINT_ERROR("%s() invalid param\n", __func__);
		return -1;
	}

    if (drv_ctx->video_driver_fd > 0)
    {
       return 0;
    }
    
	drv_ctx->video_driver_fd = open (VENC_NAME, O_RDWR);
	if (drv_ctx->video_driver_fd < 0)
	{
		DEBUG_PRINT_ERROR("%s() open %s failed\n", __func__, VENC_NAME);
		return -1;
	}

    memset(&drv_ctx->venc_chan_attr,   0, sizeof(venc_channel_S));
    memset(&drv_ctx->venc_stream_addr, 0, sizeof(venc_stream_buf_S));
    
    drv_ctx->venc_chan_attr.chan_handle	        = HI_INVALID_HANDLE;
    drv_ctx->venc_stream_addr.pStrmBufVirAddr	= 0;

    return 0;
}

void venc_get_default_attr(venc_drv_context *drv_ctx)          //打开设备文件，清空设备通道句柄、索引
{
	if (!drv_ctx)
	{
		DEBUG_PRINT_ERROR("%s() invalid param\n", __func__);
		return;
	}

    if(drv_ctx->video_driver_fd < 0)
    {
      DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
      return;
    }

	drv_ctx->venc_chan_attr.chan_cfg.CapLevel               = HI_UNF_VCODEC_CAP_LEVEL_720P;
    drv_ctx->venc_chan_attr.chan_cfg.protocol	            = HI_UNF_VCODEC_TYPE_H264;
    drv_ctx->venc_chan_attr.chan_cfg.frame_width	        = 1280;
    drv_ctx->venc_chan_attr.chan_cfg.frame_height	        = 720;
    drv_ctx->venc_chan_attr.chan_cfg.rotation_angle	        = 0;
    drv_ctx->venc_chan_attr.chan_cfg.streamBufSize	        = 1280*720*2;
    drv_ctx->venc_chan_attr.chan_cfg.SlcSplitEn	            = 0;
    //drv_ctx->venc_chan_attr.chan_cfg.SplitSize	        = 1024;
    drv_ctx->venc_chan_attr.chan_cfg.Gop	                = 100;
    drv_ctx->venc_chan_attr.chan_cfg.QuickEncode	        = 0;
    drv_ctx->venc_chan_attr.chan_cfg.TargetBitRate	        = 4*1024*1024;
    drv_ctx->venc_chan_attr.chan_cfg.TargetFrmRate	        = 25;
    drv_ctx->venc_chan_attr.chan_cfg.InputFrmRate	        = 25;
    drv_ctx->venc_chan_attr.chan_cfg.MinQP	                = 16;
    drv_ctx->venc_chan_attr.chan_cfg.MaxQP	                = 48;
    drv_ctx->venc_chan_attr.chan_cfg.priority               = 0;

	drv_ctx->venc_chan_attr.state                           = 0;
    
    return;
}

//========================
OMX_S32 channel_set_attr(venc_drv_context *drv_ctx)
{
   VENC_INFO_CREATE_S stVencChnCreate;
   OMX_S32 patchBufSize = 0;
   OMX_S32 s32Ret = 0;
   
   VENC_CHECK_POINT_NULL(drv_ctx);

   //check if venc has been init!
   if(drv_ctx->video_driver_fd < 0)
   {
      DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
      return -1;
   }

   if( venc_check_static_attr( &(drv_ctx->venc_chan_attr) ) )
   {
      //DEBUG_PRINT_ERROR("ERROR: venc channel attributes is not valid!!\n");
      return -1;
   }
   
   if( venc_check_active_attr( &(drv_ctx->venc_chan_attr) ) )
   {
      //DEBUG_PRINT_ERROR("ERROR: venc channel attributes is not valid!!\n");
      return -1;
   }

   stVencChnCreate.hVencChn        = drv_ctx->venc_chan_attr.chan_handle;
   
   stVencChnCreate.stAttr.u32Width = drv_ctx->venc_chan_attr.chan_cfg.frame_width;
   stVencChnCreate.stAttr.u32Height = drv_ctx->venc_chan_attr.chan_cfg.frame_height;
   stVencChnCreate.stAttr.enVencType = (HI_UNF_VCODEC_TYPE_E)drv_ctx->venc_chan_attr.chan_cfg.protocol;
   stVencChnCreate.stAttr.bSlcSplitEn = (HI_BOOL)drv_ctx->venc_chan_attr.chan_cfg.SlcSplitEn;
   //stVencChnCreate.stAttr.u32SplitSize = drv_ctx->venc_chan_attr.chan_cfg.SplitSize;
   stVencChnCreate.stAttr.u32Gop        = drv_ctx->venc_chan_attr.chan_cfg.Gop;
   stVencChnCreate.stAttr.u32RotationAngle = drv_ctx->venc_chan_attr.chan_cfg.rotation_angle;
   stVencChnCreate.stAttr.u32InputFrmRate  = drv_ctx->venc_chan_attr.chan_cfg.InputFrmRate;
   stVencChnCreate.stAttr.u32TargetFrmRate = drv_ctx->venc_chan_attr.chan_cfg.TargetFrmRate;
   stVencChnCreate.stAttr.u32TargetBitRate = drv_ctx->venc_chan_attr.chan_cfg.TargetBitRate;
   stVencChnCreate.stAttr.u32MaxQp         = drv_ctx->venc_chan_attr.chan_cfg.MaxQP;
   stVencChnCreate.stAttr.u32MinQp         = drv_ctx->venc_chan_attr.chan_cfg.MinQP;

   stVencChnCreate.stAttr.bQuickEncode     = HI_FALSE;
   stVencChnCreate.stAttr.u8Priority       = 0;
   //stVencChnCreate.stAttr.u32StrmBufSize   = drv_ctx->venc_chan_attr.chan_cfg.frame_width *drv_ctx->venc_chan_attr.chan_cfg.frame_height * 2;
   //stVencChnCreate.stAttr.enCapLevel = (HI_UNF_VCODEC_CAP_LEVEL_E)drv_ctx->venc_chan_attr.chan_cfg.CapLevel;
   
   if(stVencChnCreate.stAttr.u32Width > 1280)
   {
      stVencChnCreate.stAttr.enCapLevel      = HI_UNF_VCODEC_CAP_LEVEL_FULLHD;
      stVencChnCreate.stAttr.u32StrmBufSize  = 1920 * 1080 * 2;   
   }
   else if(stVencChnCreate.stAttr.u32Width > 720)
   {
      stVencChnCreate.stAttr.enCapLevel      = HI_UNF_VCODEC_CAP_LEVEL_720P;
      stVencChnCreate.stAttr.u32StrmBufSize  = 1280 * 720 * 2;  
   }
   else if(stVencChnCreate.stAttr.u32Width > 352)
   {
      stVencChnCreate.stAttr.enCapLevel      = HI_UNF_VCODEC_CAP_LEVEL_D1;
      stVencChnCreate.stAttr.u32StrmBufSize  = 720 * 576 * 2; 
   }
   else
   {
      stVencChnCreate.stAttr.enCapLevel      = HI_UNF_VCODEC_CAP_LEVEL_CIF;
      stVencChnCreate.stAttr.u32StrmBufSize  = 352 * 288 * 2; 
   } 
   
   s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_SET_CHN_ATTR, &stVencChnCreate);

   return s32Ret;
}

OMX_S32 channel_get_attr(venc_drv_context *drv_ctx)
{
   VENC_INFO_CREATE_S stVencChnCreate;
   OMX_S32 patchBufSize = 0;
   OMX_S32 s32Ret = 0;
   
   VENC_CHECK_POINT_NULL(drv_ctx);

   //check if venc has been init!
   if(drv_ctx->video_driver_fd < 0)
   {
      DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
      return -1;
   }
   stVencChnCreate.hVencChn = drv_ctx->venc_chan_attr.chan_handle;

   s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_GET_CHN_ATTR, &stVencChnCreate);

   if (HI_SUCCESS != s32Ret)
   {
        return s32Ret;
   }
   drv_ctx->venc_chan_attr.chan_cfg.frame_width   = stVencChnCreate.stAttr.u32Width        ;
   drv_ctx->venc_chan_attr.chan_cfg.frame_height  = stVencChnCreate.stAttr.u32Height       ;
   drv_ctx->venc_chan_attr.chan_cfg.protocol      = (HI_U32)stVencChnCreate.stAttr.enVencType      ;
   drv_ctx->venc_chan_attr.chan_cfg.SlcSplitEn    = (HI_U32)stVencChnCreate.stAttr.bSlcSplitEn     ;
   //drv_ctx->venc_chan_attr.chan_cfg.SplitSize     = stVencChnCreate.stAttr.u32SplitSize   ;
   drv_ctx->venc_chan_attr.chan_cfg.Gop           = stVencChnCreate.stAttr.u32Gop          ;
   drv_ctx->venc_chan_attr.chan_cfg.rotation_angle= stVencChnCreate.stAttr.u32RotationAngle;
   drv_ctx->venc_chan_attr.chan_cfg.InputFrmRate  = stVencChnCreate.stAttr.u32InputFrmRate ;
   drv_ctx->venc_chan_attr.chan_cfg.TargetFrmRate = stVencChnCreate.stAttr.u32TargetFrmRate;
   drv_ctx->venc_chan_attr.chan_cfg.TargetBitRate = stVencChnCreate.stAttr.u32TargetBitRate;
   drv_ctx->venc_chan_attr.chan_cfg.MaxQP         = stVencChnCreate.stAttr.u32MaxQp        ;
   drv_ctx->venc_chan_attr.chan_cfg.MinQP         = stVencChnCreate.stAttr.u32MinQp        ;
   drv_ctx->venc_chan_attr.chan_cfg.priority      = (HI_U32)stVencChnCreate.stAttr.u8Priority      ;
   drv_ctx->venc_chan_attr.chan_cfg.streamBufSize = stVencChnCreate.stAttr.u32StrmBufSize  ;
   drv_ctx->venc_chan_attr.chan_cfg.QuickEncode   = (HI_U16)stVencChnCreate.stAttr.bQuickEncode    ;
   drv_ctx->venc_chan_attr.chan_cfg.CapLevel      = (HI_U32)stVencChnCreate.stAttr.enCapLevel      ;
   
   return s32Ret;
}
//=======================


#if 1
OMX_S32 venc_mmap_kerel_vir(venc_drv_context *drv_ctx,venc_user_buf *puser_buf)
{

    HI_MMZ_BUF_S stBuf;
    
    OMX_S32 s32Ret = 0, i = 0;
    VENC_INFO_MMZ_MAP_S stVencBuf;

    VENC_CHECK_POINT_NULL(drv_ctx);
    VENC_CHECK_POINT_NULL(puser_buf);

    //check if venc has been init!
    if(drv_ctx->video_driver_fd < 0)
    {
      DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
      return -1;
    }
    
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }

    stVencBuf.hVencChn         = drv_ctx->venc_chan_attr.chan_handle;
    stVencBuf.stVencBuf.phyaddr= puser_buf->bufferaddr_Phy;
    stVencBuf.stVencBuf.user_viraddr= puser_buf->bufferaddr;
    stVencBuf.stVencBuf.bufsize = puser_buf->buffer_size;

    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_MMZ_MAP, &stVencBuf);
    if (s32Ret != 0 )
    {
       DEBUG_PRINT_ERROR("%s,%d,MMZ map kernel viraddr failed!!\n",__func__,__LINE__);
       return  -1;
    }
    puser_buf->vir2phy_offset = (OMX_U32)(stVencBuf.stVencBuf.kernel_viraddr - puser_buf->bufferaddr_Phy);
    
    /*DEBUG_PRINT("%s,%d,MMZ phyaddr = 0x%x,userVir = 0x%x,hernelvir = 0x%x,offset = 0x%x\n",
            __func__,__LINE__,stVencBuf.stVencBuf.phyaddr,stVencBuf.stVencBuf.user_viraddr,
            stVencBuf.stVencBuf.kernel_viraddr,puser_buf->vir2phy_offset);*/
    
    return s32Ret;
}

OMX_S32 venc_unmmap_kerel_vir(venc_drv_context *drv_ctx,venc_user_buf *puser_buf)
{

    HI_MMZ_BUF_S stBuf;
    
    OMX_S32 s32Ret = 0, i = 0;
    VENC_INFO_MMZ_MAP_S stVencBuf;

    VENC_CHECK_POINT_NULL(drv_ctx);
    VENC_CHECK_POINT_NULL(puser_buf);

    //check if venc has been init!
    if(drv_ctx->video_driver_fd < 0)
    {
      DEBUG_PRINT_ERROR("ERROR: venc dose not init !!\n");
      return -1;
    }
    
    if (HI_INVALID_HANDLE == drv_ctx->venc_chan_attr.chan_handle)
    {
        DEBUG_PRINT_ERROR("para hVencChn is invalid.\n");
        return -1;
    }

    stVencBuf.hVencChn                 = drv_ctx->venc_chan_attr.chan_handle;
    stVencBuf.stVencBuf.phyaddr        = puser_buf->bufferaddr_Phy;
    stVencBuf.stVencBuf.user_viraddr   = puser_buf->bufferaddr;
    stVencBuf.stVencBuf.kernel_viraddr = (HI_U8*)(puser_buf->vir2phy_offset + puser_buf->bufferaddr_Phy);
    stVencBuf.stVencBuf.bufsize        = puser_buf->buffer_size;
  
    s32Ret = ioctl(drv_ctx->video_driver_fd, CMD_VENC_MMZ_UMMAP, &stVencBuf);
    if (s32Ret != 0 )
    {
       DEBUG_PRINT_ERROR("%s,%d,MMZ unmap kernel viraddr failed!!\n",__func__,__LINE__);
       return  -1;
    }
    return s32Ret;
}


#endif

