/*******************************************************************************
 *              Copyright 2006 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: JPGFMW_Handle.c
 * Description: handle source file.
 *
 * History:
 * Version   Date             Author    DefectNum    Description
 * main\1    2008-04-07       d37024    HI_NULL      Create this file.
 ******************************************************************************/

#include "jpg_fmwcomm.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif  /* __cplusplus */
#endif  /* __cplusplus */

/*JPG handle*/
typedef struct hiJPGFMW_HANDLEITEM_S
{
    HI_BOOL       UsedFlag;           /*if is used*/
    HI_U32        Handle;             /*handle value*/
    HI_VOID       *pInstance;         /*the relevant instance context*/
}JPGFMW_HANDLEITEM_S;

/*JPG handle data structure*/
typedef struct hiJPGFMW_HANDLEINFO_S
{
    HI_U32           Count;      /*current Handle num*/
    HI_U32           HandleMax;  /*max Handle*/
    JPGFMW_HANDLEITEM_S *pItemHead; /*Handle head node*/
    JPGVCOS_sem_t       semLock;
}JPGFMW_HANDLEINFO_S;

#define JPGFMW_HANDLE_START   0x1000      /*Handle min*/
#define JPGFMW_HANDLE_END     0x7FFFFFF0  /*Handle max*/

#define JPGFMW_HANDLE_EVERYMALLOC_NUM 30

#if 0
static JPGFMW_HANDLEINFO_S s_struHandleInfo = {0, 0, NULL, {0}};
#else
static JPGFMW_HANDLEINFO_S s_struHandleInfo;
#endif

static JPGFMW_HANDLEITEM_S s_HdlMem[JPGFMW_HANDLE_EVERYMALLOC_NUM] = {{HI_FALSE,0,NULL}};

/*****************************************************************************/
/*                                   functions                               */
/*****************************************************************************/

HI_VOID JPGFMW_Handle_Clear(HI_VOID)
{
    JPGVCOS_memset(&s_struHandleInfo, 0, sizeof(JPGFMW_HANDLEINFO_S));
	JPGVCOS_memset(s_HdlMem, 0, sizeof(s_HdlMem));
}

/******************************************************************************
* Function:      JPGFMW_Handle_Alloc
* Description:   allocate handle
* Input:         pInstance the relevant instance context
* Output:        pHandle   
* Return:        HI_SUCCESS:          
*                HI_ERR_JPG_NO_MEM:   
*                HI_FAILURE:          
* Others:        internal interface
******************************************************************************/
HI_S32 JPGFMW_Handle_Alloc(JPG_HANDLE *pHandle, HI_VOID *pInstance)
{
    HI_U32 MallocLen, Cnt;

    if (HI_NULL == s_struHandleInfo.pItemHead)
    {
        HI_S32 Ret = HI_FAILURE;
        Ret = JPGVCOS_sem_init(&s_struHandleInfo.semLock, 0, 1);
        if (0 != Ret)
        {
            return HI_FAILURE;
        }
        MallocLen = JPGFMW_HANDLE_EVERYMALLOC_NUM * sizeof(JPGFMW_HANDLEITEM_S);

        /* alloc and init 10 items, if fail return memory not enough*/
        s_struHandleInfo.pItemHead = s_HdlMem;
        JPGVCOS_memset(s_struHandleInfo.pItemHead, 0x0, MallocLen);

        /*current totall item number*/
        s_struHandleInfo.Count = JPGFMW_HANDLE_EVERYMALLOC_NUM;
        s_struHandleInfo.HandleMax = JPGFMW_HANDLE_START;
    }

    (HI_VOID)JPGVCOS_sem_wait(&s_struHandleInfo.semLock);

    /* find free intem*/
    Cnt = 0;
    jpg_assert((s_struHandleInfo.Count <= JPGFMW_HANDLE_EVERYMALLOC_NUM),
                (HI_VOID)JPGVCOS_sem_post(&s_struHandleInfo.semLock);return HI_FAILURE);
    while ((Cnt < s_struHandleInfo.Count)
           && (HI_FALSE != s_struHandleInfo.pItemHead[Cnt].UsedFlag))
    {
        Cnt++;
    }

    /*return if fail*/
    if (Cnt == s_struHandleInfo.Count)
    {
        (HI_VOID)JPGVCOS_sem_post(&s_struHandleInfo.semLock);
        return HI_ERR_JPG_NO_MEM;
	}

    /*set the item used, record the instance address, and create handle*/
    s_struHandleInfo.pItemHead[Cnt].UsedFlag = HI_TRUE;
    s_struHandleInfo.pItemHead[Cnt].pInstance = pInstance;

    if (JPGFMW_HANDLE_END == s_struHandleInfo.HandleMax)
    {
        s_struHandleInfo.HandleMax = JPGFMW_HANDLE_START;
    }

    s_struHandleInfo.pItemHead[Cnt].Handle = s_struHandleInfo.HandleMax++;
    *pHandle = s_struHandleInfo.pItemHead[Cnt].Handle;
    (HI_VOID)JPGVCOS_sem_post(&s_struHandleInfo.semLock);

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGFMW_Handle_Free
* Description:   release handle
* Input:         Handle    
* Output:        
* Return:        
* Others:        internal interface
******************************************************************************/
HI_VOID JPGFMW_Handle_Free(JPG_HANDLE Handle)
{
    HI_U32 Cnt;

	if(0 == s_struHandleInfo.Count)
	{
		return;
	}
	
    (HI_VOID)JPGVCOS_sem_wait(&s_struHandleInfo.semLock);

    Cnt = 0;
    jpg_assert((s_struHandleInfo.Count <= JPGFMW_HANDLE_EVERYMALLOC_NUM),
                (HI_VOID)JPGVCOS_sem_post(&s_struHandleInfo.semLock);return );
    while (Cnt < s_struHandleInfo.Count)
    {
        if ((Handle == s_struHandleInfo.pItemHead[Cnt].Handle)
            && (HI_TRUE == s_struHandleInfo.pItemHead[Cnt].UsedFlag))
        {
            break;
        }
        Cnt++;
    }

    if (Cnt != s_struHandleInfo.Count)
    {
        s_struHandleInfo.pItemHead[Cnt].Handle = 0;
        s_struHandleInfo.pItemHead[Cnt].UsedFlag = HI_FALSE;
    }

    (HI_VOID)JPGVCOS_sem_post(&s_struHandleInfo.semLock);
    return;
}

/******************************************************************************
* Function:      JPGFMW_Handle_GetInstance
* Description:   get the relevant instace address
* Input:         Handle    
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID* JPGFMW_Handle_GetInstance(JPG_HANDLE Handle)
{
    HI_U32 Cnt;

	if(0 == s_struHandleInfo.Count)
	{
		return HI_NULL;
	}
	
    (HI_VOID)JPGVCOS_sem_wait(&s_struHandleInfo.semLock);

    Cnt = 0;
    jpg_assert((s_struHandleInfo.Count <= JPGFMW_HANDLE_EVERYMALLOC_NUM),
                (HI_VOID)JPGVCOS_sem_post(&s_struHandleInfo.semLock);return NULL);
    while ((Cnt < s_struHandleInfo.Count)
           && ((Handle != s_struHandleInfo.pItemHead[Cnt].Handle)
           || ((Handle == s_struHandleInfo.pItemHead[Cnt].Handle)
           && (HI_FALSE == s_struHandleInfo.pItemHead[Cnt].UsedFlag))))
    {
        Cnt++;
    }

    if (Cnt == s_struHandleInfo.Count)
    {
        (HI_VOID)JPGVCOS_sem_post(&s_struHandleInfo.semLock);
        return HI_NULL;
    }
    (HI_VOID)JPGVCOS_sem_post(&s_struHandleInfo.semLock);

    return s_struHandleInfo.pItemHead[Cnt].pInstance;
}

#ifdef __cplusplus
#if __cplusplus
}
#endif  /* __cplusplus */
#endif  /* __cplusplus */

