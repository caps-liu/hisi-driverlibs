
/******************************************************************************

  版权所有 (C), 2001-2011, 华为技术有限公司

******************************************************************************
    文 件 名   : vfmw_osal.h
    版 本 号   : 初稿
    作    者   : 
    生成日期   : 
    最近修改   :
    功能描述   : 为vfmw定制的操作系统抽象模块
                 

    修改历史   :
    1.日    期 : 2009-05-12
    作    者   : 
    修改内容   : 

******************************************************************************/

#ifndef __VFMW_OSAL_HEADER__
#define  __VFMW_OSAL_HEADER__

//#ifdef __LINUX_2_6_31__
#include "vfmw.h"
//#include "hi_type_cbb.h"
//#else
//#include "hi_type.h"
//#endif

#include "hi_type.h"
#include "hi_module.h"
#include "hi_drv_mmz.h"

//#include "hi_common_id.h"
//#include "common_mem_drv.h"
//#include "common_mem.h"
//#include "hi_common_mem.h"


#include <linux/kthread.h>
#include <linux/timer.h>   /* time test, z56361 */
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/stat.h>

#include <linux/wait.h>
#include <linux/syscalls.h>
#include <linux/sched.h>

#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/vmalloc.h>
#include <linux/mm.h>
#include <linux/poll.h>
#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/slab.h>
//#include <linux/smp_lock.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/ioctl.h>
#include <asm/system.h>
//#ifdef __LINUX_2_6_31__
#include <linux/semaphore.h>
//#include "hi_mmz.h"
//#include "drv_mmz.h"
#include "hi_drv_mmz.h"
/*======================================================================*/
/*                            常数定义                                  */
/*======================================================================*/
/*
typedef  unsigned long long UINT64;
typedef  long long			SINT64;
typedef  unsigned int		UINT32;
typedef  int				SINT32;
typedef  unsigned short		UINT16;
typedef  short				SINT16;
typedef  char				SINT8;
typedef  const void        CONSTVOID;
typedef  unsigned          USIGN;
*/
//#ifndef __LINUX_2_6_31__
//typedef  unsigned char     UINT8;
//typedef  void              VOID;
//typedef  unsigned long     ULONG;
//#endif

#define OSAL_OK     0
#define OSAL_ERR   -1

#define DIV_NS_TO_MS  1000000
#define DIV_NS_TO_US  1000

/*======================================================================*/
/*                            数据结构和枚举                            */
/*======================================================================*/
typedef struct hiOSAL_MEM_S
{
    SINT32     PhyAddr;
	VOID       *VirAddr;
	SINT32     Length;
} OSAL_MEM_S;

typedef enum hiFILE_OP_E
{
    OSAL_FREAD,
	OSAL_FWRITE,
	OSAL_FREAD_FWRITE
} OSAL_FILE_OP_E;

typedef enum hiFILE_TYPE_E
{
    OSAL_FILE_ASCII,
	OSAL_FILE_BIN,
} OSAL_FILE_TYPE_E;

typedef enum hiFILE_SEEK_START_E
{
    OSAL_SEEK_SET,
	OSAL_SEEK_CUR,
	OSAL_SEEK_END
} FILE_SEEK_START_E;


typedef struct hiKERN_EVENT_S
{
	wait_queue_head_t   queue_head;
	SINT32              flag;    
} KERN_EVENT_S;

typedef struct hiKERN_IRQ_LOCK_S
{
    spinlock_t     irq_lock;
    unsigned long  irq_lockflags;
    int            isInit;
} KERN_IRQ_LOCK_S;

/*======================================================================*/
/*                            数据类型抽象                              */
/*======================================================================*/
/* 任务 ---  通常就是是线程.   操作包括:  创建，销毁，激活  */
typedef  struct task_struct*    OSAL_TASK;

/* 事件 --- 通信或协调机制，支持等待超时处理.  操作包括:  初始化，发出，等待  */
typedef  KERN_EVENT_S           OSAL_EVENT;

/* 任务锁 --- 线程之间对临界区保护机制.  操作包括:  创建，锁定，解锁  */
typedef  KERN_EVENT_S           OSAL_TASK_MUTEX;

/* 任务锁 --- 线程与中断服务程序之间对临界区保护.  操作包括:  创建，锁定，解锁  */
typedef  UINT32                 OSAL_IRQ_LOCK;

typedef KERN_IRQ_LOCK_S         OSAL_IRQ_SPIN_LOCK;

/* 文件 */
typedef  struct file           OSAL_FILE;    
typedef  struct file   FILE;
typedef struct{
	wait_queue_head_t   queue_head;
	int                 flag;
}KLIB_SEM;
typedef struct semaphore OSAL_SEMA;
/*======================================================================*/
/*                           操作抽象                                   */
/*======================================================================*/

/************************************************************************/
/* 休眠(毫秒精度)                                                       */
/************************************************************************/
#if 1
#define OSAL_MSLEEP(nMs)    msleep(nMs)
#else
#define OSAL_MSLEEP(nMs) \
do{\
    msleep(nMs);\
    dprint(PRN_ALWS,"sleep in %s:%d\n", __FUNCTION__, __LINE__);\
}while(0)
#endif
/************************************************************************/
/* 获取系统时间                                                         */
/************************************************************************/
UINT32 OSAL_GetTimeInMs(VOID);
UINT32 OSAL_GetTimeInUs(VOID);

VOID OSAL_AcrtUsSleep(UINT32 us);

/************************************************************************/
/* 申请虚拟内存（可能非物理连续）                                       */
/************************************************************************/
VOID *OSAL_AllocVirMem(SINT32 Size);

/************************************************************************/
/* 释放虚拟内存（可能非物理连续）                                       */
/************************************************************************/
VOID OSAL_FreeVirMem(VOID *p);

/************************************************************************/
/* 创建任务                                                             */
/************************************************************************/
SINT32 OSAL_CreateTask( OSAL_TASK *pTask, SINT8 TaskName[], VOID *pTaskFunction );
/************************************************************************/
/* 激活任务                                                             */
/************************************************************************/
SINT32 OSAL_WakeupTask( OSAL_TASK *pTask );
/************************************************************************/
/* 销毁任务                                                             */
/************************************************************************/
SINT32 OSAL_DeleteTask(OSAL_TASK *pTask);


/************************************************************************/
/* 初始化事件                                                           */
/************************************************************************/
SINT32 OSAL_InitEvent( OSAL_EVENT *pEvent, SINT32 InitVal ); 
/************************************************************************/
/* 发出事件                                                             */
/************************************************************************/
SINT32 OSAL_GiveEvent( OSAL_EVENT *pEvent ); 
/************************************************************************/
/* 等待事件                                                             */
/* 事件发生返回OSAL_OK，超时返回OSAL_ERR                                */
/************************************************************************/
SINT32 OSAL_WaitEvent( OSAL_EVENT *pEvent, SINT32 msWaitTime ); 


/************************************************************************/
/* 初始化线程互斥锁                                                     */
/************************************************************************/
SINT32 OSAL_InitTaskMutex( OSAL_TASK_MUTEX *pTaskMutex );
/************************************************************************/
/* 线程互斥加锁                                                         */
/************************************************************************/
SINT32 OSAL_LockTaskMutex( OSAL_TASK_MUTEX *pTaskMutex );
/************************************************************************/
/* 线程互斥解锁                                                         */
/************************************************************************/
SINT32 OSAL_UnlockTaskMutex( OSAL_TASK_MUTEX *pTaskMutex );


/************************************************************************/
/* 初始化中断互斥锁                                                     */
/************************************************************************/
SINT32 OSAL_InitIntrMutex( OSAL_IRQ_LOCK *pIntrMutex );
/************************************************************************/
/* 关中断                                                               */
/************************************************************************/
SINT32 OSAL_LockIRQ( OSAL_IRQ_LOCK *pIntrMutex );
/************************************************************************/
/* 开中断                                                               */
/************************************************************************/
SINT32 OSAL_UnLockIRQ( OSAL_IRQ_LOCK *pIntrMutex );

/************************************************************************/
/* 初始化互斥锁                                                         */
/************************************************************************/
SINT32 OSAL_InitSpinLock( OSAL_IRQ_SPIN_LOCK *pIntrMutex );
/************************************************************************/
/* 互斥加锁                                                             */
/************************************************************************/
SINT32 OSAL_SpinLock( OSAL_IRQ_SPIN_LOCK *pIntrMutex );
/************************************************************************/
/* 互斥解锁                                                             */
/************************************************************************/
SINT32 OSAL_SpinUnLock( OSAL_IRQ_SPIN_LOCK *pIntrMutex );

/************************************************************************/
/* 锁初始化                                                             */
/************************************************************************/
VOID OSAL_SpinLockIRQInit( OSAL_IRQ_SPIN_LOCK *pIntrMutex );

/************************************************************************/
/* 中断互斥加锁(关中断且加锁)                                           */
/************************************************************************/
SINT32 OSAL_SpinLockIRQ( OSAL_IRQ_SPIN_LOCK *pIntrMutex );
/************************************************************************/
/* 中断互斥解锁(开中断且去锁)                                           */
/************************************************************************/
SINT32 OSAL_SpinUnLockIRQ( OSAL_IRQ_SPIN_LOCK *pIntrMutex );

/************************************************************************/
/* 分配内存                                                             */
/************************************************************************/
SINT32 OSAL_AllocMemory( SINT32 ExpectPhyAddr, SINT32 ExpectSize, OSAL_MEM_S *pOsalMem );
/************************************************************************/
/* 释放内存                                                             */
/************************************************************************/
SINT32 OSAL_ReleaseMemory( OSAL_MEM_S *pMemRet );
/************************************************************************/
/* 映射寄存器虚拟地址                                                   */
/************************************************************************/
SINT32 OSAL_MapRegisterAddr( SINT32 RegPhyAddr, SINT32 Range, OSAL_MEM_S *pOsalMem );
/************************************************************************/
/* 去映射寄存器虚拟地址                                                 */
/************************************************************************/
SINT32 OSAL_UnmapRegisterAddr( OSAL_MEM_S *pOsalMem );

/************************************************************************/
/* 打开文件                                                             */
/************************************************************************/
OSAL_FILE *OSAL_OpenFile( SINT8 *pFileName, OSAL_FILE_TYPE_E eType, OSAL_FILE_OP_E eFileOP);

/************************************************************************/
/* 关闭文件                                                             */
/************************************************************************/
VOID OSAL_CloseFile( OSAL_FILE *pFile );

/************************************************************************/
/* 文件read                                                             */
/************************************************************************/
SINT32 OSAL_ReadFile( VOID *pBuf, SINT32 Size, OSAL_FILE *pFile );

/************************************************************************/
/* 文件seek                                                             */
/************************************************************************/
SINT32 OSAL_SeekFile( OSAL_FILE *pFile, SINT32 Offset, FILE_SEEK_START_E eStartPoint );

/************************************************************************/
/* 文件tell position                                                    */
/************************************************************************/
SINT32 OSAL_TellFilePos( OSAL_FILE *pFile );

/************************************************************************/
/* file: open/close/write                                               */
/************************************************************************/
struct file *klib_fopen(const char *filename, int flags, int mode);
void klib_fclose(struct file *filp);
int klib_fread(char *buf, unsigned int len, struct file *filp);
int klib_fwrite(char *buf, int len, struct file *filp);

/************************************************************************/
/* memory: alloc/free/map/unmap                                         */
/************************************************************************/
//unsigned int klib_phymalloc(const char *string, unsigned int len, unsigned int align);

//void klib_phyfree(unsigned int phyaddr);
//unsigned char *klib_mmap(unsigned int phyaddr, unsigned int len);
//unsigned char *klib_mmap_cache(unsigned int phyaddr, unsigned int len);
//void klib_munmap(unsigned char *p );
//void klib_flush_cache(void *ptr, unsigned int len);
void klib_flush_cache(void *ptr, unsigned int phy_addr, unsigned int len);

SINT32 KernelMemMalloc(UINT8 * MemName, UINT32 len, UINT32 align, UINT32 IsCached, MEM_DESC_S *pMemDesc);
SINT32 KernelMemFree(MEM_DESC_S *pMemDesc);
UINT8 *KernelRegisterMap(UINT32 PhyAddr);
VOID KernelRegisterUnMap(UINT8 *VirAddr);
UINT8 *KernelMmap(UINT32 phyaddr, UINT32 len);
UINT8 *KernelMmapCache(UINT32 phyaddr, UINT32 len);
VOID KernelMunmap(UINT8 *p );
VOID KernelFlushCache(VOID *ptr, UINT32 phy_addr, UINT32 len);
SINT32 OSAL_DOWN_INTERRUPTIBLE(VOID);
VOID OSAL_UP(VOID);
VOID OSAL_SEMA_INTIT(VOID);
#endif


