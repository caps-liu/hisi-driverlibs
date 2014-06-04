/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_hdmi.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/11/3
  Description   :
  History       :
  1.Date        : 2010/11/3
    Author      : l00168554
    Modification: Created file

*******************************************************************************/


#ifndef __MPI_HDMI_H__
#define __MPI_HDMI_H__

#include "hi_unf_hdmi.h"
#include "hi_unf_disp.h"
#include "hi_drv_hdmi.h"
#include "hi_drv_disp.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"
{
#endif
#endif

HI_S32 HI_MPI_HDMI_Init(void);
HI_S32 HI_MPI_HDMI_DeInit(void);
HI_S32 HI_MPI_HDMI_Open(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_HDMI_OPEN_PARA_S *pstOpenPara);
HI_S32 HI_MPI_HDMI_Close(HI_UNF_HDMI_ID_E enHdmi);
HI_S32 HI_MPI_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_SINK_CAPABILITY_S *pstSinkCap);
HI_S32 HI_MPI_HDMI_SetAttr(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_ATTR_S *pstAttr);
HI_S32 HI_MPI_HDMI_GetAttr(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_ATTR_S *pstAttr);
HI_S32 HI_MPI_HDMI_SetCECCommand(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_CEC_CMD_S  *pCECCmd);
HI_S32 HI_MPI_HDMI_GetCECCommand(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_CEC_CMD_S  *pCECCmd, HI_U32 timeout);
HI_S32 HI_MPI_HDMI_CECStatus(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_CEC_STATUS_S  *pStatus);
HI_S32 HI_MPI_HDMI_CEC_Enable(HI_UNF_HDMI_ID_E enHdmi);
HI_S32 HI_MPI_HDMI_CEC_Disable(HI_UNF_HDMI_ID_E enHdmi);
HI_S32 HI_MPI_HDMI_SetInfoFrame(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_INFOFRAME_S *pstInfoFrame);
HI_S32 HI_MPI_HDMI_GetInfoFrame(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_INFOFRAME_TYPE_E enInfoFrameType, HI_UNF_HDMI_INFOFRAME_S *pstInfoFrame);
HI_S32 HI_MPI_HDMI_Start(HI_UNF_HDMI_ID_E enHdmi);
HI_S32 HI_MPI_HDMI_Stop(HI_UNF_HDMI_ID_E enHdmi);
HI_S32 HI_MPI_HDMI_SetDeepColor(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_DEEP_COLOR_E enDeepColor);
HI_S32 HI_MPI_HDMI_GetDeepColor(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_DEEP_COLOR_E *penDeepColor);
HI_S32 HI_MPI_HDMI_SetxvYCCMode(HI_UNF_HDMI_ID_E enHdmi, HI_BOOL bEnalbe);
HI_S32 HI_MPI_HDMI_SetAVMute(HI_UNF_HDMI_ID_E enHdmi, HI_BOOL bAvMute);

HI_S32 HI_MPI_HDMI_AVMute(void);
HI_S32 HI_MPI_HDMI_AVUnMute(void);
//HI_S32 HI_MPI_HDMI_Pre_SetFormat(HI_DRV_DISP_FMT_E enEncodingFormat);
//HI_S32 HI_MPI_HDMI_SetFormat(HI_DRV_DISP_FMT_E enEncodingFormat);
//HI_S32 HI_MPI_HDMI_AudioChange(HI_UNF_HDMI_ID_E enHdmi, HDMI_AUDIO_ATTR_S *pstHDMIAOAttr);
//HI_S32 HI_MPI_HDMI_PlayStus(HI_UNF_HDMI_ID_E enHdmi, HI_U32 *pu32Stutus);
HI_S32 HI_MPI_HDMI_Force_GetEDID(HI_UNF_HDMI_ID_E enHdmi, HI_U8 *u8Edid, HI_U32 *u32EdidLength);
HI_S32 HI_MPI_HDMI_ReadEDID(HI_U8 *u8Edid, HI_U32 *u32EdidLength);
HI_S32 HI_MPI_HDMI_RegCallbackFunc(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_CALLBACK_FUNC_S *pstCallbackFunc);
HI_S32 HI_MPI_HDMI_UnRegCallbackFunc(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_CALLBACK_FUNC_S *pstCallbackFunc);
HI_S32 HI_MPI_HDMI_LoadHDCPKey(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_LOAD_KEY_S *pstLoadKey);

//HI_S32 HI_MPI_AO_HDMI_SetAttr(HI_UNF_HDMI_ID_E enHdmi, HDMI_AUDIO_ATTR_S *pstHDMIAOAttr);
//HI_S32 HI_MPI_AO_HDMI_GetAttr(HI_UNF_HDMI_ID_E enHdmi, HDMI_AUDIO_ATTR_S *pstHDMIAOAttr);
#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif /* __MPI_HDMI_H__ */
