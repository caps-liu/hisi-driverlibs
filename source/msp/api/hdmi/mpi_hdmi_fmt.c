/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_disp_tran.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/15
  Description   :
  History       :
  1.Date        : 2013/1/31
    Author      : 
    Modification: Created file

*******************************************************************************/

#include "memory.h"
#include "mpi_hdmi_fmt.h"


#ifdef __cplusplus
#if __cplusplus
extern "C"
{
#endif
#endif


#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
HI_S32 Transfer_DispID(HI_UNF_DISP_E *pU, HI_DRV_DISPLAY_E *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        *pM = (HI_DRV_DISPLAY_E)(*pU);
        return HI_SUCCESS;
    }
    else
    {
        *pU = (HI_UNF_DISP_E)(*pM);
        return HI_SUCCESS;
    }
}
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

HI_S32 Transfer_DispOffset(HI_UNF_DISP_OFFSET_S *pU, HI_DRV_DISP_OFFSET_S *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        *pM = *((HI_DRV_DISP_OFFSET_S* )pU);
        return HI_SUCCESS;
    }
    else
    {
        *pU = *((HI_UNF_DISP_OFFSET_S *)pM);
        return HI_SUCCESS;
    }
}

#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/


#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
HI_S32 Transfer_Disp3DMode(HI_UNF_DISP_3D_E *pU, HI_DRV_DISP_STEREO_MODE_E *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        *pM = (HI_DRV_DISP_STEREO_MODE_E)(*pU);
        return HI_SUCCESS;
    }
    else
    {
        *pU = (HI_UNF_DISP_3D_E)(*pM);
        return HI_SUCCESS;
    }
}
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
static HI_DRV_DISP_LAYER_E s_DrvLayerTab[HI_UNF_DISP_LAYER_BUTT] = 
{HI_DRV_DISP_LAYER_VIDEO0, HI_DRV_DISP_LAYER_VIDEO1, HI_DRV_DISP_LAYER_VIDEO2,
 HI_DRV_DISP_LAYER_GFX0,   HI_DRV_DISP_LAYER_GFX1,   HI_DRV_DISP_LAYER_GFX2
};

static HI_UNF_DISP_LAYER_E s_UnfLayerTab[HI_DRV_DISP_LAYER_BUTT] = 
{HI_UNF_DISP_LAYER_VIDEO0, HI_UNF_DISP_LAYER_VIDEO1, HI_UNF_DISP_LAYER_VIDEO2,
 HI_UNF_DISP_LAYER_GFX0,   HI_UNF_DISP_LAYER_GFX1,   HI_UNF_DISP_LAYER_GFX2
};

HI_S32 Transfer_LayerID(HI_UNF_DISP_LAYER_E *pU, HI_DRV_DISP_LAYER_E *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        if (*pU < HI_UNF_DISP_LAYER_BUTT)
        {
            *pM = s_DrvLayerTab[*pU];
            return HI_SUCCESS;
        }
        else
        {
            return HI_FAILURE;
        }
    }
    else
    {
        if(*pM < HI_DRV_DISP_LAYER_BUTT)
        {
            *pU = s_UnfLayerTab[*pM];
            return HI_SUCCESS;
        }
        else
        {
            return HI_FAILURE;
        }
    }

}
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

HI_DRV_DISP_FMT_E Convert_TVHDFmtU2V(HI_UNF_ENC_FMT_E U)
{
    if (U <= HI_UNF_ENC_FMT_480P_60)
    {
        HI_U32 t;
        
        t = (HI_U32)U;
        t = t - (HI_U32)HI_UNF_ENC_FMT_1080P_60;
        t = t + (HI_U32)HI_DRV_DISP_FMT_1080P_60;
        return (HI_DRV_DISP_FMT_E)t;
    }
    else
    {
        return HI_DRV_DISP_FMT_1080i_50;
    }
}

HI_UNF_ENC_FMT_E Convert_TVHDFmtV2U(HI_DRV_DISP_FMT_E V)
{
    if (V <= HI_DRV_DISP_FMT_480P_60)
    {
        HI_U32 t;
        
        t = (HI_U32)V;
        t = t - (HI_U32)HI_DRV_DISP_FMT_1080P_60;
        t = t + (HI_U32)HI_UNF_ENC_FMT_1080P_60;
        return (HI_UNF_ENC_FMT_E)t;
    }
    else
    {
        return HI_UNF_ENC_FMT_1080i_50;
    }
}

HI_DRV_DISP_FMT_E Convert_TVSDFmtU2V(HI_UNF_ENC_FMT_E U)
{
    switch (U)
    {
        case HI_UNF_ENC_FMT_PAL:
            return HI_DRV_DISP_FMT_PAL;
        case HI_UNF_ENC_FMT_PAL_N:
            return HI_DRV_DISP_FMT_PAL_N;
        case HI_UNF_ENC_FMT_PAL_Nc:
            return HI_DRV_DISP_FMT_PAL_Nc;
        case HI_UNF_ENC_FMT_NTSC:
            return HI_DRV_DISP_FMT_NTSC;
        case HI_UNF_ENC_FMT_NTSC_J:
            return HI_DRV_DISP_FMT_NTSC_J;
        case HI_UNF_ENC_FMT_NTSC_PAL_M:
            return HI_DRV_DISP_FMT_PAL_M;
        case HI_UNF_ENC_FMT_SECAM_SIN:
            return HI_DRV_DISP_FMT_SECAM_SIN;
        case HI_UNF_ENC_FMT_SECAM_COS:
            return HI_DRV_DISP_FMT_SECAM_COS;
        default:
            return HI_DRV_DISP_FMT_PAL;
    }
}

HI_UNF_ENC_FMT_E Convert_TVSDFmtV2U(HI_DRV_DISP_FMT_E V)
{
    switch (V)
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
        case HI_DRV_DISP_FMT_1440x576i_50:
            return HI_UNF_ENC_FMT_PAL;
        case HI_DRV_DISP_FMT_PAL_N:
            return HI_UNF_ENC_FMT_PAL_N;
        case HI_DRV_DISP_FMT_PAL_Nc:
            return HI_UNF_ENC_FMT_PAL_Nc;

        case HI_DRV_DISP_FMT_NTSC:
        case HI_DRV_DISP_FMT_PAL_60:
        case HI_DRV_DISP_FMT_NTSC_443:
        case HI_DRV_DISP_FMT_1440x480i_60:
            return HI_UNF_ENC_FMT_NTSC;
        case HI_DRV_DISP_FMT_NTSC_J:
            return HI_UNF_ENC_FMT_NTSC_J;
        case HI_DRV_DISP_FMT_PAL_M:
            return HI_UNF_ENC_FMT_NTSC_PAL_M;

        case HI_DRV_DISP_FMT_SECAM_SIN:
        case HI_DRV_DISP_FMT_SECAM_L:
        case HI_DRV_DISP_FMT_SECAM_B:
        case HI_DRV_DISP_FMT_SECAM_G:
        case HI_DRV_DISP_FMT_SECAM_D:
        case HI_DRV_DISP_FMT_SECAM_K:
        case HI_DRV_DISP_FMT_SECAM_H:
            return HI_UNF_ENC_FMT_SECAM_SIN;
        case HI_DRV_DISP_FMT_SECAM_COS:
            return HI_UNF_ENC_FMT_SECAM_COS;
        default:
            return HI_UNF_ENC_FMT_PAL;
    }
}

HI_DRV_DISP_FMT_E Convert_3DFmtU2V(HI_UNF_ENC_FMT_E U)
{
    if (U <= HI_UNF_ENC_FMT_720P_50_FRAME_PACKING)
    {
        HI_U32 t;
        
        t = (HI_U32)U;
        t = t - (HI_U32)HI_UNF_ENC_FMT_1080P_24_FRAME_PACKING;
        t = t + HI_DRV_DISP_FMT_1080P_24_FP;
        return (HI_DRV_DISP_FMT_E)t;
    }
    else
    {
        return HI_DRV_DISP_FMT_1080P_24_FP;
    }
}

HI_UNF_ENC_FMT_E Convert_3DFmtV2U(HI_DRV_DISP_FMT_E V)
{
    if (V <= HI_DRV_DISP_FMT_720P_50_FP)
    {
        HI_U32 t;
        
        t = (HI_U32)V;
        t = t - (HI_U32)HI_DRV_DISP_FMT_1080P_24_FP;
        t = t + (HI_U32)HI_UNF_ENC_FMT_1080P_24_FRAME_PACKING;
        return (HI_UNF_ENC_FMT_E)t;
    }
    else
    {
        return HI_UNF_ENC_FMT_1080P_24_FRAME_PACKING;
    }
}

HI_DRV_DISP_FMT_E Convert_DVIFmtU2V(HI_UNF_ENC_FMT_E U)
{
    if (U <= HI_UNF_ENC_FMT_VESA_2048X1152_60)
    {
        HI_U32 t;
        
        t = (HI_U32)U;
        t = t - (HI_U32)HI_UNF_ENC_FMT_861D_640X480_60;
        t = t + (HI_U32)HI_DRV_DISP_FMT_861D_640X480_60;
        return (HI_DRV_DISP_FMT_E)t;
    }
    else
    {
        return HI_DRV_DISP_FMT_861D_640X480_60;
    }
}

HI_UNF_ENC_FMT_E Convert_DVIFmtV2U(HI_DRV_DISP_FMT_E V)
{
    if (V <= HI_DRV_DISP_FMT_VESA_2048X1152_60)
    {
        HI_U32 t;
        
        t = (HI_U32)V;
        t = t - (HI_U32)HI_DRV_DISP_FMT_861D_640X480_60;
        t = t + (HI_U32)HI_UNF_ENC_FMT_861D_640X480_60;

        return (HI_UNF_ENC_FMT_E)t;
    }
    else
    {
        return HI_UNF_ENC_FMT_861D_640X480_60;
    }
}
HI_S32 Convert_DrvEncFmt(HI_UNF_ENC_FMT_E *pU, HI_DRV_DISP_FMT_E *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        if (*pU <= HI_UNF_ENC_FMT_480P_60)
        {
            *pM = Convert_TVHDFmtU2V(*pU);
            return HI_SUCCESS;
        }
        else if (*pU <= HI_UNF_ENC_FMT_SECAM_COS)
        {
            *pM = Convert_TVSDFmtU2V(*pU);
            return HI_SUCCESS;
        }
        else if (*pU <= HI_UNF_ENC_FMT_720P_50_FRAME_PACKING)
        {
            *pM = Convert_3DFmtU2V(*pU);
            return HI_SUCCESS;
        }
        else if (*pU <= HI_UNF_ENC_FMT_VESA_2048X1152_60)
        {
            *pM = Convert_DVIFmtU2V(*pU);
            return HI_SUCCESS;
        }
        else if (*pU == HI_UNF_ENC_FMT_BUTT)
        {
            *pM = HI_DRV_DISP_FMT_CUSTOM;
            return HI_SUCCESS;
        }
        else
        {
            return HI_FAILURE;
        }

    }
    else
    {
        if (*pM <= HI_DRV_DISP_FMT_480P_60)
        {
            *pU = Convert_TVHDFmtV2U(*pM);
            return HI_SUCCESS;
        }
        else if (*pM <= HI_DRV_DISP_FMT_1440x480i_60)
        {
            *pU = Convert_TVSDFmtV2U(*pM);
            return HI_SUCCESS;
        }
        else if (*pM <= HI_DRV_DISP_FMT_720P_50_FP)
        {
            *pU = Convert_3DFmtV2U(*pM);
            return HI_SUCCESS;
        }
        else if (*pM <= HI_DRV_DISP_FMT_VESA_2048X1152_60)
        {
            *pU = Convert_DVIFmtV2U(*pM);
            return HI_SUCCESS;
        }
        else if (*pM == HI_DRV_DISP_FMT_CUSTOM)
        {
            *pU = HI_UNF_ENC_FMT_BUTT;
            return HI_SUCCESS;
        }
        else
        {
            return HI_FAILURE;
        }    
    }

//    return HI_SUCCESS;
}
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

HI_S32 Transfer_AspectRatio(HI_UNF_DISP_ASPECT_RATIO_S *pU, HI_U32 *pH, HI_U32 *pV, HI_BOOL bu2m)
{
    if (bu2m)
    {
        switch(pU->enDispAspectRatio)
        {
            case HI_UNF_DISP_ASPECT_RATIO_AUTO:
                *pH = 0;
                *pV = 0;
            break;
            case HI_UNF_DISP_ASPECT_RATIO_4TO3:
                *pH = 4;
                *pV = 3;
            break;
            case HI_UNF_DISP_ASPECT_RATIO_16TO9:
                *pH = 16;
                *pV = 9;
            break;
            case HI_UNF_DISP_ASPECT_RATIO_221TO1:
                *pH = 221;
                *pV = 100;
            break;
            case HI_UNF_DISP_ASPECT_RATIO_USER:
                *pH = pU->u32UserAspectWidth;
                *pV = pU->u32UserAspectHeight;
            break;
            default:
                *pH = 0;
                *pV = 0;
            break;
        }
    }
    else
    {
        if ( !(*pH) || !(*pV) )
        {
            pU->enDispAspectRatio = HI_UNF_DISP_ASPECT_RATIO_AUTO;
        }
        else if ( (*pH == 4) && (*pV == 3) )
        {
            pU->enDispAspectRatio = HI_UNF_DISP_ASPECT_RATIO_4TO3;
        }
        else if ( (*pH == 16) && (*pV == 9) )
        {
            pU->enDispAspectRatio = HI_UNF_DISP_ASPECT_RATIO_16TO9;
        }
        else if ( (*pH == 221) && (*pV == 100) )
        {
            pU->enDispAspectRatio = HI_UNF_DISP_ASPECT_RATIO_221TO1;
        }
        else
        {
            pU->enDispAspectRatio = HI_UNF_DISP_ASPECT_RATIO_USER;
            pU->u32UserAspectWidth  = *pH;
            pU->u32UserAspectHeight = *pV;
        }
    }

    return HI_SUCCESS;
}

HI_S32 Transfer_Timing(HI_UNF_DISP_TIMING_S *pU, HI_DRV_DISP_TIMING_S *pM, HI_BOOL bu2m)
{

    return HI_SUCCESS;
}

HI_S32 Transfer_BGColor(HI_UNF_DISP_BG_COLOR_S *pU, HI_DRV_DISP_COLOR_S *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        pM->u8Blue  = pU->u8Blue;
        pM->u8Green = pU->u8Green;
        pM->u8Red   = pU->u8Red;
    }
    else
    {
        pU->u8Blue  = pM->u8Blue;
        pU->u8Green = pM->u8Green;
        pU->u8Red   = pM->u8Red;
    }

    return HI_SUCCESS;
}

HI_S32 Transfer_VideoFormat(HI_UNF_VIDEO_FORMAT_E  *pU, HI_DRV_PIX_FORMAT_E *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
       switch (*pU)
        {
            case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
            *pM = HI_DRV_PIX_FMT_NV61_2X1;
            break;
            case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
            *pM = HI_DRV_PIX_FMT_NV21;
            break;
            case HI_UNF_FORMAT_YUV_SEMIPLANAR_400:
            *pM = HI_DRV_PIX_FMT_NV80;
            break;

            case HI_UNF_FORMAT_YUV_SEMIPLANAR_411:
            *pM = HI_DRV_PIX_FMT_NV12_411;
            break;
            case HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2:
            *pM = HI_DRV_PIX_FMT_NV61;
            break;
            case HI_UNF_FORMAT_YUV_SEMIPLANAR_444:
            *pM = HI_DRV_PIX_FMT_NV42;
            break;
            case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
            *pM = HI_DRV_PIX_FMT_UYVY;
            break;
            case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
            *pM = HI_DRV_PIX_FMT_YUYV;
            break;

            case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
            *pM = HI_DRV_PIX_FMT_YVYU;
            break;
            case HI_UNF_FORMAT_YUV_PLANAR_400:
            *pM = HI_DRV_PIX_FMT_YUV400;
            break;
            case HI_UNF_FORMAT_YUV_PLANAR_411:
            *pM = HI_DRV_PIX_FMT_YUV411;
            break;
            case HI_UNF_FORMAT_YUV_PLANAR_420:
            *pM = HI_DRV_PIX_FMT_YUV420p;
            break;

            case HI_UNF_FORMAT_YUV_PLANAR_422_1X2:
            *pM = HI_DRV_PIX_FMT_YUV422_1X2;
            break;
            case HI_UNF_FORMAT_YUV_PLANAR_422_2X1:
            *pM = HI_DRV_PIX_FMT_YUV422_2X1;
            break;
            case HI_UNF_FORMAT_YUV_PLANAR_444:
            *pM = HI_DRV_PIX_FMT_YUV_444;
            break;
            case HI_UNF_FORMAT_YUV_PLANAR_410:
            *pM = HI_DRV_PIX_FMT_YUV410p;
            break;
            default:
            return HI_FAILURE;
        }
    }
    else
    {
        switch (*pM)
        {
            case HI_DRV_PIX_FMT_NV61_2X1:
            *pU = HI_UNF_FORMAT_YUV_SEMIPLANAR_422;
            break;
            case HI_DRV_PIX_FMT_NV21:
            *pU = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
            break;
            case HI_DRV_PIX_FMT_NV80:
            *pU = HI_UNF_FORMAT_YUV_SEMIPLANAR_400;
            break;
            case HI_DRV_PIX_FMT_NV12_411:
            *pU = HI_UNF_FORMAT_YUV_SEMIPLANAR_411;
            break;
            case HI_DRV_PIX_FMT_NV61:
            *pU = HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2;
            break;
            case HI_DRV_PIX_FMT_NV42:
            *pU = HI_UNF_FORMAT_YUV_SEMIPLANAR_444;
            break;
            case HI_DRV_PIX_FMT_UYVY:
            *pU = HI_UNF_FORMAT_YUV_PACKAGE_UYVY;
            break;
            case HI_DRV_PIX_FMT_YUYV:
            *pU = HI_UNF_FORMAT_YUV_PACKAGE_YUYV;
            break;
            case HI_DRV_PIX_FMT_YVYU:
            *pU = HI_UNF_FORMAT_YUV_PACKAGE_YVYU;
            break;

            case HI_DRV_PIX_FMT_YUV400:
            *pU = HI_UNF_FORMAT_YUV_PLANAR_400;
            break;
            case HI_DRV_PIX_FMT_YUV411:
            *pU = HI_UNF_FORMAT_YUV_PLANAR_411;
            break;
            case HI_DRV_PIX_FMT_YUV420p:
            *pU = HI_UNF_FORMAT_YUV_PLANAR_420;
            break;
            case HI_DRV_PIX_FMT_YUV422_1X2:
            *pU = HI_UNF_FORMAT_YUV_PLANAR_422_1X2;
            break;
            case HI_DRV_PIX_FMT_YUV422_2X1:
            *pU = HI_UNF_FORMAT_YUV_PLANAR_422_2X1;
            break;
            case HI_DRV_PIX_FMT_YUV_444:
            *pU = HI_UNF_FORMAT_YUV_PLANAR_444;
            break;
            case HI_DRV_PIX_FMT_YUV410p:
            *pU = HI_UNF_FORMAT_YUV_PLANAR_410;
            break;

            case HI_DRV_PIX_FMT_NV12:
            default:
            return HI_FAILURE;

        }
    }

    return HI_SUCCESS;
}

static HI_DRV_ASP_RAT_MODE_E s_DrvACModeTab[HI_UNF_VO_ASPECT_CVRS_BUTT]=
{
    HI_DRV_ASP_RAT_MODE_FULL,
    HI_DRV_ASP_RAT_MODE_LETTERBOX,
    HI_DRV_ASP_RAT_MODE_PANANDSCAN,
    HI_DRV_ASP_RAT_MODE_COMBINED,
    HI_DRV_ASP_RAT_MODE_FULL_H,
    HI_DRV_ASP_RAT_MODE_FULL_V,
};
static HI_UNF_VO_ASPECT_CVRS_E s_UnfACModeTab[HI_DRV_ASP_RAT_MODE_BUTT]=
{
    HI_UNF_VO_ASPECT_CVRS_IGNORE,   
    HI_UNF_VO_ASPECT_CVRS_LETTERBOX,
    HI_UNF_VO_ASPECT_CVRS_PAN_SCAN,
    HI_UNF_VO_ASPECT_CVRS_COMBINED,
    HI_UNF_VO_ASPECT_CVRS_HORIZONTAL_FULL,
    HI_UNF_VO_ASPECT_CVRS_VERTICAL_FULL,
    HI_UNF_VO_ASPECT_CVRS_BUTT,
};

HI_S32 Transfe_ARConvert(HI_UNF_VO_ASPECT_CVRS_E  *pU, HI_DRV_ASP_RAT_MODE_E *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        if (*pU < HI_UNF_VO_ASPECT_CVRS_BUTT)
        {
            *pM = s_DrvACModeTab[*pU];
            return HI_SUCCESS;
        }
        else
        {
            return HI_FAILURE;
        }
    }
    else
    {
        if (*pM < HI_DRV_ASP_RAT_MODE_BUTT)
        {
            *pU = s_UnfACModeTab[*pM];
            return HI_SUCCESS;
        }
        else
        {
            return HI_FAILURE;
        }
    }

    //return HI_FAILURE;
}

HI_S32 Transfe_ZOrder(HI_LAYER_ZORDER_E *pU, HI_DRV_DISP_ZORDER_E *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        *pM = (HI_DRV_DISP_ZORDER_E) *pU;
    }
    else
    {
        *pU = (HI_LAYER_ZORDER_E)*pM;
    }
    
    return HI_SUCCESS;
}
HI_S32 Transfe_SwitchMode(HI_UNF_WINDOW_FREEZE_MODE_E *pU, HI_DRV_WIN_SWITCH_E *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        *pM = (HI_DRV_WIN_SWITCH_E)(*pU);
    }
    else
    {
        *pU = (HI_UNF_WINDOW_FREEZE_MODE_E)(*pM);
    }

    return HI_SUCCESS;
}

HI_S32 Transfe_Rotate(HI_UNF_VO_ROTATION_E *pU, HI_DRV_ROT_ANGLE_E *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        if (*pU)
        {
            return HI_SUCCESS;
        }
        else
        {
            return HI_FAILURE;
        }
    }
    else
    {
        if (*pM)
        {
            return HI_SUCCESS;
        }
        else
        {
            return HI_FAILURE;
        }
    }

}


static HI_DRV_FRAME_TYPE_E s_DrvFrameTypeTab[HI_UNF_FRAME_PACKING_TYPE_BUTT] = 
{HI_DRV_FT_NOT_STEREO, HI_DRV_FT_SBS, HI_DRV_FT_TAB, HI_DRV_FT_FPK};

static HI_UNF_VIDEO_FRAME_PACKING_TYPE_E s_UnfFrameTypeTab[HI_DRV_FT_BUTT] = 
{
HI_UNF_FRAME_PACKING_TYPE_NONE,
HI_UNF_FRAME_PACKING_TYPE_SIDE_BY_SIDE,
HI_UNF_FRAME_PACKING_TYPE_TOP_AND_BOTTOM,
HI_UNF_FRAME_PACKING_TYPE_TIME_INTERLACED,
};

static HI_DRV_FIELD_MODE_E s_DrvFMTab[HI_UNF_VIDEO_FIELD_BUTT] = 
{HI_DRV_FIELD_ALL, HI_DRV_FIELD_TOP, HI_DRV_FIELD_BOTTOM};

static HI_UNF_VIDEO_FIELD_MODE_E s_UnfFMTab[HI_DRV_FIELD_BUTT] = 
{HI_UNF_VIDEO_FIELD_ALL, HI_UNF_VIDEO_FIELD_TOP, HI_UNF_VIDEO_FIELD_BOTTOM};

#define TRANSFER_A2B(a, b)   a = b
#define TRANSFER_A2B_R(a, b) b = a



HI_S32 Transfer_Frame(HI_UNF_VIDEO_FRAME_INFO_S  *pU, HI_DRV_VIDEO_FRAME_S *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        memset(pM, 0, sizeof(HI_DRV_VIDEO_FRAME_S));

        pM->eFrmType = s_DrvFrameTypeTab[pU->enFramePackingType];

        Transfer_VideoFormat(&pU->enVideoFormat, &pM->ePixFormat, HI_TRUE);

        TRANSFER_A2B(pM->bProgressive, pU->bProgressive);
        TRANSFER_A2B(pM->bTopFieldFirst, pU->bTopFieldFirst);
        TRANSFER_A2B(pM->u32Width    , pU->u32Width);
        TRANSFER_A2B(pM->u32Height   , pU->u32Height);
        //TRANSFER_A2B(pM->stDispRect.s32X      , pU->u32DisplayCenterX - (pU->u32DisplayWidth>>1) );
        pM->stDispRect.s32X = (HI_S32)(pU->u32DisplayCenterX - (pU->u32DisplayWidth>>1));
        //TRANSFER_A2B(pM->stDispRect.s32Y      , pU->u32DisplayCenterY - (pU->u32DisplayHeight>>1));
        pM->stDispRect.s32Y = (HI_S32)(pU->u32DisplayCenterY - (pU->u32DisplayHeight>>1));
        TRANSFER_A2B(pM->stDispRect.s32Width  , pU->u32DisplayWidth);
        TRANSFER_A2B(pM->stDispRect.s32Height , pU->u32DisplayHeight);
        TRANSFER_A2B(pM->u32AspectWidth , (HI_U8)pU->u32AspectWidth);
        TRANSFER_A2B(pM->u32AspectHeight, (HI_U8)pU->u32AspectHeight);

        // TODO:
        //TRANSFER_A2B(pM->u32FrameRate , pU->stFrameRate);

        TRANSFER_A2B(pM->u32FrameRate, pU->u32FrameIndex);
        TRANSFER_A2B(pM->u32SrcPts , pU->u32SrcPts);
        TRANSFER_A2B(pM->u32Pts    , pU->u32Pts);

        pM->enFieldMode = s_DrvFMTab[pU->enFieldMode];

        TRANSFER_A2B(pM->u32ErrorLevel, pU->u32ErrorLevel);

        TRANSFER_A2B(pM->stBufAddr[0].u32PhyAddr_Y  , pU->stVideoFrameAddr[0].u32YAddr    );
        TRANSFER_A2B(pM->stBufAddr[0].u32Stride_Y   , pU->stVideoFrameAddr[0].u32YStride  );
        TRANSFER_A2B(pM->stBufAddr[0].u32PhyAddr_C  , pU->stVideoFrameAddr[0].u32CAddr    );
        TRANSFER_A2B(pM->stBufAddr[0].u32Stride_C   , pU->stVideoFrameAddr[0].u32CStride  );
        TRANSFER_A2B(pM->stBufAddr[0].u32PhyAddr_Cr , pU->stVideoFrameAddr[0].u32CrAddr   );
        TRANSFER_A2B(pM->stBufAddr[0].u32Stride_Cr  , pU->stVideoFrameAddr[0].u32CrStride ); 
        TRANSFER_A2B(pM->stBufAddr[1].u32PhyAddr_Y  , pU->stVideoFrameAddr[1].u32YAddr    );
        TRANSFER_A2B(pM->stBufAddr[1].u32Stride_Y   , pU->stVideoFrameAddr[1].u32YStride  );
        TRANSFER_A2B(pM->stBufAddr[1].u32PhyAddr_C  , pU->stVideoFrameAddr[1].u32CAddr    );
        TRANSFER_A2B(pM->stBufAddr[1].u32Stride_C   , pU->stVideoFrameAddr[1].u32CStride  );
        TRANSFER_A2B(pM->stBufAddr[1].u32PhyAddr_Cr , pU->stVideoFrameAddr[1].u32CrAddr   );
        TRANSFER_A2B(pM->stBufAddr[1].u32Stride_Cr  , pU->stVideoFrameAddr[1].u32CrStride ); 

        memcpy(pM->u32Priv, pU->u32Private, sizeof(HI_U32) * 64);

        //pU->u32Circumrotate;
        //pU->bVerticalMirror;
        //pU->bHorizontalMirror;

        return HI_SUCCESS;
    }
    else
    {
        memset(pU, 0, sizeof(HI_UNF_VIDEO_FRAME_INFO_S));

        pU->enFramePackingType = s_UnfFrameTypeTab[pM->eFrmType];

        Transfer_VideoFormat(&pU->enVideoFormat, &pM->ePixFormat, HI_FALSE);

        TRANSFER_A2B_R(pM->bProgressive, pU->bProgressive);
        TRANSFER_A2B_R(pM->bTopFieldFirst, pU->bTopFieldFirst);
        TRANSFER_A2B_R(pM->u32Width    , pU->u32Width);
        TRANSFER_A2B_R(pM->u32Height   , pU->u32Height);
        //TRANSFER_A2B_R(pM->stDispRect.s32X + (pM->stDispRect.s32Width>>1)  , pU->u32DisplayCenterX);
        pU->u32DisplayCenterX = (HI_U32)(pM->stDispRect.s32X + (pM->stDispRect.s32Width>>1));
        //TRANSFER_A2B_R(pM->stDispRect.s32Y + (pM->stDispRect.s32Height>>1) , pU->u32DisplayCenterY);
        pU->u32DisplayCenterY = (HI_U32)(pM->stDispRect.s32Y + (pM->stDispRect.s32Height>>1) );
        TRANSFER_A2B_R(pM->stDispRect.s32Width  , pU->u32DisplayWidth);
        TRANSFER_A2B_R(pM->stDispRect.s32Height , pU->u32DisplayHeight);
        TRANSFER_A2B_R((HI_U32)pM->u32AspectWidth, pU->u32AspectWidth);
        TRANSFER_A2B_R((HI_U32)pM->u32AspectHeight, pU->u32AspectHeight);

        // TODO:
        //TRANSFER_A2B_R(pM->u32FrameRate , pU->stFrameRate);

        TRANSFER_A2B_R(pM->u32FrameIndex, pU->u32FrameIndex);
        TRANSFER_A2B_R(pM->u32SrcPts , pU->u32SrcPts);
        TRANSFER_A2B_R(pM->u32Pts    , pU->u32Pts);

        pU->enFieldMode= s_UnfFMTab[pM->enFieldMode];

        TRANSFER_A2B_R(pM->u32ErrorLevel, pU->u32ErrorLevel);


        TRANSFER_A2B_R(pM->stBufAddr[0].u32PhyAddr_Y  , pU->stVideoFrameAddr[0].u32YAddr    );
        TRANSFER_A2B_R(pM->stBufAddr[0].u32Stride_Y   , pU->stVideoFrameAddr[0].u32YStride  );
        TRANSFER_A2B_R(pM->stBufAddr[0].u32PhyAddr_C  , pU->stVideoFrameAddr[0].u32CAddr    );
        TRANSFER_A2B_R(pM->stBufAddr[0].u32Stride_C   , pU->stVideoFrameAddr[0].u32CStride  );
        TRANSFER_A2B_R(pM->stBufAddr[0].u32PhyAddr_Cr , pU->stVideoFrameAddr[0].u32CrAddr   );
        TRANSFER_A2B_R(pM->stBufAddr[0].u32Stride_Cr  , pU->stVideoFrameAddr[0].u32CrStride ); 
        TRANSFER_A2B_R(pM->stBufAddr[1].u32PhyAddr_Y  , pU->stVideoFrameAddr[1].u32YAddr    );
        TRANSFER_A2B_R(pM->stBufAddr[1].u32Stride_Y   , pU->stVideoFrameAddr[1].u32YStride  );
        TRANSFER_A2B_R(pM->stBufAddr[1].u32PhyAddr_C  , pU->stVideoFrameAddr[1].u32CAddr    );
        TRANSFER_A2B_R(pM->stBufAddr[1].u32Stride_C   , pU->stVideoFrameAddr[1].u32CStride  );
        TRANSFER_A2B_R(pM->stBufAddr[1].u32PhyAddr_Cr , pU->stVideoFrameAddr[1].u32CrAddr   );
        TRANSFER_A2B_R(pM->stBufAddr[1].u32Stride_Cr  , pU->stVideoFrameAddr[1].u32CrStride );  

        //printf(" transfer y=%X, c=%x\n", pU->stVideoFrameAddr[0].u32YAddr,
        //	                             pU->stVideoFrameAddr[0].u32CAddr);

        memcpy(pU->u32Private, pM->u32Priv, sizeof(HI_U32) * 64);

        return HI_SUCCESS;
    }
}

HI_S32 Transfer_BufferPool(HI_UNF_BUFFER_ATTR_S *pU, HI_DRV_VIDEO_BUFFER_POOL_S*pM, HI_BOOL bu2m)
{
#if 0
    if (bu2m)
    {

    }
    else
    {

    }
#endif

    return HI_SUCCESS;
}

HI_S32 Transfer_CastCfg(HI_UNF_DISP_CAST_ATTR_S  *pU, HI_DRV_DISP_CAST_CFG_S *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        HI_S32 i;
        memset(pM, 0, sizeof(HI_DRV_DISP_CAST_CFG_S));

        Transfer_VideoFormat(&pU->enFormat, &pM->eFormat, HI_TRUE);

        pM->u32Width   = pU->u32Width;
        pM->u32Height  = pU->u32Height;

        pM->u32BufNumber = pU->u32BufNum;
        pM->bUserAlloc   = pU->bUserAlloc;
        pM->u32BufSize   = pU->u32BufSize;
        pM->u32BufStride = pU->u32BufStride;
        for(i=0; i<HI_DISP_CAST_BUFFER_MAX_NUMBER; i++)
        {
            pM->u32BufPhyAddr[i] = pU->u32BufPhyAddr[i];
        }
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}


HI_U8 Transfer_GetVdacIdFromPinIDForMPW(HI_U8 PinId)
{
    switch (PinId)
    {
        case 0:
            return (HI_U8)0;
        case 1:
            return (HI_U8)1;
        case 2:
            return (HI_U8)2;
        case 3:
            return (HI_U8)3;
        default:
            return (HI_U8)0xff;
    }
}

HI_S32 Transfer_Intf(HI_UNF_DISP_INTF_S *pU, HI_DRV_DISP_INTF_S *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        /* set invalid value */
        pM->u8VDAC_Y_G  = HI_DISP_VDAC_INVALID_ID;
        pM->u8VDAC_Pb_B = HI_DISP_VDAC_INVALID_ID;
        pM->u8VDAC_Pr_R = HI_DISP_VDAC_INVALID_ID;

        switch (pU->enIntfType)
        {
            case HI_UNF_DISP_INTF_TYPE_HDMI:
                pM->eID = (HI_DRV_DISP_INTF_ID_E)((HI_U32)HI_DRV_DISP_INTF_HDMI0 + ((HI_U32)pU->unIntf.enHdmi - (HI_U32)HI_UNF_HDMI_ID_0));
                if ((pM->eID > HI_DRV_DISP_INTF_HDMI2) || (pM->eID < HI_DRV_DISP_INTF_HDMI0))
                {
                    return HI_FAILURE;
                }
                break;
            case HI_UNF_DISP_INTF_TYPE_YPBPR:
                pM->eID = HI_DRV_DISP_INTF_YPBPR0;
                pM->u8VDAC_Y_G  = Transfer_GetVdacIdFromPinIDForMPW(pU->unIntf.stYPbPr.u8DacY);
                pM->u8VDAC_Pb_B = Transfer_GetVdacIdFromPinIDForMPW(pU->unIntf.stYPbPr.u8DacPb);
                pM->u8VDAC_Pr_R = Transfer_GetVdacIdFromPinIDForMPW(pU->unIntf.stYPbPr.u8DacPr);
                break;
            case HI_UNF_DISP_INTF_TYPE_SVIDEO:
                pM->eID = HI_DRV_DISP_INTF_SVIDEO0;
                pM->u8VDAC_Y_G  = Transfer_GetVdacIdFromPinIDForMPW(pU->unIntf.stSVideo.u8DacY);
                pM->u8VDAC_Pb_B = Transfer_GetVdacIdFromPinIDForMPW(pU->unIntf.stSVideo.u8DacC);
                break;
            case HI_UNF_DISP_INTF_TYPE_CVBS:
                pM->eID = HI_DRV_DISP_INTF_CVBS0;
                pM->u8VDAC_Y_G  = Transfer_GetVdacIdFromPinIDForMPW(pU->unIntf.stCVBS.u8Dac);
                break;
/*
            case HI_UNF_DISP_INTF_TYPE_LCD:
                pM->eID =  + (pU->unIntf.enLCD - );
                if (pM->eID > )
                {
                    return HI_FAILURE;
                }
                break;
            case HI_UNF_DISP_INTF_TYPE_BT1120:
                pM->eID =  + (pU->unIntf.enHDMI - );
                if (pM->eID > )
                {
                    return HI_FAILURE;
                }
                break;
            case HI_UNF_DISP_INTF_TYPE_BT656:
                pM->eID =  + (pU->unIntf.enHDMI - );
                if (pM->eID > )
                {
                    return HI_FAILURE;
                }
                break;
            case HI_UNF_DISP_INTF_TYPE_RGB:
                pM->eID =  + (pU->unIntf.enHDMI - );
                if (pM->eID > )
                {
                    return HI_FAILURE;
                }
                break;
*/
            default:
                return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

