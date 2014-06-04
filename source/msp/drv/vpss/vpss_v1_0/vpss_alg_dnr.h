#ifndef __VPSS_ALG_DNR_H___
#define __VPSS_ALG_DNR_H___

#include "vpss_common.h"

typedef struct
{
    HI_S32 dralphascale;
    HI_S32 drbetascale;
    HI_S32 drthrflat3x3zone;
    HI_S32 drthrmaxsimilarpixdiff;
    
}ALG_DR_RTL_PARA_S;

typedef struct
{
    HI_S32 picestqp;
    HI_S32 dbuseweakflt;
    HI_S32 dbvertasprog;
    HI_S32 detailimgqpthr;
    HI_S32 dbthredge;
    HI_S32 dbalphascale;
    HI_S32 dbbetascale;
    HI_S32 dbthrlagesmooth;
    HI_S32 dbthrmaxdiffhor;
    HI_S32 dbthrmaxdiffvert;
    HI_S32 dbthrleastblkdiffhor;
    HI_S32 dbthrleastblkdiffvert;
	
	
	#if DEF_VPSS_VERSION_2_0
    HI_S32 dbTextEn;
    HI_S32 dbThrMaxGrad;
	#endif
}ALG_DB_RTL_PARA_S;


#if DEF_VPSS_VERSION_2_0
typedef struct
{
     HI_S32 ArThrInterlaceCnt;  // 4bit,
     HI_S32 ArThrIntlColCnt;     // 4bit
     HI_S32 DrThrPeak8x8Zone; //8bit
     HI_S32 DrThrEdgeGrad;     //8bit    
}ALG_DET_RTL_PARA_S;
#endif

typedef struct
{
    HI_BOOL drEn;
    HI_BOOL dbEn;
    HI_BOOL dbEnHort;
    HI_BOOL dbEnVert;
    #if DEF_VPSS_VERSION_1_0
	HI_U32 u32YInfoAddr;
    HI_U32 u32CInfoAddr;
    HI_U32 u32YInfoStride;
    HI_U32 u32CInfoStride;
	#endif
}ALG_DNR_CTRL_PARA_S;

typedef struct 
{
    ALG_DR_RTL_PARA_S stDrThd;
    ALG_DB_RTL_PARA_S stDbThd;
	ALG_DNR_CTRL_PARA_S stDnrCtrl;
	#if DEF_VPSS_VERSION_2_0
    ALG_DET_RTL_PARA_S stDetCtrl;
	#endif
    
}ALG_DNR_RTL_PARA_S;

HI_VOID ALG_DnrInit(ALG_DNR_CTRL_PARA_S *pstDrvPara,ALG_DNR_RTL_PARA_S * pstDnrRtlPara);
HI_VOID ALG_SetDnrDbgPara(PQ_DNR_COEF_S* pstPqDnrCoef);
HI_VOID ALG_GetDnrDbgPara(PQ_DNR_COEF_S* pstPqDnrCoef);
HI_VOID DnrThdParaInitDefault(HI_VOID);

#endif
