#ifndef  __JPGE_OSAL_H__
#define  __JPGE_OSAL_H__

#include "hi_type.h"
#include <linux/spinlock.h>

#include <linux/semaphore.h>

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif
/*************************************************************************************/

#define JPGE_REG_BASE_ADDR 0xF8C90000 //0x60118000
#define JPGE_IRQ_ID        134 //32+45

typedef unsigned long  JPGE_LOCK_FLAG;
typedef spinlock_t     JPGE_LOCK_S;
//typedef KLIB_SEM       JPGE_SEM_S;
typedef struct semaphore      JPGE_SEM_S;

/**********************************************************************
* INTERRUPT
**********************************************************************/
HI_S32     JpgeOsal_IrqFree  ( HI_U32  Irq );
HI_S32     JpgeOsal_IrqInit  ( HI_U32  Irq, HI_VOID (*ptrCallBack)(HI_VOID) );

/**********************************************************************
* Lock
**********************************************************************/
HI_S32     JpgeOsal_LockInit( JPGE_LOCK_S *pLock );
HI_VOID    JpgeOsal_Lock    ( JPGE_LOCK_S *pLock, JPGE_LOCK_FLAG *pFlag );
HI_VOID    JpgeOsal_Unlock  ( JPGE_LOCK_S *pLock, JPGE_LOCK_FLAG *pFlag );

/**********************************************************************
* MUTEX
**********************************************************************/
HI_S32     JpgeOsal_MutexInit   ( JPGE_SEM_S *pMutex );
HI_S32     JpgeOsal_MutexLock   ( JPGE_SEM_S *pMutex );
HI_S32     JpgeOsal_MutexUnlock ( JPGE_SEM_S *pMutex );

/**********************************************************************
* Map Register Addr
**********************************************************************/
HI_VOID*   JpgeOsal_MapRegisterAddr  ( HI_U32  phyAddr, HI_U32 len );
HI_VOID    JpgeOsal_UnmapRegisterAddr( HI_VOID *pVir );

/*************************************************************************************/
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif
