/**************************************************************************************
 * Hisilicon MP3 decoder
 * layer12.c - decode one requantized Layer I or II sample from a bitstream
 **************************************************************************************/


#include "coder.h"
#include "layer12.h"

QuantClass const qc_table[17] = {
#include "layer12_qc_table.dat"
};

/*
 * scalefactor table
 * used in both Layer I and Layer II decoding
 */
mad_fixed_t const sf_table[64] = {
#include "layer12_sf_table.dat"
};

/* --- Layer I ------------------------------------------------------------- */

/* linear scaling table */
static mad_fixed_t const linear_scaling_table[14] = {
  MAD_F(0x15555555),  /* 2^2  / (2^2  - 1) == 1.33333333333333 */
  MAD_F(0x12492492),  /* 2^3  / (2^3  - 1) == 1.14285714285714 */
  MAD_F(0x11111111),  /* 2^4  / (2^4  - 1) == 1.06666666666667 */
  MAD_F(0x10842108),  /* 2^5  / (2^5  - 1) == 1.03225806451613 */
  MAD_F(0x10410410),  /* 2^6  / (2^6  - 1) == 1.01587301587302 */
  MAD_F(0x10204081),  /* 2^7  / (2^7  - 1) == 1.00787401574803 */
  MAD_F(0x10101010),  /* 2^8  / (2^8  - 1) == 1.00392156862745 */
  MAD_F(0x10080402),  /* 2^9  / (2^9  - 1) == 1.00195694716243 */
  MAD_F(0x10040100),  /* 2^10 / (2^10 - 1) == 1.00097751710655 */
  MAD_F(0x10020040),  /* 2^11 / (2^11 - 1) == 1.00048851978505 */
  MAD_F(0x10010010),  /* 2^12 / (2^12 - 1) == 1.00024420024420 */
  MAD_F(0x10008004),  /* 2^13 / (2^13 - 1) == 1.00012208521548 */
  MAD_F(0x10004001),  /* 2^14 / (2^14 - 1) == 1.00006103888177 */
  MAD_F(0x10002000)   /* 2^15 / (2^15 - 1) == 1.00003051850948 */
};

/* --- Layer II ------------------------------------------------------------ */
SBQuantTable const sbquant_table[5] = {
  /* ISO/IEC 11172-3 Table B.2a */
  { 27, { 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 3, 3, 3, 3, 3,	/* 0 */
	  3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0 } },
  /* ISO/IEC 11172-3 Table B.2b */
  { 30, { 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 3, 3, 3, 3, 3,	/* 1 */
	  3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0 } },
  /* ISO/IEC 11172-3 Table B.2c */
  {  8, { 5, 5, 2, 2, 2, 2, 2, 2 } },				/* 2 */
  /* ISO/IEC 11172-3 Table B.2d */
  { 12, { 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 } },		/* 3 */
  /* ISO/IEC 13818-3 Table B.1 */
  { 30, { 4, 4, 4, 4, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1,	/* 4 */
	  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 } }
};

BitAllocTable const bitalloc_table[8] = {
  { 2, 0 },  /* 0 */
  { 2, 3 },  /* 1 */
  { 3, 3 },  /* 2 */
  { 3, 1 },  /* 3 */
  { 4, 2 },  /* 4 */
  { 4, 3 },  /* 5 */
  { 4, 4 },  /* 6 */
  { 4, 5 }   /* 7 */
};

/* offsets into quantization class table */
unsigned char const offset_table[6][15] = {
  { 0, 1, 16                                             },  /* 0 */
  { 0, 1,  2, 3, 4, 5, 16                                },  /* 1 */
  { 0, 1,  2, 3, 4, 5,  6, 7,  8,  9, 10, 11, 12, 13, 14 },  /* 2 */
  { 0, 1,  3, 4, 5, 6,  7, 8,  9, 10, 11, 12, 13, 14, 15 },  /* 3 */
  { 0, 1,  2, 3, 4, 5,  6, 7,  8,  9, 10, 11, 12, 13, 16 },  /* 4 */
  { 0, 2,  4, 5, 6, 7,  8, 9, 10, 11, 12, 13, 14, 15, 16 }   /* 5 */
};

/*
 * NAME:	I_sample()
 * DESCRIPTION:	decode one requantized Layer I sample from a bitstream
 */
mad_fixed_t I_sample(BitStreamInfo *bsi, unsigned int nb)
{
    mad_fixed_t sample;
    
    sample = GetBits(bsi, nb);
    /* invert most significant bit, extend sign, then scale to fixed format */
    sample ^= 1 << (nb - 1);
    sample |= -(sample & (1 << (nb - 1)));
    sample <<= MAD_F_FRACBITS - (nb - 1);
    /* requantize the sample */
    /* s'' = (2^nb / (2^nb - 1)) * (s''' + 2^(-nb + 1)) */
    sample += MAD_F_ONE >> (nb - 1);
    
    return mad_f_mul(sample, linear_scaling_table[nb - 2]);
    
    /* s' = factor * s'' */
    /* (to be performed by caller) */
}

/*
 * NAME:	II_samples()
 * DESCRIPTION:	decode three requantized Layer II samples from a bitstream
 */
void II_samples(BitStreamInfo *bsi,
		QuantClass const *quantclass,
		mad_fixed_t output[3])
{
    unsigned int nb, s, sample[3];

    if ((nb = quantclass->group))
    {
        unsigned int c, nlevels;
        
        /* degrouping */
        c = GetBits(bsi, quantclass->bits);
        nlevels = quantclass->nlevels;
        
        for (s = 0; s < 3; ++s)
        {
            sample[s] = c % nlevels;
            c /= nlevels;
        }
    }
    else
    {
        nb = quantclass->bits;
        
        for (s = 0; s < 3; ++s)
        {
            sample[s] = GetBits(bsi, nb);
        }
    }

    for (s = 0; s < 3; ++s)
    {
        mad_fixed_t requantized;
        
        /* invert most significant bit, extend sign, then scale to fixed format */
        
        requantized  = sample[s] ^ (1 << (nb - 1));
        requantized |= -(requantized & (1 << (nb - 1)));
        
        requantized <<= MAD_F_FRACBITS - (nb - 1);
        
        /* requantize the sample */
        
        /* s'' = C * (s''' + D) */
        
        output[s] = mad_f_mul(requantized + quantclass->D, quantclass->C);
        
        /* s' = factor * s'' */
        /* (to be performed by caller) */
    }
}

