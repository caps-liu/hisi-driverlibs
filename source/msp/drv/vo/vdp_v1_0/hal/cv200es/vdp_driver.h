#ifndef __VDP_DRIVER_H__
#define __VDP_DRIVER_H__

#include "vdp_define.h"
#include "hi_drv_disp.h"
#include "drv_disp_osal.h"
//#include "driver_define.h"

//#include <linux/kernel.h>

//HI_U32   VDP_RegRead(volatile HI_U32 *a);
//HI_VOID  VDP_RegWrite(volatile HI_U32 *a, HI_U32 b);
HI_U32   VDP_RegRead(HI_U32 a);
HI_VOID  VDP_RegWrite(HI_U32 a, HI_U32 b);


// VDP INIT
HI_VOID  VDP_DRIVER_SetVirtualAddr(HI_U32 virAddr);
HI_VOID  VDP_DRIVER_Initial(HI_VOID);

// VDAC INIT
HI_VOID  VDAC_DRIVER_SetVirtualAddr(HI_U32 virAddr);
HI_VOID  VDAC_DRIVER_Initial(HI_VOID);

HI_VOID  VDPSYSCTRL_DRIVER_SetVirtualAddr(HI_U32 virAddr);


//-------------------------------------------------------------------
//VID_BEGIN
//-------------------------------------------------------------------
HI_VOID VDP_VID_SetLayerEnable         (HI_U32 u32Data, HI_U32 u32bEnable );
HI_VOID  VDP_VID_SetDcmpEnable    (HI_U32 u32Data, HI_U32 u32bEnable );
HI_VOID VDP_VID_SetLayerAddr           (HI_U32 u32Data, HI_U32 u32Chan, HI_U32 u32LAddr,HI_U32 u32CAddr,HI_U32 u32LStr, HI_U32 u32CStr);
HI_VOID VDP_VID_SetLayerReso           (HI_U32 u32Data, VDP_DISP_RECT_S  stRect);
HI_VOID VDP_VID_SetInDataFmt           (HI_U32 u32Data, VDP_VID_IFMT_E  enDataFmt);
HI_VOID VDP_VID_SetReadMode            (HI_U32 u32Data, VDP_DATA_RMODE_E enLRMode,VDP_DATA_RMODE_E enCRMode);
HI_VOID VDP_VID_SetMuteEnable          (HI_U32 u32Data, HI_U32 bEnable);
HI_VOID VDP_VID_SetFlipEnable          (HI_U32 u32Data, HI_U32 u32bEnable);
HI_VOID VDP_SetFieldOrder              (HI_U32 u32Data, HI_U32 u32FieldOrder);
HI_VOID VDP_VID_SetInReso              (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_VID_SetOutReso             (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_VID_SetVideoPos            (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_VID_SetDispPos             (HI_U32 u32Data, VDP_RECT_S  stRect);

HI_VOID VDP_VID_SetIfirMode            (HI_U32 u32Data, VDP_IFIRMODE_E enMode);
HI_VOID  VDP_VID_SetIfirCoef           (HI_U32 u32Data, HI_S32 * s32Coef);

HI_VOID VDP_VID_SetLayerGalpha         (HI_U32 u32Data, HI_U32 u32Alpha0);
HI_VOID VDP_VID_SetCropReso            (HI_U32 u32Data, VDP_DISP_RECT_S stRect);
HI_VOID VDP_VID_SetLayerBkg            (HI_U32 u32Data, VDP_BKG_S stBkg);
HI_VOID VDP_SetParaUpMode              (HI_U32 u32Data, HI_U32 u32Mode);

HI_VOID VDP_VID_SetCscDcCoef           (HI_U32 u32Data, VDP_CSC_DC_COEF_S pstCscCoef);
HI_VOID VDP_VID_SetCscCoef             (HI_U32 u32Data, VDP_CSC_COEF_S stCscCoef);
HI_VOID VDP_VID_SetCscEnable           (HI_U32 u32Data, HI_U32 u32bCscEn);
HI_VOID VDP_VID_SetCscMode             (HI_U32 u32Data, VDP_CSC_MODE_E enCscMode);

HI_VOID VDP_VID_SetDispMode            (HI_U32 u32Data, VDP_DISP_MODE_E enDispMode);

HI_VOID VDP_SetWbcMd    (HI_U32 u32Data,HI_U32 enMdSel);
HI_VOID VDP_SetInDataWidth             (HI_U32 u32Data, HI_U32 u32idatawth);
HI_VOID VDP_SetWbcOutMode              (HI_U32 u32Data, VDP_DATA_RMODE_E enRdMode);
HI_VOID VDP_SetTimeOut                 (HI_U32 u32Data, HI_U32 u32TData);

HI_VOID VDP_VID_SetRegUp               (HI_U32 u32Data);
//-------------------------------------------------------------------
//ZME_BEGIN
//-------------------------------------------------------------------
HI_VOID VDP_VID_SetZmeEnable           (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable);
HI_VOID VDP_VID_SetZmePhase            (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_S32 s32Phase);
HI_VOID VDP_VID_SetZmeFirEnable        (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable);
HI_VOID VDP_VID_SetZmeMidEnable        (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable);
HI_VOID VDP_VID_SetZmeHorRatio         (HI_U32 u32Data, HI_U32 u32Ratio);
HI_VOID VDP_VID_SetZmeVerRatio         (HI_U32 u32Data, HI_U32 u32Ratio);
HI_VOID VDP_VID_SetZmeHfirOrder        (HI_U32 u32Data, HI_U32 u32HfirOrder);
HI_VOID VDP_VID_SetZmeCoefAddr(HI_U32 u32Data, HI_U32 u32Mode, HI_U32 u32Addr, HI_U32 u32AddrChr);
HI_VOID VDP_VID_SetZmeInFmt            (HI_U32 u32Data, VDP_PROC_FMT_E u32Fmt);
HI_VOID VDP_VID_SetZmeOutFmt           (HI_U32 u32Data, VDP_PROC_FMT_E u32Fmt);

HI_VOID VDP_VID_SetParaUpd             (HI_U32 u32Data, VDP_VID_PARA_E enMode);
//-------------------------------------------------------------------
//ZME_END
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//VID_END
//-------------------------------------------------------------------


//-------------------------------------------------------------------
//GFX_BEGIN
//-------------------------------------------------------------------
HI_VOID VDP_GFX_SetLayerReso           (HI_U32 u32Data, VDP_DISP_RECT_S stRect);
HI_VOID VDP_GFX_SetVideoPos            (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_GFX_SetDispPos             (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_GFX_SetInReso              (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_GFX_SetLayerEnable         (HI_U32 u32Data, HI_U32 u32bEnable );
HI_VOID VDP_GFX_SetLayerAddr           (HI_U32 u32Data, HI_U32 u32LAddr, HI_U32 u32Stride);
HI_VOID VDP_GFX_SetLayerAddrEX(HI_U32 u32Data, HI_U32 u32LAddr);
HI_VOID VDP_GFX_SetLayerStride(HI_U32 u32Data, HI_U32 u32Stride);
HI_VOID VDP_GFX_SetInDataFmt           (HI_U32 u32Data, VDP_GFX_IFMT_E  enDataFmt);
HI_VOID VDP_GFX_SetReadMode            (HI_U32 u32Data, HI_U32 u32Mode);
HI_VOID VDP_GFX_SetBitExtend           (HI_U32 u32Data, VDP_GFX_BITEXTEND_E u32mode);
HI_VOID VDP_GFX_SetColorKey            (HI_U32 u32Data, HI_U32  bkeyEn,VDP_GFX_CKEY_S stKey );
HI_VOID VDP_GFX_SetKeyMask             (HI_U32 u32Data, VDP_GFX_MASK_S stMsk);
//lut read update
HI_VOID  VDP_GFX_SetParaUpd            (HI_U32 u32Data, VDP_DISP_COEFMODE_E enMode );
HI_VOID VDP_GFX_SetLutAddr             (HI_U32 u32Data, HI_U32 u32LutAddr);


//3D
HI_VOID VDP_GFX_SetThreeDimEnable      (HI_U32 u32Data, HI_U32 bTrue);
HI_VOID VDP_GFX_SetSrcMode             (HI_U32 u32Data, HI_U32 u32SrcMode);

HI_VOID VDP_GFX_SetDofEnable           (HI_U32 u32Data, HI_U32 bTrue);
HI_VOID VDP_GFX_SetDofFmt              (HI_U32 u32Data, HI_U32 u32DataFmt);
HI_VOID VDP_GFX_SetDofStep             (HI_U32 u32Data, HI_U32 u32eye_sel,HI_U32 u32step);
HI_VOID VDP_GFX_SetDispMode            (HI_U32 u32Data, VDP_DISP_MODE_E enDispMode);

HI_VOID VDP_GFX_SetGammaEnable          (HI_U32 u32Data, HI_U32 u32GmmEn);


HI_VOID  VDP_GFX_SetFlipEnable         (HI_U32 u32Data, HI_U32 bEnable);
HI_VOID  VDP_GFX_SetPreMultEnable      (HI_U32 u32Data, HI_U32 bEnable);

HI_VOID  VDP_GFX_SetLayerBkg           (HI_U32 u32Data, VDP_BKG_S stBkg);
HI_VOID  VDP_GFX_SetLayerGalpha        (HI_U32 u32Data, HI_U32 u32Alpha0);
HI_VOID  VDP_GFX_SetPalpha             (HI_U32 u32Data, HI_U32 bAlphaEn,HI_U32 bArange,HI_U32 u32Alpha0,HI_U32 u32Alpha1);

//HI_VOID  VDP_GFX_SetCmpAddr            (HI_U32 u32Data, HI_U32 u32CmpAddr);
HI_VOID  VDP_GFX_SetLayerNAddr         (HI_U32 u32Data, HI_U32 u32NAddr);
HI_VOID  VDP_GFX_SetMuteEnable         (HI_U32 u32Data, HI_U32 bEnable);
HI_VOID  VDP_GFX_SetUpdMode            (HI_U32 u32Data, HI_U32 u32Mode);
HI_VOID  VDP_GFX_SetDeCmpEnable        (HI_U32 u32Data, HI_U32 bEnable);

HI_VOID  VDP_GFX_SetRegUp              (HI_U32 u32Data);


////Zme
//HI_VOID  VDP_GFX_SetZmeEnable          (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 bEnable);
//HI_VOID  VDP_GFX_SetZmeFirEnable       (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 bEnable);
//HI_VOID  VDP_GFX_SetZmeMidEnable       (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 bEnable);
//HI_VOID  VDP_GFX_SetZmeHfirOrder       (HI_U32 u32Data, HI_U32 uHfirOrder);
//HI_VOID  VDP_GFX_SetZmeVerTap          (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32VerTap);
//HI_VOID  VDP_GFX_SetZmePhase           (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_S32 s32Phase);


HI_VOID VDP_VP_SetLayerReso            (HI_U32 u32Data, VDP_DISP_RECT_S  stRect);
HI_VOID VDP_VP_SetVideoPos             (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_VP_SetDispPos              (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_VP_SetInReso               (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_VP_SetRegUp                (HI_U32 u32Data);
HI_VOID VDP_VP_SetLayerGalpha          (HI_U32 u32Data, HI_U32 u32Alpha);
HI_VOID VDP_VP_SetLayerBkg             (HI_U32 u32Data, VDP_BKG_S stBkg);
HI_VOID VDP_VP_SetMuteEnable           (HI_U32 u32Data, HI_U32 bEnable);
HI_VOID VDP_VP_SetDispMode             (HI_U32 u32Data, VDP_DISP_MODE_E enDispMode);

//-------------------------------------------------------------------
//GFX_END
//-------------------------------------------------------------------


//-------------------------------------------------------------------
//GP_BEGIN
//-------------------------------------------------------------------
HI_VOID VDP_GP_SetLayerReso            (HI_U32 u32Data, VDP_DISP_RECT_S  stRect);
HI_VOID VDP_GP_SetVideoPos             (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_GP_SetDispPos              (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_GP_SetInReso               (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_GP_SetOutReso              (HI_U32 u32Data, VDP_RECT_S  stRect);
HI_VOID VDP_GP_SetIpOrder              (HI_U32 u32Data, HI_U32 u32Chn, VDP_GP_ORDER_E enIpOrder);
HI_VOID VDP_GP_SetReadMode             (HI_U32 u32Data, HI_U32 u32Mode);
HI_VOID VDP_GP_SetParaUpd              (HI_U32 u32Data, VDP_GP_PARA_E enMode);
HI_VOID VDP_GP_SetRect                 (HI_U32 u32Data, VDP_DISP_RECT_S  stRect);
HI_VOID VDP_GP_SetRegUp                (HI_U32 u32Data);
HI_VOID VDP_GP_SetLayerGalpha          (HI_U32 u32Data, HI_U32 u32Alpha);
HI_VOID VDP_GP_SetLayerBkg             (HI_U32 u32Data, VDP_BKG_S stBkg);

//GP_CSC_BEGIN
HI_VOID VDP_GP_SetCscDcCoef            (HI_U32 u32Data, VDP_CSC_DC_COEF_S pstCscCoef);
HI_VOID VDP_GP_SetCscCoef              (HI_U32 u32Data, VDP_CSC_COEF_S stCscCoef);
HI_VOID VDP_GP_SetCscEnable            (HI_U32 u32Data, HI_U32 u32bCscEn);
HI_VOID VDP_GP_SetCscMode              (HI_U32 u32Data, VDP_CSC_MODE_E enCscMode);
HI_VOID VDP_GP_SetDispMode             (HI_U32 u32Data, VDP_DISP_MODE_E enDispMode);



HI_VOID VDP_GP_SetZmeEnable           (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable);
HI_VOID VDP_GP_SetZmePhase            (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_S32 s32Phase);
HI_VOID VDP_GP_SetZmeFirEnable        (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable);
HI_VOID VDP_GP_SetZmeMidEnable        (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable);
HI_VOID VDP_GP_SetZmeHorRatio         (HI_U32 u32Data, HI_U32 u32Ratio);
HI_VOID VDP_GP_SetZmeVerRatio         (HI_U32 u32Data, HI_U32 u32Ratio);
HI_VOID VDP_GP_SetZmeHfirOrder        (HI_U32 u32Data, HI_U32 u32HfirOrder);
HI_VOID VDP_GP_SetZmeCoefAddr         (HI_U32 u32Data, HI_U32 u32Mode, HI_U32 u32Addr);
HI_VOID VDP_GP_SetParaRd(HI_U32 u32Data, VDP_GP_PARA_E enMode);

//GTI
HI_VOID  VDP_GP_SetTiEnable           (HI_U32 u32Data, HI_U32 u32Md,HI_U32 u32Data1);
HI_VOID  VDP_GP_SetTiGainRatio        (HI_U32 u32Data, HI_U32 u32Md, HI_S32 s32Data);
HI_VOID  VDP_GP_SetTiMixRatio         (HI_U32 u32Data, HI_U32 u32Md, HI_U32 u32mixing_ratio);
HI_VOID  VDP_GP_SetTiHfThd            (HI_U32 u32Data, HI_U32 u32Md, HI_U32 * u32TiHfThd);
HI_VOID  VDP_GP_SetTiHpCoef           (HI_U32 u32Data, HI_U32 u32Md, HI_S32 * s32Data);
HI_VOID  VDP_GP_SetTiCoringThd        (HI_U32 u32Data, HI_U32 u32Md, HI_U32 u32thd);
HI_VOID  VDP_GP_SetTiSwingThd         (HI_U32 u32Data, HI_U32 u32Md, HI_U32 u32thd, HI_U32 u32thd1);
HI_VOID  VDP_GP_SetTiGainCoef         (HI_U32 u32Data, HI_U32 u32Md, HI_U32 * u32coef);
HI_VOID  VDP_GP_SetTiDefThd           (HI_U32 u32Data, HI_U32 u32Md);

//-------------------------------------------------------------------
//GPX_END
//-------------------------------------------------------------------


//-------------------------------------------------------------------
//Bus Function BEGIN
HI_VOID VDP_SetClkGateEn  (HI_U32 u32Data);
HI_VOID VDP_SetWrOutStd   (HI_U32 u32Data, HI_U32 u32BusId, HI_U32 u32OutStd);
HI_VOID VDP_SetRdOutStd   (HI_U32 u32Data, HI_U32 u32BusId, HI_U32 u32OutStd);
HI_VOID VDP_SetArbMode    (HI_U32 u32Data, HI_U32 u32bMode);
HI_VOID VDP_SetRdBusId    (HI_U32 u32bMode);
//Bus Function END
//-------------------------------------------------------------------

//-------------------------------------------------------------------
//DISP_BEGIN
//-------------------------------------------------------------------
HI_VOID VDP_DISP_SetFramePackingEn     (HI_U32 u32hd_id, HI_U32 u32Enable);
HI_VOID VDP_DISP_SetHdmiMode           (HI_U32 u32hd_id, HI_U32 u32hdmi_md);
HI_VOID VDP_DISP_SetHdmiClk  (HI_U32 u32hd_id, HI_U32 u32hdmi_clkdiv);
HI_VOID VDP_DISP_SetRegUp              (HI_U32 u32hd_id);
HI_VOID VDP_DISP_SetIntfEnable         (HI_U32 u32hd_id, HI_U32 bTrue);
HI_VOID VDP_DISP_SetIntMask            (HI_U32 u32masktypeen);
HI_VOID VDP_DISP_GetIntMask (HI_U32 *pu32masktype);
HI_VOID VDP_DISP_SetIntDisable         (HI_U32 u32masktypeen);
HI_VOID VDP_DISP_OpenIntf              (HI_U32 u32hd_id, VDP_DISP_SYNCINFO_S stSyncInfo);
HI_VOID VDP_DISP_OpenTypIntf           (HI_U32 u32hd_id, VDP_DISP_DIGFMT_E enDigFmt);
HI_VOID VDP_DISP_SetVSync              (HI_U32 u32hd_id, HI_U32 u32vfb, HI_U32 u32vbb, HI_U32 u32vact);
HI_VOID VDP_DISP_SetVSyncPlus          (HI_U32 u32hd_id, HI_U32 u32bvfb, HI_U32 u32bvbb, HI_U32 u32vact);
HI_VOID VDP_DISP_SetHSync              (HI_U32 u32hd_id, HI_U32 u32hfb, HI_U32 u32hbb, HI_U32 u32hact);
HI_VOID VDP_DISP_SetSyncInv            (HI_U32 u32hd_id, VDP_DISP_INTF_E enIntf,  VDP_DISP_SYNCINV_E enInv);
HI_VOID VDP_DISP_SetPlusWidth          (HI_U32 u32hd_id, HI_U32 u32hpw, HI_U32 u32vpw);
HI_VOID VDP_DISP_SetPlusPhase          (HI_U32 u32hd_id, HI_U32 u32ihs, HI_U32 u32ivs, HI_U32 u32idv);
HI_VOID VDP_DISP_SetIntfMuxSel         (HI_U32 u32hd_id, VDP_DISP_INTF_E enIntf);

HI_U32  VDP_DISP_GetIntSta             (HI_U32 u32intmask);
HI_VOID VDP_DISP_ClearIntSta           (HI_U32 u32intmask);
HI_VOID VDP_DISP_SetVtThdMode          (HI_U32 u32hd_id, HI_U32 u32uthdnum, HI_U32 u32mode);
HI_VOID VDP_DISP_SetVtThd              (HI_U32 u32hd_id, HI_U32 u32uthdnum, HI_U32 u32vtthd);


#define DHD_VTXTHD_FIELD_MODE 1
#define DHD_VTXTHD_FRAME_MODE 0
#define DHD_YUV_TO_HDMI 0
#define DHD_RGB_TO_HDMI 1
HI_VOID VDP_DHD_Reset(HI_U32 u32hd_id);
HI_VOID VDP_DISP_SetTiming(HI_U32 u32hd_id,VDP_DISP_SYNCINFO_S *pstSyncInfo);
HI_VOID VDP_DISP_GetIntfEnable(HI_U32 u32hd_id, HI_U32 *pbTrue);

//-------------------------------------------------------------------
//DISP_END
//-------------------------------------------------------------------

//-------------------------------------------------------------------
//MIXER_BEGIN
//-------------------------------------------------------------------
HI_VOID VDP_CBM_SetMixerBkg              (VDP_CBM_MIX_E u32mixer_id, VDP_BKG_S stBkg);
HI_VOID VDP_CBM_SetMixerPrio             (VDP_CBM_MIX_E u32mixer_id, HI_U32 u32layer_id,HI_U32 u32prio);
HI_U32 VDP_CBM_GetMAXLayer(VDP_CBM_MIX_E eMixId);
HI_VOID VDP_CBM_ResetMixerPrio           (VDP_CBM_MIX_E u32mixer_id);
HI_VOID VDP_CBM_GetMixerPrio(VDP_CBM_MIX_E u32mixer_id, HI_U32 u32prio, HI_U32 *pu32layer_id);
HI_VOID VDP_CBM_SetMixerPrioQuick(VDP_CBM_MIX_E u32mixer_id,HI_U32 *pu32layer_id, HI_U32 u32Number);

//-------------------------------------------------------------------
//MIXER_END
//-------------------------------------------------------------------
////-------------------------------------------------------------------
//CBAR_BEGIN
//-------------------------------------------------------------------
HI_VOID VDP_DISP_SetCbarEnable           (HI_U32 u32hd_id,HI_U32 bTrue);
HI_VOID VDP_DISP_SetCbarSel              (HI_U32 u32hd_id,HI_U32 u32cbar_sel);

//-------------------------------------------------------------------
//CBAR_END
//-------------------------------------------------------------------


//-------------------------------------------------------------------
//IPU_BEGIN
//-------------------------------------------------------------------
HI_VOID VDP_DISP_SetDitherMode         (HI_U32 u32hd_id, VDP_DISP_INTF_E enIntf, VDP_DITHER_E enDitherMode);
HI_VOID VDP_DISP_SetDitherCoef         (HI_U32 u32hd_id, VDP_DISP_INTF_E enChan, VDP_DITHER_COEF_S dither_coefs);

HI_VOID VDP_DISP_SetClipEnable         (HI_U32 u32hd_id, VDP_DISP_INTF_E enIntf);
HI_VOID VDP_DISP_SetClipCoef           (HI_U32 u32hd_id, VDP_DISP_INTF_E enIntf, VDP_DISP_CLIP_S stClipData);

HI_VOID VDP_DISP_SetCscEnable          (HI_U32 u32hd_id, HI_U32  enCSC);
HI_VOID VDP_DISP_SetCscDcCoef          (HI_U32 u32hd_id, VDP_CSC_DC_COEF_S stCscCoef);
HI_VOID VDP_DISP_SetCscCoef            (HI_U32 u32hd_id, VDP_CSC_COEF_S stCscCoef);
HI_VOID VDP_DISP_SetCscMode            (HI_U32 u32hd_id, VDP_CSC_MODE_E enCscMode);

HI_VOID VDP_DISP_SetGammaEnable        (HI_U32 u32hd_id, HI_U32 u32GmmEn);
HI_VOID VDP_DISP_SetGammaAddr          (HI_U32 u32hd_id, HI_U32 u32uGmmAddr);
HI_VOID VDP_DISP_SetParaUpd            (HI_U32 u32hd_id, VDP_DISP_PARA_E enPara);
HI_VOID VDP_SetMirrorEnable            (HI_U32 u32hd_id,HI_U32 bTrue);
//-------------------------------------------------------------------
//IPU_END
//-------------------------------------------------------------------

//-------------------------------------------------------------------
//WBC_DHD0_BEGIN
//-------------------------------------------------------------------
HI_VOID VDP_WBC_SetEnable              (VDP_LAYER_WBC_E enLayer, HI_U32 bEnable);
HI_VOID VDP_WBC_SetOutIntf             (VDP_LAYER_WBC_E enLayer, VDP_DATA_RMODE_E u32RdMode);
HI_VOID VDP_WBC_SetOutFmt              (VDP_LAYER_WBC_E enLayer, VDP_WBC_OFMT_E stIntfFmt);
HI_VOID VDP_WBC_SetSpd                 (VDP_LAYER_WBC_E enLayer, HI_U32 u32ReqSpd);
HI_VOID VDP_WBC_SetLayerAddr           (VDP_LAYER_WBC_E enLayer, HI_U32 u32LAddr,HI_U32 u32CAddr,HI_U32 u32LStr, HI_U32 u32CStr);
HI_VOID VDP_WBC_SetLayerReso           (VDP_LAYER_WBC_E enLayer, VDP_DISP_RECT_S  stRect);
HI_VOID VDP_WBC_SetDitherMode          (VDP_LAYER_WBC_E enLayer, VDP_DITHER_E enDitherMode);
HI_VOID VDP_WBC_SetDitherCoef          (VDP_LAYER_WBC_E enLayer, VDP_DITHER_COEF_S dither_coef);
HI_VOID VDP_WBC_SetCropReso            (VDP_LAYER_WBC_E enLayer, VDP_DISP_RECT_S stRect);
HI_VOID VDP_WBC_SetRegUp               (VDP_LAYER_WBC_E enLayer);

HI_VOID VDP_WBC_SetZmeCoefAddr         (VDP_LAYER_WBC_E enLayer, VDP_WBC_PARA_E u32Mode, HI_U32 u32Addr,HI_U32 u32Addrchr);
HI_VOID VDP_WBC_SetParaUpd             (VDP_LAYER_WBC_E enLayer, VDP_WBC_PARA_E enMode);
HI_VOID VDP_WBC_SetSfifo               (VDP_LAYER_WBC_E enLayer, HI_U32 u32Data );
HI_VOID VDP_WBC_SetZmeEnable           (VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable,  HI_U32 u32firMode);
HI_VOID VDP_WBC_SetMidEnable           (VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode, HI_U32 bEnable);
HI_VOID VDP_WBC_SetFirEnable           (VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode, HI_U32 bEnable);
HI_VOID VDP_WBC_SetZmeVerTap           (VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode, HI_U32 u32VerTap);
HI_VOID VDP_WBC_SetZmeHfirOrder        (VDP_LAYER_WBC_E enLayer, HI_U32 u32HfirOrder);
HI_VOID VDP_WBC_SetZmeHorRatio         (VDP_LAYER_WBC_E enLayer, HI_U32 u32Ratio);
HI_VOID VDP_WBC_SetZmeInFmt            (VDP_LAYER_WBC_E enLayer, VDP_PROC_FMT_E u32Fmt);
HI_VOID VDP_WBC_SetZmeOutFmt           (VDP_LAYER_WBC_E enLayer, VDP_PROC_FMT_E u32Fmt);
HI_VOID VDP_WBC_SetZmeVerRatio         (VDP_LAYER_WBC_E enLayer, HI_U32 u32Ratio);
HI_VOID VDP_WBC_SetZmePhase            (VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode,HI_S32 s32Phase);
HI_VOID VDP_WBC_SetCscEnable           (VDP_LAYER_WBC_E enLayer, HI_U32 enCSC);
HI_VOID VDP_WBC_SetCscDcCoef           (VDP_LAYER_WBC_E enLayer,VDP_CSC_DC_COEF_S stCscCoef);
HI_VOID VDP_WBC_SetCscCoef             (VDP_LAYER_WBC_E enLayer,VDP_CSC_COEF_S stCscCoef);
HI_VOID VDP_WBC_SetCscMode             (VDP_LAYER_WBC_E enLayer, VDP_CSC_MODE_E enCscMode);

HI_VOID VDP_WBC_SetOutFmtUVOrder(VDP_LAYER_WBC_E enLayer, HI_U32 uvOrder);

//-------------------------------------------------------------------
//WBC_DHD0_END
HI_VOID VDP_DHD_DEFAULT(HI_VOID);
HI_VOID VDP_VID_ZME_DEFAULT(HI_VOID);
HI_VOID VDP_DHD_DEBUG_DEFAULT(HI_U32 width);
HI_VOID VDP_DHD_SetDispMode(HI_U32 u32Data,VDP_DATA_RMODE_E dispMode);
HI_U32 VDP_DHD_GetDispMode(HI_U32 u32Data);
HI_U32 VDP_WBC_GetAlwaysProFlag(/*DISP_WBC_E enLayer, */HI_BOOL *bAlwaysPro);
HI_VOID VDP_MIXV_SetPrio(HI_U32 prioLayer);
HI_VOID VDP_MIXV_SetPrio1(HI_U32 prioLayer);
#if 0
HI_VOID  VDP_VID_SetLayerBkgColor    (HI_U32 u32Data, HI_U32 stBkg);
#endif
HI_U32 VDP_DISP_GetMaskIntSta(HI_U32 u32intmask);
HI_VOID VDP_VID_SetInDataUVOrder(HI_U32 u32Data, HI_U32  VFirst);


//-------------------------------------------------------------------
// HDATE/SDATE CONFIG
HI_VOID VDP_DATE_SetEnable(DISP_VENC_E eDate, HI_U32 enable);
HI_VOID VDP_DATE_SetDACDET(DISP_VENC_E enDate,HI_DRV_DISP_FMT_E enFmt);
HI_VOID VDP_DATE_SetDACDetEn(DISP_VENC_E enDate, HI_U32 enable);
HI_VOID VDP_DATE_SetSignal(HI_DRV_DISP_INTF_ID_E enIntfId,DISP_VENC_E eDate, HI_BOOL bRGBSync);

HI_VOID VDP_DATE_ResetFmt(DISP_VENC_E eDate, HI_DRV_DISP_FMT_E enFmt);
HI_VOID VDP_DATE_SetOutput(DISP_VENC_E eDate, HI_U32 id, HI_DRV_DISP_VDAC_SIGNAL_E signal);

HI_VOID VDP_VDAC_Reset(HI_VOID);
HI_VOID VDP_VDAC_ResetFmt(DISP_VENC_E eDate,HI_U32 uVdac, HI_DRV_DISP_FMT_E enFmt);
HI_VOID VDP_VDAC_SetLink(DISP_VENC_E eDate, HI_U32 uVdac, HI_DRV_DISP_VDAC_SIGNAL_E signal);
HI_VOID VDP_VDAC_SetEnable(HI_U32 uVdac, HI_U32 enable);
HI_VOID VDP_VDAC_GetEnable(HI_U32 uVdac, HI_U32 *penable);
HI_VOID VDP_VDAC_SetClockEnable(HI_U32 uVdac, HI_U32 enable);

//-------------------------------------------------------------------
// VIDEO LAYER CONFIG
HI_VOID VDP_VID_SetInReso2(HI_U32 u32Data, HI_RECT_S *pstRect, HI_RECT_S *pstRectOrigin);
HI_VOID VDP_VID_SetOutReso2(HI_U32 u32Data, HI_RECT_S *pstRect);
HI_VOID VDP_VID_SetVideoPos2(HI_U32 u32Data, HI_RECT_S *pstRect);
HI_VOID VDP_VID_SetDispPos2(HI_U32 u32Data, HI_RECT_S *pstRect);

HI_VOID  VDP_VID_SetZmePhaseH(HI_U32 u32Data, HI_S32 s32PhaseL, HI_S32 s32PhaseC);
HI_VOID  VDP_VID_SetZmePhaseV(HI_U32 u32Data, HI_S32 s32PhaseL, HI_S32 s32PhaseC);
HI_VOID  VDP_VID_SetZmePhaseVB(HI_U32 u32Data, HI_S32 s32PhaseL, HI_S32 s32PhaseC);
HI_VOID  VDP_VID_SetZmeFirEnable2(HI_U32 u32Data, HI_U32 u32bEnableHl,HI_U32 u32bEnableHc,HI_U32 u32bEnableVl,HI_U32 u32bEnableVc);
HI_VOID  VDP_VID_SetZmeMidEnable2(HI_U32 u32Data, HI_U32 u32bEnable);
HI_VOID  VDP_VID_SetZmeEnable2(HI_U32 u32Data, HI_U32 u32bEnable);
HI_VOID  VDP_VID_SetZmeVchTap(HI_U32 u32Data, HI_U32 u32VscTap);


HI_VOID VDP_DISP_GetVactState(HI_U32 u32hd_id, HI_BOOL *pbBtm, HI_U32 *pu32Vcnt);

HI_VOID VDP_WBC_SetZmePhaseH(VDP_LAYER_WBC_E enLayer, HI_S32 s32PhaseL, HI_S32 s32PhaseC);
HI_VOID VDP_WBC_SetZmePhaseV(VDP_LAYER_WBC_E enLayer, HI_S32 s32PhaseL, HI_S32 s32PhaseC);
HI_VOID VDP_WBC_SetZmePhaseVB(VDP_LAYER_WBC_E enLayer, HI_S32 s32PhaseL, HI_S32 s32PhaseC);
HI_VOID VDP_SelectClk(HI_U32 u32VDPClkMode);
HI_S32 VDP_DISP_SelectChanClkDiv(HI_DRV_DISPLAY_E eChn, HI_U32 u32Div);


HI_VOID DISP_ResetCRG54(HI_U32 *pu32Crg54Value);
HI_VOID VDP_RegSave(HI_U32 u32RegBackAddr);
HI_VOID VDP_RegReStore(HI_U32 u32RegBackAddr);
HI_VOID VDP_CloseClkResetModule(HI_VOID);
#endif
