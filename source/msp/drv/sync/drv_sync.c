/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : avplay_intf.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/21
  Description   :
  History       :
  1.Date        : 2009/12/21
    Author      : w58735
    Modification: Created file

*******************************************************************************/
#include <linux/vmalloc.h>
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/mm.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/system.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/sched.h>

#include "hi_drv_stat.h"

#include "hi_drv_ao.h"
#include "drv_sync.h"


#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

extern SYNC_GLOBAL_STATE_S  g_SyncGlobalState;

HI_U32 SYNC_GetSysTime(HI_VOID)
{
    HI_U64   SysTime;

    SysTime = sched_clock();

    do_div(SysTime, 1000000);

    return (HI_U32)SysTime;
}

HI_U32 SYNC_GetSysTimeCost(HI_U32 LastSysTime)
{
    HI_U32   CrtSysTime;
    HI_U32   Delta;

    CrtSysTime = SYNC_GetSysTime();

    if (CrtSysTime > LastSysTime)
    {
        Delta = CrtSysTime - LastSysTime;
    }
    else
    {
        Delta = (SYS_TIME_MAX - LastSysTime) + 1 + CrtSysTime;
    }

    return Delta;
}


HI_U32 SYNC_GetLocalTime(SYNC_S *pSync, SYNC_CHAN_E enChn)
{
    HI_U32        CrtLocaltime = -1;    
    HI_U32        CostSysTime;

    if (SYNC_STATUS_TPLAY == pSync->CrtStatus)
    {
        return -1;
    }

    if (SYNC_CHAN_AUD == enChn)
    {
        if (!pSync->AudLocalTimeFlag)
        {
            return -1;
        }

        CostSysTime = SYNC_GetSysTimeCost(pSync->AudLastSysTime);

        CrtLocaltime = pSync->AudLastLocalTime + CostSysTime;
    }
    else if (SYNC_CHAN_VID == enChn)
    {
        if (!pSync->VidLocalTimeFlag)
        {
            return -1;
        }

        CostSysTime = SYNC_GetSysTimeCost(pSync->VidLastSysTime);

        CrtLocaltime = pSync->VidLastLocalTime + CostSysTime;
    }
    else if (SYNC_CHAN_PCR == enChn)
    {
        if(((!pSync->PcrSyncInfo.PcrFirstCome)
            && (SYNC_SCR_ADJUST_BUTT == pSync->PcrSyncInfo.enPcrAdjust)))
        {
            return -1;
        }

        if (!pSync->PcrSyncInfo.PcrLocalTimeFlag)
        {
            return -1;
        }
        
        CostSysTime = SYNC_GetSysTimeCost(pSync->PcrSyncInfo.PcrLastSysTime);

        CrtLocaltime = pSync->PcrSyncInfo.PcrLastLocalTime + CostSysTime;
    }

#ifdef HI_AVPLAY_SCR_SUPPORT    
    else if (SYNC_CHAN_SCR == enChn)
    {
        if( !pSync->ScrInitFlag)
        {
            return -1;
        }
        
        CostSysTime = SYNC_GetSysTimeCost(pSync->ScrLastSysTime);
        
        CrtLocaltime = pSync->ScrLastLocalTime + CostSysTime;
    }
#endif

    if (CrtLocaltime > PCR_TIME_MAX)
    {    
        CrtLocaltime -= PCR_TIME_MAX;
    }

    return CrtLocaltime;
}

HI_VOID SYNC_SetLocalTime(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_U32 LocalTime)
{
    if (SYNC_CHAN_AUD == enChn)
    {
        pSync->AudLastSysTime = SYNC_GetSysTime();

        pSync->AudLastLocalTime = LocalTime;

        pSync->AudLocalTimeFlag = HI_TRUE;
    }
    else if (SYNC_CHAN_VID == enChn)
    {
        pSync->VidLastSysTime = SYNC_GetSysTime();

        pSync->VidLastLocalTime = LocalTime;

        pSync->VidLocalTimeFlag = HI_TRUE;
    }
    else if (SYNC_CHAN_PCR == enChn)
    {
        pSync->PcrSyncInfo.PcrLastSysTime = SYNC_GetSysTime();

        pSync->PcrSyncInfo.PcrLastLocalTime = LocalTime;

        pSync->PcrSyncInfo.PcrLocalTimeFlag = HI_TRUE;
    }
#ifdef HI_AVPLAY_SCR_SUPPORT  
    else if (SYNC_CHAN_SCR == enChn)
    {
        pSync->ScrLastSysTime = SYNC_GetSysTime();

        pSync->ScrLastLocalTime = LocalTime;
    }
#endif

    return;
}

HI_BOOL SYNC_VerifyHandle(HI_HANDLE hSync)
{
    if ((hSync == -1) || ((hSync & 0xff) >= SYNC_MAX_NUM))
    {
        HI_ERR_SYNC("%s: hSync == -1 or hSync&0xff >= 16 !\n", __FUNCTION__);
        return HI_FALSE;
    }

    if (HI_NULL == g_SyncGlobalState.SyncInfo[hSync & 0xff].pSync)
    {            
        HI_ERR_SYNC("this is invalid handle.\n");
        return HI_FALSE;            
    }

    return HI_TRUE;
}

HI_S32 SYNC_StartSync(HI_U32 SyncId)
{
    SYNC_S  *pSync;

    pSync = g_SyncGlobalState.SyncInfo[SyncId].pSync;

    pSync->PreSyncStartSysTime = SYNC_GetSysTime();

    pSync->PcrSyncInfo.PcrSyncStartSysTime =  pSync->PreSyncStartSysTime ;

    /* if timeout of presync is zero or sync adjust is disabled, disable presync*/
    if ((!pSync->SyncAttr.u32PreSyncTimeoutMs)
      ||(HI_UNF_SYNC_REF_NONE == pSync->SyncAttr.enSyncRef)
       )
    {
        pSync->PreSyncEndSysTime = pSync->PreSyncStartSysTime;
        pSync->PreSyncFinish = HI_TRUE;
        pSync->BufFundFinish = HI_TRUE;
    }

    /* no sync,then no buffund and audio resync*/
    if (HI_UNF_SYNC_REF_NONE == pSync->SyncAttr.enSyncRef)
    {
        //pSync->BufFundFinish = HI_TRUE;
        pSync->AudReSync = HI_FALSE;
        pSync->AudReBufFund = HI_FALSE;
    }

    return HI_SUCCESS;
}

HI_S32 SYNC_PauseSync(HI_U32 SyncId)
{
    SYNC_S  *pSync;

    pSync = g_SyncGlobalState.SyncInfo[SyncId].pSync;

    pSync->PcrSyncInfo.PcrPauseLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_PCR);
    pSync->AudPauseLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_AUD);
    pSync->VidPauseLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_VID);
#ifdef HI_AVPLAY_SCR_SUPPORT    
    pSync->ScrPauseLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_SCR);
#endif    
    return HI_SUCCESS;
}

HI_S32 SYNC_ResumeSync(HI_U32 SyncId)
{
    SYNC_S  *pSync;

    pSync = g_SyncGlobalState.SyncInfo[SyncId].pSync;

    /* if resume after reset, the local time won't be reset */
    if (pSync->PcrSyncInfo.PcrPauseLocalTime != -1)
    {
        SYNC_SetLocalTime(pSync, SYNC_CHAN_PCR, pSync->PcrSyncInfo.PcrPauseLocalTime);
    }

    if (pSync->AudPauseLocalTime != -1)
    {
        SYNC_SetLocalTime(pSync, SYNC_CHAN_AUD, pSync->AudPauseLocalTime);
    }

    if (pSync->VidPauseLocalTime != -1)
    {
        SYNC_SetLocalTime(pSync, SYNC_CHAN_VID, pSync->VidPauseLocalTime);
    }
#ifdef HI_AVPLAY_SCR_SUPPORT   
    if (pSync->ScrPauseLocalTime != -1)
    {
        SYNC_SetLocalTime(pSync, SYNC_CHAN_SCR, pSync->ScrPauseLocalTime);
    }
#endif  
    return HI_SUCCESS;
}


HI_S32 SYNC_GetTime(HI_U32 SyncId, HI_U32 *pLocalTime, HI_U32 *pPlayTime)
{
    SYNC_S      *pSync;
    HI_U32      AudLocalTime;
    HI_U32      VidLocalTime;
    HI_U32      PcrLocalTime;

    pSync = g_SyncGlobalState.SyncInfo[SyncId].pSync;

    if (SYNC_STATUS_PAUSE == pSync->CrtStatus)
    {
        AudLocalTime = pSync->AudPauseLocalTime;
        VidLocalTime = pSync->VidPauseLocalTime;
        PcrLocalTime = pSync->PcrSyncInfo.PcrPauseLocalTime;
    }
    else
    {
        AudLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_AUD);
        VidLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_VID);
        PcrLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_PCR);
    }

    if (AudLocalTime <= PCR_TIME_MAX)
    {
        *pLocalTime = AudLocalTime;
        *pPlayTime = AudLocalTime - pSync->AudFirstPts;
    }
    else if (VidLocalTime <= PCR_TIME_MAX)
    {
        *pLocalTime = VidLocalTime;
        *pPlayTime = VidLocalTime - pSync->VidFirstPts;
    }
    else if(PcrLocalTime <= PCR_TIME_MAX)
    {
        *pLocalTime = PcrLocalTime;
        *pPlayTime = PcrLocalTime - pSync->PcrSyncInfo.PcrFirst;
    }
    else
    {
        *pLocalTime = -1;
        *pPlayTime = 0;
    }
    
    return HI_SUCCESS;
}

HI_VOID SYNC_CalcDiffTime(SYNC_S *pSync, SYNC_CHAN_E enChn)
{
    HI_U32             CurSysTime;
    HI_U32             PcrLocalTime;
    HI_U32             AudLocalTime;
    HI_U32             VidLocalTime;
    HI_S32             AudPcrDiff;
    HI_S32             VidPcrDiff;
    HI_S32             VidAudDiff;
    HI_S32             DefaultDiff;

    HI_U32             ScrLocalTime;
    HI_S32             AudScrDiff;
    HI_S32             VidScrDiff;

    CurSysTime = SYNC_GetSysTime();
    
    PcrLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_PCR);
    AudLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_AUD);
    VidLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_VID);
    ScrLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_SCR);

    DefaultDiff = (pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime + pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime) / 2;
    
    AudPcrDiff = AudLocalTime - PcrLocalTime + pSync->SyncAttr.s32AudPtsAdjust;        
    VidPcrDiff = VidLocalTime - PcrLocalTime + pSync->SyncAttr.s32VidPtsAdjust;
    VidAudDiff = VidLocalTime - AudLocalTime + pSync->SyncAttr.s32VidPtsAdjust - pSync->SyncAttr.s32AudPtsAdjust;        

    AudScrDiff = AudLocalTime - ScrLocalTime + pSync->SyncAttr.s32AudPtsAdjust;    
    VidScrDiff = VidLocalTime - ScrLocalTime + pSync->SyncAttr.s32VidPtsAdjust;

    if(HI_UNF_SYNC_REF_PCR == pSync->SyncAttr.enSyncRef)
    {
        if (SYNC_AUD_ADJUST_SCR != pSync->PcrSyncInfo.enPcrAdjust)
        {
            if ((-1 == PcrLocalTime) ||  (-1 == AudLocalTime) ||  (-1 == VidLocalTime))
            {
                AudPcrDiff = 0;
                VidPcrDiff = 0;
                VidAudDiff = 0;
            }
        }
        else
        {
            if ((-1 == AudLocalTime) || (-1 == VidLocalTime))
            {
                VidAudDiff = DefaultDiff;
            }
        }
    }
    else if(HI_UNF_SYNC_REF_AUDIO== pSync->SyncAttr.enSyncRef)
    {
        if ((-1 == AudLocalTime) || (-1 == VidLocalTime))
        {
            VidAudDiff = DefaultDiff;
        }
    }
    else if(HI_UNF_SYNC_REF_SCR== pSync->SyncAttr.enSyncRef) 
    {
        if (-1 == ScrLocalTime)
        {
            VidScrDiff = DefaultDiff;
            AudScrDiff = DefaultDiff;
        }    
    }

    if(-1 != ScrLocalTime)
    {
        SYNC_SetLocalTime(pSync, SYNC_CHAN_SCR, ScrLocalTime);
    }
    
    /* if AudScrDiff and VidScrDiff are both too large, we reinit scr */
    if ((abs(AudScrDiff) > SCR_DISCARD_THRESHOLD) && (abs(VidScrDiff) > SCR_DISCARD_THRESHOLD)
       )
    {
        pSync->ScrInitFlag = HI_FALSE;
    }

    HI_INFO_VSYNC(enChn, "SysTime %d Aud LastSysTime %d Aud LocatTime %d Aud LstPts %d, Aud LstBufTime %3d Vid LocatTime %d Vid LstPts %d VidAudDiff %d\n",
                      CurSysTime,pSync->AudLastSysTime,AudLocalTime, pSync->AudLastPts, pSync->AudLastBufTime,VidLocalTime, pSync->VidLastPts, VidAudDiff);

    HI_INFO_ASYNC(enChn, "SysTime %d Aud LastSysTime %d Aud LocatTime %d Aud LstPts %d, Aud LstBufTime %3d Vid LocatTime %d Vid LstPts %d VidAudDiff %d\n",
    CurSysTime,pSync->AudLastSysTime,AudLocalTime, pSync->AudLastPts, pSync->AudLastBufTime,VidLocalTime, pSync->VidLastPts, VidAudDiff);

    if(HI_UNF_SYNC_REF_PCR == pSync->SyncAttr.enSyncRef)
    {
        HI_INFO_VSYNC(enChn, ">>>>PcrLocalTime %d  AudPcrDiff %d VidPcrDiff %d VidAudDiff %d\n",
                          PcrLocalTime, AudPcrDiff, VidPcrDiff, VidAudDiff);
    }

#ifdef HI_AVPLAY_SCR_SUPPORT
    if(HI_UNF_SYNC_REF_SCR == pSync->SyncAttr.enSyncRef)
    {
        HI_INFO_VSYNC(enChn, "ScrLocalTime %d  AudScrDiff %d VidScrDiff %d VidAudDiff %d\n",
                          ScrLocalTime, AudScrDiff, VidScrDiff, VidAudDiff);
    }
#endif

    pSync->PcrSyncInfo.LastAudPcrDiff = pSync->PcrSyncInfo.AudPcrDiff;
    pSync->PcrSyncInfo.LastVidPcrDiff = pSync->PcrSyncInfo.VidPcrDiff;
    pSync->PcrSyncInfo.AudPcrDiff = AudPcrDiff;
    pSync->PcrSyncInfo.VidPcrDiff = VidPcrDiff;

    pSync->LastVidAudDiff = pSync->VidAudDiff;
    pSync->VidAudDiff = VidAudDiff;
    
    pSync->AudScrDiff = AudScrDiff;
    pSync->VidScrDiff = VidScrDiff;

    return;
}

HI_VOID SYNC_PreSyncTargetInit(SYNC_S *pSync, SYNC_CHAN_E enChn)
{
    if ((SYNC_CHAN_VID == enChn) && (!pSync->VidPreSyncTargetInit))
    {
        if (-1 == pSync->VidInfo.Pts)
        {
            HI_INFO_VSYNC(SYNC_CHAN_VID, "PreSync VidFrame SrcPts = -1\n");
            pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;

            return;
        }
        else
        {
            pSync->VidPreSyncTargetTime = pSync->VidInfo.Pts;
            pSync->VidPreSyncTargetInit = HI_TRUE;
        }
    }

    if ((SYNC_CHAN_AUD == enChn) && (!pSync->AudPreSyncTargetInit))
    {
        if (-1 == pSync->AudInfo.Pts)
        {
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "PreSync AudFrame SrcPts = -1\n");
            pSync->AudOpt.SyncProc = SYNC_PROC_DISCARD;

            return;
        }
        else
        {
            pSync->AudPreSyncTargetTime = pSync->AudInfo.Pts;
            pSync->AudPreSyncTargetInit = HI_TRUE;
        }
    }
    
    if (pSync->VidPreSyncTargetInit && pSync->AudPreSyncTargetInit)
    {
        if (pSync->VidPreSyncTargetTime > pSync->AudPreSyncTargetTime)
        {
            pSync->PreSyncTarget = SYNC_CHAN_VID;
            pSync->PreSyncTargetTime = pSync->VidPreSyncTargetTime;
        }
        else
        {
            pSync->PreSyncTarget = SYNC_CHAN_AUD;
            pSync->PreSyncTargetTime = pSync->AudPreSyncTargetTime;
        }
        
        pSync->PreSyncTargetInit = HI_TRUE;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "PreSync Target Init %d Vid pts %d Aud pts %d\n", pSync->PreSyncTarget, pSync->VidPreSyncTargetTime, pSync->AudPreSyncTargetTime);
        HI_INFO_VSYNC(SYNC_CHAN_VID, "PreSync Target Init %d Vid pts %d Aud pts %d\n", pSync->PreSyncTarget, pSync->VidPreSyncTargetTime, pSync->AudPreSyncTargetTime);
    }
    else
    {
        if (SYNC_CHAN_VID == enChn)
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
            //HI_INFO_VSYNC(SYNC_CHAN_VID, "PreSync Target UnInit AudPreSyncTargetInit %d VidPreSyncTargetInit %d\n", pSync->AudPreSyncTargetInit, pSync->VidPreSyncTargetInit);            
        }
        else if(SYNC_CHAN_AUD == enChn)
        {
            pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT;            
            //HI_INFO_ASYNC(SYNC_CHAN_AUD, "PreSync Target UnInit AudPreSyncTargetInit %d VidPreSyncTargetInit %d\n", pSync->AudPreSyncTargetInit, pSync->VidPreSyncTargetInit);            
        }

        return;
    }

    return;
}

HI_BOOL SYNC_CheckPcrTimeout(SYNC_S *pSync)
{
    HI_U32      PcrCostSysTime;
    PcrCostSysTime = SYNC_GetSysTimeCost(pSync->PcrSyncInfo.PcrSyncStartSysTime);
    return (PcrCostSysTime >= PCR_TIMEOUTMS) ? HI_TRUE : HI_FALSE;
}


HI_BOOL SYNC_CheckAudTimeout(SYNC_S *pSync)
{
    HI_U32      AudCostSysTime;
    AudCostSysTime = SYNC_GetSysTimeCost(pSync->PcrSyncInfo.PcrSyncStartSysTime);
    return (AudCostSysTime >= AUD_TIMEOUTMS) ? HI_TRUE : HI_FALSE;
}



HI_VOID SYNC_PreSync(SYNC_S *pSync, SYNC_CHAN_E enChn)
{
    HI_U32      CostSysTime;
    HI_S32      VidAudDiff; 
    HI_S32      AudPcrDiff;
    HI_S32      VidPcrDiff;
    HI_U32      PcrLocalTime;

    CostSysTime = SYNC_GetSysTimeCost(pSync->PreSyncStartSysTime);

    /* do not do presync if video or audio is disable */
    if ( (!pSync->AudEnable) || (!pSync->VidEnable) )
    {
        pSync->PreSyncEndSysTime = SYNC_GetSysTime();
        pSync->PreSyncFinish = HI_TRUE;
        pSync->VidOpt.SyncProc = SYNC_PROC_CONTINUE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;

        HI_DRV_STAT_Event(STAT_EVENT_PRESYNC,0);

        return;        
    }

    /* presync timeout*/
    if (CostSysTime >= pSync->SyncAttr.u32PreSyncTimeoutMs)
    {
        pSync->PreSyncEndSysTime = SYNC_GetSysTime();
        pSync->PreSyncFinish = HI_TRUE;
        pSync->VidOpt.SyncProc = SYNC_PROC_CONTINUE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "PreSync TimeOut %d AudBufTime %d AudFrameNum %d VidDelayTime %d\n", CostSysTime, pSync->AudInfo.BufTime, pSync->AudInfo.FrameNum, pSync->VidInfo.DelayTime);
        HI_INFO_VSYNC(SYNC_CHAN_VID, "PreSync TimeOut %d AudBufTime %d AudFrameNum %d VidDelayTime %d\n", CostSysTime, pSync->AudInfo.BufTime, pSync->AudInfo.FrameNum, pSync->VidInfo.DelayTime);
        HI_DRV_STAT_Event(STAT_EVENT_PRESYNC,0);

        return;
    }

    /* video buffer or audio buffer will be blocked*/
    if ((SYNC_BUF_STATE_HIGH == pSync->CrtBufStatus.VidBufState) 
        || (SYNC_BUF_STATE_HIGH == pSync->CrtBufStatus.AudBufState)
        )
    {
        pSync->PreSyncEndSysTime = SYNC_GetSysTime();
        pSync->PreSyncFinish = HI_TRUE;
        pSync->VidOpt.SyncProc = SYNC_PROC_CONTINUE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "PreSync BufBlock Aud %d Vid %d\n", pSync->CrtBufStatus.AudBufState, pSync->CrtBufStatus.VidBufState);
        HI_INFO_VSYNC(SYNC_CHAN_VID, "PreSync BufBlock Aud %d Vid %d\n", pSync->CrtBufStatus.AudBufState, pSync->CrtBufStatus.VidBufState);
        HI_DRV_STAT_Event(STAT_EVENT_PRESYNC,1);
        
        return;
    }

    /* prepare presync target*/
    if (!pSync->PreSyncTargetInit)
    {
        SYNC_PreSyncTargetInit(pSync, enChn);

        /* presync target is not ready*/
        if (!pSync->PreSyncTargetInit)
        {
            return;
        }
    }

    if (enChn == pSync->PreSyncTarget)
    {
        if (SYNC_CHAN_VID == enChn)
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
            VidAudDiff = pSync->VidPreSyncTargetTime - pSync->AudInfo.Pts;
            pSync->VidAudDiff = VidAudDiff;
        }
        else
        {
            pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT;
            VidAudDiff = pSync->VidInfo.Pts - pSync->AudPreSyncTargetTime;
            pSync->VidAudDiff = VidAudDiff;
        }
    }
    else
    {
        /* audio wait for video*/
        if (SYNC_CHAN_VID == enChn)
        {
            VidAudDiff = pSync->VidInfo.Pts - pSync->AudPreSyncTargetTime;
            pSync->VidAudDiff = VidAudDiff;
        
            /* the difference between video and audio is too large*/
            if (VidAudDiff < (-VID_LAG_DISCARD_THRESHOLD))
            {
                pSync->PreSyncEndSysTime = SYNC_GetSysTime();
                pSync->PreSyncFinish = HI_TRUE;
                pSync->VidOpt.SyncProc = SYNC_PROC_CONTINUE;
                HI_INFO_VSYNC(SYNC_CHAN_VID, "PreSync Giveup VidAudDiff %d > VID_LAG_DISCARD_THRESHOLD %d\n", VidAudDiff,VID_LAG_DISCARD_THRESHOLD);
                HI_DRV_STAT_Event(STAT_EVENT_PRESYNC,0);                
            }
            else
            {
                HI_S32 MaxWinDelay;

                if (pSync->VidInfo.DispRate == 0)
                {
                    MaxWinDelay = 40;
                }
                else
                {
                    MaxWinDelay = 2 * 1000 * 100 / pSync->VidInfo.DispRate;
                }
                
                if (VidAudDiff >= pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime + MaxWinDelay)
                {
                    pSync->PreSyncEndSysTime = SYNC_GetSysTime();
                    pSync->PreSyncFinish = HI_TRUE;
  
                    if (HI_UNF_SYNC_REF_PCR == pSync->SyncAttr.enSyncRef)
                    {
                        if (SYNC_PCR_ADJUST_SCR == pSync->PcrSyncInfo.enPcrAdjust)
                        {
                            PcrLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_PCR);
                                     
                            AudPcrDiff = pSync->AudPreSyncTargetTime - PcrLocalTime;
                            VidPcrDiff = pSync->VidInfo.Pts - PcrLocalTime;
                            
                             //adjust pcr to this one which is more behind
                             pSync->PcrSyncInfo.PcrDelta += (VidAudDiff > 0) ? AudPcrDiff : VidPcrDiff;
                            
                             HI_INFO_SYNC("adjust pcr, PcrDelta %d\n", pSync->PcrSyncInfo.PcrDelta);      
                         }
                         else
                         {
                             pSync->PcrSyncInfo.enPcrAdjust = SYNC_AUD_ADJUST_SCR;    //pcr timeout or pcr doesn't come
                         }
                    }

                    pSync->VidOpt.SyncProc = SYNC_PROC_CONTINUE;
                    HI_INFO_ASYNC(SYNC_CHAN_AUD, "PreSync Ok VidAudDiff %d\n", VidAudDiff);
                    HI_INFO_VSYNC(SYNC_CHAN_VID, "PreSync Ok VidAudDiff %d\n", VidAudDiff);
                    HI_DRV_STAT_Event(STAT_EVENT_PRESYNC,0);
                }
                else
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
                }
            }
        }
        /* video wait for audio*/
        else
        {
            VidAudDiff = pSync->VidPreSyncTargetTime - pSync->AudInfo.Pts;
            pSync->VidAudDiff = VidAudDiff;
            
            /* the difference between video and audio is too large*/
            if (VidAudDiff > VID_LEAD_DISCARD_THRESHOLD)
            {
                pSync->PreSyncEndSysTime = SYNC_GetSysTime();
                pSync->PreSyncFinish = HI_TRUE;
                pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;
                HI_INFO_ASYNC(SYNC_CHAN_AUD, "PreSync VidAudDiff %d > u32PreSyncTimeoutMs %d\n", VidAudDiff, pSync->SyncAttr.u32PreSyncTimeoutMs);
                HI_INFO_VSYNC(SYNC_CHAN_VID, "PreSync VidAudDiff %d > u32PreSyncTimeoutMs %d\n", VidAudDiff, pSync->SyncAttr.u32PreSyncTimeoutMs);                
                HI_DRV_STAT_Event(STAT_EVENT_PRESYNC,0);                
            }
            else
            {
                if (VidAudDiff <= pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime)
                {
                    pSync->PreSyncEndSysTime = SYNC_GetSysTime();
                    pSync->PreSyncFinish = HI_TRUE;

                    if (HI_UNF_SYNC_REF_PCR == pSync->SyncAttr.enSyncRef)
                    {
                        if (SYNC_PCR_ADJUST_SCR == pSync->PcrSyncInfo.enPcrAdjust)
                        {
                            PcrLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_PCR);
                                     
                            AudPcrDiff = pSync->AudPreSyncTargetTime - PcrLocalTime;
                            VidPcrDiff = pSync->VidInfo.Pts - PcrLocalTime;
                            
                             //adjust pcr to this one which is more behind
                             pSync->PcrSyncInfo.PcrDelta += (VidAudDiff > 0) ? AudPcrDiff : VidPcrDiff;
                            
                             HI_INFO_SYNC("adjust pcr, PcrDelta %d\n", pSync->PcrSyncInfo.PcrDelta);      
                         }
                         else
                         {
                             pSync->PcrSyncInfo.enPcrAdjust = SYNC_AUD_ADJUST_SCR;    //pcr timeout or pcr doesn't come
                         }
                    }

                    pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;
                    HI_INFO_ASYNC(SYNC_CHAN_AUD, "PreSync Ok VidAudDiff %d\n", VidAudDiff);
                    HI_INFO_VSYNC(SYNC_CHAN_VID, "PreSync Ok VidAudDiff %d\n", VidAudDiff);
                    HI_DRV_STAT_Event(STAT_EVENT_PRESYNC,0);
                }
                else
                {
                    pSync->AudOpt.SyncProc = SYNC_PROC_DISCARD;
                }
            }
        }
    }

    return;
}

HI_VOID SYNC_BufFund(SYNC_S *pSync)
{
    HI_U32        CostSysTime;

    CostSysTime = SYNC_GetSysTimeCost(pSync->PreSyncEndSysTime);

    /* cumulation timeout */
    if (CostSysTime > BUF_FUND_TIMEOUT)
    {
        pSync->BufFundEndSysTime = SYNC_GetSysTime();
        pSync->BufFundFinish = HI_TRUE;
        pSync->VidOpt.SyncProc = SYNC_PROC_CONTINUE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;

        HI_DRV_STAT_Event(STAT_EVENT_BUFREADY,2);
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "BufFund TimeOut %d AudBufTime %d AudFrameNum %d VidDelayTime %d\n", CostSysTime, pSync->AudInfo.BufTime, pSync->AudInfo.FrameNum, pSync->VidInfo.DelayTime);
        HI_INFO_VSYNC(SYNC_CHAN_VID, "BufFund TimeOut %d AudBufTime %d AudFrameNum %d VidDelayTime %d\n", CostSysTime, pSync->AudInfo.BufTime, pSync->AudInfo.FrameNum, pSync->VidInfo.DelayTime);
            
        return;
    }

    /* video or audio buffer will be blocked*/
    if ((SYNC_BUF_STATE_HIGH == pSync->CrtBufStatus.VidBufState) 
        || (SYNC_BUF_STATE_HIGH == pSync->CrtBufStatus.AudBufState)
        )
    {
        pSync->BufFundEndSysTime = SYNC_GetSysTime();
        pSync->BufFundFinish = HI_TRUE;
        pSync->VidOpt.SyncProc = SYNC_PROC_CONTINUE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;

        HI_DRV_STAT_Event(STAT_EVENT_BUFREADY,3);

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "BufFund BufBlock Aud %d Vid %d\n", pSync->CrtBufStatus.AudBufState, pSync->CrtBufStatus.VidBufState);
        HI_INFO_VSYNC(SYNC_CHAN_VID, "BufFund BufBlock Aud %d Vid %d\n", pSync->CrtBufStatus.AudBufState, pSync->CrtBufStatus.VidBufState);

        return;
    }

    if (pSync->VidEnable && pSync->AudEnable)
    {
        if (pSync->AudInfo.BufTime + pSync->AudInfo.FrameTime >= AO_TRACK_AIP_START_LATENCYMS)
        {
            pSync->BufFundEndSysTime = SYNC_GetSysTime();
            pSync->BufFundFinish = HI_TRUE;
            pSync->VidOpt.SyncProc = SYNC_PROC_CONTINUE;
            pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;

            HI_DRV_STAT_Event(STAT_EVENT_BUFREADY,1); 
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "BufFund Ok %d AudBufTime %d AudFrameNum %d VidDelayTime %d\n", CostSysTime, pSync->AudInfo.BufTime, pSync->AudInfo.FrameNum, pSync->VidInfo.DelayTime);
            HI_INFO_VSYNC(SYNC_CHAN_VID, "BufFund Ok %d AudBufTime %d AudFrameNum %d VidDelayTime %d\n", CostSysTime, pSync->AudInfo.BufTime, pSync->AudInfo.FrameNum, pSync->VidInfo.DelayTime);
        }
        else
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
            pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

            if (HI_UNF_SYNC_REF_PCR == pSync->SyncAttr.enSyncRef)
            {
                 if ((HI_FALSE == pSync->VidFirstCome) && (HI_FALSE== SYNC_CheckAudTimeout(pSync)))
                 {
                     pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT;
                 }
            }

            HI_INFO_ASYNC(SYNC_CHAN_AUD, "BufFund %d AudBufTime %d AudFrameNum %d VidDelayTime %d\n", CostSysTime, pSync->AudInfo.BufTime, pSync->AudInfo.FrameNum, pSync->VidInfo.DelayTime);
            HI_INFO_VSYNC(SYNC_CHAN_VID, "BufFund %d AudBufTime %d AudFrameNum %d VidDelayTime %d\n", CostSysTime, pSync->AudInfo.BufTime, pSync->AudInfo.FrameNum, pSync->VidInfo.DelayTime);
        }
    }
    else if (pSync->VidEnable && (!pSync->AudEnable))
    {

        pSync->BufFundEndSysTime = SYNC_GetSysTime();
        pSync->BufFundFinish = HI_TRUE;
        pSync->VidOpt.SyncProc = SYNC_PROC_CONTINUE;
        HI_DRV_STAT_Event(STAT_EVENT_BUFREADY,1);
        HI_INFO_VSYNC(SYNC_CHAN_VID, "BufFund Ok\n");
    }
    else if ((!pSync->VidEnable) && pSync->AudEnable)
    {
        if (pSync->AudInfo.BufTime + pSync->AudInfo.FrameTime >= AO_TRACK_AIP_START_LATENCYMS)        
        {
            pSync->BufFundEndSysTime = SYNC_GetSysTime();
            pSync->BufFundFinish = HI_TRUE;
            pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;
            HI_DRV_STAT_Event(STAT_EVENT_BUFREADY,1);
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "BufFund Ok\n");
        }
        else
        {
            pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
        }
    }

    return;
}

HI_VOID SYNC_AudReSync(SYNC_S *pSync)
{
    HI_U32             VidLocalTime;
    HI_S32             VidAudDiff;
    HI_U32               CostSysTime;

    CostSysTime = SYNC_GetSysTimeCost(pSync->PreSyncStartSysTime);

    /* resync timeout */
    if (CostSysTime >= AUD_RESYNC_TIMEOUT)
    {
        pSync->PreSyncEndSysTime = SYNC_GetSysTime();
        pSync->AudReSync = HI_FALSE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudReSync TimeOut %d BufTime %d FrameNum %d\n", CostSysTime, pSync->AudInfo.BufTime, pSync->AudInfo.FrameNum);
        return;
    }

    /* buffer blocked */
    if (SYNC_BUF_STATE_HIGH == pSync->CrtBufStatus.AudBufState)
    {
        pSync->PreSyncEndSysTime = SYNC_GetSysTime();
        pSync->AudReSync = HI_FALSE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudReSync BufBlock\n");      
        return;
    }

    /* discard the frame if pts is -1 */
    if (-1 == pSync->AudInfo.Pts)
    {
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudReSync AudFrame Pts = -1\n");
        pSync->AudOpt.SyncProc = SYNC_PROC_DISCARD;
        
        return;
    }

    VidLocalTime = SYNC_GetLocalTime(pSync, SYNC_CHAN_VID);

    VidAudDiff = VidLocalTime - pSync->AudInfo.Pts + AO_TRACK_AIP_START_LATENCYMS;

    /* The difference is too large */
    if (abs(VidAudDiff) > AUD_RESYNC_ADJUST_THRESHOLD)
    {
        pSync->AudReSync = HI_FALSE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudReSync VidAudDiff %d > AUD_RESYNC_ADJUST_THRESHOLD %d\n", VidAudDiff, AUD_RESYNC_ADJUST_THRESHOLD);
        return;
    }

    /*adjust into sync start range*/
    if ((VidAudDiff <= pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime)
      &&(VidAudDiff >= pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime)
      &&(abs(VidAudDiff) <= pSync->AudInfo.FrameTime)
       )
    {
        pSync->PreSyncEndSysTime = SYNC_GetSysTime();
        pSync->AudReSync = HI_FALSE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudReSync Ok VidAudDiff %d\n", VidAudDiff);

        return;
    }
    
    if (VidAudDiff > 0)
    {
        pSync->AudOpt.SyncProc = SYNC_PROC_DISCARD;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudReSync DISCARD VidAudDiff %d\n", VidAudDiff);
    }
    else
    {
        pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT;
        
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudReSync REPEAT VidAudDiff %d\n", VidAudDiff);
    }

    return;
}

HI_VOID SYNC_AudReBufFund(SYNC_S *pSync)
{
    HI_U32        CostSysTime;

    CostSysTime = SYNC_GetSysTimeCost(pSync->PreSyncEndSysTime);

    /* timeout*/
    if (CostSysTime > BUF_FUND_TIMEOUT)
    {
        pSync->AudReBufFund = HI_FALSE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudReBufFund TimeOut %d BufTime %d FrameNum %d\n", CostSysTime, pSync->AudInfo.BufTime, pSync->AudInfo.FrameNum);
        
        return;
    }

    /* buffer blocked */
    if (SYNC_BUF_STATE_HIGH == pSync->CrtBufStatus.AudBufState)
    {
        pSync->AudReBufFund = HI_FALSE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, ("AudReBufFund BufBlock\n"));
        
        return;
    }

    if (pSync->AudInfo.BufTime + pSync->AudInfo.FrameTime >= AO_TRACK_AIP_START_LATENCYMS)
    {
        pSync->AudReBufFund = HI_FALSE;
        pSync->AudOpt.SyncProc = SYNC_PROC_CONTINUE;
        HI_INFO_VSYNC(SYNC_CHAN_AUD, "AudReBufFund Ok\n");
    }
    else
    {
        pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
    }

    return;
}

HI_VOID SYNC_PcrSyncDiscardAud(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 VidAudDiff)
{
    pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_NORMAL;

    pSync->AudOpt.SyncProc = SYNC_PROC_DISCARD; 

    pSync->AudDiscardCnt++;

    HI_INFO_ASYNC(enChn, ">>>>AudPcrDiff %d , Vid Lead Aud %d, discard\n", pSync->PcrSyncInfo.AudPcrDiff, VidAudDiff);

    return;
}

HI_VOID SYNC_PcrSyncRepeatAud(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 VidAudDiff)
{
    pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

    if (SYNC_BUF_STATE_HIGH != pSync->CrtBufStatus.AudBufState)
    {
        #if 0
        if (SYNC_BUF_STATE_EMPTY == pSync->CrtBufStatus.AudBufState)
        {
             pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_MUTE_REPEAT; 
        }
        else
        {
            pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT; 
        }
        #else
        pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT; 
        #endif
        
        pSync->AudRepeatCnt++;
        HI_INFO_ASYNC(enChn, ">>>>AudPcrDiff %d , VidAudDiff: %d, Aud Repeat\n", pSync->PcrSyncInfo.AudPcrDiff, VidAudDiff);   
    }

    return;
}

HI_VOID SYNC_PcrSyncDiscardVid(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 VidAudDiff)
{
    /* abs(VidPcrDiff) and abs(AudPcrDiff) must be less than PCR_LAG_STOP_THRESHOLD = 100
        so abs(VidAudDiff) largest 2*PCR_LAG_STOP_THRESHOLD = 200*/
    if (pSync->SyncAttr.stSyncStartRegion.bSmoothPlay)
    {            
        /*discard one frame in every VID_SMOOTH_DISCARD_INTERVAL frame*/
        if (!(pSync->VidDisPlayCnt % VID_SMOOTH_DISCARD_INTERVAL))
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
            pSync->VidDiscardCnt++;
            HI_INFO_VSYNC(enChn, ">>>>VidPcrDiff %d, Vid Lag Aud %d Smooth, Discard\n", pSync->PcrSyncInfo.VidPcrDiff, VidAudDiff);
        }
        else
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

            HI_INFO_VSYNC(enChn, ">>>>VidPcrDiff %d, Vid Lag Aud %d Smooth, Play\n", pSync->PcrSyncInfo.VidPcrDiff, VidAudDiff);
        }

        if (SYNC_CHAN_VID == enChn)
        {
            pSync->VidDisPlayCnt++;
        }
    }
    else
    {
        /* discard time before vdec*/
        pSync->VidOpt.VdecDiscardTime = abs(VidAudDiff); //do what ? nouse
        pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
        pSync->VidDiscardCnt++;
        HI_INFO_VSYNC(enChn, ">>>>VidPcrDiff %d, Vid Lag Aud %d, Discard\n", pSync->PcrSyncInfo.VidPcrDiff, VidAudDiff);
    }
        
    return;
}

HI_VOID SYNC_PcrSyncRepeatVid(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 VidAudDiff)
{    
    /* there is space in video buffer */
    if (SYNC_BUF_STATE_HIGH != pSync->CrtBufStatus.VidBufState)
    {
        /* abs(VidPcrDiff) and abs(AudPcrDiff) must be less than PCR_LAG_STOP_THRESHOLD = 100
         so abs(VidAudDiff) largest 2*PCR_LAG_STOP_THRESHOLD = 200
        */
        {
            if (pSync->SyncAttr.stSyncStartRegion.bSmoothPlay || pSync->VidFirstPts == -1)
            {
                /*repeat one frame every VID_SMOOTH_REPEAT_INTERVAL frame*/
                if (!(pSync->VidRepPlayCnt % VID_SMOOTH_REPEAT_INTERVAL))
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
                    pSync->VidRepeatCnt++; 
                    HI_INFO_VSYNC(enChn, ">>>>VidPcrDiff %d, Vid Lead Aud %d Smooth, Repeat\n", pSync->PcrSyncInfo.VidPcrDiff, VidAudDiff);
                }
                else
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
    
                    HI_INFO_VSYNC(enChn, ">>>>VidPcrDiff %d, Vid Lead Aud %d Smooth, Play\n", pSync->PcrSyncInfo.VidPcrDiff, VidAudDiff);
                }
    
                if (SYNC_CHAN_VID == enChn)
                {
                    pSync->VidRepPlayCnt++;
                }
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
                pSync->VidRepeatCnt++;
                HI_INFO_VSYNC(enChn, ">>>>VidPcrDiff %d, Vid Lead Aud %d, Repeat\n", pSync->PcrSyncInfo.VidPcrDiff, VidAudDiff);
            }
        }
    }
    /* the video buffer reach high waterline*/
    else
    {
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

        HI_INFO_VSYNC(enChn, ">>>>VidPcrDiff %d, Vid Lead Pcr %d BufBlock, Play\n", pSync->PcrSyncInfo.VidPcrDiff, VidAudDiff);
    }
    
    return;
}

/* refer to pcr and audio is ahead of pcr*/
HI_VOID SYNC_PcrSyncAudLeadAdjust(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 AudPcrDiff)
{ 
    pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

    if (SYNC_BUF_STATE_HIGH != pSync->CrtBufStatus.AudBufState)
    {
        #if 0
        if (SYNC_BUF_STATE_EMPTY == pSync->CrtBufStatus.AudBufState)
        {
             pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_MUTE_REPEAT; 
        }
        else
        {
            pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT; 
        }
        #else
            pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT; 
        #endif
        pSync->AudRepeatCnt++;
        HI_INFO_ASYNC(enChn, ">>>>Pcr Lag Aud, AudPcrDiff %d, Aud Repeat\n", AudPcrDiff);   
    }

    return;
}

/* refer to pcr and audio is behind pcr*/
HI_VOID SYNC_PcrSyncAudLagAdjust(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 AudPcrDiff)
{ 
    pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_NORMAL;

    pSync->AudOpt.SyncProc = SYNC_PROC_DISCARD; 

    pSync->AudDiscardCnt++;
        
    HI_INFO_ASYNC(enChn, ">>>>Pcr Lead Aud %d, discard\n", AudPcrDiff);

    return;
}

/* refer to pcr and video is ahead of pcr*/
HI_VOID SYNC_PcrSyncVidLeadAdjust(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 VidPcrDiff)
{
    /* there is space in video buffer */
    if (SYNC_BUF_STATE_HIGH != pSync->CrtBufStatus.VidBufState)
    {
        if (VidPcrDiff > pSync->SyncAttr.stSyncNovelRegion.s32VidPlusTime)
        {
            if (pSync->SyncAttr.stSyncNovelRegion.bSmoothPlay || pSync->VidFirstPts == -1)
            {
                /* repeat one frame every VID_SMOOTH_REPEAT_INTERVAL frame*/
                if (!(pSync->VidRepPlayCnt % VID_SMOOTH_REPEAT_INTERVAL))
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
                    pSync->VidRepeatCnt++;
                    HI_INFO_VSYNC(enChn, ">>>>Pcr Lag Vid %d Smooth, Repeat\n", VidPcrDiff);
                }
                else
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
    
                    HI_INFO_VSYNC(enChn, ">>>>Pcr Lag Vid %d Smooth, Play\n", VidPcrDiff);
                }
    
                if (SYNC_CHAN_VID == enChn)
                {
                    pSync->VidRepPlayCnt++;
                }
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
                pSync->VidRepeatCnt++;
                HI_INFO_VSYNC(enChn, ">>>>Pcr Lag Vid %d, Repeat\n", VidPcrDiff);
            }
        }
        else
        {
            if (pSync->SyncAttr.stSyncStartRegion.bSmoothPlay || pSync->VidFirstPts == -1)
            {
                /*repeat one frame every VID_SMOOTH_REPEAT_INTERVAL frame*/
                if (!(pSync->VidRepPlayCnt % VID_SMOOTH_REPEAT_INTERVAL))
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
                    pSync->VidRepeatCnt++;
                    HI_INFO_VSYNC(enChn, ">>>>Pcr Lag Vid %d Smooth, Repeat\n", VidPcrDiff);
                }
                else
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
    
                    HI_INFO_VSYNC(enChn, ">>>>Pcr Lag Vid %d Smooth, Play\n", VidPcrDiff);
                }
    
                if (SYNC_CHAN_VID == enChn)
                {
                    pSync->VidRepPlayCnt++;
                }
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
                pSync->VidRepeatCnt++;
                HI_INFO_VSYNC(enChn, ">>>>Pcr Lag Vid %d, Repeat\n", VidPcrDiff);
            }
        }
    }
    /* the video buffer reach high waterline*/
    else
    {
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
    
        HI_INFO_VSYNC(enChn, ">>>>Pcr Lag Vid %d BufBlock, Play\n", VidPcrDiff);
    }
    
    return;
}

/* refer to pcr and video is behind pcr*/
HI_VOID SYNC_PcrSyncVidLagAdjust(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 VidPcrDiff)
{
    if (VidPcrDiff < pSync->SyncAttr.stSyncNovelRegion.s32VidNegativeTime)
    {
        if (pSync->SyncAttr.stSyncNovelRegion.bSmoothPlay)
        {            
            /*discard one frame in every VID_SMOOTH_DISCARD_INTERVAL frame*/
            if (!(pSync->VidDisPlayCnt % VID_SMOOTH_DISCARD_INTERVAL))
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
                pSync->VidDiscardCnt++;
                HI_INFO_VSYNC(enChn, ">>>>Pcr Lead Vid %d Smooth, Discard\n", VidPcrDiff);
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                HI_INFO_VSYNC(enChn, ">>>>Pcr Lead Vid %d Smooth, Play\n", VidPcrDiff);
            }
            
            if (SYNC_CHAN_VID == enChn)
            {
                pSync->VidDisPlayCnt++;
            }
        }
        else
        {
            /* discard time before vdec*/
            pSync->VidOpt.VdecDiscardTime = abs(VidPcrDiff); //do what ? nouse
            pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
            pSync->VidDiscardCnt++;
            HI_INFO_VSYNC(enChn, ">>>>Pcr Lead Vid %d, Discard\n", VidPcrDiff);
        }
    }
    else
    {
        if (pSync->SyncAttr.stSyncStartRegion.bSmoothPlay)
        {            
            /*discard one frame in every VID_SMOOTH_DISCARD_INTERVAL frame*/
            if (!(pSync->VidDisPlayCnt % VID_SMOOTH_DISCARD_INTERVAL))
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
                pSync->VidDiscardCnt++;
                HI_INFO_VSYNC(enChn, ">>>>Pcr Lead Vid %d Smooth, Discard\n", VidPcrDiff);
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                HI_INFO_VSYNC(enChn, ">>>>Pcr Lead Vid %d Smooth, Play\n", VidPcrDiff);
            }

            if (SYNC_CHAN_VID == enChn)
            {
                pSync->VidDisPlayCnt++;
            }
        }
        else
        {
            /* discard time before vdec*/
            pSync->VidOpt.VdecDiscardTime = abs(VidPcrDiff); //do what ? nouse
            pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
            pSync->VidDiscardCnt++;
            HI_INFO_VSYNC(enChn, ">>>>Pcr Lead Vid %d, Discard\n", VidPcrDiff);
        }
    }
        
    return;
}

/*adjust referring to pcr */
HI_VOID SYNC_PcrSyncAdjust(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 AudPcrDiff, HI_S32 VidPcrDiff)
{
    //adjust ok
    if ((pSync->VidAudDiff <= pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime)
      &&(pSync->VidAudDiff >= pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime)
      &&((AudPcrDiff <= PCR_LAG_ADJUST_THRESHOLD) && (AudPcrDiff >= (-PCR_LEAD_ADJUST_THRESHOLD)))
      &&((VidPcrDiff <= PCR_LAG_ADJUST_THRESHOLD) && (VidPcrDiff >= (-PCR_LEAD_ADJUST_THRESHOLD)))
      &&(abs(pSync->VidAudDiff) <= pSync->VidInfo.FrameTime)
        )
    {
        pSync->VidSyndAdjust = HI_FALSE;
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
        pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
        pSync->PcrSyncInfo.PcrVidSyncOK = HI_TRUE;
        pSync->PcrSyncInfo.PcrAudSyncOK = HI_TRUE;
     
        HI_INFO_SYNC(">>>>Pcr Sync OK. VidAudDiff %d, AudPcrDiff %d, VidPcrDiff %d, Play\n", 
                        pSync->VidAudDiff, AudPcrDiff, VidPcrDiff);

        return;
    }

    if(SYNC_CHAN_AUD == enChn)
    {
        /* already in the stop region, */
        if (abs(AudPcrDiff) < PCR_LAG_STOP_THRESHOLD)
        {
            /*vid already in stop region, goon to adjust aud to sync vidaud*/
            if(HI_TRUE == pSync->PcrSyncInfo.PcrVidSyncOK)
            {
                /* video is ahead of audio, discard aud*/
                if (pSync->VidAudDiff > 0)
                {
                    SYNC_PcrSyncDiscardAud(pSync, enChn, pSync->VidAudDiff);
                }
                /* video is behind audio, repeat aud*/
                else
                {
                    SYNC_PcrSyncRepeatAud(pSync, enChn, pSync->VidAudDiff);
                }
            }
            else
            { 
                pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
                pSync->PcrSyncInfo.PcrAudSyncOK = HI_TRUE;
            }

            return;
        }
        else
        {
            pSync->PcrSyncInfo.PcrAudSyncOK = HI_FALSE;
        }

        /* audio is ahead of pcr*/
        if (pSync->PcrSyncInfo.AudPcrDiff > 0)
        {
             SYNC_PcrSyncAudLeadAdjust(pSync, enChn, pSync->PcrSyncInfo.AudPcrDiff);
        }
        /* audio is behind pcr*/
        else
        {
             SYNC_PcrSyncAudLagAdjust(pSync, enChn, pSync->PcrSyncInfo.AudPcrDiff);
        }
    }
    else if (SYNC_CHAN_VID == enChn)
    { 
        /* already in the stop region, */
        if (abs(VidPcrDiff) < PCR_LAG_STOP_THRESHOLD)
        {
            /*aud already in stop region, goon to adjust vid to sync vidaud*/
            if (HI_TRUE == pSync->PcrSyncInfo.PcrAudSyncOK)
            {
                /* video is ahead of audio, repeat vid*/
                if (pSync->VidAudDiff > 0)
                {
                    SYNC_PcrSyncRepeatVid(pSync, enChn, pSync->VidAudDiff);
                }
                /* video is behind audio, discard vid*/
                else
                {
                    SYNC_PcrSyncDiscardVid(pSync, enChn, pSync->VidAudDiff);
                }
            }
            else
            { 
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
                pSync->PcrSyncInfo.PcrVidSyncOK = HI_TRUE; //aud and vid both possible to be HI_TRUE at the same time
            }

            return;
        }
        else
        {
            pSync->PcrSyncInfo.PcrVidSyncOK = HI_FALSE;
        }

        /* video is ahead of pcr*/
        if (pSync->PcrSyncInfo.VidPcrDiff > 0)
        {
            SYNC_PcrSyncVidLeadAdjust(pSync, enChn, pSync->PcrSyncInfo.VidPcrDiff);
        }
        /* video is behind pcr*/
        else
        {
            SYNC_PcrSyncVidLagAdjust(pSync, enChn, pSync->PcrSyncInfo.VidPcrDiff);
        }
    }
}

/* refer to audio and video is ahead of audio*/
HI_VOID SYNC_AudSyncVidLeadAdjust(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 VidAudDiff)
{
    if (VidAudDiff > pSync->SyncAttr.stSyncNovelRegion.s32VidPlusTime)
    {
        /* there is enough audio data in ao buffer */
        if ((pSync->AudInfo.BufTime >= (AO_PCM_DF_UNSTALL_THD_FRAMENUM * pSync->AudInfo.FrameTime))
          &&(pSync->AudInfo.FrameNum >= 10)
           )
        {
            // TODO: x57522  can we discard audio data when playing
            pSync->AudOpt.SyncProc = SYNC_PROC_DISCARD;

            HI_INFO_ASYNC(enChn, "Vid Lead Aud %d, Discard\n", VidAudDiff);
        }
    }
    else
    {
        pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
        pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_NORMAL;

        HI_INFO_ASYNC(enChn, "Vid Lead Aud %d, Play\n", VidAudDiff);
    }
    
    /* there is space in video buffer */
    // TODO: x57522 change VidBlockFlag to VidFullFlag
    if (SYNC_BUF_STATE_HIGH != pSync->CrtBufStatus.VidBufState)
    {
        if (VidAudDiff > pSync->SyncAttr.stSyncNovelRegion.s32VidPlusTime)
        {
            if (pSync->SyncAttr.stSyncNovelRegion.bSmoothPlay || pSync->VidFirstPts == HI_INVALID_PTS)
            {
                /* repeat one frame every VID_SMOOTH_REPEAT_INTERVAL frame*/
                if (!(pSync->VidRepPlayCnt % VID_SMOOTH_REPEAT_INTERVAL))
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
                    pSync->VidRepeatCnt++;
                    HI_INFO_VSYNC(enChn, "Vid Novel Lead Aud %d Smooth, Repeat\n", VidAudDiff);
                }
                else
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                    HI_INFO_VSYNC(enChn, "Vid Novel Lead Aud %d Smooth, Play\n", VidAudDiff);
                }

                if (SYNC_CHAN_VID == enChn)
                {
                    // TODO:x57522 usage of VidPlayCnt VidDiscardCnt VidRepeatCnt
                    pSync->VidRepPlayCnt++;
                }
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
                pSync->VidRepeatCnt++;
                HI_INFO_VSYNC(enChn, "Vid Novel Lead Aud %d, Repeat\n", VidAudDiff);
            }
        }
        else
        {
            if (pSync->SyncAttr.stSyncStartRegion.bSmoothPlay || pSync->VidFirstPts == HI_INVALID_PTS)
            {
                /*repeat one frame every VID_SMOOTH_REPEAT_INTERVAL frame*/
                if (!(pSync->VidRepPlayCnt % VID_SMOOTH_REPEAT_INTERVAL))
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
                    pSync->VidRepeatCnt++;
                    HI_INFO_VSYNC(enChn, "Vid Lead Aud %d Smooth, Repeat\n", VidAudDiff);
                }
                else
                {
                    pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                    HI_INFO_VSYNC(enChn, "Vid Lead Aud %d Smooth, Play\n", VidAudDiff);
                }

                if (SYNC_CHAN_VID == enChn)
                {
                    pSync->VidRepPlayCnt++;
                }
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;
                pSync->VidRepeatCnt++;
                HI_INFO_VSYNC(enChn, "Vid Lead Aud %d, Repeat\n", VidAudDiff);
            }
        }
    }
    /* the video buffer reach high waterline*/
    else
    {
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

        HI_INFO_VSYNC(enChn, "Vid Lead Aud %d BufBlock, Play\n", VidAudDiff);
    }

    return;
}

/* refer to audio and video is behind audio*/
HI_VOID SYNC_AudSyncVidLagAdjust(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 VidAudDiff)
{
    pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

    if(SYNC_BUF_STATE_EMPTY == pSync->CrtBufStatus.VidBufState)
    {
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
        
        if (SYNC_BUF_STATE_HIGH != pSync->CrtBufStatus.AudBufState)
        {
            pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_DOWN;
            HI_INFO_ASYNC(enChn, "Vid Buf Low, VidAudDiff: %d, Aud Speed Down\n", VidAudDiff);   
#if 0               
            if(pSync->VidAudDiff < -500)
            {      
                pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_MUTE_REPEAT;
                HI_INFO_ASYNC(enChn, "Vid Buf Low, VidAudDiff: %d, Aud Mute Repeat\n", VidAudDiff);
            }
            else
            {
                pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_DOWN;
                HI_INFO_ASYNC(enChn, "Vid Buf Low, VidAudDiff: %d, Aud Speed Down\n", VidAudDiff);                
            }
#endif
        }

        HI_INFO_VSYNC(enChn, "Vid Buf Low, VidAudDiff: %d, Vid Play\n", VidAudDiff);  

        return;
    }
    else if (SYNC_BUF_STATE_LOW == pSync->CrtBufStatus.VidBufState)
    {
        if (SYNC_BUF_STATE_HIGH != pSync->CrtBufStatus.AudBufState)
        {
            pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_DOWN;
            HI_INFO_ASYNC(enChn, "Vid Buf Low, VidAudDiff: %d, Aud Speed Down\n", VidAudDiff);   
        }
    }

    if (VidAudDiff < pSync->SyncAttr.stSyncNovelRegion.s32VidNegativeTime)
    {
        if (pSync->SyncAttr.stSyncNovelRegion.bSmoothPlay)
        {            
            /*discard one frame in every VID_SMOOTH_DISCARD_INTERVAL frame*/
            if (!(pSync->VidDisPlayCnt % VID_SMOOTH_DISCARD_INTERVAL))
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
                pSync->VidDiscardCnt++;
                HI_INFO_VSYNC(enChn, "Vid Novel Lag Aud %d Smooth, Discard\n", VidAudDiff);
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                HI_INFO_VSYNC(enChn, "Vid Novel Lag Aud %d Smooth, Play\n", VidAudDiff);
            }
            
            if (SYNC_CHAN_VID == enChn)
            {
                pSync->VidDisPlayCnt++;
            }
        }
        else
        {
            /* discard time before vdec*/
            pSync->VidOpt.VdecDiscardTime = abs(VidAudDiff);
            pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
            pSync->VidDiscardCnt++;
            HI_INFO_VSYNC(enChn, "Vid Novel Lag Aud %d, Discard\n", VidAudDiff);
        }
    }
    else
    {
        if (pSync->SyncAttr.stSyncStartRegion.bSmoothPlay)
        {            
            /*discard one frame in every VID_SMOOTH_DISCARD_INTERVAL frame*/
            if (!(pSync->VidDisPlayCnt % VID_SMOOTH_DISCARD_INTERVAL))
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
                pSync->VidDiscardCnt++;
                HI_INFO_VSYNC(enChn, "Vid Lag Aud %d Smooth, Discard\n", VidAudDiff);
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                HI_INFO_VSYNC(enChn, "Vid Lag Aud %d Smooth, Play\n", VidAudDiff);
            }

            if (SYNC_CHAN_VID == enChn)
            {
                pSync->VidDisPlayCnt++;
            }
        }
        else
        {
            /* discard time before vdec*/
            pSync->VidOpt.VdecDiscardTime = abs(VidAudDiff);
            pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
            pSync->VidDiscardCnt++;
            HI_INFO_VSYNC(enChn, "Vid Lag Aud %d, Discard\n", VidAudDiff);
        }
    }
        
    return;
}

/*adjust referring to audio */
HI_VOID SYNC_AudSyncAdjust(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 VidAudDiff)
{
    if ((VidAudDiff <= pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime)
      &&(VidAudDiff >= pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime)
      &&(abs(VidAudDiff) <= pSync->VidInfo.FrameTime)
       )
    {
        pSync->VidSyndAdjust = HI_FALSE;
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
        pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

        pSync->PcrSyncInfo.PcrAudSyncOK = HI_TRUE;
        pSync->PcrSyncInfo.PcrVidSyncOK = HI_TRUE;

        HI_INFO_ASYNC(enChn, "Vid AdjustSync Aud, VidAudDiff %d, Play\n", VidAudDiff);
        HI_INFO_VSYNC(enChn, "Vid AdjustSync Aud, VidAudDiff %d, Play\n", VidAudDiff);
        
        return;
    }

    /* video is ahead of audio and the difference is too large */
    if (VidAudDiff > VID_LEAD_DISCARD_THRESHOLD)
    {
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
        pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

        HI_INFO_ASYNC(enChn, "VidAudDiff %d > VID_LEAD_DISCARD_THRESHOLD, Play\n", VidAudDiff);
        HI_INFO_VSYNC(enChn, "VidAudDiff %d > VID_LEAD_DISCARD_THRESHOLD, Play\n", VidAudDiff);
        
        return;
    }

    /* video is behind audio and the difference is too large */
    if (VidAudDiff < (-VID_LAG_DISCARD_THRESHOLD))
    {
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
        pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

        HI_INFO_ASYNC(enChn, "VidAudDiff %d < VID_LAG_DISCARD_THRESHOLD, Play\n", VidAudDiff);
        HI_INFO_VSYNC(enChn, "VidAudDiff %d < VID_LAG_DISCARD_THRESHOLD, Play\n", VidAudDiff);
        
        return;
    }

    /* video is ahead of audio*/
    if (VidAudDiff > 0)
    {
        SYNC_AudSyncVidLeadAdjust(pSync, enChn, VidAudDiff);
    }
    /* video is behind audio*/
    else
    {
        SYNC_AudSyncVidLagAdjust(pSync, enChn, VidAudDiff);
    }

    return;
}

HI_VOID SYNC_ScrSyncAudAdjust(SYNC_S *pSync, HI_S32 VidAudDiff, HI_S32 AudScrDiff, HI_S32 VidScrDiff)
{

#ifdef HI_AVPLAY_SCR_SUPPORT

    /* aud is behind scr and AudScrDiff is in novel region */
    if(AudScrDiff >= pSync->SyncAttr.stSyncNovelRegion.s32VidNegativeTime
        && AudScrDiff <= pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime)
    {
        #if 1
        pSync->AudOpt.SyncProc = SYNC_PROC_DISCARD;
        
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudScrDiff: %d, DISCARD\n", AudScrDiff);
        #else
        pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
        pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_UP;

        HI_INFO_SYNC("AudScrDiff: %d, Play, SPEED UP\n", AudScrDiff);
        #endif
    }
    /* aud is behind scr and AudScrDiff is out of novel region*/
    else if(AudScrDiff < pSync->SyncAttr.stSyncNovelRegion.s32VidNegativeTime)
    {
        pSync->AudOpt.SyncProc = SYNC_PROC_DISCARD;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudScrDiff: %d, DISCARD\n", AudScrDiff);
    }
    /* aud is ahead scr and AudScrDiff is in novel region */
    else if(AudScrDiff >= pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime
        && AudScrDiff <= pSync->SyncAttr.stSyncNovelRegion.s32VidPlusTime)
    {
        #if 1
        pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT;
        
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudScrDiff: %d, REPEAT\n", AudScrDiff);
        #else
        pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
        pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_DOWN;

        HI_INFO_SYNC("AudScrDiff: %d, Play, SPEED DOWN\n", AudScrDiff);
        #endif
    }
    /* aud is ahead scr and AudScrDiff is out of novel region*/
    else if(AudScrDiff > pSync->SyncAttr.stSyncNovelRegion.s32VidPlusTime)
    {
        pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudScrDiff: %d, REPEAT\n", AudScrDiff);
    }
#endif    
    return;
}

HI_VOID SYNC_ScrSyncVidAdjust(SYNC_S *pSync, HI_S32 VidAudDiff, HI_S32 AudScrDiff, HI_S32 VidScrDiff)
{
#ifdef HI_AVPLAY_SCR_SUPPORT
    /* VidScrDiff is already in start region */
    if(VidScrDiff > pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime 
        && VidScrDiff < pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime)
    {
        /* VidAudDiff is already in start region */
        if (VidAudDiff < pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime
            && VidAudDiff > pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime)
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

            HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, Play\n", VidScrDiff);
        }
        /* VidAudDiff is beyond start region, we adjust vid */
        /* we only need adjust one or two frames, so we ignore smooth play */
        else 
        {
            if(AudScrDiff > 0 && VidScrDiff < 0)
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;

                pSync->VidDiscardCnt++;

                HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, DISCARD\n", VidScrDiff);
            }
            
            if(AudScrDiff < 0 && VidScrDiff > 0)
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;

                pSync->VidRepeatCnt++;

                HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, REPEAT\n", VidScrDiff);
            }
        }
    }
    /* vid is behind scr and VidScrDiff is in novel region */
    else if(VidScrDiff >= pSync->SyncAttr.stSyncNovelRegion.s32VidNegativeTime
        && VidScrDiff <= pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime)
    {
        if(pSync->SyncAttr.stSyncStartRegion.bSmoothPlay)
        {
            if(0 == pSync->VidDisPlayCnt % VID_SMOOTH_DISCARD_INTERVAL)
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;

                pSync->VidDiscardCnt++;

                HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, SMOOTH DISCARD\n", VidScrDiff);
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, SMOOTH Play\n", VidScrDiff);
            }

            pSync->VidDisPlayCnt++;
        }
        else
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;

            HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, DISCARD\n", VidScrDiff);
        }
    }
    /* vid is behind scr and VidScrDiff is out of novel region*/
    else if(VidScrDiff < pSync->SyncAttr.stSyncNovelRegion.s32VidNegativeTime)
    {
        if(pSync->SyncAttr.stSyncNovelRegion.bSmoothPlay)
        {
            if(0 == pSync->VidDisPlayCnt % VID_SMOOTH_DISCARD_INTERVAL)
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;

                pSync->VidDiscardCnt++;

                HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, SMOOTH DISCARD\n", VidScrDiff);
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, SMOOTH Play\n", VidScrDiff);
            }

            pSync->VidDisPlayCnt++;
        }
        else
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;

            pSync->VidDiscardCnt++;

            HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, DISCARD\n", VidScrDiff);
        }
    }
    /* vid is ahead scr and VidScrDiff is in novel region */
    else if(VidScrDiff >= pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime
        && VidScrDiff <= pSync->SyncAttr.stSyncNovelRegion.s32VidPlusTime)
    {
        if(pSync->SyncAttr.stSyncStartRegion.bSmoothPlay)
        {
            if(0 == pSync->VidRepPlayCnt % VID_SMOOTH_REPEAT_INTERVAL)
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;

                pSync->VidRepeatCnt++;

                HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, SMOOTH REPEAT\n", VidScrDiff);
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, SMOOTH Play\n", VidScrDiff);
            }

            pSync->VidRepPlayCnt++;
        }
        else
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;

            pSync->VidRepeatCnt++;

            HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, REPEAT\n", VidScrDiff);
        }
    }
    /* vid is ahead scr and VidScrDiff is out of novel region*/
    else if(VidScrDiff > pSync->SyncAttr.stSyncNovelRegion.s32VidPlusTime)
    {
       if(pSync->SyncAttr.stSyncNovelRegion.bSmoothPlay)
        {
            if(0 == pSync->VidDisPlayCnt % VID_SMOOTH_DISCARD_INTERVAL)
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;

                pSync->VidRepeatCnt++;
                
                HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, SMOOTH REPEAT\n", VidScrDiff);
            }
            else
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, SMOOTH PLAY\n", VidScrDiff);
            }

            pSync->VidRepPlayCnt++;
        }
        else
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_REPEAT;

            pSync->VidRepeatCnt++;

            HI_INFO_VSYNC(SYNC_CHAN_VID, "VidScrDiff: %d, REPEAT\n", VidScrDiff);
        }
    }
    
#endif

    return;
}

HI_VOID SYNC_ScrSyncAdjust(SYNC_S *pSync, SYNC_CHAN_E enChn, HI_S32 VidAudDiff, HI_S32 AudScrDiff, HI_S32 VidScrDiff)
{

#ifdef HI_AVPLAY_SCR_SUPPORT

    /* AudScrDiff or VidScrDiff is too large, give up */
    if ((abs(AudScrDiff) > SCR_DISCARD_THRESHOLD)
      ||(abs(VidScrDiff) > SCR_DISCARD_THRESHOLD)
       )
    {
        pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudScrDiff %d VidScrDiff %d > SCR_DISCARD_THRESHOLD, Play\n", AudScrDiff, VidScrDiff);
        HI_INFO_VSYNC(SYNC_CHAN_VID, "AudScrDiff %d VidScrDiff %d > SCR_DISCARD_THRESHOLD, Play\n", AudScrDiff, VidScrDiff);

        return;
    }
    
    if(SYNC_CHAN_AUD == enChn)
    {
        /* already in start region */
        if(AudScrDiff > pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime 
            && AudScrDiff < pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime)
        {
            pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
            
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudScrDiff: %d, Play\n", AudScrDiff);
        }
        else
        {
            SYNC_ScrSyncAudAdjust(pSync, pSync->VidAudDiff, pSync->AudScrDiff, pSync->VidScrDiff);
        }
    }
    else if (SYNC_CHAN_VID == enChn)
    {
        SYNC_ScrSyncVidAdjust(pSync, pSync->VidAudDiff, pSync->AudScrDiff, pSync->VidScrDiff);
    }
#endif    
    return;
}

HI_VOID SYNC_SyncAdjust(SYNC_S *pSync, SYNC_CHAN_E enChn)
{
    HI_S32      AudPcrDiff = 0;
    HI_S32      VidPcrDiff = 0;

    AudPcrDiff = pSync->PcrSyncInfo.AudPcrDiff;
    VidPcrDiff = pSync->PcrSyncInfo.VidPcrDiff;

    /* refer to scr or refer to audio but audio first frame does not come */
    if((HI_UNF_SYNC_REF_SCR == pSync->SyncAttr.enSyncRef)
        || ((HI_UNF_SYNC_REF_AUDIO == pSync->SyncAttr.enSyncRef) && (!pSync->AudFirstCome))
        )
    {
        SYNC_ScrSyncAdjust(pSync, enChn, pSync->VidAudDiff, pSync->AudScrDiff, pSync->VidScrDiff);
    }
    /* refer to aud or refer to pcr but pcr does not come */
    else if ((HI_UNF_SYNC_REF_AUDIO == pSync->SyncAttr.enSyncRef)
      ||(((HI_UNF_SYNC_REF_PCR == pSync->SyncAttr.enSyncRef) && (!pSync->PcrSyncInfo.PcrFirstCome))
      || (SYNC_AUD_ADJUST_SCR == pSync->PcrSyncInfo.enPcrAdjust))   //pcr does not come and pcr timeout
       )
    {
        if (!pSync->VidSyndAdjust)
        {
            /* already in the start region*/
            if ((pSync->VidAudDiff <= pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime)
              &&(pSync->VidAudDiff >= pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime)
               )
            {
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
                pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

                HI_INFO_ASYNC(enChn, "Vid Sync Aud, VidAudDiff %d, Play\n", pSync->VidAudDiff);
                HI_INFO_VSYNC(enChn, "Vid Sync Aud, VidAudDiff %d, Play\n", pSync->VidAudDiff);
                
                return;
            }
            else
            {
                pSync->VidSyndAdjust = HI_TRUE;
            }
        }
        
        if (pSync->VidSyndAdjust)
        {
            SYNC_AudSyncAdjust(pSync, enChn, pSync->VidAudDiff);
        } 

        return;
    }
    /*refer to pcr and received pcr*/
    else if(HI_UNF_SYNC_REF_PCR == pSync->SyncAttr.enSyncRef) 
    {
        /*1. VidAudDiff is too large*/
        if (abs(pSync->VidAudDiff) >= VID_LEAD_DISCARD_THRESHOLD)
        {
            /*1.0 initial value*/
            pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
            pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

           /*1.1 believe vidpcr, only adjust aud to match pcr*/
           if ((SYNC_CHAN_AUD == enChn) && (abs(AudPcrDiff) < PCR_DISCARD_THRESHOLD))
           {
               if (!pSync->VidSyndAdjust)
               {
                   /* already in the start region*/
                   if (abs(AudPcrDiff) <= PCR_LAG_ADJUST_THRESHOLD)
                   {
                       pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
               
                       HI_INFO_ASYNC(enChn, "@@@@Aud Sync Pcr, AudPcrDiff %d, Play\n", AudPcrDiff);
                       
                       return;
                   }
                   else
                   {
                       pSync->VidSyndAdjust = HI_TRUE;
                   }
               }
               
               if (pSync->VidSyndAdjust)
               {
                   if (abs(AudPcrDiff) <= PCR_LEAD_STOP_THRESHOLD)
                   {
                       pSync->VidSyndAdjust = HI_FALSE;
                       pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
           
                       HI_INFO_ASYNC(enChn, "@@@@Aud AdjustSync Pcr, AudPcrDiff %d, Play\n", AudPcrDiff);
                       
                       return;
                   }

                   HI_INFO_ASYNC(enChn, "@@@@Aud Need To Sync Pcr, AudPcrDiff %d\n", AudPcrDiff);

                   /* audio is ahead of pcr*/
                   if (AudPcrDiff > 0)
                   {
                        SYNC_PcrSyncAudLeadAdjust(pSync, enChn, AudPcrDiff);
                   }
                   /* audio is behind pcr*/
                   else
                   {
                        SYNC_PcrSyncAudLagAdjust(pSync, enChn, AudPcrDiff);
                   }
               } 

               return;
           }

           /*1.2 believe audpcr, only adjust vid to match pcr*/
           if ((SYNC_CHAN_VID == enChn) && (abs(VidPcrDiff) < PCR_DISCARD_THRESHOLD))
           {
               if (!pSync->VidSyndAdjust)
               {
                   /* already in the start region*/
                   if (abs(VidPcrDiff) <= PCR_LAG_ADJUST_THRESHOLD)
                   {
                       pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
               
                       HI_INFO_VSYNC(enChn, "@@@@Vid Sync Pcr, VidPcrDiff %d, Play\n", VidPcrDiff);
                       
                       return;
                   }
                   else
                   {
                       pSync->VidSyndAdjust = HI_TRUE;
                   }
               }
               
               if (pSync->VidSyndAdjust)
               {
                   if (abs(VidPcrDiff) <= PCR_LEAD_STOP_THRESHOLD)
                   {
                       pSync->VidSyndAdjust = HI_FALSE;
                       pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

                       HI_INFO_VSYNC(enChn, "@@@@Vid AdjustSync Pcr, VidPcrDiff %d, Play\n", VidPcrDiff);
                       
                       return;
                   }
                   
                   HI_INFO_VSYNC(enChn, "@@@@Vid Need To Sync Pcr, VidPcrDiff %d\n", VidPcrDiff);

                   /* video is ahead of pcr*/
                   if (VidPcrDiff > 0)
                   {
                        SYNC_PcrSyncVidLeadAdjust(pSync, enChn, VidPcrDiff);
                   }
                   /* video is behind pcr*/
                   else
                   {
                        SYNC_PcrSyncVidLagAdjust(pSync, enChn, VidPcrDiff);
                   }
               } 

               return;
           }

           HI_INFO_ASYNC(enChn, ">>>>VidAudDiff %d is too large, Play\n", pSync->VidAudDiff);
           HI_INFO_VSYNC(enChn, ">>>>VidAudDiff %d is too large, Play\n", pSync->VidAudDiff);

           return;
        }


        if (!pSync->VidSyndAdjust)
        {
            /* 2. VidAudDiff is in sync start region, vidpcr and audpcr is in sync start region, don't need to adjust  */
            if ((pSync->VidAudDiff <= pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime)
              &&(pSync->VidAudDiff >= pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime)
              &&((AudPcrDiff <= PCR_LAG_ADJUST_THRESHOLD) && (AudPcrDiff >= (-PCR_LEAD_ADJUST_THRESHOLD)))
              &&((VidPcrDiff <= PCR_LAG_ADJUST_THRESHOLD) && (VidPcrDiff >= (-PCR_LEAD_ADJUST_THRESHOLD)))
               )
            {                
                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
                pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

                HI_INFO_ASYNC(enChn, ">>>>Vid Sync Aud, VidAudDiff %d, Play\n", pSync->VidAudDiff);
                HI_INFO_VSYNC(enChn, ">>>>Vid Sync Aud, VidAudDiff %d, Play\n", pSync->VidAudDiff);
                
                return;
            }
            else
            {
                pSync->PcrSyncInfo.PcrAudSyncOK = HI_FALSE;
                pSync->PcrSyncInfo.PcrVidSyncOK = HI_FALSE;
                pSync->VidSyndAdjust = HI_TRUE;
            }
        }

        if (pSync->VidSyndAdjust)
        {
            /*3. adjust pcr to this one which is more behind */
            if (((AudPcrDiff >= PCR_DISCARD_THRESHOLD) && (VidPcrDiff >= PCR_DISCARD_THRESHOLD))
                || ((AudPcrDiff <= (-PCR_DISCARD_THRESHOLD)) && (VidPcrDiff <= (-PCR_DISCARD_THRESHOLD)))
                )
            {
                if (HI_TRUE == pSync->PcrSyncInfo.PcrAdjustDeltaOK)
                {
                    /*3.1 adjust pcr to this one which is more behind */
                    pSync->PcrSyncInfo.PcrDelta += (pSync->VidAudDiff > 0) ? AudPcrDiff : VidPcrDiff;

                    pSync->PcrSyncInfo.PcrAdjustDeltaOK = HI_FALSE;

                    HI_INFO_SYNC(">>>>adjust pcr, PcrDelta %d, AudPcrDiff %d, VidPcrDiff %d\n", 
                                pSync->PcrSyncInfo.PcrDelta,pSync->PcrSyncInfo.AudPcrDiff, pSync->PcrSyncInfo.VidPcrDiff);         
                }

                pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;
                pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

                return;
            }
            else
            {
                /*4. adjust aud and vid to match pcr*/
                SYNC_PcrSyncAdjust(pSync, enChn, AudPcrDiff, VidPcrDiff);
            }
        }
    }
    
    return;
}

SYNC_REGION_STAT_E SYNC_CheckRegion(SYNC_S *pSync, HI_S32 Diff)
{                  
    if ((Diff < pSync->SyncAttr.stSyncStartRegion.s32VidPlusTime)
        && (Diff > pSync->SyncAttr.stSyncStartRegion.s32VidNegativeTime)
        )
    {
        return SYNC_REGION_STAT_IN_START;
    }
    else if ((Diff < pSync->SyncAttr.stSyncNovelRegion.s32VidPlusTime)
            && (Diff > pSync->SyncAttr.stSyncNovelRegion.s32VidNegativeTime)
            )
    {
        return SYNC_REGION_STAT_IN_NOVEL;
    }
    else if ((Diff < VID_LEAD_DISCARD_THRESHOLD)
            && (Diff > -VID_LAG_DISCARD_THRESHOLD)
            )
    {
        return SYNC_REGION_STAT_IN_DISCARD;
    }
    else
    {
        return SYNC_REGION_STAT_OUT_DISCARD;
    }
    
}

HI_VOID SYNC_CheckEvent(SYNC_S *pSync, SYNC_CHAN_E enChn)
{
    HI_U32                  ErrDelta;
    SYNC_REGION_STAT_E      LastStat = SYNC_REGION_STAT_BUTT;
    SYNC_REGION_STAT_E      CurStat = SYNC_REGION_STAT_BUTT;
    HI_U32                  CurSysTime;
    
    if (SYNC_CHAN_VID == enChn)
    {
        ErrDelta = pSync->VidInfo.FrameTime * SYNC_PTS_JUMP_FRM_NUM;

        if (HI_INVALID_PTS == pSync->VidLastPts)
        {
            return;
        }

        if (abs(pSync->VidInfo.Pts - pSync->VidLastPts) > ErrDelta)
        {
            HI_INFO_VSYNC(SYNC_CHAN_VID, "VidLastPts %d, VidPts %d, u32FirstValidPts %d, ErrDelta %d\n",
                pSync->VidInfo.Pts, pSync->VidLastPts, pSync->VidFirstValidPts, ErrDelta);

            pSync->SyncEvent.bVidPtsJump = HI_TRUE;
            pSync->SyncEvent.VidPtsJumpParam.enPtsChan = HI_UNF_SYNC_PTS_CHAN_VID;
            pSync->SyncEvent.VidPtsJumpParam.u32CurPts = pSync->VidInfo.Pts;
            pSync->SyncEvent.VidPtsJumpParam.u32CurSrcPts = pSync->VidInfo.SrcPts;
            pSync->SyncEvent.VidPtsJumpParam.u32FirstPts = pSync->VidFirstPts;
            pSync->SyncEvent.VidPtsJumpParam.u32FirstValidPts = pSync->VidFirstValidPts;
            pSync->SyncEvent.VidPtsJumpParam.u32LastPts = pSync->VidLastPts;
            pSync->SyncEvent.VidPtsJumpParam.u32LastSrcPts = pSync->VidLastSrcPts;

            /* pts is one of VidFirstDecPts/VidSecondDecPts/VidFirstValidPts */
            if ((pSync->VidInfo.SrcPts == pSync->VidFirstDecPts) 
                    || (pSync->VidInfo.SrcPts == pSync->VidSecondDecPts)
                    || (pSync->VidInfo.SrcPts == pSync->VidFirstValidPts)
               )
            {
                HI_INFO_VSYNC(SYNC_CHAN_VID, 
                    "Vid pts LoopBack, SrcPts %u, VidFirstDecPts %u, VidSecondDecPts %u, VidFirstValidPts %u!\n",
                    pSync->VidInfo.SrcPts, pSync->VidFirstDecPts, pSync->VidSecondDecPts, pSync->VidFirstValidPts);
                
                pSync->SyncEvent.VidPtsJumpParam.bLoopback = HI_TRUE;
                pSync->VidPtsLoopBack = HI_TRUE;
            }
            else
            {
                pSync->SyncEvent.VidPtsJumpParam.bLoopback = HI_FALSE;
            }
        }
    }
    else if (SYNC_CHAN_AUD == enChn)
    {
        ErrDelta = pSync->AudInfo.FrameTime * SYNC_PTS_JUMP_FRM_NUM;

        if (HI_INVALID_PTS == pSync->AudLastPts)
        {
            return;
        }

        if (abs(pSync->AudInfo.Pts - pSync->AudLastPts) > ErrDelta)
        {

            HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudLastPts %d, AuddPts %d, u32FirstValidPts %d, ErrDelta %d\n",
                pSync->AudLastPts, pSync->AudInfo.Pts, pSync->AudFirstValidPts, ErrDelta);
            
            pSync->SyncEvent.bAudPtsJump = HI_TRUE;
            pSync->SyncEvent.AudPtsJumpParam.enPtsChan = HI_UNF_SYNC_PTS_CHAN_AUD;
            pSync->SyncEvent.AudPtsJumpParam.u32CurPts = pSync->AudInfo.Pts;
            pSync->SyncEvent.AudPtsJumpParam.u32CurSrcPts = pSync->AudInfo.SrcPts;
            pSync->SyncEvent.AudPtsJumpParam.u32FirstPts = pSync->AudFirstPts;
            pSync->SyncEvent.AudPtsJumpParam.u32FirstValidPts = pSync->AudFirstValidPts;
            pSync->SyncEvent.AudPtsJumpParam.u32LastPts = pSync->AudLastPts;
            pSync->SyncEvent.AudPtsJumpParam.u32LastSrcPts = pSync->AudLastSrcPts;

            if (pSync->AudInfo.SrcPts == pSync->AudFirstValidPts)
            {
                HI_INFO_ASYNC(SYNC_CHAN_AUD, "Aud pts LoopBack!\n");
                
                pSync->SyncEvent.AudPtsJumpParam.bLoopback = HI_TRUE;
                pSync->AudPtsLoopBack = HI_TRUE;
            }
            else
            {
                pSync->SyncEvent.AudPtsJumpParam.bLoopback = HI_FALSE;
            }
        }        
    }
    /* pcr jump check, to add */
    else
    {
    }

    if (HI_UNF_SYNC_REF_AUDIO == pSync->SyncAttr.enSyncRef)
    {
        LastStat = SYNC_CheckRegion(pSync, pSync->LastVidAudDiff);
        CurStat = SYNC_CheckRegion(pSync, pSync->VidAudDiff);
    }
    else if (HI_UNF_SYNC_REF_PCR == pSync->SyncAttr.enSyncRef)
    {
        LastStat = SYNC_CheckRegion(pSync, pSync->PcrSyncInfo.LastAudPcrDiff);
        LastStat |= SYNC_CheckRegion(pSync, pSync->PcrSyncInfo.LastVidPcrDiff);
        CurStat = SYNC_CheckRegion(pSync, pSync->PcrSyncInfo.AudPcrDiff);
        CurStat |= SYNC_CheckRegion(pSync, pSync->PcrSyncInfo.VidPcrDiff);
    }

    /* if sync status change, record this event */
    if (LastStat != CurStat)
    {
        HI_INFO_SYNC("Sync Status change: LastStat %d, CurStat %d!\n",
            LastStat, CurStat);
        
        pSync->SyncEvent.bStatChange = HI_TRUE;
        pSync->SyncEvent.StatParam.s32VidAudDiff = pSync->VidAudDiff;
        pSync->SyncEvent.StatParam.s32VidPcrDiff = pSync->PcrSyncInfo.VidPcrDiff;
        pSync->SyncEvent.StatParam.s32AudPcrDiff = pSync->PcrSyncInfo.AudPcrDiff;
        pSync->SyncEvent.StatParam.u32VidLocalTime = pSync->VidLastLocalTime;
        pSync->SyncEvent.StatParam.u32AudLocalTime = pSync->AudLastLocalTime;
        pSync->SyncEvent.StatParam.u32PcrLocalTime = pSync->PcrSyncInfo.PcrLastLocalTime;
    }

    /*do not sync when vid or aud loopback*/
    if (!pSync->LoopBackFlag && (pSync->AudPtsLoopBack || pSync->VidPtsLoopBack))
    {
        pSync->LoopBackFlag = HI_TRUE;
        pSync->LoopBackTime = SYNC_GetSysTime();
            
        HI_INFO_SYNC("Change SyncRef=NONE, AudPtsLoopBack %d, VidPtsLoopBack %d\n",
            pSync->AudPtsLoopBack, pSync->VidPtsLoopBack);
    }

    if (pSync->LoopBackFlag)
    {
        CurSysTime = SYNC_GetSysTime();

        /*recover sync when timeout or vid and aud both loopback*/
        if ((CurSysTime - pSync->LoopBackTime > PTS_LOOPBACK_TIMEOUT)
            || (pSync->AudPtsLoopBack && pSync->VidPtsLoopBack)
            )
        {            
            pSync->LoopBackFlag = HI_FALSE;
            pSync->AudPtsLoopBack = HI_FALSE;
            pSync->VidPtsLoopBack = HI_FALSE;

            HI_INFO_SYNC("Change SyncRef=UserSetRed, AudPtsLoopBack %d, VidPtsLoopBack %d\n",
                pSync->AudPtsLoopBack, pSync->VidPtsLoopBack); 
        }
    }
        
    return;
}

HI_VOID SYNC_CheckTBMatchAdjust(SYNC_S *pSync)
{
    SYNC_REGION_STAT_E      enSyncRegion;
    
    enSyncRegion = SYNC_CheckRegion(pSync, pSync->VidAudDiff);

    if (enSyncRegion != SYNC_REGION_STAT_IN_START)
    {
        pSync->VidOpt.enTBAdjust = HI_DRV_VIDEO_TB_PLAY;
        return;    
    }

    if (pSync->VidAudDiff >= 0)
    {
        pSync->VidOpt.enTBAdjust = HI_DRV_VIDEO_TB_REPEAT;
    }
    else
    {
        pSync->VidOpt.enTBAdjust = HI_DRV_VIDEO_TB_DISCARD;    
    }

    return;
}

HI_VOID SYNC_VidProc(HI_HANDLE hSync, SYNC_VID_INFO_S *pVidInfo, SYNC_VID_OPT_S *pVidOpt)
{
    SYNC_S             *pSync;
    HI_U32             PtsDelta;
    HI_U32             SysTime;

    if (HI_FALSE == SYNC_VerifyHandle(hSync))
    {
        return;
    }

    pSync = g_SyncGlobalState.SyncInfo[hSync&0xff].pSync;
    pVidOpt->SyncProc = SYNC_PROC_PLAY;
    pVidOpt->Repeat = 1;
    pVidOpt->Discard = 0;
    pVidOpt->VdecDiscardTime = 0;

    pSync->VidOpt = *pVidOpt;

    /* record the video frame information */
    pSync->VidInfo = *pVidInfo;
 
    SysTime = SYNC_GetSysTime();

    HI_INFO_VSYNC(SYNC_CHAN_VID, "VidInfo SrcPts %-8d,Pts %-8d,FrameTime %d, DelayTime %d,SysTime %d\n",
                                 pVidInfo->SrcPts, pVidInfo->Pts, pVidInfo->FrameTime,pVidInfo->DelayTime,SysTime);

    /*pcr timeout, we used aud adjust scr*/
    if (SYNC_SCR_ADJUST_BUTT == pSync->PcrSyncInfo.enPcrAdjust)
    {
        if (HI_TRUE == SYNC_CheckPcrTimeout(pSync))
        {
            pSync->PcrSyncInfo.enPcrAdjust = SYNC_AUD_ADJUST_SCR;

            HI_INFO_SYNC("Pcr is timeout adjust pcr by audpts\n");
        }
    }

    if (0 == pVidInfo->DispTime)
    {
        pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;
        *pVidOpt = pSync->VidOpt;
        HI_INFO_VSYNC(SYNC_CHAN_VID, "--------Vid Frc Discard--------\n");
        HI_INFO_VSYNC(SYNC_CHAN_VID, "\n");
        return;
    }

    /* quick output the first frame*/
    if ((pSync->SyncAttr.bQuickOutput)&&(!pSync->VidFirstPlay))
    {
        pSync->VidFirstPlay = HI_TRUE;
        pSync->VidFirstPlayTime = SYNC_GetSysTime();

        pSync->VidFirstCome = HI_TRUE;
        pSync->VidFirstSysTime = pSync->VidFirstPlayTime;
        pSync->VidFirstPts = pVidInfo->Pts;

        HI_DRV_STAT_Event(STAT_EVENT_FRAMESYNCOK, 0);

        pSync->VidOpt.SyncProc = SYNC_PROC_QUICKOUTPUT;
        *pVidOpt = pSync->VidOpt;

        HI_INFO_VSYNC(SYNC_CHAN_VID, "--------Vid QuickOutput Proc %d--------\n", pVidOpt->SyncProc);
        HI_INFO_VSYNC(SYNC_CHAN_VID, "\n");
        
        HI_INFO_VSYNC(SYNC_CHAN_VID, "First VidFrame SysTime %d, Pts %d, SrcPts %d\n", pSync->VidFirstSysTime, pSync->VidFirstPts, pVidInfo->SrcPts);
        return;
    }

    /* record the information and the time of the first video frame used to sync*/
    if (!pSync->VidFirstCome)
    {
        pSync->VidFirstCome = HI_TRUE;
        pSync->VidFirstSysTime = SYNC_GetSysTime();
        pSync->VidFirstPts = pVidInfo->Pts;

        HI_INFO_VSYNC(SYNC_CHAN_VID, "First VidFrame SysTime %d, Pts %d, SrcPts %d\n", pSync->VidFirstSysTime, pSync->VidFirstPts, pVidInfo->SrcPts);
    }

    if (!pSync->VidFirstValidCome && (-1 != pVidInfo->SrcPts))
    {
        pSync->VidFirstValidCome = HI_TRUE;
        pSync->VidFirstValidPts = pVidInfo->SrcPts;

        HI_INFO_VSYNC(SYNC_CHAN_VID, "VidFirstValidPts come: %u\n", pSync->VidFirstValidPts);
    }
    
    /* presync*/
    if (!pSync->PreSyncFinish)
    {
        SYNC_PreSync(pSync, SYNC_CHAN_VID);
        if (pSync->VidOpt.SyncProc != SYNC_PROC_CONTINUE)
        {
            pSync->VidLastPts = pVidInfo->Pts;
            pSync->VidLastSrcPts = pVidInfo->SrcPts;
            *pVidOpt = pSync->VidOpt;

            if (pSync->PreSyncTargetInit)
            {
                HI_INFO_VSYNC(SYNC_CHAN_VID, "--------Vid PreSync VidAudDiff %d Proc %d--------\n", pSync->VidAudDiff, pVidOpt->SyncProc);
            }
            
            HI_INFO_VSYNC(SYNC_CHAN_VID, "\n");
            return;
        }
    }

    /* first set scr */
    if(pSync->PreSyncFinish && !pSync->ScrInitFlag)
    {
        if(-1 != pVidInfo->Pts)
        {
            SYNC_SetLocalTime(pSync, SYNC_CHAN_SCR, (pVidInfo->Pts - pSync->VidInfo.DelayTime));
            pSync->ScrInitFlag = HI_TRUE;
            pSync->ScrFirstLocalTime = pVidInfo->Pts - pSync->VidInfo.DelayTime;
            pSync->ScrFirstSysTime = SYNC_GetSysTime();
        }
    }

    /* presync finished. cumulate video and audio data to prevent underflow*/
    if (!pSync->BufFundFinish)
    {
        SYNC_BufFund(pSync);
        if (pSync->VidOpt.SyncProc != SYNC_PROC_CONTINUE)
        {
            *pVidOpt = pSync->VidOpt;
            HI_INFO_VSYNC(SYNC_CHAN_VID, "--------Vid BufFund Proc %d--------\n", pVidOpt->SyncProc);
            HI_INFO_VSYNC(SYNC_CHAN_VID, "\n");
            return;
        }
        
        if (pSync->AudFirstCome)
        {
            SYNC_SetLocalTime(pSync, SYNC_CHAN_AUD, (pSync->AudInfo.Pts - pSync->AudInfo.BufTime));
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "Aud BufFund First SetLocalTime %d\n", (pSync->AudInfo.Pts - pSync->AudInfo.BufTime));

            if (SYNC_AUD_ADJUST_SCR == pSync->PcrSyncInfo.enPcrAdjust)
            {
               SYNC_SetLocalTime(pSync, SYNC_CHAN_PCR,  (pSync->AudInfo.Pts - pSync->AudInfo.BufTime));
            
               HI_INFO_SYNC(">>>>Pcr SetLocalTime %d  by Audpts\n",  (pSync->AudInfo.Pts - pSync->AudInfo.BufTime));
            }
        }

        SYNC_SetLocalTime(pSync, SYNC_CHAN_VID, (pVidInfo->Pts - pSync->VidInfo.DelayTime));

        HI_INFO_VSYNC(SYNC_CHAN_VID, "Vid BufFund First SetLocalTime %d\n", (pVidInfo->Pts - pSync->VidInfo.DelayTime));
    }

    /* Pts is invalid*/
    if (-1 == pVidInfo->Pts)
    {
        HI_INFO_VSYNC(SYNC_CHAN_VID, "Vid Pts == -1 invalid\n");
        pSync->VidPtsSeriesCnt = 0;        
    }
    /* Pts go back */
    else if (pVidInfo->Pts < pSync->VidLastPts)
    {
        HI_INFO_VSYNC(SYNC_CHAN_VID, "Vid Pts <= Vid LstPts %d\n", pSync->VidLastPts);
        pSync->VidPtsSeriesCnt = 0;
    }
    /* Pts jump too much */
    else
    {
        PtsDelta = pVidInfo->Pts - pSync->VidLastPts;
        
        if (PtsDelta > VID_PTS_GAP)
        {
            HI_INFO_VSYNC(SYNC_CHAN_VID, "Vid PtsDelta %d > VID_PTS_GAP %d\n", PtsDelta, VID_PTS_GAP);
            pSync->VidPtsSeriesCnt = 0;
        }  
    }

    pSync->VidPtsSeriesCnt++;

    /* if video localtime has not been initialized or there are three successive video pts,update video localtime*/
    if ((pSync->VidPtsSeriesCnt >= PTS_SERIES_COUNT)
        ||((HI_FALSE == pSync->VidLocalTimeFlag) && (-1 != pVidInfo->Pts)))
    {
        SYNC_SetLocalTime(pSync, SYNC_CHAN_VID, (pVidInfo->Pts - pSync->VidInfo.DelayTime));

        HI_INFO_VSYNC(SYNC_CHAN_VID, "Vid SetLocalTime %d\n", (pVidInfo->Pts - pSync->VidInfo.DelayTime));
    }

    SYNC_CalcDiffTime(pSync, SYNC_CHAN_VID);

    SYNC_CheckEvent(pSync, SYNC_CHAN_VID);

    SYNC_CheckTBMatchAdjust(pSync);

    pSync->VidLastPts = pVidInfo->Pts;
    pSync->VidLastSrcPts = pVidInfo->SrcPts;

    if (pSync->CrtBufStatus.bOverflowDiscFrm)
    {
        /*discard one frame in every VID_SMOOTH_DISCARD_INTERVAL frame*/
        if (!(pSync->VidDisPlayCnt % VID_SMOOTH_DISCARD_INTERVAL))
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_DISCARD;

            HI_INFO_VSYNC(SYNC_CHAN_VID, "Vid Buf overflow, Discard\n");
        }
        else
        {
            pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

            HI_INFO_VSYNC(SYNC_CHAN_VID, "Vid Buf overflow, Play\n");
        }

        pSync->VidDisPlayCnt++;

        *pVidOpt = pSync->VidOpt;
        HI_INFO_VSYNC(SYNC_CHAN_VID, "--------Vid Sync Proc %d--------\n", pVidOpt->SyncProc);
        HI_INFO_VSYNC(SYNC_CHAN_VID, "\n");
        return;
    }

    if (HI_UNF_SYNC_REF_NONE == pSync->SyncAttr.enSyncRef)
    {
        if (!pSync->VidFirstPlay)
        {
            pSync->VidFirstPlay = HI_TRUE;
            pSync->VidFirstPlayTime = SYNC_GetSysTime();
            HI_DRV_STAT_Event(STAT_EVENT_FRAMESYNCOK, 0);
        }
        
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;       
        *pVidOpt = pSync->VidOpt;
        HI_INFO_VSYNC(SYNC_CHAN_VID, "--------Vid NoneSync Play--------\n");
        HI_INFO_VSYNC(SYNC_CHAN_VID, "\n");
        return;
    }

    /* do sync when  LoopBackFlag is false */
    if (HI_FALSE == pSync->LoopBackFlag)
    {
        SYNC_SyncAdjust(pSync, SYNC_CHAN_VID);
    }

    /* get information , need to change VidOpt.SyncProc to SYNC_PROC_PLAY , then adjust pcr*/
    if ((SYNC_PROC_DISCARD == pSync->VidOpt.SyncProc) 
        && (SYNC_BUF_STATE_EMPTY == pSync->CrtBufStatus.VidBufState)
        )
    {
        pSync->VidOpt.SyncProc = SYNC_PROC_PLAY;

        if (HI_TRUE == pSync->PcrSyncInfo.PcrAdjustDeltaOK)
        {
            /*adjust pcr to this one which is more behind*/
            if (abs(pSync->VidAudDiff) < VID_LEAD_DISCARD_THRESHOLD)
            {
                pSync->PcrSyncInfo.PcrDelta += (pSync->VidAudDiff > 0) ? pSync->PcrSyncInfo.AudPcrDiff : pSync->PcrSyncInfo.VidPcrDiff;
                pSync->PcrSyncInfo.PcrAdjustDeltaOK = HI_FALSE;

                HI_INFO_SYNC(">>>>Vid buf low, change PcrDelta %d \n", pSync->PcrSyncInfo.PcrDelta);
            }
        }
    }

    *pVidOpt = pSync->VidOpt;

    if (SYNC_PROC_PLAY == pVidOpt->SyncProc)
    {
        if (!pSync->VidFirstPlay)
        {
            pSync->VidFirstPlay = HI_TRUE;
            pSync->VidFirstPlayTime = SYNC_GetSysTime();
            HI_DRV_STAT_Event(STAT_EVENT_FRAMESYNCOK, 0);
        }
    }
    
    HI_INFO_VSYNC(SYNC_CHAN_VID, "--------Vid Sync Proc %d--------\n", pVidOpt->SyncProc);
    HI_INFO_VSYNC(SYNC_CHAN_VID, "\n");

    return;
}


HI_VOID SYNC_AudProc(HI_HANDLE hSync, SYNC_AUD_INFO_S *pAudInfo, SYNC_AUD_OPT_S *pAudOpt)
{
    SYNC_S              *pSync;
    HI_U32              PtsDelta;
    HI_U32              SysTime;

    if (HI_FALSE == SYNC_VerifyHandle(hSync))
    {
        return;
    }

    pSync = g_SyncGlobalState.SyncInfo[hSync&0xff].pSync;
    pAudOpt->SyncProc = SYNC_PROC_PLAY;
    pAudOpt->SpeedAdjust = SYNC_AUD_SPEED_ADJUST_NORMAL;

    pSync->AudOpt = *pAudOpt;

    /* record audio frame information */
    pSync->AudInfo = *pAudInfo;

    SysTime = SYNC_GetSysTime();

    HI_INFO_ASYNC(SYNC_CHAN_AUD, "AudInfo SrcPts %-8d, Pts %-8d, FrameTime %d, BufTime %-4d, FrameNum %d, SysTime %d\n", pAudInfo->SrcPts, pAudInfo->Pts, pAudInfo->FrameTime, pAudInfo->BufTime, pAudInfo->FrameNum, SysTime);

    if (SYNC_SCR_ADJUST_BUTT == pSync->PcrSyncInfo.enPcrAdjust)
    {
        if (HI_TRUE == SYNC_CheckPcrTimeout(pSync))
        {
            pSync->PcrSyncInfo.enPcrAdjust = SYNC_AUD_ADJUST_SCR;

            HI_INFO_SYNC("Pcr is timeout adjust pcr by audpts\n");
        }
    }

    if (!pSync->AudFirstCome)
    {
        pSync->AudFirstCome = HI_TRUE;
        pSync->AudFirstSysTime = SYNC_GetSysTime();
        pSync->AudFirstPts = pAudInfo->Pts;
        pSync->AudLastPts = pAudInfo->Pts;
        pSync->AudLastBufTime = pAudInfo->BufTime;
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "First AudFrame SysTime %d, Pts %d, SrcPts %d\n", pSync->AudFirstSysTime, pSync->AudFirstPts, pAudInfo->SrcPts);
    }

    if (!pSync->AudFirstValidCome && (-1 != pAudInfo->SrcPts))
    {
        pSync->AudFirstValidCome = HI_TRUE;
        pSync->AudFirstValidPts = pAudInfo->SrcPts;

        HI_INFO_VSYNC(SYNC_CHAN_VID, "AudFirstValidPts come: %u\n", pSync->AudFirstValidPts);
    }
    
    if (!pSync->PreSyncFinish)
    {
        /* test the value again after local_irq_save to prevent being preempted by vo interrupt */
        if (!pSync->PreSyncFinish)
        {
            SYNC_PreSync(pSync, SYNC_CHAN_AUD);
            if (pSync->AudOpt.SyncProc != SYNC_PROC_CONTINUE)
            {
                pSync->AudLastPts = pAudInfo->Pts;
                pSync->AudLastBufTime = pAudInfo->BufTime;
                *pAudOpt = pSync->AudOpt;

                if (pSync->PreSyncTargetInit)
                {
                    HI_INFO_ASYNC(SYNC_CHAN_AUD, "--------Aud PreSync VidAudDiff %d Proc %d Speed %d--------\n", pSync->VidAudDiff, pAudOpt->SyncProc, pAudOpt->SpeedAdjust);
                }
                
                return;
            }
        }
    }        
    
    /* first set scr */
    if(pSync->PreSyncFinish && !pSync->ScrInitFlag)
    {
        if(-1 != pAudInfo->Pts)
        {
            SYNC_SetLocalTime(pSync, SYNC_CHAN_SCR, (pAudInfo->Pts - pAudInfo->BufTime));
            pSync->ScrInitFlag = HI_TRUE;
            pSync->ScrFirstLocalTime = pAudInfo->Pts - pAudInfo->BufTime;
            pSync->ScrFirstSysTime = SYNC_GetSysTime();        
        }
    }
 
    if (!pSync->BufFundFinish)
    {
        /* test the value again after local_irq_save to prevent being preempted by vo interrupt */
        if (!pSync->BufFundFinish)
        {
            SYNC_BufFund(pSync);
            if (pSync->AudOpt.SyncProc != SYNC_PROC_CONTINUE)
            {
                *pAudOpt = pSync->AudOpt;
                HI_INFO_ASYNC(SYNC_CHAN_AUD, "--------Aud BufFund Proc %d Speed %d--------\n", pAudOpt->SyncProc, pAudOpt->SpeedAdjust);
                HI_INFO_ASYNC(SYNC_CHAN_AUD, "\n");
                return;
            }

            SYNC_SetLocalTime(pSync, SYNC_CHAN_AUD, (pAudInfo->Pts - pAudInfo->BufTime));

            if (SYNC_AUD_ADJUST_SCR == pSync->PcrSyncInfo.enPcrAdjust)
            {
               SYNC_SetLocalTime(pSync, SYNC_CHAN_PCR, (pAudInfo->Pts - pAudInfo->BufTime ));
            
               HI_INFO_SYNC("Pcr SetLocalTime %d  by Audpts\n", (pAudInfo->Pts - pAudInfo->BufTime ));
            }

            if (pSync->VidFirstCome)
            {
                SYNC_SetLocalTime(pSync, SYNC_CHAN_VID, (pSync->VidInfo.Pts - pSync->VidInfo.DelayTime));
                HI_INFO_VSYNC(SYNC_CHAN_VID, "Vid BufFund First SetLocalTime %d\n", (pSync->VidInfo.Pts - pSync->VidInfo.DelayTime));
            }
            
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "Aud BufFund First SetLocalTime %d\n", (pAudInfo->Pts - pAudInfo->BufTime));
        }
    }

	/*AudDDPMode do not set audio resynchronization*/
    if (pSync->AudDDPMode)
    {
        pSync->AudReSync = HI_FALSE;
    }    

    /* audio resynchronization is needed when change audio track.StopAud->StartAud*/
    if (pSync->AudReSync)
    {
        SYNC_AudReSync(pSync);
        if (pSync->AudOpt.SyncProc != SYNC_PROC_CONTINUE)
        {
            pSync->AudLastPts = pAudInfo->Pts;
            pSync->AudLastBufTime = pAudInfo->BufTime;
            *pAudOpt = pSync->AudOpt;
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "--------Aud ReSync VidAudDiff %d Proc %d Speed %d--------\n", pSync->VidAudDiff, pAudOpt->SyncProc, pAudOpt->SpeedAdjust);
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "\n");
            return;
        }
    }

    /* it is needed to accumulate audio data again */
    if (pSync->AudReBufFund)
    {
        SYNC_AudReBufFund(pSync);
        if (pSync->AudOpt.SyncProc != SYNC_PROC_CONTINUE)
        {
            *pAudOpt = pSync->AudOpt;
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "--------Aud ReBufFund Proc %d Speed %d--------\n", pAudOpt->SyncProc, pAudOpt->SpeedAdjust);
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "\n");
            return;
        }

        if (SYNC_AUD_ADJUST_SCR == pSync->PcrSyncInfo.enPcrAdjust)
        {
           SYNC_SetLocalTime(pSync, SYNC_CHAN_PCR, (pAudInfo->Pts - pAudInfo->BufTime));
 
           HI_INFO_SYNC("Pcr SetLocalTime %d  by Audpts\n", (pAudInfo->Pts - pAudInfo->BufTime));
        }

        SYNC_SetLocalTime(pSync, SYNC_CHAN_AUD, (pAudInfo->Pts - pAudInfo->BufTime));

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "Aud ReBufFund First SetLocalTime %d\n", (pAudInfo->Pts - pAudInfo->BufTime));
    }

    if ((HI_UNF_SYNC_REF_PCR == pSync->SyncAttr.enSyncRef) && (!pSync->AudFirstPlay))
    {
        if ((HI_FALSE == pSync->VidFirstCome) && (HI_FALSE== SYNC_CheckAudTimeout(pSync)))
        {  
            pSync->AudOpt.SyncProc = SYNC_PROC_REPEAT;
            *pAudOpt = pSync->AudOpt;
            return;
        }
    }

    /* pts gets smaller*/
    if (-1 == pAudInfo->Pts)
    {
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "Aud Pts == -1 invalid\n");
        pSync->AudPtsSeriesCnt = 0;
    }
    /* The same audio frame may be sent to sync twice for repeating.So pAudInfo->Pts == pSync->AudLastPts maybe*/
    else if (pAudInfo->Pts < pSync->AudLastPts)
    {
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "Aud Pts < Aud LstPts %d\n", pSync->AudLastPts);
        pSync->AudPtsSeriesCnt = 0;
    }
    else
    {
        PtsDelta = pAudInfo->Pts - pSync->AudLastPts;

        /* PtsDelta is more than FrameTime*/
        if (PtsDelta > pAudInfo->FrameTime)
        {
            HI_INFO_ASYNC(SYNC_CHAN_AUD, "Aud PtsDelta %d > Aud FrameTime %d\n", PtsDelta, pAudInfo->FrameTime);
            pSync->AudPtsSeriesCnt = 0;
        }
    }

    pSync->AudPtsSeriesCnt++;

    /* if pts keep successive ,update localtime*/
    if ((pSync->AudPtsSeriesCnt >= PTS_SERIES_COUNT)
        || ((HI_FALSE == pSync->AudLocalTimeFlag) && (-1 != pAudInfo->Pts)))
    {
        SYNC_SetLocalTime(pSync, SYNC_CHAN_AUD, (pAudInfo->Pts - pAudInfo->BufTime));

        if (SYNC_AUD_ADJUST_SCR == pSync->PcrSyncInfo.enPcrAdjust)
        {
           SYNC_SetLocalTime(pSync, SYNC_CHAN_PCR, (pAudInfo->Pts - pAudInfo->BufTime));
 
           HI_INFO_SYNC("Pcr SetLocalTime %d  by Audpts\n", (pAudInfo->Pts - pAudInfo->BufTime));
        }

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "Aud SetLocalTime %d\n", (pAudInfo->Pts - pAudInfo->BufTime));
    }

    SYNC_CalcDiffTime(pSync, SYNC_CHAN_AUD);

    SYNC_CheckEvent(pSync, SYNC_CHAN_AUD);

    pSync->AudLastPts = pAudInfo->Pts;
    pSync->AudLastBufTime = pAudInfo->BufTime;

    if (HI_UNF_SYNC_REF_NONE == pSync->SyncAttr.enSyncRef)
    {
        if (!pSync->AudFirstPlay)
        {
            pSync->AudFirstPlay = HI_TRUE;
            pSync->AudFirstPlayTime = SYNC_GetSysTime();
        }
        
        if (SYNC_BUF_STATE_EMPTY == pSync->CrtBufStatus.AudBufState)
        {
            pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_DOWN;
        }
        else
        {
            pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_NORMAL;
        }
        
        pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;
        *pAudOpt = pSync->AudOpt;
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "--------Aud NoneSync Play Speed %d--------\n", pAudOpt->SpeedAdjust);
        HI_INFO_ASYNC(SYNC_CHAN_AUD, "\n");
        return;
    }

    /* do sync when  LoopBackFlag is false */
    if (HI_FALSE == pSync->LoopBackFlag)
    {
        SYNC_SyncAdjust(pSync, SYNC_CHAN_AUD);
    }

    /* If there isn't enough audio data,low the audio output speed*/
    if (SYNC_BUF_STATE_EMPTY == pSync->CrtBufStatus.AudBufState)
    {
        if (SYNC_PROC_DISCARD == pSync->AudOpt.SyncProc) 
        {
            pSync->AudOpt.SyncProc = SYNC_PROC_PLAY;

            if (HI_TRUE == pSync->PcrSyncInfo.PcrAdjustDeltaOK)
            {
                if (abs(pSync->VidAudDiff) < VID_LEAD_DISCARD_THRESHOLD)
                {
                    /*adjust pcr to this one which is more behind*/
                    pSync->PcrSyncInfo.PcrDelta += (pSync->VidAudDiff > 0) ? pSync->PcrSyncInfo.AudPcrDiff : pSync->PcrSyncInfo.VidPcrDiff;
                    pSync->PcrSyncInfo.PcrAdjustDeltaOK = HI_FALSE;
                    
                    HI_INFO_SYNC(">>>>Aud buf low, change PcrDelta %d \n", pSync->PcrSyncInfo.PcrDelta);
                }
            }
        }

        if(SYNC_AUD_SPEED_ADJUST_MUTE_REPEAT != pSync->AudOpt.SpeedAdjust)
        {
            pSync->AudOpt.SpeedAdjust = SYNC_AUD_SPEED_ADJUST_DOWN;
        }

        HI_INFO_ASYNC(SYNC_CHAN_AUD, "Aud Buf Low\n");
    }
    
    *pAudOpt = pSync->AudOpt;

    if (SYNC_PROC_PLAY == pAudOpt->SyncProc)
    {
        if (!pSync->AudFirstPlay)
        {
            pSync->AudFirstPlay = HI_TRUE;
            pSync->AudFirstPlayTime = SYNC_GetSysTime();
        }
    }
    
    HI_INFO_ASYNC(SYNC_CHAN_AUD, "--------Aud Sync Proc %d Speed %d--------\n", pAudOpt->SyncProc, pAudOpt->SpeedAdjust);
    HI_INFO_ASYNC(SYNC_CHAN_AUD, "\n");
    
    return;
}

HI_VOID SYNC_PcrProc(HI_HANDLE hSync, HI_U32 PcrTime)
{
    SYNC_S    *pSync;
    HI_U32    PcrDelta;

    if (HI_FALSE == SYNC_VerifyHandle(hSync))
    {
        return;
    }

    pSync = g_SyncGlobalState.SyncInfo[hSync&0xff].pSync;

    /* first pcr*/
    if (!pSync->PcrSyncInfo.PcrFirstCome)
    {
        if ((HI_FALSE == SYNC_CheckPcrTimeout(pSync)) 
            || (HI_INVALID_TIME == pSync->PcrSyncInfo.PcrSyncStartSysTime))
        {
            //fisrt set pcr local  time 
            SYNC_SetLocalTime(pSync, SYNC_CHAN_PCR, (PcrTime + pSync->PcrSyncInfo.PcrDelta));
            HI_INFO_SYNC(">>>>Pcr First SetLocalTime %d\n", (PcrTime + pSync->PcrSyncInfo.PcrDelta));
            pSync->PcrSyncInfo.PcrAdjustDeltaOK = HI_TRUE;
            pSync->PcrSyncInfo.enPcrAdjust = SYNC_PCR_ADJUST_SCR;   
        }

        //second change PcrFirstCome value to HI_TRUE
        pSync->PcrSyncInfo.PcrFirstCome = HI_TRUE;
        pSync->PcrSyncInfo.PcrFirstSysTime = SYNC_GetSysTime();
        pSync->PcrSyncInfo.PcrFirst = PcrTime;
        pSync->PcrSyncInfo.PcrLast = PcrTime;

        return;
    }
    
    /* pcr gets smaller*/
    if (PcrTime <= pSync->PcrSyncInfo.PcrLast)
    {
        pSync->PcrSyncInfo.PcrLast = PcrTime;
        pSync->PcrSyncInfo.PcrSeriesCnt = 0;
        return;
    }

    PcrDelta = PcrTime - pSync->PcrSyncInfo.PcrLast;

    /* pcr jump*/
    if (PcrDelta > PCR_MAX_DELTA)
    {
        pSync->PcrSyncInfo.PcrLast = PcrTime;
        pSync->PcrSyncInfo.PcrSeriesCnt = 0;
        return;
    }

    pSync->PcrSyncInfo.PcrLast = PcrTime;

    pSync->PcrSyncInfo.PcrSeriesCnt++;

    /* If pcr keep successivem,update the pcr localtime*/
    if (pSync->PcrSyncInfo.PcrSeriesCnt >= PTS_SERIES_COUNT)
    {
        if (SYNC_PCR_ADJUST_SCR == pSync->PcrSyncInfo.enPcrAdjust)
        {
            SYNC_SetLocalTime(pSync, SYNC_CHAN_PCR, (PcrTime + pSync->PcrSyncInfo.PcrDelta));

            pSync->PcrSyncInfo.PcrAdjustDeltaOK = HI_TRUE;

            HI_INFO_SYNC(">>>>PcrTime %d, PcrDelta %d \n", PcrTime, pSync->PcrSyncInfo.PcrDelta);
            
            HI_INFO_SYNC(">>>>Pcr SetLocalTime %d by Pcr\n", (PcrTime + pSync->PcrSyncInfo.PcrDelta));
        }
    }
  
    return;
}


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
