
#ifndef __DRV_AI_EXT_H__
#define __DRV_AI_EXT_H__

#include "hi_type.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* End of #ifdef __cplusplus */

typedef HI_S32 (*FN_AI_todofunc)(HI_VOID);

typedef struct 
{       
    FN_AI_todofunc pfnAiaitodofunc;         
} AI_EXPORT_FUNC_S;

HI_S32  AI_DRV_ModInit(HI_VOID);
HI_VOID AI_DRV_ModExit(HI_VOID);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */


#endif//__DRV_AI_EXT_H__
