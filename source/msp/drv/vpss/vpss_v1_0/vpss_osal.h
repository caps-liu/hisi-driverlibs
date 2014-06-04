#ifndef __VPSS_OSAL_H__
#define __VPSS_OSAL_H__

#include <linux/wait.h>
#include <linux/sched.h>
#include <linux/semaphore.h>
#include <linux/spinlock.h>
#include <linux/fs.h>
#include <linux/mm.h>
#include <linux/rwlock.h>

#include <asm/uaccess.h>
#include "hi_type.h"
#include "hi_osal.h"
#include "hi_common.h"
#include "vpss_common.h"
#include "hi_drv_mmz.h"

 
/************************************************************************/
/*                         data structure                               */
/************************************************************************/

#define OSAL_OK     0
#define OSAL_ERR   -1

#define EVENT_DONE 1
#define EVENT_UNDO 0

typedef  struct file   FILE;



/************************************************************************/
/* file operation                                                       */
/************************************************************************/
struct file *VPSS_OSAL_fopen(const char *filename, int flags, int mode);
void VPSS_OSAL_fclose(struct file *filp);
int VPSS_OSAL_fread(char *buf, unsigned int len, struct file *filp);
int VPSS_OSAL_fwrite(char *buf, int len, struct file *filp);

/************************************************************************/
/* event operation                                                      */
/************************************************************************/
typedef struct hiKERN_EVENT_S
{
	wait_queue_head_t   queue_head;
	HI_S32              flag_1;
	HI_S32              flag_2;
} KERN_EVENT_S;

typedef  KERN_EVENT_S           OSAL_EVENT;
HI_S32 VPSS_OSAL_InitEvent( OSAL_EVENT *pEvent, HI_S32 InitVal1, HI_S32 InitVal2);

HI_S32 VPSS_OSAL_GiveEvent( OSAL_EVENT *pEvent, HI_S32 InitVal1, HI_S32 InitVal2);

HI_S32 VPSS_OSAL_WaitEvent( OSAL_EVENT *pEvent, HI_S32 s32WaitTime ); 

HI_S32 VPSS_OSAL_ResetEvent( OSAL_EVENT *pEvent, HI_S32 InitVal1, HI_S32 InitVal2);



/************************************************************************/
/* mutux lock operation                                                 */
/************************************************************************/
typedef struct semaphore  VPSS_OSAL_LOCK;

HI_S32 VPSS_OSAL_InitLOCK(VPSS_OSAL_LOCK *pLock, HI_U32 u32InitVal);

HI_S32 VPSS_OSAL_DownLock(VPSS_OSAL_LOCK *pLock);

HI_S32 VPSS_OSAL_UpLock(VPSS_OSAL_LOCK *pLock); 

HI_S32 VPSS_OSAL_TryLock(VPSS_OSAL_LOCK *pLock); 



/************************************************************************/
/* spin lock operation                                                  */
/************************************************************************/
typedef struct{
    spinlock_t     irq_lock;
    unsigned long  irq_lockflags;
    int            isInit;
}VPSS_OSAL_SPIN;

HI_S32 VPSS_OSAL_InitSpin(VPSS_OSAL_SPIN *pLock, HI_U32 u32InitVal);

HI_S32 VPSS_OSAL_DownSpin(VPSS_OSAL_SPIN *pLock);

HI_S32 VPSS_OSAL_UpSpin(VPSS_OSAL_SPIN *pLock); 

HI_S32 VPSS_OSAL_TryLockSpin(VPSS_OSAL_SPIN *pLock);


/************************************************************************/
/* debug operation                                                      */
/************************************************************************/
HI_S32 VPSS_OSAL_GetProcArg(HI_CHAR*  chCmd,HI_CHAR*  chArg,HI_U32 u32ArgIdx);

HI_S32 VPSS_OSAL_ParseCmd(HI_CHAR*  chArg1,HI_CHAR*  chArg2,HI_CHAR*  chArg3,HI_VOID *pstCmd);

HI_S32 VPSS_OSAL_StrToNumb(HI_CHAR*  chStr,HI_U32 *pu32Numb);

HI_S32 VPSS_OSAL_WRITEYUV(HI_DRV_VIDEO_FRAME_S *pstFrame,HI_CHAR* pchFile);
#endif
