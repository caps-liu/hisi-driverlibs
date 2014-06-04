#include "hi_type.h"
#include "hi_common.h"
#include "hi_module.h"
#include "hi_drv_module.h"
#include "hi_debug.h"
#include "syn_cmn.h"
#include "mem_manage.h"
#include "syntax.h"

#include "vfmw.h"
#include "vfmw_ext.h"
#include "vfmw_debug.h"


#define VFMW_NAME       "HI_VFMW"

extern HI_S32  VFMW_DRV_Init (HI_VOID);
extern HI_VOID VFMW_DRV_Exit (HI_VOID);

/* svdec used vfmw function */
extern HI_S32  VFMW_SVDE_DRV_Init (HI_VOID);
extern HI_VOID VFMW_SVDEC_DRV_Exit (HI_VOID);

extern HI_VOID SVDEC_ModeInit(HI_VOID);
extern HI_VOID SVDEC_ModeExit(HI_VOID);


/* vdec use interface */
static VFMW_EXPORT_FUNC_S s_VfmwExportFuncs =
{
    .pfnVfmwOpenModule              = VDEC_OpenModule,
    .pfnVfmwExitModule              = VDEC_ExitModule,
    .pfnVfmwInit                    = VDEC_Init,
    .pfnVfmwInitWithOperation       = VDEC_InitWithOperation,       
    .pfnVfmwControl                 = VDEC_Control,
    .pfnVfmwExit                    = VDEC_Exit,
    .pfnVfmwSuspend                 = VDEC_Suspend,
    .pfnVfmwResume                  = VDEC_Resume,
    .pfnVfmwSetDbgOption            = VCTRL_SetDbgOption,
    .pfnVfmwVdmIntServProc          = VDMDRV_VdmIntServProc,
};

HI_S32 VFMW_DRV_Init(HI_VOID)
{
    HI_S32  ret;

    ret = HI_DRV_MODULE_Register(HI_ID_VFMW, VFMW_NAME, (HI_VOID*)&s_VfmwExportFuncs);
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_VFMW("HI_DRV_MODULE_VDEC_Register failed\n");
        return ret;
    }

    VDEC_OpenModule();   // open proc
    HI_INFO_VFMW("inner vfmw mod init OK\n");
    return HI_SUCCESS;
}

HI_VOID VFMW_DRV_Exit(HI_VOID)
{
    VDEC_ExitModule();   // clcose proc
    HI_DRV_MODULE_UnRegister(HI_ID_VFMW);
}

HI_S32 VFMW_DRV_ModInit(void)
{
     HI_S32 ret;
    
#ifndef VFMW_SUPPORT
    #ifndef HI_MCE_SUPPORT
    ret = VFMW_DRV_Init();
    if (HI_SUCCESS != ret)
    {
        return -1;
    }
    #endif

	/* svdec */	
    ret = VFMW_SVDE_DRV_Init();
    if (HI_SUCCESS != ret)
    {
        return -1;
    }
#endif 

#ifdef MODULE
    HI_PRINT("Load hi_vfmw.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return 0;
}

HI_VOID VFMW_DRV_ModExit(void)
{
#ifndef VFMW_SUPPORT
    #ifndef HI_MCE_SUPPORT
    VFMW_DRV_Exit();
    #endif
	/* svdec */	
	VFMW_SVDEC_DRV_Exit();
#endif
    return ;
}

#ifdef MODULE
module_init(VFMW_DRV_ModInit);
module_exit(VFMW_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");



