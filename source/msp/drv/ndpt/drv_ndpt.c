/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_ndpt.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/11/10
  Description   :
  History       :
  1.Date        : 2009/11/10
    Author      : f00172091
    Modification: Created file

*******************************************************************************/
#include <linux/device.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/fs.h>
#include <linux/netfilter.h>
#include <linux/netfilter_ipv4.h>
#include <linux/skbuff.h>
#include <linux/kernel.h>
#include <linux/netdevice.h>
#include <linux/etherdevice.h>
#include <linux/inetdevice.h>
#include <linux/delay.h>
#include <net/route.h>
#include <net/arp.h>
#include <net/ip.h>
#include <linux/time.h>

#include "hi_drv_proc.h"
#include "hi_drv_struct.h"
#include "drv_ndpt_ext.h"
#include "hi_drv_module.h"
#include "hi_drv_mem.h"
#include "hi_drv_ndpt.h"
#include "hi_kernel_adapt.h"

#include "hi_module.h"

#define NDPT_NAME                      "HI_NDPT"

static HI_BOOL  bNdptDevState = HI_FALSE;
static NDPT_CH_S *pstNdptCh_Head = NULL;
static NDPT_CH_S *pstNdptCh_Tail = NULL;

static NDPT_CH_S * pstNdptCh_Arry[NDPT_MAX_CHANNEL_COUNT];

static NDPT_EXPORT_FUNC_S s_NdptExportFuncs =
{
    .pfnNdptRegRevfun       = HI_DRV_NDPT_RevFun,
    .pfnNdptRtpSendto       = HI_DRV_NDPT_SendRtp,
    .pfnNdptCreateLink      = HI_DRV_NDPT_CreateLink,
    .pfnNdptModifyNetPara   = HI_DRV_NDPT_ModifyNetPara,
    .pfnNdptDestroyLink     = HI_DRV_NDPT_DestroyLink
};


HI_DECLARE_MUTEX(s_NetAdapterMute);
#define HI_NDPT_LOCK()  {if(down_interruptible(&s_NetAdapterMute)) return HI_FAILURE;}
#define HI_NDPT_CREATELINK_LOCK()  {if(down_interruptible(&s_NetAdapterMute)) return 0;}
#define HI_NDPT_UNLOCK() up(&s_NetAdapterMute)

static  NDPT_CH_S * ndpt_get_channel(HI_U32 handle);

//extern HI_S32 hieth_register_rtp_filter(void * pfunc);

HI_S32 NDPT_ProcRead(struct seq_file *p, void *v)
{
    NDPT_CH_S *pstNdptCh = NULL;
    HI_U32  u32SeqCnt;
    HI_U32  u32IntervalMax = 0;
    HI_U32  u32IntervalMin = 0;
    HI_U32  u32IntervalCnt = 0;
    HI_U32  u32Interval = 0;
    NDPT_PACKET_INTERVAL_S *  pstInterval = NULL;

    PROC_PRINT(p,"---------Hisilicon Net adapter Info---------\n");

    HI_NDPT_LOCK();    

    for(pstNdptCh=pstNdptCh_Head; pstNdptCh!=NULL; pstNdptCh=pstNdptCh->next)
    {
        PROC_PRINT(p,"\n");
        PROC_PRINT(p,"Channel index :  [%d]\n",pstNdptCh->handle&0xff);
        if(pstNdptCh->stNetFlag.bit1SrcIP)
            PROC_PRINT(p,"Source IP :  [%d.%d.%d.%d]\n",pstNdptCh->stNetPara.sip[pstNdptCh->stNetPara.sip_len-4],pstNdptCh->stNetPara.sip[pstNdptCh->stNetPara.sip_len-3],pstNdptCh->stNetPara.sip[pstNdptCh->stNetPara.sip_len-2],pstNdptCh->stNetPara.sip[pstNdptCh->stNetPara.sip_len-1]);
        if(pstNdptCh->stNetFlag.bit1DstIP)
            PROC_PRINT(p,"Dest IP :  [%d.%d.%d.%d]\n",pstNdptCh->stNetPara.dip[pstNdptCh->stNetPara.dip_len-4],pstNdptCh->stNetPara.dip[pstNdptCh->stNetPara.dip_len-3],pstNdptCh->stNetPara.dip[pstNdptCh->stNetPara.dip_len-2],pstNdptCh->stNetPara.dip[pstNdptCh->stNetPara.dip_len-1]);
        if(pstNdptCh->stNetFlag.bit1SrcPort)
            PROC_PRINT(p,"Source port :  [%d]\n",pstNdptCh->stNetPara.sport);
        if(pstNdptCh->stNetFlag.bit1DstPort)
            PROC_PRINT(p,"Dest port :  [%d]\n",pstNdptCh->stNetPara.dport);
        if((pstNdptCh->stNetFlag.bit1IPTos))
            PROC_PRINT(p,"Mask :  [0x%02x]\n",pstNdptCh->stNetPara.mask);
        if(pstNdptCh->stNetFlag.bit1IPTos)
            PROC_PRINT(p,"IP_Tos :  [0x%02x]\n",pstNdptCh->stNetPara.ip_tos);
        if(pstNdptCh->stNetFlag.bit1Vlan)
        {
            PROC_PRINT(p,"Vlan_En :  [%d]\n",pstNdptCh->stNetPara.vlan_en);
            PROC_PRINT(p,"Vlan_Pri :  [%d]\n",pstNdptCh->stNetPara.vlan_pri);
            PROC_PRINT(p,"Vlan_Pid :  [%d]\n",pstNdptCh->stNetPara.vlan_pid);
        }
        PROC_PRINT(p,"Loopback mode :  [%d]\n",pstNdptCh->eLoopback);
        PROC_PRINT(p,"Transport ID :  [%d]\n",pstNdptCh->TransId);
        PROC_PRINT(p,"Send  Try/Ok :  [%d/%d]\n",pstNdptCh->uiSendTry,pstNdptCh->uiSendOkCnt);

        if(pstNdptCh->uiRevRtpCnt == 0)
            u32SeqCnt = 0;
        else
            u32SeqCnt = (pstNdptCh->uiRevSeqMax-pstNdptCh->uiRevSeqMin + 1) + pstNdptCh->uiRevSeqCnt;
        PROC_PRINT(p,"Received OK/Lost :  [%d/%d]\n",pstNdptCh->uiRevRtpCnt,u32SeqCnt-pstNdptCh->uiRevRtpCnt);

        u32IntervalCnt = pstNdptCh->u32RevIntervalCnt;
        pstInterval = pstNdptCh->pstRevIntervalHead;
        u32IntervalMax = 0;
        u32IntervalMin = 0xffffffff;
        while(u32IntervalCnt > 0)
        {
            u32Interval = pstInterval->u32Interval;
            if(u32Interval > u32IntervalMax)
                u32IntervalMax = u32Interval;
            if(u32Interval < u32IntervalMin)
                u32IntervalMin = u32Interval;
           pstInterval = pstInterval->next;
           u32IntervalCnt--;
        };
        
        if(pstNdptCh->u32RevIntervalCnt > 0)
        {
            PROC_PRINT(p,"Receive interval (us): average [%d], max [%d], min [%d]\n",pstNdptCh->u32RevIntervalTotal/pstNdptCh->u32RevIntervalCnt,u32IntervalMax,u32IntervalMin);
        }    

        if(pstNdptCh->stSendErrFlag.bit1DstIP)
            PROC_PRINT(p,"Send ERR, can't achieve dest IP address .\n");
        if(pstNdptCh->stSendErrFlag.bit1Long)
            PROC_PRINT(p,"Send ERR, rtp packet is too long.\n");
        if(pstNdptCh->stSendErrFlag.bit1SameIP)
            PROC_PRINT(p,"Send NOTICE, the source and dest ip is same.\n");
        if(pstNdptCh->stSendErrFlag.bit1Skb)
            PROC_PRINT(p,"Send ERR, malloc skb failure.\n");
        if(pstNdptCh->stSendErrFlag.bit1MacHd)
            PROC_PRINT(p,"Send ERR, create mac header failure.\n");
        if(pstNdptCh->stSendErrFlag.bit1Xmit)
            PROC_PRINT(p,"Send ERR, dev_queue_xmit() failure.\n");
        if(pstNdptCh->stSendErrFlag.bit1Para)
            PROC_PRINT(p,"Send ERR, the para of HI_DRV_NDPT_SendRtp() is error.\n");
        if(pstNdptCh->stSendErrFlag.bit1NotReady)
            PROC_PRINT(p,"Send ERR, the channel is not ready to send and receive data.\n");
        
        PROC_PRINT(p,"\n");
    }
    
    HI_NDPT_UNLOCK();    

    PROC_PRINT(p,"\n");
    PROC_PRINT(p,"NDPT debug cmd format:  echo ChIndex Cmd Para > /proc/msp/ndpt \n");
    PROC_PRINT(p,"ChIndex : the ndpt channel index.\n");
    PROC_PRINT(p,"Cmd : 0--lookback 1--clear send and receive cnt and flag 2--ip tos.\n");
    PROC_PRINT(p,"Sample to set SEND_BACK lookback mode : echo 0 0 1 > /proc/msp/ndpt\n");
    PROC_PRINT(p,"\n");
    return HI_SUCCESS;
}

HI_S32 NDPT_ProcWrite(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)

{
    HI_U8           ProcPara[64];
    char *p;
    HI_U32  handle;
    HI_U32  index;
    HI_U32  cmd;
    HI_U32  para1;
//    HI_U32  para2;
    NDPT_CH_S *pstNdptCh = NULL;

    if (copy_from_user(ProcPara, buf, count))
    {
        return HI_FAILURE;
    }

    p = ProcPara;
    index = (HI_U32)simple_strtoul(p,&p,10);
    cmd = (HI_U32)simple_strtoul(p+1,&p,10);
    para1 = (HI_U32)simple_strtoul(p+1,&p,10);
//    para2 = (HI_U32)simple_strtoul(p+1,&p,10);

    HI_INFO_NDPT("\n%s(),index:%d, cmd:%d, para:%d\n",__FUNCTION__,index,cmd,para1);
    if(index>=NDPT_MAX_CHANNEL_COUNT)
    {
        HI_ERR_NDPT("invalid channel index\n");
        return -1;
    }

    HI_NDPT_LOCK();    
    handle = (HI_ID_NDPT<<16) | index;
    pstNdptCh = ndpt_get_channel(handle);
    if(pstNdptCh == NULL)
    {
        HI_NDPT_UNLOCK();    
        HI_ERR_NDPT("invalid channel index\n");
        return HI_FAILURE;
    }
    
    if(cmd == NDPT_PROC_CMD_LOOKBACK)    //set lookback mode
    {
        pstNdptCh->eLoopback = para1;
    }
    else if(cmd == NDPT_PROC_CMD_RESETCNT)   //clear send and receive count
    {
        pstNdptCh->uiSendTry = 0;
        pstNdptCh->uiSendOkCnt = 0;
        memset(&pstNdptCh->stSendErrFlag,0,sizeof(NDPT_SEND_ERR_FLAG_S));

        pstNdptCh->uiRevRtpCnt = 0;
        pstNdptCh->uiRevSeqCnt = 0;
        pstNdptCh->uiRevSeqMax = 0;
        pstNdptCh->uiRevSeqMin = 0;
        pstNdptCh->usRevFlag = 0;

        pstNdptCh->u32RevIntervalCnt = 0;
        pstNdptCh->u32RevIntervalTotal = 0;
    }
    else if(cmd == NDPT_PROC_CMD_SETIPTOS)
    {
        pstNdptCh->stNetPara.ip_tos = para1;
        pstNdptCh->stNetPara.mask |= 0x01;
        pstNdptCh->stNetFlag.bit1IPTos = 1;
    }
    HI_NDPT_UNLOCK();    
        
    return count;
}



static struct net_device *dev_get_by_ip(HI_U32 ip)
{
#if 0
	return hieth_get_device_by_ip(ip);
#else
    // struct net *net = dev_net(NULL);
    struct net *net = &init_net;
    struct net_device *dev = NULL;
    struct in_device *ipdev = NULL;
    struct in_ifaddr *ifaddr = NULL;

    /*search device which has started and ip matching*//*CNcomment:查找已启动，并且IP地址匹配的设备*/
	
    read_lock(&dev_base_lock);

    if(!net)
    {
            HI_ERR_NDPT("count find net.\n");
            return NULL;
    }

    dev = first_net_device(net);
    while(dev!=NULL)
    {
        if(dev->flags & IFF_UP){

            /*can resume that device had found when the ip of the device is the same as the search ip*//*CNcomment:设备的ip是否与查找的ip相等，相等证明设备找到了*/
			
            ipdev = in_dev_get(dev);
            if(ipdev != NULL)
            {
                for(ifaddr = ipdev->ifa_list; ifaddr != NULL; ifaddr = ifaddr->ifa_next){
                    if(ifaddr->ifa_address == ip){
                        dev_hold(dev);
                        in_dev_put(ipdev);
                        read_unlock(&dev_base_lock);
                        return dev;
                    }
                }
                in_dev_put(ipdev);
            }
        }
        dev = next_net_device(dev);
    }

    read_unlock(&dev_base_lock);
    return NULL;
#endif	
}


#if 0
static struct net_device *dev_get_by_mac(HI_U8 *smac)
{
#if 0
	return hieth_get_device_mac(smac);
#else
    struct net *net = dev_net(NULL);
    struct net_device *dev = NULL;

    read_lock(&dev_base_lock);
    if(!net)
    {
            HI_ERR_NDPT("count find net.\n");
            return NULL;
    }

    //	dev = dev_getbyhwaddr(net,type,smac)
    dev = first_net_device(net);
    while(dev!=NULL)
    {
        if(0 == memcmp(smac, dev->dev_addr, NDPT_ETH_ALEN))
        {
            dev_hold(dev);
            break;
        }
        dev = next_net_device(dev);
    }
    read_unlock(&dev_base_lock);
    return dev;
#endif	
}


struct net_device *dev_get_by_type(HI_U32 type)
{
    struct net_device *dev = NULL;

    read_lock(&dev_base_lock);
    for(dev = dev_base; dev != NULL; dev = dev->next){
        if((dev->flags & IFF_UP) && (dev->type == type)){
            dev_hold(dev);
            break;
        }
    }

    read_unlock(&dev_base_lock);
    return dev;
}

static HI_S32	get_dev_ip(struct net_device *dev,HI_U32 *dev_ip)
{
	struct in_device *ipdev = NULL;
	struct in_ifaddr *ifaddr = NULL;
	
	if(!dev || !dev_ip)
		return -1;
		
	if(dev->flags & IFF_UP){

	    ipdev = in_dev_get(dev);
	    if(ipdev == NULL){
	        return -2;
	    }
	    ifaddr = ipdev->ifa_list;
	    if(ifaddr!=NULL)
	    {
	   	 *dev_ip = ifaddr->ifa_address;
//	   	 *dev_ip = ifaddr->ifa_local;
	   	 in_dev_put(ipdev);
		 return 0;
	    }
	    else
	    {
	   	 in_dev_put(ipdev);
		 return -3;
	    }
	}
	else
		return -4;
	return -5;
}
#endif

/*the first byte is minor*/
static  HI_S32 ndpt_get_ip4(HI_U32 len,HI_U8 *pAddr,HI_U32 *pIPV4)
{
    HI_U8   *p;

    if((pAddr==NULL)||(pIPV4==NULL))
        return HI_FAILURE;
    if((len != IPV4_ADDR_LEN)&&(len != IPV6_ADDR_LEN))
        return HI_FAILURE;

    p = pAddr+(len-4);
    *pIPV4 = (p[3]<<24)|(p[2]<<16)|(p[1]<<8)|(p[0]);

    return HI_SUCCESS;
}

static HI_S32   ndpt_get_dest_mac(HI_U8 *dmac,struct net_device *dev,HI_U32 Dip,HI_U32 Sip)
{
    //struct net *net = dev_net(NULL);
    struct net *net = &init_net;
    struct rtable *rt;
    struct flowi4 fl;
    HI_U32 gateway = 0;
    struct neighbour *n = NULL;

    if(dmac == NULL)
        return HI_FAILURE;
    if(dev == NULL)
        return HI_FAILURE;
    if(net == NULL)
        return HI_FAILURE;

    memset(&fl, 0, sizeof(fl));
    fl.daddr = Dip;
    rt = ip_route_output_key(net, &fl);
    if(rt == NULL)
    {
        HI_ERR_NDPT("ip_route_output_key failed\n");
        return HI_FAILURE;
    }
    gateway = rt->rt_gateway;
    ip_rt_put(rt);

    n = __neigh_lookup(&arp_tbl, &gateway, dev, 1);
    if(n)
    {
        read_lock_bh(&n->lock);
        memcpy(dmac, n->ha, dev->addr_len);
        read_unlock_bh(&n->lock);
        neigh_release(n);
        if(!is_valid_ether_addr(dmac))
        {
        
            arp_send(ARPOP_REQUEST, ETH_P_ARP, gateway, dev, Sip, NULL, dev->dev_addr, NULL);
//            HI_ERR_NDPT("Dest mac is invalid, ART to gateway %08x\n",gateway);
            return HI_FAILURE;
        }
    }
    else
    {
        return HI_FAILURE;
    }
    
    return HI_SUCCESS;
}

static  NDPT_CH_S * ndpt_get_channel(HI_U32 handle)
{
    HI_U32  index;

    if(HI_ID_NDPT != (handle >> 16))
        return NULL;
    
    index = handle & 0xff;
    
    //if(index >= NDPT_MAX_CHANNEL_COUNT)
    //    return NULL;
	if (NDPT_MAX_CHANNEL_COUNT > index) //for fix MOTO
	{
		if(pstNdptCh_Arry[index] == NULL)
        	return NULL;
    
	    if(pstNdptCh_Arry[index]->handle == handle)
	        return pstNdptCh_Arry[index];
	}    
        
    return NULL;
}

/*check whether channel is ready can receive/send data*//*CNcomment:检查通道是否准备好收发数据*/

static HI_BOOL ndpt_is_channel_ready(NDPT_CH_S *pstNdptCh)
{
    if(pstNdptCh == NULL)
        return HI_FALSE;
    if(!pstNdptCh->stNetFlag.bit1SrcIP)
        return HI_FALSE;
    if(!pstNdptCh->stNetFlag.bit1DstIP)
        return HI_FALSE;
    if(!pstNdptCh->stNetFlag.bit1SrcPort)
        return HI_FALSE;
    if(!pstNdptCh->stNetFlag.bit1DstPort)
        return HI_FALSE;
    return HI_TRUE;
}

/*judge whether the net parameter is loopback model*//*CNcomment:判断网络参数是否为环回模式*/

#if 0
static HI_BOOL ndpt_is_loopback_by_net_para(NDPT_CH_S *pstNdptCh)
{
    NDPT_NET_PARA_S *pstNetPara = NULL;

    if(HI_FALSE == ndpt_is_channel_ready(pstNdptCh))
        return HI_FALSE;

    pstNetPara = &pstNdptCh->stNetPara;
    if(memcmp(&pstNetPara->sip[pstNetPara->sip_len-4],&pstNetPara->dip[pstNetPara->dip_len-4], IPV4_ADDR_LEN))
        return HI_FALSE;

    if(pstNetPara->sport != pstNetPara->dport)
        return HI_FALSE;
        
    return HI_TRUE;
}
#endif

static HI_S32 RTP_SendToIP(HI_U8 *psRtpPkt, HI_U32 uiRtpLen, 
                                NDPT_CH_S *pstNdptCh, HI_U16 even_odd)
{
    struct sk_buff *skb = NULL;
    struct net_device *dev = NULL;
    HI_S32 err;
    HI_S32 ret = 0;
    HI_U32 Sip;
    HI_U32 Dip;
    HI_U32 sport = pstNdptCh->stNetPara.sport;
    HI_U32 dport = pstNdptCh->stNetPara.dport;
    HI_U8 *smac = pstNdptCh->ucSrc_mac;
    HI_U8 haddr[NDPT_ETH_ALEN];
    HI_U8 *dmac = haddr;
    HI_U32 ip_pkt_len = 0;
    HDR_IP *sHdrIp = NULL;
    HDR_UDP  *sHdrUdp = NULL;
    HI_S32 tmp_len = 0;

    ndpt_get_ip4(pstNdptCh->stNetPara.sip_len, pstNdptCh->stNetPara.sip,&Sip);
    ndpt_get_ip4(pstNdptCh->stNetPara.dip_len, pstNdptCh->stNetPara.dip,&Dip);

//dev = dev_get_by_ip(Sip);
    dev = pstNdptCh->dev;
    if(dev == NULL){
        HI_ERR_NDPT("Can not find net device \n");
        ret = -1;
        goto out;
    }
    dev_hold(dev);
    
    if(Sip == Dip)
    {
        /*loop, loop has be dealed with by the machine itself*//*CNcomment:环回，本机环回时已处理*/
		
//        pstNdptCh->stSendErrFlag.bit1SameIP = 1;
        ret = HI_SUCCESS;
        goto out_unlock;
    }
    else
    {
        /*not loop, need send out*//*CNcomment:不是环回，是外发报文*/
		
        ret = ndpt_get_dest_mac(dmac,dev,Dip,Sip);
        if(ret != HI_SUCCESS)
        {
            pstNdptCh->stSendErrFlag.bit1DstIP = 1;
            ret = -1;
            goto out_unlock;
        }
        else
        {
            pstNdptCh->stSendErrFlag.bit1DstIP = 0;
        }
    }

    /*make sure that the frame is more than 60 byte*//*CNcomment:保证报文最短不会少于60 byte*/
	
    ip_pkt_len = sizeof(HDR_IP) +sizeof(HDR_UDP) + uiRtpLen;
    if(ip_pkt_len < (RTP_PKT_MINLEN - NDPT_ETH_HLEN )){
        ip_pkt_len = (RTP_PKT_MINLEN - NDPT_ETH_HLEN );
    }

    /*check whether the packet is super big*//*CNcomment:检查是否超长包*/
	
    if(ip_pkt_len > dev->mtu + dev->hard_header_len){
        pstNdptCh->stSendErrFlag.bit1Long = 1;
        ret = -1;
        goto out_unlock;
    }

    /*create skb*//*CNcomment:创建SKB*/
	
    skb = alloc_skb((ip_pkt_len + LL_RESERVED_SPACE(dev)), GFP_ATOMIC);
    if(skb == NULL){
//	 HI_ERR_NDPT("alloc_skb failure\n");
        pstNdptCh->stSendErrFlag.bit1Skb = 1;
        ret = -1;
        goto out_unlock;
    }
    skb_reserve(skb, LL_RESERVED_SPACE(dev));
    skb_put(skb, ip_pkt_len);
    memcpy(skb->data + sizeof(HDR_IP) + sizeof(HDR_UDP), psRtpPkt, uiRtpLen);
    tmp_len = sizeof(HDR_IP) +sizeof(HDR_UDP) + uiRtpLen;
    if(tmp_len < ip_pkt_len)
	memset(skb->data+tmp_len,0,ip_pkt_len-tmp_len);
    skb->dev = dev;
    skb->protocol = htons(ETH_P_IP);

    /*assign value to the head of UDP/IP packet*//*CNcomment:UDP和IP包头赋值*/
	
    sHdrIp = (HDR_IP*)skb->data;
    sHdrUdp = (HDR_UDP*)(skb->data + sizeof(HDR_IP));
	
	{
	    HI_U32 i;
	    HI_U32 uiSum;
	    HI_U32 uiLen;
	    HI_U16 *pusAddr;
	    HI_U32 uiUdpLen;

	    uiUdpLen = uiRtpLen+sizeof(HDR_UDP);

	    /*UDP fake header fields*/
	    sHdrIp->ttl =  0;
	    sHdrIp->protocol = 0x11;    /*UDP protocol*/
	    sHdrIp->check = htons((HI_U16)uiUdpLen);
	    sHdrIp->S_IP = Sip;  /*net byte sequence*/
	    sHdrIp->D_IP = Dip;  /*net byte sequence*/

        /* BEGIN: Modified by czg, 2010/11/5   PN:czg_st_1105_03*/
        if (even_odd<PORT_CONFIG)
        {
            sHdrUdp->S_Port = htons(sport + even_odd);     // ? Does it  need to be swaped by htons ?
            sHdrUdp->D_Port = htons(dport + even_odd);            
        }
        else
        {
            sHdrUdp->S_Port = htons(sport);     
            sHdrUdp->D_Port = htons(dport);                        
        }
        /* END:   Modified by czg, 2010/11/5 */        
        sHdrUdp->len = sHdrIp->check;
        sHdrUdp->checkSum = 0;

	    /*count UDP check sum*/
	    uiSum = 0;
	    uiLen = (12 + uiUdpLen) >> 1;
	    pusAddr = (HI_U16 *)&sHdrIp->ttl;

	    for(i = 0; i < uiLen; i++)
	    {
	        uiSum += (HI_U32)htons(*pusAddr);
	        pusAddr++;
	    }

	    if(((uiUdpLen + 1) >> 1) > (uiUdpLen >> 1))  /*tangxianquan modify*/
	    {
	        uiSum += (HI_U32)(((*(HI_U8 *)pusAddr) << 8) & 0xFF00);
	    }

	    while(uiSum & 0xffff0000)
	    {
	        uiSum = (uiSum >> 16) + (uiSum & 0xffff);
	    }
	 
	    uiSum = 0xffff - uiSum;
	    if(0 == uiSum)
	    {
	        uiSum = 0xffff;
	    }
	    sHdrUdp->checkSum = htons((HI_U16)uiSum);

	    /*fill IP header*/
	    sHdrIp->ver = 4;
	    sHdrIp->ihl = sizeof(HDR_IP) >> 2;
	    sHdrIp->len = htons((HI_U16)(uiUdpLen + sizeof(HDR_IP)));
           if(even_odd == PORT_EVEN)    //RTP data
            {
                sHdrIp->id = htons(pstNdptCh->usRtpSendSeq);  
                pstNdptCh->usRtpSendSeq++;
            }
           else
            {
                sHdrIp->id = 0;  
            }
//	    sHdrIp->flag = 0;
//	    sHdrIp->frag_offset = 0;
           sHdrIp->frag = htons(IP_DF);    //frgement flag and offset
	    sHdrIp->ttl = 0x40;
	    sHdrIp->check = 0;
           if(pstNdptCh->stNetPara.mask&0x01)
	        sHdrIp->tos = pstNdptCh->stNetPara.ip_tos;
           else if(even_odd == PORT_EVEN)
               sHdrIp->tos = NDPT_IP_TOS_DEFAULT;
           else
               sHdrIp->tos = 0;

	    /*count IP header check sum*/
	    pusAddr = (HI_U16 *)sHdrIp;
	    uiSum = 0;
	    for(i = 0; i < 10; i++)
	    {
	        uiSum += (HI_U32)htons(*pusAddr);
	        pusAddr++;
	    }

	    while((uiSum & 0xffff0000) != 0)
	    {
	        uiSum = (uiSum >> 16) + (uiSum & 0xffff);
	    }
	    uiSum = 0xffff - uiSum;
	    sHdrIp->check = htons((HI_U16)uiSum);
		
	}

    /*make MAC head*//*CNcomment:生成MAC头*/
	
    if (dev->header_ops &&
        dev->header_ops->create(skb, dev, ETH_P_IP, dmac, smac, skb->len) < 0){
        pstNdptCh->stSendErrFlag.bit1MacHd = 1;
        ret = -1;
//	 HI_ERR_NDPT("create mac header failure.\n");
        goto out_free;
    }

    {
        err = dev_queue_xmit(skb);
        if (err > 0 && (err = net_xmit_errno(err)) != 0){
            pstNdptCh->stSendErrFlag.bit1Xmit = 1;
            ret = -1;
//    	 HI_ERR_NDPT("dev_queue_xmit failure.\n");
            goto out_free;
        }
    }
    
    dev_put(dev);
    return 0;

out_free:
    kfree_skb(skb);
out_unlock:
    dev_put(dev);
out:
    return ret;
}

/*
detect ARP packet and RTP packet:
the skb coming frome net driver is IP packet, contain 4 bytes checkout and FCS in the tail of link layer.
if return 0, the net driver commit the data to protocal stack, otherwise, the data will be descared.
notice: this function is called in soft interrupt of net driver, cannot be reaved by other threads, donot need protect.
*/
/*CNcomment:
ARP和RTP包检测,
网卡驱动输入的skb为IP 报文，并包含链路层尾部的4字节校验和FCS。
返回值为0，网卡驱动将数据继续提交协议栈处理；返回值为1，网卡驱动将数据丢弃。
注意: 该函数在网卡驱动软中断中调用，不会被其它线程抢占，不需要加数据保护。
*/

HI_S32 adapter_rtp_filter(struct sk_buff    *skb)
{
    NDPT_CH_S *pstNdptCh = NULL;
    HI_U8 *pSrcIp = NULL;
    HI_U8 *pDstIp = NULL;
    HDR_IP *ip_hd = NULL;
    HDR_UDP  *udp_hd = NULL;
    HI_U8 ip_hd_len;
    RTP_NET_BUFFER_STRU rtp_buffer;
    HI_U32  uiSeqNo;
    struct timeval stArriveCur;
    HI_S32 ret;
    
    if(skb->protocol == htons(ETH_P_IP))	//IPV4
    {
        if(skb->data[9]!=17)    //check if is UDP protocol
            return 0;
        ip_hd = (HDR_IP *)skb->data;        
        /*check the data matches with the rtp channel or not*/
        
        for(pstNdptCh=pstNdptCh_Head; pstNdptCh!=NULL; pstNdptCh=pstNdptCh->next)
        {
            if(HI_FALSE == ndpt_is_channel_ready(pstNdptCh))
                continue;

            if(!pstNdptCh->revfunc)
                continue;
            
            pSrcIp = &pstNdptCh->stNetPara.sip[pstNdptCh->stNetPara.sip_len-4];
            pDstIp = &pstNdptCh->stNetPara.dip[pstNdptCh->stNetPara.dip_len-4];
                
            if(memcmp(&skb->data[16],pSrcIp, IPV4_ADDR_LEN))
                continue;
            if(memcmp(&skb->data[12],pDstIp, IPV4_ADDR_LEN))
                continue;

            ip_hd_len = (skb->data[0]&0x0f)*4;
            udp_hd = (HDR_UDP *)(skb->data + ip_hd_len);

            if(pstNdptCh->stNetPara.dport != (ntohs(udp_hd->S_Port)&0xfffe))
                continue;
            if(pstNdptCh->stNetPara.sport != (ntohs(udp_hd->D_Port)&0xfffe))
                continue;
            
            if(PORT_EVEN == (ntohs(udp_hd->D_Port)&0x01))   //RTP data
            {
                pstNdptCh->uiRevRtpCnt++;
                uiSeqNo = ntohs(ip_hd->id);
				
				/*not start to count*//*CNcomment:计数未开始*/
				
                if(pstNdptCh->usRevFlag == 0)
                {
                    pstNdptCh->uiRevSeqMin = uiSeqNo;
                    pstNdptCh->uiRevSeqMax = uiSeqNo;
                }
                else if(uiSeqNo > pstNdptCh->uiRevSeqMax)
                {
                    pstNdptCh->uiRevSeqMax = uiSeqNo;
                }
				
				/*sequence number reverse*//*CNcomment:序列号翻转*/
				
                else if((uiSeqNo < 32768)&&(pstNdptCh->uiRevSeqMax > 32768))
                {
                    pstNdptCh->uiRevSeqCnt += uiSeqNo+65536 - pstNdptCh->uiRevSeqMin;
                    pstNdptCh->uiRevSeqMin = uiSeqNo;
                    pstNdptCh->uiRevSeqMax = uiSeqNo;
                }else if(uiSeqNo < pstNdptCh->uiRevSeqMin)
                {
                    pstNdptCh->uiRevSeqMin = uiSeqNo;
                }

                do_gettimeofday(&stArriveCur);

                if(pstNdptCh->usRevFlag != 0)
                {
                    HI_U32 u32Interval;
                    
                    u32Interval = (stArriveCur.tv_sec - pstNdptCh->stArriveLast.tv_sec)*1000000 + stArriveCur.tv_usec - pstNdptCh->stArriveLast.tv_usec;
                    if(pstNdptCh->u32RevIntervalCnt < NDPT_REV_INTERVAL_NUM)
                    {
                        pstNdptCh->pstRevInterval[pstNdptCh->u32RevIntervalCnt].u32Interval = u32Interval;
                        if(pstNdptCh->u32RevIntervalCnt == 0)
                        {
                            pstNdptCh->pstRevIntervalHead = pstNdptCh->pstRevInterval;
                            pstNdptCh->pstRevIntervalTail = pstNdptCh->pstRevIntervalHead;
                        }
                        else
                        {
                            pstNdptCh->pstRevIntervalTail->next = &pstNdptCh->pstRevInterval[pstNdptCh->u32RevIntervalCnt];
                            pstNdptCh->pstRevIntervalTail = pstNdptCh->pstRevIntervalTail->next;
                        }
                        pstNdptCh->u32RevIntervalCnt++;
                    }
                    else
                    {
                        pstNdptCh->u32RevIntervalTotal -= pstNdptCh->pstRevIntervalHead->u32Interval;
                        pstNdptCh->pstRevIntervalTail->next = pstNdptCh->pstRevIntervalHead;
                        pstNdptCh->pstRevIntervalTail = pstNdptCh->pstRevIntervalTail->next;
                        pstNdptCh->pstRevIntervalHead= pstNdptCh->pstRevIntervalHead->next;
                        pstNdptCh->pstRevIntervalTail->u32Interval = u32Interval;
                    }
                    pstNdptCh->u32RevIntervalTotal += u32Interval;
                    
                }
                
                pstNdptCh->usRevFlag = 1;
                pstNdptCh->stArriveLast = stArriveCur;
                
            }
            
#ifdef RTP_BUFF_OFFSET
    //        skb_push(skb, NDPT_ETH_HLEN);
            rtp_buffer.pucBufferHdr = skb->data - NDPT_ETH_HLEN;
            /*skb->len include the FCS(4 bytes crc checksum),RTP do not need the FCS*/
            rtp_buffer.uiBufferLen = ntohs(ip_hd->len) + NDPT_ETH_HLEN;
            rtp_buffer.uiOffset = NDPT_ETH_HLEN + ip_hd_len + sizeof(HDR_UDP);
#else
            rtp_buffer.pucBufferHdr = (HI_U8 *)udp_hd + sizeof(HDR_UDP);
            rtp_buffer.uiBufferLen = ntohs(udp_hd->len) - sizeof(HDR_UDP);
#endif

            switch(pstNdptCh->eLoopback)
            {
                case LOOPBACK_NONE:
                    ret = pstNdptCh->revfunc(pstNdptCh->TransId, ntohs(udp_hd->D_Port)&0x01, &rtp_buffer);
                    break;
                case REV_BACK_AND_IN:
                    ret = pstNdptCh->revfunc(pstNdptCh->TransId, ntohs(udp_hd->D_Port)&0x01, &rtp_buffer);
                case ALL_BACK:
                case REV_BACK:
#ifdef RTP_BUFF_OFFSET            
                    ret = RTP_SendToIP(rtp_buffer.pucBufferHdr+rtp_buffer.uiOffset, rtp_buffer.uiBufferLen-rtp_buffer.uiOffset, pstNdptCh, (ntohs(udp_hd->S_Port)&0x01));
#else
                    ret = RTP_SendToIP(rtp_buffer.pucBufferHdr, rtp_buffer.uiBufferLen, pstNdptCh, (ntohs(udp_hd->S_Port)&0x01));
#endif
                    return 1;
                case SEND_BACK:
                case SEND_BACK_AND_OUT:
                default:
                    break;
            }
            
            return 1;
        }

        return 0;
          
    }

    return 0;
}

static unsigned int ipv4_hook_in(unsigned int hooknum,
                                      struct sk_buff *skb,
                                      const struct net_device *in,
                                      const struct net_device *out,
                                      int (*okfn)(struct sk_buff *))
{
    HI_S32 ret = NF_ACCEPT ;
    
    ret = adapter_rtp_filter(skb);
    if(ret == 1)
        return NF_DROP;
    else
        return NF_ACCEPT;
    
	/* Responses from hook functions:
	#define NF_DROP 0
	#define NF_ACCEPT 1
	#define NF_STOLEN 2
	#define NF_QUEUE 3
	#define NF_REPEAT 4
	#define NF_STOP 5
	#define NF_MAX_VERDICT NF_STOP
	*/
}


static struct nf_hook_ops ipv4_hook_op __read_mostly = {
	.hook		= ipv4_hook_in,
	.owner		= THIS_MODULE,
	.pf		= NFPROTO_IPV4,
	.hooknum	= NF_INET_LOCAL_IN,
	.priority	= NF_IP_PRI_CONNTRACK_CONFIRM,
};

/*RTP register callback function for receiving data in net adapter
param:
retval: 0  SUCCESS
retval: !0 FAILURE
notice: should configure link parameter to net adpter before RTP register callback function
*/
/*CNcomment:
RTP向网络适配注册数据接收回调函数
接口参数：
链接号，回调函数指针；
返回:0:成功；其他错误；
上层要先配置link参数到网络适配，然后RTP才能注册回调函数；
*/

HI_S32 HI_DRV_NDPT_RevFun(HI_U32 handle, HI_U32 TransId, ndpt_rtp_revfrom funptr)
{
    NDPT_CH_S *pstNdptCh = NULL;

    HI_NDPT_LOCK();

    pstNdptCh = ndpt_get_channel(handle);
    if(pstNdptCh == NULL)
    {
        HI_NDPT_UNLOCK();
        HI_ERR_NDPT("invalid handle.\n");
        return HI_FAILURE;
    }
    

    pstNdptCh->revfunc = funptr;
    pstNdptCh->TransId = TransId;
    
    HI_NDPT_UNLOCK();
    return 0;
}

/*
interface for sending data
param:
retval: 0  SUCCESS
retval: !0 FAILURE
notice: void *packetAddr ---the address of sending packet, should free after send 
*/
/*CNcomment:
发送数据接口：
接口参数: 链接号、数据包结构；
返回:0:成功；其他错误；
void *packetAddr --- 数据包的地址，发送完后需要释放此地址
*/

HI_S32 HI_DRV_NDPT_SendRtp(HI_U32 handle, HI_U32 even_odd, RTP_NET_BUFFER_STRU *data_buffer)
{
    HI_S32 ret = HI_SUCCESS;
    NDPT_CH_S *pstNdptCh = NULL;
    HI_U8 *psRtpPkt = NULL;
    HI_U32 uiRtpLen = 0;   
    
    HI_NDPT_LOCK();

    pstNdptCh = ndpt_get_channel(handle);
    if(pstNdptCh == NULL)
    {
        HI_NDPT_UNLOCK();
        HI_ERR_NDPT("invalid handle %x.\n",handle);
        return HI_FAILURE;
    }
    
    pstNdptCh->uiSendTry++;
    
    if(data_buffer == NULL)
    {
        pstNdptCh->stSendErrFlag.bit1Para = 1;
        HI_NDPT_UNLOCK();
//        HI_ERR_NDPT("data_buffer is null.\n");
        return HI_FAILURE;
    }

    if(data_buffer->pucBufferHdr == NULL)
    {
        pstNdptCh->stSendErrFlag.bit1Para = 1;
        HI_NDPT_UNLOCK();
//        HI_ERR_NDPT("data_buffer is null.\n");
        return HI_FAILURE;
    }

#ifdef RTP_BUFF_OFFSET
    if(data_buffer->uiOffset > data_buffer->uiBufferLen)
    {
        pstNdptCh->stSendErrFlag.bit1Para = 1;
        HI_NDPT_UNLOCK();
//        HI_ERR_NDPT("invalid rtp packet len [%d] or offset[%d]\n",data_buffer->uiBufferLen,data_buffer->uiOffset);
        return HI_FAILURE;
    }
#endif

    if(even_odd > PORT_CONFIG)
    {
        pstNdptCh->stSendErrFlag.bit1Para = 1;
        HI_NDPT_UNLOCK();
//        HI_ERR_NDPT("invalid port mode.\n");
        return HI_FAILURE;
    }

    /*deal with send-loop*//*CNcomment:本通道发送环回处理*/
    
    switch(pstNdptCh->eLoopback)
    {
        case REV_BACK:
        case REV_BACK_AND_IN:
            HI_NDPT_UNLOCK();
            return HI_SUCCESS;
            
        case ALL_BACK:
        case SEND_BACK:
            if(pstNdptCh->revfunc != NULL)
            {
                ret = pstNdptCh->revfunc(pstNdptCh->TransId, even_odd, data_buffer);
            }
            HI_NDPT_UNLOCK();
            return ret;

        case SEND_BACK_AND_OUT:
            if(pstNdptCh->revfunc != NULL)
            {
                ret = pstNdptCh->revfunc(pstNdptCh->TransId, even_odd, data_buffer);
            }
            break;
        case LOOPBACK_NONE:
        default:
            break;
    }


    /*check whether channel is ready*//*CNcomment:检查通道是否准备好*/
	
    if(HI_FALSE == ndpt_is_channel_ready(pstNdptCh))
    {
        pstNdptCh->stSendErrFlag.bit1NotReady = 1;
        HI_NDPT_UNLOCK();
        return HI_FAILURE;
    }

    /*deal with send-loop, contain the channel itself*//*CNcomment:本机发送环回处理，包括本通道环回*/
	
    {
        NDPT_CH_S *pstDestCh = NULL;
        NDPT_NET_PARA_S *pstSrcNetPara = &pstNdptCh->stNetPara;
        NDPT_NET_PARA_S *pstDstNetPara = NULL;

        for(pstDestCh=pstNdptCh_Head; pstDestCh!=NULL; pstDestCh=pstDestCh->next)
        {
//            if(pstDestCh == pstNdptCh)
//                continue;
            
            if(HI_FALSE == ndpt_is_channel_ready(pstDestCh))
            {
                continue;
            }
            if(!pstDestCh->revfunc)
            {
                continue;
            }
            
            pstDstNetPara = &pstDestCh->stNetPara;
            if(memcmp(&pstSrcNetPara->dip[pstSrcNetPara->dip_len-4],&pstDstNetPara->sip[pstDstNetPara->sip_len-4], IPV4_ADDR_LEN))
            {
                continue;
            }
            if(memcmp(&pstSrcNetPara->sip[pstSrcNetPara->sip_len-4],&pstDstNetPara->dip[pstDstNetPara->dip_len-4], IPV4_ADDR_LEN))
            {
                continue;
            }

            if(pstSrcNetPara->dport != pstDstNetPara->sport)
            {
                continue;
            }
            if(pstSrcNetPara->sport != pstDstNetPara->dport)
            {
                continue;
            }

            if((pstDestCh == pstNdptCh)&&(pstNdptCh->eLoopback == SEND_BACK_AND_OUT))
            {

				/*not need loop repeat*//*CNcomment:本通道不用重复环回*/
				
                HI_NDPT_UNLOCK();
                return ret;
            }
            else
            {
                ret = pstDestCh->revfunc(pstDestCh->TransId, even_odd, data_buffer);
                continue;  
            }
                            
        }
    }

    /*send data to net*//*CNcomment:数据发送到网络*/

#ifdef RTP_BUFF_OFFSET
    psRtpPkt = data_buffer->pucBufferHdr + data_buffer->uiOffset;
    uiRtpLen = data_buffer->uiBufferLen - data_buffer->uiOffset;
#else
    psRtpPkt = data_buffer->pucBufferHdr;
    uiRtpLen = data_buffer->uiBufferLen;
#endif

    ret =  RTP_SendToIP(psRtpPkt, uiRtpLen, pstNdptCh, (HI_U16)even_odd);
    if(ret<0) 
    {
//        HI_ERR_NDPT("Send RTP data failure %d, drop [%d].\n",ret,pstNdptCh->uiSendDropCnt);
    }
    else
    {
        pstNdptCh->uiSendOkCnt++;
    }
    
    HI_NDPT_UNLOCK();
    return ret;
}


HI_S32 ndpt_set_loopback(HI_U32 handle,NDPT_LOOPBACK_MODE_E eLoopback)
{
    NDPT_CH_S *pstNdptCh = NULL;

    HI_NDPT_LOCK();

    pstNdptCh = ndpt_get_channel(handle);
    if(pstNdptCh == NULL)
    {
        HI_NDPT_UNLOCK();
        HI_ERR_NDPT("invalid handle.\n");
        return HI_FAILURE;
    }

    if(eLoopback >= LOOPBACK_MAX)
    {
        HI_NDPT_UNLOCK();
        HI_ERR_NDPT("invalid loop back type\n");
        return HI_FAILURE;
    }


    pstNdptCh->eLoopback = eLoopback;

    HI_NDPT_UNLOCK();
    
    return HI_SUCCESS;
}

static NDPT_CH_S *ndpt_channel_new(HI_VOID)
{
    NDPT_CH_S *pstNdptCh = NULL;
    HI_U32  index;
    
    for(index = 0; index < NDPT_MAX_CHANNEL_COUNT; index++)
    {
        if(pstNdptCh_Arry[index] == NULL)
            break;
    }
    if(index >= NDPT_MAX_CHANNEL_COUNT)
    {
        HI_ERR_NDPT("pstNdptCh_Arry is full\n");
        return NULL;
    }

    pstNdptCh = (NDPT_CH_S *)HI_KMALLOC(HI_ID_NDPT, sizeof(NDPT_CH_S), GFP_KERNEL);
    if(pstNdptCh == NULL)
    {
        HI_ERR_NDPT("HI_KMALLOC new channel failure\n");
        return NULL;
    }
    memset(pstNdptCh,0,sizeof(NDPT_CH_S));

    pstNdptCh->pstRevInterval = (NDPT_PACKET_INTERVAL_S *)HI_KMALLOC(HI_ID_NDPT, sizeof(NDPT_PACKET_INTERVAL_S)*NDPT_REV_INTERVAL_NUM, GFP_KERNEL);
    if(pstNdptCh->pstRevInterval == NULL)
    {
        HI_KFREE(HI_ID_NDPT, pstNdptCh);
        HI_ERR_NDPT("HI_KMALLOC,  reveive interval array failure\n");
        return NULL;
    }
        
    /*insert link and the Pointer-Array of channel*//*CNcomment:插入链表和通道指针数组*/
	
    pstNdptCh_Arry[index] = pstNdptCh;
    pstNdptCh->handle = (HI_ID_NDPT<<16) | index;

    if(pstNdptCh_Tail == NULL)  //the first
    {
        pstNdptCh_Head = pstNdptCh;
        pstNdptCh_Tail = pstNdptCh;
    }
    else
    {
        pstNdptCh->prev = pstNdptCh_Tail;
        pstNdptCh_Tail->next = pstNdptCh;
        pstNdptCh_Tail = pstNdptCh;
    }
    return pstNdptCh;
}

static HI_S32 ndpt_channel_free(NDPT_CH_S *pstNdptCh)
{
    HI_U32 handle;
    HI_U32 index;
    
    if(pstNdptCh == NULL)
    {
        HI_ERR_NDPT("null pointer, pstNdptCh\n");
        return HI_FAILURE;
    }

    handle = pstNdptCh->handle;
    
    if(HI_ID_NDPT != (handle >> 16))
    {
        HI_ERR_NDPT("invalid handle, %x\n",handle);
        return HI_FAILURE;
    }
    
    index = handle & 0xff;
    
    if(index >= NDPT_MAX_CHANNEL_COUNT)
    {
        HI_ERR_NDPT("invalid handle, %x\n",handle);
        return HI_FAILURE;
    }

    if((pstNdptCh->next == NULL)&&(pstNdptCh->prev == NULL))      //only one
    {
        pstNdptCh_Tail = NULL;
        pstNdptCh_Head = NULL;
    }
    else if(pstNdptCh->next == NULL)        //tail
    {
        pstNdptCh_Tail = pstNdptCh->prev;
        pstNdptCh_Tail->next = NULL;
    }
    else if(pstNdptCh->prev == NULL)    //head
    {
        pstNdptCh_Head = pstNdptCh->next;
        pstNdptCh_Head->prev = NULL;
    }
    else
    {
        NDPT_CH_S *pstTmp;
        pstTmp = pstNdptCh->prev;
        pstTmp->next = pstNdptCh->next;
        pstTmp = pstNdptCh->next;
        pstTmp->prev = pstNdptCh->prev;
    }
    
    if(pstNdptCh->pstRevInterval != NULL)
        HI_KFREE(HI_ID_NDPT, pstNdptCh->pstRevInterval);
    kfree(pstNdptCh);
    pstNdptCh_Arry[index] = NULL;
    return  HI_SUCCESS;
}

/*
configure the filter table of transport layer, get MAC Information of source and destination, according link-num: SIP/DIP/SPORT/DPORT/IP TOS VLAN/Pri/PID
will create two filter table, one is for RTP stream, the other is for RTCP.
param:  HI_VOID *pNetPara --- the protocal parameter of RTP stream, NDPT_NET_CONFIG_PARA_S.
retval: handle --- the high 16bit is ID of module, the low 8bit is index of channel
        0 --- FAILURE
*/
/*CNcomment:
根据参数链接号，SIP/DIP/SPORT/DPORT/IP TOS、VLAN/Pri/PID；配置传输层过滤表并获取本端对端MAC地址信息；
会创建两个过滤表，一个是RTP流和对应的RTCP流；
输入参数：
    HI_VOID *pNetPara：RTP流网络通信协议参数, NDPT_NET_CONFIG_PARA_S；
返回:
    handle: 高16bit为模块ID，低8bit为通道索引;若返回值为0则失败。
*/

HI_U32 HI_DRV_NDPT_CreateLink(HI_VOID *pNetCfgPara)
{
    NDPT_CH_S *pstNdptCh = NULL;
    HI_HANDLE   handle = 0;
    HI_S32  Ret = 0;

    if(!pNetCfgPara)
    {
        HI_ERR_NDPT("null pointer, pNetCfgPara\n");
        return 0;
    }

    HI_NDPT_CREATELINK_LOCK();

    pstNdptCh = ndpt_channel_new();
    if(pstNdptCh == NULL)
    {
        HI_NDPT_UNLOCK();
        HI_ERR_NDPT("create new ndpt channel failure\n");
        return 0;
    }
    
    handle = pstNdptCh->handle;
    
    HI_NDPT_UNLOCK();

    Ret = HI_DRV_NDPT_ModifyNetPara(handle, pNetCfgPara);
    if(Ret != HI_SUCCESS)
    {
        HI_NDPT_CREATELINK_LOCK();
        ndpt_channel_free(pstNdptCh);
        HI_NDPT_UNLOCK();
        HI_ERR_NDPT("set ndpt channel para error\n");
        return 0;
    }

    return handle;
}

HI_S32 HI_DRV_NDPT_ModifyNetPara(HI_U32 handle,HI_VOID * pNetCfgPara)
{
    HI_S32  Ret = HI_SUCCESS;
    NDPT_NET_CONFIG_PARA_S  *pstNetCfg = NULL;
    NDPT_CH_S *pstNdptCh = NULL;
    NDPT_CH_S   stNdptChTmp;
    struct net_device *dev = NULL;
    HI_U32 u32Sip = 0;
    HI_U32 u32Dip = 0;

    if(pNetCfgPara == NULL)
    {
        HI_ERR_NDPT("null pointer, pstNetPara\n");
        return HI_FAILURE;
    }
    
    HI_NDPT_LOCK();

    pstNdptCh = ndpt_get_channel(handle);
    if(pstNdptCh == NULL)
    {
        HI_NDPT_UNLOCK();
        HI_ERR_NDPT("invalid handle.\n");
        return HI_FAILURE;
    }

    memcpy(&stNdptChTmp,pstNdptCh,sizeof(NDPT_CH_S));
    pstNetCfg = (NDPT_NET_CONFIG_PARA_S*)pNetCfgPara;
   
    if(pstNetCfg->stChange.bit1SrcIP)
    {   
        Ret = ndpt_get_ip4(pstNetCfg->stBody.sip_len,pstNetCfg->stBody.sip,&u32Sip);
        if(Ret!=HI_SUCCESS)
        {
            HI_NDPT_UNLOCK();
            HI_ERR_NDPT("invalid source ip\n");
            return HI_FAILURE;
        }
      
        dev = dev_get_by_ip(u32Sip);
        if(dev == NULL)
        {
            HI_NDPT_UNLOCK();
            HI_ERR_NDPT("can not find source network device.uiSip:0x%08x\n", u32Sip);
            return HI_FAILURE;
        }
        stNdptChTmp.stNetPara.sip_len = pstNetCfg->stBody.sip_len;
        memcpy(stNdptChTmp.stNetPara.sip,pstNetCfg->stBody.sip,pstNetCfg->stBody.sip_len);
        memcpy(stNdptChTmp.ucSrc_mac,dev->dev_addr,NDPT_ETH_ALEN);
        stNdptChTmp.dev = dev;
        stNdptChTmp.stNetFlag.bit1SrcIP = 1;
        dev_put(dev);

    }

    if(pstNetCfg->stChange.bit1DstIP)
    {
        Ret = ndpt_get_ip4(pstNetCfg->stBody.dip_len,pstNetCfg->stBody.dip,&u32Dip);
        if(Ret == HI_SUCCESS)
        {
            stNdptChTmp.stNetPara.dip_len = pstNetCfg->stBody.dip_len;
            memcpy(stNdptChTmp.stNetPara.dip,pstNetCfg->stBody.dip,pstNetCfg->stBody.dip_len);
            stNdptChTmp.stNetFlag.bit1DstIP = 1;
        }
        else
        {
            HI_NDPT_UNLOCK();
            HI_ERR_NDPT("invalid dest ip\n");
            return HI_FAILURE;
        }
    }

    if(pstNetCfg->stChange.bit1SrcPort)
    {
        if(pstNetCfg->stBody.sport & 0x01)
        {
            HI_NDPT_UNLOCK();
            HI_ERR_NDPT("invalid source port %d.\n",pstNetCfg->stBody.sport);
            return HI_FAILURE;
        }
        else
        {
            stNdptChTmp.stNetPara.sport = pstNetCfg->stBody.sport;
            stNdptChTmp.stNetFlag.bit1SrcPort = 1;
        }
    }

    if(pstNetCfg->stChange.bit1DstPort)
    {
        if(pstNetCfg->stBody.dport & 0x01)
        {
            HI_NDPT_UNLOCK();
            HI_ERR_NDPT("invalid dest port %d.\n",pstNetCfg->stBody.dport);
            return HI_FAILURE;
        }
        else
        {
            stNdptChTmp.stNetPara.dport = pstNetCfg->stBody.dport;
            stNdptChTmp.stNetFlag.bit1DstPort = 1;
        }
    }

    if(pstNetCfg->stChange.bit1IPTos)
    {
        stNdptChTmp.stNetPara.mask = (stNdptChTmp.stNetPara.mask & (~0x01))|(pstNetCfg->stBody.mask & 0x01);
        stNdptChTmp.stNetPara.ip_tos = pstNetCfg->stBody.ip_tos;
        stNdptChTmp.stNetFlag.bit1IPTos = 1;
    }

    if(pstNetCfg->stChange.bit1Vlan)
    {
//        stNdptChTmp.stNetPara.mask = (stNdptChTmp.stNetPara.mask & (~0x0e))|(pstNetCfg->stBody.mask & 0x0e);
        stNdptChTmp.stNetPara.vlan_en = pstNetCfg->stBody.vlan_en;
        stNdptChTmp.stNetPara.vlan_pri= pstNetCfg->stBody.vlan_pri;
        stNdptChTmp.stNetPara.vlan_pid= pstNetCfg->stBody.vlan_pid;
        stNdptChTmp.stNetFlag.bit1Vlan = 1;
    }

    if(pstNetCfg->stChange.bit1Protocol)
    {
        if((pstNetCfg->stBody.protocol == ETH_P_IP)||(pstNetCfg->stBody.protocol == ETH_P_IPV6))
        {
            stNdptChTmp.stNetPara.protocol = pstNetCfg->stBody.protocol;
            stNdptChTmp.stNetFlag.bit1Protocol = 1;
        }
        else
        {
            HI_NDPT_UNLOCK();
            HI_ERR_NDPT("invalid protocol %x.\n",pstNetCfg->stBody.protocol);
            return HI_FAILURE;
        }
    }

    /*measure channel again*//*CNcomment:重复通道检测*/
	
    if(HI_TRUE == ndpt_is_channel_ready(&stNdptChTmp))
    {
        NDPT_CH_S *pstDestCh = NULL;
        NDPT_NET_PARA_S *pstSrcNetPara = &stNdptChTmp.stNetPara;
        NDPT_NET_PARA_S *pstDstNetPara = NULL;

        for(pstDestCh=pstNdptCh_Head; pstDestCh!=NULL; pstDestCh=pstDestCh->next)
        {
            if(pstDestCh == pstNdptCh)
                continue;
            
            if(HI_FALSE == ndpt_is_channel_ready(pstDestCh))
                continue;
            
            pstDstNetPara = &pstDestCh->stNetPara;
            if(memcmp(&pstSrcNetPara->sip[pstSrcNetPara->sip_len-4],&pstDstNetPara->sip[pstDstNetPara->sip_len-4], IPV4_ADDR_LEN))
                continue;
            if(memcmp(&pstSrcNetPara->dip[pstSrcNetPara->dip_len-4],&pstDstNetPara->dip[pstDstNetPara->dip_len-4], IPV4_ADDR_LEN))
                continue;

            if(pstSrcNetPara->sport != pstDstNetPara->sport)
                continue;
            if(pstSrcNetPara->dport != pstDstNetPara->dport)
                continue;
                
            HI_NDPT_UNLOCK();
            HI_ERR_NDPT("Modify ndpt para failure, Find same channel %d.\n",pstDestCh->handle&0xff);
            return HI_FAILURE;
        }
    }

    /*get remote route*//*CNcomment:获取远端路由*/
	
    if((pstNetCfg->stChange.bit1SrcIP)||(pstNetCfg->stChange.bit1DstIP))
    {
        if((stNdptChTmp.stNetFlag.bit1SrcIP)&&(stNdptChTmp.stNetFlag.bit1DstIP))
        {
            ndpt_get_ip4(stNdptChTmp.stNetPara.sip_len, stNdptChTmp.stNetPara.sip,&u32Sip);
            ndpt_get_ip4(stNdptChTmp.stNetPara.dip_len, stNdptChTmp.stNetPara.dip,&u32Dip);
            if(u32Dip != u32Sip)
            {
                dev = stNdptChTmp.dev;
                dev_hold(dev);
                ndpt_get_dest_mac(stNdptChTmp.ucDst_mac,dev,u32Dip,u32Sip);
                dev_put(dev);
            }
        }
    }

    memcpy(pstNdptCh,&stNdptChTmp,sizeof(NDPT_CH_S));
    
    HI_NDPT_UNLOCK();
    
    return HI_SUCCESS;
}

/*
the interface of cancel link
param: link number
*/
/*CNcomment:
注销链路接口：
接口参数:链路号；
*/

HI_S32 HI_DRV_NDPT_DestroyLink(HI_U32 handle)
{
    NDPT_CH_S *pstNdptCh = NULL;

    HI_NDPT_LOCK();

    pstNdptCh = ndpt_get_channel(handle);
    if(pstNdptCh == NULL)
    {
        HI_NDPT_UNLOCK();
        HI_ERR_NDPT("invalid handle.\n");
        return HI_FAILURE;
    }
    
    ndpt_channel_free(pstNdptCh);
    
    HI_NDPT_UNLOCK();
    
    return HI_SUCCESS;
}

HI_S32 ndpt_init(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;

	
	ret = HI_DRV_MODULE_Register(HI_ID_NDPT, NDPT_NAME, (HI_VOID*)&s_NdptExportFuncs);
    if(HI_SUCCESS != ret)
	{
		HI_FATAL_NDPT("HI_DRV_MODULE_Register ndpt failed\n");
		return ret;
	}
	
    HI_NDPT_LOCK();

    if(bNdptDevState == HI_TRUE)
    {
        HI_NDPT_UNLOCK();
        HI_ERR_NDPT("ndpt device has been opened\n");
        return HI_SUCCESS;
    }

    pstNdptCh_Head = NULL;
    pstNdptCh_Tail= NULL;

    memset(pstNdptCh_Arry,0,sizeof(pstNdptCh_Arry));

//    hieth_register_rtp_filter((void *)adapter_rtp_filter);

	ret = nf_register_hook(&ipv4_hook_op);
	if (ret)
    {
        HI_NDPT_UNLOCK();
		HI_ERR_NDPT("nf_register_hook failed, ret is :%d \n",ret);
		return ret;
	}
    else
	    HI_INFO_NDPT("%s %d, nf_register_hook successfull\n",__FUNCTION__,__LINE__);
    
    bNdptDevState = HI_TRUE;

    HI_NDPT_UNLOCK();
    
    return HI_SUCCESS;
}

HI_S32 ndpt_exit(HI_VOID)
{
    
    HI_NDPT_LOCK();

    if(bNdptDevState == HI_FALSE)
    {
        HI_NDPT_UNLOCK();
        HI_ERR_NDPT("ndpt device has been closed\n");
        return HI_SUCCESS;
    }

    while(pstNdptCh_Tail != NULL)
    {
        ndpt_channel_free(pstNdptCh_Tail);
    }
    
//    hieth_register_rtp_filter(NULL);

	nf_unregister_hook(&ipv4_hook_op);
    
    bNdptDevState = HI_FALSE;

    HI_NDPT_UNLOCK();

	HI_DRV_MODULE_UnRegister(HI_ID_NDPT);
  
    return HI_SUCCESS;
}

static long NDPT_Drv_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    HI_S32             Ret = HI_FAILURE;

    switch (cmd)
    {
        case CMD_NDPT_CREATE_LINK:
        {
            NDPT_NET_PARA_S stNetPara;
            if(copy_from_user((void *)&stNetPara, (void *)arg, sizeof(NDPT_NET_PARA_S)))
            {
                Ret = HI_DRV_NDPT_CreateLink(&stNetPara);
            }
            break;
        }

        case CMD_NDPT_DESTROY_LINK:
        {
            HI_U32  handle;
            if(copy_from_user((void *)&handle, (void *)arg, sizeof(HI_U32)))
            {
                Ret = HI_DRV_NDPT_DestroyLink(handle);
            }
            break;
        }

        case CMD_NDPT_SET_LOOPBACK:
        {
            NDPT_LOOPBACK_S stLoopback;
            if(copy_from_user((void *)&stLoopback, (void *)arg, sizeof(NDPT_LOOPBACK_S)))
            {
                Ret = ndpt_set_loopback(stLoopback.handle,stLoopback.eLoopback);
            }
            break;
        }

        default:
            break;
    }

    return (long)Ret;
}

static HI_S32 NDPT_Drv_Open(struct inode *inode, struct file *filp)
{
    HI_S32  Ret;

    Ret = ndpt_init();
    
    return Ret;
}

static HI_S32 NDPT_Drv_Close(struct inode *inode, struct file *filp)
{
    HI_S32  Ret;

    Ret = ndpt_exit();
    
    return Ret;
}

static struct file_operations hi_ndpt_fops =
{
    .owner  		= THIS_MODULE,
    .open   		= NDPT_Drv_Open,
    .unlocked_ioctl = NDPT_Drv_Ioctl,
    .release 		= NDPT_Drv_Close,
};

static struct miscdevice hi_ndpt_dev=
{
    MISC_DYNAMIC_MINOR,
    UMAP_DEVNAME_NDPT,
    &hi_ndpt_fops,
};

static HI_S32 __INIT__ NDPT_ModeInit(HI_VOID)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_S32 ret = 0;

    /*misc_register gpio*/
    ret = misc_register(&hi_ndpt_dev);
    if (0 != ret)
    {
        HI_ERR_NDPT("ndpt device register failed\n");
        return HI_FAILURE;
    }
    
    ndpt_init();

    /*register NDPT PROC*/
    pProcItem = HI_DRV_PROC_AddModule(HI_MOD_NDPT, HI_NULL, HI_NULL);
    if (!pProcItem)
    {
        HI_ERR_NDPT("add net adapter proc failed.\n");
        misc_deregister(&hi_ndpt_dev);
        return HI_FAILURE;
    }
    pProcItem->read = NDPT_ProcRead;
    pProcItem->write = NDPT_ProcWrite;

#ifdef MODULE
    HI_PRINT("Load hi_ndpt.ko success.  \t(%s)\n", VERSION_STRING);
#endif

    return HI_SUCCESS;
}

static HI_VOID __EXIT__ NDPT_ModeExit(HI_VOID)
{
    ndpt_exit();
    HI_DRV_PROC_RemoveModule(HI_MOD_NDPT);
    misc_deregister(&hi_ndpt_dev);
    return;

}

EXPORT_SYMBOL_GPL(ndpt_init);
EXPORT_SYMBOL_GPL(ndpt_exit);
EXPORT_SYMBOL_GPL(HI_DRV_NDPT_CreateLink);
EXPORT_SYMBOL_GPL(HI_DRV_NDPT_DestroyLink);
EXPORT_SYMBOL_GPL(HI_DRV_NDPT_SendRtp);
EXPORT_SYMBOL_GPL(HI_DRV_NDPT_RevFun);
EXPORT_SYMBOL_GPL(ndpt_set_loopback);
EXPORT_SYMBOL_GPL(HI_DRV_NDPT_ModifyNetPara);

module_init(NDPT_ModeInit);
module_exit(NDPT_ModeExit);

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");


