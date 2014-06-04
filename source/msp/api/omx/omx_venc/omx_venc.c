/*========================================================================
  Open MAX   Component: Video Encoder
  This module contains the class definition for openMAX decoder component.
author: liucan 100180788
==========================================================================*/

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <limits.h>
#include <inttypes.h>
#include <pthread.h>
#include <semaphore.h>


#include "omx_dbg.h"
#include "omx_venc.h"
#include "hi_unf_common.h"

#ifdef _ANDROID_
#include <hardware/gralloc.h>
#endif

#define PIC_ALIGN_SIZE (4)

#define VENC_DONE_SUCCESS (0)
#define VENC_DONE_FAILED  (-1)

///////////////////////////////////////////////
enum {
	OMX_STATE_IDLE_PENDING	= 1,
	OMX_STATE_LOADING_PENDING	,
	OMX_STATE_INPUT_ENABLE_PENDING,
	OMX_STATE_OUTPUT_ENABLE_PENDING,
	OMX_STATE_OUTPUT_DISABLE_PENDING,
	OMX_STATE_INPUT_DISABLE_PENDING,
	OMX_STATE_OUTPUT_FLUSH_PENDING,
	OMX_STATE_INPUT_FLUSH_PENDING,
	OMX_STATE_PAUSE_PENDING,
	OMX_STATE_EXECUTE_PENDING
};
// Deferred callback identifiers
enum {                                                        //用于表示各个 CMD 类型,以便在插入队列的时候判断要把消息的处理是要插入哪个队列
	OMX_GENERATE_COMMAND_DONE			= 0x1,                               
	OMX_GENERATE_FTB					= 0x2,
	OMX_GENERATE_ETB					= 0x3,
	OMX_GENERATE_COMMAND				= 0x4,
	OMX_GENERATE_EBD					= 0x5,
	OMX_GENERATE_FBD					= 0x6,
	OMX_GENERATE_FLUSH_INPUT_DONE		= 0x7,
	OMX_GENERATE_FLUSH_OUTPUT_DONE		= 0x8,
	OMX_GENERATE_START_DONE				= 0x9,
	OMX_GENERATE_PAUSE_DONE				= 0xA,
	OMX_GENERATE_RESUME_DONE			= 0xB,
	OMX_GENERATE_STOP_DONE				= 0xC,
	OMX_GENERATE_EOS_DONE				= 0xD,
	OMX_GENERATE_HARDWARE_ERROR			= 0xE,
	OMX_GENERATE_IMAGE_SIZE_CHANGE		= 0xF,
	OMX_GENERATE_CROP_RECT_CHANGE		= 0x10,
	OMX_GENERATE_UNUSED					= 0x11
};


/*编码类型列表: *//*元素说明:自定义协议名称，omx标准协议枚举的内容，原来unf接口对应的枚举*/
static const struct codec_info codec_trans_list[] = {
	{OMX_COMPONENTROLES_H264,	OMX_VIDEO_CodingAVC,	HI_UNF_VCODEC_TYPE_H264}, 
    {OMX_COMPONENTROLES_H263,	OMX_VIDEO_CodingH263,	HI_UNF_VCODEC_TYPE_H263},            
	{OMX_COMPONENTROLES_MPEG2,	OMX_VIDEO_CodingMPEG2,	HI_UNF_VCODEC_TYPE_MPEG2},
	{OMX_COMPONENTROLES_MPEG4,	OMX_VIDEO_CodingMPEG4,	HI_UNF_VCODEC_TYPE_MPEG4} 
};

static const struct codec_profile_level avc_profile_level_list[] =
{
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel1},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel1b},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel11},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel12},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel13},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel2},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel21},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel22},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel3},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel31},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel32},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel4},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel41},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel42},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel5},
    {OMX_VIDEO_AVCProfileBaseline, OMX_VIDEO_AVCLevel51},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel1},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel1b},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel11},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel12},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel13},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel2},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel21},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel22},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel3},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel31},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel32},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel4},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel41},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel42},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel5},
    {OMX_VIDEO_AVCProfileMain, OMX_VIDEO_AVCLevel51},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel1},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel1b},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel11},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel12},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel13},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel2},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel21},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel22},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel3},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel31},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel32},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel4},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel41},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel42},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel5},
    {OMX_VIDEO_AVCProfileHigh, OMX_VIDEO_AVCLevel51}
};


static const struct codec_profile_level mpeg4_profile_level_list[] = {
    {OMX_VIDEO_MPEG4ProfileSimple, OMX_VIDEO_MPEG4Level0},
    {OMX_VIDEO_MPEG4ProfileSimple, OMX_VIDEO_MPEG4Level0b},
    {OMX_VIDEO_MPEG4ProfileSimple, OMX_VIDEO_MPEG4Level1},
    {OMX_VIDEO_MPEG4ProfileSimple, OMX_VIDEO_MPEG4Level2},
    {OMX_VIDEO_MPEG4ProfileSimple, OMX_VIDEO_MPEG4Level3},
    {OMX_VIDEO_MPEG4ProfileSimple, OMX_VIDEO_MPEG4Level4},
    {OMX_VIDEO_MPEG4ProfileSimple, OMX_VIDEO_MPEG4Level4a},
    {OMX_VIDEO_MPEG4ProfileSimple, OMX_VIDEO_MPEG4Level5},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level0},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level0b},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level1},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level2},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level3},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level4},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level4a},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level5}
};


static const struct codec_profile_level mpeg2_profile_level_list[] = {
    { OMX_VIDEO_MPEG2ProfileSimple, OMX_VIDEO_MPEG2LevelLL},
    { OMX_VIDEO_MPEG2ProfileSimple, OMX_VIDEO_MPEG2LevelML},
    { OMX_VIDEO_MPEG2ProfileSimple, OMX_VIDEO_MPEG2LevelH14},
    { OMX_VIDEO_MPEG2ProfileSimple, OMX_VIDEO_MPEG2LevelHL},
    { OMX_VIDEO_MPEG2ProfileMain, OMX_VIDEO_MPEG2LevelLL},
    { OMX_VIDEO_MPEG2ProfileMain, OMX_VIDEO_MPEG2LevelML},
    { OMX_VIDEO_MPEG2ProfileMain, OMX_VIDEO_MPEG2LevelH14},
    { OMX_VIDEO_MPEG2ProfileMain, OMX_VIDEO_MPEG2LevelHL},
    { OMX_VIDEO_MPEG2ProfileHigh, OMX_VIDEO_MPEG2LevelLL},
    { OMX_VIDEO_MPEG2ProfileHigh, OMX_VIDEO_MPEG2LevelML},
    { OMX_VIDEO_MPEG2ProfileHigh, OMX_VIDEO_MPEG2LevelH14},
    { OMX_VIDEO_MPEG2ProfileHigh, OMX_VIDEO_MPEG2LevelHL}
};/**/


enum {
	OMX_VENC_YUV_420	= 0,
	OMX_VENC_YUV_422	= 1,
	OMX_VENC_YUV_444    = 2,
	OMX_VENC_YUV_NONE   = 3
};

enum {
    OMX_VENC_V_U        = 0,
    OMX_VENC_U_V    	= 1
};

enum {
	OMX_VENC_STORE_SEMIPLANNAR	= 0,
	OMX_VENC_STORE_PACKAGE   	= 1,
	OMX_VENC_STORE_PLANNAR      = 2
};

enum {
	OMX_VENC_PACKAGE_UY0VY1  	= 141/*0b10001101*/,
	OMX_VENC_PACKAGE_Y0UY1V	    = 216/*0b11011000*/,
	OMX_VENC_PACKAGE_Y0VY1U     = 120/*0b01111000*/
};


static OMX_ERRORTYPE omx_report_event(OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_IN OMX_EVENTTYPE event_type, OMX_IN OMX_U32 param1,
		OMX_IN OMX_U32 param2,OMX_IN OMX_PTR pdata)
{
	OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
	OMX_CHECK_ARG_RETURN(pcom_priv->m_cb.EventHandler == NULL);

	return pcom_priv->m_cb.EventHandler(pcom_priv->m_pcomp,
					pcom_priv->m_app_data,event_type,
					param1, param2, pdata);
}


static inline OMX_ERRORTYPE omx_report_error(OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_S32  error_type)
{
	return omx_report_event(
				pcom_priv, OMX_EventError, error_type, 0, NULL);
}


static OMX_BOOL port_full(OMX_COMPONENT_PRIVATE *pcom_priv, OMX_U32 port)
{
	OMX_PORT_PRIVATE *port_priv = &pcom_priv->m_port[port];
	OMX_U32 i;

	for (i = 0; i < port_priv->port_def.nBufferCountActual; i++)
	{
		if (bit_absent(&port_priv->m_buf_cnt, i))
		{
			return OMX_FALSE;
		}
	}
	return OMX_TRUE;
}


static OMX_BOOL port_empty(OMX_COMPONENT_PRIVATE *pcom_priv, OMX_U32 port)
{
	OMX_PORT_PRIVATE *port_priv = &pcom_priv->m_port[port];
	OMX_U32 i;

	for (i = 0; i < port_priv->port_def.nBufferCountActual; i++)
	{
		if (bit_present(&port_priv->m_buf_cnt, i))
		{
			return OMX_FALSE;
		}
	}
	return OMX_TRUE;
}


static OMX_BOOL ports_all_full(OMX_COMPONENT_PRIVATE *pcom_priv)
{
	if (port_full(pcom_priv, INPUT_PORT_INDEX) != OMX_TRUE)
		return OMX_FALSE;

	return port_full(pcom_priv, OUTPUT_PORT_INDEX);
}


static OMX_BOOL ports_all_empty(OMX_COMPONENT_PRIVATE *pcom_priv)
{
	if (port_empty(pcom_priv, INPUT_PORT_INDEX) != OMX_TRUE)
		return OMX_FALSE;

	return port_empty(pcom_priv, OUTPUT_PORT_INDEX);
}


static OMX_ERRORTYPE post_event(OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_U32 param1, OMX_U32 param2, OMX_U8 id)                //压入队列，写入管道
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_S32 n = -1;
	pthread_mutex_lock(&pcom_priv->m_lock);
	if ((id == OMX_GENERATE_FTB) || (id == OMX_GENERATE_FBD))
	{
		push_entry(&pcom_priv->m_ftb_q, param1, param2, id);
	}
	else if ((id == OMX_GENERATE_ETB) || (id == OMX_GENERATE_EBD))
	{
		push_entry(&pcom_priv->m_etb_q, param1, param2, id);                       //param1:对应命令 ，param2:该命令所带参数
    }
	else
	{
		push_entry(&pcom_priv->m_cmd_q, param1, param2, id);
	}
	n = write(pcom_priv->m_pipe_out, &id, 1);
	if (n < 0)
	{
		DEBUG_PRINT_ERROR("post message failed,id = %d\n", id);
		ret =  OMX_ErrorUndefined;
	}
	pthread_mutex_unlock(&pcom_priv->m_lock);
	return ret;
}


static OMX_ERRORTYPE fill_buffer_done(OMX_COMPONENT_PRIVATE* pcom_priv,
		OMX_BUFFERHEADERTYPE *buffer)
{
    OMX_ERRORTYPE ret; 
	OMX_PORT_PRIVATE *port_priv = NULL;
    //venc_drv_context *drv_ctx;
	OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
	OMX_CHECK_ARG_RETURN(buffer == NULL);

	/*DEBUG_PRINT_STREAM("[FBD] omxhdr: %p,pBuffer: %p"
			",nFilelen: %lu,nOffset:%lu\n",buffer,
			buffer->pBuffer, buffer->nFilledLen, buffer->nOffset);
    DEBUG_PRINT_ERROR("XXX [FBD] pBuffer: %p,", buffer->pBuffer);*/
    
	port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];

	if (port_priv->m_port_flushing)
	{
		buffer->nFilledLen = 0;
	}

	port_priv->m_buf_pend_cnt--;

    //drv_ctx = &pcom_priv->drv_ctx;
    
    /*if( channel_release_stream(drv_ctx, buffer->pOutputPortPrivate) < 0)              //add by liminqi
    {
        DEBUG_PRINT_ERROR("[EBD] channel_release_stream faild!\n");
		return OMX_ErrorUndefined;
    }*/
    
	if (!pcom_priv->m_cb.FillBufferDone)
	{
		DEBUG_PRINT_ERROR("[FBD] FillBufferDone callback NULL!\n");
		return OMX_ErrorUndefined;
	}
    
	ret = pcom_priv->m_cb.FillBufferDone(pcom_priv->m_pcomp,pcom_priv->m_app_data, buffer);

	return ret;
}


static OMX_ERRORTYPE empty_buffer_done(OMX_COMPONENT_PRIVATE* pcom_priv,
		OMX_BUFFERHEADERTYPE *buffer)
{
    OMX_ERRORTYPE ret;
	OMX_PORT_PRIVATE *port_priv = NULL;
    //venc_drv_context *drv_ctx;
	OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
	OMX_CHECK_ARG_RETURN(buffer == NULL);

    
	port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
   
	port_priv->m_buf_pend_cnt--;

	buffer->nFilledLen = 0;
    
    //drv_ctx = &pcom_priv->drv_ctx;

	if (!pcom_priv->m_cb.EmptyBufferDone)
	{
		DEBUG_PRINT_ERROR("[EBD] EmptyBufferDone callback NULL!\n");
		return OMX_ErrorUndefined;
	}
	ret = pcom_priv->m_cb.EmptyBufferDone(pcom_priv->m_pcomp,pcom_priv->m_app_data, buffer);

	return ret;
}


static OMX_ERRORTYPE use_buffer_internal(OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_INOUT OMX_BUFFERHEADERTYPE **omx_bufhdr,
		OMX_IN OMX_PTR app_data, OMX_IN OMX_U32 port,
		OMX_IN OMX_U32 bytes,OMX_IN OMX_U8 *buffer)
{
#if 1
    return OMX_ErrorNone;
#else
   
	OMX_ERRORTYPE error = OMX_ErrorNone;
	OMX_PORT_PRIVATE *port_priv = NULL;
	OMX_BUFFERHEADERTYPE *pomx_buf = NULL;
	OMX_U32 i = 0;
	OMX_U32 buf_size = 0, buf_cnt = 0;

	struct vdec_user_buf_desc* pvdec_buf = NULL;

	OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
	OMX_CHECK_ARG_RETURN(buffer == NULL);

	port_priv = &pcom_priv->m_port[port];
	buf_size = port_priv->port_pro.buffer_size;
	buf_cnt = port_priv->port_pro.max_count;

	if (bytes != buf_size)
	{
		DEBUG_PRINT_ERROR("[UB]Error:buf size or addr invalid\n");
		return OMX_ErrorBadParameter;
	}

	/* find an idle buffer slot */
	for (i = 0; i < buf_cnt; i++)
	{
		if (bit_absent(&port_priv->m_buf_cnt, i))
			break;
	}

	if (i >= buf_cnt)
	{
		DEBUG_PRINT_ERROR("[AB]Error: no Free buffer heads found\n");
		return OMX_ErrorInsufficientResources;
	}

	pomx_buf = (OMX_BUFFERHEADERTYPE*)malloc(
			sizeof(OMX_BUFFERHEADERTYPE));
	pvdec_buf = (struct vdec_user_buf_desc *)malloc(
			sizeof(struct vdec_user_buf_desc));
	if (!pomx_buf || !pvdec_buf)
	{
		DEBUG_PRINT_ERROR("[AB]Error:alloc omx buffer head failed\n");
		error = OMX_ErrorInsufficientResources;
		goto error_exit;
	}

	/* skip buffer allocation, direct bind */
	memset(pvdec_buf, 0, sizeof(struct vdec_user_buf_desc));
	pvdec_buf->dir			= port;
	pvdec_buf->bufferaddr	= buffer;
	pvdec_buf->buffer_len	= bytes;
	pvdec_buf->client_data  = (OMX_U32)pomx_buf;

	if (channel_bind_buffer(&pcom_priv->drv_ctx, pvdec_buf) < 0)
	{
		DEBUG_PRINT_ERROR("[UB]Error: vdec bind user buf failed\n");
		error = OMX_ErrorUndefined;
		goto error_exit;
	}

	DEBUG_PRINT("[UB] Bind Buffers %d success!\n", (OMX_S32)i);

	/* init OMX buffer head */
	pomx_buf->pBuffer			= buffer;
	pomx_buf->nSize				= sizeof(OMX_BUFFERHEADERTYPE);
	pomx_buf->nVersion.nVersion	= OMX_SPEC_VERSION;
	pomx_buf->nAllocLen			= bytes;
	pomx_buf->pAppPrivate		= app_data;

	if (INPUT_PORT_INDEX == port)
	{
		pomx_buf->pInputPortPrivate	= (OMX_PTR)pvdec_buf;
		pomx_buf->nInputPortIndex	= INPUT_PORT_INDEX;
		pomx_buf->pOutputPortPrivate	= NULL;
	}
	else
	{
		pomx_buf->pInputPortPrivate	= NULL;
		pomx_buf->pOutputPortPrivate	= (OMX_PTR)pvdec_buf;
		pomx_buf->nOutputPortIndex	= OUTPUT_PORT_INDEX;
	}

	*omx_bufhdr = pomx_buf;
	bit_set(&port_priv->m_buf_cnt, i);

	port_priv->m_omx_bufhead[i] = pomx_buf;
	port_priv->m_vdec_bufhead[i] = pvdec_buf;

	DEBUG_PRINT("[UB]use %s buffer %d success\n",
			(port == OUTPUT_PORT_INDEX) ? "out" : "in", (OMX_S32)i);
	return OMX_ErrorNone;

error_exit:
	free(pvdec_buf);
	free(pomx_buf);
	DEBUG_PRINT_ERROR("[UB]use %s buffer %d failed\n",
			(port == OUTPUT_PORT_INDEX) ? "out" : "in", (OMX_S32)i);
	return error;

#endif
}


static OMX_ERRORTYPE allocate_buffer_internal(OMX_COMPONENT_PRIVATE *pcom_priv,
                                        	  OMX_INOUT OMX_BUFFERHEADERTYPE **omx_bufhdr,
                                        	  OMX_IN OMX_PTR app_data, 
                                        	  OMX_IN OMX_U32 port,
                                        	  OMX_IN OMX_U32 bytes)
{
	OMX_BUFFERHEADERTYPE *pomx_buf = NULL;
	OMX_PORT_PRIVATE *port_priv = NULL;
	OMX_ERRORTYPE error = OMX_ErrorNone;
    
	OMX_U32 i = 0;
	OMX_U32 buf_size = 0, buf_cnt = 0;

	venc_user_buf *pvenc_buf = NULL;          //??
	port_priv = &pcom_priv->m_port[port];
	buf_cnt   = port_priv->port_def.nBufferCountActual;
	buf_size  = port_priv->port_def.nBufferSize;

	/* check alloc bytes */
	if (bytes < buf_size)
	{
		DEBUG_PRINT_ERROR("[AB]Error: Requested %ld, espected %ld\n",
				(OMX_S32)bytes, (OMX_S32)port_priv->port_def.nBufferSize);
		return OMX_ErrorBadParameter;
	}

	/* find an idle buffer slot */
	for (i = 0; i < buf_cnt; i++)
	{
		if (bit_absent(&port_priv->m_buf_cnt, i))
			break;
	}

	if (i >= buf_cnt)
	{
		DEBUG_PRINT_ERROR("[AB]Error: no Free buffer heads found\n");
		return OMX_ErrorInsufficientResources;
	}

	pomx_buf = (OMX_BUFFERHEADERTYPE*)malloc(sizeof(OMX_BUFFERHEADERTYPE));

    pvenc_buf = (venc_user_buf*)malloc(sizeof(venc_user_buf));

	if (!pomx_buf || !pvenc_buf)
	{
		DEBUG_PRINT_ERROR("[AB]Error:alloc omx buffer head failed\n");
		error = OMX_ErrorInsufficientResources;
		goto error_exit0;
	}

	pvenc_buf->dir         = (enum venc_port_dir)port_priv->port_def.eDir;
	pvenc_buf->client_data = (OMX_U32)pomx_buf;
    pvenc_buf->offset_YC   = (pcom_priv->m_port[0].port_def.format.video.nFrameWidth) * (pcom_priv->m_port[0].port_def.format.video.nFrameHeight);

	if (alloc_contigous_buffer(buf_size,port_priv->port_def.nBufferAlignment, pvenc_buf) < 0)              
	{
		DEBUG_PRINT_ERROR("[AB]Error: alloc_contigous_buffer failed\n");
		error =  OMX_ErrorUndefined;
		goto error_exit0;
	}

    if(PORT_DIR_OUTPUT == pvenc_buf->dir)
    {
        if (venc_mmap_kerel_vir(&(pcom_priv->drv_ctx),pvenc_buf) < 0)              
    	{
    		DEBUG_PRINT_ERROR("[AB]Error: venc_mmap_kerel_vir failed\n");
    		error =  OMX_ErrorUndefined;
    		goto error_exit1;
    	}
    }
    /*DEBUG_PRINT("XXX [AllocBuf] pBuffer_virAddr: 0x%x, len = %d, buf_heard(=client_data) :0x%x,vir2phy_offset = 0x%x\n", pvenc_buf->bufferaddr, pvenc_buf->buffer_size,pvenc_buf->client_data,pvenc_buf->vir2phy_offset);*/

    
#if 0       //需要把端口与buffer绑定?
                         /* bind this buffer to vdec driver */
                    	if (channel_bind_buffer(&pcom_priv->drv_ctx, pvenc_buf) < 0)
                    	{
                    		DEBUG_PRINT_ERROR("[AB]Error: Bind buffer failed\n");
                    		error =  OMX_ErrorUndefined;
                    		goto error_exit1;
                    	}
#endif

	/* init buffer head */
	CONFIG_VERSION_SIZE(pomx_buf,OMX_BUFFERHEADERTYPE);
	pomx_buf->pBuffer				= pvenc_buf->bufferaddr;  //用户态虚拟地址
	pomx_buf->nAllocLen			    = pvenc_buf->buffer_size;  //申请长度  
	pomx_buf->nOffset				= 0;
	pomx_buf->pAppPrivate			= app_data;

	if (port == INPUT_PORT_INDEX)
	{
		pomx_buf->pOutputPortPrivate = NULL;
		pomx_buf->pInputPortPrivate  = (void *)pvenc_buf;
		pomx_buf->nInputPortIndex    = port_priv->port_def.nPortIndex;
	}
	else
	{
		pomx_buf->pInputPortPrivate  = NULL;
		pomx_buf->pOutputPortPrivate = (void *)pvenc_buf;
		pomx_buf->nOutputPortIndex   = port_priv->port_def.nPortIndex;
	}

	*omx_bufhdr = pomx_buf;

	/* mark buffer to be allocated, used */
	bit_set(&port_priv->m_usage_bitmap, i);
	bit_set(&port_priv->m_buf_cnt, i);

	port_priv->m_omx_bufhead[i] = pomx_buf;
	port_priv->m_venc_bufhead[i] = pvenc_buf;

	DEBUG_PRINT("alloc %s buffer %ld success\n",
			(port == INPUT_PORT_INDEX) ? "input" : "output", (OMX_S32)i);
	return OMX_ErrorNone;

error_exit1:
	free_contigous_buffer(pvenc_buf);
error_exit0:
	free(pvenc_buf);
	free(pomx_buf);
	DEBUG_PRINT_ERROR("[AB]alloc %s buffer %ld failed\n",
			(port == OUTPUT_PORT_INDEX) ? "output" : "input", (OMX_S32)i);
	return error;
}


static OMX_ERRORTYPE free_buffer_internal(OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_IN OMX_U32 port, OMX_IN OMX_BUFFERHEADERTYPE *omx_bufhdr)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_PORT_PRIVATE *port_priv = NULL;

	OMX_U32 i;
    
	venc_user_buf* puser_buf = NULL;

	port_priv = &pcom_priv->m_port[port];

	/* santity check */
    for (i = 0; i < port_priv->port_def.nBufferCountActual; i++)
    {
        if (omx_bufhdr == port_priv->m_omx_bufhead[i])
        {
            break;
        }
    }

    if (i >= port_priv->port_def.nBufferCountActual)
    {
		DEBUG_PRINT_ERROR("no buffers found for address[%p]", omx_bufhdr);
        return OMX_ErrorBadParameter;
    }

	if (bit_absent(&port_priv->m_buf_cnt, i))
	{
		DEBUG_PRINT_ERROR("buffer 0x%p not been usaged?", omx_bufhdr);
        return OMX_ErrorBadParameter;
	}
	else
	{
		bit_clear(&port_priv->m_buf_cnt, i);
	}
    
	if (OUTPUT_PORT_INDEX == port)
	{
		puser_buf = (venc_user_buf*)(omx_bufhdr->pOutputPortPrivate);
	}
	else
	{
		puser_buf = (venc_user_buf*)(omx_bufhdr->pInputPortPrivate);
	}
    
#if 0       //取消 buffer对通道的绑定 /* unbind venc user buffer */
        	if (channel_unbind_buffer(&pcom_priv->drv_ctx, puser_buf) < 0)
        	{
        		DEBUG_PRINT_ERROR("[FB] unbind buffer failed\n");
        		return OMX_ErrorUndefined;
        	}
#endif

	if (port_priv->port_def.bPopulated)
	{
		port_priv->port_def.bPopulated = OMX_FALSE;
	}

	if (bit_present(&port_priv->m_usage_bitmap, i))
	{
	    if(PORT_DIR_OUTPUT == puser_buf->dir)
        {
            if (venc_unmmap_kerel_vir(&(pcom_priv->drv_ctx),puser_buf) < 0)              
        	{
        		DEBUG_PRINT_ERROR("[AB]Error: venc_unmmap_kerel_vir failed\n");
                return OMX_ErrorHardware;
        	}
        }/**/
        
		free_contigous_buffer(puser_buf);
		bit_clear(&port_priv->m_usage_bitmap, i);
	}

	free(puser_buf);
	free(omx_bufhdr);

	port_priv->m_omx_bufhead[i] = NULL;
	port_priv->m_venc_bufhead[i] = NULL;

	DEBUG_PRINT("[FB] %s exit!\n", __func__);
	return OMX_ErrorNone;
}


static OMX_ERRORTYPE omx_flush_port( OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_U32 port)
{
	OMX_PORT_PRIVATE *port_priv = NULL;

	if ((port != OMX_ALL) && (port > OUTPUT_PORT_INDEX))
	{
		DEBUG_PRINT_ERROR("omx_flush_port: invalid port index\n");
		return OMX_ErrorUndefined;
	}

	if (port == OUTPUT_PORT_INDEX || port == OMX_ALL)
	{
		port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
		port_priv->m_port_flushing = OMX_TRUE;
	}

	if (port == INPUT_PORT_INDEX || port == OMX_ALL)
	{
		port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
		port_priv->m_port_flushing = OMX_TRUE;
	}

	if (channel_flush_port(&pcom_priv->drv_ctx, port) < 0)
	{
		DEBUG_PRINT_ERROR("ioctl flush port failed\n");
		return OMX_ErrorHardware;
	}

	return OMX_ErrorNone;
}


static void return_outbuffers(OMX_COMPONENT_PRIVATE *pcom_priv)
{
	OMX_PORT_PRIVATE *port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
	OMX_U32 param1 = 0, param2 = 0, ident = 0;
	pthread_mutex_lock(&pcom_priv->m_lock);
	while (get_q_size(&pcom_priv->m_ftb_q) > 0)
	{
		pop_entry(&pcom_priv->m_ftb_q, &param1, &param2, &ident);
		if (ident == OMX_GENERATE_FTB )
		{
			port_priv->m_buf_pend_cnt++;
		}
		fill_buffer_done(pcom_priv,(OMX_BUFFERHEADERTYPE *)param1);
	}
	pthread_mutex_unlock(&pcom_priv->m_lock);
}


static void return_inbuffers(OMX_COMPONENT_PRIVATE *pcom_priv)
{
	OMX_PORT_PRIVATE *port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
	OMX_U32 param1 = 0, param2 = 0, ident = 0;
	pthread_mutex_lock(&pcom_priv->m_lock);
	while (get_q_size(&pcom_priv->m_etb_q) > 0)
	{
		pop_entry(&pcom_priv->m_etb_q, &param1, &param2, &ident);
		if(ident == OMX_GENERATE_ETB)
		{
			port_priv->m_buf_pend_cnt++;
		}
		empty_buffer_done(pcom_priv,(OMX_BUFFERHEADERTYPE *)param1);
	}
	pthread_mutex_unlock(&pcom_priv->m_lock);
}

#if 0
static OMX_ERRORTYPE update_picture_info(OMX_COMPONENT_PRIVATE *pcomp_priv,
		OMX_U32 width, OMX_U32 height)
{
	OMX_U32 align_width, align_height;
	OMX_PORT_PRIVATE *port_priv = NULL;

	align_width = ALIGN_UP(width, 16);                 //多少对齐?            
	align_height = ALIGN_UP(height, 16);

	if ((align_height > MAX_FRAME_HEIGHT) || (align_width > MAX_FRAME_WIDTH))
	{
		DEBUG_PRINT_ERROR("video frame w/h exceed!\n");
		return OMX_ErrorUnsupportedSetting;
	}

	port_priv = &pcomp_priv->m_port[INPUT_PORT_INDEX];
	port_priv->pic_info.frame_width	    = width;
	port_priv->pic_info.frame_height	= height;
	port_priv->pic_info.stride			= align_width;
    
	/*pcomp_priv->pic_info.scan_lines		= align_height;
	pcomp_priv->pic_info.crop_top 	    = 0;
	pcomp_priv->pic_info.crop_left	    = 0;
	pcomp_priv->pic_info.crop_width    	= width;
	pcomp_priv->pic_info.crop_height	= height;*/

	port_priv->port_pro.buffer_size		= FRAME_SIZE(align_width, align_height);
	return OMX_ErrorNone;
}
#endif
static OMX_ERRORTYPE check_port_parameter(OMX_COMPONENT_PRIVATE *pcomp_priv,
		OMX_U32 width, OMX_U32 height)
{

	return OMX_ErrorNone;
}

#if 0
static OMX_ERRORTYPE get_supported_profile_level(
		OMX_COMPONENT_PRIVATE *pcomp_priv,
		OMX_VIDEO_PARAM_PROFILELEVELTYPE *profileLevelType)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	struct codec_profile_level *pinfo = NULL;
	OMX_S32 max_num;

	OMX_CHECK_ARG_RETURN(pcomp_priv == NULL);
	OMX_CHECK_ARG_RETURN(profileLevelType == NULL);

	if (profileLevelType->nPortIndex != OUTPUT_PORT_INDEX)
	{
		DEBUG_PRINT_ERROR("get_supported_profile_level "
				"should be queries on Output port only %ld\n",
				profileLevelType->nPortIndex);
		ret = OMX_ErrorBadPortIndex;
	}

	/* FIXME : profile & level may not correct! */
	if (!strncmp((OMX_S8*)pcomp_priv->m_role, OMX_COMPONENTROLES_H264,
				OMX_MAX_STRINGNAME_SIZE))
	{
		pinfo = avc_profile_level_list;
		max_num = COUNTOF(avc_profile_level_list);
	}
	else if (!strncmp((OMX_S8 *)pcomp_priv->m_role, OMX_COMPONENTROLES_MPEG4,
				OMX_MAX_STRINGNAME_SIZE))
	{
		pinfo = mpeg4_profile_level_list;
		max_num = COUNTOF(mpeg4_profile_level_list);
	}
	else if (!strncmp((OMX_S8 *)pcomp_priv->m_role, OMX_COMPONENTROLES_MPEG2,
				OMX_MAX_STRINGNAME_SIZE))
	{
		pinfo = mpeg2_profile_level_list;
		max_num = COUNTOF(mpeg2_profile_level_list);
	}
	else
		return OMX_ErrorUndefined;
	if (profileLevelType->nProfileIndex >= max_num)
		return OMX_ErrorNoMore;

	pinfo += profileLevelType->nProfileIndex;
	profileLevelType->eProfile = pinfo->profile;
	profileLevelType->eLevel   = pinfo->level;

	return ret;
}
#endif

static OMX_U32 OMX_Convert_PIX_Format(OMX_COLOR_FORMATTYPE Format,OMX_U32 flag)
{
   OMX_U32 Ret = HI_SUCCESS;
   if(0 == flag) /*YUVStoreType*/
   {
     switch(Format)
     {
        case OMX_COLOR_FormatYUV420Planar:   
            Ret = OMX_VENC_STORE_PLANNAR;
            break;
        case OMX_COLOR_FormatYUV420SemiPlanar:    
            Ret = OMX_VENC_STORE_SEMIPLANNAR;
            break;
        case OMX_COLOR_FormatYUV422Planar:     
            Ret = OMX_VENC_STORE_PLANNAR;
            break;
        case OMX_COLOR_FormatYUV422SemiPlanar:     
            Ret = OMX_VENC_STORE_SEMIPLANNAR;
            break;
        case OMX_COLOR_FormatYCbYCr:     
            Ret = OMX_VENC_STORE_PACKAGE;
            break;
        case OMX_COLOR_FormatYCrYCb :     
            Ret = OMX_VENC_STORE_PACKAGE;
            break;
        case OMX_COLOR_FormatCbYCrY:     
            Ret = OMX_VENC_STORE_PACKAGE;
            break;
        case OMX_COLOR_FormatCrYCbY:    
            Ret = OMX_VENC_STORE_PACKAGE;
            break;		
        /*case OMX_COLOR_FormatYUV420PackedPlanar:     
            Ret = VENC_STORE_SEMIPLANNAR;
            break;
        case OMX_COLOR_FormatYUV422PackedPlanar:     
            Ret = VENC_STORE_SEMIPLANNAR;
            break;	*/		
        default:
            Ret = OMX_VENC_STORE_SEMIPLANNAR;
            break; 
     }
   }
   else if (1 == flag) /*YUVSampleType*/
   {
     switch(Format)
     {
        case OMX_COLOR_FormatYUV420Planar:   
            Ret = OMX_VENC_YUV_420;
            break;
        case OMX_COLOR_FormatYUV420SemiPlanar:    
            Ret = OMX_VENC_YUV_420;
            break;
        case OMX_COLOR_FormatYUV422Planar:     
            Ret = OMX_VENC_YUV_422;
            break;
        case OMX_COLOR_FormatYUV422SemiPlanar:     
            Ret = OMX_VENC_YUV_422;
            break;
        case OMX_COLOR_FormatYCbYCr:     
            Ret = OMX_VENC_YUV_422;
            break;
        case OMX_COLOR_FormatYCrYCb :     
            Ret = OMX_VENC_YUV_422;
            break;
        case OMX_COLOR_FormatCbYCrY:     
            Ret = OMX_VENC_YUV_422;
            break;
        case OMX_COLOR_FormatCrYCbY:    
            Ret = OMX_VENC_YUV_422;
            break;		
        /*case OMX_COLOR_FormatYUV420PackedPlanar:     
            Ret = OMX_VENC_YUV_420;
            break;
        case OMX_COLOR_FormatYUV422PackedPlanar:     
            Ret = OMX_VENC_YUV_422;
            break;	*/		
        default:
            Ret = OMX_VENC_YUV_420;
            break; 
     }
   }
   else if(2 == flag) /*PackageSel*/
   {
     switch(Format)
     {
        case OMX_COLOR_FormatYUV420Planar:   
            Ret = OMX_VENC_V_U;
            break;
        case OMX_COLOR_FormatYUV420SemiPlanar:    
            Ret = OMX_VENC_V_U;
            break;
        case OMX_COLOR_FormatYUV422Planar:     
            Ret = OMX_VENC_V_U;
            break;
        case OMX_COLOR_FormatYUV422SemiPlanar:     
            Ret = OMX_VENC_V_U;
            break;
        case OMX_COLOR_FormatYCbYCr:     
            Ret = OMX_VENC_PACKAGE_Y0UY1V;
            break;
        case OMX_COLOR_FormatYCrYCb :     
            Ret = OMX_VENC_PACKAGE_Y0VY1U;
            break;
        case OMX_COLOR_FormatCbYCrY:     
            Ret = OMX_VENC_PACKAGE_UY0VY1;
            break;
        case OMX_COLOR_FormatCrYCbY:    
            Ret = OMX_VENC_PACKAGE_UY0VY1;      //QS
            break;		
        /*case OMX_COLOR_FormatYUV420PackedPlanar:     
            Ret = OMX_VENC_YUV_420;
            break;
        case OMX_COLOR_FormatYUV422PackedPlanar:     
            Ret = OMX_VENC_YUV_422;
            break;	*/		
        default:
            Ret = OMX_VENC_V_U;
            break;
     }
   }
   else
   {
      Ret = HI_FALSE;
   }
   
   return Ret;
}


static OMX_ERRORTYPE empty_this_buffer_proxy(
		OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_IN OMX_BUFFERHEADERTYPE *pomx_buf)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	venc_user_buf *ptr_intputbuffer = NULL;
	venc_user_buf *puser_buf = NULL;
	OMX_U32 buf_cnt = 0, buf_index = 0;
	OMX_PORT_PRIVATE *port_priv = NULL;

	if (!pcom_priv)
	{
	   DEBUG_PRINT_ERROR("[FTB]Proxy: bad parameter:null PTR\n");
	   return OMX_ErrorBadParameter;
	}

	if (!pomx_buf)
	{
		DEBUG_PRINT_ERROR("[ETB]Proxy: bad parameters\n");
		ret = OMX_ErrorBadParameter;
		goto empty_error;
	}

	port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];

	if ((port_priv->m_port_flushing == OMX_TRUE)
			|| (port_priv->m_port_reconfig == OMX_TRUE))
	{
		DEBUG_PRINT_ERROR("[ETB]Proxy: port flushing or disabled\n");
#if 0
		ret = OMX_ErrorIncorrectStateOperation;
		goto empty_error;
#endif
		pomx_buf->nFilledLen = 0;
		post_event(pcom_priv, (OMX_U32)pomx_buf, VENC_DONE_SUCCESS, OMX_GENERATE_EBD);
        return OMX_ErrorNone;                                  //add by l00228308
        
	}

///////////////////////////////////////////////////////////////////////    must be change to venc
	puser_buf = (venc_user_buf *)pomx_buf->pInputPortPrivate;
	if (!puser_buf)
	{
		DEBUG_PRINT_ERROR("[ETB]Proxy: invalid user buffer!\n");
		ret =  OMX_ErrorUndefined;
		goto empty_error;
	}

	puser_buf->data_len	    = pomx_buf->nFilledLen;
	puser_buf->offset       = pomx_buf->nOffset;
	//puser_buf->timestamp	= pomx_buf->nTimeStamp / 1e3;
	puser_buf->flags		= pomx_buf->nFlags;
	puser_buf->store_type   = OMX_Convert_PIX_Format(port_priv->port_def.format.video.eColorFormat,0);
	puser_buf->sample_type  = OMX_Convert_PIX_Format(port_priv->port_def.format.video.eColorFormat,1);
	puser_buf->package_sel  = OMX_Convert_PIX_Format(port_priv->port_def.format.video.eColorFormat,2);
	

    if(port_priv->port_def.format.video.eColorFormat == OMX_COLOR_FormatYUV420SemiPlanar)   //QS!!
    {
       puser_buf->strideY      = port_priv->port_def.format.video.nFrameWidth;
       puser_buf->strideC      = port_priv->port_def.format.video.nFrameWidth;
    }
	DEBUG_PRINT("&&&&&&&&&&&&%s[%d]\n",__func__,__LINE__);
	if (channel_queue_Image(&pcom_priv->drv_ctx, puser_buf) < 0)      //change to queueFrame
	{
		/*Generate an async error and move to invalid state*/
		DEBUG_PRINT_ERROR("[ETB]proxy: queue_Image failed\n");
		ret = OMX_ErrorUndefined;
		goto empty_error;
	}
	DEBUG_PRINT("&&&&&&&&&&&&%s[%d]\n",__func__,__LINE__);

/////////////////////////////////////////////////////////////////////////         end 
	port_priv->m_buf_pend_cnt++;

	/*DEBUG_PRINT("[ETB] %s() success,bufheard :0x%x\n", __func__,pomx_buf);*/
	return OMX_ErrorNone;

empty_error:
	post_event(pcom_priv,(OMX_U32)pomx_buf, (OMX_U32)VENC_DONE_FAILED, OMX_GENERATE_EBD);
	return ret;
}


static OMX_ERRORTYPE  fill_this_buffer_proxy(
		OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_IN OMX_BUFFERHEADERTYPE* pomx_buf)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	venc_user_buf *puser_buf = NULL;
	OMX_PORT_PRIVATE *port_priv = NULL;

	if (!pcom_priv)
	{
	   DEBUG_PRINT_ERROR("[FTB]Proxy: bad parameter:null PTR\n");
	   return OMX_ErrorBadParameter;
	}

	if (!pomx_buf)
	{
		DEBUG_PRINT_ERROR("[FTB]Proxy: bad parameter\n");
		ret = OMX_ErrorBadParameter;
		goto fill_error;
	}

	port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];

	if ((port_priv->m_port_flushing == OMX_TRUE) ||
			(port_priv->m_port_reconfig == OMX_TRUE))
	{
		DEBUG_PRINT("[FTB]Proxy: port is flushing or reconfig\n");
		pomx_buf->nFilledLen = 0;
		post_event(pcom_priv, (OMX_U32)pomx_buf,(OMX_U32)VENC_DONE_SUCCESS, OMX_GENERATE_FBD);
		return OMX_ErrorNone;
	}

///////////////////////////////////////////////////////////////////////////////  must be change
	puser_buf = (venc_user_buf *)pomx_buf->pOutputPortPrivate;
	if (!puser_buf)
	{
		DEBUG_PRINT_ERROR("[FTB]Proxy: invalid user buf\n");
		ret = OMX_ErrorUndefined;
		goto fill_error;
	}
    puser_buf->data_len = 0;
    pomx_buf->nFilledLen = 0;

	if (channel_queue_stream(&pcom_priv->drv_ctx, puser_buf) < 0)
	{
		DEBUG_PRINT_ERROR("[FTB]Proxy: fill_stream_buffer failed\n");
		return OMX_ErrorHardware;
	}
///////////////////////////////////////////////////////////////////////////////////// end
	port_priv->m_buf_pend_cnt++;
   
	DEBUG_PRINT("[FTB]Proxy: fill this buffer success!\n");
	return OMX_ErrorNone;

fill_error:
	post_event(pcom_priv,(OMX_U32)pomx_buf, (OMX_U32)VENC_DONE_FAILED, OMX_GENERATE_FBD);
	return ret;
}


static OMX_S32 message_process (OMX_COMPONENT_PRIVATE  *pcom_priv, void* message)
{
	OMX_BUFFERHEADERTYPE *pomx_buf = NULL;
	OMX_PORT_PRIVATE *port_priv = NULL;

	OMX_U32 width = 0, height = 0;
	OMX_U32 i = 0;

	venc_user_buf *puser_buf = NULL;
	venc_msginfo *venc_msg = NULL;
	//struct image_size *pimg = NULL;
	//struct crop_rect *pcrop = NULL;

	if (!pcom_priv || !message)
	{
		DEBUG_PRINT_ERROR("async_message_process() invalid param\n");
		return -1;
	}

	venc_msg = (venc_msginfo *)message;

	switch (venc_msg->msgcode)
	{
		case VENC_MSG_RESP_FLUSH_INPUT_DONE:
			post_event(pcom_priv,0, venc_msg->status_code, OMX_GENERATE_FLUSH_INPUT_DONE);

			if (bit_present(&pcom_priv->m_flags,OMX_STATE_INPUT_DISABLE_PENDING))
			{
			   post_event(pcom_priv,(OMX_U32)OMX_CommandPortDisable,(OMX_U32)OUTPUT_PORT_INDEX,
					OMX_GENERATE_COMMAND_DONE);
			}
			break;

		case VENC_MSG_RESP_FLUSH_OUTPUT_DONE:
			post_event(pcom_priv,
				0, venc_msg->status_code, OMX_GENERATE_FLUSH_OUTPUT_DONE);

			if (bit_present(&pcom_priv->m_flags,OMX_STATE_OUTPUT_DISABLE_PENDING))
			{
			   post_event(pcom_priv,
					(OMX_U32)OMX_CommandPortDisable, (OMX_U32)INPUT_PORT_INDEX,
					OMX_GENERATE_COMMAND_DONE);
			}
			break;

		case VENC_MSG_RESP_START_DONE:
			post_event(pcom_priv,
				0, venc_msg->status_code, OMX_GENERATE_START_DONE);
			break;

		case VENC_MSG_RESP_STOP_DONE:
			post_event(pcom_priv,
				0, venc_msg->status_code, OMX_GENERATE_STOP_DONE);
			break;

		case VENC_MSG_RESP_PAUSE_DONE:
			post_event(pcom_priv,
				0, venc_msg->status_code, OMX_GENERATE_PAUSE_DONE);
			break;

		case VENC_MSG_RESP_RESUME_DONE:
			post_event(pcom_priv,
				0, venc_msg->status_code, OMX_GENERATE_RESUME_DONE);
			break;

		case VENC_MSG_RESP_INPUT_DONE:
			puser_buf = &venc_msg->buf;
			port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
            
			if (puser_buf->client_data == 0)
			{
				DEBUG_PRINT_ERROR("venc resp buf struct invalid\n");
				post_event(pcom_priv, 0, (OMX_U32)VENC_DONE_FAILED, OMX_GENERATE_EBD);
				break;
			}

			pomx_buf = (OMX_BUFFERHEADERTYPE *)puser_buf->client_data;
			for (i = 0; i < port_priv->port_def.nBufferCountActual; i++)
			{
				if (pomx_buf == port_priv->m_omx_bufhead[i])
				{
					break;
				}
			}

			if (i >= port_priv->port_def.nBufferCountActual)
			{
				DEBUG_PRINT_ERROR("buffers[%p] no found", pomx_buf);
				post_event(pcom_priv,
					0, (OMX_U32)VENC_DONE_FAILED, OMX_GENERATE_EBD);
				break;
			}

			/*DEBUG_PRINT("[EBD]venc resp in buffer 0x%x,buferaddr:0x%x\n",
					pomx_buf, pomx_buf->pBuffer);*/

			post_event(pcom_priv,
				(OMX_U32)pomx_buf, (OMX_U32)VENC_DONE_SUCCESS, OMX_GENERATE_EBD);
			break;

		case VENC_MSG_RESP_OUTPUT_DONE:
			DEBUG_PRINT("%s,VENC resp output done\n",__func__);
			puser_buf = &venc_msg->buf;
			port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
			if (puser_buf->client_data == 0)
			{
				DEBUG_PRINT_ERROR(" %s,venc resp out buffer invalid\n",__func__);
				post_event(pcom_priv, 0, (OMX_U32)VENC_DONE_FAILED, OMX_GENERATE_FBD);
				break;
			}

			pomx_buf = (OMX_BUFFERHEADERTYPE *)puser_buf->client_data;

			/* check buffer validate*/
			for (i = 0; i < port_priv->port_def.nBufferCountActual; i++)
			{
				if (pomx_buf == port_priv->m_omx_bufhead[i])
				{
					break;
				}
			}

			if (i >= port_priv->port_def.nBufferCountActual)
			{
				DEBUG_PRINT_ERROR("%s[%d]no buffers found for address[%p]",__func__,__LINE__, pomx_buf);
				post_event(pcom_priv,0, (OMX_U32)VENC_DONE_FAILED, OMX_GENERATE_FBD);
				break;
			}

			DEBUG_PRINT_STREAM("[FBD] venc resp out buffer %p,"
					" buferaddr:%p, data_len:%ld\n", pomx_buf,
					puser_buf->bufferaddr, (OMX_S32)puser_buf->data_len);

			pomx_buf->nFilledLen = puser_buf->data_len;
			pomx_buf->nFlags	 = puser_buf->flags;

#if 0
			if (puser_buf->timestamp < 0)
			{
				long long interval = 1e6 / pcom_priv->m_frame_rate;    /* 1*10的6次方 *//*计算每帧间隔多少微秒 us*/
				pomx_buf->nTimeStamp =
					pcom_priv->m_pre_timestamp + interval;
				pcom_priv->m_pre_timestamp = pomx_buf->nTimeStamp;
			}
			else
			{
				pomx_buf->nTimeStamp = puser_buf->timestamp * 1e3;
				pcom_priv->m_pre_timestamp = puser_buf->timestamp;
			}
#endif
			post_event(pcom_priv,
				(OMX_U32)pomx_buf, venc_msg->status_code, OMX_GENERATE_FBD);
			break;
#if 0 
		case VENC_EVT_REPORT_IMG_SIZE_CHG:
			DEBUG_PRINT("image size change!\n");
			pimg = &venc_msg->msgdata.img_size;
			width = (OMX_U32)pimg->frame_width;
			height = (OMX_U32)pimg->frame_height;

			if (width != pcom_priv->pic_info.stride ||
					height != pcom_priv->pic_info.scan_lines)
			{
				DEBUG_PRINT("old_w: %d, old_h:%d, new_w:%d, new_h:%d\n",
						(OMX_S32)pcom_priv->pic_info.frame_width,
						(OMX_S32)pcom_priv->pic_info.frame_height,
						(OMX_S32)width, (OMX_S32)height);

				update_picture_info(pcom_priv, width, height);
				post_event(pcom_priv,
					width, height, OMX_GENERATE_IMAGE_SIZE_CHANGE);
			}
			break;
                       
		case VENC_EVT_REPORT_CROP_RECT_CHG:
			DEBUG_PRINT("image size change!\n");
			pcrop = &venc_msg->msgdata.img_crop;

			if (pcrop->crop_top != pcom_priv->pic_info.crop_top ||
			    pcrop->crop_left != pcom_priv->pic_info.crop_left ||
			    pcrop->crop_width != pcom_priv->pic_info.crop_width ||
			    pcrop->crop_height != pcom_priv->pic_info.crop_height)
			{
				DEBUG_PRINT_ERROR("old_crop: (%d, %d), (%d, %d)\n",
						(OMX_S32)pcom_priv->pic_info.crop_top,
						(OMX_S32)pcom_priv->pic_info.crop_left,
						(OMX_S32)pcom_priv->pic_info.crop_width, 
						(OMX_S32)pcom_priv->pic_info.crop_height);

				DEBUG_PRINT_ERROR("new_crop: (%d, %d), (%d, %d)\n",
						(OMX_S32)pcrop->crop_top,
						(OMX_S32)pcrop->crop_left,
						(OMX_S32)pcrop->crop_width, 
						(OMX_S32)pcrop->crop_height);

				pcom_priv->pic_info.crop_top 	= pcrop->crop_top;
				pcom_priv->pic_info.crop_left 	= pcrop->crop_left;
				pcom_priv->pic_info.crop_width 	= pcrop->crop_width;
				pcom_priv->pic_info.crop_height = pcrop->crop_height;

				post_event(pcom_priv,
					width, height, OMX_GENERATE_CROP_RECT_CHANGE);
			}
			break;
                       
		case VENC_EVT_REPORT_HW_ERROR:
			post_event(pcom_priv,
				0, venc_msg->status_code, OMX_GENERATE_HARDWARE_ERROR);
			break;
#endif 
		default:
			DEBUG_PRINT_ERROR("msg 0x%08x not process\n",
					venc_msg->msgcode);
			break;
	}

	return 0;
}


static void *message_thread(void *input)
{
	OMX_COMPONENT_PRIVATE *pcom_priv = (OMX_COMPONENT_PRIVATE *)input;
	OMX_S32 error_code = 0;
	venc_msginfo msginfo;

	memset(&msginfo,0,sizeof(venc_msginfo));
	DEBUG_PRINT("Message thread start!\n");

	while (!pcom_priv->msg_thread_exit)
	{   
		error_code = channel_get_msg(&pcom_priv->drv_ctx, &msginfo);
        DEBUG_PRINT("\n[%s]: msginfo.msgcode = 0x%08x\n",__func__,msginfo.msgcode);
		if (error_code == HI_FAILURE)
		{
			DEBUG_PRINT("get msg failed:%ld\n", error_code);
			continue;
		}
		message_process(pcom_priv, &msginfo);
	}

	DEBUG_PRINT("Message thread exit!\n");
	return NULL;
}


static OMX_ERRORTYPE generate_command_done(
		OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_U32 param1, OMX_U32 param2 )
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_PORT_PRIVATE *port_priv = NULL;

	OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
	OMX_CHECK_ARG_RETURN(pcom_priv->m_cb.EventHandler == NULL);

	switch (param1)
	{
		case OMX_CommandStateSet:
			pcom_priv->m_state = (OMX_STATETYPE)param2;
			ret = omx_report_event(pcom_priv,
					OMX_EventCmdComplete, param1, param2, NULL);
			break;

		case OMX_CommandPortEnable:
			DEBUG_PRINT("OMX_CommandPortEnable complete\n");
			port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
			if (port_priv->m_port_reconfig)
			{
				DEBUG_PRINT("clear flags for port reconfig!\n");
				port_priv->m_port_reconfig = OMX_FALSE;
			}

			ret = omx_report_event(pcom_priv,
					OMX_EventCmdComplete, param1, param2, NULL);
			break;

		case OMX_CommandPortDisable:
			DEBUG_PRINT("OMX_CommandPortDisable complete\n");
			ret = omx_report_event(pcom_priv,
					OMX_EventCmdComplete, param1, param2, NULL);
			break;

		case OMX_CommandFlush:
            
		default:
			DEBUG_PRINT_ERROR("unknown genereate event %lu\n", param1);
			ret = OMX_ErrorUndefined;
			break;
	}
	return ret;
}


static OMX_ERRORTYPE handle_command_state_set(
		OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_STATETYPE state, OMX_U32 *sem_posted)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_U32 flag = 1;

	DEBUG_PRINT("%s() Current State %d, Expected State %d\n",
				__func__, pcom_priv->m_state, state);

	/***************************/
	/* Current State is Loaded */
	/***************************/
	if (pcom_priv->m_state == OMX_StateLoaded)
	{
		/*  Loaded to idle */
		if( state == OMX_StateIdle)
		{

            DEBUG_PRINT("encoder width:%d,height:%d\n",pcom_priv->drv_ctx.venc_chan_attr.chan_cfg.frame_width,pcom_priv->drv_ctx.venc_chan_attr.chan_cfg.frame_height);
            printf("encoder width:%d,height:%d\n",pcom_priv->drv_ctx.venc_chan_attr.chan_cfg.frame_width,pcom_priv->drv_ctx.venc_chan_attr.chan_cfg.frame_height);
			if (channel_create(&pcom_priv->drv_ctx) < 0)
			{
				DEBUG_PRINT_ERROR("ERROR: channel create failed!\n");
				ret = OMX_ErrorHardware;
				goto event_post;
			}

			if (ports_all_full(pcom_priv) ||
					(pcom_priv->m_port[0].port_def.bEnabled== OMX_FALSE &&
					pcom_priv->m_port[1].port_def.bEnabled  == OMX_FALSE))
			{
				DEBUG_PRINT("Loaded-->Idle\n");
			}
			else
			{
				DEBUG_PRINT("Loaded-->Idle-Pending\n");
				bit_set(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING);
				flag = 0;
			}
		}
		/*  Loaded to Loaded */
		else if (state == OMX_StateLoaded)
		{
			DEBUG_PRINT_STATE("ERROR: Loaded-->Loaded\n");
			ret = OMX_ErrorSameState;
		}
		/*  Loaded to WaitForResources */
		else if (state == OMX_StateWaitForResources)
		{
			DEBUG_PRINT_STATE("Loaded-->WaitForResources\n");
			ret = OMX_ErrorNone;
		}
		/*  Loaded to Executing */
		else if (state == OMX_StateExecuting)
		{
			DEBUG_PRINT_STATE("ERROR:Loaded-->Executing\n");
			ret = OMX_ErrorIncorrectStateTransition;
		}
		/*  Loaded to Pause */
		else if (state == OMX_StatePause)
		{
			DEBUG_PRINT_STATE("ERROR: Loaded-->Pause\n");
			ret = OMX_ErrorIncorrectStateTransition;
		}
		/*  Loaded to Invalid */
		else if (state == OMX_StateInvalid)
		{
			DEBUG_PRINT_STATE("ERROR: Loaded-->Invalid\n");
			ret = OMX_ErrorInvalidState;
		}
		else
		{
			DEBUG_PRINT_STATE("Loaded-->%d Not Handled)\n", state);
			ret = OMX_ErrorUndefined;
		}
	}
	/***************************/
	/* Current State is IDLE */
	/***************************/
	else if (pcom_priv->m_state == OMX_StateIdle)
	{
		/*  Idle to Loaded */
		if (state == OMX_StateLoaded)
		{
			if (ports_all_empty(pcom_priv))
			{   
			   if( channel_destroy(&pcom_priv->drv_ctx) < 0)
                {
                   DEBUG_PRINT_ERROR("ERROR: channel create failed!\n");
    			   ret = OMX_ErrorHardware;
    			   goto event_post;
                }   
                pcom_priv->msg_thread_exit = OMX_TRUE;
    			pthread_join(pcom_priv->msg_thread_id, NULL);
                
				DEBUG_PRINT_STATE("idle-->Loaded\n");
			}
			else
			{
				DEBUG_PRINT_STATE("idle-->Loaded-Pending\n");
				bit_set(&pcom_priv->m_flags, OMX_STATE_LOADING_PENDING);
				flag = 0;
			}
		}
		/*  Idle to Executing */
		else if (state == OMX_StateExecuting)
		{
			DEBUG_PRINT("idle-->Executing-Pending\n");
			if (channel_start(&pcom_priv->drv_ctx) < 0)
			{
				DEBUG_PRINT_ERROR("Channel start failed\n");
				ret = OMX_ErrorHardware;
				goto event_post;
			}

            if (pthread_create(&pcom_priv->msg_thread_id,
					0, message_thread, pcom_priv) < 0)
			{
				DEBUG_PRINT_ERROR("ERROR: failed to create msg thread\n");
				ret = OMX_ErrorInsufficientResources;
				goto event_post;
			}

			DEBUG_PRINT("message thread create ok\n");

			// post event after venc response.
			//bit_set(&pcom_priv->m_flags, OMX_STATE_EXECUTE_PENDING);
			flag = 1;
		}
		/*  Idle to Idle */
		else if (state == OMX_StateIdle)
		{
			DEBUG_PRINT_STATE("ERROR: Idle-->Idle\n");
			ret = OMX_ErrorSameState;
		}
		/*  Idle to WaitForResources */
		else if (state == OMX_StateWaitForResources)
		{
			DEBUG_PRINT_STATE("ERROR: Idle-->WaitForResources\n");
			ret = OMX_ErrorIncorrectStateTransition;
		}
		/*  Idle to Pause */
		else if (state == OMX_StatePause)
		{
			DEBUG_PRINT_STATE("Idle-->Pause\n");
			bit_set(&pcom_priv->m_flags, OMX_STATE_PAUSE_PENDING);
			flag = 0;
		}
		/*  Idle to Invalid */
		else if (state == OMX_StateInvalid)
		{
			DEBUG_PRINT_STATE("ERROR:Idle-->Invalid\n");
			ret = OMX_ErrorInvalidState;
		}
		else
		{
			DEBUG_PRINT_ERROR("Idle --> %d Not Handled\n", state);
			ret = OMX_ErrorBadParameter;
		}
	}
	/******************************/
	/* Current State is Executing */
	/******************************/
	else if(pcom_priv->m_state == OMX_StateExecuting)
	{
		/*  Executing to Idle */
		if (state == OMX_StateIdle)
		{   
			if (channel_stop(&pcom_priv->drv_ctx) < 0)
			{
				DEBUG_PRINT_ERROR("chan stop failed\n");
				ret = OMX_ErrorHardware;
				goto event_post;
			}
            
			DEBUG_PRINT_STATE("Executing-->Idle OK! \n");
			//bit_set(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING);
			flag = 1;
		}
		/*  Executing to Paused */
		else if (state == OMX_StatePause)
		{
			if (channel_stop(&pcom_priv->drv_ctx) < 0)
			{
				DEBUG_PRINT_ERROR("Error In Pause State\n");
				ret = OMX_ErrorHardware;
				goto event_post;
			}
            
			DEBUG_PRINT_STATE("Executing-->Pause OK!\n");
			//bit_set(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING);
			flag = 1;
		}
		/*  Executing to Loaded */
		else if (state == OMX_StateLoaded)
		{
			DEBUG_PRINT_STATE("Executing --> Loaded \n");
			ret = OMX_ErrorIncorrectStateTransition;
		}
		/*  Executing to WaitForResources */
		else if (state == OMX_StateWaitForResources)
		{
			DEBUG_PRINT_STATE("Executing --> WaitForResources \n");
			ret = OMX_ErrorIncorrectStateTransition;
		}
		/*  Executing to Executing */
		else if (state == OMX_StateExecuting)
		{
			DEBUG_PRINT_STATE("Executing --> Executing \n");
			ret = OMX_ErrorSameState;
		}
		/*  Executing to Invalid */
		else if (state == OMX_StateInvalid)
		{
			DEBUG_PRINT_STATE("Executing --> Invalid \n");
			ret = OMX_ErrorInvalidState;
		}
		else
		{
			DEBUG_PRINT_ERROR("Executing -->%d Not Handled\n", state);
			ret = OMX_ErrorBadParameter;
		}
	}
	/***************************/
	/* Current State is Pause  */
	/***************************/
	else if (pcom_priv->m_state == OMX_StatePause)
	{
		/*  Pause to Executing */
		if (state == OMX_StateExecuting)
		{
			if (channel_start(&pcom_priv->drv_ctx) < 0)
			{
				DEBUG_PRINT_ERROR("Channel start failed\n");
				ret = OMX_ErrorHardware;
				goto event_post;
			}
            DEBUG_PRINT_STATE("Pause-->Executing OK! \n");
            flag = 1;

		}
		/*  Pause to Idle */
		else if (state == OMX_StateIdle)
		{
			if (channel_stop(&pcom_priv->drv_ctx) < 0)
			{
				DEBUG_PRINT_ERROR("channel_stop failed\n");
				ret = OMX_ErrorHardware;
				goto event_post;
			}

			DEBUG_PRINT_STATE("Pause --> Idle!\n");
			bit_set(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING);
			flag = 0;

			if (!*sem_posted)
			{
				*sem_posted = 1;
				sem_post(&pcom_priv->m_cmd_lock);
				omx_flush_port(pcom_priv, OMX_ALL);
			}
		}
		/*  Pause to loaded */
		else if (state == OMX_StateLoaded)
		{
			DEBUG_PRINT_STATE("Pause --> loaded \n");
			ret = OMX_ErrorIncorrectStateTransition;
		}
		/*  Pause to WaitForResources */
		else if (state == OMX_StateWaitForResources)
		{
			DEBUG_PRINT_STATE("Pause --> WaitForResources\n");
			ret = OMX_ErrorIncorrectStateTransition;
		}
		/*  Pause to Pause */
		else if (state == OMX_StatePause)
		{
			DEBUG_PRINT_STATE("Pause --> Pause\n");
			ret = OMX_ErrorSameState;
		}
		/*  Pause to Invalid */
		else if (state == OMX_StateInvalid)
		{
			DEBUG_PRINT_STATE("Pause --> Invalid\n");
			ret = OMX_ErrorInvalidState;
		}
		else
		{
			DEBUG_PRINT_STATE("ERROR:Paused -->%d Not Handled\n",state);
			ret = OMX_ErrorBadParameter;
		}
	}
	/***************************/
	/* Current State is WaitForResources  */
	/***************************/
	else if (pcom_priv->m_state == OMX_StateWaitForResources)
	{
		/*  WaitForResources to Loaded */
		if (state == OMX_StateLoaded)
		{
			DEBUG_PRINT_STATE("WaitForResources-->Loaded\n");
		}
        if (state == OMX_StateIdle)
		{
			DEBUG_PRINT_STATE("WaitForResources-->Idle\n");
		}
		/*  WaitForResources to WaitForResources */
		else if (state == OMX_StateWaitForResources)
		{
			DEBUG_PRINT_STATE("ERROR: WaitForResources-->WaitForResources\n");
			ret = OMX_ErrorSameState;
		}
		/*  WaitForResources to Executing */
		else if (state == OMX_StateExecuting)
		{
			DEBUG_PRINT_STATE("ERROR: WaitForResources-->Executing\n");
			ret = OMX_ErrorIncorrectStateTransition;
		}
		/*  WaitForResources to Pause */
		else if (state == OMX_StatePause)
		{
			DEBUG_PRINT_STATE("ERROR: WaitForResources-->Pause\n");
			ret = OMX_ErrorIncorrectStateTransition;
		}
		/*  WaitForResources to Invalid */
		else if (state == OMX_StateInvalid)
		{
			DEBUG_PRINT_STATE("ERROR: WaitForResources-->Invalid\n");
			ret = OMX_ErrorInvalidState;
		}
		/*  WaitForResources to Loaded -
		   is NOT tested by Khronos TS */
		else
		{
			DEBUG_PRINT_STATE("ERROR: %d --> %d(NotHandled)\n",
					pcom_priv->m_state, state);
			ret = OMX_ErrorBadParameter;
		}
	}
	/********************************/
	/* Current State is Invalid */
	/*******************************/
	else if (pcom_priv->m_state == OMX_StateInvalid)
	{
		/* State Transition from Inavlid to any state */
		DEBUG_PRINT_STATE("ERROR: Invalid -> any \n");
		ret = OMX_ErrorInvalidState;
	}

event_post:
	if (flag)
	{
		if (ret != OMX_ErrorNone)                     //异常退出处理分支
		{
			omx_report_error(pcom_priv, ret);
		}
		else
		{
			post_event(pcom_priv,
				OMX_CommandStateSet, state, OMX_GENERATE_COMMAND_DONE);
		}
	}
	return ret;
}


static OMX_ERRORTYPE handle_command_flush(
		OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_U32 port, OMX_U32 *sem_posted)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_PORT_PRIVATE *port_priv = NULL;

	DEBUG_PRINT("OMX_CommandFlush!\n");
	if ((port != OMX_ALL) && (port > OUTPUT_PORT_INDEX))
	{
		DEBUG_PRINT_ERROR("Error: Invalid Port %ld\n", (OMX_S32)port);
		return OMX_ErrorBadPortIndex;
	}

	if ((INPUT_PORT_INDEX == port) || (OMX_ALL == port))
	{
		bit_set(&pcom_priv->m_flags,
				OMX_STATE_INPUT_FLUSH_PENDING);
		port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
		port_priv->m_port_flushing = OMX_TRUE;
	}
	if ((OUTPUT_PORT_INDEX == port) || (OMX_ALL == port))
	{
		bit_set(&pcom_priv->m_flags,
				OMX_STATE_OUTPUT_FLUSH_PENDING);
		port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
		port_priv->m_port_flushing = OMX_TRUE;
	}

	if (channel_flush_port(&pcom_priv->drv_ctx, port) < 0)
	{
		DEBUG_PRINT_ERROR("ioctl flush port failed\n");
		ret = OMX_ErrorHardware;
		/*fixme: should clear flushing pending bits?!!*/
		omx_report_error(pcom_priv, ret);
	}
    else
	    DEBUG_PRINT("command flush ok!\n");
	return ret;
}


static OMX_ERRORTYPE handle_command_port_disable(
		OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_U32 port, OMX_U32 *sem_posted)
{
	//OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_PORT_PRIVATE *port_priv = NULL;
	OMX_U32 flag = 1;

	DEBUG_PRINT("OMX_CommandPortDisable\n");
	if((port == INPUT_PORT_INDEX) || (port == OMX_ALL))
	{
		DEBUG_PRINT("Disable input port!\n");

		port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
		if (port_priv->port_def.bEnabled)
		{
			port_priv->port_def.bEnabled = OMX_FALSE;

			if (!port_empty(pcom_priv, INPUT_PORT_INDEX)) //port buffer 非空
			{
				DEBUG_PRINT_STATE("in port disable->enable pending!\n");
				bit_set(&pcom_priv->m_flags,
					OMX_STATE_INPUT_DISABLE_PENDING);

				if((pcom_priv->m_state == OMX_StatePause)
					|| (pcom_priv->m_state == OMX_StateExecuting))
				{
					if(!*sem_posted)
					{
						*sem_posted = 1;
						sem_post (&pcom_priv->m_cmd_lock);
					}
					omx_flush_port(pcom_priv, INPUT_PORT_INDEX);
				}
				flag = 0;
			}
		}
		else
		{
			DEBUG_PRINT("output already disabled\n");
			//ret = OMX_ErrorNone;
		}

		if (flag)
		{
			post_event(pcom_priv,
					OMX_CommandPortDisable, INPUT_PORT_INDEX,
					OMX_GENERATE_COMMAND_DONE);
		}
	}

	flag = 1;
	if((port == OUTPUT_PORT_INDEX) || (port == OMX_ALL))
	{
		DEBUG_PRINT("Disable output port!\n");
		port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
		if (port_priv->port_def.bEnabled)
		{
			port_priv->port_def.bEnabled = OMX_FALSE;

			if (!port_empty(pcom_priv, OUTPUT_PORT_INDEX))
			{
				DEBUG_PRINT_STATE("out port Enabled-->Disable Pending\n");

				bit_set(&pcom_priv->m_flags,
						OMX_STATE_OUTPUT_DISABLE_PENDING);

				if((pcom_priv->m_state == OMX_StatePause) ||
						(pcom_priv->m_state == OMX_StateExecuting))
				{
					if (!*sem_posted)
					{
						*sem_posted = 1;
						sem_post (&pcom_priv->m_cmd_lock);
					}
					omx_flush_port(pcom_priv, OUTPUT_PORT_INDEX);
				}
				flag = 0;
			}
		}
		else
		{
			DEBUG_PRINT("output already disabled\n");
			//ret = OMX_ErrorNone;
		}

		if (flag)
		{
			post_event(pcom_priv,
					OMX_CommandPortDisable, OUTPUT_PORT_INDEX,
					OMX_GENERATE_COMMAND_DONE);
		}

	}

	return OMX_ErrorNone;
}


static OMX_ERRORTYPE handle_command_port_enable(
			OMX_COMPONENT_PRIVATE *pcom_priv,
			OMX_U32 port, OMX_U32 *sem_posted)
{
	//OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_PORT_PRIVATE *port_priv = NULL;
	OMX_U32 flag = 1;

	DEBUG_PRINT("OMX_CommandPortEnable\n");

	if ((port == INPUT_PORT_INDEX) || (port == OMX_ALL))
	{
		DEBUG_PRINT("Enable input port!\n");

		port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
		if (!port_priv->port_def.bEnabled)
		{
			port_priv->port_def.bEnabled = OMX_TRUE;

			if (!port_full(pcom_priv, INPUT_PORT_INDEX))
			{
				DEBUG_PRINT_STATE("Disabled-->Enabled Pending\n");
				bit_set(&pcom_priv->m_flags,
						OMX_STATE_INPUT_ENABLE_PENDING);
				flag = 0;
			}
		}
		else
		{
			DEBUG_PRINT("Inport already enabled\n");
			//ret = OMX_ErrorNone;
		}

		if(flag)
		{
			post_event(pcom_priv,
					OMX_CommandPortEnable, INPUT_PORT_INDEX,
					OMX_GENERATE_COMMAND_DONE);
		}
	}

	flag = 1;
	if ((port == OUTPUT_PORT_INDEX) || (port == OMX_ALL))
	{
		DEBUG_PRINT("Enable output port!\n");

		port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
		if (!port_priv->port_def.bEnabled)
		{
			port_priv->port_def.bEnabled = OMX_TRUE;

			if (!port_full(pcom_priv, OUTPUT_PORT_INDEX))
			{
				DEBUG_PRINT_STATE("Disabled-->Enabled Pending\n");
				bit_set(&pcom_priv->m_flags,
						OMX_STATE_OUTPUT_ENABLE_PENDING);
				flag = 0;
			}
		}
		else
		{
			DEBUG_PRINT("Out port already enabled\n");
			//ret = OMX_ErrorNone;
		}

		if(flag)
		{
			post_event(pcom_priv,
					OMX_CommandPortEnable, OUTPUT_PORT_INDEX,
					OMX_GENERATE_COMMAND_DONE);
		}
	}

	return OMX_ErrorNone;
}


static OMX_ERRORTYPE  send_command_proxy(
		OMX_COMPONENT_PRIVATE *pcom_priv,
		OMX_IN OMX_COMMANDTYPE cmd,
		OMX_IN OMX_U32 param1, OMX_IN OMX_PTR cmd_data)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_U32 flag = 1, sem_posted = 0;
	OMX_U32 port;

	OMX_CHECK_ARG_RETURN(pcom_priv == NULL);

	switch (cmd)
	{
		case OMX_CommandStateSet:
			ret = handle_command_state_set(
					pcom_priv, (OMX_STATETYPE)param1, &sem_posted);
			break;

		case OMX_CommandFlush:
			ret = handle_command_flush(
					pcom_priv, param1, &sem_posted);
			break;

		case OMX_CommandPortEnable:
			ret = handle_command_port_enable(
					pcom_priv, param1, &sem_posted);
			break;

		case OMX_CommandPortDisable:
			ret = handle_command_port_disable(
					pcom_priv, param1, &sem_posted);
			break;

		default:
			DEBUG_PRINT_ERROR("Error: Invalid Command(%d)\n", cmd);
			ret = OMX_ErrorNotImplemented;
			break;
	}

	if(!sem_posted)
	{
		sem_post(&pcom_priv->m_cmd_lock);
	}

	return ret;
}


static void event_process(OMX_COMPONENT_PRIVATE *pcom_priv, OMX_U32 id)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_PORT_PRIVATE *port_priv = NULL;
	OMX_U32 p1 = 0, p2 = 0, ident = 0;
	OMX_U32 qsize = 0;

	if (!pcom_priv || (id >= OMX_GENERATE_UNUSED))
	{
		DEBUG_PRINT_ERROR("ERROR: %s() invalid param!\n", __func__);
		return;
	}

	/* process event from cmd/etb/ftb queue */
	pthread_mutex_lock(&pcom_priv->m_lock);
	if ((id == OMX_GENERATE_FTB) || (id == OMX_GENERATE_FBD))
	{   
		qsize = get_q_size(&pcom_priv->m_ftb_q);
		if ((qsize == 0) /*|| (pcom_priv->m_state == OMX_StatePause)*/)
		{
		    pthread_mutex_unlock(&pcom_priv->m_lock);
			return;
		}
		pop_entry(&pcom_priv->m_ftb_q, &p1, &p2, &ident);
	}
	else if ((id == OMX_GENERATE_ETB) || (id == OMX_GENERATE_EBD))
	{
		qsize = get_q_size(&pcom_priv->m_etb_q);
		if ((qsize == 0) /*|| (pcom_priv->m_state == OMX_StatePause)*/)
		{
		    pthread_mutex_unlock(&pcom_priv->m_lock);
			return;
		}
		pop_entry(&pcom_priv->m_etb_q, &p1, &p2, &ident);
	}
	else
	{
		qsize = get_q_size(&pcom_priv->m_cmd_q);
		if (qsize == 0)
		{
		    pthread_mutex_unlock(&pcom_priv->m_lock);
			return;
		}
		pop_entry(&pcom_priv->m_cmd_q, &p1, &p2, &ident);
	}

	pthread_mutex_unlock(&pcom_priv->m_lock);
	
	if (id != ident)
	{
		DEBUG_PRINT_ERROR("ID cannot match, id %lu, ident %lu\n",
				id, ident);
		return;
	}
	
	/* event process instance */
	switch (id) {
		case OMX_GENERATE_COMMAND_DONE:
			ret = generate_command_done(pcom_priv, p1, p2);
			break;

		case OMX_GENERATE_ETB:
            DEBUG_PRINT("$$$$$$$$$$$$%s,%d\n",__func__,__LINE__);
			ret = empty_this_buffer_proxy(pcom_priv,
					(OMX_BUFFERHEADERTYPE *)p1);
            DEBUG_PRINT("$$$$$$$$$$$$%s,%d,ret = %d\n",__func__,__LINE__,ret);
			break;

		case OMX_GENERATE_FTB:
			ret = fill_this_buffer_proxy(pcom_priv,
						(OMX_BUFFERHEADERTYPE *)p1);
			break;

		case OMX_GENERATE_COMMAND:
			ret = send_command_proxy(pcom_priv,
						(OMX_COMMANDTYPE)p1,
						(OMX_U32)p2,(OMX_PTR)NULL);
			break;

		case OMX_GENERATE_EBD:
			if (p2 != VENC_DONE_SUCCESS)
			{
				DEBUG_PRINT_ERROR("OMX_GENERATE_EBD failure\n");
				omx_report_error(pcom_priv, OMX_ErrorUndefined);
				break;
			}

			ret = empty_buffer_done(pcom_priv,
						(OMX_BUFFERHEADERTYPE *)p1);
			if (ret != OMX_ErrorNone)
			{
				DEBUG_PRINT_ERROR("empty_buffer_done failure\n");
				omx_report_error(pcom_priv, ret);
			}
			break;

		case OMX_GENERATE_FBD:
			if (p2 != VENC_DONE_SUCCESS)
			{
				DEBUG_PRINT_ERROR("OMX_GENERATE_FBD failure %s,%d\n",__func__,__LINE__);
				omx_report_error(pcom_priv, OMX_ErrorUndefined);
				break;
			}

			ret = fill_buffer_done(pcom_priv,
					(OMX_BUFFERHEADERTYPE *)p1);
			if (ret != OMX_ErrorNone)
			{
				DEBUG_PRINT_ERROR("fill_buffer_done failure\n");
				omx_report_error (pcom_priv, ret);
			}
			break;

		case OMX_GENERATE_FLUSH_INPUT_DONE:
			DEBUG_PRINT("Driver flush i/p Port complete\n");
			port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
			if (!port_priv->m_port_flushing)
			{
				DEBUG_PRINT("WARNING: Unexpected flush cmd\n");
				break;
			}
			else
			{
				port_priv->m_port_flushing = OMX_FALSE;
			}

			return_inbuffers(pcom_priv);

			if (p2 != VENC_DONE_SUCCESS)
			{
				DEBUG_PRINT_ERROR("input flush failure\n");
				omx_report_error(pcom_priv, OMX_ErrorHardware);
				break;
			}

			/*Check if we need generate event for Flush done*/
			if(bit_present(&pcom_priv->m_flags,
						OMX_STATE_INPUT_FLUSH_PENDING))
			{
				DEBUG_PRINT("Input Flush completed - Notify Client\n");
				bit_clear (&pcom_priv->m_flags,
						OMX_STATE_INPUT_FLUSH_PENDING);

				omx_report_event(pcom_priv,
						OMX_EventCmdComplete,
						OMX_CommandFlush, INPUT_PORT_INDEX, NULL);
			}
			break;

		case OMX_GENERATE_FLUSH_OUTPUT_DONE:
			DEBUG_PRINT("Driver flush o/p Port complete\n");
			port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
			if (!port_priv->m_port_flushing)
			{
				DEBUG_PRINT("WARNING: Unexpected flush cmd\n");
				break;
			}
			else
			{
				port_priv->m_port_flushing = OMX_FALSE;
			}
			return_outbuffers(pcom_priv);
			if (p2 != VENC_DONE_SUCCESS)
			{
				DEBUG_PRINT_ERROR("output flush failure\n");
				omx_report_error(pcom_priv, OMX_ErrorHardware);
				break;
			}

			/*Check if we need generate event for Flush done*/
			if(bit_present(&pcom_priv->m_flags,
						OMX_STATE_OUTPUT_FLUSH_PENDING))
			{
				DEBUG_PRINT("Notify Output Flush done\n");
				bit_clear (&pcom_priv->m_flags,
						OMX_STATE_OUTPUT_FLUSH_PENDING);
				omx_report_event(pcom_priv,
						OMX_EventCmdComplete,
						OMX_CommandFlush, OUTPUT_PORT_INDEX, NULL);
			}
			break;

		case OMX_GENERATE_START_DONE:
			if (p2 != VENC_DONE_SUCCESS)
			{
				DEBUG_PRINT_ERROR("OMX_GENERATE_START_DONE Failure\n");
				omx_report_error(pcom_priv, OMX_ErrorHardware);
				break;
			}

			if(bit_present(&pcom_priv->m_flags,
						OMX_STATE_EXECUTE_PENDING))
			{
				DEBUG_PRINT_STATE("Move to executing\n");
				bit_clear((&pcom_priv->m_flags),
						OMX_STATE_EXECUTE_PENDING);
				pcom_priv->m_state = OMX_StateExecuting;
				omx_report_event(pcom_priv,
						OMX_EventCmdComplete,
						OMX_CommandStateSet, OMX_StateExecuting, NULL);
			}

			if (bit_present(&pcom_priv->m_flags,
						OMX_STATE_PAUSE_PENDING))
			{
				if (channel_stop(&pcom_priv->drv_ctx) < 0)
				{
					DEBUG_PRINT_ERROR("channel_pause failed\n");
					omx_report_error(pcom_priv, OMX_ErrorHardware);
				}
			}
			break;

		case OMX_GENERATE_PAUSE_DONE:
			if (p2 != VENC_DONE_SUCCESS)
			{
				DEBUG_PRINT_ERROR("OMX_GENERATE_PAUSE_DONE failed\n");
				omx_report_error(pcom_priv, OMX_ErrorHardware);
				break;
			}

			if(bit_present(&pcom_priv->m_flags,
						OMX_STATE_PAUSE_PENDING))
			{
				DEBUG_PRINT("OMX_GENERATE_PAUSE_DONE nofity\n");

				bit_clear(&pcom_priv->m_flags,
						OMX_STATE_PAUSE_PENDING);

				pcom_priv->m_state = OMX_StatePause;
				omx_report_event(pcom_priv,
						OMX_EventCmdComplete,
						OMX_CommandStateSet, OMX_StatePause, NULL);
			}
			break;

		case OMX_GENERATE_RESUME_DONE:
			if (p2 != VENC_DONE_SUCCESS)
			{
				DEBUG_PRINT_ERROR("OMX_GENERATE_RESUME_DONE failed\n");
				omx_report_error(pcom_priv, OMX_ErrorHardware);
				break;
			}

			if (bit_present(&pcom_priv->m_flags,
						OMX_STATE_EXECUTE_PENDING))
			{
				DEBUG_PRINT_STATE("Moving to execute state\n");

				bit_clear((&pcom_priv->m_flags),
						OMX_STATE_EXECUTE_PENDING);
                pcom_priv->m_state = OMX_StateExecuting;
				omx_report_event(pcom_priv,
					OMX_EventCmdComplete,
					OMX_CommandStateSet, OMX_StateExecuting, NULL);
			}
			break;

		case OMX_GENERATE_STOP_DONE:
			if (p2 != VENC_DONE_SUCCESS)
			{
				DEBUG_PRINT_ERROR("OMX_GENERATE_STOP_DONE failed\n");
				omx_report_error(pcom_priv, OMX_ErrorHardware);
				break;
			}

			return_outbuffers(pcom_priv);
			return_inbuffers(pcom_priv);

			if (bit_present(&pcom_priv->m_flags,
						OMX_STATE_IDLE_PENDING))
			{
				bit_clear((&pcom_priv->m_flags),
						OMX_STATE_IDLE_PENDING);

				pcom_priv->m_state = OMX_StateIdle;

				DEBUG_PRINT_STATE("State Idle-pending -> Idle\n");

				omx_report_event(pcom_priv,
					OMX_EventCmdComplete,
					OMX_CommandStateSet, OMX_StateIdle, NULL);
			}
			break;

		case OMX_GENERATE_EOS_DONE:
			DEBUG_PRINT("Rxd OMX_GENERATE_EOS_DONE\n");
			omx_report_event(pcom_priv,
					OMX_EventBufferFlag,
					OUTPUT_PORT_INDEX, OMX_BUFFERFLAG_EOS, NULL);
			break;

		case OMX_GENERATE_IMAGE_SIZE_CHANGE:
			DEBUG_PRINT("image size changed!\n");
			port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
			port_priv->m_port_reconfig = OMX_TRUE;
			omx_report_event(pcom_priv,
					OMX_EventPortSettingsChanged,
					OUTPUT_PORT_INDEX, OMX_IndexParamPortDefinition, NULL);
			break;

		case OMX_GENERATE_CROP_RECT_CHANGE:
			DEBUG_PRINT("crop rect changed!\n");
			port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
			omx_report_event(pcom_priv,
					OMX_EventPortSettingsChanged,
					OUTPUT_PORT_INDEX, OMX_IndexConfigCommonOutputCrop, NULL);
			break;

		case OMX_GENERATE_HARDWARE_ERROR:
			DEBUG_PRINT_ERROR("hardware failed\n");
			omx_report_error(pcom_priv, OMX_ErrorHardware);
			break;

		default:
			DEBUG_PRINT_ERROR("default process for msg %lu\n", id);
			break;
	}
}


static void *event_thread(void *input)
{
	OMX_COMPONENT_PRIVATE *pcom_priv =
					(OMX_COMPONENT_PRIVATE *)input;
	OMX_U8 id;
	OMX_S32 n = -1;
	sem_wait(&pcom_priv->m_async_sem);                                  //等外部释放m_async_sem信号量才正式执行线程
	DEBUG_PRINT("Event thread start!\n");
	while (!pcom_priv->event_thread_exit)
	{
	    sem_post(&pcom_priv->m_async_sem);
		n = read(pcom_priv->m_pipe_in, &id, 1);
        DEBUG_PRINT("\n\n %s,%d,id = %d\n",__func__,__LINE__,id);
		if (((n < 0) && (errno != EINTR)) || (n == 0))                   //errno!=EINTR -- 如果错误号码不等于 （中断）事件发生，即如果是由于中断引起的错误，继续执行
		{
			DEBUG_PRINT_ERROR("read from pipe failed, ret:%ld\n", n);
			break;
		}
		else if (n > 1)
		{
			DEBUG_PRINT_ERROR("read more than 1 byte\n");
			continue;
		}
		event_process(pcom_priv, id);
		
		sem_wait(&pcom_priv->m_async_sem); 
	}

	sem_post(&pcom_priv->m_async_sem);
	DEBUG_PRINT("Event thread exit!\n");
	return NULL;
}


static OMX_S32 ports_init(OMX_COMPONENT_PRIVATE *pcom_priv)
{
	OMX_PORT_PRIVATE *in_port  = NULL;
	OMX_PORT_PRIVATE *out_port = NULL;
	OMX_S32 result = -1;

	/* init in port private */
	in_port = &pcom_priv->m_port[INPUT_PORT_INDEX];
	in_port->m_omx_bufhead = (OMX_BUFFERHEADERTYPE**)malloc(sizeof(OMX_BUFFERHEADERTYPE*)* MAX_BUF_NUM);
    
	in_port->m_venc_bufhead = (venc_user_buf **)malloc(sizeof(venc_user_buf*) * MAX_BUF_NUM);
	if (!in_port->m_omx_bufhead || !in_port->m_venc_bufhead)
	{
		DEBUG_PRINT_ERROR("not enough memory!\n");
		goto inport_error;
	}

    in_port->m_buf_cnt				= 0;
	in_port->m_buf_pend_cnt			= 0;
	in_port->m_port_reconfig		= OMX_FALSE;
	in_port->m_port_flushing		= OMX_FALSE;

    //CONFIG_VERSION_SIZE(&(in_port->port_def), OMX_PARAM_PORTDEFINITIONTYPE);
    in_port->port_def.nVersion.nVersion                 = OMX_SPEC_VERSION;
    in_port->port_def.nSize                             = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
    
    in_port->port_def.nPortIndex                        = INPUT_PORT_INDEX;
    in_port->port_def.eDir                              = OMX_DirInput;
    in_port->port_def.nBufferCountActual                = DEF_MAX_IN_BUF_CNT;
    in_port->port_def.nBufferCountMin                   = DEF_MIN_IN_BUF_CNT;
    in_port->port_def.nBufferSize                       = FRAME_SIZE(MAX_FRAME_WIDTH, MAX_FRAME_HEIGHT);   //暂时开辟了编码最大性能的buffer_size
    in_port->port_def.bEnabled                          = OMX_TRUE;
    in_port->port_def.bPopulated                        = OMX_FALSE;
    in_port->port_def.eDomain                           = OMX_PortDomainVideo;
    in_port->port_def.bBuffersContiguous                = OMX_TRUE;
    in_port->port_def.nBufferAlignment                  = DEFAULT_ALIGN_SIZE;
    
    in_port->port_def.format.video.nFrameWidth          = MAX_FRAME_WIDTH;
    in_port->port_def.format.video.nFrameHeight         = MAX_FRAME_HEIGHT;
    in_port->port_def.format.video.xFramerate           = DEFAULT_FPS;
    in_port->port_def.format.video.nStride              = MAX_FRAME_WIDTH;
    in_port->port_def.format.video.eColorFormat         = OMX_COLOR_FormatYUV420SemiPlanar;
    in_port->port_def.format.video.eCompressionFormat   = OMX_VIDEO_CodingUnused;
    in_port->port_def.format.video.bFlagErrorConcealment= OMX_FALSE;

	/* init out port private */
	out_port = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
	out_port->m_omx_bufhead = (OMX_BUFFERHEADERTYPE**)malloc(sizeof(OMX_BUFFERHEADERTYPE*)* MAX_BUF_NUM);
	out_port->m_venc_bufhead = (venc_user_buf **)malloc(sizeof(venc_user_buf*) * MAX_BUF_NUM);
	if (!out_port->m_omx_bufhead || !out_port->m_venc_bufhead)
	{
		DEBUG_PRINT_ERROR("not enough memory!\n");
		goto outport_error;
	}

	out_port->m_buf_cnt				= 0;
	out_port->m_buf_pend_cnt		= 0;
	out_port->m_port_reconfig		= OMX_FALSE;
	out_port->m_port_flushing		= OMX_FALSE;

    //CONFIG_VERSION_SIZE(&(in_port->port_def), OMX_PARAM_PORTDEFINITIONTYPE);
    out_port->port_def.nVersion.nVersion                 = OMX_SPEC_VERSION;
    out_port->port_def.nSize                             = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
    out_port->port_def.nPortIndex                        = OUTPUT_PORT_INDEX;
    out_port->port_def.eDir                              = OMX_DirOutput;
    out_port->port_def.nBufferCountActual                = DEF_MAX_OUT_BUF_CNT;
    out_port->port_def.nBufferCountMin                   = DEF_MIN_OUT_BUF_CNT;
    out_port->port_def.nBufferSize                       = FRAME_SIZE(MAX_FRAME_WIDTH, MAX_FRAME_HEIGHT);   //暂时开辟了编码最大性能的buffer_size
    out_port->port_def.bEnabled                          = OMX_TRUE;
    out_port->port_def.bPopulated                        = OMX_FALSE;
    out_port->port_def.eDomain                           = OMX_PortDomainVideo;
    out_port->port_def.bBuffersContiguous                = OMX_TRUE;
    out_port->port_def.nBufferAlignment                  = DEFAULT_ALIGN_SIZE;
    
    out_port->port_def.format.video.nFrameWidth          = MAX_FRAME_WIDTH;
    out_port->port_def.format.video.nFrameHeight         = MAX_FRAME_HEIGHT;
    out_port->port_def.format.video.xFramerate           = DEFAULT_FPS;
    //out_port->port_def.format.video.nSliceHeight       = 720;                              ??
    out_port->port_def.format.video.nBitrate             = DEFAULT_BITRATE;
    out_port->port_def.format.video.eColorFormat         = OMX_COLOR_FormatUnused;
    out_port->port_def.format.video.eCompressionFormat   = OMX_VIDEO_CodingAVC;
    out_port->port_def.format.video.bFlagErrorConcealment= OMX_FALSE;

	DEBUG_PRINT("exit %s()", __func__);
	return 0;

outport_error:
	free(out_port->m_omx_bufhead);
	free(out_port->m_venc_bufhead);

inport_error:
	free(in_port->m_omx_bufhead);
	free(in_port->m_venc_bufhead);
	return result;
}


static void ports_deinit(OMX_COMPONENT_PRIVATE *pcom_priv)
{
    OMX_S32 i = 0;
    for (; i < MAX_PORT_NUM; ++i)
    {
        free(pcom_priv->m_port[i].m_venc_bufhead);
        free(pcom_priv->m_port[i].m_omx_bufhead);
    }
    DEBUG_PRINT("exit %s()", __func__);
}


/* ==========================================================================
   FUNCTION
   get_component_version

   DESCRIPTION
   Returns the component specifcation version.

   PARAMETERS
   TBD.

   RETURN VALUE
   OMX_ErrorNone.
   ==========================================================================*/
static OMX_ERRORTYPE  get_component_version(
		OMX_IN  OMX_HANDLETYPE phandle,
		OMX_OUT OMX_STRING comp_name,
		OMX_OUT OMX_VERSIONTYPE* comp_version,
		OMX_OUT OMX_VERSIONTYPE* spec_version,
		OMX_OUT OMX_UUIDTYPE* componentUUID)
{
	OMX_COMPONENTTYPE *pcomp         = NULL;
	OMX_COMPONENT_PRIVATE *pcom_priv = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
    OMX_CHECK_ARG_RETURN(comp_name == NULL);
    OMX_CHECK_ARG_RETURN(comp_version == NULL);
    OMX_CHECK_ARG_RETURN(spec_version == NULL);
    OMX_CHECK_ARG_RETURN(componentUUID == NULL);
    
    
	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	if (pcom_priv->m_state == OMX_StateInvalid)    //OMX_StateInvalid状态中，此时不能对组件进行操作
	{
		DEBUG_PRINT_ERROR("get_component_version: Invalid State\n");
		return OMX_ErrorInvalidState;
	}
    
    strncpy(comp_name, pcom_priv->m_comp_name ,OMX_MAX_STRINGNAME_SIZE-1);
    
    comp_version->nVersion = pcomp->nVersion.nVersion;
	spec_version->nVersion = OMX_SPEC_VERSION;
    //componentUUID          = ??;

	return OMX_ErrorNone;
}


/* ==========================================================================
   FUNCTION
   send_command

   DESCRIPTION
   process command sent to component

   PARAMETERS
   None.

   RETURN VALUE
   Error None if successful. Or Error Type
   ==========================================================================*/
static OMX_ERRORTYPE  send_command(
		OMX_IN OMX_HANDLETYPE phandle,
		OMX_IN OMX_COMMANDTYPE cmd,
		OMX_IN OMX_U32 param1, 
		OMX_IN OMX_PTR cmd_data)
{
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcom_priv = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);

	pcomp     = (OMX_COMPONENTTYPE *)phandle;
	pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	if(!pcom_priv || pcom_priv->m_state == OMX_StateInvalid)
	{
		DEBUG_PRINT_ERROR("Send Command: in Invalid State\n");
		return OMX_ErrorInvalidState;
	}
	post_event(pcom_priv,
			(OMX_U32)cmd, (OMX_U32)param1, OMX_GENERATE_COMMAND);      //把用户这个命令压入队列和管道，实际处理是由内部的 send_command_proxy来处理的,等到内部send_command_proxy处理完，释放信号量，此处获得信号量，操作成功。
	DEBUG_PRINT("send_command : cmd =%d\n", cmd);
	sem_wait(&pcom_priv->m_cmd_lock);
	return OMX_ErrorNone;
}


/* ==========================================================================
   FUNCTION
   get_parameter

   DESCRIPTION
   OMX Get Parameter method implementation

   PARAMETERS
   <TBD>.

   RETURN VALUE
   Error None if successful. Or Error Type
   ==========================================================================*/
static OMX_ERRORTYPE  get_parameter(OMX_IN OMX_HANDLETYPE phandle,                     
		                            OMX_IN OMX_INDEXTYPE param_index,
		                            OMX_INOUT OMX_PTR param_data)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcomp_priv = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);

	pcomp      = (OMX_COMPONENTTYPE *)phandle;
	pcomp_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	if (!pcomp_priv || (pcomp_priv->m_state == OMX_StateInvalid))
	{
		DEBUG_PRINT_ERROR("get_param: Invalid State\n");
		return OMX_ErrorInvalidState;
	}

	switch (param_index)
	{
		case OMX_IndexParamPortDefinition:                                          //注意:此时输入参数应该已经把输入参数param_data中对应端口属性的nPortIndex设置好，表示获取哪个port的属性
		{
			OMX_PARAM_PORTDEFINITIONTYPE *portDefn =
					(OMX_PARAM_PORTDEFINITIONTYPE *)param_data;
			OMX_PORT_PRIVATE *port_priv = NULL;
			DEBUG_PRINT("get_param: OMX_IndexParamPortDefinition\n");
			if (portDefn->nPortIndex > OUTPUT_PORT_INDEX)
			{
			   DEBUG_PRINT_ERROR("Bad Port idx %ld\n", (OMX_S32)portDefn->nPortIndex);
			   ret = OMX_ErrorBadPortIndex;
			}

			port_priv = &pcomp_priv->m_port[portDefn->nPortIndex];
			/*portDefn->nVersion.nVersion = pcomp->nVersion.nVersion;     //OMX_SPEC_VERSION;
			portDefn->nSize             = sizeof(portDefn);*/

            /*CONFIG_VERSION_SIZE(portDefn , OMX_PARAM_PORTDEFINITIONTYPE); 
            
			portDefn->eDomain                   = OMX_PortDomainVideo;
			portDefn->format.video.xFramerate   = pcomp_priv->m_frame_rate;
			portDefn->format.video.nFrameHeight = pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.frame_height;//pcomp_priv->pic_info.frame_height;
			portDefn->format.video.nFrameWidth  = pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.frame_width;//pcomp_priv->pic_info.frame_width;
			portDefn->format.video.nSliceHeight = pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.SplitSize;//pcomp_priv->pic_info.scan_lines;
   		    portDefn->bEnabled                  = port_priv->port_def.bEnabled;
   		    portDefn->bPopulated                = port_priv->m_port_populated;
            portDefn->bBuffersContiguous        = 1;
            portDefn->nBufferAlignment          = port_priv->port_pro.;
            
			if (INPUT_PORT_INDEX == portDefn->nPortIndex) //输入端口,yuv
			{
			   portDefn->eDir                            = OMX_DirInput;
			   portDefn->format.video.eColorFormat       = OMX_COLOR_FormatYUV420SemiPlanar;       //写死了??
			   portDefn->format.video.eCompressionFormat = OMX_VIDEO_CodingUnused;                 //pcomp_priv->m_dec_fmt;
			   portDefn->nBufferCountActual              = port_priv->port_pro.max_count;
			   portDefn->nBufferCountMin                 = port_priv->port_pro.min_count;
			   portDefn->nBufferSize                     = port_priv->port_pro.buffer_size;
			}
			else if (OUTPUT_PORT_INDEX == portDefn->nPortIndex) //输出端口，stream
			{
			   portDefn->eDir                            = OMX_DirOutput;
			   portDefn->format.video.eColorFormat       = OMX_COLOR_FormatUnused;
			   portDefn->format.video.eCompressionFormat = pcomp_priv->m_encoder_fmt;//OMX_VIDEO_CodingAVC;
			   portDefn->nBufferCountActual              = port_priv->port_pro.max_count;
			   portDefn->nBufferCountMin                 = port_priv->port_pro.min_count;
			   portDefn->nBufferSize                     = port_priv->port_pro.buffer_size;
			}*/

            *portDefn = port_priv->port_def;     
			break;
		}

		/*Component come to be a video*/
		case OMX_IndexParamVideoInit:
		{
			OMX_PORT_PARAM_TYPE *portParamType =
					(OMX_PORT_PARAM_TYPE *) param_data;

			DEBUG_PRINT("get_param:OMX_IndexParamVideoInit\n");

			/*portParamType->nVersion.nVersion = OMX_SPEC_VERSION;
			portParamType->nSize = sizeof(portParamType);*/
			CONFIG_VERSION_SIZE(portParamType , OMX_PORT_PARAM_TYPE); 
			
			portParamType->nPorts           = COUNTOF(pcomp_priv->m_port);   //portParamType->nPorts = 2;
			portParamType->nStartPortNumber = INPUT_PORT_INDEX;
			break;
		}

		case OMX_IndexParamVideoPortFormat:
		{
		    OMX_VIDEO_PARAM_PORTFORMATTYPE *portFmt =
			                (OMX_VIDEO_PARAM_PORTFORMATTYPE *)param_data;

		    DEBUG_PRINT("get_param:OMX_IndexParamVideoPortFormat\n");

		    CONFIG_VERSION_SIZE(portFmt , OMX_VIDEO_PARAM_PORTFORMATTYPE); 
#if 0            
		   if (INPUT_PORT_INDEX == portFmt->nPortIndex)
		    {
			    DEBUG_PRINT("Input Port, nIndex %d\n", portFmt->nIndex);
			    if (0 == portFmt->nIndex)                                                //此段代码仅对应组件一个输入一个输出端口的情况
			    {
				    portFmt->eColorFormat       = OMX_COLOR_FormatYUV420SemiPlanar;
				    portFmt->eCompressionFormat = OMX_VIDEO_CodingUnused;//pcomp_priv->m_dec_fmt;/**/
			    }
			    else
			    {
				    DEBUG_PRINT("no more input format\n");
				    ret = OMX_ErrorNoMore;
			    }
		    }
		    else if (OUTPUT_PORT_INDEX == portFmt->nPortIndex)
		    {
			    DEBUG_PRINT("Output Port, nIndex %d\n", portFmt->nIndex);
			    if (0 == portFmt->nIndex)
			    {
				    portFmt->eColorFormat       = OMX_COLOR_FormatUnused;
				    portFmt->eCompressionFormat = pcomp_priv->m_encoder_fmt;
			    }
			    else
			    {
				    DEBUG_PRINT("no more output format\n");
				    ret = OMX_ErrorNoMore;
			    }
		    }
		    else
		    {
			    DEBUG_PRINT_ERROR("Bad port index, %d\n",
						(OMX_S32)portFmt->nPortIndex);
			    ret = OMX_ErrorBadPortIndex;
		    }
#else

            if ( 0  == portFmt->nIndex )       //输入&输出端口一致
            {
                portFmt->eColorFormat       = pcomp_priv->m_port[portFmt->nPortIndex].port_def.format.video.eColorFormat;
				portFmt->eCompressionFormat = pcomp_priv->m_port[portFmt->nPortIndex].port_def.format.video.eCompressionFormat;
            }
            else                              
            {
             	DEBUG_PRINT_ERROR("no more format of ports\n");
				ret = OMX_ErrorNoMore;
            }      
#endif
		    break;
		}
#ifdef KHRONOS_1_1
		case OMX_IndexParamStandardComponentRole:
		{
			OMX_PARAM_COMPONENTROLETYPE *comp_role =
				(OMX_PARAM_COMPONENTROLETYPE *)param_data;

			DEBUG_PRINT("get_param: OMX_IndexParamStandardComponentRole\n");

			/*comp_role->nVersion.nVersion = OMX_SPEC_VERSION;
			comp_role->nSize = sizeof(*comp_role);*/
            CONFIG_VERSION_SIZE(comp_role , OMX_PARAM_COMPONENTROLETYPE);
			strncpy((OMX_S8*)comp_role->cRole,
					(OMX_S8*)pcomp_priv->m_role, OMX_MAX_STRINGNAME_SIZE-1);
			break;
		}
#endif
		case OMX_IndexParamVideoProfileLevelQuerySupported:                     //这个分支需要先输入设置好profileLevelType->nProfileIndex和nPortIndex。
		{
			OMX_VIDEO_PARAM_PROFILELEVELTYPE *profileLevelType =
			    (OMX_VIDEO_PARAM_PROFILELEVELTYPE *)param_data;

			DEBUG_PRINT("get_param: OMX_IndexParamVideoProfileLevelQuerySupported\n");

			/*profileLevelType->nVersion.nVersion = OMX_SPEC_VERSION;
			profileLevelType->nSize = sizeof(*profileLevelType);*/
			CONFIG_VERSION_SIZE(profileLevelType , OMX_VIDEO_PARAM_PROFILELEVELTYPE);
            
			//ret = get_supported_profile_level(pcomp_priv, profileLevelType);
			break;
		}

		//extern non-standard index support
#if 0		
		case OMX_HisiIndexChannelAttributes:                       
		{
			OMX_HISI_PARAM_CHANNELATTRIBUTES *chan_attr =
				(OMX_HISI_PARAM_CHANNELATTRIBUTES *)param_data;

			DEBUG_PRINT("get_param: OMX_HisiIndexChannelAttributes\n");

			venc_channel_S *pchan_cfg =
				&(pcomp_priv->drv_ctx.venc_chan_attr);

			chan_attr->nVersion.nVersion = OMX_SPEC_VERSION;
			chan_attr->nSize = sizeof(*chan_attr);

			/*chan_attr->nErrorThreshold = pchan_cfg->chan_err_thrld;
			chan_attr->nPrior = pchan_cfg->prior;
			chan_attr->nStreamOverflowThreshold =
					pchan_cfg->chan_strm_ovflow_thrld;
			chan_attr->nDecodeMode = pchan_cfg->chan_decode_mode;
			chan_attr->nPictureOrder = pchan_cfg->chan_disp_order;*/
		}

#ifdef _ANDROID_
		case OMX_GoogleIndexGetAndroidNativeBufferUsage:       
		{
			OMX_HISI_PARAMNATIVEBUFFERUSAGE *pusage =
				(OMX_HISI_PARAMNATIVEBUFFERUSAGE*)param_data;

			DEBUG_PRINT("get_param: OMX_GoogleIndexGetAndroidNativeBufferUsage\n");
            
            DEBUG_PRINT("could not support now!!\n");
			/*pusage->nVersion.nVersion = OMX_SPEC_VERSION;
			pusage->nSize = sizeof(*pusage);

			if ((pusage->nPortIndex != OUTPUT_PORT_INDEX)
				|| !pcomp_priv->m_use_native_buf)
			{
				DEBUG_PRINT_ERROR("Bad port index\n");
			    return OMX_ErrorUndefined;
			}

			pusage->nUsage = GRALLOC_USAGE_HW_RENDER;*/
		    break;
		}
#endif
#endif
		default:
		    DEBUG_PRINT_ERROR("get_param: unknown param %08x\n",
				    param_index);
		    ret = OMX_ErrorUnsupportedIndex;
		    break;
	}

	return ret;
}


/* ==========================================================================
   FUNCTION
   set_parameter

   DESCRIPTION
   OMX Set Parameter method implementation.

   PARAMETERS
   <TBD>.

   RETURN VALUE
   OMX Error None if successful. Or Error Type.
   ==========================================================================*/
static OMX_ERRORTYPE  set_parameter(OMX_IN OMX_HANDLETYPE phandle,
		                            OMX_IN OMX_INDEXTYPE param_index, 
		                            OMX_IN OMX_PTR param_data)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;

	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcomp_priv = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(param_data == NULL);

	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcomp_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

    if(!pcomp_priv)
    {
       return OMX_ErrorIncorrectStateOperation;
    }
	if(pcomp_priv->m_state == OMX_StateInvalid)
	{
	
		DEBUG_PRINT_ERROR("set_param: Invalid State %d\n",
				pcomp_priv->m_state);
		return OMX_ErrorIncorrectStateOperation;
	}

	switch (param_index)
	{
		case OMX_IndexParamPortDefinition:                                 
		{
			OMX_PARAM_PORTDEFINITIONTYPE *portDefn =
					(OMX_PARAM_PORTDEFINITIONTYPE *)param_data;
			OMX_PORT_PRIVATE *port_priv = NULL;
            venc_chan_cfg *pvenc_attr;
			OMX_U32 width, height;
			OMX_U32 buffer_size =0;

			DEBUG_PRINT("set_param: OMX_IndexParamPortDefinition\n");
			if (portDefn->nPortIndex > OUTPUT_PORT_INDEX)
			{
				DEBUG_PRINT("invalid port index!\n");
				return OMX_ErrorBadPortIndex;
			}

			port_priv = &pcomp_priv->m_port[portDefn->nPortIndex];
            pvenc_attr = &(pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg);
            
			if (portDefn->nBufferCountActual < portDefn->nBufferCountMin)        
			{
				DEBUG_PRINT("setted buf cnt too small! nBufferCountActual[%lu] should > nBufferCountMin[%lu]!\n",
                                                               portDefn->nBufferCountActual,portDefn->nBufferCountMin);
				return OMX_ErrorUndefined;
			}

			if ((portDefn->format.video.nFrameWidth % PIC_ALIGN_SIZE)|| (portDefn->format.video.nFrameHeight % PIC_ALIGN_SIZE))          
			{
				DEBUG_PRINT_ERROR("Picture Width(%lu) or Heigth(%lu) invalid, should N*%d.\n", portDefn->format.video.nFrameWidth,
                        portDefn->format.video.nFrameHeight,PIC_ALIGN_SIZE);
				return OMX_ErrorUndefined;
			}    
#if 0
			if (portDefn->nPortIndex == INPUT_PORT_INDEX)                          
			{
				width	= portDefn->format.video.nFrameWidth;
				height	= portDefn->format.video.nFrameHeight;

				ret = update_picture_info(pcomp_priv, width, height);            
				if (ret != OMX_ErrorNone)
				{
					DEBUG_PRINT("update_default_picsize failed!\n");
					return ret;
				}
			} 
			else
			{
				port_priv->port_pro.buffer_size = portDefn->nBufferSize;             
			}

			port_priv->port_pro.max_count = portDefn->nBufferCountActual;
			port_priv->port_pro.min_count = portDefn->nBufferCountMin;
                DEBUG_PRINT_ERROR("XXX portidx : %d,  buffer_size =  %d!\n", portDefn->nPortIndex, port_priv->port_pro.buffer_size);  
#else
            port_priv->port_def = *portDefn ; 

            if (portDefn->nPortIndex == OUTPUT_PORT_INDEX)                           
			{
			    port_priv->port_def.nBufferSize = portDefn->format.video.nBitrate/10;//FRAME_SIZE(portDefn->format.video.nFrameWidth, portDefn->format.video.nFrameHeight);
				pvenc_attr->frame_width  = portDefn->format.video.nFrameWidth;
				pvenc_attr->frame_height = portDefn->format.video.nFrameHeight;
                //venc_attr.streamBufSize= port_priv->port_def.nBufferSize;
                pvenc_attr->TargetFrmRate= portDefn->format.video.xFramerate;
                
                switch (portDefn->format.video.eCompressionFormat)
                {
                   case OMX_VIDEO_CodingAVC:
                    pvenc_attr->protocol = HI_UNF_VCODEC_TYPE_H264;
                    break;
                   case OMX_VIDEO_CodingH263:
                    pvenc_attr->protocol = HI_UNF_VCODEC_TYPE_H263;
                    break;
                   case OMX_VIDEO_CodingMPEG4:
                    pvenc_attr->protocol = HI_UNF_VCODEC_TYPE_MPEG4;
                    break;
                   default:
                    DEBUG_PRINT_ERROR("NOT support the role of %d\n",portDefn->format.video.eCompressionFormat);
                    break;
                }
			} 
			else 
			{
			    pvenc_attr->InputFrmRate = portDefn->format.video.xFramerate;
			    port_priv->port_def.nBufferSize = FRAME_SIZE(portDefn->format.video.nFrameWidth, portDefn->format.video.nFrameHeight);
			}
#endif
			break;
		}

		case OMX_IndexParamVideoPortFormat:                                        
		{
            OMX_PORT_PRIVATE *port_priv = NULL;
			OMX_VIDEO_PARAM_PORTFORMATTYPE *portFmt =
					(OMX_VIDEO_PARAM_PORTFORMATTYPE *)param_data;


			if (portFmt->nPortIndex > OUTPUT_PORT_INDEX)
			{
				DEBUG_PRINT("invalid port index!\n");
				return OMX_ErrorBadPortIndex;
			}
            port_priv = &pcomp_priv->m_port[portFmt->nPortIndex];
			DEBUG_PRINT("set_param : OMX_IndexParamVideoPortFormat\n");
 
			if (OUTPUT_PORT_INDEX == portFmt->nPortIndex)             
			{
				OMX_U32 i;
				for (i = 0; i < COUNTOF(codec_trans_list); i++)   
				{
					if (codec_trans_list[i].compress_fmt == portFmt->eCompressionFormat)
						break;
				}

				if (i >= COUNTOF(codec_trans_list))
				{
					DEBUG_PRINT_ERROR("fmt %d not support\n",
							portFmt->eCompressionFormat);
					ret = OMX_ErrorUnsupportedSetting;
				}
				else
				{
					strncpy((OMX_S8*)pcomp_priv->m_role,
						codec_trans_list[i].role_name, OMX_MAX_STRINGNAME_SIZE-1);

					pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.protocol=
						codec_trans_list[i].codec_type;

					pcomp_priv->m_encoder_fmt =
						codec_trans_list[i].compress_fmt;
				}
                port_priv->port_def.format.video.eColorFormat       = OMX_COLOR_FormatUnused;
                port_priv->port_def.format.video.eCompressionFormat = portFmt->eCompressionFormat;

			}
			else if (INPUT_PORT_INDEX == portFmt->nPortIndex)      
			{
				/* now we only support yuv420SemiPlanar */
				if(portFmt->eColorFormat !=
						OMX_COLOR_FormatYUV420SemiPlanar)
				{
					DEBUG_PRINT_ERROR("Set output format failed\n");
					ret = OMX_ErrorUnsupportedSetting;
				}
                
                port_priv->port_def.format.video.eColorFormat       = portFmt->eColorFormat;
                port_priv->port_def.format.video.eCompressionFormat = OMX_VIDEO_CodingUnused;
			}
			else
			{
				DEBUG_PRINT_ERROR("get_parameter: Bad port index %ld\n",
                          (OMX_S32)portFmt->nPortIndex);
			ret = OMX_ErrorBadPortIndex;
			}
			break;
		}

#ifdef KHRONOS_1_1
		case OMX_IndexParamStandardComponentRole:
		{
			OMX_PARAM_COMPONENTROLETYPE *comp_role =
				(OMX_PARAM_COMPONENTROLETYPE *)param_data;
			OMX_U32 i;

			DEBUG_PRINT("set_param: OMX_IndexParamStandardComponentRole\n");

			for (i = 0; i < COUNTOF(codec_trans_list); i++)
			{
				if (!strncmp(codec_trans_list[i].role_name,
						(OMX_S8 *)comp_role->cRole, OMX_MAX_STRINGNAME_SIZE))
					break;
			}

			if (i >= COUNTOF(codec_trans_list))
			{
				DEBUG_PRINT_ERROR("fmt %s not support\n",
						comp_role->cRole);
				ret = OMX_ErrorUnsupportedSetting;
			}
			else
			{
				strncpy((OMX_S8*)pcomp_priv->m_role,
					codec_trans_list[i].role_name, OMX_MAX_STRINGNAME_SIZE-1);

				pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.protocol=
					codec_trans_list[i].codec_type;

				pcomp_priv->m_encoder_fmt =
					codec_trans_list[i].compress_fmt;
			}
			break;
		}
#endif

#if 0
		//extern non standard index                                        
		case OMX_HisiIndexChannelAttributes:
		{
			venc_channel_S *chan_attr = (venc_channel_S *)param_data;

			venc_channel_S *pchan_cfg = &(pcomp_priv->drv_ctx.venc_chan_attr);
			DEBUG_PRINT("set_param: OMX_HisiIndexChannelAttributes\n");

		    /*pchan_cfg->chan_err_thrld = chan_attr->nErrorThreshold;
			pchan_cfg->prior = chan_attr->nPrior;
			pchan_cfg->chan_strm_ovflow_thrld = chan_attr->nStreamOverflowThreshold;
			pchan_cfg->chan_decode_mode = chan_attr->nDecodeMode;
			pchan_cfg->chan_disp_order = chan_attr->nPictureOrder;*/
			break;
		}

#ifdef _ANDROID_
		case OMX_GoogleIndexEnableAndroidNativeBuffer:                              
		{
			OMX_HISI_PARAMUSENATIVEBUFFER *penable =
				(OMX_HISI_PARAMUSENATIVEBUFFER *)param_data;

			DEBUG_PRINT("set_param: OMX_GoogleIndexEnableAndroidNativeBuffer\n");

			if (penable->nPortIndex != OUTPUT_PORT_INDEX)
			{
				DEBUG_PRINT_ERROR("set_param: Bad port index %d\n",
                          (OMX_S32)penable->nPortIndex);
				return OMX_ErrorBadPortIndex;
			}
			pcomp_priv->m_use_native_buf = penable->bEnable;
			break;
		}
#endif
#endif
		default:
	       DEBUG_PRINT_ERROR("set_param: unknown param 0x%08x\n", param_index);
	       ret = OMX_ErrorUnsupportedIndex;
	       break;
	}

	return ret;
}


/* =========================================================================
   FUNCTION
   get_config

   DESCRIPTION
   OMX Get Config Method implementation.

   PARAMETERS
   <TBD>.

   RETURN VALUE
   OMX Error None if successful. Or Error Type.
   =========================================================================*/
static OMX_ERRORTYPE  get_config(OMX_IN OMX_HANDLETYPE   phandle,
		                         OMX_IN OMX_INDEXTYPE config_index, 
		                         OMX_INOUT OMX_PTR     config_data)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcomp_priv = NULL;
	//OMX_CONFIG_RECTTYPE *prect = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(config_data == NULL);

	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcomp_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	if (!pcomp_priv || pcomp_priv->m_state == OMX_StateInvalid)
	{
		DEBUG_PRINT_ERROR("get_config: Invalid State\n");
		return OMX_ErrorInvalidState;
	}

	switch (config_index)
	{
		case OMX_IndexConfigCommonOutputCrop:
        {
			OMX_CONFIG_RECTTYPE *prect = (OMX_CONFIG_RECTTYPE *)config_data;

			DEBUG_PRINT("get_config: OMX_IndexConfigCommonOutputCrop\n");

			if (prect->nPortIndex != OUTPUT_PORT_INDEX)
				return OMX_ErrorBadPortIndex;
#if 0
			prect->nLeft 	= pcomp_priv->pic_info.crop_left;
			prect->nTop 	= pcomp_priv->pic_info.crop_top;
			prect->nHeight 	= pcomp_priv->pic_info.crop_height;
			prect->nWidth 	= pcomp_priv->pic_info.crop_width;
#endif
			break;
        }
        case OMX_IndexConfigVideoAVCIntraPeriod:
        {
            OMX_VIDEO_CONFIG_AVCINTRAPERIOD *ptr_gop = (OMX_VIDEO_CONFIG_AVCINTRAPERIOD *)config_data;
            DEBUG_PRINT("get_config: OMX_IndexConfigVideoAVCIntraPeriod\n");
            if (ptr_gop->nPortIndex != OUTPUT_PORT_INDEX)
				return OMX_ErrorBadPortIndex;
            ptr_gop->nIDRPeriod = pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.Gop;
            //ptr_gop->nPFrames   = 
            
            break;
        }
        case OMX_IndexConfigVideoFramerate:
        {
            OMX_CONFIG_FRAMERATETYPE *ptr_framerate = (OMX_CONFIG_FRAMERATETYPE *)config_data;
            DEBUG_PRINT("get_config: OMX_IndexConfigVideoFramerate\n");
            if (ptr_framerate->nPortIndex == OUTPUT_PORT_INDEX)  //get the output framerate
            {
               ptr_framerate->xEncodeFramerate = pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.TargetFrmRate;
            }
            else                                       //get the input  framerate
            {
               ptr_framerate->xEncodeFramerate = pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.InputFrmRate;
            } 
            break; 
        }
        case OMX_IndexConfigVideoBitrate:
        {
            OMX_VIDEO_CONFIG_BITRATETYPE *ptr_bitrate =  (OMX_VIDEO_CONFIG_BITRATETYPE *)config_data;
            DEBUG_PRINT("get_config: OMX_IndexConfigVideoBitrate\n");
            if (ptr_bitrate->nPortIndex != OUTPUT_PORT_INDEX)  //get the output framerate
            {
               return OMX_ErrorBadPortIndex;
            }
  
            ptr_bitrate->nEncodeBitrate = pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.TargetBitRate;
            break;
        }
		default:
		      DEBUG_PRINT_ERROR("get_config: unknown index 0x%08x\n",
					config_index);
		      ret = OMX_ErrorBadParameter;
		      break;
	}

	return ret;
}


/* ========================================================================
   FUNCTION
   set_config

   DESCRIPTION
   OMX Set Config method implementation

   PARAMETERS
   <TBD>.

   RETURN VALUE
   OMX Error None if successful.
   ========================================================================*/
static OMX_ERRORTYPE  set_config(OMX_IN OMX_HANDLETYPE phandle,
		OMX_IN OMX_INDEXTYPE config_index, OMX_IN OMX_PTR config_data)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcomp_priv = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(config_data == NULL);

	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcomp_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	if (!pcomp_priv || pcomp_priv->m_state == OMX_StateInvalid)
	{
		DEBUG_PRINT_ERROR("set_config: Invalid State\n");
		return OMX_ErrorInvalidState;
	}

	switch (config_index)
	{
		case OMX_IndexConfigCommonOutputCrop:
		{
            OMX_CONFIG_RECTTYPE *prect = (OMX_CONFIG_RECTTYPE *)config_data;

			DEBUG_PRINT("set_config: OMX_IndexConfigCommonOutputCrop\n");

			if (prect->nPortIndex != OUTPUT_PORT_INDEX)
				return OMX_ErrorBadPortIndex;
#if 0
			prect->nLeft 	= pcomp_priv->pic_info.crop_left;
			prect->nTop 	= pcomp_priv->pic_info.crop_top;
			prect->nHeight 	= pcomp_priv->pic_info.crop_height;
			prect->nWidth 	= pcomp_priv->pic_info.crop_width;
#endif
			break;
        }
        case OMX_IndexConfigVideoAVCIntraPeriod:
        {
            OMX_VIDEO_CONFIG_AVCINTRAPERIOD *ptr_gop = (OMX_VIDEO_CONFIG_AVCINTRAPERIOD *)config_data;
            DEBUG_PRINT("set_config: OMX_IndexConfigVideoAVCIntraPeriod\n");
            if (ptr_gop->nPortIndex != OUTPUT_PORT_INDEX)
				return OMX_ErrorBadPortIndex;
            pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.Gop = ptr_gop->nIDRPeriod;

            if (0 != pcomp_priv->drv_ctx.venc_chan_attr.state)
            {
	            if(channel_set_attr(&(pcomp_priv->drv_ctx)) < 0)
	            {
	                DEBUG_PRINT_ERROR("ERROR: channel set attr failed!\n");
					ret = OMX_ErrorHardware;
					omx_report_error(pcomp_priv, ret);
	            }
            }
            break;
        }
        case OMX_IndexConfigVideoFramerate:
        {
            OMX_CONFIG_FRAMERATETYPE *ptr_framerate = (OMX_CONFIG_FRAMERATETYPE *)config_data;
            DEBUG_PRINT("set_config: OMX_IndexConfigVideoFramerate:port(%lu)\n",ptr_framerate->nPortIndex);
            if (ptr_framerate->nPortIndex == OUTPUT_PORT_INDEX)  //get the output framerate
            {
               pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.TargetFrmRate = ptr_framerate->xEncodeFramerate;
            }
            else                                       //get the input  framerate
            {
               pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.InputFrmRate = ptr_framerate->xEncodeFramerate; 
            } 

			if (0 != pcomp_priv->drv_ctx.venc_chan_attr.state)
			{
	            if(channel_set_attr(&(pcomp_priv->drv_ctx)) < 0)
	            {
	                DEBUG_PRINT_ERROR("ERROR: channel set attr failed!\n");
					ret = OMX_ErrorHardware;
					omx_report_error(pcomp_priv, ret);
	                return ret;
	            }
			}				
            pcomp_priv->m_port[ptr_framerate->nPortIndex].port_def.format.video.xFramerate = ptr_framerate->xEncodeFramerate;    
            break;
        }
        case OMX_IndexConfigVideoBitrate:
        {
            OMX_VIDEO_CONFIG_BITRATETYPE *ptr_bitrate =  (OMX_VIDEO_CONFIG_BITRATETYPE *)config_data;
            DEBUG_PRINT("set_config: OMX_IndexConfigVideoBitrate\n");
            if (ptr_bitrate->nPortIndex != OUTPUT_PORT_INDEX)  //get the output framerate
            {
               return OMX_ErrorBadPortIndex;
            }
            pcomp_priv->drv_ctx.venc_chan_attr.chan_cfg.TargetBitRate = ptr_bitrate->nEncodeBitrate ;

			if (0 != pcomp_priv->drv_ctx.venc_chan_attr.state)
			{
	            if(channel_set_attr(&(pcomp_priv->drv_ctx)) < 0)
	            {
	                DEBUG_PRINT_ERROR("ERROR: channel set attr failed!\n");
					ret = OMX_ErrorHardware;
					omx_report_error(pcomp_priv, ret);
	            }			   
			}
            break;
        }
		default:
		      DEBUG_PRINT_ERROR("get_config: unknown index 0x%08x\n",
					config_index);
		      ret = OMX_ErrorBadParameter;
		      break;
	}

	return ret;
}


/* =========================================================================
   FUNCTION
   get_extension_index

   DESCRIPTION
   OMX GetExtensionIndex method implementaion.  <TBD>

   PARAMETERS
   <TBD>.

   RETURN VALUE
   OMX Error None if everything successful.
   =========================================================================*/
static OMX_ERRORTYPE  get_extension_index(OMX_IN OMX_HANDLETYPE phandle,
		OMX_IN OMX_STRING param_name,
		OMX_OUT OMX_INDEXTYPE *pindex_type)
{

#if 0
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcomp_priv = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(param_name == NULL);
	OMX_CHECK_ARG_RETURN(pindex_type == NULL);

	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcomp_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	if (!strcmp(param_name,
			"OMX.Hisi.Param.Index.ChannelAttributes",))
	{
		*pindex_type = OMX_HisiIndexChannelAttributes;
	}
//#ifdef _ANDROID_
	else if (!strcmp(param_name,
			"OMX.google.android.index.enableAndroidNativeBuffers"))
	{
		*pindex_type = OMX_GoogleIndexEnableAndroidNativeBuffer;
	}
	else if (!strcmp(param_name,
			"OMX.google.android.index.getAndroidNativeBufferUsage"))
	{
		*pindex_type = OMX_GoogleIndexGetAndroidNativeBufferUsage;
	}
	else if (!strcmp(param_name,
			"OMX.google.android.index.useAndroidNativeBuffer2"))
	{
		*pindex_type = OMX_GoogleIndexUseAndroidNativeBuffer;
	}
//#endif
	else
	{
		return OMX_ErrorNotImplemented;
		DEBUG_PRINT_ERROR("%s not implemented!\n", param_name);
	}

#endif
	return OMX_ErrorNone;
}


/* ======================================================================
   FUNCTION
   get_state

   DESCRIPTION
   Returns the state information back to the caller.<TBD>

   PARAMETERS
   <TBD>.

   RETURN VALUE
   Error None if everything is successful.
   =======================================================================*/
static OMX_ERRORTYPE get_state(OMX_IN OMX_HANDLETYPE  phandle,
		                       OMX_OUT OMX_STATETYPE* state)
{
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcomp_priv = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(state == NULL);

	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcomp_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	*state = pcomp_priv->m_state;
	return OMX_ErrorNone;
}


/* ======================================================================
   FUNCTION
   component_tunnel_request

   DESCRIPTION
   OMX Component Tunnel Request method implementation. Now not supported

   PARAMETERS
   None.

   RETURN VALUE
   OMX Error None if everything successful.
   =======================================================================*/
static OMX_ERRORTYPE  component_tunnel_request(
		OMX_IN OMX_HANDLETYPE phandle,
		OMX_IN OMX_U32 port,
		OMX_IN OMX_HANDLETYPE peerComponent,
		OMX_IN OMX_U32 peerPort,
		OMX_INOUT OMX_TUNNELSETUPTYPE *tunnelSetup)
{
	DEBUG_PRINT_ERROR("Error: Tunnel mode Not Implemented\n");
	return OMX_ErrorNotImplemented;
}


/* ======================================================================
   FUNCTION
   omx_vdec::AllocateBuffer. API Call

   DESCRIPTION
   None

   PARAMETERS
   None.

   RETURN VALUE
   OMX_TRUE/OMX_FALSE
   =======================================================================*/
static OMX_ERRORTYPE  allocate_buffer(OMX_IN OMX_HANDLETYPE  phandle,
                            		  OMX_INOUT OMX_BUFFERHEADERTYPE **omx_bufhdr,
                            		  OMX_IN OMX_U32 port,
                            		  OMX_IN OMX_PTR app_data,
                            		  OMX_IN OMX_U32 bytes)
{
	OMX_ERRORTYPE ret                = OMX_ErrorNone;
	OMX_COMPONENTTYPE *pcomp         = NULL;
	OMX_COMPONENT_PRIVATE *pcom_priv = NULL;
	OMX_PORT_PRIVATE *port_priv      = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(omx_bufhdr == NULL);
 
	if (port > OUTPUT_PORT_INDEX)
	{
		DEBUG_PRINT_ERROR("[AB]Error: Invalid Port %ld\n",(OMX_S32)port);
		return OMX_ErrorBadPortIndex;
	}

	pcomp     = (OMX_COMPONENTTYPE *)phandle;
	pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	//state check
	if (!pcom_priv)
	{
		DEBUG_PRINT_ERROR("[AB] ERROR: pcom_priv = NULL!\n");
		return OMX_ErrorBadParameter;
	}

	if((pcom_priv->m_state == OMX_StateIdle) ||
		(pcom_priv->m_state == OMX_StateExecuting) ||
		((pcom_priv->m_state == OMX_StateLoaded) &&
				bit_present(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING)))                      //只有这三种情况下才能申请内存?
	{
		DEBUG_PRINT("[AB] Current State %d\n", pcom_priv->m_state);
	}
	else
	{
		DEBUG_PRINT("[AB] Invalid State %d to alloc the buffer !\n", pcom_priv->m_state);
		return OMX_ErrorInvalidState;
	}

	ret = allocate_buffer_internal(                                                             //内部申请buffer函数
			pcom_priv, omx_bufhdr, app_data, port, bytes);
	if (ret != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("[AB] ERROR: Allocate Buf failed\n");
		return ret;
	}

	if ((port == INPUT_PORT_INDEX) && port_full(pcom_priv, port))            
	{
		port_priv = &pcom_priv->m_port[port];

		if (port_priv->port_def.bEnabled)
			port_priv->port_def.bPopulated = OMX_TRUE;         

		if (bit_present(&pcom_priv->m_flags, OMX_STATE_INPUT_ENABLE_PENDING))
		{
			bit_clear(&pcom_priv->m_flags,OMX_STATE_INPUT_ENABLE_PENDING);

			post_event(pcom_priv,                                                        //把 命令:OMX_CommandPortEnable 压入队列，写入管道
				OMX_CommandPortEnable, INPUT_PORT_INDEX,OMX_GENERATE_COMMAND_DONE);
		}
	}

	if ((port == OUTPUT_PORT_INDEX) && port_full(pcom_priv, port))
	{
		port_priv = &pcom_priv->m_port[port];

		if (port_priv->port_def.bEnabled)
			port_priv->port_def.bPopulated = OMX_TRUE;

		if (bit_present(&pcom_priv->m_flags,OMX_STATE_OUTPUT_ENABLE_PENDING))
		{
			bit_clear(&pcom_priv->m_flags,OMX_STATE_OUTPUT_ENABLE_PENDING);

			post_event(pcom_priv,
				OMX_CommandPortEnable, OUTPUT_PORT_INDEX,OMX_GENERATE_COMMAND_DONE);
		}
	}

	if (ports_all_full(pcom_priv))
	{
		if (bit_present(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING))
		{
			// Send the callback now
			DEBUG_PRINT("[ST] state idle-pending -> idle\n");

			bit_clear((&pcom_priv->m_flags),OMX_STATE_IDLE_PENDING);

			post_event(pcom_priv,
				OMX_CommandStateSet, OMX_StateIdle,OMX_GENERATE_COMMAND_DONE);
		}
	}
	//DEBUG_PRINT("[AB] Allocate Buffer sucess!\n");
	return ret;
}


/* ======================================================================
   FUNCTION
   FreeBuffer

   DESCRIPTION

   PARAMETERS
   None.

   RETURN VALUE
   OMX_TRUE/OMX_FALSE
   ======================================================================*/
static OMX_ERRORTYPE  free_buffer(OMX_IN OMX_HANDLETYPE phandle,
		                          OMX_IN OMX_U32 port, 
		                          OMX_IN OMX_BUFFERHEADERTYPE* omx_bufhdr)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcom_priv = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(omx_bufhdr == NULL);
    DEBUG_PRINT_ERROR("XXX free_buffer : %lu!\n", port);   
	if (port > OUTPUT_PORT_INDEX)
	{
		DEBUG_PRINT_ERROR("[AB]Error: Invalid Port %ld\n",(OMX_S32)port);
		return OMX_ErrorBadPortIndex;
	}

	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	//state check
	if (!pcom_priv)
	{
		DEBUG_PRINT_ERROR("[AB] ERROR: Invalid State\n");
		return OMX_ErrorBadParameter;
	}

	if((pcom_priv->m_state == OMX_StateLoaded) ||
		(pcom_priv->m_state == OMX_StateExecuting) ||
		((pcom_priv->m_state == OMX_StateIdle) &&
				bit_present(&pcom_priv->m_flags, OMX_STATE_LOADING_PENDING)))        
	{
		DEBUG_PRINT("[AB] Current State %d\n", pcom_priv->m_state);
	}
	else
	{
		DEBUG_PRINT("[AB] Invalid State %d\n", pcom_priv->m_state);
		return OMX_ErrorInvalidState;
	}

	ret = free_buffer_internal(pcom_priv, port, omx_bufhdr);                     
	if (ret != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("[FB]ERROR: free Buf internal failed\n");
		return ret;
	}

	if((port == INPUT_PORT_INDEX) && port_empty(pcom_priv, port))
	{
		if (bit_present((&pcom_priv->m_flags),
				OMX_STATE_INPUT_DISABLE_PENDING))
		{
			DEBUG_PRINT_STATE("[ST]port state Disable Pending ->Disable\n");
			bit_clear((&pcom_priv->m_flags),
				OMX_STATE_INPUT_DISABLE_PENDING);

			post_event(pcom_priv, OMX_CommandPortDisable,
				INPUT_PORT_INDEX,
				OMX_GENERATE_COMMAND_DONE);
		}
	}

	if((port == OUTPUT_PORT_INDEX) && port_empty(pcom_priv, port))
	{

		if (bit_present(&pcom_priv->m_flags,
					OMX_STATE_OUTPUT_DISABLE_PENDING))
		{
			DEBUG_PRINT_STATE("[ST]port state Disable Pending ->Disable\n");
			bit_clear((&pcom_priv->m_flags),
					OMX_STATE_OUTPUT_DISABLE_PENDING);

			post_event(pcom_priv, OMX_CommandPortDisable,
					OUTPUT_PORT_INDEX,
					OMX_GENERATE_COMMAND_DONE);
		}
	}

	if(ports_all_empty(pcom_priv))
	{
		if (bit_present(&pcom_priv->m_flags, OMX_STATE_LOADING_PENDING))
		{
			DEBUG_PRINT_STATE("loaded-pending ->loaded\n");
			bit_clear((&pcom_priv->m_flags),
					OMX_STATE_LOADING_PENDING);

			post_event(pcom_priv, OMX_CommandStateSet,
					OMX_StateLoaded,
					OMX_GENERATE_COMMAND_DONE);
            
            pcom_priv->msg_thread_exit = OMX_TRUE;
			//pthread_join(pcom_priv->msg_thread_id, NULL);            

            if( channel_destroy(&pcom_priv->drv_ctx) < 0)
            {
               DEBUG_PRINT_ERROR("ERROR: channel create failed!\n");
			   ret = OMX_ErrorHardware;
            }   
		}
	}
	return ret;
}


/* ======================================================================
   FUNCTION
   omx_vdec::UseBuffer

   DESCRIPTION
   OMX Use Buffer method implementation.

   PARAMETERS
   <TBD>.

   RETURN VALUE
   OMX Error None , if everything successful.
   =====================================================================*/
static OMX_ERRORTYPE use_buffer(
		OMX_IN OMX_HANDLETYPE            phandle,
		OMX_INOUT OMX_BUFFERHEADERTYPE** bufferHdr,
		OMX_IN OMX_U32                   port,
		OMX_IN OMX_PTR                   app_data,
		OMX_IN OMX_U32                   bytes,
		OMX_IN OMX_U8*                   buffer)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone; // OMX return type
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcom_priv = NULL;
	OMX_PORT_PRIVATE *port_priv = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(bufferHdr == NULL);
	OMX_CHECK_ARG_RETURN(buffer == NULL);

	DEBUG_PRINT("[UB]use buffer on port %ld \n", (OMX_S32)port);

	if (port > OUTPUT_PORT_INDEX)
	{
		DEBUG_PRINT_ERROR("[AB]Error: Invalid Port %ld\n",(OMX_S32)port);
		return OMX_ErrorBadPortIndex;
	}

	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	//state check
	if (!pcom_priv)
	{
		DEBUG_PRINT_ERROR("[AB] ERROR: Invalid State\n");
		return OMX_ErrorBadParameter;
	}

	if((pcom_priv->m_state == OMX_StateIdle) ||
		(pcom_priv->m_state == OMX_StateExecuting) ||
		((pcom_priv->m_state == OMX_StateLoaded) &&
				bit_present(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING)))
	{
		DEBUG_PRINT("[AB] Cur State %d\n", pcom_priv->m_state);
	}
	else
	{
		DEBUG_PRINT("[AB] Invalid State %d\n", pcom_priv->m_state);
		return OMX_ErrorInvalidState;
	}

	ret = use_buffer_internal(pcom_priv,
				bufferHdr, app_data, port, bytes, buffer);
	if (ret != OMX_ErrorNone)
	{
		DEBUG_PRINT_ERROR("[UB]ERROR: use_buffer_internal failed\n");
		return OMX_ErrorInsufficientResources;
	}

	if ((port == INPUT_PORT_INDEX) && port_full(pcom_priv, port))
	{
		port_priv = &pcom_priv->m_port[port];

		if (port_priv->port_def.bEnabled)
			port_priv->port_def.bPopulated = OMX_TRUE;

		if (bit_present(&pcom_priv->m_flags,
				OMX_STATE_INPUT_ENABLE_PENDING))
		{
			bit_clear(&pcom_priv->m_flags,
				OMX_STATE_INPUT_ENABLE_PENDING);

			post_event(pcom_priv,
				OMX_CommandPortEnable, INPUT_PORT_INDEX,
				OMX_GENERATE_COMMAND_DONE);
		}
	}

	if ((port == OUTPUT_PORT_INDEX) && port_full(pcom_priv, port))
	{
		port_priv = &pcom_priv->m_port[port];

		if (port_priv->port_def.bEnabled)
			port_priv->port_def.bPopulated = OMX_TRUE;

		if (bit_present(&pcom_priv->m_flags,
				OMX_STATE_OUTPUT_ENABLE_PENDING))
		{
			bit_clear(&pcom_priv->m_flags,
				OMX_STATE_OUTPUT_ENABLE_PENDING);

			post_event(pcom_priv,
				OMX_CommandPortEnable, OUTPUT_PORT_INDEX,
				OMX_GENERATE_COMMAND_DONE);
		}
	}

	if (ports_all_full(pcom_priv))
	{
		if (bit_present(&pcom_priv->m_flags,
				OMX_STATE_IDLE_PENDING))
		{
			// Send the callback now
			DEBUG_PRINT_STATE("[ST] state idle-pending -> idle\n");

			bit_clear((&pcom_priv->m_flags),
				OMX_STATE_IDLE_PENDING);

			post_event(pcom_priv,
				OMX_CommandStateSet, OMX_StateIdle,
				OMX_GENERATE_COMMAND_DONE);
		}
	}

	DEBUG_PRINT("[UB] Use Buffer sucess!\n");
	return  OMX_ErrorNone;
}


/* ======================================================================
   FUNCTION
   EmptyThisBuffer

   DESCRIPTION
   This routine is used to push the encoded video frames to
   the video decoder.

   PARAMETERS
   None.

   RETURN VALUE
   OMX Error None if everything went successful.
   =======================================================================*/
static OMX_ERRORTYPE  empty_this_buffer(OMX_IN OMX_HANDLETYPE phandle,
		                                OMX_IN OMX_BUFFERHEADERTYPE *buffer)
{
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcom_priv = NULL;
	OMX_PORT_PRIVATE *port_priv = NULL;
    
	OMX_U32 i;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(buffer == NULL);

	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;
	port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];                   

	if(pcom_priv->m_state != OMX_StateExecuting)                    
	{
		DEBUG_PRINT_ERROR("[ETB]ERROR: Invalid State\n");
		return OMX_ErrorInvalidState;
	}

	if (!port_priv->port_def.bEnabled)
	{
		DEBUG_PRINT_ERROR("[ETB]ERROR: in port disabled.\n");
		return OMX_ErrorIncorrectStateOperation;
	}

	for (i = 0; i < port_priv->port_def.nBufferCountActual; i++)
	{
		if (buffer == port_priv->m_omx_bufhead[i])
		{
			break;
		}
	}

	if (i >= port_priv->port_def.nBufferCountActual)
	{
		DEBUG_PRINT_ERROR("no buffers found for address[%p]", buffer);
		return OMX_ErrorBadParameter;
	}

	if (buffer->nInputPortIndex != port_priv->port_def.nPortIndex/*INPUT_PORT_INDEX*/)
	{
		DEBUG_PRINT_ERROR("[ETB]ERROR:ETB invalid port \n");
		return OMX_ErrorBadPortIndex;
	}

	/*DEBUG_PRINT("[ETB]bufhdr = 0x%x, bufhdr->pbuffer = 0x%x\n",buffer, buffer->pBuffer);*/


	post_event(pcom_priv, (OMX_U32)buffer, 0, OMX_GENERATE_ETB);      
	return OMX_ErrorNone;
}


/* ======================================================================
   FUNCTION
   FillThisBuffer

   DESCRIPTION
   IL client uses this method to release the frame buffer
   after displaying them.

   PARAMETERS
   None

   RETURN VALUE
   OMX_TRUE/OMX_FALSE
   =======================================================================*/
static OMX_ERRORTYPE  fill_this_buffer(OMX_IN OMX_HANDLETYPE  phandle,
		OMX_IN OMX_BUFFERHEADERTYPE *buffer)
{
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcom_priv = NULL;
	OMX_PORT_PRIVATE *port_priv = NULL;
	OMX_U32 i;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(buffer == NULL);

	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;
	port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];         //should be :port_priv = &pcom_priv->m_port[buffer->nOutputPortIndex]

	/* check component state */
	if(pcom_priv->m_state != OMX_StateExecuting)
	{
		DEBUG_PRINT_ERROR("[FTB]ERROR:Invalid State\n");
		return OMX_ErrorInvalidState;
	}

	/* check port state */
	if (!port_priv->port_def.bEnabled)
	{
		DEBUG_PRINT_ERROR("[FTB]ERROR: out port disabled!\n");
		return OMX_ErrorIncorrectStateOperation;
	}

	/* check buffer validate */
    for (i = 0; i < port_priv->port_def.nBufferCountActual; i++)
    {
        if (buffer == port_priv->m_omx_bufhead[i])
        {
            break;
        }
    }

    if (i >= port_priv->port_def.nBufferCountActual)
    {
		DEBUG_PRINT_ERROR("[FTB]ERROR: buffers[%p] match failed\n", buffer);
        return OMX_ErrorBadParameter;
    }

	if (buffer->nOutputPortIndex != port_priv->port_def.nPortIndex/*OUTPUT_PORT_INDEX*/)
	{
		DEBUG_PRINT_ERROR("[FTB]ERROR:FTB invalid port\n");
		return OMX_ErrorBadParameter;
	}

	DEBUG_PRINT_STREAM("[FTB] bufhdr = %p, bufhdr->pBuffer = %p",
			buffer, buffer->pBuffer);
	DEBUG_PRINT_STREAM("buf_len = %lu, offset = %lu\n",
			buffer->nAllocLen, buffer->nOffset);    

	post_event(pcom_priv, (OMX_U32)buffer, 0, OMX_GENERATE_FTB);
	return OMX_ErrorNone;
}


/* ======================================================================
   FUNCTION
   SetCallbacks

   DESCRIPTION
   Set the callbacks.

   PARAMETERS
   None.

   RETURN VALUE
   OMX Error None if everything successful.
   =======================================================================*/
static OMX_ERRORTYPE  set_callbacks(OMX_IN OMX_HANDLETYPE phandle,
		OMX_IN OMX_CALLBACKTYPE* callbacks, OMX_IN OMX_PTR app_data)
{
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcom_priv = NULL;

	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(callbacks == NULL);
	OMX_CHECK_ARG_RETURN(callbacks->EventHandler == NULL);
	OMX_CHECK_ARG_RETURN(callbacks->EmptyBufferDone == NULL);
	OMX_CHECK_ARG_RETURN(callbacks->FillBufferDone == NULL);

	pcomp = (OMX_COMPONENTTYPE *)phandle;
	pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	pcom_priv->m_cb       = *callbacks;
	pcom_priv->m_app_data = app_data;
	return OMX_ErrorNone;
}


/* ======================================================================
   FUNCTION
   component_role_enum

   DESCRIPTION
   enum role omx component support

   PARAMETERS
   None.

   RETURN VALUE
   OMX Error None if everything successful.
   =======================================================================*/
static OMX_ERRORTYPE  component_role_enum(
		OMX_IN OMX_HANDLETYPE phandle, OMX_OUT OMX_U8 *role,
		OMX_IN OMX_U32 nindex)
{
	OMX_ERRORTYPE ret = OMX_ErrorNone;
	OMX_CHECK_ARG_RETURN(phandle == NULL);
	OMX_CHECK_ARG_RETURN(role == NULL);

	if (nindex > COUNTOF(codec_trans_list) - 1)
	{
		DEBUG_PRINT("component_role_enum: no more roles\n");
		return OMX_ErrorNoMore;
	}

	strncpy((OMX_S8 *)role,
		codec_trans_list[nindex].role_name, OMX_MAX_STRINGNAME_SIZE-1);

	return ret;
}


/* ======================================================================
   FUNCTION
   component_deinit

   DESCRIPTION
   component deinit, used to destroy component.

   PARAMETERS
   None.

   RETURN VALUE
   OMX Error None if everything successful.
   =======================================================================*/
OMX_ERRORTYPE  component_deinit(OMX_IN OMX_HANDLETYPE phandle)
{
	OMX_COMPONENTTYPE *pcomp = NULL;
	OMX_COMPONENT_PRIVATE *pcom_priv = NULL;
	OMX_PORT_PRIVATE *port_priv = NULL;

	OMX_U32 i = 0;

	OMX_CHECK_ARG_RETURN(phandle == NULL);

	pcomp     = (OMX_COMPONENTTYPE *)phandle;
	pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

	if (OMX_StateLoaded != pcom_priv->m_state)                           //just can deinit the component when it is in the state of OMX_StateLoaded
	{
		DEBUG_PRINT_ERROR("OMX not in LOADED state!\n");
		DEBUG_PRINT_ERROR("current state %d\n", pcom_priv->m_state);
		return OMX_ErrorInvalidState;
	}
	venc_deinit_drv_context(&pcom_priv->drv_ctx);                        // the venc hardwork device should be deinit
	/* Check port is deinit */                                       
	if (!port_empty(pcom_priv, OUTPUT_PORT_INDEX))                      
	{
		port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
		for (i = 0; i < port_priv->port_def.nBufferCountActual; i++)
		{
			free_buffer_internal(pcom_priv,
					OUTPUT_PORT_INDEX, port_priv->m_omx_bufhead[i]);
		}
	}
	if (!port_empty(pcom_priv, INPUT_PORT_INDEX))
	{
		port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
		for (i = 0; i < port_priv->port_def.nBufferCountActual; i++)
		{
			free_buffer_internal(pcom_priv,
					INPUT_PORT_INDEX, port_priv->m_omx_bufhead[i]);
		}
	}
	
	ports_deinit(pcom_priv);                                            
	if (!pcom_priv->msg_thread_exit)
	{
		pcom_priv->msg_thread_exit = OMX_TRUE;
		pthread_join(pcom_priv->msg_thread_id, NULL);
	}
	close(pcom_priv->m_pipe_in);
	close(pcom_priv->m_pipe_out);
	sem_wait(&pcom_priv->m_async_sem);                      
	if (!pcom_priv->event_thread_exit)
	{
		pcom_priv->event_thread_exit = OMX_TRUE;
		pthread_join(pcom_priv->event_thread_id, NULL);     
	}
	pthread_mutex_destroy(&pcom_priv->m_lock);
	sem_destroy(&pcom_priv->m_cmd_lock);
	sem_destroy(&pcom_priv->m_async_sem);

	free(pcom_priv);
	pcomp->pComponentPrivate = NULL;

	DEBUG_PRINT("Hisilicon venc Omx Component exit!\n");
	return OMX_ErrorNone;
}


/* ======================================================================
   FUNCTION
   component_init

   DESCRIPTION
   component init

   PARAMETERS
   None.

   RETURN VALUE
   OMX Error None if everything successful.
   =======================================================================*/
OMX_ERRORTYPE component_init(OMX_HANDLETYPE phandle,
		                     OMX_STRING comp_name)
{
	OMX_ERRORTYPE          error     = OMX_ErrorNone;
	OMX_COMPONENTTYPE     *pcomp     = NULL;
	OMX_COMPONENT_PRIVATE *pcom_priv = NULL;
	OMX_PORT_PRIVATE      *port_priv = NULL;

	int fds[2];
	OMX_S32 result = -1;

	OMX_CHECK_ARG_RETURN(phandle == NULL);

	if (strncmp(comp_name, OMX_VENC_COMP_NAME,OMX_MAX_STRINGNAME_SIZE) != 0)
	{
		DEBUG_PRINT_ERROR("compname:  %s not match \n", comp_name);
		return OMX_ErrorBadParameter;
	}

	pcomp     = (OMX_COMPONENTTYPE *)phandle;
	pcom_priv = (OMX_COMPONENT_PRIVATE *)malloc(sizeof(OMX_COMPONENT_PRIVATE));
	if (!pcom_priv)
	{
		DEBUG_PRINT_ERROR("component_init(): malloc failed\n");
		return OMX_ErrorInsufficientResources;
	}

	memset(pcom_priv, 0 ,sizeof(OMX_COMPONENT_PRIVATE));
	pcom_priv->m_state					= OMX_StateInvalid;             
	pcom_priv->m_flags					= 0;
	pcom_priv->event_thread_exit		= OMX_FALSE;
	pcom_priv->msg_thread_exit			= OMX_FALSE;
    pcom_priv->m_pre_timestamp			= 0;                             //PTS

	pcom_priv->m_encoder_fmt			= OMX_VIDEO_CodingUnused;


    strncpy((OMX_S8 *)pcom_priv->m_comp_name, comp_name,OMX_MAX_STRINGNAME_SIZE-1); //add by liminqi 

	init_event_queue(&pcom_priv->m_cmd_q);                                      
	init_event_queue(&pcom_priv->m_ftb_q);                                       
	init_event_queue(&pcom_priv->m_etb_q);                                      

	pthread_mutex_init(&pcom_priv->m_lock, NULL);                              
	sem_init(&pcom_priv->m_cmd_lock,  0, 0);
	sem_init(&pcom_priv->m_async_sem, 0, 0);

	/* create event theard */                                                 
	result = pthread_create(&pcom_priv->event_thread_id,
				            0, event_thread, pcom_priv);
	if (result < 0)
	{
		DEBUG_PRINT_ERROR("ERROR: failed to create event thread\n");
		error = OMX_ErrorInsufficientResources;
		goto error_exit0;
	}

	result = pipe(fds);                                                        
	if (result < 0)
	{
		DEBUG_PRINT_ERROR("pipe creation failed\n");
		error = OMX_ErrorInsufficientResources;
		goto error_exit1;
	}
	pcom_priv->m_pipe_in	= fds[0];
	pcom_priv->m_pipe_out	= fds[1];
	

    /******* set the default port attr *******************/
	result = ports_init(pcom_priv);                                             
	if (result < 0)
	{
		DEBUG_PRINT_ERROR("pipe creation failed\n");
		error = OMX_ErrorInsufficientResources;
		goto error_exit2;
	}

	result = venc_init_drv_context(&pcom_priv->drv_ctx);                       
	if (result < 0) {
		DEBUG_PRINT_ERROR("drv ctx init failed\n");
		error = OMX_ErrorUndefined;
		goto error_exit4;
	}

    venc_get_default_attr(&pcom_priv->drv_ctx);                                

	/* init component callbacks */
    CONFIG_VERSION_SIZE(pcomp , OMX_COMPONENTTYPE);               
   
	pcomp->SetCallbacks				= set_callbacks;
	pcomp->GetComponentVersion		= get_component_version;
	pcomp->SendCommand				= send_command;
	pcomp->GetParameter				= get_parameter;
	pcomp->SetParameter				= set_parameter;
    pcomp->GetState					= get_state;
    pcomp->AllocateBuffer			= allocate_buffer;
	pcomp->FreeBuffer				= free_buffer;
	pcomp->EmptyThisBuffer			= empty_this_buffer;
	pcomp->FillThisBuffer           = fill_this_buffer;    
	pcomp->ComponentDeInit			= component_deinit;

    pcomp->GetConfig				= get_config;                         
	pcomp->SetConfig				= set_config;                     
	pcomp->ComponentTunnelRequest	= component_tunnel_request;         //not support yet
	pcomp->UseBuffer				= use_buffer;                       //not support yet  
	pcomp->GetExtensionIndex		= get_extension_index;              //not support yet
#ifdef KHRONOS_1_1
	pcomp->ComponentRoleEnum		= component_role_enum;
#endif

	pcomp->pComponentPrivate        = pcom_priv;                          
	pcom_priv->m_pcomp		        = pcomp;
    
	pcom_priv->m_state		        = OMX_StateLoaded; 
    
	sem_post(&pcom_priv->m_async_sem);                                    

	DEBUG_PRINT("Hisilicon Video Encoder Omx Component Verision 1.0\n");
	return OMX_ErrorNone;

error_exit4:
	ports_deinit(pcom_priv);
error_exit2:
	close(pcom_priv->m_pipe_in);
	close(pcom_priv->m_pipe_out);
error_exit1:
    pcom_priv->event_thread_exit		= OMX_TRUE;
	pthread_join(pcom_priv->event_thread_id, NULL);
error_exit0:
	pthread_mutex_destroy(&pcom_priv->m_lock);
	sem_destroy(&pcom_priv->m_cmd_lock);
	sem_destroy(&pcom_priv->m_async_sem);
	free(pcom_priv);
	pcomp->pComponentPrivate = NULL;
    
	return error;
}
