/* ./arch/arm/mach-hi3511_v100_f01/dmac.h
 *
 *
 * History:
 *      17-August-2006 create this file
 */
#ifndef __HI_INC_ECSDMAC_H__
#define __HI_INC_ECSDMAC_H__

#define OSDRV_MODULE_VERSION_STRING "DMAC-MF @hi3720  2010-05-24 20:52:37"

#define DMAC_INT    (59 + 32)

 #define DMAC_CRG_BASE				 0x101f50c4
 #define DMAC_CRG_REG			 	IO_ADDRESS(DMAC_CRG_BASE)



#define DMAC_BASE_REG                           0x60030000

#define  dmac_writew(addr,value)      ((*(volatile unsigned int *)(addr)) = (value))
#define  dmac_readw(addr,v)           (v =(*(volatile unsigned int *)(addr)))


//#define DDRAM_ADRS              0xC0000000              /* fixed */
//#define DDRAM_SIZE              0x3FFFFFFF              /* 1GB DDR. */

#define DDRAM_ADRS              0x80000000                /* 3720 change */
#define DDRAM_SIZE              0x7FFFFFFF        /* 3720 change */

#define FLASH_BASE              0x80000000
#define FLASH_SIZE              0x02000000              /* (32MB) */

#define ITCM_BASE               0x0
#define ITCM_SIZE               0x800


#define DMAC_CONFIGURATIONx_HALT_DMA_ENABLE     (0x01L<<18)
#define DMAC_CONFIGURATIONx_ACTIVE              (0x01L<<17)
#define DMAC_CONFIGURATIONx_CHANNEL_ENABLE       1
#define DMAC_CONFIGURATIONx_CHANNEL_DISABLE      0


#define DMAC_INTSTATUS 	                        IO_ADDRESS(DMAC_BASE_REG + 0X00)
#define DMAC_INTTCSTATUS                        IO_ADDRESS(DMAC_BASE_REG + 0X04)
#define DMAC_INTTCCLEAR                         IO_ADDRESS(DMAC_BASE_REG + 0X08)
#define DMAC_INTERRORSTATUS                     IO_ADDRESS(DMAC_BASE_REG + 0X0C)
#define DMAC_INTERRCLR                          IO_ADDRESS(DMAC_BASE_REG + 0X10)
#define DMAC_RAWINTTCSTATUS                     IO_ADDRESS(DMAC_BASE_REG + 0X14)
#define DMAC_RAWINTERRORSTATUS                  IO_ADDRESS(DMAC_BASE_REG + 0X18)
#define DMAC_ENBLDCHNS                          IO_ADDRESS(DMAC_BASE_REG + 0X1C)
#define DMAC_CONFIG                             IO_ADDRESS(DMAC_BASE_REG + 0X30)
#define DMAC_SYNC                               IO_ADDRESS(DMAC_BASE_REG + 0X34)

#define DMAC_MAXTRANSFERSIZE                    0x0fff /*the max length is denoted by 0-11bit*/
#define MAXTRANSFERSIZE                         DMAC_MAXTRANSFERSIZE
#define DMAC_CxDISABLE                          0x00
#define DMAC_CxENABLE                           0x01

/*the definition for DMAC channel register*/

#define DMAC_CxBASE(i)                          IO_ADDRESS(DMAC_BASE_REG + 0x100+i*0x20)
#define DMAC_CxSRCADDR(i)                       DMAC_CxBASE(i)
#define DMAC_CxDESTADDR(i)                      (DMAC_CxBASE(i)+0x04)
#define DMAC_CxLLI(i)                           (DMAC_CxBASE(i)+0x08)
#define DMAC_CxCONTROL(i)                       (DMAC_CxBASE(i)+0x0C)
#define DMAC_CxCONFIG(i)                        (DMAC_CxBASE(i)+0x10)

/*the means the bit in the channel control register*/

#define DMAC_CxCONTROL_M2M                      0x8f489000  /* Dwidth=32,burst size=4 */
#define DMAC_CxCONTROL_LLIM2M                   0x0f480000  /* Dwidth=32,burst size=1 */
#define DMAC_CxLLI_LM                           0x01

#define DMAC_CxCONFIG_M2M                       0xc000
#define DMAC_CxCONFIG_LLIM2M                    0xc000

/*#define DMAC_CxCONFIG_M2M  0x4001*/

#define DMAC_CHANNEL_ENABLE                     1
#define DMAC_CHANNEL_DISABLE                    0xfffffffe

#define DMAC_CxCONTROL_P2M                      0x89409000
#define DMAC_CxCONFIG_P2M                       0xd000

#define DMAC_CxCONTROL_M2P                      0x86089000
#define DMAC_CxCONFIG_M2P                       0xc800

#define DMAC_CxCONFIG_SIO_P2M                   0x0000d000
#define DMAC_CxCONFIG_SIO_M2P                   0x0000c800

/*default the config and sync regsiter for DMAC controller*/
#define DMAC_CONFIG_VAL                         0x01    /*M1,M2 little endian, enable DMAC*/
#define DMAC_SYNC_VAL                           0x0     /*enable the sync logic for the 16 peripheral*/

/*definition for the return value*/



#define DMAC_ERROR_BASE                         100
#define DMAC_CHANNEL_INVALID                    (DMAC_ERROR_BASE+1)

#define DMAC_TRXFERSIZE_INVALID                 (DMAC_ERROR_BASE+2)
#define DMAC_SOURCE_ADDRESS_INVALID             (DMAC_ERROR_BASE+3)
#define DMAC_DESTINATION_ADDRESS_INVALID        (DMAC_ERROR_BASE+4)
#define DMAC_MEMORY_ADDRESS_INVALID             (DMAC_ERROR_BASE+5)
#define DMAC_PERIPHERAL_ID_INVALID              (DMAC_ERROR_BASE+6)
#define DMAC_DIRECTION_ERROR                    (DMAC_ERROR_BASE+7)
#define DMAC_TRXFER_ERROR                       (DMAC_ERROR_BASE+8)
#define DMAC_LLIHEAD_ERROR                      (DMAC_ERROR_BASE+9)
#define DMAC_SWIDTH_ERROR                       (DMAC_ERROR_BASE+0xa)
#define DMAC_LLI_ADDRESS_INVALID                (DMAC_ERROR_BASE+0xb)
#define DMAC_TRANS_CONTROL_INVALID              (DMAC_ERROR_BASE+0xc)
#define DMAC_MEMORY_ALLOCATE_ERROR              (DMAC_ERROR_BASE+0xd)
#define DMAC_NOT_FINISHED                       (DMAC_ERROR_BASE+0xe)

#define DMAC_TIMEOUT	                        (DMAC_ERROR_BASE+0xf)
#define DMAC_CHN_SUCCESS                        (DMAC_ERROR_BASE+0x10)
#define DMAC_CHN_ERROR                          (DMAC_ERROR_BASE+0x11)
#define DMAC_CHN_TIMEOUT                        (DMAC_ERROR_BASE+0x12)
#define DMAC_CHN_ALLOCAT                        (DMAC_ERROR_BASE+0x13)
#define DMAC_CHN_VACANCY                        (DMAC_ERROR_BASE+0x14)

#define DMAC_CONFIGURATIONx_ACTIVE_NOT           0



#define DMAC_MAX_PERIPHERALS	                 16
#define DMAC_MAX_CHANNELS 	                     8
#define MEM_MAX_NUM                              3

/*define the Data register for the pepherial */

#define SIO0_BASE_REG                            0x60150000
#define SIO0_TX_LEFT_FIFO                        (SIO0_BASE_REG+0x4c)
#define SIO0_TX_RIGHT_FIFO                       (SIO0_BASE_REG+0x50)
#define SIO0_RX_LEFT_FIFO                        (SIO0_BASE_REG+0x54)
#define SIO0_RX_RIGHT_FIFO                       (SIO0_BASE_REG+0x58)
#define SIO0_TX_FIFO                             (SIO0_BASE_REG+0xc0)
#define SIO0_RX_FIFO                             (SIO0_BASE_REG+0xa0)

#define SIO1_BASE_REG                            0x60160000
   #define SIO1_TX_LEFT_FIFO                        (SIO1_BASE_REG+0x4c)
   #define SIO1_TX_RIGHT_FIFO                       (SIO1_BASE_REG+0x50)
   #define SIO1_RX_LEFT_FIFO                        (SIO1_BASE_REG+0x54)
   #define SIO1_RX_RIGHT_FIFO                       (SIO1_BASE_REG+0x58)
   #define SIO1_TX_FIFO                             (SIO1_BASE_REG+0xc0)
   #define SIO1_RX_FIFO                             (SIO1_BASE_REG+0xa0)

    #define SIO2_BASE_REG                            0x60170000
    #define SIO2_TX_LEFT_FIFO                        (SIO2_BASE_REG+0x4c)
    #define SIO2_TX_RIGHT_FIFO                       (SIO2_BASE_REG+0x50)
    #define SIO2_RX_LEFT_FIFO                        (SIO2_BASE_REG+0x54)
    #define SIO2_RX_RIGHT_FIFO                       (SIO2_BASE_REG+0x58)
    #define SIO2_TX_FIFO                             (SIO2_BASE_REG+0xc0)
    #define SIO2_RX_FIFO                             (SIO2_BASE_REG+0xa0)

//#define SSP_BASE_REG                             0x200e0000
//#define SSP_DATA_REG                             (SSP_BASE_REG+0x08)


//#define MMC_BASE_REG                             0x10030000
//#define MMC_RX_REG                               (MMC_BASE_REG+0x100)
//#define MMC_TX_REG                               (MMC_BASE_REG+0x100)

//#define UART0_BASE_REG                           0x20090000
//#define UART0_DATA_REG                           (UART0_BASE_REG+0x0)

//#define UART1_BASE_REG                           0x200A0000
//#define UART1_DATA_REG                           (UART1_BASE_REG+0x0)

//#define UART2_BASE_REG                           0x200B0000
//#define UART2_DATA_REG                           (UART2_BASE_REG+0x0)

/*the transfer control and configuration value for different peripheral*/


#define RESERVED_DATA_REG                        0x0   //need modify
#define RESERVED_CONTROL 				0x0   //need modify

#define RESERVED_REQ0_CONFIG			(DMAC_CxCONFIG_P2M|(0x0<<1))
#define RESERVED_REQ1_CONFIG			(DMAC_CxCONFIG_P2M|(0x1<<1))
#define RESERVED_REQ2_CONFIG			(DMAC_CxCONFIG_P2M|(0x2<<1))
#define RESERVED_REQ3_CONFIG			(DMAC_CxCONFIG_P2M|(0x3<<1))
#define RESERVED_REQ4_CONFIG			(DMAC_CxCONFIG_P2M|(0x4<<1))
#define RESERVED_REQ5_CONFIG			(DMAC_CxCONFIG_P2M|(0x5<<1))
#define RESERVED_REQ6_CONFIG			(DMAC_CxCONFIG_P2M|(0x6<<1))
#define RESERVED_REQ7_CONFIG			(DMAC_CxCONFIG_P2M|(0x7<<1))
#define RESERVED_REQ8_CONFIG			(DMAC_CxCONFIG_P2M|(0x8<<1))
#define RESERVED_REQ9_CONFIG			(DMAC_CxCONFIG_P2M|(0x9<<1))


#define SIO0_RX_CONTROL                          0x8a489000
//#define SIO0_RX_CONTROL                          0x0a489000
#define SIO0_RX_CONFIG                           (DMAC_CxCONFIG_SIO_P2M|(0x0a<<1))

#define SIO0_TX_CONTROL                          0x85489000
//#define SIO0_TX_CONTROL                          0x05489000
#define SIO0_TX_CONFIG                           (DMAC_CxCONFIG_SIO_M2P|(0x0b<<6))

#define SIO1_RX_CONTROL                          0x8a489000
//#define SIO1_RX_CONTROL                          0x0a489000
#define SIO1_RX_CONFIG                           (DMAC_CxCONFIG_SIO_P2M|(0x0c<<1))

#define SIO1_TX_CONTROL                          0x85489000
//#define SIO1_TX_CONTROL                          0x05489000
#define SIO1_TX_CONFIG                           (DMAC_CxCONFIG_SIO_M2P|(0x0d<<6))

#define SIO2_RX_CONTROL                          0x8a489000
//#define SIO2_RX_CONTROL                          0x0a489000
#define SIO2_RX_CONFIG                           (DMAC_CxCONFIG_SIO_P2M|(0x0e<<1))

#define SIO2_TX_CONTROL                          0x85489000
//#define SIO2_TX_CONTROL                          0x05489000
#define SIO2_TX_CONFIG                           (DMAC_CxCONFIG_SIO_M2P|(0x0f<<6))


//#define SSP_RX_CONTROL                           0x89449000
//#define SSP_RX_CONFIG                            (DMAC_CxCONFIG_P2M|(0x06<<1))

//#define SSP_TX_CONTROL                           0x86289000
//#define SSP_TX_CONFIG                            (DMAC_CxCONFIG_M2P|(0x07<<6))

//#define MMC_RX_CONTROL                           0x8a492000
//#define MMC_RX_CONFIG                            (DMAC_CxCONFIG_P2M|(0x08<<1))

//#define MMC_TX_CONTROL                           0x87492000
//#define MMC_TX_CONFIG                            (DMAC_CxCONFIG_M2P|(0x09<<6))

//#define UART0_RX_CONTROL                         DMAC_CxCONTROL_P2M
//#define UART0_RX_CONFIG                          (DMAC_CxCONFIG_P2M|(0x0a<<1))

//#define UART0_TX_CONTROL                         DMAC_CxCONTROL_M2P
//#define UART0_TX_CONFIG                          (DMAC_CxCONFIG_M2P|(0x0b<<6))

//#define UART1_RX_CONTROL                         DMAC_CxCONTROL_P2M
//#define UART1_RX_CONFIG                          (DMAC_CxCONFIG_P2M|(0x0c<<1))

//#define UART1_TX_CONTROL                         DMAC_CxCONTROL_M2P
//#define UART1_TX_CONFIG                          (DMAC_CxCONFIG_M2P|(0x0d<<6))

//#define UART2_RX_CONTROL                         DMAC_CxCONTROL_P2M
//#define UART2_RX_CONFIG                          (DMAC_CxCONFIG_P2M|(0x0e<<1))

//#define UART2_TX_CONTROL                         DMAC_CxCONTROL_M2P
//#define UART2_TX_CONFIG                          (DMAC_CxCONFIG_M2P|(0x0f<<6))



/*DMAC peripheral structure*/
typedef struct dmac_peripheral
{
   	unsigned int         peri_id;          /* peripherial ID*/
   	void                 *pperi_addr;      /*peripheral data register address*/
   	unsigned int         transfer_ctrl;    /*default channel control word*/
   	unsigned int         transfer_cfg;     /*default channel configuration word*/
}dmac_peripheral;

typedef struct mem_addr
{
    	unsigned int addr_base;
    	unsigned int size;
}mem_addr;

#endif /* End of #ifndef __HI_INC_ECSDMACC_H__ */

