/***********************************************************************************
*              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName   :  vi_proc.c
* Description:
*
***********************************************************************************/

#include "hi_drv_proc.h"
#include "hi_drv_file.h"
#include "hi_drv_mem.h"
#include "hi_drv_vi.h"
#include "drv_vi.h"

extern VI_DRV_S g_ViDrv[MAX_VI_PORT][MAX_VI_CHN];

static HI_VOID VI_DRV_ProcHelp(HI_HANDLE hVi)
{
    HI_PRINT("echo save_yuv > /proc/msp/vi%04x\n", (HI_U32)(hVi & 0xffff));
}

static HI_S32 VI_DRV_ProcSaveYuv_k(struct file *pfYUV, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame)
{
    MMZ_BUFFER_S stMBuf;
    HI_S8 *ptr;
    HI_S32 nRet;
    HI_U8 *pu8Udata;
    HI_U8 *pu8Vdata;
    HI_U8 *pu8Ydata;
    HI_U32 i, j;

    stMBuf.u32StartPhyAddr = pstFrame->stVideoFrameAddr[0].u32YAddr;
    if (!stMBuf.u32StartPhyAddr)
    {
        HI_ERR_VI("address '0x%x' is null!\n", pstFrame->stVideoFrameAddr[0].u32YAddr);
        return HI_FAILURE;
    }

    nRet = HI_DRV_MMZ_Map(&stMBuf);
    ptr = (HI_S8 *)stMBuf.u32StartVirAddr;

    if (nRet)
    {
        HI_ERR_VI("address '0x%x' is not valid!\n", pstFrame->stVideoFrameAddr[0].u32YAddr);
        return HI_FAILURE;
    }

    pu8Udata = HI_KMALLOC(HI_ID_VI, pstFrame->u32Width * pstFrame->u32Height / 2 / 2, GFP_KERNEL);
    if (HI_NULL == pu8Udata)
    {
        goto ERR0;
    }

    pu8Vdata = HI_KMALLOC(HI_ID_VI, pstFrame->u32Width * pstFrame->u32Height / 2 / 2, GFP_KERNEL);
    if (HI_NULL == pu8Vdata)
    {
        goto ERR1;
    }

    pu8Ydata = HI_KMALLOC(HI_ID_VI, pstFrame->stVideoFrameAddr[0].u32YStride, GFP_KERNEL);
    if (HI_NULL == pu8Ydata)
    {
        goto ERR2;
    }

    /* write Y */
    for (i = 0; i < pstFrame->u32Height; i++)
    {
        memcpy(pu8Ydata, ptr, sizeof(HI_U8) * pstFrame->stVideoFrameAddr[0].u32YStride);

        if (pstFrame->u32Width != HI_DRV_FILE_Write(pfYUV, pu8Ydata, pstFrame->u32Width))
        {
            HI_ERR_VI("line %d: fwrite fail!\n", __LINE__);
        }

        ptr += pstFrame->stVideoFrameAddr[0].u32YStride;
    }

    /* U V transfer and save */
    for (i = 0; i < pstFrame->u32Height / 2; i++)
    {
        for (j = 0; j < pstFrame->u32Width / 2; j++)
        {
            if (pstFrame->enVideoFormat == HI_UNF_FORMAT_YUV_SEMIPLANAR_420)
            {
                pu8Vdata[i * pstFrame->u32Width / 2 + j] = ptr[2 * j];
                pu8Udata[i * pstFrame->u32Width / 2 + j] = ptr[2 * j + 1];
            }
            else
            {
                pu8Udata[i * pstFrame->u32Width / 2 + j] = ptr[2 * j];
                pu8Vdata[i * pstFrame->u32Width / 2 + j] = ptr[2 * j + 1];
            }
        }

        ptr += pstFrame->stVideoFrameAddr[0].u32CStride;
    }

    /* write U */
    HI_DRV_FILE_Write(pfYUV, pu8Udata, pstFrame->u32Width * pstFrame->u32Height / 2 / 2);

    /* write V */
    HI_DRV_FILE_Write(pfYUV, pu8Vdata, pstFrame->u32Width * pstFrame->u32Height / 2 / 2);

    HI_KFREE(HI_ID_VI, pu8Udata);
    HI_KFREE(HI_ID_VI, pu8Vdata);
    HI_KFREE(HI_ID_VI, pu8Ydata);

    HI_DRV_MMZ_Unmap(&stMBuf);

    return HI_SUCCESS;
ERR2:
    HI_KFREE(HI_ID_VI, pu8Vdata);
ERR1:
    HI_KFREE(HI_ID_VI, pu8Udata);
ERR0:
    HI_DRV_MMZ_Unmap(&stMBuf);
    return HI_FAILURE;
}

static HI_S32 VI_DRV_ProcSaveYuv(HI_HANDLE hVi)
{
    HI_UNF_VI_E enPort;
    HI_U32 u32Chn;
    HI_S8 FileName[64];
    static HI_U32 u32Cnt = 0;
    struct file *fp;
    HI_S32 Ret;
    HI_UNF_VIDEO_FRAME_INFO_S *pstFrame;

    GET_PORT_CHN(hVi, enPort, u32Chn);
    pstFrame = &g_ViDrv[enPort][u32Chn].stFrame[0];

    Ret = HI_DRV_FILE_GetStorePath(FileName, 64);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_VI("get path failed\n");
        return HI_FAILURE;
    }

    Ret = HI_OSAL_Snprintf(FileName, sizeof(FileName), "%s/vi_%dx%d_%02d.yuv",
                           FileName, pstFrame->u32Width, pstFrame->u32Height, u32Cnt++);
    if (0 == Ret)
    {
        HI_ERR_VI("HI_OSAL_Snprintf failed\n");
        return HI_FAILURE;
    }

    fp = HI_DRV_FILE_Open(FileName, 1);
    if (fp)
    {
        Ret = VI_DRV_ProcSaveYuv_k(fp, pstFrame);
        HI_DRV_FILE_Close(fp);
        HI_PRINT("save image in %s\n", FileName);
    }
    else
    {
        HI_ERR_VI("cannot open file %s!\n", FileName);
        Ret = HI_FAILURE;
    }

    return Ret;
}

static HI_S32 VI_DRV_ProcRead(struct seq_file *p, HI_VOID *v)
{
    DRV_PROC_ITEM_S *pProcItem;
    VI_STATISTIC_S *pStatInfo;
    VI_DRV_S *q;
    HI_HANDLE hVi;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    HI_U32 i;
    HI_CHAR inputMode[][16] =
    {
        {"BT656_576I"     }, {"BT656_480I"     }, {"BT601_576I"        }, {"BT601_480I"		},
        {"BT1120_480P"    }, {"BT1120_576P"    }, {"BT1120_720P_50"    }, {"BT1120_720P_60" },
        {"BT1120_1080I_50"}, {"BT1120_1080I_60"}, {"BT1120_1080P_25"   }, {"BT1120_1080P_30"},
        {"BT1120_1080P_50"}, {"BT1120_1080P_60"},
    };
    HI_CHAR videoFmt[][32] =
    {
        {"SEMIPLANAR_422"    }, {"SEMIPLANAR_420"}, {"SEMIPLANAR_400"	}, {"SEMIPLANAR_411"},
        {"SEMIPLANAR_422_1X2"}, {"SEMIPLANAR_444"}, {"SEMIPLANAR_420_UV"}, {"PACKAGE_UYVY"	},
        {"PACKAGE_YUYV"      }, {"PACKAGE_YVYU"  }, {"PLANAR_400"		}, {"PLANAR_411"	},
        {"PLANAR_420"        }, {"PLANAR_422_1X2"}, {"PLANAR_422_2X1"	}, {"PLANAR_444"	},
        {"PLANAR_410"        },
    };
    VI_FB_BUF_PROC stBufProc;

    pProcItem = p->private;
    hVi = (HI_HANDLE)pProcItem->data;

    GET_PORT_CHN(hVi, enPort, u32Chn);
    q = &g_ViDrv[enPort][u32Chn];
    pStatInfo = &g_ViDrv[enPort][u32Chn].stStat;

    PROC_PRINT(p, "-------------------------- VI Info --------------------------\n");

    PROC_PRINT(p,
               "Type                :%s\n",
               (HI_TRUE == q->stAttr.bVirtual) ? "Virtual" : "Real");

    if (HI_FALSE == q->stAttr.bVirtual)
    {
        PROC_PRINT(p,
                   "InputRect           :%d/%d/%d/%d\n"
                   "InputMode           :%s\n"
                   "VideoFormat         :%s\n"
                   "BufferMgmt          :%s\n",
                   q->stAttr.stInputRect.s32X, q->stAttr.stInputRect.s32Y,
                   q->stAttr.stInputRect.s32Width, q->stAttr.stInputRect.s32Height,
                   inputMode[q->stAttr.enInputMode], videoFmt[q->stAttr.enVideoFormat],
                   (HI_UNF_VI_BUF_ALLOC == q->stAttr.enBufMgmtMode) ? "VI" : "User");
    }
    else
    {
        PROC_PRINT(p,
                   "InputRect           :%d/%d/%d/%d\n",
                   0, 0, q->stFrame[0].u32Width, q->stFrame[0].u32Height);
    }

    PROC_PRINT(p,
               "BufferNum           :%d\n"
               "State               :%s\n",
               q->stAttr.u32BufNum,
               (HI_TRUE == q->bStarted) ? "Start" : "Stop");

    for (i = 0; i < VI_MAX_VPSS_PORT; i++)
    {
        if (HI_INVALID_HANDLE != q->stPortParam[i].hPort)
        {
            PROC_PRINT(p,
                       "%s               :%s(port%x)\n",
                       (0 == i) ? "DstID" : "     ",
                       ((q->stPortParam[i].hDst >> 16) & 0xFF) == HI_ID_VO ? "win" : "venc",
                       q->stPortParam[i].hPort);
        }
    }

    PROC_PRINT(p, "\n------------------------- Statistics -------------------------\n");

    PROC_PRINT(p,
               "CAM/USER->VI\n"
               "CapFrame(Total/Freq):%d/%d\n\n",
               (HI_TRUE == q->stAttr.bVirtual) ? q->stStat.QueueOK : q->stStat.Cnt,
               q->u32FrameRate);
#if 0
    if (HI_FALSE == q->stAttr.bVirtual)
    {
        PROC_PRINT(p,
                   "Interrupt(Cnt/Unload):%d/%d\n"
                   "  Y/CBusError       :%d/%d\n"
                   "  UpdateReg         :%d\n"
                   "  FieldThrow        :%d\n"
                   "  BufOverflow       :%d\n"
                   "  FrmStart          :%d\n"
                   "  Cc/ZeroInt        :%d/%d\n"
                   "  Top/BtmField      :%d/%d\n\n",
                   pStatInfo->Cnt, pStatInfo->Unload,
                   pStatInfo->YBusError, pStatInfo->CBusError,
                   pStatInfo->UpdateReg, pStatInfo->FieldThrow,
                   pStatInfo->BufOverflow, pStatInfo->FrmStart,
                   pStatInfo->CcInt, pStatInfo->ZeroInt,
                   pStatInfo->TopField, pStatInfo->BtmField);
    }
#endif


    PROC_PRINT(p,
               "VI->VPSS\n"
               "Acquire(Try/OK)     :%d/%d\n"
               "Release(Try/OK)     :%d/%d\n\n",
               pStatInfo->AcquireTry, pStatInfo->AcquireOK,
               pStatInfo->ReleaseTry, pStatInfo->ReleaseOK);

    PROC_PRINT(p,
               "VPSS->VI\n"
               "Acquire(Try/OK)     :%d/%d\n"
               "Release(Try/OK)     :%d/%d\n\n",
               pStatInfo->GetTry, pStatInfo->GetOK,
               pStatInfo->PutTry, pStatInfo->PutOK);

    PROC_PRINT(p,
               "VI->WIN\n"
               "SendFrame(Try/OK)   :%d/%d\n\n",
               pStatInfo->QWinTry, pStatInfo->QWinOK);

    PROC_PRINT(p,
               "VI->VENC\n"
               "SendFrame(Try/OK)   :%d/%d\n\n",
               pStatInfo->QVencTry, pStatInfo->QVencOK);

    PROC_PRINT(p,
               "VI->USER\n"
               "Acquire(Try/OK)     :%d/%d\n"
               "Release(Try/OK)     :%d/%d\n\n",
               pStatInfo->UsrAcqTry, pStatInfo->UsrAcqOK,
               pStatInfo->UsrRlsTry, pStatInfo->UsrRlsOK);

    memset(&stBufProc, 0x0, sizeof(VI_FB_BUF_PROC));
    VI_DRV_BufProc(&g_ViDrv[enPort][u32Chn].stFrameBuf, &stBufProc);

    PROC_PRINT(p,
               "VIBuffer(Total/Used):%d/%d\n",
               g_ViDrv[enPort][u32Chn].stAttr.u32BufNum, stBufProc.u32UsedNum);

    PROC_PRINT(p, "VIBufferDetail      :[");
    for (i = 0; i < g_ViDrv[enPort][u32Chn].stAttr.u32BufNum - 1; i++)
    {
        PROC_PRINT(p, "%d,", (HI_U32)stBufProc.stState[i]);
    }

    PROC_PRINT(p, "%d]\n\n", (HI_U32)stBufProc.stState[i]);

    return HI_SUCCESS;
}

static HI_S32 VI_DRV_ProcWrite(struct file *file, const char __user *buf, size_t count,
                               loff_t *ppos)
{
    struct seq_file *q = file->private_data;
    DRV_PROC_ITEM_S *pProcItem = q->private;
    HI_CHAR *p;
    HI_HANDLE hVi;
    HI_S32 Ret;

    hVi = (HI_HANDLE)(pProcItem->data);

    if (count >= 1)
    {
        p = (char *)__get_free_page(GFP_KERNEL);

        if (copy_from_user(p, buf, count))
        {
            HI_ERR_VI("copy_from_user failed.\n");
            return HI_FAILURE;
        }

        if (HI_SUCCESS == HI_OSAL_Strncmp(p, "save_yuv", sizeof("save_yuv") - 1))
        {
            Ret = VI_DRV_ProcSaveYuv(hVi);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_VI("VI_DRV_ProcSaveYuv failed\n");
            }
        }
        else
        {
            VI_DRV_ProcHelp(hVi);
        }

        free_page((HI_U32)p);
        p = HI_NULL;
    }
    else
    {
        VI_DRV_ProcHelp(hVi);
    }

    return count;
}

HI_S32 VI_DRV_ProcAdd(HI_HANDLE hVi)
{
    HI_S32 Ret;
    DRV_PROC_ITEM_S *pProcItem;
    HI_CHAR ProcName[12];
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;

    if (HI_INVALID_HANDLE == hVi)
    {
        return HI_FAILURE;
    }

    GET_PORT_CHN(hVi, enPort, u32Chn);

    Ret = HI_OSAL_Snprintf(ProcName, sizeof(ProcName), "vi%04x", (HI_U32)(hVi & 0xffff));
    if (0 == Ret)
    {
        HI_ERR_VI("HI_OSAL_Snprintf failed!\n");
        return HI_FAILURE;
    }

    pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
    if (!pProcItem)
    {
        HI_ERR_VI("VI add proc failed!\n");
        return HI_FAILURE;
    }

    pProcItem->data  = (HI_VOID *)hVi;
    pProcItem->read  = VI_DRV_ProcRead;
    pProcItem->write = VI_DRV_ProcWrite;

    init_timer(&g_ViDrv[enPort][u32Chn].viTimer);
    g_ViDrv[enPort][u32Chn].viTimer.expires  = jiffies + (HZ);
    g_ViDrv[enPort][u32Chn].viTimer.function = (void*)VI_DRV_ProcTimer;
    g_ViDrv[enPort][u32Chn].viTimer.data = (HI_LENGTH_T)(hVi);
    add_timer(&g_ViDrv[enPort][u32Chn].viTimer);

    return HI_SUCCESS;
}

HI_S32 VI_DRV_ProcDel(HI_HANDLE hVi)
{
    HI_S32 Ret;
    HI_CHAR ProcName[12];
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;

    if (HI_INVALID_HANDLE == hVi)
    {
        return HI_FAILURE;
    }

    GET_PORT_CHN(hVi, enPort, u32Chn);
    del_timer(&g_ViDrv[enPort][u32Chn].viTimer);

    Ret = HI_OSAL_Snprintf(ProcName, sizeof(ProcName), "vi%04x", (HI_U32)(hVi & 0xffff));
    if (0 == Ret)
    {
        return HI_FAILURE;
    }

    HI_DRV_PROC_RemoveModule(ProcName);
    return HI_SUCCESS;
}

HI_S32 VI_DRV_ProcTimer(HI_LENGTH_T data)
{
    HI_HANDLE hVi = (HI_HANDLE)data;
    HI_UNF_VI_E enPort = HI_UNF_VI_PORT0;
    HI_U32 u32Chn = 0;
    VI_DRV_S *q = HI_NULL;

    GET_PORT_CHN(hVi, enPort, u32Chn);
    q = &g_ViDrv[enPort][u32Chn];
    if (HI_TRUE == q->stAttr.bVirtual)
    {
        q->u32FrameRate = q->stStat.QueueOK - q->stStat.QueueOKLast;
        q->stStat.QueueOKLast = q->stStat.QueueOK;
    }
    else
    {
        q->u32FrameRate   = q->stStat.Cnt - q->stStat.CntLast;
        q->stStat.CntLast = q->stStat.Cnt;
    }

    q->viTimer.expires  = jiffies + (HZ);
    q->viTimer.function = (void*)VI_DRV_ProcTimer;
    q->viTimer.data = (HI_LENGTH_T)(hVi);
    add_timer(&q->viTimer);

    return HI_SUCCESS;
}
