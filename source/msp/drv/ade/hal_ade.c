/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name       		: 	aud_adac.c
  Version        		: 	Initial Draft
  Author         		: 	Hisilicon multimedia software group
  Created       		: 	2010/02/28
  Last Modified		    :
  Description  		    :  Hifi audio dac interface
  Function List 		:
  History       		:
  1.Date        		: 	2010/02/28
    Author      		: 	z40717
    Modification   	    :	Created file

******************************************************************************/
#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/delay.h>

#include <asm/uaccess.h>
#include <asm/io.h>
#include <linux/seq_file.h>

#include "hi_drv_mmz.h"
#include "hi_drv_stat.h"
#include "hi_drv_sys.h"
#include "hi_drv_proc.h"
#include "hi_drv_ade.h"

#include "hal_ade.h"

static volatile HI_ADE_COM_REGS_S *       g_pAdeComReg;
static volatile HI_ADE_CHN_REGS_S *       g_pAdeChnReg[HI_ADE_MAX_INSTANCE];
static HI_U32 g_u32RegMapAddr = 0;

static HI_VOID IOAddressMap(HI_U32 u32AoeRegBase)
{
    ADE_CHAN_ID_E ch;

    g_u32RegMapAddr = (HI_U32)ioremap_nocache(u32AoeRegBase, 4 * 1024);

    /* reg map */
    g_pAdeComReg = (HI_ADE_COM_REGS_S *)(g_u32RegMapAddr + ADE_COM_REG_OFFSET);
    for (ch = ADE_CHAN_0; ch < HI_ADE_MAX_INSTANCE; ch++)
    {
        g_pAdeChnReg[ch] = (HI_ADE_CHN_REGS_S *)((g_u32RegMapAddr + ADE_CHN_REG_OFFSET) + ADE_CHN_REG_BANDSIZE * ch);
    }

    return;
}

static HI_VOID IOaddressUnmap(HI_VOID)
{
    ADE_CHAN_ID_E ch;

    /* reg ummap */
    g_pAdeComReg= HI_NULL;
    for (ch = ADE_CHAN_0; ch < HI_ADE_MAX_INSTANCE; ch++)
    {
        g_pAdeChnReg[ch] = HI_NULL;
    }

    if (!g_u32RegMapAddr)
    {
        iounmap((HI_VOID*)g_u32RegMapAddr);
    }
}

HI_VOID ADE_HAL_Init(HI_U32 u32AoeRegBase)
{
    IOAddressMap(u32AoeRegBase);

    return;
}

HI_VOID ADE_HAL_DeInit(HI_VOID)
{
    IOaddressUnmap();

    return;
}

ADE_CMD_RET_E  iHAL_ADE_AckCmd(ADE_CHAN_ID_E enADE)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[enADE];
    volatile HI_U32 loop = 0;

    for (loop = 0; loop < 100; loop++)
    {
        //udelay(1000);
        msleep(1);
        if (AdeReg->ADE_CTRL.bits.cmd_done)
        {
            return (ADE_CMD_RET_E)AdeReg->ADE_CTRL.bits.cmd_return_value;
        }
    }

    return ADE_CMD_ERR_TIMEOUT;
}

ADE_CMD_RET_E  iHAL_ADE_NoBlock_AckCmd(ADE_CHAN_ID_E enADE)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[enADE];
    volatile HI_U32 loop = 0;

    for (loop = 0; loop < 800; loop++)
    {
        if (AdeReg->ADE_CTRL.bits.cmd_done)
        {
            return (ADE_CMD_RET_E)AdeReg->ADE_CTRL.bits.cmd_return_value;
        }
    }

    return ADE_CMD_DONE;
}

HI_S32 iHAL_ADE_SetCmd(ADE_CHAN_ID_E enADE, ADE_CMD_E newcmd)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[enADE];
    ADE_CMD_RET_E Ack;

    switch (newcmd)
    {
    case ADE_CMD_OPEN_DECODER:
    case ADE_CMD_CLOSE_DECODER:
    case ADE_CMD_START_DECODER:
    case ADE_CMD_STOP_DECODER:
    case ADE_CMD_IOCTRL_DECODER:
        AdeReg->ADE_CTRL.bits.cmd = newcmd;
        break;

    default:

        //HI_WARN_AO("AIP unknow Cmd(0x%x)",newcmd);
        return HI_SUCCESS;
    }

    AdeReg->ADE_CTRL.bits.cmd_done = 0;
#if 0
    if (HI_FALSE == AdeReg->AIP_BUFF_ATTR.bits.aip_alsa)
    {
        Ack = iHAL_ADE_AckCmd(enADE);
        if (ADE_CMD_DONE != Ack)
        {
            HI_ERR_AO("\nAIP SetCmd(0x%x) failed(0x%x)", newcmd, Ack);
            return HI_FAILURE;
        }
    }
    else    //for alsa
#endif
    {
        Ack = iHAL_ADE_NoBlock_AckCmd(enADE);
    }

    return HI_SUCCESS;
}

HI_S32  ADE_HAL_SendCmd(HI_HANDLE hHandle, ADE_CMD_E enCmd)
{
    return iHAL_ADE_SetCmd(hHandle, enCmd);
}

HI_S32  ADE_HAL_CheckCmdDone(HI_HANDLE hHandle)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    if (AdeReg->ADE_CTRL.bits.cmd_done)
    {
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}

HI_VOID ADE_HAL_SyncInputBuf(HI_HANDLE hHandle, HI_U32 u32WritePos, HI_U32* pu32ReadPos)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    AdeReg->IP_BUF_WPTR = u32WritePos;
    *pu32ReadPos = AdeReg->IP_BUF_RPTR;
}

HI_VOID ADE_HAL_GetInputBufPtsReadPos(HI_HANDLE hHandle, HI_U32* pu32ReadPos)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    *pu32ReadPos = AdeReg->IP_PTS_READPOS;
}

HI_VOID ADE_HAL_SetInputBufEosFlag(HI_HANDLE hHandle, HI_BOOL bEnable)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    if (HI_TRUE == bEnable)
    {
        AdeReg->IP_BUF_SIZE.bits.buff_eos_flag = 1;
    }
    else
    {
        AdeReg->IP_BUF_SIZE.bits.buff_eos_flag = 0;
    }
}

HI_S32  ADE_HAL_SendAndAckCmd(HI_HANDLE hHandle, ADE_CMD_E enCmd)
{
    /* send open message to ade */
    if (HI_SUCCESS != ADE_HAL_SendCmd(hHandle, enCmd))
    {
        HI_ERR_ADE("send ch(%d) cmd(ox%x) failed\n", hHandle, enCmd);
        return HI_FAILURE;
    }

    /* ade ack sent message */
    while (1)
    {
        if (HI_SUCCESS == ADE_HAL_CheckCmdDone(hHandle))
        {
            break;
        }
        msleep(1);
    }

    return HI_SUCCESS;
}

HI_VOID ADE_HAL_SetMsgPoolAttr(HI_HANDLE hHandle, HAL_ADE_MSGPOOL_ATTR_S *pstAttr)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    AdeReg->ADE_MSGPOOL_ADDR = pstAttr->u32MsgPoolAddr;
    AdeReg->ADE_ATTR.bits.msgpool_size = pstAttr->u32MsgPoolSize;
    return;
}

HI_VOID ADE_HAL_SetOutputBufAttr(HI_HANDLE hHandle, HAL_ADE_OUTPUTBUF_ATTR_S* pstAttr)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    AdeReg->OP_BUF_ADDR = pstAttr->u32BufAddr;
    AdeReg->OP_BUF_SIZE.bits.buff_size  = pstAttr->u32BufSize;
    AdeReg->OP_BUF_SIZE.bits.period_num = pstAttr->u32PeriodNumber;
    AdeReg->OP_BUF_WPTR = pstAttr->u32Wpos;
    AdeReg->OP_BUF_RPTR = pstAttr->u32Rpos;

    //discard u32PeriodBufSize, ade calc u32PeriodBufSize = u32BufSize/u32PeriodNumber
    return;
}

HI_VOID ADE_HAL_GetOutputBufAttr(HI_HANDLE hHandle, HAL_ADE_OUTPUTBUF_ATTR_S* pstAttr)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    pstAttr->u32Wpos = AdeReg->OP_BUF_WPTR;
    pstAttr->u32Rpos = AdeReg->OP_BUF_RPTR;

    //discard u32PeriodBufSize, ade calc u32PeriodBufSize = u32BufSize/u32PeriodNumber
    return;
}

HI_VOID ADE_HAL_SetInputBufAttr(HI_HANDLE hHandle, HAL_ADE_INBUF_ATTR_S* pstAttr)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    AdeReg->IP_BUF_ADDR = pstAttr->u32BufAddr;
    AdeReg->IP_BUF_SIZE.bits.buff_size = pstAttr->u32BufSize;
    AdeReg->IP_BUF_SIZE.bits.buff_eos_flag = (HI_TRUE == pstAttr->bEosFlag ? 1 : 0);
    AdeReg->IP_BUF_WPTR = pstAttr->u32Wpos;
    AdeReg->IP_BUF_RPTR = pstAttr->u32Rpos;
    AdeReg->IP_PTS_READPOS  = pstAttr->u32PtsLastReadPos;
    AdeReg->IP_PTS_BOUNDARY = pstAttr->u32PtsBoundary;

    return;
}

HI_VOID ADE_HAL_GetInputBufAttr(HI_HANDLE hHandle, HAL_ADE_INBUF_ATTR_S* pstAttr)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    pstAttr->bEosFlag =  (1 == AdeReg->IP_BUF_SIZE.bits.buff_eos_flag ? HI_TRUE : HI_FALSE);
    pstAttr->u32Wpos = AdeReg->IP_BUF_WPTR;
    pstAttr->u32Rpos = AdeReg->IP_BUF_RPTR;

    return;
}

HI_VOID ADE_HAL_GetOutPutBufWptrAndRptr(HI_HANDLE hHandle, HI_U32 *pu32WritePos, HI_U32 *pu32ReadPos)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    *pu32WritePos = AdeReg->OP_BUF_WPTR;
    *pu32ReadPos = AdeReg->OP_BUF_RPTR;
}

HI_VOID ADE_HAL_SetOutPutBufWptr(HI_HANDLE hHandle, HI_U32 u32WritePos)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    AdeReg->OP_BUF_WPTR = u32WritePos;
}

HI_VOID ADE_HAL_SetOutPutBufRptr(HI_HANDLE hHandle, HI_U32 u32ReadPos)
{
    HI_ADE_CHN_REGS_S *AdeReg = (HI_ADE_CHN_REGS_S *)g_pAdeChnReg[hHandle];

    AdeReg->OP_BUF_RPTR = u32ReadPos;
}
