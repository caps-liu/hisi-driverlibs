/*=================================================

Open MAX   Component: Video Decoder
This module contains the class definition for openMAX decoder component.
file:	omx_allocator.c
author:   y00226912
date:      16, 03, 2013.

=================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>

#include "omx_dbg.h"
#include "omx_allocator.h"


OMX_S32 alloc_contigous_buffer(OMX_U32 buf_size, OMX_U32 align, struct vdec_user_buf_desc *pvdec_buf)
{
	OMX_S16 ret = -1;
	HI_MMZ_BUF_S buffer;
    struct vdec_user_buf_desc *puser_buf = pvdec_buf;

	if (NULL == puser_buf)
	{
		DEBUG_PRINT_ERROR("%s() invalid param\n", __func__);
		return -1;
	}

	buf_size = (buf_size + align - 1) & ~(align - 1);
	buf_size += 0x40;
	//align = 0;
	buffer.bufsize = buf_size;
       if (0 == puser_buf->dir)
       {
	    strncpy(buffer.bufname, "OMX_VDEC_IN", sizeof(buffer.bufname));
       }
       else
       {
	    strncpy(buffer.bufname, "OMX_VDEC_OUT", sizeof(buffer.bufname));
       }

	ret = HI_MMZ_Malloc(&buffer);
	if(ret < 0)
       {
		DEBUG_PRINT_ERROR("%s() mmz alloc error!\n", __func__);
		return -1;
	}

	//puser_buf->bufferaddr = (unsigned int)(buffer.user_viraddr + 0x3f) & ~(0x3f);
	puser_buf->bufferaddr       = buffer.user_viraddr;
       puser_buf->phyaddr          = buffer.phyaddr;
	puser_buf->buffer_len	= buf_size;
	puser_buf->data_len	       = 0;
	puser_buf->data_offset	= 0;
	puser_buf->timestamp	= 0;
    
	return 0;
}


void free_contigous_buffer(struct vdec_user_buf_desc *puser_buf)
{
	HI_MMZ_BUF_S buffer;
    
	if (NULL == puser_buf)
	{
		DEBUG_PRINT_ERROR("%s() invalid param\n", __func__);
		return;
	}

    buffer.phyaddr = puser_buf->phyaddr;
    buffer.user_viraddr = puser_buf->bufferaddr;
	HI_MMZ_Free(&buffer);
}


