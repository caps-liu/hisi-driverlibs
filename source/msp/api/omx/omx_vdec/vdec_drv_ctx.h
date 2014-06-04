/*=================================================

Open MAX   Component: Video Decoder
This module contains the class definition for openMAX decoder component.
file:     vdec_drv_ctx.h
author:   y00226912
date:     16, 03, 2013.

=================================================*/

#ifndef __VDEC_DRV_CTX_H__
#define __VDEC_DRV_CTX_H__

#include "hisi_vdec.h"
#include "OMX_Types.h"


OMX_S32 vdec_init_drv_context(vdec_drv_context *drv_ctx);

void vdec_deinit_drv_context(vdec_drv_context *drv_ctx);

OMX_S32 channel_create(vdec_drv_context *drv_ctx);

OMX_S32 channel_release(vdec_drv_context *drv_ctx);

OMX_S32 channel_start(vdec_drv_context *drv_ctx);

OMX_S32 channel_stop(vdec_drv_context *drv_ctx);

OMX_S32 channel_pause(vdec_drv_context *drv_ctx);

OMX_S32 channel_resume(vdec_drv_context *drv_ctx);

OMX_S32 channel_flush_port(vdec_drv_context *drv_ctx, OMX_U32 flush_dir);

OMX_S32 channel_get_msg(vdec_drv_context *drv_ctx, struct vdec_msginfo *msginfo);

OMX_S32 channel_submit_stream(vdec_drv_context *drv_ctx, struct vdec_user_buf_desc *puser_buf);

OMX_S32 channel_submit_frame(vdec_drv_context *drv_ctx, struct vdec_user_buf_desc *puser_buf);

OMX_S32 channel_bind_buffer(vdec_drv_context *drv_ctx, struct vdec_user_buf_desc *puser_buf);

OMX_S32 channel_unbind_buffer(vdec_drv_context *drv_ctx, struct vdec_user_buf_desc *puser_buf);

OMX_S8  debug_save_yuv(FILE* pFile, OMX_U8* pstChroml, OMX_U8 *Yaddress, OMX_U8 *Caddress, OMX_U32 Width, OMX_U32 Height,  OMX_U32 Stride);


#endif
