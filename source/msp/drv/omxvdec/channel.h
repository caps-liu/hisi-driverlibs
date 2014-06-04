/*
 * Copyright (c) (2011 - ...) digital media project platform development dept,
 * Hisilicon. All rights reserved.
 *
 * File: channel.h
 *
 * Purpose: vdec omx adaptor layer
 *
 * Author: sunny. liucan
 *
 * Date: 26, Dec, 2011
 *
 */

#ifndef __CHANNEL_H__
#define __CHANNEL_H__

#include <linux/platform_device.h>

#include "drv_vpss_ext.h"
#include "hi_drv_mmz.h"
#include "hi_type.h"
#include "msg.h"

#define MAX_BUFF_NUM			20
#define QUEUE_DEFAULT_DEPTH		50

#define  LAST_FRAME_FLAG_NULL               0
#define  VFMW_REPORT_LAST_FRAME          1
#define  VPSS_GOT_LAST_FRAME_FLAG       2
#define  REPORT_LAST_FRAME_SUCCESS     0            
#define  REPORT_LAST_FRAME_FAIL            1

#define  REALID(id)       (id%100 + 2)

enum chan_state {
	CHAN_STATE_INVALID = 0,
	CHAN_STATE_IDLE,
	CHAN_STATE_WORK,
	CHAN_STATE_PAUSE,
	CHAN_STATE_PAUSE_PENDING,
};

enum vdec_buf_flags {
	BUF_STATE_INVALID = 0,
	BUF_STATE_IDLE,
	BUF_STATE_QUEUED,
	BUF_STATE_USING,
};

struct vdec_buf_s {
    
	struct list_head list;

	HI_VOID __user *user_vaddr;
	HI_VOID  *kern_vaddr;
	HI_U32  phy_addr;

	HI_U32 buf_len;
	HI_U32 act_len;
	HI_U32 offset;
	HI_U32 flags;
	unsigned long status;
	HI_S64 time_stamp;
	HI_U32 buf_id;

	HI_U32 client_data;

	HI_BOOL is_native;
};

struct chan_ctx_s;

struct chan_ops {
    
	HI_S32 (*release)(struct chan_ctx_s *);

	/* chan buffer method */
	HI_S32 (*empty_stream)(struct chan_ctx_s *, struct vdec_user_buf_desc *);
	HI_S32 (*fill_frame)(struct chan_ctx_s *, struct vdec_user_buf_desc *);

	HI_S32 (*bind_buffer)(struct chan_ctx_s *, struct vdec_user_buf_desc *);
	HI_S32 (*unbind_buffer)(struct chan_ctx_s *, struct vdec_user_buf_desc *);

	HI_S32 (*flush_port)(struct chan_ctx_s *, enum vdec_port_dir);

	/* chan control method */
	HI_S32 (*start)(struct chan_ctx_s *);
	HI_S32 (*stop)(struct chan_ctx_s *);
	HI_S32 (*pause)(struct chan_ctx_s *);
	HI_S32 (*resume)(struct chan_ctx_s *);

	/* chan msg capture method */
	HI_S32 (*get_msg)(struct chan_ctx_s *, struct vdec_msginfo *);
	HI_S32 (*stop_msg)(struct chan_ctx_s *);
};

  
struct chan_ctx_s {
    
	struct list_head chan_list;
	spinlock_t chan_lock;

    HI_U32     file_id;
    
	HI_S32     chan_id;
	HI_U32     protocol;
	HI_U32     color_format;

	HI_S32      hVpss;
	HI_S32      hPort;
	HI_BOOL    bPortEnable;

	enum chan_state state;
	//vdec_chan_cfg chan_cfg;
	struct chan_ops *ops;

	HI_U32 out_width;
	HI_U32 out_height;
    
	HI_U32 input_buf_num;
	HI_U32 output_buf_num;
	struct vdec_buf_s input_buf_table[MAX_BUFF_NUM];
	struct vdec_buf_s output_buf_table[MAX_BUFF_NUM];

	msg_queue_s *msg_queue;
	HI_U32            msg_queue_depth;

	spinlock_t raw_lock;
	struct list_head raw_queue;
	HI_U32 raw_use_cnt;
	HI_U32 raw_get_cnt;
	HI_U32 last_get_raw_time;

	spinlock_t yuv_lock;
	struct list_head yuv_queue;
	HI_U32 yuv_use_cnt;

	/* stream/frame ops, urgly used to comm with vfmw */
	STREAM_INTF_S stream_ops;
	IMAGE_INTF_S image_ops;

	HI_U32  input_flush_pending:	1,
		     output_flush_pending:	1,
		     pause_pending:		1,
		     eos_recv_flag:		1,            // end of stream flag
		     eof_send_flag:		1,           // last frame flag
		     recfg_flag:		       1,           // reconfig flag
		     reset_pending:		1,           // reset flag
		     progress:		              1; 

	struct device dev;
	struct vdec_entry *vdec;
	
	struct vdec_buf_s last_frame;
       HI_U32 last_frame_flag[2];     /* 0 (0/1): vfmw 是否上报; 
                                                           1 (0/1/2): vfmw 上报的类型 0 success, 1 fail,  2+ report last frame image id
                                                       */
    
       MMZ_BUFFER_S           LAST_FRAME_Buf;
       MMZ_BUFFER_S           stSCDMMZBuf;
       MMZ_BUFFER_S           stVDHMMZBuf;
};


HI_S32 channel_init(struct file *fd, driver_cfg *pcfg);

HI_S32 channel_handle_framerate_changed(struct chan_ctx_s *pchan, HI_U32 new_framerate);

HI_S32 channel_proc_init (HI_VOID);

HI_VOID channel_proc_exit(HI_VOID);

HI_S32 channel_free_resource(struct chan_ctx_s *pchan);

#endif
