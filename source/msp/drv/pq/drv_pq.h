#ifndef __DRV_PQ_H__
#define __DRV_PQ_H__

#include "hi_type.h"
#include "drv_pq_ext.h"
#include "drv_pq_define.h"

#ifdef __cplusplus
extern "C" {
#endif


HI_VOID PQ_DRV_GetOption(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetOption(PQ_IO_S* arg);
HI_VOID PQ_DRV_GetDeiParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetDeiParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_GetFmdParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetFmdParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_GetDnrParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetDnrParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_GetSharpParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetVpssSharpParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetGfxSharpParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_GetCscParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetVoCscParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetDispCscParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetGfxCscParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_GetAccParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetAccParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_GetAcmParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetAcmParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_GetGammaParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetGammaParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_GetGammaCtrlParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetGammaCtrlParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_GetDitherParam(PQ_IO_S* arg);
HI_VOID PQ_DRV_SetDitherParam(PQ_IO_S* arg);
HI_S32 PQ_DRV_FixParaToFlash(PQ_IO_S* arg);
HI_S32 PQ_DRV_UpdateVpss(HI_U32 u32UpdateType, PQ_PARAM_S* pstPqParam);
HI_S32 PQ_DRV_UpdateVo(HI_U32 u32UpdateType, PQ_PARAM_S* pstPqParam);
HI_S32 PQ_DRV_UpdateDisp(HI_U32 u32UpdateType, PQ_PARAM_S* pstPqParam);
HI_S32 PQ_DRV_UpdateGfx(HI_U32 u32UpdateType, PQ_PARAM_S* pstPqParam);
HI_S32 PQ_DRV_GetPqParam(PQ_PARAM_S** pstPqParam);
HI_S32 PQ_DRV_SetPqParam(PQ_PARAM_S* pstPqParam);
HI_S32 PQ_DRV_GetFlashPqBin(PQ_PARAM_S* pstPqParam);
HI_S32 PQ_DRV_CopyPqBinToPqApp(PQ_PARAM_S* pstPqParam);
#ifdef __cplusplus
}
#endif

#endif
