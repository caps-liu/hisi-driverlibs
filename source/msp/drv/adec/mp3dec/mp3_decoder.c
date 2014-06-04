/**************************************************************************************
* Hisilicon MP3 decoder
* mp3dec.c - platform-independent top level MP3 decoder API
**************************************************************************************/

//#include <string.h>		/* for memmove, memcpy (can replace with different implementations if desired) */
//#include "hal_hiao_osal.h"    /* includes mp3dec.h (public API) and internal, platform-independent API */
#include "aud_osal.h"
#include "mp3common.h"   /* includes mp3dec.h (public API) and internal, platform-independent API */
#include "coder.h"
#include "layer12.h"

/**************************************************************************************
* Function:    MP3InitDecoder
*
* Description: allocate memory for platform-specific data
*              clear all the user-accessible fields
*
* Inputs:      none
*
* Outputs:     none
*
* Return:      handle to mp3 decoder instance, 0 if malloc fails
**************************************************************************************/
HMP3Decoder MP3InitDecoder(void)
{
    MP3DecInfo *mp3DecInfo;

    mp3DecInfo = AllocateBuffers();

	if (!mp3DecInfo) //for fix MOTO
    {
        return NULL;
    }

    /* set struct member(output info) 0 */
    mp3DecInfo->bitrate = 0;
    mp3DecInfo->nChans   = 0;
    mp3DecInfo->samprate = 0;
    mp3DecInfo->layer   = 0;
    mp3DecInfo->version = 0;

    return (HMP3Decoder)mp3DecInfo;
}

/**************************************************************************************
* Function:    MP3FreeDecoder
*
* Description: free platform-specific data allocated by InitMP3Decoder
*              zero out the contents of MP3DecInfo struct
*
* Inputs:      valid MP3 decoder instance pointer (HMP3Decoder)
*
* Outputs:     none
*
* Return:      none
**************************************************************************************/
void MP3FreeDecoder(HMP3Decoder hMP3Decoder)
{
    MP3DecInfo *mp3DecInfo = (MP3DecInfo *)hMP3Decoder;

    if (!mp3DecInfo)
    {
        return;
    }

    FreeBuffers(mp3DecInfo);
}

/**************************************************************************************
* Function:    MP3FindSyncWord
*
* Description: locate the next byte-alinged sync word in the raw mp3 stream
*
* Inputs:      buffer to search for sync word
*              max number of bytes to search in buffer
*
* Outputs:     none
*
* Return:      offset to first sync word (bytes from start of buf)
*              -1 if sync not found after searching nBytes
**************************************************************************************/
static int MP3FindSyncWord(unsigned char *buf, int nBytes)
{
    int i;

    /* find byte-aligned syncword - need 12 (MPEG 1,2) or 11 (MPEG 2.5) matching bits */
    for (i = 0; i < nBytes - 1; i++)
    {
        if (((buf[i + 0] & SYNCWORDH) == SYNCWORDH) && (buf[i + 1] & SYNCWORDL) == SYNCWORDL)
        {
            return i;
        }
    }

    return -1;
}

/**************************************************************************************
* Function:    MP3FindFreeSync
*
* Description: figure out number of bytes between adjacent sync words in "free" mode
*
* Inputs:      buffer to search for next sync word
*              the 4-byte frame header starting at the current sync word
*              max number of bytes to search in buffer
*
* Outputs:     none
*
* Return:      offset to next sync word, minus any pad byte (i.e. nSlots)
*              -1 if sync not found after searching nBytes
*
* Notes:       this checks that the first 22 bits of the next frame header are the
*                same as the current frame header, but it's still not foolproof
*                (could accidentally find a sequence in the bitstream which
*                 appears to match but is not actually the next frame header)
*              this could be made more error-resilient by checking several frames
*                in a row and verifying that nSlots is the same in each case
*              since free mode requires CBR (see spec) we generally only call
*                this function once (first frame) then store the result (nSlots)
*                and just use it from then on
**************************************************************************************/
static int MP3FindFreeSync(unsigned char *buf, unsigned char firstFH[4], int nBytes)
{
    int offset = 0;
    unsigned char *bufPtr = buf;

    /* loop until we either:
     *  - run out of nBytes (FindMP3SyncWord() returns -1)
     *  - find the next valid frame header (sync word, version, layer, CRC flag, bitrate, and sample rate
     *      in next header must match current header)
     */
    while (1)
    {
        offset  = MP3FindSyncWord(bufPtr, nBytes);
        bufPtr += offset;
        if (offset < 0)
        {
            return -1;
        }
        else if ((bufPtr[0] == firstFH[0]) && (bufPtr[1] == firstFH[1]) && ((bufPtr[2] & 0xfc) == (firstFH[2] & 0xfc)))
        {
            /* want to return number of bytes per frame, NOT counting the padding byte, so subtract one if padFlag == 1 */
            if ((firstFH[2] >> 1) & 0x01)
            {
                bufPtr--;
            }

            return bufPtr - buf;
        }

        bufPtr += 3;
        nBytes -= (offset + 3);
    }

    ;

    return -1;
}

/**************************************************************************************
* Function:    MP3ClearBadFrame
*
* Description: zero out pcm buffer if error decoding MP3 frame
*
* Inputs:      mp3DecInfo struct with correct frame size parameters filled in
*              pointer pcm output buffer
*
* Outputs:     zeroed out pcm buffer
*
* Return:      none
**************************************************************************************/
static void MP3ClearBadFrame(MP3DecInfo *mp3DecInfo, short *outbuf)
{
    int i;
    int outBufLen = MAX_NCHAN * MAX_NGRAN * MAX_NSAMP;

    if (!mp3DecInfo)
    {
        return;
    }

    /*for (i = 0; i < mp3DecInfo->nGrans * mp3DecInfo->nGranSamps * mp3DecInfo->nChans; i++)*/
    for (i = 0; i < outBufLen; i++)
    {
        outbuf[i] = 0;
    }
}

/**************************************************************************************
* Function:    MP3GetLastFrameInfo
*
* Description: get info about last MP3 frame decoded (number of sampled decoded,
*                sample rate, bitrate, etc.)
*
* Inputs:      valid MP3 decoder instance pointer (HMP3Decoder)
*              pointer to MP3FrameInfo struct
*
* Outputs:     filled-in MP3FrameInfo struct
*
* Return:      none
*
* Notes:       call this right after calling MP3Decode
**************************************************************************************/
void MP3GetLastFrameInfo(HMP3Decoder hMP3Decoder, MP3FrameInfo *mp3FrameInfo)
{
    MP3DecInfo *mp3DecInfo = (MP3DecInfo *)hMP3Decoder;

    if (!mp3DecInfo)
    {
        mp3FrameInfo->bitrate = 0;
        mp3FrameInfo->nChans   = 0;
        mp3FrameInfo->samprate = 0;
        mp3FrameInfo->bitsPerSample = 0;
        mp3FrameInfo->outputSamps = 0;
        mp3FrameInfo->layer   = 0;
        mp3FrameInfo->version = 0;
    }
    else
    {
        mp3FrameInfo->bitrate = mp3DecInfo->bitrate;
        mp3FrameInfo->nChans   = mp3DecInfo->nChans;
        mp3FrameInfo->samprate = mp3DecInfo->samprate;
        mp3FrameInfo->bitsPerSample = 16;
        mp3FrameInfo->outputSamps = mp3DecInfo->nChans
                                    * (int)samplesPerFrameTab[mp3DecInfo->version][mp3DecInfo->layer - 1];
        mp3FrameInfo->layer   = mp3DecInfo->layer;
        mp3FrameInfo->version = mp3DecInfo->version;
    }
}

/**************************************************************************************
* Function:    MP3GetNextFrameInfo
*
* Description: parse MP3 frame header
*
* Inputs:      valid MP3 decoder instance pointer (HMP3Decoder)
*              pointer to MP3FrameInfo struct
*              pointer to buffer containing valid MP3 frame header (located using
*                MP3FindSyncWord(), above)
*
* Outputs:     filled-in MP3FrameInfo struct
*
* Return:      error code, defined in mp3dec.h (0 means no error, < 0 means error)
**************************************************************************************/
int MP3GetNextFrameInfo(HMP3Decoder hMP3Decoder, MP3FrameInfo *mp3FrameInfo, unsigned char *buf)
{
    MP3DecInfo *mp3DecInfo = (MP3DecInfo *)hMP3Decoder;

    if (!mp3DecInfo)
    {
        return ERR_MP3_NULL_POINTER;
    }

    if (UnpackFrameHeader(mp3DecInfo, buf) == -1 || (mp3DecInfo->layer != 3))
    {
        return ERR_MP3_INVALID_FRAMEHEADER;
    }

    MP3GetLastFrameInfo(mp3DecInfo, mp3FrameInfo);

    return ERR_MP3_NONE;
}

static int MP3DecodeCore(HMP3Decoder hMP3Decoder, unsigned char **inbuf, int *bytesLeft, short *outbuf, int useSize);

/**************************************************************************************
* Function:    MP3Decode
*
* Description: decode one frame of MP3 data
*
* Inputs:      valid MP3 decoder instance pointer (HMP3Decoder)
*              double pointer to buffer of MP3 data (containing headers + mainData)
*              number of valid bytes remaining in inbuf
*              pointer to outbuf, big enough to hold one frame of decoded PCM samples
*              flag indicating whether MP3 data is normal MPEG format (useSize = 0)
*                or reformatted as "self-contained" frames (useSize = 1)
*
* Outputs:     PCM data in outbuf, interleaved LRLRLR... if stereo
*                number of output samples = nGrans * nGranSamps * nChans
*              updated inbuf pointer, updated bytesLeft
*
* Return:      error code, defined in mp3dec.h (0 means no error, < 0 means error)
*
* Notes:       switching useSize on and off between frames in the same stream
*                is not supported (bit reservoir is not maintained if useSize on)
**************************************************************************************/
int MP3Decode(HMP3Decoder hMP3Decoder, unsigned char **inbuf, int *bytesLeft, short *outbuf, int useSize)
{
    int err1 = 0, err2 = 0, err3 = 0;
    unsigned char *readPtr = *inbuf;
    int bytesMax = *bytesLeft;
    MP3DecInfo *mp3DecInfo = (MP3DecInfo *)hMP3Decoder;

	if (NULL == mp3DecInfo) //for fix MOTO
	{
		return ERR_MP3_NULL_POINTER;
	}

    err1 = MP3DecodeCore(hMP3Decoder, inbuf, bytesLeft, outbuf, useSize);

    /* continue to judge whether error occured */
    if ((!mp3DecInfo) || (4 == mp3DecInfo->layer)
       || (mp3DecInfo->nChans > 2) || (mp3DecInfo->nChans < 0)
       || (mp3DecInfo->samprate > 48000) || (mp3DecInfo->samprate < 8000)
       || (mp3DecInfo->bitrate < 0)
       || (mp3DecInfo->version < 0)
       || (mp3DecInfo->nSlots < 0) || (mp3DecInfo->nSlots > MAINBUF_SIZE))
    {
        err2 = ERR_MP3_UNKNOWN;
    }

    if ((*bytesLeft < 0) || (*bytesLeft > bytesMax)
       || (*inbuf < readPtr) || (*inbuf > (readPtr + bytesMax)))
    {
        err3   = ERR_MP3_UNKNOWN;
        *inbuf = readPtr + bytesMax;
        *bytesLeft = 0;
    }

    if (err1 || err2 || err3)
    {
        /* if error, output buffer and output info must set 0, but *inbuf and *bytesLeft are different */
        mp3DecInfo->bitrate = 0;
        mp3DecInfo->nChans   = 0;
        mp3DecInfo->samprate = 0;
        mp3DecInfo->layer   = 0;
        mp3DecInfo->version = 0;

        mp3DecInfo->mainDataBegin = 0;
        mp3DecInfo->nGrans = 0;

        /* memcpy() and memmov() ..., use this parameter, could cause breakdown if error, so must set 0 */
        mp3DecInfo->nSlots = 0;

        MP3ClearBadFrame(mp3DecInfo, outbuf);
    }

    if (err1)
    {
        return err1;
    }

    if (err2)
    {
        return err2;
    }

    if (err3)
    {
        return err3;
    }

    return 0;
}

int MP3DecodeFindSyncHeader(HMP3Decoder hMP3Decoder, unsigned char **inbuf, int *bytesLeft)
{
    int offset, fhBytes, frmBytes, totBytes;
	FrameHeader *fh;
    MP3DecInfo *mp3DecInfo = (MP3DecInfo *)hMP3Decoder;

	if (!mp3DecInfo) //for fix MOTO
    {
        return ERR_MP3_NULL_POINTER;
    }	
    fh = ((FrameHeader *)(mp3DecInfo->FrameHeaderPS));

    totBytes = *bytesLeft;

    while (1)
    {
        if ((*bytesLeft) < 4)
        {
            return ERR_MP3_INDATA_UNDERFLOW; /* input data no enough to decoder header */
        }

        /* find start of next MP3 frame - assume EOF if no sync found */
        offset = MP3FindSyncWord(*inbuf, *bytesLeft);
        if (offset < 0)
        {
            /* no find valid frame header at the end of valid data buffer */
            *inbuf += (*bytesLeft) - 4;
            *bytesLeft = 4;
            return ERR_MP3_INDATA_UNDERFLOW;
        }

        *inbuf += offset;
        *bytesLeft -= offset;
        if (*bytesLeft < 4)
        {
            return ERR_MP3_INDATA_UNDERFLOW; /* input data no enough to decoder header */
        }

        /* unpack frame header */
        fhBytes = UnpackFrameHeader(mp3DecInfo, *inbuf);
        if (fhBytes < 0)
        {
            *inbuf += 1; /* the frame header is invalid this time, move input point to next byte to refind frame header(L40186) */
            *bytesLeft -= 1; /* important*/
            continue;
        }

        if (3 == fh->layer)
        {
            frmBytes = (int)slotTab[fh->ver][fh->srIdx][fh->brIdx] + (fh->paddingBit ? 1 : 0);
        }
        else
        {
            frmBytes = (int)g_u16MP3DECFrmSize[(fh->ver) * 3 + fh->layer
                                               - 1][fh->brIdx][fh->srIdx] + (fh->paddingBit ? 1 : 0);
            if ((1 == fh->layer) && (1 == fh->paddingBit))
            {
                /* in LayerI one slot is 4 bytes, (header_padding_bit << 2) */
                frmBytes += 3;
            }
        }

        if (frmBytes == 0)  /* discard free format */
        {
            *inbuf += 1;
            *bytesLeft -= 1;
            continue;
        }

#if 1
        if ((*bytesLeft) >= (frmBytes + 6))
        {
            if ((((*inbuf)[frmBytes + 0] & SYNCWORDH)
                 == SYNCWORDH) && ((*inbuf)[frmBytes + 1] & SYNCWORDL) == SYNCWORDL)
            {
 #if 0
                int mainDataBegin;/* pre frame left bytes */

                if (fh->layer == 3)
                {
                    if (fh->ver == MPEG1)
                    {
                        /* MPEG 1 */
                        mainDataBegin = ((unsigned int)((*inbuf)[4]) << 1) | (((*inbuf)[5]) >> 7); //GetBits(bsi, 9);
                    }
                    else
                    {
                        /* MPEG 2, MPEG 2.5 */
                        mainDataBegin = ((unsigned int)((*inbuf)[4])); //GetBits(bsi, 8);
                    }

                    if ((totBytes != *bytesLeft) || (mp3DecInfo->leftDataBytes < mainDataBegin))/* packet loss , discard last frame data at L3 */
                    {
                        mp3DecInfo->mainDataBytes = 0;
                        mp3DecInfo->mainDataBegin = 0;
                        mp3DecInfo->leftDataBytes = 0;
                    }
                }
 #endif

                return frmBytes;
            }
            else
            {
                *inbuf += 1;
                *bytesLeft -= 1;
                continue;
            }
        }
        else
        {
            return ERR_MP3_INDATA_UNDERFLOW;
        }

#else
        if ((*bytesLeft) >= frmBytes)
        {
            return frmBytes;
        }
        else
        {
            return ERR_MP3_INDATA_UNDERFLOW;
        }
#endif

    }

    return ERR_MP3_INDATA_UNDERFLOW;
}

static int MP3DecodeCore(HMP3Decoder hMP3Decoder, unsigned char **inbuf, int *bytesLeft, short *outbuf, int useSize)
{
    int offset, bitOffset, mainBits, gr, ch, fhBytes, siBytes, freeFrameBytes;
    int prevBitOffset, sfBlockBits, huffBlockBits;
    unsigned char *mainPtr;
	FrameHeader *fh;
	/* frmBytes: total frame bytes (from table), not including bit reservior */
    int frmBytes;
    MP3DecInfo *mp3DecInfo = (MP3DecInfo *)hMP3Decoder;

	if (!mp3DecInfo) //for fix MOTO
    {
        return ERR_MP3_NULL_POINTER;
    }
    fh = ((FrameHeader *)(mp3DecInfo->FrameHeaderPS));

    /* find start of next MP3 frame - assume EOF if no sync found */
    offset = MP3FindSyncWord(*inbuf, *bytesLeft);
    if (offset < 0)
    {
        /* no find valid frame header at the end of valid data buffer */
        *inbuf += *bytesLeft;
        *bytesLeft = 0;
        return ERR_MP3_FAIL_SYNC;
    }

    *inbuf += offset;
    *bytesLeft -= offset;
    if (*bytesLeft < 4)
    {
        return ERR_MP3_INDATA_UNDERFLOW; /* input data no enough to decoder header */
    }

    /* unpack frame header */
    fhBytes = UnpackFrameHeader(mp3DecInfo, *inbuf);
    if (fhBytes < 0)
    {
        *inbuf += 1; /* this frame head is invalid, move the pointer to next byte for parepareing next find(L40186) */
        *bytesLeft -= 1; /* not return, recheck frame head until find valid or not enough to check */
        return ERR_MP3_INVALID_FRAMEHEADER; /* don't clear outbuf since we don't know size (failed to parse header) */
    }

    if (3 == fh->layer)
    {
        frmBytes = (int)slotTab[fh->ver][fh->srIdx][fh->brIdx] + (fh->paddingBit ? 1 : 0);
    }
    else
    {
        frmBytes = (int)g_u16MP3DECFrmSize[(fh->ver) * 3 + fh->layer
                                           - 1][fh->brIdx][fh->srIdx] + (fh->paddingBit ? 1 : 0);
        if ((1 == fh->layer) && (1 == fh->paddingBit))
        {
            /* in LayerI one slot is 4 bytes, (header_padding_bit << 2) */
            frmBytes += 3;
        }
    }

    /* check this frame whether enough to decoder(L40186) */
    if (frmBytes > *bytesLeft)
    {
        return ERR_MP3_INDATA_UNDERFLOW; /* not enough a frame to decoder, return, not move point, because not decoder error */
    }
    else
    {
        *inbuf += fhBytes;
        *bytesLeft -= fhBytes; /* deal with *inbuf and *bytesLeft at the same time */
    }

    /* unpack side info */
    siBytes = UnpackSideInfo(mp3DecInfo, *inbuf);
    if (siBytes < 0)
    {
        MP3ClearBadFrame(mp3DecInfo, outbuf);
        return ERR_MP3_INVALID_SIDEINFO;
    }

    *inbuf += siBytes;

    //*bytesLeft -= (fhBytes + siBytes);
    *bytesLeft -= siBytes;

    if ((fh->layer == 1) || (fh->layer == 2)) /* by (L40186) */
    {
        Subband(mp3DecInfo, outbuf);
        *inbuf += mp3DecInfo->nSlots;
        *bytesLeft -= (mp3DecInfo->nSlots);
        return 0;
    }

    /* if free mode, need to calculate bitrate and nSlots manually, based on frame size */
    if ((0 == mp3DecInfo->bitrate) || mp3DecInfo->freeBitrateFlag)
    {
        if (!mp3DecInfo->freeBitrateFlag)
        {
            /* first time through, need to scan for next sync word and figure out frame size */
            mp3DecInfo->freeBitrateFlag  = 1;
            mp3DecInfo->freeBitrateSlots = MP3FindFreeSync(*inbuf, *inbuf - fhBytes - siBytes, *bytesLeft);
            if (mp3DecInfo->freeBitrateSlots < 0)
            {
                MP3ClearBadFrame(mp3DecInfo, outbuf);
                mp3DecInfo->freeBitrateFlag = 0; /* need to calculate nSlots again (L40186) */
                return ERR_MP3_FREE_BITRATE_SYNC;
            }

            freeFrameBytes = mp3DecInfo->freeBitrateSlots + fhBytes + siBytes;
            mp3DecInfo->bitrate = (freeFrameBytes * mp3DecInfo->samprate
                                   * 8) / (mp3DecInfo->nGrans * mp3DecInfo->nGranSamps);

            mp3DecInfo->freeBitrateFlag = 0; /* need to calculate nSlots again (L40186) */
        }

        mp3DecInfo->nSlots = mp3DecInfo->freeBitrateSlots + CheckPadBit(mp3DecInfo);    /* add pad byte, if required */
    }

    /* useSize != 0 means we're getting reformatted (RTP) packets (see RFC 3119)
     *  - calling function assembles "self-contained" MP3 frames by shifting any main_data
     *      from the bit reservoir (in previous frames) to AFTER the sync word and side info
     *  - calling function should set mainDataBegin to 0, and tell us exactly how large this
     *      frame is (in bytesLeft)
     */
    if (useSize)
    {
        mp3DecInfo->nSlots = *bytesLeft;
        if ((mp3DecInfo->mainDataBegin != 0) || (mp3DecInfo->nSlots <= 0))
        {
            /* error - non self-contained frame, or missing frame (size <= 0), could do loss concealment here */
            MP3ClearBadFrame(mp3DecInfo, outbuf);
            return ERR_MP3_INVALID_FRAMEHEADER;
        }

        /* can operate in-place on reformatted frames */
        mp3DecInfo->mainDataBytes = mp3DecInfo->nSlots;
        mainPtr = *inbuf;
        *inbuf += mp3DecInfo->nSlots;
        *bytesLeft -= (mp3DecInfo->nSlots);
    }
    else
    {
#if 0 /* check forward(L40186) */
      /* out of data - assume last or truncated frame */
        if (mp3DecInfo->nSlots > *bytesLeft)
        {
            return ERR_MP3_INDATA_UNDERFLOW;
        }
#endif


        /* check mainBuf is enough or not, assume the last frame error if not enough */
        /* fill main data buffer with enough new data for this frame */
        if (((mp3DecInfo->mainDataBytes >= mp3DecInfo->mainDataBegin)
            && (mp3DecInfo->leftDataBytes >= mp3DecInfo->mainDataBegin))
           || ((mp3DecInfo->mainDataBegin + mp3DecInfo->nSlots) > MAINBUF_SIZE))
        {
            if ((mp3DecInfo->nSlots < 0) || (mp3DecInfo->nSlots > MAINBUF_SIZE))
            {
                return ERR_MP3_UNKNOWN;
            }

            /* adequate "old" main data available (i.e. bit reservoir) */
            AUDOS_MEM_MOV(mp3DecInfo->mainBuf, mp3DecInfo->mainBuf + mp3DecInfo->mainDataBytes
                          - mp3DecInfo->mainDataBegin, mp3DecInfo->mainDataBegin);
            AUDOS_MEM_CPY(mp3DecInfo->mainBuf + mp3DecInfo->mainDataBegin, *inbuf, mp3DecInfo->nSlots);

            mp3DecInfo->mainDataBytes = mp3DecInfo->mainDataBegin + mp3DecInfo->nSlots;
            mp3DecInfo->leftDataBytes = mp3DecInfo->mainDataBytes;
            *inbuf += mp3DecInfo->nSlots;
            *bytesLeft -= (mp3DecInfo->nSlots);
            mainPtr = mp3DecInfo->mainBuf;
        }
        else
        {
            /* not enough data in bit reservoir from previous frames (perhaps starting in middle of file) */
            if ((mp3DecInfo->nSlots < 0) || (mp3DecInfo->nSlots > MAINBUF_SIZE))
            {
                return ERR_MP3_UNKNOWN;
            }

            if ((mp3DecInfo->mainDataBytes + mp3DecInfo->nSlots) >= MAINBUF_SIZE)
            {
                /* flush the last mainDataBytes and leftDataBytes when error to avoid memory breakdown */
                AUDOS_MEM_CPY(mp3DecInfo->mainBuf, *inbuf, mp3DecInfo->nSlots);
                mp3DecInfo->mainDataBytes = mp3DecInfo->nSlots;
                mp3DecInfo->leftDataBytes = mp3DecInfo->nSlots;
            }
            else
            {
                AUDOS_MEM_CPY(mp3DecInfo->mainBuf + mp3DecInfo->mainDataBytes, *inbuf, mp3DecInfo->nSlots);
                mp3DecInfo->mainDataBytes += mp3DecInfo->nSlots;
                mp3DecInfo->leftDataBytes += mp3DecInfo->nSlots;
            }

            *inbuf += mp3DecInfo->nSlots;
            *bytesLeft -= (mp3DecInfo->nSlots);

            return ERR_MP3_MAINDATA_UNDERFLOW;
        }
    }

    bitOffset = 0;
    mainBits = mp3DecInfo->mainDataBytes * 8;

    /* decode one complete frame */
    for (gr = 0; gr < mp3DecInfo->nGrans; gr++)
    {
        for (ch = 0; ch < mp3DecInfo->nChans; ch++)
        {
            /* unpack scale factors and compute size of scale factor block */
            prevBitOffset = bitOffset;
            offset = UnpackScaleFactors(mp3DecInfo, mainPtr, &bitOffset, mainBits, gr, ch);

            sfBlockBits   = 8 * offset - prevBitOffset + bitOffset;
            huffBlockBits = mp3DecInfo->part23Length[gr][ch] - sfBlockBits;
            mainPtr  += offset;
            mainBits -= sfBlockBits;

            if ((offset < 0) || (mainBits < huffBlockBits))
            {
                MP3ClearBadFrame(mp3DecInfo, outbuf);
                return ERR_MP3_INVALID_SCALEFACT;
            }

            /* decode Huffman code words */
            prevBitOffset = bitOffset;
            offset = DecodeHuffman(mp3DecInfo, mainPtr, &bitOffset, huffBlockBits, gr, ch);
            if (offset < 0)
            {
                MP3ClearBadFrame(mp3DecInfo, outbuf);
                return ERR_MP3_INVALID_HUFFCODES;
            }

            mainPtr  += offset;
            mainBits -= (8 * offset - prevBitOffset + bitOffset);
        }

        /* dequantize coefficients, decode stereo, reorder short blocks */
        offset = Dequantize(mp3DecInfo, gr);
        if (offset < 0)
        {
            MP3ClearBadFrame(mp3DecInfo, outbuf);
            return ERR_MP3_UNKNOWN;
        }

        /* alias reduction, inverse MDCT, overlap-add, frequency inversion */
        for (ch = 0; ch < mp3DecInfo->nChans; ch++)
        {
            offset = IMDCT(mp3DecInfo, gr, ch);
            if (offset < 0)
            {
                MP3ClearBadFrame(mp3DecInfo, outbuf);
                return ERR_MP3_UNKNOWN;
            }
        }

        /* subband transform - if stereo, interleaves pcm LRLRLR */
#if defined (INTERLEAVED_OUTPUT)
        Subband(mp3DecInfo, outbuf + gr * mp3DecInfo->nGranSamps * mp3DecInfo->nChans);
#else
        /*Subband(mp3DecInfo, outbuf + ((gr*mp3DecInfo->nGranSamps*mp3DecInfo->nChans)>>1));*/
        Subband(mp3DecInfo, outbuf + gr * mp3DecInfo->nGranSamps);
#endif
    }

    mp3DecInfo->leftDataBytes = mainBits / 8;

    if (1 == mp3DecInfo->nChans)
    {
        /* decoder mono stream, flush the right audio buffer */
        memset((outbuf + MAX_NGRAN * MAX_NSAMP), 0, MAX_NGRAN * MAX_NSAMP);
    }

    return ERR_MP3_NONE;
}
