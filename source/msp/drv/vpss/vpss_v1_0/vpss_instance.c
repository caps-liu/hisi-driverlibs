#include "vpss_instance.h"
#include "vpss_alg.h"
#include "vpss_common.h"
#include "hi_drv_stat.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif
#define SAVEYUV 0
#define IMAGEINFO 0

HI_U32 VPSS_INST_AddEmptyImage(VPSS_INSTANCE_S *pstInstance,
                                VPSS_IMAGE_NODE_S *pstUndoImage)
{
    VPSS_IMAGELIST_INFO_S *pstImageList;

    pstImageList = &(pstInstance->stSrcImagesList);

    VPSS_OSAL_DownLock(&(pstImageList->stEmptyListLock));
    list_add_tail(&(pstUndoImage->node), &(pstImageList->stEmptyImageList));
    VPSS_OSAL_UpLock(&(pstImageList->stEmptyListLock));

    return HI_SUCCESS;
}
HI_S32 VPSS_INST_RelImageBuf(VPSS_INSTANCE_S *pstInstance,VPSS_IMAGE_NODE_S *pstDoneImageNode)
{
    HI_S32 s32Ret;
    VPSS_IMAGELIST_INFO_S *pstImageList;
    HI_BOOL bNeedRls = HI_FALSE;
    
    pstImageList = &(pstInstance->stSrcImagesList);
    
    if(pstDoneImageNode->stSrcImage.bProgressive == HI_FALSE)
    {
        if(pstDoneImageNode->stSrcImage.enFieldMode == HI_DRV_FIELD_TOP
            && pstDoneImageNode->stSrcImage.bTopFieldFirst == HI_FALSE)
        {
            bNeedRls = HI_TRUE;
        }

        if(pstDoneImageNode->stSrcImage.enFieldMode == HI_DRV_FIELD_BOTTOM
            && pstDoneImageNode->stSrcImage.bTopFieldFirst == HI_TRUE)
        {
            bNeedRls = HI_TRUE;
        }
    }
    else
    {
        bNeedRls = HI_TRUE;
    }

    if (bNeedRls == HI_TRUE)
    {
        pstImageList->u32RelUsrTotal ++;
        if(pstInstance->stSrcFuncs.VPSS_REL_SRCIMAGE != HI_NULL)
        {
            s32Ret = pstInstance->stSrcFuncs.VPSS_REL_SRCIMAGE(pstInstance->ID,
                                        &(pstDoneImageNode->stSrcImage));
        }
        else
        {
            s32Ret = HI_FAILURE;
        }
        
        if (s32Ret == HI_SUCCESS)
        {
            pstImageList->u32RelUsrSuccess++;
        }
    }

    VPSS_INST_AddEmptyImage(pstInstance,pstDoneImageNode);

    return HI_SUCCESS;
}

HI_S32 VPSS_INST_RelDoneImage(VPSS_INSTANCE_S *pstInstance)
{
    VPSS_IMAGELIST_INFO_S *pstImageList;
    VPSS_IMAGE_NODE_S *pstDoneImageNode;
    VPSS_IMAGE_NODE_S *pstNextImageNode;
    HI_BOOL bProgressive;
    LIST *pos, *n, *head;
    
    pstImageList = &(pstInstance->stSrcImagesList);
    pstDoneImageNode = HI_NULL;
    bProgressive = HI_FALSE;

    /*
      *  release done image according to fieldmode
      *  Progressive:not related to pre field ,target_1 can be released
      *  Interlace: related to pre field,target_1->pre can be released
     */
    if(pstImageList->pstTarget_1->next != &(pstImageList->stFulImageList))
    {
        pstDoneImageNode = list_entry((pstImageList->pstTarget_1->next),
                                VPSS_IMAGE_NODE_S, node);
        bProgressive = pstDoneImageNode->stSrcImage.bProgressive;
    }
    else
    {
        VPSS_FATAL("RelDoneImage Error\n");
        return HI_FAILURE;
    }

    /*
      * progressive image process
     */
    pstDoneImageNode = HI_NULL;
    if (bProgressive == HI_TRUE)
    {
        head = &(pstImageList->stFulImageList);
            
        /*
           * if progressive,release all before image 
           */
        for (pos = (head)->next, n = pos->next; pos != (pstImageList->pstTarget_1)->next; 
	        pos = n, n = pos->next)
	    {
            pstDoneImageNode = list_entry(pos,
                            VPSS_IMAGE_NODE_S, node);
            if (pos == pstImageList->pstTarget_1)
            {
                pstImageList->pstTarget_1 = pstImageList->pstTarget_1->prev;
            }
            list_del_init(&(pstDoneImageNode->node));
            
            VPSS_INST_RelImageBuf(pstInstance, pstDoneImageNode);
	    }
	    
        if(pstImageList->pstTarget_1->next != &(pstImageList->stFulImageList))
        {
            pstDoneImageNode = list_entry((pstImageList->pstTarget_1->next),
                                VPSS_IMAGE_NODE_S, node);
            
            /*P -> I*/
            if (pstImageList->pstTarget_1->next->next 
                    != &(pstImageList->stFulImageList))
            {
                pstNextImageNode = list_entry(
                            (pstImageList->pstTarget_1->next->next),
                            VPSS_IMAGE_NODE_S, node);
                if (pstNextImageNode->stSrcImage.u32FrameIndex
                    == pstDoneImageNode->stSrcImage.u32FrameIndex)
                {
                    pstDoneImageNode->stSrcImage.bProgressive = HI_FALSE;
                    pstImageList->pstTarget_1 = pstImageList->pstTarget_1->next;
                }
                else
                {
                    if (pstDoneImageNode->stSrcImage.bProgressive == HI_FALSE)
                    {
                        pstDoneImageNode->stSrcImage.bProgressive = HI_TRUE;
                    }
                    
                    list_del_init(&(pstDoneImageNode->node));
                    VPSS_INST_RelImageBuf(pstInstance, pstDoneImageNode);
                }
                
            }
            else
            {
                list_del_init(&(pstDoneImageNode->node));
                VPSS_INST_RelImageBuf(pstInstance, pstDoneImageNode);
            }
        }
        else
        {

        }
    }
    else
    {
        switch(pstInstance->stProcCtrl.eDEI)
        {
            case HI_DRV_VPSS_DIE_5FIELD:
            case HI_DRV_VPSS_DIE_4FIELD:
            case HI_DRV_VPSS_DIE_3FIELD:
                /*
                    *release target_1->prev
                    */
                if(pstImageList->pstTarget_1 != &(pstImageList->stFulImageList))
                {
                    pstDoneImageNode = list_entry((pstImageList->pstTarget_1),
                                VPSS_IMAGE_NODE_S, node);
                    pstImageList->pstTarget_1 = pstImageList->pstTarget_1->prev;
                    list_del_init(&(pstDoneImageNode->node));
                 
                    VPSS_INST_RelImageBuf(pstInstance, pstDoneImageNode);
                    pstImageList->pstTarget_1 = pstImageList->pstTarget_1->next;
                }
                else
                {
                    
                }
                break;
            default:
                break;
        }
    }
   
    return HI_SUCCESS;
}

/*
* user active release image interface
*/
HI_S32 VPSS_INST_DelDoneImage(VPSS_INSTANCE_S *pstInstance,
                                HI_DRV_VIDEO_FRAME_S *pstImage)
{
    VPSS_IMAGELIST_INFO_S *pstImageList;
    VPSS_IMAGE_NODE_S *pstDoneImageNode;
    
    pstImageList = &(pstInstance->stSrcImagesList);

    /*
        release first done image
     */
    VPSS_OSAL_DownLock(&(pstImageList->stFulListLock));

    if((pstImageList->stFulImageList.next != pstImageList->pstTarget_1->next))
    {
        pstDoneImageNode = list_entry((pstImageList->stFulImageList.next),
                            VPSS_IMAGE_NODE_S, node);
        
        if(&(pstDoneImageNode->node) == pstImageList->pstTarget_1)
        {
            pstImageList->pstTarget_1 = pstImageList->pstTarget_1->prev;
        }
                    
        list_del_init(&(pstDoneImageNode->node));
        
        VPSS_OSAL_UpLock(&(pstImageList->stFulListLock));

        memcpy(pstImage,&(pstDoneImageNode->stSrcImage),sizeof(HI_DRV_VIDEO_FRAME_S));
        
        VPSS_INST_AddEmptyImage(pstInstance,pstDoneImageNode);
    }
    else
    {
        VPSS_OSAL_UpLock(&(pstImageList->stFulListLock));
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}
HI_S32 VPSS_INST_DelFulImage(VPSS_INSTANCE_S *pstInstance,
                            HI_DRV_VIDEO_FRAME_S *pstImage)
{
    VPSS_IMAGE_NODE_S *pstTarget;
    LIST *pos, *n, *head;
    VPSS_IMAGELIST_INFO_S *pstImageList;
    HI_DRV_VIDEO_FRAME_S *pstFulImage;
    pstImageList = &(pstInstance->stSrcImagesList);

    head = &(pstImageList->stFulImageList);
    for (pos = (head)->next, n = pos->next; pos != (pstImageList->pstTarget_1)->next; 
		pos = n, n = pos->next)
    {
        pstTarget = list_entry(pos, VPSS_IMAGE_NODE_S, node);
        pstFulImage = &(pstTarget->stSrcImage);
        if (pstFulImage->stBufAddr[0].u32PhyAddr_Y
            == pstImage->stBufAddr[0].u32PhyAddr_Y)
        {
            if(pos != (pstImageList->pstTarget_1))
            {
                
            }
            else
            {
                pstImageList->pstTarget_1 = (pstImageList->pstTarget_1)->prev;
            }
            list_del_init(pos);
            VPSS_INST_AddEmptyImage(pstInstance,pstTarget);
            break;
        }
    }

    if (pos != (pstImageList->pstTarget_1)->next)
    {
        return HI_SUCCESS;
    }
    else
    {
        VPSS_FATAL("RelImg doesn't exit.\n");
        return HI_FAILURE;
    }
}

VPSS_IMAGE_NODE_S* VPSS_INST_GetEmptyImage(VPSS_INSTANCE_S *pstInstance)
{
    VPSS_IMAGE_NODE_S *pstTarget;
    LIST *pos, *n;
    VPSS_IMAGELIST_INFO_S *pstImageList;

    pstImageList = &(pstInstance->stSrcImagesList);
    
    pstTarget = HI_NULL;

    VPSS_OSAL_DownLock(&(pstImageList->stEmptyListLock));
    list_for_each_safe(pos, n, &(pstImageList->stEmptyImageList))
    {
        pstTarget = list_entry(pos, VPSS_IMAGE_NODE_S, node);
        list_del_init(pos);
        break;
    }
    VPSS_OSAL_UpLock(&(pstImageList->stEmptyListLock));

    if(pstTarget)
    {
        memset(&(pstTarget->stSrcImage), 0, 
                sizeof(HI_DRV_VIDEO_FRAME_S));
        return pstTarget;
    }
    else
    {
        return HI_NULL;
    }
}
HI_S32 VPSS_INST_AddFulImage(VPSS_INSTANCE_S *pstInstance,
                                VPSS_IMAGE_NODE_S *pstFulImage)
{
    VPSS_IMAGELIST_INFO_S *pstImageList;
    VPSS_IMAGE_NODE_S *pstTarget;
    LIST *pstTarget_1;
    LIST *pos, *n;
    pstImageList = &(pstInstance->stSrcImagesList);

    VPSS_OSAL_DownLock(&(pstImageList->stFulListLock));

    if (pstInstance->eSrcImgMode == VPSS_SOURCE_MODE_VPSSACTIVE)
    {
        if (pstFulImage->stSrcImage.bProgressive == HI_FALSE)
        {
            /*
               *P -> I
               *Empty -> I
               *First Frame read filed
               */
            if (pstImageList->stFulImageList.next == &(pstImageList->stFulImageList))
            {
                pstFulImage->stSrcImage.bProgressive = HI_TRUE;
            }
        }
        else
        {
            /*
               *I -> P
               */
            if (pstImageList->stFulImageList.next != &(pstImageList->stFulImageList))
            {
                pstTarget_1 = pstImageList->pstTarget_1;
                if (pstTarget_1 != pstImageList->stFulImageList.next)
                {
                    VPSS_ERROR("interlace to progressive Error\n");
                }
                for (pos = pstTarget_1->next, n = pos->next; 
                        pos != &(pstImageList->stFulImageList); 
    		            pos = n, n = pos->next)
                {
                    pstTarget = list_entry(pos, VPSS_IMAGE_NODE_S, node);
                    pstTarget->stSrcImage.bProgressive = HI_TRUE;
                }
            }
        }
    }
    list_add_tail(&(pstFulImage->node), &(pstImageList->stFulImageList));
    VPSS_OSAL_UpLock(&(pstImageList->stFulListLock));

    return HI_SUCCESS;
}


HI_S32 VPSS_INST_GetUserImage(VPSS_INSTANCE_S *pstInstance,
                                VPSS_IMAGE_NODE_S *pstSrcImage)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_S32 hDst;
    PFN_VPSS_SRC_FUNC  pfUsrCallBack;
    #if 0
    HI_DRV_VIDEO_FRAME_S stQuickImage_1;
    HI_DRV_VIDEO_FRAME_S stQuickImage_2;
    #endif
    HI_VOID *pstArgs;

    pfUsrCallBack = pstInstance->stSrcFuncs.VPSS_GET_SRCIMAGE;
    
    if(!pfUsrCallBack)
    {
        VPSS_FATAL("VPSS_GET_SRCIMAGE doesn't Exit.\n");
        return HI_FAILURE;
    }

    hDst = pstInstance->hDst;
    
    pstArgs = &(pstSrcImage->stSrcImage);
    
    s32Ret = pfUsrCallBack(pstInstance->ID,pstArgs);
    #if 0
    /*always get the newest image*/
    if (s32Ret == HI_SUCCESS 
        && pstInstance->bAlwaysFlushSrc == HI_TRUE)
    {
        memcpy(&stQuickImage_2,
               &(pstSrcImage->stSrcImage),
               sizeof(HI_DRV_VIDEO_FRAME_S));
        pstArgs = &stQuickImage_1;
        while(pfUsrCallBack(pstInstance->ID,pstArgs)
               == HI_SUCCESS)
        {
            if(pstInstance->stSrcFuncs.VPSS_REL_SRCIMAGE != HI_NULL)
            {
                (HI_VOID)pstInstance->stSrcFuncs.VPSS_REL_SRCIMAGE(
                                    pstInstance->ID,
                                    &stQuickImage_2);
            }
            memcpy(&stQuickImage_2,
               &stQuickImage_1,
               sizeof(HI_DRV_VIDEO_FRAME_S));
        }
        memcpy(&(pstSrcImage->stSrcImage),
               &stQuickImage_2,
               sizeof(HI_DRV_VIDEO_FRAME_S));
        s32Ret = HI_SUCCESS;
    }
    #endif
    return s32Ret;
}

VPSS_PORT_S *VPSS_INST_GetPort(VPSS_INSTANCE_S * pstInstance, VPSS_HANDLE hPort)
{
    
    HI_U32 u32PortID;
    VPSS_PORT_S *pstPort;
    u32PortID = PORTHANDLE_TO_PORTID(hPort);
	
	if (u32PortID >= DEF_HI_DRV_VPSS_PORT_MAX_NUMBER)
    {
        VPSS_FATAL("Invalid PortID %#x.",u32PortID);
        return HI_NULL;
    }	
	
    pstPort = &(pstInstance->stPort[u32PortID]);

    if (pstPort->s32PortId == VPSS_INVALID_HANDLE)
    {
        VPSS_FATAL("Port doesn't Exit.\n");
        
        pstPort = HI_NULL;
    }
    
    return pstPort;
}

HI_BOOL VPSS_INST_CheckImageList(VPSS_INSTANCE_S *pstInstance)
{
    HI_BOOL bReVal;
    VPSS_IMAGELIST_INFO_S* pstImgInfo;
    VPSS_IMAGE_NODE_S *pstImgNode;
    LIST *pre;
    LIST *cur;
    LIST *next1;
    LIST *next2;
    LIST *next3;
    pstImgInfo = &(pstInstance->stSrcImagesList);
    
    VPSS_OSAL_DownLock(&(pstImgInfo->stFulListLock));
    
    /*has undo image*/
    if ((pstImgInfo->pstTarget_1)->next != &(pstImgInfo->stFulImageList))
    {
        pstImgNode = list_entry((pstImgInfo->pstTarget_1->next),
                                VPSS_IMAGE_NODE_S, node);
        /*undo image is progressive*/
        if(pstInstance->stProcCtrl.eDEI == HI_DRV_VPSS_DIE_DISABLE
            || pstImgNode->stSrcImage.bProgressive == HI_TRUE)
        {
                bReVal = HI_TRUE;
        }
        /*undo image is interlace*/
        else
        {
            switch(pstInstance->stProcCtrl.eDEI)
            {
                case HI_DRV_VPSS_DIE_5FIELD:
                case HI_DRV_VPSS_DIE_4FIELD:
                case HI_DRV_VPSS_DIE_3FIELD:
                    pre = pstImgInfo->pstTarget_1;
                    if(pre == &(pstImgInfo->stFulImageList))
                    {
                            
                        bReVal = HI_FALSE;
                        if (pre->next != &(pstImgInfo->stFulImageList))
                        {
                            pstImgInfo->pstTarget_1 = pstImgInfo->pstTarget_1->next;
                            pre = pstImgInfo->pstTarget_1;
                        }
                        break;
                    }
                    cur = pre->next;
                    if(cur == &(pstImgInfo->stFulImageList))
                    {
                            bReVal = HI_FALSE;
                            break;
                    }
                    next1 = cur->next;
                    if(next1 == &(pstImgInfo->stFulImageList))
                    {
                            bReVal = HI_FALSE;
                            break;
                    }
                    next2 = next1->next;
                    if(next2 == &(pstImgInfo->stFulImageList))
                    {
                            bReVal = HI_FALSE;
                            break;
                    }
                    next3 = next2->next;
                    if(next3 == &(pstImgInfo->stFulImageList))
                    {
                             bReVal = HI_FALSE;
                            break;
                    }
                    
                    bReVal = HI_TRUE;
                    break;
                default:
                    bReVal = HI_FALSE;
                    break;
            }
        }
    }
    else
    {
            bReVal = HI_FALSE;
    }
    

    VPSS_OSAL_UpLock(&(pstImgInfo->stFulListLock));
    return bReVal;
}

HI_BOOL VPSS_INST_CheckImage(HI_DRV_VIDEO_FRAME_S *pstImage)
{
    HI_DRV_VIDEO_PRIVATE_S *pstPriv;
    HI_BOOL bSupported = HI_TRUE;
    pstPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstImage->u32Priv[0]);

    if (pstPriv->u32LastFlag == DEF_HI_DRV_VPSS_LAST_ERROR_FLAG)
    {
        return HI_TRUE;
    }
    
    #if DEF_VPSS_VERSION_1_0
    if (pstImage->ePixFormat != HI_DRV_PIX_FMT_NV12
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV21
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV16_2X1
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV61_2X1
        )
    #endif
    
    #if DEF_VPSS_VERSION_2_0
    if (pstImage->ePixFormat != HI_DRV_PIX_FMT_NV12
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV21
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV12_CMP
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV21_CMP
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV12_TILE
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV21_TILE
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV12_TILE_CMP
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV21_TILE_CMP
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV16
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV61
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV16_2X1
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_NV61_2X1
        && pstImage->ePixFormat !=  HI_DRV_PIX_FMT_YUV400
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_YUV_444
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_YUV422_2X1
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_YUV422_1X2
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_YUV420p
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_YUV411
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_YUV410p
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_YUYV
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_YVYU
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_UYVY
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_ARGB8888
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_ABGR8888
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_ARGB1555
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_ABGR1555
        && pstImage->ePixFormat != HI_DRV_PIX_FMT_RGB565
        //&& pstImage->ePixFormat != HI_DRV_PIX_FMT_BGR565
        //&& pstImage->ePixFormat != HI_DRV_PIX_FMT_YUV400_TILE
        //&& pstImage->ePixFormat != HI_DRV_PIX_FMT_YUV400_TILE_CMP
        )
    #endif
    {
        VPSS_FATAL("In image can't be processed Pixformat %d\n",pstImage->ePixFormat);
        bSupported = HI_FALSE;
    }

    if (pstImage->eFrmType == HI_DRV_FT_BUTT)
    {
        VPSS_FATAL("In image can't be processed FrmType %d\n",pstImage->eFrmType);
        bSupported = HI_FALSE;
    }

    if (pstImage->u32Height == 0 || pstImage->u32Width == 0)
    {
        VPSS_FATAL("In image can't be processed H %d W %d\n",
            pstImage->u32Height,
            pstImage->u32Width);
        bSupported = HI_FALSE;
    }
    return bSupported;
}


HI_S32 VPSS_INST_AddUndoImage(VPSS_INSTANCE_S *pstInstance)
{
    VPSS_IMAGELIST_INFO_S* pstImgInfo;
    VPSS_IMAGE_NODE_S* pstEmpty1stImage;
    VPSS_IMAGE_NODE_S* pstEmpty2ndImage;
    HI_DRV_VIDEO_PRIVATE_S *pstPriv;
    HI_S32 s32Ret;
    HI_BOOL bSupported;
    
    pstImgInfo = &(pstInstance->stSrcImagesList);
    if(pstInstance->eSrcImgMode == VPSS_SOURCE_MODE_VPSSACTIVE)
    {
        /*get two image node to split interlace image*/
        pstEmpty1stImage = VPSS_INST_GetEmptyImage(pstInstance);
        pstImgInfo->u32GetUsrTotal++;
        
        if(!pstEmpty1stImage)
        {
            VPSS_INFO("\n------%d-----NO EmptyImage",pstInstance->ID);
            
            return HI_FALSE;
        }
        pstEmpty2ndImage = VPSS_INST_GetEmptyImage(pstInstance);

        if(!pstEmpty2ndImage)
        {
            VPSS_INFO("\n------%d-----NO EmptyImage",pstInstance->ID);
            VPSS_INST_AddEmptyImage(pstInstance,pstEmpty1stImage);
            return HI_FALSE;
        }

        pstInstance->u32ImgCnt++;
        s32Ret = VPSS_INST_GetUserImage(pstInstance,pstEmpty1stImage);

        
        if (s32Ret != HI_SUCCESS)
        {
            VPSS_INFO("\n-------%d------NO UsrImage",pstInstance->ID);
            
            
            VPSS_INST_AddEmptyImage(pstInstance,pstEmpty1stImage);
            VPSS_INST_AddEmptyImage(pstInstance,pstEmpty2ndImage);
            return HI_FALSE;
        }
        pstInstance->u32ImgSucCnt++;
		pstImgInfo->u32GetUsrSuccess++;
        bSupported = VPSS_INST_CheckImage(&(pstEmpty1stImage->stSrcImage));
                
        if (bSupported == HI_FALSE)
        {
            VPSS_INST_AddEmptyImage(pstInstance,pstEmpty1stImage);
            VPSS_INST_AddEmptyImage(pstInstance,pstEmpty2ndImage);
            return HI_FALSE;
        }

        {
            VPSS_HANDLE hDbgPart = DEF_DBG_SRC_ID;
            VPSS_DBG_ReplyDbgCmd(&(pstInstance->stDbgCtrl),
                                 DBG_INFO_FRM,
                                 &hDbgPart,
                                 &(pstEmpty1stImage->stSrcImage));
                                 
            VPSS_DBG_ReplyDbgCmd(&(pstInstance->stDbgCtrl),
                                 DBG_W_YUV,
                                 &hDbgPart,
                                 &(pstEmpty1stImage->stSrcImage));
        }
		pstInstance->u32StreamInRate = pstEmpty1stImage->stSrcImage.u32FrameRate;
        pstInstance->u32StreamTopFirst = pstEmpty1stImage->stSrcImage.bTopFieldFirst;
        pstInstance->u32StreamProg = pstEmpty1stImage->stSrcImage.bProgressive;
        
        if (pstEmpty1stImage->stSrcImage.bIsFirstIFrame)
        {
            HI_DRV_STAT_Event(STAT_EVENT_VPSSGETFRM, 0);
        }
        
        /**************************************************/
        
		VPSS_INST_CheckNeedRstDei(pstInstance,&(pstEmpty1stImage->stSrcImage));

        VPSS_INST_CorrectProgInfo(pstInstance,&(pstEmpty1stImage->stSrcImage));

        VPSS_INST_ReviseImage(pstInstance,&(pstEmpty1stImage->stSrcImage));
        
        /*
           * when get first image ,believe its topfirst info
           */
        if(pstInstance->u32RealTopFirst == 0xffffffff)
        {
            if(pstEmpty1stImage->stSrcImage.bProgressive == HI_TRUE)
            {
                pstInstance->u32RealTopFirst = 0xfffffffe;
            }
            else
            {
                pstInstance->u32RealTopFirst = 
                            pstEmpty1stImage->stSrcImage.bTopFieldFirst;
            }
        }
        else
        {
            /*
               * detect progressive
               */
            if (pstInstance->u32RealTopFirst == 0xfffffffe)
            {
                if(pstEmpty1stImage->stSrcImage.bProgressive == HI_TRUE)
                {
                    
                }
                else
                {
                    pstInstance->u32RealTopFirst = 
                        pstEmpty1stImage->stSrcImage.bTopFieldFirst;
                }
            }
            /*
               * detect interlace
               */
            else
            {
                if(pstEmpty1stImage->stSrcImage.bProgressive == HI_TRUE)
                {
                    pstInstance->u32RealTopFirst = 
                        pstEmpty1stImage->stSrcImage.bTopFieldFirst;
                }
                else
                {
                    pstEmpty1stImage->stSrcImage.bTopFieldFirst = 
                        pstInstance->u32RealTopFirst;
                }
            }
            
        }

        if (pstEmpty1stImage->stSrcImage.bProgressive == HI_FALSE
            && pstEmpty1stImage->stSrcImage.enFieldMode == HI_DRV_FIELD_ALL)
        {
            HI_DRV_VIDEO_PRIVATE_S *pstFrmPriv;
            HI_VDEC_PRIV_FRAMEINFO_S *pstVdecPriv;
            
            /*
            * split interlace image to top and bottom
            */
            memcpy(&(pstEmpty2ndImage->stSrcImage),&(pstEmpty1stImage->stSrcImage),
                    sizeof(HI_DRV_VIDEO_FRAME_S));
            if(pstInstance->u32RealTopFirst == HI_TRUE)
            {
                pstEmpty1stImage->stSrcImage.enFieldMode = HI_DRV_FIELD_TOP;
                
                pstEmpty2ndImage->stSrcImage.enFieldMode = HI_DRV_FIELD_BOTTOM;
            }
            else
            {
                pstEmpty1stImage->stSrcImage.enFieldMode = HI_DRV_FIELD_BOTTOM;
                
                pstEmpty2ndImage->stSrcImage.enFieldMode = HI_DRV_FIELD_TOP;
            }
            pstFrmPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstEmpty1stImage->stSrcImage.u32Priv[0]);
            pstVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S *)&(pstFrmPriv->u32Reserve[0]);

            pstEmpty2ndImage->stSrcImage.u32Pts = pstEmpty1stImage->stSrcImage.u32Pts
                                                 + pstVdecPriv->s32InterPtsDelta;
            pstEmpty1stImage->stSrcImage.u32FrameRate = 
                        pstEmpty1stImage->stSrcImage.u32FrameRate*2;
            pstEmpty2ndImage->stSrcImage.u32FrameRate = 
                        pstEmpty2ndImage->stSrcImage.u32FrameRate*2;


            #if 1
            if (pstEmpty1stImage->stSrcImage.bIsFirstIFrame)
            {
                HI_DRV_VIDEO_PRIVATE_S *pstFrmPriv;
                HI_VDEC_PRIV_FRAMEINFO_S *pstVdecPriv;

                pstFrmPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstEmpty1stImage->stSrcImage.u32Priv[0]);
                pstVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S *)&(pstFrmPriv->u32Reserve[0]);

                //pstEmpty1stImage->stSrcImage.bProgressive = HI_TRUE;
                
                pstEmpty2ndImage->stSrcImage.bIsFirstIFrame = HI_FALSE;
            }
            #endif
        
            VPSS_INST_ChangeInRate(pstInstance,pstEmpty1stImage->stSrcImage.u32FrameRate);

            
            /*  VFMW last frame scheme
                *if the frame has last frame flag
                *progressive:bypass
                *interlace:change last three field info to progressive
                */
            pstPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstEmpty1stImage->stSrcImage.u32Priv[0]);
            
            if (pstPriv->u32LastFlag
                    == DEF_HI_DRV_VPSS_LAST_FRAME_FLAG)
            {
                /*1.change pre-frame's second field I->P*/
                VPSS_IMAGE_NODE_S* pstPreNode;
                if(pstImgInfo->stFulImageList.prev
                    != &(pstImgInfo->stFulImageList))
                {
                    pstPreNode = list_entry((pstImgInfo->stFulImageList.prev),
                            VPSS_IMAGE_NODE_S, node);
                    pstPreNode->stSrcImage.bProgressive = HI_TRUE;
                }
                else
                {
                    VPSS_FATAL("Last Field Error\n");
                }

                /*2.change last frame's two field I->P*/
                pstEmpty1stImage->stSrcImage.bProgressive = HI_TRUE;
                pstEmpty2ndImage->stSrcImage.bProgressive = HI_TRUE;
                /*3.set last flag to second field*/
                pstPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstEmpty1stImage->stSrcImage.u32Priv[0]);
                pstPriv->u32LastFlag = 0;

                pstPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstEmpty2ndImage->stSrcImage.u32Priv[0]);
                pstPriv->u32LastFlag = DEF_HI_DRV_VPSS_LAST_FRAME_FLAG;

                s32Ret = VPSS_INST_AddFulImage(pstInstance,pstEmpty1stImage);  
            
                s32Ret = VPSS_INST_AddFulImage(pstInstance,pstEmpty2ndImage);  
            }
            else if(pstPriv->u32LastFlag
                    == DEF_HI_DRV_VPSS_LAST_ERROR_FLAG)
            {
                VPSS_IMAGE_NODE_S* pstPreNode;
                LIST * pstPre;
                
                HI_BOOL bPreProg;
                pstPre = pstImgInfo->stFulImageList.prev;
                bPreProg = HI_FALSE;

                /*DEF_HI_DRV_VPSS_LAST_ERROR_FLAG must be Interlace
                    *we need to check whether pre stream is interlace
                    */
                if (pstPre != &(pstImgInfo->stFulImageList))
                {
                    pstPreNode = list_entry(pstPre,
                            VPSS_IMAGE_NODE_S, node);
                    bPreProg = pstPreNode->stSrcImage.bProgressive;
                }

                if (bPreProg == HI_TRUE || pstPre == &(pstImgInfo->stFulImageList))
                {
                    
                }
                else
                {
                    if (pstPre == &(pstImgInfo->stFulImageList) 
                    || pstPre->prev == &(pstImgInfo->stFulImageList)
                    || pstPre->prev->prev == &(pstImgInfo->stFulImageList))
                    {
                        VPSS_FATAL("Can't Get pre three field\n");
                    }
                    else
                    {
                    pstPreNode = list_entry(pstPre,
                                VPSS_IMAGE_NODE_S, node);
                    pstPreNode->stSrcImage.bProgressive = HI_TRUE;

                    pstPre = pstPre->prev;

                    pstPreNode = list_entry(pstPre,
                                VPSS_IMAGE_NODE_S, node);
                    pstPreNode->stSrcImage.bProgressive = HI_TRUE;

                    pstPre = pstPre->prev;

                    pstPreNode = list_entry(pstPre,
                                VPSS_IMAGE_NODE_S, node);
                    pstPreNode->stSrcImage.bProgressive = HI_TRUE;
                    }
                }
                

                s32Ret = VPSS_INST_AddEmptyImage(pstInstance,pstEmpty1stImage);  
            
                s32Ret = VPSS_INST_AddEmptyImage(pstInstance,pstEmpty2ndImage);  
            }
            else
            {
                s32Ret = VPSS_INST_AddFulImage(pstInstance,pstEmpty1stImage);  
                
                s32Ret = VPSS_INST_AddFulImage(pstInstance,pstEmpty2ndImage);  
            }
            
        }
        else
        {
            //VPSS_INST_ChangeInRate(pstInstance,pstEmpty1stImage->stSrcImage.u32FrameRate);
                
            s32Ret = VPSS_INST_AddFulImage(pstInstance,pstEmpty1stImage);
        
            VPSS_INST_AddEmptyImage(pstInstance,pstEmpty2ndImage);
        }
    }
    return HI_SUCCESS;
}
HI_BOOL VPSS_INST_CheckUndoImage(VPSS_INSTANCE_S *pstInstance)
{
    HI_S32 s32Ret;
    if (VPSS_INST_CheckImageList(pstInstance) == HI_TRUE)
    {
        return HI_TRUE;
    }
    else
    {
        VPSS_INST_AddUndoImage(pstInstance);

        s32Ret = VPSS_INST_CheckImageList(pstInstance);
        return s32Ret;
    }
}


HI_S32 VPSS_INST_GetPortFrame(VPSS_INSTANCE_S *pstInstance,VPSS_HANDLE hPort,HI_DRV_VIDEO_FRAME_S *pstFrame)
{
    VPSS_PORT_S *pstPort;
    VPSS_FB_INFO_S *pstFrameList;
    HI_U32 u32PortID;
    HI_S32 s32Ret;
    HI_CHAR *pchFile = HI_NULL;
    
    u32PortID = PORTHANDLE_TO_PORTID(hPort);
    
    if (u32PortID >= DEF_HI_DRV_VPSS_PORT_MAX_NUMBER)
    {
        VPSS_FATAL("Invalid PortID %#x.",u32PortID);
        return HI_FAILURE;
    }
    
    pstPort = HI_NULL;
    pstPort = VPSS_INST_GetPort(pstInstance,hPort); 
    
    if(!pstPort)
    {   
        return HI_FAILURE;
    }

    
    pstFrameList = &(pstPort->stFrmInfo);
    
    s32Ret = VPSS_FB_GetFulFrmBuf(pstFrameList,pstFrame,pchFile);
	
    if (s32Ret == HI_SUCCESS)
    {
        #if SAVEYUV
        if (pstPort->s32PortId == 0x0)
        {
            HI_U8 chFile[20] = "vpss_out.yuv";
            pchFile = chFile;
            VPSS_OSAL_WRITEYUV(pstFrame, pchFile);
        }
        #endif
        {
            VPSS_HANDLE hDbgPart;
            switch(pstPort->s32PortId & 0x000000ff)
            {
                case 0:
                    hDbgPart = DEF_DBG_PORT0_ID;
                    break;
                case 1:
                    hDbgPart = DEF_DBG_PORT1_ID;
                    break;
                case 2:
                    hDbgPart = DEF_DBG_PORT2_ID;
                    break;
                default:
                    VPSS_FATAL("Invalid Port ID %#x\n",pstPort->s32PortId);
                    hDbgPart = DEF_DBG_PORT0_ID;
                    break;
            }
            VPSS_DBG_ReplyDbgCmd(&(pstInstance->stDbgCtrl),
                                 DBG_INFO_FRM,
                                 &hDbgPart,
                                 pstFrame);
                                 
            VPSS_DBG_ReplyDbgCmd(&(pstInstance->stDbgCtrl),
                                 DBG_W_YUV,
                                 &hDbgPart,
                                 pstFrame);
        }
    }
    return s32Ret;
}

HI_S32 VPSS_INST_RelPortFrame(VPSS_INSTANCE_S *pstInstance,VPSS_HANDLE hPort,HI_DRV_VIDEO_FRAME_S *pstFrame)
{
    VPSS_PORT_S *pstPort;
    VPSS_FB_INFO_S *pstFrameList;
    HI_S32 s32Ret;

    pstPort = HI_NULL;
    pstPort = VPSS_INST_GetPort(pstInstance,hPort);

    if(!pstPort)
    {
        return HI_FAILURE;
    }
    pstFrameList = &(pstPort->stFrmInfo);

    if (pstFrameList->stBufListCfg.eBufType == HI_DRV_VPSS_BUF_VPSS_ALLOC_MANAGE
        || pstFrameList->stBufListCfg.eBufType == HI_DRV_VPSS_BUF_USER_ALLOC_VPSS_MANAGE)
    {
        
    }
    else
    {
        VPSS_FATAL("Buffer type don't support RelPortFrame\n");
        return HI_FAILURE;
    }
    s32Ret = VPSS_FB_RelFulFrmBuf(pstFrameList,pstFrame);

    return s32Ret;
}


HI_S32 VPSS_INST_GetDefInstCfg(HI_DRV_VPSS_CFG_S *pstVpssCfg)
{
    HI_DRV_VPSS_PROCESS_S *pstProcCtrl;
    
    pstVpssCfg->s32Priority = 0;

    pstVpssCfg->bAlwaysFlushSrc = HI_FALSE;

    pstVpssCfg->enProgInfo = HI_DRV_VPSS_PRODETECT_AUTO;
    
    pstProcCtrl = &(pstVpssCfg->stProcCtrl);

    pstProcCtrl->eACC = HI_DRV_VPSS_ACC_DISABLE;
    pstProcCtrl->eACM = HI_DRV_VPSS_ACM_DISABLE;
    pstProcCtrl->eDR = HI_DRV_VPSS_DR_AUTO;
    pstProcCtrl->eDB = HI_DRV_VPSS_DB_AUTO;
    pstProcCtrl->eHFlip = HI_DRV_VPSS_HFLIP_DISABLE;
    pstProcCtrl->eVFlip = HI_DRV_VPSS_VFLIP_DISABLE;
    pstProcCtrl->eCC = HI_DRV_VPSS_CC_AUTO;
    pstProcCtrl->eDEI = HI_DRV_VPSS_DIE_5FIELD;
    pstProcCtrl->eRotation = HI_DRV_VPSS_ROTATION_DISABLE;
    pstProcCtrl->eSharpness = HI_DRV_VPSS_SHARPNESS_AUTO;
    pstProcCtrl->eStereo = HI_DRV_VPSS_STEREO_DISABLE;
    
    pstProcCtrl->stInRect.s32X  = 0;
    pstProcCtrl->stInRect.s32Y  = 0;
    pstProcCtrl->stInRect.s32Height = 0;
    pstProcCtrl->stInRect.s32Width = 0;

    
    pstProcCtrl->bUseCropRect = HI_FALSE;
    pstProcCtrl->stCropRect.u32LeftOffset = 0;
    pstProcCtrl->stCropRect.u32RightOffset= 0;
    pstProcCtrl->stCropRect.u32TopOffset  = 0;
    pstProcCtrl->stCropRect.u32BottomOffset = 0;
    
    return HI_SUCCESS;
}
HI_S32 VPSS_INST_Init(VPSS_INSTANCE_S *pstInstance,HI_DRV_VPSS_CFG_S *pstVpssCfg)
{
    HI_U32 u32Count;
    VPSS_IMAGELIST_INFO_S *pstImageList;
    VPSS_IMAGE_NODE_S *pstImageNode;
    HI_DRV_VPSS_CFG_S stTmpCfg;
    HI_S32 s32Ret;
    LIST *pos, *n;
    VPSS_IMAGE_NODE_S* pstImgNode;
    
    pstInstance->ID = 0;
    
    pstInstance->hDst = 0;
    pstInstance->pfUserCallBack = HI_NULL;

    pstInstance->eSrcImgMode = VPSS_SOURCE_MODE_BUTT;
    pstInstance->stSrcFuncs.VPSS_GET_SRCIMAGE = HI_NULL;
    pstInstance->stSrcFuncs.VPSS_REL_SRCIMAGE = HI_NULL;

    pstInstance->u32RealTopFirst = 0xffffffff;
    
    pstInstance->u32NeedRstDei = HI_FALSE;

	pstInstance->u32IsNewImage = HI_TRUE;
	
	pstInstance->u32Rwzb = 0;
	pstInstance->u32InRate = 0;

    pstInstance->u32StreamInRate = 0;
    pstInstance->u32StreamTopFirst = 0;
	pstInstance->u32StreamProg = 0;

	
    pstImageList = &(pstInstance->stSrcImagesList);

    VPSS_OSAL_InitLOCK(&(pstImageList->stEmptyListLock), 1);
    VPSS_OSAL_InitLOCK(&(pstImageList->stFulListLock), 1);
    
    INIT_LIST_HEAD(&(pstImageList->stEmptyImageList));
    INIT_LIST_HEAD(&(pstImageList->stFulImageList));
    
    pstImageList->u32GetUsrTotal = 0;
    pstImageList->u32GetUsrSuccess = 0;
    pstImageList->u32RelUsrTotal = 0;
    pstImageList->u32RelUsrSuccess = 0;
    u32Count = 0;
    while(u32Count < VPSS_SOURCE_MAX_NUMB)
    {
        pstImageNode = (VPSS_IMAGE_NODE_S*)VPSS_VMALLOC(sizeof(VPSS_IMAGE_NODE_S));
        if (pstImageNode == HI_NULL)
        {
            VPSS_FATAL("vmalloc imageNode failed\n");
            goto INST_Init_Failed;
        }
        memset(&(pstImageNode->stSrcImage), 0, 
                sizeof(HI_DRV_VIDEO_FRAME_S));
        
        list_add_tail(&(pstImageNode->node), 
                        &(pstImageList->stEmptyImageList));
        u32Count++;
    }

    pstImageList->pstTarget_1 = &(pstImageList->stFulImageList);
    
    memset(&(pstInstance->stPort), 0, 
                sizeof(VPSS_PORT_S)*DEF_HI_DRV_VPSS_PORT_MAX_NUMBER);
    u32Count = 0;
    while(u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER)
    {
        pstInstance->stPort[u32Count].s32PortId = VPSS_INVALID_HANDLE;
        pstInstance->stPort[u32Count].bEnble = HI_FALSE;
        u32Count++;
    }
    
    
    VPSS_ALG_InitAuInfo((HI_U32)&(pstInstance->stAuInfo[0]));
    
    if (HI_NULL == pstVpssCfg)
    {
        VPSS_INST_GetDefInstCfg(&stTmpCfg);
        VPSS_INST_SetInstCfg(pstInstance,&stTmpCfg);
    }
    else
    {
        VPSS_INST_SetInstCfg(pstInstance,pstVpssCfg);
    }
    s32Ret = VPSS_INST_SyncUsrCfg(pstInstance);

    if(s32Ret == HI_FAILURE)
    {
        VPSS_FATAL("Init Sync VPSS CFG Fail\n");
    }
    else
    {
    
    }
    VPSS_DBG_DbgInit(&(pstInstance->stDbgCtrl));
    return HI_SUCCESS;
    
INST_Init_Failed:
    list_for_each_safe(pos, n, &(pstImageList->stEmptyImageList))
    {
        pstImgNode = list_entry(pos, VPSS_IMAGE_NODE_S, node);

        list_del_init(pos);

        VPSS_VFREE(pstImgNode);
        u32Count++;
    }
    return HI_FAILURE;
}

HI_S32 VPSS_INST_DelInit(VPSS_INSTANCE_S *pstInstance)
{

    HI_U32 u32Count;
    VPSS_PORT_S *pstPort;
    VPSS_IMAGELIST_INFO_S*  pstImgList;
    LIST *pos, *n;
    VPSS_IMAGE_NODE_S* pstImgNode;
    
    pstImgList = &(pstInstance->stSrcImagesList);

    u32Count = 0;
    list_for_each_safe(pos, n, &(pstImgList->stEmptyImageList))
    {
        pstImgNode = list_entry(pos, VPSS_IMAGE_NODE_S, node);

        list_del_init(pos);

        VPSS_VFREE(pstImgNode);
        u32Count++;
    }
    
    list_for_each_safe(pos, n, &(pstImgList->stFulImageList))
    {
        pstImgNode = list_entry(pos, VPSS_IMAGE_NODE_S, node);

        list_del_init(pos);

        VPSS_VFREE(pstImgNode);
        u32Count++;
    }

    if(u32Count != VPSS_SOURCE_MAX_NUMB)
    {
        VPSS_FATAL("Inst %d free SrcImage Error %d.\n",
                        pstInstance->ID,
                        u32Count);
    }
    
    for(u32Count = 0; u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER; u32Count ++)
    {
        pstPort = &(pstInstance->stPort[u32Count]);
        if (pstPort->s32PortId != VPSS_INVALID_HANDLE)
        {
            VPSS_INST_DestoryPort(pstInstance,pstPort->s32PortId);

            pstPort->s32PortId = VPSS_INVALID_HANDLE;
        }
    }
    
    VPSS_ALG_DeInitAuInfo((HI_U32)&(pstInstance->stAuInfo));
    
    return HI_SUCCESS;
}


HI_S32 VPSS_INST_SetInstCfg(VPSS_INSTANCE_S *pstInstance,
                                HI_DRV_VPSS_CFG_S *pstVpssCfg)
{
    HI_DRV_VPSS_CFG_S *pstInstUsrcCfg;
    unsigned long flags;
    
    pstInstUsrcCfg = &(pstInstance->stUsrInstCfg);

    spin_lock_irqsave(&(pstInstance->stUsrSetSpin.irq_lock), flags);
    
    pstInstance->u32IsNewCfg = HI_TRUE;
    
    pstInstUsrcCfg->enProgInfo = pstVpssCfg->enProgInfo;
    
    pstInstUsrcCfg->bAlwaysFlushSrc = pstVpssCfg->bAlwaysFlushSrc;
    pstInstUsrcCfg->s32Priority = pstVpssCfg->s32Priority;
    pstInstUsrcCfg->stProcCtrl = pstVpssCfg->stProcCtrl;
    
    spin_unlock_irqrestore(&(pstInstance->stUsrSetSpin.irq_lock), flags);
    
    return HI_SUCCESS;
}


HI_U32 VPSS_INST_GetInstCfg(VPSS_INSTANCE_S *pstInstance,
                                HI_DRV_VPSS_CFG_S *pstVpssCfg)
{
    HI_DRV_VPSS_CFG_S *pstInstUsrcCfg;
    unsigned long flags;
    pstInstUsrcCfg = &(pstInstance->stUsrInstCfg);

    
    spin_lock_irqsave(&(pstInstance->stUsrSetSpin.irq_lock), flags);
    
    pstVpssCfg->s32Priority = pstInstUsrcCfg->s32Priority;
    pstVpssCfg->bAlwaysFlushSrc = pstInstUsrcCfg->bAlwaysFlushSrc;
    pstVpssCfg->enProgInfo = pstInstUsrcCfg->enProgInfo;
    memcpy(&(pstVpssCfg->stProcCtrl),&(pstInstUsrcCfg->stProcCtrl),
                                        sizeof(HI_DRV_VPSS_PROCESS_S));

    spin_unlock_irqrestore(&(pstInstance->stUsrSetSpin.irq_lock), flags);
    return HI_SUCCESS;
}

HI_U32 VPSS_INST_GetDefPortCfg(HI_DRV_VPSS_PORT_CFG_S *pstPortCfg)
{
    memset(pstPortCfg,0,sizeof(HI_DRV_VPSS_PORT_CFG_S));
    
    pstPortCfg->bTunnelEnable = HI_FALSE;
    pstPortCfg->s32SafeThr = 100;
    
    pstPortCfg->s32OutputWidth = 0;
    pstPortCfg->s32OutputHeight = 0;

    pstPortCfg->stScreen.s32Height = 576;
    pstPortCfg->stScreen.s32Width = 720;
    pstPortCfg->stScreen.s32X = 0;
    pstPortCfg->stScreen.s32Y = 0;
    pstPortCfg->stDispPixAR.u8ARh = 0;
    pstPortCfg->stDispPixAR.u8ARw = 0;
    pstPortCfg->stCustmAR.u8ARh = 0;
    pstPortCfg->stCustmAR.u8ARw = 0;
    
    pstPortCfg->eDstCS = HI_DRV_CS_BUTT;
    pstPortCfg->eAspMode  = HI_DRV_ASP_RAT_MODE_BUTT;
    pstPortCfg->stProcCtrl.eCSC = HI_DRV_VPSS_CSC_AUTO;
    pstPortCfg->stProcCtrl.eFidelity = HI_DRV_VPSS_FIDELITY_DISABLE;

    pstPortCfg->eFormat = HI_DRV_PIX_FMT_NV21;
    pstPortCfg->u32MaxFrameRate = 60;

    pstPortCfg->stBufListCfg.eBufType = HI_DRV_VPSS_BUF_VPSS_ALLOC_MANAGE;
    pstPortCfg->stBufListCfg.u32BufNumber = HI_VPSS_MAX_BUFFER_NUMB;
    //pstPortCfg->stBufListCfg.u32BufSize = 720*576*2;
    //pstPortCfg->stBufListCfg.u32BufStride = 720;

    pstPortCfg->stBufListCfg.u32BufSize = 1920*1080*2;
    pstPortCfg->stBufListCfg.u32BufStride = 1920;
    
    pstPortCfg->b3Dsupport = HI_FALSE;
    return HI_SUCCESS;
}

HI_S32 VPSS_INST_CreatePort(VPSS_INSTANCE_S *pstInstance,
                                HI_DRV_VPSS_PORT_CFG_S *pstPortCfg,
                                VPSS_HANDLE *phPort)
{
    HI_U32 u32Count;
    VPSS_PORT_S *pstPort;
    HI_S32 s32Ret;
    for(u32Count = 0; u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER; u32Count ++)
    {
        pstPort = &(pstInstance->stPort[u32Count]);
        if (pstPort->s32PortId == VPSS_INVALID_HANDLE)
        {
            break;
        }
    }
    if (u32Count == DEF_HI_DRV_VPSS_PORT_MAX_NUMBER)
    {
        VPSS_FATAL("Port Number is MAX.\n");

        *phPort = 0;
        return HI_FAILURE;
    }
    else
    {
        HI_DRV_VPSS_PORT_CFG_S stPortDefCfg;
        HI_DRV_VPSS_PORT_CFG_S *pstPortSetCfg;
        memset(pstPort,0,sizeof(VPSS_PORT_S));
        
        if(pstPortCfg == HI_NULL)
        {
            VPSS_INST_GetDefPortCfg(&(stPortDefCfg));
            pstPortSetCfg = &(stPortDefCfg);
        }
        else
        {
            pstPortSetCfg = pstPortCfg;
        }
        pstPort->bEnble = HI_FALSE;
        pstPort->s32PortId = (pstInstance->ID * 256) + u32Count;
        
        pstPort->u32OutCount = 0;
        s32Ret = VPSS_FB_Init(&(pstPort->stFrmInfo),&(pstPortSetCfg->stBufListCfg));
        if (s32Ret == HI_FAILURE)
        {
            return HI_FAILURE;
        }
        VPSS_INST_SetPortCfg(pstInstance,pstPort->s32PortId,pstPortSetCfg);

        s32Ret = VPSS_INST_SyncUsrCfg(pstInstance);
        if (s32Ret == HI_FAILURE)
        {
            VPSS_FATAL("Create Port SyncCfg Fail.\n");
            return HI_FAILURE;
        }
        *phPort = pstPort->s32PortId;
    }

    return HI_SUCCESS;
}

HI_S32 VPSS_INST_DestoryPort(VPSS_INSTANCE_S *pstInstance,VPSS_HANDLE hPort)
{
    VPSS_PORT_S *pstPort;
    HI_U32 u32PortID;

    u32PortID = PORTHANDLE_TO_PORTID(hPort);

    pstPort = HI_NULL;

    pstPort = VPSS_INST_GetPort(pstInstance,hPort);
    if(!pstPort)
    {
        return HI_FAILURE;
    }
    
    VPSS_FB_DelInit(&(pstPort->stFrmInfo));

    memset(pstPort,0,sizeof(VPSS_PORT_S));

    pstPort->s32PortId = VPSS_INVALID_HANDLE;
    
    return HI_SUCCESS;

}
HI_S32 VPSS_INST_GetPortCfg(VPSS_INSTANCE_S * pstInstance, VPSS_HANDLE hPort, 
                                HI_DRV_VPSS_PORT_CFG_S *pstPortCfg)
{
    VPSS_PORT_S *pstPort;
    HI_U32 u32PortID;
    HI_DRV_VPSS_PORT_CFG_S *pstUsrPortCfg;
    unsigned long flags;
    pstPort = HI_NULL;
    pstPort = VPSS_INST_GetPort(pstInstance,hPort);

    if(!pstPort)
    {
        return HI_FAILURE;
    }
    u32PortID = PORTHANDLE_TO_PORTID(hPort);
    
    if (u32PortID >= DEF_HI_DRV_VPSS_PORT_MAX_NUMBER)
    {
        VPSS_FATAL("Invalid PortID %#x.",u32PortID);
        return HI_FAILURE;
    }
    
    spin_lock_irqsave(&(pstInstance->stUsrSetSpin.irq_lock), flags);
    
    pstUsrPortCfg = &(pstInstance->stUsrPortCfg[u32PortID]);
    
    pstPortCfg->eFormat = pstUsrPortCfg->eFormat; 
    pstPortCfg->s32OutputWidth = pstUsrPortCfg->s32OutputWidth;
    pstPortCfg->s32OutputHeight = pstUsrPortCfg->s32OutputHeight;
    pstPortCfg->eDstCS = pstUsrPortCfg->eDstCS;
    pstPortCfg->stDispPixAR = pstUsrPortCfg->stDispPixAR;
    pstPortCfg->eAspMode = pstUsrPortCfg->eAspMode;
    pstPortCfg->bTunnelEnable = pstUsrPortCfg->bTunnelEnable;
    pstPortCfg->s32SafeThr = pstUsrPortCfg->s32SafeThr;   
    pstPortCfg->u32MaxFrameRate = pstUsrPortCfg->u32MaxFrameRate; 

    pstPortCfg->b3Dsupport = pstUsrPortCfg->b3Dsupport;
    memcpy(&(pstPortCfg->stProcCtrl),&(pstUsrPortCfg->stProcCtrl),
                                        sizeof(HI_DRV_VPSS_PORT_PROCESS_S));
    
    memcpy(&(pstPortCfg->stBufListCfg),&(pstUsrPortCfg->stBufListCfg),
                                        sizeof(HI_DRV_VPSS_BUFLIST_CFG_S));
    spin_unlock_irqrestore(&(pstInstance->stUsrSetSpin.irq_lock), flags);
    return HI_SUCCESS;
}
HI_S32 VPSS_INST_SetPortCfg(VPSS_INSTANCE_S * pstInstance, VPSS_HANDLE hPort, 
                                HI_DRV_VPSS_PORT_CFG_S *pstPortCfg)
{
    /*
        SetCfg process two step:
        1.UsrSet
        2.SyncCfg
     */
    VPSS_PORT_S *pstPort;
    HI_DRV_VPSS_PORT_CFG_S *pstUsrPortCfg;
    HI_U32 u32PortID;
    unsigned long flags;
    pstPort = HI_NULL;

    pstPort = VPSS_INST_GetPort(pstInstance,hPort);
    if(!pstPort)
    {
        return HI_FAILURE;
    }
    
    u32PortID = PORTHANDLE_TO_PORTID(hPort);
    
    if (u32PortID >= DEF_HI_DRV_VPSS_PORT_MAX_NUMBER)
    {
        VPSS_FATAL("Invalid PortID %#x.",u32PortID);
        return HI_FAILURE;
    }
    
    spin_lock_irqsave(&(pstInstance->stUsrSetSpin.irq_lock), flags);
    
    pstInstance->u32IsNewCfg = HI_TRUE;

    pstUsrPortCfg = &(pstInstance->stUsrPortCfg[u32PortID]);
    pstUsrPortCfg->bInterlaced = pstPortCfg->bInterlaced;
    
    pstUsrPortCfg->bTunnelEnable = pstPortCfg->bTunnelEnable;
    
    pstUsrPortCfg->eAspMode = pstPortCfg->eAspMode;
    
    pstUsrPortCfg->bInterlaced = pstPortCfg->bInterlaced;
    pstUsrPortCfg->stScreen = pstPortCfg->stScreen;
    pstUsrPortCfg->stDispPixAR = pstPortCfg->stDispPixAR;
    pstUsrPortCfg->stCustmAR = pstPortCfg->stCustmAR;
    
    pstUsrPortCfg->eDstCS = pstPortCfg->eDstCS;
    
    pstUsrPortCfg->s32OutputWidth = pstPortCfg->s32OutputWidth;
    pstUsrPortCfg->s32OutputHeight = pstPortCfg->s32OutputHeight;
    pstUsrPortCfg->eFormat = pstPortCfg->eFormat;
    pstUsrPortCfg->u32MaxFrameRate = pstPortCfg->u32MaxFrameRate;
    pstUsrPortCfg->bTunnelEnable = pstPortCfg->bTunnelEnable;
    pstUsrPortCfg->s32SafeThr = pstPortCfg->s32SafeThr;
    pstUsrPortCfg->stBufListCfg = pstPortCfg->stBufListCfg;
    pstUsrPortCfg->stProcCtrl = pstPortCfg->stProcCtrl;

    pstUsrPortCfg->b3Dsupport = pstPortCfg->b3Dsupport;
    spin_unlock_irqrestore(&(pstInstance->stUsrSetSpin.irq_lock), flags);
    #if 0
    pstPort->eFormat = pstPortCfg->eFormat; 
    pstPort->s32OutputWidth = pstPortCfg->s32OutputWidth;
    pstPort->s32OutputHeight = pstPortCfg->s32OutputHeight;
    pstPort->eDstCS = pstPortCfg->eDstCS;
    pstPort->stDispPixAR = pstPortCfg->stDispPixAR;
    pstPort->eAspMode = pstPortCfg->eAspMode;
    pstPort->bTunnelEnable = pstPortCfg->bTunnelEnable;
    pstPort->s32SafeThr = pstPortCfg->s32SafeThr;   
    pstPort->u32MaxFrameRate = pstPortCfg->u32MaxFrameRate; 

    memcpy(&(pstPort->stProcCtrl),&(pstPortCfg->stProcCtrl),
                                        sizeof(HI_DRV_VPSS_PORT_PROCESS_S));
    #endif                                    
    /*
      *outBuffer size can't be modified
      */
    /*
    memcpy(&((pstPort->stFrmInfo).stBufListCfg),&(pstPortCfg->stBufListCfg),
                                        sizeof(HI_DRV_VPSS_BUFLIST_CFG_S));
    */
    return HI_SUCCESS;
}
HI_S32 VPSS_INST_EnablePort(VPSS_INSTANCE_S * pstInstance, VPSS_HANDLE hPort,HI_BOOL bEnPort)
{
    VPSS_PORT_S *pstPort;

    pstPort = HI_NULL;

    pstPort = VPSS_INST_GetPort(pstInstance,hPort);
    
    if(!pstPort)
    {
        return HI_FAILURE;
    }
    
    pstPort->bEnble = bEnPort;
     
    return HI_SUCCESS;
}

HI_S32 VPSS_INST_CheckPortCfg(VPSS_INSTANCE_S * pstInstance, VPSS_HANDLE hPort,
                                HI_DRV_VPSS_PORT_CFG_S *pstVpssPortCfg)
{
    VPSS_PORT_S *pstPort;
    HI_DRV_VPSS_PORT_PROCESS_S *pstProcCtrl;
    pstPort = HI_NULL;

    pstPort = VPSS_INST_GetPort(pstInstance,hPort);
    
    if(!pstPort)
    {
        return HI_FAILURE;
    }
	
    pstProcCtrl = &(pstVpssPortCfg->stProcCtrl);

    if(pstVpssPortCfg->eFormat == HI_DRV_PIX_FMT_NV12 
		|| pstVpssPortCfg->eFormat == HI_DRV_PIX_FMT_NV16_2X1
		|| pstVpssPortCfg->eFormat == HI_DRV_PIX_FMT_NV21
		|| pstVpssPortCfg->eFormat == HI_DRV_PIX_FMT_NV61_2X1)
    {
        
    }
	else
	{
	    VPSS_FATAL("Invalid Port eFormat %d\n",pstVpssPortCfg->eFormat);
		return HI_FAILURE;
	}
    
    return HI_SUCCESS;
}
HI_S32 VPSS_INST_SetCallBack(VPSS_INSTANCE_S *pstInstance,
                            HI_HANDLE hDst, PFN_VPSS_CALLBACK pfVpssCallback)
{
    pstInstance->hDst = hDst;
    if(pfVpssCallback != HI_NULL)
    {   
        pstInstance->pfUserCallBack = pfVpssCallback;

        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
    
}

HI_S32 VPSS_INST_ReplyUserCommand(VPSS_INSTANCE_S * pstInstance,
                                    HI_DRV_VPSS_USER_COMMAND_E eCommand,
                                    HI_VOID *pArgs)
{
    HI_BOOL *pbAllDone;
    HI_DRV_VPSS_PORT_AVAILABLE_S *pstAvailable;
    
    switch ( eCommand )
    {
        case HI_DRV_VPSS_USER_COMMAND_RESET:
            VPSS_INST_Reset(pstInstance);
            break;
        case HI_DRV_VPSS_USER_COMMAND_CHECKALLDONE:
            pbAllDone = (HI_BOOL *)pArgs;
            *pbAllDone = VPSS_INST_CheckAllDone(pstInstance);
            break;
        case HI_DRV_VPSS_USER_COMMAND_CHECKAVAILABLE:
            pstAvailable = (HI_DRV_VPSS_PORT_AVAILABLE_S *)pArgs;
            pstAvailable->bAvailable
                = VPSS_INST_CheckPortBuffer(pstInstance,pstAvailable->hPort);
            break;
        default:
            break;
    }

    return HI_SUCCESS;
}

HI_S32 VPSS_INST_ResetPort(VPSS_INSTANCE_S *pstInstance,VPSS_HANDLE hPort)
{
    VPSS_PORT_S *pstPort;
    HI_U32 u32PortID;

    u32PortID = PORTHANDLE_TO_PORTID(hPort);

    pstPort = HI_NULL;

    pstPort = VPSS_INST_GetPort(pstInstance,hPort);
    if(!pstPort)
    {
        return HI_FAILURE;
    }
    pstPort->u32OutCount = 0;
    VPSS_FB_Reset(&(pstPort->stFrmInfo));
    
    return HI_SUCCESS;
    
}
HI_S32 VPSS_INST_Reset(VPSS_INSTANCE_S *pstInstance)
{
    HI_U32 u32Count;
    VPSS_PORT_S *pstPort;
    VPSS_IMAGELIST_INFO_S*  pstImgList;
    LIST *pos, *n;
    VPSS_IMAGE_NODE_S* pstImgNode;

    VPSS_OSAL_DownLock(&(pstInstance->stInstLock));

    /*reset image list*/
    pstImgList = &(pstInstance->stSrcImagesList);
    
    list_for_each_safe(pos, n, &(pstImgList->stFulImageList))
    {
        pstImgNode = list_entry(pos, VPSS_IMAGE_NODE_S, node);

        list_del_init(pos);

        VPSS_INST_AddEmptyImage(pstInstance,pstImgNode);
    }

    pstImgList->pstTarget_1 = &(pstImgList->stFulImageList);

    /*reset port*/
    for(u32Count = 0; u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER; u32Count ++)
    {
        pstPort = &(pstInstance->stPort[u32Count]);
        if (pstPort->s32PortId != VPSS_INVALID_HANDLE)
        {
            VPSS_INST_ResetPort(pstInstance,pstPort->s32PortId);
        }
    }
    VPSS_OSAL_UpLock(&(pstInstance->stInstLock));
    pstInstance->stSrcImagesList.u32GetUsrTotal = 0;
    pstInstance->stSrcImagesList.u32GetUsrSuccess = 0;
    pstInstance->stSrcImagesList.u32RelUsrTotal = 0;
    pstInstance->stSrcImagesList.u32RelUsrSuccess = 0;
    pstInstance->u32CheckRate = 0;
    pstInstance->u32CheckSucRate = 0;;
    pstInstance->u32CheckCnt = 0;
    pstInstance->u32CheckSucCnt = 0;

    pstInstance->u32ImgRate = 0;
    pstInstance->u32ImgSucRate = 0;
    pstInstance->u32ImgCnt = 0;
    pstInstance->u32ImgSucCnt = 0;
    
    pstInstance->u32SrcRate = 0;
    pstInstance->u32SrcSucRate = 0;
    pstInstance->u32SrcCnt = 0;
    pstInstance->u32SrcSucCnt = 0;
    
    pstInstance->u32BufRate = 0;
    pstInstance->u32BufSucRate = 0;
    pstInstance->u32BufCnt = 0;
    pstInstance->u32BufSucCnt = 0;
	return HI_SUCCESS;
}
HI_BOOL VPSS_INST_CheckIsAvailable(VPSS_INSTANCE_S *pstInstance)
{
    HI_U32 u32Count;
    HI_S32 s32BufIsEnough;
    PFN_VPSS_CALLBACK pfUserCallBack;
    HI_S32 hDst;
    HI_DRV_VPSS_BUFFUL_STRATAGY_E eBufStratagy;
    VPSS_FB_INFO_S * pstFrameList;
    HI_U32 u32HasEnablePort;

    /*
     check if at least one port enabled
     */
    u32HasEnablePort = 0;
    for(u32Count = 0; u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER;
            u32Count ++)
    {
        if (pstInstance->stPort[u32Count].s32PortId != VPSS_INVALID_HANDLE
            && pstInstance->stPort[u32Count].bEnble == HI_TRUE)
        {
            u32HasEnablePort = 1;
        }
    }
    if (u32HasEnablePort == 0)
    {
        return HI_FALSE;
    }
    
    /*
        check undo image
     */
    pstInstance->u32SrcCnt ++;
    if(!VPSS_INST_CheckUndoImage(pstInstance))
    {
        return HI_FALSE;
    }
    pstInstance->u32SrcSucCnt ++;

    s32BufIsEnough = 0;
    u32HasEnablePort = 0;
    /*
        check if all enabled port has write space
     */
    pstInstance->u32BufCnt ++;
    for(u32Count = 0; u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER;
            u32Count ++)
    {       
        if (pstInstance->stPort[u32Count].s32PortId != VPSS_INVALID_HANDLE
            && pstInstance->stPort[u32Count].bEnble == HI_TRUE)
        {
            u32HasEnablePort = 1;
            s32BufIsEnough = s32BufIsEnough - 1;
            pstFrameList = &((pstInstance->stPort[u32Count]).stFrmInfo);
            if(VPSS_FB_CheckIsAvailable(pstFrameList))
            {
                s32BufIsEnough = s32BufIsEnough + 1;
            }
            else
            {
                
            }
        }
        
    }

    if(u32HasEnablePort == 0)
    {
        return HI_FALSE;
    }
    if (s32BufIsEnough != 0)
    {
        if(pstInstance->pfUserCallBack == HI_NULL)
        {
            VPSS_FATAL("Inst %d UserCallBack is NULL.\n",pstInstance->ID);
            return HI_FALSE;
        }
        pfUserCallBack = pstInstance->pfUserCallBack;
        hDst = pstInstance->hDst;
        eBufStratagy = HI_DRV_VPSS_BUFFUL_BUTT;
        pfUserCallBack(hDst, VPSS_EVENT_BUFLIST_FULL, &eBufStratagy);
        
        if(eBufStratagy == HI_DRV_VPSS_BUFFUL_PAUSE 
            || eBufStratagy == HI_DRV_VPSS_BUFFUL_BUTT)
        {
            VPSS_INFO("Inst %d OUT Buf Is FULL.\n",pstInstance->ID);
            return HI_FALSE;
        }
    }
    pstInstance->u32BufSucCnt ++;
    return HI_TRUE;
    
}


HI_DRV_VIDEO_FRAME_S *VPSS_INST_GetUndoImage(VPSS_INSTANCE_S *pstInstance)
{
    VPSS_IMAGE_NODE_S *pstImgNode;
    VPSS_IMAGELIST_INFO_S *pstImgListInfo;
    
    pstImgListInfo = &(pstInstance->stSrcImagesList);
    

    VPSS_OSAL_DownLock(&(pstImgListInfo->stFulListLock));
    if((pstImgListInfo->pstTarget_1)->next != &(pstImgListInfo->stFulImageList))
    {
        pstImgNode = list_entry((pstImgListInfo->pstTarget_1)->next, VPSS_IMAGE_NODE_S, node);

        VPSS_OSAL_UpLock(&(pstImgListInfo->stFulListLock));
        
                    
        return &(pstImgNode->stSrcImage);
    }
    else
    {
        VPSS_FATAL("Wrong VPSS_INST_GetUndoImage.\n");
        VPSS_OSAL_UpLock(&(pstImgListInfo->stFulListLock));
        return HI_NULL;
    }
       
}

HI_U32 u32LastPts;
HI_U32 u32Tmp;
HI_S32 VPSS_INST_CompleteUndoImage(VPSS_INSTANCE_S *pstInstance)
{
    VPSS_IMAGELIST_INFO_S* pstImgInfo;
    
    pstImgInfo = &(pstInstance->stSrcImagesList);

    VPSS_OSAL_DownLock(&(pstImgInfo->stFulListLock));

    if ((pstImgInfo->pstTarget_1)->next != &(pstImgInfo->stFulImageList))
    {
        pstImgInfo->pstTarget_1 = (pstImgInfo->pstTarget_1)->next;
    }   
    
    VPSS_OSAL_UpLock(&(pstImgInfo->stFulListLock));
    return HI_SUCCESS;
}

HI_S32 VPSS_INST_GetSrcListState(VPSS_INSTANCE_S* pstInstance,VPSS_IMAGELIST_STATE_S *pstListState)
{
    HI_U32 u32Count;
    HI_U32 u32Total;
    HI_U32 u32DoneFlag;
    VPSS_IMAGELIST_INFO_S *pstImgList;
    VPSS_IMAGE_NODE_S *pstImgNode;
    LIST *pos, *n;
    if(pstInstance == HI_NULL)
    {
        VPSS_FATAL("pstInstance is NULL\n");
        return HI_FAILURE;
    }
    pstImgList = &(pstInstance->stSrcImagesList);


    VPSS_OSAL_DownLock(&(pstImgList->stFulListLock));
    
    pstListState->u32Target = (HI_U32)list_entry(pstImgList->pstTarget_1, VPSS_IMAGE_NODE_S, node);
    if (pstImgList->pstTarget_1 == &(pstImgList->stFulImageList))
    {
        u32DoneFlag = 2;
    }
    else
    {
        u32DoneFlag = 1;
    }
    u32Count = 0;
    u32Total = 0;
    list_for_each_safe(pos, n, &(pstImgList->stFulImageList))
    {
        pstImgNode = list_entry(pos, VPSS_IMAGE_NODE_S, node);
        
        pstListState->u32FulList[u32Count] = (HI_U32)pstImgNode;
        pstListState->u32List[u32Total][0] = pstImgNode->stSrcImage.u32FrameIndex;
        pstListState->u32List[u32Total][1] = u32DoneFlag;

        if (pstListState->u32Target == (HI_U32)pstImgNode)
        {
            u32DoneFlag = 2;
        }
        u32Count++;
        u32Total++;
        
    }
    VPSS_OSAL_UpLock(&(pstImgList->stFulListLock));

    pstListState->u32FulListNumb = u32Count;
    
    u32Count = 0;
    VPSS_OSAL_DownLock(&(pstImgList->stEmptyListLock));
    list_for_each_safe(pos, n, &(pstImgList->stEmptyImageList))
    {
        pstImgNode = list_entry(pos, VPSS_IMAGE_NODE_S, node);
        pstListState->u32EmptyList[u32Count] = (HI_U32)pstImgNode;

        pstListState->u32List[u32Total][0] = -1;
        pstListState->u32List[u32Total][1] = 0;
        u32Count++;
        u32Total++;
    }
    VPSS_OSAL_UpLock(&(pstImgList->stEmptyListLock));
    
    pstListState->u32EmptyListNumb = u32Count;
    
    if (u32Total != VPSS_SOURCE_MAX_NUMB)
    {
        VPSS_FATAL("SrcList Proc Error.\n");
    }

    pstListState->u32TotalNumb = pstListState->u32EmptyListNumb
                                + pstListState->u32FulListNumb;
    
    pstListState->u32GetUsrTotal = pstImgList->u32GetUsrTotal;
    pstListState->u32GetUsrSuccess = pstImgList->u32GetUsrSuccess;
    pstListState->u32RelUsrTotal = pstImgList->u32RelUsrTotal;
    pstListState->u32RelUsrSuccess = pstImgList->u32RelUsrSuccess;
    return HI_SUCCESS;                            
}

HI_S32 VPSS_INST_GetPortListState(VPSS_INSTANCE_S* pstInstance,VPSS_HANDLE hPort,HI_DRV_VPSS_PORT_BUFLIST_STATE_S *pstListState)
{
    VPSS_PORT_S *pstPort;
    VPSS_FB_INFO_S *pstFrameList;
    VPSS_FB_STATE_S stFbState;
    HI_S32 s32Ret;

    pstPort = HI_NULL;
    pstPort = VPSS_INST_GetPort(pstInstance,hPort); 
    
    if(!pstPort)
    {   
        return HI_FAILURE;
    }
    pstFrameList = &(pstPort->stFrmInfo);

    s32Ret = VPSS_FB_GetState(pstFrameList, &(stFbState));

    if(HI_SUCCESS == s32Ret)
    {
        pstListState->u32TotalBufNumber = stFbState.u32TotalNumb;
        pstListState->u32FulBufNumber = stFbState.u32FulListNumb;
    }
    else
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_INST_GetFrmBuffer(VPSS_INSTANCE_S* pstInstance,VPSS_HANDLE hPort,
                    HI_DRV_VPSS_BUFLIST_CFG_S* pstBufCfg,VPSS_BUFFER_S *pstBuffer,
                    HI_U32 u32StoreH,HI_U32 u32StoreW)
{
    MMZ_BUFFER_S *pstMMZBuf;
    HI_S32 s32Ret;
    HI_DRV_VPSS_BUFFER_TYPE_E eBufferType;
    HI_DRV_VPSS_FRMBUF_S stFrmBuf;
    HI_U32 u32BufSize;   

    if(pstInstance == HI_NULL)
    {
        VPSS_FATAL("pstInstance is NULL\n");
        return HI_FAILURE;
    }
    eBufferType = pstBufCfg->eBufType;
    u32BufSize = pstBufCfg->u32BufSize;
    
    pstMMZBuf = &(pstBuffer->stMMZBuf);
    if(pstInstance->pfUserCallBack == HI_NULL)
    {
        VPSS_FATAL("pfUserCallBack is NULL\n");
        return HI_FAILURE;
    }
    stFrmBuf.hPort = hPort;
    stFrmBuf.u32Size = pstBufCfg->u32BufSize;
    stFrmBuf.u32Stride = pstBufCfg->u32BufStride;
    stFrmBuf.u32FrmH = u32StoreH;
    stFrmBuf.u32FrmW = u32StoreW;
    s32Ret = pstInstance->pfUserCallBack(pstInstance->hDst,VPSS_EVENT_GET_FRMBUFFER,&stFrmBuf);

    if(s32Ret == HI_SUCCESS)
    {
        pstMMZBuf->u32Size = stFrmBuf.u32Size;
        pstMMZBuf->u32StartPhyAddr = stFrmBuf.u32StartPhyAddr;
        pstMMZBuf->u32StartVirAddr= stFrmBuf.u32StartVirAddr;
        pstBuffer->u32Stride = stFrmBuf.u32Stride;
    }
    
    return s32Ret;
}

HI_S32 VPSS_INST_RelFrmBuffer(VPSS_INSTANCE_S* pstInstance,VPSS_HANDLE  hPort,
                                HI_DRV_VPSS_BUFLIST_CFG_S   *pstBufCfg,
                                MMZ_BUFFER_S *pstMMZBuf)
{
    HI_S32 s32Ret;
    HI_DRV_VPSS_FRMBUF_S stFrmBuf;

    if(pstInstance == HI_NULL)
    {
        VPSS_FATAL("pstInstance is NULL\n");
        return HI_FAILURE;
    }

    if(pstInstance->pfUserCallBack == HI_NULL)
    {
        VPSS_FATAL("pfUserCallBack is NULL\n");
        return HI_FAILURE;
    }
    stFrmBuf.hPort = hPort;
    stFrmBuf.u32Size = pstBufCfg->u32BufSize;
    stFrmBuf.u32Stride = pstBufCfg->u32BufStride;

    stFrmBuf.u32Size = pstMMZBuf->u32Size;
    stFrmBuf.u32StartPhyAddr = pstMMZBuf->u32StartPhyAddr;
    stFrmBuf.u32StartVirAddr = pstMMZBuf->u32StartVirAddr;
    
    s32Ret = pstInstance->pfUserCallBack(pstInstance->hDst,VPSS_EVENT_REL_FRMBUFFER,&stFrmBuf);

    if(s32Ret == HI_SUCCESS)
    {
        memset(pstMMZBuf,0,sizeof(MMZ_BUFFER_S));
    }
    
    return s32Ret;
}

HI_S32 VPSS_INST_ReportNewFrm(VPSS_INSTANCE_S* pstInstance,
                                VPSS_HANDLE  hPort,HI_DRV_VIDEO_FRAME_S *pstFrm)
{
    HI_S32 s32Ret;
    HI_DRV_VPSS_FRMINFO_S stFrmInfo;

    if(pstInstance == HI_NULL)
    {
        VPSS_FATAL("pstInstance is NULL\n");
        return HI_FAILURE;
    }

    if(pstInstance->pfUserCallBack == HI_NULL)
    {
        VPSS_FATAL("pfUserCallBack is NULL\n");
        return HI_FAILURE;
    }
    stFrmInfo.hPort = hPort;
    memcpy(&(stFrmInfo.stFrame),pstFrm,sizeof(HI_DRV_VIDEO_FRAME_S));
				
    s32Ret = pstInstance->pfUserCallBack(pstInstance->hDst,VPSS_EVENT_NEW_FRAME,&stFrmInfo);
    
    return s32Ret;
}

HI_S32 VPSS_INST_GetFieldAddr(LIST *pNode,
                                HI_DRV_VID_FRAME_ADDR_S *pstFieldAddr,
                                HI_DRV_BUF_ADDR_E eLReye,
                                HI_RECT_S *pstInRect)
{
    
    VPSS_IMAGE_NODE_S *pstTarget;
    HI_DRV_VIDEO_FRAME_S *pstImg;

    #if DEF_VPSS_VERSION_1_0
    HI_U32 u32InHeight;
    HI_U32 u32InWidth;
    #endif
    
    pstTarget = list_entry(pNode,VPSS_IMAGE_NODE_S, node);
    pstImg = &(pstTarget->stSrcImage);
    
    memcpy(pstFieldAddr,&(pstImg->stBufAddr[eLReye]),
                        sizeof(HI_DRV_VID_FRAME_ADDR_S));
#if DEF_VPSS_VERSION_1_0
    if (pstInRect->s32X == 0 && pstInRect->s32Y == 0 
        && pstInRect->s32Height == 0 && pstInRect->s32Width == 0)
    {
        memcpy(pstFieldAddr,&(pstImg->stBufAddr[eLReye]),
                        sizeof(HI_DRV_VID_FRAME_ADDR_S));
    }        
    else
    {
        u32InHeight = (pstInRect->s32Height + 7) / 8 * 8;
        u32InWidth  = pstInRect->s32Width;
        memcpy(pstFieldAddr,&(pstImg->stBufAddr[eLReye]),
                        sizeof(HI_DRV_VID_FRAME_ADDR_S));
        if (pstImg->ePixFormat == HI_DRV_PIX_FMT_NV12 
            || pstImg->ePixFormat == HI_DRV_PIX_FMT_NV21)
        {
            pstFieldAddr->u32PhyAddr_Y = 
                pstImg->stBufAddr[eLReye].u32PhyAddr_Y 
                + pstImg->stBufAddr[eLReye].u32Stride_Y * pstInRect->s32Y + pstInRect->s32X;
            pstFieldAddr->u32PhyAddr_C = 
                pstImg->stBufAddr[eLReye].u32PhyAddr_C 
                + pstImg->stBufAddr[eLReye].u32Stride_C * pstInRect->s32Y / 2 + pstInRect->s32X;
            
        }
        else if(pstTarget->stSrcImage.ePixFormat == HI_DRV_PIX_FMT_NV16_2X1 
                || pstTarget->stSrcImage.ePixFormat == HI_DRV_PIX_FMT_NV61_2X1)
        {
            pstFieldAddr->u32PhyAddr_Y = 
                pstImg->stBufAddr[eLReye].u32PhyAddr_Y 
                + pstImg->stBufAddr[eLReye].u32Stride_Y * pstInRect->s32Y + pstInRect->s32X;
            pstFieldAddr->u32PhyAddr_C = 
                pstImg->stBufAddr[eLReye].u32PhyAddr_C 
                + pstImg->stBufAddr[eLReye].u32Stride_C * pstInRect->s32Y + pstInRect->s32X;
        }
        else
        {
            VPSS_FATAL("InCropError\n");
        }
    }

    if(pstTarget->stSrcImage.enFieldMode == HI_DRV_FIELD_BOTTOM)
    {
        pstFieldAddr->u32PhyAddr_Y = pstFieldAddr->u32PhyAddr_Y + pstFieldAddr->u32Stride_Y;
        pstFieldAddr->u32PhyAddr_C= pstFieldAddr->u32PhyAddr_C + pstFieldAddr->u32Stride_C;
    }
    if (pstTarget->stSrcImage.bProgressive == HI_TRUE)
    {
        if (pstTarget->stSrcImage.enFieldMode == HI_DRV_FIELD_ALL)
        {
            pstFieldAddr->u32Stride_Y = pstFieldAddr->u32Stride_Y;
            pstFieldAddr->u32Stride_C = pstFieldAddr->u32Stride_C;
        }
        else
        {
            pstFieldAddr->u32Stride_Y = 2* pstFieldAddr->u32Stride_Y;
            pstFieldAddr->u32Stride_C = 2* pstFieldAddr->u32Stride_C;
        }
    }
    else
    {
        pstFieldAddr->u32Stride_Y = 2* pstFieldAddr->u32Stride_Y;
        pstFieldAddr->u32Stride_C = 2* pstFieldAddr->u32Stride_C;
    }
#endif
    
    return HI_SUCCESS;
}
HI_S32 VPSS_INST_GetDeiAddr(VPSS_INSTANCE_S* pstInstance,
                            HI_DRV_VID_FRAME_ADDR_S *pstFieldAddr,
                            HI_DRV_VPSS_DIE_MODE_E eDeiMode,
                            HI_DRV_BUF_ADDR_E eLReye)
{
    LIST *pNode;
    VPSS_IMAGELIST_INFO_S *pstImageList;
    HI_RECT_S stInRect;
    VPSS_IMAGE_NODE_S *pstTarget;
    HI_DRV_VIDEO_FRAME_S *pstImg;
    HI_DRV_VID_FRAME_ADDR_S stAddr[6];
    pstImageList = &(pstInstance->stSrcImagesList);

    memset(stAddr,0,sizeof(HI_DRV_VID_FRAME_ADDR_S)*6);

    pNode = pstImageList->pstTarget_1;
    if (pNode != &(pstImageList->stFulImageList))
    {
        pstTarget = list_entry(pNode,VPSS_IMAGE_NODE_S, node);
        pstImg = &(pstTarget->stSrcImage);
    }
    else
    {
        VPSS_FATAL("Get Dei Addr Error\n");
        return HI_FAILURE;
    }
    
    if(pstInstance->stProcCtrl.bUseCropRect == HI_FALSE)
    {
        stInRect.s32Height = pstInstance->stProcCtrl.stInRect.s32Height / 2 * 2;
        stInRect.s32Width  = pstInstance->stProcCtrl.stInRect.s32Width;
        stInRect.s32X      = pstInstance->stProcCtrl.stInRect.s32X;
        stInRect.s32Y      = pstInstance->stProcCtrl.stInRect.s32Y;
    }
    else
    {
        stInRect.s32Height = (pstImg->u32Height
                             - pstInstance->stProcCtrl.stCropRect.u32TopOffset
                             - pstInstance->stProcCtrl.stCropRect.u32BottomOffset)/ 2 * 2;
        stInRect.s32Width  = pstImg->u32Width 
                             - pstInstance->stProcCtrl.stCropRect.u32LeftOffset
                             - pstInstance->stProcCtrl.stCropRect.u32RightOffset;
        stInRect.s32X      = pstInstance->stProcCtrl.stCropRect.u32LeftOffset;
        stInRect.s32Y      = pstInstance->stProcCtrl.stCropRect.u32TopOffset;
        
    }
    
    if ((stInRect.s32Width +stInRect.s32X) > pstImg->u32Width
            || (stInRect.s32Height + stInRect.s32Y) > pstImg->u32Height
            || stInRect.s32X < 0
            || stInRect.s32Y < 0)
    {
        stInRect.s32Width = 0;
        stInRect.s32Height = 0;
        stInRect.s32X = 0;
        stInRect.s32Y = 0;
    }
    
    switch(eDeiMode)
    {
        case HI_DRV_VPSS_DIE_DISABLE:
            break;
        case HI_DRV_VPSS_DIE_3FIELD:
        case HI_DRV_VPSS_DIE_4FIELD:
        case HI_DRV_VPSS_DIE_5FIELD:
            pNode = pstImageList->pstTarget_1;
            VPSS_INST_GetFieldAddr(pNode,&(stAddr[0]),eLReye,&stInRect);
                        
            pNode = pNode->next->next;
            if(pNode == &(pstImageList->stFulImageList))
            {
                VPSS_FATAL("GetDeiAddr Error 3\n");
            }
            VPSS_INST_GetFieldAddr(pNode,&(stAddr[3]),eLReye,&stInRect);
            
            pNode = pNode->next;
            VPSS_INST_GetFieldAddr(pNode,&(stAddr[4]),eLReye,&stInRect);   
                        
            pNode = pNode->next;
            VPSS_INST_GetFieldAddr(pNode,&(stAddr[5]),eLReye,&stInRect);   
            break;
        default:
            VPSS_FATAL("Dei Mode isn't supported\n");
            return HI_FAILURE;
            break;
    }
    memcpy(pstFieldAddr,stAddr,sizeof(HI_DRV_VID_FRAME_ADDR_S)*6);
    return HI_SUCCESS;
}


HI_S32 VPSS_INST_GetImgVc1Info(LIST *pNode,VPSS_ALG_VC1INFO_S *pstVc1Info)
{
    VPSS_IMAGE_NODE_S *pstTarget;
    HI_VDEC_PRIV_FRAMEINFO_S *pstVdecPriv;
    HI_DRV_VIDEO_PRIVATE_S *pstFrmPriv;
    HI_VDEC_VC1_RANGE_INFO_S *pstVdecVcInfo;
    
    pstTarget = list_entry(pNode,VPSS_IMAGE_NODE_S, node);

    pstFrmPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstTarget->stSrcImage.u32Priv[0]);
    pstVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S *)&(pstFrmPriv->u32Reserve[0]);
    pstVdecVcInfo = &(pstVdecPriv->stVC1RangeInfo);

    pstVc1Info->u8PicStructure = pstVdecVcInfo->u8PicStructure;     /**< 0: frame, 1: top, 2: bottom, 3: mbaff, 4: field pair */
    pstVc1Info->u8PicQPEnable = pstVdecVcInfo->u8PicQPEnable;
    pstVc1Info->u8ChromaFormatIdc = pstVdecVcInfo->u8ChromaFormatIdc;  /**< 0: yuv400, 1: yuv420 */
    pstVc1Info->u8VC1Profile = pstVdecVcInfo->u8VC1Profile;
    
    pstVc1Info->s32QPY = pstVdecVcInfo->s32QPY;
    pstVc1Info->s32QPU = pstVdecVcInfo->s32QPU;
    pstVc1Info->s32QPV = pstVdecVcInfo->s32QPV;
    pstVc1Info->s32RangedFrm = pstVdecVcInfo->s32RangedFrm;
    
    pstVc1Info->u8RangeMapYFlag = pstVdecVcInfo->u8RangeMapYFlag;
    pstVc1Info->u8RangeMapY = pstVdecVcInfo->u8RangeMapY;
    pstVc1Info->u8RangeMapUVFlag = pstVdecVcInfo->u8RangeMapUVFlag;
    pstVc1Info->u8RangeMapUV = pstVdecVcInfo->u8RangeMapUV;
    pstVc1Info->u8BtmRangeMapYFlag = pstVdecVcInfo->u8BtmRangeMapYFlag;
    pstVc1Info->u8BtmRangeMapY = pstVdecVcInfo->u8BtmRangeMapY;
    pstVc1Info->u8BtmRangeMapUVFlag = pstVdecVcInfo->u8BtmRangeMapUVFlag;
    pstVc1Info->u8BtmRangeMapUV = pstVdecVcInfo->u8BtmRangeMapUV;

    return HI_SUCCESS;
}

HI_S32 VPSS_INST_GetVc1Info(VPSS_INSTANCE_S* pstInstance,VPSS_ALG_VC1INFO_S *pstVc1Info,HI_DRV_VPSS_DIE_MODE_E eDeiMode)
{
    LIST *pNode;
    VPSS_IMAGELIST_INFO_S *pstImageList;
    VPSS_ALG_VC1INFO_S stInfo[3];
    VPSS_IMAGE_NODE_S *pstPreFieldNode;
    VPSS_IMAGE_NODE_S *pstCurFieldNode;
    pstImageList = &(pstInstance->stSrcImagesList);

    memset(stInfo,0,sizeof(VPSS_ALG_VC1INFO_S)*3);
    
    switch(eDeiMode)
    {
        case HI_DRV_VPSS_DIE_DISABLE:
            pNode = pstImageList->pstTarget_1->next;
            
            pstCurFieldNode = list_entry(pNode,VPSS_IMAGE_NODE_S, node);

            VPSS_INST_GetImgVc1Info(pNode,&(stInfo[1]));
            break;
        case HI_DRV_VPSS_DIE_5FIELD:
            pNode = pstImageList->pstTarget_1;
            
            pstPreFieldNode = list_entry(pNode,VPSS_IMAGE_NODE_S, node);
            
            pNode = pNode->next;
            pstCurFieldNode = list_entry(pNode,VPSS_IMAGE_NODE_S, node);

            pNode = pstImageList->pstTarget_1;
            
            if (pstPreFieldNode->stSrcImage.u32FrameIndex
                != pstCurFieldNode->stSrcImage.u32FrameIndex)
            {
                VPSS_INST_GetImgVc1Info(pNode,&(stInfo[0]));
                pNode = pNode->next->next;
                VPSS_INST_GetImgVc1Info(pNode,&(stInfo[1]));
                pNode = pNode->next;
                VPSS_INST_GetImgVc1Info(pNode,&(stInfo[2]));   
            }
            else
            {
                VPSS_INST_GetImgVc1Info(pNode,&(stInfo[0]));
                pNode = pNode->next->next;
                VPSS_INST_GetImgVc1Info(pNode,&(stInfo[1]));
                pNode = pNode->next->next;
                VPSS_INST_GetImgVc1Info(pNode,&(stInfo[2]));
            }
            break;
        default:
            VPSS_FATAL("Dei Mode isn't supported\n");
            return HI_FAILURE;
            break;
    }
    memcpy(pstVc1Info,stInfo,sizeof(VPSS_ALG_VC1INFO_S)*3);
    return HI_SUCCESS;
}



HI_S32 VPSS_INST_CorrectImgListOrder(VPSS_INSTANCE_S* pstInstance,HI_U32 u32RealTopFirst)
{
    LIST *pNode;
    VPSS_IMAGELIST_INFO_S *pstImageList;
    VPSS_IMAGE_NODE_S *pstPreFieldNode;
    VPSS_IMAGE_NODE_S *pstCurFieldNode;
    LIST *pPreNode;
    LIST *pNextNode;
    LIST *pos, *n;
    
    pstImageList = &(pstInstance->stSrcImagesList);

    if(u32RealTopFirst == pstInstance->u32RealTopFirst )
    {
        return HI_SUCCESS;
    }
     
    
    if(pstInstance->u32RealTopFirst == 0xffffffff)
    {
        pstInstance->u32RealTopFirst = u32RealTopFirst;
        return HI_SUCCESS;
    }

    /*bottom first  -> top first */
    /*
	 *   B T  B T B T
	 *     | 
	 *   T B (T B T B)
	 *
      */
    if(u32RealTopFirst == HI_TRUE)
    {
        pNode = pstImageList->pstTarget_1->next;
            
        pstCurFieldNode = list_entry(pNode,VPSS_IMAGE_NODE_S, node);
        if(pstCurFieldNode->stSrcImage.enFieldMode == HI_DRV_FIELD_BOTTOM)
        {
            VPSS_FATAL("Field Order Detect Error\n");
            return HI_FAILURE;
        }
   

        
    }
    /*top first -> bottom first */
    else
    {
        pNode = pstImageList->pstTarget_1->next;
            
        pstCurFieldNode = list_entry(pNode,VPSS_IMAGE_NODE_S, node);
        if(pstCurFieldNode->stSrcImage.enFieldMode == HI_DRV_FIELD_TOP)
        {
            VPSS_FATAL("Field Order Detect Error\n");
            return HI_FAILURE;
        }
    }

    for (pos = (pstImageList->stFulImageList).next, n = pos->next; 
            pos != &(pstImageList->stFulImageList);
            pos = pos->next, n = pos->next)
    {
        pPreNode = pos->prev;
        pNextNode = n->next;
        
        pstCurFieldNode = list_entry(n,VPSS_IMAGE_NODE_S, node);
        pstPreFieldNode = list_entry(pos,VPSS_IMAGE_NODE_S, node);
        if(pstCurFieldNode->stSrcImage.u32FrameIndex
           != pstCurFieldNode->stSrcImage.u32FrameIndex)
        {
            VPSS_FATAL("Field Order Detect Error\n");
        }
        
        if(pstImageList->pstTarget_1 == n)
        {
            VPSS_FATAL("Field Order Detect Error\n");
        }
        
        if(pstImageList->pstTarget_1 == pos)
        {
            pstImageList->pstTarget_1 = pos->next;
        }
        
        
        
        list_del_init(pos);
        list_del_init(n);

        n->next = pos;
        n->prev = pPreNode;
        pos->next = pNextNode;
        pos->prev = n;

        pPreNode->next = n;
        pNextNode->prev = pos;
    }
    pstInstance->u32RealTopFirst = u32RealTopFirst;
    return HI_SUCCESS;
}

HI_S32 VPSS_INST_CheckNeedRstDei(VPSS_INSTANCE_S *pstInstance,HI_DRV_VIDEO_FRAME_S *pCurImage)
{
    VPSS_IMAGE_NODE_S *pstPreImgNode;
    HI_DRV_VIDEO_FRAME_S *pPreImage;
    
    HI_DRV_VIDEO_PRIVATE_S *pstCurPriv;
    HI_VDEC_PRIV_FRAMEINFO_S *pstCurVdecPriv;
    
    HI_DRV_VIDEO_PRIVATE_S *pstPrePriv;
    HI_VDEC_PRIV_FRAMEINFO_S *pstPreVdecPriv;
    
    
    VPSS_IMAGELIST_INFO_S *pstSrcImagesList;

    pstCurPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pCurImage->u32Priv[0]);
    pstCurVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S *)&(pstCurPriv->u32Reserve[0]);


    if (pstCurPriv->u32LastFlag == DEF_HI_DRV_VPSS_LAST_ERROR_FLAG)
    {
        return HI_SUCCESS;
    }
    if (pCurImage->bProgressive == HI_TRUE)
    {
        return HI_SUCCESS;
    }
    pstSrcImagesList = &(pstInstance->stSrcImagesList);

    if ((pstSrcImagesList->stFulImageList.prev)
        != &(pstSrcImagesList->stFulImageList))
    {
        pstPreImgNode = 
            list_entry(pstSrcImagesList->stFulImageList.prev, VPSS_IMAGE_NODE_S, node);
        pPreImage = &(pstPreImgNode->stSrcImage);

        pstPrePriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pPreImage->u32Priv[0]);
        pstPreVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S *)&(pstPrePriv->u32Reserve[0]);

        if ((pPreImage->u32Width != pCurImage->u32Width)
            || (pPreImage->u32Height != pCurImage->u32Height)
            || (pPreImage->ePixFormat != pCurImage->ePixFormat)
            /*
            || (pstPreVdecPriv->u32YStride != pCrtVdecFrame->u32YStride)
            || (pstPreVdecPriv->enSampleType != pCrtVdecFrame->enSampleType)
            
            || (pstPreVdecPriv->enFieldMode != pCrtVdecFrame->enFieldMode)
            || (pstPreVdecPriv->bTopFieldFirst != pCrtVdecFrame->bTopFieldFirst)
                */)
        {
            pstInstance->u32NeedRstDei = HI_TRUE;
            pstInstance->u32RealTopFirst = 0xffffffff;
            
        }
        
    }
    else
    {
        pstInstance->u32NeedRstDei = HI_TRUE;
        pstInstance->u32RealTopFirst = 0xffffffff;
        
    }

    return HI_SUCCESS;
}
HI_S32 VPSS_INST_CorrectProgInfo(VPSS_INSTANCE_S *pstInstance,HI_DRV_VIDEO_FRAME_S *pImage)
{
    HI_DRV_VIDEO_PRIVATE_S *pstFrmPriv;
    HI_VDEC_PRIV_FRAMEINFO_S *pstVdecPriv;
    
    pstFrmPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pImage->u32Priv[0]);
    pstVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S *)&(pstFrmPriv->u32Reserve[0]);
	
	
    /*
    // belive VI, VI will give the right info  
    if (FRAME_SOURCE_VI == pFrameOptm->enFrameSrc) 
    {
        return ;
    }
    */
    if ( 0x2 == (pstVdecPriv->u8Marker &= 0x2)) 
    {
        pImage->bProgressive = HI_TRUE;
        return  HI_SUCCESS;
    }

    if ( pImage->u32Height > 1080 || pImage->u32Width > 1920) 
    {
        pImage->bProgressive = HI_TRUE;
        return  HI_SUCCESS;
    }
    
    if ( pImage->u32Height >= 1080 && pImage->u32Width >= 1920) 
    {
        if (pImage->u32FrameRate > 50000)
        {
            pImage->bProgressive = HI_TRUE;
            return  HI_SUCCESS;
        }
    }

    if (pImage->eFrmType == HI_DRV_FT_FPK)
    {
        pImage->bProgressive = HI_TRUE;
        return HI_SUCCESS;
    }
    
    if (pstFrmPriv->u32LastFlag == DEF_HI_DRV_VPSS_LAST_FRAME_FLAG
        || pstFrmPriv->u32LastFlag == DEF_HI_DRV_VPSS_LAST_ERROR_FLAG)
    {
        return HI_SUCCESS;
    }
    
    if (pImage->ePixFormat == HI_DRV_PIX_FMT_YUYV
        || pImage->ePixFormat == HI_DRV_PIX_FMT_YVYU
        || pImage->ePixFormat == HI_DRV_PIX_FMT_UYVY)
    {
        pImage->bProgressive = HI_TRUE;
        return HI_SUCCESS;
    }
    
    if(pstInstance->enProgInfo == HI_DRV_VPSS_PRODETECT_AUTO)
    {
        if (  (HI_UNF_VCODEC_TYPE_REAL8 == pstVdecPriv->entype)
                ||(HI_UNF_VCODEC_TYPE_REAL9 == pstVdecPriv->entype)
                ||(HI_UNF_VCODEC_TYPE_MPEG4 == pstVdecPriv->entype))
        {
            return HI_SUCCESS;
        }

        if(pstInstance->u32Rwzb > 0)
        {
            /* special HD bit-stream, according to discussion of algorithm (20110115),
             * employ way of trusting output system information.
             * Currently, it is used in HD output.
             */

            /* for 576i/p 480i/p CVBS output, employ interlaced read */
            if( (pstInstance->u32Rwzb == PAT_CCITT033)
                    || (pstInstance->u32Rwzb == PAT_CCITT18)
                    || (pstInstance->u32Rwzb == PAT_CBAR576_75)
                    || (pstInstance->u32Rwzb == PAT_CCIR3311)
                    || (pstInstance->u32Rwzb == PAT_MATRIX625)
                    || ((pstInstance->u32Rwzb >= PAT_CBAR576_75_B) && (pstInstance->u32Rwzb <= PAT_M576I_BOWTIE))
              )
            {
                pImage->bProgressive = HI_FALSE;
            }
            else if (pstInstance->u32Rwzb == PAT_720P50 || pstInstance->u32Rwzb == PAT_720P59)
            {
    			pImage->bProgressive = HI_TRUE;
                /*
                if (1 == OPTM_M_GetDispProgressive(HAL_DISP_CHANNEL_DHD))
                {
                    pFrame->enSampleType = VIDEO_SAMPLE_TYPE_PROGRESSIVE;
                }
                else
                {
                    pFrame->enSampleType = VIDEO_SAMPLE_TYPE_INTERLACE;
                }
                */
            }
            else
            {

            }

            /* special SD bit-stream, trust bit-stream information  */
        }    
        else if(pImage->u32Height == 720)
        {
            pImage->bProgressive = HI_TRUE;
        }
        /* un-trust bit-stream information  */
        else if(pImage->u32Height <= 576)
        {
            if ( (240 >= pImage->u32Height) && (320 >= pImage->u32Width) )
            {
                pImage->bProgressive = HI_TRUE;
            }
            else if (pImage->u32Height <= (pImage->u32Width * 9 / 14 ) ) 
            {
                // Rule: wide aspect ratio stream is normal progressive, we think that progressive info is correct.
            }
            else
            {
                pImage->bProgressive = HI_FALSE;
            }
        }
        else
        {

        }
    }
    else if (pstInstance->enProgInfo == HI_DRV_VPSS_PRODETECT_INTERLACE)
    {
        pImage->bProgressive = HI_FALSE;
    }
    else if(pstInstance->enProgInfo == HI_DRV_VPSS_PRODETECT_PROGRESSIVE)
    {
        pImage->bProgressive = HI_TRUE;
    }
    else
    {
        VPSS_FATAL("Invalid ProgInfo %d\n",pstInstance->enProgInfo);
    }
    

    return HI_SUCCESS;
}


HI_S32 VPSS_INST_ChangeInRate(VPSS_INSTANCE_S *pstInstance,HI_U32 u32InRate)
{
    HI_U32 u32HzRate; /*0 -- 100*/
    HI_U32 u32Count;
    VPSS_PORT_S *pstPort;

    
    u32HzRate = u32InRate / 1000;
    /**/
    if(u32HzRate < 10)
    {
        u32HzRate = 1;
    }
    else if(u32HzRate < 20)
    {
        u32HzRate = 10;
    }
    else if(u32HzRate < 30)
    {
        u32HzRate = 25;
    }
    else if(u32HzRate < 40)
    {
        u32HzRate = u32HzRate / 10 * 10;
    }
    else if(u32HzRate < 60)
    {
        u32HzRate = 50;
    }
    else
    {
        u32HzRate = u32HzRate / 10 * 10;
    }
    
    if( u32HzRate == pstInstance->u32InRate)
    {
        return HI_SUCCESS;
    }
    else
    {
        pstInstance->u32InRate = u32HzRate;
    }
    
    for(u32Count = 0; u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER; u32Count ++)
    {
        pstPort = &(pstInstance->stPort[u32Count]);
        if (pstPort->s32PortId != VPSS_INVALID_HANDLE)
        {
            pstPort->u32OutCount = 0;
            
        }
    }
    return HI_SUCCESS;
}


HI_BOOL VPSS_INST_CheckIsDropped(VPSS_INSTANCE_S *pstInstance,HI_U32 u32OutRate,HI_U32 u32OutCount)
{
    HI_U32 u32Multiple;
    HI_U32 u32Quote;
    HI_BOOL bDropped;

    bDropped = HI_FALSE;
    
    if(pstInstance->u32InRate < u32OutRate || u32OutRate == 0)
    {
         bDropped = HI_FALSE;
    }
    else
    {
        u32Multiple = pstInstance->u32InRate*10 / u32OutRate;

        u32Quote = (u32Multiple + 5)/10;

        if(u32OutCount % u32Quote == 1)
        {
            bDropped = HI_TRUE;
        }
        else
        {
            bDropped = HI_FALSE;
        }
    }

    return bDropped;
}


HI_BOOL VPSS_INST_CheckAllDone(VPSS_INSTANCE_S *pstInstance)
{
    VPSS_IMAGELIST_INFO_S *pstImgListInfo;
    VPSS_PORT_S *pstPort;
    VPSS_FB_INFO_S *pstFrmListInfo;
    HI_U32 u32Count;
    HI_BOOL bDone;

    pstImgListInfo = &(pstInstance->stSrcImagesList);
    bDone = HI_TRUE;
    
    /*
     *check image all done
     */
    VPSS_OSAL_DownLock(&(pstImgListInfo->stFulListLock));
    if ( pstImgListInfo->pstTarget_1 != pstImgListInfo->stFulImageList.prev)
    {
        bDone = HI_FALSE;
    }
    else
    {
        bDone = HI_TRUE;
    }
    VPSS_OSAL_UpLock(&(pstImgListInfo->stFulListLock));

    if (bDone == HI_TRUE)
    {
        /*
         *check all outframe acquired
         */
        for(u32Count = 0; u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER;u32Count ++)
        {
            pstPort = &(pstInstance->stPort[u32Count]);
            if(pstPort->s32PortId != VPSS_INVALID_HANDLE)
            {
                pstFrmListInfo = &(pstPort->stFrmInfo);
                VPSS_OSAL_DownSpin(&(pstFrmListInfo->stFulBufSpin));
                if (pstFrmListInfo->pstTarget_1 != pstFrmListInfo->stFulFrmList.prev)
                {
                    bDone = HI_FALSE;
                }
                VPSS_OSAL_UpSpin(&(pstFrmListInfo->stFulBufSpin));
            }
        }
    }
    else
    {

    }
    

    return bDone;
}

HI_BOOL VPSS_INST_CheckPortBuffer(VPSS_INSTANCE_S *pstInstance,VPSS_HANDLE hPort)
{
    VPSS_PORT_S *pstPort;
    VPSS_FB_INFO_S *pstFrmListInfo;
    HI_BOOL bAvailable = HI_FALSE;
    VPSS_FB_NODE_S *pstFrmNode;
    HI_DRV_VIDEO_FRAME_S *pstFrm;
    LIST *pstNextNode;
    pstPort = HI_NULL;

    pstPort = VPSS_INST_GetPort(pstInstance,hPort);
    
    if(!pstPort)
    {
        return HI_FAILURE;
    }
    pstFrmListInfo = &(pstPort->stFrmInfo);
    VPSS_OSAL_DownSpin(&(pstFrmListInfo->stFulBufSpin));

    pstNextNode = (pstFrmListInfo->pstTarget_1)->next;
    if (pstNextNode != &(pstFrmListInfo->stFulFrmList))
    {
        pstFrmNode = list_entry(pstNextNode,
                        VPSS_FB_NODE_S, node);
        pstFrm = &(pstFrmNode->stOutFrame);
        
        if(pstFrm->eFrmType == HI_DRV_FT_NOT_STEREO)
        {
            bAvailable = HI_TRUE;
        }
        else
        {
			if(pstNextNode->next != &(pstFrmListInfo->stFulFrmList))
            {
				bAvailable = HI_TRUE;
            }
            else
            {
                bAvailable = HI_FALSE;
            }
        }
    }
    else
    {
        bAvailable = HI_FALSE;
    }
    VPSS_OSAL_UpSpin(&(pstFrmListInfo->stFulBufSpin));

    return bAvailable;
}

HI_S32 VPSS_INST_SyncUsrCfg(VPSS_INSTANCE_S * pstInstance)
{
    HI_RECT_S *pstInstInCrop;
    HI_RECT_S *pstCfgInCrop;
    HI_DRV_CROP_RECT_S *pstInstUsrCrop;
    HI_DRV_CROP_RECT_S *pstCfgUsrCrop;
    HI_DRV_VPSS_CFG_S *pstInstUsrcCfg;
    HI_U32 u32Count;
    VPSS_PORT_S *pstPort;
    HI_DRV_VPSS_PORT_CFG_S *pstPortCfg;
    unsigned long flags;

    if(!spin_trylock_irqsave(&(pstInstance->stUsrSetSpin.irq_lock), flags))
    {
        return HI_FAILURE;
    }
    
    if(pstInstance->u32IsNewCfg)
    {
        pstInstUsrcCfg = &(pstInstance->stUsrInstCfg);
    
        pstInstance->s32Priority = pstInstUsrcCfg->s32Priority;  
        pstInstance->bAlwaysFlushSrc = pstInstUsrcCfg->bAlwaysFlushSrc;
        
        pstInstance->enProgInfo = pstInstUsrcCfg->enProgInfo;
        
        pstInstInCrop = &(pstInstance->stProcCtrl.stInRect);
        pstCfgInCrop= &(pstInstUsrcCfg->stProcCtrl.stInRect);

       
        if (pstInstUsrcCfg->stProcCtrl.bUseCropRect == HI_FALSE
            &&(pstInstInCrop->s32Height != pstCfgInCrop->s32Height
            || pstInstInCrop->s32Width != pstCfgInCrop->s32Width
            || pstInstInCrop->s32X != pstCfgInCrop->s32X
            || pstInstInCrop->s32Y != pstCfgInCrop->s32Y))
        {
            pstInstance->u32NeedRstDei = HI_TRUE;
            pstInstance->u32RealTopFirst = 0xffffffff;      
        }
        
        pstInstUsrCrop = &(pstInstance->stProcCtrl.stCropRect);
        pstCfgUsrCrop = &(pstInstUsrcCfg->stProcCtrl.stCropRect);
        
        if(pstInstUsrcCfg->stProcCtrl.bUseCropRect == HI_TRUE
            &&(pstInstUsrCrop->u32BottomOffset != pstCfgUsrCrop->u32BottomOffset
            || pstInstUsrCrop->u32TopOffset != pstCfgUsrCrop->u32TopOffset
            || pstInstUsrCrop->u32LeftOffset != pstCfgUsrCrop->u32LeftOffset
            || pstInstUsrCrop->u32RightOffset != pstCfgUsrCrop->u32RightOffset))
        {
            pstInstance->u32NeedRstDei = HI_TRUE;
            pstInstance->u32RealTopFirst = 0xffffffff;     
        }

        pstInstance->stProcCtrl = pstInstUsrcCfg->stProcCtrl;


       
        for(u32Count = 0; 
            u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER;
            u32Count ++)
        {
            pstPort = &(pstInstance->stPort[u32Count]);
            
            if(pstPort->s32PortId != VPSS_INVALID_HANDLE)
            {
                pstPortCfg = &(pstInstance->stUsrPortCfg[u32Count]);

                pstPort->eFormat = pstPortCfg->eFormat; 
                pstPort->s32OutputWidth = pstPortCfg->s32OutputWidth;
                pstPort->s32OutputHeight = pstPortCfg->s32OutputHeight;
                pstPort->eDstCS = pstPortCfg->eDstCS;
                pstPort->stDispPixAR = pstPortCfg->stDispPixAR;
                pstPort->eAspMode = pstPortCfg->eAspMode;
                pstPort->stCustmAR = pstPortCfg->stCustmAR;
                pstPort->stScreen = pstPortCfg->stScreen;
                pstPort->bInterlaced = pstPortCfg->bInterlaced;

                pstPort->bTunnelEnable = pstPortCfg->bTunnelEnable;
                pstPort->s32SafeThr = pstPortCfg->s32SafeThr;   
                pstPort->u32MaxFrameRate = pstPortCfg->u32MaxFrameRate; 

                pstPort->b3Dsupport = pstPortCfg->b3Dsupport;
                pstPort->stFrmInfo.stBufListCfg = pstPortCfg->stBufListCfg;
                pstPort->stProcCtrl = pstPortCfg->stProcCtrl;
            }
        }
        
        pstInstance->u32IsNewCfg = HI_FALSE;

    }
    else
    {

    }
    spin_unlock_irqrestore(&(pstInstance->stUsrSetSpin.irq_lock), flags);
    
    for(u32Count = 0; 
        u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER;
        u32Count ++)
    {
        pstPort = &(pstInstance->stPort[u32Count]);
        
        if(pstPort->s32PortId != VPSS_INVALID_HANDLE)
        {
            if (pstPort->stFrmInfo.stBufListCfg.eBufType
                    == HI_DRV_VPSS_BUF_VPSS_ALLOC_MANAGE)
            {
                if (pstPort->b3Dsupport == HI_TRUE)
                {
                    VPSS_FB_AllocExtBuffer(&(pstPort->stFrmInfo),
                            pstPort->stFrmInfo.stBufListCfg.u32BufNumber);
                }
                else
                {
                    VPSS_FB_AllocExtBuffer(&(pstPort->stFrmInfo),0);
                }

                VPSS_FB_RlsExtBuffer(&(pstPort->stFrmInfo));
            }
        }
    }
    
    return HI_SUCCESS;
}


HI_S32 VPSS_INST_GetPortPrc(VPSS_INSTANCE_S* pstInstance,VPSS_HANDLE hPort,VPSS_PORT_PRC_S *pstPortPrc)
{
    VPSS_PORT_S *pstPort;
    pstPort = HI_NULL;

    if (hPort == VPSS_INVALID_HANDLE)
    {
        memset(pstPortPrc,0,sizeof(VPSS_PORT_PRC_S));
        pstPortPrc->s32PortId = VPSS_INVALID_HANDLE;
    }
    else
    {
        pstPort = VPSS_INST_GetPort(pstInstance,hPort);
        if (pstPort == HI_NULL)
        {
            VPSS_FATAL("Get Port Proc Error.\n");
            return HI_FAILURE;
        }
        pstPortPrc->s32PortId = pstPort->s32PortId ;
        pstPortPrc->bEnble = pstPort->bEnble ;
        pstPortPrc->eFormat = pstPort->eFormat ;
        pstPortPrc->s32OutputWidth = pstPort->s32OutputWidth ;
        pstPortPrc->s32OutputHeight = pstPort->s32OutputHeight ;
        pstPortPrc->eDstCS = pstPort->eDstCS ;
        pstPortPrc->stDispPixAR = pstPort->stDispPixAR ;
        pstPortPrc->eAspMode = pstPort->eAspMode ;
        pstPortPrc->stCustmAR = pstPort->stCustmAR ;
        pstPortPrc->bInterlaced = pstPort->bInterlaced ;
        pstPortPrc->stScreen = pstPort->stScreen ;
        pstPortPrc->u32MaxFrameRate = pstPort->u32MaxFrameRate ;
        pstPortPrc->u32OutCount = pstPort->u32OutCount ;
        pstPortPrc->stProcCtrl = pstPort->stProcCtrl ;
        pstPortPrc->bTunnelEnable = pstPort->bTunnelEnable ;
        pstPortPrc->s32SafeThr = pstPort->s32SafeThr ;
        pstPortPrc->b3Dsupport = pstPort->b3Dsupport;
        pstPortPrc->stBufListCfg.eBufType = pstPort->stFrmInfo.stBufListCfg.eBufType;
        pstPortPrc->stBufListCfg.u32BufNumber = pstPort->stFrmInfo.stBufListCfg.u32BufNumber;
        pstPortPrc->stBufListCfg.u32BufSize = pstPort->stFrmInfo.stBufListCfg.u32BufSize;
        pstPortPrc->stBufListCfg.u32BufStride = pstPort->stFrmInfo.stBufListCfg.u32BufStride;

        VPSS_FB_GetState(&(pstPort->stFrmInfo),&(pstPortPrc->stFbPrc));
    }

    return HI_SUCCESS;
}


HI_S32 VPSS_INST_StoreDeiData(VPSS_INSTANCE_S *pstInstance,ALG_FMD_RTL_STATPARA_S *pstDeiData)
{
    VPSS_ALG_StoreDeiData((HI_U32)pstInstance->stAuInfo,pstDeiData);

    return HI_SUCCESS;
}

HI_S32 VPSS_INST_GetDeiData(VPSS_INSTANCE_S *pstInstance,ALG_FMD_RTL_STATPARA_S *pstDeiData)
{
    VPSS_ALG_GetDeiData((HI_U32)pstInstance->stAuInfo,pstDeiData);

    return HI_SUCCESS;
}


HI_BOOL VPSS_INST_Check_3D_Process(VPSS_INSTANCE_S *pstInstance)
{
    HI_U32 u32Count;
    VPSS_PORT_S *pstPort;
    HI_BOOL b3Dprocess = HI_TRUE;
    for(u32Count = 0; u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER; u32Count ++)
    {
        pstPort = &(pstInstance->stPort[u32Count]);
        if (pstPort->s32PortId != VPSS_INVALID_HANDLE
            && pstPort->bEnble == HI_TRUE)
        {
            b3Dprocess = b3Dprocess | pstPort->b3Dsupport;
        }
    }

    return b3Dprocess;
}


HI_S32 VPSS_INST_ReviseImage(VPSS_INSTANCE_S *pstInstance,HI_DRV_VIDEO_FRAME_S *pImage)
{
    /*1.Revise image height to 4X*/
    pImage->u32Height = 
            pImage->u32Height & 0xfffffffc; 
     /*
       * 2. 3d addr revise
       * SBS TAB read half image 
       * MVC read two addr
       */
    if(pImage->eFrmType == HI_DRV_FT_SBS)
    {
        memcpy(&(pImage->stBufAddr[1]),&(pImage->stBufAddr[0]),
                    sizeof(HI_DRV_VID_FRAME_ADDR_S));
        
        #if DEF_VPSS_VERSION_1_0            
        pImage->stBufAddr[HI_DRV_BUF_ADDR_RIGHT].u32PhyAddr_Y = 
                pImage->stBufAddr[HI_DRV_BUF_ADDR_LEFT].u32PhyAddr_Y + pImage->u32Width/2;
        pImage->stBufAddr[HI_DRV_BUF_ADDR_RIGHT].u32PhyAddr_C = 
                pImage->stBufAddr[HI_DRV_BUF_ADDR_LEFT].u32PhyAddr_C + pImage->u32Width/2;
        #endif
    }

    if(pImage->eFrmType == HI_DRV_FT_TAB)
    {
        memcpy(&(pImage->stBufAddr[1]),&(pImage->stBufAddr[0]),
                    sizeof(HI_DRV_VID_FRAME_ADDR_S));
        
        #if DEF_VPSS_VERSION_1_0          
        pImage->stBufAddr[HI_DRV_BUF_ADDR_RIGHT].u32PhyAddr_Y = 
                pImage->stBufAddr[HI_DRV_BUF_ADDR_LEFT].u32PhyAddr_Y 
                + pImage->stBufAddr[HI_DRV_BUF_ADDR_LEFT].u32Stride_Y * pImage->u32Height/2;
        pImage->stBufAddr[HI_DRV_BUF_ADDR_RIGHT].u32PhyAddr_C = 
                pImage->stBufAddr[HI_DRV_BUF_ADDR_LEFT].u32PhyAddr_C
                + pImage->stBufAddr[HI_DRV_BUF_ADDR_LEFT].u32Stride_C * pImage->u32Height/4;
        #endif
    }
    /*
     *revise frame rate
     */
    if (pImage->u32FrameRate == 0)
    {
        pImage->u32FrameRate = 25000;
    }
    
    /*
     * if not top/bottom Interleaved,force Split
     */
    if (pImage->enFieldMode != HI_DRV_FIELD_ALL)
    {
        pImage->bProgressive = HI_TRUE;
    }
    return HI_SUCCESS;
}
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */
