#ifndef  __JPGE_OSAL_C__
#define  __JPGE_OSAL_C__

#include "jpge_osal.h"
#include <linux/irqreturn.h>
#include <linux/interrupt.h>
#include <linux/io.h>
#include "hi_gfx_comm_k.h"
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif
/*************************************************************************************/


/**********************************************************************
* INTERRUPT
**********************************************************************/

static HI_VOID (*ptrJpgeCallBack)(HI_VOID);

static irqreturn_t JpgeOsal_JencISR(HI_S32 Irq, HI_VOID* DevID)
{
    (*ptrJpgeCallBack)();
    return IRQ_HANDLED;
}

HI_S32 JpgeOsal_IrqInit( HI_U32 Irq, HI_VOID (*ptrCallBack)(HI_VOID) )
{
    ptrJpgeCallBack = ptrCallBack;
    
    if( HI_SUCCESS != request_irq(Irq, JpgeOsal_JencISR, IRQF_DISABLED, "hi_jpge_irq", NULL) )
     {
        return HI_FAILURE;
     }

    return HI_SUCCESS;
}

HI_S32 JpgeOsal_IrqFree( HI_U32 Irq )
{
    free_irq(Irq, NULL);
    
    return HI_SUCCESS;
}

/**********************************************************************
* Lock
**********************************************************************/
HI_S32 JpgeOsal_LockInit( JPGE_LOCK_S *pLock )
{
    spin_lock_init( pLock );
    
    return HI_SUCCESS;
}

HI_VOID JpgeOsal_Lock( JPGE_LOCK_S *pLock, JPGE_LOCK_FLAG *pFlag )
{
    spin_lock_irqsave((spinlock_t *)pLock, *pFlag);
}

HI_VOID JpgeOsal_Unlock( JPGE_LOCK_S *pLock, JPGE_LOCK_FLAG *pFlag )
{
    spin_unlock_irqrestore((spinlock_t *)pLock, *pFlag);
}


/**********************************************************************
* MUTEX
**********************************************************************/

HI_S32 JpgeOsal_MutexInit( JPGE_SEM_S *pMutex )
{
    sema_init(pMutex,1);
    return HI_SUCCESS;
}

HI_S32 JpgeOsal_MutexLock( JPGE_SEM_S *pMutex )
{
 
    HI_S32 s32Ret = 0;
    s32Ret = down_interruptible(pMutex);
    return HI_SUCCESS;
}

HI_S32 JpgeOsal_MutexUnlock( JPGE_SEM_S *pMutex )
{
    up(pMutex);
    return HI_SUCCESS;
}


/**********************************************************************
* Map Register Addr
**********************************************************************/
HI_VOID* JpgeOsal_MapRegisterAddr( HI_U32 phyAddr, HI_U32 len )
{
    return HI_GFX_REG_MAP( phyAddr, len );
}

HI_VOID JpgeOsal_UnmapRegisterAddr( HI_VOID* pVir )
{
    HI_GFX_REG_UNMAP( pVir);
    return;
}


/*************************************************************************************/
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif
