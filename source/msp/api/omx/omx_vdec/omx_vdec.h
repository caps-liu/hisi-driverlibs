
/*========================================================================
Open MAX   Component: Video Decoder
This module contains the class definition for openMAX decoder component.
========================================================================*/

#ifndef __OMX_VDEC_H__
#define __OMX_VDEC_H__

//khrons standard head file
#include "OMX_Component.h"
#include "OMX_Video.h"
#include "OMX_Custom.h"

#include "hisi_vdec.h"
#include "omx_allocator.h"
#include "omx_event_queue.h"
#include "vdec_drv_ctx.h"


//specific-version NO.1.1
#define KHRONOS_1_1
#define OMX_SPEC_VERSION                   (0x00000101)

#define MAX_PORT_NUM                       (2)
#define MAX_BUF_NUM                        (30)

#define DEFAULT_FPS                        (30)
#define DEFAULT_ALIGN_SIZE                 (4096)

#define DEF_MAX_IN_BUF_CNT                 (6)
#define DEF_MIN_IN_BUF_CNT                 (4) //4

#define DEF_MAX_OUT_BUF_CNT                (19) 
#define DEF_MIN_OUT_BUF_CNT                (8)

#define OMX_VDEC_COMP_NAME                 "OMX.hisi.video.decoder"

#define OMX_COMPONENTROLES_H263            "video_decoder.h263"
#define OMX_COMPONENTROLES_H264            "video_decoder.avc"
#define OMX_COMPONENTROLES_MPEG2           "video_decoder.mpeg2"
#define OMX_COMPONENTROLES_MPEG4           "video_decoder.mpeg4"

#define BITS_PER_LONG                      (32)

#define COUNTOF(x)                         (sizeof(x)/sizeof(x[0]))

#define MAX(a, b)                          ((a) > (b) ? (a) : (b))

#define OMX_CHECK_ARG_RETURN(x) \
	if ((x)) \
	{\
	     DEBUG_PRINT_ERROR("[%s]"#x"\n", __func__);\
	     return OMX_ErrorBadParameter;\
	}

#define ALIGN_UP(val, align)               (((val) + ((align)-1)) & ~((align)-1))

#define FRAME_SIZE(w, h)                   (((w) * (h) * 3) / 2)


// state transactions pending bits
enum flags_bit_positions{

	OMX_STATE_IDLE_PENDING				= 0x1,
	OMX_STATE_LOADING_PENDING			= 0x2,
	OMX_STATE_INPUT_ENABLE_PENDING		= 0x3,
	OMX_STATE_OUTPUT_ENABLE_PENDING	    = 0x4,
	OMX_STATE_OUTPUT_DISABLE_PENDING    = 0x5,
	OMX_STATE_INPUT_DISABLE_PENDING	    = 0x6,
	OMX_STATE_OUTPUT_FLUSH_PENDING		= 0x7,
	OMX_STATE_INPUT_FLUSH_PENDING		= 0x8,
	OMX_STATE_PAUSE_PENDING				= 0x9,
	OMX_STATE_EXECUTE_PENDING			= 0xA,
	
};

// Deferred callback identifiers
enum {

	OMX_GENERATE_COMMAND_DONE			= 0x1,
	OMX_GENERATE_FTB					= 0x2,
	OMX_GENERATE_ETB					= 0x3,
	OMX_GENERATE_COMMAND				= 0x4,
	OMX_GENERATE_EBD					= 0x5,
	OMX_GENERATE_FBD					= 0x6,
	OMX_GENERATE_FLUSH_INPUT_DONE		= 0x7,
	OMX_GENERATE_FLUSH_OUTPUT_DONE	    = 0x8,
	OMX_GENERATE_START_DONE				= 0x9,
	OMX_GENERATE_PAUSE_DONE				= 0xA,
	OMX_GENERATE_RESUME_DONE			= 0xB,
	OMX_GENERATE_STOP_DONE				= 0xC,
	OMX_GENERATE_EOS_DONE				= 0xD,
	OMX_GENERATE_HARDWARE_ERROR		    = 0xE,
	OMX_GENERATE_IMAGE_SIZE_CHANGE		= 0xF,
	OMX_GENERATE_UNUSED					= 0x10,
	
};

enum {
    
	INPUT_PORT_INDEX	= 0,
	OUTPUT_PORT_INDEX	= 1,
	
};

struct port_property {
    
	OMX_U32 port_dir;
	OMX_U32 min_count;
	OMX_U32 max_count;
	OMX_U32 buffer_size;
	OMX_U32 alignment;
    
};

struct omx_hisi_extern_index{
    
	OMX_S8 index_name[OMX_MAX_STRINGNAME_SIZE];
	OMX_HISI_EXTERN_INDEXTYPE index_type;
    
};

struct codec_info {
    
       const OMX_STRING role_name;
       OMX_VIDEO_CODINGTYPE compress_fmt;
	enum vdec_codec_type codec_type;
    
};

struct codec_profile_level{
    
	OMX_S32 profile;
	OMX_S32 level;
    
};

struct frame_info {
    
	OMX_U32 frame_width;
	OMX_U32 frame_height;
	OMX_U32 stride;
	OMX_U32 scan_lines;
};

// port private for omx
typedef struct OMX_PORT_PRIVATE {

	OMX_BUFFERHEADERTYPE **m_omx_bufhead;
	struct port_property port_pro;

	OMX_U32	m_port_index;
	OMX_U32 m_buf_cnt;

	OMX_U32 m_alloc_bitmap;
	OMX_U32 m_native_bitmap;
	OMX_U32	m_buf_pend_cnt;

	OMX_BOOL m_port_enabled;
	OMX_BOOL m_port_populated;

	OMX_BOOL m_port_reconfig;
	OMX_BOOL m_port_flushing;
	struct vdec_user_buf_desc **m_vdec_bufhead;
    
} OMX_PORT_PRIVATE;

//component private for omx
typedef struct OMX_COMPONENT_PRIVATE {

	pthread_mutex_t m_lock;
	OMX_COMPONENTTYPE *m_pcomp;
	OMX_STATETYPE m_state;
	OMX_U32 m_flags;

	OMX_VIDEO_CODINGTYPE m_dec_fmt;
	OMX_U8 m_role[OMX_MAX_STRINGNAME_SIZE];

	OMX_PTR m_app_data;
	OMX_CALLBACKTYPE m_cb;

	OMX_U32 m_frame_rate;
	OMX_TICKS m_pre_timestamp;

	OMX_PORT_PRIVATE m_port[MAX_PORT_NUM];
	OMX_BOOL m_use_native_buf;

	pthread_t msg_thread_id;
	pthread_t event_thread_id;

	OMX_BOOL event_thread_exit;
	OMX_BOOL msg_thread_exit;

	vdec_drv_context drv_ctx;
	struct frame_info pic_info;

	int m_pipe_in;
	int m_pipe_out;

	sem_t m_cmd_lock;

       int m_async_pipe[2];

	omx_event_queue m_ftb_q;
	omx_event_queue m_cmd_q;
	omx_event_queue m_etb_q;
    
}OMX_COMPONENT_PRIVATE;

/*========================= bit operation functions =================================*/ 
static inline void bit_set(OMX_U32 *addr, OMX_U32 nr)
{
	addr[nr / BITS_PER_LONG] |= (1 << (nr % BITS_PER_LONG));
}

static inline void bit_clear(OMX_U32 *addr, OMX_U32 nr)
{
	addr[nr / BITS_PER_LONG] &= ~((OMX_U32)(1 << (nr % BITS_PER_LONG)));
}

static inline OMX_S32 bit_present(const OMX_U32 *addr, OMX_U32 nr)
{
	return ((1 << (nr % BITS_PER_LONG)) & (((OMX_U32 *)addr)[nr / BITS_PER_LONG])) != 0;
}

static inline OMX_S32 bit_absent(const OMX_U32 *addr, OMX_U32 nr)
{
	return !bit_present(addr, nr);
}


#endif // __OMX_VDEC_H__
