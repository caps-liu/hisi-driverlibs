/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_pvr_intf.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2008/04/10
  Description   : INTERFACE module
  History       :
  1.Date        : 2008/04/10
    Author      : q46153
    Modification: Created file

******************************************************************************/
#include <pthread.h>
#include "hi_common.h"
#include "hi_pvr_priv.h"

#include "pvr_debug.h"
#include "hi_pvr_debug.h"
#include "hi_pvr_play_ctrl.h"
#include "hi_pvr_rec_ctrl.h"
#include "hi_pvr_index.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

#define PVR_MAX_EVENT_NUM (PVR_REC_MAX_CHN_NUM + PVR_REC_START_NUM)

typedef struct hiPVR_EVENT_CONTEXT_S
{
    HI_UNF_PVR_EVENT_E  enEventType;
    HI_U32              u32ChnId;
    HI_S32              s32EventValue;
}PVR_EVENT_CONTEXT_S;
/* callback function array                                                  */
static eventCallBack g_callBacks[HI_UNF_PVR_EVENT_BUTT];
static HI_VOID *g_callBackArgs[HI_UNF_PVR_EVENT_BUTT]; /* as parameter deliver it to callback  AI7D02612 */

static HI_BOOL   g_bPvrEventRunning = HI_FALSE;
static HI_S32    g_s32PvrEventInitTimes = 0;
static pthread_t g_threadPvrEvent;

/* 0: PLAY, 1~2: REC */
static volatile PVR_EVENT_CONTEXT_S g_stPvrEventTodo[PVR_MAX_EVENT_NUM];

/**
   report event to user about PVR event
*/
STATIC HI_VOID* PVRIntfEventRoutine(HI_VOID *args)
{
    HI_U32              i;
    HI_U32              eventDone;
    HI_UNF_PVR_EVENT_E  enEventType;

    while (HI_FALSE != g_bPvrEventRunning)
    {
        eventDone = 0;
        for (i = 0; i < PVR_MAX_EVENT_NUM; i++)
        {
            enEventType = g_stPvrEventTodo[i].enEventType;
            if (g_stPvrEventTodo[i].enEventType != HI_UNF_PVR_EVENT_BUTT)
            {
                HI_INFO_PVR("PVR: get a event: chn:%d, type:%#x, value:%#x\n",
                    g_stPvrEventTodo[i].u32ChnId,
                    enEventType,
                    g_stPvrEventTodo[i].s32EventValue);

                if (g_callBacks[enEventType])
                {
                    eventDone++;
                    g_callBacks[enEventType](g_stPvrEventTodo[i].u32ChnId, enEventType,
                                             g_stPvrEventTodo[i].s32EventValue,
                                             g_callBackArgs[enEventType]); /*as parameter deliver it to callback */
                }
                g_stPvrEventTodo[i].enEventType = HI_UNF_PVR_EVENT_BUTT;
            }
        }

        if (0 == eventDone)
        {
            usleep(20000);
        }
    }

    return NULL;
}


HI_S32 PVRIntfInitEvent(HI_VOID)
{
    HI_U32          i;
    //pthread_attr_t  ThreadAttr;

    g_s32PvrEventInitTimes++;

    if (1 == g_s32PvrEventInitTimes)
    {
        HI_INFO_PVR("PVR: ===========> Event init.\n");

        for (i = 0; i < HI_UNF_PVR_EVENT_BUTT; i++)
        {
            g_callBacks[i] = HI_NULL;
            g_callBackArgs[i] = HI_NULL;
        }

        for (i = 0; i < PVR_MAX_EVENT_NUM; i++)
        {
            g_stPvrEventTodo[i].enEventType = HI_UNF_PVR_EVENT_BUTT;
            g_stPvrEventTodo[i].u32ChnId    = 0;
            g_stPvrEventTodo[i].s32EventValue = 0;
        }

        //pthread_attr_init(&ThreadAttr);
        //pthread_attr_setdetachstate(&ThreadAttr, PTHREAD_CREATE_DETACHED);
        g_bPvrEventRunning = HI_TRUE;
        //if(pthread_create(&g_threadPvrEvent, &ThreadAttr, PVRIntfEventRoutine, NULL))
        if(pthread_create(&g_threadPvrEvent, NULL, PVRIntfEventRoutine, NULL))
        {
            HI_ERR_PVR("PVR: can NOT Create thread for Event process.\n");
            return HI_ERR_PVR_NOT_INIT;
        }

        HI_INFO_PVR("PVR: ===========> Event init OK.\n");
    }

    return HI_SUCCESS;
}

HI_VOID PVRIntfDeInitEvent(HI_VOID)
{
    HI_U32      i;

    g_s32PvrEventInitTimes--;

    if (g_s32PvrEventInitTimes <= 0)
    {
        for (i = 0; i < PVR_MAX_EVENT_NUM; i++)
        {
            g_stPvrEventTodo[i].enEventType = HI_UNF_PVR_EVENT_BUTT;
            g_stPvrEventTodo[i].u32ChnId    = 0;
            g_stPvrEventTodo[i].s32EventValue = 0;
        }

        g_bPvrEventRunning = HI_FALSE;
        pthread_join(g_threadPvrEvent, NULL);
    }

    return ;
}

/*****************************************************************************
 Prototype       : HI_PVR_RegisterEvent
 Description     : register callback functions for event
 Input           : EventType  **
                   callBack   **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_RegisterEvent(HI_UNF_PVR_EVENT_E enEventType, eventCallBack callBack, HI_VOID *args)
{
    if (HI_NULL == callBack)
    {
        HI_ERR_PVR("callback function is NULL.\n");
        return HI_ERR_PVR_NUL_PTR;
    }

    if (enEventType >= HI_UNF_PVR_EVENT_BUTT)
    {
        HI_ERR_PVR("invalid event type:%d.\n", enEventType);
        return HI_ERR_PVR_INTF_EVENT_INVAL;
    }

    if (HI_NULL != g_callBacks[enEventType])
    {
        HI_ERR_PVR("already register callback for this event:%d.\n", enEventType);
        return HI_ERR_PVR_ALREADY;
    }
    else
    {
        g_callBacks[enEventType] = callBack;
        g_callBackArgs[enEventType] = args;

        return HI_SUCCESS;
    }
}

/*****************************************************************************
 Prototype       : HI_PVR_UnRegisterEvent
 Description     : register callback functions for event
 Input           : EventType  **
                   callBack   **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_UnRegisterEvent(HI_UNF_PVR_EVENT_E enEventType)
{
    switch ( enEventType )
    {
        case HI_UNF_PVR_EVENT_PLAY_EOF      :
        case HI_UNF_PVR_EVENT_PLAY_SOF      :
        case HI_UNF_PVR_EVENT_PLAY_ERROR    :
        case HI_UNF_PVR_EVENT_PLAY_REACH_REC:
        case HI_UNF_PVR_EVENT_PLAY_RESV     :
        case HI_UNF_PVR_EVENT_REC_DISKFULL  :
        case HI_UNF_PVR_EVENT_REC_ERROR     :
        case HI_UNF_PVR_EVENT_REC_OVER_FIX  :
        case HI_UNF_PVR_EVENT_REC_REACH_PLAY:
        case HI_UNF_PVR_EVENT_REC_DISK_SLOW :
        case HI_UNF_PVR_EVENT_REC_RESV      :
            break;
        default:
            return HI_ERR_PVR_INTF_EVENT_INVAL;
    }

    if (!g_callBacks[enEventType])
    {
        HI_ERR_PVR("Not register event yet.\n");
        return HI_ERR_PVR_INTF_EVENT_NOREG;
    }
    else
    {
        g_callBacks[enEventType] = NULL;
        g_callBackArgs[enEventType] = NULL;

        return HI_SUCCESS;
    }
}

HI_VOID HI_PVR_ConfigDebugInfo(HI_LOG_LEVEL_E enDebugLevel)
{
    HI_SYS_SetLogLevel(HI_ID_PVR, enDebugLevel);
    return;
}

/*****************************************************************************
 Prototype       : HI_PVR_DoEvent
 Description     : the interface, inner module supply envent
 Input           : chn        **channel for suppling event
                   EventType  **event type
                   value      ** the additional parameters for event
 Output          : None
 Return Value    :
 Global Variable
    Read Only    : g_struPvrCallBacks
    Read & Write :
  History
  1.Date         : 2008/4/21
    Author       : quyaxin 46153
    Modification : Created function

*****************************************************************************/
HI_VOID PVR_Intf_DoEventCallback(HI_U32 u32ChnID, HI_UNF_PVR_EVENT_E enEventType, HI_S32 s32EnvetValue)
{
    HI_S32 retry = 0;

    /* discard the repeat event*/
    if ((enEventType == g_stPvrEventTodo[u32ChnID].enEventType)
        && (s32EnvetValue == g_stPvrEventTodo[u32ChnID].s32EventValue))
    {
        return ;
    }
    /*
    */

    while (retry < 10) /* send just only one msg in the same channel */
    {
        if (HI_UNF_PVR_EVENT_BUTT == g_stPvrEventTodo[u32ChnID].enEventType)
        {
            g_stPvrEventTodo[u32ChnID].u32ChnId = u32ChnID;
            g_stPvrEventTodo[u32ChnID].enEventType = enEventType;
            g_stPvrEventTodo[u32ChnID].s32EventValue = s32EnvetValue;
            break;
        }
        else
        {
            usleep(20000);
            retry++;
        }
    }

    if (retry >= 10)
    {
        HI_ERR_PVR("PVR: lost event: chn:%d, type:%#x(Old:%#x), value:%#x\n",u32ChnID, enEventType, g_stPvrEventTodo[u32ChnID].enEventType, s32EnvetValue);
    }

    return ;
}

HI_S32 HI_PVR_CreateIdxFile(HI_U8* pstTsFileName, HI_U8* pstIdxFileName, HI_UNF_PVR_GEN_IDX_ATTR_S* pAttr)
{
    HI_ERR_PVR("Not support this api yet.\n");
    return HI_ERR_PVR_NOT_SUPPORT;
}

HI_VOID HI_PVR_RemoveFile(const HI_CHAR *pFileName)
{
    HI_CHAR  idxFileName[PVR_MAX_FILENAME_LEN + 5];

    if (pFileName == NULL)
    {
        HI_ERR_PVR("param pFileName is NULL\n");
        return;
    }

    if (strlen(pFileName) >= PVR_MAX_FILENAME_LEN)
    {
        HI_ERR_PVR("file name length too large! must < %d.\n", PVR_MAX_FILENAME_LEN);
        return;
    }
    PVR_REMOVE_FILE64(pFileName);
    snprintf(idxFileName, sizeof(idxFileName),"%s.idx", pFileName);
    remove(idxFileName);
}

HI_S32 HI_PVR_RegisterExtraCallback(HI_U32 u32ChnID, HI_UNF_PVR_EXTRA_CALLBACK_E eExtraCallbackType, ExtraCallBack fCallback, HI_VOID *args)
{
    if(HI_UNF_PVR_EXTRA_READ_CALLBACK == eExtraCallbackType)
    {
        return  HI_PVR_PlayRegisterReadCallBack(u32ChnID, (ExtraCallBack)fCallback);
    }
    else if(HI_UNF_PVR_EXTRA_WRITE_CALLBACK == eExtraCallbackType)
    {
        return  HI_PVR_RecRegisterWriteCallBack(u32ChnID, (ExtraCallBack)fCallback);
    }
    else
    {
        HI_ERR_PVR("invalid callback type!\n");
    }

    return HI_FAILURE;
}

HI_S32 HI_PVR_UnRegisterExtraCallBack(HI_U32 u32ChnID, HI_UNF_PVR_EXTRA_CALLBACK_E eExtraCallbackType)
{
    if(HI_UNF_PVR_EXTRA_READ_CALLBACK == eExtraCallbackType)
    {
        return  HI_PVR_PlayUnRegisterReadCallBack(u32ChnID);
    }
    else if(HI_UNF_PVR_EXTRA_WRITE_CALLBACK == eExtraCallbackType)
    {
        return  HI_PVR_RecUnRegisterWriteCallBack(u32ChnID);
    }
    else
    {
        HI_ERR_PVR("invalid callback type!\n");
    }

    return HI_FAILURE;
}

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

