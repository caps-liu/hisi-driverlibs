/*
 * Copyright (c) (2011 - ...) digital media project platform development dept,
 * Hisilicon. All rights reserved.
 *
 * File: msg.h
 *
 * Purpose: vdec omx adaptor layer
 *
 * Author: sunny. liucan 180788
 *
 * Date: 26, Dec, 2011
 *
 */
#ifndef __MSG_H__
#define __MSG_H__

#include "hisi_vdec.h"

typedef struct msg_data {
	struct list_head list;
	/*msg payload*/
	struct vdec_msginfo msg_info;
} msg_data_s;


typedef struct msg_queue {
	spinlock_t lock;
	wait_queue_head_t wait;

	HI_U8  quit;
	HI_VOID *alloc;
	HI_U32 msg_num;
	HI_U32 stop:1;
	struct list_head head;
	struct list_head free;
} msg_queue_s;


msg_queue_s *msg_queue_init(HI_U32 max_msg_num);

HI_VOID msg_queue_deinit(msg_queue_s *queue);

HI_S32 msg_queue(msg_queue_s *queue, HI_U32 msgcode, HI_U32 status, HI_VOID *priv);

HI_S32 msg_dequeue(msg_queue_s *queue, struct vdec_msginfo *pmsg_info);

#endif