/*========================================================================
  Open MAX   Component: Video Decoder
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

#ifdef ANDROID
#include "gralloc_priv.h"
#endif

#include "omx_vdec.h"
#include "omx_dbg.h"


static const struct codec_info codec_trans_list[] = {

    {OMX_COMPONENTROLES_H263,     OMX_VIDEO_CodingH263,       VDEC_CODECTYPE_H263},
    {OMX_COMPONENTROLES_H264,     OMX_VIDEO_CodingAVC,        VDEC_CODECTYPE_H264},
    {OMX_COMPONENTROLES_MPEG2,    OMX_VIDEO_CodingMPEG2,      VDEC_CODECTYPE_MPEG2},
    {OMX_COMPONENTROLES_MPEG4,    OMX_VIDEO_CodingMPEG4,      VDEC_CODECTYPE_MPEG4},

};


static const struct codec_profile_level avc_profile_level_list[] ={

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
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel1},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel1b},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel11},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel12},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel13},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel2},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel21},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel22},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel3},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel31},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel32},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel4},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel41},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel42},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel5},
    {OMX_VIDEO_AVCProfileMain,     OMX_VIDEO_AVCLevel51},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel1},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel1b},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel11},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel12},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel13},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel2},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel21},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel22},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel3},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel31},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel32},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel4},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel41},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel42},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel5},
    {OMX_VIDEO_AVCProfileHigh,     OMX_VIDEO_AVCLevel51},

};


static const struct codec_profile_level mpeg4_profile_level_list[] = {

    {OMX_VIDEO_MPEG4ProfileSimple,         OMX_VIDEO_MPEG4Level0},
    {OMX_VIDEO_MPEG4ProfileSimple,         OMX_VIDEO_MPEG4Level0b},
    {OMX_VIDEO_MPEG4ProfileSimple,         OMX_VIDEO_MPEG4Level1},
    {OMX_VIDEO_MPEG4ProfileSimple,         OMX_VIDEO_MPEG4Level2},
    {OMX_VIDEO_MPEG4ProfileSimple,         OMX_VIDEO_MPEG4Level3},
    {OMX_VIDEO_MPEG4ProfileSimple,         OMX_VIDEO_MPEG4Level4},
    {OMX_VIDEO_MPEG4ProfileSimple,         OMX_VIDEO_MPEG4Level4a},
    {OMX_VIDEO_MPEG4ProfileSimple,         OMX_VIDEO_MPEG4Level5},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level0},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level0b},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level1},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level2},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level3},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level4},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level4a},
    {OMX_VIDEO_MPEG4ProfileAdvancedSimple, OMX_VIDEO_MPEG4Level5},

};


static const struct codec_profile_level mpeg2_profile_level_list[] = {

    { OMX_VIDEO_MPEG2ProfileSimple,  OMX_VIDEO_MPEG2LevelLL},
    { OMX_VIDEO_MPEG2ProfileSimple,  OMX_VIDEO_MPEG2LevelML},
    { OMX_VIDEO_MPEG2ProfileSimple,  OMX_VIDEO_MPEG2LevelH14},
    { OMX_VIDEO_MPEG2ProfileSimple,  OMX_VIDEO_MPEG2LevelHL},
    { OMX_VIDEO_MPEG2ProfileMain,    OMX_VIDEO_MPEG2LevelLL},
    { OMX_VIDEO_MPEG2ProfileMain,    OMX_VIDEO_MPEG2LevelML},
    { OMX_VIDEO_MPEG2ProfileMain,    OMX_VIDEO_MPEG2LevelH14},
    { OMX_VIDEO_MPEG2ProfileMain,    OMX_VIDEO_MPEG2LevelHL},
    { OMX_VIDEO_MPEG2ProfileHigh,    OMX_VIDEO_MPEG2LevelLL},
    { OMX_VIDEO_MPEG2ProfileHigh,    OMX_VIDEO_MPEG2LevelML},
    { OMX_VIDEO_MPEG2ProfileHigh,    OMX_VIDEO_MPEG2LevelH14},
    { OMX_VIDEO_MPEG2ProfileHigh,    OMX_VIDEO_MPEG2LevelHL},

};


static const struct codec_profile_level h263_profile_level_list[] = {

    { OMX_VIDEO_H263ProfileBaseline,           OMX_VIDEO_H263Level10},
    { OMX_VIDEO_H263ProfileBaseline,           OMX_VIDEO_H263Level20},
    { OMX_VIDEO_H263ProfileBaseline,           OMX_VIDEO_H263Level30},
    { OMX_VIDEO_H263ProfileBaseline,           OMX_VIDEO_H263Level40},
    { OMX_VIDEO_H263ProfileBaseline,           OMX_VIDEO_H263Level45},
    { OMX_VIDEO_H263ProfileBaseline,           OMX_VIDEO_H263Level50},
    { OMX_VIDEO_H263ProfileBaseline,           OMX_VIDEO_H263Level60},
    { OMX_VIDEO_H263ProfileBaseline,           OMX_VIDEO_H263Level70},
    { OMX_VIDEO_H263ProfileBackwardCompatible, OMX_VIDEO_H263Level10},
    { OMX_VIDEO_H263ProfileBackwardCompatible, OMX_VIDEO_H263Level20},
    { OMX_VIDEO_H263ProfileBackwardCompatible, OMX_VIDEO_H263Level30},
    { OMX_VIDEO_H263ProfileBackwardCompatible, OMX_VIDEO_H263Level40},
    { OMX_VIDEO_H263ProfileBackwardCompatible, OMX_VIDEO_H263Level45},
    { OMX_VIDEO_H263ProfileBackwardCompatible, OMX_VIDEO_H263Level50},
    { OMX_VIDEO_H263ProfileBackwardCompatible, OMX_VIDEO_H263Level60},
    { OMX_VIDEO_H263ProfileBackwardCompatible, OMX_VIDEO_H263Level70},
    { OMX_VIDEO_H263ProfileISWV2,              OMX_VIDEO_H263Level10},
    { OMX_VIDEO_H263ProfileISWV2,              OMX_VIDEO_H263Level20},
    { OMX_VIDEO_H263ProfileISWV2,              OMX_VIDEO_H263Level30},
    { OMX_VIDEO_H263ProfileISWV2,              OMX_VIDEO_H263Level40},
    { OMX_VIDEO_H263ProfileISWV2,              OMX_VIDEO_H263Level45},
    { OMX_VIDEO_H263ProfileISWV2,              OMX_VIDEO_H263Level50},
    { OMX_VIDEO_H263ProfileISWV2,              OMX_VIDEO_H263Level60},
    { OMX_VIDEO_H263ProfileISWV2,              OMX_VIDEO_H263Level70},

};


static OMX_ERRORTYPE omx_report_event(
              OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_IN OMX_EVENTTYPE event_type,
        OMX_IN OMX_U32 param1,
        OMX_IN OMX_U32 param2,
        OMX_IN OMX_PTR pdata)
{
    OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
    OMX_CHECK_ARG_RETURN(pcom_priv->m_cb.EventHandler == NULL);

    return pcom_priv->m_cb.EventHandler(pcom_priv->m_pcomp, pcom_priv->m_app_data,event_type, param1, param2, pdata);
}


static inline OMX_ERRORTYPE omx_report_error(OMX_COMPONENT_PRIVATE *pcom_priv, OMX_ERRORTYPE  error_type)
{
    return omx_report_event(pcom_priv, OMX_EventError, (OMX_U32)error_type, 0, NULL);
}


static OMX_BOOL port_full(OMX_COMPONENT_PRIVATE *pcom_priv, OMX_U32  port)
{
    OMX_U32  i;
    OMX_PORT_PRIVATE *port_priv = &pcom_priv->m_port[port];

    for (i = 0; i < port_priv->port_pro.max_count; i++)
    {
        if (bit_absent(&port_priv->m_buf_cnt, i))
        {
            DEBUG_PRINT("port_full->bit_absent->OMX_FALSE %s[%d]\n",__FILE__,__LINE__); 
            return OMX_FALSE;
        }
    }
    return OMX_TRUE;
}


static OMX_BOOL port_empty(OMX_COMPONENT_PRIVATE *pcom_priv, OMX_U32  port)
{
    OMX_U32  i;
    OMX_PORT_PRIVATE *port_priv = &pcom_priv->m_port[port];

    for (i = 0; i < port_priv->port_pro.max_count; i++)
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
    {
        return OMX_FALSE;
       }

    return port_full(pcom_priv, OUTPUT_PORT_INDEX);
}


static OMX_BOOL ports_all_empty(OMX_COMPONENT_PRIVATE *pcom_priv)
{
    if (port_empty(pcom_priv, INPUT_PORT_INDEX) != OMX_TRUE)
    {
        return OMX_FALSE;
       }

    return port_empty(pcom_priv, OUTPUT_PORT_INDEX);
}


static OMX_ERRORTYPE post_event(
              OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_U32 param1,
        OMX_U32 param2,
        OMX_U8 id)
{
    OMX_S32 n = -1;
    OMX_ERRORTYPE ret = OMX_ErrorNone;

    pthread_mutex_lock(&pcom_priv->m_lock);
    if ((id == OMX_GENERATE_FTB) || (id == OMX_GENERATE_FBD))
    {
        push_entry(&pcom_priv->m_ftb_q, param1, param2, id);
    }
    else if ((id == OMX_GENERATE_ETB) || (id == OMX_GENERATE_EBD))
    {
        push_entry(&pcom_priv->m_etb_q, param1, param2, id);
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


static OMX_ERRORTYPE fill_buffer_done(OMX_COMPONENT_PRIVATE* pcom_priv, OMX_BUFFERHEADERTYPE *buffer)
{
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_PORT_PRIVATE *port_priv = NULL;

    OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
    OMX_CHECK_ARG_RETURN(buffer == NULL);

    port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];

    if (port_priv->m_port_flushing)
    {
        buffer->nFilledLen = 0;
    }

    port_priv->m_buf_pend_cnt--;

    if (!pcom_priv->m_cb.FillBufferDone)
    {
        DEBUG_PRINT_ERROR("[FBD] FillBufferDone callback NULL!\n");
        return OMX_ErrorUndefined;
    }

    ret = pcom_priv->m_cb.FillBufferDone(pcom_priv->m_pcomp, pcom_priv->m_app_data, buffer);

    DEBUG_PRINT_STREAM("[FBD] success <<< useraddr = %p, data_len: %ld\n", buffer->pBuffer, buffer->nFilledLen);

    return ret;
}


static OMX_ERRORTYPE empty_buffer_done(OMX_COMPONENT_PRIVATE* pcom_priv, OMX_BUFFERHEADERTYPE *buffer)
{
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_PORT_PRIVATE *port_priv = NULL;

    OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
    OMX_CHECK_ARG_RETURN(buffer == NULL);

    port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];

    port_priv->m_buf_pend_cnt--;

    buffer->nFilledLen = 0;

    if (!pcom_priv->m_cb.EmptyBufferDone)
    {
        DEBUG_PRINT_ERROR("[EBD] EmptyBufferDone callback NULL!\n");
        return OMX_ErrorUndefined;
    }

    ret = pcom_priv->m_cb.EmptyBufferDone(pcom_priv->m_pcomp, pcom_priv->m_app_data, buffer);

    DEBUG_PRINT_STREAM("[EBD] success <<< useraddr = %p\n", buffer->pBuffer);

    return ret;
}


//#if 1  // native buffer
#ifdef ANDROID
static OMX_ERRORTYPE use_android_native_buffer_internal(
              OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_INOUT OMX_BUFFERHEADERTYPE **omx_bufhdr,
        OMX_IN OMX_PTR app_data,
        OMX_IN OMX_U32 port,
        OMX_IN OMX_U32 bytes,
        OMX_IN OMX_U8* p_handle)
{
    OMX_U32 i = 0;
    OMX_S32 ret = -1;
    OMX_U32 buf_size = 0, buf_cnt = 0;
    OMX_ERRORTYPE error = OMX_ErrorNone;
    OMX_PORT_PRIVATE *port_priv = NULL;
    OMX_BUFFERHEADERTYPE *pomx_buf = NULL;
       OMX_U8* UserVirAddr = NULL;
       private_handle_t *p_private_handle = (private_handle_t *)p_handle;

    struct vdec_user_buf_desc* pvdec_buf = NULL;

    OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
    OMX_CHECK_ARG_RETURN(p_handle == NULL);
    OMX_CHECK_ARG_RETURN(p_private_handle->ion_phy_addr == 0);

    port_priv = &pcom_priv->m_port[port];
    buf_size = port_priv->port_pro.buffer_size;
    buf_cnt = port_priv->port_pro.max_count;

    if (bytes != buf_size)
    {
        DEBUG_PRINT_ERROR("[UB] Error: buf size invalid, bytes = %ld, buf_size = %ld\n", bytes, buf_size);
        return OMX_ErrorBadParameter;
    }

    /* find an idle buffer slot */
    for (i = 0; i < buf_cnt; i++)
    {
        if (bit_absent(&port_priv->m_buf_cnt, i))
              {
            break;
              }
    }

    if (i >= buf_cnt)
    {
        DEBUG_PRINT_ERROR("[UB] Error: no Free buffer heads found\n");
        return OMX_ErrorInsufficientResources;
    }

    UserVirAddr = HI_MEM_Map(p_private_handle->ion_phy_addr, bytes);
    if(NULL ==  UserVirAddr)
       {
        DEBUG_PRINT_ERROR("%s() HI_MEM_Map error!\n", __func__);
        return OMX_ErrorUndefined;
    }

    pomx_buf = (OMX_BUFFERHEADERTYPE*)malloc(sizeof(OMX_BUFFERHEADERTYPE));
    pvdec_buf = (struct vdec_user_buf_desc *)malloc(sizeof(struct vdec_user_buf_desc));
    if (!pomx_buf || !pvdec_buf)
    {
        DEBUG_PRINT_ERROR("[UB] Error: alloc omx buffer head failed\n");
        error = OMX_ErrorInsufficientResources;
        goto error_exit;
    }

       memset(pomx_buf, 0, sizeof(OMX_BUFFERHEADERTYPE));
       memset(pvdec_buf, 0, sizeof(struct vdec_user_buf_desc));

    /* skip buffer allocation, direct bind */
    pvdec_buf->dir            = (INPUT_PORT_INDEX == port)?  PORT_DIR_INPUT: PORT_DIR_OUTPUT;;
    pvdec_buf->bufferaddr           = UserVirAddr;
    pvdec_buf->phyaddr            = p_private_handle->ion_phy_addr;
    pvdec_buf->buffer_len           = bytes;
    pvdec_buf->client_data        = (OMX_U32)pomx_buf;
    pvdec_buf->bNativeBuffer    = HI_TRUE;

    if (channel_bind_buffer(&pcom_priv->drv_ctx, pvdec_buf) < 0)
    {
        DEBUG_PRINT_ERROR("[UB] Error: vdec bind user buf failed\n");
        error = OMX_ErrorUndefined;
        goto error_exit;
    }

    /* init OMX buffer head */
    pomx_buf->pBuffer            = p_handle;
    pomx_buf->nSize                = sizeof(OMX_BUFFERHEADERTYPE);
    pomx_buf->nVersion.nVersion    = OMX_SPEC_VERSION;
    pomx_buf->nAllocLen            = bytes;
    pomx_buf->nOffset             = 0;
    pomx_buf->pAppPrivate        = app_data;

    if (INPUT_PORT_INDEX == port)
    {
        pomx_buf->pInputPortPrivate    = (OMX_PTR)pvdec_buf;
        pomx_buf->nInputPortIndex    = INPUT_PORT_INDEX;
        pomx_buf->pOutputPortPrivate    = NULL;
    }
    else
    {
        pomx_buf->pInputPortPrivate    = NULL;
        pomx_buf->pOutputPortPrivate    = (OMX_PTR)pvdec_buf;
        pomx_buf->nOutputPortIndex    = OUTPUT_PORT_INDEX;
    }

    *omx_bufhdr = pomx_buf;

    /* mark buffer native, used */
    bit_set(&port_priv->m_native_bitmap, i);
    bit_set(&port_priv->m_buf_cnt, i);

    port_priv->m_omx_bufhead[i] = pomx_buf;
    port_priv->m_vdec_bufhead[i] = pvdec_buf;

    DEBUG_PRINT_STREAM("[UB] Use %s buffer %d success: phyaddr = %x, size = %d\n",
                                           (port == INPUT_PORT_INDEX) ? "in" : "out", (int)i, pvdec_buf->phyaddr, pvdec_buf->buffer_len);

    return OMX_ErrorNone;

error_exit:
    HI_MEM_Unmap(UserVirAddr);
    free(pvdec_buf);
    free(pomx_buf);

    DEBUG_PRINT_ERROR("[UB] Use %s buffer %d failed\n", (port == OUTPUT_PORT_INDEX) ? "out" : "in", (int)i);

    return error;
}
#endif


static OMX_ERRORTYPE use_buffer_internal(
              OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_INOUT OMX_BUFFERHEADERTYPE **omx_bufhdr,
        OMX_IN OMX_PTR app_data,
        OMX_IN OMX_U32 port,
        OMX_IN OMX_U32 bytes,
        OMX_IN OMX_U8 *buffer)
{
    OMX_U32 i = 0;
    OMX_S32 ret = -1;
    OMX_U32 buf_size = 0, buf_cnt = 0;
    OMX_ERRORTYPE error = OMX_ErrorNone;
    OMX_PORT_PRIVATE *port_priv = NULL;
    OMX_BUFFERHEADERTYPE *pomx_buf = NULL;
       HI_U32 Phyaddr, BufSize;

    struct vdec_user_buf_desc* pvdec_buf = NULL;

    OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
    OMX_CHECK_ARG_RETURN(buffer == NULL);

    port_priv = &pcom_priv->m_port[port];
    buf_size = port_priv->port_pro.buffer_size;
    buf_cnt = port_priv->port_pro.max_count;

    if (bytes != buf_size)
    {
        DEBUG_PRINT_ERROR("[UB] Error: buf size invalid, bytes = %ld, buf_size = %ld\n", bytes, buf_size);
        return OMX_ErrorBadParameter;
    }

    /* find an idle buffer slot */
    for (i = 0; i < buf_cnt; i++)
    {
        if (bit_absent(&port_priv->m_buf_cnt, i))
              {
            break;
              }
    }

    if (i >= buf_cnt)
    {
        DEBUG_PRINT_ERROR("[UB] Error: no Free buffer heads found\n");
        return OMX_ErrorInsufficientResources;
    }

	printf("HI_MMZ_GetPhyaddr: %p\n", buffer);
	ret = HI_MMZ_GetPhyaddr(buffer, &Phyaddr, &BufSize);
	if(ret < 0)
       {
        DEBUG_PRINT_ERROR("%s() HI_MMZ_GetPhyaddr error!\n", __func__);
        return OMX_ErrorHardware;
    }

    pomx_buf = (OMX_BUFFERHEADERTYPE*)malloc(sizeof(OMX_BUFFERHEADERTYPE));
    pvdec_buf = (struct vdec_user_buf_desc *)malloc(sizeof(struct vdec_user_buf_desc));
    if (!pomx_buf || !pvdec_buf)
    {
        DEBUG_PRINT_ERROR("[UB] Error: alloc omx buffer head failed\n");
        error = OMX_ErrorInsufficientResources;
        goto error_exit;
    }

    memset(pomx_buf, 0, sizeof(OMX_BUFFERHEADERTYPE));
    memset(pvdec_buf, 0, sizeof(struct vdec_user_buf_desc));

    /* skip buffer allocation, direct bind */
    pvdec_buf->dir            = (INPUT_PORT_INDEX == port)?  PORT_DIR_INPUT: PORT_DIR_OUTPUT;
    pvdec_buf->bufferaddr           = buffer;
    pvdec_buf->phyaddr           = Phyaddr;
    pvdec_buf->buffer_len           = bytes;
    pvdec_buf->client_data        = (OMX_U32)pomx_buf;
    pvdec_buf->bNativeBuffer    = HI_FALSE;

    if (channel_bind_buffer(&pcom_priv->drv_ctx, pvdec_buf) < 0)
    {
        DEBUG_PRINT_ERROR("[UB] Error: vdec bind user buf failed\n");
        error = OMX_ErrorUndefined;
        goto error_exit;
    }

    /* init OMX buffer head */
    pomx_buf->pBuffer            = buffer;
    pomx_buf->nSize                = sizeof(OMX_BUFFERHEADERTYPE);
    pomx_buf->nVersion.nVersion    = OMX_SPEC_VERSION;
    pomx_buf->nAllocLen            = bytes;
    pomx_buf->nOffset             = 0;
    pomx_buf->pAppPrivate        = app_data;

    if (INPUT_PORT_INDEX == port)
    {
        pomx_buf->pInputPortPrivate    = (OMX_PTR)pvdec_buf;
        pomx_buf->nInputPortIndex    = INPUT_PORT_INDEX;
        pomx_buf->pOutputPortPrivate    = NULL;
    }
    else
    {
        pomx_buf->pInputPortPrivate    = NULL;
        pomx_buf->pOutputPortPrivate    = (OMX_PTR)pvdec_buf;
        pomx_buf->nOutputPortIndex    = OUTPUT_PORT_INDEX;
    }

    *omx_bufhdr = pomx_buf;
    bit_set(&port_priv->m_buf_cnt, i);

    port_priv->m_omx_bufhead[i] = pomx_buf;
    port_priv->m_vdec_bufhead[i] = pvdec_buf;

    DEBUG_PRINT_STREAM("[UB] Use %s buffer %d success: phyaddr = %x, size = %d\n",
                                           (port == INPUT_PORT_INDEX) ? "in" : "out", (int)i, pvdec_buf->phyaddr, pvdec_buf->buffer_len);

    return OMX_ErrorNone;

error_exit:
    free(pvdec_buf);
    free(pomx_buf);

    DEBUG_PRINT_ERROR("[UB] Use %s buffer %d failed\n", (port == OUTPUT_PORT_INDEX) ? "out" : "in", (int)i);

    return error;
}


static OMX_ERRORTYPE allocate_buffer_internal(
              OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_INOUT OMX_BUFFERHEADERTYPE **omx_bufhdr,
        OMX_IN OMX_PTR app_data,
        OMX_IN OMX_U32 port,
        OMX_IN OMX_U32 bytes)
{
    OMX_U32 i = 0;
    OMX_U32 buf_size = 0, buf_cnt = 0;
    OMX_BUFFERHEADERTYPE *pomx_buf = NULL;
    OMX_PORT_PRIVATE *port_priv = NULL;
    OMX_ERRORTYPE error = OMX_ErrorNone;

    struct vdec_user_buf_desc *pvdec_buf = NULL;

    port_priv = &pcom_priv->m_port[port];
    buf_cnt = port_priv->port_pro.max_count;
    buf_size = port_priv->port_pro.buffer_size;

    /* check alloc bytes */
    if (bytes != buf_size)
    {
        DEBUG_PRINT_ERROR("[AB] Error: buf size invalid, bytes = %ld, buf_size = %ld\n", bytes, buf_size);
        return OMX_ErrorBadParameter;
    }

    /* find an idle buffer slot */
    for (i = 0; i < buf_cnt; i++)
    {
        if (bit_absent(&port_priv->m_buf_cnt, i))
              {
            break;
              }
    }

    if (i >= buf_cnt)
    {
        DEBUG_PRINT_ERROR("[AB] Error: no Free buffer heads found\n");
        return OMX_ErrorInsufficientResources;
    }

    pomx_buf = (OMX_BUFFERHEADERTYPE*)malloc(sizeof(OMX_BUFFERHEADERTYPE));
    pvdec_buf = (struct vdec_user_buf_desc *)malloc(sizeof(struct vdec_user_buf_desc));

    if (!pomx_buf || !pvdec_buf)
    {
        DEBUG_PRINT_ERROR("[AB] Error: alloc omx buffer head failed\n");
        error = OMX_ErrorInsufficientResources;
        goto error_exit0;
    }

    memset(pomx_buf, 0, sizeof(OMX_BUFFERHEADERTYPE));
    memset(pvdec_buf, 0, sizeof(struct vdec_user_buf_desc));

    pvdec_buf->dir                    = (INPUT_PORT_INDEX == port_priv->m_port_index)?  PORT_DIR_INPUT: PORT_DIR_OUTPUT;
    pvdec_buf->client_data        = (OMX_U32)pomx_buf;
    pvdec_buf->bNativeBuffer    = HI_FALSE;

    if (alloc_contigous_buffer(buf_size, port_priv->port_pro.alignment, pvdec_buf) < 0)
    {
        DEBUG_PRINT_ERROR("[AB] Error: alloc_contigous_buffer failed\n");
        error =  OMX_ErrorUndefined;
        goto error_exit0;
    }

    /* bind this buffer to vdec driver */
    if (channel_bind_buffer(&pcom_priv->drv_ctx, pvdec_buf) < 0)
    {
        DEBUG_PRINT_ERROR("[AB] Error: Bind buffer failed\n");
        error =  OMX_ErrorUndefined;
        goto error_exit1;
    }

    /* init buffer head */
    pomx_buf->nSize                    = sizeof(OMX_BUFFERHEADERTYPE);
    pomx_buf->nVersion.nVersion        = OMX_SPEC_VERSION;
    pomx_buf->pBuffer                = pvdec_buf->bufferaddr;
    pomx_buf->nAllocLen                   = pvdec_buf->buffer_len;
    pomx_buf->nOffset                 = 0;
    pomx_buf->pAppPrivate            = app_data;

    if (port == INPUT_PORT_INDEX)
    {
        pomx_buf->pOutputPortPrivate    = NULL;
        pomx_buf->pInputPortPrivate      = (OMX_PTR )pvdec_buf;
        pomx_buf->nInputPortIndex        = INPUT_PORT_INDEX;
        pomx_buf->pPlatformPrivate       = NULL;
    }
    else
    {
        pomx_buf->pInputPortPrivate      = NULL;
        pomx_buf->pOutputPortPrivate    = (OMX_PTR )pvdec_buf;
        pomx_buf->nOutputPortIndex      = OUTPUT_PORT_INDEX;
        pomx_buf->pPlatformPrivate       = NULL; //pFrameinfo;
    }

    *omx_bufhdr = pomx_buf;

    /* mark buffer to be allocated, used */
    bit_set(&port_priv->m_alloc_bitmap, i);
    bit_set(&port_priv->m_buf_cnt, i);

    port_priv->m_omx_bufhead[i] = pomx_buf;
    port_priv->m_vdec_bufhead[i] = pvdec_buf;

    DEBUG_PRINT_STREAM("[AB] Alloc %s buffer %d success: phyaddr = %x, useraddr = %p, size = %d\n",
                                           (port == INPUT_PORT_INDEX) ? "in" : "out", (int)i, pvdec_buf->phyaddr, pvdec_buf->bufferaddr, pvdec_buf->buffer_len);

    return OMX_ErrorNone;

error_exit1:
    free_contigous_buffer(pvdec_buf);
error_exit0:
    free(pvdec_buf);
    free(pomx_buf);

    DEBUG_PRINT_ERROR("[AB] Alloc %s buffer %d failed\n",(port == OUTPUT_PORT_INDEX) ? "out" : "in", (int)i);

    return error;
}


static OMX_ERRORTYPE free_buffer_internal(
              OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_IN OMX_U32 port,
        OMX_IN OMX_BUFFERHEADERTYPE *omx_bufhdr)
{
    OMX_U32  i;
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_PORT_PRIVATE *port_priv = NULL;
    struct vdec_user_buf_desc* puser_buf = NULL;

    if(!omx_bufhdr)
    {
        DEBUG_PRINT_ALWS("free_buffer_internal port[%ld] omx_bufhdr is NULL", port);
        return OMX_ErrorNone;
    }

    port_priv = &pcom_priv->m_port[port];

    /* santity check */
       for (i = 0; i < port_priv->port_pro.max_count; i++)
       {
              if (omx_bufhdr == port_priv->m_omx_bufhead[i])
              {
                  break;
              }
       }

       if (i >= port_priv->port_pro.max_count)
       {
                 DEBUG_PRINT_ERROR("[FB] No buffers found for address[%p]", omx_bufhdr->pBuffer);
              return OMX_ErrorBadParameter;
       }

    if (bit_absent(&port_priv->m_buf_cnt, i))
    {
              DEBUG_PRINT_ERROR("[FB] Buffer 0x%p not in used?", omx_bufhdr->pBuffer);
              return OMX_ErrorBadParameter;
    }
    else
    {
        bit_clear(&port_priv->m_buf_cnt, i);
    }

    /* unbind vdec user buffer */
    if (OUTPUT_PORT_INDEX == port)
    {
        puser_buf = (struct vdec_user_buf_desc*)omx_bufhdr->pOutputPortPrivate;
    }
    else
    {
        puser_buf = (struct vdec_user_buf_desc*)omx_bufhdr->pInputPortPrivate;
    }

    if (channel_unbind_buffer(&pcom_priv->drv_ctx, puser_buf) < 0)
    {
        DEBUG_PRINT_ERROR("[FB] unbind buffer failed\n");
        return OMX_ErrorUndefined;
    }

    if (port_priv->m_port_populated)
    {
        port_priv->m_port_populated = OMX_FALSE;
    }

    DEBUG_PRINT_STREAM("[FB] Free %s buffer %d success: phyaddr = %x, useraddr = %p, size = %d\n",
                                           (port == INPUT_PORT_INDEX) ? "in" : "out", (int)i, puser_buf->phyaddr, puser_buf->bufferaddr, puser_buf->buffer_len);

    if (bit_present(&port_priv->m_alloc_bitmap, i))
    {
        free_contigous_buffer(puser_buf);
        bit_clear(&port_priv->m_alloc_bitmap, i);
    }

    if (bit_present(&port_priv->m_native_bitmap, i))
    {
        HI_MEM_Unmap(puser_buf->bufferaddr);
        bit_clear(&port_priv->m_native_bitmap, i);
    }

    free(puser_buf);
    if(omx_bufhdr->pPlatformPrivate)
       {
        free(omx_bufhdr->pPlatformPrivate);
       }
    free(omx_bufhdr);

    port_priv->m_omx_bufhead[i] = NULL;
    port_priv->m_vdec_bufhead[i] = NULL;


    return OMX_ErrorNone;
}


static OMX_ERRORTYPE omx_flush_port(OMX_COMPONENT_PRIVATE *pcom_priv, OMX_U32 port)
{
    OMX_PORT_PRIVATE *port_priv = NULL;

    if ((port != OMX_ALL) && (port > OUTPUT_PORT_INDEX))
    {
        DEBUG_PRINT_ERROR("%s(): Invalid port index\n", __func__);
        return OMX_ErrorUndefined;
    }

    if (port == INPUT_PORT_INDEX || port == OMX_ALL)
    {
        //bit_set(&pcom_priv->m_flags, OMX_STATE_INPUT_FLUSH_PENDING);
        port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
        port_priv->m_port_flushing = OMX_TRUE;
    }

    if (port == OUTPUT_PORT_INDEX || port == OMX_ALL)
    {
        //bit_set(&pcom_priv->m_flags, OMX_STATE_OUTPUT_FLUSH_PENDING);
        port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
        port_priv->m_port_flushing = OMX_TRUE;
    }

    if (channel_flush_port(&pcom_priv->drv_ctx, port) < 0)
    {
        DEBUG_PRINT_ERROR("%s(): channel_flush_port failed\n", __func__);
        omx_report_error(pcom_priv, OMX_ErrorHardware);
        return OMX_ErrorHardware;
    }

    return OMX_ErrorNone;
}


static void return_outbuffers(OMX_COMPONENT_PRIVATE *pcom_priv)
{
    OMX_PORT_PRIVATE *port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
    OMX_U32  param1 = 0, param2 = 0, ident = 0;

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
    OMX_U32  param1 = 0, param2 = 0, ident = 0;

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


static OMX_ERRORTYPE update_picture_info(
              OMX_COMPONENT_PRIVATE *pcomp_priv,
        OMX_U32  width,
        OMX_U32  height)
{
    OMX_U32 align_width         = 0;
    OMX_U32 align_height        = 0;
    OMX_PORT_PRIVATE *port_priv = NULL;

    if (/*(height > DEFAULT_FRAME_HEIGHT) ||*/ (width > DEFAULT_FRAME_WIDTH))
    {
        DEBUG_PRINT_ERROR("%s(): picture w/h(%ldx%ld) exceed! thred: width(%d), height(%d)\n", __func__, width, height, DEFAULT_FRAME_WIDTH, DEFAULT_FRAME_HEIGHT);
        return OMX_ErrorUnsupportedSetting;
    }

    align_width                          = ALIGN_UP(width, 16);
    align_height                         = ALIGN_UP(height, 16);

    port_priv                            = &pcomp_priv->m_port[OUTPUT_PORT_INDEX];
    pcomp_priv->pic_info.frame_width     = width;
    pcomp_priv->pic_info.frame_height     = height;
    pcomp_priv->pic_info.stride             = align_width;
    pcomp_priv->pic_info.scan_lines         = align_height;

    port_priv->port_pro.buffer_size         = FRAME_SIZE(align_width, height);   // 因为1088和1080的关系，所以这里不用align_height

    return OMX_ErrorNone;
}


static OMX_ERRORTYPE get_supported_profile_level(OMX_COMPONENT_PRIVATE *pcomp_priv, OMX_VIDEO_PARAM_PROFILELEVELTYPE *profileLevelType)
{
    OMX_U32 max_num;
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    const struct codec_profile_level *pinfo = NULL;

    OMX_CHECK_ARG_RETURN(pcomp_priv == NULL);
    OMX_CHECK_ARG_RETURN(profileLevelType == NULL);

    if (profileLevelType->nPortIndex != INPUT_PORT_INDEX)
    {
        DEBUG_PRINT_ERROR("%s(): should be queries on Input port only (%ld)\n", __func__, profileLevelType->nPortIndex);
        ret = OMX_ErrorBadPortIndex;
    }

    /* FIXME : profile & level may not correct! */
    if (!strncmp((OMX_STRING)pcomp_priv->m_role, OMX_COMPONENTROLES_H264, OMX_MAX_STRINGNAME_SIZE))
    {
        pinfo = avc_profile_level_list;
        max_num = COUNTOF(avc_profile_level_list);
    }
    else if (!strncmp((OMX_STRING)pcomp_priv->m_role, OMX_COMPONENTROLES_MPEG4, OMX_MAX_STRINGNAME_SIZE))
    {
        pinfo = mpeg4_profile_level_list;
        max_num = COUNTOF(mpeg4_profile_level_list);
    }
    else if (!strncmp((OMX_STRING)pcomp_priv->m_role, OMX_COMPONENTROLES_MPEG2, OMX_MAX_STRINGNAME_SIZE))
    {
        pinfo = mpeg2_profile_level_list;
        max_num = COUNTOF(mpeg2_profile_level_list);
    }
    else if (!strncmp((OMX_STRING)pcomp_priv->m_role, OMX_COMPONENTROLES_H263, OMX_MAX_STRINGNAME_SIZE))
    {
        pinfo = h263_profile_level_list;
        max_num = COUNTOF(h263_profile_level_list);
    }
    else
       {
        DEBUG_PRINT_ERROR("%s(): no profile & level found for %ld(%s)\n", __func__, profileLevelType->nPortIndex, (OMX_STRING)pcomp_priv->m_role);
        return OMX_ErrorUndefined;
       }

    if (profileLevelType->nProfileIndex >= max_num)
       {
              DEBUG_PRINT_ERROR("%s(): ProfileIndex(%ld) exceed!\n", __func__, profileLevelType->nProfileIndex);
        return OMX_ErrorNoMore;
       }

    pinfo += profileLevelType->nProfileIndex;
    profileLevelType->eProfile = pinfo->profile;
    profileLevelType->eLevel   = pinfo->level;

    return ret;
}


static OMX_ERRORTYPE empty_this_buffer_proxy(OMX_COMPONENT_PRIVATE *pcom_priv, OMX_IN OMX_BUFFERHEADERTYPE *pomx_buf)
{
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    struct vdec_user_buf_desc *ptr_intputbuffer = NULL;
    struct vdec_user_buf_desc *puser_buf = NULL;
    OMX_U32 buf_cnt = 0, buf_index = 0;
    OMX_PORT_PRIVATE *port_priv = NULL;

    //DEBUG_PRINT("\n[ETB] %s() enter!\n", __func__);

    if (!pcom_priv || !pomx_buf)
    {
        DEBUG_PRINT_ERROR("[ETB] ERROR: bad parameters\n");
        return OMX_ErrorBadParameter;
    }

    port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];

    if ((port_priv->m_port_flushing == OMX_TRUE) || (port_priv->m_port_reconfig == OMX_TRUE))
    {
        DEBUG_PRINT_ERROR("[ETB] ERROR: port flushing or reconfig\n");
#if 0
        ret = OMX_ErrorIncorrectStateOperation;
        goto empty_error;
#endif
        pomx_buf->nFilledLen = 0;
        post_event(pcom_priv, (OMX_U32)pomx_buf, VDEC_S_SUCCESS, OMX_GENERATE_EBD);
        return OMX_ErrorNone;
    }

    puser_buf = (struct vdec_user_buf_desc *)pomx_buf->pInputPortPrivate;
    if (!puser_buf)
    {
        DEBUG_PRINT_ERROR("[ETB] ERROR: invalid user buffer!\n");
        ret =  OMX_ErrorUndefined;
        goto empty_error;
    }

    puser_buf->data_len    = pomx_buf->nFilledLen;
    puser_buf->data_offset  = pomx_buf->nOffset;
    puser_buf->timestamp    = (OMX_S64)(pomx_buf->nTimeStamp / 1e3);
    puser_buf->flags        = pomx_buf->nFlags;

    if (channel_submit_stream(&pcom_priv->drv_ctx, puser_buf) < 0)
    {
        /*Generate an async error and move to invalid state*/
        DEBUG_PRINT_ERROR("[ETB] ERROR: submit stream failed\n");
        ret = OMX_ErrorUndefined;
        goto empty_error;
    }

    port_priv->m_buf_pend_cnt++;

    DEBUG_PRINT_STREAM("[ETB] success >>> phyaddr = %x, data_len = %d\n", puser_buf->phyaddr, puser_buf->data_len);

    return OMX_ErrorNone;

empty_error:
    post_event(pcom_priv, (OMX_U32 )pomx_buf, VDEC_S_FAILED, OMX_GENERATE_EBD);

    return ret;
}


static OMX_ERRORTYPE  fill_this_buffer_proxy(OMX_COMPONENT_PRIVATE *pcom_priv, OMX_IN OMX_BUFFERHEADERTYPE* pomx_buf)
{
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_PORT_PRIVATE *port_priv = NULL;
    struct vdec_user_buf_desc *puser_buf = NULL;

    //DEBUG_PRINT("\n[FTB] %s() enter!\n", __func__);
    if (!pcom_priv || !pomx_buf)
    {
        DEBUG_PRINT_ERROR("[FTB] ERROR: bad parameter\n");
        return OMX_ErrorBadParameter;
    }

    port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];

    if ((port_priv->m_port_flushing == OMX_TRUE) || (port_priv->m_port_reconfig == OMX_TRUE))
    {
        DEBUG_PRINT("[FTB] ERROR: port is flushing or reconfig\n");
        pomx_buf->nFilledLen = 0;
        post_event(pcom_priv, (OMX_U32)pomx_buf, VDEC_S_SUCCESS, OMX_GENERATE_FBD);
        return OMX_ErrorNone;
    }

    puser_buf = (struct vdec_user_buf_desc *)pomx_buf->pOutputPortPrivate;
    if (!puser_buf)
    {
        DEBUG_PRINT_ERROR("[FTB] ERROR: invalid user buf\n");
        ret = OMX_ErrorUndefined;
        goto fill_error;
    }

    /* dnr 2d output buffer required 64bytes align, the align data
     *
     */
    if ((OMX_U32)(pomx_buf->nOffset & 0x40) != 0)
    {
        DEBUG_PRINT_ERROR("[FTB] ERROR: buf not aligned\n");
        pomx_buf->nOffset = ALIGN_UP(pomx_buf->nOffset, 0x40);
    }

    puser_buf->data_len    = 0;
    puser_buf->data_offset    = pomx_buf->nOffset;

    //DEBUG_PRINT("[FTB]Proxy: bufferaddr:%p, offset: 0x%lu\n", puser_buf->bufferaddr, puser_buf->data_offset);

    if (channel_submit_frame(&pcom_priv->drv_ctx, puser_buf) < 0)
    {
        DEBUG_PRINT_ERROR("[FTB] ERROR: submit frame failed\n");
        return OMX_ErrorHardware;
    }

    port_priv->m_buf_pend_cnt++;

    DEBUG_PRINT_STREAM("[FTB] success >>> phyaddr = %x, useraddr = %p\n", puser_buf->phyaddr, puser_buf->bufferaddr);

    return OMX_ErrorNone;

fill_error:
    post_event(pcom_priv, (OMX_U32 )pomx_buf, VDEC_S_FAILED, OMX_GENERATE_FBD);

    return ret;
}

/*static void image2frame(frame_img_info *image, HI_UNF_VO_FRAMEINFO_S *pframe)
{
    if ((image->format & 0x3000) != 0)
    {
        pframe->bTopFieldFirst = HI_TRUE;
    }
    else
    {
        pframe->bTopFieldFirst = HI_FALSE;
    }

    if ((image->format & 0x1C000) > 0x1C000)
    {
        pframe->enAspectRatio = HI_UNF_ASPECT_RATIO_UNKNOWN;
    }
    else
    {
        HI_U32 ar  = (image->format & 0x1C000)>>14;


        switch (ar)
        {
            case DAR_4_3:
                pframe->enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
                break;
            case DAR_16_9:
                pframe->enAspectRatio = HI_UNF_ASPECT_RATIO_16TO9;
                break;
            case DAR_221_100:
                pframe->enAspectRatio = HI_UNF_ASPECT_RATIO_221TO1;
                break;
            case DAR_235_100:
                pframe->enAspectRatio = HI_UNF_ASPECT_RATIO_235TO1;
                break;
            case DAR_IMG_SIZE:
                pframe->enAspectRatio = HI_UNF_ASPECT_RATIO_SQUARE;
                break;
            default:
                pframe->enAspectRatio = HI_UNF_ASPECT_RATIO_UNKNOWN;
                break;
        }

    }

    if (1 == image->ImageDnr.s32VcmpEn)
    {
        pframe->u32CompressFlag = 1;
    }
    else
    {
        pframe->u32CompressFlag = 0;
    }

    if(0 == (image->ImageDnr.s32VcmpFrameHeight % 16))
    {
        pframe->s32CompFrameHeight = image->ImageDnr.s32VcmpFrameHeight;
    }
    else
    {
        pframe->s32CompFrameHeight = 0;
    }

    if(0 == (image->ImageDnr.s32VcmpFrameWidth % 16))
    {
        pframe->s32CompFrameWidth = image->ImageDnr.s32VcmpFrameWidth;
    }
    else
    {
        pframe->s32CompFrameWidth = 0;
    }

    switch (image->format & 0x3)
    {
        case 0x0:
            pframe->enFrameType   = HI_UNF_FRAME_TYPE_I;
            break;
        case 0x1:
            pframe->enFrameType   = HI_UNF_FRAME_TYPE_P;
            break;
        case 0x2:
            pframe->enFrameType   = HI_UNF_FRAME_TYPE_B;
            break;
        default :
            pframe->enFrameType   = HI_UNF_FRAME_TYPE_I;
            break;
    }
    switch (image->format & 0xE0)
    {
        case 0x20:
            pframe->enDisplayNorm = HI_UNF_ENC_FMT_PAL;
            break;
        case 0x40:
            pframe->enDisplayNorm   = HI_UNF_ENC_FMT_NTSC;
            break;
        default :
            pframe->enDisplayNorm   = HI_UNF_ENC_FMT_BUTT;
            break;
    }

    switch (image->format & 0x300)
    {
        case 0x0:
            pframe->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
            break;
        case 0x100:
            pframe->enSampleType   = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
            break;
        case 0x200:
            pframe->enSampleType   = HI_UNF_VIDEO_SAMPLE_TYPE_INFERED_PROGRESSIVE;
            break;
        case 0x300:
            pframe->enSampleType   = HI_UNF_VIDEO_SAMPLE_TYPE_INFERED_INTERLACE;
            break;
        default :
            pframe->enSampleType   = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
            break;
    }
    switch (image->format & 0xC00)
    {
        case 0x400:
            pframe->enFieldMode = HI_UNF_VIDEO_FIELD_TOP;
            break;
        case 0x800:
            pframe->enFieldMode   = HI_UNF_VIDEO_FIELD_BOTTOM;
            break;
        case 0xC00:
            pframe->enFieldMode   = HI_UNF_VIDEO_FIELD_ALL;
            break;
        default :
            pframe->enFieldMode   = HI_UNF_VIDEO_FIELD_ALL;
            break;
    }
    memcpy(pframe->u32VdecInfo, &image->optm_inf, sizeof(VDEC_OPTMALG_INFO_S));
    pframe->u32VdecInfo[5] = (HI_U32)image->luma_2d_vir_addr;
    pframe->u32VdecInfo[6] = (HI_U32)image->chrom_2d_vir_addr;
    pframe->u32FrameIndex  = image->image_id;
    pframe->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
    pframe->enVideoCombine = HI_UNF_VIDEO_FRAME_COMBINE_T1B0;
    pframe->u32YAddr = image->top_luma_phy_addr;
    pframe->u32CAddr = image->top_chrom_phy_addr;
    pframe->u32LstYAddr = image->btm_luma_phy_addr - image->image_stride;
    pframe->u32LstYCddr = image->btm_chrom_phy_addr - image->image_stride;
    pframe->u32YStride = image->image_stride;
    pframe->u32CStride = image->image_stride;
    pframe->u32Width = image->image_width;
    pframe->u32Height = image->image_height;
    pframe->u32DisplayWidth   = image->disp_width;
    pframe->u32DisplayHeight  = image->disp_height;
    pframe->u32DisplayCenterX = image->disp_center_x;
    pframe->u32DisplayCenterY = image->disp_center_y;
    pframe->u32ErrorLevel     = image->error_level;
    pframe->u32SeqCnt         = image->seq_cnt;
    pframe->u32SeqFrameCnt    = image->seq_img_cnt;
    pframe->u32SrcPts          = (HI_U32)image->SrcPts;
    pframe->u32Pts          = (HI_U32)image->PTS;
    pframe->u32Repeat       = 1;
    //pframe->enFramePackingType = image->eFramePackingType;


    if (pframe->u32Height <= 288)
    {
        pframe->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
    }
    pframe->stSeqInfo.u32Height = pframe->u32Height;
    pframe->stSeqInfo.u32Width = pframe->u32Width;
    pframe->stSeqInfo.enAspect         = pframe->enAspectRatio;
    pframe->stSeqInfo.enSampleType = pframe->enSampleType;
    pframe->stSeqInfo.u32FrameRate = (image->frame_rate + 512) / 1024;
    //pframe->stSeqInfo.u32BitRate        = tChanState.bit_rate;
    //pframe->stSeqInfo.entype           =   ptChan->tCurCfg.vdecType;
    pframe->stSeqInfo.bIsLowDelay     = HI_FALSE;
    pframe->stSeqInfo.u32VBVBufferSize  = 0;
    pframe->stSeqInfo.u32StreamID       = 0;
    //pframe->stSeqInfo.u32Profile        = tChanState.profile;
    //pframe->stSeqInfo.u32Level          = tChanState.level;
    pframe->stSeqInfo.enVideoFormat    = pframe->enDisplayNorm;
    pframe->stSeqInfo.u32FrameRateExtensionN = image->frame_rate/1000;
    pframe->stSeqInfo.u32FrameRateExtensionD = image->frame_rate%1000;
    memset(&(pframe->stTimeCode), 0 ,sizeof(HI_UNF_VIDEO_TIMECODE_S));

}
*/


static OMX_S8 save_this_frame(OMX_COMPONENT_PRIVATE *pcom_priv, struct vdec_user_buf_desc *puser_buf)
{
    UINT8 *Yaddress;
    UINT8 *Caddress;
    OMX_U8   ret                = 0;
    FILE**   ppstYuvFp          = NULL;
    OMX_U8** ppstChroml         = NULL;
    OMX_U32* pChromlSize        = NULL;
    OMX_VDEC_FRAME_S* pstFrame  = NULL;

    if (NULL == pcom_priv || NULL == puser_buf)
    {
        DEBUG_PRINT_ERROR("%s() INVALID PARAM\n", __func__);
        return -1;
    }

    pstFrame    = &puser_buf->stFrame;
    ppstYuvFp   = (FILE**)(&pcom_priv->drv_ctx.yuv_fp);
    ppstChroml  = &pcom_priv->drv_ctx.chrom_l;
    pChromlSize = (OMX_U32*)(&pcom_priv->drv_ctx.chrom_l_size);

    if (pstFrame->save_yuv == 0)
    {
        if(*ppstYuvFp)
        {
            fclose(*ppstYuvFp);
            *ppstYuvFp = NULL;
        }

        if (*ppstChroml)
        {
            free(*ppstChroml);
            *ppstChroml = pcom_priv->drv_ctx.chrom_l = NULL;
            *pChromlSize  = 0;
        }
        return 0;
    }

    if (NULL == (*ppstYuvFp))
    {
        *ppstYuvFp = fopen(pstFrame->save_path, "w");
        if(!(*ppstYuvFp))
        {
            DEBUG_PRINT_ERROR("%s() open %s file failed\n", __func__, pstFrame->save_path);
            goto error;
        }
    }

    if (NULL == (*ppstChroml))
    {
        *ppstChroml = (OMX_U8 *)malloc(pstFrame->width*pstFrame->height);
        if (!(*ppstChroml))
        {
            DEBUG_PRINT_ERROR("%s() malloc Chroml(%d) failed\n", __func__, pstFrame->width*pstFrame->height);
            goto error1;
        }
        *pChromlSize = pstFrame->width*pstFrame->height;
    }
    else  // 防止变分辨率内存越界// MARK
    {
        if (pstFrame->width*pstFrame->height > *pChromlSize)
        {
            free(*ppstChroml);
            *ppstChroml = pcom_priv->drv_ctx.chrom_l = NULL;
            *pChromlSize = 0;
            *ppstChroml = (OMX_U8 *)malloc(pstFrame->width*pstFrame->height);
            if (!(*ppstChroml))
            {
                DEBUG_PRINT_ERROR("%s() remalloc Chroml(%d) failed\n", __func__, pstFrame->width*pstFrame->height);
                goto error1;
            }
            *pChromlSize = pstFrame->width*pstFrame->height;
        }
    }

    /* start to save this frame */
    Yaddress = puser_buf->bufferaddr;
    Caddress = Yaddress + (pstFrame->phyaddr_C - pstFrame->phyaddr_Y);

    ret = debug_save_yuv(*ppstYuvFp, *ppstChroml, Yaddress, Caddress, pstFrame->width, pstFrame->height, pstFrame->stride);
    if (ret != 0)
    {
        DEBUG_PRINT_ERROR("%s() save this frame failed!\n", __func__);
        goto error2;
    }

    DEBUG_PRINT_ALWS(">> Save one Frame(%dx%d) in %s\n\n", pstFrame->width, pstFrame->height, pstFrame->save_path);

    return 0;

error2:
    free(*ppstChroml);
    *ppstChroml  = pcom_priv->drv_ctx.chrom_l = NULL;
    *pChromlSize = 0;

error1:
    fclose(*ppstYuvFp);
    *ppstYuvFp = NULL;

error:
    return -1;
}


static OMX_S32 message_process (OMX_COMPONENT_PRIVATE  *pcom_priv, void* message)
{
    OMX_U32 i = 0;
    OMX_U32 width = 0, height = 0;

    struct image_size *pimg = NULL;
    struct vdec_msginfo *vdec_msg = NULL;
    struct vdec_user_buf_desc *puser_buf = NULL;

    OMX_PORT_PRIVATE *port_priv = NULL;
    OMX_BUFFERHEADERTYPE *pomx_buf = NULL;

    if (!pcom_priv || !message)
    {
        DEBUG_PRINT_ERROR("[MP] ERROR: invalid param\n");
        return -1;
    }

    vdec_msg = (struct vdec_msginfo *)message;
       switch (vdec_msg->msgcode)
    {
        case VDEC_MSG_RESP_FLUSH_INPUT_DONE:
            post_event(pcom_priv, 0, vdec_msg->status_code, OMX_GENERATE_FLUSH_INPUT_DONE);
            break;

        case VDEC_MSG_RESP_FLUSH_OUTPUT_DONE:
            post_event(pcom_priv, 0, vdec_msg->status_code, OMX_GENERATE_FLUSH_OUTPUT_DONE);
            break;

        case VDEC_MSG_RESP_START_DONE:
            post_event(pcom_priv, 0, vdec_msg->status_code, OMX_GENERATE_START_DONE);
            break;

        case VDEC_MSG_RESP_STOP_DONE:
            post_event(pcom_priv, 0, vdec_msg->status_code, OMX_GENERATE_STOP_DONE);
            break;

        case VDEC_MSG_RESP_PAUSE_DONE:
            post_event(pcom_priv, 0, vdec_msg->status_code, OMX_GENERATE_PAUSE_DONE);
            break;

        case VDEC_MSG_RESP_RESUME_DONE:
            post_event(pcom_priv, 0, vdec_msg->status_code, OMX_GENERATE_RESUME_DONE);
            break;

        case VDEC_MSG_RESP_INPUT_DONE:
            puser_buf = &vdec_msg->msgdata.buf;
            port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
            if (puser_buf->client_data == 0)
            {
                DEBUG_PRINT_ERROR("[MP] ERROR: resp input buffer invalid\n");
                post_event(pcom_priv, 0, VDEC_S_FAILED, OMX_GENERATE_EBD);
                break;
            }

            pomx_buf = (OMX_BUFFERHEADERTYPE *)puser_buf->client_data;
            for (i = 0; i < port_priv->port_pro.max_count; i++)
            {
                if (pomx_buf == port_priv->m_omx_bufhead[i])
                {
                    break;
                }
            }

            if (i >= port_priv->port_pro.max_count)
            {
                DEBUG_PRINT_ERROR("[MP] ERROR: buffers[%p] not found", pomx_buf);
                post_event(pcom_priv, 0, VDEC_S_FAILED, OMX_GENERATE_EBD);
                break;
            }

            DEBUG_PRINT_STREAM("[EBD] post ||| phyaddr = %x, useraddr = %p\n",
                                                         puser_buf->phyaddr, pomx_buf->pBuffer);

            post_event(pcom_priv, (OMX_U32)pomx_buf, VDEC_S_SUCCESS, OMX_GENERATE_EBD);
            break;

        case VDEC_MSG_RESP_OUTPUT_DONE:

            puser_buf = &vdec_msg->msgdata.buf;
            port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
            if (puser_buf->data_len != 0)
            {
                save_this_frame(pcom_priv, puser_buf);
            }

            if (puser_buf->client_data == 0)
            {
                DEBUG_PRINT_ERROR("[MP] ERROR: resp output buffer invalid\n");
                post_event(pcom_priv, 0, VDEC_S_FAILED, OMX_GENERATE_FBD);
                break;
            }

            pomx_buf = (OMX_BUFFERHEADERTYPE *)puser_buf->client_data;

            /* check buffer validate*/
            for (i = 0; i < port_priv->port_pro.max_count; i++)
            {
                if (pomx_buf == port_priv->m_omx_bufhead[i])
                {
                    break;
                }
            }

            if (i >= port_priv->port_pro.max_count)
            {
                DEBUG_PRINT_ERROR("[MP] ERROR: no buffers found for address[%p]", pomx_buf);
                post_event(pcom_priv, 0, VDEC_S_FAILED, OMX_GENERATE_FBD);
                break;
            }

            pomx_buf->nFilledLen = puser_buf->data_len;
            pomx_buf->nFlags     = puser_buf->flags;

            if (puser_buf->timestamp < 0)
            {
                OMX_S64 interval = (OMX_S64)(1e6 / pcom_priv->m_frame_rate);
                pomx_buf->nTimeStamp = pcom_priv->m_pre_timestamp + interval;
                pcom_priv->m_pre_timestamp = pomx_buf->nTimeStamp;
            }
            else
            {
                pomx_buf->nTimeStamp = (OMX_S64)(puser_buf->timestamp * 1e3);
                if (pcom_priv->m_pre_timestamp == pomx_buf->nTimeStamp)
                {
                    pomx_buf->nTimeStamp += 1;
                }
                pcom_priv->m_pre_timestamp = pomx_buf->nTimeStamp;
            }

            DEBUG_PRINT_STREAM("[FBD] post ||| phyaddr = %x, useraddr = %p, data_len = %ld\n",
                                     puser_buf->phyaddr, pomx_buf->pBuffer, pomx_buf->nFilledLen);

            post_event(pcom_priv, (OMX_U32)pomx_buf, VDEC_S_SUCCESS, OMX_GENERATE_FBD);

            if (pomx_buf->nFlags & OMX_BUFFERFLAG_EOS)
            {
                post_event(pcom_priv, 0, 0, OMX_GENERATE_EOS_DONE);
            }
            break;

        case VDEC_EVT_REPORT_IMG_SIZE_CHG:
            pimg = &vdec_msg->msgdata.img_size;
            width = (OMX_U32)pimg->frame_width;
            height = (OMX_U32)pimg->frame_height;

            if (width != pcom_priv->pic_info.frame_width || height != pcom_priv->pic_info.frame_height)
            {
                DEBUG_PRINT("image size changed: old_w: %d, old_h:%d, new_w:%d, new_h:%d\n",
                        (int)pcom_priv->pic_info.frame_width,
                        (int)pcom_priv->pic_info.frame_height,
                        (int)width, (int)height);

                update_picture_info(pcom_priv, width, height);

                post_event(pcom_priv, width, height, OMX_GENERATE_IMAGE_SIZE_CHANGE);
            }
            break;

        case VDEC_EVT_REPORT_HW_ERROR:
            post_event(pcom_priv, 0, vdec_msg->status_code, OMX_GENERATE_HARDWARE_ERROR);
            break;

        default:
            DEBUG_PRINT_ERROR("[MP] ERROR: msg 0x%08x not process\n", vdec_msg->msgcode);
            break;
    }

    return 0;
}


static OMX_PTR message_thread(OMX_PTR input)
{
    OMX_S32 ret = 0;
    struct vdec_msginfo msginfo;
    OMX_COMPONENT_PRIVATE *pcom_priv = (OMX_COMPONENT_PRIVATE *)input;

    DEBUG_PRINT("Message thread start!\n");

    while (!pcom_priv->msg_thread_exit)
    {
        ret = channel_get_msg(&pcom_priv->drv_ctx, &msginfo);
        if (HI_SUCCESS != ret)
        {
            if (EAGAIN == errno)
            {
                DEBUG_PRINT("Get Msg Time Out!\n");
                continue;
            }
            else
            {
                DEBUG_PRINT_WARN("Get Msg ERROR(%d)!\n", errno);
                break;
            }
        }
        message_process(pcom_priv, &msginfo);
    }

    DEBUG_PRINT("Message thread exit!\n");

    return NULL;
}


static OMX_ERRORTYPE generate_command_done(
        OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_U32  param1,
        OMX_U32  param2 )
{
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_PORT_PRIVATE *port_priv = NULL;

    OMX_CHECK_ARG_RETURN(pcom_priv == NULL);
    OMX_CHECK_ARG_RETURN(pcom_priv->m_cb.EventHandler == NULL);

    switch (param1)
    {
        case OMX_CommandStateSet:
            pcom_priv->m_state = (OMX_STATETYPE)param2;
            ret = omx_report_event(pcom_priv, OMX_EventCmdComplete, param1, param2, NULL);
            break;

        case OMX_CommandPortEnable:
            port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
            if (port_priv->m_port_reconfig)
            {
                DEBUG_PRINT("clear flags for port reconfig!\n");
                port_priv->m_port_reconfig = OMX_FALSE;
            }

            ret = omx_report_event(pcom_priv, OMX_EventCmdComplete, param1, param2, NULL);
            break;

        case OMX_CommandPortDisable:
            ret = omx_report_event(pcom_priv, OMX_EventCmdComplete, param1, param2, NULL);
            break;

        case OMX_CommandFlush:
        default:
            DEBUG_PRINT_ERROR("unknown genereate event 0x%ld\n", param1);
            ret = OMX_ErrorUndefined;
            break;
    }

    return ret;
}


static OMX_ERRORTYPE handle_command_state_set(
        OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_STATETYPE state,
        OMX_U32 *sem_posted)
{
    OMX_U32 flag = 1;
    OMX_ERRORTYPE ret = OMX_ErrorNone;

    //DEBUG_PRINT_STATE("[OmxState] Current State %d, Expected State %d\n", pcom_priv->m_state, state);

    /***************************/
    /* Current State is Loaded */
    /***************************/
    if (pcom_priv->m_state == OMX_StateLoaded)
    {
        /*  Loaded to idle */
        if( state == OMX_StateIdle)
        {
            if (channel_create(&pcom_priv->drv_ctx) < 0)
            {
                DEBUG_PRINT_ERROR("[OmxState] ERROR: channel create failed!\n");
                ret = OMX_ErrorHardware;
                goto event_post;
            }


            if (pthread_create(&pcom_priv->msg_thread_id, 0, message_thread, pcom_priv) < 0)
            {
                DEBUG_PRINT_ERROR("[OmxState] ERROR: failed to create msg thread\n");
                ret = OMX_ErrorInsufficientResources;
                goto event_post;
            }

            if (ports_all_full(pcom_priv) ||
                          (pcom_priv->m_port[0].m_port_enabled == OMX_FALSE &&  pcom_priv->m_port[1].m_port_enabled  == OMX_FALSE))
            {
                DEBUG_PRINT_STATE("[OmxState] Loaded --> Idle\n");
            }
            else
            {
                DEBUG_PRINT_STATE("[OmxState] Loaded --> Idle_Pending\n");
                bit_set(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING);
                flag = 0;
            }
        }
        /*  Loaded to Loaded */
        else if (state == OMX_StateLoaded)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Loaded --> Loaded\n");
            ret = OMX_ErrorSameState;
        }
        /*  Loaded to WaitForResources */
        else if (state == OMX_StateWaitForResources)
        {
            DEBUG_PRINT_STATE("[OmxState] Loaded --> WaitForResources\n");
            ret = OMX_ErrorNone;
        }
        /*  Loaded to Executing */
        else if (state == OMX_StateExecuting)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR:Loaded --> Executing\n");
            ret = OMX_ErrorIncorrectStateTransition;
        }
        /*  Loaded to Pause */
        else if (state == OMX_StatePause)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Loaded --> Pause\n");
            ret = OMX_ErrorIncorrectStateTransition;
        }
        /*  Loaded to Invalid */
        else if (state == OMX_StateInvalid)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Loaded --> Invalid\n");
            ret = OMX_ErrorInvalidState;
        }
        else
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Loaded --> %d Not Handled)\n", state);
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
                DEBUG_PRINT_STATE("[OmxState] Idle --> Loaded\n");
                channel_release(&pcom_priv->drv_ctx);
                pcom_priv->msg_thread_exit = OMX_TRUE;
                pthread_join(pcom_priv->msg_thread_id, NULL);
            }
            else
            {
                DEBUG_PRINT_STATE("[OmxState] Idle --> Loaded_Pending\n");
                bit_set(&pcom_priv->m_flags, OMX_STATE_LOADING_PENDING);
                flag = 0;
            }
        }
        /*  Idle to Executing */
        else if (state == OMX_StateExecuting)
        {
            DEBUG_PRINT_STATE("[OmxState] Idle --> Executing_Pending\n");
            if (channel_start(&pcom_priv->drv_ctx) < 0)
            {
                DEBUG_PRINT_ERROR("[OmxState] ERROR: Channel start failed\n");
                ret = OMX_ErrorHardware;
                goto event_post;
            }
            // post event after vdec response.
            bit_set(&pcom_priv->m_flags, OMX_STATE_EXECUTE_PENDING);
            flag = 0;
        }
        /*  Idle to Idle */
        else if (state == OMX_StateIdle)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Idle --> Idle\n");
            ret = OMX_ErrorSameState;
        }
        /*  Idle to WaitForResources */
        else if (state == OMX_StateWaitForResources)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Idle --> WaitForResources\n");
            ret = OMX_ErrorIncorrectStateTransition;
        }
        /*  Idle to Pause */
        else if (state == OMX_StatePause)
        {
            DEBUG_PRINT_STATE("[OmxState] Idle --> Pause\n");
            bit_set(&pcom_priv->m_flags, OMX_STATE_PAUSE_PENDING);
            flag = 0;
        }
        /*  Idle to Invalid */
        else if (state == OMX_StateInvalid)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Idle --> Invalid\n");
            ret = OMX_ErrorInvalidState;
        }
        else
        {
            DEBUG_PRINT_ERROR("[OmxState] ERROR: Idle --> %d Not Handled\n", state);
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
                DEBUG_PRINT_ERROR("[OmxState] ERROR: chan stop failed!\n");
                ret = OMX_ErrorHardware;
                goto event_post;
            }

            DEBUG_PRINT_STATE("[OmxState] Executing --> Idle_Pending\n");
            bit_set(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING);
            flag = 0;

            if (!*sem_posted)
            {
                *sem_posted = 1;
                sem_post(&pcom_priv->m_cmd_lock);
                omx_flush_port(pcom_priv, OMX_ALL);
            }
        }
        /*  Executing to Paused */
        else if (state == OMX_StatePause)
        {
            if (channel_pause(&pcom_priv->drv_ctx) < 0)
            {
                DEBUG_PRINT_ERROR("[OmxState] ERROR: channel_pause failed!\n");
                ret = OMX_ErrorHardware;
                goto event_post;
            }

            DEBUG_PRINT_STATE("[OmxState] Executing --> Pause_Pending\n");
            bit_set(&pcom_priv->m_flags, OMX_STATE_PAUSE_PENDING);
            flag = 0;

        }
        /*  Executing to Loaded */
        else if (state == OMX_StateLoaded)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Executing --> Loaded\n");
            ret = OMX_ErrorIncorrectStateTransition;
        }
        /*  Executing to WaitForResources */
        else if (state == OMX_StateWaitForResources)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Executing --> WaitForResources\n");
            ret = OMX_ErrorIncorrectStateTransition;
        }
        /*  Executing to Executing */
        else if (state == OMX_StateExecuting)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Executing --> Executing\n");
            ret = OMX_ErrorSameState;
        }
        /*  Executing to Invalid */
        else if (state == OMX_StateInvalid)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Executing --> Invalid\n");
            ret = OMX_ErrorInvalidState;
        }
        else
        {
            DEBUG_PRINT_ERROR("[OmxState] ERROR: Executing -->%d Not Handled\n", state);
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
            if (channel_resume(&pcom_priv->drv_ctx) < 0)
            {
                DEBUG_PRINT_STATE("[OmxState] ERROR: channel_resume failed!\n");
                ret = OMX_ErrorHardware;
                goto event_post;
            }

            DEBUG_PRINT_STATE("[OmxState] Pause --> Executing_Pending\n");
            bit_set(&pcom_priv->m_flags, OMX_STATE_EXECUTE_PENDING);
            flag = 0;
        }
        /*  Pause to Idle */
        else if (state == OMX_StateIdle)
        {
            if (channel_stop(&pcom_priv->drv_ctx) < 0)
            {
                DEBUG_PRINT_ERROR("[OmxState] ERROR: channel_stop failed!\n");
                ret = OMX_ErrorHardware;
                goto event_post;
            }

            DEBUG_PRINT_STATE("[OmxState] Pause --> Idle\n");
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
            DEBUG_PRINT_STATE("[OmxState] ERROR: Pause --> Loaded\n");
            ret = OMX_ErrorIncorrectStateTransition;
        }
        /*  Pause to WaitForResources */
        else if (state == OMX_StateWaitForResources)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Pause --> WaitForResources\n");
            ret = OMX_ErrorIncorrectStateTransition;
        }
        /*  Pause to Pause */
        else if (state == OMX_StatePause)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Pause --> Pause\n");
            ret = OMX_ErrorSameState;
        }
        /*  Pause to Invalid */
        else if (state == OMX_StateInvalid)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Pause --> Invalid\n");
            ret = OMX_ErrorInvalidState;
        }
        else
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: Paused -->%d Not Handled\n",state);
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
            DEBUG_PRINT_STATE("[OmxState] WaitForResources --> Loaded\n");
        }
        /*  WaitForResources to WaitForResources */
        else if (state == OMX_StateWaitForResources)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: WaitForResources --> WaitForResources\n");
            ret = OMX_ErrorSameState;
        }
        /*  WaitForResources to Executing */
        else if (state == OMX_StateExecuting)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: WaitForResources --> Executing\n");
            ret = OMX_ErrorIncorrectStateTransition;
        }
        /*  WaitForResources to Pause */
        else if (state == OMX_StatePause)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: WaitForResources --> Pause\n");
            ret = OMX_ErrorIncorrectStateTransition;
        }
        /*  WaitForResources to Invalid */
        else if (state == OMX_StateInvalid)
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: WaitForResources --> Invalid\n");
            ret = OMX_ErrorInvalidState;
        }
        /*  WaitForResources to Loaded -
           is NOT tested by Khronos TS */
        else
        {
            DEBUG_PRINT_STATE("[OmxState] ERROR: %d --> %d(NotHandled)\n", pcom_priv->m_state, state);
            ret = OMX_ErrorBadParameter;
        }
    }
    /********************************/
    /* Current State is Invalid */
    /*******************************/
    else if (pcom_priv->m_state == OMX_StateInvalid)
    {
        /* State Transition from Inavlid to any state */
        DEBUG_PRINT_STATE("[OmxState] ERROR: Invalid -> any \n");
        ret = OMX_ErrorInvalidState;
    }

event_post:
    if (flag)
    {
        if (ret != OMX_ErrorNone)
        {
            omx_report_error(pcom_priv, ret);
        }
        else
        {
            post_event(pcom_priv, OMX_CommandStateSet, state, OMX_GENERATE_COMMAND_DONE);
        }
    }

    return ret;
}


static OMX_ERRORTYPE handle_command_flush(
        OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_U32 port,
        OMX_U32 *sem_posted)
{
    OMX_U32 flag = 1;
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_PORT_PRIVATE *port_priv = NULL;

    if ((port != OMX_ALL) && (port > OUTPUT_PORT_INDEX))
    {
        DEBUG_PRINT_ERROR("[CmdFlush] Error: Invalid Port %d\n", (int)port);
        return OMX_ErrorBadPortIndex;
    }

    if ((INPUT_PORT_INDEX == port) || (OMX_ALL == port))
    {
        bit_set(&pcom_priv->m_flags, OMX_STATE_INPUT_FLUSH_PENDING);
        port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
        port_priv->m_port_flushing = OMX_TRUE;
    }
    if ((OUTPUT_PORT_INDEX == port) || (OMX_ALL == port))
    {
        bit_set(&pcom_priv->m_flags, OMX_STATE_OUTPUT_FLUSH_PENDING);
        port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
        port_priv->m_port_flushing = OMX_TRUE;
    }

    if (channel_flush_port(&pcom_priv->drv_ctx, port) < 0)
    {
        DEBUG_PRINT_ERROR("[CmdFlush] channel_flush_port failed\n");
        ret = OMX_ErrorHardware;
        /*fixme: should clear flushing pending bits?!!*/
        omx_report_error(pcom_priv, ret);
    }

    return ret;
}


static OMX_ERRORTYPE handle_command_port_disable(
        OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_U32 port,
        OMX_U32 *sem_posted)
{
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_PORT_PRIVATE *port_priv = NULL;
    OMX_U32 flag = 1;

    if((port == INPUT_PORT_INDEX) || (port == OMX_ALL))
    {
        port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
        if (port_priv->m_port_enabled)
        {
            port_priv->m_port_enabled = OMX_FALSE;

            if (!port_empty(pcom_priv, INPUT_PORT_INDEX))
            {
                DEBUG_PRINT_STATE("Input Port Disable --> Enable_Pending!\n");
                bit_set(&pcom_priv->m_flags, OMX_STATE_INPUT_DISABLE_PENDING);

                if((pcom_priv->m_state == OMX_StatePause) || (pcom_priv->m_state == OMX_StateExecuting))
                {
                    if(!*sem_posted)
                    {
                        *sem_posted = 1;
                        sem_post(&pcom_priv->m_cmd_lock);
                    }
                    ret = omx_flush_port(pcom_priv, INPUT_PORT_INDEX);
                }
                flag = 0;
            }
        }
        else
        {
            DEBUG_PRINT("input already disabled\n");
            ret = OMX_ErrorNone;
        }

        if ((ret == OMX_ErrorNone) && flag)
        {
            post_event(pcom_priv, OMX_CommandPortDisable, INPUT_PORT_INDEX, OMX_GENERATE_COMMAND_DONE);
        }
    }

    flag = 1;
    if((port == OUTPUT_PORT_INDEX) || (port == OMX_ALL))
    {
        port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
        if (port_priv->m_port_enabled)
        {
            port_priv->m_port_enabled = OMX_FALSE;

            if (!port_empty(pcom_priv, OUTPUT_PORT_INDEX))
            {
                DEBUG_PRINT_STATE("Output Port Enabled --> Disable_Pending\n");

                bit_set(&pcom_priv->m_flags, OMX_STATE_OUTPUT_DISABLE_PENDING);

                if((pcom_priv->m_state == OMX_StatePause) || (pcom_priv->m_state == OMX_StateExecuting))
                {
                    if (!*sem_posted)
                    {
                        *sem_posted = 1;
                        sem_post(&pcom_priv->m_cmd_lock);
                    }
                    ret = omx_flush_port(pcom_priv, OUTPUT_PORT_INDEX);
                }
                flag = 0;
            }
        }
        else
        {
            DEBUG_PRINT("output already disabled\n");
            ret = OMX_ErrorNone;
        }

        if ((ret == OMX_ErrorNone) && flag)
        {
            post_event(pcom_priv, OMX_CommandPortDisable, OUTPUT_PORT_INDEX, OMX_GENERATE_COMMAND_DONE);
        }

    }

    return ret;
}


static OMX_ERRORTYPE handle_command_port_enable(
            OMX_COMPONENT_PRIVATE *pcom_priv,
            OMX_U32 port,
            OMX_U32 *sem_posted)
{
    OMX_U32 flag = 1;
    OMX_PORT_PRIVATE *port_priv = NULL;

    if ((port == INPUT_PORT_INDEX) || (port == OMX_ALL))
    {
        port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
        if (!port_priv->m_port_enabled)
        {
            port_priv->m_port_enabled = OMX_TRUE;

            if (!port_full(pcom_priv, INPUT_PORT_INDEX))
            {
                DEBUG_PRINT_STATE("Input Port Disabled --> Enabled_Pending\n");
                bit_set(&pcom_priv->m_flags, OMX_STATE_INPUT_ENABLE_PENDING);
                flag = 0;
            }
        }
        else
        {
            DEBUG_PRINT("Inport already enabled\n");
        }

        if(flag)
        {
            post_event(pcom_priv, OMX_CommandPortEnable, INPUT_PORT_INDEX, OMX_GENERATE_COMMAND_DONE);
        }
    }

    flag = 1;
    if ((port == OUTPUT_PORT_INDEX) || (port == OMX_ALL))
    {
        port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
        if (!port_priv->m_port_enabled)
        {
            port_priv->m_port_enabled = OMX_TRUE;

            if (!port_full(pcom_priv, OUTPUT_PORT_INDEX))
            {
                DEBUG_PRINT_STATE("Output Port Disabled --> Enabled_Pending\n");
                bit_set(&pcom_priv->m_flags, OMX_STATE_OUTPUT_ENABLE_PENDING);
                flag = 0;
            }
        }
        else
        {
            DEBUG_PRINT("Output port already enabled\n");
        }

        if(flag)
        {
            post_event(pcom_priv, OMX_CommandPortEnable, OUTPUT_PORT_INDEX, OMX_GENERATE_COMMAND_DONE);
        }
    }

    return OMX_ErrorNone;
}


static OMX_ERRORTYPE  send_command_proxy(
        OMX_COMPONENT_PRIVATE *pcom_priv,
        OMX_IN OMX_COMMANDTYPE cmd,
        OMX_IN OMX_U32 param1,
        OMX_IN OMX_PTR cmd_data)
{
    OMX_U32 port;
    OMX_U32 flag = 1, sem_posted = 0;
    OMX_ERRORTYPE ret = OMX_ErrorNone;

    OMX_CHECK_ARG_RETURN(pcom_priv == NULL);

    switch (cmd)
    {
        case OMX_CommandStateSet:
            ret = handle_command_state_set(pcom_priv, (OMX_STATETYPE)param1, &sem_posted);
            break;

        case OMX_CommandFlush:
            ret = handle_command_flush(pcom_priv, param1, &sem_posted);
            break;

        case OMX_CommandPortEnable:
            ret = handle_command_port_enable(pcom_priv, param1, &sem_posted);
            break;

        case OMX_CommandPortDisable:
            ret = handle_command_port_disable(pcom_priv, param1, &sem_posted);
            break;

        default:
            DEBUG_PRINT_ERROR("%s() Error: Invalid Command(%d)\n", __func__, cmd);
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
    OMX_U32  qsize = 0;
    OMX_U32  p1 = 0, p2 = 0, ident = 0;
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_PORT_PRIVATE *port_priv = NULL;

    if (!pcom_priv || (id >= OMX_GENERATE_UNUSED))
    {
        DEBUG_PRINT_ERROR("[EP] ERROR: invalid param!\n");
        return;
    }

    /* process event from cmd/etb/ftb queue */
    pthread_mutex_lock(&pcom_priv->m_lock);

    if ((id == OMX_GENERATE_FTB) || (id == OMX_GENERATE_FBD))
    {
        qsize = get_q_size(&pcom_priv->m_ftb_q);
        if ((qsize == 0))// || (pcom_priv->m_state == OMX_StatePause))
        {
            pthread_mutex_unlock(&pcom_priv->m_lock);
            return;
        }
        pop_entry(&pcom_priv->m_ftb_q, &p1, &p2, &ident);
    }
    else if ((id == OMX_GENERATE_ETB) || (id == OMX_GENERATE_EBD))
    {
        qsize = get_q_size(&pcom_priv->m_etb_q);
        if ((qsize == 0))// || (pcom_priv->m_state == OMX_StatePause))
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
        DEBUG_PRINT_ERROR("[EP] ID not match, id %ld, ident %ld\n", id, ident);
        return;
    }

    /* event process instance */
    switch (id)
       {
        case OMX_GENERATE_COMMAND_DONE:
            ret = generate_command_done(pcom_priv, p1, p2);
            break;

        case OMX_GENERATE_ETB:
            ret = empty_this_buffer_proxy(pcom_priv, (OMX_BUFFERHEADERTYPE *)p1);
            break;

        case OMX_GENERATE_FTB:
            ret = fill_this_buffer_proxy(pcom_priv, (OMX_BUFFERHEADERTYPE *)p1);
            break;

        case OMX_GENERATE_COMMAND:
            ret = send_command_proxy(pcom_priv, (OMX_COMMANDTYPE)p1, (OMX_U32)p2,(OMX_PTR)NULL);
            break;

        case OMX_GENERATE_EBD:
            if (p2 != VDEC_S_SUCCESS)
            {
                DEBUG_PRINT_ERROR("[EP] OMX_GENERATE_EBD failed\n");
                omx_report_error(pcom_priv, OMX_ErrorUndefined);
                break;
            }

            ret = empty_buffer_done(pcom_priv, (OMX_BUFFERHEADERTYPE *)p1);
            if (ret != OMX_ErrorNone)
            {
                DEBUG_PRINT_ERROR("[EP] empty_buffer_done failed\n");
                omx_report_error(pcom_priv, ret);
            }
            break;

        case OMX_GENERATE_FBD:
            if (p2 != VDEC_S_SUCCESS)
            {
                DEBUG_PRINT_ERROR("[FP] OMX_GENERATE_FBD failed\n");
                omx_report_error(pcom_priv, OMX_ErrorUndefined);
                break;
            }

            ret = fill_buffer_done(pcom_priv, (OMX_BUFFERHEADERTYPE *)p1);
            if (ret != OMX_ErrorNone)
            {
                DEBUG_PRINT_ERROR("[FP] fill_buffer_done failed\n");
                omx_report_error (pcom_priv, ret);
            }
            break;

        case OMX_GENERATE_FLUSH_INPUT_DONE:
            port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
            if (!port_priv->m_port_flushing)
            {
                DEBUG_PRINT_WARN("WARNNING: Unexpected flush input done\n");
                break;
            }
            else
            {
                port_priv->m_port_flushing = OMX_FALSE;
            }

            return_inbuffers(pcom_priv);

            if (p2 != VDEC_S_SUCCESS)
            {
                DEBUG_PRINT_ERROR("[EP] input flush failed\n");
                omx_report_error(pcom_priv, OMX_ErrorHardware);
                break;
            }

            /*Check if we need generate event for Flush done*/
            if(bit_present(&pcom_priv->m_flags, OMX_STATE_INPUT_FLUSH_PENDING))
            {
                bit_clear (&pcom_priv->m_flags, OMX_STATE_INPUT_FLUSH_PENDING);
                omx_report_event(pcom_priv, OMX_EventCmdComplete, OMX_CommandFlush, INPUT_PORT_INDEX, NULL);
            }

            port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
            if (!port_priv->m_port_flushing && bit_present(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING))
            {
                DEBUG_PRINT_STATE("[OmxState] Idle_Pending --> Idle\n");
                bit_clear((&pcom_priv->m_flags), OMX_STATE_IDLE_PENDING);
                pcom_priv->m_state = OMX_StateIdle;
                omx_report_event(pcom_priv, OMX_EventCmdComplete, OMX_CommandStateSet, OMX_StateIdle, NULL);
            }
            break;

        case OMX_GENERATE_FLUSH_OUTPUT_DONE:
            port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
            if (!port_priv->m_port_flushing)
            {
                DEBUG_PRINT_WARN("WARNING: Unexpected flush output done\n");
                break;
            }
            else
            {
                port_priv->m_port_flushing = OMX_FALSE;
            }

            return_outbuffers(pcom_priv);

            if (p2 != VDEC_S_SUCCESS)
            {
                DEBUG_PRINT_ERROR("[EP] output flush failed\n");
                omx_report_error(pcom_priv, OMX_ErrorHardware);
                break;
            }

            /*Check if we need generate event for Disable-op/Flush done*/
            if(bit_present(&pcom_priv->m_flags, OMX_STATE_OUTPUT_FLUSH_PENDING))
            {
                bit_clear (&pcom_priv->m_flags, OMX_STATE_OUTPUT_FLUSH_PENDING);
                omx_report_event(pcom_priv, OMX_EventCmdComplete, OMX_CommandFlush, OUTPUT_PORT_INDEX, NULL);
            }

            port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
            if (!port_priv->m_port_flushing && bit_present(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING))
            {
                DEBUG_PRINT_STATE("[OmxState] Idle_Pending --> Idle\n");
                bit_clear((&pcom_priv->m_flags), OMX_STATE_IDLE_PENDING);
                pcom_priv->m_state = OMX_StateIdle;
                omx_report_event(pcom_priv, OMX_EventCmdComplete, OMX_CommandStateSet, OMX_StateIdle, NULL);
            }
            break;

        case OMX_GENERATE_START_DONE:
            if (p2 != VDEC_S_SUCCESS)
            {
                DEBUG_PRINT_ERROR("[EP] OMX_GENERATE_START_DONE failed\n");
                omx_report_error(pcom_priv, OMX_ErrorHardware);
                break;
            }

            if(bit_present(&pcom_priv->m_flags, OMX_STATE_EXECUTE_PENDING))
            {
                DEBUG_PRINT_STATE("[OmxState] Execute_Pending --> Executing\n");
                bit_clear((&pcom_priv->m_flags), OMX_STATE_EXECUTE_PENDING);
                pcom_priv->m_state = OMX_StateExecuting;
                omx_report_event(pcom_priv, OMX_EventCmdComplete, OMX_CommandStateSet, OMX_StateExecuting, NULL);
            }

            if (bit_present(&pcom_priv->m_flags, OMX_STATE_PAUSE_PENDING))
            {
                if (channel_pause(&pcom_priv->drv_ctx) < 0)
                {
                    DEBUG_PRINT_ERROR("[EP] channel_pause failed\n");
                    omx_report_error(pcom_priv, OMX_ErrorHardware);
                }
            }
            break;

        case OMX_GENERATE_PAUSE_DONE:
            if (p2 != VDEC_S_SUCCESS)
            {
                DEBUG_PRINT_ERROR("[EP] OMX_GENERATE_PAUSE_DONE failed\n");
                omx_report_error(pcom_priv, OMX_ErrorHardware);
                break;
            }

            if(bit_present(&pcom_priv->m_flags, OMX_STATE_PAUSE_PENDING))
            {
                bit_clear(&pcom_priv->m_flags, OMX_STATE_PAUSE_PENDING);
                pcom_priv->m_state = OMX_StatePause;
                omx_report_event(pcom_priv, OMX_EventCmdComplete, OMX_CommandStateSet, OMX_StatePause, NULL);
            }
            break;

        case OMX_GENERATE_RESUME_DONE:
            if (p2 != VDEC_S_SUCCESS)
            {
                DEBUG_PRINT_ERROR("[EP] OMX_GENERATE_RESUME_DONE failed\n");
                omx_report_error(pcom_priv, OMX_ErrorHardware);
                break;
            }

            if (bit_present(&pcom_priv->m_flags, OMX_STATE_EXECUTE_PENDING))
            {
                DEBUG_PRINT_STATE("Moving to Executing\n");

                bit_clear((&pcom_priv->m_flags), OMX_STATE_EXECUTE_PENDING);
                pcom_priv->m_state = OMX_StateExecuting;
                omx_report_event(pcom_priv, OMX_EventCmdComplete, OMX_CommandStateSet, OMX_StateExecuting, NULL);
            }
            break;

        case OMX_GENERATE_STOP_DONE:
            if (p2 != VDEC_S_SUCCESS)
            {
                DEBUG_PRINT_ERROR("[EP] OMX_GENERATE_STOP_DONE failed\n");
                omx_report_error(pcom_priv, OMX_ErrorHardware);
                break;
            }

            return_outbuffers(pcom_priv);
            return_inbuffers(pcom_priv);

            if (bit_present(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING)
              && !pcom_priv->m_port[INPUT_PORT_INDEX].m_port_flushing
              && !pcom_priv->m_port[OUTPUT_PORT_INDEX].m_port_flushing)
            {
                DEBUG_PRINT_STATE("[OmxState] Idle_Pending --> Idle\n");
                bit_clear((&pcom_priv->m_flags), OMX_STATE_IDLE_PENDING);
                pcom_priv->m_state = OMX_StateIdle;
                omx_report_event(pcom_priv, OMX_EventCmdComplete, OMX_CommandStateSet, OMX_StateIdle, NULL);
            }
            break;

        case OMX_GENERATE_EOS_DONE:
            omx_report_event(pcom_priv, OMX_EventBufferFlag, OUTPUT_PORT_INDEX, OMX_BUFFERFLAG_EOS, NULL);
            break;

        case OMX_GENERATE_IMAGE_SIZE_CHANGE:
            port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
            /*
             * TODO: for gstreamer, it will not reconfig...comment here, but we need a neat solution.
            port_priv->m_port_reconfig = OMX_TRUE;
             */
            omx_report_event(pcom_priv, OMX_EventPortSettingsChanged, OUTPUT_PORT_INDEX, OMX_IndexParamPortDefinition, NULL);
            break;

        case OMX_GENERATE_HARDWARE_ERROR:
            DEBUG_PRINT_ERROR("[EP] HARDWARE ERROR\n");
            omx_report_error(pcom_priv, OMX_ErrorHardware);
            break;

        default:
            DEBUG_PRINT_ERROR("[EP] default process for msg %ld\n", id);
            break;
    }

}


static OMX_PTR event_thread(OMX_PTR input)
{
        OMX_S8 msg = 0;
        OMX_S16 n = -1, ret = -1;
        OMX_U8 id;
    OMX_COMPONENT_PRIVATE *pcom_priv = (OMX_COMPONENT_PRIVATE *)input;
        //    usleep(50000);

        msg = 1;
        ret = write(pcom_priv->m_async_pipe[1],&msg, 1);
        if (ret < 0)
        {
            usleep(50000);
            close(pcom_priv->m_async_pipe[0]);
            close(pcom_priv->m_async_pipe[1]);
        }

    DEBUG_PRINT("Event thread start!\n");

    while (!pcom_priv->event_thread_exit)
    {
        n = read(pcom_priv->m_pipe_in, &id, 1);

        if (((n < 0) && (errno != EINTR)) || (n == 0))
        {
            DEBUG_PRINT_WARN("read from pipe failed, ret:%d\n", n);
            break;
        }
        else if (n > 1)
        {
            DEBUG_PRINT_ERROR("read more than 1 byte\n");
            continue;
        }

        event_process(pcom_priv, id);
    }

    msg = 1;
    ret = write(pcom_priv->m_async_pipe[1],&msg, 1);
    if (ret < 0)
    {
        close(pcom_priv->m_async_pipe[0]);
        close(pcom_priv->m_async_pipe[1]);
    }

    DEBUG_PRINT("Event thread exit!\n");
    return NULL;
}


static OMX_S32 ports_init(OMX_COMPONENT_PRIVATE *pcom_priv)
{
    OMX_PORT_PRIVATE *in_port = NULL;
    OMX_PORT_PRIVATE *out_port = NULL;
    OMX_S32 result = -1;

    /* init in port private */
    in_port = &pcom_priv->m_port[INPUT_PORT_INDEX];
    in_port->m_omx_bufhead = (OMX_BUFFERHEADERTYPE**)malloc(sizeof(OMX_BUFFERHEADERTYPE*)* MAX_BUF_NUM);
    in_port->m_vdec_bufhead = (struct vdec_user_buf_desc **)malloc(sizeof(struct vdec_user_buf_desc*) * MAX_BUF_NUM);
    if (!in_port->m_omx_bufhead || !in_port->m_vdec_bufhead)
    {
        DEBUG_PRINT_ERROR("No enough memory for in port!\n");
        goto inport_error;
    }

    memset(in_port->m_omx_bufhead, 0, sizeof(OMX_BUFFERHEADERTYPE*)* MAX_BUF_NUM);
    memset(in_port->m_vdec_bufhead, 0, sizeof(struct vdec_user_buf_desc*) * MAX_BUF_NUM);

    in_port->m_port_index                   = INPUT_PORT_INDEX;
    in_port->port_pro.port_dir               = INPUT_PORT_INDEX;

    in_port->m_buf_cnt                = 0;
    in_port->m_buf_pend_cnt            = 0;

    in_port->m_port_enabled            = OMX_TRUE;
    in_port->m_port_populated               = OMX_FALSE;

    in_port->m_port_reconfig               = OMX_FALSE;
    in_port->m_port_flushing               = OMX_FALSE;

    in_port->port_pro.min_count        = DEF_MIN_IN_BUF_CNT;
    in_port->port_pro.max_count        = DEF_MAX_IN_BUF_CNT;
    in_port->port_pro.buffer_size           = (OMX_U32)(1000 << 10);
    in_port->port_pro.alignment               = DEFAULT_ALIGN_SIZE;

    /* init out port private */
    out_port = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
    out_port->m_omx_bufhead = (OMX_BUFFERHEADERTYPE**)malloc(sizeof(OMX_BUFFERHEADERTYPE*)* MAX_BUF_NUM);
    out_port->m_vdec_bufhead = (struct vdec_user_buf_desc **)malloc(sizeof(struct vdec_user_buf_desc*) * MAX_BUF_NUM);
    if (!out_port->m_omx_bufhead || !out_port->m_vdec_bufhead)
    {
        DEBUG_PRINT_ERROR("No enough memory for out port!\n");
        goto outport_error;
    }

    memset(out_port->m_omx_bufhead, 0, sizeof(OMX_BUFFERHEADERTYPE*)* MAX_BUF_NUM);
    memset(out_port->m_vdec_bufhead, 0, sizeof(struct vdec_user_buf_desc*) * MAX_BUF_NUM);

    out_port->m_port_index            = OUTPUT_PORT_INDEX;
    out_port->port_pro.port_dir               = OUTPUT_PORT_INDEX;

    out_port->m_buf_cnt                = 0;
    out_port->m_buf_pend_cnt               = 0;

    out_port->m_port_enabled               = OMX_TRUE;
    out_port->m_port_populated        = OMX_FALSE;

    out_port->m_port_reconfig               = OMX_FALSE;
    out_port->m_port_flushing               = OMX_FALSE;

    out_port->port_pro.min_count           = DEF_MIN_OUT_BUF_CNT;
    out_port->port_pro.max_count           = DEF_MAX_OUT_BUF_CNT;
    out_port->port_pro.buffer_size           = FRAME_SIZE(DEFAULT_FRAME_WIDTH, DEFAULT_FRAME_HEIGHT);
    out_port->port_pro.alignment           = DEFAULT_ALIGN_SIZE;

    return 0;

outport_error:
    free(out_port->m_omx_bufhead);
    free(out_port->m_vdec_bufhead);

inport_error:
    free(in_port->m_omx_bufhead);
    free(in_port->m_vdec_bufhead);

    return result;
}


static void ports_deinit(OMX_COMPONENT_PRIVATE *pcom_priv)
{
    OMX_U32 i;
    for (i=0; i < MAX_PORT_NUM; ++i)
    {
        free(pcom_priv->m_port[i].m_vdec_bufhead);
        free(pcom_priv->m_port[i].m_omx_bufhead);
    }
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
        OMX_IN OMX_HANDLETYPE phandle,
        OMX_OUT OMX_STRING comp_name,
        OMX_OUT OMX_VERSIONTYPE* comp_version,
        OMX_OUT OMX_VERSIONTYPE* spec_version,
        OMX_OUT OMX_UUIDTYPE* componentUUID)
{
    OMX_COMPONENTTYPE *pcomp = NULL;
    OMX_COMPONENT_PRIVATE *pcom_priv = NULL;

    OMX_CHECK_ARG_RETURN(phandle == NULL);

    pcomp = (OMX_COMPONENTTYPE *)phandle;
    pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

    if (pcom_priv->m_state == OMX_StateInvalid)
    {
        DEBUG_PRINT_ERROR("get_component_version: in Invalid State\n");
        return OMX_ErrorInvalidState;
    }

    if (spec_version)
       {
        spec_version->nVersion = OMX_SPEC_VERSION;
       }

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

    pcomp = (OMX_COMPONENTTYPE *)phandle;
    pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

    if(!pcom_priv || pcom_priv->m_state == OMX_StateInvalid)
    {
        DEBUG_PRINT_ERROR("Send Command: in Invalid State\n");
        return OMX_ErrorInvalidState;
    }

    post_event(pcom_priv, (OMX_U32)cmd, (OMX_U32)param1, OMX_GENERATE_COMMAND);

    sem_wait(&pcom_priv->m_cmd_lock);

    return OMX_ErrorNone;
}

static OMX_COLOR_FORMATTYPE convert_omx_to_hal_pixel_fmt(OMX_COLOR_FORMATTYPE omx_format)
{
#ifdef ANDROID
    OMX_U32 hal_format;

    switch (omx_format)
    {
        case OMX_COLOR_FormatYUV420Planar:
            hal_format = HAL_PIXEL_FORMAT_YV12;
            break;
        case OMX_COLOR_FormatYUV420SemiPlanar:
        default:
            hal_format = HAL_PIXEL_FORMAT_YCrCb_420_SP;
            break;
    }

    return hal_format;
#else

    return omx_format;
#endif
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
static OMX_ERRORTYPE  get_parameter(
              OMX_IN OMX_HANDLETYPE phandle,
        OMX_IN OMX_INDEXTYPE param_index,
        OMX_INOUT OMX_PTR param_data)
{
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_COMPONENTTYPE *pcomp = NULL;
    OMX_COMPONENT_PRIVATE *pcomp_priv = NULL;

    OMX_CHECK_ARG_RETURN(phandle == NULL);

    pcomp = (OMX_COMPONENTTYPE *)phandle;
    pcomp_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

    if (!pcomp_priv || (pcomp_priv->m_state == OMX_StateInvalid))
    {
        DEBUG_PRINT_ERROR("get_parameter: in Invalid State\n");
        return OMX_ErrorInvalidState;
    }

    switch (param_index)
    {
        case OMX_IndexParamPortDefinition:
        {
            OMX_PARAM_PORTDEFINITIONTYPE *portDefn = (OMX_PARAM_PORTDEFINITIONTYPE *)param_data;
            OMX_PORT_PRIVATE *port_priv = NULL;

            if (portDefn->nPortIndex > OUTPUT_PORT_INDEX)
            {
                    DEBUG_PRINT_ERROR("OMX_IndexParamPortDefinition: Bad Port Index %d\n", (int)portDefn->nPortIndex);
                    ret = OMX_ErrorBadPortIndex;
            }

            port_priv = &pcomp_priv->m_port[portDefn->nPortIndex];
            portDefn->nVersion.nVersion = OMX_SPEC_VERSION;
            portDefn->nSize = sizeof(portDefn);
            portDefn->eDomain = OMX_PortDomainVideo;
            portDefn->format.video.xFramerate = pcomp_priv->m_frame_rate;
            portDefn->format.video.nFrameHeight = pcomp_priv->pic_info.frame_height;
            portDefn->format.video.nFrameWidth = pcomp_priv->pic_info.frame_width;
            portDefn->format.video.nStride = pcomp_priv->pic_info.stride;
            portDefn->format.video.nSliceHeight = pcomp_priv->pic_info.scan_lines;

            if (INPUT_PORT_INDEX == portDefn->nPortIndex)
            {
               portDefn->eDir = OMX_DirInput;
               portDefn->bEnabled = port_priv->m_port_enabled;
               portDefn->bPopulated = port_priv->m_port_populated;
               portDefn->format.video.eColorFormat = OMX_COLOR_FormatUnused;
               portDefn->format.video.eCompressionFormat = pcomp_priv->m_dec_fmt;
               portDefn->nBufferCountActual = port_priv->port_pro.max_count;
               portDefn->nBufferCountMin = port_priv->port_pro.min_count;
               portDefn->nBufferSize = port_priv->port_pro.buffer_size;
            }
            else if (OUTPUT_PORT_INDEX == portDefn->nPortIndex)
            {
               portDefn->eDir = OMX_DirOutput;
               portDefn->bEnabled = port_priv->m_port_enabled;
               portDefn->bPopulated = port_priv->m_port_populated;
               portDefn->format.video.eColorFormat = convert_omx_to_hal_pixel_fmt(OMX_COLOR_FormatYUV420SemiPlanar);
               portDefn->format.video.eCompressionFormat = OMX_VIDEO_CodingUnused;
               portDefn->nBufferCountActual = port_priv->port_pro.max_count;
               portDefn->nBufferCountMin = port_priv->port_pro.min_count;
               portDefn->nBufferSize = port_priv->port_pro.buffer_size;
            }
            break;
        }

        /*Component come to be a video*/
        case OMX_IndexParamVideoInit:
        {
            OMX_PORT_PARAM_TYPE *portParamType = (OMX_PORT_PARAM_TYPE *) param_data;

            portParamType->nVersion.nVersion = OMX_SPEC_VERSION;
            portParamType->nSize = sizeof(portParamType);
            portParamType->nPorts = 2;
            portParamType->nStartPortNumber = INPUT_PORT_INDEX;
            break;
        }

        case OMX_IndexParamVideoPortFormat:
        {
            OMX_VIDEO_PARAM_PORTFORMATTYPE *portFmt = (OMX_VIDEO_PARAM_PORTFORMATTYPE *)param_data;

            portFmt->nVersion.nVersion = OMX_SPEC_VERSION;
            portFmt->nSize = sizeof(portFmt);

            if (INPUT_PORT_INDEX == portFmt->nPortIndex)
            {
               switch (portFmt->nIndex)
               {
                  case 0:
                    portFmt->eColorFormat = OMX_COLOR_FormatUnused;
                    portFmt->eCompressionFormat = pcomp_priv->m_dec_fmt;
                    break;

                  /*case 1:
                    portFmt->eColorFormat = OMX_COLOR_Format32bitARGB8888;
                    portFmt->eCompressionFormat = OMX_VIDEO_CodingUnused;
                    break;*/

                  default:
                    DEBUG_PRINT("no more input format\n");
                    ret = OMX_ErrorNoMore;
                  break;
              }
            }
            else if (OUTPUT_PORT_INDEX == portFmt->nPortIndex)
            {
                         switch (portFmt->nIndex)
                         {
                             case 0:
                    portFmt->eColorFormat = OMX_COLOR_FormatYUV420SemiPlanar;
                    portFmt->eCompressionFormat = OMX_VIDEO_CodingUnused;
                                break;

                             /*case 1:
                    portFmt->eColorFormat = OMX_COLOR_Format32bitARGB8888;
                    portFmt->eCompressionFormat = OMX_VIDEO_CodingUnused;
                                break;*/

                             default:
                    DEBUG_PRINT("no more output format\n");
                    ret = OMX_ErrorNoMore;
                                break;
                         }

            }
            else
            {
                DEBUG_PRINT_ERROR("OMX_IndexParamVideoPortFormat: Bad Port Index, %d\n", (int)portFmt->nPortIndex);
                ret = OMX_ErrorBadPortIndex;
            }
            break;
        }
#ifdef KHRONOS_1_1
        case OMX_IndexParamStandardComponentRole:
        {
            OMX_PARAM_COMPONENTROLETYPE *comp_role = (OMX_PARAM_COMPONENTROLETYPE *)param_data;

            comp_role->nVersion.nVersion = OMX_SPEC_VERSION;
            comp_role->nSize = sizeof(*comp_role);

            strncpy((OMX_STRING)comp_role->cRole, (OMX_STRING)pcomp_priv->m_role, OMX_MAX_STRINGNAME_SIZE);
            comp_role->cRole[OMX_MAX_STRINGNAME_SIZE-1] = '\0';
            break;
        }
#endif
        case OMX_IndexParamVideoProfileLevelQuerySupported:
        {
            OMX_VIDEO_PARAM_PROFILELEVELTYPE *profileLevelType = (OMX_VIDEO_PARAM_PROFILELEVELTYPE *)param_data;

            profileLevelType->nVersion.nVersion = OMX_SPEC_VERSION;
            profileLevelType->nSize = sizeof(*profileLevelType);

            ret = get_supported_profile_level(pcomp_priv, profileLevelType);
            break;
        }

//#if 1  // native buffer
#ifdef ANDROID
        //extern non-standard index support
        case OMX_HisiIndexChannelAttributes:
        {
            OMX_HISI_PARAM_CHANNELATTRIBUTES *chan_attr = (OMX_HISI_PARAM_CHANNELATTRIBUTES *)param_data;
            vdec_chan_cfg *pchan_cfg = &(pcomp_priv->drv_ctx.drv_cfg.chan_cfg);

            chan_attr->nVersion.nVersion                  = OMX_SPEC_VERSION;
            chan_attr->nSize                                    = sizeof(*chan_attr);

            chan_attr->nErrorThreshold                      = pchan_cfg->s32ChanErrThr;
            chan_attr->nPrior                                    = pchan_cfg->s32ChanPriority;
            chan_attr->nStreamOverflowThreshold      = pchan_cfg->s32ChanStrmOFThr;
            chan_attr->nDecodeMode                         = (OMX_U32)pchan_cfg->s32DecMode;
            chan_attr->nPictureOrder                         = pchan_cfg->s32DecOrderOutput;
            break;
        }

        case OMX_GoogleIndexGetAndroidNativeBufferUsage:
        {
                  struct GetAndroidNativeBufferUsageParams  *pusage = (struct GetAndroidNativeBufferUsageParams *)param_data;

                  pusage->nVersion.nVersion = OMX_SPEC_VERSION;
                  pusage->nSize = sizeof(*pusage);

                  if ((pusage->nPortIndex != OUTPUT_PORT_INDEX) || !pcomp_priv->m_use_native_buf)
                  {
                      DEBUG_PRINT_ERROR("Bad conditions: nPortIndex=%ld, m_use_native_buf=%d\n", pusage->nPortIndex ,pcomp_priv->m_use_native_buf);
                      ret = OMX_ErrorUndefined;
                  }
                  else
                  {
                      pusage->nUsage = GRALLOC_USAGE_HW_RENDER;
                  }

            break;
        }
#endif
        default:
            DEBUG_PRINT_ERROR("get_paramter: unknown param %08x\n", param_index);
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
static OMX_ERRORTYPE  set_parameter(
              OMX_IN OMX_HANDLETYPE phandle,
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
        DEBUG_PRINT_ERROR("set_parameter: pcomp_priv is null\n");
        return OMX_ErrorBadParameter;
    }

    if(pcomp_priv->m_state == OMX_StateInvalid)
    {
        DEBUG_PRINT_ERROR("set_parameter: current state = OMX_StateInvalid\n");
        return OMX_ErrorIncorrectStateOperation;
    }

    switch (param_index)
    {
        case OMX_IndexParamPortDefinition:
        {
            OMX_PARAM_PORTDEFINITIONTYPE *portDefn = (OMX_PARAM_PORTDEFINITIONTYPE *)param_data;
            OMX_PORT_PRIVATE *port_priv = NULL;
                     driver_cfg *drv_cfg  = NULL;
            OMX_U32  buffer_size = 0;

            if (portDefn->nPortIndex > OUTPUT_PORT_INDEX)
            {
                DEBUG_PRINT_ERROR("set_parameter: invalid port index %ld\n", portDefn->nPortIndex);
                return OMX_ErrorBadPortIndex;
            }

            port_priv = &pcomp_priv->m_port[portDefn->nPortIndex];
            if (portDefn->nBufferCountActual < port_priv->port_pro.min_count)
            {
                DEBUG_PRINT_ERROR("set_parameter: setted buf cnt too small! min: %ld\n", port_priv->port_pro.min_count);
                return OMX_ErrorUndefined;
            }

            /*
             * pic w&h config only for output port
             */
            if(portDefn->nPortIndex == OUTPUT_PORT_INDEX)
            {
                drv_cfg = &(pcomp_priv->drv_ctx.drv_cfg);
                drv_cfg->cfg_width   = portDefn->format.video.nFrameWidth;
                drv_cfg->cfg_height  = portDefn->format.video.nFrameHeight;
                ret = update_picture_info(pcomp_priv, drv_cfg->cfg_width, drv_cfg->cfg_height);
                if (ret != OMX_ErrorNone)
                {
                    DEBUG_PRINT_ERROR("set_parameter: update_picture_info failed!\n");
                    return ret;
                }
            }

            if (portDefn->nPortIndex == INPUT_PORT_INDEX)
            {
                OMX_U32 i;

                /*
                 * gstreamer will config codec through OMX_IndexParamPortDefinition
                 */
                for (i = 0; i < COUNTOF(codec_trans_list); i++)
                {
                    if (codec_trans_list[i].compress_fmt == portDefn->format.video.eCompressionFormat)
                        break;
                }

                if (i >= COUNTOF(codec_trans_list))
                {
                    DEBUG_PRINT_ERROR("set_parameter: fmt %d not support\n", portDefn->format.video.eCompressionFormat);
                    ret = OMX_ErrorUnsupportedSetting;
                }
                else
                {
                    strncpy((OMX_STRING)pcomp_priv->m_role, codec_trans_list[i].role_name, OMX_MAX_STRINGNAME_SIZE);
                    pcomp_priv->drv_ctx.decoder_format = codec_trans_list[i].codec_type;
                    pcomp_priv->m_dec_fmt = codec_trans_list[i].compress_fmt;
                }
                port_priv->port_pro.buffer_size = portDefn->nBufferSize;
            }

            port_priv->port_pro.max_count = portDefn->nBufferCountActual;
            port_priv->port_pro.min_count = portDefn->nBufferCountMin;
            break;
        }

        case OMX_IndexParamVideoPortFormat:
        {
            OMX_VIDEO_PARAM_PORTFORMATTYPE *portFmt = (OMX_VIDEO_PARAM_PORTFORMATTYPE *)param_data;

            DEBUG_PRINT("set_param : OMX_IndexParamVideoPortFormat\n");

            if (INPUT_PORT_INDEX == portFmt->nPortIndex)
            {
                OMX_U32 i;
                for (i = 0; i < COUNTOF(codec_trans_list); i++)
                {
                                if (codec_trans_list[i].compress_fmt == portFmt->eCompressionFormat)
                                    break;
                }

                if (i >= COUNTOF(codec_trans_list))
                {
                                DEBUG_PRINT_ERROR("set_parameter: fmt %d not support\n", portFmt->eCompressionFormat);
                                ret = OMX_ErrorUnsupportedSetting;
                }
                else
                {
                                strncpy((OMX_STRING)pcomp_priv->m_role, codec_trans_list[i].role_name, sizeof(pcomp_priv->m_role));
                                pcomp_priv->m_role[sizeof(pcomp_priv->m_role)-1] = '\0';
                                pcomp_priv->drv_ctx.decoder_format = codec_trans_list[i].codec_type;
                                pcomp_priv->m_dec_fmt = codec_trans_list[i].compress_fmt;
                }
            }
            else if (OUTPUT_PORT_INDEX == portFmt->nPortIndex)
            {
                /* now we only support yuv420SemiPlanar */
                           //  将来添加 新增支持格式
                           switch (portFmt->eColorFormat)
                           {
                               case OMX_COLOR_FormatYUV420SemiPlanar:
                                   pcomp_priv->drv_ctx.drv_cfg.color_format = HI_DRV_PIX_FMT_NV12;
                                   break;

                               //case OMX_COLOR_Format32bitARGB8888:
                               //    break;

                               default:
                                   DEBUG_PRINT_ERROR("set_parameter: Set output format unsupport\n");
                                   ret = OMX_ErrorUnsupportedSetting;
                                   break;
                           }
            }
            else
            {
                DEBUG_PRINT_ERROR("set_parameter: Bad port index %d\n",  (int)portFmt->nPortIndex);
                ret = OMX_ErrorBadPortIndex;
            }
            break;
        }

#ifdef KHRONOS_1_1
        case OMX_IndexParamStandardComponentRole:
        {
            OMX_U32 i;
            OMX_PARAM_COMPONENTROLETYPE *comp_role = (OMX_PARAM_COMPONENTROLETYPE *)param_data;

            for (i = 0; i < COUNTOF(codec_trans_list); i++)
            {
                if (!strncmp(codec_trans_list[i].role_name, (OMX_STRING)comp_role->cRole, OMX_MAX_STRINGNAME_SIZE))
                            {
                    break;
                            }
            }

            if (i >= COUNTOF(codec_trans_list))
            {
                DEBUG_PRINT_ERROR("set_parameter: fmt %s not support\n", comp_role->cRole);
                ret = OMX_ErrorUnsupportedSetting;
            }
            else
            {
                strncpy((OMX_STRING)pcomp_priv->m_role, codec_trans_list[i].role_name, sizeof(pcomp_priv->m_role));
                pcomp_priv->m_role[sizeof(pcomp_priv->m_role)-1] = '\0';
                pcomp_priv->drv_ctx.decoder_format = codec_trans_list[i].codec_type;
                pcomp_priv->m_dec_fmt = codec_trans_list[i].compress_fmt;
            }
            break;
        }
#endif

//#if 1  // native buffer
#ifdef ANDROID
        //extern non standard index
        case OMX_HisiIndexChannelAttributes:
        {
            OMX_HISI_PARAM_CHANNELATTRIBUTES *chan_attr = (OMX_HISI_PARAM_CHANNELATTRIBUTES *)param_data;

            vdec_chan_cfg *pchan_cfg = &(pcomp_priv->drv_ctx.drv_cfg.chan_cfg);

            pchan_cfg->s32ChanErrThr = chan_attr->nErrorThreshold;
            pchan_cfg->s32ChanPriority = chan_attr->nPrior;
            pchan_cfg->s32ChanStrmOFThr = chan_attr->nStreamOverflowThreshold;
            pchan_cfg->s32DecMode = (DEC_MODE_E)chan_attr->nDecodeMode;
            pchan_cfg->s32DecOrderOutput = chan_attr->nPictureOrder;
            break;
        }

        case OMX_GoogleIndexEnableAndroidNativeBuffers:
        {
            struct EnableAndroidNativeBuffersParams  *penable = (struct EnableAndroidNativeBuffersParams *)param_data;

            DEBUG_PRINT("set_parameter: OMX_GoogleIndexEnableAndroidNativeBuffer\n");

            if (penable->nPortIndex != OUTPUT_PORT_INDEX)
            {
                DEBUG_PRINT_ERROR("set_parameter: Bad port index %d\n", (int)penable->nPortIndex);
                return OMX_ErrorBadPortIndex;
            }
            pcomp_priv->m_use_native_buf = penable->bEnable;
            break;
        }
#endif
        default:
                  DEBUG_PRINT_ERROR("set_parameter: unknown param 0x%08x\n", param_index);
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
static OMX_ERRORTYPE  get_config(
              OMX_IN OMX_HANDLETYPE   phandle,
        OMX_IN OMX_INDEXTYPE config_index,
        OMX_INOUT OMX_PTR     config_data)
{
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_CONFIG_RECTTYPE *prect = NULL;
    OMX_COMPONENTTYPE *pcomp = NULL;
    OMX_COMPONENT_PRIVATE *pcomp_priv = NULL;

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
            prect = (OMX_CONFIG_RECTTYPE *)config_data;

            if (prect->nPortIndex != OUTPUT_PORT_INDEX)
                     {
                return OMX_ErrorBadPortIndex;
                     }

            prect->nLeft = 0;
            prect->nTop = 0;
            prect->nHeight = pcomp_priv->pic_info.frame_height;
            prect->nWidth = pcomp_priv->pic_info.frame_width;
            break;

        default:
              DEBUG_PRINT_ERROR("get_config: unknown index 0x%08x\n", config_index);
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
static OMX_ERRORTYPE  set_config(
              OMX_IN OMX_HANDLETYPE phandle,
        OMX_IN OMX_INDEXTYPE config_index,
        OMX_IN OMX_PTR config_data)
{
    DEBUG_PRINT_WARN("set_config: not implement now\n");
    return OMX_ErrorUnsupportedSetting;
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
static OMX_ERRORTYPE  get_extension_index(
              OMX_IN OMX_HANDLETYPE phandle,
        OMX_IN OMX_STRING param_name,
        OMX_OUT OMX_INDEXTYPE *pindex_type)
{
    OMX_CHECK_ARG_RETURN(phandle == NULL);
    OMX_CHECK_ARG_RETURN(param_name == NULL);
    OMX_CHECK_ARG_RETURN(pindex_type == NULL);

    if (!strcmp(param_name, "OMX.Hisi.Param.Index.ChannelAttributes"))
    {
        *pindex_type = (OMX_INDEXTYPE)OMX_HisiIndexChannelAttributes;
    }
//#if 1  // native buffer
#ifdef ANDROID
    else if (!strcmp(param_name, "OMX.google.android.index.enableAndroidNativeBuffers"))
    {
        *pindex_type = (OMX_INDEXTYPE)OMX_GoogleIndexEnableAndroidNativeBuffers;
    }
    else if (!strcmp(param_name, "OMX.google.android.index.getAndroidNativeBufferUsage"))
    {
        *pindex_type = (OMX_INDEXTYPE)OMX_GoogleIndexGetAndroidNativeBufferUsage;
    }
    else if (!strcmp(param_name, "OMX.google.android.index.useAndroidNativeBuffer2"))
    {
        *pindex_type = (OMX_INDEXTYPE)OMX_GoogleIndexUseAndroidNativeBuffer2;
    }
#endif
    else
    {
        DEBUG_PRINT_ERROR("get_extension_index: %s not implemented!\n", param_name);
        return OMX_ErrorNotImplemented;
    }

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
static OMX_ERRORTYPE get_state(
              OMX_IN OMX_HANDLETYPE  phandle,
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
    DEBUG_PRINT_WARN("Error: Tunnel mode Not Implemented\n");
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
static OMX_ERRORTYPE  allocate_buffer(
              OMX_IN OMX_HANDLETYPE  phandle,
        OMX_INOUT OMX_BUFFERHEADERTYPE **omx_bufhdr,
        OMX_IN OMX_U32 port,
        OMX_IN OMX_PTR app_data,
        OMX_IN OMX_U32 bytes)
{
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_COMPONENTTYPE *pcomp = NULL;
    OMX_COMPONENT_PRIVATE *pcom_priv = NULL;
    OMX_PORT_PRIVATE *port_priv = NULL;

    OMX_CHECK_ARG_RETURN(phandle == NULL);
    OMX_CHECK_ARG_RETURN(omx_bufhdr == NULL);

    if (port > OUTPUT_PORT_INDEX)
    {
        DEBUG_PRINT_ERROR("[AB] Error: Invalid Port %d\n",(int)port);
        return OMX_ErrorBadPortIndex;
    }

    pcomp      = (OMX_COMPONENTTYPE *)phandle;
    pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

    //state check
    if (!pcom_priv)
    {
        DEBUG_PRINT_ERROR("[AB] ERROR: Invalid State\n");
        return OMX_ErrorBadParameter;
    }

    if((pcom_priv->m_state == OMX_StateIdle) || (pcom_priv->m_state == OMX_StateExecuting) ||
        ((pcom_priv->m_state == OMX_StateLoaded) && bit_present(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING)))
    {
        DEBUG_PRINT("[AB] Cur State %d\n", pcom_priv->m_state);
    }
    else
    {
        DEBUG_PRINT("[AB] Invalid State %d\n", pcom_priv->m_state);
        return OMX_ErrorInvalidState;
    }

    ret = allocate_buffer_internal(pcom_priv, omx_bufhdr, app_data, port, bytes);
    if (ret != OMX_ErrorNone)
    {
        DEBUG_PRINT_ERROR("[AB] ERROR: Allocate Buf failed\n");
        return ret;
    }

    if ((port == INPUT_PORT_INDEX) && port_full(pcom_priv, port))
    {
        port_priv = &pcom_priv->m_port[port];

        if (port_priv->m_port_enabled)
              {
            port_priv->m_port_populated = OMX_TRUE;
              }

        if (bit_present(&pcom_priv->m_flags, OMX_STATE_INPUT_ENABLE_PENDING))
        {
            bit_clear(&pcom_priv->m_flags, OMX_STATE_INPUT_ENABLE_PENDING);
            post_event(pcom_priv, OMX_CommandPortEnable, INPUT_PORT_INDEX, OMX_GENERATE_COMMAND_DONE);
        }
    }

    if ((port == OUTPUT_PORT_INDEX) && port_full(pcom_priv, port))
    {
        port_priv = &pcom_priv->m_port[port];

        if (port_priv->m_port_enabled)
              {
            port_priv->m_port_populated = OMX_TRUE;
              }

        if (bit_present(&pcom_priv->m_flags, OMX_STATE_OUTPUT_ENABLE_PENDING))
        {
            DEBUG_PRINT_STATE("[OmxState] Enable_Pending --> Enable\n");
            bit_clear(&pcom_priv->m_flags, OMX_STATE_OUTPUT_ENABLE_PENDING);
            post_event(pcom_priv, OMX_CommandPortEnable, OUTPUT_PORT_INDEX, OMX_GENERATE_COMMAND_DONE);
        }
    }

    if (ports_all_full(pcom_priv))
    {
        if (bit_present(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING))
        {
            // Send the callback now
            DEBUG_PRINT_STATE("[OmxState] Idle_Pending --> Idle\n");

            bit_clear((&pcom_priv->m_flags), OMX_STATE_IDLE_PENDING);
            post_event(pcom_priv, OMX_CommandStateSet, OMX_StateIdle, OMX_GENERATE_COMMAND_DONE);
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
static OMX_ERRORTYPE  free_buffer(
              OMX_IN OMX_HANDLETYPE phandle,
        OMX_IN OMX_U32 port,
        OMX_IN OMX_BUFFERHEADERTYPE* omx_bufhdr)
{
    OMX_ERRORTYPE ret = OMX_ErrorNone;
    OMX_COMPONENTTYPE *pcomp = NULL;
    OMX_COMPONENT_PRIVATE *pcom_priv = NULL;

    OMX_CHECK_ARG_RETURN(phandle == NULL);
    OMX_CHECK_ARG_RETURN(omx_bufhdr == NULL);

    if (port > OUTPUT_PORT_INDEX)
    {
        DEBUG_PRINT_ERROR("[FB] Error: Invalid Port %d\n",(int)port);
        return OMX_ErrorBadPortIndex;
    }

    pcomp = (OMX_COMPONENTTYPE *)phandle;
    pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

    //state check
    if (!pcom_priv)
    {
        DEBUG_PRINT_ERROR("[FB] ERROR: Invalid State\n");
        return OMX_ErrorBadParameter;
    }

    if((pcom_priv->m_state == OMX_StateLoaded) || (pcom_priv->m_state == OMX_StateExecuting) ||
        ((pcom_priv->m_state == OMX_StateIdle) && bit_present(&pcom_priv->m_flags, OMX_STATE_LOADING_PENDING)))
    {
        DEBUG_PRINT("[FB] Cur State %d\n", pcom_priv->m_state);
    }
    else
    {
        DEBUG_PRINT_ERROR("[FB] Invalid State %d\n", pcom_priv->m_state);
        return OMX_ErrorInvalidState;
    }

    ret = free_buffer_internal(pcom_priv, port, omx_bufhdr);
    if (ret != OMX_ErrorNone)
    {
        DEBUG_PRINT_ERROR("[FB] ERROR: free Buf internal failed\n");
        return ret;
    }

    if((port == INPUT_PORT_INDEX) && port_empty(pcom_priv, port))
    {
        if (bit_present((&pcom_priv->m_flags), OMX_STATE_INPUT_DISABLE_PENDING))
        {
            DEBUG_PRINT_STATE("[OmxState] Disable_Pending --> Disable\n");
            bit_clear((&pcom_priv->m_flags), OMX_STATE_INPUT_DISABLE_PENDING);
            post_event(pcom_priv, OMX_CommandPortDisable, INPUT_PORT_INDEX, OMX_GENERATE_COMMAND_DONE);
        }
    }

    if((port == OUTPUT_PORT_INDEX) && port_empty(pcom_priv, port))
    {

        if (bit_present(&pcom_priv->m_flags, OMX_STATE_OUTPUT_DISABLE_PENDING))
        {
            DEBUG_PRINT_STATE("[OmxState] Disable_Pending --> Disable\n");
            bit_clear((&pcom_priv->m_flags), OMX_STATE_OUTPUT_DISABLE_PENDING);
            post_event(pcom_priv, OMX_CommandPortDisable, OUTPUT_PORT_INDEX, OMX_GENERATE_COMMAND_DONE);
        }
    }

    if(ports_all_empty(pcom_priv))
    {
        if (bit_present(&pcom_priv->m_flags, OMX_STATE_LOADING_PENDING))
        {
            DEBUG_PRINT_STATE("[OmxState] Loaded_Pending --> Loaded\n");
            bit_clear((&pcom_priv->m_flags), OMX_STATE_LOADING_PENDING);
            channel_release(&pcom_priv->drv_ctx);
            pcom_priv->msg_thread_exit = OMX_TRUE;
            pthread_join(pcom_priv->msg_thread_id, NULL);
                     post_event(pcom_priv, OMX_CommandStateSet, OMX_StateLoaded, OMX_GENERATE_COMMAND_DONE);
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

    if (port > OUTPUT_PORT_INDEX)
    {
        DEBUG_PRINT_ERROR("[UB] Error: Invalid Port %d\n",(int)port);
        return OMX_ErrorBadPortIndex;
    }

    pcomp      = (OMX_COMPONENTTYPE *)phandle;
    pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

    //state check
    if (!pcom_priv)
    {
        DEBUG_PRINT_ERROR("[UB] ERROR: Invalid State\n");
        return OMX_ErrorBadParameter;
    }

    if((pcom_priv->m_state == OMX_StateIdle) || (pcom_priv->m_state == OMX_StateExecuting) ||
        ((pcom_priv->m_state == OMX_StateLoaded) && bit_present(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING)))
    {
        DEBUG_PRINT("[UB] Cur State %d\n", pcom_priv->m_state);
    }
    else
    {
        DEBUG_PRINT_ERROR("[UB] Invalid State %d\n", pcom_priv->m_state);
        return OMX_ErrorInvalidState;
    }

//#if 1  // native buffer
#ifdef ANDROID
       if (pcom_priv->m_use_native_buf && OUTPUT_PORT_INDEX == port)
       {
           ret = use_android_native_buffer_internal(pcom_priv, bufferHdr, app_data, port, bytes, buffer);
           if (ret != OMX_ErrorNone)
           {
               DEBUG_PRINT_ERROR("[UB]ERROR: use_buffer_internal failed\n");
               return OMX_ErrorInsufficientResources;
           }
       }
       else
 #endif
       {
           ret = use_buffer_internal(pcom_priv, bufferHdr, app_data, port, bytes, buffer);
           if (ret != OMX_ErrorNone)
           {
               DEBUG_PRINT_ERROR("[UB]ERROR: use_buffer_internal failed\n");
               return OMX_ErrorInsufficientResources;
           }
       }

    if ((port == INPUT_PORT_INDEX) && port_full(pcom_priv, port))
    {
        port_priv = &pcom_priv->m_port[port];

        if (port_priv->m_port_enabled)
              {
            port_priv->m_port_populated = OMX_TRUE;
              }

        if (bit_present(&pcom_priv->m_flags, OMX_STATE_INPUT_ENABLE_PENDING))
        {
            bit_clear(&pcom_priv->m_flags, OMX_STATE_INPUT_ENABLE_PENDING);
            post_event(pcom_priv, OMX_CommandPortEnable, INPUT_PORT_INDEX, OMX_GENERATE_COMMAND_DONE);
        }
    }

    if ((port == OUTPUT_PORT_INDEX) && port_full(pcom_priv, port))
    {
        port_priv = &pcom_priv->m_port[port];

        if (port_priv->m_port_enabled)
              {
            port_priv->m_port_populated = OMX_TRUE;
              }

        if (bit_present(&pcom_priv->m_flags, OMX_STATE_OUTPUT_ENABLE_PENDING))
        {
            DEBUG_PRINT_STATE("[OmxState] Enable_Pending --> Enable\n");
            bit_clear(&pcom_priv->m_flags, OMX_STATE_OUTPUT_ENABLE_PENDING);
            post_event(pcom_priv, OMX_CommandPortEnable, OUTPUT_PORT_INDEX, OMX_GENERATE_COMMAND_DONE);
        }
    }

    if (ports_all_full(pcom_priv))
    {
        if (bit_present(&pcom_priv->m_flags, OMX_STATE_IDLE_PENDING))
        {
            // Send the callback now
            DEBUG_PRINT_STATE("[OmxState] Idle_Pending --> Idle\n");

            bit_clear((&pcom_priv->m_flags), OMX_STATE_IDLE_PENDING);
            post_event(pcom_priv, OMX_CommandStateSet, OMX_StateIdle, OMX_GENERATE_COMMAND_DONE);
        }
    }

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
static OMX_ERRORTYPE  empty_this_buffer(
              OMX_IN OMX_HANDLETYPE phandle,
        OMX_IN OMX_BUFFERHEADERTYPE *buffer)
{
    OMX_U32  i;
    OMX_COMPONENTTYPE *pcomp = NULL;
    OMX_PORT_PRIVATE *port_priv = NULL;
    OMX_COMPONENT_PRIVATE *pcom_priv = NULL;

    OMX_CHECK_ARG_RETURN(phandle == NULL);
    OMX_CHECK_ARG_RETURN(buffer == NULL);

    pcomp = (OMX_COMPONENTTYPE *)phandle;
    pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;
    port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];

    if(pcom_priv->m_state != OMX_StateExecuting)
    {
        DEBUG_PRINT_ERROR("[ETB] ERROR: Invalid State\n");
        return OMX_ErrorInvalidState;
    }

    if (!port_priv->m_port_enabled)
    {
        DEBUG_PRINT_ERROR("[ETB] ERROR: input port disabled.\n");
        return OMX_ErrorIncorrectStateOperation;
    }

    for (i = 0; i < port_priv->port_pro.max_count; i++)
    {
        if (buffer == port_priv->m_omx_bufhead[i])
        {
            break;
        }
    }

    if (i >= port_priv->port_pro.max_count)
    {
        DEBUG_PRINT_ERROR("[ETB] ERROR: no buffers found for address[%p]", buffer);
              return OMX_ErrorBadParameter;
    }

    if (buffer->nInputPortIndex != INPUT_PORT_INDEX)
    {
        DEBUG_PRINT_ERROR("[ETB] ERROR: invalid port \n");
        return OMX_ErrorBadPortIndex;
    }

    //DEBUG_PRINT_STREAM("[ETB]bufhdr = %p, bufhdr->pbuffer = %p", buffer, buffer->pBuffer);
    //DEBUG_PRINT_STREAM(" timestamp=%lld, data_len =%lu\n", buffer->nTimeStamp, buffer->nFilledLen);

    post_event(pcom_priv, (OMX_U32 )buffer, 0, OMX_GENERATE_ETB);
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
static OMX_ERRORTYPE  fill_this_buffer(
              OMX_IN OMX_HANDLETYPE  phandle,
        OMX_IN OMX_BUFFERHEADERTYPE *buffer)
{
    OMX_U32  i;
    OMX_COMPONENTTYPE *pcomp = NULL;
    OMX_PORT_PRIVATE *port_priv = NULL;
    OMX_COMPONENT_PRIVATE *pcom_priv = NULL;

    OMX_CHECK_ARG_RETURN(phandle == NULL);
    OMX_CHECK_ARG_RETURN(buffer == NULL);

    pcomp       = (OMX_COMPONENTTYPE *)phandle;
    pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;
    port_priv   = &pcom_priv->m_port[OUTPUT_PORT_INDEX];

    /* check component state */
    if(pcom_priv->m_state != OMX_StateExecuting)
    {
        DEBUG_PRINT_ERROR("[FTB] ERROR: Invalid State\n");
        return OMX_ErrorInvalidState;
    }

    /* check port state */
    if (!port_priv->m_port_enabled)
    {
        DEBUG_PRINT_ERROR("[FTB] ERROR: output port disabled!\n");
        return OMX_ErrorIncorrectStateOperation;
    }

    /* check buffer validate */
    for (i = 0; i < port_priv->port_pro.max_count; i++)
    {
        if (buffer == port_priv->m_omx_bufhead[i])
        {
            break;
        }
    }

    if (i >= port_priv->port_pro.max_count)
    {
        DEBUG_PRINT_ERROR("[FTB] ERROR: buffers[%p] match failed\n", buffer);
              return OMX_ErrorBadParameter;
    }

    if (buffer->nOutputPortIndex != OUTPUT_PORT_INDEX)
    {
        DEBUG_PRINT_ERROR("[FTB] ERROR: invalid port\n");
        return OMX_ErrorBadParameter;
    }

    DEBUG_PRINT_STREAM("[FTB] bufhdr = %p, bufhdr->pBuffer = %p", buffer, buffer->pBuffer);

    post_event(pcom_priv, (OMX_U32 )buffer, 0, OMX_GENERATE_FTB);

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
static OMX_ERRORTYPE  set_callbacks(
              OMX_IN OMX_HANDLETYPE phandle,
        OMX_IN OMX_CALLBACKTYPE* callbacks,
        OMX_IN OMX_PTR app_data)
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

    pcom_priv->m_cb = *callbacks;
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
        OMX_IN OMX_HANDLETYPE phandle,
        OMX_OUT OMX_U8 *cRole,
        OMX_IN OMX_U32 nIndex)
{
    OMX_CHECK_ARG_RETURN(phandle == NULL);
    OMX_CHECK_ARG_RETURN(cRole == NULL);

    if (nIndex > COUNTOF(codec_trans_list) - 1)
    {
        DEBUG_PRINT_WARN("component_role_enum: no more roles\n");
        return OMX_ErrorNoMore;
    }

    strncpy((OMX_STRING)cRole, codec_trans_list[nIndex].role_name, OMX_MAX_STRINGNAME_SIZE);

    return OMX_ErrorNone;
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
    OMX_U32  i = 0;
    OMX_S8 msg = 0;
    OMX_ERRORTYPE ret_val = OMX_ErrorNone;
    OMX_COMPONENTTYPE *pcomp = NULL;
    OMX_COMPONENT_PRIVATE *pcom_priv = NULL;
    OMX_PORT_PRIVATE *port_priv = NULL;

    OMX_CHECK_ARG_RETURN(phandle == NULL);

    pcomp = (OMX_COMPONENTTYPE *)phandle;
    pcom_priv = (OMX_COMPONENT_PRIVATE *)pcomp->pComponentPrivate;

    if (OMX_StateLoaded != pcom_priv->m_state)
    {
        DEBUG_PRINT_ERROR("OMX not in Loaded state! cur state %d\n", pcom_priv->m_state);
        if(OMX_StateExecuting == pcom_priv->m_state)
        {
            if (channel_stop(&pcom_priv->drv_ctx) < 0)
            {
                DEBUG_PRINT_ERROR("%s: channel_stop failed!\n", __func__);
                return OMX_ErrorHardware;
            }

            ret_val = omx_flush_port(pcom_priv, OMX_ALL);
            if (OMX_ErrorNone != ret_val)
            {
                DEBUG_PRINT_ERROR("%s: omx_flush_port failed!\n", __func__);
                return ret_val;
            }

            if (ports_all_empty(pcom_priv))
            {
                if (channel_release(&pcom_priv->drv_ctx) < 0)
                {
                    DEBUG_PRINT_ERROR("%s: channel_release failed!\n", __func__);
                    return OMX_ErrorHardware;
                }
            }
        }
        else if(OMX_StateIdle == pcom_priv->m_state)
        {
            if (ports_all_empty(pcom_priv))
            {
                if (channel_release(&pcom_priv->drv_ctx) < 0)
                {
                    DEBUG_PRINT_ERROR("%s: channel_release failed!\n", __func__);
                    return OMX_ErrorHardware;
                }
            }
        }
        return OMX_ErrorInvalidState;
    }

    /* Check port is deinit */
    if (!port_empty(pcom_priv, OUTPUT_PORT_INDEX))
    {
        port_priv = &pcom_priv->m_port[OUTPUT_PORT_INDEX];
        for (i = 0; i < port_priv->port_pro.max_count; i++)
        {
            free_buffer_internal(pcom_priv, OUTPUT_PORT_INDEX, port_priv->m_omx_bufhead[i]);
        }
    }

    if (!port_empty(pcom_priv, INPUT_PORT_INDEX))
    {
        port_priv = &pcom_priv->m_port[INPUT_PORT_INDEX];
        for (i = 0; i < port_priv->port_pro.max_count; i++)
        {
            free_buffer_internal(pcom_priv, INPUT_PORT_INDEX, port_priv->m_omx_bufhead[i]);
        }
    }

    vdec_deinit_drv_context(&pcom_priv->drv_ctx);

    ports_deinit(pcom_priv);

    if (!pcom_priv->msg_thread_exit)
    {
        pcom_priv->msg_thread_exit = OMX_TRUE;
        pthread_join(pcom_priv->msg_thread_id, NULL);
    }

    close(pcom_priv->m_pipe_in);
    close(pcom_priv->m_pipe_out);

    if (read(pcom_priv->m_async_pipe[0],&msg,1))
    {
        DEBUG_PRINT_WARN("%s: read from pipe failed\n", __func__);
    }

    if (!pcom_priv->event_thread_exit)
    {
        pcom_priv->event_thread_exit = OMX_TRUE;
        pthread_join(pcom_priv->event_thread_id, NULL);
    }

    pthread_mutex_destroy(&pcom_priv->m_lock);
    sem_destroy(&pcom_priv->m_cmd_lock);
       close(pcom_priv->m_async_pipe[0]);
       close(pcom_priv->m_async_pipe[1]);
       pcom_priv->m_async_pipe[0] = -1;
       pcom_priv->m_async_pipe[1] = -1;

    free(pcom_priv);
    pcomp->pComponentPrivate = NULL;

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
OMX_ERRORTYPE component_init(OMX_HANDLETYPE phandle, OMX_STRING comp_name)
{
    int fds[2];
    OMX_S32 result = -1;
       OMX_S8 msg = 0;
    OMX_ERRORTYPE error = OMX_ErrorNone;
    OMX_COMPONENTTYPE *pcomp = NULL;
    OMX_PORT_PRIVATE *port_priv = NULL;
    OMX_COMPONENT_PRIVATE *pcom_priv = NULL;

    OMX_CHECK_ARG_RETURN(phandle == NULL);

    if (strncmp(comp_name, OMX_VDEC_COMP_NAME, OMX_MAX_STRINGNAME_SIZE) != 0)
    {
        DEBUG_PRINT_ERROR("component_init(): compname %s not match \n", comp_name);
        return OMX_ErrorBadParameter;
    }

    pcomp      = (OMX_COMPONENTTYPE *)phandle;
    pcom_priv = (OMX_COMPONENT_PRIVATE *)malloc(sizeof(OMX_COMPONENT_PRIVATE));
    if (!pcom_priv)
    {
        DEBUG_PRINT_ERROR("component_init(): malloc failed\n");
        return OMX_ErrorInsufficientResources;
    }

    memset(pcom_priv, 0 ,sizeof(OMX_COMPONENT_PRIVATE));

    pcom_priv->m_state                    = OMX_StateInvalid;
    pcom_priv->m_flags                    = 0;
    pcom_priv->event_thread_exit               = OMX_FALSE;
    pcom_priv->msg_thread_exit            = OMX_FALSE;
    pcom_priv->pic_info.frame_width               = DEFAULT_FRAME_WIDTH;
    pcom_priv->pic_info.frame_height           = DEFAULT_FRAME_HEIGHT;
    pcom_priv->pic_info.stride                   = ALIGN_UP(DEFAULT_FRAME_WIDTH, 16);
    pcom_priv->pic_info.scan_lines               = ALIGN_UP(DEFAULT_FRAME_HEIGHT, 16);
    pcom_priv->m_pre_timestamp            = 0;
    pcom_priv->m_frame_rate                = DEFAULT_FPS;
    pcom_priv->m_dec_fmt                = OMX_VIDEO_CodingUnused;

    init_event_queue(&pcom_priv->m_cmd_q);
    init_event_queue(&pcom_priv->m_ftb_q);
    init_event_queue(&pcom_priv->m_etb_q);

    pthread_mutex_init(&pcom_priv->m_lock, NULL);
    sem_init(&pcom_priv->m_cmd_lock, 0, 0);

       result = pipe(pcom_priv->m_async_pipe);
    if (result < 0)
    {
              DEBUG_PRINT_ERROR("component_init() ERROR: failed to create async pipe\n");
        error = OMX_ErrorInsufficientResources;
        goto error_exit0;
    }

    result = pipe(fds);
    if (result < 0)
    {
        DEBUG_PRINT_ERROR("component_init() ERROR: pipe creat failed\n");
        error = OMX_ErrorInsufficientResources;
        goto error_exit1;
    }

    pcom_priv->m_pipe_in    = fds[0];
    pcom_priv->m_pipe_out    = fds[1];

       /* create event theard */
       result = pthread_create(&pcom_priv->event_thread_id, 0, event_thread, pcom_priv);
       if (result < 0)
       {
           DEBUG_PRINT_ERROR("component_init() ERROR: failed to create event thread\n");
           error = OMX_ErrorInsufficientResources;
           goto error_exit0;
       }

    if (read(pcom_priv->m_async_pipe[0],&msg,1) < 0)
    {
        DEBUG_PRINT_WARN("%s: read from pipe failed\n", __func__);
    }

    //update_picture_info(pcom_priv, DEFAULT_FRAME_WIDTH, DEFAULT_FRAME_HEIGHT);
    result = ports_init(pcom_priv);
    if (result < 0)
    {
        DEBUG_PRINT_ERROR("component_init() ERROR: pipe creat failed\n");
        error = OMX_ErrorInsufficientResources;
        goto error_exit2;
    }

    result = vdec_init_drv_context(&pcom_priv->drv_ctx);
    if (result < 0)
       {
        DEBUG_PRINT_ERROR("component_init() ERROR: drv ctx init failed\n");
        error = OMX_ErrorUndefined;
        goto error_exit3;
    }

    /* init component callbacks */
    pcomp->SetCallbacks                = set_callbacks;
    pcomp->GetComponentVersion        = get_component_version;
    pcomp->SendCommand            = send_command;
    pcomp->GetParameter                = get_parameter;
    pcomp->SetParameter                = set_parameter;
    pcomp->GetConfig                       = get_config;
    pcomp->SetConfig                       = set_config;
    pcomp->GetState                    = get_state;
    pcomp->ComponentTunnelRequest    = component_tunnel_request;
    pcomp->UseBuffer                       = use_buffer;
    pcomp->AllocateBuffer                   = allocate_buffer;
    pcomp->FreeBuffer                = free_buffer;
    pcomp->EmptyThisBuffer            = empty_this_buffer;
    pcomp->FillThisBuffer                         = fill_this_buffer;
    pcomp->ComponentDeInit            = component_deinit;
    pcomp->GetExtensionIndex               = get_extension_index;
#ifdef KHRONOS_1_1
    pcomp->ComponentRoleEnum        = component_role_enum;
#endif

    pcomp->pComponentPrivate              = pcom_priv;
    pcom_priv->m_pcomp                      = pcomp;
    pcom_priv->m_state                         = OMX_StateLoaded;

    return OMX_ErrorNone;

error_exit3:
    ports_deinit(pcom_priv);

error_exit2:
    close(pcom_priv->m_pipe_in);
    close(pcom_priv->m_pipe_out);

error_exit1:
    pthread_join(pcom_priv->event_thread_id, NULL);

error_exit0:
    pthread_mutex_destroy(&pcom_priv->m_lock);
    sem_destroy(&pcom_priv->m_cmd_lock);
    free(pcom_priv);
    pcomp->pComponentPrivate = NULL;

    return error;
}



