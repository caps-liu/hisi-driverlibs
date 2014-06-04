#ifndef __VPSS_REG_STRUCT_H__
#define __VPSS_REG_STRUCT_H__
#include "hi_drv_video.h"
#include "vpss_common.h"
typedef enum hiVPSS_REG_PORT_E
{
    VPSS_REG_HD = 0,
    VPSS_REG_SD,
    VPSS_REG_STR,
    VPSS_REG_BUTT
}VPSS_REG_PORT_E;

typedef enum hiVPSS_REG_PREZME_E{
    PREZME_DISABLE = 0,
    PREZME_2X,
    PREZME_4X,
    PREZME_8X,
    PREZME_BUTT
}VPSS_REG_PREZME_E;
typedef enum hiREG_FIELDPOS_E
{
    LAST_FIELD = 0,
    CUR_FIELD,
    NEXT1_FIELD,
    NEXT2_FIELD,
    NEXT3_FIELD,
    BUTT_FIELD
}REG_FIELDPOS_E;


typedef enum hiREG_FRAMEPOS_E
{
    LAST_FRAME = 0,
    CUR_FRAME,
    NEXT_FRAME,
    BUTT_FRAME
}REG_FRAMEPOS_E;

#if DEF_VPSS_VERSION_2_0
typedef enum hiREG_TUNLPOS_E
{
    ROW_2_WIRTE_TUNL = 0,
    ROW_4_WIRTE_TUNL,
    ROW_8_WIRTE_TUNL,
    ROW_16_WIRTE_TUNL,
    BUTT_WIRTE_TUNL
}REG_TUNLPOS_E;
#endif

typedef enum 
{
    REG_ZME_MODE_HOR = 0,
    REG_ZME_MODE_VER,

    REG_ZME_MODE_HORL,  
    REG_ZME_MODE_HORC,  
    REG_ZME_MODE_VERL,
    REG_ZME_MODE_VERC,

    REG_ZME_MODE_ALL,
    REG_ZME_MODE_NONL,
    REG_ZME_MODE_BUTT
      
}REG_ZME_MODE_E;



typedef enum 
{
    REG_DIE_MODE_CHROME = 0,
    REG_DIE_MODE_LUMA,
    REG_DIE_MODE_ALL,
    REG_DIE_MODE_BUTT
      
}REG_DIE_MODE_E;
#endif