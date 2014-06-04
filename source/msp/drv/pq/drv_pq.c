#include <linux/kernel.h>
#include <linux/string.h>
#include <linux/vmalloc.h>
#include <asm/memory.h>
#include <linux/bootmem.h>
#include <linux/gfp.h>
#include <linux/mm.h>
#include <linux/memblock.h>

#include "hi_drv_module.h"
#include "drv_pdm_ext.h"
#include "drv_pq_ext.h"
#include "drv_vpss_ext.h"
#include "drv_win_ext.h"
#include "drv_disp_ext.h"
#include "hi_flash.h"
#include "hi_drv_mem.h"
#include "hi_drv_mmz.h"
#include "drv_pq.h"
#include "hi_osal.h"


/*PQ BIN */
PQ_PARAM_S* g_pstPqParam;
HI_BOOL g_bLoadPqBin;
MMZ_BUFFER_S g_stPqBinBuf;
HI_VOID PQ_DRV_GetOption(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_OPTION_DISP0:
        {
            arg->u_Data.stPqOptCoef = g_pstPqParam->stPqOption.stPqOptDisp0Coef;
            break;
        }
        case PQ_CMD_VIRTUAL_OPTION_DISP1:
        {
            arg->u_Data.stPqOptCoef = g_pstPqParam->stPqOption.stPqOptDisp1Coef;
            break;
        }
        case PQ_CMD_VIRTUAL_OPTION_DISP2:
        {
            arg->u_Data.stPqOptCoef = g_pstPqParam->stPqOption.stPqOptDisp2Coef;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }
}
HI_VOID PQ_DRV_SetOption(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_OPTION_DISP0:
        {
            g_pstPqParam->stPqOption.stPqOptDisp0Coef = arg->u_Data.stPqOptCoef;
            break;
        }
        case PQ_CMD_VIRTUAL_OPTION_DISP1:
        {
            g_pstPqParam->stPqOption.stPqOptDisp1Coef = arg->u_Data.stPqOptCoef;
            break;
        }
        case PQ_CMD_VIRTUAL_OPTION_DISP2:
        {
            g_pstPqParam->stPqOption.stPqOptDisp2Coef = arg->u_Data.stPqOptCoef;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }
}
HI_VOID PQ_DRV_GetDeiParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_DEI_CTRL:
        {
            arg->u_Data.stPqDeiCtrl = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_GLOBAL_MOTION_CTRL:
        {
            arg->u_Data.stPqDeiGlobalMotionCtrl = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiGlobalMotionCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_DIR_CHECK:
        {
            arg->u_Data.stPqDeiDirCheck = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiDirCheck;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_DIR_MULTI:
        {
            arg->u_Data.stPqDeiDirMulti = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiDirMulti;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_INTP_SCALE_RATIO:
        {
            arg->u_Data.stPqDeiIntpScaleRatio = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiIntpScaleRatio;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_INTP_CTRL:
        {
            arg->u_Data.stPqDeiIntpCtrl = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiIntpCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_JITTER_MOTION:
        {
            arg->u_Data.stPqDeiJitterMotion = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiJitterMotion;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_FIELD_MOTION:
        {
            arg->u_Data.stPqDeiFieldMotion = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiFieldMotion;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_MOTION_RATIO_CURVE:
        {
            arg->u_Data.stPqDeiMotionRatioCurve = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiMotionRatioCurve;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_IIR_MOTION_CURVE:
        {
            arg->u_Data.stPqDeiIirMotionCurve = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiIirMotionCurve;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_REC_MODE:
        {
            arg->u_Data.stPqDeiRecMode = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiRecMode;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_HIST_MOTION:
        {
            arg->u_Data.stPqDeiHistMotion = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiHistMotion;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_MOR_FLT:
        {
            arg->u_Data.stPqDeiMorFlt = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiMorFlt;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_OPTM_MODULE:
        {
            arg->u_Data.stPqDeiOptmModule = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiOptmModule;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_COMB_CHK:
        {
            arg->u_Data.stPqDeiCombChk = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiCombChk;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_CRS_CLR:
        {
            arg->u_Data.stPqDeiCrsClr = g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiCrsClr;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }
}
HI_VOID PQ_DRV_SetDeiParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;


    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_DEI_CTRL:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiCtrl = arg->u_Data.stPqDeiCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_GLOBAL_MOTION_CTRL:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiGlobalMotionCtrl = arg->u_Data.stPqDeiGlobalMotionCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_DIR_CHECK:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiDirCheck = arg->u_Data.stPqDeiDirCheck;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_DIR_MULTI:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiDirMulti = arg->u_Data.stPqDeiDirMulti;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_INTP_SCALE_RATIO:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiIntpScaleRatio = arg->u_Data.stPqDeiIntpScaleRatio;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_INTP_CTRL:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiIntpCtrl = arg->u_Data.stPqDeiIntpCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_JITTER_MOTION:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiJitterMotion = arg->u_Data.stPqDeiJitterMotion;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_FIELD_MOTION:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiFieldMotion = arg->u_Data.stPqDeiFieldMotion;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_MOTION_RATIO_CURVE:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiMotionRatioCurve = arg->u_Data.stPqDeiMotionRatioCurve;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_IIR_MOTION_CURVE:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiIirMotionCurve = arg->u_Data.stPqDeiIirMotionCurve;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_REC_MODE:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiRecMode = arg->u_Data.stPqDeiRecMode;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_HIST_MOTION:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiHistMotion = arg->u_Data.stPqDeiHistMotion;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_MOR_FLT:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiMorFlt = arg->u_Data.stPqDeiMorFlt;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_OPTM_MODULE:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiOptmModule = arg->u_Data.stPqDeiOptmModule;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_COMB_CHK:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiCombChk = arg->u_Data.stPqDeiCombChk;
            break;
        }
        case PQ_CMD_VIRTUAL_DEI_CRS_CLR:
        {
            g_pstPqParam->stPQCoef.stDeiCoef.stPqDeiCrsClr = arg->u_Data.stPqDeiCrsClr;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }

    (HI_VOID)PQ_DRV_UpdateVpss(u32PqCmd, g_pstPqParam);

}

HI_VOID PQ_DRV_GetFmdParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_FMD_CTRL:
        {
            arg->u_Data.stPqFmdCtrl = g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_HISTBIN:
        {
            arg->u_Data.stPqFmdHistbinThd = g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdHistbinThd;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_PCCTHD:
        {
            arg->u_Data.stPqFmdPccThd = g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdPccThd;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_PCCBLK:
        {
            arg->u_Data.stPqFmdPccBlk = g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdPccBlk;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_UMTHD:
        {
            arg->u_Data.stPqFmdUmThd = g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdUmThd;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_ITDIFF:
        {
            arg->u_Data.stPqFmdItdiffThd = g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdItdiffThd;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_LAST:
        {
            arg->u_Data.stPqFmdLashThd = g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdLashThd;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }
}

HI_VOID PQ_DRV_SetFmdParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;



    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_FMD_CTRL:
        {
            g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdCtrl = arg->u_Data.stPqFmdCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_HISTBIN:
        {
            g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdHistbinThd = arg->u_Data.stPqFmdHistbinThd;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_PCCTHD:
        {
            g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdPccThd = arg->u_Data.stPqFmdPccThd;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_PCCBLK:
        {
            g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdPccBlk = arg->u_Data.stPqFmdPccBlk;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_UMTHD:
        {
            g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdUmThd = arg->u_Data.stPqFmdUmThd;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_ITDIFF:
        {
            g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdItdiffThd = arg->u_Data.stPqFmdItdiffThd;
            break;
        }
        case PQ_CMD_VIRTUAL_FMD_LAST:
        {
            g_pstPqParam->stPQCoef.stFmdCoef.stPqFmdLashThd = arg->u_Data.stPqFmdLashThd;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }

    (HI_VOID)PQ_DRV_UpdateVpss(u32PqCmd, g_pstPqParam);
}

HI_VOID PQ_DRV_GetDnrParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_DNR_CTRL:
        {
            arg->u_Data.stPqDnrCtrl = g_pstPqParam->stPQCoef.stDnrCoef.stPqDnrCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_DNR_DB_FILTER:
        {
            arg->u_Data.stPqDnrDbFilter = g_pstPqParam->stPQCoef.stDnrCoef.stPqDnrDbFilter;
            break;
        }
        case PQ_CMD_VIRTUAL_DNR_DR_FILTER:
        {
            arg->u_Data.stPqDnrDrFilter = g_pstPqParam->stPQCoef.stDnrCoef.stPqDnrDrFilter;
            break;
        }
        case PQ_CMD_VIRTUAL_DNR_INFO:
        {
            arg->u_Data.stPqDnrInfo = g_pstPqParam->stPQCoef.stDnrCoef.stPqDnrInfo;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");
        }
    }
}

HI_VOID PQ_DRV_SetDnrParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;

    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_DNR_CTRL:
        {
            g_pstPqParam->stPQCoef.stDnrCoef.stPqDnrCtrl = arg->u_Data.stPqDnrCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_DNR_DB_FILTER:
        {
            g_pstPqParam->stPQCoef.stDnrCoef.stPqDnrDbFilter = arg->u_Data.stPqDnrDbFilter;
            break;
        }
        case PQ_CMD_VIRTUAL_DNR_DR_FILTER:
        {
            g_pstPqParam->stPQCoef.stDnrCoef.stPqDnrDrFilter = arg->u_Data.stPqDnrDrFilter;
            break;
        }
        case PQ_CMD_VIRTUAL_DNR_INFO:
        {
            g_pstPqParam->stPQCoef.stDnrCoef.stPqDnrInfo = arg->u_Data.stPqDnrInfo;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");
        }
    }

    (HI_VOID)PQ_DRV_UpdateVpss(u32PqCmd, g_pstPqParam);
}
HI_VOID PQ_DRV_GetSharpParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_SHARP_VHD_LUMA:
        {
            arg->u_Data.stPqSharpLuma = g_pstPqParam->stPQCoef.stSharpCoef.stSharpVhdData.stPqSharpLuma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_VSD_LUMA:
        {
            arg->u_Data.stPqSharpLuma = g_pstPqParam->stPQCoef.stSharpCoef.stSharpVsdData.stPqSharpLuma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_STR_LUMA:
        {
            arg->u_Data.stPqSharpLuma = g_pstPqParam->stPQCoef.stSharpCoef.stSharpStrData.stPqSharpLuma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_GP0_LUMA:
        {
            arg->u_Data.stPqSharpLuma = g_pstPqParam->stPQCoef.stSharpCoef.stSharpGp0Data.stPqSharpLuma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_GP1_LUMA:
        {
            arg->u_Data.stPqSharpLuma = g_pstPqParam->stPQCoef.stSharpCoef.stSharpGp1Data.stPqSharpLuma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_VHD_CHROMA:
        {
            arg->u_Data.stPqSharpChroma = g_pstPqParam->stPQCoef.stSharpCoef.stSharpVhdData.stPqSharpChroma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_VSD_CHROMA:
        {
            arg->u_Data.stPqSharpChroma = g_pstPqParam->stPQCoef.stSharpCoef.stSharpVsdData.stPqSharpChroma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_STR_CHROMA:
        {
            arg->u_Data.stPqSharpChroma = g_pstPqParam->stPQCoef.stSharpCoef.stSharpStrData.stPqSharpChroma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_GP0_CHROMA:
        {
            arg->u_Data.stPqSharpChroma = g_pstPqParam->stPQCoef.stSharpCoef.stSharpGp0Data.stPqSharpChroma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_GP1_CHROMA:
        {
            arg->u_Data.stPqSharpChroma = g_pstPqParam->stPQCoef.stSharpCoef.stSharpGp1Data.stPqSharpChroma;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }
}

HI_VOID PQ_DRV_SetVpssSharpParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;

    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_SHARP_VHD_LUMA:
        {
            g_pstPqParam->stPQCoef.stSharpCoef.stSharpVhdData.stPqSharpLuma = arg->u_Data.stPqSharpLuma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_VSD_LUMA:
        {
            g_pstPqParam->stPQCoef.stSharpCoef.stSharpVsdData.stPqSharpLuma = arg->u_Data.stPqSharpLuma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_STR_LUMA:
        {
            g_pstPqParam->stPQCoef.stSharpCoef.stSharpStrData.stPqSharpLuma = arg->u_Data.stPqSharpLuma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_VHD_CHROMA:
        {
            g_pstPqParam->stPQCoef.stSharpCoef.stSharpVhdData.stPqSharpChroma = arg->u_Data.stPqSharpChroma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_VSD_CHROMA:
        {
            g_pstPqParam->stPQCoef.stSharpCoef.stSharpVsdData.stPqSharpChroma = arg->u_Data.stPqSharpChroma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_STR_CHROMA:
        {
            g_pstPqParam->stPQCoef.stSharpCoef.stSharpStrData.stPqSharpChroma = arg->u_Data.stPqSharpChroma;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }


    (HI_VOID)PQ_DRV_UpdateVpss(u32PqCmd, g_pstPqParam);
}

HI_VOID PQ_DRV_SetGfxSharpParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;

    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_SHARP_GP0_LUMA:
        {
            g_pstPqParam->stPQCoef.stSharpCoef.stSharpGp0Data.stPqSharpLuma = arg->u_Data.stPqSharpLuma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_GP1_LUMA:
        {
            g_pstPqParam->stPQCoef.stSharpCoef.stSharpGp1Data.stPqSharpLuma = arg->u_Data.stPqSharpLuma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_GP0_CHROMA:
        {
            g_pstPqParam->stPQCoef.stSharpCoef.stSharpGp0Data.stPqSharpChroma = arg->u_Data.stPqSharpChroma;
            break;
        }
        case PQ_CMD_VIRTUAL_SHARP_GP1_CHROMA:
        {
            g_pstPqParam->stPQCoef.stSharpCoef.stSharpGp1Data.stPqSharpChroma = arg->u_Data.stPqSharpChroma;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }

    (HI_VOID)PQ_DRV_UpdateGfx(u32PqCmd, g_pstPqParam);
}
HI_VOID PQ_DRV_GetCscParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_CSC_VDP_V0:
        {
            arg->u_Data.stPqCscData = g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpV0Data;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_V1:
        {
            arg->u_Data.stPqCscData = g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpV1Data;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_V3:
        {
            arg->u_Data.stPqCscData = g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpV3Data;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_V4:
        {
            arg->u_Data.stPqCscData = g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpV4Data;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_G0:
        {
            arg->u_Data.stPqCscData = g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpG0Data;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_G1:
        {
            arg->u_Data.stPqCscData = g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpG1Data;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_WBC_DHD0:
        {
            arg->u_Data.stPqCscData = g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpWbcDh0Data;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_INTER_DHD0:
        {
            arg->u_Data.stPqCscData = g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpInterDh0Data;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_INTER_DHD1:
        {
            arg->u_Data.stPqCscData = g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpInterDh1Data;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");
        }
    }
}

HI_VOID PQ_DRV_SetVoCscParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;


    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_CSC_VDP_V0:
        {
            g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpV0Data = arg->u_Data.stPqCscData;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_V1:
        {
            g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpV1Data = arg->u_Data.stPqCscData;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_V3:
        {
            g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpV3Data = arg->u_Data.stPqCscData;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_V4:
        {
            g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpV4Data = arg->u_Data.stPqCscData;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");
        }
    }

    (HI_VOID)PQ_DRV_UpdateVo(u32PqCmd, g_pstPqParam);
}
HI_VOID PQ_DRV_SetDispCscParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;

    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_CSC_VDP_WBC_DHD0:
        {
            g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpWbcDh0Data = arg->u_Data.stPqCscData;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_INTER_DHD0:
        {
            g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpInterDh0Data = arg->u_Data.stPqCscData;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_INTER_DHD1:
        {
            g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpInterDh1Data = arg->u_Data.stPqCscData;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");
        }
    }

    (HI_VOID)PQ_DRV_UpdateDisp(u32PqCmd, g_pstPqParam);
}
HI_VOID PQ_DRV_SetGfxCscParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_CSC_VDP_G0:
        {
            g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpG0Data = arg->u_Data.stPqCscData;
            break;
        }
        case PQ_CMD_VIRTUAL_CSC_VDP_G1:
        {
            g_pstPqParam->stPQCoef.stCscCoef.stPqCscVdpG1Data = arg->u_Data.stPqCscData;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");
        }
    }

    (HI_VOID)PQ_DRV_UpdateGfx(u32PqCmd, g_pstPqParam);
}
HI_VOID PQ_DRV_GetAccParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_ACC_MOD_GENTLE:
        {
            arg->u_Data.stAccCrv = g_pstPqParam->stPQCoef.stAccCoef.stPqAccModeCrv.stPqAccModeGentle;
            break;
        }
        case PQ_CMD_VIRTUAL_ACC_MOD_MIDDLE:
        {
            arg->u_Data.stAccCrv = g_pstPqParam->stPQCoef.stAccCoef.stPqAccModeCrv.stPqAccModeMiddle;
            break;
        }
        case PQ_CMD_VIRTUAL_ACC_MOD_STRONG:
        {
            arg->u_Data.stAccCrv = g_pstPqParam->stPQCoef.stAccCoef.stPqAccModeCrv.stPqAccModeStrong;
            break;
        }
        case PQ_CMD_VIRTUAL_ACC_CTRL:
        {
            arg->u_Data.stAccCtrl = g_pstPqParam->stPQCoef.stAccCoef.stPqAccCtrl;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");
        }
    }
}
HI_VOID PQ_DRV_SetAccParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;

    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_ACC_MOD_GENTLE:
        {
            g_pstPqParam->stPQCoef.stAccCoef.stPqAccModeCrv.stPqAccModeGentle = arg->u_Data.stAccCrv;
            break;
        }
        case PQ_CMD_VIRTUAL_ACC_MOD_MIDDLE:
        {
            g_pstPqParam->stPQCoef.stAccCoef.stPqAccModeCrv.stPqAccModeMiddle = arg->u_Data.stAccCrv;
            break;
        }
        case PQ_CMD_VIRTUAL_ACC_MOD_STRONG:
        {
            g_pstPqParam->stPQCoef.stAccCoef.stPqAccModeCrv.stPqAccModeStrong = arg->u_Data.stAccCrv;
            break;
        }
        case PQ_CMD_VIRTUAL_ACC_CTRL:
        {
            g_pstPqParam->stPQCoef.stAccCoef.stPqAccCtrl = arg->u_Data.stAccCtrl;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");
        }
    }

    (HI_VOID)PQ_DRV_UpdateVo(u32PqCmd, g_pstPqParam);
}
HI_VOID PQ_DRV_GetAcmParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_ACM_MOD_BLUE:
        {
            arg->u_Data.stAcmLut = g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmModeLut.stPqAcmModeBlue;
            break;
        }
        case PQ_CMD_VIRTUAL_ACM_MOD_GREEN:
        {
            arg->u_Data.stAcmLut = g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmModeLut.stPqAcmModeGreen;
            break;
        }
        case PQ_CMD_VIRTUAL_ACM_MOD_BG:
        {
            arg->u_Data.stAcmLut = g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmModeLut.stPqAcmModeBG;
            break;
        }
        case PQ_CMD_VIRTUAL_ACM_MOD_SKIN:
        {
            arg->u_Data.stAcmLut = g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmModeLut.stPqAcmModeSkin;
            break;
        }
        case PQ_CMD_VIRTUAL_ACM_MOD_VIVID:
        {
            arg->u_Data.stAcmLut = g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmModeLut.stPqAcmModeVivid;
            break;
        }
        case PQ_CMD_VIRTUAL_ACM_CTRL:
        {
            arg->u_Data.stAcmCtrl = g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmCtrl;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }
}
HI_VOID PQ_DRV_SetAcmParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_ACM_MOD_BLUE:
        {
            g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmModeLut.stPqAcmModeBlue = arg->u_Data.stAcmLut;
            break;
        }
        case PQ_CMD_VIRTUAL_ACM_MOD_GREEN:
        {
            g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmModeLut.stPqAcmModeGreen = arg->u_Data.stAcmLut;
            break;
        }
        case PQ_CMD_VIRTUAL_ACM_MOD_BG:
        {
            g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmModeLut.stPqAcmModeBG = arg->u_Data.stAcmLut;
            break;
        }
        case PQ_CMD_VIRTUAL_ACM_MOD_SKIN:
        {
            g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmModeLut.stPqAcmModeSkin = arg->u_Data.stAcmLut;
            break;
        }
        case PQ_CMD_VIRTUAL_ACM_MOD_VIVID:
        {
            g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmModeLut.stPqAcmModeVivid = arg->u_Data.stAcmLut;
            break;
        }
        case PQ_CMD_VIRTUAL_ACM_CTRL:
        {
            g_pstPqParam->stPQCoef.stAcmCoef.stPqAcmCtrl = arg->u_Data.stAcmCtrl;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }

    (HI_VOID)PQ_DRV_UpdateVo(u32PqCmd, g_pstPqParam);
}
HI_VOID PQ_DRV_GetGammaParam(PQ_IO_S* arg)
{
    HI_U32 u32Pos;
    HI_U32 u32PqCmd = arg->u32PqCmd;
    PQ_GAMMA_RGB_S* pstPqGamma ;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_GAMMA_RGB_MOD0:
        {
            pstPqGamma = &(g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaRgbMode.stPqGammaRgbMode1);
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_RGB_MOD1:
        {
            pstPqGamma = &(g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaRgbMode.stPqGammaRgbMode2);
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_RGB_MOD2:
        {
            pstPqGamma = &(g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaRgbMode.stPqGammaRgbMode3);
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_RGB_MOD3:
        {
            pstPqGamma = &(g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaRgbMode.stPqGammaRgbMode4);
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_YUV_MOD0:
        {
            pstPqGamma = &(g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaYuvMode.stPqGammaRgbMode1);
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_YUV_MOD1:
        {
            pstPqGamma = &(g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaYuvMode.stPqGammaRgbMode2);
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_YUV_MOD2:
        {
            pstPqGamma = &(g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaYuvMode.stPqGammaRgbMode3);
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_YUV_MOD3:
        {
            pstPqGamma = &(g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaYuvMode.stPqGammaRgbMode4);
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");
            return;
        }

    }

    for (u32Pos = 0; u32Pos < GAMMA_NUM + 1; u32Pos++)
    {
        arg->u_Data.stPqGammaMode.au32R[u32Pos] = pstPqGamma->au16R[u32Pos];
        arg->u_Data.stPqGammaMode.au32G[u32Pos] = pstPqGamma->au16G[u32Pos];
        arg->u_Data.stPqGammaMode.au32B[u32Pos] = pstPqGamma->au16B[u32Pos];
    }

}

static PQ_GAMMA_RGB_S stPqGamma ;
HI_VOID PQ_DRV_SetGammaParam(PQ_IO_S* arg)
{
    HI_U32 u32Pos;
    HI_U32 u32PqCmd = arg->u32PqCmd;

    PQ_COMM_GAMMA_RGB_S* pstPqCommGamma = &(arg->u_Data.stPqGammaMode);


    for (u32Pos = 0; u32Pos < GAMMA_NUM + 1; u32Pos++)
    {
        stPqGamma.au16R[u32Pos] = pstPqCommGamma->au32R[u32Pos];
        stPqGamma.au16G[u32Pos] = pstPqCommGamma->au32G[u32Pos];
        stPqGamma.au16B[u32Pos] = pstPqCommGamma->au32B[u32Pos];
    }
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_GAMMA_RGB_MOD0:
        {
            g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaRgbMode.stPqGammaRgbMode1 = stPqGamma;
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_RGB_MOD1:
        {
            g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaRgbMode.stPqGammaRgbMode2 = stPqGamma;
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_RGB_MOD2:
        {
            g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaRgbMode.stPqGammaRgbMode3 = stPqGamma;
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_RGB_MOD3:
        {
            g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaRgbMode.stPqGammaRgbMode4 = stPqGamma;
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_YUV_MOD0:
        {
            g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaYuvMode.stPqGammaRgbMode1 = stPqGamma;
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_YUV_MOD1:
        {
            g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaYuvMode.stPqGammaRgbMode2 = stPqGamma;
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_YUV_MOD2:
        {
            g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaYuvMode.stPqGammaRgbMode3 = stPqGamma;
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_YUV_MOD3:
        {
            g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaYuvMode.stPqGammaRgbMode4 = stPqGamma;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }

    (HI_VOID)PQ_DRV_UpdateDisp(u32PqCmd, g_pstPqParam);

}
HI_VOID PQ_DRV_GetGammaCtrlParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_GAMMA_CTRL_DISPLAY0:
        {
            arg->u_Data.stPqGammaCtrl = g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaDisp0Ctrl;
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_CTRL_DISPLAY1:
        {
            arg->u_Data.stPqGammaCtrl = g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaDisp1Ctrl;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }
}
HI_VOID PQ_DRV_SetGammaCtrlParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;

    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_GAMMA_CTRL_DISPLAY0:
        {
            g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaDisp0Ctrl = arg->u_Data.stPqGammaCtrl;
            break;
        }
        case PQ_CMD_VIRTUAL_GAMMA_CTRL_DISPLAY1:
        {
            g_pstPqParam->stPQCoef.stGammaCoef.stPqGammaDisp1Ctrl = arg->u_Data.stPqGammaCtrl;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }

    (HI_VOID)PQ_DRV_UpdateDisp(u32PqCmd, g_pstPqParam);
}
HI_VOID PQ_DRV_GetDitherParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_DITHER_COEF:
        {
            arg->u_Data.stDitherCoef = g_pstPqParam->stPQCoef.stDitherCoef;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }
}

HI_VOID PQ_DRV_SetDitherParam(PQ_IO_S* arg)
{
    HI_U32 u32PqCmd = arg->u32PqCmd;
    switch (u32PqCmd)
    {
        case PQ_CMD_VIRTUAL_DITHER_COEF:
        {
            g_pstPqParam->stPQCoef.stDitherCoef = arg->u_Data.stDitherCoef;
            break;
        }
        default:
        {
            HI_TRACE(HI_LOG_LEVEL_ERROR, HI_ID_PQ, "Error,unknown address\n");

        }
    }


    (HI_VOID)PQ_DRV_UpdateVpss(u32PqCmd, g_pstPqParam);
}

HI_S32 PQ_DRV_UpdateVpss(HI_U32 u32UpdateType, PQ_PARAM_S* pstPqParam)
{
    VPSS_EXPORT_FUNC_S* pstVpssFuncs = HI_NULL;

    HI_DRV_MODULE_GetFunction(HI_ID_VPSS, (HI_VOID**)&pstVpssFuncs);

    if (NULL == pstVpssFuncs)
    {
        HI_FATAL_PQ("\nget VPSS_EXPORT_FUNC_S failed\r\n");
        return HI_FAILURE;
    }

    if (NULL == pstVpssFuncs->pfnVpssUpdatePqData)
    {
        HI_FATAL_PQ("\nget pfnVpssUpdatePqData failed\r\n");
        return HI_FAILURE;
    }
	
    return pstVpssFuncs->pfnVpssUpdatePqData(u32UpdateType, pstPqParam);

}


HI_S32 PQ_DRV_UpdateVo(HI_U32 u32UpdateType, PQ_PARAM_S* pstPqParam)
{
    WIN_EXPORT_FUNC_S* pstVoFuncs = HI_NULL;

    HI_DRV_MODULE_GetFunction(HI_ID_VO, (HI_VOID**)&pstVoFuncs);
	
    if (NULL == pstVoFuncs)
    {
        HI_FATAL_PQ("\nget WIN_EXPORT_FUNC_S failed\r\n");
        return HI_FAILURE;
    }

    if (NULL == pstVoFuncs->pfnWinUpdatePqData)
    {
        HI_FATAL_PQ("\nget pfnWinUpdatePqData failed\r\n");
        return HI_FAILURE;
    }
	
    return pstVoFuncs->pfnWinUpdatePqData(u32UpdateType, pstPqParam);

}

HI_S32 PQ_DRV_UpdateDisp(HI_U32 u32UpdateType, PQ_PARAM_S* pstPqParam)
{
    DISP_EXPORT_FUNC_S* pstDispFuncs = HI_NULL;

    HI_DRV_MODULE_GetFunction(HI_ID_DISP, (HI_VOID**)&pstDispFuncs);
	
    if (NULL == pstDispFuncs)
    {
        HI_FATAL_PQ("\nget DISP_EXPORT_FUNC_S failed\r\n");
        return HI_FAILURE;
    }

    if (NULL == pstDispFuncs->pfnDispUpdatePqData)
    {
        HI_FATAL_PQ("\nget pfnDispUpdatePqData failed\r\n");
        return HI_FAILURE;
    }
	
    return pstDispFuncs->pfnDispUpdatePqData(u32UpdateType, pstPqParam);
}

HI_S32 PQ_DRV_UpdateGfx(HI_U32 u32UpdateType, PQ_PARAM_S* pstPqParam)
{

    return HI_SUCCESS;
}


HI_S32 PQ_DRV_GetPqParam( PQ_PARAM_S** pstPqParam)
{
    if (HI_FALSE == g_bLoadPqBin)
    {
        return HI_FAILURE;
    }

    *pstPqParam = g_pstPqParam;

    return HI_SUCCESS;
}

HI_S32 PQ_DRV_GetFlashPqBin(PQ_PARAM_S* pstPqParam)
{
    HI_S32 s32Ret;
    PQ_TOP_OFST_TABLE_S* pstPqTopOfst;
    PQ_FILE_HEADER_S* pstPqFileHead;
    HI_U32 u32CheckSize;
    HI_U32 u32CheckPos;
    HI_U32 u32CheckSum = 0;
    HI_U32 u32PqAddr = 0;
    HI_U32 u32PqLen = 0;
    PDM_EXPORT_FUNC_S*   pstPdmFuncs = HI_NULL;
    PQ_PARAM_S* pstPqBinParam = HI_NULL;

    memset((HI_VOID*)pstPqParam, 0x0, sizeof(PQ_PARAM_S));

    //get pq bin from pdm
    HI_DRV_MODULE_GetFunction(HI_ID_PDM, (HI_VOID**)&pstPdmFuncs);
    if (NULL == pstPdmFuncs)
    {
        HI_FATAL_PQ("\npfnPDM_GetPqParam failed\r\n");
        return HI_FAILURE;
    }

    if (NULL == pstPdmFuncs->pfnPDM_GetData)
    {
        HI_WARN_PQ("\npstPdmFuncs->pfnPDM_GetData is null\r\n");
        return HI_FAILURE;
    }

    s32Ret = pstPdmFuncs->pfnPDM_GetData(PQ_DEF_NAME, &u32PqAddr, &u32PqLen);

    if ((HI_SUCCESS != s32Ret) || (HI_NULL == u32PqAddr) )
    {
        HI_WARN_PQ("\n WARN: PQ bin param may not burned\r\n");
        return HI_FAILURE;
    }


    pstPqBinParam = (PQ_PARAM_S*)u32PqAddr;
    pstPqTopOfst = (PQ_TOP_OFST_TABLE_S*)(pstPqBinParam);

    if ((pstPqTopOfst->u32FileHeaderOfst) != sizeof(PQ_TOP_OFST_TABLE_S))
    {
        HI_FATAL_PQ("\r\n--------------Pq head size = %d , real is %d failed----------------\r\n", pstPqTopOfst->u32FileHeaderOfst, sizeof(PQ_TOP_OFST_TABLE_S));
        pstPdmFuncs->pfnPDM_ReleaseReserveMem(PQ_DEF_NAME);
        return HI_FAILURE;
    }

    pstPqFileHead = (PQ_FILE_HEADER_S*)((HI_U8*)(pstPqBinParam) + pstPqTopOfst->u32FileHeaderOfst);
    u32CheckPos = pstPqTopOfst->u32DefaltOptOfst;
    u32CheckSize = pstPqFileHead->u32ParamSize;

    while (u32CheckPos < u32CheckSize)
    {
        u32CheckSum += *(HI_U8*)(((HI_U8*)pstPqBinParam) + u32CheckPos);
        u32CheckPos++;
    }

    if (u32CheckSum != pstPqFileHead->u32FileCheckSum)
    {
        HI_INFO_PQ( "Error,checksum error,declare checksum = %d,calcsum = %d\r\n", pstPqFileHead->u32FileCheckSum, u32CheckSum);
        pstPdmFuncs->pfnPDM_ReleaseReserveMem(PQ_DEF_NAME);
        return HI_FAILURE;
    }

    //ver compare
    if (0 == HI_OSAL_Strncmp(pstPqBinParam->stPQFileHeader.u8Version, PQ_VERSION, strlen(PQ_VERSION)))
    {
        memcpy((HI_VOID*)(pstPqParam), (HI_VOID*)pstPqBinParam, sizeof(PQ_PARAM_S));
    }
    else if (0 < HI_OSAL_Strncmp(pstPqBinParam->stPQFileHeader.u8Version, PQ_VERSION, strlen(PQ_VERSION)))
    {
        memcpy((HI_VOID*)(pstPqParam), (HI_VOID*)pstPqBinParam, sizeof(PQ_PARAM_S));
        HI_FATAL_PQ("\r\n--------------Pq bin version = %s,Pq driver version = %s----------------\r\n", pstPqBinParam->stPQFileHeader.u8Version, PQ_VERSION);
        pstPdmFuncs->pfnPDM_ReleaseReserveMem(PQ_DEF_NAME);
        return HI_FAILURE;
    }
    else
    {
        //convert version
        HI_INFO_PQ("\r\n--------------Pq bin version = %s,Pq driver version = %s----------------\r\n", pstPqBinParam->stPQFileHeader.u8Version, PQ_VERSION);
        memcpy((HI_VOID*)(pstPqParam), (HI_VOID*)pstPqBinParam, sizeof(PQ_PARAM_S));
    }

    //release memory
    pstPdmFuncs->pfnPDM_ReleaseReserveMem(PQ_DEF_NAME);
    return HI_SUCCESS;
}


