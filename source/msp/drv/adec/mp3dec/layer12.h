
/**************************************************************************************
 * Hisilicon MP3 decoder
 * layer12.h - 
 **************************************************************************************/

#ifndef __LAYER12_H__
#define __LAYER12_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "statname.h"

/* --- Default --- */
#define FPM_DEFAULT /* FPM selected */
#define OPT_SPEED /* by (L40186) */
/*
 * This version is the most portable but it loses significant accuracy.
 * Furthermore, accuracy is biased against the second argument, so care
 * should be taken when ordering operands.
 *
 * The scale factors are constant as this is not used with SSO.
 *
 * Pre-rounding is required to stay within the limits of compliance.
 */
#ifdef OPT_SPEED
#define mad_f_mul(x, y)	(((x) >> 12) * ((y) >> 16))
#else
#define mad_f_mul(x, y)	((((x) + (1L << 11)) >> 12) *  \
				 (((y) + (1L << 15)) >> 16))
#endif

#define SIZEOF_INT 4
#define SIZEOF_LONG 4
#define SIZEOF_LONG_LONG 8

#if SIZEOF_INT >= 4
typedef   signed int mad_fixed_t;
typedef   signed int mad_fixed64hi_t;
typedef unsigned int mad_fixed64lo_t;
#else
typedef   signed long mad_fixed_t;
typedef   signed long mad_fixed64hi_t;
typedef unsigned long mad_fixed64lo_t;
#endif

# define MAD_F_FRACBITS		28

# if MAD_F_FRACBITS == 28
#  define MAD_F(x)		((mad_fixed_t) (x##L))
# else
#  if MAD_F_FRACBITS < 28
#   warning "MAD_F_FRACBITS < 28"
#   define MAD_F(x)		((mad_fixed_t)  \
				 (((x##L) +  \
				   (1L << (28 - MAD_F_FRACBITS - 1))) >>  \
				  (28 - MAD_F_FRACBITS)))
#  elif MAD_F_FRACBITS > 28
#   error "MAD_F_FRACBITS > 28 not currently supported"
#   define MAD_F(x)		((mad_fixed_t)  \
				 ((x##L) << (MAD_F_FRACBITS - 28)))
#  endif
# endif

#define MAD_F_ONE		MAD_F(0x10000000)

struct mad_frame {
  /*struct mad_header header;*/	/* MPEG audio header */
    
    int options;				/* decoding options (from stream) */
    
    unsigned long framenumber; /* Added by (L40186) */
    
    mad_fixed_t sbsample[2][36][32];	/* synthesis subband filter samples */
    mad_fixed_t (*overlap)[2][32][18];	/* Layer III block overlap data */
};

/* possible quantization per subband table */
typedef struct _SBQuantTable {
  unsigned int sblimit;
  unsigned char const offsets[30];
} SBQuantTable;

/* bit allocation table */
typedef struct _BitAllocTable {
  unsigned short nbal;
  unsigned short offset;
} BitAllocTable;

typedef struct _QuantClass {
    unsigned short nlevels;
    unsigned char group;
    unsigned char bits;
    mad_fixed_t C;
    mad_fixed_t D;
} QuantClass;

extern SBQuantTable const sbquant_table[5];
extern BitAllocTable const bitalloc_table[8];
extern QuantClass const qc_table[17];
extern unsigned char const offset_table[6][15];
extern mad_fixed_t const sf_table[64];
extern unsigned short g_u16MP3DECFrmSize[9][15][3];
extern mad_fixed_t I_sample(BitStreamInfo *bsi, unsigned int nb);
extern void II_samples(BitStreamInfo *bsi,
		       QuantClass const *quantclass,
		       mad_fixed_t output[3]);

#ifdef __cplusplus
}
#endif

#endif	/* __LAYER12_H__ */

