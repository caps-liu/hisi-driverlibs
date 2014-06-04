#include "vpss_hal.h"
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
    HI_S32 s32Ret;
    
    s32Ret = HI_DRV_MMZ_AllocAndMap("VPSS_RegBuf_0", HI_NULL,sizeof(VPSS_REG_S),
        	                                              0, &(stHalInfo.stRegBuf[0]));
    if (s32Ret != HI_SUCCESS)
    {
        return HI_FAILURE;
    }
    stHalInfo.u32AppPhyAddr[0] = stHalInfo.stRegBuf[0].u32StartPhyAddr;
    stHalInfo.u32AppVirtualAddr[0] = stHalInfo.stRegBuf[0].u32StartVirAddr;
    
    VPSS_REG_AppRegInit(&(AppReg[0]),stHalInfo.u32AppVirtualAddr[0]);

    s32Ret = HI_DRV_MMZ_AllocAndMap("VPSS_RegBuf_1", HI_NULL,sizeof(VPSS_REG_S),
        	                                              0, &(stHalInfo.stRegBuf[1]));
    if (s32Ret != HI_SUCCESS)
    {
        HI_DRV_MMZ_UnmapAndRelease(&(stHalInfo.stRegBuf[0]));
        return HI_FAILURE;
    }
    
    stHalInfo.u32AppPhyAddr[1] = stHalInfo.stRegBuf[1].u32StartPhyAddr;
    stHalInfo.u32AppVirtualAddr[1] = stHalInfo.stRegBuf[1].u32StartVirAddr;
    VPSS_REG_AppRegInit(&(AppReg[1]),stHalInfo.u32AppVirtualAddr[1]);
    /*****************************************/
    
    
    VPSS_HAL_GetCaps(u32HalVersion, pstHalCaps);

    VPSS_REG_BaseRegInit(&PhyReg);
    VPSS_REG_ReSetCRG();

    VPSS_REG_SetIntMask((HI_U32)PhyReg,0x0);
    VPSS_REG_SetTimeOut((HI_U32)PhyReg,DEF_LOGIC_TIMEOUT);
    
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
HI_S32 VPSS_HAL_DelInit(HI_VOID)
{
    HI_DRV_MMZ_UnmapAndRelease(&(stHalInfo.stRegBuf[0]));
    HI_DRV_MMZ_UnmapAndRelease(&(stHalInfo.stRegBuf[1]));

    stHalInfo.u32AppPhyAddr[0] = 0;
    stHalInfo.u32AppVirtualAddr[0] = 0;
    stHalInfo.u32AppPhyAddr[1] = 0;
    stHalInfo.u32AppVirtualAddr[1] = 0;

    return HI_SUCCESS;
}

HI_S32 VPSS_HAL_GetCaps(HI_U32 u32HalVersion,VPSS_HAL_CAP_S *pstHalCaps)
{
    if(u32HalVersion == HAL_VERSION_1)
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
        VPSS_FATAL("Invalid vpss driver version.\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}


HI_S32 VPSS_HAL_SetDeiCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    #if 1
    HI_U32  VPSS_REFYADDR;
    HI_U32  VPSS_REFCADDR;

    HI_U32  VPSS_NEXT1YADDR;
    HI_U32  VPSS_NEXT1CADDR;
    
    HI_U32  VPSS_NEXT2YADDR;
    HI_U32  VPSS_NEXT2CADDR;

    
    HI_U32  VPSS_NEXT3YADDR;
    HI_U32  VPSS_NEXT3CADDR;
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

       
        /*********/
        VPSS_REFYADDR = pstDeiCfg->u32FieldAddr[0].u32PhyAddr_Y;
        VPSS_REFCADDR = pstDeiCfg->u32FieldAddr[0].u32PhyAddr_C;
        VPSS_REG_SetDeiAddr(u32AppRegVAddr,LAST_FIELD,VPSS_REFYADDR,VPSS_REFCADDR);
        VPSS_REG_SetDeiStride(u32AppRegVAddr,LAST_FIELD,
                                pstDeiCfg->u32FieldAddr[0].u32Stride_Y,
                                pstDeiCfg->u32FieldAddr[0].u32Stride_C);

        /*********/

        /*********/
        VPSS_NEXT1YADDR = pstDeiCfg->u32FieldAddr[3].u32PhyAddr_Y;
        VPSS_NEXT1CADDR = pstDeiCfg->u32FieldAddr[3].u32PhyAddr_C;
        VPSS_REG_SetDeiAddr(u32AppRegVAddr,NEXT1_FIELD,VPSS_NEXT1YADDR,VPSS_NEXT1CADDR);
        VPSS_REG_SetDeiStride(u32AppRegVAddr,NEXT1_FIELD,
                                pstDeiCfg->u32FieldAddr[3].u32Stride_Y,
                                pstDeiCfg->u32FieldAddr[3].u32Stride_C);
   
        /*********/

        /*********/
        VPSS_NEXT2YADDR = pstDeiCfg->u32FieldAddr[4].u32PhyAddr_Y;
        VPSS_NEXT2CADDR = pstDeiCfg->u32FieldAddr[4].u32PhyAddr_C;
        VPSS_REG_SetDeiAddr(u32AppRegVAddr,NEXT2_FIELD,VPSS_NEXT2YADDR,VPSS_NEXT2CADDR);
        VPSS_REG_SetDeiStride(u32AppRegVAddr,NEXT2_FIELD,
                                pstDeiCfg->u32FieldAddr[4].u32Stride_Y,
                                pstDeiCfg->u32FieldAddr[4].u32Stride_C);
       
        /*********/
        
        /*********/
        VPSS_NEXT3YADDR = pstDeiCfg->u32FieldAddr[5].u32PhyAddr_Y;
        VPSS_NEXT3CADDR = pstDeiCfg->u32FieldAddr[5].u32PhyAddr_C;
        VPSS_REG_SetDeiAddr(u32AppRegVAddr,NEXT3_FIELD,VPSS_NEXT3YADDR,VPSS_NEXT3CADDR);
        VPSS_REG_SetDeiStride(u32AppRegVAddr,NEXT3_FIELD,
                                pstDeiCfg->u32FieldAddr[5].u32Stride_Y,
                                pstDeiCfg->u32FieldAddr[5].u32Stride_C);
     
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
                VPSS_FATAL("DEI REG ERROR\n");
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
            VPSS_FATAL("Can't Get Fieldity Port.\n");
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
    if (s32Ret != HI_SUCCESS)
    {
        VPSS_FATAL("HAL ERROR\n");
        return HI_FAILURE;
    }

    s32Ret = VPSS_HAL_SetDeiCfg(pstAlgCfg,u32NodeID);
    #if 1
    s32Ret = VPSS_HAL_SetRwzbCfg(pstAlgCfg,u32NodeID);
	#endif
    
    #if 1
    s32Ret = VPSS_HAL_SetDnrCfg(pstAlgCfg,u32NodeID);
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
            
            s32Ret = VPSS_HAL_SetZmeCfg(u32Count,pstAuPortCfg->eRegPort,pstAlgCfg,u32NodeID); 
            if (s32Ret != HI_SUCCESS)
            {
                return HI_FAILURE;
            }

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

            if (pstAuPortCfg->eRegPort == VPSS_REG_SD
                && pstAuPortCfg->bFidelity == HI_TRUE)
            {
                VPSS_HAL_SetSDFidelity(HI_TRUE,u32NodeID);    
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
                                    REG_ZME_MODE_HORL,pstZmeCfg->bZmeMdHL);
        VPSS_REG_SetZmeFirEnable(u32AppVAddr,ePort,
                                    REG_ZME_MODE_HORC,pstZmeCfg->bZmeMdHC);
        VPSS_REG_SetZmeFirEnable(u32AppVAddr,ePort,
                                    REG_ZME_MODE_VERL,pstZmeCfg->bZmeMdVL);
        VPSS_REG_SetZmeFirEnable(u32AppVAddr,ePort,
                                    REG_ZME_MODE_VERC,pstZmeCfg->bZmeMdVC);

        VPSS_REG_SetZmeMidEnable(u32AppVAddr,ePort,
                                    REG_ZME_MODE_HORL,pstZmeCfg->bZmeMedHL);
        VPSS_REG_SetZmeMidEnable(u32AppVAddr,ePort,
                                    REG_ZME_MODE_HORC,pstZmeCfg->bZmeMedHC);
        VPSS_REG_SetZmeMidEnable(u32AppVAddr,ePort,
                                    REG_ZME_MODE_VERL,pstZmeCfg->bZmeMedVL);
        VPSS_REG_SetZmeMidEnable(u32AppVAddr,ePort,
                                    REG_ZME_MODE_VERC,pstZmeCfg->bZmeMedVC);
                                    
        VPSS_REG_SetZmePhase(u32AppVAddr,ePort,
                                    REG_ZME_MODE_VERL,pstZmeCfg->s32ZmeOffsetVL);
        VPSS_REG_SetZmePhase(u32AppVAddr,ePort,
                                    REG_ZME_MODE_VERC,pstZmeCfg->s32ZmeOffsetVC);
        
        VPSS_REG_SetZmeRatio(u32AppVAddr,ePort,REG_ZME_MODE_HOR,pstZmeCfg->u32ZmeRatioHL);
        VPSS_REG_SetZmeRatio(u32AppVAddr,ePort,REG_ZME_MODE_VER,pstZmeCfg->u32ZmeRatioVL); 
        
        VPSS_REG_SetZmeHfirOrder(u32AppVAddr,ePort,pstZmeCfg->bZmeOrder);
        
        
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
    HI_U32 u32AppVAddr;
    HI_DRV_BUF_ADDR_E eLReye;

    
    pstSrcImg = &(pstAlgCfg->stSrcImgInfo);
    eLReye = pstSrcImg->eLReye;
    u32AppVAddr = (HI_U32)AppReg[u32NodeID];

    if(pstSrcImg->bProgressive == HI_TRUE)
    {
        if (pstSrcImg->enFieldMode == HI_DRV_FIELD_ALL)
        {
            bInProgressive = HI_TRUE;
        }
        else
        {
            bInProgressive = HI_FALSE;
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
    
    VPSS_REG_SetImgSize(u32AppVAddr,pstSrcImg->u32Height,pstSrcImg->u32Width,bInProgressive);

    if(pstSrcImg->bProgressive == HI_TRUE)
    {
        if (pstSrcImg->enFieldMode == HI_DRV_FIELD_ALL)
        {
            u32YStride = pstSrcImg->stBufAddr[eLReye].u32Stride_Y;
            u32CStride = pstSrcImg->stBufAddr[eLReye].u32Stride_C;
        }
        else
        {
            u32YStride = pstSrcImg->stBufAddr[eLReye].u32Stride_Y * 2;
            u32CStride = pstSrcImg->stBufAddr[eLReye].u32Stride_C * 2;
        }
    }
    else
    {    
        u32YStride = pstSrcImg->stBufAddr[eLReye].u32Stride_Y * 2;
        u32CStride = pstSrcImg->stBufAddr[eLReye].u32Stride_C * 2;
    }
    VPSS_REG_SetImgStride(u32AppVAddr,CUR_FIELD,u32YStride,u32CStride);
    
    if(pstSrcImg->enFieldMode == HI_DRV_FIELD_BOTTOM)
    {
        u32YAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_Y 
                            + pstSrcImg->stBufAddr[eLReye].u32Stride_Y;
        u32CAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_C
                            + pstSrcImg->stBufAddr[eLReye].u32Stride_C;
    }
    else
    {
        u32YAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_Y;
        u32CAddr = pstSrcImg->stBufAddr[eLReye].u32PhyAddr_C;
    }

    VPSS_REG_SetImgAddr(u32AppVAddr,CUR_FIELD,u32YAddr,u32CAddr);
    VPSS_REG_SetImgFormat(u32AppVAddr,pstSrcImg->ePixFormat);

    VPSS_REG_SetImgReadMod(u32AppVAddr, pstSrcImg->bReadField);
    
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


HI_S32 VPSS_HAL_SetDnrCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID)
{
    ALG_DNR_RTL_PARA_S *pstDnrCfg;
	HI_U32 u32AppVAddr;

    u32AppVAddr = (HI_U32)AppReg[u32NodeID];
    pstDnrCfg = &(pstAlgCfg->stAuTunnelCfg.stDnrCfg);


    if (pstDnrCfg->stDnrCtrl.drEn == HI_TRUE || pstDnrCfg->stDnrCtrl.dbEn == HI_TRUE)
    {
        VPSS_REG_SetDnrInfoAddr(u32AppVAddr,
                                pstDnrCfg->stDnrCtrl.u32YInfoAddr,
                                pstDnrCfg->stDnrCtrl.u32CInfoAddr,
                                pstDnrCfg->stDnrCtrl.u32YInfoStride,
                                pstDnrCfg->stDnrCtrl.u32CInfoStride);
    }
    
    if (pstDnrCfg->stDnrCtrl.drEn == HI_TRUE)
    {
        VPSS_REG_SetDREn(u32AppVAddr, pstDnrCfg->stDnrCtrl.drEn);
        VPSS_REG_SetDRPara(u32AppVAddr,
                            pstDnrCfg->stDrThd.drthrflat3x3zone,
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
        VPSS_REG_SetDBVH(u32AppVAddr,
                            pstDnrCfg->stDnrCtrl.dbEnVert, 
                            pstDnrCfg->stDnrCtrl.dbEnHort);
        
        VPSS_REG_SetEdgeThd(u32AppVAddr,pstDnrCfg->stDbThd.dbthredge);
        VPSS_REG_SetVerProg(u32AppVAddr,pstDnrCfg->stDbThd.dbvertasprog);
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
    }
    else
    {
        VPSS_REG_SetDBEn(u32AppVAddr,pstDnrCfg->stDnrCtrl.dbEn);
    }
    return HI_SUCCESS;
}


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
    }

    return HI_SUCCESS;
}


HI_S32 VPSS_HAL_GetCycleCnt(HI_U32 *pCnt)
{
    VPSS_REG_GetCycleCnt((HI_U32)PhyReg, pCnt);

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
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
