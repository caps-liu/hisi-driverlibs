
/********************************************
NOTICE !!
该文件同时被component 和driver 引用
如修改，两边均需重新编译!!!!

Description: common define used both in component and drivers
Author:       y00226912
Date:          16.03.2013

********************************************/


#ifndef __HISI_VDEC_H__
#define __HISI_VDEC_H__

#include <linux/ioctl.h>

#include "hi_drv_vpss.h"
#include "vfmw.h"
#include "hi_common.h"


#ifndef __user
#define __user
#endif

enum {
	VDEC_S_SUCCESS = 0,
	VDEC_S_FAILED =  1,
};


#define DEFAULT_FRAME_WIDTH	        1920  
#define DEFAULT_FRAME_HEIGHT		1080 

/* vdec msg response types */ 
#define VDEC_MSG_RESP_BASE		    0x10000
#define VDEC_MSG_RESP_OPEN              (VDEC_MSG_RESP_BASE + 0x1)
#define VDEC_MSG_RESP_START_DONE        (VDEC_MSG_RESP_BASE + 0x2)
#define VDEC_MSG_RESP_STOP_DONE		(VDEC_MSG_RESP_BASE + 0x3)
#define VDEC_MSG_RESP_PAUSE_DONE        (VDEC_MSG_RESP_BASE + 0x4)
#define VDEC_MSG_RESP_RESUME_DONE	(VDEC_MSG_RESP_BASE + 0x5)
#define VDEC_MSG_RESP_FLUSH_INPUT_DONE  (VDEC_MSG_RESP_BASE + 0x6)
#define VDEC_MSG_RESP_FLUSH_OUTPUT_DONE (VDEC_MSG_RESP_BASE + 0x7)
#define VDEC_MSG_RESP_INPUT_DONE        (VDEC_MSG_RESP_BASE + 0x8)
#define VDEC_MSG_RESP_OUTPUT_DONE       (VDEC_MSG_RESP_BASE + 0x9)
#define VDEC_MSG_RESP_MSG_STOP_DONE	(VDEC_MSG_RESP_BASE + 0xa)

/* vdec error code types */
#define VDEC_S_ERR_BASE			0x20000
#define VDEC_ERR_FAIL			(VDEC_S_ERR_BASE + 0x01)
#define VDEC_ERR_ALLOC_FAIL		(VDEC_S_ERR_BASE + 0x02)
#define VDEC_ERR_ILLEGAL_OP		(VDEC_S_ERR_BASE + 0x03)
#define VDEC_ERR_ILLEGAL_PARM		(VDEC_S_ERR_BASE + 0x04)
#define VDEC_ERR_BAD_POINTER		(VDEC_S_ERR_BASE + 0x05)
#define VDEC_ERR_BAD_HANDLE		(VDEC_S_ERR_BASE + 0x06)
#define VDEC_ERR_NOT_SUPPORTED		(VDEC_S_ERR_BASE + 0x07)
#define VDEC_ERR_BAD_STATE		(VDEC_S_ERR_BASE + 0x08)
#define VDEC_ERR_BUSY			(VDEC_S_ERR_BASE + 0x09)
#define VDEC_ERR_HW_FATAL		(VDEC_S_ERR_BASE + 0x0a)
#define VDEC_ERR_BITSTREAM_ERR		(VDEC_S_ERR_BASE + 0x0b)
#define VDEC_ERR_QEMPTY			(VDEC_S_ERR_BASE + 0x0c)
#define VDEC_ERR_QFULL			(VDEC_S_ERR_BASE + 0x0d)
#define VDEC_ERR_INPUT_NOT_PROCESSED	(VDEC_S_ERR_BASE + 0x0e)
#define VDEC_ERR_INDEX_NOMORE		(VDEC_S_ERR_BASE + 0x0f)

#define VDEC_EVT_REPORT_BASE		0x30000
#define VDEC_EVT_REPORT_IMG_SIZE_CHG	(VDEC_EVT_REPORT_BASE + 0x1)
#define VDEC_EVT_REPORT_FRAME_RATE_CHG	(VDEC_EVT_REPORT_BASE + 0x2)
#define VDEC_EVT_REPORT_SCAN_TYPE_CHG	(VDEC_EVT_REPORT_BASE + 0x3)
#define VDEC_EVT_REPORT_HW_ERROR	(VDEC_EVT_REPORT_BASE + 0x4)
#define VDEC_EVT_REPORT_CROP_RECT_CHG	(VDEC_EVT_REPORT_BASE + 0x5)

/* buffer flags bits masks. */
#define VDEC_BUFFERFLAG_EOS		      0x00000001
#define VDEC_BUFFERFLAG_STARTTIME     0x00000002
#define VDEC_BUFFERFLAG_DECODEONLY	  0x00000004
#define VDEC_BUFFERFLAG_DATACORRUPT	  0x00000008
#define VDEC_BUFFERFLAG_ENDOFFRAME	  0x00000010
#define VDEC_BUFFERFLAG_SYNCFRAME	  0x00000020
#define VDEC_BUFFERFLAG_EXTRADATA	  0x00000040
#define VDEC_BUFFERFLAG_CODECCONFIG	  0x00000080


#define PATH_LEN                      64

/* ========================================================
 * IOCTL for interaction with omx components
 * ========================================================*/

struct vdec_ioctl_msg {
	int chan_num;
	void __user *in;
	void __user *out;
};

#define VDEC_IOCTL_MAGIC 'v'

#define VDEC_IOCTL_CHAN_CREATE \
	_IOWR(VDEC_IOCTL_MAGIC, 1, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_RELEASE \
	_IOW(VDEC_IOCTL_MAGIC, 2, struct vdec_ioctl_msg)

#define VDEC_IOCTL_SET_EXTRADATA \
	_IOW(VDEC_IOCTL_MAGIC, 3, struct vdec_ioctl_msg)

#define VDEC_IOCTL_GET_EXTRADATA \
	_IOR(VDEC_IOCTL_MAGIC, 4, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_GET_PORT_PRO \
	_IOR(VDEC_IOCTL_MAGIC, 5, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_SET_PORT_PRO \
	_IOW(VDEC_IOCTL_MAGIC, 6, struct vdec_ioctl_msg)

#define VDEC_IOCTL_FLUSH_PORT \
	_IOW(VDEC_IOCTL_MAGIC, 7, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_BIND_BUFFER \
	_IOWR(VDEC_IOCTL_MAGIC, 8, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_UNBIND_BUFFER \
	_IOWR(VDEC_IOCTL_MAGIC, 9, struct vdec_ioctl_msg)

#define VDEC_IOCTL_FILL_OUTPUT_FRAME \
	_IOWR(VDEC_IOCTL_MAGIC, 10, struct vdec_ioctl_msg)

#define VDEC_IOCTL_EMPTY_INPUT_STREAM \
	_IOWR(VDEC_IOCTL_MAGIC, 11, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_START \
	_IOW(VDEC_IOCTL_MAGIC, 12, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_STOP \
	_IOW(VDEC_IOCTL_MAGIC, 13, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_PAUSE \
	_IOW(VDEC_IOCTL_MAGIC, 14, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_RESUME \
	_IOW(VDEC_IOCTL_MAGIC, 15, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_GET_MSG \
	_IOR(VDEC_IOCTL_MAGIC, 16, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_STOP_MSG \
	_IOW(VDEC_IOCTL_MAGIC, 17, struct vdec_ioctl_msg)

#define VDEC_IOCTL_GET_NUMBER_INSTANCES \
	_IOR(VDEC_IOCTL_MAGIC, 18, struct vdec_ioctl_msg)

#define VDEC_IOCTL_SET_PICTURE_ORDER \
	_IOW(VDEC_IOCTL_MAGIC, 19, struct vdec_ioctl_msg)

#define VDEC_IOCTL_SET_FRAME_RATE \
	_IOW(VDEC_IOCTL_MAGIC, 20, struct vdec_ioctl_msg)

#define VDEC_IOCTL_SET_DECODE_MODE \
	_IOW(VDEC_IOCTL_MAGIC, 21, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_SET_PIC_SIZE	\
	_IOW(VDEC_IOCTL_MAGIC, 22, struct vdec_ioctl_msg)

#define VDEC_IOCTL_CHAN_GET_PIC_SIZE	\
	_IOW(VDEC_IOCTL_MAGIC, 23, struct vdec_ioctl_msg)


#define OMXVDEC_NAME	        "hi_omxvdec"
#define DRIVER_PATH         "/dev/hi_omxvdec"

#define OMXTRACE()            printk("fun:%s, line: %d\n", __func__, __LINE__)


typedef  VDEC_CHAN_CFG_S vdec_chan_cfg;

typedef struct vdec_driver_cfg {
    
    HI_U32 cfg_width;
    HI_U32 cfg_height;
    HI_U32 color_format;
	vdec_chan_cfg chan_cfg;
}driver_cfg;

typedef struct vdec_driver_context {

	HI_S32     video_driver_fd;
	HI_S32     chan_handle;

	HI_U32     decoder_format;
	HI_U32     extradata;
    
    driver_cfg drv_cfg;
    
    HI_VOID*   yuv_fp;
    HI_U8*     chrom_l;
    HI_U32     chrom_l_size;
    
}vdec_drv_context;

/* ========================================================
 * vdec internal struct. channel、vdec.eg
 * ========================================================*/

enum vdec_port_dir {
	PORT_DIR_INPUT,
	PORT_DIR_OUTPUT,
	PORT_DIR_BOTH = 0xFFFFFFFF
};


enum vdec_frame_format {
	VDEC_FRAME_PROG,
	VDEC_FIELD_TOP_FIRST,
	VDEC_FIELD_BTM_FIRST
};


enum vdec_output_order {
	VDEC_ORDER_DISPLAY,
	VDEC_ORDER_DECODE 
};


enum vdec_decode_mode {
	VDEC_DECMODE_IPB,
	VDEC_DECMODE_IP,
	VDEC_DECMODE_I
};


union prot_extra {
	struct{
		HI_U32 IsAdvProfile;
		HI_U32 CodecVersion;
	} Vc1Ext;

	struct{
		HI_U32 bReversed;
	} Vp6Ext;
	/*fix me :: add other extra protocol info*/
};


enum vdec_codec_type{
	VDEC_CODECTYPE_H264	= 0x0,
	VDEC_CODECTYPE_VC1	= 0x1,
	VDEC_CODECTYPE_MPEG4	= 0x2,
	VDEC_CODECTYPE_MPEG2	= 0x3,
	VDEC_CODECTYPE_H263	= 0x4,
	VDEC_CODECTYPE_DIVX_3	= 0x5,
	VDEC_CODECTYPE_AVS	= 0x6,
	VDEC_CODECTYPE_JPEG	= 0x7,
	VDEC_CODECTYPE_REAL8	= 0x8,
	VDEC_CODECTYPE_REAL9	= 0x9,
	VDEC_CODECTYPE_VP6	= 0xa,
	VDEC_CODECTYPE_RESERVED
};


/* video frame buffer physical address */
typedef struct hiOMX_VDEC_FRAME_S
{
    HI_U32   phyaddr_Y;
    HI_U32  phyaddr_C;
    HI_U32   stride;

    HI_U32   width;
    HI_U32   height;

    HI_U32   save_yuv;
    HI_CHAR  save_path[PATH_LEN];
    
}OMX_VDEC_FRAME_S;


struct vdec_user_buf_desc {
	HI_VOID __user *bufferaddr;
	HI_U32 phyaddr;
	HI_U32 buffer_len;
	HI_U32 data_offset;
	HI_U32 data_len;
    
	HI_S64 timestamp;
	HI_U32 flags;

	HI_BOOL bNativeBuffer;
	enum vdec_port_dir dir;

	HI_U32 client_data;
       OMX_VDEC_FRAME_S stFrame;
};


struct image_size {
	HI_U32 frame_width;
	HI_U32 frame_height;
};


union vdec_msgdata {
	struct vdec_user_buf_desc buf;
	struct image_size img_size;
};


struct vdec_msginfo {
	HI_U32 status_code;
	HI_U32 msgcode;
	union vdec_msgdata msgdata;
	HI_U32 msgdatasize;
};

#endif /* end of macro _VDECDECODER_H_ */
