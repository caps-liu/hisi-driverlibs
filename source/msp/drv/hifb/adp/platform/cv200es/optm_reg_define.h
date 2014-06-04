//******************************************************************************
//  Copyright (C), 2007-2012, Hisilicon Technologies Co., Ltd.
//
//******************************************************************************
// File name     : c_union_define.h
// Version       : 2.0
// Author        : xxx
// Created       : 2012-11-21
// Last Modified : 
// Description   :  The C union definition file for the module VOU_V400
// Function List : 
// History       : 
// 1 Date        : 
// Author        : xxx
// Modification  : Create file
//******************************************************************************

#ifndef __DRIVER_DEFINE_H__
#define __DRIVER_DEFINE_H__

// Define the union U_VOCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    m0_arb_mode           : 4   ; // [3..0] 
        unsigned int    Reserved_1            : 16  ; // [19..4] 
        unsigned int    bus_dbg_en            : 2   ; // [21..20] 
        unsigned int    m1_arb_mode           : 4   ; // [25..22] 
        unsigned int    Reserved_0            : 5   ; // [30..26] 
        unsigned int    vo_ck_gt_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VOCTRL;

// Define the union U_VOINTSTA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dhd0vtthd1_int        : 1   ; // [0] 
        unsigned int    dhd0vtthd2_int        : 1   ; // [1] 
        unsigned int    dhd0vtthd3_int        : 1   ; // [2] 
        unsigned int    dhd0uf_int            : 1   ; // [3] 
        unsigned int    dhd1vtthd1_int        : 1   ; // [4] 
        unsigned int    dhd1vtthd2_int        : 1   ; // [5] 
        unsigned int    dhd1vtthd3_int        : 1   ; // [6] 
        unsigned int    dhd1uf_int            : 1   ; // [7] 
        unsigned int    gwbc0_vte_int         : 1   ; // [8] 
        unsigned int    dwbc0_vte_int         : 1   ; // [9] 
        unsigned int    Reserved_3            : 6   ; // [15..10] 
        unsigned int    v0rr_int              : 1   ; // [16] 
        unsigned int    v1rr_int              : 1   ; // [17] 
        unsigned int    v2rr_int              : 1   ; // [18] 
        unsigned int    v3rr_int              : 1   ; // [19] 
        unsigned int    v4rr_int              : 1   ; // [20] 
        unsigned int    v5rr_int              : 1   ; // [21] 
        unsigned int    g0rr_int              : 1   ; // [22] 
        unsigned int    g1rr_int              : 1   ; // [23] 
        unsigned int    g2rr_int              : 1   ; // [24] 
        unsigned int    g3rr_int              : 1   ; // [25] 
        unsigned int    g4rr_int              : 1   ; // [26] 
        unsigned int    g5rr_int              : 1   ; // [27] 
        unsigned int    Reserved_2            : 1   ; // [28] 
        unsigned int    ut_end_int            : 1   ; // [29] 
        unsigned int    m0_be_int             : 1   ; // [30] 
        unsigned int    m1_be_int             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VOINTSTA;

// Define the union U_VOMSKINTSTA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dhd0vtthd1_clr        : 1   ; // [0] 
        unsigned int    dhd0vtthd2_clr        : 1   ; // [1] 
        unsigned int    dhd0vtthd3_clr        : 1   ; // [2] 
        unsigned int    dhd0uf_clr            : 1   ; // [3] 
        unsigned int    dhd1vtthd1_clr        : 1   ; // [4] 
        unsigned int    dhd1vtthd2_clr        : 1   ; // [5] 
        unsigned int    dhd1vtthd3_clr        : 1   ; // [6] 
        unsigned int    dhd1uf_clr            : 1   ; // [7] 
        unsigned int    gwbc0_vte_clr         : 1   ; // [8] 
        unsigned int    dwbc0_vte_clr         : 1   ; // [9] 
        unsigned int    Reserved_5            : 6   ; // [15..10] 
        unsigned int    v0rr_clr              : 1   ; // [16] 
        unsigned int    v1rr_clr              : 1   ; // [17] 
        unsigned int    v2rr_clr              : 1   ; // [18] 
        unsigned int    v3rr_clr              : 1   ; // [19] 
        unsigned int    v4rr_clr              : 1   ; // [20] 
        unsigned int    v5rr_clr              : 1   ; // [21] 
        unsigned int    g0rr_clr              : 1   ; // [22] 
        unsigned int    g1rr_clr              : 1   ; // [23] 
        unsigned int    g2rr_clr              : 1   ; // [24] 
        unsigned int    g3rr_clr              : 1   ; // [25] 
        unsigned int    g4rr_clr              : 1   ; // [26] 
        unsigned int    g5rr_clr              : 1   ; // [27] 
        unsigned int    Reserved_4            : 1   ; // [28] 
        unsigned int    ut_end_clr            : 1   ; // [29] 
        unsigned int    m0_be_clr             : 1   ; // [30] 
        unsigned int    m1_be_clr             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VOMSKINTSTA;

// Define the union U_VOINTMSK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dhd0vtthd1_intmsk     : 1   ; // [0] 
        unsigned int    dhd0vtthd2_intmsk     : 1   ; // [1] 
        unsigned int    dhd0vtthd3_intmsk     : 1   ; // [2] 
        unsigned int    dhd0uf_intmsk         : 1   ; // [3] 
        unsigned int    dhd1vtthd1_intmsk     : 1   ; // [4] 
        unsigned int    dhd1vtthd2_intmsk     : 1   ; // [5] 
        unsigned int    dhd1vtthd3_intmsk     : 1   ; // [6] 
        unsigned int    dhd1uf_intmsk         : 1   ; // [7] 
        unsigned int    gwbc0_vte_intmsk      : 1   ; // [8] 
        unsigned int    dwbc0_vte_intmsk      : 1   ; // [9] 
        unsigned int    Reserved_7            : 6   ; // [15..10] 
        unsigned int    v0rr_intmsk           : 1   ; // [16] 
        unsigned int    v1rr_intmsk           : 1   ; // [17] 
        unsigned int    v2rr_intmsk           : 1   ; // [18] 
        unsigned int    v3rr_intmsk           : 1   ; // [19] 
        unsigned int    v4rr_intmsk           : 1   ; // [20] 
        unsigned int    v5rr_intmsk           : 1   ; // [21] 
        unsigned int    g0rr_intmsk           : 1   ; // [22] 
        unsigned int    g1rr_intmsk           : 1   ; // [23] 
        unsigned int    g2rr_intmsk           : 1   ; // [24] 
        unsigned int    g3rr_intmsk           : 1   ; // [25] 
        unsigned int    g4rr_intmsk           : 1   ; // [26] 
        unsigned int    g5rr_intmsk           : 1   ; // [27] 
        unsigned int    Reserved_6            : 1   ; // [28] 
        unsigned int    ut_end_intmsk         : 1   ; // [29] 
        unsigned int    m0_be_intmsk          : 1   ; // [30] 
        unsigned int    m1_be_intmsk          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VOINTMSK;

// Define the union U_VOUVERSION1
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vouversion0             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_VOUVERSION1;
// Define the union U_VOUVERSION2
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vouversion1             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_VOUVERSION2;
// Define the union U_VODEBUG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    rm_en_chn             : 4   ; // [3..0] 
        unsigned int    dhd0_ff_info          : 2   ; // [5..4] 
        unsigned int    dhd1_ff_info          : 2   ; // [7..6] 
        unsigned int    bfm_vga_en            : 1   ; // [8] 
        unsigned int    bfm_cvbs_en           : 1   ; // [9] 
        unsigned int    bfm_lcd_en            : 1   ; // [10] 
        unsigned int    bfm_bt1120_en         : 1   ; // [11] 
        unsigned int    wbc2_ff_info          : 2   ; // [13..12] 
        unsigned int    wbc_mode              : 4   ; // [17..14] 
        unsigned int    node_num              : 6   ; // [23..18] 
        unsigned int    wbc_cmp_mode          : 2   ; // [25..24] 
        unsigned int    bfm_mode              : 3   ; // [28..26] 
        unsigned int    Reserved_8            : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VODEBUG;

// Define the union U_VODDRSEL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    v0_ddr_sel            : 1   ; // [0] 
        unsigned int    vad_ddr_sel           : 1   ; // [1] 
        unsigned int    vsd_ddr_sel           : 1   ; // [2] 
        unsigned int    g0_ddr_sel            : 1   ; // [3] 
        unsigned int    g1_ddr_sel            : 1   ; // [4] 
        unsigned int    g2_ddr_sel            : 1   ; // [5] 
        unsigned int    g3_ddr_sel            : 1   ; // [6] 
        unsigned int    hc_ddr_sel            : 1   ; // [7] 
        unsigned int    wbc0_ddr_sel          : 1   ; // [8] 
        unsigned int    wbc1_ddr_sel          : 1   ; // [9] 
        unsigned int    wbc2_ddr_sel          : 1   ; // [10] 
        unsigned int    wbc3_ddr_sel          : 1   ; // [11] 
        unsigned int    wbc4_ddr_sel          : 1   ; // [12] 
        unsigned int    wbc5_ddr_sel          : 1   ; // [13] 
        unsigned int    wbc_nr_ddr_sel        : 1   ; // [14] 
        unsigned int    para_ddr_sel          : 1   ; // [15] 
        unsigned int    sddate_ddr_sel        : 1   ; // [16] 
        unsigned int    Reserved_10           : 15  ; // [31..17] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VODDRSEL;

// Define the union U_VOAXICTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    m0_outstd_rid0        : 4   ; // [3..0] 
        unsigned int    m0_outstd_rid1        : 4   ; // [7..4] 
        unsigned int    m0_wr_ostd            : 4   ; // [11..8] 
        unsigned int    Reserved_13           : 3   ; // [14..12] 
        unsigned int    m0_id_sel             : 1   ; // [15] 
        unsigned int    m1_outstd_rid0        : 4   ; // [19..16] 
        unsigned int    m1_outstd_rid1        : 4   ; // [23..20] 
        unsigned int    m1_wr_ostd            : 4   ; // [27..24] 
        unsigned int    Reserved_12           : 3   ; // [30..28] 
        unsigned int    m1_id_sel             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VOAXICTRL;

// Define the union U_VO_MUX
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    sddate_sel            : 1   ; // [0] 
        unsigned int    hddate_sel            : 1   ; // [1] 
        unsigned int    vga_sel               : 1   ; // [2] 
        unsigned int    hdmi_sel              : 1   ; // [3] 
        unsigned int    digital_sel           : 2   ; // [5..4] 
        unsigned int    Reserved_14           : 26  ; // [31..6] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_MUX;

// Define the union U_VO_MUX_DAC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dac0_sel              : 4   ; // [3..0] 
        unsigned int    dac1_sel              : 4   ; // [7..4] 
        unsigned int    dac2_sel              : 4   ; // [11..8] 
        unsigned int    dac3_sel              : 4   ; // [15..12] 
        unsigned int    Reserved_16           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_MUX_DAC;

// Define the union U_VO_MUX_TESTSYNC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    test_dv               : 1   ; // [0] 
        unsigned int    test_hsync            : 1   ; // [1] 
        unsigned int    test_vsync            : 1   ; // [2] 
        unsigned int    test_field            : 1   ; // [3] 
        unsigned int    Reserved_17           : 27  ; // [30..4] 
        unsigned int    vo_test_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_MUX_TESTSYNC;

// Define the union U_VO_MUX_TESTDATA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    test_data             : 30  ; // [29..0] 
        unsigned int    Reserved_18           : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_MUX_TESTDATA;

// Define the union U_VO_DAC_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_19           : 6   ; // [5..0] 
        unsigned int    ctbl_in_c             : 8   ; // [13..6] 
        unsigned int    iso_rct               : 1   ; // [14] 
        unsigned int    en_rct                : 1   ; // [15] 
        unsigned int    trim_vcml             : 3   ; // [18..16] 
        unsigned int    trim_vcmh             : 3   ; // [21..19] 
        unsigned int    trim_dg               : 3   ; // [24..22] 
        unsigned int    trim_bg               : 4   ; // [28..25] 
        unsigned int    iso_bg                : 1   ; // [29] 
        unsigned int    mode_bg               : 1   ; // [30] 
        unsigned int    en_bg                 : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_DAC_CTRL;

// Define the union U_VO_DAC_C_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_22           : 2   ; // [1..0] 
        unsigned int    ctrl_in_c             : 8   ; // [9..2] 
        unsigned int    prg_en_c              : 1   ; // [10] 
        unsigned int    cla_step_c            : 2   ; // [12..11] 
        unsigned int    dem_c                 : 2   ; // [14..13] 
        unsigned int    ct_c                  : 6   ; // [20..15] 
        unsigned int    rc_c                  : 4   ; // [24..21] 
        unsigned int    sel_c                 : 2   ; // [26..25] 
        unsigned int    mode_c                : 1   ; // [27] 
        unsigned int    iso_c                 : 1   ; // [28] 
        unsigned int    Reserved_21           : 1   ; // [29] 
        unsigned int    en_buf_c              : 1   ; // [30] 
        unsigned int    en_c                  : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_DAC_C_CTRL;

// Define the union U_VO_DAC_R_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_25           : 2   ; // [1..0] 
        unsigned int    ctrl_in_r             : 8   ; // [9..2] 
        unsigned int    prg_en_r              : 1   ; // [10] 
        unsigned int    cla_step_r            : 2   ; // [12..11] 
        unsigned int    dem_r                 : 2   ; // [14..13] 
        unsigned int    ct_r                  : 6   ; // [20..15] 
        unsigned int    rc_r                  : 4   ; // [24..21] 
        unsigned int    sel_r                 : 2   ; // [26..25] 
        unsigned int    mode_r                : 1   ; // [27] 
        unsigned int    iso_r                 : 1   ; // [28] 
        unsigned int    Reserved_24           : 1   ; // [29] 
        unsigned int    en_buf_r              : 1   ; // [30] 
        unsigned int    en_r                  : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_DAC_R_CTRL;

// Define the union U_VO_DAC_G_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_27           : 2   ; // [1..0] 
        unsigned int    ctrl_in_g             : 8   ; // [9..2] 
        unsigned int    prg_en_g              : 1   ; // [10] 
        unsigned int    cla_step_g            : 2   ; // [12..11] 
        unsigned int    dem_g                 : 2   ; // [14..13] 
        unsigned int    ct_g                  : 6   ; // [20..15] 
        unsigned int    rc_g                  : 4   ; // [24..21] 
        unsigned int    sel_g                 : 2   ; // [26..25] 
        unsigned int    mode_g                : 1   ; // [27] 
        unsigned int    iso_g                 : 1   ; // [28] 
        unsigned int    Reserved_26           : 1   ; // [29] 
        unsigned int    en_buf_g              : 1   ; // [30] 
        unsigned int    en_g                  : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_DAC_G_CTRL;

// Define the union U_VO_DAC_B_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_29           : 2   ; // [1..0] 
        unsigned int    ctrl_in_b             : 8   ; // [9..2] 
        unsigned int    prg_en_b              : 1   ; // [10] 
        unsigned int    cla_step_b            : 2   ; // [12..11] 
        unsigned int    dem_b                 : 2   ; // [14..13] 
        unsigned int    ct_b                  : 6   ; // [20..15] 
        unsigned int    rc_b                  : 4   ; // [24..21] 
        unsigned int    sel_b                 : 2   ; // [26..25] 
        unsigned int    mode_b                : 1   ; // [27] 
        unsigned int    iso_b                 : 1   ; // [28] 
        unsigned int    Reserved_28           : 1   ; // [29] 
        unsigned int    en_buf_b              : 1   ; // [30] 
        unsigned int    en_b                  : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_DAC_B_CTRL;

// Define the union U_VO_DAC_STAT0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dout_rct              : 6   ; // [5..0] 
        unsigned int    Reserved_30           : 26  ; // [31..6] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_DAC_STAT0;

// Define the union U_VO_DAC_STAT1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ctbl_out_c            : 8   ; // [7..0] 
        unsigned int    ctrl_out_b            : 8   ; // [15..8] 
        unsigned int    ctrl_out_g            : 8   ; // [23..16] 
        unsigned int    ctrl_out_r            : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VO_DAC_STAT1;

// Define the union U_COEF_DATA
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_data               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_COEF_DATA;
// Define the union U_V0_PARARD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    v0_hlcoef_rd          : 1   ; // [0] 
        unsigned int    v0_hccoef_rd          : 1   ; // [1] 
        unsigned int    v0_vlcoef_rd          : 1   ; // [2] 
        unsigned int    v0_vccoef_rd          : 1   ; // [3] 
        unsigned int    Reserved_32           : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_PARARD;

// Define the union U_V1_PARARD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    v1_hlcoef_rd          : 1   ; // [0] 
        unsigned int    v1_hccoef_rd          : 1   ; // [1] 
        unsigned int    v1_vlcoef_rd          : 1   ; // [2] 
        unsigned int    v1_vccoef_rd          : 1   ; // [3] 
        unsigned int    Reserved_34           : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V1_PARARD;

// Define the union U_V3_PARARD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    v3_hlcoef_rd          : 1   ; // [0] 
        unsigned int    v3_hccoef_rd          : 1   ; // [1] 
        unsigned int    v3_vlcoef_rd          : 1   ; // [2] 
        unsigned int    v3_vccoef_rd          : 1   ; // [3] 
        unsigned int    Reserved_35           : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V3_PARARD;

// Define the union U_VP0_PARARD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vp0_acmlut_rd         : 1   ; // [0] 
        unsigned int    vp0_abchbw_rd         : 1   ; // [1] 
        unsigned int    vp0_abcdiv_rd         : 1   ; // [2] 
        unsigned int    vp0_abclut_rd         : 1   ; // [3] 
        unsigned int    Reserved_37           : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_PARARD;

// Define the union U_GP0_PARARD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    gp0_hlcoef_rd         : 1   ; // [0] 
        unsigned int    gp0_hccoef_rd         : 1   ; // [1] 
        unsigned int    gp0_vlcoef_rd         : 1   ; // [2] 
        unsigned int    gp0_vccoef_rd         : 1   ; // [3] 
        unsigned int    gp0_gti_hlcoef_rd     : 1   ; // [4] 
        unsigned int    gp0_gti_hccoef_rd     : 1   ; // [5] 
        unsigned int    gp0_gti_vlcoef_rd     : 1   ; // [6] 
        unsigned int    gp0_gti_vccoef_rd     : 1   ; // [7] 
        unsigned int    Reserved_39           : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_PARARD;

// Define the union U_GP1_PARARD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    gp1_hlcoef_rd         : 1   ; // [0] 
        unsigned int    gp1_hccoef_rd         : 1   ; // [1] 
        unsigned int    gp1_vlcoef_rd         : 1   ; // [2] 
        unsigned int    gp1_vccoef_rd         : 1   ; // [3] 
        unsigned int    gp1_gti_hlcoef_rd     : 1   ; // [4] 
        unsigned int    gp1_gti_hccoef_rd     : 1   ; // [5] 
        unsigned int    gp1_gti_vlcoef_rd     : 1   ; // [6] 
        unsigned int    gp1_gti_vccoef_rd     : 1   ; // [7] 
        unsigned int    Reserved_41           : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_PARARD;

// Define the union U_WBC0_PARARD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wbc0_hlcoef_rd        : 1   ; // [0] 
        unsigned int    wbc0_hccoef_rd        : 1   ; // [1] 
        unsigned int    wbc0_vlcoef_rd        : 1   ; // [2] 
        unsigned int    wbc0_vccoef_rd        : 1   ; // [3] 
        unsigned int    Reserved_42           : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC0_PARARD;

// Define the union U_WBC1_PARARD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wbc1_hlcoef_rd        : 1   ; // [0] 
        unsigned int    wbc1_hccoef_rd        : 1   ; // [1] 
        unsigned int    wbc1_vlcoef_rd        : 1   ; // [2] 
        unsigned int    wbc1_vccoef_rd        : 1   ; // [3] 
        unsigned int    Reserved_44           : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC1_PARARD;

// Define the union U_DHD0_PARARD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dhd0_gmmr_rd          : 1   ; // [0] 
        unsigned int    dhd0_gmmg_rd          : 1   ; // [1] 
        unsigned int    dhd0_gmmb_rd          : 1   ; // [2] 
        unsigned int    Reserved_45           : 29  ; // [31..3] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_PARARD;

// Define the union U_DHD1_PARARD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dhd1_gmmr_rd          : 1   ; // [0] 
        unsigned int    dhd1_gmmg_rd          : 1   ; // [1] 
        unsigned int    dhd1_gmmb_rd          : 1   ; // [2] 
        unsigned int    Reserved_47           : 29  ; // [31..3] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_PARARD;

// Define the union U_V0_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ifmt                  : 4   ; // [3..0] 
        unsigned int    vicap_abnm_en         : 1   ; // [4] 
        unsigned int    time_out              : 3   ; // [7..5] 
        unsigned int    disp_mode             : 3   ; // [10..8] 
        unsigned int    uv_order              : 1   ; // [11] 
        unsigned int    chm_rmode             : 2   ; // [13..12] 
        unsigned int    lm_rmode              : 2   ; // [15..14] 
        unsigned int    bfield_first          : 1   ; // [16] 
        unsigned int    vup_mode              : 1   ; // [17] 
        unsigned int    ifir_mode             : 2   ; // [19..18] 
        unsigned int    Reserved_48           : 3   ; // [22..20] 
        unsigned int    v0_sta_wr_en          : 1   ; // [23] 
        unsigned int    ofl_btm               : 1   ; // [24] 
        unsigned int    ofl_inter             : 1   ; // [25] 
        unsigned int    flip_en               : 1   ; // [26] 
        unsigned int    mute_en               : 1   ; // [27] 
        unsigned int    data_width            : 2   ; // [29..28] 
        unsigned int    ofl_mode              : 1   ; // [30] 
        unsigned int    surface_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_CTRL;

// Define the union U_V0_UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    off_line              : 1   ; // [1] 
        unsigned int    layer_busy            : 1   ; // [2] 
        unsigned int    nr_wbc_busy_c         : 1   ; // [3] 
        unsigned int    nr_wbc_busy_l         : 1   ; // [4] 
        unsigned int    wbc1_sta_c            : 1   ; // [5] 
        unsigned int    wbc1_sta_l            : 1   ; // [6] 
        unsigned int    wbc3_sta_c            : 1   ; // [7] 
        unsigned int    wbc3_sta_l            : 1   ; // [8] 
        unsigned int    tmu_vreg_newer        : 1   ; // [9] 
        unsigned int    ffc_ff                : 1   ; // [10] 
        unsigned int    para_load_v0_use      : 1   ; // [11] 
        unsigned int    para_load_v0          : 1   ; // [12] 
        unsigned int    vtreg_sta_offline     : 1   ; // [13] 
        unsigned int    ffc_vtb_para          : 1   ; // [14] 
        unsigned int    vtreg_sta_offline_ff  : 1   ; // [15] 
        unsigned int    wbc_busy              : 1   ; // [16] 
        unsigned int    para_busy             : 1   ; // [17] 
        unsigned int    para_wbc0_busy        : 1   ; // [18] 
        unsigned int    wbc_sta               : 1   ; // [19] 
        unsigned int    ffc_vtb               : 1   ; // [20] 
        unsigned int    st_wr_sta             : 1   ; // [21] 
        unsigned int    v0_done_sta           : 1   ; // [22] 
        unsigned int    vte_sta               : 1   ; // [23] 
        unsigned int    v0_rr_sta             : 1   ; // [24] 
        unsigned int    para_load_disen       : 1   ; // [25] 
        unsigned int    cas_sel_nr            : 1   ; // [26] 
        unsigned int    cas_sel_cl            : 1   ; // [27] 
        unsigned int    cas_sel_zme           : 1   ; // [28] 
        unsigned int    cas_sel_zme1          : 1   ; // [29] 
        unsigned int    cas_sel_pd            : 1   ; // [30] 
        unsigned int    cas_sel_die           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_UPD;

// Define the union U_V0_CADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_caddr           : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_V0_CADDR;
// Define the union U_V0_CCADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_ccaddr          : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_V0_CCADDR;
// Define the union U_V0_NADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_naddr           : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_V0_NADDR;
// Define the union U_V0_NCADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_ncaddr          : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_V0_NCADDR;
// Define the union U_V0_PRERD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_51           : 31  ; // [30..0] 
        unsigned int    pre_rd_en             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_PRERD;

// Define the union U_V0_STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    surface_stride        : 16  ; // [15..0] 
        unsigned int    surface_cstride       : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_STRIDE;

// Define the union U_V0_IRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_52           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_IRESO;

// Define the union U_V0_ORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_53           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_ORESO;

// Define the union U_V0_CBMPARA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    galpha                : 8   ; // [7..0] 
        unsigned int    Reserved_54           : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_CBMPARA;

// Define the union U_V0_HCOEFAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_V0_HCOEFAD;
// Define the union U_V0_VCOEFAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_V0_VCOEFAD;
// Define the union U_V0_PARAUP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    v0_hcoef_upd          : 1   ; // [0] 
        unsigned int    v0_vcoef_upd          : 1   ; // [1] 
        unsigned int    Reserved_57           : 30  ; // [31..2] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_PARAUP;

// Define the union U_V0_DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_58           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_DFPOS;

// Define the union U_V0_DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_60           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_DLPOS;

// Define the union U_V0_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_61           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_VFPOS;

// Define the union U_V0_VLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_62           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_VLPOS;

// Define the union U_V0_BK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 10  ; // [9..0] 
        unsigned int    vbk_cb                : 10  ; // [19..10] 
        unsigned int    vbk_y                 : 10  ; // [29..20] 
        unsigned int    Reserved_63           : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_BK;

// Define the union U_V0_ALPHA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_alpha             : 8   ; // [7..0] 
        unsigned int    Reserved_64           : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_ALPHA;

// Define the union U_V0_CSC_IDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 11  ; // [10..0] 
        unsigned int    cscidc1               : 11  ; // [21..11] 
        unsigned int    csc_en                : 1   ; // [22] 
        unsigned int    Reserved_65           : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_CSC_IDC;

// Define the union U_V0_CSC_ODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 11  ; // [10..0] 
        unsigned int    cscodc1               : 11  ; // [21..11] 
        unsigned int    csc_sign_mode         : 1   ; // [22] 
        unsigned int    Reserved_67           : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_CSC_ODC;

// Define the union U_V0_CSC_IODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc2               : 11  ; // [10..0] 
        unsigned int    cscodc2               : 11  ; // [21..11] 
        unsigned int    Reserved_68           : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_CSC_IODC;

// Define the union U_V0_CSC_P0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_70           : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_69           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_CSC_P0;

// Define the union U_V0_CSC_P1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_72           : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_71           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_CSC_P1;

// Define the union U_V0_CSC_P2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_74           : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_73           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_CSC_P2;

// Define the union U_V0_CSC_P3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_76           : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_75           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_CSC_P3;

// Define the union U_V0_CSC_P4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_77           : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_CSC_P4;

// Define the union U_V0_HSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 24  ; // [23..0] 
        unsigned int    hfir_order            : 1   ; // [24] 
        unsigned int    hchfir_en             : 1   ; // [25] 
        unsigned int    hlfir_en              : 1   ; // [26] 
        unsigned int    non_lnr_en            : 1   ; // [27] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hchmsc_en             : 1   ; // [30] 
        unsigned int    hlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_HSP;

// Define the union U_V0_HLOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_loffset           : 28  ; // [27..0] 
        unsigned int    Reserved_79           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_HLOFFSET;

// Define the union U_V0_HCOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 28  ; // [27..0] 
        unsigned int    Reserved_80           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_HCOFFSET;

// Define the union U_V0_VSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_83           : 19  ; // [18..0] 
        unsigned int    zme_in_fmt            : 2   ; // [20..19] 
        unsigned int    zme_out_fmt           : 2   ; // [22..21] 
        unsigned int    vchfir_en             : 1   ; // [23] 
        unsigned int    vlfir_en              : 1   ; // [24] 
        unsigned int    Reserved_82           : 1   ; // [25] 
        unsigned int    vsc_chroma_tap        : 1   ; // [26] 
        unsigned int    Reserved_81           : 1   ; // [27] 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vchmsc_en             : 1   ; // [30] 
        unsigned int    vlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_VSP;

// Define the union U_V0_VSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_85           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_VSR;

// Define the union U_V0_VOFFSET
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

} U_V0_VOFFSET;

// Define the union U_V0_VBOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbchroma_offset       : 16  ; // [15..0] 
        unsigned int    vbluma_offset         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_VBOFFSET;

// Define the union U_V0_IFIRCOEF01
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef0                 : 10  ; // [9..0] 
        unsigned int    Reserved_87           : 6   ; // [15..10] 
        unsigned int    coef1                 : 10  ; // [25..16] 
        unsigned int    Reserved_86           : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_IFIRCOEF01;

// Define the union U_V0_IFIRCOEF23
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef2                 : 10  ; // [9..0] 
        unsigned int    Reserved_90           : 6   ; // [15..10] 
        unsigned int    coef3                 : 10  ; // [25..16] 
        unsigned int    Reserved_89           : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_IFIRCOEF23;

// Define the union U_V0_IFIRCOEF45
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef4                 : 10  ; // [9..0] 
        unsigned int    Reserved_92           : 6   ; // [15..10] 
        unsigned int    coef5                 : 10  ; // [25..16] 
        unsigned int    Reserved_91           : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_IFIRCOEF45;

// Define the union U_V0_IFIRCOEF67
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef6                 : 10  ; // [9..0] 
        unsigned int    Reserved_94           : 6   ; // [15..10] 
        unsigned int    coef7                 : 10  ; // [25..16] 
        unsigned int    Reserved_93           : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_V0_IFIRCOEF67;

// Define the union U_VP0_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vp_galpha             : 8   ; // [7..0] 
        unsigned int    mute_en               : 1   ; // [8] 
        unsigned int    Reserved_95           : 20  ; // [28..9] 
        unsigned int    disp_mode             : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_CTRL;

// Define the union U_VP0_UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_97           : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_UPD;

// Define the union U_VP0_AB_CCAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_VP0_AB_CCAD;
// Define the union U_VP0_ACM_CAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_VP0_ACM_CAD;
// Define the union U_VP0_PARAUP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    v0_acmcoef_upd        : 1   ; // [0] 
        unsigned int    v0_abccoef_upd        : 1   ; // [1] 
        unsigned int    Reserved_99           : 30  ; // [31..2] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_PARAUP;

// Define the union U_VP0_IRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_100          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_IRESO;

// Define the union U_VP0_ACM_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_cbcrthr           : 8   ; // [7..0] 
        unsigned int    Reserved_102          : 20  ; // [27..8] 
        unsigned int    acm_cliprange         : 1   ; // [28] 
        unsigned int    acm_stretch           : 1   ; // [29] 
        unsigned int    acm_dbg_en            : 1   ; // [30] 
        unsigned int    acm_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ACM_CTRL;

// Define the union U_VP0_ACM_ADJ
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_gain2             : 10  ; // [9..0] 
        unsigned int    acm_gain1             : 10  ; // [19..10] 
        unsigned int    acm_gain0             : 10  ; // [29..20] 
        unsigned int    Reserved_104          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ACM_ADJ;

// Define the union U_VP0_ABC_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_adj_write2        : 7   ; // [6..0] 
        unsigned int    abc_chroma_en         : 1   ; // [7] 
        unsigned int    abc_adj_write1        : 7   ; // [14..8] 
        unsigned int    abc_range_mode        : 1   ; // [15] 
        unsigned int    abc_shift_ctrl2       : 2   ; // [17..16] 
        unsigned int    abc_shift_ctrl1       : 2   ; // [19..18] 
        unsigned int    abc_input_adj2        : 1   ; // [20] 
        unsigned int    abc_input_adj1        : 1   ; // [21] 
        unsigned int    abc_nega_en2          : 1   ; // [22] 
        unsigned int    abc_nega_en1          : 1   ; // [23] 
        unsigned int    abc_reve_en2          : 1   ; // [24] 
        unsigned int    abc_reve_en1          : 1   ; // [25] 
        unsigned int    abc_auto_man2         : 1   ; // [26] 
        unsigned int    abc_auto_man1         : 1   ; // [27] 
        unsigned int    abc_update_en2        : 1   ; // [28] 
        unsigned int    abc_update_en1        : 1   ; // [29] 
        unsigned int    abc_dbg_en            : 1   ; // [30] 
        unsigned int    abc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_CTRL;

// Define the union U_VP0_ABC_THRE1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_dark_thre1        : 16  ; // [15..0] 
        unsigned int    abc_brig_thre1        : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_THRE1;

// Define the union U_VP0_ABC_BRIGTHRE1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_brig_low1         : 16  ; // [15..0] 
        unsigned int    abc_brig_high1        : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_BRIGTHRE1;

// Define the union U_VP0_ABC_DARKTHRE1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_dark_low1         : 16  ; // [15..0] 
        unsigned int    abc_dark_high1        : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_DARKTHRE1;

// Define the union U_VP0_ABC_THRE2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_dark_thre2        : 16  ; // [15..0] 
        unsigned int    abc_brig_thre2        : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_THRE2;

// Define the union U_VP0_ABC_BRIGTHRE2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_brig_low2         : 16  ; // [15..0] 
        unsigned int    abc_brig_high2        : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_BRIGTHRE2;

// Define the union U_VP0_ABC_DARKTHRE2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_dark_low2         : 16  ; // [15..0] 
        unsigned int    abc_dark_high2        : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_DARKTHRE2;

// Define the union U_VP0_ABC_PARAADJ
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_adj_dn1           : 8   ; // [7..0] 
        unsigned int    abc_adj_up1           : 8   ; // [15..8] 
        unsigned int    abc_adj_dn2           : 8   ; // [23..16] 
        unsigned int    abc_adj_up2           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_PARAADJ;

// Define the union U_VP0_ABC_SKEWREAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_skew_read1        : 16  ; // [15..0] 
        unsigned int    abc_skew_read2        : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_SKEWREAD;

// Define the union U_VP0_ABC_ADJREAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_adj_read1         : 7   ; // [6..0] 
        unsigned int    Reserved_107          : 1   ; // [7] 
        unsigned int    abc_adj_read2         : 7   ; // [14..8] 
        unsigned int    Reserved_106          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_ADJREAD;

// Define the union U_VP0_ABC_HBWCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_cr_coef           : 7   ; // [6..0] 
        unsigned int    Reserved_110          : 1   ; // [7] 
        unsigned int    abc_cb_coef           : 7   ; // [14..8] 
        unsigned int    Reserved_109          : 1   ; // [15] 
        unsigned int    abc_y_coef            : 7   ; // [22..16] 
        unsigned int    Reserved_108          : 8   ; // [30..23] 
        unsigned int    abc_mix_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_HBWCOEF;

// Define the union U_VP0_ABC_HBWOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_offset            : 16  ; // [15..0] 
        unsigned int    Reserved_111          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_HBWOFFSET;

// Define the union U_VP0_ABC_LUMATHR0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_gain1_y3          : 8   ; // [7..0] 
        unsigned int    abc_gain1_y2          : 8   ; // [15..8] 
        unsigned int    abc_gain1_y1          : 8   ; // [23..16] 
        unsigned int    abc_gain1_y0          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_LUMATHR0;

// Define the union U_VP0_ABC_LUMATHR1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_gain1_y7          : 8   ; // [7..0] 
        unsigned int    abc_gain1_y6          : 8   ; // [15..8] 
        unsigned int    abc_gain1_y5          : 8   ; // [23..16] 
        unsigned int    abc_gain1_y4          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_LUMATHR1;

// Define the union U_VP0_ABC_LUMATHR2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_gain2_y3          : 8   ; // [7..0] 
        unsigned int    abc_gain2_y2          : 8   ; // [15..8] 
        unsigned int    abc_gain2_y1          : 8   ; // [23..16] 
        unsigned int    abc_gain2_y0          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_LUMATHR2;

// Define the union U_VP0_ABC_LUMATHR3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_gain2_y7          : 8   ; // [7..0] 
        unsigned int    abc_gain2_y6          : 8   ; // [15..8] 
        unsigned int    abc_gain2_y5          : 8   ; // [23..16] 
        unsigned int    abc_gain2_y4          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_LUMATHR3;

// Define the union U_VP0_ABC_LUMACOEF0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_gain1_adj7        : 4   ; // [3..0] 
        unsigned int    abc_gain1_adj6        : 4   ; // [7..4] 
        unsigned int    abc_gain1_adj5        : 4   ; // [11..8] 
        unsigned int    abc_gain1_adj4        : 4   ; // [15..12] 
        unsigned int    abc_gain1_adj3        : 4   ; // [19..16] 
        unsigned int    abc_gain1_adj2        : 4   ; // [23..20] 
        unsigned int    abc_gain1_adj1        : 4   ; // [27..24] 
        unsigned int    abc_gain1_adj0        : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_LUMACOEF0;

// Define the union U_VP0_ABC_LUMACOEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_gain2_adj6        : 4   ; // [3..0] 
        unsigned int    abc_gain2_adj5        : 4   ; // [7..4] 
        unsigned int    abc_gain2_adj4        : 4   ; // [11..8] 
        unsigned int    abc_gain2_adj3        : 4   ; // [15..12] 
        unsigned int    abc_gain2_adj2        : 4   ; // [19..16] 
        unsigned int    abc_gain2_adj1        : 4   ; // [23..20] 
        unsigned int    abc_gain2_adj0        : 4   ; // [27..24] 
        unsigned int    abc_gain1_adj8        : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_LUMACOEF1;

// Define the union U_VP0_ABC_LUMACOEF2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_gain2_adj8        : 4   ; // [3..0] 
        unsigned int    abc_gain2_adj7        : 4   ; // [7..4] 
        unsigned int    Reserved_112          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_LUMACOEF2;

// Define the union U_VP0_ABC_CLIP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_clip_low          : 8   ; // [7..0] 
        unsigned int    abc_clip_high         : 8   ; // [15..8] 
        unsigned int    Reserved_113          : 15  ; // [30..16] 
        unsigned int    abc_clip_range        : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_CLIP;

// Define the union U_VP0_ABC_CLIPNEG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    abc_clip_lowneg       : 8   ; // [7..0] 
        unsigned int    abc_clip_highneg      : 8   ; // [15..8] 
        unsigned int    Reserved_114          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ABC_CLIPNEG;

// Define the union U_VP0_DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_115          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_DFPOS;

// Define the union U_VP0_DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_117          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_DLPOS;

// Define the union U_VP0_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_118          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_VFPOS;

// Define the union U_VP0_VLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_119          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_VLPOS;

// Define the union U_VP0_BK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 10  ; // [9..0] 
        unsigned int    vbk_cb                : 10  ; // [19..10] 
        unsigned int    vbk_y                 : 10  ; // [29..20] 
        unsigned int    Reserved_120          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_BK;

// Define the union U_VP0_ALPHA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_alpha             : 8   ; // [7..0] 
        unsigned int    Reserved_121          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VP0_ALPHA;

// Define the union U_G0_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ifmt                  : 8   ; // [7..0] 
        unsigned int    bitext                : 2   ; // [9..8] 
        unsigned int    trid_en               : 1   ; // [10] 
        unsigned int    Reserved_124          : 1   ; // [11] 
        unsigned int    disp_mode             : 4   ; // [15..12] 
        unsigned int    Reserved_123          : 8   ; // [23..16] 
        unsigned int    flip_en               : 1   ; // [24] 
        unsigned int    decmp_en              : 1   ; // [25] 
        unsigned int    read_mode             : 1   ; // [26] 
        unsigned int    upd_mode              : 1   ; // [27] 
        unsigned int    mute_en               : 1   ; // [28] 
        unsigned int    gmm_en                : 1   ; // [29] 
        unsigned int    Reserved_122          : 1   ; // [30] 
        unsigned int    surface_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_CTRL;

// Define the union U_G0_UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_126          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_UPD;

// Define the union U_G0_ADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_G0_ADDR;
// Define the union U_G0_CMPADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_G0_CMPADDR;
// Define the union U_G0_NADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_G0_NADDR;
// Define the union U_G0_STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    surface_stride        : 16  ; // [15..0] 
        unsigned int    Reserved_128          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_STRIDE;

// Define the union U_G0_IRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_129          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_IRESO;

// Define the union U_G0_SFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    src_xfpos             : 7   ; // [6..0] 
        unsigned int    Reserved_130          : 25  ; // [31..7] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_SFPOS;

// Define the union U_G0_CBMPARA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    galpha                : 8   ; // [7..0] 
        unsigned int    palpha_range          : 1   ; // [8] 
        unsigned int    Reserved_132          : 1   ; // [9] 
        unsigned int    vedge_p               : 1   ; // [10] 
        unsigned int    hedge_p               : 1   ; // [11] 
        unsigned int    palpha_en             : 1   ; // [12] 
        unsigned int    premult_en            : 1   ; // [13] 
        unsigned int    key_en                : 1   ; // [14] 
        unsigned int    key_mode              : 1   ; // [15] 
        unsigned int    Reserved_131          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_CBMPARA;

// Define the union U_G0_CKEYMAX
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    keyb_max              : 8   ; // [7..0] 
        unsigned int    keyg_max              : 8   ; // [15..8] 
        unsigned int    keyr_max              : 8   ; // [23..16] 
        unsigned int    va0                   : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_CKEYMAX;

// Define the union U_G0_CKEYMIN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    keyb_min              : 8   ; // [7..0] 
        unsigned int    keyg_min              : 8   ; // [15..8] 
        unsigned int    keyr_min              : 8   ; // [23..16] 
        unsigned int    va1                   : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_CKEYMIN;

// Define the union U_G0_CMASK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    kmsk_b                : 8   ; // [7..0] 
        unsigned int    kmsk_g                : 8   ; // [15..8] 
        unsigned int    kmsk_r                : 8   ; // [23..16] 
        unsigned int    Reserved_134          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_CMASK;

// Define the union U_G0_PARAADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_G0_PARAADDR;
// Define the union U_G0_PARAUP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    gdc_paraup            : 1   ; // [0] 
        unsigned int    Reserved_135          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_PARAUP;

// Define the union U_G0_DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_136          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_DFPOS;

// Define the union U_G0_DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_138          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_DLPOS;

// Define the union U_G0_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_139          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_VFPOS;

// Define the union U_G0_VLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_140          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_VLPOS;

// Define the union U_G0_BK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 10  ; // [9..0] 
        unsigned int    vbk_cb                : 10  ; // [19..10] 
        unsigned int    vbk_y                 : 10  ; // [29..20] 
        unsigned int    Reserved_141          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_BK;

// Define the union U_G0_ALPHA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_alpha             : 8   ; // [7..0] 
        unsigned int    Reserved_142          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_ALPHA;

// Define the union U_G0_DOFCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dof_format            : 4   ; // [3..0] 
        unsigned int    Reserved_143          : 27  ; // [30..4] 
        unsigned int    dof_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_DOFCTRL;

// Define the union U_G0_DOFSTEP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    left_step             : 8   ; // [7..0] 
        unsigned int    right_step            : 8   ; // [15..8] 
        unsigned int    Reserved_145          : 15  ; // [30..16] 
        unsigned int    left_eye              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0_DOFSTEP;

// Define the union U_G1_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ifmt                  : 8   ; // [7..0] 
        unsigned int    bitext                : 2   ; // [9..8] 
        unsigned int    trid_en               : 1   ; // [10] 
        unsigned int    src_mode              : 3   ; // [13..11] 
        unsigned int    disp_mode             : 3   ; // [16..14] 
        unsigned int    Reserved_147          : 7   ; // [23..17] 
        unsigned int    flip_en               : 1   ; // [24] 
        unsigned int    decmp_en              : 1   ; // [25] 
        unsigned int    read_mode             : 1   ; // [26] 
        unsigned int    upd_mode              : 1   ; // [27] 
        unsigned int    mute_en               : 1   ; // [28] 
        unsigned int    gmm_en                : 1   ; // [29] 
        unsigned int    Reserved_146          : 1   ; // [30] 
        unsigned int    surface_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_CTRL;

// Define the union U_G1_UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_149          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_UPD;

// Define the union U_G1_ADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_G1_ADDR;
// Define the union U_G1_CMPADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_G1_CMPADDR;
// Define the union U_G1_NADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_G1_NADDR;
// Define the union U_G1_STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    surface_stride        : 16  ; // [15..0] 
        unsigned int    Reserved_151          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_STRIDE;

// Define the union U_G1_IRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_152          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_IRESO;

// Define the union U_G1_SFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    src_xfpos             : 7   ; // [6..0] 
        unsigned int    Reserved_153          : 25  ; // [31..7] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_SFPOS;

// Define the union U_G1_CBMPARA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    galpha                : 8   ; // [7..0] 
        unsigned int    palpha_range          : 1   ; // [8] 
        unsigned int    Reserved_155          : 1   ; // [9] 
        unsigned int    vedge_p               : 1   ; // [10] 
        unsigned int    hedge_p               : 1   ; // [11] 
        unsigned int    palpha_en             : 1   ; // [12] 
        unsigned int    premult_en            : 1   ; // [13] 
        unsigned int    key_en                : 1   ; // [14] 
        unsigned int    key_mode              : 1   ; // [15] 
        unsigned int    Reserved_154          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_CBMPARA;

// Define the union U_G1_CKEYMAX
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    keyb_max              : 8   ; // [7..0] 
        unsigned int    keyg_max              : 8   ; // [15..8] 
        unsigned int    keyr_max              : 8   ; // [23..16] 
        unsigned int    va0                   : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_CKEYMAX;

// Define the union U_G1_CKEYMIN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    keyb_min              : 8   ; // [7..0] 
        unsigned int    keyg_min              : 8   ; // [15..8] 
        unsigned int    keyr_min              : 8   ; // [23..16] 
        unsigned int    va1                   : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_CKEYMIN;

// Define the union U_G1_CMASK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    kmsk_b                : 8   ; // [7..0] 
        unsigned int    kmsk_g                : 8   ; // [15..8] 
        unsigned int    kmsk_r                : 8   ; // [23..16] 
        unsigned int    Reserved_157          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_CMASK;

// Define the union U_G1_PARAADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_G1_PARAADDR;
// Define the union U_G1_PARAUP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    gdc_paraup            : 1   ; // [0] 
        unsigned int    Reserved_158          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_PARAUP;

// Define the union U_G1_DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_159          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_DFPOS;

// Define the union U_G1_DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_161          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_DLPOS;

// Define the union U_G1_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_162          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_VFPOS;

// Define the union U_G1_VLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_163          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_VLPOS;

// Define the union U_G1_BK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 10  ; // [9..0] 
        unsigned int    vbk_cb                : 10  ; // [19..10] 
        unsigned int    vbk_y                 : 10  ; // [29..20] 
        unsigned int    Reserved_164          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_BK;

// Define the union U_G1_ALPHA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_alpha             : 8   ; // [7..0] 
        unsigned int    Reserved_165          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_ALPHA;

// Define the union U_G1_DOFCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dof_format            : 4   ; // [3..0] 
        unsigned int    Reserved_166          : 27  ; // [30..4] 
        unsigned int    dof_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_DOFCTRL;

// Define the union U_G1_DOFSTEP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    left_step             : 8   ; // [7..0] 
        unsigned int    right_step            : 8   ; // [15..8] 
        unsigned int    Reserved_168          : 15  ; // [30..16] 
        unsigned int    left_eye              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1_DOFSTEP;

// Define the union U_GP0_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mux1_sel              : 2   ; // [1..0] 
        unsigned int    Reserved_172          : 2   ; // [3..2] 
        unsigned int    mux2_sel              : 2   ; // [5..4] 
        unsigned int    Reserved_171          : 2   ; // [7..6] 
        unsigned int    aout_sel              : 2   ; // [9..8] 
        unsigned int    Reserved_170          : 2   ; // [11..10] 
        unsigned int    bout_sel              : 2   ; // [13..12] 
        unsigned int    Reserved_169          : 12  ; // [25..14] 
        unsigned int    ffc_sel               : 1   ; // [26] 
        unsigned int    disp_mode             : 3   ; // [29..27] 
        unsigned int    mute_en               : 1   ; // [30] 
        unsigned int    read_mode             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_CTRL;

// Define the union U_GP0_UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_174          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_UPD;

// Define the union U_GP0_ORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_175          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ORESO;

// Define the union U_GP0_IRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_176          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_IRESO;

// Define the union U_GP0_HCOEFAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_GP0_HCOEFAD;
// Define the union U_GP0_VCOEFAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_GP0_VCOEFAD;
// Define the union U_GP0_PARAUP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    gp0_hcoef_upd         : 1   ; // [0] 
        unsigned int    gp0_vcoef_upd         : 1   ; // [1] 
        unsigned int    Reserved_177          : 30  ; // [31..2] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_PARAUP;

// Define the union U_GP0_GALPHA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    galpha                : 8   ; // [7..0] 
        unsigned int    Reserved_178          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_GALPHA;

// Define the union U_GP0_DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_180          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_DFPOS;

// Define the union U_GP0_DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_182          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_DLPOS;

// Define the union U_GP0_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_183          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_VFPOS;

// Define the union U_GP0_VLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_184          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_VLPOS;

// Define the union U_GP0_BK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 10  ; // [9..0] 
        unsigned int    vbk_cb                : 10  ; // [19..10] 
        unsigned int    vbk_y                 : 10  ; // [29..20] 
        unsigned int    Reserved_185          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_BK;

// Define the union U_GP0_ALPHA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_alpha             : 8   ; // [7..0] 
        unsigned int    Reserved_186          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ALPHA;

// Define the union U_GP0_CSC_IDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 11  ; // [10..0] 
        unsigned int    cscidc1               : 11  ; // [21..11] 
        unsigned int    csc_en                : 1   ; // [22] 
        unsigned int    Reserved_187          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_CSC_IDC;

// Define the union U_GP0_CSC_ODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 11  ; // [10..0] 
        unsigned int    cscodc1               : 11  ; // [21..11] 
        unsigned int    csc_sign_mode         : 1   ; // [22] 
        unsigned int    Reserved_189          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_CSC_ODC;

// Define the union U_GP0_CSC_IODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc2               : 11  ; // [10..0] 
        unsigned int    cscodc2               : 11  ; // [21..11] 
        unsigned int    Reserved_190          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_CSC_IODC;

// Define the union U_GP0_CSC_P0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_192          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_191          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_CSC_P0;

// Define the union U_GP0_CSC_P1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_194          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_193          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_CSC_P1;

// Define the union U_GP0_CSC_P2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_196          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_195          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_CSC_P2;

// Define the union U_GP0_CSC_P3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_198          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_197          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_CSC_P3;

// Define the union U_GP0_CSC_P4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_199          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_CSC_P4;

// Define the union U_GP0_ZME_HSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 16  ; // [15..0] 
        unsigned int    Reserved_202          : 3   ; // [18..16] 
        unsigned int    hfir_order            : 1   ; // [19] 
        unsigned int    Reserved_201          : 3   ; // [22..20] 
        unsigned int    hafir_en              : 1   ; // [23] 
        unsigned int    hfir_en               : 1   ; // [24] 
        unsigned int    Reserved_200          : 3   ; // [27..25] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hamid_en              : 1   ; // [30] 
        unsigned int    hsc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ZME_HSP;

// Define the union U_GP0_ZME_HOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 16  ; // [15..0] 
        unsigned int    hor_loffset           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ZME_HOFFSET;

// Define the union U_GP0_ZME_VSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_205          : 23  ; // [22..0] 
        unsigned int    vafir_en              : 1   ; // [23] 
        unsigned int    vfir_en               : 1   ; // [24] 
        unsigned int    Reserved_204          : 1   ; // [25] 
        unsigned int    Reserved_203          : 1   ; // [26] 
        unsigned int    vsc_luma_tap          : 1   ; // [27] 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vamid_en              : 1   ; // [30] 
        unsigned int    vsc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ZME_VSP;

// Define the union U_GP0_ZME_VSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_206          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ZME_VSR;

// Define the union U_GP0_ZME_VOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbtm_offset           : 16  ; // [15..0] 
        unsigned int    vtp_offset            : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ZME_VOFFSET;

// Define the union U_GP0_ZME_LTICTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef4          : 8   ; // [7..0] 
        unsigned int    lmixing_ratio         : 8   ; // [15..8] 
        unsigned int    lgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_207          : 3   ; // [30..28] 
        unsigned int    lti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ZME_LTICTRL;

// Define the union U_GP0_ZME_LHPASSCOEF
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

} U_GP0_ZME_LHPASSCOEF;

// Define the union U_GP0_ZME_LTITHD
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

} U_GP0_ZME_LTITHD;

// Define the union U_GP0_ZME_LHFREQTHD
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

} U_GP0_ZME_LHFREQTHD;

// Define the union U_GP0_ZME_LGAINCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lgain_coef0           : 8   ; // [7..0] 
        unsigned int    lgain_coef1           : 8   ; // [15..8] 
        unsigned int    lgain_coef2           : 8   ; // [23..16] 
        unsigned int    Reserved_210          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ZME_LGAINCOEF;

// Define the union U_GP0_ZME_CTICTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_212          : 8   ; // [7..0] 
        unsigned int    cmixing_ratio         : 8   ; // [15..8] 
        unsigned int    cgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_211          : 3   ; // [30..28] 
        unsigned int    cti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ZME_CTICTRL;

// Define the union U_GP0_ZME_CHPASSCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    chpass_coef0          : 8   ; // [7..0] 
        unsigned int    chpass_coef1          : 8   ; // [15..8] 
        unsigned int    chpass_coef2          : 8   ; // [23..16] 
        unsigned int    Reserved_214          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP0_ZME_CHPASSCOEF;

// Define the union U_GP0_ZME_CTITHD
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

} U_GP0_ZME_CTITHD;

// Define the union U_GP1_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mux1_sel              : 2   ; // [1..0] 
        unsigned int    Reserved_218          : 2   ; // [3..2] 
        unsigned int    mux2_sel              : 2   ; // [5..4] 
        unsigned int    Reserved_217          : 2   ; // [7..6] 
        unsigned int    aout_sel              : 2   ; // [9..8] 
        unsigned int    Reserved_216          : 2   ; // [11..10] 
        unsigned int    bout_sel              : 2   ; // [13..12] 
        unsigned int    Reserved_215          : 12  ; // [25..14] 
        unsigned int    ffc_sel               : 1   ; // [26] 
        unsigned int    disp_mode             : 3   ; // [29..27] 
        unsigned int    mute_en               : 1   ; // [30] 
        unsigned int    read_mode             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_CTRL;

// Define the union U_GP1_UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_220          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_UPD;

// Define the union U_GP1_ORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_221          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ORESO;

// Define the union U_GP1_IRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_222          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_IRESO;

// Define the union U_GP1_HCOEFAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_GP1_HCOEFAD;
// Define the union U_GP1_VCOEFAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_GP1_VCOEFAD;
// Define the union U_GP1_PARAUP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    gp0_hcoef_upd         : 1   ; // [0] 
        unsigned int    gp0_vcoef_upd         : 1   ; // [1] 
        unsigned int    Reserved_223          : 30  ; // [31..2] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_PARAUP;

// Define the union U_GP1_GALPHA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    galpha                : 8   ; // [7..0] 
        unsigned int    Reserved_224          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_GALPHA;

// Define the union U_GP1_DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_226          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_DFPOS;

// Define the union U_GP1_DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_228          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_DLPOS;

// Define the union U_GP1_VFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_229          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_VFPOS;

// Define the union U_GP1_VLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_230          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_VLPOS;

// Define the union U_GP1_BK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 10  ; // [9..0] 
        unsigned int    vbk_cb                : 10  ; // [19..10] 
        unsigned int    vbk_y                 : 10  ; // [29..20] 
        unsigned int    Reserved_231          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_BK;

// Define the union U_GP1_ALPHA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_alpha             : 8   ; // [7..0] 
        unsigned int    Reserved_232          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ALPHA;

// Define the union U_GP1_CSC_IDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 11  ; // [10..0] 
        unsigned int    cscidc1               : 11  ; // [21..11] 
        unsigned int    csc_en                : 1   ; // [22] 
        unsigned int    Reserved_233          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_CSC_IDC;

// Define the union U_GP1_CSC_ODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 11  ; // [10..0] 
        unsigned int    cscodc1               : 11  ; // [21..11] 
        unsigned int    csc_sign_mode         : 1   ; // [22] 
        unsigned int    Reserved_235          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_CSC_ODC;

// Define the union U_GP1_CSC_IODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc2               : 11  ; // [10..0] 
        unsigned int    cscodc2               : 11  ; // [21..11] 
        unsigned int    Reserved_236          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_CSC_IODC;

// Define the union U_GP1_CSC_P0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_238          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_237          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_CSC_P0;

// Define the union U_GP1_CSC_P1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_240          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_239          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_CSC_P1;

// Define the union U_GP1_CSC_P2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_242          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_241          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_CSC_P2;

// Define the union U_GP1_CSC_P3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_244          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_243          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_CSC_P3;

// Define the union U_GP1_CSC_P4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_245          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_CSC_P4;

// Define the union U_GP1_ZME_HSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 16  ; // [15..0] 
        unsigned int    Reserved_248          : 3   ; // [18..16] 
        unsigned int    hfir_order            : 1   ; // [19] 
        unsigned int    Reserved_247          : 3   ; // [22..20] 
        unsigned int    hafir_en              : 1   ; // [23] 
        unsigned int    hfir_en               : 1   ; // [24] 
        unsigned int    Reserved_246          : 3   ; // [27..25] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hamid_en              : 1   ; // [30] 
        unsigned int    hsc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ZME_HSP;

// Define the union U_GP1_ZME_HOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 16  ; // [15..0] 
        unsigned int    hor_loffset           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ZME_HOFFSET;

// Define the union U_GP1_ZME_VSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_251          : 23  ; // [22..0] 
        unsigned int    vafir_en              : 1   ; // [23] 
        unsigned int    vfir_en               : 1   ; // [24] 
        unsigned int    Reserved_250          : 1   ; // [25] 
        unsigned int    Reserved_249          : 1   ; // [26] 
        unsigned int    vsc_luma_tap          : 1   ; // [27] 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vamid_en              : 1   ; // [30] 
        unsigned int    vsc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ZME_VSP;

// Define the union U_GP1_ZME_VSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_252          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ZME_VSR;

// Define the union U_GP1_ZME_VOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbtm_offset           : 16  ; // [15..0] 
        unsigned int    vtp_offset            : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ZME_VOFFSET;

// Define the union U_GP1_ZME_LTICTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef4          : 8   ; // [7..0] 
        unsigned int    lmixing_ratio         : 8   ; // [15..8] 
        unsigned int    lgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_253          : 3   ; // [30..28] 
        unsigned int    lti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ZME_LTICTRL;

// Define the union U_GP1_ZME_LHPASSCOEF
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

} U_GP1_ZME_LHPASSCOEF;

// Define the union U_GP1_ZME_LTITHD
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

} U_GP1_ZME_LTITHD;

// Define the union U_GP1_ZME_LHFREQTHD
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

} U_GP1_ZME_LHFREQTHD;

// Define the union U_GP1_ZME_LGAINCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lgain_coef0           : 8   ; // [7..0] 
        unsigned int    lgain_coef1           : 8   ; // [15..8] 
        unsigned int    lgain_coef2           : 8   ; // [23..16] 
        unsigned int    Reserved_256          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ZME_LGAINCOEF;

// Define the union U_GP1_ZME_CTICTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_258          : 8   ; // [7..0] 
        unsigned int    cmixing_ratio         : 8   ; // [15..8] 
        unsigned int    cgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_257          : 3   ; // [30..28] 
        unsigned int    cti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ZME_CTICTRL;

// Define the union U_GP1_ZME_CHPASSCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    chpass_coef0          : 8   ; // [7..0] 
        unsigned int    chpass_coef1          : 8   ; // [15..8] 
        unsigned int    chpass_coef2          : 8   ; // [23..16] 
        unsigned int    Reserved_260          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_GP1_ZME_CHPASSCOEF;

// Define the union U_GP1_ZME_CTITHD
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

} U_GP1_ZME_CTITHD;

// Define the union U_WBC_GP0_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    req_interval          : 10  ; // [9..0] 
        unsigned int    Reserved_261          : 14  ; // [23..10] 
        unsigned int    format_out            : 4   ; // [27..24] 
        unsigned int    mode_out              : 2   ; // [29..28] 
        unsigned int    uv_order              : 1   ; // [30] 
        unsigned int    wbc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_CTRL;

// Define the union U_WBC_GP0_UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_263          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_UPD;

// Define the union U_WBC_GP0_YADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int wbcaddr                 : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_WBC_GP0_YADDR;
// Define the union U_WBC_GP0_CADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int wbccaddr                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_WBC_GP0_CADDR;
// Define the union U_WBC_GP0_STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wbclstride            : 16  ; // [15..0] 
        unsigned int    wbccstride            : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_STRIDE;

// Define the union U_WBC_GP0_ORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_265          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_ORESO;

// Define the union U_WBC_GP0_FCROP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wfcrop                : 12  ; // [11..0] 
        unsigned int    hfcrop                : 12  ; // [23..12] 
        unsigned int    Reserved_267          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_FCROP;

// Define the union U_WBC_GP0_LCROP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wlcrop                : 12  ; // [11..0] 
        unsigned int    hlcrop                : 12  ; // [23..12] 
        unsigned int    Reserved_268          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_LCROP;

// Define the union U_WBC_GP0_IRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_269          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_IRESO;

// Define the union U_WBC_GP0_SFIFO_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    sfifo_wr_thd          : 12  ; // [11..0] 
        unsigned int    Reserved_270          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_SFIFO_CTRL;

// Define the union U_WBC_GP0_DITHER_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_272          : 29  ; // [28..0] 
        unsigned int    dither_md             : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_DITHER_CTRL;

// Define the union U_WBC_GP0_DITHER_COEF0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef0          : 8   ; // [7..0] 
        unsigned int    dither_coef1          : 8   ; // [15..8] 
        unsigned int    dither_coef2          : 8   ; // [23..16] 
        unsigned int    dither_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_DITHER_COEF0;

// Define the union U_WBC_GP0_DITHER_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef4          : 8   ; // [7..0] 
        unsigned int    dither_coef5          : 8   ; // [15..8] 
        unsigned int    dither_coef6          : 8   ; // [23..16] 
        unsigned int    dither_coef7          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_GP0_DITHER_COEF1;

// Define the union U_WBC_DHD0_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    req_interval          : 10  ; // [9..0] 
        unsigned int    Reserved_274          : 14  ; // [23..10] 
        unsigned int    format_out            : 4   ; // [27..24] 
        unsigned int    mode_out              : 2   ; // [29..28] 
        unsigned int    uv_order              : 1   ; // [30] 
        unsigned int    wbc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_CTRL;

// Define the union U_WBC_DHD0_UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_276          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_UPD;

// Define the union U_WBC_DHD0_YADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int wbcaddr                 : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_WBC_DHD0_YADDR;
// Define the union U_WBC_DHD0_CADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int wbccaddr                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_WBC_DHD0_CADDR;
// Define the union U_WBC_DHD0_STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wbclstride            : 16  ; // [15..0] 
        unsigned int    wbccstride            : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_STRIDE;

// Define the union U_WBC_DHD0_ORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_278          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_ORESO;

// Define the union U_WBC_DHD0_FCROP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wfcrop                : 12  ; // [11..0] 
        unsigned int    hfcrop                : 12  ; // [23..12] 
        unsigned int    Reserved_280          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_FCROP;

// Define the union U_WBC_DHD0_LCROP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wlcrop                : 12  ; // [11..0] 
        unsigned int    hlcrop                : 12  ; // [23..12] 
        unsigned int    Reserved_281          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_LCROP;

// Define the union U_WBC_DHD0_HCOEFAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_WBC_DHD0_HCOEFAD;
// Define the union U_WBC_DHD0_VCOEFAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_WBC_DHD0_VCOEFAD;
// Define the union U_WBC_DHD0_PARAUP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wbc_hcoef_upd         : 1   ; // [0] 
        unsigned int    wbc_vcoef_upd         : 1   ; // [1] 
        unsigned int    Reserved_283          : 30  ; // [31..2] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_PARAUP;

// Define the union U_WBC_DHD0_SFIFO_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    sfifo_wr_thd          : 12  ; // [11..0] 
        unsigned int    Reserved_284          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_SFIFO_CTRL;

// Define the union U_WBC_DHD0_DITHER_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_286          : 29  ; // [28..0] 
        unsigned int    dither_md             : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_DITHER_CTRL;

// Define the union U_WBC_DHD0_DITHER_COEF0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef0          : 8   ; // [7..0] 
        unsigned int    dither_coef1          : 8   ; // [15..8] 
        unsigned int    dither_coef2          : 8   ; // [23..16] 
        unsigned int    dither_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_DITHER_COEF0;

// Define the union U_WBC_DHD0_DITHER_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef4          : 8   ; // [7..0] 
        unsigned int    dither_coef5          : 8   ; // [15..8] 
        unsigned int    dither_coef6          : 8   ; // [23..16] 
        unsigned int    dither_coef7          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_DITHER_COEF1;

// Define the union U_WBC_DHD0_ZME_HSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 24  ; // [23..0] 
        unsigned int    hfir_order            : 1   ; // [24] 
        unsigned int    hchfir_en             : 1   ; // [25] 
        unsigned int    hlfir_en              : 1   ; // [26] 
        unsigned int    non_lnr_en            : 1   ; // [27] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hchmsc_en             : 1   ; // [30] 
        unsigned int    hlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_ZME_HSP;

// Define the union U_WBC_DHD0_ZME_HLOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_loffset           : 28  ; // [27..0] 
        unsigned int    Reserved_289          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_ZME_HLOFFSET;

// Define the union U_WBC_DHD0_ZME_HCOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 28  ; // [27..0] 
        unsigned int    Reserved_290          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_ZME_HCOFFSET;

// Define the union U_WBC_DHD0_ZME_VSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_293          : 19  ; // [18..0] 
        unsigned int    zme_in_fmt            : 2   ; // [20..19] 
        unsigned int    zme_out_fmt           : 2   ; // [22..21] 
        unsigned int    vchfir_en             : 1   ; // [23] 
        unsigned int    vlfir_en              : 1   ; // [24] 
        unsigned int    Reserved_292          : 1   ; // [25] 
        unsigned int    vsc_chroma_tap        : 1   ; // [26] 
        unsigned int    Reserved_291          : 1   ; // [27] 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vchmsc_en             : 1   ; // [30] 
        unsigned int    vlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_ZME_VSP;

// Define the union U_WBC_DHD0_ZME_VSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_295          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_ZME_VSR;

// Define the union U_WBC_DHD0_ZME_VOFFSET
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

} U_WBC_DHD0_ZME_VOFFSET;

// Define the union U_WBC_DHD0_ZME_VBOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbchroma_offset       : 16  ; // [15..0] 
        unsigned int    vbluma_offset         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_ZME_VBOFFSET;

// Define the union U_WBC_DHD0_CSCIDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 9   ; // [8..0] 
        unsigned int    cscidc1               : 9   ; // [17..9] 
        unsigned int    cscidc2               : 9   ; // [26..18] 
        unsigned int    csc_en                : 1   ; // [27] 
        unsigned int    Reserved_296          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_CSCIDC;

// Define the union U_WBC_DHD0_CSCODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 9   ; // [8..0] 
        unsigned int    cscodc1               : 9   ; // [17..9] 
        unsigned int    cscodc2               : 9   ; // [26..18] 
        unsigned int    Reserved_298          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_CSCODC;

// Define the union U_WBC_DHD0_CSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_300          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_299          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_CSCP0;

// Define the union U_WBC_DHD0_CSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_302          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_301          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_CSCP1;

// Define the union U_WBC_DHD0_CSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_304          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_303          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_CSCP2;

// Define the union U_WBC_DHD0_CSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_306          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_305          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_CSCP3;

// Define the union U_WBC_DHD0_CSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_307          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC_DHD0_CSCP4;

// Define the union U_MIXV0_BKG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mixer_bkgcr           : 10  ; // [9..0] 
        unsigned int    mixer_bkgcb           : 10  ; // [19..10] 
        unsigned int    mixer_bkgy            : 10  ; // [29..20] 
        unsigned int    Reserved_308          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_MIXV0_BKG;

// Define the union U_MIXV0_MIX
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mixer_prio0           : 4   ; // [3..0] 
        unsigned int    mixer_prio1           : 4   ; // [7..4] 
        unsigned int    Reserved_310          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_MIXV0_MIX;

// Define the union U_MIXG0_BKG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mixer_bkgcr           : 10  ; // [9..0] 
        unsigned int    mixer_bkgcb           : 10  ; // [19..10] 
        unsigned int    mixer_bkgy            : 10  ; // [29..20] 
        unsigned int    Reserved_312          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_MIXG0_BKG;

// Define the union U_MIXG0_BKALPHA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mixer_alpha           : 8   ; // [7..0] 
        unsigned int    Reserved_314          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_MIXG0_BKALPHA;

// Define the union U_MIXG0_MIX
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mixer_prio0           : 4   ; // [3..0] 
        unsigned int    mixer_prio1           : 4   ; // [7..4] 
        unsigned int    mixer_prio2           : 4   ; // [11..8] 
        unsigned int    mixer_prio3           : 4   ; // [15..12] 
        unsigned int    Reserved_315          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_MIXG0_MIX;

// Define the union U_MIXG0_ATTR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    sur_attr0             : 1   ; // [0] 
        unsigned int    sur_attr1             : 1   ; // [1] 
        unsigned int    sur_attr2             : 1   ; // [2] 
        unsigned int    sur_attr3             : 1   ; // [3] 
        unsigned int    Reserved_316          : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_MIXG0_ATTR;

// Define the union U_CBM_BKG1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cbm_bkgcr1            : 10  ; // [9..0] 
        unsigned int    cbm_bkgcb1            : 10  ; // [19..10] 
        unsigned int    cbm_bkgy1             : 10  ; // [29..20] 
        unsigned int    Reserved_318          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBM_BKG1;

// Define the union U_CBM_MIX1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mixer_prio0           : 4   ; // [3..0] 
        unsigned int    mixer_prio1           : 4   ; // [7..4] 
        unsigned int    Reserved_320          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBM_MIX1;

// Define the union U_CBM_BKG2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cbm_bkgcr2            : 10  ; // [9..0] 
        unsigned int    cbm_bkgcb2            : 10  ; // [19..10] 
        unsigned int    cbm_bkgy2             : 10  ; // [29..20] 
        unsigned int    Reserved_322          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBM_BKG2;

// Define the union U_CBM_MIX2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mixer_prio0           : 4   ; // [3..0] 
        unsigned int    mixer_prio1           : 4   ; // [7..4] 
        unsigned int    Reserved_324          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBM_MIX2;

// Define the union U_CBM_ATTR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    sur_attr0             : 1   ; // [0] 
        unsigned int    sur_attr1             : 1   ; // [1] 
        unsigned int    sur_attr2             : 1   ; // [2] 
        unsigned int    sur_attr3             : 1   ; // [3] 
        unsigned int    Reserved_326          : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBM_ATTR;

// Define the union U_DHD0_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_331          : 2   ; // [2..1] 
        unsigned int    fp_en                 : 1   ; // [3] 
        unsigned int    iop                   : 1   ; // [4] 
        unsigned int    Reserved_330          : 7   ; // [11..5] 
        unsigned int    gmm_mode              : 1   ; // [12] 
        unsigned int    gmm_en                : 1   ; // [13] 
        unsigned int    hdmi_mode             : 1   ; // [14] 
        unsigned int    Reserved_329          : 5   ; // [19..15] 
        unsigned int    fpga_lmt_width        : 7   ; // [26..20] 
        unsigned int    fpga_lmt_en           : 1   ; // [27] 
        unsigned int    Reserved_328          : 1   ; // [28] 
        unsigned int    cbar_sel              : 1   ; // [29] 
        unsigned int    cbar_en               : 1   ; // [30] 
        unsigned int    intf_en               : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CTRL;

// Define the union U_DHD0_VSYNC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vact                  : 12  ; // [11..0] 
        unsigned int    vbb                   : 8   ; // [19..12] 
        unsigned int    vfb                   : 8   ; // [27..20] 
        unsigned int    Reserved_333          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_VSYNC;

// Define the union U_DHD0_HSYNC1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hact                  : 16  ; // [15..0] 
        unsigned int    hbb                   : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_HSYNC1;

// Define the union U_DHD0_HSYNC2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hfb                   : 16  ; // [15..0] 
        unsigned int    hmid                  : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_HSYNC2;

// Define the union U_DHD0_VPLUS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    bvact                 : 12  ; // [11..0] 
        unsigned int    bvbb                  : 8   ; // [19..12] 
        unsigned int    bvfb                  : 8   ; // [27..20] 
        unsigned int    Reserved_334          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_VPLUS;

// Define the union U_DHD0_PWR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hpw                   : 16  ; // [15..0] 
        unsigned int    vpw                   : 8   ; // [23..16] 
        unsigned int    Reserved_335          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_PWR;

// Define the union U_DHD0_VTTHD3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vtmgthd3              : 13  ; // [12..0] 
        unsigned int    Reserved_337          : 2   ; // [14..13] 
        unsigned int    thd3_mode             : 1   ; // [15] 
        unsigned int    vtmgthd4              : 13  ; // [28..16] 
        unsigned int    Reserved_336          : 2   ; // [30..29] 
        unsigned int    thd4_mode             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_VTTHD3;

// Define the union U_DHD0_VTTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vtmgthd1              : 13  ; // [12..0] 
        unsigned int    Reserved_339          : 2   ; // [14..13] 
        unsigned int    thd1_mode             : 1   ; // [15] 
        unsigned int    vtmgthd2              : 13  ; // [28..16] 
        unsigned int    Reserved_338          : 2   ; // [30..29] 
        unsigned int    thd2_mode             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_VTTHD;

// Define the union U_DHD0_SYNC_INV
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lcd_dv_inv            : 1   ; // [0] 
        unsigned int    lcd_hs_inv            : 1   ; // [1] 
        unsigned int    lcd_vs_inv            : 1   ; // [2] 
        unsigned int    Reserved_342          : 1   ; // [3] 
        unsigned int    vga_dv_inv            : 1   ; // [4] 
        unsigned int    vga_hs_inv            : 1   ; // [5] 
        unsigned int    vga_vs_inv            : 1   ; // [6] 
        unsigned int    Reserved_341          : 1   ; // [7] 
        unsigned int    hdmi_dv_inv           : 1   ; // [8] 
        unsigned int    hdmi_hs_inv           : 1   ; // [9] 
        unsigned int    hdmi_vs_inv           : 1   ; // [10] 
        unsigned int    hdmi_f_inv            : 1   ; // [11] 
        unsigned int    date_dv_inv           : 1   ; // [12] 
        unsigned int    date_hs_inv           : 1   ; // [13] 
        unsigned int    date_vs_inv           : 1   ; // [14] 
        unsigned int    date_f_inv            : 1   ; // [15] 
        unsigned int    Reserved_340          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_SYNC_INV;

// Define the union U_DHD0_CSC_IDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 11  ; // [10..0] 
        unsigned int    cscidc1               : 11  ; // [21..11] 
        unsigned int    csc_en                : 1   ; // [22] 
        unsigned int    Reserved_343          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CSC_IDC;

// Define the union U_DHD0_CSC_ODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 11  ; // [10..0] 
        unsigned int    cscodc1               : 11  ; // [21..11] 
        unsigned int    csc_sign_mode         : 1   ; // [22] 
        unsigned int    Reserved_345          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CSC_ODC;

// Define the union U_DHD0_CSC_IODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc2               : 11  ; // [10..0] 
        unsigned int    cscodc2               : 11  ; // [21..11] 
        unsigned int    Reserved_346          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CSC_IODC;

// Define the union U_DHD0_CSC_P0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_348          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_347          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CSC_P0;

// Define the union U_DHD0_CSC_P1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_350          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_349          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CSC_P1;

// Define the union U_DHD0_CSC_P2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_352          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_351          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CSC_P2;

// Define the union U_DHD0_CSC_P3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_354          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_353          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CSC_P3;

// Define the union U_DHD0_CSC_P4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_355          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CSC_P4;

// Define the union U_DHD0_DITHER0_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_356          : 29  ; // [28..0] 
        unsigned int    dither_md             : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_DITHER0_CTRL;

// Define the union U_DHD0_DITHER0_COEF0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef0          : 8   ; // [7..0] 
        unsigned int    dither_coef1          : 8   ; // [15..8] 
        unsigned int    dither_coef2          : 8   ; // [23..16] 
        unsigned int    dither_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_DITHER0_COEF0;

// Define the union U_DHD0_DITHER0_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef4          : 8   ; // [7..0] 
        unsigned int    dither_coef5          : 8   ; // [15..8] 
        unsigned int    dither_coef6          : 8   ; // [23..16] 
        unsigned int    dither_coef7          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_DITHER0_COEF1;

// Define the union U_DHD0_DITHER1_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_357          : 29  ; // [28..0] 
        unsigned int    dither_md             : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_DITHER1_CTRL;

// Define the union U_DHD0_DITHER1_COEF0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef0          : 8   ; // [7..0] 
        unsigned int    dither_coef1          : 8   ; // [15..8] 
        unsigned int    dither_coef2          : 8   ; // [23..16] 
        unsigned int    dither_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_DITHER1_COEF0;

// Define the union U_DHD0_DITHER1_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef4          : 8   ; // [7..0] 
        unsigned int    dither_coef5          : 8   ; // [15..8] 
        unsigned int    dither_coef6          : 8   ; // [23..16] 
        unsigned int    dither_coef7          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_DITHER1_COEF1;

// Define the union U_DHD0_CLIP0_L
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_cl0              : 10  ; // [9..0] 
        unsigned int    clip_cl1              : 10  ; // [19..10] 
        unsigned int    clip_cl2              : 10  ; // [29..20] 
        unsigned int    Reserved_359          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CLIP0_L;

// Define the union U_DHD0_CLIP0_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_ch0              : 10  ; // [9..0] 
        unsigned int    clip_ch1              : 10  ; // [19..10] 
        unsigned int    clip_ch2              : 10  ; // [29..20] 
        unsigned int    Reserved_361          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CLIP0_H;

// Define the union U_DHD0_CLIP1_L
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_cl0              : 10  ; // [9..0] 
        unsigned int    clip_cl1              : 10  ; // [19..10] 
        unsigned int    clip_cl2              : 10  ; // [29..20] 
        unsigned int    Reserved_362          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CLIP1_L;

// Define the union U_DHD0_CLIP1_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_ch0              : 10  ; // [9..0] 
        unsigned int    clip_ch1              : 10  ; // [19..10] 
        unsigned int    clip_ch2              : 10  ; // [29..20] 
        unsigned int    Reserved_363          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CLIP1_H;

// Define the union U_DHD0_CLIP2_L
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_cl0              : 10  ; // [9..0] 
        unsigned int    clip_cl1              : 10  ; // [19..10] 
        unsigned int    clip_cl2              : 10  ; // [29..20] 
        unsigned int    Reserved_364          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CLIP2_L;

// Define the union U_DHD0_CLIP2_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_ch0              : 10  ; // [9..0] 
        unsigned int    clip_ch1              : 10  ; // [19..10] 
        unsigned int    clip_ch2              : 10  ; // [29..20] 
        unsigned int    Reserved_365          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CLIP2_H;

// Define the union U_DHD0_CLIP3_L
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_cl0              : 10  ; // [9..0] 
        unsigned int    clip_cl1              : 10  ; // [19..10] 
        unsigned int    clip_cl2              : 10  ; // [29..20] 
        unsigned int    Reserved_366          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CLIP3_L;

// Define the union U_DHD0_CLIP3_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_ch0              : 10  ; // [9..0] 
        unsigned int    clip_ch1              : 10  ; // [19..10] 
        unsigned int    clip_ch2              : 10  ; // [29..20] 
        unsigned int    Reserved_367          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CLIP3_H;

// Define the union U_DHD0_CLIP4_L
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_cl0              : 10  ; // [9..0] 
        unsigned int    clip_cl1              : 10  ; // [19..10] 
        unsigned int    clip_cl2              : 10  ; // [29..20] 
        unsigned int    Reserved_368          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CLIP4_L;

// Define the union U_DHD0_CLIP4_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_ch0              : 10  ; // [9..0] 
        unsigned int    clip_ch1              : 10  ; // [19..10] 
        unsigned int    clip_ch2              : 10  ; // [29..20] 
        unsigned int    Reserved_369          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_CLIP4_H;

// Define the union U_DHD0_START_POS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    start_pos             : 8   ; // [7..0] 
        unsigned int    timing_start_pos      : 8   ; // [15..8] 
        unsigned int    Reserved_370          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_START_POS;

// Define the union U_DHD0_LOCKCFG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    measure_en            : 1   ; // [0] 
        unsigned int    lock_cnt_en           : 1   ; // [1] 
        unsigned int    Reserved_372          : 30  ; // [31..2] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_LOCKCFG;

// Define the union U_DHD0_LOCK_STATE1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cap_frm_cnt           : 26  ; // [25..0] 
        unsigned int    Reserved_374          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_LOCK_STATE1;

// Define the union U_DHD0_LOCK_STATE2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vsync_cap_vdp_init    : 26  ; // [25..0] 
        unsigned int    Reserved_375          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_LOCK_STATE2;

// Define the union U_DHD0_LOCK_STATE3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vsync_cap_vdp_cnt     : 26  ; // [25..0] 
        unsigned int    Reserved_376          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_LOCK_STATE3;

// Define the union U_DHD0_GMM_COEFAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_GMM_COEFAD;
// Define the union U_DHD0_PARAUP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dhd0_gmm_upd          : 1   ; // [0] 
        unsigned int    Reserved_377          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_PARAUP;

// Define the union U_DHD0_STATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vback_blank           : 1   ; // [0] 
        unsigned int    vblank                : 1   ; // [1] 
        unsigned int    bottom_field          : 1   ; // [2] 
        unsigned int    vcnt                  : 13  ; // [15..3] 
        unsigned int    Reserved_379          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_STATE;

// Define the union U_DHD0_DEBUG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pix_h                 : 16  ; // [15..0] 
        unsigned int    pix_v                 : 12  ; // [27..16] 
        unsigned int    pix_src               : 3   ; // [30..28] 
        unsigned int    Reserved_380          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_DEBUG;

// Define the union U_DHD0_DEBUG_STATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pixel_value           : 30  ; // [29..0] 
        unsigned int    Reserved_382          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD0_DEBUG_STATE;

// Define the union U_DHD0_BT1120_YSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int bt1120_ysum             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_BT1120_YSUM;
// Define the union U_DHD0_BT1120_CSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int bt1120_csum             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_BT1120_CSUM;
// Define the union U_DHD0_DATE_YSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_ysum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_DATE_YSUM;
// Define the union U_DHD0_DATE_USUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_usum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_DATE_USUM;
// Define the union U_DHD0_DATE_VSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_vsum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_DATE_VSUM;
// Define the union U_DHD0_HDMI_RSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int hdmi_rsum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_HDMI_RSUM;
// Define the union U_DHD0_HDMI_GSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int hdmi_gsum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_HDMI_GSUM;
// Define the union U_DHD0_HDMI_BSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int hdmi_bsum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_HDMI_BSUM;
// Define the union U_DHD0_VGA_RSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vga_rsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_VGA_RSUM;
// Define the union U_DHD0_VGA_GSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vga_gsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_VGA_GSUM;
// Define the union U_DHD0_VGA_BSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vga_bsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_VGA_BSUM;
// Define the union U_DHD0_LCD_RSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int lcd_rsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_LCD_RSUM;
// Define the union U_DHD0_LCD_GSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int lcd_gsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_LCD_GSUM;
// Define the union U_DHD0_LCD_BSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int lcd_bsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD0_LCD_BSUM;
// Define the union U_DHD1_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_391          : 2   ; // [2..1] 
        unsigned int    fp_en                 : 1   ; // [3] 
        unsigned int    iop                   : 1   ; // [4] 
        unsigned int    Reserved_390          : 7   ; // [11..5] 
        unsigned int    gmm_mode              : 1   ; // [12] 
        unsigned int    gmm_en                : 1   ; // [13] 
        unsigned int    hdmi_mode             : 1   ; // [14] 
        unsigned int    Reserved_389          : 5   ; // [19..15] 
        unsigned int    fpga_lmt_width        : 7   ; // [26..20] 
        unsigned int    fpga_lmt_en           : 1   ; // [27] 
        unsigned int    Reserved_388          : 1   ; // [28] 
        unsigned int    cbar_sel              : 1   ; // [29] 
        unsigned int    cbar_en               : 1   ; // [30] 
        unsigned int    intf_en               : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CTRL;

// Define the union U_DHD1_VSYNC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vact                  : 12  ; // [11..0] 
        unsigned int    vbb                   : 8   ; // [19..12] 
        unsigned int    vfb                   : 8   ; // [27..20] 
        unsigned int    Reserved_393          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_VSYNC;

// Define the union U_DHD1_HSYNC1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hact                  : 16  ; // [15..0] 
        unsigned int    hbb                   : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_HSYNC1;

// Define the union U_DHD1_HSYNC2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hfb                   : 16  ; // [15..0] 
        unsigned int    hmid                  : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_HSYNC2;

// Define the union U_DHD1_VPLUS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    bvact                 : 12  ; // [11..0] 
        unsigned int    bvbb                  : 8   ; // [19..12] 
        unsigned int    bvfb                  : 8   ; // [27..20] 
        unsigned int    Reserved_394          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_VPLUS;

// Define the union U_DHD1_PWR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hpw                   : 16  ; // [15..0] 
        unsigned int    vpw                   : 8   ; // [23..16] 
        unsigned int    Reserved_395          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_PWR;

// Define the union U_DHD1_VTTHD3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vtmgthd3              : 13  ; // [12..0] 
        unsigned int    Reserved_397          : 2   ; // [14..13] 
        unsigned int    thd3_mode             : 1   ; // [15] 
        unsigned int    vtmgthd4              : 13  ; // [28..16] 
        unsigned int    Reserved_396          : 2   ; // [30..29] 
        unsigned int    thd4_mode             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_VTTHD3;

// Define the union U_DHD1_VTTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vtmgthd1              : 13  ; // [12..0] 
        unsigned int    Reserved_399          : 2   ; // [14..13] 
        unsigned int    thd1_mode             : 1   ; // [15] 
        unsigned int    vtmgthd2              : 13  ; // [28..16] 
        unsigned int    Reserved_398          : 2   ; // [30..29] 
        unsigned int    thd2_mode             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_VTTHD;

// Define the union U_DHD1_SYNC_INV
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lcd_dv_inv            : 1   ; // [0] 
        unsigned int    lcd_hs_inv            : 1   ; // [1] 
        unsigned int    lcd_vs_inv            : 1   ; // [2] 
        unsigned int    Reserved_402          : 1   ; // [3] 
        unsigned int    vga_dv_inv            : 1   ; // [4] 
        unsigned int    vga_hs_inv            : 1   ; // [5] 
        unsigned int    vga_vs_inv            : 1   ; // [6] 
        unsigned int    Reserved_401          : 1   ; // [7] 
        unsigned int    hdmi_dv_inv           : 1   ; // [8] 
        unsigned int    hdmi_hs_inv           : 1   ; // [9] 
        unsigned int    hdmi_vs_inv           : 1   ; // [10] 
        unsigned int    hdmi_f_inv            : 1   ; // [11] 
        unsigned int    date_dv_inv           : 1   ; // [12] 
        unsigned int    date_hs_inv           : 1   ; // [13] 
        unsigned int    date_vs_inv           : 1   ; // [14] 
        unsigned int    date_f_inv            : 1   ; // [15] 
        unsigned int    Reserved_400          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_SYNC_INV;

// Define the union U_DHD1_CSC_IDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 11  ; // [10..0] 
        unsigned int    cscidc1               : 11  ; // [21..11] 
        unsigned int    csc_en                : 1   ; // [22] 
        unsigned int    Reserved_403          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CSC_IDC;

// Define the union U_DHD1_CSC_ODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 11  ; // [10..0] 
        unsigned int    cscodc1               : 11  ; // [21..11] 
        unsigned int    csc_sign_mode         : 1   ; // [22] 
        unsigned int    Reserved_405          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CSC_ODC;

// Define the union U_DHD1_CSC_IODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc2               : 11  ; // [10..0] 
        unsigned int    cscodc2               : 11  ; // [21..11] 
        unsigned int    Reserved_406          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CSC_IODC;

// Define the union U_DHD1_CSC_P0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_408          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_407          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CSC_P0;

// Define the union U_DHD1_CSC_P1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_410          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_409          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CSC_P1;

// Define the union U_DHD1_CSC_P2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_412          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_411          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CSC_P2;

// Define the union U_DHD1_CSC_P3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_414          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_413          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CSC_P3;

// Define the union U_DHD1_CSC_P4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_415          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CSC_P4;

// Define the union U_DHD1_DITHER0_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_416          : 29  ; // [28..0] 
        unsigned int    dither_md             : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_DITHER0_CTRL;

// Define the union U_DHD1_DITHER0_COEF0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef0          : 8   ; // [7..0] 
        unsigned int    dither_coef1          : 8   ; // [15..8] 
        unsigned int    dither_coef2          : 8   ; // [23..16] 
        unsigned int    dither_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_DITHER0_COEF0;

// Define the union U_DHD1_DITHER0_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef4          : 8   ; // [7..0] 
        unsigned int    dither_coef5          : 8   ; // [15..8] 
        unsigned int    dither_coef6          : 8   ; // [23..16] 
        unsigned int    dither_coef7          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_DITHER0_COEF1;

// Define the union U_DHD1_DITHER1_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_417          : 29  ; // [28..0] 
        unsigned int    dither_md             : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_DITHER1_CTRL;

// Define the union U_DHD1_DITHER1_COEF0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef0          : 8   ; // [7..0] 
        unsigned int    dither_coef1          : 8   ; // [15..8] 
        unsigned int    dither_coef2          : 8   ; // [23..16] 
        unsigned int    dither_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_DITHER1_COEF0;

// Define the union U_DHD1_DITHER1_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dither_coef4          : 8   ; // [7..0] 
        unsigned int    dither_coef5          : 8   ; // [15..8] 
        unsigned int    dither_coef6          : 8   ; // [23..16] 
        unsigned int    dither_coef7          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_DITHER1_COEF1;

// Define the union U_DHD1_CLIP0_L
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_cl0              : 10  ; // [9..0] 
        unsigned int    clip_cl1              : 10  ; // [19..10] 
        unsigned int    clip_cl2              : 10  ; // [29..20] 
        unsigned int    Reserved_419          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CLIP0_L;

// Define the union U_DHD1_CLIP0_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_ch0              : 10  ; // [9..0] 
        unsigned int    clip_ch1              : 10  ; // [19..10] 
        unsigned int    clip_ch2              : 10  ; // [29..20] 
        unsigned int    Reserved_421          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CLIP0_H;

// Define the union U_DHD1_CLIP1_L
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_cl0              : 10  ; // [9..0] 
        unsigned int    clip_cl1              : 10  ; // [19..10] 
        unsigned int    clip_cl2              : 10  ; // [29..20] 
        unsigned int    Reserved_422          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CLIP1_L;

// Define the union U_DHD1_CLIP1_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_ch0              : 10  ; // [9..0] 
        unsigned int    clip_ch1              : 10  ; // [19..10] 
        unsigned int    clip_ch2              : 10  ; // [29..20] 
        unsigned int    Reserved_423          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CLIP1_H;

// Define the union U_DHD1_CLIP2_L
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_cl0              : 10  ; // [9..0] 
        unsigned int    clip_cl1              : 10  ; // [19..10] 
        unsigned int    clip_cl2              : 10  ; // [29..20] 
        unsigned int    Reserved_424          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CLIP2_L;

// Define the union U_DHD1_CLIP2_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_ch0              : 10  ; // [9..0] 
        unsigned int    clip_ch1              : 10  ; // [19..10] 
        unsigned int    clip_ch2              : 10  ; // [29..20] 
        unsigned int    Reserved_425          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CLIP2_H;

// Define the union U_DHD1_CLIP3_L
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_cl0              : 10  ; // [9..0] 
        unsigned int    clip_cl1              : 10  ; // [19..10] 
        unsigned int    clip_cl2              : 10  ; // [29..20] 
        unsigned int    Reserved_426          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CLIP3_L;

// Define the union U_DHD1_CLIP3_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_ch0              : 10  ; // [9..0] 
        unsigned int    clip_ch1              : 10  ; // [19..10] 
        unsigned int    clip_ch2              : 10  ; // [29..20] 
        unsigned int    Reserved_427          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CLIP3_H;

// Define the union U_DHD1_CLIP4_L
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_cl0              : 10  ; // [9..0] 
        unsigned int    clip_cl1              : 10  ; // [19..10] 
        unsigned int    clip_cl2              : 10  ; // [29..20] 
        unsigned int    Reserved_428          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CLIP4_L;

// Define the union U_DHD1_CLIP4_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clip_ch0              : 10  ; // [9..0] 
        unsigned int    clip_ch1              : 10  ; // [19..10] 
        unsigned int    clip_ch2              : 10  ; // [29..20] 
        unsigned int    Reserved_429          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_CLIP4_H;

// Define the union U_DHD1_START_POS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    start_pos             : 8   ; // [7..0] 
        unsigned int    timing_start_pos      : 8   ; // [15..8] 
        unsigned int    Reserved_430          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_START_POS;

// Define the union U_DHD1_LOCKCFG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    measure_en            : 1   ; // [0] 
        unsigned int    lock_cnt_en           : 1   ; // [1] 
        unsigned int    Reserved_432          : 30  ; // [31..2] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_LOCKCFG;

// Define the union U_DHD1_LOCK_STATE1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cap_frm_cnt           : 26  ; // [25..0] 
        unsigned int    Reserved_434          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_LOCK_STATE1;

// Define the union U_DHD1_LOCK_STATE2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vsync_cap_vdp_init    : 26  ; // [25..0] 
        unsigned int    Reserved_435          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_LOCK_STATE2;

// Define the union U_DHD1_LOCK_STATE3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vsync_cap_vdp_cnt     : 26  ; // [25..0] 
        unsigned int    Reserved_436          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_LOCK_STATE3;

// Define the union U_DHD1_GMM_COEFAD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_GMM_COEFAD;
// Define the union U_DHD1_PARAUP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    DHD1_gmm_upd          : 1   ; // [0] 
        unsigned int    Reserved_437          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_PARAUP;

// Define the union U_DHD1_STATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vback_blank           : 1   ; // [0] 
        unsigned int    vblank                : 1   ; // [1] 
        unsigned int    bottom_field          : 1   ; // [2] 
        unsigned int    vcnt                  : 13  ; // [15..3] 
        unsigned int    Reserved_439          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_STATE;

// Define the union U_DHD1_DEBUG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pix_h                 : 16  ; // [15..0] 
        unsigned int    pix_v                 : 12  ; // [27..16] 
        unsigned int    pix_src               : 3   ; // [30..28] 
        unsigned int    Reserved_440          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_DEBUG;

// Define the union U_DHD1_DEBUG_STATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pixel_value           : 30  ; // [29..0] 
        unsigned int    Reserved_442          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHD1_DEBUG_STATE;

// Define the union U_DHD1_BT1120_YSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int bt1120_ysum             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_BT1120_YSUM;
// Define the union U_DHD1_BT1120_CSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int bt1120_csum             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_BT1120_CSUM;
// Define the union U_DHD1_DATE_YSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_ysum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_DATE_YSUM;
// Define the union U_DHD1_DATE_USUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_usum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_DATE_USUM;
// Define the union U_DHD1_DATE_VSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_vsum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_DATE_VSUM;
// Define the union U_DHD1_HDMI_RSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int hdmi_rsum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_HDMI_RSUM;
// Define the union U_DHD1_HDMI_GSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int hdmi_gsum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_HDMI_GSUM;
// Define the union U_DHD1_HDMI_BSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int hdmi_bsum               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_HDMI_BSUM;
// Define the union U_DHD1_VGA_RSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vga_rsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_VGA_RSUM;
// Define the union U_DHD1_VGA_GSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vga_gsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_VGA_GSUM;
// Define the union U_DHD1_VGA_BSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vga_bsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_VGA_BSUM;
// Define the union U_DHD1_LCD_RSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int lcd_rsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_LCD_RSUM;
// Define the union U_DHD1_LCD_GSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int lcd_gsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_LCD_GSUM;
// Define the union U_DHD1_LCD_BSUM
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int lcd_bsum                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD1_LCD_BSUM;
// Define the union U_HDATE_VERSION
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int hdate_version           : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDATE_VERSION;
// Define the union U_HDATE_EN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hd_en                 : 1   ; // [0] 
        unsigned int    Reserved_449          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_EN;

// Define the union U_HDATE_POLA_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hsync_in_pola         : 1   ; // [0] 
        unsigned int    vsync_in_pola         : 1   ; // [1] 
        unsigned int    fid_in_pola           : 1   ; // [2] 
        unsigned int    hsync_out_pola        : 1   ; // [3] 
        unsigned int    vsync_out_pola        : 1   ; // [4] 
        unsigned int    fid_out_pola          : 1   ; // [5] 
        unsigned int    Reserved_450          : 26  ; // [31..6] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_POLA_CTRL;

// Define the union U_HDATE_VIDEO_FORMAT
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_ft              : 4   ; // [3..0] 
        unsigned int    sync_add_ctrl         : 3   ; // [6..4] 
        unsigned int    video_out_ctrl        : 2   ; // [8..7] 
        unsigned int    csc_ctrl              : 3   ; // [11..9] 
        unsigned int    Reserved_451          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_VIDEO_FORMAT;

// Define the union U_HDATE_STATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    line_len              : 13  ; // [12..0] 
        unsigned int    Reserved_454          : 3   ; // [15..13] 
        unsigned int    frame_len             : 11  ; // [26..16] 
        unsigned int    Reserved_453          : 1   ; // [27] 
        unsigned int    mv_en_pin             : 1   ; // [28] 
        unsigned int    Reserved_452          : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_STATE;

// Define the union U_HDATE_OUT_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vsync_sel             : 2   ; // [1..0] 
        unsigned int    hsync_sel             : 2   ; // [3..2] 
        unsigned int    video3_sel            : 2   ; // [5..4] 
        unsigned int    video2_sel            : 2   ; // [7..6] 
        unsigned int    video1_sel            : 2   ; // [9..8] 
        unsigned int    src_ctrl              : 2   ; // [11..10] 
        unsigned int    sync_lpf_en           : 1   ; // [12] 
        unsigned int    sd_sel                : 1   ; // [13] 
        unsigned int    Reserved_455          : 18  ; // [31..14] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_OUT_CTRL;

// Define the union U_HDATE_SRC_13_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap1_1           : 11  ; // [10..0] 
        unsigned int    Reserved_457          : 5   ; // [15..11] 
        unsigned int    coef_tap1_3           : 11  ; // [26..16] 
        unsigned int    Reserved_456          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF1;

// Define the union U_HDATE_SRC_13_COEF2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap2_1           : 11  ; // [10..0] 
        unsigned int    Reserved_459          : 5   ; // [15..11] 
        unsigned int    coef_tap2_3           : 11  ; // [26..16] 
        unsigned int    Reserved_458          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF2;

// Define the union U_HDATE_SRC_13_COEF3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap3_1           : 11  ; // [10..0] 
        unsigned int    Reserved_461          : 5   ; // [15..11] 
        unsigned int    coef_tap3_3           : 11  ; // [26..16] 
        unsigned int    Reserved_460          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF3;

// Define the union U_HDATE_SRC_13_COEF4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap4_1           : 11  ; // [10..0] 
        unsigned int    Reserved_463          : 5   ; // [15..11] 
        unsigned int    coef_tap4_3           : 11  ; // [26..16] 
        unsigned int    Reserved_462          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF4;

// Define the union U_HDATE_SRC_13_COEF5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap5_1           : 11  ; // [10..0] 
        unsigned int    Reserved_465          : 5   ; // [15..11] 
        unsigned int    coef_tap5_3           : 11  ; // [26..16] 
        unsigned int    Reserved_464          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF5;

// Define the union U_HDATE_SRC_13_COEF6
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap6_1           : 11  ; // [10..0] 
        unsigned int    Reserved_467          : 5   ; // [15..11] 
        unsigned int    coef_tap6_3           : 11  ; // [26..16] 
        unsigned int    Reserved_466          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF6;

// Define the union U_HDATE_SRC_13_COEF7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap7_1           : 11  ; // [10..0] 
        unsigned int    Reserved_469          : 5   ; // [15..11] 
        unsigned int    coef_tap7_3           : 11  ; // [26..16] 
        unsigned int    Reserved_468          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF7;

// Define the union U_HDATE_SRC_13_COEF8
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap8_1           : 11  ; // [10..0] 
        unsigned int    Reserved_471          : 5   ; // [15..11] 
        unsigned int    coef_tap8_3           : 11  ; // [26..16] 
        unsigned int    Reserved_470          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF8;

// Define the union U_HDATE_SRC_13_COEF9
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap9_1           : 11  ; // [10..0] 
        unsigned int    Reserved_473          : 5   ; // [15..11] 
        unsigned int    coef_tap9_3           : 11  ; // [26..16] 
        unsigned int    Reserved_472          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF9;

// Define the union U_HDATE_SRC_13_COEF10
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap10_1          : 11  ; // [10..0] 
        unsigned int    Reserved_475          : 5   ; // [15..11] 
        unsigned int    coef_tap10_3          : 11  ; // [26..16] 
        unsigned int    Reserved_474          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF10;

// Define the union U_HDATE_SRC_13_COEF11
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap11_1          : 11  ; // [10..0] 
        unsigned int    Reserved_477          : 5   ; // [15..11] 
        unsigned int    coef_tap11_3          : 11  ; // [26..16] 
        unsigned int    Reserved_476          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF11;

// Define the union U_HDATE_SRC_13_COEF12
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap12_1          : 11  ; // [10..0] 
        unsigned int    Reserved_479          : 5   ; // [15..11] 
        unsigned int    coef_tap12_3          : 11  ; // [26..16] 
        unsigned int    Reserved_478          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF12;

// Define the union U_HDATE_SRC_13_COEF13
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap13_1          : 11  ; // [10..0] 
        unsigned int    Reserved_481          : 5   ; // [15..11] 
        unsigned int    coef_tap13_3          : 11  ; // [26..16] 
        unsigned int    Reserved_480          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF13;

// Define the union U_HDATE_SRC_24_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap1_2           : 11  ; // [10..0] 
        unsigned int    Reserved_483          : 5   ; // [15..11] 
        unsigned int    coef_tap1_4           : 11  ; // [26..16] 
        unsigned int    Reserved_482          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF1;

// Define the union U_HDATE_SRC_24_COEF2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap2_2           : 11  ; // [10..0] 
        unsigned int    Reserved_485          : 5   ; // [15..11] 
        unsigned int    coef_tap2_4           : 11  ; // [26..16] 
        unsigned int    Reserved_484          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF2;

// Define the union U_HDATE_SRC_24_COEF3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap3_2           : 11  ; // [10..0] 
        unsigned int    Reserved_487          : 5   ; // [15..11] 
        unsigned int    coef_tap3_4           : 11  ; // [26..16] 
        unsigned int    Reserved_486          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF3;

// Define the union U_HDATE_SRC_24_COEF4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap4_2           : 11  ; // [10..0] 
        unsigned int    Reserved_489          : 5   ; // [15..11] 
        unsigned int    coef_tap4_4           : 11  ; // [26..16] 
        unsigned int    Reserved_488          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF4;

// Define the union U_HDATE_SRC_24_COEF5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap5_2           : 11  ; // [10..0] 
        unsigned int    Reserved_491          : 5   ; // [15..11] 
        unsigned int    coef_tap5_4           : 11  ; // [26..16] 
        unsigned int    Reserved_490          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF5;

// Define the union U_HDATE_SRC_24_COEF6
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap6_2           : 11  ; // [10..0] 
        unsigned int    Reserved_493          : 5   ; // [15..11] 
        unsigned int    coef_tap6_4           : 11  ; // [26..16] 
        unsigned int    Reserved_492          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF6;

// Define the union U_HDATE_SRC_24_COEF7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap7_2           : 11  ; // [10..0] 
        unsigned int    Reserved_495          : 5   ; // [15..11] 
        unsigned int    coef_tap7_4           : 11  ; // [26..16] 
        unsigned int    Reserved_494          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF7;

// Define the union U_HDATE_SRC_24_COEF8
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap8_2           : 11  ; // [10..0] 
        unsigned int    Reserved_497          : 5   ; // [15..11] 
        unsigned int    coef_tap8_4           : 11  ; // [26..16] 
        unsigned int    Reserved_496          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF8;

// Define the union U_HDATE_SRC_24_COEF9
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap9_2           : 11  ; // [10..0] 
        unsigned int    Reserved_499          : 5   ; // [15..11] 
        unsigned int    coef_tap9_4           : 11  ; // [26..16] 
        unsigned int    Reserved_498          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF9;

// Define the union U_HDATE_SRC_24_COEF10
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap10_2          : 11  ; // [10..0] 
        unsigned int    Reserved_501          : 5   ; // [15..11] 
        unsigned int    coef_tap10_4          : 11  ; // [26..16] 
        unsigned int    Reserved_500          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF10;

// Define the union U_HDATE_SRC_24_COEF11
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap11_2          : 11  ; // [10..0] 
        unsigned int    Reserved_503          : 5   ; // [15..11] 
        unsigned int    coef_tap11_4          : 11  ; // [26..16] 
        unsigned int    Reserved_502          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF11;

// Define the union U_HDATE_SRC_24_COEF12
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap12_2          : 11  ; // [10..0] 
        unsigned int    Reserved_505          : 5   ; // [15..11] 
        unsigned int    coef_tap12_4          : 11  ; // [26..16] 
        unsigned int    Reserved_504          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF12;

// Define the union U_HDATE_SRC_24_COEF13
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap13_2          : 11  ; // [10..0] 
        unsigned int    Reserved_507          : 5   ; // [15..11] 
        unsigned int    coef_tap13_4          : 11  ; // [26..16] 
        unsigned int    Reserved_506          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF13;

// Define the union U_HDATE_CSC_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_coef_r_y          : 12  ; // [11..0] 
        unsigned int    Reserved_509          : 4   ; // [15..12] 
        unsigned int    csc_coef_r_cb         : 12  ; // [27..16] 
        unsigned int    Reserved_508          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_COEF1;

// Define the union U_HDATE_CSC_COEF2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_coef_r_cr         : 12  ; // [11..0] 
        unsigned int    Reserved_511          : 4   ; // [15..12] 
        unsigned int    csc_coef_g_y          : 12  ; // [27..16] 
        unsigned int    Reserved_510          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_COEF2;

// Define the union U_HDATE_CSC_COEF3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_coef_g_cb         : 12  ; // [11..0] 
        unsigned int    Reserved_513          : 4   ; // [15..12] 
        unsigned int    csc_coef_g_cr         : 12  ; // [27..16] 
        unsigned int    Reserved_512          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_COEF3;

// Define the union U_HDATE_CSC_COEF4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_coef_b_y          : 12  ; // [11..0] 
        unsigned int    Reserved_515          : 4   ; // [15..12] 
        unsigned int    csc_coef_b_cb         : 12  ; // [27..16] 
        unsigned int    Reserved_514          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_COEF4;

// Define the union U_HDATE_CSC_COEF5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_coef_b_cr         : 12  ; // [11..0] 
        unsigned int    Reserved_516          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_COEF5;

// Define the union U_HDATE_TEST
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    test_data             : 10  ; // [9..0] 
        unsigned int    Reserved_517          : 22  ; // [31..10] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_TEST;

// Define the union U_HDATE_VBI_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cgmsb_add_en          : 1   ; // [0] 
        unsigned int    cgmsa_add_en          : 1   ; // [1] 
        unsigned int    mv_en                 : 1   ; // [2] 
        unsigned int    vbi_lpf_en            : 1   ; // [3] 
        unsigned int    Reserved_519          : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_VBI_CTRL;

// Define the union U_HDATE_CGMSA_DATA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cgmsa_data            : 20  ; // [19..0] 
        unsigned int    Reserved_520          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CGMSA_DATA;

// Define the union U_HDATE_CGMSB_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hdate_cgmsb_h         : 6   ; // [5..0] 
        unsigned int    Reserved_521          : 26  ; // [31..6] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CGMSB_H;

// Define the union U_HDATE_CGMSB_DATA1
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int cgmsb_data1             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDATE_CGMSB_DATA1;
// Define the union U_HDATE_CGMSB_DATA2
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int cgmsb_data2             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDATE_CGMSB_DATA2;
// Define the union U_HDATE_CGMSB_DATA3
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int cgmsb_data3             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDATE_CGMSB_DATA3;
// Define the union U_HDATE_CGMSB_DATA4
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int cgmsb_data4             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDATE_CGMSB_DATA4;
// Define the union U_HDATE_DACDET1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vdac_det_high         : 10  ; // [9..0] 
        unsigned int    Reserved_523          : 6   ; // [15..10] 
        unsigned int    det_line              : 10  ; // [25..16] 
        unsigned int    Reserved_522          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_DACDET1;

// Define the union U_HDATE_DACDET2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    det_pixel_sta         : 11  ; // [10..0] 
        unsigned int    Reserved_525          : 5   ; // [15..11] 
        unsigned int    det_pixel_wid         : 11  ; // [26..16] 
        unsigned int    Reserved_524          : 4   ; // [30..27] 
        unsigned int    vdac_det_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_DACDET2;

// Define the union U_HDATE_SRC_13_COEF14
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap14_1          : 11  ; // [10..0] 
        unsigned int    Reserved_527          : 5   ; // [15..11] 
        unsigned int    coef_tap14_3          : 11  ; // [26..16] 
        unsigned int    Reserved_526          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF14;

// Define the union U_HDATE_SRC_13_COEF15
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap15_1          : 11  ; // [10..0] 
        unsigned int    Reserved_529          : 5   ; // [15..11] 
        unsigned int    coef_tap15_3          : 11  ; // [26..16] 
        unsigned int    Reserved_528          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF15;

// Define the union U_HDATE_SRC_13_COEF16
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap16_1          : 11  ; // [10..0] 
        unsigned int    Reserved_531          : 5   ; // [15..11] 
        unsigned int    coef_tap16_3          : 11  ; // [26..16] 
        unsigned int    Reserved_530          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF16;

// Define the union U_HDATE_SRC_13_COEF17
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap17_1          : 11  ; // [10..0] 
        unsigned int    Reserved_533          : 5   ; // [15..11] 
        unsigned int    coef_tap17_3          : 11  ; // [26..16] 
        unsigned int    Reserved_532          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF17;

// Define the union U_HDATE_SRC_13_COEF18
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap18_1          : 11  ; // [10..0] 
        unsigned int    Reserved_535          : 5   ; // [15..11] 
        unsigned int    coef_tap18_3          : 11  ; // [26..16] 
        unsigned int    Reserved_534          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF18;

// Define the union U_HDATE_SRC_24_COEF14
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap14_2          : 11  ; // [10..0] 
        unsigned int    Reserved_537          : 5   ; // [15..11] 
        unsigned int    coef_tap14_4          : 11  ; // [26..16] 
        unsigned int    Reserved_536          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF14;

// Define the union U_HDATE_SRC_24_COEF15
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap15_2          : 11  ; // [10..0] 
        unsigned int    Reserved_539          : 5   ; // [15..11] 
        unsigned int    coef_tap15_4          : 11  ; // [26..16] 
        unsigned int    Reserved_538          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF15;

// Define the union U_HDATE_SRC_24_COEF16
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap16_2          : 11  ; // [10..0] 
        unsigned int    Reserved_541          : 5   ; // [15..11] 
        unsigned int    coef_tap16_4          : 11  ; // [26..16] 
        unsigned int    Reserved_540          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF16;

// Define the union U_HDATE_SRC_24_COEF17
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap17_2          : 11  ; // [10..0] 
        unsigned int    Reserved_543          : 5   ; // [15..11] 
        unsigned int    coef_tap17_4          : 11  ; // [26..16] 
        unsigned int    Reserved_542          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF17;

// Define the union U_HDATE_SRC_24_COEF18
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap18_2          : 11  ; // [10..0] 
        unsigned int    Reserved_545          : 5   ; // [15..11] 
        unsigned int    coef_tap18_4          : 11  ; // [26..16] 
        unsigned int    Reserved_544          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF18;

// Define the union U_DATE_COEFF0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt_seq                : 1   ; // [0] 
        unsigned int    chgain_en             : 1   ; // [1] 
        unsigned int    sylp_en               : 1   ; // [2] 
        unsigned int    chlp_en               : 1   ; // [3] 
        unsigned int    oversam2_en           : 1   ; // [4] 
        unsigned int    lunt_en               : 1   ; // [5] 
        unsigned int    oversam_en            : 2   ; // [7..6] 
        unsigned int    Reserved_547          : 1   ; // [8] 
        unsigned int    luma_dl               : 4   ; // [12..9] 
        unsigned int    agc_amp_sel           : 1   ; // [13] 
        unsigned int    length_sel            : 1   ; // [14] 
        unsigned int    sync_mode_scart       : 1   ; // [15] 
        unsigned int    sync_mode_sel         : 2   ; // [17..16] 
        unsigned int    style_sel             : 4   ; // [21..18] 
        unsigned int    fm_sel                : 1   ; // [22] 
        unsigned int    vbi_lpf_en            : 1   ; // [23] 
        unsigned int    rgb_en                : 1   ; // [24] 
        unsigned int    scanline              : 1   ; // [25] 
        unsigned int    pbpr_lpf_en           : 1   ; // [26] 
        unsigned int    pal_half_en           : 1   ; // [27] 
        unsigned int    Reserved_546          : 1   ; // [28] 
        unsigned int    dis_ire               : 1   ; // [29] 
        unsigned int    clpf_sel              : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF0;

// Define the union U_DATE_COEFF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dac_test              : 10  ; // [9..0] 
        unsigned int    date_test_mode        : 2   ; // [11..10] 
        unsigned int    date_test_en          : 1   ; // [12] 
        unsigned int    amp_outside           : 10  ; // [22..13] 
        unsigned int    c_limit_en            : 1   ; // [23] 
        unsigned int    cc_seq                : 1   ; // [24] 
        unsigned int    cgms_seq              : 1   ; // [25] 
        unsigned int    vps_seq               : 1   ; // [26] 
        unsigned int    wss_seq               : 1   ; // [27] 
        unsigned int    cvbs_limit_en         : 1   ; // [28] 
        unsigned int    c_gain                : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF1;

// Define the union U_DATE_COEFF2
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef02                  : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF2;
// Define the union U_DATE_COEFF3
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef03                  : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF3;
// Define the union U_DATE_COEFF4
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef04                  : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF4;
// Define the union U_DATE_COEFF5
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef05                  : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF5;
// Define the union U_DATE_COEFF6
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int coef06                  : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF6;
// Define the union U_DATE_COEFF7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt07_enf2             : 1   ; // [0] 
        unsigned int    tt08_enf2             : 1   ; // [1] 
        unsigned int    tt09_enf2             : 1   ; // [2] 
        unsigned int    tt10_enf2             : 1   ; // [3] 
        unsigned int    tt11_enf2             : 1   ; // [4] 
        unsigned int    tt12_enf2             : 1   ; // [5] 
        unsigned int    tt13_enf2             : 1   ; // [6] 
        unsigned int    tt14_enf2             : 1   ; // [7] 
        unsigned int    tt15_enf2             : 1   ; // [8] 
        unsigned int    tt16_enf2             : 1   ; // [9] 
        unsigned int    tt17_enf2             : 1   ; // [10] 
        unsigned int    tt18_enf2             : 1   ; // [11] 
        unsigned int    tt19_enf2             : 1   ; // [12] 
        unsigned int    tt20_enf2             : 1   ; // [13] 
        unsigned int    tt21_enf2             : 1   ; // [14] 
        unsigned int    tt22_enf2             : 1   ; // [15] 
        unsigned int    tt07_enf1             : 1   ; // [16] 
        unsigned int    tt08_enf1             : 1   ; // [17] 
        unsigned int    tt09_enf1             : 1   ; // [18] 
        unsigned int    tt10_enf1             : 1   ; // [19] 
        unsigned int    tt11_enf1             : 1   ; // [20] 
        unsigned int    tt12_enf1             : 1   ; // [21] 
        unsigned int    tt13_enf1             : 1   ; // [22] 
        unsigned int    tt14_enf1             : 1   ; // [23] 
        unsigned int    tt15_enf1             : 1   ; // [24] 
        unsigned int    tt16_enf1             : 1   ; // [25] 
        unsigned int    tt17_enf1             : 1   ; // [26] 
        unsigned int    tt18_enf1             : 1   ; // [27] 
        unsigned int    tt19_enf1             : 1   ; // [28] 
        unsigned int    tt20_enf1             : 1   ; // [29] 
        unsigned int    tt21_enf1             : 1   ; // [30] 
        unsigned int    tt22_enf1             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF7;

// Define the union U_DATE_COEFF8
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int tt_staddr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF8;
// Define the union U_DATE_COEFF9
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int tt_edaddr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF9;
// Define the union U_DATE_COEFF10
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt_pktoff             : 8   ; // [7..0] 
        unsigned int    tt_mode               : 2   ; // [9..8] 
        unsigned int    tt_highest            : 1   ; // [10] 
        unsigned int    full_page             : 1   ; // [11] 
        unsigned int    nabts_100ire          : 1   ; // [12] 
        unsigned int    Reserved_549          : 18  ; // [30..13] 
        unsigned int    tt_ready              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF10;

// Define the union U_DATE_COEFF11
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    date_clf2             : 10  ; // [9..0] 
        unsigned int    date_clf1             : 10  ; // [19..10] 
        unsigned int    cc_enf2               : 1   ; // [20] 
        unsigned int    cc_enf1               : 1   ; // [21] 
        unsigned int    Reserved_550          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF11;

// Define the union U_DATE_COEFF12
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cc_f2data             : 16  ; // [15..0] 
        unsigned int    cc_f1data             : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF12;

// Define the union U_DATE_COEFF13
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cg_f1data             : 20  ; // [19..0] 
        unsigned int    cg_enf2               : 1   ; // [20] 
        unsigned int    cg_enf1               : 1   ; // [21] 
        unsigned int    Reserved_551          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF13;

// Define the union U_DATE_COEFF14
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cg_f2data             : 20  ; // [19..0] 
        unsigned int    Reserved_552          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF14;

// Define the union U_DATE_COEFF15
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wss_data              : 14  ; // [13..0] 
        unsigned int    wss_en                : 1   ; // [14] 
        unsigned int    Reserved_553          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF15;

// Define the union U_DATE_COEFF16
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vps_data              : 24  ; // [23..0] 
        unsigned int    vps_en                : 1   ; // [24] 
        unsigned int    Reserved_554          : 7   ; // [31..25] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF16;

// Define the union U_DATE_COEFF17
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vps_data                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF17;
// Define the union U_DATE_COEFF18
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vps_data                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF18;
// Define the union U_DATE_COEFF19
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vps_data              : 16  ; // [15..0] 
        unsigned int    Reserved_555          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF19;

// Define the union U_DATE_COEFF20
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt05_enf2             : 1   ; // [0] 
        unsigned int    tt06_enf2             : 1   ; // [1] 
        unsigned int    tt06_enf1             : 1   ; // [2] 
        unsigned int    Reserved_556          : 29  ; // [31..3] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF20;

// Define the union U_DATE_COEFF21
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dac0_in_sel           : 3   ; // [2..0] 
        unsigned int    Reserved_562          : 1   ; // [3] 
        unsigned int    dac1_in_sel           : 3   ; // [6..4] 
        unsigned int    Reserved_561          : 1   ; // [7] 
        unsigned int    dac2_in_sel           : 3   ; // [10..8] 
        unsigned int    Reserved_560          : 1   ; // [11] 
        unsigned int    dac3_in_sel           : 3   ; // [14..12] 
        unsigned int    Reserved_559          : 1   ; // [15] 
        unsigned int    dac4_in_sel           : 3   ; // [18..16] 
        unsigned int    Reserved_558          : 1   ; // [19] 
        unsigned int    dac5_in_sel           : 3   ; // [22..20] 
        unsigned int    Reserved_557          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF21;

// Define the union U_DATE_COEFF22
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_phase_delta     : 11  ; // [10..0] 
        unsigned int    Reserved_563          : 21  ; // [31..11] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF22;

// Define the union U_DATE_COEFF23
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dac0_out_dly          : 3   ; // [2..0] 
        unsigned int    Reserved_569          : 1   ; // [3] 
        unsigned int    dac1_out_dly          : 3   ; // [6..4] 
        unsigned int    Reserved_568          : 1   ; // [7] 
        unsigned int    dac2_out_dly          : 3   ; // [10..8] 
        unsigned int    Reserved_567          : 1   ; // [11] 
        unsigned int    dac3_out_dly          : 3   ; // [14..12] 
        unsigned int    Reserved_566          : 1   ; // [15] 
        unsigned int    dac4_out_dly          : 3   ; // [18..16] 
        unsigned int    Reserved_565          : 1   ; // [19] 
        unsigned int    dac5_out_dly          : 3   ; // [22..20] 
        unsigned int    Reserved_564          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF23;

// Define the union U_DATE_COEFF24
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int burst_start             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF24;
// Define the union U_DATE_COEFF25
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    x_n_coef              : 13  ; // [12..0] 
        unsigned int    Reserved_571          : 3   ; // [15..13] 
        unsigned int    x_n_1_coef            : 13  ; // [28..16] 
        unsigned int    Reserved_570          : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF25;

// Define the union U_DATE_COEFF26
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    x_n_1_coef            : 13  ; // [12..0] 
        unsigned int    Reserved_572          : 19  ; // [31..13] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF26;

// Define the union U_DATE_COEFF27
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    y_n_coef              : 11  ; // [10..0] 
        unsigned int    Reserved_574          : 5   ; // [15..11] 
        unsigned int    y_n_1_coef            : 11  ; // [26..16] 
        unsigned int    Reserved_573          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF27;

// Define the union U_DATE_COEFF28
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pixel_begin1          : 11  ; // [10..0] 
        unsigned int    Reserved_576          : 5   ; // [15..11] 
        unsigned int    pixel_begin2          : 11  ; // [26..16] 
        unsigned int    Reserved_575          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF28;

// Define the union U_DATE_COEFF29
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pixel_end             : 11  ; // [10..0] 
        unsigned int    Reserved_577          : 21  ; // [31..11] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF29;

// Define the union U_DATE_COEFF30
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    g_secam               : 7   ; // [6..0] 
        unsigned int    Reserved_578          : 25  ; // [31..7] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF30;

// Define the union U_DATE_ISRMASK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt_mask               : 1   ; // [0] 
        unsigned int    Reserved_579          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_ISRMASK;

// Define the union U_DATE_ISRSTATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt_status             : 1   ; // [0] 
        unsigned int    Reserved_581          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_ISRSTATE;

// Define the union U_DATE_ISR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt_int                : 1   ; // [0] 
        unsigned int    Reserved_582          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_ISR;

// Define the union U_DATE_VERSION
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int Reserved_583            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_VERSION;
// Define the union U_DATE_COEFF37
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_y1_coeff0         : 8   ; // [7..0] 
        unsigned int    fir_y1_coeff1         : 8   ; // [15..8] 
        unsigned int    fir_y1_coeff2         : 8   ; // [23..16] 
        unsigned int    fir_y1_coeff3         : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF37;

// Define the union U_DATE_COEFF38
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_y2_coeff0         : 16  ; // [15..0] 
        unsigned int    fir_y2_coeff1         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF38;

// Define the union U_DATE_COEFF39
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_y2_coeff2         : 16  ; // [15..0] 
        unsigned int    fir_y2_coeff3         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF39;

// Define the union U_DATE_COEFF40
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_c1_coeff0         : 8   ; // [7..0] 
        unsigned int    fir_c1_coeff1         : 8   ; // [15..8] 
        unsigned int    fir_c1_coeff2         : 8   ; // [23..16] 
        unsigned int    fir_c1_coeff3         : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF40;

// Define the union U_DATE_COEFF41
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_c2_coeff0         : 16  ; // [15..0] 
        unsigned int    fir_c2_coeff1         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF41;

// Define the union U_DATE_COEFF42
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_c2_coeff2         : 16  ; // [15..0] 
        unsigned int    fir_c2_coeff3         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF42;

// Define the union U_DATE_DACDET1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vdac_det_high         : 10  ; // [9..0] 
        unsigned int    Reserved_586          : 6   ; // [15..10] 
        unsigned int    det_line              : 10  ; // [25..16] 
        unsigned int    Reserved_585          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_DACDET1;

// Define the union U_DATE_DACDET2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    det_pixel_sta         : 11  ; // [10..0] 
        unsigned int    Reserved_589          : 5   ; // [15..11] 
        unsigned int    det_pixel_wid         : 11  ; // [26..16] 
        unsigned int    Reserved_588          : 4   ; // [30..27] 
        unsigned int    vdac_det_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_DACDET2;

// Define the union U_DATE_COEFF50
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_591          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_590          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF50;

// Define the union U_DATE_COEFF51
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_593          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_592          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF51;

// Define the union U_DATE_COEFF52
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_595          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_594          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF52;

// Define the union U_DATE_COEFF53
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_597          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_596          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF53;

// Define the union U_DATE_COEFF54
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_599          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_598          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF54;

// Define the union U_DATE_COEFF55
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_601          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_600          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF55;

//==============================================================================
// Define the global struct
typedef struct
{
    U_VOCTRL             VOCTRL;
    U_VOINTSTA           VOINTSTA;
    U_VOMSKINTSTA        VOMSKINTSTA;
    U_VOINTMSK           VOINTMSK;
    U_VOUVERSION1        VOUVERSION1;
    U_VOUVERSION2        VOUVERSION2;
    unsigned int         Reserved_0[2];
    U_VODEBUG            VODEBUG;
    unsigned int         Reserved_1[3];
    U_VODDRSEL           VODDRSEL;
    U_VOAXICTRL          VOAXICTRL;
    unsigned int         Reserved_2[50];
    U_VO_MUX             VO_MUX;
    U_VO_MUX_DAC         VO_MUX_DAC;
    U_VO_MUX_TESTSYNC    VO_MUX_TESTSYNC;
    U_VO_MUX_TESTDATA    VO_MUX_TESTDATA;
    unsigned int         Reserved_3[4];
    U_VO_DAC_CTRL        VO_DAC_CTRL;
    unsigned int         Reserved_4[3];
    U_VO_DAC_C_CTRL      VO_DAC_C_CTRL;
    U_VO_DAC_R_CTRL      VO_DAC_R_CTRL;
    U_VO_DAC_G_CTRL      VO_DAC_G_CTRL;
    U_VO_DAC_B_CTRL      VO_DAC_B_CTRL;
    U_VO_DAC_STAT0       VO_DAC_STAT0;
    U_VO_DAC_STAT1       VO_DAC_STAT1;
    unsigned int         Reserved_5[174];
    U_COEF_DATA          COEF_DATA;
    unsigned int         Reserved_6[3];
    U_V0_PARARD          V0_PARARD;
    U_V1_PARARD          V1_PARARD;
    unsigned int         Reserved_7;
    U_V3_PARARD          V3_PARARD;
    unsigned int         Reserved_8[8];
    U_VP0_PARARD         VP0_PARARD;
    unsigned int         Reserved_9[19];
    U_GP0_PARARD         GP0_PARARD;
    U_GP1_PARARD         GP1_PARARD;
    unsigned int         Reserved_10[10];
    U_WBC0_PARARD        WBC0_PARARD;
    U_WBC1_PARARD        WBC1_PARARD;
    unsigned int         Reserved_11[10];
    U_DHD0_PARARD        DHD0_PARARD;
    U_DHD1_PARARD        DHD1_PARARD;
    unsigned int         Reserved_12[194];
    U_V0_CTRL            V0_CTRL;
    U_V0_UPD             V0_UPD;
    unsigned int         Reserved_13[2];
    U_V0_CADDR           V0_CADDR;
    U_V0_CCADDR          V0_CCADDR;
    U_V0_NADDR           V0_NADDR;
    U_V0_NCADDR          V0_NCADDR;
    U_V0_PRERD           V0_PRERD;
    U_V0_STRIDE          V0_STRIDE;
    U_V0_IRESO           V0_IRESO;
    U_V0_ORESO           V0_ORESO;
    unsigned int         Reserved_14[2];
    U_V0_CBMPARA         V0_CBMPARA;
    unsigned int         Reserved_15;
    U_V0_HCOEFAD         V0_HCOEFAD;
    U_V0_VCOEFAD         V0_VCOEFAD;
    U_V0_PARAUP          V0_PARAUP;
    unsigned int         Reserved_16[5];
    U_V0_DFPOS           V0_DFPOS;
    U_V0_DLPOS           V0_DLPOS;
    U_V0_VFPOS           V0_VFPOS;
    U_V0_VLPOS           V0_VLPOS;
    U_V0_BK              V0_BK;
    U_V0_ALPHA           V0_ALPHA;
    unsigned int         Reserved_17[2];
    U_V0_CSC_IDC         V0_CSC_IDC;
    U_V0_CSC_ODC         V0_CSC_ODC;
    U_V0_CSC_IODC        V0_CSC_IODC;
    U_V0_CSC_P0          V0_CSC_P0;
    U_V0_CSC_P1          V0_CSC_P1;
    U_V0_CSC_P2          V0_CSC_P2;
    U_V0_CSC_P3          V0_CSC_P3;
    U_V0_CSC_P4          V0_CSC_P4;
    unsigned int         Reserved_18[8];
    U_V0_HSP             V0_HSP;
    U_V0_HLOFFSET        V0_HLOFFSET;
    U_V0_HCOFFSET        V0_HCOFFSET;
    unsigned int         Reserved_19[3];
    U_V0_VSP             V0_VSP;
    U_V0_VSR             V0_VSR;
    U_V0_VOFFSET         V0_VOFFSET;
    U_V0_VBOFFSET        V0_VBOFFSET;
    unsigned int         Reserved_20[38];
    U_V0_IFIRCOEF01      V0_IFIRCOEF01;
    U_V0_IFIRCOEF23      V0_IFIRCOEF23;
    U_V0_IFIRCOEF45      V0_IFIRCOEF45;
    U_V0_IFIRCOEF67      V0_IFIRCOEF67;
    unsigned int         Reserved_21[3484];
    U_VP0_CTRL           VP0_CTRL;
    U_VP0_UPD            VP0_UPD;
    unsigned int         Reserved_22[2];
    U_VP0_AB_CCAD        VP0_AB_CCAD;
    U_VP0_ACM_CAD        VP0_ACM_CAD;
    U_VP0_PARAUP         VP0_PARAUP;
    unsigned int         Reserved_23;
    U_VP0_IRESO          VP0_IRESO;
    unsigned int         Reserved_24[59];
    U_VP0_ACM_CTRL       VP0_ACM_CTRL;
    U_VP0_ACM_ADJ        VP0_ACM_ADJ;
    unsigned int         Reserved_25[18];
    U_VP0_ABC_CTRL       VP0_ABC_CTRL;
    U_VP0_ABC_THRE1      VP0_ABC_THRE1;
    U_VP0_ABC_BRIGTHRE1  VP0_ABC_BRIGTHRE1;
    U_VP0_ABC_DARKTHRE1  VP0_ABC_DARKTHRE1;
    U_VP0_ABC_THRE2      VP0_ABC_THRE2;
    U_VP0_ABC_BRIGTHRE2  VP0_ABC_BRIGTHRE2;
    U_VP0_ABC_DARKTHRE2  VP0_ABC_DARKTHRE2;
    U_VP0_ABC_PARAADJ    VP0_ABC_PARAADJ;
    U_VP0_ABC_SKEWREAD   VP0_ABC_SKEWREAD;
    U_VP0_ABC_ADJREAD    VP0_ABC_ADJREAD;
    U_VP0_ABC_HBWCOEF    VP0_ABC_HBWCOEF;
    U_VP0_ABC_HBWOFFSET  VP0_ABC_HBWOFFSET;
    U_VP0_ABC_LUMATHR0   VP0_ABC_LUMATHR0;
    U_VP0_ABC_LUMATHR1   VP0_ABC_LUMATHR1;
    U_VP0_ABC_LUMATHR2   VP0_ABC_LUMATHR2;
    U_VP0_ABC_LUMATHR3   VP0_ABC_LUMATHR3;
    U_VP0_ABC_LUMACOEF0  VP0_ABC_LUMACOEF0;
    U_VP0_ABC_LUMACOEF1  VP0_ABC_LUMACOEF1;
    U_VP0_ABC_LUMACOEF2  VP0_ABC_LUMACOEF2;
    U_VP0_ABC_CLIP       VP0_ABC_CLIP;
    U_VP0_ABC_CLIPNEG    VP0_ABC_CLIPNEG;
    unsigned int         Reserved_26[19];
    U_VP0_DFPOS          VP0_DFPOS;
    U_VP0_DLPOS          VP0_DLPOS;
    U_VP0_VFPOS          VP0_VFPOS;
    U_VP0_VLPOS          VP0_VLPOS;
    U_VP0_BK             VP0_BK;
    U_VP0_ALPHA          VP0_ALPHA;
    unsigned int         Reserved_27[1914];
    U_G0_CTRL            G0_CTRL;
    U_G0_UPD             G0_UPD;
    unsigned int         Reserved_28[2];
    U_G0_ADDR            G0_ADDR;
    U_G0_CMPADDR         G0_CMPADDR;
    U_G0_NADDR           G0_NADDR;
    U_G0_STRIDE          G0_STRIDE;
    U_G0_IRESO           G0_IRESO;
    U_G0_SFPOS           G0_SFPOS;
    unsigned int         Reserved_29[2];
    U_G0_CBMPARA         G0_CBMPARA;
    U_G0_CKEYMAX         G0_CKEYMAX;
    U_G0_CKEYMIN         G0_CKEYMIN;
    U_G0_CMASK           G0_CMASK;
    U_G0_PARAADDR        G0_PARAADDR;
    U_G0_PARAUP          G0_PARAUP;
    unsigned int         Reserved_30[14];
    U_G0_DFPOS           G0_DFPOS;
    U_G0_DLPOS           G0_DLPOS;
    U_G0_VFPOS           G0_VFPOS;
    U_G0_VLPOS           G0_VLPOS;
    U_G0_BK              G0_BK;
    U_G0_ALPHA           G0_ALPHA;
    unsigned int         Reserved_31[2];
    U_G0_DOFCTRL         G0_DOFCTRL;
    U_G0_DOFSTEP         G0_DOFSTEP;
    unsigned int         Reserved_32[470];
    U_G1_CTRL            G1_CTRL;
    U_G1_UPD             G1_UPD;
    unsigned int         Reserved_33[2];
    U_G1_ADDR            G1_ADDR;
    U_G1_CMPADDR         G1_CMPADDR;
    U_G1_NADDR           G1_NADDR;
    U_G1_STRIDE          G1_STRIDE;
    U_G1_IRESO           G1_IRESO;
    U_G1_SFPOS           G1_SFPOS;
    unsigned int         Reserved_34[2];
    U_G1_CBMPARA         G1_CBMPARA;
    U_G1_CKEYMAX         G1_CKEYMAX;
    U_G1_CKEYMIN         G1_CKEYMIN;
    U_G1_CMASK           G1_CMASK;
    U_G1_PARAADDR        G1_PARAADDR;
    U_G1_PARAUP          G1_PARAUP;
    unsigned int         Reserved_35[14];
    U_G1_DFPOS           G1_DFPOS;
    U_G1_DLPOS           G1_DLPOS;
    U_G1_VFPOS           G1_VFPOS;
    U_G1_VLPOS           G1_VLPOS;
    U_G1_BK              G1_BK;
    U_G1_ALPHA           G1_ALPHA;
    unsigned int         Reserved_36[2];
    U_G1_DOFCTRL         G1_DOFCTRL;
    U_G1_DOFSTEP         G1_DOFSTEP;
    unsigned int         Reserved_37[2518];
    U_GP0_CTRL           GP0_CTRL;
    U_GP0_UPD            GP0_UPD;
    U_GP0_ORESO          GP0_ORESO;
    U_GP0_IRESO          GP0_IRESO;
    U_GP0_HCOEFAD        GP0_HCOEFAD;
    U_GP0_VCOEFAD        GP0_VCOEFAD;
    U_GP0_PARAUP         GP0_PARAUP;
    unsigned int         Reserved_38;
    U_GP0_GALPHA         GP0_GALPHA;
    unsigned int         Reserved_39[55];
    U_GP0_DFPOS          GP0_DFPOS;
    U_GP0_DLPOS          GP0_DLPOS;
    U_GP0_VFPOS          GP0_VFPOS;
    U_GP0_VLPOS          GP0_VLPOS;
    U_GP0_BK             GP0_BK;
    U_GP0_ALPHA          GP0_ALPHA;
    unsigned int         Reserved_40[2];
    U_GP0_CSC_IDC        GP0_CSC_IDC;
    U_GP0_CSC_ODC        GP0_CSC_ODC;
    U_GP0_CSC_IODC       GP0_CSC_IODC;
    U_GP0_CSC_P0         GP0_CSC_P0;
    U_GP0_CSC_P1         GP0_CSC_P1;
    U_GP0_CSC_P2         GP0_CSC_P2;
    U_GP0_CSC_P3         GP0_CSC_P3;
    U_GP0_CSC_P4         GP0_CSC_P4;
    U_GP0_ZME_HSP        GP0_ZME_HSP;
    U_GP0_ZME_HOFFSET    GP0_ZME_HOFFSET;
    U_GP0_ZME_VSP        GP0_ZME_VSP;
    U_GP0_ZME_VSR        GP0_ZME_VSR;
    U_GP0_ZME_VOFFSET    GP0_ZME_VOFFSET;
    unsigned int         Reserved_41[3];
    U_GP0_ZME_LTICTRL    GP0_ZME_LTICTRL;
    U_GP0_ZME_LHPASSCOEF GP0_ZME_LHPASSCOEF;
    U_GP0_ZME_LTITHD     GP0_ZME_LTITHD;
    unsigned int         Reserved_42;
    U_GP0_ZME_LHFREQTHD  GP0_ZME_LHFREQTHD;
    U_GP0_ZME_LGAINCOEF  GP0_ZME_LGAINCOEF;
    unsigned int         Reserved_43[2];
    U_GP0_ZME_CTICTRL    GP0_ZME_CTICTRL;
    U_GP0_ZME_CHPASSCOEF GP0_ZME_CHPASSCOEF;
    U_GP0_ZME_CTITHD     GP0_ZME_CTITHD;
    unsigned int         Reserved_44[413];
    U_GP1_CTRL           GP1_CTRL;
    U_GP1_UPD            GP1_UPD;
    U_GP1_ORESO          GP1_ORESO;
    U_GP1_IRESO          GP1_IRESO;
    U_GP1_HCOEFAD        GP1_HCOEFAD;
    U_GP1_VCOEFAD        GP1_VCOEFAD;
    U_GP1_PARAUP         GP1_PARAUP;
    unsigned int         Reserved_45;
    U_GP1_GALPHA         GP1_GALPHA;
    unsigned int         Reserved_46[55];
    U_GP1_DFPOS          GP1_DFPOS;
    U_GP1_DLPOS          GP1_DLPOS;
    U_GP1_VFPOS          GP1_VFPOS;
    U_GP1_VLPOS          GP1_VLPOS;
    U_GP1_BK             GP1_BK;
    U_GP1_ALPHA          GP1_ALPHA;
    unsigned int         Reserved_47[2];
    U_GP1_CSC_IDC        GP1_CSC_IDC;
    U_GP1_CSC_ODC        GP1_CSC_ODC;
    U_GP1_CSC_IODC       GP1_CSC_IODC;
    U_GP1_CSC_P0         GP1_CSC_P0;
    U_GP1_CSC_P1         GP1_CSC_P1;
    U_GP1_CSC_P2         GP1_CSC_P2;
    U_GP1_CSC_P3         GP1_CSC_P3;
    U_GP1_CSC_P4         GP1_CSC_P4;
    U_GP1_ZME_HSP        GP1_ZME_HSP;
    U_GP1_ZME_HOFFSET    GP1_ZME_HOFFSET;
    U_GP1_ZME_VSP        GP1_ZME_VSP;
    U_GP1_ZME_VSR        GP1_ZME_VSR;
    U_GP1_ZME_VOFFSET    GP1_ZME_VOFFSET;
    unsigned int         Reserved_48[3];
    U_GP1_ZME_LTICTRL    GP1_ZME_LTICTRL;
    U_GP1_ZME_LHPASSCOEF GP1_ZME_LHPASSCOEF;
    U_GP1_ZME_LTITHD     GP1_ZME_LTITHD;
    unsigned int         Reserved_49;
    U_GP1_ZME_LHFREQTHD  GP1_ZME_LHFREQTHD;
    U_GP1_ZME_LGAINCOEF  GP1_ZME_LGAINCOEF;
    unsigned int         Reserved_50[2];
    U_GP1_ZME_CTICTRL    GP1_ZME_CTICTRL;
    U_GP1_ZME_CHPASSCOEF GP1_ZME_CHPASSCOEF;
    U_GP1_ZME_CTITHD     GP1_ZME_CTITHD;
    unsigned int         Reserved_51[925];
    U_WBC_GP0_CTRL       WBC_GP0_CTRL;
    U_WBC_GP0_UPD        WBC_GP0_UPD;
    unsigned int         Reserved_52[2];
    U_WBC_GP0_YADDR      WBC_GP0_YADDR;
    U_WBC_GP0_CADDR      WBC_GP0_CADDR;
    U_WBC_GP0_STRIDE     WBC_GP0_STRIDE;
    unsigned int         Reserved_53;
    U_WBC_GP0_ORESO      WBC_GP0_ORESO;
    U_WBC_GP0_FCROP      WBC_GP0_FCROP;
    U_WBC_GP0_LCROP      WBC_GP0_LCROP;
    U_WBC_GP0_IRESO      WBC_GP0_IRESO;
    unsigned int         Reserved_54[8];
    U_WBC_GP0_SFIFO_CTRL WBC_GP0_SFIFO_CTRL;
    unsigned int         Reserved_55[43];
    U_WBC_GP0_DITHER_CTRL WBC_GP0_DITHER_CTRL;
    U_WBC_GP0_DITHER_COEF0 WBC_GP0_DITHER_COEF0;
    U_WBC_GP0_DITHER_COEF1 WBC_GP0_DITHER_COEF1;
    unsigned int         Reserved_56[189];
    U_WBC_DHD0_CTRL      WBC_DHD0_CTRL;
    U_WBC_DHD0_UPD       WBC_DHD0_UPD;
    unsigned int         Reserved_57[2];
    U_WBC_DHD0_YADDR     WBC_DHD0_YADDR;
    U_WBC_DHD0_CADDR     WBC_DHD0_CADDR;
    U_WBC_DHD0_STRIDE    WBC_DHD0_STRIDE;
    unsigned int         Reserved_58;
    U_WBC_DHD0_ORESO     WBC_DHD0_ORESO;
    U_WBC_DHD0_FCROP     WBC_DHD0_FCROP;
    U_WBC_DHD0_LCROP     WBC_DHD0_LCROP;
    unsigned int         Reserved_59[5];
    U_WBC_DHD0_HCOEFAD   WBC_DHD0_HCOEFAD;
    U_WBC_DHD0_VCOEFAD   WBC_DHD0_VCOEFAD;
    U_WBC_DHD0_PARAUP    WBC_DHD0_PARAUP;
    unsigned int         Reserved_60;
    U_WBC_DHD0_SFIFO_CTRL WBC_DHD0_SFIFO_CTRL;
    unsigned int         Reserved_61[43];
    U_WBC_DHD0_DITHER_CTRL WBC_DHD0_DITHER_CTRL;
    U_WBC_DHD0_DITHER_COEF0 WBC_DHD0_DITHER_COEF0;
    U_WBC_DHD0_DITHER_COEF1 WBC_DHD0_DITHER_COEF1;
    unsigned int         Reserved_62[109];
    U_WBC_DHD0_ZME_HSP   WBC_DHD0_ZME_HSP;
    U_WBC_DHD0_ZME_HLOFFSET WBC_DHD0_ZME_HLOFFSET;
    U_WBC_DHD0_ZME_HCOFFSET WBC_DHD0_ZME_HCOFFSET;
    unsigned int         Reserved_63[3];
    U_WBC_DHD0_ZME_VSP   WBC_DHD0_ZME_VSP;
    U_WBC_DHD0_ZME_VSR   WBC_DHD0_ZME_VSR;
    U_WBC_DHD0_ZME_VOFFSET WBC_DHD0_ZME_VOFFSET;
    U_WBC_DHD0_ZME_VBOFFSET WBC_DHD0_ZME_VBOFFSET;
    unsigned int         Reserved_64[6];
    U_WBC_DHD0_CSCIDC    WBC_DHD0_CSCIDC;
    U_WBC_DHD0_CSCODC    WBC_DHD0_CSCODC;
    U_WBC_DHD0_CSCP0     WBC_DHD0_CSCP0;
    U_WBC_DHD0_CSCP1     WBC_DHD0_CSCP1;
    U_WBC_DHD0_CSCP2     WBC_DHD0_CSCP2;
    U_WBC_DHD0_CSCP3     WBC_DHD0_CSCP3;
    U_WBC_DHD0_CSCP4     WBC_DHD0_CSCP4;
    unsigned int         Reserved_65[57];
    U_MIXV0_BKG          MIXV0_BKG;
    unsigned int         Reserved_66;
    U_MIXV0_MIX          MIXV0_MIX;
    unsigned int         Reserved_67[125];
    U_MIXG0_BKG          MIXG0_BKG;
    U_MIXG0_BKALPHA      MIXG0_BKALPHA;
    U_MIXG0_MIX          MIXG0_MIX;
    unsigned int         Reserved_68[13];
    U_MIXG0_ATTR         MIXG0_ATTR;
    unsigned int         Reserved_69[111];
    U_CBM_BKG1           CBM_BKG1;
    unsigned int         Reserved_70;
    U_CBM_MIX1           CBM_MIX1;
    unsigned int         Reserved_71[5];
    U_CBM_BKG2           CBM_BKG2;
    unsigned int         Reserved_72;
    U_CBM_MIX2           CBM_MIX2;
    unsigned int         Reserved_73[5];
    U_CBM_ATTR           CBM_ATTR;
    unsigned int         Reserved_74[751];
    U_DHD0_CTRL          DHD0_CTRL;
    U_DHD0_VSYNC         DHD0_VSYNC;
    U_DHD0_HSYNC1        DHD0_HSYNC1;
    U_DHD0_HSYNC2        DHD0_HSYNC2;
    U_DHD0_VPLUS         DHD0_VPLUS;
    U_DHD0_PWR           DHD0_PWR;
    U_DHD0_VTTHD3        DHD0_VTTHD3;
    U_DHD0_VTTHD         DHD0_VTTHD;
    U_DHD0_SYNC_INV      DHD0_SYNC_INV;
    unsigned int         Reserved_75[7];
    U_DHD0_CSC_IDC       DHD0_CSC_IDC;
    U_DHD0_CSC_ODC       DHD0_CSC_ODC;
    U_DHD0_CSC_IODC      DHD0_CSC_IODC;
    U_DHD0_CSC_P0        DHD0_CSC_P0;
    U_DHD0_CSC_P1        DHD0_CSC_P1;
    U_DHD0_CSC_P2        DHD0_CSC_P2;
    U_DHD0_CSC_P3        DHD0_CSC_P3;
    U_DHD0_CSC_P4        DHD0_CSC_P4;
    U_DHD0_DITHER0_CTRL  DHD0_DITHER0_CTRL;
    U_DHD0_DITHER0_COEF0 DHD0_DITHER0_COEF0;
    U_DHD0_DITHER0_COEF1 DHD0_DITHER0_COEF1;
    unsigned int         Reserved_76;
    U_DHD0_DITHER1_CTRL  DHD0_DITHER1_CTRL;
    U_DHD0_DITHER1_COEF0 DHD0_DITHER1_COEF0;
    U_DHD0_DITHER1_COEF1 DHD0_DITHER1_COEF1;
    unsigned int         Reserved_77;
    U_DHD0_CLIP0_L       DHD0_CLIP0_L;
    U_DHD0_CLIP0_H       DHD0_CLIP0_H;
    U_DHD0_CLIP1_L       DHD0_CLIP1_L;
    U_DHD0_CLIP1_H       DHD0_CLIP1_H;
    U_DHD0_CLIP2_L       DHD0_CLIP2_L;
    U_DHD0_CLIP2_H       DHD0_CLIP2_H;
    U_DHD0_CLIP3_L       DHD0_CLIP3_L;
    U_DHD0_CLIP3_H       DHD0_CLIP3_H;
    U_DHD0_CLIP4_L       DHD0_CLIP4_L;
    U_DHD0_CLIP4_H       DHD0_CLIP4_H;
    unsigned int         Reserved_78[6];
    U_DHD0_START_POS     DHD0_START_POS;
    unsigned int         Reserved_79[3];
    U_DHD0_LOCKCFG       DHD0_LOCKCFG;
    U_DHD0_LOCK_STATE1   DHD0_LOCK_STATE1;
    U_DHD0_LOCK_STATE2   DHD0_LOCK_STATE2;
    U_DHD0_LOCK_STATE3   DHD0_LOCK_STATE3;
    U_DHD0_GMM_COEFAD    DHD0_GMM_COEFAD;
    unsigned int         Reserved_80[2];
    U_DHD0_PARAUP        DHD0_PARAUP;
    U_DHD0_STATE         DHD0_STATE;
    unsigned int         Reserved_81;
    U_DHD0_DEBUG         DHD0_DEBUG;
    U_DHD0_DEBUG_STATE   DHD0_DEBUG_STATE;
    unsigned int         Reserved_82[44];
    U_DHD0_BT1120_YSUM   DHD0_BT1120_YSUM;
    U_DHD0_BT1120_CSUM   DHD0_BT1120_CSUM;
    unsigned int         Reserved_83[2];
    U_DHD0_DATE_YSUM     DHD0_DATE_YSUM;
    U_DHD0_DATE_USUM     DHD0_DATE_USUM;
    U_DHD0_DATE_VSUM     DHD0_DATE_VSUM;
    unsigned int         Reserved_84;
    U_DHD0_HDMI_RSUM     DHD0_HDMI_RSUM;
    U_DHD0_HDMI_GSUM     DHD0_HDMI_GSUM;
    U_DHD0_HDMI_BSUM     DHD0_HDMI_BSUM;
    unsigned int         Reserved_85;
    U_DHD0_VGA_RSUM      DHD0_VGA_RSUM;
    U_DHD0_VGA_GSUM      DHD0_VGA_GSUM;
    U_DHD0_VGA_BSUM      DHD0_VGA_BSUM;
    unsigned int         Reserved_86;
    U_DHD0_LCD_RSUM      DHD0_LCD_RSUM;
    U_DHD0_LCD_GSUM      DHD0_LCD_GSUM;
    U_DHD0_LCD_BSUM      DHD0_LCD_BSUM;
    unsigned int         Reserved_87[129];
    U_DHD1_CTRL          DHD1_CTRL;
    U_DHD1_VSYNC         DHD1_VSYNC;
    U_DHD1_HSYNC1        DHD1_HSYNC1;
    U_DHD1_HSYNC2        DHD1_HSYNC2;
    U_DHD1_VPLUS         DHD1_VPLUS;
    U_DHD1_PWR           DHD1_PWR;
    U_DHD1_VTTHD3        DHD1_VTTHD3;
    U_DHD1_VTTHD         DHD1_VTTHD;
    U_DHD1_SYNC_INV      DHD1_SYNC_INV;
    unsigned int         Reserved_88[7];
    U_DHD1_CSC_IDC       DHD1_CSC_IDC;
    U_DHD1_CSC_ODC       DHD1_CSC_ODC;
    U_DHD1_CSC_IODC      DHD1_CSC_IODC;
    U_DHD1_CSC_P0        DHD1_CSC_P0;
    U_DHD1_CSC_P1        DHD1_CSC_P1;
    U_DHD1_CSC_P2        DHD1_CSC_P2;
    U_DHD1_CSC_P3        DHD1_CSC_P3;
    U_DHD1_CSC_P4        DHD1_CSC_P4;
    U_DHD1_DITHER0_CTRL  DHD1_DITHER0_CTRL;
    U_DHD1_DITHER0_COEF0 DHD1_DITHER0_COEF0;
    U_DHD1_DITHER0_COEF1 DHD1_DITHER0_COEF1;
    unsigned int         Reserved_89;
    U_DHD1_DITHER1_CTRL  DHD1_DITHER1_CTRL;
    U_DHD1_DITHER1_COEF0 DHD1_DITHER1_COEF0;
    U_DHD1_DITHER1_COEF1 DHD1_DITHER1_COEF1;
    unsigned int         Reserved_90;
    U_DHD1_CLIP0_L       DHD1_CLIP0_L;
    U_DHD1_CLIP0_H       DHD1_CLIP0_H;
    U_DHD1_CLIP1_L       DHD1_CLIP1_L;
    U_DHD1_CLIP1_H       DHD1_CLIP1_H;
    U_DHD1_CLIP2_L       DHD1_CLIP2_L;
    U_DHD1_CLIP2_H       DHD1_CLIP2_H;
    U_DHD1_CLIP3_L       DHD1_CLIP3_L;
    U_DHD1_CLIP3_H       DHD1_CLIP3_H;
    U_DHD1_CLIP4_L       DHD1_CLIP4_L;
    U_DHD1_CLIP4_H       DHD1_CLIP4_H;
    unsigned int         Reserved_91[6];
    U_DHD1_START_POS     DHD1_START_POS;
    unsigned int         Reserved_92[3];
    U_DHD1_LOCKCFG       DHD1_LOCKCFG;
    U_DHD1_LOCK_STATE1   DHD1_LOCK_STATE1;
    U_DHD1_LOCK_STATE2   DHD1_LOCK_STATE2;
    U_DHD1_LOCK_STATE3   DHD1_LOCK_STATE3;
    U_DHD1_GMM_COEFAD    DHD1_GMM_COEFAD;
    unsigned int         Reserved_93[2];
    U_DHD1_PARAUP        DHD1_PARAUP;
    U_DHD1_STATE         DHD1_STATE;
    unsigned int         Reserved_94;
    U_DHD1_DEBUG         DHD1_DEBUG;
    U_DHD1_DEBUG_STATE   DHD1_DEBUG_STATE;
    unsigned int         Reserved_95[44];
    U_DHD1_BT1120_YSUM   DHD1_BT1120_YSUM;
    U_DHD1_BT1120_CSUM   DHD1_BT1120_CSUM;
    unsigned int         Reserved_96[2];
    U_DHD1_DATE_YSUM     DHD1_DATE_YSUM;
    U_DHD1_DATE_USUM     DHD1_DATE_USUM;
    U_DHD1_DATE_VSUM     DHD1_DATE_VSUM;
    unsigned int         Reserved_97;
    U_DHD1_HDMI_RSUM     DHD1_HDMI_RSUM;
    U_DHD1_HDMI_GSUM     DHD1_HDMI_GSUM;
    U_DHD1_HDMI_BSUM     DHD1_HDMI_BSUM;
    unsigned int         Reserved_98;
    U_DHD1_VGA_RSUM      DHD1_VGA_RSUM;
    U_DHD1_VGA_GSUM      DHD1_VGA_GSUM;
    U_DHD1_VGA_BSUM      DHD1_VGA_BSUM;
    unsigned int         Reserved_99;
    U_DHD1_LCD_RSUM      DHD1_LCD_RSUM;
    U_DHD1_LCD_GSUM      DHD1_LCD_GSUM;
    U_DHD1_LCD_BSUM      DHD1_LCD_BSUM;
    unsigned int         Reserved_100[2689];
    U_HDATE_VERSION      HDATE_VERSION;
    U_HDATE_EN           HDATE_EN;
    U_HDATE_POLA_CTRL    HDATE_POLA_CTRL;
    U_HDATE_VIDEO_FORMAT HDATE_VIDEO_FORMAT;
    U_HDATE_STATE        HDATE_STATE;
    U_HDATE_OUT_CTRL     HDATE_OUT_CTRL;
    U_HDATE_SRC_13_COEF1 HDATE_SRC_13_COEF1;
    U_HDATE_SRC_13_COEF2 HDATE_SRC_13_COEF2;
    U_HDATE_SRC_13_COEF3 HDATE_SRC_13_COEF3;
    U_HDATE_SRC_13_COEF4 HDATE_SRC_13_COEF4;
    U_HDATE_SRC_13_COEF5 HDATE_SRC_13_COEF5;
    U_HDATE_SRC_13_COEF6 HDATE_SRC_13_COEF6;
    U_HDATE_SRC_13_COEF7 HDATE_SRC_13_COEF7;
    U_HDATE_SRC_13_COEF8 HDATE_SRC_13_COEF8;
    U_HDATE_SRC_13_COEF9 HDATE_SRC_13_COEF9;
    U_HDATE_SRC_13_COEF10 HDATE_SRC_13_COEF10;
    U_HDATE_SRC_13_COEF11 HDATE_SRC_13_COEF11;
    U_HDATE_SRC_13_COEF12 HDATE_SRC_13_COEF12;
    U_HDATE_SRC_13_COEF13 HDATE_SRC_13_COEF13;
    U_HDATE_SRC_24_COEF1 HDATE_SRC_24_COEF1;
    U_HDATE_SRC_24_COEF2 HDATE_SRC_24_COEF2;
    U_HDATE_SRC_24_COEF3 HDATE_SRC_24_COEF3;
    U_HDATE_SRC_24_COEF4 HDATE_SRC_24_COEF4;
    U_HDATE_SRC_24_COEF5 HDATE_SRC_24_COEF5;
    U_HDATE_SRC_24_COEF6 HDATE_SRC_24_COEF6;
    U_HDATE_SRC_24_COEF7 HDATE_SRC_24_COEF7;
    U_HDATE_SRC_24_COEF8 HDATE_SRC_24_COEF8;
    U_HDATE_SRC_24_COEF9 HDATE_SRC_24_COEF9;
    U_HDATE_SRC_24_COEF10 HDATE_SRC_24_COEF10;
    U_HDATE_SRC_24_COEF11 HDATE_SRC_24_COEF11;
    U_HDATE_SRC_24_COEF12 HDATE_SRC_24_COEF12;
    U_HDATE_SRC_24_COEF13 HDATE_SRC_24_COEF13;
    U_HDATE_CSC_COEF1    HDATE_CSC_COEF1;
    U_HDATE_CSC_COEF2    HDATE_CSC_COEF2;
    U_HDATE_CSC_COEF3    HDATE_CSC_COEF3;
    U_HDATE_CSC_COEF4    HDATE_CSC_COEF4;
    U_HDATE_CSC_COEF5    HDATE_CSC_COEF5;
    unsigned int         Reserved_101[3];
    U_HDATE_TEST         HDATE_TEST;
    U_HDATE_VBI_CTRL     HDATE_VBI_CTRL;
    U_HDATE_CGMSA_DATA   HDATE_CGMSA_DATA;
    U_HDATE_CGMSB_H      HDATE_CGMSB_H;
    U_HDATE_CGMSB_DATA1  HDATE_CGMSB_DATA1;
    U_HDATE_CGMSB_DATA2  HDATE_CGMSB_DATA2;
    U_HDATE_CGMSB_DATA3  HDATE_CGMSB_DATA3;
    U_HDATE_CGMSB_DATA4  HDATE_CGMSB_DATA4;
    U_HDATE_DACDET1      HDATE_DACDET1;
    U_HDATE_DACDET2      HDATE_DACDET2;
    U_HDATE_SRC_13_COEF14 HDATE_SRC_13_COEF14;
    U_HDATE_SRC_13_COEF15 HDATE_SRC_13_COEF15;
    U_HDATE_SRC_13_COEF16 HDATE_SRC_13_COEF16;
    U_HDATE_SRC_13_COEF17 HDATE_SRC_13_COEF17;
    U_HDATE_SRC_13_COEF18 HDATE_SRC_13_COEF18;
    U_HDATE_SRC_24_COEF14 HDATE_SRC_24_COEF14;
    U_HDATE_SRC_24_COEF15 HDATE_SRC_24_COEF15;
    U_HDATE_SRC_24_COEF16 HDATE_SRC_24_COEF16;
    U_HDATE_SRC_24_COEF17 HDATE_SRC_24_COEF17;
    U_HDATE_SRC_24_COEF18 HDATE_SRC_24_COEF18;
    unsigned int         Reserved_102[68];
    U_DATE_COEFF0        DATE_COEFF0;
    U_DATE_COEFF1        DATE_COEFF1;
    U_DATE_COEFF2        DATE_COEFF2;
    U_DATE_COEFF3        DATE_COEFF3;
    U_DATE_COEFF4        DATE_COEFF4;
    U_DATE_COEFF5        DATE_COEFF5;
    U_DATE_COEFF6        DATE_COEFF6;
    U_DATE_COEFF7        DATE_COEFF7;
    U_DATE_COEFF8        DATE_COEFF8;
    U_DATE_COEFF9        DATE_COEFF9;
    U_DATE_COEFF10       DATE_COEFF10;
    U_DATE_COEFF11       DATE_COEFF11;
    U_DATE_COEFF12       DATE_COEFF12;
    U_DATE_COEFF13       DATE_COEFF13;
    U_DATE_COEFF14       DATE_COEFF14;
    U_DATE_COEFF15       DATE_COEFF15;
    U_DATE_COEFF16       DATE_COEFF16;
    U_DATE_COEFF17       DATE_COEFF17;
    U_DATE_COEFF18       DATE_COEFF18;
    U_DATE_COEFF19       DATE_COEFF19;
    U_DATE_COEFF20       DATE_COEFF20;
    U_DATE_COEFF21       DATE_COEFF21;
    U_DATE_COEFF22       DATE_COEFF22;
    U_DATE_COEFF23       DATE_COEFF23;
    U_DATE_COEFF24       DATE_COEFF24;
    U_DATE_COEFF25       DATE_COEFF25;
    U_DATE_COEFF26       DATE_COEFF26;
    U_DATE_COEFF27       DATE_COEFF27;
    U_DATE_COEFF28       DATE_COEFF28;
    U_DATE_COEFF29       DATE_COEFF29;
    U_DATE_COEFF30       DATE_COEFF30;
    unsigned int         Reserved_103;
    U_DATE_ISRMASK       DATE_ISRMASK;
    U_DATE_ISRSTATE      DATE_ISRSTATE;
    U_DATE_ISR           DATE_ISR;
    unsigned int         Reserved_104;
    U_DATE_VERSION       DATE_VERSION;
    U_DATE_COEFF37       DATE_COEFF37;
    U_DATE_COEFF38       DATE_COEFF38;
    U_DATE_COEFF39       DATE_COEFF39;
    U_DATE_COEFF40       DATE_COEFF40;
    U_DATE_COEFF41       DATE_COEFF41;
    U_DATE_COEFF42       DATE_COEFF42;
    unsigned int         Reserved_105[5];
    U_DATE_DACDET1       DATE_DACDET1;
    U_DATE_DACDET2       DATE_DACDET2;
    U_DATE_COEFF50       DATE_COEFF50;
    U_DATE_COEFF51       DATE_COEFF51;
    U_DATE_COEFF52       DATE_COEFF52;
    U_DATE_COEFF53       DATE_COEFF53;
    U_DATE_COEFF54       DATE_COEFF54;
    U_DATE_COEFF55       DATE_COEFF55;


} OPTM_S_VOU_V400_REGS_TYPE;

// Declare the struct pointor of the module VOU_V400
extern OPTM_S_VOU_V400_REGS_TYPE *gopVOU_V400AllReg;



#endif // __C_UNION_DEFINE_H__
