#ifndef __HI_ADE_PRIVATE_H__
#define __HI_ADE_PRIVATE_H__

#include "hi_type.h"
#include "hi_module.h"
#include "hi_drv_sys.h"
#include "hi_drv_mmz.h"
#include "hi_drv_mem.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"
#include "hi_drv_module.h"
#include "hi_audsp_ade.h"
#include "hal_ade.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#define HI_FATAL_ADE(fmt...) \
    HI_FATAL_PRINT(HI_ID_ADE, fmt)

#define HI_ERR_ADE(fmt...) \
    HI_ERR_PRINT(HI_ID_ADE, fmt)

#define HI_WARN_ADE(fmt...) \
    HI_WARN_PRINT(HI_ID_ADE, fmt)

#define HI_INFO_ADE(fmt...) \
    HI_INFO_PRINT(HI_ID_ADE, fmt)

typedef struct tagADE_REGISTER_PARAM_S
{
    DRV_PROC_READ_FN  pfnReadProc;
    DRV_PROC_WRITE_FN pfnWriteProc;
} ADE_REGISTER_PARAM_S;

typedef struct tagADE_CHANNEL_S
{
    HAL_ADE_MSGPOOL_ATTR_S    stMsgAttr;
    HAL_ADE_OUTPUTBUF_ATTR_S  stOutBufAttr;
    HAL_ADE_INBUF_ATTR_S stInbufAttr;
    HI_ADE_OPEN_PARAM_S stOpenAttr;
    HI_U32    u32PtsLastWritePos;  // for suspend


    /* internal state */
    HI_BOOL      bStart;
    HI_BOOL      bOpen;
    MMZ_BUFFER_S stMsgPoolMmz;
    HI_CHAR      szMsgPoolMmzName[16];
    MMZ_BUFFER_S stOutBufMmz;
    HI_CHAR      szOutBufMmzName[16];
    MMZ_BUFFER_S stInBufMmz;
    HI_CHAR      szInBufMmzName[16];
} ADE_CHANNEL_S;

HI_S32	ADE_DRV_Init(HI_VOID);
HI_VOID ADE_DRV_Exit(HI_VOID);
HI_S32	ADE_DRV_Open(struct inode *inode, struct file  *filp);
HI_S32	ADE_DRV_Release(struct inode *inode, struct file  *filp);
HI_S32	ADE_DRV_RegisterProc(ADE_REGISTER_PARAM_S *pstParam);
HI_VOID ADE_DRV_UnregisterProc(HI_VOID);
HI_S32	ADE_DRV_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
HI_S32	ADE_DRV_Resume(PM_BASEDEV_S *pdev);
long	ADE_DRV_Ioctl(struct file *file, HI_U32 cmd, unsigned long arg);
HI_S32	ADE_DRV_WriteProc(struct file * file,
                          const char __user * buf, size_t count, loff_t *ppos);
HI_S32	ADE_DRV_ReadProc(struct seq_file *p, HI_VOID *v);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __HI_ADE_PRIVATE_H__ */

