/***********************************************************************************
*              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName   :  drv_vi_buf.c
* Description:
*
***********************************************************************************/

#include <linux/kernel.h>

#include "drv_vi_buf.h"
#include "hi_drv_vi.h"
#include "hi_drv_proc.h"
#include "hi_error_mpi.h"

#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
spinlock_t lock_viulist = SPIN_LOCK_UNLOCKED;
#else
spinlock_t lock_viulist = __SPIN_LOCK_UNLOCKED(lock_viulist);
#endif
static unsigned long viu_lockflag;

HI_S32 VI_DRV_BufInit(VI_FB_ROOT_S *pRoot, VI_FB_ATTR_S *pstBufAttr)
{
    HI_S32 Ret;
    HI_U32 i;
    HI_U32 u32TotalSize;

    if ((HI_NULL == pRoot) || (HI_NULL == pstBufAttr))
    {
        return HI_ERR_VI_NULL_PTR;
    }

    if (0 == pstBufAttr->u32BufNum)
    {
        HI_ERR_VI("u32BufNum cannot be 0\n");
        return HI_ERR_VI_INVALID_PARA;
    }

    memset(pRoot, 0, sizeof(VI_FB_ROOT_S));

    INIT_LIST_HEAD(&pRoot->free_list);
    INIT_LIST_HEAD(&pRoot->busy_list);
    INIT_LIST_HEAD(&pRoot->done_list);

    if (VI_FB_MODE_ALLOC == pstBufAttr->enBufMode)
    {
        if (0 == pstBufAttr->u32BufSize)
        {
            HI_ERR_VI("u32BufSize cannot be 0\n");
            return HI_ERR_VI_INVALID_PARA;
        }

        u32TotalSize = pstBufAttr->u32BufSize * pstBufAttr->u32BufNum;
        Ret = HI_DRV_MMZ_AllocAndMap("VI_ChnBuf", MMZ_OTHERS, u32TotalSize, 0, &pRoot->MMZBuf);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_VI("VI HI_DRV_MMZ_AllocAndMap failed, Ret = 0x%08x\n", Ret);
            return HI_FAILURE;
        }

        memset((HI_CHAR*)pRoot->MMZBuf.u32StartVirAddr, 0, u32TotalSize);
    }

    for (i = 0; i < pstBufAttr->u32BufNum; i++)
    {
        switch (pstBufAttr->enBufMode)
        {
        case VI_FB_MODE_ALLOC:
            pRoot->struFb[i].u32PhysAddr = pRoot->MMZBuf.u32StartPhyAddr + i * pstBufAttr->u32BufSize;

            /* use u32PhyAddr to output MMZ buffer address */
            pstBufAttr->u32PhyAddr[i] = pRoot->struFb[i].u32PhysAddr;
            list_add_tail(&pRoot->struFb[i].list, &pRoot->done_list);
            break;

        case VI_FB_MODE_MMAP:
            pRoot->struFb[i].u32PhysAddr = pstBufAttr->u32PhyAddr[i];
            list_add_tail(&pRoot->struFb[i].list, &pRoot->done_list);
            break;

        case VI_FB_MODE_VIRTUAL:
            list_add_tail(&pRoot->struFb[i].list, &pRoot->free_list);
            break;
        }

        pRoot->struFb[i].u32Index = i;
        pRoot->struFb[i].bUsed = HI_FALSE;
    }

    pRoot->u32BufCnt = pstBufAttr->u32BufNum;
    return HI_SUCCESS;
}

HI_VOID VI_DRV_BufDeInit(VI_FB_ROOT_S *pRoot, VI_FB_ATTR_S *pstBufAttr)
{
    struct list_head *ptr_buf   = HI_NULL;
    struct list_head *ptr_buf_n = HI_NULL;
    VI_FB_S *pFb = HI_NULL;

    if ((HI_NULL == pRoot) || (HI_NULL == pstBufAttr))
    {
        return;
    }

    switch (pstBufAttr->enBufMode)
    {
    case VI_FB_MODE_ALLOC:
        HI_DRV_MMZ_UnmapAndRelease(&pRoot->MMZBuf);
        if (!list_empty(&pRoot->free_list))
        {
            spin_lock_irqsave(&lock_viulist, viu_lockflag);
            list_for_each_safe (ptr_buf, ptr_buf_n, &pRoot->free_list)
            {
                pFb = list_entry(ptr_buf, VI_FB_S, list);
                pFb->bUsed = HI_FALSE;
                list_move_tail(&pFb->list, &pRoot->busy_list);
            }
            spin_unlock_irqrestore(&lock_viulist, viu_lockflag);
        }

        if (!list_empty(&pRoot->busy_list))
        {
            spin_lock_irqsave(&lock_viulist, viu_lockflag);
            list_for_each_safe (ptr_buf, ptr_buf_n, &pRoot->busy_list)
            {
                pFb = list_entry(ptr_buf, VI_FB_S, list);
                list_move_tail(&pFb->list, &pRoot->done_list);
            }
            spin_unlock_irqrestore(&lock_viulist, viu_lockflag);
        }

        break;

    case VI_FB_MODE_MMAP:
        if (!list_empty(&pRoot->free_list))
        {
            spin_lock_irqsave(&lock_viulist, viu_lockflag);
            list_for_each_safe (ptr_buf, ptr_buf_n, &pRoot->free_list)
            {
                pFb = list_entry(ptr_buf, VI_FB_S, list);
                pFb->bUsed = HI_FALSE;
                list_move_tail(&pFb->list, &pRoot->busy_list);
            }
            spin_unlock_irqrestore(&lock_viulist, viu_lockflag);
        }

        if (!list_empty(&pRoot->busy_list))
        {
            spin_lock_irqsave(&lock_viulist, viu_lockflag);
            list_for_each_safe (ptr_buf, ptr_buf_n, &pRoot->busy_list)
            {
                pFb = list_entry(ptr_buf, VI_FB_S, list);
                list_move_tail(&pFb->list, &pRoot->done_list);
            }
            spin_unlock_irqrestore(&lock_viulist, viu_lockflag);
        }

        break;

    case VI_FB_MODE_VIRTUAL:
        if (!list_empty(&pRoot->busy_list))
        {
            spin_lock_irqsave(&lock_viulist, viu_lockflag);
            list_for_each_safe (ptr_buf, ptr_buf_n, &pRoot->busy_list)
            {
                pFb = list_entry(ptr_buf, VI_FB_S, list);
                pFb->bUsed = HI_FALSE;
                list_move_tail(&pFb->list, &pRoot->done_list);
            }
            spin_unlock_irqrestore(&lock_viulist, viu_lockflag);
        }

        if (!list_empty(&pRoot->done_list))
        {
            spin_lock_irqsave(&lock_viulist, viu_lockflag);
            list_for_each_safe (ptr_buf, ptr_buf_n, &pRoot->done_list)
            {
                pFb = list_entry(ptr_buf, VI_FB_S, list);
                list_move_tail(&pFb->list, &pRoot->free_list);
            }
            spin_unlock_irqrestore(&lock_viulist, viu_lockflag);
        }

        break;
    }

    pRoot->u32BufCnt = 0;

    return;
}

/**
 *    VIU_BUF_Get
 *
 *    get a node from done list, copy info, free it at last
 */
HI_S32 VI_DRV_BufGet(VI_FB_ROOT_S *pRoot, VI_FB_S *pFb)
{
    VI_FB_S *pTmpFb = HI_NULL;

    if ((HI_NULL == pRoot) || (HI_NULL == pFb))
    {
        return HI_FAILURE;
    }

    if (list_empty(&pRoot->done_list))
    {
        return HI_FAILURE;
    }

    spin_lock_irqsave(&lock_viulist, viu_lockflag);
    pTmpFb = list_entry(pRoot->done_list.next, VI_FB_S, list);
    if (HI_NULL == pTmpFb)
    {
        spin_unlock_irqrestore(&lock_viulist, viu_lockflag);
        return HI_FAILURE;
    }

    memcpy(pFb, pTmpFb, sizeof(VI_FB_S));

    //pTmpFb->u32PhysAddr = 0;
    list_move_tail(&pTmpFb->list, &pRoot->free_list);
    spin_unlock_irqrestore(&lock_viulist, viu_lockflag);

    return HI_SUCCESS;
}

/**
 *    VIU_BUF_Put
 *
 *    get a node from free list, and move it to busy list
 */
HI_S32 VI_DRV_BufPut(VI_FB_ROOT_S *pRoot, HI_U32 u32PhyAddr)
{
    VI_FB_S *pTmpFb = HI_NULL;

    if ((HI_NULL == pRoot) || (0 == u32PhyAddr))
    {
        return HI_FAILURE;
    }

    if (list_empty(&pRoot->free_list))
    {
        return HI_FAILURE;
    }

    spin_lock_irqsave(&lock_viulist, viu_lockflag);
    pTmpFb = list_entry(pRoot->free_list.next, VI_FB_S, list);
    if (HI_NULL == pTmpFb)
    {
        spin_unlock_irqrestore(&lock_viulist, viu_lockflag);
        return HI_FAILURE;
    }

    pTmpFb->u32PhysAddr = u32PhyAddr;
    list_move_tail(&pTmpFb->list, &pRoot->busy_list);
    spin_unlock_irqrestore(&lock_viulist, viu_lockflag);

    return HI_SUCCESS;
}

/**
 *    VIU_BUF_Add
 *
 *    add tag on an unused node
 */
HI_S32 VI_DRV_BufAdd(VI_FB_ROOT_S *pRoot, VI_FB_S *pFb)
{
    struct list_head *ptr_buf   = HI_NULL;
    struct list_head *ptr_buf_n = HI_NULL;
    VI_FB_S *pTmpFb = HI_NULL;

    if ((HI_NULL == pRoot) || (HI_NULL == pFb))
    {
        return HI_FAILURE;
    }

    if (list_empty(&pRoot->busy_list))
    {
        return HI_FAILURE;
    }
    else
    {
        spin_lock_irqsave(&lock_viulist, viu_lockflag);
        list_for_each_safe(ptr_buf, ptr_buf_n, &pRoot->busy_list)
        {
            pTmpFb = list_entry(ptr_buf, VI_FB_S, list);
            HI_ASSERT(pTmpFb);
            if (HI_FALSE == pTmpFb->bUsed)
            {
                pTmpFb->bUsed = HI_TRUE;
                memcpy(pFb, pTmpFb, sizeof(VI_FB_S));
                spin_unlock_irqrestore(&lock_viulist, viu_lockflag);

                return HI_SUCCESS;
            }
        }

        spin_unlock_irqrestore(&lock_viulist, viu_lockflag);

        return HI_FAILURE;
    }
}

/**
 *    VIU_BUF_Sub
 *
 *    sub tag from an used node, and move the node to done list waited to be fetched
 */
HI_S32 VI_DRV_BufSub(VI_FB_ROOT_S *pRoot, HI_U32 u32PhyAddr)
{
    struct list_head *ptr_buf   = HI_NULL;
    struct list_head *ptr_buf_n = HI_NULL;
    VI_FB_S *pTmpFb = HI_NULL;

    if ((HI_NULL == pRoot) || (0 == u32PhyAddr))
    {
        return HI_FAILURE;
    }

    if (list_empty(&pRoot->busy_list))
    {
        return HI_FAILURE;
    }
    else
    {
        spin_lock_irqsave(&lock_viulist, viu_lockflag);
        list_for_each_safe(ptr_buf, ptr_buf_n, &pRoot->busy_list)
        {
            pTmpFb = list_entry(ptr_buf, VI_FB_S, list);
            HI_ASSERT(pTmpFb);
            if ((HI_TRUE == pTmpFb->bUsed) && (u32PhyAddr == pTmpFb->u32PhysAddr))
            {
                pTmpFb->bUsed = HI_FALSE;
                list_move_tail(&pTmpFb->list, &pRoot->done_list);
                spin_unlock_irqrestore(&lock_viulist, viu_lockflag);

                return HI_SUCCESS;
            }
        }
        spin_unlock_irqrestore(&lock_viulist, viu_lockflag);

        return HI_FAILURE;
    }
}

HI_VOID VI_DRV_BufProc(VI_FB_ROOT_S *pRoot, VI_FB_BUF_PROC *pstBufProc)
{
    struct list_head *ptr_buf   = HI_NULL;
    struct list_head *ptr_buf_n = HI_NULL;
    VI_FB_S *pFb = HI_NULL;
    HI_U32 u32UsedCnt = 0;

    if ((HI_NULL == pRoot) || (HI_NULL == pstBufProc))
    {
        return;
    }

    spin_lock_irqsave(&lock_viulist, viu_lockflag);

    list_for_each_safe(ptr_buf, ptr_buf_n, &pRoot->free_list)
    {
        pFb = list_entry(ptr_buf, VI_FB_S, list);
        pstBufProc->stState[pFb->u32Index] = VI_FB_STATE_FREE;
    }
    list_for_each_safe(ptr_buf, ptr_buf_n, &pRoot->busy_list)
    {
        pFb = list_entry(ptr_buf, VI_FB_S, list);
        pstBufProc->stState[pFb->u32Index] = VI_FB_STATE_BUSY;
        u32UsedCnt++;
    }
    list_for_each_safe(ptr_buf, ptr_buf_n, &pRoot->done_list)
    {
        pFb = list_entry(ptr_buf, VI_FB_S, list);
        pstBufProc->stState[pFb->u32Index] = VI_FB_STATE_DONE;
        u32UsedCnt++;
    }
    pstBufProc->u32UsedNum = u32UsedCnt;

    spin_unlock_irqrestore(&lock_viulist, viu_lockflag);
}
