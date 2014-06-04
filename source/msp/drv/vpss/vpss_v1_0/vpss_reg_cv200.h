#ifndef __VPSS_REG_CV200_H__
#define __VPSS_REG_CV200_H__

#include "vpss_common.h"
#include "vpss_reg_struct.h"
#include "hi_drv_reg.h"
#include "hi_reg_common.h"


//CV200
#define VPSS_BASE_ADDR  0xf8cb0000    
// Define the union U_VPSS_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    str_en                : 1   ; // [0] 
        unsigned int    vhd_en                : 1   ; // [1] 
        unsigned int    vsd_en                : 1   ; // [2] 
        unsigned int    vhd_cmp_en            : 1   ; // [3] 
        unsigned int    vsd_mux               : 1   ; // [4] 
        unsigned int    uv_invert             : 1   ; // [5] 
        unsigned int    Reserved_0            : 2   ; // [7..6] 
        unsigned int    str_det_en            : 1   ; // [8] 
        unsigned int    dei_en                : 1   ; // [9] 
        unsigned int    db_en                 : 1   ; // [10] 
        unsigned int    dr_en                 : 1   ; // [11] 
        unsigned int    prot                  : 1   ; // [12] 
        unsigned int    in_dcmp_en            : 1   ; // [13] 
        unsigned int    str_lba_en            : 1   ; // [14] 
        unsigned int    vhd_lba_en            : 1   ; // [15] 
        unsigned int    vsd_lba_en            : 1   ; // [16] 
        unsigned int    str_mute_en           : 1   ; // [17] 
        unsigned int    vhd_mute_en           : 1   ; // [18] 
        unsigned int    vsd_mute_en           : 1   ; // [19] 
        unsigned int    vc1_en                : 1   ; // [20] 
        unsigned int    rotate_angle          : 1   ; // [21] 
        unsigned int    rotate_en             : 1   ; // [22] 
        unsigned int    pre_vfir_mode         : 2   ; // [24..23] 
        unsigned int    pre_vfir_en           : 1   ; // [25] 
        unsigned int    pre_hfir_mode         : 2   ; // [27..26] 
        unsigned int    pre_hfir_en           : 1   ; // [28] 
        unsigned int    bfield_first          : 1   ; // [29] 
        unsigned int    bfield_mode           : 1   ; // [30] 
        unsigned int    bfield                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_CTRL;

// Define the union U_VPSS_CTRL2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    str_format            : 4   ; // [3..0] 
        unsigned int    vhd_format            : 4   ; // [7..4] 
        unsigned int    vsd_format            : 1   ; // [8] 
        unsigned int    Reserved_2            : 7   ; // [15..9] 
        unsigned int    in_format             : 5   ; // [20..16] 
        unsigned int    Reserved_1            : 5   ; // [25..21] 
        unsigned int    str_flip              : 1   ; // [26] 
        unsigned int    vhd_flip              : 1   ; // [27] 
        unsigned int    vsd_flip              : 1   ; // [28] 
        unsigned int    str_mirror            : 1   ; // [29] 
        unsigned int    vhd_mirror            : 1   ; // [30] 
        unsigned int    vsd_mirror            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_CTRL2;

// Define the union U_VPSS_CTRL3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    str_alpha             : 8   ; // [7..0] 
        unsigned int    vhd_alpha             : 8   ; // [15..8] 
        unsigned int    Reserved_3            : 14  ; // [29..16] 
        unsigned int    in_rgb_ltm_mode       : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_CTRL3;

// Define the union U_VPSS_IMGSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    imgwidth              : 12  ; // [11..0] 
        unsigned int    Reserved_5            : 4   ; // [15..12] 
        unsigned int    imgheight             : 12  ; // [27..16] 
        unsigned int    Reserved_4            : 4   ; // [31..28] 
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
        unsigned int    Reserved_8            : 4   ; // [15..12] 
        unsigned int    vsd_height            : 12  ; // [27..16] 
        unsigned int    Reserved_7            : 4   ; // [31..28] 
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

// Define the union U_VPSS_LASTSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lasty_stride          : 16  ; // [15..0] 
        unsigned int    lastc_stride          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_LASTSTRIDE;

// Define the union U_VPSS_CURSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    curry_stride          : 16  ; // [15..0] 
        unsigned int    currc_stride          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_CURSTRIDE;

// Define the union U_VPSS_NEXTSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    nexty_stride          : 16  ; // [15..0] 
        unsigned int    nextc_stride          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_NEXTSTRIDE;

// Define the union U_VPSS_STSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    st_stride             : 16  ; // [15..0] 
        unsigned int    Reserved_14           : 16  ; // [31..16] 
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

// Define the union U_VPSS_VHD_CMP_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vhd_cmp_lossy_en      : 1   ; // [0] 
        unsigned int    Reserved_17           : 1   ; // [1] 
        unsigned int    vhd_cmp_drr           : 4   ; // [5..2] 
        unsigned int    Reserved_16           : 26  ; // [31..6] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHD_CMP_CTRL;

// Define the union U_VPSS_TUNL_CTRL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vhd_tunl_finish_line  : 12  ; // [11..0] 
        unsigned int    Reserved_18           : 4   ; // [15..12] 
        unsigned int    vsd_tunl_finish_line  : 12  ; // [27..16] 
        unsigned int    vhd_tunl_en           : 1   ; // [28] 
        unsigned int    vsd_tunl_en           : 1   ; // [29] 
        unsigned int    str_tunl_en           : 1   ; // [30] 
        unsigned int    cur_tunl_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_TUNL_CTRL0;

// Define the union U_VPSS_TUNL_CTRL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    str_tunl_finish_line  : 12  ; // [11..0] 
        unsigned int    Reserved_21           : 4   ; // [15..12] 
        unsigned int    cur_tunl_rd_interval  : 8   ; // [23..16] 
        unsigned int    vhd_tunl_mode         : 2   ; // [25..24] 
        unsigned int    vsd_tunl_mode         : 2   ; // [27..26] 
        unsigned int    str_tunl_mode         : 2   ; // [29..28] 
        unsigned int    Reserved_20           : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_TUNL_CTRL1;

// Define the union U_VPSS_INCROP_POS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    in_crop_x             : 12  ; // [11..0] 
        unsigned int    Reserved_23           : 4   ; // [15..12] 
        unsigned int    in_crop_y             : 12  ; // [27..16] 
        unsigned int    Reserved_22           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_INCROP_POS;

// Define the union U_VPSS_INCROP_SIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    in_crop_width         : 12  ; // [11..0] 
        unsigned int    Reserved_25           : 4   ; // [15..12] 
        unsigned int    in_crop_height        : 12  ; // [27..16] 
        unsigned int    Reserved_24           : 2   ; // [29..28] 
        unsigned int    in_crop_mode          : 1   ; // [30] 
        unsigned int    in_crop_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_INCROP_SIZE;

// Define the union U_VPSS_VSDCROP_POS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vsd_crop_x            : 12  ; // [11..0] 
        unsigned int    Reserved_27           : 4   ; // [15..12] 
        unsigned int    vsd_crop_y            : 12  ; // [27..16] 
        unsigned int    Reserved_26           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDCROP_POS;

// Define the union U_VPSS_VSDCROP_SIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vsd_crop_width        : 12  ; // [11..0] 
        unsigned int    Reserved_29           : 4   ; // [15..12] 
        unsigned int    vsd_crop_height       : 12  ; // [27..16] 
        unsigned int    Reserved_28           : 3   ; // [30..28] 
        unsigned int    vsd_crop_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDCROP_SIZE;

// Define the union U_VPSS_VHDCROP_POS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vhd_crop_x            : 12  ; // [11..0] 
        unsigned int    Reserved_31           : 4   ; // [15..12] 
        unsigned int    vhd_crop_y            : 12  ; // [27..16] 
        unsigned int    Reserved_30           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDCROP_POS;

// Define the union U_VPSS_VHDCROP_SIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vhd_crop_width        : 12  ; // [11..0] 
        unsigned int    Reserved_33           : 4   ; // [15..12] 
        unsigned int    vhd_crop_height       : 12  ; // [27..16] 
        unsigned int    Reserved_32           : 3   ; // [30..28] 
        unsigned int    vhd_crop_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDCROP_SIZE;

// Define the union U_VPSS_STRCROP_POS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    str_crop_x            : 12  ; // [11..0] 
        unsigned int    Reserved_35           : 4   ; // [15..12] 
        unsigned int    str_crop_y            : 12  ; // [27..16] 
        unsigned int    Reserved_34           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRCROP_POS;

// Define the union U_VPSS_STRCROP_SIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    str_crop_width        : 12  ; // [11..0] 
        unsigned int    Reserved_37           : 4   ; // [15..12] 
        unsigned int    str_crop_height       : 12  ; // [27..16] 
        unsigned int    Reserved_36           : 3   ; // [30..28] 
        unsigned int    str_crop_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRCROP_SIZE;

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
        unsigned int    Reserved_39           : 1   ; // [10] 
        unsigned int    axi_cas_rid           : 1   ; // [11] 
        unsigned int    awid_cfg1             : 4   ; // [15..12] 
        unsigned int    awid_cfg0             : 4   ; // [19..16] 
        unsigned int    arid_cfg1             : 4   ; // [23..20] 
        unsigned int    arid_cfg0             : 4   ; // [27..24] 
        unsigned int    Reserved_38           : 4   ; // [31..28] 
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
        unsigned int    vhd_tunl_mask         : 1   ; // [4] 
        unsigned int    vsd_tunl_mask         : 1   ; // [5] 
        unsigned int    str_tunl_mask         : 1   ; // [6] 
        unsigned int    dcmp_err_mask         : 1   ; // [7] 
        unsigned int    Reserved_40           : 24  ; // [31..8] 
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
        unsigned int    Reserved_41           : 1   ; // [27] 
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
        unsigned int    Reserved_43           : 4   ; // [31..28] 
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
        unsigned int    Reserved_44           : 4   ; // [31..28] 
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
        unsigned int    Reserved_47           : 19  ; // [18..0] 
        unsigned int    zme_in_fmt            : 2   ; // [20..19] 
        unsigned int    zme_out_fmt           : 2   ; // [22..21] 
        unsigned int    vchfir_en             : 1   ; // [23] 
        unsigned int    vlfir_en              : 1   ; // [24] 
        unsigned int    Reserved_46           : 1   ; // [25] 
        unsigned int    vsc_chroma_tap        : 1   ; // [26] 
        unsigned int    Reserved_45           : 1   ; // [27] 
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
        unsigned int    Reserved_48           : 16  ; // [31..16] 
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
        unsigned int    Reserved_49           : 8   ; // [31..24] 
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
        unsigned int    Reserved_50           : 8   ; // [31..24] 
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
        unsigned int    Reserved_51           : 3   ; // [30..28] 
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
        unsigned int    Reserved_52           : 8   ; // [31..24] 
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
        unsigned int    Reserved_54           : 8   ; // [7..0] 
        unsigned int    cmixing_ratio         : 8   ; // [15..8] 
        unsigned int    cgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_53           : 3   ; // [30..28] 
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
        unsigned int    Reserved_55           : 8   ; // [31..24] 
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
        unsigned int    Reserved_57           : 1   ; // [24] 
        unsigned int    hchfir_en             : 1   ; // [25] 
        unsigned int    hlfir_en              : 1   ; // [26] 
        unsigned int    Reserved_56           : 1   ; // [27] 
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
        unsigned int    Reserved_58           : 4   ; // [31..28] 
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
        unsigned int    Reserved_59           : 4   ; // [31..28] 
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
        unsigned int    Reserved_62           : 19  ; // [18..0] 
        unsigned int    zme_in_fmt            : 2   ; // [20..19] 
        unsigned int    zme_out_fmt           : 2   ; // [22..21] 
        unsigned int    vchfir_en             : 1   ; // [23] 
        unsigned int    vlfir_en              : 1   ; // [24] 
        unsigned int    Reserved_61           : 1   ; // [25] 
        unsigned int    vsc_chroma_tap        : 1   ; // [26] 
        unsigned int    Reserved_60           : 1   ; // [27] 
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
        unsigned int    Reserved_63           : 16  ; // [31..16] 
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
        unsigned int    Reserved_64           : 8   ; // [31..24] 
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
        unsigned int    Reserved_65           : 8   ; // [31..24] 
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
        unsigned int    Reserved_66           : 3   ; // [30..28] 
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
        unsigned int    Reserved_67           : 8   ; // [31..24] 
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
        unsigned int    Reserved_69           : 8   ; // [7..0] 
        unsigned int    cmixing_ratio         : 8   ; // [15..8] 
        unsigned int    cgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_68           : 3   ; // [30..28] 
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
        unsigned int    Reserved_70           : 8   ; // [31..24] 
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
        unsigned int    Reserved_72           : 1   ; // [24] 
        unsigned int    hchfir_en             : 1   ; // [25] 
        unsigned int    hlfir_en              : 1   ; // [26] 
        unsigned int    Reserved_71           : 1   ; // [27] 
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
        unsigned int    Reserved_73           : 4   ; // [31..28] 
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
        unsigned int    Reserved_74           : 4   ; // [31..28] 
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
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_76           : 5   ; // [20..16] 
        unsigned int    zme_out_fmt           : 2   ; // [22..21] 
        unsigned int    vchfir_en             : 1   ; // [23] 
        unsigned int    vlfir_en              : 1   ; // [24] 
        unsigned int    Reserved_75           : 3   ; // [27..25] 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vchmsc_en             : 1   ; // [30] 
        unsigned int    vlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_VSP;

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
        unsigned int    Reserved_78           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STR_ZMEORESO;

// Define the union U_VPSS_STR_LTI_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef4          : 8   ; // [7..0] 
        unsigned int    lmixing_ratio         : 8   ; // [15..8] 
        unsigned int    lgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_79           : 3   ; // [30..28] 
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
        unsigned int    Reserved_81           : 8   ; // [31..24] 
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
        unsigned int    Reserved_83           : 8   ; // [7..0] 
        unsigned int    cmixing_ratio         : 8   ; // [15..8] 
        unsigned int    cgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_82           : 3   ; // [30..28] 
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
        unsigned int    Reserved_84           : 8   ; // [31..24] 
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

// Define the union U_VPSS_DR_CFG0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_87           : 16  ; // [15..0] 
        unsigned int    drthrmaxsimilarpixdiff  : 5   ; // [20..16] 
        unsigned int    Reserved_86           : 3   ; // [23..21] 
        unsigned int    drthrflat3x3zone      : 5   ; // [28..24] 
        unsigned int    Reserved_85           : 3   ; // [31..29] 
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
        unsigned int    Reserved_90           : 11  ; // [15..5] 
        unsigned int    drbetascale           : 5   ; // [20..16] 
        unsigned int    Reserved_89           : 11  ; // [31..21] 
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
        unsigned int    Reserved_93           : 1   ; // [3] 
        unsigned int    dbtexten              : 1   ; // [4] 
        unsigned int    Reserved_92           : 3   ; // [7..5] 
        unsigned int    picestqp              : 8   ; // [15..8] 
        unsigned int    thrdbedgethr          : 8   ; // [23..16] 
        unsigned int    dbthrmaxgrad          : 5   ; // [28..24] 
        unsigned int    Reserved_91           : 3   ; // [31..29] 
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

// Define the union U_VPSS_DNR_INFO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    thrintlcolcnt         : 4   ; // [3..0] 
        unsigned int    thrintlcnt            : 4   ; // [7..4] 
        unsigned int    thdmaxgrad            : 8   ; // [15..8] 
        unsigned int    thdcntrst8            : 8   ; // [23..16] 
        unsigned int    Reserved_94           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DNR_INFO;

// Define the union U_VPSS_STRCSCIDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 9   ; // [8..0] 
        unsigned int    cscidc1               : 9   ; // [17..9] 
        unsigned int    cscidc2               : 9   ; // [26..18] 
        unsigned int    csc_en                : 1   ; // [27] 
        unsigned int    Reserved_95           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRCSCIDC;

// Define the union U_VPSS_STRCSCODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 9   ; // [8..0] 
        unsigned int    cscodc1               : 9   ; // [17..9] 
        unsigned int    cscodc2               : 9   ; // [26..18] 
        unsigned int    Reserved_97           : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRCSCODC;

// Define the union U_VPSS_STRCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_99           : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_98           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRCSCP0;

// Define the union U_VPSS_STRCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_101          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_100          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRCSCP1;

// Define the union U_VPSS_STRCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_103          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_102          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRCSCP2;

// Define the union U_VPSS_STRCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_105          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_104          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRCSCP3;

// Define the union U_VPSS_STRCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_106          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRCSCP4;

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



// Define the union U_VPSS_VC1_CTRL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fr0_vc1_profile       : 2   ; // [1..0] 
        unsigned int    fr0_vc1_rangedfrm     : 1   ; // [2] 
        unsigned int    fr0_vc1_mapyflg       : 1   ; // [3] 
        unsigned int    fr0_vc1_mapcflg       : 1   ; // [4] 
        unsigned int    fr0_vc1_bmapyflg      : 1   ; // [5] 
        unsigned int    fr0_vc1_bmapcflg      : 1   ; // [6] 
        unsigned int    Reserved_112          : 1   ; // [7] 
        unsigned int    fr0_vc1_mapy          : 3   ; // [10..8] 
        unsigned int    Reserved_111          : 1   ; // [11] 
        unsigned int    fr0_vc1_mapc          : 3   ; // [14..12] 
        unsigned int    Reserved_110          : 1   ; // [15] 
        unsigned int    fr0_vc1_bmapy         : 3   ; // [18..16] 
        unsigned int    Reserved_109          : 1   ; // [19] 
        unsigned int    fr0_vc1_bmapc         : 3   ; // [22..20] 
        unsigned int    Reserved_108          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VC1_CTRL0;

// Define the union U_VPSS_VC1_CTRL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fr1_vc1_profile       : 2   ; // [1..0] 
        unsigned int    fr1_vc1_rangedfrm     : 1   ; // [2] 
        unsigned int    fr1_vc1_mapyflg       : 1   ; // [3] 
        unsigned int    fr1_vc1_mapcflg       : 1   ; // [4] 
        unsigned int    fr1_vc1_bmapyflg      : 1   ; // [5] 
        unsigned int    fr1_vc1_bmapcflg      : 1   ; // [6] 
        unsigned int    Reserved_117          : 1   ; // [7] 
        unsigned int    fr1_vc1_mapy          : 3   ; // [10..8] 
        unsigned int    Reserved_116          : 1   ; // [11] 
        unsigned int    fr1_vc1_mapc          : 3   ; // [14..12] 
        unsigned int    Reserved_115          : 1   ; // [15] 
        unsigned int    fr1_vc1_bmapy         : 3   ; // [18..16] 
        unsigned int    Reserved_114          : 1   ; // [19] 
        unsigned int    fr1_vc1_bmapc         : 3   ; // [22..20] 
        unsigned int    Reserved_113          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VC1_CTRL1;

// Define the union U_VPSS_VC1_CTRL2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fr2_vc1_profile       : 2   ; // [1..0] 
        unsigned int    fr2_vc1_rangedfrm     : 1   ; // [2] 
        unsigned int    fr2_vc1_mapyflg       : 1   ; // [3] 
        unsigned int    fr2_vc1_mapcflg       : 1   ; // [4] 
        unsigned int    fr2_vc1_bmapyflg      : 1   ; // [5] 
        unsigned int    fr2_vc1_bmapcflg      : 1   ; // [6] 
        unsigned int    Reserved_122          : 1   ; // [7] 
        unsigned int    fr2_vc1_mapy          : 3   ; // [10..8] 
        unsigned int    Reserved_121          : 1   ; // [11] 
        unsigned int    fr2_vc1_mapc          : 3   ; // [14..12] 
        unsigned int    Reserved_120          : 1   ; // [15] 
        unsigned int    fr2_vc1_bmapy         : 3   ; // [18..16] 
        unsigned int    Reserved_119          : 1   ; // [19] 
        unsigned int    fr2_vc1_bmapc         : 3   ; // [22..20] 
        unsigned int    Reserved_118          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VC1_CTRL2;

// Define the union U_VPSS_VSDLBA_DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_124          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDLBA_DFPOS;

// Define the union U_VPSS_VSDLBA_DSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_width            : 12  ; // [11..0] 
        unsigned int    disp_height           : 12  ; // [23..12] 
        unsigned int    Reserved_126          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDLBA_DSIZE;

// Define the union U_VPSS_VSDLBA_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_127          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDLBA_VFPOS;

// Define the union U_VPSS_VSDLBA_VSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_width           : 12  ; // [11..0] 
        unsigned int    video_height          : 12  ; // [23..12] 
        unsigned int    Reserved_128          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VSDLBA_VSIZE;

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
        unsigned int    Reserved_129          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDLBA_DFPOS;

// Define the union U_VPSS_VHDLBA_DSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_width            : 12  ; // [11..0] 
        unsigned int    disp_height           : 12  ; // [23..12] 
        unsigned int    Reserved_131          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDLBA_DSIZE;

// Define the union U_VPSS_VHDLBA_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_132          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDLBA_VFPOS;

// Define the union U_VPSS_VHDLBA_VSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_width           : 12  ; // [11..0] 
        unsigned int    video_height          : 12  ; // [23..12] 
        unsigned int    Reserved_133          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDLBA_VSIZE;

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
        unsigned int    Reserved_134          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRLBA_DFPOS;

// Define the union U_VPSS_STRLBA_DSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_width            : 12  ; // [11..0] 
        unsigned int    disp_height           : 12  ; // [23..12] 
        unsigned int    Reserved_136          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRLBA_DSIZE;

// Define the union U_VPSS_STRLBA_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_137          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRLBA_VFPOS;

// Define the union U_VPSS_STRLBA_VSIZE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_width           : 12  ; // [11..0] 
        unsigned int    video_height          : 12  ; // [23..12] 
        unsigned int    Reserved_138          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_STRLBA_VSIZE;

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
        unsigned int    Reserved_140          : 30  ; // [29..0] 
        unsigned int    vid_mode              : 1   ; // [30] 
        unsigned int    Reserved_139          : 1   ; // [31] 
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

// Define the union U_VPSS_VHDCSCIDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 9   ; // [8..0] 
        unsigned int    cscidc1               : 9   ; // [17..9] 
        unsigned int    cscidc2               : 9   ; // [26..18] 
        unsigned int    csc_en                : 1   ; // [27] 
        unsigned int    Reserved_142          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDCSCIDC;

// Define the union U_VPSS_VHDCSCODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 9   ; // [8..0] 
        unsigned int    cscodc1               : 9   ; // [17..9] 
        unsigned int    cscodc2               : 9   ; // [26..18] 
        unsigned int    Reserved_143          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDCSCODC;

// Define the union U_VPSS_VHDCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_145          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_144          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDCSCP0;

// Define the union U_VPSS_VHDCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_147          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_146          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDCSCP1;

// Define the union U_VPSS_VHDCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_149          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_148          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDCSCP2;

// Define the union U_VPSS_VHDCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_151          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_150          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDCSCP3;

// Define the union U_VPSS_VHDCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_152          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_VHDCSCP4;

// Define the union U_VPSS_START
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    start                 : 1   ; // [0] 
        unsigned int    Reserved_154          : 31  ; // [31..1] 
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
        unsigned int    vhd_tunl_state        : 1   ; // [4] 
        unsigned int    vsd_tunl_state        : 1   ; // [5] 
        unsigned int    str_tunl_state        : 1   ; // [6] 
        unsigned int    dcmp_err              : 1   ; // [7] 
        unsigned int    Reserved_155          : 24  ; // [31..8] 
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
        unsigned int    vhd_tunl_clr          : 1   ; // [4] 
        unsigned int    vsd_tunl_clr          : 1   ; // [5] 
        unsigned int    str_tunl_clr          : 1   ; // [6] 
        unsigned int    dcmp_err_clr          : 1   ; // [7] 
        unsigned int    Reserved_156          : 24  ; // [31..8] 
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
        unsigned int    raw_vhd_state         : 1   ; // [4] 
        unsigned int    raw_vsd_state         : 1   ; // [5] 
        unsigned int    raw_str_state         : 1   ; // [6] 
        unsigned int    raw_dcmp_err          : 1   ; // [7] 
        unsigned int    Reserved_157          : 24  ; // [31..8] 
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
        unsigned int    ck_gt_en_calc         : 1   ; // [25] 
        unsigned int    Reserved_158          : 6   ; // [31..26] 
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
        unsigned int    mac_ch_prio           : 23  ; // [22..0] 
        unsigned int    Reserved_159          : 9   ; // [31..23] 
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
        unsigned int    Reserved_162          : 16  ; // [15..0] 
        unsigned int    stinfo_stop           : 1   ; // [16] 
        unsigned int    die_rst               : 1   ; // [17] 
        unsigned int    Reserved_161          : 6   ; // [23..18] 
        unsigned int    die_chmmode           : 2   ; // [25..24] 
        unsigned int    die_lmmode            : 2   ; // [27..26] 
        unsigned int    die_out_sel_c         : 1   ; // [28] 
        unsigned int    die_out_sel_l         : 1   ; // [29] 
        unsigned int    Reserved_160          : 2   ; // [31..30] 
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
        unsigned int    Reserved_166          : 2   ; // [1..0] 
        unsigned int    luma_scesdf_max       : 1   ; // [2] 
        unsigned int    Reserved_165          : 6   ; // [8..3] 
        unsigned int    luma_mf_max           : 1   ; // [9] 
        unsigned int    chroma_mf_max         : 1   ; // [10] 
        unsigned int    die_sad_thd           : 6   ; // [16..11] 
        unsigned int    Reserved_164          : 10  ; // [26..17] 
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
        unsigned int    Reserved_168          : 8   ; // [7..0] 
        unsigned int    dir_inten_ver         : 4   ; // [11..8] 
        unsigned int    Reserved_167          : 4   ; // [15..12] 
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
        unsigned int    Reserved_169          : 24  ; // [31..8] 
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
        unsigned int    Reserved_171          : 4   ; // [15..12] 
        unsigned int    ck_gain               : 4   ; // [19..16] 
        unsigned int    Reserved_170          : 12  ; // [31..20] 
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
        unsigned int    Reserved_173          : 4   ; // [15..12] 
        unsigned int    ck_gain               : 4   ; // [19..16] 
        unsigned int    Reserved_172          : 12  ; // [31..20] 
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
        unsigned int    Reserved_177          : 2   ; // [7..6] 
        unsigned int    dir1_mult             : 6   ; // [13..8] 
        unsigned int    Reserved_176          : 2   ; // [15..14] 
        unsigned int    dir2_mult             : 6   ; // [21..16] 
        unsigned int    Reserved_175          : 2   ; // [23..22] 
        unsigned int    dir3_mult             : 6   ; // [29..24] 
        unsigned int    Reserved_174          : 2   ; // [31..30] 
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
        unsigned int    Reserved_181          : 2   ; // [7..6] 
        unsigned int    dir5_mult             : 6   ; // [13..8] 
        unsigned int    Reserved_180          : 2   ; // [15..14] 
        unsigned int    dir6_mult             : 6   ; // [21..16] 
        unsigned int    Reserved_179          : 2   ; // [23..22] 
        unsigned int    dir7_mult             : 6   ; // [29..24] 
        unsigned int    Reserved_178          : 2   ; // [31..30] 
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
        unsigned int    Reserved_185          : 2   ; // [7..6] 
        unsigned int    dir9_mult             : 6   ; // [13..8] 
        unsigned int    Reserved_184          : 2   ; // [15..14] 
        unsigned int    dir10_mult            : 6   ; // [21..16] 
        unsigned int    Reserved_183          : 2   ; // [23..22] 
        unsigned int    dir11_mult            : 6   ; // [29..24] 
        unsigned int    Reserved_182          : 2   ; // [31..30] 
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
        unsigned int    Reserved_188          : 2   ; // [7..6] 
        unsigned int    dir13_mult            : 6   ; // [13..8] 
        unsigned int    Reserved_187          : 2   ; // [15..14] 
        unsigned int    dir14_mult            : 6   ; // [21..16] 
        unsigned int    Reserved_186          : 10  ; // [31..22] 
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
        unsigned int    cur_state             : 4   ; // [3..0] 
        unsigned int    cur_cstate            : 4   ; // [7..4] 
        unsigned int    l_height_cnt          : 12  ; // [19..8] 
        unsigned int    c_height_cnt          : 12  ; // [31..20] 
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
        unsigned int    Reserved_189          : 1   ; // [31] 
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
        unsigned int    Reserved_190          : 4   ; // [31..28] 
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
        unsigned int    Reserved_192          : 1   ; // [7] 
        unsigned int    dir_thd               : 4   ; // [11..8] 
        unsigned int    Reserved_191          : 4   ; // [15..12] 
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
        unsigned int    Reserved_194          : 2   ; // [27..26] 
        unsigned int    jitter_mode           : 1   ; // [28] 
        unsigned int    Reserved_193          : 3   ; // [31..29] 
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
        unsigned int    Reserved_195          : 2   ; // [19..18] 
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
        unsigned int    Reserved_199          : 3   ; // [7..5] 
        unsigned int    motion_curve_slope_1  : 5   ; // [12..8] 
        unsigned int    Reserved_198          : 3   ; // [15..13] 
        unsigned int    motion_curve_slope_2  : 5   ; // [20..16] 
        unsigned int    Reserved_197          : 3   ; // [23..21] 
        unsigned int    motion_curve_slope_3  : 5   ; // [28..24] 
        unsigned int    Reserved_196          : 3   ; // [31..29] 
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
        unsigned int    Reserved_201          : 3   ; // [11..9] 
        unsigned int    start_motion_ratio    : 4   ; // [15..12] 
        unsigned int    motion_curve_ratio_1  : 9   ; // [24..16] 
        unsigned int    Reserved_200          : 6   ; // [30..25] 
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
        unsigned int    Reserved_203          : 3   ; // [11..9] 
        unsigned int    min_motion_ratio      : 4   ; // [15..12] 
        unsigned int    motion_curve_ratio_3  : 9   ; // [24..16] 
        unsigned int    Reserved_202          : 3   ; // [27..25] 
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
        unsigned int    Reserved_207          : 3   ; // [7..5] 
        unsigned int    motion_iir_curve_slope_1  : 5   ; // [12..8] 
        unsigned int    Reserved_206          : 3   ; // [15..13] 
        unsigned int    motion_iir_curve_slope_2  : 5   ; // [20..16] 
        unsigned int    Reserved_205          : 3   ; // [23..21] 
        unsigned int    motion_iir_curve_slope_3  : 5   ; // [28..24] 
        unsigned int    Reserved_204          : 3   ; // [31..29] 
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
        unsigned int    Reserved_211          : 3   ; // [7..5] 
        unsigned int    motion_iir_curve_slope_5  : 5   ; // [12..8] 
        unsigned int    Reserved_210          : 3   ; // [15..13] 
        unsigned int    motion_iir_curve_slope_6  : 5   ; // [20..16] 
        unsigned int    Reserved_209          : 3   ; // [23..21] 
        unsigned int    motion_iir_curve_slope_7  : 5   ; // [28..24] 
        unsigned int    Reserved_208          : 3   ; // [31..29] 
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
        unsigned int    Reserved_213          : 3   ; // [11..9] 
        unsigned int    start_motion_iir_ratio  : 4   ; // [15..12] 
        unsigned int    motion_iir_curve_ratio_1  : 9   ; // [24..16] 
        unsigned int    Reserved_212          : 6   ; // [30..25] 
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
        unsigned int    Reserved_215          : 3   ; // [11..9] 
        unsigned int    min_motion_iir_ratio  : 4   ; // [15..12] 
        unsigned int    motion_iir_curve_ratio_3  : 9   ; // [24..16] 
        unsigned int    Reserved_214          : 3   ; // [27..25] 
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
        unsigned int    Reserved_217          : 7   ; // [15..9] 
        unsigned int    motion_iir_curve_ratio_5  : 9   ; // [24..16] 
        unsigned int    Reserved_216          : 7   ; // [31..25] 
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
        unsigned int    Reserved_219          : 7   ; // [15..9] 
        unsigned int    motion_iir_curve_ratio_7  : 9   ; // [24..16] 
        unsigned int    Reserved_218          : 7   ; // [31..25] 
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
        unsigned int    Reserved_221          : 3   ; // [27..25] 
        unsigned int    rec_mode_mix_mode     : 1   ; // [28] 
        unsigned int    rec_mode_en           : 1   ; // [29] 
        unsigned int    rec_mode_write_mode   : 1   ; // [30] 
        unsigned int    Reserved_220          : 1   ; // [31] 
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
        unsigned int    Reserved_226          : 1   ; // [3] 
        unsigned int    rec_mode_fld_motion_step_1  : 3   ; // [6..4] 
        unsigned int    Reserved_225          : 1   ; // [7] 
        unsigned int    rec_mode_frm_motion_step_0  : 2   ; // [9..8] 
        unsigned int    Reserved_224          : 2   ; // [11..10] 
        unsigned int    rec_mode_frm_motion_step_1  : 2   ; // [13..12] 
        unsigned int    Reserved_223          : 2   ; // [15..14] 
        unsigned int    ppre_info_en          : 1   ; // [16] 
        unsigned int    pre_info_en           : 1   ; // [17] 
        unsigned int    his_motion_en         : 1   ; // [18] 
        unsigned int    his_motion_using_mode  : 1   ; // [19] 
        unsigned int    his_motion_write_mode  : 1   ; // [20] 
        unsigned int    Reserved_222          : 11  ; // [31..21] 
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
        unsigned int    Reserved_228          : 10  ; // [19..10] 
        unsigned int    adjust_gain           : 4   ; // [23..20] 
        unsigned int    mor_flt_en            : 1   ; // [24] 
        unsigned int    deflicker_en          : 1   ; // [25] 
        unsigned int    med_blend_en          : 1   ; // [26] 
        unsigned int    Reserved_227          : 5   ; // [31..27] 
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
        unsigned int    Reserved_231          : 1   ; // [7] 
        unsigned int    comb_chk_md_thd       : 5   ; // [12..8] 
        unsigned int    Reserved_230          : 3   ; // [15..13] 
        unsigned int    comb_chk_en           : 1   ; // [16] 
        unsigned int    Reserved_229          : 15  ; // [31..17] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_DIECOMBCHK1;

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
        unsigned int    Reserved_233          : 8   ; // [31..24] 
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
        unsigned int    Reserved_235          : 16  ; // [18..3] 
        unsigned int    lasi_mode             : 1   ; // [19] 
        unsigned int    edge_smooth_ratio     : 8   ; // [27..20] 
        unsigned int    Reserved_234          : 1   ; // [28] 
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
        unsigned int    Reserved_236          : 8   ; // [31..24] 
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
        unsigned int    Reserved_237          : 8   ; // [31..24] 
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
        unsigned int    Reserved_238          : 16  ; // [31..16] 
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
        unsigned int    Reserved_239          : 20  ; // [31..12] 
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
        unsigned int    Reserved_240          : 8   ; // [31..24] 
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
        unsigned int    Reserved_241          : 8   ; // [31..24] 
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
        unsigned int    Reserved_242          : 24  ; // [31..8] 
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
        unsigned int    Reserved_243          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VPSS_PDLASITHD;

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
    volatile U_VPSS_CTRL2           VPSS_CTRL2;
    volatile U_VPSS_CTRL3           VPSS_CTRL3;
    volatile unsigned int           Reserved_6;
    volatile U_VPSS_IMGSIZE         VPSS_IMGSIZE;
    volatile U_VPSS_VSDSIZE         VPSS_VSDSIZE;
    volatile U_VPSS_VHDSIZE         VPSS_VHDSIZE;
    volatile U_VPSS_STRSIZE         VPSS_STRSIZE;
    volatile unsigned int           VPSS_LASTYADDR;
    volatile unsigned int           VPSS_LASTCBADDR;
    volatile unsigned int           VPSS_LASTCRADDR;
    volatile U_VPSS_LASTSTRIDE      VPSS_LASTSTRIDE;
    volatile unsigned int           VPSS_CURYADDR;
    volatile unsigned int           VPSS_CURCBADDR;
    volatile unsigned int           VPSS_CURCRADDR;
    volatile U_VPSS_CURSTRIDE       VPSS_CURSTRIDE;
    volatile unsigned int           VPSS_NEXTYADDR;
    volatile unsigned int           VPSS_NEXTCBADDR;
    volatile unsigned int           VPSS_NEXTCRADDR;
    volatile U_VPSS_NEXTSTRIDE      VPSS_NEXTSTRIDE;
    volatile unsigned int           VPSS_LASTY_HEAD_ADDR;
    volatile unsigned int           VPSS_LASTC_HEAD_ADDR;
    volatile unsigned int           VPSS_CURY_HEAD_ADDR;
    volatile unsigned int           VPSS_CURC_HEAD_ADDR;
    volatile unsigned int           VPSS_NEXTY_HEAD_ADDR;
    volatile unsigned int           VPSS_NEXTC_HEAD_ADDR;
    volatile unsigned int           Reserved_13[2];
    volatile unsigned int           VPSS_STRADDR;
    volatile unsigned int           VPSS_STWADDR;
    volatile U_VPSS_STSTRIDE        VPSS_STSTRIDE;
    volatile unsigned int           Reserved_15;
    volatile unsigned int           VPSS_VSDYADDR;
    volatile unsigned int           VPSS_VSDCADDR;
    volatile U_VPSS_VSDSTRIDE       VPSS_VSDSTRIDE;
    volatile unsigned int           VPSS_VHDY_HEAD_ADDR;
    volatile unsigned int           VPSS_VHDC_HEAD_ADDR;
    volatile unsigned int           VPSS_VHDYADDR;
    volatile unsigned int           VPSS_VHDCADDR;
    volatile U_VPSS_VHDSTRIDE       VPSS_VHDSTRIDE;
    volatile unsigned int           VPSS_STRYADDR;
    volatile unsigned int           VPSS_STRCADDR;
    volatile U_VPSS_STRSTRIDE       VPSS_STRSTRIDE;
    volatile U_VPSS_VHD_CMP_CTRL    VPSS_VHD_CMP_CTRL;
    volatile unsigned int           Reserved_19[2];
    volatile U_VPSS_TUNL_CTRL0      VPSS_TUNL_CTRL0;
    volatile U_VPSS_TUNL_CTRL1      VPSS_TUNL_CTRL1;
    volatile unsigned int           VPSS_VHD_TUNL_ADDR;
    volatile unsigned int           VPSS_STR_TUNL_ADDR;
    volatile unsigned int           VPSS_VSD_TUNL_ADDR;
    volatile unsigned int           VPSS_CUR_TUNL_ADDR;
    volatile U_VPSS_INCROP_POS      VPSS_INCROP_POS;
    volatile U_VPSS_INCROP_SIZE     VPSS_INCROP_SIZE;
    volatile U_VPSS_VSDCROP_POS     VPSS_VSDCROP_POS;
    volatile U_VPSS_VSDCROP_SIZE    VPSS_VSDCROP_SIZE;
    volatile U_VPSS_VHDCROP_POS     VPSS_VHDCROP_POS;
    volatile U_VPSS_VHDCROP_SIZE    VPSS_VHDCROP_SIZE;
    volatile U_VPSS_STRCROP_POS     VPSS_STRCROP_POS;
    volatile U_VPSS_STRCROP_SIZE    VPSS_STRCROP_SIZE;
    volatile unsigned int           VPSS_NODEID;
    volatile U_VPSS_AXIID           VPSS_AXIID;
    volatile U_VPSS_INTMASK         VPSS_INTMASK;
    volatile unsigned int           Reserved_42;
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
    volatile unsigned int           Reserved_77;
    volatile U_VPSS_STR_VOFFSET     VPSS_STR_VOFFSET;
    volatile U_VPSS_STR_ZMEORESO    VPSS_STR_ZMEORESO;
    volatile unsigned int           Reserved_80;
    volatile U_VPSS_STR_LTI_CTRL    VPSS_STR_LTI_CTRL;
    volatile U_VPSS_STR_LHPASS_COEF   VPSS_STR_LHPASS_COEF;
    volatile U_VPSS_STR_LTI_THD     VPSS_STR_LTI_THD;
    volatile U_VPSS_STR_LHFREQ_THD   VPSS_STR_LHFREQ_THD;
    volatile U_VPSS_STR_LGAIN_COEF   VPSS_STR_LGAIN_COEF;
    volatile U_VPSS_STR_CTI_CTRL    VPSS_STR_CTI_CTRL;
    volatile U_VPSS_STR_CHPASS_COEF   VPSS_STR_CHPASS_COEF;
    volatile U_VPSS_STR_CTI_THD     VPSS_STR_CTI_THD;
    volatile unsigned int           Reserved_88;
    volatile U_VPSS_DR_CFG0         VPSS_DR_CFG0;
    volatile U_VPSS_DR_CFG1         VPSS_DR_CFG1;
    volatile U_VPSS_DB_CFG0         VPSS_DB_CFG0;
    volatile U_VPSS_DB_CFG1         VPSS_DB_CFG1;
    volatile U_VPSS_DB_CFG2         VPSS_DB_CFG2;
    volatile U_VPSS_DNR_INFO        VPSS_DNR_INFO;
    volatile unsigned int           Reserved_96;
    volatile U_VPSS_STRCSCIDC       VPSS_STRCSCIDC;
    volatile U_VPSS_STRCSCODC       VPSS_STRCSCODC;
    volatile U_VPSS_STRCSCP0        VPSS_STRCSCP0;
    volatile U_VPSS_STRCSCP1        VPSS_STRCSCP1;
    volatile U_VPSS_STRCSCP2        VPSS_STRCSCP2;
    volatile U_VPSS_STRCSCP3        VPSS_STRCSCP3;
    volatile U_VPSS_STRCSCP4        VPSS_STRCSCP4;
    volatile unsigned int           Reserved_107;
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
    //volatile U_VPSS_VC1_CTRL1       VPSS_VC1_CTRL1;
    //volatile U_VPSS_VC1_CTRL2       VPSS_VC1_CTRL2;
    volatile unsigned int           Reserved_123;
    volatile unsigned int           VPSS_DEI_ADDR;
    volatile unsigned int           Reserved_125[7];
    volatile U_VPSS_VSDLBA_DFPOS    VPSS_VSDLBA_DFPOS;
    volatile U_VPSS_VSDLBA_DSIZE    VPSS_VSDLBA_DSIZE;
    volatile U_VPSS_VSDLBA_VFPOS    VPSS_VSDLBA_VFPOS;
    volatile U_VPSS_VSDLBA_VSIZE    VPSS_VSDLBA_VSIZE;
    volatile U_VPSS_VSDLBA_BK       VPSS_VSDLBA_BK;
    volatile unsigned int           Reserved_130[3];
    volatile U_VPSS_VHDLBA_DFPOS    VPSS_VHDLBA_DFPOS;
    volatile U_VPSS_VHDLBA_DSIZE    VPSS_VHDLBA_DSIZE;
    volatile U_VPSS_VHDLBA_VFPOS    VPSS_VHDLBA_VFPOS;
    volatile U_VPSS_VHDLBA_VSIZE    VPSS_VHDLBA_VSIZE;
    volatile U_VPSS_VHDLBA_BK       VPSS_VHDLBA_BK;
    volatile unsigned int           Reserved_135[3];
    volatile U_VPSS_STRLBA_DFPOS    VPSS_STRLBA_DFPOS;
    volatile U_VPSS_STRLBA_DSIZE    VPSS_STRLBA_DSIZE;
    volatile U_VPSS_STRLBA_VFPOS    VPSS_STRLBA_VFPOS;
    volatile U_VPSS_STRLBA_VSIZE    VPSS_STRLBA_VSIZE;
    volatile U_VPSS_STRLBA_BK       VPSS_STRLBA_BK;
    volatile unsigned int           Reserved_141[3];
    volatile U_STR_DET_VIDCTRL      STR_DET_VIDCTRL;
    volatile U_STR_DET_VIDBLKPOS0_1   STR_DET_VIDBLKPOS0_1;
    volatile U_STR_DET_VIDBLKPOS2_3   STR_DET_VIDBLKPOS2_3;
    volatile U_STR_DET_VIDBLKPOS4_5   STR_DET_VIDBLKPOS4_5;
    volatile U_VPSS_VHDCSCIDC       VPSS_VHDCSCIDC;
    volatile U_VPSS_VHDCSCODC       VPSS_VHDCSCODC;
    volatile U_VPSS_VHDCSCP0        VPSS_VHDCSCP0;
    volatile U_VPSS_VHDCSCP1        VPSS_VHDCSCP1;
    volatile U_VPSS_VHDCSCP2        VPSS_VHDCSCP2;
    volatile U_VPSS_VHDCSCP3        VPSS_VHDCSCP3;
    volatile U_VPSS_VHDCSCP4        VPSS_VHDCSCP4;
    volatile unsigned int           Reserved_153[4];
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
    volatile unsigned int           Reserved_163[823];
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
    volatile unsigned int           Reserved_232[23];
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
    volatile unsigned int           Reserved_246[8];
    volatile unsigned int           VPSS_PDPCCBLKBWD;
    volatile unsigned int           Reserved_247[8];
    volatile unsigned int           VPSS_PDLASICNT14;
    volatile unsigned int           VPSS_PDLASICNT32;
    volatile unsigned int           VPSS_PDLASICNT34;
    volatile unsigned int           Reserved_248[2944];
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
    volatile unsigned int           VPSS_DEBUG24;
    volatile unsigned int           VPSS_DEBUG25;
    volatile unsigned int           VPSS_DEBUG26;
    volatile unsigned int           VPSS_DEBUG27;
    volatile unsigned int           VPSS_DEBUG28;
    volatile unsigned int           VPSS_DEBUG29;
    volatile unsigned int           VPSS_DEBUG30;
    volatile unsigned int           VPSS_DEBUG31;
    volatile unsigned int           VPSS_DEBUG32;
    volatile unsigned int           VPSS_DEBUG33;
    volatile unsigned int           VPSS_DEBUG34;
    volatile unsigned int           VPSS_DEBUG35;
    volatile unsigned int           VPSS_DEBUG36;
    volatile unsigned int           VPSS_DEBUG37;
    volatile unsigned int           VPSS_DEBUG38;
    volatile unsigned int           VPSS_DEBUG39;
    volatile unsigned int           VPSS_DEBUG40;
    volatile unsigned int           VPSS_DEBUG41;
    volatile unsigned int           VPSS_DEBUG42;
    volatile unsigned int           VPSS_DEBUG43;
    volatile unsigned int           Reserved_249[980];
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
    volatile unsigned int           Reserved_250[4];
    volatile unsigned int           VPSS_DEI_WST_CHKSUM;
    volatile unsigned int           VPSS_VSD_Y_CHKSUM;
    volatile unsigned int           VPSS_VSD_C_CHKSUM;
    volatile unsigned int           VPSS_VHD_Y_CHKSUM;
    volatile unsigned int           VPSS_VHD_C_CHKSUM;
    volatile unsigned int           VPSS_STR_Y_CHKSUM;
    volatile unsigned int           VPSS_STR_C_CHKSUM;
    volatile unsigned int           Reserved_251;
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
    volatile unsigned int           VPSS_STR_HIST0;
    volatile unsigned int           VPSS_STR_HIST1;
    volatile unsigned int           VPSS_STR_HIST2;
    volatile unsigned int           VPSS_STR_HIST3;
    volatile unsigned int           VPSS_STR_HIST4;
    volatile unsigned int           VPSS_STR_HIST5;
    volatile unsigned int           VPSS_STR_HIST6;
    volatile unsigned int           VPSS_STR_HIST7;
    volatile unsigned int           VPSS_STR_HIST8;
    volatile unsigned int           VPSS_STR_HIST9;
    volatile unsigned int           VPSS_STR_HISTA;
    volatile unsigned int           VPSS_STR_HISTB;
    volatile unsigned int           VPSS_STR_HISTC;
    volatile unsigned int           VPSS_STR_HISTD;
    volatile unsigned int           VPSS_STR_HISTE;
    volatile unsigned int           VPSS_STR_HISTF;


} VPSS_REG_S;


/*read/write reg*/
HI_S32 VPSS_REG_RegWrite(volatile HI_U32 *a, HI_U32 b);
HI_U32 VPSS_REG_RegRead(volatile HI_U32* a);

/*reset reg*/
HI_S32 VPSS_REG_ReSetCRG(HI_VOID);

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


HI_S32 VPSS_REG_CloseClock(HI_VOID);
HI_S32 VPSS_REG_OpenClock(HI_VOID);

HI_S32 VPSS_REG_SetTimeOut(HI_U32 u32AppAddr,HI_U32 u32Data);

HI_S32 VPSS_REG_StartLogic(HI_U32 u32AppAddr,HI_U32 u32PhyAddr);

HI_S32 VPSS_REG_EnPort(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL bEnable);

/********************************/
HI_S32 VPSS_REG_SetImgSize(HI_U32 u32AppAddr,HI_U32 u32Height,HI_U32 u32Width,HI_BOOL bProgressive);
HI_S32 VPSS_REG_SetImgAddr(HI_U32 u32AppAddr,REG_FIELDPOS_E ePos,HI_U32 u32Yaddr,HI_U32 u32Cbaddr, HI_U32 u32Craddr);
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
HI_S32 VPSS_REG_SetDeiAddr(HI_U32 u32AppAddr,REG_FRAMEPOS_E eField,HI_U32 u32YAddr,HI_U32 u32CAddr, HI_U32 u32CrAddr);
HI_S32 VPSS_REG_SetDeiStride(HI_U32 u32AppAddr,REG_FRAMEPOS_E eField,HI_U32 u32YStride,HI_U32 u32CStride);
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
/*DB*/                          
HI_S32 VPSS_REG_SetDBEn(HI_U32 u32AppAddr,HI_BOOL  bEnDB);
HI_S32 VPSS_REG_SetDBVH(HI_U32 u32AppAddr,HI_BOOL  bEnVert, HI_BOOL bEnHor);
HI_S32 VPSS_REG_SetEdgeThd(HI_U32 u32AppAddr,HI_S32  s32Thd);
//HI_S32 VPSS_REG_SetVerProg(HI_U32 u32AppAddr,HI_BOOL  bProg);
HI_S32 VPSS_REG_SetThrGrad(HI_U32 u32AppAddr,HI_BOOL  bgrad);
HI_S32 VPSS_REG_SetTextEn(HI_U32 u32AppAddr,HI_BOOL  btexten);
HI_S32 VPSS_REG_SetWeakFlt(HI_U32 u32AppAddr,HI_BOOL  bWeak);
HI_S32 VPSS_REG_SetMaxDiff(HI_U32 u32AppAddr,HI_S32  s32VerMax,HI_S32  s32HorMax);
HI_S32 VPSS_REG_SetLeastDiff(HI_U32 u32AppAddr,HI_S32  s32VerLeast,HI_S32  s32HorLeast);
HI_S32 VPSS_REG_SetScale(HI_U32 u32AppAddr,HI_S32  s32Alpha,HI_S32  s32Beta);
HI_S32 VPSS_REG_SetSmoothThd(HI_U32 u32AppAddr,HI_S32  s32Thd);
HI_S32 VPSS_REG_SetQpThd(HI_U32 u32AppAddr,HI_S32  s32Thd);
HI_S32 VPSS_REG_SetPicestQp(HI_U32 u32AppAddr,HI_S32  s32Picest);
HI_S32 VPSS_REG_SetDnrInfo(HI_U32 u32AppAddr,HI_U32  u32Rcnt,HI_U32  u32Bcnt,HI_U32  u32MaxGrad,HI_U32  u32Cntrst8);







/*LBOX*/
HI_S32 VPSS_REG_SetLBAEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL bEnLba);
HI_S32 VPSS_REG_SetLBADispPosSize(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32XFPos,HI_U32 u32YFPos,
                            HI_U32 u32Height,HI_U32 u32Width);
HI_S32 VPSS_REG_SetLBAVidPos(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32XFPos,HI_U32 u32YFPos,
                            HI_U32 u32Height,HI_U32 u32Width);

HI_S32 VPSS_REG_SetVhdCmpEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL  bEnVhdCmp);
HI_S32 VPSS_REG_SetVhdCmpAddr(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort, HI_U32 u32YHeadaddr,HI_U32 u32CHeadaddr);
HI_S32 VPSS_REG_SetVhdCmpDrr(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort, HI_U32 u32VhdCmpDrr);
HI_S32 VPSS_REG_SetVhdCmpLossyEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort, HI_BOOL  bEnVhdCmpLossy);
HI_S32 VPSS_REG_SetDcmpEn(HI_U32 u32AppAddr,HI_BOOL  bEnDcmp);
HI_S32 VPSS_REG_SetDcmpHeadAddr(HI_U32 u32AppAddr,REG_FIELDPOS_E ePos,HI_U32 u32YHeadaddr,HI_U32 u32CHeadaddr);
HI_S32 VPSS_REG_SetTunlEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL  bEnTunl);
HI_S32 VPSS_REG_SetTunlFinishLine(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_S32  s32FinishLine);
HI_S32 VPSS_REG_SetTunlMode(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort, REG_TUNLPOS_E  s32TunlMode);
HI_S32 VPSS_REG_SetTunlAddr(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32TunlAddr);
HI_S32 VPSS_REG_SetCurTunlAddr(HI_U32 u32AppAddr,REG_FRAMEPOS_E  ePort,HI_U32 u32TunlAddr);
HI_S32 VPSS_REG_SetCurTunlEn(HI_U32 u32AppAddr,HI_BOOL u32CurTunlEn);
HI_S32 VPSS_REG_SetCurTunlInterval(HI_U32 u32AppAddr,REG_FRAMEPOS_E ePort,HI_S32  s32CurTunlInterval);
HI_S32 VPSS_REG_SetCscEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL  bEnCSC);
HI_S32 VPSS_REG_SetCscIdc(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscIdc0,HI_U32 u32CscIdc1,HI_U32 u32CscIdc2);
HI_S32 VPSS_REG_SetCscOdc(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscOdc0,HI_U32 u32CscOdc1,HI_U32 u32CscOdc2);
HI_S32 VPSS_REG_SetCscP00(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscP00);
HI_S32 VPSS_REG_SetCscP01(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscP01);
HI_S32 VPSS_REG_SetCscP02(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscP02);
HI_S32 VPSS_REG_SetCscP10(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscP10);
HI_S32 VPSS_REG_SetCscP11(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscP11);
HI_S32 VPSS_REG_SetCscP12(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscP12);
HI_S32 VPSS_REG_SetCscP20(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscP20);
HI_S32 VPSS_REG_SetCscP21(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscP21);
HI_S32 VPSS_REG_SetCscP22(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CscP22);
#if 1
HI_S32 VPSS_REG_SetInCropPos(HI_U32 u32AppAddr,HI_U32 u32InCropY,HI_U32 u32InCropX);
HI_S32 VPSS_REG_SetInCropEn(HI_U32 u32AppAddr,HI_BOOL bInCropEn);
HI_S32 VPSS_REG_SetInCropMode(HI_U32 u32AppAddr,HI_BOOL bInCropMode);
HI_S32 VPSS_REG_SetInCropSize(HI_U32 u32AppAddr,HI_U32 u32InCropHeight,HI_U32 u32InCropWidth);
HI_S32 VPSS_REG_SetPortCropPos(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CropY,HI_U32 u32CropX);
HI_S32 VPSS_REG_SetPortCropSize(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32CropHeight,HI_U32 u32CropWidth);
HI_S32 VPSS_REG_SetPortCropEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_BOOL bPortCropEn);
#endif

HI_S32 VPSS_REG_SetPortMirrorEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort, HI_BOOL bMirrorEn);
HI_S32 VPSS_REG_SetPortFlipEn(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort, HI_BOOL bFlipEn);
HI_S32 VPSS_REG_SetPreHfirEn(HI_U32 u32AppAddr, HI_BOOL bHfirEn);
HI_S32 VPSS_REG_SetPreHfirMode(HI_U32 u32AppAddr, HI_U32 u32HfirMode);
HI_S32 VPSS_REG_SetPreVfirEn(HI_U32 u32AppAddr,HI_BOOL bVfirEn);
HI_S32 VPSS_REG_SetPreVfirMode(HI_U32 u32AppAddr, HI_U32 u32VfirMode);
HI_S32 VPSS_REG_SetRotation(HI_U32 u32AppAddr,HI_U32 u32Angle);

HI_S32 VPSS_REG_GetReg(HI_U32 u32AppAddr,HI_U32 *pu32Int);

HI_S32 VPSS_REG_SetLBABg(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32Color,HI_U32 u32Alpha);
HI_S32 VPSS_REG_SetLBADispPos(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32XFPos,HI_U32 u32YFPos,
                            HI_U32 u32Height,HI_U32 u32Width);
HI_S32 VPSS_REG_SetLBAVidPos(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32XFPos,HI_U32 u32YFPos,
                            HI_U32 u32Height,HI_U32 u32Width);
HI_S32 VPSS_REG_SetOutCropVidPos(HI_U32 u32AppAddr,VPSS_REG_PORT_E ePort,HI_U32 u32XFPos,HI_U32 u32YFPos,
                            HI_U32 u32Height,HI_U32 u32Width);
HI_S32 VPSS_REG_SetFidelity(HI_U32 u32AppVAddr,HI_BOOL bEnFidelity); 

HI_S32 VPSS_REG_SetStMode(HI_U32 u32AppVAddr,HI_BOOL bLumaMax,HI_BOOL bChromaMax);

HI_S32 VPSS_REG_SetPreZme(HI_U32 u32AppVAddr,VPSS_REG_PORT_E ePort,
                            VPSS_REG_PREZME_E enHor,VPSS_REG_PREZME_E enVer);
#endif
