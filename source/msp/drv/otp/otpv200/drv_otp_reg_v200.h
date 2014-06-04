/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_otp_reg_v100.h
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
#ifndef __OTP_V200_REG_V200_H__
#define __OTP_V200_REG_V200_H__

#include "hi_common.h"
#include "hi_type.h"
#include "drv_otp_common.h"

/* OTP Address */
#ifdef CHIP_TYPE_hi3716mv300
#define OTP_V200_BASE_OFFSET        (0x10180000)
#else
#define OTP_V200_BASE_OFFSET        (0xF8AB0000)
#endif
#define OTP_V200_CHANNEL_SEL        (OTP_V200_BASE_OFFSET + 0x00)
#define OTP_V200_CPU_RW_CTRL        (OTP_V200_BASE_OFFSET + 0x04)
#define OTP_V200_WR_START           (OTP_V200_BASE_OFFSET + 0x08)
#define OTP_V200_CTRL_STATUS        (OTP_V200_BASE_OFFSET + 0x0c)
#define OTP_V200_RDATA              (OTP_V200_BASE_OFFSET + 0x10)
#define OTP_V200_WDATA              (OTP_V200_BASE_OFFSET + 0x14)
#define OTP_V200_RADDR              (OTP_V200_BASE_OFFSET + 0x18)
#define OTP_V200_WADDR              (OTP_V200_BASE_OFFSET + 0x1C)
#define OTP_V200_MODE               (OTP_V200_BASE_OFFSET + 0x20)


/* OTP Structure */
typedef union
{
    struct
    {
        HI_U32 channel_sel         : 2; // [0-1]
        HI_U32 reserved            : 30; // [2-31]
    } bits;
    HI_U32 u32;
} OTP_V200_CHANNEL_SEL_U; //Offset:0x00

typedef union
{
    struct
    {
        HI_U32 wr_sel              : 1; // [0]
        HI_U32 rd_enable           : 1; // [1]
        HI_U32 wr_enable           : 1; // [2]
        HI_U32 rsv                 : 1; // [3]
        HI_U32 cpu_size            : 2; // [4-5]
        HI_U32 reserved            : 26; // [6-31]
    } bits;
    HI_U32 u32;
} OTP_V200_CPU_RW_CTRL_U; //Offset:0x04

typedef union
{
    struct
    {
        HI_U32 start              : 1; // [0]
        HI_U32 reserved           : 31; // [1-31]
    } bits;
    HI_U32 u32;
} OTP_V200_WR_START_U; //Offset:0x08

typedef union
{
    struct
    {
        HI_U32 ctrl_ready          : 1; // [0]
        HI_U32 fail_flag           : 1; // [1]
        HI_U32 soak_flag           : 1; // [2]
        HI_U32 rsv                 : 1; // [3]
        HI_U32 r_lock              : 1; // [4]
        HI_U32 w_lock              : 1; // [5]
        HI_U32 reserved            : 26; // [6-31]
    } bits;
    HI_U32 u32;
} OTP_V200_CTRL_STATUS_U;//Offset:0x0c

typedef union
{
    struct
    {
        HI_U32 rdata0              : 8; // [0-7]
        HI_U32 rdata1              : 8; // [8-15]
        HI_U32 rdata2              : 8; // [16-23]
        HI_U32 rdata3              : 8; // [24-31]
    } bits;
    HI_U32 u32;
} OTP_V200_RDATA_U;//Offset:0x10

typedef union
{
    struct
    {
        HI_U32 wdata              : 32; // [0-31]
    } bits;
    HI_U32 u32;
} OTP_V200_WDATA_U;//Offset:0x14

typedef union
{
    struct
    {
        HI_U32 raddr              : 32;
    } bits;
    HI_U32 u32;
} OTP_V200_RADDR_U;//Offset:0x18

typedef union
{
    struct
    {
        HI_U32 waddr              : 32;
    } bits;
    HI_U32 u32;
} OTP_V200_WADDR_U;//Offset:0x1C

typedef union
{
    struct
    {
        HI_U32 max_soak_times      : 4; // [0-3]
        HI_U32 otp_time            : 4; // [4-7]
        HI_U32 soak_en             : 1; // [8]
        HI_U32 time_en             : 1; // [9]
        HI_U32 reserved            : 22; // [10-31]
    } bits;
    HI_U32 u32;
} OTP_V200_MODE_U;//Offset:0x20
/*
** OTP Permanence Value
*/
#define OTP_V200_INTERNAL_PV_0                 (0X00)
//dolby_flag,dts_flag
#define OTP_V200_INTERNAL_PV_1                 (0X04)
#define OTP_V200_INTERNAL_DATALOCK_0           (0X10)
#define OTP_V200_INTERNAL_DATALOCK_1           (0X14)
#define OTP_V200_INTERNAL_STB_ROOTKEY_0        (0X80)
#define OTP_V200_INTERNAL_STB_ROOTKEY_1        (0X84)
#define OTP_V200_INTERNAL_STB_ROOTKEY_2        (0X88)
#define OTP_V200_INTERNAL_STB_ROOTKEY_3        (0X8C)
#define OTP_V200_INTERNAL_STB_SN_1             (0X94)
#define OTP_V200_INTERNAL_STB_SN_2             (0X98)
#define OTP_V200_INTERNAL_STB_SN_3             (0X9C)
#define OTP_V200_INTERNAL_HDCP_ROOTKEY_0       (0XC0)
#define OTP_V200_INTERNAL_HDCP_ROOTKEY_1       (0XC4)
#define OTP_V200_INTERNAL_HDCP_ROOTKEY_2       (0XC8)
#define OTP_V200_INTERNAL_HDCP_ROOTKEY_3       (0XCC)
#define OTP_V200_INTERNAL_HDCP_DATA_BASE       (0X100)
#define OTP_V200_INTERNAL_CHECKSUMLOCK         (0x430)

#define OTP_V200_INTERNAL_CHECKSUM_STB_ROOT_KEY         (0x426)
#define OTP_V200_INTERNAL_CHECKSUM_HDCP_ROOT_KEY        (0x428)

typedef union
{
    struct
    {
        HI_U32 secure_chip_flag      : 1;//0x04[0]
        HI_U32 csa2_alg_sel          : 1;//0x04[1]
        HI_U32 r2r_alg_sel           : 1;//0x04[2]
        HI_U32 sp_alg_sel            : 1;//0x04[3]
        HI_U32 csa3_alg_sel          : 1;//0x04[4]
        HI_U32 dcas_kl_disable       : 1;//0x04[5]
        HI_U32 csa2_mode             : 1;//0x04[6]
        HI_U32 r2r_mode              : 1;//0x04[7]
        HI_U32 sp_mode               : 1;//0x05[0]
        HI_U32 csa3_mode             : 1;//0x05[1]
        HI_U32 uart_disable          : 1;//0x05[2]
        HI_U32 pcie_disable          : 1;//0x05[3]
        HI_U32 usb_disable           : 1;//0x05[4]
        HI_U32 sata_disable          : 1;//0x05[5]
        HI_U32 gmac_disable          : 1;//0x05[6]
        HI_U32 ts_out_disable        : 1;//0x05[7]
        HI_U32 lpc_disable           : 1;//0x06[0]
        HI_U32 lpc_master_disable    : 1;//0x06[1]
        HI_U32 bootsel_ctrl          : 1;//0x06[2]
        HI_U32 bload_enc_disable     : 1;//0x06[3]
        HI_U32 runtime_check_en      : 1;//0x06[4]
        HI_U32 dolby_flag            : 1;//0x06[5]
        HI_U32 macrovision_flag      : 1;//0x06[6]
        HI_U32 dts_flag              : 1;//0x06[7]
        HI_U32 wakeup_ddr_check_en   : 1;//0x07[0]
        HI_U32 misc_lv_sel           : 1;//0X07[1]
        HI_U32 version_id_check_en   : 1;//0X07[2]
        HI_U32 bl_msid_check_en      : 1;//0X07[3]
        HI_U32 nf_rng_disable        : 1;//0X07[4]
        HI_U32 reserved              : 3;//0x07[5~7]
    } bits;
    HI_U32 u32;
} OTP_V200_INTERNAL_PV_1_U;

typedef union
{
    struct
    {
        HI_U32 secret_key_lock	  : 1;//	0x10[0]
        HI_U32 ca_chip_id_lock	  : 1;//	0x10[1]
        HI_U32 esck_lock	      : 1;//	0x10[2]
        HI_U32 stb_rootkey_lock	  : 1;//	0x10[3]
        HI_U32 stbsn0_lock	      : 1;//	0x10[4]
        HI_U32 stbsn1_lock	      : 1;//	0x10[5]
        HI_U32 stbsn2_lock	      : 1;//	0x10[6]
        HI_U32 stbsn3_lock	      : 1;//	0x10[7]
        HI_U32 msid_lock	      : 1;//	0x11[0]
        HI_U32 version_id_lock	  : 1;//	0x11[1]
        HI_U32 rsv32_1_lock	      : 1;//	0x11[2]
        HI_U32 ca_vendor_id_lock  : 1;//	0x11[3]
        HI_U32 rsv8_0_lock	      : 1;//	0x11[4]
        HI_U32 rsv8_1_lock	      : 1;//	0x11[5]
        HI_U32 rsv8_2_lock        : 1;//	0x11[6]
        HI_U32 misc_rootkey_lock  : 1;//	0x11[7]
        HI_U32 HDCP_RootKey_lock  : 1;//	0x12[0]
        HI_U32 OEM_RootKey_lock   : 1;//	0x12[1]
        HI_U32 rsv_data_1_lock	  : 1;//	0x12[2]
        HI_U32 rsv_data_2_lock	  : 1;//	0x12[3]
        HI_U32 hdcp_lock	      : 1;//	0x12[4]
        HI_U32 rsv_hdcp_lock	  : 1;//	0x12[5]
        HI_U32 rsv_data_3to10_lock :8;//	0x12[6]~0x13[5]
        HI_U32 rsv_rsa_0_lock	  :1;//	    0x13[6]
        HI_U32 rsv_rsa_1_lock	  :1;//	    0x13[7]
    } bits;
    HI_U32 u32;
} OTP_V200_INTERNAL_DATALOCK_0_U;

typedef union
{
    struct
    {
        HI_U32 reserved1                :6;// 0x430[0~5]
        HI_U32 locker_STB_RootKey       :1;// 0x430[6]
        HI_U32 reserved2                :1;// 0x430[7]
        HI_U32 locker_HDCP_RootKey      :1;// 0x431[0]
        HI_U32 reserved3                :23;// 0x431[2] ~
    }bits;
    HI_U32 u32;
}OTP_V200_INTERNAL_CHECKSUMLOCK_U;

#endif/* __OTP_V200_REG_V200_H__ */
/*--------------------------------------END------------------------------------*/

