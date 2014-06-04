
#ifndef __KCOM_HIDMAC_H__
#define __KCOM_HIDMAC_H__

#define UUID_HI_DMAC_V_1_0_0_0 "hi-dmac-1.0.0.0"

	/*modified by wzh for 3560v200 2009-1-7 begin*/
	#define DMAC_SCI_RX_REQ  	          0
	#define DMAC_SCI_TX_REQ  	          1 
	#define DMAC_SSP_RX_REQ 	          2
	#define DMAC_SSP_TX_REQ 	          3
	#define DMAC_RESERVED_REQ3		      4
	#define DMAC_SPDIF_TX_REQ             5
	#define DMAC_RESERVED_REQ4		      6
	#define DMAC_RESERVED_REQ5	  	      7
	#define DMAC_SIO0_RX_REQ  	          8
	#define DMAC_SIO0_TX_REQ  	          9
	#define DMAC_SIO1_RX_REQ  	          10
	#define DMAC_SIO1_TX_REQ  	          11
	#define DMAC_UART0_RX_REQ			  12
	#define DMAC_UART0_TX_REQ			  13
	#define DMAC_UART1_RX_REQ			  14
	#define DMAC_UART1_TX_REQ			  15 
	/*modified by wzh for 3560v200 2009-1-7 end*/
 
/*sturcture for LLI*/
typedef struct dmac_lli
{
    	unsigned int src_addr;                 /*source address*/
    	unsigned int dst_addr;                 /*destination address*/
    	unsigned int next_lli;                 /*pointer to next LLI*/
    	unsigned int lli_transfer_ctrl;            /*control word*/
}dmac_lli;



struct kcom_hi_dmac {
	struct kcom_object kcom;
	int (*dmac_channelclose)(unsigned int channel);
    int (*dmac_register_isr)(unsigned int channel,void *pisr);
    int (*dmac_channel_free)(unsigned int channel);
    int (*free_dmalli_space)(unsigned int *ppheadlli, unsigned int page_num);
    int (*dmac_start_llim2p)(unsigned int channel, unsigned int *pfirst_lli, unsigned int uwperipheralid);
    int (*dmac_buildllim2m)(unsigned int * ppheadlli, unsigned int pdest, unsigned int psource, 
                            unsigned int totaltransfersize, unsigned int uwnumtransfers);
    int (*dmac_channelstart)(unsigned int u32channel);
    int (*dmac_start_llim2m)(unsigned int channel, unsigned int *pfirst_lli);
    int  (*dmac_channel_allocate)(void *pisr);
    int (*allocate_dmalli_space)(unsigned int *ppheadlli, unsigned int page_num);
    int  (*dmac_buildllim2p)( unsigned int *ppheadlli, unsigned int *pmemaddr, 
                              unsigned int uwperipheralid, unsigned int totaltransfersize,
                              unsigned int uwnumtransfers ,unsigned int burstsize);
    int (*dmac_start_m2p)(unsigned int channel, unsigned int pmemaddr, unsigned int uwperipheralid,
                          unsigned int  uwnumtransfers,unsigned int next_lli_addr);
    int (*dmac_start_m2m)(unsigned int channel, unsigned int psource, 
                          unsigned int pdest, unsigned int uwnumtransfers);
    int (*dmac_wait)(unsigned int channel);

};

#ifndef __KCOM_HI_DMAC_INTER__

extern struct kcom_hi_dmac *p_kcom_hi_dmac;

#define DECLARE_KCOM_HI_DMAC() struct kcom_hi_dmac *p_kcom_hi_dmac
#define KCOM_HI_DMAC_INIT()	KCOM_GET_INSTANCE(UUID_HI_DMAC_V_1_0_0_0, p_kcom_hi_dmac)
#define KCOM_HI_DMAC_EXIT()	KCOM_PUT_INSTANCE(p_kcom_hi_dmac)

#define dmac_channelclose  p_kcom_hi_dmac->dmac_channelclose
#define dmac_register_isr  p_kcom_hi_dmac->dmac_register_isr
#define dmac_channel_free  p_kcom_hi_dmac->dmac_channel_free
#define free_dmalli_space  p_kcom_hi_dmac->free_dmalli_space
#define dmac_start_llim2p  p_kcom_hi_dmac->dmac_start_llim2p
#define dmac_buildllim2m   p_kcom_hi_dmac->dmac_buildllim2m
#define dmac_channelstart  p_kcom_hi_dmac->dmac_channelstart
#define dmac_start_llim2m  p_kcom_hi_dmac->dmac_start_llim2m
#define dmac_channel_allocate  p_kcom_hi_dmac->dmac_channel_allocate
#define allocate_dmalli_space  p_kcom_hi_dmac->allocate_dmalli_space
#define dmac_buildllim2p  p_kcom_hi_dmac->dmac_buildllim2p
#define dmac_start_m2p  p_kcom_hi_dmac->dmac_start_m2p
#define dmac_start_m2m  p_kcom_hi_dmac->dmac_start_m2m
#define dmac_wait  p_kcom_hi_dmac->dmac_wait

#endif

#endif

