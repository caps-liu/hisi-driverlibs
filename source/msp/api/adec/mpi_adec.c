/*****************************************************************************
*              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName: mpi_adec.c
* Description: Describe main functionality and purpose of this file.
*
* History:
* Version   Date         Author     DefectNum    Description
* 0.01      2006-04-03   g45345     NULL         Create this file.
*
*****************************************************************************/

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "hi_module.h"
#include "hi_mpi_mem.h"

#include "hi_drv_adec.h"
#include "hi_mpi_adec.h"

#include "mpi_adec_waveform.h"
#define ADECGetRealChn(hAdec) do {hAdec = hAdec & 0xffff;} while (0)

static HI_U32 g_s32AdecInitCnt = 0;
static HI_U32 g_u32StreamCnt[ADEC_INSTANCE_MAXNUM];
static HI_U32 g_hAdecArry[ADEC_INSTANCE_MAXNUM];
static HI_UNF_STREAM_BUF_S g_sStreamBackupArry[ADEC_INSTANCE_MAXNUM][3];

HI_S32 HI_MPI_ADEC_RegisterDeoder(const HI_CHAR *pszCodecDllName)
{
    HI_S32 retval;

    retval = ADEC_RegisterDeoder(pszCodecDllName);

    return retval;
}

HI_S32 HI_MPI_ADEC_FoundSupportDeoder(HA_FORMAT_E enFormat, HI_U32 *penDstCodecID)
{
    HI_S32 retval;

    retval = ADEC_FoundSupportDeoder(enFormat,penDstCodecID);

    return retval;
}


HI_S32 HI_MPI_ADEC_Init(const HI_CHAR* pszCodecNameTable[])
{
    HI_S32 retval;

    if (!g_s32AdecInitCnt)
    {
        retval = ADEC_Init(pszCodecNameTable);
        if (retval != HI_SUCCESS)
        {
            return retval;
        }
    }

    g_s32AdecInitCnt++;
    return HI_SUCCESS;
}

HI_S32 HI_MPI_ADEC_deInit(HI_VOID)
{
    if (!g_s32AdecInitCnt)
    {
        return HI_SUCCESS;
    }

    g_s32AdecInitCnt--;

    if (!g_s32AdecInitCnt)
    {
        return ADEC_deInit();
    }

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype    : HI_API_AO_Open
 Description  : open adec
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2006/06/13
    Author       : vicent feng
    Modification : Created function

*****************************************************************************/
HI_S32 HI_MPI_ADEC_Open(HI_HANDLE *phAdec)
{
    HI_S32 retval;
    HI_VOID  *ptrmem = HI_NULL_PTR;

    retval = ADEC_Open(phAdec);
    if (retval < 0)
    {
        return HI_FAILURE;
    }

    if ((HI_S32)(*phAdec) < ADEC_INSTANCE_MAXNUM)
    {
        ptrmem = HI_MALLOC(HI_ID_ADEC, ADEC_MAX_INPUT_BLOCK_SIZE);
		
        if (!ptrmem)
        {
            retval = ADEC_Close(*phAdec);
            return HI_FAILURE;
        }
    }
    else
    {
        retval = ADEC_Close(*phAdec);
        return HI_FAILURE;
    }

    g_hAdecArry[*phAdec] = (HI_U32)ptrmem;
    memset(g_sStreamBackupArry[*phAdec], 0, sizeof(HI_UNF_STREAM_BUF_S) * 3);
    g_u32StreamCnt[*phAdec] = 0;

    *phAdec = *phAdec | (HI_ID_ADEC << 16);

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype    : HI_MPI_ADEC_Close
 Description  : close adec
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2006/06/13
    Author       : vicent feng
    Modification : Created function

*****************************************************************************/
HI_S32 HI_MPI_ADEC_Close (HI_HANDLE hAdec)
{
    HI_S32 retval;

    ADECGetRealChn(hAdec);

    if ((HI_S32)(hAdec) >= ADEC_INSTANCE_MAXNUM)
    {
        HI_ERR_ADEC("invalid hAdec(%d) \n", hAdec );
        return HI_FAILURE;
    }

    if (g_hAdecArry[hAdec])
    {
        HI_FREE(HI_ID_ADEC, (HI_VOID *)g_hAdecArry[hAdec]);
        g_hAdecArry[hAdec] = 0;
    }

    retval = ADEC_Close(hAdec);
    return retval;
}


HI_S32 HI_MPI_ADEC_Start(HI_HANDLE hAdec)
{
    HI_S32 retval;
    HI_BOOL bWorkState = HI_TRUE;
    ADECGetRealChn(hAdec);
    retval = ADEC_SetAttr(hAdec, ADEC_ATTR_WORKSTATE, &bWorkState);
    return retval;
}

HI_S32 HI_MPI_ADEC_Stop(HI_HANDLE hAdec)
{
    HI_S32 retval;
    HI_BOOL bWorkState = HI_FALSE;
    ADECGetRealChn(hAdec);
    retval = ADEC_SetAttr(hAdec, ADEC_ATTR_WORKSTATE, &bWorkState);
    retval = ADEC_SetAttr(hAdec, ADEC_ATTR_EosStateFlag, &bWorkState);
    return retval;
}


HI_S32 HI_MPI_ADEC_SetAllAttr(HI_HANDLE hAdec, ADEC_ATTR_S * pstAllAttr)
{
    HI_S32 retval;

    ADECGetRealChn(hAdec);
    retval = ADEC_SetAttr(hAdec, ADEC_ATTR_ALLATTR, pstAllAttr);

    return retval;
}

HI_S32 HI_MPI_ADEC_GetDelayMs(HI_HANDLE hAdec, HI_U32 *pDelay)
{
    HI_S32 retval;
    ADECGetRealChn(hAdec);
    retval = ADEC_GetDelayMs(hAdec,pDelay);


    return retval;
}

HI_S32 HI_MPI_ADEC_GetAllAttr(HI_HANDLE hAdec, ADEC_ATTR_S * pstAllAttr)
{
    HI_S32 retval;

    ADECGetRealChn(hAdec);
    retval = ADEC_GetAttr(hAdec, ADEC_ATTR_ALLATTR, pstAllAttr);

    return retval;
}

/*****************************************************************************
 Prototype    : HI_MPI_ADEC_SendStream
 Description  : send audio frame to HIAO
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2006/06/13
    Author       : vicent feng
    Modification : Created function

*****************************************************************************/
HI_S32 HI_MPI_ADEC_SendStream (HI_HANDLE hAdec, const HI_UNF_STREAM_BUF_S *pstStream, HI_U32 u32PtsMs)
{
    HI_S32 retval;

    ADECGetRealChn(hAdec);
    ADEC_DbgCountTrySendStream(hAdec);
    retval = ADEC_SendStream(hAdec, pstStream, u32PtsMs);
    if (HI_SUCCESS == retval)
    {
        ADEC_DbgCountSendStream(hAdec);
#if 0
    {
        static FILE *fStream;
        static HI_S32 counter = 0;
        if (counter == 0)
        {
            fStream = fopen("/mnt/adec_send.es", "wb");
            if (fStream)
            {
                HI_INFO_ADEC("  file is adec_send.es \n");
            }
            else
            {
                HI_INFO_ADEC("  open adec_send.es fail\n");
            }
        }

        counter++;
        if ((counter < 256) && fStream)
        {
                fwrite(pstStream->pu8Data, 1, pstStream->u32Size, fStream);   // discard PTS
        }

        if ((counter == 256) && fStream)
        {
            fclose(fStream);
        }
    }
#endif

    }

    return retval;
}

HI_S32 HI_MPI_ADEC_GetBuffer(HI_HANDLE hAdec, HI_U32 u32RequestSize, HI_UNF_STREAM_BUF_S *pstStream)
{
    HI_S32 retval;

    ADECGetRealChn(hAdec);
    if ((HI_S32)(hAdec) >= ADEC_INSTANCE_MAXNUM)
    {
        HI_ERR_ADEC("invalid hAdec(%d) \n", hAdec );

        return HI_FAILURE;
    }

    if (pstStream == HI_NULL_PTR)
    {
        HI_ERR_ADEC("invalid pstStream(0x%x) \n", pstStream );

        return HI_FAILURE;
    }

    ADEC_DbgCountTryGetBuffer(hAdec);

    memset(g_sStreamBackupArry[hAdec], 0, sizeof(HI_UNF_STREAM_BUF_S) * 3);
    retval = ADEC_GetBuffer(hAdec, u32RequestSize, &g_sStreamBackupArry[hAdec][1], &g_sStreamBackupArry[hAdec][2]);
    if (retval != HI_SUCCESS)
    {
        return retval;
    }

    //HI_INFO_ADEC("Stream1  pu8Data =0x%08x  u32Bytes=%d \n", g_sStreamBackupArry[hAdec][1].pu8Data, g_sStreamBackupArry[hAdec][1].u32Bytes);
    //HI_INFO_ADEC("Stream2  pu8Data =0x%08x  u32Bytes=%d \n", g_sStreamBackupArry[hAdec][2].pu8Data, g_sStreamBackupArry[hAdec][2].u32Bytes);
    if (g_sStreamBackupArry[hAdec][2].u32Size > 0)
    {
        g_sStreamBackupArry[hAdec][0].pu8Data = (HI_U8*)(g_hAdecArry[hAdec]);
        g_sStreamBackupArry[hAdec][0].u32Size = u32RequestSize;
        memcpy(pstStream, &g_sStreamBackupArry[hAdec][0], sizeof(HI_UNF_STREAM_BUF_S));
        g_u32StreamCnt[hAdec] = 2;

        ADEC_DbgCountGetBuffer(hAdec);
        return HI_SUCCESS;
    }
    else
    {
        memcpy(pstStream, &g_sStreamBackupArry[hAdec][1], sizeof(HI_UNF_STREAM_BUF_S));
        memset(&g_sStreamBackupArry[hAdec][2], 0, sizeof(HI_UNF_STREAM_BUF_S));
        g_u32StreamCnt[hAdec] = 1;

        ADEC_DbgCountGetBuffer(hAdec);
        return HI_SUCCESS;
    }
}



HI_S32 HI_MPI_ADEC_PutBuffer (HI_HANDLE hAdec, const HI_UNF_STREAM_BUF_S *pstStream, HI_U32 u32PtsMs)
{
    HI_S32 retval;

    ADECGetRealChn(hAdec);
    if (((HI_S32)hAdec) >= ADEC_INSTANCE_MAXNUM)
    {
        HI_ERR_ADEC("invalid hAdec(0x%x) \n", hAdec );
        return HI_FAILURE;
    }

    if (pstStream == HI_NULL_PTR)
    {
        HI_ERR_ADEC("invalid pstStream(0x%x) \n", pstStream );
        return HI_FAILURE;
    }

    if ((g_u32StreamCnt[hAdec] != 1) && (g_u32StreamCnt[hAdec] != 2))
    {
        HI_ERR_ADEC("hAdec%d: invalid g_u32StreamCnt(0x%x) \n", hAdec, g_u32StreamCnt[hAdec]  );
        return HI_FAILURE;
    }

    if (pstStream->u32Size == 0)
    {
        HI_ERR_ADEC("err u32Size=%d \n", pstStream->u32Size);
        return HI_SUCCESS;
    }

    ADEC_DbgCountTryPutBuffer(hAdec);
    if (g_u32StreamCnt[hAdec] == 1)
    {
        if ((pstStream->pu8Data != g_sStreamBackupArry[hAdec][1].pu8Data)
            || (pstStream->u32Size > g_sStreamBackupArry[hAdec][1].u32Size))
        {
            HI_ERR_ADEC("invalid pstStream->pu8Data or  pstStream->u32Size \n");
            return HI_FAILURE;
        }

        if (pstStream->u32Size != g_sStreamBackupArry[hAdec][1].u32Size)
        {
            g_sStreamBackupArry[hAdec][1].u32Size = pstStream->u32Size;
        }
    }

    if (g_u32StreamCnt[hAdec] == 2)
    {
        if ((pstStream->pu8Data != g_sStreamBackupArry[hAdec][0].pu8Data)
            || (pstStream->u32Size > g_sStreamBackupArry[hAdec][0].u32Size))
        {
            HI_ERR_ADEC("invalid pstStream->pu8Data or  pstStream->u32Size \n");
            return HI_FAILURE;
        }

        if (pstStream->u32Size <= g_sStreamBackupArry[hAdec][1].u32Size)
        {
            memcpy((HI_VOID *)g_sStreamBackupArry[hAdec][1].pu8Data, (HI_VOID *)pstStream->pu8Data, pstStream->u32Size);
            g_sStreamBackupArry[hAdec][1].u32Size = pstStream->u32Size;
            memset(&g_sStreamBackupArry[hAdec][2], 0, sizeof(HI_UNF_STREAM_BUF_S));
        }
        else
        {
            memcpy((HI_VOID *)g_sStreamBackupArry[hAdec][1].pu8Data, (HI_VOID *)pstStream->pu8Data,
                   g_sStreamBackupArry[hAdec][1].u32Size);

            memcpy((HI_VOID *)g_sStreamBackupArry[hAdec][2].pu8Data, (HI_VOID *)(pstStream->pu8Data
                                                                                 + g_sStreamBackupArry[hAdec][1].u32Size),
                   pstStream->u32Size - g_sStreamBackupArry[hAdec][1].u32Size);
            g_sStreamBackupArry[hAdec][2].u32Size = pstStream->u32Size - g_sStreamBackupArry[hAdec][1].u32Size;
        }
    }

    g_u32StreamCnt[hAdec] = 0;
    retval = ADEC_PutBuffer (hAdec, &g_sStreamBackupArry[hAdec][1], &g_sStreamBackupArry[hAdec][2], u32PtsMs);

    if (HI_SUCCESS == retval)
    {
        ADEC_DbgCountPutBuffer(hAdec);
#if 0
	{
	    static FILE *fStream;
	    static HI_S32 counter = 0;
	    if (counter == 0)
	    {
	        fStream = fopen("/mnt/adec_put.es", "wb");
	        if (fStream)
	        {
	            HI_INFO_ADEC("  file is adec_put.es.es \n");
	        }
	        else
	        {
	            HI_INFO_ADEC("  open adec_put.es fail\n");
	        }
	    }

	    counter++;
	    if ((counter < 4096) && fStream)
	    {
	            fwrite(pstStream->pu8Data, 1, pstStream->u32Size, fStream);   // discard PTS
	    }

	    if ((counter == 4096) && fStream)
	    {
	        fclose(fStream);
			fStream = NULL;
	    }
	}
#endif
    }

    return retval;
}

	
HI_S32 HI_MPI_ADEC_ReceiveFrame (HI_HANDLE hAdec, HI_UNF_AO_FRAMEINFO_S *pstAOFrame, ADEC_EXTFRAMEINFO_S *pstExtInfo)
{
    HI_S32 retval;

    ADECGetRealChn(hAdec);
    ADEC_DbgCountTryReceiveFrame(hAdec);

    retval = ADEC_ReceiveFrame(hAdec, pstAOFrame, pstExtInfo);

    if (HI_SUCCESS == retval)
    {
#if 0
				{
					static FILE *fPcm;
					static HI_S32 counter = 0;
					if (counter == 0)
					{
						fPcm = fopen("/mnt/adec_dump.pcm", "wb");
						if (fPcm)
						{
							HI_INFO_ADEC("  file is adec_dump.pcm \n");
						}
						else
						{
							HI_INFO_ADEC("  open adec_dump.pcm fail\n");
						}
					}
			
					counter++;
					if ((counter < 10240) && fPcm)
					{
							fwrite(pstAOFrame->ps32PcmBuffer, sizeof(short), pstAOFrame->u32PcmSamplesPerFrame*pstAOFrame->u32Channels, fPcm);	 // discard PTS
					}
			
					if ((counter == 10240) && fPcm)
					{
						fclose(fPcm);
					}
				}
#endif
        ADEC_DbgCountReceiveFrame(hAdec);
    }

    return retval;
}

/*****************************************************************************
 Prototype    : HI_MPI_ADEC_ReleaseFrame
 Description  : release audio frame
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2006/06/13
    Author       : vicent feng
    Modification : Created function

*****************************************************************************/

HI_S32 HI_MPI_ADEC_ReleaseFrame(HI_HANDLE hAdec, const HI_UNF_AO_FRAMEINFO_S *pstAOFrame)
{
    HI_S32 retval;

    ADECGetRealChn(hAdec);
    retval = ADEC_ReleaseFrame(hAdec, pstAOFrame);

    return retval;
}

HI_S32 HI_MPI_ADEC_GetInfo(HI_HANDLE hAdec, HI_MPI_ADEC_INFO_E enAdecInfo, void *pstAdecInfo)
{
    HI_S32 retval;

    ADECGetRealChn(hAdec);
	
    switch (enAdecInfo)
    	{
		case HI_MPI_ADEC_STATUSINFO:
			HI_INFO_ADEC("HI_MPI_ADEC_GetAttrInfo CMD: ADEC_STATUSINFO");
    		retval = ADEC_GetStatusInfo(hAdec,  (ADEC_STATUSINFO_S *)pstAdecInfo);
			break;
			
		case HI_MPI_ADEC_STREAMINFO:
			HI_INFO_ADEC("HI_MPI_ADEC_GetAttrInfo CMD: ADEC_STREAMINFO");
		    retval = ADEC_GetStreamInfo(hAdec, (ADEC_STREAMINFO_S *)pstAdecInfo);
			break;

		case HI_MPI_ADEC_BUFFERSTATUS:
			HI_INFO_ADEC("HI_MPI_ADEC_GetAttrInfo CMD: ADEC_BUFFERSTATUS");
			retval = ADEC_GetBufferStatus(hAdec, (ADEC_BUFSTATUS_S *)pstAdecInfo);
			break;

		case HI_MPI_ADEC_DEBUGINFO:
			HI_INFO_ADEC("HI_MPI_ADEC_GetAttrInfo CMD: ADEC_DEBUGINFO");
			retval = ADEC_GetDebugInfo(hAdec, (ADEC_DEBUGINFO_S *)pstAdecInfo);
			break;

		case HI_MPI_ADEC_HaSzNameInfo:
			HI_INFO_ADEC("ADEC_GetHaSzNameInfo CMD: ADEC_HaSzNameInfo");
			retval = ADEC_GetHaSzNameInfo(hAdec, (ADEC_SzNameINFO_S *)pstAdecInfo);
			break;	
			
			
		default:
			HI_ERR_ADEC(" HI_MPI_ADEC_GetAttrInfo  fail: INVALID PARAM = 0x%x\n", enAdecInfo);
			retval = HI_FAILURE;
    	}


    return retval;
}

HI_S32 HI_MPI_ADEC_GetAudSpectrum(HI_HANDLE hAdec, HI_U16 *pSpectrum ,HI_U32 u32BandNum)
{
#ifdef HI_ADEC_AUDSPECTRUM_SUPPORT
	HI_S32 Ret;

    	if (!pSpectrum)
	{
		HI_ERR_ADEC("para pSpectrum is null.\n");
		return HI_FAILURE;
	}

	if ((u32BandNum != 20)
  		&&(u32BandNum != 80)
  		&&(u32BandNum != 512))
	{
    	HI_ERR_ADEC("para u32BandNum is invalid.\n");
	return HI_FAILURE;
	}
	
	ADECGetRealChn(hAdec);

	Ret = ADEC_GetAnalysisPcmData(hAdec);
	if (Ret != HI_SUCCESS)
	{
    	HI_WARN_ADEC("call ADEC_AudGetAnalysisPcmData failed.\n");
    	return Ret;
	}

	Ret = ADEC_GetAudSpectrum(pSpectrum, u32BandNum);
	if (Ret != HI_SUCCESS)
	{
    	HI_WARN_ADEC("call ADEC_Mp3DecGetSpectrum failed.\n");
    	return Ret;
	}
#else
	HI_ERR_ADEC("don't support AUDSPECTRUM!\n");
#endif

    return HI_SUCCESS;
}

HI_S32 HI_MPI_ADEC_SetConfigDeoder( const HI_U32 enDstCodecID, HI_VOID *pstConfigStructure)
{
    HI_S32 retval;

    retval = ADEC_SetConfigDeoder(enDstCodecID, pstConfigStructure);
    return retval;
}


HI_S32 HI_MPI_ADEC_SetEosFlag(HI_HANDLE hAdec)
{
    ADECGetRealChn(hAdec);
    return ADEC_SetEosFlag(hAdec);
}

HI_S32 HI_MPI_ADEC_SetCodecCmd(HI_HANDLE hAdec, HI_VOID *pstCodecCmd)
{
    HI_S32 retval;
    ADECGetRealChn(hAdec);
    retval = ADEC_SetCodecCmd(hAdec, pstCodecCmd);
    return retval;
}
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */
