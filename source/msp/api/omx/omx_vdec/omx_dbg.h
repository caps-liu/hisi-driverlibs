#ifndef __OMX_DBG_H__
#define __OMX_DBG_H__

#ifdef ANDROID
#include<utils/Log.h>
#else
#define ALOGD				      printf                
#define ALOGE				      printf
#endif

#undef  LOG_TAG
#define LOG_TAG				      "HIOMX_COMP"

#ifdef ANDROID  
#define DEBUG                     0
#define DEBUG_WARN                0
#define DEBUG_STREAM              0  
#else     
// ENABLE PRINT IN LINUX 
#define PRN_ENABLE                0
#define DEBUG                     PRN_ENABLE
#define DEBUG_WARN                PRN_ENABLE
#define DEBUG_STREAM              PRN_ENABLE
#endif
#define DEBUG_STATE               1

#if  (1 == DEBUG)
#define DEBUG_PRINT               ALOGD
#else
#define DEBUG_PRINT                     
#endif

#if (1 == DEBUG_WARN)
#define DEBUG_PRINT_WARN          ALOGD
#else
#define DEBUG_PRINT_WARN          
#endif

#if (1 == DEBUG_STREAM)
#define DEBUG_PRINT_STREAM        ALOGD
#else
#define DEBUG_PRINT_STREAM       
#endif

#if (1 == DEBUG_STATE)
#define DEBUG_PRINT_STATE         ALOGD
#else
#define DEBUG_PRINT_STATE         
#endif

#define DEBUG_PRINT_ALWS          ALOGD
#define DEBUG_PRINT_ERROR         ALOGE


#endif //__OMX_DBG_H__
