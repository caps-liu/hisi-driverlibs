#include "vpss_hal_cv200.h"
#include "linux/kthread.h"
#include "vpss_common.h"
#include <asm/barrier.h>
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

VPSS_HAL_INFO_S  stHalInfo;
VPSS_REG_S * PhyReg;
VPSS_REG_S * AppReg[HAL_NODE_MAX];

HI_S32 VPSS_HAL_RegWrite(volatile HI_U32 *a, HI_U32 b)
{
    *a = b;      
    return HI_SUCCESS;
}

HI_U32 VPSS_HAL_RegRead(volatile HI_U32* a)
{
   return (*(a));
}

HI_S32 VPSS_HAL_Init(HI_U32 u32HalVersion,VPSS_HAL_CAP_S *pstHalCaps)
{
    HI_DRV_MMZ_AllocAndMap("VPSS_RegBuf_0", HI_NULL,sizeof(VPSS_REG_S),
        	                                              0, &(stHalInfo.stRegBuf[0]));

    stHalInfo.u32AppPhyAddr[0] = stHalInfo.stRegBuf[0].u32StartPhyAddr;
    stHalInfo.u32AppVirtualAddr[0] = stHalInfo.stRegBuf[0].u32StartVirAddr;
    
    VPSS_REG_AppRegInit(&(AppReg[0]),stHalInfo.u32AppVirtualAddr[0]);

    HI_DRV_MMZ_AllocAndMap("VPSS_RegBuf_1", HI_NULL,sizeof(VPSS_REG_S),
        	                                              0, &(stHalInfo.stRegBuf[1]));

    stHalInfo.u32AppPhyAddr[1] = stHalInfo.stRegBuf[1].u32StartPhyAddr;
    stHalInfo.u32AppVirtualAddr[1] = stHalInfo.stRegBuf[1].u32StartVirAddr;
    VPSS_REG_AppRegInit(&(AppReg[1]),stHalInfo.u32AppVirtualAddr[1]);

    HI_DRV_MMZ_AllocAndMap("VPSS_RegBuf_2", HI_NULL,sizeof(VPSS_REG_S),
        	                                              0, &(stHalInfo.stRegBuf[2]));

    stHalInfo.u32AppPhyAddr[2] = stHalInfo.stRegBuf[2].u32StartPhyAddr;
    stHalInfo.u32AppVirtualAddr[2] = stHalInfo.stRegBuf[2].u32StartVirAddr;
    
    VPSS_REG_AppRegInit(&(AppReg[2]),stHalInfo.u32AppVirtualAddr[2]);
    /*****************************************/
    
    VPSS_HAL_GetCaps(u32HalVersion, pstHalCaps);

    VPSS_REG_BaseRegInit(&PhyReg);
    VPSS_REG_ReSetCRG();

    VPSS_REG_SetIntMask((HI_U32)PhyReg,0xff);
    VPSS_REG_SetTimeOut((HI_U32)PhyReg,0xffffffff);
  
    return HI_SUCCESS;
}


HI_S32 VPSS_HAL_DelInit(HI_VOID)
{
    HI_DRV_MMZ_UnmapAndRelease(&(stHalInfo.stRegBuf[0]));
    HI_DRV_MMZ_UnmapAndRelease(&(stHalInfo.stRegBuf[1]));
    HI_DRV_MMZ_UnmapAndRelease(&(stHalInfo.stRegBuf[2]));

    stHalInfo.u32AppPhyAddr[0] = 0;
    stHalInfo.u32AppVirtualAddr[0] = 0;
    stHalInfo.u32AppPhyAddr[1] = 0;
    stHalInfo.u32AppVirtualAddr[1] = 0;

    return HI_SUCCESS;
}
HI_S32 VPSS_HAL_OpenClock(HI_VOID)
{
    VPSS_REG_OpenClock();
    return HI_SUCCESS;
}
HI_S32 VPSS_HAL_CloseClock(HI_VOID)
{
    VPSS_REG_CloseClock();
    return HI_SUCCESS;
}

HI_S32 VPSS_HAL_GetCaps(HI_U32 u32HalVersion,VPSS_HAL_CAP_S *pstHalCaps)
{
    if(u32HalVersion == HAL_VERSION_1 || u32HalVersion == HAL_VERSION_2)
    {
        pstHalCaps->u32Caps.u32 = 0x2707070f;

        pstHalCaps->PFN_VPSS_HAL_SetHalCfg = VPSS_HAL_SetHalCfg;
        pstHalCaps->PFN_VPSS_HAL_SetIntMask = VPSS_HAL_SetIntMask;
        pstHalCaps->PFN_VPSS_HAL_GetIntState = VPSS_HAL_GetIntState;
        pstHalCaps->PFN_VPSS_HAL_ClearIntState = VPSS_HAL_ClearIntState;
        pstHalCaps->PFN_VPSS_HAL_StartLogic = VPSS_HAL_StartLogic;
    }
    else
    {
        VPSS_FATAL("\nInvalid vpss driver version\t\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}


HI_S32 VPSS_HAL_SetDeiCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    #if 1
    HI_U32  VPSS_REFYADDR;
    HI_U32  VPSS_REFCADDR;
    HI_U32  VPSS_REFCRADDR;

    HI_U32  VPSS_NEXT1YADDR;
    HI_U32  VPSS_NEXT1CADDR;
    HI_U32  VPSS_NEXT1CRADDR;
    
   // HI_U32  VPSS_NEXT2YADDR;
   // HI_U32  VPSS_NEXT2CADDR;

    
    HI_U32  VPSS_NEXT3YADDR;
    HI_U32  VPSS_NEXT3CADDR;
    HI_U32  VPSS_NEXT3CRADDR;
    HI_U32  VPSS_DEI_ADDR;

    
    VPSS_ALG_DEICFG_S *pstDeiCfg;
    ALG_DEI_RTL_PARA_S *pstDeiDefaultPara;
    ALG_DEI_RTL_OUTPARA_S *pstDeiOutPara;
    
    ALG_MAD_RTL_PARA_S   *pstMadDefPara;
    ALG_FMD_RTL_INITPARA_S  *pstFmdDefPara; 

    ALG_FMD_RTL_OUTPARA_S *pstFmdOutPara;
	
	
    HI_U32 u32AppRegVAddr;
	
    pstDeiCfg = &(pstAlgCfg->stAuTunnelCfg.stDeiCfg);
    pstDeiDefaultPara = pstDeiCfg->pstDeiDefaultPara;
    
    pstFmdDefPara = &(pstDeiDefaultPara->stFmdRtlInitPara);
    pstMadDefPara = &(pstDeiDefaultPara->stMadRtlPara);
    
    pstDeiOutPara = &(pstDeiCfg->stDeiOutPara);
    pstFmdOutPara = &(pstDeiOutPara->stFmdRtlOutPara);
    
	
    u32AppRegVAddr = (HI_U32)AppReg[u32NodeID];

    if(pstAlgCfg->stSrcImgInfo.bProgressive == HI_TRUE || pstDeiCfg->bDei == HI_FALSE)
    {
        VPSS_REG_EnDei(u32AppRegVAddr,HI_FALSE);
        
        VPSS_REG_SetDeiParaAddr(u32AppRegVAddr,0x0);
        return HI_SUCCESS;
    }
    else
    {
        VPSS_REG_EnDei(u32AppRegVAddr,HI_TRUE);

        
        if(pstAlgCfg->stSrcImgInfo.bTopFieldFirst== HI_TRUE)
        {
            VPSS_REG_SetDeiTopFirst(u32AppRegVAddr,HI_TRUE);
        }
        else
        {
            VPSS_REG_SetDeiTopFirst(u32AppRegVAddr,HI_FALSE);
        }
        
        if(pstAlgCfg->stSrcImgInfo.enFieldMode == HI_DRV_FIELD_TOP)
        {
            VPSS_REG_SetDeiFieldMode(u32AppRegVAddr,HI_FALSE);
        }
        else
        {
            VPSS_REG_SetDeiFieldMode(u32AppRegVAddr,HI_TRUE);
        }

       

        VPSS_REFYADDR = pstDeiCfg->u32FieldAddr[0].u32PhyAddr_Y;
        VPSS_REFCADDR = pstDeiCfg->u32FieldAddr[0].u32PhyAddr_C;
        VPSS_REFCRADDR = pstDeiCfg->u32FieldAddr[0].u32PhyAddr_Cr;
        VPSS_REG_SetDeiAddr(u32AppRegVAddr,LAST_FIELD,VPSS_REFYADDR,VPSS_REFCADDR, VPSS_REFCRADDR);
        VPSS_REG_SetDeiStride(u32AppRegVAddr,LAST_FIELD,
                                pstDeiCfg->u32FieldAddr[0].u32Stride_Y,
                                pstDeiCfg->u32FieldAddr[0].u32Stride_C);

        /*********/

        /*********/
        VPSS_NEXT1YADDR = pstDeiCfg->u32FieldAddr[3].u32PhyAddr_Y;
        VPSS_NEXT1CADDR = pstDeiCfg->u32FieldAddr[3].u32PhyAddr_C;
        VPSS_NEXT1CRADDR = pstDeiCfg->u32FieldAddr[3].u32PhyAddr_Cr;
        VPSS_REG_SetDeiAddr(u32AppRegVAddr,CUR_FIELD,VPSS_NEXT1YADDR,VPSS_NEXT1CADDR, VPSS_NEXT1CRADDR);
        VPSS_REG_SetDeiStride(u32AppRegVAddr,CUR_FIELD,
                                pstDeiCfg->u32FieldAddr[3].u32Stride_Y,
                                pstDeiCfg->u32FieldAddr[3].u32Stride_C);
   
        /*********/

        /*********/
        VPSS_NEXT3YADDR = pstDeiCfg->u32FieldAddr[5].u32PhyAddr_Y;
        VPSS_NEXT3CADDR = pstDeiCfg->u32FieldAddr[5].u32PhyAddr_C;
        VPSS_NEXT3CRADDR = pstDeiCfg->u32FieldAddr[5].u32PhyAddr_Cr;
        VPSS_REG_SetDeiAddr(u32AppRegVAddr,NEXT_FRAME,VPSS_NEXT3YADDR,VPSS_NEXT3CADDR, VPSS_NEXT3CRADDR);
        VPSS_REG_SetDeiStride(u32AppRegVAddr,NEXT_FRAME,
                                pstDeiCfg->u32FieldAddr[5].u32Stride_Y,
                                pstDeiCfg->u32FieldAddr[5].u32Stride_C);


        if(pstAlgCfg->stSrcImgInfo.ePixFormat == HI_DRV_PIX_FMT_NV12_TILE_CMP
            || pstAlgCfg->stSrcImgInfo.ePixFormat == HI_DRV_PIX_FMT_NV21_TILE_CMP
            || pstAlgCfg->stSrcImgInfo.ePixFormat == HI_DRV_PIX_FMT_NV12_CMP
            || pstAlgCfg->stSrcImgInfo.ePixFormat == HI_DRV_PIX_FMT_NV21_CMP
            //||pstAlgCfg->stSrcImgInfo.ePixFormat == HI_DRV_PIX_FMT_YUV400_TILE_CMP
            )
        {
            VPSS_REG_SetDcmpHeadAddr(u32AppRegVAddr, LAST_FIELD, 
                pstDeiCfg->u32FieldAddr[0].u32PhyAddr_YHead, pstDeiCfg->u32FieldAddr[0].u32PhyAddr_CHead);
            VPSS_REG_SetDcmpHeadAddr(u32AppRegVAddr, CUR_FIELD, 
                pstDeiCfg->u32FieldAddr[3].u32PhyAddr_YHead, pstDeiCfg->u32FieldAddr[3].u32PhyAddr_CHead);
            VPSS_REG_SetDcmpHeadAddr(u32AppRegVAddr, NEXT_FRAME, 
                pstDeiCfg->u32FieldAddr[5].u32PhyAddr_YHead, pstDeiCfg->u32FieldAddr[5].u32PhyAddr_CHead);
        }
       
        /*********/

        VPSS_REG_SetModeEn(u32AppRegVAddr,REG_DIE_MODE_CHROME,HI_TRUE);
        VPSS_REG_SetModeEn(u32AppRegVAddr,REG_DIE_MODE_LUMA,HI_TRUE);

        VPSS_REG_SetOutSel(u32AppRegVAddr,REG_DIE_MODE_CHROME,pstFmdOutPara->DieOutSelChr);
        VPSS_REG_SetOutSel(u32AppRegVAddr,REG_DIE_MODE_LUMA,pstFmdOutPara->DieOutSelLum);

        switch(pstDeiCfg->stDeiPara.s32DeiMdChr)
        {
            case ALG_DEI_MODE_3FLD:
                VPSS_REG_SetMode(u32AppRegVAddr,REG_DIE_MODE_LUMA,0x2);
                VPSS_REG_SetMode(u32AppRegVAddr,REG_DIE_MODE_CHROME,0x2);
                break;
            case ALG_DEI_MODE_4FLD:
                VPSS_REG_SetMode(u32AppRegVAddr,REG_DIE_MODE_LUMA,0x1);
                VPSS_REG_SetMode(u32AppRegVAddr,REG_DIE_MODE_CHROME,0x1);
                break;
            case ALG_DEI_MODE_5FLD:
                VPSS_REG_SetMode(u32AppRegVAddr,REG_DIE_MODE_LUMA,0x0);
                VPSS_REG_SetMode(u32AppRegVAddr,REG_DIE_MODE_CHROME,0x0);
                break;
            default:
                VPSS_FATAL("\n DEI REG ERROR\n");
        }


        VPSS_REG_SetStInfo(u32AppRegVAddr,pstMadDefPara->bMadMvInfoStp);
        //VPSS_DIECTRL.bits.die_rst = 0x0;


        VPSS_REG_SetMfMax(u32AppRegVAddr,REG_DIE_MODE_CHROME,
                        pstMadDefPara->stMadLma2.bMfMaxChr);
        VPSS_REG_SetMfMax(u32AppRegVAddr,REG_DIE_MODE_LUMA,
                        pstMadDefPara->stMadLma2.bMfMaxLum);

        VPSS_REG_SetLuSceSdfMax(u32AppRegVAddr,
                        pstMadDefPara->stMadLma2.bSceSdfMaxLum);
        VPSS_REG_SetSadThd(u32AppRegVAddr,
                        pstMadDefPara->stMadLma2.s32SadThd);             
        //VPSS_DIELMA2.bits.die_st_mode = 0x0;


        VPSS_REG_SetMinIntern(u32AppRegVAddr,
                        pstMadDefPara->stMadInten.s32MinIntenVer);
        VPSS_REG_SetInternVer(u32AppRegVAddr,
                        pstMadDefPara->stMadInten.s32DirIntenVer);

        VPSS_REG_SetRangeScale(u32AppRegVAddr,
                        pstMadDefPara->stMadScl.s32RangeScale);
                        
        VPSS_REG_SetCK1(u32AppRegVAddr,
                        pstMadDefPara->stMadChk1.s32CkGain,
                        pstMadDefPara->stMadChk1.s32CkRangeGain,
                        pstMadDefPara->stMadChk1.s32CkMaxRange);
        VPSS_REG_SetCK2(u32AppRegVAddr,
                        pstMadDefPara->stMadChk2.s32CkGain,
                        pstMadDefPara->stMadChk2.s32CkRangeGain,
                        pstMadDefPara->stMadChk2.s32CkMaxRange);
                        

        VPSS_REG_SetDIR(u32AppRegVAddr,
                            &(pstMadDefPara->stMadDirMult.s32MultDir[0]));

        VPSS_REG_SetCcEn(u32AppRegVAddr,
                            pstMadDefPara->stMadCcrScl.bCcrEn);
        VPSS_REG_SetCcOffset(u32AppRegVAddr,
                            pstMadDefPara->stMadCcrScl.s32ChrMaOffset);
        VPSS_REG_SetCcDetMax(u32AppRegVAddr,
                            pstMadDefPara->stMadCcrScl.s32NCcrDetMax);
        VPSS_REG_SetCcDetThd(u32AppRegVAddr,
                            pstMadDefPara->stMadCcrScl.s32NccrDetThd);

        VPSS_REG_SetSimiMax(u32AppRegVAddr,
                            pstMadDefPara->stMadCcrScl.s32SimlrMax);
        VPSS_REG_SetSimiThd(u32AppRegVAddr,
                            pstMadDefPara->stMadCcrScl.s32SimlrThd);

        VPSS_REG_SetDetBlend(u32AppRegVAddr,
                            pstMadDefPara->stMadCcrScl.s32NCcrDetBld);                   
        VPSS_REG_SetMaxXChroma(u32AppRegVAddr,
                            pstMadDefPara->stMadCcrScl.s32XChrMax);

        VPSS_REG_SetIntpSclRat(u32AppRegVAddr,
                            &(pstMadDefPara->stMadIntpScl.s32IntpSclRat[0]));

        VPSS_REG_SetStrenThd(u32AppRegVAddr,
                            pstMadDefPara->stMadDirThd.s32StrengthThd);

        VPSS_REG_SetDirThd(u32AppRegVAddr,
                            pstMadDefPara->stMadDirThd.s32DirThd);
        VPSS_REG_SetBcGain(u32AppRegVAddr,
                            pstMadDefPara->stMadDirThd.s32BcGain);

        VPSS_REG_SetJitterMode(u32AppRegVAddr,
                            pstMadDefPara->stMadJitMtn.bJitMd);
        VPSS_REG_SetJitterFactor(u32AppRegVAddr,
                            pstMadDefPara->stMadJitMtn.s32JitFactor);
        VPSS_REG_SetJitterCoring(u32AppRegVAddr,
                            pstMadDefPara->stMadJitMtn.s32JitCoring);
        VPSS_REG_SetJitterGain(u32AppRegVAddr,
                            pstMadDefPara->stMadJitMtn.s32JitGain);
        VPSS_REG_SetJitterFilter(u32AppRegVAddr,
                            &(pstMadDefPara->stMadJitMtn.s32JitFlt[0]));

        VPSS_REG_SetMotionSlope(u32AppRegVAddr,
                            pstMadDefPara->stMadFldMtn.s32FldMtnCrvSlp);
        VPSS_REG_SetMotionCoring(u32AppRegVAddr,
                            pstMadDefPara->stMadFldMtn.s32FldMtnCoring);
        VPSS_REG_SetMotionGain(u32AppRegVAddr,
                            pstMadDefPara->stMadFldMtn.s32FldMtnGain);
        VPSS_REG_SetMotionHThd(u32AppRegVAddr,
                            pstMadDefPara->stMadFldMtn.s32FldMtnThdH);
        VPSS_REG_SetMotionLThd(u32AppRegVAddr,
                            pstMadDefPara->stMadFldMtn.s32FldMtnThdL);

        VPSS_REG_SetLumAvgThd(u32AppRegVAddr,
                            &(pstMadDefPara->stMadMtnCrvThd.s32LumAvgThd[0]));

        VPSS_REG_SetCurSlope(u32AppRegVAddr,
                            &(pstMadDefPara->stMadMtnCrvSlp.s32MtnCrvSlp[0]));


        VPSS_REG_SetMotionEn(u32AppRegVAddr,
                            pstMadDefPara->stMadMtnCrvRat.bMtnRatEn);
        VPSS_REG_SetMotionStart(u32AppRegVAddr,
                            pstMadDefPara->stMadMtnCrvRat.s32MtnRatStart);
        VPSS_REG_SetMotionRatio(u32AppRegVAddr,
                            &(pstMadDefPara->stMadMtnCrvRat.s32MtnCrvRat[0]));
        
        VPSS_REG_SetMotionMaxRatio(u32AppRegVAddr,pstMadDefPara->stMadMtnCrvRat.s32MtnRatMax);
        VPSS_REG_SetMotionMinRatio(u32AppRegVAddr,pstMadDefPara->stMadMtnCrvRat.s32MtnRatMin);

        VPSS_REG_SetMotionDiffThd(u32AppRegVAddr,
                            &(pstMadDefPara->stMadMtnDiffThd.s32MtnDiffThd[0]));


        VPSS_REG_SetMotionIIrSlope(u32AppRegVAddr,
                            &(pstMadDefPara->stMadMtnIirCrvSlp.s32MtnIirCrvSlp[0]));


        VPSS_REG_SetMotionIIrEn(u32AppRegVAddr,
                            pstMadDefPara->stMadMtnIirCrvRat.bMtnIirEn);
        VPSS_REG_SetMotionIIrStart(u32AppRegVAddr,
                            pstMadDefPara->stMadMtnIirCrvRat.s32MtnIirRatStart);
        VPSS_REG_SetIIrMaxRatio(u32AppRegVAddr,
                            pstMadDefPara->stMadMtnIirCrvRat.s32MtnIirRatMax);
        VPSS_REG_SetIIrMinRatio(u32AppRegVAddr,
                            pstMadDefPara->stMadMtnIirCrvRat.s32MtnIirRatMin);
        VPSS_REG_SetMotionIIrRatio(u32AppRegVAddr,
                            &(pstMadDefPara->stMadMtnIirCrvRat.s32MtnIirCrvRat[0]));

        VPSS_REG_SetRecWrMode(u32AppRegVAddr,
                            pstMadDefPara->stMadRecMode.bRecMdWrMd);
        VPSS_REG_SetRecEn(u32AppRegVAddr,
                            pstMadDefPara->stMadRecMode.bRecMdEn);
        VPSS_REG_SetRecMixMode(u32AppRegVAddr,
                            pstMadDefPara->stMadRecMode.bRecMdMixMd);
        VPSS_REG_SetRecScale(u32AppRegVAddr,
                            pstMadDefPara->stMadRecMode.s32RecMdScl);
        VPSS_REG_SetRecThd(u32AppRegVAddr,
                            pstMadDefPara->stMadRecMode.s32RecMdMtnThd);
        VPSS_REG_SetRecCoring(u32AppRegVAddr,
                            pstMadDefPara->stMadRecMode.s32RecMdFldMtnCoring);                          
        VPSS_REG_SetRecGain(u32AppRegVAddr,
                            pstMadDefPara->stMadRecMode.s32RecMdFldMtnGain);

        VPSS_REG_SetRecFldStep(u32AppRegVAddr,
                            &(pstMadDefPara->stMadHisMtnMd.s32RecMdFldMtnStp[0]));
        VPSS_REG_SetRecFrmStep(u32AppRegVAddr,
                            &(pstMadDefPara->stMadHisMtnMd.s32RecMdFrmMtnStp[0]));
        VPSS_REG_SetHisPreEn(u32AppRegVAddr,
                            pstMadDefPara->stMadHisMtnMd.bPreInfoEn);
        VPSS_REG_SetHisPpreEn(u32AppRegVAddr,
                            pstMadDefPara->stMadHisMtnMd.bPpreInfoEn);
        VPSS_REG_SetHisEn(u32AppRegVAddr,
                            pstMadDefPara->stMadHisMtnMd.bHisMtnEn);
        
        VPSS_REG_SetHisWrMode(u32AppRegVAddr,
                            pstMadDefPara->stMadHisMtnMd.bHisMtnWrMd);
        VPSS_REG_SetHisUseMode(u32AppRegVAddr,
                            pstMadDefPara->stMadHisMtnMd.bHisMtnUseMd);

        VPSS_REG_SetMorFlt(u32AppRegVAddr,
                            pstMadDefPara->stMadMorFlt.bMorFltEn,
                            pstMadDefPara->stMadMorFlt.s32MorFltSize,
                            pstMadDefPara->stMadMorFlt.s32MorFltThd);
        VPSS_REG_SetBlendEn(u32AppRegVAddr,pstMadDefPara->stMadMorFlt.bMedBldEn);
        VPSS_REG_SetDeflickerEn(u32AppRegVAddr,pstMadDefPara->stMadMorFlt.bDeflickerEn);
        VPSS_REG_AdjustGain(u32AppRegVAddr,pstMadDefPara->stMadMorFlt.s32AdjGain);
        
        VPSS_REG_SetCombLimit(u32AppRegVAddr,
                            pstMadDefPara->stMadCombChk.s32CombChkUpLmt,
                            pstMadDefPara->stMadCombChk.s32CombChkLowLmt);
        VPSS_REG_SetCombThd(u32AppRegVAddr,
                            pstMadDefPara->stMadCombChk.s32CombChkMinThdH,
                            pstMadDefPara->stMadCombChk.s32CombChkMinThdV);


    
        VPSS_REG_SetCombEn(u32AppRegVAddr,
                            pstMadDefPara->stMadCombChk.bCombChkEn);
        VPSS_REG_SetCombMdThd(u32AppRegVAddr,
                            pstMadDefPara->stMadCombChk.s32CombChkMdThd);
        VPSS_REG_SetCombEdgeThd(u32AppRegVAddr,
                            pstMadDefPara->stMadCombChk.s32CombChkEdgeThd);

        VPSS_REG_SetStWrAddr(u32AppRegVAddr,
                            pstMadDefPara->u32MadSTBufAddrW);
        VPSS_REG_SetStRdAddr(u32AppRegVAddr,
                            pstMadDefPara->u32MadSTBufAddrR);


        VPSS_REG_SetStStride(u32AppRegVAddr,
                            pstMadDefPara->u32MadSTBufStride);

    /*FMD*/
    VPSS_REG_SetDeiEdgeSmoothRatio(u32AppRegVAddr,pstFmdDefPara->EdgeSmoothRatio);
    
    
    VPSS_REG_SetDeiHistThd(u32AppRegVAddr,&(pstFmdDefPara->HistogramCtrl.THR[0]));
    VPSS_REG_SetDeiStillBlkThd(u32AppRegVAddr,pstFmdDefPara->DIFF_MOVBLK_THR);
      
    VPSS_REG_SetDeiUmThd(u32AppRegVAddr,&(pstFmdDefPara->UmCtrl.THR[0]));
  
    VPSS_REG_SetDeiCoring(u32AppRegVAddr,pstFmdDefPara->PccCtrl.CORING_BLK,
                            pstFmdDefPara->PccCtrl.CORING_NORM,
                            pstFmdDefPara->PccCtrl.CORING_TKR);
    /*
    printk("\n MOV_CORING_BLK %x ,MOV_CORING_NORM %x MOV_CORING_TKR %x\n",
            pstFmdDefPara->PccCtrl.MOV_CORING_BLK,pstFmdDefPara->PccCtrl.MOV_CORING_NORM,
            pstFmdDefPara->PccCtrl.MOV_CORING_TKR);
    */
    VPSS_REG_SetDeiMovCoring(u32AppRegVAddr,pstFmdDefPara->PccCtrl.MOV_CORING_BLK,
                                pstFmdDefPara->PccCtrl.MOV_CORING_NORM,
                                pstFmdDefPara->PccCtrl.MOV_CORING_TKR);

    VPSS_REG_SetDeiPccHThd(u32AppRegVAddr,pstFmdDefPara->PccCtrl.H_THR);
    
    VPSS_REG_SetDeiPccVThd(u32AppRegVAddr,&(pstFmdDefPara->PccCtrl.V_THR[0]));
    
    VPSS_REG_SetDeiItDiff(u32AppRegVAddr,&(pstFmdDefPara->ItdiffCtrl.THR[0]));
    
    VPSS_REG_SetDeiLasiCtrl(u32AppRegVAddr,pstFmdDefPara->LasiCtrl.THR,
                        pstFmdDefPara->LasiCtrl.EDGE_THR,
                        pstFmdDefPara->LasiCtrl.LASI_MOV_THR);



    VPSS_REG_SetDeiPdBitMove(u32AppRegVAddr,pstFmdDefPara->ScenChgCtrl.BITSMOV2R-6);
    
    VPSS_REG_SetDeiDirMch(u32AppRegVAddr,pstFmdOutPara->DirMch);

    VPSS_REG_SetEdgeSmooth(u32AppRegVAddr,pstFmdOutPara->EdgeSmoothEn);
        
        //HI_S32 VPSS_REG_SetDeiParaAddr(HI_U32 u32ParaAddr);
        VPSS_DEI_ADDR = stHalInfo.u32AppPhyAddr[u32NodeID] 
                        + (HI_U32)&(AppReg[u32NodeID]->VPSS_DIECTRL)-u32AppRegVAddr;
        VPSS_REG_SetDeiParaAddr(u32AppRegVAddr,
                            VPSS_DEI_ADDR);


        
        return HI_SUCCESS;
    }
    #endif
}


HI_S32 VPSS_HAL_GetRegPort(VPSS_ALG_PortCFG_S *pstAuPortCfg)
{
    HI_U32 u32Count;
    if(pstAuPortCfg->bFidelity == HI_TRUE)
    {
        if(stHalInfo.u32RegPortAlloc[VPSS_REG_SD] != 1)
        {
            pstAuPortCfg->eRegPort = VPSS_REG_SD;
            stHalInfo.u32RegPortAlloc[VPSS_REG_SD] = 1;
            return HI_SUCCESS;
        }
        else
        {
            return HI_FAILURE;
        }
        
    }
    else
    {
        for(u32Count = 0;
            u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER;
            u32Count ++)
        {
            if(stHalInfo.u32RegPortAlloc[u32Count] != 1)
            {
                pstAuPortCfg->eRegPort = u32Count;
                stHalInfo.u32RegPortAlloc[u32Count] = 1;
                return HI_SUCCESS;
            }
        }
    }

    return HI_FAILURE;
}

HI_S32 VPSS_HAL_SetHalCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    HI_U32 u32Count;
    HI_S32 s32Ret;
    VPSS_ALG_PortCFG_S *pstAuPortCfg;
    VPSS_ALG_FRMCFG_S *pstFrmCfg;
    HI_U32 u32AppVirAddr;

    //printk("\n SetHal %x \n",AppReg[u32NodeID]);
    u32AppVirAddr = (HI_U32)AppReg[u32NodeID];
    VPSS_REG_ResetAppReg(u32AppVirAddr);
    
    s32Ret = VPSS_HAL_SetSrcImg(pstAlgCfg,u32NodeID);
    s32Ret = VPSS_HAL_SetDcmpHead(pstAlgCfg,u32NodeID);
    
    #if DEF_TUNNEL_EN
    s32Ret = VPSS_HAL_SetCurTunl(pstAlgCfg,u32NodeID);
    #endif
    
    s32Ret = VPSS_HAL_SetDeiCfg(pstAlgCfg,u32NodeID);
    #if 1
    s32Ret = VPSS_HAL_SetRwzbCfg(pstAlgCfg,u32NodeID);
	#endif
    
    #if 1
    s32Ret = VPSS_HAL_SetDnrCfg(pstAlgCfg,u32NodeID);
	#endif
	
	#if 1
	s32Ret = VPSS_HAL_SetInCropCfg(pstAlgCfg,u32NodeID);
    #endif
	
    #if 1
    s32Ret = VPSS_HAL_SetVC1Cfg(pstAlgCfg,u32NodeID);
	#endif
    
    #if 1
    s32Ret = VPSS_HAL_SetUVCfg(pstAlgCfg,u32NodeID);
	#endif
	

    memset(stHalInfo.u32RegPortAlloc,0,sizeof(HI_U32)*DEF_HI_DRV_VPSS_PORT_MAX_NUMBER);
    
    for (u32Count = 0; u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER; u32Count ++)
    {
        pstAuPortCfg = &(pstAlgCfg->stAuPortCfg[u32Count]);

        
        pstFrmCfg = &(pstAuPortCfg->stDstFrmInfo);
        
        if (pstFrmCfg->u32Height != 0)
        {
            s32Ret = VPSS_HAL_GetRegPort(pstAuPortCfg);
            if (s32Ret != HI_SUCCESS)
            {
                VPSS_FATAL("HAL ERROR\n");
                return HI_FAILURE;
            }
            
            s32Ret = VPSS_HAL_SetDstFrm(u32Count,pstAuPortCfg->eRegPort,pstAlgCfg,u32NodeID);
            if (s32Ret != HI_SUCCESS)
            {
                return HI_FAILURE;
            }
            s32Ret = VPSS_HAL_SetPreZmeCfg(u32Count,pstAuPortCfg->eRegPort,pstAlgCfg,u32NodeID);
            
			#if 0
            if (pstAuPortCfg->eRegPort == VPSS_REG_SD
                && pstAuPortCfg->bFidelity == HI_TRUE)
            {
                VPSS_HAL_SetSDFidelity(HI_TRUE,u32NodeID);    
            }
            #endif

			s32Ret = VPSS_HAL_SetFlipCfg(u32Count, pstAuPortCfg->eRegPort, pstAlgCfg,u32NodeID);

            #if DEF_TUNNEL_EN
			s32Ret = VPSS_HAL_SetTunlCfg(u32Count,pstAlgCfg,pstAuPortCfg->eRegPort, u32NodeID);
            if (s32Ret != HI_SUCCESS)
            {
                return HI_FAILURE;
            }
			#endif
			
			#if 0
			if (pstAuPortCfg->eRegPort != VPSS_REG_SD && pstAuPortCfg->eRegPort != VPSS_REG_HD)
			{
			    s32Ret =VPSS_HAL_SetCscCfg(u32Count,pstAuPortCfg->eRegPort,pstAlgCfg,u32NodeID);
                if (s32Ret != HI_SUCCESS)
                {
                    return HI_FAILURE;
                }
            }
            #endif
            
            #if 1
            s32Ret = VPSS_HAL_SetZmeCfg(u32Count,pstAuPortCfg->eRegPort,pstAlgCfg,u32NodeID); 
            if (s32Ret != HI_SUCCESS)
            {
                return HI_FAILURE;
            }
            #endif
            
            #if 1
            VPSS_HAL_SetSharpCfg(u32Count,pstAuPortCfg->eRegPort,pstAlgCfg,u32NodeID); 
            if (s32Ret != HI_SUCCESS)
            {
                return HI_FAILURE;
            }
            #endif

            #if 1
			s32Ret = VPSS_HAL_SetAspCfg(u32Count,pstAuPortCfg->eRegPort,pstAlgCfg,u32NodeID);
            if (s32Ret != HI_SUCCESS)
            {
                return HI_FAILURE;
            }
            #endif
        }
    } 
    
    return HI_SUCCESS;
}

HI_S32 VPSS_HAL_SetIntMask(HI_U32 u32Data)
{
    VPSS_REG_SetIntMask((HI_U32)PhyReg, u32Data);

    return HI_SUCCESS;
}

HI_S32 VPSS_HAL_SetTimeOut(HI_U32 u32TimeOut)
{
    VPSS_REG_SetTimeOut((HI_U32)PhyReg,u32TimeOut);

    return HI_SUCCESS;
}


HI_S32 VPSS_HAL_GetIntState(HI_U32 *pData)
{
    VPSS_REG_GetIntState((HI_U32)PhyReg, pData);

    return HI_SUCCESS;
}

HI_S32 VPSS_HAL_ClearIntState(HI_U32 u32Data)
{
    VPSS_REG_ClearIntState((HI_U32)PhyReg, u32Data);

    return HI_SUCCESS;
}


HI_S32 VPSS_HAL_SetZmeCfg(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,
                            VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    VPSS_ALG_PortCFG_S *pstAuPortCfg;
    ALG_VZME_RTL_PARA_S *pstZmeCfg;
    VPSS_ALG_FRMCFG_S *pstFrmCfg;
    HI_U32 ih;
    HI_U32 iw;
    HI_U32 oh;
    HI_U32 ow;
    
    HI_U32 u32AppVAddr;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    
    pstAuPortCfg = &(pstAlgCfg->stAuPortCfg[u32PortID]);

    pstFrmCfg = &(pstAuPortCfg->stDstFrmInfo);
    
    if (pstFrmCfg->u32Height != 0)
    {
        pstZmeCfg = &(pstAuPortCfg->stZmeCfg);
        
        ih = pstZmeCfg->u32ZmeHIn;
        iw = pstZmeCfg->u32ZmeWIn;
        oh = pstZmeCfg->u32ZmeHOut;
        ow = pstZmeCfg->u32ZmeWOut;
        
        VPSS_REG_SetZmeEnable(u32AppVAddr,ePort,REG_ZME_MODE_ALL,HI_TRUE);
        
        VPSS_REG_SetZmeFirEnable(u32AppVAddr,ePort,
                                    REG_ZME_MODE_ALL,HI_TRUE);
        VPSS_REG_SetZmeMidEnable(u32AppVAddr,ePort,
                                    REG_ZME_MODE_ALL,HI_FALSE);
        VPSS_REG_SetZmePhase(u32AppVAddr,ePort,
                                    REG_ZME_MODE_VERL,pstZmeCfg->s32ZmeOffsetVL);
        VPSS_REG_SetZmePhase(u32AppVAddr,ePort,
                                    REG_ZME_MODE_VERC,pstZmeCfg->s32ZmeOffsetVC);
        
        VPSS_REG_SetZmeRatio(u32AppVAddr,ePort,REG_ZME_MODE_HOR,pstZmeCfg->u32ZmeRatioHL);
        VPSS_REG_SetZmeRatio(u32AppVAddr,ePort,REG_ZME_MODE_VER,pstZmeCfg->u32ZmeRatioVL); 
        if(ePort == VPSS_REG_SD)
        {
            VPSS_REG_SetZmeHfirOrder(u32AppVAddr,ePort,pstZmeCfg->bZmeOrder);
        }
        
        VPSS_REG_SetZmeInFmt(u32AppVAddr,ePort,pstZmeCfg->eZmeYCFmtIn);
        VPSS_REG_SetZmeOutFmt(u32AppVAddr,ePort,pstZmeCfg->eZmeYCFmtOut);
        
        VPSS_REG_SetZmeInSize(u32AppVAddr,ePort,ih,iw);
        VPSS_REG_SetZmeOutSize(u32AppVAddr,ePort,oh,ow);

        
        VPSS_REG_SetZmeCoefAddr(u32AppVAddr,ePort,REG_ZME_MODE_HORL,pstZmeCfg->u32ZmeCoefAddrHL);
        VPSS_REG_SetZmeCoefAddr(u32AppVAddr,ePort,REG_ZME_MODE_HORC,pstZmeCfg->u32ZmeCoefAddrHC);
        VPSS_REG_SetZmeCoefAddr(u32AppVAddr,ePort,REG_ZME_MODE_VERL,pstZmeCfg->u32ZmeCoefAddrVL);
        VPSS_REG_SetZmeCoefAddr(u32AppVAddr,ePort,REG_ZME_MODE_VERC,pstZmeCfg->u32ZmeCoefAddrVC);
        
    }

    return HI_SUCCESS;
}


HI_S32 VPSS_HAL_SetSrcImg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    VPSS_ALG_FRMCFG_S *pstSrcImg;
    HI_BOOL bInProgressive;
    HI_U32 u32YStride;
    HI_U32 u32CStride;
    HI_U32 u32YAddr;
    HI_U32 u32CAddr;
    HI_U32 u32CrAddr;
    HI_U32 u32AppVAddr;
    HI_DRV_BUF_ADDR_E eLReye;
    HI_BOOL bReadField;
    
    pstSrcImg = &(pstAlgCfg->stSrcImgInfo);
    eLReye = pstSrcImg->eLReye;
    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    if (pstSrcImg->ePixFormat == HI_DRV_PIX_FMT_NV21)
    {
        if(pstSrcImg->bProgressive == HI_TRUE)
        {
            if (pstSrcImg->enFieldMode == HI_DRV_FIELD_ALL)
            {
                bInProgressive = HI_TRUE;
            }
            else
            {
                bInProgressive = HI_TRUE;
            }
        }
        else
        {
            bInProgressive = HI_FALSE;
        }

        if (pstAlgCfg->stAuTunnelCfg.stDeiCfg.bDei == HI_TRUE)
        {
            bInProgressive = HI_TRUE;
        }
    }
    else
    {
        if(pstAlgCfg->stAuTunnelCfg.stDeiCfg.bDei == HI_TRUE || pstSrcImg->bProgressive == HI_TRUE)
        {
            bInProgressive = HI_TRUE;
        }
        else
        {
            bInProgressive = HI_FALSE;
        }
    }
    VPSS_REG_SetImgSize(u32AppVAddr,pstSrcImg->u32Height,pstSrcImg->u32Width,bInProgressive);


    if (pstSrcImg->ePixFormat == HI_DRV_PIX_FMT_NV21)
    {
        if(pstSrcImg->bProgressive == HI_TRUE)
        {
            if (pstSrcImg->enFieldMode == HI_DRV_FIELD_ALL)
            {
                u32YStride = pstSrcImg->stBufAddr[eLReye].u32Stride_Y;
                u32CStride = pstSrcImg->stBufAddr[eLReye].u32Stride_C;
            }
            else
            {
                bReadField = HI_FALSE;
                u32YStride = pstSrcImg->stBufAddr[eLReye].u32Stride_Y * 2;
                u32CStride = pstSrcImg->stBufAddr[eLReye].u32Stride_C * 2;
            }
        }
        else
        {    
            u32YStride = pstSrcImg->stBufAddr[eLReye].u32Stride_Y * 2;
            u32CStride = pstSrcImg->stBufAddr[eLReye].u32Stride_C * 2;
        }
    }
    else
    {
        bReadField = HI_TRUE;
        u32YStride = pstSrcImg->stBufAddr[eLReye].u32Stride_Y;
        u32CStride = pstSrcImg->stBufAddr[eLReye].u32Stride_C;
    }
    VPSS_REG_SetImgStride(u32AppVAddr,CUR_FIELD,u32YStride,u32CStride);
    
    if(pstSrcImg->enFieldMode == HI_DRV_FIELD_BOTTOM)
    {
        u32YAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_Y 
                            + pstSrcImg->stBufAddr[eLReye].u32Stride_Y;
        u32CAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_C
                            + pstSrcImg->stBufAddr[eLReye].u32Stride_C;
        u32CrAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_Cr
                            + pstSrcImg->stBufAddr[eLReye].u32Stride_Cr;
    }
    else
    {
        u32YAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_Y;
        u32CAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_C;
        u32CrAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_Cr;
    }
    
    VPSS_REG_SetImgAddr(u32AppVAddr,CUR_FIELD,u32YAddr,u32CAddr, u32CrAddr);
    VPSS_REG_SetImgFormat(u32AppVAddr,pstSrcImg->ePixFormat);

    VPSS_REG_SetImgReadMod(u32AppVAddr, !pstSrcImg->bProgressive);
    
    return HI_SUCCESS;
}
HI_S32 VPSS_HAL_SetDcmpHead(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    VPSS_ALG_FRMCFG_S *pstSrcImg;
    HI_U32 u32YHeadAddr;
    HI_U32 u32CHeadAddr;
    HI_U32 u32AppVAddr;
    HI_DRV_BUF_ADDR_E eLReye;

    
    pstSrcImg = &(pstAlgCfg->stSrcImgInfo);
    eLReye = pstSrcImg->eLReye;
    u32AppVAddr = (HI_U32)AppReg[u32NodeID];

    if(pstSrcImg->ePixFormat == HI_DRV_PIX_FMT_NV12_TILE_CMP 
        || pstSrcImg->ePixFormat == HI_DRV_PIX_FMT_NV21_TILE_CMP
        || pstSrcImg->ePixFormat == HI_DRV_PIX_FMT_NV12_CMP
        || pstSrcImg->ePixFormat == HI_DRV_PIX_FMT_NV21_CMP
        //|| pstSrcImg->ePixFormat == HI_DRV_PIX_FMT_YUV400_TILE_CMP
        )
    {
        u32YHeadAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_YHead;
        u32CHeadAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_CHead;
        VPSS_REG_SetDcmpEn(u32AppVAddr, HI_TRUE);
        VPSS_REG_SetDcmpHeadAddr(u32AppVAddr, CUR_FIELD, u32YHeadAddr, u32CHeadAddr);
    }
    else
    {
        VPSS_REG_SetDcmpEn(u32AppVAddr, HI_FALSE);
    }
    
    return HI_SUCCESS;
}
#if DEF_TUNNEL_EN
HI_S32 VPSS_HAL_SetCurTunl(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    VPSS_ALG_FRMCFG_S *pstSrcImg;
    HI_U32 u32CurTunlRdInterval;
    HI_U32 u32CurTunlAddr;
    HI_U32 u32AppVAddr;
    HI_DRV_BUF_ADDR_E eLReye;

    
    pstSrcImg = &(pstAlgCfg->stSrcImgInfo);
    eLReye = pstSrcImg->eLReye;
    u32AppVAddr = (HI_U32)AppReg[u32NodeID];

    if(pstSrcImg->stTunnelInfo.bTunnel == HI_TRUE)
    {
        u32CurTunlRdInterval = 10;
        u32CurTunlAddr = pstSrcImg->stTunnelInfo.u32TunnelAddr;
        VPSS_REG_SetCurTunlEn(u32AppVAddr, HI_TRUE);
        VPSS_REG_SetCurTunlInterval(u32AppVAddr, CUR_FRAME ,u32CurTunlRdInterval);
        VPSS_REG_SetCurTunlAddr(u32AppVAddr, CUR_FRAME, u32CurTunlAddr);
    }
    else 
    {
        VPSS_REG_SetCurTunlEn(u32AppVAddr, HI_FALSE);
    }
    
    return HI_SUCCESS;
}
#endif

HI_S32 VPSS_HAL_SetTunlCfg(HI_U32 u32PortID,VPSS_ALG_CFG_S *pstAlgCfg,VPSS_REG_PORT_E ePort,HI_U32 u32NodeID)
{
    VPSS_ALG_OUTTUNNEL_S *pstTunnelCfg;
    VPSS_ALG_PortCFG_S *pstAuPortCfg;
    HI_U32 u32TunlFinishLine;
    HI_U32 u32PhyTunlAddr;
    HI_U32 u32AppVAddr;

    REG_TUNLPOS_E s32TunlMode;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    
    pstAuPortCfg = &(pstAlgCfg->stAuPortCfg[u32PortID]);
        
    pstTunnelCfg = &(pstAuPortCfg->stTunnelCfg);

    if(pstTunnelCfg->bTunnel == HI_TRUE)
    {
        u32TunlFinishLine = pstTunnelCfg->u32TunnelLevel;
        u32PhyTunlAddr = pstTunnelCfg->u32TunnelAddr;

        s32TunlMode = ROW_16_WIRTE_TUNL;
        VPSS_REG_SetTunlEn(u32AppVAddr, ePort, HI_TRUE);
        VPSS_REG_SetTunlFinishLine(u32AppVAddr, ePort,u32TunlFinishLine);
        VPSS_REG_SetTunlMode(u32AppVAddr, ePort, s32TunlMode);
        VPSS_REG_SetTunlAddr(u32AppVAddr, ePort,u32PhyTunlAddr);
    }
    else
    {
        VPSS_REG_SetTunlEn(u32AppVAddr, ePort, HI_FALSE);
    }
    
    return HI_SUCCESS;
}
HI_S32 VPSS_HAL_SetCscCfg(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    ALG_CSC_RTL_PARA_S *pstCscCfg;
    HI_U32 u32AppVAddr;
    HI_BOOL bEnCSC;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    pstCscCfg = &(pstAlgCfg->stAuPortCfg[u32PortID].stCscCfg);
    
    bEnCSC = HI_TRUE;
    VPSS_REG_SetCscEn(u32AppVAddr,ePort,bEnCSC);
    #if 0
    printk("s32CscDcIn_0: %d, s32CscDcIn_1 :%d, s32CscDcIn_2: %d \n", pstCscCfg->s32CscDcIn_0,pstCscCfg->s32CscDcIn_1,pstCscCfg->s32CscDcIn_2);
    printk("s32CscDcOut_0: %d, s32CscDcOut_1 :%d, s32CscDcOut_2: %d\n", pstCscCfg->s32CscDcOut_0,pstCscCfg->s32CscDcOut_1,pstCscCfg->s32CscDcOut_2);
    printk("s32CscCoef_00: %d, s32CscCoef_01 :%d, s32CscCoef_02: %d\n", pstCscCfg->s32CscCoef_00,pstCscCfg->s32CscCoef_01,pstCscCfg->s32CscCoef_02);
    printk("s32CscCoef_10: %d, s32CscCoef_11 :%d, s32CscCoef_12: %d\n", pstCscCfg->s32CscCoef_10,pstCscCfg->s32CscCoef_11,pstCscCfg->s32CscCoef_12);
    printk("s32CscCoef_20: %d, s32CscCoef_21 :%d, s32CscCoef_22: %d\n", pstCscCfg->s32CscCoef_20,pstCscCfg->s32CscCoef_21,pstCscCfg->s32CscCoef_22);
    
    //VPSS_REG_SetCscIdc(u32AppVAddr,ePort,-128,-128,-16);
    //VPSS_REG_SetCscOdc(u32AppVAddr,ePort,0,0,0);
    #endif
    
    VPSS_REG_SetCscIdc(u32AppVAddr,ePort,pstCscCfg->s32CscDcIn_0,pstCscCfg->s32CscDcIn_1,pstCscCfg->s32CscDcIn_2);
    VPSS_REG_SetCscOdc(u32AppVAddr,ePort,pstCscCfg->s32CscDcOut_0,pstCscCfg->s32CscDcOut_1,pstCscCfg->s32CscDcOut_2);

    VPSS_REG_SetCscP00(u32AppVAddr,ePort,pstCscCfg->s32CscCoef_00);
    VPSS_REG_SetCscP01(u32AppVAddr,ePort,pstCscCfg->s32CscCoef_01);
    VPSS_REG_SetCscP02(u32AppVAddr,ePort,pstCscCfg->s32CscCoef_02);
    
    VPSS_REG_SetCscP10(u32AppVAddr,ePort,pstCscCfg->s32CscCoef_10);
    VPSS_REG_SetCscP11(u32AppVAddr,ePort,pstCscCfg->s32CscCoef_11);
    VPSS_REG_SetCscP12(u32AppVAddr,ePort,pstCscCfg->s32CscCoef_12);
    
    VPSS_REG_SetCscP20(u32AppVAddr,ePort,pstCscCfg->s32CscCoef_20);
    VPSS_REG_SetCscP21(u32AppVAddr,ePort,pstCscCfg->s32CscCoef_21);
    VPSS_REG_SetCscP22(u32AppVAddr,ePort,pstCscCfg->s32CscCoef_22);

    return HI_SUCCESS; 

}

HI_S32 VPSS_HAL_SetDstFrm(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,   
                            VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    VPSS_ALG_FRMCFG_S *pstFrmCfg;
    VPSS_ALG_PortCFG_S *pstAuPortCfg;
    HI_U32 u32YStride;
    HI_U32 u32CStride;
    HI_U32 u32YAddr;
    HI_U32 u32CAddr;
    HI_U32 u32Height;
    HI_U32 u32Width;
    HI_DRV_BUF_ADDR_E eLReye;
    HI_U32 u32AppVAddr;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    
    pstAuPortCfg = &(pstAlgCfg->stAuPortCfg[u32PortID]);
        
    pstFrmCfg = &(pstAuPortCfg->stDstFrmInfo);
    eLReye = pstFrmCfg->eLReye;
    if (pstFrmCfg->u32Height != 0)
    {

        VPSS_REG_EnPort(u32AppVAddr,ePort,HI_TRUE);
        u32YStride = pstFrmCfg->stBufAddr[eLReye].u32Stride_Y;
        u32CStride = pstFrmCfg->stBufAddr[eLReye].u32Stride_C;
        u32YAddr = pstFrmCfg->stBufAddr[eLReye].u32PhyAddr_Y;
        u32CAddr = pstFrmCfg->stBufAddr[eLReye].u32PhyAddr_C;
        u32Height = pstFrmCfg->u32Height;
        u32Width = pstFrmCfg->u32Width;
        VPSS_REG_SetFrmSize(u32AppVAddr,ePort,u32Height,u32Width);
        VPSS_REG_SetFrmAddr(u32AppVAddr,ePort,u32YAddr,u32CAddr);
        VPSS_REG_SetFrmStride(u32AppVAddr,ePort,u32YStride,u32CStride);

        VPSS_REG_SetFrmFormat(u32AppVAddr,ePort,pstFrmCfg->ePixFormat);
    }
    else
    {
        VPSS_REG_EnPort(u32AppVAddr,ePort,HI_FALSE);
    }

    return HI_SUCCESS;
}

HI_S32 VPSS_HAL_SetUVCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
	HI_U32 u32AppVAddr;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    VPSS_REG_SetUVConvertEn(u32AppVAddr,pstAlgCfg->stAuTunnelCfg.u32EnUVCovert);

    return HI_SUCCESS;
}

HI_S32 VPSS_HAL_StartLogic(VPSS_HAL_NODE_E eNodeType)
{
    switch(eNodeType)
    {
        case HAL_NODE_NORMAL:
            VPSS_REG_StartLogic(0, 
                                (HI_U32)stHalInfo.u32AppVirtualAddr[0]);
            mb();                            
            VPSS_REG_StartLogic((HI_U32)stHalInfo.u32AppPhyAddr[0], (HI_U32)PhyReg);
            break;
        case HAL_NODE_FPK:
            VPSS_REG_StartLogic(0, 
                                (HI_U32)stHalInfo.u32AppVirtualAddr[1]);
            VPSS_REG_StartLogic((HI_U32)stHalInfo.u32AppPhyAddr[1], 
                                (HI_U32)stHalInfo.u32AppVirtualAddr[0]);
            mb();
            VPSS_REG_StartLogic((HI_U32)stHalInfo.u32AppPhyAddr[0], (HI_U32)PhyReg);
            break;
        case HAL_NODE_2D_PRE:
            VPSS_REG_StartLogic(0, 
                                (HI_U32)stHalInfo.u32AppVirtualAddr[0]);
            VPSS_REG_StartLogic((HI_U32)stHalInfo.u32AppPhyAddr[0], 
                                    (HI_U32)stHalInfo.u32AppVirtualAddr[2]);
            mb();
            VPSS_REG_StartLogic((HI_U32)stHalInfo.u32AppPhyAddr[2], (HI_U32)PhyReg);
            break;
        case HAL_NODE_3D_PRE:
            VPSS_REG_StartLogic((HI_U32)stHalInfo.u32AppPhyAddr[0], 
                                    (HI_U32)stHalInfo.u32AppVirtualAddr[2]);
            VPSS_REG_StartLogic((HI_U32)stHalInfo.u32AppPhyAddr[1], 
                                (HI_U32)stHalInfo.u32AppVirtualAddr[0]);
            mb();
            VPSS_REG_StartLogic((HI_U32)stHalInfo.u32AppPhyAddr[2], (HI_U32)PhyReg);
            break;
        default:
            VPSS_FATAL("NodeType Error %d\n",eNodeType);
            break;
            
    }
    return HI_SUCCESS;
}

HI_S32 VPSS_HAL_SetRwzbCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    VPSS_ALG_RWZBCFG_S *pstRwzbCfg;

    HI_U32 u32Count;
    HI_U32 u32AppVAddr;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    
	
    pstRwzbCfg = &(pstAlgCfg->stAuTunnelCfg.stRwzbCfg);

    if( pstRwzbCfg->u32EnRwzb == 0x1)
    {
        for(u32Count = 0; u32Count < 6; u32Count++)
        {
            VPSS_REG_SetDetBlk(u32AppVAddr,u32Count,&(pstRwzbCfg->u32Addr[u32Count][0]));
        }
    }
    VPSS_REG_SetDetEn(u32AppVAddr,pstRwzbCfg->u32EnRwzb);
    VPSS_REG_SetDetMode(u32AppVAddr,pstRwzbCfg->u32Mode);

    return HI_SUCCESS;
}

HI_VOID VPSS_HAL_GetDetPixel(HI_U32 BlkNum, HI_U8* pstData)
{
    VPSS_REG_GetDetPixel((HI_U32)PhyReg,BlkNum,pstData);
}


HI_S32 VPSS_HAL_GetDeiDate(ALG_FMD_RTL_STATPARA_S *pstFmdRtlStatPara)
{
    HI_S32 s32HstBin[4];
    HI_S32 VPSS_PDFRMITDIFF;

    HI_S32 VPSS_PDUMMATCH0;
    HI_S32 VPSS_PDUMNOMATCH0;
    HI_S32 VPSS_PDUMMATCH1;
    HI_S32 VPSS_PDUMNOMATCH1;

    HI_S32 VPSS_PDLASICNT14;
    HI_S32 VPSS_PDLASICNT32;
    HI_S32 VPSS_PDLASICNT34;

    HI_S32 VPSS_PDICHD;

    HI_S32 s32BlkSad[16];
    HI_U32 u32Count;

    
    HI_S32 VPSS_PDPCCFFWD;
    HI_S32 VPSS_PDPCCFWD;
    HI_S32 VPSS_PDPCCBWD;
    HI_S32 VPSS_PDPCCCRSS;
    HI_S32 VPSS_PDPCCPW;
    HI_S32 VPSS_PDPCCFWDTKR;
    HI_S32 VPSS_PDPCCBWDTKR;

    VPSS_REG_GetHisBin((HI_U32)PhyReg,&(s32HstBin[0]));
    pstFmdRtlStatPara->frmHstBin.HISTOGRAM_BIN_1 = s32HstBin[0];
    pstFmdRtlStatPara->frmHstBin.HISTOGRAM_BIN_2 = s32HstBin[1];
    pstFmdRtlStatPara->frmHstBin.HISTOGRAM_BIN_3 = s32HstBin[2];
    pstFmdRtlStatPara->frmHstBin.HISTOGRAM_BIN_4 = s32HstBin[3];

    
    VPSS_REG_GetItDiff((HI_U32)PhyReg,&VPSS_PDFRMITDIFF);
    pstFmdRtlStatPara->frmITDiff = VPSS_PDFRMITDIFF;

    
    VPSS_REG_GetPccData((HI_U32)PhyReg,&VPSS_PDPCCFFWD,
                        &VPSS_PDPCCFWD,&VPSS_PDPCCBWD,
                        &VPSS_PDPCCCRSS,&VPSS_PDPCCPW,
                        &VPSS_PDPCCFWDTKR,&VPSS_PDPCCBWDTKR);
                        
    pstFmdRtlStatPara->frmPcc.PCC_FFWD = VPSS_PDPCCFFWD;
    pstFmdRtlStatPara->frmPcc.PCC_FWD  = VPSS_PDPCCFWD;
    pstFmdRtlStatPara->frmPcc.PCC_BWD  = VPSS_PDPCCBWD;
    pstFmdRtlStatPara->frmPcc.PCC_CRSS = VPSS_PDPCCCRSS;
    pstFmdRtlStatPara->frmPcc.pixel_weave = VPSS_PDPCCPW;
    pstFmdRtlStatPara->frmPcc.PCC_FWD_TKR = VPSS_PDPCCFWDTKR;
    pstFmdRtlStatPara->frmPcc.PCC_BWD_TKR = VPSS_PDPCCBWDTKR;

    VPSS_REG_GetPdMatch((HI_U32)PhyReg,
                            &VPSS_PDUMMATCH0,&VPSS_PDUMNOMATCH0,
                            &VPSS_PDUMMATCH1,&VPSS_PDUMNOMATCH1);
    pstFmdRtlStatPara->frmUm.match_UM = VPSS_PDUMMATCH0;
    pstFmdRtlStatPara->frmUm.nonmatch_UM = VPSS_PDUMNOMATCH0;
    pstFmdRtlStatPara->frmUm.match_UM2 = VPSS_PDUMMATCH1;
    pstFmdRtlStatPara->frmUm.nonmatch_UM2 = VPSS_PDUMNOMATCH1;

    VPSS_REG_GetLasiCnt((HI_U32)PhyReg,&VPSS_PDLASICNT14,
                        &VPSS_PDLASICNT32,&VPSS_PDLASICNT34);
    pstFmdRtlStatPara->lasiStat.lasiCnt14 = VPSS_PDLASICNT14;
    pstFmdRtlStatPara->lasiStat.lasiCnt32 = VPSS_PDLASICNT32;
    pstFmdRtlStatPara->lasiStat.lasiCnt34 = VPSS_PDLASICNT34;

    VPSS_REG_GetPdIchd((HI_U32)PhyReg,&VPSS_PDICHD);
    pstFmdRtlStatPara->SceneChangeInfo.iCHD = VPSS_PDICHD;

    // TODO:StillBlkCnt
    //pstFmdRtlStatPara->StillBlkInfo.StillBlkCnt
    VPSS_REG_GetBlkSad((HI_U32)PhyReg,&s32BlkSad[0]);
    for(u32Count = 0; u32Count < 16; u32Count ++)
    {
        pstFmdRtlStatPara->StillBlkInfo.BlkSad[u32Count] = s32BlkSad[u32Count];
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_HAL_SetVC1Cfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    VPSS_ALG_VC1CFG_S *pstVC1Cfg;
    VPSS_ALG_VC1INFO_S *pstVc1Info;
    HI_U32 u32Count;
	HI_U32 u32AppVAddr;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
	
    pstVC1Cfg = &(pstAlgCfg->stAuTunnelCfg.stVC1Cfg);

    
    VPSS_REG_SetVc1En(u32AppVAddr, pstVC1Cfg->u32EnVc1);
    for(u32Count = 0; u32Count < 3; u32Count ++)
    {
        pstVc1Info = &(pstVC1Cfg->stVc1Info[u32Count]);
        
        VPSS_REG_SetVc1Profile(u32AppVAddr,u32Count,pstVc1Info->u8VC1Profile);
        VPSS_REG_SetVc1Map(u32AppVAddr,u32Count,
                            pstVc1Info->u8RangeMapY,pstVc1Info->u8RangeMapUV,
                            pstVc1Info->u8BtmRangeMapY,pstVc1Info->u8BtmRangeMapUV);
        VPSS_REG_SetVc1MapFlag(u32AppVAddr,u32Count,
                            pstVc1Info->u8RangeMapYFlag,pstVc1Info->u8RangeMapUVFlag,
                            pstVc1Info->u8BtmRangeMapYFlag,pstVc1Info->u8BtmRangeMapUVFlag);
        VPSS_REG_SetVc1RangeEn(u32AppVAddr,u32Count,pstVc1Info->s32RangedFrm);
    }
    return HI_SUCCESS;
}

#if 1
HI_S32 VPSS_HAL_SetDnrCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    ALG_DNR_RTL_PARA_S *pstDnrCfg;
	HI_U32 u32AppVAddr;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    pstDnrCfg = &(pstAlgCfg->stAuTunnelCfg.stDnrCfg);

    /*
    if (pstDnrCfg->drEn == HI_TRUE || pstDnrCfg->dbEn == HI_TRUE)
    {
        VPSS_REG_SetDnrInfoAddr(u32AppVAddr,
                                pstDnrCfg->u32YInfoAddr,
                                pstDnrCfg->u32CInfoAddr,
                                pstDnrCfg->u32YInfoStride,
                                pstDnrCfg->u32CInfoStride);
    }
    */
    if (pstDnrCfg->stDnrCtrl.drEn == HI_TRUE)
    {
        VPSS_REG_SetDREn(u32AppVAddr, pstDnrCfg->stDnrCtrl.drEn);
        VPSS_REG_SetDRPara(u32AppVAddr,pstDnrCfg->stDrThd.drthrflat3x3zone,
                            pstDnrCfg->stDrThd.drthrmaxsimilarpixdiff,
                            pstDnrCfg->stDrThd.dralphascale,
                            pstDnrCfg->stDrThd.drbetascale);
    }
    else
    {
        VPSS_REG_SetDREn(u32AppVAddr, pstDnrCfg->stDnrCtrl.drEn);
    }
    
    if(pstDnrCfg->stDnrCtrl.dbEn == HI_TRUE)
    {
        VPSS_REG_SetDBEn(u32AppVAddr,pstDnrCfg->stDnrCtrl.dbEn);
        VPSS_REG_SetDBVH(u32AppVAddr,pstDnrCfg->stDnrCtrl.dbEnVert, pstDnrCfg->stDnrCtrl.dbEnHort);        
        VPSS_REG_SetEdgeThd(u32AppVAddr,pstDnrCfg->stDbThd.dbthredge);
        //VPSS_REG_SetVerProg(u32AppVAddr,pstDnrCfg->stDbThd.dbvertasprog);
        VPSS_REG_SetThrGrad(u32AppVAddr,pstDnrCfg->stDbThd.dbThrMaxGrad);
        VPSS_REG_SetTextEn(u32AppVAddr,pstDnrCfg->stDbThd.dbTextEn);
        VPSS_REG_SetWeakFlt(u32AppVAddr,pstDnrCfg->stDbThd.dbuseweakflt);
        VPSS_REG_SetMaxDiff(u32AppVAddr,
                            pstDnrCfg->stDbThd.dbthrmaxdiffvert,
                            pstDnrCfg->stDbThd.dbthrmaxdiffhor);
        VPSS_REG_SetLeastDiff(u32AppVAddr,
                            pstDnrCfg->stDbThd.dbthrleastblkdiffvert,
                            pstDnrCfg->stDbThd.dbthrleastblkdiffhor);
        VPSS_REG_SetScale(u32AppVAddr,pstDnrCfg->stDbThd.dbalphascale,
                                    pstDnrCfg->stDbThd.dbbetascale);
        VPSS_REG_SetSmoothThd(u32AppVAddr,pstDnrCfg->stDbThd.dbthrlagesmooth);
        VPSS_REG_SetQpThd(u32AppVAddr,pstDnrCfg->stDbThd.detailimgqpthr);
        VPSS_REG_SetPicestQp(u32AppVAddr,pstDnrCfg->stDbThd.picestqp);
        VPSS_REG_SetDnrInfo(u32AppVAddr,
                            pstDnrCfg->stDetCtrl.ArThrInterlaceCnt,
                            pstDnrCfg->stDetCtrl.ArThrIntlColCnt,
                            pstDnrCfg->stDetCtrl.DrThrEdgeGrad,
                            pstDnrCfg->stDetCtrl.DrThrPeak8x8Zone);

    }
    else
    {
        VPSS_REG_SetDBEn(u32AppVAddr,pstDnrCfg->stDnrCtrl.dbEn);
    }

    
    return HI_SUCCESS;
}
#endif

HI_S32 VPSS_HAL_SetSharpCfg(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    ALG_VTI_RTL_PARA_S *pstSharpCfg;
    HI_U32 u32AppVAddr;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    pstSharpCfg = &(pstAlgCfg->stAuPortCfg[u32PortID].stSharpCfg);

    VPSS_REG_SetLTIEn(u32AppVAddr,ePort,pstSharpCfg->bEnLTI);
    
    VPSS_REG_SetLGainRatio(u32AppVAddr,ePort,pstSharpCfg->s16LTICompsatRatio);
    VPSS_REG_SetLGainCoef(u32AppVAddr,ePort,&(pstSharpCfg->u8LTICompsatMuti[0]));
    VPSS_REG_SetLMixingRatio(u32AppVAddr,ePort,pstSharpCfg->u8LTIMixingRatio);
    VPSS_REG_SetLCoringThd(u32AppVAddr,ePort,pstSharpCfg->u16LTICoringThrsh);
    VPSS_REG_SetLSwing(u32AppVAddr,ePort,
                        pstSharpCfg->u16LTIUnderSwingThrsh,
                        pstSharpCfg->u16LTIOverSwingThrsh);
    VPSS_REG_SetLHpassCoef(u32AppVAddr,ePort,&(pstSharpCfg->s8LTIHPTmp[0]));
    VPSS_REG_SetLHfreqThd(u32AppVAddr,ePort,&(pstSharpCfg->u16LTIHFreqThrsh[0]));

    VPSS_REG_SetCTIEn(u32AppVAddr,ePort,pstSharpCfg->bEnCTI);
    VPSS_REG_SetCGainRatio(u32AppVAddr,ePort,pstSharpCfg->s16CTICompsatRatio);
    VPSS_REG_SetCMixingRatio(u32AppVAddr,ePort,pstSharpCfg->u8CTIMixingRatio);
    VPSS_REG_SetCCoringThd(u32AppVAddr,ePort,pstSharpCfg->u16CTICoringThrsh);
    VPSS_REG_SetCSwing(u32AppVAddr,ePort,
                        pstSharpCfg->u16CTIUnderSwingThrsh,
                        pstSharpCfg->u16CTIOverSwingThrsh);
    VPSS_REG_SetCHpassCoef(u32AppVAddr,ePort,&(pstSharpCfg->s8CTIHPTmp[0]));  
    
    return HI_SUCCESS; 

}

#if 1
HI_S32 VPSS_HAL_SetAspCfg(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,
                            VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    VPSS_ALG_PortCFG_S *pstAuPortCfg;
    HI_U32 u32XFPos;
    HI_U32 u32YFPos;
    HI_U32 u32Height;
    HI_U32 u32Width;
    
    HI_U32 u32AppVAddr;


    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    pstAuPortCfg = &(pstAlgCfg->stAuPortCfg[u32PortID]);
    VPSS_REG_SetLBAEn(u32AppVAddr,ePort,pstAuPortCfg->stAspCfg.bEnAsp);

    VPSS_REG_SetLBABg(u32AppVAddr,ePort,
            pstAuPortCfg->stAspCfg.u32BgColor,
            pstAuPortCfg->stAspCfg.u32BgAlpha);
            
    if(pstAuPortCfg->stAspCfg.bEnAsp == HI_TRUE)
    {
        if(pstAuPortCfg->stAspCfg.bEnCrop == HI_TRUE)
        {
            u32XFPos = pstAuPortCfg->stAspCfg.stCropWnd.s32X;
            u32YFPos = pstAuPortCfg->stAspCfg.stCropWnd.s32Y;
            u32Height = pstAuPortCfg->stAspCfg.stCropWnd.s32Height;
            u32Width = pstAuPortCfg->stAspCfg.stCropWnd.s32Width;
            VPSS_REG_SetOutCropVidPos(u32AppVAddr,ePort,u32XFPos,u32YFPos,
                                        u32Height,u32Width);
            
        }
        u32XFPos = pstAuPortCfg->stAspCfg.stOutWnd.s32X;
        u32YFPos = pstAuPortCfg->stAspCfg.stOutWnd.s32Y;
        u32Height = pstAuPortCfg->stAspCfg.stOutWnd.s32Height;
        u32Width = pstAuPortCfg->stAspCfg.stOutWnd.s32Width;
        VPSS_REG_SetLBAVidPos(u32AppVAddr,ePort,u32XFPos,u32YFPos,
                                    u32Height,u32Width);
        u32XFPos = 0;
        u32YFPos = 0;
        u32Height = pstAuPortCfg->stDstFrmInfo.u32Height;
        u32Width = pstAuPortCfg->stDstFrmInfo.u32Width;                            
        VPSS_REG_SetLBADispPos(u32AppVAddr,ePort,u32XFPos,u32YFPos,
                                    u32Height,u32Width);
        #if 0
        HI_PRINT("----->HAL Zme H %d W %d \n"
               "CropWnd X %d Y %d H %d W %d\n"
               "Vid X %d Y %d H %d W %d \n"
               "Disp X %d Y %d H %d W %d\n",
                pstAuPortCfg->stAspCfg.u32ZmeH,
                pstAuPortCfg->stAspCfg.u32ZmeW,
                pstAuPortCfg->stAspCfg.stCropWnd.s32X,
                pstAuPortCfg->stAspCfg.stCropWnd.s32Y,
                pstAuPortCfg->stAspCfg.stCropWnd.s32Height,
                pstAuPortCfg->stAspCfg.stCropWnd.s32Width,
                pstAuPortCfg->stAspCfg.stOutWnd.s32X,
                pstAuPortCfg->stAspCfg.stOutWnd.s32Y,
                pstAuPortCfg->stAspCfg.stOutWnd.s32Height,
                pstAuPortCfg->stAspCfg.stOutWnd.s32Width,
                u32XFPos,
                u32YFPos,
                pstAuPortCfg->stDstFrmInfo.u32Height,
                pstAuPortCfg->stDstFrmInfo.u32Width);
       #endif
    }
    else
    {
        u32XFPos = 0;
        u32YFPos = 0;
        u32Height = pstAuPortCfg->stDstFrmInfo.u32Height;
        u32Width = pstAuPortCfg->stDstFrmInfo.u32Width;                            
        VPSS_REG_SetLBADispPos(u32AppVAddr,ePort,u32XFPos,u32YFPos,
                                    u32Height,u32Width);
    }

    return HI_SUCCESS;
}
#endif

HI_S32 VPSS_HAL_SetInCropCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    HI_BOOL bInCropEn;
    HI_BOOL bInCropMode;
    HI_U32 u32InCropY;
    HI_U32 u32InCropX;
    HI_U32 u32InCropHeight;
    HI_U32 u32InCropWidth;
    VPSS_ALG_INCROPCFG_S  *pstInCropCfg;

    HI_U32 u32AppVAddr;
    
    u32AppVAddr = (HI_U32)AppReg[u32NodeID];

    pstInCropCfg = &(pstAlgCfg->stAuTunnelCfg.stInCropCfg);

    
    if(pstInCropCfg->bInCropEn == HI_TRUE)
    {
        bInCropEn = pstInCropCfg->bInCropEn;
        bInCropMode = pstInCropCfg->bInCropMode;
        u32InCropY = pstInCropCfg->u32InCropY;
        u32InCropX = pstInCropCfg->u32InCropX;
        u32InCropHeight = pstInCropCfg->u32InCropHeight;
        u32InCropWidth = pstInCropCfg->u32InCropWidth;
        
        VPSS_REG_SetInCropEn(u32AppVAddr, bInCropEn);
        VPSS_REG_SetInCropMode(u32AppVAddr,bInCropMode);
        VPSS_REG_SetInCropPos(u32AppVAddr, u32InCropY,  u32InCropX);
        VPSS_REG_SetInCropSize(u32AppVAddr, u32InCropHeight, u32InCropWidth);
    }
    else
    {
        VPSS_REG_SetInCropEn(u32AppVAddr, HI_FALSE);
    }
    return HI_SUCCESS;
}
#if 0
HI_S32 VPSS_HAL_GetCycleCnt(HI_U32 *pCnt)
{
    VPSS_REG_GetCycleCnt((HI_U32)PhyReg, pCnt);

    return HI_SUCCESS;
    
}
#endif

HI_S32 VPSS_HAL_SetRotationCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32PortID,HI_U32 u32NodeID)
{
    HI_S32 s32Ret;
    VPSS_ALG_PortCFG_S *pstAuPortCfg;
    HI_U32 u32AppVirAddr;

    u32AppVirAddr = (HI_U32)AppReg[u32NodeID];

    
    VPSS_REG_ResetAppReg(u32AppVirAddr);
    
    s32Ret = VPSS_HAL_SetSrcImg(pstAlgCfg,u32NodeID);
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("HAL ERROR\n");
        return HI_FAILURE;
    }
    pstAuPortCfg = &(pstAlgCfg->stAuPortCfg[u32PortID]);

    pstAuPortCfg->eRegPort = VPSS_REG_HD;

    s32Ret = VPSS_HAL_SetDstFrm(u32PortID,pstAuPortCfg->eRegPort,pstAlgCfg,u32NodeID);
    if (s32Ret != HI_SUCCESS)
    {
        return HI_FAILURE;
    }
    
    s32Ret = VPSS_HAL_SetRotation(pstAuPortCfg->eRotation,u32NodeID);
    
    return HI_SUCCESS;
}


HI_S32 VPSS_HAL_SetRotation(HI_DRV_VPSS_ROTATION_E eAngle,HI_U32 u32NodeID)
{
    HI_U32 u32AppVAddr;
    HI_U32 u32Angle = 0x0;
    u32AppVAddr = (HI_U32)AppReg[u32NodeID];

    switch(eAngle)
    {
        case HI_DRV_VPSS_ROTATION_90:
            u32Angle = 0x0;
            break;
        case HI_DRV_VPSS_ROTATION_270:
            u32Angle = 0x1;
            break;
        default:
            VPSS_FATAL("\nRo Error  %d\n",u32Angle);
            break;
    }
    VPSS_REG_SetRotation(u32AppVAddr,u32Angle);

    return HI_SUCCESS;
}


HI_S32 VPSS_HAL_SetPreCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    HI_S32 s32Ret;
    VPSS_ALG_PortCFG_S *pstAuPortCfg;
    HI_U32 u32AppVirAddr;

    u32AppVirAddr = (HI_U32)AppReg[u32NodeID];
    VPSS_REG_ResetAppReg(u32AppVirAddr);
    
    s32Ret = VPSS_HAL_SetSrcImg(pstAlgCfg,u32NodeID);
    s32Ret = VPSS_HAL_SetDcmpHead(pstAlgCfg,u32NodeID);

    s32Ret = VPSS_HAL_SetDeiCfg(pstAlgCfg,u32NodeID);
	
    VPSS_REG_SetStMode(u32AppVirAddr,HI_TRUE,HI_TRUE);
    
    memset(stHalInfo.u32RegPortAlloc,0,sizeof(HI_U32)*DEF_HI_DRV_VPSS_PORT_MAX_NUMBER);
    
    pstAuPortCfg = &(pstAlgCfg->stAuPortCfg[0]);

    pstAuPortCfg->eRegPort = VPSS_REG_SD;
    
    s32Ret = VPSS_HAL_SetDstFrm(0,pstAuPortCfg->eRegPort,pstAlgCfg,u32NodeID);
    if (s32Ret != HI_SUCCESS)
    {
        return HI_FAILURE;
    }

    VPSS_HAL_SetSDFidelity(HI_TRUE,u32NodeID);
    
    return HI_SUCCESS;
}

HI_S32 VPSS_HAL_SetSDFidelity(HI_BOOL bEnFidelity,HI_U32 u32NodeID)
{
    HI_U32 u32AppVAddr;


    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    VPSS_REG_SetFidelity(u32AppVAddr,bEnFidelity);
    
    VPSS_REG_SetZmeEnable(u32AppVAddr,VPSS_REG_SD,REG_ZME_MODE_ALL,HI_FALSE);
    VPSS_REG_SetLTIEn(u32AppVAddr,VPSS_REG_SD,HI_FALSE);
    VPSS_REG_SetCTIEn(u32AppVAddr,VPSS_REG_SD,HI_FALSE);
    VPSS_REG_SetLBAEn(u32AppVAddr,VPSS_REG_SD,HI_FALSE);
    return HI_SUCCESS;
}
HI_S32 VPSS_HAL_SetFlipCfg(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,
                            VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    HI_U32 u32AppVAddr;
    VPSS_ALG_PortCFG_S *pstAuPortCfg;
    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    pstAuPortCfg = &(pstAlgCfg->stAuPortCfg[u32PortID]);
    
    VPSS_REG_SetPortFlipEn(u32AppVAddr,ePort, pstAuPortCfg->bNeedFlip);    

    return HI_SUCCESS;
}   
HI_S32 VPSS_HAL_SetPreZmeCfg(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    HI_U32 u32AppVAddr;
    VPSS_ALG_PortCFG_S *pstAuPortCfg;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    pstAuPortCfg = &(pstAlgCfg->stAuPortCfg[u32PortID]);
    VPSS_REG_SetPreZme(u32AppVAddr,ePort,
                            pstAuPortCfg->enHorPreZme,pstAuPortCfg->enVerPreZme);
    return HI_SUCCESS;
}
      
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
