#include "vpss_osal.h"
#include <linux/wait.h>
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

/************************************************************************/
/* file operation                                                       */
/************************************************************************/

struct file *VPSS_OSAL_fopen(const char *filename, int flags, int mode)
{
        struct file *filp = filp_open(filename, flags, mode);
        return (IS_ERR(filp)) ? NULL : filp;
}

void VPSS_OSAL_fclose(struct file *filp)
{
        if (filp)
            filp_close(filp, NULL);
}

int VPSS_OSAL_fread(char *buf, unsigned int len, struct file *filp)
{
        int readlen;
        mm_segment_t oldfs;

        if (filp == NULL)
                return -ENOENT;
        if (filp->f_op->read == NULL)
                return -ENOSYS;
        if (((filp->f_flags & O_ACCMODE) & (O_RDONLY | O_RDWR)) == 0)
                return -EACCES;
        oldfs = get_fs();
        set_fs(KERNEL_DS);
        readlen = filp->f_op->read(filp, buf, len, &filp->f_pos);
        set_fs(oldfs);

        return readlen;
}

int VPSS_OSAL_fwrite(char *buf, int len, struct file *filp)
{
        int writelen;
        mm_segment_t oldfs;

        if (filp == NULL)
                return -ENOENT;
        if (filp->f_op->write == NULL)
                return -ENOSYS;
        if (((filp->f_flags & O_ACCMODE) & (O_WRONLY | O_RDWR)) == 0)
                return -EACCES;
        oldfs = get_fs();
        set_fs(KERNEL_DS);
        writelen = filp->f_op->write(filp, buf, len, &filp->f_pos);
        set_fs(oldfs);

        return writelen;
}


/************************************************************************/
/* event operation                                                      */
/************************************************************************/
HI_S32 VPSS_OSAL_InitEvent( OSAL_EVENT *pEvent, HI_S32 InitVal1, HI_S32 InitVal2)
{
    pEvent->flag_1 = InitVal1;
    pEvent->flag_2 = InitVal2;
    init_waitqueue_head( &(pEvent->queue_head) );	
    return OSAL_OK;
}

HI_S32 VPSS_OSAL_GiveEvent( OSAL_EVENT *pEvent, HI_S32 InitVal1, HI_S32 InitVal2)
{
    pEvent->flag_1 = InitVal1;
    pEvent->flag_2 = InitVal2;
    
    wake_up(&(pEvent->queue_head));
	return OSAL_OK;
}

HI_S32 VPSS_OSAL_WaitEvent( OSAL_EVENT *pEvent, HI_S32 s32WaitTime )
{
	int l_ret;
    long unsigned int time;
    time = jiffies;
    l_ret = wait_event_timeout( pEvent->queue_head, 
                                (pEvent->flag_1 != 0 || pEvent->flag_2 != 0), 
                                s32WaitTime );
    if(l_ret == 0 
       || pEvent->flag_2 == 1
       || l_ret < 0)
    {
        return OSAL_ERR;
    }
    else
    {   
        return OSAL_OK;
    }
}

HI_S32 VPSS_OSAL_ResetEvent( OSAL_EVENT *pEvent, HI_S32 InitVal1, HI_S32 InitVal2)
{
    pEvent->flag_1 = InitVal1;
    pEvent->flag_2 = InitVal2;
    
    return OSAL_OK;
}


/************************************************************************/
/* mutux lock operation                                                 */
/************************************************************************/
HI_S32 VPSS_OSAL_InitLOCK(VPSS_OSAL_LOCK *pLock, HI_U32 u32InitVal)
{
    sema_init(pLock,u32InitVal);
    return HI_SUCCESS;
}

HI_S32 VPSS_OSAL_DownLock(VPSS_OSAL_LOCK *pLock)
{
    HI_S32 s32Ret;
    s32Ret = down_interruptible(pLock);

    if (s32Ret < 0) 
    {
		return HI_FAILURE;
	}
    else if (s32Ret == 0)
    {
        return HI_SUCCESS;
    }
    else
    {
        VPSS_FATAL("DownLock Error! ret = %d\n",s32Ret);
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}

HI_S32 VPSS_OSAL_TryLock(VPSS_OSAL_LOCK *pLock)
{
    HI_S32 s32Ret;
    s32Ret = down_trylock(pLock);
    if (s32Ret == 0)
    {
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}

HI_S32 VPSS_OSAL_UpLock(VPSS_OSAL_LOCK *pLock)
{
    up(pLock);
    return HI_SUCCESS;
}



/************************************************************************/
/* spin lock operation                                                  */
/************************************************************************/
HI_S32 VPSS_OSAL_InitSpin(VPSS_OSAL_SPIN *pLock, HI_U32 u32InitVal)
{
    if(u32InitVal == 1)
    {
        spin_lock_init(&(pLock->irq_lock));
        pLock->isInit = HI_TRUE;
    }
    else
    {
        VPSS_FATAL("DownSpin Error\n");
    }
	return HI_SUCCESS;
}

HI_S32 VPSS_OSAL_DownSpin(VPSS_OSAL_SPIN *pLock)
{
    if(pLock->isInit == HI_TRUE)
	{
	    spin_lock_irqsave(&(pLock->irq_lock), pLock->irq_lockflags);
    }
    else
    {
        VPSS_FATAL("DownSpin Error\n");
    }
    return HI_SUCCESS;
}

HI_S32 VPSS_OSAL_UpSpin(VPSS_OSAL_SPIN *pLock)
{
    spin_unlock_irqrestore(&(pLock->irq_lock), pLock->irq_lockflags);

    return HI_SUCCESS;
}

HI_S32 VPSS_OSAL_TryLockSpin(VPSS_OSAL_SPIN *pLock)
{
   if(spin_trylock_irqsave(&(pLock->irq_lock), pLock->irq_lockflags))
   {
        return HI_SUCCESS;
   }
   else
   {
        return HI_FAILURE;
   }
}

/************************************************************************/
/* debug operation                                                      */
/************************************************************************/
HI_S32 VPSS_OSAL_GetProcArg(HI_CHAR*  chCmd,HI_CHAR*  chArg,HI_U32 u32ArgIdx)
{
    HI_U32 u32Count;
    HI_U32 u32CmdCount;
    HI_U32 u32LogCount;
    HI_U32 u32NewFlag;
    HI_CHAR chArg1[DEF_FILE_NAMELENGTH] = {0};
    HI_CHAR chArg2[DEF_FILE_NAMELENGTH] = {0};
    HI_CHAR chArg3[DEF_FILE_NAMELENGTH] = {0};
    u32CmdCount = 0;

    /*clear empty space*/
    u32Count = 0;
    u32CmdCount = 0;
    u32LogCount = 1;
    u32NewFlag = 0;
    while(chCmd[u32Count] != 0 && chCmd[u32Count] != '\n' )
    {
        if (chCmd[u32Count] != ' ')
        {
            u32NewFlag = 1;
        }
        else
        {
            if(u32NewFlag == 1)
            {
                u32LogCount++;
                u32CmdCount= 0;
                u32NewFlag = 0;
            }
        }
        
        if (u32NewFlag == 1)
        {
            switch(u32LogCount)
            {
                case 1:
                    chArg1[u32CmdCount] = chCmd[u32Count];
                    u32CmdCount++;
                    break;
                case 2:
                    chArg2[u32CmdCount] = chCmd[u32Count];
                    u32CmdCount++;
                    break;
                case 3:
                    chArg3[u32CmdCount] = chCmd[u32Count];
                    u32CmdCount++;
                    break;
                default:
                    break;
            }
            
        }
        u32Count++;
    }
    
    switch(u32ArgIdx)
    {
        case 1:
            memcpy(chArg,chArg1,sizeof(HI_CHAR)*DEF_FILE_NAMELENGTH);
            break;
        case 2:
            memcpy(chArg,chArg2,sizeof(HI_CHAR)*DEF_FILE_NAMELENGTH);
            break;
        case 3:
            memcpy(chArg,chArg3,sizeof(HI_CHAR)*DEF_FILE_NAMELENGTH);
            break;
        default:
            break;
    }
    return HI_SUCCESS;
}


HI_S32 VPSS_OSAL_ParseCmd(HI_CHAR*  chArg1,HI_CHAR*  chArg2,HI_CHAR*  chArg3,HI_VOID *pstCmd)
{
    return HI_SUCCESS;
}

HI_S32 VPSS_OSAL_StrToNumb(HI_CHAR*  chStr,HI_U32 *pu32Numb)
{
    HI_U32 u32Count = 0;
    HI_U32 u32RetNumb = 0;
    
    while(chStr[u32Count] != 0)
    {
        u32RetNumb = u32RetNumb*10 + chStr[u32Count] - '0';
        u32Count++;
    }

    *pu32Numb = u32RetNumb;

    return HI_SUCCESS;
}


HI_S32 VPSS_OSAL_WRITEYUV(HI_DRV_VIDEO_FRAME_S *pstFrame,HI_CHAR* pchFile)
{
	char str[50] = {0};
	unsigned char *ptr;
	FILE *fp;
    HI_U8 *pu8Udata;
    HI_U8 *pu8Vdata;
    HI_U8 *pu8Ydata;
    HI_S8  s_VpssSavePath[DEF_FILE_NAMELENGTH];
    HI_U32 i,j;
    
    HI_DRV_LOG_GetStorePath(s_VpssSavePath, DEF_FILE_NAMELENGTH);
    HI_OSAL_Snprintf(str, 50, "%s/%s", s_VpssSavePath,pchFile);

    if (pstFrame->ePixFormat == HI_DRV_PIX_FMT_NV21
        || pstFrame->ePixFormat == HI_DRV_PIX_FMT_NV12)
    {
        pu8Udata = VPSS_VMALLOC(pstFrame->u32Width * pstFrame->u32Height / 2 /2);
        if (pu8Udata == HI_NULL)
        {
            return HI_FAILURE;
        }
        pu8Vdata = VPSS_VMALLOC(pstFrame->u32Width * pstFrame->u32Height / 2 /2);
        if (pu8Vdata == HI_NULL)
        {
            VPSS_VFREE(pu8Udata);
            return HI_FAILURE;
        }
        pu8Ydata = VPSS_VMALLOC(pstFrame->stBufAddr[0].u32Stride_Y);
        if (pu8Ydata == HI_NULL)
        {
            VPSS_VFREE(pu8Udata);
            VPSS_VFREE(pu8Vdata);
            return HI_FAILURE;
        }
        
        ptr = (unsigned char *)phys_to_virt(pstFrame->stBufAddr[0].u32PhyAddr_Y);
        
    	if (!ptr)
    	{
            VPSS_FATAL("address is not valid!\n");
    	}
    	else
    	{   
            fp = VPSS_OSAL_fopen(str, O_RDWR | O_CREAT|O_APPEND, 0);

            if (fp == HI_NULL)
            {
                VPSS_FATAL("open file '%s' fail!\n", str);
                VPSS_VFREE(pu8Udata);
                VPSS_VFREE(pu8Vdata);
                VPSS_VFREE(pu8Ydata);
                return HI_FAILURE;
            }
            
            /*write Y data*/
            for (i=0; i<pstFrame->u32Height; i++)
            {
                memcpy(pu8Ydata,ptr,sizeof(HI_U8)*pstFrame->stBufAddr[0].u32Stride_Y);

                if(pstFrame->u32Width != VPSS_OSAL_fwrite(pu8Ydata,pstFrame->u32Width, fp))
          	    {
                    VPSS_FATAL("line %d: fwrite fail!\n",__LINE__);
                }
                ptr += pstFrame->stBufAddr[0].u32Stride_Y;
            }
            
            ptr = (unsigned char *)phys_to_virt(pstFrame->stBufAddr[0].u32PhyAddr_C);
            /*write UV data */
            for (i=0; i<pstFrame->u32Height/2; i++)
            {
                for (j=0; j<pstFrame->u32Width/2; j++)
                {
                    if(pstFrame->ePixFormat == HI_DRV_PIX_FMT_NV21)
                    {
                        pu8Vdata[i*pstFrame->u32Width/2+j] = ptr[2*j];
                        pu8Udata[i*pstFrame->u32Width/2+j] = ptr[2*j+1];
                    }
                    else
                    {
                        pu8Udata[i*pstFrame->u32Width/2+j] = ptr[2*j];
                        pu8Vdata[i*pstFrame->u32Width/2+j] = ptr[2*j+1];
                    }
                }
                ptr += pstFrame->stBufAddr[0].u32Stride_C;
            }
            VPSS_OSAL_fwrite(pu8Udata, pstFrame->u32Width * pstFrame->u32Height / 2 /2, fp);

            VPSS_OSAL_fwrite(pu8Vdata, pstFrame->u32Width * pstFrame->u32Height / 2 /2, fp);
            

            VPSS_OSAL_fclose(fp);
            VPSS_FATAL("2d image has been saved to '%s' W=%d H=%d Format=%d \n", 
                        str,pstFrame->u32Width,pstFrame->u32Height,pstFrame->ePixFormat);

            
    	}
        VPSS_VFREE(pu8Udata);
        VPSS_VFREE(pu8Vdata);
        VPSS_VFREE(pu8Ydata);
    }
    else if (pstFrame->ePixFormat == HI_DRV_PIX_FMT_NV21_TILE
            || pstFrame->ePixFormat == HI_DRV_PIX_FMT_NV12_TILE)
    {
        HI_U8 *s8YuvArray;
        HI_U8 *s8UArray;
        HI_U8 *s8VArray;
        HI_U8 *dst;
        HI_U8 *src;
        HI_U8 *tmp;
        HI_U32 Stride;
        HI_U8 *Caddress ;	
        s8YuvArray = VPSS_VMALLOC(pstFrame->u32Width * pstFrame->u32Height);
        if (HI_NULL == s8YuvArray)
        {
    		return HI_FAILURE;
        }
    	s8UArray = VPSS_VMALLOC(pstFrame->u32Width * pstFrame->u32Height / 2);
        if (HI_NULL == s8UArray)
        {
            VPSS_VFREE(s8YuvArray);
    		return HI_FAILURE;
        }
    	s8VArray = VPSS_VMALLOC(pstFrame->u32Width * pstFrame->u32Height / 2);
        if (HI_NULL == s8VArray)
        {
            VPSS_VFREE(s8YuvArray);
            VPSS_VFREE(s8UArray);
    		return HI_FAILURE;
        }

        fp = VPSS_OSAL_fopen(str, O_RDWR | O_CREAT|O_APPEND, 0);
        if (fp == HI_NULL)
        {
            VPSS_FATAL("open file '%s' fail!\n", str);
            VPSS_VFREE(s8YuvArray);
            VPSS_VFREE(s8UArray);
            VPSS_VFREE(s8VArray);
            return HI_FAILURE;
        }
        Stride = ((pstFrame->u32Width + (64*4 -1))&(~(64*4 -1)))*16;
        for(i=0;i<pstFrame->u32Height;i++)
        {
            for(j=0;j<pstFrame->u32Width;j+=256)
            {
                dst  = (unsigned char*)(s8YuvArray+ pstFrame->u32Width*i + j);
                src =  (unsigned char*)phys_to_virt(pstFrame->stBufAddr[0].u32PhyAddr_Y) + Stride*(i/16)+(i%16)*256 + (j/256)*256*16;
        	    memcpy(dst,src,256);
            }
        }
        VPSS_OSAL_fwrite(s8YuvArray,pstFrame->u32Width*pstFrame->u32Height, fp);        
         
        Caddress = phys_to_virt(pstFrame->stBufAddr[0].u32PhyAddr_Y) + ((pstFrame->u32Width + (64*4 -1))&(~(64*4 -1)))*((pstFrame->u32Height + 31)/32)*32
                + ((pstFrame->u32Width  + 127) / 128 + 15) / 16 * 16*((pstFrame->u32Height + 31)/32)*32;
        for(i=0;i<pstFrame->u32Height/2;i++)
        {
            for(j=0;j<pstFrame->u32Width;j+=256)
            {
               dst  = (unsigned char*)(s8YuvArray + pstFrame->u32Width*i + j);
               src =  (unsigned char*)Caddress + (Stride/2)*(i/8)+(i%8)*256 +  (j/256)*256*8;
        	   memcpy(dst,src,256);
            }
        }
        tmp = s8YuvArray;
        for (i=0;i<pstFrame->u32Height/2;i++)
        {
            for (j=0;j<pstFrame->u32Width/2;j++)
            {
                s8VArray[i*pstFrame->u32Width/2+j] = tmp[2*j];
                s8UArray[i*pstFrame->u32Width/2+j] = tmp[2*j+1];
            }
            tmp+= pstFrame->u32Width;
        }
        VPSS_OSAL_fwrite(s8UArray,pstFrame->u32Width*pstFrame->u32Height/4, fp);     
        VPSS_OSAL_fwrite(s8VArray,pstFrame->u32Width*pstFrame->u32Height/4, fp);      
       
		VPSS_OSAL_fclose(fp);
        VPSS_FATAL("Tile image has been saved to '%s' W=%d H=%d Format=%d \n", 
                    str,pstFrame->u32Width,pstFrame->u32Height,pstFrame->ePixFormat);
        VPSS_VFREE(s8YuvArray);
        VPSS_VFREE(s8UArray);
        VPSS_VFREE(s8VArray);
	}   
	else if (pstFrame->ePixFormat == HI_DRV_PIX_FMT_NV61_2X1
            || pstFrame->ePixFormat == HI_DRV_PIX_FMT_NV16_2X1)
    {
        pu8Udata = VPSS_VMALLOC(pstFrame->u32Width * pstFrame->u32Height / 2 );
        if (pu8Udata == HI_NULL)
        {
            return HI_FAILURE;
        }
        pu8Vdata = VPSS_VMALLOC(pstFrame->u32Width * pstFrame->u32Height / 2 );
        if (pu8Vdata == HI_NULL)
        {
            VPSS_VFREE(pu8Udata);
            return HI_FAILURE;
        }
        pu8Ydata = VPSS_VMALLOC(pstFrame->stBufAddr[0].u32Stride_Y);
        if (pu8Ydata == HI_NULL)
        {
            VPSS_VFREE(pu8Udata);
            VPSS_VFREE(pu8Vdata);
            return HI_FAILURE;
        }
        
        ptr = (unsigned char *)phys_to_virt(pstFrame->stBufAddr[0].u32PhyAddr_Y);
        
    	if (!ptr)
    	{
            VPSS_FATAL("address is not valid!\n");
    	}
    	else
    	{   

            fp = VPSS_OSAL_fopen(str, O_RDWR | O_CREAT|O_APPEND, 0);

            if (fp == HI_NULL)
            {
                VPSS_FATAL("open file '%s' fail!\n", str);
                VPSS_VFREE(pu8Udata);
                VPSS_VFREE(pu8Vdata);
                VPSS_VFREE(pu8Ydata);
                return HI_FAILURE;
            }
            
            /*write Y data*/
            for (i=0; i<pstFrame->u32Height; i++)
            {
                memcpy(pu8Ydata,ptr,sizeof(HI_U8)*pstFrame->stBufAddr[0].u32Stride_Y);

                if(pstFrame->u32Width != VPSS_OSAL_fwrite(pu8Ydata,pstFrame->u32Width, fp))
          	    {
                    VPSS_FATAL("line %d: fwrite fail!\n",__LINE__);
                }
                ptr += pstFrame->stBufAddr[0].u32Stride_Y;
            }
            
            ptr = (unsigned char *)phys_to_virt(pstFrame->stBufAddr[0].u32PhyAddr_C);
            /*write UV data */
            for (i=0; i<pstFrame->u32Height; i++)
            {
                for (j=0; j<pstFrame->u32Width/2; j++)
                {
                    if(pstFrame->ePixFormat == HI_DRV_PIX_FMT_NV61_2X1)
                    {
                        pu8Vdata[i*pstFrame->u32Width/2+j] = ptr[2*j];
                        pu8Udata[i*pstFrame->u32Width/2+j] = ptr[2*j+1];
                    }
                    else
                    {
                        pu8Udata[i*pstFrame->u32Width/2+j] = ptr[2*j];
                        pu8Vdata[i*pstFrame->u32Width/2+j] = ptr[2*j+1];
                    }
                }
                ptr += pstFrame->stBufAddr[0].u32Stride_C;
            }
            VPSS_OSAL_fwrite(pu8Udata, pstFrame->u32Width * pstFrame->u32Height  /2, fp);

            VPSS_OSAL_fwrite(pu8Vdata, pstFrame->u32Width * pstFrame->u32Height  /2, fp);
            

            VPSS_OSAL_fclose(fp);
            VPSS_FATAL("2d image has been saved to '%s' W=%d H=%d Format=%d \n", 
                        str,pstFrame->u32Width,pstFrame->u32Height,pstFrame->ePixFormat);
            
    	}
        VPSS_VFREE(pu8Udata);
        VPSS_VFREE(pu8Vdata);
        VPSS_VFREE(pu8Ydata);
    }
    else
    {
        VPSS_FATAL("PixFormat %d can't saveyuv\n",pstFrame->ePixFormat);
    }
    
    return HI_SUCCESS;
}
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */
