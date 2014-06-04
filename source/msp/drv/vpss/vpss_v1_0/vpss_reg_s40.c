#include "vpss_reg_s40.h"
#include "vpss_common.h"
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif



HI_S32 VPSS_REG_RegWrite(volatile HI_U32 *a, HI_U32 b)
{
    *a = b;      
    return HI_SUCCESS;
}

HI_U32 VPSS_REG_RegRead(volatile HI_U32* a)
{
   return (*(a));
}

HI_S32 VPSS_REG_ReSetCRG(HI_VOID)
{   
    U_PERI_CRG60 PERI_CRG60;
    
    PERI_CRG60.u32 = g_pstRegCrg->PERI_CRG60.u32;
    PERI_CRG60.bits.vpss_cken = 1;
    PERI_CRG60.bits.vpss_srst_req = 1;
    g_pstRegCrg->PERI_CRG60.u32 = PERI_CRG60.u32;
    /*wait for reg ready*/
    udelay(1);
    PERI_CRG60.u32 = g_pstRegCrg->PERI_CRG60.u32;
    PERI_CRG60.bits.vpss_cken = 1;
    PERI_CRG60.bits.vpss_srst_req = 0;
    g_pstRegCrg->PERI_CRG60.u32 = PERI_CRG60.u32;
    udelay(1);
    
    return HI_SUCCESS;
}

HI_S32 VPSS_REG_CloseClock(HI_VOID)
{  
    U_PERI_CRG60 PERI_CRG60;
    
    PERI_CRG60.u32 = g_pstRegCrg->PERI_CRG60.u32;
    PERI_CRG60.bits.vpss_cken = 0;
    g_pstRegCrg->PERI_CRG60.u32 = PERI_CRG60.u32;
    /*wait for reg ready*/
    udelay(1);
    
    return HI_SUCCESS;
    
}
HI_S32 VPSS_REG_OpenClock(HI_VOID)
{  
    U_PERI_CRG60 PERI_CRG60;
    
    PERI_CRG60.u32 = g_pstRegCrg->PERI_CRG60.u32;
    PERI_CRG60.bits.vpss_cken = 1;
    g_pstRegCrg->PERI_CRG60.u32 = PERI_CRG60.u32;
    /*wait for reg ready*/
    udelay(1);
    
    return HI_SUCCESS;
    
}
HI_S32 VPSS_REG_BaseRegInit(VPSS_REG_S **ppstPhyReg)
{
    *ppstPhyReg = (VPSS_REG_S * )IO_ADDRESS(VPSS_BASE_ADDR);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_AppRegInit(VPSS_REG_S **ppstAppReg,HI_U32 u32VirAddr)
{
    *ppstAppReg = (VPSS_REG_S * )u32VirAddr;

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_ResetAppReg(HI_U32 u32AppAddr)
{
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S *)u32AppAddr;
    
    memset((void*)pstReg, 0, sizeof(VPSS_REG_S)); 

    VPSS_REG_RegWrite(&(pstReg->VPSS_MISCELLANEOUS.u32), 0x1003244);
    VPSS_REG_RegWrite(&(pstReg->VPSS_PNEXT), 0x0);
    VPSS_REG_RegWrite(&(pstReg->VPSS_INTMASK.u32), 0xf);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetIntMask(HI_U32 u32AppAddr,HI_U32 u32Mask)
{
    
    U_VPSS_INTMASK VPSS_INTMASK;
    
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S *)u32AppAddr;
    

    VPSS_INTMASK.u32 = u32Mask;
    
    VPSS_REG_RegWrite(&(pstReg->VPSS_INTMASK.u32), VPSS_INTMASK.u32); 

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_GetIntMask(HI_U32 u32AppAddr,HI_U32 *pu32Mask)
{
    VPSS_REG_S *pstReg;
    
    U_VPSS_INTMASK VPSS_INTMASK;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    VPSS_INTMASK.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_INTMASK.u32));


    *pu32Mask = VPSS_INTMASK.u32;

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_GetIntState(HI_U32 u32AppAddr,HI_U32 *pu32Int)
{
    U_VPSS_INTSTATE VPSS_INTSTATE;
    
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    
    VPSS_INTSTATE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_INTSTATE.u32));

    *pu32Int = VPSS_INTSTATE.u32;

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_GetRawIntState(HI_U32 u32AppAddr,HI_U32 *pu32RawInt)
{
    U_VPSS_RAWINT VPSS_RAWINT;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    
    VPSS_RAWINT.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_RAWINT.u32));

    *pu32RawInt = VPSS_RAWINT.u32;

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_ClearIntState(HI_U32 u32AppAddr,HI_U32 u32Data)
{
    U_VPSS_INTCLR VPSS_INTCLR;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    
    VPSS_INTCLR.u32 = u32Data;

    VPSS_REG_RegWrite(&(pstReg->VPSS_INTCLR.u32), VPSS_INTCLR.u32);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetTimeOut(HI_U32 u32AppAddr,HI_U32 u32Data)
{ 
    HI_U32 VPSS_TIMEOUT;
    VPSS_REG_S *pstReg;

    VPSS_TIMEOUT = u32Data;
    pstReg = (VPSS_REG_S *)u32AppAddr;
    
    VPSS_REG_RegWrite(&(pstReg->VPSS_TIMEOUT), VPSS_TIMEOUT);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_StartLogic(HI_U32 u32AppAddr,HI_U32 u32PhyAddr)
{
    U_VPSS_START VPSS_START;
    VPSS_REG_S *pstReg;

    //printk("\n u32AppAddr %x u32PhyAddr %x \n",u32AppAddr,u32PhyAddr);
    pstReg = (VPSS_REG_S *)u32PhyAddr;

    VPSS_REG_RegWrite(&(pstReg->VPSS_PNEXT), u32AppAddr);
    
    
    VPSS_START.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_START.u32));
    VPSS_START.u32 = 0x1;
    VPSS_REG_RegWrite(&(pstReg->VPSS_START.u32), VPSS_START.u32);
    return HI_SUCCESS;
}

HI_S32 VPSS_REG_EnPort(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL bEnable)
{
    U_VPSS_CTRL VPSS_CTRL;
    VPSS_REG_S *pstReg;

    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_CTRL.bits.vhd_en = bEnable;
            break;
        case VPSS_REG_STR:
            VPSS_CTRL.bits.str_en = bEnable;
            break;
        case VPSS_REG_SD:
            VPSS_CTRL.bits.vsd_en = bEnable;
            break;
        default:
            VPSS_FATAL("ePort Error\n");
    }

    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);
    //printk("\n pstReg->VPSS_CTRL.u32 %x\n",pstReg->VPSS_CTRL.u32);
    return HI_SUCCESS;
}

/*输入Image相关操作*/
/*************************************************************************************************/
HI_S32 VPSS_REG_SetImgSize(HI_U32 u32AppAddr,HI_U32 u32Height,HI_U32 u32Width,HI_BOOL bProgressive)
{
    U_VPSS_IMGSIZE VPSS_IMGSIZE;
    VPSS_REG_S *pstReg;

    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    VPSS_IMGSIZE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_IMGSIZE.u32));
    
    if(bProgressive)
    {
        VPSS_IMGSIZE.bits.imgheight = u32Height -1;
    }
    else
    {
        VPSS_IMGSIZE.bits.imgheight = (u32Height/2 - 1);
    }
    
    VPSS_IMGSIZE.bits.imgwidth = u32Width - 1;

    VPSS_REG_RegWrite(&(pstReg->VPSS_IMGSIZE.u32), VPSS_IMGSIZE.u32);
    return HI_SUCCESS;
}


HI_S32 VPSS_REG_SetImgAddr(HI_U32 u32AppAddr,REG_FIELDPOS_E ePos,HI_U32 u32Yaddr,HI_U32 u32Caddr)
{
    HI_U32 VPSS_CURYADDR;
    HI_U32 VPSS_CURCADDR;
    
    HI_U32 VPSS_REFYADDR;
    HI_U32 VPSS_REFCADDR;

    HI_U32 VPSS_NEXT1YADDR;
    HI_U32 VPSS_NEXT1CADDR;
    
    HI_U32 VPSS_NEXT2YADDR;
    HI_U32 VPSS_NEXT2CADDR;
    
    HI_U32 VPSS_NEXT3YADDR;
    HI_U32 VPSS_NEXT3CADDR;
    
    VPSS_REG_S *pstReg;
    
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    switch(ePos)
    {   
        case LAST_FIELD:
            VPSS_REFYADDR = VPSS_REG_RegRead(&(pstReg->VPSS_REFYADDR));
            VPSS_REFCADDR = VPSS_REG_RegRead(&(pstReg->VPSS_REFCADDR));

            VPSS_REFYADDR = u32Yaddr;
            VPSS_REFCADDR = u32Caddr;

            VPSS_REG_RegWrite(&(pstReg->VPSS_REFYADDR), VPSS_REFYADDR);
            VPSS_REG_RegWrite(&(pstReg->VPSS_REFCADDR), VPSS_REFCADDR);
            break;
        case CUR_FIELD:
            VPSS_CURYADDR = VPSS_REG_RegRead(&(pstReg->VPSS_CURYADDR));
            VPSS_CURCADDR = VPSS_REG_RegRead(&(pstReg->VPSS_CURCADDR));

            VPSS_CURYADDR = u32Yaddr;
            VPSS_CURCADDR = u32Caddr;

            VPSS_REG_RegWrite(&(pstReg->VPSS_CURYADDR), VPSS_CURYADDR);
            VPSS_REG_RegWrite(&(pstReg->VPSS_CURCADDR), VPSS_CURCADDR);
            /*
            printk("\n*************************\n"
                    "\nVPSS_CURYADDR %x VPSS_CURCADDR %x\n",
                        pstReg->VPSS_CURYADDR,pstReg->VPSS_CURCADDR);
                */
            break;
        case NEXT1_FIELD:
            VPSS_NEXT1YADDR = VPSS_REG_RegRead(&(pstReg->VPSS_NEXT1YADDR));
            VPSS_NEXT1CADDR = VPSS_REG_RegRead(&(pstReg->VPSS_NEXT1CADDR));

            VPSS_NEXT1YADDR = u32Yaddr;
            VPSS_NEXT1CADDR = u32Caddr;

            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT1YADDR), VPSS_NEXT1YADDR);
            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT1CADDR), VPSS_NEXT1CADDR);
            break;
        case NEXT2_FIELD:
            VPSS_NEXT2YADDR = VPSS_REG_RegRead(&(pstReg->VPSS_NEXT2YADDR));
            VPSS_NEXT2CADDR = VPSS_REG_RegRead(&(pstReg->VPSS_NEXT2CADDR));

            VPSS_NEXT2YADDR = u32Yaddr;
            VPSS_NEXT2CADDR = u32Caddr;

            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT2YADDR), VPSS_NEXT2YADDR);
            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT2CADDR), VPSS_NEXT2CADDR);
            break;
        case NEXT3_FIELD:
            VPSS_NEXT3YADDR = VPSS_REG_RegRead(&(pstReg->VPSS_NEXT3YADDR));
            VPSS_NEXT3CADDR = VPSS_REG_RegRead(&(pstReg->VPSS_NEXT3CADDR));

            VPSS_NEXT3YADDR = u32Yaddr;
            VPSS_NEXT3CADDR = u32Caddr;

            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT3YADDR), VPSS_NEXT3YADDR);
            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT3CADDR), VPSS_NEXT3CADDR);
            break;
        default:
            VPSS_FATAL("FIELD ERROR\n");
    }
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetImgStride(HI_U32 u32AppAddr,REG_FIELDPOS_E ePos,HI_U32 u32YStride,HI_U32 u32CStride)
{
    U_VPSS_CURSTRIDE VPSS_CURSTRIDE;
    U_VPSS_REFSTRIDE VPSS_REFSTRIDE;
    U_VPSS_NEXT1STRIDE VPSS_NEXT1STRIDE;
    U_VPSS_NEXT2STRIDE VPSS_NEXT2STRIDE;
    U_VPSS_NEXT3STRIDE VPSS_NEXT3STRIDE;
    
    VPSS_REG_S *pstReg;

    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    switch(ePos)
    {   
        case LAST_FIELD:
            VPSS_REFSTRIDE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_REFSTRIDE.u32));
            
            VPSS_REFSTRIDE.bits.refy_stride = u32YStride;
            VPSS_REFSTRIDE.bits.refc_stride = u32CStride;

            VPSS_REG_RegWrite(&(pstReg->VPSS_REFSTRIDE.u32), VPSS_REFSTRIDE.u32);
            break;
        case CUR_FIELD:
            VPSS_CURSTRIDE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CURSTRIDE.u32));
            
            VPSS_CURSTRIDE.bits.cury_stride = u32YStride;
            VPSS_CURSTRIDE.bits.curc_stride = u32CStride;

            VPSS_REG_RegWrite(&(pstReg->VPSS_CURSTRIDE.u32), VPSS_CURSTRIDE.u32);
            break;
        case NEXT1_FIELD:
            VPSS_NEXT1STRIDE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_NEXT1STRIDE.u32));
            
            VPSS_NEXT1STRIDE.bits.nxt1y_stride = u32YStride;
            VPSS_NEXT1STRIDE.bits.nxt1c_stride = u32CStride;

            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT1STRIDE.u32), VPSS_NEXT1STRIDE.u32);
            break;
        case NEXT2_FIELD:
            VPSS_NEXT2STRIDE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_NEXT2STRIDE.u32));
            
            VPSS_NEXT2STRIDE.bits.nxt2y_stride = u32YStride;
            VPSS_NEXT2STRIDE.bits.nxt2c_stride = u32CStride;

            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT2STRIDE.u32), VPSS_NEXT2STRIDE.u32);
            break;
        case NEXT3_FIELD:
            VPSS_NEXT3STRIDE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_NEXT3STRIDE.u32));
            
            VPSS_NEXT3STRIDE.bits.nxt3y_stride = u32YStride;
            VPSS_NEXT3STRIDE.bits.nxt3c_stride = u32CStride;

            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT3STRIDE.u32), VPSS_NEXT3STRIDE.u32);
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
    }
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetImgFormat(HI_U32 u32AppAddr,HI_DRV_PIX_FORMAT_E eFormat)
{
    U_VPSS_CTRL VPSS_CTRL;
    VPSS_REG_S *pstReg;

    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));

    switch(eFormat)
    {
        case HI_DRV_PIX_FMT_NV12:
        case HI_DRV_PIX_FMT_NV21:
            VPSS_CTRL.bits.in_b422 = 0x0;
            /*
            printk("\nHI_DRV_PIX_FMT_NV12 = %d HI_DRV_PIX_FMT_NV21=%d In=%d\n",
                HI_DRV_PIX_FMT_NV12,HI_DRV_PIX_FMT_NV21,eFormat);
                */
            break;
        case HI_DRV_PIX_FMT_NV16_2X1:
        case HI_DRV_PIX_FMT_NV61_2X1:
            VPSS_CTRL.bits.in_b422 = 0x1;
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
    }
    
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);

    return HI_SUCCESS;
}


HI_S32 VPSS_REG_SetImgReadMod(HI_U32 u32AppAddr,HI_BOOL bField)
{
    U_VPSS_CTRL VPSS_CTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    VPSS_CTRL.bits.bfield = bField;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);
    return HI_SUCCESS;
}
/*************************************************************************************************/


/********************************/
HI_S32 VPSS_REG_SetFrmSize(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Height,HI_U32 u32Width)
{
    U_VPSS_VHDSIZE VPSS_VHDSIZE;
    U_VPSS_VSDSIZE VPSS_VSDSIZE;
    U_VPSS_STRSIZE VPSS_STRSIZE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S *)u32AppAddr;
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHDSIZE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHDSIZE.u32));
            VPSS_VHDSIZE.bits.vhd_height = u32Height-1;
            VPSS_VHDSIZE.bits.vhd_width = u32Width-1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHDSIZE.u32), VPSS_VHDSIZE.u32);
    
            break;
        case VPSS_REG_SD ://SD
            VPSS_VSDSIZE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSDSIZE.u32));
            VPSS_VSDSIZE.bits.vsd_height = u32Height-1;
            VPSS_VSDSIZE.bits.vsd_width = u32Width-1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSDSIZE.u32), VPSS_VSDSIZE.u32);
            break;
        case VPSS_REG_STR://STR
            VPSS_STRSIZE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STRSIZE.u32));
            VPSS_STRSIZE.bits.str_height = u32Height-1;
            VPSS_STRSIZE.bits.str_width = u32Width-1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_STRSIZE.u32), VPSS_STRSIZE.u32);
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetFrmAddr(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Yaddr,HI_U32 u32Caddr)
{
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S *)u32AppAddr;
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHDYADDR), u32Yaddr);
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHDCADDR), u32Caddr);
            break;
        case VPSS_REG_STR://STR
            VPSS_REG_RegWrite(&(pstReg->VPSS_STRYADDR), u32Yaddr);
            VPSS_REG_RegWrite(&(pstReg->VPSS_STRCADDR), u32Caddr);
            break;
        case VPSS_REG_SD://SD
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSDYADDR), u32Yaddr);
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSDCADDR), u32Caddr);
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetFrmStride(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32YStride,HI_U32 u32CStride)
{
    U_VPSS_VHDSTRIDE VPSS_VHDSTRIDE;
    U_VPSS_VSDSTRIDE VPSS_VSDSTRIDE;
    U_VPSS_STRSTRIDE VPSS_STRSTRIDE;
    
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S *)u32AppAddr;
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHDSTRIDE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHDSTRIDE.u32));
            VPSS_VHDSTRIDE.bits.vhdy_stride = u32YStride;
            VPSS_VHDSTRIDE.bits.vhdc_stride = u32CStride;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHDSTRIDE.u32), VPSS_VHDSTRIDE.u32);
    
            break;
        case VPSS_REG_STR://SD
            VPSS_STRSTRIDE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STRSTRIDE.u32));
            VPSS_STRSTRIDE.bits.stry_stride = u32YStride;
            VPSS_STRSTRIDE.bits.strc_stride = u32CStride;
            VPSS_REG_RegWrite(&(pstReg->VPSS_STRSTRIDE.u32), VPSS_STRSTRIDE.u32);
            break;
        case VPSS_REG_SD://STR
            VPSS_VSDSTRIDE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSDSTRIDE.u32));
            VPSS_VSDSTRIDE.bits.vsdy_stride = u32YStride;
            VPSS_VSDSTRIDE.bits.vsdc_stride = u32CStride;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSDSTRIDE.u32), VPSS_VSDSTRIDE.u32);
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetFrmFormat(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_DRV_PIX_FORMAT_E eFormat)
{
    U_VPSS_CTRL VPSS_CTRL;
    HI_U32 u32Format;
    VPSS_REG_S *pstReg;

    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    switch(eFormat)
    {
        case HI_DRV_PIX_FMT_NV12:
        case HI_DRV_PIX_FMT_NV21:
            u32Format = 0x0;
            /*
             printk("\nHI_DRV_PIX_FMT_NV12 = %d HI_DRV_PIX_FMT_NV21=%d Out=%d\n",
                HI_DRV_PIX_FMT_NV12,HI_DRV_PIX_FMT_NV21,eFormat);
                */
            break;
        case HI_DRV_PIX_FMT_NV61_2X1:
        case HI_DRV_PIX_FMT_NV16_2X1:
            u32Format = 0x1;
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            return HI_FAILURE;
    }
    
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_CTRL.bits.vhd_b422 = u32Format;
     
            VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);
    
            break;
        case VPSS_REG_STR://SD
            VPSS_CTRL.bits.str_b422 = u32Format;
     
            VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);
            break;
        case VPSS_REG_SD://STR
            VPSS_CTRL.bits.vsd_b422 = u32Format;
     
            VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }
    return HI_SUCCESS;
}
/***************************************************************************************/


/***************************************************************************************/
HI_S32 VPSS_REG_SetZmeEnable(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,REG_ZME_MODE_E eMode,HI_BOOL bEnable)
{
    U_VPSS_VHD_VSP VPSS_VHD_VSP;
    U_VPSS_VSD_VSP VPSS_VSD_VSP;
    U_VPSS_STR_VSP VPSS_STR_VSP;

    U_VPSS_VHD_HSP VPSS_VHD_HSP;
    U_VPSS_VSD_HSP VPSS_VSD_HSP;
    U_VPSS_STR_HSP VPSS_STR_HSP;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            if((eMode ==  REG_ZME_MODE_HORL )||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_HSP.u32));
                VPSS_VHD_HSP.bits.hlmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_HSP.u32), VPSS_VHD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_HORC)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_HSP.u32));
                VPSS_VHD_HSP.bits.hchmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_HSP.u32), VPSS_VHD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERL)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VSP.u32));
                VPSS_VHD_VSP.bits.vlmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VSP.u32), VPSS_VHD_VSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERC)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VSP.u32));
                VPSS_VHD_VSP.bits.vchmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VSP.u32), VPSS_VHD_VSP.u32); 
            }
            break;
        case VPSS_REG_SD://SD
            if((eMode == REG_ZME_MODE_HORL )||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_HSP.u32));
                VPSS_VSD_HSP.bits.hlmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_HSP.u32), VPSS_VSD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_HORC)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_HSP.u32));
                VPSS_VSD_HSP.bits.hchmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_HSP.u32), VPSS_VSD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERL)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VSP.u32));
                VPSS_VSD_VSP.bits.vlmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VSP.u32), VPSS_VSD_VSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERC)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VSP.u32));
                VPSS_VSD_VSP.bits.vchmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VSP.u32), VPSS_VSD_VSP.u32); 
            }
            break;
        case VPSS_REG_STR://STR
            if((eMode == REG_ZME_MODE_HORL )||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_HSP.u32));
                VPSS_STR_HSP.bits.hlmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_HSP.u32), VPSS_STR_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_HORC)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_HSP.u32));
                VPSS_STR_HSP.bits.hchmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_HSP.u32), VPSS_STR_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERL)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VSP.u32));
                VPSS_STR_VSP.bits.vlmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VSP.u32), VPSS_STR_VSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERC)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VSP.u32));
                VPSS_STR_VSP.bits.vchmsc_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VSP.u32), VPSS_STR_VSP.u32); 
            }
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetZmeInSize(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Height,HI_U32 u32Width)
{
    VPSS_REG_S *pstReg;
    U_VPSS_VSD_ZMEIRESO VPSS_VSD_ZMEIRESO;
    U_VPSS_VHD_ZMEIRESO VPSS_VHD_ZMEIRESO;
    U_VPSS_STR_ZMEIRESO VPSS_STR_ZMEIRESO;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_ZMEIRESO.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_ZMEIRESO.u32));
            VPSS_VHD_ZMEIRESO.bits.ih = u32Height - 1;
            VPSS_VHD_ZMEIRESO.bits.iw = u32Width - 1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_ZMEIRESO.u32), VPSS_VHD_ZMEIRESO.u32);
            break;
        case VPSS_REG_SD://SD
            VPSS_VSD_ZMEIRESO.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_ZMEIRESO.u32));
            VPSS_VSD_ZMEIRESO.bits.ih = u32Height - 1;
            VPSS_VSD_ZMEIRESO.bits.iw = u32Width - 1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_ZMEIRESO.u32), VPSS_VSD_ZMEIRESO.u32);
            break;
        case VPSS_REG_STR://STR
            VPSS_STR_ZMEIRESO.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_ZMEIRESO.u32));
            VPSS_STR_ZMEIRESO.bits.ih = u32Height - 1;
            VPSS_STR_ZMEIRESO.bits.iw = u32Width - 1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_ZMEIRESO.u32), VPSS_STR_ZMEIRESO.u32);
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetZmeOutSize(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Height,HI_U32 u32Width)
{
    U_VPSS_VSD_ZMEORESO VPSS_VSD_ZMEORESO;
    U_VPSS_VHD_ZMEORESO VPSS_VHD_ZMEORESO;
    U_VPSS_STR_ZMEORESO VPSS_STR_ZMEORESO;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_ZMEORESO.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_ZMEORESO.u32));
            VPSS_VHD_ZMEORESO.bits.oh = u32Height - 1;
            VPSS_VHD_ZMEORESO.bits.ow = u32Width - 1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_ZMEORESO.u32), VPSS_VHD_ZMEORESO.u32);
            break;
        case VPSS_REG_SD://SD
            VPSS_VSD_ZMEORESO.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_ZMEORESO.u32));
            VPSS_VSD_ZMEORESO.bits.oh = u32Height - 1;
            VPSS_VSD_ZMEORESO.bits.ow = u32Width - 1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_ZMEORESO.u32), VPSS_VSD_ZMEORESO.u32);
            break;
        case VPSS_REG_STR://STR
            VPSS_STR_ZMEORESO.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_ZMEORESO.u32));
            VPSS_STR_ZMEORESO.bits.oh = u32Height - 1;
            VPSS_STR_ZMEORESO.bits.ow = u32Width - 1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_ZMEORESO.u32), VPSS_STR_ZMEORESO.u32);
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetZmeFirEnable(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,
                                    REG_ZME_MODE_E eMode,HI_BOOL bEnable)
{
    U_VPSS_VHD_VSP VPSS_VHD_VSP;
    U_VPSS_VSD_VSP VPSS_VSD_VSP;
    U_VPSS_STR_VSP VPSS_STR_VSP;

    U_VPSS_VHD_HSP VPSS_VHD_HSP;
    U_VPSS_VSD_HSP VPSS_VSD_HSP;
    U_VPSS_STR_HSP VPSS_STR_HSP;
    
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            if((eMode ==  REG_ZME_MODE_HORL )||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_HSP.u32));
                VPSS_VHD_HSP.bits.hlfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_HSP.u32), VPSS_VHD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_HORC)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_HSP.u32));
                VPSS_VHD_HSP.bits.hchfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_HSP.u32), VPSS_VHD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERL)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VSP.u32));
                VPSS_VHD_VSP.bits.vlfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VSP.u32), VPSS_VHD_VSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERC)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VSP.u32));
                VPSS_VHD_VSP.bits.vchfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VSP.u32), VPSS_VHD_VSP.u32); 
            }
            break;
        case VPSS_REG_SD://SD
            if((eMode == REG_ZME_MODE_HORL )||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_HSP.u32));
                VPSS_VSD_HSP.bits.hlfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_HSP.u32), VPSS_VSD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_HORC)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_HSP.u32));
                VPSS_VSD_HSP.bits.hchfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_HSP.u32), VPSS_VSD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERL)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VSP.u32));
                VPSS_VSD_VSP.bits.vlfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VSP.u32), VPSS_VSD_VSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERC)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VSP.u32));
                VPSS_VSD_VSP.bits.vchfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VSP.u32), VPSS_VSD_VSP.u32); 
            }
            break;
        case VPSS_REG_STR://STR
            if((eMode == REG_ZME_MODE_HORL )||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_HSP.u32));
                VPSS_STR_HSP.bits.hlfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_HSP.u32), VPSS_STR_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_HORC)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_HSP.u32));
                VPSS_STR_HSP.bits.hchfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_HSP.u32), VPSS_STR_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERL)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VSP.u32));
                VPSS_STR_VSP.bits.vlfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VSP.u32), VPSS_STR_VSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERC)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VSP.u32));
                VPSS_STR_VSP.bits.vchfir_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VSP.u32), VPSS_STR_VSP.u32); 
            }
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }

    return HI_SUCCESS;
} 
HI_S32 VPSS_REG_SetZmeMidEnable(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,
                                    REG_ZME_MODE_E eMode,HI_BOOL bEnable)
{
    U_VPSS_VHD_VSP VPSS_VHD_VSP;
    U_VPSS_VSD_VSP VPSS_VSD_VSP;
    U_VPSS_STR_VSP VPSS_STR_VSP;

    U_VPSS_VHD_HSP VPSS_VHD_HSP;
    U_VPSS_VSD_HSP VPSS_VSD_HSP;
    U_VPSS_STR_HSP VPSS_STR_HSP;
    
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            if((eMode == REG_ZME_MODE_HORL)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_HSP.u32));
                VPSS_VHD_HSP.bits.hlmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_HSP.u32), VPSS_VHD_HSP.u32); 
            }
            if((eMode ==  REG_ZME_MODE_HORC)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_HSP.u32));
                VPSS_VHD_HSP.bits.hchmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_HSP.u32), VPSS_VHD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERL)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VSP.u32));
                VPSS_VHD_VSP.bits.vlmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VSP.u32), VPSS_VHD_VSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERC)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VHD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VSP.u32));
                VPSS_VHD_VSP.bits.vchmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VSP.u32), VPSS_VHD_VSP.u32); 
            }
            break;
        case VPSS_REG_SD://SD
            if((eMode == REG_ZME_MODE_HORL)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_HSP.u32));
                VPSS_VSD_HSP.bits.hlmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_HSP.u32), VPSS_VSD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_HORC)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_HSP.u32));
                VPSS_VSD_HSP.bits.hchmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_HSP.u32), VPSS_VSD_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERL)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VSP.u32));
                VPSS_VSD_VSP.bits.vlmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VSP.u32), VPSS_VSD_VSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERC)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_VSD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VSP.u32));
                VPSS_VSD_VSP.bits.vchmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VSP.u32), VPSS_VSD_VSP.u32); 
            }
            break;
        case VPSS_REG_STR://STR
            if((eMode == REG_ZME_MODE_HORC)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_HSP.u32));
                VPSS_STR_HSP.bits.hchmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_HSP.u32), VPSS_STR_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_HORL)||(eMode == REG_ZME_MODE_HOR)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_HSP.u32));
                VPSS_STR_HSP.bits.hlmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_HSP.u32), VPSS_STR_HSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERL)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VSP.u32));
                VPSS_STR_VSP.bits.vlmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VSP.u32), VPSS_STR_VSP.u32); 
            }
            if((eMode == REG_ZME_MODE_VERC)||(eMode == REG_ZME_MODE_VER)||(eMode == REG_ZME_MODE_ALL))
            {
                VPSS_STR_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VSP.u32));
                VPSS_STR_VSP.bits.vchmid_en = bEnable;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VSP.u32), VPSS_STR_VSP.u32); 
            }
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetZmePhase(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,
                                    REG_ZME_MODE_E eMode,HI_S32 s32Phase)
{
    U_VPSS_VHD_HLOFFSET VPSS_VHD_HLOFFSET;
    U_VPSS_VHD_HCOFFSET VPSS_VHD_HCOFFSET;
    U_VPSS_VHD_VOFFSET VPSS_VHD_VOFFSET;
    
    U_VPSS_VSD_HLOFFSET VPSS_VSD_HLOFFSET;
    U_VPSS_VSD_HCOFFSET VPSS_VSD_HCOFFSET;
    U_VPSS_VSD_VOFFSET VPSS_VSD_VOFFSET;
    
    U_VPSS_STR_HLOFFSET VPSS_STR_HLOFFSET;
    U_VPSS_STR_HCOFFSET VPSS_STR_HCOFFSET;
    U_VPSS_STR_VOFFSET VPSS_STR_VOFFSET;
    
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            if (eMode == REG_ZME_MODE_HORC)
            {
                VPSS_VHD_HCOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_HCOFFSET.u32));
                VPSS_VHD_HCOFFSET.bits.hor_coffset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_HCOFFSET.u32), VPSS_VHD_HCOFFSET.u32); 
            }
            else if(eMode == REG_ZME_MODE_HORL)
            {
                VPSS_VHD_HLOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_HLOFFSET.u32));
                VPSS_VHD_HLOFFSET.bits.hor_loffset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_HLOFFSET.u32), VPSS_VHD_HLOFFSET.u32); 
            }
            else if(eMode == REG_ZME_MODE_VERC)
            {
                VPSS_VHD_VOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VOFFSET.u32));
                VPSS_VHD_VOFFSET.bits.vchroma_offset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VOFFSET.u32), VPSS_VHD_VOFFSET.u32); 
            }
            else if(eMode == REG_ZME_MODE_VERL)
            {
                VPSS_VHD_VOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VOFFSET.u32));
                VPSS_VHD_VOFFSET.bits.vluma_offset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VOFFSET.u32), VPSS_VHD_VOFFSET.u32); 
            }
            else
            {
                VPSS_FATAL("REG ERROR\n");
            }
            break;
        case VPSS_REG_SD://SD
            if (eMode == REG_ZME_MODE_HORC)
            {
                VPSS_VSD_HCOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_HCOFFSET.u32));
                VPSS_VSD_HCOFFSET.bits.hor_coffset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_HCOFFSET.u32), VPSS_VSD_HCOFFSET.u32); 
            }
            else if(eMode == REG_ZME_MODE_HORL)
            {
                VPSS_VSD_HLOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_HLOFFSET.u32));
                VPSS_VSD_HLOFFSET.bits.hor_loffset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_HLOFFSET.u32), VPSS_VSD_HLOFFSET.u32); 
            }
            else if(eMode == REG_ZME_MODE_VERC)
            {
                VPSS_VSD_VOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VOFFSET.u32));
                VPSS_VSD_VOFFSET.bits.vchroma_offset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VOFFSET.u32), VPSS_VSD_VOFFSET.u32); 
            }
            else if(eMode == REG_ZME_MODE_VERL)
            {
                VPSS_VSD_VOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VOFFSET.u32));
                VPSS_VSD_VOFFSET.bits.vluma_offset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VOFFSET.u32), VPSS_VSD_VOFFSET.u32); 
            }
            else
            {
                VPSS_FATAL("REG ERROR\n");
            }
            break;
        case VPSS_REG_STR://STR
           if (eMode == REG_ZME_MODE_HORC)
            {
                VPSS_STR_HCOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_HCOFFSET.u32));
                VPSS_STR_HCOFFSET.bits.hor_coffset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_HCOFFSET.u32), VPSS_STR_HCOFFSET.u32); 
            }
            else if(eMode == REG_ZME_MODE_HORL)
            {
                VPSS_STR_HLOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_HLOFFSET.u32));
                VPSS_STR_HLOFFSET.bits.hor_loffset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_HLOFFSET.u32), VPSS_STR_HLOFFSET.u32); 
            }
            else if(eMode == REG_ZME_MODE_VERC)
            {
                VPSS_STR_VOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VOFFSET.u32));
                VPSS_STR_VOFFSET.bits.vchroma_offset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VOFFSET.u32), VPSS_STR_VOFFSET.u32); 
            }
            else if(eMode == REG_ZME_MODE_VERL)
            {
                VPSS_STR_VOFFSET.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VOFFSET.u32));
                VPSS_STR_VOFFSET.bits.vluma_offset = s32Phase;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VOFFSET.u32), VPSS_STR_VOFFSET.u32); 
            }
            else
            {
                VPSS_FATAL("REG ERROR\n");
            }
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }

    return HI_SUCCESS;
}                 
HI_S32 VPSS_REG_SetZmeRatio(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,
                                    REG_ZME_MODE_E eMode,HI_U32 u32Ratio)
{
    U_VPSS_VHD_HSP VPSS_VHD_HSP;
    U_VPSS_VHD_VSR VPSS_VHD_VSR;

    U_VPSS_VSD_HSP VPSS_VSD_HSP;
    U_VPSS_VSD_VSR VPSS_VSD_VSR;

    U_VPSS_STR_HSP VPSS_STR_HSP;
    U_VPSS_STR_VSR VPSS_STR_VSR;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            if (eMode == REG_ZME_MODE_HOR)
            {
                VPSS_VHD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_HSP.u32));
                VPSS_VHD_HSP.bits.hratio = u32Ratio;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_HSP.u32), VPSS_VHD_HSP.u32); 
            }
            else
            {
                VPSS_VHD_VSR.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VSR.u32));
                VPSS_VHD_VSR.bits.vratio = u32Ratio;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VSR.u32), VPSS_VHD_VSR.u32); 
            }
            break;
        case VPSS_REG_SD://SD
            if (eMode == REG_ZME_MODE_HOR)
            {
                VPSS_VSD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_HSP.u32));
                VPSS_VSD_HSP.bits.hratio = u32Ratio;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_HSP.u32), VPSS_VSD_HSP.u32); 
            }
            else
            {
                VPSS_VSD_VSR.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VSR.u32));
                VPSS_VSD_VSR.bits.vratio = u32Ratio;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VSR.u32), VPSS_VSD_VSR.u32); 
            }
            break;
        case VPSS_REG_STR://STR
           if (eMode == REG_ZME_MODE_HOR)
            {
                VPSS_STR_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_HSP.u32));
                VPSS_STR_HSP.bits.hratio = u32Ratio;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_HSP.u32), VPSS_STR_HSP.u32); 
            }
            else
            {
                VPSS_STR_VSR.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VSR.u32));
                VPSS_STR_VSR.bits.vratio = u32Ratio;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VSR.u32), VPSS_STR_VSR.u32); 
            }
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetZmeHfirOrder(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL bVfirst)
{
    U_VPSS_VHD_HSP VPSS_VHD_HSP;

    U_VPSS_VSD_HSP VPSS_VSD_HSP;

    U_VPSS_STR_HSP VPSS_STR_HSP;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;
    
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_HSP.u32));
            VPSS_VHD_HSP.bits.hfir_order = bVfirst;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_HSP.u32), VPSS_VHD_HSP.u32); 
            
            break;
        case VPSS_REG_SD://SD
            VPSS_VSD_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_HSP.u32));
            VPSS_VSD_HSP.bits.hfir_order = bVfirst;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_HSP.u32), VPSS_VSD_HSP.u32); 
            break;
        case VPSS_REG_STR://STR
            VPSS_STR_HSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_HSP.u32));
            VPSS_STR_HSP.bits.hfir_order = bVfirst;
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_HSP.u32), VPSS_STR_HSP.u32); 
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetZmeInFmt(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_DRV_PIX_FORMAT_E eFormat)
{
    U_VPSS_VHD_VSP VPSS_VHD_VSP;

    U_VPSS_VSD_VSP VPSS_VSD_VSP;

    U_VPSS_STR_VSP VPSS_STR_VSP;

    HI_U32 u32Format;
    
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    switch(eFormat)
    {
        case HI_DRV_PIX_FMT_NV12:
        case HI_DRV_PIX_FMT_NV21:
            u32Format = 0x1;
            break;
        case HI_DRV_PIX_FMT_NV16_2X1:
        case HI_DRV_PIX_FMT_NV61_2X1:
            u32Format = 0x0;
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            return HI_FAILURE;
    }
    
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VSP.u32));
            VPSS_VHD_VSP.bits.zme_in_fmt = u32Format;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VSP.u32), VPSS_VHD_VSP.u32); 
            
            break;
        case VPSS_REG_SD://SD
            VPSS_VSD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VSP.u32));
            VPSS_VSD_VSP.bits.zme_in_fmt = u32Format;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VSP.u32), VPSS_VSD_VSP.u32); 
            break;
        case VPSS_REG_STR://STR
            VPSS_STR_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VSP.u32));
            VPSS_STR_VSP.bits.zme_in_fmt = u32Format;
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VSP.u32), VPSS_STR_VSP.u32); 
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetZmeOutFmt(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_DRV_PIX_FORMAT_E eFormat)
{
    U_VPSS_VHD_VSP VPSS_VHD_VSP;

    U_VPSS_VSD_VSP VPSS_VSD_VSP;

    U_VPSS_STR_VSP VPSS_STR_VSP;

    HI_U32 u32Format;
    
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    switch(eFormat)
    {
        case HI_DRV_PIX_FMT_NV12:
        case HI_DRV_PIX_FMT_NV21:
            u32Format = 0x1;
            break;
        case HI_DRV_PIX_FMT_NV16_2X1:
        case HI_DRV_PIX_FMT_NV61_2X1:
            u32Format = 0x0;
            break;
        case HI_DRV_PIX_FMT_NV24:
            u32Format = 0x2;
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            return HI_FAILURE;
    }
    
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_VSP.u32));
            VPSS_VHD_VSP.bits.zme_out_fmt = u32Format;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_VSP.u32), VPSS_VHD_VSP.u32); 
            
            break;
        case VPSS_REG_SD://SD
            VPSS_VSD_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_VSP.u32));
            VPSS_VSD_VSP.bits.zme_out_fmt = u32Format;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_VSP.u32), VPSS_VSD_VSP.u32); 
            break;
        case VPSS_REG_STR://STR
            VPSS_STR_VSP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_VSP.u32));
            VPSS_STR_VSP.bits.zme_out_fmt = u32Format;
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_VSP.u32), VPSS_STR_VSP.u32); 
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetZmeCoefAddr(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,
                                    REG_ZME_MODE_E eMode,HI_U32 u32Addr)
{

    HI_U32 VPSS_VHD_ZME_LHADDR;
    HI_U32 VPSS_VHD_ZME_LVADDR;
    HI_U32 VPSS_VHD_ZME_CHADDR;
    HI_U32 VPSS_VHD_ZME_CVADDR;
    
    HI_U32 VPSS_VSD_ZME_LHADDR;
    HI_U32 VPSS_VSD_ZME_LVADDR;
    HI_U32 VPSS_VSD_ZME_CHADDR;
    HI_U32 VPSS_VSD_ZME_CVADDR;
    
    HI_U32 VPSS_STR_ZME_LHADDR;
    HI_U32 VPSS_STR_ZME_LVADDR;
    HI_U32 VPSS_STR_ZME_CHADDR;
    HI_U32 VPSS_STR_ZME_CVADDR;
    
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            if (eMode == REG_ZME_MODE_HORC)
            {
                VPSS_VHD_ZME_CHADDR = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_ZME_CHADDR));
                VPSS_VHD_ZME_CHADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_ZME_CHADDR), VPSS_VHD_ZME_CHADDR); 
            }
            else if(eMode == REG_ZME_MODE_HORL)
            {
                VPSS_VHD_ZME_LHADDR = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_ZME_LHADDR));
                VPSS_VHD_ZME_LHADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_ZME_LHADDR), VPSS_VHD_ZME_LHADDR);  
            }
            else if(eMode == REG_ZME_MODE_VERC)
            {
                VPSS_VHD_ZME_CVADDR = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_ZME_CVADDR));
                VPSS_VHD_ZME_CVADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_ZME_CVADDR), VPSS_VHD_ZME_CVADDR);  
            }
            else if(eMode == REG_ZME_MODE_VERL)
            {
                VPSS_VHD_ZME_LVADDR = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_ZME_LVADDR));
                VPSS_VHD_ZME_LVADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_ZME_LVADDR), VPSS_VHD_ZME_LVADDR);
            }
            else
            {
                VPSS_FATAL("REG ERROR\n");
            }
            break;
        case VPSS_REG_SD://SD
            if (eMode == REG_ZME_MODE_HORC)
            {
                VPSS_VSD_ZME_CHADDR = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_ZME_CHADDR));
                VPSS_VSD_ZME_CHADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_ZME_CHADDR), VPSS_VSD_ZME_CHADDR); 
            }
            else if(eMode == REG_ZME_MODE_HORL)
            {
                VPSS_VSD_ZME_LHADDR = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_ZME_LHADDR));
                VPSS_VSD_ZME_LHADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_ZME_LHADDR), VPSS_VSD_ZME_LHADDR);  
            }
            else if(eMode == REG_ZME_MODE_VERC)
            {
                VPSS_VSD_ZME_CVADDR = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_ZME_CVADDR));
                VPSS_VSD_ZME_CVADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_ZME_CVADDR), VPSS_VSD_ZME_CVADDR);  
            }
            else if(eMode == REG_ZME_MODE_VERL)
            {
                VPSS_VSD_ZME_LVADDR = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_ZME_LVADDR));
                VPSS_VSD_ZME_LVADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_ZME_LVADDR), VPSS_VSD_ZME_LVADDR);
            }
            else
            {
                VPSS_FATAL("REG ERROR\n");
            }
            break;
        case VPSS_REG_STR://STR
            if (eMode == REG_ZME_MODE_HORC)
            {
                VPSS_STR_ZME_CHADDR = VPSS_REG_RegRead(&(pstReg->VPSS_STR_ZME_CHADDR));
                VPSS_STR_ZME_CHADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_ZME_CHADDR), VPSS_STR_ZME_CHADDR); 
            }
            else if(eMode == REG_ZME_MODE_HORL)
            {
                VPSS_STR_ZME_LHADDR = VPSS_REG_RegRead(&(pstReg->VPSS_STR_ZME_LHADDR));
                VPSS_STR_ZME_LHADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_ZME_LHADDR), VPSS_STR_ZME_LHADDR);  
            }
            else if(eMode == REG_ZME_MODE_VERC)
            {
                VPSS_STR_ZME_CVADDR = VPSS_REG_RegRead(&(pstReg->VPSS_STR_ZME_CVADDR));
                VPSS_STR_ZME_CVADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_ZME_CVADDR), VPSS_STR_ZME_CVADDR);  
            }
            else if(eMode == REG_ZME_MODE_VERL)
            {
                VPSS_STR_ZME_LVADDR = VPSS_REG_RegRead(&(pstReg->VPSS_STR_ZME_LVADDR));
                VPSS_STR_ZME_LVADDR = u32Addr;
                VPSS_REG_RegWrite(&(pstReg->VPSS_STR_ZME_LVADDR), VPSS_STR_ZME_LVADDR);
            }
            else
            {
                VPSS_FATAL("REG ERROR\n");
            }
            break;
        default:
            VPSS_FATAL("REG ERROR\n");
            break;
    }

    return HI_SUCCESS;
}
/***************************************************************************************/
HI_VOID VPSS_REG_SetDetEn(HI_U32 u32AppAddr,HI_BOOL bEnable)
{
    U_VPSS_CTRL VPSS_CTRL;
    U_STR_DET_VIDCTRL STR_DET_VIDCTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    VPSS_CTRL.bits.str_det_en = bEnable;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);

    
    STR_DET_VIDCTRL.u32 = VPSS_REG_RegRead(&(pstReg->STR_DET_VIDCTRL.u32));
    STR_DET_VIDCTRL.bits.vid_en = bEnable;
    VPSS_REG_RegWrite(&(pstReg->STR_DET_VIDCTRL.u32), STR_DET_VIDCTRL.u32);
    return;
}

HI_VOID VPSS_REG_SetDetMode(HI_U32 u32AppAddr,HI_U32 u32Mode)
{
    U_STR_DET_VIDCTRL STR_DET_VIDCTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    STR_DET_VIDCTRL.u32 = VPSS_REG_RegRead(&(pstReg->STR_DET_VIDCTRL.u32));
    STR_DET_VIDCTRL.bits.vid_mode = u32Mode;
    VPSS_REG_RegWrite(&(pstReg->STR_DET_VIDCTRL.u32), STR_DET_VIDCTRL.u32);

    return;
}

HI_VOID VPSS_REG_SetDetBlk(HI_U32 u32AppAddr,HI_U32 blk_id, HI_U32 *pu32Addr)
{
    U_STR_DET_VIDBLKPOS0_1 STR_DET_VIDBLKPOS0_1;
    U_STR_DET_VIDBLKPOS2_3 STR_DET_VIDBLKPOS2_3;
    U_STR_DET_VIDBLKPOS4_5 STR_DET_VIDBLKPOS4_5;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    switch (blk_id)
    {
        case 0:
        {
            STR_DET_VIDBLKPOS0_1.u32 = VPSS_REG_RegRead(&(pstReg->STR_DET_VIDBLKPOS0_1.u32));
            
            STR_DET_VIDBLKPOS0_1.bits.blk0_xlpos = pu32Addr[0];
            STR_DET_VIDBLKPOS0_1.bits.blk0_ylpos = pu32Addr[1];

            VPSS_REG_RegWrite(&(pstReg->STR_DET_VIDBLKPOS0_1.u32), STR_DET_VIDBLKPOS0_1.u32);
            break;
        }
        case 1:
        {
            STR_DET_VIDBLKPOS0_1.u32 = VPSS_REG_RegRead(&(pstReg->STR_DET_VIDBLKPOS0_1.u32));
            
            STR_DET_VIDBLKPOS0_1.bits.blk1_xlpos = pu32Addr[0];
            STR_DET_VIDBLKPOS0_1.bits.blk1_ylpos = pu32Addr[1];

            VPSS_REG_RegWrite(&(pstReg->STR_DET_VIDBLKPOS0_1.u32), STR_DET_VIDBLKPOS0_1.u32);
            
            break;
        }
        case 2:
        {
            STR_DET_VIDBLKPOS2_3.u32 = VPSS_REG_RegRead(&(pstReg->STR_DET_VIDBLKPOS2_3.u32));
            
            STR_DET_VIDBLKPOS2_3.bits.blk2_xlpos = pu32Addr[0];
            STR_DET_VIDBLKPOS2_3.bits.blk2_ylpos = pu32Addr[1];

            VPSS_REG_RegWrite(&(pstReg->STR_DET_VIDBLKPOS2_3.u32), STR_DET_VIDBLKPOS2_3.u32);
            break;
        }
        case 3:
        {
            STR_DET_VIDBLKPOS2_3.u32 = VPSS_REG_RegRead(&(pstReg->STR_DET_VIDBLKPOS2_3.u32));
            
            STR_DET_VIDBLKPOS2_3.bits.blk3_xlpos = pu32Addr[0];
            STR_DET_VIDBLKPOS2_3.bits.blk3_ylpos = pu32Addr[1];

            VPSS_REG_RegWrite(&(pstReg->STR_DET_VIDBLKPOS2_3.u32), STR_DET_VIDBLKPOS2_3.u32);
            
            break;
        }
        case 4:
        {
            STR_DET_VIDBLKPOS4_5.u32 = VPSS_REG_RegRead(&(pstReg->STR_DET_VIDBLKPOS4_5.u32));
            
            STR_DET_VIDBLKPOS4_5.bits.blk4_xlpos = pu32Addr[0];
            STR_DET_VIDBLKPOS4_5.bits.blk4_ylpos = pu32Addr[1];

            VPSS_REG_RegWrite(&(pstReg->STR_DET_VIDBLKPOS4_5.u32), STR_DET_VIDBLKPOS4_5.u32);
            break;
        }
        case 5:
        {
            STR_DET_VIDBLKPOS4_5.u32 = VPSS_REG_RegRead(&(pstReg->STR_DET_VIDBLKPOS4_5.u32));
            
            STR_DET_VIDBLKPOS4_5.bits.blk5_xlpos = pu32Addr[0];
            STR_DET_VIDBLKPOS4_5.bits.blk5_ylpos = pu32Addr[1];

            VPSS_REG_RegWrite(&(pstReg->STR_DET_VIDBLKPOS4_5.u32), STR_DET_VIDBLKPOS4_5.u32);
            
            break;
        }

        default:
        {
            VPSS_FATAL("Error! Wrong Vou_SetViDetBlk() ID Select\n");
            return ;
        }
    }

    return ;

}

HI_VOID VPSS_REG_GetDetPixel(HI_U32 u32AppAddr,HI_U32 BlkNum, HI_U8* pstData)
{

    HI_U32  pixdata;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    if (BlkNum > 5)
    {
        VPSS_FATAL("Error! Vou_GetDetPixel() Selected Wrong BLKNUM!\n");
        return ;
    }

    pixdata = VPSS_REG_RegRead((&(pstReg->STR_DET_VIDBLK0TOL0.u32) + BlkNum * 2 ));

    pstData[0] = (pixdata & 0xff);
    pstData[1] = (pixdata & 0xff00) >> 8;
    pstData[2] = (pixdata & 0xff0000) >> 16;
    pstData[3] = (pixdata & 0xff000000) >> 24;
    pixdata = VPSS_REG_RegRead((&(pstReg->STR_DET_VIDBLK0TOL0.u32)) + (BlkNum * 2  + 1) );

    pstData[4] = (pixdata & 0xff);
    pstData[5] = (pixdata & 0xff00) >> 8;
    pstData[6] = (pixdata & 0xff0000) >> 16;
    pstData[7] = (pixdata & 0xff000000) >> 24;

    return ;


}

/*************************************************************************************************/

/*DEI*/
HI_S32 VPSS_REG_EnDei(HI_U32 u32AppAddr,HI_BOOL bEnDei)
{
    U_VPSS_CTRL VPSS_CTRL;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    VPSS_CTRL.bits.dei_en = bEnDei;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetDeiTopFirst(HI_U32 u32AppAddr,HI_BOOL bTopFirst)
{
    U_VPSS_CTRL VPSS_CTRL;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    VPSS_CTRL.bits.die_bfield_first = !bTopFirst;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetDeiFieldMode(HI_U32 u32AppAddr,HI_BOOL bBottom)
{
    U_VPSS_CTRL VPSS_CTRL;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    VPSS_CTRL.bits.die_mode = bBottom;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);

    return HI_SUCCESS;
    
}
HI_S32 VPSS_REG_SetDeiAddr(HI_U32 u32AppAddr,REG_FIELDPOS_E eField,HI_U32 u32YAddr,HI_U32 u32CAddr)
{
    HI_U32 VPSS_REFYADDR;
    HI_U32 VPSS_REFCADDR;
    
    HI_U32 VPSS_NEXT1YADDR;
    HI_U32 VPSS_NEXT1CADDR;
    
    HI_U32 VPSS_NEXT2YADDR;
    HI_U32 VPSS_NEXT2CADDR;
    
    HI_U32 VPSS_NEXT3YADDR;
    HI_U32 VPSS_NEXT3CADDR;
    
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(eField)
    {   
        case LAST_FIELD:
            VPSS_REFYADDR = u32YAddr;
            VPSS_REFCADDR = u32CAddr;
            VPSS_REG_RegWrite(&(pstReg->VPSS_REFYADDR), VPSS_REFYADDR); 
            VPSS_REG_RegWrite(&(pstReg->VPSS_REFCADDR), VPSS_REFCADDR);
            /*
            printk("\n VPSS_REFYADDR %x VPSS_REFCADDR %x\n",
                pstReg->VPSS_REFYADDR,pstReg->VPSS_REFCADDR);
                */
            break;
        case NEXT1_FIELD:
            VPSS_NEXT1YADDR = u32YAddr;
            VPSS_NEXT1CADDR = u32CAddr;
            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT1YADDR), VPSS_NEXT1YADDR); 
            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT1CADDR), VPSS_NEXT1CADDR); 
            /*
            printk("\n VPSS_NEXT1YADDR %x VPSS_NEXT1CADDR %x\n",
                pstReg->VPSS_NEXT1YADDR,pstReg->VPSS_NEXT1CADDR);
                */
            break;
        case NEXT2_FIELD:
            VPSS_NEXT2YADDR = u32YAddr;
            VPSS_NEXT2CADDR = u32CAddr;
            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT2YADDR), VPSS_NEXT2YADDR); 
            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT2CADDR), VPSS_NEXT2CADDR);
            /*
            printk("\n VPSS_NEXT2YADDR %x VPSS_NEXT2CADDR %x\n",
                pstReg->VPSS_NEXT2YADDR,pstReg->VPSS_NEXT2CADDR);
                */
            break;
        case NEXT3_FIELD:
            VPSS_NEXT3YADDR = u32YAddr;
            VPSS_NEXT3CADDR = u32CAddr;
            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT3YADDR), VPSS_NEXT3YADDR); 
            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT3CADDR), VPSS_NEXT3CADDR);
            /*
            printk("\n VPSS_NEXT3YADDR %x VPSS_NEXT3CADDR %x\n",
                pstReg->VPSS_NEXT3YADDR,pstReg->VPSS_NEXT3CADDR);
                */
            break;
        default:
            VPSS_FATAL("REG ERROR\n");

    }
    
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetDeiStride(HI_U32 u32AppAddr,REG_FIELDPOS_E eField,HI_U32 u32YStride,HI_U32 u32CStride)
{
    U_VPSS_REFSTRIDE   VPSS_REFSTRIDE;
    U_VPSS_NEXT1STRIDE VPSS_NEXT1STRIDE;
    U_VPSS_NEXT2STRIDE VPSS_NEXT2STRIDE;
    U_VPSS_NEXT3STRIDE VPSS_NEXT3STRIDE;
    
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(eField)
    {   
        case LAST_FIELD:
            VPSS_REFSTRIDE.bits.refy_stride= u32YStride;
            VPSS_REFSTRIDE.bits.refc_stride= u32CStride;
            VPSS_REG_RegWrite(&(pstReg->VPSS_REFSTRIDE.u32), VPSS_REFSTRIDE.u32); 
            break;
        case NEXT1_FIELD:
            VPSS_NEXT1STRIDE.bits.nxt1y_stride= u32YStride;
            VPSS_NEXT1STRIDE.bits.nxt1c_stride= u32CStride;

            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT1STRIDE.u32), VPSS_NEXT1STRIDE.u32); 
            break;
        case NEXT2_FIELD:
            VPSS_NEXT2STRIDE.bits.nxt2y_stride= u32YStride;
            VPSS_NEXT2STRIDE.bits.nxt2c_stride= u32CStride;

            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT2STRIDE.u32), VPSS_NEXT2STRIDE.u32); 
            break;
        case NEXT3_FIELD:
            VPSS_NEXT3STRIDE.bits.nxt3y_stride= u32YStride;
            VPSS_NEXT3STRIDE.bits.nxt3c_stride= u32CStride;

            VPSS_REG_RegWrite(&(pstReg->VPSS_NEXT3STRIDE.u32), VPSS_NEXT3STRIDE.u32); 
            break;
        default:
            VPSS_FATAL("REG ERROR\n");

    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetModeEn(HI_U32 u32AppAddr,REG_DIE_MODE_E eDieMode,HI_BOOL bEnMode)
{
    U_VPSS_DIECTRL VPSS_DIECTRL;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DIECTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECTRL.u32));
    if (eDieMode == REG_DIE_MODE_CHROME || eDieMode == REG_DIE_MODE_ALL)
    {
        VPSS_DIECTRL.bits.die_chroma_en = bEnMode;
    }
    if (eDieMode == REG_DIE_MODE_LUMA || eDieMode == REG_DIE_MODE_ALL)
    {
        VPSS_DIECTRL.bits.die_luma_en = bEnMode;
    }
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECTRL.u32), VPSS_DIECTRL.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetOutSel(HI_U32 u32AppAddr,REG_DIE_MODE_E eDieMode,HI_BOOL bEnMode)
{
    U_VPSS_DIECTRL VPSS_DIECTRL;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DIECTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECTRL.u32));
    if (eDieMode == REG_DIE_MODE_CHROME || eDieMode == REG_DIE_MODE_ALL)
    {
        VPSS_DIECTRL.bits.die_out_sel_c = bEnMode;
    }
    if (eDieMode == REG_DIE_MODE_LUMA || eDieMode == REG_DIE_MODE_ALL)
    {
        VPSS_DIECTRL.bits.die_out_sel_l = bEnMode;
    }
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECTRL.u32), VPSS_DIECTRL.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMode(HI_U32 u32AppAddr,REG_DIE_MODE_E eDieMode,HI_U32  u32Mode)
{
    U_VPSS_DIECTRL VPSS_DIECTRL;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DIECTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECTRL.u32));
    if (eDieMode == REG_DIE_MODE_CHROME || eDieMode == REG_DIE_MODE_ALL)
    {
        VPSS_DIECTRL.bits.die_chmmode = u32Mode;
    }
    if (eDieMode == REG_DIE_MODE_LUMA || eDieMode == REG_DIE_MODE_ALL)
    {
        VPSS_DIECTRL.bits.die_lmmode = u32Mode;
    }
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECTRL.u32), VPSS_DIECTRL.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetStInfo(HI_U32 u32AppAddr,HI_BOOL bStop)
{
    U_VPSS_DIECTRL VPSS_DIECTRL;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DIECTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECTRL.u32));

    VPSS_DIECTRL.bits.stinfo_stop = bStop;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECTRL.u32), VPSS_DIECTRL.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMfMax(HI_U32 u32AppAddr,REG_DIE_MODE_E eDieMode,HI_BOOL bMax)
{
    U_VPSS_DIELMA2 VPSS_DIELMA2;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DIELMA2.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIELMA2.u32));
    if (eDieMode == REG_DIE_MODE_CHROME || eDieMode == REG_DIE_MODE_ALL)
    {
        VPSS_DIELMA2.bits.chroma_mf_max = bMax;
    }
    if (eDieMode == REG_DIE_MODE_LUMA || eDieMode == REG_DIE_MODE_ALL)
    {
        VPSS_DIELMA2.bits.luma_mf_max = bMax;
    }
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIELMA2.u32), VPSS_DIELMA2.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLuSceSdfMax(HI_U32 u32AppAddr,HI_BOOL bMax)
{
    U_VPSS_DIELMA2 VPSS_DIELMA2;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DIELMA2.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIELMA2.u32));
    VPSS_DIELMA2.bits.luma_scesdf_max = bMax;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIELMA2.u32), VPSS_DIELMA2.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetSadThd(HI_U32 u32AppAddr,HI_U32 u32Thd)
{
    U_VPSS_DIELMA2 VPSS_DIELMA2;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DIELMA2.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIELMA2.u32));
    VPSS_DIELMA2.bits.die_sad_thd = u32Thd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIELMA2.u32), VPSS_DIELMA2.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMinIntern(HI_U32 u32AppAddr,HI_U32 u32MinIntern)
{
    U_VPSS_DIEINTEN VPSS_DIEINTEN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEINTEN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEINTEN.u32));
    VPSS_DIEINTEN.bits.ver_min_inten = u32MinIntern;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEINTEN.u32), VPSS_DIEINTEN.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetInternVer(HI_U32 u32AppAddr,HI_U32 u32InternVer)
{
    U_VPSS_DIEINTEN VPSS_DIEINTEN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEINTEN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEINTEN.u32));
    VPSS_DIEINTEN.bits.dir_inten_ver = u32InternVer;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEINTEN.u32), VPSS_DIEINTEN.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetRangeScale(HI_U32 u32AppAddr,HI_U32 u32Scale)
{
    U_VPSS_DIESCALE VPSS_DIESCALE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIESCALE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEINTEN.u32));
    VPSS_DIESCALE.bits.range_scale = u32Scale;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIESCALE.u32), VPSS_DIESCALE.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetCK1(HI_U32 u32AppAddr,HI_U32 u32Gain,HI_U32 u32Range,HI_U32 u32Max)
{
    U_VPSS_DIECHECK1 VPSS_DIECHECK1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIECHECK1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECHECK1.u32));
    VPSS_DIECHECK1.bits.ck_gain = u32Gain;
    VPSS_DIECHECK1.bits.ck_range_gain = u32Range;
    VPSS_DIECHECK1.bits.ck_max_range = u32Max;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECHECK1.u32), VPSS_DIECHECK1.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetCK2(HI_U32 u32AppAddr,HI_U32 u32Gain,HI_U32 u32Range,HI_U32 u32Max)
{
    U_VPSS_DIECHECK2 VPSS_DIECHECK2;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIECHECK2.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECHECK2.u32));
    VPSS_DIECHECK2.bits.ck_gain = u32Gain;
    VPSS_DIECHECK2.bits.ck_range_gain =  u32Range;
    VPSS_DIECHECK2.bits.ck_max_range = u32Max;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECHECK2.u32), VPSS_DIECHECK2.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetDIR(HI_U32 u32AppAddr,HI_S32 *ps32MultDir)
{
    U_VPSS_DIEDIR0_3 VPSS_DIEDIR0_3;
    U_VPSS_DIEDIR4_7 VPSS_DIEDIR4_7;
    U_VPSS_DIEDIR8_11 VPSS_DIEDIR8_11;
    U_VPSS_DIEDIR12_14 VPSS_DIEDIR12_14;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEDIR0_3.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEDIR0_3.u32));
    VPSS_DIEDIR0_3.bits.dir0_mult = ps32MultDir[0];
    VPSS_DIEDIR0_3.bits.dir1_mult = ps32MultDir[1];
    VPSS_DIEDIR0_3.bits.dir2_mult = ps32MultDir[2];
    VPSS_DIEDIR0_3.bits.dir3_mult = ps32MultDir[3];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEDIR0_3.u32), VPSS_DIEDIR0_3.u32);
    
    VPSS_DIEDIR4_7.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEDIR4_7.u32));
    VPSS_DIEDIR4_7.bits.dir4_mult = ps32MultDir[4];
    VPSS_DIEDIR4_7.bits.dir5_mult = ps32MultDir[5];
    VPSS_DIEDIR4_7.bits.dir6_mult = ps32MultDir[6];
    VPSS_DIEDIR4_7.bits.dir7_mult = ps32MultDir[7];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEDIR4_7.u32), VPSS_DIEDIR4_7.u32);
    
    VPSS_DIEDIR8_11.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEDIR8_11.u32));
    VPSS_DIEDIR8_11.bits.dir8_mult = ps32MultDir[8];
    VPSS_DIEDIR8_11.bits.dir9_mult = ps32MultDir[9];
    VPSS_DIEDIR8_11.bits.dir10_mult = ps32MultDir[10];
    VPSS_DIEDIR8_11.bits.dir11_mult = ps32MultDir[11];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEDIR8_11.u32), VPSS_DIEDIR8_11.u32);
    
    VPSS_DIEDIR12_14.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEDIR12_14.u32));
    VPSS_DIEDIR12_14.bits.dir12_mult = ps32MultDir[12];
    VPSS_DIEDIR12_14.bits.dir13_mult = ps32MultDir[13];
    VPSS_DIEDIR12_14.bits.dir14_mult = ps32MultDir[14];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEDIR12_14.u32), VPSS_DIEDIR12_14.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetCcEn(HI_U32 u32AppAddr,HI_BOOL bEnCc)
{
    U_VPSS_CCRSCLR0 VPSS_CCRSCLR0;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_CCRSCLR0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CCRSCLR0.u32));
    VPSS_CCRSCLR0.bits.chroma_ccr_en = bEnCc;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CCRSCLR0.u32), VPSS_CCRSCLR0.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetCcOffset(HI_U32 u32AppAddr,HI_S32 s32Offset)
{
    U_VPSS_CCRSCLR0 VPSS_CCRSCLR0;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_CCRSCLR0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CCRSCLR0.u32));
    VPSS_CCRSCLR0.bits.chroma_ma_offset = s32Offset;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CCRSCLR0.u32), VPSS_CCRSCLR0.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetCcDetMax(HI_U32 u32AppAddr,HI_S32 s32Max)
{
    U_VPSS_CCRSCLR0 VPSS_CCRSCLR0;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_CCRSCLR0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CCRSCLR0.u32));
    VPSS_CCRSCLR0.bits.no_ccr_detect_max = s32Max;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CCRSCLR0.u32), VPSS_CCRSCLR0.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetCcDetThd(HI_U32 u32AppAddr,HI_S32 s32Thd)
{
    U_VPSS_CCRSCLR0 VPSS_CCRSCLR0;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_CCRSCLR0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CCRSCLR0.u32));
    VPSS_CCRSCLR0.bits.no_ccr_detect_thd = s32Thd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CCRSCLR0.u32), VPSS_CCRSCLR0.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetSimiMax(HI_U32 u32AppAddr,HI_S32 s32SimiMax)
{
    U_VPSS_CCRSCLR1 VPSS_CCRSCLR1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_CCRSCLR1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CCRSCLR1.u32));
    VPSS_CCRSCLR1.bits.similar_max = s32SimiMax;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CCRSCLR1.u32), VPSS_CCRSCLR1.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetSimiThd(HI_U32 u32AppAddr,HI_S32 s32SimiThd)
{
    U_VPSS_CCRSCLR1 VPSS_CCRSCLR1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_CCRSCLR1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CCRSCLR1.u32));
    VPSS_CCRSCLR1.bits.similar_thd = s32SimiThd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CCRSCLR1.u32), VPSS_CCRSCLR1.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetDetBlend(HI_U32 u32AppAddr,HI_S32 s32DetBlend)
{
    U_VPSS_CCRSCLR1 VPSS_CCRSCLR1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_CCRSCLR1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CCRSCLR1.u32));
    VPSS_CCRSCLR1.bits.no_ccr_detect_blend = s32DetBlend;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CCRSCLR1.u32), VPSS_CCRSCLR1.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetMaxXChroma(HI_U32 u32AppAddr,HI_S32 s32Max)
{
    U_VPSS_CCRSCLR1 VPSS_CCRSCLR1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_CCRSCLR1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CCRSCLR1.u32));
    VPSS_CCRSCLR1.bits.max_xchroma = s32Max;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CCRSCLR1.u32), VPSS_CCRSCLR1.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetIntpSclRat(HI_U32 u32AppAddr,HI_S32 *ps32Rat)
{
    U_VPSS_DIEINTPSCL0 VPSS_DIEINTPSCL0;
    U_VPSS_DIEINTPSCL1 VPSS_DIEINTPSCL1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEINTPSCL0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEINTPSCL0.u32));
    VPSS_DIEINTPSCL0.bits.intp_scale_ratio_1 = ps32Rat[0];
    VPSS_DIEINTPSCL0.bits.intp_scale_ratio_2 = ps32Rat[1];
    VPSS_DIEINTPSCL0.bits.intp_scale_ratio_3 = ps32Rat[2];
    VPSS_DIEINTPSCL0.bits.intp_scale_ratio_4 = ps32Rat[3];
    VPSS_DIEINTPSCL0.bits.intp_scale_ratio_5 = ps32Rat[4];
    VPSS_DIEINTPSCL0.bits.intp_scale_ratio_6 = ps32Rat[5];
    VPSS_DIEINTPSCL0.bits.intp_scale_ratio_7 = ps32Rat[6];
    VPSS_DIEINTPSCL0.bits.intp_scale_ratio_8 = ps32Rat[7];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEINTPSCL0.u32), VPSS_DIEINTPSCL0.u32);

    VPSS_DIEINTPSCL1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEINTPSCL1.u32));
    VPSS_DIEINTPSCL1.bits.intp_scale_ratio_9  = ps32Rat[8];
    VPSS_DIEINTPSCL1.bits.intp_scale_ratio_10 = ps32Rat[9];
    VPSS_DIEINTPSCL1.bits.intp_scale_ratio_11 = ps32Rat[10];
    VPSS_DIEINTPSCL1.bits.intp_scale_ratio_12 = ps32Rat[11];
    VPSS_DIEINTPSCL1.bits.intp_scale_ratio_13 = ps32Rat[12];
    VPSS_DIEINTPSCL1.bits.intp_scale_ratio_14 = ps32Rat[13];
    VPSS_DIEINTPSCL1.bits.intp_scale_ratio_15 = ps32Rat[14];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEINTPSCL1.u32), VPSS_DIEINTPSCL1.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetStrenThd(HI_U32 u32AppAddr,HI_S32 s32Thd)
{
    U_VPSS_DIEDIRTHD VPSS_DIEDIRTHD;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEDIRTHD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEDIRTHD.u32));
    VPSS_DIEDIRTHD.bits.strength_thd = s32Thd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEDIRTHD.u32), VPSS_DIEDIRTHD.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetDirThd(HI_U32 u32AppAddr,HI_S32 s32Thd)
{
    U_VPSS_DIEDIRTHD VPSS_DIEDIRTHD;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEDIRTHD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEDIRTHD.u32));
    VPSS_DIEDIRTHD.bits.dir_thd = s32Thd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEDIRTHD.u32), VPSS_DIEDIRTHD.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetBcGain(HI_U32 u32AppAddr,HI_S32 s32BcGain)
{
    U_VPSS_DIEDIRTHD VPSS_DIEDIRTHD;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEDIRTHD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEDIRTHD.u32));
    VPSS_DIEDIRTHD.bits.bc_gain = s32BcGain;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEDIRTHD.u32), VPSS_DIEDIRTHD.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetJitterMode(HI_U32 u32AppAddr,HI_BOOL bJitMd)
{
    U_VPSS_DIEJITMTN VPSS_DIEJITMTN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEJITMTN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEJITMTN.u32));
    VPSS_DIEJITMTN.bits.jitter_mode = bJitMd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEJITMTN.u32), VPSS_DIEJITMTN.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetJitterFactor(HI_U32 u32AppAddr,HI_S32 s32Factor)
{
    U_VPSS_DIEJITMTN VPSS_DIEJITMTN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEJITMTN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEJITMTN.u32));
    VPSS_DIEJITMTN.bits.jitter_factor = s32Factor;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEJITMTN.u32), VPSS_DIEJITMTN.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetJitterCoring(HI_U32 u32AppAddr,HI_S32 s32Coring)
{
    U_VPSS_DIEJITMTN VPSS_DIEJITMTN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEJITMTN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEJITMTN.u32));
    VPSS_DIEJITMTN.bits.jitter_coring = s32Coring;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEJITMTN.u32), VPSS_DIEJITMTN.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetJitterGain(HI_U32 u32AppAddr,HI_S32 s32Gain)
{
    U_VPSS_DIEJITMTN VPSS_DIEJITMTN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEJITMTN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEJITMTN.u32));
    VPSS_DIEJITMTN.bits.jitter_gain = s32Gain;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEJITMTN.u32), VPSS_DIEJITMTN.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetJitterFilter(HI_U32 u32AppAddr,HI_S32 *ps32Filter)
{
    U_VPSS_DIEJITMTN VPSS_DIEJITMTN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEJITMTN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEJITMTN.u32));
    VPSS_DIEJITMTN.bits.jitter_filter_2 = ps32Filter[2];
    VPSS_DIEJITMTN.bits.jitter_filter_1 = ps32Filter[1];
    VPSS_DIEJITMTN.bits.jitter_filter_0 = ps32Filter[0];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEJITMTN.u32), VPSS_DIEJITMTN.u32);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetMotionSlope(HI_U32 u32AppAddr,HI_S32 s32Slope)
{
    U_VPSS_DIEFLDMTN VPSS_DIEFLDMTN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEFLDMTN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEFLDMTN.u32));
    VPSS_DIEFLDMTN.bits.fld_motion_curve_slope = s32Slope;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEFLDMTN.u32), VPSS_DIEFLDMTN.u32);

    return HI_SUCCESS;
        
}
HI_S32 VPSS_REG_SetMotionCoring(HI_U32 u32AppAddr,HI_S32 s32Coring)
{
    U_VPSS_DIEFLDMTN VPSS_DIEFLDMTN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEFLDMTN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEFLDMTN.u32));
    VPSS_DIEFLDMTN.bits.fld_motion_coring = s32Coring;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEFLDMTN.u32), VPSS_DIEFLDMTN.u32);

    return HI_SUCCESS;
        
}
HI_S32 VPSS_REG_SetMotionGain(HI_U32 u32AppAddr,HI_S32 s32Gain)
{
    U_VPSS_DIEFLDMTN VPSS_DIEFLDMTN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEFLDMTN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEFLDMTN.u32));
    VPSS_DIEFLDMTN.bits.fld_motion_gain = s32Gain;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEFLDMTN.u32), VPSS_DIEFLDMTN.u32);

    return HI_SUCCESS;
        
}
HI_S32 VPSS_REG_SetMotionHThd(HI_U32 u32AppAddr,HI_S32 s32HThd)
{
    U_VPSS_DIEFLDMTN VPSS_DIEFLDMTN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEFLDMTN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEFLDMTN.u32));
    VPSS_DIEFLDMTN.bits.fld_motion_thd_high = s32HThd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEFLDMTN.u32), VPSS_DIEFLDMTN.u32);

    return HI_SUCCESS;
        
}
HI_S32 VPSS_REG_SetMotionLThd(HI_U32 u32AppAddr,HI_S32 s32LThd)
{
    U_VPSS_DIEFLDMTN VPSS_DIEFLDMTN;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEFLDMTN.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEFLDMTN.u32));
    VPSS_DIEFLDMTN.bits.fld_motion_thd_low = s32LThd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEFLDMTN.u32), VPSS_DIEFLDMTN.u32);

    return HI_SUCCESS;
        
}
HI_S32 VPSS_REG_SetLumAvgThd(HI_U32 u32AppAddr,HI_S32 *ps32Thd)
{
    U_VPSS_DIEMTNCRVTHD VPSS_DIEMTNCRVTHD;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNCRVTHD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNCRVTHD.u32));
    VPSS_DIEMTNCRVTHD.bits.lum_avg_thd_3 = ps32Thd[3];
    VPSS_DIEMTNCRVTHD.bits.lum_avg_thd_2 = ps32Thd[2];
    VPSS_DIEMTNCRVTHD.bits.lum_avg_thd_1 = ps32Thd[1];
    VPSS_DIEMTNCRVTHD.bits.lum_avg_thd_0 = ps32Thd[0];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNCRVTHD.u32), VPSS_DIEMTNCRVTHD.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetCurSlope(HI_U32 u32AppAddr,HI_S32 *ps32Slope)
{
    U_VPSS_DIEMTNCRVSLP VPSS_DIEMTNCRVSLP;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNCRVSLP.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNCRVSLP.u32));
    VPSS_DIEMTNCRVSLP.bits.motion_curve_slope_3 = ps32Slope[3];
    VPSS_DIEMTNCRVSLP.bits.motion_curve_slope_2 = ps32Slope[2];
    VPSS_DIEMTNCRVSLP.bits.motion_curve_slope_1 = ps32Slope[1];
    VPSS_DIEMTNCRVSLP.bits.motion_curve_slope_0 = ps32Slope[0];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNCRVSLP.u32), VPSS_DIEMTNCRVSLP.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMotionEn(HI_U32 u32AppAddr,HI_BOOL bEnMotion)
{
    U_VPSS_DIEMTNCRVRAT0 VPSS_DIEMTNCRVRAT0;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNCRVRAT0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNCRVRAT0.u32));
    VPSS_DIEMTNCRVRAT0.bits.motion_ratio_en = bEnMotion;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNCRVRAT0.u32), VPSS_DIEMTNCRVRAT0.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMotionStart(HI_U32 u32AppAddr,HI_S32 s32Start)
{
    U_VPSS_DIEMTNCRVRAT0 VPSS_DIEMTNCRVRAT0;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNCRVRAT0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNCRVRAT0.u32));
    VPSS_DIEMTNCRVRAT0.bits.start_motion_ratio = s32Start;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNCRVRAT0.u32), VPSS_DIEMTNCRVRAT0.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMotionRatio(HI_U32 u32AppAddr,HI_S32 *ps32Ration)
{
    U_VPSS_DIEMTNCRVRAT0 VPSS_DIEMTNCRVRAT0;
    U_VPSS_DIEMTNCRVRAT1 VPSS_DIEMTNCRVRAT1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNCRVRAT0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNCRVRAT0.u32));
    VPSS_DIEMTNCRVRAT0.bits.motion_curve_ratio_1 = ps32Ration[1];
    VPSS_DIEMTNCRVRAT0.bits.motion_curve_ratio_0 = ps32Ration[0];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNCRVRAT0.u32), VPSS_DIEMTNCRVRAT0.u32);

    VPSS_DIEMTNCRVRAT1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNCRVRAT1.u32));
    VPSS_DIEMTNCRVRAT1.bits.motion_curve_ratio_3 = ps32Ration[3]; 
    VPSS_DIEMTNCRVRAT1.bits.motion_curve_ratio_2 = ps32Ration[2];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNCRVRAT1.u32), VPSS_DIEMTNCRVRAT1.u32);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetMotionMaxRatio(HI_U32 u32AppAddr,HI_S32 s32Max)
{
    U_VPSS_DIEMTNCRVRAT1 VPSS_DIEMTNCRVRAT1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNCRVRAT1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNCRVRAT1.u32));
    VPSS_DIEMTNCRVRAT1.bits.max_motion_ratio = s32Max;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNCRVRAT1.u32), VPSS_DIEMTNCRVRAT1.u32);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetMotionMinRatio(HI_U32 u32AppAddr,HI_S32 s32Min)
{
    U_VPSS_DIEMTNCRVRAT1 VPSS_DIEMTNCRVRAT1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNCRVRAT1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNCRVRAT1.u32));
    VPSS_DIEMTNCRVRAT1.bits.min_motion_ratio = s32Min;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNCRVRAT1.u32), VPSS_DIEMTNCRVRAT1.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMotionDiffThd(HI_U32 u32AppAddr,HI_S32 *ps32Thd)
{
    U_VPSS_DIEMTNDIFFTHD0 VPSS_DIEMTNDIFFTHD0;
    U_VPSS_DIEMTNDIFFTHD1 VPSS_DIEMTNDIFFTHD1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNDIFFTHD0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNDIFFTHD0.u32));
    VPSS_DIEMTNDIFFTHD0.bits.motion_diff_thd_0 = ps32Thd[0];
    VPSS_DIEMTNDIFFTHD0.bits.motion_diff_thd_1 = ps32Thd[1];
    VPSS_DIEMTNDIFFTHD0.bits.motion_diff_thd_2 = ps32Thd[2];
    VPSS_DIEMTNDIFFTHD0.bits.motion_diff_thd_3 = ps32Thd[3];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNDIFFTHD0.u32), VPSS_DIEMTNDIFFTHD0.u32);

    VPSS_DIEMTNDIFFTHD1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNDIFFTHD1.u32));
    VPSS_DIEMTNDIFFTHD1.bits.motion_diff_thd_4 = ps32Thd[4];
    VPSS_DIEMTNDIFFTHD1.bits.motion_diff_thd_5 = ps32Thd[5];
    VPSS_DIEMTNDIFFTHD1.bits.motion_diff_thd_6 = ps32Thd[6];
    VPSS_DIEMTNDIFFTHD1.bits.motion_diff_thd_7 = ps32Thd[7];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNDIFFTHD1.u32), VPSS_DIEMTNDIFFTHD1.u32);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetMotionIIrSlope(HI_U32 u32AppAddr,HI_S32 *ps32Slope)
{
    U_VPSS_DIEMTNIIRSLP0 VPSS_DIEMTNIIRSLP0;
    U_VPSS_DIEMTNIIRSLP1 VPSS_DIEMTNIIRSLP1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNIIRSLP0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNIIRSLP0.u32));
    VPSS_DIEMTNIIRSLP0.bits.motion_iir_curve_slope_0 = ps32Slope[0];
    VPSS_DIEMTNIIRSLP0.bits.motion_iir_curve_slope_1 = ps32Slope[1];
    VPSS_DIEMTNIIRSLP0.bits.motion_iir_curve_slope_2 = ps32Slope[2];
    VPSS_DIEMTNIIRSLP0.bits.motion_iir_curve_slope_3 = ps32Slope[3];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNIIRSLP0.u32), VPSS_DIEMTNIIRSLP0.u32);

    VPSS_DIEMTNIIRSLP1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNIIRSLP1.u32));
    VPSS_DIEMTNIIRSLP1.bits.motion_iir_curve_slope_4 = ps32Slope[4];
    VPSS_DIEMTNIIRSLP1.bits.motion_iir_curve_slope_5 = ps32Slope[5];
    VPSS_DIEMTNIIRSLP1.bits.motion_iir_curve_slope_6 = ps32Slope[6];
    VPSS_DIEMTNIIRSLP1.bits.motion_iir_curve_slope_7 = ps32Slope[7];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNIIRSLP1.u32), VPSS_DIEMTNIIRSLP1.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMotionIIrEn(HI_U32 u32AppAddr,HI_BOOL bEnIIr)
{
    U_VPSS_DIEMTNIIRRAT0 VPSS_DIEMTNIIRRAT0;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNIIRRAT0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNIIRRAT0.u32));
    VPSS_DIEMTNIIRRAT0.bits.motion_iir_en = bEnIIr;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNIIRRAT0.u32), VPSS_DIEMTNIIRRAT0.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMotionIIrStart(HI_U32 u32AppAddr,HI_S32 s32Start)
{
    U_VPSS_DIEMTNIIRRAT0 VPSS_DIEMTNIIRRAT0;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNIIRRAT0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNIIRRAT0.u32));
    VPSS_DIEMTNIIRRAT0.bits.start_motion_iir_ratio = s32Start;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNIIRRAT0.u32), VPSS_DIEMTNIIRRAT0.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetIIrMaxRatio(HI_U32 u32AppAddr,HI_S32 s32Max)
{
    U_VPSS_DIEMTNIIRRAT1 VPSS_DIEMTNIIRRAT1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNIIRRAT1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNIIRRAT1.u32));
    VPSS_DIEMTNIIRRAT1.bits.max_motion_iir_ratio = s32Max;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNIIRRAT1.u32), VPSS_DIEMTNIIRRAT1.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetIIrMinRatio(HI_U32 u32AppAddr,HI_S32 s32Min)
{
    U_VPSS_DIEMTNIIRRAT1 VPSS_DIEMTNIIRRAT1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNIIRRAT1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNIIRRAT1.u32));
    VPSS_DIEMTNIIRRAT1.bits.min_motion_iir_ratio = s32Min;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNIIRRAT1.u32), VPSS_DIEMTNIIRRAT1.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMotionIIrRatio(HI_U32 u32AppAddr,HI_S32 *ps32Ratio)
{
    U_VPSS_DIEMTNIIRRAT0 VPSS_DIEMTNIIRRAT0;
    U_VPSS_DIEMTNIIRRAT1 VPSS_DIEMTNIIRRAT1;
    U_VPSS_DIEMTNIIRRAT2 VPSS_DIEMTNIIRRAT2;
    U_VPSS_DIEMTNIIRRAT3 VPSS_DIEMTNIIRRAT3;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEMTNIIRRAT0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNIIRRAT0.u32));
    VPSS_DIEMTNIIRRAT0.bits.motion_iir_curve_ratio_0 = ps32Ratio[0];
    VPSS_DIEMTNIIRRAT0.bits.motion_iir_curve_ratio_1 = ps32Ratio[1];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNIIRRAT0.u32), VPSS_DIEMTNIIRRAT0.u32);

    VPSS_DIEMTNIIRRAT1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNIIRRAT1.u32));
    VPSS_DIEMTNIIRRAT1.bits.motion_iir_curve_ratio_2 = ps32Ratio[2];
    VPSS_DIEMTNIIRRAT1.bits.motion_iir_curve_ratio_3 = ps32Ratio[3];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNIIRRAT1.u32), VPSS_DIEMTNIIRRAT1.u32);

    
    VPSS_DIEMTNIIRRAT2.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNIIRRAT2.u32));
    VPSS_DIEMTNIIRRAT2.bits.motion_iir_curve_ratio_4 = ps32Ratio[4];
    VPSS_DIEMTNIIRRAT2.bits.motion_iir_curve_ratio_5 = ps32Ratio[5];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNIIRRAT2.u32), VPSS_DIEMTNIIRRAT2.u32);
    
    VPSS_DIEMTNIIRRAT3.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMTNIIRRAT3.u32));
    VPSS_DIEMTNIIRRAT3.bits.motion_iir_curve_ratio_6 = ps32Ratio[6];
    VPSS_DIEMTNIIRRAT3.bits.motion_iir_curve_ratio_7 = ps32Ratio[7];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMTNIIRRAT3.u32), VPSS_DIEMTNIIRRAT3.u32);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetRecWrMode(HI_U32 u32AppAddr,HI_BOOL bRecMdWrMd)
{
    U_VPSS_DIERECMODE VPSS_DIERECMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIERECMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIERECMODE.u32));
    VPSS_DIERECMODE.bits.rec_mode_write_mode = bRecMdWrMd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIERECMODE.u32), VPSS_DIERECMODE.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetRecEn(HI_U32 u32AppAddr,HI_BOOL bEnRec)
{
    U_VPSS_DIERECMODE VPSS_DIERECMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIERECMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIERECMODE.u32));
    VPSS_DIERECMODE.bits.rec_mode_en = bEnRec;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIERECMODE.u32), VPSS_DIERECMODE.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetRecMixMode(HI_U32 u32AppAddr,HI_BOOL bRecMdMixMd)
{
    U_VPSS_DIERECMODE VPSS_DIERECMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIERECMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIERECMODE.u32));
    VPSS_DIERECMODE.bits.rec_mode_mix_mode = bRecMdMixMd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIERECMODE.u32), VPSS_DIERECMODE.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetRecScale(HI_U32 u32AppAddr,HI_S32 s32RecScale)
{
    U_VPSS_DIERECMODE VPSS_DIERECMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIERECMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIERECMODE.u32));
    VPSS_DIERECMODE.bits.rec_mode_scale = s32RecScale;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIERECMODE.u32), VPSS_DIERECMODE.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetRecThd(HI_U32 u32AppAddr,HI_S32 s32Thd)
{
    U_VPSS_DIERECMODE VPSS_DIERECMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIERECMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIERECMODE.u32));
    VPSS_DIERECMODE.bits.rec_mode_motion_thd = s32Thd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIERECMODE.u32), VPSS_DIERECMODE.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetRecCoring(HI_U32 u32AppAddr,HI_S32 s32Coring)
{
    U_VPSS_DIERECMODE VPSS_DIERECMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIERECMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIERECMODE.u32));
    VPSS_DIERECMODE.bits.rec_mode_fld_motion_coring = s32Coring;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIERECMODE.u32), VPSS_DIERECMODE.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetRecGain(HI_U32 u32AppAddr,HI_S32 s32Gain)
{
    U_VPSS_DIERECMODE VPSS_DIERECMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIERECMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIERECMODE.u32));
    VPSS_DIERECMODE.bits.rec_mode_fld_motion_gain = s32Gain;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIERECMODE.u32), VPSS_DIERECMODE.u32);

    return HI_SUCCESS;
}


HI_S32 VPSS_REG_SetRecFldStep(HI_U32 u32AppAddr,HI_S32 *ps32Step)
{
    U_VPSS_DIEHISMODE VPSS_DIEHISMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEHISMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEHISMODE.u32));
    VPSS_DIEHISMODE.bits.rec_mode_fld_motion_step_0 = ps32Step[0];
    VPSS_DIEHISMODE.bits.rec_mode_fld_motion_step_1 = ps32Step[1];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEHISMODE.u32), VPSS_DIEHISMODE.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetRecFrmStep(HI_U32 u32AppAddr,HI_S32 *ps32Step)
{
    U_VPSS_DIEHISMODE VPSS_DIEHISMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEHISMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEHISMODE.u32));
    VPSS_DIEHISMODE.bits.rec_mode_frm_motion_step_0 = ps32Step[0];
    VPSS_DIEHISMODE.bits.rec_mode_frm_motion_step_1 = ps32Step[1];
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEHISMODE.u32), VPSS_DIEHISMODE.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetHisEn(HI_U32 u32AppAddr,HI_BOOL bEnHis)
{
    U_VPSS_DIEHISMODE VPSS_DIEHISMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEHISMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEHISMODE.u32));
    VPSS_DIEHISMODE.bits.his_motion_en = bEnHis;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEHISMODE.u32), VPSS_DIEHISMODE.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetHisWrMode(HI_U32 u32AppAddr,HI_BOOL bHisMtnWrMd)
{
    U_VPSS_DIEHISMODE VPSS_DIEHISMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEHISMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEHISMODE.u32));
    VPSS_DIEHISMODE.bits.his_motion_write_mode = bHisMtnWrMd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEHISMODE.u32), VPSS_DIEHISMODE.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetHisUseMode(HI_U32 u32AppAddr,HI_BOOL bHisMtnUseMd)
{
    U_VPSS_DIEHISMODE VPSS_DIEHISMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEHISMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEHISMODE.u32));
    VPSS_DIEHISMODE.bits.his_motion_using_mode = bHisMtnUseMd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEHISMODE.u32), VPSS_DIEHISMODE.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetMorFlt(HI_U32 u32AppAddr,HI_BOOL bEnflt,HI_S8 s8FltSize,HI_S8 s8FltThd)
{
  U_VPSS_DIEMORFLT VPSS_DIEMORFLT;
  VPSS_REG_S *pstReg;

  pstReg = (VPSS_REG_S*)u32AppAddr;

  VPSS_DIEMORFLT.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMORFLT.u32));

  VPSS_DIEMORFLT.bits.mor_flt_en   = bEnflt;
  VPSS_DIEMORFLT.bits.mor_flt_size = s8FltSize;
  VPSS_DIEMORFLT.bits.mor_flt_thd  = s8FltThd;
  
  VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMORFLT.u32), VPSS_DIEMORFLT.u32);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetBlendEn(HI_U32 u32AppAddr,HI_BOOL bEnBlend)
{
  U_VPSS_DIEMORFLT VPSS_DIEMORFLT;
  VPSS_REG_S *pstReg;

  pstReg = (VPSS_REG_S*)u32AppAddr;

  VPSS_DIEMORFLT.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMORFLT.u32));
  VPSS_DIEMORFLT.bits.med_blend_en = bEnBlend;
  VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMORFLT.u32), VPSS_DIEMORFLT.u32);

  return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetDeflickerEn(HI_U32 u32AppAddr,HI_BOOL bEnDeflicker)
{
  U_VPSS_DIEMORFLT VPSS_DIEMORFLT;
  VPSS_REG_S *pstReg;

  pstReg = (VPSS_REG_S*)u32AppAddr;

  VPSS_DIEMORFLT.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMORFLT.u32));
  VPSS_DIEMORFLT.bits.deflicker_en = bEnDeflicker;
  VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMORFLT.u32), VPSS_DIEMORFLT.u32);

  return HI_SUCCESS;
}

HI_S32 VPSS_REG_AdjustGain(HI_U32 u32AppAddr,HI_S8 s8Gain)
{
  U_VPSS_DIEMORFLT VPSS_DIEMORFLT;
  VPSS_REG_S *pstReg;

  pstReg = (VPSS_REG_S*)u32AppAddr;

  VPSS_DIEMORFLT.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEMORFLT.u32));
  VPSS_DIEMORFLT.bits.adjust_gain = s8Gain;
  VPSS_REG_RegWrite(&(pstReg->VPSS_DIEMORFLT.u32), VPSS_DIEMORFLT.u32);

  return HI_SUCCESS;
}






HI_S32 VPSS_REG_SetHisPreEn(HI_U32 u32AppAddr,HI_BOOL bEnPre)
{
    U_VPSS_DIEHISMODE VPSS_DIEHISMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEHISMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEHISMODE.u32));
    VPSS_DIEHISMODE.bits.pre_info_en = bEnPre;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEHISMODE.u32), VPSS_DIEHISMODE.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetHisPpreEn(HI_U32 u32AppAddr,HI_BOOL bEnPpre)
{
    U_VPSS_DIEHISMODE VPSS_DIEHISMODE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIEHISMODE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIEHISMODE.u32));
    VPSS_DIEHISMODE.bits.ppre_info_en = bEnPpre;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIEHISMODE.u32), VPSS_DIEHISMODE.u32);

    return HI_SUCCESS;

}

HI_S32 VPSS_REG_SetCombLimit(HI_U32 u32AppAddr,HI_S32  s32UpLimit,HI_S32  s32LowLimit)
{
    U_VPSS_DIECOMBCHK0 VPSS_DIECOMBCHK0;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIECOMBCHK0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECOMBCHK0.u32));
    VPSS_DIECOMBCHK0.bits.comb_chk_lower_limit = s32LowLimit;
    VPSS_DIECOMBCHK0.bits.comb_chk_upper_limit = s32UpLimit;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECOMBCHK0.u32), VPSS_DIECOMBCHK0.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetCombThd(HI_U32 u32AppAddr,HI_S32  s32Hthd,HI_S32  s32Vthd)
{
    U_VPSS_DIECOMBCHK0 VPSS_DIECOMBCHK0;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIECOMBCHK0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECOMBCHK0.u32));
    VPSS_DIECOMBCHK0.bits.comb_chk_min_hthd = s32Hthd;
    VPSS_DIECOMBCHK0.bits.comb_chk_min_vthd = s32Vthd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECOMBCHK0.u32), VPSS_DIECOMBCHK0.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetCombEn(HI_U32 u32AppAddr,HI_BOOL bEnComb)
{
    U_VPSS_DIECOMBCHK1 VPSS_DIECOMBCHK1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIECOMBCHK1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECOMBCHK1.u32));
    VPSS_DIECOMBCHK1.bits.comb_chk_en = bEnComb;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECOMBCHK1.u32), VPSS_DIECOMBCHK1.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetCombMdThd(HI_U32 u32AppAddr,HI_S32 s32MdThd)
{
    U_VPSS_DIECOMBCHK1 VPSS_DIECOMBCHK1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIECOMBCHK1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECOMBCHK1.u32));
    VPSS_DIECOMBCHK1.bits.comb_chk_md_thd = s32MdThd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECOMBCHK1.u32), VPSS_DIECOMBCHK1.u32);

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_SetCombEdgeThd(HI_U32 u32AppAddr,HI_S32 s32EdgeThd)
{
    U_VPSS_DIECOMBCHK1 VPSS_DIECOMBCHK1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_DIECOMBCHK1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DIECOMBCHK1.u32));
    VPSS_DIECOMBCHK1.bits.comb_chk_edge_thd = s32EdgeThd;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DIECOMBCHK1.u32), VPSS_DIECOMBCHK1.u32);

    return HI_SUCCESS;

}

HI_S32 VPSS_REG_SetStWrAddr(HI_U32 u32AppAddr,HI_U32 u32Addr)
{
    HI_U32 VPSS_STWADDR;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_STWADDR = VPSS_REG_RegRead(&(pstReg->VPSS_STWADDR));
    VPSS_STWADDR = u32Addr;
    VPSS_REG_RegWrite(&(pstReg->VPSS_STWADDR), VPSS_STWADDR);

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetStRdAddr(HI_U32 u32AppAddr,HI_U32 u32Addr)
{
    HI_U32 VPSS_STRADDR;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_STRADDR = VPSS_REG_RegRead(&(pstReg->VPSS_STRADDR));
    VPSS_STRADDR = u32Addr;
    VPSS_REG_RegWrite(&(pstReg->VPSS_STRADDR), VPSS_STRADDR);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetStStride(HI_U32 u32AppAddr,HI_U32 u32Stride)
{
    U_VPSS_STSTRIDE VPSS_STSTRIDE;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_STSTRIDE.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STSTRIDE.u32));
    VPSS_STSTRIDE.bits.st_stride = u32Stride;
    VPSS_REG_RegWrite(&(pstReg->VPSS_STSTRIDE.u32), VPSS_STSTRIDE.u32);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetDeiParaAddr(HI_U32 u32AppAddr,HI_U32 u32ParaPhyAddr)
{
    HI_U32 VPSS_DEI_ADDR;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    VPSS_DEI_ADDR = u32ParaPhyAddr;

    VPSS_REG_RegWrite(&(pstReg->VPSS_DEI_ADDR), VPSS_DEI_ADDR); 

    return HI_SUCCESS;

}
HI_S32 VPSS_REG_GetHisBin(HI_U32 u32AppAddr,HI_S32 *pstData)
{   
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    pstData[0] = VPSS_REG_RegRead(&(pstReg->VPSS_PDHISTBIN[0]));
    pstData[1] = VPSS_REG_RegRead(&(pstReg->VPSS_PDHISTBIN[1]));
    pstData[2] = VPSS_REG_RegRead(&(pstReg->VPSS_PDHISTBIN[2]));
    pstData[3] = VPSS_REG_RegRead(&(pstReg->VPSS_PDHISTBIN[3]));

    return HI_SUCCESS;
}


HI_S32 VPSS_REG_GetItDiff(HI_U32 u32AppAddr,HI_S32 *pstData)
{
    HI_S32 VPSS_PDFRMITDIFF;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    VPSS_PDFRMITDIFF = VPSS_REG_RegRead(&(pstReg->VPSS_PDFRMITDIFF));

    *pstData = VPSS_PDFRMITDIFF;

    return HI_SUCCESS;
}


HI_S32 VPSS_REG_GetPdMatch(HI_U32 u32AppAddr,
                            HI_S32 *ps32Match0,HI_S32 *ps32UnMatch0,
                            HI_S32 *ps32Match1,HI_S32 *ps32UnMatch1)
{
    HI_S32 VPSS_PDUMMATCH0;
    HI_S32 VPSS_PDUMNOMATCH0;
    HI_S32 VPSS_PDUMMATCH1;
    HI_S32 VPSS_PDUMNOMATCH1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    
    VPSS_PDUMMATCH0 = VPSS_REG_RegRead(&(pstReg->VPSS_PDUMMATCH0));
    VPSS_PDUMNOMATCH0 = VPSS_REG_RegRead(&(pstReg->VPSS_PDUMNOMATCH0));
    VPSS_PDUMMATCH1 = VPSS_REG_RegRead(&(pstReg->VPSS_PDUMMATCH1));
    VPSS_PDUMNOMATCH1 = VPSS_REG_RegRead(&(pstReg->VPSS_PDUMNOMATCH1));

    *ps32Match0 = VPSS_PDUMMATCH0;
    *ps32UnMatch0 = VPSS_PDUMNOMATCH0;
    *ps32Match1 = VPSS_PDUMMATCH1;
    *ps32UnMatch1 = VPSS_PDUMNOMATCH1;
    return HI_SUCCESS;
}                       


HI_S32 VPSS_REG_GetLasiCnt(HI_U32 u32AppAddr,
                            HI_S32 *ps32Cnt14,HI_S32 *ps32Cnt32,
                            HI_S32 *ps32Cnt34)
{
    HI_S32 VPSS_PDLASICNT14;
    HI_S32 VPSS_PDLASICNT32;
    HI_S32 VPSS_PDLASICNT34;
    
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_PDLASICNT14 = VPSS_REG_RegRead(&(pstReg->VPSS_PDLASICNT14));
    VPSS_PDLASICNT32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDLASICNT32));
    VPSS_PDLASICNT34 = VPSS_REG_RegRead(&(pstReg->VPSS_PDLASICNT34));

    *ps32Cnt14 = VPSS_PDLASICNT14;
    *ps32Cnt32 = VPSS_PDLASICNT32;
    *ps32Cnt34 = VPSS_PDLASICNT34;

    return HI_SUCCESS;
}


HI_S32 VPSS_REG_GetPdIchd(HI_U32 u32AppAddr,HI_S32 *pstData)
{
    HI_S32 VPSS_PDICHD;
    
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_PDICHD = VPSS_REG_RegRead(&(pstReg->VPSS_PDICHD));

    *pstData = VPSS_PDICHD;
    
    return HI_SUCCESS;
}


HI_S32 VPSS_REG_GetBlkSad(HI_U32 u32AppAddr,HI_S32 *pstData)
{
    HI_S32  VPSS_PDSTLBLKSAD[16];
    HI_U32 u32Count;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    for(u32Count = 0; u32Count < 16; u32Count ++)
    {
        VPSS_PDSTLBLKSAD[u32Count] = VPSS_REG_RegRead(&(pstReg->VPSS_PDSTLBLKSAD[u32Count]));
        pstData[u32Count] = VPSS_PDSTLBLKSAD[u32Count];
    }
    
    return HI_SUCCESS;
}


HI_S32 VPSS_REG_GetPccData(HI_U32 u32AppAddr,HI_S32 *ps32FFWD,
                             HI_S32 *ps32FWD,HI_S32 *ps32BWD,HI_S32 *ps32CRSS,
                             HI_S32 *ps32PW,HI_S32 *ps32FWDTKR,HI_S32 *ps32WDTKR)
{
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    *ps32FFWD = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCFFWD));
    *ps32FWD = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCFWD));
    *ps32BWD = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCBWD));
    *ps32CRSS = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCCRSS));
    *ps32PW = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCPW));
    *ps32FWDTKR = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCFWDTKR));
    *ps32WDTKR = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCBWDTKR));

    return HI_SUCCESS;
}

/**FMD */
HI_S32 VPSS_REG_SetDeiEdgeSmoothRatio(HI_U32 u32AppAddr,HI_S8 u8Data)
{
    U_VPSS_PDCTRL VPSS_PDCTRL;
    VPSS_REG_S *pstReg;

    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDCTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDCTRL.u32));
    VPSS_PDCTRL.bits.edge_smooth_ratio = u8Data;
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDCTRL.u32), VPSS_PDCTRL.u32); 

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetDeiStillBlkThd(HI_U32 u32AppAddr,HI_S8 u8Data)
{
    U_VPSS_PDBLKTHD VPSS_PDBLKTHD;
    VPSS_REG_S *pstReg;

    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDBLKTHD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDBLKTHD.u32));
    VPSS_PDBLKTHD.bits.diff_movblk_thd = u8Data;
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDBLKTHD.u32), VPSS_PDBLKTHD.u32); 

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetDeiHistThd(HI_U32 u32AppAddr,HI_S8 *pu8Data)
{
    U_VPSS_PDPHISTTHD1  VPSS_PDPHISTTHD1;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_PDPHISTTHD1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDPHISTTHD1.u32));
    VPSS_PDPHISTTHD1.bits.hist_thd0 = pu8Data[0];
    VPSS_PDPHISTTHD1.bits.hist_thd1 = pu8Data[1];
    VPSS_PDPHISTTHD1.bits.hist_thd2 = pu8Data[2];
    VPSS_PDPHISTTHD1.bits.hist_thd3 = pu8Data[3];
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDPHISTTHD1.u32), VPSS_PDPHISTTHD1.u32); 

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetDeiUmThd(HI_U32 u32AppAddr,HI_S8 *pu8Data)
{
    U_VPSS_PDUMTHD VPSS_PDUMTHD;
    VPSS_REG_S *pstReg;

    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDUMTHD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDUMTHD.u32));
    VPSS_PDUMTHD.bits.um_thd0 = pu8Data[0];
    VPSS_PDUMTHD.bits.um_thd1 = pu8Data[1];
    VPSS_PDUMTHD.bits.um_thd2 = pu8Data[2];
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDUMTHD.u32), VPSS_PDUMTHD.u32); 
    
    return HI_SUCCESS;
}


HI_S32 VPSS_REG_SetDeiCoring(HI_U32 u32AppAddr,HI_S8 s8CorBlk,HI_S8 s8CorNorm,HI_S8 s8CorTkr)
{
    U_VPSS_PDPCCCORING VPSS_PDPCCCORING;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDPCCCORING.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCCORING.u32));
    VPSS_PDPCCCORING.bits.coring_blk = s8CorBlk;
    VPSS_PDPCCCORING.bits.coring_norm = s8CorNorm;
    VPSS_PDPCCCORING.bits.coring_tkr = s8CorTkr;
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDPCCCORING.u32), VPSS_PDPCCCORING.u32); 
    
    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetDeiMovCoring(HI_U32 u32AppAddr,HI_S8 s8Blk,HI_S8 s8Norm,HI_S8 s8Tkr)
{
    U_VPSS_PDPCCMOV VPSS_PDPCCMOV;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDPCCMOV.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCMOV.u32));
    VPSS_PDPCCMOV.bits.mov_coring_blk = s8Blk;
    VPSS_PDPCCMOV.bits.mov_coring_norm = s8Norm;
    VPSS_PDPCCMOV.bits.mov_coring_tkr = s8Tkr;
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDPCCMOV.u32), VPSS_PDPCCMOV.u32);
    //printk("\n VPSS_PDPCCCORING.u32 = %x\n",pstReg->VPSS_PDPCCMOV.u32);
    return HI_SUCCESS;
}


HI_S32 VPSS_REG_SetDeiPccHThd(HI_U32 u32AppAddr,HI_S8 s8Data)
{
    U_VPSS_PDPCCHTHD VPSS_PDPCCHTHD;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDPCCHTHD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCHTHD.u32));
    VPSS_PDPCCHTHD.bits.pcc_hthd = s8Data;
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDPCCHTHD.u32), VPSS_PDPCCHTHD.u32); 
    
    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetDeiPccVThd(HI_U32 u32AppAddr,HI_S8 *ps8Data)
{
    U_VPSS_PDPCCVTHD VPSS_PDPCCVTHD;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDPCCVTHD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDPCCVTHD.u32));
    VPSS_PDPCCVTHD.bits.pcc_vthd0 = ps8Data[0];
    VPSS_PDPCCVTHD.bits.pcc_vthd1 = ps8Data[1];
    VPSS_PDPCCVTHD.bits.pcc_vthd2 = ps8Data[2];
    VPSS_PDPCCVTHD.bits.pcc_vthd3 = ps8Data[3];
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDPCCVTHD.u32), VPSS_PDPCCVTHD.u32); 
    
    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetDeiItDiff(HI_U32 u32AppAddr,HI_S8 *ps8Data)
{
    U_VPSS_PDITDIFFVTHD VPSS_PDITDIFFVTHD;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDITDIFFVTHD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDITDIFFVTHD.u32));
    VPSS_PDITDIFFVTHD.bits.itdiff_vthd0 = ps8Data[0];
    VPSS_PDITDIFFVTHD.bits.itdiff_vthd1 = ps8Data[1];
    VPSS_PDITDIFFVTHD.bits.itdiff_vthd2 = ps8Data[2];
    VPSS_PDITDIFFVTHD.bits.itdiff_vthd3 = ps8Data[3];
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDITDIFFVTHD.u32), VPSS_PDITDIFFVTHD.u32); 
    
    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetDeiLasiCtrl(HI_U32 u32AppAddr,HI_S8 s8Thr,HI_S8 s8EdgeThr,HI_S8 s8lasiThr)
{
    U_VPSS_PDLASITHD VPSS_PDLASITHD;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDLASITHD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDLASITHD.u32));
    VPSS_PDLASITHD.bits.lasi_mov_thr = s8lasiThr;
    VPSS_PDLASITHD.bits.edge_thd = s8EdgeThr;
    VPSS_PDLASITHD.bits.lasi_thd = s8Thr;
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDLASITHD.u32),VPSS_PDLASITHD.u32);
    
    return HI_SUCCESS; 
}

HI_S32 VPSS_REG_SetDeiPdBitMove(HI_U32 u32AppAddr,HI_S32  s32Data)
{
    U_VPSS_PDCTRL VPSS_PDCTRL;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDCTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDCTRL.u32));
    VPSS_PDCTRL.bits.bitsmov2r = s32Data + 6;
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDCTRL.u32),VPSS_PDCTRL.u32); 
    
    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetDeiDirMch(HI_U32 u32AppAddr,HI_BOOL  bNext)
{
    U_VPSS_PDCTRL VPSS_PDCTRL;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDCTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDCTRL.u32));
    VPSS_PDCTRL.bits.dir_mch_l = bNext;
    VPSS_PDCTRL.bits.dir_mch_c = bNext;
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDCTRL.u32),VPSS_PDCTRL.u32); 
  //  printk("\ndir_mch_l %x\n",pstReg->VPSS_PDCTRL.bits.dir_mch_l);
    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetEdgeSmooth(HI_U32 u32AppAddr,HI_BOOL  bEdgeSmooth)
{
    U_VPSS_PDCTRL VPSS_PDCTRL;
    VPSS_REG_S *pstReg;

    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_PDCTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_PDCTRL.u32));
    VPSS_PDCTRL.bits.edge_smooth_en = bEdgeSmooth;
    VPSS_REG_RegWrite(&(pstReg->VPSS_PDCTRL.u32),VPSS_PDCTRL.u32);
    
    return HI_SUCCESS;
}


/*************************************************************************************************/


HI_S32 VPSS_REG_SetVc1En(HI_U32 u32AppAddr,HI_U32 u32EnVc1)
{
    U_VPSS_CTRL VPSS_CTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));

    VPSS_CTRL.bits.vc1_en = u32EnVc1;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetVc1Profile(HI_U32 u32AppAddr,REG_FRAMEPOS_E ePos,HI_U32 u32Profile)
{
    U_VPSS_VC1_CTRL VPSS_VC1_CTRL;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_VC1_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VC1_CTRL[ePos].u32));
    VPSS_VC1_CTRL.bits.vc1_profile = u32Profile;
    VPSS_REG_RegWrite(&(pstReg->VPSS_VC1_CTRL[ePos].u32), VPSS_VC1_CTRL.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetVc1Map(HI_U32 u32AppAddr,REG_FRAMEPOS_E ePos,HI_U32 u32MapY,HI_U32 u32MapC,
                            HI_U32 u32BMapY,HI_U32 u32BMapC)
{
    U_VPSS_VC1_CTRL VPSS_VC1_CTRL;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_VC1_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VC1_CTRL[ePos].u32));
    VPSS_VC1_CTRL.bits.vc1_mapy = u32MapY;
    VPSS_VC1_CTRL.bits.vc1_mapc = u32MapC;
    VPSS_VC1_CTRL.bits.vc1_bmapy = u32BMapY;
    VPSS_VC1_CTRL.bits.vc1_bmapc= u32BMapC;
    VPSS_REG_RegWrite(&(pstReg->VPSS_VC1_CTRL[ePos].u32), VPSS_VC1_CTRL.u32); 
    return HI_SUCCESS;
}                            
HI_S32 VPSS_REG_SetVc1MapFlag(HI_U32 u32AppAddr,REG_FRAMEPOS_E ePos,HI_U32 u32YFlag,HI_U32 u32CFlag,
                            HI_U32 u32BYFlag,HI_U32 u32BCFlag)
{
    U_VPSS_VC1_CTRL VPSS_VC1_CTRL;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_VC1_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VC1_CTRL[ePos].u32));
    VPSS_VC1_CTRL.bits.vc1_mapyflg = u32YFlag;
    VPSS_VC1_CTRL.bits.vc1_mapcflg = u32CFlag;
    VPSS_VC1_CTRL.bits.vc1_bmapyflg = u32BYFlag;
    VPSS_VC1_CTRL.bits.vc1_bmapcflg = u32BCFlag;
    VPSS_REG_RegWrite(&(pstReg->VPSS_VC1_CTRL[ePos].u32), VPSS_VC1_CTRL.u32); 
    return HI_SUCCESS;
}                            
HI_S32 VPSS_REG_SetVc1RangeEn(HI_U32 u32AppAddr,REG_FRAMEPOS_E ePos,HI_U32 u32EnVc1)
{
    U_VPSS_VC1_CTRL VPSS_VC1_CTRL;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_VC1_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VC1_CTRL[ePos].u32));
    VPSS_VC1_CTRL.bits.vc1_rangedfrm = u32EnVc1;
    VPSS_REG_RegWrite(&(pstReg->VPSS_VC1_CTRL[ePos].u32), VPSS_VC1_CTRL.u32); 
    return HI_SUCCESS;
}


HI_S32 VPSS_REG_SetUVConvertEn(HI_U32 u32AppAddr,HI_U32 u32EnUV)
{
    U_VPSS_CTRL VPSS_CTRL;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    VPSS_CTRL.bits.uv_invert = u32EnUV;
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32); 
    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetDREn(HI_U32 u32AppAddr,HI_BOOL  bEnDR)
{
    U_VPSS_CTRL VPSS_CTRL;
    U_VPSS_DNR_CTRL VPSS_DNR_CTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    VPSS_CTRL.bits.dr_en = bEnDR;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32); 

    VPSS_DNR_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DNR_CTRL.u32));
    VPSS_DNR_CTRL.bits.dr_en = bEnDR;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DNR_CTRL.u32), VPSS_DNR_CTRL.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetDRPara(HI_U32 u32AppAddr,HI_S32  s32FlatThd,HI_S32  s32SimiThd,
                            HI_S32 s32AlphaScale,HI_S32 s32BetaScale)
{
    U_VPSS_DR_CFG0 VPSS_DR_CFG0;
    U_VPSS_DR_CFG1 VPSS_DR_CFG1;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DR_CFG0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DR_CFG0.u32));
    VPSS_DR_CFG0.bits.drthrflat3x3zone = s32FlatThd;    
    VPSS_DR_CFG0.bits.drthrmaxsimilarpixdiff = s32SimiThd;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DR_CFG0.u32), VPSS_DR_CFG0.u32); 
    
    VPSS_DR_CFG1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DR_CFG1.u32));
    VPSS_DR_CFG1.bits.dralphascale = s32AlphaScale;    
    VPSS_DR_CFG1.bits.drbetascale = s32BetaScale;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DR_CFG1.u32), VPSS_DR_CFG1.u32); 
    return HI_SUCCESS;
    
}     
HI_S32 VPSS_REG_SetDnrInfoAddr(HI_U32 u32AppAddr,HI_U32  u32Yaddr,HI_U32  u32Caddr,
                            HI_U32 u32Ystride,HI_U32 u32Cstride)
{
    U_VPSS_DNR_INF_STRIDE VPSS_DNR_INF_STRIDE;
    
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_REG_RegWrite(&(pstReg->VPSS_DNR_YINF_STADDR), u32Yaddr); 
    VPSS_REG_RegWrite(&(pstReg->VPSS_DNR_CINF_STADDR), u32Caddr); 

    VPSS_DNR_INF_STRIDE.bits.dnr_yinf_stride = u32Ystride;
    VPSS_DNR_INF_STRIDE.bits.dnr_cinf_stride = u32Cstride;
    VPSS_REG_RegWrite(&(pstReg->VPSS_DNR_INF_STRIDE.u32), VPSS_DNR_INF_STRIDE.u32); 

    return HI_SUCCESS;
}                            
/*DB*/                          
HI_S32 VPSS_REG_SetDBEn(HI_U32 u32AppAddr,HI_BOOL  bEnDB)
{
    U_VPSS_CTRL VPSS_CTRL;
    U_VPSS_DNR_CTRL VPSS_DNR_CTRL;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    VPSS_CTRL.bits.db_en = bEnDB;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32); 
    
    VPSS_DNR_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DNR_CTRL.u32));
    VPSS_DNR_CTRL.bits.db_en = bEnDB;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DNR_CTRL.u32), VPSS_DNR_CTRL.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetDBVH(HI_U32 u32AppAddr,HI_BOOL  bEnVert, HI_BOOL bEnHor)
{
    U_VPSS_DB_CFG0 VPSS_DB_CFG0;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    VPSS_DB_CFG0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DB_CFG0.u32));
    VPSS_DB_CFG0.bits.dbenvert = bEnVert;    
    VPSS_DB_CFG0.bits.dbenhor = bEnHor;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DB_CFG0.u32), VPSS_DB_CFG0.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetEdgeThd(HI_U32 u32AppAddr,HI_S32  s32Thd)
{
    U_VPSS_DB_CFG0 VPSS_DB_CFG0;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DB_CFG0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DB_CFG0.u32));
    VPSS_DB_CFG0.bits.thrdbedgethr = s32Thd;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DB_CFG0.u32), VPSS_DB_CFG0.u32); 
    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetVerProg(HI_U32 u32AppAddr,HI_BOOL  bProg)
{
    U_VPSS_DB_CFG0 VPSS_DB_CFG0;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DB_CFG0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DB_CFG0.u32));
    VPSS_DB_CFG0.bits.dbvertasprog = bProg;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DB_CFG0.u32), VPSS_DB_CFG0.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetWeakFlt(HI_U32 u32AppAddr,HI_BOOL  bWeak)
{
    U_VPSS_DB_CFG0 VPSS_DB_CFG0;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DB_CFG0.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DB_CFG0.u32));
    VPSS_DB_CFG0.bits.dbuseweakflt = bWeak;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DB_CFG0.u32), VPSS_DB_CFG0.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetMaxDiff(HI_U32 u32AppAddr,HI_S32  s32VerMax,HI_S32  s32HorMax)
{
    U_VPSS_DB_CFG1 VPSS_DB_CFG1;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DB_CFG1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DB_CFG1.u32));
    VPSS_DB_CFG1.bits.dbthrmaxdiffvert = s32VerMax;    
    VPSS_DB_CFG1.bits.dbthrmaxdiffhor = s32HorMax;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DB_CFG1.u32), VPSS_DB_CFG1.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLeastDiff(HI_U32 u32AppAddr,HI_S32  s32VerLeast,HI_S32  s32HorLeast)
{
    U_VPSS_DB_CFG1 VPSS_DB_CFG1;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DB_CFG1.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DB_CFG1.u32));
    VPSS_DB_CFG1.bits.dbthrleastblkdiffvert = s32VerLeast;    
    VPSS_DB_CFG1.bits.dbthrleastblkdiffhor = s32HorLeast;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DB_CFG1.u32), VPSS_DB_CFG1.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetScale(HI_U32 u32AppAddr,HI_S32  s32Alpha,HI_S32  s32Beta)
{
    U_VPSS_DB_CFG2 VPSS_DB_CFG2;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DB_CFG2.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DB_CFG2.u32));
    VPSS_DB_CFG2.bits.dbalphascale = s32Alpha;    
    VPSS_DB_CFG2.bits.dbbetascale = s32Beta;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DB_CFG2.u32), VPSS_DB_CFG2.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetSmoothThd(HI_U32 u32AppAddr,HI_S32  s32Thd)
{
    U_VPSS_DB_CFG2 VPSS_DB_CFG2;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DB_CFG2.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DB_CFG2.u32));
    VPSS_DB_CFG2.bits.thrdblargesmooth = s32Thd;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DB_CFG2.u32), VPSS_DB_CFG2.u32); 
    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetQpThd(HI_U32 u32AppAddr,HI_S32  s32Thd)
{
    U_VPSS_DB_CFG2 VPSS_DB_CFG2;

    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    VPSS_DB_CFG2.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_DB_CFG2.u32));
    VPSS_DB_CFG2.bits.detailimgqpthr = s32Thd;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_DB_CFG2.u32), VPSS_DB_CFG2.u32); 
    return HI_SUCCESS;
}


/*LTI/CTI*/
HI_S32 VPSS_REG_SetLTIEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL  bEnLTI)
{
    U_VPSS_VHD_LTI_CTRL VPSS_VHD_LTI_CTRL;
    U_VPSS_VSD_LTI_CTRL VPSS_VSD_LTI_CTRL;
    U_VPSS_STR_LTI_CTRL VPSS_STR_LTI_CTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_LTI_CTRL.u32));
            VPSS_VHD_LTI_CTRL.bits.lti_en = bEnLTI;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_LTI_CTRL.u32), VPSS_VHD_LTI_CTRL.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_LTI_CTRL.u32));
            VPSS_VSD_LTI_CTRL.bits.lti_en = bEnLTI;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_LTI_CTRL.u32), VPSS_VSD_LTI_CTRL.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_LTI_CTRL.u32));
            VPSS_STR_LTI_CTRL.bits.lti_en = bEnLTI;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_LTI_CTRL.u32), VPSS_STR_LTI_CTRL.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLGainRatio(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Ratio)
{
    U_VPSS_VHD_LTI_CTRL VPSS_VHD_LTI_CTRL;
    U_VPSS_VSD_LTI_CTRL VPSS_VSD_LTI_CTRL;
    U_VPSS_STR_LTI_CTRL VPSS_STR_LTI_CTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_LTI_CTRL.u32));
            VPSS_VHD_LTI_CTRL.bits.lgain_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_LTI_CTRL.u32), VPSS_VHD_LTI_CTRL.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_LTI_CTRL.u32));
            VPSS_VSD_LTI_CTRL.bits.lgain_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_LTI_CTRL.u32), VPSS_VSD_LTI_CTRL.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_LTI_CTRL.u32));
            VPSS_STR_LTI_CTRL.bits.lgain_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_LTI_CTRL.u32), VPSS_STR_LTI_CTRL.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLGainCoef(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S8  *ps8Coef)
{
    U_VPSS_VHD_LGAIN_COEF VPSS_VHD_LGAIN_COEF;
    U_VPSS_VSD_LGAIN_COEF VPSS_VSD_LGAIN_COEF;
    U_VPSS_STR_LGAIN_COEF VPSS_STR_LGAIN_COEF;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_LGAIN_COEF.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_LGAIN_COEF.u32));
            VPSS_VHD_LGAIN_COEF.bits.lgain_coef0 = ps8Coef[0];    
            VPSS_VHD_LGAIN_COEF.bits.lgain_coef1 = ps8Coef[1];    
            VPSS_VHD_LGAIN_COEF.bits.lgain_coef2 = ps8Coef[2];    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_LGAIN_COEF.u32), VPSS_VHD_LGAIN_COEF.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_LGAIN_COEF.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_LGAIN_COEF.u32));
            VPSS_VSD_LGAIN_COEF.bits.lgain_coef0 = ps8Coef[0];    
            VPSS_VSD_LGAIN_COEF.bits.lgain_coef1 = ps8Coef[1];    
            VPSS_VSD_LGAIN_COEF.bits.lgain_coef2 = ps8Coef[2];    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_LGAIN_COEF.u32), VPSS_VSD_LGAIN_COEF.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_LGAIN_COEF.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_LGAIN_COEF.u32));
            VPSS_STR_LGAIN_COEF.bits.lgain_coef0 = ps8Coef[0];    
            VPSS_STR_LGAIN_COEF.bits.lgain_coef1 = ps8Coef[1];    
            VPSS_STR_LGAIN_COEF.bits.lgain_coef2 = ps8Coef[2];    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_LGAIN_COEF.u32), VPSS_STR_LGAIN_COEF.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLMixingRatio(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Ratio)
{
    U_VPSS_VHD_LTI_CTRL VPSS_VHD_LTI_CTRL;
    U_VPSS_VSD_LTI_CTRL VPSS_VSD_LTI_CTRL;
    U_VPSS_STR_LTI_CTRL VPSS_STR_LTI_CTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_LTI_CTRL.u32));
            VPSS_VHD_LTI_CTRL.bits.lmixing_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_LTI_CTRL.u32), VPSS_VHD_LTI_CTRL.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_LTI_CTRL.u32));
            VPSS_VSD_LTI_CTRL.bits.lmixing_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_LTI_CTRL.u32), VPSS_VSD_LTI_CTRL.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_LTI_CTRL.u32));
            VPSS_STR_LTI_CTRL.bits.lmixing_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_LTI_CTRL.u32), VPSS_STR_LTI_CTRL.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLCoringThd(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Thd)
{
    U_VPSS_VHD_LTI_THD VPSS_VHD_LTI_THD;
    U_VPSS_VSD_LTI_THD VPSS_VSD_LTI_THD;
    U_VPSS_STR_LTI_THD VPSS_STR_LTI_THD;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_LTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_LTI_THD.u32));
            VPSS_VHD_LTI_THD.bits.lcoring_thd = s32Thd;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_LTI_THD.u32), VPSS_VHD_LTI_THD.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_LTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_LTI_THD.u32));
            VPSS_VSD_LTI_THD.bits.lcoring_thd = s32Thd;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_LTI_THD.u32), VPSS_VSD_LTI_THD.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_LTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_LTI_THD.u32));
            VPSS_STR_LTI_THD.bits.lcoring_thd = s32Thd;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_LTI_THD.u32), VPSS_STR_LTI_THD.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLSwing(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Under,HI_S32  s32Over)
{
    U_VPSS_VHD_LTI_THD VPSS_VHD_LTI_THD;
    U_VPSS_VSD_LTI_THD VPSS_VSD_LTI_THD;
    U_VPSS_STR_LTI_THD VPSS_STR_LTI_THD;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_LTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_LTI_THD.u32));
            VPSS_VHD_LTI_THD.bits.lunder_swing = s32Under;    
            VPSS_VHD_LTI_THD.bits.lover_swing = s32Over;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_LTI_THD.u32), VPSS_VHD_LTI_THD.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_LTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_LTI_THD.u32));
            VPSS_VSD_LTI_THD.bits.lunder_swing = s32Under;    
            VPSS_VSD_LTI_THD.bits.lover_swing = s32Over;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_LTI_THD.u32), VPSS_VSD_LTI_THD.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_LTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_LTI_THD.u32));
            VPSS_STR_LTI_THD.bits.lunder_swing = s32Under;    
            VPSS_STR_LTI_THD.bits.lover_swing = s32Over;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_LTI_THD.u32), VPSS_STR_LTI_THD.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLHpassCoef(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S8  *ps8Coef)
{
    U_VPSS_VHD_LTI_CTRL VPSS_VHD_LTI_CTRL;
    U_VPSS_VHD_LHPASS_COEF VPSS_VHD_LHPASS_COEF;
    
    U_VPSS_VSD_LTI_CTRL VPSS_VSD_LTI_CTRL;
    U_VPSS_VSD_LHPASS_COEF VPSS_VSD_LHPASS_COEF;

    
    U_VPSS_STR_LTI_CTRL VPSS_STR_LTI_CTRL;
    U_VPSS_STR_LHPASS_COEF VPSS_STR_LHPASS_COEF;
    
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_LHPASS_COEF.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_LHPASS_COEF.u32));
            VPSS_VHD_LHPASS_COEF.bits.lhpass_coef0 = ps8Coef[0];    
            VPSS_VHD_LHPASS_COEF.bits.lhpass_coef1 = ps8Coef[1];      
            VPSS_VHD_LHPASS_COEF.bits.lhpass_coef2 = ps8Coef[2];     
            VPSS_VHD_LHPASS_COEF.bits.lhpass_coef3 = ps8Coef[3];   
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_LHPASS_COEF.u32), VPSS_VHD_LHPASS_COEF.u32); 

            VPSS_VHD_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_LTI_CTRL.u32));
            VPSS_VHD_LTI_CTRL.bits.lhpass_coef4 = ps8Coef[4];   
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_LTI_CTRL.u32), VPSS_VHD_LTI_CTRL.u32);
            
            break;
        case VPSS_REG_SD:
            VPSS_VSD_LHPASS_COEF.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_LHPASS_COEF.u32));
            VPSS_VSD_LHPASS_COEF.bits.lhpass_coef0 = ps8Coef[0];    
            VPSS_VSD_LHPASS_COEF.bits.lhpass_coef1 = ps8Coef[1];      
            VPSS_VSD_LHPASS_COEF.bits.lhpass_coef2 = ps8Coef[2];     
            VPSS_VSD_LHPASS_COEF.bits.lhpass_coef3 = ps8Coef[3];   
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_LHPASS_COEF.u32), VPSS_VSD_LHPASS_COEF.u32); 

            VPSS_VSD_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_LTI_CTRL.u32));
            VPSS_VSD_LTI_CTRL.bits.lhpass_coef4 = ps8Coef[4];   
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_LTI_CTRL.u32), VPSS_VSD_LTI_CTRL.u32);
            break;
        case VPSS_REG_STR:
            VPSS_STR_LHPASS_COEF.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_LHPASS_COEF.u32));
            VPSS_STR_LHPASS_COEF.bits.lhpass_coef0 = ps8Coef[0];    
            VPSS_STR_LHPASS_COEF.bits.lhpass_coef1 = ps8Coef[1];      
            VPSS_STR_LHPASS_COEF.bits.lhpass_coef2 = ps8Coef[2];     
            VPSS_STR_LHPASS_COEF.bits.lhpass_coef3 = ps8Coef[3];   
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_LHPASS_COEF.u32), VPSS_STR_LHPASS_COEF.u32); 

            VPSS_STR_LTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_LTI_CTRL.u32));
            VPSS_STR_LTI_CTRL.bits.lhpass_coef4 = ps8Coef[4];   
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_LTI_CTRL.u32), VPSS_STR_LTI_CTRL.u32);
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLHfreqThd(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S16  *ps16Thd)
{
    U_VPSS_VHD_LHFREQ_THD VPSS_VHD_LHFREQ_THD;
    U_VPSS_VSD_LHFREQ_THD VPSS_VSD_LHFREQ_THD;
    U_VPSS_STR_LHFREQ_THD VPSS_STR_LHFREQ_THD;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_LHFREQ_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_LHFREQ_THD.u32));
            VPSS_VHD_LHFREQ_THD.bits.lhfreq_thd0 = ps16Thd[0];    
            VPSS_VHD_LHFREQ_THD.bits.lhfreq_thd1 = ps16Thd[1];    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_LHFREQ_THD.u32), VPSS_VHD_LHFREQ_THD.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_LHFREQ_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_LHFREQ_THD.u32));
            VPSS_VSD_LHFREQ_THD.bits.lhfreq_thd0 = ps16Thd[0];    
            VPSS_VSD_LHFREQ_THD.bits.lhfreq_thd1 = ps16Thd[1];    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_LHFREQ_THD.u32), VPSS_VSD_LHFREQ_THD.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_LHFREQ_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_LHFREQ_THD.u32));
            VPSS_STR_LHFREQ_THD.bits.lhfreq_thd0 = ps16Thd[0];    
            VPSS_STR_LHFREQ_THD.bits.lhfreq_thd1 = ps16Thd[1];    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_LHFREQ_THD.u32), VPSS_STR_LHFREQ_THD.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetCTIEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL  bEnCTI)
{
    U_VPSS_VHD_CTI_CTRL VPSS_VHD_CTI_CTRL;
    U_VPSS_VSD_CTI_CTRL VPSS_VSD_CTI_CTRL;
    U_VPSS_STR_CTI_CTRL VPSS_STR_CTI_CTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_CTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_CTI_CTRL.u32));
            VPSS_VHD_CTI_CTRL.bits.cti_en = bEnCTI;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_CTI_CTRL.u32), VPSS_VHD_CTI_CTRL.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_CTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_CTI_CTRL.u32));
            VPSS_VSD_CTI_CTRL.bits.cti_en = bEnCTI;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_CTI_CTRL.u32), VPSS_VSD_CTI_CTRL.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_CTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_CTI_CTRL.u32));
            VPSS_STR_CTI_CTRL.bits.cti_en = bEnCTI;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_CTI_CTRL.u32), VPSS_STR_CTI_CTRL.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetCGainRatio(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Ratio)
{
    U_VPSS_VHD_CTI_CTRL VPSS_VHD_CTI_CTRL;
    U_VPSS_VSD_CTI_CTRL VPSS_VSD_CTI_CTRL;
    U_VPSS_STR_CTI_CTRL VPSS_STR_CTI_CTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_CTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_CTI_CTRL.u32));
            VPSS_VHD_CTI_CTRL.bits.cgain_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_CTI_CTRL.u32), VPSS_VHD_CTI_CTRL.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_CTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_CTI_CTRL.u32));
            VPSS_VSD_CTI_CTRL.bits.cgain_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_CTI_CTRL.u32), VPSS_VSD_CTI_CTRL.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_CTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_CTI_CTRL.u32));
            VPSS_STR_CTI_CTRL.bits.cgain_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_CTI_CTRL.u32), VPSS_STR_CTI_CTRL.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetCMixingRatio(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Ratio)
{
    U_VPSS_VHD_CTI_CTRL VPSS_VHD_CTI_CTRL;
    U_VPSS_VSD_CTI_CTRL VPSS_VSD_CTI_CTRL;
    U_VPSS_STR_CTI_CTRL VPSS_STR_CTI_CTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_CTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_CTI_CTRL.u32));
            VPSS_VHD_CTI_CTRL.bits.cmixing_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_CTI_CTRL.u32), VPSS_VHD_CTI_CTRL.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_CTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_CTI_CTRL.u32));
            VPSS_VSD_CTI_CTRL.bits.cmixing_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_CTI_CTRL.u32), VPSS_VSD_CTI_CTRL.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_CTI_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_CTI_CTRL.u32));
            VPSS_STR_CTI_CTRL.bits.cmixing_ratio = s32Ratio;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_CTI_CTRL.u32), VPSS_STR_CTI_CTRL.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetCCoringThd(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Thd)
{
    U_VPSS_VHD_CTI_THD VPSS_VHD_CTI_THD;
    U_VPSS_VSD_CTI_THD VPSS_VSD_CTI_THD;
    U_VPSS_STR_CTI_THD VPSS_STR_CTI_THD;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_CTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_CTI_THD.u32));
            VPSS_VHD_CTI_THD.bits.ccoring_thd = s32Thd;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_CTI_THD.u32), VPSS_VHD_CTI_THD.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_CTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_CTI_THD.u32));
            VPSS_VSD_CTI_THD.bits.ccoring_thd = s32Thd;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_CTI_THD.u32), VPSS_VSD_CTI_THD.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_CTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_CTI_THD.u32));
            VPSS_STR_CTI_THD.bits.ccoring_thd = s32Thd;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_CTI_THD.u32), VPSS_STR_CTI_THD.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetCSwing(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Under,HI_S32  s32Over)
{
    U_VPSS_VHD_CTI_THD VPSS_VHD_CTI_THD;
    U_VPSS_VSD_CTI_THD VPSS_VSD_CTI_THD;
    U_VPSS_STR_CTI_THD VPSS_STR_CTI_THD;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_CTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_CTI_THD.u32));
            VPSS_VHD_CTI_THD.bits.cunder_swing = s32Under;    
            VPSS_VHD_CTI_THD.bits.cover_swing = s32Over;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_CTI_THD.u32), VPSS_VHD_CTI_THD.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_CTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_CTI_THD.u32));
            VPSS_VSD_CTI_THD.bits.cunder_swing = s32Under;    
            VPSS_VSD_CTI_THD.bits.cover_swing = s32Over;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_CTI_THD.u32), VPSS_VSD_CTI_THD.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_CTI_THD.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_CTI_THD.u32));
            VPSS_STR_CTI_THD.bits.cunder_swing = s32Under;    
            VPSS_STR_CTI_THD.bits.cover_swing = s32Over;    
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_CTI_THD.u32), VPSS_STR_CTI_THD.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetCHpassCoef(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S8  *ps8Coef)
{
    U_VPSS_VHD_CHPASS_COEF VPSS_VHD_CHPASS_COEF;
    U_VPSS_VSD_CHPASS_COEF VPSS_VSD_CHPASS_COEF;
    U_VPSS_STR_CHPASS_COEF VPSS_STR_CHPASS_COEF;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHD_CHPASS_COEF.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHD_CHPASS_COEF.u32));
            VPSS_VHD_CHPASS_COEF.bits.chpass_coef0 = ps8Coef[0];    
            VPSS_VHD_CHPASS_COEF.bits.chpass_coef1 = ps8Coef[1];    
            VPSS_VHD_CHPASS_COEF.bits.chpass_coef2 = ps8Coef[2];     
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHD_CHPASS_COEF.u32), VPSS_VHD_CHPASS_COEF.u32); 
            break;
        case VPSS_REG_SD:
            VPSS_VSD_CHPASS_COEF.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSD_CHPASS_COEF.u32));
            VPSS_VSD_CHPASS_COEF.bits.chpass_coef0 = ps8Coef[0];    
            VPSS_VSD_CHPASS_COEF.bits.chpass_coef1 = ps8Coef[1];    
            VPSS_VSD_CHPASS_COEF.bits.chpass_coef2 = ps8Coef[2];     
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSD_CHPASS_COEF.u32), VPSS_VSD_CHPASS_COEF.u32); 
            break;
        case VPSS_REG_STR:
            VPSS_STR_CHPASS_COEF.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STR_CHPASS_COEF.u32));
            VPSS_STR_CHPASS_COEF.bits.chpass_coef0 = ps8Coef[0];    
            VPSS_STR_CHPASS_COEF.bits.chpass_coef1 = ps8Coef[1];    
            VPSS_STR_CHPASS_COEF.bits.chpass_coef2 = ps8Coef[2];     
            VPSS_REG_RegWrite(&(pstReg->VPSS_STR_CHPASS_COEF.u32), VPSS_STR_CHPASS_COEF.u32); 
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLBAEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL bEnLba)
{
    U_VPSS_CTRL VPSS_CTRL;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_CTRL.bits.vhd_lba_en = bEnLba;
            break;
        case VPSS_REG_SD:
            VPSS_CTRL.bits.vsd_lba_en = bEnLba;
            break;
        case VPSS_REG_STR:
            VPSS_CTRL.bits.str_lba_en = bEnLba;
            break;
        default:
            VPSS_FATAL("Reg Error\n");
            return HI_FAILURE;
    }
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32);

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetLBABg(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Color,HI_U32 u32Alpha)
{
    U_VPSS_VSDLBA_BK VPSS_VSDLBA_BK;
    U_VPSS_VHDLBA_BK VPSS_VHDLBA_BK;
    U_VPSS_STRLBA_BK VPSS_STRLBA_BK;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;
    
    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHDLBA_BK.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHDLBA_BK.u32));
            VPSS_VHDLBA_BK.bits.vbk_alpha = u32Alpha;
            VPSS_VHDLBA_BK.bits.vbk_y = (u32Color & 0xff0000) >> 16;
            VPSS_VHDLBA_BK.bits.vbk_cb = (u32Color & 0xff00) >> 8;
            VPSS_VHDLBA_BK.bits.vbk_cr = u32Color & 0xff;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHDLBA_BK.u32), VPSS_VHDLBA_BK.u32);
            break;
        case VPSS_REG_SD:
            VPSS_VSDLBA_BK.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSDLBA_BK.u32));
            VPSS_VSDLBA_BK.bits.vbk_alpha = u32Alpha;
            VPSS_VSDLBA_BK.bits.vbk_y = (u32Color & 0xff0000) >> 16;
            VPSS_VSDLBA_BK.bits.vbk_cb = (u32Color & 0xff00) >> 8;
            VPSS_VSDLBA_BK.bits.vbk_cr = u32Color & 0xff;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSDLBA_BK.u32), VPSS_VSDLBA_BK.u32);
            break;
        case VPSS_REG_STR:
            VPSS_STRLBA_BK.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STRLBA_BK.u32));
            VPSS_STRLBA_BK.bits.vbk_alpha = u32Alpha;
            VPSS_STRLBA_BK.bits.vbk_y = (u32Color & 0xff0000) >> 16;
            VPSS_STRLBA_BK.bits.vbk_cb = (u32Color & 0xff00) >> 8;
            VPSS_STRLBA_BK.bits.vbk_cr = u32Color & 0xff;
            VPSS_REG_RegWrite(&(pstReg->VPSS_STRLBA_BK.u32), VPSS_STRLBA_BK.u32);
            break;
        default:
            VPSS_FATAL("Reg Error\n");
            return HI_FAILURE;
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_REG_SetLBADispPos(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32XFPos,HI_U32 u32YFPos,
                            HI_U32 u32Height,HI_U32 u32Width)
{
    VPSS_REG_S *pstReg;
    U_VPSS_VSDLBA_DFPOS VPSS_VSDLBA_DFPOS;
    U_VPSS_VSDLBA_DLPOS VPSS_VSDLBA_DLPOS;
    
    U_VPSS_VHDLBA_DFPOS VPSS_VHDLBA_DFPOS;
    U_VPSS_VHDLBA_DLPOS VPSS_VHDLBA_DLPOS;
    
    U_VPSS_STRLBA_DFPOS VPSS_STRLBA_DFPOS;
    U_VPSS_STRLBA_DLPOS VPSS_STRLBA_DLPOS;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHDLBA_DFPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHDLBA_DFPOS.u32));
            VPSS_VHDLBA_DLPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHDLBA_DLPOS.u32));

            VPSS_VHDLBA_DFPOS.bits.disp_xfpos = u32XFPos;
            VPSS_VHDLBA_DFPOS.bits.disp_yfpos = u32YFPos;
            
            VPSS_VHDLBA_DLPOS.bits.disp_xlpos = u32XFPos + u32Width -1;
            VPSS_VHDLBA_DLPOS.bits.disp_ylpos = u32YFPos + u32Height -1;
                
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHDLBA_DFPOS.u32), VPSS_VHDLBA_DFPOS.u32);
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHDLBA_DLPOS.u32), VPSS_VHDLBA_DLPOS.u32);
            
            break;
        case VPSS_REG_SD:
            VPSS_VSDLBA_DFPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSDLBA_DFPOS.u32));
            VPSS_VSDLBA_DLPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSDLBA_DLPOS.u32));

            VPSS_VSDLBA_DFPOS.bits.disp_xfpos = u32XFPos;
            VPSS_VSDLBA_DFPOS.bits.disp_yfpos = u32YFPos;
            
            VPSS_VSDLBA_DLPOS.bits.disp_xlpos = u32XFPos + u32Width -1;
            VPSS_VSDLBA_DLPOS.bits.disp_ylpos = u32YFPos + u32Height -1;
                
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSDLBA_DFPOS.u32), VPSS_VSDLBA_DFPOS.u32);
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSDLBA_DLPOS.u32), VPSS_VSDLBA_DLPOS.u32);
            break;
        case VPSS_REG_STR:
            VPSS_STRLBA_DFPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STRLBA_DFPOS.u32));
            VPSS_STRLBA_DLPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STRLBA_DLPOS.u32));

            VPSS_STRLBA_DFPOS.bits.disp_xfpos = u32XFPos;
            VPSS_STRLBA_DFPOS.bits.disp_yfpos = u32YFPos;
            
            VPSS_STRLBA_DLPOS.bits.disp_xlpos = u32XFPos + u32Width -1;
            VPSS_STRLBA_DLPOS.bits.disp_ylpos = u32YFPos + u32Height -1;
                
            VPSS_REG_RegWrite(&(pstReg->VPSS_STRLBA_DFPOS.u32), VPSS_STRLBA_DFPOS.u32);
            VPSS_REG_RegWrite(&(pstReg->VPSS_STRLBA_DLPOS.u32), VPSS_STRLBA_DLPOS.u32);
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
    
}
HI_S32 VPSS_REG_SetLBAVidPos(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32XFPos,HI_U32 u32YFPos,
                            HI_U32 u32Height,HI_U32 u32Width)
{
    U_VPSS_VSDLBA_VFPOS VPSS_VSDLBA_VFPOS;
    U_VPSS_VSDLBA_VLPOS VPSS_VSDLBA_VLPOS;
    U_VPSS_VHDLBA_VFPOS VPSS_VHDLBA_VFPOS;
    U_VPSS_VHDLBA_VLPOS VPSS_VHDLBA_VLPOS;
    U_VPSS_STRLBA_VFPOS VPSS_STRLBA_VFPOS;
    U_VPSS_STRLBA_VLPOS VPSS_STRLBA_VLPOS;
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S*)u32AppAddr;

    switch(ePort)
    {
        case VPSS_REG_HD:
            VPSS_VHDLBA_VFPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHDLBA_VFPOS.u32));
            VPSS_VHDLBA_VLPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VHDLBA_VLPOS.u32));
            
            VPSS_VHDLBA_VFPOS.bits.video_xfpos = u32XFPos;
            VPSS_VHDLBA_VFPOS.bits.video_yfpos = u32YFPos;
            VPSS_VHDLBA_VLPOS.bits.video_xlpos = u32XFPos + u32Width -1;
            VPSS_VHDLBA_VLPOS.bits.video_ylpos = u32YFPos + u32Height - 1;

            
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHDLBA_VFPOS.u32), VPSS_VHDLBA_VFPOS.u32);
            VPSS_REG_RegWrite(&(pstReg->VPSS_VHDLBA_VLPOS.u32), VPSS_VHDLBA_VLPOS.u32);
            break;
        case VPSS_REG_SD:
            VPSS_VSDLBA_VFPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSDLBA_VFPOS.u32));
            VPSS_VSDLBA_VLPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_VSDLBA_VLPOS.u32));
            
            VPSS_VSDLBA_VFPOS.bits.video_xfpos = u32XFPos;
            VPSS_VSDLBA_VFPOS.bits.video_yfpos = u32YFPos;
            VPSS_VSDLBA_VLPOS.bits.video_xlpos = u32XFPos + u32Width -1;
            VPSS_VSDLBA_VLPOS.bits.video_ylpos = u32YFPos + u32Height- 1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSDLBA_VFPOS.u32), VPSS_VSDLBA_VFPOS.u32);
            VPSS_REG_RegWrite(&(pstReg->VPSS_VSDLBA_VLPOS.u32), VPSS_VSDLBA_VLPOS.u32);
            break;
        case VPSS_REG_STR:
            VPSS_STRLBA_VFPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STRLBA_VFPOS.u32));
            VPSS_STRLBA_VLPOS.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_STRLBA_VLPOS.u32));
            
            VPSS_STRLBA_VFPOS.bits.video_xfpos = u32XFPos;
            VPSS_STRLBA_VFPOS.bits.video_yfpos = u32YFPos;
            VPSS_STRLBA_VLPOS.bits.video_xlpos = u32XFPos + u32Width -1;
            VPSS_STRLBA_VLPOS.bits.video_ylpos = u32YFPos + u32Height -1;
            VPSS_REG_RegWrite(&(pstReg->VPSS_STRLBA_VFPOS.u32), VPSS_STRLBA_VFPOS.u32);
            VPSS_REG_RegWrite(&(pstReg->VPSS_STRLBA_VLPOS.u32), VPSS_STRLBA_VLPOS.u32);
            break;
        default:
            VPSS_FATAL("Reg Error\n");
    }

    return HI_SUCCESS;
    
}


HI_S32 VPSS_REG_GetCycleCnt(HI_U32 u32AppAddr,HI_U32 *pCnt)
{
    VPSS_REG_S *pstReg;
    
    pstReg = (VPSS_REG_S *)u32AppAddr;

    *pCnt = VPSS_REG_RegRead(&(pstReg->VPSS_PFCNT));

    return HI_SUCCESS;
}

HI_S32 VPSS_REG_SetFidelity(HI_U32 u32AppVAddr,HI_BOOL bEnFidelity)
{
    VPSS_REG_S *pstReg;
    U_VPSS_CTRL VPSS_CTRL;
    
    pstReg = (VPSS_REG_S *)u32AppVAddr;

    VPSS_CTRL.u32 = VPSS_REG_RegRead(&(pstReg->VPSS_CTRL.u32));
    VPSS_CTRL.bits.vsd_mux = bEnFidelity;    
    VPSS_REG_RegWrite(&(pstReg->VPSS_CTRL.u32), VPSS_CTRL.u32); 

    return HI_SUCCESS;
}
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
