/**
 \file
 \brief Describes adp file. CNcomment:Çý¶¯¿çÆ½Ì¨ÊÊÅä
 \author Shenzhen Hisilicon Co., Ltd.
 \date 2008-2018
 \version 1.0
 \author w00239113
 \date 2013-5-28
 */
 #include "hi_debug.h"
#ifndef CONFIG_PNG_DEBUG_DISABLE
    #define HIPNG_TRACE(fmt, args... )   HI_INFO_PRINT(HI_ID_PNG, fmt)
#else
    #define HIPNG_TRACE(fmt, args... )
#endif