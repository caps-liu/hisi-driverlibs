/**************************************************************************************
 * Hisilicon decoder
 * buffers.c - AUDOS_MEM_MALLOC and free all memory MP3 decoder need
 **************************************************************************************/

//#include <stdlib.h>         		/* for AUDOS_MEM_MALLOC, free */ 
//#include "hal_hiao_osal.h"
#include "aud_osal.h"

#include "coder.h"

/**************************************************************************************
 * Function:    ClearBuffer
 *
 * Description: fill buffer with 0's
 *
 * Inputs:      pointer to buffer
 *              number of bytes to fill with 0
 *
 * Outputs:     cleared buffer
 *
 * Return:      none
 *
 * Notes:       slow, platform-independent equivalent to memset(buf, 0, nBytes)
 **************************************************************************************/
static void ClearBuffer(void *buf, int nBytes)
{
	int i;
	unsigned char *cbuf = (unsigned char *)buf;

	for (i = 0; i < nBytes; i++)
		cbuf[i] = 0;
}

/**************************************************************************************
 * Function:    AllocateBuffers
 *
 * Description: allocate all the memory needed for the MP3 decoder
 *
 * Inputs:      none
 *
 * Outputs:     none
 *
 * Return:      pointer to MP3DecInfo structure (initialized with pointers to all 
 *                the internal buffers needed for decoding, all other members of 
 *                MP3DecInfo structure set to 0)
 *
 * Notes:       if one or more AUDOS_MEM_MALLOCs fail, function frees any buffers already
 *                allocated before returning
 **************************************************************************************/
MP3DecInfo *AllocateBuffers(void)
{
	MP3DecInfo *mp3DecInfo;
	FrameHeader *fh;
	SideInfo *si;
	ScaleFactorInfo *sfi;
	HuffmanInfo *hi;
	DequantInfo *di;
	IMDCTInfo *mi;
	SubbandInfo *sbi;

#if defined (MP3DEC_DEBUG)
int AUDOS_MEM_MALLOCSize = sizeof(MP3DecInfo) + sizeof(FrameHeader) + sizeof(ScaleFactorInfo) + sizeof(HuffmanInfo)
                + sizeof(DequantInfo) + sizeof(IMDCTInfo) + sizeof(SubbandInfo);
#endif

	mp3DecInfo = (MP3DecInfo *)AUDOS_MEM_MALLOC(sizeof(MP3DecInfo));
	if (!mp3DecInfo)
		return 0;
	ClearBuffer(mp3DecInfo, sizeof(MP3DecInfo));
	
	fh =  (FrameHeader *)     AUDOS_MEM_MALLOC(sizeof(FrameHeader));
	si =  (SideInfo *)        AUDOS_MEM_MALLOC(sizeof(SideInfo));
	sfi = (ScaleFactorInfo *) AUDOS_MEM_MALLOC(sizeof(ScaleFactorInfo));
	hi =  (HuffmanInfo *)     AUDOS_MEM_MALLOC(sizeof(HuffmanInfo));
	di =  (DequantInfo *)     AUDOS_MEM_MALLOC(sizeof(DequantInfo));
	mi =  (IMDCTInfo *)       AUDOS_MEM_MALLOC(sizeof(IMDCTInfo));
	sbi = (SubbandInfo *)     AUDOS_MEM_MALLOC(sizeof(SubbandInfo));

	mp3DecInfo->FrameHeaderPS =     (void *)fh;
	mp3DecInfo->SideInfoPS =        (void *)si;
	mp3DecInfo->ScaleFactorInfoPS = (void *)sfi;
	mp3DecInfo->HuffmanInfoPS =     (void *)hi;
	mp3DecInfo->DequantInfoPS =     (void *)di;
	mp3DecInfo->IMDCTInfoPS =       (void *)mi;
	mp3DecInfo->SubbandInfoPS =     (void *)sbi;

	if (!fh || !si || !sfi || !hi || !di || !mi || !sbi) {
		FreeBuffers(mp3DecInfo);	/* safe to call - only frees memory that was successfully allocated */
		return 0;
	}

	/* important to do this - DSP primitives assume a bunch of state variables are 0 on first use */
	ClearBuffer(fh,  sizeof(FrameHeader));
	ClearBuffer(si,  sizeof(SideInfo));
	ClearBuffer(sfi, sizeof(ScaleFactorInfo));
	ClearBuffer(hi,  sizeof(HuffmanInfo));
	ClearBuffer(di,  sizeof(DequantInfo));
	ClearBuffer(mi,  sizeof(IMDCTInfo));
	ClearBuffer(sbi, sizeof(SubbandInfo));

	return mp3DecInfo;
}

#define SAFE_FREE(x)	{if (x)	AUDOS_MEM_FREE(x);	(x) = 0;}	/* helper macro */

/**************************************************************************************
 * Function:    FreeBuffers
 *
 * Description: frees all the memory used by the MP3 decoder
 *
 * Inputs:      pointer to initialized MP3DecInfo structure
 *
 * Outputs:     none
 *
 * Return:      none
 *
 * Notes:       safe to call even if some buffers were not allocated (uses SAFE_FREE)
 **************************************************************************************/
void FreeBuffers(MP3DecInfo *mp3DecInfo)
{
	if (!mp3DecInfo)
		return;

	SAFE_FREE(mp3DecInfo->FrameHeaderPS);
	SAFE_FREE(mp3DecInfo->SideInfoPS);
	SAFE_FREE(mp3DecInfo->ScaleFactorInfoPS);
	SAFE_FREE(mp3DecInfo->HuffmanInfoPS);
	SAFE_FREE(mp3DecInfo->DequantInfoPS);
	SAFE_FREE(mp3DecInfo->IMDCTInfoPS);
	SAFE_FREE(mp3DecInfo->SubbandInfoPS);

	SAFE_FREE(mp3DecInfo);
}

