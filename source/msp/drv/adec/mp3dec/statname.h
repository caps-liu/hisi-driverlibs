/**************************************************************************************
 * Hisilicon MP3 decoder
 * statname.h - name mangling macros for static linking
 **************************************************************************************/

#ifndef _STATNAME_H
#define _STATNAME_H

/* define STAT_PREFIX to a unique name for static linking 
 * all the C functions and global variables will be mangled by the preprocessor
 *   e.g. void FFT(int *fftbuf) becomes void cook_FFT(int *fftbuf)
 */
#define STAT_PREFIX		xmp3

#define STATCC1(x,y,z)	STATCC2(x,y,z)
#define STATCC2(x,y,z)	x##y##z  

#ifdef STAT_PREFIX
#define STATNAME(func)	STATCC1(STAT_PREFIX, _, func)
#else
#define STATNAME(func)	func
#endif

/* these symbols are common to all implementations */
#define	CheckPadBit          STATNAME(IsPaddingBit)
#define	UnpackFrameHeader    STATNAME(ParseFrameHeader)
#define	UnpackSideInfo       STATNAME(ParseSideInfo)
#define	AllocateBuffers      STATNAME(RequireMemory)
#define	FreeBuffers          STATNAME(FreeMemory)
#define	DecodeHuffman        STATNAME(DecodeHuffmanCode)
#define	Dequantize           STATNAME(Dequantize)
#define	IMDCT                STATNAME(IMDCT)
#define	UnpackScaleFactors   STATNAME(ParseScaleFactors)
#define	Subband              STATNAME(DecodeSubband)
                             
#define	samplerateTab        STATNAME(SampleRateTab)
#define	bitrateTab           STATNAME(BitRateTab)
#define	samplesPerFrameTab   STATNAME(FrameLengthTab)
#define	bitsPerSlotTab       STATNAME(BitsPerSlotTab)
#define	sideBytesTab         STATNAME(BytesPerSideTab)
#define	slotTab              STATNAME(SlotTab)
#define	sfBandTable          STATNAME(ScalefactorBandTab)


/* additional external symbols to name-mangle for static linking */
/* Function */
#define	SetBitstreamPointer	 STATNAME(InitialBitsReader)
#define	GetBits	             STATNAME(ReadBits)
#define	CalcBitsUsed         STATNAME(BitsUsed)
#define	MidSideProc	         STATNAME(MidSideProcess)
#define	IntensityProcMPEG1   STATNAME(MPEG1IStereoProcess)
#define	IntensityProcMPEG2   STATNAME(MPEG2IStereoProcess)
#define PolyphaseMono        STATNAME(MonoProcess)
#define PolyphaseStereo      STATNAME(StereoProcess)
#define FDCT32               STATNAME(Rax4DCT32)

/* Tab */
#define	ISFMpeg1             STATNAME(MPEG1IStereoCoeff)
#define	ISFMpeg2             STATNAME(MPEG2IStereoCoeff)
#define	ISFIIP               STATNAME(IlegalIStereoCoeff)
#define uniqueIDTab          STATNAME(UniqueID)
#define	coef32               STATNAME(IMDCTCoeff32)
#define	polyCoef             STATNAME(PolyCoeff)
#define	csa                  STATNAME(AntiAliasCoeff)
#define	imdctWin             STATNAME(IMDCTWinCoeff)
                             
#define	huffTable            STATNAME(HuffmanTab)
#define	huffTabOffset        STATNAME(HUffmanTabOffset)
#define	huffTabLookup        STATNAME(HuffmanLookupTab)
#define	quadTable            STATNAME(QuadTable)
#define	quadTabOffset        STATNAME(QuadTabOffset)
#define	quadTabMaxBits       STATNAME(QuadTabMaxBits)


/* Layer I II */
#define sbquant_table        STATNAME(LayerIISbquanTab    )
#define bitalloc_table       STATNAME(BitalloctTab        )          
#define qc_table             STATNAME(LayerI_II_QC_tab    )
#define offset_table         STATNAME(QuantizeTabOffset   )
#define sf_table             STATNAME(LayerI_II_sf_tab    )
#define g_u16MP3DECFrmSize   STATNAME(MP3FrameSize        )
#define I_sample             STATNAME(Dec_LayerI_Sample   )
#define II_samples           STATNAME(Dec_LayerII_Samples )


/* in your implementation's top-level include file (e.g. real\coder.h) you should
 *   add new #define sym STATNAME(sym) lines for all the
 *   additional global functions or variables which your
 *   implementation uses
 */

#endif /* _STATNAME_H */
