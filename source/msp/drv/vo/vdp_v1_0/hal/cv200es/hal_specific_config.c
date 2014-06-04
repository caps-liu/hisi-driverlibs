#include "drv_disp_hal.h"
#include "drv_disp_com.h"
#include "drv_disp_hal.h"
#include "drv_disp_osal.h"
#include "drv_disp_da.h"
#ifndef __DISP_PLATFORM_BOOT__
#include "drv_disp_ua.h"
#include "hi_drv_sys.h"
#include "drv_win_hal.h"
#endif
#include "hi_reg_common.h"

static DISP_FMT_CFG_S s_stDispFormatParam[] =
{
/* |--INTFACE---||-----TOP-----||----HORIZON--------||----BOTTOM-----||-PULSE-||-INVERSE-| */
/* Synm Iop  Itf  Vact Vbb Vfb   Hact  Hbb Hfb      Bvact Bvbb Bvfb  Hpw Vpw Hmid bIdv bIhs bIvs */
  // 0 HI_UNF_ENC_FMT_1080P_60,
 { {1,   1,   2,  1080,  41,  4,  1920, 192, 88,      1,   1,  1,     44, 5, 1,  0,  0,  0}, /* 1080P@60Hz */
   //{0x14000000, 0x02002063}, // 1080P60/50
   DISP_CLOCK_SOURCE_HD0, 
   {0x12000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_1080P_60, DISP_STEREO_NONE, HI_FALSE, {0,0,1920,1080}, {0,0,1920,1080}, {16,9}, 6000, HI_DRV_CS_BT709_YUV_LIMITED}
 },
  // 1 HI_UNF_ENC_FMT_1080P_60,
 { {1,   1,   2,  1080,  41,  4,  1920, 192, 88,      1,   1,  1,     44, 5, 1,  0,  0,  0}, /* 1080P@60Hz */
   //{0x14000000, 0x02002063}, // 1080P60/50
   DISP_CLOCK_SOURCE_HD0, 
   {0x12000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_1080P_60, DISP_STEREO_NONE, HI_FALSE, {0,0,1920,1080},{0,0,1920,1080},{16,9}, 6000, HI_DRV_CS_BT709_YUV_LIMITED}
 },
  // 2 HI_UNF_ENC_FMT_1080P_50,
 { {1,   1,   2,  1080,  41,  4,  1920, 192, 528,      1,   1,  1,     44, 5, 1, 0,  0,  0}, /* 1080P@50Hz */
   //{0x14000000, 0x02002063}, // 1080P60/50
   DISP_CLOCK_SOURCE_HD0, 
   {0x12000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_1080P_50, DISP_STEREO_NONE, HI_FALSE, {0,0,1920,1080},{0,0,1920,1080},{16,9}, 5000, HI_DRV_CS_BT709_YUV_LIMITED}
 },
  // 3 HI_UNF_ENC_FMT_1080P_30
 { {1,   1,   2,  1080,  41,  4,  1920, 192, 88,       1,   1,  1,    44,  5, 1, 0,  0,  0}, /* 1080P@30Hz */
//   {0x24000000, 0x02002063}, // 1080i50
   DISP_CLOCK_SOURCE_HD0, 
   {0x14000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_1080P_30, DISP_STEREO_NONE, HI_FALSE, {0,0,1920,1080},{0,0,1920,1080},{16,9}, 3000, HI_DRV_CS_BT709_YUV_LIMITED}
 },
  // 4 HI_UNF_ENC_FMT_1080P_25,
 { {1,   1,   2,  1080,  41,  4,  1920, 192, 528,      1,   1,  1,    44, 5, 1,  0,  0,  0}, /* 1080P@25Hz */
//   {0x24000000, 0x02002063}, // 1080i50
   DISP_CLOCK_SOURCE_HD0, 
   {0x14000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_1080P_25, DISP_STEREO_NONE, HI_FALSE, {0,0,1920,1080},{0,0,1920,1080},{16,9}, 2500, HI_DRV_CS_BT709_YUV_LIMITED}
 },
  // 5 HI_UNF_ENC_FMT_1080P_24 @74.25MHz,
 { {1,   1,   2,  1080,  41,  4,  1920, 192, 638,       1,   1,  1,    44, 5, 1, 0,  0,  0}, /* 1080P@24Hz */
//   {0x24000000, 0x02002063}, // 1080i50
   DISP_CLOCK_SOURCE_HD0, 
   {0x14000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_1080P_24, DISP_STEREO_NONE, HI_FALSE, {0,0,1920,1080},{0,0,1920,1080},{16,9}, 2400, HI_DRV_CS_BT709_YUV_LIMITED}
 },

  // 6 HI_UNF_ENC_FMT_1080i_60
 { {1,   0,   2,   540,  20,  2,  1920, 192, 88,  540, 21,  2,    44,  5, 908,   0,  0,  0}, /* 1080I@60Hz */
//   {0x24000000, 0x02002063}, // 1080i50
   DISP_CLOCK_SOURCE_HD0, 
   {0x14000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_1080i_60, DISP_STEREO_NONE, HI_TRUE, {0,0,1920,1080},{0,0,1920,1080},{16,9}, 6000, HI_DRV_CS_BT709_YUV_LIMITED}
 },
  // 7 HI_UNF_ENC_FMT_1080i_50
 { {1,   0,   2,   540,  20,  2,  1920, 192,528,  540,  21,  2,   44, 5, 1128,  0,  0,  0}, /* 1080I@50Hz */
//   {0x24000000, 0x02002063}, // 1080i50
   DISP_CLOCK_SOURCE_HD0, 
   {0x14000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_1080i_50, DISP_STEREO_NONE, HI_TRUE, {0,0,1920,1080},{0,0,1920,1080},{16,9}, 5000, HI_DRV_CS_BT709_YUV_LIMITED}
 },

  // 8 HI_UNF_ENC_FMT_720P_60
 { {1,   1,   2,   720,  25,  5,  1280, 260,110,      1,   1,  1,    40,  5,  1, 0,  0,  0}, /* 720P@60Hz */
//   {0x24000000, 0x02002063}, // 1080i50
   DISP_CLOCK_SOURCE_HD0, 
   {0x14000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_720P_60, DISP_STEREO_NONE, HI_FALSE, {0,0,1280,720}, {0,0,1280,720},{16,9}, 6000, HI_DRV_CS_BT709_YUV_LIMITED}
 },
  // 9 HI_UNF_ENC_FMT_720P_50
 { {1,   1,   2,   720,  25,  5,  1280, 260,440,     1,   1,  1,     40, 5,  1,  0,  0,  0},  /* 720P@50Hz */
//   {0x24000000, 0x02002063}, // 1080i50
   DISP_CLOCK_SOURCE_HD0, 
   {0x14000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_720P_50, DISP_STEREO_NONE, HI_FALSE, {0,0,1280,720}, {0,0,1280,720},{16,9}, 5000, HI_DRV_CS_BT709_YUV_LIMITED}
 },

/* Synm Iop  Itf  Vact Vbb Vfb   Hact  Hbb Hfb      Bvact Bvbb Bvfb  Hpw Vpw Hmid bIdv bIhs bIvs */
  // 10 HI_UNF_ENC_FMT_576P_50,
 { {1,  1,   2,   576,   44,  5,   720, 132, 12,     1,   1,  1,     64, 5,  1,  0,  0,  0}, /* 576P@50Hz */
   DISP_CLOCK_SOURCE_SD0, 
   {0x14000000, 0x02002063}, 
   {HI_DRV_DISP_FMT_576P_50, DISP_STEREO_NONE, HI_FALSE, {0,0,720,576} , {0,0,720,576} ,{4,3},  5000, HI_DRV_CS_BT601_YUV_LIMITED}
 },
    /* |--INTFACE---||-----TOP-----||----HORIZON--------||----BOTTOM-----||-PULSE-||-INVERSE-| */
  /* Synm Iop  Itf  Vact Vbb Vfb   Hact  Hbb Hfb      Bvact Bvbb Bvfb  Hpw Vpw Hmid bIdv bIhs bIvs */
  // 11 HI_UNF_ENC_FMT_480P_60,
#if 1
 { {1,  1,   2,   480,   36,  9,   720, 122, 16,     1,   1,  1,     62, 6,  1,  0,  0,  0}, /* 480P@60Hz */
   DISP_CLOCK_SOURCE_SD0, 
   {0x14000000, 0x02002063}, // 1080i50
   {HI_DRV_DISP_FMT_480P_60, DISP_STEREO_NONE, HI_FALSE, {0,0,720,480} , {0,0,720,480} , {4,3},  6000, HI_DRV_CS_BT601_YUV_LIMITED}
 },
#else
 { {1,  1,   2,   480,   36,  9,   720-16, 122+8, 16+8,     1,   1,  1,     62, 6,  1,  0,  0,  0}, /* 480P@60Hz */
   DISP_CLOCK_SOURCE_SD0, 
   {0x14000000, 0x02002063}, // 1080i50
   {HI_DRV_DISP_FMT_480P_60, DISP_STEREO_NONE, HI_FALSE, {0,0,720-16,480} , {0,0,720-16,480} , {4,3},  6000, HI_DRV_CS_BT601_YUV_LIMITED}
 },
#endif

  // 12 HI_UNF_ENC_FMT_PAL
 { {0,   0,   0,   288,  22,  2,  720, 132, 12,     288,  23,  2,    126, 3, 0, 0,  0,  0},/* 576I(PAL) */
   DISP_CLOCK_SOURCE_SD0, 
   {0x24000000, 0x02002063}, // 1080i50
   {HI_DRV_DISP_FMT_PAL,     DISP_STEREO_NONE, HI_TRUE,  {0,0,720,576} ,  {0,0,720,576} , {4,3},  5000, HI_DRV_CS_BT601_YUV_LIMITED}
 },
#if 1
  //576I: HDMI输出要求hmid=300, 而YPbPr要求hmid=0, 
  //考虑一般用户不会使用HDMI输出576I，所以不支持HDMI_567I输出，选择hmid=0
  // 13 HI_UNF_ENC_FMT_NTSC
 { {0,   0,   0,   240,  18,  4,   720, 119, 19,     240,  19,  4,    124, 3,  0, 0, 0,  0},/* 480I(NTSC) */
   DISP_CLOCK_SOURCE_SD0, 
   {0x24000000, 0x02002063}, // 1080i50
   {HI_DRV_DISP_FMT_NTSC,    DISP_STEREO_NONE, HI_TRUE,  {0,0,720,480} , {0,0,720,480} ,{4,3},  6000, HI_DRV_CS_BT601_YUV_LIMITED},
 },
#else
 { {0,   0,   0,   240,  18,  4,   720-16, 119+8, 19+8,     240,  19,  4,    124, 3,  0, 0, 0,  0},/* 480I(NTSC) */
   DISP_CLOCK_SOURCE_SD0, 
   {0x24000000, 0x02002063}, // 1080i50
   {HI_DRV_DISP_FMT_NTSC,    DISP_STEREO_NONE, HI_TRUE,  {0,0,720-16,480} , {0,0,720-16,480} ,{4,3},  6000, HI_DRV_CS_BT601_YUV_LIMITED},
 },
#endif
  //480I: HDMI输出要求hmid=310, 而YPbPr要求hmid=0, 
  //考虑一般用户不会使用HDMI输出480I，所以不支持HDMI_480I输出，选择hmid=0

    /* ============================================= */
    // TODO:
    // 14, LCD

    {   {1,   1,   2,   480,  35,  10,  640, 144, 16,       1,   1,  1,      96, 2,  1, 0,  0,  0}, /* 640*480@60Hz */
        DISP_CLOCK_SOURCE_HD0,
        {0x24000000, 0x20050a8}, // 1080i50
        {HI_DRV_DISP_FMT_861D_640X480_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 640, 480} ,  {0, 0, 640, 480}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 15
    {   {1,   1,   2,   600,  27,  1,   800, 216, 40,       1,   1,  1,    128, 4, 1, 0,  0,  0}, /* 800*600@60Hz */
        DISP_CLOCK_SOURCE_HD0,
        {0x25000000, 0x201967a}, /* 800*600@60Hz */
        {HI_DRV_DISP_FMT_VESA_800X600_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 800, 600} ,  {0, 0, 800, 600}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 16
    {   {1,   1,   2,   768,  35,  3,  1024, 296, 24,      1,   1,  1,    136, 6, 1,  0,  0,  0}, /* 1024x768@60Hz */
        DISP_CLOCK_SOURCE_HD0,
        {0x15000000, 0x201954a}, /* 1024x768@60Hz */
        {HI_DRV_DISP_FMT_VESA_1024X768_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1024, 768} ,  {0, 0, 1024, 768}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 17
    {   {1,   1,   2,   720,  25,  5,  1280, 260, 110,  1,     1,   1,  40, 5,  1, 0,  0,  0}, /* 1280x720@60Hz */
        DISP_CLOCK_SOURCE_HD0,
        {0x13000000, 0x2008129}, /* 1280x720@60Hz */
        {HI_DRV_DISP_FMT_VESA_1280X720_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1280, 720} ,  {0, 0, 1280, 720}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 18
    {   {1,   1,   2,   800,  28,  3,  1280, 328, 72,  1,     1,   1,      128, 6, 1, 0,  0,  0}, /* 1280x800@60Hz */
        DISP_CLOCK_SOURCE_HD0,
        {0x13000000, 0x2019417}, /* 1280x800@60Hz */
        {HI_DRV_DISP_FMT_VESA_1280X800_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1280, 800} ,  {0, 0, 1280, 800}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 19
    {   {1,   1,   2,  1024,  41,  1,  1280, 360, 48,  1,     1,   1,     112, 3, 1,  0,  0,  0}, /* 1280x1024@60Hz */
        DISP_CLOCK_SOURCE_HD0,
        {0x15000000, 0x20198c9}, /* 1280x1024@60Hz */
        {HI_DRV_DISP_FMT_VESA_1280X1024_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1280, 1024},  {0, 0, 1280, 1024} , {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 20
    {   {1,   1,   2,   768,  24,  3,  1360, 368, 64,  1,     1,   1,    112, 6,  1,  0,  0,  0}, /* 1360x768@60Hz */
        DISP_CLOCK_SOURCE_HD0,
        {0x13000000, 0x2032859}, /* 1360x768@60Hz */
        {HI_DRV_DISP_FMT_VESA_1360X768_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1360, 768},  {0, 0, 1360, 768} , {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 21
    {   {1,   1,   2,   768,  27,  3,  1366, 356, 70,  1,     1,   1,      143, 3, 1, 0,  0,  0}, /* 1366x768@60Hz */
        DISP_CLOCK_SOURCE_HD0,
        {0x13000000, 0x200a1ad}, /* 1366X768@60Hz */
        {HI_DRV_DISP_FMT_VESA_1366X768_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1366, 768},  {0, 0, 1366, 768} , {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 22
    {   {1,   1,   2,  1050,  36,  3,  1400, 376, 88,  1,     1,   1,    144, 4,  1,  0,  0,  0}, /* 1400x1050@60Hz */
        DISP_CLOCK_SOURCE_HD0,
        {0x12000000, 0x20050cb}, /* 1400x1050@60Hz */
        {HI_DRV_DISP_FMT_VESA_1400X1050_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1400, 1050},  {0, 0, 1400, 1050} , {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },

    // 24
    {   {1,   1,   2,   900,  31,  3,  1440, 384, 80,    1,   1,  1,    152, 6,   1,  0,  0,  0}, /* 1440x900@60Hz_RB@106.5MHz */
        DISP_CLOCK_SOURCE_HD0,
         {0x12000000, 0x201e42b},/* 1440x900@60Hz@106.5MHz */
        {HI_DRV_DISP_FMT_VESA_1440X900_60_RB,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1440, 900} ,  {0, 0, 1440, 900}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
        // 23
    {   {1,   1,   2,   900,  23,  3,  1440, 112, 48,     1,   1,  1,    32, 6,   1, 0,  0,  0}, /* 1440x900@60Hz@88.75MHz */
        DISP_CLOCK_SOURCE_HD0,
        {0x14000000, 0x2006163}, /* 1440x900@60Hz_RB@88.75MHz */
        {HI_DRV_DISP_FMT_VESA_1440X900_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1440, 900} ,  {0, 0, 1440, 900}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
        // 25
    {   {1,   1,   2,   900,  23,  3,  1600, 112, 48,    1,   1,  1,    32, 5,   1,  0,  0,  0}, /* 1600x900@60Hz_RB@97.750 MHz  */
            DISP_CLOCK_SOURCE_HD0,
            {0x14000000, 0x2006187}, /* 1600x900@60Hz_RB@97.750 MHz  */
            {HI_DRV_DISP_FMT_VESA_1600X900_60_RB,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1600, 900} ,  {0, 0, 1600, 900}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },

    // 26
    {   {1,   1,   2,   1200, 49,  1, 1600, 496, 64,       1,   1,  1,     192, 3, 1, 0,  0,  0}, /* 1600*12000@60Hz@162.000 MHz  */
        DISP_CLOCK_SOURCE_HD0,
        {0x12000000, 0x2001036}, /* 1600*12000@60Hz@162.000 MHz  */
        {HI_DRV_DISP_FMT_VESA_1600X1200_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1600, 1200} ,  {0, 0, 1600, 1200}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 27
    {   {1,   1,   2,  1050,  36,  3,  1680, 456, 104,  1,     1,   1,   176, 6,   1,  0,  0,  0}, /* 1680x1050@60Hz@119.000 MHz  */
        DISP_CLOCK_SOURCE_HD0,
        {0x12000000, 0x2018493}, /* 1680x1050@60Hz@119.000 MHz  */
        {HI_DRV_DISP_FMT_VESA_1680X1050_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1680, 1050} ,  {0, 0, 1680, 1050}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
        // 28
    {   {1,   1,   2,  1050,  36,  3,  1680, 456, 104,  1,     1,   1,   176, 6,   1,  0,  0,  0}, /* 1680x1050@60Hz@119.000 MHz  */
        DISP_CLOCK_SOURCE_HD0,
        {0x12000000, 0x2018493}, /* 1680x1050@60Hz@119.000 MHz  */
        {HI_DRV_DISP_FMT_VESA_1680X1050_60_RB,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1680, 1050} ,  {0, 0, 1680, 1050}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 29
    {   {1,   1,   2,  1080,  41,  4,  1920, 192, 88,  1,     1,   1,       44, 5, 1, 0,  0,  0}, /* 1920x1080@60Hz@148.500 MHz  */
        DISP_CLOCK_SOURCE_HD0,
        {0x12000000, 0x2002063}, /* 1920x1080@60Hz@148.500 MHz  */
        {HI_DRV_DISP_FMT_VESA_1920X1080_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1920, 1080} ,  {0, 0, 1920, 1080}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    // 30
    {   {1,   1,   2,  1200,  32,  3,  1920, 112, 48,  1,     1,   1,      32, 6, 1,  0,  0,  0}, /* 1920x1200@60Hz@154.000 MHz */
        DISP_CLOCK_SOURCE_HD0,
        {0x12000000, 0x200309a}, /* 1920x1200@60Hz@154.000 MHz */
        {HI_DRV_DISP_FMT_VESA_1920X1200_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1920, 1200} ,  {0, 0, 1920, 1200}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    
    // 31       /*not support*/
      {   {1,     1,         2,  1440,  59,      1,  1920,       552, 	   128,        1,             1,         1,        1,    208,           3,    0,     0,  0}, /*  1920x1440@60Hz 234MHz */
          DISP_CLOCK_SOURCE_HD0,
          {0x11000000, 0x2001027}, /*  1920x1440@60Hz 234MHz */
          {HI_DRV_DISP_FMT_VESA_1920X1440_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 1920, 1440} ,  {0, 0, 1920, 1440}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
      },
      
    // 32
    {   {1,   1,   2,  1152,  30,  3,  2048, 112, 48,  1,     1,   1,     32, 5,  1,  0,  0,  0}, /* 2048X1152@60Hz@156.750 MHz  */
        DISP_CLOCK_SOURCE_HD0,
        {0x12000000, 0x200309d}, /* 2048X1152@60Hz@156.750 MHz  */
        {HI_DRV_DISP_FMT_VESA_2048X1152_60,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 2048, 1152} ,  {0, 0, 2048, 1152}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },
    
    // 33       /*not support*/
    {    
        {1,     1,         2,  1440,  39,      2,  2560,       112, 	   48,          1,             1,         1,        1,    32,           5,    0,     0,  0}, /*  2560x1440@60Hz@241.5MHz RB */
        DISP_CLOCK_SOURCE_HD0,
        {0x12000000, 0x20020a1}, /*  2560x1440@60Hz@241.5MHz RB */
        {HI_DRV_DISP_FMT_VESA_2560X1440_60_RB,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 2560, 1440} ,  {0, 0, 2560, 1440}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },

    // 34       /*not support*/
    {    {1,     1,         2,  1600,  43,      3,  2560,       112,       48,          1,             1,         1,        1,    32,            6,    0,     0,  0}, /*  2560x1600@60Hz@268.5MHz RB */
        
        DISP_CLOCK_SOURCE_HD0,
        {0x12000000, 0x20020b3}, /*  2560x1600@60Hz@268.5MHz RB */
        {HI_DRV_DISP_FMT_VESA_2560X1600_60_RB,    DISP_STEREO_NONE, HI_FALSE,  {0, 0, 2560, 1600} ,  {0, 0, 2560, 1600}, {16, 9},  6000, HI_DRV_CS_BT709_RGB_FULL}
    },

      //22 HI_UNF_ENC_FMT_PAL_TEST
     { {0,   0,   2,   288,  22,  2,  1440, 132, 12,    288,  23,  2,    126, 3,  0, 0,  0,  0},/* 576I(PAL) */
       DISP_CLOCK_SOURCE_HD0, 
       {0x24000000, 0x02002063}, // 1080i50
       {HI_DRV_DISP_FMT_NTSC,    DISP_STEREO_NONE, HI_TRUE,  {0,0,720,480} , {0,0,720,480} ,{4,3},  6000, HI_DRV_CS_BT601_YUV_LIMITED}
     },

    /* Synm Iop  Itf  Vact Vbb Vfb   Hact  Hbb Hfb      Bvact Bvbb Bvfb  Hpw Vpw Hmid bIdv bIhs bIvs */
      // 23 HI_UNF_ENC_FMT_1080P_24_FP @74.25MHz,
     { {1,   0,   2,  1080,  41,  4,  1920, 192, 638,   1080,  41,  4,   44, 5,   1, 0,  0,  0}, /* 1080P@24Hz */
       DISP_CLOCK_SOURCE_HD0, 
       {0x12000000, 0x02002063}, // 1080P60/50
       {HI_DRV_DISP_FMT_1080P_24_FP, DISP_STEREO_FPK, HI_FALSE, {0,0,1920,1080},{0,0,1920,1080},{16,9}, 2400, HI_DRV_CS_BT709_YUV_LIMITED}
     },

  // 24 HI_UNF_ENC_FMT_720P_60_FP
 { {1,   0,   2,   720,  25,  5,  1280, 260,110,    720,  25,  5,    40,  5,  1,  0,  0,  0}, /* 720P@60Hz */
   DISP_CLOCK_SOURCE_HD0, 
   {0x12000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_720P_60_FP, DISP_STEREO_FPK, HI_FALSE, {0,0,1280,720},  {0,0,1280,720},{16,9}, 6000, HI_DRV_CS_BT709_YUV_LIMITED}
 },
  // 25 HI_UNF_ENC_FMT_720P_50_FP
 /* Synm Iop  Itf  Vact Vbb Vfb   Hact  Hbb Hfb      Bvact Bvbb Bvfb  Hpw Vpw Hmid bIdv bIhs bIvs */
 { {1,   0,   2,   720,  25,  5,  1280, 260,440,    720,  25,   5,   40,  5,  1, 0,  0,  0},  /* 720P@50Hz */
   DISP_CLOCK_SOURCE_HD0, 
   {0x12000000, 0x02002063}, // 1080P60/50
   {HI_DRV_DISP_FMT_720P_50_FP, DISP_STEREO_FPK, HI_FALSE, {0,0,1280,720},  {0,0,1280,720},{16,9}, 5000, HI_DRV_CS_BT709_YUV_LIMITED}
 },

  /* Synm Iop  Itf  Vact Vbb Vfb   Hact  Hbb Hfb      Bvact Bvbb Bvfb  Hpw Vpw Hmid bIdv bIhs bIvs */
  // 26 HI_UNF_ENC_FMT_PAL for HDMI
 { {0,   0,   0,   288,  22,  2,  720*2, 132*2, 12*2,  288,  23,  2,    126, 3, 300, 0,  0,  0},/* 576I(PAL) */
   DISP_CLOCK_SOURCE_SD0, 
   {0x14000000, 0x02002063}, // 1080i50
   {HI_DRV_DISP_FMT_PAL,     DISP_STEREO_NONE, HI_TRUE,  {0,0,1440,576} , {0,0,720,576} ,{4,3},  5000, HI_DRV_CS_BT601_YUV_LIMITED}
 },
  //576I: HDMI输出要求hmid=300, 而YPbPr要求hmid=0, 
  //考虑一般用户不会使用HDMI输出576I，所以不支持HDMI_567I输出，选择hmid=0
  // 27 HI_UNF_ENC_FMT_NTSC for HDMI
 { {0,   0,   0,   240,  18,  4,   720*2, 119*2, 19*2,  240,  19,  4,    124, 3,  310, 0, 0,  0},/* 480I(NTSC) */
   DISP_CLOCK_SOURCE_SD0, 
   {0x14000000, 0x02002063}, // 1080i50
   {HI_DRV_DISP_FMT_NTSC,    DISP_STEREO_NONE, HI_TRUE,  {0,0,1440,480} ,  {0,0,720,480} ,{4,3},  6000, HI_DRV_CS_BT601_YUV_LIMITED},
 },

};

HI_S32 Get_FormatCfgPara(HI_U32 index,DISP_FMT_CFG_S *pstDispFormatParam)
{
    if (index >= sizeof(s_stDispFormatParam)/sizeof(DISP_FMT_CFG_S))
        return HI_FAILURE;
    
    *pstDispFormatParam = s_stDispFormatParam[index];
    return HI_SUCCESS;
}
#ifndef __DISP_PLATFORM_BOOT__
HI_S32 Chip_Specific_LayerZmeFunc(HI_U32 u32LayerId,
                            ALG_VZME_DRV_PARA_S *stZmeI,
                            ALG_VZME_RTL_PARA_S *stZmeO)
{
	DISP_UA_FUNCTION_S *pfUA;
    
    pfUA = DISP_UA_GetFunction();
    if (!pfUA)    
        return HI_FAILURE;
    
    /*cv200es, video layers are 6 taps,so pfVZmeVdpHQSet should be used.*/
    pfUA->pfVZmeVdpHQSet(stZmeI, stZmeO);    
    return HI_SUCCESS;	
}

HI_S32 Chip_Specific_WbcZmeFunc(DISP_WBC_E eWbc,
                            ALG_VZME_DRV_PARA_S *stZmeI,
                            ALG_VZME_RTL_PARA_S *stZmeO)
{
	DISP_UA_FUNCTION_S *pfUA;
    
    pfUA = DISP_UA_GetFunction();
    if (!pfUA)    
        return HI_FAILURE;    
        
    /*cv200es, wbc-dhd0 are 4 taps,so pfVZmeVdpSQSet should be used.*/
    pfUA->pfVZmeVdpSQSet(stZmeI, stZmeO);    
    return HI_SUCCESS;	
}
#endif
HI_S32 Chip_Specific_Set3DMode(HI_DRV_DISPLAY_E eChn, HI_U32 u32DispId, DISP_FMT_CFG_S *pstCfg)
{
    if(pstCfg->stInfo.eDispMode == DISP_STEREO_FPK)
    {
        VDP_DISP_SetFramePackingEn(u32DispId, 1);
    }
    else
    {
        VDP_DISP_SetFramePackingEn(u32DispId, 0);
    }
    
    if (eChn == HI_DRV_DISPLAY_1)
    {
        switch (pstCfg->stInfo.eDispMode)
        {
            case DISP_STEREO_FPK:
                VDP_VP_SetDispMode(VDP_LAYER_VP0, VDP_DISP_MODE_FP);
                break;
            case DISP_STEREO_SBS_HALF:
                VDP_VP_SetDispMode(VDP_LAYER_VP0, VDP_DISP_MODE_SBS);
                break;
            case DISP_STEREO_TAB:
                VDP_VP_SetDispMode(VDP_LAYER_VP0, VDP_DISP_MODE_TAB);
                break;
            default:
                VDP_VP_SetDispMode(VDP_LAYER_VP0, VDP_DISP_MODE_2D);
                break;
        }
    }
    
    return HI_SUCCESS;
}

HI_S32 Chip_Specific_ReviseWbcZmeInput(DISP_WBC_E eWbc, 
                                       HI_DISP_DISPLAY_INFO_S *pstDispInfo, 
                                       HI_U32 *u32Width, 
                                       HI_U32 *u32Height)
{
    /*because s40v2 does not support 3d write back, so we did not revise it.*/
    return HI_SUCCESS;
}

HI_S32 Chip_Specific_SetWbc3DInfo(DISP_WBC_E eWbc, HI_DISP_DISPLAY_INFO_S *pstDispInfo, HI_RECT_S *in)
{
    #ifndef __DISP_PLATFORM_BOOT__
    VDP_DISP_RECT_S stRect;
    
    DISP_MEMSET(&stRect, 0, sizeof(VDP_DISP_RECT_S));
    stRect.u32DXS = 0; /*does not support crop now.*/
    stRect.u32DYS = 0;        
    stRect.u32DYL = (HI_U32)in->s32Height;
    stRect.u32DXL = (HI_U32)in->s32Width;
    
    VDP_WBC_SetCropReso(VDP_LAYER_WBC_HD0, stRect);
    #endif

    return HI_SUCCESS;
}

HI_S32 Chip_Specific_SetDispMode(HI_U32 u32id, HI_DRV_DISP_STEREO_MODE_E eMode)
{
    switch(eMode)
    {
        case HI_DRV_DISP_STEREO_FRAME_PACKING:
            VDP_VID_SetDispMode(u32id, VDP_DISP_MODE_FP);
            break;
        case HI_DRV_DISP_STEREO_SBS_HALF:
            VDP_VID_SetDispMode(u32id, VDP_DISP_MODE_SBS);
            break;
        case HI_DRV_DISP_STEREO_TAB:
            VDP_VID_SetDispMode(u32id, VDP_DISP_MODE_TAB); //todo
            break;
        case HI_DRV_DISP_STEREO_NONE:
        default:
            VDP_VID_SetDispMode(u32id, VDP_DISP_MODE_2D);
            break;
    }

    return HI_SUCCESS;
}
#ifndef __DISP_PLATFORM_BOOT__

HI_S32 Chip_Specific_WinHalSetAddr(HI_U32 u32LayerId, WIN_HAL_PARA_S *pstPara, HI_S32 s32exl)
{
    HI_DRV_VID_FRAME_ADDR_S *pstAddr;
    HI_U32 OffsetL, OffsetC;

    if (!pstPara)
    {
        DISP_FATAL_RETURN();
    }
    
    pstAddr = &(pstPara->pstFrame->stBufAddr[0]);

    if (  (pstPara->pstFrame->ePixFormat == HI_DRV_PIX_FMT_NV12)
        ||(pstPara->pstFrame->ePixFormat == HI_DRV_PIX_FMT_NV21)
        )
    {
        OffsetL = pstPara->stIn.s32X + (pstPara->stIn.s32Y * pstAddr[0].u32Stride_Y);
        OffsetC = pstPara->stIn.s32X + (pstPara->stIn.s32Y * pstAddr[0].u32Stride_Y/2);
    }
    else
    {
       DISP_FATAL_RETURN();
    }

    if ((pstPara->en3Dmode == DISP_STEREO_FPK)||
        (pstPara->en3Dmode == DISP_STEREO_TAB)||
        (pstPara->en3Dmode == DISP_STEREO_SBS_HALF))
    {
        if (HI_DRV_FT_NOT_STEREO == pstPara->pstFrame->eFrmType)
        {
            VDP_VID_SetLayerAddr(u32LayerId, 0, pstAddr[0].u32PhyAddr_Y+OffsetL, 
                                                pstAddr[0].u32PhyAddr_C+OffsetC, 
                                                pstAddr[0].u32Stride_Y * s32exl, 
                                                pstAddr[0].u32Stride_C * s32exl);

            VDP_VID_SetLayerAddr(u32LayerId, 1, pstAddr[0].u32PhyAddr_Y+OffsetL, 
                                                pstAddr[0].u32PhyAddr_C+OffsetC, 
                                                pstAddr[0].u32Stride_Y * s32exl, 
                                                pstAddr[0].u32Stride_C* s32exl);

        }
        else if (HI_DRV_FT_BUTT > pstPara->pstFrame->eFrmType)
        {
            if (pstPara->bRightEyeFirst)
            {
                VDP_VID_SetLayerAddr(u32LayerId, 1, pstAddr[0].u32PhyAddr_Y+OffsetL, 
                                                    pstAddr[0].u32PhyAddr_C+OffsetC, 
                                                    pstAddr[0].u32Stride_Y* s32exl, 
                                                    pstAddr[0].u32Stride_C* s32exl);
                
                VDP_VID_SetLayerAddr(u32LayerId, 0, pstAddr[1].u32PhyAddr_Y+OffsetL,
                                                    pstAddr[1].u32PhyAddr_C+OffsetC, 
                                                    pstAddr[1].u32Stride_Y* s32exl, 
                                                    pstAddr[1].u32Stride_C* s32exl);
            }
            else
            {
                VDP_VID_SetLayerAddr(u32LayerId, 0, pstAddr[0].u32PhyAddr_Y+OffsetL, 
                                                    pstAddr[0].u32PhyAddr_C+OffsetC, 
                                                    pstAddr[0].u32Stride_Y* s32exl, 
                                                    pstAddr[0].u32Stride_C* s32exl);
                
                VDP_VID_SetLayerAddr(u32LayerId, 1, pstAddr[1].u32PhyAddr_Y+OffsetL,
                                                    pstAddr[1].u32PhyAddr_C+OffsetC, 
                                                    pstAddr[1].u32Stride_Y* s32exl, 
                                                    pstAddr[1].u32Stride_C* s32exl);
            }
        }
        else
        {
            DISP_FATAL_RETURN();
        }

        VDP_VID_SetFlipEnable(u32LayerId,HI_FALSE);
    }
    else
    {
        if (pstPara->pstFrame->u32Circumrotate == 0)
        {
            VDP_VID_SetLayerAddr(u32LayerId, 0, pstAddr[0].u32PhyAddr_Y+OffsetL, 
                                            pstAddr[0].u32PhyAddr_C+OffsetC, 
                                            pstAddr[0].u32Stride_Y * s32exl, 
                                            pstAddr[0].u32Stride_C * s32exl);
            VDP_VID_SetFlipEnable(u32LayerId,HI_FALSE);
        }
        else /*VP6 stream need flip*/
        {
            /*modified by z56248:  add the crop condition.*/            
            unsigned int reverse_y = pstPara->stIn.s32Height  - pstPara->stIn.s32Y;            
            VDP_VID_SetLayerAddr(u32LayerId, 0, pstAddr[0].u32PhyAddr_Y + pstPara->stIn.s32X + (reverse_y - 1)*pstAddr[0].u32Stride_Y,
                                            pstAddr[0].u32PhyAddr_C + pstPara->stIn.s32X + (reverse_y /2-1)*pstAddr[0].u32Stride_C, 
                                            pstAddr[0].u32Stride_Y * s32exl, 
                                            pstAddr[0].u32Stride_C * s32exl);
            VDP_VID_SetFlipEnable(u32LayerId,HI_TRUE);
        }
    }

    return HI_SUCCESS;
}

HI_S32 Chip_Specific_SetLayerCapability(VIDEO_LAYER_CAPABILITY_S *pstVideoLayerCap)
{
    HI_U32 eId;

    DISP_MEMSET((void *)pstVideoLayerCap, 0, sizeof(VIDEO_LAYER_CAPABILITY_S) * DEF_VIDEO_LAYER_MAX_NUMBER);
    
    eId = 0;
    pstVideoLayerCap[eId].eId      = (HI_U32)VDP_RM_LAYER_VID0;
    pstVideoLayerCap[eId].bSupport = HI_TRUE;
    pstVideoLayerCap[eId].bZme     = HI_TRUE;
    pstVideoLayerCap[eId].bACC     = HI_TRUE;
    pstVideoLayerCap[eId].bACM     = HI_TRUE;
    pstVideoLayerCap[eId].bHDIn    = HI_TRUE;
    pstVideoLayerCap[eId].bHDOut   = HI_TRUE;

    // s2 set va1
    eId++;
    pstVideoLayerCap[eId].eId      = (HI_U32)VDP_RM_LAYER_VID1;
    pstVideoLayerCap[eId].bSupport = HI_TRUE;
    pstVideoLayerCap[eId].bZme     = HI_TRUE;
    pstVideoLayerCap[eId].bACC     = HI_TRUE;
    pstVideoLayerCap[eId].bACM     = HI_TRUE;
    pstVideoLayerCap[eId].bHDIn    = HI_TRUE;
    pstVideoLayerCap[eId].bHDOut   = HI_TRUE;

    // s2 set vb0
    eId++;
    eId++;
    pstVideoLayerCap[eId].eId      = (HI_U32)VDP_RM_LAYER_VID3;
    pstVideoLayerCap[eId].bSupport = HI_TRUE;
    pstVideoLayerCap[eId].bZme     = HI_TRUE;
    pstVideoLayerCap[eId].bACC     = HI_TRUE;
    pstVideoLayerCap[eId].bACM     = HI_TRUE;
    pstVideoLayerCap[eId].bHDIn    = HI_TRUE;
    pstVideoLayerCap[eId].bHDOut   = HI_TRUE;

    // s2 set vb1
    eId++;
    pstVideoLayerCap[eId].eId      = (HI_U32)VDP_RM_LAYER_VID4;
    pstVideoLayerCap[eId].bSupport = HI_FALSE;
    pstVideoLayerCap[eId].bZme     = HI_TRUE;
    pstVideoLayerCap[eId].bACC     = HI_TRUE;
    pstVideoLayerCap[eId].bACM     = HI_TRUE;
    pstVideoLayerCap[eId].bHDIn    = HI_TRUE;
    pstVideoLayerCap[eId].bHDOut   = HI_TRUE;

    eId++;
    for(; eId <DEF_VIDEO_LAYER_MAX_NUMBER; eId++)
    {
        pstVideoLayerCap[eId].eId = (HI_U32)DEF_VIDEO_LAYER_INVALID_ID;
        pstVideoLayerCap[eId].bSupport = HI_FALSE;
        pstVideoLayerCap[eId].bZme     = HI_FALSE;
        pstVideoLayerCap[eId].bACC     = HI_FALSE;
        pstVideoLayerCap[eId].bACM     = HI_FALSE;
        pstVideoLayerCap[eId].bHDIn    = HI_FALSE;
        pstVideoLayerCap[eId].bHDOut   = HI_FALSE;
    }


    return HI_SUCCESS;
}
#endif

#define VDP_CLK_MODE_300MHZ   0 
#define VDP_CLK_MODE_400MHZ   1 
#define VDP_CLK_MODE_345_6MHZ   1 
#define VDP_CLK_MODE_200MHZ   3 

HI_S32 Chip_Specific_DispSetMSChnEnable(HI_U32 u32DispIdM, HI_U32 u32DispIdS, HI_U32 u32DelayMs, HI_BOOL bEnalbe)
{

    if (bEnalbe == HI_FALSE)
    {
        VDP_SelectClk(VDP_CLK_MODE_200MHZ);
    }

    VDP_DISP_SetIntfEnable(u32DispIdM , bEnalbe);
    VDP_DISP_SetIntfEnable(u32DispIdS, bEnalbe);

    VDP_DISP_SetRegUp(u32DispIdM);
    VDP_DISP_SetRegUp(u32DispIdS);
    
    if (bEnalbe == HI_FALSE)
    {
        if (u32DelayMs)
        {
            DISP_MSLEEP(u32DelayMs);
        }
        VDP_SelectClk(VDP_CLK_MODE_300MHZ);
    }
    return HI_SUCCESS;
}
HI_S32 Chip_Specific_DispSelectPll(HI_DRV_DISPLAY_E eChn, HI_U32 uPllIndex)
{
    if (HI_DRV_DISPLAY_0 == eChn)
    {
        U_PERI_CRG54 PERI_CRG54Tmp; /* 0xd8 */

        PERI_CRG54Tmp.u32 = g_pstRegCrg->PERI_CRG54.u32;
        PERI_CRG54Tmp.bits.vo_sd_clk_sel = uPllIndex;
        g_pstRegCrg->PERI_CRG54.u32 = PERI_CRG54Tmp.u32;
    }
    else
    {
        U_PERI_CRG54 PERI_CRG54Tmp; /* 0xd8 */

        PERI_CRG54Tmp.u32 = g_pstRegCrg->PERI_CRG54.u32;
        PERI_CRG54Tmp.bits.vo_hd_clk_sel = uPllIndex;
        g_pstRegCrg->PERI_CRG54.u32 = PERI_CRG54Tmp.u32;


        if (DISP_CLOCK_SOURCE_SD0 == uPllIndex)
            VDP_SelectClk(VDP_CLK_MODE_200MHZ);
        else
            VDP_SelectClk(VDP_CLK_MODE_300MHZ);
    }
    return HI_SUCCESS;
}
HI_VOID  Chip_Specific_DispSetPll(DISP_PLL_SOURCE_E enPllIndex,HI_U32 u32PllxReg0,HI_U32 u32PllxReg1)
{
    if (DISP_CLOCK_SOURCE_HD0 == enPllIndex)
    {
        U_PERI_CRG10 PERI_CRG10Tmp;
        U_PERI_CRG11 PERI_CRG11Tmp;

        PERI_CRG10Tmp.u32 = g_pstRegCrg->PERI_CRG10.u32;
        PERI_CRG10Tmp.bits.hpll_ctrl0 = u32PllxReg0;
        g_pstRegCrg->PERI_CRG10.u32 = PERI_CRG10Tmp.u32;

        PERI_CRG11Tmp.u32 = g_pstRegCrg->PERI_CRG11.u32;
        PERI_CRG11Tmp.bits.hpll_ctrl1 = u32PllxReg1;
        g_pstRegCrg->PERI_CRG11.u32 = PERI_CRG11Tmp.u32;
    }
    else  if (DISP_CLOCK_SOURCE_HD1 == enPllIndex)
    {/*do nothing*/
    }
    else  if (DISP_CLOCK_SOURCE_SD0 == enPllIndex)
    {/*do nothing*/
    }
	
}

#define CLOCK_DIV_1  3
#define CLOCK_DIV_2  0
#define CLOCK_DIV_4  1

HI_VOID Chip_Specific_DispSetChanClk(HI_DRV_DISPLAY_E eChn, DISP_FMT_CFG_S *pstCfg)
{
    HI_U32 u32Div;

    /*if SD format    :::DISPLAY_0 channel  output SD ,so set div 4*/
    if (( HI_DRV_DISPLAY_0 == eChn )
        &&(pstCfg->stInfo.eFmt >= HI_DRV_DISP_FMT_PAL )
        && (pstCfg->stInfo.eFmt <= HI_DRV_DISP_FMT_SECAM_H )
        )
        u32Div = CLOCK_DIV_4;/*output  SD format*/
    else 
        u32Div = CLOCK_DIV_2;

    Chip_Specific_DispSelectPll(eChn, pstCfg->enPllIndex);
    VDP_DISP_SelectChanClkDiv(eChn, u32Div);

    if  (HI_DRV_DISPLAY_1 == eChn)
        Chip_Specific_DispSetPll(pstCfg->enPllIndex, pstCfg->u32Pll[0], pstCfg->u32Pll[1]);
}


#define VDP_CBM_ZORDER_NO    2

#define VDP_MIX_VIDEO    0
#define VDP_MIX_GFX   1

#define VDP_MIXv0_LayerNO    2
#define VDP_MIXv1_LayerNO    1
#define VDP_MIXg1_LayerNO    2
static HI_DRV_DISP_LAYER_E s_CBM_Zorder[HI_DRV_DISPLAY_BUTT][VDP_CBM_ZORDER_NO];
static VDP_LAYER_VID_E s_MIXv0_Zorder[VDP_LAYER_VID_BUTT]=
{
    VDP_LAYER_VID0,
    VDP_LAYER_VID1
};


HI_U32 Chip_Specific_GetMixvMaxNumvber(VDP_CBM_MIX_E eM)
{
    switch(eM)
    {
        case VDP_CBM_MIXV0:
            return VDP_MIXv0_LayerNO;
        case VDP_CBM_MIXV1:
            return VDP_MIXv1_LayerNO;
        default:
            return 0;
    }
}


HI_S32 Chip_Specific_CBM_SetDispZorder(HI_DRV_DISPLAY_E enDisp)
{
    HI_U32 i, j = 0;
    VDP_CBM_MIX_E eMixId;
    HI_U32 MixArray[VDP_CBM_BUTT];
    memset(MixArray,0 ,sizeof(HI_U32)*VDP_CBM_BUTT);
    
    if (HI_DRV_DISPLAY_1 == enDisp)
    {
        eMixId = VDP_CBM_MIX0;
        j = 2;
        if (s_CBM_Zorder[HI_DRV_DISPLAY_1][1] == VDP_MIX_GFX)
       {
            MixArray[1] = VDP_CBM_GP0;
            MixArray[0] = VDP_CBM_VP0;
        }
        else
        {
            MixArray[1] = VDP_CBM_VP0;
            MixArray[0] = VDP_CBM_GP0;
        }
    }
    else if (HI_DRV_DISPLAY_0 == enDisp)
    {
        eMixId = VDP_CBM_MIX1;
         j = 2;
        if (s_CBM_Zorder[HI_DRV_DISPLAY_1][1] == VDP_MIX_GFX)
       {
            MixArray[1] = VDP_CBM_GP1;
            MixArray[0] = VDP_CBM_VP1;
        }
        else
        {
            MixArray[1] = VDP_CBM_VP1;
            MixArray[0] = VDP_CBM_GP1;
        }
    }

    /*set zorder */
    for( i = 0; i< j; i++)
    {
        VDP_CBM_SetMixerPrio(eMixId, MixArray[i], i);
    }
     return HI_SUCCESS;
}
HI_VOID Chip_Specific_CBM_GetMixvPrio(VDP_CBM_MIX_E enMixer, HI_U32 u32prio, HI_U32 *pu32layer_id)
{
    *pu32layer_id = VDP_LAYER_VID_BUTT;
    
    if ( VDP_CBM_MIXV0 == enMixer)
    {
        if ( u32prio < VDP_MIXv0_LayerNO)
        {
            *pu32layer_id = s_MIXv0_Zorder[u32prio];
        }
    } 
    else if ( VDP_CBM_MIXV1 == enMixer)
    {
        if ( u32prio < VDP_MIXv1_LayerNO)
        {
             *pu32layer_id = VDP_CBM_VP1;
        }
    } 
    else
    {
        *pu32layer_id = VDP_LAYER_VID_BUTT;
        HI_PRINT("Error, Vou_SetCbmMixerPrio() Set mixer  select wrong layer ID\n");
    }
    //printk("get mix%d : index (%d)  layer(%d)\n",enMixer,u32prio,*pu32layer_id);
}


HI_VOID Chip_Specific_CBM_SetMixvPrio(VDP_CBM_MIX_E enMixer,HI_U32 *pMixArray,HI_U32 u32prio)
{
    HI_U32 i;

    if ( VDP_CBM_MIXV0 == enMixer)
    {
        for (i =0 ; i< VDP_MIXv0_LayerNO; i++)
        {
            s_MIXv0_Zorder[i] = pMixArray[i];
            VDP_CBM_SetMixerPrio(enMixer, s_MIXv0_Zorder[i] , i);
            //printk("---mix%d---index,layer --(%d)-->(%d)\n",enMixer,i,s_MIXv0_Zorder[i]);
        }
    }
    else if ( VDP_CBM_MIXV1 == enMixer)
    {
        /*only one video layer ,so do nothing!*/
    }
    else
    {
        HI_PRINT("Error, Chip_Specific_CBM_SetMixvPrio() select Mixer ID\n");
    }
    
}
HI_S32 Chip_Specific_CBM_MovTOP(HI_DRV_DISPLAY_E enDisp, HI_DRV_DISP_LAYER_E enLayer)
{
    if (HI_DRV_DISP_LAYER_VIDEO == enLayer)
    {
        s_CBM_Zorder[enDisp][1] = VDP_MIX_VIDEO;
        s_CBM_Zorder[enDisp][0] = VDP_MIX_GFX;
    }
    else if (HI_DRV_DISP_LAYER_GFX == enLayer)
    {
        s_CBM_Zorder[enDisp][1]  = VDP_MIX_GFX;
        s_CBM_Zorder[enDisp][0]  = VDP_MIX_VIDEO;
     }
    else
    {
        HI_PRINT("Error,  para DISP_LAYER wrong  \n");
        return HI_FAILURE;
    }
    Chip_Specific_CBM_SetDispZorder(enDisp);

    return HI_SUCCESS;
}

