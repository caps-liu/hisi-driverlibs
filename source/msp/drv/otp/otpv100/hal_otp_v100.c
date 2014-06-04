/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hal_otp_v100.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <asm/delay.h>
#include <linux/kernel.h>
#include <mach/platform.h>
#include <mach/hardware.h>
#include <asm/io.h>
#include <asm/memory.h>
#include <linux/poll.h>
#include "hi_kernel_adapt.h"
#include "drv_otp.h"
#ifdef SDK_OTP_ARCH_VERSION_V3
#include "drv_otp_ext.h"
#else
#include "otp_drv.h"
#endif
#include "drv_otp_common.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

#define ADDR_OTP_CTRL           0x10180000
#define ADDR_OTP_TP             0x10180004
#define ADDR_OTP_RADDR          0x10180008
#define ADDR_OTP_RPDATA         0x1018000C
#define ADDR_OTP_STATUS0        0x10180010
#define ADDR_OTP_STATUS1        0x10180014
#define ADDR_OTP_MODE_CHANGE    0x10180018

#define HI_ERR_OTP_ABNORMAL     (HI_S32)(0x804E0101)

#define OTP_WRITE_STATUS_ADDR       (0x1E)
#define OTP_WRITE_SOAK_ERROR_BIT    (0x0F)
#define OTP_WRITE_COMP_ERROR_BIT    (0xF0)

//SiPROM TIF defines
#define  SIPROM_TIF_CMD_WIDTH   3   //
#define  SiFUSE_TIF_IDLE        0   //3'b000
#define  SiFUSE_TIF_DIRECT      1   //3'b001
#define  SiFUSE_TIF_SHIFT       2   //3'b010
#define  SiFUSE_TIF_UPDATE_MODE 3   //3'b011
#define  SiFUSE_TIF_UPDATE_ADDR 4   //3'b100
#define  SiFUSE_TIF_ROTATE      5   //3'b101
#define  SiFUSE_TIF_UPDATE_CMD  6   //3'b110
#define  SiFUSE_TIF_INCR_ADDR   7   //3'b111
#define  SiFUSE_TIF_CMD_RESET   32  //6'b100000
#define  SiFUSE_TIF_CMD_WRITE   16  //6'b010000
#define  SiFUSE_TIF_CMD_READ    8   //6'b001000
#define  SiFUSE_TIF_CMD_PGM     4   //6'b000100
#define  SiFUSE_TIF_CMD_PCH     2   //6'b000010
#define  SiFUSE_TIF_CMD_COMP    1   //6'b000001
#define  SiFUSE_TIF_TSO_STATUS  0   //2'b00
#define  SiFUSE_TIF_TSO_MSO     1   //2'b01
#define  SiFUSE_TIF_TSO_SSO     2   //2'b10

#define SOAK_PROGRAM 0x300E
#define SOAK_PROGRAM_TIME 16
#define NORMAL_PROGRAM 0x2008
typedef unsigned int  UINT32;
typedef unsigned int  BOOL;

HI_DECLARE_MUTEX(g_OtpV100Mutex);

#define DRV_OTPV100_LOCK() do{									\
    	HI_S32 s32Ret = 0;									\
    	s32Ret = down_interruptible(&g_OtpV100Mutex);		\
	    if (0 != s32Ret)									\
	    {													\
	        HI_FATAL_OTP("Down_interruptible error!\n"); 	\
	        return -1;										\
	    }													\
    }while(0)
    
#define DRV_OTPV100_UNLOCK() do{		\
		up(&g_OtpV100Mutex);		\
	}while(0)

static HI_S32  sub_apb_write_bit(UINT32 addr,UINT32 bit_pos ,UINT32  bit_value, UINT32 time_len);

UINT32 otp_tp_reg_value( UINT32 rsv, BOOL apb_trstn, BOOL apb_tclrn, UINT32 apb_tcmd, BOOL apb_tsi, BOOL apb_tsck, BOOL tso) 
{
    UINT32 tdata;
    //rsv not used
    //tso is reg ouput
    tdata =  (apb_trstn<<7) + (apb_tclrn<<6)  + (apb_tcmd <<3) + (apb_tsi<<2)  + (apb_tsck<<1) ;
    return tdata;
}


void write_reg(UINT32 addr,  UINT32 val)
{
    writel(val, IO_ADDRESS(addr));
    return;
}

UINT32 read_reg(UINT32 addr)
{
    UINT32 val;
    val = readl(IO_ADDRESS(addr));
    return val;
}

void wait(UINT32 us)
{
    udelay(us);
}

//************************************************
void  do_shift_apb(UINT32 len,  UINT32  tdata)
{
    int i;
    UINT32 wdata;
    UINT32 apb_tcmd;
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;
    //HI_INFO_OTP("tdata = 0x%x, len = %d\n",tdata, len);
    apb_tcmd = SiFUSE_TIF_SHIFT;
    for (i=len-1; i>=0; i=i-1) {
        apb_tsi = 0x01 & (tdata>>i);
        apb_tsck = 1;
        wdata = otp_tp_reg_value(0, apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
        write_reg(ADDR_OTP_TP,wdata);
    }
    return;
}

//************************************************
void  do_cmd_noAddress_apb(UINT32 Tcmd )
{
    UINT32 wdata;
    UINT32 apb_tcmd;
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;

    do_shift_apb(6, Tcmd);  
    apb_tcmd = SiFUSE_TIF_UPDATE_CMD;
    apb_tsck = 1;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    return;
}


void do_cmd_oneAddress_apb(UINT32 Tcmd,UINT32 a)
{    
    UINT32 apb_tcmd, wdata;
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;
    //              
    do_shift_apb(1, a);
    apb_tcmd = SiFUSE_TIF_UPDATE_ADDR;
    apb_tsck = 1;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);    
    //                
    do_shift_apb(6, Tcmd);   
    apb_tcmd = SiFUSE_TIF_UPDATE_CMD;
    apb_tsck = 1;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    return;
}


void  do_cmd_fullAddress_apb(UINT32  Tcmd, UINT32  a)
{
    UINT32 wdata;
    UINT32 apb_tcmd;
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;
    //
    do_shift_apb(12, a);
    apb_tcmd = SiFUSE_TIF_UPDATE_ADDR;
    apb_tsck = 1;
    wdata =otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    //
    do_shift_apb(6,Tcmd);   
    apb_tcmd = SiFUSE_TIF_UPDATE_CMD;
    apb_tsck = 1;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    return;
}


void  do_idle_apb(void)
{
    UINT32 wdata;
    UINT32 apb_tcmd;
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;   
    //
    apb_tcmd = SiFUSE_TIF_IDLE;
    apb_tsck = 1;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    return;
}


void  do_incr_addr_apb(void)
{
    UINT32 wdata;
    UINT32 apb_tcmd;
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;
    //
    apb_tcmd = SiFUSE_TIF_INCR_ADDR;
    apb_tsck = 1;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    return;
}


void  do_terminate_apb(void)
{    
    UINT32 wdata;
    UINT32 apb_tcmd = 0;
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;
    //
    apb_tclrn = 0;
    apb_tsck = 0;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    //
    apb_tclrn = 1;
    apb_tsck = 0;
    wdata = otp_tp_reg_value(0,apb_tclrn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    return;
}



//************************************************   
void  do_reset_apb(void)
{
    UINT32 wdata;
    UINT32 apb_tcmd = 0;
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck = 0;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;
    //
    apb_trstn = 0;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    //
    apb_trstn = 1;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
}


//************************************************
void do_mode_aph_hlp(UINT32 wdata)
{
    UINT32 apb_tcmd;
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;
    //
    do_shift_apb(32, wdata);
    //
    apb_tcmd = SiFUSE_TIF_UPDATE_MODE;
    apb_tsck = 1;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    wait(1);
    return;
}

#define do_mode_apb(Tab,Tmra,Tmrb,Tall_banks,Tp_start,Tpup_dis,Tqs_test,Tload_qr,Tpwrup_enb,Tred_en,Tbit_lock,Tmlock,Tpwr_down, Tmacro_sel,Taux_update,Treset_m,Tmode_sel,Tinc2,TseqEna,Tauto,TsoSel) do{\
    UINT32 val;\
    val = ((Tab<<24) + (Tmra<<23) + (Tmrb<<22) + (Tall_banks<<21) + (Tp_start<<20) + (Tpup_dis<<19) + (Tqs_test<<18) + (Tload_qr<<17)\
        + (Tpwrup_enb<<16) + (Tred_en<<15) + (Tbit_lock<<12) + (Tmlock<<11) + (Tpwr_down<<10) + (Tmacro_sel<<9) + (Taux_update<<8) + (Treset_m<<7)\
        + (Tmode_sel<<6) + (Tinc2<<5) + (TseqEna<<4) + (Tauto<<3) + (TsoSel));\
        do_mode_aph_hlp(val);\
    } while(0)



//inout [7:0] data;
UINT32  do_data_shift_apb(UINT32 tdata )
{  
    UINT32 i;
    UINT32 wdata, temp, read_data;
    UINT32 apb_tcmd;
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;

    //if((apb_current_TsoSel !== 1) || (apb_current_TmodeSel !== 0)) {
    do_mode_apb(0,0, 0, 1, 0, 0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1);
    //  }

    temp=0;
    read_data=0;
    for (i=0;i<8;i=i+1) {
        apb_tcmd = SiFUSE_TIF_DIRECT;
        apb_tsck = 1;
        apb_tsi = 0x01 & tdata;
        temp=read_reg(ADDR_OTP_TP);
        read_data= read_data + ((temp & 0x1)<<i);
        wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
        write_reg(ADDR_OTP_TP,wdata);
        tdata=tdata>>1;
    }
    wait(1);
    return read_data;
}


//integer i;
//inout [15:0] data;
UINT32  do_mode_shift_apb(UINT32 tdata )       
{
    UINT32 apb_tcmd;
    UINT32  wdata,read_data,temp;  
    UINT32  i;  
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;    

    //if((apb_current_TsoSel !== 1) || (apb_current_TmodeSel !== 1)) {
    do_mode_apb( 0,0, 0, 0, 0, 0, 0, 0, 0, 0,  0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1 );
    //} 
    temp=0;
    read_data=0;
    for (i=0;i<16;i=i+1) {
        temp=read_reg(ADDR_OTP_TP);
        read_data= read_data + ((temp & 0x1)<<i);
                
        apb_tcmd = SiFUSE_TIF_DIRECT;
        apb_tsck = 1;
        apb_tsi = 0x01 & tdata;
        tdata=tdata>>1;
        wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
        write_reg(ADDR_OTP_TP,wdata);
    }
    wait(1);
    return read_data;
}


//input  [15:0] data;
//input  [2:0]  tso_sel;
//reg    [11:0] addr;
void  do_set_modeA_apb(UINT32 tdata,UINT32 tso_sel)
{ 
    //set TIF MODE REG
    do_mode_apb(0,0,0,1,0,0,0,0,0,0,0,0,0, 1, 0, 0,1, 0, 0, 0, tso_sel);       
    do_mode_shift_apb(tdata);
    //AUX UPDATE, MRA
    //Set Taux_update = 1
    do_mode_apb( 0,1, 0, 1,0,0,0,0,0,0,0,0, 0, 1, 1, 0, 1, 1, 0, 0, tso_sel); 
    //Set Taux_update = 0
    do_mode_apb( 0,1, 0, 1,0,0,0,0,0,0,0,0, 0, 1, 0, 0,1, 0, 0, 0, tso_sel);
    return;
}

//************************************************

//input  [15:0]  data;
//input  [2:0]   tso_sel;
//reg    [11:0]  addr;
void  do_set_modeB_apb(UINT32 tdata ,UINT32 tso_sel)
{ 
    //set TIF MODE REG
    do_mode_apb( 0,0, 0, 1,0,0,0,0,0,0,0,0, 0, 1, 0, 0,1, 0, 0, 0, tso_sel);
    do_mode_shift_apb(tdata);
    //AUX UPDATE, MRB
    //Set Taux_update = 1
    do_mode_apb( 0,0, 1, 1,0,0,0,0,0,0,0,0, 0, 1, 1, 0,1, 1, 0, 0, tso_sel); 
    //Set Taux_update = 0
    do_mode_apb( 0,0, 1, 1,0,0,0,0,0,0,0,0, 0, 1, 0, 0,1, 0, 0, 0, tso_sel);    
    return;
}


//input a;
//integer a;
void  do_program_apb(UINT32 a, UINT32 time_len )
{   
    do_mode_apb( 0, 0, 0, 1,0,0,0,0,0,0,0,0,0, 1, 0, 0, 0, 0, 0, 0, 0);     
    do_cmd_fullAddress_apb(SiFUSE_TIF_CMD_PGM, a);
    wait(time_len);  //#(50000); //software should keep a timer unit: us
    do_idle_apb();
    return;
}


//d is not used
void  do_read_apb(UINT32 a, UINT32 d)
{
    UINT32 read_data;
    //    
    do_mode_apb(0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0);                       
    wait(1);
    do_cmd_fullAddress_apb(SiFUSE_TIF_CMD_READ, a);
    //
    wait(10);
    read_data = read_reg(ADDR_OTP_TP);//software should wait a little,just for delay
    do_terminate_apb();
    return;
}


BOOL do_compare_apb(void)
{
    BOOL s;
    UINT32  read_data;  
    do_mode_apb( 0,0, 0, 1,0,0,0,0,0,0,0,0,  0, 1, 0, 0,0, 0, 0, 0, 0); 
    do_cmd_noAddress_apb(SiFUSE_TIF_CMD_COMP);
    wait(1);
    read_data=read_reg(ADDR_OTP_TP);
    s =0x1 &  read_data;
    do_idle_apb();   
    //HI_INFO_OTP("do_compare_apb result: %d\n",s);
    return s;
}


//input [11:0] addr;
//output [7:0] data;
//reg [7:0]    data;
//reg [7:0]    read_data;
//reg [31:0]   otp_tp_reg;
//reg [31:0]   wdata;
//integer i;
UINT32 do_apb_shift_read(UINT32 addr, UINT32 tdata)
{
    UINT32    i;
    UINT32    wdata;      
    UINT32    apb_tcmd;
    UINT32    read_data;  
    UINT32    otp_tp_reg; 
    BOOL apb_trstn,apb_tclrn,apb_tsi,apb_tsck;
    apb_trstn=1;apb_tclrn=1;apb_tsi=1;    

    read_data=0;
    do_read_apb(addr,read_data);
    // if((apb_current_TsoSel !== 1) || (apb_current_TmodeSel !== 0)) {
    do_mode_apb(0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1);
    // } 
    apb_tcmd = SiFUSE_TIF_DIRECT;
    apb_tsck = 0;
    apb_tsi  = 1;
    wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
    write_reg(ADDR_OTP_TP,wdata);
    wait(1);
    otp_tp_reg=read_reg(ADDR_OTP_TP);
    HI_INFO_OTP("otp_tp_reg = %x\n",otp_tp_reg);
    read_data = (otp_tp_reg & 0x1)<<7;
    for (i=1;i<8;i=i+1) {
        read_data=(read_data>>1);
        apb_tcmd = SiFUSE_TIF_DIRECT;
        apb_tsck = 1;
        apb_tsi = 1;
        wdata = otp_tp_reg_value(0,apb_trstn,apb_tclrn,apb_tcmd,apb_tsi,apb_tsck,0);
        write_reg(ADDR_OTP_TP,wdata);
        wait(1);
        otp_tp_reg=read_reg(ADDR_OTP_TP);
        HI_INFO_OTP("otp_tp_reg = %x\n",otp_tp_reg);
        read_data = read_data + ((otp_tp_reg & 0x1)<<7); 
    }      
    return read_data;
}



//input a;
//output s;
BOOL do_precharge_apb(UINT32 a)
{
    BOOL    s;
    UINT32 read_data;
    
    do_mode_apb( 0,0,0, 1,0,0,0,0,0,0,0,0, 0,1,0, 0,0,0,0,0, 0);        // Tmode_sel =0,inc2 = 0, seqEna=0, auto = 0, TSO_SEL[2:0]= 0(STATUS)
    //Solve the soak program error when SR 6 is set
    //do_cmd_oneAddress_apb(SiFUSE_TIF_CMD_PCH, a);
    do_cmd_fullAddress_apb(SiFUSE_TIF_CMD_PCH, a);
//#(tpw_PCH_posedge);
    wait(1);

    read_data=read_reg(ADDR_OTP_TP);
    s =0x1 &  read_data;
    do_terminate_apb();   
    HI_INFO_OTP("do_precharge_apb result: status = %d\n",s);
    return s;
}    

//void  do_apb_write_init(void)
void  do_apb_write_init(UINT32 program_mode)
{
    UINT32 mode_data;
    write_reg(ADDR_OTP_CTRL,0xc);
    //do_set_modeB_apb(0x2008,0x5);
    do_set_modeB_apb(program_mode,0x5);
    do_set_modeA_apb(0x1220,0x5);
    wait(200); // #(10000); //software keep a timer
    mode_data = 0x24;
    do_mode_shift_apb(mode_data);
    return;
}

/*
void  do_apb_write_init_high(void)
{
    UINT32 mode_data;
    write_reg(ADDR_OTP_CTRL,0xc);
    do_set_modeB_apb(0x300E,0x5);
    do_set_modeA_apb(0x1220,0x5);
    wait(200); // #(10000); //software keep a timer

    mode_data = 0x24;
    do_mode_shift_apb(mode_data);
    return;
}
*/

void  do_single_end(void)
{
    UINT32 mode_data;    
    write_reg(ADDR_OTP_CTRL,0xc);
    do_set_modeB_apb(0,0);
    do_set_modeA_apb(0,0);
    mode_data = 0;
    do_mode_shift_apb(mode_data);
    return;
}


void  do_redundant(void)
{
    UINT32 mode_data;    
    write_reg(ADDR_OTP_CTRL,0xc);
    do_set_modeB_apb(0,0);
    do_set_modeA_apb(0,0);
    mode_data = 0x10;
    do_mode_shift_apb(mode_data);
    return;
}


void  do_differential(void)
{
    UINT32 mode_data;    
    write_reg(ADDR_OTP_CTRL,0xc);
    do_set_modeB_apb(0,0);
    do_set_modeA_apb(0,0);
    mode_data = 0x1;
    do_mode_shift_apb(mode_data);
    return;
}

//input [9:0] addr;
//input [7:0] data;
//only for main block addr 0~1023
static UINT32 do_readback(UINT32 addr)
{
    UINT32 read_data;

    if(addr<32)
    {
        do_redundant(); 
        write_reg(ADDR_OTP_CTRL + 0x18, 0x4); //OTP_CHANGE_MODE, 100：冗余读模式
    }
    else
    {
        do_differential();
        write_reg(ADDR_OTP_CTRL + 0x18, 0x2); //OTP_CHANGE_MODE, 010：差分读模式
    }
    write_reg(ADDR_OTP_CTRL,0x2);
    write_reg(ADDR_OTP_RADDR,addr);
    read_data = read_reg(ADDR_OTP_RPDATA);
    //HI_INFO_OTP("addr 0x%x, read data is 0x%x\n",addr,read_data);// & 0xff);

    return read_data;
}

//input [9:0] addr;
//input [7:0] data;
//only for main block addr 0~1023
UINT32 HAL_OTP_V100_Read(UINT32 addr)
{
    UINT32 read_data;

    DRV_OTPV100_LOCK();

    read_data = do_readback(addr);

    DRV_OTPV100_UNLOCK();
    return read_data;
}

//Set the soak program error flag OTP bit 0x1e[0:3]
static HI_S32 write_soak_error(HI_VOID)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 i = 0;
    HI_U32 u32Value = OTP_WRITE_SOAK_ERROR_BIT;

    for ( i = 0 ; i < 8 ; i++ )
    {
        if ((u32Value & 0x1) == 0x1)
        {
            Ret |= sub_apb_write_bit(OTP_WRITE_STATUS_ADDR, i, 1, 50);
        }
        u32Value = (u32Value >> 1);
    }

    return Ret;
}

//Set the OTP error flag bit 0x1e[4:7]
static HI_S32 write_comp_error(HI_VOID)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 i = 0;
    HI_U32 u32Value = OTP_WRITE_COMP_ERROR_BIT;

    for ( i = 0 ; i < 8 ; i++ )
    {
        if ((u32Value & 0x1) == 0x1)
        {
            Ret |= sub_apb_write_bit(OTP_WRITE_STATUS_ADDR, i, 1, 50);
        }
        u32Value = (u32Value >> 1);
    }

    return Ret;
}

HI_S32  HAL_OTP_V100_WriteByte(UINT32 addr,UINT32 tdata)
{  
    HI_S32 Ret = HI_SUCCESS;
    BOOL    s;
    UINT32    i;
    UINT32  wdata, data,read_data;
    UINT32  otp_addr;
    UINT32  pch_soak_prg_cnt = 0,one_cnt;
    HI_BOOL bSoakError = HI_FALSE;
    HI_BOOL bCmpError = HI_FALSE;

    DRV_OTPV100_LOCK();
    do_apb_write_init(NORMAL_PROGRAM);
    if(addr < 32) // redundant mode,one byte once
    {
        if( (addr & 0x1) == 0)      //Even address
        {
            // otp_addr = {0,addr[9:1],1'b0,addr[0]};
            otp_addr =  ((addr<<1) & 0xffc) +  (addr & 0x1) ;
            data = tdata;
            for(i=0; i<8; i=i+1)
            {
                pch_soak_prg_cnt = 0;
                do_apb_write_init(NORMAL_PROGRAM);
                if((data & 0x1) == 1)  
                {
                    wdata = 1 << i;
                    wdata = ~wdata;
                    do_data_shift_apb(wdata);
                    do_program_apb(otp_addr,50);
                    //read status 
                    wait(1);
                    do_data_shift_apb(wdata);                    
                    do_read_apb(otp_addr,wdata);
                    s=do_precharge_apb(otp_addr);
                    while(s == 0x1)//precharge fail,must soak program
                    {
                        //soak program   
                        do_apb_write_init(SOAK_PROGRAM);
                        do_data_shift_apb(wdata);
                        do_program_apb(otp_addr,500);
                        //read status
                        wait(1);
                        do_data_shift_apb(wdata);                    
                        do_read_apb(otp_addr,wdata);
                        s=do_precharge_apb(otp_addr);
                        pch_soak_prg_cnt++;
                        HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                        // Soak program will be necessary when SR bit 4 and 6 are set
                        if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                        {
                            HI_ERR_OTP("error! bit precharge soak program counter is over setting times\n");
                            bSoakError = HI_TRUE;
                            break;
                        }
                    }
                }
                data=data>>1;
            }
            wait(5); //1us is required according to datasheet
            
            otp_addr =  ((addr<<1) & 0xffc) + 0x2 + (addr & 0x1) ;  
            data = tdata;
            for(i=0; i<8; i=i+1)
            {
                pch_soak_prg_cnt = 0;
                do_apb_write_init(NORMAL_PROGRAM);
                if((data & 0x1) == 1)
                {
                    wdata = 1 << i;
                    wdata = ~wdata;
                    do_data_shift_apb(wdata);
                    do_program_apb(otp_addr,50);
                    //read status 
                    wait(1);
                    do_data_shift_apb(wdata);                    
                    do_read_apb(otp_addr,wdata);
                    s=do_precharge_apb(otp_addr);
                    while(s == 0x1)//precharge fail,must soak program
                    {
                        //soak program
                        do_apb_write_init(SOAK_PROGRAM);
                        do_data_shift_apb(wdata);
                        do_program_apb(otp_addr,500);
                        //read status
                        wait(1);
                        do_data_shift_apb(wdata);                    
                        do_read_apb(otp_addr,wdata);
                        s=do_precharge_apb(otp_addr);
                        pch_soak_prg_cnt++;
                        HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                        if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                        {
                            HI_ERR_OTP("error! bit precharge soak program counter is over setting times\n");
                            bSoakError = HI_TRUE;
                            break;
                        }
                    }
                }
                data=data>>1;
            }
            wait(5);
            //byte redundant program status 
            read_data = do_readback(addr&0xffc);
            read_data = read_data >> (8*(addr & 0x03));
            one_cnt = 0;
            for(i=0; i<8; i=i+1)
            {
                if((read_data&0x1) == 0x1)
                {
                    one_cnt = one_cnt + 1;
                    read_data = read_data >> 1;
                }
            }
            //Hardware logic decide by 5 bits
            if(one_cnt >= 5)
            {
                HI_INFO_OTP("redundant mode write byte ok\n");
            }
            else
            {
                HI_ERR_OTP("redundant mode write byte error\n");
                bCmpError = HI_TRUE;
            }
        }
        else            //Odd address
        {
            //otp_addr = {1'b0,addr[9:1],1'b0,addr[0]};
            otp_addr =  ((addr<<1) & 0xffc) +  (addr & 0x1) ;                  
            data = tdata;
            for(i=0; i<8; i=i+1)
            {
                pch_soak_prg_cnt = 0;
                do_apb_write_init(NORMAL_PROGRAM);
                if((data & 0x1) == 0)   
                {
                    wdata = 1 << i;
                    do_data_shift_apb(wdata);
                    do_program_apb(otp_addr,50);
                    //read status 
                    wait(1);
                    do_data_shift_apb(wdata);                    
                    do_read_apb(otp_addr,wdata);
                    s=do_precharge_apb(otp_addr);
                    while(s == 0x1)//precharge fail,must soak program
                    {
                        //soak program   
                        do_apb_write_init(SOAK_PROGRAM);
                        do_data_shift_apb(wdata);
                        do_program_apb(otp_addr,500);
                        //read status
                        wait(1);
                        do_data_shift_apb(wdata);                    
                        do_read_apb(otp_addr,wdata);
                        s=do_precharge_apb(otp_addr);
                        pch_soak_prg_cnt++;
                        HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                        if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                        {
                            HI_ERR_OTP("error! bit precharge soak program counter is over setting times\n");
                            bSoakError = HI_TRUE;
                            break;
                        }
                    }
                }
                data=data>>1;   
            }
            wait(5);          
            
            otp_addr =  ((addr<<1) & 0xffc) +  0x2 + (addr & 0x1) ;  
            data = tdata;
            for(i=0; i<8; i=i+1)
            {
                pch_soak_prg_cnt = 0;
                do_apb_write_init(NORMAL_PROGRAM);
                if((data & 0x1) == 0)
                {
                    wdata = 1 << i;
                    do_data_shift_apb(wdata);
                    do_program_apb(otp_addr,50);
                    //read status 
                    wait(1);
                    do_data_shift_apb(wdata);                    
                    do_read_apb(otp_addr,wdata);
                    s=do_precharge_apb(otp_addr);
                    while(s == 0x1)//precharge fail,must soak program
                    {
                        //soak program   
                        do_apb_write_init(SOAK_PROGRAM);
                        do_data_shift_apb(wdata);
                        do_program_apb(otp_addr,500);
                        //read status
                        wait(1);
                        do_data_shift_apb(wdata);                    
                        do_read_apb(otp_addr,wdata);
                        s=do_precharge_apb(otp_addr);
                        pch_soak_prg_cnt++;
                        HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                        if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                        {
                            HI_ERR_OTP("error! bit precharge soak program counter is over setting times\n");
                            bSoakError = HI_TRUE;
                            break;
                        }
                    }
                }
                data=data>>1;  
            }
            wait(5);  
            //byte redundant program status 
            read_data = do_readback(addr&0xffc);
            read_data = read_data >> (8*(addr & 0x03));
            one_cnt = 0;
            for(i=0; i<8; i=i+1)
            {
                if((read_data&0x1) == 0x0)
                {
                    one_cnt = one_cnt + 1;
                    read_data = read_data >> 1;
                }
            }
            //Hardware logic decide by 5 bits
            if(one_cnt >= 5)
            {
                HI_INFO_OTP("redundant mode write byte ok\n");
            }
            else
            {
                HI_ERR_OTP("redundant mode write byte error\n");
                bCmpError = HI_TRUE;
            }
        }
        do_redundant();
    }
    else //differencal mode
    {
        // otp_addr = {1'b0,addr,1'b0};
        otp_addr = ( addr<<1) ;   
        data = tdata;
        for(i=0; i<8; i=i+1)
        {
            do_apb_write_init(NORMAL_PROGRAM);
            if((data & 0x1) == 1)       
            {
                wdata = 1 << i;
                wdata = ~wdata;
                do_data_shift_apb(wdata);
                do_program_apb(otp_addr,50);
                //read status 
                wait(1);
                do_data_shift_apb(wdata);                    
                do_read_apb(otp_addr,wdata);
                s=do_precharge_apb(otp_addr);
                
                pch_soak_prg_cnt = 0;
                while(s == 0x1)//precharge fail,must soak program
                {
                    //soak program   
                    do_apb_write_init(SOAK_PROGRAM);
                    do_data_shift_apb(wdata);
                    do_program_apb(otp_addr,500);
                    //read status
                    wait(1);
                    do_data_shift_apb(wdata);                    
                    do_read_apb(otp_addr,wdata);
                    s=do_precharge_apb(otp_addr);
                    pch_soak_prg_cnt++;
                    HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                    if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                    {
                        HI_ERR_OTP("error! bit precharge soak program counter is over setting times\n");
                        bSoakError = HI_TRUE;
                        break;
                    }
                }
            }
            data=data>>1;  
        }
        wait(5);  
        
        // otp_addr = {1'b0,addr,1'b1};
        otp_addr =  (addr<<1) + 0x1 ;   
        data = tdata;
        for(i=0; i<8; i=i+1)
        {
            do_apb_write_init(NORMAL_PROGRAM);
            if((data & 0x1) == 0)             
            {
                wdata = 1 << i;
                do_data_shift_apb(wdata);
                do_program_apb(otp_addr,50);
                //read status 
                wait(1);
                do_data_shift_apb(wdata);                    
                do_read_apb(otp_addr,wdata);
                s=do_precharge_apb(otp_addr);
                pch_soak_prg_cnt = 0;
                while(s == 0x1)//precharge fail,must soak program
                {
                    //soak program   
                    do_apb_write_init(SOAK_PROGRAM);
                    do_data_shift_apb(wdata);
                    do_program_apb(otp_addr,500);
                    //read status
                    wait(1);
                    do_data_shift_apb(wdata);                    
                    do_read_apb(otp_addr,wdata);
                    s=do_precharge_apb(otp_addr);
                    pch_soak_prg_cnt++;
                    HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                    if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                    {
                        HI_ERR_OTP("error! bit precharge soak program counter is over setting times\n");
                        bSoakError = HI_TRUE;
                        break;
                    }
                }
            }
            data=data>>1;   
        }
        wait(5);
        //byte redundant program status, differential mode can not read back
/*        read_data = do_readback(addr&0xffc);
        if(read_data == tdata)
            HI_INFO_OTP("differential mode write byte ok\n");
        else
            HI_ERR_OTP("differential mode write byte error\n");
*/      
        do_differential();
        otp_addr =  (addr<<1) ;           
        wdata = ~tdata;
        do_data_shift_apb(wdata);
        do_read_apb(otp_addr,wdata);
        s=do_compare_apb();    
        if(s == 0x1)
        { 
            HI_INFO_OTP("differential mode write byte ok\n");
        }    
        else
        {
            HI_ERR_OTP("differential mode write byte error\n");
            bCmpError = HI_TRUE;
            goto TERMINATE_DIFFERENTIAL;
        }
        
        do_differential();
        otp_addr =  (addr<<1) + 0x1 ;            
        wdata = ~tdata;
        do_data_shift_apb(wdata);
        do_read_apb(otp_addr,wdata);
        s=do_compare_apb();    
        if(s == 0x1)
        { 
            HI_INFO_OTP("differential mode write byte ok\n");
        }    
        else
        {
            HI_ERR_OTP("differential mode write byte error\n");
            bCmpError = HI_TRUE;
            goto TERMINATE_DIFFERENTIAL;
        }

TERMINATE_DIFFERENTIAL:
        do_differential();
    }

    if (bSoakError)
    {
        //When soak program error, set the OTP flag and return special error code. At this time, OTP is not believable
        write_soak_error();
        Ret = HI_ERR_OTP_ABNORMAL;
    }

    if (bCmpError)
    {
        //When compare error, set the OTP flag and return HI_FAILURE. At this time, OTP MUST be considered as broken
        write_comp_error();
        Ret = HI_FAILURE;
    }

    DRV_OTPV100_UNLOCK();
    return Ret;
}


//addr:byte addr,0~1023;
//bit_pos :bit position 0~7
//bit_value:0~1
//input [9:0] addr;  //byte addr 
//input [7:0] data;
static HI_S32  sub_apb_write_bit(UINT32 addr,UINT32 bit_pos ,UINT32  bit_value, UINT32 time_len)
{
    HI_S32 Ret = HI_SUCCESS;
    BOOL   s;
    UINT32 otp_addr;
    UINT32 wdata;
    UINT32 pch_soak_prg_cnt = 0;
    //    
    if(addr < 32) // redundant mode
    {
        if( ((addr & 0x1) == 0) &&  (bit_value == 0x1))      //even addr default 0x00
        {
            //otp_addr = {0,addr[9:1],1'b0,addr[0]};
            do_apb_write_init(NORMAL_PROGRAM);
            wdata = 1 << bit_pos;
            wdata = ~wdata;
            do_data_shift_apb(wdata);
            otp_addr = ((addr<<1) & 0xffc);
            do_program_apb(otp_addr,time_len);
            wait(2);
            //read status 
            do_data_shift_apb(wdata);                    
            do_read_apb(otp_addr,wdata);
            s=do_precharge_apb(otp_addr);
            pch_soak_prg_cnt = 0;
            while(s == 0x1)//precharge fail,must soak program
            {
                //soak program   
                do_apb_write_init(SOAK_PROGRAM);
                do_data_shift_apb(wdata);
                do_program_apb(otp_addr,500);
                //read status
                wait(1);
                do_data_shift_apb(wdata);                    
                do_read_apb(otp_addr,wdata);
                s=do_precharge_apb(otp_addr);
                pch_soak_prg_cnt++;
                HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                {
                    //Do not write soak error flag!!!
                    HI_INFO_OTP("error! bit precharge soak program counter is over setting times\n");
                    Ret = HI_ERR_OTP_ABNORMAL;
                    break;
                }
            }

            do_apb_write_init(NORMAL_PROGRAM);
            otp_addr =  ((addr<<1) & 0xffc) + 0x2;
            do_program_apb(otp_addr,time_len);
            wait(2);    
            //read status 
            do_data_shift_apb(wdata);                    
            do_read_apb(otp_addr,wdata);
            s=do_precharge_apb(otp_addr);
            pch_soak_prg_cnt = 0;
            while(s == 0x1)//precharge fail,must soak program
            {
                //soak program   
                do_apb_write_init(SOAK_PROGRAM);
                do_data_shift_apb(wdata);
                do_program_apb(otp_addr,500);
                //read status
                wait(1);
                do_data_shift_apb(wdata);                    
                do_read_apb(otp_addr,wdata);
                s=do_precharge_apb(otp_addr);
                pch_soak_prg_cnt++;
                HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                {
                    //Do not write soak error flag!!!
                    HI_INFO_OTP("error! bit precharge soak program counter is over setting times\n");
                    Ret = HI_ERR_OTP_ABNORMAL;
                    break;
                }
            }
/*                

            do_set_modeA_apb(0x0220,0x5);
            otp_addr = ((addr<<1) & 0xffc);
            read_data = do_apb_shift_read(otp_addr, 0);    
            HI_INFO_OTP("data is 0x%x\n",read_data);
            if(((read_data>>bit_pos) & 1) == bit_value)
                HI_INFO_OTP("redundant mode write bit ok\n");
            else 
                HI_ERR_OTP("redundant mode write bit error\n");
            wait(2);
            do_set_modeA_apb(0x0220,0x5);                                
            otp_addr =  ((addr<<1) & 0xffc) + 0x2  ;                     
            read_data = do_apb_shift_read(otp_addr, 0);
            HI_INFO_OTP("data is 0x%x\n",read_data);
            if(((read_data>>bit_pos) & 1) == bit_value)
                HI_INFO_OTP("redundant mode write bit ok\n");
            else
                HI_ERR_OTP("redundant mode write bit error\n");            
*/
        }
        else if(((addr & 0x1) == 1) &&  (bit_value == 0x0))
        {   //odd addr  default value is 0xff
            do_apb_write_init(NORMAL_PROGRAM);
              wdata = 1 << bit_pos;
            do_data_shift_apb(wdata);
            otp_addr =  ((addr<<1) & 0xffc) +  1 ;                        
            do_program_apb(otp_addr,time_len);
            wait(2);
            //read status 
            do_data_shift_apb(wdata);                    
            do_read_apb(otp_addr,wdata);
            s=do_precharge_apb(otp_addr);
            pch_soak_prg_cnt = 0;
            while(s == 0x1)//precharge fail,must soak program
            {
                //soak program   
                do_apb_write_init(SOAK_PROGRAM);
                do_data_shift_apb(wdata);
                do_program_apb(otp_addr,500);
                //read status
                wait(1);
                do_data_shift_apb(wdata);                    
                do_read_apb(otp_addr,wdata);
                s=do_precharge_apb(otp_addr);
                pch_soak_prg_cnt++;
                HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                {
                    //Do not write soak error flag!!!
                    HI_INFO_OTP("error! bit precharge soak program counter is over setting times\n");
                    Ret = HI_ERR_OTP_ABNORMAL;
                    break;
                }
            }

            do_apb_write_init(NORMAL_PROGRAM);
            otp_addr =  ((addr<<1) & 0xffc) + 0x2 + (addr & 0x1) ;  
            do_program_apb(otp_addr,time_len);                    
            wait(2);
            //read status 
            do_data_shift_apb(wdata);                    
            do_read_apb(otp_addr,wdata);
            s=do_precharge_apb(otp_addr);
            pch_soak_prg_cnt = 0;
            while(s == 0x1)//precharge fail,must soak program
            {
                //soak program   
                do_apb_write_init(SOAK_PROGRAM);
                do_data_shift_apb(wdata);
                do_program_apb(otp_addr,500);
                //read status
                wait(1);
                do_data_shift_apb(wdata);                    
                do_read_apb(otp_addr,wdata);
                s=do_precharge_apb(otp_addr);
                pch_soak_prg_cnt++;
                HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                {
                    //Do not write soak error flag!!!
                    HI_INFO_OTP("error! bit precharge soak program counter is over setting times\n");
                    Ret = HI_ERR_OTP_ABNORMAL;
                    break;
                }
            }
/*            
            do_set_modeA_apb(0x0220,0x5);                            
            otp_addr =  ((addr<<1) & 0xffc) +  1 ;                        
            read_data = do_apb_shift_read(otp_addr, 0);
            HI_INFO_OTP("data is 0x%x\n",read_data);
            if(((read_data>>bit_pos) & 1) == bit_value)  
                HI_INFO_OTP("ok\n");
            else
                HI_ERR_OTP("error\n");                    
                                        
            otp_addr =  ((addr<<1) & 0xffc) + 0x2 + 1 ;                  
            read_data = do_apb_shift_read(otp_addr, 0);
            HI_INFO_OTP("data is 0x%x\n",read_data);
            if(((read_data>>bit_pos) & 1) == bit_value) 
                HI_INFO_OTP("ok\n");
            else
                HI_ERR_OTP("error\n");                    
*/                                        
        }
        do_redundant();   
    }
    else //differencal mode
    {
        do_apb_write_init(NORMAL_PROGRAM);
        otp_addr = ( addr<<1) ;   
        if(bit_value == 1)
        {
            wdata = 1 << bit_pos;
            wdata = ~wdata;
            do_data_shift_apb(wdata);
            do_program_apb(otp_addr,time_len);
            /*
            wait(2);
            do_set_modeA_apb(0x0220,0x5);                        
            do_data_shift_apb(wdata);                    
            do_read_apb(otp_addr,wdata);
            s=do_precharge_apb(otp_addr);
            */

            wait(2);
            //read status 
            do_data_shift_apb(wdata);                    
            do_read_apb(otp_addr,wdata);
            s=do_precharge_apb(otp_addr);
            pch_soak_prg_cnt = 0;
            while(s == 0x1)//precharge fail,must soak program
            {
                //soak program   
                do_apb_write_init(SOAK_PROGRAM);
                do_data_shift_apb(wdata);
                do_program_apb(otp_addr,500);
                //read status
                wait(1);
                do_data_shift_apb(wdata);                    
                do_read_apb(otp_addr,wdata);
                s=do_precharge_apb(otp_addr);
                pch_soak_prg_cnt++;
                HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                {
                    //Do not write soak error flag!!!
                    HI_INFO_OTP("error! bit precharge soak program counter is over setting times\n");
                    Ret = HI_ERR_OTP_ABNORMAL;
                    break;
                }
            }
        }

        do_apb_write_init(NORMAL_PROGRAM);
        otp_addr =  (addr<<1) + 0x1 ;   
        if(bit_value == 0)        
        {
            wdata = 1 << bit_pos;
            do_data_shift_apb(wdata);
            do_program_apb(otp_addr,time_len);
                
            wait(2);
            /*
            do_set_modeA_apb(0x0220,0x5);                        
            do_data_shift_apb(wdata);                    
            do_read_apb(otp_addr,wdata);
            s=do_precharge_apb(otp_addr);
            */
            //read status 
            do_data_shift_apb(wdata);                    
            do_read_apb(otp_addr,wdata);
            s=do_precharge_apb(otp_addr);
            pch_soak_prg_cnt = 0;
            while(s == 0x1)//precharge fail,must soak program
            {
                //soak program   
                do_apb_write_init(SOAK_PROGRAM);
                do_data_shift_apb(wdata);
                do_program_apb(otp_addr,500);
                //read status
                wait(1);
                do_data_shift_apb(wdata);                    
                do_read_apb(otp_addr,wdata);
                s=do_precharge_apb(otp_addr);
                pch_soak_prg_cnt++;
                HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
                if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
                {
                    //Do not write soak error flag!!!
                    HI_INFO_OTP("error! bit precharge soak program counter is over setting times\n");
                    Ret = HI_ERR_OTP_ABNORMAL;
                    break;
                }
            }
        }
        do_differential();                

    }
    return Ret;
}

HI_S32  HAL_OTP_V100_WriteBit(UINT32 addr,UINT32 bit_pos ,UINT32  bit_value)
{
    HI_S32 Ret = HI_SUCCESS;

    DRV_OTPV100_LOCK();
    do_apb_write_init(NORMAL_PROGRAM);
    Ret = sub_apb_write_bit(addr,bit_pos ,bit_value,50);
    DRV_OTPV100_UNLOCK();
    return Ret;
}    

void  do_apb_write_bit_high(UINT32 addr,UINT32 bit_pos ,UINT32  bit_value)
{
    //do_apb_write_init_high();
    do_apb_write_init(SOAK_PROGRAM);
    sub_apb_write_bit(addr,bit_pos ,bit_value,500);    
    return;
}    

/*
void  do_apb_write_bootrow_init(void)
{
    UINT32 mode_data;
    write_reg(ADDR_OTP_CTRL,0xc);
    do_set_modeB_apb(0x2008,0x5);
    do_set_modeA_apb(0x1220,0x5);
    wait(10); //   #(10000); //software keep a timer
    mode_data = 0x0224;
    do_mode_shift_apb(mode_data);
    return;
}
*/

static HI_S32 do_set_sr(UINT32 bit_pos,UINT32 bit_value)
{
    HI_S32 Ret = HI_SUCCESS;
    UINT32 data, wdata,s;
    UINT32 otp_addr;
    UINT32 pch_soak_prg_cnt = 0;
    
    data= bit_value<<bit_pos; 
    do_apb_write_init(NORMAL_PROGRAM);

    wdata = 1 << bit_pos;
    wdata = ~wdata;
    do_data_shift_apb(wdata);
    do_program_apb(0x800,50);      
    wait(2);                      
    otp_addr = 0x800;
    do_data_shift_apb(wdata);                    
    do_read_apb(otp_addr,wdata);
    s=do_precharge_apb(otp_addr);
    pch_soak_prg_cnt = 0;
    while(s == 0x1)//precharge fail,must soak program
    {
        //soak program   
        do_apb_write_init(SOAK_PROGRAM);
        do_data_shift_apb(wdata);
        do_program_apb(otp_addr,500);
        //read status
        wait(1);
        do_data_shift_apb(wdata);                    
        do_read_apb(otp_addr,wdata);
        s=do_precharge_apb(otp_addr);
        pch_soak_prg_cnt++;
        HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
        if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
        {
            HI_INFO_OTP("error! bit precharge soak program counter is over setting times\n");
            Ret = HI_ERR_OTP_ABNORMAL;
            break;
        }
    }   
    
    
    data= bit_value<<bit_pos; 
    do_apb_write_init(NORMAL_PROGRAM);

    wdata = 1 << bit_pos;
    wdata = ~wdata;
    do_data_shift_apb(wdata);
    do_program_apb(0x802,50);      
    wait(2);

    otp_addr = 0x802;
    do_data_shift_apb(wdata);                    
    do_read_apb(otp_addr,wdata);
    s=do_precharge_apb(otp_addr);
    pch_soak_prg_cnt = 0;
    while(s == 0x1)//precharge fail,must soak program
    {
        //soak program   
        do_apb_write_init(SOAK_PROGRAM);
        do_data_shift_apb(wdata);
        do_program_apb(otp_addr,500);
        //read status
        wait(1);
        do_data_shift_apb(wdata);                    
        do_read_apb(otp_addr,wdata);
        s=do_precharge_apb(otp_addr);
        pch_soak_prg_cnt++;
        HI_INFO_OTP("pch_soak_prg_cnt = %d\n",pch_soak_prg_cnt);
        if(pch_soak_prg_cnt > SOAK_PROGRAM_TIME)
        {
            HI_INFO_OTP("error! bit precharge soak program counter is over setting times\n");
            Ret = HI_ERR_OTP_ABNORMAL;
            break;
        }
    }   
  
    //do_cmd_noAddress_apb(SiFUSE_TIF_CMD_RESET);
    //do_idle_apb();
    do_differential();

    return Ret;
}

HI_S32 HAL_OTP_V100_Reset(void)
{
    do_single_end();
    do_cmd_noAddress_apb(SiFUSE_TIF_CMD_RESET);
    do_idle_apb();
    
    return HI_SUCCESS;
}

void  do_apb_write_bootrow(UINT32 addr, UINT32 tdata  )
{
    //BOOL   s;
    UINT32 wdata;
    UINT32 i;
    UINT32 temp;

    //do_apb_write_bootrow_init();
    temp=tdata;    
    for(i=0; i<8; i=i+1)
    {
        // if(data[i] == 1'b1)        
        if( (tdata & 0x1) == 0x1)
        {
            wdata = 1 << i;
            wdata = ~wdata;
            do_data_shift_apb(wdata);
            do_program_apb(addr,50);
        }
        tdata=tdata>>1;
    }
    do_single_end();
/*
    wdata = ~temp;
    do_data_shift_apb(wdata);
    do_read_apb(addr,wdata);
    s=do_compare_apb();
*/
    return;
}


void  do_apb_read_bootrow(UINT32 addr )
{
    UINT32 tdata;
    do_single_end();
    tdata = do_apb_shift_read(addr, 0);
    HI_INFO_OTP("data is 0x%x", tdata);
    return;
}

#if 0
void  disable_otp_rw(unsigned int pos)
{    
    UINT32 val;

    DRV_OTPV100_LOCK();
    if(pos > 4)
    {
		DRV_OTPV100_UNLOCK();
        return;
    }
    //do_apb_write_bootrow_init();
    do_apb_write_init(NORMAL_PROGRAM);
    val = read_reg(ADDR_OTP_STATUS0);
    if(pos == 0){
        if( (val & 0x1) == 0x0 ){  //should 0, allow write
            do_apb_write_bootrow(0x800,0x01);
            do_apb_write_bootrow(0x802,0x01);
        }
    }else if(pos == 1){
        if( (val & 0x2) == 0x0 ){  
            do_apb_write_bootrow(0x800,0x02);
            do_apb_write_bootrow(0x802,0x02);
        }
    }else if(pos == 2)    {
        if( (val & 0x4) == 0x0 ){  
            do_apb_write_bootrow(0x800,0x04);
            do_apb_write_bootrow(0x802,0x04);
        }
    }else if(pos == 3)    {
        if( (val & 0x8) == 0x0 ){  
            do_apb_write_bootrow(0x800,0x08);
            do_apb_write_bootrow(0x802,0x08);
        }
    }else{
        if( (val & 0x10) == 0x0 ){  
            do_apb_write_bootrow(0x800,0x10);
            do_apb_write_bootrow(0x802,0x10);
        }
    }
    do_cmd_noAddress_apb(SiFUSE_TIF_CMD_RESET);
    do_idle_apb();
    DRV_OTPV100_UNLOCK();
    return;
}
#endif

int HAL_OTP_V100_SetWriteProtect(HI_VOID)
{
#if 0    
    UINT32 val;
    val = read_reg(ADDR_OTP_STATUS0);
    if(enable){
        if( (val & 0x8) == 0x0 ){   //not disable
            do_apb_write_init(NORMAL_PROGRAM);
            do_apb_write_bootrow(0x800,0x08);
            do_apb_write_bootrow(0x802,0x08);
            do_cmd_noAddress_apb(SiFUSE_TIF_CMD_RESET);
            do_idle_apb();
            return 0;
        }
    }else{
        if( (val & 0x8) == 0x8 ){   //already disable
            return -1;
        }
    }

    return 0;
#else
    UINT32 val;

    DRV_OTPV100_LOCK();
    val = read_reg(ADDR_OTP_STATUS0);
    if (val & 0x8)  /* already set */
    {
		DRV_OTPV100_UNLOCK();
        return -1;
    }
    else
    {
        do_set_sr(3,1);        
    }

    DRV_OTPV100_UNLOCK();
    return 0;

#endif
}

int HAL_OTP_V100_GetWriteProtect(unsigned int *penable)
{
    UINT32 val;

    DRV_OTPV100_LOCK();
    val = read_reg(ADDR_OTP_STATUS0);
    *penable = (val & 0x8);
    DRV_OTPV100_UNLOCK();
    return 0;
}

void  disable_apb_para_read(void)
{    
    //do_apb_write_bootrow_init();
    do_apb_write_init(NORMAL_PROGRAM);
    do_apb_write_bootrow(0x800,0x10);
    do_apb_write_bootrow(0x802,0x10);
    do_cmd_noAddress_apb(SiFUSE_TIF_CMD_RESET);
    do_idle_apb();
    return;
}

HI_S32 HAL_OTP_V100_GetSrBit(int pos,int *pvalue)
{
    unsigned int val;

    DRV_OTPV100_LOCK();
    val = read_reg(ADDR_OTP_STATUS0);
    *pvalue = (val & (1 << pos)) ? (1):(0);
    DRV_OTPV100_UNLOCK();
    
    return HI_SUCCESS;
}

int HAL_OTP_V100_SetSrBit(int pos)
{
    HI_S32 Ret = HI_SUCCESS;
    unsigned int val;

    DRV_OTPV100_LOCK();
    val = read_reg(ADDR_OTP_STATUS0);
    if (val & (1 << pos))  /* already set */
    {
		DRV_OTPV100_UNLOCK();
        return HI_SUCCESS;
    }
    else
    {
        Ret = do_set_sr(pos,1);        
    }
    DRV_OTPV100_UNLOCK();

    return Ret;
}

HI_S32  HAL_OTP_V100_FuncDisable(UINT32 bit_pos,UINT32 bit_value)
{
    return HAL_OTP_V100_SetSrBit(bit_pos);
}


EXPORT_SYMBOL(HAL_OTP_V100_Read);
EXPORT_SYMBOL(HAL_OTP_V100_GetWriteProtect);
EXPORT_SYMBOL(HAL_OTP_V100_SetWriteProtect);
EXPORT_SYMBOL(HAL_OTP_V100_WriteByte);
EXPORT_SYMBOL(HAL_OTP_V100_WriteBit);
EXPORT_SYMBOL(HAL_OTP_V100_GetSrBit);
EXPORT_SYMBOL(HAL_OTP_V100_SetSrBit);
EXPORT_SYMBOL(HAL_OTP_V100_FuncDisable);
EXPORT_SYMBOL(HAL_OTP_V100_Reset);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

