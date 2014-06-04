#ifndef __OMX_DBG_H__
#define __OMX_DBG_H__

#ifdef ANDROID
#include<utils/Log.h>
#else
#define ALOGD				printf                
#define ALOGE				printf
#endif

#undef  LOG_TAG
#define LOG_TAG				"HIOMX_COMP"


#ifndef ANDROID                      // 为了使linux下pc-linc不报警，所以打开，Android环境下默认不打开
#define DEBUG                 1
#define DEBUG_WARN            1
#define DEBUG_STREAM          1
#else
#define DEBUG                 0
#define DEBUG_WARN            0
#define DEBUG_STREAM          0
#endif
#define DEBUG_STATE            1

#if  (1 == DEBUG)
#define DEBUG_PRINT			       ALOGD
#else
#define DEBUG_PRINT
#endif

#if (1 == DEBUG_WARN)
#define DEBUG_PRINT_WARN		ALOGD
#else
#define DEBUG_PRINT_WARN          
#endif
#if (1 == DEBUG_STREAM)
#define DEBUG_PRINT_STREAM	ALOGD
#else
#define DEBUG_PRINT_STREAM
#endif

#if (1 == DEBUG_STATE)
#define DEBUG_PRINT_STATE         ALOGD
#else
#define DEBUG_PRINT_STATE
#endif

#define DEBUG_PRINT_ERROR         ALOGE

#endif //__OMX_DBG_H__
