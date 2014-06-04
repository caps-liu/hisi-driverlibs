/*******************************************************************************
 *              Copyright 2006 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: hi_jpg_buf.c
 * Description:
 *
 * History:
 * Version   Date             Author    DefectNum    Description
 * main\1    2008-04-09       z53517    HI_NULL      Create this file.
 ******************************************************************************/

#include "jpg_fmwcomm.h"
#include "jpg_buf.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif /* __cplusplus */
#endif  /* __cplusplus */

#if 0
#define JPGBUF_ASSERT(Wh, Rh, Rt, u32BufLen, Action) \
    do {\
        if (!(((Wh >= Rh) && (Rh >= Rt)) \
              || ((Rh >= Rt) && (Rt >= Wh)) \
              || ((Rt >= Wh) && (Wh >= Rh))))\
        {  Action;  } \
        if (!((Wh >= 0) && (Wh < u32BufLen) \
              && (Rh >= 0) && (Rh < u32BufLen) \
              && (Rt >= 0) && (Rt < u32BufLen)))\
        {  Action; } \
    } while (0)

#else
/** revist by yanjianqing, because the u32 dataes are all >=0 ***/
#define JPGBUF_ASSERT1(Wh, Rh, Rt, u32BufLen, Action) \
    do {\
        if (!(((Wh >= Rh) && (Rh >= Rt)) \
              || ((Rh >= Rt) && (Rt >= Wh)) \
              || ((Rt >= Wh) && (Wh >= Rh))))\
        {  Action;  } \
        if (!((Wh < u32BufLen) \
                && (Rh < u32BufLen) \
                && (Rt < u32BufLen)))\
        {  Action; } \
    } while (0)

#endif

#if 0
 #define JPGBUF_PRINT(pstCB) \
    do {\
        HIJPEG_TRACE("pBase    \t%#x\n", pstCB->pBase); \
        HIJPEG_TRACE("u32BufLen\t%d\n", pstCB->u32BufLen); \
        HIJPEG_TRACE("u32RsvByte\t%d\n", pstCB->u32RsvByte); \
        HIJPEG_TRACE("u32RdHead\t%d\n", pstCB->u32RdHead); \
        HIJPEG_TRACE("u32RdTail\t%d\n", pstCB->u32RdTail); \
        HIJPEG_TRACE("u32WrHead\t%d\n", pstCB->u32WrHead); \
    } while (0)
#endif

/******************************************************************************
* Function:      JPGBUF_Init
* Description:   init buf
* Input:         pVirtAddr
                 BufLen
                 u32RsvByte
* Output:        ppstCB
* Return:        HI_SUCCESS:
* Others:

******************************************************************************/
HI_S32 JPGBUF_Init(JPG_CYCLEBUF_S* pstCB, HI_VOID* pVirtAddr,
                   HI_U32 u32BufLen, HI_U32 u32RsvByte)
{
    jpg_assert((NULL != pstCB), return HI_FAILURE);
    jpg_assert(((NULL != pVirtAddr)
                && (u32BufLen > 0) && (u32RsvByte > 0)
                && (u32BufLen > u32RsvByte)),
               return HI_FAILURE);

    pstCB->pBase = pVirtAddr;
    pstCB->u32BufLen  = u32BufLen;
    pstCB->u32RsvByte = u32RsvByte;

    pstCB->u32RdHead = 0;
    pstCB->u32RdTail = 0;
    pstCB->u32WrHead = 0;

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGBUF_Reset
* Description:   clear BUF
* Input:         pstCB
* Return:
* Others:
******************************************************************************/
HI_VOID  JPGBUF_Reset(JPG_CYCLEBUF_S* pstCB)
{
    jpg_assert((NULL != pstCB), return );

    pstCB->u32RdHead = 0;
    pstCB->u32RdTail = 0;
    pstCB->u32WrHead = 0;

    return;
}

/******************************************************************************
* Function:      JPGBUF_Read
* Description:
* Input:         pstCB
                 pVirtDst
                 u32RdLen
* Output:
* Return:
* Others:
******************************************************************************/
HI_S32   JPGBUF_Read(const JPG_CYCLEBUF_S* pstCB, HI_VOID* pVirtDst, HI_U32 u32RdLen)
{
    JPGBUF_DATA_S stData;

    jpg_assert((NULL != pstCB), return HI_FAILURE);
    jpg_assert(((NULL != pstCB) && (u32RdLen >= 2)), return HI_FAILURE);

    JPGBUF_ASSERT1(pstCB->u32WrHead, pstCB->u32RdHead,
                  pstCB->u32RdTail, pstCB->u32BufLen,
                  return HI_FAILURE);

    /*get data size*/
    (HI_VOID)JPGBUF_GetDataBtwWhRh(pstCB, &stData);
    if ((stData.u32Len[0] + stData.u32Len[1]) < u32RdLen)
    {
        return HI_ERR_JPG_WANT_STREAM;
    }

    /*read*/
    if (u32RdLen > 2)
    {
        if (u32RdLen <= stData.u32Len[0])
        {
            JPGVCOS_memcpy(pVirtDst, stData.pAddr[0], u32RdLen);
        }
        else  /*(u32RdLen > stData.u32Len[0])*/
        {
            JPGVCOS_memcpy(pVirtDst, stData.pAddr[0], stData.u32Len[0]);
            JPGVCOS_memcpy((HI_U8*)pVirtDst + stData.u32Len[0],
                           stData.pAddr[1], u32RdLen - stData.u32Len[0]);
        }
    }
    else
    {
        HI_U8*  pu8Src = (HI_U8*)stData.pAddr[0];
        HI_U8*  pu8Dst = (HI_U8*)pVirtDst;

        *pu8Dst++ = *pu8Src;
        if (pu8Src == (HI_U8*)pstCB->pBase + (pstCB->u32BufLen - 1))
        {
            pu8Src = (HI_U8*)pstCB->pBase;
        }
        else
        {
            pu8Src++;
        }

        *pu8Dst = *pu8Src;
    }

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGBUF_Write
* Description:
* Input:         pstCB
*                pVirtSrc
                 u32WrLen
* Output:
* Return:
* Others:
******************************************************************************/
HI_S32 JPGBUF_Write(JPG_CYCLEBUF_S* pstCB, HI_VOID* pVirtSrc, HI_U32 u32WrLen)
{
    JPGBUF_DATA_S stWrInfo;
    HI_U32 freeLen;
    HI_U8*          pu8Addr;

    jpg_assert((NULL != pstCB) && (NULL != pVirtSrc), return HI_FAILURE);

    if (u32WrLen == 0)
    {
        return HI_SUCCESS;
    }

    JPGBUF_ASSERT1(pstCB->u32WrHead, pstCB->u32RdHead,
                  pstCB->u32RdTail, pstCB->u32BufLen,
                  return HI_FAILURE);

    freeLen = JPGBUF_GetFreeLen(pstCB);

    if (freeLen < u32WrLen)
    {
        return HI_ERR_JPG_NO_MEM;
    }

    if ((pstCB->u32WrHead + u32WrLen) >= pstCB->u32BufLen)
    {
        stWrInfo.pAddr[0]  = (HI_U8*)pstCB->pBase + pstCB->u32WrHead;
        stWrInfo.u32Len[0] = pstCB->u32BufLen - pstCB->u32WrHead;
        stWrInfo.pAddr[1]  = pstCB->pBase;
        stWrInfo.u32Len[1] = u32WrLen - stWrInfo.u32Len[0];
        pstCB->u32WrHead = stWrInfo.u32Len[1];
    }
    else
    {
        stWrInfo.pAddr[0]  = (HI_U8*)pstCB->pBase + pstCB->u32WrHead;
        stWrInfo.u32Len[0] = u32WrLen;
        stWrInfo.pAddr[1]  = (HI_U8*)stWrInfo.pAddr[0] + u32WrLen;
        stWrInfo.u32Len[1] = 0;
        pstCB->u32WrHead += u32WrLen;

        if (pstCB->u32WrHead >= pstCB->u32BufLen)
        {
            pstCB->u32WrHead = 0;
        }
    }

    pu8Addr = (HI_U8*)pVirtSrc;
    JPGVCOS_memcpy(stWrInfo.pAddr[0], pu8Addr, stWrInfo.u32Len[0]);
    if (0 != stWrInfo.u32Len[1])
    {
        pu8Addr += stWrInfo.u32Len[0];
        JPGVCOS_memcpy(stWrInfo.pAddr[1], pu8Addr, stWrInfo.u32Len[1]);
    }

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGBUF_StepRdHead
* Description:
* Input:         pstCB
                 u32AlignLen
* Output:
* Return:
* Others:
******************************************************************************/
HI_VOID   JPGBUF_StepRdHead(JPG_CYCLEBUF_S* pstCB)
{
    jpg_assert((NULL != pstCB), return );

    pstCB->u32RdHead = pstCB->u32WrHead;

    return;
}

/******************************************************************************
* Function:      JPGBUF_StepRdTail
* Description:
* Input:         pstCB
*                pRead
* Output:
* Return:
* Others:
******************************************************************************/
HI_VOID   JPGBUF_StepRdTail(JPG_CYCLEBUF_S* pstCB)
{
    jpg_assert((NULL != pstCB), return );

    pstCB->u32RdTail = pstCB->u32RdHead;

    return;
}

/******************************************************************************
* Function:      JPGBUF_SetRdHead
* Description:
* Input:         pstCB
*                u32Len
* Output:
* Return:
* Others:
******************************************************************************/
HI_VOID  JPGBUF_SetRdHead(JPG_CYCLEBUF_S* pstCB, HI_S32 Len)
{
    HI_S32 s32RdHead;

    jpg_assert((NULL != pstCB), return );

    s32RdHead = (HI_S32)pstCB->u32RdHead + Len;

    //pCB->u32RdHead += Len;

    if (s32RdHead >= (HI_S32)pstCB->u32BufLen)
    {
        s32RdHead -= (HI_S32)pstCB->u32BufLen;
    }

    if (s32RdHead < 0)
    {
        s32RdHead += (HI_S32)pstCB->u32BufLen;
    }

    pstCB->u32RdHead = (HI_U32)s32RdHead;
    return;
}

/******************************************************************************
* Function:      JPGBUF_SetWrHead
* Description:
* Input:         pstCB
* Output:        Len
* Return:
* Others:
******************************************************************************/
HI_VOID  JPGBUF_SetWrHead(JPG_CYCLEBUF_S* pstCB, HI_U32 Len)
{
    HI_U32 u32WrHead;

    jpg_assert((NULL != pstCB), return );

    u32WrHead = pstCB->u32WrHead + Len;
    if (u32WrHead >= pstCB->u32BufLen)
    {
        u32WrHead -= pstCB->u32BufLen;
    }

    pstCB->u32WrHead = u32WrHead;
    return;
}

/******************************************************************************
* Function:      JPGBUF_GetFreeLen
* Description:
* Input:         pstCB
* Output:
* Return:
* Others:
******************************************************************************/
HI_U32 JPGBUF_GetFreeLen(const JPG_CYCLEBUF_S* pstCB)
{
    HI_U32 u32FreeLen;

    jpg_assert((NULL != pstCB), return 0);

    /*if rewind?*/
    if (pstCB->u32WrHead >= pstCB->u32RdTail)
    {
        u32FreeLen = (pstCB->u32BufLen - pstCB->u32RsvByte)
                     - (pstCB->u32WrHead - pstCB->u32RdTail);
    }
    else
    {
        u32FreeLen = (pstCB->u32RdTail - pstCB->u32WrHead) - pstCB->u32RsvByte;
    }

    return u32FreeLen;
}

/******************************************************************************
* Function:      JPGBUF_GetDataBtwRhRt
* Description:
* Input:          pstCB
* Output:        pRdInfo
* Return:
* Others:
******************************************************************************/
HI_S32   JPGBUF_GetDataBtwRhRt(const JPG_CYCLEBUF_S* pstCB, JPGBUF_DATA_S *pRdInfo)
{
    jpg_assert((NULL != pstCB) && (NULL != pRdInfo), return HI_FAILURE);

    JPGBUF_ASSERT1(pstCB->u32WrHead, pstCB->u32RdHead,
                  pstCB->u32RdTail, pstCB->u32BufLen,
                  return HI_FAILURE);

    /*calc address and length*/
    if (pstCB->u32RdHead >= pstCB->u32RdTail)
    {
        pRdInfo->pAddr[0]  = (HI_U8*)pstCB->pBase + pstCB->u32RdTail;
        pRdInfo->u32Len[0] = pstCB->u32RdHead - pstCB->u32RdTail;
        pRdInfo->pAddr[1]  = (HI_U8*)pRdInfo->pAddr[0] + pRdInfo->u32Len[0];
        pRdInfo->u32Len[1] = 0;
    }
    else
    {
        pRdInfo->pAddr[0]  = (HI_U8*)pstCB->pBase + pstCB->u32RdTail;
        pRdInfo->u32Len[0] = pstCB->u32BufLen - pstCB->u32RdTail;
        pRdInfo->pAddr[1]  = pstCB->pBase;
        pRdInfo->u32Len[1] = pstCB->u32RdHead;
    }

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGBUF_GetDataBtwWhRh
* Description:
* Input:         pstCB
* Output:        pstData
* Return:
* Others:
******************************************************************************/
HI_S32   JPGBUF_GetDataBtwWhRh(const JPG_CYCLEBUF_S* pstCB, JPGBUF_DATA_S *pstData)
{
    jpg_assert((NULL != pstCB) && (NULL != pstData), return HI_FAILURE);

    JPGBUF_ASSERT1(pstCB->u32WrHead, pstCB->u32RdHead,
                  pstCB->u32RdTail, pstCB->u32BufLen,
                  return HI_FAILURE);

    /*calc address and length*/
    if (pstCB->u32WrHead >= pstCB->u32RdHead)
    {
        pstData->pAddr[0]  = (HI_U8*)pstCB->pBase + pstCB->u32RdHead;
        pstData->u32Len[0] = pstCB->u32WrHead - pstCB->u32RdHead;
        pstData->pAddr[1]  = (HI_U8*)pstData->pAddr[0] + pstData->u32Len[0];
        pstData->u32Len[1] = 0;

        jpg_assert((pstData->u32Len[0] < pstCB->u32BufLen), return HI_FAILURE);
    }
    else
    {
        pstData->pAddr[0]  = (HI_U8*)pstCB->pBase + pstCB->u32RdHead;
        pstData->u32Len[0] = pstCB->u32BufLen - pstCB->u32RdHead;
        pstData->pAddr[1]  = pstCB->pBase;
        pstData->u32Len[1] = pstCB->u32WrHead;
    }

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGBUF_GetDataBtwWhRt
* Description:
* Input:         pstCB
* Output:        pstData
* Return:
* Others:
******************************************************************************/
HI_S32   JPGBUF_GetDataBtwWhRt(const JPG_CYCLEBUF_S* pstCB, JPGBUF_DATA_S *pstData)
{
    jpg_assert((NULL != pstCB) && (NULL != pstData), return HI_FAILURE);

    JPGBUF_ASSERT1(pstCB->u32WrHead, pstCB->u32RdHead,
                  pstCB->u32RdTail, pstCB->u32BufLen,
                  return HI_FAILURE);

    /*calc address and length*/

    if (pstCB->u32WrHead >= pstCB->u32RdTail)
    {
        pstData->pAddr[0]  = (HI_U8*)pstCB->pBase + pstCB->u32RdTail;
        pstData->u32Len[0] = pstCB->u32WrHead - pstCB->u32RdTail;
        pstData->pAddr[1]  = (HI_U8*)pstData->pAddr[0] + pstData->u32Len[0];
        pstData->u32Len[1] = 0;
        jpg_assert((pstData->u32Len[0] < pstCB->u32BufLen), return HI_FAILURE);
    }
    else
    {
        pstData->pAddr[0]  = (HI_U8*)pstCB->pBase + pstCB->u32RdTail;
        pstData->u32Len[0] = pstCB->u32BufLen - pstCB->u32RdTail;
        pstData->pAddr[1]  = pstCB->pBase;
        pstData->u32Len[1] = pstCB->u32WrHead;
    }

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGBUF_GetBufInfo
* Description:
* Input:         pstCB
* Output:        pBase
*                pBufLen
* Return:
* Others:
******************************************************************************/
HI_S32 JPGBUF_GetBufInfo(const JPG_CYCLEBUF_S* pstCB, HI_VOID** pBase,
                         HI_U32* pBufLen)
{
    jpg_assert((NULL != pstCB) && (NULL != pBase) && (NULL != pBufLen),
               return HI_FAILURE);

    *pBufLen = pstCB->u32BufLen;
    *pBase = pstCB->pBase;
    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGBUF_GetFreeInfo
* Description:
* Input:         pstCB
* Output:        pFreeBuf
*                pFreeLen
* Return:
* Others:
******************************************************************************/
HI_S32 JPGBUF_GetFreeInfo(const JPG_CYCLEBUF_S* pstCB, HI_VOID** pFreeBuf,
                          HI_U32* pFreeLen)
{
    HI_U32 u32FreeLen;

    jpg_assert((NULL != pstCB) && (NULL != pFreeBuf) && (NULL != pFreeLen),
               return HI_FAILURE);

    /*if rewind?*/
    if (pstCB->u32WrHead >= pstCB->u32RdTail)

    {
        /*calc address and length*/
        u32FreeLen = pstCB->u32BufLen - pstCB->u32WrHead;
        if (pstCB->u32RdTail == 0)
        {
            u32FreeLen -= pstCB->u32RsvByte;
        }
    }
    else
    {
        /*calc address and length*/
        u32FreeLen = (pstCB->u32RdTail - pstCB->u32WrHead) - pstCB->u32RsvByte;
    }

    *pFreeBuf = (HI_U8*)pstCB->pBase + pstCB->u32WrHead;
    *pFreeLen = u32FreeLen;
    return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif /* __cplusplus */
#endif  /* __cplusplus */
