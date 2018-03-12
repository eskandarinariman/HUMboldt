; ModuleID = '/home/eskand38/HMPI/mpi_app_benchmarks/HMPI_md/hls/md/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@world_rank = global i32 0, align 4
@time_V_1 = internal unnamed_addr global i64 0
@time_V = internal unnamed_addr global i64 0
@stream_out_V_user_V = global i40 0
@stream_out_V_last_V = global i1 false
@stream_out_V_id_V = global i8 0
@stream_out_V_dest_V = global i8 0
@stream_out_V_data_V = global i64 0
@stream_out_V = global i121 0
@stream_in_V_user_V = global i40 0
@stream_in_V_last_V = global i1 false
@stream_in_V_id_V = global i8 0
@stream_in_V_dest_V = global i8 0
@stream_in_V_data_V = global i64 0
@stream_in_V = global i121 0
@state_1 = internal unnamed_addr global i2 0, align 1
@state = internal unnamed_addr global i2 0, align 1
@start_time = global i64 0, align 8
@rnd_seed = internal unnamed_addr global i32 1, align 4
@processorCount = global i32 2, align 4
@md_str = internal unnamed_addr constant [3 x i8] c"md\00"
@mask_table3 = internal unnamed_addr constant [64 x i52] [i52 2251799813685247, i52 1125899906842623, i52 562949953421311, i52 281474976710655, i52 140737488355327, i52 70368744177663, i52 35184372088831, i52 17592186044415, i52 8796093022207, i52 4398046511103, i52 2199023255551, i52 1099511627775, i52 549755813887, i52 274877906943, i52 137438953471, i52 68719476735, i52 34359738367, i52 17179869183, i52 8589934591, i52 4294967295, i52 2147483647, i52 1073741823, i52 536870911, i52 268435455, i52 134217727, i52 67108863, i52 33554431, i52 16777215, i52 8388607, i52 4194303, i52 2097151, i52 1048575, i52 524287, i52 262143, i52 131071, i52 65535, i52 32767, i52 16383, i52 8191, i52 4095, i52 2047, i52 1023, i52 511, i52 255, i52 127, i52 63, i52 31, i52 15, i52 7, i52 3, i52 1, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 -1, i52 -1]
@mask_table1 = internal unnamed_addr constant [64 x i52] [i52 2251799813685247, i52 1125899906842623, i52 562949953421311, i52 281474976710655, i52 140737488355327, i52 70368744177663, i52 35184372088831, i52 17592186044415, i52 8796093022207, i52 4398046511103, i52 2199023255551, i52 1099511627775, i52 549755813887, i52 274877906943, i52 137438953471, i52 68719476735, i52 34359738367, i52 17179869183, i52 8589934591, i52 4294967295, i52 2147483647, i52 1073741823, i52 536870911, i52 268435455, i52 134217727, i52 67108863, i52 33554431, i52 16777215, i52 8388607, i52 4194303, i52 2097151, i52 1048575, i52 524287, i52 262143, i52 131071, i52 65535, i52 32767, i52 16383, i52 8191, i52 4095, i52 2047, i52 1023, i52 511, i52 255, i52 127, i52 63, i52 31, i52 15, i52 7, i52 3, i52 1, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 -1, i52 -1]
@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a24, void ()* @_GLOBAL__I_a1939]
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@int_request_array_TA = internal unnamed_addr global [512 x i8] zeroinitializer
@int_request_array_SR = internal unnamed_addr global [512 x i8] zeroinitializer
@int_request_array_PK = internal unnamed_addr global [512 x i1] zeroinitializer
@int_request_array_MS = internal unnamed_addr global [512 x i32] zeroinitializer
@int_request_array_DE = internal unnamed_addr global [512 x i16] zeroinitializer
@int_request_array_DA = internal unnamed_addr global [512 x i4] zeroinitializer
@int_req_num = internal unnamed_addr global i32 0, align 4
@int_clr_num = internal unnamed_addr global i32 0, align 4
@int_clr2snd_array_TA = internal unnamed_addr global [512 x i8] zeroinitializer
@int_clr2snd_array_SR = internal unnamed_addr global [512 x i8] zeroinitializer
@int_clr2snd_array_PK = internal unnamed_addr global [512 x i1] zeroinitializer
@int_clr2snd_array_MS = internal unnamed_addr global [512 x i32] zeroinitializer
@int_clr2snd_array_DE = internal unnamed_addr global [512 x i16] zeroinitializer
@int_clr2snd_array_DA = internal unnamed_addr global [512 x i4] zeroinitializer
@float_request_array_7 = internal unnamed_addr global [512 x i4] zeroinitializer
@float_request_array_6 = internal unnamed_addr global [512 x i4] zeroinitializer
@float_request_array_5 = internal unnamed_addr global [512 x i8] zeroinitializer
@float_request_array_4 = internal unnamed_addr global [512 x i1] zeroinitializer
@float_request_array_3 = internal unnamed_addr global [512 x i32] zeroinitializer
@float_request_array_1 = internal unnamed_addr global [512 x i16] zeroinitializer
@float_request_array_s = internal unnamed_addr global [512 x i8] zeroinitializer
@float_req_num = internal unnamed_addr global i32 0, align 4
@float_clr_num = internal unnamed_addr global i32 0, align 4
@float_clr2snd_array_7 = internal unnamed_addr global [512 x i4] zeroinitializer
@float_clr2snd_array_6 = internal unnamed_addr global [512 x i4] zeroinitializer
@float_clr2snd_array_5 = internal unnamed_addr global [512 x i8] zeroinitializer
@float_clr2snd_array_4 = internal unnamed_addr global [512 x i1] zeroinitializer
@float_clr2snd_array_3 = internal unnamed_addr global [512 x i32] zeroinitializer
@float_clr2snd_array_1 = internal unnamed_addr global [512 x i16] zeroinitializer
@float_clr2snd_array_s = internal unnamed_addr global [512 x i8] zeroinitializer
@envlp_SRC_V = internal unnamed_addr global i8 0
@envlp_MSG_SIZE_V = internal unnamed_addr global i32 0
@envlp_DEST_V = internal unnamed_addr global i8 0
@envlp_DATA_TYPE_V = internal unnamed_addr global i4 0
@envlp_DATA_OR_ENVLP_s = internal unnamed_addr global i4 0
@end_time = global i64 0, align 8
@clr2snd_error = internal unnamed_addr global i1 true, align 1
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str226 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str225 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str224 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str223 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str222 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str221 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str220 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str219 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str218 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str217 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str216 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str215 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str10 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"send\00", align 1

define internal fastcc float @rint(float %x) nounwind uwtable readnone {
  %x_read = call float @_ssdm_op_Read.ap_auto.float(float %x) nounwind
  %p_Val2_s = bitcast float %x_read to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %tmp_i_i = icmp eq i8 %loc_V, -1
  %tmp_i_i_17 = icmp ne i23 %loc_V_1, 0
  %tmp_1_demorgan = and i1 %tmp_i_i, %tmp_i_i_17
  br i1 %tmp_1_demorgan, label %._crit_edge, label %1

; <label>:1                                       ; preds = %0
  %notlhs = icmp ne i8 %loc_V, -1
  %notrhs = icmp eq i23 %loc_V_1, 0
  %tmp_3 = or i1 %notrhs, %notlhs
  %tmp_4 = fcmp ole float %x_read, 0.000000e+00
  %tmp_5 = and i1 %tmp_3, %tmp_4
  br i1 %tmp_5, label %2, label %7

; <label>:2                                       ; preds = %1
  %tmp_1 = fcmp oeq float %x_read, 0.000000e+00
  br i1 %tmp_1, label %._crit_edge, label %3

; <label>:3                                       ; preds = %2
  %x_assign_1 = fadd float %x_read, 5.000000e-01
  %x_assign_1_to_int = bitcast float %x_assign_1 to i32
  %tmp_16 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %x_assign_1_to_int, i32 23, i32 30)
  %tmp_17 = trunc i32 %x_assign_1_to_int to i23
  %notlhs3 = icmp ne i8 %tmp_16, -1
  %notrhs3 = icmp eq i23 %tmp_17, 0
  %tmp_18 = or i1 %notrhs3, %notlhs3
  %tmp_19 = fcmp oge float %x_assign_1, 0.000000e+00
  %tmp_20 = and i1 %tmp_18, %tmp_19
  br i1 %tmp_20, label %._crit_edge, label %4

; <label>:4                                       ; preds = %3
  %x_assign_6 = fpext float %x_assign_1 to double
  %tmp_6 = fpext float %x_read to double
  %tmp_s = fadd double %tmp_6, 1.000000e+00
  %p_Val2_12 = bitcast double %x_assign_6 to i64
  %loc_V_2 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_12, i32 52, i32 62)
  %loc_V_3 = trunc i64 %p_Val2_12 to i52
  %tmp_10_to_int = bitcast double %tmp_s to i64
  %tmp_30 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_10_to_int, i32 52, i32 62)
  %tmp_31 = trunc i64 %tmp_10_to_int to i52
  %notlhs6 = icmp ne i11 %loc_V_2, -1
  %notrhs6 = icmp eq i52 %loc_V_3, 0
  %tmp_32 = or i1 %notrhs6, %notlhs6
  %notlhs7 = icmp ne i11 %tmp_30, -1
  %notrhs7 = icmp eq i52 %tmp_31, 0
  %tmp_33 = or i1 %notrhs7, %notlhs7
  %tmp_34 = and i1 %tmp_32, %tmp_33
  %tmp_35 = fcmp oeq double %x_assign_6, %tmp_s
  %tmp_36 = and i1 %tmp_34, %tmp_35
  br i1 %tmp_36, label %._crit_edge, label %5

; <label>:5                                       ; preds = %4
  %p_Result_25 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_12, i32 63)
  %tmp_i4 = icmp ult i11 %loc_V_2, 1023
  %tmp_i = icmp ugt i11 %loc_V_2, -973
  %p_Result_s = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 %p_Result_25, i63 0) nounwind
  %index_V_1 = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %p_Val2_12, i32 52, i32 57) nounwind
  %tmp_21_i = zext i6 %index_V_1 to i64
  %mask_table1_addr = getelementptr [64 x i52]* @mask_table1, i64 0, i64 %tmp_21_i
  %mask = load i52* %mask_table1_addr, align 8
  %mask_i_cast = zext i52 %mask to i64
  %tmp_45 = trunc i64 %p_Val2_12 to i63
  %p_Result_70 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 true, i63 %tmp_45) nounwind
  %p_Val2_17 = add i64 %mask_i_cast, %p_Result_70
  %p_Result_71 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_17, i32 63)
  %loc_V_4 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_17, i32 52, i32 62) nounwind
  %loc_V_5 = trunc i64 %p_Val2_17 to i52
  %xs_exp_V_10 = select i1 %p_Result_25, i11 %loc_V_4, i11 %loc_V_2
  %xs_sign_V_13 = and i1 %p_Result_25, %p_Result_71
  %xs_sig_V_4 = select i1 %p_Result_25, i52 %loc_V_5, i52 %loc_V_3
  %tmp_23_i = xor i52 %mask, -1
  %xs_sig_V_14 = and i52 %xs_sig_V_4, %tmp_23_i
  %p_Result_72 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1 %xs_sign_V_13, i11 %xs_exp_V_10, i52 %xs_sig_V_14) nounwind
  %sel_tmp2_demorgan_i = or i1 %tmp_i4, %tmp_i
  %sel_tmp3_v_i = select i1 %sel_tmp2_demorgan_i, i64 %p_Result_s, i64 %p_Result_72
  %sel_tmp3_i = bitcast i64 %sel_tmp3_v_i to double
  %sel_tmp4_i = xor i1 %tmp_i4, true
  %sel_tmp5_i = and i1 %tmp_i, %sel_tmp4_i
  %sel_tmp6_i = select i1 %sel_tmp5_i, double %x_assign_6, double %sel_tmp3_i
  %notlhs_i = icmp ne i52 %loc_V_3, 0
  %notrhs_i = icmp ne i11 %loc_V_2, 0
  %sel_tmp8_i = or i1 %notrhs_i, %notlhs_i
  %tmp = and i1 %p_Result_25, %sel_tmp8_i
  %sel_tmp9_i = and i1 %tmp, %tmp_i4
  %tmp_44 = fptrunc double %sel_tmp6_i to float
  %r_1 = select i1 %sel_tmp9_i, float -1.000000e+00, float %tmp_44
  %r_1_to_int = bitcast float %r_1 to i32
  %tmp_46 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %r_1_to_int, i32 23, i32 30)
  %tmp_48 = trunc i32 %r_1_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_46, -1
  %notrhs1 = icmp eq i23 %tmp_48, 0
  %tmp_47 = or i1 %notrhs1, %notlhs1
  %tmp_49 = and i1 %tmp_47, %tmp_18
  %tmp_50 = fcmp oeq float %r_1, %x_assign_1
  %tmp_51 = and i1 %tmp_49, %tmp_50
  br i1 %tmp_51, label %6, label %._crit_edge

; <label>:6                                       ; preds = %5
  %x_assign_7 = fmul double %x_assign_6, 5.000000e-01
  %p_Val2_32 = bitcast double %x_assign_7 to i64
  %p_Result_59 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_32, i32 63)
  %loc_V_6 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_32, i32 52, i32 62) nounwind
  %loc_V_7 = trunc i64 %p_Val2_32 to i52
  %tmp_i_18 = icmp ult i11 %loc_V_6, 1023
  %tmp_i9 = icmp ugt i11 %loc_V_6, -973
  %p_Result_73 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 %p_Result_59, i63 0) nounwind
  %index_V_3 = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %p_Val2_32, i32 52, i32 57) nounwind
  %tmp_21_i1 = zext i6 %index_V_3 to i64
  %mask_table1_addr_1 = getelementptr [64 x i52]* @mask_table1, i64 0, i64 %tmp_21_i1
  %mask_3 = load i52* %mask_table1_addr_1, align 8
  %mask_i14_cast = zext i52 %mask_3 to i64
  %tmp_60 = trunc i64 %p_Val2_32 to i63
  %p_Result_74 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 true, i63 %tmp_60) nounwind
  %p_Val2_37 = add i64 %p_Result_74, %mask_i14_cast
  %p_Result_75 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_37, i32 63)
  %loc_V_8 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_37, i32 52, i32 62) nounwind
  %loc_V_9 = trunc i64 %p_Val2_37 to i52
  %xs_exp_V_11 = select i1 %p_Result_59, i11 %loc_V_8, i11 %loc_V_6
  %xs_sign_V_14 = and i1 %p_Result_59, %p_Result_75
  %xs_sig_V_12 = select i1 %p_Result_59, i52 %loc_V_9, i52 %loc_V_7
  %tmp_23_i1 = xor i52 %mask_3, -1
  %xs_sig_V_15 = and i52 %xs_sig_V_12, %tmp_23_i1
  %p_Result_76 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1 %xs_sign_V_14, i11 %xs_exp_V_11, i52 %xs_sig_V_15) nounwind
  %sel_tmp2_demorgan_i1 = or i1 %tmp_i_18, %tmp_i9
  %sel_tmp3_v_i1 = select i1 %sel_tmp2_demorgan_i1, i64 %p_Result_73, i64 %p_Result_76
  %sel_tmp3_i1 = bitcast i64 %sel_tmp3_v_i1 to double
  %sel_tmp4_i1 = xor i1 %tmp_i_18, true
  %sel_tmp5_i1 = and i1 %tmp_i9, %sel_tmp4_i1
  %sel_tmp6_i3 = select i1 %sel_tmp5_i1, double %x_assign_7, double %sel_tmp3_i1
  %notlhs_i1 = icmp ne i52 %loc_V_7, 0
  %notrhs_i1 = icmp ne i11 %loc_V_6, 0
  %sel_tmp8_i3 = or i1 %notrhs_i1, %notlhs_i1
  %tmp1 = and i1 %p_Result_59, %sel_tmp8_i3
  %sel_tmp9_i1 = and i1 %tmp1, %tmp_i_18
  %sel_tmp6_i32_op = fmul double %sel_tmp6_i3, 2.000000e+00
  %tmp_52 = fptrunc double %sel_tmp6_i32_op to float
  %tmp_14 = select i1 %sel_tmp9_i1, float -2.000000e+00, float %tmp_52
  br label %._crit_edge

; <label>:7                                       ; preds = %1
  %x_assign = fadd float %x_read, -5.000000e-01
  %x_assign_to_int = bitcast float %x_assign to i32
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %x_assign_to_int, i32 23, i32 30)
  %tmp_11 = trunc i32 %x_assign_to_int to i23
  %notlhs2 = icmp ne i8 %tmp_9, -1
  %notrhs2 = icmp eq i23 %tmp_11, 0
  %tmp_2 = or i1 %notrhs2, %notlhs2
  %tmp_12 = fcmp ole float %x_assign, 0.000000e+00
  %tmp_15 = and i1 %tmp_2, %tmp_12
  br i1 %tmp_15, label %._crit_edge, label %8

; <label>:8                                       ; preds = %7
  %x_assign_8 = fpext float %x_assign to double
  %tmp_7 = fpext float %x_read to double
  %tmp_8 = fadd double %tmp_7, -1.000000e+00
  %p_Val2_3 = bitcast double %x_assign_8 to i64
  %loc_V_10 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_3, i32 52, i32 62)
  %loc_V_11 = trunc i64 %p_Val2_3 to i52
  %tmp_8_to_int = bitcast double %tmp_8 to i64
  %tmp_22 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_8_to_int, i32 52, i32 62)
  %tmp_23 = trunc i64 %tmp_8_to_int to i52
  %notlhs4 = icmp ne i11 %loc_V_10, -1
  %notrhs4 = icmp eq i52 %loc_V_11, 0
  %tmp_24 = or i1 %notrhs4, %notlhs4
  %notlhs5 = icmp ne i11 %tmp_22, -1
  %notrhs5 = icmp eq i52 %tmp_23, 0
  %tmp_25 = or i1 %notrhs5, %notlhs5
  %tmp_26 = and i1 %tmp_24, %tmp_25
  %tmp_27 = fcmp oeq double %x_assign_8, %tmp_8
  %tmp_28 = and i1 %tmp_26, %tmp_27
  br i1 %tmp_28, label %._crit_edge, label %9

; <label>:9                                       ; preds = %8
  %p_Result_8 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_3, i32 63)
  %tmp_i1 = icmp ult i11 %loc_V_10, 1023
  %tmp_i1_19 = icmp ugt i11 %loc_V_10, -973
  %tmp_25_i = icmp eq i11 %loc_V_10, 0
  %or_cond_i = and i1 %notrhs4, %tmp_25_i
  %index_V = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %p_Val2_3, i32 52, i32 57) nounwind
  %tmp_26_i = zext i6 %index_V to i64
  %mask_table3_addr = getelementptr [64 x i52]* @mask_table3, i64 0, i64 %tmp_26_i
  %mask_1 = load i52* %mask_table3_addr, align 8
  %mask_i45_cast = zext i52 %mask_1 to i64
  %p_Result_77 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 %p_Result_8, i63 0) nounwind
  %ret_i_i_i_i = bitcast i64 %p_Result_77 to double
  %tmp_38 = trunc i64 %p_Val2_3 to i63
  %p_Result_78 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 false, i63 %tmp_38) nounwind
  %p_Val2_7 = add i64 %mask_i45_cast, %p_Result_78
  %p_Result_79 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_7, i32 63)
  %loc_V_12 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_7, i32 52, i32 62) nounwind
  %loc_V_13 = trunc i64 %p_Val2_7 to i52
  %xs_exp_V_12 = select i1 %p_Result_8, i11 %loc_V_10, i11 %loc_V_12
  %xs_sign_V_15 = or i1 %p_Result_8, %p_Result_79
  %xs_sig_V_1 = select i1 %p_Result_8, i52 %loc_V_11, i52 %loc_V_13
  %tmp_28_i = xor i52 %mask_1, -1
  %xs_sig_V_16 = and i52 %xs_sig_V_1, %tmp_28_i
  %p_Result_80 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1 %xs_sign_V_15, i11 %xs_exp_V_12, i52 %xs_sig_V_16) nounwind
  %ret_i_i_i = bitcast i64 %p_Result_80 to double
  %sel_tmp_i = or i1 %p_Result_8, %or_cond_i
  %sel_tmp1_i = and i1 %sel_tmp_i, %tmp_i1
  %sel_tmp2_i = select i1 %sel_tmp1_i, double %ret_i_i_i_i, double 1.000000e+00
  %sel_tmp5_demorgan_i = or i1 %tmp_i1, %tmp_i1_19
  %sel_tmp6_i1 = select i1 %sel_tmp5_demorgan_i, double %sel_tmp2_i, double %ret_i_i_i
  %sel_tmp7_i = xor i1 %tmp_i1, true
  %sel_tmp8_i1 = and i1 %tmp_i1_19, %sel_tmp7_i
  %p_i = select i1 %sel_tmp8_i1, double %x_assign_8, double %sel_tmp6_i1
  %r = fptrunc double %p_i to float
  %r_to_int = bitcast float %r to i32
  %tmp_37 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %r_to_int, i32 23, i32 30)
  %tmp_41 = trunc i32 %r_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_37, -1
  %notrhs8 = icmp eq i23 %tmp_41, 0
  %tmp_39 = or i1 %notrhs8, %notlhs8
  %tmp_40 = and i1 %tmp_39, %tmp_2
  %tmp_42 = fcmp oeq float %r, %x_assign
  %tmp_43 = and i1 %tmp_40, %tmp_42
  br i1 %tmp_43, label %10, label %._crit_edge

; <label>:10                                      ; preds = %9
  %x_assign_9 = fmul double %x_assign_8, 5.000000e-01
  %p_Val2_23 = bitcast double %x_assign_9 to i64
  %p_Result_42 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_23, i32 63)
  %loc_V_14 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_23, i32 52, i32 62) nounwind
  %loc_V_15 = trunc i64 %p_Val2_23 to i52
  %tmp_i2 = icmp ult i11 %loc_V_14, 1023
  %tmp_i2_20 = icmp ugt i11 %loc_V_14, -973
  %tmp_24_i1 = icmp eq i52 %loc_V_15, 0
  %tmp_25_i1 = icmp eq i11 %loc_V_14, 0
  %or_cond_i1 = and i1 %tmp_24_i1, %tmp_25_i1
  %index_V_2 = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %p_Val2_23, i32 52, i32 57) nounwind
  %tmp_26_i1 = zext i6 %index_V_2 to i64
  %mask_table3_addr_1 = getelementptr [64 x i52]* @mask_table3, i64 0, i64 %tmp_26_i1
  %mask_2 = load i52* %mask_table3_addr_1, align 8
  %mask_i65_cast = zext i52 %mask_2 to i64
  %p_Result_81 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 %p_Result_42, i63 0) nounwind
  %ret_i_i_i_i1 = bitcast i64 %p_Result_81 to double
  %tmp_54 = trunc i64 %p_Val2_23 to i63
  %p_Result_82 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 false, i63 %tmp_54) nounwind
  %p_Val2_27 = add i64 %p_Result_82, %mask_i65_cast
  %p_Result_83 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_27, i32 63)
  %loc_V_16 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_27, i32 52, i32 62) nounwind
  %loc_V_17 = trunc i64 %p_Val2_27 to i52
  %xs_exp_V = select i1 %p_Result_42, i11 %loc_V_14, i11 %loc_V_16
  %xs_sign_V = or i1 %p_Result_42, %p_Result_83
  %xs_sig_V_8 = select i1 %p_Result_42, i52 %loc_V_15, i52 %loc_V_17
  %tmp_28_i1 = xor i52 %mask_2, -1
  %xs_sig_V = and i52 %xs_sig_V_8, %tmp_28_i1
  %p_Result_84 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1 %xs_sign_V, i11 %xs_exp_V, i52 %xs_sig_V) nounwind
  %ret_i_i_i1 = bitcast i64 %p_Result_84 to double
  %sel_tmp_i1 = or i1 %p_Result_42, %or_cond_i1
  %sel_tmp1_i1 = and i1 %sel_tmp_i1, %tmp_i2
  %sel_tmp2_i1 = select i1 %sel_tmp1_i1, double %ret_i_i_i_i1, double 1.000000e+00
  %sel_tmp5_demorgan_i1 = or i1 %tmp_i2, %tmp_i2_20
  %sel_tmp6_i2 = select i1 %sel_tmp5_demorgan_i1, double %sel_tmp2_i1, double %ret_i_i_i1
  %sel_tmp7_i1 = xor i1 %tmp_i2, true
  %sel_tmp8_i2 = and i1 %tmp_i2_20, %sel_tmp7_i1
  %p_i1 = select i1 %sel_tmp8_i2, double %x_assign_9, double %sel_tmp6_i2
  %tmp_10 = fmul double %p_i1, 2.000000e+00
  %tmp_13 = fptrunc double %tmp_10 to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %10, %9, %8, %7, %6, %5, %4, %3, %2, %0
  %p_0 = phi float [ %tmp_14, %6 ], [ %tmp_13, %10 ], [ %x_read, %0 ], [ %x_read, %2 ], [ -0.000000e+00, %3 ], [ %x_read, %4 ], [ %r_1, %5 ], [ 0.000000e+00, %7 ], [ %x_read, %8 ], [ %r, %9 ]
  ret float %p_0
}

define void @md() nounwind uwtable {
_ifconv:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str221, i32 0, i32 0, [1 x i8]* @p_str222, [1 x i8]* @p_str223, [1 x i8]* @p_str224, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str225, [1 x i8]* @p_str226) nounwind
  %empty_21 = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str215, i32 0, i32 0, [1 x i8]* @p_str216, [1 x i8]* @p_str217, [1 x i8]* @p_str218, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str219, [1 x i8]* @p_str220) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([3 x i8]* @md_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i121* @stream_out_V, [1 x i8]* @p_str9, [11 x i8]* @p_str10, [1 x i8]* @p_str9, i32 -1, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i121* @stream_in_V, [1 x i8]* @p_str9, [11 x i8]* @p_str10, [1 x i8]* @p_str9, i32 -1, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9) nounwind
  call fastcc void @doMD()
  ret void
}

declare i40 @llvm.part.set.i40.i8(i40, i8, i32, i32) nounwind readnone

declare i65 @llvm.part.select.i65(i65, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i33 @llvm.part.select.i33(i33, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i121 @llvm.part.select.i121(i121, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @doMD() nounwind uwtable {
  %pos1 = alloca [216 x float], align 16
  %force2 = alloca [216 x float], align 16
  %forceSum3 = alloca [216 x float], align 16
  %vel4 = alloca [216 x float], align 16
  %world_rank_load = load i32* @world_rank, align 4
  %tmp = icmp eq i32 %world_rank_load, 0
  br i1 %tmp, label %.preheader8.preheader, label %.loopexit9

.preheader8.preheader:                            ; preds = %0
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %1
  %i = phi i7 [ %i_4, %1 ], [ 0, %.preheader8.preheader ]
  %i_cast = zext i7 %i to i10
  %tmp_s = icmp eq i7 %i, -56
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 72, i64 72, i64 72) nounwind
  %i_4 = add i7 %i, 1
  br i1 %tmp_s, label %.loopexit9.loopexit, label %1

; <label>:1                                       ; preds = %.preheader8
  %ix = load i32* @rnd_seed, align 4
  %sext2_cast = sext i32 %ix to i65
  %mul1 = mul i65 %sext2_cast, 4405860029
  %neg_mul1 = sub i65 0, %mul1
  %tmp_100 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix, i32 31)
  %tmp_112 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %neg_mul1, i32 49, i32 64)
  %tmp_2 = sext i16 %tmp_112 to i32
  %tmp_124 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %mul1, i32 49, i32 64)
  %tmp_3 = sext i16 %tmp_124 to i32
  %tmp_4 = select i1 %tmp_100, i32 %tmp_2, i32 %tmp_3
  %neg_ti1 = sub i32 0, %tmp_4
  %k1 = select i1 %tmp_100, i32 %neg_ti1, i32 %tmp_3
  %tmp_i = mul i32 %k1, -127773
  %tmp_i_22 = add i32 %ix, %tmp_i
  %tmp_25_i = mul nsw i32 %tmp_i_22, 16807
  %tmp_26_i = mul i32 %k1, -2836
  %ix_1 = add i32 %tmp_25_i, %tmp_26_i
  %tmp_131 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_1, i32 31)
  %ix_2 = add nsw i32 %ix_1, 2147483647
  %ix_3 = select i1 %tmp_131, i32 %ix_2, i32 %ix_1
  %tmp_15 = sitofp i32 %ix_3 to float
  %tmp_16 = fmul float %tmp_15, 0x3F40000000000000
  %tmp_17 = fmul float %tmp_16, 2.500000e+01
  %p_shl = call i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7 %i, i2 0)
  %p_shl_cast = zext i9 %p_shl to i10
  %tmp_18 = sub i10 %p_shl_cast, %i_cast
  %tmp_32_cast = sext i10 %tmp_18 to i32
  %tmp_19 = zext i32 %tmp_32_cast to i64
  %pos1_addr = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_19
  store float %tmp_17, float* %pos1_addr, align 4
  %sext3_cast = sext i32 %ix_3 to i65
  %mul3 = mul i65 %sext3_cast, 4405860029
  %neg_mul2 = sub i65 0, %mul3
  %tmp_132 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_3, i32 31)
  %tmp_133 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %neg_mul2, i32 49, i32 64)
  %tmp_5 = sext i16 %tmp_133 to i32
  %tmp_134 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %mul3, i32 49, i32 64)
  %tmp_6 = sext i16 %tmp_134 to i32
  %tmp_7 = select i1 %tmp_132, i32 %tmp_5, i32 %tmp_6
  %neg_ti2 = sub i32 0, %tmp_7
  %k1_1 = select i1 %tmp_132, i32 %neg_ti2, i32 %tmp_6
  %tmp_i1 = mul i32 %k1_1, -127773
  %tmp_i1_23 = add i32 %tmp_i1, %ix_3
  %tmp_25_i1 = mul nsw i32 %tmp_i1_23, 16807
  %tmp_26_i1 = mul i32 %k1_1, -2836
  %ix_4 = add i32 %tmp_25_i1, %tmp_26_i1
  %tmp_135 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_4, i32 31)
  %ix_5 = add nsw i32 %ix_4, 2147483647
  %ix_6 = select i1 %tmp_135, i32 %ix_5, i32 %ix_4
  %tmp_20 = sitofp i32 %ix_6 to float
  %tmp_21 = fmul float %tmp_20, 0x3F40000000000000
  %tmp_22 = fmul float %tmp_21, 2.500000e+01
  %tmp_23 = add i10 %tmp_18, 1
  %tmp_37_cast = sext i10 %tmp_23 to i32
  %tmp_24 = zext i32 %tmp_37_cast to i64
  %pos1_addr_1 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_24
  store float %tmp_22, float* %pos1_addr_1, align 4
  %sext4_cast = sext i32 %ix_6 to i65
  %mul4 = mul i65 %sext4_cast, 4405860029
  %neg_mul4 = sub i65 0, %mul4
  %tmp_136 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_6, i32 31)
  %tmp_137 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %neg_mul4, i32 49, i32 64)
  %tmp_8 = sext i16 %tmp_137 to i32
  %tmp_138 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %mul4, i32 49, i32 64)
  %tmp_9 = sext i16 %tmp_138 to i32
  %tmp_10 = select i1 %tmp_136, i32 %tmp_8, i32 %tmp_9
  %neg_ti3 = sub i32 0, %tmp_10
  %k1_2 = select i1 %tmp_136, i32 %neg_ti3, i32 %tmp_9
  %tmp_i2 = mul i32 %k1_2, -127773
  %tmp_i2_24 = add i32 %tmp_i2, %ix_6
  %tmp_25_i2 = mul nsw i32 %tmp_i2_24, 16807
  %tmp_26_i2 = mul i32 %k1_2, -2836
  %ix_7 = add i32 %tmp_25_i2, %tmp_26_i2
  %tmp_139 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_7, i32 31)
  %ix_8 = add nsw i32 %ix_7, 2147483647
  %ix_9 = select i1 %tmp_139, i32 %ix_8, i32 %ix_7
  %tmp_25 = sitofp i32 %ix_9 to float
  %tmp_26 = fmul float %tmp_25, 0x3F40000000000000
  %tmp_27 = fmul float %tmp_26, 2.500000e+01
  %tmp_28 = add i10 %tmp_18, 2
  %tmp_42_cast = sext i10 %tmp_28 to i32
  %tmp_29 = zext i32 %tmp_42_cast to i64
  %pos1_addr_2 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_29
  store float %tmp_27, float* %pos1_addr_2, align 4
  %sext9_cast = sext i32 %ix_9 to i65
  %mul5 = mul i65 %sext9_cast, 4405860029
  %neg_mul5 = sub i65 0, %mul5
  %tmp_140 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_9, i32 31)
  %tmp_141 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %neg_mul5, i32 49, i32 64)
  %tmp_11 = sext i16 %tmp_141 to i32
  %tmp_142 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %mul5, i32 49, i32 64)
  %tmp_12 = sext i16 %tmp_142 to i32
  %tmp_13 = select i1 %tmp_140, i32 %tmp_11, i32 %tmp_12
  %neg_ti4 = sub i32 0, %tmp_13
  %k1_3 = select i1 %tmp_140, i32 %neg_ti4, i32 %tmp_12
  %tmp_i3 = mul i32 %k1_3, -127773
  %tmp_i3_25 = add i32 %tmp_i3, %ix_9
  %tmp_25_i3 = mul nsw i32 %tmp_i3_25, 16807
  %tmp_26_i3 = mul i32 %k1_3, -2836
  %ix_10 = add i32 %tmp_25_i3, %tmp_26_i3
  %tmp_143 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_10, i32 31)
  %ix_11 = add nsw i32 %ix_10, 2147483647
  %ix_12 = select i1 %tmp_143, i32 %ix_11, i32 %ix_10
  %tmp_30 = sitofp i32 %ix_12 to float
  %rnd = fmul float %tmp_30, 0x3F40000000000000
  %rnd_1 = fmul float %rnd, 1.200000e+01
  %rnd_2 = fadd float %rnd_1, -6.000000e+00
  %tmp_31 = fmul float %rnd_2, 0x3FBF2607C0000000
  %vel4_addr = getelementptr inbounds [216 x float]* %vel4, i64 0, i64 %tmp_19
  store float %tmp_31, float* %vel4_addr, align 4
  %sext1_cast = sext i32 %ix_12 to i65
  %mul2 = mul i65 %sext1_cast, 4405860029
  %neg_mul3 = sub i65 0, %mul2
  %tmp_144 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_12, i32 31)
  %tmp_145 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %neg_mul3, i32 49, i32 64)
  %tmp_14 = sext i16 %tmp_145 to i32
  %tmp_146 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %mul2, i32 49, i32 64)
  %tmp_126 = sext i16 %tmp_146 to i32
  %tmp_127 = select i1 %tmp_144, i32 %tmp_14, i32 %tmp_126
  %neg_ti8 = sub i32 0, %tmp_127
  %k1_4 = select i1 %tmp_144, i32 %neg_ti8, i32 %tmp_126
  %tmp_i4 = mul i32 %k1_4, -127773
  %tmp_i4_26 = add i32 %tmp_i4, %ix_12
  %tmp_25_i4 = mul nsw i32 %tmp_i4_26, 16807
  %tmp_26_i4 = mul i32 %k1_4, -2836
  %ix_13 = add i32 %tmp_25_i4, %tmp_26_i4
  %tmp_147 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_13, i32 31)
  %ix_14 = add nsw i32 %ix_13, 2147483647
  %ix_15 = select i1 %tmp_147, i32 %ix_14, i32 %ix_13
  %tmp_32 = sitofp i32 %ix_15 to float
  %rnd_3 = fmul float %tmp_32, 0x3F40000000000000
  %rnd_4 = fmul float %rnd_3, 1.200000e+01
  %rnd_5 = fadd float %rnd_4, -6.000000e+00
  %tmp_33 = fmul float %rnd_5, 0x3FBF2607C0000000
  %vel4_addr_1 = getelementptr inbounds [216 x float]* %vel4, i64 0, i64 %tmp_24
  store float %tmp_33, float* %vel4_addr_1, align 4
  %sext_cast = sext i32 %ix_15 to i65
  %mul = mul i65 %sext_cast, 4405860029
  %neg_mul = sub i65 0, %mul
  %tmp_148 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_15, i32 31)
  %tmp_149 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %neg_mul, i32 49, i32 64)
  %tmp_128 = sext i16 %tmp_149 to i32
  %tmp_150 = call i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65 %mul, i32 49, i32 64)
  %tmp_129 = sext i16 %tmp_150 to i32
  %tmp_130 = select i1 %tmp_148, i32 %tmp_128, i32 %tmp_129
  %neg_ti = sub i32 0, %tmp_130
  %k1_5 = select i1 %tmp_148, i32 %neg_ti, i32 %tmp_129
  %tmp_i5 = mul i32 %k1_5, -127773
  %tmp_i5_27 = add i32 %tmp_i5, %ix_15
  %tmp_25_i5 = mul nsw i32 %tmp_i5_27, 16807
  %tmp_26_i5 = mul i32 %k1_5, -2836
  %ix_16 = add i32 %tmp_25_i5, %tmp_26_i5
  %tmp_151 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ix_16, i32 31)
  %ix_17 = add nsw i32 %ix_16, 2147483647
  %ix_18 = select i1 %tmp_151, i32 %ix_17, i32 %ix_16
  store i32 %ix_18, i32* @rnd_seed, align 4
  %tmp_34 = sitofp i32 %ix_18 to float
  %rnd_6 = fmul float %tmp_34, 0x3F40000000000000
  %rnd_7 = fmul float %rnd_6, 1.200000e+01
  %rnd_8 = fadd float %rnd_7, -6.000000e+00
  %tmp_35 = fmul float %rnd_8, 0x3FBF2607C0000000
  %vel4_addr_2 = getelementptr inbounds [216 x float]* %vel4, i64 0, i64 %tmp_29
  store float %tmp_35, float* %vel4_addr_2, align 4
  br label %.preheader8

.loopexit9.loopexit:                              ; preds = %.preheader8
  br label %.loopexit9

.loopexit9:                                       ; preds = %.loopexit9.loopexit, %0
  %processorCount_load = load i32* @processorCount, align 4
  %localAtomCount = sdiv i32 72, %processorCount_load
  br label %2

; <label>:2                                       ; preds = %.loopexit, %.loopexit9
  %stepIndex = phi i5 [ 0, %.loopexit9 ], [ %stepIndex_1, %.loopexit ]
  %stepIndex_1 = add i5 %stepIndex, 1
  %exitcond8 = icmp eq i5 %stepIndex, -12
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20) nounwind
  br i1 %exitcond8, label %22, label %3

; <label>:3                                       ; preds = %2
  %world_rank_load_1 = load i32* @world_rank, align 4
  %tmp_36 = icmp eq i32 %world_rank_load_1, 0
  br i1 %tmp_36, label %.preheader7.preheader, label %5

.preheader7.preheader:                            ; preds = %3
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader, %4
  %r = phi i32 [ %r_3, %4 ], [ 1, %.preheader7.preheader ]
  %processorCount_load_1 = load i32* @processorCount, align 4
  %tmp_37 = icmp slt i32 %r, %processorCount_load_1
  br i1 %tmp_37, label %4, label %.loopexit6.loopexit

; <label>:4                                       ; preds = %.preheader7
  call fastcc void @MPI_Send([216 x float]* %pos1, i32 %r) nounwind
  %r_3 = add nsw i32 %r, 1
  br label %.preheader7

; <label>:5                                       ; preds = %3
  call fastcc void @MPI_Recv([216 x float]* %pos1, i32 0) nounwind
  br label %.loopexit6

.loopexit6.loopexit:                              ; preds = %.preheader7
  br label %.loopexit6

.loopexit6:                                       ; preds = %.loopexit6.loopexit, %5
  br label %6

; <label>:6                                       ; preds = %7, %.loopexit6
  %i_1 = phi i8 [ 0, %.loopexit6 ], [ %i_5, %7 ]
  %exitcond6 = icmp eq i8 %i_1, -40
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 216, i64 216, i64 216) nounwind
  %i_5 = add i8 %i_1, 1
  br i1 %exitcond6, label %8, label %7

; <label>:7                                       ; preds = %6
  %tmp_39 = zext i8 %i_1 to i64
  %force2_addr = getelementptr inbounds [216 x float]* %force2, i64 0, i64 %tmp_39
  store float 0.000000e+00, float* %force2_addr, align 4
  br label %6

; <label>:8                                       ; preds = %6
  %world_rank_load_2 = load i32* @world_rank, align 4
  %i_6 = mul nsw i32 %world_rank_load_2, %localAtomCount
  %tmp_38 = add nsw i32 %i_6, %localAtomCount
  br label %9

; <label>:9                                       ; preds = %13, %8
  %i_2 = phi i32 [ %i_6, %8 ], [ %i_7, %13 ]
  %tmp_40 = icmp eq i32 %i_2, %tmp_38
  br i1 %tmp_40, label %14, label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %9
  %tmp_152 = shl i32 %i_2, 2
  %tmp_42 = sub i32 %tmp_152, %i_2
  %tmp_43 = sext i32 %tmp_42 to i64
  %pos1_addr_3 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_43
  %tmp_44 = add nsw i32 1, %tmp_42
  %tmp_45 = sext i32 %tmp_44 to i64
  %pos1_addr_4 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_45
  %tmp_46 = add nsw i32 2, %tmp_42
  %tmp_47 = sext i32 %tmp_46 to i64
  %pos1_addr_5 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_47
  %force2_addr_1 = getelementptr inbounds [216 x float]* %force2, i64 0, i64 %tmp_43
  %force2_addr_2 = getelementptr inbounds [216 x float]* %force2, i64 0, i64 %tmp_45
  %force2_addr_3 = getelementptr inbounds [216 x float]* %force2, i64 0, i64 %tmp_47
  %pos1_load = load float* %pos1_addr_3, align 4
  %pos1_load_4 = load float* %pos1_addr_4, align 4
  %pos1_load_6 = load float* %pos1_addr_5, align 4
  br label %.preheader4

.preheader4:                                      ; preds = %._crit_edge, %.preheader4.preheader
  %j = phi i7 [ %j_1, %._crit_edge ], [ 0, %.preheader4.preheader ]
  %tmp_153 = trunc i7 %j to i1
  %j_cast1 = zext i7 %j to i10
  %j_cast3 = zext i7 %j to i32
  %tmp_48 = icmp eq i7 %j, -56
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 72, i64 72, i64 72) nounwind
  %j_1 = add i7 1, %j
  br i1 %tmp_48, label %13, label %10

; <label>:10                                      ; preds = %.preheader4
  %tmp_49 = icmp eq i32 %i_2, %j_cast3
  br i1 %tmp_49, label %._crit_edge, label %11

; <label>:11                                      ; preds = %10
  %slt = icmp slt i32 %i_2, %j_cast3
  %rev = xor i1 %slt, true
  %tmp_52 = xor i1 %tmp_153, true
  %or_cond = or i1 %rev, %tmp_52
  %slt1 = icmp slt i32 %j_cast3, %i_2
  %rev1 = xor i1 %slt1, true
  %tmp_154 = trunc i32 %i_2 to i1
  %tmp_53 = or i1 %tmp_154, %rev1
  %or_cond1 = and i1 %or_cond, %tmp_53
  br i1 %or_cond1, label %12, label %._crit_edge

; <label>:12                                      ; preds = %11
  %p_shl2 = call i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7 %j, i2 0)
  %p_shl2_cast = zext i9 %p_shl2 to i10
  %tmp_55 = sub i10 %p_shl2_cast, %j_cast1
  %tmp_76_cast = sext i10 %tmp_55 to i32
  %tmp_56 = zext i32 %tmp_76_cast to i64
  %pos1_addr_6 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_56
  %pos1_load_5 = load float* %pos1_addr_6, align 4
  %dx = fsub float %pos1_load, %pos1_load_5
  %tmp_57 = fdiv float %dx, 2.500000e+01
  %tmp_58 = call fastcc float @rint(float %tmp_57)
  %tmp_59 = fmul float %tmp_58, 2.500000e+01
  %dx_1 = fsub float %dx, %tmp_59
  %tmp_60 = add i10 %tmp_55, 1
  %tmp_81_cast = sext i10 %tmp_60 to i32
  %tmp_61 = zext i32 %tmp_81_cast to i64
  %pos1_addr_10 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_61
  %pos1_load_7 = load float* %pos1_addr_10, align 4
  %dy = fsub float %pos1_load_4, %pos1_load_7
  %tmp_62 = fdiv float %dy, 2.500000e+01
  %tmp_63 = call fastcc float @rint(float %tmp_62)
  %tmp_64 = fmul float %tmp_63, 2.500000e+01
  %dy_1 = fsub float %dy, %tmp_64
  %tmp_65 = add i10 %tmp_55, 2
  %tmp_86_cast = sext i10 %tmp_65 to i32
  %tmp_66 = zext i32 %tmp_86_cast to i64
  %pos1_addr_11 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_66
  %pos1_load_8 = load float* %pos1_addr_11, align 4
  %dz = fsub float %pos1_load_6, %pos1_load_8
  %tmp_67 = fdiv float %dz, 2.500000e+01
  %tmp_68 = call fastcc float @rint(float %tmp_67)
  %tmp_69 = fmul float %tmp_68, 2.500000e+01
  %dz_1 = fsub float %dz, %tmp_69
  %tmp_70 = fmul float %dx_1, %dx_1
  %tmp_71 = fmul float %dy_1, %dy_1
  %tmp_72 = fadd float %tmp_70, %tmp_71
  %tmp_73 = fmul float %dz_1, %dz_1
  %tmp_74 = fadd float %tmp_72, %tmp_73
  %r2inv = fdiv float 1.000000e+00, %tmp_74
  %tmp_75 = fmul float %r2inv, %r2inv
  %r6inv = fmul float %tmp_75, %r2inv
  %r12inv = fmul float %r6inv, %r6inv
  %tmp_76 = fmul float %r2inv, 6.000000e+00
  %tmp_77 = fmul float %tmp_76, %r12inv
  %tmp_78 = fmul float %r2inv, 3.000000e+00
  %tmp_79 = fmul float %tmp_78, %r6inv
  %gr = fsub float %tmp_77, %tmp_79
  %fx = fmul float %gr, %dx_1
  %fy = fmul float %gr, %dy_1
  %fz = fmul float %gr, %dz_1
  %force2_load_2 = load float* %force2_addr_1, align 4
  %tmp_80 = fadd float %force2_load_2, %fx
  store float %tmp_80, float* %force2_addr_1, align 4
  %force2_load_3 = load float* %force2_addr_2, align 4
  %tmp_81 = fadd float %force2_load_3, %fy
  store float %tmp_81, float* %force2_addr_2, align 4
  %force2_load_4 = load float* %force2_addr_3, align 4
  %tmp_82 = fadd float %force2_load_4, %fz
  store float %tmp_82, float* %force2_addr_3, align 4
  %force2_addr_6 = getelementptr inbounds [216 x float]* %force2, i64 0, i64 %tmp_56
  %force2_load_5 = load float* %force2_addr_6, align 4
  %tmp_83 = fsub float %force2_load_5, %fx
  store float %tmp_83, float* %force2_addr_6, align 4
  %force2_addr_7 = getelementptr inbounds [216 x float]* %force2, i64 0, i64 %tmp_61
  %force2_load_6 = load float* %force2_addr_7, align 4
  %tmp_84 = fsub float %force2_load_6, %fy
  store float %tmp_84, float* %force2_addr_7, align 4
  %force2_addr_8 = getelementptr inbounds [216 x float]* %force2, i64 0, i64 %tmp_66
  %force2_load_7 = load float* %force2_addr_8, align 4
  %tmp_85 = fsub float %force2_load_7, %fz
  store float %tmp_85, float* %force2_addr_8, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %12, %11, %10
  br label %.preheader4

; <label>:13                                      ; preds = %.preheader4
  %i_7 = add nsw i32 %i_2, 1
  br label %9

; <label>:14                                      ; preds = %9
  %tmp_41 = icmp eq i32 %world_rank_load_2, 0
  br i1 %tmp_41, label %.preheader3.preheader, label %20

.preheader3.preheader:                            ; preds = %14
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader, %15
  %r_1 = phi i8 [ %r_4, %15 ], [ 0, %.preheader3.preheader ]
  %exitcond5 = icmp eq i8 %r_1, -40
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 216, i64 216, i64 216) nounwind
  %r_4 = add i8 %r_1, 1
  br i1 %exitcond5, label %.preheader.preheader, label %15

.preheader.preheader:                             ; preds = %.preheader3
  br label %.preheader

; <label>:15                                      ; preds = %.preheader3
  %tmp_50 = zext i8 %r_1 to i64
  %force2_addr_4 = getelementptr inbounds [216 x float]* %force2, i64 0, i64 %tmp_50
  %force2_load = load float* %force2_addr_4, align 4
  %forceSum3_addr = getelementptr inbounds [216 x float]* %forceSum3, i64 0, i64 %tmp_50
  store float %force2_load, float* %forceSum3_addr, align 4
  br label %.preheader3

.preheader:                                       ; preds = %.preheader.preheader, %19
  %r_2 = phi i32 [ %r_5, %19 ], [ 1, %.preheader.preheader ]
  %processorCount_load_2 = load i32* @processorCount, align 4
  %tmp_54 = icmp slt i32 %r_2, %processorCount_load_2
  br i1 %tmp_54, label %16, label %.loopexit2.loopexit

; <label>:16                                      ; preds = %.preheader
  call fastcc void @MPI_Recv([216 x float]* %force2, i32 %r_2) nounwind
  br label %17

; <label>:17                                      ; preds = %18, %16
  %q_1 = phi i8 [ 0, %16 ], [ %q, %18 ]
  %exitcond = icmp eq i8 %q_1, -40
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 216, i64 216, i64 216) nounwind
  %q = add i8 %q_1, 1
  br i1 %exitcond, label %19, label %18

; <label>:18                                      ; preds = %17
  %tmp_87 = zext i8 %q_1 to i64
  %force2_addr_5 = getelementptr inbounds [216 x float]* %force2, i64 0, i64 %tmp_87
  %force2_load_1 = load float* %force2_addr_5, align 4
  %forceSum3_addr_4 = getelementptr inbounds [216 x float]* %forceSum3, i64 0, i64 %tmp_87
  %forceSum3_load_3 = load float* %forceSum3_addr_4, align 4
  %tmp_88 = fadd float %forceSum3_load_3, %force2_load_1
  store float %tmp_88, float* %forceSum3_addr_4, align 4
  br label %17

; <label>:19                                      ; preds = %17
  %r_5 = add nsw i32 %r_2, 1
  br label %.preheader

; <label>:20                                      ; preds = %14
  call fastcc void @MPI_Send([216 x float]* %force2, i32 0) nounwind
  br label %.loopexit2

.loopexit2.loopexit:                              ; preds = %.preheader
  br label %.loopexit2

.loopexit2:                                       ; preds = %.loopexit2.loopexit, %20
  %world_rank_load_3 = load i32* @world_rank, align 4
  %tmp_86 = icmp eq i32 %world_rank_load_3, 0
  br i1 %tmp_86, label %.preheader12.preheader, label %.loopexit

.preheader12.preheader:                           ; preds = %.loopexit2
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %21
  %i_3 = phi i32 [ %i_8, %21 ], [ 0, %.preheader12.preheader ]
  %tmp_89 = icmp eq i32 %i_3, %localAtomCount
  %i_8 = add nsw i32 %i_3, 1
  br i1 %tmp_89, label %.loopexit.loopexit, label %21

; <label>:21                                      ; preds = %.preheader12
  %tmp_155 = shl i32 %i_3, 2
  %tmp_90 = sub i32 %tmp_155, %i_3
  %tmp_91 = sext i32 %tmp_90 to i64
  %forceSum3_addr_1 = getelementptr inbounds [216 x float]* %forceSum3, i64 0, i64 %tmp_91
  %forceSum3_load = load float* %forceSum3_addr_1, align 4
  %tmp_92 = fpext float %forceSum3_load to double
  %tmp_93 = fmul double %tmp_92, 2.000000e-02
  %tmp_94 = fmul double %tmp_93, 5.000000e-01
  %vel4_addr_3 = getelementptr inbounds [216 x float]* %vel4, i64 0, i64 %tmp_91
  %vel4_load = load float* %vel4_addr_3, align 4
  %tmp_95 = fpext float %vel4_load to double
  %tmp_96 = fadd double %tmp_95, %tmp_94
  %tmp_97 = fptrunc double %tmp_96 to float
  store float %tmp_97, float* %vel4_addr_3, align 4
  %tmp_98 = fpext float %tmp_97 to double
  %tmp_99 = fmul double %tmp_98, 2.000000e-02
  %a_assign = fptrunc double %tmp_99 to float
  %tmp_i6 = fpext float %a_assign to double
  %tmp_i6_33 = fdiv float %a_assign, 2.500000e+01
  %x_assign = fpext float %tmp_i6_33 to double
  %p_Val2_s = bitcast double %x_assign to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_s, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 62) nounwind
  %loc_V_18 = trunc i64 %p_Val2_s to i52
  %tmp_i9 = icmp ult i11 %loc_V, 1023
  %tmp_i9_34 = icmp ugt i11 %loc_V, -973
  %p_Result_130 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 %p_Result_s, i63 0) nounwind
  %index_V = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 57) nounwind
  %tmp_21_i = zext i6 %index_V to i64
  %mask_table1_addr = getelementptr [64 x i52]* @mask_table1, i64 0, i64 %tmp_21_i
  %mask = load i52* %mask_table1_addr, align 8
  %mask_i_cast = zext i52 %mask to i64
  %tmp_158 = trunc i64 %p_Val2_s to i63
  %p_Result_131 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 true, i63 %tmp_158) nounwind
  %p_Val2_45 = add i64 %mask_i_cast, %p_Result_131
  %p_Result_132 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_45, i32 63)
  %loc_V_19 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_45, i32 52, i32 62) nounwind
  %loc_V_20 = trunc i64 %p_Val2_45 to i52
  %xs_exp_V_19 = select i1 %p_Result_s, i11 %loc_V_19, i11 %loc_V
  %xs_sign_V_24 = and i1 %p_Result_s, %p_Result_132
  %xs_sig_V_19 = select i1 %p_Result_s, i52 %loc_V_20, i52 %loc_V_18
  %tmp_23_i = xor i52 %mask, -1
  %xs_sig_V_27 = and i52 %xs_sig_V_19, %tmp_23_i
  %p_Result_133 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1 %xs_sign_V_24, i11 %xs_exp_V_19, i52 %xs_sig_V_27) nounwind
  %sel_tmp2_demorgan_i = or i1 %tmp_i9, %tmp_i9_34
  %sel_tmp3_v_i = select i1 %sel_tmp2_demorgan_i, i64 %p_Result_130, i64 %p_Result_133
  %sel_tmp3_i = bitcast i64 %sel_tmp3_v_i to double
  %sel_tmp4_i = xor i1 %tmp_i9, true
  %sel_tmp5_i = and i1 %tmp_i9_34, %sel_tmp4_i
  %sel_tmp6_i = select i1 %sel_tmp5_i, double %x_assign, double %sel_tmp3_i
  %notlhs_i = icmp ne i52 %loc_V_18, 0
  %notrhs_i = icmp ne i11 %loc_V, 0
  %sel_tmp8_i = or i1 %notrhs_i, %notlhs_i
  %tmp81 = and i1 %p_Result_s, %sel_tmp8_i
  %sel_tmp9_i = and i1 %tmp81, %tmp_i9
  %sel_tmp6_i_op = fmul double %sel_tmp6_i, 2.500000e+01
  %tmp_55_i = select i1 %sel_tmp9_i, double -2.500000e+01, double %sel_tmp6_i_op
  %tmp_56_i = fsub double %tmp_i6, %tmp_55_i
  %tmp_57_i = fptrunc double %tmp_56_i to float
  %pos1_addr_7 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_91
  %pos1_load_1 = load float* %pos1_addr_7, align 4
  %tmp_101 = fadd float %pos1_load_1, %tmp_57_i
  store float %tmp_101, float* %pos1_addr_7, align 4
  %tmp_102 = add nsw i32 1, %tmp_90
  %tmp_103 = sext i32 %tmp_102 to i64
  %forceSum3_addr_2 = getelementptr inbounds [216 x float]* %forceSum3, i64 0, i64 %tmp_103
  %forceSum3_load_1 = load float* %forceSum3_addr_2, align 4
  %tmp_104 = fpext float %forceSum3_load_1 to double
  %tmp_105 = fmul double %tmp_104, 2.000000e-02
  %tmp_106 = fmul double %tmp_105, 5.000000e-01
  %vel4_addr_4 = getelementptr inbounds [216 x float]* %vel4, i64 0, i64 %tmp_103
  %vel4_load_1 = load float* %vel4_addr_4, align 4
  %tmp_107 = fpext float %vel4_load_1 to double
  %tmp_108 = fadd double %tmp_107, %tmp_106
  %tmp_109 = fptrunc double %tmp_108 to float
  store float %tmp_109, float* %vel4_addr_4, align 4
  %tmp_110 = fpext float %tmp_109 to double
  %tmp_111 = fmul double %tmp_110, 2.000000e-02
  %a_assign_1 = fptrunc double %tmp_111 to float
  %tmp_i7 = fpext float %a_assign_1 to double
  %tmp_i7_35 = fdiv float %a_assign_1, 2.500000e+01
  %x_assign_s = fpext float %tmp_i7_35 to double
  %p_Val2_50 = bitcast double %x_assign_s to i64
  %p_Result_102 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_50, i32 63)
  %loc_V_21 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_50, i32 52, i32 62) nounwind
  %loc_V_22 = trunc i64 %p_Val2_50 to i52
  %tmp_i10 = icmp ult i11 %loc_V_21, 1023
  %tmp_i10_36 = icmp ugt i11 %loc_V_21, -973
  %p_Result_134 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 %p_Result_102, i63 0) nounwind
  %index_V_4 = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %p_Val2_50, i32 52, i32 57) nounwind
  %tmp_21_i2 = zext i6 %index_V_4 to i64
  %mask_table1_addr_2 = getelementptr [64 x i52]* @mask_table1, i64 0, i64 %tmp_21_i2
  %mask_4 = load i52* %mask_table1_addr_2, align 8
  %mask_i21_cast = zext i52 %mask_4 to i64
  %tmp_163 = trunc i64 %p_Val2_50 to i63
  %p_Result_135 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 true, i63 %tmp_163) nounwind
  %p_Val2_55 = add i64 %mask_i21_cast, %p_Result_135
  %p_Result_136 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_55, i32 63)
  %loc_V_23 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_55, i32 52, i32 62) nounwind
  %loc_V_24 = trunc i64 %p_Val2_55 to i52
  %xs_exp_V_20 = select i1 %p_Result_102, i11 %loc_V_23, i11 %loc_V_21
  %xs_sign_V_25 = and i1 %p_Result_102, %p_Result_136
  %xs_sig_V_24 = select i1 %p_Result_102, i52 %loc_V_24, i52 %loc_V_22
  %tmp_23_i2 = xor i52 %mask_4, -1
  %xs_sig_V_28 = and i52 %xs_sig_V_24, %tmp_23_i2
  %p_Result_137 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1 %xs_sign_V_25, i11 %xs_exp_V_20, i52 %xs_sig_V_28) nounwind
  %sel_tmp2_demorgan_i2 = or i1 %tmp_i10, %tmp_i10_36
  %sel_tmp3_v_i2 = select i1 %sel_tmp2_demorgan_i2, i64 %p_Result_134, i64 %p_Result_137
  %sel_tmp3_i2 = bitcast i64 %sel_tmp3_v_i2 to double
  %sel_tmp4_i2 = xor i1 %tmp_i10, true
  %sel_tmp5_i2 = and i1 %tmp_i10_36, %sel_tmp4_i2
  %sel_tmp6_i4 = select i1 %sel_tmp5_i2, double %x_assign_s, double %sel_tmp3_i2
  %notlhs_i2 = icmp ne i52 %loc_V_22, 0
  %notrhs_i2 = icmp ne i11 %loc_V_21, 0
  %sel_tmp8_i4 = or i1 %notrhs_i2, %notlhs_i2
  %tmp82 = and i1 %p_Result_102, %sel_tmp8_i4
  %sel_tmp9_i2 = and i1 %tmp82, %tmp_i10
  %sel_tmp6_i39_op = fmul double %sel_tmp6_i4, 2.500000e+01
  %tmp_55_i1 = select i1 %sel_tmp9_i2, double -2.500000e+01, double %sel_tmp6_i39_op
  %tmp_56_i1 = fsub double %tmp_i7, %tmp_55_i1
  %tmp_57_i1 = fptrunc double %tmp_56_i1 to float
  %pos1_addr_8 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_103
  %pos1_load_2 = load float* %pos1_addr_8, align 4
  %tmp_113 = fadd float %pos1_load_2, %tmp_57_i1
  store float %tmp_113, float* %pos1_addr_8, align 4
  %tmp_114 = add nsw i32 2, %tmp_90
  %tmp_115 = sext i32 %tmp_114 to i64
  %forceSum3_addr_3 = getelementptr inbounds [216 x float]* %forceSum3, i64 0, i64 %tmp_115
  %forceSum3_load_2 = load float* %forceSum3_addr_3, align 4
  %tmp_116 = fpext float %forceSum3_load_2 to double
  %tmp_117 = fmul double %tmp_116, 2.000000e-02
  %tmp_118 = fmul double %tmp_117, 5.000000e-01
  %vel4_addr_5 = getelementptr inbounds [216 x float]* %vel4, i64 0, i64 %tmp_115
  %vel4_load_2 = load float* %vel4_addr_5, align 4
  %tmp_119 = fpext float %vel4_load_2 to double
  %tmp_120 = fadd double %tmp_119, %tmp_118
  %tmp_121 = fptrunc double %tmp_120 to float
  store float %tmp_121, float* %vel4_addr_5, align 4
  %tmp_122 = fpext float %tmp_121 to double
  %tmp_123 = fmul double %tmp_122, 2.000000e-02
  %a_assign_2 = fptrunc double %tmp_123 to float
  %tmp_i8 = fpext float %a_assign_2 to double
  %tmp_i8_37 = fdiv float %a_assign_2, 2.500000e+01
  %x_assign_1 = fpext float %tmp_i8_37 to double
  %p_Val2_60 = bitcast double %x_assign_1 to i64
  %p_Result_119 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_60, i32 63)
  %loc_V_25 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_60, i32 52, i32 62) nounwind
  %loc_V_26 = trunc i64 %p_Val2_60 to i52
  %tmp_i11 = icmp ult i11 %loc_V_25, 1023
  %tmp_i11_38 = icmp ugt i11 %loc_V_25, -973
  %p_Result_138 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 %p_Result_119, i63 0) nounwind
  %index_V_5 = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %p_Val2_60, i32 52, i32 57) nounwind
  %tmp_21_i3 = zext i6 %index_V_5 to i64
  %mask_table1_addr_3 = getelementptr [64 x i52]* @mask_table1, i64 0, i64 %tmp_21_i3
  %mask_5 = load i52* %mask_table1_addr_3, align 8
  %mask_i56_cast = zext i52 %mask_5 to i64
  %tmp_168 = trunc i64 %p_Val2_60 to i63
  %p_Result_139 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 true, i63 %tmp_168) nounwind
  %p_Val2_65 = add i64 %mask_i56_cast, %p_Result_139
  %p_Result_140 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_65, i32 63)
  %loc_V_27 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_65, i32 52, i32 62) nounwind
  %loc_V_28 = trunc i64 %p_Val2_65 to i52
  %xs_exp_V = select i1 %p_Result_119, i11 %loc_V_27, i11 %loc_V_25
  %xs_sign_V = and i1 %p_Result_119, %p_Result_140
  %xs_sig_V_25 = select i1 %p_Result_119, i52 %loc_V_28, i52 %loc_V_26
  %tmp_23_i3 = xor i52 %mask_5, -1
  %xs_sig_V = and i52 %xs_sig_V_25, %tmp_23_i3
  %p_Result_141 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1 %xs_sign_V, i11 %xs_exp_V, i52 %xs_sig_V) nounwind
  %sel_tmp2_demorgan_i3 = or i1 %tmp_i11, %tmp_i11_38
  %sel_tmp3_v_i3 = select i1 %sel_tmp2_demorgan_i3, i64 %p_Result_138, i64 %p_Result_141
  %sel_tmp3_i3 = bitcast i64 %sel_tmp3_v_i3 to double
  %sel_tmp4_i3 = xor i1 %tmp_i11, true
  %sel_tmp5_i3 = and i1 %tmp_i11_38, %sel_tmp4_i3
  %sel_tmp6_i5 = select i1 %sel_tmp5_i3, double %x_assign_1, double %sel_tmp3_i3
  %notlhs_i3 = icmp ne i52 %loc_V_26, 0
  %notrhs_i3 = icmp ne i11 %loc_V_25, 0
  %sel_tmp8_i5 = or i1 %notrhs_i3, %notlhs_i3
  %tmp83 = and i1 %p_Result_119, %sel_tmp8_i5
  %sel_tmp9_i3 = and i1 %tmp83, %tmp_i11
  %sel_tmp6_i74_op = fmul double %sel_tmp6_i5, 2.500000e+01
  %tmp_55_i2 = select i1 %sel_tmp9_i3, double -2.500000e+01, double %sel_tmp6_i74_op
  %tmp_56_i2 = fsub double %tmp_i8, %tmp_55_i2
  %tmp_57_i2 = fptrunc double %tmp_56_i2 to float
  %pos1_addr_9 = getelementptr inbounds [216 x float]* %pos1, i64 0, i64 %tmp_115
  %pos1_load_3 = load float* %pos1_addr_9, align 4
  %tmp_125 = fadd float %pos1_load_3, %tmp_57_i2
  store float %tmp_125, float* %pos1_addr_9, align 4
  br label %.preheader12

.loopexit.loopexit:                               ; preds = %.preheader12
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit2
  br label %2

; <label>:22                                      ; preds = %2
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121*, i121) {
entry:
  %empty = call i121 @_autotb_FifoWrite_i121(i121* %0, i121 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121*) {
entry:
  %empty = call i121 @_autotb_FifoRead_i121(i121* %0)
  ret i121 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i40 @_ssdm_op_PartSet.i40.i40.i8.i32.i32(i40, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i40 @llvm.part.set.i40.i8(i40 %0, i8 %1, i32 %2, i32 %3)
  ret i40 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_39 = trunc i32 %empty to i8
  ret i8 %empty_39
}

define weak i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121, i32, i32) nounwind readnone {
entry:
  %empty = call i121 @llvm.part.select.i121(i121 %0, i32 %1, i32 %2)
  %empty_40 = trunc i121 %empty to i8
  ret i8 %empty_40
}

define weak i64 @_ssdm_op_PartSelect.i64.i121.i32.i32(i121, i32, i32) nounwind readnone {
entry:
  %empty = call i121 @llvm.part.select.i121(i121 %0, i32 %1, i32 %2)
  %empty_41 = trunc i121 %empty to i64
  ret i64 %empty_41
}

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_42 = trunc i64 %empty to i6
  ret i6 %empty_42
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121, i32, i32) nounwind readnone {
entry:
  %empty = call i121 @llvm.part.select.i121(i121 %0, i32 %1, i32 %2)
  %empty_43 = trunc i121 %empty to i4
  ret i4 %empty_43
}

declare i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i33.i32.i32(i33, i32, i32) nounwind readnone {
entry:
  %empty = call i33 @llvm.part.select.i33(i33 %0, i32 %1, i32 %2)
  %empty_44 = trunc i33 %empty to i32
  ret i32 %empty_44
}

define weak i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121, i32, i32) nounwind readnone {
entry:
  %empty = call i121 @llvm.part.select.i121(i121 %0, i32 %1, i32 %2)
  %empty_45 = trunc i121 %empty to i32
  ret i32 %empty_45
}

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i65.i32.i32(i65, i32, i32) nounwind readnone {
entry:
  %empty = call i65 @llvm.part.select.i65(i65 %0, i32 %1, i32 %2)
  %empty_46 = trunc i65 %empty to i16
  ret i16 %empty_46
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_47 = trunc i64 %empty to i11
  ret i11 %empty_47
}

declare i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i121P(i121*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i121(i121* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_48 = shl i64 1, %empty
  %empty_49 = and i64 %0, %empty_48
  %empty_50 = icmp ne i64 %empty_49, 0
  ret i1 %empty_50
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_51 = and i32 %0, %empty
  %empty_52 = icmp ne i32 %empty_51, 0
  ret i1 %empty_52
}

define weak i1 @_ssdm_op_BitSelect.i1.i121.i32(i121, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i121
  %empty_53 = shl i121 1, %empty
  %empty_54 = and i121 %0, %empty_53
  %empty_55 = icmp ne i121 %empty_54, 0
  ret i1 %empty_55
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7, i2) nounwind readnone {
entry:
  %empty = zext i7 %0 to i9
  %empty_56 = zext i2 %1 to i9
  %empty_57 = shl i9 %empty, 2
  %empty_58 = or i9 %empty_57, %empty_56
  ret i9 %empty_58
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64
  %empty_59 = zext i32 %1 to i64
  %empty_60 = shl i64 %empty, 32
  %empty_61 = or i64 %empty_60, %empty_59
  ret i64 %empty_61
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1, i63) nounwind readnone {
entry:
  %empty = zext i1 %0 to i64
  %empty_62 = zext i63 %1 to i64
  %empty_63 = shl i64 %empty, 63
  %empty_64 = or i64 %empty_63, %empty_62
  ret i64 %empty_64
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1, i11, i52) nounwind readnone {
entry:
  %empty = zext i11 %1 to i63
  %empty_65 = zext i52 %2 to i63
  %empty_66 = shl i63 %empty, 52
  %empty_67 = or i63 %empty_66, %empty_65
  %empty_68 = zext i1 %0 to i64
  %empty_69 = zext i63 %empty_67 to i64
  %empty_70 = shl i64 %empty_68, 63
  %empty_71 = or i64 %empty_70, %empty_69
  ret i64 %empty_71
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i1.i5(i1, i5) nounwind readnone {
entry:
  %empty = zext i1 %0 to i6
  %empty_72 = zext i5 %1 to i6
  %empty_73 = shl i6 %empty, 5
  %empty_74 = or i6 %empty_73, %empty_72
  ret i6 %empty_74
}

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

define weak i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i8.i32.i8.i8(i49, i8, i4, i4, i8, i32, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %6 to i16
  %empty_75 = zext i8 %7 to i16
  %empty_76 = shl i16 %empty, 8
  %empty_77 = or i16 %empty_76, %empty_75
  %empty_78 = zext i32 %5 to i48
  %empty_79 = zext i16 %empty_77 to i48
  %empty_80 = shl i48 %empty_78, 16
  %empty_81 = or i48 %empty_80, %empty_79
  %empty_82 = zext i8 %4 to i56
  %empty_83 = zext i48 %empty_81 to i56
  %empty_84 = shl i56 %empty_82, 48
  %empty_85 = or i56 %empty_84, %empty_83
  %empty_86 = zext i4 %3 to i60
  %empty_87 = zext i56 %empty_85 to i60
  %empty_88 = shl i60 %empty_86, 56
  %empty_89 = or i60 %empty_88, %empty_87
  %empty_90 = zext i4 %2 to i64
  %empty_91 = zext i60 %empty_89 to i64
  %empty_92 = shl i64 %empty_90, 60
  %empty_93 = or i64 %empty_92, %empty_91
  %empty_94 = zext i8 %1 to i72
  %empty_95 = zext i64 %empty_93 to i72
  %empty_96 = shl i72 %empty_94, 64
  %empty_97 = or i72 %empty_96, %empty_95
  %empty_98 = zext i49 %0 to i121
  %empty_99 = zext i72 %empty_97 to i121
  %empty_100 = shl i121 %empty_98, 72
  %empty_101 = or i121 %empty_100, %empty_99
  ret i121 %empty_101
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i56(i49, i8, i4, i4, i56) nounwind readnone {
entry:
  %empty = zext i4 %3 to i60
  %empty_102 = zext i56 %4 to i60
  %empty_103 = shl i60 %empty, 56
  %empty_104 = or i60 %empty_103, %empty_102
  %empty_105 = zext i4 %2 to i64
  %empty_106 = zext i60 %empty_104 to i64
  %empty_107 = shl i64 %empty_105, 60
  %empty_108 = or i64 %empty_107, %empty_106
  %empty_109 = zext i8 %1 to i72
  %empty_110 = zext i64 %empty_108 to i72
  %empty_111 = shl i72 %empty_109, 64
  %empty_112 = or i72 %empty_111, %empty_110
  %empty_113 = zext i49 %0 to i121
  %empty_114 = zext i72 %empty_112 to i121
  %empty_115 = shl i121 %empty_113, 72
  %empty_116 = or i121 %empty_115, %empty_114
  ret i121 %empty_116
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i40.i9.i8.i4.i4.i8.i32.i8.i8(i40, i9, i8, i4, i4, i8, i32, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %7 to i16
  %empty_117 = zext i8 %8 to i16
  %empty_118 = shl i16 %empty, 8
  %empty_119 = or i16 %empty_118, %empty_117
  %empty_120 = zext i32 %6 to i48
  %empty_121 = zext i16 %empty_119 to i48
  %empty_122 = shl i48 %empty_120, 16
  %empty_123 = or i48 %empty_122, %empty_121
  %empty_124 = zext i8 %5 to i56
  %empty_125 = zext i48 %empty_123 to i56
  %empty_126 = shl i56 %empty_124, 48
  %empty_127 = or i56 %empty_126, %empty_125
  %empty_128 = zext i4 %4 to i60
  %empty_129 = zext i56 %empty_127 to i60
  %empty_130 = shl i60 %empty_128, 56
  %empty_131 = or i60 %empty_130, %empty_129
  %empty_132 = zext i4 %3 to i64
  %empty_133 = zext i60 %empty_131 to i64
  %empty_134 = shl i64 %empty_132, 60
  %empty_135 = or i64 %empty_134, %empty_133
  %empty_136 = zext i8 %2 to i72
  %empty_137 = zext i64 %empty_135 to i72
  %empty_138 = shl i72 %empty_136, 64
  %empty_139 = or i72 %empty_138, %empty_137
  %empty_140 = zext i9 %1 to i81
  %empty_141 = zext i72 %empty_139 to i81
  %empty_142 = shl i81 %empty_140, 72
  %empty_143 = or i81 %empty_142, %empty_141
  %empty_144 = zext i40 %0 to i121
  %empty_145 = zext i81 %empty_143 to i121
  %empty_146 = shl i121 %empty_144, 81
  %empty_147 = or i121 %empty_146, %empty_145
  ret i121 %empty_147
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i40.i9.i8.i4.i4.i56(i40, i9, i8, i4, i4, i56) nounwind readnone {
entry:
  %empty = zext i4 %4 to i60
  %empty_148 = zext i56 %5 to i60
  %empty_149 = shl i60 %empty, 56
  %empty_150 = or i60 %empty_149, %empty_148
  %empty_151 = zext i4 %3 to i64
  %empty_152 = zext i60 %empty_150 to i64
  %empty_153 = shl i64 %empty_151, 60
  %empty_154 = or i64 %empty_153, %empty_152
  %empty_155 = zext i8 %2 to i72
  %empty_156 = zext i64 %empty_154 to i72
  %empty_157 = shl i72 %empty_155, 64
  %empty_158 = or i72 %empty_157, %empty_156
  %empty_159 = zext i9 %1 to i81
  %empty_160 = zext i72 %empty_158 to i81
  %empty_161 = shl i81 %empty_159, 72
  %empty_162 = or i81 %empty_161, %empty_160
  %empty_163 = zext i40 %0 to i121
  %empty_164 = zext i81 %empty_162 to i121
  %empty_165 = shl i121 %empty_163, 81
  %empty_166 = or i121 %empty_165, %empty_164
  ret i121 %empty_166
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i32.i17.i8.i64(i32, i17, i8, i64) nounwind readnone {
entry:
  %empty = zext i8 %2 to i72
  %empty_167 = zext i64 %3 to i72
  %empty_168 = shl i72 %empty, 64
  %empty_169 = or i72 %empty_168, %empty_167
  %empty_170 = zext i17 %1 to i89
  %empty_171 = zext i72 %empty_169 to i89
  %empty_172 = shl i89 %empty_170, 72
  %empty_173 = or i89 %empty_172, %empty_171
  %empty_174 = zext i32 %0 to i121
  %empty_175 = zext i89 %empty_173 to i121
  %empty_176 = shl i121 %empty_174, 89
  %empty_177 = or i121 %empty_176, %empty_175
  ret i121 %empty_177
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i32.i17.i8.i32.i32(i32, i17, i8, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %3 to i64
  %empty_178 = zext i32 %4 to i64
  %empty_179 = shl i64 %empty, 32
  %empty_180 = or i64 %empty_179, %empty_178
  %empty_181 = zext i8 %2 to i72
  %empty_182 = zext i64 %empty_180 to i72
  %empty_183 = shl i72 %empty_181, 64
  %empty_184 = or i72 %empty_183, %empty_182
  %empty_185 = zext i17 %1 to i89
  %empty_186 = zext i72 %empty_184 to i89
  %empty_187 = shl i89 %empty_185, 72
  %empty_188 = or i89 %empty_187, %empty_186
  %empty_189 = zext i32 %0 to i121
  %empty_190 = zext i89 %empty_188 to i121
  %empty_191 = shl i121 %empty_189, 89
  %empty_192 = or i121 %empty_191, %empty_190
  ret i121 %empty_192
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i32.i16.i1.i8.i32.i32(i32, i16, i1, i8, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %4 to i64
  %empty_193 = zext i32 %5 to i64
  %empty_194 = shl i64 %empty, 32
  %empty_195 = or i64 %empty_194, %empty_193
  %empty_196 = zext i8 %3 to i72
  %empty_197 = zext i64 %empty_195 to i72
  %empty_198 = shl i72 %empty_196, 64
  %empty_199 = or i72 %empty_198, %empty_197
  %empty_200 = zext i1 %2 to i73
  %empty_201 = zext i72 %empty_199 to i73
  %empty_202 = shl i73 %empty_200, 72
  %empty_203 = or i73 %empty_202, %empty_201
  %empty_204 = zext i16 %1 to i89
  %empty_205 = zext i73 %empty_203 to i89
  %empty_206 = shl i89 %empty_204, 73
  %empty_207 = or i89 %empty_206, %empty_205
  %empty_208 = zext i32 %0 to i121
  %empty_209 = zext i89 %empty_207 to i121
  %empty_210 = shl i121 %empty_208, 89
  %empty_211 = or i121 %empty_210, %empty_209
  ret i121 %empty_211
}

declare i121 @_autotb_FifoWrite_i121(i121*, i121)

declare i121 @_autotb_FifoRead_i121(i121*)

declare i1 @_autotb_FifoCanRead_i121(i121*)

declare void @_GLOBAL__I_a24() nounwind section ".text.startup"

declare void @_GLOBAL__I_a1939() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @MPI_Send([216 x float]* nocapture %buf_r, i32 %dest) {
codeRepl:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str215, i32 0, i32 0, [1 x i8]* @p_str216, [1 x i8]* @p_str217, [1 x i8]* @p_str218, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str219, [1 x i8]* @p_str220)
  %empty_212 = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str221, i32 0, i32 0, [1 x i8]* @p_str222, [1 x i8]* @p_str223, [1 x i8]* @p_str224, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str225, [1 x i8]* @p_str226)
  %dest_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %dest)
  %state_load = load i2* @state, align 1
  %t_V = load i64* @time_V_1, align 8
  switch i2 %state_load, label %.loopexit1269 [
    i2 0, label %._crit_edge1309
    i2 1, label %.preheader1277.preheader
    i2 -2, label %.preheader1267.preheader
  ]

.preheader1277.preheader:                         ; preds = %codeRepl
  %float_clr_num_load = load i32* @float_clr_num, align 4
  br label %.preheader1277

.preheader1267.preheader:                         ; preds = %codeRepl
  %test = alloca i1
  %old_seq_num = alloca i32
  %tmp_dest_V_1 = alloca i8
  %to_send_data_dest_V = trunc i32 %dest_read to i8
  store i32 0, i32* %old_seq_num
  store i1 false, i1* %test
  br label %.preheader1267

._crit_edge1309:                                  ; preds = %codeRepl
  %envlp_DATA_TYPE_V_lo = load i4* @envlp_DATA_TYPE_V, align 1
  %envlp_DATA_OR_ENVLP_s = load i4* @envlp_DATA_OR_ENVLP_s, align 1
  %pkt_out_dest_V = trunc i32 %dest_read to i8
  %tmp137 = call i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i56(i49 513, i8 %pkt_out_dest_V, i4 %envlp_DATA_OR_ENVLP_s, i4 %envlp_DATA_TYPE_V_lo, i56 14155776)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp137)
  store i2 1, i2* @state, align 1
  br label %.loopexit1269

.preheader1277:                                   ; preds = %._crit_edge1310, %.preheader1277.preheader
  %j = phi i31 [ %i_9, %._crit_edge1310 ], [ 0, %.preheader1277.preheader ]
  %j_cast = zext i31 %j to i32
  %tmp_s = icmp slt i32 %j_cast, %float_clr_num_load
  %i_9 = add i31 %j, 1
  br i1 %tmp_s, label %0, label %6

; <label>:0                                       ; preds = %.preheader1277
  %tmp_126 = zext i31 %j to i64
  %float_clr2snd_array_s = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_126
  %float_clr2snd_array_8 = load i1* %float_clr2snd_array_s, align 1
  br i1 %float_clr2snd_array_8, label %1, label %._crit_edge1310

; <label>:1                                       ; preds = %0
  %float_clr2snd_array_9 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_126
  %float_clr2snd_array_10 = load i16* %float_clr2snd_array_9, align 4
  %tmp_128 = icmp eq i16 %float_clr2snd_array_10, 0
  br i1 %tmp_128, label %2, label %._crit_edge1310

; <label>:2                                       ; preds = %1
  %float_clr2snd_array_11 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_126
  %float_clr2snd_array_12 = load i8* %float_clr2snd_array_11, align 16
  %tmp_131 = zext i8 %float_clr2snd_array_12 to i32
  %tmp_132 = icmp eq i32 %tmp_131, %dest_read
  br i1 %tmp_132, label %3, label %._crit_edge1310

; <label>:3                                       ; preds = %2
  %float_clr2snd_array_13 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_126
  %float_clr2snd_array_14 = load i4* %float_clr2snd_array_13, align 1
  store i4 %float_clr2snd_array_14, i4* @envlp_DATA_TYPE_V, align 1
  %float_clr2snd_array_15 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_126
  %float_clr2snd_array_16 = load i4* %float_clr2snd_array_15, align 2
  store i4 %float_clr2snd_array_16, i4* @envlp_DATA_OR_ENVLP_s, align 2
  store i2 -2, i2* @state, align 1
  %tmp_133 = add nsw i32 %float_clr_num_load, -1
  store i32 %tmp_133, i32* @float_clr_num, align 4
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j2 = phi i32 [ %j_cast, %3 ], [ %j_2, %5 ]
  %tmp_136 = icmp slt i32 %j2, %tmp_133
  br i1 %tmp_136, label %5, label %.loopexit1269.loopexit43

; <label>:5                                       ; preds = %4
  %tmp_141 = sext i32 %j2 to i64
  %j_2 = add nsw i32 %j2, 1
  %tmp_142 = sext i32 %j_2 to i64
  %float_clr2snd_array_17 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_142
  %float_clr2snd_array_18 = load i8* %float_clr2snd_array_17, align 16
  %float_clr2snd_array_19 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_141
  store i8 %float_clr2snd_array_18, i8* %float_clr2snd_array_19, align 16
  %float_clr2snd_array_20 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_142
  %float_clr2snd_array_21 = load i1* %float_clr2snd_array_20, align 1
  %float_clr2snd_array_22 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_141
  store i1 %float_clr2snd_array_21, i1* %float_clr2snd_array_22, align 1
  %float_clr2snd_array_23 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_142
  %float_clr2snd_array_24 = load i32* %float_clr2snd_array_23, align 4
  %float_clr2snd_array_25 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_141
  store i32 %float_clr2snd_array_24, i32* %float_clr2snd_array_25, align 4
  %float_clr2snd_array_26 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_142
  %float_clr2snd_array_27 = load i8* %float_clr2snd_array_26, align 8
  %float_clr2snd_array_28 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_141
  store i8 %float_clr2snd_array_27, i8* %float_clr2snd_array_28, align 8
  %float_clr2snd_array_29 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_142
  %float_clr2snd_array_30 = load i4* %float_clr2snd_array_29, align 1
  %float_clr2snd_array_31 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_141
  store i4 %float_clr2snd_array_30, i4* %float_clr2snd_array_31, align 1
  %float_clr2snd_array_32 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_142
  %float_clr2snd_array_33 = load i4* %float_clr2snd_array_32, align 2
  %float_clr2snd_array_34 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_141
  store i4 %float_clr2snd_array_33, i4* %float_clr2snd_array_34, align 2
  %float_clr2snd_array_35 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_142
  %float_clr2snd_array_36 = load i16* %float_clr2snd_array_35, align 4
  %float_clr2snd_array_37 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_141
  store i16 %float_clr2snd_array_36, i16* %float_clr2snd_array_37, align 4
  br label %4

._crit_edge1310:                                  ; preds = %2, %1, %0
  br label %.preheader1277

; <label>:6                                       ; preds = %.preheader1277
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i121P(i121* @stream_in_V, i32 1)
  br i1 %tmp, label %7, label %49

; <label>:7                                       ; preds = %6
  %tmp_1147 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_pkt_dest_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_1147, i32 64, i32 71)
  %tmp_242 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_1147, i32 72)
  br label %8

; <label>:8                                       ; preds = %9, %7
  %last_V = phi i1 [ %tmp_242, %7 ], [ %tmp_295, %9 ]
  br i1 %last_V, label %10, label %9

; <label>:9                                       ; preds = %8
  %tmp_2173 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_295 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_2173, i32 72)
  br label %8

; <label>:10                                      ; preds = %8
  %temp_diff_src_or_typ = zext i8 %recv_pkt_dest_V to i16
  %temp_diff_src_or_typ_1 = trunc i121 %tmp_1147 to i8
  %temp_diff_src_or_typ_2 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_1147, i32 8, i32 15)
  %temp_diff_src_or_typ_3 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_1147, i32 16, i32 47)
  %temp_diff_src_or_typ_4 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_1147, i32 48, i32 55)
  %temp_diff_src_or_typ_5 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_1147, i32 60, i32 63)
  %tmp_134 = icmp eq i8 %temp_diff_src_or_typ_2, 1
  %tmp_135 = icmp eq i8 %recv_pkt_dest_V, 0
  %or_cond = and i1 %tmp_134, %tmp_135
  br i1 %or_cond, label %11, label %._crit_edge1313

; <label>:11                                      ; preds = %10
  %tmp_137 = zext i8 %temp_diff_src_or_typ_1 to i32
  %tmp_138 = icmp eq i32 %tmp_137, %dest_read
  br i1 %tmp_138, label %12, label %._crit_edge1313

; <label>:12                                      ; preds = %11
  store i2 -2, i2* @state, align 1
  br label %.loopexit1269

._crit_edge1313:                                  ; preds = %11, %10
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_1147, i32 85, i32 88)
  %tmp_139 = icmp eq i4 %p_Result_s, 0
  br i1 %tmp_139, label %13, label %._crit_edge1316

; <label>:13                                      ; preds = %._crit_edge1313
  %p_Result_1 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_1147, i32 81, i32 84)
  %tmp_143 = icmp eq i4 %p_Result_1, 0
  br i1 %tmp_143, label %14, label %31

; <label>:14                                      ; preds = %13
  %tmp_147 = icmp eq i8 %temp_diff_src_or_typ_2, 0
  br i1 %tmp_147, label %.preheader1274.preheader, label %22

.preheader1274.preheader:                         ; preds = %14
  %int_req_num_load = load i32* @int_req_num, align 4
  br label %.preheader1274

.preheader1274:                                   ; preds = %._crit_edge1317, %.preheader1274.preheader
  %i1 = phi i31 [ %i_14, %._crit_edge1317 ], [ 0, %.preheader1274.preheader ]
  %i1_cast = zext i31 %i1 to i32
  %tmp_154 = icmp slt i32 %i1_cast, %int_req_num_load
  %i_14 = add i31 %i1, 1
  br i1 %tmp_154, label %15, label %21

; <label>:15                                      ; preds = %.preheader1274
  %tmp_157 = zext i31 %i1 to i64
  %int_request_array_SR = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_157
  %int_request_array_SR_1 = load i8* %int_request_array_SR, align 16
  %tmp_158 = icmp eq i8 %int_request_array_SR_1, %temp_diff_src_or_typ_1
  br i1 %tmp_158, label %16, label %._crit_edge1317

; <label>:16                                      ; preds = %15
  %int_request_array_DE = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_157
  %int_request_array_DE_1 = load i16* %int_request_array_DE, align 4
  %tmp_165 = icmp eq i16 %int_request_array_DE_1, %temp_diff_src_or_typ
  br i1 %tmp_165, label %17, label %._crit_edge1317

; <label>:17                                      ; preds = %16
  %int_request_array_PK = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_157
  %int_request_array_PK_1 = load i1* %int_request_array_PK, align 1
  br i1 %int_request_array_PK_1, label %._crit_edge1317, label %18

; <label>:18                                      ; preds = %17
  %int_request_array_MS = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_157
  %int_request_array_MS_1 = load i32* %int_request_array_MS, align 4
  %tmp_189 = icmp eq i32 %int_request_array_MS_1, %temp_diff_src_or_typ_3
  br i1 %tmp_189, label %19, label %._crit_edge1317

; <label>:19                                      ; preds = %18
  %int_request_array_TA = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_157
  %int_request_array_TA_1 = load i8* %int_request_array_TA, align 8
  %tmp_201 = icmp eq i8 %int_request_array_TA_1, %temp_diff_src_or_typ_4
  br i1 %tmp_201, label %20, label %._crit_edge1317

; <label>:20                                      ; preds = %19
  %int_request_array_DA = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_157
  %int_request_array_DA_1 = load i4* %int_request_array_DA, align 1
  %tmp_210 = icmp eq i4 %int_request_array_DA_1, %temp_diff_src_or_typ_5
  br i1 %tmp_210, label %.loopexit1269.loopexit42, label %._crit_edge1317

._crit_edge1317:                                  ; preds = %20, %19, %18, %17, %16, %15
  br label %.preheader1274

; <label>:21                                      ; preds = %.preheader1274
  %tmp_159 = sext i32 %int_req_num_load to i64
  %int_request_array_SR_2 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_159
  store i8 %temp_diff_src_or_typ_1, i8* %int_request_array_SR_2, align 16
  %int_request_array_PK_2 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_159
  store i1 false, i1* %int_request_array_PK_2, align 1
  %int_request_array_MS_2 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_159
  store i32 %temp_diff_src_or_typ_3, i32* %int_request_array_MS_2, align 4
  %int_request_array_TA_2 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_159
  store i8 %temp_diff_src_or_typ_4, i8* %int_request_array_TA_2, align 8
  %int_request_array_DA_2 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_159
  store i4 %temp_diff_src_or_typ_5, i4* %int_request_array_DA_2, align 1
  %int_request_array_DE_2 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_159
  store i16 %temp_diff_src_or_typ, i16* %int_request_array_DE_2, align 4
  %tmp_160 = add nsw i32 %int_req_num_load, 1
  store i32 %tmp_160, i32* @int_req_num, align 4
  br label %30

; <label>:22                                      ; preds = %14
  br i1 %tmp_134, label %.preheader1272.preheader, label %._crit_edge1323

.preheader1272.preheader:                         ; preds = %22
  %int_clr_num_load = load i32* @int_clr_num, align 4
  br label %.preheader1272

.preheader1272:                                   ; preds = %._crit_edge1324, %.preheader1272.preheader
  %i2 = phi i31 [ %i_1, %._crit_edge1324 ], [ 0, %.preheader1272.preheader ]
  %i2_cast = zext i31 %i2 to i32
  %tmp_161 = icmp slt i32 %i2_cast, %int_clr_num_load
  %i_1 = add i31 %i2, 1
  br i1 %tmp_161, label %23, label %29

; <label>:23                                      ; preds = %.preheader1272
  %tmp_166 = zext i31 %i2 to i64
  %int_clr2snd_array_SR = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_166
  %int_clr2snd_array_SR_1 = load i8* %int_clr2snd_array_SR, align 16
  %tmp_167 = icmp eq i8 %int_clr2snd_array_SR_1, %temp_diff_src_or_typ_1
  br i1 %tmp_167, label %24, label %._crit_edge1324

; <label>:24                                      ; preds = %23
  %int_clr2snd_array_DE = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_166
  %int_clr2snd_array_DE_1 = load i16* %int_clr2snd_array_DE, align 4
  %tmp_177 = icmp eq i16 %int_clr2snd_array_DE_1, %temp_diff_src_or_typ
  br i1 %tmp_177, label %25, label %._crit_edge1324

; <label>:25                                      ; preds = %24
  %int_clr2snd_array_PK = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_166
  %int_clr2snd_array_PK_1 = load i1* %int_clr2snd_array_PK, align 1
  br i1 %int_clr2snd_array_PK_1, label %26, label %._crit_edge1324

; <label>:26                                      ; preds = %25
  %int_clr2snd_array_MS = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_166
  %int_clr2snd_array_MS_1 = load i32* %int_clr2snd_array_MS, align 4
  %tmp_202 = icmp eq i32 %int_clr2snd_array_MS_1, %temp_diff_src_or_typ_3
  br i1 %tmp_202, label %27, label %._crit_edge1324

; <label>:27                                      ; preds = %26
  %int_clr2snd_array_TA = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_166
  %int_clr2snd_array_TA_1 = load i8* %int_clr2snd_array_TA, align 8
  %tmp_211 = icmp eq i8 %int_clr2snd_array_TA_1, %temp_diff_src_or_typ_4
  br i1 %tmp_211, label %28, label %._crit_edge1324

; <label>:28                                      ; preds = %27
  %int_clr2snd_array_DA = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_166
  %int_clr2snd_array_DA_1 = load i4* %int_clr2snd_array_DA, align 1
  %tmp_216 = icmp eq i4 %int_clr2snd_array_DA_1, %temp_diff_src_or_typ_5
  br i1 %tmp_216, label %.loopexit1269.loopexit41, label %._crit_edge1324

._crit_edge1324:                                  ; preds = %28, %27, %26, %25, %24, %23
  br label %.preheader1272

; <label>:29                                      ; preds = %.preheader1272
  %tmp_168 = sext i32 %int_clr_num_load to i64
  %int_clr2snd_array_SR_2 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_168
  store i8 %temp_diff_src_or_typ_1, i8* %int_clr2snd_array_SR_2, align 16
  %int_clr2snd_array_PK_2 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_168
  store i1 true, i1* %int_clr2snd_array_PK_2, align 1
  %int_clr2snd_array_MS_2 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_168
  store i32 %temp_diff_src_or_typ_3, i32* %int_clr2snd_array_MS_2, align 4
  %int_clr2snd_array_TA_2 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_168
  store i8 %temp_diff_src_or_typ_4, i8* %int_clr2snd_array_TA_2, align 8
  %int_clr2snd_array_DA_2 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_168
  store i4 %temp_diff_src_or_typ_5, i4* %int_clr2snd_array_DA_2, align 1
  %int_clr2snd_array_DE_2 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_168
  store i16 %temp_diff_src_or_typ, i16* %int_clr2snd_array_DE_2, align 4
  %tmp_169 = add nsw i32 %int_clr_num_load, 1
  store i32 %tmp_169, i32* @int_clr_num, align 4
  br label %._crit_edge1323

._crit_edge1323:                                  ; preds = %29, %22
  br label %30

; <label>:30                                      ; preds = %._crit_edge1323, %21
  br label %.loopexit1269

; <label>:31                                      ; preds = %13
  %tmp_148 = icmp eq i4 %p_Result_1, 1
  br i1 %tmp_148, label %32, label %._crit_edge1316

; <label>:32                                      ; preds = %31
  %tmp_152 = icmp eq i8 %temp_diff_src_or_typ_2, 0
  br i1 %tmp_152, label %.preheader1270.preheader, label %40

.preheader1270.preheader:                         ; preds = %32
  %float_req_num_load = load i32* @float_req_num, align 4
  br label %.preheader1270

.preheader1270:                                   ; preds = %._crit_edge1331, %.preheader1270.preheader
  %i4 = phi i31 [ %i_2, %._crit_edge1331 ], [ 0, %.preheader1270.preheader ]
  %i4_cast = zext i31 %i4 to i32
  %tmp_162 = icmp slt i32 %i4_cast, %float_req_num_load
  %i_2 = add i31 %i4, 1
  br i1 %tmp_162, label %33, label %39

; <label>:33                                      ; preds = %.preheader1270
  %tmp_170 = zext i31 %i4 to i64
  %float_request_array_s = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_170
  %float_request_array_8 = load i8* %float_request_array_s, align 16
  %tmp_171 = icmp eq i8 %float_request_array_8, %temp_diff_src_or_typ_1
  br i1 %tmp_171, label %34, label %._crit_edge1331

; <label>:34                                      ; preds = %33
  %float_request_array_9 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_170
  %float_request_array_10 = load i16* %float_request_array_9, align 4
  %tmp_178 = icmp eq i16 %float_request_array_10, %temp_diff_src_or_typ
  br i1 %tmp_178, label %35, label %._crit_edge1331

; <label>:35                                      ; preds = %34
  %float_request_array_11 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_170
  %float_request_array_12 = load i1* %float_request_array_11, align 1
  br i1 %float_request_array_12, label %._crit_edge1331, label %36

; <label>:36                                      ; preds = %35
  %float_request_array_13 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_170
  %float_request_array_14 = load i32* %float_request_array_13, align 4
  %tmp_203 = icmp eq i32 %float_request_array_14, %temp_diff_src_or_typ_3
  br i1 %tmp_203, label %37, label %._crit_edge1331

; <label>:37                                      ; preds = %36
  %float_request_array_15 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_170
  %float_request_array_16 = load i8* %float_request_array_15, align 8
  %tmp_212 = icmp eq i8 %float_request_array_16, %temp_diff_src_or_typ_4
  br i1 %tmp_212, label %38, label %._crit_edge1331

; <label>:38                                      ; preds = %37
  %float_request_array_17 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_170
  %float_request_array_18 = load i4* %float_request_array_17, align 1
  %tmp_217 = icmp eq i4 %float_request_array_18, %temp_diff_src_or_typ_5
  br i1 %tmp_217, label %.loopexit1269.loopexit40, label %._crit_edge1331

._crit_edge1331:                                  ; preds = %38, %37, %36, %35, %34, %33
  br label %.preheader1270

; <label>:39                                      ; preds = %.preheader1270
  %tmp_172 = sext i32 %float_req_num_load to i64
  %float_request_array_19 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_172
  store i8 %temp_diff_src_or_typ_1, i8* %float_request_array_19, align 16
  %float_request_array_20 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_172
  store i1 false, i1* %float_request_array_20, align 1
  %float_request_array_21 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_172
  store i32 %temp_diff_src_or_typ_3, i32* %float_request_array_21, align 4
  %float_request_array_22 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_172
  store i8 %temp_diff_src_or_typ_4, i8* %float_request_array_22, align 8
  %float_request_array_23 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_172
  store i4 %temp_diff_src_or_typ_5, i4* %float_request_array_23, align 1
  %float_request_array_24 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_172
  store i16 %temp_diff_src_or_typ, i16* %float_request_array_24, align 4
  %tmp_173 = add nsw i32 %float_req_num_load, 1
  store i32 %tmp_173, i32* @float_req_num, align 4
  br label %48

; <label>:40                                      ; preds = %32
  br i1 %tmp_134, label %.preheader1268.preheader, label %._crit_edge1337

.preheader1268.preheader:                         ; preds = %40
  br label %.preheader1268

.preheader1268:                                   ; preds = %.preheader1268.preheader, %._crit_edge1338
  %i5 = phi i31 [ %i_3, %._crit_edge1338 ], [ 0, %.preheader1268.preheader ]
  %i5_cast = zext i31 %i5 to i32
  %tmp_174 = icmp slt i32 %i5_cast, %float_clr_num_load
  %i_3 = add i31 %i5, 1
  br i1 %tmp_174, label %41, label %47

; <label>:41                                      ; preds = %.preheader1268
  %tmp_179 = zext i31 %i5 to i64
  %float_clr2snd_array_38 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_179
  %float_clr2snd_array_39 = load i8* %float_clr2snd_array_38, align 16
  %tmp_180 = icmp eq i8 %float_clr2snd_array_39, %temp_diff_src_or_typ_1
  br i1 %tmp_180, label %42, label %._crit_edge1338

; <label>:42                                      ; preds = %41
  %float_clr2snd_array_40 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_179
  %float_clr2snd_array_41 = load i16* %float_clr2snd_array_40, align 4
  %tmp_190 = icmp eq i16 %float_clr2snd_array_41, %temp_diff_src_or_typ
  br i1 %tmp_190, label %43, label %._crit_edge1338

; <label>:43                                      ; preds = %42
  %float_clr2snd_array_42 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_179
  %float_clr2snd_array_43 = load i1* %float_clr2snd_array_42, align 1
  br i1 %float_clr2snd_array_43, label %44, label %._crit_edge1338

; <label>:44                                      ; preds = %43
  %float_clr2snd_array_44 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_179
  %float_clr2snd_array_45 = load i32* %float_clr2snd_array_44, align 4
  %tmp_213 = icmp eq i32 %float_clr2snd_array_45, %temp_diff_src_or_typ_3
  br i1 %tmp_213, label %45, label %._crit_edge1338

; <label>:45                                      ; preds = %44
  %float_clr2snd_array_46 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_179
  %float_clr2snd_array_47 = load i8* %float_clr2snd_array_46, align 8
  %tmp_218 = icmp eq i8 %float_clr2snd_array_47, %temp_diff_src_or_typ_4
  br i1 %tmp_218, label %46, label %._crit_edge1338

; <label>:46                                      ; preds = %45
  %float_clr2snd_array_48 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_179
  %float_clr2snd_array_49 = load i4* %float_clr2snd_array_48, align 1
  %tmp_222 = icmp eq i4 %float_clr2snd_array_49, %temp_diff_src_or_typ_5
  br i1 %tmp_222, label %.loopexit1269.loopexit39, label %._crit_edge1338

._crit_edge1338:                                  ; preds = %46, %45, %44, %43, %42, %41
  br label %.preheader1268

; <label>:47                                      ; preds = %.preheader1268
  %tmp_181 = sext i32 %float_clr_num_load to i64
  %float_clr2snd_array_50 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_181
  store i8 %temp_diff_src_or_typ_1, i8* %float_clr2snd_array_50, align 16
  %float_clr2snd_array_51 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_181
  store i1 true, i1* %float_clr2snd_array_51, align 1
  %float_clr2snd_array_52 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_181
  store i32 %temp_diff_src_or_typ_3, i32* %float_clr2snd_array_52, align 4
  %float_clr2snd_array_53 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_181
  store i8 %temp_diff_src_or_typ_4, i8* %float_clr2snd_array_53, align 8
  %float_clr2snd_array_54 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_181
  store i4 %temp_diff_src_or_typ_5, i4* %float_clr2snd_array_54, align 1
  %float_clr2snd_array_55 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_181
  store i16 %temp_diff_src_or_typ, i16* %float_clr2snd_array_55, align 4
  %tmp_182 = add nsw i32 %float_clr_num_load, 1
  store i32 %tmp_182, i32* @float_clr_num, align 4
  br label %._crit_edge1337

._crit_edge1337:                                  ; preds = %47, %40
  br label %48

; <label>:48                                      ; preds = %._crit_edge1337, %39
  br label %.loopexit1269

._crit_edge1316:                                  ; preds = %31, %._crit_edge1313
  br label %.loopexit1269

; <label>:49                                      ; preds = %6
  %tmp_129 = add i64 %t_V, 1
  %tmp_130 = icmp eq i64 %tmp_129, 314465410
  br i1 %tmp_130, label %50, label %.loopexit1269

; <label>:50                                      ; preds = %49
  store i2 0, i2* @state, align 1
  br label %.loopexit1269

.preheader1267:                                   ; preds = %108, %.preheader1267.preheader
  %to_send_data = phi i64 [ undef, %.preheader1267.preheader ], [ %to_send_data_0_3, %108 ]
  %i6 = phi i32 [ 1, %.preheader1267.preheader ], [ %i_17, %108 ]
  %seq_num = phi i32 [ 0, %.preheader1267.preheader ], [ %temp_diff_src_or_typ_15, %108 ]
  %for_finished = phi i1 [ false, %.preheader1267.preheader ], [ true, %108 ]
  %error_is_seen = phi i1 [ false, %.preheader1267.preheader ], [ %error_is_seen_s, %108 ]
  br label %51

; <label>:51                                      ; preds = %101, %.preheader1267
  %tmp_data_V_1 = phi i64 [ %to_send_data, %.preheader1267 ], [ %to_send_data_0_2, %101 ]
  %i6_1 = phi i32 [ %i6, %.preheader1267 ], [ %i_16, %101 ]
  %old_seq_num_1 = phi i32 [ %seq_num, %.preheader1267 ], [ %seq_num_3, %101 ]
  %error_is_seen_1 = phi i1 [ %error_is_seen, %.preheader1267 ], [ %error_is_seen_2, %101 ]
  %tmp_127 = icmp sgt i32 %i6_1, 109
  br i1 %tmp_127, label %.loopexit1227.loopexit, label %52

; <label>:52                                      ; preds = %51
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str) nounwind
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i121P(i121* @stream_in_V, i32 1)
  br i1 %tmp_1, label %53, label %._crit_edge1345

; <label>:53                                      ; preds = %52
  %tmp_3 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_data_dest_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3, i32 64, i32 71)
  %tmp_293 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_3, i32 72)
  %recv_data_id_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3, i32 73, i32 80)
  br label %54

; <label>:54                                      ; preds = %55, %53
  %last_V_1 = phi i1 [ %tmp_293, %53 ], [ %tmp_297, %55 ]
  br i1 %last_V_1, label %56, label %55

; <label>:55                                      ; preds = %54
  %tmp_4 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_297 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_4, i32 72)
  br label %54

; <label>:56                                      ; preds = %54
  %temp_diff_src_or_typ_6 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_7 = trunc i121 %tmp_3 to i8
  %temp_diff_src_or_typ_8 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3, i32 8, i32 15)
  %temp_diff_src_or_typ_9 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_3, i32 16, i32 47)
  %temp_diff_src_or_typ_10 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3, i32 48, i32 55)
  %temp_diff_src_or_typ_11 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_3, i32 60, i32 63)
  %tmp_140 = icmp eq i8 %temp_diff_src_or_typ_8, 4
  br i1 %tmp_140, label %57, label %._crit_edge1346

; <label>:57                                      ; preds = %56
  %tmp_144 = zext i8 %recv_data_id_V to i32
  %tmp_145 = icmp eq i32 %tmp_144, %dest_read
  br i1 %tmp_145, label %58, label %._crit_edge1346

; <label>:58                                      ; preds = %57
  %lhs_V_cast = zext i32 %temp_diff_src_or_typ_9 to i33
  %r_V = mul i33 %lhs_V_cast, 372
  %i = call i32 @_ssdm_op_PartSelect.i32.i33.i32.i32(i33 %r_V, i32 1, i32 32)
  store i32 %old_seq_num_1, i32* %old_seq_num
  br label %101

._crit_edge1346:                                  ; preds = %57, %56
  %tmp_146 = icmp eq i8 %temp_diff_src_or_typ_8, 5
  br i1 %tmp_146, label %59, label %._crit_edge1348

; <label>:59                                      ; preds = %._crit_edge1346
  %tmp_149 = zext i8 %recv_data_id_V to i32
  %tmp_150 = icmp eq i32 %tmp_149, %dest_read
  br i1 %tmp_150, label %._crit_edge1349, label %._crit_edge1348

._crit_edge1348:                                  ; preds = %59, %._crit_edge1346
  %p_Result_2 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_3, i32 85, i32 88)
  %tmp_151 = icmp eq i4 %p_Result_2, 0
  br i1 %tmp_151, label %60, label %._crit_edge1351

; <label>:60                                      ; preds = %._crit_edge1348
  %p_Result_3 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_3, i32 81, i32 84)
  %tmp_153 = icmp eq i4 %p_Result_3, 0
  br i1 %tmp_153, label %61, label %76

; <label>:61                                      ; preds = %60
  %tmp_155 = icmp eq i8 %temp_diff_src_or_typ_8, 0
  br i1 %tmp_155, label %.preheader1257.preheader, label %68

.preheader1257.preheader:                         ; preds = %61
  %int_req_num_load_1 = load i32* @int_req_num, align 4
  br label %.preheader1257

.preheader1257:                                   ; preds = %._crit_edge1352, %.preheader1257.preheader
  %i10 = phi i31 [ %i_4, %._crit_edge1352 ], [ 0, %.preheader1257.preheader ]
  %i10_cast = zext i31 %i10 to i32
  %tmp_175 = icmp slt i32 %i10_cast, %int_req_num_load_1
  %i_4 = add i31 %i10, 1
  br i1 %tmp_175, label %62, label %.loopexit1226

; <label>:62                                      ; preds = %.preheader1257
  %tmp_183 = zext i31 %i10 to i64
  %int_request_array_SR_3 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_183
  %int_request_array_SR_4 = load i8* %int_request_array_SR_3, align 16
  %tmp_184 = icmp eq i8 %int_request_array_SR_4, %temp_diff_src_or_typ_7
  br i1 %tmp_184, label %63, label %._crit_edge1352

; <label>:63                                      ; preds = %62
  %int_request_array_DE_3 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_183
  %int_request_array_DE_4 = load i16* %int_request_array_DE_3, align 4
  %tmp_191 = icmp eq i16 %int_request_array_DE_4, %temp_diff_src_or_typ_6
  br i1 %tmp_191, label %64, label %._crit_edge1352

; <label>:64                                      ; preds = %63
  %int_request_array_PK_3 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_183
  %int_request_array_PK_4 = load i1* %int_request_array_PK_3, align 1
  br i1 %int_request_array_PK_4, label %._crit_edge1352, label %65

; <label>:65                                      ; preds = %64
  %int_request_array_MS_3 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_183
  %int_request_array_MS_4 = load i32* %int_request_array_MS_3, align 4
  %tmp_214 = icmp eq i32 %int_request_array_MS_4, %temp_diff_src_or_typ_9
  br i1 %tmp_214, label %66, label %._crit_edge1352

; <label>:66                                      ; preds = %65
  %int_request_array_TA_3 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_183
  %int_request_array_TA_4 = load i8* %int_request_array_TA_3, align 8
  %tmp_219 = icmp eq i8 %int_request_array_TA_4, %temp_diff_src_or_typ_10
  br i1 %tmp_219, label %67, label %._crit_edge1352

; <label>:67                                      ; preds = %66
  %int_request_array_DA_3 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_183
  %int_request_array_DA_4 = load i4* %int_request_array_DA_3, align 1
  %tmp_223 = icmp eq i4 %int_request_array_DA_4, %temp_diff_src_or_typ_11
  br i1 %tmp_223, label %.critedge.loopexit, label %._crit_edge1352

._crit_edge1352:                                  ; preds = %67, %66, %65, %64, %63, %62
  br label %.preheader1257

.loopexit1226:                                    ; preds = %.preheader1257
  %tmp_185 = sext i32 %int_req_num_load_1 to i64
  %int_request_array_SR_5 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_185
  store i8 %temp_diff_src_or_typ_7, i8* %int_request_array_SR_5, align 16
  %int_request_array_PK_5 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_185
  store i1 false, i1* %int_request_array_PK_5, align 1
  %int_request_array_MS_5 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_185
  store i32 %temp_diff_src_or_typ_9, i32* %int_request_array_MS_5, align 4
  %int_request_array_TA_5 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_185
  store i8 %temp_diff_src_or_typ_10, i8* %int_request_array_TA_5, align 8
  %int_request_array_DA_5 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_185
  store i4 %temp_diff_src_or_typ_11, i4* %int_request_array_DA_5, align 1
  %int_request_array_DE_5 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_185
  store i16 %temp_diff_src_or_typ_6, i16* %int_request_array_DE_5, align 4
  %tmp_186 = add nsw i32 %int_req_num_load_1, 1
  store i32 %tmp_186, i32* @int_req_num, align 4
  br label %.critedge

.critedge.loopexit:                               ; preds = %67
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.loopexit1226
  br label %75

; <label>:68                                      ; preds = %61
  %tmp_163 = icmp eq i8 %temp_diff_src_or_typ_8, 1
  br i1 %tmp_163, label %.preheader1256.preheader, label %._crit_edge1358

.preheader1256.preheader:                         ; preds = %68
  %int_clr_num_load_1 = load i32* @int_clr_num, align 4
  br label %.preheader1256

.preheader1256:                                   ; preds = %._crit_edge1359, %.preheader1256.preheader
  %i11 = phi i31 [ %i_5, %._crit_edge1359 ], [ 0, %.preheader1256.preheader ]
  %i11_cast = zext i31 %i11 to i32
  %tmp_187 = icmp slt i32 %i11_cast, %int_clr_num_load_1
  %i_5 = add i31 %i11, 1
  br i1 %tmp_187, label %69, label %.loopexit1225

; <label>:69                                      ; preds = %.preheader1256
  %tmp_192 = zext i31 %i11 to i64
  %int_clr2snd_array_SR_3 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_192
  %int_clr2snd_array_SR_4 = load i8* %int_clr2snd_array_SR_3, align 16
  %tmp_193 = icmp eq i8 %int_clr2snd_array_SR_4, %temp_diff_src_or_typ_7
  br i1 %tmp_193, label %70, label %._crit_edge1359

; <label>:70                                      ; preds = %69
  %int_clr2snd_array_DE_3 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_192
  %int_clr2snd_array_DE_4 = load i16* %int_clr2snd_array_DE_3, align 4
  %tmp_204 = icmp eq i16 %int_clr2snd_array_DE_4, %temp_diff_src_or_typ_6
  br i1 %tmp_204, label %71, label %._crit_edge1359

; <label>:71                                      ; preds = %70
  %int_clr2snd_array_PK_3 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_192
  %int_clr2snd_array_PK_4 = load i1* %int_clr2snd_array_PK_3, align 1
  br i1 %int_clr2snd_array_PK_4, label %72, label %._crit_edge1359

; <label>:72                                      ; preds = %71
  %int_clr2snd_array_MS_3 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_192
  %int_clr2snd_array_MS_4 = load i32* %int_clr2snd_array_MS_3, align 4
  %tmp_220 = icmp eq i32 %int_clr2snd_array_MS_4, %temp_diff_src_or_typ_9
  br i1 %tmp_220, label %73, label %._crit_edge1359

; <label>:73                                      ; preds = %72
  %int_clr2snd_array_TA_3 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_192
  %int_clr2snd_array_TA_4 = load i8* %int_clr2snd_array_TA_3, align 8
  %tmp_224 = icmp eq i8 %int_clr2snd_array_TA_4, %temp_diff_src_or_typ_10
  br i1 %tmp_224, label %74, label %._crit_edge1359

; <label>:74                                      ; preds = %73
  %int_clr2snd_array_DA_3 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_192
  %int_clr2snd_array_DA_4 = load i4* %int_clr2snd_array_DA_3, align 1
  %tmp_227 = icmp eq i4 %int_clr2snd_array_DA_4, %temp_diff_src_or_typ_11
  br i1 %tmp_227, label %.critedge1243.loopexit, label %._crit_edge1359

._crit_edge1359:                                  ; preds = %74, %73, %72, %71, %70, %69
  br label %.preheader1256

.loopexit1225:                                    ; preds = %.preheader1256
  %tmp_194 = sext i32 %int_clr_num_load_1 to i64
  %int_clr2snd_array_SR_5 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_194
  store i8 %temp_diff_src_or_typ_7, i8* %int_clr2snd_array_SR_5, align 16
  %int_clr2snd_array_PK_5 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_194
  store i1 true, i1* %int_clr2snd_array_PK_5, align 1
  %int_clr2snd_array_MS_5 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_194
  store i32 %temp_diff_src_or_typ_9, i32* %int_clr2snd_array_MS_5, align 4
  %int_clr2snd_array_TA_5 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_194
  store i8 %temp_diff_src_or_typ_10, i8* %int_clr2snd_array_TA_5, align 8
  %int_clr2snd_array_DA_5 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_194
  store i4 %temp_diff_src_or_typ_11, i4* %int_clr2snd_array_DA_5, align 1
  %int_clr2snd_array_DE_5 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_194
  store i16 %temp_diff_src_or_typ_6, i16* %int_clr2snd_array_DE_5, align 4
  %tmp_195 = add nsw i32 %int_clr_num_load_1, 1
  store i32 %tmp_195, i32* @int_clr_num, align 4
  br label %.critedge1243

.critedge1243.loopexit:                           ; preds = %74
  br label %.critedge1243

.critedge1243:                                    ; preds = %.critedge1243.loopexit, %.loopexit1225
  br label %._crit_edge1358

._crit_edge1358:                                  ; preds = %.critedge1243, %68
  br label %75

; <label>:75                                      ; preds = %._crit_edge1358, %.critedge
  br label %92

; <label>:76                                      ; preds = %60
  %tmp_156 = icmp eq i4 %p_Result_3, 1
  br i1 %tmp_156, label %77, label %._crit_edge1365

; <label>:77                                      ; preds = %76
  %tmp_164 = icmp eq i8 %temp_diff_src_or_typ_8, 0
  br i1 %tmp_164, label %.preheader1255.preheader, label %84

.preheader1255.preheader:                         ; preds = %77
  %float_req_num_load_1 = load i32* @float_req_num, align 4
  br label %.preheader1255

.preheader1255:                                   ; preds = %._crit_edge1366, %.preheader1255.preheader
  %i12 = phi i31 [ %i_6, %._crit_edge1366 ], [ 0, %.preheader1255.preheader ]
  %i12_cast = zext i31 %i12 to i32
  %tmp_188 = icmp slt i32 %i12_cast, %float_req_num_load_1
  %i_6 = add i31 %i12, 1
  br i1 %tmp_188, label %78, label %.loopexit1224

; <label>:78                                      ; preds = %.preheader1255
  %tmp_196 = zext i31 %i12 to i64
  %float_request_array_25 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_196
  %float_request_array_26 = load i8* %float_request_array_25, align 16
  %tmp_197 = icmp eq i8 %float_request_array_26, %temp_diff_src_or_typ_7
  br i1 %tmp_197, label %79, label %._crit_edge1366

; <label>:79                                      ; preds = %78
  %float_request_array_27 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_196
  %float_request_array_28 = load i16* %float_request_array_27, align 4
  %tmp_205 = icmp eq i16 %float_request_array_28, %temp_diff_src_or_typ_6
  br i1 %tmp_205, label %80, label %._crit_edge1366

; <label>:80                                      ; preds = %79
  %float_request_array_29 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_196
  %float_request_array_30 = load i1* %float_request_array_29, align 1
  br i1 %float_request_array_30, label %._crit_edge1366, label %81

; <label>:81                                      ; preds = %80
  %float_request_array_31 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_196
  %float_request_array_32 = load i32* %float_request_array_31, align 4
  %tmp_221 = icmp eq i32 %float_request_array_32, %temp_diff_src_or_typ_9
  br i1 %tmp_221, label %82, label %._crit_edge1366

; <label>:82                                      ; preds = %81
  %float_request_array_33 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_196
  %float_request_array_34 = load i8* %float_request_array_33, align 8
  %tmp_225 = icmp eq i8 %float_request_array_34, %temp_diff_src_or_typ_10
  br i1 %tmp_225, label %83, label %._crit_edge1366

; <label>:83                                      ; preds = %82
  %float_request_array_35 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_196
  %float_request_array_36 = load i4* %float_request_array_35, align 1
  %tmp_228 = icmp eq i4 %float_request_array_36, %temp_diff_src_or_typ_11
  br i1 %tmp_228, label %.critedge1244.loopexit, label %._crit_edge1366

._crit_edge1366:                                  ; preds = %83, %82, %81, %80, %79, %78
  br label %.preheader1255

.loopexit1224:                                    ; preds = %.preheader1255
  %tmp_198 = sext i32 %float_req_num_load_1 to i64
  %float_request_array_37 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_198
  store i8 %temp_diff_src_or_typ_7, i8* %float_request_array_37, align 16
  %float_request_array_38 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_198
  store i1 false, i1* %float_request_array_38, align 1
  %float_request_array_39 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_198
  store i32 %temp_diff_src_or_typ_9, i32* %float_request_array_39, align 4
  %float_request_array_40 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_198
  store i8 %temp_diff_src_or_typ_10, i8* %float_request_array_40, align 8
  %float_request_array_41 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_198
  store i4 %temp_diff_src_or_typ_11, i4* %float_request_array_41, align 1
  %float_request_array_42 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_198
  store i16 %temp_diff_src_or_typ_6, i16* %float_request_array_42, align 4
  %tmp_199 = add nsw i32 %float_req_num_load_1, 1
  store i32 %tmp_199, i32* @float_req_num, align 4
  br label %.critedge1244

.critedge1244.loopexit:                           ; preds = %83
  br label %.critedge1244

.critedge1244:                                    ; preds = %.critedge1244.loopexit, %.loopexit1224
  br label %91

; <label>:84                                      ; preds = %77
  %tmp_176 = icmp eq i8 %temp_diff_src_or_typ_8, 1
  br i1 %tmp_176, label %.preheader1254.preheader, label %._crit_edge1372

.preheader1254.preheader:                         ; preds = %84
  %float_clr_num_load_1 = load i32* @float_clr_num, align 4
  br label %.preheader1254

.preheader1254:                                   ; preds = %._crit_edge1373, %.preheader1254.preheader
  %i13 = phi i31 [ %i_7, %._crit_edge1373 ], [ 0, %.preheader1254.preheader ]
  %i13_cast = zext i31 %i13 to i32
  %tmp_200 = icmp slt i32 %i13_cast, %float_clr_num_load_1
  %i_7 = add i31 %i13, 1
  br i1 %tmp_200, label %85, label %.loopexit1223

; <label>:85                                      ; preds = %.preheader1254
  %tmp_206 = zext i31 %i13 to i64
  %float_clr2snd_array_56 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_206
  %float_clr2snd_array_57 = load i8* %float_clr2snd_array_56, align 16
  %tmp_207 = icmp eq i8 %float_clr2snd_array_57, %temp_diff_src_or_typ_7
  br i1 %tmp_207, label %86, label %._crit_edge1373

; <label>:86                                      ; preds = %85
  %float_clr2snd_array_58 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_206
  %float_clr2snd_array_59 = load i16* %float_clr2snd_array_58, align 4
  %tmp_215 = icmp eq i16 %float_clr2snd_array_59, %temp_diff_src_or_typ_6
  br i1 %tmp_215, label %87, label %._crit_edge1373

; <label>:87                                      ; preds = %86
  %float_clr2snd_array_60 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_206
  %float_clr2snd_array_61 = load i1* %float_clr2snd_array_60, align 1
  br i1 %float_clr2snd_array_61, label %88, label %._crit_edge1373

; <label>:88                                      ; preds = %87
  %float_clr2snd_array_62 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_206
  %float_clr2snd_array_63 = load i32* %float_clr2snd_array_62, align 4
  %tmp_226 = icmp eq i32 %float_clr2snd_array_63, %temp_diff_src_or_typ_9
  br i1 %tmp_226, label %89, label %._crit_edge1373

; <label>:89                                      ; preds = %88
  %float_clr2snd_array_64 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_206
  %float_clr2snd_array_65 = load i8* %float_clr2snd_array_64, align 8
  %tmp_229 = icmp eq i8 %float_clr2snd_array_65, %temp_diff_src_or_typ_10
  br i1 %tmp_229, label %90, label %._crit_edge1373

; <label>:90                                      ; preds = %89
  %float_clr2snd_array_66 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_206
  %float_clr2snd_array_67 = load i4* %float_clr2snd_array_66, align 1
  %tmp_230 = icmp eq i4 %float_clr2snd_array_67, %temp_diff_src_or_typ_11
  br i1 %tmp_230, label %.critedge1245.loopexit, label %._crit_edge1373

._crit_edge1373:                                  ; preds = %90, %89, %88, %87, %86, %85
  br label %.preheader1254

.loopexit1223:                                    ; preds = %.preheader1254
  %tmp_208 = sext i32 %float_clr_num_load_1 to i64
  %float_clr2snd_array_68 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_208
  store i8 %temp_diff_src_or_typ_7, i8* %float_clr2snd_array_68, align 16
  %float_clr2snd_array_69 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_208
  store i1 true, i1* %float_clr2snd_array_69, align 1
  %float_clr2snd_array_70 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_208
  store i32 %temp_diff_src_or_typ_9, i32* %float_clr2snd_array_70, align 4
  %float_clr2snd_array_71 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_208
  store i8 %temp_diff_src_or_typ_10, i8* %float_clr2snd_array_71, align 8
  %float_clr2snd_array_72 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_208
  store i4 %temp_diff_src_or_typ_11, i4* %float_clr2snd_array_72, align 1
  %float_clr2snd_array_73 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_208
  store i16 %temp_diff_src_or_typ_6, i16* %float_clr2snd_array_73, align 4
  %tmp_209 = add nsw i32 %float_clr_num_load_1, 1
  store i32 %tmp_209, i32* @float_clr_num, align 4
  br label %.critedge1245

.critedge1245.loopexit:                           ; preds = %90
  br label %.critedge1245

.critedge1245:                                    ; preds = %.critedge1245.loopexit, %.loopexit1223
  br label %._crit_edge1372

._crit_edge1372:                                  ; preds = %.critedge1245, %84
  br label %91

; <label>:91                                      ; preds = %._crit_edge1372, %.critedge1244
  br label %._crit_edge1365

._crit_edge1365:                                  ; preds = %91, %76
  br label %92

; <label>:92                                      ; preds = %._crit_edge1365, %75
  br label %._crit_edge1351

._crit_edge1351:                                  ; preds = %92, %._crit_edge1348
  br label %._crit_edge1349

._crit_edge1349:                                  ; preds = %._crit_edge1351, %59
  br label %._crit_edge1345

._crit_edge1345:                                  ; preds = %._crit_edge1349, %52
  br i1 %error_is_seen_1, label %93, label %94

; <label>:93                                      ; preds = %._crit_edge1345
  %old_seq_num_load = load i32* %old_seq_num
  %tmp_dest_V_1_load = load i8* %tmp_dest_V_1
  %tmp_5 = call i121 @_ssdm_op_BitConcatenate.i121.i32.i17.i8.i64(i32 %old_seq_num_load, i17 8705, i8 %tmp_dest_V_1_load, i64 %tmp_data_V_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_5)
  %i_15 = add nsw i32 %i6_1, -1
  br label %101

; <label>:94                                      ; preds = %._crit_edge1345
  %tmp_298 = shl i32 %i6_1, 1
  %tmp_231 = add i32 -2, %tmp_298
  %tmp_233 = icmp slt i32 %tmp_231, 216
  br i1 %tmp_233, label %95, label %.loopexit1227.loopexit

; <label>:95                                      ; preds = %94
  %tmp_234 = sext i32 %tmp_231 to i64
  %buf_addr = getelementptr [216 x float]* %buf_r, i64 0, i64 %tmp_234
  %buf_load = load float* %buf_addr, align 4
  %temp1 = bitcast float %buf_load to i32
  %tmp_235 = add i32 %tmp_298, -1
  %tmp_236 = icmp slt i32 %tmp_235, 216
  br i1 %tmp_236, label %97, label %96

; <label>:96                                      ; preds = %95
  %tmp_dest_V_1_load_1 = load i8* %tmp_dest_V_1
  %p_Result_s_213 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 0, i32 %temp1)
  %tmp_6 = call i121 @_ssdm_op_BitConcatenate.i121.i32.i17.i8.i32.i32(i32 %old_seq_num_1, i17 8705, i8 %tmp_dest_V_1_load_1, i32 0, i32 %temp1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_6)
  br label %.loopexit1227

; <label>:97                                      ; preds = %95
  %tmp_237 = sext i32 %tmp_235 to i64
  %buf_addr_1 = getelementptr [216 x float]* %buf_r, i64 0, i64 %tmp_237
  %buf_load_1 = load float* %buf_addr_1, align 4
  %temp2 = bitcast float %buf_load_1 to i32
  %p_Result_142 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %temp2, i32 %temp1)
  %tmp_238 = icmp slt i32 %tmp_298, 216
  br i1 %tmp_238, label %98, label %99

; <label>:98                                      ; preds = %97
  %tmp_239 = srem i32 %tmp_298, 372
  %tmp_299 = trunc i32 %tmp_239 to i10
  %tmp_240 = icmp eq i10 %tmp_299, 0
  br label %99

; <label>:99                                      ; preds = %98, %97
  %tmp_last_V = phi i1 [ true, %97 ], [ %tmp_240, %98 ]
  %seq_inc_3 = phi i1 [ false, %97 ], [ %tmp_240, %98 ]
  %test_load = load i1* %test
  %p_not = icmp eq i32 %old_seq_num_1, 2
  %demorgan = and i1 %test_load, %p_not
  br i1 %demorgan, label %._crit_edge1380.pre, label %100

; <label>:100                                     ; preds = %99
  %tmp_7_2 = call i121 @_ssdm_op_BitConcatenate.i121.i32.i16.i1.i8.i32.i32(i32 %old_seq_num_1, i16 4352, i1 %tmp_last_V, i8 %to_send_data_dest_V, i32 %temp2, i32 %temp1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_7_2)
  %not_tmp_s = icmp ne i32 %old_seq_num_1, 3
  %p_test_1 = and i1 %test_load, %not_tmp_s
  store i1 %p_test_1, i1* %test
  br label %._crit_edge1380

._crit_edge1380.pre:                              ; preds = %99
  store i1 true, i1* %test
  br label %._crit_edge1380

._crit_edge1380:                                  ; preds = %._crit_edge1380.pre, %100
  %seq_num_2 = add nsw i32 %old_seq_num_1, 1
  %p_seq_num_1 = select i1 %seq_inc_3, i32 %seq_num_2, i32 %old_seq_num_1
  store i8 %to_send_data_dest_V, i8* %tmp_dest_V_1
  br label %101

; <label>:101                                     ; preds = %._crit_edge1380, %93, %58
  %to_send_data_0_2 = phi i64 [ %tmp_data_V_1, %58 ], [ %tmp_data_V_1, %93 ], [ %p_Result_142, %._crit_edge1380 ]
  %i6_2 = phi i32 [ %i, %58 ], [ %i_15, %93 ], [ %i6_1, %._crit_edge1380 ]
  %seq_num_3 = phi i32 [ %temp_diff_src_or_typ_9, %58 ], [ %old_seq_num_1, %93 ], [ %p_seq_num_1, %._crit_edge1380 ]
  %error_is_seen_2 = phi i1 [ true, %58 ], [ false, %93 ], [ false, %._crit_edge1380 ]
  %i_16 = add nsw i32 %i6_2, 1
  br label %51

.loopexit1227.loopexit:                           ; preds = %94, %51
  %error_is_seen_ph = phi i1 [ %error_is_seen_1, %51 ], [ false, %94 ]
  %for_finished_1_ph = phi i1 [ %for_finished, %51 ], [ true, %94 ]
  br label %.loopexit1227

.loopexit1227:                                    ; preds = %.loopexit1227.loopexit, %96
  %error_is_seen_s = phi i1 [ false, %96 ], [ %error_is_seen_ph, %.loopexit1227.loopexit ]
  %to_send_data_0_3 = phi i64 [ %p_Result_s_213, %96 ], [ %tmp_data_V_1, %.loopexit1227.loopexit ]
  %for_finished_1 = phi i1 [ %for_finished, %96 ], [ %for_finished_1_ph, %.loopexit1227.loopexit ]
  br label %102

; <label>:102                                     ; preds = %._crit_edge1385, %.loopexit1227
  br i1 %for_finished_1, label %103, label %.loopexit1269.loopexit

; <label>:103                                     ; preds = %102
  %tmp_9 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_data_dest_V_1 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_9, i32 64, i32 71)
  %tmp_300 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_9, i32 72)
  %recv_data_id_V_1 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_9, i32 73, i32 80)
  br label %104

; <label>:104                                     ; preds = %105, %103
  %last_V_2 = phi i1 [ %tmp_300, %103 ], [ %tmp_302, %105 ]
  br i1 %last_V_2, label %106, label %105

; <label>:105                                     ; preds = %104
  %tmp_10 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_302 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_10, i32 72)
  br label %104

; <label>:106                                     ; preds = %104
  %temp_diff_src_or_typ_12 = zext i8 %recv_data_dest_V_1 to i16
  %temp_diff_src_or_typ_13 = trunc i121 %tmp_9 to i8
  %temp_diff_src_or_typ_14 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_9, i32 8, i32 15)
  %temp_diff_src_or_typ_15 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_9, i32 16, i32 47)
  %temp_diff_src_or_typ_16 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_9, i32 48, i32 55)
  %temp_diff_src_or_typ_17 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_9, i32 60, i32 63)
  %tmp_241 = icmp eq i8 %temp_diff_src_or_typ_14, 4
  br i1 %tmp_241, label %107, label %._crit_edge1381

; <label>:107                                     ; preds = %106
  %tmp_243 = zext i8 %recv_data_id_V_1 to i32
  %tmp_244 = icmp eq i32 %tmp_243, %dest_read
  br i1 %tmp_244, label %108, label %._crit_edge1381

; <label>:108                                     ; preds = %107
  %lhs_V_1_cast = zext i32 %temp_diff_src_or_typ_15 to i33
  %r_V_1 = mul i33 %lhs_V_1_cast, 372
  %tmp_246 = call i32 @_ssdm_op_PartSelect.i32.i33.i32.i32(i33 %r_V_1, i32 1, i32 32)
  %i_17 = or i32 %tmp_246, 1
  br label %.preheader1267

._crit_edge1381:                                  ; preds = %107, %106
  %tmp_245 = icmp eq i8 %temp_diff_src_or_typ_14, 5
  br i1 %tmp_245, label %109, label %._crit_edge1383

; <label>:109                                     ; preds = %._crit_edge1381
  %tmp_247 = zext i8 %recv_data_id_V_1 to i32
  %tmp_248 = icmp eq i32 %tmp_247, %dest_read
  br i1 %tmp_248, label %110, label %._crit_edge1383

; <label>:110                                     ; preds = %109
  store i2 0, i2* @state, align 1
  br label %.loopexit1269

._crit_edge1383:                                  ; preds = %109, %._crit_edge1381
  %p_Result_6 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_9, i32 85, i32 88)
  %tmp_249 = icmp eq i4 %p_Result_6, 0
  br i1 %tmp_249, label %111, label %._crit_edge1385

; <label>:111                                     ; preds = %._crit_edge1383
  %p_Result_7 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_9, i32 81, i32 84)
  %tmp_250 = icmp eq i4 %p_Result_7, 0
  br i1 %tmp_250, label %112, label %127

; <label>:112                                     ; preds = %111
  %tmp_251 = icmp eq i8 %temp_diff_src_or_typ_14, 0
  br i1 %tmp_251, label %.preheader1252.preheader, label %119

.preheader1252.preheader:                         ; preds = %112
  %int_req_num_load_2 = load i32* @int_req_num, align 4
  br label %.preheader1252

.preheader1252:                                   ; preds = %._crit_edge1386, %.preheader1252.preheader
  %i18 = phi i31 [ %i_22, %._crit_edge1386 ], [ 0, %.preheader1252.preheader ]
  %i25_cast = zext i31 %i18 to i32
  %tmp_255 = icmp slt i32 %i25_cast, %int_req_num_load_2
  %i_22 = add i31 %i18, 1
  br i1 %tmp_255, label %113, label %.loopexit1222

; <label>:113                                     ; preds = %.preheader1252
  %tmp_257 = zext i31 %i18 to i64
  %int_request_array_SR_6 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_257
  %int_request_array_SR_7 = load i8* %int_request_array_SR_6, align 16
  %tmp_258 = icmp eq i8 %int_request_array_SR_7, %temp_diff_src_or_typ_13
  br i1 %tmp_258, label %114, label %._crit_edge1386

; <label>:114                                     ; preds = %113
  %int_request_array_DE_6 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_257
  %int_request_array_DE_7 = load i16* %int_request_array_DE_6, align 4
  %tmp_263 = icmp eq i16 %int_request_array_DE_7, %temp_diff_src_or_typ_12
  br i1 %tmp_263, label %115, label %._crit_edge1386

; <label>:115                                     ; preds = %114
  %int_request_array_PK_6 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_257
  %int_request_array_PK_7 = load i1* %int_request_array_PK_6, align 1
  br i1 %int_request_array_PK_7, label %._crit_edge1386, label %116

; <label>:116                                     ; preds = %115
  %int_request_array_MS_6 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_257
  %int_request_array_MS_7 = load i32* %int_request_array_MS_6, align 4
  %tmp_279 = icmp eq i32 %int_request_array_MS_7, %temp_diff_src_or_typ_15
  br i1 %tmp_279, label %117, label %._crit_edge1386

; <label>:117                                     ; preds = %116
  %int_request_array_TA_6 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_257
  %int_request_array_TA_7 = load i8* %int_request_array_TA_6, align 8
  %tmp_281 = icmp eq i8 %int_request_array_TA_7, %temp_diff_src_or_typ_16
  br i1 %tmp_281, label %118, label %._crit_edge1386

; <label>:118                                     ; preds = %117
  %int_request_array_DA_6 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_257
  %int_request_array_DA_7 = load i4* %int_request_array_DA_6, align 1
  %tmp_284 = icmp eq i4 %int_request_array_DA_7, %temp_diff_src_or_typ_17
  br i1 %tmp_284, label %.critedge1246.loopexit, label %._crit_edge1386

._crit_edge1386:                                  ; preds = %118, %117, %116, %115, %114, %113
  br label %.preheader1252

.loopexit1222:                                    ; preds = %.preheader1252
  %tmp_259 = sext i32 %int_req_num_load_2 to i64
  %int_request_array_SR_8 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_259
  store i8 %temp_diff_src_or_typ_13, i8* %int_request_array_SR_8, align 16
  %int_request_array_PK_8 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_259
  store i1 false, i1* %int_request_array_PK_8, align 1
  %int_request_array_MS_8 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_259
  store i32 %temp_diff_src_or_typ_15, i32* %int_request_array_MS_8, align 4
  %int_request_array_TA_8 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_259
  store i8 %temp_diff_src_or_typ_16, i8* %int_request_array_TA_8, align 8
  %int_request_array_DA_8 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_259
  store i4 %temp_diff_src_or_typ_17, i4* %int_request_array_DA_8, align 1
  %int_request_array_DE_8 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_259
  store i16 %temp_diff_src_or_typ_12, i16* %int_request_array_DE_8, align 4
  %tmp_260 = add nsw i32 %int_req_num_load_2, 1
  store i32 %tmp_260, i32* @int_req_num, align 4
  br label %.critedge1246

.critedge1246.loopexit:                           ; preds = %118
  br label %.critedge1246

.critedge1246:                                    ; preds = %.critedge1246.loopexit, %.loopexit1222
  br label %126

; <label>:119                                     ; preds = %112
  %tmp_253 = icmp eq i8 %temp_diff_src_or_typ_14, 1
  br i1 %tmp_253, label %.preheader1251.preheader, label %._crit_edge1392

.preheader1251.preheader:                         ; preds = %119
  %int_clr_num_load_2 = load i32* @int_clr_num, align 4
  br label %.preheader1251

.preheader1251:                                   ; preds = %._crit_edge1393, %.preheader1251.preheader
  %i19 = phi i31 [ %i_8, %._crit_edge1393 ], [ 0, %.preheader1251.preheader ]
  %i26_cast = zext i31 %i19 to i32
  %tmp_261 = icmp slt i32 %i26_cast, %int_clr_num_load_2
  %i_8 = add i31 %i19, 1
  br i1 %tmp_261, label %120, label %.loopexit1221

; <label>:120                                     ; preds = %.preheader1251
  %tmp_264 = zext i31 %i19 to i64
  %int_clr2snd_array_SR_6 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_264
  %int_clr2snd_array_SR_7 = load i8* %int_clr2snd_array_SR_6, align 16
  %tmp_265 = icmp eq i8 %int_clr2snd_array_SR_7, %temp_diff_src_or_typ_13
  br i1 %tmp_265, label %121, label %._crit_edge1393

; <label>:121                                     ; preds = %120
  %int_clr2snd_array_DE_6 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_264
  %int_clr2snd_array_DE_7 = load i16* %int_clr2snd_array_DE_6, align 4
  %tmp_273 = icmp eq i16 %int_clr2snd_array_DE_7, %temp_diff_src_or_typ_12
  br i1 %tmp_273, label %122, label %._crit_edge1393

; <label>:122                                     ; preds = %121
  %int_clr2snd_array_PK_6 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_264
  %int_clr2snd_array_PK_7 = load i1* %int_clr2snd_array_PK_6, align 1
  br i1 %int_clr2snd_array_PK_7, label %123, label %._crit_edge1393

; <label>:123                                     ; preds = %122
  %int_clr2snd_array_MS_6 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_264
  %int_clr2snd_array_MS_7 = load i32* %int_clr2snd_array_MS_6, align 4
  %tmp_282 = icmp eq i32 %int_clr2snd_array_MS_7, %temp_diff_src_or_typ_15
  br i1 %tmp_282, label %124, label %._crit_edge1393

; <label>:124                                     ; preds = %123
  %int_clr2snd_array_TA_6 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_264
  %int_clr2snd_array_TA_7 = load i8* %int_clr2snd_array_TA_6, align 8
  %tmp_285 = icmp eq i8 %int_clr2snd_array_TA_7, %temp_diff_src_or_typ_16
  br i1 %tmp_285, label %125, label %._crit_edge1393

; <label>:125                                     ; preds = %124
  %int_clr2snd_array_DA_6 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_264
  %int_clr2snd_array_DA_7 = load i4* %int_clr2snd_array_DA_6, align 1
  %tmp_288 = icmp eq i4 %int_clr2snd_array_DA_7, %temp_diff_src_or_typ_17
  br i1 %tmp_288, label %.critedge1247.loopexit, label %._crit_edge1393

._crit_edge1393:                                  ; preds = %125, %124, %123, %122, %121, %120
  br label %.preheader1251

.loopexit1221:                                    ; preds = %.preheader1251
  %tmp_266 = sext i32 %int_clr_num_load_2 to i64
  %int_clr2snd_array_SR_8 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_266
  store i8 %temp_diff_src_or_typ_13, i8* %int_clr2snd_array_SR_8, align 16
  %int_clr2snd_array_PK_8 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_266
  store i1 true, i1* %int_clr2snd_array_PK_8, align 1
  %int_clr2snd_array_MS_8 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_266
  store i32 %temp_diff_src_or_typ_15, i32* %int_clr2snd_array_MS_8, align 4
  %int_clr2snd_array_TA_8 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_266
  store i8 %temp_diff_src_or_typ_16, i8* %int_clr2snd_array_TA_8, align 8
  %int_clr2snd_array_DA_8 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_266
  store i4 %temp_diff_src_or_typ_17, i4* %int_clr2snd_array_DA_8, align 1
  %int_clr2snd_array_DE_8 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_266
  store i16 %temp_diff_src_or_typ_12, i16* %int_clr2snd_array_DE_8, align 4
  %tmp_267 = add nsw i32 %int_clr_num_load_2, 1
  store i32 %tmp_267, i32* @int_clr_num, align 4
  br label %.critedge1247

.critedge1247.loopexit:                           ; preds = %125
  br label %.critedge1247

.critedge1247:                                    ; preds = %.critedge1247.loopexit, %.loopexit1221
  br label %._crit_edge1392

._crit_edge1392:                                  ; preds = %.critedge1247, %119
  br label %126

; <label>:126                                     ; preds = %._crit_edge1392, %.critedge1246
  br label %143

; <label>:127                                     ; preds = %111
  %tmp_252 = icmp eq i4 %p_Result_7, 1
  br i1 %tmp_252, label %128, label %._crit_edge1399

; <label>:128                                     ; preds = %127
  %tmp_254 = icmp eq i8 %temp_diff_src_or_typ_14, 0
  br i1 %tmp_254, label %.preheader1250.preheader, label %135

.preheader1250.preheader:                         ; preds = %128
  %float_req_num_load_2 = load i32* @float_req_num, align 4
  br label %.preheader1250

.preheader1250:                                   ; preds = %._crit_edge1400, %.preheader1250.preheader
  %i20 = phi i31 [ %i_10, %._crit_edge1400 ], [ 0, %.preheader1250.preheader ]
  %i27_cast = zext i31 %i20 to i32
  %tmp_262 = icmp slt i32 %i27_cast, %float_req_num_load_2
  %i_10 = add i31 %i20, 1
  br i1 %tmp_262, label %129, label %.loopexit1220

; <label>:129                                     ; preds = %.preheader1250
  %tmp_268 = zext i31 %i20 to i64
  %float_request_array_43 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_268
  %float_request_array_44 = load i8* %float_request_array_43, align 16
  %tmp_269 = icmp eq i8 %float_request_array_44, %temp_diff_src_or_typ_13
  br i1 %tmp_269, label %130, label %._crit_edge1400

; <label>:130                                     ; preds = %129
  %float_request_array_45 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_268
  %float_request_array_46 = load i16* %float_request_array_45, align 4
  %tmp_274 = icmp eq i16 %float_request_array_46, %temp_diff_src_or_typ_12
  br i1 %tmp_274, label %131, label %._crit_edge1400

; <label>:131                                     ; preds = %130
  %float_request_array_47 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_268
  %float_request_array_48 = load i1* %float_request_array_47, align 1
  br i1 %float_request_array_48, label %._crit_edge1400, label %132

; <label>:132                                     ; preds = %131
  %float_request_array_49 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_268
  %float_request_array_50 = load i32* %float_request_array_49, align 4
  %tmp_283 = icmp eq i32 %float_request_array_50, %temp_diff_src_or_typ_15
  br i1 %tmp_283, label %133, label %._crit_edge1400

; <label>:133                                     ; preds = %132
  %float_request_array_51 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_268
  %float_request_array_52 = load i8* %float_request_array_51, align 8
  %tmp_286 = icmp eq i8 %float_request_array_52, %temp_diff_src_or_typ_16
  br i1 %tmp_286, label %134, label %._crit_edge1400

; <label>:134                                     ; preds = %133
  %float_request_array_53 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_268
  %float_request_array_54 = load i4* %float_request_array_53, align 1
  %tmp_289 = icmp eq i4 %float_request_array_54, %temp_diff_src_or_typ_17
  br i1 %tmp_289, label %.critedge1248.loopexit, label %._crit_edge1400

._crit_edge1400:                                  ; preds = %134, %133, %132, %131, %130, %129
  br label %.preheader1250

.loopexit1220:                                    ; preds = %.preheader1250
  %tmp_270 = sext i32 %float_req_num_load_2 to i64
  %float_request_array_55 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_270
  store i8 %temp_diff_src_or_typ_13, i8* %float_request_array_55, align 16
  %float_request_array_56 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_270
  store i1 false, i1* %float_request_array_56, align 1
  %float_request_array_57 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_270
  store i32 %temp_diff_src_or_typ_15, i32* %float_request_array_57, align 4
  %float_request_array_58 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_270
  store i8 %temp_diff_src_or_typ_16, i8* %float_request_array_58, align 8
  %float_request_array_59 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_270
  store i4 %temp_diff_src_or_typ_17, i4* %float_request_array_59, align 1
  %float_request_array_60 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_270
  store i16 %temp_diff_src_or_typ_12, i16* %float_request_array_60, align 4
  %tmp_271 = add nsw i32 %float_req_num_load_2, 1
  store i32 %tmp_271, i32* @float_req_num, align 4
  br label %.critedge1248

.critedge1248.loopexit:                           ; preds = %134
  br label %.critedge1248

.critedge1248:                                    ; preds = %.critedge1248.loopexit, %.loopexit1220
  br label %142

; <label>:135                                     ; preds = %128
  %tmp_256 = icmp eq i8 %temp_diff_src_or_typ_14, 1
  br i1 %tmp_256, label %.preheader.preheader, label %._crit_edge1406

.preheader.preheader:                             ; preds = %135
  %float_clr_num_load_2 = load i32* @float_clr_num, align 4
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge1407, %.preheader.preheader
  %i21 = phi i31 [ %i_11, %._crit_edge1407 ], [ 0, %.preheader.preheader ]
  %i28_cast = zext i31 %i21 to i32
  %tmp_272 = icmp slt i32 %i28_cast, %float_clr_num_load_2
  %i_11 = add i31 %i21, 1
  br i1 %tmp_272, label %136, label %.loopexit

; <label>:136                                     ; preds = %.preheader
  %tmp_275 = zext i31 %i21 to i64
  %float_clr2snd_array_74 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_275
  %float_clr2snd_array_75 = load i8* %float_clr2snd_array_74, align 16
  %tmp_276 = icmp eq i8 %float_clr2snd_array_75, %temp_diff_src_or_typ_13
  br i1 %tmp_276, label %137, label %._crit_edge1407

; <label>:137                                     ; preds = %136
  %float_clr2snd_array_76 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_275
  %float_clr2snd_array_77 = load i16* %float_clr2snd_array_76, align 4
  %tmp_280 = icmp eq i16 %float_clr2snd_array_77, %temp_diff_src_or_typ_12
  br i1 %tmp_280, label %138, label %._crit_edge1407

; <label>:138                                     ; preds = %137
  %float_clr2snd_array_78 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_275
  %float_clr2snd_array_79 = load i1* %float_clr2snd_array_78, align 1
  br i1 %float_clr2snd_array_79, label %139, label %._crit_edge1407

; <label>:139                                     ; preds = %138
  %float_clr2snd_array_80 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_275
  %float_clr2snd_array_81 = load i32* %float_clr2snd_array_80, align 4
  %tmp_287 = icmp eq i32 %float_clr2snd_array_81, %temp_diff_src_or_typ_15
  br i1 %tmp_287, label %140, label %._crit_edge1407

; <label>:140                                     ; preds = %139
  %float_clr2snd_array_82 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_275
  %float_clr2snd_array_83 = load i8* %float_clr2snd_array_82, align 8
  %tmp_290 = icmp eq i8 %float_clr2snd_array_83, %temp_diff_src_or_typ_16
  br i1 %tmp_290, label %141, label %._crit_edge1407

; <label>:141                                     ; preds = %140
  %float_clr2snd_array_84 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_275
  %float_clr2snd_array_85 = load i4* %float_clr2snd_array_84, align 1
  %tmp_291 = icmp eq i4 %float_clr2snd_array_85, %temp_diff_src_or_typ_17
  br i1 %tmp_291, label %.critedge1249.loopexit, label %._crit_edge1407

._crit_edge1407:                                  ; preds = %141, %140, %139, %138, %137, %136
  br label %.preheader

.loopexit:                                        ; preds = %.preheader
  %tmp_277 = sext i32 %float_clr_num_load_2 to i64
  %float_clr2snd_array_86 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_277
  store i8 %temp_diff_src_or_typ_13, i8* %float_clr2snd_array_86, align 16
  %float_clr2snd_array_87 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_277
  store i1 true, i1* %float_clr2snd_array_87, align 1
  %float_clr2snd_array_88 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_277
  store i32 %temp_diff_src_or_typ_15, i32* %float_clr2snd_array_88, align 4
  %float_clr2snd_array_89 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_277
  store i8 %temp_diff_src_or_typ_16, i8* %float_clr2snd_array_89, align 8
  %float_clr2snd_array_90 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_277
  store i4 %temp_diff_src_or_typ_17, i4* %float_clr2snd_array_90, align 1
  %float_clr2snd_array_91 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_277
  store i16 %temp_diff_src_or_typ_12, i16* %float_clr2snd_array_91, align 4
  %tmp_278 = add nsw i32 %float_clr_num_load_2, 1
  store i32 %tmp_278, i32* @float_clr_num, align 4
  br label %.critedge1249

.critedge1249.loopexit:                           ; preds = %141
  br label %.critedge1249

.critedge1249:                                    ; preds = %.critedge1249.loopexit, %.loopexit
  br label %._crit_edge1406

._crit_edge1406:                                  ; preds = %.critedge1249, %135
  br label %142

; <label>:142                                     ; preds = %._crit_edge1406, %.critedge1248
  br label %._crit_edge1399

._crit_edge1399:                                  ; preds = %142, %127
  br label %143

; <label>:143                                     ; preds = %._crit_edge1399, %126
  br label %._crit_edge1385

._crit_edge1385:                                  ; preds = %143, %._crit_edge1383
  br label %102

.loopexit1269.loopexit:                           ; preds = %102
  br label %.loopexit1269

.loopexit1269.loopexit39:                         ; preds = %46
  br label %.loopexit1269

.loopexit1269.loopexit40:                         ; preds = %38
  br label %.loopexit1269

.loopexit1269.loopexit41:                         ; preds = %28
  br label %.loopexit1269

.loopexit1269.loopexit42:                         ; preds = %20
  br label %.loopexit1269

.loopexit1269.loopexit43:                         ; preds = %4
  br label %.loopexit1269

.loopexit1269:                                    ; preds = %.loopexit1269.loopexit43, %.loopexit1269.loopexit42, %.loopexit1269.loopexit41, %.loopexit1269.loopexit40, %.loopexit1269.loopexit39, %.loopexit1269.loopexit, %110, %50, %49, %._crit_edge1316, %48, %30, %12, %._crit_edge1309, %codeRepl
  %time_V_1_flag_2 = phi i1 [ false, %110 ], [ true, %12 ], [ false, %30 ], [ false, %48 ], [ true, %50 ], [ false, %codeRepl ], [ true, %._crit_edge1309 ], [ false, %._crit_edge1316 ], [ true, %49 ], [ false, %.loopexit1269.loopexit ], [ false, %.loopexit1269.loopexit39 ], [ false, %.loopexit1269.loopexit40 ], [ false, %.loopexit1269.loopexit41 ], [ false, %.loopexit1269.loopexit42 ], [ true, %.loopexit1269.loopexit43 ]
  %time_V_1_new_2 = phi i64 [ undef, %110 ], [ 0, %12 ], [ undef, %30 ], [ undef, %48 ], [ 0, %50 ], [ undef, %codeRepl ], [ 0, %._crit_edge1309 ], [ undef, %._crit_edge1316 ], [ %tmp_129, %49 ], [ undef, %.loopexit1269.loopexit ], [ undef, %.loopexit1269.loopexit39 ], [ undef, %.loopexit1269.loopexit40 ], [ undef, %.loopexit1269.loopexit41 ], [ undef, %.loopexit1269.loopexit42 ], [ 0, %.loopexit1269.loopexit43 ]
  br i1 %time_V_1_flag_2, label %mergeST, label %.loopexit1269.new

mergeST:                                          ; preds = %.loopexit1269
  store i64 %time_V_1_new_2, i64* @time_V_1, align 8
  br label %.loopexit1269.new

.loopexit1269.new:                                ; preds = %mergeST, %.loopexit1269
  ret void
}

define internal fastcc void @MPI_Recv([216 x float]* nocapture %buf_r, i32 %source) {
codeRepl:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str215, i32 0, i32 0, [1 x i8]* @p_str216, [1 x i8]* @p_str217, [1 x i8]* @p_str218, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str219, [1 x i8]* @p_str220)
  %empty_214 = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str221, i32 0, i32 0, [1 x i8]* @p_str222, [1 x i8]* @p_str223, [1 x i8]* @p_str224, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str225, [1 x i8]* @p_str226)
  %source_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %source)
  %state_1_load = load i2* @state_1, align 1
  %pkt_out_dest_V = load i8* @envlp_SRC_V, align 1
  %clr2snd_SRC_V = load i8* @envlp_DEST_V, align 1
  switch i2 %state_1_load, label %.loopexit [
    i2 0, label %.preheader950.preheader
    i2 1, label %12
    i2 -2, label %.preheader290.preheader
  ]

.preheader290.preheader:                          ; preds = %codeRepl
  %last_V = alloca i1
  %error_MSG_SIZE_V = alloca i32
  %p_1 = alloca i1
  store i1 false, i1* %p_1
  store i32 0, i32* %error_MSG_SIZE_V
  br label %.preheader290

.preheader950.preheader:                          ; preds = %codeRepl
  %float_req_num_load = load i32* @float_req_num, align 4
  br label %.preheader950

.preheader950:                                    ; preds = %._crit_edge991, %.preheader950.preheader
  %j = phi i31 [ %i_23, %._crit_edge991 ], [ 0, %.preheader950.preheader ]
  %j_cast = zext i31 %j to i32
  %tmp_s = icmp slt i32 %j_cast, %float_req_num_load
  %i_23 = add i31 %j, 1
  br i1 %tmp_s, label %0, label %6

; <label>:0                                       ; preds = %.preheader950
  %tmp_293 = zext i31 %j to i64
  %float_request_array_s = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_293
  %float_request_array_61 = load i1* %float_request_array_s, align 1
  br i1 %float_request_array_61, label %._crit_edge991, label %1

; <label>:1                                       ; preds = %0
  %float_request_array_62 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_293
  %float_request_array_63 = load i16* %float_request_array_62, align 4
  %tmp_296 = icmp eq i16 %float_request_array_63, 0
  br i1 %tmp_296, label %2, label %._crit_edge991

; <label>:2                                       ; preds = %1
  %float_request_array_64 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_293
  %float_request_array_65 = load i8* %float_request_array_64, align 16
  %tmp_297 = zext i8 %float_request_array_65 to i32
  %tmp_298 = icmp eq i32 %tmp_297, %source_read
  br i1 %tmp_298, label %3, label %._crit_edge991

; <label>:3                                       ; preds = %2
  store i8 %float_request_array_65, i8* @envlp_SRC_V, align 4
  %float_request_array_66 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_293
  %float_request_array_67 = load i32* %float_request_array_66, align 4
  store i32 %float_request_array_67, i32* @envlp_MSG_SIZE_V, align 4
  store i8 0, i8* @envlp_DEST_V, align 1
  store i2 1, i2* @state_1, align 1
  %tmp_302 = add nsw i32 %float_req_num_load, -1
  store i32 %tmp_302, i32* @float_req_num, align 4
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j4 = phi i32 [ %j_cast, %3 ], [ %j_3, %5 ]
  %tmp_306 = icmp slt i32 %j4, %tmp_302
  br i1 %tmp_306, label %5, label %.loopexit.loopexit48

; <label>:5                                       ; preds = %4
  %tmp_309 = sext i32 %j4 to i64
  %j_3 = add nsw i32 %j4, 1
  %tmp_310 = sext i32 %j_3 to i64
  %float_request_array_68 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_310
  %float_request_array_69 = load i8* %float_request_array_68, align 16
  %float_request_array_70 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_309
  store i8 %float_request_array_69, i8* %float_request_array_70, align 16
  %float_request_array_71 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_310
  %float_request_array_72 = load i1* %float_request_array_71, align 1
  %float_request_array_73 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_309
  store i1 %float_request_array_72, i1* %float_request_array_73, align 1
  %float_request_array_74 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_310
  %float_request_array_75 = load i32* %float_request_array_74, align 4
  %float_request_array_76 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_309
  store i32 %float_request_array_75, i32* %float_request_array_76, align 4
  %float_request_array_77 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_310
  %float_request_array_78 = load i8* %float_request_array_77, align 8
  %float_request_array_79 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_309
  store i8 %float_request_array_78, i8* %float_request_array_79, align 8
  %float_request_array_80 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_310
  %float_request_array_81 = load i4* %float_request_array_80, align 1
  %float_request_array_82 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_309
  store i4 %float_request_array_81, i4* %float_request_array_82, align 1
  %float_request_array_83 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_310
  %float_request_array_84 = load i4* %float_request_array_83, align 2
  %float_request_array_85 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_309
  store i4 %float_request_array_84, i4* %float_request_array_85, align 2
  %float_request_array_86 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_310
  %float_request_array_87 = load i16* %float_request_array_86, align 4
  %float_request_array_88 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_309
  store i16 %float_request_array_87, i16* %float_request_array_88, align 4
  br label %4

._crit_edge991:                                   ; preds = %2, %1, %0
  br label %.preheader950

; <label>:6                                       ; preds = %.preheader950
  %tmp107 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_pkt_dest_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp107, i32 64, i32 71)
  %tmp_360 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp107, i32 72)
  br label %7

; <label>:7                                       ; preds = %8, %6
  %last_V_3 = phi i1 [ %tmp_360, %6 ], [ %tmp_363, %8 ]
  br i1 %last_V_3, label %9, label %8

; <label>:8                                       ; preds = %7
  %tmp_1 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_363 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_1, i32 72)
  br label %7

; <label>:9                                       ; preds = %7
  %tmp_362 = trunc i121 %tmp107 to i8
  %envlp_PKT_TYPE_V_wri = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp107, i32 8, i32 15)
  %envlp_MSG_SIZE_V_wri = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp107, i32 16, i32 47)
  store i8 %tmp_362, i8* @envlp_SRC_V, align 1
  store i32 %envlp_MSG_SIZE_V_wri, i32* @envlp_MSG_SIZE_V, align 4
  store i8 %recv_pkt_dest_V, i8* @envlp_DEST_V, align 1
  %tmp_3 = or i8 %envlp_PKT_TYPE_V_wri, %recv_pkt_dest_V
  %tmp_11 = icmp eq i8 %tmp_3, 0
  br i1 %tmp_11, label %10, label %._crit_edge994

; <label>:10                                      ; preds = %9
  %tmp_303 = zext i8 %tmp_362 to i32
  %tmp_304 = icmp eq i32 %tmp_303, %source_read
  br i1 %tmp_304, label %11, label %._crit_edge994

; <label>:11                                      ; preds = %10
  store i2 1, i2* @state_1, align 1
  br label %._crit_edge994

._crit_edge994:                                   ; preds = %11, %10, %9
  br label %.loopexit

; <label>:12                                      ; preds = %codeRepl
  %clr2snd_MSG_SIZE_V = load i32* @envlp_MSG_SIZE_V, align 4
  %clr2snd_error_load = load i1* @clr2snd_error, align 1
  br i1 %clr2snd_error_load, label %13, label %14

; <label>:13                                      ; preds = %12
  store i1 false, i1* @clr2snd_error, align 1
  br label %15

; <label>:14                                      ; preds = %12
  %tmp_2 = call i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i8.i32.i8.i8(i49 513, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i32 %clr2snd_MSG_SIZE_V, i8 1, i8 %clr2snd_SRC_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_2)
  br label %15

; <label>:15                                      ; preds = %14, %13
  store i2 -2, i2* @state_1, align 1
  store i64 0, i64* @time_V, align 8
  br label %.loopexit

.preheader290:                                    ; preds = %.preheader290.preheader, %.loopexit934
  %i3 = phi i32 [ %i_26, %.loopexit934 ], [ 1, %.preheader290.preheader ]
  %last_V_load = load i1* %last_V
  %tmp_292 = icmp sgt i32 %i3, 109
  br i1 %tmp_292, label %.preheader.preheader, label %16

.preheader.preheader:                             ; preds = %.preheader290
  br label %.preheader

; <label>:16                                      ; preds = %.preheader290
  %tmp_361 = shl i32 %i3, 1
  %tmp_294 = add i32 -2, %tmp_361
  %tmp_295 = icmp slt i32 %tmp_294, 216
  br i1 %tmp_295, label %21, label %17

; <label>:17                                      ; preds = %16
  store i2 0, i2* @state_1, align 1
  store i64 0, i64* @time_V, align 8
  br label %18

; <label>:18                                      ; preds = %19, %17
  %p_0610_1 = phi i1 [ %last_V_load, %17 ], [ %last_V_5, %19 ]
  br i1 %p_0610_1, label %20, label %19

; <label>:19                                      ; preds = %18
  %tmp_3152 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %last_V_5 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_3152, i32 72)
  br label %18

; <label>:20                                      ; preds = %18
  %error_MSG_SIZE_V_loa = load i32* %error_MSG_SIZE_V
  %tmp_4 = call i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i8.i32.i8.i8(i49 513, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i32 %error_MSG_SIZE_V_loa, i8 5, i8 %clr2snd_SRC_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_4)
  br label %.loopexit

; <label>:21                                      ; preds = %16
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i121P(i121* @stream_in_V, i32 1)
  br i1 %tmp, label %22, label %67

; <label>:22                                      ; preds = %21
  %tmp_5 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_data_data_V = trunc i121 %tmp_5 to i64
  %recv_data_dest_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_5, i32 64, i32 71)
  %recv_data_last_V = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_5, i32 72)
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_5, i32 85, i32 88)
  %tmp_299 = icmp eq i4 %p_Result_s, 1
  br i1 %tmp_299, label %23, label %._crit_edge997

; <label>:23                                      ; preds = %22
  store i64 0, i64* @time_V, align 8
  br label %._crit_edge997

._crit_edge997:                                   ; preds = %23, %22
  %error_MSG_SIZE_V_loa_1 = load i32* %error_MSG_SIZE_V
  %p_Result_8 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_5, i32 89, i32 120)
  %p_Result_38_cast = zext i32 %p_Result_8 to i33
  %tmp_345_cast = sext i32 %error_MSG_SIZE_V_loa_1 to i33
  %tmp_305 = icmp ne i33 %p_Result_38_cast, %tmp_345_cast
  %demorgan = and i1 %tmp_299, %tmp_305
  br i1 %demorgan, label %24, label %._crit_edge998

; <label>:24                                      ; preds = %._crit_edge997
  %p_1_load = load i1* %p_1
  br i1 %p_1_load, label %._crit_edge1000, label %25

; <label>:25                                      ; preds = %24
  %error_MSG_SIZE_V_loa_2 = load i32* %error_MSG_SIZE_V
  %tmp_6 = call i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i8.i32.i8.i8(i49 513, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i32 %error_MSG_SIZE_V_loa_2, i8 4, i8 %clr2snd_SRC_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_6)
  store i1 true, i1* %p_1
  br label %._crit_edge1000

._crit_edge1000:                                  ; preds = %25, %24
  %i = add nsw i32 %i3, -1
  br label %.loopexit934

._crit_edge998:                                   ; preds = %._crit_edge997
  %tmp_307 = srem i32 %tmp_361, 372
  %tmp_368 = trunc i32 %tmp_307 to i10
  %tmp_308 = icmp eq i10 %tmp_368, 0
  br i1 %tmp_308, label %.preheader935.preheader, label %.loopexit936_ifconv

.preheader935.preheader:                          ; preds = %._crit_edge998
  br label %.preheader935

.preheader935:                                    ; preds = %.preheader935.preheader, %26
  %p_0610_2 = phi i1 [ %last_V_7, %26 ], [ %recv_data_last_V, %.preheader935.preheader ]
  br i1 %p_0610_2, label %.loopexit936_ifconv.loopexit, label %26

; <label>:26                                      ; preds = %.preheader935
  %tmp_7 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %last_V_7 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_7, i32 72)
  br label %.preheader935

.loopexit936_ifconv.loopexit:                     ; preds = %.preheader935
  br label %.loopexit936_ifconv

.loopexit936_ifconv:                              ; preds = %.loopexit936_ifconv.loopexit, %._crit_edge998
  %p_0610_3 = phi i1 [ %recv_data_last_V, %._crit_edge998 ], [ true, %.loopexit936_ifconv.loopexit ]
  %error_MSG_SIZE_V_loa_3 = load i32* %error_MSG_SIZE_V
  %seq_num = add nsw i32 %error_MSG_SIZE_V_loa_3, 1
  %p_s = select i1 %tmp_299, i32 %seq_num, i32 %error_MSG_SIZE_V_loa_3
  %seq_num_2 = select i1 %p_0610_3, i32 %p_s, i32 %error_MSG_SIZE_V_loa_3
  br i1 %tmp_299, label %.preheader933.preheader, label %29

.preheader933.preheader:                          ; preds = %.loopexit936_ifconv
  br label %.preheader933

.preheader933:                                    ; preds = %.preheader933.preheader, %._crit_edge1001
  %j7 = phi i2 [ %j_4, %._crit_edge1001 ], [ 0, %.preheader933.preheader ]
  %j7_cast2 = zext i2 %j7 to i32
  %exitcond = icmp eq i2 %j7, -2
  %empty_215 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_4 = add i2 %j7, 1
  br i1 %exitcond, label %.loopexit934.loopexit, label %27

; <label>:27                                      ; preds = %.preheader933
  %tmp_312 = add i32 %j7_cast2, %tmp_294
  %tmp_313 = icmp slt i32 %tmp_312, 216
  br i1 %tmp_313, label %28, label %._crit_edge1001

; <label>:28                                      ; preds = %27
  %tmp_370 = trunc i2 %j7 to i1
  %Lo_assign = call i6 @_ssdm_op_BitConcatenate.i6.i1.i5(i1 %tmp_370, i5 0)
  %Hi_assign = or i6 %Lo_assign, 31
  %tmp_371 = icmp ugt i6 %Lo_assign, %Hi_assign
  %tmp_372 = zext i6 %Lo_assign to i7
  %tmp_373 = zext i6 %Hi_assign to i7
  %tmp_374 = call i64 @_ssdm_op_PartSelect.i64.i121.i32.i32(i121 %tmp_5, i32 63, i32 0)
  %tmp_375 = sub i7 %tmp_372, %tmp_373
  %tmp_376 = xor i7 %tmp_372, 63
  %tmp_377 = sub i7 %tmp_373, %tmp_372
  %tmp_378 = select i1 %tmp_371, i7 %tmp_375, i7 %tmp_377
  %tmp_379 = select i1 %tmp_371, i64 %tmp_374, i64 %recv_data_data_V
  %tmp_380 = select i1 %tmp_371, i7 %tmp_376, i7 %tmp_372
  %tmp_381 = sub i7 63, %tmp_378
  %tmp_382 = zext i7 %tmp_380 to i64
  %tmp_383 = zext i7 %tmp_381 to i64
  %tmp_384 = lshr i64 %tmp_379, %tmp_382
  %tmp_385 = lshr i64 -1, %tmp_383
  %p_Result_s_216 = and i64 %tmp_384, %tmp_385
  %temp = trunc i64 %p_Result_s_216 to i32
  %tmp_314 = bitcast i32 %temp to float
  %tmp_315 = sext i32 %tmp_312 to i64
  %buf_addr = getelementptr [216 x float]* %buf_r, i64 0, i64 %tmp_315
  store float %tmp_314, float* %buf_addr, align 4
  br label %._crit_edge1001

._crit_edge1001:                                  ; preds = %28, %27
  br label %.preheader933

; <label>:29                                      ; preds = %.loopexit936_ifconv
  %tmp_311 = icmp eq i4 %p_Result_s, 0
  br i1 %tmp_311, label %.preheader932.preheader, label %.loopexit934.pre40

.preheader932.preheader:                          ; preds = %29
  br label %.preheader932

.preheader932:                                    ; preds = %.preheader932.preheader, %30
  %p_0610_4 = phi i1 [ %last_V_8, %30 ], [ %p_0610_3, %.preheader932.preheader ]
  br i1 %p_0610_4, label %31, label %30

; <label>:30                                      ; preds = %.preheader932
  %tmp_8 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %last_V_8 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_8, i32 72)
  br label %.preheader932

; <label>:31                                      ; preds = %.preheader932
  %p_Result_2 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_5, i32 81, i32 84)
  %tmp_316 = icmp eq i4 %p_Result_2, 0
  br i1 %tmp_316, label %32, label %49

; <label>:32                                      ; preds = %31
  %temp_diff_src_or_typ = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_18 = trunc i121 %tmp_5 to i8
  %temp_diff_src_or_typ_19 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_5, i32 8, i32 15)
  %temp_diff_src_or_typ_20 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_5, i32 16, i32 47)
  %temp_diff_src_or_typ_21 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_5, i32 48, i32 55)
  %temp_diff_src_or_typ_22 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_5, i32 60, i32 63)
  %tmp_317 = icmp eq i8 %temp_diff_src_or_typ_19, 0
  br i1 %tmp_317, label %.preheader930.preheader, label %40

.preheader930.preheader:                          ; preds = %32
  %int_req_num_load = load i32* @int_req_num, align 4
  br label %.preheader930

.preheader930:                                    ; preds = %._crit_edge1002, %.preheader930.preheader
  %i8 = phi i31 [ %i_25, %._crit_edge1002 ], [ 0, %.preheader930.preheader ]
  %i8_cast = zext i31 %i8 to i32
  %tmp_321 = icmp slt i32 %i8_cast, %int_req_num_load
  %i_25 = add i31 %i8, 1
  br i1 %tmp_321, label %33, label %39

; <label>:33                                      ; preds = %.preheader930
  %tmp_323 = zext i31 %i8 to i64
  %int_request_array_SR = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_323
  %int_request_array_SR_9 = load i8* %int_request_array_SR, align 16
  %tmp_324 = icmp eq i8 %int_request_array_SR_9, %temp_diff_src_or_typ_18
  br i1 %tmp_324, label %34, label %._crit_edge1002

; <label>:34                                      ; preds = %33
  %int_request_array_DE = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_323
  %int_request_array_DE_9 = load i16* %int_request_array_DE, align 4
  %tmp_329 = icmp eq i16 %int_request_array_DE_9, %temp_diff_src_or_typ
  br i1 %tmp_329, label %35, label %._crit_edge1002

; <label>:35                                      ; preds = %34
  %int_request_array_PK = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_323
  %int_request_array_PK_9 = load i1* %int_request_array_PK, align 1
  br i1 %int_request_array_PK_9, label %._crit_edge1002, label %36

; <label>:36                                      ; preds = %35
  %int_request_array_MS = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_323
  %int_request_array_MS_9 = load i32* %int_request_array_MS, align 4
  %tmp_345 = icmp eq i32 %int_request_array_MS_9, %temp_diff_src_or_typ_20
  br i1 %tmp_345, label %37, label %._crit_edge1002

; <label>:37                                      ; preds = %36
  %int_request_array_TA = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_323
  %int_request_array_TA_9 = load i8* %int_request_array_TA, align 8
  %tmp_347 = icmp eq i8 %int_request_array_TA_9, %temp_diff_src_or_typ_21
  br i1 %tmp_347, label %38, label %._crit_edge1002

; <label>:38                                      ; preds = %37
  %int_request_array_DA = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_323
  %int_request_array_DA_9 = load i4* %int_request_array_DA, align 1
  %tmp_350 = icmp eq i4 %int_request_array_DA_9, %temp_diff_src_or_typ_22
  br i1 %tmp_350, label %.loopexit.loopexit47, label %._crit_edge1002

._crit_edge1002:                                  ; preds = %38, %37, %36, %35, %34, %33
  br label %.preheader930

; <label>:39                                      ; preds = %.preheader930
  %tmp_325 = sext i32 %int_req_num_load to i64
  %int_request_array_SR_10 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_325
  store i8 %temp_diff_src_or_typ_18, i8* %int_request_array_SR_10, align 16
  %int_request_array_PK_10 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_325
  store i1 false, i1* %int_request_array_PK_10, align 1
  %int_request_array_MS_10 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_325
  store i32 %temp_diff_src_or_typ_20, i32* %int_request_array_MS_10, align 4
  %int_request_array_TA_10 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_325
  store i8 %temp_diff_src_or_typ_21, i8* %int_request_array_TA_10, align 8
  %int_request_array_DA_10 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_325
  store i4 %temp_diff_src_or_typ_22, i4* %int_request_array_DA_10, align 1
  %int_request_array_DE_10 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_325
  store i16 %temp_diff_src_or_typ, i16* %int_request_array_DE_10, align 4
  %tmp_326 = add nsw i32 %int_req_num_load, 1
  store i32 %tmp_326, i32* @int_req_num, align 4
  br label %48

; <label>:40                                      ; preds = %32
  %tmp_319 = icmp eq i8 %temp_diff_src_or_typ_19, 1
  br i1 %tmp_319, label %.preheader928.preheader, label %._crit_edge1008

.preheader928.preheader:                          ; preds = %40
  %int_clr_num_load = load i32* @int_clr_num, align 4
  br label %.preheader928

.preheader928:                                    ; preds = %._crit_edge1009, %.preheader928.preheader
  %i9 = phi i31 [ %i_12, %._crit_edge1009 ], [ 0, %.preheader928.preheader ]
  %i9_cast = zext i31 %i9 to i32
  %tmp_327 = icmp slt i32 %i9_cast, %int_clr_num_load
  %i_12 = add i31 %i9, 1
  br i1 %tmp_327, label %41, label %47

; <label>:41                                      ; preds = %.preheader928
  %tmp_330 = zext i31 %i9 to i64
  %int_clr2snd_array_SR = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_330
  %int_clr2snd_array_SR_9 = load i8* %int_clr2snd_array_SR, align 16
  %tmp_331 = icmp eq i8 %int_clr2snd_array_SR_9, %temp_diff_src_or_typ_18
  br i1 %tmp_331, label %42, label %._crit_edge1009

; <label>:42                                      ; preds = %41
  %int_clr2snd_array_DE = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_330
  %int_clr2snd_array_DE_9 = load i16* %int_clr2snd_array_DE, align 4
  %tmp_339 = icmp eq i16 %int_clr2snd_array_DE_9, %temp_diff_src_or_typ
  br i1 %tmp_339, label %43, label %._crit_edge1009

; <label>:43                                      ; preds = %42
  %int_clr2snd_array_PK = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_330
  %int_clr2snd_array_PK_9 = load i1* %int_clr2snd_array_PK, align 1
  br i1 %int_clr2snd_array_PK_9, label %44, label %._crit_edge1009

; <label>:44                                      ; preds = %43
  %int_clr2snd_array_MS = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_330
  %int_clr2snd_array_MS_9 = load i32* %int_clr2snd_array_MS, align 4
  %tmp_348 = icmp eq i32 %int_clr2snd_array_MS_9, %temp_diff_src_or_typ_20
  br i1 %tmp_348, label %45, label %._crit_edge1009

; <label>:45                                      ; preds = %44
  %int_clr2snd_array_TA = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_330
  %int_clr2snd_array_TA_9 = load i8* %int_clr2snd_array_TA, align 8
  %tmp_351 = icmp eq i8 %int_clr2snd_array_TA_9, %temp_diff_src_or_typ_21
  br i1 %tmp_351, label %46, label %._crit_edge1009

; <label>:46                                      ; preds = %45
  %int_clr2snd_array_DA = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_330
  %int_clr2snd_array_DA_9 = load i4* %int_clr2snd_array_DA, align 1
  %tmp_354 = icmp eq i4 %int_clr2snd_array_DA_9, %temp_diff_src_or_typ_22
  br i1 %tmp_354, label %.loopexit.loopexit46, label %._crit_edge1009

._crit_edge1009:                                  ; preds = %46, %45, %44, %43, %42, %41
  br label %.preheader928

; <label>:47                                      ; preds = %.preheader928
  %tmp_332 = sext i32 %int_clr_num_load to i64
  %int_clr2snd_array_SR_10 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_332
  store i8 %temp_diff_src_or_typ_18, i8* %int_clr2snd_array_SR_10, align 16
  %int_clr2snd_array_PK_10 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_332
  store i1 true, i1* %int_clr2snd_array_PK_10, align 1
  %int_clr2snd_array_MS_10 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_332
  store i32 %temp_diff_src_or_typ_20, i32* %int_clr2snd_array_MS_10, align 4
  %int_clr2snd_array_TA_10 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_332
  store i8 %temp_diff_src_or_typ_21, i8* %int_clr2snd_array_TA_10, align 8
  %int_clr2snd_array_DA_10 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_332
  store i4 %temp_diff_src_or_typ_22, i4* %int_clr2snd_array_DA_10, align 1
  %int_clr2snd_array_DE_10 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_332
  store i16 %temp_diff_src_or_typ, i16* %int_clr2snd_array_DE_10, align 4
  %tmp_333 = add nsw i32 %int_clr_num_load, 1
  store i32 %tmp_333, i32* @int_clr_num, align 4
  br label %._crit_edge1008

._crit_edge1008:                                  ; preds = %47, %40
  br label %48

; <label>:48                                      ; preds = %._crit_edge1008, %39
  %i_15 = add nsw i32 %i3, -1
  store i1 false, i1* %p_1
  store i32 %seq_num_2, i32* %error_MSG_SIZE_V
  store i1 true, i1* %last_V
  br label %.loopexit934

; <label>:49                                      ; preds = %31
  %tmp_318 = icmp eq i4 %p_Result_2, 1
  br i1 %tmp_318, label %50, label %.loopexit934.pre

; <label>:50                                      ; preds = %49
  %temp_diff_src_or_typ_23 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_24 = trunc i121 %tmp_5 to i8
  %temp_diff_src_or_typ_25 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_5, i32 8, i32 15)
  %temp_diff_src_or_typ_26 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_5, i32 16, i32 47)
  %temp_diff_src_or_typ_27 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_5, i32 48, i32 55)
  %temp_diff_src_or_typ_28 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_5, i32 60, i32 63)
  %tmp_320 = icmp eq i8 %temp_diff_src_or_typ_25, 0
  br i1 %tmp_320, label %.preheader926.preheader, label %58

.preheader926.preheader:                          ; preds = %50
  %float_req_num_load_3 = load i32* @float_req_num, align 4
  br label %.preheader926

.preheader926:                                    ; preds = %._crit_edge1016, %.preheader926.preheader
  %i11 = phi i31 [ %i_13, %._crit_edge1016 ], [ 0, %.preheader926.preheader ]
  %i11_cast = zext i31 %i11 to i32
  %tmp_328 = icmp slt i32 %i11_cast, %float_req_num_load_3
  %i_13 = add i31 %i11, 1
  br i1 %tmp_328, label %51, label %57

; <label>:51                                      ; preds = %.preheader926
  %tmp_334 = zext i31 %i11 to i64
  %float_request_array_89 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_334
  %float_request_array_90 = load i8* %float_request_array_89, align 16
  %tmp_335 = icmp eq i8 %float_request_array_90, %temp_diff_src_or_typ_24
  br i1 %tmp_335, label %52, label %._crit_edge1016

; <label>:52                                      ; preds = %51
  %float_request_array_91 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_334
  %float_request_array_92 = load i16* %float_request_array_91, align 4
  %tmp_340 = icmp eq i16 %float_request_array_92, %temp_diff_src_or_typ_23
  br i1 %tmp_340, label %53, label %._crit_edge1016

; <label>:53                                      ; preds = %52
  %float_request_array_93 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_334
  %float_request_array_94 = load i1* %float_request_array_93, align 1
  br i1 %float_request_array_94, label %._crit_edge1016, label %54

; <label>:54                                      ; preds = %53
  %float_request_array_95 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_334
  %float_request_array_96 = load i32* %float_request_array_95, align 4
  %tmp_349 = icmp eq i32 %float_request_array_96, %temp_diff_src_or_typ_26
  br i1 %tmp_349, label %55, label %._crit_edge1016

; <label>:55                                      ; preds = %54
  %float_request_array_97 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_334
  %float_request_array_98 = load i8* %float_request_array_97, align 8
  %tmp_352 = icmp eq i8 %float_request_array_98, %temp_diff_src_or_typ_27
  br i1 %tmp_352, label %56, label %._crit_edge1016

; <label>:56                                      ; preds = %55
  %float_request_array_99 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_334
  %float_request_array_100 = load i4* %float_request_array_99, align 1
  %tmp_355 = icmp eq i4 %float_request_array_100, %temp_diff_src_or_typ_28
  br i1 %tmp_355, label %.loopexit.loopexit45, label %._crit_edge1016

._crit_edge1016:                                  ; preds = %56, %55, %54, %53, %52, %51
  br label %.preheader926

; <label>:57                                      ; preds = %.preheader926
  %tmp_336 = sext i32 %float_req_num_load_3 to i64
  %float_request_array_101 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_336
  store i8 %temp_diff_src_or_typ_24, i8* %float_request_array_101, align 16
  %float_request_array_102 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_336
  store i1 false, i1* %float_request_array_102, align 1
  %float_request_array_103 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_336
  store i32 %temp_diff_src_or_typ_26, i32* %float_request_array_103, align 4
  %float_request_array_104 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_336
  store i8 %temp_diff_src_or_typ_27, i8* %float_request_array_104, align 8
  %float_request_array_105 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_336
  store i4 %temp_diff_src_or_typ_28, i4* %float_request_array_105, align 1
  %float_request_array_106 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_336
  store i16 %temp_diff_src_or_typ_23, i16* %float_request_array_106, align 4
  %tmp_337 = add nsw i32 %float_req_num_load_3, 1
  store i32 %tmp_337, i32* @float_req_num, align 4
  br label %66

; <label>:58                                      ; preds = %50
  %tmp_322 = icmp eq i8 %temp_diff_src_or_typ_25, 1
  br i1 %tmp_322, label %.preheader925.preheader, label %._crit_edge1022

.preheader925.preheader:                          ; preds = %58
  %float_clr_num_load = load i32* @float_clr_num, align 4
  br label %.preheader925

.preheader925:                                    ; preds = %._crit_edge1023, %.preheader925.preheader
  %i12 = phi i31 [ %i_14, %._crit_edge1023 ], [ 0, %.preheader925.preheader ]
  %i12_cast = zext i31 %i12 to i32
  %tmp_338 = icmp slt i32 %i12_cast, %float_clr_num_load
  %i_14 = add i31 %i12, 1
  br i1 %tmp_338, label %59, label %65

; <label>:59                                      ; preds = %.preheader925
  %tmp_341 = zext i31 %i12 to i64
  %float_clr2snd_array_s = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_341
  %float_clr2snd_array_92 = load i8* %float_clr2snd_array_s, align 16
  %tmp_342 = icmp eq i8 %float_clr2snd_array_92, %temp_diff_src_or_typ_24
  br i1 %tmp_342, label %60, label %._crit_edge1023

; <label>:60                                      ; preds = %59
  %float_clr2snd_array_93 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_341
  %float_clr2snd_array_94 = load i16* %float_clr2snd_array_93, align 4
  %tmp_346 = icmp eq i16 %float_clr2snd_array_94, %temp_diff_src_or_typ_23
  br i1 %tmp_346, label %61, label %._crit_edge1023

; <label>:61                                      ; preds = %60
  %float_clr2snd_array_95 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_341
  %float_clr2snd_array_96 = load i1* %float_clr2snd_array_95, align 1
  br i1 %float_clr2snd_array_96, label %62, label %._crit_edge1023

; <label>:62                                      ; preds = %61
  %float_clr2snd_array_97 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_341
  %float_clr2snd_array_98 = load i32* %float_clr2snd_array_97, align 4
  %tmp_353 = icmp eq i32 %float_clr2snd_array_98, %temp_diff_src_or_typ_26
  br i1 %tmp_353, label %63, label %._crit_edge1023

; <label>:63                                      ; preds = %62
  %float_clr2snd_array_99 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_341
  %float_clr2snd_array_100 = load i8* %float_clr2snd_array_99, align 8
  %tmp_356 = icmp eq i8 %float_clr2snd_array_100, %temp_diff_src_or_typ_27
  br i1 %tmp_356, label %64, label %._crit_edge1023

; <label>:64                                      ; preds = %63
  %float_clr2snd_array_101 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_341
  %float_clr2snd_array_102 = load i4* %float_clr2snd_array_101, align 1
  %tmp_357 = icmp eq i4 %float_clr2snd_array_102, %temp_diff_src_or_typ_28
  br i1 %tmp_357, label %.loopexit.loopexit, label %._crit_edge1023

._crit_edge1023:                                  ; preds = %64, %63, %62, %61, %60, %59
  br label %.preheader925

; <label>:65                                      ; preds = %.preheader925
  %tmp_343 = sext i32 %float_clr_num_load to i64
  %float_clr2snd_array_103 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_343
  store i8 %temp_diff_src_or_typ_24, i8* %float_clr2snd_array_103, align 16
  %float_clr2snd_array_104 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_343
  store i1 true, i1* %float_clr2snd_array_104, align 1
  %float_clr2snd_array_105 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_343
  store i32 %temp_diff_src_or_typ_26, i32* %float_clr2snd_array_105, align 4
  %float_clr2snd_array_106 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_343
  store i8 %temp_diff_src_or_typ_27, i8* %float_clr2snd_array_106, align 8
  %float_clr2snd_array_107 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_343
  store i4 %temp_diff_src_or_typ_28, i4* %float_clr2snd_array_107, align 1
  %float_clr2snd_array_108 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_343
  store i16 %temp_diff_src_or_typ_23, i16* %float_clr2snd_array_108, align 4
  %tmp_344 = add nsw i32 %float_clr_num_load, 1
  store i32 %tmp_344, i32* @float_clr_num, align 4
  br label %._crit_edge1022

._crit_edge1022:                                  ; preds = %65, %58
  br label %66

; <label>:66                                      ; preds = %._crit_edge1022, %57
  %i_16 = add nsw i32 %i3, -1
  store i1 false, i1* %p_1
  store i32 %seq_num_2, i32* %error_MSG_SIZE_V
  store i1 true, i1* %last_V
  br label %.loopexit934

; <label>:67                                      ; preds = %21
  %t_V = load i64* @time_V, align 8
  %tmp_300 = add i64 %t_V, 1
  store i64 %tmp_300, i64* @time_V, align 8
  %i_24 = add nsw i32 %i3, -1
  %tmp_301 = icmp eq i64 %tmp_300, 314465410
  br i1 %tmp_301, label %68, label %.loopexit934

; <label>:68                                      ; preds = %67
  store i64 0, i64* @time_V, align 8
  store i2 1, i2* @state_1, align 1
  br label %.loopexit

.loopexit934.loopexit:                            ; preds = %.preheader933
  store i1 false, i1* %p_1
  store i32 %seq_num_2, i32* %error_MSG_SIZE_V
  store i1 %p_0610_3, i1* %last_V
  br label %.loopexit934

.loopexit934.pre:                                 ; preds = %49
  store i1 false, i1* %p_1
  store i32 %seq_num_2, i32* %error_MSG_SIZE_V
  store i1 true, i1* %last_V
  br label %.loopexit934

.loopexit934.pre40:                               ; preds = %29
  store i1 false, i1* %p_1
  store i32 %seq_num_2, i32* %error_MSG_SIZE_V
  store i1 %p_0610_3, i1* %last_V
  br label %.loopexit934

.loopexit934:                                     ; preds = %.loopexit934.pre40, %.loopexit934.pre, %.loopexit934.loopexit, %67, %66, %48, %._crit_edge1000
  %i3_4 = phi i32 [ %i_15, %48 ], [ %i_16, %66 ], [ %i3, %.loopexit934.pre ], [ %i3, %.loopexit934.pre40 ], [ %i, %._crit_edge1000 ], [ %i_24, %67 ], [ %i3, %.loopexit934.loopexit ]
  %i_26 = add nsw i32 %i3_4, 1
  br label %.preheader290

.preheader:                                       ; preds = %.preheader.preheader, %69
  %p_0610_9 = phi i1 [ %last_V_4, %69 ], [ %last_V_load, %.preheader.preheader ]
  br i1 %p_0610_9, label %70, label %69

; <label>:69                                      ; preds = %.preheader
  %tmp_9 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %last_V_4 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_9, i32 72)
  br label %.preheader

; <label>:70                                      ; preds = %.preheader
  %error_MSG_SIZE_V_loa_4 = load i32* %error_MSG_SIZE_V
  store i2 0, i2* @state_1, align 1
  store i64 0, i64* @time_V, align 8
  %tmp_10 = call i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i8.i32.i8.i8(i49 513, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i32 %error_MSG_SIZE_V_loa_4, i8 5, i8 %clr2snd_SRC_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_10)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %64
  br label %.loopexit

.loopexit.loopexit45:                             ; preds = %56
  br label %.loopexit

.loopexit.loopexit46:                             ; preds = %46
  br label %.loopexit

.loopexit.loopexit47:                             ; preds = %38
  br label %.loopexit

.loopexit.loopexit48:                             ; preds = %4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit48, %.loopexit.loopexit47, %.loopexit.loopexit46, %.loopexit.loopexit45, %.loopexit.loopexit, %70, %68, %20, %15, %._crit_edge994, %codeRepl
  ret void
}

!opencl.kernels = !{!0, !7, !10, !16, !18, !20, !21, !21, !27, !31, !21, !37, !40, !21, !21, !21, !41, !44, !44, !21, !47, !50, !50, !21, !21, !21, !21, !53, !47, !21, !55, !58, !21, !21, !21, !60, !60, !61, !61, !63, !65, !21, !21, !21, !21, !63, !65, !60, !60, !67, !67, !69, !72, !72, !21, !21, !21, !74, !76, !21, !21, !21, !60, !60, !78, !78, !80, !47, !82, !44, !44, !21, !84, !86, !88, !89, !91, !41, !47, !21, !21, !21, !93, !47, !53, !47, !95, !97, !69, !72, !72, !100, !102, !102, !21, !21, !21, !108, !108, !21, !21, !108, !108, !21, !21, !108, !108, !21, !21, !108, !108, !21, !21, !21, !109, !109, !109, !21, !21, !21, !111, !109, !109, !109, !113, !109, !109, !109, !115, !115, !117, !108, !108, !119, !121, !121, !122, !123, !124, !124, !125, !78, !78, !126, !127, !127, !100, !128, !128, !130, !131, !133, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !135, !137, !137, !135, !137, !137, !137, !138, !141, !137, !137, !142, !146, !135, !137, !148, !150, !148, !150, !148, !150, !135, !137, !135, !137, !135, !137, !135, !137, !135, !137, !135, !135, !137, !137, !151, !155, !151, !155, !157, !160, !162, !164, !135, !137, !135, !137, !135, !137, !166, !168, !166, !168, !166, !168, !168, !166, !168, !168, !166, !168, !166, !168, !169, !169, !174, !174, !176, !21, !44, !44, !21, !178, !21, !21, !21, !180, !180, !182, !182, !183, !21, !21, !21, !185, !44, !44, !21, !187, !21, !21, !21, !60, !60, !189, !189, !191, !21, !21, !21, !21, !21, !21, !193, !21, !21, !21, !21, !174, !174, !176, !193, !21, !174, !174, !176, !193, !21, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !195, !195, !195, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !195, !195, !195, !197, !197, !197, !21, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !21, !197, !197, !197, !21, !197, !197, !197, !202, !21, !21, !21, !21, !100, !100, !204, !204, !206, !208, !208, !21, !21, !21, !21, !209, !211, !211, !21, !100, !100, !212, !212, !214, !216, !216, !21, !21, !21, !21, !126, !127, !127, !100, !217, !217, !219, !21, !221, !221, !69, !219, !224, !224, !21, !21, !21, !108, !108, !21, !119, !108, !108, !122, !108, !108, !226, !21, !21, !21, !21, !21, !21, !21, !21, !202, !21, !21, !21, !21, !100, !100, !228, !228, !230, !232, !232, !21, !21, !21, !21, !233, !235, !235, !100, !100, !236, !236, !238, !240, !240, !21, !241, !189, !189, !100, !128, !128, !69, !219, !242, !242, !21, !21, !108, !108, !244, !108, !108, !246, !21, !21, !21, !21, !21, !21, !168, !248, !47, !250, !47, !251, !251, !253, !109, !109, !21, !254, !256, !256, !100, !253, !254, !256, !256, !100, !257, !21, !69, !219, !259, !259, !166, !261, !47, !53, !47, !263, !263, !264, !266, !266, !21, !21, !125, !78, !78, !100, !264, !125, !78, !78, !100, !267, !21, !269, !269, !168, !250, !47, !166, !53, !47, !168, !248, !47, !166, !261, !47, !168, !166, !168, !166, !271, !21, !21, !273, !21, !137, !135, !137, !135, !137, !137, !135, !135, !164, !21, !162, !21, !160, !269, !269, !21, !21, !274, !275, !127, !127, !157, !269, !269, !21, !155, !277, !279, !279, !280, !21, !21, !21, !78, !78, !282, !282, !284, !284, !287, !261, !211, !211, !21, !289, !291, !21, !21, !21, !60, !60, !293, !293, !21, !100, !100, !72, !72, !294, !296, !78, !78, !21, !298, !21, !21, !21, !211, !211, !182, !182, !300, !300, !21, !216, !216, !216, !21, !302, !88, !302, !88, !302, !88, !304, !151, !248, !235, !235, !21, !100, !100, !72, !72, !307, !309, !309, !310, !256, !256, !21, !240, !240, !240, !312, !88, !312, !88, !314, !155, !151, !137, !316, !21, !21, !21, !320, !44, !44, !21, !21, !323, !323, !21, !325, !325, !325, !327, !329, !329, !323, !21, !69, !219, !331, !331, !108, !108, !21, !333, !335, !335, !337, !339, !339, !21, !341, !341, !343, !341, !341, !343, !345, !351, !21, !21, !21, !353, !44, !44, !355, !21, !21, !21, !357, !357, !357, !21, !69, !359, !360, !360, !206, !209, !211, !211, !21, !21, !100, !362, !362, !364, !364, !365, !367, !367, !368, !370, !370, !368, !137, !372, !21, !135, !374, !376, !376, !378, !376, !376, !378, !380, !21, !21, !21, !382, !44, !44, !355, !21, !21, !21, !384, !384, !384, !21, !69, !359, !386, !386, !230, !233, !235, !235, !21, !21, !100, !388, !388, !364, !364, !365, !367, !367, !390, !392, !392, !390, !135, !394, !137, !304, !135, !396, !398, !21, !21, !21, !256, !256, !400, !400, !402, !402, !404, !314, !137, !135, !137, !135, !137, !135, !137, !135, !150, !21, !406, !47, !408, !411, !21, !21, !211, !211, !60, !60, !148, !21, !413, !415, !150, !148, !150, !148, !166, !168, !146, !417, !21, !21, !419, !69, !219, !420, !420, !422, !422, !21, !21, !21, !21, !424, !21, !21, !21, !426, !426, !182, !182, !428, !21, !21, !21, !430, !432, !432, !433, !433, !21, !21, !430, !432, !432, !21, !21, !435, !435, !435, !21, !437, !21, !21, !21, !21, !21, !21, !439, !439, !439, !21, !441, !21, !21, !21, !21, !21, !21, !21, !21, !443, !443, !443, !445, !445, !447, !449, !21, !452, !337, !367, !367, !21, !454, !454, !456, !458, !100, !461, !461, !463, !463, !465, !21, !370, !370, !368, !100, !466, !466, !468, !470, !468, !468, !21, !21, !21, !21, !21, !21, !355, !21, !21, !432, !432, !472, !454, !454, !456, !21, !100, !474, !474, !476, !476, !476, !21, !470, !478, !478, !479, !456, !456, !480, !480, !21, !21, !479, !456, !456, !21, !21, !482, !484, !486, !486, !21, !367, !367, !21, !21, !487, !487, !487, !489, !21, !21, !491, !491, !491, !493, !21, !21, !21, !21, !21, !21, !21, !21, !495, !495, !495, !21, !497, !497, !499, !501, !21, !21, !21, !21, !21, !503, !503, !503, !21, !505, !505, !507, !21, !509, !509, !511, !21, !21, !100, !512, !512, !514, !514, !516, !21, !21, !517, !523, !355, !21, !21, !21, !511, !511, !511, !524, !524, !526, !21, !21, !21, !21, !527, !527, !527, !529, !532, !532, !534, !509, !536, !21, !100, !538, !538, !540, !542, !542, !21, !21, !21, !21, !543, !545, !545, !69, !219, !546, !546, !21, !100, !548, !548, !550, !550, !550, !21, !21, !21, !552, !554, !554, !100, !21, !21, !269, !269, !21, !555, !557, !527, !527, !21, !367, !367, !21, !21, !558, !558, !558, !560, !219, !562, !562, !564, !21, !566, !566, !568, !320, !44, !44, !21, !21, !108, !108, !21, !570, !566, !566, !568, !100, !571, !571, !573, !575, !575, !21, !21, !21, !21, !576, !21, !100, !578, !578, !580, !580, !583, !585, !585, !100, !586, !586, !588, !590, !590, !21, !21, !21, !21, !591, !592, !585, !585, !100, !594, !594, !596, !599, !599, !21, !21, !21, !21, !601, !603, !603, !605, !605, !607, !607, !608, !21, !21, !610, !100, !613, !613, !100, !615, !615, !617, !617, !617, !21, !21, !21, !86, !21, !21, !21, !619, !619, !619, !21, !621, !621, !47, !108, !108, !623, !69, !219, !625, !625, !206, !209, !100, !627, !627, !21, !21, !21, !21, !21, !21, !21, !108, !108, !21, !21, !629, !21, !21, !21, !21, !21, !21, !21, !21, !21, !142, !631, !633, !250, !47, !21, !635, !635, !21, !21, !637, !21, !639, !47, !641, !641, !641, !21, !21, !643, !645, !645, !646, !355, !21, !21, !648, !648, !21, !641, !643, !645, !645, !108, !108, !100, !650, !650, !652, !654, !654, !21, !643, !100, !655, !655, !21, !21, !108, !108, !639, !657, !21, !21, !21, !659, !659, !645, !645, !661, !661, !21, !21, !108, !108, !663, !21, !659, !659, !663, !47, !665, !665, !667, !21, !21, !21, !21, !668, !671, !674, !676, !676, !677, !677, !21, !21, !679, !679, !681, !21, !679, !679, !679, !21, !21, !21, !683, !683, !685, !529, !687, !21, !21, !21, !21, !689, !691, !21, !679, !679, !679, !692, !681, !681, !355, !21, !21, !677, !677, !359, !694, !694, !696, !696, !698, !21, !699, !659, !659, !364, !364, !365, !367, !367, !677, !700, !100, !100, !702, !47, !88, !88, !21, !704, !182, !182, !191, !60, !60, !219, !21, !706, !706, !619, !619, !708, !710, !710, !21, !100, !711, !711, !21, !21, !639, !645, !645, !713, !21, !21, !714, !717, !718, !235, !235, !645, !645, !100, !720, !720, !722, !722, !722, !21, !724, !726, !726, !661, !661, !100, !728, !728, !730, !730, !730, !21, !21, !21, !21, !732, !734, !734, !736, !738, !738, !738, !100, !740, !740, !742, !744, !744, !21, !21, !21, !21, !745, !747, !747, !21, !100, !748, !748, !750, !752, !747, !747, !754, !754, !756, !21, !21, !100, !758, !758, !760, !763, !763, !21, !21, !21, !21, !765, !21, !21, !767, !767, !769, !769, !21, !21, !771, !21, !21, !21, !21, !772, !772, !100, !774, !774, !776, !776, !776, !21, !21, !21, !21, !100, !778, !778, !780, !780, !780, !21, !21, !21, !21, !782, !784, !784, !786, !788, !788, !790, !792, !792, !100, !793, !793, !795, !797, !797, !21, !21, !21, !21, !798, !799, !792, !792, !100, !801, !801, !803, !805, !805, !21, !21, !21, !21, !807, !809, !809, !811, !811, !784, !784, !813, !21, !21, !815, !108, !108, !817, !47, !100, !819, !819, !821, !821, !821, !21, !21, !21, !21, !823, !21, !21, !21, !825, !825, !825, !21, !21, !21, !100, !827, !827, !108, !108, !829, !108, !108, !21, !831, !21, !833, !809, !809, !835, !837, !837, !837, !21, !21, !21, !839, !100, !100, !841, !841, !837, !837, !837, !843, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !166, !166, !844, !53, !47, !53, !47, !846, !846, !21, !849, !127, !127, !851, !852, !854, !854, !289, !291, !21, !21, !21, !856, !858, !47, !21, !860, !861, !863, !865, !867, !867, !21, !21, !21, !868, !868, !870, !21, !868, !868, !868, !21, !21, !872, !872, !874, !876, !870, !870, !878, !355, !21, !21, !867, !867, !359, !880, !880, !882, !882, !884, !21, !21, !21, !885, !885, !887, !364, !364, !365, !367, !367, !867, !889, !889, !176, !193, !890, !893, !893, !895, !21, !885, !897, !795, !790, !100, !899, !899, !901, !901, !233, !235, !235, !230, !903, !248, !904, !906, !906, !21, !21, !21, !908, !910, !910, !792, !792, !100, !912, !912, !914, !914, !914, !21, !916, !100, !917, !917, !21, !21, !21, !21, !21, !919, !919, !921, !21, !21, !21, !320, !44, !44, !923, !923, !924, !100, !926, !926, !928, !930, !930, !21, !21, !21, !21, !931, !100, !933, !933, !935, !935, !233, !235, !235, !230, !937, !939, !939, !21, !21, !21, !21, !941, !910, !910, !943, !943, !945, !945, !100, !946, !946, !948, !948, !948, !21, !950, !950, !950, !21, !952, !100, !953, !953, !21, !21, !21, !21, !21, !21, !21, !174, !174, !176, !193, !174, !174, !176, !193, !355, !21, !21, !955, !955, !957, !69, !359, !959, !959, !209, !211, !211, !100, !961, !961, !364, !364, !365, !367, !367, !955, !21, !21, !21, !166, !166, !963, !963, !963, !963, !963, !21, !21, !856, !860, !965, !967, !969, !971, !971, !21, !972, !972, !21, !21, !974, !974, !976, !21, !974, !974, !974, !21, !21, !21, !683, !683, !685, !529, !978, !21, !21, !21, !980, !982, !21, !974, !974, !974, !983, !976, !976, !355, !21, !21, !972, !972, !21, !985, !985, !355, !69, !359, !986, !986, !209, !211, !211, !100, !988, !988, !364, !364, !365, !367, !367, !972, !990, !21, !21, !992, !91, !274, !275, !88, !137, !994, !994, !994, !994, !994, !21, !21, !995, !21, !100, !996, !996, !998, !1000, !1000, !21, !21, !21, !21, !1001, !1003, !1003, !21, !21, !21, !1004, !1006, !1008, !1010, !1010, !1011, !1011, !21, !21, !1013, !1013, !1015, !21, !1013, !1013, !1013, !21, !21, !21, !683, !683, !685, !529, !1017, !21, !21, !21, !1019, !1021, !21, !1013, !1013, !1013, !1022, !1015, !1015, !355, !21, !21, !1011, !1011, !21, !355, !69, !359, !1024, !1024, !233, !235, !235, !100, !1026, !1026, !364, !364, !365, !367, !367, !1011, !1028, !21, !21, !21, !1030, !189, !189, !1032, !185, !187, !1033, !135, !1034, !1034, !166, !166, !166, !1036, !1039, !1039, !1041, !1043, !1045, !21, !1047, !47, !1049, !1049, !1049, !21, !1051, !1053, !1053, !355, !21, !21, !1054, !1054, !69, !21, !1049, !1051, !1053, !1053, !1056, !50, !50, !21, !1051, !100, !1057, !1057, !1049, !1051, !100, !102, !102, !1059, !1059, !1061, !1063, !21, !21, !1065, !1067, !1069, !1071, !1071, !1041, !1041, !21, !21, !1072, !1072, !1074, !21, !1072, !1072, !1072, !21, !21, !683, !683, !685, !529, !1076, !21, !21, !21, !1078, !1080, !21, !1072, !1072, !1072, !1081, !1074, !1074, !355, !21, !21, !1041, !1041, !21, !359, !1083, !1083, !364, !364, !365, !367, !367, !1041, !1039, !1047, !1051, !1053, !1053, !21, !100, !1085, !1085, !1087, !1087, !1087, !21, !21, !21, !131, !21, !21, !21, !21, !1089, !1091, !1091, !1093, !603, !603, !100, !1094, !1094, !108, !108, !1096, !108, !108, !1098, !21, !1100, !603, !603, !1102, !1104, !78, !78, !21, !21, !166, !166, !1106, !491, !491, !491, !495, !495, !495, !1109, !1109, !1111, !364, !364, !365, !367, !367, !345, !44, !44, !1113, !44, !44, !1114, !1116, !1116, !1114, !69, !219, !1118, !1118, !514, !514, !516, !1120, !1124, !337, !367, !367, !566, !566, !568, !1126, !47, !88, !88, !1128, !1128, !1130, !166, !166, !168, !168, !166, !166, !166, !166, !168, !168, !137, !137, !137, !137, !135, !135, !135, !135, !137, !137, !137, !137, !135, !135, !135, !135, !1132, !21, !21, !21, !320, !44, !44, !21, !21, !21, !21, !108, !108, !21, !333, !335, !335, !21, !337, !339, !339, !21, !376, !376, !378, !376, !376, !378, !345, !44, !44, !380, !21, !21, !21, !382, !44, !44, !21, !21, !21, !185, !44, !44, !187, !21, !21, !21, !60, !60, !189, !189, !355, !21, !21, !21, !384, !384, !384, !21, !69, !359, !386, !386, !100, !100, !228, !228, !230, !232, !232, !21, !21, !21, !21, !233, !235, !235, !21, !21, !100, !388, !388, !364, !364, !365, !367, !367, !390, !392, !392, !390, !251, !251, !253, !109, !109, !21, !21, !254, !256, !256, !100, !100, !128, !128, !253, !254, !256, !256, !21, !100, !236, !236, !219, !242, !242, !257, !21, !69, !219, !221, !221, !259, !259, !21, !21, !21, !21, !21, !21, !21, !21, !1134, !21, !21, !21, !320, !44, !44, !21, !21, !108, !108, !21, !1136, !337, !1138, !1138, !21, !1140, !1140, !1142, !1140, !1140, !1142, !345, !1144, !21, !21, !21, !1146, !44, !44, !355, !21, !21, !21, !1148, !1148, !1148, !392, !392, !390, !1150, !21, !21, !21, !320, !44, !44, !21, !21, !108, !108, !21, !1152, !337, !1154, !1154, !21, !1156, !1156, !1158, !1156, !1156, !1158, !345, !1160, !21, !21, !21, !1162, !44, !44, !355, !21, !21, !21, !1164, !1164, !1164, !392, !392, !390, !1166, !21, !21, !21, !320, !44, !44, !21, !21, !108, !108, !21, !1168, !337, !1170, !1170, !21, !1172, !1172, !1174, !1172, !1172, !1174, !345, !1176, !21, !21, !21, !1178, !44, !44, !355, !21, !21, !21, !1180, !1180, !1180, !392, !392, !390, !1182, !21, !341, !341, !343, !341, !341, !343, !351, !21, !21, !21, !353, !44, !44, !21, !274, !275, !127, !127, !355, !21, !21, !21, !357, !357, !357, !21, !69, !359, !360, !360, !100, !100, !204, !204, !206, !208, !208, !21, !21, !21, !21, !209, !211, !211, !21, !21, !100, !362, !362, !364, !364, !365, !367, !367, !368, !370, !370, !368, !263, !263, !264, !266, !266, !21, !21, !125, !78, !78, !100, !100, !217, !217, !264, !125, !78, !78, !100, !212, !212, !219, !224, !224, !267, !21, !269, !269, !21, !21, !21, !21, !1184, !1186, !1186, !1188, !1186, !1186, !1188, !1190, !21, !21, !21, !1192, !44, !44, !355, !21, !21, !21, !1194, !1194, !1194, !370, !370, !368, !1196, !1198, !1198, !1200, !1198, !1198, !1200, !1202, !21, !21, !21, !1204, !44, !44, !355, !21, !21, !21, !1206, !1206, !1206, !370, !370, !368, !1208, !1210, !1210, !1212, !1210, !1210, !1212, !1214, !21, !21, !21, !1216, !44, !44, !355, !21, !21, !21, !1217, !1217, !1217, !370, !370, !368, !1219, !21, !21, !21, !320, !21, !1221, !1221, !1223, !1223, !1223, !1225, !1227, !1227, !1221, !21, !69, !219, !706, !706, !108, !108, !21, !1229, !21, !21, !21, !320, !44, !44, !21, !21, !1231, !1231, !21, !1233, !1233, !1233, !1235, !1237, !1237, !1231, !21, !69, !219, !1239, !1239, !108, !108, !21, !1241, !21, !21, !21, !320, !44, !44, !21, !21, !1243, !1243, !21, !1245, !1245, !1245, !1247, !1249, !1249, !1243, !21, !69, !219, !1251, !1251, !108, !108, !21, !1253, !1255, !1257, !174, !174, !176, !21, !178, !21, !21, !21, !180, !180, !182, !182, !183, !21, !21, !21, !191, !21, !21, !21, !21, !193, !21, !174, !174, !176, !193, !21, !174, !174, !176, !193, !21, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !195, !195, !195, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !21, !372, !21, !21, !21, !320, !44, !44, !21, !21, !323, !323, !21, !325, !325, !325, !327, !329, !329, !323, !21, !69, !219, !331, !331, !108, !108, !21, !394, !195, !195, !195, !21, !195, !195, !195, !195, !195, !195, !197, !197, !197, !21, !195, !195, !195, !21, !195, !195, !195, !21, !195, !195, !195, !21, !197, !197, !197, !21, !197, !197, !197}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!1259, !1266, !1271, !1276, !1281, !1286, !1291, !1296, !1301, !1306, !1311, !1316, !1321, !1326, !1333, !1338, !1344}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"struct envelope*", metadata !"struct stream_packet*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"envlp", metadata !"packet"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"struct stream_packet*", metadata !"struct envelope*"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"packet", metadata !"envlp"}
!10 = metadata !{null, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !6}
!11 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!12 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!13 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int", metadata !"enum MPI_DATA_TYPE", metadata !"int", metadata !"int", metadata !"int"}
!14 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"count", metadata !"dataType", metadata !"dest", metadata !"tag", metadata !"MPI_Comm"}
!16 = metadata !{null, metadata !11, metadata !12, metadata !17, metadata !14, metadata !15, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"enum MPI_DATA_TYPE", metadata !"int", metadata !"int", metadata !"int"}
!18 = metadata !{null, metadata !11, metadata !12, metadata !13, metadata !14, metadata !19, metadata !6}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"count", metadata !"dataType", metadata !"source", metadata !"tag", metadata !"MPI_Comm"}
!20 = metadata !{null, metadata !11, metadata !12, metadata !17, metadata !14, metadata !19, metadata !6}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space"}
!23 = metadata !{metadata !"kernel_arg_access_qual"}
!24 = metadata !{metadata !"kernel_arg_type"}
!25 = metadata !{metadata !"kernel_arg_type_qual"}
!26 = metadata !{metadata !"kernel_arg_name"}
!27 = metadata !{null, metadata !28, metadata !2, metadata !29, metadata !4, metadata !30, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!31 = metadata !{float (float)* @rint, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !6}
!32 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!33 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!35 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!37 = metadata !{null, metadata !28, metadata !2, metadata !38, metadata !4, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"atomCount", metadata !"stepCount"}
!40 = metadata !{void ()* @md, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!41 = metadata !{null, metadata !28, metadata !2, metadata !42, metadata !4, metadata !43, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &", metadata !"int"}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!44 = metadata !{null, metadata !32, metadata !33, metadata !45, metadata !35, metadata !46, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!47 = metadata !{null, metadata !32, metadata !33, metadata !48, metadata !35, metadata !49, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!50 = metadata !{null, metadata !32, metadata !33, metadata !51, metadata !35, metadata !52, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!53 = metadata !{null, metadata !28, metadata !2, metadata !54, metadata !4, metadata !43, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!55 = metadata !{null, metadata !28, metadata !2, metadata !56, metadata !4, metadata !57, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!58 = metadata !{null, metadata !28, metadata !2, metadata !59, metadata !4, metadata !43, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"const ap_int_base<32, true> &"}
!60 = metadata !{null, metadata !32, metadata !33, metadata !48, metadata !35, metadata !46, metadata !6}
!61 = metadata !{null, metadata !32, metadata !33, metadata !62, metadata !35, metadata !46, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!63 = metadata !{null, metadata !28, metadata !2, metadata !64, metadata !4, metadata !57, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"int"}
!65 = metadata !{null, metadata !28, metadata !2, metadata !66, metadata !4, metadata !43, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, true> &"}
!67 = metadata !{null, metadata !32, metadata !33, metadata !68, metadata !35, metadata !46, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!69 = metadata !{null, metadata !32, metadata !33, metadata !70, metadata !35, metadata !71, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!71 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!72 = metadata !{null, metadata !32, metadata !33, metadata !73, metadata !35, metadata !46, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!74 = metadata !{null, metadata !28, metadata !2, metadata !75, metadata !4, metadata !57, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!76 = metadata !{null, metadata !28, metadata !2, metadata !77, metadata !4, metadata !43, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, true> &"}
!78 = metadata !{null, metadata !32, metadata !33, metadata !79, metadata !35, metadata !46, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!80 = metadata !{null, metadata !28, metadata !2, metadata !81, metadata !4, metadata !43, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"int"}
!82 = metadata !{null, metadata !32, metadata !33, metadata !45, metadata !35, metadata !83, metadata !6}
!83 = metadata !{metadata !"kernel_arg_name", metadata !""}
!84 = metadata !{null, metadata !32, metadata !33, metadata !85, metadata !35, metadata !49, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!86 = metadata !{null, metadata !32, metadata !33, metadata !87, metadata !35, metadata !49, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!88 = metadata !{null, metadata !32, metadata !33, metadata !79, metadata !35, metadata !49, metadata !6}
!89 = metadata !{null, metadata !32, metadata !33, metadata !90, metadata !35, metadata !49, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!91 = metadata !{null, metadata !32, metadata !33, metadata !92, metadata !35, metadata !49, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!93 = metadata !{null, metadata !28, metadata !2, metadata !94, metadata !4, metadata !43, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"int"}
!95 = metadata !{null, metadata !32, metadata !33, metadata !96, metadata !35, metadata !49, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!97 = metadata !{null, metadata !32, metadata !33, metadata !98, metadata !35, metadata !99, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const struct stream_packet &"}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!100 = metadata !{null, metadata !28, metadata !2, metadata !38, metadata !4, metadata !101, metadata !6}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!102 = metadata !{null, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !6}
!103 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!104 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!106 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!108 = metadata !{null, metadata !32, metadata !33, metadata !45, metadata !35, metadata !71, metadata !6}
!109 = metadata !{null, metadata !32, metadata !33, metadata !110, metadata !35, metadata !52, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!111 = metadata !{null, metadata !32, metadata !33, metadata !112, metadata !35, metadata !49, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!113 = metadata !{null, metadata !32, metadata !33, metadata !114, metadata !35, metadata !49, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!115 = metadata !{null, metadata !32, metadata !33, metadata !116, metadata !35, metadata !46, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!117 = metadata !{null, metadata !32, metadata !33, metadata !118, metadata !35, metadata !49, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!119 = metadata !{null, metadata !32, metadata !33, metadata !120, metadata !35, metadata !49, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!121 = metadata !{null, metadata !32, metadata !33, metadata !118, metadata !35, metadata !46, metadata !6}
!122 = metadata !{null, metadata !32, metadata !33, metadata !116, metadata !35, metadata !49, metadata !6}
!123 = metadata !{null, metadata !32, metadata !33, metadata !87, metadata !35, metadata !71, metadata !6}
!124 = metadata !{null, metadata !32, metadata !33, metadata !87, metadata !35, metadata !46, metadata !6}
!125 = metadata !{null, metadata !32, metadata !33, metadata !79, metadata !35, metadata !71, metadata !6}
!126 = metadata !{null, metadata !32, metadata !33, metadata !92, metadata !35, metadata !71, metadata !6}
!127 = metadata !{null, metadata !32, metadata !33, metadata !92, metadata !35, metadata !46, metadata !6}
!128 = metadata !{null, metadata !103, metadata !104, metadata !129, metadata !106, metadata !107, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!130 = metadata !{null, metadata !32, metadata !33, metadata !98, metadata !35, metadata !83, metadata !6}
!131 = metadata !{null, metadata !32, metadata !33, metadata !132, metadata !35, metadata !49, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!133 = metadata !{null, metadata !32, metadata !33, metadata !134, metadata !35, metadata !83, metadata !6}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"const struct envelope &"}
!135 = metadata !{null, metadata !32, metadata !33, metadata !136, metadata !35, metadata !36, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!137 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !6}
!138 = metadata !{null, metadata !28, metadata !2, metadata !139, metadata !4, metadata !140, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double"}
!140 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!141 = metadata !{null, metadata !28, metadata !2, metadata !29, metadata !4, metadata !140, metadata !6}
!142 = metadata !{null, metadata !143, metadata !104, metadata !144, metadata !106, metadata !145, metadata !6}
!143 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*", metadata !"double*"}
!145 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"sin", metadata !"cos"}
!146 = metadata !{null, metadata !143, metadata !104, metadata !147, metadata !106, metadata !145, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*", metadata !"float*"}
!148 = metadata !{null, metadata !28, metadata !2, metadata !139, metadata !4, metadata !149, metadata !6}
!149 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!150 = metadata !{null, metadata !28, metadata !2, metadata !29, metadata !4, metadata !149, metadata !6}
!151 = metadata !{null, metadata !152, metadata !2, metadata !153, metadata !4, metadata !154, metadata !6}
!152 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!153 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*"}
!154 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"intpart"}
!155 = metadata !{null, metadata !152, metadata !2, metadata !156, metadata !4, metadata !154, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*"}
!157 = metadata !{null, metadata !152, metadata !2, metadata !158, metadata !4, metadata !159, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int*"}
!159 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"exp"}
!160 = metadata !{null, metadata !152, metadata !2, metadata !161, metadata !4, metadata !159, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int*"}
!162 = metadata !{null, metadata !28, metadata !2, metadata !163, metadata !4, metadata !159, metadata !6}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int"}
!164 = metadata !{null, metadata !28, metadata !2, metadata !165, metadata !4, metadata !159, metadata !6}
!165 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int"}
!166 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !167, metadata !6}
!167 = metadata !{metadata !"kernel_arg_name", metadata !"t_in"}
!168 = metadata !{null, metadata !32, metadata !33, metadata !136, metadata !35, metadata !167, metadata !6}
!169 = metadata !{null, metadata !170, metadata !33, metadata !171, metadata !172, metadata !173, metadata !6}
!170 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!172 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!173 = metadata !{metadata !"kernel_arg_name", metadata !"p"}
!174 = metadata !{null, metadata !32, metadata !33, metadata !136, metadata !35, metadata !175, metadata !6}
!175 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!176 = metadata !{null, metadata !32, metadata !33, metadata !136, metadata !35, metadata !177, metadata !6}
!177 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!178 = metadata !{null, metadata !28, metadata !2, metadata !179, metadata !4, metadata !43, metadata !6}
!179 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!180 = metadata !{null, metadata !32, metadata !33, metadata !181, metadata !35, metadata !46, metadata !6}
!181 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!182 = metadata !{null, metadata !32, metadata !33, metadata !85, metadata !35, metadata !46, metadata !6}
!183 = metadata !{null, metadata !32, metadata !33, metadata !184, metadata !35, metadata !49, metadata !6}
!184 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!185 = metadata !{null, metadata !28, metadata !2, metadata !186, metadata !4, metadata !57, metadata !6}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!187 = metadata !{null, metadata !28, metadata !2, metadata !188, metadata !4, metadata !43, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!189 = metadata !{null, metadata !32, metadata !33, metadata !190, metadata !35, metadata !46, metadata !6}
!190 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!191 = metadata !{null, metadata !32, metadata !33, metadata !192, metadata !35, metadata !49, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!193 = metadata !{null, metadata !32, metadata !33, metadata !136, metadata !35, metadata !194, metadata !6}
!194 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!195 = metadata !{null, metadata !170, metadata !33, metadata !171, metadata !172, metadata !196, metadata !6}
!196 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!197 = metadata !{null, metadata !198, metadata !2, metadata !199, metadata !200, metadata !201, metadata !6}
!198 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!199 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!200 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!201 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!202 = metadata !{null, metadata !170, metadata !33, metadata !171, metadata !172, metadata !203, metadata !6}
!203 = metadata !{metadata !"kernel_arg_name", metadata !"tagp"}
!204 = metadata !{null, metadata !103, metadata !104, metadata !205, metadata !106, metadata !107, metadata !6}
!205 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!206 = metadata !{null, metadata !32, metadata !33, metadata !207, metadata !35, metadata !71, metadata !6}
!207 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!208 = metadata !{null, metadata !32, metadata !33, metadata !207, metadata !35, metadata !52, metadata !6}
!209 = metadata !{null, metadata !32, metadata !33, metadata !210, metadata !35, metadata !71, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!211 = metadata !{null, metadata !32, metadata !33, metadata !210, metadata !35, metadata !46, metadata !6}
!212 = metadata !{null, metadata !103, metadata !104, metadata !213, metadata !106, metadata !107, metadata !6}
!213 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!214 = metadata !{null, metadata !32, metadata !33, metadata !215, metadata !35, metadata !71, metadata !6}
!215 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!216 = metadata !{null, metadata !32, metadata !33, metadata !215, metadata !35, metadata !52, metadata !6}
!217 = metadata !{null, metadata !103, metadata !104, metadata !218, metadata !106, metadata !107, metadata !6}
!218 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!219 = metadata !{null, metadata !32, metadata !33, metadata !45, metadata !35, metadata !220, metadata !6}
!220 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!221 = metadata !{null, metadata !198, metadata !2, metadata !222, metadata !4, metadata !223, metadata !6}
!222 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!223 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!224 = metadata !{null, metadata !198, metadata !2, metadata !225, metadata !4, metadata !223, metadata !6}
!225 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!226 = metadata !{null, metadata !32, metadata !33, metadata !227, metadata !35, metadata !49, metadata !6}
!227 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<23> &"}
!228 = metadata !{null, metadata !103, metadata !104, metadata !229, metadata !106, metadata !107, metadata !6}
!229 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!230 = metadata !{null, metadata !32, metadata !33, metadata !231, metadata !35, metadata !71, metadata !6}
!231 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!232 = metadata !{null, metadata !32, metadata !33, metadata !231, metadata !35, metadata !52, metadata !6}
!233 = metadata !{null, metadata !32, metadata !33, metadata !234, metadata !35, metadata !71, metadata !6}
!234 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!235 = metadata !{null, metadata !32, metadata !33, metadata !234, metadata !35, metadata !46, metadata !6}
!236 = metadata !{null, metadata !103, metadata !104, metadata !237, metadata !106, metadata !107, metadata !6}
!237 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!238 = metadata !{null, metadata !32, metadata !33, metadata !239, metadata !35, metadata !71, metadata !6}
!239 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<11, false> &"}
!240 = metadata !{null, metadata !32, metadata !33, metadata !239, metadata !35, metadata !52, metadata !6}
!241 = metadata !{null, metadata !32, metadata !33, metadata !190, metadata !35, metadata !71, metadata !6}
!242 = metadata !{null, metadata !198, metadata !2, metadata !243, metadata !4, metadata !223, metadata !6}
!243 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!244 = metadata !{null, metadata !32, metadata !33, metadata !245, metadata !35, metadata !49, metadata !6}
!245 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<11> &"}
!246 = metadata !{null, metadata !32, metadata !33, metadata !247, metadata !35, metadata !49, metadata !6}
!247 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<52> &"}
!248 = metadata !{null, metadata !28, metadata !2, metadata !249, metadata !4, metadata !43, metadata !6}
!249 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"int"}
!250 = metadata !{null, metadata !28, metadata !2, metadata !186, metadata !4, metadata !43, metadata !6}
!251 = metadata !{null, metadata !32, metadata !33, metadata !136, metadata !35, metadata !252, metadata !6}
!252 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!253 = metadata !{null, metadata !32, metadata !33, metadata !110, metadata !35, metadata !71, metadata !6}
!254 = metadata !{null, metadata !32, metadata !33, metadata !255, metadata !35, metadata !71, metadata !6}
!255 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!256 = metadata !{null, metadata !32, metadata !33, metadata !255, metadata !35, metadata !46, metadata !6}
!257 = metadata !{null, metadata !32, metadata !33, metadata !258, metadata !35, metadata !71, metadata !6}
!258 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!259 = metadata !{null, metadata !32, metadata !33, metadata !260, metadata !35, metadata !71, metadata !6}
!260 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!261 = metadata !{null, metadata !28, metadata !2, metadata !262, metadata !4, metadata !43, metadata !6}
!262 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"int"}
!263 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !252, metadata !6}
!264 = metadata !{null, metadata !32, metadata !33, metadata !265, metadata !35, metadata !71, metadata !6}
!265 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!266 = metadata !{null, metadata !32, metadata !33, metadata !265, metadata !35, metadata !52, metadata !6}
!267 = metadata !{null, metadata !32, metadata !33, metadata !268, metadata !35, metadata !71, metadata !6}
!268 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!269 = metadata !{null, metadata !32, metadata !33, metadata !270, metadata !35, metadata !71, metadata !6}
!270 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!271 = metadata !{null, metadata !32, metadata !33, metadata !136, metadata !35, metadata !272, metadata !6}
!272 = metadata !{metadata !"kernel_arg_name", metadata !"a_re"}
!273 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !272, metadata !6}
!274 = metadata !{null, metadata !28, metadata !2, metadata !54, metadata !4, metadata !57, metadata !6}
!275 = metadata !{null, metadata !28, metadata !2, metadata !276, metadata !4, metadata !43, metadata !6}
!276 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!277 = metadata !{null, metadata !28, metadata !2, metadata !278, metadata !4, metadata !57, metadata !6}
!278 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"uint"}
!279 = metadata !{null, metadata !32, metadata !33, metadata !270, metadata !35, metadata !46, metadata !6}
!280 = metadata !{null, metadata !28, metadata !2, metadata !281, metadata !4, metadata !43, metadata !6}
!281 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, false> &"}
!282 = metadata !{null, metadata !32, metadata !33, metadata !283, metadata !35, metadata !46, metadata !6}
!283 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!284 = metadata !{null, metadata !32, metadata !33, metadata !285, metadata !35, metadata !286, metadata !6}
!285 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32>"}
!286 = metadata !{metadata !"kernel_arg_name", metadata !"data"}
!287 = metadata !{null, metadata !32, metadata !33, metadata !288, metadata !35, metadata !83, metadata !6}
!288 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<float> &"}
!289 = metadata !{null, metadata !28, metadata !2, metadata !290, metadata !4, metadata !57, metadata !6}
!290 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!291 = metadata !{null, metadata !28, metadata !2, metadata !292, metadata !4, metadata !43, metadata !6}
!292 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<32, true> &"}
!293 = metadata !{null, metadata !32, metadata !33, metadata !192, metadata !35, metadata !46, metadata !6}
!294 = metadata !{null, metadata !28, metadata !2, metadata !295, metadata !4, metadata !57, metadata !6}
!295 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"uint"}
!296 = metadata !{null, metadata !28, metadata !2, metadata !297, metadata !4, metadata !43, metadata !6}
!297 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"const ap_int_base<32, false> &"}
!298 = metadata !{null, metadata !28, metadata !2, metadata !299, metadata !4, metadata !43, metadata !6}
!299 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<23, false> &"}
!300 = metadata !{null, metadata !32, metadata !33, metadata !301, metadata !35, metadata !46, metadata !6}
!301 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, true> &"}
!302 = metadata !{null, metadata !28, metadata !2, metadata !303, metadata !4, metadata !43, metadata !6}
!303 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!304 = metadata !{null, metadata !170, metadata !33, metadata !305, metadata !35, metadata !306, metadata !6}
!305 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t*"}
!306 = metadata !{metadata !"kernel_arg_name", metadata !"mask_table"}
!307 = metadata !{null, metadata !28, metadata !2, metadata !308, metadata !4, metadata !57, metadata !6}
!308 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"ulong"}
!309 = metadata !{null, metadata !32, metadata !33, metadata !260, metadata !35, metadata !46, metadata !6}
!310 = metadata !{null, metadata !28, metadata !2, metadata !311, metadata !4, metadata !43, metadata !6}
!311 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"const ap_int_base<64, false> &"}
!312 = metadata !{null, metadata !28, metadata !2, metadata !313, metadata !4, metadata !43, metadata !6}
!313 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"uint"}
!314 = metadata !{null, metadata !170, metadata !33, metadata !315, metadata !35, metadata !306, metadata !6}
!315 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t*"}
!316 = metadata !{null, metadata !317, metadata !104, metadata !318, metadata !106, metadata !319, metadata !6}
!317 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!318 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!319 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !"dummy"}
!320 = metadata !{null, metadata !32, metadata !33, metadata !321, metadata !35, metadata !322, metadata !6}
!321 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!322 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!323 = metadata !{null, metadata !32, metadata !33, metadata !324, metadata !35, metadata !46, metadata !6}
!324 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!325 = metadata !{null, metadata !32, metadata !33, metadata !326, metadata !35, metadata !46, metadata !6}
!326 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<65, 65, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!327 = metadata !{null, metadata !32, metadata !33, metadata !328, metadata !35, metadata !46, metadata !6}
!328 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!329 = metadata !{null, metadata !32, metadata !33, metadata !330, metadata !35, metadata !46, metadata !6}
!330 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!331 = metadata !{null, metadata !198, metadata !2, metadata !332, metadata !4, metadata !223, metadata !6}
!332 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!333 = metadata !{null, metadata !28, metadata !2, metadata !334, metadata !4, metadata !57, metadata !6}
!334 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!335 = metadata !{null, metadata !32, metadata !33, metadata !45, metadata !35, metadata !336, metadata !6}
!336 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!337 = metadata !{null, metadata !32, metadata !33, metadata !338, metadata !35, metadata !49, metadata !6}
!338 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!339 = metadata !{null, metadata !32, metadata !33, metadata !340, metadata !35, metadata !46, metadata !6}
!340 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!341 = metadata !{null, metadata !32, metadata !33, metadata !342, metadata !35, metadata !46, metadata !6}
!342 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<87, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!343 = metadata !{null, metadata !32, metadata !33, metadata !344, metadata !35, metadata !46, metadata !6}
!344 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!345 = metadata !{null, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !6}
!346 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!347 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!348 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!349 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!350 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!351 = metadata !{null, metadata !28, metadata !2, metadata !352, metadata !4, metadata !43, metadata !6}
!352 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &", metadata !"int"}
!353 = metadata !{null, metadata !32, metadata !33, metadata !354, metadata !35, metadata !49, metadata !6}
!354 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &"}
!355 = metadata !{null, metadata !32, metadata !33, metadata !45, metadata !35, metadata !356, metadata !6}
!356 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!357 = metadata !{null, metadata !32, metadata !33, metadata !358, metadata !35, metadata !46, metadata !6}
!358 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<110, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!359 = metadata !{null, metadata !32, metadata !33, metadata !270, metadata !35, metadata !220, metadata !6}
!360 = metadata !{null, metadata !198, metadata !2, metadata !361, metadata !4, metadata !223, metadata !6}
!361 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!362 = metadata !{null, metadata !103, metadata !104, metadata !363, metadata !106, metadata !107, metadata !6}
!363 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!364 = metadata !{null, metadata !32, metadata !33, metadata !45, metadata !35, metadata !175, metadata !6}
!365 = metadata !{null, metadata !32, metadata !33, metadata !45, metadata !35, metadata !366, metadata !6}
!366 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!367 = metadata !{null, metadata !32, metadata !33, metadata !338, metadata !35, metadata !46, metadata !6}
!368 = metadata !{null, metadata !32, metadata !33, metadata !369, metadata !35, metadata !46, metadata !6}
!369 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!370 = metadata !{null, metadata !32, metadata !33, metadata !371, metadata !35, metadata !46, metadata !6}
!371 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!372 = metadata !{null, metadata !317, metadata !104, metadata !373, metadata !106, metadata !319, metadata !6}
!373 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!374 = metadata !{null, metadata !317, metadata !104, metadata !375, metadata !106, metadata !319, metadata !6}
!375 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!376 = metadata !{null, metadata !32, metadata !33, metadata !377, metadata !35, metadata !46, metadata !6}
!377 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<116, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!378 = metadata !{null, metadata !32, metadata !33, metadata !379, metadata !35, metadata !46, metadata !6}
!379 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<116, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!380 = metadata !{null, metadata !28, metadata !2, metadata !381, metadata !4, metadata !43, metadata !6}
!381 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &", metadata !"int"}
!382 = metadata !{null, metadata !32, metadata !33, metadata !383, metadata !35, metadata !49, metadata !6}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &"}
!384 = metadata !{null, metadata !32, metadata !33, metadata !385, metadata !35, metadata !46, metadata !6}
!385 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<168, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!386 = metadata !{null, metadata !198, metadata !2, metadata !387, metadata !4, metadata !223, metadata !6}
!387 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!388 = metadata !{null, metadata !103, metadata !104, metadata !389, metadata !106, metadata !107, metadata !6}
!389 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!390 = metadata !{null, metadata !32, metadata !33, metadata !391, metadata !35, metadata !46, metadata !6}
!391 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!392 = metadata !{null, metadata !32, metadata !33, metadata !393, metadata !35, metadata !46, metadata !6}
!393 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!394 = metadata !{null, metadata !317, metadata !104, metadata !395, metadata !106, metadata !319, metadata !6}
!395 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!396 = metadata !{null, metadata !28, metadata !2, metadata !397, metadata !4, metadata !57, metadata !6}
!397 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"ulong"}
!398 = metadata !{null, metadata !28, metadata !2, metadata !399, metadata !4, metadata !43, metadata !6}
!399 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<64, false> &"}
!400 = metadata !{null, metadata !32, metadata !33, metadata !401, metadata !35, metadata !46, metadata !6}
!401 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, false> &"}
!402 = metadata !{null, metadata !32, metadata !33, metadata !403, metadata !35, metadata !286, metadata !6}
!403 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<64>"}
!404 = metadata !{null, metadata !32, metadata !33, metadata !405, metadata !35, metadata !83, metadata !6}
!405 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<double> &"}
!406 = metadata !{null, metadata !28, metadata !2, metadata !407, metadata !4, metadata !43, metadata !6}
!407 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!408 = metadata !{null, metadata !28, metadata !2, metadata !409, metadata !4, metadata !410, metadata !6}
!409 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, false> &"}
!410 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!411 = metadata !{null, metadata !28, metadata !2, metadata !412, metadata !4, metadata !43, metadata !6}
!412 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, false> &"}
!413 = metadata !{null, metadata !28, metadata !2, metadata !414, metadata !4, metadata !410, metadata !6}
!414 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong", metadata !"const ap_int_base<52, false> &"}
!415 = metadata !{null, metadata !28, metadata !2, metadata !416, metadata !4, metadata !43, metadata !6}
!416 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<52, false> &"}
!417 = metadata !{null, metadata !143, metadata !104, metadata !147, metadata !106, metadata !418, metadata !6}
!418 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s", metadata !"c"}
!419 = metadata !{null, metadata !32, metadata !33, metadata !85, metadata !35, metadata !71, metadata !6}
!420 = metadata !{null, metadata !198, metadata !2, metadata !421, metadata !4, metadata !223, metadata !6}
!421 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<4, false>*", metadata !"int"}
!422 = metadata !{null, metadata !32, metadata !33, metadata !423, metadata !35, metadata !46, metadata !6}
!423 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!424 = metadata !{null, metadata !28, metadata !2, metadata !425, metadata !4, metadata !43, metadata !6}
!425 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, true> &"}
!426 = metadata !{null, metadata !32, metadata !33, metadata !427, metadata !35, metadata !46, metadata !6}
!427 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!428 = metadata !{null, metadata !32, metadata !33, metadata !429, metadata !35, metadata !49, metadata !6}
!429 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!430 = metadata !{null, metadata !32, metadata !33, metadata !431, metadata !35, metadata !49, metadata !6}
!431 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!432 = metadata !{null, metadata !32, metadata !33, metadata !431, metadata !35, metadata !46, metadata !6}
!433 = metadata !{null, metadata !32, metadata !33, metadata !434, metadata !35, metadata !46, metadata !6}
!434 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!435 = metadata !{null, metadata !32, metadata !33, metadata !436, metadata !35, metadata !46, metadata !6}
!436 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!437 = metadata !{null, metadata !32, metadata !33, metadata !438, metadata !35, metadata !49, metadata !6}
!438 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<13, -2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!439 = metadata !{null, metadata !32, metadata !33, metadata !440, metadata !35, metadata !46, metadata !6}
!440 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, -16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!441 = metadata !{null, metadata !32, metadata !33, metadata !442, metadata !35, metadata !49, metadata !6}
!442 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<21, -1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!443 = metadata !{null, metadata !32, metadata !33, metadata !444, metadata !35, metadata !46, metadata !6}
!444 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<38, -8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!445 = metadata !{null, metadata !32, metadata !33, metadata !446, metadata !35, metadata !46, metadata !6}
!446 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!447 = metadata !{null, metadata !32, metadata !33, metadata !448, metadata !35, metadata !46, metadata !6}
!448 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!449 = metadata !{null, metadata !317, metadata !104, metadata !450, metadata !106, metadata !451, metadata !6}
!450 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<31, 1>", metadata !"float &", metadata !"int"}
!451 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"result", metadata !"prescale"}
!452 = metadata !{null, metadata !28, metadata !2, metadata !453, metadata !4, metadata !57, metadata !6}
!453 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!454 = metadata !{null, metadata !32, metadata !33, metadata !455, metadata !35, metadata !46, metadata !6}
!455 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!456 = metadata !{null, metadata !32, metadata !33, metadata !457, metadata !35, metadata !46, metadata !6}
!457 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!458 = metadata !{null, metadata !32, metadata !33, metadata !459, metadata !35, metadata !460, metadata !6}
!459 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<1 + SIG_BITS, 1>"}
!460 = metadata !{metadata !"kernel_arg_name", metadata !"mantissa"}
!461 = metadata !{null, metadata !103, metadata !104, metadata !462, metadata !106, metadata !107, metadata !6}
!462 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!463 = metadata !{null, metadata !32, metadata !33, metadata !464, metadata !35, metadata !46, metadata !6}
!464 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!465 = metadata !{null, metadata !32, metadata !33, metadata !464, metadata !35, metadata !71, metadata !6}
!466 = metadata !{null, metadata !103, metadata !104, metadata !467, metadata !106, metadata !107, metadata !6}
!467 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!468 = metadata !{null, metadata !32, metadata !33, metadata !469, metadata !35, metadata !71, metadata !6}
!469 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!470 = metadata !{null, metadata !32, metadata !33, metadata !471, metadata !35, metadata !71, metadata !6}
!471 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &"}
!472 = metadata !{null, metadata !32, metadata !33, metadata !473, metadata !35, metadata !46, metadata !6}
!473 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!474 = metadata !{null, metadata !103, metadata !104, metadata !475, metadata !106, metadata !107, metadata !6}
!475 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!476 = metadata !{null, metadata !32, metadata !33, metadata !477, metadata !35, metadata !71, metadata !6}
!477 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!478 = metadata !{null, metadata !32, metadata !33, metadata !471, metadata !35, metadata !46, metadata !6}
!479 = metadata !{null, metadata !32, metadata !33, metadata !457, metadata !35, metadata !49, metadata !6}
!480 = metadata !{null, metadata !32, metadata !33, metadata !481, metadata !35, metadata !46, metadata !6}
!481 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!482 = metadata !{null, metadata !28, metadata !2, metadata !483, metadata !4, metadata !410, metadata !6}
!483 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!484 = metadata !{null, metadata !32, metadata !33, metadata !485, metadata !35, metadata !49, metadata !6}
!485 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!486 = metadata !{null, metadata !32, metadata !33, metadata !485, metadata !35, metadata !46, metadata !6}
!487 = metadata !{null, metadata !32, metadata !33, metadata !488, metadata !35, metadata !46, metadata !6}
!488 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!489 = metadata !{null, metadata !32, metadata !33, metadata !490, metadata !35, metadata !49, metadata !6}
!490 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!491 = metadata !{null, metadata !32, metadata !33, metadata !492, metadata !35, metadata !46, metadata !6}
!492 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, -14, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!493 = metadata !{null, metadata !32, metadata !33, metadata !494, metadata !35, metadata !49, metadata !6}
!494 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<23, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!495 = metadata !{null, metadata !32, metadata !33, metadata !496, metadata !35, metadata !46, metadata !6}
!496 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, -6, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!497 = metadata !{null, metadata !32, metadata !33, metadata !498, metadata !35, metadata !46, metadata !6}
!498 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<29, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!499 = metadata !{null, metadata !32, metadata !33, metadata !500, metadata !35, metadata !46, metadata !6}
!500 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!501 = metadata !{null, metadata !32, metadata !33, metadata !502, metadata !35, metadata !49, metadata !6}
!502 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!503 = metadata !{null, metadata !32, metadata !33, metadata !504, metadata !35, metadata !46, metadata !6}
!504 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<18, -14, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!505 = metadata !{null, metadata !32, metadata !33, metadata !506, metadata !35, metadata !46, metadata !6}
!506 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<17, -7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!507 = metadata !{null, metadata !32, metadata !33, metadata !508, metadata !35, metadata !46, metadata !6}
!508 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!509 = metadata !{null, metadata !32, metadata !33, metadata !510, metadata !35, metadata !46, metadata !6}
!510 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!511 = metadata !{null, metadata !32, metadata !33, metadata !429, metadata !35, metadata !46, metadata !6}
!512 = metadata !{null, metadata !103, metadata !104, metadata !513, metadata !106, metadata !107, metadata !6}
!513 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!514 = metadata !{null, metadata !32, metadata !33, metadata !515, metadata !35, metadata !46, metadata !6}
!515 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!516 = metadata !{null, metadata !32, metadata !33, metadata !515, metadata !35, metadata !71, metadata !6}
!517 = metadata !{null, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !6}
!518 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!519 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!520 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &"}
!521 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!522 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex"}
!523 = metadata !{null, metadata !32, metadata !33, metadata !427, metadata !35, metadata !49, metadata !6}
!524 = metadata !{null, metadata !32, metadata !33, metadata !525, metadata !35, metadata !49, metadata !6}
!525 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!526 = metadata !{null, metadata !32, metadata !33, metadata !270, metadata !35, metadata !356, metadata !6}
!527 = metadata !{null, metadata !32, metadata !33, metadata !528, metadata !35, metadata !46, metadata !6}
!528 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!529 = metadata !{null, metadata !317, metadata !104, metadata !530, metadata !106, metadata !531, metadata !6}
!530 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!531 = metadata !{metadata !"kernel_arg_name", metadata !"qb", metadata !"r", metadata !"s"}
!532 = metadata !{null, metadata !32, metadata !33, metadata !533, metadata !35, metadata !46, metadata !6}
!533 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!534 = metadata !{null, metadata !32, metadata !33, metadata !535, metadata !35, metadata !46, metadata !6}
!535 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!536 = metadata !{null, metadata !32, metadata !33, metadata !537, metadata !35, metadata !36, metadata !6}
!537 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<49, 0>"}
!538 = metadata !{null, metadata !103, metadata !104, metadata !539, metadata !106, metadata !107, metadata !6}
!539 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int", metadata !"int"}
!540 = metadata !{null, metadata !32, metadata !33, metadata !541, metadata !35, metadata !71, metadata !6}
!541 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<19, false> &"}
!542 = metadata !{null, metadata !32, metadata !33, metadata !541, metadata !35, metadata !52, metadata !6}
!543 = metadata !{null, metadata !32, metadata !33, metadata !544, metadata !35, metadata !71, metadata !6}
!544 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<19, false> &"}
!545 = metadata !{null, metadata !32, metadata !33, metadata !544, metadata !35, metadata !46, metadata !6}
!546 = metadata !{null, metadata !198, metadata !2, metadata !547, metadata !4, metadata !223, metadata !6}
!547 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int"}
!548 = metadata !{null, metadata !103, metadata !104, metadata !549, metadata !106, metadata !107, metadata !6}
!549 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!550 = metadata !{null, metadata !32, metadata !33, metadata !551, metadata !35, metadata !71, metadata !6}
!551 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!552 = metadata !{null, metadata !32, metadata !33, metadata !553, metadata !35, metadata !71, metadata !6}
!553 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, false> &"}
!554 = metadata !{null, metadata !32, metadata !33, metadata !553, metadata !35, metadata !46, metadata !6}
!555 = metadata !{null, metadata !28, metadata !2, metadata !556, metadata !4, metadata !410, metadata !6}
!556 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!557 = metadata !{null, metadata !32, metadata !33, metadata !528, metadata !35, metadata !49, metadata !6}
!558 = metadata !{null, metadata !32, metadata !33, metadata !559, metadata !35, metadata !46, metadata !6}
!559 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<82, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!560 = metadata !{null, metadata !32, metadata !33, metadata !561, metadata !35, metadata !46, metadata !6}
!561 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<49, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!562 = metadata !{null, metadata !198, metadata !2, metadata !563, metadata !4, metadata !223, metadata !6}
!563 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<3, false>*", metadata !"int"}
!564 = metadata !{null, metadata !28, metadata !2, metadata !565, metadata !4, metadata !43, metadata !6}
!565 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<3, false> &", metadata !"int"}
!566 = metadata !{null, metadata !32, metadata !33, metadata !567, metadata !35, metadata !46, metadata !6}
!567 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<95, 27, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!568 = metadata !{null, metadata !32, metadata !33, metadata !569, metadata !35, metadata !46, metadata !6}
!569 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!570 = metadata !{null, metadata !32, metadata !33, metadata !423, metadata !35, metadata !49, metadata !6}
!571 = metadata !{null, metadata !103, metadata !104, metadata !572, metadata !106, metadata !107, metadata !6}
!572 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false>*", metadata !"int", metadata !"int"}
!573 = metadata !{null, metadata !32, metadata !33, metadata !574, metadata !35, metadata !71, metadata !6}
!574 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<95, false> &"}
!575 = metadata !{null, metadata !32, metadata !33, metadata !574, metadata !35, metadata !52, metadata !6}
!576 = metadata !{null, metadata !32, metadata !33, metadata !577, metadata !35, metadata !71, metadata !6}
!577 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<95, false> &"}
!578 = metadata !{null, metadata !103, metadata !104, metadata !579, metadata !106, metadata !107, metadata !6}
!579 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!580 = metadata !{null, metadata !317, metadata !104, metadata !581, metadata !106, metadata !582, metadata !6}
!581 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<71>", metadata !"ap_uint<24>", metadata !"ap_uint<71 + 24> &"}
!582 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"m"}
!583 = metadata !{null, metadata !32, metadata !33, metadata !584, metadata !35, metadata !71, metadata !6}
!584 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &"}
!585 = metadata !{null, metadata !32, metadata !33, metadata !584, metadata !35, metadata !46, metadata !6}
!586 = metadata !{null, metadata !103, metadata !104, metadata !587, metadata !106, metadata !107, metadata !6}
!587 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<41, false>*", metadata !"int", metadata !"int"}
!588 = metadata !{null, metadata !32, metadata !33, metadata !589, metadata !35, metadata !71, metadata !6}
!589 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<41, false> &"}
!590 = metadata !{null, metadata !32, metadata !33, metadata !589, metadata !35, metadata !52, metadata !6}
!591 = metadata !{null, metadata !32, metadata !33, metadata !584, metadata !35, metadata !49, metadata !6}
!592 = metadata !{null, metadata !28, metadata !2, metadata !593, metadata !4, metadata !43, metadata !6}
!593 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &", metadata !"int"}
!594 = metadata !{null, metadata !103, metadata !104, metadata !595, metadata !106, metadata !107, metadata !6}
!595 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<71, false>*", metadata !"int", metadata !"int"}
!596 = metadata !{null, metadata !28, metadata !2, metadata !597, metadata !4, metadata !598, metadata !6}
!597 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &", metadata !"const ap_int_base<24, false> &"}
!598 = metadata !{metadata !"kernel_arg_name", metadata !"op1", metadata !"op2"}
!599 = metadata !{null, metadata !32, metadata !33, metadata !600, metadata !35, metadata !52, metadata !6}
!600 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &"}
!601 = metadata !{null, metadata !28, metadata !2, metadata !602, metadata !4, metadata !43, metadata !6}
!602 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &", metadata !"const ap_int_base<24, false> &"}
!603 = metadata !{null, metadata !32, metadata !33, metadata !604, metadata !35, metadata !46, metadata !6}
!604 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!605 = metadata !{null, metadata !32, metadata !33, metadata !606, metadata !35, metadata !46, metadata !6}
!606 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &"}
!607 = metadata !{null, metadata !32, metadata !33, metadata !577, metadata !35, metadata !46, metadata !6}
!608 = metadata !{null, metadata !32, metadata !33, metadata !609, metadata !35, metadata !49, metadata !6}
!609 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<41> &"}
!610 = metadata !{null, metadata !28, metadata !2, metadata !611, metadata !4, metadata !612, metadata !6}
!611 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"float"}
!612 = metadata !{metadata !"kernel_arg_name", metadata !"exp", metadata !"dummy"}
!613 = metadata !{null, metadata !103, metadata !104, metadata !614, metadata !106, metadata !107, metadata !6}
!614 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<100, false>*", metadata !"int", metadata !"int"}
!615 = metadata !{null, metadata !103, metadata !104, metadata !616, metadata !106, metadata !107, metadata !6}
!616 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<9, true>*", metadata !"int", metadata !"int"}
!617 = metadata !{null, metadata !32, metadata !33, metadata !618, metadata !35, metadata !52, metadata !6}
!618 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<9, true> &"}
!619 = metadata !{null, metadata !32, metadata !33, metadata !620, metadata !35, metadata !52, metadata !6}
!620 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &"}
!621 = metadata !{null, metadata !28, metadata !2, metadata !622, metadata !4, metadata !43, metadata !6}
!622 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"int"}
!623 = metadata !{null, metadata !32, metadata !33, metadata !624, metadata !35, metadata !49, metadata !6}
!624 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<71> &"}
!625 = metadata !{null, metadata !198, metadata !2, metadata !626, metadata !4, metadata !223, metadata !6}
!626 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int"}
!627 = metadata !{null, metadata !103, metadata !104, metadata !628, metadata !106, metadata !107, metadata !6}
!628 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!629 = metadata !{null, metadata !32, metadata !33, metadata !630, metadata !35, metadata !49, metadata !6}
!630 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<8> &"}
!631 = metadata !{null, metadata !143, metadata !104, metadata !144, metadata !106, metadata !632, metadata !6}
!632 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s_out", metadata !"c_out"}
!633 = metadata !{null, metadata !317, metadata !104, metadata !634, metadata !106, metadata !632, metadata !6}
!634 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double &", metadata !"double &"}
!635 = metadata !{null, metadata !32, metadata !33, metadata !636, metadata !35, metadata !46, metadata !6}
!636 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<78> &"}
!637 = metadata !{null, metadata !32, metadata !33, metadata !638, metadata !35, metadata !99, metadata !6}
!638 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>"}
!639 = metadata !{null, metadata !28, metadata !2, metadata !640, metadata !4, metadata !43, metadata !6}
!640 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"int"}
!641 = metadata !{null, metadata !32, metadata !33, metadata !642, metadata !35, metadata !71, metadata !6}
!642 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!643 = metadata !{null, metadata !32, metadata !33, metadata !644, metadata !35, metadata !71, metadata !6}
!644 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &"}
!645 = metadata !{null, metadata !32, metadata !33, metadata !644, metadata !35, metadata !46, metadata !6}
!646 = metadata !{null, metadata !32, metadata !33, metadata !647, metadata !35, metadata !46, metadata !6}
!647 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<78, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!648 = metadata !{null, metadata !32, metadata !33, metadata !649, metadata !35, metadata !46, metadata !6}
!649 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!650 = metadata !{null, metadata !103, metadata !104, metadata !651, metadata !106, metadata !107, metadata !6}
!651 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<78, false>*", metadata !"int", metadata !"int"}
!652 = metadata !{null, metadata !32, metadata !33, metadata !653, metadata !35, metadata !71, metadata !6}
!653 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<78, false> &"}
!654 = metadata !{null, metadata !32, metadata !33, metadata !653, metadata !35, metadata !52, metadata !6}
!655 = metadata !{null, metadata !103, metadata !104, metadata !656, metadata !106, metadata !107, metadata !6}
!656 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!657 = metadata !{null, metadata !28, metadata !2, metadata !658, metadata !4, metadata !43, metadata !6}
!658 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<78, true> &"}
!659 = metadata !{null, metadata !32, metadata !33, metadata !660, metadata !35, metadata !46, metadata !6}
!660 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &"}
!661 = metadata !{null, metadata !32, metadata !33, metadata !662, metadata !35, metadata !46, metadata !6}
!662 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<80, true> &"}
!663 = metadata !{null, metadata !28, metadata !2, metadata !664, metadata !4, metadata !43, metadata !6}
!664 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &", metadata !"int"}
!665 = metadata !{null, metadata !32, metadata !33, metadata !666, metadata !35, metadata !46, metadata !6}
!666 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!667 = metadata !{null, metadata !32, metadata !33, metadata !666, metadata !35, metadata !71, metadata !6}
!668 = metadata !{null, metadata !317, metadata !104, metadata !669, metadata !106, metadata !670, metadata !6}
!669 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &"}
!670 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"z"}
!671 = metadata !{null, metadata !317, metadata !104, metadata !672, metadata !106, metadata !673, metadata !6}
!672 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!673 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"add"}
!674 = metadata !{null, metadata !32, metadata !33, metadata !675, metadata !35, metadata !49, metadata !6}
!675 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!676 = metadata !{null, metadata !32, metadata !33, metadata !675, metadata !35, metadata !46, metadata !6}
!677 = metadata !{null, metadata !32, metadata !33, metadata !678, metadata !35, metadata !46, metadata !6}
!678 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!679 = metadata !{null, metadata !32, metadata !33, metadata !680, metadata !35, metadata !46, metadata !6}
!680 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<80, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!681 = metadata !{null, metadata !32, metadata !33, metadata !682, metadata !35, metadata !46, metadata !6}
!682 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<80, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!683 = metadata !{null, metadata !32, metadata !33, metadata !684, metadata !35, metadata !46, metadata !6}
!684 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!685 = metadata !{null, metadata !32, metadata !33, metadata !686, metadata !35, metadata !46, metadata !6}
!686 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!687 = metadata !{null, metadata !32, metadata !33, metadata !688, metadata !35, metadata !46, metadata !6}
!688 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!689 = metadata !{null, metadata !317, metadata !104, metadata !690, metadata !106, metadata !673, metadata !6}
!690 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"_Bool"}
!691 = metadata !{null, metadata !32, metadata !33, metadata !678, metadata !35, metadata !49, metadata !6}
!692 = metadata !{null, metadata !317, metadata !104, metadata !693, metadata !106, metadata !673, metadata !6}
!693 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!694 = metadata !{null, metadata !198, metadata !2, metadata !695, metadata !4, metadata !223, metadata !6}
!695 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!696 = metadata !{null, metadata !32, metadata !33, metadata !697, metadata !35, metadata !46, metadata !6}
!697 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!698 = metadata !{null, metadata !32, metadata !33, metadata !697, metadata !35, metadata !71, metadata !6}
!699 = metadata !{null, metadata !32, metadata !33, metadata !660, metadata !35, metadata !71, metadata !6}
!700 = metadata !{null, metadata !32, metadata !33, metadata !701, metadata !35, metadata !46, metadata !6}
!701 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!702 = metadata !{null, metadata !28, metadata !2, metadata !703, metadata !4, metadata !43, metadata !6}
!703 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &", metadata !"int"}
!704 = metadata !{null, metadata !28, metadata !2, metadata !705, metadata !4, metadata !43, metadata !6}
!705 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!706 = metadata !{null, metadata !198, metadata !2, metadata !707, metadata !4, metadata !223, metadata !6}
!707 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!708 = metadata !{null, metadata !32, metadata !33, metadata !709, metadata !35, metadata !71, metadata !6}
!709 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<100, false> &"}
!710 = metadata !{null, metadata !32, metadata !33, metadata !709, metadata !35, metadata !46, metadata !6}
!711 = metadata !{null, metadata !103, metadata !104, metadata !712, metadata !106, metadata !107, metadata !6}
!712 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!713 = metadata !{null, metadata !32, metadata !33, metadata !636, metadata !35, metadata !49, metadata !6}
!714 = metadata !{null, metadata !317, metadata !104, metadata !715, metadata !106, metadata !716, metadata !6}
!715 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"ap_uint<3> &", metadata !"ap_uint<78> &"}
!716 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout"}
!717 = metadata !{null, metadata !32, metadata !33, metadata !136, metadata !35, metadata !99, metadata !6}
!718 = metadata !{null, metadata !28, metadata !2, metadata !719, metadata !4, metadata !43, metadata !6}
!719 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<52, false> &"}
!720 = metadata !{null, metadata !103, metadata !104, metadata !721, metadata !106, metadata !107, metadata !6}
!721 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<79, false>*", metadata !"int", metadata !"int"}
!722 = metadata !{null, metadata !32, metadata !33, metadata !723, metadata !35, metadata !52, metadata !6}
!723 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<79, false> &"}
!724 = metadata !{null, metadata !28, metadata !2, metadata !725, metadata !4, metadata !43, metadata !6}
!725 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"const ap_int_base<79, false> &"}
!726 = metadata !{null, metadata !32, metadata !33, metadata !727, metadata !35, metadata !46, metadata !6}
!727 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!728 = metadata !{null, metadata !103, metadata !104, metadata !729, metadata !106, metadata !107, metadata !6}
!729 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<156, false>*", metadata !"int", metadata !"int"}
!730 = metadata !{null, metadata !32, metadata !33, metadata !731, metadata !35, metadata !52, metadata !6}
!731 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<156, false> &"}
!732 = metadata !{null, metadata !317, metadata !104, metadata !733, metadata !106, metadata !582, metadata !6}
!733 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>", metadata !"ap_uint<78>", metadata !"ap_uint<78 + 78> &"}
!734 = metadata !{null, metadata !32, metadata !33, metadata !735, metadata !35, metadata !46, metadata !6}
!735 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<188> &"}
!736 = metadata !{null, metadata !32, metadata !33, metadata !737, metadata !35, metadata !49, metadata !6}
!737 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<156> &"}
!738 = metadata !{null, metadata !317, metadata !104, metadata !739, metadata !106, metadata !582, metadata !6}
!739 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<94>", metadata !"ap_uint<94>", metadata !"ap_uint<2 * 94> &"}
!740 = metadata !{null, metadata !103, metadata !104, metadata !741, metadata !106, metadata !107, metadata !6}
!741 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, false>*", metadata !"int", metadata !"int"}
!742 = metadata !{null, metadata !32, metadata !33, metadata !743, metadata !35, metadata !71, metadata !6}
!743 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<48, false> &"}
!744 = metadata !{null, metadata !32, metadata !33, metadata !743, metadata !35, metadata !52, metadata !6}
!745 = metadata !{null, metadata !32, metadata !33, metadata !746, metadata !35, metadata !71, metadata !6}
!746 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &"}
!747 = metadata !{null, metadata !32, metadata !33, metadata !746, metadata !35, metadata !46, metadata !6}
!748 = metadata !{null, metadata !103, metadata !104, metadata !749, metadata !106, metadata !107, metadata !6}
!749 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<188, false>*", metadata !"int", metadata !"int"}
!750 = metadata !{null, metadata !32, metadata !33, metadata !751, metadata !35, metadata !49, metadata !6}
!751 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, false> &"}
!752 = metadata !{null, metadata !28, metadata !2, metadata !753, metadata !4, metadata !43, metadata !6}
!753 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &", metadata !"int"}
!754 = metadata !{null, metadata !32, metadata !33, metadata !755, metadata !35, metadata !46, metadata !6}
!755 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<34> &"}
!756 = metadata !{null, metadata !32, metadata !33, metadata !757, metadata !35, metadata !49, metadata !6}
!757 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<48> &"}
!758 = metadata !{null, metadata !103, metadata !104, metadata !759, metadata !106, metadata !107, metadata !6}
!759 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<94, false>*", metadata !"int", metadata !"int"}
!760 = metadata !{null, metadata !28, metadata !2, metadata !761, metadata !4, metadata !762, metadata !6}
!761 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &", metadata !"const ap_range_ref<94, false> &"}
!762 = metadata !{metadata !"kernel_arg_name", metadata !"lhs", metadata !"rhs"}
!763 = metadata !{null, metadata !32, metadata !33, metadata !764, metadata !35, metadata !52, metadata !6}
!764 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &"}
!765 = metadata !{null, metadata !28, metadata !2, metadata !766, metadata !4, metadata !43, metadata !6}
!766 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &", metadata !"const ap_int_base<94, false> &"}
!767 = metadata !{null, metadata !32, metadata !33, metadata !768, metadata !35, metadata !46, metadata !6}
!768 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &"}
!769 = metadata !{null, metadata !32, metadata !33, metadata !770, metadata !35, metadata !46, metadata !6}
!770 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<188, false> &"}
!771 = metadata !{null, metadata !32, metadata !33, metadata !755, metadata !35, metadata !49, metadata !6}
!772 = metadata !{null, metadata !32, metadata !33, metadata !773, metadata !35, metadata !46, metadata !6}
!773 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<78> &"}
!774 = metadata !{null, metadata !103, metadata !104, metadata !775, metadata !106, metadata !107, metadata !6}
!775 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<56, false>*", metadata !"int", metadata !"int"}
!776 = metadata !{null, metadata !32, metadata !33, metadata !777, metadata !35, metadata !52, metadata !6}
!777 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<56, false> &"}
!778 = metadata !{null, metadata !103, metadata !104, metadata !779, metadata !106, metadata !107, metadata !6}
!779 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<178, false>*", metadata !"int", metadata !"int"}
!780 = metadata !{null, metadata !32, metadata !33, metadata !781, metadata !35, metadata !52, metadata !6}
!781 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<178, false> &"}
!782 = metadata !{null, metadata !28, metadata !2, metadata !783, metadata !4, metadata !43, metadata !6}
!783 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &", metadata !"int"}
!784 = metadata !{null, metadata !32, metadata !33, metadata !785, metadata !35, metadata !46, metadata !6}
!785 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &"}
!786 = metadata !{null, metadata !32, metadata !33, metadata !787, metadata !35, metadata !49, metadata !6}
!787 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<56> &"}
!788 = metadata !{null, metadata !317, metadata !104, metadata !789, metadata !106, metadata !582, metadata !6}
!789 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<125>", metadata !"ap_uint<53>", metadata !"ap_uint<125 + 53> &"}
!790 = metadata !{null, metadata !32, metadata !33, metadata !791, metadata !35, metadata !71, metadata !6}
!791 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &"}
!792 = metadata !{null, metadata !32, metadata !33, metadata !791, metadata !35, metadata !46, metadata !6}
!793 = metadata !{null, metadata !103, metadata !104, metadata !794, metadata !106, metadata !107, metadata !6}
!794 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<70, false>*", metadata !"int", metadata !"int"}
!795 = metadata !{null, metadata !32, metadata !33, metadata !796, metadata !35, metadata !71, metadata !6}
!796 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<70, false> &"}
!797 = metadata !{null, metadata !32, metadata !33, metadata !796, metadata !35, metadata !52, metadata !6}
!798 = metadata !{null, metadata !32, metadata !33, metadata !791, metadata !35, metadata !49, metadata !6}
!799 = metadata !{null, metadata !28, metadata !2, metadata !800, metadata !4, metadata !43, metadata !6}
!800 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &", metadata !"int"}
!801 = metadata !{null, metadata !103, metadata !104, metadata !802, metadata !106, metadata !107, metadata !6}
!802 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<125, false>*", metadata !"int", metadata !"int"}
!803 = metadata !{null, metadata !28, metadata !2, metadata !804, metadata !4, metadata !598, metadata !6}
!804 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &", metadata !"const ap_int_base<53, false> &"}
!805 = metadata !{null, metadata !32, metadata !33, metadata !806, metadata !35, metadata !52, metadata !6}
!806 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &"}
!807 = metadata !{null, metadata !28, metadata !2, metadata !808, metadata !4, metadata !43, metadata !6}
!808 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &", metadata !"const ap_int_base<53, false> &"}
!809 = metadata !{null, metadata !32, metadata !33, metadata !810, metadata !35, metadata !46, metadata !6}
!810 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!811 = metadata !{null, metadata !32, metadata !33, metadata !812, metadata !35, metadata !46, metadata !6}
!812 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &"}
!813 = metadata !{null, metadata !32, metadata !33, metadata !814, metadata !35, metadata !49, metadata !6}
!814 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<70> &"}
!815 = metadata !{null, metadata !28, metadata !2, metadata !816, metadata !4, metadata !612, metadata !6}
!816 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"double"}
!817 = metadata !{null, metadata !28, metadata !2, metadata !818, metadata !4, metadata !43, metadata !6}
!818 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &", metadata !"int"}
!819 = metadata !{null, metadata !103, metadata !104, metadata !820, metadata !106, metadata !107, metadata !6}
!820 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<256, false>*", metadata !"int", metadata !"int"}
!821 = metadata !{null, metadata !32, metadata !33, metadata !822, metadata !35, metadata !52, metadata !6}
!822 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<12, true> &"}
!823 = metadata !{null, metadata !32, metadata !33, metadata !824, metadata !35, metadata !49, metadata !6}
!824 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<7, false> &"}
!825 = metadata !{null, metadata !32, metadata !33, metadata !826, metadata !35, metadata !52, metadata !6}
!826 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<256, false> &"}
!827 = metadata !{null, metadata !103, metadata !104, metadata !828, metadata !106, metadata !107, metadata !6}
!828 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<12, true>*", metadata !"int", metadata !"int"}
!829 = metadata !{null, metadata !32, metadata !33, metadata !830, metadata !35, metadata !49, metadata !6}
!830 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<125> &"}
!831 = metadata !{null, metadata !28, metadata !2, metadata !832, metadata !4, metadata !43, metadata !6}
!832 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!833 = metadata !{null, metadata !28, metadata !2, metadata !834, metadata !4, metadata !43, metadata !6}
!834 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"const ap_int_base<52, false> &"}
!835 = metadata !{null, metadata !32, metadata !33, metadata !836, metadata !35, metadata !49, metadata !6}
!836 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<53> &"}
!837 = metadata !{null, metadata !32, metadata !33, metadata !838, metadata !35, metadata !52, metadata !6}
!838 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<400, false> &"}
!839 = metadata !{null, metadata !32, metadata !33, metadata !840, metadata !35, metadata !49, metadata !6}
!840 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<79> &"}
!841 = metadata !{null, metadata !103, metadata !104, metadata !842, metadata !106, metadata !107, metadata !6}
!842 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<400, false>*", metadata !"int", metadata !"int"}
!843 = metadata !{null, metadata !32, metadata !33, metadata !773, metadata !35, metadata !49, metadata !6}
!844 = metadata !{null, metadata !317, metadata !104, metadata !845, metadata !106, metadata !632, metadata !6}
!845 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &", metadata !"float &"}
!846 = metadata !{null, metadata !32, metadata !33, metadata !847, metadata !35, metadata !848, metadata !6}
!847 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t"}
!848 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!849 = metadata !{null, metadata !28, metadata !2, metadata !850, metadata !4, metadata !43, metadata !6}
!850 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, false> &"}
!851 = metadata !{null, metadata !28, metadata !2, metadata !622, metadata !4, metadata !57, metadata !6}
!852 = metadata !{null, metadata !28, metadata !2, metadata !853, metadata !4, metadata !43, metadata !6}
!853 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"const ap_int_base<32, true> &"}
!854 = metadata !{null, metadata !32, metadata !33, metadata !855, metadata !35, metadata !46, metadata !6}
!855 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &"}
!856 = metadata !{null, metadata !32, metadata !33, metadata !270, metadata !35, metadata !857, metadata !6}
!857 = metadata !{metadata !"kernel_arg_name", metadata !"pi"}
!858 = metadata !{null, metadata !28, metadata !2, metadata !859, metadata !4, metadata !43, metadata !6}
!859 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true> &", metadata !"int"}
!860 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !194, metadata !6}
!861 = metadata !{null, metadata !317, metadata !104, metadata !862, metadata !106, metadata !670, metadata !6}
!862 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &"}
!863 = metadata !{null, metadata !317, metadata !104, metadata !864, metadata !106, metadata !673, metadata !6}
!864 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!865 = metadata !{null, metadata !32, metadata !33, metadata !866, metadata !35, metadata !49, metadata !6}
!866 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!867 = metadata !{null, metadata !32, metadata !33, metadata !866, metadata !35, metadata !46, metadata !6}
!868 = metadata !{null, metadata !32, metadata !33, metadata !869, metadata !35, metadata !46, metadata !6}
!869 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!870 = metadata !{null, metadata !32, metadata !33, metadata !871, metadata !35, metadata !46, metadata !6}
!871 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<35, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!872 = metadata !{null, metadata !32, metadata !33, metadata !873, metadata !35, metadata !46, metadata !6}
!873 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!874 = metadata !{null, metadata !32, metadata !33, metadata !875, metadata !35, metadata !46, metadata !6}
!875 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 4, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!876 = metadata !{null, metadata !317, metadata !104, metadata !877, metadata !106, metadata !673, metadata !6}
!877 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"_Bool"}
!878 = metadata !{null, metadata !32, metadata !33, metadata !879, metadata !35, metadata !46, metadata !6}
!879 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<34, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!880 = metadata !{null, metadata !198, metadata !2, metadata !881, metadata !4, metadata !223, metadata !6}
!881 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!882 = metadata !{null, metadata !32, metadata !33, metadata !883, metadata !35, metadata !46, metadata !6}
!883 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!884 = metadata !{null, metadata !32, metadata !33, metadata !883, metadata !35, metadata !71, metadata !6}
!885 = metadata !{null, metadata !32, metadata !33, metadata !886, metadata !35, metadata !46, metadata !6}
!886 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<35, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!887 = metadata !{null, metadata !32, metadata !33, metadata !888, metadata !35, metadata !46, metadata !6}
!888 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!889 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !175, metadata !6}
!890 = metadata !{null, metadata !317, metadata !104, metadata !891, metadata !106, metadata !892, metadata !6}
!891 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<7 + 1> &", metadata !"ap_ufixed<fp_struct<float>::SIG_BITS + 12, 0> &"}
!892 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"k", metadata !"t_out"}
!893 = metadata !{null, metadata !32, metadata !33, metadata !894, metadata !35, metadata !46, metadata !6}
!894 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<70, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!895 = metadata !{null, metadata !32, metadata !33, metadata !896, metadata !35, metadata !46, metadata !6}
!896 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!897 = metadata !{null, metadata !317, metadata !104, metadata !898, metadata !106, metadata !582, metadata !6}
!898 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35 + 35, 0 + 0> &"}
!899 = metadata !{null, metadata !103, metadata !104, metadata !900, metadata !106, metadata !107, metadata !6}
!900 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!901 = metadata !{null, metadata !317, metadata !104, metadata !902, metadata !106, metadata !582, metadata !6}
!902 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<35>", metadata !"ap_uint<35>", metadata !"ap_uint<35 + 35> &"}
!903 = metadata !{null, metadata !32, metadata !33, metadata !234, metadata !35, metadata !49, metadata !6}
!904 = metadata !{null, metadata !28, metadata !2, metadata !905, metadata !4, metadata !598, metadata !6}
!905 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &", metadata !"const ap_int_base<35, false> &"}
!906 = metadata !{null, metadata !32, metadata !33, metadata !907, metadata !35, metadata !52, metadata !6}
!907 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &"}
!908 = metadata !{null, metadata !28, metadata !2, metadata !909, metadata !4, metadata !43, metadata !6}
!909 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &", metadata !"const ap_int_base<35, false> &"}
!910 = metadata !{null, metadata !32, metadata !33, metadata !911, metadata !35, metadata !46, metadata !6}
!911 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &"}
!912 = metadata !{null, metadata !103, metadata !104, metadata !913, metadata !106, metadata !107, metadata !6}
!913 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!914 = metadata !{null, metadata !32, metadata !33, metadata !915, metadata !35, metadata !71, metadata !6}
!915 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!916 = metadata !{null, metadata !32, metadata !33, metadata !911, metadata !35, metadata !71, metadata !6}
!917 = metadata !{null, metadata !103, metadata !104, metadata !918, metadata !106, metadata !107, metadata !6}
!918 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<35, false>*", metadata !"int", metadata !"int"}
!919 = metadata !{null, metadata !32, metadata !33, metadata !920, metadata !35, metadata !46, metadata !6}
!920 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<77, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!921 = metadata !{null, metadata !32, metadata !33, metadata !922, metadata !35, metadata !46, metadata !6}
!922 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!923 = metadata !{null, metadata !32, metadata !33, metadata !136, metadata !35, metadata !71, metadata !6}
!924 = metadata !{null, metadata !317, metadata !104, metadata !925, metadata !106, metadata !582, metadata !6}
!925 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<42, 7>", metadata !"ap_ufixed<35, 1>", metadata !"ap_ufixed<42 + 35, 7 + 1> &"}
!926 = metadata !{null, metadata !103, metadata !104, metadata !927, metadata !106, metadata !107, metadata !6}
!927 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<77, false>*", metadata !"int", metadata !"int"}
!928 = metadata !{null, metadata !32, metadata !33, metadata !929, metadata !35, metadata !71, metadata !6}
!929 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<77, false> &"}
!930 = metadata !{null, metadata !32, metadata !33, metadata !929, metadata !35, metadata !52, metadata !6}
!931 = metadata !{null, metadata !32, metadata !33, metadata !932, metadata !35, metadata !71, metadata !6}
!932 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<77, false> &"}
!933 = metadata !{null, metadata !103, metadata !104, metadata !934, metadata !106, metadata !107, metadata !6}
!934 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!935 = metadata !{null, metadata !317, metadata !104, metadata !936, metadata !106, metadata !582, metadata !6}
!936 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<42>", metadata !"ap_uint<35>", metadata !"ap_uint<42 + 35> &"}
!937 = metadata !{null, metadata !28, metadata !2, metadata !938, metadata !4, metadata !598, metadata !6}
!938 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &", metadata !"const ap_int_base<35, false> &"}
!939 = metadata !{null, metadata !32, metadata !33, metadata !940, metadata !35, metadata !52, metadata !6}
!940 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &"}
!941 = metadata !{null, metadata !28, metadata !2, metadata !942, metadata !4, metadata !43, metadata !6}
!942 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &", metadata !"const ap_int_base<35, false> &"}
!943 = metadata !{null, metadata !32, metadata !33, metadata !944, metadata !35, metadata !46, metadata !6}
!944 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &"}
!945 = metadata !{null, metadata !32, metadata !33, metadata !932, metadata !35, metadata !46, metadata !6}
!946 = metadata !{null, metadata !103, metadata !104, metadata !947, metadata !106, metadata !107, metadata !6}
!947 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!948 = metadata !{null, metadata !32, metadata !33, metadata !949, metadata !35, metadata !71, metadata !6}
!949 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!950 = metadata !{null, metadata !32, metadata !33, metadata !951, metadata !35, metadata !71, metadata !6}
!951 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!952 = metadata !{null, metadata !32, metadata !33, metadata !944, metadata !35, metadata !71, metadata !6}
!953 = metadata !{null, metadata !103, metadata !104, metadata !954, metadata !106, metadata !107, metadata !6}
!954 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<42, false>*", metadata !"int", metadata !"int"}
!955 = metadata !{null, metadata !32, metadata !33, metadata !956, metadata !35, metadata !46, metadata !6}
!956 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!957 = metadata !{null, metadata !32, metadata !33, metadata !958, metadata !35, metadata !46, metadata !6}
!958 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<42, 7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!959 = metadata !{null, metadata !198, metadata !2, metadata !960, metadata !4, metadata !223, metadata !6}
!960 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!961 = metadata !{null, metadata !103, metadata !104, metadata !962, metadata !106, metadata !107, metadata !6}
!962 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!963 = metadata !{null, metadata !28, metadata !2, metadata !29, metadata !4, metadata !964, metadata !6}
!964 = metadata !{metadata !"kernel_arg_name", metadata !"y_in", metadata !"x_in"}
!965 = metadata !{null, metadata !317, metadata !104, metadata !966, metadata !106, metadata !670, metadata !6}
!966 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &"}
!967 = metadata !{null, metadata !317, metadata !104, metadata !968, metadata !106, metadata !673, metadata !6}
!968 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!969 = metadata !{null, metadata !32, metadata !33, metadata !970, metadata !35, metadata !49, metadata !6}
!970 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!971 = metadata !{null, metadata !32, metadata !33, metadata !970, metadata !35, metadata !46, metadata !6}
!972 = metadata !{null, metadata !32, metadata !33, metadata !973, metadata !35, metadata !46, metadata !6}
!973 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!974 = metadata !{null, metadata !32, metadata !33, metadata !975, metadata !35, metadata !46, metadata !6}
!975 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!976 = metadata !{null, metadata !32, metadata !33, metadata !977, metadata !35, metadata !46, metadata !6}
!977 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!978 = metadata !{null, metadata !32, metadata !33, metadata !979, metadata !35, metadata !46, metadata !6}
!979 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!980 = metadata !{null, metadata !317, metadata !104, metadata !981, metadata !106, metadata !673, metadata !6}
!981 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"_Bool"}
!982 = metadata !{null, metadata !32, metadata !33, metadata !973, metadata !35, metadata !49, metadata !6}
!983 = metadata !{null, metadata !317, metadata !104, metadata !984, metadata !106, metadata !673, metadata !6}
!984 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!985 = metadata !{null, metadata !32, metadata !33, metadata !321, metadata !35, metadata !71, metadata !6}
!986 = metadata !{null, metadata !198, metadata !2, metadata !987, metadata !4, metadata !223, metadata !6}
!987 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!988 = metadata !{null, metadata !103, metadata !104, metadata !989, metadata !106, metadata !107, metadata !6}
!989 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!990 = metadata !{null, metadata !32, metadata !33, metadata !991, metadata !35, metadata !46, metadata !6}
!991 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!992 = metadata !{null, metadata !28, metadata !2, metadata !993, metadata !4, metadata !43, metadata !6}
!993 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!994 = metadata !{null, metadata !28, metadata !2, metadata !139, metadata !4, metadata !964, metadata !6}
!995 = metadata !{null, metadata !32, metadata !33, metadata !70, metadata !35, metadata !857, metadata !6}
!996 = metadata !{null, metadata !103, metadata !104, metadata !997, metadata !106, metadata !107, metadata !6}
!997 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<88, true>*", metadata !"int", metadata !"int"}
!998 = metadata !{null, metadata !32, metadata !33, metadata !999, metadata !35, metadata !71, metadata !6}
!999 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<88, true> &"}
!1000 = metadata !{null, metadata !32, metadata !33, metadata !999, metadata !35, metadata !52, metadata !6}
!1001 = metadata !{null, metadata !32, metadata !33, metadata !1002, metadata !35, metadata !71, metadata !6}
!1002 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<88, false> &"}
!1003 = metadata !{null, metadata !32, metadata !33, metadata !1002, metadata !35, metadata !46, metadata !6}
!1004 = metadata !{null, metadata !317, metadata !104, metadata !1005, metadata !106, metadata !670, metadata !6}
!1005 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &"}
!1006 = metadata !{null, metadata !317, metadata !104, metadata !1007, metadata !106, metadata !673, metadata !6}
!1007 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!1008 = metadata !{null, metadata !32, metadata !33, metadata !1009, metadata !35, metadata !49, metadata !6}
!1009 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1010 = metadata !{null, metadata !32, metadata !33, metadata !1009, metadata !35, metadata !46, metadata !6}
!1011 = metadata !{null, metadata !32, metadata !33, metadata !1012, metadata !35, metadata !46, metadata !6}
!1012 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1013 = metadata !{null, metadata !32, metadata !33, metadata !1014, metadata !35, metadata !46, metadata !6}
!1014 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<88, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1015 = metadata !{null, metadata !32, metadata !33, metadata !1016, metadata !35, metadata !46, metadata !6}
!1016 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<88, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1017 = metadata !{null, metadata !32, metadata !33, metadata !1018, metadata !35, metadata !46, metadata !6}
!1018 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1019 = metadata !{null, metadata !317, metadata !104, metadata !1020, metadata !106, metadata !673, metadata !6}
!1020 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"_Bool"}
!1021 = metadata !{null, metadata !32, metadata !33, metadata !1012, metadata !35, metadata !49, metadata !6}
!1022 = metadata !{null, metadata !317, metadata !104, metadata !1023, metadata !106, metadata !673, metadata !6}
!1023 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!1024 = metadata !{null, metadata !198, metadata !2, metadata !1025, metadata !4, metadata !223, metadata !6}
!1025 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!1026 = metadata !{null, metadata !103, metadata !104, metadata !1027, metadata !106, metadata !107, metadata !6}
!1027 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1028 = metadata !{null, metadata !32, metadata !33, metadata !1029, metadata !35, metadata !46, metadata !6}
!1029 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1030 = metadata !{null, metadata !28, metadata !2, metadata !1031, metadata !4, metadata !43, metadata !6}
!1031 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<11, false> &"}
!1032 = metadata !{null, metadata !32, metadata !33, metadata !190, metadata !35, metadata !49, metadata !6}
!1033 = metadata !{null, metadata !32, metadata !33, metadata !255, metadata !35, metadata !49, metadata !6}
!1034 = metadata !{null, metadata !32, metadata !33, metadata !1035, metadata !35, metadata !848, metadata !6}
!1035 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t"}
!1036 = metadata !{null, metadata !28, metadata !2, metadata !1037, metadata !4, metadata !1038, metadata !6}
!1037 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &"}
!1038 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"t_out"}
!1039 = metadata !{null, metadata !32, metadata !33, metadata !1040, metadata !35, metadata !46, metadata !6}
!1040 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1041 = metadata !{null, metadata !32, metadata !33, metadata !1042, metadata !35, metadata !46, metadata !6}
!1042 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1043 = metadata !{null, metadata !32, metadata !33, metadata !1044, metadata !35, metadata !99, metadata !6}
!1044 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<40, 3>"}
!1045 = metadata !{null, metadata !32, metadata !33, metadata !1046, metadata !35, metadata !99, metadata !6}
!1046 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<40>"}
!1047 = metadata !{null, metadata !28, metadata !2, metadata !1048, metadata !4, metadata !43, metadata !6}
!1048 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &", metadata !"int"}
!1049 = metadata !{null, metadata !32, metadata !33, metadata !1050, metadata !35, metadata !71, metadata !6}
!1050 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1051 = metadata !{null, metadata !32, metadata !33, metadata !1052, metadata !35, metadata !71, metadata !6}
!1052 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &"}
!1053 = metadata !{null, metadata !32, metadata !33, metadata !1052, metadata !35, metadata !46, metadata !6}
!1054 = metadata !{null, metadata !32, metadata !33, metadata !1055, metadata !35, metadata !46, metadata !6}
!1055 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1056 = metadata !{null, metadata !32, metadata !33, metadata !51, metadata !35, metadata !71, metadata !6}
!1057 = metadata !{null, metadata !103, metadata !104, metadata !1058, metadata !106, metadata !107, metadata !6}
!1058 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1059 = metadata !{null, metadata !32, metadata !33, metadata !1060, metadata !35, metadata !46, metadata !6}
!1060 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1061 = metadata !{null, metadata !32, metadata !33, metadata !1062, metadata !35, metadata !46, metadata !6}
!1062 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1063 = metadata !{null, metadata !32, metadata !33, metadata !1064, metadata !35, metadata !46, metadata !6}
!1064 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1065 = metadata !{null, metadata !317, metadata !104, metadata !1066, metadata !106, metadata !670, metadata !6}
!1066 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &"}
!1067 = metadata !{null, metadata !317, metadata !104, metadata !1068, metadata !106, metadata !673, metadata !6}
!1068 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!1069 = metadata !{null, metadata !32, metadata !33, metadata !1070, metadata !35, metadata !49, metadata !6}
!1070 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1071 = metadata !{null, metadata !32, metadata !33, metadata !1070, metadata !35, metadata !46, metadata !6}
!1072 = metadata !{null, metadata !32, metadata !33, metadata !1073, metadata !35, metadata !46, metadata !6}
!1073 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1074 = metadata !{null, metadata !32, metadata !33, metadata !1075, metadata !35, metadata !46, metadata !6}
!1075 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1076 = metadata !{null, metadata !32, metadata !33, metadata !1077, metadata !35, metadata !46, metadata !6}
!1077 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1078 = metadata !{null, metadata !317, metadata !104, metadata !1079, metadata !106, metadata !673, metadata !6}
!1079 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"_Bool"}
!1080 = metadata !{null, metadata !32, metadata !33, metadata !1042, metadata !35, metadata !49, metadata !6}
!1081 = metadata !{null, metadata !317, metadata !104, metadata !1082, metadata !106, metadata !673, metadata !6}
!1082 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!1083 = metadata !{null, metadata !198, metadata !2, metadata !1084, metadata !4, metadata !223, metadata !6}
!1084 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!1085 = metadata !{null, metadata !103, metadata !104, metadata !1086, metadata !106, metadata !107, metadata !6}
!1086 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1087 = metadata !{null, metadata !32, metadata !33, metadata !1088, metadata !35, metadata !52, metadata !6}
!1088 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<66, false> &"}
!1089 = metadata !{null, metadata !28, metadata !2, metadata !1090, metadata !4, metadata !43, metadata !6}
!1090 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &", metadata !"int"}
!1091 = metadata !{null, metadata !32, metadata !33, metadata !1092, metadata !35, metadata !46, metadata !6}
!1092 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &"}
!1093 = metadata !{null, metadata !32, metadata !33, metadata !604, metadata !35, metadata !71, metadata !6}
!1094 = metadata !{null, metadata !103, metadata !104, metadata !1095, metadata !106, metadata !107, metadata !6}
!1095 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<66, false>*", metadata !"int", metadata !"int"}
!1096 = metadata !{null, metadata !32, metadata !33, metadata !1097, metadata !35, metadata !49, metadata !6}
!1097 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<66> &"}
!1098 = metadata !{null, metadata !28, metadata !2, metadata !1099, metadata !4, metadata !43, metadata !6}
!1099 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"int"}
!1100 = metadata !{null, metadata !28, metadata !2, metadata !1101, metadata !4, metadata !43, metadata !6}
!1101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"const ap_int_base<23, false> &"}
!1102 = metadata !{null, metadata !28, metadata !2, metadata !1103, metadata !4, metadata !410, metadata !6}
!1103 = metadata !{metadata !"kernel_arg_type", metadata !"uint", metadata !"const ap_int_base<8, false> &"}
!1104 = metadata !{null, metadata !28, metadata !2, metadata !1105, metadata !4, metadata !43, metadata !6}
!1105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<8, false> &"}
!1106 = metadata !{null, metadata !317, metadata !104, metadata !1107, metadata !106, metadata !1108, metadata !6}
!1107 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"_Bool"}
!1108 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"do_cos", metadata !"do_pi"}
!1109 = metadata !{null, metadata !32, metadata !33, metadata !1110, metadata !35, metadata !46, metadata !6}
!1110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1111 = metadata !{null, metadata !32, metadata !33, metadata !1112, metadata !35, metadata !46, metadata !6}
!1112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1113 = metadata !{null, metadata !28, metadata !2, metadata !75, metadata !4, metadata !43, metadata !6}
!1114 = metadata !{null, metadata !32, metadata !33, metadata !1115, metadata !35, metadata !46, metadata !6}
!1115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1116 = metadata !{null, metadata !32, metadata !33, metadata !1117, metadata !35, metadata !46, metadata !6}
!1117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1118 = metadata !{null, metadata !198, metadata !2, metadata !1119, metadata !4, metadata !223, metadata !6}
!1119 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int"}
!1120 = metadata !{null, metadata !1121, metadata !12, metadata !1122, metadata !14, metadata !1123, metadata !6}
!1121 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!1122 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &", metadata !"int &"}
!1123 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex", metadata !"exactly_pi_over_2"}
!1124 = metadata !{null, metadata !28, metadata !2, metadata !1125, metadata !4, metadata !57, metadata !6}
!1125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!1126 = metadata !{null, metadata !28, metadata !2, metadata !1127, metadata !4, metadata !43, metadata !6}
!1127 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false> &", metadata !"int"}
!1128 = metadata !{null, metadata !32, metadata !33, metadata !1129, metadata !35, metadata !46, metadata !6}
!1129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!1130 = metadata !{null, metadata !32, metadata !33, metadata !1131, metadata !35, metadata !49, metadata !6}
!1131 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<95> &"}
!1132 = metadata !{null, metadata !317, metadata !104, metadata !1133, metadata !106, metadata !319, metadata !6}
!1133 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!1134 = metadata !{null, metadata !317, metadata !104, metadata !1135, metadata !106, metadata !319, metadata !6}
!1135 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1136 = metadata !{null, metadata !28, metadata !2, metadata !1137, metadata !4, metadata !57, metadata !6}
!1137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1138 = metadata !{null, metadata !32, metadata !33, metadata !1139, metadata !35, metadata !46, metadata !6}
!1139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1140 = metadata !{null, metadata !32, metadata !33, metadata !1141, metadata !35, metadata !46, metadata !6}
!1141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<84, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1142 = metadata !{null, metadata !32, metadata !33, metadata !1143, metadata !35, metadata !46, metadata !6}
!1143 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<84, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1144 = metadata !{null, metadata !28, metadata !2, metadata !1145, metadata !4, metadata !43, metadata !6}
!1145 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &", metadata !"int"}
!1146 = metadata !{null, metadata !32, metadata !33, metadata !1147, metadata !35, metadata !49, metadata !6}
!1147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &"}
!1148 = metadata !{null, metadata !32, metadata !33, metadata !1149, metadata !35, metadata !46, metadata !6}
!1149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<136, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1150 = metadata !{null, metadata !317, metadata !104, metadata !1151, metadata !106, metadata !319, metadata !6}
!1151 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1152 = metadata !{null, metadata !28, metadata !2, metadata !1153, metadata !4, metadata !57, metadata !6}
!1153 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1154 = metadata !{null, metadata !32, metadata !33, metadata !1155, metadata !35, metadata !46, metadata !6}
!1155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1156 = metadata !{null, metadata !32, metadata !33, metadata !1157, metadata !35, metadata !46, metadata !6}
!1157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<68, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1158 = metadata !{null, metadata !32, metadata !33, metadata !1159, metadata !35, metadata !46, metadata !6}
!1159 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<68, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1160 = metadata !{null, metadata !28, metadata !2, metadata !1161, metadata !4, metadata !43, metadata !6}
!1161 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &", metadata !"int"}
!1162 = metadata !{null, metadata !32, metadata !33, metadata !1163, metadata !35, metadata !49, metadata !6}
!1163 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &"}
!1164 = metadata !{null, metadata !32, metadata !33, metadata !1165, metadata !35, metadata !46, metadata !6}
!1165 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<120, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1166 = metadata !{null, metadata !317, metadata !104, metadata !1167, metadata !106, metadata !319, metadata !6}
!1167 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1168 = metadata !{null, metadata !28, metadata !2, metadata !1169, metadata !4, metadata !57, metadata !6}
!1169 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1170 = metadata !{null, metadata !32, metadata !33, metadata !1171, metadata !35, metadata !46, metadata !6}
!1171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1172 = metadata !{null, metadata !32, metadata !33, metadata !1173, metadata !35, metadata !46, metadata !6}
!1173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<60, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1174 = metadata !{null, metadata !32, metadata !33, metadata !1175, metadata !35, metadata !46, metadata !6}
!1175 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<60, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1176 = metadata !{null, metadata !28, metadata !2, metadata !1177, metadata !4, metadata !43, metadata !6}
!1177 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &", metadata !"int"}
!1178 = metadata !{null, metadata !32, metadata !33, metadata !1179, metadata !35, metadata !49, metadata !6}
!1179 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &"}
!1180 = metadata !{null, metadata !32, metadata !33, metadata !1181, metadata !35, metadata !46, metadata !6}
!1181 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<112, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1182 = metadata !{null, metadata !317, metadata !104, metadata !1183, metadata !106, metadata !319, metadata !6}
!1183 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!1184 = metadata !{null, metadata !317, metadata !104, metadata !1185, metadata !106, metadata !319, metadata !6}
!1185 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1186 = metadata !{null, metadata !32, metadata !33, metadata !1187, metadata !35, metadata !46, metadata !6}
!1187 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1188 = metadata !{null, metadata !32, metadata !33, metadata !1189, metadata !35, metadata !46, metadata !6}
!1189 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1190 = metadata !{null, metadata !28, metadata !2, metadata !1191, metadata !4, metadata !43, metadata !6}
!1191 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!1192 = metadata !{null, metadata !32, metadata !33, metadata !1193, metadata !35, metadata !49, metadata !6}
!1193 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!1194 = metadata !{null, metadata !32, metadata !33, metadata !1195, metadata !35, metadata !46, metadata !6}
!1195 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1196 = metadata !{null, metadata !317, metadata !104, metadata !1197, metadata !106, metadata !319, metadata !6}
!1197 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1198 = metadata !{null, metadata !32, metadata !33, metadata !1199, metadata !35, metadata !46, metadata !6}
!1199 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<39, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1200 = metadata !{null, metadata !32, metadata !33, metadata !1201, metadata !35, metadata !46, metadata !6}
!1201 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<39, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1202 = metadata !{null, metadata !28, metadata !2, metadata !1203, metadata !4, metadata !43, metadata !6}
!1203 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &", metadata !"int"}
!1204 = metadata !{null, metadata !32, metadata !33, metadata !1205, metadata !35, metadata !49, metadata !6}
!1205 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &"}
!1206 = metadata !{null, metadata !32, metadata !33, metadata !1207, metadata !35, metadata !46, metadata !6}
!1207 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<62, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1208 = metadata !{null, metadata !317, metadata !104, metadata !1209, metadata !106, metadata !319, metadata !6}
!1209 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1210 = metadata !{null, metadata !32, metadata !33, metadata !1211, metadata !35, metadata !46, metadata !6}
!1211 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1212 = metadata !{null, metadata !32, metadata !33, metadata !1213, metadata !35, metadata !46, metadata !6}
!1213 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1214 = metadata !{null, metadata !28, metadata !2, metadata !1215, metadata !4, metadata !43, metadata !6}
!1215 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &", metadata !"int"}
!1216 = metadata !{null, metadata !32, metadata !33, metadata !471, metadata !35, metadata !49, metadata !6}
!1217 = metadata !{null, metadata !32, metadata !33, metadata !1218, metadata !35, metadata !46, metadata !6}
!1218 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<54, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1219 = metadata !{null, metadata !317, metadata !104, metadata !1220, metadata !106, metadata !319, metadata !6}
!1220 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1221 = metadata !{null, metadata !32, metadata !33, metadata !1222, metadata !35, metadata !46, metadata !6}
!1222 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1223 = metadata !{null, metadata !32, metadata !33, metadata !1224, metadata !35, metadata !46, metadata !6}
!1224 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1225 = metadata !{null, metadata !32, metadata !33, metadata !1226, metadata !35, metadata !46, metadata !6}
!1226 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1227 = metadata !{null, metadata !32, metadata !33, metadata !1228, metadata !35, metadata !46, metadata !6}
!1228 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1229 = metadata !{null, metadata !317, metadata !104, metadata !1230, metadata !106, metadata !319, metadata !6}
!1230 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1231 = metadata !{null, metadata !32, metadata !33, metadata !1232, metadata !35, metadata !46, metadata !6}
!1232 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1233 = metadata !{null, metadata !32, metadata !33, metadata !1234, metadata !35, metadata !46, metadata !6}
!1234 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 17, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1235 = metadata !{null, metadata !32, metadata !33, metadata !1236, metadata !35, metadata !46, metadata !6}
!1236 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1237 = metadata !{null, metadata !32, metadata !33, metadata !1238, metadata !35, metadata !46, metadata !6}
!1238 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1239 = metadata !{null, metadata !198, metadata !2, metadata !1240, metadata !4, metadata !223, metadata !6}
!1240 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!1241 = metadata !{null, metadata !317, metadata !104, metadata !1242, metadata !106, metadata !319, metadata !6}
!1242 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1243 = metadata !{null, metadata !32, metadata !33, metadata !1244, metadata !35, metadata !46, metadata !6}
!1244 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1245 = metadata !{null, metadata !32, metadata !33, metadata !1246, metadata !35, metadata !46, metadata !6}
!1246 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, 9, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1247 = metadata !{null, metadata !32, metadata !33, metadata !1248, metadata !35, metadata !46, metadata !6}
!1248 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1249 = metadata !{null, metadata !32, metadata !33, metadata !1250, metadata !35, metadata !46, metadata !6}
!1250 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1251 = metadata !{null, metadata !198, metadata !2, metadata !1252, metadata !4, metadata !223, metadata !6}
!1252 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!1253 = metadata !{null, metadata !317, metadata !104, metadata !1254, metadata !106, metadata !319, metadata !6}
!1254 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1255 = metadata !{null, metadata !317, metadata !104, metadata !1256, metadata !106, metadata !319, metadata !6}
!1256 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1257 = metadata !{null, metadata !317, metadata !104, metadata !1258, metadata !106, metadata !319, metadata !6}
!1258 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1259 = metadata !{metadata !1260, i32* @world_rank}
!1260 = metadata !{metadata !1261}
!1261 = metadata !{i32 0, i32 31, metadata !1262}
!1262 = metadata !{metadata !1263}
!1263 = metadata !{metadata !"world_rank", metadata !1264, metadata !"int", i32 0, i32 31}
!1264 = metadata !{metadata !1265}
!1265 = metadata !{i32 0, i32 0, i32 1}
!1266 = metadata !{metadata !1267, i40* @stream_out_V_user_V}
!1267 = metadata !{metadata !1268}
!1268 = metadata !{i32 0, i32 39, metadata !1269}
!1269 = metadata !{metadata !1270}
!1270 = metadata !{metadata !"stream_out.V.user.V", metadata !1264, metadata !"uint40", i32 0, i32 39}
!1271 = metadata !{metadata !1272, i1* @stream_out_V_last_V}
!1272 = metadata !{metadata !1273}
!1273 = metadata !{i32 0, i32 0, metadata !1274}
!1274 = metadata !{metadata !1275}
!1275 = metadata !{metadata !"stream_out.V.last.V", metadata !1264, metadata !"uint1", i32 0, i32 0}
!1276 = metadata !{metadata !1277, i8* @stream_out_V_id_V}
!1277 = metadata !{metadata !1278}
!1278 = metadata !{i32 0, i32 7, metadata !1279}
!1279 = metadata !{metadata !1280}
!1280 = metadata !{metadata !"stream_out.V.id.V", metadata !1264, metadata !"uint8", i32 0, i32 7}
!1281 = metadata !{metadata !1282, i8* @stream_out_V_dest_V}
!1282 = metadata !{metadata !1283}
!1283 = metadata !{i32 0, i32 7, metadata !1284}
!1284 = metadata !{metadata !1285}
!1285 = metadata !{metadata !"stream_out.V.dest.V", metadata !1264, metadata !"uint8", i32 0, i32 7}
!1286 = metadata !{metadata !1287, i64* @stream_out_V_data_V}
!1287 = metadata !{metadata !1288}
!1288 = metadata !{i32 0, i32 63, metadata !1289}
!1289 = metadata !{metadata !1290}
!1290 = metadata !{metadata !"stream_out.V.data.V", metadata !1264, metadata !"uint64", i32 0, i32 63}
!1291 = metadata !{metadata !1292, i40* @stream_in_V_user_V}
!1292 = metadata !{metadata !1293}
!1293 = metadata !{i32 0, i32 39, metadata !1294}
!1294 = metadata !{metadata !1295}
!1295 = metadata !{metadata !"stream_in.V.user.V", metadata !1264, metadata !"uint40", i32 0, i32 39}
!1296 = metadata !{metadata !1297, i1* @stream_in_V_last_V}
!1297 = metadata !{metadata !1298}
!1298 = metadata !{i32 0, i32 0, metadata !1299}
!1299 = metadata !{metadata !1300}
!1300 = metadata !{metadata !"stream_in.V.last.V", metadata !1264, metadata !"uint1", i32 0, i32 0}
!1301 = metadata !{metadata !1302, i8* @stream_in_V_id_V}
!1302 = metadata !{metadata !1303}
!1303 = metadata !{i32 0, i32 7, metadata !1304}
!1304 = metadata !{metadata !1305}
!1305 = metadata !{metadata !"stream_in.V.id.V", metadata !1264, metadata !"uint8", i32 0, i32 7}
!1306 = metadata !{metadata !1307, i8* @stream_in_V_dest_V}
!1307 = metadata !{metadata !1308}
!1308 = metadata !{i32 0, i32 7, metadata !1309}
!1309 = metadata !{metadata !1310}
!1310 = metadata !{metadata !"stream_in.V.dest.V", metadata !1264, metadata !"uint8", i32 0, i32 7}
!1311 = metadata !{metadata !1312, i64* @stream_in_V_data_V}
!1312 = metadata !{metadata !1313}
!1313 = metadata !{i32 0, i32 63, metadata !1314}
!1314 = metadata !{metadata !1315}
!1315 = metadata !{metadata !"stream_in.V.data.V", metadata !1264, metadata !"uint64", i32 0, i32 63}
!1316 = metadata !{metadata !1317, i64* @start_time}
!1317 = metadata !{metadata !1318}
!1318 = metadata !{i32 0, i32 63, metadata !1319}
!1319 = metadata !{metadata !1320}
!1320 = metadata !{metadata !"start_time", metadata !1264, metadata !"long int", i32 0, i32 63}
!1321 = metadata !{metadata !1322, i32* @processorCount}
!1322 = metadata !{metadata !1323}
!1323 = metadata !{i32 0, i32 31, metadata !1324}
!1324 = metadata !{metadata !1325}
!1325 = metadata !{metadata !"processorCount", metadata !1264, metadata !"int", i32 0, i32 31}
!1326 = metadata !{metadata !1327, [3 x i32]* @llvm_global_ctors_0}
!1327 = metadata !{metadata !1328}
!1328 = metadata !{i32 0, i32 31, metadata !1329}
!1329 = metadata !{metadata !1330}
!1330 = metadata !{metadata !"llvm.global_ctors.0", metadata !1331, metadata !"", i32 0, i32 31}
!1331 = metadata !{metadata !1332}
!1332 = metadata !{i32 0, i32 2, i32 1}
!1333 = metadata !{metadata !1334, i64* @end_time}
!1334 = metadata !{metadata !1335}
!1335 = metadata !{i32 0, i32 63, metadata !1336}
!1336 = metadata !{metadata !1337}
!1337 = metadata !{metadata !"end_time", metadata !1264, metadata !"long int", i32 0, i32 63}
!1338 = metadata !{metadata !1339, i121* @stream_in_V}
!1339 = metadata !{metadata !1313, metadata !1340, metadata !1341, metadata !1342, metadata !1343}
!1340 = metadata !{i32 64, i32 71, metadata !1309}
!1341 = metadata !{i32 72, i32 72, metadata !1299}
!1342 = metadata !{i32 73, i32 80, metadata !1304}
!1343 = metadata !{i32 81, i32 120, metadata !1294}
!1344 = metadata !{metadata !1345, i121* @stream_out_V}
!1345 = metadata !{metadata !1288, metadata !1346, metadata !1347, metadata !1348, metadata !1349}
!1346 = metadata !{i32 64, i32 71, metadata !1284}
!1347 = metadata !{i32 72, i32 72, metadata !1274}
!1348 = metadata !{i32 73, i32 80, metadata !1279}
!1349 = metadata !{i32 81, i32 120, metadata !1269}
