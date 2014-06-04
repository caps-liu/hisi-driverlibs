//**********************************************************************
//                                                                          
// Copyright(c)2008,Huawei Technologies Co.,Ltd                            
// All rights reserved.                                                     
//                                                                          
// File Name   : vdp_driver.cpp
// Author      : s173141
// Email       : suyong7@huawei.com
// Data        : 2012/10/17
// Version     : v1.0
// Abstract    : header of vdp define
//                                                                         
// Modification history                                                    
//----------------------------------------------------------------------  
// Version       Data(yyyy/mm/dd)      name                                  
// Description                                                              
//                                                                          
// $Log: vdp_driver.cpp,v $
//
//
//
//
//**********************************************************************
//#include <linux/delay.h>
//#include <linux/timer.h>
//#include <stdio.h>
#ifdef HI_DISP_BUILD_FULL
#include <linux/kernel.h>
#endif

#include "vdp_reg.h"
#include "vdp_driver.h"
#include "hi_reg_common.h"


#ifdef HI_DISP_BUILD_FULL
#define HI_PRINT printk
#else
#define HI_PRINT printf
#endif

volatile S_VOU_V400_REGS_TYPE *pVdpReg = HI_NULL;
static VDP_DISP_SYNCINFO_S s_stSyncTiming[] =
{
/* |--INTFACE---||-----TOP-----||----HORIZON--------||----BOTTOM-----||-PULSE-||-INVERSE-| */
/* Synm,Iop, Itf, Vact,Vbb,Vfb,  Hact, Hbb,Hfb,Hmid,  Bvact,Bvbb,Bvfb, Hpw,Vpw, Idv,Ihs,Ivs */
  //0 HI_UNF_ENC_FMT_PAL
  {0,   0,   0,   288,  22,  2,  720, 132, 12,     288,  23,  2,    126, 3, 0, 0,  0,  0},/* 576I(PAL) */
  //576I: HDMI输出要求hmid=300, 而YPbPr要求hmid=0, 
  //考虑一般用户不会使用HDMI输出576I，所以不支持HDMI_567I输出，选择hmid=0
  //1 HI_UNF_ENC_FMT_NTSC
  {0,   0,   0,   240,  18,  4,   720, 119, 19,     240,  19,  4,    124, 3,  0, 0, 0,  0},/* 480I(NTSC) */
  //480I: HDMI输出要求hmid=310, 而YPbPr要求hmid=0, 
  //考虑一般用户不会使用HDMI输出480I，所以不支持HDMI_480I输出，选择hmid=0
  //2 HI_UNF_ENC_FMT_720P_60
  {1,   1,   2,   720,  25,  5,  1280, 260,110,      1,   1,  1,    40,  5,  1, 0,  0,  0}, /* 720P@60Hz */
  //3 HI_UNF_ENC_FMT_1080i_60
  {1,   0,   2,   540,  20,  2,  1920, 192, 88,    21,  2,    44,  5, 908, 540, 0,  0,  0}, /* 1080I@60Hz */
  //4 HI_UNF_ENC_FMT_1080P_30
  {1,   1,   2,  1080,  41,  4,  1920, 192, 88,       1,   1,  1,    44,  5, 1, 0,  0,  0}, /* 1080P@30Hz */
  //5~9, LCD
  {1,   1,   2,   600,  27,  1,   800, 216, 40,       1,   1,  1,    128, 4, 1, 0,  0,  0}, /* 800*600@60Hz */
  {1,   1,   2,   768,  35,  3,  1024, 296, 24,      1,   1,  1,    136, 6, 1,  0,  0,  0}, /* 1024x768@60Hz */
  {1,   1,   2,  1024,  41,  1,  1280, 360, 48,      1,   1,  1,    112, 3, 1,  0,  0,  0}, /* 1280x1024@60Hz */
  {1,   1,   2,   768,  27,  3,  1366, 356, 70,      1,   1,  1,    143, 3, 1,  0,  0,  0}, /* 1366x768@60Hz */
  {1,   1,   2,   900,  23,  3,  1440, 112, 48,     1,   1,  1,    32, 6,   1, 0,  0,  0}, /* 1440x900@60Hz@88.75MHz */
  //10 HI_UNF_ENC_FMT_720P_50
  {1,   1,   2,   720,  25,  5,  1280, 260,440,     1,   1,  1,     40, 5,  1,  0,  0,  0},  /* 720P@50Hz */
  //11 HI_UNF_ENC_FMT_1080i_50
  {1,   0,   2,   540,  20,  2,  1920, 192,528, 540,  21,  2,     44, 5, 1128,  0,  0,  0}, /* 1080I@50Hz */
  //12 HI_UNF_ENC_FMT_1080P_60,
  {1,   1,   2,  1080,  41,  4,  1920, 192, 88,      1,   1,  1,     44, 5, 1,  0,  0,  0}, /* 1080P@60Hz */
  //13 HI_UNF_ENC_FMT_1080P_50,
  {1,   1,   2,  1080,  41,  4,  1920, 192, 528,      1,   1,  1,     44, 5, 1, 0,  0,  0}, /* 1080P@50Hz */
  //14 HI_UNF_ENC_FMT_1080P_25,
  {1,   1,   2,  1080,  41,  4,  1920, 192, 528,      1,   1,  1,    44, 5, 1,  0,  0,  0}, /* 1080P@25Hz */
  //15 HI_UNF_ENC_FMT_1080P_24 @74.25MHz,
  {1,   1,   2,  1080,  41,  4,  1920, 192, 638,       1,   1,  1,    44, 5, 1, 0,  0,  0}, /* 1080P@24Hz */
  /* Synm,Iop, Itf,Vact,Vbb,Vfb,Hact, Hbb,Hfb, Bvact,Bvbb,Bvfb, Hpw,Vpw, Idv,Ihs,Ivs */
  //16 HI_UNF_ENC_FMT_576P_50,
  {1,  1,   2,   576,   44,  5,   720, 132, 12,     1,   1,  1,     64, 5,  1,  0,  0,  0}, /* 576P@50Hz */
    /* |--INTFACE---||-----TOP-----||----HORIZON--------||----BOTTOM-----||-PULSE-||-INVERSE-| */
  /*Synm,Iop, Itf, Vact,Vbb,Vfb,  Hact, Hbb,Hfb,Hmid,  Bvact,Bvbb,Bvfb, Hpw,Vpw, Idv,Ihs,Ivs */
  //17 HI_UNF_ENC_FMT_480P_60,
  {1,  1,   2,   480,   36,  9,   720, 122, 16,     1,   1,  1,     62, 6,  1,  0,  0,  0}, /* 480P@60Hz */

  //18~20
  {1,   1,   2,   900,  31,  3,  1440, 384, 80,    1,   1,  1,    152, 6,   1,  0,  0,  0}, /* 1440x900@60Hz@106.5MHz */
  {1,   1,   2,   480,  35,  10,  640, 144, 16,       1,   1,  1,      96, 2,  1, 0,  0,  0}, /* 640*480@60Hz */
  {1,   1,   2,   1200,  49,  1, 1600, 496, 64,       1,   1,  1,     192, 3, 1, 0,  0,  0}, /* 1600*12000@60Hz */

  //21 HI_UNF_ENC_FMT_PAL_TEST
  {0,   0,   2,   288,  22,  2,	 1440, 132, 12,    288,  23,  2,    126, 3,  0, 0,  0,  0},/* 576I(PAL) */
    
};

//-------------------------------------------------
// 
//-------------------------------------------------

//S_VOU_V400_REGS_TYPE g_VDPDebugDevice;
HI_VOID  VDP_DRIVER_SetVirtualAddr(HI_U32 virAddr)
{
    pVdpReg = (S_VOU_V400_REGS_TYPE *)virAddr;
}

HI_VOID  VDP_DRIVER_Initial()
{
    //pVdpReg = &g_VDPDebugDevice;

    pVdpReg->CBM_ATTR.u32 = 0xCul;

    VDP_SetRdOutStd(VDP_MASTER0, 0, 7);
    VDP_SetRdOutStd(VDP_MASTER0, 1, 7);

    VDP_MIXV_SetPrio(VDP_LAYER_VID0);
    VDP_MIXV_SetPrio1(VDP_LAYER_VID1);

    VDP_CBM_SetMixerPrio(VDP_CBM_MIX0, 0, 0);
    VDP_CBM_SetMixerPrio(VDP_CBM_MIX0, 1, 1);

    VDP_CBM_SetMixerPrio(VDP_CBM_MIX1, 2, 0);
    VDP_CBM_SetMixerPrio(VDP_CBM_MIX1, 3, 1);


    //VDP_INTF_DEFAULT();
    VDP_DHD_DEFAULT();

    return;
}


//#define VDAC_SYSCTRL_RESET_VALUE 0x000010F3ul
HI_VOID  VDAC_DRIVER_Initial()
{
    // set vdac reset value
    //g_pstRegCrg->PERI_CRG71.u32 = VDAC_SYSCTRL_RESET_VALUE;

    VDP_VDAC_Reset();

    VDP_RegWrite((HI_U32)(&(pVdpReg->VO_MUX_DAC.u32)), 0); 

    DISP_WARN("=========VDAC_DRIVER_Initial====\n");

    return;    
}


HI_U32 VDP_RegRead(HI_U32 a)
{
   //msleep(5);
   //HI_PRINT("\nread---addr = 0x%x,date = 0x%x",a,*a);
   return (*((HI_U32 *)a));
}

HI_VOID VDP_RegWrite(HI_U32 a, HI_U32 b)
{
    //msleep(5);
    //HI_PRINT("\nwrite---addr = 0x%x,date = 0x%x",a,b);
    *(HI_U32 *)a = b;       // ENV cfg
}     




//--------------------------------------------------------------------
// Video Layer
//--------------------------------------------------------------------

HI_VOID  VDP_VID_SetLayerEnable    (HI_U32 u32Data, HI_U32 u32bEnable )
{
    U_V0_CTRL V0_CTRL;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetLayerEnable() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.surface_en = u32bEnable ;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32);
   

    return ;
}

/*s40v2 does not supportn decompress.*/
HI_VOID  VDP_VID_SetDcmpEnable(HI_U32 u32Data, HI_U32 u32bEnable )
{  
    return ;
}

HI_VOID  VDP_VID_SetInDataFmt       (HI_U32 u32Data, VDP_VID_IFMT_E  enDataFmt)
{
    U_V0_CTRL V0_CTRL;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetInDataFmt() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.ifmt = enDataFmt;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return ;
}
    
HI_VOID  VDP_VID_SetReadMode    (HI_U32 u32Data, VDP_DATA_RMODE_E enLRMode,VDP_DATA_RMODE_E enCRMode)
{
    U_V0_CTRL V0_CTRL;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetReadMode() Select Wrong Video Layer ID\n");
        return ;
    }
        
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.lm_rmode = enLRMode;
    V0_CTRL.bits.chm_rmode = enCRMode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return ;
}

HI_VOID VDP_VID_SetIfirMode(HI_U32 u32Data, VDP_IFIRMODE_E enMode)
{
    U_V0_CTRL V0_CTRL;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_SetIfirMode() Select Wrong Video Layer ID\n");
        return ;
    }
           
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.ifir_mode = enMode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return ;
}
    
HI_VOID  VDP_VID_SetIfirCoef    (HI_U32 u32Data, HI_S32 * s32Coef)
{
    U_V0_IFIRCOEF01 V0_IFIRCOEF01;
    U_V0_IFIRCOEF23 V0_IFIRCOEF23;
    U_V0_IFIRCOEF45 V0_IFIRCOEF45;
    U_V0_IFIRCOEF67 V0_IFIRCOEF67;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetIfirCoef() Select Wrong Video Layer ID\n");
        return ;
    }

       V0_IFIRCOEF01.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_IFIRCOEF01.u32) + u32Data * VID_OFFSET));
       V0_IFIRCOEF23.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_IFIRCOEF23.u32) + u32Data * VID_OFFSET));
       V0_IFIRCOEF45.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_IFIRCOEF45.u32) + u32Data * VID_OFFSET));
       V0_IFIRCOEF67.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_IFIRCOEF67.u32) + u32Data * VID_OFFSET));
       
       V0_IFIRCOEF01.bits.coef0 = s32Coef[0];
       V0_IFIRCOEF01.bits.coef1 = s32Coef[1];
       V0_IFIRCOEF23.bits.coef2 = s32Coef[2];
       V0_IFIRCOEF23.bits.coef3 = s32Coef[3];
       V0_IFIRCOEF45.bits.coef4 = s32Coef[4];
       V0_IFIRCOEF45.bits.coef5 = s32Coef[5];
       V0_IFIRCOEF67.bits.coef6 = s32Coef[6];
       V0_IFIRCOEF67.bits.coef7 = s32Coef[7];

        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_IFIRCOEF01.u32) + u32Data * VID_OFFSET), V0_IFIRCOEF01.u32); 
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_IFIRCOEF23.u32) + u32Data * VID_OFFSET), V0_IFIRCOEF23.u32); 
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_IFIRCOEF45.u32) + u32Data * VID_OFFSET), V0_IFIRCOEF45.u32); 
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_IFIRCOEF67.u32) + u32Data * VID_OFFSET), V0_IFIRCOEF67.u32); 
   
    return ;
}
HI_VOID  VDP_VID_SetMuteEnable   (HI_U32 u32Data, HI_U32 bEnable)
{
    U_V0_CTRL V0_CTRL;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_LayerMuteEnable() Select Wrong Video Layer ID\n");
        return ;
    }
           
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.mute_en = bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return ;
}

HI_VOID  VDP_VID_SetFlipEnable(HI_U32 u32Data, HI_U32 u32bEnable)
{
    U_V0_CTRL V0_CTRL;
    
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetFlipEnable() Select Wrong Graph Layer ID\n");
        return ;
    }
   
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32)+ u32Data * VID_OFFSET));
    V0_CTRL.bits.flip_en = u32bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32)+ u32Data * VID_OFFSET), V0_CTRL.u32); 
}


HI_VOID VDP_SetFieldOrder(HI_U32 u32Data, HI_U32 u32FieldOrder)
{
    U_V0_CTRL V0_CTRL;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_SetFieldOrder() Select Wrong Video Layer ID\n");
        return ;
    }
        
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.bfield_first = u32FieldOrder;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return ;
}



HI_VOID  VDP_SetParaUpMode(HI_U32 u32Data,HI_U32 u32Mode)
{
    U_V0_CTRL V0_CTRL;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_SetParaUpMode() Select Wrong Video Layer ID\n");
        return ;
    }
           
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.vup_mode = u32Mode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return ;
}


HI_VOID VDP_SetTimeOut(HI_U32 u32Data, HI_U32 u32TData)
{
    U_V0_CTRL V0_CTRL;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetTimeOut() Select Wrong Video Layer ID\n");
        return ;
    }
           
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.time_out = u32TData;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return ;
}


HI_VOID VDP_SetWbcOutMode(HI_U32 u32Data, VDP_DATA_RMODE_E enRdMode)
{
    U_V0_CTRL V0_CTRL;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_SeWbcOutMode() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    
    if(enRdMode == VDP_RMODE_PROGRESSIVE)
        V0_CTRL.bits.ofl_inter = 0;
    else
    {
        V0_CTRL.bits.ofl_inter = 1;
        if(enRdMode == VDP_RMODE_TOP)
            V0_CTRL.bits.ofl_btm = 0;
        else if (enRdMode == VDP_RMODE_BOTTOM)
            V0_CTRL.bits.ofl_btm = 1;
        else
            HI_PRINT("Error! Vou_SetWbcOutIntf enRdMode error!\n");
    }
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return ;
}

HI_VOID  VDP_VID_SetLayerAddr   (HI_U32 u32Data, HI_U32 u32Chan, HI_U32 u32LAddr,HI_U32 u32CAddr,HI_U32 u32LStr, HI_U32 u32CStr)
{
    U_V0_STRIDE V0_STRIDE;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetLayerAddr() Select Wrong Video Layer ID\n");
        return ;
    }
    
    if(u32Chan == 0)
    {
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CADDR.u32) + u32Data * VID_OFFSET), u32LAddr); 
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CCADDR.u32) + u32Data * VID_OFFSET), u32CAddr); 
    }
    else if(u32Chan == 1)
    {
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_NADDR.u32) + u32Data * VID_OFFSET), u32LAddr); 
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_NCADDR.u32) + u32Data * VID_OFFSET), u32CAddr); 
    }
    else
    {
        HI_PRINT("Error,VDP_VID_SetLayerAddr() Select Wrong Addr ID\n");
    }

    V0_STRIDE.bits.surface_stride = u32LStr;
    V0_STRIDE.bits.surface_cstride = u32CStr;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_STRIDE.u32) + u32Data * VID_OFFSET), V0_STRIDE.u32); 

    return ;
}
    
HI_VOID  VDP_VID_SetLayerReso     (HI_U32 u32Data, VDP_DISP_RECT_S  stRect)
{
    U_V0_VFPOS V0_VFPOS;
    U_V0_VLPOS V0_VLPOS;
    U_V0_DFPOS V0_DFPOS;
    U_V0_DLPOS V0_DLPOS;
    U_V0_IRESO V0_IRESO;
    U_V0_ORESO V0_ORESO;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetLayerReso() Select Wrong Video Layer ID\n");
        return ;
    }


    /*video position */ 
    V0_VFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VFPOS.u32) + u32Data * VID_OFFSET));
    V0_VFPOS.bits.video_xfpos = stRect.u32VX;
    V0_VFPOS.bits.video_yfpos = stRect.u32VY;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VFPOS.u32) + u32Data * VID_OFFSET), V0_VFPOS.u32); 

    V0_VLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VLPOS.u32) + u32Data * VID_OFFSET));
    V0_VLPOS.bits.video_xlpos = stRect.u32VX + stRect.u32OWth - 1;
    V0_VLPOS.bits.video_ylpos = stRect.u32VY + stRect.u32OHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VLPOS.u32) + u32Data * VID_OFFSET), V0_VLPOS.u32); 

    V0_DFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_DFPOS.u32) + u32Data * VID_OFFSET));
    V0_DFPOS.bits.disp_xfpos = stRect.u32DXS;
    V0_DFPOS.bits.disp_yfpos = stRect.u32DYS;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_DFPOS.u32) + u32Data * VID_OFFSET), V0_DFPOS.u32); 

    V0_DLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_DLPOS.u32) + u32Data * VID_OFFSET));
    V0_DLPOS.bits.disp_xlpos = stRect.u32DXL-1;
    V0_DLPOS.bits.disp_ylpos = stRect.u32DYL-1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_DLPOS.u32) + u32Data * VID_OFFSET), V0_DLPOS.u32); 

    //VDP_RegWrite((HI_U32)(&(pVdpReg->V0_IRESO.u32) + u32Data * VID_OFFSET), V0_IRESO.u32); 
    V0_IRESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_IRESO.u32) + u32Data * VID_OFFSET));
    V0_IRESO.bits.iw = stRect.u32IWth - 1;
    V0_IRESO.bits.ih = stRect.u32IHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_IRESO.u32) + u32Data * VID_OFFSET), V0_IRESO.u32); 

    //VDP_RegWrite((HI_U32)(&(pVdpReg->V0_ORESO.u32) + u32Data * VID_OFFSET), V0_ORESO.u32); 
    V0_ORESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_ORESO.u32) + u32Data * VID_OFFSET));
    V0_ORESO.bits.ow = stRect.u32OWth - 1;
    V0_ORESO.bits.oh = stRect.u32OHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_ORESO.u32) + u32Data * VID_OFFSET), V0_ORESO.u32); 

   return ;
}   

HI_VOID  VDP_VID_SetInReso      (HI_U32 u32Data, VDP_RECT_S  stRect)
{
    U_V0_IRESO V0_IRESO;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetInReso() Select Wrong Video Layer ID\n");
        return ;
    }

    V0_IRESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_IRESO.u32) + u32Data * VID_OFFSET));
    V0_IRESO.bits.iw = stRect.u32Wth - 1;
    V0_IRESO.bits.ih = stRect.u32Hgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_IRESO.u32) + u32Data * VID_OFFSET), V0_IRESO.u32); 

    return ;
}
 
HI_VOID  VDP_VID_SetOutReso     (HI_U32 u32Data, VDP_RECT_S  stRect)
{
    U_V0_ORESO V0_ORESO;

   if(u32Data >= VID_MAX)
   {
       HI_PRINT("Error,VDP_VID_SetOutReso() Select Wrong Video Layer ID\n");
       return ;
   }
   
   //VDP_RegWrite((HI_U32)(&(pVdpReg->V0_ORESO.u32) + u32Data * VID_OFFSET), V0_ORESO.u32); 
   V0_ORESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_ORESO.u32) + u32Data * VID_OFFSET));
   V0_ORESO.bits.ow = stRect.u32Wth - 1;
   V0_ORESO.bits.oh = stRect.u32Hgt - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->V0_ORESO.u32) + u32Data * VID_OFFSET), V0_ORESO.u32); 

   return ;
}   
    
HI_VOID  VDP_VID_SetVideoPos     (HI_U32 u32Data, VDP_RECT_S  stRect)
{
   U_V0_VFPOS V0_VFPOS;
   U_V0_VLPOS V0_VLPOS;

   if(u32Data >= VID_MAX)
   {
       HI_PRINT("Error,VDP_VID_SetVideoPos() Select Wrong Video Layer ID\n");
       return ;
   }
   
  
   /*video position */ 
   V0_VFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VFPOS.u32) + u32Data * VID_OFFSET));
   V0_VFPOS.bits.video_xfpos = stRect.u32X;
   V0_VFPOS.bits.video_yfpos = stRect.u32Y;
   VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VFPOS.u32) + u32Data * VID_OFFSET), V0_VFPOS.u32); 
   
   V0_VLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VLPOS.u32) + u32Data * VID_OFFSET));
   V0_VLPOS.bits.video_xlpos = stRect.u32X + stRect.u32Wth - 1;
   V0_VLPOS.bits.video_ylpos = stRect.u32Y + stRect.u32Hgt - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VLPOS.u32) + u32Data * VID_OFFSET), V0_VLPOS.u32); 
   return ;
}   
    
HI_VOID  VDP_VID_SetDispPos     (HI_U32 u32Data, VDP_RECT_S  stRect)
{
   U_V0_DFPOS V0_DFPOS;
   U_V0_DLPOS V0_DLPOS;

   if(u32Data >= VID_MAX)
   {
       HI_PRINT("Error,VDP_VID_SetDispPos() Select Wrong Video Layer ID\n");
       return ;
   }
   
  
   /*video position */ 
   V0_DFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_DFPOS.u32) + u32Data * VID_OFFSET));
   V0_DFPOS.bits.disp_xfpos = stRect.u32X;
   V0_DFPOS.bits.disp_yfpos = stRect.u32Y;
   VDP_RegWrite((HI_U32)(&(pVdpReg->V0_DFPOS.u32) + u32Data * VID_OFFSET), V0_DFPOS.u32); 
   
   V0_DLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_DLPOS.u32) + u32Data * VID_OFFSET));
   V0_DLPOS.bits.disp_xlpos = stRect.u32X + stRect.u32Wth - 1;
   V0_DLPOS.bits.disp_ylpos = stRect.u32Y + stRect.u32Hgt - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->V0_DLPOS.u32) + u32Data * VID_OFFSET), V0_DLPOS.u32); 
   return ;
}   
    
HI_VOID  VDP_VID_SetRegUp       (HI_U32 u32Data)
{
    U_V0_UPD V0_UPD;
    
    /* VHD layer register update */
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetRegup() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_UPD.bits.regup = 0x1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_UPD.u32) + u32Data * VID_OFFSET), V0_UPD.u32); 

    return ;
}
    
    
   
HI_VOID  VDP_VID_SetLayerGalpha (HI_U32 u32Data, HI_U32 u32Alpha0)
{
    U_V0_CBMPARA V0_CBMPARA;
    U_V0_ALPHA V0_ALPHA;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetLayerGalpha() Select Wrong Video Layer ID\n");
        return ;
    }

    
    V0_CBMPARA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CBMPARA.u32) + u32Data * VID_OFFSET));
    V0_CBMPARA.bits.galpha = u32Alpha0;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CBMPARA.u32) + u32Data * VID_OFFSET), V0_CBMPARA.u32); 

    V0_ALPHA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_ALPHA.u32) + u32Data * VID_OFFSET));
    V0_ALPHA.bits.vbk_alpha = u32Alpha0;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_ALPHA.u32) + u32Data * VID_OFFSET), V0_ALPHA.u32); 
    return ;
}

 
    
HI_VOID  VDP_VID_SetCropReso    (HI_U32 u32Data, VDP_DISP_RECT_S stRect)
{
    U_V0_DFPOS V0_DFPOS;
    U_V0_DLPOS V0_DLPOS;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetCropReso() Select Wrong Video Layer ID\n");
        return ;
    }
            
    /* crop position */
    V0_DFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_DFPOS.u32) + u32Data * VID_OFFSET));
    V0_DFPOS.bits.disp_xfpos = stRect.u32DXS;
    V0_DFPOS.bits.disp_yfpos = stRect.u32DYS;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_DFPOS.u32) + u32Data * VID_OFFSET), V0_DFPOS.u32); 

    V0_DLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_DLPOS.u32) + u32Data * VID_OFFSET));
    V0_DLPOS.bits.disp_xlpos = stRect.u32DXL-1;
    V0_DLPOS.bits.disp_ylpos = stRect.u32DYL-1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_DLPOS.u32) + u32Data * VID_OFFSET), V0_DLPOS.u32); 

    return ;
}

HI_VOID  VDP_VID_SetLayerBkg    (HI_U32 u32Data, VDP_BKG_S stBkg)
{
    U_V0_BK    V0_BK;
//    U_V0_ALPHA V0_ALPHA;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetLayerBkg() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_BK.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_BK.u32) + u32Data * VID_OFFSET));
    V0_BK.bits.vbk_y  = stBkg.u32BkgY;
    V0_BK.bits.vbk_cb = stBkg.u32BkgU;
    V0_BK.bits.vbk_cr = stBkg.u32BkgV;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_BK.u32) + u32Data * VID_OFFSET), V0_BK.u32); 

    //V0_ALPHA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_ALPHA.u32) + u32Data * VID_OFFSET));
    //V0_ALPHA.bits.vbk_alpha = stBkg.u32BkgA;
    //VDP_RegWrite((HI_U32)(&(pVdpReg->V0_ALPHA.u32) + u32Data * VID_OFFSET), V0_ALPHA.u32); 
    
    return ;
}



    
    
HI_VOID  VDP_VID_SetCscDcCoef   (HI_U32 u32Data, VDP_CSC_DC_COEF_S pstCscCoef)
{
    U_V0_CSC_IDC  V0_CSC_IDC;
    U_V0_CSC_ODC  V0_CSC_ODC;
    U_V0_CSC_IODC V0_CSC_IODC;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetCscDcCoef() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_CSC_IDC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CSC_IDC.u32) + u32Data * VID_OFFSET));
    V0_CSC_IDC.bits.cscidc1  = pstCscCoef.csc_in_dc1;
    V0_CSC_IDC.bits.cscidc0  = pstCscCoef.csc_in_dc0;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CSC_IDC.u32) + u32Data * VID_OFFSET), V0_CSC_IDC.u32); 

    V0_CSC_ODC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CSC_ODC.u32) + u32Data * VID_OFFSET));
    V0_CSC_ODC.bits.cscodc1 = pstCscCoef.csc_out_dc1;
    V0_CSC_ODC.bits.cscodc0 = pstCscCoef.csc_out_dc0;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CSC_ODC.u32) + u32Data * VID_OFFSET), V0_CSC_ODC.u32); 

    V0_CSC_IODC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CSC_IODC.u32) + u32Data * VID_OFFSET));
    V0_CSC_IODC.bits.cscodc2 = pstCscCoef.csc_out_dc2;
    V0_CSC_IODC.bits.cscidc2 = pstCscCoef.csc_in_dc2;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CSC_IODC.u32) + u32Data * VID_OFFSET), V0_CSC_IODC.u32); 

    return ;
}

HI_VOID   VDP_VID_SetCscCoef(HI_U32 u32Data, VDP_CSC_COEF_S stCscCoef)
{   
    U_V0_CSC_P0 V0_CSC_P0;
    U_V0_CSC_P1 V0_CSC_P1;
    U_V0_CSC_P2 V0_CSC_P2;
    U_V0_CSC_P3 V0_CSC_P3;
    U_V0_CSC_P4 V0_CSC_P4;
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetCscCoef Select Wrong video ID\n");
        return ;
    }


    V0_CSC_P0.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CSC_P0.u32)+u32Data*VID_OFFSET));
    V0_CSC_P0.bits.cscp00 = stCscCoef.csc_coef00;
    V0_CSC_P0.bits.cscp01 = stCscCoef.csc_coef01;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CSC_P0.u32)+u32Data*VID_OFFSET), V0_CSC_P0.u32);

    V0_CSC_P1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CSC_P1.u32)+u32Data*VID_OFFSET));
    V0_CSC_P1.bits.cscp02 = stCscCoef.csc_coef02;
    V0_CSC_P1.bits.cscp10 = stCscCoef.csc_coef10;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CSC_P1.u32)+u32Data*VID_OFFSET), V0_CSC_P1.u32);

    V0_CSC_P2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CSC_P2.u32)+u32Data*VID_OFFSET));
    V0_CSC_P2.bits.cscp11 = stCscCoef.csc_coef11;
    V0_CSC_P2.bits.cscp12 = stCscCoef.csc_coef12;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CSC_P2.u32)+u32Data*VID_OFFSET), V0_CSC_P2.u32);

    V0_CSC_P3.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CSC_P3.u32)+u32Data*VID_OFFSET));
    V0_CSC_P3.bits.cscp20 = stCscCoef.csc_coef20;
    V0_CSC_P3.bits.cscp21 = stCscCoef.csc_coef21;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CSC_P3.u32)+u32Data*VID_OFFSET), V0_CSC_P3.u32);

    V0_CSC_P4.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CSC_P4.u32)+u32Data*VID_OFFSET));
    V0_CSC_P4.bits.cscp22 = stCscCoef.csc_coef22;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CSC_P4.u32)+u32Data*VID_OFFSET), V0_CSC_P4.u32);
        
}

 

    
HI_VOID  VDP_VID_SetCscEnable   (HI_U32 u32Data, HI_U32 u32bCscEn)
{
    U_V0_CSC_IDC V0_CSC_IDC;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetCscEnable() Select Wrong Video Layer ID\n");
        return ;
    }

    V0_CSC_IDC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CSC_IDC.u32) + u32Data * VID_OFFSET));
    V0_CSC_IDC.bits.csc_en = u32bCscEn;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CSC_IDC.u32) + u32Data * VID_OFFSET), V0_CSC_IDC.u32); 

    return ;
}

HI_VOID VDP_VID_SetCscMode(HI_U32 u32Data, VDP_CSC_MODE_E enCscMode)
                                                           
{
    VDP_CSC_COEF_S    st_csc_coef;
    VDP_CSC_DC_COEF_S st_csc_dc_coef;

    HI_S32 s32Pre   = 1 << 10;
    HI_S32 s32DcPre = 4;//1:8bit; 4:10bit

    if(enCscMode == VDP_CSC_RGB2YUV_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(0.299  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(0.587  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(0.114  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(-0.172 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.339 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(0.511  * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(0.511  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(-0.428 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(-0.083 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = 0 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2RGB_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(    0  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(1.371  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.698 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(-0.336 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(1.732  * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(    0  * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  0 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_RGB2YUV_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(0.213  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(0.715  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(0.072  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(-0.117 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.394 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.511 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)( 0.511 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(-0.464 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(-0.047 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = 0 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 = 16  * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2RGB_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(    0  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(1.540  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.183 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(-0.459 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(1.816  * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(    0  * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 = 0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 0 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2YUV_709_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(-0.116 * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)( 0.208 * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)( 1.017 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.114 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)( 0.075 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)( 1.025 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =   16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2YUV_601_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(-0.116 * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)( 0.208 * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)( 1.017 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.114 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)( 0.075 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)( 1.025 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =   16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  128 * s32DcPre;
    }
    else
    {
        st_csc_coef.csc_coef00     = 1 * s32Pre;
        st_csc_coef.csc_coef01     = 0 * s32Pre;
        st_csc_coef.csc_coef02     = 0 * s32Pre;

        st_csc_coef.csc_coef10     = 0 * s32Pre;
        st_csc_coef.csc_coef11     = 1 * s32Pre;
        st_csc_coef.csc_coef12     = 0 * s32Pre;

        st_csc_coef.csc_coef20     = 0 * s32Pre;
        st_csc_coef.csc_coef21     = 0 * s32Pre;
        st_csc_coef.csc_coef22     = 1 * s32Pre;

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    
    VDP_VID_SetCscCoef  (u32Data,st_csc_coef);
    VDP_VID_SetCscDcCoef(u32Data,st_csc_dc_coef);

    return ;
}    

HI_VOID VDP_VID_SetDispMode(HI_U32 u32Data, VDP_DISP_MODE_E enDispMode)
{
    U_V0_CTRL V0_CTRL;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetDispMode() Select Wrong Video Layer ID\n");
        return ;
    }

    
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.disp_mode = enDispMode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return ;
}
    
HI_VOID  VDP_VID_SetZmeEnable   (HI_U32 u32Data, VDP_ZME_MODE_E enMode,HI_U32 u32bEnable)
{
    U_V0_HSP V0_HSP;
    U_V0_VSP V0_VSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeEnable() Select Wrong Video Layer ID\n");
        return ;
    }
    
    /* VHD layer zoom enable */
    if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
        V0_HSP.bits.hlmsc_en = u32bEnable;
	//temp
        V0_HSP.bits.hlfir_en = 0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_HORC)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
        V0_HSP.bits.hchmsc_en = u32bEnable;
	//temp
        V0_HSP.bits.hchfir_en = 0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 
    }
#if 0
    if((enMode == VDP_ZME_MODE_NONL)||(enMode == VDP_ZME_MODE_ALL))
    {
        VHDHSP.u32 = VDP_RegRead(&(pVdpReg->VHDHSP.u32));
//        VHDHSP.bits.non_lnr_en = bEnable;
        VHDHSP.bits.non_lnr_en = 0;
        VDP_RegWrite(&(pVdpReg->VHDHSP.u32), VHDHSP.u32);  
    }
#endif
    if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
        V0_VSP.bits.vlmsc_en = u32bEnable;
	//temp
        V0_VSP.bits.vlfir_en = 0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
        V0_VSP.bits.vchmsc_en = u32bEnable;
	//temp
        V0_VSP.bits.vchfir_en = 0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 
    }

    return ;
}

    

/* Vou set zoom inital phase */
    
HI_VOID  VDP_VID_SetZmePhase    (HI_U32 u32Data, VDP_ZME_MODE_E enMode,HI_S32 s32Phase)
{
    U_V0_HLOFFSET  V0_HLOFFSET;
    U_V0_HCOFFSET  V0_HCOFFSET;
    U_V0_VOFFSET   V0_VOFFSET;
    U_V0_VBOFFSET  V0_VBOFFSET;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmePhase() Select Wrong Video Layer ID\n");
        return ;
    }
    
    /* VHD layer zoom enable */
    if((enMode == VDP_ZME_MODE_HORL) || (enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_HLOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HLOFFSET.u32) + u32Data * VID_OFFSET));
        V0_HLOFFSET.bits.hor_loffset = s32Phase;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HLOFFSET.u32) + u32Data * VID_OFFSET), V0_HLOFFSET.u32); 
    }

    if((enMode == VDP_ZME_MODE_HORC) || (enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_HCOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HCOFFSET.u32) + u32Data * VID_OFFSET));
        V0_HCOFFSET.bits.hor_coffset = s32Phase;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HCOFFSET.u32) + u32Data * VID_OFFSET), V0_HCOFFSET.u32); 
    }

    if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VOFFSET.u32) + u32Data * VID_OFFSET));
        V0_VOFFSET.bits.vluma_offset = s32Phase;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VOFFSET.u32) + u32Data * VID_OFFSET), V0_VOFFSET.u32); 
    }

    if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VOFFSET.u32) + u32Data * VID_OFFSET));
        V0_VOFFSET.bits.vchroma_offset = s32Phase;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VOFFSET.u32) + u32Data * VID_OFFSET), V0_VOFFSET.u32); 
    }

    if((enMode == VDP_ZME_MODE_VERB)||(enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_VBOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VBOFFSET.u32) + u32Data * VID_OFFSET));
        V0_VBOFFSET.bits.vbluma_offset = s32Phase;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VBOFFSET.u32) + u32Data * VID_OFFSET), V0_VBOFFSET.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_VERB)||(enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_VBOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VBOFFSET.u32) + u32Data * VID_OFFSET));
        V0_VBOFFSET.bits.vbchroma_offset = s32Phase;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VBOFFSET.u32) + u32Data * VID_OFFSET), V0_VBOFFSET.u32); 
    }

    return ;
}
    
    
HI_VOID  VDP_VID_SetZmeFirEnable(HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable)
{
    U_V0_HSP V0_HSP;
    U_V0_VSP V0_VSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeFirEnable() Select Wrong Video Layer ID\n");
        return ;
    }
            
    if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
     {
         V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
         V0_HSP.bits.hlfir_en = u32bEnable;
         VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 
     }
     
     if((enMode == VDP_ZME_MODE_HORC)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
     {
         V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
         V0_HSP.bits.hchfir_en = u32bEnable;
         VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 
     }

     if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
     {
         V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
         V0_VSP.bits.vlfir_en = u32bEnable;
         VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 
     }
     
     if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
     {
         V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
         V0_VSP.bits.vchfir_en = u32bEnable;
         VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 
     }

    return ;
}

    
    
HI_VOID  VDP_VID_SetZmeMidEnable   (HI_U32 u32Data, VDP_ZME_MODE_E enMode,HI_U32 u32bEnable)
{
    U_V0_HSP V0_HSP;
    U_V0_VSP V0_VSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeMidEnable() Select Wrong Video Layer ID\n");
        return ;
    }
    
    /* VHD layer zoom enable */
    if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
        V0_HSP.bits.hlmid_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_HORC)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
        V0_HSP.bits.hchmid_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
        V0_VSP.bits.vlmid_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
        V0_VSP.bits.vchmid_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 
    }

    return ;
}

    
HI_VOID  VDP_VID_SetZmeVerRatio(HI_U32 u32Data, HI_U32 u32Ratio)
{
    U_V0_VSR V0_VSR;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeVerRatio() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_VSR.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSR.u32) + u32Data * VID_OFFSET));
    V0_VSR.bits.vratio = u32Ratio;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSR.u32) + u32Data * VID_OFFSET), V0_VSR.u32); 

    return ;
}

HI_VOID  VDP_VID_SetZmeInFmt(HI_U32 u32Data, VDP_PROC_FMT_E u32Fmt)
{
    U_V0_VSP V0_VSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeInFmt() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
    V0_VSP.bits.zme_in_fmt = u32Fmt;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 

    return ;
}

HI_VOID  VDP_VID_SetZmeOutFmt(HI_U32 u32Data, VDP_PROC_FMT_E u32Fmt)
{
    U_V0_VSP V0_VSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeInFmt() Select Wrong Video Layer ID\n");
        return ;
    }

    V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
    V0_VSP.bits.zme_out_fmt = u32Fmt;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 

    return ;
}

// Vou set coef or lut read update
HI_VOID  VDP_VID_SetParaUpd       (HI_U32 u32Data, VDP_VID_PARA_E enMode)
{
    U_V0_PARAUP V0_PARAUP;
    V0_PARAUP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_PARAUP.u32) + u32Data * VID_OFFSET));
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("error,VDP_VID_SetParaUpd() select wrong video layer id\n");
        return ;
    }
    if(enMode == VDP_VID_PARA_ZME_HOR)
    {
        V0_PARAUP.bits.v0_hcoef_upd = 0x1;
    }
    else if(enMode == VDP_VID_PARA_ZME_VER)
    {
        V0_PARAUP.bits.v0_vcoef_upd = 0x1;
    }
    else
    {
        HI_PRINT("error,VDP_VID_SetParaUpd() select wrong mode!\n");
    }
    
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_PARAUP.u32) + u32Data * VID_OFFSET), V0_PARAUP.u32); 
    return ;
}


HI_VOID VDP_VID_SetZmeHfirOrder(HI_U32 u32Data, HI_U32 u32HfirOrder)
{
    U_V0_HSP V0_HSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeHfirOrder() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
    V0_HSP.bits.hfir_order = u32HfirOrder;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 

    return ;
}

HI_VOID VDP_VID_SetZmeCoefAddr(HI_U32 u32Data, HI_U32 u32Mode, HI_U32 u32Addr, HI_U32 u32AddrChr)
{
    U_V0_HCOEFAD V0_HCOEFAD;
    U_V0_VCOEFAD V0_VCOEFAD;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeCoefAddr() Select Wrong Video Layer ID\n");
        return ;
    }
    
    if(u32Mode == VDP_VID_PARA_ZME_HOR)
    {
        V0_HCOEFAD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HCOEFAD.u32) + u32Data * VID_OFFSET));
        V0_HCOEFAD.bits.coef_addr = u32Addr;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HCOEFAD.u32) + u32Data * VID_OFFSET), V0_HCOEFAD.u32); 
    }
    else if(u32Mode == VDP_VID_PARA_ZME_VER)
    {
        V0_VCOEFAD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VCOEFAD.u32) + u32Data * VID_OFFSET));
        V0_VCOEFAD.bits.coef_addr = u32Addr;
        VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VCOEFAD.u32) + u32Data * VID_OFFSET), V0_VCOEFAD.u32); 
    }
    else
    {
        HI_PRINT("Error,VDP_VID_SetZmeCoefAddr() Select a Wrong Mode!\n");
    }

    return ;
}


HI_VOID VDP_VID_SetZmeHorRatio(HI_U32 u32Data, HI_U32 u32Ratio)

{
    U_V0_HSP V0_HSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeHorRatio() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
    V0_HSP.bits.hratio = u32Ratio;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 

    return ;
}


HI_VOID  VDP_VP_SetLayerReso     (HI_U32 u32Data, VDP_DISP_RECT_S  stRect)
{
    U_VP0_VFPOS VP0_VFPOS;
    U_VP0_VLPOS VP0_VLPOS;
    U_VP0_DFPOS VP0_DFPOS;
    U_VP0_DLPOS VP0_DLPOS;
    U_VP0_IRESO VP0_IRESO;


    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VP_SetLayerReso() Select Wrong Video Layer ID\n");
        return ;
    }


    /*video position */ 
    VP0_VFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_VFPOS.u32) + u32Data * VID_OFFSET));
    VP0_VFPOS.bits.video_xfpos = stRect.u32VX;
    VP0_VFPOS.bits.video_yfpos = stRect.u32VY;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_VFPOS.u32) + u32Data * VID_OFFSET), VP0_VFPOS.u32); 

    VP0_VLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_VLPOS.u32) + u32Data * VID_OFFSET));
    VP0_VLPOS.bits.video_xlpos = stRect.u32VX + stRect.u32OWth - 1;
    VP0_VLPOS.bits.video_ylpos = stRect.u32VY + stRect.u32OHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_VLPOS.u32) + u32Data * VID_OFFSET), VP0_VLPOS.u32); 

    VP0_DFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_DFPOS.u32) + u32Data * VID_OFFSET));
    VP0_DFPOS.bits.disp_xfpos = stRect.u32DXS;
    VP0_DFPOS.bits.disp_yfpos = stRect.u32DYS;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_DFPOS.u32) + u32Data * VID_OFFSET), VP0_DFPOS.u32); 

    VP0_DLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_DLPOS.u32) + u32Data * VID_OFFSET));
    VP0_DLPOS.bits.disp_xlpos = stRect.u32DXL-1;
    VP0_DLPOS.bits.disp_ylpos = stRect.u32DYL-1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_DLPOS.u32) + u32Data * VID_OFFSET), VP0_DLPOS.u32); 

    //VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_IRESO.u32) + u32Data * VID_OFFSET), VP0_IRESO.u32); 
    VP0_IRESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_IRESO.u32) + u32Data * VID_OFFSET));
    VP0_IRESO.bits.iw = stRect.u32IWth - 1;
    VP0_IRESO.bits.ih = stRect.u32IHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_IRESO.u32) + u32Data * VID_OFFSET), VP0_IRESO.u32); 

   return ;
}   

HI_VOID  VDP_VP_SetVideoPos     (HI_U32 u32Data, VDP_RECT_S  stRect)
{
   U_VP0_VFPOS VP0_VFPOS;
   U_VP0_VLPOS VP0_VLPOS;

   if(u32Data >= VP_MAX)
   {
       HI_PRINT("Error,VDP_VP_SetVideoPos() Select Wrong Video Layer ID\n");
       return ;
   }
   
  
   /*video position */ 
   VP0_VFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_VFPOS.u32) + u32Data * VP_OFFSET));
   VP0_VFPOS.bits.video_xfpos = stRect.u32X;
   VP0_VFPOS.bits.video_yfpos = stRect.u32Y;
   VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_VFPOS.u32) + u32Data * VP_OFFSET), VP0_VFPOS.u32); 
   
   VP0_VLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_VLPOS.u32) + u32Data * VP_OFFSET));
   VP0_VLPOS.bits.video_xlpos = stRect.u32X + stRect.u32Wth - 1;
   VP0_VLPOS.bits.video_ylpos = stRect.u32Y + stRect.u32Hgt - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_VLPOS.u32) + u32Data * VP_OFFSET), VP0_VLPOS.u32); 
   return ;
}   
    
HI_VOID  VDP_VP_SetDispPos     (HI_U32 u32Data, VDP_RECT_S  stRect)
{
   U_VP0_DFPOS VP0_DFPOS;
   U_VP0_DLPOS VP0_DLPOS;


   if(u32Data >= VP_MAX)
   {
       HI_PRINT("Error,VDP_VP_SetDispPos() Select Wrong Video Layer ID\n");
       return ;
   }
   
  
   /*video position */ 
   VP0_DFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_DFPOS.u32) + u32Data * VP_OFFSET));
   VP0_DFPOS.bits.disp_xfpos = stRect.u32X;
   VP0_DFPOS.bits.disp_yfpos = stRect.u32Y;
   VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_DFPOS.u32) + u32Data * VP_OFFSET), VP0_DFPOS.u32); 
   
   VP0_DLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_DLPOS.u32) + u32Data * VP_OFFSET));
   VP0_DLPOS.bits.disp_xlpos = stRect.u32X + stRect.u32Wth - 1;
   VP0_DLPOS.bits.disp_ylpos = stRect.u32Y + stRect.u32Hgt - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_DLPOS.u32) + u32Data * VP_OFFSET), VP0_DLPOS.u32); 
   return ;
}   
    
HI_VOID  VDP_VP_SetInReso      (HI_U32 u32Data, VDP_RECT_S  stRect)
{
    U_VP0_IRESO VP0_IRESO;

    if(u32Data >= VP_MAX)
    {
        HI_PRINT("Error,VDP_VP_SetInReso() Select Wrong Video Layer ID\n");
        return ;
    }

    VP0_IRESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_IRESO.u32) + u32Data * VP_OFFSET));
    VP0_IRESO.bits.iw = stRect.u32Wth - 1;
    VP0_IRESO.bits.ih = stRect.u32Hgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_IRESO.u32) + u32Data * VP_OFFSET), VP0_IRESO.u32); 

    return ;
}
 

HI_VOID  VDP_VP_SetLayerGalpha (HI_U32 u32Data, HI_U32 u32Alpha)
{
    U_VP0_CTRL VP0_CTRL;
    
    //special for bk alpha = video alpha
    U_VP0_ALPHA     VP0_ALPHA;

    if(u32Data >= VP_MAX)
    {
        HI_PRINT("Error,VDP_VP_SetLayerGalpha() Select Wrong vp Layer ID\n");
        return ;
    }

    
    VP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_CTRL.u32) + u32Data * VP_OFFSET));
    VP0_CTRL.bits.vp_galpha = u32Alpha;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_CTRL.u32) + u32Data * VP_OFFSET), VP0_CTRL.u32); 

        
    VP0_ALPHA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_ALPHA.u32)));
    VP0_ALPHA.bits.vbk_alpha = u32Alpha;
    VDP_RegWrite((HI_U32)&(pVdpReg->VP0_ALPHA.u32), VP0_ALPHA.u32); 

    return ;
}

HI_VOID  VDP_VP_SetLayerBkg(HI_U32 u32Data, VDP_BKG_S stBkg)
{
    U_VP0_BK VP0_BK;
//    U_VP0_ALPHA     VP0_ALPHA;

    if(u32Data == VDP_LAYER_VP0)
    {
        VP0_BK.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_BK.u32)));
        VP0_BK.bits.vbk_y  = stBkg.u32BkgY;
        VP0_BK.bits.vbk_cb = stBkg.u32BkgU;
        VP0_BK.bits.vbk_cr = stBkg.u32BkgV;
        VDP_RegWrite((HI_U32)&(pVdpReg->VP0_BK.u32), VP0_BK.u32); 

//        VP0_ALPHA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_ALPHA.u32)));
//        VP0_ALPHA.bits.vbk_alpha = stBkg.u32BkgA;
//        VDP_RegWrite((HI_U32)&(pVdpReg->VP0_ALPHA.u32), VP0_ALPHA.u32); 
    }
    else
    {
        HI_PRINT("Error,VDP_VP_SetLayerBkg() Select Wrong VP Layer ID\n");
    }

    return ;
}

HI_VOID VDP_VP_SetDispMode(HI_U32 u32Data, VDP_DISP_MODE_E enDispMode)
{
    U_VP0_CTRL VP0_CTRL;
    
    if(u32Data >= VP_MAX)
    {
        HI_PRINT("Error,VDP_VP_SetDispMode() Select Wrong Video Layer ID\n");
        return ;
    }

    
    VP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_CTRL.u32) + u32Data * VP_OFFSET));
    VP0_CTRL.bits.disp_mode = enDispMode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_CTRL.u32) + u32Data * VID_OFFSET), VP0_CTRL.u32); 

    return ;
}

HI_VOID  VDP_VP_SetRegUp  (HI_U32 u32Data)
{
    U_VP0_UPD VP0_UPD;

    /* VP layer register update */
    if(u32Data >= VP_MAX)
    {
        HI_PRINT("Error,VDP_VP_SetRegUp() Select Wrong VP Layer ID\n");
        return ;
    }

    VP0_UPD.bits.regup = 0x1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_UPD.u32) + u32Data * VP_OFFSET), VP0_UPD.u32); 

    return ;
}

HI_VOID VDP_VP_SetMuteEnable     (HI_U32 u32Data, HI_U32 bEnable)
{
    U_VP0_CTRL VP0_CTRL;

    if(u32Data >= VP_MAX)
    {
        HI_PRINT("Error,VDP_VP_SetMuteEnable() Select Wrong VP Layer ID\n");
        return ;
    }

    VP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VP0_CTRL.u32)));
    VP0_CTRL.bits.mute_en = bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_CTRL.u32) + u32Data * VP_OFFSET), VP0_CTRL.u32); 

    return ;
}

//-------------------------------------------------------------------
//VP_END
//-------------------------------------------------------------------

HI_VOID VDP_SetLnkWbEnable    (HI_U32 u32Data ,HI_U32 u32Enable)
{
    U_V0_CTRL V0_CTRL;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_SetLnkWbEnable() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.v0_sta_wr_en = u32Enable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return;
}

HI_VOID VDP_SetWbcMd    (HI_U32 u32Data,HI_U32 enMdSel)
{
    U_V0_CTRL V0_CTRL;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetWbcaMd() Select Wrong Video Layer ID\n");
        return ;
    }

    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.ofl_mode = enMdSel;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 
    
    return ;
}

HI_VOID VDP_SetInDataWidth    (HI_U32 u32Data, HI_U32 u32idatawth)
{
    U_V0_CTRL V0_CTRL;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_SetInDataWidth() Select Wrong Video Layer ID\n");
        return ;
    }

    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.data_width = u32idatawth;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 
    
    return ;
}

HI_VOID VDP_SetOutMode   (HI_U32 u32Data, HI_U32 u32outmode)
{
    U_V0_CTRL V0_CTRL;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_SetInDataWidth() Select Wrong Video Layer ID\n");
        return ;
    }

    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.disp_mode = u32outmode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 
    
    return ;
}





//--------------------------------------------------------------------
// AXI BUS BEING
//--------------------------------------------------------------------

HI_VOID VDP_SetClkGateEn(HI_U32 u32Data)
{
    U_VOCTRL VOCTRL;
    
    VOCTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOCTRL.u32));
    VOCTRL.bits.vo_ck_gt_en = u32Data;
    VDP_RegWrite((HI_U32)&(pVdpReg->VOCTRL.u32), VOCTRL.u32);
}

HI_VOID VDP_SetWrOutStd(HI_U32 u32Data, HI_U32 u32BusId, HI_U32 u32OutStd)
{
    U_VOAXICTRL VOAXICTRL;

    if(u32Data == VDP_MASTER0)
    {
        if(u32BusId == 0)
        {
            VOAXICTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOAXICTRL.u32));
            VOAXICTRL.bits.m0_wr_ostd = u32OutStd;
            VDP_RegWrite((HI_U32)&(pVdpReg->VOAXICTRL.u32), VOAXICTRL.u32); 
        }
        else
        {
            HI_PRINT("Error,VDP_SetWrOutStd() Select Wrong Bus Id,Wr Support one id!\n");
        }
    }
    else if(u32Data == VDP_MASTER1)
    {
        if(u32BusId == 0)
        {
            VOAXICTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOAXICTRL.u32));
            VOAXICTRL.bits.m1_wr_ostd = u32OutStd;
            VDP_RegWrite((HI_U32)&(pVdpReg->VOAXICTRL.u32), VOAXICTRL.u32); 
        }
        else
        {
            HI_PRINT("Error,VDP_SetWrOutStd() Select Wrong Bus Id,Wr Support one id!\n");
        }
    }
    else
    {
        HI_PRINT("Error,VDP_SetWrOutStd() Select Wrong Master!\n");
    }
    
    return ;
}

HI_VOID VDP_SetRdOutStd(HI_U32 u32Data, HI_U32 u32BusId, HI_U32 u32OutStd)
{
    U_VOAXICTRL VOAXICTRL;

    if(u32Data == VDP_MASTER0)
    {
        if(u32BusId == 0)
        {
            VOAXICTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOAXICTRL.u32));
            VOAXICTRL.bits.m0_outstd_rid0 = u32OutStd;
            VDP_RegWrite((HI_U32)&(pVdpReg->VOAXICTRL.u32), VOAXICTRL.u32); 
        }
        else if(u32BusId == 1)
        {
            VOAXICTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOAXICTRL.u32));
            VOAXICTRL.bits.m0_outstd_rid1 = u32OutStd;
            VDP_RegWrite((HI_U32)&(pVdpReg->VOAXICTRL.u32), VOAXICTRL.u32); 
        }
        else
        {
            HI_PRINT("Error,VDP_SetRdOutStd() Select Wrong Bus Id,Rd Support two id!\n");
        }
    }
    else if(u32Data == VDP_MASTER1)
    {
        if(u32BusId == 0)
        {
            VOAXICTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOAXICTRL.u32));
            VOAXICTRL.bits.m1_outstd_rid0 = u32OutStd;
            VDP_RegWrite((HI_U32)&(pVdpReg->VOAXICTRL.u32), VOAXICTRL.u32); 
        }
        else if(u32BusId == 1)
        {
            VOAXICTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOAXICTRL.u32));
            VOAXICTRL.bits.m1_outstd_rid1 = u32OutStd;
            VDP_RegWrite((HI_U32)&(pVdpReg->VOAXICTRL.u32), VOAXICTRL.u32); 
        }
        else
        {
            HI_PRINT("Error,VDP_SetRdOutStd() Select Wrong Bus Id,Rd Support two id!\n");
        }
    }
    else
    {
        HI_PRINT("Error,VDP_SetWrOutStd() Select Wrong Master!\n");
    }
    
    return ;
}

HI_VOID VDP_SetArbMode(HI_U32 u32Data, HI_U32 u32bMode)
{
    U_VOCTRL VOCTRL;

    if(u32Data == VDP_MASTER0)
    {
        //set vdp arbitration mode
        //0:Poll Mode,1:GFX First Mode
        VOCTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOCTRL.u32));
        VOCTRL.bits.m0_arb_mode = u32bMode;
        VDP_RegWrite((HI_U32)&(pVdpReg->VOCTRL.u32), VOCTRL.u32); 
    }
    else if(u32Data == VDP_MASTER1)
    {
        //set vdp arbitration mode
        //0:Poll Mode,1:GFX First Mode
        VOCTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOCTRL.u32));
        VOCTRL.bits.m1_arb_mode = u32bMode;
        VDP_RegWrite((HI_U32)&(pVdpReg->VOCTRL.u32), VOCTRL.u32); 
    }
    else
    {
        HI_PRINT("Error,VDP_SetArbMode() Select Wrong Master!\n");
    }

    return ;
}

HI_VOID VDP_SetBusRdId(HI_U32 u32Data, HI_U32 u32bMode)
{
    U_VOAXICTRL VOAXICTRL;

    if(u32Data == VDP_MASTER0)
    {
        //set vdp read bus ID
        //0:V0 ID0, 1:V0 ID1
        VOAXICTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOAXICTRL.u32));
        VOAXICTRL.bits.m0_id_sel = u32bMode;
        VDP_RegWrite((HI_U32)&(pVdpReg->VOAXICTRL.u32), VOAXICTRL.u32); 
    }
    else if(u32Data == VDP_MASTER1)
    {
        //set vdp read bus ID
        //0:V0 ID0, 1:V0 ID1
        VOAXICTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOAXICTRL.u32));
        VOAXICTRL.bits.m1_id_sel = u32bMode;
        VDP_RegWrite((HI_U32)&(pVdpReg->VOAXICTRL.u32), VOAXICTRL.u32); 
    }
    else
    {
        HI_PRINT("Error,VDP_SetBusRdId() Select Wrong Master!\n");
    }
    
    return ;
}

//--------------------------------------------------------------------
// AXI BUS END
//--------------------------------------------------------------------


//--------------------------------------------------------------------
// DHD Channel
//--------------------------------------------------------------------
HI_VOID VDP_DHD_Reset(HI_U32 u32hd_id)
{
    U_DHD0_CTRL DHD0_CTRL;

/*
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_330          : 2   ; // [2..1] 
        unsigned int    fp_en                 : 1   ; // [3] 
        unsigned int    iop                   : 1   ; // [4] 
        unsigned int    Reserved_329          : 7   ; // [11..5] 
        unsigned int    gmm_mode              : 1   ; // [12] 
        unsigned int    gmm_en                : 1   ; // [13] 
        unsigned int    hdmi_mode             : 1   ; // [14] 
        unsigned int    Reserved_328          : 5   ; // [19..15] 
        unsigned int    fpga_lmt_width        : 7   ; // [26..20] 
        unsigned int    fpga_lmt_en           : 1   ; // [27] 
        unsigned int    Reserved_327          : 1   ; // [28] 
        unsigned int    cbar_sel              : 1   ; // [29] 
        unsigned int    cbar_en               : 1   ; // [30] 
        unsigned int    intf_en               : 1   ; // [31] 
    } bits;
*/
    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CTRL.bits.intf_en = 0;
    //DHD0_CTRL.bits.cbar_en = 0;
    //DHD0_CTRL.bits.fpga_lmt_en = 0;
    //DHD0_CTRL.bits.hdmi_mode = DHD_YUV_TO_HDMI;
    DHD0_CTRL.bits.gmm_en = 0;
    DHD0_CTRL.bits.fp_en = 0;
    DHD0_CTRL.bits.regup = 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET),DHD0_CTRL.u32);
}

HI_VOID VDP_DISP_SetFramePackingEn  (HI_U32 u32hd_id, HI_U32 u32Enable)
{
    U_DHD0_CTRL DHD0_CTRL;
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetFramePackingEn Select Wrong CHANNEL ID\n");
        return ;
    }

    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CTRL.bits.fp_en = u32Enable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET),DHD0_CTRL.u32);
}

HI_VOID VDP_DISP_SetHdmiMode  (HI_U32 u32hd_id, HI_U32 u32hdmi_md)
{
    U_DHD0_CTRL DHD0_CTRL;
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetHdmiMode Select Wrong CHANNEL ID\n");
        return ;
    }

    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CTRL.bits.hdmi_mode = u32hdmi_md;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET),DHD0_CTRL.u32);
}

HI_VOID VDP_DISP_SetHdmiClk  (HI_U32 u32hd_id, HI_U32 u32hdmi_clkdiv)
{
    U_PERI_CRG54 PERI_CRG54Tmp;

    PERI_CRG54Tmp.u32 = g_pstRegCrg->PERI_CRG54.u32;
    if ( u32hd_id)
    {
        /*SD*/
        
        /*chan select :      0:sd ,1: hd*/
        PERI_CRG54Tmp.bits.hdmi_clk_sel = 0;
        
        /* clk div select :      0 : 1:1      1:  1:2*/
        //PERI_CRG54Tmp.bits.vo_sd_hdmi_clk_sel = u32hdmi_clkdiv; 
    }   
    else
    {
        /*chan select :      0:sd ,1: hd*/
        PERI_CRG54Tmp.bits.hdmi_clk_sel = 1;
        
        /* clk div select :      0 : 1:1      1:  1:2*/
        //PERI_CRG54Tmp.bits.vo_hd_hdmi_clk_sel = u32hdmi_clkdiv;
    }
    g_pstRegCrg->PERI_CRG54.u32= PERI_CRG54Tmp.u32;

}

HI_VOID VDP_DISP_SetRegUp (HI_U32 u32hd_id)
{
    U_DHD0_CTRL DHD0_CTRL;
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetIntfEnable Select Wrong CHANNEL ID\n");
        return ;
    }
        
    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CTRL.bits.regup = 0x1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET),DHD0_CTRL.u32);
}


#define DISP_HAL_DISABLE_CH_DELAY_TIME_IN_MS 8
HI_VOID VDP_DISP_SetIntfEnable(HI_U32 u32hd_id, HI_U32 bTrue)
{
    U_DHD0_CTRL DHD0_CTRL;
//    U_DHD0_VSYNC DHD0_VSYNC;
//    volatile U_DHD0_STATE DHD0_STATE;
//    volatile HI_U32 btm, vl, maxpos, minpos;
//    HI_U32 waitcnt = 0;
    
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetIntfEnable Select Wrong CHANNEL ID\n");
        return ;
    }

    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));

#if 0
    if (!bTrue && DHD0_CTRL.bits.intf_en)
    {
        //Set Vou Dhd Channel Gamma Correct Enable
        DHD0_VSYNC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VSYNC.u32)+u32hd_id*CHN_OFFSET));
        minpos = DHD0_VSYNC.bits.vbb;

        maxpos = (DHD0_VSYNC.bits.vact + DHD0_VSYNC.bits.vbb + DHD0_VSYNC.bits.vfb);
        maxpos = (maxpos * (16 - DISP_HAL_DISABLE_CH_DELAY_TIME_IN_MS)) >> 4;
#if 1
        waitcnt = 0;
        do{
            DISP_MSLEEP(2);
            DHD0_STATE.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_STATE.u32)+u32hd_id*CHN_OFFSET));
            btm = DHD0_STATE.bits.bottom_field;
            vl  = DHD0_STATE.bits.vcnt;
            waitcnt++;
            //DISP_PRINT(">>>>>> [%d, %d, %d]\n", btm, maxpos, vl);
        }while( btm || (vl > maxpos) || (vl < minpos) );
#else
        DHD0_STATE.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_STATE.u32)+u32hd_id*CHN_OFFSET));
        btm = DHD0_STATE.bits.bottom_field;
        vl  = DHD0_STATE.bits.vcnt;
#endif
    }
#endif

    DHD0_CTRL.bits.intf_en = bTrue;
    //DHD0_CTRL.bits.cbar_en  = 1;
    //DHD0_CTRL.bits.cbar_sel = 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET), DHD0_CTRL.u32);

    VDP_DISP_SetRegUp(u32hd_id);

    //DISP_PRINT(".........................>>>>>> [btm=%d, up=%d, act=%d, vl=%d,w=%d]\n", btm, minpos, maxpos, vl, waitcnt);
}

HI_VOID VDP_DISP_GetIntfEnable(HI_U32 u32hd_id, HI_U32 *pbTrue)
{
    U_DHD0_CTRL DHD0_CTRL;
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetIntfEnable Select Wrong CHANNEL ID\n");
        return ;
    }
        
    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
    *pbTrue = DHD0_CTRL.bits.intf_en;
}


HI_VOID  VDP_DISP_OpenIntf(HI_U32 u32hd_id,VDP_DISP_SYNCINFO_S stSyncInfo)

{
     U_DHD0_CTRL DHD0_CTRL;
     U_DHD0_VSYNC DHD0_VSYNC;
     U_DHD0_VPLUS DHD0_VPLUS;
     U_DHD0_PWR DHD0_PWR;
     U_DHD0_HSYNC1 DHD0_HSYNC1;
     U_DHD0_HSYNC2 DHD0_HSYNC2;


    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_OpenIntf Select Wrong CHANNEL ID\n");
        return ;
    }
    
       
        //VOU VHD CHANNEL enable 
        DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
        DHD0_CTRL.bits.iop   = stSyncInfo.bIop;// 
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET),DHD0_CTRL.u32);

        
        DHD0_HSYNC1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_HSYNC1.u32)+u32hd_id*CHN_OFFSET));
        DHD0_HSYNC2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_HSYNC2.u32)+u32hd_id*CHN_OFFSET));
        DHD0_HSYNC1.bits.hact = stSyncInfo.u32Hact -1;
        DHD0_HSYNC1.bits.hbb  = stSyncInfo.u32Hbb -1;
        DHD0_HSYNC2.bits.hfb  = stSyncInfo.u32Hfb -1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_HSYNC1.u32)+u32hd_id*CHN_OFFSET), DHD0_HSYNC1.u32);
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_HSYNC2.u32)+u32hd_id*CHN_OFFSET), DHD0_HSYNC2.u32);

        
        

        //Config VHD interface veritical timming
        DHD0_VSYNC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VSYNC.u32)+u32hd_id*CHN_OFFSET));
        DHD0_VSYNC.bits.vact = stSyncInfo.u32Vact  -1;
        DHD0_VSYNC.bits.vbb = stSyncInfo.u32Vbb - 1;
        DHD0_VSYNC.bits.vfb =  stSyncInfo.u32Vfb - 1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VSYNC.u32)+u32hd_id*CHN_OFFSET), DHD0_VSYNC.u32);
        
        //Config VHD interface veritical bottom timming,no use in progressive mode
        DHD0_VPLUS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VPLUS.u32)+u32hd_id*CHN_OFFSET));
        DHD0_VPLUS.bits.bvact = stSyncInfo.u32Bvact - 1;
        DHD0_VPLUS.bits.bvbb =  stSyncInfo.u32Bvbb - 1;
        DHD0_VPLUS.bits.bvfb =  stSyncInfo.u32Bvfb - 1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VPLUS.u32)+u32hd_id*CHN_OFFSET), DHD0_VPLUS.u32);

        //Config VHD interface veritical bottom timming, 
        DHD0_PWR.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_PWR.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_PWR.bits.hpw = stSyncInfo.u32Hpw - 1;
        DHD0_PWR.bits.vpw = stSyncInfo.u32Vpw - 1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_PWR.u32)+u32hd_id*CHN_OFFSET), DHD0_PWR.u32);
}

HI_VOID VDP_DISP_SetCbarEnable(HI_U32 u32hd_id,HI_U32 bTrue)
{
    U_DHD0_CTRL DHD0_CTRL;

    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_SetCbarEnable Select Wrong CHANNEL ID\n");
        return ;
    }

    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CTRL.bits.cbar_en = bTrue;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET),DHD0_CTRL.u32);
}

HI_VOID VDP_DISP_SetCbarSel(HI_U32 u32hd_id,HI_U32 u32_cbar_sel)
{
    U_DHD0_CTRL DHD0_CTRL;

    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_SetCbarSel Select Wrong CHANNEL ID\n");
        return ;
    }

    VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CTRL.bits.cbar_sel = u32_cbar_sel;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET),DHD0_CTRL.u32);
}


HI_VOID VDP_DISP_SetVtThd(HI_U32 u32hd_id, HI_U32 u32uthdnum, HI_U32 u32vtthd)
{
    
    U_DHD0_VTTHD DHD0_VTTHD;
    U_DHD0_VTTHD3 DHD0_VTTHD3;
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetVtThd Select Wrong CHANNEL ID\n");
        return ;
    }

    if(u32uthdnum == 1)
    {
        DHD0_VTTHD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VTTHD.u32)+u32hd_id*CHN_OFFSET));
        DHD0_VTTHD.bits.vtmgthd1 = u32vtthd;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VTTHD.u32)+u32hd_id*CHN_OFFSET), DHD0_VTTHD.u32);
    }
    else if(u32uthdnum == 2)
    {
        DHD0_VTTHD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VTTHD.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_VTTHD.bits.vtmgthd2 = u32vtthd;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VTTHD.u32)+u32hd_id*CHN_OFFSET), DHD0_VTTHD.u32);
    }
    else if(u32uthdnum== 3)
    {
        DHD0_VTTHD3.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VTTHD3.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_VTTHD3.bits.vtmgthd3 = u32vtthd;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VTTHD3.u32)+u32hd_id*CHN_OFFSET), DHD0_VTTHD3.u32);            
    }
}

HI_VOID VDP_DISP_SetIntMask  (HI_U32 u32masktypeen)
{
    U_VOINTMSK VOINTMSK;

    /* Dispaly interrupt mask enable */
    VOINTMSK.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VOINTMSK.u32));;
    VOINTMSK.u32 = VOINTMSK.u32 | u32masktypeen;
    VDP_RegWrite((HI_U32)&(pVdpReg->VOINTMSK.u32), VOINTMSK.u32); 

    return ;
}

HI_VOID VDP_DISP_GetIntMask (HI_U32 *pu32masktype)
{
    /* Dispaly interrupt mask enable */
    *pu32masktype = VDP_RegRead((HI_U32)&(pVdpReg->VOINTMSK.u32));;

    return ;
}


#if 1
//FOR FPGA
HI_VOID  VDP_DISP_OpenTypIntf(HI_U32 u32hd_id, VDP_DISP_DIGFMT_E enDigFmt)
{   
    VDP_DISP_SYNCINFO_S  st1SyncInfo;
    HI_U32 select;
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_OpenIntf Select Wrong CHANNEL ID\n");
        return ;
    }
    
    switch(enDigFmt)
    {
        case VDP_DISP_DIGFMT_PAL:
        {
            select = 0;
            
            st1SyncInfo.bIop = s_stSyncTiming[select].bIop;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = s_stSyncTiming[select].bIdv;
            st1SyncInfo.bIhs = s_stSyncTiming[select].bIhs;
            st1SyncInfo.bIvs = s_stSyncTiming[select].bIvs;

            st1SyncInfo.u32Vact = s_stSyncTiming[select].u32Vact;
            st1SyncInfo.u32Vfb  = s_stSyncTiming[select].u32Vfb;
            st1SyncInfo.u32Vbb  = s_stSyncTiming[select].u32Vbb;

            st1SyncInfo.u32Hact = s_stSyncTiming[select].u32Hact;
            st1SyncInfo.u32Hfb  = s_stSyncTiming[select].u32Hfb;
            st1SyncInfo.u32Hbb  = s_stSyncTiming[select].u32Hbb;

            st1SyncInfo.u32Bvact = s_stSyncTiming[select].u32Bvact;
            st1SyncInfo.u32Bvfb = s_stSyncTiming[select].u32Bvfb;
            st1SyncInfo.u32Bvbb = s_stSyncTiming[select].u32Bvbb;

            st1SyncInfo.u32Hpw = s_stSyncTiming[select].u32Hpw;
            st1SyncInfo.u32Vpw = s_stSyncTiming[select].u32Vpw;
              
            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        
            
            //Vou_SetIntfDigSel(VDP_DIGSEL_SINGL_EMB);

            break;

        }
        case VDP_DISP_DIGFMT_NTSC:
        {
            
            select = 1;
            
            st1SyncInfo.bIop = s_stSyncTiming[select].bIop;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = s_stSyncTiming[select].bIdv;
            st1SyncInfo.bIhs = s_stSyncTiming[select].bIhs;
            st1SyncInfo.bIvs = s_stSyncTiming[select].bIvs;

            st1SyncInfo.u32Vact = s_stSyncTiming[select].u32Vact;
            st1SyncInfo.u32Vfb  = s_stSyncTiming[select].u32Vfb;
            st1SyncInfo.u32Vbb  = s_stSyncTiming[select].u32Vbb;

            st1SyncInfo.u32Hact = s_stSyncTiming[select].u32Hact;
            st1SyncInfo.u32Hfb  = s_stSyncTiming[select].u32Hfb;
            st1SyncInfo.u32Hbb  = s_stSyncTiming[select].u32Hbb;

            st1SyncInfo.u32Bvact = s_stSyncTiming[select].u32Bvact;
            st1SyncInfo.u32Bvfb = s_stSyncTiming[select].u32Bvfb;
            st1SyncInfo.u32Bvbb = s_stSyncTiming[select].u32Bvbb;

            st1SyncInfo.u32Hpw = s_stSyncTiming[select].u32Hpw;
            st1SyncInfo.u32Vpw = s_stSyncTiming[select].u32Vpw;
            break;

        }
        case VDP_DISP_DIGFMT_1080P:
        {
            //1080p@25Hz SMPTE 274M
            //1080p@50Hz SMPTE 274M
            
            select = 13;
            
            st1SyncInfo.bIop = s_stSyncTiming[select].bIop;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = s_stSyncTiming[select].bIdv;
            st1SyncInfo.bIhs = s_stSyncTiming[select].bIhs;
            st1SyncInfo.bIvs = s_stSyncTiming[select].bIvs;

            st1SyncInfo.u32Vact = s_stSyncTiming[select].u32Vact;
            st1SyncInfo.u32Vfb  = s_stSyncTiming[select].u32Vfb;
            st1SyncInfo.u32Vbb  = s_stSyncTiming[select].u32Vbb;

            st1SyncInfo.u32Hact = s_stSyncTiming[select].u32Hact;
            st1SyncInfo.u32Hfb  = s_stSyncTiming[select].u32Hfb;
            st1SyncInfo.u32Hbb  = s_stSyncTiming[select].u32Hbb;

            st1SyncInfo.u32Bvact = s_stSyncTiming[select].u32Bvact;
            st1SyncInfo.u32Bvfb = s_stSyncTiming[select].u32Bvfb;
            st1SyncInfo.u32Bvbb = s_stSyncTiming[select].u32Bvbb;

            st1SyncInfo.u32Hpw = s_stSyncTiming[select].u32Hpw;
            st1SyncInfo.u32Vpw = s_stSyncTiming[select].u32Vpw;

            break;

        }
        case VDP_DISP_DIGFMT_1080I:
        {
            
            select = 11;
            
            st1SyncInfo.bIop = s_stSyncTiming[select].bIop;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = s_stSyncTiming[select].bIdv;
            st1SyncInfo.bIhs = s_stSyncTiming[select].bIhs;
            st1SyncInfo.bIvs = s_stSyncTiming[select].bIvs;

            st1SyncInfo.u32Vact = s_stSyncTiming[select].u32Vact;
            st1SyncInfo.u32Vfb  = s_stSyncTiming[select].u32Vfb;
            st1SyncInfo.u32Vbb  = s_stSyncTiming[select].u32Vbb;

            st1SyncInfo.u32Hact = s_stSyncTiming[select].u32Hact;
            st1SyncInfo.u32Hfb  = s_stSyncTiming[select].u32Hfb;
            st1SyncInfo.u32Hbb  = s_stSyncTiming[select].u32Hbb;

            st1SyncInfo.u32Bvact = s_stSyncTiming[select].u32Bvact;
            st1SyncInfo.u32Bvfb = s_stSyncTiming[select].u32Bvfb;
            st1SyncInfo.u32Bvbb = s_stSyncTiming[select].u32Bvbb;

            st1SyncInfo.u32Hpw = s_stSyncTiming[select].u32Hpw;
            st1SyncInfo.u32Vpw = s_stSyncTiming[select].u32Vpw;

            break;

        }
        case VDP_DISP_DIGFMT_720P:
        {
            
            select = 10;
            
            st1SyncInfo.bIop = s_stSyncTiming[select].bIop;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = s_stSyncTiming[select].bIdv;
            st1SyncInfo.bIhs = s_stSyncTiming[select].bIhs;
            st1SyncInfo.bIvs = s_stSyncTiming[select].bIvs;

            st1SyncInfo.u32Vact = s_stSyncTiming[select].u32Vact;
            st1SyncInfo.u32Vfb  = s_stSyncTiming[select].u32Vfb;
            st1SyncInfo.u32Vbb  = s_stSyncTiming[select].u32Vbb;

            st1SyncInfo.u32Hact = s_stSyncTiming[select].u32Hact;
            st1SyncInfo.u32Hfb  = s_stSyncTiming[select].u32Hfb;
            st1SyncInfo.u32Hbb  = s_stSyncTiming[select].u32Hbb;

            st1SyncInfo.u32Bvact = s_stSyncTiming[select].u32Bvact;
            st1SyncInfo.u32Bvfb = s_stSyncTiming[select].u32Bvfb;
            st1SyncInfo.u32Bvbb = s_stSyncTiming[select].u32Bvbb;

            st1SyncInfo.u32Hpw = s_stSyncTiming[select].u32Hpw;
            st1SyncInfo.u32Vpw = s_stSyncTiming[select].u32Vpw;

            break;

        }

        case VDP_DISP_DIGFMT_800x600:
        {
            
            select = 0;
            
            st1SyncInfo.bIop = s_stSyncTiming[select].bIop;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = s_stSyncTiming[select].bIdv;
            st1SyncInfo.bIhs = s_stSyncTiming[select].bIhs;
            st1SyncInfo.bIvs = s_stSyncTiming[select].bIvs;

            st1SyncInfo.u32Vact = s_stSyncTiming[select].u32Vact;
            st1SyncInfo.u32Vfb  = s_stSyncTiming[select].u32Vfb;
            st1SyncInfo.u32Vbb  = s_stSyncTiming[select].u32Vbb;

            st1SyncInfo.u32Hact = s_stSyncTiming[select].u32Hact;
            st1SyncInfo.u32Hfb  = s_stSyncTiming[select].u32Hfb;
            st1SyncInfo.u32Hbb  = s_stSyncTiming[select].u32Hbb;

            st1SyncInfo.u32Bvact = s_stSyncTiming[select].u32Bvact;
            st1SyncInfo.u32Bvfb = s_stSyncTiming[select].u32Bvfb;
            st1SyncInfo.u32Bvbb = s_stSyncTiming[select].u32Bvbb;

            st1SyncInfo.u32Hpw = s_stSyncTiming[select].u32Hpw;
            st1SyncInfo.u32Vpw = s_stSyncTiming[select].u32Vpw;

            break;

        }

        case VDP_DISP_DIGFMT_576P:
        {
            select = 16;
            
            st1SyncInfo.bIop = s_stSyncTiming[select].bIop;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = s_stSyncTiming[select].bIdv;
            st1SyncInfo.bIhs = s_stSyncTiming[select].bIhs;
            st1SyncInfo.bIvs = s_stSyncTiming[select].bIvs;

            st1SyncInfo.u32Vact = s_stSyncTiming[select].u32Vact;
            st1SyncInfo.u32Vfb  = s_stSyncTiming[select].u32Vfb;
            st1SyncInfo.u32Vbb  = s_stSyncTiming[select].u32Vbb;

            st1SyncInfo.u32Hact = s_stSyncTiming[select].u32Hact;
            st1SyncInfo.u32Hfb  = s_stSyncTiming[select].u32Hfb;
            st1SyncInfo.u32Hbb  = s_stSyncTiming[select].u32Hbb;

            st1SyncInfo.u32Bvact = s_stSyncTiming[select].u32Bvact;
            st1SyncInfo.u32Bvfb = s_stSyncTiming[select].u32Bvfb;
            st1SyncInfo.u32Bvbb = s_stSyncTiming[select].u32Bvbb;

            st1SyncInfo.u32Hpw = s_stSyncTiming[select].u32Hpw;
            st1SyncInfo.u32Vpw = s_stSyncTiming[select].u32Vpw;
            
            break;

        }

        case VDP_DISP_DIGFMT_576I:
        {
            
            select = 1;
            
            st1SyncInfo.bIop = s_stSyncTiming[select].bIop;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = s_stSyncTiming[select].bIdv;
            st1SyncInfo.bIhs = s_stSyncTiming[select].bIhs;
            st1SyncInfo.bIvs = s_stSyncTiming[select].bIvs;

            st1SyncInfo.u32Vact = s_stSyncTiming[select].u32Vact;
            st1SyncInfo.u32Vfb  = s_stSyncTiming[select].u32Vfb;
            st1SyncInfo.u32Vbb  = s_stSyncTiming[select].u32Vbb;

            st1SyncInfo.u32Hact = s_stSyncTiming[select].u32Hact;
            st1SyncInfo.u32Hfb  = s_stSyncTiming[select].u32Hfb;
            st1SyncInfo.u32Hbb  = s_stSyncTiming[select].u32Hbb;

            st1SyncInfo.u32Bvact = s_stSyncTiming[select].u32Bvact;
            st1SyncInfo.u32Bvfb = s_stSyncTiming[select].u32Bvfb;
            st1SyncInfo.u32Bvbb = s_stSyncTiming[select].u32Bvbb;

            st1SyncInfo.u32Hpw = s_stSyncTiming[select].u32Hpw;
            st1SyncInfo.u32Vpw = s_stSyncTiming[select].u32Vpw;

            break;

        }

        case VDP_DISP_DIGFMT_480P:
        {
            select = 17;
            
            st1SyncInfo.bIop = s_stSyncTiming[select].bIop;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = s_stSyncTiming[select].bIdv;
            st1SyncInfo.bIhs = s_stSyncTiming[select].bIhs;
            st1SyncInfo.bIvs = s_stSyncTiming[select].bIvs;

            st1SyncInfo.u32Vact = s_stSyncTiming[select].u32Vact;
            st1SyncInfo.u32Vfb  = s_stSyncTiming[select].u32Vfb;
            st1SyncInfo.u32Vbb  = s_stSyncTiming[select].u32Vbb;

            st1SyncInfo.u32Hact = s_stSyncTiming[select].u32Hact;
            st1SyncInfo.u32Hfb  = s_stSyncTiming[select].u32Hfb;
            st1SyncInfo.u32Hbb  = s_stSyncTiming[select].u32Hbb;

            st1SyncInfo.u32Bvact = s_stSyncTiming[select].u32Bvact;
            st1SyncInfo.u32Bvfb = s_stSyncTiming[select].u32Bvfb;
            st1SyncInfo.u32Bvbb = s_stSyncTiming[select].u32Bvbb;

            st1SyncInfo.u32Hpw = s_stSyncTiming[select].u32Hpw;
            st1SyncInfo.u32Vpw = s_stSyncTiming[select].u32Vpw;
            
            break;

        }
        case VDP_DISP_DIGFMT_480I:
        {
            
            select = 0;
            
            st1SyncInfo.bIop = s_stSyncTiming[select].bIop;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = s_stSyncTiming[select].bIdv;
            st1SyncInfo.bIhs = s_stSyncTiming[select].bIhs;
            st1SyncInfo.bIvs = s_stSyncTiming[select].bIvs;

            st1SyncInfo.u32Vact = s_stSyncTiming[select].u32Vact;
            st1SyncInfo.u32Vfb  = s_stSyncTiming[select].u32Vfb;
            st1SyncInfo.u32Vbb  = s_stSyncTiming[select].u32Vbb;

            st1SyncInfo.u32Hact = s_stSyncTiming[select].u32Hact;
            st1SyncInfo.u32Hfb  = s_stSyncTiming[select].u32Hfb;
            st1SyncInfo.u32Hbb  = s_stSyncTiming[select].u32Hbb;

            st1SyncInfo.u32Bvact = s_stSyncTiming[select].u32Bvact;
            st1SyncInfo.u32Bvfb = s_stSyncTiming[select].u32Bvfb;
            st1SyncInfo.u32Bvbb = s_stSyncTiming[select].u32Bvbb;

            st1SyncInfo.u32Hpw = s_stSyncTiming[select].u32Hpw;
            st1SyncInfo.u32Vpw = s_stSyncTiming[select].u32Vpw;

            break;

        }

        case VDP_DISP_DIGFMT_TESTI:
        {
            HI_PRINT("Now is TestMode I\n");
            
            st1SyncInfo.bIop = 0;
            //stSyncInfo.u32Intfb = 1;
            //stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 64;
            st1SyncInfo.u32Vfb  = 6;
            st1SyncInfo.u32Vbb  = 5;

            st1SyncInfo.u32Hact = 720;
            st1SyncInfo.u32Hfb  = 20;
            st1SyncInfo.u32Hbb  = 10;

            st1SyncInfo.u32Bvact = 64;
            st1SyncInfo.u32Bvfb  = 6;
            st1SyncInfo.u32Bvbb  = 5;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        
            
            //Vou_SetIntfDigSel(VDP_DIGSEL_YCMUX_EMB);

            break;

        }
        case VDP_DISP_DIGFMT_TESTP:
        {
            HI_PRINT("Now is TestMode P\n");
            
            st1SyncInfo.bIop = 1;
            //1stSyncInfo.u32Intfb = 2;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 128;
            st1SyncInfo.u32Vfb  = 10;
            st1SyncInfo.u32Vbb  = 10;

            st1SyncInfo.u32Hact = 720;
            st1SyncInfo.u32Hfb  = 16;
            st1SyncInfo.u32Hbb  = 16;

            st1SyncInfo.u32Bvact = 0;
            st1SyncInfo.u32Bvfb  = 0;
            st1SyncInfo.u32Bvbb  = 0;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR444;

            //Vou_SetIntfDigSel(VDP_DIGSEL_YCBCR_EMB);
            
            break;

        }
        case VDP_DISP_DIGFMT_TESTS:
        {
            HI_PRINT("Now is TestMode S\n");
            
            st1SyncInfo.bIop = 0;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 64;
            st1SyncInfo.u32Vfb  = 6;
            st1SyncInfo.u32Vbb  = 2;

            st1SyncInfo.u32Hact = 720;
            st1SyncInfo.u32Hfb  = 20;
            st1SyncInfo.u32Hbb  = 10;

            st1SyncInfo.u32Bvact = 64;
            st1SyncInfo.u32Bvfb  = 6;
            st1SyncInfo.u32Bvbb  = 2;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;

            //Vou_SetIntfDigSel(VDP_DIGSEL_SINGL_EMB);

            break;

        }
        case VDP_DISP_DIGFMT_TESTUT:
        {
            HI_PRINT("Now is TestMode UT\n");
            
            st1SyncInfo.bIop = 1;
            //1stSyncInfo.u32Intfb = 1;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 2048;
            st1SyncInfo.u32Vfb  = 1;
            st1SyncInfo.u32Vbb  = 1;

            st1SyncInfo.u32Hact = 64;
            st1SyncInfo.u32Hfb  = 8;
            st1SyncInfo.u32Hbb  = 8;

            st1SyncInfo.u32Bvact = 0;
            st1SyncInfo.u32Bvfb  = 0;
            st1SyncInfo.u32Bvbb  = 0;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        

            break;

        }
        default:
        {
            HI_PRINT("Error,VDP_DISP_OpenIntf() Wrong Default DIG FMT mode\n");
            return ;
        }
    }

    if(st1SyncInfo.u32Hact <= 0)
    {
        HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Hact = 1;
    }
    if(st1SyncInfo.u32Hbb <=0)
    {HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Hbb = 1;
    }
    if(st1SyncInfo.u32Hfb <=0)
    {HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Hfb = 1;
    }
    
    if(st1SyncInfo.u32Vact <= 0)
    {HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Vact = 1;
    }
    if(st1SyncInfo.u32Vbb <=0)
    {HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Vbb = 1;
    }
    if(st1SyncInfo.u32Vfb <=0)
    {HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Vfb = 1;
    }

    if(st1SyncInfo.u32Bvact <= 0)
    {HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Bvact = 1;
    }
    if(st1SyncInfo.u32Bvbb <=0)
    {HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Bvbb = 1;
    }
    if(st1SyncInfo.u32Bvfb <=0)
    {HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Bvfb = 1;
    }

    if(st1SyncInfo.u32Hpw <=0)
    {HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Hpw = 1;
    }
    if(st1SyncInfo.u32Vpw <=0)
    {HI_PRINT("\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        st1SyncInfo.u32Vpw = 1;
    }

	st1SyncInfo.u32Hmid = 0;
	st1SyncInfo.bSynm = 0;
	st1SyncInfo.u32Intfb = 0;
       
   // VDP_DISP_SetVSync(enChan,stSyncInfo);
   // VDP_DISP_SetHSync(enChan,stSyncInfo);
   // VDP_DISP_SetPlusWidth(enChan,stSyncInfo);
   // VDP_DISP_SetPlusPhase(enChan,stSyncInfo);
   // VDP_DISP_SetOutFmt(enChan,stIntfFmt);
   // VDP_DISP_SetVTThdMode(enChan, HI_BOOL(!(stSyncInfo.bIop)));
   // VDP_DISP_SetIntfMode(enChan,stSyncInfo);
   VDP_DISP_OpenIntf(u32hd_id, st1SyncInfo);

    return ;
    
}
#endif


#if 0
// VDP_DISP_OpenIntf FOR INTF TEST
HI_VOID  VDP_DISP_OpenTypIntf(HI_U32 u32hd_id, VDP_DISP_DIGFMT_E enDigFmt)
{   
    VDP_DISP_SYNCINFO_S  st1SyncInfo;
    
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_OpenIntf Select Wrong CHANNEL ID\n");
        return ;
    }
    
    switch(enDigFmt)
    {
        case VDP_DISP_DIGFMT_PAL:
        {
            
            st1SyncInfo.bIop = 0;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 0x120;
            st1SyncInfo.u32Vfb  = 0x2;
            st1SyncInfo.u32Vbb  = 0x16;

            st1SyncInfo.u32Hact = 0x2d0;
            st1SyncInfo.u32Hfb  = 0xc;
            st1SyncInfo.u32Hbb  = 0x84;

            st1SyncInfo.u32Bvact = 0x120;
            st1SyncInfo.u32Bvfb = 0x02;
            st1SyncInfo.u32Bvbb = 0x17;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;
              
            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        
            
            //Vou_SetIntfDigSel(VDP_DIGSEL_SINGL_EMB);

            break;

        }
        case VDP_DISP_DIGFMT_NTSC:
        {
            
            st1SyncInfo.bIop = 0;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 0xf0;
            st1SyncInfo.u32Vfb  = 0x2;
            st1SyncInfo.u32Vbb  = 0x13;

            st1SyncInfo.u32Hact = 0x2d0;
            st1SyncInfo.u32Hfb  = 0x10;
            st1SyncInfo.u32Hbb  = 0x7a;

            st1SyncInfo.u32Bvact = 0xf0;
            st1SyncInfo.u32Bvfb = 0x02;
            st1SyncInfo.u32Bvbb = 0x14;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;
              
            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        

            //Vou_SetIntfDigSel(VDP_DIGSEL_SINGL_EMB);

            break;

        }
        case VDP_DISP_DIGFMT_1080P:
        {
            //1080p@25Hz SMPTE 274M
            //1080p@50Hz SMPTE 274M
            
            st1SyncInfo.bIop = 1;
            //1stSyncInfo.u32Intfb = 1;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 1080;
            st1SyncInfo.u32Vfb  = 4;
            st1SyncInfo.u32Vbb  = 41;

            st1SyncInfo.u32Hact = 1920;
            st1SyncInfo.u32Hfb  = 528;
            st1SyncInfo.u32Hbb  = 192;

            st1SyncInfo.u32Bvact = 0;
            st1SyncInfo.u32Bvfb  = 0;
            st1SyncInfo.u32Bvbb  = 0;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        

            //Vou_SetIntfDigSel(VDP_DIGSEL_YCMUX_EMB);

            break;

        }
        case VDP_DISP_DIGFMT_1080I:
        {
            
            st1SyncInfo.bIop = 0;
            //1stSyncInfo.u32Intfb = 1;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 540;
            st1SyncInfo.u32Vfb  = 3;
            st1SyncInfo.u32Vbb  = 20;

            st1SyncInfo.u32Hact = 1920;
            st1SyncInfo.u32Hfb  = 528;
            st1SyncInfo.u32Hbb  = 192;

            st1SyncInfo.u32Bvact = 540;
            st1SyncInfo.u32Bvfb  = 2;
            st1SyncInfo.u32Bvbb  = 20;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;
              
            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        

            //Vou_SetIntfDigSel(VDP_DIGSEL_YCMUX_EMB);

            break;

        }
        case VDP_DISP_DIGFMT_720P:
        {
            
            st1SyncInfo.bIop = 1;
            //s1tSyncInfo.u32Intfb = 1;
            //s1tSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 720;
            st1SyncInfo.u32Vfb  = 5;
            st1SyncInfo.u32Vbb  = 25;

            st1SyncInfo.u32Hact = 1280;
            st1SyncInfo.u32Hfb  = 440;
            st1SyncInfo.u32Hbb  = 260;

            st1SyncInfo.u32Bvact = 0;
            st1SyncInfo.u32Bvfb  = 0;
            st1SyncInfo.u32Bvbb  = 0;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        
            
            //Vou_SetIntfDigSel(VDP_DIGSEL_YCMUX_EMB);

            break;

        }

        case VDP_DISP_DIGFMT_800x600:
        {
            
            st1SyncInfo.bIop = 1;
            //s1tSyncInfo.u32Intfb = 1;
            //s1tSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 600;
            st1SyncInfo.u32Vfb  = 1;
            st1SyncInfo.u32Vbb  = 27;

            st1SyncInfo.u32Hact = 800;
            st1SyncInfo.u32Hfb  =  40;
            st1SyncInfo.u32Hbb  = 216;

            st1SyncInfo.u32Bvact = 0;
            st1SyncInfo.u32Bvfb  = 0;
            st1SyncInfo.u32Bvbb  = 0;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        
            
            //Vou_SetIntfDigSel(VDP_DIGSEL_YCMUX_EMB);

            break;

        }

        case VDP_DISP_DIGFMT_576P:
        {
            st1SyncInfo.bIop = 1;
            //s1tSyncInfo.u32Intfb = 1;
            //s1tSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact =  576;
            st1SyncInfo.u32Vfb  =  0x2;
            st1SyncInfo.u32Vbb  = 0x16;

            st1SyncInfo.u32Hact =  720;
            st1SyncInfo.u32Hfb  =  0xc;
            st1SyncInfo.u32Hbb  = 0x84;

            st1SyncInfo.u32Bvact = 0;
            st1SyncInfo.u32Bvfb  = 0;
            st1SyncInfo.u32Bvbb  = 0;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        

            //Vou_SetIntfDigSel(VDP_DIGSEL_YCMUX_EMB);
            
            break;

        }

        case VDP_DISP_DIGFMT_576I:
        {
            
            st1SyncInfo.bIop = 0;
            //1stSyncInfo.u32Intfb = 1;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact =   288;
            st1SyncInfo.u32Vfb  =   0x2;
            st1SyncInfo.u32Vbb  =  0x16;

            st1SyncInfo.u32Hact =   720;
            st1SyncInfo.u32Hfb  =   0xc;
            st1SyncInfo.u32Hbb  =  0x84;

            st1SyncInfo.u32Bvact =  288;
            st1SyncInfo.u32Bvfb  =  0x2;
            st1SyncInfo.u32Bvbb  = 0x17;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;
              
            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        

            //Vou_SetIntfDigSel(VDP_DIGSEL_YCMUX_EMB);

            break;

        }

        case VDP_DISP_DIGFMT_480P:
        {
            st1SyncInfo.bIop = 1;
            //1stSyncInfo.u32Intfb = 1;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact =  480;
            st1SyncInfo.u32Vfb  =    2;
            st1SyncInfo.u32Vbb  = 0x10;

            st1SyncInfo.u32Hact =  720;
            st1SyncInfo.u32Hfb  = 0x10;
            st1SyncInfo.u32Hbb  = 0x7a;

            st1SyncInfo.u32Bvact = 0;
            st1SyncInfo.u32Bvfb  = 0;
            st1SyncInfo.u32Bvbb  = 0;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        

            //Vou_SetIntfDigSel(VDP_DIGSEL_YCMUX_EMB);
            
            break;

        }
        case VDP_DISP_DIGFMT_480I:
        {
            
            st1SyncInfo.bIop = 0;
            //1stSyncInfo.u32Intfb = 1;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact =   240;
            st1SyncInfo.u32Vfb  =   0x2;
            st1SyncInfo.u32Vbb  =  0x10;

            st1SyncInfo.u32Hact =   720;
            st1SyncInfo.u32Hfb  =  0x10;
            st1SyncInfo.u32Hbb  =  0x7a;

            st1SyncInfo.u32Bvact =  240;
            st1SyncInfo.u32Bvfb  = 0x03;
            st1SyncInfo.u32Bvbb  = 0x11;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;
              
            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        

           // Vou_SetIntfDigSel(VDP_DIGSEL_YCMUX_EMB);

            break;

        }

        case VDP_DISP_DIGFMT_TESTI:
        {
            HI_PRINT("Now is TestMode I\n");
            
            st1SyncInfo.bIop = 0;
            //stSyncInfo.u32Intfb = 1;
            //stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 64;
            st1SyncInfo.u32Vfb  = 6;
            st1SyncInfo.u32Vbb  = 5;

            st1SyncInfo.u32Hact = 720;
            st1SyncInfo.u32Hfb  = 20;
            st1SyncInfo.u32Hbb  = 10;

            st1SyncInfo.u32Bvact = 64;
            st1SyncInfo.u32Bvfb  = 6;
            st1SyncInfo.u32Bvbb  = 5;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        
            
            //Vou_SetIntfDigSel(VDP_DIGSEL_YCMUX_EMB);

            break;

        }
        case VDP_DISP_DIGFMT_TESTP:
        {
            HI_PRINT("Now is TestMode P\n");
            
            st1SyncInfo.bIop = 1;
            //1stSyncInfo.u32Intfb = 2;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 128;
            st1SyncInfo.u32Vfb  = 10;
            st1SyncInfo.u32Vbb  = 10;

            st1SyncInfo.u32Hact = 720;
            st1SyncInfo.u32Hfb  = 16;
            st1SyncInfo.u32Hbb  = 16;

            st1SyncInfo.u32Bvact = 0;
            st1SyncInfo.u32Bvfb  = 0;
            st1SyncInfo.u32Bvbb  = 0;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR444;

            //Vou_SetIntfDigSel(VDP_DIGSEL_YCBCR_EMB);
            
            break;

        }
        case VDP_DISP_DIGFMT_TESTS:
        {
            HI_PRINT("Now is TestMode S\n");
            
            st1SyncInfo.bIop = 0;
            //1stSyncInfo.u32Intfb = 0;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 64;
            st1SyncInfo.u32Vfb  = 6;
            st1SyncInfo.u32Vbb  = 2;

            st1SyncInfo.u32Hact = 720;
            st1SyncInfo.u32Hfb  = 20;
            st1SyncInfo.u32Hbb  = 10;

            st1SyncInfo.u32Bvact = 64;
            st1SyncInfo.u32Bvfb  = 6;
            st1SyncInfo.u32Bvbb  = 2;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;

            //Vou_SetIntfDigSel(VDP_DIGSEL_SINGL_EMB);

            break;

        }
        case VDP_DISP_DIGFMT_TESTUT:
        {
            HI_PRINT("Now is TestMode UT\n");
            
            st1SyncInfo.bIop = 1;
            //1stSyncInfo.u32Intfb = 1;
            //1stSyncInfo.bSynm = 0;
            
            st1SyncInfo.bIdv = 0;
            st1SyncInfo.bIhs = 0;
            st1SyncInfo.bIvs = 0;

            st1SyncInfo.u32Vact = 2048;
            st1SyncInfo.u32Vfb  = 1;
            st1SyncInfo.u32Vbb  = 1;

            st1SyncInfo.u32Hact = 64;
            st1SyncInfo.u32Hfb  = 8;
            st1SyncInfo.u32Hbb  = 8;

            st1SyncInfo.u32Bvact = 0;
            st1SyncInfo.u32Bvfb  = 0;
            st1SyncInfo.u32Bvbb  = 0;

            st1SyncInfo.u32Hpw = 0x0;
            st1SyncInfo.u32Vpw = 0x0;

            //stIntfFmt = VDP_DISP_INTFDATAFMT_YCBCR422;        

            break;

        }
        default:
        {
            HI_PRINT("Error,VDP_DISP_OpenIntf() Wrong Default DIG FMT mode\n");
            return ;
        }
    }

    if(st1SyncInfo.u32Hact <= 0)
    {
        st1SyncInfo.u32Hact = 1;
    }
    if(st1SyncInfo.u32Hbb <=0)
    {
        st1SyncInfo.u32Hbb = 1;
    }
    if(st1SyncInfo.u32Hfb <=0)
    {
        st1SyncInfo.u32Hfb = 1;
    }
    
    if(st1SyncInfo.u32Vact <= 0)
    {
        st1SyncInfo.u32Vact = 1;
    }
    if(st1SyncInfo.u32Vbb <=0)
    {
        st1SyncInfo.u32Vbb = 1;
    }
    if(st1SyncInfo.u32Vfb <=0)
    {
        st1SyncInfo.u32Vfb = 1;
    }

    if(st1SyncInfo.u32Bvact <= 0)
    {
        st1SyncInfo.u32Bvact = 1;
    }
    if(st1SyncInfo.u32Bvbb <=0)
    {
        st1SyncInfo.u32Bvbb = 1;
    }
    if(st1SyncInfo.u32Bvfb <=0)
    {
        st1SyncInfo.u32Bvfb = 1;
    }

    if(st1SyncInfo.u32Hpw <=0)
    {
        st1SyncInfo.u32Hpw = 1;
    }
    if(st1SyncInfo.u32Vpw <=0)
    {
        st1SyncInfo.u32Vpw = 1;
    }
       
   // VDP_DISP_SetVSync(enChan,stSyncInfo);
   // VDP_DISP_SetHSync(enChan,stSyncInfo);
   // VDP_DISP_SetPlusWidth(enChan,stSyncInfo);
   // VDP_DISP_SetPlusPhase(enChan,stSyncInfo);
   // VDP_DISP_SetOutFmt(enChan,stIntfFmt);
   // VDP_DISP_SetVTThdMode(enChan, HI_BOOL(!(stSyncInfo.bIop)));
   // VDP_DISP_SetIntfMode(enChan,stSyncInfo);
   VDP_DISP_OpenIntf(u32hd_id,st1SyncInfo);

    return ;
    
}
#endif
# if 0

HI_VOID VDP_DISP_SetVSync(HI_U32 u32hd_id, HI_U32 u32vfb, HI_U32 u32vbb, HI_U32 u32vact)
{
    U_DHD0_VSYNC DHD0_VSYNC;
    if(u32hd_id>=CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetVSync Select Wrong CHANNEL ID\n");
        return ;
    }
    //Config VHD interface veritical timming
    DHD0_VSYNC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VSYNC.u32)+u32hd_id*CHN_OFFSET));
    DHD0_VSYNC.bits.vact = u32vact;
    DHD0_VSYNC.bits.vbb = u32vbb;
    DHD0_VSYNC.bits.vfb = u32vfb;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VSYNC.u32)+u32hd_id*CHN_OFFSET), DHD0_VSYNC.u32);
}


    
HI_VOID VDP_DISP_SetVSyncPlus(HI_U32 u32hd_id, HI_U32 u32bvfb, HI_U32 u32bvbb, HI_U32 u32vact)
{
    
     U_DHD0_VPLUS DHD0_VPLUS;
    if(u32hd_id>=CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetVSyncPlus Select Wrong CHANNEL ID\n");
        return ;
    }

     //Config VHD interface veritical bottom timming,no use in progressive mode
     DHD0_VPLUS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VPLUS.u32)+u32hd_id*CHN_OFFSET));
     DHD0_VPLUS.bits.bvact = bvfb;
     DHD0_VPLUS.bits.bvbb = bvbb;
     DHD0_VPLUS.bits.bvfb = vact;
     VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VPLUS.u32)+u32hd_id*CHN_OFFSET), DHD0_VPLUS.u32);
    
        
}
HI_VOID VDP_DISP_SetHSync(HI_U32 u32hd_id, HI_U32 u32hfb, HI_U32 u32hbb, HI_U32 u32hact)
{
   
    
    U_DHD0_HSYNC1 DHD0_HSYNC1;
    U_DHD0_HSYNC2 DHD0_HSYNC2;
    if(u32hd_id>=CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetHSync Select Wrong CHANNEL ID\n");
        return ;
    }

        //Config VHD interface horizontal timming
    DHD0_HSYNC1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_HSYNC1.u32)+u32hd_id*CHN_OFFSET));
    DHD0_HSYNC2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_HSYNC2.u32)+u32hd_id*CHN_OFFSET));
    DHD0_HSYNC1.bits.hact = u32hact;
    DHD0_HSYNC1.bits.hbb = u32hbb;
    DHD0_HSYNC2.bits.hfb = u32hfb;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_HSYNC1.u32)+u32hd_id*CHN_OFFSET), DHD0_HSYNC1.u32);
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_HSYNC2.u32)+u32hd_id*CHN_OFFSET), DHD0_HSYNC2.u32);
    
}


HI_VOID  VDP_DISP_SetPlusWidth(HI_U32 u32hd_id, HI_U32 u32hpw, HI_U32 u32vpw)
{
     U_DHD0_PWR DHD0_PWR;
     if(u32hd_id>=CHN_MAX)
     {
          HI_PRINT("Error,VDP_DISP_SetPlusWidth Select Wrong CHANNEL ID\n");
          return ;
     }
     DHD0_PWR.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_PWR.u32)+u32hd_id*CHN_OFFSET));
     DHD0_PWR.bits.hpw = u32hpw;
     DHD0_PWR.bits.vpw = u32vpw;
     VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_PWR.u32)+u32hd_id*CHN_OFFSET), DHD0_PWR.u32);
}

HI_VOID VDP_DISP_SetPlusPhase(HI_U32 u32hd_id, HI_U32 u32ihs, HI_U32 u32ivs, HI_U32 u32idv)
{
     U_DHD0_CTRL DHD0_CTRL;
     if(u32hd_id>=CHN_MAX)
     {
          HI_PRINT("Error,VDP_DISP_SetPlusPhase Select Wrong CHANNEL ID\n");
          return ;
     }
     DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
     DHD0_CTRL.bits.ihs = u32ihs;
     DHD0_CTRL.bits.ivs = u32ivs;
     DHD0_CTRL.bits.idv = u32idv;
     VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET), DHD0_CTRL.u32);
}

#endif

HI_VOID VDP_DISP_SetSyncInv(HI_U32 u32hd_id, VDP_DISP_INTF_E enIntf, VDP_DISP_SYNCINV_E enInv)
{
    U_DHD0_SYNC_INV DHD0_SYNC_INV;
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetSync_INV Select Wrong CHANNEL ID\n");
        return ;
    }
    
    switch(enIntf)
    {
        case VDP_DISP_INTF_DATE:
        {
            DHD0_SYNC_INV.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_SYNC_INV.u32)));
            DHD0_SYNC_INV.bits.date_dv_inv = enInv.u32Dinv; 
            VDP_RegWrite((HI_U32)&(pVdpReg->DHD0_SYNC_INV.u32),DHD0_SYNC_INV.u32); 

            break;
        }
        case VDP_DISP_INTF_HDMI:
        {
            DHD0_SYNC_INV.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_SYNC_INV.u32)));
            DHD0_SYNC_INV.bits.hdmi_f_inv = enInv.u32Hdfinv; 
            DHD0_SYNC_INV.bits.hdmi_vs_inv = enInv.u32Hdvinv; 
            DHD0_SYNC_INV.bits.hdmi_hs_inv = enInv.u32Hdhinv; 
            DHD0_SYNC_INV.bits.hdmi_dv_inv = enInv.u32Hddinv; 
            VDP_RegWrite((HI_U32)&(pVdpReg->DHD0_SYNC_INV.u32),DHD0_SYNC_INV.u32); 

            break;
        }
        case VDP_DISP_INTF_VGA:
        {
            DHD0_SYNC_INV.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_SYNC_INV.u32)));
            DHD0_SYNC_INV.bits.vga_vs_inv = enInv.u32Vgavinv; 
            DHD0_SYNC_INV.bits.vga_hs_inv = enInv.u32Vgahinv; 
            DHD0_SYNC_INV.bits.vga_dv_inv = enInv.u32Vgadinv; 
            VDP_RegWrite((HI_U32)&(pVdpReg->DHD0_SYNC_INV.u32),DHD0_SYNC_INV.u32); 

            break;
        }
        case VDP_DISP_INTF_LCD:
        {
            DHD0_SYNC_INV.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_SYNC_INV.u32)));
            DHD0_SYNC_INV.bits.lcd_vs_inv = enInv.u32Lcdvinv; 
            DHD0_SYNC_INV.bits.lcd_hs_inv = enInv.u32Lcdhinv; 
            DHD0_SYNC_INV.bits.lcd_dv_inv = enInv.u32Lcddinv; 
            VDP_RegWrite((HI_U32)&(pVdpReg->DHD0_SYNC_INV.u32),DHD0_SYNC_INV.u32); 

            break;
        }
        default:
        {
            HI_PRINT("Error! DP_DISP_SetSyncInv Wrong Select\n");
            return ;
        }
    }
    return ;
}


HI_VOID  VDP_DISP_SetIntfMuxSel(HI_U32 u32hd_id, VDP_DISP_INTF_E enIntf)
{
    U_VO_MUX VO_MUX;
    
    if(u32hd_id >= CHN_MAX)
     {
          HI_PRINT("Error,VDP_DISP_SetIntfMuxSel Select Wrong CHANNEL ID\n");
          return ;
     }

    switch(enIntf)
    {
        case VDP_DISP_INTF_LCD:
        {
            VO_MUX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VO_MUX.u32)));;
            VO_MUX.bits.digital_sel = u32hd_id*2; 
            VDP_RegWrite((HI_U32)&(pVdpReg->VO_MUX.u32), VO_MUX.u32); 

            break;
        }
        case VDP_DISP_INTF_BT1120:
        {
            VO_MUX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VO_MUX.u32)));;
            VO_MUX.bits.digital_sel = 1+u32hd_id*2; 
            VDP_RegWrite((HI_U32)&(pVdpReg->VO_MUX.u32), VO_MUX.u32); 

            break;
        }
        case VDP_DISP_INTF_HDMI:
        {
            VO_MUX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VO_MUX.u32)));;
            VO_MUX.bits.hdmi_sel = u32hd_id; 
            VDP_RegWrite((HI_U32)&(pVdpReg->VO_MUX.u32), VO_MUX.u32); 

            break;
        }
        case VDP_DISP_INTF_VGA:
        {
            VO_MUX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VO_MUX.u32)));;
            VO_MUX.bits.vga_sel = u32hd_id;
            VDP_RegWrite((HI_U32)&(pVdpReg->VO_MUX.u32), VO_MUX.u32); 

            break;
        }
        case VDP_DISP_INTF_HDDATE:
        {
            VO_MUX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VO_MUX.u32)));;
            VO_MUX.bits.hddate_sel = u32hd_id;
            VDP_RegWrite((HI_U32)&(pVdpReg->VO_MUX.u32), VO_MUX.u32); 

            break;
        }

        case VDP_DISP_INTF_SDDATE:
        {
            VO_MUX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VO_MUX.u32)));;
            VO_MUX.bits.sddate_sel = u32hd_id;
            VDP_RegWrite((HI_U32)&(pVdpReg->VO_MUX.u32), VO_MUX.u32); 

            break;
        }

        default:
        {
            HI_PRINT("Error! DP_DISP_SetIntfMuxSel Wrong Select\n");
            return ;
        }
    }
    return ;
}

//-------------------------------------------------------------------
//VDP_DISP_DITHER BEGIN
//-------------------------------------------------------------------
HI_VOID VDP_DISP_SetDitherMode  (HI_U32 u32hd_id, VDP_DISP_INTF_E enIntf, VDP_DITHER_E enDitherMode)

{
    U_DHD0_DITHER0_CTRL DHD0_DITHER0_CTRL;
    U_DHD0_DITHER1_CTRL DHD0_DITHER1_CTRL;

    if(u32hd_id >= CHN_MAX)
    {
          HI_PRINT("Error,VDP_DISP_SetDitherMode Select Wrong CHANNEL ID\n");
          return ;
    }

    if(enIntf == VDP_DISP_INTF_LCD)
    {
         
        DHD0_DITHER0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_DITHER0_CTRL.u32)+u32hd_id*CHN_OFFSET));
        DHD0_DITHER0_CTRL.bits.dither_md = enDitherMode;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_DITHER0_CTRL.u32)+u32hd_id*CHN_OFFSET), DHD0_DITHER0_CTRL.u32);

    }
    else if(enIntf == VDP_DISP_INTF_BT1120)
    {
        DHD0_DITHER1_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_DITHER1_CTRL.u32)+u32hd_id*CHN_OFFSET));
        DHD0_DITHER1_CTRL.bits.dither_md = enDitherMode;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_DITHER1_CTRL.u32)+u32hd_id*CHN_OFFSET), DHD0_DITHER1_CTRL.u32);

    }
    else 
    {
         HI_PRINT("Error,VDP_DISP_SetDitherMode Select Wrong Interface Mode\n");
         return ;

    }
    
}

HI_VOID VDP_DISP_SetDitherCoef  (HI_U32 u32hd_id, VDP_DISP_INTF_E enIntf, VDP_DITHER_COEF_S dither_coef)

{
    U_DHD0_DITHER0_COEF0 DHD0_DITHER0_COEF0;
    U_DHD0_DITHER0_COEF1 DHD0_DITHER0_COEF1;
    U_DHD0_DITHER1_COEF0 DHD0_DITHER1_COEF0;
    U_DHD0_DITHER1_COEF1 DHD0_DITHER1_COEF1;

    if(u32hd_id >= CHN_MAX)
    {
          HI_PRINT("Error,VDP_DISP_SetDitherCoef Select Wrong CHANNEL ID\n");
          return ;
    }

    if(enIntf == VDP_DISP_INTF_LCD)
    {
         
        DHD0_DITHER0_COEF0.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_DITHER0_COEF0.u32)+u32hd_id*CHN_OFFSET));
        DHD0_DITHER0_COEF0.bits.dither_coef0 = dither_coef.dither_coef0 ;
        DHD0_DITHER0_COEF0.bits.dither_coef1 = dither_coef.dither_coef1 ;
        DHD0_DITHER0_COEF0.bits.dither_coef2 = dither_coef.dither_coef2 ;
        DHD0_DITHER0_COEF0.bits.dither_coef3 = dither_coef.dither_coef3 ;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_DITHER0_COEF0.u32)+u32hd_id*CHN_OFFSET), DHD0_DITHER0_COEF0.u32);
        
        DHD0_DITHER0_COEF1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_DITHER0_COEF1.u32)+u32hd_id*CHN_OFFSET));
        DHD0_DITHER0_COEF1.bits.dither_coef4 = dither_coef.dither_coef4 ;
        DHD0_DITHER0_COEF1.bits.dither_coef5 = dither_coef.dither_coef5 ;
        DHD0_DITHER0_COEF1.bits.dither_coef6 = dither_coef.dither_coef6 ;
        DHD0_DITHER0_COEF1.bits.dither_coef7 = dither_coef.dither_coef7 ;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_DITHER0_COEF1.u32)+u32hd_id*CHN_OFFSET), DHD0_DITHER0_COEF1.u32);

    }
    else if(enIntf == VDP_DISP_INTF_BT1120)
    {
        DHD0_DITHER1_COEF0.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_DITHER1_COEF0.u32)+u32hd_id*CHN_OFFSET));
        DHD0_DITHER1_COEF0.bits.dither_coef0 =dither_coef.dither_coef0 ;
        DHD0_DITHER1_COEF0.bits.dither_coef1 =dither_coef.dither_coef1 ;
        DHD0_DITHER1_COEF0.bits.dither_coef2 =dither_coef.dither_coef2 ;
        DHD0_DITHER1_COEF0.bits.dither_coef3 =dither_coef.dither_coef3 ;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_DITHER1_COEF0.u32)+u32hd_id*CHN_OFFSET), DHD0_DITHER1_COEF0.u32);
        
        DHD0_DITHER1_COEF1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_DITHER1_COEF1.u32)+u32hd_id*CHN_OFFSET));
        DHD0_DITHER1_COEF1.bits.dither_coef4 =dither_coef.dither_coef4 ;
        DHD0_DITHER1_COEF1.bits.dither_coef5 =dither_coef.dither_coef5 ;
        DHD0_DITHER1_COEF1.bits.dither_coef6 =dither_coef.dither_coef6 ;
        DHD0_DITHER1_COEF1.bits.dither_coef7 =dither_coef.dither_coef7 ;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_DITHER1_COEF1.u32)+u32hd_id*CHN_OFFSET), DHD0_DITHER1_COEF1.u32);

    }
    else 
    {
         HI_PRINT("Error,VDP_DISP_SetDitherCoef Select Wrong Interface Mode\n");
         return ;

    }
    
}
//-------------------------------------------------------------------
//VDP_DISP_DITHER END
//-------------------------------------------------------------------


// INT SET 
HI_VOID  VDP_DISP_SetIntDisable(HI_U32 u32masktypeen)
{
    U_VOINTMSK VOINTMSK;

    /* Dispaly interrupt mask enable */
    VOINTMSK.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VOINTMSK.u32)));;
    VOINTMSK.u32 = VOINTMSK.u32 & (~u32masktypeen);
    VDP_RegWrite((HI_U32)&(pVdpReg->VOINTMSK.u32), VOINTMSK.u32);

    return ;
}

HI_U32 VDP_DISP_GetIntSta(HI_U32 u32intmask)
{
    U_VOINTSTA VOINTSTA;
    if (!pVdpReg)
    {
        HI_PRINT("pVdpReg is is a null\n");
        VOINTSTA.u32 = 0;
    }
    else
    {
        /* read interrupt status */
        VOINTSTA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VOINTSTA.u32)));
    }
    
    return (VOINTSTA.u32 & u32intmask);
}
HI_VOID  VDP_DISP_ClearIntSta(HI_U32 u32intmask)
{
    /* clear interrupt status */
    //U_VOMSKINTSTA VOMSKINTSTA;
    
    VDP_RegWrite((HI_U32)&(pVdpReg->VOMSKINTSTA.u32), u32intmask);
}

///VTT INT
HI_VOID VDP_DISP_SetVtThdMode(HI_U32 u32hd_id, HI_U32 u32uthdnum, HI_U32 u32mode)
{
    U_DHD0_VTTHD3 DHD0_VTTHD3;
    U_DHD0_VTTHD DHD0_VTTHD;
    
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetVtThdMode Select Wrong CHANNEL ID\n");
        return ;
    }
    
    if(u32uthdnum == 1)//threshold 1 int mode
    {
        DHD0_VTTHD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VTTHD.u32)+u32hd_id*CHN_OFFSET));
        DHD0_VTTHD.bits.thd1_mode = u32mode;// frame or field
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VTTHD.u32)+u32hd_id*CHN_OFFSET), DHD0_VTTHD.u32);
    }
    else if(u32uthdnum == 2)//threshold 2 int mode
    {
        DHD0_VTTHD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VTTHD.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_VTTHD.bits.thd2_mode = u32mode;// frame or field
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VTTHD.u32)+u32hd_id*CHN_OFFSET), DHD0_VTTHD.u32);
    }
    else if(u32uthdnum == 3)//threshold 3 int mode
    {
        DHD0_VTTHD3.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VTTHD3.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_VTTHD3.bits.thd3_mode = u32mode;// frame or field
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VTTHD3.u32)+u32hd_id*CHN_OFFSET), DHD0_VTTHD3.u32);            
          
    }
}

//-------------------------------------------------------------------
//VDP_DISP_CLIP_BEGIN
//-------------------------------------------------------------------
HI_VOID  VDP_DISP_SetClipEnable  (HI_U32 u32hd_id, VDP_DISP_INTF_E enIntf)
{
    HI_PRINT("Error,This Driver has been deleted ...\n");
}

HI_VOID  VDP_DISP_SetClipCoef (HI_U32 u32hd_id, VDP_DISP_INTF_E clipsel, VDP_DISP_CLIP_S stClipData)
{   
    
    U_DHD0_CLIP0_L       DHD0_CLIP0_L;
    U_DHD0_CLIP0_H       DHD0_CLIP0_H;
    U_DHD0_CLIP1_L       DHD0_CLIP1_L;
    U_DHD0_CLIP1_H       DHD0_CLIP1_H;
    U_DHD0_CLIP2_L       DHD0_CLIP2_L;
    U_DHD0_CLIP2_H       DHD0_CLIP2_H;
    U_DHD0_CLIP3_L       DHD0_CLIP3_L;
    U_DHD0_CLIP3_H       DHD0_CLIP3_H;
    U_DHD0_CLIP4_L       DHD0_CLIP4_L;
    U_DHD0_CLIP4_H       DHD0_CLIP4_H;

    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetClipVtt Select Wrong CHANNEL ID\n");
        return ;
    }

    //BT1120
    if(clipsel == VDP_DISP_INTF_BT1120)
    {
        DHD0_CLIP0_L.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CLIP0_L.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CLIP0_L.bits.clip_cl2 = stClipData.u32ClipLow_y;
        DHD0_CLIP0_L.bits.clip_cl1 = stClipData.u32ClipLow_cb;
        DHD0_CLIP0_L.bits.clip_cl0 = stClipData.u32ClipLow_cr;        
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CLIP0_L.u32)+u32hd_id*CHN_OFFSET), DHD0_CLIP0_L.u32);

        DHD0_CLIP0_H.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CLIP0_H.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CLIP0_H.bits.clip_ch2 = stClipData.u32ClipHigh_y;
        DHD0_CLIP0_H.bits.clip_ch1 = stClipData.u32ClipHigh_cb;
        DHD0_CLIP0_H.bits.clip_ch0 = stClipData.u32ClipHigh_cr;        
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CLIP0_H.u32)+u32hd_id*CHN_OFFSET), DHD0_CLIP0_H.u32); 
    }
    
    //DATE
    else if(clipsel == VDP_DISP_INTF_DATE)
    {
    
        DHD0_CLIP1_L.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CLIP1_L.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CLIP1_L.bits.clip_cl2 = stClipData.u32ClipLow_y;
        DHD0_CLIP1_L.bits.clip_cl1 = stClipData.u32ClipLow_cb;
        DHD0_CLIP1_L.bits.clip_cl0 = stClipData.u32ClipLow_cr;        
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CLIP1_L.u32)+u32hd_id*CHN_OFFSET), DHD0_CLIP1_L.u32);

        DHD0_CLIP1_H.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CLIP1_H.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CLIP1_H.bits.clip_ch2 = stClipData.u32ClipHigh_y;
        DHD0_CLIP1_H.bits.clip_ch1 = stClipData.u32ClipHigh_cb;
        DHD0_CLIP1_H.bits.clip_ch0 = stClipData.u32ClipHigh_cr;        
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CLIP1_H.u32)+u32hd_id*CHN_OFFSET), DHD0_CLIP1_H.u32); 
    }
    
    //HDMI
    else if(clipsel == VDP_DISP_INTF_HDMI)
    {
    
        DHD0_CLIP2_L.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CLIP2_L.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CLIP2_L.bits.clip_cl2 = stClipData.u32ClipLow_y;
        DHD0_CLIP2_L.bits.clip_cl1 = stClipData.u32ClipLow_cb;
        DHD0_CLIP2_L.bits.clip_cl0 = stClipData.u32ClipLow_cr;        
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CLIP2_L.u32)+u32hd_id*CHN_OFFSET), DHD0_CLIP2_L.u32);

        DHD0_CLIP2_H.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CLIP2_H.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CLIP2_H.bits.clip_ch2 = stClipData.u32ClipHigh_y;
        DHD0_CLIP2_H.bits.clip_ch1 = stClipData.u32ClipHigh_cb;
        DHD0_CLIP2_H.bits.clip_ch0 = stClipData.u32ClipHigh_cr;        
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CLIP2_H.u32)+u32hd_id*CHN_OFFSET), DHD0_CLIP2_H.u32); 
    }
    
    //VGA
    else if(clipsel == VDP_DISP_INTF_VGA)
    {
    
        DHD0_CLIP3_L.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CLIP3_L.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CLIP3_L.bits.clip_cl2 = stClipData.u32ClipLow_y;
        DHD0_CLIP3_L.bits.clip_cl1 = stClipData.u32ClipLow_cb;
        DHD0_CLIP3_L.bits.clip_cl0 = stClipData.u32ClipLow_cr;        
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CLIP3_L.u32)+u32hd_id*CHN_OFFSET), DHD0_CLIP3_L.u32);

        DHD0_CLIP3_H.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CLIP3_H.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CLIP3_H.bits.clip_ch2 = stClipData.u32ClipHigh_y;
        DHD0_CLIP3_H.bits.clip_ch1 = stClipData.u32ClipHigh_cb;
        DHD0_CLIP3_H.bits.clip_ch0 = stClipData.u32ClipHigh_cr;        
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CLIP3_H.u32)+u32hd_id*CHN_OFFSET), DHD0_CLIP3_H.u32); 
    }
    
    //LCD
    else if(clipsel == VDP_DISP_INTF_LCD)
    {
    
        DHD0_CLIP4_L.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CLIP4_L.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CLIP4_L.bits.clip_cl2 = stClipData.u32ClipLow_y;
        DHD0_CLIP4_L.bits.clip_cl1 = stClipData.u32ClipLow_cb;
        DHD0_CLIP4_L.bits.clip_cl0 = stClipData.u32ClipLow_cr;        
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CLIP4_L.u32)+u32hd_id*CHN_OFFSET), DHD0_CLIP4_L.u32);

        DHD0_CLIP4_H.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CLIP4_H.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CLIP4_H.bits.clip_ch2 = stClipData.u32ClipHigh_y;
        DHD0_CLIP4_H.bits.clip_ch1 = stClipData.u32ClipHigh_cb;
        DHD0_CLIP4_H.bits.clip_ch0 = stClipData.u32ClipHigh_cr;        
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CLIP4_H.u32)+u32hd_id*CHN_OFFSET), DHD0_CLIP4_H.u32); 
    }
    else
    {
        HI_PRINT("Error,VDP_DISP_SetClipVtt Select Wrong Interface Mode\n");
    }
}

//-------------------------------------------------------------------
//VDP_DISP_CLIP_END
//-------------------------------------------------------------------


//-------------------------------------------------------------------
//VDP_DISP_CSC_BEGIN
//-------------------------------------------------------------------
HI_VOID  VDP_DISP_SetCscEnable  (HI_U32 u32hd_id, HI_U32 enCSC)
{   
        U_DHD0_CSC_IDC DHD0_CSC_IDC;

        if(u32hd_id >= CHN_MAX)
        {
            HI_PRINT("Error,VDP_DISP_SetCscEnable Select Wrong CHANNEL ID\n");
            return ;
        }
        DHD0_CSC_IDC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CSC_IDC.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_CSC_IDC.bits.csc_en = enCSC;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CSC_IDC.u32)+u32hd_id*CHN_OFFSET), DHD0_CSC_IDC.u32);
    
}

HI_VOID   VDP_DISP_SetCscDcCoef(HI_U32 u32hd_id,VDP_CSC_DC_COEF_S stCscCoef)
{   
    U_DHD0_CSC_IDC DHD0_CSC_IDC;
    U_DHD0_CSC_ODC DHD0_CSC_ODC;
    U_DHD0_CSC_IODC DHD0_CSC_IODC;
    
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetCscDcCoef Select Wrong CHANNEL ID\n");
        return ;
    }

    DHD0_CSC_IDC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CSC_IDC.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CSC_IDC.bits.cscidc1 = stCscCoef.csc_in_dc1;
    DHD0_CSC_IDC.bits.cscidc0 = stCscCoef.csc_in_dc0;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CSC_IDC.u32)+u32hd_id*CHN_OFFSET), DHD0_CSC_IDC.u32);

    DHD0_CSC_ODC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CSC_ODC.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CSC_ODC.bits.cscodc1 = stCscCoef.csc_out_dc1;
    DHD0_CSC_ODC.bits.cscodc0 = stCscCoef.csc_out_dc0;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CSC_ODC.u32)+u32hd_id*CHN_OFFSET), DHD0_CSC_ODC.u32);

    DHD0_CSC_IODC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CSC_IODC.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CSC_IODC.bits.cscidc2 = stCscCoef.csc_in_dc2;
    DHD0_CSC_IODC.bits.cscodc2 = stCscCoef.csc_out_dc2;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CSC_IODC.u32)+u32hd_id*CHN_OFFSET), DHD0_CSC_IODC.u32);
        
}

HI_VOID   VDP_DISP_SetCscCoef(HI_U32 u32hd_id,VDP_CSC_COEF_S stCscCoef)
{   
    U_DHD0_CSC_P0        DHD0_CSC_P0;
    U_DHD0_CSC_P1        DHD0_CSC_P1;
    U_DHD0_CSC_P2        DHD0_CSC_P2;
    U_DHD0_CSC_P3        DHD0_CSC_P3;
    U_DHD0_CSC_P4        DHD0_CSC_P4;
   
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetCscCoef Select Wrong CHANNEL ID\n");
        return ;
    }

    DHD0_CSC_P0.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CSC_P0.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CSC_P0.bits.cscp00 = stCscCoef.csc_coef00;
    DHD0_CSC_P0.bits.cscp01 = stCscCoef.csc_coef01;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CSC_P0.u32)+u32hd_id*CHN_OFFSET), DHD0_CSC_P0.u32);

    DHD0_CSC_P1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CSC_P1.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CSC_P1.bits.cscp02 = stCscCoef.csc_coef02;
    DHD0_CSC_P1.bits.cscp10 = stCscCoef.csc_coef10;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CSC_P1.u32)+u32hd_id*CHN_OFFSET), DHD0_CSC_P1.u32);

    DHD0_CSC_P2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CSC_P2.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CSC_P2.bits.cscp11 = stCscCoef.csc_coef11;
    DHD0_CSC_P2.bits.cscp12 = stCscCoef.csc_coef12;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CSC_P2.u32)+u32hd_id*CHN_OFFSET), DHD0_CSC_P2.u32);

    DHD0_CSC_P3.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CSC_P3.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CSC_P3.bits.cscp20 = stCscCoef.csc_coef20;
    DHD0_CSC_P3.bits.cscp21 = stCscCoef.csc_coef21;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CSC_P3.u32)+u32hd_id*CHN_OFFSET), DHD0_CSC_P3.u32);

    DHD0_CSC_P4.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CSC_P4.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CSC_P4.bits.cscp22 = stCscCoef.csc_coef22;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CSC_P4.u32)+u32hd_id*CHN_OFFSET), DHD0_CSC_P4.u32);
        
}

HI_VOID VDP_DISP_SetCscMode(HI_U32 u32hd_id, VDP_CSC_MODE_E enCscMode)
                                                           
{
    VDP_CSC_COEF_S    st_csc_coef;
    VDP_CSC_DC_COEF_S st_csc_dc_coef;

    HI_S32 s32Pre   = 1 << 10;
    HI_S32 s32DcPre = 4;//1:8bit; 4:10bit

    if(enCscMode == VDP_CSC_RGB2YUV_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(0.299  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(0.587  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(0.114  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(-0.172 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.339 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(0.511  * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(0.511  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(-0.428 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(-0.083 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = 0 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2RGB_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(    0  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(1.371  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.698 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(-0.336 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(1.732  * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(    0  * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  0 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_RGB2YUV_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(0.213  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(0.715  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(0.072  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(-0.117 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.394 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.511 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)( 0.511 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(-0.464 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(-0.047 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = 0 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 = 16  * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2RGB_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(    0  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(1.540  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.183 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(-0.459 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(1.816  * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(    0  * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 = 0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 0 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2YUV_709_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(-0.116 * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)( 0.208 * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)( 1.017 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.114 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)( 0.075 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)( 1.025 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =   16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2YUV_601_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(-0.116 * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)( 0.208 * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)( 1.017 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.114 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)( 0.075 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)( 1.025 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =   16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  128 * s32DcPre;
    }
    else
    {
        st_csc_coef.csc_coef00     = 1 * s32Pre;
        st_csc_coef.csc_coef01     = 0 * s32Pre;
        st_csc_coef.csc_coef02     = 0 * s32Pre;

        st_csc_coef.csc_coef10     = 0 * s32Pre;
        st_csc_coef.csc_coef11     = 1 * s32Pre;
        st_csc_coef.csc_coef12     = 0 * s32Pre;

        st_csc_coef.csc_coef20     = 0 * s32Pre;
        st_csc_coef.csc_coef21     = 0 * s32Pre;
        st_csc_coef.csc_coef22     = 1 * s32Pre;

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    
    VDP_DISP_SetCscCoef  (u32hd_id,st_csc_coef);
    VDP_DISP_SetCscDcCoef(u32hd_id,st_csc_dc_coef);

    return ;
}

HI_VOID VDP_DISP_SetGammaEnable(HI_U32 u32hd_id, HI_U32 u32GmmEn)
{
    U_DHD0_CTRL DHD0_CTRL;
    
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetGammaEnable Select Wrong CHANNEL ID\n");
        return ;
    }
    
    //Set Vou Dhd Channel Gamma Correct Enable
    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CTRL.bits.gmm_en = u32GmmEn;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET), DHD0_CTRL.u32);
}

HI_VOID VDP_DISP_SetGammaMode(HI_U32 u32hd_id, HI_U32 u32GmmEn)
{
    U_DHD0_CTRL DHD0_CTRL;
    
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetGammaEnable Select Wrong CHANNEL ID\n");
        return ;
    }
    
    //Set Vou Dhd Channel Gamma Correct Enable
    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
    DHD0_CTRL.bits.gmm_en = u32GmmEn;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET), DHD0_CTRL.u32);
}

HI_VOID VDP_DISP_SetGammaAddr(HI_U32 u32hd_id, HI_U32 uGmmAddr)
{
    U_DHD0_GMM_COEFAD DHD0_GMM_COEFAD;
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetGammaAddr Select Wrong CHANNEL ID\n");
        return ;
    }

    DHD0_GMM_COEFAD.u32 = uGmmAddr;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_GMM_COEFAD.u32)+u32hd_id*CHN_OFFSET), DHD0_GMM_COEFAD.u32);

}

HI_VOID VDP_DISP_SetParaUpd(HI_U32 u32hd_id, VDP_DISP_PARA_E enPara)
{
    U_DHD0_PARAUP DHD0_PARAUP;
    
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetParaUp Select Wrong CHANNEL ID\n");
        return ;
    }
    
    DHD0_PARAUP.bits.dhd0_gmm_upd = 0x1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_PARAUP.u32)+u32hd_id*CHN_OFFSET), DHD0_PARAUP.u32);
}

//-------------------------------------------------------------------
//VDP_DISP_CSC_END
//-------------------------------------------------------------------

#if 0

//GMMA
HI_VOID VDP_SetGammaUp(HI_U32 u32hd_id)
{
    U_DHD0_PARAUP DHD0_PARAUP;
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_SetGammaUp Select Wrong CHANNEL ID\n");
        return ;
    }
        
    DHD0_PARAUP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_PARAUP.u32)+u32hd_id*CHN_OFFSET));
    DHD0_PARAUP.bits.dhd0_gamm_upd = 0x1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_PARAUP.u32)+u32hd_id*CHN_OFFSET),DHD0_PARAUP.u32);
}


HI_VOID VDP_SetGammaCoef(HI_U32 u32hd_id, HI_U32 *upTable)/// FOR TC GMMA TABLE MUST GIVE
{
    U_DHDGAMMAN DHDGAMMAN[33];
    HI_U32 ii = 0;
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_SetGammaCoef Select Wrong CHANNEL ID\n");
        return ;
    }


     for (ii = 0; ii < 33; ii++)
     {
         DHDGAMMAN[ii].bits.gamma_datarn = upTable[ii + 33*0];
         DHDGAMMAN[ii].bits.gamma_datagn = upTable[ii + 33*1];
         DHDGAMMAN[ii].bits.gamma_databn = upTable[ii + 33*2];
         VDP_RegWrite((HI_U32)(&(pVdpReg->DHDGAMMAN[ii].u32)+u32hd_id*CHN_OFFSET), DHDGAMMAN[ii].u32);
     }

}

#endif

///GF AND VIDEO MIX CBM
HI_VOID VDP_CBM_SetMixerBkg(VDP_CBM_MIX_E u32mixer_id, VDP_BKG_S stBkg)
{
    U_CBM_BKG1 CBM_BKG1;
    U_CBM_BKG2 CBM_BKG2;
    U_MIXG0_BKG MIXG0_BKG;
    U_MIXG0_BKALPHA MIXG0_BKALPHA;
    U_MIXV0_BKG MIXV0_BKG;

    if(u32mixer_id == VDP_CBM_MIX0)
    {
        /* DHD0  mixer link */
        CBM_BKG1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_BKG1.u32)));;
        CBM_BKG1.bits.cbm_bkgy1  = stBkg.u32BkgY;
        CBM_BKG1.bits.cbm_bkgcb1 = stBkg.u32BkgU;
        CBM_BKG1.bits.cbm_bkgcr1 = stBkg.u32BkgV;
        VDP_RegWrite((HI_U32)&(pVdpReg->CBM_BKG1.u32), CBM_BKG1.u32); 
    }
    else if(u32mixer_id == VDP_CBM_MIX1)
    {
        /* DHD1(DSD) mixer link */
        CBM_BKG2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_BKG2.u32)));;
        CBM_BKG2.bits.cbm_bkgy2  = stBkg.u32BkgY;
        CBM_BKG2.bits.cbm_bkgcb2 = stBkg.u32BkgU;
        CBM_BKG2.bits.cbm_bkgcr2 = stBkg.u32BkgV;
        VDP_RegWrite((HI_U32)&(pVdpReg->CBM_BKG2.u32), CBM_BKG2.u32); 
    }
    else if(u32mixer_id == VDP_CBM_MIXG0)
    {
        /* G0 mixer link */
        MIXG0_BKG.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXG0_BKG.u32)));;
        MIXG0_BKG.bits.mixer_bkgy  = stBkg.u32BkgY;
        MIXG0_BKG.bits.mixer_bkgcb = stBkg.u32BkgU;
        MIXG0_BKG.bits.mixer_bkgcr = stBkg.u32BkgV;
        VDP_RegWrite((HI_U32)&(pVdpReg->MIXG0_BKG.u32), MIXG0_BKG.u32); 

        MIXG0_BKALPHA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXG0_BKALPHA.u32)));;
        MIXG0_BKALPHA.bits.mixer_alpha  = stBkg.u32BkgA;
        VDP_RegWrite((HI_U32)&(pVdpReg->MIXG0_BKALPHA.u32), MIXG0_BKALPHA.u32); 
    }
    else if(u32mixer_id == VDP_CBM_MIXV0)
    {
        MIXV0_BKG.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXV0_BKG.u32)));;
        MIXV0_BKG.bits.mixer_bkgy  = stBkg.u32BkgY;
        MIXV0_BKG.bits.mixer_bkgcb = stBkg.u32BkgU;
        MIXV0_BKG.bits.mixer_bkgcr = stBkg.u32BkgV;
        VDP_RegWrite((HI_U32)&(pVdpReg->MIXV0_BKG.u32), MIXV0_BKG.u32); 
    }
    else
    {
        HI_PRINT("Error! VDP_CBM_SetMixerBkg() Select Wrong mixer ID\n");
    }

    return ;
}
#define VDP_CBM_MIX0_LayerNO    2
#define VDP_CBM_MIX1_LayerNO    2

HI_U32 VDP_CBM_GetMAXLayer(VDP_CBM_MIX_E eMixId)
{
    if (VDP_CBM_MIX0 == eMixId)
        return VDP_CBM_MIX0_LayerNO;
    else
        return VDP_CBM_MIX1_LayerNO;
}

HI_VOID VDP_CBM_ResetMixerPrio(VDP_CBM_MIX_E u32mixer_id)
{
    U_MIXG0_MIX MIXG0_MIX;
    U_MIXV0_MIX MIXV0_MIX;
    U_CBM_MIX1 CBM_MIX1;
    U_CBM_MIX2 CBM_MIX2;

    if (u32mixer_id == VDP_CBM_MIXG0)
    {
        MIXG0_MIX.u32 = 0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->MIXG0_MIX.u32)), MIXG0_MIX.u32);
    }
    else if (u32mixer_id == VDP_CBM_MIXV0)
    {
        MIXV0_MIX.u32 = 0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)), MIXV0_MIX.u32);
    }
    else if (u32mixer_id == VDP_CBM_MIXV1)
    {
        //reserved
    }
    else if(u32mixer_id == VDP_CBM_MIX0)//DHD0
    {
        CBM_MIX1.u32 = 0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->CBM_MIX1.u32)), CBM_MIX1.u32);
    }
    else if(u32mixer_id == VDP_CBM_MIX1)//DHD1
    {
        CBM_MIX2.u32 = 0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->CBM_MIX2.u32)), CBM_MIX2.u32);
    }
    else
    {
        HI_PRINT("Error, VDP_CBM_ResetMixerPrio() Set mixer  select wrong layer ID\n");
    }

    return ;
}

HI_VOID VDP_CBM_SetMixerPrio(VDP_CBM_MIX_E u32mixer_id,HI_U32 u32layer_id,HI_U32 u32prio)
{
    U_MIXG0_MIX MIXG0_MIX;
    U_MIXV0_MIX MIXV0_MIX;
    U_CBM_MIX1 CBM_MIX1;
    U_CBM_MIX2 CBM_MIX2;
    
    if (u32mixer_id == VDP_CBM_MIXG0)
    {
        switch(u32prio)
        {
            case 0:
            {
                MIXG0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXG0_MIX.u32)));
                MIXG0_MIX.bits.mixer_prio0 = u32layer_id+1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->MIXG0_MIX.u32)), MIXG0_MIX.u32);
                break;
            }
            case 1:
            {
                MIXG0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXG0_MIX.u32)));
                MIXG0_MIX.bits.mixer_prio1 = u32layer_id+1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->MIXG0_MIX.u32)), MIXG0_MIX.u32);
                break;
            }
            case 2:
            {
                MIXG0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXG0_MIX.u32)));
                MIXG0_MIX.bits.mixer_prio2 = u32layer_id+1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->MIXG0_MIX.u32)), MIXG0_MIX.u32);
                break;
            }
            case 3:
            {
                MIXG0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXG0_MIX.u32)));
                MIXG0_MIX.bits.mixer_prio3 = u32layer_id+1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->MIXG0_MIX.u32)), MIXG0_MIX.u32);
                break;
            }
            default:
            {
                HI_PRINT("Error, Vou_SetCbmMixerPrio() Set mixer  select wrong layer ID\n");
                return ;
            }

        }
    }
    else if(u32mixer_id == VDP_CBM_MIXG1)
        ;
    else if(u32mixer_id == VDP_CBM_MIXV0)
    {
        switch(u32prio)
        {
            case 0:
            {
                MIXV0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)));
                MIXV0_MIX.bits.mixer_prio0 = u32layer_id+1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)), MIXV0_MIX.u32);
                break;
            }
            case 1:
            {
                MIXV0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)));
                MIXV0_MIX.bits.mixer_prio1 = u32layer_id+1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)), MIXV0_MIX.u32);
                break;
            }
            default:
            {
                HI_PRINT("Error, Vou_SetCbmMixerPrio() Set mixer  select wrong layer ID\n");
                return ;
            }

        }
    }
    else if(u32mixer_id == VDP_CBM_MIXV1)
        ;
    else if(u32mixer_id == VDP_CBM_MIX0)//DHD0
    {
        switch(u32prio)
        {
            case 0:
            {
                CBM_MIX1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_MIX1.u32)));
                CBM_MIX1.bits.mixer_prio0 = u32layer_id+1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->CBM_MIX1.u32)), CBM_MIX1.u32);
                break;
            }
            case 1:
            {
                CBM_MIX1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_MIX1.u32)));
                CBM_MIX1.bits.mixer_prio1 = u32layer_id+1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->CBM_MIX1.u32)), CBM_MIX1.u32);
                break;
            }
            default:
            {
                HI_PRINT("Error, Vou_SetCbmMixerPrio() Set mixer  select wrong layer ID\n");
                return ;
            }
        }
    }
    else if(u32mixer_id == VDP_CBM_MIX1)//DHD1
    {
        switch(u32prio)
        {
            case 0:
            {
                CBM_MIX2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_MIX2.u32)));
                CBM_MIX2.bits.mixer_prio0 = u32layer_id+1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->CBM_MIX2.u32)), CBM_MIX2.u32);
                break;
            }
            case 1:
            {
                CBM_MIX2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_MIX2.u32)));
                CBM_MIX2.bits.mixer_prio1 = u32layer_id+1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->CBM_MIX2.u32)), CBM_MIX2.u32);
                break;
            }
            default:
            {
                HI_PRINT("Error, Vou_SetCbmMixerPrio() Set mixer  select wrong layer ID\n");
                return ;
            }


        }

    }
}

HI_VOID VDP_CBM_GetMixerPrio(VDP_CBM_MIX_E u32mixer_id, HI_U32 u32prio, HI_U32 *pu32layer_id)
{
    U_MIXV0_MIX MIXV0_MIX;
    U_CBM_MIX1 CBM_MIX1;
    U_CBM_MIX2 CBM_MIX2;
    HI_U32 id;
        
    if(u32mixer_id == VDP_CBM_MIXV0)
    {
        switch(u32prio)
        {
            case 0:
            {
                MIXV0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)));
                id = MIXV0_MIX.bits.mixer_prio0;
                break;
            }
            case 1:
            {
                MIXV0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)));
                id = MIXV0_MIX.bits.mixer_prio1;
                break;
            }
            default:
            {
                id = 0;
                HI_PRINT("Error, Vou_SetCbmMixerPrio() Set mixer  select wrong layer ID\n");
            }
        }

        if (id > 0)
        {
            *pu32layer_id = id - 1;
        }
        else
        {
            *pu32layer_id = VDP_LAYER_VID_BUTT;
        }

    }
    else if(u32mixer_id == VDP_CBM_MIXV1)
    {
#if 0
        switch(u32prio)
        {
            case 0:
            {
                MIXV0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXV1_MIX.u32)));
                id = MIXV0_MIX.bits.mixer_prio0;
                break;
            }
            case 1:
            {
                MIXV0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXV1_MIX.u32)));
                id = MIXV0_MIX.bits.mixer_prio1;
                break;
            }
            default:
            {
                id = 0;
                HI_PRINT("Error, Vou_SetCbmMixerPrio() Set mixer  select wrong layer ID\n");
            }
            if (id > 0)
            {
                *pu32layer_id = id - 1;
            }
            else
            {
                *pu32layer_id = VDP_LAYER_VID_BUTT;
            }
        }
#endif
        *pu32layer_id = VDP_LAYER_VID_BUTT;
    }
    else if(u32mixer_id == VDP_CBM_MIX0)//DHD0
    {
        switch(u32prio)
        {
            case 0:
            {
                CBM_MIX1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_MIX1.u32)));
                id = CBM_MIX1.bits.mixer_prio0;
                break;
            }
            case 1:
            {
                CBM_MIX1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_MIX1.u32)));
                id = CBM_MIX1.bits.mixer_prio1;
                break;
            }
            default:
            {
                id = 0;
                HI_PRINT("Error, Vou_SetCbmMixerPrio() Set mixer  select wrong layer ID\n");
            }
        }

        if (id > 0)
        {
            *pu32layer_id = id - 1;
        }
        else
        {
            *pu32layer_id = VDP_CBM_BUTT;
        }
    }
    else if(u32mixer_id == VDP_CBM_MIX1)//DHD1
    {
        switch(u32prio)
        {
            case 0:
            {
                CBM_MIX2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_MIX2.u32)));
                id = CBM_MIX2.bits.mixer_prio0;
                break;
            }
            case 1:
            {
                CBM_MIX2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_MIX2.u32)));
                id = CBM_MIX2.bits.mixer_prio1;
                break;
            }
            default:
            {
                id = 0;
                HI_PRINT("Error, Vou_SetCbmMixerPrio() Set mixer  select wrong layer ID\n");
            }
        }

        if (id > 0)
        {
            *pu32layer_id = id - 1;
        }
        else
        {
            *pu32layer_id = VDP_CBM_BUTT;
        }

    }
}

HI_VOID VDP_CBM_SetMixerPrioQuick(VDP_CBM_MIX_E u32mixer_id,HI_U32 *pu32layer_id, HI_U32 u32Number)
{
    U_MIXV0_MIX MIXV0_MIX;
    U_CBM_MIX1 CBM_MIX1;
    U_CBM_MIX2 CBM_MIX2;
    
    if(u32mixer_id == VDP_CBM_MIXV0)
    {
        MIXV0_MIX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)));

        MIXV0_MIX.bits.mixer_prio0 = 0;
        MIXV0_MIX.bits.mixer_prio1 = 0;
        
        if (u32Number > 0)
        {
        	if (pu32layer_id[0] < VDP_LAYER_VID2)
        	{
            	MIXV0_MIX.bits.mixer_prio0 = pu32layer_id[0]+1;
        	}
        }

        if (u32Number > 1)
        {
        	if (pu32layer_id[1] < VDP_LAYER_VID2)
        	{
	            MIXV0_MIX.bits.mixer_prio1 = pu32layer_id[1]+1;
        	}
        }

        if (u32Number > 2)
        {
            HI_PRINT("Error, Vou_SetCbmMixerPrioQuickly() Two many number\n");
        }

        VDP_RegWrite((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)), MIXV0_MIX.u32);
    }
    else if(u32mixer_id == VDP_CBM_MIXV1)
        ;
    else if(u32mixer_id == VDP_CBM_MIX0)//DHD0
    {
        CBM_MIX1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_MIX1.u32)));

        CBM_MIX1.bits.mixer_prio0 = 0;
        CBM_MIX1.bits.mixer_prio1 = 0;

        if (u32Number > 0)
        {
        	if (pu32layer_id[0] < VDP_CBM_VP1)
        	{
	            CBM_MIX1.bits.mixer_prio0 = pu32layer_id[0]+1;
			}
        }

        if (u32Number > 1)
        {
        	if (pu32layer_id[1] < VDP_CBM_VP1)
        	{
	            CBM_MIX1.bits.mixer_prio1 = pu32layer_id[1]+1;
        	}
        }

        if (u32Number > 2)
        {
            HI_PRINT("Error, Vou_SetCbmMixerPrioQuickly() Two many number\n");
        }
        
        VDP_RegWrite((HI_U32)(&(pVdpReg->CBM_MIX1.u32)), CBM_MIX1.u32);

    }
    else if(u32mixer_id == VDP_CBM_MIX1)//DHD1
    {
        CBM_MIX2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->CBM_MIX2.u32)));

        CBM_MIX2.bits.mixer_prio0 = 0;
        CBM_MIX2.bits.mixer_prio1 = 0;

        if (u32Number > 0)
        {
        	if ( (pu32layer_id[0] < VDP_CBM_BUTT) && (pu32layer_id[0] > VDP_CBM_GP0))
        	{
            	CBM_MIX2.bits.mixer_prio0 = pu32layer_id[0]+1;
        	}
        }

        if (u32Number > 1)
        {
        	if ( (pu32layer_id[1] < VDP_CBM_BUTT) && (pu32layer_id[1] > VDP_CBM_GP0))
        	{            
        		CBM_MIX2.bits.mixer_prio1 = pu32layer_id[1]+1;
        	}
        }

        if (u32Number > 2)
        {
            HI_PRINT("Error, Vou_SetCbmMixerPrioQuickly() Two many number\n");
        }
        
        VDP_RegWrite((HI_U32)(&(pVdpReg->CBM_MIX2.u32)), CBM_MIX2.u32);

    }
}





//-------------------------------------------------------------------
//GFX_BEGIN
//-------------------------------------------------------------------
HI_VOID  VDP_GFX_SetLayerEnable(HI_U32 u32Data, HI_U32 u32bEnable )
{
    U_G0_CTRL G0_CTRL;

    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetLayerEnable Select Wrong Graph Layer ID\n");
        return ;
    }
    
    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32) + u32Data * GFX_OFFSET));
    G0_CTRL.bits.surface_en = u32bEnable ;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32) + u32Data * GFX_OFFSET), G0_CTRL.u32); 

    return ;
}

HI_VOID VDP_GFX_SetLayerAddr(HI_U32 u32Data, HI_U32 u32LAddr, HI_U32 u32Stride)
{
    U_G0_ADDR G0_ADDR;
    U_G0_STRIDE G0_STRIDE;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetLayerAddr Select Wrong Graph Layer ID\n");
        return ;
    }
    G0_ADDR.u32 = u32LAddr;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_ADDR.u32)+ u32Data * GFX_OFFSET), G0_ADDR.u32);

    G0_STRIDE.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_STRIDE.u32)+ u32Data * GFX_OFFSET));
    G0_STRIDE.bits.surface_stride = u32Stride;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_STRIDE.u32)+ u32Data * GFX_OFFSET), G0_STRIDE.u32);
}

HI_VOID VDP_GFX_SetLayerAddrEX(HI_U32 u32Data, HI_U32 u32LAddr)
{
    U_G0_ADDR G0_ADDR;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetLayerAddr Select Wrong Graph Layer ID\n");
        return ;
    }
    G0_ADDR.u32 = u32LAddr;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_ADDR.u32)+ u32Data * GFX_OFFSET), G0_ADDR.u32);

}
HI_VOID VDP_GFX_SetLayerStride(HI_U32 u32Data, HI_U32 u32Stride)
{
    U_G0_STRIDE G0_STRIDE;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetLayerAddr Select Wrong Graph Layer ID\n");
        return ;
    }

    G0_STRIDE.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_STRIDE.u32)+ u32Data * GFX_OFFSET));
    G0_STRIDE.bits.surface_stride = u32Stride;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_STRIDE.u32)+ u32Data * GFX_OFFSET), G0_STRIDE.u32);
}

HI_VOID VDP_GFX_SetLutAddr(HI_U32 u32Data, HI_U32 u32LutAddr)
{
    U_G0_PARAADDR G0_PARAADDR;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetLutAddr Select Wrong Graph Layer ID\n");
        return ;
    }
    G0_PARAADDR.u32 = u32LutAddr;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_PARAADDR.u32)+ u32Data * GFX_OFFSET), G0_PARAADDR.u32);
}

HI_VOID VDP_GFX_SetGammaEnable(HI_U32 u32Data, HI_U32 u32GmmEn)
{
    U_G0_CTRL G0_CTRL;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetGammaEnable Select Wrong Graph Layer ID\n");
        return ;
    }
    
    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32)+u32Data*GFX_MAX));
    G0_CTRL.bits.gmm_en = u32GmmEn;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32)+u32Data*GFX_MAX), G0_CTRL.u32);
}



HI_VOID  VDP_GFX_SetInDataFmt(HI_U32 u32Data, VDP_GFX_IFMT_E  enDataFmt)
{
    U_G0_CTRL G0_CTRL;

    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetDataFmt() Select Wrong Video Layer ID\n");
        return ;
    }
    
    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32) + u32Data * GFX_OFFSET));
    G0_CTRL.bits.ifmt = enDataFmt;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32) + u32Data * GFX_OFFSET), G0_CTRL.u32); 

    return ;
}


HI_VOID VDP_GFX_SetBitExtend(HI_U32 u32Data, VDP_GFX_BITEXTEND_E u32mode)
{
    U_G0_CTRL G0_CTRL;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetBitExtend Select Wrong Graph Layer ID\n");
        return ;
    }


    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET));
    G0_CTRL.bits.bitext = u32mode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET), G0_CTRL.u32); 


}

//HI_VOID VDP_SetGfxPalpha(VDP_DISP_LAYER_E enLayer,HI_U32 bAlphaEn,HI_U32 bArange,HI_U32 u32Alpha0,HI_U32 u32Alpha1)//CBM

HI_VOID VDP_GFX_SetColorKey(HI_U32 u32Data,HI_U32  bkeyEn,VDP_GFX_CKEY_S stKey )
{
    U_G0_CKEYMAX G0_CKEYMAX;
    U_G0_CKEYMIN G0_CKEYMIN;
    U_G0_CBMPARA G0_CBMPARA;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetColorKey Select Wrong Graph Layer ID\n");
        return ;
    }

    G0_CKEYMAX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CKEYMAX.u32)+ u32Data * GFX_OFFSET));
    G0_CKEYMAX.bits.keyr_max = stKey.u32Key_r_max;
    G0_CKEYMAX.bits.keyg_max = stKey.u32Key_g_max;
    G0_CKEYMAX.bits.keyb_max = stKey.u32Key_b_max;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CKEYMAX.u32)+ u32Data * GFX_OFFSET), G0_CKEYMAX.u32);

    G0_CKEYMIN.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CKEYMIN.u32)+ u32Data * GFX_OFFSET));
    G0_CKEYMIN.bits.keyr_min = stKey.u32Key_r_min;
    G0_CKEYMIN.bits.keyg_min = stKey.u32Key_g_min;
    G0_CKEYMIN.bits.keyb_min = stKey.u32Key_b_min;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CKEYMIN.u32)+ u32Data * GFX_OFFSET), G0_CKEYMIN.u32);

    G0_CBMPARA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CBMPARA.u32)+ u32Data * GFX_OFFSET));
    G0_CBMPARA.bits.key_en = bkeyEn;
    G0_CBMPARA.bits.key_mode = stKey.bKeyMode;            
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CBMPARA.u32)+ u32Data * GFX_OFFSET), G0_CBMPARA.u32); 

}

HI_VOID VDP_GFX_SetKeyMask(HI_U32 u32Data, VDP_GFX_MASK_S stMsk)
{
    U_G0_CMASK G0_CMASK;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetKeyMask Select Wrong Graph Layer ID\n");
        return ;
    }
    G0_CMASK.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CMASK.u32)+ u32Data * GFX_OFFSET));
    G0_CMASK.bits.kmsk_r = stMsk.u32Mask_r;
    G0_CMASK.bits.kmsk_g = stMsk.u32Mask_g;
    G0_CMASK.bits.kmsk_b = stMsk.u32Mask_b;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CMASK.u32)+ u32Data * GFX_OFFSET), G0_CMASK.u32);

}


HI_VOID VDP_GFX_SetReadMode(HI_U32 u32Data, HI_U32 u32Mode)
{
    U_G0_CTRL G0_CTRL;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetReadMode Select Wrong Graph Layer ID\n");
        return ;
    }

    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET));
    G0_CTRL.bits.read_mode = u32Mode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET), G0_CTRL.u32); 


}

HI_VOID  VDP_GFX_SetParaUpd  (HI_U32 u32Data, VDP_DISP_COEFMODE_E enMode )
{
    U_G0_PARAUP G0_PARAUP;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetParaUpd Select Wrong Graph Layer ID\n");
        return ;
    }

    if (enMode == VDP_DISP_COEFMODE_LUT || enMode == VDP_DISP_COEFMODE_ALL)
    {
        G0_PARAUP.bits.gdc_paraup = 0x1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_PARAUP.u32)+ u32Data * GFX_OFFSET), G0_PARAUP.u32);
    }



}

//3D MODE
HI_VOID VDP_GFX_SetThreeDimEnable(HI_U32 u32Data,HI_U32 bTrue)
{
    
    U_G0_CTRL G0_CTRL;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetThreeDimEnable Select Wrong Graph Layer ID\n");
        return ;
    }

    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET));
    G0_CTRL.bits.trid_en = bTrue ;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET), G0_CTRL.u32);
}

HI_VOID VDP_GFX_SetDofEnable(HI_U32 u32Data,HI_U32 bTrue)
{
    
    U_G0_DOFCTRL G0_DOFCTRL;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetDofEnable Select Wrong Graph Layer ID\n");
        return ;
    }

    G0_DOFCTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_DOFCTRL.u32)+ u32Data * GFX_OFFSET));
    G0_DOFCTRL.bits.dof_en = bTrue ;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_DOFCTRL.u32)+ u32Data * GFX_OFFSET), G0_DOFCTRL.u32);
}

HI_VOID VDP_GFX_SetDofFmt ( HI_U32 u32Data, HI_U32 u32DataFmt)
{
    U_G0_DOFCTRL G0_DOFCTRL;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetDofFmt Select Wrong Graph Layer ID\n");
        return ;
    }

    G0_DOFCTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_DOFCTRL.u32)+ u32Data * GFX_OFFSET));
    G0_DOFCTRL.bits.dof_format = u32DataFmt ;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_DOFCTRL.u32)+ u32Data * GFX_OFFSET), G0_DOFCTRL.u32);

}

HI_VOID VDP_GFX_SetDofStep ( HI_U32 u32Data, HI_U32 u32eye_sel,HI_U32 u32step)
{
    U_G0_DOFSTEP G0_DOFSTEP;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetDofStep Select Wrong Graph Layer ID\n");
        return ;
    }
    if(u32eye_sel== 0)
    {

        G0_DOFSTEP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_DOFSTEP.u32)+ u32Data * GFX_OFFSET));

        G0_DOFSTEP.bits.left_eye = 0 ;
        G0_DOFSTEP.bits.left_step = u32step ;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_DOFSTEP.u32)+ u32Data * GFX_OFFSET), G0_DOFSTEP.u32);

    }
    if(u32eye_sel== 1)
    {

        G0_DOFSTEP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_DOFSTEP.u32)+ u32Data * GFX_OFFSET));

        G0_DOFSTEP.bits.left_eye = 1 ;
        G0_DOFSTEP.bits.right_step = u32step ;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_DOFSTEP.u32)+ u32Data * GFX_OFFSET), G0_DOFSTEP.u32);

    }

}

HI_VOID VDP_GFX_SetDispMode(HI_U32 u32Data, VDP_DISP_MODE_E enDispMode)
{
    U_G0_CTRL G0_CTRL;
    
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetDispMode() Select Wrong Video Layer ID\n");
        return ;
    }

    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32) + u32Data * GFX_OFFSET));
    G0_CTRL.bits.disp_mode = enDispMode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32) + u32Data * VID_OFFSET), G0_CTRL.u32); 

    return ;
}

HI_VOID  VDP_GFX_SetLayerReso     (HI_U32 u32Data, VDP_DISP_RECT_S  stRect)
{
    U_G0_SFPOS G0_SFPOS;
    U_G0_VFPOS G0_VFPOS;
    U_G0_VLPOS G0_VLPOS;
    U_G0_DFPOS G0_DFPOS;
    U_G0_DLPOS G0_DLPOS;
    U_G0_IRESO G0_IRESO;
    //U_G0_ORESO G0_ORESO;

    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetLayerReso() Select Wrong Video Layer ID\n");
        return ;
    }


    // Read source position
    G0_SFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_SFPOS.u32)+ u32Data * GFX_OFFSET));
    G0_SFPOS.bits.src_xfpos = stRect.u32SX;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_SFPOS.u32)+ u32Data * GFX_OFFSET), G0_SFPOS.u32);

    G0_VFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VFPOS.u32) + u32Data * VID_OFFSET));
    G0_VFPOS.bits.video_xfpos = stRect.u32VX;
    G0_VFPOS.bits.video_yfpos = stRect.u32VY;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VFPOS.u32) + u32Data * VID_OFFSET), G0_VFPOS.u32); 

    G0_VLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VLPOS.u32) + u32Data * VID_OFFSET));
    G0_VLPOS.bits.video_xlpos = stRect.u32VX + stRect.u32OWth - 1;
    G0_VLPOS.bits.video_ylpos = stRect.u32VY + stRect.u32OHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VLPOS.u32) + u32Data * VID_OFFSET), G0_VLPOS.u32); 

    // display position
    G0_DFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_DFPOS.u32)+ u32Data * GFX_OFFSET));
    G0_DFPOS.bits.disp_xfpos = stRect.u32DXS;
    G0_DFPOS.bits.disp_yfpos = stRect.u32DYS;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_DFPOS.u32)+ u32Data * GFX_OFFSET), G0_DFPOS.u32);

    G0_DLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_DLPOS.u32)+ u32Data * GFX_OFFSET));
    G0_DLPOS.bits.disp_xlpos = stRect.u32DXL - 1;
    G0_DLPOS.bits.disp_ylpos = stRect.u32DYL - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_DLPOS.u32)+ u32Data * GFX_OFFSET), G0_DLPOS.u32);

    // input width and height
    G0_IRESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_IRESO.u32)+ u32Data * GFX_OFFSET));
    G0_IRESO.bits.iw = stRect.u32IWth - 1;
    G0_IRESO.bits.ih = stRect.u32IHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_IRESO.u32)+ u32Data * GFX_OFFSET), G0_IRESO.u32);

    // output width and height
    //G0_ORESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_ORESO.u32)+ u32Data * GFX_OFFSET));
    //G0_ORESO.bits.ow = stRect.u32OWth - 1;
    //G0_ORESO.bits.oh = stRect.u32OHgt - 1;
    //VDP_RegWrite((HI_U32)(&(pVdpReg->G0_ORESO.u32)+ u32Data * GFX_OFFSET), G0_ORESO.u32);

	return ;
}

HI_VOID  VDP_GFX_SetVideoPos     (HI_U32 u32Data, VDP_RECT_S  stRect)
{
   U_G0_VFPOS G0_VFPOS;
   U_G0_VLPOS G0_VLPOS;

   if(u32Data >= GFX_MAX)
   {
       HI_PRINT("Error,VDP_GFX_SetVideoPos() Select Wrong Video Layer ID\n");
       return ;
   }
   
  
   //grap position 
   G0_VFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VFPOS.u32) + u32Data * GFX_OFFSET));
   G0_VFPOS.bits.video_xfpos = stRect.u32X;
   G0_VFPOS.bits.video_yfpos = stRect.u32Y;
   VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VFPOS.u32) + u32Data * GFX_OFFSET), G0_VFPOS.u32); 
   G0_VLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VLPOS.u32) + u32Data * GFX_OFFSET));
   G0_VLPOS.bits.video_xlpos = stRect.u32X + stRect.u32Wth - 1;
   G0_VLPOS.bits.video_ylpos = stRect.u32Y + stRect.u32Hgt - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VLPOS.u32) + u32Data * GFX_OFFSET), G0_VLPOS.u32); 
   return ;
}   
    
HI_VOID  VDP_GFX_SetDispPos     (HI_U32 u32Data, VDP_RECT_S  stRect)
{
   U_G0_DFPOS G0_DFPOS;
   U_G0_DLPOS G0_DLPOS;

   if(u32Data >= GFX_MAX)
   {
       HI_PRINT("Error,VDP_GFX_SetDispPos() Select Wrong Video Layer ID\n");
       return ;
   }
  
   /*video position */ 
   G0_DFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_DFPOS.u32) + u32Data * GFX_OFFSET));
   G0_DFPOS.bits.disp_xfpos = stRect.u32X;
   G0_DFPOS.bits.disp_yfpos = stRect.u32Y;
   VDP_RegWrite((HI_U32)(&(pVdpReg->G0_DFPOS.u32) + u32Data * GFX_OFFSET), G0_DFPOS.u32); 
   
   G0_DLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_DLPOS.u32) + u32Data * GFX_OFFSET));
   G0_DLPOS.bits.disp_xlpos = stRect.u32X + stRect.u32Wth - 1;
   G0_DLPOS.bits.disp_ylpos = stRect.u32Y + stRect.u32Hgt - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->G0_DLPOS.u32) + u32Data * GFX_OFFSET), G0_DLPOS.u32); 
   return ;
}   
    


HI_VOID  VDP_GFX_SetInReso(HI_U32 u32Data, VDP_RECT_S  stRect)
{
   U_G0_IRESO G0_IRESO;

   if(u32Data >= GFX_MAX)
   {
       HI_PRINT("Error,VDP_GFX_SetInReso Select Wrong Graph Layer ID\n");
       return ;
   }
  
   //grap position 
   G0_IRESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_IRESO.u32) + u32Data * GFX_OFFSET));
   G0_IRESO.bits.iw = stRect.u32Wth - 1;
   G0_IRESO.bits.ih = stRect.u32Hgt - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->G0_IRESO.u32) + u32Data * GFX_OFFSET), G0_IRESO.u32); 
   return ;
}


//HI_VOID VDP_GFX_SetCmpAddr(HI_U32 u32Data, HI_U32 u32CmpAddr)
//{
//    U_G0_CMPADDR G0_CMPADDR;
//    if(u32Data >= GFX_MAX)
//    {
//        HI_PRINT("Error,VDP_GFX_SetCmpAddr() Select Wrong Graph Layer ID\n");
//        return ;
//    }
//    G0_CMPADDR.u32 = u32CmpAddr;
//    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CMPADDR.u32)+ u32Data * GFX_OFFSET), G0_CMPADDR.u32);
//
//}

HI_VOID  VDP_GFX_SetRegUp (HI_U32 u32Data)
{
    U_G0_UPD G0_UPD;

    /* GO layer register update */
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetRegup() Select Wrong Graph Layer ID\n");
        return ;
    }

    G0_UPD.bits.regup = 0x1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_UPD.u32) + u32Data * GFX_OFFSET), G0_UPD.u32); 

    return ;
}

HI_VOID  VDP_GFX_SetLayerBkg(HI_U32 u32Data, VDP_BKG_S stBkg)
{
    U_G0_BK    G0_BK;
    U_G0_ALPHA G0_ALPHA;

    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetLayerBkg() Select Wrong Graph Layer ID\n");
        return ;
    }

    G0_BK.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_BK.u32) + u32Data * GFX_OFFSET));
    G0_BK.bits.vbk_y  = stBkg.u32BkgY ;
    G0_BK.bits.vbk_cb = stBkg.u32BkgU;
    G0_BK.bits.vbk_cr = stBkg.u32BkgV;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_BK.u32) + u32Data * GFX_OFFSET), G0_BK.u32); 

    G0_ALPHA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_ALPHA.u32) + u32Data * GFX_OFFSET));
    G0_ALPHA.bits.vbk_alpha = stBkg.u32BkgA;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_ALPHA.u32) + u32Data * GFX_OFFSET), G0_ALPHA.u32); 

    return ;
}

HI_VOID  VDP_GFX_SetLayerGalpha (HI_U32 u32Data, HI_U32 u32Alpha0)
{
    U_G0_CBMPARA G0_CBMPARA;
    
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetLayerGalpha() Select Wrong Video Layer ID\n");
        return ;
    }

    
    G0_CBMPARA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CBMPARA.u32) + u32Data * GFX_OFFSET));
    G0_CBMPARA.bits.galpha = u32Alpha0;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CBMPARA.u32) + u32Data * GFX_OFFSET), G0_CBMPARA.u32); 

    return ;
}


HI_VOID VDP_GFX_SetPalpha(HI_U32 u32Data, HI_U32 bAlphaEn,HI_U32 bArange,HI_U32 u32Alpha0,HI_U32 u32Alpha1)
{
    
    
    U_G0_CBMPARA G0_CBMPARA;
    U_G0_CKEYMIN G0_CKEYMIN;
    U_G0_CKEYMAX G0_CKEYMAX;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetPalpha() Select Wrong Graph Layer ID\n");
        return ;
    }


    G0_CBMPARA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CBMPARA.u32)+ u32Data * GFX_OFFSET));
    G0_CBMPARA.bits.palpha_en = bAlphaEn;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CBMPARA.u32)+ u32Data * GFX_OFFSET), G0_CBMPARA.u32);

    G0_CKEYMIN.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CKEYMIN.u32)+ u32Data * GFX_OFFSET));                
    G0_CKEYMIN.bits.va1 = u32Alpha1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CKEYMIN.u32)+ u32Data * GFX_OFFSET), G0_CKEYMIN.u32);

    G0_CKEYMAX.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CKEYMAX.u32)+ u32Data * GFX_OFFSET));                
    G0_CKEYMAX.bits.va0 = u32Alpha0;                            
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CKEYMAX.u32)+ u32Data * GFX_OFFSET), G0_CKEYMAX.u32); 

    G0_CBMPARA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CBMPARA.u32)+ u32Data * GFX_OFFSET));
    G0_CBMPARA.bits.palpha_range = bArange;            
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CBMPARA.u32)+ u32Data * GFX_OFFSET), G0_CBMPARA.u32);
    
}



HI_VOID VDP_GFX_SetLayerNAddr(HI_U32 u32Data, HI_U32 u32NAddr)
{
    U_G0_NADDR G0_NADDR;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetLayerNAddr() Select Wrong Graph Layer ID\n");
        return ;
    }
    G0_NADDR.u32 = u32NAddr;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_NADDR.u32)+ u32Data * GFX_OFFSET), G0_NADDR.u32);

}

HI_VOID  VDP_GFX_SetMuteEnable(HI_U32 u32Data, HI_U32 bEnable)
{
    U_G0_CTRL G0_CTRL;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetMuteEnable() Select Wrong Graph Layer ID\n");
        return ;
    }
    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET));
    G0_CTRL.bits.mute_en = bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32) + u32Data * GFX_OFFSET), G0_CTRL.u32); 
}

HI_VOID VDP_GFX_SetPreMultEnable(HI_U32 u32Data, HI_U32 bEnable)
{
    U_G0_CBMPARA G0_CBMPARA;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_SetGfxPreMultEnable() Select Wrong Graph Layer ID\n");
        return ;
    }
    G0_CBMPARA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CBMPARA.u32)+ u32Data * GFX_OFFSET));
    G0_CBMPARA.bits.premult_en = bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CBMPARA.u32)+ u32Data * GFX_OFFSET), G0_CBMPARA.u32); 
}


HI_VOID  VDP_GFX_SetUpdMode(HI_U32 u32Data, HI_U32 u32Mode)
{
    U_G0_CTRL G0_CTRL;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_Gfx_SetUpdMode() Select Wrong Graph Layer ID\n");
        return ;
    }

    /* G0 layer register update mode */
    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET));
    G0_CTRL.bits.upd_mode = u32Mode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET), G0_CTRL.u32); 
}

HI_VOID  VDP_GFX_SetDeCmpEnable(HI_U32 u32Data, HI_U32 bEnable)
{
    U_G0_CTRL G0_CTRL;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetDeCmpEnable() Select Wrong Graph Layer ID\n");
        return ;
    }
    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET));
    G0_CTRL.bits.decmp_en = bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET), G0_CTRL.u32); 
}

HI_VOID  VDP_GFX_SetFlipEnable(HI_U32 u32Data, HI_U32 bEnable)
{
    U_G0_CTRL G0_CTRL;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetFlipEnable() Select Wrong Graph Layer ID\n");
        return ;
    }
    G0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET));
    G0_CTRL.bits.flip_en = bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_CTRL.u32)+ u32Data * GFX_OFFSET), G0_CTRL.u32); 
}

    


//-------------------------------------------------------------------
//GP_BEGIN
//-------------------------------------------------------------------
//
HI_VOID  VDP_GP_SetParaUpd       (HI_U32 u32Data, VDP_GP_PARA_E enMode)
{
    U_GP0_PARAUP GP0_PARAUP;
    GP0_PARAUP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_PARAUP.u32) + u32Data * GP_OFFSET));
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("error,VDP_GP_SetParaUpd() select wrong GP layer id\n");
        return ;
    }
    if(enMode == VDP_GP_PARA_ZME_HOR)
    {
        GP0_PARAUP.bits.gp0_hcoef_upd = 0x1;
    }
    else if(enMode == VDP_GP_PARA_ZME_VER)
    {
        GP0_PARAUP.bits.gp0_vcoef_upd = 0x1;
    }
    else
    {
        HI_PRINT("error,VDP_GP_SetParaUpd() select wrong mode!\n");
    }
    
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_PARAUP.u32) + u32Data * GP_OFFSET), GP0_PARAUP.u32); 
    return ;
}


HI_VOID VDP_GP_SetIpOrder (HI_U32 u32Data, HI_U32 u32Chn, VDP_GP_ORDER_E enIpOrder)
{
    U_GP0_CTRL GP0_CTRL ;

    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetIpOrder() Select Wrong GP Layer ID\n");
        return ;
    }

    GP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CTRL.u32)+ u32Data * GP_OFFSET));

    if(u32Chn == 0)//channel A
    {
        if(u32Data == VDP_LAYER_GP1)
        {
            //for GP0
            GP0_CTRL.bits.ffc_sel = 0;
        }
        switch(enIpOrder)
        {
            case VDP_GP_ORDER_NULL:
            {
                GP0_CTRL.bits.mux1_sel = 2;
                GP0_CTRL.bits.mux2_sel = 3;
                GP0_CTRL.bits.aout_sel = 0;
                GP0_CTRL.bits.bout_sel = 1;

                break;
            }
            case VDP_GP_ORDER_CSC:
            {
                GP0_CTRL.bits.mux1_sel = 0;
                GP0_CTRL.bits.mux2_sel = 3;
                GP0_CTRL.bits.aout_sel = 2;
                GP0_CTRL.bits.bout_sel = 1;

                break;
            }
            case VDP_GP_ORDER_ZME:
            {
                GP0_CTRL.bits.mux1_sel = 2;
                GP0_CTRL.bits.mux2_sel = 0;
                GP0_CTRL.bits.aout_sel = 3;
                GP0_CTRL.bits.bout_sel = 1;

                break;
            }
            case VDP_GP_ORDER_CSC_ZME:
            {
                GP0_CTRL.bits.mux1_sel = 0;
                GP0_CTRL.bits.mux2_sel = 2;
                GP0_CTRL.bits.aout_sel = 3;
                GP0_CTRL.bits.bout_sel = 1;

                break;
            }
            case VDP_GP_ORDER_ZME_CSC:
            {
                GP0_CTRL.bits.mux1_sel = 3;
                GP0_CTRL.bits.mux2_sel = 0;
                GP0_CTRL.bits.aout_sel = 2;
                GP0_CTRL.bits.bout_sel = 1;

                break;
            }
            default://null
            {
                GP0_CTRL.bits.mux1_sel = 2;
                GP0_CTRL.bits.mux2_sel = 3;
                GP0_CTRL.bits.aout_sel = 0;
                GP0_CTRL.bits.bout_sel = 1;

                break;
            }
        }
    }
    else if(u32Chn == 1)//channel B
    {
        if(u32Data == VDP_LAYER_GP1)
        {
            //for WBC_GP0
            GP0_CTRL.bits.ffc_sel = 1;
        }
        switch(enIpOrder)
        {
            case VDP_GP_ORDER_NULL:
            {
                GP0_CTRL.bits.mux1_sel = 1;
                GP0_CTRL.bits.mux2_sel = 0;
                GP0_CTRL.bits.aout_sel = 3;
                GP0_CTRL.bits.bout_sel = 2;

                break;
            }
            case VDP_GP_ORDER_CSC:
            {
                GP0_CTRL.bits.mux1_sel = 1;
                GP0_CTRL.bits.mux2_sel = 3;
                GP0_CTRL.bits.aout_sel = 0;
                GP0_CTRL.bits.bout_sel = 2;

                break;
            }
            case VDP_GP_ORDER_ZME:
            {
                GP0_CTRL.bits.mux1_sel = 2;
                GP0_CTRL.bits.mux2_sel = 1;
                GP0_CTRL.bits.aout_sel = 0;
                GP0_CTRL.bits.bout_sel = 3;

                break;
            }
            case VDP_GP_ORDER_CSC_ZME:
            {
                GP0_CTRL.bits.mux1_sel = 1;
                GP0_CTRL.bits.mux2_sel = 2;
                GP0_CTRL.bits.aout_sel = 0;
                GP0_CTRL.bits.bout_sel = 3;

                break;
            }
            case VDP_GP_ORDER_ZME_CSC:
            {
                GP0_CTRL.bits.mux1_sel = 3;
                GP0_CTRL.bits.mux2_sel = 1;
                GP0_CTRL.bits.aout_sel = 0;
                GP0_CTRL.bits.bout_sel = 2;

                break;
            }
            default://null
            {
                GP0_CTRL.bits.mux1_sel = 1;
                GP0_CTRL.bits.mux2_sel = 0;
                GP0_CTRL.bits.aout_sel = 3;
                GP0_CTRL.bits.bout_sel = 2;

                break;
            }
        }
    }
    else
    {
        HI_PRINT("Error,VDP_GP_SetIpOrder() Select Wrong GP Channel\n");
    }

    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CTRL.u32)+ u32Data * GP_OFFSET), GP0_CTRL.u32);
}

HI_VOID VDP_GP_SetReadMode(HI_U32 u32Data, HI_U32 u32Mode)
{
    U_GP0_CTRL GP0_CTRL;
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetReadMode Select Wrong Graph Layer ID\n");
        return ;
    }

    GP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CTRL.u32)+ u32Data * GP_OFFSET));
    GP0_CTRL.bits.read_mode = u32Mode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CTRL.u32)+ u32Data * GP_OFFSET), GP0_CTRL.u32); 


}


HI_VOID  VDP_GP_SetRect  (HI_U32 u32Data, VDP_DISP_RECT_S  stRect)
{
    U_GP0_IRESO GP0_IRESO;
    U_GP0_ORESO GP0_ORESO;

    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetRect() Select Wrong GP Layer ID\n");
        return ;
    }

    GP0_IRESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_IRESO.u32) + u32Data * GP_OFFSET));
    GP0_IRESO.bits.iw = stRect.u32IWth - 1;
    GP0_IRESO.bits.ih = stRect.u32IHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_IRESO.u32) + u32Data * GP_OFFSET), GP0_IRESO.u32); 

    GP0_ORESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ORESO.u32) + u32Data * GP_OFFSET));
    GP0_ORESO.bits.ow = stRect.u32OWth - 1;
    GP0_ORESO.bits.oh = stRect.u32OHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ORESO.u32) + u32Data * GP_OFFSET), GP0_ORESO.u32); 

    return ;
}

HI_VOID  VDP_GP_SetLayerReso (HI_U32 u32Data, VDP_DISP_RECT_S  stRect)
{
    U_GP0_VFPOS GP0_VFPOS;
    U_GP0_VLPOS GP0_VLPOS;
    U_GP0_DFPOS GP0_DFPOS;
    U_GP0_DLPOS GP0_DLPOS;
    U_GP0_IRESO GP0_IRESO;
    U_GP0_ORESO GP0_ORESO;

    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetLayerReso() Select Wrong GP Layer ID\n");
        return ;
    }

    /*video position */ 
    GP0_VFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_VFPOS.u32) + u32Data * GP_OFFSET));
    GP0_VFPOS.bits.video_xfpos = stRect.u32VX;
    GP0_VFPOS.bits.video_yfpos = stRect.u32VY;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_VFPOS.u32) + u32Data * GP_OFFSET), GP0_VFPOS.u32); 

    GP0_VLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_VLPOS.u32) + u32Data * GP_OFFSET));
    GP0_VLPOS.bits.video_xlpos = stRect.u32VX + stRect.u32OWth - 1;
    GP0_VLPOS.bits.video_ylpos = stRect.u32VY + stRect.u32OHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_VLPOS.u32) + u32Data * GP_OFFSET), GP0_VLPOS.u32); 

    GP0_DFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_DFPOS.u32) + u32Data * GP_OFFSET));
    GP0_DFPOS.bits.disp_xfpos = stRect.u32DXS;
    GP0_DFPOS.bits.disp_yfpos = stRect.u32DYS;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_DFPOS.u32) + u32Data * GP_OFFSET), GP0_DFPOS.u32); 

    GP0_DLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_DLPOS.u32) + u32Data * GP_OFFSET));
    GP0_DLPOS.bits.disp_xlpos = stRect.u32DXL-1;
    GP0_DLPOS.bits.disp_ylpos = stRect.u32DYL-1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_DLPOS.u32) + u32Data * GP_OFFSET), GP0_DLPOS.u32); 

    GP0_IRESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_IRESO.u32) + u32Data * GP_OFFSET));
    GP0_IRESO.bits.iw = stRect.u32IWth - 1;
    GP0_IRESO.bits.ih = stRect.u32IHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_IRESO.u32) + u32Data * GP_OFFSET), GP0_IRESO.u32); 

    GP0_ORESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ORESO.u32) + u32Data * GP_OFFSET));
    GP0_ORESO.bits.ow = stRect.u32OWth - 1;
    GP0_ORESO.bits.oh = stRect.u32OHgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ORESO.u32) + u32Data * GP_OFFSET), GP0_ORESO.u32); 

    return ;
}   

HI_VOID  VDP_GP_SetVideoPos     (HI_U32 u32Data, VDP_RECT_S  stRect)
{
   U_GP0_VFPOS GP0_VFPOS;
   U_GP0_VLPOS GP0_VLPOS;

   if(u32Data >= GP_MAX)
   {
       HI_PRINT("Error,VDP_GP_SetVideoPos() Select Wrong Video Layer ID\n");
       return ;
   }
   
  
   /*video position */ 
   GP0_VFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_VFPOS.u32) + u32Data * GP_OFFSET));
   GP0_VFPOS.bits.video_xfpos = stRect.u32X;
   GP0_VFPOS.bits.video_yfpos = stRect.u32Y;
   VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_VFPOS.u32) + u32Data * GP_OFFSET), GP0_VFPOS.u32); 
   
   GP0_VLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_VLPOS.u32) + u32Data * GP_OFFSET));
   GP0_VLPOS.bits.video_xlpos = stRect.u32X + stRect.u32Wth - 1;
   GP0_VLPOS.bits.video_ylpos = stRect.u32Y + stRect.u32Hgt - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_VLPOS.u32) + u32Data * GP_OFFSET), GP0_VLPOS.u32); 
   return ;
}   
    
HI_VOID  VDP_GP_SetDispPos     (HI_U32 u32Data, VDP_RECT_S  stRect)
{
   U_GP0_DFPOS GP0_DFPOS;
   U_GP0_DLPOS GP0_DLPOS;

   if(u32Data >= GP_MAX)
   {
       HI_PRINT("Error,VDP_GP_SetDispPos() Select Wrong Video Layer ID\n");
       return ;
   }
   
  
   /*video position */ 
   GP0_DFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_DFPOS.u32) + u32Data * GP_OFFSET));
   GP0_DFPOS.bits.disp_xfpos = stRect.u32X;
   GP0_DFPOS.bits.disp_yfpos = stRect.u32Y;
   VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_DFPOS.u32) + u32Data * GP_OFFSET), GP0_DFPOS.u32); 
   
   GP0_DLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_DLPOS.u32) + u32Data * GP_OFFSET));
   GP0_DLPOS.bits.disp_xlpos = stRect.u32X + stRect.u32Wth - 1;
   GP0_DLPOS.bits.disp_ylpos = stRect.u32Y + stRect.u32Hgt - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_DLPOS.u32) + u32Data * GP_OFFSET), GP0_DLPOS.u32); 
   return ;
}   

HI_VOID  VDP_GP_SetInReso (HI_U32 u32Data, VDP_RECT_S  stRect)
{
    U_GP0_IRESO GP0_IRESO;

    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetInReso() Select Wrong GP Layer ID\n");
        return ;
    }

    GP0_IRESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_IRESO.u32) + u32Data * GP_OFFSET));
    GP0_IRESO.bits.iw = stRect.u32Wth - 1;
    GP0_IRESO.bits.ih = stRect.u32Hgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_IRESO.u32) + u32Data * GP_OFFSET), GP0_IRESO.u32); 

    return ;
}  

HI_VOID  VDP_GP_SetOutReso (HI_U32 u32Data, VDP_RECT_S  stRect)
{
    U_GP0_ORESO GP0_ORESO;

    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetOutReso() Select Wrong GP Layer ID\n");
        return ;
    }


    GP0_ORESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ORESO.u32) + u32Data * GP_OFFSET));
    GP0_ORESO.bits.ow = stRect.u32Wth - 1;
    GP0_ORESO.bits.oh = stRect.u32Hgt - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ORESO.u32) + u32Data * GP_OFFSET), GP0_ORESO.u32); 

    return ;
}  

HI_VOID  VDP_GP_SetLayerGalpha (HI_U32 u32Data, HI_U32 u32Alpha)
{
    U_GP0_GALPHA GP0_GALPHA;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetLayerGalpha() Select Wrong gp Layer ID\n");
        return ;
    }

    
    GP0_GALPHA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_GALPHA.u32) + u32Data * GP_OFFSET));
    GP0_GALPHA.bits.galpha = u32Alpha;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_GALPHA.u32) + u32Data * GP_OFFSET), GP0_GALPHA.u32); 

    return ;
}

HI_VOID  VDP_GP_SetLayerBkg(HI_U32 u32Data, VDP_BKG_S stBkg)
{
    U_GP0_BK GP0_BK;
    U_GP0_ALPHA     GP0_ALPHA;

    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetLayerBkg() Select Wrong GPeo Layer ID\n");
        return ;
    }

    GP0_BK.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_BK.u32) + u32Data * GP_OFFSET));
    GP0_BK.bits.vbk_y  = stBkg.u32BkgY;
    GP0_BK.bits.vbk_cb = stBkg.u32BkgU;
    GP0_BK.bits.vbk_cr = stBkg.u32BkgV;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_BK.u32) + u32Data * GP_OFFSET), GP0_BK.u32); 

    GP0_ALPHA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ALPHA.u32) + u32Data * GP_OFFSET));
    GP0_ALPHA.bits.vbk_alpha = stBkg.u32BkgA;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ALPHA.u32) + u32Data * GP_OFFSET), GP0_ALPHA.u32); 

    return ;
}

HI_VOID  VDP_GP_SetRegUp  (HI_U32 u32Data)
{
    U_GP0_UPD GP0_UPD;

    /* GP layer register update */
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetRegUp() Select Wrong GP Layer ID\n");
        return ;
    }

    GP0_UPD.bits.regup = 0x1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_UPD.u32) + u32Data * GP_OFFSET), GP0_UPD.u32); 

    return ;
}

//-------------------------------------------------------------------
// GP.CSC begin
//-------------------------------------------------------------------

HI_VOID  VDP_GP_SetCscDcCoef   (HI_U32 u32Data, VDP_CSC_DC_COEF_S pstCscCoef)
{
    U_GP0_CSC_IDC  GP0_CSC_IDC;
    U_GP0_CSC_ODC  GP0_CSC_ODC;
    U_GP0_CSC_IODC GP0_CSC_IODC;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetCscDcCoef() Select Wrong GPeo Layer ID\n");
        return ;
    }
    
    GP0_CSC_IDC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_IDC.u32) + u32Data * GP_OFFSET));
    GP0_CSC_IDC.bits.cscidc1  = pstCscCoef.csc_in_dc1;
    GP0_CSC_IDC.bits.cscidc0  = pstCscCoef.csc_in_dc0;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_IDC.u32) + u32Data * GP_OFFSET), GP0_CSC_IDC.u32); 

    GP0_CSC_ODC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_ODC.u32) + u32Data * GP_OFFSET));
    GP0_CSC_ODC.bits.cscodc1 = pstCscCoef.csc_out_dc1;
    GP0_CSC_ODC.bits.cscodc0 = pstCscCoef.csc_out_dc0;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_ODC.u32) + u32Data * GP_OFFSET), GP0_CSC_ODC.u32); 

    GP0_CSC_IODC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_IODC.u32) + u32Data * GP_OFFSET));
    GP0_CSC_IODC.bits.cscodc2 = pstCscCoef.csc_out_dc2;
    GP0_CSC_IODC.bits.cscidc2 = pstCscCoef.csc_in_dc2;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_IODC.u32) + u32Data * GP_OFFSET), GP0_CSC_IODC.u32); 

    return ;
}

HI_VOID   VDP_GP_SetCscCoef(HI_U32 u32Data, VDP_CSC_COEF_S stCscCoef)
{   
    U_GP0_CSC_P0 GP0_CSC_P0;
    U_GP0_CSC_P1 GP0_CSC_P1;
    U_GP0_CSC_P2 GP0_CSC_P2;
    U_GP0_CSC_P3 GP0_CSC_P3;
    U_GP0_CSC_P4 GP0_CSC_P4;
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetCscCoef Select Wrong GPeo ID\n");
        return ;
    }


    GP0_CSC_P0.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_P0.u32)+u32Data*GP_OFFSET));
    GP0_CSC_P0.bits.cscp00 = stCscCoef.csc_coef00;
    GP0_CSC_P0.bits.cscp01 = stCscCoef.csc_coef01;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_P0.u32)+u32Data*GP_OFFSET), GP0_CSC_P0.u32);

    GP0_CSC_P1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_P1.u32)+u32Data*GP_OFFSET));
    GP0_CSC_P1.bits.cscp02 = stCscCoef.csc_coef02;
    GP0_CSC_P1.bits.cscp10 = stCscCoef.csc_coef10;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_P1.u32)+u32Data*GP_OFFSET), GP0_CSC_P1.u32);

    GP0_CSC_P2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_P2.u32)+u32Data*GP_OFFSET));
    GP0_CSC_P2.bits.cscp11 = stCscCoef.csc_coef11;
    GP0_CSC_P2.bits.cscp12 = stCscCoef.csc_coef12;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_P2.u32)+u32Data*GP_OFFSET), GP0_CSC_P2.u32);

    GP0_CSC_P3.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_P3.u32)+u32Data*GP_OFFSET));
    GP0_CSC_P3.bits.cscp20 = stCscCoef.csc_coef20;
    GP0_CSC_P3.bits.cscp21 = stCscCoef.csc_coef21;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_P3.u32)+u32Data*GP_OFFSET), GP0_CSC_P3.u32);

    GP0_CSC_P4.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_P4.u32)+u32Data*GP_OFFSET));
    GP0_CSC_P4.bits.cscp22 = stCscCoef.csc_coef22;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_P4.u32)+u32Data*GP_OFFSET), GP0_CSC_P4.u32);
        
}

    
HI_VOID  VDP_GP_SetCscEnable   (HI_U32 u32Data, HI_U32 u32bCscEn)
{
    U_GP0_CSC_IDC GP0_CSC_IDC;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetCscEnable() Select Wrong GPeo Layer ID\n");
        return ;
    }

    GP0_CSC_IDC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_IDC.u32) + u32Data * GP_OFFSET));
    GP0_CSC_IDC.bits.csc_en = u32bCscEn;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_IDC.u32) + u32Data * GP_OFFSET), GP0_CSC_IDC.u32); 

    return ;
}

HI_VOID VDP_GP_SetCscMode(HI_U32 u32Data, VDP_CSC_MODE_E enCscMode)
                                                           
{
    VDP_CSC_COEF_S    st_csc_coef;
    VDP_CSC_DC_COEF_S st_csc_dc_coef;

    HI_S32 s32Pre   = 1 << 10;
    HI_S32 s32DcPre = 4;//1:8bit; 4:10bit

    if(enCscMode == VDP_CSC_RGB2YUV_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(0.299  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(0.587  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(0.114  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(-0.172 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.339 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(0.511  * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(0.511  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(-0.428 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(-0.083 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = 0 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2RGB_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(    0  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(1.371  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.698 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(-0.336 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(1.732  * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(    0  * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  0 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_RGB2YUV_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(0.213  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(0.715  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(0.072  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(-0.117 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.394 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.511 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)( 0.511 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(-0.464 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(-0.047 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = 0 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 = 16  * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2RGB_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(    0  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(1.540  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.183 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(-0.459 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(1.816  * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(    0  * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 = 0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 0 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2YUV_709_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(-0.116 * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)( 0.208 * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)( 1.017 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.114 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)( 0.075 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)( 1.025 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =   16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2YUV_601_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(-0.116 * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)( 0.208 * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)( 1.017 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.114 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)( 0.075 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)( 1.025 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =   16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  128 * s32DcPre;
    }
    else
    {
        st_csc_coef.csc_coef00     = 1 * s32Pre;
        st_csc_coef.csc_coef01     = 0 * s32Pre;
        st_csc_coef.csc_coef02     = 0 * s32Pre;

        st_csc_coef.csc_coef10     = 0 * s32Pre;
        st_csc_coef.csc_coef11     = 1 * s32Pre;
        st_csc_coef.csc_coef12     = 0 * s32Pre;

        st_csc_coef.csc_coef20     = 0 * s32Pre;
        st_csc_coef.csc_coef21     = 0 * s32Pre;
        st_csc_coef.csc_coef22     = 1 * s32Pre;

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    
    VDP_GP_SetCscCoef  (u32Data,st_csc_coef);
    VDP_GP_SetCscDcCoef(u32Data,st_csc_dc_coef);

    return ;
}    

HI_VOID VDP_GP_SetDispMode(HI_U32 u32Data, VDP_DISP_MODE_E enDispMode)
{
    U_GP0_CTRL GP0_CTRL;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetDispMode() Select Wrong Video Layer ID\n");
        return ;
    }

    
    GP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CTRL.u32) + u32Data * GP_OFFSET));
    GP0_CTRL.bits.disp_mode = enDispMode;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CTRL.u32) + u32Data * VID_OFFSET), GP0_CTRL.u32); 

    return ;
}

//-------------------------------------------------------------------
// GP.ZME begin
//-------------------------------------------------------------------

HI_VOID VDP_GP_SetZmeEnable  (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable)
{
    U_GP0_ZME_HSP GP0_ZME_HSP;
    U_GP0_ZME_VSP GP0_ZME_VSP;
  
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetZmeEnable() Select Wrong Video Layer ID\n");
        return ;
    }
    
    /*GP zoom enable */
    if((enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_HSP.bits.hsc_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET), GP0_ZME_HSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_VSP.bits.vsc_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET), GP0_ZME_VSP.u32); 
    }
    
    return ;
}


HI_VOID VDP_GP_SetZmePhase   (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_S32 s32Phase)
{
    U_GP0_ZME_HOFFSET  GP0_ZME_HOFFSET;
    U_GP0_ZME_VOFFSET  GP0_ZME_VOFFSET;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetZmePhase() Select Wrong Video Layer ID\n");
        return ;
    }

    /* GP zoom enable */
    if((enMode == VDP_ZME_MODE_HORL) || (enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_HOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HOFFSET.u32) + u32Data * GP_OFFSET));
        GP0_ZME_HOFFSET.bits.hor_loffset = s32Phase;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HOFFSET.u32) + u32Data * GP_OFFSET), GP0_ZME_HOFFSET.u32); 
    }

    if((enMode == VDP_ZME_MODE_HORC) || (enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_HOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HOFFSET.u32) + u32Data * GP_OFFSET));
        GP0_ZME_HOFFSET.bits.hor_coffset = s32Phase;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HOFFSET.u32) + u32Data * GP_OFFSET), GP0_ZME_HOFFSET.u32); 
    }

    if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VOFFSET.u32) + u32Data * GP_OFFSET));
        GP0_ZME_VOFFSET.bits.vbtm_offset = s32Phase;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VOFFSET.u32) + u32Data * GP_OFFSET), GP0_ZME_VOFFSET.u32); 
    }

    if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VOFFSET.u32) + u32Data * GP_OFFSET));
        GP0_ZME_VOFFSET.bits.vtp_offset = s32Phase;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VOFFSET.u32) + u32Data * GP_OFFSET), GP0_ZME_VOFFSET.u32); 
    }

    return ;
}

HI_VOID VDP_GP_SetZmeFirEnable   (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable)
{
    U_GP0_ZME_HSP        GP0_ZME_HSP;
    U_GP0_ZME_VSP        GP0_ZME_VSP;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetZmeFirEnable() Select Wrong Video Layer ID\n");
        return ;
    }
            
    if((enMode == VDP_ZME_MODE_ALPHA)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_HSP.bits.hafir_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET), GP0_ZME_HSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_HSP.bits.hfir_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET), GP0_ZME_HSP.u32); 
    }
     
    if((enMode == VDP_ZME_MODE_ALPHAV)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_VSP.bits.vafir_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET), GP0_ZME_VSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_VSP.bits.vfir_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET), GP0_ZME_VSP.u32); 
    }
     
    return ;
}

HI_VOID VDP_GP_SetZmeMidEnable   (HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable)
{
    U_GP0_ZME_HSP        GP0_ZME_HSP;
    U_GP0_ZME_VSP        GP0_ZME_VSP;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetZmeMidEnable() Select Wrong Video Layer ID\n");
        return ;
    }
    
    /* VHD layer zoom enable */
    if((enMode == VDP_ZME_MODE_ALPHA)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_HSP.bits.hamid_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET), GP0_ZME_HSP.u32); 
    }
    if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_HSP.bits.hlmid_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET), GP0_ZME_HSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_HORC)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_HSP.bits.hchmid_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET), GP0_ZME_HSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_ALPHAV)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_VSP.bits.vamid_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET), GP0_ZME_VSP.u32); 
    }
    if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_VSP.bits.vlmid_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET), GP0_ZME_VSP.u32); 
    }
    
    if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET));
        GP0_ZME_VSP.bits.vchmid_en = u32bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + u32Data * GP_OFFSET), GP0_ZME_VSP.u32); 
    }

    return ;
}


HI_VOID VDP_GP_SetZmeHorRatio  (HI_U32 u32Data, HI_U32 u32Ratio)
{
    U_GP0_ZME_HSP        GP0_ZME_HSP;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetZmeHorRatio() Select Wrong Video Layer ID\n");
        return ;
    }
    
    GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET));
    GP0_ZME_HSP.bits.hratio = u32Ratio;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET), GP0_ZME_HSP.u32); 

    return ;
}

HI_VOID VDP_GP_SetZmeVerRatio  (HI_U32 u32Data, HI_U32 u32Ratio)
{
    U_GP0_ZME_VSR        GP0_ZME_VSR;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetZmeVerRatio() Select Wrong Video Layer ID\n");
        return ;
    }
    
    GP0_ZME_VSR.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSR.u32) + u32Data * GP_OFFSET));
    GP0_ZME_VSR.bits.vratio = u32Ratio;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSR.u32) + u32Data * GP_OFFSET), GP0_ZME_VSR.u32); 

    return ;
}



HI_VOID VDP_GP_SetZmeHfirOrder        (HI_U32 u32Data, HI_U32 u32HfirOrder)
{
    U_GP0_ZME_HSP        GP0_ZME_HSP;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetZmeHfirOrder() Select Wrong Video Layer ID\n");
        return ;
    }
    
    GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET));
    GP0_ZME_HSP.bits.hfir_order = u32HfirOrder;
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + u32Data * GP_OFFSET), GP0_ZME_HSP.u32); 

    return ;
}

HI_VOID VDP_GP_SetZmeCoefAddr  (HI_U32 u32Data, HI_U32 u32Mode, HI_U32 u32Addr)
{
    U_GP0_HCOEFAD    GP0_HCOEFAD;
    U_GP0_VCOEFAD    GP0_VCOEFAD;
    
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetZmeCoefAddr() Select Wrong Video Layer ID\n");
        return ;
    }
    
    if(u32Mode == VDP_GP_PARA_ZME_HOR)
    {
        GP0_HCOEFAD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_HCOEFAD.u32) + u32Data * GP_OFFSET));
        GP0_HCOEFAD.bits.coef_addr = u32Addr;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_HCOEFAD.u32) + u32Data * GP_OFFSET), GP0_HCOEFAD.u32); 
    }
    else if(u32Mode == VDP_GP_PARA_ZME_VER)
    {
        GP0_VCOEFAD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_VCOEFAD.u32) + u32Data * GP_OFFSET));
        GP0_VCOEFAD.bits.coef_addr = u32Addr;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_VCOEFAD.u32) + u32Data * GP_OFFSET), GP0_VCOEFAD.u32); 
    }
    else
    {
        HI_PRINT("Error,VDP_GP_SetZmeCoefAddr() Select a Wrong Mode!\n");
    }

    return ;
}


HI_VOID VDP_GP_SetParaRd(HI_U32 u32Data, VDP_GP_PARA_E enMode)
{
    U_GP0_PARARD GP0_PARARD;

    GP0_PARARD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_PARARD.u32) + u32Data * GP_OFFSET));

    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetParaRd() Select Wrong Video Layer ID\n");
        return ;
    }
    if(enMode == VDP_GP_PARA_ZME_HORL)
    {
        GP0_PARARD.bits.gp0_hlcoef_rd = 0x1;
    }
    
    if(enMode == VDP_GP_PARA_ZME_HORC)
    {
        GP0_PARARD.bits.gp0_hccoef_rd = 0x1;
    }
    
    if(enMode == VDP_GP_PARA_ZME_VERL)
    {
        GP0_PARARD.bits.gp0_vlcoef_rd = 0x1;
    }
    
    if(enMode == VDP_GP_PARA_ZME_VERC)
    {
        GP0_PARARD.bits.gp0_vccoef_rd = 0x1;
    }
    
    if(enMode == VDP_GP_GTI_PARA_ZME_HORL)
    {
        GP0_PARARD.bits.gp0_gti_hlcoef_rd = 0x1;
    }
    
    if(enMode == VDP_GP_GTI_PARA_ZME_HORC)
    {
        GP0_PARARD.bits.gp0_gti_hccoef_rd = 0x1;
    }
    
    if(enMode == VDP_GP_GTI_PARA_ZME_VERL)
    {
        GP0_PARARD.bits.gp0_gti_vlcoef_rd = 0x1;
    }
    
    if(enMode == VDP_GP_PARA_ZME_VERC)
    {
        GP0_PARARD.bits.gp0_gti_vccoef_rd = 0x1;
    }
    
    else
    {
        HI_PRINT("error,VDP_VID_SetParaUpd() select wrong mode!\n");
    }
    
    VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_PARARD.u32) + u32Data * GP_OFFSET), GP0_PARARD.u32); 
    return ;
}

//-------------------------------------------------------------------
// GP.ZME.GTI(LTI/CTI) begin
//-------------------------------------------------------------------

HI_VOID  VDP_GP_SetTiEnable(HI_U32 u32Data, HI_U32 u32Md,HI_U32 u32Data1)
{
    U_GP0_ZME_LTICTRL GP0_ZME_LTICTRL;
    U_GP0_ZME_CTICTRL GP0_ZME_CTICTRL;

    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetTiEnable() Select Wrong Graph Layer ID\n");
        return ;
    }
    if((u32Md == VDP_TI_MODE_LUM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_LTICTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_LTICTRL.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_LTICTRL.bits.lti_en = u32Data1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_LTICTRL.u32)+ u32Data * GP_OFFSET), GP0_ZME_LTICTRL.u32);

    }
    if((u32Md == VDP_TI_MODE_CHM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_CTICTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_CTICTRL.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_CTICTRL.bits.cti_en = u32Data1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_CTICTRL.u32)+ u32Data * GP_OFFSET), GP0_ZME_CTICTRL.u32);
    }

}

HI_VOID  VDP_GP_SetTiGainRatio(HI_U32 u32Data, HI_U32 u32Md, HI_S32 s32Data)

{
    U_GP0_ZME_LTICTRL GP0_ZME_LTICTRL;
    U_GP0_ZME_CTICTRL GP0_ZME_CTICTRL;

    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_SetTiGainRatio() Select Wrong Graph Layer ID\n");
        return ;
    }

    if((u32Md == VDP_TI_MODE_LUM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_LTICTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_LTICTRL.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_LTICTRL.bits.lgain_ratio = s32Data;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_LTICTRL.u32)+ u32Data * GP_OFFSET), GP0_ZME_LTICTRL.u32); 
    }

    if((u32Md == VDP_TI_MODE_CHM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_CTICTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_CTICTRL.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_CTICTRL.bits.cgain_ratio = s32Data;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_CTICTRL.u32)+ u32Data * GP_OFFSET), GP0_ZME_CTICTRL.u32); 
    }

}

HI_VOID  VDP_GP_SetTiMixRatio(HI_U32 u32Data, HI_U32 u32Md, HI_U32 u32mixing_ratio)

{
    U_GP0_ZME_LTICTRL GP0_ZME_LTICTRL;
    U_GP0_ZME_CTICTRL GP0_ZME_CTICTRL;
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetTiMixRatio() Select Wrong Graph Layer ID\n");
        return ;
    }


    if((u32Md == VDP_TI_MODE_LUM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_LTICTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_LTICTRL.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_LTICTRL.bits.lmixing_ratio = u32mixing_ratio;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_LTICTRL.u32)+ u32Data * GP_OFFSET), GP0_ZME_LTICTRL.u32); 
    }

    if((u32Md == VDP_TI_MODE_CHM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_CTICTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_CTICTRL.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_CTICTRL.bits.cmixing_ratio = u32mixing_ratio;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_CTICTRL.u32)+ u32Data * GP_OFFSET), GP0_ZME_CTICTRL.u32); 
    }

}

HI_VOID  VDP_GP_SetTiHfThd(HI_U32 u32Data, HI_U32 u32Md, HI_U32 * u32TiHfThd)
{
    U_GP0_ZME_LHFREQTHD GP0_ZME_LHFREQTHD;
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetTiHfThd() Select Wrong Graph Layer ID\n");
        return ;
    }

    if((u32Md == VDP_TI_MODE_LUM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_LHFREQTHD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_LHFREQTHD.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_LHFREQTHD.bits.lhfreq_thd0 = u32TiHfThd[0];
        GP0_ZME_LHFREQTHD.bits.lhfreq_thd1 = u32TiHfThd[1];
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_LHFREQTHD.u32)+ u32Data * GP_OFFSET), GP0_ZME_LHFREQTHD.u32); 
    }


}

HI_VOID  VDP_GP_SetTiHpCoef(HI_U32 u32Data, HI_U32 u32Md, HI_S32 * s32Data)
{

    U_GP0_ZME_LTICTRL GP0_ZME_LTICTRL;
    U_GP0_ZME_CTICTRL GP0_ZME_CTICTRL;
    U_GP0_ZME_LHPASSCOEF GP0_ZME_LHPASSCOEF;
    U_GP0_ZME_CHPASSCOEF GP0_ZME_CHPASSCOEF;
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetTiHpCoef() Select Wrong Graph Layer ID\n");
        return ;
    }

    if((u32Md == VDP_TI_MODE_LUM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_LTICTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_LTICTRL.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_LHPASSCOEF.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_LHPASSCOEF.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_LHPASSCOEF.bits.lhpass_coef0 = s32Data[0];
        GP0_ZME_LHPASSCOEF.bits.lhpass_coef1 = s32Data[1];
        GP0_ZME_LHPASSCOEF.bits.lhpass_coef2 = s32Data[2];
        GP0_ZME_LHPASSCOEF.bits.lhpass_coef3 = s32Data[3];
        GP0_ZME_LTICTRL.bits.lhpass_coef4    = s32Data[4];
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_LTICTRL.u32)+ u32Data * GP_OFFSET), GP0_ZME_LTICTRL.u32); 
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_LHPASSCOEF.u32)+ u32Data * GP_OFFSET), GP0_ZME_LHPASSCOEF.u32); 
    }

    if((u32Md == VDP_TI_MODE_CHM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_CTICTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_CTICTRL.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_CHPASSCOEF.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_CHPASSCOEF.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_CHPASSCOEF.bits.chpass_coef0 = s32Data[0];
        GP0_ZME_CHPASSCOEF.bits.chpass_coef1 = s32Data[1];
        GP0_ZME_CHPASSCOEF.bits.chpass_coef2 = s32Data[2];
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_CTICTRL.u32)+ u32Data * GP_OFFSET), GP0_ZME_CTICTRL.u32); 
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_CHPASSCOEF.u32)+ u32Data * GP_OFFSET), GP0_ZME_CHPASSCOEF.u32); 
    }
}

HI_VOID  VDP_GP_SetTiCoringThd(HI_U32 u32Data, HI_U32 u32Md, HI_U32 u32thd)
{
    U_GP0_ZME_LTITHD GP0_ZME_LTITHD;
    U_GP0_ZME_CTITHD GP0_ZME_CTITHD;
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetTiCoringThd() Select Wrong Graph Layer ID\n");
        return ;
    }

    if((u32Md == VDP_TI_MODE_LUM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_LTITHD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_LTITHD.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_LTITHD.bits.lcoring_thd = u32thd;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_LTITHD.u32)+ u32Data * GP_OFFSET), GP0_ZME_LTITHD.u32); 
    }

    if((u32Md == VDP_TI_MODE_CHM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_CTITHD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_CTITHD.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_CTITHD.bits.ccoring_thd = u32thd;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_CTITHD.u32)+ u32Data * GP_OFFSET), GP0_ZME_CTITHD.u32); 
    }

}

//***********************have problem !!!*****************************************************
HI_VOID  VDP_GP_SetTiSwingThd(HI_U32 u32Data, HI_U32 u32Md, HI_U32 u32thd, HI_U32 u32thd1)//have problem
{
    U_GP0_ZME_LTITHD GP0_ZME_LTITHD;
    U_GP0_ZME_CTITHD GP0_ZME_CTITHD;
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,Vou_SetTiSwingThd() Select Wrong Graph Layer ID\n");
        return ;
    }

    if((u32Md == VDP_TI_MODE_LUM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_LTITHD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_LTITHD.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_LTITHD.bits.lover_swing  = u32thd;
        GP0_ZME_LTITHD.bits.lunder_swing = u32thd1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_LTITHD.u32)+ u32Data * GP_OFFSET), GP0_ZME_LTITHD.u32); 
    }

    if((u32Md == VDP_TI_MODE_CHM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_CTITHD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_CTITHD.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_CTITHD.bits.cover_swing  = u32thd;
        GP0_ZME_CTITHD.bits.cunder_swing = u32thd1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_CTITHD.u32)+ u32Data * GP_OFFSET), GP0_ZME_CTITHD.u32); 
    }

}

//***********************************************************************************************
HI_VOID  VDP_GP_SetTiGainCoef(HI_U32 u32Data, HI_U32 u32Md, HI_U32 * u32coef)
{
    U_GP0_ZME_LGAINCOEF GP0_ZME_LGAINCOEF;
    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetTiGainCoef() Select Wrong Graph Layer ID\n");
        return ;
    }

    if((u32Md == VDP_TI_MODE_LUM)||(u32Md == VDP_TI_MODE_ALL))
    {
        GP0_ZME_LGAINCOEF.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_LGAINCOEF.u32)+ u32Data * GP_OFFSET));
        GP0_ZME_LGAINCOEF.bits.lgain_coef0 = u32coef[0];
        GP0_ZME_LGAINCOEF.bits.lgain_coef1 = u32coef[1];
        GP0_ZME_LGAINCOEF.bits.lgain_coef2 = u32coef[2];
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_LGAINCOEF.u32)+ u32Data * GP_OFFSET), GP0_ZME_LGAINCOEF.u32); 
    }
}

HI_VOID  VDP_GP_SetTiDefThd(HI_U32 u32Data, HI_U32 u32Md)
{
    HI_U32 u32HfThd[2]    = {20,512};
    HI_U32 u32GainCoef[3] = {152,118,108};
//    HI_S32  s32LtiHpCoef[5] = {-19,-8,-2,-1,-1};
//    HI_S32  s32CtiHpCoef[5] = {-21,-21,-11,0,0};

    HI_S32  s32CtiHpCoef[5] = {-21,-21,-11,0,0};
    HI_S32  s32LtiHpCoef[5] = {-21,-21,-11,0,0};

    if(u32Data >= GP_MAX)
    {
        HI_PRINT("Error,VDP_GP_SetTiDefThd() Select Wrong Graph Layer ID\n");
        return ;
    }

    if(u32Md == VDP_TI_MODE_LUM)
    {
        VDP_GP_SetTiGainRatio(u32Data, u32Md, 255);
        VDP_GP_SetTiMixRatio (u32Data, u32Md, 127);
        VDP_GP_SetTiCoringThd(u32Data, u32Md, 0);
        VDP_GP_SetTiSwingThd (u32Data, u32Md, 6, 6);
        VDP_GP_SetTiHfThd    (u32Data, u32Md, u32HfThd);
        VDP_GP_SetTiGainCoef (u32Data, u32Md, u32GainCoef);
        VDP_GP_SetTiHpCoef   (u32Data, u32Md, s32LtiHpCoef);
    }

    if(u32Md == VDP_TI_MODE_CHM)
    {
        VDP_GP_SetTiGainRatio(u32Data, u32Md, 255);
        VDP_GP_SetTiMixRatio (u32Data, u32Md, 127);
        VDP_GP_SetTiCoringThd(u32Data, u32Md, 4);
        VDP_GP_SetTiSwingThd (u32Data, u32Md, 6, 6);
        VDP_GP_SetTiHfThd    (u32Data, u32Md, u32HfThd);
        VDP_GP_SetTiGainCoef (u32Data, u32Md, u32GainCoef);
        VDP_GP_SetTiHpCoef   (u32Data, u32Md, s32CtiHpCoef);
    }
}



#if 0
///////////////////////GO ZME  BEGIN///
/* graphic0 layer zoom enable */
HI_VOID  VDP_GFX_SetZmeEnable(HI_U32 u32Data,VDP_ZME_MODE_E enMode,HI_U32 bEnable)
{
    U_G0_HSP G0_HSP;
    U_G0_VSP G0_VSP;

    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetZmeEnable() Select Wrong Graph Layer ID\n");
        return ;
    }

    if((enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {


        G0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET));
        G0_HSP.bits.hsc_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET), G0_HSP.u32); 
    }

    if((enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        G0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET));
        G0_VSP.bits.vsc_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET), G0_VSP.u32); 
    }
}

HI_VOID VDP_GFX_SetZmeFirEnable(HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 bEnable)
{
    
    U_G0_VSP G0_VSP;
    U_G0_HSP G0_HSP;

    
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_SetZmeFirEnable() Select Wrong Graph Layer ID\n");
        return ;
    }

    /* g0 layer zoom enable */
    if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        G0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET));
        G0_HSP.bits.hfir_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET), G0_HSP.u32); 
    }

    if((enMode == VDP_ZME_MODE_ALPHA)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        G0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET));
        G0_HSP.bits.hafir_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET), G0_HSP.u32); 
    }

    if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        G0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET));
        G0_VSP.bits.vfir_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET), G0_VSP.u32); 
    }

    if((enMode == VDP_ZME_MODE_ALPHAV)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        G0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET));
        G0_VSP.bits.vafir_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET), G0_VSP.u32); 
    }

}

/* Vou set Median filter enable */
HI_VOID  VDP_GFX_SetZmeMidEnable(HI_U32 u32Data,VDP_ZME_MODE_E enMode, HI_U32 bEnable)
{
    U_G0_HSP G0_HSP;
    U_G0_VSP G0_VSP;

    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetZmeMidEnable() Select Wrong Graph Layer ID\n");
        return ;
    }
    /* G0 layer zoom enable */
    if((enMode == VDP_ZME_MODE_HORL) || (enMode == VDP_ZME_MODE_HOR) || (enMode == VDP_ZME_MODE_ALL))
    {
        G0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET));
        G0_HSP.bits.hlmid_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET), G0_HSP.u32);  
    }
    if((enMode == VDP_ZME_MODE_HORC) || (enMode == VDP_ZME_MODE_HOR) || (enMode == VDP_ZME_MODE_ALL))
    {
        G0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET));
        G0_HSP.bits.hchmid_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET), G0_HSP.u32);  
    }
    if((enMode == VDP_ZME_MODE_ALPHA) || (enMode == VDP_ZME_MODE_HOR) || (enMode == VDP_ZME_MODE_ALL))
    {
        G0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET));
        G0_HSP.bits.hamid_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET), G0_HSP.u32);  
    }
    if((enMode == VDP_ZME_MODE_VERL) || (enMode == VDP_ZME_MODE_VER) || (enMode == VDP_ZME_MODE_ALL))
    {
        G0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET));
        G0_VSP.bits.vlmid_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET), G0_VSP.u32);  
    }
    if((enMode == VDP_ZME_MODE_VERC) || (enMode == VDP_ZME_MODE_VER) || (enMode == VDP_ZME_MODE_ALL))
    {
        G0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET));
        G0_VSP.bits.vchmid_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET), G0_VSP.u32);
    }
    if((enMode == VDP_ZME_MODE_ALPHAV) || (enMode == VDP_ZME_MODE_VER) || (enMode == VDP_ZME_MODE_ALL))
    {
        G0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET));
        G0_VSP.bits.vamid_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET), G0_VSP.u32);
    }



}

HI_VOID VDP_GFX_SetZmeHfirOrder(HI_U32 u32Data, HI_U32 uHfirOrder)
{
    U_G0_HSP G0_HSP;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetZmeHfirOrder() Select Wrong Graph Layer ID\n");
        return ;
    }

    G0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET));
    G0_HSP.bits.hfir_order = uHfirOrder;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_HSP.u32)+ u32Data * GFX_OFFSET), G0_HSP.u32);


}
HI_VOID VDP_GFX_SetZmeVerTap(HI_U32 u32Data, VDP_ZME_MODE_E enMode, HI_U32 u32VerTap)
{
    U_G0_VSP G0_VSP;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetZmeVerTap() Select Wrong Graph Layer ID\n");
        return ;
    }

    G0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET));
    G0_VSP.bits.vsc_luma_tap = u32VerTap;
    VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VSP.u32)+ u32Data * GFX_OFFSET), G0_VSP.u32);
}

/* Vou set zoom inital phase */
HI_VOID  VDP_GFX_SetZmePhase(HI_U32 u32Data, VDP_ZME_MODE_E enMode,HI_S32 s32Phase)
{
    U_G0_HOFFSET G0_HOFFSET;
    U_G0_VOFFSET G0_VOFFSET;
    if(u32Data >= GFX_MAX)
    {
        HI_PRINT("Error,VDP_GFX_SetZmePhase() Select Wrong Graph Layer ID\n");
        return ;
    }

    if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        G0_HOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_HOFFSET.u32)+ u32Data * GFX_OFFSET));
        G0_HOFFSET.bits.hor_loffset = (s32Phase);
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_HOFFSET.u32)+ u32Data * GFX_OFFSET), G0_HOFFSET.u32); 
    }
    if((enMode == VDP_ZME_MODE_HORC)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
    {
        G0_HOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_HOFFSET.u32)+ u32Data * GFX_OFFSET));
        G0_HOFFSET.bits.hor_coffset = (s32Phase);
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_HOFFSET.u32)+ u32Data * GFX_OFFSET), G0_HOFFSET.u32); 
    }

    if((enMode == VDP_ZME_MODE_VERT)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        G0_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_HOFFSET.u32)+ u32Data * GFX_OFFSET));
        G0_VOFFSET.bits.vtp_offset = (s32Phase);
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VOFFSET.u32)+ u32Data * GFX_OFFSET), G0_VOFFSET.u32); 
    }
    if((enMode == VDP_ZME_MODE_VERB)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
    {
        G0_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->G0_VOFFSET.u32)+ u32Data * GFX_OFFSET));
        G0_VOFFSET.bits.vbtm_offset = (s32Phase);
        VDP_RegWrite((HI_U32)(&(pVdpReg->G0_VOFFSET.u32)+ u32Data * GFX_OFFSET), G0_VOFFSET.u32); 
    }


}
//GFX END
#endif
//-------------------------------------------------------------------
//WBC_DHD0_BEGIN
//-------------------------------------------------------------------

HI_VOID VDP_WBC_SetEnable( VDP_LAYER_WBC_E enLayer, HI_U32 bEnable)
{
    U_WBC_DHD0_CTRL WBC_DHD0_CTRL;
    U_WBC_GP0_CTRL  WBC_GP0_CTRL;


    if( enLayer == VDP_LAYER_WBC_HD0)
    {
    	//printk("[%d]", bEnable);
        WBC_DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CTRL.u32)));
        WBC_DHD0_CTRL.bits.wbc_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CTRL.u32)), WBC_DHD0_CTRL.u32);
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        WBC_GP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_CTRL.u32)));
        WBC_GP0_CTRL.bits.wbc_en = bEnable;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_CTRL.u32)), WBC_GP0_CTRL.u32);
    }


}

HI_VOID VDP_WBC_SetOutIntf (VDP_LAYER_WBC_E enLayer, VDP_DATA_RMODE_E u32RdMode)
{
    U_WBC_DHD0_CTRL WBC_DHD0_CTRL;
    U_WBC_GP0_CTRL  WBC_GP0_CTRL;
    if( enLayer == VDP_LAYER_WBC_HD0) 
    {
        WBC_DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CTRL.u32)));
        WBC_DHD0_CTRL.bits.mode_out = u32RdMode;            
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CTRL.u32)), WBC_DHD0_CTRL.u32);
    }
    else if( enLayer == VDP_LAYER_WBC_GP0) 
    {
        WBC_GP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_CTRL.u32)));
        WBC_GP0_CTRL.bits.mode_out = u32RdMode;            
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_CTRL.u32)), WBC_GP0_CTRL.u32);
    }
    else
    {
        HI_PRINT("Error! VDP_WBC_SetOutIntf enRdMode error!\n");
    }
}

HI_VOID  VDP_WBC_SetRegUp (VDP_LAYER_WBC_E enLayer)
{
    U_WBC_DHD0_UPD WBC_DHD0_UPD;
    U_WBC_GP0_UPD WBC_GP0_UPD;

    if(enLayer == VDP_LAYER_WBC_HD0)
    {
    	//printk("r");
        WBC_DHD0_UPD.bits.regup = 0x1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_UPD.u32)), WBC_DHD0_UPD.u32); 
        return ;
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        WBC_GP0_UPD.bits.regup = 0x1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_UPD.u32)), WBC_GP0_UPD.u32); 

        return ;
    }

}

HI_VOID VDP_WBC_SetOutFmt(VDP_LAYER_WBC_E enLayer, VDP_WBC_OFMT_E stIntfFmt)

{
    U_WBC_DHD0_CTRL WBC_DHD0_CTRL;
    U_WBC_GP0_CTRL   WBC_GP0_CTRL;

    if(enLayer == VDP_LAYER_WBC_HD0)
    {
        WBC_DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CTRL.u32)));
        WBC_DHD0_CTRL.bits.format_out = stIntfFmt;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CTRL.u32)), WBC_DHD0_CTRL.u32);
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        WBC_GP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_CTRL.u32)));
        WBC_GP0_CTRL.bits.format_out = stIntfFmt;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_CTRL.u32)), WBC_GP0_CTRL.u32);
    }
}

HI_VOID VDP_WBC_SetOutFmtUVOrder(VDP_LAYER_WBC_E enLayer, HI_U32 uvOrder)
{
    U_WBC_DHD0_CTRL WBC_DHD0_CTRL;
    U_WBC_GP0_CTRL   WBC_GP0_CTRL;

    if(enLayer == VDP_LAYER_WBC_HD0)
    {
        WBC_DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CTRL.u32)));
        WBC_DHD0_CTRL.bits.uv_order = uvOrder;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CTRL.u32)), WBC_DHD0_CTRL.u32);
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        WBC_GP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_CTRL.u32)));
        WBC_GP0_CTRL.bits.uv_order = uvOrder;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_CTRL.u32)), WBC_GP0_CTRL.u32);
    }
}



HI_VOID VDP_WBC_SetSpd(VDP_LAYER_WBC_E enLayer, HI_U32 u32ReqSpd)
{
    U_WBC_DHD0_CTRL WBC_DHD0_CTRL;
    U_WBC_GP0_CTRL WBC_GP0_CTRL;

    if(enLayer == VDP_LAYER_WBC_HD0)
    {
        WBC_DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CTRL.u32)));
        WBC_DHD0_CTRL.bits.req_interval = u32ReqSpd;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CTRL.u32)), WBC_DHD0_CTRL.u32);
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        WBC_GP0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_CTRL.u32)));
        WBC_GP0_CTRL.bits.req_interval = u32ReqSpd;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_CTRL.u32)), WBC_GP0_CTRL.u32);
    }

}

HI_VOID  VDP_WBC_SetLayerAddr   (VDP_LAYER_WBC_E enLayer, HI_U32 u32LAddr,HI_U32 u32CAddr,HI_U32 u32LStr, HI_U32 u32CStr)
{
    U_WBC_DHD0_STRIDE WBC_DHD0_STRIDE;
//    U_WBC_DHD0_YADDR  WBC_DHD0_YADDR ;
//    U_WBC_DHD0_CADDR  WBC_DHD0_CADDR ;

    U_WBC_GP0_STRIDE WBC_GP0_STRIDE;
//    U_WBC_GP0_YADDR  WBC_GP0_YADDR ;
//    U_WBC_GP0_CADDR  WBC_GP0_CADDR ;

    if (enLayer == VDP_LAYER_WBC_HD0)
    {
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_YADDR.u32)), u32LAddr); 
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CADDR.u32)), u32CAddr); 
        WBC_DHD0_STRIDE.bits.wbclstride = u32LStr;
        WBC_DHD0_STRIDE.bits.wbccstride = u32CStr;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_STRIDE.u32)), WBC_DHD0_STRIDE.u32);

        return ;
    }

    else if (enLayer == VDP_LAYER_WBC_GP0)
    {
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_YADDR.u32)), u32LAddr); 
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_CADDR.u32)), u32CAddr); 
        WBC_GP0_STRIDE.bits.wbclstride = u32LStr;
        WBC_GP0_STRIDE.bits.wbccstride = u32CStr;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_STRIDE.u32)), WBC_GP0_STRIDE.u32);

        return ;
    }

}

HI_VOID  VDP_WBC_SetLayerReso     (VDP_LAYER_WBC_E enLayer, VDP_DISP_RECT_S  stRect)
{
    U_WBC_DHD0_ORESO WBC_DHD0_ORESO;
    U_WBC_GP0_ORESO WBC_GP0_ORESO;
    if(enLayer == VDP_LAYER_WBC_HD0)
    {
        WBC_DHD0_ORESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ORESO.u32)));
        WBC_DHD0_ORESO.bits.ow = stRect.u32OWth - 1;
        WBC_DHD0_ORESO.bits.oh = stRect.u32OHgt - 1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ORESO.u32)), WBC_DHD0_ORESO.u32); 
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        WBC_GP0_ORESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_ORESO.u32)));
        WBC_GP0_ORESO.bits.ow = stRect.u32OWth - 1;
        WBC_GP0_ORESO.bits.oh = stRect.u32OHgt - 1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_ORESO.u32)), WBC_GP0_ORESO.u32); 
    }




}

HI_VOID VDP_WBC_SetDitherMode  (VDP_LAYER_WBC_E enLayer, VDP_DITHER_E enDitherMode)

{
    U_WBC_DHD0_DITHER_CTRL WBC_DHD0_DITHER_CTRL;
    U_WBC_GP0_DITHER_CTRL WBC_GP0_DITHER_CTRL;


    if(enLayer == VDP_LAYER_WBC_HD0)
    {

        WBC_DHD0_DITHER_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_DITHER_CTRL.u32)));
        WBC_DHD0_DITHER_CTRL.bits.dither_md = enDitherMode;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_DITHER_CTRL.u32)), WBC_DHD0_DITHER_CTRL.u32);

    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {

        WBC_GP0_DITHER_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_DITHER_CTRL.u32)));
        WBC_GP0_DITHER_CTRL.bits.dither_md = enDitherMode;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_DITHER_CTRL.u32)), WBC_GP0_DITHER_CTRL.u32);

    }


}

HI_VOID VDP_WBC_SetDitherCoef  (VDP_LAYER_WBC_E enLayer, VDP_DITHER_COEF_S dither_coef)

{
    
    U_WBC_DHD0_DITHER_COEF0 WBC_DHD0_DITHER_COEF0;
    U_WBC_DHD0_DITHER_COEF1 WBC_DHD0_DITHER_COEF1;

    U_WBC_GP0_DITHER_COEF0 WBC_GP0_DITHER_COEF0;
    U_WBC_GP0_DITHER_COEF1 WBC_GP0_DITHER_COEF1;



    if(enLayer == VDP_LAYER_WBC_HD0)
    {

        WBC_DHD0_DITHER_COEF0.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_DITHER_COEF0.u32)));
        WBC_DHD0_DITHER_COEF0.bits.dither_coef0 = dither_coef.dither_coef0 ;
        WBC_DHD0_DITHER_COEF0.bits.dither_coef1 = dither_coef.dither_coef1 ;
        WBC_DHD0_DITHER_COEF0.bits.dither_coef2 = dither_coef.dither_coef2 ;
        WBC_DHD0_DITHER_COEF0.bits.dither_coef3 = dither_coef.dither_coef3 ;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_DITHER_COEF0.u32)), WBC_DHD0_DITHER_COEF0.u32);

        WBC_DHD0_DITHER_COEF1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_DITHER_COEF1.u32)));
        WBC_DHD0_DITHER_COEF1.bits.dither_coef4 = dither_coef.dither_coef4 ;
        WBC_DHD0_DITHER_COEF1.bits.dither_coef5 = dither_coef.dither_coef5 ;
        WBC_DHD0_DITHER_COEF1.bits.dither_coef6 = dither_coef.dither_coef6 ;
        WBC_DHD0_DITHER_COEF1.bits.dither_coef7 = dither_coef.dither_coef7 ;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_DITHER_COEF1.u32)), WBC_DHD0_DITHER_COEF1.u32);

    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {

        WBC_GP0_DITHER_COEF0.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_DITHER_COEF0.u32)));
        WBC_GP0_DITHER_COEF0.bits.dither_coef0 = dither_coef.dither_coef0 ;
        WBC_GP0_DITHER_COEF0.bits.dither_coef1 = dither_coef.dither_coef1 ;
        WBC_GP0_DITHER_COEF0.bits.dither_coef2 = dither_coef.dither_coef2 ;
        WBC_GP0_DITHER_COEF0.bits.dither_coef3 = dither_coef.dither_coef3 ;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_DITHER_COEF0.u32)), WBC_GP0_DITHER_COEF0.u32);

        WBC_GP0_DITHER_COEF1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_DITHER_COEF1.u32)));
        WBC_GP0_DITHER_COEF1.bits.dither_coef4 = dither_coef.dither_coef4 ;
        WBC_GP0_DITHER_COEF1.bits.dither_coef5 = dither_coef.dither_coef5 ;
        WBC_GP0_DITHER_COEF1.bits.dither_coef6 = dither_coef.dither_coef6 ;
        WBC_GP0_DITHER_COEF1.bits.dither_coef7 = dither_coef.dither_coef7 ;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_DITHER_COEF1.u32)), WBC_GP0_DITHER_COEF1.u32);

    }


}

HI_VOID  VDP_WBC_SetCropReso (VDP_LAYER_WBC_E enLayer, VDP_DISP_RECT_S stRect)
{
    U_WBC_DHD0_FCROP WBC_DHD0_FCROP;
    U_WBC_DHD0_LCROP WBC_DHD0_LCROP;

    U_WBC_GP0_FCROP WBC_GP0_FCROP;
    U_WBC_GP0_LCROP WBC_GP0_LCROP;

    if(enLayer == VDP_LAYER_WBC_HD0)
    {
        WBC_DHD0_FCROP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_FCROP.u32)));
        WBC_DHD0_FCROP.bits.wfcrop = stRect.u32DXS;
        WBC_DHD0_FCROP.bits.hfcrop = stRect.u32DYS;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_FCROP.u32)), WBC_DHD0_FCROP.u32); 

        WBC_DHD0_LCROP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_LCROP.u32)));
        WBC_DHD0_LCROP.bits.wlcrop = stRect.u32DXL-1;
        WBC_DHD0_LCROP.bits.hlcrop = stRect.u32DYL-1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_LCROP.u32)), WBC_DHD0_LCROP.u32); 
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        WBC_GP0_FCROP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_FCROP.u32)));
        WBC_GP0_FCROP.bits.wfcrop = stRect.u32DXS;
        WBC_GP0_FCROP.bits.hfcrop = stRect.u32DYS;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_FCROP.u32)), WBC_GP0_FCROP.u32); 

        WBC_GP0_LCROP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_GP0_LCROP.u32)));
        WBC_GP0_LCROP.bits.wlcrop = stRect.u32DXL-1;
        WBC_GP0_LCROP.bits.hlcrop = stRect.u32DYL-1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_GP0_LCROP.u32)), WBC_GP0_LCROP.u32); 
    }
    



    return ;
}

HI_VOID VDP_WBC_SetZmeCoefAddr(VDP_LAYER_WBC_E enLayer, VDP_WBC_PARA_E u32Mode, HI_U32 u32Addr,HI_U32 u32Addrchr)
{
    U_WBC_DHD0_HCOEFAD WBC_DHD0_HCOEFAD;
    U_WBC_DHD0_VCOEFAD WBC_DHD0_VCOEFAD;
    U_GP0_HCOEFAD      GP0_HCOEFAD;
    U_GP0_VCOEFAD      GP0_VCOEFAD;

    if( enLayer == VDP_LAYER_WBC_HD0)
    {
        if(u32Mode == VDP_WBC_PARA_ZME_HOR)
        {
            WBC_DHD0_HCOEFAD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_HCOEFAD.u32)));
            WBC_DHD0_HCOEFAD.bits.coef_addr = u32Addr;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_HCOEFAD.u32)), WBC_DHD0_HCOEFAD.u32); 
        }
        else if(u32Mode == VDP_WBC_PARA_ZME_VER)
        {
            WBC_DHD0_VCOEFAD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_VCOEFAD.u32)));
            WBC_DHD0_VCOEFAD.bits.coef_addr = u32Addr;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_VCOEFAD.u32)), WBC_DHD0_VCOEFAD.u32); 
        }
        else
        {
            HI_PRINT("Error,VDP_WBC_DHD0_SetZmeCoefAddr() Select a Wrong Mode!\n");
        }

    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {

        if(u32Mode == VDP_WBC_PARA_ZME_HOR)
        {
            GP0_HCOEFAD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_HCOEFAD.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_HCOEFAD.bits.coef_addr = u32Addr;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_HCOEFAD.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_HCOEFAD.u32); 
        }
        else if(u32Mode == VDP_WBC_PARA_ZME_VER)
        {
            GP0_VCOEFAD.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_VCOEFAD.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_VCOEFAD.bits.coef_addr = u32Addr;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_VCOEFAD.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_VCOEFAD.u32); 
        }
        else
        {
            HI_PRINT("Error,VDP_GP_SetZmeCoefAddr() Select a Wrong Mode!\n");
        }
    }
    return ;

}

HI_VOID  VDP_WBC_SetParaUpd (VDP_LAYER_WBC_E enLayer, VDP_WBC_PARA_E enMode)
{
    U_WBC_DHD0_PARAUP WBC_DHD0_PARAUP;
    U_GP0_PARAUP GP0_PARAUP;

    WBC_DHD0_PARAUP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_PARAUP.u32)));

    GP0_PARAUP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_PARAUP.u32) + WBC_GP0_SEL * GP_OFFSET));

    if( enLayer == VDP_LAYER_WBC_HD0)
    {

        if(enMode == VDP_WBC_PARA_ZME_HOR)
        {
            WBC_DHD0_PARAUP.bits.wbc_hcoef_upd = 0x1;
        }
        else if(enMode == VDP_WBC_PARA_ZME_VER)
        {
            WBC_DHD0_PARAUP.bits.wbc_vcoef_upd = 0x1;
        }
        else
        {
            HI_PRINT("error,VDP_WBC_DHD0_SetParaUpd() select wrong mode!\n");
        }

        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_PARAUP.u32)), WBC_DHD0_PARAUP.u32); 
        return ;
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        if(enMode == VDP_WBC_PARA_ZME_HOR)
        {
            GP0_PARAUP.bits.gp0_hcoef_upd = 0x1;
        }
        else if(enMode == VDP_WBC_PARA_ZME_VER)
        {
            GP0_PARAUP.bits.gp0_vcoef_upd = 0x1;
        }
        else
        {
            HI_PRINT("error,VDP_GP_SetParaUpd() select wrong mode!\n");
        }

        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_PARAUP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_PARAUP.u32); 
        return ;
    }
}

HI_VOID  VDP_WBC_SetSfifo (VDP_LAYER_WBC_E enLayer, HI_U32 u32Data )
{
    U_WBC_DHD0_SFIFO_CTRL WBC_DHD0_SFIFO_CTRL;

    WBC_DHD0_SFIFO_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_SFIFO_CTRL.u32)));
    if( enLayer == VDP_LAYER_WBC_HD0)
    {
        WBC_DHD0_SFIFO_CTRL.bits.sfifo_wr_thd = u32Data;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_SFIFO_CTRL.u32)), WBC_DHD0_SFIFO_CTRL.u32);
    }
}

HI_VOID VDP_WBC_SetZmeEnable  (VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable, HI_U32 u32firMode)
{
    U_WBC_DHD0_ZME_HSP WBC_DHD0_ZME_HSP;
    U_WBC_DHD0_ZME_VSP WBC_DHD0_ZME_VSP;
    U_GP0_ZME_HSP      GP0_ZME_HSP;
    U_GP0_ZME_VSP      GP0_ZME_VSP;

    /*WBC zoom enable */
    if(enLayer == VDP_LAYER_WBC_HD0 )
    {
        if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
            WBC_DHD0_ZME_HSP.bits.hlmsc_en = u32bEnable;
            WBC_DHD0_ZME_HSP.bits.hlfir_en = u32firMode;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_HORC)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
            WBC_DHD0_ZME_HSP.bits.hchmsc_en = u32bEnable;
            WBC_DHD0_ZME_HSP.bits.hchfir_en = u32firMode;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_NONL)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
            WBC_DHD0_ZME_HSP.bits.non_lnr_en = u32bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32);  
        }


        if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_VSP.bits.vlmsc_en = u32bEnable;
            WBC_DHD0_ZME_VSP.bits.vlfir_en = u32firMode;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_VSP.bits.vchmsc_en = u32bEnable;
            WBC_DHD0_ZME_VSP.bits.vchfir_en = u32firMode;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32); 
        }

    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        if((enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_HSP.bits.hsc_en = u32bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_VSP.bits.vsc_en = u32bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_VSP.u32); 
        }

        return ;
    }

    return ;

}


HI_VOID VDP_WBC_SetZmeEnableBack (VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode, HI_U32 u32bEnable)
{
    U_WBC_DHD0_ZME_HSP WBC_DHD0_ZME_HSP;
    U_WBC_DHD0_ZME_VSP WBC_DHD0_ZME_VSP;
    U_GP0_ZME_HSP      GP0_ZME_HSP;
    U_GP0_ZME_VSP      GP0_ZME_VSP;

    /*WBC zoom enable */
    if(enLayer == VDP_LAYER_WBC_HD0 )
    {
        if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
            WBC_DHD0_ZME_HSP.bits.hlmsc_en = u32bEnable;
            WBC_DHD0_ZME_HSP.bits.hlfir_en = 1;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_HORC)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_HSP.bits.hchmsc_en = u32bEnable;
            WBC_DHD0_ZME_HSP.bits.hchfir_en = 1;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_NONL)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
            WBC_DHD0_ZME_HSP.bits.non_lnr_en = u32bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32);  
        }


        if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_VSP.bits.vlmsc_en = u32bEnable;
            WBC_DHD0_ZME_VSP.bits.vlfir_en = 1;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_VSP.bits.vchmsc_en = u32bEnable;
            WBC_DHD0_ZME_VSP.bits.vchfir_en = 1;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32); 
        }

    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        if((enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_HSP.bits.hsc_en = u32bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_VSP.bits.vsc_en = u32bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_VSP.u32); 
        }

        return ;
    }

    return ;

}

/* Vou set zoom inital phase */
HI_VOID VDP_WBC_SetZmePhaseH(VDP_LAYER_WBC_E enLayer, HI_S32 s32PhaseL, HI_S32 s32PhaseC)
{    
    U_WBC_DHD0_ZME_HLOFFSET WBC_DHD0_ZME_HLOFFSET;
    U_WBC_DHD0_ZME_HCOFFSET WBC_DHD0_ZME_HCOFFSET;
    

    if (enLayer == VDP_LAYER_WBC_HD0 ) {        
        /* VHD layer zoom enable */
        WBC_DHD0_ZME_HLOFFSET.u32 = VDP_RegRead((HI_U32)(&pVdpReg->WBC_DHD0_ZME_HLOFFSET.u32));
        WBC_DHD0_ZME_HLOFFSET.bits.hor_loffset = s32PhaseL;
        VDP_RegWrite((HI_U32)(&pVdpReg->WBC_DHD0_ZME_HLOFFSET.u32), WBC_DHD0_ZME_HLOFFSET.u32); 
        
        WBC_DHD0_ZME_HCOFFSET.u32 = VDP_RegRead((HI_U32)(&pVdpReg->WBC_DHD0_ZME_HCOFFSET.u32));
        WBC_DHD0_ZME_HCOFFSET.bits.hor_coffset = s32PhaseC;
        VDP_RegWrite((HI_U32)(&pVdpReg->WBC_DHD0_ZME_HCOFFSET.u32), WBC_DHD0_ZME_HCOFFSET.u32); 

    } else if(enLayer == VDP_LAYER_WBC_GP0){   
    

    }
    
    return ;
}

/* Vou set zoom inital phase */
HI_VOID VDP_WBC_SetZmePhaseV(VDP_LAYER_WBC_E enLayer, HI_S32 s32PhaseL, HI_S32 s32PhaseC)
{    
    U_WBC_DHD0_ZME_VOFFSET WBC_DHD0_ZME_VOFFSET;

    if (enLayer == VDP_LAYER_WBC_HD0 ) {        
        /* VHD layer zoom enable */
        WBC_DHD0_ZME_VOFFSET.u32 = VDP_RegRead((HI_U32)(&pVdpReg->WBC_DHD0_ZME_VOFFSET.u32));
        WBC_DHD0_ZME_VOFFSET.bits.vluma_offset = s32PhaseL;
        VDP_RegWrite((HI_U32)(&pVdpReg->WBC_DHD0_ZME_VOFFSET.u32), WBC_DHD0_ZME_VOFFSET.u32); 
        
        WBC_DHD0_ZME_VOFFSET.u32 = VDP_RegRead((HI_U32)(&pVdpReg->WBC_DHD0_ZME_VOFFSET.u32));
        WBC_DHD0_ZME_VOFFSET.bits.vchroma_offset = s32PhaseC;
        VDP_RegWrite((HI_U32)(&pVdpReg->WBC_DHD0_ZME_VOFFSET.u32), WBC_DHD0_ZME_VOFFSET.u32); 

    } else if(enLayer == VDP_LAYER_WBC_GP0){   
    

    }
    
    return ;
}

/* Vou set zoom inital phase */
HI_VOID VDP_WBC_SetZmePhaseVB(VDP_LAYER_WBC_E enLayer, HI_S32 s32PhaseL, HI_S32 s32PhaseC)
{    
    U_WBC_DHD0_ZME_VBOFFSET WBC_DHD0_ZME_VBOFFSET;
    

    if (enLayer == VDP_LAYER_WBC_HD0 ) {        
        /* VHD layer zoom enable */
        WBC_DHD0_ZME_VBOFFSET.u32 = VDP_RegRead((HI_U32)(&pVdpReg->WBC_DHD0_ZME_VBOFFSET.u32));
        WBC_DHD0_ZME_VBOFFSET.bits.vbluma_offset = s32PhaseL;
        VDP_RegWrite((HI_U32)(&pVdpReg->WBC_DHD0_ZME_VBOFFSET.u32), WBC_DHD0_ZME_VBOFFSET.u32); 
        
        WBC_DHD0_ZME_VBOFFSET.u32 = VDP_RegRead((HI_U32)(&pVdpReg->WBC_DHD0_ZME_VBOFFSET.u32));
        WBC_DHD0_ZME_VBOFFSET.bits.vbchroma_offset = s32PhaseC;
        VDP_RegWrite((HI_U32)(&pVdpReg->WBC_DHD0_ZME_VBOFFSET.u32), WBC_DHD0_ZME_VBOFFSET.u32); 

    } else if(enLayer == VDP_LAYER_WBC_GP0){   
    

    }
    
    return ;
}




/* WBC set Median filter enable */
HI_VOID  VDP_WBC_SetMidEnable(VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode,HI_U32 bEnable)

{

    U_WBC_DHD0_ZME_HSP WBC_DHD0_ZME_HSP;
    U_WBC_DHD0_ZME_VSP WBC_DHD0_ZME_VSP;
    U_GP0_ZME_HSP      GP0_ZME_HSP;
    U_GP0_ZME_VSP      GP0_ZME_VSP;
    if(enLayer == VDP_LAYER_WBC_HD0 )
    {
        if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
            WBC_DHD0_ZME_HSP.bits.hlmid_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32);

        }

        if((enMode == VDP_ZME_MODE_HORC)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
            WBC_DHD0_ZME_HSP.bits.hchmid_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32);  
        }

        if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_VSP.bits.vlmid_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32);  
        }

        if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_VSP.bits.vchmid_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32);  
        }
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        if((enMode == VDP_ZME_MODE_ALPHA)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_HSP.bits.hamid_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HSP.u32); 
        }
        if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_HSP.bits.hlmid_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_HORC)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_HSP.bits.hchmid_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_ALPHAV)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_VSP.bits.vamid_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_VSP.u32); 
        }
        if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_VSP.bits.vlmid_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_VSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_VSP.bits.vchmid_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_VSP.u32); 
        }
    }
    return;

}

HI_VOID VDP_WBC_SetFirEnable(VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode, HI_U32 bEnable)
{
    U_WBC_DHD0_ZME_HSP WBC_DHD0_ZME_HSP;
    U_WBC_DHD0_ZME_VSP WBC_DHD0_ZME_VSP;
    U_GP0_ZME_HSP      GP0_ZME_HSP;
    U_GP0_ZME_VSP      GP0_ZME_VSP;
    
    if(enLayer == VDP_LAYER_WBC_HD0 )
    {
        if((enMode == VDP_ZME_MODE_HORL)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
            WBC_DHD0_ZME_HSP.bits.hlfir_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32);

        }

        if((enMode == VDP_ZME_MODE_HORC)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
            WBC_DHD0_ZME_HSP.bits.hchfir_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32);  
        }

        if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_VSP.bits.vlfir_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32);  
        }

        if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_VSP.bits.vchfir_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32);  
        }
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        if((enMode == VDP_ZME_MODE_ALPHA)||(enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_HSP.bits.hafir_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_HSP.bits.hfir_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_ALPHAV)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_VSP.bits.vafir_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_VSP.u32); 
        }

        if((enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_VSP.bits.vfir_en = bEnable;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_VSP.u32); 
        }
    }
     
     
    return ;
    
}


HI_VOID VDP_WBC_SetZmeVerTap(VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode, HI_U32 u32VerTap)

{
    U_WBC_DHD0_ZME_VSP WBC_DHD0_ZME_VSP;
    if(enLayer == VDP_LAYER_WBC_HD0 )
    {
        /*
        if ((enMode == VDP_ZME_MODE_VERL) || (enMode == VDP_ZME_MODE_VER) || (enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_VSP.bits.vsc_luma_tap = u32VerTap;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32);
        }
        */


        if ((enMode == VDP_ZME_MODE_VERC) || (enMode == VDP_ZME_MODE_VER) || (enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
            WBC_DHD0_ZME_VSP.bits.vsc_chroma_tap = u32VerTap;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32);
        }
    }

}

HI_VOID VDP_WBC_SetZmeHfirOrder(VDP_LAYER_WBC_E enLayer, HI_U32 u32HfirOrder)
{
    U_WBC_DHD0_ZME_HSP WBC_DHD0_ZME_HSP;    
    U_GP0_ZME_HSP      GP0_ZME_HSP;
    if(enLayer == VDP_LAYER_WBC_HD0 )
    {

        WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
        WBC_DHD0_ZME_HSP.bits.hfir_order = u32HfirOrder;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32); 
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET));
        GP0_ZME_HSP.bits.hfir_order = u32HfirOrder;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HSP.u32); 
    }
    return ;
}

HI_VOID VDP_WBC_SetZmeHorRatio(VDP_LAYER_WBC_E enLayer, HI_U32 u32Ratio)

{
    U_WBC_DHD0_ZME_HSP WBC_DHD0_ZME_HSP;
    U_GP0_ZME_HSP      GP0_ZME_HSP;
    if(enLayer == VDP_LAYER_WBC_HD0 )
    {
        WBC_DHD0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)));
        WBC_DHD0_ZME_HSP.bits.hratio = u32Ratio;

		//printk("WBC_DHD0_ZME_HSP =0x%x, ratio = 0x%x\n", WBC_DHD0_ZME_HSP.u32, u32Ratio);
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_HSP.u32)), WBC_DHD0_ZME_HSP.u32); 
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        GP0_ZME_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET));
        GP0_ZME_HSP.bits.hratio = u32Ratio;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HSP.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HSP.u32); 
    }
    return ;
}

HI_VOID  VDP_WBC_SetZmeInFmt(VDP_LAYER_WBC_E enLayer, VDP_PROC_FMT_E u32Fmt)
{
    U_WBC_DHD0_ZME_VSP WBC_DHD0_ZME_VSP;

    if(enLayer == VDP_LAYER_WBC_HD0 )
    {

        WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
        WBC_DHD0_ZME_VSP.bits.zme_in_fmt = u32Fmt;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32); 
    }

    return ;
}


HI_VOID  VDP_WBC_SetZmeOutFmt(VDP_LAYER_WBC_E enLayer, VDP_PROC_FMT_E u32Fmt)
{
   U_WBC_DHD0_ZME_VSP WBC_DHD0_ZME_VSP;

    if(enLayer == VDP_LAYER_WBC_HD0 )
    {
        WBC_DHD0_ZME_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)));
        WBC_DHD0_ZME_VSP.bits.zme_out_fmt = u32Fmt;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSP.u32)), WBC_DHD0_ZME_VSP.u32); 
    }

    return ;
}

HI_VOID  VDP_WBC_SetZmeVerRatio(VDP_LAYER_WBC_E enLayer, HI_U32 u32Ratio)
{
    U_WBC_DHD0_ZME_VSR WBC_DHD0_ZME_VSR;
    U_GP0_ZME_VSR        GP0_ZME_VSR;
    
    
    if(enLayer == VDP_LAYER_WBC_HD0 )
    {
        WBC_DHD0_ZME_VSR.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSR.u32)));
        WBC_DHD0_ZME_VSR.bits.vratio = u32Ratio;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VSR.u32)), WBC_DHD0_ZME_VSR.u32); 
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        GP0_ZME_VSR.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VSR.u32) + WBC_GP0_SEL * GP_OFFSET));
        GP0_ZME_VSR.bits.vratio = u32Ratio;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VSR.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_VSR.u32); 
    }
    return ;
}

HI_VOID  VDP_WBC_SetZmePhase    (VDP_LAYER_WBC_E enLayer, VDP_ZME_MODE_E enMode,HI_S32 s32Phase)
{
    U_WBC_DHD0_ZME_VOFFSET   WBC_DHD0_ZME_VOFFSET;
    U_WBC_DHD0_ZME_VBOFFSET  WBC_DHD0_ZME_VBOFFSET;
    U_GP0_ZME_HOFFSET        GP0_ZME_HOFFSET;
    U_GP0_ZME_VOFFSET        GP0_ZME_VOFFSET;
    
    if(enLayer == VDP_LAYER_WBC_HD0)
    {

        if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VOFFSET.u32)));
            WBC_DHD0_ZME_VOFFSET.bits.vluma_offset = s32Phase;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VOFFSET.u32)), WBC_DHD0_ZME_VOFFSET.u32); 
        }

        if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VOFFSET.u32)));
            WBC_DHD0_ZME_VOFFSET.bits.vchroma_offset = s32Phase;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VOFFSET.u32)), WBC_DHD0_ZME_VOFFSET.u32); 
        }

        if((enMode == VDP_ZME_MODE_VERB)||(enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VBOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VBOFFSET.u32)));
            WBC_DHD0_ZME_VBOFFSET.bits.vbluma_offset = s32Phase;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VBOFFSET.u32)), WBC_DHD0_ZME_VBOFFSET.u32); 
        }

        if((enMode == VDP_ZME_MODE_VERB)||(enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_ALL))
        {
            WBC_DHD0_ZME_VBOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VBOFFSET.u32)));
            WBC_DHD0_ZME_VBOFFSET.bits.vbchroma_offset = s32Phase;
            VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_ZME_VBOFFSET.u32)), WBC_DHD0_ZME_VBOFFSET.u32); 
        }
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        if((enMode == VDP_ZME_MODE_HORL) || (enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_HOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HOFFSET.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_HOFFSET.bits.hor_loffset = s32Phase;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HOFFSET.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HOFFSET.u32); 
        }

        if((enMode == VDP_ZME_MODE_HORC) || (enMode == VDP_ZME_MODE_HOR)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_HOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_HOFFSET.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_HOFFSET.bits.hor_coffset = s32Phase;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_HOFFSET.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_HOFFSET.u32); 
        }

        if((enMode == VDP_ZME_MODE_VERL)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VOFFSET.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_VOFFSET.bits.vbtm_offset = s32Phase;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VOFFSET.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_VOFFSET.u32); 
        }

        if((enMode == VDP_ZME_MODE_VERC)||(enMode == VDP_ZME_MODE_VER)||(enMode == VDP_ZME_MODE_ALL))
        {
            GP0_ZME_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_ZME_VOFFSET.u32) + WBC_GP0_SEL * GP_OFFSET));
            GP0_ZME_VOFFSET.bits.vtp_offset = s32Phase;
            VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_ZME_VOFFSET.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_ZME_VOFFSET.u32); 
        }
    }

    return ;
}

HI_VOID  VDP_WBC_SetCscEnable  (VDP_LAYER_WBC_E enLayer, HI_U32 enCSC)
{   
    U_WBC_DHD0_CSCIDC WBC_DHD0_CSCIDC;
    U_GP0_CSC_IDC     GP0_CSC_IDC;

    if(enLayer == VDP_LAYER_WBC_HD0)
    {

        WBC_DHD0_CSCIDC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CSCIDC.u32)));        
        WBC_DHD0_CSCIDC.bits.csc_en = enCSC;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CSCIDC.u32)), WBC_DHD0_CSCIDC.u32);
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {

        GP0_CSC_IDC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_IDC.u32) + WBC_GP0_SEL * GP_OFFSET));
        GP0_CSC_IDC.bits.csc_en = enCSC;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_IDC.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_CSC_IDC.u32); 

    }
    return ;
}

HI_VOID   VDP_WBC_SetCscDcCoef(VDP_LAYER_WBC_E enLayer,VDP_CSC_DC_COEF_S stCscCoef)
{   
    U_WBC_DHD0_CSCIDC WBC_DHD0_CSCIDC;
    U_WBC_DHD0_CSCODC WBC_DHD0_CSCODC;
    U_GP0_CSC_IDC  GP0_CSC_IDC;
    U_GP0_CSC_ODC  GP0_CSC_ODC;
    U_GP0_CSC_IODC GP0_CSC_IODC;
    
    if(enLayer == VDP_LAYER_WBC_HD0)
    {
        WBC_DHD0_CSCIDC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CSCIDC.u32)));
        
        WBC_DHD0_CSCIDC.bits.cscidc2 = stCscCoef.csc_in_dc2;
        WBC_DHD0_CSCIDC.bits.cscidc1 = stCscCoef.csc_in_dc1;
        WBC_DHD0_CSCIDC.bits.cscidc0 = stCscCoef.csc_in_dc0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CSCIDC.u32)), WBC_DHD0_CSCIDC.u32);

        WBC_DHD0_CSCODC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CSCODC.u32)));
        WBC_DHD0_CSCODC.bits.cscodc2 = stCscCoef.csc_out_dc2;
        WBC_DHD0_CSCODC.bits.cscodc1 = stCscCoef.csc_out_dc1;
        WBC_DHD0_CSCODC.bits.cscodc0 = stCscCoef.csc_out_dc0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CSCODC.u32)), WBC_DHD0_CSCODC.u32);
    }

    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        GP0_CSC_IDC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_IDC.u32) + WBC_GP0_SEL * GP_OFFSET));
        GP0_CSC_IDC.bits.cscidc1  = stCscCoef.csc_in_dc1;
        GP0_CSC_IDC.bits.cscidc0  = stCscCoef.csc_in_dc0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_IDC.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_CSC_IDC.u32); 

        GP0_CSC_ODC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_ODC.u32) + WBC_GP0_SEL * GP_OFFSET));
        GP0_CSC_ODC.bits.cscodc1 = stCscCoef.csc_out_dc1;
        GP0_CSC_ODC.bits.cscodc0 = stCscCoef.csc_out_dc0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_ODC.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_CSC_ODC.u32); 

        GP0_CSC_IODC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_IODC.u32) + WBC_GP0_SEL * GP_OFFSET));
        GP0_CSC_IODC.bits.cscodc2 = stCscCoef.csc_out_dc2;
        GP0_CSC_IODC.bits.cscidc2 = stCscCoef.csc_in_dc2;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_IODC.u32) + WBC_GP0_SEL * GP_OFFSET), GP0_CSC_IODC.u32); 
    }
    return ;
}

HI_VOID   VDP_WBC_SetCscCoef(VDP_LAYER_WBC_E enLayer,VDP_CSC_COEF_S stCscCoef)
{   
    U_WBC_DHD0_CSCP0        WBC_DHD0_CSCP0;
    U_WBC_DHD0_CSCP1        WBC_DHD0_CSCP1;
    U_WBC_DHD0_CSCP2        WBC_DHD0_CSCP2;
    U_WBC_DHD0_CSCP3        WBC_DHD0_CSCP3;
    U_WBC_DHD0_CSCP4        WBC_DHD0_CSCP4;
    U_GP0_CSC_P0            GP0_CSC_P0;
    U_GP0_CSC_P1            GP0_CSC_P1;
    U_GP0_CSC_P2            GP0_CSC_P2;
    U_GP0_CSC_P3            GP0_CSC_P3;
    U_GP0_CSC_P4            GP0_CSC_P4;


    if(enLayer == VDP_LAYER_WBC_HD0)
    {
        WBC_DHD0_CSCP0.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CSCP0.u32)));
        WBC_DHD0_CSCP0.bits.cscp00 = stCscCoef.csc_coef00;
        WBC_DHD0_CSCP0.bits.cscp01 = stCscCoef.csc_coef01;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CSCP0.u32)), WBC_DHD0_CSCP0.u32);

        WBC_DHD0_CSCP1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CSCP1.u32)));
        WBC_DHD0_CSCP1.bits.cscp02 = stCscCoef.csc_coef02;
        WBC_DHD0_CSCP1.bits.cscp10 = stCscCoef.csc_coef10;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CSCP1.u32)), WBC_DHD0_CSCP1.u32);

        WBC_DHD0_CSCP2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CSCP2.u32)));
        WBC_DHD0_CSCP2.bits.cscp11 = stCscCoef.csc_coef11;
        WBC_DHD0_CSCP2.bits.cscp12 = stCscCoef.csc_coef12;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CSCP2.u32)), WBC_DHD0_CSCP2.u32);

        WBC_DHD0_CSCP3.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CSCP3.u32)));
        WBC_DHD0_CSCP3.bits.cscp20 = stCscCoef.csc_coef20;
        WBC_DHD0_CSCP3.bits.cscp21 = stCscCoef.csc_coef21;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CSCP3.u32)), WBC_DHD0_CSCP3.u32);

        WBC_DHD0_CSCP4.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->WBC_DHD0_CSCP4.u32)));
        WBC_DHD0_CSCP4.bits.cscp22 = stCscCoef.csc_coef22;
        VDP_RegWrite((HI_U32)(&(pVdpReg->WBC_DHD0_CSCP4.u32)), WBC_DHD0_CSCP4.u32);
    }
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        GP0_CSC_P0.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_P0.u32)+WBC_GP0_SEL*GP_OFFSET));
        GP0_CSC_P0.bits.cscp00 = stCscCoef.csc_coef00;
        GP0_CSC_P0.bits.cscp01 = stCscCoef.csc_coef01;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_P0.u32)+WBC_GP0_SEL*GP_OFFSET), GP0_CSC_P0.u32);

        GP0_CSC_P1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_P1.u32)+WBC_GP0_SEL*GP_OFFSET));
        GP0_CSC_P1.bits.cscp02 = stCscCoef.csc_coef02;
        GP0_CSC_P1.bits.cscp10 = stCscCoef.csc_coef10;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_P1.u32)+WBC_GP0_SEL*GP_OFFSET), GP0_CSC_P1.u32);

        GP0_CSC_P2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_P2.u32)+WBC_GP0_SEL*GP_OFFSET));
        GP0_CSC_P2.bits.cscp11 = stCscCoef.csc_coef11;
        GP0_CSC_P2.bits.cscp12 = stCscCoef.csc_coef12;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_P2.u32)+WBC_GP0_SEL*GP_OFFSET), GP0_CSC_P2.u32);

        GP0_CSC_P3.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_P3.u32)+WBC_GP0_SEL*GP_OFFSET));
        GP0_CSC_P3.bits.cscp20 = stCscCoef.csc_coef20;
        GP0_CSC_P3.bits.cscp21 = stCscCoef.csc_coef21;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_P3.u32)+WBC_GP0_SEL*GP_OFFSET), GP0_CSC_P3.u32);

        GP0_CSC_P4.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->GP0_CSC_P4.u32)+WBC_GP0_SEL*GP_OFFSET));
        GP0_CSC_P4.bits.cscp22 = stCscCoef.csc_coef22;
        VDP_RegWrite((HI_U32)(&(pVdpReg->GP0_CSC_P4.u32)+WBC_GP0_SEL*GP_OFFSET), GP0_CSC_P4.u32);
    }    

}

HI_VOID VDP_WBC_SetCscMode( VDP_LAYER_WBC_E enLayer, VDP_CSC_MODE_E enCscMode)
{
#if 0
    VDP_CSC_COEF_S    st_csc_coef;
    VDP_CSC_DC_COEF_S st_csc_dc_coef;

    HI_U32 s32Pre   ;//= 1 << 10;
    HI_U32 s32DcPre ;//= 4;//1:8bit; 4:10bit

    if(enLayer == VDP_LAYER_WBC_HD0)
    {
        s32Pre   = 1 << 8;
        s32DcPre = 1;//1:8bit; 4:10bit
        if(enCscMode == VDP_CSC_RGB2YUV_601)
        {
            st_csc_coef.csc_coef00     = (HI_S32)(0.299  * s32Pre);
            st_csc_coef.csc_coef01     = (HI_S32)(0.587  * s32Pre);
            st_csc_coef.csc_coef02     = (HI_S32)(0.114  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(-0.172 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.339 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(0.511  * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(0.511  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(-0.428 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(-0.083 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = 0 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2RGB_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(    0  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(1.371  * s32Pre);

            st_csc_coef.csc_coef10     = (HI_S32)(     1 * s32Pre);
            st_csc_coef.csc_coef11     = (HI_S32)(-0.698 * s32Pre);
            st_csc_coef.csc_coef12     = (HI_S32)(-0.336 * s32Pre);

            st_csc_coef.csc_coef20     = (HI_S32)(    1  * s32Pre);
            st_csc_coef.csc_coef21     = (HI_S32)(1.732  * s32Pre);
            st_csc_coef.csc_coef22     = (HI_S32)(    0  * s32Pre);

            st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
            st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
            st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =  0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  0 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_RGB2YUV_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(0.213  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(0.715  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(0.072  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(-0.117 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.394 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.511 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)( 0.511 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(-0.464 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(-0.047 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = 0 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = 0 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 = 16  * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2RGB_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(    0  * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)(1.540  * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)(-0.183 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)(-0.459 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(    1  * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)(1.816  * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)(    0  * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 = 0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 = 0 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 = 0 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2YUV_709_601)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(-0.116 * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)( 0.208 * s32Pre);

        st_csc_coef.csc_coef10     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef11     = (HI_S32)( 1.017 * s32Pre);
        st_csc_coef.csc_coef12     = (HI_S32)( 0.114 * s32Pre);

        st_csc_coef.csc_coef20     = (HI_S32)(     0 * s32Pre);
        st_csc_coef.csc_coef21     = (HI_S32)( 0.075 * s32Pre);
        st_csc_coef.csc_coef22     = (HI_S32)( 1.025 * s32Pre);

        st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
        st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
        st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

        st_csc_dc_coef.csc_out_dc2 =   16 * s32DcPre;
        st_csc_dc_coef.csc_out_dc1 =  128 * s32DcPre;
        st_csc_dc_coef.csc_out_dc0 =  128 * s32DcPre;
    }
    else if(enCscMode == VDP_CSC_YUV2YUV_601_709)
    {
        st_csc_coef.csc_coef00     = (HI_S32)(     1 * s32Pre);
        st_csc_coef.csc_coef01     = (HI_S32)(-0.116 * s32Pre);
        st_csc_coef.csc_coef02     = (HI_S32)( 0.208 * s32Pre);

            st_csc_coef.csc_coef10     = (HI_S32)(     0 * s32Pre);
            st_csc_coef.csc_coef11     = (HI_S32)( 1.017 * s32Pre);
            st_csc_coef.csc_coef12     = (HI_S32)( 0.114 * s32Pre);

            st_csc_coef.csc_coef20     = (HI_S32)(     0 * s32Pre);
            st_csc_coef.csc_coef21     = (HI_S32)( 0.075 * s32Pre);
            st_csc_coef.csc_coef22     = (HI_S32)( 1.025 * s32Pre);

            st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
            st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
            st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

            st_csc_dc_coef.csc_out_dc2 =   16 * s32DcPre;
            st_csc_dc_coef.csc_out_dc1 =  128 * s32DcPre;
            st_csc_dc_coef.csc_out_dc0 =  128 * s32DcPre;
        }
        VDP_WBC_SetCscCoef  ( enLayer,st_csc_coef);
        VDP_WBC_SetCscDcCoef( enLayer,st_csc_dc_coef);
    } 
    else if(enLayer == VDP_LAYER_WBC_GP0)
    {
        s32Pre   = 1 << 10;
        s32DcPre = 4;//1:8bit; 4:10bit
        if(enCscMode == VDP_CSC_RGB2YUV_601)
        {
            st_csc_coef.csc_coef00     = (HI_S32)(0.299  * s32Pre);
            st_csc_coef.csc_coef01     = (HI_S32)(0.587  * s32Pre);
            st_csc_coef.csc_coef02     = (HI_S32)(0.114  * s32Pre);

            st_csc_coef.csc_coef10     = (HI_S32)(-0.172 * s32Pre);
            st_csc_coef.csc_coef11     = (HI_S32)(-0.339 * s32Pre);
            st_csc_coef.csc_coef12     = (HI_S32)(0.511  * s32Pre);

            st_csc_coef.csc_coef20     = (HI_S32)(0.511  * s32Pre);
            st_csc_coef.csc_coef21     = (HI_S32)(-0.428 * s32Pre);
            st_csc_coef.csc_coef22     = (HI_S32)(-0.083 * s32Pre);

            st_csc_dc_coef.csc_in_dc2  = 0 * s32DcPre;
            st_csc_dc_coef.csc_in_dc1  = 0 * s32DcPre;
            st_csc_dc_coef.csc_in_dc0  = 0 * s32DcPre;

            st_csc_dc_coef.csc_out_dc2 =  16 * s32DcPre;
            st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
            st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
        }
        else if(enCscMode == VDP_CSC_YUV2RGB_601)
        {
            st_csc_coef.csc_coef00     = (HI_S32)(    1  * s32Pre);
            st_csc_coef.csc_coef01     = (HI_S32)(    0  * s32Pre);
            st_csc_coef.csc_coef02     = (HI_S32)(1.371  * s32Pre);

            st_csc_coef.csc_coef10     = (HI_S32)(     1 * s32Pre);
            st_csc_coef.csc_coef11     = (HI_S32)(-0.698 * s32Pre);
            st_csc_coef.csc_coef12     = (HI_S32)(-0.336 * s32Pre);

            st_csc_coef.csc_coef20     = (HI_S32)(    1  * s32Pre);
            st_csc_coef.csc_coef21     = (HI_S32)(1.732  * s32Pre);
            st_csc_coef.csc_coef22     = (HI_S32)(    0  * s32Pre);

            st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
            st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
            st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

            st_csc_dc_coef.csc_out_dc2 =  0 * s32DcPre;
            st_csc_dc_coef.csc_out_dc1 =  0 * s32DcPre;
            st_csc_dc_coef.csc_out_dc0 =  0 * s32DcPre;
        }
        else if(enCscMode == VDP_CSC_RGB2YUV_709)
        {
            st_csc_coef.csc_coef00     = (HI_S32)(0.213  * s32Pre);
            st_csc_coef.csc_coef01     = (HI_S32)(0.715  * s32Pre);
            st_csc_coef.csc_coef02     = (HI_S32)(0.072  * s32Pre);

            st_csc_coef.csc_coef10     = (HI_S32)(-0.117 * s32Pre);
            st_csc_coef.csc_coef11     = (HI_S32)(-0.394 * s32Pre);
            st_csc_coef.csc_coef12     = (HI_S32)( 0.511 * s32Pre);

            st_csc_coef.csc_coef20     = (HI_S32)( 0.511 * s32Pre);
            st_csc_coef.csc_coef21     = (HI_S32)(-0.464 * s32Pre);
            st_csc_coef.csc_coef22     = (HI_S32)(-0.047 * s32Pre);

            st_csc_dc_coef.csc_in_dc2  = 0 * s32DcPre;
            st_csc_dc_coef.csc_in_dc1  = 0 * s32DcPre;
            st_csc_dc_coef.csc_in_dc0  = 0 * s32DcPre;

            st_csc_dc_coef.csc_out_dc2 = 16  * s32DcPre;
            st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
            st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
        }
        else if(enCscMode == VDP_CSC_YUV2RGB_709)
        {
            st_csc_coef.csc_coef00     = (HI_S32)(    1  * s32Pre);
            st_csc_coef.csc_coef01     = (HI_S32)(    0  * s32Pre);
            st_csc_coef.csc_coef02     = (HI_S32)(1.540  * s32Pre);

            st_csc_coef.csc_coef10     = (HI_S32)(     1 * s32Pre);
            st_csc_coef.csc_coef11     = (HI_S32)(-0.183 * s32Pre);
            st_csc_coef.csc_coef12     = (HI_S32)(-0.459 * s32Pre);

            st_csc_coef.csc_coef20     = (HI_S32)(    1  * s32Pre);
            st_csc_coef.csc_coef21     = (HI_S32)(1.816  * s32Pre);
            st_csc_coef.csc_coef22     = (HI_S32)(    0  * s32Pre);

            st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
            st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
            st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

            st_csc_dc_coef.csc_out_dc2 = 0 * s32DcPre;
            st_csc_dc_coef.csc_out_dc1 = 0 * s32DcPre;
            st_csc_dc_coef.csc_out_dc0 = 0 * s32DcPre;
        }
        else if(enCscMode == VDP_CSC_YUV2YUV_709_601)
        {
            st_csc_coef.csc_coef00     = (HI_S32)(     1 * s32Pre);
            st_csc_coef.csc_coef01     = (HI_S32)(-0.116 * s32Pre);
            st_csc_coef.csc_coef02     = (HI_S32)( 0.208 * s32Pre);

            st_csc_coef.csc_coef10     = (HI_S32)(     0 * s32Pre);
            st_csc_coef.csc_coef11     = (HI_S32)( 1.017 * s32Pre);
            st_csc_coef.csc_coef12     = (HI_S32)( 0.114 * s32Pre);

            st_csc_coef.csc_coef20     = (HI_S32)(     0 * s32Pre);
            st_csc_coef.csc_coef21     = (HI_S32)( 0.075 * s32Pre);
            st_csc_coef.csc_coef22     = (HI_S32)( 1.025 * s32Pre);

            st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
            st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
            st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

            st_csc_dc_coef.csc_out_dc2 =   16 * s32DcPre;
            st_csc_dc_coef.csc_out_dc1 =  128 * s32DcPre;
            st_csc_dc_coef.csc_out_dc0 =  128 * s32DcPre;
        }
        else if(enCscMode == VDP_CSC_YUV2YUV_601_709)
        {
            st_csc_coef.csc_coef00     = (HI_S32)(     1 * s32Pre);
            st_csc_coef.csc_coef01     = (HI_S32)(-0.116 * s32Pre);
            st_csc_coef.csc_coef02     = (HI_S32)( 0.208 * s32Pre);

            st_csc_coef.csc_coef10     = (HI_S32)(     0 * s32Pre);
            st_csc_coef.csc_coef11     = (HI_S32)( 1.017 * s32Pre);
            st_csc_coef.csc_coef12     = (HI_S32)( 0.114 * s32Pre);

            st_csc_coef.csc_coef20     = (HI_S32)(     0 * s32Pre);
            st_csc_coef.csc_coef21     = (HI_S32)( 0.075 * s32Pre);
            st_csc_coef.csc_coef22     = (HI_S32)( 1.025 * s32Pre);

            st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
            st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
            st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

            st_csc_dc_coef.csc_out_dc2 =   16 * s32DcPre;
            st_csc_dc_coef.csc_out_dc1 =  128 * s32DcPre;
            st_csc_dc_coef.csc_out_dc0 =  128 * s32DcPre;
        }
        else
        {
            st_csc_coef.csc_coef00     = 1 * s32Pre;
            st_csc_coef.csc_coef01     = 0 * s32Pre;
            st_csc_coef.csc_coef02     = 0 * s32Pre;

            st_csc_coef.csc_coef10     = 0 * s32Pre;
            st_csc_coef.csc_coef11     = 1 * s32Pre;
            st_csc_coef.csc_coef12     = 0 * s32Pre;

            st_csc_coef.csc_coef20     = 0 * s32Pre;
            st_csc_coef.csc_coef21     = 0 * s32Pre;
            st_csc_coef.csc_coef22     = 1 * s32Pre;

            st_csc_dc_coef.csc_in_dc2  = -16  * s32DcPre;
            st_csc_dc_coef.csc_in_dc1  = -128 * s32DcPre;
            st_csc_dc_coef.csc_in_dc0  = -128 * s32DcPre;

            st_csc_dc_coef.csc_out_dc2 =  16 * s32DcPre;
            st_csc_dc_coef.csc_out_dc1 = 128 * s32DcPre;
            st_csc_dc_coef.csc_out_dc0 = 128 * s32DcPre;
        }
        VDP_GP_SetCscCoef  (WBC_GP0_SEL,st_csc_coef);
        VDP_GP_SetCscDcCoef(WBC_GP0_SEL,st_csc_dc_coef);
    }
#endif

    return ;
}


//-------------------------------------------------------------------
//WBC_DHD0_END
HI_VOID VDP_DHD_DEFAULT(HI_VOID)
{
    //U_DHD0_CTRL DHD0_CTRL;
    //U_DHD1_CTRL DHD1_CTRL;
    U_DHD0_SYNC_INV DHD0_SYNC_INV;
    U_DHD1_SYNC_INV DHD1_SYNC_INV;

    DHD0_SYNC_INV.u32 = 0x2000;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_SYNC_INV.u32)), DHD0_SYNC_INV.u32); 

#if 0
    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->DHD0_CTRL.u32));
    DHD0_CTRL.bits.intf_en = 1;//0x8d0f8000;//0x8ad20011;
    DHD0_CTRL.bits.fp_en   = 0;//0x8d0f8000;//0x8ad20011;
    DHD0_CTRL.bits.regup   = 1;//0x8d0f8000;//0x8ad20011;    
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)), DHD0_CTRL.u32); 
#endif

    DHD1_SYNC_INV.u32 = 0x2000;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD1_SYNC_INV.u32)), DHD1_SYNC_INV.u32); 

#if 0
    DHD1_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->DHD1_CTRL.u32));
    DHD1_CTRL.bits.intf_en = 1;//0x8d0f8000;//0x8ad20011;
    DHD1_CTRL.bits.fp_en   = 0;//0x8d0f8000;//0x8ad20011;
    DHD1_CTRL.bits.regup   = 1;//0x8d0f8000;//0x8ad20011;    
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD1_CTRL.u32)), DHD1_CTRL.u32); 
#endif

}

HI_VOID VDP_VID_ZME_DEFAULT(HI_VOID)
{
    U_V0_VSP V0_VSP;
    V0_VSP.u32 = 0xc0080000;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32)), V0_VSP.u32); 
}

HI_VOID VDP_DHD_DEBUG_DEFAULT(HI_U32 width)
{
    U_DHD0_CTRL DHD0_CTRL;
    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->DHD0_CTRL.u32));
    DHD0_CTRL.bits.fpga_lmt_en = 0x1;
    DHD0_CTRL.bits.fpga_lmt_width = width /16;
    DHD0_CTRL.bits.regup = 0x1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)), DHD0_CTRL.u32); 
}

HI_VOID VDP_DHD_SetDispMode(HI_U32 u32Data,VDP_DATA_RMODE_E dispMode)
{
    U_DHD0_CTRL DHD0_CTRL;
    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->DHD0_CTRL.u32));
    if(dispMode == VDP_RMODE_PROGRESSIVE)
    {
        DHD0_CTRL.bits.iop = 0x1;
    }
    else
    {
        DHD0_CTRL.bits.iop = 0x0;
    }
    VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)), DHD0_CTRL.u32); 
}


HI_U32 VDP_DHD_GetDispMode(HI_U32 u32Data)
{
    U_DHD0_CTRL DHD0_CTRL;
    DHD0_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->DHD0_CTRL.u32));

    return DHD0_CTRL.bits.iop;
}

HI_U32 VDP_WBC_GetAlwaysProFlag(/*DISP_WBC_E enLayer,*/ HI_BOOL *bAlwaysPro)
{
    *bAlwaysPro = 0;
    return HI_SUCCESS;
}

HI_VOID VDP_MIXV_SetPrio(HI_U32 prioLayer)
{
    U_MIXV0_MIX          MIXV0_MIX;
    MIXV0_MIX.u32 = VDP_RegRead((HI_U32)&(pVdpReg->MIXV0_MIX.u32));
    if(prioLayer == VDP_LAYER_VID0)
    {
        MIXV0_MIX.bits.mixer_prio0= 0x1;
    }
    else
    {
        MIXV0_MIX.bits.mixer_prio0= 0x2;
    }
    VDP_RegWrite((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)), MIXV0_MIX.u32); 
}
HI_VOID VDP_MIXV_SetPrio1(HI_U32 prioLayer)
{
    U_MIXV0_MIX          MIXV0_MIX;
    MIXV0_MIX.u32 = VDP_RegRead((HI_U32)&(pVdpReg->MIXV0_MIX.u32));
    if(prioLayer == VDP_LAYER_VID0)
    {
        MIXV0_MIX.bits.mixer_prio1= 0x1;
    }
    else
    {
        MIXV0_MIX.bits.mixer_prio1= 0x2;
    }
    VDP_RegWrite((HI_U32)(&(pVdpReg->MIXV0_MIX.u32)), MIXV0_MIX.u32); 

}
#if 0
HI_VOID  VDP_VID_SetLayerBkgColor    (HI_U32 u32Data, HI_U32 stBkg)
{
    U_V0_BK    V0_BK;
    
    V0_BK.u32 = stBkg;
    switch(u32Data)
    {
        case  1://VDP_LAYER_VID0
            VDP_RegWrite((HI_U32)(&(pVdpReg->V0_BK.u32)), V0_BK.u32);
            break;
        case  2://VDP_LAYER_VP0
            VDP_RegWrite((HI_U32)(&(pVdpReg->VP0_BK.u32)), V0_BK.u32);
        case  3://VDP_CBM_MIX0
            VDP_RegWrite((HI_U32)&(pVdpReg->CBM_BKG1.u32), V0_BK.u32); 
        case  4://MIXV0
            VDP_RegWrite((HI_U32)&(pVdpReg->MIXV0_BKG.u32), V0_BK.u32); 
        default:
            return;
    }
}
#endif
HI_U32 VDP_DISP_GetMaskIntSta(HI_U32 u32intmask)
{
    U_VOMSKINTSTA VOMSKINTSTA;

    if (!pVdpReg)
    {
        HI_PRINT("pVdpReg is is a null\n");
		VOMSKINTSTA.u32 = 0;
    }
    else
    {
        /* read interrupt status */
        VOMSKINTSTA.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->VOMSKINTSTA.u32)));;
    }
    
    return (VOMSKINTSTA.u32 & u32intmask);
}


HI_VOID  VDP_VID_SetInDataUVOrder(HI_U32 u32Data, HI_U32  VFirst)
{
    U_V0_CTRL V0_CTRL;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetInDataFmt() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET));
    V0_CTRL.bits.uv_order = VFirst;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_CTRL.u32) + u32Data * VID_OFFSET), V0_CTRL.u32); 

    return ;
}

//-------------------------------------------------------------------
// HDATE/SDATE CONFIG
HI_VOID VDP_DATE_SetEnable(DISP_VENC_E eDate,HI_U32 enable)
{
    if (DISP_VENC_HDATE0 == eDate)
    {
        U_HDATE_EN HDATE_EN;

        HDATE_EN.u32 = 0;
        HDATE_EN.bits.hd_en = enable;
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_EN.u32), HDATE_EN.u32); 
    }
    
    if (DISP_VENC_SDATE0 == eDate)
    {

    }
}

HI_VOID VDP_DATE_SetDACDET(DISP_VENC_E enDate,HI_DRV_DISP_FMT_E enFmt)
{
    U_HDATE_DACDET1      HDATE_DACDET1 ;
    U_HDATE_DACDET2      HDATE_DACDET2;
    U_DATE_DACDET1       DATE_DACDET1;
    U_DATE_DACDET2       DATE_DACDET2;

    HDATE_DACDET1.u32 = VDP_RegRead((HI_U32)&(pVdpReg->HDATE_DACDET1.u32));
    HDATE_DACDET2.u32 =  VDP_RegRead((HI_U32)&(pVdpReg->HDATE_DACDET2.u32));
    DATE_DACDET1.u32  = VDP_RegRead((HI_U32)&(pVdpReg->DATE_DACDET1.u32));
    DATE_DACDET2.u32  =  VDP_RegRead((HI_U32)&(pVdpReg->DATE_DACDET2.u32));

    switch(enFmt)
    {
        case HI_DRV_DISP_FMT_1080P_60:
            /*
                HACT : 281 -2200
                VFB  : 1122-1125
                VBB  : 6   - 41
                VPW  : 1 -5
            */
            HDATE_DACDET1.bits.vdac_det_high =0x3FF ;
            HDATE_DACDET1.bits.det_line = 0x12;
            HDATE_DACDET2.bits.det_pixel_sta= 1000;
            HDATE_DACDET2.bits.det_pixel_wid = 100;
            
            break;
        case HI_DRV_DISP_FMT_1080P_50:
            /*
                HACT : 721 -2640
                VFB  : 1122-1125
                VBB  : 6   - 41
                VPW  : 1 -5
            */
            HDATE_DACDET1.bits.vdac_det_high =0x3FF ;
            HDATE_DACDET1.bits.det_line = 0x12;
            HDATE_DACDET2.bits.det_pixel_sta= 1000;
            HDATE_DACDET2.bits.det_pixel_wid = 100;
           
            break;
        case HI_DRV_DISP_FMT_1080P_30:
            /*
                HACT : 720 -2640
                VFB  : 1122-1125
                VBB  : 6   - 41
                VPW  : 1 -5
            */
            HDATE_DACDET1.bits.vdac_det_high =0x3FF ;
            HDATE_DACDET1.bits.det_line = 0x12;
            HDATE_DACDET2.bits.det_pixel_sta= 1000;
            HDATE_DACDET2.bits.det_pixel_wid = 100;
           
            break;
         case HI_DRV_DISP_FMT_1080P_25:
            /*
                HACT : 830 -2200
                VFB  : 1122-1125
                VBB  : 6   - 41
                VPW  : 1 -5
            */
            HDATE_DACDET1.bits.vdac_det_high = 0x3FF ;
            HDATE_DACDET1.bits.det_line = 0x12;
            HDATE_DACDET2.bits.det_pixel_sta= 1000;
            HDATE_DACDET2.bits.det_pixel_wid = 100;
           
            break;
         case HI_DRV_DISP_FMT_1080P_24:
            /*
                HACT : 280 -2750
                VFB  : 1122-1125
                VBB  : 6   - 41
                VPW  : 1 -5
            */
            HDATE_DACDET1.bits.vdac_det_high =0x3FF ;
            HDATE_DACDET1.bits.det_line = 0x12;
            HDATE_DACDET2.bits.det_pixel_sta= 1000;
            HDATE_DACDET2.bits.det_pixel_wid = 100;
           
            break;
        case HI_DRV_DISP_FMT_1080i_60:
            /*
                HACT : 281 -2200
                VFB  : 1124-1125
                VBB  : 6   - 20
                VPW  : 1 -5
            */
            HDATE_DACDET1.bits.vdac_det_high =0x3FF ;
            HDATE_DACDET1.bits.det_line = 0x12;
            HDATE_DACDET2.bits.det_pixel_sta= 1000;
            HDATE_DACDET2.bits.det_pixel_wid = 100;
            break;
            
        case HI_DRV_DISP_FMT_1080i_50:
            /*
                HACT : 721 -2640
                VFB  : 1124-1125
                VBB  : 6   - 20
                VPW  : 1 -5
            */
            HDATE_DACDET1.bits.vdac_det_high =0x3FF ;
            HDATE_DACDET1.bits.det_line = 18;
            HDATE_DACDET2.bits.det_pixel_sta= 1000;
            HDATE_DACDET2.bits.det_pixel_wid = 50;
            break;
        case HI_DRV_DISP_FMT_720P_60:
            /*
                HACT : 371 -1650
                VFB  : 746 - 750
                VBB  : 6   - 25
                VPW  : 1 -5
            */
            HDATE_DACDET1.bits.vdac_det_high =0x3FF ;
            HDATE_DACDET1.bits.det_line = 0x12;
            HDATE_DACDET2.bits.det_pixel_sta= 1000;
            HDATE_DACDET2.bits.det_pixel_wid = 100;
            break;
        case HI_DRV_DISP_FMT_720P_50:
            /*
                HACT : 701 -1980
                VFB  : 746 - 750
                VBB  : 6   - 25
                VPW  : 1 -5
            */
            HDATE_DACDET1.bits.vdac_det_high =0x3FF ;
            HDATE_DACDET1.bits.det_line = 0x12;
            HDATE_DACDET2.bits.det_pixel_sta= 1000;
            HDATE_DACDET2.bits.det_pixel_wid = 100;
            break;
        case HI_DRV_DISP_FMT_576P_50:
            /*
                HACT : 145 - 864
                VFB  : 621 - 625
                VBB  : 6   - 44
                VPW  : 1 -5
            */
            HDATE_DACDET1.bits.vdac_det_high =0x3FF ;
            HDATE_DACDET1.bits.det_line = 0x12;
            HDATE_DACDET2.bits.det_pixel_sta= 600;
            HDATE_DACDET2.bits.det_pixel_wid = 100;
           
            break;
        case HI_DRV_DISP_FMT_480P_60:
             /*
                HACT : 139 - 858
                VFB  : 523 - 525,525 - 6
                VBB  : 13   - 42
                VPW  : 7 -12
            */
            HDATE_DACDET1.bits.vdac_det_high =0x3FF ;
            HDATE_DACDET1.bits.det_line = 0x12;
            HDATE_DACDET2.bits.det_pixel_sta= 600;
            HDATE_DACDET2.bits.det_pixel_wid = 100;
            
            break;
         case HI_DRV_DISP_FMT_PAL ... HI_DRV_DISP_FMT_SECAM_H:
            DATE_DACDET1.bits.vdac_det_high =0x3FF ;
            DATE_DACDET1.bits.det_line = 10;
            DATE_DACDET2.bits.det_pixel_sta= 0x118;
            DATE_DACDET2.bits.det_pixel_wid = 100;
            break;
         case HI_DRV_DISP_FMT_1080P_24_FP:
         case HI_DRV_DISP_FMT_720P_60_FP:
         case HI_DRV_DISP_FMT_720P_50_FP:
            /*when frame pack timing close dac*/
            HDATE_DACDET1.bits.vdac_det_high =0 ;
            HDATE_DACDET1.bits.det_line = 0;
            HDATE_DACDET2.bits.det_pixel_sta= 0;
            HDATE_DACDET2.bits.det_pixel_wid = 0;
            break;
        default :
           
            break;
    }
    VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_DACDET1.u32), HDATE_DACDET1.u32); 
    VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_DACDET2.u32), HDATE_DACDET2.u32); 
    VDP_RegWrite((HI_U32)&(pVdpReg->DATE_DACDET1.u32), DATE_DACDET1.u32); 
    VDP_RegWrite((HI_U32)&(pVdpReg->DATE_DACDET2.u32), DATE_DACDET2.u32); 
}

HI_VOID VDP_DATE_SetDACDetEn(DISP_VENC_E enDate, HI_U32 enable)
{
    U_HDATE_DACDET2      HDATE_DACDET2;
    U_DATE_DACDET2       DATE_DACDET2;
    
    HDATE_DACDET2.u32 =  VDP_RegRead((HI_U32)&(pVdpReg->HDATE_DACDET2.u32));
    DATE_DACDET2.u32  =  VDP_RegRead((HI_U32)&(pVdpReg->DATE_DACDET2.u32));
    
    if (DISP_VENC_HDATE0 == enDate)
    {
        HDATE_DACDET2.bits.vdac_det_en = enable;
    }
    else if (DISP_VENC_SDATE0 == enDate)
    {
        DATE_DACDET2.bits.vdac_det_en = enable;
    }
    else //vga
    {
        //no set vga
    }
    VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_DACDET2.u32), HDATE_DACDET2.u32); 
    VDP_RegWrite((HI_U32)&(pVdpReg->DATE_DACDET2.u32), DATE_DACDET2.u32); 
}

#define DISP_DATE_SRC_COEF_INDEX_DEFAULT 0
#define DISP_DATE_SRC_COEF_INDEX_480P  1
#define DISP_DATE_SRC_COEF_INDEX_576P  1
#define DISP_DATE_SRC_COEF_INDEX_720P  2
#define DISP_DATE_SRC_COEF_INDEX_1080I 2
#define DISP_DATE_SRC_COEF_INDEX_1080P 3

static HI_U32 u32aDATESrc13Coef[][18]=
{
{0x00000000, 0x07fb07fe, 0x00080000, 0x07f107ff, 0x00190001, 0x07d807ff, 0x00420000, 0x07870003,
 0x015207ee, 0x01520224, 0x078707ee, 0x00420003, 0x07d80000, 0x001907ff, 0x07f10001, 0x000807ff, 
 0x07fb0000, 0x000007fe
},
{0x0      ,  0x7fb07fe,  0x80000  ,  0x7f107ff,  0x190001 ,  0x7d807ff,  0x420000 ,  0x7870003, 
 0x15207ee,  0x1520224,  0x78707ee,  0x420003 ,  0x7d80000,  0x1907ff ,  0x7f10001,  0x807ff  , 
 0x7fb0000,  0x7fe    ,
},
{0x00010000, 0x07fd0000, 0x00070000, 0x07f30000, 0x00160000, 0x07db0000, 0x003d07ff, 0x078e0003, 
 0x014c07f2, 0x014c0218, 0x078e07f2, 0x003d0003, 0x07db07ff, 0x00160000, 0x07f30000, 0x00070000,
 0x07fd0000, 0x00010000
},
{
/*0x0      ,  0x7ff0000,  0x30000  ,  0x7f807ff,  0x120003 ,  0x7dc07fb,  0x440006 ,  0x77a07fd, 
 0x15a07e6,  0x15a0234,  0x77a07e6,  0x4407fd ,  0x7dc0006,  0x1207fb ,  0x7f80003,  0x307ff  , 
 0x7ff0000,  0x0      ,*/
 0x0      ,  0x7fe07fd,  0x60004,    0x7f207fa,  0x1b0009 ,  0x7d007f6,  0x530009 ,  0x76807ff,
 0x16407d8,  0x164024e,  0x76807d8,  0x5307ff ,  0x7d00009,  0x1b07f6 ,  0x7f20009,  0x607fa,
 0x7fe0004,  0x7fd,
},
};

/*
请组织回归验证下，谢谢。
himm 0xf8ccf2c8 0x1f07e8
himm 0xf8ccf2cc 0x1f01f2
himm 0xf8ccf2d0 0x7e8
himm 0xf8ccf2d4 0x7b6000b
himm 0xf8ccf2d8 0x13f013f
himm 0xf8ccf2dc 0xb07b6
 -24   31  498   31  -24    0 
  11  -74  319  319  -74   11 
CVBS 上翘 0.6dB
CVBS
0.5：-0.1
1：0.3
2：0
3：0
4：-0.1
4.8：-0.3
5.8：-0.4
*/
static HI_U32 u32aSDDATESrcCoef[]=
{ 0x1f07e8,  0x1f01f2,  0x7e8,   0x7b6000b,  0x13f013f,  0xb07b6};




HI_VOID VDP_DATE_SetSrcCoef(DISP_VENC_E eDate, HI_U32 *pu32Src13)
{
    HI_U32 *pu32Src13tmp = pu32Src13;
    
    if (DISP_VENC_HDATE0 == eDate)
    {
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF1.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF2.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF3.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF4.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF5.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF6.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF7.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF8.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF9.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF10.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF11.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF12.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF13.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF14.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF15.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF16.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF17.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_SRC_13_COEF18.u32), *pu32Src13tmp++); 
    }
    else if (DISP_VENC_SDATE0 == eDate)
    {
        VDP_RegWrite((HI_U32)&(pVdpReg->DATE_COEFF50.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->DATE_COEFF51.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->DATE_COEFF52.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->DATE_COEFF53.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->DATE_COEFF54.u32), *pu32Src13tmp++); 
        VDP_RegWrite((HI_U32)&(pVdpReg->DATE_COEFF55.u32), *pu32Src13tmp++); 
    }
}


HI_BOOL  SDATE_Setc_gain(HI_U32 u32Data)
{
    volatile U_DATE_COEFF1 DATE_COEFF1;

    DATE_COEFF1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DATE_COEFF1.u32)));   
    DATE_COEFF1.bits.c_gain = u32Data; 
    VDP_RegWrite((HI_U32)(&(pVdpReg->DATE_COEFF1.u32)), DATE_COEFF1.u32); 

    return HI_TRUE;
}

HI_VOID VDP_DATE_ResetFmt(DISP_VENC_E eDate, HI_DRV_DISP_FMT_E enFmt)
{
    if (DISP_VENC_HDATE0 == eDate)
    {
        U_HDATE_VIDEO_FORMAT HDATE_VIDEO_FORMAT;
        U_HDATE_OUT_CTRL     HDATE_OUT_CTRL;
	
        VDP_RegWrite((HI_U32)(&(pVdpReg->HDATE_POLA_CTRL.u32)), 0x03ul); 
        
        switch(enFmt)
        {
            case HI_DRV_DISP_FMT_1080P_60:
            case HI_DRV_DISP_FMT_1080P_50:
                HDATE_VIDEO_FORMAT.u32 = 0x000000a3;
                VDP_DATE_SetSrcCoef(eDate, u32aDATESrc13Coef[DISP_DATE_SRC_COEF_INDEX_1080P]);
                break;
            case HI_DRV_DISP_FMT_1080i_50:
                /* to resolve vsync for 1080i_50 */
                VDP_RegWrite((HI_U32)(&(pVdpReg->HDATE_POLA_CTRL.u32)), 0x05ul); 
            case HI_DRV_DISP_FMT_1080i_60:
                HDATE_VIDEO_FORMAT.u32 = 0x000000a4;
                VDP_DATE_SetSrcCoef(eDate, u32aDATESrc13Coef[DISP_DATE_SRC_COEF_INDEX_1080I]);
                break;
            case HI_DRV_DISP_FMT_720P_60:
            case HI_DRV_DISP_FMT_720P_50:
                HDATE_VIDEO_FORMAT.u32 = 0x000000a2;
                VDP_DATE_SetSrcCoef(eDate, u32aDATESrc13Coef[DISP_DATE_SRC_COEF_INDEX_720P]);
                break;
            case HI_DRV_DISP_FMT_576P_50:
                HDATE_VIDEO_FORMAT.u32 = 0x000000a1;
                VDP_DATE_SetSrcCoef(eDate, u32aDATESrc13Coef[DISP_DATE_SRC_COEF_INDEX_576P]);
                break;
            case HI_DRV_DISP_FMT_480P_60:
                HDATE_VIDEO_FORMAT.u32 = 0x000000a0;
                VDP_DATE_SetSrcCoef(eDate, u32aDATESrc13Coef[DISP_DATE_SRC_COEF_INDEX_480P]);
                break;
            default :
                HDATE_VIDEO_FORMAT.u32 = 0x000000a2;
                VDP_DATE_SetSrcCoef(eDate, u32aDATESrc13Coef[DISP_DATE_SRC_COEF_INDEX_DEFAULT]);
                break;
        }
        VDP_RegWrite((HI_U32)(&(pVdpReg->HDATE_VIDEO_FORMAT.u32)), HDATE_VIDEO_FORMAT.u32); 


        HDATE_OUT_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->HDATE_OUT_CTRL.u32));

        HDATE_OUT_CTRL.bits.src_ctrl = 2;
        HDATE_OUT_CTRL.bits.sync_lpf_en = 1;
        
        //HDATE_OUT_CTRL.u32 = HDATE_OUT_CTRL.u32 | 0x1000;
        HDATE_OUT_CTRL.bits.video1_sel = 2;
        HDATE_OUT_CTRL.bits.video2_sel = 3;
        HDATE_OUT_CTRL.bits.video3_sel = 1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->HDATE_OUT_CTRL.u32)), HDATE_OUT_CTRL.u32); 

        // DTS2012080100525 : some sony46 TV can not accept 576P50 siganl correctly
        {
            U_HDATE_CLIP HDATE_CLIP;  // new add

            HDATE_CLIP.u32 = 0;

            // 20 x clk_pix + 4 x clk_dis, now clk_pix = 2*clk_dis for HDATE_OUT_CTRL.bits.src_ctrl = 2
            HDATE_CLIP.bits.clip_bb = 80;
            HDATE_CLIP.bits.clip_fb = 8;
            HDATE_CLIP.bits.clip_disable = 0;
            HDATE_CLIP.bits.clip_thdl = 251;
            VDP_RegWrite((HI_U32)(&(pVdpReg->HDATE_CLIP.u32)), HDATE_CLIP.u32); 
        }

    }

    if (DISP_VENC_SDATE0 == eDate)
    {
        U_DATE_COEFF0 DATE_COEFF0;
        U_DATE_COEFF21 DATE_COEFF21;
        
        switch(enFmt)
        {
            case HI_DRV_DISP_FMT_PAL:
            case HI_DRV_DISP_FMT_PAL_B:
            case HI_DRV_DISP_FMT_PAL_B1:
            case HI_DRV_DISP_FMT_PAL_D:
            case HI_DRV_DISP_FMT_PAL_D1:
            case HI_DRV_DISP_FMT_PAL_G:
            case HI_DRV_DISP_FMT_PAL_H:
            case HI_DRV_DISP_FMT_PAL_K:
            case HI_DRV_DISP_FMT_PAL_I:
                //DATE_COEFF0.u32  = 0x628412dc;
                DATE_COEFF0.u32  = 0x6a8452dc;
                break;
            case HI_DRV_DISP_FMT_PAL_N:
                DATE_COEFF0.u32  = 0x6a8852dc;
                break;

            case HI_DRV_DISP_FMT_PAL_Nc:
                DATE_COEFF0.u32  = 0x6a9052dc;
                break;

            case HI_DRV_DISP_FMT_SECAM_SIN:      /**< SECAM_SIN*/
                DATE_COEFF0.u32  = 0x6aa052dc;
                break;

            case HI_DRV_DISP_FMT_SECAM_COS:      /**< SECAM_COS*/
                DATE_COEFF0.u32  = 0x6ae052dc;
                break;

            //NTSC
            case HI_DRV_DISP_FMT_PAL_M:
                DATE_COEFF0.u32  = 0x449050dc;
                break;

            case HI_DRV_DISP_FMT_PAL_60:
                DATE_COEFF0.u32  = 0x44a050dc;
                break;

            case HI_DRV_DISP_FMT_NTSC:
                DATE_COEFF0.u32  = 0x048450dc;
                break;
            case HI_DRV_DISP_FMT_NTSC_J:
                DATE_COEFF0.u32  = 0x248450dc;
                break;
                
            case HI_DRV_DISP_FMT_NTSC_443:
                DATE_COEFF0.u32  = 0x04a450dc;
                break;
            default :
                DATE_COEFF0.u32  = 0x628412dc;
                break;
        }

        VDP_DATE_SetSrcCoef(eDate, u32aSDDATESrcCoef);

        // delay time of luma and chroma is too much, set luma_dl tobe zero.
        DATE_COEFF0.bits.luma_dl = 0;

        // close pbpr low pass filter for standard test
        DATE_COEFF0.bits.pbpr_lpf_en = 0;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DATE_COEFF0.u32)), DATE_COEFF0.u32); 
        SDATE_Setc_gain(1);

        // to get good SCH parameters, set video_phase_delta as 0x9A
        VDP_RegWrite((HI_U32)(&(pVdpReg->DATE_COEFF22.u32)), 0x9a); 


        DATE_COEFF21.u32 = VDP_RegRead((HI_U32)&(pVdpReg->DATE_COEFF21.u32));
        DATE_COEFF21.bits.dac0_in_sel = 1;
        DATE_COEFF21.bits.dac1_in_sel = 2;
        DATE_COEFF21.bits.dac2_in_sel = 4;
        DATE_COEFF21.bits.dac3_in_sel = 3;
        DATE_COEFF21.bits.dac4_in_sel = 5;
        DATE_COEFF21.bits.dac5_in_sel = 6;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DATE_COEFF21.u32)), DATE_COEFF21.u32); 

    }
}
#if 1
HI_VOID VDP_DATE_SetSignal(HI_DRV_DISP_INTF_ID_E enIntfId,DISP_VENC_E eDate, HI_BOOL bRGBSync)
{
    //TODO SELECT RGB or YPbPr   and sync mode
    if (HI_DRV_DISP_INTF_YPBPR0 == enIntfId)
    {
        if (DISP_VENC_HDATE0 ==  eDate )
        {
            U_HDATE_VIDEO_FORMAT HDATE_VIDEO_FORMAT;
            /**/
            HDATE_VIDEO_FORMAT.u32 = VDP_RegRead((HI_U32)&(pVdpReg->HDATE_VIDEO_FORMAT.u32));

            HDATE_VIDEO_FORMAT.bits.csc_ctrl = 0;/*YCbCr－>YPbPr*/
            HDATE_VIDEO_FORMAT.bits.video_out_ctrl = 1;/*YPbPr insight sync*/
            HDATE_VIDEO_FORMAT.bits.sync_add_ctrl = 2; /*default : sync on G/Y */
            VDP_RegWrite((HI_U32)(&(pVdpReg->HDATE_VIDEO_FORMAT.u32)), HDATE_VIDEO_FORMAT.u32);
        }
        else if (DISP_VENC_SDATE0 == eDate )
        {
            U_DATE_COEFF0 DATE_COEFF0;

            DATE_COEFF0.u32 = VDP_RegRead((HI_U32)&(pVdpReg->DATE_COEFF0.u32));
            /*0: yuv   1: rgb*/
            DATE_COEFF0.bits.rgb_en = 0;/* yuv*/

            DATE_COEFF0.bits.sync_mode_sel =   0;
            /*1:no sync 
                0:sync_mode_sel is 
            */
            DATE_COEFF0.bits.sync_mode_scart = 0;
            VDP_RegWrite((HI_U32)(&(pVdpReg->DATE_COEFF0.u32)), DATE_COEFF0.u32);
        }
        else
        {/*VGA do nothing
           */
        }

    }
    if (HI_DRV_DISP_INTF_RGB0 == enIntfId)
    {
        if (DISP_VENC_HDATE0 == eDate )
        {
            U_HDATE_VIDEO_FORMAT HDATE_VIDEO_FORMAT;
            /**/
            HDATE_VIDEO_FORMAT.u32 = VDP_RegRead((HI_U32)&(pVdpReg->HDATE_VIDEO_FORMAT.u32));
            HDATE_VIDEO_FORMAT.bits.csc_ctrl = 1;/*YCbCr—>RGB ITU-R BT709*/
            HDATE_VIDEO_FORMAT.bits.video_out_ctrl = 0;/*RGB sync in*/
            
            if (!bRGBSync)
                HDATE_VIDEO_FORMAT.bits.sync_add_ctrl = 0; /*no sync*/
            else
                HDATE_VIDEO_FORMAT.bits.sync_add_ctrl = 2; /*default : sync on G/Y */
            VDP_RegWrite((HI_U32)(&(pVdpReg->HDATE_VIDEO_FORMAT.u32)), HDATE_VIDEO_FORMAT.u32);
        }
        else if (DISP_VENC_SDATE0 == eDate )
        {
            U_DATE_COEFF0 DATE_COEFF0;
            /*0: yuv   1: rgb*/
            DATE_COEFF0.bits.rgb_en = 1;

             if (!bRGBSync)
            {
                DATE_COEFF0.bits.sync_mode_scart = 1;
                DATE_COEFF0.bits.sync_mode_sel =   0;
            }
            else
            {
                DATE_COEFF0.bits.sync_mode_scart = 0;
                DATE_COEFF0.bits.sync_mode_sel =   1;
            }

        }
    }
}
#endif


#if 0
static HI_U32 s_HDateSignal[HI_DRV_DISP_VDAC_SIGNAL_BUTT] = 
{0, 0, 2, 3, 1, 0, 0, 2, 3, 1, 2};
static HI_U32 s_SDateSignal[HI_DRV_DISP_VDAC_SIGNAL_BUTT] = 
{0, 1, 2, 3, 4, 5, 6, 2, 3, 4, 2};

HI_VOID VDP_DATE_SetOutput(DISP_VENC_E eDate, HI_U32 id, HI_DRV_DISP_VDAC_SIGNAL_E signal)
{
    if (DISP_VENC_HDATE0 == eDate)
    {
        U_HDATE_OUT_CTRL HDATE_OUT_CTRL;

        HDATE_OUT_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->V0_CTRL.u32));
        switch (id)
        {
            case 0:
                HDATE_OUT_CTRL.bits.video1_sel = s_HDateSignal[signal];
                break;
            case 1:
                HDATE_OUT_CTRL.bits.video2_sel = s_HDateSignal[signal];
                break;
            case 2:
                HDATE_OUT_CTRL.bits.video3_sel = s_HDateSignal[signal];
                break;
            default : 
                return;
        }

        VDP_RegWrite((HI_U32)&(pVdpReg->HDATE_EN.u32), HDATE_OUT_CTRL.u32); 
    }
    
    if (DISP_VENC_SDATE0 == eDate)
    {
        U_DATE_COEFF21 DATE_COEFF21;

        DATE_COEFF21.u32 = VDP_RegRead((HI_U32)&(pVdpReg->DATE_COEFF21.u32));
        switch (id)
        {
            case 0:
                DATE_COEFF21.bits.dac0_in_sel = s_SDateSignal[signal];
                break;
            case 1:
                DATE_COEFF21.bits.dac1_in_sel = s_SDateSignal[signal];
                break;
            case 2:
                DATE_COEFF21.bits.dac2_in_sel = s_SDateSignal[signal];
                break;
            case 3:
                DATE_COEFF21.bits.dac3_in_sel = s_SDateSignal[signal];
                break;
            case 4:
                DATE_COEFF21.bits.dac4_in_sel = s_SDateSignal[signal];
                break;
            case 5:
                DATE_COEFF21.bits.dac5_in_sel = s_SDateSignal[signal];
                break;
            default : 
                return;
        }
        VDP_RegWrite((HI_U32)(&(pVdpReg->DATE_COEFF21.u32)), DATE_COEFF21.u32); 
    }
}
#endif

#define VDAC_CTRL_ISO_RCT_VALUE 0x00004000ul
#define VDAC_CTRL_EN_RCT_VALUE  0x00008000ul


HI_VOID VDP_VDAC_ResetCRG(HI_VOID)
{
    U_PERI_CRG71 PERI_CRG71TMP;

    PERI_CRG71TMP.u32 = g_pstRegCrg->PERI_CRG71.u32;

    //#define VDAC_SYSCTRL_RESET_VALUE 0x000010F3ul
    //g_pstRegCrg->PERI_CRG71.u32 = VDAC_SYSCTRL_RESET_VALUE;
    PERI_CRG71TMP.bits.vdac_rct_cken    = 1;
    PERI_CRG71TMP.bits.vdac_bg_cken     = 1;
    PERI_CRG71TMP.bits.vdac_c_srst_req  = 1;
    PERI_CRG71TMP.bits.vdac_r_srst_req  = 1;
    PERI_CRG71TMP.bits.vdac_g_srst_req  = 1;
    PERI_CRG71TMP.bits.vdac_b_srst_req  = 1;
    PERI_CRG71TMP.bits.vdac_bg_clk_div  = 1;
    PERI_CRG71TMP.bits.vdac_c_clk_pctrl = 0;
    PERI_CRG71TMP.bits.vdac_r_clk_pctrl = 0;
    PERI_CRG71TMP.bits.vdac_g_clk_pctrl = 0;
    PERI_CRG71TMP.bits.vdac_b_clk_pctrl = 0;

    g_pstRegCrg->PERI_CRG71.u32 = PERI_CRG71TMP.u32;
}


#define VDAC_CTRL_ENBG_AND_TRIM_RESET_VALUE1  0x94c00000ul
HI_VOID VDP_VDAC_Reset(HI_VOID)
{
    HI_U32 ctrlv;

    /*give a reset to the vdac */    
    //g_pstRegCrg->PERI_CRG71.u32 = VDAC_SYSCTRL_RESET_VALUE;
    VDP_VDAC_ResetCRG();

    /*
    0xF8CC0120  0x00004000 //common block(29\14) iso控制寄存器默认为0；
    //0xF8CC0130  0x10000000 //c channel (28)
    //0xF8CC0134  0x10000000 //r channel (28)
    //0xF8CC0138  0x10000000 //g channel (28)
    //0xF8CC013c  0x10000000 //b channel (28)
    */
    ctrlv = VDAC_CTRL_ISO_RCT_VALUE;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_CTRL.u32)), ctrlv); 
    
    /*
    0xF8CC0120   0xa0004000 // enable bg (31\29\14) 
   // 0xF8CC0120   0x80004000 //release iso (31\14)  delay more than 10ms
    0xF8CC0120   0x8000c000 // enable rct (31\15\14) 
    0xF8CC0120   0x80008000 //release iso (31\15) delay 1us 
    */
    ctrlv = VDAC_CTRL_ISO_RCT_VALUE | VDAC_CTRL_ENBG_AND_TRIM_RESET_VALUE1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_CTRL.u32)), ctrlv); 
    //VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_CTRL.u32)), 0x80004000); 
    DISP_MSLEEP(10);

    ctrlv = VDAC_CTRL_ISO_RCT_VALUE | VDAC_CTRL_EN_RCT_VALUE | VDAC_CTRL_ENBG_AND_TRIM_RESET_VALUE1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_CTRL.u32)), ctrlv); 

    ctrlv = VDAC_CTRL_EN_RCT_VALUE | VDAC_CTRL_ENBG_AND_TRIM_RESET_VALUE1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_CTRL.u32)), ctrlv); 
    DISP_MSLEEP(1);

    VDP_RegWrite((HI_U32)(&(pVdpReg->VO_MUX_DAC.u32)), 0); 

    DISP_WARN("=========VDAC_DRIVER_Initial====\n");

    return;    
}


#define X5HD2_VDAC0_MASK_RESET_OVER   0xFFE3ul
#define X5HD2_VDAC0_MASK_RESET        0x10ul

#define X5HD2_VDAC1_MASK_RESET_OVER   0xFFD3ul
#define X5HD2_VDAC1_MASK_RESET        0x20ul

#define X5HD2_VDAC2_MASK_RESET_OVER   0xFFB3ul
#define X5HD2_VDAC2_MASK_RESET        0x40ul

#define X5HD2_VDAC3_MASK_RESET_OVER   0xFF73ul
#define X5HD2_VDAC3_MASK_RESET        0x80ul

#define FILTER_100M    0x0
#define FILTER_50M    0x2
#define FILTER_30M    0x3

#define X5HD2_VDACX_FILTER_OFFSET   25

#define VDECX_MODE_TV    0x0
#define VDECX_MODE_VGA    0x1

#define X5HD2_VDACX_MODE_C_OFFSET   27

HI_VOID VDP_VDAC_SetReset(HI_U32 uVdac, HI_BOOL bReset)
{
    U_PERI_CRG71 PERI_CRG71Tmp;

    PERI_CRG71Tmp.u32 = g_pstRegCrg->PERI_CRG71.u32;
    
    switch(uVdac)
    {
        case 0:
            PERI_CRG71Tmp.bits.vdac_c_srst_req = (bReset == HI_TRUE) ? 1 : 0;
            break;
        case 1:
            PERI_CRG71Tmp.bits.vdac_r_srst_req = (bReset == HI_TRUE) ? 1 : 0;
            break;
            
        case 2:            
            PERI_CRG71Tmp.bits.vdac_g_srst_req = (bReset == HI_TRUE) ? 1 : 0;
            break;
        case 3:
            PERI_CRG71Tmp.bits.vdac_b_srst_req = (bReset == HI_TRUE) ? 1 : 0;
            break;
        default:
            return;
    }

    g_pstRegCrg->PERI_CRG71.u32 = PERI_CRG71Tmp.u32;
    return;
}


HI_VOID VDP_VDAC_ResetFmt(DISP_VENC_E enVenc ,HI_U32 uVdac, HI_DRV_DISP_FMT_E enFmt)
{
    HI_U32 vdacvalue = 0x0ul;

    /*1:
        VGA format               100MHz;
        1080p,                  100MHz;
        720P 1080I,             50MHz;
        PAL,NTSC,               30MHz;
       */
    if (enFmt <= HI_DRV_DISP_FMT_1080P_50)
    {
        vdacvalue = (FILTER_100M<<X5HD2_VDACX_FILTER_OFFSET);
    }
    else if  (enFmt <= HI_DRV_DISP_FMT_480P_60) 
    {
         vdacvalue = (FILTER_50M<<X5HD2_VDACX_FILTER_OFFSET);
    }
    else if (enFmt <= HI_DRV_DISP_FMT_SECAM_H)
    {
         vdacvalue = (FILTER_30M<<X5HD2_VDACX_FILTER_OFFSET);
    }
    else if (enFmt <= HI_DRV_DISP_FMT_720P_50_FP)
    {
         vdacvalue = (FILTER_100M<<X5HD2_VDACX_FILTER_OFFSET);
    }
    else 
    {   /*lcd format*/
         vdacvalue = (FILTER_100M<<X5HD2_VDACX_FILTER_OFFSET);
    }
    
    /*
        2:select mode TV/VGA
    */
     if (enVenc == DISP_VENC_VGA0)
    {
         vdacvalue |= (VDECX_MODE_VGA <<X5HD2_VDACX_MODE_C_OFFSET);
    }
    else 
    {   /*lcd format*/
         vdacvalue |= (VDECX_MODE_TV <<X5HD2_VDACX_MODE_C_OFFSET);
    }

    // set vdac crg reset state
    VDP_VDAC_SetReset(uVdac, HI_TRUE);
        
    switch(uVdac)
    {
        case 0:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC0_MASK_RESET;            
            VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_C_CTRL.u32)), vdacvalue);             
            break;

        case 1:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC1_MASK_RESET;
            VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_R_CTRL.u32)), vdacvalue); 
            break;
            
        case 2:            
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC2_MASK_RESET;
            VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_G_CTRL.u32)), vdacvalue); 
            
            break;
        case 3:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC3_MASK_RESET;
            VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_B_CTRL.u32)), vdacvalue); 
            
            break;
        default:
            return;
    }


    return;
}
/*
    DAC （ 0x0）。

    0x0： （SDATE）；
    0x1： Y/R （SDATE）；
    0x2： Cb/G （SDATE）；
    0x3： Cr/B （SDATE）；
    0x4： Y/R （HDATE）；
    0x5： Cb/G （HDATE）；
    0x6： Cr/B （HDATE）；
    0x7：VGA   R；
    0x8：VGA   G；
    0x9：VGA   B。
*/
static HI_U32 s_VDACLink[3][HI_DRV_DISP_VDAC_SIGNAL_BUTT] = 
{/*0  1  2  3  4     5  6  7  8  9    10*/
    {4, 4, 4, 5, 6,    4, 4, 4, 5, 6,    4},/*HDATE0*/
    {0, 0, 1, 2, 3,    0, 0, 1, 2, 3,    0},/*SDATE0*/
    {7, 7, 7, 7, 7,    7, 7, 7, 8, 9,    7},/*VGA0*/
};


HI_VOID VDP_VDAC_SetLink(DISP_VENC_E eDate, HI_U32 uVdac, HI_DRV_DISP_VDAC_SIGNAL_E signal)
{
    U_VO_MUX_DAC VO_MUX_DAC;
//    U_DATE_COEFF21 DATE_COEFF21;

    // set vdac crg reset state
    VDP_VDAC_SetReset(uVdac, HI_TRUE);

    VO_MUX_DAC.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_MUX_DAC.u32));
    switch (uVdac)
    {
        case 0:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC0_MASK_RESET;
            VO_MUX_DAC.bits.dac0_sel = s_VDACLink[eDate][signal];            
            break;
        case 1:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC1_MASK_RESET;
            VO_MUX_DAC.bits.dac1_sel = s_VDACLink[eDate][signal];
            break;
            
        case 2:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC2_MASK_RESET;
            VO_MUX_DAC.bits.dac2_sel = s_VDACLink[eDate][signal];
            break;
            
        case 3:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC3_MASK_RESET;
            VO_MUX_DAC.bits.dac3_sel = s_VDACLink[eDate][signal];
            break;
            
        default : 
            return;
    }

    VDP_RegWrite((HI_U32)(&(pVdpReg->VO_MUX_DAC.u32)), VO_MUX_DAC.u32);
#if 0
    /*set  s-video*/
    if ((HI_DRV_DISP_VDAC_SV_Y == signal ) || (HI_DRV_DISP_VDAC_SV_C == signal ))
    {
        DATE_COEFF21.u32 = VDP_RegRead((HI_U32)&(pVdpReg->DATE_COEFF21.u32));
        switch (uVdacId)
        {
            case 0:
                DATE_COEFF21.bits.dac0_in_sel = (HI_DRV_DISP_VDAC_SV_Y == signal ) ? 5 : 6;
                break;
            case 1:
                DATE_COEFF21.bits.dac1_in_sel = (HI_DRV_DISP_VDAC_SV_Y == signal ) ? 5 : 6;
                break;
            case 2:
                DATE_COEFF21.bits.dac2_in_sel = (HI_DRV_DISP_VDAC_SV_Y == signal ) ? 5 : 6;
                break;
            case 3:
                DATE_COEFF21.bits.dac3_in_sel = (HI_DRV_DISP_VDAC_SV_Y == signal ) ? 5 : 6;
                break;
            default :
                return;
        }
        VDP_RegWrite((HI_U32)(&(pVdpReg->VO_MUX_DAC.u32)), VO_MUX_DAC.u32);
    }
    #endif
    return;
}

HI_VOID VDP_VDAC_SetEnable(HI_U32 uVdac, HI_U32 enable)
{
    U_VO_DAC_C_CTRL VO_DAC_C_CTRL;
    U_VO_DAC_R_CTRL VO_DAC_R_CTRL;
    U_VO_DAC_G_CTRL VO_DAC_G_CTRL;
    U_VO_DAC_B_CTRL VO_DAC_B_CTRL;


    // set vdac crg reset state
    VDP_VDAC_SetReset(uVdac, HI_TRUE);

    switch (uVdac)
    {
        case 0:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC0_MASK_RESET;
            if (enable)
            {
                VO_DAC_C_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_C_CTRL.u32));
                VO_DAC_C_CTRL.bits.en_c = 1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_C_CTRL.u32)), VO_DAC_C_CTRL.u32); 

                VO_DAC_C_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_C_CTRL.u32));
                VO_DAC_C_CTRL.bits.en_buf_c = 1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_C_CTRL.u32)), VO_DAC_C_CTRL.u32); 

                //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 & X5HD2_VDAC0_MASK_RESET_OVER;
            }
            else
            {
                VO_DAC_C_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_C_CTRL.u32));
                VO_DAC_C_CTRL.bits.en_buf_c = 0;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_C_CTRL.u32)), VO_DAC_C_CTRL.u32); 

                VO_DAC_C_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_C_CTRL.u32));
                VO_DAC_C_CTRL.bits.en_c = 0;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_C_CTRL.u32)), VO_DAC_C_CTRL.u32); 
            }
            break;
        case 1:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC1_MASK_RESET;
            if (enable)
            {
                VO_DAC_R_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_R_CTRL.u32));
                VO_DAC_R_CTRL.bits.en_r = 1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_R_CTRL.u32)), VO_DAC_R_CTRL.u32); 

                VO_DAC_R_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_R_CTRL.u32));
                VO_DAC_R_CTRL.bits.en_buf_r = 1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_R_CTRL.u32)), VO_DAC_R_CTRL.u32); 

                //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 & X5HD2_VDAC1_MASK_RESET_OVER;
            }
            else
            {
                VO_DAC_R_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_R_CTRL.u32));
                VO_DAC_R_CTRL.bits.en_buf_r = 0;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_R_CTRL.u32)), VO_DAC_R_CTRL.u32); 

                VO_DAC_R_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_R_CTRL.u32));
                VO_DAC_R_CTRL.bits.en_r = 0;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_R_CTRL.u32)), VO_DAC_R_CTRL.u32); 
            }
            break;
        case 2:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC2_MASK_RESET;
            if (enable)
            {
                VO_DAC_G_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_G_CTRL.u32));
                VO_DAC_G_CTRL.bits.en_g = 1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_G_CTRL.u32)), VO_DAC_G_CTRL.u32); 

                VO_DAC_G_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_G_CTRL.u32));
                VO_DAC_G_CTRL.bits.en_buf_g = 1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_G_CTRL.u32)), VO_DAC_G_CTRL.u32); 

                //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 & X5HD2_VDAC2_MASK_RESET_OVER;
            }
            else
            {
                VO_DAC_G_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_G_CTRL.u32));
                VO_DAC_G_CTRL.bits.en_buf_g = 0;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_G_CTRL.u32)), VO_DAC_G_CTRL.u32); 

                VO_DAC_G_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_G_CTRL.u32));
                VO_DAC_G_CTRL.bits.en_g = 0;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_G_CTRL.u32)), VO_DAC_G_CTRL.u32); 
            }
            break;
        case 3:
            //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 | X5HD2_VDAC3_MASK_RESET;
            if (enable)
            {
                VO_DAC_B_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_B_CTRL.u32));
                VO_DAC_B_CTRL.bits.en_b = 1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_B_CTRL.u32)), VO_DAC_B_CTRL.u32); 

                VO_DAC_B_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_B_CTRL.u32));
                VO_DAC_B_CTRL.bits.en_buf_b = 1;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_B_CTRL.u32)), VO_DAC_B_CTRL.u32); 

                //g_pstRegCrg->PERI_CRG71.u32 = g_pstRegCrg->PERI_CRG71.u32 & X5HD2_VDAC3_MASK_RESET_OVER;
            }
            else
            {
                VO_DAC_B_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_B_CTRL.u32));
                VO_DAC_B_CTRL.bits.en_buf_b = 0;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_B_CTRL.u32)), VO_DAC_B_CTRL.u32); 

                VO_DAC_B_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_B_CTRL.u32));
                VO_DAC_B_CTRL.bits.en_b = 0;
                VDP_RegWrite((HI_U32)(&(pVdpReg->VO_DAC_B_CTRL.u32)), VO_DAC_B_CTRL.u32); 
            }
            break;
        default :
            break;

    }

    if (enable)
    {
        // clear vdac crg reset state
        VDP_VDAC_SetReset(uVdac, HI_FALSE);
   }


    return;
}

HI_VOID VDP_VDAC_GetEnable(HI_U32 uVdac, HI_U32 *penable)
{
    U_VO_DAC_C_CTRL VO_DAC_C_CTRL;
    U_VO_DAC_R_CTRL VO_DAC_R_CTRL;
    U_VO_DAC_G_CTRL VO_DAC_G_CTRL;
    U_VO_DAC_B_CTRL VO_DAC_B_CTRL;

    switch (uVdac)
    {
        case 0:
            VO_DAC_C_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_C_CTRL.u32));
            *penable = (VO_DAC_C_CTRL.bits.en_c & VO_DAC_C_CTRL.bits.en_buf_c);
            break;
        case 1:
        
            VO_DAC_R_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_R_CTRL.u32));
            *penable = (VO_DAC_R_CTRL.bits.en_r & VO_DAC_R_CTRL.bits.en_buf_r);
            break;
        case 2:
            VO_DAC_G_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_G_CTRL.u32));
            *penable = (VO_DAC_G_CTRL.bits.en_g & VO_DAC_G_CTRL.bits.en_buf_g);
            break;
        case 3:
            VO_DAC_B_CTRL.u32 = VDP_RegRead((HI_U32)&(pVdpReg->VO_DAC_B_CTRL.u32));
            *penable = (VO_DAC_B_CTRL.bits.en_b & VO_DAC_B_CTRL.bits.en_buf_b);
            break;
        default :
            break;
    }
    return;
}

HI_VOID VDP_VDAC_SetClockEnable(HI_U32 uVdac, HI_U32 enable)
{
    U_PERI_CRG54 PERI_CRG54Tmp;

    PERI_CRG54Tmp.u32 = g_pstRegCrg->PERI_CRG54.u32;
    switch(uVdac)
    {
        case 0:
            PERI_CRG54Tmp.bits.vdac_ch0_cken = (enable == HI_TRUE)? 1 : 0;
            break;
        case 1:
            PERI_CRG54Tmp.bits.vdac_ch1_cken = (enable == HI_TRUE)? 1 : 0;
            break;
        case 2:
            PERI_CRG54Tmp.bits.vdac_ch2_cken = (enable == HI_TRUE)? 1 : 0;
            break;
        case 3:
            PERI_CRG54Tmp.bits.vdac_ch3_cken = (enable == HI_TRUE)? 1 : 0;
            break;
        default:
            break;
    }    

    g_pstRegCrg->PERI_CRG54.u32 = PERI_CRG54Tmp.u32;

    return;
}


//-------------------------------------------------------------------
// VIDEO LAYER CONFIG
HI_VOID  VDP_VID_SetInReso2(HI_U32 u32Data, HI_RECT_S *pstRect, HI_RECT_S *pstRectOrigin)
{
    U_V0_IRESO V0_IRESO;

    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetInReso() Select Wrong Video Layer ID\n");
        return ;
    }

    V0_IRESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_IRESO.u32) + u32Data * VID_OFFSET));
    V0_IRESO.bits.iw = pstRect->s32Width - 1;
    V0_IRESO.bits.ih = pstRect->s32Height - 1;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_IRESO.u32) + u32Data * VID_OFFSET), V0_IRESO.u32); 

    return ;
}
 
HI_VOID  VDP_VID_SetOutReso2(HI_U32 u32Data, HI_RECT_S *pstRect)
{
    U_V0_ORESO V0_ORESO;

   if(u32Data >= VID_MAX)
   {
       HI_PRINT("Error,VDP_VID_SetOutReso() Select Wrong Video Layer ID\n");
       return ;
   }
   
   //VDP_RegWrite((HI_U32)(&(pVdpReg->V0_ORESO.u32) + u32Data * VID_OFFSET), V0_ORESO.u32); 
   V0_ORESO.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_ORESO.u32) + u32Data * VID_OFFSET));
   V0_ORESO.bits.ow = pstRect->s32Width - 1;
   V0_ORESO.bits.oh = pstRect->s32Height - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->V0_ORESO.u32) + u32Data * VID_OFFSET), V0_ORESO.u32); 

   return ;
}   
    
HI_VOID  VDP_VID_SetVideoPos2(HI_U32 u32Data, HI_RECT_S *pstRect)
{
   U_V0_VFPOS V0_VFPOS;
   U_V0_VLPOS V0_VLPOS;

   if(u32Data >= VID_MAX)
   {
       HI_PRINT("Error,VDP_VID_SetVideoPos() Select Wrong Video Layer ID\n");
       return ;
   }
  
   /*video position */ 
   V0_VFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VFPOS.u32) + u32Data * VID_OFFSET));
   V0_VFPOS.bits.video_xfpos = pstRect->s32X;
   V0_VFPOS.bits.video_yfpos = pstRect->s32Y;
   VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VFPOS.u32) + u32Data * VID_OFFSET), V0_VFPOS.u32); 
   
   V0_VLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VLPOS.u32) + u32Data * VID_OFFSET));
   V0_VLPOS.bits.video_xlpos = pstRect->s32X + pstRect->s32Width - 1;
   V0_VLPOS.bits.video_ylpos = pstRect->s32Y + pstRect->s32Height - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VLPOS.u32) + u32Data * VID_OFFSET), V0_VLPOS.u32); 
   return ;
}   
    
HI_VOID  VDP_VID_SetDispPos2(HI_U32 u32Data, HI_RECT_S *pstRect)
{
   U_V0_DFPOS V0_DFPOS;
   U_V0_DLPOS V0_DLPOS;

   if(u32Data >= VID_MAX)
   {
       HI_PRINT("Error,VDP_VID_SetDispPos() Select Wrong Video Layer ID\n");
       return ;
   }   
  
   /*video position */ 
   V0_DFPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_DFPOS.u32) + u32Data * VID_OFFSET));
   V0_DFPOS.bits.disp_xfpos = pstRect->s32X;
   V0_DFPOS.bits.disp_yfpos = pstRect->s32Y;
   VDP_RegWrite((HI_U32)(&(pVdpReg->V0_DFPOS.u32) + u32Data * VID_OFFSET), V0_DFPOS.u32); 
   
   V0_DLPOS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_DLPOS.u32) + u32Data * VID_OFFSET));
   V0_DLPOS.bits.disp_xlpos = pstRect->s32X + pstRect->s32Width - 1;
   V0_DLPOS.bits.disp_ylpos = pstRect->s32Y + pstRect->s32Height - 1;
   VDP_RegWrite((HI_U32)(&(pVdpReg->V0_DLPOS.u32) + u32Data * VID_OFFSET), V0_DLPOS.u32); 
   return ;
}   

HI_VOID  VDP_VID_SetZmeEnable2(HI_U32 u32Data, HI_U32 u32bEnable)
{
    U_V0_HSP V0_HSP;
    U_V0_VSP V0_VSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeEnable() Select Wrong Video Layer ID\n");
        return ;
    }
    
    /* VHD layer zoom enable */
    V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
    V0_HSP.bits.hlmsc_en  = u32bEnable;
    V0_HSP.bits.hchmsc_en = u32bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 
    
    V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
    V0_VSP.bits.vlmsc_en  = u32bEnable;
    V0_VSP.bits.vchmsc_en = u32bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 

    return ;
}

/* Vou set zoom inital phase */
HI_VOID  VDP_VID_SetZmePhaseH(HI_U32 u32Data, HI_S32 s32PhaseL, HI_S32 s32PhaseC)
{
    U_V0_HLOFFSET  V0_HLOFFSET;
    U_V0_HCOFFSET  V0_HCOFFSET;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmePhase() Select Wrong Video Layer ID\n");
        return ;
    }
    
    /* VHD layer zoom enable */
    V0_HLOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HLOFFSET.u32) + u32Data * VID_OFFSET));
    V0_HLOFFSET.bits.hor_loffset = s32PhaseL;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HLOFFSET.u32) + u32Data * VID_OFFSET), V0_HLOFFSET.u32); 

    V0_HCOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HCOFFSET.u32) + u32Data * VID_OFFSET));
    V0_HCOFFSET.bits.hor_coffset = s32PhaseC;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HCOFFSET.u32) + u32Data * VID_OFFSET), V0_HCOFFSET.u32); 


    return ;
}

HI_VOID  VDP_VID_SetZmePhaseV(HI_U32 u32Data, HI_S32 s32PhaseL, HI_S32 s32PhaseC)
{
    U_V0_VOFFSET   V0_VOFFSET;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmePhase() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_VOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VOFFSET.u32) + u32Data * VID_OFFSET));
    V0_VOFFSET.bits.vluma_offset   = s32PhaseL;
    V0_VOFFSET.bits.vchroma_offset = s32PhaseC;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VOFFSET.u32) + u32Data * VID_OFFSET), V0_VOFFSET.u32); 

    return ;
}

HI_VOID  VDP_VID_SetZmePhaseVB(HI_U32 u32Data, HI_S32 s32PhaseL, HI_S32 s32PhaseC)
{
    U_V0_VBOFFSET  V0_VBOFFSET;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmePhase() Select Wrong Video Layer ID\n");
        return ;
    }
    
    V0_VBOFFSET.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VBOFFSET.u32) + u32Data * VID_OFFSET));
    V0_VBOFFSET.bits.vbluma_offset   = s32PhaseL;
    V0_VBOFFSET.bits.vbchroma_offset = s32PhaseC;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VBOFFSET.u32) + u32Data * VID_OFFSET), V0_VBOFFSET.u32); 

    return ;
}

HI_VOID  VDP_VID_SetZmeFirEnable2(HI_U32 u32Data, 
                                  HI_U32 u32bEnableHl,
                                  HI_U32 u32bEnableHc,
                                  HI_U32 u32bEnableVl,
                                  HI_U32 u32bEnableVc)
{
    U_V0_HSP V0_HSP;
    U_V0_VSP V0_VSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeFirEnable() Select Wrong Video Layer ID\n");
        return ;
    }
            
     V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
     V0_HSP.bits.hlfir_en  = u32bEnableHl;
     V0_HSP.bits.hchfir_en = u32bEnableHc;
     VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 

     V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
     V0_VSP.bits.vlfir_en  = u32bEnableVl;
     V0_VSP.bits.vchfir_en = u32bEnableVc;
     VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 

    return ;
}

    
    
HI_VOID  VDP_VID_SetZmeMidEnable2(HI_U32 u32Data, HI_U32 u32bEnable)
{
    U_V0_HSP V0_HSP;
    U_V0_VSP V0_VSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeMidEnable() Select Wrong Video Layer ID\n");
        return ;
    }
    
    /* VHD layer zoom enable */
    V0_HSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET));
    V0_HSP.bits.hlmid_en = u32bEnable;
    V0_HSP.bits.hchmid_en = u32bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_HSP.u32) + u32Data * VID_OFFSET), V0_HSP.u32); 

    V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
    V0_VSP.bits.vlmid_en  = u32bEnable;
    V0_VSP.bits.vchmid_en = u32bEnable;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 

    return ;
}



HI_VOID  VDP_VID_SetZmeVchTap(HI_U32 u32Data, HI_U32 u32VscTap)
{
    U_V0_VSP V0_VSP;
    
    if(u32Data >= VID_MAX)
    {
        HI_PRINT("Error,VDP_VID_SetZmeFirEnable() Select Wrong Video Layer ID\n");
        return ;
    }
            
    V0_VSP.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET));
    V0_VSP.bits.vsc_chroma_tap  = u32VscTap;
    VDP_RegWrite((HI_U32)(&(pVdpReg->V0_VSP.u32) + u32Data * VID_OFFSET), V0_VSP.u32); 

    return ;
}


HI_VOID  VDP_DISP_SetTiming(HI_U32 u32hd_id,VDP_DISP_SYNCINFO_S *pstSyncInfo)

{
     U_DHD0_CTRL DHD0_CTRL;
     U_DHD0_VSYNC DHD0_VSYNC;
     U_DHD0_VPLUS DHD0_VPLUS;
     U_DHD0_PWR DHD0_PWR;
     U_DHD0_HSYNC1 DHD0_HSYNC1;
     U_DHD0_HSYNC2 DHD0_HSYNC2;


    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_OpenIntf Select Wrong CHANNEL ID\n");
        return ;
    }
    
       
        //VOU VHD CHANNEL enable 
        DHD0_CTRL.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET));
        DHD0_CTRL.bits.iop   = pstSyncInfo->bIop;// 
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_CTRL.u32)+u32hd_id*CHN_OFFSET),DHD0_CTRL.u32);

        
        DHD0_HSYNC1.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_HSYNC1.u32)+u32hd_id*CHN_OFFSET));
        DHD0_HSYNC2.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_HSYNC2.u32)+u32hd_id*CHN_OFFSET));
/*
        DHD0_HSYNC1.bits.hact = pstSyncInfo->u32Hact -1;
        DHD0_HSYNC1.bits.hbb  = pstSyncInfo->u32Hbb -1;
        DHD0_HSYNC2.bits.hfb  = pstSyncInfo->u32Hfb -1;
*/
        //if (pstSyncInfo->u32Intfb)
        {
            DHD0_HSYNC1.bits.hact = pstSyncInfo->u32Hact -1;
            DHD0_HSYNC1.bits.hbb  = pstSyncInfo->u32Hbb -1;
            DHD0_HSYNC2.bits.hfb  = pstSyncInfo->u32Hfb -1;
            DHD0_HSYNC2.bits.hmid = pstSyncInfo->u32Hmid -1;
        }
#if 0
        else
        {
            DHD0_HSYNC1.bits.hact = pstSyncInfo->u32Hact * 2 -1;
            DHD0_HSYNC1.bits.hbb  = pstSyncInfo->u32Hbb * 2 -1;
            DHD0_HSYNC2.bits.hfb  = pstSyncInfo->u32Hfb * 2 -1;
            DHD0_HSYNC2.bits.hmid = pstSyncInfo->u32Hmid * 2 -1;
        }
#endif
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_HSYNC1.u32)+u32hd_id*CHN_OFFSET), DHD0_HSYNC1.u32);
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_HSYNC2.u32)+u32hd_id*CHN_OFFSET), DHD0_HSYNC2.u32);

        //Config VHD interface veritical timming
        DHD0_VSYNC.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VSYNC.u32)+u32hd_id*CHN_OFFSET));
        DHD0_VSYNC.bits.vact = pstSyncInfo->u32Vact  -1;
        DHD0_VSYNC.bits.vbb = pstSyncInfo->u32Vbb - 1;
        DHD0_VSYNC.bits.vfb =  pstSyncInfo->u32Vfb - 1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VSYNC.u32)+u32hd_id*CHN_OFFSET), DHD0_VSYNC.u32);
        
        //Config VHD interface veritical bottom timming,no use in progressive mode
        DHD0_VPLUS.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_VPLUS.u32)+u32hd_id*CHN_OFFSET));
        DHD0_VPLUS.bits.bvact = pstSyncInfo->u32Bvact - 1;
        DHD0_VPLUS.bits.bvbb =  pstSyncInfo->u32Bvbb - 1;
        DHD0_VPLUS.bits.bvfb =  pstSyncInfo->u32Bvfb - 1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_VPLUS.u32)+u32hd_id*CHN_OFFSET), DHD0_VPLUS.u32);

        //Config VHD interface veritical bottom timming, 
        DHD0_PWR.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_PWR.u32)+u32hd_id*CHN_OFFSET));        
        DHD0_PWR.bits.hpw = pstSyncInfo->u32Hpw - 1;
        DHD0_PWR.bits.vpw = pstSyncInfo->u32Vpw - 1;
        VDP_RegWrite((HI_U32)(&(pVdpReg->DHD0_PWR.u32)+u32hd_id*CHN_OFFSET), DHD0_PWR.u32);
}


HI_VOID VDP_DISP_GetVactState(HI_U32 u32hd_id, HI_BOOL *pbBtm, HI_U32 *pu32Vcnt)
{
    U_DHD0_STATE DHD0_STATE;
    
    if(u32hd_id >= CHN_MAX)
    {
        HI_PRINT("Error,VDP_DISP_SetGammaEnable Select Wrong CHANNEL ID\n");
        return ;
    }
    
    //Set Vou Dhd Channel Gamma Correct Enable
    DHD0_STATE.u32 = VDP_RegRead((HI_U32)(&(pVdpReg->DHD0_STATE.u32)+u32hd_id*CHN_OFFSET));
    *pbBtm   = DHD0_STATE.bits.bottom_field;
    *pu32Vcnt = DHD0_STATE.bits.vcnt;

    return;
}


HI_VOID VDP_SelectClk(HI_U32 u32VDPClkMode)
{
    U_PERI_CRG54 PERI_CRG54Tmp;

    PERI_CRG54Tmp.u32 = g_pstRegCrg->PERI_CRG54.u32;
    PERI_CRG54Tmp.bits.vdp_clk_sel = u32VDPClkMode;
    g_pstRegCrg->PERI_CRG54.u32 = PERI_CRG54Tmp.u32;
}

HI_S32 VDP_DISP_SelectChanClkDiv(HI_DRV_DISPLAY_E eChn, HI_U32 u32Div)
{
    U_PERI_CRG54 PERI_CRG54Tmp;

    PERI_CRG54Tmp.u32 = g_pstRegCrg->PERI_CRG54.u32;

    if (HI_DRV_DISPLAY_1 == eChn)
    {
        PERI_CRG54Tmp.bits.vo_hd_clk_div = u32Div;
    }
    else
    {
        PERI_CRG54Tmp.bits.vo_sd_clk_div = u32Div;
    }

    g_pstRegCrg->PERI_CRG54.u32 = PERI_CRG54Tmp.u32;

    return HI_SUCCESS;
}

HI_VOID DISP_ResetCRG54(HI_U32 *pu32Crg54Value)
{
    U_PERI_CRG54 unTmpValue;

    if (!pu32Crg54Value)
    {
        return;
    }

/*=============================================================================
BIT[   31] = reserved          <=
BIT[   30] = vou_srst_req      <= 1, soft reset
BIT[29-28] = vdp_clk_sel       <= 00,300MHz;01,400MHz; 10,345.6MHz;11,200MHz
BIT[   27] = reserved          <=
BIT[   26] = hdmi_clk_sel      <= 0, vo_sd; 1, vo_hd;
BIT[   25] = vo_clkout_pctrl   <= 0, +; 1, -
BIT[   24] = vo_clkout_sel     <= 0, sd; 1, hd
BIT[   23] = vdac_ch3_clk_sel  <= 0, sd; 1, hd
BIT[   22] = vdac_ch2_clk_sel  <= 0, sd; 1, hd
BIT[   21] = vdac_ch1_clk_sel  <= 0, sd; 1, hd
BIT[   20] = vdac_ch0_clk_sel  <= 0, sd; 1, hd
BIT[19-18] = vo_hd_clk_div     <= 00, 1/2; 01, 1/4; 1X, 1
BIT[17-16] = vo_hd_clk_sel     <= 00：sd_ini；01：hd0_ini；10：hd1_ini；11：reserved
BIT[15-14] = vo_sd_clk_div     <= 00, 1/2; 01, 1/4; 1X, 1
BIT[13-12] = vo_sd_clk_sel     <= 00：sd_ini；01：hd0_ini；10：hd1_ini；11：reserved
BIT[   11] = reserved          <=
BIT[   10] = vo_clkout_cken    <= 0,dis; 1, en;
BIT[    9] = vdac_ch3_cken     <= 0,dis; 1, en;
BIT[    8] = vdac_ch2_cken     <= 0,dis; 1, en;
BIT[    7] = vdac_ch1_cken     <= 0,dis; 1, en;
BIT[    6] = vdac_ch0_cken     <= 0,dis; 1, en;
BIT[    5] = vo_hdate_cken     <= 0,dis; 1, en;
BIT[    4] = vo_hd_cken        <= 0,dis; 1, en;
BIT[    3] = vo_sdate_cken     <= 0,dis; 1, en;
BIT[    2] = vo_sd_cken        <= 0,dis; 1, en;
BIT[    1] = vo_cken           <= 0,dis; 1, en;
BIT[    0] = vo_bus_cken       <= 0,dis; 1, en;
=============================================================================*/
    /*open and set clock  reset */
    unTmpValue.u32 = *pu32Crg54Value;

    //#define DISP_CV200_ES_SYSCTRL_RESET_VALUE 0x05F147FFUL
    unTmpValue.bits.vo_bus_cken      = 1;
    unTmpValue.bits.vo_cken          = 1;
    unTmpValue.bits.vo_sd_cken       = 1;
    unTmpValue.bits.vo_sdate_cken    = 1;
    unTmpValue.bits.vo_hd_cken       = 1;
    unTmpValue.bits.vo_hdate_cken    = 1;
    unTmpValue.bits.vdac_ch0_cken    = 1;
    unTmpValue.bits.vdac_ch1_cken    = 1;
    unTmpValue.bits.vdac_ch2_cken    = 1;
    unTmpValue.bits.vdac_ch3_cken    = 1;
    unTmpValue.bits.vo_clkout_cken   = 1;
    unTmpValue.bits.vo_sd_clk_sel    = 0;
    unTmpValue.bits.vo_sd_clk_div    = 2;
    unTmpValue.bits.vo_hd_clk_sel    = 1;
    unTmpValue.bits.vo_hd_clk_div    = 0;
    unTmpValue.bits.vdac_ch0_clk_sel = 1;
    unTmpValue.bits.vdac_ch1_clk_sel = 1;
    unTmpValue.bits.vdac_ch2_clk_sel = 1;
    unTmpValue.bits.vdac_ch3_clk_sel = 1;
    unTmpValue.bits.vo_clkout_sel    = 1;
    unTmpValue.bits.vo_clkout_pctrl  = 0;
    unTmpValue.bits.hdmi_clk_sel     = 1;
    unTmpValue.bits.vdp_clk_sel      = 0;
    unTmpValue.bits.vou_srst_req     = 1;

    *pu32Crg54Value = unTmpValue.u32;

    return;
}

HI_VOID VDP_RegSave(HI_U32 u32RegBackAddrf)
{
    S_VOU_V400_REGS_TYPE  *pVdpBackReg;
    pVdpBackReg = (S_VOU_V400_REGS_TYPE *)u32RegBackAddrf;

    /* save Reg */
    memcpy((HI_VOID *)(&(pVdpBackReg->VOCTRL)), (HI_VOID *)(&(pVdpReg->VOCTRL)), 0x100*2);

    //memcpy((HI_VOID *)(&(pVdpBackReg->WBC_DHD_LOCATE)), (HI_VOID *)(&(pVdpReg->WBC_DHD_LOCATE)), 0x100);
    memcpy((HI_VOID *)(&(pVdpBackReg->COEF_DATA)), (HI_VOID *)(&(pVdpReg->COEF_DATA)), 0x100);

    /*video layer */
    memcpy((HI_VOID *)(&(pVdpBackReg->V0_CTRL)), (HI_VOID *)(&(pVdpReg->V0_CTRL)), 0x800*5);

    /*VP0 VP1*/
    memcpy((HI_VOID *)(&(pVdpBackReg->VP0_UPD)), (HI_VOID *)(&(pVdpReg->VP0_UPD)), 0x800*2);

    /*DWBC0*/
    memcpy((HI_VOID *)(&(pVdpBackReg->WBC_DHD0_CTRL)), (HI_VOID *)(&(pVdpReg->WBC_DHD0_CTRL)), 0x400);
    
    /*MIXER*/
    memcpy((HI_VOID *)(&(pVdpBackReg->MIXV0_BKG)), (HI_VOID *)(&(pVdpReg->MIXV0_BKG)), 0x500);
        
    /*DHDx*/
    memcpy((HI_VOID *)(&(pVdpBackReg->DHD0_CTRL)), (HI_VOID *)(&(pVdpReg->DHD0_CTRL)), 0x400*2);

    /*DATE*/
    memcpy((HI_VOID *)(&(pVdpBackReg->HDATE_VERSION)), (HI_VOID *)(&(pVdpReg->HDATE_VERSION)), 0x2dc);
          
}
HI_VOID VDP_RegReStore(HI_U32 u32RegBackAddrf)
{

    S_VOU_V400_REGS_TYPE  *pVdpBackReg;
    
    pVdpBackReg = (S_VOU_V400_REGS_TYPE *)u32RegBackAddrf;

    /* save Reg */
    memcpy((HI_VOID *)(&(pVdpReg->VOCTRL)), (HI_VOID *)(&(pVdpBackReg->VOCTRL)), 0x100*2);
    //memcpy((HI_VOID *)(&(pVdpReg->WBC_DHD_LOCATE)), (HI_VOID *)(&(pVdpBackReg->WBC_DHD_LOCATE)), 0x100);
    memcpy((HI_VOID *)(&(pVdpReg->COEF_DATA)), (HI_VOID *)(&(pVdpBackReg->COEF_DATA)), 0x100);
    /*video layer */
    memcpy((HI_VOID *)(&(pVdpReg->V0_CTRL)), (HI_VOID *)(&(pVdpBackReg->V0_CTRL)), 0x800*5);

    /*VP0 VP1*/
    memcpy((HI_VOID *)(&(pVdpReg->VP0_UPD)), (HI_VOID *)(&(pVdpBackReg->VP0_UPD)), 0x800*2);

    /*DWBC0*/
    memcpy((HI_VOID *)(&(pVdpReg->WBC_DHD0_CTRL)), (HI_VOID *)(&(pVdpBackReg->WBC_DHD0_CTRL)), 0x400);
    
    /*MIXER*/
    memcpy((HI_VOID *)(&(pVdpReg->MIXV0_BKG)), (HI_VOID *)(&(pVdpBackReg->MIXV0_BKG)), 0x500);
        
    /*DHDx*/
    memcpy((HI_VOID *)(&(pVdpReg->DHD0_CTRL)), (HI_VOID *)(&(pVdpBackReg->DHD0_CTRL)), 0x400*2);

    /*DATE*/
    memcpy((HI_VOID *)(&(pVdpReg->HDATE_VERSION)), (HI_VOID *)(&(pVdpBackReg->HDATE_VERSION)), 0x2dc);
          
}

HI_VOID VDP_CloseClkResetModule(HI_VOID)
{
     U_PERI_CRG54 unTmpValue1;
     U_PERI_CRG71 unTmpValue2;
     
     /*first only reset the vdac module*/
     unTmpValue2.u32 = g_pstRegCrg->PERI_CRG71.u32;
     unTmpValue2.bits.vdac_b_srst_req = 1;
     unTmpValue2.bits.vdac_g_srst_req = 1;
     unTmpValue2.bits.vdac_r_srst_req = 1;
     unTmpValue2.bits.vdac_c_srst_req = 1;
     unTmpValue2.bits.vdac_b_srst_req = 1;
     g_pstRegCrg->PERI_CRG71.u32 = unTmpValue2.u32;
     
     /*second, close the vdac clock.*/
     unTmpValue2.bits.vdac_bg_cken  = 0;
     unTmpValue2.bits.vdac_rct_cken = 0;
     g_pstRegCrg->PERI_CRG71.u32 = unTmpValue2.u32;
     
     /*third, only reset vdp module.*/
     unTmpValue1.u32 = g_pstRegCrg->PERI_CRG54.u32;
     unTmpValue1.bits.vou_srst_req = 1;     
     g_pstRegCrg->PERI_CRG54.u32 = unTmpValue1.u32;
     
     /*forth, close all the clk.*/
     unTmpValue1.bits.vo_clkout_cken = 0;
     unTmpValue1.bits.vdac_ch3_cken = 0;
     unTmpValue1.bits.vdac_ch2_cken = 0;
     unTmpValue1.bits.vdac_ch1_cken = 0;
     unTmpValue1.bits.vdac_ch0_cken = 0;
     unTmpValue1.bits.vo_hdate_cken = 0;
     unTmpValue1.bits.vo_hd_cken = 0;
     unTmpValue1.bits.vo_sdate_cken = 0;
     unTmpValue1.bits.vo_sd_cken = 0;
     unTmpValue1.bits.vo_cken = 0;
     unTmpValue1.bits.vo_bus_cken = 0;
     g_pstRegCrg->PERI_CRG54.u32 = unTmpValue1.u32;
     
     return;    
}


