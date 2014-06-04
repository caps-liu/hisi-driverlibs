/**
\file
\brief unf of sound 
\copyright Shenzhen Hisilicon Co., Ltd.
\date 2008-2018
\version draft
\author QuYaxin 46153
\date 2009-12-21
*/
//#include "hi_type.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

#include "hi_error_mpi.h"
#include "hi_unf_sound.h"
//#include "hi_mpi_avplay.h"

#include "hi_mpi_ao.h"

#include "hi_drv_ao.h"
#include "hi_mpi_avplay.h"

/***************************** Macro Definition ******************************/
#define HI_UNF_SND_PORT_MAST  (0)
#define HI_UNF_SND_PORT_SLAVE (1)


#define API_SND_CheckNULLPtr(ptr) do{\
        if (NULL == ptr)\
        {\
            HI_ERR_AO("PTR is NULL!\n");\
            return HI_ERR_AO_NULL_PTR;\
        }\
    }while(0)
    
#define API_SND_CheckId(u32SndId) do{\
        if (HI_UNF_SND_BUTT <= u32SndId)\
        {\
            HI_ERR_AO("Sound ID(%#x) is Invalid!\n", u32SndId);\
            return HI_ERR_AO_INVALID_ID;\
        }\
    }while(0)

#define API_SND_CheckInterface(enInterface) do{\
        if (enInterface >= HI_UNF_SND_INTERFACE_BUTT) \
    	{ \
    		HI_ERR_AO("intf(%d) is invalid\n", enInterface); \
    		return HI_ERR_AO_INVALID_PARA; \
    	}\
	}while(0)


/*************************** Structure Definition ****************************/
typedef struct hiAPI_SND_COMM_S
{
    HI_BOOL              bCreate;      
} API_SND_COMM_S;

/******************************* API declaration *****************************/
HI_S32 HI_UNF_SND_Init(HI_VOID)
{
    return HI_MPI_AO_Init();
}

HI_S32 HI_UNF_SND_DeInit(HI_VOID)
{
    return HI_MPI_AO_DeInit();
}

HI_S32   HI_UNF_SND_SendTrackData(HI_HANDLE hTrack, const HI_UNF_AO_FRAMEINFO_S *pstAOFrame)
{
    HI_S32 Ret;

    API_SND_CheckNULLPtr(pstAOFrame);

    HI_MPI_AO_Track_Start(hTrack); //verify
    Ret = HI_MPI_AO_Track_SendData(hTrack, pstAOFrame);
    if(Ret == HI_ERR_AO_OUT_BUF_FULL)
    {
    	return Ret;
    }
    else if (Ret != HI_SUCCESS)
    {
        return HI_ERR_AO_INVALID_PARA;
    }
    return HI_SUCCESS;
}

HI_S32 HI_UNF_SND_GetDefaultOpenAttr(HI_UNF_SND_E enSound, HI_UNF_SND_ATTR_S *pstAttr)
{
    HI_S32 s32Ret;
    API_SND_CheckId(enSound);
    s32Ret = HI_MPI_AO_SND_GetDefaultOpenAttr(pstAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_AO("HI_UNF_SND_GetDefaultOpenAttr Failed:%#x.\n", s32Ret);
        return s32Ret;
    }
    return HI_SUCCESS;
}

HI_S32 HI_UNF_SND_Open(HI_UNF_SND_E enSound, const HI_UNF_SND_ATTR_S *pstAttr)
{
    HI_S32 ret;

    API_SND_CheckId(enSound);

    ret = HI_MPI_AO_SND_Open(enSound, pstAttr);
    if (HI_SUCCESS != ret)
    {
        HI_WARN_AO("HIAO_OPEN Failed:%#x.\n", ret);
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_SND_Close(HI_UNF_SND_E enSound)
{
    HI_S32 ret;
    API_SND_CheckId(enSound);
    
    ret = HI_MPI_AO_SND_Close(enSound);
    
    return ret;
}

HI_S32  HI_UNF_SND_SetMute(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bMute)

{
    HI_S32 ret;
    
    API_SND_CheckId(enSound);

	ret = HI_MPI_AO_SND_SetMute(enSound, enOutPort, bMute);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_AO("set AO mute failed, ERR:%#x\n", ret);
        return ret;
    }

    return HI_SUCCESS;   
}

HI_S32 HI_UNF_SND_GetMute(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL *pbMute)
{
    
    API_SND_CheckId(enSound);
    return HI_MPI_AO_SND_GetMute(enSound, enOutPort, pbMute);   
} 


HI_S32 HI_UNF_SND_SetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, const HI_UNF_SND_GAIN_ATTR_S *pstGain)

{
    HI_S32 ret;
    
    API_SND_CheckId(enSound);

    ret = HI_MPI_AO_SND_SetVolume(enSound, enOutPort, pstGain);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_AO("set AO volume failed, ERR:%#x\n", ret);
        return ret;
    }

    return HI_SUCCESS;      
}

HI_S32 HI_UNF_SND_GetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S *pstGain)
{
    API_SND_CheckId(enSound);
    return HI_MPI_AO_SND_GetVolume(enSound, enOutPort, pstGain);   
}

HI_S32 HI_UNF_SND_SetSampleRate(HI_UNF_SND_E enSound, HI_UNF_SAMPLE_RATE_E enSampleRate)
{
    HI_S32 ret;

    API_SND_CheckId(enSound);

    if (enSampleRate < HI_UNF_SAMPLE_RATE_48K)
    {
        /*lc change enSampleRate = HI_UNF_SAMPLE_RATE_48K;*/
    }
    
    //TODO enOutPort useless
    ret = HI_MPI_AO_SND_SetSampleRate(enSound, enSampleRate);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_AO("set AO sampleRate to %d failed, ERR:%#x\n", enSampleRate, ret);
        return ret;
    }

    return HI_SUCCESS;       
}

HI_S32 HI_UNF_SND_GetSampleRate(HI_UNF_SND_E enSound, HI_UNF_SAMPLE_RATE_E *penSampleRate)
{
    API_SND_CheckId(enSound);

    //TODO enOutPort useless
    return HI_MPI_AO_SND_GetSampleRate(enSound, penSampleRate);
}

HI_S32 HI_UNF_SND_SetSmartVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bSmartVolume)
{
    API_SND_CheckId(enSound);  
    return HI_MPI_AO_SND_SetSmartVolume(enSound, enOutPort,bSmartVolume);   
}

HI_S32 HI_UNF_SND_GetSmartVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL *pbSmartVolume)
{

    API_SND_CheckId(enSound);
    return HI_MPI_AO_SND_GetSmartVolume(enSound, enOutPort,pbSmartVolume);
}

HI_S32 HI_UNF_SND_SetTrackMode(HI_UNF_SND_E enSound,HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_TRACK_MODE_E enMode)
{
    HI_S32 ret;
    
    API_SND_CheckId(enSound);

    ret = HI_MPI_AO_SND_SetTrackMode(enSound, enOutPort, enMode);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_AO("set AO TrackMode to %d failed, ERR:%#x\n", enMode, ret);
        return ret;
    }

    return HI_SUCCESS;       
}

HI_S32 HI_UNF_SND_GetTrackMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_TRACK_MODE_E *penMode)
{
    API_SND_CheckId(enSound);
    return HI_MPI_AO_SND_GetTrackMode(enSound, enOutPort, penMode);   
} 


HI_S32   HI_UNF_SND_GetDefaultCastAttr(HI_UNF_SND_E enSound, HI_UNF_SND_CAST_ATTR_S *pstAttr)
{
    API_SND_CheckId(enSound);
    return HI_MPI_AO_SND_GetCastDefaultOpenAttr(pstAttr);
}

HI_S32 HI_UNF_SND_CreateCast(HI_UNF_SND_E enSound, HI_UNF_SND_CAST_ATTR_S *pstAttr, HI_HANDLE *phCast)
{
    API_SND_CheckId(enSound);
    return HI_MPI_AO_SND_CreateCast(enSound, pstAttr, phCast);
}

HI_S32 HI_UNF_SND_DestroyCast(HI_HANDLE hCast)
{
    return HI_MPI_AO_SND_DestroyCast(hCast);
}

HI_S32 HI_UNF_SND_SetCastEnable(HI_HANDLE hCast, HI_BOOL bEnable)
{
    return HI_MPI_AO_SND_SetCastEnable(hCast,bEnable);
}

HI_S32 HI_UNF_SND_GetCastEnable(HI_HANDLE hCast, HI_BOOL *pbEnable)
{
    return HI_MPI_AO_SND_GetCastEnable(hCast,pbEnable);
}

HI_S32 HI_UNF_SND_AcquireCastFrame(HI_HANDLE hCast, HI_UNF_AO_FRAMEINFO_S *pstCastFrame, HI_U32 u32TimeoutMs)
{
    return HI_MPI_AO_SND_AcquireCastFrame(hCast,pstCastFrame);
}

HI_S32 HI_UNF_SND_ReleaseCastFrame(HI_HANDLE hCast, HI_UNF_AO_FRAMEINFO_S *pstCastFrame)
{
    return HI_MPI_AO_SND_ReleaseCastFrame(hCast,pstCastFrame);
}
    
HI_S32 HI_UNF_SND_Attach(HI_HANDLE hTrack, HI_HANDLE hSource)
{
    HI_S32 s32Ret;

    CHECK_AO_TRACK_ID(hTrack);
    
    //s32Ret = HI_MPI_AVPLAY_AttachSnd(hSource, hTrack);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_AO("call HI_MPI_AVPLAY_AttachSnd failed.\n");            
        return s32Ret;
    }
  
    s32Ret = HI_MPI_AO_Track_Start(hTrack);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_AO("call HI_MPI_AO_Track_Start failed.\n");            
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_SND_Detach(HI_HANDLE hTrack, HI_HANDLE hSource)
{
    HI_S32 ret;

    CHECK_AO_TRACK_ID(hTrack);
    
    //ret = HI_MPI_AVPLAY_DetachSnd(hSource, hTrack);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_AO("call HI_MPI_AVPLAY_DetachSnd failed.\n");            
        return ret;
    }

    ret = HI_MPI_AO_Track_Stop(hTrack);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_AO("call HI_MPI_AO_Track_Stop failed.\n");            
        return ret;
    }
    
    return HI_SUCCESS;
}

HI_S32	 HI_UNF_SND_SetTrackWeight(HI_HANDLE hTrack, const HI_UNF_SND_GAIN_ATTR_S *pstMixWeightGain)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_AO_Track_SetWeight(hTrack, pstMixWeightGain);  
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_AO("Set Track(%d) Weight failed.\n", hTrack);            
        return s32Ret;
    }
    return HI_SUCCESS;
}

HI_S32   HI_UNF_SND_GetTrackWeight(HI_HANDLE hTrack, HI_UNF_SND_GAIN_ATTR_S *pstMixWeightGain)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_AO_Track_GetWeight(hTrack, pstMixWeightGain);  
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_AO("Get Track(%d) Weight failed.\n", hTrack);            
        return s32Ret;
    }
    return HI_SUCCESS;
}

HI_S32   HI_UNF_SND_SetHdmiMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                           HI_UNF_SND_HDMI_MODE_E enHdmiMode)

{
    API_SND_CheckId(enSound);

    return HI_MPI_AO_SND_SetHdmiMode(enSound, enOutPort, enHdmiMode);
}

HI_S32   HI_UNF_SND_GetHdmiMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_HDMI_MODE_E *penHdmiMode)
{
    API_SND_CheckId(enSound);

    return HI_MPI_AO_SND_GetHdmiMode(enSound, enOutPort, penHdmiMode);
}

HI_S32   HI_UNF_SND_SetSpdifMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                           HI_UNF_SND_SPDIF_MODE_E enSpdifMode)

{
    API_SND_CheckId(enSound);

    return HI_MPI_AO_SND_SetSpdifMode(enSound, enOutPort, enSpdifMode);
}

HI_S32   HI_UNF_SND_GetSpdifMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                           HI_UNF_SND_SPDIF_MODE_E *penSpdifMode)

{
    API_SND_CheckId(enSound);

    return HI_MPI_AO_SND_GetSpdifMode(enSound, enOutPort, penSpdifMode);
}


HI_S32   HI_UNF_SND_GetDefaultTrackAttr(HI_UNF_SND_TRACK_TYPE_E enTrackType, HI_UNF_AUDIOTRACK_ATTR_S *pstAttr)
{
    return HI_MPI_AO_Track_GetDefaultOpenAttr(enTrackType, pstAttr);
}

HI_S32   HI_UNF_SND_CreateTrack(HI_UNF_SND_E enSound,const HI_UNF_AUDIOTRACK_ATTR_S *pTrackAttr,HI_HANDLE *phTrack)
{
    HI_S32 s32Ret;
    API_SND_CheckId(enSound);
    
    //TODO More Simpler
    s32Ret = HI_MPI_AO_Track_Create(enSound, pTrackAttr, phTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Create Track failed, ERR:%#x\n", s32Ret);
        return s32Ret;
    }

    return s32Ret;
}

HI_S32   HI_UNF_SND_DestroyTrack(HI_HANDLE hTrack)
{
    HI_S32 s32Ret;

    //TODO  1.Detach Track 2. Destory
    //HI_MPI_AO_SND_DetachTrack(HI_UNF_SND_E enSound, HI_HANDLE hTrack)
    
    s32Ret = HI_MPI_AO_Track_Destroy(hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Destroy Track failed, ERR:%#x\n", s32Ret);
        return s32Ret;
    }

    return s32Ret;
}

HI_S32   HI_UNF_SND_SetTrackAttr(HI_HANDLE hTrack, const HI_UNF_AUDIOTRACK_ATTR_S *pstTrackAttr)
{
     HI_ERR_AO("Now Don't Support SetTrackAttr!\n");
     return HI_FAILURE;
}

HI_S32   HI_UNF_SND_GetTrackAttr(HI_HANDLE hTrack, HI_UNF_AUDIOTRACK_ATTR_S *pstTrackAttr)
{
     HI_ERR_AO("Now Don't Support GetTrackAttr!\n");
     return HI_FAILURE;
}

HI_S32  HI_UNF_SND_AcquireTrackFrame(HI_HANDLE hTrack, HI_UNF_AO_FRAMEINFO_S *pstAOFrame)
{
    HI_S32 s32Ret;
    s32Ret = HI_MPI_AO_Track_AcquireFrame(hTrack, pstAOFrame);
    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_AO("HI_UNF_SND_AcquireFrame failed, ERR:%#x\n", s32Ret);
        return s32Ret;
    }

    return s32Ret;
}

HI_S32  HI_UNF_SND_ReleaseTrackFrame(HI_HANDLE hTrack, HI_UNF_AO_FRAMEINFO_S *pstAOFrame)
{
    HI_S32 s32Ret;
    s32Ret = HI_MPI_AO_Track_ReleaseFrame(hTrack, pstAOFrame);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Release Frame failed, ERR:%#x\n", s32Ret);
        return s32Ret;
    }

    return s32Ret;
}    


