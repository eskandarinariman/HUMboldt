# This script segment is generated automatically by AutoPilot

set id 36
set name integrate_mul_32sfYi
set corename simcore_mul
set op mul
set stage_num 2
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 1
set in1_width 12
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 37
set name integrate_srem_32g8j
set corename simcore_srem_seq
set op srem
set stage_num 36
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 0
set in1_width 12
set in1_signed 0
set out_width 12
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_srem] == "ap_gen_simcore_srem"} {
eval "ap_gen_simcore_srem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_srem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op srem
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name buf_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_r \
    op interface \
    ports { buf_r_address0 { O 1 vector } buf_r_ce0 { O 1 bit } buf_r_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name int_clr2snd_array_PK \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_clr2snd_array_PK \
    op interface \
    ports { int_clr2snd_array_PK_address0 { O 9 vector } int_clr2snd_array_PK_ce0 { O 1 bit } int_clr2snd_array_PK_we0 { O 1 bit } int_clr2snd_array_PK_d0 { O 1 vector } int_clr2snd_array_PK_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_clr2snd_array_PK'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name int_clr2snd_array_DE \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_clr2snd_array_DE \
    op interface \
    ports { int_clr2snd_array_DE_address0 { O 9 vector } int_clr2snd_array_DE_ce0 { O 1 bit } int_clr2snd_array_DE_we0 { O 1 bit } int_clr2snd_array_DE_d0 { O 16 vector } int_clr2snd_array_DE_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_clr2snd_array_DE'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name int_clr2snd_array_SR \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_clr2snd_array_SR \
    op interface \
    ports { int_clr2snd_array_SR_address0 { O 9 vector } int_clr2snd_array_SR_ce0 { O 1 bit } int_clr2snd_array_SR_we0 { O 1 bit } int_clr2snd_array_SR_d0 { O 8 vector } int_clr2snd_array_SR_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_clr2snd_array_SR'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name int_clr2snd_array_DA \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_clr2snd_array_DA \
    op interface \
    ports { int_clr2snd_array_DA_address0 { O 9 vector } int_clr2snd_array_DA_ce0 { O 1 bit } int_clr2snd_array_DA_we0 { O 1 bit } int_clr2snd_array_DA_d0 { O 4 vector } int_clr2snd_array_DA_q0 { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_clr2snd_array_DA'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name int_clr2snd_array_MS \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_clr2snd_array_MS \
    op interface \
    ports { int_clr2snd_array_MS_address0 { O 9 vector } int_clr2snd_array_MS_ce0 { O 1 bit } int_clr2snd_array_MS_we0 { O 1 bit } int_clr2snd_array_MS_d0 { O 32 vector } int_clr2snd_array_MS_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_clr2snd_array_MS'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name int_clr2snd_array_TA \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_clr2snd_array_TA \
    op interface \
    ports { int_clr2snd_array_TA_address0 { O 9 vector } int_clr2snd_array_TA_ce0 { O 1 bit } int_clr2snd_array_TA_we0 { O 1 bit } int_clr2snd_array_TA_d0 { O 8 vector } int_clr2snd_array_TA_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_clr2snd_array_TA'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name int_request_array_SR \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_request_array_SR \
    op interface \
    ports { int_request_array_SR_address0 { O 9 vector } int_request_array_SR_ce0 { O 1 bit } int_request_array_SR_we0 { O 1 bit } int_request_array_SR_d0 { O 8 vector } int_request_array_SR_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_request_array_SR'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name int_request_array_DE \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_request_array_DE \
    op interface \
    ports { int_request_array_DE_address0 { O 9 vector } int_request_array_DE_ce0 { O 1 bit } int_request_array_DE_we0 { O 1 bit } int_request_array_DE_d0 { O 16 vector } int_request_array_DE_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_request_array_DE'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name int_request_array_PK \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_request_array_PK \
    op interface \
    ports { int_request_array_PK_address0 { O 9 vector } int_request_array_PK_ce0 { O 1 bit } int_request_array_PK_we0 { O 1 bit } int_request_array_PK_d0 { O 1 vector } int_request_array_PK_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_request_array_PK'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name int_request_array_MS \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_request_array_MS \
    op interface \
    ports { int_request_array_MS_address0 { O 9 vector } int_request_array_MS_ce0 { O 1 bit } int_request_array_MS_we0 { O 1 bit } int_request_array_MS_d0 { O 32 vector } int_request_array_MS_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_request_array_MS'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
    name int_request_array_TA \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_request_array_TA \
    op interface \
    ports { int_request_array_TA_address0 { O 9 vector } int_request_array_TA_ce0 { O 1 bit } int_request_array_TA_we0 { O 1 bit } int_request_array_TA_d0 { O 8 vector } int_request_array_TA_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_request_array_TA'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name int_request_array_DA \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename int_request_array_DA \
    op interface \
    ports { int_request_array_DA_address0 { O 9 vector } int_request_array_DA_ce0 { O 1 bit } int_request_array_DA_we0 { O 1 bit } int_request_array_DA_d0 { O 4 vector } int_request_array_DA_q0 { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'int_request_array_DA'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name float_request_array_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_request_array_5 \
    op interface \
    ports { float_request_array_5_address0 { O 9 vector } float_request_array_5_ce0 { O 1 bit } float_request_array_5_we0 { O 1 bit } float_request_array_5_d0 { O 8 vector } float_request_array_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_request_array_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name float_request_array_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_request_array_1 \
    op interface \
    ports { float_request_array_1_address0 { O 9 vector } float_request_array_1_ce0 { O 1 bit } float_request_array_1_we0 { O 1 bit } float_request_array_1_d0 { O 16 vector } float_request_array_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_request_array_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name float_request_array_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_request_array_4 \
    op interface \
    ports { float_request_array_4_address0 { O 9 vector } float_request_array_4_ce0 { O 1 bit } float_request_array_4_we0 { O 1 bit } float_request_array_4_d0 { O 1 vector } float_request_array_4_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_request_array_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name float_request_array_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_request_array_3 \
    op interface \
    ports { float_request_array_3_address0 { O 9 vector } float_request_array_3_ce0 { O 1 bit } float_request_array_3_we0 { O 1 bit } float_request_array_3_d0 { O 32 vector } float_request_array_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_request_array_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name float_request_array_s \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_request_array_s \
    op interface \
    ports { float_request_array_s_address0 { O 9 vector } float_request_array_s_ce0 { O 1 bit } float_request_array_s_we0 { O 1 bit } float_request_array_s_d0 { O 8 vector } float_request_array_s_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_request_array_s'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name float_request_array_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_request_array_7 \
    op interface \
    ports { float_request_array_7_address0 { O 9 vector } float_request_array_7_ce0 { O 1 bit } float_request_array_7_we0 { O 1 bit } float_request_array_7_d0 { O 4 vector } float_request_array_7_q0 { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_request_array_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name float_clr2snd_array_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_clr2snd_array_5 \
    op interface \
    ports { float_clr2snd_array_5_address0 { O 9 vector } float_clr2snd_array_5_ce0 { O 1 bit } float_clr2snd_array_5_we0 { O 1 bit } float_clr2snd_array_5_d0 { O 8 vector } float_clr2snd_array_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_clr2snd_array_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name float_clr2snd_array_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_clr2snd_array_1 \
    op interface \
    ports { float_clr2snd_array_1_address0 { O 9 vector } float_clr2snd_array_1_ce0 { O 1 bit } float_clr2snd_array_1_we0 { O 1 bit } float_clr2snd_array_1_d0 { O 16 vector } float_clr2snd_array_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_clr2snd_array_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name float_clr2snd_array_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_clr2snd_array_4 \
    op interface \
    ports { float_clr2snd_array_4_address0 { O 9 vector } float_clr2snd_array_4_ce0 { O 1 bit } float_clr2snd_array_4_we0 { O 1 bit } float_clr2snd_array_4_d0 { O 1 vector } float_clr2snd_array_4_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_clr2snd_array_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name float_clr2snd_array_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_clr2snd_array_3 \
    op interface \
    ports { float_clr2snd_array_3_address0 { O 9 vector } float_clr2snd_array_3_ce0 { O 1 bit } float_clr2snd_array_3_we0 { O 1 bit } float_clr2snd_array_3_d0 { O 32 vector } float_clr2snd_array_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_clr2snd_array_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name float_clr2snd_array_s \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_clr2snd_array_s \
    op interface \
    ports { float_clr2snd_array_s_address0 { O 9 vector } float_clr2snd_array_s_ce0 { O 1 bit } float_clr2snd_array_s_we0 { O 1 bit } float_clr2snd_array_s_d0 { O 8 vector } float_clr2snd_array_s_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_clr2snd_array_s'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name float_clr2snd_array_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename float_clr2snd_array_7 \
    op interface \
    ports { float_clr2snd_array_7_address0 { O 9 vector } float_clr2snd_array_7_ce0 { O 1 bit } float_clr2snd_array_7_we0 { O 1 bit } float_clr2snd_array_7_d0 { O 4 vector } float_clr2snd_array_7_q0 { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'float_clr2snd_array_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name int_clr_num \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_int_clr_num \
    op interface \
    ports { int_clr_num_i { I 32 vector } int_clr_num_o { O 32 vector } int_clr_num_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name stream_out_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_out_V \
    op interface \
    ports { stream_out_V_din { O 121 vector } stream_out_V_full_n { I 1 bit } stream_out_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name stream_in_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_in_V \
    op interface \
    ports { stream_in_V_dout { I 121 vector } stream_in_V_empty_n { I 1 bit } stream_in_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name int_req_num \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_int_req_num \
    op interface \
    ports { int_req_num_i { I 32 vector } int_req_num_o { O 32 vector } int_req_num_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name float_req_num \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_float_req_num \
    op interface \
    ports { float_req_num_i { I 32 vector } float_req_num_o { O 32 vector } float_req_num_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name float_clr_num \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_float_clr_num \
    op interface \
    ports { float_clr_num_i { I 32 vector } float_clr_num_o { O 32 vector } float_clr_num_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


