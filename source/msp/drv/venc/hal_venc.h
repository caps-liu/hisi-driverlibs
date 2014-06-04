#ifndef __HAL_VENC_H__
#define __HAL_VENC_H__

#include "hi_type.h"
#include "drv_venc.h"

#ifdef __VENC_S40V200_CONFIG__
 #include "drv_venc_reg_r006.h"
#endif

#ifdef __VENC_3716CV200_CONFIG__
 #include "drv_venc_reg_r008.h"
#endif

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

#define VEDU_REG_BASE_ADDR 0xf8c80000
#define VEDU_IRQ_ID 133						/* 101+32 */

typedef unsigned long VEDU_LOCK_FLAG;

HI_VOID VENC_HAL_ClrAllInt( S_VEDU_REGS_TYPE *pVeduReg );
HI_VOID VENC_HAL_DisableAllInt( S_VEDU_REGS_TYPE *pVeduReg );
HI_VOID VENC_HAL_ReadReg( HI_U32 EncHandle );
HI_VOID VENC_HAL_CfgReg ( HI_U32 EncHandle );

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif //__HAL_VENC_H__
