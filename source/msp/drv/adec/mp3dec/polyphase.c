/**************************************************************************************
 * Hisilicon MP3 decoder
 * polyphase.c - final stage of subband transform (polyphase synthesis filter)
 **************************************************************************************/

#include "coder.h"
#include "assembly.h"
#include "arm_opt.h"

/* input to Polyphase = Q(DQ_FRACBITS_OUT-2), gain 2 bits in convolution
 *  we also have the implicit bias of 2^15 to add back, so net fraction bits = 
 *    DQ_FRACBITS_OUT - 2 - 2 - 15
 *  (see comment on Dequantize() for more info)
 */
#define DEF_NFRACBITS	(DQ_FRACBITS_OUT - 2 - 2 - 15)	

#ifdef ENA_SUBBAND_COEF_OPT
    #define CSHIFT	16	/* coefficients have 16 leading sign bits for early-terminating mulitplies */
#else
    #define CSHIFT  12  /* coefficients have 12 leading sign bits for early-terminating mulitplies */
#endif 

static __inline short ClipToShort(int x, int fracBits)
{
	int sign;
	
	/* assumes you've already rounded (x += (1 << (fracBits-1))) */
	x >>= fracBits;
	
	/* Ken's trick: clips to [-32768, 32767] */
	sign = x >> 31;
	if (sign != (x >> 15))
		x = sign ^ ((1 << 15) - 1);

	return (short)x;
}

#ifdef ENA_SUBBAND_COEF_OPT
#define MC0M(x)	{ \
	c1 = *coef;		coef++;		c2 = *coef;		coef++; \
	vLo = *(vb1+(x));			vHi = *(vb1+(23-(x))); \
	sum1L = MLA32_16B(sum1L, vLo,  c1);	sum1L = MLA32_16B(sum1L, vHi, -c2); \
}

#define MC1M(x)	{ \
	c1 = *coef;		coef++; \
	vLo = *(vb1+(x)); \
	sum1L = MLA32_16B(sum1L, vLo,  c1); \
}

#define MC2M(x)	{ \
	c1 = *coef;		coef++;		c2 = *coef;		coef++; \
	vLo = *(vb1+(x));	vHi = *(vb1+(23-(x))); \
	sum1L = MLA32_16B(sum1L, vLo,  c1);	sum2L = MLA32_16B(sum2L, vLo,  c2); \
	sum1L = MLA32_16B(sum1L, vHi, -c2);	sum2L = MLA32_16B(sum2L, vHi,  c1); \
}

#else

#define MC0M(x)	{ \
	c1 = *coef;		coef++;		c2 = *coef;		coef++; \
	vLo = *(vb1+(x));			vHi = *(vb1+(23-(x))); \
	sum1L = MADD64(sum1L, vLo,  c1);	sum1L = MADD64(sum1L, vHi, -c2); \
}

#define MC1M(x)	{ \
	c1 = *coef;		coef++; \
	vLo = *(vb1+(x)); \
	sum1L = MADD64(sum1L, vLo,  c1); \
}

#define MC2M(x)	{ \
	c1 = *coef;		coef++;		c2 = *coef;		coef++; \
	vLo = *(vb1+(x));	vHi = *(vb1+(23-(x))); \
	sum1L = MADD64(sum1L, vLo,  c1);	sum2L = MADD64(sum2L, vLo,  c2); \
	sum1L = MADD64(sum1L, vHi, -c2);	sum2L = MADD64(sum2L, vHi,  c1); \
}
#endif


/**************************************************************************************
 * Function:    PolyphaseMono
 *
 * Description: filter one subband and produce 32 output PCM samples for one channel
 *
 * Inputs:      pointer to PCM output buffer
 *              number of "extra shifts" (vbuf format = Q(DQ_FRACBITS_OUT-2))
 *              pointer to start of vbuf (preserved from last call)
 *              start of filter coefficient table (in proper, shuffled order)
 *              no minimum number of guard bits is required for input vbuf 
 *                (see additional scaling comments below)
 *
 * Outputs:     32 samples of one channel of decoded PCM data, (i.e. Q16.0)
 *
 * Return:      none
 *
 * TODO:        add 32-bit version for platforms where 64-bit mul-acc is not supported
 *                (note max filter gain - see polyCoef[] comments)
 **************************************************************************************/
void PolyphaseMono(short *pcm, int *vbuf, const int *coefBase)
{	
	int i;
	const int *coef;
	int *vb1;
	int vLo, vHi, c1, c2;
#ifdef ENA_SUBBAND_COEF_OPT
	int sum1L, sum2L, rndVal;
#else
	__int64 sum1L, sum2L, rndVal;
#endif

#ifdef ENA_SUBBAND_COEF_OPT
    rndVal = (int)( 1 << (DEF_NFRACBITS - 1 ) );
#else
	rndVal = (__int64)( 1 << (DEF_NFRACBITS - 1 + (32 - CSHIFT)) );
#endif
	/* special case, output sample 0 */
	coef = coefBase;
	vb1 = vbuf;
	sum1L = rndVal;

	MC0M(0)
	MC0M(1)
	MC0M(2)
	MC0M(3)
	MC0M(4)
	MC0M(5)
	MC0M(6)
	MC0M(7)

#ifdef ENA_SUBBAND_COEF_OPT
    *(pcm + 0) = ClipToShort(sum1L,  DEF_NFRACBITS);
#else
	*(pcm + 0) = ClipToShort((int)SAR64(sum1L, (32-CSHIFT)), DEF_NFRACBITS);
#endif

	/* special case, output sample 16 */
	coef = coefBase + 256;
	vb1 = vbuf + 64*16;
	sum1L = rndVal;

	MC1M(0)
	MC1M(1)
	MC1M(2)
	MC1M(3)
	MC1M(4)
	MC1M(5)
	MC1M(6)
	MC1M(7)

#ifdef ENA_SUBBAND_COEF_OPT
    *(pcm + 16) = ClipToShort(sum1L, DEF_NFRACBITS);
#else
	*(pcm + 16) = ClipToShort((int)SAR64(sum1L, (32-CSHIFT)), DEF_NFRACBITS);
#endif

	/* main convolution loop: sum1L = samples 1, 2, 3, ... 15   sum2L = samples 31, 30, ... 17 */
	coef = coefBase + 16;
	vb1 = vbuf + 64;
	pcm++;

	/* right now, the compiler creates bad asm from this... */
	for (i = 15; i > 0; i--) {
		sum1L = sum2L = rndVal;

		MC2M(0)
		MC2M(1)
		MC2M(2)
		MC2M(3)
		MC2M(4)
		MC2M(5)
		MC2M(6)
		MC2M(7)

		vb1 += 64;
#ifdef ENA_SUBBAND_COEF_OPT
        *(pcm)       = ClipToShort(sum1L, DEF_NFRACBITS);
		*(pcm + 2*i) = ClipToShort(sum2L, DEF_NFRACBITS);
#else
		*(pcm)       = ClipToShort((int)SAR64(sum1L, (32-CSHIFT)), DEF_NFRACBITS);
		*(pcm + 2*i) = ClipToShort((int)SAR64(sum2L, (32-CSHIFT)), DEF_NFRACBITS);
#endif
		pcm++;
	}
}

#ifdef ENA_SUBBAND_COEF_OPT
#define MC0S(x)	{ \
	c1 = *coef;		coef++;		c2 = *coef;		coef++; \
	vLo = *(vb1+(x));		vHi = *(vb1+(23-(x))); \
	sum1L = MLA32_16B(sum1L, vLo,  c1);	sum1L = MLA32_16B(sum1L, vHi, -c2); \
	vLo = *(vb1+32+(x));	vHi = *(vb1+32+(23-(x))); \
	sum1R = MLA32_16B(sum1R, vLo,  c1);	sum1R = MLA32_16B(sum1R, vHi, -c2); \
}

#define MC1S(x)	{ \
	c1 = *coef;		coef++; \
	vLo = *(vb1+(x)); \
	sum1L = MLA32_16B(sum1L, vLo,  c1); \
	vLo = *(vb1+32+(x)); \
	sum1R = MLA32_16B(sum1R, vLo,  c1); \
}

#define MC2S(x)	{ \
	c1 = *coef;		coef++;		c2 = *coef;		coef++; \
	vLo = *(vb1+(x));	vHi = *(vb1+(23-(x))); \
	sum1L = MLA32_16B(sum1L, vLo,  c1);	sum2L = MLA32_16B(sum2L, vLo,  c2); \
	sum1L = MLA32_16B(sum1L, vHi, -c2);	sum2L = MLA32_16B(sum2L, vHi,  c1); \
	vLo = *(vb1+32+(x));	vHi = *(vb1+32+(23-(x))); \
	sum1R = MLA32_16B(sum1R, vLo,  c1);	sum2R = MLA32_16B(sum2R, vLo,  c2); \
	sum1R = MLA32_16B(sum1R, vHi, -c2);	sum2R = MLA32_16B(sum2R, vHi,  c1); \
}

#else

#define MC0S(x)	{ \
	c1 = *coef;		coef++;		c2 = *coef;		coef++; \
	vLo = *(vb1+(x));		vHi = *(vb1+(23-(x))); \
	sum1L = MADD64(sum1L, vLo,  c1);	sum1L = MADD64(sum1L, vHi, -c2); \
	vLo = *(vb1+32+(x));	vHi = *(vb1+32+(23-(x))); \
	sum1R = MADD64(sum1R, vLo,  c1);	sum1R = MADD64(sum1R, vHi, -c2); \
}

#define MC1S(x)	{ \
	c1 = *coef;		coef++; \
	vLo = *(vb1+(x)); \
	sum1L = MADD64(sum1L, vLo,  c1); \
	vLo = *(vb1+32+(x)); \
	sum1R = MADD64(sum1R, vLo,  c1); \
}

#define MC2S(x)	{ \
	c1 = *coef;		coef++;		c2 = *coef;		coef++; \
	vLo = *(vb1+(x));	vHi = *(vb1+(23-(x))); \
	sum1L = MADD64(sum1L, vLo,  c1);	sum2L = MADD64(sum2L, vLo,  c2); \
	sum1L = MADD64(sum1L, vHi, -c2);	sum2L = MADD64(sum2L, vHi,  c1); \
	vLo = *(vb1+32+(x));	vHi = *(vb1+32+(23-(x))); \
	sum1R = MADD64(sum1R, vLo,  c1);	sum2R = MADD64(sum2R, vLo,  c2); \
	sum1R = MADD64(sum1R, vHi, -c2);	sum2R = MADD64(sum2R, vHi,  c1); \
}
#endif

/**************************************************************************************
 * Function:    PolyphaseStereo
 *
 * Description: filter one subband and produce 32 output PCM samples for each channel
 *
 * Inputs:      pointer to PCM output buffer
 *              number of "extra shifts" (vbuf format = Q(DQ_FRACBITS_OUT-2))
 *              pointer to start of vbuf (preserved from last call)
 *              start of filter coefficient table (in proper, shuffled order)
 *              no minimum number of guard bits is required for input vbuf 
 *                (see additional scaling comments below)
 *
 * Outputs:     32 samples of two channels of decoded PCM data, (i.e. Q16.0)
 *
 * Return:      none
 *
 * Notes:       interleaves PCM samples LRLRLR...
 *
 * TODO:        add 32-bit version for platforms where 64-bit mul-acc is not supported
 **************************************************************************************/
void PolyphaseStereo(short *pcm, int *vbuf, const int *coefBase)
{
	int i;
	const int *coef;
	int *vb1;
	int vLo, vHi, c1, c2;
#ifdef ENA_SUBBAND_COEF_OPT
	int sum1L, sum2L, sum1R, sum2R, rndVal;
#else
	__int64 sum1L, sum2L, sum1R, sum2R, rndVal;
#endif

#ifdef ENA_SUBBAND_COEF_OPT
	rndVal = (int)( 1 << (DEF_NFRACBITS - 1) );
#else
	rndVal = (__int64)( 1 << (DEF_NFRACBITS - 1 + (32 - CSHIFT)) );
#endif
	/* special case, output sample 0 */
	coef = coefBase;
	vb1 = vbuf;
	sum1L = sum1R = rndVal;

	MC0S(0)
	MC0S(1)
	MC0S(2)
	MC0S(3)
	MC0S(4)
	MC0S(5)
	MC0S(6)
	MC0S(7)

#ifdef ENA_SUBBAND_COEF_OPT
    *(pcm + 0) = ClipToShort(sum1L, DEF_NFRACBITS);
	*(pcm + 1) = ClipToShort(sum1R, DEF_NFRACBITS);
#else
	*(pcm + 0) = ClipToShort((int)SAR64(sum1L, (32-CSHIFT)), DEF_NFRACBITS);
	*(pcm + 1) = ClipToShort((int)SAR64(sum1R, (32-CSHIFT)), DEF_NFRACBITS);
#endif
	/* special case, output sample 16 */
	coef = coefBase + 256;
	vb1 = vbuf + 64*16;
	sum1L = sum1R = rndVal;

	MC1S(0)
	MC1S(1)
	MC1S(2)
	MC1S(3)
	MC1S(4)
	MC1S(5)
	MC1S(6)
	MC1S(7)

#ifdef ENA_SUBBAND_COEF_OPT
    *(pcm + 2*16 + 0) = ClipToShort(sum1L, DEF_NFRACBITS);
	*(pcm + 2*16 + 1) = ClipToShort(sum1R, DEF_NFRACBITS);
#else
	*(pcm + 2*16 + 0) = ClipToShort((int)SAR64(sum1L, (32-CSHIFT)), DEF_NFRACBITS);
	*(pcm + 2*16 + 1) = ClipToShort((int)SAR64(sum1R, (32-CSHIFT)), DEF_NFRACBITS);
#endif
	/* main convolution loop: sum1L = samples 1, 2, 3, ... 15   sum2L = samples 31, 30, ... 17 */
	coef = coefBase + 16;
	vb1 = vbuf + 64;
	pcm += 2;

	/* right now, the compiler creates bad asm from this... */
	for (i = 15; i > 0; i--) {
		sum1L = sum2L = rndVal;
		sum1R = sum2R = rndVal;

		MC2S(0)
		MC2S(1)
		MC2S(2)
		MC2S(3)
		MC2S(4)
		MC2S(5)
		MC2S(6)
		MC2S(7)

		vb1 += 64;
#ifdef ENA_SUBBAND_COEF_OPT
        *(pcm + 0)         = ClipToShort(sum1L, DEF_NFRACBITS);
		*(pcm + 1)         = ClipToShort(sum1R, DEF_NFRACBITS);
		*(pcm + 2*2*i + 0) = ClipToShort(sum2L, DEF_NFRACBITS);
		*(pcm + 2*2*i + 1) = ClipToShort(sum2R, DEF_NFRACBITS);
#else
		*(pcm + 0)         = ClipToShort((int)SAR64(sum1L, (32-CSHIFT)), DEF_NFRACBITS);
		*(pcm + 1)         = ClipToShort((int)SAR64(sum1R, (32-CSHIFT)), DEF_NFRACBITS);
		*(pcm + 2*2*i + 0) = ClipToShort((int)SAR64(sum2L, (32-CSHIFT)), DEF_NFRACBITS);
		*(pcm + 2*2*i + 1) = ClipToShort((int)SAR64(sum2R, (32-CSHIFT)), DEF_NFRACBITS);
#endif
		pcm += 2;
	}
}
