		
#include <linux/init.h>
#include <linux/module.h>
#include <linux/moduleparam.h>

/*
#include <linux/kernel.h>
#include <linux/types.h>
#include <linux/compiler.h>
#include <linux/slab.h>
#include <linux/delay.h>
#include <linux/in.h>
#include <linux/ioport.h>
#include <linux/version.h>
*/

#include "imedia_kernel.h"
#include "imedia_common.h"
#include "imedia_viddec.h"
#include "imedia_error.h"
#include "imedia_util.h"

MODULE_AUTHOR("Jack Song(songxg@huawei.com)");
MODULE_DESCRIPTION("iMedia TEST");
MODULE_LICENSE("Dual BSD/GPL");
MODULE_VERSION("1.1");
/*MODULE_FIRMWARE(FIRMWARE_TG3);*/

IMEDIA_CODEC_CTX g_pctx = 0;
void *g_pmem = 0;
int g_width = 352;
int g_height = 288;
int g_bufcount = 3;

char *mode = "huawei";
int tuner[4] = {1, 0, 1, 0};
int tuner_c = 1;

module_param(g_width, int, 0644);
module_param(g_height, int, 0644);
module_param(g_bufcount, int, 0644);

module_param(mode, charp, 0644);
module_param_array(tuner, int, &tuner_c, 0644);

#if 0
struct file_operations hwmedia_fops = {
	.owner = THIS_MODULE,
};

static int hwmedia_major;
#endif

static int imedia_init(void)
{
    int iRet = 0;
#if 1    
    STRU_IVIDDEC_STREAM stInArgs;
    STRU_IVIDDEC_MEMORY_INFO memPar;
    STRU_IVIDDEC_PARAMS stParam;
    int codec_id = IVIDEO_CODEC_H263;
    int buf_size = 0;
#endif    
    //printk(KERN_ALERT "iMedia ko init debug=%d mode=%s turner=%d,%d,%d,%d\n",
    //	debug, mode, tuner[0], tuner[1], tuner[2], tuner[3]);
#if 0    
    /*iMedia_Viddec_init();*/
    hwmedia_major = register_chrdev(0,"hwmediadev",&hwmedia_fops);
    if(hwmedia_major <= 0)
    {
    	printk(KERN_INFO"Fail to register char device hwmediadev\n");	
    	return -1;
    }
#endif   

#if 1 
    memPar.usWidth = g_width;
    memPar.usHeight = g_height;
    memPar.usBufNum = g_bufcount;
    memPar.eColorFormat = IVIDEO_CSP_IYUV;
    iRet = IMedia_Viddec_QueryMemSize(codec_id, &memPar, &buf_size);
    printk(KERN_INFO "IMedia_Viddec_QueryMemSize(codec=%d, w=%d, h=%d, count=%d, size=%d) = %d\n", 
    	codec_id, memPar.usWidth, memPar.usHeight, memPar.usBufNum, buf_size, iRet);
    
    g_pmem = kmalloc(buf_size, GFP_KERNEL);
    printk(KERN_INFO "kmalloc(%d, GFP_KERNEL) = %p\n", buf_size, g_pmem);
    //if (0 == g_pmem)
    //	return -1;
    
    stParam.usMaxWidth = memPar.usWidth;
    stParam.usMaxHeight = memPar.usHeight;
    stParam.usMaxFrameBufNum = memPar.usBufNum;
    stParam.usMaxRefFrame = 1;
    stParam.eColorSpaceType = memPar.eColorFormat;
    stParam.iFlags = 0;
    stParam.bForceOutYUV420Flag = 0;
    stParam.pucBuf = g_pmem;
    stParam.iBufLength = buf_size;
    iRet = IMedia_Viddec_Create(codec_id, &stParam, &g_pctx);
    printk(KERN_INFO "IMedia_Viddec_Create(ctx=%p) = %d\n", g_pctx, iRet);
    //if (0 == g_pctx)
    //    return -2;
    
    iRet = IMedia_Viddec_FrameParse(g_pctx, 0, 0);
    printk(KERN_INFO "IMedia_Viddec_FrameParse(ctx=%p) = %d\n", g_pctx, iRet);
    
    iRet = IMedia_Viddec_FrameDecode(g_pctx, 0, 0);
    printk(KERN_INFO "IMedia_Viddec_FrameDecode(ctx=%p) = %d\n", g_pctx, iRet);
    
    iRet = IMedia_Viddec_Control(g_pctx, IMEDIA_PICTURE_RELEASE, 0, 0);
    printk(KERN_INFO "IMedia_Viddec_Control(ctx=%p, IMEDIA_PICTURE_RELEASE) = %d\n", g_pctx, iRet);
#endif 
    printk(KERN_INFO"iMedia ko init\n");
    return 0;
}

static void imedia_exit(void)
{
    int iRet = 0;
#if 1    
    /*iMedia_Viddec_exit();*/
    if (0 != g_pctx)
    {
    	printk(KERN_INFO "IMedia_Viddec_Delete(%p)\n", g_pctx);
    	iRet = IMedia_Viddec_Delete(g_pctx);
    	g_pctx = 0;
    }
    
    if (0 != g_pmem)
    {
    	kfree(g_pmem);
    	printk(KERN_INFO "kfree(%p)\n", g_pmem);
    	g_pmem = 0;
    }
#endif    
#if 0    
    unregister_chrdev(hwmedia_major);
#endif    
    printk(KERN_ALERT "iMedia ko exit\n");
    
    return;
}

module_init(imedia_init);
module_exit(imedia_exit);
