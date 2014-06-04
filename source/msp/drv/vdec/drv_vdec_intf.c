#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <linux/vmalloc.h>
#include <linux/interrupt.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <mach/hardware.h>

#include "hi_unf_avplay.h"
#include "hi_error_mpi.h"

#include "vfmw.h"
#include "drv_vdec_ioctl.h"
#include "hi_drv_vdec.h"
#include "drv_vdec_private.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

static HI_S32	VDEC_DRV_CtrlWriteProc(struct file * file,
                                   const char __user * buf, size_t count, loff_t *ppos);
static HI_S32	VDEC_DRV_CtrlReadProc(struct seq_file *p, HI_VOID *v);

static HI_S32	VDEC_DRV_WriteProc(struct file * file,
                                   const char __user * buf, size_t count, loff_t *ppos);
static HI_S32	VDEC_DRV_ReadProc(struct seq_file *p, HI_VOID *v);
static long		VDEC_DRV_Ioctl(struct file *filp, unsigned int cmd, unsigned long arg);

static HI_CHAR *s_aszVdecType[HI_UNF_VCODEC_TYPE_BUTT + 1] =
{
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
    "OTHER",
    "SORENSON",
    "DIVX3",
    "RAW",
    "JPEG",
    "VP8",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "OTHER",
    "UNKNOWN",
};

static struct file_operations s_stDevFileOpts =
{
    .owner			= THIS_MODULE,
    .open			= VDEC_DRV_Open,
    .unlocked_ioctl = VDEC_DRV_Ioctl,
    .release		= VDEC_DRV_Release,
};

static PM_BASEOPS_S s_stDrvOps = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = VDEC_DRV_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = VDEC_DRV_Resume,
};

static VDEC_REGISTER_PARAM_S s_stProcParam = {
    .pfnCtrlReadProc  = VDEC_DRV_CtrlReadProc,
    .pfnCtrlWriteProc = VDEC_DRV_CtrlWriteProc,
    .pfnReadProc  = VDEC_DRV_ReadProc,
    .pfnWriteProc = VDEC_DRV_WriteProc,
};

/* the attribute struct of video decoder device */
static UMAP_DEVICE_S s_stVdecUmapDev;

/* save raw/yuv param */
static HI_S8  VdecSavePath[256] = {'/','m','n','t',0};
extern HI_S32 VdecRawChanNum;
extern HI_S32 VdecYuvChanNum;

static long VDEC_DRV_Ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
    int ret;

    ret = (long)HI_DRV_UserCopy(filp->f_dentry->d_inode, filp, cmd, arg, VDEC_Ioctl);
    return ret;
}

static __inline__ int  VDEC_DRV_RegisterDev(void)
{
    /*register aenc chn device*/
    snprintf(s_stVdecUmapDev.devfs_name, sizeof(s_stVdecUmapDev.devfs_name), UMAP_DEVNAME_VDEC);
    s_stVdecUmapDev.fops   = &s_stDevFileOpts;
    s_stVdecUmapDev.minor  = UMAP_MIN_MINOR_VDEC;
    s_stVdecUmapDev.owner  = THIS_MODULE;
    s_stVdecUmapDev.drvops = &s_stDrvOps;
    if (HI_DRV_DEV_Register(&s_stVdecUmapDev) < 0)
    {
        HI_FATAL_VDEC("FATAL: vdec register device failed\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static __inline__ void VDEC_DRV_UnregisterDev(void)
{
    /*unregister aenc chn device*/
    HI_DRV_DEV_UnRegister(&s_stVdecUmapDev);
}

static __inline__ int str2val(char *str, unsigned int *data)
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

static HI_S32 VDEC_DRV_CtrlReadProc(struct seq_file *p, HI_VOID *v)
{
    PROC_PRINT(p, "================== VDEC CTRL INFO ==================\n");
    PROC_PRINT(p, "=========== param in () is not necessary ===========\n");
    PROC_PRINT(p, "echo  dat0  dat1      dat2   > /proc/msp/vdec_ctrl\n");
    PROC_PRINT(p, "echo  0     handle   (path)  -- turn on/off raw save\n");
    PROC_PRINT(p, "echo  1     handle   (path)  -- turn on/off yuv save\n");
    PROC_PRINT(p, "====================================================\n");
    PROC_PRINT(p, "VdecSavePath:   %30s\n", VdecSavePath);
    PROC_PRINT(p, "VdecRawChanNum: %30d\n", VdecRawChanNum);
    PROC_PRINT(p, "VdecYuvChanNum: %30d\n", VdecYuvChanNum);
    PROC_PRINT(p, "====================================================\n\n");
	
    return 0;
}

static HI_S32 VDEC_DRV_CtrlWriteProc(struct file * file,
                                 const char __user * buffer, size_t count, loff_t *ppos)
{
    HI_S32 i,j;
    HI_U32 dat1, dat2;
    static HI_CHAR buf[256], str[256];

    if(count >= sizeof(buf)) 
    {
        HI_FATAL_VDEC("FATAL: parameter string is too long!\n");
        return 0;
    }

    memset(buf, 0, sizeof(buf));
    if (copy_from_user(buf, buffer, count))
    {
        HI_FATAL_VDEC("FATAL: copy_from_user failed!\n"); 
        return 0;
    }
    buf[count] = 0;

    /* dat1 */
    i = 0;
    j = 0;
    for(; i < count; i++)
    {
        if(j==0 && buf[i]==' ')
        {
            continue;
        }
        if(buf[i] > ' ')
        {
            str[j++] = buf[i];
        }
	 if(j>0 && buf[i]==' ')
        {
            break;
        }
    }
    str[j] = 0;

    if(str2val(str, &dat1) != 0)
    {
        HI_FATAL_VDEC("FATAL: error echo cmd '%s'!\n", buf); 
        return 0;
    }

    /* dat2 */
    j = 0;
    for(; i < count; i++)
    {
        if(j==0 && buf[i]==' ')
        {
            continue;
        }
        if(buf[i] > ' ')
        {
            str[j++] = buf[i];
        }
	 if(j>0 && buf[i]==' ')
        {
            break;
        }
    }
    str[j] = 0;
    
    if(str2val(str, &dat2) != 0)
    {
        HI_FATAL_VDEC("FATAL: error echo cmd '%s'!\n", buf); 
        return 0;
    }

    // 如果是设置存选项，可能还跟着保存路径
    if (0 == dat1 || 1 == dat1)
    {
        j = 0;
        for(; i < count; i++)
        {
            if(j==0 && buf[i]==' ')
            {
                continue;
            }
            if(buf[i] > ' ')
            {
                str[j++] = buf[i];
            }
            if(j>0 && buf[i]<=' ')
            {
                break;
            }
        }
        str[j] = 0;

        if (j >= 64)
        {
            HI_FATAL_VDEC("FATAL: save path too long, should less than 64,\nuse default %s\n",VdecSavePath);
        }
		else if(j<=0)
		{
		    HI_FATAL_VDEC("FATAL: save path too short, should less than 0,\nuse default %s\n",VdecSavePath);
		}
        else if (str[0] == '/')
        {
            if(str[j-1] == '/')
            {
               str[j-1] = 0; 
            }
			
            strncpy(VdecSavePath, str, sizeof(VdecSavePath));
			VdecSavePath[sizeof(VdecSavePath)-1]='\0';
        }
    }

    switch (dat1)
    {
        case 0:
            if(dat2 >= HI_VDEC_MAX_INSTANCE_NEW)
            {
            	break;
            }
            if(HI_FALSE == BUFMNG_CheckFile(dat2, 0))
            {
                HI_S8 str[80];
                static UINT32 raw_file_cnt = 0;
            
                snprintf(str,sizeof(str),"%s/vdec_raw_chan%d_%d.raw",(char *)VdecSavePath, dat2, raw_file_cnt++);

				if (BUFMNG_OpenFile(dat2, str, 0) != HI_SUCCESS)
				{
					HI_FATAL_VDEC("FATAL: failed create file '%s' for raw stream save!\n",str);
				}
				else
				{
					printk("OK create file '%s' for raw stream save\n",str);
				}
            }
            else if (HI_TRUE == BUFMNG_CheckFile(dat2, 0))
            {
				if (BUFMNG_CloseFile(dat2, 0) != HI_SUCCESS)
				{
                    HI_FATAL_VDEC("FATAL: failed close file for vdec%2d raw stream save!\n", dat2);
				}
				else
				{
                    printk("OK close file for vdec%2d raw stream save\n", dat2);
				}
            }
            break;
        
        case 1:
            if(dat2 >= HI_VDEC_MAX_INSTANCE_NEW)
            {
            	break;
            }
            if(HI_FALSE == BUFMNG_CheckFile(dat2, 1))
            {
                HI_S8 str[80];
                static UINT32 yuv_file_cnt = 0;
            
                snprintf(str,sizeof(str),"%s/vdec_yuv_chan%d_%d.yuv",(char *)VdecSavePath, dat2, yuv_file_cnt++);

				if (BUFMNG_OpenFile(dat2, str, 1) != HI_SUCCESS)
				{
					HI_FATAL_VDEC("FATAL: failed create file '%s' for yuv save!\n",str);
				}
				else
				{
					printk("OK create file '%s' for yuv save\n",str);
				}
            }
            else if (HI_TRUE == BUFMNG_CheckFile(dat2, 1))
            {
				if (BUFMNG_CloseFile(dat2, 1) != HI_SUCCESS)
				{
                    HI_FATAL_VDEC("FATAL: failed close file for vdec%2d yuv save!\n", dat2);
				}
				else
				{
                    printk("OK close file for vdec%2d yuv save\n", dat2);
				}
            }
            break;
            
        default:
            HI_FATAL_VDEC("FATAL: unkown echo cmd '%d'!\n", dat1); 
            break;
    }

    return count;
    
}

static HI_S32 VDEC_DRV_WriteProc(struct file * file,
                                 const char __user * buffer, size_t count, loff_t *ppos)
{
    return HI_DRV_PROC_ModuleWrite(file, buffer, count, ppos, VDEC_DRV_DebugCtrl);
}

static HI_S32 VDEC_DRV_ReadProc(struct seq_file *p, HI_VOID *v)
{
    HI_S32 i;
	HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan;
    VDEC_CHAN_STATINFO_S *pstStatInfo;
    DRV_PROC_ITEM_S *pstProcItem;
    BUFMNG_STATUS_S stBMStatus = {0};
    HI_CHAR aszDecMode[32];
    HI_CHAR aszDisplayNorm[32];
    HI_CHAR aszSampleType[32];
    HI_CHAR aszYUVType[32];
    HI_CHAR aszUserRatio[16];
	HI_CHAR aszDecodeRatio[16];
	HI_CHAR aszFrmPackingType[16];
    HI_CHAR aszFieldMode[16];
    HI_CHAR aszDecType[10];
    HI_CHAR aszCapLevel[10];
    HI_CHAR aszProtocolLevel[10];
    HI_HANDLE hVpss = HI_INVALID_HANDLE;
    pstProcItem = p->private;

    if (0 == strcmp(pstProcItem->entry_name, "vdec_ctrl"))
    {
        return 0;
    }

    s32Ret = sscanf(pstProcItem->entry_name, "vdec%02d", &i);
	if(s32Ret <=0)
	{
	   PROC_PRINT(p, "Invalid VDEC ID.\n");
       return 0;
	}
    if (i >= HI_VDEC_MAX_INSTANCE_NEW)
    {
        PROC_PRINT(p, "Invalid VDEC ID:%d.\n", i);
        return 0;
    }

    pstChan = VDEC_DRV_GetChan(i);
    if (pstChan)
    {
        pstStatInfo = &(pstChan->stStatInfo);
        switch (pstChan->stCurCfg.enMode)
        {
        case HI_UNF_VCODEC_MODE_I:
            snprintf(aszDecMode, sizeof(aszDecMode), "I");
            break;
        case HI_UNF_VCODEC_MODE_IP:
            snprintf(aszDecMode, sizeof(aszDecMode), "IP");
            break;
        case HI_UNF_VCODEC_MODE_NORMAL:
            snprintf(aszDecMode, sizeof(aszDecMode), "NORMAL");
            break;
        default:
            snprintf(aszDecMode, sizeof(aszDecMode), "UNKNOWN(%d)", pstChan->stCurCfg.enMode);
            break;
        }

        switch (pstChan->enDisplayNorm)
        {
        case HI_UNF_ENC_FMT_PAL:
            snprintf(aszDisplayNorm, sizeof(aszDisplayNorm), "PAL");
            break;
        case HI_UNF_ENC_FMT_NTSC:
            snprintf(aszDisplayNorm, sizeof(aszDisplayNorm), "NTSC");
            break;
        default:
            snprintf(aszDisplayNorm, sizeof(aszDisplayNorm), "OTHER(%d)", pstChan->enDisplayNorm);
            break;
        }

        if (pstChan->stLastFrm.bProgressive)
        {
            snprintf(aszSampleType, sizeof(aszSampleType), "Progressive");
        }
        else
        {
            snprintf(aszSampleType, sizeof(aszSampleType), "Interlace");
        }

        snprintf(aszUserRatio, sizeof(aszUserRatio),  "%d:%d", pstChan->u32UserSetAspectWidth, pstChan->u32UserSetAspectHeight);
		snprintf(aszDecodeRatio, sizeof(aszDecodeRatio),  "%d:%d", pstChan->u32DecodeAspectWidth, pstChan->u32DecodeAspectHeight);
        switch(pstChan->eFramePackType)
        {
        case HI_UNF_FRAME_PACKING_TYPE_NONE:
			snprintf(aszFrmPackingType,sizeof(aszFrmPackingType),"Normal");
			break;
		case HI_UNF_FRAME_PACKING_TYPE_SIDE_BY_SIDE:
		    snprintf(aszFrmPackingType,sizeof(aszFrmPackingType),"SBS");
			break;
		case HI_UNF_FRAME_PACKING_TYPE_TOP_AND_BOTTOM:
		    snprintf(aszFrmPackingType,sizeof(aszFrmPackingType),"TAB");
			break;
		case HI_UNF_FRAME_PACKING_TYPE_TIME_INTERLACED:
			snprintf(aszFrmPackingType,sizeof(aszFrmPackingType),"MVC");
			break;
		case HI_UNF_FRAME_PACKING_TYPE_BUTT:
			snprintf(aszFrmPackingType,sizeof(aszFrmPackingType),"Not Set");
			break;            
        }
        switch (pstChan->stLastFrm.enFieldMode)
        {
        case HI_DRV_FIELD_ALL:
            snprintf(aszFieldMode, sizeof(aszFieldMode), "Frame");
            break;
        case HI_DRV_FIELD_TOP:
            snprintf(aszFieldMode, sizeof(aszFieldMode), "Top");
            break;
        case HI_DRV_FIELD_BOTTOM:
            snprintf(aszFieldMode, sizeof(aszFieldMode), "Bottom");
            break;
        default:
            snprintf(aszFieldMode, sizeof(aszFieldMode), "UNKNOWN");
            break;
        }

        switch (pstChan->stLastFrm.ePixFormat)
        {
        case HI_DRV_PIX_FMT_NV08:
            snprintf(aszYUVType, sizeof(aszYUVType), "SP400");
            break;
        case HI_DRV_PIX_FMT_NV12_411:
            snprintf(aszYUVType, sizeof(aszYUVType), "SP411");
            break;
        case HI_DRV_PIX_FMT_NV21:
            snprintf(aszYUVType, sizeof(aszYUVType), "SP420");
            break;
        case HI_DRV_PIX_FMT_NV16:
            snprintf(aszYUVType, sizeof(aszYUVType), "SP422_1X2");
            break;
        case HI_DRV_PIX_FMT_NV16_2X1:
            snprintf(aszYUVType, sizeof(aszYUVType), "SP422_2X1");
            break;
        case HI_DRV_PIX_FMT_NV24:
            snprintf(aszYUVType, sizeof(aszYUVType), "SP444");
            break;
        /*case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
            sprintf(aszYUVType, "Package_UYVY");
            break;
        case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
            sprintf(aszYUVType, "Package_YUYV");
            break;
        case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
            sprintf(aszYUVType, "Package_YVYU");
            break;*/
        case HI_DRV_PIX_FMT_YUV400:
            snprintf(aszYUVType, sizeof(aszYUVType), "P400");
            break;
        case HI_DRV_PIX_FMT_YUV411:
            snprintf(aszYUVType, sizeof(aszYUVType), "P411");
            break;
        case HI_DRV_PIX_FMT_YUV420p:
            snprintf(aszYUVType, sizeof(aszYUVType), "P420");
            break;
        case HI_DRV_PIX_FMT_YUV422_1X2:
            snprintf(aszYUVType, sizeof(aszYUVType), "P422_1X2");
            break;
        case HI_DRV_PIX_FMT_YUV422_2X1:
            snprintf(aszYUVType, sizeof(aszYUVType), "P422_2X1");
            break;
        case HI_DRV_PIX_FMT_YUV_444:
            snprintf(aszYUVType, sizeof(aszYUVType), "P444");
            break;
        case HI_DRV_PIX_FMT_YUV410p:
            snprintf(aszYUVType, sizeof(aszYUVType), "P410");
            break;
        default:
            snprintf(aszYUVType, sizeof(aszYUVType), "UNKNOWN");
            break;
        }

        switch (pstChan->stUserCfgCap.enDecType)
        {
        case HI_UNF_VCODEC_DEC_TYPE_NORMAL:
            snprintf(aszDecType, sizeof(aszDecType), "NORMAL");
            break;
        case HI_UNF_VCODEC_DEC_TYPE_ISINGLE:
            snprintf(aszDecType, sizeof(aszDecType), "IFRAME");
            break;
        default:
            snprintf(aszDecType, sizeof(aszDecType), "UNKNOWN");
            break;
        }

        switch (pstChan->stUserCfgCap.enCapLevel)
        {
        case HI_UNF_VCODEC_CAP_LEVEL_QCIF:
            snprintf(aszCapLevel, sizeof(aszCapLevel), "QCIF");
            break;
        case HI_UNF_VCODEC_CAP_LEVEL_CIF:
            snprintf(aszCapLevel, sizeof(aszCapLevel), "CIF");
            break;
        case HI_UNF_VCODEC_CAP_LEVEL_D1:
            snprintf(aszCapLevel, sizeof(aszCapLevel), "D1");
            break;
        case HI_UNF_VCODEC_CAP_LEVEL_720P:
            snprintf(aszCapLevel, sizeof(aszCapLevel), "720P");
            break;
        case HI_UNF_VCODEC_CAP_LEVEL_FULLHD:
            snprintf(aszCapLevel, sizeof(aszCapLevel), "FULLHD");
            break;
        default:
            snprintf(aszCapLevel, sizeof(aszCapLevel), "UNKNOWN");
            break;
        }

        switch (pstChan->stUserCfgCap.enProtocolLevel)
        {
        case HI_UNF_VCODEC_PRTCL_LEVEL_MPEG:
            snprintf(aszProtocolLevel, sizeof(aszProtocolLevel), "NOT_H264");
            break;
        case HI_UNF_VCODEC_PRTCL_LEVEL_H264:
            snprintf(aszProtocolLevel, sizeof(aszProtocolLevel), "H264");
            break;
        default:
            snprintf(aszProtocolLevel, sizeof(aszProtocolLevel), "UNKNOWN");
            break;
        }
        s32Ret = VDEC_FindVpssHandleByVdecHandle(i,&hVpss);
		if(HI_SUCCESS !=s32Ret)
		{
		    HI_ERR_VDEC("VDEC_FindVpssHandleByVdecHandle ERR\n");
		}
        PROC_PRINT(p, "============================== VDEC%d ================================\n", i);
        PROC_PRINT(p,
                        "Work State                      : %s\n",
                        (VDEC_CHAN_STATE_RUN == pstChan->enCurState) ? "RUN" : "STOP");
        PROC_PRINT(p,
                        "VpssID                          : vpss0%d\n",
                         hVpss);
		PROC_PRINT(p,
                        "VfmwID                          : vfmw0%d\n",
                        pstChan->hChan);
        PROC_PRINT(p,
                        "Codec ID                        : %s(0x%x)\n"
                        "Mode                            : %s\n"
                        "Priority                        : %u\n"
                        "ErrCover                        : %u\n"
                        "OrderOutput                     : %u\n"
                        "CtrlOption                      : 0x%x\n"
                        "Capbility                       : %s/%s/%s\n"
                        "--------------------------Stream Information--------------------------\n"
                        "Source                          : %s%d\n"
                        "StreamSize(Total/Current)       : 0x%x/0x%x\n"
                        "BitRate(bps)                    : %u\n",
                       
                        (pstChan->stCurCfg.enType
                         <= HI_UNF_VCODEC_TYPE_BUTT) ? (s_aszVdecType[pstChan->stCurCfg.enType]) : "UNKNOW",
                        pstChan->stCurCfg.enType,

                        aszDecMode,
                        pstChan->stCurCfg.u32Priority,
                        pstChan->stCurCfg.u32ErrCover,
                        pstChan->stCurCfg.bOrderOutput,
                        pstChan->stCurCfg.s32CtrlOptions,

                        aszDecType, aszCapLevel, aszProtocolLevel,

                        (HI_INVALID_HANDLE == pstChan->hDmxVidChn) ? "User" : "DemuxChan",
                        (HI_INVALID_HANDLE == pstChan->hDmxVidChn) ? pstChan->hStrmBuf : (pstChan->hDmxVidChn&&0xff),

                        pstStatInfo->u32TotalVdecInByte,
                        pstStatInfo->u32TotalVdecHoldByte,
                     
                        pstStatInfo->u32AvrgVdecInBps
                        );
        if (HI_INVALID_HANDLE == pstChan->hDmxVidChn)
        {
           s32Ret = BUFMNG_GetStatus(pstChan->hStrmBuf, &stBMStatus);
		
		   if(HI_SUCCESS == s32Ret)
		   {
			    PROC_PRINT(p,
					    "StreamBuffer(Total/Used/Persent): 0x%x/0x%x/%d%%\n",
					       (stBMStatus.u32Free+stBMStatus.u32Used),
					       stBMStatus.u32Used,
					       stBMStatus.u32Used*100/(stBMStatus.u32Free+stBMStatus.u32Used));
		   }
		}               
        PROC_PRINT(p,"--------------------------Picture Information-------------------------\n"
                        "Width*Height                    : %d*%d\n"
                        "Stride(Y/C)                     : %#x/%#x\n"
                        "FrameRate(fps)                  : Real(%u.%u) FrameInfo(%d)\n"
                        "PlayFormat                      : %s\n"
                        "FrmPackingType                  : %s\n"
                        "Aspect(User/Decode)             : %s/%s\n"
                        "FieldMode                       : %s\n"
                        "Type                            : %s\n"
                        "VideoFormat                     : %s\n"
                        "TopFirst                        : %d\n"
                        "ErrFrame                        : %u\n"
                        "TypeNum(I/P)                    : %u/%u\n\n"
                        ,


                        pstChan->stLastFrm.u32Width, pstChan->stLastFrm.u32Height,
                        pstChan->stLastFrm.stBufAddr[0].u32Stride_Y,
                        pstChan->stLastFrm.stBufAddr[0].u32Stride_C,
                        pstStatInfo->u32AvrgVdecFps, pstStatInfo->u32AvrgVdecFpsLittle,
                        pstChan->stLastFrm.u32FrameRate,
                        aszDisplayNorm, aszFrmPackingType, aszUserRatio, aszDecodeRatio, aszFieldMode,
                        aszSampleType, aszYUVType, pstChan->stLastFrm.bTopFieldFirst,

                        pstStatInfo->u32VdecErrFrame,
                        pstStatInfo->u32FrameType[0],
                        pstStatInfo->u32FrameType[1]
             );

        if (HI_INVALID_HANDLE == pstChan->hDmxVidChn)
        {
            //s32Ret = BUFMNG_GetStatus(pstChan->hStrmBuf, &stBMStatus);
			if(HI_SUCCESS == s32Ret)
			{

                PROC_PRINT(p,
					        "DMX/USER->VDEC\n"
                            "GetStreamBuffer(Try/OK)         : %d/%d\n"
                            "PutStreamBuffer(Try/OK)         : %d/%d\n",
                            stBMStatus.u32GetTry, stBMStatus.u32GetOK,
                            stBMStatus.u32PutTry, stBMStatus.u32PutOK);
			}
        }

      
        if (HI_INVALID_HANDLE == pstChan->hDmxVidChn)
        {
            PROC_PRINT(p,
				            "VFMW->VDEC\n"
                            "AcquireStream(Try/OK)           : %d/%d\n"
                            "ReleaseStream(Try/OK)           : %d/%d\n",
                            stBMStatus.u32RecvTry, stBMStatus.u32RecvOK,
                            stBMStatus.u32RlsTry, stBMStatus.u32RlsOK);
        }
        else
        {
            PROC_PRINT(p,
				            "VFMW->VDEC\n"				
                            "AcquireStream(Try/OK)           : %d/%d\n"
                            "ReleaseStream(Try/OK)           : %d/%d\n",
                            pstStatInfo->u32VdecAcqBufTry, pstStatInfo->u32VdecAcqBufOK,
                            pstStatInfo->u32VdecRlsBufTry, pstStatInfo->u32VdecRlsBufOK);
        }

        PROC_PRINT(p,
			                "VDEC->VFMW\n"	
                            "AcquireFrame(Try/OK)            : %d/%d\n"
                            "ReleaseFrame(Try/OK)            : %d/%d\n",
                        pstStatInfo->u32VdecRcvFrameTry, pstStatInfo->u32VdecRcvFrameOK,
                        pstStatInfo->u32VdecRlsFrameTry, pstStatInfo->u32VdecRlsFrameOK);
        PROC_PRINT(p,
			                "VPSS->VDEC\n"
                            "AcquireFrame(Try/OK)            : %d/%d\n"
                            "ReleaseFrame(Try/OK)            : %d/%d\n",
                        pstStatInfo->u32UserAcqFrameTry, pstStatInfo->u32UserAcqFrameOK,
                        pstStatInfo->u32UserRlsFrameTry, pstStatInfo->u32UserRlsFrameOK);
        PROC_PRINT(p, "=======================================================================\n");

    }
    else
    {
        PROC_PRINT(p, "vdec not init!\n" );
    }

    return 0;
}

HI_S32 VDEC_DRV_ModInit(HI_VOID)
{
    int ret;

#ifndef HI_MCE_SUPPORT
    ret = VDEC_DRV_Init();
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_VDEC("Init drv fail!\n");
        return HI_FAILURE;
    }
#endif


    ret = VDEC_DRV_RegisterProc(&s_stProcParam);
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_VDEC("Reg proc fail!\n");
        return HI_FAILURE;
    }

    ret = VDEC_DRV_RegisterDev();
    if (HI_SUCCESS != ret)
    {
        VDEC_DRV_UnregisterProc();
        HI_FATAL_VDEC("Reg dev fail!\n");
        return HI_FAILURE;
    }

#ifdef MODULE
    HI_PRINT("Load hi_vdec.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return HI_SUCCESS;
}

HI_VOID VDEC_DRV_ModExit(HI_VOID)
{
    VDEC_DRV_UnregisterDev();
    VDEC_DRV_UnregisterProc();

#ifndef HI_MCE_SUPPORT
    VDEC_DRV_Exit();
#endif

    return;
}

#ifdef MODULE
module_init(VDEC_DRV_ModInit);
module_exit(VDEC_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */
