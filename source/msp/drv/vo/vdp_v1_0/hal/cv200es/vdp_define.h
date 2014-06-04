//**********************************************************************
//                                                                          
// Copyright(c)2008,Huawei Technologies Co.,Ltd                            
// All rights reserved.                                                     
//                                                                          
// File Name   : vdp_define.h
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
// $Log: vdp_define.h,v $
//
//
//
//
//**********************************************************************

#ifndef _VDP_DEFINE_H_
#define _VDP_DEFINE_H_

#include "hi_type.h"

#define VDP_VP   1
#define VDP_GP   1
// test switch
#define PC_TEST   0
#define SYS_TEST  0
#define EDA_TEST  0
#define FPGA_TEST 1

#define VID_MAX 4
#define GFX_MAX 5
#define WBC_MAX 1
#define CHN_MAX 2
#define GP_MAX  2
#define VP_MAX  2
#define CBM_MAX  (VP_MAX + GP_MAX)

#define MAX_LAYER VID_MAX + GFX_MAX
#define MIX_PARA  8


#define VID_OFFSET 0x800/4 
#define VP_OFFSET  0x800/4 
#define GFX_OFFSET 0x800/4 
#define GP_OFFSET  0x800/4 
#define MIX_OFFSET 0x100/4 
#define CHN_OFFSET 0x400/4

#define WBC_OFFSET 0x400/4 

#define WBC_GP0_SEL 1 

#define MAX_VALUE 255

#define HI_TYPE   1

#ifdef RERUN

#else

#define ENV_DEBUG 1

#endif

#if !(FPGA_TEST)
#define MyAssert(x) { if (!(x)) { printf("\nErr @ (%s, %d)\n", __FILE__, __LINE__); \
                                                         exit(-__LINE__); } }
#else
#define MyAssert(x) 
#endif

#define MAX_PICTURE_WIDTH  2048
#define MAX_PICTURE_HEIGHT 2048

#define   HI_SUCCESS          0
#define   HI_FAILURE          (-1)
#define   HI_POINT_NULL       (-2)
#define   HI_PARAM_ERRO       (-3)

#define   VDP_BASE_ADDR  0x1fd00000
#define   INT_REG_ADDR  (VDP_BASE_ADDR + 0x8)
#define   INT_STA_ADDR  (VDP_BASE_ADDR + 0x4)

#define  ACK_REQ_ACCEPT   0
#define  ACK_MASTER_FULL  1
#define  ACK_SLAVE_FULL   2

#define  BUS_RD_WTH    32
 

#define VID_ZME_TAP_HL 8
#define VID_ZME_TAP_HC 4
#define VID_ZME_TAP_VL 6
#define VID_ZME_TAP_VC 4

#define VID_ZME_TAP_HLTI 8
#define VID_ZME_TAP_HCTI 4
#define VID_ZME_TAP_VLTI 2
#define VID_ZME_TAP_VCTI 2

#define GFX_ZME_TAP_HL 8
#define GFX_ZME_TAP_HC 8
#define GFX_ZME_TAP_VL 4
#define GFX_ZME_TAP_VC 4

#define GFX_ZME_TAP_HLTI 2
#define GFX_ZME_TAP_HCTI 2
#define GFX_ZME_TAP_VLTI 2
#define GFX_ZME_TAP_VCTI 2

#define WBC_HD_ZME_TAP_HL 8
#define WBC_HD_ZME_TAP_HC 4
#define WBC_HD_ZME_TAP_VL 4
#define WBC_HD_ZME_TAP_VC 4

#define VID_ZME_HPHA 32
#define VID_ZME_VPHA 32

#define GFX_ZME_HPHA 8
#define GFX_ZME_VPHA 16

#define  ZME_HPREC    (1<<20)
#define  ZME_VPREC    (1<<12)

#define  GZME_HPREC    (1<<12)
#define  GZME_VPREC    (1<<12)

#define IABS(x) (((x) < 0) ? -(x) : (x))
#define CCLIP(x,max,min) (((x) < min) ? min : (((x) > max)?max:(x)))

#ifndef HI_TYPE
typedef            char    HI_S8;
typedef   unsigned short   HI_U16;
typedef            short   HI_S16;
typedef   unsigned int     HI_U32;
typedef   signed   int     HI_S32;
typedef   unsigned char    HI_U8;
typedef   bool             HI_BOOL;
typedef   float            HI_FLOAT;
typedef   double           HI_DOUBLE;

typedef   void             HI_VOID;
#endif

typedef   HI_VOID*         HAL_VIDEO_HANDLE_S;
typedef   HI_VOID*         HAL_DISP_HANDLE_S;


#ifndef HI_TYPE
typedef enum 
{
    HI_FALSE    = 0,
    HI_TRUE     = 1
} HI_BOOL;
#endif

// used for communication between modules

typedef enum 
{
    VDP_MASTER0 = 0,  
    VDP_MASTER1 = 1,  
    VDP_MASTER_BUTT
      
}VDP_MASTER_E;

typedef enum
{
    VDP_INT_CHN0 = 1,
    VDP_INT_CHN1    ,
    VDP_INT_WBC_HD0 ,
    VDP_INT_WBC_GP0 ,
    VDP_INT_UT,
    WRAP_INT
} INT_VECTOR;

typedef enum tagVDP_AXI_CMD_E
{
    VDP_AXI_CMD_RID0 = 0,
    VDP_AXI_CMD_RID1,
    VDP_AXI_CMD_WID0,

    VDP_AXI_CMD_RID0OTD,
    VDP_AXI_CMD_RID1OTD,
    VDP_AXI_CMD_WID0OTD,

    VDP_AXI_CMD_BUTT
} VDP_AXI_CMD_E;


typedef enum tagVDP_LAYER_VID_E
{
    VDP_LAYER_VID0  = 0,
    VDP_LAYER_VID1  = 1,
    VDP_LAYER_VID2  = 2,
    VDP_LAYER_VID3  = 3,
    VDP_LAYER_VID4  = 4,
    VDP_LAYER_VID5  = 5,
    
    VDP_LAYER_VID_BUTT

} VDP_LAYER_VID_E;


typedef enum tagVDP_LAYER_GFX_E
{
    VDP_LAYER_GFX0  = 0,
    VDP_LAYER_GFX1  = 1,
    VDP_LAYER_GFX2  = 2,
    VDP_LAYER_GFX3  = 3,
    VDP_LAYER_GFX4  = 4,
    VDP_LAYER_GFX5  = 5,
    
    VDP_LAYER_GFX_BUTT

} VDP_LAYER_GFX_E;

typedef enum tagVDP_LAYER_VP_E
{
    VDP_LAYER_VP0   = 0,
    VDP_LAYER_VP1   = 1,
    
    VDP_LAYER_VP_BUTT

} VDP_LAYER_VP_E;

typedef enum tagVDP_LAYER_GP_E
{
    VDP_LAYER_GP0   = 0,
    VDP_LAYER_GP1   = 1,
    
    VDP_LAYER_GP_BUTT

} VDP_LAYER_GP_E;

typedef enum tagVDP_LAYER_WBC_E
{
    VDP_LAYER_WBC_GP0  = 0,
    VDP_LAYER_WBC_HD0  = 1,
    VDP_LAYER_WBC_BUTT

} VDP_LAYER_WBC_E;

typedef enum tagVDP_CHN_E
{
    VDP_CHN_DHD0    = 0,
    VDP_CHN_DHD1    = 1,
    VDP_CHN_WBC0    = 2,
    VDP_CHN_WBC1    = 3,
    VDP_CHN_WBC2    = 4,
    VDP_CHN_WBC3    = 5,
    VDP_CHN_NONE    = 6,
    VDP_CHN_BUTT

} VDP_CHN_E;


typedef enum tagVDP_VID_IFMT_E
{
    VDP_VID_IFMT_SP_400      = 0x1,
    VDP_VID_IFMT_SP_420      = 0x3,
    VDP_VID_IFMT_SP_422      = 0x4,
    VDP_VID_IFMT_SP_444      = 0x5,
    VDP_VID_IFMT_PKG_UYVY    = 0x9,
    VDP_VID_IFMT_PKG_YUYV    = 0xa,
    VDP_VID_IFMT_PKG_YVYU    = 0xb,

    VDP_VID_IFMT_BUTT        
    
}VDP_VID_IFMT_E;
 
typedef enum tagVDP_GFX_IFMT_E
{
    VDP_GFX_IFMT_CLUT_1BPP   = 0x00,
    VDP_GFX_IFMT_CLUT_2BPP   = 0x10,
    VDP_GFX_IFMT_CLUT_4BPP   = 0x20,
    VDP_GFX_IFMT_CLUT_8BPP   = 0x30,

    VDP_GFX_IFMT_ACLUT_44    = 0x38,

    VDP_GFX_IFMT_RGB_444     = 0x40,
    VDP_GFX_IFMT_RGB_555     = 0x41,
    VDP_GFX_IFMT_RGB_565     = 0x42,

    VDP_GFX_IFMT_PKG_UYVY    = 0x43,
    VDP_GFX_IFMT_PKG_YUYV    = 0x44,
    VDP_GFX_IFMT_PKG_YVYU    = 0x45,

    VDP_GFX_IFMT_ACLUT_88    = 0x46,
    VDP_GFX_IFMT_ARGB_4444   = 0x48,
    VDP_GFX_IFMT_ARGB_1555   = 0x49,

    VDP_GFX_IFMT_RGB_888     = 0x50,//24bpp
    VDP_GFX_IFMT_YCBCR_888   = 0x51,//24bpp
    VDP_GFX_IFMT_ARGB_8565   = 0x5a,//24bpp

    VDP_GFX_IFMT_KRGB_888    = 0x60,
    VDP_GFX_IFMT_ARGB_8888   = 0x68,
    VDP_GFX_IFMT_AYCBCR_8888 = 0x69,

    VDP_GFX_IFMT_RGBA_4444   = 0xc8,
    VDP_GFX_IFMT_RGBA_5551   = 0xc9,
    VDP_GFX_IFMT_RGBA_5658   = 0xda,//24bpp
    VDP_GFX_IFMT_RGBA_8888   = 0xe8,
    VDP_GFX_IFMT_YCBCRA_8888 = 0xe9,

    VDP_GFX_IFMT_BUTT        
    
}VDP_GFX_IFMT_E;
 
typedef enum tagVDP_PROC_FMT_E
{
    VDP_PROC_FMT_SP_422      = 0x0,
    VDP_PROC_FMT_SP_420      = 0x1,
    VDP_PROC_FMT_SP_444      = 0x2,

    VDP_PROC_FMT_BUTT        
    
}VDP_PROC_FMT_E;

typedef enum tagVDP_WBC_FMT_E
{
    VDP_WBC_OFMT_PKG_UYVY = 0,
    VDP_WBC_OFMT_PKG_YUYV = 1,
    VDP_WBC_OFMT_PKG_YVYU = 2,
    VDP_WBC_OFMT_ARGB8888 = 3,
    VDP_WBC_OFMT_SP420   = 4,
    VDP_WBC_OFMT_SP422   = 5,
    
    VDP_WBC_OFMT_BUUT

}VDP_WBC_OFMT_E;



typedef enum tagVDP_DATA_RMODE_E
{
    VDP_RMODE_INTERFACE = 0,
    VDP_RMODE_PROGRESSIVE,
    VDP_RMODE_TOP,
    VDP_RMODE_BOTTOM,
    VDP_RMODE_BUTT

} VDP_DATA_RMODE_E;


typedef enum tagVDP_INTMSK_E
{
    VDP_INTMSK_NONE      = 0,

    VDP_INTMSK_DHD0_VTTHD  = 0x1,
    VDP_INTMSK_DHD0_VTTHD2 = 0x2,
    VDP_INTMSK_DHD0_VTTHD3 = 0x4,
    VDP_INTMSK_DHD0_UFINT  = 0x8,

    VDP_INTMSK_DHD1_VTTHD  = 0x10,
    VDP_INTMSK_DHD1_VTTHD2 = 0x20,
    VDP_INTMSK_DHD1_VTTHD3 = 0x40,
    VDP_INTMSK_DHD1_UFINT  = 0x80,

    VDP_INTMSK_WBC_GP0_INT = 0x100,
    VDP_INTMSK_WBC_HD0_INT = 0x200,

    VDP_INTMSK_WBC2TEINT = 0x800,

    VDP_INTMSK_LNKTEINT  = 0x1000,

    VDP_INTMSK_WBC4INT   = 0x20000,
    VDP_INTMSK_WBC5INT   = 0x40000,
    VDP_INTMSK_NRWBCINT  = 0x80000,

    VDP_INTMSK_VSDRRINT  = 0x100000,
    VDP_INTMSK_VADRRINT  = 0x200000,
    VDP_INTMSK_VHDRRINT  = 0x400000,
    VDP_INTMSK_G0RRINT   = 0x800000,

    VDP_INTMSK_G1RRINT   = 0x1000000,

    VDP_INTMSK_RRERRINT  = 0x10000000,
    VDP_INTMSK_UTENDINT  = 0x40000000,
    VDP_INTMSK_BUSEERINT = 0x80000000,
    
    HAL_INTMSK_ALL       = 0xffffffff

}VDP_INTMSK_E;

typedef enum tagVDP_INT_E
{
    VDP_INT_VTTHD  = 1,
    VDP_INT_VTTHD2 = 2,
    VDP_INT_VTTHD3 = 3,
    VDP_INT_BUTT 
}VDP_INT_E;

typedef enum 
{
    VDP_ZME_MODE_HOR = 0,
    VDP_ZME_MODE_VER,

    VDP_ZME_MODE_HORL,  
    VDP_ZME_MODE_HORC,  
    VDP_ZME_MODE_VERL,
    VDP_ZME_MODE_VERC,

    VDP_ZME_MODE_ALPHA,
    VDP_ZME_MODE_ALPHAV,
    VDP_ZME_MODE_VERT,
    VDP_ZME_MODE_VERB,

    VDP_ZME_MODE_ALL,
    VDP_ZME_MODE_NONL,
    VDP_ZME_MODE_BUTT
      
}VDP_ZME_MODE_E;

typedef enum 
{
    VDP_TI_MODE_LUM = 0,  
    VDP_TI_MODE_CHM,  

    VDP_TI_MODE_ALL,
    VDP_TI_MODE_NON,
    VDP_TI_MODE_BUTT
      
}VDP_TI_MODE_E;



typedef enum tagVDP_ZME_ORDER_E
{
    VDP_ZME_ORDER_HV = 0x0,
    VDP_ZME_ORDER_VH = 0x1,

    VDP_ZME_ORDER_BUTT
} VDP_ZME_ORDER_E;

typedef enum tagVDP_GP_ORDER_E
{
    VDP_GP_ORDER_NULL     = 0x0,
    VDP_GP_ORDER_CSC      = 0x1,
    VDP_GP_ORDER_ZME      = 0x2,
    VDP_GP_ORDER_CSC_ZME  = 0x3,
    VDP_GP_ORDER_ZME_CSC  = 0x4,

    VDP_GP_ORDER_BUTT
} VDP_GP_ORDER_E;


typedef enum tagVDP_DITHER_E
{
    VDP_DITHER_DROP_10   = 0,
    VDP_DITHER_TMP_10    = 1,
    VDP_DITHER_SPA_10    = 2,
    VDP_DITHER_TMP_SPA_8 = 3,
    VDP_DITHER_ROUND_10  = 4,
    VDP_DITHER_ROUND_8   = 5,
    VDP_DITHER_DISEN     = 6,
    VDP_DITHER_BUTT
} VDP_DITHER_E;

typedef struct
{
    HI_U32 dither_coef0;
    HI_U32 dither_coef1;
    HI_U32 dither_coef2;
    HI_U32 dither_coef3;

    HI_U32 dither_coef4;
    HI_U32 dither_coef5;
    HI_U32 dither_coef6;
    HI_U32 dither_coef7;
} VDP_DITHER_COEF_S;

typedef struct tagVDP_DISP_RECT_S
{
    HI_U32 u32SX;   // source horizontal start position
    HI_U32 u32SY;   // source vertical start position
    
    HI_U32 u32DXS;  // dispaly horizontal start position
    HI_U32 u32DYS;  // display vertical start position

    HI_U32 u32DXL;  // dispaly horizontal end position
    HI_U32 u32DYL;  // display vertical end position
    
    HI_U32 u32VX;   // video horizontal start position
    HI_U32 u32VY;   // video vertical start position

    HI_U32 u32VXL;  // video horizontal start position
    HI_U32 u32VYL;  // video vertical start position
    
    HI_U32 u32IWth; // input width
    HI_U32 u32IHgt; // input height
    HI_U32 u32OWth; // output width
    HI_U32 u32OHgt; // output height

} VDP_DISP_RECT_S;

typedef struct tagVDP_DISP_SYNCINFO_S
{
    HI_U32  bSynm;
    HI_U32  bIop;
    HI_U32  u32Intfb; 
    
    HI_U32  u32Vact ;
    HI_U32  u32Vbb;
    HI_U32  u32Vfb;

    HI_U32  u32Hact;
    HI_U32  u32Hbb;
    HI_U32  u32Hfb;

    HI_U32  u32Bvact;
    HI_U32  u32Bvbb;
    HI_U32  u32Bvfb;

    HI_U32  u32Hpw;
    HI_U32  u32Vpw;
    HI_U32  u32Hmid;

    HI_U32  bIdv;
    HI_U32  bIhs;
    HI_U32  bIvs;

} VDP_DISP_SYNCINFO_S;


typedef struct tagVDP_DISP_SYNCINV_E 
{
    HI_U32  u32Dinv;
    
    HI_U32  u32Hdfinv;
    HI_U32  u32Hdvinv; 
    HI_U32  u32Hdhinv;
    HI_U32  u32Hddinv;
    
    HI_U32  u32Vgavinv;
    HI_U32  u32Vgahinv;
    HI_U32  u32Vgadinv;
    
    HI_U32  u32Lcdvinv;
    HI_U32  u32Lcdhinv;
    HI_U32  u32Lcddinv;

} VDP_DISP_SYNCINV_E;

typedef struct
{
    HI_U32 u32X;
    HI_U32 u32Y;

    HI_U32 u32Wth;
    HI_U32 u32Hgt;
    
} VDP_RECT_S;


typedef struct tagVDP_MIX_INFO_S
{
    HI_U32 bEnable;

    HI_U32 u32LayerAttr;//0:vp ; 1:gp

    HI_U32 u32GAlpha;
    HI_U32 u32BkgAlpha;

    HI_U32 u32XStart;
    HI_U32 u32YStart;

    HI_U32 u32FkPitch;
    HI_U32 u32BkPitch;

    HI_U32 u32Wth; // blend data width
    HI_U32 u32Hgt; // blend data height

    HI_BOOL bPreMultEn;

    HI_BOOL bPmSrcEn;
    HI_BOOL bPmDstEn;


} VDP_MIX_INFO_S;

typedef enum tagVDP_VID_PARA_E
{
    VDP_VID_PARA_ZME_HOR = 0x0,
    VDP_VID_PARA_ZME_VER = 0x1,

    VDP_VID_PARA_BUTT
} VDP_VID_PARA_E;

typedef enum tagVDP_GP_PARA_E
{
    VDP_GP_PARA_ZME_HOR = 0,
    VDP_GP_PARA_ZME_VER   ,
    
    VDP_GP_PARA_ZME_HORL  ,
    VDP_GP_PARA_ZME_HORC  ,
    VDP_GP_PARA_ZME_VERL  ,
    VDP_GP_PARA_ZME_VERC  ,

    VDP_GP_GTI_PARA_ZME_HORL  ,
    VDP_GP_GTI_PARA_ZME_HORC  ,
    VDP_GP_GTI_PARA_ZME_VERL  ,
    VDP_GP_GTI_PARA_ZME_VERC  ,
    
    VDP_GP_PARA_BUTT
} VDP_GP_PARA_E;

typedef enum tagVDP_WBC_PARA_E
{
    VDP_WBC_PARA_ZME_HOR = 0,
    VDP_WBC_PARA_ZME_VER   ,
    
    VDP_WBC_PARA_ZME_HORL  ,
    VDP_WBC_PARA_ZME_HORC  ,
    VDP_WBC_PARA_ZME_VERL  ,
    VDP_WBC_PARA_ZME_VERC  ,

    VDP_WBC_GTI_PARA_ZME_HORL  ,
    VDP_WBC_GTI_PARA_ZME_HORC  ,
    VDP_WBC_GTI_PARA_ZME_VERL  ,
    VDP_WBC_GTI_PARA_ZME_VERC  ,
    
    VDP_WBC_PARA_BUTT
} VDP_WBC_PARA_E;

typedef enum tagVDP_DISP_PARA_E
{
    VDP_DISP_PARA_GMM = 0x0,

    VDP_DISP_PARA_BUTT
} VDP_DISP_PARA_E;
//---------------------------------------
// Modules
//---------------------------------------

// bkg color patern fill
typedef struct tagVDP_BKG_S
{
    HI_U32 u32BkgY;
    HI_U32 u32BkgU;
    HI_U32 u32BkgV;

    HI_U32 u32BkgA;
    
    HI_BOOL bBkType;

} VDP_BKG_S;

//-------------------
// CSC
//-------------------
typedef enum tagVDP_CSC_MODE_E
{
    VDP_CSC_YUV2RGB_601 = 0,
    VDP_CSC_YUV2RGB_709    ,
    VDP_CSC_RGB2YUV_601    ,
    VDP_CSC_RGB2YUV_709    ,
    VDP_CSC_YUV2YUV_709_601,
    VDP_CSC_YUV2YUV_601_709,
    VDP_CSC_YUV2YUV,
    VDP_CSC_YUV2YUV_MAX,
    VDP_CSC_YUV2YUV_MIN,
    VDP_CSC_YUV2YUV_RAND,
   
    VDP_CSC_BUTT
} VDP_CSC_MODE_E;

//-------------------
// CSC
//-------------------
typedef struct 
{
    HI_S32 csc_coef00;
    HI_S32 csc_coef01;
    HI_S32 csc_coef02;

    HI_S32 csc_coef10;
    HI_S32 csc_coef11;
    HI_S32 csc_coef12;

    HI_S32 csc_coef20;
    HI_S32 csc_coef21;
    HI_S32 csc_coef22;

} VDP_CSC_COEF_S;

typedef struct
{
    HI_S32 csc_in_dc0;
    HI_S32 csc_in_dc1;
    HI_S32 csc_in_dc2;

    HI_S32 csc_out_dc0;
    HI_S32 csc_out_dc1;
    HI_S32 csc_out_dc2;
} VDP_CSC_DC_COEF_S;

//for rm
typedef struct 
{
    HI_S32 csc_coef00;
    HI_S32 csc_coef01;
    HI_S32 csc_coef02;

    HI_S32 csc_coef10;
    HI_S32 csc_coef11;
    HI_S32 csc_coef12;

    HI_S32 csc_coef20;
    HI_S32 csc_coef21;
    HI_S32 csc_coef22;

    HI_S32 csc_in_dc0;
    HI_S32 csc_in_dc1;
    HI_S32 csc_in_dc2;

    HI_S32 csc_out_dc0;
    HI_S32 csc_out_dc1;
    HI_S32 csc_out_dc2;
} VDP_CSC_CFG_S;

typedef enum tagVDP_IFIRMODE_E
{
    VDP_IFIRMODE_DISEN = 0,
    VDP_IFIRMODE_COPY,
    VDP_IFIRMODE_DOUBLE,
    VDP_IFIRMODE_6TAPFIR,

    VDP_IFIRMODE_BUTT
}VDP_IFIRMODE_E;

typedef enum tagVDP_DISP_MODE_E
{
    VDP_DISP_MODE_2D  = 0,
    VDP_DISP_MODE_SBS = 1,
    VDP_DISP_MODE_TAB = 4,
    VDP_DISP_MODE_FP  = 5,

    VDP_DISP_MODE_BUTT
}VDP_DISP_MODE_E;
//-------------------
// vou graphic layer data extend mode
//-------------------
typedef enum tagVDP_GFX_BITEXTEND_E
{
    VDP_GFX_BITEXTEND_1ST =   0,  
    VDP_GFX_BITEXTEND_2ND = 0x2,
    VDP_GFX_BITEXTEND_3RD = 0x3,

    VDP_GFX_BITEXTEND_BUTT
}VDP_GFX_BITEXTEND_E;

typedef struct
{
    HI_U32  uAData  ;
    HI_U32  uRData  ;
    HI_U32  uGData  ;
    HI_U32  uBData  ;
} VDP_GFX_LUT_DATA_S;



typedef enum tagVDP_CBM_MIX_E
{
    VDP_CBM_MIXV0 = 0,
    VDP_CBM_MIXV1 = 1,
    VDP_CBM_MIXG0 = 2,
    VDP_CBM_MIXG1 = 3,
    VDP_CBM_MIX0  = 4,
    VDP_CBM_MIX1  = 5,

    VDP_CBM_MIX_BUTT 
}VDP_CBM_MIX_E;

typedef enum tagVDP_CBM_LAYER_E
{
    VDP_CBM_VP0 = 0,
    VDP_CBM_GP0 = 1,
    VDP_CBM_VP1 = 2,
    VDP_CBM_GP1 = 3,

    VDP_CBM_BUTT 
}VDP_CBM_LAYER_E;

typedef enum 
{
    VDP_DISP_COEFMODE_HOR  = 0,  
    VDP_DISP_COEFMODE_VER,
    VDP_DISP_COEFMODE_LUT,
    VDP_DISP_COEFMODE_GAM,
    VDP_DISP_COEFMODE_ACC,
    VDP_DISP_COEFMODE_ABC,
    VDP_DISP_COEFMODE_ACM,
    VDP_DISP_COEFMODE_NR,
    VDP_DISP_COEFMODE_SHARP,
    VDP_DISP_COEFMODE_DIM,
    VDP_DISP_COEFMODE_DIMZMEH,
    VDP_DISP_COEFMODE_DIMZMEV,

    VDP_DISP_COEFMODE_ALL
}VDP_DISP_COEFMODE_E;

typedef enum tagRM_FFINFO_E
{
    RM_FFINFO_TOP,
    RM_FFINFO_BTM,
    RM_FFINFO_FRM,
    RM_FFINFO_BT1,

    RM_FFINFO_BUTT
}RM_FFINFO_E;


typedef struct tagVDP_GFX_CKEY_S
{
    HI_U32 u32Key_r_min;
    HI_U32 u32Key_g_min;
    HI_U32 u32Key_b_min;

    HI_U32 u32Key_r_max;
    HI_U32 u32Key_g_max;
    HI_U32 u32Key_b_max;    

    HI_U32 u32Key_r_msk;
    HI_U32 u32Key_g_msk;
    HI_U32 u32Key_b_msk;

    HI_U32 bKeyMode;

    HI_U32 u32KeyAlpha;

} VDP_GFX_CKEY_S;

typedef struct tagVDP_GFX_MASK_S
{
    HI_U32 u32Mask_r;
    HI_U32 u32Mask_g;
    HI_U32 u32Mask_b;

} VDP_GFX_MASK_S;


typedef struct tagRequest
{
    HI_S32  id;
    HI_VOID *buf;
    HI_U32  addr;
    HI_S32  size;
    HI_S32  count;
    HI_S32  mode;
    HI_U32    wr;  /// 0: read; 1: write
} Request;


typedef enum tagVDP_DISP_DIGFMT_E
{
    VDP_DISP_DIGFMT_PAL = 0,
    VDP_DISP_DIGFMT_NTSC,
    VDP_DISP_DIGFMT_1080P,
    VDP_DISP_DIGFMT_1080I,
    VDP_DISP_DIGFMT_720P,
    VDP_DISP_DIGFMT_800x600,
    VDP_DISP_DIGFMT_576P,
    VDP_DISP_DIGFMT_576I,
    VDP_DISP_DIGFMT_480P,
    VDP_DISP_DIGFMT_480I,
    VDP_DISP_DIGFMT_TESTI,
    VDP_DISP_DIGFMT_TESTP,
    VDP_DISP_DIGFMT_TESTS,
    VDP_DISP_DIGFMT_TESTUT,
  
    VDP_DISP_DIGFMT_BUTT
} VDP_DISP_DIGFMT_E;

//-----------------------------------
//define of EDA
//-----------------------------------

typedef enum tagVDP_RM_LAYER_E
{
    VDP_RM_LAYER_VID0 = 0,
    VDP_RM_LAYER_VID1,
    VDP_RM_LAYER_VID2, 
    VDP_RM_LAYER_VID3, 
    VDP_RM_LAYER_VID4, 
    VDP_RM_LAYER_GFX0,   
    VDP_RM_LAYER_GFX1,   
    VDP_RM_LAYER_GFX2,   
    VDP_RM_LAYER_GFX3,   
    VDP_RM_LAYER_GFX4,   
    VDP_RM_LAYER_WBC_HD0,   
    VDP_RM_LAYER_WBC_GP0,   
    VDP_RM_LAYER_GP0,   
    VDP_RM_LAYER_GP1,   
    VDP_RM_LAYER_TT,   

} VDP_RM_LAYER_E;

typedef struct tagVDP_BFM_INFO_S
{
    HI_U32  bSynm;
    HI_U32  bIop;
    HI_U32  u32Intfb; 
    
    HI_U32  u32Vact ;
    HI_U32  u32Vbb;
    HI_U32  u32Vfb;

    HI_U32  u32Hact;
    HI_U32  u32Hbb;
    HI_U32  u32Hfb;

    HI_U32  u32Bvact;
    HI_U32  u32Bvbb;
    HI_U32  u32Bvfb;

    HI_U32  u32Hpw;
    HI_U32  u32Vpw;
    HI_U32  u32Hmid;

    HI_U32  bIdv;
    HI_U32  bIhs;
    HI_U32  bIvs;

    HI_U32 u32CbarEn;
    HI_U32 u32IntfFmt;
    HI_U32 u32BfmMode;
    HI_U32 u32BitWth;

    HI_U32  bFp;

}VDP_BFM_INFO_S;


typedef struct tagVDP_BFM_OUTDATA_S
{
    HI_U16 *Y;
    HI_U16 *Cb;
    HI_U16 *Cr;
    
    HI_U32 Length;

    HI_U8  Field;
    HI_U8  Dataformat;
    HI_U8  Datafmt;
}VDP_BFM_OUTDATA_S;

typedef struct tagVDP_WBCK_INFO_S
{
    VDP_LAYER_WBC_E  enWbcId;
    RM_FFINFO_E      enFfInfo; 
}VDP_WBCK_INFO_S;

typedef enum
{
    ID_DRV_MODULE,
    ID_CK_MODULE,
    ID_BFM_MODULE,
    ID_WBC_MODULE,
    ID_DAC_MODULE
}MODULE_ID;

typedef struct
{
    //VDP_RM_COEF_MODE_E enCoefMd;

    HI_U32 u32CusMd;

    HI_U32 u32HorTap;
    HI_U32 u32VerTap;
    
    HI_U32 u32HorPha;
    HI_U32 u32VerPha;

    HI_U32 u32HorAddr;
    HI_U32 u32VerAddr;

    HI_S32 * sp32HorCoef;
    HI_S32 * sp32VerCoef;
    
} VDP_STI_ZMECOEF_S;

typedef enum tagVDP_RM_COEF_MODE_E
{
    VDP_RM_COEF_MODE_TYP = 0x0,
    VDP_RM_COEF_MODE_RAN = 0x1,
    VDP_RM_COEF_MODE_MIN = 0x2,
    VDP_RM_COEF_MODE_MAX = 0x3,
    VDP_RM_COEF_MODE_ZRO = 0x4,
    VDP_RM_COEF_MODE_CUS = 0x5,
    VDP_RM_COEF_MODE_BUTT
} VDP_RM_COEF_MODE_E;


typedef struct
{
    VDP_DATA_RMODE_E    enLumRdMode;
    VDP_DATA_RMODE_E    enChmRdMode;
    HI_U32              bFlipEn;

} VDP_FRW_INFO_S;

typedef enum tagVDP_DISP_INTF_E
{
    VDP_DISP_INTF_LCD = 0 , 
    VDP_DISP_INTF_BT1120  ,
    VDP_DISP_INTF_HDMI    ,
    VDP_DISP_INTF_VGA     ,
    VDP_DISP_INTF_HDDATE  ,
    VDP_DISP_INTF_SDDATE  ,
    VDP_DISP_INTF_DATE    ,
    VDP_DISP_INTF_CVBS    ,
    VDP_DISP_INTF_BUTT    ,
} VDP_DISP_INTF_E;

typedef enum tagVDP_DISP_INTF_OFMT_E
{
    VDP_DISP_INTF_OFMT_RGB888 = 0 , 
    VDP_DISP_INTF_OFMT_YUV422  ,
    VDP_DISP_INTF_OFMT_BUTT  ,
} VDP_DISP_INTF_OFMT_E;

typedef struct tagVDP_DISP_CLIP_S
{
    HI_U32   bClipEn;
    HI_U32   u32ClipLow_y;  
    HI_U32   u32ClipLow_cb;  
    HI_U32   u32ClipLow_cr;  
    
    HI_U32   u32ClipHigh_y;  
    HI_U32   u32ClipHigh_cb;  
    HI_U32   u32ClipHigh_cr;  

} VDP_DISP_CLIP_S;


typedef enum tagDISP_VENC_E
{
    DISP_VENC_HDATE0 = 0,
    DISP_VENC_SDATE0,
    DISP_VENC_VGA0,
    DISP_VENC_MAX
}DISP_VENC_E;


#endif

