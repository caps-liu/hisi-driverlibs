/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name	: png_hal.h
Version		: Initial Draft
Author		: z00141204
Created		: 2010/10/12
Description	: PNG Hal layer code    CNcomment:PNG hal≤„ µœ÷
Function List 	: 
	  		  		  
History       	:
Date				Author        		Modification
2010/10/12		z00141204		Created file      	
******************************************************************************/

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif	/* __cplusplus */
#endif	/* __cplusplus */

#include <asm/io.h>
#include <linux/delay.h>

#include "png_hal.h"
#include "hi_png_errcode.h"
#include "hi_gfx_comm_k.h"
/** get chip version **/
#include "hi_drv_sys.h"
#include "hi_png_config.h"
#include "hi_reg_common.h"

/* ptr to register structure*/
static volatile PNG_HAL_REGISTER_S *g_pstPngReg = HI_NULL;

static HI_U32 g_u32PngIrqNum = 0;
static HI_U32 g_u32PngRegAddr = 0;

#define DECLARE_PNG_REG \
{\
    g_u32PngRegAddr = 0xf8c70000;\
    g_u32PngIrqNum = 128;    \
}
/********************************************************************************************
* func:	Hal init
* in:	none
* out:	none
* ret:	HI_SUCCESS	open success
*		HI_ERR_PNG_SYS	systerm error , such as map failed
* others:
*********************************************************************************************/
HI_S32 PngHalInit(HI_VOID)
{
    DECLARE_PNG_REG
    /* register map*/
    g_pstPngReg = (volatile PNG_HAL_REGISTER_S *)HI_GFX_REG_MAP(g_u32PngRegAddr, PNG_REG_SIZE);

    if (NULL == g_pstPngReg)
    {
        return HI_ERR_PNG_SYS;
    }

    /* register reset*/
    //PngHalReset();
    
    PngHalSetClock();
    
    /* config AXI */
    g_pstPngReg->u32AXIConfig = 0x20441;

    /* config port time out*/
    g_pstPngReg->u32TimeOut = 0x80008;

    /* open all the interupt*/
    g_pstPngReg->uIntMask.u32All = 0xffffffff;

    /* set error strategy */
    g_pstPngReg->uErrMode.u32All = 0xffff0000;

    return HI_SUCCESS;
}

/********************************************************************************************
* func:	Hal deinit
* in:	none
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalDeinit(HI_VOID)
{
    HI_GFX_REG_UNMAP(g_pstPngReg);
    g_pstPngReg = HI_NULL;

    return;
}

/********************************************************************************************
* func:	register reset
* in:	none
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalReset(HI_VOID)
{
    HI_U32 i = 0;
    HI_U32 u32AXIConfig = 0;
    HI_U32 u32TimeOut = 0;
    HI_U32 u32RdcPhyaddr = 0;
    HI_U32 u32ErrMode = 0;
    HI_U32 u32IntMask = 0;
    U_PERI_CRG33 unTempValue;
    
    /* reset the value of register before reseting */
    u32AXIConfig = g_pstPngReg->u32AXIConfig;
    u32TimeOut = g_pstPngReg->u32TimeOut;
    u32RdcPhyaddr = g_pstPngReg->u32RdcStAddr;
    u32ErrMode = g_pstPngReg->uErrMode.u32All;
    u32IntMask = g_pstPngReg->uIntMask.u32All;

    unTempValue.u32 = g_pstRegCrg->PERI_CRG33.u32;
    /*reset*/
    unTempValue.bits.pgd_srst_req = 0x1; 

    g_pstRegCrg->PERI_CRG33.u32 = unTempValue.u32;
    
    while(1)
    {
        for (i = 0; i < 100; i++)
        {
        }
        if (0 == g_pstPngReg->u32RstBusy)
        {
        	break;
        }
    }

    unTempValue.u32 = g_pstRegCrg->PERI_CRG33.u32;
    /*cancel reset*/
    unTempValue.bits.pgd_srst_req = 0x0; 
    g_pstRegCrg->PERI_CRG33.u32 = unTempValue.u32;
    
    /* recover value */
    g_pstPngReg->u32AXIConfig = u32AXIConfig;
    g_pstPngReg->u32TimeOut = u32TimeOut;
    g_pstPngReg->u32RdcStAddr = u32RdcPhyaddr;
    g_pstPngReg->uErrMode.u32All = u32ErrMode;
    g_pstPngReg->uIntMask.u32All = u32IntMask;

    return;
}

HI_VOID PngHalSetClock(HI_VOID)
{
    U_PERI_CRG33 unTempValue;

    unTempValue.u32 = g_pstRegCrg->PERI_CRG33.u32;
    /*cancel reset*/
    unTempValue.bits.pgd_srst_req = 0x0;

    /*enable clock*/
    unTempValue.bits.pgd_cken = 0x1;

    g_pstRegCrg->PERI_CRG33.u32 = unTempValue.u32;
    return;
}

/********************************************************************************************
* func:	set basic info of picture
* in:	stImgInfo structure of picture
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalSetImgInfo(HI_PNG_INFO_S stImgInfo)
{
    PNG_SIZE_U uSize;
    PNG_TYPE_U uType;

    uSize.u32All = g_pstPngReg->uSize.u32All;
    uType.u32All = g_pstPngReg->uType.u32All;

    uSize.stBits.u32Width = stImgInfo.u32Width;
    uSize.stBits.u32Height = stImgInfo.u32Height;
    uType.stBits.u32BitDepth = stImgInfo.u8BitDepth;
    uType.stBits.u32ColorFmt = stImgInfo.eColorFmt;
    uType.stBits.u32InterlaceType = 0x0;//stImgInfo.u8InterlaceType;

    g_pstPngReg->uSize.u32All = uSize.u32All;
    g_pstPngReg->uType.u32All = uType.u32All;

    return;
}

/********************************************************************************************
* func:	set data convert
* in:	stTransform structrue of data convert
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalSetTransform(HI_PNG_TRANSFORM_S stTransform)
{
    PNG_TRANSFORM_U uTransform;
    PNG_TRANS_COLOR0_U uTransColor0;
    PNG_TRANS_COLOR0_U uTransColor1;

    uTransform.u32All = g_pstPngReg->uTransform.u32All;
    uTransColor0.u32All = g_pstPngReg->uTransColor1.u32All;
    uTransColor1.u32All = g_pstPngReg->uTransColor1.u32All;

    if (stTransform.u32Transform & HI_PNG_TRANSFORM_ADJUSTPIXELORDER)
    {
        uTransform.stBits.u32PixelOrderEn = HI_TRUE;
    }

    if (stTransform.u32Transform & HI_PNG_TRANSFORM_GRAY124TO8)
    {
        uTransform.stBits.u32PackByteEn = HI_TRUE;
        uTransform.stBits.u32PackBypeMode = stTransform.e124To8Mode;
    }

    if (stTransform.u32Transform & HI_PNG_TRANSFORM_GRAY2RGB)
    {
        uTransform.stBits.u32Gray2BGREn = HI_TRUE;
    }

    if (stTransform.u32Transform & HI_PNG_TRANSFORM_ADDALPHA)
    {
        uTransform.stBits.u32AddAlphaEn = HI_TRUE;
        uTransColor1.u32All = ((HI_U32)stTransform.u16Filler << 16) | stTransform.sTrnsInfo.u16Blue;
        uTransColor0.u32All = ((HI_U32)stTransform.sTrnsInfo.u16Red << 16) | stTransform.sTrnsInfo.u16Green;
        uTransform.stBits.u32TransInfoEn = stTransform.eAddAlphaMode;
    }
    
    if (stTransform.u32Transform & HI_PNG_TRANSFORM_STRIPALPHA)
    {
        uTransform.stBits.u32StripAlphaEn = HI_TRUE;
    }

    if (stTransform.u32Transform & HI_PNG_TRANSFORM_BGR2RGB)
    {
        uTransform.stBits.u32BGR2RGBEn = HI_TRUE;
    }

    if (stTransform.u32Transform & HI_PNG_TRANSFORM_SWAPALPHA)
    {
        uTransform.stBits.u32SwapAlphaEn = HI_TRUE;
    }

    if (stTransform.u32Transform & HI_PNG_TRANSFORM_16TO8)
    {
        uTransform.stBits.u32Strip16En = HI_TRUE;
        uTransform.stBits.u32Streip16Mode = stTransform.e16To8Mode;
    }

    if (stTransform.u32Transform & HI_PNG_TRANSFORM_8TO4)
    {
        uTransform.stBits.u32Strip4En = HI_TRUE;
        uTransform.stBits.u32Strip4Fmt = stTransform.eOutFmt;
    }
   
    if (stTransform.u32Transform & HI_PNG_TRANSFORM_PREMULTI_ALPHA)
    {
        #ifdef CONFIG_PNG_PREMULTIALPHA_ENABLE
            uTransform.stBits.u32PreMultiAlphaEn = HI_TRUE;
            uTransform.stBits.u32PreMultiRoundMode = 0x1;   
         #endif
    }
   
    g_pstPngReg->uTransform.u32All = uTransform.u32All;
    g_pstPngReg->uTransColor0.u32All = uTransColor0.u32All;
    g_pstPngReg->uTransColor1.u32All = uTransColor1.u32All;
        
    return;
}

/********************************************************************************************
* func:	set rle window physics address
* in:	u32Phyaddr: physical address
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalSetRdcAddr(HI_U32 u32Phyaddr)
{
    g_pstPngReg->u32RdcStAddr = u32Phyaddr;

    return;
}

/********************************************************************************************
* func:	get rle window physics address
* in:	u32Phyaddr: physical address
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_U32 PngHalGetRdcAddr(HI_VOID)
{
    return g_pstPngReg->u32RdcStAddr;
}


/********************************************************************************************
* func:	set filter buffer starting address and ending address
* in:	u32Phyaddr: physical address
* in:	u32Size: buf size
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalSetFltAddr(HI_U32 u32Phyaddr, HI_U32 u32Size)
{
    g_pstPngReg->u32FltStAddr = u32Phyaddr;
    g_pstPngReg->u32FltEndAddr = u32Phyaddr + u32Size - 1;

    return;
}

/********************************************************************************************
* func:	set target buffer
* in:	u32Phyaddr physical address
* in:	u32Stride: target buffer line step
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalSetTgt(HI_U32 u32Phyaddr, HI_U32 u32Stride)
{
    g_pstPngReg->u32FinalStAddr = u32Phyaddr;
    g_pstPngReg->u32Stride = u32Stride;

    return;
}

/********************************************************************************************
* func:	set stream buffer address
* in:	u32Phyaddr physical address
* in:	u32Size buf size
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalSetStreamBuf(HI_U32 u32Phyaddr, HI_U32 u32Size)
{
    g_pstPngReg->u32BitBufStAddr = u32Phyaddr;
    g_pstPngReg->u32BitBufEndAddr = u32Phyaddr + u32Size - 1;

    return;
}

/********************************************************************************************
* func:	set stream address
* in:	u32Phyaddr physical address
* in:	u32Size stream size
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalSetStreamAddr(HI_U32 u32Phyaddr, HI_U32 u32Size)
{
    g_pstPngReg->u32BitStreamStAddr = u32Phyaddr;
    g_pstPngReg->u32BitStreamEndAddr = u32Phyaddr + u32Size - 1;

    return;
}

/********************************************************************************************
* func:	start decode
* in:	none
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalStartDecode(HI_VOID)
{
    PNG_TYPE_U uType;
    uType.u32All = g_pstPngReg->uType.u32All;
    uType.stBits.u32FunSel = 0x0;
    g_pstPngReg->uType.u32All = uType.u32All;
    g_pstPngReg->u32DecStart = 0x1;

    return;
}

/********************************************************************************************
* func:	send stream resuing decoder
* in:	none
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalResumeDecode(HI_VOID)
{
	g_pstPngReg->u32ResumeStart = 0x1;

	return;
}

/********************************************************************************************
* func:	read interupt state and clear interupt
* in:	none
* out:	interupt value
* ret:	none
* others:
*********************************************************************************************/
HI_U32 PngHalGetIntStatus(HI_VOID)
{
	HI_U32 u32Int;

	u32Int = g_pstPngReg->uInt.u32All;

	/* clear interupt*/
	g_pstPngReg->uInt.u32All &= u32Int;

	return u32Int;
}

/********************************************************************************************
* func:	set AXI port and timeout
* in:	none
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalSetAxiAndTimeout(HI_VOID)
{
    /* config AXI */
    g_pstPngReg->u32AXIConfig = 0x20441;

    /* config port and timeout*/
    g_pstPngReg->u32TimeOut = 0x80008;

    return;
}

/********************************************************************************************
* func:	set interrupt mask
* in:	u32Value mask value
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalSetIntmask(HI_U32 u32Value)
{
    g_pstPngReg->uIntMask.u32All = u32Value;

    return;
}

/********************************************************************************************
* func:	set error strategy
* in:	u32Value mode of error strategy
* out:	none
* ret:	none
* others:
*********************************************************************************************/
HI_VOID PngHalSetErrmode(HI_U32 u32Value)
{
    g_pstPngReg->uErrMode.u32All = u32Value;

    return;
}

HI_U32 PngHalGetIrqNum()
{
    return g_u32PngIrqNum;
}

#ifdef __cplusplus
#if __cplusplus
}
#endif	/* __cplusplus */
#endif	/* __cplusplus */
