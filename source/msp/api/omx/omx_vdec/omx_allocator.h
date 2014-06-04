/*=================================================

Open MAX   Component: Video Decoder
This module contains the class definition for openMAX decoder component.
file:	omx_allocator.h
author:   y00226912
date:      16, 03, 2013.

=================================================*/

#ifndef __OMX_ALLOCATOR_H__
#define	__OMX_ALLOCATOR_H__

#include "hisi_vdec.h"
#include "OMX_Types.h"

OMX_S32 alloc_contigous_buffer(OMX_U32 buf_size, OMX_U32 align, struct vdec_user_buf_desc *puser_buf);
void free_contigous_buffer(struct vdec_user_buf_desc *puser_buf);

#endif
