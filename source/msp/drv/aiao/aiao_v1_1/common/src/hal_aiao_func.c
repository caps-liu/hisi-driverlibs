/*******************************************************************************
 *              Copyright 2004 - 2050, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: drv_aiao_func.c
 * Description: aiao interface of module.
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1    2012-09-22   z40717     NULL         init.
 ********************************************************************************/

#include <asm/setup.h>
#include <asm/io.h>
#include <mach/hardware.h>
#include <mach/platform.h>

#include "hi_type.h"
#include "hi_module.h"
#include "hi_drv_struct.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"
#include "hi_drv_mem.h"
#include "hi_drv_module.h"
#include "hi_drv_mmz.h"
#include "audio_util.h"

#include "hal_aiao_func.h"
#include "hal_aiao_priv.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */




static HI_VOID AIAOMmzName(AIAO_PORT_ID_E enPortID, HI_CHAR *pszMmzName, HI_U32 u32NameSize)
{
    HI_U32 ChnId = PORT2CHID(enPortID);

    switch (PORT2MODE(enPortID))
    {
    case AIAO_MODE_RXI2S:
        snprintf(pszMmzName, u32NameSize, "%s%02d", "aiao_rx", ChnId);
        break;
    case AIAO_MODE_TXI2S:
        snprintf(pszMmzName, u32NameSize, "%s%02d", "aiao_tx", ChnId);
        break;
    case AIAO_MODE_TXSPDIF:
        snprintf(pszMmzName, u32NameSize, "%s%02d", "aiao_sp", ChnId);
        break;
    }
}

static HI_U32 AIAOCalcBufferSize(HI_U32 *pu32PeriodBufSize, HI_U32 *pu32PeriodNumber)
{
    HI_U32 PeriodBufSize = *pu32PeriodBufSize;
    HI_U32 PeriodNumber = *pu32PeriodNumber;

    if (PeriodNumber > AIAO_BUFFER_PERIODNUM_MAX)
    {
        PeriodNumber = AIAO_BUFFER_PERIODNUM_MAX;
    }

    if (PeriodNumber < AIAO_BUFFER_PERIODNUM_MIN)
    {
        PeriodNumber = AIAO_BUFFER_PERIODNUM_MIN;
    }

    if (PeriodBufSize % AIAO_BUFFER_SIZE_ALIGN)
    {
        PeriodBufSize -= (PeriodBufSize % AIAO_BUFFER_SIZE_ALIGN);
    }

    if (PeriodBufSize < AIAO_BUFFER_PERIODSIZE_MIN)
    {
        PeriodBufSize = AIAO_BUFFER_PERIODSIZE_MIN;
    }

    if (PeriodBufSize > AIAO_BUFFER_PERIODSIZE_MAX)
    {
        PeriodBufSize = AIAO_BUFFER_PERIODSIZE_MAX;
    }

    *pu32PeriodBufSize = PeriodBufSize;
    *pu32PeriodNumber = PeriodNumber;

    return PeriodNumber * PeriodBufSize;
}

static HI_VOID PortBufFlush(AIAO_PORT_S hPort)
{
#if 0
    HI_VOID					AIAO_HW_GetBufu32Wptr(AIAO_PORT_ID_E enPortID, HI_U32 *pu32Wptr);
    HI_VOID					AIAO_HW_GetBufu32Rptr(AIAO_PORT_ID_E enPortID, HI_U32 *pu32Rptr);
#else
    hPort->stBuf.u32BUFF_RPTR = 0;
    hPort->stBuf.u32BUFF_WPTR = 0;
#endif
    AIAO_HW_SetBuf(hPort->enPortID, &hPort->stBuf);

    //memset(hPort->stCB.pu8Data, 0, hPort->stCB.u32Lenght);
    return;
}

static HI_S32 PortBufInit(AIAO_PORT_S hPort)
{
    AIAO_PORT_USER_CFG_S *pstConfig = &hPort->stUserCongfig;
    AIAO_BufAttr_S *pstBufConfig = &pstConfig->stBufConfig;
    HI_U32 u32WptrAddr, u32RptrAddr;
    HI_U32 uBufSize = AIAOCalcBufferSize(&pstBufConfig->u32PeriodBufSize, &pstBufConfig->u32PeriodNumber);
    HI_U32 u32StartVirAddr, u32StartPhyAddr;

    if(HI_TRUE==pstConfig->bExtDmaMem)
    {
        
        if(!pstConfig->stExtMem.u32BufPhyAddr || !pstConfig->stExtMem.u32BufVirAddr)
        {
            HI_FATAL_AIAO("PhyAddr(0x%x) VirAddr(0x%x) invalid \n", pstConfig->stExtMem.u32BufPhyAddr,pstConfig->stExtMem.u32BufVirAddr);
            return HI_FAILURE;
        }
        if(pstConfig->stExtMem.u32BufPhyAddr%AIAO_BUFFER_ADDR_ALIGN)
        {
            HI_FATAL_AIAO("PhyAddr(0x%x) should align to (0x%x) invalid \n", pstConfig->stExtMem.u32BufPhyAddr,AIAO_BUFFER_ADDR_ALIGN);
            return HI_FAILURE;
        }
        if(uBufSize > pstConfig->stExtMem.u32BufSize)
        {
            HI_FATAL_AIAO("ExtMem(0x%x) less than(0x%x) \n", pstConfig->stExtMem.u32BufSize,uBufSize);
            return HI_FAILURE;
        }
        u32StartPhyAddr = pstConfig->stExtMem.u32BufPhyAddr;
        u32StartVirAddr = pstConfig->stExtMem.u32BufVirAddr;
        

    }
    else
    {
        // step 1.0, MMZ
        AIAOMmzName(hPort->enPortID, hPort->szProcMmzName, sizeof(hPort->szProcMmzName));
        if (HI_SUCCESS
            != HI_DRV_MMZ_AllocAndMap(hPort->szProcMmzName, MMZ_OTHERS, uBufSize, AIAO_BUFFER_ADDR_ALIGN, &hPort->stMmz))
        {
            HI_FATAL_AIAO("Unable to mmz %s \n", hPort->szProcMmzName);
            return HI_FAILURE;
        }
        u32StartPhyAddr = hPort->stMmz.u32StartPhyAddr;
        u32StartVirAddr = hPort->stMmz.u32StartVirAddr;

    }
    AIAO_HW_GetRptrAndWptrRegAddr(hPort->enPortID, &u32WptrAddr, &u32RptrAddr);
    
    // step 2.0, CIRC BUf
    CIRC_BUF_Init(&hPort->stCB,
                  (HI_U32 *)(u32WptrAddr),
                  (HI_U32 *)(u32RptrAddr),
                  (HI_U32 *)u32StartVirAddr,
                  uBufSize
    );
    
    // step 3.0, AIAO CIRC BUf Reg
    hPort->stBuf.u32BUFF_SADDR = u32StartPhyAddr;
    hPort->stBuf.u32BUFF_WPTR = 0;
    hPort->stBuf.u32BUFF_RPTR = 0;
    hPort->stBuf.u32BUFF_SIZE = uBufSize;
    
    if (AIAO_DIR_TX == PORT2DIR(hPort->enPortID))
    {
        hPort->stBuf.u32PeriodBufSize = pstBufConfig->u32PeriodBufSize;
        hPort->stBuf.u32ThresholdSize = pstBufConfig->u32PeriodBufSize;
    }
    else
    {
        hPort->stBuf.u32PeriodBufSize = pstBufConfig->u32PeriodBufSize;
        hPort->stBuf.u32ThresholdSize = pstBufConfig->u32PeriodBufSize;
    }
    
    AIAO_HW_SetBuf(hPort->enPortID, &hPort->stBuf);
    return HI_SUCCESS;
}

static HI_VOID PortBufDeInit(AIAO_PORT_S hPort)
{
    CIRC_BUF_DeInit(&hPort->stCB);
    
    if(HI_TRUE!=hPort->stUserCongfig.bExtDmaMem)
    {
        HI_DRV_MMZ_UnmapAndRelease(&hPort->stMmz);
    }
}

static HI_VOID PortSetI2SAttr(AIAO_PORT_S hPort)
{
    AIAO_PORT_USER_CFG_S *pstConfig = &hPort->stUserCongfig;

    AIAO_HW_SetIfAttr(hPort->enPortID, &pstConfig->stIfAttr);

    return;
}

static HI_VOID PortSetUserDefaultCongfig(AIAO_PORT_S hPort)
{
    AIAO_PORT_ID_E enPortID = hPort->enPortID;
    AIAO_PORT_USER_CFG_S *pstConfig = &hPort->stUserCongfig;

    AIAO_HW_SetTrackMode(enPortID, pstConfig->enTrackMode);
    AIAO_HW_SetFadeInRate(enPortID, pstConfig->enFadeInRate);
    AIAO_HW_SetFadeOutRate(enPortID, pstConfig->enFadeOutRate);
    AIAO_HW_SetMuteFade(enPortID, pstConfig->bMuteFade);
    AIAO_HW_SetMute(enPortID, pstConfig->bMute);
    AIAO_HW_SetVolumedB(enPortID, pstConfig->u32VolumedB);
    AIAO_HW_SetBypass(enPortID, pstConfig->bByBass);
    return;
}

static HI_VOID PortResetProcStatus(AIAO_PORT_S hPort)
{
    AIAO_PROC_STAUTS_S *pstproc = &hPort->stStatus;

    memset(pstproc, 0, sizeof(AIAO_PROC_STAUTS_S));
    return;
}

static HI_S32 PortStart(AIAO_PORT_S hPort)
{
    AIAO_PORT_USER_CFG_S *pstConfig = &hPort->stUserCongfig;
    HI_S32 Ret;

    if (AIAO_PORT_STATUS_STOP == hPort->enStatus)
    {
        Ret = AIAO_HW_SetStart(hPort->enPortID, AIAO_START);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AIAO("AIAO_START error\n");
            return Ret;
        }

        hPort->enStatus = AIAO_PORT_STATUS_START;
    }
    else if (AIAO_PORT_STATUS_STOP_PENDDING == hPort->enStatus)
    {
        Ret = AIAO_HW_SetStart(hPort->enPortID, AIAO_STOP);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AIAO("AIAO_STOP error\n");
            return Ret;
        }

        PortBufFlush(hPort);

        //restore user mute setting
        AIAO_HW_SetMute(hPort->enPortID, pstConfig->bMute);
        Ret = AIAO_HW_SetStart(hPort->enPortID, AIAO_START);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AIAO("AIAO_START error\n");
            return Ret;
        }

        hPort->enStatus = AIAO_PORT_STATUS_START;
    }

    return HI_SUCCESS;
}

static HI_S32 PortStop(AIAO_PORT_S hPort, AIAO_PORT_STOPMODE_E enStopMode)
{
    AIAO_PORT_USER_CFG_S *pstConfig = &hPort->stUserCongfig;
    HI_S32 Ret;

    if (AIAO_STOP_FADEOUT == enStopMode)
    {
        enStopMode = AIAO_STOP_IMMEDIATE;
    }

    switch (hPort->enStatus)
    {
    case AIAO_PORT_STATUS_START:
#if  0      
        if (AIAO_STOP_FADEOUT == enStopMode)
        {
            /* dont stop immediately, just mute */
            AIAO_HW_SetMute(hPort->enPortID, 1);
            hPort->enStatus = AIAO_PORT_STATUS_STOP_PENDDING;
        }
        else
#endif            
        {
            /* stop immediately */
            Ret = AIAO_HW_SetStart(hPort->enPortID, AIAO_STOP);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AIAO("AIAO_STOP error\n");
                return Ret;
            }

            PortBufFlush(hPort);
            hPort->enStatus = AIAO_PORT_STATUS_STOP;
        }

        break;
    case AIAO_PORT_STATUS_STOP_PENDDING:
        if (AIAO_STOP_FADEOUT != enStopMode)
        {
            /* stop immediately */
            Ret = AIAO_HW_SetStart(hPort->enPortID, AIAO_STOP);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AIAO("AIAO_STOP error\n");
                return Ret;
            }

            PortBufFlush(hPort);

            //restore user mute setting
            AIAO_HW_SetMute(hPort->enPortID, pstConfig->bMute);
            hPort->enStatus = AIAO_PORT_STATUS_STOP;
        }

        break;
    case AIAO_PORT_STATUS_STOP:
        break;
    }

    if (AIAO_PORT_STATUS_STOP == hPort->enStatus)
    {
        PortResetProcStatus(hPort);
    }

    return HI_SUCCESS;
}

HI_S32 iHAL_AIAO_P_SelectSpdifSource(HI_HANDLE handle, AIAO_SPDIFPORT_SOURCE_E eSrcChnId)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);

    AIAO_HW_SetSPDIFPortSelect(hPort->enPortID, eSrcChnId);
    return HI_SUCCESS;
}

HI_S32 iHAL_AIAO_P_SetSpdifOutPort(HI_HANDLE handle, HI_S32 bEn)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);

    AIAO_HW_SetSPDIFPortEn(hPort->enPortID, bEn);
    return HI_SUCCESS;
}

HI_S32 iHAL_AIAO_P_SetI2SSdSelect(HI_HANDLE handle, AIAO_I2SDataSel_S  *pstSdSel)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);

    AIAO_HW_SetI2SDataSelect(hPort->enPortID, AIAO_I2S_SD0, pstSdSel->enSD0);
    AIAO_HW_SetI2SDataSelect(hPort->enPortID, AIAO_I2S_SD1, pstSdSel->enSD1);
    AIAO_HW_SetI2SDataSelect(hPort->enPortID, AIAO_I2S_SD2, pstSdSel->enSD2);
    AIAO_HW_SetI2SDataSelect(hPort->enPortID, AIAO_I2S_SD3, pstSdSel->enSD3);
    return HI_SUCCESS;
}

HI_S32 iHAL_AIAO_P_Start(HI_HANDLE handle)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);
    return PortStart(hPort);
}

HI_S32 iHAL_AIAO_P_Stop(HI_HANDLE handle, AIAO_PORT_STOPMODE_E enStopMode)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);
    return PortStop(hPort, enStopMode);
}

HI_S32 iHAL_AIAO_P_Mute(HI_HANDLE handle, HI_BOOL bMute)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    AIAO_PORT_USER_CFG_S *pstConfig;

    AIAO_ASSERT_NULL(hPort);
    pstConfig = &hPort->stUserCongfig;

    AIAO_HW_SetMute(hPort->enPortID, bMute);
    pstConfig->bMute = bMute;
    return HI_SUCCESS;
}

HI_S32 iHAL_AIAO_P_SetVolume(HI_HANDLE handle, HI_U32 u32VolumedB)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    AIAO_PORT_USER_CFG_S *pstConfig;

    AIAO_ASSERT_NULL(hPort);
    pstConfig = &hPort->stUserCongfig;

    AIAO_HW_SetVolumedB(hPort->enPortID, u32VolumedB);
    pstConfig->u32VolumedB = u32VolumedB;
    return HI_SUCCESS;
}

HI_S32 iHAL_AIAO_P_SetTrackMode(HI_HANDLE handle, AIAO_TRACK_MODE_E enTrackMode)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    AIAO_PORT_USER_CFG_S *pstConfig;

    AIAO_ASSERT_NULL(hPort);
    pstConfig = &hPort->stUserCongfig;

    AIAO_HW_SetTrackMode(hPort->enPortID, enTrackMode);
    pstConfig->enTrackMode = enTrackMode;
    return HI_SUCCESS;
}

HI_S32 iAIAO_HAL_P_SetBypass(HI_HANDLE handle, HI_BOOL bByBass)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    AIAO_PORT_USER_CFG_S *pstConfig;

    AIAO_ASSERT_NULL(hPort);
    pstConfig = &hPort->stUserCongfig;

    AIAO_HW_SetBypass(hPort->enPortID, bByBass);
    pstConfig->bByBass = bByBass;
    return HI_SUCCESS;
}
/*
typedef struct
{
    AIAO_IfAttr_S     stIfAttr;
    AIAO_BufAttr_S    stBufConfig;
} AIAO_PORT_ATTR_S;
*/

HI_S32 iHAL_AIAO_P_SetI2SMasterClk(AIAO_PORT_ID_E enPortID, AIAO_IfAttr_S *pstIfAttr)
{
    AIAO_HW_SetI2SMasterClk(enPortID, pstIfAttr);
    return HI_SUCCESS;
}

HI_S32 iHAL_AIAO_P_SetAttr(HI_HANDLE handle, AIAO_PORT_ATTR_S *pstAttr)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    AIAO_ASSERT_NULL(hPort);
    AIAO_ASSERT_NULL(pstAttr);

    //todo check attr
    if(AIAO_PORT_STATUS_STOP!=hPort->enStatus)
    {
        HI_FATAL_AIAO("hPort[0x%x] enStatus is not AIAO_PORT_STATUS_STOP\n", hPort->enPortID);        
    }
    
    
    // free buffer
    PortBufDeInit(hPort);

    memcpy(&hPort->stUserCongfig.stIfAttr, &pstAttr->stIfAttr, sizeof(AIAO_IfAttr_S));
    memcpy(&hPort->stUserCongfig.stBufConfig, &pstAttr->stBufConfig, sizeof(AIAO_BufAttr_S));

    // AIAO Buf Init
    if (HI_FAILURE == PortBufInit(hPort))
    {
        HI_FATAL_AIAO("PortBufInit failed\n");
        return HI_FAILURE;
    }

    // AIAO CRG/I2S
    PortSetI2SAttr(hPort);
    
    return HI_SUCCESS;
}

HI_S32 iHAL_AIAO_P_GetAttr(HI_HANDLE handle, AIAO_PORT_ATTR_S *pstAttr)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    AIAO_ASSERT_NULL(hPort);
    AIAO_ASSERT_NULL(pstAttr);


    memcpy(&pstAttr->stIfAttr,&hPort->stUserCongfig.stIfAttr, sizeof(AIAO_IfAttr_S));
    memcpy(&pstAttr->stBufConfig,&hPort->stUserCongfig.stBufConfig, sizeof(AIAO_BufAttr_S));
    return HI_SUCCESS;
}


HI_S32 iHAL_AIAO_P_Open(const AIAO_PORT_ID_E enPortID, const AIAO_PORT_USER_CFG_S *pstConfig, HI_HANDLE *phandle,AIAO_IsrFunc** pIsr)
{
    AIAO_PORT_S hPort = HI_NULL;

    AIAO_ASSERT_NULL(pstConfig);
    AIAO_ASSERT_NULL(phPort);

    // step 1 malloc AIAO_PORT_CTX_S
    hPort = AUTIL_AIAO_MALLOC(HI_ID_AIAO, sizeof(AIAO_PORT_CTX_S), GFP_KERNEL);
    if (hPort == HI_NULL)
    {
        HI_FATAL_AIAO("malloc AIAO_PORT_CTX_S failed\n");
        return HI_FAILURE;
    }

    memset(hPort, 0, sizeof(AIAO_PORT_CTX_S));
    memcpy(&hPort->stUserCongfig, pstConfig, sizeof(AIAO_PORT_USER_CFG_S));
    hPort->enPortID = enPortID;
    hPort->enStatus = AIAO_PORT_STATUS_STOP;

    // step 2 AIAO Buf Init
    if (HI_FAILURE == PortBufInit(hPort))
    {
        AUTIL_AIAO_FREE(HI_ID_AIAO, hPort);
        HI_FATAL_AIAO("PortBufInit failed\n");
        return HI_FAILURE;
    }

    // step 3 AIAO CRG/I2S
    PortSetI2SAttr(hPort);

    // step 3.1 AIAO interrupt setting

    if (AIAO_DIR_TX == PORT2DIR(hPort->enPortID))
    {
        AIAO_HW_SetInt(hPort->enPortID, (HI_U32)(1L << AIAO_TXINT0_BUF_TRANSFINISH));
    }
    else
    {
        AIAO_HW_SetInt(hPort->enPortID, (HI_U32)(1L << AIAO_RXINT0_BUF_TRANSFINISH));
    }

    // step 4 AIAO user default config
    PortSetUserDefaultCongfig(hPort);

    // step 5 AIAO init internal state
    PortResetProcStatus(hPort);

    *phandle = (HI_HANDLE)hPort;
    *pIsr = pstConfig->pIsrFunc;
    return HI_SUCCESS;
}


HI_VOID iHAL_AIAO_P_Close(HI_HANDLE handle)
{
    HI_S32 Ret;
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);

    // step 1 stop channel
    Ret = PortStop(hPort, AIAO_STOP_IMMEDIATE);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AIAO("PortStop error\n");
        return;
    }

    // step 1.1 AIAO interrupt setting
    if (AIAO_DIR_TX == PORT2DIR(hPort->enPortID))
    {
        AIAO_HW_ClrInt(hPort->enPortID, (HI_U32)AIAO_TXINT_ALL);
    }
    else
    {
        AIAO_HW_ClrInt(hPort->enPortID, (HI_U32)AIAO_RXINT_ALL);
    }

    // step 2 free buffer
    PortBufDeInit(hPort);

    // step 3 free dev sourece
    AUTIL_AIAO_FREE(HI_ID_AIAO, hPort);

    return;
}

HI_S32 iHAL_AIAO_P_GetUserCongfig(HI_HANDLE handle, AIAO_PORT_USER_CFG_S *pstUserConfig)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);
    AIAO_ASSERT_NULL(pstUserConfig);
    memcpy(pstUserConfig, &hPort->stUserCongfig, sizeof(AIAO_PORT_USER_CFG_S));
    return HI_SUCCESS;
}

HI_S32 iHAL_AIAO_P_GetStatus(HI_HANDLE handle, AIAO_PORT_STAUTS_S *pstStatus)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);
    memcpy(&pstStatus->stProcStatus, &hPort->stStatus, sizeof(AIAO_PROC_STAUTS_S));
    memcpy(&pstStatus->stUserConfig, &hPort->stUserCongfig, sizeof(AIAO_PORT_USER_CFG_S));
    memcpy(&pstStatus->stBuf, &hPort->stBuf, sizeof(AIAO_BufInfo_S));
    memcpy(&pstStatus->stCircBuf, &hPort->stCB, sizeof(CIRC_BUF_S));
    pstStatus->enStatus = hPort->enStatus;
    return HI_SUCCESS;
}


HI_S32 iHAL_AIAO_P_GetRbfAttr(HI_HANDLE handle, AIAO_RBUF_ATTR_S *pstRbfAttr)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);
    if(HI_TRUE==hPort->stUserCongfig.bExtDmaMem)
    {
        pstRbfAttr->u32BufPhyAddr = hPort->stUserCongfig.stExtMem.u32BufPhyAddr;
        pstRbfAttr->u32BufVirAddr = hPort->stUserCongfig.stExtMem.u32BufVirAddr;
        pstRbfAttr->u32BufSize    = hPort->stBuf.u32BUFF_SIZE;
        AIAO_HW_GetRptrAndWptrRegAddr(hPort->enPortID, &pstRbfAttr->u32BufVirWptr, &pstRbfAttr->u32BufVirRptr);
        AIAO_HW_GetRptrAndWptrRegPhyAddr(hPort->enPortID, &pstRbfAttr->u32BufPhyWptr, &pstRbfAttr->u32BufPhyRptr);
    }
    else
    {
        pstRbfAttr->u32BufPhyAddr = hPort->stMmz.u32StartPhyAddr;
        pstRbfAttr->u32BufVirAddr = hPort->stMmz.u32StartVirAddr;
        pstRbfAttr->u32BufSize    = hPort->stBuf.u32BUFF_SIZE;
        AIAO_HW_GetRptrAndWptrRegAddr(hPort->enPortID, &pstRbfAttr->u32BufVirWptr, &pstRbfAttr->u32BufVirRptr);
        AIAO_HW_GetRptrAndWptrRegPhyAddr(hPort->enPortID, &pstRbfAttr->u32BufPhyWptr, &pstRbfAttr->u32BufPhyRptr);

    }


    return HI_SUCCESS;

}

static HI_VOID AIAO_HAL_P_TxIsrProc(AIAO_PROC_STAUTS_S *pstProc, HI_U32 u32IntStatus)  //proc
{
    pstProc->uDMACnt++;

#if 1
    if (u32IntStatus & AIAO_TXINT1_BUF_EMPTY_MASK)
    {
        /* Ignore the buf empty INT at start beginning */
        if (pstProc->uBusFiFoEmptyCnt)
        {
            pstProc->uBufEmptyCnt++;
        }
    }

    if (u32IntStatus & AIAO_TXINT2_BUF_AEMPTY_MASK)
    {
        /* Ignore the buf allmost empty INT at start beginning */
        if (pstProc->uBusFiFoEmptyCnt)
        {
            pstProc->uBufEmptyWarningCnt++;
        }
    }
    else
    {
        if (u32IntStatus & AIAO_TXINT3_BUF_FIFOEMPTY_MASK)
        {
            pstProc->uBusTimeOutCnt++;
        }
    }

    if (u32IntStatus & AIAO_TXINT3_BUF_FIFOEMPTY_MASK)
    {
        pstProc->uBusFiFoEmptyCnt++;
    }

    if (u32IntStatus & AIAO_TXINT4_IF_FIFOEMPTY_MASK)
    {
        pstProc->uInfFiFoEmptyCnt++;
    }

    if (u32IntStatus & AIAO_TXINT7_DATA_BROKEN_MASK)
    {
        pstProc->uInfEmptyCntReal++;
    }
#endif

}

static HI_VOID AIAO_HAL_P_RxIsrProc(AIAO_PROC_STAUTS_S *pstProc, HI_U32 u32IntStatus)
{
    pstProc->uDMACnt++;
#if 1
    if (u32IntStatus & AIAO_RXINT1_BUF_FULL_MASK)
    {
        pstProc->uBufFullCnt++;
    }

    if (u32IntStatus & AIAO_TXINT2_BUF_AEMPTY_MASK)
    {
        pstProc->uBufFullWarningCnt++;
    }
    else
    {
        if (u32IntStatus & AIAO_TXINT3_BUF_FIFOEMPTY_MASK)
        {
            pstProc->uBusTimeOutCnt++;
        }
    }

    if (u32IntStatus & AIAO_TXINT3_BUF_FIFOEMPTY_MASK)
    {
        pstProc->uBusFiFoFullCnt++;
    }

    if (u32IntStatus & AIAO_TXINT4_IF_FIFOEMPTY_MASK)
    {
        pstProc->uInfFiFoFullCnt++;
    }
#endif

}

HI_VOID iHAL_AIAO_P_ProcStatistics(HI_HANDLE handle, HI_U32 u32IntStatus)
{
    AIAO_PROC_STAUTS_S *pstProc;
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);
    pstProc = &hPort->stStatus;
    if (AIAO_DIR_TX == PORT2DIR(hPort->enPortID))
    {
        AIAO_HAL_P_TxIsrProc(pstProc, u32IntStatus);
    }
    else
    {
        AIAO_HAL_P_RxIsrProc(pstProc, u32IntStatus);
    }
}

HI_U32 iHAL_AIAO_P_ReadData(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    CIRC_BUF_S *pstCB;
    AIAO_PROC_STAUTS_S *pstProc;
    HI_U32 Bytes = 0;

    AIAO_ASSERT_NULL(hPort);
    HI_ASSERT_RET(HI_NULL != pu32Dest);

    pstCB   = &hPort->stCB;
    pstProc = &hPort->stStatus;
    if (AIAO_PORT_STATUS_START == hPort->enStatus)
    {
        if (AIAO_DIR_RX == PORT2DIR(hPort->enPortID))
        {
            pstProc->uTryReadCnt++;
            Bytes = CIRC_BUF_Read(pstCB, pu32Dest, u32DestSize);
            pstProc->uTotalByteRead += Bytes;
        }
        else
        {
            HI_WARN_AIAO("AIAO Tx Buf can't been read.\n");
        }
    }

    return Bytes;
}

HI_U32 iHAL_AIAO_P_WriteData(HI_HANDLE handle, HI_U8 * pu32Src, HI_U32 u3SrcLen)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    CIRC_BUF_S *pstCB;
    AIAO_PROC_STAUTS_S *pstProc;
    HI_U32 Bytes = 0;

    AIAO_ASSERT_NULL(hPort);
    HI_ASSERT(HI_NULL != pu32Src);
    pstCB   = &hPort->stCB;
    pstProc = &hPort->stStatus;

    if (AIAO_PORT_STATUS_START == hPort->enStatus)
    {
        if (AIAO_DIR_TX == PORT2DIR(hPort->enPortID))
        {
            pstProc->uTryWriteCnt++;
            Bytes = CIRC_BUF_Write(pstCB, pu32Src, u3SrcLen);
            pstProc->uTotalByteWrite += Bytes;
        }
        else
        {
            HI_WARN_AIAO("AIAO Rx Buf can't been write.\n");
        }
    }
    else
    {
        HI_WARN_AIAO("AIAO Tx should been start before write.\n");
    }

    return Bytes;
}

HI_U32 iHAL_AIAO_P_PrepareData(HI_HANDLE handle, HI_U8 * pu32Src, HI_U32 u3SrcLen)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    CIRC_BUF_S *pstCB;
    AIAO_PORT_USER_CFG_S *pstConfig;
    AIAO_PROC_STAUTS_S *pstProc;
    HI_U32 Bytes = 0;
    HI_S32 Ret;

    AIAO_ASSERT_NULL(hPort);
    HI_ASSERT(HI_NULL != pu32Src);
    pstCB = &hPort->stCB;
    pstConfig = &hPort->stUserCongfig;
    pstProc = &hPort->stStatus;

    if (AIAO_DIR_TX == PORT2DIR(hPort->enPortID))
    {
        if (AIAO_PORT_STATUS_STOP_PENDDING == hPort->enStatus)
        {
            Ret = AIAO_HW_SetStart(hPort->enPortID, AIAO_STOP);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AIAO("AIAO_STOP error\n");
                return 0;
            }

            PortBufFlush(hPort);

            //restore user mute setting
            AIAO_HW_SetMute(hPort->enPortID, pstConfig->bMute);
            hPort->enStatus = AIAO_PORT_STATUS_STOP;
        }

        pstProc->uTryWriteCnt++;
        Bytes = CIRC_BUF_Write(pstCB, pu32Src, u3SrcLen);
        pstProc->uTotalByteWrite += Bytes;
    }
    else
    {
        HI_WARN_AIAO("AIAO Rx Buf can't been write.\n");
    }

    return Bytes;
}

HI_U32 iHAL_AIAO_P_QueryBufData(HI_HANDLE handle)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);
    return CIRC_BUF_QueryBusy(&hPort->stCB);
}

HI_U32 iHAL_AIAO_P_QueryBufFree(HI_HANDLE handle)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;

    AIAO_ASSERT_NULL(hPort);

    return CIRC_BUF_QueryFree(&hPort->stCB);
}

HI_VOID iHAL_AIAO_P_GetDelayMs(HI_HANDLE handle, HI_U32 * pu32Delayms)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    HI_U32 Bytes,u32FrameSize;
    AIAO_ASSERT_NULL(hPort);
    
    Bytes = CIRC_BUF_QueryBusy(&hPort->stCB);
    u32FrameSize = AUTIL_CalcFrameSize((HI_U32)hPort->stUserCongfig.stIfAttr.enChNum,(HI_U32)hPort->stUserCongfig.stIfAttr.enBitDepth);
    *pu32Delayms =  AUTIL_ByteSize2LatencyMs(Bytes, u32FrameSize, (HI_U32)hPort->stUserCongfig.stIfAttr.enRate);
}

HI_U32 iHAL_AIAO_P_UpdateRptr(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    CIRC_BUF_S *pstCB;
    AIAO_PROC_STAUTS_S *pstProc;
    HI_U32 Bytes = 0;

    AIAO_ASSERT_NULL(hPort);
    HI_ASSERT(HI_NULL != pu32Dest);

    pstCB   = &hPort->stCB;
    pstProc = &hPort->stStatus;
    if (AIAO_PORT_STATUS_START == hPort->enStatus)
    {
        if (AIAO_DIR_RX == PORT2DIR(hPort->enPortID))
        {
            pstProc->uTryReadCnt++;
            Bytes = CIRC_BUF_UpdateRptr(pstCB, pu32Dest, u32DestSize);
            pstProc->uTotalByteRead += Bytes;
        }
        else
        {
            HI_WARN_AIAO("AIAO Tx Buf can't been read.\n");
        }
    }

    return Bytes;
}

HI_U32 iHAL_AIAO_P_UpdateWptr(HI_HANDLE handle, HI_U8 * pu32Src, HI_U32 u3SrcLen)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    CIRC_BUF_S *pstCB;
    AIAO_PROC_STAUTS_S *pstProc;
    HI_U32 Bytes = 0;

    AIAO_ASSERT_NULL(hPort);
    HI_ASSERT(HI_NULL != pu32Src);
    pstCB   = &hPort->stCB;
    pstProc = &hPort->stStatus;

    if (AIAO_PORT_STATUS_START == hPort->enStatus)
    {
        if (AIAO_DIR_TX == PORT2DIR(hPort->enPortID))
        {
            pstProc->uTryWriteCnt++;
            Bytes = CIRC_BUF_UpdateWptr(pstCB, pu32Src, u3SrcLen);
            pstProc->uTotalByteWrite += Bytes;
        }
        else
        {
            HI_WARN_AIAO("AIAO Rx Buf can't been write.\n");
        }
    }
    else
    {
        HI_WARN_AIAO("AIAO Tx should been start before write.\n");
    }

    return Bytes;
}

HI_S32                  iHAL_AIAO_Init(HI_VOID)
{
    return AIAO_HW_Init();
}

HI_VOID                 iHAL_AIAO_DeInit(HI_VOID)
{
    AIAO_HW_DeInit();
}

HI_VOID                 iHAL_AIAO_GetHwCapability(HI_U32 *pu32Capability)
{
    AIAO_HW_GetHwCapability(pu32Capability);
}

HI_VOID                 iHAL_AIAO_GetHwVersion(HI_U32 *pu32Version)
{
    AIAO_HW_GetHwVersion(pu32Version);
}

HI_VOID                 iHAL_AIAO_DBG_RWReg(AIAO_Dbg_Reg_S *pstReg)
{
    AIAO_HW_DBG_RWReg(pstReg);
}

HI_VOID                 iHAL_AIAO_SetTopInt(HI_U32 u32Multibit)
{
    AIAO_HW_SetTopInt(u32Multibit);
}

HI_U32                  iHAL_AIAO_GetTopIntRawStatus(HI_VOID)
{
    return AIAO_HW_GetTopIntRawStatus();
}

HI_U32                  iHAL_AIAO_GetTopIntStatus(HI_VOID)
{
    return AIAO_HW_GetTopIntStatus();
}


HI_VOID					iHAL_AIAO_P_SetInt(AIAO_PORT_ID_E enPortID, HI_U32 u32Multibit)
{
    AIAO_HW_SetInt(enPortID,u32Multibit);
    
}

HI_VOID					iHAL_AIAO_P_ClrInt(AIAO_PORT_ID_E enPortID, HI_U32 u32Multibit)
{
    AIAO_HW_ClrInt(enPortID,u32Multibit);

}

HI_U32					iHAL_AIAO_P_GetIntStatusRaw(AIAO_PORT_ID_E enPortID)
{
    return AIAO_HW_GetIntStatusRaw(enPortID);
}

HI_U32					iHAL_AIAO_P_GetIntStatus(AIAO_PORT_ID_E enPortID)
{
    
    return iHAL_AIAO_P_GetIntStatus(enPortID);
}

#ifdef HI_ALSA_AI_SUPPORT
HI_U32 iHAL_AIAO_P_ALSA_QueryWritePos (HI_HANDLE handle)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    CIRC_BUF_S *pstCB;
    HI_U32 Bytes = 0;

    AIAO_ASSERT_NULL(hPort);
    pstCB   = &hPort->stCB;
    if (AIAO_PORT_STATUS_START == hPort->enStatus)
    {
            Bytes = CIRC_BUF_ALSA_QueryWritePos(pstCB);	
    }
    return Bytes;
}
HI_U32 iHAL_AIAO_P_ALSA_QueryReadPos (HI_HANDLE handle)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    CIRC_BUF_S *pstCB;
    HI_U32 Bytes = 0;
    AIAO_ASSERT_NULL(hPort);
    pstCB   = &hPort->stCB;
    if (AIAO_PORT_STATUS_START == hPort->enStatus)
    {
            Bytes = CIRC_BUF_ALSA_QueryReadPos(pstCB);	
    }
    return Bytes;
}
HI_U32 iHAL_AIAO_P_ALSA_UpdateRptr(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    CIRC_BUF_S *pstCB;
    AIAO_PROC_STAUTS_S *pstProc;
    HI_U32 Bytes = 0;
    AIAO_ASSERT_NULL(hPort);
    pstCB   = &hPort->stCB;
    pstProc = &hPort->stStatus;
    if (AIAO_PORT_STATUS_START == hPort->enStatus)
    {
            pstProc->uTryReadCnt++;
            Bytes = CIRC_BUF_ALSA_UpdateRptr(pstCB, pu32Dest, u32DestSize);
            pstProc->uTotalByteRead += Bytes;
        }
    return Bytes;
}
HI_U32 iHAL_AIAO_P_ALSA_UpdateWptr(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize)
        {
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    CIRC_BUF_S *pstCB;
    AIAO_PROC_STAUTS_S *pstProc;
    HI_U32 Bytes = 0;
    AIAO_ASSERT_NULL(hPort);
    pstCB   = &hPort->stCB;
    pstProc = &hPort->stStatus;
    if (AIAO_PORT_STATUS_START == hPort->enStatus)
    {
            pstProc->uTryReadCnt++;
            Bytes = CIRC_BUF_ALSA_UpdateWptr(pstCB,u32DestSize);
            pstProc->uTotalByteRead += Bytes;
    }
    return Bytes;
}
HI_U32 iHAL_AIAO_P_ALSA_FLASH(HI_HANDLE handle)
{
    AIAO_PORT_S hPort = (AIAO_PORT_S)handle;
    CIRC_BUF_S *pstCB; 
    AIAO_ASSERT_NULL(hPort);
    pstCB   = &hPort->stCB;
    if (AIAO_PORT_STATUS_START == hPort->enStatus)
            CIRC_BUF_ALSA_Flush(pstCB);

    return HI_TRUE;
}
#endif
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */
