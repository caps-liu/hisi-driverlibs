/***********************************************************************************
*              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName:
* Description: TianLai internal audio dac hal 
*
* History:
* Version   Date         Author         DefectNum    Description
* main\1    2012-11-06   AudioGroup     NULL         Create this file.
***********************************************************************************/
#ifndef __AUD_ADE_HAL_H__
#define __AUD_ADE_HAL_H__


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#include "hi_type.h"
#include "hi_audsp_ade.h"

/***************************************************************************
Description:
    define const varible
***************************************************************************/

/***************************************************************************
Description:
    define emum varible
***************************************************************************/

/*****************************************************************************
 Description  : ADE API
*****************************************************************************/
typedef struct
{
    HI_U32   u32BufAddr;         
    HI_U32   u32BufSize;
    HI_U32   u32Wpos;
    HI_U32   u32Rpos;
    HI_U32   u32PtsLastReadPos;   /* pts read pos */
    HI_U32   u32PtsBoundary;      /* pts read pointers wrap point */
    HI_BOOL  bEosFlag;
} HAL_ADE_INBUF_ATTR_S;

typedef struct
{
    HI_U32   u32BufAddr;         
    HI_U32   u32BufSize;
    HI_U32   u32Wpos;
    HI_U32   u32Rpos;
    HI_U32   u32PeriodNumber;   
    HI_U32   u32PeriodBufSize;
    HI_U32   u32UnitHeadSize;
} HAL_ADE_OUTPUTBUF_ATTR_S;

typedef struct
{
    HI_U32   u32MsgPoolAddr;         
    HI_U32   u32MsgPoolSize;
} HAL_ADE_MSGPOOL_ATTR_S;

typedef struct
{
    HI_U32        u32PtsWritePos;
    HI_U32        u32WritePos;
    HI_U32        u32ReadPos;
} HAL_ADE_SYNC_INPUTBUF_S;

HI_VOID ADE_HAL_Init(HI_U32 u32AdeRegBase);
HI_VOID ADE_HAL_DeInit(HI_VOID);

HI_VOID	ADE_HAL_SetMsgPoolAttr(HI_HANDLE hHandle, HAL_ADE_MSGPOOL_ATTR_S *pstAttr);

HI_S32	ADE_HAL_SendCmd(HI_HANDLE hHandle, ADE_CMD_E enCmd);
HI_S32	ADE_HAL_CheckCmdDone(HI_HANDLE hHandle);
HI_S32	ADE_HAL_SendAndAckCmd(HI_HANDLE hHandle, ADE_CMD_E enCmd);

HI_VOID ADE_HAL_SetInputBufAttr(HI_HANDLE hHandle, HAL_ADE_INBUF_ATTR_S* pstAttr);
HI_VOID ADE_HAL_GetInputBufAttr(HI_HANDLE hHandle, HAL_ADE_INBUF_ATTR_S* pstAttr);
HI_VOID ADE_HAL_SyncInputBuf(HI_HANDLE hHandle, HI_U32 u32WritePos, HI_U32* pu32ReadPos);
HI_VOID ADE_HAL_GetInputBufPtsReadPos(HI_HANDLE hHandle, HI_U32* pu32ReadPos);
HI_VOID ADE_HAL_SetInputBufEosFlag(HI_HANDLE hHandle, HI_BOOL bEnable);

HI_VOID ADE_HAL_SetOutputBufAttr(HI_HANDLE hHandle, HAL_ADE_OUTPUTBUF_ATTR_S* pstAttr);
HI_VOID ADE_HAL_GetOutputBufAttr(HI_HANDLE hHandle, HAL_ADE_OUTPUTBUF_ATTR_S* pstAttr);
HI_VOID ADE_HAL_GetOutPutBufWptrAndRptr(HI_HANDLE hHandle, HI_U32 *pu32WritePos, HI_U32 *pu32ReadPos);
HI_VOID ADE_HAL_SetOutPutBufWptr(HI_HANDLE hHandle, HI_U32 u32WritePos);
HI_VOID ADE_HAL_SetOutPutBufRptr(HI_HANDLE hHandle, HI_U32 u32ReadPos);


#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __AUD_ADE_HAL_H__ */
