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
#include "hi_drv_mmz.h"
#include "hi_drv_venc.h"
#include "drv_venc.h"
#include "hi_osal.h"
#include "hi_drv_log.h"
#include "drv_venc_osal.h"

extern OPTM_VENC_CHN_S g_stVencChn[VENC_MAX_CHN_NUM];

#define D_VENC_GET_CHN(u32VeChn, hVencChn) \
    do {\
        u32VeChn = 0; \
        while (u32VeChn < VENC_MAX_CHN_NUM)\
        {   \
            if (g_stVencChn[u32VeChn].hVEncHandle == hVencChn)\
            { \
                break; \
            } \
            u32VeChn++; \
        } \
    } while (0)

static HI_VOID VENC_DRV_ProcHelp(HI_VOID)
{
    HI_PRINT("------ VENC Proc Help ------\n");
    HI_PRINT("USAGE:echo [cmd] [para1] [para2] > /proc/msp/vencXX\n");
	HI_PRINT("cmd = save_yuv,    para1 = start   start to save the yuv data before Encode\n");
	HI_PRINT("cmd = save_yuv,    para1 = stop    stop to save the yuv data before Encode\n");
    HI_PRINT("cmd = save_stream, para1 = second  save the streams after Encode for [para2] seconds\n");
	HI_PRINT("cmd = save_stream, para1 = frame  save the streams after Encode for [para2] frames\n");
}

#if 0
static HI_S32 VENC_DRV_ProcSaveYuv_k(struct file *pfYUV, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame)
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
        HI_ERR_VENC("address '0x%x' is null!\n", pstFrame->stVideoFrameAddr[0].u32YAddr);
        return HI_FAILURE;
    }

    nRet = HI_DRV_MMZ_Map(&stMBuf);
    ptr = (HI_S8 *)stMBuf.u32StartVirAddr;

    if (nRet)
    {
        HI_ERR_VENC("address '0x%x' is not valid!\n", pstFrame->stVideoFrameAddr[0].u32YAddr);
        return HI_FAILURE;
    }

    pu8Udata = HI_KMALLOC(HI_ID_VENC, pstFrame->u32Width * pstFrame->u32Height / 2 / 2, GFP_KERNEL);
    if (HI_NULL == pu8Udata)
    {
        goto ERR0;
    }

    pu8Vdata = HI_KMALLOC(HI_ID_VENC, pstFrame->u32Width * pstFrame->u32Height / 2 / 2, GFP_KERNEL);
    if (HI_NULL == pu8Vdata)
    {
        goto ERR1;
    }

    pu8Ydata = HI_KMALLOC(HI_ID_VENC, pstFrame->stVideoFrameAddr[0].u32YStride, GFP_KERNEL);
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
            HI_ERR_VENC("line %d: fwrite fail!\n", __LINE__);
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

    HI_KFREE(HI_ID_VENC, pu8Udata);
    HI_KFREE(HI_ID_VENC, pu8Vdata);
    HI_KFREE(HI_ID_VENC, pu8Ydata);

    HI_DRV_MMZ_Unmap(&stMBuf);

    return HI_SUCCESS;
ERR2:
    HI_KFREE(HI_ID_VENC, pu8Vdata);
ERR1:
    HI_KFREE(HI_ID_VENC, pu8Udata);
ERR0:
    HI_DRV_MMZ_Unmap(&stMBuf);
    return HI_FAILURE;
}

#endif

#if 0
static HI_S32 VENC_DRV_ProcSaveYuv(HI_HANDLE hVenc)
{

    HI_U32 u32Chn;
    HI_S8 FileName[64];
    static HI_U32 u32Cnt = 0;
    struct file *fp;
    HI_S32 Ret;
    HI_UNF_VIDEO_FRAME_INFO_S *pstFrame;

    GET_PORT_CHN(hVenc, enPort, u32Chn);
    pstFrame = &g_ViDrv[enPort][u32Chn].stFrame[0];

    Ret = HI_OSAL_Snprintf(FileName, sizeof(FileName), "/mnt/vi_%dx%d_%02d.yuv",
                           pstFrame->u32Width, pstFrame->u32Height, u32Cnt++);
    if (0 == Ret)
    {
        HI_ERR_VENC("HI_OSAL_Snprintf failed\n");
        return HI_FAILURE;
    }

    fp = HI_DRV_FILE_Open(FileName, 1);
    if (fp)
    {
        Ret = VENC_DRV_ProcSaveYuv_k(fp, pstFrame);
        HI_DRV_FILE_Close(fp);
        HI_PRINT("save image in %s\n", FileName);
    }
    else
    {
        HI_ERR_VENC("cannot open file %s!\n", FileName);
        Ret = HI_FAILURE;
    }

    return Ret;
}
#endif



static HI_S32 VENC_DRV_ProcRead(struct seq_file *p, HI_VOID *v)
{
    HI_U32 i = 0;
    HI_S32 s32Ret = HI_FAILURE;
	DRV_PROC_ITEM_S *pProcItem;
	HI_HANDLE hVenc;
	HI_U32 u32ChnID = 0;
	HI_U32 u32SkipFrmNum = 0;
    VeduEfl_StatInfo_S StatInfo;
    VeduEfl_StatInfo_S *pStatInfo = &StatInfo;
    HI_U32  srcID;
    HI_CHAR srcTab[4][8]={{"VI"},{"Win"},{"DISP"},{"User"}};
	
    HI_CHAR szProtocol[][8] = {"MPEG2", "MPEG4", "AVS",  "H.263",    "H.264", "REAL8", "REAL9",
                             "VC1",   "VP6",   "VP6F", "SORENSON", "DIVX3", "RAW",   "JPEG",  "UNKNOWN"};

    HI_CHAR szEncodeLevel[][8] = {"QCIF", "CIF", "D1",  "720P", "1080P", "UNKNOWN"};

	HI_CHAR szBoolTab[][8] = {"FALSE", "TRUE"};
	HI_CHAR szStateTab[][8] = {"Stop", "Start"};
	HI_CHAR szPixFormat[][16] = {"SP420_VU", "SP420_UV", "Planer420",  "Planer422", "Package422_YUYV", "Package422_UYVY","Package422_YVYU","UNKNOWN"};
    pProcItem = p->private;
    hVenc = (HI_HANDLE)pProcItem->data;

    D_VENC_GET_CHN(u32ChnID, hVenc);
	D_VENC_CHECK_CHN(u32ChnID);
   
    s32Ret = VENC_DRV_EflQueryStatInfo(g_stVencChn[u32ChnID].hVEncHandle, pStatInfo);
    if (s32Ret != HI_SUCCESS)
    {
        return HI_FAILURE;
    }
	
    switch(g_stVencChn[u32ChnID].enSrcModId)
    {
        case HI_ID_VI:
            srcID = 0;
            break;
        case HI_ID_VO:
            srcID = 1;
            break;
        case HI_ID_DISP:
            srcID = 2;
            break;					
        default:
            srcID = 3;
            break;
    }

	u32SkipFrmNum = pStatInfo->QuickEncodeSkip + pStatInfo->ErrCfgSkip + pStatInfo->FrmRcCtrlSkip
		            + pStatInfo->TooFewBufferSkip + pStatInfo->SamePTSSkip;
	
    PROC_PRINT(p, "--------------------- VENC[%02d] -----------------------\n", u32ChnID);
	PROC_PRINT(p, "-------------------- User  Config ----------------------\n");
    PROC_PRINT(p,
                    "CodecID                      :%s(0x%x)\n"
                    "Capability                   :%s\n"
                    "Resolution                   :%uX%u\n"
                    "TargetBitRate                :%u(kbps)\n"
                    "Gop                          :%u\n"
                    "FrmRate(Input/OutPut)        :%u/%u(fps)\n"
                    "priority                     :%u\n"
                    "QuickEncode                  :%s\n"
                    "Split                        :Enable(%s)	Size(%u)\n"
                    "StreamBufSize                :%u(KB)\n"
                    "MaxQP/MinQP                  :%u/%u\n"
                    "Rotation                     :%u\n"
                    ,

                    szProtocol[g_stVencChn[u32ChnID].stChnUserCfg.enVencType],g_stVencChn[u32ChnID].stChnUserCfg.enVencType,
                    szEncodeLevel[g_stVencChn[u32ChnID].stChnUserCfg.enCapLevel],
                    g_stVencChn[u32ChnID].stChnUserCfg.u32Width,
                    g_stVencChn[u32ChnID].stChnUserCfg.u32Height,  
                    g_stVencChn[u32ChnID].stChnUserCfg.u32TargetBitRate / 1000U,
                    g_stVencChn[u32ChnID].stChnUserCfg.u32Gop,
                    g_stVencChn[u32ChnID].stChnUserCfg.u32InputFrmRate,g_stVencChn[u32ChnID].stChnUserCfg.u32TargetFrmRate,
                    g_stVencChn[u32ChnID].stChnUserCfg.u8Priority,
                    szBoolTab[g_stVencChn[u32ChnID].stChnUserCfg.bQuickEncode],

	                szBoolTab[g_stVencChn[u32ChnID].stChnUserCfg.bSlcSplitEn],g_stVencChn[u32ChnID].u32SliceSize*16,
	                g_stVencChn[u32ChnID].stChnUserCfg.u32StrmBufSize / 1000U,
                    g_stVencChn[u32ChnID].stChnUserCfg.u32MaxQp,g_stVencChn[u32ChnID].stChnUserCfg.u32MinQp,
                    g_stVencChn[u32ChnID].stChnUserCfg.u32RotationAngle);
	PROC_PRINT(p, "------------------ Real-time  Statistics ----------------------\n");
    PROC_PRINT(p,
                    "WorkStatus                   :%s\n"
                    "SourceID                     :%s%02u\n"
                    "FrameInfo                    :%s\n"
                    "InputFrmRate(Use/Real)       :%u/%u(fps)\n"
                    "TargetFrmRate(Use/Real)      :%u/%u(fps)\n"
                    "BitRate                      :%u(kbps)\n"
                    "EncodeNum                    :%u\n"
                    "SkipNum                      :Total(%u) FrmRateCtrl(%u) SamePTS(%u) QuickEncode(%u) TooFewBuf(%u) ErrCfg(%u)\n"
                    "FrameBuffer:\n"
                    "    QueueBuf(Total/Used)     :%u/%u\n"
                    "    DequeueBuf(Total/Used)   :%u/%u\n"
                    "StreamBuffer:\n"
                    "    Total/Used/Percent(Bytes):%u/%u/%u%%\n"
                    "Statistics(Total):\n"
                    "    AcquireFrame(Try/OK)     :%d/%d\n"
                    "    ReleaseFrame(Try/OK)     :%d/%d\n"
                    "    AcquireStream(Try/OK)    :%d/%d\n"
                    "    ReleaseStream(Try/OK)    :%d/%d\n"
                    "Statistics(PerSecond):\n"
                    "    AcquireFrame(Try/OK)     :%d/%d\n"
                    "    ReleaseFrame(Try/OK)     :%d/%d\n"
                    ,
                    szStateTab[g_stVencChn[u32ChnID].bEnable],
                    srcTab[srcID],(g_stVencChn[u32ChnID].hSource == HI_INVALID_HANDLE ? 0: g_stVencChn[u32ChnID].hSource & 0xff),
                    szPixFormat[pStatInfo->u32FrameType],
                    pStatInfo->u32RealSendInputRrmRate,g_stVencChn[i].u32LastSecInputFps,
                    pStatInfo->u32RealSendOutputFrmRate,g_stVencChn[i].u32LastSecEncodedFps,
                    g_stVencChn[i].u32LastSecKbps * 8 / 1000U,
                    (pStatInfo->GetFrameNumOK - u32SkipFrmNum),
                    u32SkipFrmNum,
                    pStatInfo->FrmRcCtrlSkip,pStatInfo->SamePTSSkip,pStatInfo->QuickEncodeSkip,pStatInfo->TooFewBufferSkip,pStatInfo->ErrCfgSkip,
                    MAX_VEDU_QUEUE_NUM,pStatInfo->QueueNum,
	                MAX_VEDU_QUEUE_NUM,pStatInfo->DequeueNum,
                    g_stVencChn[u32ChnID].stChnUserCfg.u32StrmBufSize,pStatInfo->UsedStreamBuf,pStatInfo->UsedStreamBuf * 100/g_stVencChn[u32ChnID].stChnUserCfg.u32StrmBufSize,
                    pStatInfo->GetFrameNumTry, pStatInfo->GetFrameNumOK,
                    pStatInfo->PutFrameNumTry, pStatInfo->PutFrameNumOK,
                    pStatInfo->GetStreamNumTry, pStatInfo->GetStreamNumOK,
                    pStatInfo->PutStreamNumTry, pStatInfo->PutStreamNumOK,
                    
	                g_stVencChn[i].u32LastSecTryNum,g_stVencChn[i].u32LastSecOKNum,
                    g_stVencChn[i].u32LastSecPutNum,g_stVencChn[i].u32LastSecPutNum);
	
    return HI_SUCCESS;
}

static HI_S32 str2val(char *str, unsigned int *data)
{
    unsigned int i, d, dat, weight;

    dat = 0;
    if(str[0] == '0' && (str[1] == 'x' || str[1] == 'X'))
    {
        i = 2;
		weight = 16;
	}
	else
	{
        i = 0;
		weight = 10;
	}

    for(; i < 10; i++)
    {
        if(str[i] < 0x20)break;
		else if (weight == 16 && str[i] >= 'a' && str[i] <= 'f')
		{
            d = str[i] - 'a' + 10;
		}
		else if (weight == 16 && str[i] >= 'A' && str[i] <= 'F')
		{
            d = str[i] - 'A' + 10;
		}
		else if (str[i] >= '0' && str[i] <= '9')
		{
            d = str[i] - '0';
		}
		else
		{
		    return -1;
		}

		dat = dat * weight + d;
	}

    *data = dat;

	return 0;
}


static HI_S32 VENC_DRV_ProcWrite(struct file *file, const char __user *buffer, size_t count, loff_t *ppos)
{
    struct seq_file *q = file->private_data;
    DRV_PROC_ITEM_S *pProcItem = q->private;
    HI_HANDLE hVenc;
	static HI_CHAR buf[256], str1[256],str2[256],str3[256];
	HI_CHAR  s_VencSavePath[64];
	HI_CHAR  FileName[64];
	HI_U32 u32ChnID;
	HI_S32 i,j;
	HI_U32 parm;

    hVenc = (HI_HANDLE)(pProcItem->data);
    D_VENC_GET_CHN(u32ChnID, hVenc);
	if (u32ChnID >= VENC_MAX_CHN_NUM)
	{
	    return HI_FAILURE;
	}
	
    if(count >= sizeof(buf)) 
    {
		HI_PRINT("MMZ: your echo parameter string is too long!\n");
		return -EIO;
	}

    if (count >= 1)
    {
	    memset(buf, 0, sizeof(buf));
		if (copy_from_user(buf, buffer, count))
		{
		    HI_PRINT("MMZ: copy_from_user failed!\n");    
		    return -EIO;
		}
		buf[count] = 0;

	    /* dat1 */
		i = 0;
		j = 0;
	    for(; i < count; i++)
	    {
	        if(j==0 && buf[i]==' ')continue;      
	        if(buf[i] > ' ')str1[j++] = buf[i];
			if(j>0 && buf[i]==' ')break;
		}
		str1[j] = 0;

	    /*if(str2val(str, &dat1) != 0)
	    {
	        dprint(PRN_ALWS, "error echo cmd '%s'!\n", buf);
	        return -1;
		}*/

	    /* dat2 */
		j = 0;
	    for(; i < count; i++)
	    {
	        if(j==0 && buf[i]==' ')continue;
	        if(buf[i] > ' ')str2[j++] = buf[i];
			if(j>0 && buf[i]==' ')break;
		}
		str2[j] = 0;
	    /*if(str2val(str, &dat2) != 0)
	    {
	        dprint(PRN_ALWS, "error echo cmd '%s'!\n", buf);
	        return -1;
		}*/

     
        if (!HI_OSAL_Strncmp(str1,"save_yuv",256))
        {
           if (!HI_OSAL_Strncmp(str2,"start",256))
           {
               g_stVencChn[u32ChnID].stProcWrite.bSaveYUVFileRun = HI_TRUE;
			   
           }
		   else if (!HI_OSAL_Strncmp(str2,"stop",256))
		   {
		       g_stVencChn[u32ChnID].stProcWrite.bSaveYUVFileRun = HI_FALSE;
		   }
		   else
		   {
		       VENC_DRV_ProcHelp();
		   }
        }
		else if (!HI_OSAL_Strncmp(str1,"save_stream",256))
		{
		   if (!HI_OSAL_Strncmp(str2,"second",256))   /*time mode*/
		   {
                /*dat 3*/
				j = 0;
			    for(; i < count; i++)
			    {
			        if(j==0 && buf[i]==' ')continue;
			        if(buf[i] > ' ')str3[j++] = buf[i];
					if(j>0 && buf[i]==' ')break;
				}
				str3[j] = 0;
			    if(str2val(str3, &parm) != 0)
			    {
			        HI_ERR_VENC("error: echo cmd '%s' is worng!\n", buf);
			        return HI_FAILURE;
				}

                if ( parm > 3600 )
                {
                    HI_ERR_VENC("error: not support save too large stream file!\n");
			        return HI_FAILURE;
                }
			 
		        HI_DRV_LOG_GetStorePath(s_VencSavePath, 64);
				HI_OSAL_Snprintf(FileName, 64, "%s/%s", s_VencSavePath,g_stVencChn[u32ChnID].stProcWrite.StreamFileName);
	            g_stVencChn[u32ChnID].stProcWrite.bTimeModeRun = HI_TRUE;
	            g_stVencChn[u32ChnID].stProcWrite.fpSaveFile = VENC_DRV_OsalFopen(FileName,  O_RDWR | O_CREAT|O_APPEND, 0);
	            if (HI_NULL == g_stVencChn[u32ChnID].stProcWrite.fpSaveFile)
	            {
	                HI_ERR_VENC("Can not create %s file.\n", FileName);
	                g_stVencChn[u32ChnID].stProcWrite.bTimeModeRun = HI_FALSE;
	                return HI_FAILURE;
	            }

	            msleep(1000 * parm);
	            g_stVencChn[u32ChnID].stProcWrite.bTimeModeRun = HI_FALSE;
	            VENC_DRV_OsalFclose(g_stVencChn[u32ChnID].stProcWrite.fpSaveFile);
			  
		   }
		   else if (!HI_OSAL_Strncmp(str2,"frame",256))
		   {
                /*dat 3*/
				j = 0;
			    for(; i < count; i++)
			    {
			        if(j==0 && buf[i]==' ')continue;
			        if(buf[i] > ' ')str3[j++] = buf[i];
					if(j>0 && buf[i]==' ')break;
				}
				str3[j] = 0;
                if(str2val(str3, &parm) != 0)
			    {
			        HI_ERR_VENC("error: echo cmd '%s' is worng!\n", buf);
			        return HI_FAILURE;
				}

                if ( parm > 100000 )
                {
                    HI_ERR_VENC("error: not support save too large YUV file!\n");
			        return HI_FAILURE;
                }	


                HI_DRV_LOG_GetStorePath(s_VencSavePath, 64);
				HI_OSAL_Snprintf(FileName, 64, "%s/%s", s_VencSavePath,g_stVencChn[u32ChnID].stProcWrite.StreamFileName);
	            g_stVencChn[u32ChnID].stProcWrite.bFrameModeRun = HI_TRUE;
	            g_stVencChn[u32ChnID].stProcWrite.fpSaveFile = VENC_DRV_OsalFopen(FileName,  O_RDWR | O_CREAT|O_APPEND, 0);
	 
	            if (HI_NULL == g_stVencChn[u32ChnID].stProcWrite.fpSaveFile)
	            {
	                HI_ERR_VENC("Can not create %s file.\n", FileName);
	                g_stVencChn[u32ChnID].stProcWrite.bFrameModeRun = HI_FALSE;
	                return HI_FAILURE;
	            }

	            g_stVencChn[u32ChnID].stProcWrite.u32FrameModeCount = parm;
	            while (1)
	            {
	                /* if the frame count reaches to aim, break */
	                if (HI_FALSE == g_stVencChn[u32ChnID].stProcWrite.bFrameModeRun)
	                {
	                    break;
	                }
	                else
	                {
	                    msleep(100);
	                }
	            }
	            VENC_DRV_OsalFclose(g_stVencChn[u32ChnID].stProcWrite.fpSaveFile);
		   }
		   else
		   {
		      VENC_DRV_ProcHelp();
		   }
		}
		else
		{
		   VENC_DRV_ProcHelp();
		}
    }
	else
	{
	   VENC_DRV_ProcHelp();
	}

    return count;
	
}

HI_S32 VENC_DRV_ProcAdd(HI_HANDLE hVenc,HI_U32 u32ChnID)   /**/
{
    HI_S32 Ret;
    DRV_PROC_ITEM_S *pProcItem;
    HI_CHAR ProcName[12];

    if (HI_INVALID_HANDLE == hVenc)
    {
        return HI_FAILURE;
    }

    Ret = HI_OSAL_Snprintf(ProcName, sizeof(ProcName), "venc%02x", u32ChnID);
    if (0 == Ret)
    {
        HI_ERR_VENC("HI_OSAL_Snprintf failed!\n");
        return HI_FAILURE;
    }

    pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
    if (!pProcItem)
    {
        HI_ERR_VENC("VENC add proc failed!\n");
        return HI_FAILURE;
    }

    pProcItem->data  = (HI_VOID *)hVenc;
    pProcItem->read  = VENC_DRV_ProcRead;
    pProcItem->write = VENC_DRV_ProcWrite;

    return HI_SUCCESS;
}

HI_VOID VENC_DRV_ProcDel(HI_HANDLE hVenc,HI_U32 u32ChnID)
{
    HI_S32 Ret;
    HI_CHAR ProcName[12];

    if (HI_INVALID_HANDLE == hVenc)
    {
        return;
    }

    Ret = HI_OSAL_Snprintf(ProcName, sizeof(ProcName), "venc%02x", u32ChnID);
    if (0 == Ret)
    {
        return;
    }

    HI_DRV_PROC_RemoveModule(ProcName);
}
