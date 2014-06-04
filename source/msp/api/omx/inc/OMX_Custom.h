/*========================================================================
Open MAX   Component: Video Decoder
This module contains the class definition for openMAX decoder component.
author: liucan l00180788
==========================================================================*/
#ifndef __OMX_CUSTOM_H__
#define __OMX_CUSTOM_H__

#include <OMX_Component.h>
#include <OMX_Index.h>

typedef enum OMX_HISI_EXTERN_INDEXTYPE {
	OMX_HisiIndexChannelAttributes = (OMX_IndexVendorStartUnused + 1),
	OMX_GoogleIndexEnableAndroidNativeBuffers,
	OMX_GoogleIndexGetAndroidNativeBufferUsage,
	OMX_GoogleIndexUseAndroidNativeBuffer,
	OMX_GoogleIndexUseAndroidNativeBuffer2
}OMX_HISI_EXTERN_INDEXTYPE;


/**
* A pointer to this struct is passed to the OMX_SetParameter when the extension
* index for the 'OMX.Hisi.Index.ChannelAttributes' extension
* is given.
* The corresponding extension Index is OMX_HisiIndexChannelAttributes.
*/
typedef struct OMX_HISI_PARAM_CHANNELATTRIBUTES  {
    OMX_U32 nSize;
    OMX_VERSIONTYPE nVersion;
    OMX_U32 nPrior;
    OMX_U32 nErrorThreshold;
    OMX_U32 nStreamOverflowThreshold;
    OMX_U32 nDecodeMode;
    OMX_U32 nPictureOrder;
}  OMX_HISI_PARAM_CHANNELATTRIBUTES;

//#if 1  // native buffer
#ifdef ANDROID // native buffer
/**
* A pointer to this struct is passed to the OMX_SetParameter when the extension
* index for the 'OMX.google.android.index.enableAndroidNativeBuffers' extension
* is given.
* The corresponding extension Index is OMX_GoogleIndexUseAndroidNativeBuffer.
* This will be used to inform OMX about the presence of gralloc pointers
instead
* of virtual pointers
*/
typedef struct EnableAndroidNativeBuffersParams  {
    OMX_U32 nSize;
    OMX_VERSIONTYPE nVersion;
    OMX_U32 nPortIndex;
    OMX_BOOL bEnable;
} EnableAndroidNativeBuffersParams;

/**
* A pointer to this struct is passed to OMX_GetParameter when the extension
* index for the 'OMX.google.android.index.getAndroidNativeBufferUsage'
* extension is given.
* The corresponding extension Index is OMX_GoogleIndexGetAndroidNativeBufferUsage.
* The usage bits returned from this query will be used to allocate the Gralloc
* buffers that get passed to the useAndroidNativeBuffer command.
*/
typedef struct GetAndroidNativeBufferUsageParams  {
    OMX_U32 nSize;
    OMX_VERSIONTYPE nVersion;
    OMX_U32 nPortIndex;
    OMX_U32 nUsage;
} GetAndroidNativeBufferUsageParams;

#if 0  // native buffer
typedef struct private_handle_t{
    
    unsigned long ion_phy_addr; 
}private_handle_t;
#endif

#endif

#endif //__OMX_CUSTOM_H__
