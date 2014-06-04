/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_hdcp_ioctl.h
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
#ifndef __DRV_HDCP_IOCTL_H__
#define __DRV_HDCP_IOCTL_H__


#include "hi_type.h"
#include "hi_unf_hdcp.h"
#include "hi_debug.h"
#include "hi_drv_hdcp.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* End of #ifdef __cplusplus */

typedef struct hiOTP_HDCPKEY_S
{
	HI_U8 HdcpKey[320];
}OTP_HDCPKEY_S;

typedef struct
{
    HI_BOOL bIsUseOTPRootKey;
    HI_UNF_HDCP_HDCPKEY_S stHdcpKey;
    HI_U8 u8FlashEncryptedHdcpKey[332];
}OTP_HDCP_KEY_TRANSFER_S;

typedef struct
{
    HI_U32 u32Status;
}OTP_HDCPKEYSTATUS_S;

/* Ioctl definitions */
#define CMD_HDCP_ENCRYPTKEY 		_IOWR(HI_ID_HDCP, 0x01, OTP_HDCP_KEY_TRANSFER_S)

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

#endif /* End of #ifndef __DRV_HDCP_IOCTL_H__ */
