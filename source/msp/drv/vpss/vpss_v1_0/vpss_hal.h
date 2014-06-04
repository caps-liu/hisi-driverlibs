#ifndef __VPSS_HAL_H__
#define __VPSS_HAL_H__
#include"hi_type.h"

#include "hi_drv_mmz.h"

#include"vpss_alg.h"

#include"hi_drv_vpss.h"

#define VPSS_S40
//#define VPSS_CV200 

#ifdef VPSS_S40
#include"vpss_reg_s40.h"
#endif

#ifdef VPSS_CV200
#include"vpss_reg_cv200.h"
#endif

#define HAL_VERSION_1 0x101
#define HAL_VERSION_2 0x102

#define HAL_NODE_MAX 2
/*HAL info 
*
* logic version
* register basic addr
*/
typedef struct hiVPSS_HAL_CFG_S{
    HI_U32 u32LogicVersion;    
    HI_U32 u32BaseRegAddr;
    HI_U32 u32AppPhyAddr[HAL_NODE_MAX];
    HI_U32 u32AppVirtualAddr[HAL_NODE_MAX];
    MMZ_BUFFER_S stRegBuf[HAL_NODE_MAX];

    /*logic port alloc state
     *[0]: HD
     *[1]: STR
     *[2]: SD
     * =1:allocated
     * =0:will allocate
     */
    HI_U32 u32RegPortAlloc[DEF_HI_DRV_VPSS_PORT_MAX_NUMBER];
}VPSS_HAL_INFO_S;

typedef enum VPSS_HAL_NODE_TYPE{
    HAL_NODE_NORMAL = 0,
    HAL_NODE_FPK ,
    HAL_NODE_2D_PRE,
    HAL_NODE_3D_PRE,
    HAL_NODE_BUTT
}VPSS_HAL_NODE_E;

typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tunnel_strmDet          : 1  ; // [0] 
        unsigned int    tunnel_dei              : 1  ; // [1] 
        unsigned int    tunnel_dbdr             : 1  ; // [2]
        unsigned int    tunnel_accm             : 1  ; // [3]
        unsigned int    tunnel_reserve          : 4  ; // [4..7]
        
        unsigned int    port1_support           : 1  ; // [8]
        unsigned int    port1_zme               : 1  ; // [9] 
        unsigned int    port1_lba               : 1  ; // [10]
        unsigned int    port1_csc               : 1  ; // [11] 
        unsigned int    port1_crop              : 1  ; // [12] 
        unsigned int    port1_fidelity          : 1  ; // [13] 
        unsigned int    port1_reserve           : 2  ; // [14..15] 
        
        unsigned int    port2_support           : 1  ; // [16]
        unsigned int    port2_zme               : 1  ; // [17] 
        unsigned int    port2_lba               : 1  ; // [18]
        unsigned int    port2_csc               : 1  ; // [19]
        unsigned int    port2_crop              : 1  ; // [20]  
        unsigned int    port2_fidelity          : 1  ; // [21] 
        unsigned int    port2_reserve           : 2  ; // [22..23] 
        
        unsigned int    port3_support           : 1  ; // [24]
        unsigned int    port3_zme               : 1  ; // [25] 
        unsigned int    port3_lba               : 1  ; // [26]
        unsigned int    port3_csc               : 1  ; // [27]
        unsigned int    port3_crop              : 1  ; // [28]  
        unsigned int    port3_fidelity          : 1  ; // [29] 
        unsigned int    port3_reserve           : 2  ; // [30..31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_HAL_CAPS;

/*
    HAL interface
*/
typedef struct hiVPSS_HAL_CAP_S{
    U_VPSS_HAL_CAPS u32Caps;
    
    HI_S32 (*PFN_VPSS_HAL_SetHalCfg)(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID);
    
    HI_S32 (*PFN_VPSS_HAL_StartLogic)(VPSS_HAL_NODE_E eNodeType);
    
    HI_S32 (*PFN_VPSS_HAL_SetIntMask)(HI_U32 u32Data);
    
    HI_S32 (*PFN_VPSS_HAL_ClearIntState)(HI_U32 u32Data);

    HI_S32 (*PFN_VPSS_HAL_GetIntState)(HI_U32 *pData);
        
}VPSS_HAL_CAP_S;

/*common interface*/
HI_S32 VPSS_HAL_Init(HI_U32 u32LogicVersion,VPSS_HAL_CAP_S *pstHalCaps);

HI_S32 VPSS_HAL_DelInit(HI_VOID);
HI_S32 VPSS_HAL_CloseClock(HI_VOID);   
HI_S32 VPSS_HAL_OpenClock(HI_VOID);     

/*
 * interface via logic version
 */

HI_S32 VPSS_HAL_StartLogic(VPSS_HAL_NODE_E eNodeType);

HI_S32 VPSS_HAL_SetIntMask(HI_U32 u32Data);

HI_S32 VPSS_HAL_SetTimeOut(HI_U32 u32TimeOut);

HI_S32 VPSS_HAL_GetIntState(HI_U32 *pData);

HI_S32 VPSS_HAL_GetCycleCnt(HI_U32 *pCnt);

HI_S32 VPSS_HAL_ClearIntState(HI_U32 u32Data);

HI_S32 VPSS_HAL_SetHalCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID);

/*inner*/
HI_S32 VPSS_HAL_GetCaps(HI_U32 u32DrvVersion,VPSS_HAL_CAP_S *pstHalCaps);

HI_S32 VPSS_HAL_SetSrcImg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID);

HI_S32 VPSS_HAL_SetDstFrm(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,
                            VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID);

HI_S32 VPSS_HAL_SetDeiCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID);

HI_S32 VPSS_HAL_SetUVCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID);

HI_S32 VPSS_HAL_SetDnrCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID);

HI_S32 VPSS_HAL_SetZmeCfg(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,
                            VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID); 

HI_S32 VPSS_HAL_SetRwzbCfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID);

HI_VOID VPSS_HAL_GetDetPixel(HI_U32 BlkNum, HI_U8* pstData);

HI_S32 VPSS_HAL_SetVC1Cfg(VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID);

HI_S32 VPSS_HAL_GetDeiDate(ALG_FMD_RTL_STATPARA_S *pstFmdRtlStatPara);


HI_S32 VPSS_HAL_SetSharpCfg(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID); 
HI_S32 VPSS_HAL_SetAspCfg(HI_U32 u32PortID,VPSS_REG_PORT_E ePort,
                            VPSS_ALG_CFG_S *pstAlgCfg,HI_U32 u32NodeID);
HI_S32 VPSS_HAL_SetSDFidelity(HI_BOOL bEnFidelity,HI_U32 u32NodeID);

#endif
