/**************************************************************************************
 * Hisilicon MP3 decoder
 * mp3common.h - implementation-independent API's, datatypes, and definitions
 **************************************************************************************/

#ifndef _MP3COMMON_H
#define _MP3COMMON_H

#include "mp3dec.h"
#include "statname.h"	/* do name-mangling for static linking */

#define MAX_SCFBD		4		/* max scalefactor bands per channel */
#define NGRANS_MPEG1	2
#define NGRANS_MPEG2	1

/* 11-bit syncword if MPEG 2.5 extensions are enabled */
#define	SYNCWORDH		0xff
#define	SYNCWORDL		0xe0

/* 12-bit syncword if MPEG 1,2 only are supported 
 * #define	SYNCWORDH		0xff
 * #define	SYNCWORDL		0xf0
 */

 /* determining MAINBUF_SIZE:
 *   max mainDataBegin = (2^9 - 1) bytes (since 9-bit offset) = 511
 *   max nSlots (concatenated with mainDataBegin bytes from before) = 1440 - 9 - 4 + 1 = 1428
 *   511 + 1428 = 1939, round up to 1940 (4-byte align)
 */
//#define MAINBUF_SIZE	1940
#define MAINBUF_SIZE	2000    /* 2000 > (511 + 1440) */

#define MAX_NGRAN		2		/* max granules */
#define MAX_NCHAN		2		/* max channels */
#define MAX_NSAMP		576		/* max samples per channel, per granule */

typedef struct _MP3DecInfo {
	/* pointers to platform-specific data structures */
	void *FrameHeaderPS;
	void *SideInfoPS;
	void *ScaleFactorInfoPS;
	void *HuffmanInfoPS;
	void *DequantInfoPS;
	void *IMDCTInfoPS;
	void *SubbandInfoPS;

	/* buffer which must be large enough to hold largest possible main_data section */
	unsigned char mainBuf[MAINBUF_SIZE];

	/* special info for "free" bitrate files */
	int freeBitrateFlag;
	int freeBitrateSlots;

	/* user-accessible info */
	int bitrate;
	int nChans;
	int samprate;
	int nGrans;				/* granules per frame */
	int nGranSamps;			/* samples per granule */
	int nSlots;
	int layer;
	MPEGVersion version;

	int mainDataBegin;
	int mainDataBytes;
	int leftDataBytes;

	int part23Length[MAX_NGRAN][MAX_NCHAN];

} MP3DecInfo;

typedef struct _SFBandTable {
	short l[23];
	short s[14];
} SFBandTable;

/* decoder functions which must be implemented for each platform */
MP3DecInfo *AllocateBuffers(void);
void FreeBuffers(MP3DecInfo *mp3DecInfo);
int CheckPadBit(MP3DecInfo *mp3DecInfo);
int UnpackFrameHeader(MP3DecInfo *mp3DecInfo, unsigned char *buf);
int UnpackSideInfo(MP3DecInfo *mp3DecInfo, unsigned char *buf);
int DecodeHuffman(MP3DecInfo *mp3DecInfo, unsigned char *buf, int *bitOffset, int huffBlockBits, int gr, int ch);
int Dequantize(MP3DecInfo *mp3DecInfo, int gr);
int IMDCT(MP3DecInfo *mp3DecInfo, int gr, int ch);
int UnpackScaleFactors(MP3DecInfo *mp3DecInfo, unsigned char *buf, int *bitOffset, int bitsAvail, int gr, int ch);
int Subband(MP3DecInfo *mp3DecInfo, short *pcmBuf);

/* mp3tabs.c - global ROM tables */
extern const int samplerateTab[3][3];
extern const short bitrateTab[3][3][15];
extern const short samplesPerFrameTab[3][3];
extern const short bitsPerSlotTab[3];
extern const short sideBytesTab[3][2];
extern const short slotTab[3][3][15];
extern const SFBandTable sfBandTable[3][3];

#endif	/* _MP3COMMON_H */
