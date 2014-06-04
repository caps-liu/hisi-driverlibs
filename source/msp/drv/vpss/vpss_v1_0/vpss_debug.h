#ifndef __VPSS_DEBUG_H__
#define __VPSS_DEBUG_H__
#include "vpss_common.h"
#include "hi_drv_vpss.h"
#include "vpss_osal.h"
#include "vpss_alg.h"


#define DEF_DBG_CMD_YUV "saveyuv"
#define DEF_DBG_CMD_DBG "printinfo"
#define DEF_DBG_CMD_NONE "none"

#define DEF_DBG_SRC    "src"
#define DEF_DBG_PORT_0 "port0"
#define DEF_DBG_PORT_1 "port1"
#define DEF_DBG_PORT_2 "port2"

#define DEF_DBG_SRC_ID    0xffffffff
#define DEF_DBG_PORT0_ID  0x1
#define DEF_DBG_PORT1_ID  0x2
#define DEF_DBG_PORT2_ID  0x3



typedef enum hiVPSS_DEBUG_E{
    DBG_W_YUV = 0,
    DBG_INFO_FRM ,
    DBG_INFO_NONE ,
    DBG_INFO_ASP,
    DBG_BUTT
}VPSS_DEBUG_E;

typedef struct hiVPSS_DBG_YUV_S{
    VPSS_HANDLE hPort;
    HI_CHAR chFile[DEF_FILE_NAMELENGTH];
}VPSS_DBG_YUV_S;

typedef union{
    VPSS_HANDLE hYuvPart;
    VPSS_HANDLE hDbgPart;
}DBG_CMD_PARA_U;

typedef struct hiVPSS_DBGCMD_S{
    VPSS_DEBUG_E enDbgType;

    VPSS_HANDLE hDbgPart;
    //DBG_CMD_PARA_U unPara;
}VPSS_DBG_CMD_S;

typedef union{
    // Define the struct bits
    struct
    {
        unsigned int    imginfo              : 1   ; 
        unsigned int    dei                  : 1   ;  
        unsigned int    writeyuv             : 4   ;  
        unsigned int    reserve_1            : 1   ;  
        unsigned int    reserve_2            : 1   ; 
        unsigned int    reserve_3            : 24  ;
        
    } bits;
    // Define an unsigned member
    unsigned int    u32;

}DBG_INST_INFO_U;
typedef union{
    // Define the struct bits
    struct
    {
        unsigned int    frameinfo            : 1   ; 
        unsigned int    asp                  : 1   ;  
        unsigned int    writeyuv             : 4   ;  
        unsigned int    reserve_1            : 1   ;  
        unsigned int    reserve_2            : 1   ; 
        unsigned int    reserve_3            : 24  ;
        
    } bits;
    // Define an unsigned member
    unsigned int    u32;

}DBG_PORT_INFO_U;

typedef struct hiVPSS_DBG_PORT_S{
    HI_CHAR chFile[DEF_FILE_NAMELENGTH];
    DBG_PORT_INFO_U unInfo;
}VPSS_DBG_PORT_S;

typedef struct hiVPSS_DBG_INST_S{
    HI_CHAR chFile[DEF_FILE_NAMELENGTH];
    DBG_INST_INFO_U unInfo;
}VPSS_DBG_INST_S;

typedef struct hiVPSS_DBG_S{
    VPSS_DBG_INST_S stInstDbg;
    
    VPSS_DBG_PORT_S stPortDbg[DEF_HI_DRV_VPSS_PORT_MAX_NUMBER];
}VPSS_DBG_S;

HI_S32 VPSS_DBG_DbgInit(VPSS_DBG_S *pstDbg);

HI_S32 VPSS_DBG_DbgDeInit(VPSS_DBG_S *pstDbg);

HI_S32 VPSS_DBG_SendDbgCmd(VPSS_DBG_S *pstDbg,VPSS_DBG_CMD_S *pstCmd);

HI_S32 VPSS_DBG_ReplyDbgCmd(VPSS_DBG_S *pstDbg,VPSS_DEBUG_E enCmd,HI_VOID* para1,HI_VOID* para2);
#endif