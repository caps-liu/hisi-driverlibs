
/* $Id: arm_opt.h,v 1.1 2009/02/06 07:02:09 z00120997 Exp $ */

#ifndef __ARM_OP_H__
#define __ARM_OP_H__

#ifdef __cplusplus
extern "C" {
#endif

#if 1
#define ENA_ANTIALIAS_COEF_OPT   /* switch: allow tolerance 1%, advance performance 40% */
#define ENA_WINPREVIOUS_COEF_OPT /* switch: allow tolerance 1%, advance performance 30% */
#define ENA_IDCT9_COEF_OPT       /* switch: allow tolerance 3%, advance performance 20% */
#define ENA_IMDCT36_COEF_OPT     /* switch: allow tolerance 21%, advance performance 10% */
                                 /* not open IDCT9 switch */
#define ENA_IMDCT12_COEF_OPT     /* switch: allow tolerance 4%, advance performance 20% */ 
#define ENA_IMDCT12x3_COEF_OPT   /* switch: allow tolerance 4%, usefuel to MULSHIFT32 */
                                 /* advance performance 30% */
#define ENA_FDCT32_COEF_OPT      /* switch: allow tolerance 9%, advance performance 20% */
#define ENA_SUBBAND_COEF_OPT  
#endif

#if defined (ENA_FDCT32_COEF_OPT)
#define MUL32_16T   MUL16T_32
#endif

#ifdef __cplusplus
}
#endif

#endif	/* __ARM_OP_H__ */

