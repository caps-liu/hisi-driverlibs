/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_avplay.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/21
  Description   :
  History       :
  1.Date        : 2009/12/21
    Author      : w58735
    Modification: Created file

 *******************************************************************************/

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <memory.h>
#include <sys/mman.h>
#include <sys/time.h>
#include <sys/times.h>
#include <sys/types.h>

#include "hi_mpi_avplay.h"
#include "hi_error_mpi.h"
#include "hi_mpi_mem.h"
#include "hi_module.h"
#include "hi_drv_struct.h"
#include "avplay_frc.h"
#include <sys/syscall.h>

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

#define AVPLAY_AUD_SPEED_ADJUST_SUPPORT

static HI_S32            g_AvplayDevFd    = -1;
static const HI_CHAR     g_AvplayDevName[] ="/dev/"UMAP_DEVNAME_AVPLAY;
static pthread_mutex_t   g_AvplayMutex = PTHREAD_MUTEX_INITIALIZER;

static const HI_U8 s_szAVPLAYVersion[] __attribute__((used)) = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

//static HI_U32 u32ThreadMutexCount = 0, u32AvplayMutexCount = 0;
void AVPLAY_ThreadMutex_Lock(pthread_mutex_t *ss)
{
    //u32ThreadMutexCount ++;
    //HI_INFO_AVPLAY("lock u32ThreadMutexCount:%d\n", u32ThreadMutexCount);
    pthread_mutex_lock(ss);
}

void AVPLAY_ThreadMutex_UnLock(pthread_mutex_t *ss)
{
    //u32ThreadMutexCount --;
    //HI_INFO_AVPLAY("unlock u32ThreadMutexCount:%d\n", u32ThreadMutexCount);
    pthread_mutex_unlock(ss);
}

void AVPLAY_Mutex_Lock(pthread_mutex_t *ss)
{
    //u32AvplayMutexCount ++;
    //HI_INFO_AVPLAY("lock u32AvplayMutexCount:%d\n", u32AvplayMutexCount);
    pthread_mutex_lock(ss);
}

void AVPLAY_Mutex_UnLock(pthread_mutex_t *ss)
{
    //u32AvplayMutexCount --;
    //HI_INFO_AVPLAY("unlock u32AvplayMutexCount:%d\n", u32AvplayMutexCount);
    pthread_mutex_unlock(ss);
}

#define HI_AVPLAY_LOCK()        (void)pthread_mutex_lock(&g_AvplayMutex);
#define HI_AVPLAY_UNLOCK()      (void)pthread_mutex_unlock(&g_AvplayMutex);

#define CHECK_AVPLAY_INIT()\
do{\
    HI_AVPLAY_LOCK();\
    if (g_AvplayDevFd < 0)\
    {\
        HI_ERR_AVPLAY("AVPLAY is not init.\n");\
        HI_AVPLAY_UNLOCK();\
        return HI_ERR_AVPLAY_DEV_NO_INIT;\
    }\
    HI_AVPLAY_UNLOCK();\
}while(0)

extern HI_S32 AVPLAY_ResetAudChn(AVPLAY_S *pAvplay);
extern HI_S32 AVPLAY_Reset(AVPLAY_S *pAvplay);

HI_U32 AVPLAY_GetSysTime(HI_VOID)
{
    HI_U32      Ticks;
    struct tms  buf;    

    /* a non-NULL value is required here */
    Ticks = (HI_U32)times(&buf);

    return Ticks * 10;
}

HI_VOID AVPLAY_Notify(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_EVENT_E EvtMsg, HI_U32 EvtPara)
{
    if (pAvplay->EvtCbFunc[EvtMsg])
    {
        (HI_VOID)(pAvplay->EvtCbFunc[EvtMsg](pAvplay->hAvplay, EvtMsg, EvtPara));
    }

    return;
}

HI_BOOL AVPLAY_IsBufEmpty(AVPLAY_S *pAvplay)
{
    ADEC_BUFSTATUS_S            AdecBuf = {0};
    VDEC_STATUSINFO_S           VdecBuf = {0};
    HI_U32                      AudEsBuf = 0;
    HI_U32                      VidEsBuf = 0;
    HI_U32                      VidEsBufWptr = 0;
    HI_U32                      AudEsBufWptr = 0;

    HI_BOOL                     bEmpty = HI_TRUE;
    HI_U32                      Systime = 0;
    HI_U32                      u32TsCnt = 0;
    HI_DRV_WIN_PLAY_INFO_S      WinPlayInfo = {0};
    HI_S32                      Ret;

    WinPlayInfo.u32DelayTime = 0;

    if (pAvplay->AudEnable)
    {
        Ret = HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBuf);
        if (HI_SUCCESS == Ret)
        {
            AudEsBuf = AdecBuf.u32BufferUsed;
            AudEsBufWptr = AdecBuf.u32BufWritePos;
        }
		
		if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
		{
        	(HI_VOID)HI_MPI_AO_Track_IsBufEmpty(pAvplay->hSyncTrack, &bEmpty);
		}
    }
      
    if (pAvplay->VidEnable)
    {
        
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            (HI_VOID)HI_MPI_DMX_GetChannelTsCount(pAvplay->hDmxVid, &u32TsCnt);
        }  
        else
        {    
            Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBuf);
            if (HI_SUCCESS == Ret)
            {
                VidEsBuf = VdecBuf.u32BufferUsed;
            }
           
        }

        if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        {
            (HI_VOID)HI_MPI_WIN_GetPlayInfo(pAvplay->MasterFrmChn.hWindow, &WinPlayInfo);
        }
    }  
        
    if ((WinPlayInfo.u32FrameNumInBufQn != 0) || (bEmpty != HI_TRUE))
    {
        pAvplay->CurBufferEmptyState = HI_FALSE;
        return HI_FALSE;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
          if ((AudEsBuf < APPLAY_EOS_BUF_MIN_LEN)
            &&(u32TsCnt == pAvplay->PreTscnt )
            &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr))
          {
              pAvplay->PreAudEsBuf = AudEsBuf;
              pAvplay->PreTscnt = u32TsCnt;
              pAvplay->CurBufferEmptyState = HI_TRUE;
              pAvplay->PreSystime = 0;
              return HI_TRUE;
          }
          else
          {
              if ((AudEsBuf == pAvplay->PreAudEsBuf)
                &&(u32TsCnt == pAvplay->PreTscnt )
                &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr)
                 )
              {
                  Systime = AVPLAY_GetSysTime();
        
                  if (((Systime > pAvplay->PreSystime) && ((Systime-pAvplay->PreSystime) > AVPLAY_EOS_TIMEOUT))
                    ||((Systime < pAvplay->PreSystime) && (((SYS_TIME_MAX-pAvplay->PreSystime)+Systime) > AVPLAY_EOS_TIMEOUT))
                     )
                  {
                      pAvplay->PreAudEsBuf = AudEsBuf;
                      pAvplay->CurBufferEmptyState = HI_TRUE;
                      pAvplay->PreSystime = 0;
                      return HI_TRUE;
                  }
              }
              else
              {
                  pAvplay->PreAudEsBuf = AudEsBuf;
                  pAvplay->PreTscnt = u32TsCnt;
                  pAvplay->PreAudEsBufWPtr = AudEsBufWptr;
                  pAvplay->PreSystime = AVPLAY_GetSysTime();
              }
          }
    }
    else
    {
        if ((AudEsBuf < APPLAY_EOS_BUF_MIN_LEN)
            &&(VidEsBuf < APPLAY_EOS_BUF_MIN_LEN)
            &&(VidEsBufWptr == pAvplay->PreVidEsBufWPtr)
            &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr))
        {
          pAvplay->PreAudEsBuf = AudEsBuf;
          pAvplay->PreVidEsBuf = VidEsBuf;
          pAvplay->CurBufferEmptyState = HI_TRUE;
          pAvplay->PreSystime = 0;
          return HI_TRUE;
        }
        else
        {                
            if ((AudEsBuf == pAvplay->PreAudEsBuf)
                &&(VidEsBuf == pAvplay->PreVidEsBuf)
                &&(VidEsBufWptr == pAvplay->PreVidEsBufWPtr)
                &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr)
             )
            {
              Systime = AVPLAY_GetSysTime();

              if (((Systime > pAvplay->PreSystime) && ((Systime-pAvplay->PreSystime) > AVPLAY_EOS_TIMEOUT))
                    ||((Systime < pAvplay->PreSystime) && (((SYS_TIME_MAX-pAvplay->PreSystime)+Systime) > AVPLAY_EOS_TIMEOUT))
                    )
              {
                  pAvplay->PreAudEsBuf = AudEsBuf;
                  pAvplay->PreVidEsBuf = VidEsBuf;
                  pAvplay->CurBufferEmptyState = HI_TRUE;
                  pAvplay->PreSystime = 0;
                  return HI_TRUE;
              }
            }
            else
            {
              pAvplay->PreAudEsBuf = AudEsBuf;
              pAvplay->PreVidEsBuf = VidEsBuf;
              pAvplay->PreVidEsBufWPtr = VidEsBufWptr;
              pAvplay->PreAudEsBufWPtr = AudEsBufWptr;
              pAvplay->PreSystime = AVPLAY_GetSysTime();
            }  
        }   
    }
   
    pAvplay->CurBufferEmptyState = HI_FALSE;
    
    return HI_FALSE;
}

HI_UNF_AVPLAY_BUF_STATE_E AVPLAY_CaclBufState(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, HI_U32 UsedBufPercent)
{
    HI_UNF_AVPLAY_BUF_STATE_E          CurBufState = HI_UNF_AVPLAY_BUF_STATE_NORMAL;
    VDEC_FRMSTATUSINFO_S               VdecFrmBuf = {0};
    HI_U32                             u32FrmTime = 0;
    HI_DRV_WIN_PLAY_INFO_S             WinInfo;
    HI_S32                             Ret = HI_SUCCESS;
    HI_U32                             u32StrmTime = 0;

    memset(&WinInfo, 0x0, sizeof(HI_DRV_WIN_PLAY_INFO_S));

    if (HI_UNF_AVPLAY_MEDIA_CHAN_AUD == enChn)
    {
        if (UsedBufPercent >= AVPLAY_ES_AUD_FULL_PERCENT)
        {
            CurBufState = HI_UNF_AVPLAY_BUF_STATE_FULL;
        }
        else if ((UsedBufPercent >= AVPLAY_ES_AUD_HIGH_PERCENT) && (UsedBufPercent < AVPLAY_ES_AUD_FULL_PERCENT))
        {
            CurBufState = HI_UNF_AVPLAY_BUF_STATE_HIGH;
        }
        else if (UsedBufPercent < AVPLAY_ES_AUD_LOW_PERCENT)
        {
           u32FrmTime = pAvplay->AudInfo.FrameNum * pAvplay->AudInfo.FrameTime;

           if (UsedBufPercent < AVPLAY_ES_AUD_EMPTY_PERCENT)
           {
               if (pAvplay->AudInfo.BufTime + u32FrmTime <= 150)
               {
                   CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
               }
               else
               {
                   CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
               }
           }
           else
           {
               if (pAvplay->AudInfo.BufTime + u32FrmTime <= 150)
               {
                   CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
               }
               else if (pAvplay->AudInfo.BufTime + u32FrmTime <= 240)
               {
                   CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
               }
           }
        }
    }
    else
    {
        if (UsedBufPercent >= AVPLAY_ES_VID_FULL_PERCENT)
        {
            CurBufState = HI_UNF_AVPLAY_BUF_STATE_FULL;
        }
        else if ((UsedBufPercent >= AVPLAY_ES_VID_HIGH_PERCENT) && (UsedBufPercent < AVPLAY_ES_VID_FULL_PERCENT))
        {
            CurBufState = HI_UNF_AVPLAY_BUF_STATE_HIGH;
        }
        else if (UsedBufPercent < AVPLAY_ES_VID_LOW_PERCENT)
        {
            if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
            {
                return HI_UNF_AVPLAY_BUF_STATE_LOW;
            }

            Ret = HI_MPI_VDEC_GetChanFrmStatusInfo(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &VdecFrmBuf);                   
            Ret |= HI_MPI_WIN_GetPlayInfo(pAvplay->MasterFrmChn.hWindow, &WinInfo);
            if (Ret != HI_SUCCESS)
            {
                return HI_UNF_AVPLAY_BUF_STATE_LOW;
            }
            
            /*InBps is too small*/
            if(VdecFrmBuf.u32StrmInBps < 100)
            {
                u32StrmTime = 0;
            }
            else
            {
                u32StrmTime = (VdecFrmBuf.u32StrmSize * 1000)/(VdecFrmBuf.u32StrmInBps);
            }

            if (WinInfo.u32FrameNumInBufQn <= 1)
            {
                CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
            }
            else if (WinInfo.u32FrameNumInBufQn + VdecFrmBuf.u32DecodedFrmNum <= 5)
            {
                if (u32StrmTime <= 80)
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
                }
                else
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
                }                
            }
            else if (WinInfo.u32FrameNumInBufQn + VdecFrmBuf.u32DecodedFrmNum <= 10)
            {
                if (u32StrmTime <= 40)
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
                }
                else if (u32StrmTime <= 80)
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
                }
                else 
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_NORMAL;
                }                
            }
            else
            {
                CurBufState = HI_UNF_AVPLAY_BUF_STATE_NORMAL;
            }

#if 0        
            Ret = HI_MPI_VDEC_GetChanFrmStatusInfo(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &VdecFrmBuf);
            if (HI_SUCCESS == Ret)
            {
                if (HI_TRUE == pAvplay->VidInfo.bProgressive)
                {
                    u32FrmTime = (VdecFrmBuf.u32DecodedFrmNum + VdecFrmBuf.u32OutBufFrmNum) * pAvplay->VidInfo.FrameTime;
                }
                else
                {
                    u32FrmTime = (2*VdecFrmBuf.u32DecodedFrmNum + VdecFrmBuf.u32OutBufFrmNum) * (pAvplay->VidInfo.FrameTime/2);                    
                }

                /*InBps is too small*/
                if(VdecFrmBuf.u32StrmInBps < 100)
                {
                    u32StrmTime = 0;
                }
                else
                {
                    u32StrmTime = (VdecFrmBuf.u32StrmSize * 1000)/(VdecFrmBuf.u32StrmInBps);
                }
            }

            if (UsedBufPercent < AVPLAY_ES_VID_EMPTY_PERCENT)
            {
                if((pAvplay->VidInfo.DelayTime < 40) || (pAvplay->VidInfo.DelayTime + u32FrmTime <= 160)
                    || (pAvplay->VidInfo.DelayTime + u32FrmTime + u32StrmTime < 240))
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
                }
                else
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
                }
            }
            else 
            {
                if((pAvplay->VidInfo.DelayTime < 40) || (pAvplay->VidInfo.DelayTime + u32FrmTime <= 160)
                     || (pAvplay->VidInfo.DelayTime + u32FrmTime + u32StrmTime < 240))
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
                }
                else if ((pAvplay->VidInfo.DelayTime < 60 || (pAvplay->VidInfo.DelayTime + u32FrmTime) <= 200)
                         || (pAvplay->VidInfo.DelayTime + u32FrmTime + u32StrmTime < 300))
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
                }
            }
#endif
        }
    }

    return CurBufState;
}

HI_VOID AVPLAY_ProcAdecToAo(AVPLAY_S *pAvplay)
{
    HI_S32                  Ret = HI_SUCCESS;
    ADEC_EXTFRAMEINFO_S     AdecExtInfo = {0};
    HI_U32                  AoBufTime = 0;
    ADEC_STATUSINFO_S       AdecStatusinfo;
    HI_U32                  i;
    HI_UNF_AUDIOTRACK_ATTR_S   stTrackInfo;

    if (!pAvplay->AudEnable)
    {
        return;
    }

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        return;
    }

    memset(&AdecStatusinfo, 0x0, sizeof(ADEC_STATUSINFO_S));
    memset(&stTrackInfo, 0x0, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));

    if (!pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
    {
        pAvplay->DebugInfo.AcquireAudFrameNum++;

        Ret = HI_MPI_ADEC_ReceiveFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm, &AdecExtInfo);
        if (HI_SUCCESS == Ret)
        {
            pAvplay->AudInfo.SrcPts = AdecExtInfo.u32OrgPtsMs;
            pAvplay->AudInfo.Pts = pAvplay->AvplayAudFrm.u32PtsMs;
            pAvplay->AudInfo.FrameTime = AdecExtInfo.u32FrameDurationMs;
            
            pAvplay->DebugInfo.AcquiredAudFrameNum++;
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_TRUE;
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NEW_AUD_FRAME, (HI_U32)(&pAvplay->AvplayAudFrm));
            AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);            
        }
        else
        {
        }
    }

    if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
    {
        if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
        {
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
            pAvplay->AvplayProcContinue = HI_TRUE;
            (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);          
        }
        else
        {
			if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
			{
            	(HI_VOID)HI_MPI_AO_Track_GetDelayMs(pAvplay->hSyncTrack, &AoBufTime);
			
                (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_STATUSINFO, &AdecStatusinfo);
                                
                pAvplay->AudInfo.BufTime = AoBufTime;
                pAvplay->AudInfo.FrameNum = AdecStatusinfo.u32UsedBufNum;

                Ret = HI_MPI_SYNC_AudJudge(pAvplay->hSync, &pAvplay->AudInfo, &pAvplay->AudOpt);
                if (HI_SUCCESS == Ret)
                {
                    if (SYNC_PROC_DISCARD == pAvplay->AudOpt.SyncProc)
                    {
                        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                        pAvplay->AvplayProcContinue = HI_TRUE;
                        (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
                        return;
                    }
                    else if (SYNC_PROC_REPEAT == pAvplay->AudOpt.SyncProc)
                    {
                        return;
                    }

                    if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
                    {
                        Ret = HI_MPI_AO_Track_GetAttr(pAvplay->hSyncTrack, &stTrackInfo);
                        if ((HI_SUCCESS == Ret) && (HI_UNF_SND_TRACK_TYPE_MASTER == stTrackInfo.enTrackType)
                            && (HI_FALSE == pAvplay->AudDDPMode))  /*do not use speed adjust when ddp test*/
                        {
#ifdef AVPLAY_AUD_SPEED_ADJUST_SUPPORT
                            if (SYNC_AUD_SPEED_ADJUST_NORMAL == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, 0, HI_MPI_AO_SND_SPEEDADJUST_MUTE);
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, 0, HI_MPI_AO_SND_SPEEDADJUST_SRC);
                            }
                            else if (SYNC_AUD_SPEED_ADJUST_UP == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, 0, HI_MPI_AO_SND_SPEEDADJUST_SRC);
                            }
                            else if (SYNC_AUD_SPEED_ADJUST_DOWN == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, -10, HI_MPI_AO_SND_SPEEDADJUST_SRC);
                            }
                            else if (SYNC_AUD_SPEED_ADJUST_MUTE_REPEAT == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, -100, HI_MPI_AO_SND_SPEEDADJUST_MUTE);
                            }
#endif
                        }
                    }
                }
            }
            
            pAvplay->DebugInfo.SendAudFrameNum++;

            if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
            {          
                /*send frame to main track*/
                Ret = HI_MPI_AO_Track_SendData(pAvplay->hSyncTrack, &pAvplay->AvplayAudFrm);
                if (HI_SUCCESS == Ret)
                {
                    /*send frame to other track*/
                    for(i=0; i<pAvplay->TrackNum; i++)
                    {
                        if (pAvplay->hSyncTrack != pAvplay->hTrack[i])
                        {
                            (HI_VOID)HI_MPI_AO_Track_SendData(pAvplay->hTrack[i], &pAvplay->AvplayAudFrm);
                        }
                    } 
                }
            }
            else
            {
                for(i=0; i<pAvplay->TrackNum; i++)
                {
                    Ret = HI_MPI_AO_Track_SendData(pAvplay->hTrack[i], &pAvplay->AvplayAudFrm);
					if (HI_SUCCESS != Ret)
					{
						HI_WARN_AVPLAY("track num %d send data failed\n", i);
					}
                }
            }
			
            if (HI_SUCCESS == Ret)
            {
                pAvplay->DebugInfo.SendedAudFrameNum++;
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                pAvplay->AvplayProcContinue = HI_TRUE;
                
                (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
            }
            else
            {
                if (HI_ERR_AO_OUT_BUF_FULL != Ret
                    && HI_ERR_AO_SENDMUTE != Ret
                    && HI_ERR_AO_PAUSE_STATE != Ret) /* Error drop this frame */
                {
                    HI_ERR_AVPLAY("Send AudFrame to AO failed:%#x, drop a frame.\n", Ret);
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                    pAvplay->AvplayProcContinue = HI_TRUE;
                    (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
                }
            }
        }
    }

    return;
}

HI_S32 AVPLAY_GetWindowByPort(const AVPLAY_S *pAvplay, HI_HANDLE hPort, HI_HANDLE *phWindow)
{
    HI_U32          i;

    if (pAvplay->MasterFrmChn.hPort == hPort)
    {
        *phWindow = pAvplay->MasterFrmChn.hWindow;
        return HI_SUCCESS;
    }

    for (i=0; i<pAvplay->SlaveChnNum; i++)
    {
        if (pAvplay->SlaveFrmChn[i].hPort == hPort)
        {
            *phWindow = pAvplay->SlaveFrmChn[i].hWindow;
            return HI_SUCCESS;
        }
    }

    for (i=0; i<pAvplay->VirChnNum; i++)
    {
        if (pAvplay->VirFrmChn[i].hPort == hPort)
        {
            *phWindow = pAvplay->VirFrmChn[i].hWindow;
            return HI_SUCCESS;
        }
    }

    *phWindow = HI_INVALID_HANDLE;

    return HI_FAILURE;
}

HI_VOID AVPLAY_ProcFrmToVirWin(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    pAvplay->bSendedFrmToVirWin = HI_TRUE;
    
    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        for (i = 0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

            for (j=0; j<pAvplay->VirChnNum; j++)
            {
                if (hWindow == pAvplay->VirFrmChn[j].hWindow)
                {
                    pAvplay->DebugInfo.VirVidStat[j].SendNum++;
                
                    Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                    if (HI_SUCCESS != Ret)
                    {
                        (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo); 
                        pAvplay->DebugInfo.VirVidStat[j].DiscardNum++;
                    }
                    else
                    {
                        pAvplay->DebugInfo.VirVidStat[j].PlayNum++;
                    }
                }  
            }
        }        
    }
    else
    {
        for (i = 0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

            for (j=0; j<pAvplay->VirChnNum; j++)
            {
                if (hWindow == pAvplay->VirFrmChn[j].hWindow)
                {
                    pAvplay->DebugInfo.VirVidStat[j].SendNum++;
                    
                    Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                    if (HI_SUCCESS == Ret)
                    {
#ifdef AVPLAY_VID_THREAD
                        pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
                        pAvplay->AvplayProcContinue = HI_TRUE;
#endif
                        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
                        pAvplay->DebugInfo.VirVidStat[j].PlayNum++;
                    }
                    else if (HI_ERR_VO_BUFQUE_FULL != Ret)
                    {
                       (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);                    
#ifdef AVPLAY_VID_THREAD
                       pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
                       pAvplay->AvplayProcContinue = HI_TRUE;
#endif
                       pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
                       pAvplay->DebugInfo.VirVidStat[j].DiscardNum++;
                    }
                    else
                    {
                        pAvplay->bSendedFrmToVirWin = HI_FALSE;
                    }
                }  
            }
        }
    }

    return;
}

HI_VOID AVPLAY_ProcVidFrc(AVPLAY_S *pAvplay)
{
    HI_U32                              i;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;
    HI_DRV_WIN_PLAY_INFO_S              WinInfo;
    
    memset(&WinInfo, 0x0, sizeof(HI_DRV_WIN_PLAY_INFO_S));
    
    pAvplay->FrcNeedPlayCnt = 1;
    pAvplay->FrcCurPlayCnt = 0;
    pAvplay->FrcCtrlInfo.s32FrmState = 0;

    /* do not do frc in low delay mode */
    if (pAvplay->LowDelayAttr.bEnable)
    {
        return;
    }

    /* find the master chan */
    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    (HI_VOID)HI_MPI_WIN_GetPlayInfo(hWindow, &WinInfo);

    pAvplay->FrcParamCfg.u32InRate = pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32FrameRate/10;
    pAvplay->FrcParamCfg.u32OutRate = WinInfo.u32DispRate;
        
    if (HI_TRUE == pAvplay->bFrcEnable)
    {
        /*do frc for every new frame*/
        (HI_VOID)AVPLAY_FrcCalculate(&pAvplay->FrcCalAlg, &pAvplay->FrcParamCfg, &pAvplay->FrcCtrlInfo);

        pAvplay->FrcNeedPlayCnt = 1 + pAvplay->FrcCtrlInfo.s32FrmState;
    }

    return;
}

HI_VOID AVPLAY_ProcVidSync(AVPLAY_S *pAvplay)
{
    HI_U32                              i;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;
    HI_DRV_WIN_PLAY_INFO_S              WinInfo;
    HI_DRV_VIDEO_PRIVATE_S              *pstFrmPriv = HI_NULL;

    memset(&WinInfo, 0x0, sizeof(HI_DRV_WIN_PLAY_INFO_S));

    pAvplay->VidOpt.SyncProc = SYNC_PROC_PLAY;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        pAvplay->CurFrmPack.stFrame[i].stFrameVideo.enTBAdjust = HI_DRV_VIDEO_TB_PLAY;
    }

    /* do not do sync in low delay mode */
    if (pAvplay->LowDelayAttr.bEnable)
    {
        return;
    }

    /* find the master chan */
    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    pAvplay->VidInfo.SrcPts = pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32SrcPts;
    pAvplay->VidInfo.Pts = pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32Pts;

    if (0 != pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32FrameRate)
    {
        pAvplay->VidInfo.FrameTime = 1000000/pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32FrameRate;
    }
    else
    {
        pAvplay->VidInfo.FrameTime = 40;
    }

    pstFrmPriv = (HI_DRV_VIDEO_PRIVATE_S *)(pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32Priv);
    pstFrmPriv->u32PlayTime = 1;

    /* obtain original stream info, judge whether Progressive*/
    if (HI_DRV_FIELD_ALL == pstFrmPriv->eOriginField)
    {
        pAvplay->VidInfo.bProgressive = HI_TRUE;
    }
    else
    {
        pAvplay->VidInfo.bProgressive = HI_FALSE;
    }

    pAvplay->VidInfo.DispTime = pAvplay->FrcNeedPlayCnt;
    
    /* need to obtain real-time delaytime */
    (HI_VOID)HI_MPI_WIN_GetPlayInfo(hWindow, &WinInfo);
    pAvplay->VidInfo.DelayTime = WinInfo.u32DelayTime;
    pAvplay->VidInfo.DispRate = WinInfo.u32DispRate;

    (HI_VOID)HI_MPI_SYNC_VidJudge(pAvplay->hSync, &pAvplay->VidInfo, &pAvplay->VidOpt);

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        pAvplay->CurFrmPack.stFrame[i].stFrameVideo.enTBAdjust = pAvplay->VidOpt.enTBAdjust;

        if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
        {
            pAvplay->CurFrmPack.stFrame[i].stFrameVideo.enTBAdjust = HI_DRV_VIDEO_TB_PLAY;
        }
    }

    return;
}

HI_VOID AVPLAY_ProcVidPlay(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    pAvplay->DebugInfo.MasterVidStat.SendNum++;
    
    Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
    if (HI_SUCCESS == Ret)
    {
        if (pAvplay->CurFrmPack.stFrame[i].stFrameVideo.bIsFirstIFrame)
        {
            HI_MPI_STAT_Event(STAT_EVENT_VOGETFRM, 0);
        }
    
        HI_INFO_AVPLAY("Play: queue frame to master win success!\n");
        
        memcpy(&pAvplay->LstFrmPack, &pAvplay->CurFrmPack, sizeof(HI_DRV_VIDEO_FRAME_PACKAGE_S));
#ifdef AVPLAY_VID_THREAD
        pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
        pAvplay->AvplayProcContinue = HI_TRUE;
#endif
        pAvplay->FrcCurPlayCnt++;
        pAvplay->DebugInfo.MasterVidStat.PlayNum++;
    }
    else if (HI_ERR_VO_BUFQUE_FULL != Ret)
    {
        HI_ERR_AVPLAY("Play: queue frame to master win failed, Ret=%#x!\n", Ret);
        
        if (0 == pAvplay->FrcCurPlayCnt)
        {
            (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);                    
        }

#ifdef AVPLAY_VID_THREAD
        pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
        pAvplay->AvplayProcContinue = HI_TRUE;
#endif
        pAvplay->FrcCurPlayCnt = pAvplay->FrcNeedPlayCnt;
        pAvplay->DebugInfo.MasterVidStat.DiscardNum++;
    }
    else
    {
        /* master window is full, do not send to slave window */
        HI_INFO_AVPLAY("Play: queue frame to master win, master win full!\n");
        return;
    }

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        for (j=0; j<pAvplay->SlaveChnNum; j++)
        {
            if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
            {
                pAvplay->DebugInfo.SlaveVidStat[j].SendNum++;
            
                Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                if (HI_SUCCESS != Ret)
                {
                    HI_WARN_AVPLAY("Master queue ok, slave queue failed, Ret=%#x!\n", Ret);

                    /*FrcCurPlayCnt maybe has add to 1, because master window send success!*/
                    if (0 == pAvplay->FrcCurPlayCnt || 1 == pAvplay->FrcCurPlayCnt)
                    {
                        (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                    }

                    pAvplay->DebugInfo.SlaveVidStat[j].DiscardNum++;
                } 
                else
                {
                    pAvplay->DebugInfo.SlaveVidStat[j].PlayNum++;
                }
            }
        }
    }
    
    return;
}


HI_VOID AVPLAY_ProcVidQuickOutput(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    pAvplay->DebugInfo.MasterVidStat.SendNum++;
    
    Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
    if (HI_SUCCESS == Ret)
    {
#ifdef AVPLAY_VID_THREAD
        pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
        pAvplay->AvplayProcContinue = HI_TRUE;
#endif
        pAvplay->DebugInfo.MasterVidStat.PlayNum++;
        pAvplay->FrcCurPlayCnt++;
    }
    else if (HI_ERR_VO_BUFQUE_FULL != Ret)
    {
        HI_ERR_AVPLAY("Queue frame to master win failed, Ret=%#x!\n", Ret);
        
        if (0 == pAvplay->FrcCurPlayCnt)
        {
            (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);                    
        }

#ifdef AVPLAY_VID_THREAD
        pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
        pAvplay->AvplayProcContinue = HI_TRUE;
#endif
        pAvplay->FrcCurPlayCnt = pAvplay->FrcNeedPlayCnt;
        pAvplay->DebugInfo.MasterVidStat.DiscardNum++;
    }
    else
    {
        /* master window is full, do not send to slave window */
        return;
    }

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        for (j=0; j<pAvplay->SlaveChnNum; j++)
        {
            if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
            {
                pAvplay->DebugInfo.SlaveVidStat[j].SendNum++;
            
                Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                if (HI_SUCCESS != Ret)
                {
                    HI_ERR_AVPLAY("Master queue ok, slave queue failed, Ret=%#x!\n", Ret);

                    if (0 == pAvplay->FrcCurPlayCnt)
                    {
                        (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                    }

                    pAvplay->DebugInfo.SlaveVidStat[j].DiscardNum++;
                } 
                else
                {
                    pAvplay->DebugInfo.SlaveVidStat[j].PlayNum++;
                }
            }
        }
    }
    
    return;
}



HI_VOID AVPLAY_ProcVidRepeat(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    if (0 == pAvplay->LstFrmPack.u32FrmNum)
    {
        return;
    }

    if (pAvplay->CurFrmPack.stFrame[i].hport != pAvplay->LstFrmPack.stFrame[i].hport)
    {
        return;
    }

    pAvplay->DebugInfo.MasterVidStat.SendNum++;
    
    Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->LstFrmPack.stFrame[i].stFrameVideo);
    if (HI_SUCCESS != Ret)
    {
        HI_INFO_AVPLAY("Repeat, queue last frame to master win failed, Ret=%#x!\n", Ret);
        return;
    } 

    pAvplay->DebugInfo.MasterVidStat.RepeatNum++;

    HI_INFO_AVPLAY("Repeat: Queue frame to master win success!\n");

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        for (j=0; j<pAvplay->SlaveChnNum; j++)
        {
            if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
            {
                if (pAvplay->CurFrmPack.stFrame[i].hport != pAvplay->LstFrmPack.stFrame[i].hport)
                {
                    continue;
                }

                pAvplay->DebugInfo.SlaveVidStat[j].SendNum++;
                
                Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->LstFrmPack.stFrame[i].stFrameVideo);
                if (HI_SUCCESS != Ret)
                {
                    HI_INFO_AVPLAY("Sync repeat, queue last frame to slave win failed, Ret=%#x!\n", Ret);
                }
                else
                {
                    pAvplay->DebugInfo.SlaveVidStat[j].RepeatNum++;
                }
            }
        }
    }
    
    return;

}

HI_VOID AVPLAY_ProcVidDiscard(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    pAvplay->DebugInfo.MasterVidStat.SendNum++;
    
    Ret = HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
    if (HI_SUCCESS != Ret)
    {
        HI_INFO_AVPLAY("Discard, queue useless frame to master win failed, Ret=%#x!\n", Ret);
        return;
    }

    HI_INFO_AVPLAY("Discard, queue useless frame to master win success!\n");
    
#ifdef AVPLAY_VID_THREAD
    pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
    pAvplay->AvplayProcContinue = HI_TRUE;
#endif
    pAvplay->FrcCurPlayCnt = pAvplay->FrcNeedPlayCnt;
    pAvplay->DebugInfo.MasterVidStat.DiscardNum++;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        for (j=0; j<pAvplay->SlaveChnNum; j++)
        {
            if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
            {
                pAvplay->DebugInfo.SlaveVidStat[j].SendNum++;
                
                (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);

                pAvplay->DebugInfo.SlaveVidStat[j].DiscardNum++;
            }
        }
    }    

    return;
}

HI_VOID AVPLAY_ProcVdecToVo(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;

    if (!pAvplay->VidEnable)
    {
        return;
    }

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        return;
    }

    if (!pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
    {
        pAvplay->DebugInfo.AcquireVidFrameNum++;
        
        Ret = HI_MPI_VDEC_ReceiveFrame(pAvplay->hVdec, &pAvplay->CurFrmPack);
        if (HI_SUCCESS != Ret)
        {
            return;
        } 

        pAvplay->bSendedFrmToVirWin = HI_FALSE;

        if (pAvplay->CurFrmPack.stFrame[0].stFrameVideo.bIsFirstIFrame)
        {
            HI_MPI_STAT_Event(STAT_EVENT_AVPLAYGETFRM, 0);
        }

        HI_INFO_AVPLAY("=====Receive a new frame, sys=%u, id=%u, pts=%u=====\n",
            AVPLAY_GetSysTime(), pAvplay->CurFrmPack.stFrame[0].stFrameVideo.u32FrameIndex,
            pAvplay->CurFrmPack.stFrame[0].stFrameVideo.u32Pts);

        pAvplay->DebugInfo.AcquiredVidFrameNum++;

        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_TRUE;

        AVPLAY_ProcVidFrc(pAvplay);
    }

    if (!pAvplay->bSendedFrmToVirWin)
    {
        AVPLAY_ProcFrmToVirWin(pAvplay);
    }

    if (pAvplay->bStepMode)
    {
        if (pAvplay->bStepPlay)
        {
            AVPLAY_ProcVidPlay(pAvplay);
            pAvplay->bStepPlay = HI_FALSE;
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
        }

        return;
    }
    
    if (0 == pAvplay->FrcCurPlayCnt)
    {
        AVPLAY_ProcVidSync(pAvplay);
    }

    HI_INFO_AVPLAY("sys:%u, frm:%d, need:%u, cur:%u, sync:%u, delay:%u\n", 
        AVPLAY_GetSysTime(),pAvplay->CurFrmPack.stFrame[0].stFrameVideo.u32FrameIndex, pAvplay->FrcNeedPlayCnt,
        pAvplay->FrcCurPlayCnt, pAvplay->VidOpt.SyncProc, pAvplay->VidInfo.DelayTime);

    if ((pAvplay->FrcCurPlayCnt < pAvplay->FrcNeedPlayCnt)
        || (0 == pAvplay->FrcNeedPlayCnt)
        )
    {
        if (SYNC_PROC_PLAY == pAvplay->VidOpt.SyncProc)
        {
            AVPLAY_ProcVidPlay(pAvplay);
        }
        else if (SYNC_PROC_REPEAT == pAvplay->VidOpt.SyncProc)
        {
            AVPLAY_ProcVidRepeat(pAvplay);
        }
        else if (SYNC_PROC_DISCARD == pAvplay->VidOpt.SyncProc)
        {
            AVPLAY_ProcVidDiscard(pAvplay);
        }
        if (SYNC_PROC_QUICKOUTPUT == pAvplay->VidOpt.SyncProc)
        {
            // TODO: remove this to presync to control
            AVPLAY_ProcVidQuickOutput(pAvplay);
        }
    }

    if (pAvplay->FrcCurPlayCnt >= pAvplay->FrcNeedPlayCnt)
    {
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
    }
    
    return;
}


HI_VOID AVPLAY_ProcDmxToAdec(AVPLAY_S *pAvplay)
{
    HI_UNF_STREAM_BUF_S             AdecEsBuf = {0};
    HI_S32                          Ret;
    HI_U32                          i;
    HI_UNF_ES_BUF_S                 AudDmxEsBuf = {0}; 

    /* AVPLAY_Start: pAvplay->AudEnable = HI_TRUE */
    if (!pAvplay->AudEnable)
    {
        return;
    }

    Ret = HI_MPI_ADEC_GetDelayMs(pAvplay->hAdec, &pAvplay->AdecDelayMs);
    if (HI_SUCCESS == Ret && pAvplay->AdecDelayMs > AVPLAY_ADEC_MAX_DELAY)
    {
        return;
    }

    if (!pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        for(i=0; i<pAvplay->DmxAudChnNum; i++)
        {
            if(i == pAvplay->CurDmxAudChn)
            {
                pAvplay->DebugInfo.AcquireAudEsNum++;
                Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxAud[i], &(pAvplay->AvplayDmxEsBuf));
                if (HI_SUCCESS == Ret)
                {
                    pAvplay->DebugInfo.AcquiredAudEsNum++;
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_TRUE;
                }
                else
                {
                    /*if is eos and there is no data in demux channel, set eos to adec and ao*/
                    if (HI_ERR_DMX_EMPTY_BUFFER == Ret 
                        && pAvplay->bSetEosFlag && !pAvplay->bSetAudEos)
                    {
                        Ret = HI_MPI_ADEC_SetEosFlag(pAvplay->hAdec);
                        if (HI_SUCCESS != Ret)
                        {
                            HI_ERR_AVPLAY("ERR: HI_MPI_ADEC_SetEosFlag, Ret = %#x! \n", Ret);
                            return;
                        }
                        
                        Ret = HI_MPI_AO_Track_SetEosFlag(pAvplay->hSyncTrack, HI_TRUE);
                        if (HI_SUCCESS != Ret)
                        {
                            HI_ERR_AVPLAY("ERR: HI_MPI_HIAO_SetEosFlag, Ret = %#x! \n", Ret);
                            return;
                        }  

                        pAvplay->bSetAudEos = HI_TRUE;
                    }
                }
            } 
            else
            {
                Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxAud[i], &AudDmxEsBuf);
                if (HI_SUCCESS == Ret)
                {
                    (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[i], &AudDmxEsBuf);
                }
            }
        }
    }

    if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        AdecEsBuf.pu8Data = pAvplay->AvplayDmxEsBuf.pu8Buf;
        AdecEsBuf.u32Size = pAvplay->AvplayDmxEsBuf.u32BufLen;

        pAvplay->DebugInfo.SendAudEsNum++;
        
        /* for DDP test only, when ts stream revers(this pts < last pts), 
            reset audChn, and buffer 600ms audio stream  */
        if (pAvplay->AudDDPMode)
        { 
            static HI_U32 s_u32LastPtsTime = 0;
                
            HI_U32 thisPts = pAvplay->AvplayDmxEsBuf.u32PtsMs;
            HI_U32 thisPtsTime = AVPLAY_GetSysTime();
            HI_S32 ptsDiff = 0;

            if ((thisPts < pAvplay->LastAudPts) && (pAvplay->LastAudPts != HI_INVALID_PTS)
                && (thisPts != HI_INVALID_PTS)
                )
            {                                
                HI_ERR_AVPLAY("PTS:%u -> %u, PtsLess.\n ", pAvplay->LastAudPts, thisPts);
                (HI_VOID)AVPLAY_ResetAudChn(pAvplay);                    
                usleep(1200*1000);                
                HI_ERR_AVPLAY("Rest OK.\n");
            }
            else
            {    
                if ( thisPtsTime >  s_u32LastPtsTime)
                {
                    ptsDiff = (HI_S32)(thisPtsTime - s_u32LastPtsTime);           
                } 
                else
                {
                    ptsDiff = 0; 
                }          
                if ( ptsDiff > 1000 ) 
                {
                    HI_ERR_AVPLAY("PtsTime:%u -> %u, Diff:%d.\n ", s_u32LastPtsTime, thisPtsTime, ptsDiff);
                    (HI_VOID)AVPLAY_ResetAudChn(pAvplay);
                    usleep(1200*1000);
                    HI_ERR_AVPLAY("Rest OK.\n");
                    s_u32LastPtsTime = HI_INVALID_PTS;
                    pAvplay->LastAudPts = HI_INVALID_PTS; 
                    
                }
            }

            if (thisPts != HI_INVALID_PTS)
            {
                pAvplay->LastAudPts = thisPts;
                s_u32LastPtsTime = thisPtsTime; 
            }
        }
        
        Ret = HI_MPI_ADEC_SendStream(pAvplay->hAdec, &AdecEsBuf, pAvplay->AvplayDmxEsBuf.u32PtsMs);
        if (HI_SUCCESS == Ret)
        {
            pAvplay->DebugInfo.SendedAudEsNum++;
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
            pAvplay->AvplayProcContinue = HI_TRUE;
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_GET_AUD_ES, (HI_U32)(&pAvplay->AvplayDmxEsBuf));
            AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
            (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
        }
        else
        {
            if (HI_ERR_ADEC_IN_BUF_FULL != Ret) /* drop this pkg */
            {
                HI_ERR_AVPLAY("Send AudEs buf to ADEC fail:%#x, drop a pkg.\n", Ret);
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
                pAvplay->AvplayProcContinue = HI_TRUE;
                (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
            }
        }
    }
    return;
}


HI_VOID AVPLAY_Eos(AVPLAY_S *pAvplay)
{    
    pAvplay->PreAudEsBuf = 0;
    pAvplay->PreVidEsBuf = 0;
    pAvplay->PreSystime = 0;
    pAvplay->PreVidEsBufWPtr= 0;
    pAvplay->PreAudEsBufWPtr= 0;
    pAvplay->CurBufferEmptyState = HI_TRUE;
    pAvplay->LstStatus = pAvplay->CurStatus;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_EOS;
    
    return;
}

HI_VOID AVPLAY_ProcEos(AVPLAY_S *pAvplay)
{
    ADEC_BUFSTATUS_S        AdecBuf;
    VDEC_STATUSINFO_S       VdecStatus= {0};
    HI_BOOL                 bEmpty = HI_TRUE;
	HI_BOOL					bVidEos = HI_TRUE;
	HI_BOOL					bAudEos = HI_TRUE;
	HI_DRV_WIN_PLAY_INFO_S  WinPlayInfo = {0};
	
	HI_BOOL                 bNeedSetAudEosTime = HI_TRUE;
	HI_BOOL                 bNeedSetVidEosTime = HI_TRUE;

    HI_U32                  u32FrmNumThrd;
    HI_U32                  u32FrmRate = 24;

	if (pAvplay->CurStatus == HI_UNF_AVPLAY_STATUS_EOS)
	{
	    return;
	}

    memset(&AdecBuf, 0x0, sizeof(ADEC_BUFSTATUS_S));
	
    if (pAvplay->AudEnable)
    {
        bAudEos = HI_FALSE;
        
        (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBuf);   
        (HI_VOID)HI_MPI_AO_Track_IsBufEmpty(pAvplay->hSyncTrack, &bEmpty);
    
        if (AdecBuf.bEndOfFrame && HI_INVALID_HANDLE != pAvplay->hSyncTrack) 
        {
			if (HI_TRUE == bEmpty)
			{
				bAudEos = HI_TRUE;
			}
        }
        
        bNeedSetAudEosTime = HI_FALSE;
        if (HI_TRUE == bEmpty)
        {
            bNeedSetAudEosTime = HI_TRUE;
        }
	}

    if (pAvplay->VidEnable)
    {
        bVidEos = HI_FALSE;
        
        (HI_VOID)HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec,  &VdecStatus);

        if (pAvplay->AvgStrmBitrate < VdecStatus.u32StrmInBps)
        {
            pAvplay->AvgStrmBitrate = VdecStatus.u32StrmInBps;
        }
        if (0 != VdecStatus.stVfmwFrameRate.u32fpsInteger)
        {
            u32FrmRate = VdecStatus.stVfmwFrameRate.u32fpsInteger;
        }
        u32FrmNumThrd = (HI_UNF_VCODEC_TYPE_MVC == pAvplay->VdecAttr.enType) 
                     ? (2*APPLAY_EOS_STREAM_THRESHOLD) : APPLAY_EOS_STREAM_THRESHOLD;
       
        
        if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        {
            (HI_VOID)HI_MPI_WIN_GetPlayInfo(pAvplay->MasterFrmChn.hWindow, &WinPlayInfo);
        }

        if (VdecStatus.bEndOfStream && VdecStatus.bAllPortCompleteFrm)
        {
			if (0 == WinPlayInfo.u32FrameNumInBufQn)
			{
				bVidEos = HI_TRUE;
			}
        }

        bNeedSetVidEosTime = HI_FALSE;
        
        if (((VdecStatus.u32BufferUsed <= APPLAY_EOS_BUF_MIN_LEN) 
                || (VdecStatus.u32BufferUsed <= (pAvplay->AvgStrmBitrate/8/u32FrmRate)*u32FrmNumThrd)) 
             && (WinPlayInfo.u32FrameNumInBufQn <= 1))
        {
            bNeedSetVidEosTime = HI_TRUE;
        }
    }

    if (bVidEos && bAudEos)
    {
        AVPLAY_Eos(pAvplay);
        AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_EOS, HI_NULL);
    }

    if (HI_FALSE == pAvplay->bSetEosBeginTime)
    {
        if (bNeedSetAudEosTime && bNeedSetVidEosTime)
        {
            pAvplay->bSetEosBeginTime = HI_TRUE;
            pAvplay->u32EosBeginTime = AVPLAY_GetSysTime();
        }
    }
    else
    {
         if ((AVPLAY_GetSysTime() - pAvplay->u32EosBeginTime > 2000)
                && (HI_TRUE == AVPLAY_IsBufEmpty(pAvplay))
             )
         {
            HI_ERR_AVPLAY("EOS TimeOut!\n");
            AVPLAY_Eos(pAvplay);
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_EOS, HI_NULL);
         }
    }

#if 0
    HI_ERR_AVPLAY("bVidEos %d, bAudEos %d, AdecEnd %d, AoEmpty %d, Vdec %d, VoFrmNum:%d\n",
        bVidEos, bAudEos, AdecBuf.bEndOfFrame, bEmpty, VdecStatus.bEndOfStream, WinPlayInfo.u32FrameNumInBufQn);
#endif   

    return;
}

HI_VOID AVPLAY_ProcCheckBuf(AVPLAY_S *pAvplay)
{
    ADEC_BUFSTATUS_S                   AdecBuf = {0};
    VDEC_STATUSINFO_S                  VdecBuf = {0};
    HI_MPI_DMX_BUF_STATUS_S            VidChnBuf = {0};
    HI_MPI_DMX_BUF_STATUS_S            AudChnBuf = {0};

    HI_UNF_AVPLAY_BUF_STATE_E          CurVidBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    HI_UNF_AVPLAY_BUF_STATE_E          CurAudBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    HI_U32                             VidBufPercent = 0;
    HI_U32                             AudBufPercent = 0;

    HI_UNF_DMX_PORT_MODE_E             PortMode = HI_UNF_DMX_PORT_MODE_BUTT;

    HI_BOOL                            RealModeFlag = HI_FALSE;
    HI_BOOL                            ResetProc = HI_FALSE;

    SYNC_BUF_STATUS_S                  SyncBufStatus = {0};
    SYNC_BUF_STATE_E                   SyncAudBufState = SYNC_BUF_STATE_NORMAL;
    SYNC_BUF_STATE_E                   SyncVidBufState = SYNC_BUF_STATE_NORMAL;

    HI_S32                             Ret;

    if (pAvplay->AudEnable)
    {
        Ret = HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBuf);
        if (HI_SUCCESS == Ret)
        {
            if(HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
            {
                Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudChnBuf);
                if (HI_SUCCESS == Ret)
                {
                    AudBufPercent = (AudChnBuf.u32UsedSize + AdecBuf.u32BufferUsed) * 100 / (AudChnBuf.u32BufSize + AdecBuf.u32BufferSize);
                    CurAudBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, AudBufPercent);
                    SyncAudBufState = (SYNC_BUF_STATE_E)CurAudBufState;
                }
            }
            else
            {
                AudBufPercent = AdecBuf.u32BufferUsed * 100 / AdecBuf.u32BufferSize;
                CurAudBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, AudBufPercent);
                SyncAudBufState = (SYNC_BUF_STATE_E)CurAudBufState;
            }
        }

        if (CurAudBufState != pAvplay->PreAudBufState)
        {
            if (!pAvplay->VidEnable)
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_RNG_BUF_STATE, CurAudBufState);
            }

            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_AUD_BUF_STATE, CurVidBufState);
            pAvplay->PreAudBufState = CurAudBufState;
        }
    }

    if (pAvplay->VidEnable)
    {
        Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBuf);
        if(HI_SUCCESS == Ret)
        {
            if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
            {
                Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
                if (HI_SUCCESS == Ret)
                {
                    if (0 != VidChnBuf.u32BufSize)
                    {
                        VidBufPercent = VidChnBuf.u32UsedSize * 100 / VidChnBuf.u32BufSize;
                        CurVidBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, VidBufPercent);
                        SyncVidBufState = (SYNC_BUF_STATE_E)CurVidBufState;
                    }
                }
            }
            else
            {
                VidBufPercent = VdecBuf.u32BufferUsed * 100 / VdecBuf.u32BufferSize;
                CurVidBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, VidBufPercent);
                SyncVidBufState = (SYNC_BUF_STATE_E)CurVidBufState;
            }
        }

        if (CurVidBufState != pAvplay->PreVidBufState)
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_RNG_BUF_STATE, CurVidBufState);

            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_VID_BUF_STATE, CurVidBufState);
            pAvplay->PreVidBufState = CurVidBufState;
        }
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        (HI_VOID)HI_MPI_DMX_GetPortMode(pAvplay->AvplayAttr.u32DemuxId, &PortMode);

        if (HI_UNF_DMX_PORT_MODE_RAM == PortMode)
        {
            RealModeFlag = HI_FALSE;
        }
        else
        {
            RealModeFlag = HI_TRUE;
        }
    }

    /*  real mode */
    if (RealModeFlag)
    {        
        if (HI_UNF_AVPLAY_BUF_STATE_FULL == CurAudBufState)
        {
            ResetProc = HI_TRUE;
            pAvplay->DebugInfo.AudOverflowNum++;
            HI_ERR_AVPLAY("Aud Dmx Buf overflow, reset.\n");
        }

        if (pAvplay->VidDiscard)
        {
            if (VidBufPercent <= 60)
            {
                pAvplay->VidDiscard = HI_FALSE;
            }
        }
        else
        {
            if (HI_UNF_AVPLAY_BUF_STATE_FULL == CurVidBufState)
            {
                if (HI_UNF_AVPLAY_OVERFLOW_RESET == pAvplay->OverflowProc)
                {
                    ResetProc = HI_TRUE;
                    pAvplay->DebugInfo.VidOverflowNum++;
                    HI_ERR_AVPLAY("Vid Dmx Buf overflow, reset.\n");
                }
                else
                {
                    pAvplay->VidDiscard = HI_TRUE;
                    pAvplay->DebugInfo.VidOverflowNum++;

                    (HI_VOID)AVPLAY_ResetAudChn(pAvplay);

                    HI_ERR_AVPLAY("Vid Dmx Buf overflow, discard.\n");
                }
            }
        }

        if (ResetProc)
        {
            (HI_VOID)AVPLAY_Reset(pAvplay);
            pAvplay->VidDiscard = HI_FALSE;
        }
        else
        {
            SyncBufStatus.AudBufPercent = AudBufPercent;
            SyncBufStatus.AudBufState = SyncAudBufState;
            SyncBufStatus.VidBufPercent = VidBufPercent;
            SyncBufStatus.VidBufState = SyncVidBufState;
            SyncBufStatus.bOverflowDiscFrm = pAvplay->VidDiscard;
            (HI_VOID)HI_MPI_SYNC_SetBufState(pAvplay->hSync,SyncBufStatus);
        }
    }
    else
    {
        if (SyncAudBufState == SYNC_BUF_STATE_LOW || SyncAudBufState == SYNC_BUF_STATE_EMPTY)
        {
            SyncBufStatus.AudBufState = SyncAudBufState;
        }
		else
		{
			SyncBufStatus.AudBufState = SYNC_BUF_STATE_NORMAL;
		}
        
        SyncBufStatus.AudBufPercent = AudBufPercent;

        if (SyncVidBufState == SYNC_BUF_STATE_LOW || SyncVidBufState == SYNC_BUF_STATE_EMPTY) 
        {
            SyncBufStatus.VidBufState = SyncVidBufState;
        }
		else
		{
			SyncBufStatus.VidBufState = SYNC_BUF_STATE_NORMAL;
		}
        
        SyncBufStatus.VidBufPercent = VidBufPercent;
        
        SyncBufStatus.bOverflowDiscFrm = pAvplay->VidDiscard;

        (HI_VOID)HI_MPI_SYNC_SetBufState(pAvplay->hSync,SyncBufStatus);
    }

    return;
}

HI_VOID AVPLAY_DRV2UNF_VidFrm(HI_DRV_VIDEO_FRAME_S *pstDRVFrm, HI_UNF_VIDEO_FRAME_INFO_S *pstUNFFrm)
{
    pstUNFFrm->u32FrameIndex = pstDRVFrm->u32FrameIndex;
    pstUNFFrm->stVideoFrameAddr[0].u32YAddr = pstDRVFrm->stBufAddr[0].u32PhyAddr_Y;
    pstUNFFrm->stVideoFrameAddr[0].u32CAddr = pstDRVFrm->stBufAddr[0].u32PhyAddr_C;
    pstUNFFrm->stVideoFrameAddr[0].u32CrAddr = pstDRVFrm->stBufAddr[0].u32PhyAddr_Cr;
    pstUNFFrm->stVideoFrameAddr[0].u32YStride = pstDRVFrm->stBufAddr[0].u32Stride_Y;
    pstUNFFrm->stVideoFrameAddr[0].u32CStride = pstDRVFrm->stBufAddr[0].u32Stride_C;
    pstUNFFrm->stVideoFrameAddr[0].u32CrStride = pstDRVFrm->stBufAddr[0].u32Stride_Cr;
    pstUNFFrm->stVideoFrameAddr[1].u32YAddr = pstDRVFrm->stBufAddr[1].u32PhyAddr_Y;
    pstUNFFrm->stVideoFrameAddr[1].u32CAddr = pstDRVFrm->stBufAddr[1].u32PhyAddr_C;
    pstUNFFrm->stVideoFrameAddr[1].u32CrAddr = pstDRVFrm->stBufAddr[1].u32PhyAddr_Cr;
    pstUNFFrm->stVideoFrameAddr[1].u32YStride = pstDRVFrm->stBufAddr[1].u32Stride_Y;
    pstUNFFrm->stVideoFrameAddr[1].u32CStride = pstDRVFrm->stBufAddr[1].u32Stride_C;
    pstUNFFrm->stVideoFrameAddr[1].u32CrStride = pstDRVFrm->stBufAddr[1].u32Stride_Cr; 
    pstUNFFrm->u32Width = pstDRVFrm->u32Width;
    pstUNFFrm->u32Height = pstDRVFrm->u32Height;
    pstUNFFrm->u32SrcPts = pstDRVFrm->u32SrcPts;
    pstUNFFrm->u32Pts = pstDRVFrm->u32Pts;
    pstUNFFrm->u32AspectWidth = pstDRVFrm->u32AspectWidth;
    pstUNFFrm->u32AspectHeight = pstDRVFrm->u32AspectHeight;
    pstUNFFrm->stFrameRate.u32fpsInteger = pstDRVFrm->u32FrameRate/1000;
    pstUNFFrm->stFrameRate.u32fpsDecimal = pstDRVFrm->u32FrameRate % 1000;
    pstUNFFrm->bProgressive = pstDRVFrm->bProgressive;

    switch (pstDRVFrm->ePixFormat)
    {
        case HI_DRV_PIX_FMT_NV61_2X1:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_422;
            break;
        case HI_DRV_PIX_FMT_NV21:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
            break;
        case HI_DRV_PIX_FMT_NV80:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_400;
            break;
        case HI_DRV_PIX_FMT_NV12_411:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_411;
            break;
        case HI_DRV_PIX_FMT_NV61:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2;
            break;
        case HI_DRV_PIX_FMT_NV42:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_444;
            break;
        case HI_DRV_PIX_FMT_UYVY:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_UYVY;
            break;
        case HI_DRV_PIX_FMT_YUYV:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_YUYV;
            break;
        case HI_DRV_PIX_FMT_YVYU:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_YVYU;
            break;

        case HI_DRV_PIX_FMT_YUV400:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_400;
            break;
        case HI_DRV_PIX_FMT_YUV411:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_411;
            break;
        case HI_DRV_PIX_FMT_YUV420p:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_420;
            break;
        case HI_DRV_PIX_FMT_YUV422_1X2:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_422_1X2;
            break;
        case HI_DRV_PIX_FMT_YUV422_2X1:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_422_2X1;
            break;
        case HI_DRV_PIX_FMT_YUV_444:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_444;
            break;
        case HI_DRV_PIX_FMT_YUV410p:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_410;
            break;
        default:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_BUTT;
            break;
    }

    switch (pstDRVFrm->enFieldMode)
    {
        case HI_DRV_FIELD_TOP:
        {
            pstUNFFrm->enFieldMode = HI_UNF_VIDEO_FIELD_TOP;
            break;
        }
        case HI_DRV_FIELD_BOTTOM:
        {
            pstUNFFrm->enFieldMode = HI_UNF_VIDEO_FIELD_BOTTOM;
            break;           
        }
        case HI_DRV_FIELD_ALL:
        {
            pstUNFFrm->enFieldMode = HI_UNF_VIDEO_FIELD_ALL;
            break;           
        } 
        default:
        {
            pstUNFFrm->enFieldMode = HI_UNF_VIDEO_FIELD_BUTT;
            break;
        }
    }
    
    pstUNFFrm->bTopFieldFirst = pstDRVFrm->bTopFieldFirst;
    
    switch (pstDRVFrm->eFrmType)
    {
        case HI_DRV_FT_NOT_STEREO:
        {
            pstUNFFrm->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_NONE;
            break;
        }
        case HI_DRV_FT_SBS:
        {
            pstUNFFrm->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_SIDE_BY_SIDE;
            break;
        }
        case HI_DRV_FT_TAB:
        {
            pstUNFFrm->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_TOP_AND_BOTTOM;
            break;
        }
        case HI_DRV_FT_FPK:
        {
            pstUNFFrm->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_TIME_INTERLACED;
            break;
        }
        default:
        {
            pstUNFFrm->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_BUTT;
            break;
        }
    }
    
    pstUNFFrm->u32Circumrotate = pstDRVFrm->u32Circumrotate;
    pstUNFFrm->bVerticalMirror = pstDRVFrm->bToFlip_V;
    pstUNFFrm->bHorizontalMirror = pstDRVFrm->bToFlip_H;
    pstUNFFrm->u32DisplayWidth = (HI_U32)pstDRVFrm->stDispRect.s32Width;
    pstUNFFrm->u32DisplayHeight = (HI_U32)pstDRVFrm->stDispRect.s32Height;
    pstUNFFrm->u32DisplayCenterX = (HI_U32)pstDRVFrm->stDispRect.s32X;
    pstUNFFrm->u32DisplayCenterY = (HI_U32)pstDRVFrm->stDispRect.s32Y;
    pstUNFFrm->u32ErrorLevel = pstDRVFrm->u32ErrorLevel;
    
    return;
}

HI_VOID AVPLAY_ProcVidEvent(AVPLAY_S *pAvplay)
{
    VDEC_EVENT_S                        VdecEvent;
    HI_DRV_VIDEO_FRAME_S                VdecDrvFrm;
    HI_UNF_VIDEO_FRAME_INFO_S           VdecUnfFrm;
    HI_UNF_VIDEO_USERDATA_S             VdecUsrData;
    HI_S32                              Ret;

    if (pAvplay->VidEnable)
    {
        Ret = HI_MPI_VDEC_CheckNewEvent(pAvplay->hVdec, &VdecEvent);
        if (HI_SUCCESS == Ret)
        {
            if (VdecEvent.bNewFrame && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME])
            {
                Ret = HI_MPI_VDEC_ReadNewFrame(pAvplay->hVdec, &VdecDrvFrm);
                if (HI_SUCCESS == Ret)
                {
                    AVPLAY_DRV2UNF_VidFrm(&VdecDrvFrm, &VdecUnfFrm);
                    AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME, (HI_U32)(&VdecUnfFrm));
                }
                else
                {
                    HI_ERR_AVPLAY("call HI_MPI_VDEC_ReadNewFrame failed.\n");
                }
            }

            if (VdecEvent.bNewUserData && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_NEW_USER_DATA])
            {
                Ret = HI_MPI_VDEC_ChanRecvUsrData(pAvplay->hVdec, &VdecUsrData);
                if (HI_SUCCESS == Ret)
                {
                    AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NEW_USER_DATA, (HI_U32)(&VdecUsrData));
                }
                else
                {
                    HI_ERR_AVPLAY("call HI_MPI_VDEC_ReadNewFrame failed.\n");
                }
            }

            if (VdecEvent.bNormChange && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_NORM_SWITCH])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NORM_SWITCH, (HI_U32)(&(VdecEvent.stNormChangeParam)));
            }

            if (VdecEvent.bFramePackingChange && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_FRAMEPACKING_CHANGE])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_FRAMEPACKING_CHANGE, (HI_U32)(VdecEvent.enFramePackingType));
            }

            if (VdecEvent.bIFrameErr && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_IFRAME_ERR])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_IFRAME_ERR, HI_NULL);
            }

            if (VdecEvent.bUnSupportStream && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_VID_UNSUPPORT])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_VID_UNSUPPORT, HI_NULL);
            }
            
            if (VdecEvent.bFirstValidPts)
            {
                (HI_VOID)HI_MPI_SYNC_SetExtInfo(pAvplay->hSync, SYNC_EXT_INFO_FIRST_PTS, (HI_VOID *)VdecEvent.u32FirstValidPts);
            }

            if (VdecEvent.bSecondValidPts)
            {
                (HI_VOID)HI_MPI_SYNC_SetExtInfo(pAvplay->hSync, SYNC_EXT_INFO_SECOND_PTS, (HI_VOID *)VdecEvent.u32SecondValidPts);
            }
        }
        else
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_CheckNewEvent failed.\n");
        }
    }

    return;
}

HI_VOID AVPLAY_ProcSyncEvent(AVPLAY_S *pAvplay)
{
    HI_S32              Ret;
    SYNC_EVENT_S        SyncEvent;

    Ret = HI_MPI_SYNC_CheckNewEvent(pAvplay->hSync, &SyncEvent);
    if (HI_SUCCESS == Ret)
    {
        if (SyncEvent.bVidPtsJump &&  pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP])
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP, (HI_U32)(&(SyncEvent.VidPtsJumpParam)));
        }

        if (SyncEvent.bAudPtsJump &&  pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP])
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP, (HI_U32)(&(SyncEvent.AudPtsJumpParam)));
        }

        if (SyncEvent.bStatChange && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_SYNC_STAT_CHANGE])
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_SYNC_STAT_CHANGE, (HI_U32)(&(SyncEvent.StatParam)));
        }
    }
    else
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_CheckNewEvent failed.\n");
    }

    return;
}

HI_VOID AVPLAY_ProcCheckStandBy(AVPLAY_S *pAvplay)
{
    /*ts mode, we need reset avplay when system standby*/
    if (pAvplay->bStandBy && HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        pAvplay->bStandBy = HI_FALSE;
        (HI_VOID)AVPLAY_Reset(pAvplay);
        HI_WARN_AVPLAY("System standby, now reset the AVPLAY!\n");
    }

    return;
}


HI_VOID *AVPLAY_StatThread(HI_VOID *Arg)
{
    AVPLAY_S        *pAvplay;

    pAvplay = (AVPLAY_S *)Arg;

    while (pAvplay->AvplayThreadRun)
    {        
        if (pAvplay->bSetEosFlag)
        {
            AVPLAY_ProcEos(pAvplay);
        }

        AVPLAY_ProcVidEvent(pAvplay);

        AVPLAY_ProcSyncEvent(pAvplay);

        usleep(AVPLAY_SYS_SLEEP_TIME*1000);
    }

    return HI_NULL;
}

HI_VOID *AVPLAY_DataThread(HI_VOID *Arg)
{
    AVPLAY_S                        *pAvplay;

    pAvplay = (AVPLAY_S *)Arg;

    pAvplay->ThreadID = syscall(__NR_gettid);

    while (pAvplay->AvplayThreadRun)
    {
        HI_SYS_GetTimeStampMs(&pAvplay->DebugInfo.ThreadBeginTime);

        if ((pAvplay->DebugInfo.ThreadBeginTime - pAvplay->DebugInfo.ThreadEndTime > AVPLAY_THREAD_TIMEOUT)
            && (0 != pAvplay->DebugInfo.ThreadEndTime)
            )
        {
            pAvplay->DebugInfo.ThreadScheTimeOutCnt++;
        }
    
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
 
        pAvplay->AvplayProcContinue = HI_FALSE;
        
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            AVPLAY_ProcDmxToAdec(pAvplay);
        }
        
        AVPLAY_ProcAdecToAo(pAvplay);

#ifndef AVPLAY_VID_THREAD
        AVPLAY_ProcVdecToVo(pAvplay);
#endif
        AVPLAY_ProcCheckBuf(pAvplay);

        AVPLAY_ProcCheckStandBy(pAvplay);

        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);

        HI_SYS_GetTimeStampMs(&pAvplay->DebugInfo.ThreadEndTime); 

        if (pAvplay->DebugInfo.ThreadEndTime - pAvplay->DebugInfo.ThreadBeginTime > AVPLAY_THREAD_TIMEOUT)
        {
            pAvplay->DebugInfo.ThreadExeTimeOutCnt++;
        }
                
        if (pAvplay->AvplayProcContinue)
        {
            continue;
        }

        (HI_VOID)usleep(AVPLAY_SYS_SLEEP_TIME*1000);
    }

    return    HI_NULL ;
}

HI_VOID *AVPLAY_VidDataThread(HI_VOID *Arg)
{
    AVPLAY_S                        *pAvplay;

    pAvplay = (AVPLAY_S *)Arg;

    while (pAvplay->AvplayThreadRun)
    {
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
 
        pAvplay->AvplayVidProcContinue = HI_FALSE;
       
        AVPLAY_ProcVdecToVo(pAvplay);

        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);

        if (pAvplay->AvplayVidProcContinue)
        {
            continue;
        }

        (HI_VOID)usleep(AVPLAY_SYS_SLEEP_TIME*1000);
    }

    return    HI_NULL ;
}


HI_VOID AVPLAY_ResetProcFlag(AVPLAY_S *pAvplay)
{
    HI_U32 i;

    pAvplay->AvplayProcContinue = HI_FALSE;
    pAvplay->AvplayVidProcContinue = HI_FALSE;

    for (i=0; i<AVPLAY_PROC_BUTT; i++)
    {
        pAvplay->AvplayProcDataFlag[i] = HI_FALSE;
    }

    pAvplay->bSendedFrmToVirWin = HI_FALSE;

    pAvplay->PreVidBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    pAvplay->PreAudBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    pAvplay->VidDiscard = HI_FALSE;

    pAvplay->bSetEosFlag = HI_FALSE;
    pAvplay->AvgStrmBitrate = 0;
    pAvplay->bSetAudEos = HI_FALSE;
    pAvplay->bStandBy = HI_FALSE;

    pAvplay->bSetEosBeginTime = HI_FALSE;
    pAvplay->u32EosBeginTime = 0xFFFFFFFF;

    pAvplay->AdecDelayMs = 0;

    pAvplay->u32DispOptimizeFlag = 0;

    if (HI_TRUE == pAvplay->CurBufferEmptyState)
    {
       pAvplay->PreTscnt =0;
       pAvplay->PreAudEsBuf = 0;
       pAvplay->PreAudEsBufWPtr = 0;
       pAvplay->PreVidEsBuf = 0;
       pAvplay->PreVidEsBufWPtr = 0;
       pAvplay->CurBufferEmptyState = HI_FALSE;
    }   
    else
    {
       pAvplay->PreTscnt = 0xFFFFFFFF;
       pAvplay->PreAudEsBuf = 0xFFFFFFFF;
       pAvplay->PreAudEsBufWPtr = 0xFFFFFFFF;
       pAvplay->PreVidEsBuf = 0xFFFFFFFF;
       pAvplay->PreVidEsBufWPtr = 0xFFFFFFFF;       
    }

    memset(&pAvplay->DebugInfo, 0, sizeof(AVPLAY_DEBUG_INFO_S));
    memset(&pAvplay->LstFrmPack, 0, sizeof(HI_DRV_VIDEO_FRAME_PACKAGE_S));

    pAvplay->stIFrame.hport = HI_INVALID_HANDLE;
    memset(&pAvplay->stIFrame.stFrameVideo, 0x0, sizeof(HI_DRV_VIDEO_FRAME_S));

    return;
}
HI_S32 AVPLAY_CreateThread(AVPLAY_S *pAvplay)
{
    struct sched_param   SchedParam;
    HI_S32                 Ret = 0;

    (HI_VOID)pthread_attr_init(&pAvplay->AvplayThreadAttr);

    if (THREAD_PRIO_REALTIME == pAvplay->AvplayThreadPrio)
    {
        (HI_VOID)pthread_attr_setschedpolicy(&pAvplay->AvplayThreadAttr, SCHED_FIFO);
        (HI_VOID)pthread_attr_getschedparam(&pAvplay->AvplayThreadAttr, &SchedParam);
        SchedParam.sched_priority = 4;
        (HI_VOID)pthread_attr_setschedparam(&pAvplay->AvplayThreadAttr, &SchedParam);
    }
    else
    {
        (HI_VOID)pthread_attr_setschedpolicy(&pAvplay->AvplayThreadAttr, SCHED_OTHER);
    }

    /* create avplay data process thread */
    Ret = pthread_create(&pAvplay->AvplayDataThdInst, &pAvplay->AvplayThreadAttr, AVPLAY_DataThread, pAvplay);
    if (HI_SUCCESS != Ret)
    {
        pthread_attr_destroy(&pAvplay->AvplayThreadAttr);
        return HI_FAILURE;
    }

#ifdef AVPLAY_VID_THREAD
    /* create avplay data process thread */
    Ret = pthread_create(&pAvplay->AvplayVidDataThdInst, &pAvplay->AvplayThreadAttr, AVPLAY_VidDataThread, pAvplay);
    if (HI_SUCCESS != Ret)
    {
        pAvplay->AvplayThreadRun = HI_FALSE;
        (HI_VOID)pthread_join(pAvplay->AvplayDataThdInst, HI_NULL);
        pthread_attr_destroy(&pAvplay->AvplayThreadAttr);
        return HI_FAILURE;
    }
#endif

    /* create avplay status check thread */
    Ret = pthread_create(&pAvplay->AvplayStatThdInst, &pAvplay->AvplayThreadAttr, AVPLAY_StatThread, pAvplay);
    if (HI_SUCCESS != Ret)
    {
        pAvplay->AvplayThreadRun = HI_FALSE;
#ifdef AVPLAY_VID_THREAD
        (HI_VOID)pthread_join(pAvplay->AvplayVidDataThdInst, HI_NULL);
#endif
        (HI_VOID)pthread_join(pAvplay->AvplayDataThdInst, HI_NULL);
        pthread_attr_destroy(&pAvplay->AvplayThreadAttr);
        return HI_FAILURE;
    }

    return    HI_SUCCESS ;
}

HI_S32 AVPLAY_MallocVdec(AVPLAY_S *pAvplay, const HI_VOID *pPara)
{
    HI_S32           Ret;
    HI_UNF_AVPLAY_OPEN_OPT_S *pOpenPara = (HI_UNF_AVPLAY_OPEN_OPT_S*)pPara;
    
    Ret = HI_MPI_VDEC_Init();
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_Init failed.\n");
        return Ret;
    }

    Ret = HI_MPI_VDEC_AllocChan(&pAvplay->hVdec, pOpenPara);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_AllocChan failed.\n");
        (HI_VOID)HI_MPI_VDEC_DeInit();
    }

    return Ret;
}

HI_S32 AVPLAY_FreeVdec(AVPLAY_S *pAvplay)
{
    HI_S32           Ret;

    Ret = HI_MPI_VDEC_FreeChan(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_freeChan failed.\n");
        return Ret;
    }

    pAvplay->hVdec = HI_INVALID_HANDLE;

    Ret = HI_MPI_VDEC_DeInit();
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_deInit failed.\n");
        return Ret;
    }

    return Ret;
}

HI_S32 AVPLAY_MallocAdec(AVPLAY_S *pAvplay)
{
    HI_S32           Ret;

    Ret = HI_MPI_ADEC_Init(HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_Init failed.\n");
        return Ret;
    }

    Ret = HI_MPI_ADEC_Open(&pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_Open failed.\n");
        (HI_VOID)HI_MPI_ADEC_deInit();
    }

    return Ret;
}

HI_S32 AVPLAY_FreeAdec(AVPLAY_S *pAvplay)
{
    HI_S32           Ret;

    Ret = HI_MPI_ADEC_Close(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_Close failed.\n");
        return Ret;
    }

    pAvplay->hAdec = HI_INVALID_HANDLE;

    Ret = HI_MPI_ADEC_deInit();
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_deInit failed.\n");
    }

    return Ret;
}


HI_S32 AVPLAY_MallocDmxChn(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_BUFID_E BufId)
{
    HI_S32                      Ret = 0;
    HI_UNF_DMX_CHAN_ATTR_S      DmxChnAttr;

    memset(&DmxChnAttr, 0, sizeof(HI_UNF_DMX_CHAN_ATTR_S));
    DmxChnAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;

    if (HI_UNF_AVPLAY_BUF_ID_ES_VID == BufId)
    {
        DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_VID;
        DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize;
        Ret = HI_MPI_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_CreateChannel failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == BufId)
    {
        DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_AUD;
        DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize / 3;
        Ret = HI_MPI_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &pAvplay->hDmxAud[0]);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_CreateChannel failed.\n");
            return HI_FAILURE;
        }
        
        pAvplay->DmxAudChnNum = 1;
    }

    return Ret;
}

HI_S32 AVPLAY_FreeDmxChn(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_BUFID_E BufId)
{
    HI_S32              Ret = 0;
    HI_U32              i;

    if ((HI_UNF_AVPLAY_BUF_ID_ES_VID == BufId) && (pAvplay->hDmxVid != HI_INVALID_HANDLE))
    {
        Ret = HI_MPI_DMX_DestroyChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_DestroyChannel failed.\n");
            return Ret;
        }

        pAvplay->hDmxVid = HI_INVALID_HANDLE;
    }
    else if ((HI_UNF_AVPLAY_BUF_ID_ES_AUD == BufId))
    {

        for(i = 0; i < pAvplay->DmxAudChnNum; i++)
        {
            if(pAvplay->hDmxAud[i] != HI_INVALID_HANDLE)
            {
                Ret = HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[i]);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("call HI_MPI_DMX_DestroyChannel failed.\n");
                    return Ret;
                }

                pAvplay->hDmxAud[i] = HI_INVALID_HANDLE;
            }
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_MallocVidChn(AVPLAY_S *pAvplay, const HI_VOID *pPara)
{
    HI_S32             Ret = 0;
    
    Ret = AVPLAY_MallocVdec(pAvplay, pPara);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay malloc vdec failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay malloc vid dmx chn failed.\n");
            (HI_VOID)AVPLAY_FreeVdec(pAvplay);
            return Ret;
        }
        
        Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, 0, pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
            (HI_VOID)AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
            (HI_VOID)AVPLAY_FreeVdec(pAvplay);
            return Ret;
        }
    }
    else if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize, HI_INVALID_HANDLE);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
            (HI_VOID)AVPLAY_FreeVdec(pAvplay);
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_FreeVidChn(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;

    Ret = HI_MPI_VDEC_ChanBufferDeInit(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferDeInit failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay free dmx vid chn failed.\n");
            return Ret;
        }
    }

    Ret = AVPLAY_FreeVdec(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay free vdec failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_MallocAudChn(AVPLAY_S *pAvplay)
{
    HI_S32             Ret = 0;

    Ret = AVPLAY_MallocAdec(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay malloc adec failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay malloc aud dmx chn failed.\n");
            (HI_VOID)AVPLAY_FreeAdec(pAvplay);
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_FreeAudChn(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay free dmx aud chn failed.\n");
            return Ret;
        }
    }

    Ret = AVPLAY_FreeAdec(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay free vdec failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetStreamMode(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_S *pAvplayAttr)
{
    HI_S32    Ret;

#if 0    
    if ((pAvplayAttr->u32DemuxId != 0)
      &&(pAvplayAttr->u32DemuxId != 4)
       )
    {
        HI_ERR_AVPLAY("para pAvplayAttr->u32DemuxId is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
#endif

    if (pAvplayAttr->stStreamAttr.enStreamType >= HI_UNF_AVPLAY_STREAM_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("para pAvplayAttr->stStreamAttr.enStreamType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pAvplayAttr->stStreamAttr.u32VidBufSize > AVPLAY_MAX_VID_SIZE)
      ||(pAvplayAttr->stStreamAttr.u32VidBufSize < AVPLAY_MIN_VID_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pAvplayAttr->stStreamAttr.u32VidBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pAvplayAttr->stStreamAttr.u32AudBufSize > AVPLAY_MAX_AUD_SIZE)
      ||(pAvplayAttr->stStreamAttr.u32AudBufSize < AVPLAY_MIN_AUD_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pAvplayAttr->stStreamAttr.u32AudBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    
    if (pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("vid chn is enable, can not set stream mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is enable, can not set stream mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_ChanBufferDeInit(pAvplay->hVdec);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferDeInit failed.\n");
            return Ret;
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free dmx vid chn failed.\n");
                return Ret;
            }
        }
    }

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free dmx aud chn failed.\n");
                return Ret;
            }
        }
    }

    if (pAvplay->hDmxPcr != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_DMX_DestroyPcrChannel(pAvplay->hDmxPcr);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay free pcr chn failed.\n");
            return Ret;
        }

        pAvplay->hDmxPcr = HI_INVALID_HANDLE;
    }

    /* record stream attributes */
    memcpy(&pAvplay->AvplayAttr, pAvplayAttr, sizeof(HI_UNF_AVPLAY_ATTR_S));

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc vid dmx chn failed.\n");
                return Ret;
            }
            
            Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, 0, pAvplay->hDmxVid);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
                (HI_VOID)AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
                return Ret;
            }
        }
    else if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize, HI_INVALID_HANDLE);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
                return Ret;
            }
        }
    }

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc aud dmx chn failed.\n");
                return Ret;
            }
        }
    }
    
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_CreatePcrChannel(pAvplay->AvplayAttr.u32DemuxId, &pAvplay->hDmxPcr);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay malloc pcr chn failed.\n");
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetStreamMode(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_S *pAvplayAttr)
{
    memcpy(pAvplayAttr, &pAvplay->AvplayAttr, sizeof(HI_UNF_AVPLAY_ATTR_S));

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetAdecAttr(AVPLAY_S *pAvplay, const HI_UNF_ACODEC_ATTR_S *pAdecAttr)
{
    ADEC_ATTR_S  AdecAttr;
    HI_S32       Ret;

    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close, can not set adec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
#if 0
    if (pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is running, can not set adec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
#endif
    AdecAttr.bEnable = HI_FALSE;
    AdecAttr.bEosState = HI_FALSE;
    AdecAttr.u32CodecID = (HI_U32)pAdecAttr->enType;
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        AdecAttr.u32InBufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize * 2 / 3;
    }
    else
    {
        AdecAttr.u32InBufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize;
    }
    AdecAttr.u32OutBufNum = AVPLAY_ADEC_FRAME_NUM;
    AdecAttr.sOpenPram = pAdecAttr->stDecodeParam;

    Ret = HI_MPI_ADEC_SetAllAttr(pAvplay->hAdec, &AdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_SetAllAttr failed.\n");
        return Ret;
    }

    pAvplay->AdecType = (HI_U32)pAdecAttr->enType;

    return Ret;
}

HI_S32 AVPLAY_GetAdecAttr(const AVPLAY_S *pAvplay, HI_UNF_ACODEC_ATTR_S *pAdecAttr)
{
    ADEC_ATTR_S  AdecAttr;
    HI_S32       Ret;

    memset(&AdecAttr, 0x0, sizeof(ADEC_ATTR_S));

    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close, can not set adec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_ADEC_GetAllAttr(pAvplay->hAdec, &AdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_GetAllAttr failed.\n");
    }

    pAdecAttr->enType = (HA_CODEC_ID_E)AdecAttr.u32CodecID;
    pAdecAttr->stDecodeParam = AdecAttr.sOpenPram;

    return Ret;
}

HI_S32 AVPLAY_CheckHandle(HI_HANDLE hAvplay, AVPLAY_USR_ADDR_S  *pAvplayUsrAddr)
{
    if ((hAvplay & 0xffff0000) != (HI_ID_AVPLAY << 16))
    {
        HI_WARN_AVPLAY("this is invalid handle.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    
    pAvplayUsrAddr->AvplayId = hAvplay & 0xff;

    /* check if the handle is valid */
    return ioctl(g_AvplayDevFd, CMD_AVPLAY_CHECK_ID, pAvplayUsrAddr);
}


HI_S32 AVPLAY_SetVdecAttr(AVPLAY_S *pAvplay, HI_UNF_VCODEC_ATTR_S *pVdecAttr)
{
    HI_UNF_VCODEC_ATTR_S  VdecAttr;
    HI_S32                Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanAttr(pAvplay->hVdec, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanAttr failed.\n");
        return Ret;
    }

    if (pAvplay->VidEnable)
    {
        if (VdecAttr.enType != pVdecAttr->enType)
        {
            HI_ERR_AVPLAY("vid chn is running, can not set vdec type.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (HI_UNF_VCODEC_TYPE_VC1 == VdecAttr.enType
         && (VdecAttr.unExtAttr.stVC1Attr.bAdvancedProfile != pVdecAttr->unExtAttr.stVC1Attr.bAdvancedProfile
            || VdecAttr.unExtAttr.stVC1Attr.u32CodecVersion != pVdecAttr->unExtAttr.stVC1Attr.u32CodecVersion))
        {
            HI_ERR_AVPLAY("vid chn is running, can not set vdec type.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
    }

    Ret = HI_MPI_VDEC_SetChanAttr(pAvplay->hVdec,pVdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetChanAttr failed.\n");
    }

    memcpy(&pAvplay->VdecAttr, pVdecAttr, sizeof(HI_UNF_VCODEC_ATTR_S));

    return Ret;
}


HI_S32 AVPLAY_GetVdecAttr(const AVPLAY_S *pAvplay, HI_UNF_VCODEC_ATTR_S *pVdecAttr)
{
    HI_S32                Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanAttr(pAvplay->hVdec, pVdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanAttr failed.\n");
    }

    return Ret;
}

HI_S32 AVPLAY_SetPid(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, const HI_U32 *pPid)
{
    HI_S32       Ret;
    HI_U32       i;

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_ATTR_ID_AUD_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            HI_ERR_AVPLAY("aud chn is close, can not set aud pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }    
    
        if(pAvplay->DmxAudChnNum == 1)
        {
            if (pAvplay->AudEnable)
            {
                HI_ERR_AVPLAY("aud chn is running, can not set aud pid.\n");
                return HI_ERR_AVPLAY_INVALID_OPT;
            }    
            
            Ret = HI_MPI_DMX_SetChannelPID(pAvplay->hDmxAud[0], *pPid);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_DMX_SetChannelPID failed.\n");
            }

            pAvplay->DmxAudPid[0] = *pPid;
        }
        /*multi audio*/
        else
        {
            AVPLAY_Mutex_Lock(pAvplay->pAvplayThreadMutex);

            for(i=0; i<pAvplay->DmxAudChnNum; i++)
            {
                if(pAvplay->DmxAudPid[i] == *pPid)
                {
                    break;
                }
            }

            if(i < pAvplay->DmxAudChnNum)
            {
                /* if the es buf has not been released */
                if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
                {
                    (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
                }
                                                
                pAvplay->CurDmxAudChn = i; 
            }
            
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;

            (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);

            (HI_VOID)HI_MPI_ADEC_Stop(pAvplay->hAdec);
            
            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    (HI_VOID)HI_MPI_AO_Track_Flush(pAvplay->hTrack[i]);
                }
            }

            if (HI_NULL != pAvplay->pstAcodecAttr)
            {
                (HI_VOID)AVPLAY_SetAdecAttr(pAvplay, (HI_UNF_ACODEC_ATTR_S *)(pAvplay->pstAcodecAttr + pAvplay->CurDmxAudChn));
            }
            
            (HI_VOID)HI_MPI_ADEC_Start(pAvplay->hAdec);
            
            (HI_VOID)HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_AUD);

            AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);  

            Ret = HI_SUCCESS;
        }
    }
    else if (HI_UNF_AVPLAY_ATTR_ID_VID_PID == enAttrID)
    {
        if (pAvplay->VidEnable)
        {
            HI_ERR_AVPLAY("vid chn is running, can not set vid pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            HI_ERR_AVPLAY("vid chn is close, can not set vid pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_SetChannelPID(pAvplay->hDmxVid, *pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_SetChannelPID failed.\n");
        }

        pAvplay->DmxVidPid = *pPid;
    }
    else
    {
        if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_STOP)
        {
            HI_ERR_AVPLAY("AVPLAY is not stopped, can not set pcr pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (HI_INVALID_HANDLE == pAvplay->hDmxPcr)
        {
            HI_ERR_AVPLAY("pcr chn is close, can not set pcr pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, *pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
        }

        pAvplay->DmxPcrPid = *pPid;
    }

    return Ret;
}

HI_S32 AVPLAY_GetPid(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_U32 *pPid)
{
    HI_S32       Ret;

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_ATTR_ID_AUD_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            HI_ERR_AVPLAY("aud chn is close, can not get aud pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_GetChannelPID(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_GetChannelPID failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_ATTR_ID_VID_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            HI_ERR_AVPLAY("vid chn is close, can not get vid pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_GetChannelPID(pAvplay->hDmxVid, pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_GetChannelPID failed.\n");
        }
    }
    else
    {
        if (HI_INVALID_HANDLE == pAvplay->hDmxPcr)
        {
            HI_ERR_AVPLAY("pcr chn is close, can not get pcr pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_PcrPidGet(pAvplay->hDmxPcr, pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidGet failed.\n");
        }
    }

    return Ret;
}

HI_S32 AVPLAY_SetSyncAttr(AVPLAY_S *pAvplay, HI_UNF_SYNC_ATTR_S *pSyncAttr)
{
    HI_S32                Ret;

    Ret = HI_MPI_SYNC_SetAttr(pAvplay->hSync, pSyncAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_SetAttr failed.\n");
    }

    return Ret;
}

HI_S32 AVPLAY_GetSyncAttr(AVPLAY_S *pAvplay, HI_UNF_SYNC_ATTR_S *pSyncAttr)
{
    HI_S32 Ret;
    
    Ret = HI_MPI_SYNC_GetAttr(pAvplay->hSync, pSyncAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_GetAttr failed.\n");
    }

    return Ret;
}

HI_S32 AVPLAY_SetOverflowProc(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_OVERFLOW_E *pOverflowProc)
{
    if (*pOverflowProc >= HI_UNF_AVPLAY_OVERFLOW_BUTT)
    {
        HI_ERR_AVPLAY("para OverflowProc is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    pAvplay->OverflowProc = *pOverflowProc;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetOverflowProc(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_OVERFLOW_E *pOverflowProc)
{
    *pOverflowProc = pAvplay->OverflowProc;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetLowDelay(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_LOW_DELAY_ATTR_S *pstAttr)
{
    HI_S32      Ret;
    HI_U32      i;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chan is closed!\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("vid chan is running!\n");
        return HI_ERR_AVPLAY_INVALID_OPT;        
    }

    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        Ret = HI_MPI_WIN_SetQuickOutput(pAvplay->MasterFrmChn.hWindow, pstAttr->bEnable);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_WIN_SetQuickOutput ERR, Ret=%#x\n", Ret);
        }
    }
    
    for (i = 0; i < pAvplay->SlaveChnNum; i++)
    {
        Ret = HI_MPI_WIN_SetQuickOutput(pAvplay->SlaveFrmChn[i].hWindow, pstAttr->bEnable);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_WIN_SetQuickOutput ERR, Ret=%#x\n", Ret);
        }
    }

    /*call vdec function ...

    HI_MPI_VDEC_SetLowDelay(HI_HANDLE hVdec, HI_UNF_AVPLAY_LOW_DELAY_ATTR_S *pstAttr);
    
    */
    pAvplay->LowDelayAttr = *pstAttr;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetLowDelay(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_LOW_DELAY_ATTR_S *pstAttr)
{
    *pstAttr = pAvplay->LowDelayAttr;

    return HI_SUCCESS;
}


HI_S32 AVPLAY_RelSpecialFrame(AVPLAY_S *pAvplay, HI_HANDLE hWin)
{
    HI_U32                              i;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);
        if (hWindow == hWin)
        {
            (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_RelAllVirChnFrame(AVPLAY_S *pAvplay)
{
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    for (i = 0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        for (j=0; j<pAvplay->VirChnNum; j++)
        {
            if (hWindow == pAvplay->VirFrmChn[j].hWindow)
            {
                (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);  
            }
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_RelAllChnFrame(AVPLAY_S *pAvplay)
{
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        AVPLAY_RelAllVirChnFrame(pAvplay);
    }
    else
    {
        for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);
              
             /* may be CurFrmPack has not master frame */
             if (hWindow == pAvplay->MasterFrmChn.hWindow)
             {
                 (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);  
                 break;
             }
        }

        for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);
        
            for (j=0; j<pAvplay->SlaveChnNum; j++)
            {
                if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
                {
                     (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                }
            }
        }

        memset(&pAvplay->LstFrmPack, 0, sizeof(HI_DRV_VIDEO_FRAME_PACKAGE_S));
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StartVidChn(const AVPLAY_S *pAvplay)
{
    HI_S32         Ret;

    Ret = HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_VID);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Start Vid failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_OpenChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_OpenChannel failed, Ret=%#x.\n", Ret);
            (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
            return Ret;
        }
    }
    
    Ret = HI_MPI_VDEC_ChanStart(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanStart failed, Ret=%#x.\n", Ret);
        
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            (HI_VOID)HI_MPI_DMX_CloseChannel(pAvplay->hDmxVid);
        }
        
        (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
        
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StopVidChn(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_STOP_MODE_E enMode)
{
    HI_S32         Ret;
    HI_U32         i;

    Ret = HI_MPI_VDEC_ChanStop(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanStop failed.\n");
        return Ret;
    }

    Ret = HI_MPI_VDEC_ResetChan(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ResetChan failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_CloseChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_CloseChannel failed.\n");
            return Ret;
        }
    }
 
    if (HI_UNF_AVPLAY_STOP_MODE_STILL == enMode)
    {
        if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        {
            (HI_VOID)HI_MPI_WIN_Reset(pAvplay->MasterFrmChn.hWindow, HI_DRV_WIN_SWITCH_LAST);
        }

        for (i=0; i<pAvplay->SlaveChnNum; i++)
        {
            (HI_VOID)HI_MPI_WIN_Reset(pAvplay->SlaveFrmChn[i].hWindow, HI_DRV_WIN_SWITCH_LAST);
        }

        for (i=0; i<pAvplay->VirChnNum; i++)
        {
            (HI_VOID)HI_MPI_WIN_Reset(pAvplay->VirFrmChn[i].hWindow, HI_DRV_WIN_SWITCH_LAST);
        }
    }
    else
    {
        if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        {
            (HI_VOID)HI_MPI_WIN_Reset(pAvplay->MasterFrmChn.hWindow, HI_DRV_WIN_SWITCH_BLACK);
        }

        for (i=0; i<pAvplay->SlaveChnNum; i++)
        {
            (HI_VOID)HI_MPI_WIN_Reset(pAvplay->SlaveFrmChn[i].hWindow, HI_DRV_WIN_SWITCH_BLACK);
        }

        for (i=0; i<pAvplay->VirChnNum; i++)
        {
            (HI_VOID)HI_MPI_WIN_Reset(pAvplay->VirFrmChn[i].hWindow, HI_DRV_WIN_SWITCH_BLACK);
        }
    }

    Ret = HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Stop Vid failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StartAudChn(AVPLAY_S *pAvplay)
{
    HI_S32         Ret;
    HI_U32         i, j;

    Ret = HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_AUD);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Start Aud failed.\n");
        return Ret;
    }

    Ret = HI_MPI_ADEC_Start(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_Start failed.\n");
        (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
        return Ret;
    }

    /* get the string of adec type */
    (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_HaSzNameInfo, &(pAvplay->AdecNameInfo));

    for (i=0; i<pAvplay->TrackNum; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
        {
            Ret |= HI_MPI_AO_Track_Start(pAvplay->hTrack[i]);
            if(HI_SUCCESS != Ret)
            {
                break;
            }
        }
    }

    if(i < pAvplay->TrackNum)
    {
        for(j = 0; j < i; j++)
        {
            (HI_VOID)HI_MPI_AO_Track_Stop(pAvplay->hTrack[j]);
        }
        
        HI_ERR_AVPLAY("call HI_MPI_AO_Track_Start failed.\n");
    
        (HI_VOID)HI_MPI_ADEC_Stop(pAvplay->hAdec);
        
        (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
        return Ret;        
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        for(i= 0; i < pAvplay->DmxAudChnNum; i++)
        {
            Ret = HI_MPI_DMX_OpenChannel(pAvplay->hDmxAud[i]);
            if(HI_SUCCESS != Ret)
            {
                break;
            }
        }

        if(i < pAvplay->DmxAudChnNum)
        {
            for(j = 0; j < i; j++)
            {
                (HI_VOID)HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[j]);
            }
            
            HI_ERR_AVPLAY("call HI_MPI_DMX_OpenChannel failed.\n");

            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    (HI_VOID)HI_MPI_AO_Track_Stop(pAvplay->hTrack[i]);
                }
            }

            (HI_VOID)HI_MPI_ADEC_Stop(pAvplay->hAdec);
            
            (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
            return Ret;        
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StopAudChn(const AVPLAY_S *pAvplay)
{
    HI_S32         Ret;
    HI_U32         i;

    Ret = HI_MPI_ADEC_Stop(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_Stop failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        for(i = 0; i < pAvplay->DmxAudChnNum; i++)
        {
            Ret = HI_MPI_DMX_CloseChannel(pAvplay->hDmxAud[i]);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_DMX_CloseChannel failed.\n");
                return Ret;
            }
        }
    }

    for (i=0; i<pAvplay->TrackNum; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
        {
            Ret |= HI_MPI_AO_Track_Stop(pAvplay->hTrack[i]);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_AO_Track_Stop failed.\n");
                return Ret;
            }

           //(HI_VOID)HI_MPI_AO_Track_Flush(pAvplay->hTrack[i]);
        }
    }

    Ret = HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Stop Aud failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_VOID AVPLAY_Play(AVPLAY_S *pAvplay)
{
    if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_PLAY)
    {
        pAvplay->LstStatus = pAvplay->CurStatus;
        pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_PLAY;
    }
    
    return;
}

HI_VOID AVPLAY_Stop(AVPLAY_S *pAvplay)
{
    if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_STOP)
    {
        pAvplay->LstStatus = pAvplay->CurStatus;
        pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_STOP;
    }

    /* may be only stop vidchannel,avoid there is frame at avplay, when stop avplay, we drop this frame*/
    if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
    {
        /*Release vpss frame*/                    
        (HI_VOID)AVPLAY_RelAllChnFrame(pAvplay);
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
    }

    AVPLAY_ResetProcFlag(pAvplay);
    return;
}

HI_VOID AVPLAY_Pause(AVPLAY_S *pAvplay)
{    
    pAvplay->LstStatus = pAvplay->CurStatus;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_PAUSE;

    return;
}

HI_VOID AVPLAY_Tplay(AVPLAY_S *pAvplay)
{
    pAvplay->LstStatus = pAvplay->CurStatus;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_TPLAY;

    return;
}

HI_S32 AVPLAY_ResetAudChn(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;
    
    if (pAvplay->AudEnable)
    {
        Ret = AVPLAY_StopAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("stop aud chn failed.\n");
            return Ret;
        }
    }

    if (pAvplay->AudEnable)
    {
        Ret = AVPLAY_StartAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("start aud chn failed.\n");
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_Reset(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;
    
    if (pAvplay->VidEnable)
    {
        Ret = AVPLAY_StopVidChn(pAvplay, HI_UNF_AVPLAY_STOP_MODE_STILL);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("stop vid chn failed.\n");
            return Ret;
        }
       
        /* may be only stop vidchannel,avoid there is frame at avplay, when stop avplay, we drop this frame*/
        if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
        {
            /*Release vpss frame*/                    
            (HI_VOID)AVPLAY_RelAllChnFrame(pAvplay);
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
        }        
    }
    
    if (pAvplay->AudEnable)
    {
        Ret = AVPLAY_StopAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("stop aud chn failed.\n");
            return Ret;
        }
    }
    
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, 0x1fff);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
            return Ret;
        }
    }
    
    if (pAvplay->VidEnable)
    {
        Ret = AVPLAY_StartVidChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("start vid chn failed.\n");
            return Ret;
        }
    }
    
    if (pAvplay->AudEnable)
    {
        Ret = AVPLAY_StartAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("start aud chn failed.\n");
            return Ret;
        }
    }
    
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, pAvplay->DmxPcrPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
            return Ret;
        }
    }
    
    if (HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
    {
        Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Play failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
    {
        Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Play failed.\n");
        }
    }
    else
    {
        Ret = HI_MPI_SYNC_Pause(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Pause failed.\n");
        }
    }
    
    AVPLAY_ResetProcFlag(pAvplay);

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetNum(HI_U32 *pAvplayNum)
{
    /* get the number of avplay created by this process */
    return ioctl(g_AvplayDevFd, CMD_AVPLAY_CHECK_NUM, pAvplayNum);
}


HI_S32 AVPLAY_SetMultiAud(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_MULTIAUD_ATTR_S *pAttr)
{
    HI_S32                      Ret;
    HI_UNF_DMX_CHAN_ATTR_S      DmxChnAttr;
    HI_U32                      i, j;

    if(HI_NULL == pAttr || HI_NULL == pAttr->pu32AudPid || HI_NULL == pAttr->pstAcodecAttr)
    {
        HI_ERR_AVPLAY("multi aud attr is null!\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if(pAttr->u32PidNum > AVPLAY_MAX_DMX_AUD_CHAN_NUM)
    {
        HI_ERR_AVPLAY("pidnum is too large\n");
        return HI_ERR_AVPLAY_INVALID_PARA;    
    }    

    if (pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is running, can not set aud pid.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close, can not set aud pid.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    memset(&DmxChnAttr, 0, sizeof(HI_UNF_DMX_CHAN_ATTR_S));
    DmxChnAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;
    DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_AUD;
    DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize / 3;

    /* destroy the old resource */
    for (i = 1; i < pAvplay->DmxAudChnNum; i++)
    {
        (HI_VOID)HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[i]);
    }

    if (HI_NULL != pAvplay->pstAcodecAttr)
    {
        HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pstAcodecAttr));
        pAvplay->pstAcodecAttr = HI_NULL;
    }    

    /* create new resource */
    for (i = 1; i < pAttr->u32PidNum; i++)
    {
        Ret = HI_MPI_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &(pAvplay->hDmxAud[i]));
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_CreateChannel failed.\n");
            break;
        }        
    }

    if(i != pAttr->u32PidNum)
    {
        for(j = 1; j < i; j++)
        {
            (HI_VOID)HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[j]);
        }

        return HI_FAILURE;
    }

    for(i = 0; i < pAttr->u32PidNum; i++)
    {
        Ret = HI_MPI_DMX_SetChannelPID(pAvplay->hDmxAud[i], *(pAttr->pu32AudPid + i));
        if(HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_SetChannelPID failed.\n");
            return Ret;
        }
        else
        {
            pAvplay->DmxAudPid[i] = *(pAttr->pu32AudPid + i);
        }
    }

    pAvplay->DmxAudChnNum = pAttr->u32PidNum;

    pAvplay->pstAcodecAttr = (HI_UNF_ACODEC_ATTR_S *)HI_MALLOC(HI_ID_AVPLAY, sizeof(HI_UNF_ACODEC_ATTR_S) * pAttr->u32PidNum);
    if (HI_NULL == pAvplay->pstAcodecAttr)
    {
        HI_ERR_AVPLAY("malloc pstAcodecAttr error.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    memcpy(pAvplay->pstAcodecAttr, pAttr->pstAcodecAttr, sizeof(HI_UNF_ACODEC_ATTR_S)*pAttr->u32PidNum);
    
    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetMultiAud(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_MULTIAUD_ATTR_S *pAttr)
{
    if (HI_NULL == pAttr || HI_NULL == pAttr->pu32AudPid || HI_NULL == pAttr->pstAcodecAttr)
    {
        HI_ERR_AVPLAY("ERR: invalid para\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    /* only get the real pid num */
    if (pAttr->u32PidNum > pAvplay->DmxAudChnNum)
    {
        pAttr->u32PidNum = pAvplay->DmxAudChnNum;
    }

    if (pAttr->u32PidNum > AVPLAY_MAX_DMX_AUD_CHAN_NUM)
    {
        HI_ERR_AVPLAY("u32PidNum is larger than %d\n", AVPLAY_MAX_DMX_AUD_CHAN_NUM);
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    
    memcpy(pAttr->pu32AudPid, pAvplay->DmxAudPid, sizeof(HI_U32) * pAttr->u32PidNum);

    memcpy(pAttr->pstAcodecAttr, pAvplay->pstAcodecAttr, sizeof(HI_UNF_ACODEC_ATTR_S) * pAttr->u32PidNum);

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetEosFlag(AVPLAY_S *pAvplay)
{
    HI_S32          Ret;

    if (!pAvplay->AudEnable && !pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("ERR: vid and aud both disable, can not set eos!\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    
    if (pAvplay->AudEnable)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_SetChannelEosFlag(pAvplay->hDmxAud[pAvplay->CurDmxAudChn]);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_DMX_SetChannelEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
        }
        
        if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_ADEC_SetEosFlag(pAvplay->hAdec);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_ADEC_SetEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
            
            Ret = HI_MPI_AO_Track_SetEosFlag(pAvplay->hSyncTrack, HI_TRUE);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_HIAO_SetEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
            } 
        }
    }
    
    if (pAvplay->VidEnable)
    {
        Ret = HI_MPI_VDEC_SetEosFlag(pAvplay->hVdec);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_SetEosFlag, Ret = %#x! \n", Ret);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
    
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_SetChannelEosFlag(pAvplay->hDmxVid);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_DMX_SetChannelEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
        }
    }

    pAvplay->bSetEosFlag = HI_TRUE;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetPortAttr(AVPLAY_S *pAvplay, HI_HANDLE hPort, VDEC_PORT_TYPE_E enType)
{
    HI_S32                      Ret;

    Ret = HI_MPI_VDEC_SetPortType(pAvplay->hVdec, hPort, enType);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_SetPortType, Ret=%#x.\n", Ret);
        return HI_ERR_AVPLAY_INVALID_OPT;        
    }
    
    Ret = HI_MPI_VDEC_EnablePort(pAvplay->hVdec, hPort);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_EnablePort, Ret=%#x.\n", Ret);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    return HI_SUCCESS;
}


HI_S32 AVPLAY_CreatePort(AVPLAY_S *pAvplay, HI_HANDLE hWin, VDEC_PORT_ABILITY_E enAbility, HI_HANDLE *phPort)
{
    HI_S32                      Ret;
    VDEC_PORT_PARAM_S           stPortPara;
    HI_DRV_WIN_SRC_INFO_S       stSrcInfo;

    memset(&stSrcInfo, 0x0, sizeof(HI_DRV_WIN_SRC_INFO_S));
    
    Ret = HI_MPI_VDEC_CreatePort(pAvplay->hVdec, phPort, enAbility);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_CreatePort.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetPortParam(pAvplay->hVdec, *phPort, &stPortPara);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_GetPortParam.\n");
        (HI_VOID)HI_MPI_VDEC_DestroyPort(pAvplay->hVdec, *phPort);
        *phPort = HI_INVALID_HANDLE;
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    stSrcInfo.hSrc = *phPort;
    stSrcInfo.pfAcqFrame = (PFN_GET_FRAME_CALLBACK)HI_NULL;
    stSrcInfo.pfRlsFrame = (PFN_PUT_FRAME_CALLBACK)stPortPara.pfVORlsFrame;
    stSrcInfo.pfSendWinInfo = (PFN_GET_WIN_INFO_CALLBACK)stPortPara.pfVOSendWinInfo;

    Ret = HI_MPI_WIN_SetSource(hWin, &stSrcInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_WIN_SetSource.\n");
        (HI_VOID)HI_MPI_VDEC_DestroyPort(pAvplay->hVdec, *phPort);
        *phPort = HI_INVALID_HANDLE;        
        return HI_ERR_AVPLAY_INVALID_OPT;
    }            

    return HI_SUCCESS;
}

HI_S32 AVPLAY_DestroyPort(AVPLAY_S *pAvplay, HI_HANDLE hWin, HI_HANDLE hPort)
{
    HI_S32                      Ret = HI_SUCCESS;
    HI_DRV_WIN_SRC_INFO_S       stSrcInfo;

    memset(&stSrcInfo, 0x0, sizeof(HI_DRV_WIN_SRC_INFO_S));

    stSrcInfo.hSrc = hPort;
    stSrcInfo.pfAcqFrame = (PFN_GET_FRAME_CALLBACK)HI_NULL;
    stSrcInfo.pfRlsFrame = (PFN_PUT_FRAME_CALLBACK)HI_NULL;
    stSrcInfo.pfSendWinInfo = (PFN_GET_WIN_INFO_CALLBACK)HI_NULL;

    Ret = HI_MPI_WIN_SetSource(hWin, &stSrcInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_WIN_SetSource.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_DestroyPort(pAvplay->hVdec, hPort);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_DestroyPort.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_Init(HI_VOID)
{
    struct stat st;
    HI_S32 Ret;

    HI_AVPLAY_LOCK();

    /* already opened in this process */
    if (g_AvplayDevFd > 0)
    {
        HI_AVPLAY_UNLOCK();
        return HI_SUCCESS;
    }

    if (HI_FAILURE == stat(g_AvplayDevName, &st))
    {
        HI_FATAL_AVPLAY("AVPLAY is not exist.\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_DEV_NOT_EXIST;
    }

    if (!S_ISCHR (st.st_mode))
    {
        HI_FATAL_AVPLAY("AVPLAY is not device.\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_NOT_DEV_FILE;
    }

    g_AvplayDevFd = open(g_AvplayDevName, O_RDWR|O_NONBLOCK, 0);

    if (g_AvplayDevFd < 0)
    {
        HI_FATAL_AVPLAY("open AVPLAY err.\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_DEV_OPEN_ERR;
    }

    Ret = HI_MPI_SYNC_Init();
    if (Ret != HI_SUCCESS)
    {
        HI_FATAL_AVPLAY("call HI_MPI_SYNC_Init failed.\n");
        close(g_AvplayDevFd);
        g_AvplayDevFd = -1;
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_DEV_OPEN_ERR;
    }

    HI_AVPLAY_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_DeInit(HI_VOID)
{
    HI_S32  Ret;
    HI_U32  AvplayNum = 0;

    HI_AVPLAY_LOCK();

    if (g_AvplayDevFd < 0)
    {
        HI_AVPLAY_UNLOCK();
        return HI_SUCCESS;
    }

    Ret = AVPLAY_GetNum(&AvplayNum);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("call AVPLAY_GetNum failed.\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (AvplayNum)
    {
        HI_ERR_AVPLAY("there are %d AVPLAY not been destroied.\n", AvplayNum);
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_SYNC_DeInit();
    if(HI_SUCCESS != Ret)
    {
        HI_FATAL_AVPLAY("call HI_MPI_SYNC_DeInit failed.\n");
    }

    Ret = close(g_AvplayDevFd);
    if(HI_SUCCESS != Ret)
    {
        HI_FATAL_AVPLAY("DeInit AVPLAY err.\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_DEV_CLOSE_ERR;
    }

    g_AvplayDevFd = -1;

    HI_AVPLAY_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetDefaultConfig(HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_UNF_AVPLAY_STREAM_TYPE_E enCfg)
{
    if (!pstAvAttr)
    {
        HI_ERR_AVPLAY("para pstAvAttr is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enCfg >= HI_UNF_AVPLAY_STREAM_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("para enCfg is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == enCfg)
    {
        pstAvAttr->stStreamAttr.enStreamType = HI_UNF_AVPLAY_STREAM_TYPE_TS;
        pstAvAttr->stStreamAttr.u32VidBufSize = AVPLAY_DFT_VID_SIZE;
        pstAvAttr->stStreamAttr.u32AudBufSize = AVPLAY_TS_DFT_AUD_SIZE;
    }
    else if (HI_UNF_AVPLAY_STREAM_TYPE_ES == enCfg)
    {
        pstAvAttr->stStreamAttr.enStreamType = HI_UNF_AVPLAY_STREAM_TYPE_ES;
        pstAvAttr->stStreamAttr.u32VidBufSize = AVPLAY_DFT_VID_SIZE;
        pstAvAttr->stStreamAttr.u32AudBufSize = AVPLAY_ES_DFT_AUD_SIZE;
    }

    pstAvAttr->u32DemuxId = 0;

    return HI_SUCCESS ;
}

HI_S32 HI_MPI_AVPLAY_Create(const HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_HANDLE *phAvplay)
{
    AVPLAY_S               *pAvplay = HI_NULL;
    AVPLAY_CREATE_S        AvplayCreate;
    AVPLAY_USR_ADDR_S      AvplayUsrAddr;
    HI_UNF_SYNC_ATTR_S     SyncAttr;
    HI_U32                 i;
    HI_S32                 Ret = 0;

    if (!pstAvAttr)
    {
        HI_ERR_AVPLAY("para pstAvAttr is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phAvplay)
    {
        HI_ERR_AVPLAY("para phAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (pstAvAttr->stStreamAttr.enStreamType >= HI_UNF_AVPLAY_STREAM_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("para pstAvAttr->stStreamAttr.enStreamType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pstAvAttr->stStreamAttr.u32VidBufSize > AVPLAY_MAX_VID_SIZE)
      ||(pstAvAttr->stStreamAttr.u32VidBufSize < AVPLAY_MIN_VID_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pstAvAttr->stStreamAttr.u32VidBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pstAvAttr->stStreamAttr.u32AudBufSize > AVPLAY_MAX_AUD_SIZE)
      ||(pstAvAttr->stStreamAttr.u32AudBufSize < AVPLAY_MIN_AUD_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pstAvAttr->stStreamAttr.u32AudBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    /* create avplay */
    AvplayCreate.AvplayStreamtype = pstAvAttr->stStreamAttr.enStreamType;
    Ret = ioctl(g_AvplayDevFd, CMD_AVPLAY_CREATE, &AvplayCreate);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY CMD_AVPLAY_CREATE failed.\n");
        goto RET;
    }

    /* remap the memories allocated in kernel space to user space */
    pAvplay = (AVPLAY_S *)(HI_MMAP(AvplayCreate.AvplayPhyAddr, 0x2000));
    HI_INFO_AVPLAY("AvplayCreate.AvplayPhyAddr:0x%x, sizeof(AVPLAY_S):0x%x, sizeof(pthread_mutex_t):0x%x\n", AvplayCreate.AvplayPhyAddr, sizeof(AVPLAY_S), sizeof(pthread_mutex_t)); 
    if (!pAvplay)
    {
        HI_ERR_AVPLAY("AVPLAY memmap failed.\n");       
        Ret = HI_ERR_AVPLAY_CREATE_ERR;
        goto AVPLAY_DESTROY;
    }

    pAvplay->pAvplayThreadMutex = (pthread_mutex_t *)HI_MALLOC(HI_ID_AVPLAY, sizeof(pthread_mutex_t));
    if (pAvplay->pAvplayThreadMutex == HI_NULL)
    {
        Ret = HI_ERR_AVPLAY_CREATE_ERR;
        goto AVPLAY_UNMAP;
    }
    (HI_VOID)pthread_mutex_init(pAvplay->pAvplayThreadMutex, NULL);

#ifdef AVPLAY_VID_THREAD
    pAvplay->pAvplayVidThreadMutex = (pthread_mutex_t *)HI_MALLOC(HI_ID_AVPLAY, sizeof(pthread_mutex_t));
    if (pAvplay->pAvplayVidThreadMutex == HI_NULL)
    {
        Ret = HI_ERR_AVPLAY_CREATE_ERR;
        goto DESTROY_THREAD_MUTEX;
    }
    (HI_VOID)pthread_mutex_init(pAvplay->pAvplayVidThreadMutex, NULL);
#endif

    pAvplay->pAvplayMutex = (pthread_mutex_t *)HI_MALLOC(HI_ID_AVPLAY, sizeof(pthread_mutex_t));
    if (pAvplay->pAvplayMutex == HI_NULL)
    {
        Ret = HI_ERR_AVPLAY_CREATE_ERR;
        goto DESTROY_THREAD_MUTEX;
    }
    (HI_VOID)pthread_mutex_init(pAvplay->pAvplayMutex, NULL);


    AvplayUsrAddr.AvplayId = AvplayCreate.AvplayId;
    AvplayUsrAddr.AvplayUsrAddr = (HI_U32)pAvplay;

    Ret = ioctl(g_AvplayDevFd, CMD_AVPLAY_SET_USRADDR, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY set user addr failed.\n");
        goto DESTROY_MUTEX;
    }

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    /* record stream attributes */
    memcpy(&pAvplay->AvplayAttr, pstAvAttr, sizeof(HI_UNF_AVPLAY_ATTR_S));

    /* initialize resource handle */
    pAvplay->hVdec = HI_INVALID_HANDLE;
    pAvplay->VdecAttr.enType = HI_UNF_VCODEC_TYPE_BUTT;
    pAvplay->VdecAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
    pAvplay->VdecAttr.u32ErrCover = 0;
    pAvplay->VdecAttr.u32Priority = 0;
    pAvplay->hDmxVid = HI_INVALID_HANDLE;
    pAvplay->DmxVidPid = 0x1fff;

    pAvplay->hAdec = HI_INVALID_HANDLE;
    pAvplay->AdecType = 0xffffffff;
    memset(&(pAvplay->AdecNameInfo), 0x0, sizeof(ADEC_SzNameINFO_S));

    for(i=0; i<AVPLAY_MAX_DMX_AUD_CHAN_NUM; i++)
    {
        pAvplay->hDmxAud[i] = HI_INVALID_HANDLE;
        pAvplay->DmxAudPid[i] = 0x1fff;
    }
    
    pAvplay->DmxAudChnNum = 0;
    pAvplay->CurDmxAudChn = 0;

    pAvplay->pstAcodecAttr = HI_NULL;
    
    pAvplay->hDmxPcr = HI_INVALID_HANDLE;
    pAvplay->DmxPcrPid = 0x1fff;

    pAvplay->bStepMode = HI_FALSE;
    pAvplay->bStepPlay = HI_FALSE;

    /*init window and port handle*/
    pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;
    pAvplay->MasterFrmChn.hWindow = HI_INVALID_HANDLE;

    for (i=0; i<AVPLAY_MAX_SLAVE_FRMCHAN; i++)
    {
        pAvplay->SlaveFrmChn[i].hPort = HI_INVALID_HANDLE;
        pAvplay->SlaveFrmChn[i].hWindow = HI_INVALID_HANDLE;
    }
    
    for (i=0; i<AVPLAY_MAX_VIR_FRMCHAN; i++)
    {
        pAvplay->VirFrmChn[i].hPort = HI_INVALID_HANDLE;
        pAvplay->VirFrmChn[i].hWindow = HI_INVALID_HANDLE;
    }

    pAvplay->SlaveChnNum = 0;
    pAvplay->VirChnNum = 0;

    pAvplay->LowDelayAttr.bEnable = HI_FALSE;

    Ret = AVPLAY_FrcCreate(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY create frc failed.\n");
        goto AVPLAY_UNLOCK;
    }

    pAvplay->bFrcEnable = HI_TRUE;

    for (i=0; i<AVPLAY_MAX_TRACK; i++)
    {
        pAvplay->hTrack[i] = HI_INVALID_HANDLE;
    }
    pAvplay->TrackNum = 0;
    pAvplay->hSyncTrack = HI_INVALID_HANDLE;
        
    pAvplay->AudDDPMode = HI_FALSE; /* for DDP test only */
    pAvplay->LastAudPts = 0;        /* for DDP test only */

    pAvplay->VidEnable = HI_FALSE;
    pAvplay->AudEnable = HI_FALSE;

    pAvplay->LstStatus = HI_UNF_AVPLAY_STATUS_STOP;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_STOP;
    pAvplay->OverflowProc = HI_UNF_AVPLAY_OVERFLOW_RESET;

    /* initialize related parameters of the avplay thread */
    pAvplay->AvplayThreadRun = HI_TRUE;
    pAvplay->AvplayThreadPrio = THREAD_PRIO_MID;

    pAvplay->CurBufferEmptyState = HI_FALSE;

    AVPLAY_ResetProcFlag(pAvplay);

    /* initialize events callback function*/
    for (i=0; i<HI_UNF_AVPLAY_EVENT_BUTT; i++)
    {
        pAvplay->EvtCbFunc[i] = HI_NULL;
    }

    HI_MPI_SYNC_GetDefaultAttr(&SyncAttr);

    Ret = HI_MPI_SYNC_Create(&SyncAttr, &pAvplay->hSync);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY create sync failed.\n");
        goto FRC_DESTROY;
    }

    /* create thread */
    Ret = AVPLAY_CreateThread(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY create thread failed:%x\n",Ret);
        goto SYNC_DESTROY;
    }

    pAvplay->hAvplay = (HI_ID_AVPLAY << 16) | AvplayCreate.AvplayId;

    *phAvplay = (HI_ID_AVPLAY << 16) | AvplayCreate.AvplayId;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    return     HI_SUCCESS;

SYNC_DESTROY:
    (HI_VOID)HI_MPI_SYNC_Destroy(pAvplay->hSync);
    
FRC_DESTROY:
    (HI_VOID)AVPLAY_FrcDestroy(pAvplay);
     pAvplay->bFrcEnable = HI_FALSE;
     
AVPLAY_UNLOCK:
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
     
DESTROY_MUTEX:
    (HI_VOID)pthread_mutex_destroy(pAvplay->pAvplayMutex);
    HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pAvplayMutex));

DESTROY_THREAD_MUTEX:
    (HI_VOID)pthread_mutex_destroy(pAvplay->pAvplayThreadMutex);
    HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pAvplayThreadMutex));  
#ifdef AVPLAY_VID_THREAD
    (HI_VOID)pthread_mutex_destroy(pAvplay->pAvplayVidThreadMutex);
    HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pAvplayVidThreadMutex));
#endif
    
AVPLAY_UNMAP:
    (HI_VOID)HI_MUNMAP(pAvplay);
    
AVPLAY_DESTROY:
    (HI_VOID)ioctl(g_AvplayDevFd, CMD_AVPLAY_DESTROY, &(AvplayCreate.AvplayId));
    
RET:    
    return Ret;    
}

HI_S32 HI_MPI_AVPLAY_Destroy(HI_HANDLE hAvplay)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32             Ret;

    CHECK_AVPLAY_INIT();

    memset(&AvplayUsrAddr, 0x0, sizeof(AVPLAY_USR_ADDR_S));
    
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if ((pAvplay->hVdec != HI_INVALID_HANDLE)
      ||(pAvplay->hAdec != HI_INVALID_HANDLE)
       )
    {
        HI_ERR_AVPLAY("vid or aud chn is not closed.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if ((HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        || (0 != pAvplay->SlaveChnNum) || (0 != pAvplay->VirChnNum)
        )
    {
        HI_ERR_AVPLAY("win is not detach.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;    
    }
    
    if (0 != pAvplay->TrackNum)
    {
        HI_ERR_AVPLAY("snd is not detach.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* stop thread */
    pAvplay->AvplayThreadRun = HI_FALSE;
    (HI_VOID)pthread_join(pAvplay->AvplayDataThdInst, HI_NULL);
#ifdef AVPLAY_VID_THREAD
    (HI_VOID)pthread_join(pAvplay->AvplayVidDataThdInst, HI_NULL);
#endif
    (HI_VOID)pthread_join(pAvplay->AvplayStatThdInst, HI_NULL);
    pthread_attr_destroy(&pAvplay->AvplayThreadAttr);

    (HI_VOID)HI_MPI_SYNC_Destroy(pAvplay->hSync);

    (HI_VOID)AVPLAY_FrcDestroy(pAvplay);
    pAvplay->bFrcEnable = HI_FALSE;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    (HI_VOID)pthread_mutex_destroy(pAvplay->pAvplayThreadMutex);
    (HI_VOID)pthread_mutex_destroy(pAvplay->pAvplayMutex);
    HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pAvplayThreadMutex));
    HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pAvplayMutex));

#ifdef AVPLAY_VID_THREAD
    (HI_VOID)pthread_mutex_destroy(pAvplay->pAvplayVidThreadMutex);
    HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pAvplayVidThreadMutex));
#endif

    if (HI_NULL != pAvplay->pstAcodecAttr)
    {
        HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pstAcodecAttr));
        pAvplay->pstAcodecAttr = HI_NULL;
    }

    Ret = ioctl(g_AvplayDevFd, CMD_AVPLAY_DESTROY, &AvplayUsrAddr.AvplayId);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }
    
    (HI_VOID)HI_MUNMAP((HI_VOID *)AvplayUsrAddr.AvplayUsrAddr);

    return HI_SUCCESS ;
}

HI_S32 HI_MPI_AVPLAY_ChnOpen(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_VOID *pPara)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32             Ret;

    if (enChn < HI_UNF_AVPLAY_MEDIA_CHAN_AUD)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (enChn >= HI_UNF_AVPLAY_MEDIA_CHAN_BUTT)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    
    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            Ret = AVPLAY_MallocVidChn(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc vid chn failed.\n");
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }
        }
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            Ret = AVPLAY_MallocAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc aud chn failed.\n");
                if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
                {
                    (HI_VOID)AVPLAY_FreeVidChn(pAvplay);
                }
                
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }
        }
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        if (HI_INVALID_HANDLE == pAvplay->hDmxPcr)
        {
            Ret = HI_MPI_DMX_CreatePcrChannel(pAvplay->AvplayAttr.u32DemuxId, &pAvplay->hDmxPcr);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc pcr chn failed.\n");
                if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
                {
                    (HI_VOID)AVPLAY_FreeVidChn(pAvplay);
                }

                if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
                {
                    (HI_VOID)AVPLAY_FreeAudChn(pAvplay);
                }

                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }
            (HI_VOID)HI_MPI_DMX_PcrSyncAttach(pAvplay->hDmxPcr,pAvplay->hSync);
        }
    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_ChnClose(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (enChn < HI_UNF_AVPLAY_MEDIA_CHAN_AUD)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (enChn >= HI_UNF_AVPLAY_MEDIA_CHAN_BUTT)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if (pAvplay->VidEnable)
        {
            HI_ERR_AVPLAY("vid chn is enable, can not colsed.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if ((HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
            || (0 != pAvplay->SlaveChnNum) || (0 != pAvplay->VirChnNum)
            )
        {
            HI_ERR_AVPLAY("window is attach to vdec, can not colsed.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (pAvplay->hVdec != HI_INVALID_HANDLE)
        {
            Ret = AVPLAY_FreeVidChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free vid chn failed.\n");
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }
        }
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if (pAvplay->AudEnable)
        {
            HI_ERR_AVPLAY("aud chn is enable, can not colsed.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

		if (pAvplay->TrackNum)
		{
            HI_ERR_AVPLAY("track is attach to adec, can not colsed.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;

        }

        if (pAvplay->hAdec != HI_INVALID_HANDLE)
        {
            Ret = AVPLAY_FreeAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free aud chn failed.\n");
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }
        }
    }

    if ((HI_INVALID_HANDLE == pAvplay->hVdec)
      &&(HI_INVALID_HANDLE == pAvplay->hAdec)
       )
    {
        if (pAvplay->hDmxPcr != HI_INVALID_HANDLE)
        {
            (HI_VOID)HI_MPI_DMX_PcrSyncDetach(pAvplay->hDmxPcr);
            Ret = HI_MPI_DMX_DestroyPcrChannel(pAvplay->hDmxPcr);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free pcr chn failed.\n");
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }

            pAvplay->hDmxPcr = HI_INVALID_HANDLE;
        }
    }
    
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetFrmPackingType(AVPLAY_S *pAvplay, HI_UNF_VIDEO_FRAME_PACKING_TYPE_E *pFrmPackingType)
{
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set frm packing type.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* input param check */
    if (*pFrmPackingType >= HI_UNF_FRAME_PACKING_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("FrmPackingType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    Ret = HI_MPI_VDEC_SetChanFrmPackType(pAvplay->hVdec, pFrmPackingType);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetChanFrmPackType failed.\n");
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetFrmPackingType(AVPLAY_S *pAvplay, HI_UNF_VIDEO_FRAME_PACKING_TYPE_E *pFrmPackingType)
{
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not get frm packing type.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanFrmPackType(pAvplay->hVdec, pFrmPackingType);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanFrmPackType failed.\n");
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetVdecFrmRateParam(AVPLAY_S *pAvplay,  HI_UNF_AVPLAY_FRMRATE_PARAM_S *pFrmRate)
{
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec frm rate.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* input param check */
    if (pFrmRate->enFrmRateType >= HI_UNF_AVPLAY_FRMRATE_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("enFrmRateType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    
    /* input param check */
    if ((HI_UNF_AVPLAY_FRMRATE_TYPE_USER == pFrmRate->enFrmRateType) 
        || (HI_UNF_AVPLAY_FRMRATE_TYPE_USER_PTS == pFrmRate->enFrmRateType)
        )
    {
        if ((pFrmRate->stSetFrmRate.u32fpsInteger == 0)
            && (pFrmRate->stSetFrmRate.u32fpsDecimal == 0)
            )
        {
            HI_ERR_AVPLAY("stSetFrmRate is invalid.\n");
            return HI_ERR_AVPLAY_INVALID_PARA;
        }
    }

    Ret = HI_MPI_VDEC_SetChanFrmRate(pAvplay->hVdec, pFrmRate);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetChanFrmRate failed.\n");
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetVdecFrmRateParam(AVPLAY_S *pAvplay,  HI_UNF_AVPLAY_FRMRATE_PARAM_S *pFrmRate)
{
    HI_S32  Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec frm rate.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    Ret = HI_MPI_VDEC_GetChanFrmRate(pAvplay->hVdec, pFrmRate);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanFrmRate failed.\n");
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_SetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara)
{
    AVPLAY_S                        *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S               AvplayUsrAddr;
    HI_S32                          Ret;

    if (enAttrID >= HI_UNF_AVPLAY_ATTR_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enAttrID is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pPara)
    {
        HI_ERR_AVPLAY("para pPara is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    switch (enAttrID)
    {
        case HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE:
            Ret = AVPLAY_SetStreamMode(pAvplay, (HI_UNF_AVPLAY_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set stream mode failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_ADEC:
            if (pAvplay->AudEnable)
            {
                HI_ERR_AVPLAY("aud chn is running, can not set adec attr.\n");
                Ret = HI_ERR_AVPLAY_INVALID_OPT;
                break;
            } 
            
            Ret = AVPLAY_SetAdecAttr(pAvplay, (HI_UNF_ACODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set adec attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VDEC:
            Ret = AVPLAY_SetVdecAttr(pAvplay, (HI_UNF_VCODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set vdec attr failed.\n");
            }
            break;
                
        case HI_UNF_AVPLAY_ATTR_ID_AUD_PID:
            Ret = AVPLAY_SetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set aud pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VID_PID:
            Ret = AVPLAY_SetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set vid pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_PCR_PID:
            Ret = AVPLAY_SetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set pcr pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_SYNC:
            Ret = AVPLAY_SetSyncAttr(pAvplay, (HI_UNF_SYNC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set sync attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_OVERFLOW:
            Ret = AVPLAY_SetOverflowProc(pAvplay, (HI_UNF_AVPLAY_OVERFLOW_E *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set overflow proc failed.\n");
            }
            break;

       case HI_UNF_AVPLAY_ATTR_ID_MULTIAUD:
            Ret = AVPLAY_SetMultiAud(pAvplay, (HI_UNF_AVPLAY_MULTIAUD_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set multi aud failed.\n");
            }
            break;
        case HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM:
            Ret = AVPLAY_SetVdecFrmRateParam(pAvplay, (HI_UNF_AVPLAY_FRMRATE_PARAM_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Set frm rate failed.\n");
            }
            break;
        case HI_UNF_AVPLAY_ATTR_ID_FRMPACK_TYPE:
            Ret = AVPLAY_SetFrmPackingType(pAvplay, (HI_UNF_VIDEO_FRAME_PACKING_TYPE_E *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Set frm packing type failed.\n");
            }
            break;                         
        case HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY:
            Ret = AVPLAY_SetLowDelay(pAvplay, (HI_UNF_AVPLAY_LOW_DELAY_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Set Low Delay failed.\n");
            }
            break;
        default:
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_SUCCESS;

    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return Ret;
}

HI_S32 HI_MPI_AVPLAY_GetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara)
{
    AVPLAY_S                        *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S               AvplayUsrAddr;
    HI_S32                          Ret;
    
    if (enAttrID >= HI_UNF_AVPLAY_ATTR_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enAttrID is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pPara)
    {
        HI_ERR_AVPLAY("para pPara is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;
    
    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    switch (enAttrID)
    {
        case HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE:
            Ret = AVPLAY_GetStreamMode(pAvplay, (HI_UNF_AVPLAY_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get stream mode failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_ADEC:
            Ret = AVPLAY_GetAdecAttr(pAvplay, (HI_UNF_ACODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get adec attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VDEC:
            Ret = AVPLAY_GetVdecAttr(pAvplay, (HI_UNF_VCODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get vdec attr failed.\n");
            }
            break;
            
        case HI_UNF_AVPLAY_ATTR_ID_AUD_PID:
            Ret = AVPLAY_GetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get aud pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VID_PID:
            Ret = AVPLAY_GetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get vid pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_PCR_PID:
            Ret = AVPLAY_GetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get pcr pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_SYNC:
            Ret = AVPLAY_GetSyncAttr(pAvplay, (HI_UNF_SYNC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get sync attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_OVERFLOW:
            Ret = AVPLAY_GetOverflowProc(pAvplay, (HI_UNF_AVPLAY_OVERFLOW_E *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get overflow proc failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_MULTIAUD:
            Ret = AVPLAY_GetMultiAud(pAvplay, (HI_UNF_AVPLAY_MULTIAUD_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get multi audio failed.\n");
            }
            break;
        case HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM:
            Ret = AVPLAY_GetVdecFrmRateParam(pAvplay, (HI_UNF_AVPLAY_FRMRATE_PARAM_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get frm rate failed.\n");
            }
            break;                
        case HI_UNF_AVPLAY_ATTR_ID_FRMPACK_TYPE:
            Ret = AVPLAY_GetFrmPackingType(pAvplay, (HI_UNF_VIDEO_FRAME_PACKING_TYPE_E *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get frm packing type  failed.\n");
            }
            break;    
        case HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY:
            Ret = AVPLAY_GetLowDelay(pAvplay, (HI_UNF_AVPLAY_LOW_DELAY_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get Low Delay failed.\n");
            }
            break;
        default:
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_SUCCESS;
    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return Ret;
}

HI_S32 HI_MPI_AVPLAY_DecodeIFrame(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_I_FRAME_S *pstIframe,
                                              HI_UNF_VIDEO_FRAME_INFO_S *pstCapPicture)
{
    HI_S32                      Ret;
    AVPLAY_S                    *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S           AvplayUsrAddr;
    HI_UNF_VIDEO_FRAME_INFO_S   stVidFrameInfo;
    HI_DRV_VIDEO_FRAME_S        stDrvFrm;
    HI_U32                      i, j;
    HI_HANDLE                   hWindow = HI_INVALID_HANDLE;
    HI_DRV_VIDEO_FRAME_PACKAGE_S    stFrmPack;
    HI_BOOL                     bCapture = HI_FALSE;
    HI_DRV_VPSS_PORT_CFG_S      stOldCfg, stNewCfg;

    if (HI_NULL == pstIframe)
    {
        HI_ERR_AVPLAY("para pstIframe is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;    
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("avplay handle is invalid.\n");
        return Ret;
    }

    memset(&stFrmPack, 0x0, sizeof(HI_DRV_VIDEO_FRAME_PACKAGE_S));

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("hVdec is invalid.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    
    if (HI_TRUE == pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("vid chn is opened.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->stIFrame.hport != HI_INVALID_HANDLE)
    {
        HI_ERR_AVPLAY("please release I frame first.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;        
    }

    /* if there is no window exist, we need create vpss source */
    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        if (HI_NULL == pstCapPicture)
        {
            HI_ERR_AVPLAY("there is no window.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
        
        Ret = HI_MPI_VDEC_CreatePort(pAvplay->hVdec, &pAvplay->MasterFrmChn.hPort, VDEC_PORT_HD);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_VDEC_CreatePort ERR, Ret=%#x\n", Ret);
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT; 
        }
        
        Ret = HI_MPI_VDEC_SetPortType(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, VDEC_PORT_TYPE_MASTER);
        Ret |= HI_MPI_VDEC_EnablePort(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort); 
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_VDEC_EnablePort ERR, Ret=%#x\n", Ret);
            HI_MPI_VDEC_DestroyPort(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort);
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT; 
        }        
    }

    Ret = HI_MPI_VDEC_GetPortAttr(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &stOldCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_GetPortAttr ERR, Ret=%#x\n", Ret);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    
    stNewCfg = stOldCfg;
    stNewCfg.s32OutputWidth = 0;
    stNewCfg.s32OutputHeight = 0;

    /*set vpss attr, do not do zoom*/
    Ret = HI_MPI_VDEC_SetPortAttr(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &stNewCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_SetPortAttr ERR, Ret=%#x\n", Ret);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_NULL != pstCapPicture)
    {
        bCapture = HI_TRUE;
    }

    memset(&stVidFrameInfo, 0x0, sizeof(HI_UNF_VIDEO_FRAME_INFO_S));
    Ret = HI_MPI_VDEC_ChanIFrameDecode(pAvplay->hVdec, (HI_UNF_AVPLAY_I_FRAME_S *)pstIframe, &stDrvFrm, bCapture);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanIFrameDecode failed.\n");
        (HI_VOID)HI_MPI_VDEC_SetPortAttr(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &stOldCfg);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return Ret;
    }
    
    /*wait for vpss process complete*/
    for (i=0; i<20; i++)
    {
        Ret = HI_MPI_VDEC_ReceiveFrame(pAvplay->hVdec, &stFrmPack);
        if (Ret == HI_SUCCESS)
        {
            break;
        }
    
        usleep(10 * 1000);
    }

    /*resume vpss attr*/
    Ret = HI_MPI_VDEC_SetPortAttr(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &stOldCfg);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_SetPortAttr ERR, Ret=%#x\n", Ret);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (i >= 20)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ReceiveFrame failed, Ret=%#x.\n", Ret);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return Ret;
    }

    /* display on vo */
    if (HI_FALSE == bCapture)
    {
        for (i=0; i<stFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, stFrmPack.stFrame[i].hport, &hWindow);

            if (hWindow == pAvplay->MasterFrmChn.hWindow)
            {
                break;
            }
        }

        if (i == stFrmPack.u32FrmNum)
        {
            HI_ERR_AVPLAY("I Frame Dec: No master window\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
    
        Ret = HI_MPI_WIN_QueueFrame(hWindow, &stFrmPack.stFrame[i].stFrameVideo);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("I Frame Dec: Queue frame to master win err, Ret=%#x\n", Ret);
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }

        for (i=0; i<stFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, stFrmPack.stFrame[i].hport, &hWindow);

            for (j=0; j<pAvplay->SlaveChnNum; j++)
            {
                if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
                {
                    Ret = HI_MPI_WIN_QueueFrame(hWindow, &stFrmPack.stFrame[i].stFrameVideo);
                    if (HI_SUCCESS != Ret)
                    {
                        HI_ERR_AVPLAY("I Frame Dec: Queue frame to slave win err, Ret=%#x\n", Ret);
                        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                        return Ret; 
                    }  
                }
            }
        }
    }
    else
    {
        /*use frame of port0, release others*/
        memcpy(&pAvplay->stIFrame, &stFrmPack.stFrame[0], sizeof(HI_DRV_VDEC_FRAME_S));

        for (i = 1; i < stFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)HI_MPI_VDEC_ReleaseFrame(stFrmPack.stFrame[i].hport, &stFrmPack.stFrame[i].stFrameVideo);
        }

        AVPLAY_DRV2UNF_VidFrm(&(pAvplay->stIFrame.stFrameVideo), pstCapPicture);
    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_ReleaseIFrame(HI_HANDLE hAvplay, HI_UNF_VIDEO_FRAME_INFO_S *pstCapPicture)
{
    HI_S32                      Ret;
    AVPLAY_S                    *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S           AvplayUsrAddr;

    if (HI_NULL == pstCapPicture)
    {
        HI_ERR_AVPLAY("para pstCapPicture is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("avplay handle is invalid.\n");
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("hVdec is invalid.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    
    AVPLAY_Mutex_Lock(pAvplay->pAvplayThreadMutex);

    /* destroy vpss source */
    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        Ret = HI_MPI_VDEC_DisablePort(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort);  
        Ret |= HI_MPI_VDEC_DestroyPort(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_VDEC_DestroyPort ERR, Ret=%#x\n", Ret);

            AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            
            return Ret;
        }
		
		 pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;
    }
    else
    {
        if (pAvplay->stIFrame.hport != HI_INVALID_HANDLE)
        {
            (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->stIFrame.hport, &pAvplay->stIFrame.stFrameVideo);

            memset(&pAvplay->stIFrame.stFrameVideo, 0x0, sizeof(HI_DRV_VIDEO_FRAME_S));
        }    
    }

    pAvplay->stIFrame.hport = HI_INVALID_HANDLE;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    return HI_SUCCESS;
}

#if 0
// TODO: S40 I帧解码方案变更，有待实现
HI_S32 HI_MPI_AVPLAY_DecodeIFrame(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_I_FRAME_S *pstIframe,
                                              HI_UNF_VIDEO_FRAME_INFO_S *pstCapPicture)
{
    AVPLAY_S                    *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S           AvplayUsrAddr;
    HI_S32                      Ret;
    HI_BOOL                     bWinEnable = HI_FALSE;
    HI_UNF_VIDEO_FRAME_INFO_S   stVidFrameInfo;
    
    if (!pstIframe)
    {
        HI_ERR_AVPLAY("para pstIframe is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("avplay handle is invalid.\n");
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("hVdec is invalid.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    
    if (HI_TRUE == pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("vid chn is opened.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        HI_ERR_AVPLAY("master chan is not attached.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;    
    }

    HI_MPI_VO_GetMainWindowEnable(pAvplay->MasterFrmChn.hWindow, &bWinEnable);

    if (HI_NULL == pstCapPicture && HI_FALSE == bWinEnable)
    {
        HI_ERR_AVPLAY("window is not attatched or not enabled\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    HI_MPI_WIN_Pause(pAvplay->MasterFrmChn.hWindow,HI_TRUE);

    memset(&stVidFrameInfo, 0x0, sizeof(HI_UNF_VIDEO_FRAME_INFO_S));
    Ret = HI_MPI_VDEC_ChanIFrameDecode(pAvplay->hVdec, (HI_UNF_AVPLAY_I_FRAME_S *)pstIframe, &stVidFrameInfo);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanIFrameDecode failed.\n");
         HI_MPI_WIN_Pause(pAvplay->MasterFrmChn.hWindow,HI_FALSE);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return Ret;
    }

    HI_MPI_WIN_Pause(pAvplay->MasterFrmChn.hWindow,HI_FALSE);

    if (HI_NULL == pstCapPicture)
    {
        Ret = HI_MPI_WIN_SendFrame(pAvplay->MasterFrmChn.hWindow, &stVidFrameInfo);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("call HI_MPI_WIN_SendFrame failed:%#x.\n",Ret);
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }
    }
    else
    {
        memcpy(pstCapPicture, &stVidFrameInfo, sizeof(HI_UNF_VIDEO_FRAME_INFO_S));
    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return Ret;

    return HI_SUCCESS;
}
#endif

HI_S32 HI_MPI_AVPLAY_SetDecodeMode(HI_HANDLE hAvplay, HI_UNF_VCODEC_MODE_E enDecodeMode)
{
    AVPLAY_S              *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S      AvplayUsrAddr;
    HI_UNF_VCODEC_ATTR_S   VdecAttr;
    HI_S32                   Ret;

    if (enDecodeMode >= HI_UNF_VCODEC_MODE_BUTT)
    {
        HI_ERR_AVPLAY("para enDecodeMode is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec attr.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanAttr(pAvplay->hVdec, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanAttr failed.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return Ret;
    }

    VdecAttr.enMode = enDecodeMode;

    Ret = HI_MPI_VDEC_SetChanAttr(pAvplay->hVdec, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetChanAttr failed.\n");
    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return Ret;
}

HI_S32 HI_MPI_AVPLAY_RegisterEvent(HI_HANDLE      hAvplay,
                                   HI_UNF_AVPLAY_EVENT_E     enEvent,
                                   HI_UNF_AVPLAY_EVENT_CB_FN pfnEventCB)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;
    
    if (enEvent >= HI_UNF_AVPLAY_EVENT_BUTT)
    {
        HI_ERR_AVPLAY("para enEvent is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pfnEventCB)
    {
        HI_ERR_AVPLAY("para pfnEventCB is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    /*
    if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_STOP)
    {
        HI_ERR_AVPLAY("can not register when avplay is not stopped.\n");
        (HI_VOID)AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT; 
    }
    */

    if (pAvplay->EvtCbFunc[enEvent])
    {
        HI_ERR_AVPLAY("this event has been registered.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    pAvplay->EvtCbFunc[enEvent] = pfnEventCB;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_UnRegisterEvent(HI_HANDLE hAvplay, HI_UNF_AVPLAY_EVENT_E enEvent)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;
    
    if (enEvent >= HI_UNF_AVPLAY_EVENT_BUTT)
    {
        HI_ERR_AVPLAY("para enEvent is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

#if 0  /* remove this limit, you can UnRegisterEvent at any time after init.  */
    if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_STOP)
    {
        HI_ERR_AVPLAY("can not unregister when avplay is not stopped.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT; 
    }
#endif

    pAvplay->EvtCbFunc[enEvent] = HI_NULL;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_RegisterAcodecLib(const HI_CHAR *pFileName)
{
    HI_S32    Ret;

    if (!pFileName)
    {
        HI_ERR_AVPLAY("para pFileName is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    Ret = HI_MPI_ADEC_RegisterDeoder(pFileName);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("call HI_MPI_ADEC_RegisterDeoder failed.\n");
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_FoundSupportDeoder(const HA_FORMAT_E enFormat,HI_U32 * penDstCodecID)
{
    HI_S32    Ret;

    Ret = HI_MPI_ADEC_FoundSupportDeoder(enFormat,penDstCodecID);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("call HI_MPI_ADEC_FoundSupportDeoder failed.\n");
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_ConfigAcodec( const HI_U32 enDstCodecID, HI_VOID *pstConfigStructure)
{
    HI_S32 Ret;

    Ret = HI_MPI_ADEC_SetConfigDeoder(enDstCodecID, pstConfigStructure);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("call HI_MPI_ADEC_SetConfigDeoder failed.\n");
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_Start(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (enChn < HI_UNF_AVPLAY_MEDIA_CHAN_AUD)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (enChn >= HI_UNF_AVPLAY_MEDIA_CHAN_BUTT)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    
#ifndef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
#ifdef AVPLAY_VID_THREAD    
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#endif
        if (!pAvplay->VidEnable)
        {
            if (HI_INVALID_HANDLE == pAvplay->hVdec)
            {
                HI_ERR_AVPLAY("vid chn is close, can not start.\n");
                
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            if ((HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
                && (0 == pAvplay->SlaveChnNum) && (0 == pAvplay->VirChnNum)
                )
            {
                HI_ERR_AVPLAY("window is not attached, can not start.\n");
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
           
            Ret = AVPLAY_StartVidChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("start vid chn failed.\n");
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }

            Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_SYNC_Play Vid failed.\n");
            }

            pAvplay->VidEnable = HI_TRUE;
            AVPLAY_Play(pAvplay);

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_VSTART, 0);
        }
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
#ifdef AVPLAY_VID_THREAD    
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif
        if (!pAvplay->AudEnable)
        {
            if (HI_INVALID_HANDLE == pAvplay->hAdec)
            {
                HI_ERR_AVPLAY("aud chn is close, can not start.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            if (0 == pAvplay->TrackNum)
            {
                HI_ERR_AVPLAY("track is not attached, can not start.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
            
            Ret = AVPLAY_StartAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("start aud chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }

            Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_SYNC_Play Aud failed.\n");
            }

            pAvplay->AudEnable = HI_TRUE;
            AVPLAY_Play(pAvplay);

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_ASTART, 0);
        }
#ifdef AVPLAY_VID_THREAD    
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, pAvplay->DmxPcrPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
#ifndef AVPLAY_VID_THREAD  
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }
    }
    
#ifndef AVPLAY_VID_THREAD  
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Stop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_UNF_AVPLAY_STOP_OPT_S *pStop)
{
    AVPLAY_S                   *pAvplay = HI_NULL;
    HI_UNF_AVPLAY_STOP_OPT_S   StopOpt;
    AVPLAY_USR_ADDR_S          AvplayUsrAddr;
    HI_U32                     SysTime;
    HI_BOOL                    Block;
    HI_S32                     Ret;
    HI_BOOL                    bStopNotify = HI_FALSE;
    HI_U32                     i;   

    if (enChn < HI_UNF_AVPLAY_MEDIA_CHAN_AUD)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (enChn >= HI_UNF_AVPLAY_MEDIA_CHAN_BUTT)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (pStop)
    {
        if (pStop->enMode >= HI_UNF_AVPLAY_STOP_MODE_BUTT)
        {
            HI_ERR_AVPLAY("para pStop->enMode is invalid.\n");
            return HI_ERR_AVPLAY_INVALID_PARA;
        }

        StopOpt.u32TimeoutMs = pStop->u32TimeoutMs;
        StopOpt.enMode = pStop->enMode;
    }
    else
    {
        StopOpt.u32TimeoutMs = 0;
        StopOpt.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    /*The relevant channel is already stopped*/
    if ( ((HI_UNF_AVPLAY_MEDIA_CHAN_AUD == enChn) && (!pAvplay->AudEnable) )
       || ((HI_UNF_AVPLAY_MEDIA_CHAN_VID == enChn) && (!pAvplay->VidEnable))
       || ((((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD | (HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID) == enChn)
           && (!pAvplay->AudEnable) && (!pAvplay->VidEnable)))
    {
        HI_INFO_AVPLAY("The chn is already stoped\n");
        return HI_SUCCESS;
    }
    
    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

#ifndef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif

	/*Non Block invoke*/
    if (0 == StopOpt.u32TimeoutMs)
    {
        if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#endif
            if (pAvplay->VidEnable)
            {
                Ret = AVPLAY_StopVidChn(pAvplay, StopOpt.enMode);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("stop vid chn failed.\n");                    
#ifdef AVPLAY_VID_THREAD
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                    return Ret;
                }

                if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
                {
                    /* resume the frc and window ratio */
                    pAvplay->bFrcEnable = HI_TRUE;
                    pAvplay->FrcParamCfg.u32PlayRate = AVPLAY_ALG_FRC_BASE_PLAY_RATIO;
                }

                pAvplay->VidEnable = HI_FALSE;

                /* may be only stop vidchannel,avoid there is frame at avplay, when stop avplay, we drop this frame*/
                if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
                {
                    /*Release vpss frame*/                    
                    (HI_VOID)AVPLAY_RelAllChnFrame(pAvplay);
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
                }

                (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_VSTOP, 0);
            }
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        }

        if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif
            if (pAvplay->AudEnable)
            {
                Ret = AVPLAY_StopAudChn(pAvplay);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("stop aud chn failed.\n");
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                    return Ret;
                }
                
                for (i=0; i<pAvplay->TrackNum; i++)
                {
                    if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                    {
                        Ret |= HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                    }
                }
			
			    if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("call HI_MPI_AO_Track_Resume failed, Ret=0x%x.\n", Ret);
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                    return Ret;
                }		

                pAvplay->AudEnable = HI_FALSE;

                /* may be only stop audchannel,avoid there is frame at avplay, when stop avplay, we drop this frame*/
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;

                (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_ASTOP, 0);
            }
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            if ((!pAvplay->VidEnable)
              &&(!pAvplay->AudEnable)
               )
            {
                Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, 0x1fff);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
#ifndef AVPLAY_VID_THREAD
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                    return Ret;
                }
            }
        }

        if ((!pAvplay->VidEnable)
          &&(!pAvplay->AudEnable)
           )
        {
            AVPLAY_Stop(pAvplay);
            bStopNotify = HI_TRUE;
        }
    }
    else
    {
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif
        if ((pAvplay->VidEnable && pAvplay->AudEnable)
          &&(enChn <= HI_UNF_AVPLAY_MEDIA_CHAN_VID)
           )
        {
            HI_ERR_AVPLAY("must control vid and aud chn together.\n");
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_PARA;
        }

        if (StopOpt.u32TimeoutMs != SYS_TIME_MAX)
        {
            Block = HI_FALSE;
        }
        else
        {
            Block = HI_TRUE;
        }

        Ret = AVPLAY_SetEosFlag(pAvplay);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("ERR: AVPLAY_SetEosFlag, Ret = %#x.\n", Ret);
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }
        
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);

        pAvplay->EosStartTime = AVPLAY_GetSysTime();
        while (1)
        {
            if(HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
            {
                break;
            }

            if (!Block)
            {
                SysTime = AVPLAY_GetSysTime();

                if (SysTime > pAvplay->EosStartTime)
                {
                    pAvplay->EosDurationTime = SysTime - pAvplay->EosStartTime;
                }
                else
                {
                    pAvplay->EosDurationTime = (0xFFFFFFFFU - pAvplay->EosStartTime) + 1 + SysTime;
                }

                if (pAvplay->EosDurationTime >= StopOpt.u32TimeoutMs)
                {
                    HI_ERR_AVPLAY("eos proc timeout.\n");
                    break;
                }
            }

            (HI_VOID)usleep(AVPLAY_SYS_SLEEP_TIME*1000);
        }

#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif

        if (pAvplay->VidEnable)
        {
            Ret = AVPLAY_StopVidChn(pAvplay, StopOpt.enMode);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("stop vid chn failed.\n");
                
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }

            if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
            {
                /* resume the frc and window ratio */
                pAvplay->bFrcEnable = HI_TRUE;
                pAvplay->FrcParamCfg.u32PlayRate = AVPLAY_ALG_FRC_BASE_PLAY_RATIO;
            }

            pAvplay->VidEnable = HI_FALSE;

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_VSTOP, 0);
        }

#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif

#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif
        if (pAvplay->AudEnable)
        {
            Ret = AVPLAY_StopAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("stop aud chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }

            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    Ret |= HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                }
            }
            
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_AO_Track_Resume failed, Ret=0x%x.\n", Ret);
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }

            pAvplay->AudEnable = HI_FALSE;

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_ASTOP, 0);
        }

#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, 0x1fff);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
#ifndef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif                
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }
        }

        AVPLAY_Stop(pAvplay);
        bStopNotify = HI_TRUE;
    }

#ifndef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    if (HI_TRUE == bStopNotify)
    {
        AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_STOP, HI_NULL);
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Pause(HI_HANDLE hAvplay)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;
    HI_U32              i;

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        return HI_SUCCESS; 
    }

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#endif



    if ((!pAvplay->VidEnable)
      &&(!pAvplay->AudEnable)
       )
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_SYNC_Pause(pAvplay->hSync);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Pause failed, Ret=0x%x.\n", Ret);
    }

    AVPLAY_Pause(pAvplay);

    if (pAvplay->VidEnable)
    {
        if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        {
            (HI_VOID)HI_MPI_WIN_Pause(pAvplay->MasterFrmChn.hWindow, HI_TRUE);
        }

        for (i=0; i<pAvplay->SlaveChnNum; i++)
        {
            (HI_VOID)HI_MPI_WIN_Pause(pAvplay->SlaveFrmChn[i].hWindow, HI_TRUE);
        }

        for (i=0; i<pAvplay->VirChnNum; i++)
        {
            (HI_VOID)HI_MPI_WIN_Pause(pAvplay->VirFrmChn[i].hWindow, HI_TRUE);
        }
    }

    if (pAvplay->AudEnable)
    {
        for (i=0; i<pAvplay->TrackNum; i++)
        {
            if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
            {
                Ret |= HI_MPI_AO_Track_Pause(pAvplay->hTrack[i]);
            }
        }
            
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_HIAO_SetPause failed, Ret=0x%x.\n", Ret);
        }		 
    }

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Tplay(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_TPLAY_OPT_S *pstTplayOpt)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;
    HI_U32                  i;
    HI_U32                  AvplayRatio;

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#endif

    if (!pAvplay->VidEnable && !pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;        
    }

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        HI_ERR_AVPLAY("AVPLAY has not attach master window.\n"); 
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* disable frc if opt is null */
    if (HI_NULL == pstTplayOpt)
    {
        pAvplay->bFrcEnable = HI_FALSE;
		AvplayRatio = AVPLAY_ALG_FRC_BASE_PLAY_RATIO;
    }
	else
    {
        pAvplay->bFrcEnable = HI_TRUE;

        AvplayRatio = (pstTplayOpt->u32SpeedInteger*1000 + pstTplayOpt->u32SpeedDecimal) * AVPLAY_ALG_FRC_BASE_PLAY_RATIO / 1000;

        if ((pstTplayOpt->u32SpeedInteger > 64) 
            || (pstTplayOpt->u32SpeedDecimal > 999)
            || (AvplayRatio > AVPLAY_ALG_FRC_MAX_PLAY_RATIO) 
            || (AvplayRatio < AVPLAY_ALG_FRC_MIN_PLAY_RATIO)
            )
        {
            HI_ERR_AVPLAY("Set tplay speed invalid!\n");
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_PARA;
        }
    }
    
    if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
    {
        pAvplay->FrcParamCfg.u32PlayRate = AvplayRatio;
        
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_SUCCESS;
    }

    if (((HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->LstStatus) && (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus))
      ||(HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
       )
    {
        Ret = AVPLAY_Reset(pAvplay);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("avplay reset err, Ret=%#x.\n", Ret);
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }
    }

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        if (pAvplay->VidEnable)
        {
            if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
            {
                (HI_VOID)HI_MPI_WIN_Pause(pAvplay->MasterFrmChn.hWindow, HI_FALSE);
            }

            for (i=0; i<pAvplay->SlaveChnNum; i++)
            {
                (HI_VOID)HI_MPI_WIN_Pause(pAvplay->SlaveFrmChn[i].hWindow, HI_FALSE);
            }
            
            for (i=0; i<pAvplay->VirChnNum; i++)
            {
                (HI_VOID)HI_MPI_WIN_Pause(pAvplay->VirFrmChn[i].hWindow, HI_FALSE);
            }
        }

        /* pause->tplay, resume hiao */
        if (pAvplay->AudEnable)
        {
            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    Ret |= HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                }
            }
            
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_HIAO_SetPause failed, Ret=0x%x.\n", Ret);
            }
        }

        /* pause->tplay, resume sync */
        Ret = HI_MPI_SYNC_Resume(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Resume failed, Ret=0x%x.\n", Ret);
        }
    }

    pAvplay->FrcParamCfg.u32PlayRate = AvplayRatio;

    (HI_VOID)HI_MPI_SYNC_Tplay(pAvplay->hSync);
    AVPLAY_Tplay(pAvplay);

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    return HI_SUCCESS;    
}


HI_S32 HI_MPI_AVPLAY_Resume(HI_HANDLE hAvplay)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;
    HI_U32                  i;

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#endif

    pAvplay->bStepMode = HI_FALSE;
    pAvplay->bStepPlay = HI_FALSE;

    if (HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
    {
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_SUCCESS; 
    }

    if ((!pAvplay->VidEnable)
      &&(!pAvplay->AudEnable)
       )
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (((HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->LstStatus) && (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus))
      ||(HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
       )
    {
        Ret = AVPLAY_Reset(pAvplay);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("AVPLAY_Reset, Ret=%#x.\n", Ret);
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }

        (HI_VOID)HI_MPI_SYNC_Play(pAvplay->hSync);

       pAvplay->bFrcEnable = HI_TRUE;
       pAvplay->FrcParamCfg.u32PlayRate = AVPLAY_ALG_FRC_BASE_PLAY_RATIO;
    }

    /* resume hiao and sync if curstatus is pause */
    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        if (pAvplay->VidEnable)
        {
            if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
            {
                (HI_VOID)HI_MPI_WIN_Pause(pAvplay->MasterFrmChn.hWindow, HI_FALSE);
            }

            for (i=0; i<pAvplay->SlaveChnNum; i++)
            {
                (HI_VOID)HI_MPI_WIN_Pause(pAvplay->SlaveFrmChn[i].hWindow, HI_FALSE);
            }
            
            for (i=0; i<pAvplay->VirChnNum; i++)
            {
                (HI_VOID)HI_MPI_WIN_Pause(pAvplay->VirFrmChn[i].hWindow, HI_FALSE);
            }
        }

        if (pAvplay->AudEnable)
        {
            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    Ret |= HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                }
            }
            
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_HIAO_SetPause failed, Ret=0x%x.\n", Ret);
            }
        }

        Ret = HI_MPI_SYNC_Resume(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Resume failed.\n");
        }
    }

    AVPLAY_Play(pAvplay);

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Reset(HI_HANDLE hAvplay)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#endif

    Ret = AVPLAY_Reset(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call AVPLAY_Reset failed.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return Ret;
    }

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetBuf(HI_HANDLE  hAvplay,
                            HI_UNF_AVPLAY_BUFID_E enBufId,
                            HI_U32                u32ReqLen,
                            HI_UNF_STREAM_BUF_S  *pstData,
                            HI_U32                u32TimeOutMs)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (enBufId >= HI_UNF_AVPLAY_BUF_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enBufId is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pstData)
    {
        HI_ERR_AVPLAY("para pstData is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (u32TimeOutMs != 0)
    {
        HI_ERR_AVPLAY("enBufId=%d NOT support block mode, please set 'u32TimeOutMs' to 0.\n", enBufId);
        return HI_ERR_AVPLAY_NOT_SUPPORT;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        HI_ERR_AVPLAY("avplay is ts stream mode.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
        HI_WARN_AVPLAY("avplay curstatus is eos.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_BUF_ID_ES_VID == enBufId)
    {
        if (!pAvplay->VidEnable)
        {
            HI_WARN_AVPLAY("vid chn is stopped.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_VDEC_ChanGetBuffer(pAvplay->hVdec, u32ReqLen, &pAvplay->AvplayVidEsBuf);
        if (Ret != HI_SUCCESS)
        {
            if (Ret != HI_ERR_VDEC_BUFFER_FULL)
            {
                HI_WARN_AVPLAY("call HI_MPI_VDEC_ChanGetBuffer failed, Ret=0x%x.\n", Ret);
            }

            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }

        pstData->pu8Data = pAvplay->AvplayVidEsBuf.pu8Addr;
        pstData->u32Size = pAvplay->AvplayVidEsBuf.u32BufSize;
    }

    if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == enBufId)
    {
        if (!pAvplay->AudEnable)
        {
            HI_WARN_AVPLAY("aud chn is stopped.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
#if 0
        Ret = HI_MPI_ADEC_GetDelayMs(pAvplay->hAdec, &pAvplay->AdecDelayMs);
        if (HI_SUCCESS == Ret && pAvplay->AdecDelayMs > AVPLAY_ADEC_MAX_DELAY)
        {
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
#endif
        Ret = HI_MPI_ADEC_GetBuffer(pAvplay->hAdec, u32ReqLen, &pAvplay->AvplayAudEsBuf);
        if (Ret != HI_SUCCESS)
        {
            if ((Ret != HI_ERR_ADEC_IN_BUF_FULL) && (Ret != HI_ERR_ADEC_IN_PTSBUF_FULL) )
            {
                HI_ERR_AVPLAY("call HI_MPI_ADEC_GetBuffer failed, Ret=0x%x.\n", Ret);
            }

            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }

        pstData->pu8Data = pAvplay->AvplayAudEsBuf.pu8Data;
        pstData->u32Size = pAvplay->AvplayAudEsBuf.u32Size;
    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}


HI_S32 HI_MPI_AVPLAY_PutBuf(HI_HANDLE hAvplay, HI_UNF_AVPLAY_BUFID_E enBufId,
                                       HI_U32 u32ValidDataLen, HI_U32 u32Pts, HI_UNF_AVPLAY_PUTBUFEX_OPT_S *pstExOpt)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (enBufId >= HI_UNF_AVPLAY_BUF_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enBufId is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        HI_ERR_AVPLAY("avplay is ts stream mode.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
        HI_WARN_AVPLAY("avplay curstatus is eos.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_BUF_ID_ES_VID == enBufId)
    {
        if (!pAvplay->VidEnable)
        {
            HI_ERR_AVPLAY("vid chn is stopped.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        pAvplay->AvplayVidEsBuf.u32BufSize = u32ValidDataLen;
        pAvplay->AvplayVidEsBuf.u64Pts = u32Pts;
        pAvplay->AvplayVidEsBuf.bEndOfFrame = pstExOpt->bEndOfFrm;

        if (pstExOpt->bContinue)
        {
            pAvplay->AvplayVidEsBuf.bDiscontinuous = HI_FALSE;
        }
        else
        {
            pAvplay->AvplayVidEsBuf.bDiscontinuous = HI_TRUE;
        }
        
        Ret = HI_MPI_VDEC_ChanPutBuffer(pAvplay->hVdec, &pAvplay->AvplayVidEsBuf);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanPutBuffer failed.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }
    }

    if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == enBufId)
    {
        if (!pAvplay->AudEnable)
        {
            HI_ERR_AVPLAY("aud chn is stopped.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        pAvplay->AvplayAudEsBuf.u32Size = u32ValidDataLen;
        Ret = HI_MPI_ADEC_PutBuffer(pAvplay->hAdec, &pAvplay->AvplayAudEsBuf, u32Pts);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_ADEC_PutBuffer failed.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }
    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}


HI_S32 HI_MPI_AVPLAY_GetSyncVdecHandle(HI_HANDLE hAvplay, HI_HANDLE *phVdec, HI_HANDLE *phSync)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;

    if (!phVdec)
    {
        HI_ERR_AVPLAY("para phVdec is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phSync)
    {
        HI_ERR_AVPLAY("para phSync is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("Avplay have not vdec.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phVdec = pAvplay->hVdec;
    *phSync = pAvplay->hSync;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetSndHandle(HI_HANDLE hAvplay, HI_HANDLE *phTrack)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;

    if (!phTrack)
    {
        HI_ERR_AVPLAY("para phTrack is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (HI_INVALID_HANDLE == pAvplay->hSyncTrack)
    {
        HI_ERR_AVPLAY("Avplay have not main track.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phTrack = pAvplay->hSyncTrack;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

// TODO: 确认该接口能否删除
HI_S32 HI_MPI_AVPLAY_GetWindowHandle(HI_HANDLE hAvplay, HI_HANDLE *phWindow)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!phWindow)
    {
        HI_ERR_AVPLAY("para phWindow is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        HI_ERR_AVPLAY("AVPLAY has not attach master window.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phWindow = pAvplay->MasterFrmChn.hWindow;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_AttachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow)
{
    AVPLAY_S                    *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S           AvplayUsrAddr;
    HI_U32                      i;
    HI_S32                      Ret;
    HI_DRV_WIN_INFO_S           stWinInfo;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_AVPLAY("para hWindow is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);  
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif

    Ret = HI_MPI_WIN_GetInfo(hWindow, &stWinInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_WIN_GetPrivnfo.\n");  
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    /* homologous window*/
    if (HI_DRV_WIN_ACTIVE_MAIN_AND_SLAVE == stWinInfo.eType)
    {
        if (pAvplay->MasterFrmChn.hWindow == stWinInfo.hPrim)
        {
            HI_ERR_AVPLAY("this window is already attached.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_SUCCESS;
        }

        /* if attach homologous window, homologous window must be master window*/
        if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        {
            HI_ERR_AVPLAY("avplay can only attach one master handle.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (pAvplay->SlaveChnNum >= AVPLAY_MAX_SLAVE_FRMCHAN)
        {
            HI_ERR_AVPLAY("avplay has attached max slave window.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = AVPLAY_CreatePort(pAvplay, stWinInfo.hPrim, VDEC_PORT_HD, &(pAvplay->MasterFrmChn.hPort));
        if(HI_SUCCESS != Ret)
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }

        Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->MasterFrmChn.hPort, VDEC_PORT_TYPE_MASTER);
        if(HI_SUCCESS != Ret)
        {
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, stWinInfo.hPrim, pAvplay->MasterFrmChn.hPort);
            pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }

        Ret = AVPLAY_CreatePort(pAvplay, stWinInfo.hSec, VDEC_PORT_SD, &(pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum].hPort));
        if(HI_SUCCESS != Ret)
        {
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, stWinInfo.hPrim, pAvplay->MasterFrmChn.hPort);
            pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }

        Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum].hPort,VDEC_PORT_TYPE_SLAVE);
        if(HI_SUCCESS != Ret)
        {
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, stWinInfo.hPrim, pAvplay->MasterFrmChn.hPort);
            pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, stWinInfo.hSec, pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum].hPort);
            pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum].hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }

        /* no master window, may be exist virtual window , and virtual window is full*/
        /* avoid block master window, we drop this frame, then to obtain new frame*/
        if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
        {
            (HI_VOID)AVPLAY_RelAllVirChnFrame(pAvplay);
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
        }

        pAvplay->MasterFrmChn.hWindow = stWinInfo.hPrim;
        pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum].hWindow = stWinInfo.hSec;

        pAvplay->SlaveChnNum++;
    }
    /*  analogous master window*/
    else if (HI_DRV_WIN_ACTIVE_SINGLE == stWinInfo.eType)
    {
        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            HI_ERR_AVPLAY("this window is alreay attached!\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_SUCCESS;
        }

        if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
        {
            Ret = AVPLAY_CreatePort(pAvplay, hWindow, VDEC_PORT_HD, &(pAvplay->MasterFrmChn.hPort));
            if (HI_SUCCESS != Ret)
            {
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }

            Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->MasterFrmChn.hPort, VDEC_PORT_TYPE_MASTER);
            if(HI_SUCCESS != Ret)
            {
                (HI_VOID)AVPLAY_DestroyPort(pAvplay, hWindow, pAvplay->MasterFrmChn.hPort);
                pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }

            /* no master window, may be exist virtual window , and virtual window is full*/
            /* avoid block master window, we drop this frame, then to obtain new frame*/
            if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
            {
                (HI_VOID)AVPLAY_RelAllVirChnFrame(pAvplay);
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
            }

            pAvplay->MasterFrmChn.hWindow = hWindow;
        }
        else
        {
            //another master window, save it as slave window , for example: ktv scene
            for (i=0; i<pAvplay->SlaveChnNum; i++)
            {
                if (pAvplay->SlaveFrmChn[i].hWindow == hWindow)
                {
                    HI_ERR_AVPLAY("this window is already attached!\n");
#ifdef AVPLAY_VID_THREAD
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                    return HI_SUCCESS;
                }
            }

            if (pAvplay->SlaveChnNum >= AVPLAY_MAX_SLAVE_FRMCHAN)
            {
                HI_ERR_AVPLAY("avplay has attached max slave window.\n");
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }          

            Ret = AVPLAY_CreatePort(pAvplay, hWindow, VDEC_PORT_SD, &(pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum].hPort));
            if(HI_SUCCESS != Ret)
            {
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }

            Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum].hPort,VDEC_PORT_TYPE_SLAVE);
            if(HI_SUCCESS != Ret)
            {
                (HI_VOID)AVPLAY_DestroyPort(pAvplay, hWindow, pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum].hPort);
                pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum].hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }

            pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum].hWindow = hWindow;
            pAvplay->SlaveChnNum++;
        }
    }
    /*  analogous virtual window*/
    else
    {
        for (i=0; i<pAvplay->VirChnNum; i++)
        {
            if (pAvplay->VirFrmChn[i].hWindow == hWindow)
            {
                HI_ERR_AVPLAY("this window is already attached!\n");
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);    
                return HI_SUCCESS;
            }
        }

        if (pAvplay->VirChnNum >= AVPLAY_MAX_VIR_FRMCHAN)
        {
            HI_ERR_AVPLAY("the avplay has attached max window!\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);    
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret= AVPLAY_CreatePort(pAvplay, hWindow, VDEC_PORT_STR, &pAvplay->VirFrmChn[pAvplay->VirChnNum].hPort);
        if (HI_SUCCESS != Ret)
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);    
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->VirFrmChn[pAvplay->VirChnNum].hPort, VDEC_PORT_TYPE_VIRTUAL);
        if(HI_SUCCESS != Ret)
        {
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, hWindow, pAvplay->VirFrmChn[pAvplay->VirChnNum].hPort);
            pAvplay->VirFrmChn[pAvplay->VirChnNum].hPort = HI_INVALID_HANDLE;      

#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;        
        }

        pAvplay->VirFrmChn[pAvplay->VirChnNum].hWindow = hWindow;
        pAvplay->VirChnNum++;
    }

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif

	AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_DetachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_U32                  i;
    HI_S32                  Ret;
    HI_DRV_WIN_INFO_S       WinInfo;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_AVPLAY("para hWindow is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif

    Ret = HI_MPI_WIN_GetInfo(hWindow, &WinInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VO_GetWindowInfo.\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;    
    }

    /* homologous window*/ /* 同源窗口 */
    if (HI_DRV_WIN_ACTIVE_MAIN_AND_SLAVE == WinInfo.eType)
    {
        if (pAvplay->MasterFrmChn.hWindow != WinInfo.hPrim)
        {
            HI_ERR_AVPLAY("ERR: this is not a attached window.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
        
        for (i=0; i<pAvplay->SlaveChnNum; i++)
        {
            if (pAvplay->SlaveFrmChn[i].hWindow == WinInfo.hSec)  
            {
                break;
            }
        }

        if (i == pAvplay->SlaveChnNum)
        {
            HI_ERR_AVPLAY("ERR: this is not a attached window.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        /* had recevied frmpack and frm is hold in AVPLAY or WIN(frc) */
        /*vir chn don't care*/
        if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
        {
            (HI_VOID)AVPLAY_RelAllChnFrame(pAvplay);
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
        }

        Ret = AVPLAY_DestroyPort(pAvplay, pAvplay->MasterFrmChn.hWindow, pAvplay->MasterFrmChn.hPort);
        Ret |= AVPLAY_DestroyPort(pAvplay, pAvplay->SlaveFrmChn[i].hWindow, pAvplay->SlaveFrmChn[i].hPort);
        if (HI_SUCCESS != Ret)
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        pAvplay->MasterFrmChn.hWindow = HI_INVALID_HANDLE;
        pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;

        pAvplay->SlaveFrmChn[i].hWindow = pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hWindow;
        pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hWindow = HI_INVALID_HANDLE;

        pAvplay->SlaveFrmChn[i].hPort = pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hPort;
        pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hPort = HI_INVALID_HANDLE;
        
        pAvplay->SlaveChnNum--;
        
        //look up another master window
        for (i=0; i<pAvplay->SlaveChnNum; i++)
        {
            Ret = HI_MPI_WIN_GetInfo(pAvplay->SlaveFrmChn[i].hWindow, &WinInfo);
            if (HI_SUCCESS == Ret)
            {
                if (HI_DRV_WIN_ACTIVE_SINGLE == WinInfo.eType)
                {
                    break;
                }
            }
        }

        //find it
        if (i<pAvplay->SlaveChnNum)
        {
            pAvplay->MasterFrmChn.hWindow = pAvplay->SlaveFrmChn[i].hWindow;
            pAvplay->MasterFrmChn.hPort = pAvplay->SlaveFrmChn[i].hPort;
        
            Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->MasterFrmChn.hPort, VDEC_PORT_TYPE_MASTER);
            if(HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: set main port failed.\n");
            }
        
            pAvplay->SlaveFrmChn[i].hWindow = pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hWindow;
            pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hWindow = HI_INVALID_HANDLE;
            pAvplay->SlaveFrmChn[i].hPort = pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hPort;
            pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hPort = HI_INVALID_HANDLE;
            
            pAvplay->SlaveChnNum--;
        }
    }
    /*  analogous master window*/ /* 非同源 主窗口及从窗口 */
    else if (HI_DRV_WIN_ACTIVE_SINGLE == WinInfo.eType)
    {
        if (pAvplay->MasterFrmChn.hWindow == hWindow)
        {
            /* had recevied frmpack and frm is hold in AVPLAY or WIN(frc) */
            /*vir chn don't care*/
            if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
            {
                (HI_VOID)AVPLAY_RelAllChnFrame(pAvplay);
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
            }

            Ret = AVPLAY_DestroyPort(pAvplay, pAvplay->MasterFrmChn.hWindow, pAvplay->MasterFrmChn.hPort);
            if (HI_SUCCESS != Ret)
            {
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return HI_ERR_AVPLAY_INVALID_OPT;               
            }

            pAvplay->MasterFrmChn.hWindow = HI_INVALID_HANDLE;
            pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;

            //look up another master window
            for (i=0; i<pAvplay->SlaveChnNum; i++)
            {
                Ret = HI_MPI_WIN_GetInfo(pAvplay->SlaveFrmChn[i].hWindow, &WinInfo);
                if (HI_SUCCESS == Ret)
                {
                    if (HI_DRV_WIN_ACTIVE_SINGLE == WinInfo.eType)
                    {
                        break;
                    }
                }
            }

            //find it
            if (i<pAvplay->SlaveChnNum)
            {
                pAvplay->MasterFrmChn.hWindow = pAvplay->SlaveFrmChn[i].hWindow;
                pAvplay->MasterFrmChn.hPort = pAvplay->SlaveFrmChn[i].hPort;
            
                Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->MasterFrmChn.hPort, VDEC_PORT_TYPE_MASTER);
                if(HI_SUCCESS != Ret)
                {
                    HI_ERR_AVPLAY("ERR: set main port failed.\n");
                }
            
                pAvplay->SlaveFrmChn[i].hWindow = pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hWindow;
                pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hWindow = HI_INVALID_HANDLE;
                pAvplay->SlaveFrmChn[i].hPort = pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hPort;
                pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hPort = HI_INVALID_HANDLE;
                
                pAvplay->SlaveChnNum--;
            }
        }
        else
        {
            //look up another master window
            for (i=0; i<pAvplay->SlaveChnNum; i++)
            {
                if (pAvplay->SlaveFrmChn[i].hWindow == hWindow)
                {
                    break;
                }
            }

            if (i == pAvplay->SlaveChnNum)
            {
                HI_ERR_AVPLAY("ERR: this is not a attached master window.\n");
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return HI_ERR_AVPLAY_INVALID_OPT;             
            }

            /*had received frmpack and frm is hold in AVPLAY, but has master window, don't need to receive new frmpack*/
            if ((HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO]))
            {
                (HI_VOID)AVPLAY_RelSpecialFrame(pAvplay, hWindow);
            }

            /*FATAL: after AVPLAY_DettachWinRelFrame, but AVPLAY_DestroyPort Failed*/
            Ret = AVPLAY_DestroyPort(pAvplay, hWindow, pAvplay->SlaveFrmChn[i].hPort);
            if (HI_SUCCESS != Ret)
            {
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return HI_ERR_AVPLAY_INVALID_OPT;               
            }

            //find it
            if (i<pAvplay->SlaveChnNum)
            {                
                pAvplay->SlaveFrmChn[i].hWindow = pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hWindow;
                pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hWindow = HI_INVALID_HANDLE;
                pAvplay->SlaveFrmChn[i].hPort = pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hPort;
                pAvplay->SlaveFrmChn[pAvplay->SlaveChnNum - 1].hPort = HI_INVALID_HANDLE;

                pAvplay->SlaveChnNum--;
            }
        }
    }
    /* analogous virtual window*/ /* 非同源 虚拟窗口*/
    else
    {
        for (i=0; i<pAvplay->VirChnNum; i++)
        {
            if (pAvplay->VirFrmChn[i].hWindow == hWindow)
            {
                break;
            }
        }

        if (i == pAvplay->VirChnNum)
        {
            HI_ERR_AVPLAY("ERR: this is not a attached master window.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;             
        }

        /* if no master chn ， only virtual chn */
        if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
        {        
            if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
            {
                (HI_VOID)AVPLAY_RelAllVirChnFrame(pAvplay);
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
            }
        }

        Ret = AVPLAY_DestroyPort(pAvplay, hWindow, pAvplay->VirFrmChn[i].hPort);
        if (HI_SUCCESS != Ret)
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;          
        }

        pAvplay->VirFrmChn[i].hWindow = pAvplay->VirFrmChn[pAvplay->VirChnNum - 1].hWindow;
        pAvplay->VirFrmChn[pAvplay->VirChnNum - 1].hWindow = HI_INVALID_HANDLE;

        pAvplay->VirFrmChn[i].hPort = pAvplay->VirFrmChn[pAvplay->VirChnNum - 1].hPort;
        pAvplay->VirFrmChn[pAvplay->VirChnNum - 1].hPort = HI_INVALID_HANDLE;

        pAvplay->VirChnNum--;
    }


#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}


// TODO: 确认该功能是否还需要
HI_S32 HI_MPI_AVPLAY_SetWindowRepeat(HI_HANDLE hAvplay, HI_U32 u32Repeat)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_U32               AvplayRatio;
    HI_S32               Ret;

    if (0 == u32Repeat)
    {
        HI_ERR_AVPLAY("para u32Repeat is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        HI_ERR_AVPLAY("AVPLAY has not attach master window.\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    AvplayRatio = 256/u32Repeat;

    if ((AvplayRatio > AVPLAY_ALG_FRC_MAX_PLAY_RATIO)
        || (AvplayRatio < AVPLAY_ALG_FRC_MIN_PLAY_RATIO))
    {
        HI_ERR_AVPLAY("Set repeat invalid!\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    pAvplay->FrcParamCfg.u32PlayRate = AvplayRatio;

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_AttachSnd(HI_HANDLE hAvplay, HI_HANDLE hTrack)
{
    AVPLAY_S            *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S   AvplayUsrAddr;
    HI_S32              Ret;
    HI_S32              i;
    HI_UNF_AUDIOTRACK_ATTR_S    stTrackInfo;

    if (HI_INVALID_HANDLE == hTrack)
    {
        HI_ERR_AVPLAY("para hTrack is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

    for (i=0; i<AVPLAY_MAX_TRACK; i++)
    {
        if (pAvplay->hTrack[i] == hTrack)
        {
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_SUCCESS;
        }
    }

    memset(&stTrackInfo, 0x0, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));
    Ret = HI_MPI_AO_Track_GetAttr(hTrack, &stTrackInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_HIAO_GetTrackInfo.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_FAILURE;
    }

    for (i=0; i<AVPLAY_MAX_TRACK; i++)
    {
        if (HI_INVALID_HANDLE == pAvplay->hTrack[i])
        {
            break;
        }
    }

    if(AVPLAY_MAX_TRACK == i)
    {
        HI_ERR_AVPLAY("AVPLAY has attached max track.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_FAILURE;        
    }    

    pAvplay->hTrack[i] = hTrack;
	pAvplay->TrackNum++;
    
    if ((HI_UNF_SND_TRACK_TYPE_VIRTUAL != stTrackInfo.enTrackType)
        && (HI_INVALID_HANDLE == pAvplay->hSyncTrack)
        )
    {
        pAvplay->hSyncTrack = hTrack;
    }

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_DetachSnd(HI_HANDLE hAvplay, HI_HANDLE hTrack)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;
    HI_U32              i, j;
    HI_UNF_AUDIOTRACK_ATTR_S    stTrackInfo;

    if (HI_INVALID_HANDLE == hTrack)
    {
        HI_ERR_AVPLAY("para hTrack is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    memset(&stTrackInfo, 0x0, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

    for (i=0; i<pAvplay->TrackNum; i++)
    {
        if (pAvplay->hTrack[i] == hTrack)
        {
            break;
        }
    }

    if (i == pAvplay->TrackNum)
    {
        HI_ERR_AVPLAY("this is not a attached track, can not detach.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    pAvplay->hTrack[i] = pAvplay->hTrack[pAvplay->TrackNum - 1];
    pAvplay->hTrack[pAvplay->TrackNum - 1] = HI_INVALID_HANDLE;
    pAvplay->TrackNum--;
    
    if (hTrack == pAvplay->hSyncTrack)
    {
        for (j=0; j<pAvplay->TrackNum; j++)
        {
            (HI_VOID)HI_MPI_AO_Track_GetAttr(pAvplay->hTrack[j], &stTrackInfo);

            if (HI_UNF_SND_TRACK_TYPE_VIRTUAL != stTrackInfo.enTrackType)
            {
                pAvplay->hSyncTrack = pAvplay->hTrack[j];
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return HI_SUCCESS;
            }            
        } 

        if (j == pAvplay->TrackNum)
        {
            pAvplay->hSyncTrack= HI_INVALID_HANDLE;
        }
    }
    
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetDmxAudChnHandle(HI_HANDLE hAvplay, HI_HANDLE *phDmxAudChn)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!phDmxAudChn)
    {
        HI_ERR_AVPLAY("para phDmxAudChn is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts stream mode.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (!pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
         return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phDmxAudChn = pAvplay->hDmxAud[pAvplay->CurDmxAudChn];

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetDmxVidChnHandle(HI_HANDLE hAvplay, HI_HANDLE *phDmxVidChn)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!phDmxVidChn)
    {
        HI_ERR_AVPLAY("para phDmxVidChn is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts stream mode.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (!pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phDmxVidChn = pAvplay->hDmxVid;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);  
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetStatusInfo(HI_HANDLE hAvplay, HI_UNF_AVPLAY_STATUS_INFO_S *pstStatusInfo)
{
    AVPLAY_S                       *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S              AvplayUsrAddr;
    HI_S32                           Ret;
    ADEC_BUFSTATUS_S               AdecBufStatus = {0};
    VDEC_STATUSINFO_S              VdecBufStatus = {0};
    HI_MPI_DMX_BUF_STATUS_S        VidChnBuf = {0};
    HI_U32                         SndDelay = 0;
    HI_DRV_WIN_PLAY_INFO_S         WinPlayInfo = {0};

    if (!pstStatusInfo)
    {
        HI_ERR_AVPLAY("para pstStatusInfo is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    pstStatusInfo->enRunStatus = pAvplay->CurStatus;

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {       
        Ret = HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBufStatus);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_ADEC_GetInfo failed.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }
        else
        {
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_AUD;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufSize = AdecBufStatus.u32BufferSize;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32UsedSize = AdecBufStatus.u32BufferUsed;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufWptr = AdecBufStatus.u32BufWritePos;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufRptr = (HI_U32)AdecBufStatus.s32BufReadPos;
            pstStatusInfo->u32AuddFrameCount = AdecBufStatus.u32TotDecodeFrame;
        }
    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_AUD;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufSize  = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32UsedSize = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufWptr  = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufRptr  = 0;
        pstStatusInfo->u32AuddFrameCount = 0;
    }

    if (pAvplay->hSyncTrack != HI_INVALID_HANDLE)
    {

        Ret = HI_MPI_AO_Track_GetDelayMs(pAvplay->hSyncTrack, &SndDelay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_HIAO_GetDelayMs failed:%x.\n",Ret);
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
    	}

        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime = SndDelay;

    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime = 0;
    }

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBufStatus);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanStatusInfo failed.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }
            
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_DMX_GetPESBufferStatus failed.\n");
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }
            
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufSize = VidChnBuf.u32BufSize;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize = VidChnBuf.u32UsedSize;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufWptr = VidChnBuf.u32BufWptr;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufRptr = VidChnBuf.u32BufRptr;
        }
        else
        {
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufSize = VdecBufStatus.u32BufferSize;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize = VdecBufStatus.u32BufferUsed;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufWptr = 0;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufRptr = 0;
        }

        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_VID;      
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufNum = VdecBufStatus.u32FrameBufNum;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].bEndOfStream = VdecBufStatus.bEndOfStream;
        pstStatusInfo->u32VidFrameCount = VdecBufStatus.u32TotalDecFrmNum;
        pstStatusInfo->u32VidErrorFrameCount = VdecBufStatus.u32TotalErrFrmNum;        
    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufSize = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufWptr = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufRptr = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_VID;        
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufNum = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].bEndOfStream = HI_TRUE;
        pstStatusInfo->u32VidFrameCount = 0;
        pstStatusInfo->u32VidErrorFrameCount = 0;    
    }

    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        Ret = HI_MPI_WIN_GetPlayInfo(pAvplay->MasterFrmChn.hWindow, &WinPlayInfo);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_WIN_GetPlayInfo failed.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }
        else
        {
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime = WinPlayInfo.u32DelayTime;
        }
    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime = 0;
    }

    Ret = HI_MPI_SYNC_GetStatus(pAvplay->hSync, &pstStatusInfo->stSyncStatus);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_GetStatus failed.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return Ret;
    }

#if 0
    if(HI_INVALID_PTS !=  pstStatusInfo->stSyncStatus.u32LastAudPts)
    {
        if (pstStatusInfo->stSyncStatus.u32LastAudPts > pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime)
        {
            pstStatusInfo->stSyncStatus.u32LastAudPts -= pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime; 
        }
        else
        {
            pstStatusInfo->stSyncStatus.u32LastAudPts = 0;
        }
    } 
    
    if(HI_INVALID_PTS !=  pstStatusInfo->stSyncStatus.u32LastVidPts)
    {
        if (pstStatusInfo->stSyncStatus.u32LastVidPts > pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime)
        {
            pstStatusInfo->stSyncStatus.u32LastVidPts -= pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime; 
        }
        else
        {
            pstStatusInfo->stSyncStatus.u32LastVidPts = 0;
        }
    } 
#endif

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetStreamInfo(HI_HANDLE hAvplay, HI_UNF_AVPLAY_STREAM_INFO_S *pstStreamInfo)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;
    ADEC_STREAMINFO_S       AdecStreaminfo = {0};
    
    if (!pstStreamInfo)
    {
        HI_ERR_AVPLAY("para pstStreamInfo is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_STREAMINFO, &AdecStreaminfo);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_ADEC_GetInfo failed.\n");
        }
        else
        {
            pstStreamInfo->stAudStreamInfo.enACodecType = AdecStreaminfo.u32CodecID;
            pstStreamInfo->stAudStreamInfo.enSampleRate = AdecStreaminfo.enSampleRate;
            pstStreamInfo->stAudStreamInfo.enBitDepth = HI_UNF_BIT_DEPTH_16;
        }
    }

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_GetChanStreamInfo(pAvplay->hVdec, &(pstStreamInfo->stVidStreamInfo));
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanStreamInfo failed.\n");
        }        
    }   

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetAudioSpectrum(HI_HANDLE hAvplay, HI_U16 *pSpectrum, HI_U32 u32BandNum)
{

    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;

    if (!pSpectrum)
    {
        HI_ERR_AVPLAY("para pSpectrum is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (!pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is stopped.\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_ADEC_GetAudSpectrum(pAvplay->hAdec,  pSpectrum , u32BandNum);
    if(HI_SUCCESS != Ret)
    {
        HI_WARN_AVPLAY("WARN: HI_MPI_ADEC_GetAudSpectrum.\n");
    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
   
    return Ret;
}

/* add for user to get buffer state, user may want to check if buffer is empty,
    but NOT want to block the user's thread. then user can use this API to check the buffer state
    by q46153 */
HI_S32 HI_MPI_AVPLAY_IsBuffEmpty(HI_HANDLE hAvplay, HI_BOOL *pbIsEmpty)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;
    
    if (!pbIsEmpty)
    {
        HI_ERR_AVPLAY("para pbIsEmpty is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    *pbIsEmpty = HI_FALSE;
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;
    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (pAvplay->bSetEosFlag)
    {
        if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
        {
            *pbIsEmpty = HI_TRUE;
            pAvplay->CurBufferEmptyState = HI_TRUE;
        }
        else
        {
            *pbIsEmpty = HI_FALSE;
            pAvplay->CurBufferEmptyState = HI_FALSE;
        }
    }
    else
    {
        *pbIsEmpty = AVPLAY_IsBufEmpty(pAvplay);
    }
    
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    
    return HI_SUCCESS;
}


/* for DDP test only! call this before HI_UNF_AVPLAY_ChnOpen */ 
HI_S32 HI_MPI_AVPLAY_SetDDPTestMode(HI_HANDLE hAvplay, HI_BOOL bEnable)
{
    AVPLAY_S              *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S     AvplayUsrAddr;
    HI_S32                Ret;
        
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;
    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    pAvplay->AudDDPMode = bEnable;
    pAvplay->LastAudPts = 0;
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    Ret = HI_MPI_SYNC_SetDDPTestMode(pAvplay->hSync, pAvplay->AudDDPMode);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Set SYNC DDPTestMode error:%#x.\n", Ret);
    }
    
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_SwitchDmxAudChn(HI_HANDLE hAvplay, HI_HANDLE hNewDmxAud, HI_HANDLE *phOldDmxAud)
{
    AVPLAY_S              *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S     AvplayUsrAddr;
    HI_S32                Ret;
    
    if ((!hAvplay) || (!hNewDmxAud) || (HI_NULL == phOldDmxAud))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;
    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    AVPLAY_Mutex_Lock(pAvplay->pAvplayThreadMutex);

    /* if the es buf has not been released */
    if(pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
    }
    
    *phOldDmxAud = pAvplay->hDmxAud[pAvplay->CurDmxAudChn];
    pAvplay->hDmxAud[pAvplay->CurDmxAudChn] = hNewDmxAud;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    
    return HI_SUCCESS;
}

/* add for Flashplayer adjust pts */
HI_S32 HI_MPI_AVPLAY_PutAudPts(HI_HANDLE hAvplay, HI_U32 u32AudPts)
{
    AVPLAY_S              *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S     AvplayUsrAddr;
    HI_S32                Ret;
    
    if ((!hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    pAvplay->AudInfo.SrcPts = u32AudPts;
    pAvplay->AudInfo.Pts = u32AudPts;

    pAvplay->AudInfo.BufTime = 0;
    pAvplay->AudInfo.FrameNum = 0;
    pAvplay->AudInfo.FrameTime = 5000;

    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
    Ret = HI_MPI_SYNC_AudJudge(pAvplay->hSync, &pAvplay->AudInfo, &pAvplay->AudOpt);
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_FlushStream(HI_HANDLE hAvplay, HI_UNF_AVPLAY_FLUSH_STREAM_OPT_S *pstFlushOpt)
{
    HI_S32                  Ret;
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;

    if ((!hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    AVPLAY_Mutex_Lock(pAvplay->pAvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_Mutex_Lock(pAvplay->pAvplayVidThreadMutex);
#endif

    if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
        HI_INFO_AVPLAY("current status is eos!\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_SUCCESS;
    }

    if (pAvplay->bSetEosFlag)
    {
        HI_INFO_AVPLAY("Eos Flag has been set!\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_SUCCESS;
    }

    Ret = AVPLAY_SetEosFlag(pAvplay);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: AVPLAY_SetEosFlag, Ret = %#x\n", Ret);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);        
        return Ret;
    }

#ifdef AVPLAY_VID_THREAD
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#endif
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_Step(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_STEP_OPT_S *pstStepOpt)
{
    HI_S32                  Ret;
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;

    if ((!hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
#endif

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        HI_ERR_AVPLAY("AVPLAY has not attach master window.\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    pAvplay->bStepMode = HI_TRUE;
    pAvplay->bStepPlay = HI_TRUE;

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
#endif

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_Invoke(HI_HANDLE hAvplay, HI_UNF_AVPLAY_INVOKE_E enInvokeType, HI_VOID *pPara)
{
    HI_S32                                  Ret;
    AVPLAY_S                                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S                       AvplayUsrAddr;
    HI_DRV_VIDEO_FRAME_S                    stVidFrame;
    HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S     stPlayInfo;
    HI_DRV_VIDEO_PRIVATE_S                  stVidPrivate;

    if (enInvokeType >= HI_UNF_AVPLAY_INVOKE_BUTT)
    {
        HI_ERR_AVPLAY("para enInvokeType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pPara)
    {
        HI_ERR_AVPLAY("para pPara is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    memset(&stVidFrame, 0x0, sizeof(HI_DRV_VIDEO_FRAME_S));
    memset(&stPlayInfo, 0x0, sizeof(HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S));
    memset(&stVidPrivate, 0x0, sizeof(HI_DRV_VIDEO_PRIVATE_S));

    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (HI_UNF_AVPLAY_INVOKE_VCODEC == enInvokeType)
    {
        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            HI_ERR_AVPLAY("vid chn is close, can not set vcodec cmd.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_VDEC_Invoke(pAvplay->hVdec, pPara);
        if (Ret != HI_SUCCESS)
        {
            HI_WARN_AVPLAY("HI_MPI_VDEC_Invoke failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_INVOKE_ACODEC == enInvokeType)
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            HI_ERR_AVPLAY("aud chn is close, can not set acodec cmd.\n");
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_ADEC_SetCodecCmd(pAvplay->hAdec, pPara);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("ADEC_SetCodecCmd failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO == enInvokeType)
    {
        if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
        {
            HI_ERR_AVPLAY("AVPLAY has not attach master window.\n"); 
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_WIN_GetLatestFrameInfo(pAvplay->MasterFrmChn.hWindow, &stVidFrame);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_WIN_GetLatestFrameInfo failed.\n");
        }

        stPlayInfo.u32LastPts = stVidFrame.u32Pts;

        memcpy(&stVidPrivate, (HI_DRV_VIDEO_PRIVATE_S *)(stVidFrame.u32Priv), sizeof(HI_DRV_VIDEO_PRIVATE_S));
        
        stPlayInfo.u32LastPlayTime = stVidPrivate.u32PrivDispTime;
        
        stPlayInfo.u32DispOptimizeFlag = pAvplay->u32DispOptimizeFlag;

        memcpy((HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S *)pPara, &stPlayInfo, sizeof(HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S));
    }
    else if (HI_UNF_AVPLAY_INVOKE_SET_DISP_OPTIMIZE_FLAG == enInvokeType)
    {
        pAvplay->u32DispOptimizeFlag = *(HI_U32 *)pPara;
    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);

    return Ret;
}


HI_S32 HI_MPI_AVPLAY_AcqUserData(HI_HANDLE hAvplay, HI_UNF_VIDEO_USERDATA_S *pstUserData, HI_UNF_VIDEO_USERDATA_TYPE_E *penType)
{
    HI_S32                  Ret;
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;

    if ((HI_INVALID_HANDLE == hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    if (!pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("Vid chan is not start.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;        
    }

    Ret = HI_MPI_VDEC_AcqUserData(pAvplay->hVdec, pstUserData, penType);
    if (HI_SUCCESS != Ret)
    {
        return HI_ERR_AVPLAY_INVALID_OPT;    
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_RlsUserData(HI_HANDLE hAvplay, HI_UNF_VIDEO_USERDATA_S* pstUserData)
{
    HI_S32                  Ret;
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;

    if ((HI_INVALID_HANDLE == hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    if (!pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("Vid chan is not start.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;        
    }

    Ret = HI_MPI_VDEC_RlsUserData(pAvplay->hVdec, pstUserData);
    if (HI_SUCCESS != Ret)
    {
        return HI_ERR_AVPLAY_INVALID_OPT;    
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetVidChnOpenParam(HI_HANDLE hAvplay, HI_UNF_AVPLAY_OPEN_OPT_S *pstOpenPara)
{
    HI_S32                  Ret;
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;

    if (HI_NULL == pstOpenPara)
    {
        HI_ERR_AVPLAY("pstOpenPara is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;        
    }

    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("Vid Chan is not open!\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanOpenParam(pAvplay->hVdec, pstOpenPara);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_GetChanOpenParam ERR, Ret=%#x\n", Ret);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    
    return HI_SUCCESS;
}


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
