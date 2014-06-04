#include "vpss_debug.h"
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

HI_S32 VPSS_DBG_DbgInit(VPSS_DBG_S *pstDbg)
{
    HI_U32 u32Count;

    pstDbg->stInstDbg.unInfo.u32 = 0;
    /*TEST*/
    //pstDbg->stInstDbg.unInfo.bits.imginfo = 1;
    
    for(u32Count = 0; u32Count < DEF_HI_DRV_VPSS_PORT_MAX_NUMBER; u32Count++)
    {
        pstDbg->stPortDbg[u32Count].unInfo.u32 = 0;
        //pstDbg->stPortDbg[u32Count].unInfo.bits.frameinfo = 1;
    }
    
    return HI_SUCCESS;
}

HI_S32 VPSS_DBG_DbgDeInit(VPSS_DBG_S *pstDbg)
{
    return HI_SUCCESS;
}
HI_S32 VPSS_DBG_SendDbgCmd(VPSS_DBG_S *pstDbg,VPSS_DBG_CMD_S *pstCmd)
{
    HI_U32  u32Count;
    VPSS_DBG_PORT_S *pstPortDbg;
    VPSS_DBG_INST_S *pstInstDbg;
    
    switch(pstCmd->enDbgType)
    {
        case DBG_W_YUV:
            switch(pstCmd->hDbgPart)
            {
                case DEF_DBG_SRC_ID:
                    pstInstDbg = &(pstDbg->stInstDbg);
                    pstInstDbg->unInfo.bits.writeyuv = HI_TRUE;
                    break;
                case DEF_DBG_PORT0_ID:
                    u32Count = 0;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.bits.writeyuv = HI_TRUE;
                    break;
                case DEF_DBG_PORT1_ID:
                    u32Count = 1;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.bits.writeyuv = HI_TRUE;
                    break;
                case DEF_DBG_PORT2_ID:
                    u32Count = 2;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.bits.writeyuv = HI_TRUE;
                    break;
                default:
                    break;
            }
            break;
        case DBG_INFO_FRM:
            switch(pstCmd->hDbgPart)
            {
                case DEF_DBG_SRC_ID:
                    pstInstDbg = &(pstDbg->stInstDbg);
                    pstInstDbg->unInfo.bits.imginfo = HI_TRUE;
                    break;
                case DEF_DBG_PORT0_ID:
                    u32Count = 0;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.bits.frameinfo = HI_TRUE;
                    break;
                case DEF_DBG_PORT1_ID:
                    u32Count = 1;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.bits.frameinfo = HI_TRUE;
                    break;
                case DEF_DBG_PORT2_ID:
                    u32Count = 2;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.bits.frameinfo = HI_TRUE;
                    break;
                default:
                    break;
            }
            break;
        case DBG_INFO_ASP:
            switch(pstCmd->hDbgPart)
            {
                case DEF_DBG_PORT0_ID:
                    u32Count = 0;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.bits.asp = HI_TRUE;
                    break;
                case DEF_DBG_PORT1_ID:
                    u32Count = 1;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.bits.asp = HI_TRUE;
                    break;
                case DEF_DBG_PORT2_ID:
                    u32Count = 2;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.bits.asp = HI_TRUE;
                    break;
                default:
                    break;
            }
            break;
        case DBG_INFO_NONE:
            switch(pstCmd->hDbgPart)
            {
                case DEF_DBG_SRC_ID:
                    pstInstDbg = &(pstDbg->stInstDbg);
                    pstInstDbg->unInfo.u32 = 0;
                    break;
                case DEF_DBG_PORT0_ID:
                    u32Count = 0;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.u32 = 0;
                    break;
                case DEF_DBG_PORT1_ID:
                    u32Count = 1;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.u32 = 0;
                    break;
                case DEF_DBG_PORT2_ID:
                    u32Count = 2;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    pstPortDbg->unInfo.u32 = 0;
                    break;
                default:
                    break;
            }
            break;
        default:
            VPSS_FATAL("Cmd isn't Supported.\n");
    }

    return HI_SUCCESS;
}

HI_S32 VPSS_DBG_ReplyDbgCmd(VPSS_DBG_S *pstDbg,VPSS_DEBUG_E enCmd,HI_VOID* para1,HI_VOID* para2)
{
    HI_DRV_VIDEO_FRAME_S *pstFrm;
    HI_U32 u32Count;
    VPSS_HANDLE *phDbgPart;
    HI_U32 u32DbgPart;
    VPSS_DBG_PORT_S *pstPortDbg;
    ALG_RATIO_DRV_PARA_S *pstAspDrvPara;
    HI_DRV_VIDEO_FRAME_S stTmpFrm;
    HI_S8 chFile[DEF_FILE_NAMELENGTH];
    phDbgPart  = (VPSS_HANDLE *)para1;
    u32DbgPart = (HI_U32)*phDbgPart;
    switch (enCmd)
    {
        case DBG_W_YUV:
            pstFrm = (HI_DRV_VIDEO_FRAME_S *)para2;
            switch (u32DbgPart)
            {
                case DEF_DBG_SRC_ID:
                    if (pstDbg->stInstDbg.unInfo.bits.writeyuv)
                    {
                        HI_OSAL_Snprintf(chFile, 
                                DEF_FILE_NAMELENGTH, "%s", "vpss_src.yuv");
                        VPSS_OSAL_WRITEYUV(pstFrm, chFile);
                        if (pstFrm->eFrmType == HI_DRV_FT_FPK)
                        {
                            HI_OSAL_Snprintf(chFile, 
                                DEF_FILE_NAMELENGTH, "%s", "vpss_src_right.yuv");
                            memcpy(&stTmpFrm,pstFrm,sizeof(HI_DRV_VIDEO_FRAME_S));
                            memcpy(&(stTmpFrm.stBufAddr[0]),
                                   &(pstFrm->stBufAddr[1]),
                                   sizeof(HI_DRV_VID_FRAME_ADDR_S));
                            VPSS_OSAL_WRITEYUV(&stTmpFrm, chFile);
                        }
                        pstDbg->stInstDbg.unInfo.bits.writeyuv = HI_FALSE;
                    }
                    
                    break;
                case DEF_DBG_PORT0_ID:
                    u32Count = 0;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);

                    if (pstPortDbg->unInfo.bits.writeyuv)
                    {
                        HI_OSAL_Snprintf(chFile, 
                                DEF_FILE_NAMELENGTH, "%s", "vpss_port0.yuv");
                        VPSS_OSAL_WRITEYUV(pstFrm, chFile);
                        if (pstFrm->eFrmType == HI_DRV_FT_FPK)
                        {
                            HI_OSAL_Snprintf(chFile, 
                                DEF_FILE_NAMELENGTH, "%s", "vpss_port0_right.yuv");
                            memcpy(&stTmpFrm,pstFrm,sizeof(HI_DRV_VIDEO_FRAME_S));
                            memcpy(&(stTmpFrm.stBufAddr[0]),
                                   &(pstFrm->stBufAddr[1]),
                                   sizeof(HI_DRV_VID_FRAME_ADDR_S));
                            VPSS_OSAL_WRITEYUV(&stTmpFrm, chFile);
                        }
                        pstPortDbg->unInfo.bits.writeyuv = HI_FALSE;
                    }
                    break;
                case DEF_DBG_PORT1_ID:
                    u32Count = 1;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    if (pstPortDbg->unInfo.bits.writeyuv)
                    {
                        HI_OSAL_Snprintf(chFile, 
                                DEF_FILE_NAMELENGTH, "%s", "vpss_port1.yuv");
                        VPSS_OSAL_WRITEYUV(pstFrm, chFile);
                        if (pstFrm->eFrmType == HI_DRV_FT_FPK)
                        {
                            HI_OSAL_Snprintf(chFile, 
                                DEF_FILE_NAMELENGTH, "%s", "vpss_port1_right.yuv");
                            memcpy(&stTmpFrm,pstFrm,sizeof(HI_DRV_VIDEO_FRAME_S));
                            memcpy(&(stTmpFrm.stBufAddr[0]),
                                   &(pstFrm->stBufAddr[1]),
                                   sizeof(HI_DRV_VID_FRAME_ADDR_S));
                            VPSS_OSAL_WRITEYUV(&stTmpFrm, chFile);
                        }
                        pstPortDbg->unInfo.bits.writeyuv = HI_FALSE;
                    }
                    break;
                case DEF_DBG_PORT2_ID:
                    u32Count = 2;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    if (pstPortDbg->unInfo.bits.writeyuv)
                    {
                        HI_OSAL_Snprintf(chFile, 
                                DEF_FILE_NAMELENGTH, "%s", "vpss_port2.yuv");
                        VPSS_OSAL_WRITEYUV(pstFrm, chFile);
                        if (pstFrm->eFrmType == HI_DRV_FT_FPK)
                        {
                            HI_OSAL_Snprintf(chFile, 
                                DEF_FILE_NAMELENGTH, "%s", "vpss_port2_right.yuv");
                            memcpy(&stTmpFrm,pstFrm,sizeof(HI_DRV_VIDEO_FRAME_S));
                            memcpy(&(stTmpFrm.stBufAddr[0]),
                                   &(pstFrm->stBufAddr[1]),
                                   sizeof(HI_DRV_VID_FRAME_ADDR_S));
                            VPSS_OSAL_WRITEYUV(&stTmpFrm, chFile);
                        }
                        pstPortDbg->unInfo.bits.writeyuv = HI_FALSE;
                    }
                    break;
                default:
                    VPSS_FATAL("Invalid para2 %#x\n",u32DbgPart);
                    break;
            }
            break;
        case DBG_INFO_FRM:
            pstFrm = (HI_DRV_VIDEO_FRAME_S *)para2;
            switch (u32DbgPart)
            {
                case DEF_DBG_SRC_ID:
                    if (pstDbg->stInstDbg.unInfo.bits.imginfo)
                    {
                        HI_DRV_VIDEO_PRIVATE_S *pstPriv;
                        HI_VDEC_PRIV_FRAMEINFO_S *pstVdecPriv;
                        pstPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstFrm->u32Priv[0]);
                        pstVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S *)&(pstPriv->u32Reserve[0]);
                        
                        HI_PRINT("Image Info:Index %d Type %d Format %d W %d H %d Prog %d FieldMode %d PTS %d Rate %d LastFlag %d Delta %d CodeType %d\n"
                                 "           L:Y %#x C %#x YH %#x CH %#x YS %d CS %d \n"
                                 "           R:Y %#x C %#x YH %#x CH %#x YS %d CS %d \n",
                                pstFrm->u32FrameIndex,
                                pstFrm->eFrmType,
                                pstFrm->ePixFormat,
                                pstFrm->u32Width,
                                pstFrm->u32Height,
                                pstFrm->bProgressive,
                                pstFrm->enFieldMode,
                                pstFrm->u32Pts,
                                pstFrm->u32FrameRate,
                                pstPriv->u32LastFlag,
                                pstVdecPriv->s32InterPtsDelta,
                                pstVdecPriv->entype,
                                pstFrm->stBufAddr[0].u32PhyAddr_Y,
                                pstFrm->stBufAddr[0].u32PhyAddr_C,
                                pstFrm->stBufAddr[0].u32PhyAddr_YHead,
                                pstFrm->stBufAddr[0].u32PhyAddr_CHead,
                                pstFrm->stBufAddr[0].u32Stride_Y,
                                pstFrm->stBufAddr[0].u32Stride_C,
                                pstFrm->stBufAddr[1].u32PhyAddr_Y,
                                pstFrm->stBufAddr[1].u32PhyAddr_C,
                                pstFrm->stBufAddr[1].u32PhyAddr_YHead,
                                pstFrm->stBufAddr[1].u32PhyAddr_CHead,
                                pstFrm->stBufAddr[1].u32Stride_Y,
                                pstFrm->stBufAddr[1].u32Stride_C);
                    }
                    break;
                case DEF_DBG_PORT0_ID:
                    u32Count = 0;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    if (pstPortDbg->unInfo.bits.frameinfo)
                    {
                        HI_DRV_VIDEO_PRIVATE_S *pstPriv;
                        pstPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstFrm->u32Priv[0]);
                        
                        HI_PRINT("Frame Info:Index %d Type %d Format %d W %d H %d PTS %d Rate %d Cnt %d Fidelity %d u32LastFlag %d\n",
                                pstFrm->u32FrameIndex,
                                pstFrm->eFrmType,
                                pstFrm->ePixFormat,
                                pstFrm->u32Width,
                                pstFrm->u32Height,
                                pstFrm->u32Pts,
                                pstFrm->u32FrameRate,
                                pstPriv->u32FrmCnt,
                                pstPriv->u32Fidelity,
                                pstPriv->u32LastFlag);
                    }
                    break;
                case DEF_DBG_PORT1_ID:
                    u32Count = 1;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    if (pstPortDbg->unInfo.bits.frameinfo)
                    {
                        HI_DRV_VIDEO_PRIVATE_S *pstPriv;
                        pstPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstFrm->u32Priv[0]);
                        
                        HI_PRINT("Frame Info:Type %d Format %d W %d H %d PTS %d Rate %d Cnt %d Fidelity %d u32LastFlag %d\n",
                                pstFrm->eFrmType,
                                pstFrm->ePixFormat,
                                pstFrm->u32Width,
                                pstFrm->u32Height,
                                pstFrm->u32Pts,
                                pstFrm->u32FrameRate,
                                pstPriv->u32FrmCnt,
                                pstPriv->u32Fidelity,
                                pstPriv->u32LastFlag);
                    }
                    break;
                case DEF_DBG_PORT2_ID:
                    u32Count = 2;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    if (pstPortDbg->unInfo.bits.frameinfo)
                    {
                        HI_DRV_VIDEO_PRIVATE_S *pstPriv;
                        pstPriv = (HI_DRV_VIDEO_PRIVATE_S *)&(pstFrm->u32Priv[0]);
                        
                        HI_PRINT("Frame Info:Type %d Format %d W %d H %d PTS %d Rate %d Cnt %d Fidelity %d u32LastFlag %d\n",
                                pstFrm->eFrmType,
                                pstFrm->ePixFormat,
                                pstFrm->u32Width,
                                pstFrm->u32Height,
                                pstFrm->u32Pts,
                                pstFrm->u32FrameRate,
                                pstPriv->u32FrmCnt,
                                pstPriv->u32Fidelity,
                                pstPriv->u32LastFlag);
                    }
                    break;
                default:
                    VPSS_FATAL("Invalid para2 %#x\n",u32DbgPart);
                    break;
            }
            break;
        case DBG_INFO_ASP:
            pstAspDrvPara = (ALG_RATIO_DRV_PARA_S *)para2;
            switch (u32DbgPart)
            {
                case DEF_DBG_PORT0_ID:
                    u32Count = 0;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    if (pstPortDbg->unInfo.bits.asp)
                    {
                        HI_PRINT("Mode %d InWnd H %d W %d OutWnd H %d W %d "
                               "PicARH %d PicARW %d DevARH %d DevARW %d "
                               "bUsr %d UsrARH %d UsrARW %d\n",
                                pstAspDrvPara->eAspMode,
                                pstAspDrvPara->stInWnd.s32Height,
                                pstAspDrvPara->stInWnd.s32Width,
                                pstAspDrvPara->stOutWnd.s32Height,
                                pstAspDrvPara->stOutWnd.s32Width,
                                pstAspDrvPara->AspectHeight,
                                pstAspDrvPara->AspectWidth,
                                pstAspDrvPara->DeviceHeight,
                                pstAspDrvPara->DeviceWidth,
                                pstAspDrvPara->stUsrAsp.bUserDefAspectRatio,
                                pstAspDrvPara->stUsrAsp.u32UserAspectHeight,
                                pstAspDrvPara->stUsrAsp.u32UserAspectWidth);
                    }
                    break;
                case DEF_DBG_PORT1_ID:
                    u32Count = 1;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    if (pstPortDbg->unInfo.bits.asp)
                    {
                        HI_PRINT("Mode %d InWnd H %d W %d OutWnd H %d W %d "
                               "PicARH %d PicARW %d DevARH %d DevARW %d "
                               "bUsr %d UsrARH %d UsrARW %d\n",
                                pstAspDrvPara->eAspMode,
                                pstAspDrvPara->stInWnd.s32Height,
                                pstAspDrvPara->stInWnd.s32Width,
                                pstAspDrvPara->stOutWnd.s32Height,
                                pstAspDrvPara->stOutWnd.s32Width,
                                pstAspDrvPara->AspectHeight,
                                pstAspDrvPara->AspectWidth,
                                pstAspDrvPara->DeviceHeight,
                                pstAspDrvPara->DeviceWidth,
                                pstAspDrvPara->stUsrAsp.bUserDefAspectRatio,
                                pstAspDrvPara->stUsrAsp.u32UserAspectHeight,
                                pstAspDrvPara->stUsrAsp.u32UserAspectWidth);
                    }
                    break;
                case DEF_DBG_PORT2_ID:
                    u32Count = 2;
                    pstPortDbg = &(pstDbg->stPortDbg[u32Count]);
                    if (pstPortDbg->unInfo.bits.asp)
                    {
                        HI_PRINT("Mode %d InWnd H %d W %d OutWnd H %d W %d "
                               "PicARH %d PicARW %d DevARH %d DevARW %d "
                               "bUsr %d UsrARH %d UsrARW %d\n",
                                pstAspDrvPara->eAspMode,
                                pstAspDrvPara->stInWnd.s32Height,
                                pstAspDrvPara->stInWnd.s32Width,
                                pstAspDrvPara->stOutWnd.s32Height,
                                pstAspDrvPara->stOutWnd.s32Width,
                                pstAspDrvPara->AspectHeight,
                                pstAspDrvPara->AspectWidth,
                                pstAspDrvPara->DeviceHeight,
                                pstAspDrvPara->DeviceWidth,
                                pstAspDrvPara->stUsrAsp.bUserDefAspectRatio,
                                pstAspDrvPara->stUsrAsp.u32UserAspectHeight,
                                pstAspDrvPara->stUsrAsp.u32UserAspectWidth);
                    }
                    break;
                default:
                    VPSS_FATAL("Invalid para2 %#x\n",u32DbgPart);
                    break;
            }
            break;
        default:
            VPSS_FATAL("Invalid para1 cmd=%#x\n",enCmd);
            break;
    }

    return HI_SUCCESS;
}
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

