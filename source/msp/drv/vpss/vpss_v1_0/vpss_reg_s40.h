#ifndef __VPSS_REG_S40_H__
#define __VPSS_REG_S40_H__
#include "vpss_common.h"
#include "vpss_reg_struct.h"
#include "hi_drv_reg.h"
#include "hi_reg_common.h"


//s40v200
#define VPSS_BASE_ADDR  0xf8cb0000

typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    str_en                : 1   ; // [0] 
        unsigned int    vhd_en                : 1   ; // [1] 
        unsigned int    vsd_en                : 1   ; // [2] 
        unsigned int    Reserved_2            : 1   ; // [3] 
        unsigned int    vsd_mux               : 1   ; // [4] 
        unsigned int    die_bfield_first      : 1   ; // [5] 
        unsigned int    die_mode              : 1   ; // [6] 
        unsigned int    in_format             : 1   ; // [7] 
        unsigned int    str_det_en            : 1   ; // [8] 
        unsigned int    dei_en                : 1   ; // [9] 
        unsigned int    db_en                 : 1   ; // [10] 
        unsigned int    dr_en                 : 1   ; // [11] 
        unsigned int    acc_en                : 1   ; // [12] 
        unsigned int    acm_en                : 1   ; // [13] 
        unsigned int    str_lba_en            : 1   ; // [14] 
        unsigned int    vhd_lba_en            : 1   ; // [15] 
        unsigned int    vsd_lba_en            : 1   ; // [16] 
        unsigned int    str_mute_en           : 1   ; // [17] 
        unsigned int    vhd_mute_en           : 1   ; // [18] 
        unsigned int    vsd_mute_en           : 1   ; // [19] 
        unsigned int    vc1_en                : 1   ; // [20] 
        unsigned int    Reserved_1            : 3   ; // [23..21] 
        unsigned int    str_b422              : 1   ; // [24] 
        unsigned int    vhd_b422              : 1   ; // [25] 
        unsigned int    vsd_b422              : 1   ; // [26] 
        unsigned int    Reserved_0            : 2   ; // [28..27] 
        unsigned int    uv_invert             : 1   ; // [29] 
        unsigned int    in_b422               : 1   ; // [30] 
        unsigned int    bfield                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_CTRL;

// Define the union U_VPSS_IMGSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    imgwidth              : 12  ; // [11..0] 
        unsigned int    Reserved_4            : 4   ; // [15..12] 
        unsigned int    imgheight             : 12  ; // [27..16] 
        unsigned int    Reserved_3            : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_IMGSIZE;

// Define the union U_VPSS_VSDSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vsd_width             : 12  ; // [11..0] 
        unsigned int    Reserved_7            : 4   ; // [15..12] 
        unsigned int    vsd_height            : 12  ; // [27..16] 
        unsigned int    Reserved_6            : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDSIZE;

// Define the union U_VPSS_VHDSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vhd_width             : 12  ; // [11..0] 
        unsigned int    Reserved_10           : 4   ; // [15..12] 
        unsigned int    vhd_height            : 12  ; // [27..16] 
        unsigned int    Reserved_9            : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDSIZE;

// Define the union U_VPSS_STRSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    str_width             : 12  ; // [11..0] 
        unsigned int    Reserved_12           : 4   ; // [15..12] 
        unsigned int    str_height            : 12  ; // [27..16] 
        unsigned int    Reserved_11           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRSIZE;

// Define the union U_VPSS_CURSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cury_stride           : 16  ; // [15..0] 
        unsigned int    curc_stride           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_CURSTRIDE;

// Define the union U_VPSS_REFSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    refy_stride           : 16  ; // [15..0] 
        unsigned int    refc_stride           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_REFSTRIDE;

// Define the union U_VPSS_NEXT1STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    nxt1y_stride          : 16  ; // [15..0] 
        unsigned int    nxt1c_stride          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_NEXT1STRIDE;

// Define the union U_VPSS_NEXT2STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    nxt2y_stride          : 16  ; // [15..0] 
        unsigned int    nxt2c_stride          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_NEXT2STRIDE;

// Define the union U_VPSS_NEXT3STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    nxt3y_stride          : 16  ; // [15..0] 
        unsigned int    nxt3c_stride          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_NEXT3STRIDE;

// Define the union U_VPSS_STSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    st_stride             : 16  ; // [15..0] 
        unsigned int    Reserved_18           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STSTRIDE;

// Define the union U_VPSS_VSDSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vsdy_stride           : 16  ; // [15..0] 
        unsigned int    vsdc_stride           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDSTRIDE;

// Define the union U_VPSS_VHDSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vhdy_stride           : 16  ; // [15..0] 
        unsigned int    vhdc_stride           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDSTRIDE;

// Define the union U_VPSS_STRSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    stry_stride           : 16  ; // [15..0] 
        unsigned int    strc_stride           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRSTRIDE;

// Define the union U_VPSS_AXIID
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    axi_vsd_wid           : 1   ; // [0] 
        unsigned int    axi_vhd_wid           : 1   ; // [1] 
        unsigned int    axi_str_wid           : 1   ; // [2] 
        unsigned int    axi_st_wid            : 1   ; // [3] 
        unsigned int    axi_ref_rid           : 1   ; // [4] 
        unsigned int    axi_cur_rid           : 1   ; // [5] 
        unsigned int    axi_nxt1_rid          : 1   ; // [6] 
        unsigned int    axi_nxt2_rid          : 1   ; // [7] 
        unsigned int    axi_nxt3_rid          : 1   ; // [8] 
        unsigned int    axi_st_rid            : 1   ; // [9] 
        unsigned int    axi_rdb_rid           : 1   ; // [10] 
        unsigned int    axi_cas_rid           : 1   ; // [11] 
        unsigned int    awid_cfg1             : 4   ; // [15..12] 
        unsigned int    awid_cfg0             : 4   ; // [19..16] 
        unsigned int    arid_cfg1             : 4   ; // [23..20] 
        unsigned int    arid_cfg0             : 4   ; // [27..24] 
        unsigned int    Reserved_23           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_AXIID;

// Define the union U_VPSS_INTMASK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    eof_mask              : 1   ; // [0] 
        unsigned int    timeout_mask          : 1   ; // [1] 
        unsigned int    bus_err_mask          : 1   ; // [2] 
        unsigned int    eof_end_mask          : 1   ; // [3] 
        unsigned int    Reserved_24           : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_INTMASK;

// Define the union U_VPSS_VSD_HSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 24  ; // [23..0] 
        unsigned int    hfir_order            : 1   ; // [24] 
        unsigned int    hchfir_en             : 1   ; // [25] 
        unsigned int    hlfir_en              : 1   ; // [26] 
        unsigned int    Reserved_25           : 1   ; // [27] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hchmsc_en             : 1   ; // [30] 
        unsigned int    hlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_HSP;

// Define the union U_VPSS_VSD_HLOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_loffset           : 28  ; // [27..0] 
        unsigned int    Reserved_27           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_HLOFFSET;

// Define the union U_VPSS_VSD_HCOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 28  ; // [27..0] 
        unsigned int    Reserved_28           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_HCOFFSET;

// Define the union U_VPSS_VSD_VSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_31           : 19  ; // [18..0] 
        unsigned int    zme_in_fmt            : 2   ; // [20..19] 
        unsigned int    zme_out_fmt           : 2   ; // [22..21] 
        unsigned int    vchfir_en             : 1   ; // [23] 
        unsigned int    vlfir_en              : 1   ; // [24] 
        unsigned int    Reserved_30           : 1   ; // [25] 
        unsigned int    vsc_chroma_tap        : 1   ; // [26] 
        unsigned int    Reserved_29           : 1   ; // [27] 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vchmsc_en             : 1   ; // [30] 
        unsigned int    vlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_VSP;

// Define the union U_VPSS_VSD_VSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_32           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_VSR;

// Define the union U_VPSS_VSD_VOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vchroma_offset        : 16  ; // [15..0] 
        unsigned int    vluma_offset          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_VOFFSET;

// Define the union U_VPSS_VSD_ZMEORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_33           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_ZMEORESO;

// Define the union U_VPSS_VSD_ZMEIRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_34           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_ZMEIRESO;

// Define the union U_VPSS_VSD_LTI_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef4          : 8   ; // [7..0] 
        unsigned int    lmixing_ratio         : 8   ; // [15..8] 
        unsigned int    lgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_35           : 3   ; // [30..28] 
        unsigned int    lti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_LTI_CTRL;

// Define the union U_VPSS_VSD_LHPASS_COEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef0          : 8   ; // [7..0] 
        unsigned int    lhpass_coef1          : 8   ; // [15..8] 
        unsigned int    lhpass_coef2          : 8   ; // [23..16] 
        unsigned int    lhpass_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_LHPASS_COEF;

// Define the union U_VPSS_VSD_LTI_THD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lover_swing           : 10  ; // [9..0] 
        unsigned int    lunder_swing          : 10  ; // [19..10] 
        unsigned int    lcoring_thd           : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_LTI_THD;

// Define the union U_VPSS_VSD_LHFREQ_THD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhfreq_thd0           : 16  ; // [15..0] 
        unsigned int    lhfreq_thd1           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_LHFREQ_THD;

// Define the union U_VPSS_VSD_LGAIN_COEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lgain_coef0           : 8   ; // [7..0] 
        unsigned int    lgain_coef1           : 8   ; // [15..8] 
        unsigned int    lgain_coef2           : 8   ; // [23..16] 
        unsigned int    Reserved_36           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_LGAIN_COEF;

// Define the union U_VPSS_VSD_CTI_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_38           : 8   ; // [7..0] 
        unsigned int    cmixing_ratio         : 8   ; // [15..8] 
        unsigned int    cgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_37           : 3   ; // [30..28] 
        unsigned int    cti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_CTI_CTRL;

// Define the union U_VPSS_VSD_CHPASS_COEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    chpass_coef0          : 8   ; // [7..0] 
        unsigned int    chpass_coef1          : 8   ; // [15..8] 
        unsigned int    chpass_coef2          : 8   ; // [23..16] 
        unsigned int    Reserved_39           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_CHPASS_COEF;

// Define the union U_VPSS_VSD_CTI_THD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cover_swing           : 10  ; // [9..0] 
        unsigned int    cunder_swing          : 10  ; // [19..10] 
        unsigned int    ccoring_thd           : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSD_CTI_THD;

// Define the union U_VPSS_VHD_HSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 24  ; // [23..0] 
        unsigned int    hfir_order            : 1   ; // [24] 
        unsigned int    hchfir_en             : 1   ; // [25] 
        unsigned int    hlfir_en              : 1   ; // [26] 
        unsigned int    Reserved_40           : 1   ; // [27] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hchmsc_en             : 1   ; // [30] 
        unsigned int    hlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_HSP;

// Define the union U_VPSS_VHD_HLOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_loffset           : 28  ; // [27..0] 
        unsigned int    Reserved_41           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_HLOFFSET;

// Define the union U_VPSS_VHD_HCOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 28  ; // [27..0] 
        unsigned int    Reserved_42           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_HCOFFSET;

// Define the union U_VPSS_VHD_VSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_45           : 19  ; // [18..0] 
        unsigned int    zme_in_fmt            : 2   ; // [20..19] 
        unsigned int    zme_out_fmt           : 2   ; // [22..21] 
        unsigned int    vchfir_en             : 1   ; // [23] 
        unsigned int    vlfir_en              : 1   ; // [24] 
        unsigned int    Reserved_44           : 1   ; // [25] 
        unsigned int    vsc_chroma_tap        : 1   ; // [26] 
        unsigned int    Reserved_43           : 1   ; // [27] 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vchmsc_en             : 1   ; // [30] 
        unsigned int    vlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_VSP;

// Define the union U_VPSS_VHD_VSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_46           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_VSR;

// Define the union U_VPSS_VHD_VOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vchroma_offset        : 16  ; // [15..0] 
        unsigned int    vluma_offset          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_VOFFSET;

// Define the union U_VPSS_VHD_ZMEORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_47           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_ZMEORESO;

// Define the union U_VPSS_VHD_ZMEIRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_48           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_ZMEIRESO;

// Define the union U_VPSS_VHD_LTI_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef4          : 8   ; // [7..0] 
        unsigned int    lmixing_ratio         : 8   ; // [15..8] 
        unsigned int    lgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_49           : 3   ; // [30..28] 
        unsigned int    lti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_LTI_CTRL;

// Define the union U_VPSS_VHD_LHPASS_COEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef0          : 8   ; // [7..0] 
        unsigned int    lhpass_coef1          : 8   ; // [15..8] 
        unsigned int    lhpass_coef2          : 8   ; // [23..16] 
        unsigned int    lhpass_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_LHPASS_COEF;

// Define the union U_VPSS_VHD_LTI_THD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lover_swing           : 10  ; // [9..0] 
        unsigned int    lunder_swing          : 10  ; // [19..10] 
        unsigned int    lcoring_thd           : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_LTI_THD;

// Define the union U_VPSS_VHD_LHFREQ_THD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhfreq_thd0           : 16  ; // [15..0] 
        unsigned int    lhfreq_thd1           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_LHFREQ_THD;

// Define the union U_VPSS_VHD_LGAIN_COEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lgain_coef0           : 8   ; // [7..0] 
        unsigned int    lgain_coef1           : 8   ; // [15..8] 
        unsigned int    lgain_coef2           : 8   ; // [23..16] 
        unsigned int    Reserved_50           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_LGAIN_COEF;

// Define the union U_VPSS_VHD_CTI_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_52           : 8   ; // [7..0] 
        unsigned int    cmixing_ratio         : 8   ; // [15..8] 
        unsigned int    cgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_51           : 3   ; // [30..28] 
        unsigned int    cti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_CTI_CTRL;

// Define the union U_VPSS_VHD_CHPASS_COEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    chpass_coef0          : 8   ; // [7..0] 
        unsigned int    chpass_coef1          : 8   ; // [15..8] 
        unsigned int    chpass_coef2          : 8   ; // [23..16] 
        unsigned int    Reserved_53           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_CHPASS_COEF;

// Define the union U_VPSS_VHD_CTI_THD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cover_swing           : 10  ; // [9..0] 
        unsigned int    cunder_swing          : 10  ; // [19..10] 
        unsigned int    ccoring_thd           : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_CTI_THD;

// Define the union U_VPSS_STR_HSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 24  ; // [23..0] 
        unsigned int    hfir_order            : 1   ; // [24] 
        unsigned int    hchfir_en             : 1   ; // [25] 
        unsigned int    hlfir_en              : 1   ; // [26] 
        unsigned int    Reserved_54           : 1   ; // [27] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hchmsc_en             : 1   ; // [30] 
        unsigned int    hlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_HSP;

// Define the union U_VPSS_STR_HLOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_loffset           : 28  ; // [27..0] 
        unsigned int    Reserved_55           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_HLOFFSET;

// Define the union U_VPSS_STR_HCOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 28  ; // [27..0] 
        unsigned int    Reserved_56           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_HCOFFSET;

// Define the union U_VPSS_STR_VSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_59           : 19  ; // [18..0] 
        unsigned int    zme_in_fmt            : 2   ; // [20..19] 
        unsigned int    zme_out_fmt           : 2   ; // [22..21] 
        unsigned int    vchfir_en             : 1   ; // [23] 
        unsigned int    vlfir_en              : 1   ; // [24] 
        unsigned int    Reserved_58           : 1   ; // [25] 
        unsigned int    vsc_chroma_tap        : 1   ; // [26] 
        unsigned int    Reserved_57           : 1   ; // [27] 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vchmsc_en             : 1   ; // [30] 
        unsigned int    vlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_VSP;

// Define the union U_VPSS_STR_VSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_60           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_VSR;

// Define the union U_VPSS_STR_VOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vchroma_offset        : 16  ; // [15..0] 
        unsigned int    vluma_offset          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_VOFFSET;

// Define the union U_VPSS_STR_ZMEORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_61           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_ZMEORESO;

// Define the union U_VPSS_STR_ZMEIRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_62           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_ZMEIRESO;

// Define the union U_VPSS_STR_LTI_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef4          : 8   ; // [7..0] 
        unsigned int    lmixing_ratio         : 8   ; // [15..8] 
        unsigned int    lgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_63           : 3   ; // [30..28] 
        unsigned int    lti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_LTI_CTRL;

// Define the union U_VPSS_STR_LHPASS_COEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef0          : 8   ; // [7..0] 
        unsigned int    lhpass_coef1          : 8   ; // [15..8] 
        unsigned int    lhpass_coef2          : 8   ; // [23..16] 
        unsigned int    lhpass_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_LHPASS_COEF;

// Define the union U_VPSS_STR_LTI_THD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lover_swing           : 10  ; // [9..0] 
        unsigned int    lunder_swing          : 10  ; // [19..10] 
        unsigned int    lcoring_thd           : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_LTI_THD;

// Define the union U_VPSS_STR_LHFREQ_THD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhfreq_thd0           : 16  ; // [15..0] 
        unsigned int    lhfreq_thd1           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_LHFREQ_THD;

// Define the union U_VPSS_STR_LGAIN_COEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lgain_coef0           : 8   ; // [7..0] 
        unsigned int    lgain_coef1           : 8   ; // [15..8] 
        unsigned int    lgain_coef2           : 8   ; // [23..16] 
        unsigned int    Reserved_64           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_LGAIN_COEF;

// Define the union U_VPSS_STR_CTI_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_66           : 8   ; // [7..0] 
        unsigned int    cmixing_ratio         : 8   ; // [15..8] 
        unsigned int    cgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_65           : 3   ; // [30..28] 
        unsigned int    cti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_CTI_CTRL;

// Define the union U_VPSS_STR_CHPASS_COEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    chpass_coef0          : 8   ; // [7..0] 
        unsigned int    chpass_coef1          : 8   ; // [15..8] 
        unsigned int    chpass_coef2          : 8   ; // [23..16] 
        unsigned int    Reserved_67           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_CHPASS_COEF;

// Define the union U_VPSS_STR_CTI_THD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cover_swing           : 10  ; // [9..0] 
        unsigned int    cunder_swing          : 10  ; // [19..10] 
        unsigned int    ccoring_thd           : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_CTI_THD;

// Define the union U_VPSS_DNR_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dr_en                 : 1   ; // [0] 
        unsigned int    db_en                 : 1   ; // [1] 
        unsigned int    Reserved_68           : 30  ; // [31..2] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DNR_CTRL;

// Define the union U_VPSS_DR_CFG0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_71           : 16  ; // [15..0] 
        unsigned int    drthrmaxsimilarpixdiff  : 5   ; // [20..16] 
        unsigned int    Reserved_70           : 3   ; // [23..21] 
        unsigned int    drthrflat3x3zone      : 5   ; // [28..24] 
        unsigned int    Reserved_69           : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DR_CFG0;

// Define the union U_VPSS_DR_CFG1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dralphascale          : 5   ; // [4..0] 
        unsigned int    Reserved_73           : 11  ; // [15..5] 
        unsigned int    drbetascale           : 5   ; // [20..16] 
        unsigned int    Reserved_72           : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DR_CFG1;

// Define the union U_VPSS_DB_CFG0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dbenhor               : 1   ; // [0] 
        unsigned int    dbenvert              : 1   ; // [1] 
        unsigned int    dbuseweakflt          : 1   ; // [2] 
        unsigned int    dbvertasprog          : 1   ; // [3] 
        unsigned int    Reserved_75           : 4   ; // [7..4] 
        unsigned int    picestqp              : 8   ; // [15..8] 
        unsigned int    thrdbedgethr          : 8   ; // [23..16] 
        unsigned int    Reserved_74           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DB_CFG0;

// Define the union U_VPSS_DB_CFG1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dbthrleastblkdiffhor  : 8   ; // [7..0] 
        unsigned int    dbthrmaxdiffhor       : 8   ; // [15..8] 
        unsigned int    dbthrleastblkdiffvert  : 8   ; // [23..16] 
        unsigned int    dbthrmaxdiffvert      : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DB_CFG1;

// Define the union U_VPSS_DB_CFG2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    detailimgqpthr        : 8   ; // [7..0] 
        unsigned int    thrdblargesmooth      : 8   ; // [15..8] 
        unsigned int    dbalphascale          : 8   ; // [23..16] 
        unsigned int    dbbetascale           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DB_CFG2;

// Define the union U_VPSS_DNR_INF_STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dnr_yinf_stride       : 16  ; // [15..0] 
        unsigned int    dnr_cinf_stride       : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DNR_INF_STRIDE;

// Define the union U_VPSS_VC1_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vc1_profile           : 2   ; // [1..0] 
        unsigned int    vc1_rangedfrm         : 1   ; // [2] 
        unsigned int    vc1_mapyflg           : 1   ; // [3] 
        unsigned int    vc1_mapcflg           : 1   ; // [4] 
        unsigned int    vc1_bmapyflg          : 1   ; // [5] 
        unsigned int    vc1_bmapcflg          : 1   ; // [6] 
        unsigned int    Reserved_81           : 1   ; // [7] 
        unsigned int    vc1_mapy              : 3   ; // [10..8] 
        unsigned int    Reserved_80           : 1   ; // [11] 
        unsigned int    vc1_mapc              : 3   ; // [14..12] 
        unsigned int    Reserved_79           : 1   ; // [15] 
        unsigned int    vc1_bmapy             : 3   ; // [18..16] 
        unsigned int    Reserved_78           : 1   ; // [19] 
        unsigned int    vc1_bmapc             : 3   ; // [22..20] 
        unsigned int    Reserved_77           : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VC1_CTRL;

// Define the union U_VPSS_VSDLBA_DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_83           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDLBA_DFPOS;

// Define the union U_VPSS_VSDLBA_DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_85           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDLBA_DLPOS;

// Define the union U_VPSS_VSDLBA_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_86           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDLBA_VFPOS;

// Define the union U_VPSS_VSDLBA_VLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_87           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDLBA_VLPOS;

// Define the union U_VPSS_VSDLBA_BK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 8   ; // [7..0] 
        unsigned int    vbk_cb                : 8   ; // [15..8] 
        unsigned int    vbk_y                 : 8   ; // [23..16] 
        unsigned int    vbk_alpha             : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDLBA_BK;

// Define the union U_VPSS_VHDLBA_DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_88           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDLBA_DFPOS;

// Define the union U_VPSS_VHDLBA_DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_90           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDLBA_DLPOS;

// Define the union U_VPSS_VHDLBA_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_91           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDLBA_VFPOS;

// Define the union U_VPSS_VHDLBA_VLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_92           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDLBA_VLPOS;

// Define the union U_VPSS_VHDLBA_BK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 8   ; // [7..0] 
        unsigned int    vbk_cb                : 8   ; // [15..8] 
        unsigned int    vbk_y                 : 8   ; // [23..16] 
        unsigned int    vbk_alpha             : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDLBA_BK;

// Define the union U_VPSS_STRLBA_DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_93           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRLBA_DFPOS;

// Define the union U_VPSS_STRLBA_DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_95           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRLBA_DLPOS;

// Define the union U_VPSS_STRLBA_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_96           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRLBA_VFPOS;

// Define the union U_VPSS_STRLBA_VLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_97           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRLBA_VLPOS;

// Define the union U_VPSS_STRLBA_BK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 8   ; // [7..0] 
        unsigned int    vbk_cb                : 8   ; // [15..8] 
        unsigned int    vbk_y                 : 8   ; // [23..16] 
        unsigned int    vbk_alpha             : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRLBA_BK;

// Define the union U_STR_DET_VIDCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_98           : 30  ; // [29..0] 
        unsigned int    vid_mode              : 1   ; // [30] 
        unsigned int    vid_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDCTRL;

// Define the union U_STR_DET_VIDBLKPOS0_1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk0_xlpos            : 8   ; // [7..0] 
        unsigned int    blk0_ylpos            : 8   ; // [15..8] 
        unsigned int    blk1_xlpos            : 8   ; // [23..16] 
        unsigned int    blk1_ylpos            : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLKPOS0_1;

// Define the union U_STR_DET_VIDBLKPOS2_3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk2_xlpos            : 8   ; // [7..0] 
        unsigned int    blk2_ylpos            : 8   ; // [15..8] 
        unsigned int    blk3_xlpos            : 8   ; // [23..16] 
        unsigned int    blk3_ylpos            : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLKPOS2_3;

// Define the union U_STR_DET_VIDBLKPOS4_5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk4_xlpos            : 8   ; // [7..0] 
        unsigned int    blk4_ylpos            : 8   ; // [15..8] 
        unsigned int    blk5_xlpos            : 8   ; // [23..16] 
        unsigned int    blk5_ylpos            : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLKPOS4_5;

// Define the union U_VPSS_START
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    start                 : 1   ; // [0] 
        unsigned int    step                  : 1   ; // [1] 
        unsigned int    Reserved_101          : 30  ; // [31..2] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_START;

// Define the union U_VPSS_INTSTATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    eof_state             : 1   ; // [0] 
        unsigned int    timeout_state         : 1   ; // [1] 
        unsigned int    bus_err               : 1   ; // [2] 
        unsigned int    eof_end_state         : 1   ; // [3] 
        unsigned int    Reserved_102          : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_INTSTATE;

// Define the union U_VPSS_INTCLR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    eof_clr               : 1   ; // [0] 
        unsigned int    timeout_clr           : 1   ; // [1] 
        unsigned int    bus_err_clr           : 1   ; // [2] 
        unsigned int    eof_end_clr           : 1   ; // [3] 
        unsigned int    Reserved_103          : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_INTCLR;

// Define the union U_VPSS_RAWINT
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    raw_eof               : 1   ; // [0] 
        unsigned int    raw_timeout           : 1   ; // [1] 
        unsigned int    raw_bus_err           : 1   ; // [2] 
        unsigned int    raw_eof_end           : 1   ; // [3] 
        unsigned int    Reserved_104          : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_RAWINT;

// Define the union U_VPSS_MISCELLANEOUS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    routstanding          : 4   ; // [3..0] 
        unsigned int    woutstanding          : 4   ; // [7..4] 
        unsigned int    init_timer            : 16  ; // [23..8] 
        unsigned int    ck_gt_en              : 1   ; // [24] 
        unsigned int    Reserved_105          : 7   ; // [31..25] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_MISCELLANEOUS;

// Define the union U_VPSS_MACCFG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mac_ch_prio           : 20  ; // [19..0] 
        unsigned int    Reserved_106          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_MACCFG;

// Define the union U_VPSS_DIECTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_108          : 16  ; // [15..0] 
        unsigned int    stinfo_stop           : 1   ; // [16] 
        unsigned int    die_rst               : 1   ; // [17] 
        unsigned int    Reserved_107          : 6   ; // [23..18] 
        unsigned int    die_chmmode           : 2   ; // [25..24] 
        unsigned int    die_lmmode            : 2   ; // [27..26] 
        unsigned int    die_out_sel_c         : 1   ; // [28] 
        unsigned int    die_out_sel_l         : 1   ; // [29] 
        unsigned int    die_chroma_en         : 1   ; // [30] 
        unsigned int    die_luma_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIECTRL;

// Define the union U_VPSS_DIELMA2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_112          : 2   ; // [1..0] 
        unsigned int    luma_scesdf_max       : 1   ; // [2] 
        unsigned int    Reserved_111          : 6   ; // [8..3] 
        unsigned int    luma_mf_max           : 1   ; // [9] 
        unsigned int    chroma_mf_max         : 1   ; // [10] 
        unsigned int    die_sad_thd           : 6   ; // [16..11] 
        unsigned int    Reserved_110          : 10  ; // [26..17] 
        unsigned int    die_st_mode           : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIELMA2;

// Define the union U_VPSS_DIEINTEN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_114          : 8   ; // [7..0] 
        unsigned int    dir_inten_ver         : 4   ; // [11..8] 
        unsigned int    Reserved_113          : 4   ; // [15..12] 
        unsigned int    ver_min_inten         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEINTEN;

// Define the union U_VPSS_DIESCALE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    range_scale           : 8   ; // [7..0] 
        unsigned int    Reserved_115          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESCALE;

// Define the union U_VPSS_DIECHECK1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ck_max_range          : 8   ; // [7..0] 
        unsigned int    ck_range_gain         : 4   ; // [11..8] 
        unsigned int    Reserved_117          : 4   ; // [15..12] 
        unsigned int    ck_gain               : 4   ; // [19..16] 
        unsigned int    Reserved_116          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIECHECK1;

// Define the union U_VPSS_DIECHECK2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ck_max_range          : 8   ; // [7..0] 
        unsigned int    ck_range_gain         : 4   ; // [11..8] 
        unsigned int    Reserved_119          : 4   ; // [15..12] 
        unsigned int    ck_gain               : 4   ; // [19..16] 
        unsigned int    Reserved_118          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIECHECK2;

// Define the union U_VPSS_DIEDIR0_3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dir0_mult             : 6   ; // [5..0] 
        unsigned int    Reserved_123          : 2   ; // [7..6] 
        unsigned int    dir1_mult             : 6   ; // [13..8] 
        unsigned int    Reserved_122          : 2   ; // [15..14] 
        unsigned int    dir2_mult             : 6   ; // [21..16] 
        unsigned int    Reserved_121          : 2   ; // [23..22] 
        unsigned int    dir3_mult             : 6   ; // [29..24] 
        unsigned int    Reserved_120          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEDIR0_3;

// Define the union U_VPSS_DIEDIR4_7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dir4_mult             : 6   ; // [5..0] 
        unsigned int    Reserved_127          : 2   ; // [7..6] 
        unsigned int    dir5_mult             : 6   ; // [13..8] 
        unsigned int    Reserved_126          : 2   ; // [15..14] 
        unsigned int    dir6_mult             : 6   ; // [21..16] 
        unsigned int    Reserved_125          : 2   ; // [23..22] 
        unsigned int    dir7_mult             : 6   ; // [29..24] 
        unsigned int    Reserved_124          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEDIR4_7;

// Define the union U_VPSS_DIEDIR8_11
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dir8_mult             : 6   ; // [5..0] 
        unsigned int    Reserved_131          : 2   ; // [7..6] 
        unsigned int    dir9_mult             : 6   ; // [13..8] 
        unsigned int    Reserved_130          : 2   ; // [15..14] 
        unsigned int    dir10_mult            : 6   ; // [21..16] 
        unsigned int    Reserved_129          : 2   ; // [23..22] 
        unsigned int    dir11_mult            : 6   ; // [29..24] 
        unsigned int    Reserved_128          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEDIR8_11;

// Define the union U_VPSS_DIEDIR12_14
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dir12_mult            : 6   ; // [5..0] 
        unsigned int    Reserved_134          : 2   ; // [7..6] 
        unsigned int    dir13_mult            : 6   ; // [13..8] 
        unsigned int    Reserved_133          : 2   ; // [15..14] 
        unsigned int    dir14_mult            : 6   ; // [21..16] 
        unsigned int    Reserved_132          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEDIR12_14;

// Define the union U_VPSS_DIESTA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    die_ref_field         : 1   ; // [0] 
        unsigned int    Reserved_135          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESTA;

// Define the union U_VPSS_CCRSCLR0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    no_ccr_detect_thd     : 10  ; // [9..0] 
        unsigned int    no_ccr_detect_max     : 10  ; // [19..10] 
        unsigned int    chroma_ma_offset      : 10  ; // [29..20] 
        unsigned int    chroma_ccr_en         : 1   ; // [30] 
        unsigned int    Reserved_136          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_CCRSCLR0;

// Define the union U_VPSS_CCRSCLR1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    max_xchroma           : 10  ; // [9..0] 
        unsigned int    no_ccr_detect_blend   : 4   ; // [13..10] 
        unsigned int    similar_thd           : 9   ; // [22..14] 
        unsigned int    similar_max           : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_CCRSCLR1;

// Define the union U_VPSS_DIEINTPSCL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    intp_scale_ratio_1    : 4   ; // [3..0] 
        unsigned int    intp_scale_ratio_2    : 4   ; // [7..4] 
        unsigned int    intp_scale_ratio_3    : 4   ; // [11..8] 
        unsigned int    intp_scale_ratio_4    : 4   ; // [15..12] 
        unsigned int    intp_scale_ratio_5    : 4   ; // [19..16] 
        unsigned int    intp_scale_ratio_6    : 4   ; // [23..20] 
        unsigned int    intp_scale_ratio_7    : 4   ; // [27..24] 
        unsigned int    intp_scale_ratio_8    : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEINTPSCL0;

// Define the union U_VPSS_DIEINTPSCL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    intp_scale_ratio_9    : 4   ; // [3..0] 
        unsigned int    intp_scale_ratio_10   : 4   ; // [7..4] 
        unsigned int    intp_scale_ratio_11   : 4   ; // [11..8] 
        unsigned int    intp_scale_ratio_12   : 4   ; // [15..12] 
        unsigned int    intp_scale_ratio_13   : 4   ; // [19..16] 
        unsigned int    intp_scale_ratio_14   : 4   ; // [23..20] 
        unsigned int    intp_scale_ratio_15   : 4   ; // [27..24] 
        unsigned int    Reserved_137          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEINTPSCL1;

// Define the union U_VPSS_DIEDIRTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    bc_gain               : 7   ; // [6..0] 
        unsigned int    Reserved_139          : 1   ; // [7] 
        unsigned int    dir_thd               : 4   ; // [11..8] 
        unsigned int    Reserved_138          : 4   ; // [15..12] 
        unsigned int    strength_thd          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEDIRTHD;

// Define the union U_VPSS_DIEJITMTN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    jitter_filter_0       : 4   ; // [3..0] 
        unsigned int    jitter_filter_1       : 4   ; // [7..4] 
        unsigned int    jitter_filter_2       : 4   ; // [11..8] 
        unsigned int    jitter_gain           : 4   ; // [15..12] 
        unsigned int    jitter_coring         : 8   ; // [23..16] 
        unsigned int    jitter_factor         : 2   ; // [25..24] 
        unsigned int    Reserved_141          : 2   ; // [27..26] 
        unsigned int    jitter_mode           : 1   ; // [28] 
        unsigned int    Reserved_140          : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEJITMTN;

// Define the union U_VPSS_DIEFLDMTN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fld_motion_thd_low    : 8   ; // [7..0] 
        unsigned int    fld_motion_thd_high   : 8   ; // [15..8] 
        unsigned int    fld_motion_curve_slope  : 2   ; // [17..16] 
        unsigned int    Reserved_142          : 2   ; // [19..18] 
        unsigned int    fld_motion_gain       : 4   ; // [23..20] 
        unsigned int    fld_motion_coring     : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEFLDMTN;

// Define the union U_VPSS_DIEMTNCRVTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lum_avg_thd_0         : 8   ; // [7..0] 
        unsigned int    lum_avg_thd_1         : 8   ; // [15..8] 
        unsigned int    lum_avg_thd_2         : 8   ; // [23..16] 
        unsigned int    lum_avg_thd_3         : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNCRVTHD;

// Define the union U_VPSS_DIEMTNCRVSLP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_curve_slope_0  : 5   ; // [4..0] 
        unsigned int    Reserved_146          : 3   ; // [7..5] 
        unsigned int    motion_curve_slope_1  : 5   ; // [12..8] 
        unsigned int    Reserved_145          : 3   ; // [15..13] 
        unsigned int    motion_curve_slope_2  : 5   ; // [20..16] 
        unsigned int    Reserved_144          : 3   ; // [23..21] 
        unsigned int    motion_curve_slope_3  : 5   ; // [28..24] 
        unsigned int    Reserved_143          : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNCRVSLP;

// Define the union U_VPSS_DIEMTNCRVRAT0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_curve_ratio_0  : 9   ; // [8..0] 
        unsigned int    Reserved_148          : 3   ; // [11..9] 
        unsigned int    start_motion_ratio    : 4   ; // [15..12] 
        unsigned int    motion_curve_ratio_1  : 9   ; // [24..16] 
        unsigned int    Reserved_147          : 6   ; // [30..25] 
        unsigned int    motion_ratio_en       : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNCRVRAT0;

// Define the union U_VPSS_DIEMTNCRVRAT1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_curve_ratio_2  : 9   ; // [8..0] 
        unsigned int    Reserved_150          : 3   ; // [11..9] 
        unsigned int    min_motion_ratio      : 4   ; // [15..12] 
        unsigned int    motion_curve_ratio_3  : 9   ; // [24..16] 
        unsigned int    Reserved_149          : 3   ; // [27..25] 
        unsigned int    max_motion_ratio      : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNCRVRAT1;

// Define the union U_VPSS_DIEMTNDIFFTHD0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_diff_thd_0     : 8   ; // [7..0] 
        unsigned int    motion_diff_thd_1     : 8   ; // [15..8] 
        unsigned int    motion_diff_thd_2     : 8   ; // [23..16] 
        unsigned int    motion_diff_thd_3     : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNDIFFTHD0;

// Define the union U_VPSS_DIEMTNDIFFTHD1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_diff_thd_4     : 8   ; // [7..0] 
        unsigned int    motion_diff_thd_5     : 8   ; // [15..8] 
        unsigned int    motion_diff_thd_6     : 8   ; // [23..16] 
        unsigned int    motion_diff_thd_7     : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNDIFFTHD1;

// Define the union U_VPSS_DIEMTNIIRSLP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_iir_curve_slope_0  : 5   ; // [4..0] 
        unsigned int    Reserved_154          : 3   ; // [7..5] 
        unsigned int    motion_iir_curve_slope_1  : 5   ; // [12..8] 
        unsigned int    Reserved_153          : 3   ; // [15..13] 
        unsigned int    motion_iir_curve_slope_2  : 5   ; // [20..16] 
        unsigned int    Reserved_152          : 3   ; // [23..21] 
        unsigned int    motion_iir_curve_slope_3  : 5   ; // [28..24] 
        unsigned int    Reserved_151          : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNIIRSLP0;

// Define the union U_VPSS_DIEMTNIIRSLP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_iir_curve_slope_4  : 5   ; // [4..0] 
        unsigned int    Reserved_158          : 3   ; // [7..5] 
        unsigned int    motion_iir_curve_slope_5  : 5   ; // [12..8] 
        unsigned int    Reserved_157          : 3   ; // [15..13] 
        unsigned int    motion_iir_curve_slope_6  : 5   ; // [20..16] 
        unsigned int    Reserved_156          : 3   ; // [23..21] 
        unsigned int    motion_iir_curve_slope_7  : 5   ; // [28..24] 
        unsigned int    Reserved_155          : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNIIRSLP1;

// Define the union U_VPSS_DIEMTNIIRRAT0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_iir_curve_ratio_0  : 9   ; // [8..0] 
        unsigned int    Reserved_160          : 3   ; // [11..9] 
        unsigned int    start_motion_iir_ratio  : 4   ; // [15..12] 
        unsigned int    motion_iir_curve_ratio_1  : 9   ; // [24..16] 
        unsigned int    Reserved_159          : 6   ; // [30..25] 
        unsigned int    motion_iir_en         : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNIIRRAT0;

// Define the union U_VPSS_DIEMTNIIRRAT1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_iir_curve_ratio_2  : 9   ; // [8..0] 
        unsigned int    Reserved_162          : 3   ; // [11..9] 
        unsigned int    min_motion_iir_ratio  : 4   ; // [15..12] 
        unsigned int    motion_iir_curve_ratio_3  : 9   ; // [24..16] 
        unsigned int    Reserved_161          : 3   ; // [27..25] 
        unsigned int    max_motion_iir_ratio  : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNIIRRAT1;

// Define the union U_VPSS_DIEMTNIIRRAT2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_iir_curve_ratio_4  : 9   ; // [8..0] 
        unsigned int    Reserved_164          : 7   ; // [15..9] 
        unsigned int    motion_iir_curve_ratio_5  : 9   ; // [24..16] 
        unsigned int    Reserved_163          : 7   ; // [31..25] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNIIRRAT2;

// Define the union U_VPSS_DIEMTNIIRRAT3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    motion_iir_curve_ratio_6  : 9   ; // [8..0] 
        unsigned int    Reserved_166          : 7   ; // [15..9] 
        unsigned int    motion_iir_curve_ratio_7  : 9   ; // [24..16] 
        unsigned int    Reserved_165          : 7   ; // [31..25] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMTNIIRRAT3;

// Define the union U_VPSS_DIERECMODE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    rec_mode_motion_thd   : 8   ; // [7..0] 
        unsigned int    rec_mode_fld_motion_coring  : 8   ; // [15..8] 
        unsigned int    rec_mode_fld_motion_gain  : 4   ; // [19..16] 
        unsigned int    rec_mode_scale        : 5   ; // [24..20] 
        unsigned int    Reserved_168          : 3   ; // [27..25] 
        unsigned int    rec_mode_mix_mode     : 1   ; // [28] 
        unsigned int    rec_mode_en           : 1   ; // [29] 
        unsigned int    rec_mode_write_mode   : 1   ; // [30] 
        unsigned int    Reserved_167          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIERECMODE;

// Define the union U_VPSS_DIEHISMODE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    rec_mode_fld_motion_step_0  : 3   ; // [2..0] 
        unsigned int    Reserved_173          : 1   ; // [3] 
        unsigned int    rec_mode_fld_motion_step_1  : 3   ; // [6..4] 
        unsigned int    Reserved_172          : 1   ; // [7] 
        unsigned int    rec_mode_frm_motion_step_0  : 2   ; // [9..8] 
        unsigned int    Reserved_171          : 2   ; // [11..10] 
        unsigned int    rec_mode_frm_motion_step_1  : 2   ; // [13..12] 
        unsigned int    Reserved_170          : 2   ; // [15..14] 
        unsigned int    ppre_info_en          : 1   ; // [16] 
        unsigned int    pre_info_en           : 1   ; // [17] 
        unsigned int    his_motion_en         : 1   ; // [18] 
        unsigned int    his_motion_using_mode  : 1   ; // [19] 
        unsigned int    his_motion_write_mode  : 1   ; // [20] 
        unsigned int    Reserved_169          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEHISMODE;

// Define the union U_VPSS_DIEMORFLT
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mor_flt_thd           : 8   ; // [7..0] 
        unsigned int    mor_flt_size          : 2   ; // [9..8] 
        unsigned int    Reserved_175          : 10  ; // [19..10] 
        unsigned int    adjust_gain           : 4   ; // [23..20] 
        unsigned int    mor_flt_en            : 1   ; // [24] 
        unsigned int    deflicker_en          : 1   ; // [25] 
        unsigned int    med_blend_en          : 1   ; // [26] 
        unsigned int    Reserved_174          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIEMORFLT;

// Define the union U_VPSS_DIECOMBCHK0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    comb_chk_min_hthd     : 8   ; // [7..0] 
        unsigned int    comb_chk_min_vthd     : 8   ; // [15..8] 
        unsigned int    comb_chk_lower_limit  : 8   ; // [23..16] 
        unsigned int    comb_chk_upper_limit  : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIECOMBCHK0;

// Define the union U_VPSS_DIECOMBCHK1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    comb_chk_edge_thd     : 7   ; // [6..0] 
        unsigned int    Reserved_178          : 1   ; // [7] 
        unsigned int    comb_chk_md_thd       : 5   ; // [12..8] 
        unsigned int    Reserved_177          : 3   ; // [15..13] 
        unsigned int    comb_chk_en           : 1   ; // [16] 
        unsigned int    Reserved_176          : 15  ; // [31..17] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIECOMBCHK1;

// Define the union U_VPSS_DIESNRLPF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    snr_lpf_coe0          : 5   ; // [4..0] 
        unsigned int    Reserved_181          : 3   ; // [7..5] 
        unsigned int    snr_lpf_coe1          : 5   ; // [12..8] 
        unsigned int    Reserved_180          : 3   ; // [15..13] 
        unsigned int    snr_lpf_coe2          : 5   ; // [20..16] 
        unsigned int    snr_lpf_coe3          : 5   ; // [25..21] 
        unsigned int    snr_lpf_coe4          : 5   ; // [30..26] 
        unsigned int    Reserved_179          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESNRLPF;

// Define the union U_VPSS_DIESNRYMTNCOFF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    snr_yori_motion       : 4   ; // [3..0] 
        unsigned int    snr_ymin_motion       : 4   ; // [7..4] 
        unsigned int    snr_ymax_motion       : 4   ; // [11..8] 
        unsigned int    snr_ymotion0          : 4   ; // [15..12] 
        unsigned int    snr_ymotion1          : 4   ; // [19..16] 
        unsigned int    snr_ymotion2          : 4   ; // [23..20] 
        unsigned int    snr_ymotion3          : 4   ; // [27..24] 
        unsigned int    Reserved_183          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESNRYMTNCOFF;

// Define the union U_VPSS_DIESNRYDIFFK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    snr_ypix_diff_k0      : 8   ; // [7..0] 
        unsigned int    snr_ypix_diff_k1      : 8   ; // [15..8] 
        unsigned int    snr_ypix_diff_k2      : 8   ; // [23..16] 
        unsigned int    snr_ypix_diff_k3      : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESNRYDIFFK;

// Define the union U_VPSS_DIESNRYDIFFTH0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    snr_ypix_diff_th0     : 10  ; // [9..0] 
        unsigned int    Reserved_185          : 6   ; // [15..10] 
        unsigned int    snr_ypix_diff_th1     : 10  ; // [25..16] 
        unsigned int    Reserved_184          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESNRYDIFFTH0;

// Define the union U_VPSS_DIESNRYDIFFTH1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    snr_ypix_diff_th2     : 10  ; // [9..0] 
        unsigned int    Reserved_187          : 6   ; // [15..10] 
        unsigned int    snr_ypix_diff_th3     : 10  ; // [25..16] 
        unsigned int    Reserved_186          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESNRYDIFFTH1;

// Define the union U_VPSS_DIESNRCMTNCOFF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    snr_cori_motion       : 4   ; // [3..0] 
        unsigned int    snr_cmin_motion       : 4   ; // [7..4] 
        unsigned int    snr_cmax_motion       : 4   ; // [11..8] 
        unsigned int    snr_cmotion0          : 4   ; // [15..12] 
        unsigned int    snr_cmotion1          : 4   ; // [19..16] 
        unsigned int    snr_cmotion2          : 4   ; // [23..20] 
        unsigned int    snr_cmotion3          : 4   ; // [27..24] 
        unsigned int    Reserved_188          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESNRCMTNCOFF;

// Define the union U_VPSS_DIESNRCDIFFK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    snr_cpix_diff_k0      : 8   ; // [7..0] 
        unsigned int    snr_cpix_diff_k1      : 8   ; // [15..8] 
        unsigned int    snr_cpix_diff_k2      : 8   ; // [23..16] 
        unsigned int    snr_cpix_diff_k3      : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESNRCDIFFK;

// Define the union U_VPSS_DIESNRCDIFFTH0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    snr_cpix_diff_th0     : 10  ; // [9..0] 
        unsigned int    Reserved_190          : 6   ; // [15..10] 
        unsigned int    snr_cpix_diff_th1     : 10  ; // [25..16] 
        unsigned int    Reserved_189          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESNRCDIFFTH0;

// Define the union U_VPSS_DIESNRCDIFFTH1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    snr_cpix_diff_th2     : 10  ; // [9..0] 
        unsigned int    Reserved_192          : 6   ; // [15..10] 
        unsigned int    snr_cpix_diff_th3     : 10  ; // [25..16] 
        unsigned int    Reserved_191          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIESNRCDIFFTH1;

// Define the union U_VPSS_PDPHISTTHD1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hist_thd0             : 8   ; // [7..0] 
        unsigned int    hist_thd1             : 8   ; // [15..8] 
        unsigned int    hist_thd2             : 8   ; // [23..16] 
        unsigned int    hist_thd3             : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDPHISTTHD1;

// Define the union U_VPSS_PDPCCMOV
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mov_coring_blk        : 8   ; // [7..0] 
        unsigned int    mov_coring_tkr        : 8   ; // [15..8] 
        unsigned int    mov_coring_norm       : 8   ; // [23..16] 
        unsigned int    Reserved_194          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDPCCMOV;

// Define the union U_VPSS_PDSIGMA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vhdpdsigma            : 31  ; // [30..0] 
        unsigned int    flag_mon              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDSIGMA;

// Define the union U_VPSS_PDCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    bitsmov2r             : 3   ; // [2..0] 
        unsigned int    Reserved_196          : 16  ; // [18..3] 
        unsigned int    lasi_mode             : 1   ; // [19] 
        unsigned int    edge_smooth_ratio     : 8   ; // [27..20] 
        unsigned int    Reserved_195          : 1   ; // [28] 
        unsigned int    dir_mch_c             : 1   ; // [29] 
        unsigned int    edge_smooth_en        : 1   ; // [30] 
        unsigned int    dir_mch_l             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDCTRL;

// Define the union U_VPSS_PDBLKPOS0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_x                 : 12  ; // [11..0] 
        unsigned int    blk_y                 : 12  ; // [23..12] 
        unsigned int    Reserved_197          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDBLKPOS0;

// Define the union U_VPSS_PDBLKPOS1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_x                 : 12  ; // [11..0] 
        unsigned int    blk_y                 : 12  ; // [23..12] 
        unsigned int    Reserved_198          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDBLKPOS1;

// Define the union U_VPSS_PDBLKTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    stillblk_thd          : 8   ; // [7..0] 
        unsigned int    diff_movblk_thd       : 8   ; // [15..8] 
        unsigned int    Reserved_199          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDBLKTHD;

// Define the union U_VPSS_PDHISTTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mon_tkr_thr           : 8   ; // [7..0] 
        unsigned int    mon_start_idx         : 4   ; // [11..8] 
        unsigned int    Reserved_200          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDHISTTHD;

// Define the union U_VPSS_PDUMTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    um_thd0               : 8   ; // [7..0] 
        unsigned int    um_thd1               : 8   ; // [15..8] 
        unsigned int    um_thd2               : 8   ; // [23..16] 
        unsigned int    Reserved_201          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDUMTHD;

// Define the union U_VPSS_PDPCCCORING
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coring_tkr            : 8   ; // [7..0] 
        unsigned int    coring_norm           : 8   ; // [15..8] 
        unsigned int    coring_blk            : 8   ; // [23..16] 
        unsigned int    Reserved_202          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDPCCCORING;

// Define the union U_VPSS_PDPCCHTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pcc_hthd              : 8   ; // [7..0] 
        unsigned int    Reserved_203          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDPCCHTHD;

// Define the union U_VPSS_PDPCCVTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pcc_vthd0             : 8   ; // [7..0] 
        unsigned int    pcc_vthd1             : 8   ; // [15..8] 
        unsigned int    pcc_vthd2             : 8   ; // [23..16] 
        unsigned int    pcc_vthd3             : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDPCCVTHD;

// Define the union U_VPSS_PDITDIFFVTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    itdiff_vthd0          : 8   ; // [7..0] 
        unsigned int    itdiff_vthd1          : 8   ; // [15..8] 
        unsigned int    itdiff_vthd2          : 8   ; // [23..16] 
        unsigned int    itdiff_vthd3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDITDIFFVTHD;

// Define the union U_VPSS_PDLASITHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lasi_thd              : 8   ; // [7..0] 
        unsigned int    edge_thd              : 8   ; // [15..8] 
        unsigned int    lasi_mov_thr          : 8   ; // [23..16] 
        unsigned int    Reserved_204          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDLASITHD;

// Define the union U_VPSS_ACCTHD1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    thd_low               : 10  ; // [9..0] 
        unsigned int    thd_high              : 10  ; // [19..10] 
        unsigned int    thd_med_low           : 10  ; // [29..20] 
        unsigned int    acc_mode              : 1   ; // [30] 
        unsigned int    acc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACCTHD1;

// Define the union U_VPSS_ACCTHD2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    thd_med_high          : 10  ; // [9..0] 
        unsigned int    acc_multiple          : 8   ; // [17..10] 
        unsigned int    acc_rst               : 1   ; // [18] 
        unsigned int    Reserved_210          : 13  ; // [31..19] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACCTHD2;

// Define the union U_VPSS_ACCLOWN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_211          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACCLOWN;

// Define the union U_VPSS_ACCMEDN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_213          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACCMEDN;

// Define the union U_VPSS_ACCHIGHN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_215          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACCHIGHN;

// Define the union U_VPSS_ACCMLN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_217          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACCMLN;

// Define the union U_VPSS_ACCMHN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_219          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACCMHN;

// Define the union U_VPSS_ACC3LOW
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt3_low              : 21  ; // [20..0] 
        unsigned int    Reserved_221          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACC3LOW;

// Define the union U_VPSS_ACC3MED
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt3_med              : 21  ; // [20..0] 
        unsigned int    Reserved_223          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACC3MED;

// Define the union U_VPSS_ACC3HIGH
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt3_high             : 21  ; // [20..0] 
        unsigned int    Reserved_224          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACC3HIGH;

// Define the union U_VPSS_ACC8MLOW
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt8_med_low          : 21  ; // [20..0] 
        unsigned int    Reserved_225          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACC8MLOW;

// Define the union U_VPSS_ACC8MHIGH
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt8_med_high         : 21  ; // [20..0] 
        unsigned int    Reserved_226          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACC8MHIGH;

// Define the union U_VPSS_ACCTOTAL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acc_pix_total         : 21  ; // [20..0] 
        unsigned int    Reserved_227          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACCTOTAL;

// Define the union U_VPSS_ACM0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    acm0_en               : 1   ; // [28] 
        unsigned int    acm1_en               : 1   ; // [29] 
        unsigned int    acm2_en               : 1   ; // [30] 
        unsigned int    acm3_en               : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACM0;

// Define the union U_VPSS_ACM1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    acm_test_en           : 1   ; // [20] 
        unsigned int    Reserved_229          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACM1;

// Define the union U_VPSS_ACM2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    Reserved_230          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACM2;

// Define the union U_VPSS_ACM3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    Reserved_231          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACM3;

// Define the union U_VPSS_ACM4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    Reserved_232          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACM4;

// Define the union U_VPSS_ACM5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    Reserved_233          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACM5;

// Define the union U_VPSS_ACM6
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    Reserved_234          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACM6;

// Define the union U_VPSS_ACM7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    Reserved_235          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_ACM7;

// Define the union U_STR_DET_VIDBLK0TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK0TOL0;

// Define the union U_STR_DET_VIDBLK0TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK0TOL1;

// Define the union U_STR_DET_VIDBLK1TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK1TOL0;

// Define the union U_STR_DET_VIDBLK1TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK1TOL1;

// Define the union U_STR_DET_VIDBLK2TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK2TOL0;

// Define the union U_STR_DET_VIDBLK2TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK2TOL1;

// Define the union U_STR_DET_VIDBLK3TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK3TOL0;

// Define the union U_STR_DET_VIDBLK3TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK3TOL1;

// Define the union U_STR_DET_VIDBLK4TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK4TOL0;

// Define the union U_STR_DET_VIDBLK4TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK4TOL1;

// Define the union U_STR_DET_VIDBLK5TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK5TOL0;

// Define the union U_STR_DET_VIDBLK5TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_STR_DET_VIDBLK5TOL1;

//==============================================================================
// Define the global struct
typedef struct
{
    volatile U_VPSS_CTRL            VPSS_CTRL;
    volatile unsigned int           Reserved_5;
    volatile U_VPSS_IMGSIZE         VPSS_IMGSIZE;
    volatile unsigned int           Reserved_8[2];
    volatile U_VPSS_VSDSIZE         VPSS_VSDSIZE;
    volatile U_VPSS_VHDSIZE         VPSS_VHDSIZE;
    volatile U_VPSS_STRSIZE         VPSS_STRSIZE;
    volatile unsigned int           VPSS_CURYADDR;
    volatile unsigned int           VPSS_CURCADDR;
    volatile U_VPSS_CURSTRIDE       VPSS_CURSTRIDE;
    volatile unsigned int           Reserved_13;
    volatile unsigned int           VPSS_REFYADDR;
    volatile unsigned int           VPSS_REFCADDR;
    volatile U_VPSS_REFSTRIDE       VPSS_REFSTRIDE;
    volatile unsigned int           Reserved_14;
    volatile unsigned int           VPSS_NEXT1YADDR;
    volatile unsigned int           VPSS_NEXT1CADDR;
    volatile U_VPSS_NEXT1STRIDE     VPSS_NEXT1STRIDE;
    volatile unsigned int           Reserved_15;
    volatile unsigned int           VPSS_NEXT2YADDR;
    volatile unsigned int           VPSS_NEXT2CADDR;
    volatile U_VPSS_NEXT2STRIDE     VPSS_NEXT2STRIDE;
    volatile unsigned int           Reserved_16;
    volatile unsigned int           VPSS_NEXT3YADDR;
    volatile unsigned int           VPSS_NEXT3CADDR;
    volatile U_VPSS_NEXT3STRIDE     VPSS_NEXT3STRIDE;
    volatile unsigned int           Reserved_17[5];
    volatile unsigned int           VPSS_STRADDR;
    volatile unsigned int           VPSS_STWADDR;
    volatile U_VPSS_STSTRIDE        VPSS_STSTRIDE;
    volatile unsigned int           Reserved_19[9];
    volatile unsigned int           VPSS_VSDYADDR;
    volatile unsigned int           VPSS_VSDCADDR;
    volatile U_VPSS_VSDSTRIDE       VPSS_VSDSTRIDE;
    volatile unsigned int           Reserved_20;
    volatile unsigned int           VPSS_VHDYADDR;
    volatile unsigned int           VPSS_VHDCADDR;
    volatile U_VPSS_VHDSTRIDE       VPSS_VHDSTRIDE;
    volatile unsigned int           Reserved_21;
    volatile unsigned int           VPSS_STRYADDR;
    volatile unsigned int           VPSS_STRCADDR;
    volatile U_VPSS_STRSTRIDE       VPSS_STRSTRIDE;
    volatile unsigned int           Reserved_22[5];
    volatile unsigned int           VPSS_NODEID;
    volatile U_VPSS_AXIID           VPSS_AXIID;
    volatile U_VPSS_INTMASK         VPSS_INTMASK;
    volatile unsigned int           Reserved_26;
    volatile U_VPSS_VSD_HSP         VPSS_VSD_HSP;
    volatile U_VPSS_VSD_HLOFFSET    VPSS_VSD_HLOFFSET;
    volatile U_VPSS_VSD_HCOFFSET    VPSS_VSD_HCOFFSET;
    volatile U_VPSS_VSD_VSP         VPSS_VSD_VSP;
    volatile U_VPSS_VSD_VSR         VPSS_VSD_VSR;
    volatile U_VPSS_VSD_VOFFSET     VPSS_VSD_VOFFSET;
    volatile U_VPSS_VSD_ZMEORESO    VPSS_VSD_ZMEORESO;
    volatile U_VPSS_VSD_ZMEIRESO    VPSS_VSD_ZMEIRESO;
    volatile U_VPSS_VSD_LTI_CTRL    VPSS_VSD_LTI_CTRL;
    volatile U_VPSS_VSD_LHPASS_COEF   VPSS_VSD_LHPASS_COEF;
    volatile U_VPSS_VSD_LTI_THD     VPSS_VSD_LTI_THD;
    volatile U_VPSS_VSD_LHFREQ_THD   VPSS_VSD_LHFREQ_THD;
    volatile U_VPSS_VSD_LGAIN_COEF   VPSS_VSD_LGAIN_COEF;
    volatile U_VPSS_VSD_CTI_CTRL    VPSS_VSD_CTI_CTRL;
    volatile U_VPSS_VSD_CHPASS_COEF   VPSS_VSD_CHPASS_COEF;
    volatile U_VPSS_VSD_CTI_THD     VPSS_VSD_CTI_THD;
    volatile U_VPSS_VHD_HSP         VPSS_VHD_HSP;
    volatile U_VPSS_VHD_HLOFFSET    VPSS_VHD_HLOFFSET;
    volatile U_VPSS_VHD_HCOFFSET    VPSS_VHD_HCOFFSET;
    volatile U_VPSS_VHD_VSP         VPSS_VHD_VSP;
    volatile U_VPSS_VHD_VSR         VPSS_VHD_VSR;
    volatile U_VPSS_VHD_VOFFSET     VPSS_VHD_VOFFSET;
    volatile U_VPSS_VHD_ZMEORESO    VPSS_VHD_ZMEORESO;
    volatile U_VPSS_VHD_ZMEIRESO    VPSS_VHD_ZMEIRESO;
    volatile U_VPSS_VHD_LTI_CTRL    VPSS_VHD_LTI_CTRL;
    volatile U_VPSS_VHD_LHPASS_COEF   VPSS_VHD_LHPASS_COEF;
    volatile U_VPSS_VHD_LTI_THD     VPSS_VHD_LTI_THD;
    volatile U_VPSS_VHD_LHFREQ_THD   VPSS_VHD_LHFREQ_THD;
    volatile U_VPSS_VHD_LGAIN_COEF   VPSS_VHD_LGAIN_COEF;
    volatile U_VPSS_VHD_CTI_CTRL    VPSS_VHD_CTI_CTRL;
    volatile U_VPSS_VHD_CHPASS_COEF   VPSS_VHD_CHPASS_COEF;
    volatile U_VPSS_VHD_CTI_THD     VPSS_VHD_CTI_THD;
    volatile U_VPSS_STR_HSP         VPSS_STR_HSP;
    volatile U_VPSS_STR_HLOFFSET    VPSS_STR_HLOFFSET;
    volatile U_VPSS_STR_HCOFFSET    VPSS_STR_HCOFFSET;
    volatile U_VPSS_STR_VSP         VPSS_STR_VSP;
    volatile U_VPSS_STR_VSR         VPSS_STR_VSR;
    volatile U_VPSS_STR_VOFFSET     VPSS_STR_VOFFSET;
    volatile U_VPSS_STR_ZMEORESO    VPSS_STR_ZMEORESO;
    volatile U_VPSS_STR_ZMEIRESO    VPSS_STR_ZMEIRESO;
    volatile U_VPSS_STR_LTI_CTRL    VPSS_STR_LTI_CTRL;
    volatile U_VPSS_STR_LHPASS_COEF   VPSS_STR_LHPASS_COEF;
    volatile U_VPSS_STR_LTI_THD     VPSS_STR_LTI_THD;
    volatile U_VPSS_STR_LHFREQ_THD   VPSS_STR_LHFREQ_THD;
    volatile U_VPSS_STR_LGAIN_COEF   VPSS_STR_LGAIN_COEF;
    volatile U_VPSS_STR_CTI_CTRL    VPSS_STR_CTI_CTRL;
    volatile U_VPSS_STR_CHPASS_COEF   VPSS_STR_CHPASS_COEF;
    volatile U_VPSS_STR_CTI_THD     VPSS_STR_CTI_THD;
    volatile U_VPSS_DNR_CTRL        VPSS_DNR_CTRL;
    volatile U_VPSS_DR_CFG0         VPSS_DR_CFG0;
    volatile U_VPSS_DR_CFG1         VPSS_DR_CFG1;
    volatile U_VPSS_DB_CFG0         VPSS_DB_CFG0;
    volatile U_VPSS_DB_CFG1         VPSS_DB_CFG1;
    volatile U_VPSS_DB_CFG2         VPSS_DB_CFG2;
    volatile unsigned int           VPSS_DNR_YINF_STADDR;
    volatile unsigned int           VPSS_DNR_CINF_STADDR;
    volatile U_VPSS_DNR_INF_STRIDE   VPSS_DNR_INF_STRIDE;
    volatile unsigned int           Reserved_76[7];
    volatile unsigned int           VPSS_VSD_ZME_LHADDR;
    volatile unsigned int           VPSS_VSD_ZME_LVADDR;
    volatile unsigned int           VPSS_VSD_ZME_CHADDR;
    volatile unsigned int           VPSS_VSD_ZME_CVADDR;
    volatile unsigned int           VPSS_VHD_ZME_LHADDR;
    volatile unsigned int           VPSS_VHD_ZME_LVADDR;
    volatile unsigned int           VPSS_VHD_ZME_CHADDR;
    volatile unsigned int           VPSS_VHD_ZME_CVADDR;
    volatile unsigned int           VPSS_STR_ZME_LHADDR;
    volatile unsigned int           VPSS_STR_ZME_LVADDR;
    volatile unsigned int           VPSS_STR_ZME_CHADDR;
    volatile unsigned int           VPSS_STR_ZME_CVADDR;
    volatile U_VPSS_VC1_CTRL        VPSS_VC1_CTRL[3];
    volatile unsigned int           Reserved_82;
    volatile unsigned int           VPSS_DEI_ADDR;
    volatile unsigned int           VPSS_ACC_ACM_ADDR;
    volatile unsigned int           VPSS_ACC_CLU_ADDR;
    volatile unsigned int           Reserved_84[5];
    volatile U_VPSS_VSDLBA_DFPOS    VPSS_VSDLBA_DFPOS;
    volatile U_VPSS_VSDLBA_DLPOS    VPSS_VSDLBA_DLPOS;
    volatile U_VPSS_VSDLBA_VFPOS    VPSS_VSDLBA_VFPOS;
    volatile U_VPSS_VSDLBA_VLPOS    VPSS_VSDLBA_VLPOS;
    volatile U_VPSS_VSDLBA_BK       VPSS_VSDLBA_BK;
    volatile unsigned int           Reserved_89[3];
    volatile U_VPSS_VHDLBA_DFPOS    VPSS_VHDLBA_DFPOS;
    volatile U_VPSS_VHDLBA_DLPOS    VPSS_VHDLBA_DLPOS;
    volatile U_VPSS_VHDLBA_VFPOS    VPSS_VHDLBA_VFPOS;
    volatile U_VPSS_VHDLBA_VLPOS    VPSS_VHDLBA_VLPOS;
    volatile U_VPSS_VHDLBA_BK       VPSS_VHDLBA_BK;
    volatile unsigned int           Reserved_94[3];
    volatile U_VPSS_STRLBA_DFPOS    VPSS_STRLBA_DFPOS;
    volatile U_VPSS_STRLBA_DLPOS    VPSS_STRLBA_DLPOS;
    volatile U_VPSS_STRLBA_VFPOS    VPSS_STRLBA_VFPOS;
    volatile U_VPSS_STRLBA_VLPOS    VPSS_STRLBA_VLPOS;
    volatile U_VPSS_STRLBA_BK       VPSS_STRLBA_BK;
    volatile unsigned int           Reserved_99[3];
    volatile U_STR_DET_VIDCTRL      STR_DET_VIDCTRL;
    volatile U_STR_DET_VIDBLKPOS0_1   STR_DET_VIDBLKPOS0_1;
    volatile U_STR_DET_VIDBLKPOS2_3   STR_DET_VIDBLKPOS2_3;
    volatile U_STR_DET_VIDBLKPOS4_5   STR_DET_VIDBLKPOS4_5;
    volatile unsigned int           Reserved_100[11];
    volatile unsigned int           VPSS_PNEXT;
    volatile U_VPSS_START           VPSS_START;
    volatile U_VPSS_INTSTATE        VPSS_INTSTATE;
    volatile U_VPSS_INTCLR          VPSS_INTCLR;
    volatile U_VPSS_RAWINT          VPSS_RAWINT;
    volatile unsigned int           VPSS_PFCNT;
    volatile U_VPSS_MISCELLANEOUS   VPSS_MISCELLANEOUS;
    volatile U_VPSS_MACCFG          VPSS_MACCFG;
    volatile unsigned int           VPSS_TIMEOUT;
    volatile unsigned int           VPSS_EOFCNT;
    volatile unsigned int           Reserved_109[823];
    volatile U_VPSS_DIECTRL         VPSS_DIECTRL;
    volatile U_VPSS_DIELMA2         VPSS_DIELMA2;
    volatile U_VPSS_DIEINTEN        VPSS_DIEINTEN;
    volatile U_VPSS_DIESCALE        VPSS_DIESCALE;
    volatile U_VPSS_DIECHECK1       VPSS_DIECHECK1;
    volatile U_VPSS_DIECHECK2       VPSS_DIECHECK2;
    volatile U_VPSS_DIEDIR0_3       VPSS_DIEDIR0_3;
    volatile U_VPSS_DIEDIR4_7       VPSS_DIEDIR4_7;
    volatile U_VPSS_DIEDIR8_11      VPSS_DIEDIR8_11;
    volatile U_VPSS_DIEDIR12_14     VPSS_DIEDIR12_14;
    volatile U_VPSS_DIESTA          VPSS_DIESTA;
    volatile unsigned int           VPSS_DIESTPPREADDR;
    volatile unsigned int           VPSS_DIESTPREADDR;
    volatile U_VPSS_CCRSCLR0        VPSS_CCRSCLR0;
    volatile U_VPSS_CCRSCLR1        VPSS_CCRSCLR1;
    volatile U_VPSS_DIEINTPSCL0     VPSS_DIEINTPSCL0;
    volatile U_VPSS_DIEINTPSCL1     VPSS_DIEINTPSCL1;
    volatile U_VPSS_DIEDIRTHD       VPSS_DIEDIRTHD;
    volatile U_VPSS_DIEJITMTN       VPSS_DIEJITMTN;
    volatile U_VPSS_DIEFLDMTN       VPSS_DIEFLDMTN;
    volatile U_VPSS_DIEMTNCRVTHD    VPSS_DIEMTNCRVTHD;
    volatile U_VPSS_DIEMTNCRVSLP    VPSS_DIEMTNCRVSLP;
    volatile U_VPSS_DIEMTNCRVRAT0   VPSS_DIEMTNCRVRAT0;
    volatile U_VPSS_DIEMTNCRVRAT1   VPSS_DIEMTNCRVRAT1;
    volatile U_VPSS_DIEMTNDIFFTHD0   VPSS_DIEMTNDIFFTHD0;
    volatile U_VPSS_DIEMTNDIFFTHD1   VPSS_DIEMTNDIFFTHD1;
    volatile U_VPSS_DIEMTNIIRSLP0   VPSS_DIEMTNIIRSLP0;
    volatile U_VPSS_DIEMTNIIRSLP1   VPSS_DIEMTNIIRSLP1;
    volatile U_VPSS_DIEMTNIIRRAT0   VPSS_DIEMTNIIRRAT0;
    volatile U_VPSS_DIEMTNIIRRAT1   VPSS_DIEMTNIIRRAT1;
    volatile U_VPSS_DIEMTNIIRRAT2   VPSS_DIEMTNIIRRAT2;
    volatile U_VPSS_DIEMTNIIRRAT3   VPSS_DIEMTNIIRRAT3;
    volatile U_VPSS_DIERECMODE      VPSS_DIERECMODE;
    volatile U_VPSS_DIEHISMODE      VPSS_DIEHISMODE;
    volatile U_VPSS_DIEMORFLT       VPSS_DIEMORFLT;
    volatile U_VPSS_DIECOMBCHK0     VPSS_DIECOMBCHK0;
    volatile U_VPSS_DIECOMBCHK1     VPSS_DIECOMBCHK1;
    volatile unsigned int           Reserved_182[3];
    volatile U_VPSS_DIESNRLPF       VPSS_DIESNRLPF;
    volatile U_VPSS_DIESNRYMTNCOFF   VPSS_DIESNRYMTNCOFF;
    volatile U_VPSS_DIESNRYDIFFK    VPSS_DIESNRYDIFFK;
    volatile U_VPSS_DIESNRYDIFFTH0   VPSS_DIESNRYDIFFTH0;
    volatile U_VPSS_DIESNRYDIFFTH1   VPSS_DIESNRYDIFFTH1;
    volatile U_VPSS_DIESNRCMTNCOFF   VPSS_DIESNRCMTNCOFF;
    volatile U_VPSS_DIESNRCDIFFK    VPSS_DIESNRCDIFFK;
    volatile U_VPSS_DIESNRCDIFFTH0   VPSS_DIESNRCDIFFTH0;
    volatile U_VPSS_DIESNRCDIFFTH1   VPSS_DIESNRCDIFFTH1;
    volatile unsigned int           Reserved_193[11];
    volatile U_VPSS_PDPHISTTHD1     VPSS_PDPHISTTHD1;
    volatile U_VPSS_PDPCCMOV        VPSS_PDPCCMOV;
    volatile U_VPSS_PDSIGMA         VPSS_PDSIGMA;
    volatile unsigned int           VPSS_PDICHD;
    volatile U_VPSS_PDCTRL          VPSS_PDCTRL;
    volatile U_VPSS_PDBLKPOS0       VPSS_PDBLKPOS0;
    volatile U_VPSS_PDBLKPOS1       VPSS_PDBLKPOS1;
    volatile U_VPSS_PDBLKTHD        VPSS_PDBLKTHD;
    volatile U_VPSS_PDHISTTHD       VPSS_PDHISTTHD;
    volatile U_VPSS_PDUMTHD         VPSS_PDUMTHD;
    volatile U_VPSS_PDPCCCORING     VPSS_PDPCCCORING;
    volatile U_VPSS_PDPCCHTHD       VPSS_PDPCCHTHD;
    volatile U_VPSS_PDPCCVTHD       VPSS_PDPCCVTHD;
    volatile U_VPSS_PDITDIFFVTHD    VPSS_PDITDIFFVTHD;
    volatile U_VPSS_PDLASITHD       VPSS_PDLASITHD;
    volatile unsigned int           VPSS_PDFRMITDIFF;
    volatile unsigned int           VPSS_PDSTLBLKSAD[16];
    volatile unsigned int           VPSS_PDHISTBIN[4];
    volatile unsigned int           VPSS_PDUMMATCH0;
    volatile unsigned int           VPSS_PDUMNOMATCH0;
    volatile unsigned int           VPSS_PDUMMATCH1;
    volatile unsigned int           VPSS_PDUMNOMATCH1;
    volatile unsigned int           VPSS_PDPCCFFWD;
    volatile unsigned int           VPSS_PDPCCFWD;
    volatile unsigned int           VPSS_PDPCCBWD;
    volatile unsigned int           VPSS_PDPCCCRSS;
    volatile unsigned int           VPSS_PDPCCPW;
    volatile unsigned int           VPSS_PDPCCFWDTKR;
    volatile unsigned int           VPSS_PDPCCBWDTKR;
    volatile unsigned int           VPSS_PDPCCBLKFWD;
    volatile unsigned int           Reserved_207[8];
    volatile unsigned int           VPSS_PDPCCBLKBWD;
    volatile unsigned int           Reserved_208[8];
    volatile unsigned int           VPSS_PDLASICNT14;
    volatile unsigned int           VPSS_PDLASICNT32;
    volatile unsigned int           VPSS_PDLASICNT34;
    volatile unsigned int           Reserved_209[896];
    volatile U_VPSS_ACCTHD1         VPSS_ACCTHD1;
    volatile U_VPSS_ACCTHD2         VPSS_ACCTHD2;
    volatile unsigned int           Reserved_212[2];
    volatile U_VPSS_ACCLOWN         VPSS_ACCLOWN;
    volatile unsigned int           Reserved_214[3];
    volatile U_VPSS_ACCMEDN         VPSS_ACCMEDN;
    volatile unsigned int           Reserved_216[3];
    volatile U_VPSS_ACCHIGHN        VPSS_ACCHIGHN;
    volatile unsigned int           Reserved_218[3];
    volatile U_VPSS_ACCMLN          VPSS_ACCMLN;
    volatile unsigned int           Reserved_220[3];
    volatile U_VPSS_ACCMHN          VPSS_ACCMHN;
    volatile unsigned int           Reserved_222[3];
    volatile U_VPSS_ACC3LOW         VPSS_ACC3LOW;
    volatile U_VPSS_ACC3MED         VPSS_ACC3MED;
    volatile U_VPSS_ACC3HIGH        VPSS_ACC3HIGH;
    volatile U_VPSS_ACC8MLOW        VPSS_ACC8MLOW;
    volatile U_VPSS_ACC8MHIGH       VPSS_ACC8MHIGH;
    volatile U_VPSS_ACCTOTAL        VPSS_ACCTOTAL;
    volatile unsigned int           Reserved_228[2];
    volatile U_VPSS_ACM0            VPSS_ACM0;
    volatile U_VPSS_ACM1            VPSS_ACM1;
    volatile U_VPSS_ACM2            VPSS_ACM2;
    volatile U_VPSS_ACM3            VPSS_ACM3;
    volatile U_VPSS_ACM4            VPSS_ACM4;
    volatile U_VPSS_ACM5            VPSS_ACM5;
    volatile U_VPSS_ACM6            VPSS_ACM6;
    volatile U_VPSS_ACM7            VPSS_ACM7;
    volatile unsigned int           Reserved_236[2008];
    volatile unsigned int           VPSS_DEBUG0;
    volatile unsigned int           VPSS_DEBUG1;
    volatile unsigned int           VPSS_DEBUG2;
    volatile unsigned int           VPSS_DEBUG3;
    volatile unsigned int           VPSS_DEBUG4;
    volatile unsigned int           VPSS_DEBUG5;
    volatile unsigned int           VPSS_DEBUG6;
    volatile unsigned int           VPSS_DEBUG7;
    volatile unsigned int           VPSS_DEBUG8;
    volatile unsigned int           VPSS_DEBUG9;
    volatile unsigned int           VPSS_DEBUG10;
    volatile unsigned int           VPSS_DEBUG11;
    volatile unsigned int           VPSS_DEBUG12;
    volatile unsigned int           VPSS_DEBUG13;
    volatile unsigned int           VPSS_DEBUG14;
    volatile unsigned int           VPSS_DEBUG15;
    volatile unsigned int           VPSS_DEBUG16;
    volatile unsigned int           VPSS_DEBUG17;
    volatile unsigned int           VPSS_DEBUG18;
    volatile unsigned int           VPSS_DEBUG19;
    volatile unsigned int           VPSS_DEBUG20;
    volatile unsigned int           VPSS_DEBUG21;
    volatile unsigned int           VPSS_DEBUG22;
    volatile unsigned int           VPSS_DEBUG23;
    volatile unsigned int           Reserved_237[1000];
    volatile U_STR_DET_VIDBLK0TOL0   STR_DET_VIDBLK0TOL0;
    volatile U_STR_DET_VIDBLK0TOL1   STR_DET_VIDBLK0TOL1;
    volatile U_STR_DET_VIDBLK1TOL0   STR_DET_VIDBLK1TOL0;
    volatile U_STR_DET_VIDBLK1TOL1   STR_DET_VIDBLK1TOL1;
    volatile U_STR_DET_VIDBLK2TOL0   STR_DET_VIDBLK2TOL0;
    volatile U_STR_DET_VIDBLK2TOL1   STR_DET_VIDBLK2TOL1;
    volatile U_STR_DET_VIDBLK3TOL0   STR_DET_VIDBLK3TOL0;
    volatile U_STR_DET_VIDBLK3TOL1   STR_DET_VIDBLK3TOL1;
    volatile U_STR_DET_VIDBLK4TOL0   STR_DET_VIDBLK4TOL0;
    volatile U_STR_DET_VIDBLK4TOL1   STR_DET_VIDBLK4TOL1;
    volatile U_STR_DET_VIDBLK5TOL0   STR_DET_VIDBLK5TOL0;
    volatile U_STR_DET_VIDBLK5TOL1   STR_DET_VIDBLK5TOL1;
    volatile unsigned int           Reserved_238[12];
    volatile unsigned int           VPSS_DEI_Y_CHKSUM;
    volatile unsigned int           VPSS_DEI_C_CHKSUM;
    volatile unsigned int           VPSS_DEI_NCC_Y_CHKSUM;
    volatile unsigned int           VPSS_DEI_NCC_C_CHKSUM;
    volatile unsigned int           VPSS_DNR_Y_CHKSUM;
    volatile unsigned int           VPSS_DNR_C_CHKSUM;
    volatile unsigned int           VPSS_ZME_VSD_Y_CHKSUM;
    volatile unsigned int           VPSS_ZME_VSD_C_CHKSUM;
    volatile unsigned int           VPSS_ZME_VHD_Y_CHKSUM;
    volatile unsigned int           VPSS_ZME_VHD_C_CHKSUM;
    volatile unsigned int           VPSS_ZME_STR_Y_CHKSUM;
    volatile unsigned int           VPSS_ZME_STR_C_CHKSUM;


} VPSS_REG_S;


HI_S32 VPSS_REG_RegWrite(volatile HI_U32 *a, HI_U32 b);
HI_U32 VPSS_REG_RegRead(volatile HI_U32* a);


HI_S32 VPSS_REG_ReSetCRG(HI_VOID);
HI_S32 VPSS_REG_CloseClock(HI_VOID);
HI_S32 VPSS_REG_OpenClock(HI_VOID);


HI_S32 VPSS_REG_BaseRegInit(VPSS_REG_S **ppstPhyReg);


HI_S32 VPSS_REG_AppRegInit(VPSS_REG_S **ppstAppReg,HI_U32 u32VirAddr);


HI_S32 VPSS_REG_ResetAppReg(HI_U32 u32AppAddr);


/********************************/
HI_S32 VPSS_REG_SetIntMask(HI_U32 u32AppAddr,HI_U32 u32Mask);
HI_S32 VPSS_REG_GetIntMask(HI_U32 u32AppAddr,HI_U32 *pu32Mask);
HI_S32 VPSS_REG_GetIntState(HI_U32 u32AppAddr,HI_U32 *pu32Int);
HI_S32 VPSS_REG_GetRawIntState(HI_U32 u32AppAddr,HI_U32 *pu32RawInt);
HI_S32 VPSS_REG_ClearIntState(HI_U32 u32AppAddr,HI_U32 u32Data);
/********************************/



HI_S32 VPSS_REG_SetTimeOut(HI_U32 u32AppAddr,HI_U32 u32Data);


HI_S32 VPSS_REG_StartLogic(HI_U32 u32AppAddr,HI_U32 u32PhyAddr);


HI_S32 VPSS_REG_EnPort(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL bEnable);


/********************************/
HI_S32 VPSS_REG_SetImgSize(HI_U32 u32AppAddr,HI_U32 u32Height,HI_U32 u32Width,HI_BOOL bProgressive);
HI_S32 VPSS_REG_SetImgAddr(HI_U32 u32AppAddr,REG_FIELDPOS_E ePos,HI_U32 u32Yaddr,HI_U32 u32Caddr);
HI_S32 VPSS_REG_SetImgStride(HI_U32 u32AppAddr,REG_FIELDPOS_E ePos,HI_U32 u32YStride,HI_U32 u32CStride);
HI_S32 VPSS_REG_SetImgFormat(HI_U32 u32AppAddr,HI_DRV_PIX_FORMAT_E eFormat);
HI_S32 VPSS_REG_SetImgReadMod(HI_U32 u32AppAddr,HI_BOOL bField);
/********************************/


/********************************/
HI_S32 VPSS_REG_SetFrmSize(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Height,HI_U32 u32Width);
HI_S32 VPSS_REG_SetFrmAddr(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Yaddr,HI_U32 u32Caddr);
HI_S32 VPSS_REG_SetFrmStride(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32YStride,HI_U32 u32CStride);
HI_S32 VPSS_REG_SetFrmFormat(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_DRV_PIX_FORMAT_E eFormat);
/********************************/


/********************************/
/*ZME*/
HI_S32 VPSS_REG_SetZmeEnable(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,REG_ZME_MODE_E eMode,HI_BOOL bEnable);
HI_S32 VPSS_REG_SetZmeInSize(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Height,HI_U32 u32Width);
HI_S32 VPSS_REG_SetZmeOutSize(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Height,HI_U32 u32Width);
HI_S32 VPSS_REG_SetZmeFirEnable(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,
                                    REG_ZME_MODE_E eMode,HI_BOOL bEnable);
HI_S32 VPSS_REG_SetZmeMidEnable(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,
                                    REG_ZME_MODE_E eMode,HI_BOOL bEnable);
HI_S32 VPSS_REG_SetZmePhase(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,
                                    REG_ZME_MODE_E eMode,HI_S32 s32Phase);
HI_S32 VPSS_REG_SetZmeRatio(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,
                                    REG_ZME_MODE_E eMode,HI_U32 u32Ratio);
HI_S32 VPSS_REG_SetZmeHfirOrder(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL bVfirst);
HI_S32 VPSS_REG_SetZmeInFmt(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_DRV_PIX_FORMAT_E eFormat);
HI_S32 VPSS_REG_SetZmeOutFmt(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_DRV_PIX_FORMAT_E eFormat);
HI_S32 VPSS_REG_SetZmeCoefAddr(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,
                                    REG_ZME_MODE_E eMode,HI_U32 u32Addr);
/*LTI/CTI*/
HI_S32 VPSS_REG_SetLTIEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL  bEnLTI);
HI_S32 VPSS_REG_SetLGainRatio(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Ratio);
HI_S32 VPSS_REG_SetLGainCoef(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S8  *ps8Coef);
HI_S32 VPSS_REG_SetLMixingRatio(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Ratio);
HI_S32 VPSS_REG_SetLCoringThd(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Thd);
HI_S32 VPSS_REG_SetLSwing(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Under,HI_S32  s32Over);
HI_S32 VPSS_REG_SetLHpassCoef(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S8  *ps8Coef);
HI_S32 VPSS_REG_SetLHfreqThd(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S16  *ps16Thd);

HI_S32 VPSS_REG_SetCTIEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL  bEnCTI);
HI_S32 VPSS_REG_SetCGainRatio(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Ratio);
HI_S32 VPSS_REG_SetCMixingRatio(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Ratio);
HI_S32 VPSS_REG_SetCCoringThd(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Thd);
HI_S32 VPSS_REG_SetCSwing(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32Under,HI_S32  s32Over);
HI_S32 VPSS_REG_SetCHpassCoef(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S8  *ps8Coef);


/********************************/


/********************************/
HI_VOID VPSS_REG_SetDetEn(HI_U32 u32AppAddr,HI_BOOL bEnable);
HI_VOID VPSS_REG_SetDetMode(HI_U32 u32AppAddr,HI_U32 u32Mode);
HI_VOID VPSS_REG_SetDetBlk(HI_U32 u32AppAddr,HI_U32 blk_id, HI_U32 *pu32Addr);
HI_VOID VPSS_REG_GetDetPixel(HI_U32 u32AppAddr,HI_U32 BlkNum, HI_U8* pstData);
/********************************/




/********************************/
/*DEI*/
HI_S32 VPSS_REG_EnDei(HI_U32 u32AppAddr,HI_BOOL bEnDei);
HI_S32 VPSS_REG_SetDeiTopFirst(HI_U32 u32AppAddr,HI_BOOL bTopFirst);
HI_S32 VPSS_REG_SetDeiFieldMode(HI_U32 u32AppAddr,HI_BOOL bBottom);
HI_S32 VPSS_REG_SetDeiAddr(HI_U32 u32AppAddr,REG_FIELDPOS_E eField,HI_U32 u32YAddr,HI_U32 u32CAddr);
HI_S32 VPSS_REG_SetDeiStride(HI_U32 u32AppAddr,REG_FIELDPOS_E eField,HI_U32 u32YStride,HI_U32 u32CStride);
HI_S32 VPSS_REG_SetModeEn(HI_U32 u32AppAddr,REG_DIE_MODE_E eDieMode,HI_BOOL bEnMode);
HI_S32 VPSS_REG_SetOutSel(HI_U32 u32AppAddr,REG_DIE_MODE_E eDieMode,HI_BOOL bEnMode);
HI_S32 VPSS_REG_SetMode(HI_U32 u32AppAddr,REG_DIE_MODE_E eDieMode,HI_U32  u32Mode);
HI_S32 VPSS_REG_SetStInfo(HI_U32 u32AppAddr,HI_BOOL bStop);
HI_S32 VPSS_REG_SetMfMax(HI_U32 u32AppAddr,REG_DIE_MODE_E eDieMode,HI_BOOL bMax);
HI_S32 VPSS_REG_SetLuSceSdfMax(HI_U32 u32AppAddr,HI_BOOL bMax);
HI_S32 VPSS_REG_SetSadThd(HI_U32 u32AppAddr,HI_U32 u32Thd);
HI_S32 VPSS_REG_SetMinIntern(HI_U32 u32AppAddr,HI_U32 u32MinIntern);
HI_S32 VPSS_REG_SetInternVer(HI_U32 u32AppAddr,HI_U32 u32InternVer);
HI_S32 VPSS_REG_SetRangeScale(HI_U32 u32AppAddr,HI_U32 u32Scale);
HI_S32 VPSS_REG_SetCK1(HI_U32 u32AppAddr,HI_U32 u32Gain,HI_U32 u32Range,HI_U32 u32Max);
HI_S32 VPSS_REG_SetCK2(HI_U32 u32AppAddr,HI_U32 u32Gain,HI_U32 u32Range,HI_U32 u32Max);
HI_S32 VPSS_REG_SetDIR(HI_U32 u32AppAddr,HI_S32 s32MultDir[15]);
HI_S32 VPSS_REG_SetCcEn(HI_U32 u32AppAddr,HI_BOOL bEnCc);
HI_S32 VPSS_REG_SetCcOffset(HI_U32 u32AppAddr,HI_S32 s32Offset);
HI_S32 VPSS_REG_SetCcDetMax(HI_U32 u32AppAddr,HI_S32 s32Max);
HI_S32 VPSS_REG_SetCcDetThd(HI_U32 u32AppAddr,HI_S32 s32Thd);
HI_S32 VPSS_REG_SetSimiMax(HI_U32 u32AppAddr,HI_S32 s32SimiMax);
HI_S32 VPSS_REG_SetSimiThd(HI_U32 u32AppAddr,HI_S32 s32SimiThd);
HI_S32 VPSS_REG_SetDetBlend(HI_U32 u32AppAddr,HI_S32 s32DetBlend);
HI_S32 VPSS_REG_SetMaxXChroma(HI_U32 u32AppAddr,HI_S32 s32Max);
HI_S32 VPSS_REG_SetIntpSclRat(HI_U32 u32AppAddr,HI_S32 s32Rat[15]);
HI_S32 VPSS_REG_SetStrenThd(HI_U32 u32AppAddr,HI_S32 s32Thd);
HI_S32 VPSS_REG_SetDirThd(HI_U32 u32AppAddr,HI_S32 s32Thd);
HI_S32 VPSS_REG_SetBcGain(HI_U32 u32AppAddr,HI_S32 s32BcGain);
HI_S32 VPSS_REG_SetJitterMode(HI_U32 u32AppAddr,HI_BOOL bJitMd);
HI_S32 VPSS_REG_SetJitterFactor(HI_U32 u32AppAddr,HI_S32 s32Factor);
HI_S32 VPSS_REG_SetJitterCoring(HI_U32 u32AppAddr,HI_S32 s32Coring);
HI_S32 VPSS_REG_SetJitterGain(HI_U32 u32AppAddr,HI_S32 s32Gain);
HI_S32 VPSS_REG_SetJitterFilter(HI_U32 u32AppAddr,HI_S32 s32Filter[3]);

HI_S32 VPSS_REG_SetMotionSlope(HI_U32 u32AppAddr,HI_S32 s32Slope);
HI_S32 VPSS_REG_SetMotionCoring(HI_U32 u32AppAddr,HI_S32 s32Coring);
HI_S32 VPSS_REG_SetMotionGain(HI_U32 u32AppAddr,HI_S32 s32Gain);
HI_S32 VPSS_REG_SetMotionHThd(HI_U32 u32AppAddr,HI_S32 s32HThd);
HI_S32 VPSS_REG_SetMotionLThd(HI_U32 u32AppAddr,HI_S32 s32LThd);
HI_S32 VPSS_REG_SetLumAvgThd(HI_U32 u32AppAddr,HI_S32 s32Thd[4]);
HI_S32 VPSS_REG_SetCurSlope(HI_U32 u32AppAddr,HI_S32 s32Slope[4]);
HI_S32 VPSS_REG_SetMotionEn(HI_U32 u32AppAddr,HI_BOOL bEnMotion);
HI_S32 VPSS_REG_SetMotionStart(HI_U32 u32AppAddr,HI_S32 s32Start);
HI_S32 VPSS_REG_SetMotionRatio(HI_U32 u32AppAddr,HI_S32 s32Ration[4]);
HI_S32 VPSS_REG_SetMotionMaxRatio(HI_U32 u32AppAddr,HI_S32 s32Max);
HI_S32 VPSS_REG_SetMotionMinRatio(HI_U32 u32AppAddr,HI_S32 s32Min);

HI_S32 VPSS_REG_SetMotionDiffThd(HI_U32 u32AppAddr,HI_S32 s32Thd[8]);
HI_S32 VPSS_REG_SetMotionIIrSlope(HI_U32 u32AppAddr,HI_S32 s32Slope[8]);
HI_S32 VPSS_REG_SetMotionIIrEn(HI_U32 u32AppAddr,HI_BOOL bEnIIr);
HI_S32 VPSS_REG_SetMotionIIrStart(HI_U32 u32AppAddr,HI_S32 s32Start);
HI_S32 VPSS_REG_SetMotionIIrRatio(HI_U32 u32AppAddr,HI_S32 s32Ratio[8]);
HI_S32 VPSS_REG_SetIIrMaxRatio(HI_U32 u32AppAddr,HI_S32 s32Max);
HI_S32 VPSS_REG_SetIIrMinRatio(HI_U32 u32AppAddr,HI_S32 s32Min);

HI_S32 VPSS_REG_SetRecWrMode(HI_U32 u32AppAddr,HI_BOOL bRecMdWrMd);
HI_S32 VPSS_REG_SetRecEn(HI_U32 u32AppAddr,HI_BOOL bEnRec);
HI_S32 VPSS_REG_SetRecMixMode(HI_U32 u32AppAddr,HI_BOOL bRecMdMixMd);
HI_S32 VPSS_REG_SetRecScale(HI_U32 u32AppAddr,HI_S32 s32RecScale);
HI_S32 VPSS_REG_SetRecThd(HI_U32 u32AppAddr,HI_S32 s32Thd);
HI_S32 VPSS_REG_SetRecCoring(HI_U32 u32AppAddr,HI_S32 s32Coring);
HI_S32 VPSS_REG_SetRecGain(HI_U32 u32AppAddr,HI_S32 s32Gain);

HI_S32 VPSS_REG_SetRecFldStep(HI_U32 u32AppAddr,HI_S32 s32Step[2]);
HI_S32 VPSS_REG_SetRecFrmStep(HI_U32 u32AppAddr,HI_S32 s32Step[2]);
HI_S32 VPSS_REG_SetHisEn(HI_U32 u32AppAddr,HI_BOOL bEnHis);
HI_S32 VPSS_REG_SetHisWrMode(HI_U32 u32AppAddr,HI_BOOL bHisMtnWrMd);
HI_S32 VPSS_REG_SetHisUseMode(HI_U32 u32AppAddr,HI_BOOL bHisMtnUseMd);
HI_S32 VPSS_REG_SetHisPreEn(HI_U32 u32AppAddr,HI_BOOL bEnPre);
HI_S32 VPSS_REG_SetHisPpreEn(HI_U32 u32AppAddr,HI_BOOL bEnPpre);
HI_S32 VPSS_REG_SetMorFlt(HI_U32 u32AppAddr,HI_BOOL bEnflt,HI_S8 s8FltSize,HI_S8 s8FltThd);
HI_S32 VPSS_REG_SetBlendEn(HI_U32 u32AppAddr,HI_BOOL bEnBlend);
HI_S32 VPSS_REG_SetDeflickerEn(HI_U32 u32AppAddr,HI_BOOL bEnDeflicker);
HI_S32 VPSS_REG_AdjustGain(HI_U32 u32AppAddr,HI_S8 s8Gain);

HI_S32 VPSS_REG_SetCombLimit(HI_U32 u32AppAddr,HI_S32  s32UpLimit,HI_S32  s32DownLimit);
HI_S32 VPSS_REG_SetCombThd(HI_U32 u32AppAddr,HI_S32  s32Hthd,HI_S32  s32Vthd);
HI_S32 VPSS_REG_SetCombEn(HI_U32 u32AppAddr,HI_BOOL bEnComb);
HI_S32 VPSS_REG_SetCombMdThd(HI_U32 u32AppAddr,HI_S32 s32MdThd);
HI_S32 VPSS_REG_SetCombEdgeThd(HI_U32 u32AppAddr,HI_S32 s32EdgeThd);

HI_S32 VPSS_REG_SetStWrAddr(HI_U32 u32AppAddr,HI_U32 u32Addr);
HI_S32 VPSS_REG_SetStRdAddr(HI_U32 u32AppAddr,HI_U32 u32Addr);

HI_S32 VPSS_REG_SetStStride(HI_U32 u32AppAddr,HI_U32 u32Stride);
HI_S32 VPSS_REG_SetDeiParaAddr(HI_U32 u32AppAddr,HI_U32 u32ParaAddr);

/********************************/


/********************************/
HI_S32 VPSS_REG_SetVc1En(HI_U32 u32AppAddr,HI_U32 u32EnVc1);
HI_S32 VPSS_REG_SetVc1Profile(HI_U32 u32AppAddr,REG_FRAMEPOS_E ePos,HI_U32 u32Profile);
HI_S32 VPSS_REG_SetVc1Map(HI_U32 u32AppAddr,REG_FRAMEPOS_E ePos,HI_U32 u32MapY,HI_U32 u32MapC,
                            HI_U32 u32BMapY,HI_U32 u32BMapC);
HI_S32 VPSS_REG_SetVc1MapFlag(HI_U32 u32AppAddr,REG_FRAMEPOS_E ePos,HI_U32 u32YFlag,HI_U32 u32CFlag,
                            HI_U32 u32BYFlag,HI_U32 u32BCFlag);
HI_S32 VPSS_REG_SetVc1RangeEn(HI_U32 u32AppAddr,REG_FRAMEPOS_E ePos,HI_U32 u32EnVc1);
                            
/********************************/

HI_S32 VPSS_REG_SetUVConvertEn(HI_U32 u32AppAddr,HI_U32 u32EnUV);

HI_S32 VPSS_REG_GetHisBin(HI_U32 u32AppAddr,HI_S32 *pstData);

HI_S32 VPSS_REG_GetItDiff(HI_U32 u32AppAddr,HI_S32 *pstData);

HI_S32 VPSS_REG_GetPdMatch(HI_U32 u32AppAddr,
                            HI_S32 *ps32Match0,HI_S32 *ps32UnMatch0,
                            HI_S32 *ps32Match1,HI_S32 *ps32UnMatch1);
                            
HI_S32 VPSS_REG_GetLasiCnt(HI_U32 u32AppAddr,
                            HI_S32 *ps32Cnt14,HI_S32 *ps32Cnt32,
                            HI_S32 *ps32Cnt34);


HI_S32 VPSS_REG_GetPdIchd(HI_U32 u32AppAddr,HI_S32 *pstData);

HI_S32 VPSS_REG_GetBlkSad(HI_U32 u32AppAddr,HI_S32 *pstData);

HI_S32 VPSS_REG_GetPccData(HI_U32 u32AppAddr,HI_S32 *ps32FFWD,
                             HI_S32 *ps32FWD,HI_S32 *ps32BWD,HI_S32 *ps32CRSS,
                             HI_S32 *ps32PW,HI_S32 *ps32FWDTKR,HI_S32 *ps32WDTKR);



HI_S32 VPSS_REG_SetDeiEdgeSmoothRatio(HI_U32 u32AppAddr,HI_S8 u8Data);
HI_S32 VPSS_REG_SetDeiStillBlkThd(HI_U32 u32AppAddr,HI_S8 u8Data);
HI_S32 VPSS_REG_SetDeiHistThd(HI_U32 u32AppAddr,HI_S8 *pu8Data);
HI_S32 VPSS_REG_SetDeiUmThd(HI_U32 u32AppAddr,HI_S8 *pu8Data);
HI_S32 VPSS_REG_SetDeiCoring(HI_U32 u32AppAddr,HI_S8 s8CorBlk,HI_S8 s8CorNorm,HI_S8 s8CorTkr);
HI_S32 VPSS_REG_SetDeiMovCoring(HI_U32 u32AppAddr,HI_S8 s8Blk,HI_S8 s8Norm,HI_S8 s8Tkr);
HI_S32 VPSS_REG_SetDeiPccHThd(HI_U32 u32AppAddr,HI_S8 s8Data);
HI_S32 VPSS_REG_SetDeiPccVThd(HI_U32 u32AppAddr,HI_S8 *ps8Data);
HI_S32 VPSS_REG_SetDeiItDiff(HI_U32 u32AppAddr,HI_S8 *ps8Data);
HI_S32 VPSS_REG_SetDeiLasiCtrl(HI_U32 u32AppAddr,HI_S8 s8Thr,HI_S8 s8EdgeThr,HI_S8 s8lasiThr);
HI_S32 VPSS_REG_SetDeiPdBitMove(HI_U32 u32AppAddr,HI_S32  s32Data);
HI_S32 VPSS_REG_SetDeiDirMch(HI_U32 u32AppAddr,HI_BOOL  bNext);
HI_S32 VPSS_REG_SetEdgeSmooth(HI_U32 u32AppAddr,HI_BOOL  bEdgeSmooth);



/**************************/



/*DR*/
HI_S32 VPSS_REG_SetDREn(HI_U32 u32AppAddr,HI_BOOL  bEnDR);
HI_S32 VPSS_REG_SetDRPara(HI_U32 u32AppAddr,HI_S32  s32FlatThd,HI_S32  s32SimiThd,
                            HI_S32 s32AlphaScale,HI_S32 s32BetaScale);
HI_S32 VPSS_REG_SetDnrInfoAddr(HI_U32 u32AppAddr,HI_U32  u32Yaddr,HI_U32  u32Caddr,
                            HI_U32 u32Ystride,HI_U32 u32Cstride);                          
/*DB*/                          
HI_S32 VPSS_REG_SetDBEn(HI_U32 u32AppAddr,HI_BOOL  bEnDB);
HI_S32 VPSS_REG_SetDBVH(HI_U32 u32AppAddr,HI_BOOL  bEnVert, HI_BOOL bEnHor);
HI_S32 VPSS_REG_SetEdgeThd(HI_U32 u32AppAddr,HI_S32  s32Thd);
HI_S32 VPSS_REG_SetVerProg(HI_U32 u32AppAddr,HI_BOOL  bProg);
HI_S32 VPSS_REG_SetWeakFlt(HI_U32 u32AppAddr,HI_BOOL  bWeak);
HI_S32 VPSS_REG_SetMaxDiff(HI_U32 u32AppAddr,HI_S32  s32VerMax,HI_S32  s32HorMax);
HI_S32 VPSS_REG_SetLeastDiff(HI_U32 u32AppAddr,HI_S32  s32VerLeast,HI_S32  s32HorLeast);
HI_S32 VPSS_REG_SetScale(HI_U32 u32AppAddr,HI_S32  s32Alpha,HI_S32  s32Beta);
HI_S32 VPSS_REG_SetSmoothThd(HI_U32 u32AppAddr,HI_S32  s32Thd);
HI_S32 VPSS_REG_SetQpThd(HI_U32 u32AppAddr,HI_S32  s32Thd);
/*LBOX*/
HI_S32 VPSS_REG_SetLBAEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL bEnLba);
HI_S32 VPSS_REG_SetLBADispPos(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32XFPos,HI_U32 u32YFPos,
                            HI_U32 u32Height,HI_U32 u32Width);
HI_S32 VPSS_REG_SetLBAVidPos(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32XFPos,HI_U32 u32YFPos,
                            HI_U32 u32Height,HI_U32 u32Width);
HI_S32 VPSS_REG_SetLBABg(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Color,HI_U32 u32Alpha);
HI_S32 VPSS_REG_GetCycleCnt(HI_U32 u32AppAddr,HI_U32 *pCnt);

HI_S32 VPSS_REG_SetFidelity(HI_U32 u32AppVAddr,HI_BOOL bEnFidelity);

#endif
