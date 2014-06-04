/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_drv_hdcp.h
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/

#ifndef __HI_DRV_HDCP_H__
#define __HI_DRV_HDCP_H__

#ifdef __cplusplus
extern "C" {
#endif  /* __cplusplus */

#define HI_FATAL_HDCP(fmt...)    HI_FATAL_PRINT  (HI_ID_HDCP, fmt)
#define HI_ERR_HDCP(fmt...)      HI_ERR_PRINT    (HI_ID_HDCP, fmt)
#define HI_WARN_HDCP(fmt...)     HI_WARN_PRINT   (HI_ID_HDCP, fmt)
#define HI_INFO_HDCP(fmt...)     HI_INFO_PRINT   (HI_ID_HDCP, fmt)

#ifdef __cplusplus
}
#endif  /* __cplusplus */

#endif

