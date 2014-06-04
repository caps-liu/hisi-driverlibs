/*=================================================

Open MAX   Component: Video Decoder
This module contains the class definition for openMAX decoder component.
file:	       vdec_drv_ctx.c
author:   y00226912
date:      16, 03, 2013.

=================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/ioctl.h>

#include "vdec_drv_ctx.h"
#include "omx_dbg.h"


OMX_S32 channel_create(vdec_drv_context *drv_ctx)
{
	OMX_S32 vdec_fd = -1;
	OMX_S32 chan_handle = -1;
	driver_cfg *pcfg = NULL;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx)
	{
		DEBUG_PRINT_ERROR("%s() failed\n", __func__);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	pcfg = &drv_ctx->drv_cfg;

	pcfg->chan_cfg.eVidStd = drv_ctx->decoder_format;

	msg.chan_num = -1;
	msg.in = pcfg;
	msg.out = &chan_handle;

	if (ioctl(vdec_fd, VDEC_IOCTL_CHAN_CREATE, &msg) < 0)
	{
		DEBUG_PRINT_ERROR("%s() failed\n", __func__);
		return -1;
	}

	if(chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("%s() chan invalid\n", __func__);
		return -1;
	}

	drv_ctx->chan_handle = chan_handle;
	DEBUG_PRINT("create channel %ld ok\n",chan_handle);

	return 0;
}


OMX_S32 channel_release(vdec_drv_context *drv_ctx)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || (drv_ctx->chan_handle < 0))
	{
		DEBUG_PRINT_ERROR("%s() param invalid\n", __func__);
		return -1;
	}

	vdec_fd			= drv_ctx->video_driver_fd;
	msg.chan_num	= drv_ctx->chan_handle;
	msg.in			= NULL;
	msg.out			= NULL;

	if (ioctl(vdec_fd, VDEC_IOCTL_CHAN_RELEASE, &msg) < 0)
	{
		DEBUG_PRINT_ERROR("%s() ioctl failed\n", __func__);
		return -1;
	}

	drv_ctx->chan_handle = -1;
	DEBUG_PRINT("%s() ok\n", __func__);
    
	return 0;
}


OMX_S32 channel_start(vdec_drv_context *drv_ctx)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || (drv_ctx->chan_handle < 0))
	{
		DEBUG_PRINT_ERROR("%s() failed", __func__);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.in = NULL;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_START, &msg);
}


OMX_S32 channel_stop(vdec_drv_context *drv_ctx)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || (drv_ctx->chan_handle < 0))
	{
		DEBUG_PRINT_ERROR("%s() failed", __func__);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.in = NULL;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_STOP, &msg);
}


OMX_S32 channel_pause(vdec_drv_context *drv_ctx)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx ||  (drv_ctx->chan_handle < 0))
	{
		DEBUG_PRINT_ERROR("%s() failed", __func__);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.in = NULL;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_PAUSE, &msg);
}


OMX_S32 channel_resume(vdec_drv_context *drv_ctx)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || (drv_ctx->chan_handle < 0))
	{
		DEBUG_PRINT_ERROR("%s() failed", __func__);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.in = NULL;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_RESUME, &msg);
}


OMX_S32 channel_flush_port(vdec_drv_context *drv_ctx, OMX_U32 flush_dir)
{
	OMX_S32 dir;
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || (drv_ctx->chan_handle < 0))
	{
		DEBUG_PRINT_ERROR("%s() failed", __func__);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	dir = flush_dir;
	msg.in = &dir;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_FLUSH_PORT, (void *)&msg);
}


OMX_S32 channel_get_msg(vdec_drv_context *drv_ctx, struct vdec_msginfo *msginfo)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || NULL == msginfo)
	{
		DEBUG_PRINT_ERROR("%s() param invalid! drv_ctx(%p), msginfo(%p)", 
                          __func__, drv_ctx, msginfo);
		return -1;
	}

	if (drv_ctx->chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("%s() chan_handle(%d) invalid!", __func__, drv_ctx->chan_handle);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.out = msginfo;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_GET_MSG, (void *)&msg);
}


OMX_S32 channel_stop_msg(vdec_drv_context *drv_ctx)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || drv_ctx->chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("%s() failed", __func__);
		return -1;
	}

	vdec_fd = drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_STOP_MSG, (void *)&msg);
}


OMX_S32 channel_submit_stream(vdec_drv_context *drv_ctx, struct vdec_user_buf_desc *puser_buf)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || NULL == puser_buf || drv_ctx->chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("%s() failed", __func__);
		return -1;
	}

	vdec_fd		= drv_ctx->video_driver_fd;
	msg.chan_num	= drv_ctx->chan_handle;
	msg.in		= puser_buf;
	msg.out	= NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_EMPTY_INPUT_STREAM, (void *)&msg);
}


OMX_S32 channel_submit_frame(vdec_drv_context *drv_ctx, struct vdec_user_buf_desc *puser_buf)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || NULL == puser_buf || drv_ctx->chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("%s() failed", __func__);
		return -1;
	}

	vdec_fd =  drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.in = puser_buf;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_FILL_OUTPUT_FRAME, (void *)&msg);
}


OMX_S32 channel_bind_buffer(vdec_drv_context *drv_ctx, struct vdec_user_buf_desc *puser_buf)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || NULL == puser_buf || drv_ctx->chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("%s() invalid param.", __func__);
		return -1;
	}

	vdec_fd =  drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.in = puser_buf;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_BIND_BUFFER, (void *)&msg);
}


OMX_S32 channel_unbind_buffer(vdec_drv_context *drv_ctx, struct vdec_user_buf_desc *puser_buf)
{
	OMX_S32 vdec_fd = -1;
	struct vdec_ioctl_msg msg = {0, NULL, NULL};

	if (NULL == drv_ctx || NULL == puser_buf || drv_ctx->chan_handle < 0)
	{
		DEBUG_PRINT_ERROR("%s() failed", __func__);
		return -1;
	}

	vdec_fd =  drv_ctx->video_driver_fd;
	msg.chan_num = drv_ctx->chan_handle;
	msg.in = puser_buf;
	msg.out = NULL;

	return ioctl(vdec_fd, VDEC_IOCTL_CHAN_UNBIND_BUFFER, (void *)&msg);
}

void vdec_deinit_drv_context(vdec_drv_context  *drv_ctx)
{
	if (NULL == drv_ctx)
	{
		DEBUG_PRINT_ERROR("%s() failed", __func__);
		return;
	}

	if (drv_ctx->chan_handle >= 0)
       {   
		channel_release(drv_ctx);
       }

	if (drv_ctx->video_driver_fd >= 0)
	{
		close(drv_ctx->video_driver_fd);
		drv_ctx->video_driver_fd = -1;
	}

    if (drv_ctx->yuv_fp != NULL)
    {
        fclose(drv_ctx->yuv_fp);
        drv_ctx->yuv_fp = NULL;
    }
	
    if (drv_ctx->chrom_l != NULL)
    {
        free(drv_ctx->chrom_l);
        drv_ctx->chrom_l = NULL;
        drv_ctx->chrom_l_size = 0;
    }
    
}


OMX_S32 vdec_init_drv_context(vdec_drv_context *drv_ctx)
{
	OMX_S32 r = -1;
	if (!drv_ctx)
	{
		DEBUG_PRINT_ERROR("%s() invalid param\n", __func__);
		return -1;
	}

	drv_ctx->video_driver_fd = open(DRIVER_PATH, O_RDWR);
	if (drv_ctx->video_driver_fd < 0)
	{
		DEBUG_PRINT_ERROR("%s() open %s failed\n", __func__, DRIVER_PATH);
		return -1;
	}

	drv_ctx->chan_handle	                   = -1;
	drv_ctx->extradata		            = 0;
       drv_ctx->drv_cfg.cfg_width            = DEFAULT_FRAME_WIDTH;
       drv_ctx->drv_cfg.cfg_height           = DEFAULT_FRAME_HEIGHT;
       drv_ctx->drv_cfg.color_format       = HI_DRV_PIX_FMT_NV12;

	vdec_chan_cfg *pchan_cfg = &(drv_ctx->drv_cfg.chan_cfg);
	memset(pchan_cfg, 0, sizeof(vdec_chan_cfg));
	pchan_cfg->s32ChanPriority	= 1;
	pchan_cfg->s32ChanErrThr = 100;
	pchan_cfg->s32DecMode = IPB_MODE;
	pchan_cfg->s32DecOrderOutput = 0;
	pchan_cfg->s32DnrDispOutEnable = 0;
	pchan_cfg->s32DnrTfEnable = 0;

    pchan_cfg->s32ChanStrmOFThr = 0;
    pchan_cfg->s32VcmpEn = 1;
    pchan_cfg->s32VcmpWmStartLine = 0;
    pchan_cfg->s32WmEn = 0;
    pchan_cfg->s32VcmpWmEndLine = 0;
    pchan_cfg->s32Btl1Dt2DEnable = 1;
    pchan_cfg->s32BtlDbdrEnable = 1;

	return 0;
}


OMX_S8 debug_save_yuv(FILE* pFile, OMX_U8* pstChroml, OMX_U8 *Yaddress, OMX_U8 *Caddress, OMX_U32 Width, OMX_U32 Height,  OMX_U32 Stride)
{
    OMX_U32 i, j;
    OMX_U32 chrom_width = Width/2;
    OMX_U32 chrom_height = Height/2;
    OMX_U8* ul = NULL;
    OMX_U8* vl = NULL;

    if (!pFile || !pstChroml || !Yaddress || !Caddress)
    {
        DEBUG_PRINT_ERROR("%s: INVALID PARAM!\n", __func__);
        return -1;
    }
	
	/*write y*/
    for (i=0; i<Height; i++)
    {
        if(Width != fwrite(Yaddress, 1, Width, pFile))
        {
            DEBUG_PRINT_ERROR("Y line %d: fwrite fail!\n",__LINE__);
            return -1;
        }
        Yaddress += Stride;
    }

    ul = pstChroml;
    vl = pstChroml + chrom_height*chrom_width;
    for (i=0; i<chrom_height; i++)
    {
        for (j=0; j<chrom_width; j++)
        {
             vl[i*chrom_width+j] = Caddress[2*j];
             ul[i*chrom_width+j] = Caddress[2*j+1];
        }
        Caddress += Stride;
    }
    if(chrom_width*chrom_height != fwrite(ul, 1, chrom_width*chrom_height, pFile))
    {
        DEBUG_PRINT_ERROR("U line %d: fwrite fail!\n",__LINE__);
        return -1;
    }
    
    if(chrom_width*chrom_height != fwrite(vl, 1, chrom_width*chrom_height, pFile))
    {
        DEBUG_PRINT_ERROR("V line %d: fwrite fail!\n",__LINE__);
        return -1;
    }
        
    fflush(pFile);

    return 0;
        
}



