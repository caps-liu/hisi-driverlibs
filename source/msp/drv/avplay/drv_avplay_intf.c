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

#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_mmz.h"
#include "hi_drv_avplay.h"
#include "hi_error_mpi.h"
#include "hi_drv_module.h"
#include "hi_module.h"
#include "drv_avplay_ext.h"
#include "hi_kernel_adapt.h"
#include "drv_avplay_ioctl.h"
#include "hi_osal.h"
#include "hi_debug.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

#define AVPLAY_NAME         "HI_AVPLAY"

static UMAP_DEVICE_S        g_AvplayRegisterData;
static atomic_t             g_AvplayCount = ATOMIC_INIT(0);
AVPLAY_GLOBAL_STATE_S       g_AvplayGlobalState;

HI_U8 *g_pAvplayStreamTypeString[3] = {"TS", "ES", "VP"};

HI_U8 *g_pAvplayStatusString[6] = {
    "STOP",
    "PLAY",
    "TPLAY",
    "PAUSE",
    "EOS",
    "SEEK"
};

HI_U8 *g_pAvplayOverflowString[2] = {
    "RESET",
    "DISCARD",
};

HI_CHAR *g_pAvplayVdecType[HI_UNF_VCODEC_TYPE_BUTT+1] = {
    "MPEG2",
    "MPEG4",
    "AVS",
    "H263",
    "H264",
    "REAL8",
    "REAL9",
    "VC1",
    "VP6",
    "VP6F",
    "VP6A",
    "MJPEG",
    "SORENSON",
    "DIVX3",
    "RAW",
    "JPEG",
    "VP8",
    "MSMPEG4V1",
    "MSMPEG4V2",
    "MSVIDEO1", 
    "WMV1",     
    "WMV2",     
    "RV10",     
    "RV20",     
    "SVQ1",     
    "SVQ3",     
    "H261",     
    "VP3",      
    "VP5",      
    "CINEPAK",  
    "INDEO2",   
    "INDEO3",   
    "INDEO4",   
    "INDEO5",   
    "MJPEGB",   
    "MVC",
    "HEVC",
    "BUTT"
};

HI_U8 *g_pAvplayVdecMode[3] = {
    "NORMAL",
    "IP",
    "I"
};

HI_DECLARE_MUTEX(g_AvplayMutex);

static HI_S32 AVPLAY_ProcParsePara(HI_CHAR *pProcPara,HI_CHAR **ppItem,HI_CHAR **ppValue)
{
    HI_CHAR *pChar = HI_NULL;
    HI_CHAR *pItem,*pValue;

    pChar = strchr(pProcPara,'=');
    if (HI_NULL == pChar)
    {
        return HI_FAILURE; /* Not Found '=' */
    }

    pItem = pProcPara;
    pValue = pChar + 1;
    *pChar = '\0';

    /* remove blank bytes from item tail */
    pChar = pItem;
    while(*pChar != ' ' && *pChar != '\0')
    {
        pChar++;
    }
    *pChar = '\0';
    
    /* remove blank bytes from value head */
    while(*pValue == ' ')
    {
        pValue++;
    }

    *ppItem = pItem;
    *ppValue = pValue;
    return HI_SUCCESS;
}

static HI_S32 AVPLAY_ProcRead(struct seq_file *p, HI_VOID *v)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_U32            AvplayId;
    AVPLAY_S          *pAvplay;
    HI_U32            i;
    HI_CHAR           szFrcInRate[16]   = {0};
    HI_CHAR           szFrcOutRate[16]  = {0};
    HI_CHAR           szTplaySpeed[16]  = {0};
    HI_CHAR           szSyncID[16]      = {0};
    HI_CHAR           szDemuxID[16]     = {0};

    pProcItem = p->private;

    AvplayId = (pProcItem->entry_name[6] - '0')*10 + (pProcItem->entry_name[7] - '0');

    pAvplay = g_AvplayGlobalState.AvplayInfo[AvplayId].pAvplay;

    HI_OSAL_Snprintf(szFrcInRate, sizeof(szFrcInRate), "%d.%d", 
        pAvplay->FrcParamCfg.u32InRate/100, pAvplay->FrcParamCfg.u32InRate%100);
    
    HI_OSAL_Snprintf(szFrcOutRate, sizeof(szFrcOutRate), "%d.%d", 
        pAvplay->FrcParamCfg.u32OutRate/100, pAvplay->FrcParamCfg.u32OutRate%100);

    HI_OSAL_Snprintf(szTplaySpeed, sizeof(szTplaySpeed), "%d.%d", 
        pAvplay->FrcParamCfg.u32PlayRate/256, pAvplay->FrcParamCfg.u32PlayRate % 256 * 100 / 256);

    HI_OSAL_Snprintf(szSyncID, sizeof(szSyncID), "sync%02d", pAvplay->hSync & 0xff);

    if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        HI_OSAL_Snprintf(szDemuxID, sizeof(szDemuxID), "INVALID");
    }
    else
    {
        HI_OSAL_Snprintf(szDemuxID, sizeof(szDemuxID), "%d", pAvplay->AvplayAttr.u32DemuxId);
    }

    PROC_PRINT(p,"----------------------Hisilicon AVPLAY%d Out Info-------------------\n", AvplayId);

    PROC_PRINT(p,
                    "Stream Type           :%-10s   |DmxId                 :%s\n"
                    "CurStatus             :%-10s   |OverflowProc          :%s\n"
                    "Sync ID               :%-10s   |ThreadID              :%d\n"
                    "ThreadScheTimeOutCnt  :%-10u   |ThreadExeTimeOutCnt   :%u\n",
                    g_pAvplayStreamTypeString[pAvplay->AvplayAttr.stStreamAttr.enStreamType],
                    szDemuxID,
                    g_pAvplayStatusString[pAvplay->CurStatus],
                    g_pAvplayOverflowString[pAvplay->OverflowProc],
                    szSyncID,
                    pAvplay->ThreadID,
                    pAvplay->DebugInfo.ThreadScheTimeOutCnt,
                    pAvplay->DebugInfo.ThreadExeTimeOutCnt
                    );

    PROC_PRINT(p,
                    "------------------------------VID CHANNEL--------------------------\n"
                    "Vid Enable            :%-10s   |Vdec Type             :%s\n"
                    "VidOverflowNum        :%-10d   |Vdec Mode             :%s\n"
                    "VidPid                :0x%-10x |FrcEnable             :%s\n"
                    "FrcInRate             :%-10s   |FrcOutRate            :%s\n"
                    "TplaySpeed            :%-10s   |LowDelayEnable        :%s\n"
                    "Vdec ID               :vdec%02d\n",
                    (pAvplay->VidEnable) ? "TRUE" : "FALSE",
                    g_pAvplayVdecType[pAvplay->VdecAttr.enType],
                    pAvplay->DebugInfo.VidOverflowNum,
                    g_pAvplayVdecMode[pAvplay->VdecAttr.enMode],
                    pAvplay->DmxVidPid,
                    (pAvplay->bFrcEnable) ? "TRUE" : "FALSE",
                    szFrcInRate,
                    szFrcOutRate,
                    szTplaySpeed,
                    (pAvplay->LowDelayAttr.bEnable) ? "TRUE" : "FALSE",
                    pAvplay->hVdec & 0xff
                    );

    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {    
        PROC_PRINT(p, "FrameChanID           :port%04x->win%04x(master)\n",
                        pAvplay->MasterFrmChn.hPort & 0xffff,
                        pAvplay->MasterFrmChn.hWindow & 0xffff);
                        
    }

    for (i = 0; i < pAvplay->SlaveChnNum; i++)
    {
        PROC_PRINT(p, "FrameChanID           :port%04x->win%04d(slave%02d)\n",
                        pAvplay->SlaveFrmChn[i].hPort & 0xffff,
                        pAvplay->SlaveFrmChn[i].hWindow & 0xffff,
                        i);
    }

    for (i = 0; i < pAvplay->VirChnNum; i++)
    {
        PROC_PRINT(p, "FrameChanID           :port%04x->win%04d(virtual%02d)\n",
                        pAvplay->VirFrmChn[i].hPort & 0xffff,
                        pAvplay->VirFrmChn[i].hWindow & 0xffff,
                        i);
    }

    PROC_PRINT(p, 
                    "AcquireFrame(Try/OK)  :%u/%u\n",
                    pAvplay->DebugInfo.AcquireVidFrameNum,
                    pAvplay->DebugInfo.AcquiredVidFrameNum
                    );
                        
    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        PROC_PRINT(p,
                        "SendFrame(Try/OK)     :%u/%u(master)\n", 
                        pAvplay->DebugInfo.MasterVidStat.SendNum,
                        pAvplay->DebugInfo.MasterVidStat.PlayNum + 
                        pAvplay->DebugInfo.MasterVidStat.RepeatNum +
                        pAvplay->DebugInfo.MasterVidStat.DiscardNum
                        );
    }

    for (i = 0; i < pAvplay->SlaveChnNum; i++)
    {
        PROC_PRINT(p,
                        "SendFrame(Try/OK)     :%u/%u(slave%02d)\n", 
                        pAvplay->DebugInfo.SlaveVidStat[i].SendNum,
                        pAvplay->DebugInfo.SlaveVidStat[i].PlayNum + 
                        pAvplay->DebugInfo.SlaveVidStat[i].RepeatNum +
                        pAvplay->DebugInfo.SlaveVidStat[i].DiscardNum,
                        i
                        );
    }

    for (i = 0; i < pAvplay->VirChnNum; i++)
    {
        PROC_PRINT(p,
                        "SendFrame(Try/OK)     :%u/%u(virtual%02d)\n", 
                        pAvplay->DebugInfo.VirVidStat[i].SendNum,
                        pAvplay->DebugInfo.VirVidStat[i].PlayNum + 
                        pAvplay->DebugInfo.VirVidStat[i].RepeatNum +
                        pAvplay->DebugInfo.VirVidStat[i].DiscardNum,
                        i
                        );
    }

    //PROC_PRINT(p, "\n");

    PROC_PRINT(p,
                  "------------------------------AUD CHANNEL--------------------------\n"
                  "Aud Enable            :%-10s   |Adec Type             :%s\n"
                  "AudOverflowNum        :%-10d   |AdecDelayMs           :%u\n"
                  "DmxAudChnNum          :%-10d\n",
                  (pAvplay->AudEnable) ? "TRUE" : "FALSE",
                  pAvplay->AdecNameInfo.szHaCodecName,
                  pAvplay->DebugInfo.AudOverflowNum,
                  pAvplay->AdecDelayMs,
                  pAvplay->DmxAudChnNum
                  );
                    
    PROC_PRINT(p, "DmxAudPid             :");

    for (i = 0; i < pAvplay->DmxAudChnNum; i++)
    {
        PROC_PRINT(p, "%#x", pAvplay->DmxAudPid[i]);

        if ((pAvplay->DmxAudChnNum > 1) && (i == pAvplay->CurDmxAudChn))
        {
            PROC_PRINT(p, "(play)");
        }

        if (i < pAvplay->DmxAudChnNum - 1)
        {
            PROC_PRINT(p, ",");
        }
    }

    PROC_PRINT(p, "\n");

    PROC_PRINT(p, "Adec ID               :adec%02d\n", pAvplay->hAdec & 0xff);

    for (i = 0; i < pAvplay->TrackNum; i++)
    {
        PROC_PRINT(p, "Track ID              :track%02d", pAvplay->hTrack[i] & 0xff);

        if (pAvplay->hSyncTrack == pAvplay->hTrack[i])
        {
            PROC_PRINT(p, "(master)");
        }

        PROC_PRINT(p, "\n");
    }

    PROC_PRINT(p, 
                    "AcquireStream(Try/OK) :%u/%u\n"
                    "SendStream(Try/OK)    :%u/%u\n"
                    "AcquireFrame(Try/OK)  :%u/%u\n",
                    pAvplay->DebugInfo.AcquireAudEsNum, 
                    pAvplay->DebugInfo.AcquiredAudEsNum,
                    pAvplay->DebugInfo.SendAudEsNum, 
                    pAvplay->DebugInfo.SendedAudEsNum,
                    pAvplay->DebugInfo.AcquireAudFrameNum,
                    pAvplay->DebugInfo.AcquiredAudFrameNum
                    );

    for (i = 0; i < pAvplay->TrackNum; i++)
    {
        PROC_PRINT(p,
                        "SendFrame(Try/OK)     :%u/%u",
                        pAvplay->DebugInfo.SendAudFrameNum, 
                        pAvplay->DebugInfo.SendedAudFrameNum
                        );

        if (pAvplay->hSyncTrack == pAvplay->hTrack[i]) 
        {
            PROC_PRINT(p, "(master)");
        }

        PROC_PRINT(p, "\n");
    }

    PROC_PRINT(p, "\n");

    return HI_SUCCESS;
}

static HI_VOID AVPLAY_ProcPrintHelp(HI_VOID)
{
    HI_PRINT("echo FrcEnable=true|false > /proc/msp/avplayxx, enable or disable frc\n"
          );
          
    return;
}

static HI_S32 AVPLAY_ProcWrite(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)
{
    struct seq_file   *s = file->private_data;
    DRV_PROC_ITEM_S  *pProcItem = s->private;
    HI_U32            AvplayId;
    HI_CHAR           ProcPara[64]={0};
    HI_S32            Ret;
    HI_CHAR           *pItemName = HI_NULL;
    HI_CHAR           *pItemValue = HI_NULL;
    AVPLAY_S          *pAvplay = HI_NULL;
    
    if (copy_from_user(ProcPara, buf, count))
    {
        return -EFAULT;
    }

    Ret = AVPLAY_ProcParsePara(ProcPara, &pItemName, &pItemValue);
    if (HI_SUCCESS != Ret)
    {
        AVPLAY_ProcPrintHelp();
        return -EFAULT;    
    }

    AvplayId = (pProcItem->entry_name[6] - '0')*10 + (pProcItem->entry_name[7] - '0');

    if (AvplayId >= AVPLAY_MAX_NUM)
    {
        return -EFAULT;
    }
    
    pAvplay = g_AvplayGlobalState.AvplayInfo[AvplayId].pAvplay;
    if (HI_NULL == pAvplay)
    {
        return -EFAULT;
    }

    if (0 == HI_OSAL_Strncmp(pItemName, "FrcEnable", strlen("FrcEnable")))
    {
        if (0 == HI_OSAL_Strncmp(pItemValue, "true", strlen("true")))
        {
            pAvplay->bFrcEnable = HI_TRUE;
        }
        else if (0 == HI_OSAL_Strncmp(pItemValue, "false", strlen("false")))
        {
            pAvplay->bFrcEnable = HI_FALSE;
        }
        else
        {
            AVPLAY_ProcPrintHelp();
        }
    }
    else
    {
        AVPLAY_ProcPrintHelp();
    }
    
    return count;
}

HI_S32 AVPLAY_Create(AVPLAY_CREATE_S *pAvplayCreate, struct file *file)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_CHAR           ProcName[12];
    MMZ_BUFFER_S      MemBuf;
    HI_S32            Ret;
    HI_U32            i;
    HI_CHAR           BufName[32];

    if (AVPLAY_MAX_NUM == g_AvplayGlobalState.AvplayCount)
    {
        HI_ERR_AVPLAY("the avplay num is max.\n");
        return HI_ERR_AVPLAY_CREATE_ERR;
    }

    for (i=0; i<AVPLAY_MAX_NUM; i++)
    {
        if (HI_NULL == g_AvplayGlobalState.AvplayInfo[i].pAvplay)
        {
            break;
        }
    }

    if (i == AVPLAY_MAX_NUM)
    {
        HI_ERR_AVPLAY("the avplay num is max.\n");
        return HI_ERR_AVPLAY_CREATE_ERR;        
    }
	
    HI_OSAL_Snprintf(BufName, sizeof(BufName), "AVPLAY_Inst%02d", i);
    
    Ret = HI_DRV_MMZ_AllocAndMap(BufName, MMZ_OTHERS, 0x2000, 0, &MemBuf);
    if (Ret != HI_SUCCESS)
    {
        HI_FATAL_AVPLAY("malloc %s mmz failed.\n", BufName);

        return Ret;
    }

    HI_OSAL_Snprintf(ProcName, sizeof(ProcName), "%s%02d", HI_MOD_AVPLAY, i);

    pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
    if (!pProcItem)
    {
        HI_FATAL_AVPLAY("add %s proc failed.\n", ProcName);

        HI_DRV_MMZ_UnmapAndRelease(&MemBuf);
        
        return HI_FAILURE;
    }
    pProcItem->read = AVPLAY_ProcRead;
    pProcItem->write = AVPLAY_ProcWrite;

    g_AvplayGlobalState.AvplayInfo[i].pAvplay = (AVPLAY_S *)MemBuf.u32StartVirAddr;
    g_AvplayGlobalState.AvplayInfo[i].pAvplay->hVdec = -1;
    g_AvplayGlobalState.AvplayInfo[i].AvplayPhyAddr = MemBuf.u32StartPhyAddr;
    g_AvplayGlobalState.AvplayInfo[i].File = (HI_U32)file;

    pAvplayCreate->AvplayId = i;
    pAvplayCreate->AvplayPhyAddr = MemBuf.u32StartPhyAddr;
    g_AvplayGlobalState.AvplayCount++;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_Destroy(HI_U32 AvplayId)
{
    HI_CHAR           ProcName[17];
    MMZ_BUFFER_S      MemBuf;

    if (HI_NULL == g_AvplayGlobalState.AvplayInfo[AvplayId].pAvplay)
    {
        HI_ERR_AVPLAY("this is invalid handle.\n");
        return HI_ERR_AVPLAY_DESTROY_ERR;
    }

    memset(ProcName, 0, sizeof(ProcName));    

    HI_OSAL_Snprintf(ProcName, sizeof(ProcName), "%s%02d", HI_MOD_AVPLAY, AvplayId);
    HI_DRV_PROC_RemoveModule(ProcName);

    MemBuf.u32StartVirAddr = (HI_U32)g_AvplayGlobalState.AvplayInfo[AvplayId].pAvplay;
    MemBuf.u32StartPhyAddr = g_AvplayGlobalState.AvplayInfo[AvplayId].AvplayPhyAddr;
    MemBuf.u32Size = 0x1000;

    HI_DRV_MMZ_UnmapAndRelease(&MemBuf);

    g_AvplayGlobalState.AvplayInfo[AvplayId].pAvplay = HI_NULL;
    g_AvplayGlobalState.AvplayInfo[AvplayId].AvplayPhyAddr = HI_NULL;
    g_AvplayGlobalState.AvplayInfo[AvplayId].File = HI_NULL;
    g_AvplayGlobalState.AvplayInfo[AvplayId].AvplayUsrAddr = HI_NULL;

    g_AvplayGlobalState.AvplayCount--;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetUsrAddr(AVPLAY_USR_ADDR_S *pAvplayUsrAddr)
{
    g_AvplayGlobalState.AvplayInfo[pAvplayUsrAddr->AvplayId].AvplayUsrAddr = (HI_U32)(pAvplayUsrAddr->AvplayUsrAddr);
    return HI_SUCCESS;
}

HI_S32 AVPLAY_CheckId(AVPLAY_USR_ADDR_S *pAvplayUsrAddr, struct file *file)
{
    if (g_AvplayGlobalState.AvplayInfo[pAvplayUsrAddr->AvplayId].File != ((HI_U32)file))
    {
        HI_ERR_AVPLAY("this is invalid handle.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (HI_NULL == g_AvplayGlobalState.AvplayInfo[pAvplayUsrAddr->AvplayId].pAvplay)
    {
        HI_ERR_AVPLAY("this is invalid handle.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    pAvplayUsrAddr->AvplayUsrAddr = g_AvplayGlobalState.AvplayInfo[pAvplayUsrAddr->AvplayId].AvplayUsrAddr;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_CheckNum(HI_U32 *pAvplayNum, struct file *file)
{
    HI_U32   i;

    *pAvplayNum = 0;

    for (i=0; i<AVPLAY_MAX_NUM; i++)
    {
        if (g_AvplayGlobalState.AvplayInfo[i].File == ((HI_U32)file))
        {
            (*pAvplayNum)++;
        }
    }

    return HI_SUCCESS;
}


HI_S32 AVPLAY_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, HI_VOID *arg)
{
    HI_S32           Ret;

    Ret = down_interruptible(&g_AvplayMutex);

    switch (cmd)
    {
        case CMD_AVPLAY_CREATE:
        {
            AVPLAY_CREATE_S  *pAvplayCreate;

            pAvplayCreate = (AVPLAY_CREATE_S *)arg;

            Ret = AVPLAY_Create(pAvplayCreate, file);

            break;
        }

        case CMD_AVPLAY_DESTROY:
        {
            Ret = AVPLAY_Destroy(*((HI_U32 *)arg));

            break;
        }

        case CMD_AVPLAY_SET_USRADDR:
        {
            AVPLAY_USR_ADDR_S *pAvplayUsrAddr;

            pAvplayUsrAddr = (AVPLAY_USR_ADDR_S *)arg;

            Ret = AVPLAY_SetUsrAddr(pAvplayUsrAddr);

            break;
        }

        case CMD_AVPLAY_CHECK_ID:
        {
            AVPLAY_USR_ADDR_S *pAvplayUsrAddr;

            pAvplayUsrAddr = (AVPLAY_USR_ADDR_S *)arg;

            Ret = AVPLAY_CheckId(pAvplayUsrAddr, file);

            break;
        }

        case CMD_AVPLAY_CHECK_NUM:
        {
            Ret = AVPLAY_CheckNum((HI_U32 *)arg, file);

            break;
        }

        default:
            up(&g_AvplayMutex);
            return -ENOIOCTLCMD;
    }

    up(&g_AvplayMutex);
    return Ret;
}

static HI_S32 AVPLAY_DRV_Open(struct inode *finode, struct file  *ffile)
{
/*
    HI_S32            Ret;

    Ret = down_interruptible(&g_AvplayMutex);

    if (1 == atomic_inc_return(&g_AvplayCount))
    {
    }

    up(&g_AvplayMutex);
*/    
    return 0;
}

static HI_S32 AVPLAY_DRV_Close(struct inode *finode, struct file  *ffile)
{
    HI_S32           i;
    HI_S32           Ret;

    Ret = down_interruptible(&g_AvplayMutex);

    for (i=0; i<AVPLAY_MAX_NUM; i++)
    {
        if (g_AvplayGlobalState.AvplayInfo[i].File == ((HI_U32)ffile))
        {
            Ret = AVPLAY_Destroy(i);
            if (Ret != HI_SUCCESS)
            {
                up(&g_AvplayMutex);
                return -1;
            }
        }
    }

    if (atomic_dec_and_test(&g_AvplayCount))
    {
    }

    up(&g_AvplayMutex);

    return 0;
}

static long AVPLAY_DRV_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    HI_S32 Ret;

    Ret = HI_DRV_UserCopy(ffile->f_dentry->d_inode, ffile, cmd, arg, AVPLAY_Ioctl);

    return Ret;
}

static struct file_operations AVPLAY_FOPS =
{
    .owner          =  THIS_MODULE,
    .open           =  AVPLAY_DRV_Open,
    .unlocked_ioctl =  AVPLAY_DRV_Ioctl,
    .release        =  AVPLAY_DRV_Close,
};

/*****************************************************************************
 Prototype    : AVPLAY_Suspend
 Description  : 
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :
  History        :
  1.Date         : 2010/5/15
    Author       : weideng
    Modification : Created function
*****************************************************************************/
static HI_S32 AVPLAY_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    //HI_FATAL_AVPLAY("AVPLAY suspend OK.\n");

    HI_U32      i;

    for (i = 0; i < AVPLAY_MAX_NUM; i++)
    {
        if (HI_NULL != g_AvplayGlobalState.AvplayInfo[i].pAvplay)
        {
            g_AvplayGlobalState.AvplayInfo[i].pAvplay->bStandBy = HI_TRUE;
        }
    }
    
    return 0;
}

/*****************************************************************************
 Prototype    : AVPLAY_Resume
 Description  : 
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :
  History        :
  1.Date         : 2010/5/15
    Author       : wei deng
    Modification : Created function
*****************************************************************************/
static HI_S32 AVPLAY_Resume(PM_BASEDEV_S *pdev)
{
    //HI_FATAL_AVPLAY("AVPLAY resume OK.\n");
    
    return 0;
}

static PM_BASEOPS_S AVPLAY_DRVOPS = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = AVPLAY_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = AVPLAY_Resume,
};

HI_S32 AVPLAY_DRV_ModInit(HI_VOID)
{
    HI_U32      i;
    HI_S32      Ret;     

    Ret = HI_DRV_MODULE_Register(HI_ID_AVPLAY, AVPLAY_NAME, HI_NULL);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_DRV_MODULE_Register, Ret = %#x!\n", Ret);
    }

    g_AvplayGlobalState.AvplayCount = 0;
    for (i=0; i<AVPLAY_MAX_NUM; i++)
    {
        g_AvplayGlobalState.AvplayInfo[i].pAvplay = HI_NULL;
        g_AvplayGlobalState.AvplayInfo[i].AvplayPhyAddr = HI_NULL;
        g_AvplayGlobalState.AvplayInfo[i].File = HI_NULL;
        g_AvplayGlobalState.AvplayInfo[i].AvplayUsrAddr = HI_NULL;
    }

    HI_OSAL_Snprintf(g_AvplayRegisterData.devfs_name, sizeof(g_AvplayRegisterData.devfs_name), UMAP_DEVNAME_AVPLAY);

    g_AvplayRegisterData.fops = &AVPLAY_FOPS;
    g_AvplayRegisterData.minor = UMAP_MIN_MINOR_AVPLAY;
    g_AvplayRegisterData.owner  = THIS_MODULE;
    g_AvplayRegisterData.drvops = &AVPLAY_DRVOPS;
    if (HI_DRV_DEV_Register(&g_AvplayRegisterData) < 0)
    {
        HI_FATAL_AVPLAY("register AVPLAY failed.\n");
        return HI_FAILURE;
    }

    return  0;
}

HI_VOID AVPLAY_DRV_ModExit(HI_VOID)
{
    HI_DRV_DEV_UnRegister(&g_AvplayRegisterData);

    HI_DRV_MODULE_UnRegister(HI_ID_AVPLAY);
}

#ifdef MODULE
module_init(AVPLAY_DRV_ModInit);
module_exit(AVPLAY_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
