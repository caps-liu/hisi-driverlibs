#ifndef __VPSS_ALG_DEI_H__
#define __VPSS_ALG_DEI_H__


#include "vpss_alg_fmd.h"
#include"hi_drv_mmz.h"
#include"vpss_common.h"





typedef struct 
{
    HI_S32  s32SadThd;   /*6 bit, mad ma sad threshold*/
    HI_BOOL bMfMaxChr;   /*motion decision result for chroma: 0-chroma mf is statistic value; 1-chroma mf fixed to maximum value*/
    HI_BOOL bMfMaxLum;   /*motion decision result for luma: 0-luma mf is statistic value; 1-luma mf fixed to maximum value*/
    HI_BOOL bSceSdfMaxLum; /*SAD choice between SCE and SDF for luma: 0- minimum; 1-maximum*/
}MAD_LMA2_S;


typedef struct
{
    HI_S32 s32MinIntenVer;  /*16 bit*/
    HI_S32 s32DirIntenVer;  /*4 bit*/
}MAD_INTEN_S;

typedef struct
{
    HI_S32 s32RangeScale;  /*8 bit*/
}MAD_SCALE_S;

typedef struct
{
    HI_S32 s32CkGain;      /*4 bit*/
    HI_S32 s32CkRangeGain; /*4 bit*/
    HI_S32 s32CkMaxRange;  /*8 bit*/
}MAD_CHECK_S;

typedef struct
{
    HI_S32 s32MultDir[15];   /*6 bit*/
}MAD_DIRMULT_S;


typedef struct
{
    HI_BOOL bCcrEn;           /*cross color reduction enable: 0-off; 1-on*/
    HI_S32  s32ChrMaOffset;   /*10 bit, chroma motion offset compared with luma motion*/
    HI_S32  s32NCcrDetMax;    /*10 bit, Cross luma detection maximum value*/
    HI_S32  s32NccrDetThd;    /*10 bit, Cross luma detection threshold*/
    HI_S32  s32SimlrMax;      /*9 bit, Maximum value of similarity*/
    HI_S32  s32SimlrThd;      /*9 bit, Threshold of similarity*/
    HI_S32  s32NCcrDetBld;    /*14 bit, blending ratio of cross luma detection*/
    HI_S32  s32XChrMax;       /*10 bit, maximum change of chroma*/
}MAD_CCRSCLR_S;


typedef struct
{
    HI_S32 s32IntpSclRat[15];    /*4 bit, strength ratio of each direction */
}MAD_INTPSCL_S;


typedef struct
{
    HI_S32 s32StrengthThd;  /*16 bit*/
    HI_S32 s32DirThd;       /*4 bit, direction choose threshold*/
    HI_S32 s32BcGain;       /*7 bit, the weight value of check module, maximum value is 64*/
}MAD_DIRTHD_S;


/*MAD jitter motion paras*/
typedef struct
{
    HI_BOOL bJitMd;  /*jitter calculation mode: 0-horizontal texture; 1-the minimum of horizontal texture and edge*/
    HI_S32  s32JitFactor; /*2 bit, the normalization weight of horizontal high-pass filter*/
    HI_S32  s32JitCoring; /*8 bit, jitter coring value*/
    HI_S32  s32JitGain;   /*4 bit, jitter gain value, 3 bit decimals*/
    HI_S32  s32JitFlt[3]; /*4 bit, high-pass filter coefficient*/
}MAD_JITMTN_S;


/*MAD field motion paras*/
typedef struct
{
    HI_S32 s32FldMtnCoring;   /*8 bit, field motion coring value*/
    HI_S32 s32FldMtnGain;     /*4 bit, field motion gain value, 3 bit decimals*/
    HI_S32 s32FldMtnCrvSlp;   /*2 bit, the curve slop of field motion adjustment*/
    HI_S32 s32FldMtnThdH;     /*8 bit, the high threshold of field motion adjustment curve*/
    HI_S32 s32FldMtnThdL;     /*8 bit, the low threshold of field motion adjustment curve*/
}MAD_FLDMTN_S;


/*MAD luma average threshold*/
typedef struct
{
    HI_S32 s32LumAvgThd[4];  /*8 bit, luma average threshold*/
}MAD_MTNCRVTHD_S;


/*MAD motion adjustment curve slope*/
typedef struct
{
    HI_S32 s32MtnCrvSlp[4];  /*5 bit, motion adjustment curve slope*/
}MAD_MTNCRVSLP_S;


/*MAD motion adjustment curve ratio paras*/
typedef struct
{
    HI_BOOL bMtnRatEn;         /*Motion adjustment curve enable*/
    HI_S32  s32MtnCrvRat[4];   /*9 bit, Motion adjustment curve ratio*/
    HI_S32  s32MtnRatStart;    /*4 bit, the start value of Motion adjustment curve ratio */
    HI_S32  s32MtnRatMin;      /*4 bit, the Minimum value of Motion adjustment curve ratio */
    HI_S32  s32MtnRatMax;      /*4 bit, the Maximum value of Motion adjustment curve ratio */
}MAD_MTNCRVRAT_S;


/*MAD IIR filter curve threshold of history motion information*/
typedef struct
{
    HI_S32 s32MtnDiffThd[8];  /*8 bit, IIR filter curve threshold of history motion information*/
}MAD_MTNDIFFTHD_S;


/*MAD IIR filter curve slope of history motion information */
typedef struct
{
    HI_S32 s32MtnIirCrvSlp[8]; /*5 bit, IIR filter curve slope of history motion information */
}MAD_MTNIIRCRVSLP_S;


/*MAD history motion information IIR filter curve ratio*/
typedef struct
{
    HI_BOOL bMtnIirEn;           /*history motion information IIR filter enable*/
    HI_S32  s32MtnIirCrvRat[8];  /*9 bit, IIR filter curve ratio of history motion information*/
    HI_S32  s32MtnIirRatStart;   /*4 bit, the start value of history motion information IIR filter curve */
    HI_S32  s32MtnIirRatMin;   /*4 bit, the Minimum value of history motion information IIR filter curve */
    HI_S32  s32MtnIirRatMax;   /*4 bit, the Maximum value of history motion information IIR filter curve */
}MAD_MtnIirCrvRat_S;


/*MAD recursive mode paras*/
typedef struct 
{
    HI_BOOL bRecMdWrMd;     /*information write back mode of recursive mode*/
    HI_BOOL bRecMdEn;       /*recursive mode enable*/
    HI_BOOL bRecMdMixMd;    /*mix mode of recursive mdoe*/
    HI_S32  s32RecMdScl;    /*5 bit, the scale value of recursive mode*/
    HI_S32  s32RecMdFldMtnGain;  /*4 bit, field motion gain value of recursive mode, 3 bit decimals*/
    HI_S32  s32RecMdFldMtnCoring; /*8 bit, field motion coring value of recursive mode*/
    HI_S32  s32RecMdMtnThd;       /*8 bit, motion threshold of recursive mode*/
}MAD_RecMode_S;

/*MAD history motion config paras*/
typedef struct
{
    HI_BOOL bHisMtnWrMd;    /*history motion write back mode*/
    HI_BOOL bHisMtnUseMd;   /*history motion using mode*/
    HI_BOOL bHisMtnEn;      /*history motion enable*/
    HI_BOOL bPreInfoEn;     /*the previous motion enable*/
    HI_BOOL bPpreInfoEn;    /*the field before the previous motion enable*/
    HI_S32  s32RecMdFrmMtnStp[2]; /*2 bit, the frame motion step of recursive mode*/
    HI_S32  s32RecMdFldMtnStp[2]; /*3 bit, the field motion step of recursive mode*/
}MAD_HisMtnMd_S;


/*MAD morphorlogical filter paras*/
typedef struct
{
    HI_BOOL bMedBldEn;    /*median filter enable for temporal interpolation*/
    HI_BOOL bDeflickerEn; /*deflicker enable*/
    HI_BOOL bMorFltEn;    /*morphological filter enable*/
    HI_S32  s32AdjGain;   /*4 bit, motion information adjustment para, 3 bit decimas*/
    HI_S32  s32MorFltSize;/*2 bit, morphological filter window size: 0-1*9; 1-1*7; 2-1*5*/
    HI_S32  s32MorFltThd; /*8 bit, morphological filter threshold*/
}MAD_MorFlt_S;


/*MAD comb check module paras*/
typedef struct
{
    HI_BOOL bCombChkEn;        /*comb check enable*/
    HI_S32  s32CombChkUpLmt;   /*8 bit, comb check upper limit threshold*/
    HI_S32  s32CombChkLowLmt;  /*8 bit, comb check lower limit threshold*/
    HI_S32  s32CombChkMinThdV; /*8 bit, comb check minus vertical threshold*/
    HI_S32  s32CombChkMinThdH; /*8 bit, comb check minus horizontal threshold*/
    HI_S32  s32CombChkMdThd;   /*5 bit, comb check motion threshold*/
    HI_S32  s32CombChkEdgeThd; /*7 bit, comb check edge strength threshold*/
}MAD_CombChk_S;




typedef struct
{
    MAD_LMA2_S stMadLma2;
    MAD_INTEN_S stMadInten;
    MAD_SCALE_S stMadScl;
    MAD_CHECK_S stMadChk1;
    MAD_CHECK_S stMadChk2;
    MAD_DIRMULT_S stMadDirMult;
    MAD_CCRSCLR_S stMadCcrScl;
    MAD_INTPSCL_S stMadIntpScl;
    MAD_DIRTHD_S stMadDirThd;
    MAD_JITMTN_S stMadJitMtn;
    MAD_FLDMTN_S stMadFldMtn;
    MAD_MTNCRVTHD_S stMadMtnCrvThd;
    MAD_MTNCRVSLP_S stMadMtnCrvSlp;
    MAD_MTNCRVRAT_S stMadMtnCrvRat;
    MAD_MTNDIFFTHD_S stMadMtnDiffThd;
    MAD_MTNIIRCRVSLP_S stMadMtnIirCrvSlp;
    MAD_MtnIirCrvRat_S stMadMtnIirCrvRat;
    MAD_RecMode_S stMadRecMode;
    MAD_HisMtnMd_S stMadHisMtnMd;
    MAD_MorFlt_S stMadMorFlt;
    MAD_CombChk_S stMadCombChk;
    

    HI_U32 u32MadSTBufAddrR;
    HI_U32 u32MadSTBufAddrW;
    HI_U32 u32MadSTBufStride;
    HI_BOOL bMadMvInfoStp;  /*0-normal update; 1-stop update infomation,don't write back motion informaion */


}ALG_MAD_RTL_PARA_S;

/*default threshold*/
typedef struct
{     
    ALG_MAD_RTL_PARA_S   stMadRtlPara;
    ALG_FMD_RTL_INITPARA_S  stFmdRtlInitPara;  /*threshold of FMD ,once start config once*/
}ALG_DEI_RTL_PARA_S;

typedef struct
{
    MMZ_BUFFER_S stMBuf;
    HI_U32 u32MadMvAddr[3];
}ALG_MAD_MEM_S;


/*history info,related to instance*/
typedef struct
{
    ALG_FMD_SOFTINFO_S stFmdSoftInfo;
    ALG_MAD_MEM_S stMadMem;
}ALG_DEI_MEM_S;

typedef struct
{
    ALG_FMD_RTL_OUTPARA_S stFmdRtlOutPara;
}ALG_DEI_RTL_OUTPARA_S;
#if 0
typedef struct
{

}ALG_FMD_CTXT_S;
#endif 

HI_VOID MadThdParaInitDefault(void);
HI_VOID ALG_DeiInit( ALG_DEI_RTL_PARA_S *pstDeiRtlPara);
HI_VOID ALG_DeiDeInit(HI_VOID);

HI_S32 ALG_DeiInfoInit(ALG_DEI_MEM_S *pstDeiMem);
HI_S32 ALG_DeiInfoDeInit(ALG_DEI_MEM_S *pstDeiMem);


HI_VOID ALG_DeiRst(ALG_DEI_MEM_S *pstDeiMem,ALG_DEI_DRV_PARA_S * pstDeiDrvPara, ALG_DEI_RTL_PARA_S *pstDeiRtlPara);

HI_S32 ALG_DeiSet(ALG_DEI_MEM_S *pstDeiMem, 
					ALG_DEI_DRV_PARA_S *pstDeiDrvPara, 
					ALG_DEI_RTL_PARA_S *pstDeiRtlPara,
					ALG_DEI_RTL_OUTPARA_S* pstDeiRtlOutPara,
					HI_BOOL bAlgDebugEn);


HI_VOID ALG_SetDeiDbgPara(PQ_DEI_COEF_S* pstPqDeiCoef);
HI_VOID ALG_GetDeiDbgPara(PQ_DEI_COEF_S* pstPqDeiCoef);

#endif /*__ALG_DEI_H__*/


