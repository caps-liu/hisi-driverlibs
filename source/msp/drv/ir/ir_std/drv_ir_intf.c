/* interface/hiir/hiir.c
 *
 * Copyright (c) 2006 Hisilicon Co., Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  USA
 *
 * History:
 *      16-12-2006 Start of Hi3560 CPU support
 */

#include <linux/device.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/delay.h>
#include <linux/poll.h>
#include <mach/hardware.h>
#include <linux/interrupt.h>
#include <linux/types.h>
#include <linux/sched.h>
#include <linux/spinlock.h>

//#include "himedia.h"
//#include "common_dev.h"
//#include "common_proc.h"
//#include "common_stat.h"

//#include "priv_ir.h"
//#include "drv_ir_codedef.h"
#include "hi_drv_ir.h"
#include "drv_ir_ioctl.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"
#include "hi_drv_module.h"
//#include "drv_ir_ioctl.h"

#include "drv_ir_codedef.c"

#define  IR_REG_BASE (IO_ADDRESS(IR_IO_BASE))
#define  IR_ENABLE (IR_REG_BASE + 0x00)
#define  IR_CONFIG (IR_REG_BASE + 0x04)
#define  CNT_LEADS (IR_REG_BASE + 0x08)
#define  CNT_LEADE (IR_REG_BASE + 0x0c)
#define  CNT_SLEADE (IR_REG_BASE + 0x10)
#define  CNT0_B (IR_REG_BASE + 0x14)
#define  CNT1_B (IR_REG_BASE + 0x18)
#define  IR_BUSY (IR_REG_BASE + 0x1c)
#define  IR_DATAH (IR_REG_BASE + 0x20)
#define  IR_DATAL (IR_REG_BASE + 0x24)
#define  IR_INTM (IR_REG_BASE + 0x28)
#define  IR_INTS (IR_REG_BASE + 0x2c)
#define  IR_INTC (IR_REG_BASE + 0x30)
#define  IR_START (IR_REG_BASE + 0x34)

#define  IR_INT_RCV (1L << 16)
#define  IR_INT_FRAMERR (1L << 17)
#define  IR_INT_OVERFLOW (1L << 18)
#define  IR_INT_RELEASE (1L << 19)

#define  WRITE_REG(Addr, Value) ((*(volatile HI_U32 *)(Addr)) = (Value))
#define  READ_REG(Addr) (*(volatile HI_U32 *)(Addr))

#define  IR_DELAY_TIME 200
#define  IR_MAX_BUF 100

#define  IR_BUF_HEAD g_IrAttr.IrKeyBuf[g_IrAttr.Head]
#define  IR_BUF_TAIL g_IrAttr.IrKeyBuf[g_IrAttr.Tail]
#define  IR_BUF_LAST g_IrAttr.IrKeyBuf[(g_IrAttr.Head == 0) ? (g_IrAttr.IrKeyBufLen - 1) : (g_IrAttr.Head - 1)]
#define  INC_BUF(x, len) ((++(x)) % (len))

typedef struct
{
    HI_UNF_IR_CODE_E IrCode;
    IR_DEV_PARA_S	 IrDevPara;
    HI_U32			 Head;
    HI_U32			 Tail;
    IR_KEY_S		 IrKeyBuf[IR_MAX_BUF];
    HI_U32			 IrKeyBufLen;

    HI_BOOL bEnable;
    HI_BOOL bKeyUp;
    HI_BOOL bRepkey;
    HI_U32	RepkeyDelayTime;
    HI_U32	IrBlockTime;

    HI_BOOL			  bCheckRepkey;
    HI_BOOL			  bReleseInt;
    wait_queue_head_t IrKeyWaitQueue;
}IR_ATTR_S;

static UMAP_DEVICE_S g_IrRegisterData;
static atomic_t g_IrCount = ATOMIC_INIT(0);
DECLARE_MUTEX(g_IrMutex);

static IR_ATTR_S g_IrAttr;

HI_VOID RepkeyTimeoutProc(HI_LENGTH_T TimerPara);

DEFINE_TIMER(RepkeyTimeoutTimer, RepkeyTimeoutProc, 0, 0);

HI_VOID RepkeyTimeoutProc(HI_LENGTH_T TimerPara)
{
    del_timer(&RepkeyTimeoutTimer);
    g_IrAttr.bCheckRepkey = HI_FALSE;
    return;
}

HI_S32 IR_ProcRead(struct seq_file *p, HI_VOID *v)
{
    HI_U8 IrCodeString[32];

    if (HI_UNF_IR_CODE_NEC_SIMPLE == g_IrAttr.IrCode)
    {
        sprintf(IrCodeString, "IR_CODE_NEC_SIMPLE");
    }
    else if (HI_UNF_IR_CODE_TC9012 == g_IrAttr.IrCode)
    {
        sprintf(IrCodeString, "R_CODE_TC9012");
    }
    else if (HI_UNF_IR_CODE_NEC_FULL == g_IrAttr.IrCode)
    {
        sprintf(IrCodeString, "IR_CODE_NEC_FULL");
    }
    else
    {
        sprintf(IrCodeString, "IR_CODE_SONY_12BIT");
    }

    PROC_PRINT(p, "---------Hisilicon IR Info---------\n");
    PROC_PRINT(p,
                    "IR   Enable             \t :%d\n"
                    "IR   Head               \t :%d\n"
                    "IR   Tail               \t :%d\n"
                    "IR   Code               \t :%s\n"
                    "IR   bKeyUp             \t :%d\n"
                    "IR   bRepkey            \t :%d\n"
                    "IR   RepkeyDelayTime    \t :%d\n"
                    "IR   IrBlockTime        \t :%x\n",

                    g_IrAttr.bEnable,
                    g_IrAttr.Head,
                    g_IrAttr.Tail,
                    IrCodeString,
                    g_IrAttr.bKeyUp,
                    g_IrAttr.bRepkey,
                    g_IrAttr.RepkeyDelayTime,
                    g_IrAttr.IrBlockTime);

    return HI_SUCCESS;
}

HI_S32 IR_ProcWrite(struct file * file,
                    const char __user * buf, size_t count, loff_t *ppos)
{
    HI_CHAR ProcPara[64];

    if (copy_from_user(ProcPara, buf, count))
    {
        return -EFAULT;
    }

    return count;
}

HI_VOID IR_Config(HI_VOID)
{
    HI_U32 Value = 0;

    while (READ_REG(IR_BUSY))
    {
        HI_WARN_IR("ir is busy, waiting.\n");
    }

    Value  = (g_IrAttr.IrDevPara.CodeType << 14);
    Value |= (g_IrAttr.IrDevPara.CodeLen - 1) << 8;
    Value |= DFT_FREQ;
    WRITE_REG(IR_CONFIG, Value);

    Value  = g_IrAttr.IrDevPara.LeadsMin << 16;
    Value |= g_IrAttr.IrDevPara.LeadsMax;
    WRITE_REG(CNT_LEADS, Value);

    Value  = g_IrAttr.IrDevPara.LeadeMin << 16;
    Value |= g_IrAttr.IrDevPara.SeadeMax;
    WRITE_REG(CNT_LEADE, Value);

    Value  = g_IrAttr.IrDevPara.SleadeMin << 16;
    Value |= g_IrAttr.IrDevPara.SleadeMax;
    WRITE_REG(CNT_SLEADE, Value);

    Value  = g_IrAttr.IrDevPara.Bit0Min << 16;
    Value |= g_IrAttr.IrDevPara.Bit0Max;
    WRITE_REG(CNT0_B, Value);

    Value  = g_IrAttr.IrDevPara.Bit1Min << 16;
    Value |= g_IrAttr.IrDevPara.Bit1Max;
    WRITE_REG(CNT1_B, Value);

    WRITE_REG(IR_INTM, 0x00);
    WRITE_REG(IR_START, 0x00);

    return;
}

HI_S32 Ir_Isr(int irq, void *dev_id, struct pt_regs *regs)
{
    if (READ_REG(IR_INTS) & IR_INT_FRAMERR)
    {
        /*HI_ERR_IR("ir frame error.\n");*/
        WRITE_REG(IR_INTC, 0x01 << 1);
    }
    else if (READ_REG(IR_INTS) & IR_INT_OVERFLOW)
    {
        HI_ERR_IR("ir fifo overflow.\n");
        WRITE_REG(IR_INTC, 0x01 << 2);
    }
    else if (READ_REG(IR_INTS) & IR_INT_RELEASE)
    {
        WRITE_REG(IR_INTC, 0x01 << 3);
        del_timer(&RepkeyTimeoutTimer);
        g_IrAttr.bCheckRepkey = 0;

        if ((g_IrAttr.bKeyUp) && (HI_UNF_KEY_STATUS_UP != IR_BUF_LAST.IrKeyState))
        {
            IR_BUF_HEAD = IR_BUF_LAST;
            IR_BUF_HEAD.IrKeyState = HI_UNF_KEY_STATUS_UP;
            IR_BUF_HEAD.IrProtocol = (HI_UNF_IR_PROTOCOL_E)g_IrAttr.IrCode;
            HI_DRV_STAT_Event(STAT_EVENT_KEYIN, IR_BUF_HEAD.IrKeyDataL);
            g_IrAttr.Head = INC_BUF(g_IrAttr.Head, g_IrAttr.IrKeyBufLen);
            wake_up_interruptible(&(g_IrAttr.IrKeyWaitQueue));
        }

        g_IrAttr.bReleseInt = HI_TRUE;
    }
    else if (READ_REG(IR_INTS) & IR_INT_RCV)
    {
        WRITE_REG(IR_INTC, 0x01 << 0);

        if (g_IrAttr.bRepkey)
        {
            if ((g_IrAttr.bCheckRepkey)
                && (IR_BUF_LAST.IrKeyDataH == READ_REG(IR_DATAH))
                && (IR_BUF_LAST.IrKeyDataL == READ_REG(IR_DATAL))
                )
            {
                HI_WARN_IR("repeart key [0x%.8x]-[0x%.8x] detective\n", READ_REG(IR_DATAH), READ_REG(IR_DATAL));
            }
            else
            {
                /* repeat key check */
                del_timer(&RepkeyTimeoutTimer);
                RepkeyTimeoutTimer.expires = jiffies + g_IrAttr.RepkeyDelayTime * HZ / 1000;
                add_timer(&RepkeyTimeoutTimer);
                

                g_IrAttr.bCheckRepkey = HI_TRUE;

                if ((IR_BUF_LAST.IrKeyDataH == READ_REG(IR_DATAH))
                    && (IR_BUF_LAST.IrKeyDataL == READ_REG(IR_DATAL))
                    && (IR_BUF_LAST.IrKeyState != HI_UNF_KEY_STATUS_UP)
                    && (!g_IrAttr.bReleseInt)
                    )
                {
                    IR_BUF_HEAD.IrKeyDataH = READ_REG(IR_DATAH);
                    IR_BUF_HEAD.IrKeyDataL = READ_REG(IR_DATAL);
                    IR_BUF_HEAD.IrKeyState = HI_UNF_KEY_STATUS_HOLD;
                }
                else
                {
                    g_IrAttr.bReleseInt = HI_FALSE;
                    IR_BUF_HEAD.IrKeyDataH = READ_REG(IR_DATAH);
                    IR_BUF_HEAD.IrKeyDataL = READ_REG(IR_DATAL);
                    IR_BUF_HEAD.IrKeyState = HI_UNF_KEY_STATUS_DOWN;
                }

                IR_BUF_HEAD.IrProtocol = (HI_UNF_IR_PROTOCOL_E)g_IrAttr.IrCode;
                HI_DRV_STAT_Event(STAT_EVENT_KEYIN, IR_BUF_HEAD.IrKeyDataL);
                g_IrAttr.Head = INC_BUF(g_IrAttr.Head, g_IrAttr.IrKeyBufLen);

                wake_up_interruptible(&(g_IrAttr.IrKeyWaitQueue));
            }
        }
        else
        {
            IR_BUF_HEAD.IrKeyDataH = READ_REG(IR_DATAH);
            IR_BUF_HEAD.IrKeyDataL = READ_REG(IR_DATAL);

            if (g_IrAttr.bReleseInt)
            {
                g_IrAttr.bReleseInt = HI_FALSE;

                IR_BUF_HEAD.IrKeyState = HI_UNF_KEY_STATUS_DOWN;

                IR_BUF_HEAD.IrProtocol = (HI_UNF_IR_PROTOCOL_E)g_IrAttr.IrCode;
                HI_DRV_STAT_Event(STAT_EVENT_KEYIN, IR_BUF_HEAD.IrKeyDataL);
                g_IrAttr.Head = INC_BUF(g_IrAttr.Head, g_IrAttr.IrKeyBufLen);
                wake_up_interruptible(&(g_IrAttr.IrKeyWaitQueue));
            }
        }
    }
    else
    {
        HI_ERR_IR("ir logic Error: int_mask=0x%.8x, int_state=0x%.8x.\n", READ_REG(IR_INTM), READ_REG(IR_INTS));
    }

    return IRQ_HANDLED;
}

HI_VOID IR_Reset(HI_VOID)
{
    WRITE_REG(IR_INTM, 0x0f);
    memset(g_IrAttr.IrKeyBuf, 0, sizeof(g_IrAttr.IrKeyBuf));

    g_IrAttr.Head = 0;
    g_IrAttr.Tail = 0;
    g_IrAttr.bCheckRepkey = 0;

    WRITE_REG(IR_INTM, 0x00);

    del_timer(&RepkeyTimeoutTimer);

    return;
}

HI_VOID IR_SetEnable(HI_U32 bEnable)
{
    if (HI_TRUE == bEnable)
    {
        WRITE_REG(IR_ENABLE, HI_TRUE);
    }
    else
    {
        IR_Reset();
        WRITE_REG(IR_ENABLE, HI_FALSE);
    }

    return;
}

static long Ir_Ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
    long Ret = 0;

    Ret = down_interruptible(&g_IrMutex);
    if (Ret)
    {
        HI_FATAL_IR("Semaphore lock is  error. \n");
        return HI_FAILURE;
    }

    switch (cmd)
    {
    case CMD_IR_ENABLE_KEYUP:
        g_IrAttr.bKeyUp = (HI_BOOL)arg;
        break;

    case CMD_IR_ENABLE_REPKEY:
        g_IrAttr.bRepkey = (HI_BOOL)arg;
        break;

    case CMD_IR_SET_REPKEY_TIMEOUT:
        g_IrAttr.RepkeyDelayTime = arg;
        break;

    case CMD_IR_SET_ENABLE:
        g_IrAttr.bEnable = (HI_BOOL)arg;
        if (g_IrAttr.bEnable)
        {
            IR_SetEnable(arg);
            IR_Config();
        }
        else
        {
            IR_SetEnable(HI_FALSE);
        }

        break;

    case CMD_IR_RESET:
        IR_Reset();
        break;

    case CMD_IR_SET_BLOCKTIME:
        g_IrAttr.IrBlockTime = arg;
        break;

    case CMD_IR_SET_FORMAT:
        g_IrAttr.IrCode = (HI_UNF_IR_CODE_E)arg;

        if (HI_UNF_IR_CODE_NEC_SIMPLE == g_IrAttr.IrCode)
        {
            g_IrAttr.IrDevPara = g_IrDevPara[0];
        }
        else if (HI_UNF_IR_CODE_TC9012 == g_IrAttr.IrCode)
        {
            g_IrAttr.IrDevPara = g_IrDevPara[4];
        }
        else if (HI_UNF_IR_CODE_NEC_FULL == g_IrAttr.IrCode)
        {
            g_IrAttr.IrDevPara = g_IrDevPara[5];
        }
        else
        {
            g_IrAttr.IrDevPara = g_IrDevPara[12];
        }

        if (g_IrAttr.bEnable)
        {
            IR_Config();
        }

        break;

#if 0
    case IR_IOC_SET_CODELEN:
        g_IrAttr.IrDevPara.CodeLen = arg;
        hiir_dbg("IR_IOC_SET_CODELEN -> code_len=%d\n", g_IrAttr.IrDevPara.CodeLen);
        break;
    case IR_IOC_SET_FREQ:
        if ((arg <= 0) || (arg > 128))
        {
            printk(KERN_DEBUG HIIR_PFX "Error: IR_IOC_SET_FREQ -> invalid args=%lu\n", arg);
            return -EFAULT;
        }

        g_IrAttr.IrDevPara.Freq = arg;
        hiir_dbg("IR_IOC_SET_FREQ -> frequence=%d\n", g_IrAttr.IrDevPara.Freq);
        break;
    case IR_IOC_SET_LEADS:
        if (get_user(min_val, p) || get_user(max_val, p + 1))
        {
            return -EFAULT;
        }

        g_IrAttr.IrDevPara.LeadsMin = min_val;
        g_IrAttr.IrDevPara.LeadsMax = max_val;
        hiir_dbg("IR_IOC_SET_LEADS -> leads_min=%d, leads_max=%d\n", g_IrAttr.IrDevPara.LeadsMin,
                 g_IrAttr.IrDevPara.LeadsMax);
        break;
    case IR_IOC_SET_LEADE:
        if (get_user(min_val, p) || get_user(max_val, p + 1))
        {
            return -EFAULT;
        }

        g_IrAttr.IrDevPara.LeadeMin = min_val;
        g_IrAttr.IrDevPara.SeadeMax = max_val;
        hiir_dbg("IR_IOC_SET_LEADE -> leade_min=%d, leade_max=%d\n", g_IrAttr.IrDevPara.LeadeMin,
                 g_IrAttr.IrDevPara.SeadeMax);
        break;
    case IR_IOC_SET_SLEADE:
        if (get_user(min_val, p) || get_user(max_val, p + 1))
        {
            return -EFAULT;
        }

        g_IrAttr.IrDevPara.SleadeMin = min_val;
        g_IrAttr.IrDevPara.SleadeMax = max_val;
        hiir_dbg("IR_IOC_SET_SLEADE -> sleade_min=%d, sleade_max=%d\n", g_IrAttr.IrDevPara.SleadeMin,
                 g_IrAttr.IrDevPara.SleadeMax);
        break;
    case IR_IOC_SET_CNT0_B:
        if (get_user(min_val, p) || get_user(max_val, p + 1))
        {
            return -EFAULT;
        }

        g_IrAttr.IrDevPara.Bit0Min = min_val;
        g_IrAttr.IrDevPara.Bit0Max = max_val;
        hiir_dbg("IR_IOC_SET_CNT0_B -> cnt0_b_min=%d, cnt0_b_max=%d\n", g_IrAttr.IrDevPara.Bit0Min,
                 g_IrAttr.IrDevPara.Bit0Max);
        break;
    case IR_IOC_SET_CNT1_B:
        if (get_user(min_val, p) || get_user(max_val, p + 1))
        {
            return -EFAULT;
        }

        g_IrAttr.IrDevPara.Bit1Min = min_val;
        g_IrAttr.IrDevPara.Bit1Max = max_val;
        hiir_dbg("IR_IOC_SET_CNT1_B -> cnt1_b_min=%d, cnt1_b_max=%d\n", g_IrAttr.IrDevPara.Bit1Min,
                 g_IrAttr.IrDevPara.Bit1Max);
        break;
#endif
    case CMD_IR_SET_FETCH_METHOD:
    case CMD_IR_SET_PROT_ENABLE:
    case CMD_IR_SET_PROT_DISABLE:
    case CMD_IR_GET_PROT_ENABLED:
        return HI_SUCCESS;

    default:
        HI_ERR_IR("Error: Inappropriate ioctl for device. cmd=%d\n", cmd);
        up(&g_IrMutex);
        return -ENOTTY;
    }

    up(&g_IrMutex);
    return HI_SUCCESS;
}

static ssize_t IR_Read(struct file *filp, char __user *buf, size_t count, loff_t *f_pos)
{
    IR_KEY_S ReadIrKey;
    HI_U32 ReadLen = 0;
    HI_S32 Ret = 0;

    Ret = down_interruptible(&g_IrMutex);
    if (Ret)
    {
        HI_FATAL_IR("Semaphore lock is  error. \n");
        return HI_FAILURE;
    }

    while ((g_IrAttr.Head) == (g_IrAttr.Tail))
    {
        if (((filp->f_flags & O_NONBLOCK) == O_NONBLOCK) || (0 == g_IrAttr.IrBlockTime))
        {
            up(&g_IrMutex);
            HI_WARN_IR("the data buf is null.\n");
            return -EAGAIN;
        }

        if (0xffffffff == g_IrAttr.IrBlockTime)
        {
            Ret = wait_event_interruptible(g_IrAttr.IrKeyWaitQueue, (g_IrAttr.Head != g_IrAttr.Tail));
            if (Ret < 0)
            {
                up(&g_IrMutex);
                HI_ERR_IR("wait data err.\n");
                return -ERESTARTSYS;
            }
        }
        else
        {
            Ret = wait_event_interruptible_timeout(g_IrAttr.IrKeyWaitQueue,
                                                   (g_IrAttr.Head != g_IrAttr.Tail),
                                                   (long)(g_IrAttr.IrBlockTime * HZ / 1000));

            if (Ret < 0)
            {
                up(&g_IrMutex);
                HI_ERR_IR("wait data err.\n");
                return -ERESTARTSYS;
            }
            else if (0 == Ret)
            {
                up(&g_IrMutex);
                HI_WARN_IR("wait data timeout.\n");
                return HI_ERR_IR_READ_FAILED;
            }
        }
    }

    while (((g_IrAttr.Head) != (g_IrAttr.Tail)) && ((ReadLen + sizeof(IR_KEY_S)) <= count))
    {
        ReadIrKey = IR_BUF_TAIL;
        g_IrAttr.Tail = INC_BUF(g_IrAttr.Tail, g_IrAttr.IrKeyBufLen);

        if (copy_to_user((buf + ReadLen), &ReadIrKey, sizeof(IR_KEY_S)))
        {
            HI_FATAL_IR("copy data to user failed.\n");
            up(&g_IrMutex);
            return HI_FAILURE;
        }

        ReadLen += sizeof(IR_KEY_S);

        if (HI_UNF_KEY_STATUS_DOWN == ReadIrKey.IrKeyState)
        {
            HI_DRV_STAT_Event(STAT_EVENT_KEYOUT, ReadIrKey.IrKeyDataL);
        }
    }

    up(&g_IrMutex);
    return ReadLen;
}

HI_U32 IR_Select(struct file *filp, struct poll_table_struct *wait)
{
    HI_S32 Ret;

    Ret = down_interruptible(&g_IrMutex);
    if (Ret)
    {
        HI_FATAL_IR("Semaphore lock is  error. \n");
        return HI_FAILURE;
    }

    if ((g_IrAttr.Head) != (g_IrAttr.Tail))
    {
        up(&g_IrMutex);
        return 1;
    }

    poll_wait(filp, &(g_IrAttr.IrKeyWaitQueue), wait);

    up(&g_IrMutex);
    return 0;
}

HI_S32 IR_Open(struct inode *inode, struct file *filp)
{
    HI_S32 Ret;

    Ret = down_interruptible(&g_IrMutex);
    if (Ret)
    {
        HI_FATAL_IR("Semaphore lock is  error. \n");
        return HI_FAILURE;
    }

    if (1 == atomic_inc_return(&g_IrCount))
    {
        del_timer(&RepkeyTimeoutTimer);

        g_IrAttr.IrCode = HI_UNF_IR_CODE_NEC_SIMPLE;
        g_IrAttr.IrDevPara = g_IrDevPara[0];
        g_IrAttr.Head = 0;
        g_IrAttr.Tail = 0;
        g_IrAttr.IrKeyBufLen = IR_MAX_BUF;

        g_IrAttr.bKeyUp	 = HI_TRUE;
        g_IrAttr.bRepkey = HI_TRUE;
        g_IrAttr.RepkeyDelayTime = IR_DELAY_TIME;
        g_IrAttr.IrBlockTime = 0xffffffff;

        g_IrAttr.bCheckRepkey = HI_FALSE;
        g_IrAttr.bReleseInt = HI_TRUE;
        init_waitqueue_head(&g_IrAttr.IrKeyWaitQueue);

        WRITE_REG(IR_ENABLE, 0x01);
        IR_Config();

        g_IrAttr.bEnable = HI_TRUE;

        Ret = request_irq(IR_IRQ_NO, (irq_handler_t)Ir_Isr, IRQF_DISABLED, "hi_ir_std_irq", HI_NULL);
        if (Ret != HI_SUCCESS)
        {
            HI_FATAL_IR("register IR INT failed 0x%x.\n", Ret);
            atomic_dec(&g_IrCount);
            up(&g_IrMutex);
            return HI_FAILURE;
        }
    }

    up(&g_IrMutex);
    return 0;
}

HI_S32 IR_Close(struct inode *inode, struct file *filp)
{
    HI_S32 Ret;

    Ret = down_interruptible(&g_IrMutex);
    if (Ret)
    {
        HI_FATAL_IR("Semaphore lock is  error. \n");
        return HI_FAILURE;
    }

    if (atomic_dec_and_test(&g_IrCount))
    {
        free_irq(IR_IRQ_NO, HI_NULL);

        del_timer(&RepkeyTimeoutTimer);

        WRITE_REG(IR_ENABLE, 0x00);
    }

    up(&g_IrMutex);

    return 0;
}

static int IR_Write(struct file *filp, const char __user *buf, size_t count, loff_t *f_pos)
{
    return 0;
}

static struct file_operations IR_FOPS =
{
    owner   : THIS_MODULE,
    open    : IR_Open,
    unlocked_ioctl   : Ir_Ioctl,
    poll    : IR_Select,
    read    : IR_Read,
    write   : IR_Write,
    release : IR_Close,
};

/*****************************************************************************
                                    power down
*****************************************************************************/
#if 0
HI_VOID IR_Suspend(HI_VOID)
{
    // stop ir
    WRITE_REG(IR_ENABLE, 0x00);

    // clear key buffer
    WRITE_REG(IR_INTM, 0x0f);
    g_IrAttr.Head = 0;
    g_IrAttr.Tail = 0;
    g_IrAttr.bCheckRepkey = 0;
    WRITE_REG(IR_INTM, 0x00);
    del_timer(&RepkeyTimeoutTimer);
}

HI_VOID IR_Resume(HI_VOID)
{
    // restart ir
    WRITE_REG(IR_ENABLE, 0x01);
    IR_Config();
}

#else
static int ir_suspend (PM_BASEDEV_S *pdev, pm_message_t state)
{
    HI_FATAL_IR("ir_suspend ok \n");
    return 0;
}

static int ir_resume(PM_BASEDEV_S *pdev)
{
    //enable
    //config

    if (0 != atomic_read(&g_IrCount))
    {
        WRITE_REG(IR_ENABLE, 0x01);
        IR_Config();
    }

    HI_FATAL_IR("ir_resume ok \n");
    return 0;
}

static PM_BASEOPS_S ir_baseOps = {
    .probe	= NULL,
    .remove = NULL,
    .shutdown = NULL,
    .prepare  = NULL,
    .complete = NULL,
    .suspend  = ir_suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume		  = ir_resume
};

#endif

HI_S32 IR_DRV_ModInit(HI_VOID)
{
    DRV_PROC_ITEM_S *pProcItem;

    (HI_VOID)HI_DRV_MODULE_Register(HI_ID_IR, "HI_IR", HI_NULL);

    sprintf(g_IrRegisterData.devfs_name, UMAP_DEVNAME_IR);
    g_IrRegisterData.minor	= UMAP_MIN_MINOR_IR;
    g_IrRegisterData.owner	= THIS_MODULE;
    g_IrRegisterData.fops	= &IR_FOPS;
    g_IrRegisterData.drvops = &ir_baseOps;

    if (HI_DRV_DEV_Register(&g_IrRegisterData) < 0)
    {
        HI_FATAL_IR("register IR failed.\n");
        return HI_FAILURE;
    }

    pProcItem = HI_DRV_PROC_AddModule(HI_MOD_IR, HI_NULL, HI_NULL);
    if (!pProcItem)
    {
        HI_FATAL_IR("add IR proc failed.\n");
        HI_DRV_DEV_UnRegister(&g_IrRegisterData);
        return HI_FAILURE;
    }

    pProcItem->read	 = IR_ProcRead;
    pProcItem->write = IR_ProcWrite;

#ifdef MODULE
    HI_PRINT("Load hi_ir.ko success.  \t(%s)\n", VERSION_STRING);
#endif

    return 0;
}

HI_VOID IR_DRV_ModExit(HI_VOID)
{
    HI_DRV_PROC_RemoveModule(HI_MOD_IR);
    HI_DRV_DEV_UnRegister(&g_IrRegisterData);
    HI_DRV_MODULE_UnRegister(HI_ID_IR);

    return;
}

#ifdef MODULE
module_init(IR_DRV_ModInit);
module_exit(IR_DRV_ModExit);
#endif
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("HISILICON");
