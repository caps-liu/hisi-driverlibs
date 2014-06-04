#include "hi_audio_codec.h"
#include "mp3dec.h"
#include "aud_osal.h"
#include "HA.AUDIO.MP3.decode.h"


#define HIAO_BASE_ADDR 0x10160000
#define HIAO_CHIP_OFFSET 0x08
#define HIAO_CHIP_VERSION 0x20091226

typedef struct hiMp3Instance
{
    HMP3Decoder hDecoder;
    HI_S32      bInterleaved;
} Mp3Instance;

static HI_VOID ClearOutput(HI_HADECODE_OUTPUT_S *pAOut )
{
    pAOut->u32PcmOutSamplesPerFrame = 0;
    pAOut->u32BitsOutBytesPerFrame = 0;
    pAOut->u32OutChannels   = 0;
    pAOut->u32OutSampleRate = 0;
    pAOut->u32OrgChannels   = 0;
    pAOut->u32OrgSampleRate = 0;
    pAOut->u32BitPerSample  = 0;
    pAOut->u32BitRate = 0;
}

static HI_HA_ERRORTYPE_E HA_SetConfig(HI_VOID * hEncoder, HI_VOID *pstConfigStructure)
{
	HA_CODEC_FORMAT_QUERY_PARAM_S *pstConfig;
	if (!pstConfigStructure)
	{
		return HA_ErrorInvalidParameter;
	}

	pstConfig = (HA_CODEC_FORMAT_QUERY_PARAM_S *)pstConfigStructure;
	switch (pstConfig->enCmd)
	{
	case HA_CODEC_FORMAT_QUERY_CMD:
	{
		if(FORMAT_MP1==pstConfig->enFormat || FORMAT_MP2==pstConfig->enFormat || FORMAT_MP3==pstConfig->enFormat)
		{
			return HA_ErrorNone;
		}
		else
		{
			return HA_ErrorNotSupportCodec;
		}
	}
	default:
		return HA_ErrorInvalidParameter;
	}

}

static HI_HA_ERRORTYPE_E HA_MP3DecInit(HI_VOID * *                     phDecoder,
                                       const HI_HADECODE_OPENPARAM_S * pOpenParam)
{
    HMP3Decoder hDecoder;
    Mp3Instance *hDev;

    if (!pOpenParam || !phDecoder)
    {
        return HA_ErrorInvalidParameter;
    }

    if (HD_DEC_MODE_RAWPCM != pOpenParam->enDecMode)
    {
        return HA_ErrorDecodeMode;
    }


    hDev = (Mp3Instance *)AUDOS_MEM_MALLOC(sizeof(Mp3Instance));
    if (HI_NULL == hDev)
    {
        return HA_ErrorInsufficientResources;
    }
    if ((hDecoder = MP3InitDecoder()) == 0)
    {
        return HA_ErrorInsufficientResources;
    }

    hDev->hDecoder = (HI_VOID *)hDecoder;
    hDev->bInterleaved = pOpenParam->sPcmformat.bInterleaved;
    *phDecoder = (HI_VOID *)hDev;

    return HA_ErrorNone;
}

static HI_HA_ERRORTYPE_E HA_MP3DecDeInit(HI_VOID * hDecoder)
{
    Mp3Instance *hDev;

    if (!hDecoder)
    {
        return HA_ErrorInvalidParameter;
    }

    hDev = (Mp3Instance *)hDecoder;
    MP3FreeDecoder(hDev->hDecoder);
    AUDOS_MEM_FREE(hDev);

    return HA_ErrorNone;
}

#if 0
static HI_HA_ERRORTYPE_E HA_MP3DecReset(HI_VOID * hDecoder)
{
    if (!hDecoder)
    {
        return HA_ErrorInvalidParameter;
    }

    return HA_ErrorNone;
}
#endif

static HI_HA_ERRORTYPE_E HA_MP3DecGetMaxPcmOutSize(HI_VOID * hDecoder,
                                                   HI_U32 *  pOutSizes)
{
    if (!hDecoder || !pOutSizes)
    {
        return HA_ErrorInvalidParameter;
    }

    *pOutSizes = 1152 * 2 * sizeof(HI_S16);

    return HA_ErrorNone;
}

static HI_HA_ERRORTYPE_E  HA_MP3DecGetMaxBitsOutSize(HI_VOID * hDecoder,
                                                     HI_U32 *  pOutSizes)
{
    if (!hDecoder || !pOutSizes)
    {
        return HA_ErrorInvalidParameter;
    }

    *pOutSizes = 0;

    return HA_ErrorNone;
}

static HI_HA_ERRORTYPE_E HA_MP3DecDecodeFrame(HI_VOID *                hDecoder,
                                              HI_HADECODE_INPACKET_S * pApkt,
                                              HI_HADECODE_OUTPUT_S *   pAOut)
{
    HI_S32 bytesLeft, err, frameBytes;
    HI_U8 *readPtr;
    MP3FrameInfo Mp3FrameInfo;
    Mp3Instance *hDev;

    if (!hDecoder || !pApkt || !pAOut)
    {
        return HA_ErrorInvalidParameter;
    }

    hDev = (Mp3Instance *)hDecoder;

    readPtr   = pApkt->pu8Data;
    bytesLeft = pApkt->s32Size;

    ClearOutput(pAOut);

    if (bytesLeft < 8)
    {
        return HA_ErrorNotEnoughData;
    }

    frameBytes = MP3DecodeFindSyncHeader(hDev->hDecoder, &readPtr, &bytesLeft);
    if (frameBytes < 0)
    {
        pApkt->pu8Data = readPtr;
        pApkt->s32Size = bytesLeft;
        return HA_ErrorNotEnoughData;
    }

    /* decode one MP3 frame */
    err = MP3Decode(hDev->hDecoder, &readPtr, &bytesLeft, (HI_S16*)pAOut->ps32PcmOutBuf, 0);
    if (0 == err)
    {
        MP3GetLastFrameInfo(hDev->hDecoder, &Mp3FrameInfo);

        pAOut->u32PcmOutSamplesPerFrame = Mp3FrameInfo.outputSamps / Mp3FrameInfo.nChans;
        pAOut->u32OutChannels   = Mp3FrameInfo.nChans;
        pAOut->u32OutSampleRate = Mp3FrameInfo.samprate;
        pAOut->u32OrgChannels   = Mp3FrameInfo.nChans;
        pAOut->u32OrgSampleRate = Mp3FrameInfo.samprate;
        pAOut->u32BitRate   = Mp3FrameInfo.bitrate;
        pAOut->bInterleaved = hDev->bInterleaved;
        pAOut->u32BitPerSample = 16;
        err = HA_ErrorNone;
    }
    else
    {
        err = HA_ErrorStreamCorrupt;
    }

    pApkt->pu8Data = readPtr;
    pApkt->s32Size = bytesLeft;
    return err;
}

HI_HA_DECODE_S g_ha_audio_mp3_decode_kel_entry = {
    .szName               = (const HI_PCHAR )"mp3",
    .enCodecID            = HA_AUDIO_ID_MP3,
    .uVersion.u32Version  =                              0x10000001,
    .pszDescription       = (const HI_PCHAR)"hisilicon mp3 decoder",
    .DecInit              = HA_MP3DecInit,
    .DecDeInit            = HA_MP3DecDeInit,
    .DecSetConfig         = HA_SetConfig,
    .DecGetMaxPcmOutSize  = HA_MP3DecGetMaxPcmOutSize,
    .DecGetMaxBitsOutSize = HA_MP3DecGetMaxBitsOutSize,
    .DecDecodeFrame       = HA_MP3DecDecodeFrame,
};

//EXPORT_SYMBOL(g_ha_audio_mp3_decode_kel_entry);

