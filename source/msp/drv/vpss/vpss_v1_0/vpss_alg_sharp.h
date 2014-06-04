#ifndef __VPSS_ALG_SHARP_H__
#define __VPSS_ALG_SHARP_H__
#include"vpss_common.h"
typedef struct 
{
	/*LTI*/
	HI_BOOL bEnLTI;

	HI_S8	s8LTIHPTmp[5];             /*8bit*/

	HI_S16  s16LTICompsatRatio;      /*12bit*/   //how to config?can't get reg
	HI_U16  u16LTICoringThrsh;       /*12bit*/   
	HI_U16  u16LTIUnderSwingThrsh;	 /*10bit*/
	HI_U16  u16LTIOverSwingThrsh;    /*10bit*/
	HI_U8	u8LTIMixingRatio;          /*8bit*/

	HI_U16	u16LTIHFreqThrsh[2];     /*16bit*/
	HI_U8	u8LTICompsatMuti[3];       /*8bit*/

	/*CTI*/
	HI_BOOL bEnCTI;

	HI_S8	s8CTIHPTmp[3];             /*8bit*/

	HI_S16  s16CTICompsatRatio;      /*12bit*/
	HI_U16  u16CTICoringThrsh;       /*12bit*/
	HI_U16  u16CTIUnderSwingThrsh;  /*10bit*/
	HI_U16  u16CTIOverSwingThrsh;   /*10bit*/
	HI_U8    u8CTIMixingRatio;          /*8bit*/
}ALG_VTI_RTL_PARA_S;


typedef struct
{
    HI_BOOL bEnLTI;
    HI_BOOL bEnCTI;
    HI_BOOL bDeiEnLum;
    HI_BOOL  RwzbFlag;
    HI_BOOL  bZmeFrmFmtIn;    
    HI_BOOL  bZmeFrmFmtOut;
    HI_S32    u32ZmeWOut;
    HI_S32    u32ZmeHOut;
    HI_S32    u32ZmeWIn;
    HI_S32    u32ZmeHIn;     
    HI_S16  s16LTICTIStrengthRatio;     //strength ratio of LTI, the value shoulde be 0 to 30
       
}ALG_VTI_DRV_PARA_S;

HI_VOID ALG_VtiInit(ALG_VTI_DRV_PARA_S* pstSharpDrvPara,ALG_VTI_RTL_PARA_S *pstSharpRtlPara);
HI_VOID ALG_VtiDeInit(HI_VOID);
HI_VOID ALG_VtiReset(HI_VOID);
HI_VOID ALG_VtiSet(ALG_VTI_DRV_PARA_S* pstSharpDrvPara,ALG_VTI_RTL_PARA_S* pstSharpRtlPara);

#endif 
