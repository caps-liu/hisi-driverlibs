/******************************************************************************

Copyright (C), 2009-2019, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : hi_drv_ao.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2012/09/22
Last Modified :
Description   : aiao
Function List :
History       :
* main\1    2012-09-22   z40717     init.
******************************************************************************/
#ifndef __HI_DRV_AO_H__
 #define __HI_DRV_AO_H__

#ifdef __cplusplus
#if __cplusplus
 extern "C"{
#endif
#endif /* __cplusplus */

#include "hi_type.h"
#include "hi_debug.h"
#include "hi_unf_sound.h"
#include "drv_hdmi_ext.h"

#define  AO_MAX_VIRTUAL_TRACK_NUM  (6)
#define  AO_MAX_REAL_TRACK_NUM     (8)
#define  AO_MAX_TOTAL_TRACK_NUM    AO_MAX_REAL_TRACK_NUM

#define AO_MAX_CAST_NUM (4)

#define AO_MIN_LINEARVOLUME   (0) 
#define AO_MAX_LINEARVOLUME   (100) 
#define AO_MAX_ABSOLUTEVOLUME (0) /* max 0 dB*/
#define AO_MIN_ABSOLUTEVOLUME (-70) /* min -70 dB*/
#define AO_MAX_ADJUSTSPEED    (100)  //verify

//TO DO
#define AO_PCM_DF_UNSTALL_THD_FRAMENUM 3    
#define AO_PCM_MAX_UNSTALL_THD_FRAMENUM 10 

#define HI_ID_TRACK 0x00
#define HI_ID_CAST  0x01
#define AO_TRACK_CHNID_MASK 0xff
#define AO_CAST_CHNID_MASK 0xff

#define AO_TRACK_AIP_START_LATENCYMS 50 

#define CHECK_AO_SNDCARD_OPEN(enSound) \
    do                                                         \
    {                                                          \
        CHECK_AO_SNDCARD(enSound);                             \
        if (HI_NULL == s_stAoDrv.astSndEntity[enSound].pCard)     \
        {                                                       \
            HI_WARN_AO(" Invalid snd id %d\n", enSound);        \
            return HI_ERR_AO_SOUND_NOT_OPEN;                       \
        }                                                       \
    } while (0)

#define CHECK_AO_TRACK_ID(Track)                          \
    do {                                                    \
            if((Track & 0xffff0000) != (HI_ID_AO << 16))              \
            {                                               \
                HI_ERR_AO("track(0x%x) is not ao handle!\n", Track);  \
                return HI_ERR_AO_INVALID_PARA;                          \
            }                                               \
            if((Track & 0xff00) != (HI_ID_TRACK << 8))              \
            {                                               \
                HI_ERR_AO("track(0x%x) is not track handle!\n", Track);  \
                return HI_ERR_AO_INVALID_PARA;                          \
            }    \
         } while(0)        

#define CHECK_AO_TRACK_OPEN(Track) \
    do                                                         \
    {                                                          \
        CHECK_AO_TRACK(Track);                             \
        if (0 == atomic_read(&s_stAoDrv.astTrackEntity[Track & AO_TRACK_CHNID_MASK].atmUseCnt))   \
        {                                                       \
            HI_WARN_AO(" Invalid track id 0x%x\n", Track);        \
            return HI_ERR_AO_INVALID_PARA;                       \
        }                                                       \
    } while (0)


#define CHECK_AO_NULL_PTR(p)                                \
    do {                                                    \
            if(HI_NULL == p)                                \
            {                                               \
                HI_ERR_AO("NULL pointer \n");               \
                return HI_ERR_AO_NULL_PTR;                          \
            }                                               \
         } while(0)
         
#define CHECK_AO_CREATE(state)                              \
    do                                                      \
    {                                                       \
        if (0 > state)                                      \
        {                                                   \
            HI_WARN_AO("AO  device not open!\n");           \
            return HI_ERR_AO_DEV_NOT_OPEN;                \
        }                                                   \
    } while (0)
    
#define CHECK_AO_SNDCARD(card)                                  \
    do                                                          \
    {                                                           \
        if (HI_UNF_SND_BUTT <= card)                            \
        {                                                       \
            HI_WARN_AO(" Invalid snd id %d\n", card);           \
            return HI_ERR_AO_INVALID_ID;                       \
        }                                                       \
    } while (0)
/* master & slave only */
#define CHECK_AO_TRACK(track)                                  \
    do                                                          \
    {                                                           \
        if (AO_MAX_TOTAL_TRACK_NUM <= (track & AO_TRACK_CHNID_MASK))                            \
        {                                                       \
            HI_WARN_AO(" Invalid Snd Track 0x%x\n", track);           \
            return HI_ERR_AO_INVALID_PARA;                       \
        }                                                       \
    } while (0)
	
#define CHECK_AO_CAST(cast)                                  \
            do                                                          \
            {                                                           \
                if (AO_MAX_CAST_NUM <= (cast & AO_CAST_CHNID_MASK))                            \
                {                                                       \
                    HI_WARN_AO(" Invalid Snd Cast 0x%x\n", cast);           \
                    return HI_ERR_AO_INVALID_PARA;                       \
                }                                                       \
            } while (0)	

#define CHECK_AO_PORTNUM(num)                                   \
    do                                                          \
    {                                                           \
        if (HI_UNF_SND_OUTPUTPORT_MAX < num)                    \
        {                                                       \
            HI_WARN_AO(" Invalid outport number %d\n", num);       \
            return HI_ERR_AO_INVALID_PARA;                     \
        }                                                       \
    } while (0)

#define CHECK_AO_OUTPORT(port)                                                              \
    do                                                                                      \
    {                                                                                       \
        if ((HI_UNF_SND_OUTPUTPORT_ARC0 < port) && (HI_UNF_SND_OUTPUTPORT_ALL != port))    \
        {                                                                                   \
            HI_WARN_AO(" Invalid outport %d\n", port);                                      \
            return HI_ERR_AO_INVALID_PARA;                                                 \
        }                                                                                   \
    } while (0)  

#define CHECK_AO_PORTEXIST(num)                                   \
    do                                                          \
    {                                                           \
        if (0 >= num)                                           \
        {                                                       \
            HI_ERR_AO("Sound dont't attach any port!\n");       \
            return HI_FAILURE;                                  \
        }                                                       \
    } while (0)        
        
            
#define CHECK_AO_TRACKMODE(mode)                                  \
    do                                                          \
    {                                                           \
        if (HI_UNF_TRACK_MODE_BUTT <= mode)                     \
        {                                                       \
            HI_WARN_AO(" Invalid trackmode %d\n", mode);        \
            return HI_ERR_AO_INVALID_PARA;                       \
        }                                                       \
    } while (0)

#define CHECK_AO_HDMIMODE(mode)                                  \
    do                                                          \
    {                                                           \
        if (HI_UNF_SND_HDMI_MODE_BUTT <= mode)                     \
        {                                                       \
            HI_WARN_AO(" Invalid hdmimode %d\n", mode);        \
            return HI_ERR_AO_INVALID_PARA;                       \
        }                                                       \
    } while (0)     

#define CHECK_AO_SPDIFMODE(mode)                                  \
    do                                                          \
    {                                                           \
        if (HI_UNF_SND_SPDIF_MODE_BUTT <= mode)                     \
        {                                                       \
            HI_WARN_AO(" Invalid spdifmode %d\n", mode);        \
            return HI_ERR_AO_INVALID_PARA;                       \
        }                                                       \
    } while (0)         

#define CHECK_AO_FRAME_SAMPLERATE(inrate)                   \
    do                                                  \
    {                                                   \
        switch (inrate)                                \
        {                                               \
        case  HI_UNF_SAMPLE_RATE_8K:                    \
        case  HI_UNF_SAMPLE_RATE_11K:                   \
        case  HI_UNF_SAMPLE_RATE_12K:                   \
        case  HI_UNF_SAMPLE_RATE_16K:                   \
        case  HI_UNF_SAMPLE_RATE_22K:                   \
        case  HI_UNF_SAMPLE_RATE_24K:                   \
        case  HI_UNF_SAMPLE_RATE_32K:                   \
        case  HI_UNF_SAMPLE_RATE_44K:                   \
        case  HI_UNF_SAMPLE_RATE_48K:                   \
        case  HI_UNF_SAMPLE_RATE_88K:                   \
        case  HI_UNF_SAMPLE_RATE_96K:                   \
        case  HI_UNF_SAMPLE_RATE_176K:                  \
        case  HI_UNF_SAMPLE_RATE_192K:                  \
            break;                                      \
        default:                                        \
            HI_INFO_AO("don't support this insamplerate(%d)\n", inrate);    \
            return HI_SUCCESS;                        \
        }                                                       \
     } while (0)   

#define CHECK_AO_SAMPLERATE(outrate )                   \
    do                                                  \
    {                                                   \
        switch (outrate)                                \
        {                                               \
        case  HI_UNF_SAMPLE_RATE_8K:                    \
        case  HI_UNF_SAMPLE_RATE_11K:                   \
        case  HI_UNF_SAMPLE_RATE_12K:                   \
        case  HI_UNF_SAMPLE_RATE_16K:                   \
        case  HI_UNF_SAMPLE_RATE_22K:                   \
        case  HI_UNF_SAMPLE_RATE_24K:                   \
        case  HI_UNF_SAMPLE_RATE_32K:                   \
        case  HI_UNF_SAMPLE_RATE_44K:                   \
        case  HI_UNF_SAMPLE_RATE_48K:                   \
        case  HI_UNF_SAMPLE_RATE_88K:                   \
        case  HI_UNF_SAMPLE_RATE_96K:                   \
        case  HI_UNF_SAMPLE_RATE_176K:                  \
        case  HI_UNF_SAMPLE_RATE_192K:                  \
            break;                                      \
        default:                                        \
            HI_WARN_AO("invalid sample out rate %d\n", outrate);    \
            return HI_ERR_AO_INVALID_PARA;                        \
            }                                                       \
            } while (0)   

#define CHECK_AO_LINEARVOLUME(linvolume)                \
    do                                                  \
    {                                                   \
        if ((linvolume < AO_MIN_LINEARVOLUME) || (linvolume > AO_MAX_LINEARVOLUME))                   \
        {                                               \
            HI_WARN_AO("invalid LinearVolume(%d), Min(%d) Max(%d)\n", linvolume, AO_MIN_LINEARVOLUME, AO_MAX_LINEARVOLUME);   \
            return HI_ERR_AO_INVALID_PARA;            \
        }                                               \
    } while (0)

#define CHECK_AO_ABSLUTEVOLUME(absvolume)               \
    do                                                  \
    {                                                   \
        if ((absvolume < AO_MIN_ABSOLUTEVOLUME) || (absvolume > AO_MAX_ABSOLUTEVOLUME))      \
        {                                               \
            HI_WARN_AO("invalid AbsouluteVolume(%d), min(%d), max(%d)\n", absvolume, AO_MIN_ABSOLUTEVOLUME, AO_MAX_ABSOLUTEVOLUME);   \
            return HI_ERR_AO_INVALID_PARA;            \
        }                                               \
    } while (0)     

#define   CHECK_AO_SPEEDADJUST(speed)                   \
    do                                                  \
    {                                                   \
        if ((-AO_MAX_ADJUSTSPEED > speed)               \
            || (speed > AO_MAX_ADJUSTSPEED))            \
        {                                               \
            HI_WARN_AO("invalid AO SpeedAdjust(%d) min(%d), max(%d)!\n", speed, -AO_MAX_ADJUSTSPEED, AO_MAX_ADJUSTSPEED); \
            return HI_ERR_AO_INVALID_PARA;            \
        }                                               \
    } while (0)

 #define HI_FATAL_AO(fmt...) \
    HI_FATAL_PRINT(HI_ID_AO, fmt)

 #define HI_ERR_AO(fmt...) \
    HI_ERR_PRINT(HI_ID_AO, fmt)

 #define HI_WARN_AO(fmt...) \
    HI_WARN_PRINT(HI_ID_AO, fmt)

 #define HI_INFO_AO(fmt...) \
    HI_INFO_PRINT(HI_ID_AO, fmt)

#define HI_FATAL_AIAO(fmt...) HI_FATAL_PRINT  (HI_ID_AIAO, fmt)
#define HI_ERR_AIAO(fmt...)   HI_ERR_PRINT    (HI_ID_AIAO, fmt)
#define HI_WARN_AIAO(fmt...)  HI_WARN_PRINT   (HI_ID_AIAO, fmt)
#define HI_INFO_AIAO(fmt...)  HI_INFO_PRINT   (HI_ID_AIAO, fmt)

 /* the type of Adjust Audio */
typedef enum hiAO_SND_SPEEDADJUST_TYPE_E
{
 AO_SND_SPEEDADJUST_SRC,     /**<samplerate convert */
 AO_SND_SPEEDADJUST_PITCH,   /**<Sola speedadjust, reversed */
 AO_SND_SPEEDADJUST_MUTE,    /**<mute */
 AO_SND_SPEEDADJUST_BUTT 
} AO_SND_SPEEDADJUST_TYPE_E;

typedef struct
{
 HI_U32  u32BufPhyAddr;  
 HI_U32  u32BufVirAddr;  
 HI_U32  u32BufSize;
} AO_BUF_ATTR_S;

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

 #endif
