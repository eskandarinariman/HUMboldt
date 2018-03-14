; ModuleID = '/home/eskand38/HMPI/mpi_app_benchmarks/HMPI_integrate/hls/integrate/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_V_3 = internal unnamed_addr global i64 0
@time_V_2 = internal unnamed_addr global i64 0
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
@state_2 = internal unnamed_addr global i2 0, align 1
@state_1 = internal unnamed_addr global i2 0, align 1
@state = internal unnamed_addr global i2 0, align 1
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@integrate_str = internal unnamed_addr constant [10 x i8] c"integrate\00"
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
@int_clr2snd_array_DA_1 = internal unnamed_addr global [512 x i4] zeroinitializer
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
@envlp_DATA_TYPE_V_1 = internal unnamed_addr global i4 0
@envlp_DATA_TYPE_V = internal unnamed_addr global i4 0
@envlp_DATA_OR_ENVLP_1 = internal unnamed_addr global i4 0
@envlp_DATA_OR_ENVLP_s = internal unnamed_addr global i4 0
@clr2snd_error = internal unnamed_addr global i1 true, align 1
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str8 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str239 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str238 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str237 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str236 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str235 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str234 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str233 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str232 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str231 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str230 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str229 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str228 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str = private unnamed_addr constant [5 x i8] c"send\00", align 1

declare i40 @llvm.part.set.i40.i8(i40, i8, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i33 @llvm.part.select.i33(i33, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i121 @llvm.part.select.i121(i121, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @integrate() nounwind uwtable {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str234, i32 0, i32 0, [1 x i8]* @p_str235, [1 x i8]* @p_str236, [1 x i8]* @p_str237, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str238, [1 x i8]* @p_str239) nounwind
  %empty_15 = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str228, i32 0, i32 0, [1 x i8]* @p_str229, [1 x i8]* @p_str230, [1 x i8]* @p_str231, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str232, [1 x i8]* @p_str233) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !202
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @integrate_str) nounwind
  %integral = alloca [1000 x float], align 16
  %total = alloca [1000 x float], align 16
  %n_array = alloca [1 x i12], align 2
  call void (...)* @_ssdm_op_SpecIFCore(i121* @stream_out_V, [1 x i8]* @p_str7, [11 x i8]* @p_str8, [1 x i8]* @p_str7, i32 -1, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i121* @stream_in_V, [1 x i8]* @p_str7, [11 x i8]* @p_str8, [1 x i8]* @p_str7, i32 -1, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  %n_array_addr = getelementptr [1 x i12]* %n_array, i64 0, i64 0
  br label %1

; <label>:1                                       ; preds = %Trap.exit, %0
  %i = phi i10 [ 0, %0 ], [ %i_1, %Trap.exit ]
  %exitcond6 = icmp eq i10 %i, -24
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1000, i64 1000, i64 1000) nounwind
  %i_1 = add i10 %i, 1
  br i1 %exitcond6, label %.preheader7.preheader, label %2

.preheader7.preheader:                            ; preds = %1
  br label %.preheader7

; <label>:2                                       ; preds = %1
  call fastcc void @MPI_Send.1(float 0.000000e+00) nounwind
  call fastcc void @MPI_Send.1(float 1.000000e+02) nounwind
  store i12 2000, i12* %n_array_addr, align 2
  call fastcc void @MPI_Send([1 x i12]* %n_array) nounwind
  br label %3

; <label>:3                                       ; preds = %4, %2
  %integral_0_in_i = phi double [ -1.200000e+03, %2 ], [ %tmp_12_i, %4 ]
  %x_i = phi float [ 0.000000e+00, %2 ], [ %x, %4 ]
  %i_i = phi i10 [ 1, %2 ], [ %i_2, %4 ]
  %integral_1 = fptrunc double %integral_0_in_i to float
  %exitcond_i = icmp eq i10 %i_i, -24
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 999, i64 999, i64 999) nounwind
  br i1 %exitcond_i, label %Trap.exit, label %4

; <label>:4                                       ; preds = %3
  %x = fadd float %x_i, 0x3FA99999A0000000
  %tmp_1_i = fmul float %x, %x
  %tmp_2_i = fmul float %tmp_1_i, %x
  %tmp_3_i = fpext float %tmp_2_i to double
  %tmp_4_i = fmul double %tmp_3_i, 5.000000e-02
  %tmp_5_i = fmul float %tmp_1_i, 3.000000e+00
  %tmp_6_i = fpext float %tmp_5_i to double
  %tmp_7_i = fsub double %tmp_4_i, %tmp_6_i
  %tmp_8_i = fmul float %x, 2.300000e+01
  %tmp_9_i = fpext float %tmp_8_i to double
  %tmp_10_i = fsub double %tmp_7_i, %tmp_9_i
  %tmp_11_i = fpext float %integral_1 to double
  %tmp_12_i = fadd double %tmp_11_i, %tmp_10_i
  %i_2 = add i10 %i_i, 1
  br label %3

Trap.exit:                                        ; preds = %3
  %tmp_i = fmul float %integral_1, 0x3FA99999A0000000
  %tmp_s = zext i10 %i to i64
  %integral_addr = getelementptr inbounds [1000 x float]* %integral, i64 0, i64 %tmp_s
  store float %tmp_i, float* %integral_addr, align 4
  br label %1

.preheader7:                                      ; preds = %.preheader7.preheader, %5
  %r_3 = phi i10 [ %r, %5 ], [ 0, %.preheader7.preheader ]
  %exitcond2 = icmp eq i10 %r_3, -24
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1000, i64 1000, i64 1000) nounwind
  %r = add i10 %r_3, 1
  br i1 %exitcond2, label %.preheader.0, label %5

; <label>:5                                       ; preds = %.preheader7
  %tmp = zext i10 %r_3 to i64
  %integral_addr_1 = getelementptr inbounds [1000 x float]* %integral, i64 0, i64 %tmp
  %integral_load = load float* %integral_addr_1, align 4
  %total_addr = getelementptr inbounds [1000 x float]* %total, i64 0, i64 %tmp
  store float %integral_load, float* %total_addr, align 4
  br label %.preheader7

; <label>:6                                       ; preds = %7, %.preheader.0
  %q = phi i10 [ 0, %.preheader.0 ], [ %q_1, %7 ]
  %exitcond = icmp eq i10 %q, -24
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1000, i64 1000, i64 1000) nounwind
  %q_1 = add i10 %q, 1
  br i1 %exitcond, label %.preheader.1, label %7

.preheader.0:                                     ; preds = %.preheader7
  call fastcc void @MPI_Recv([1000 x float]* %integral) nounwind
  br label %6

; <label>:7                                       ; preds = %6
  %tmp_6 = zext i10 %q to i64
  %integral_addr_2 = getelementptr inbounds [1000 x float]* %integral, i64 0, i64 %tmp_6
  %integral_load_1 = load float* %integral_addr_2, align 4
  %total_addr_1 = getelementptr inbounds [1000 x float]* %total, i64 0, i64 %tmp_6
  %total_load = load float* %total_addr_1, align 4
  %tmp_7 = fadd float %total_load, %integral_load_1
  store float %tmp_7, float* %total_addr_1, align 4
  br label %6

.preheader.1:                                     ; preds = %6
  ret i32 0
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

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
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

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121*) {
entry:
  %empty = call i121 @_autotb_FifoRead_i121(i121* %0)
  ret i121 %empty
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

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121, i32, i32) nounwind readnone {
entry:
  %empty = call i121 @llvm.part.select.i121(i121 %0, i32 %1, i32 %2)
  %empty_20 = trunc i121 %empty to i8
  ret i8 %empty_20
}

define weak i64 @_ssdm_op_PartSelect.i64.i121.i32.i32(i121, i32, i32) nounwind readnone {
entry:
  %empty = call i121 @llvm.part.select.i121(i121 %0, i32 %1, i32 %2)
  %empty_21 = trunc i121 %empty to i64
  ret i64 %empty_21
}

define weak i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121, i32, i32) nounwind readnone {
entry:
  %empty = call i121 @llvm.part.select.i121(i121 %0, i32 %1, i32 %2)
  %empty_22 = trunc i121 %empty to i4
  ret i4 %empty_22
}

declare i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i33.i32.i32(i33, i32, i32) nounwind readnone {
entry:
  %empty = call i33 @llvm.part.select.i33(i33 %0, i32 %1, i32 %2)
  %empty_23 = trunc i33 %empty to i32
  ret i32 %empty_23
}

define weak i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121, i32, i32) nounwind readnone {
entry:
  %empty = call i121 @llvm.part.select.i121(i121 %0, i32 %1, i32 %2)
  %empty_24 = trunc i121 %empty to i32
  ret i32 %empty_24
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_25 = trunc i32 %empty to i31
  ret i31 %empty_25
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_26 = trunc i32 %empty to i30
  ret i30 %empty_26
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_27 = trunc i32 %empty to i16
  ret i16 %empty_27
}

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i121P(i121*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i121(i121* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i121.i32(i121, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i121
  %empty_28 = shl i121 1, %empty
  %empty_29 = and i121 %0, %empty_28
  %empty_30 = icmp ne i121 %empty_29, 0
  ret i1 %empty_30
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64
  %empty_31 = zext i32 %1 to i64
  %empty_32 = shl i64 %empty, 32
  %empty_33 = or i64 %empty_32, %empty_31
  ret i64 %empty_33
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_34 = zext i3 %1 to i6
  %empty_35 = shl i6 %empty, 3
  %empty_36 = or i6 %empty_35, %empty_34
  ret i6 %empty_36
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i1.i5(i1, i5) nounwind readnone {
entry:
  %empty = zext i1 %0 to i6
  %empty_37 = zext i5 %1 to i6
  %empty_38 = shl i6 %empty, 5
  %empty_39 = or i6 %empty_38, %empty_37
  ret i6 %empty_39
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_40 = zext i3 %1 to i5
  %empty_41 = shl i5 %empty, 3
  %empty_42 = or i5 %empty_41, %empty_40
  ret i5 %empty_42
}

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

define weak i121 @_ssdm_op_BitConcatenate.i121.i57.i4.i4.i56(i57, i4, i4, i56) nounwind readnone {
entry:
  %empty = zext i4 %2 to i60
  %empty_43 = zext i56 %3 to i60
  %empty_44 = shl i60 %empty, 56
  %empty_45 = or i60 %empty_44, %empty_43
  %empty_46 = zext i4 %1 to i64
  %empty_47 = zext i60 %empty_45 to i64
  %empty_48 = shl i64 %empty_46, 60
  %empty_49 = or i64 %empty_48, %empty_47
  %empty_50 = zext i57 %0 to i121
  %empty_51 = zext i64 %empty_49 to i121
  %empty_52 = shl i121 %empty_50, 64
  %empty_53 = or i121 %empty_52, %empty_51
  ret i121 %empty_53
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i8.i32.i8.i8(i49, i8, i4, i4, i8, i32, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %6 to i16
  %empty_54 = zext i8 %7 to i16
  %empty_55 = shl i16 %empty, 8
  %empty_56 = or i16 %empty_55, %empty_54
  %empty_57 = zext i32 %5 to i48
  %empty_58 = zext i16 %empty_56 to i48
  %empty_59 = shl i48 %empty_57, 16
  %empty_60 = or i48 %empty_59, %empty_58
  %empty_61 = zext i8 %4 to i56
  %empty_62 = zext i48 %empty_60 to i56
  %empty_63 = shl i56 %empty_61, 48
  %empty_64 = or i56 %empty_63, %empty_62
  %empty_65 = zext i4 %3 to i60
  %empty_66 = zext i56 %empty_64 to i60
  %empty_67 = shl i60 %empty_65, 56
  %empty_68 = or i60 %empty_67, %empty_66
  %empty_69 = zext i4 %2 to i64
  %empty_70 = zext i60 %empty_68 to i64
  %empty_71 = shl i64 %empty_69, 60
  %empty_72 = or i64 %empty_71, %empty_70
  %empty_73 = zext i8 %1 to i72
  %empty_74 = zext i64 %empty_72 to i72
  %empty_75 = shl i72 %empty_73, 64
  %empty_76 = or i72 %empty_75, %empty_74
  %empty_77 = zext i49 %0 to i121
  %empty_78 = zext i72 %empty_76 to i121
  %empty_79 = shl i121 %empty_77, 72
  %empty_80 = or i121 %empty_79, %empty_78
  ret i121 %empty_80
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i40.i9.i8.i4.i4.i8.i32.i8.i8(i40, i9, i8, i4, i4, i8, i32, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %7 to i16
  %empty_81 = zext i8 %8 to i16
  %empty_82 = shl i16 %empty, 8
  %empty_83 = or i16 %empty_82, %empty_81
  %empty_84 = zext i32 %6 to i48
  %empty_85 = zext i16 %empty_83 to i48
  %empty_86 = shl i48 %empty_84, 16
  %empty_87 = or i48 %empty_86, %empty_85
  %empty_88 = zext i8 %5 to i56
  %empty_89 = zext i48 %empty_87 to i56
  %empty_90 = shl i56 %empty_88, 48
  %empty_91 = or i56 %empty_90, %empty_89
  %empty_92 = zext i4 %4 to i60
  %empty_93 = zext i56 %empty_91 to i60
  %empty_94 = shl i60 %empty_92, 56
  %empty_95 = or i60 %empty_94, %empty_93
  %empty_96 = zext i4 %3 to i64
  %empty_97 = zext i60 %empty_95 to i64
  %empty_98 = shl i64 %empty_96, 60
  %empty_99 = or i64 %empty_98, %empty_97
  %empty_100 = zext i8 %2 to i72
  %empty_101 = zext i64 %empty_99 to i72
  %empty_102 = shl i72 %empty_100, 64
  %empty_103 = or i72 %empty_102, %empty_101
  %empty_104 = zext i9 %1 to i81
  %empty_105 = zext i72 %empty_103 to i81
  %empty_106 = shl i81 %empty_104, 72
  %empty_107 = or i81 %empty_106, %empty_105
  %empty_108 = zext i40 %0 to i121
  %empty_109 = zext i81 %empty_107 to i121
  %empty_110 = shl i121 %empty_108, 81
  %empty_111 = or i121 %empty_110, %empty_109
  ret i121 %empty_111
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i40.i17.i4.i4.i56(i40, i17, i4, i4, i56) nounwind readnone {
entry:
  %empty = zext i4 %3 to i60
  %empty_112 = zext i56 %4 to i60
  %empty_113 = shl i60 %empty, 56
  %empty_114 = or i60 %empty_113, %empty_112
  %empty_115 = zext i4 %2 to i64
  %empty_116 = zext i60 %empty_114 to i64
  %empty_117 = shl i64 %empty_115, 60
  %empty_118 = or i64 %empty_117, %empty_116
  %empty_119 = zext i17 %1 to i81
  %empty_120 = zext i64 %empty_118 to i81
  %empty_121 = shl i81 %empty_119, 64
  %empty_122 = or i81 %empty_121, %empty_120
  %empty_123 = zext i40 %0 to i121
  %empty_124 = zext i81 %empty_122 to i121
  %empty_125 = shl i121 %empty_123, 81
  %empty_126 = or i121 %empty_125, %empty_124
  ret i121 %empty_126
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i32.i17.i8.i64(i32, i17, i8, i64) nounwind readnone {
entry:
  %empty = zext i8 %2 to i72
  %empty_127 = zext i64 %3 to i72
  %empty_128 = shl i72 %empty, 64
  %empty_129 = or i72 %empty_128, %empty_127
  %empty_130 = zext i17 %1 to i89
  %empty_131 = zext i72 %empty_129 to i89
  %empty_132 = shl i89 %empty_130, 72
  %empty_133 = or i89 %empty_132, %empty_131
  %empty_134 = zext i32 %0 to i121
  %empty_135 = zext i89 %empty_133 to i121
  %empty_136 = shl i121 %empty_134, 89
  %empty_137 = or i121 %empty_136, %empty_135
  ret i121 %empty_137
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i32.i17.i8.i32.i32(i32, i17, i8, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %3 to i64
  %empty_138 = zext i32 %4 to i64
  %empty_139 = shl i64 %empty, 32
  %empty_140 = or i64 %empty_139, %empty_138
  %empty_141 = zext i8 %2 to i72
  %empty_142 = zext i64 %empty_140 to i72
  %empty_143 = shl i72 %empty_141, 64
  %empty_144 = or i72 %empty_143, %empty_142
  %empty_145 = zext i17 %1 to i89
  %empty_146 = zext i72 %empty_144 to i89
  %empty_147 = shl i89 %empty_145, 72
  %empty_148 = or i89 %empty_147, %empty_146
  %empty_149 = zext i32 %0 to i121
  %empty_150 = zext i89 %empty_148 to i121
  %empty_151 = shl i121 %empty_149, 89
  %empty_152 = or i121 %empty_151, %empty_150
  ret i121 %empty_152
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i32.i16.i1.i8.i64(i32, i16, i1, i8, i64) nounwind readnone {
entry:
  %empty = zext i8 %3 to i72
  %empty_153 = zext i64 %4 to i72
  %empty_154 = shl i72 %empty, 64
  %empty_155 = or i72 %empty_154, %empty_153
  %empty_156 = zext i1 %2 to i73
  %empty_157 = zext i72 %empty_155 to i73
  %empty_158 = shl i73 %empty_156, 72
  %empty_159 = or i73 %empty_158, %empty_157
  %empty_160 = zext i16 %1 to i89
  %empty_161 = zext i73 %empty_159 to i89
  %empty_162 = shl i89 %empty_160, 73
  %empty_163 = or i89 %empty_162, %empty_161
  %empty_164 = zext i32 %0 to i121
  %empty_165 = zext i89 %empty_163 to i121
  %empty_166 = shl i121 %empty_164, 89
  %empty_167 = or i121 %empty_166, %empty_165
  ret i121 %empty_167
}

define weak i121 @_ssdm_op_BitConcatenate.i121.i32.i16.i1.i8.i32.i32(i32, i16, i1, i8, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %4 to i64
  %empty_168 = zext i32 %5 to i64
  %empty_169 = shl i64 %empty, 32
  %empty_170 = or i64 %empty_169, %empty_168
  %empty_171 = zext i8 %3 to i72
  %empty_172 = zext i64 %empty_170 to i72
  %empty_173 = shl i72 %empty_171, 64
  %empty_174 = or i72 %empty_173, %empty_172
  %empty_175 = zext i1 %2 to i73
  %empty_176 = zext i72 %empty_174 to i73
  %empty_177 = shl i73 %empty_175, 72
  %empty_178 = or i73 %empty_177, %empty_176
  %empty_179 = zext i16 %1 to i89
  %empty_180 = zext i73 %empty_178 to i89
  %empty_181 = shl i89 %empty_179, 73
  %empty_182 = or i89 %empty_181, %empty_180
  %empty_183 = zext i32 %0 to i121
  %empty_184 = zext i89 %empty_182 to i121
  %empty_185 = shl i121 %empty_183, 89
  %empty_186 = or i121 %empty_185, %empty_184
  ret i121 %empty_186
}

declare i121 @_autotb_FifoWrite_i121(i121*, i121)

declare i121 @_autotb_FifoRead_i121(i121*)

declare i1 @_autotb_FifoCanRead_i121(i121*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @MPI_Send.1(float %p_read) {
codeRepl:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str228, i32 0, i32 0, [1 x i8]* @p_str229, [1 x i8]* @p_str230, [1 x i8]* @p_str231, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str232, [1 x i8]* @p_str233)
  %empty_187 = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str234, i32 0, i32 0, [1 x i8]* @p_str235, [1 x i8]* @p_str236, [1 x i8]* @p_str237, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str238, [1 x i8]* @p_str239)
  %p_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %p_read)
  %state_1_load = load i2* @state_1, align 1
  %t_V = load i64* @time_V_3, align 8
  switch i2 %state_1_load, label %.loopexit1269 [
    i2 0, label %._crit_edge1309
    i2 1, label %.preheader1277.preheader
    i2 -2, label %.preheader1267.preheader
  ]

.preheader1267.preheader:                         ; preds = %codeRepl
  %test = alloca i1
  %old_seq_num = alloca i32
  %tmp_dest_V = alloca i8
  %temp1 = bitcast float %p_read_1 to i32
  store i32 0, i32* %old_seq_num
  store i1 false, i1* %test
  br label %.preheader1267

.preheader1277.preheader:                         ; preds = %codeRepl
  %float_clr_num_load = load i32* @float_clr_num, align 4
  br label %.preheader1277

._crit_edge1309:                                  ; preds = %codeRepl
  %envlp_DATA_TYPE_V_1_s = load i4* @envlp_DATA_TYPE_V_1, align 1
  %envlp_DATA_OR_ENVLP_s = load i4* @envlp_DATA_OR_ENVLP_s, align 1
  %tmp201 = call i121 @_ssdm_op_BitConcatenate.i121.i57.i4.i4.i56(i57 131329, i4 %envlp_DATA_OR_ENVLP_s, i4 %envlp_DATA_TYPE_V_1_s, i56 65536)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp201)
  store i2 1, i2* @state_1, align 1
  br label %.loopexit1269

.preheader1277:                                   ; preds = %._crit_edge1310, %.preheader1277.preheader
  %j = phi i31 [ %i_3, %._crit_edge1310 ], [ 0, %.preheader1277.preheader ]
  %j_cast = zext i31 %j to i32
  %tmp_s = icmp slt i32 %j_cast, %float_clr_num_load
  %i_3 = add i31 %j, 1
  br i1 %tmp_s, label %0, label %6

; <label>:0                                       ; preds = %.preheader1277
  %tmp_2 = zext i31 %j to i64
  %float_clr2snd_array_s = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_2
  %float_clr2snd_array_8 = load i1* %float_clr2snd_array_s, align 1
  br i1 %float_clr2snd_array_8, label %1, label %._crit_edge1310

; <label>:1                                       ; preds = %0
  %float_clr2snd_array_9 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_2
  %float_clr2snd_array_10 = load i16* %float_clr2snd_array_9, align 4
  %tmp_4 = icmp eq i16 %float_clr2snd_array_10, 0
  br i1 %tmp_4, label %2, label %._crit_edge1310

; <label>:2                                       ; preds = %1
  %float_clr2snd_array_11 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_2
  %float_clr2snd_array_12 = load i8* %float_clr2snd_array_11, align 16
  %tmp_8 = icmp eq i8 %float_clr2snd_array_12, 1
  br i1 %tmp_8, label %3, label %._crit_edge1310

; <label>:3                                       ; preds = %2
  %float_clr2snd_array_13 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_2
  %float_clr2snd_array_14 = load i4* %float_clr2snd_array_13, align 1
  store i4 %float_clr2snd_array_14, i4* @envlp_DATA_TYPE_V_1, align 1
  %float_clr2snd_array_15 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_2
  %float_clr2snd_array_16 = load i4* %float_clr2snd_array_15, align 2
  store i4 %float_clr2snd_array_16, i4* @envlp_DATA_OR_ENVLP_s, align 2
  store i2 -2, i2* @state_1, align 1
  %tmp_10 = add nsw i32 %float_clr_num_load, -1
  store i32 %tmp_10, i32* @float_clr_num, align 4
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j1 = phi i32 [ %j_cast, %3 ], [ %j_1, %5 ]
  %tmp_15 = icmp slt i32 %j1, %tmp_10
  br i1 %tmp_15, label %5, label %.loopexit1269.loopexit43

; <label>:5                                       ; preds = %4
  %tmp_21 = sext i32 %j1 to i64
  %j_1 = add nsw i32 %j1, 1
  %tmp_22 = sext i32 %j_1 to i64
  %float_clr2snd_array_17 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_22
  %float_clr2snd_array_18 = load i8* %float_clr2snd_array_17, align 16
  %float_clr2snd_array_19 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_21
  store i8 %float_clr2snd_array_18, i8* %float_clr2snd_array_19, align 16
  %float_clr2snd_array_20 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_22
  %float_clr2snd_array_21 = load i1* %float_clr2snd_array_20, align 1
  %float_clr2snd_array_22 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_21
  store i1 %float_clr2snd_array_21, i1* %float_clr2snd_array_22, align 1
  %float_clr2snd_array_23 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_22
  %float_clr2snd_array_24 = load i32* %float_clr2snd_array_23, align 4
  %float_clr2snd_array_25 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_21
  store i32 %float_clr2snd_array_24, i32* %float_clr2snd_array_25, align 4
  %float_clr2snd_array_26 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_22
  %float_clr2snd_array_27 = load i8* %float_clr2snd_array_26, align 8
  %float_clr2snd_array_28 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_21
  store i8 %float_clr2snd_array_27, i8* %float_clr2snd_array_28, align 8
  %float_clr2snd_array_29 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_22
  %float_clr2snd_array_30 = load i4* %float_clr2snd_array_29, align 1
  %float_clr2snd_array_31 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_21
  store i4 %float_clr2snd_array_30, i4* %float_clr2snd_array_31, align 1
  %float_clr2snd_array_32 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_22
  %float_clr2snd_array_33 = load i4* %float_clr2snd_array_32, align 2
  %float_clr2snd_array_34 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_21
  store i4 %float_clr2snd_array_33, i4* %float_clr2snd_array_34, align 2
  %float_clr2snd_array_35 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_22
  %float_clr2snd_array_36 = load i16* %float_clr2snd_array_35, align 4
  %float_clr2snd_array_37 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_21
  store i16 %float_clr2snd_array_36, i16* %float_clr2snd_array_37, align 4
  br label %4

._crit_edge1310:                                  ; preds = %2, %1, %0
  br label %.preheader1277

; <label>:6                                       ; preds = %.preheader1277
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i121P(i121* @stream_in_V, i32 1)
  br i1 %tmp, label %7, label %48

; <label>:7                                       ; preds = %6
  %tmp_1263 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_pkt_dest_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_1263, i32 64, i32 71)
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_1263, i32 72)
  br label %8

; <label>:8                                       ; preds = %9, %7
  %last_V = phi i1 [ %tmp_5, %7 ], [ %tmp_14, %9 ]
  br i1 %last_V, label %10, label %9

; <label>:9                                       ; preds = %8
  %tmp_2281 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_2281, i32 72)
  br label %8

; <label>:10                                      ; preds = %8
  %temp_diff_src_or_typ = zext i8 %recv_pkt_dest_V to i16
  %temp_diff_src_or_typ_1 = trunc i121 %tmp_1263 to i8
  %temp_diff_src_or_typ_2 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_1263, i32 8, i32 15)
  %temp_diff_src_or_typ_3 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_1263, i32 16, i32 47)
  %temp_diff_src_or_typ_4 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_1263, i32 48, i32 55)
  %temp_diff_src_or_typ_5 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_1263, i32 60, i32 63)
  %tmp_11 = icmp eq i8 %temp_diff_src_or_typ_2, 1
  %tmp_12 = icmp eq i8 %recv_pkt_dest_V, 0
  %tmp_13 = icmp eq i8 %temp_diff_src_or_typ_1, 1
  %tmp1 = and i1 %tmp_12, %tmp_13
  %or_cond1 = and i1 %tmp1, %tmp_11
  br i1 %or_cond1, label %11, label %._crit_edge1313

; <label>:11                                      ; preds = %10
  store i2 -2, i2* @state_1, align 1
  br label %.loopexit1269

._crit_edge1313:                                  ; preds = %10
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_1263, i32 85, i32 88)
  %tmp_16 = icmp eq i4 %p_Result_s, 0
  br i1 %tmp_16, label %12, label %._crit_edge1316

; <label>:12                                      ; preds = %._crit_edge1313
  %p_Result_1 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_1263, i32 81, i32 84)
  %tmp_23 = icmp eq i4 %p_Result_1, 0
  br i1 %tmp_23, label %13, label %30

; <label>:13                                      ; preds = %12
  %tmp_25 = icmp eq i8 %temp_diff_src_or_typ_2, 0
  br i1 %tmp_25, label %.preheader1274.preheader, label %21

.preheader1274.preheader:                         ; preds = %13
  %int_req_num_load = load i32* @int_req_num, align 4
  br label %.preheader1274

.preheader1274:                                   ; preds = %._crit_edge1317, %.preheader1274.preheader
  %i1 = phi i31 [ %i_4, %._crit_edge1317 ], [ 0, %.preheader1274.preheader ]
  %i1_cast = zext i31 %i1 to i32
  %tmp_30 = icmp slt i32 %i1_cast, %int_req_num_load
  %i_4 = add i31 %i1, 1
  br i1 %tmp_30, label %14, label %20

; <label>:14                                      ; preds = %.preheader1274
  %tmp_33 = zext i31 %i1 to i64
  %int_request_array_SR = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_33
  %int_request_array_SR_1 = load i8* %int_request_array_SR, align 16
  %tmp_34 = icmp eq i8 %int_request_array_SR_1, %temp_diff_src_or_typ_1
  br i1 %tmp_34, label %15, label %._crit_edge1317

; <label>:15                                      ; preds = %14
  %int_request_array_DE = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_33
  %int_request_array_DE_1 = load i16* %int_request_array_DE, align 4
  %tmp_41 = icmp eq i16 %int_request_array_DE_1, %temp_diff_src_or_typ
  br i1 %tmp_41, label %16, label %._crit_edge1317

; <label>:16                                      ; preds = %15
  %int_request_array_PK = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_33
  %int_request_array_PK_1 = load i1* %int_request_array_PK, align 1
  br i1 %int_request_array_PK_1, label %._crit_edge1317, label %17

; <label>:17                                      ; preds = %16
  %int_request_array_MS = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_33
  %int_request_array_MS_1 = load i32* %int_request_array_MS, align 4
  %tmp_65 = icmp eq i32 %int_request_array_MS_1, %temp_diff_src_or_typ_3
  br i1 %tmp_65, label %18, label %._crit_edge1317

; <label>:18                                      ; preds = %17
  %int_request_array_TA = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_33
  %int_request_array_TA_1 = load i8* %int_request_array_TA, align 8
  %tmp_77 = icmp eq i8 %int_request_array_TA_1, %temp_diff_src_or_typ_4
  br i1 %tmp_77, label %19, label %._crit_edge1317

; <label>:19                                      ; preds = %18
  %int_request_array_DA = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_33
  %int_request_array_DA_1 = load i4* %int_request_array_DA, align 1
  %tmp_86 = icmp eq i4 %int_request_array_DA_1, %temp_diff_src_or_typ_5
  br i1 %tmp_86, label %.loopexit1269.loopexit42, label %._crit_edge1317

._crit_edge1317:                                  ; preds = %19, %18, %17, %16, %15, %14
  br label %.preheader1274

; <label>:20                                      ; preds = %.preheader1274
  %tmp_35 = sext i32 %int_req_num_load to i64
  %int_request_array_SR_2 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_35
  store i8 %temp_diff_src_or_typ_1, i8* %int_request_array_SR_2, align 16
  %int_request_array_PK_2 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_35
  store i1 false, i1* %int_request_array_PK_2, align 1
  %int_request_array_MS_2 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_35
  store i32 %temp_diff_src_or_typ_3, i32* %int_request_array_MS_2, align 4
  %int_request_array_TA_2 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_35
  store i8 %temp_diff_src_or_typ_4, i8* %int_request_array_TA_2, align 8
  %int_request_array_DA_2 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_35
  store i4 %temp_diff_src_or_typ_5, i4* %int_request_array_DA_2, align 1
  %int_request_array_DE_2 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_35
  store i16 %temp_diff_src_or_typ, i16* %int_request_array_DE_2, align 4
  %tmp_36 = add nsw i32 %int_req_num_load, 1
  store i32 %tmp_36, i32* @int_req_num, align 4
  br label %29

; <label>:21                                      ; preds = %13
  br i1 %tmp_11, label %.preheader1272.preheader, label %._crit_edge1323

.preheader1272.preheader:                         ; preds = %21
  %int_clr_num_load = load i32* @int_clr_num, align 4
  br label %.preheader1272

.preheader1272:                                   ; preds = %._crit_edge1324, %.preheader1272.preheader
  %i2 = phi i31 [ %i_5, %._crit_edge1324 ], [ 0, %.preheader1272.preheader ]
  %i2_cast = zext i31 %i2 to i32
  %tmp_37 = icmp slt i32 %i2_cast, %int_clr_num_load
  %i_5 = add i31 %i2, 1
  br i1 %tmp_37, label %22, label %28

; <label>:22                                      ; preds = %.preheader1272
  %tmp_42 = zext i31 %i2 to i64
  %int_clr2snd_array_SR = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_42
  %int_clr2snd_array_SR_1 = load i8* %int_clr2snd_array_SR, align 16
  %tmp_43 = icmp eq i8 %int_clr2snd_array_SR_1, %temp_diff_src_or_typ_1
  br i1 %tmp_43, label %23, label %._crit_edge1324

; <label>:23                                      ; preds = %22
  %int_clr2snd_array_DE = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_42
  %int_clr2snd_array_DE_1 = load i16* %int_clr2snd_array_DE, align 4
  %tmp_53 = icmp eq i16 %int_clr2snd_array_DE_1, %temp_diff_src_or_typ
  br i1 %tmp_53, label %24, label %._crit_edge1324

; <label>:24                                      ; preds = %23
  %int_clr2snd_array_PK = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_42
  %int_clr2snd_array_PK_1 = load i1* %int_clr2snd_array_PK, align 1
  br i1 %int_clr2snd_array_PK_1, label %25, label %._crit_edge1324

; <label>:25                                      ; preds = %24
  %int_clr2snd_array_MS = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_42
  %int_clr2snd_array_MS_1 = load i32* %int_clr2snd_array_MS, align 4
  %tmp_78 = icmp eq i32 %int_clr2snd_array_MS_1, %temp_diff_src_or_typ_3
  br i1 %tmp_78, label %26, label %._crit_edge1324

; <label>:26                                      ; preds = %25
  %int_clr2snd_array_TA = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_42
  %int_clr2snd_array_TA_1 = load i8* %int_clr2snd_array_TA, align 8
  %tmp_87 = icmp eq i8 %int_clr2snd_array_TA_1, %temp_diff_src_or_typ_4
  br i1 %tmp_87, label %27, label %._crit_edge1324

; <label>:27                                      ; preds = %26
  %int_clr2snd_array_DA = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_42
  %int_clr2snd_array_DA_2 = load i4* %int_clr2snd_array_DA, align 1
  %tmp_92 = icmp eq i4 %int_clr2snd_array_DA_2, %temp_diff_src_or_typ_5
  br i1 %tmp_92, label %.loopexit1269.loopexit41, label %._crit_edge1324

._crit_edge1324:                                  ; preds = %27, %26, %25, %24, %23, %22
  br label %.preheader1272

; <label>:28                                      ; preds = %.preheader1272
  %tmp_44 = sext i32 %int_clr_num_load to i64
  %int_clr2snd_array_SR_2 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_44
  store i8 %temp_diff_src_or_typ_1, i8* %int_clr2snd_array_SR_2, align 16
  %int_clr2snd_array_PK_2 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_44
  store i1 true, i1* %int_clr2snd_array_PK_2, align 1
  %int_clr2snd_array_MS_2 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_44
  store i32 %temp_diff_src_or_typ_3, i32* %int_clr2snd_array_MS_2, align 4
  %int_clr2snd_array_TA_2 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_44
  store i8 %temp_diff_src_or_typ_4, i8* %int_clr2snd_array_TA_2, align 8
  %int_clr2snd_array_DA_3 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_44
  store i4 %temp_diff_src_or_typ_5, i4* %int_clr2snd_array_DA_3, align 1
  %int_clr2snd_array_DE_2 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_44
  store i16 %temp_diff_src_or_typ, i16* %int_clr2snd_array_DE_2, align 4
  %tmp_45 = add nsw i32 %int_clr_num_load, 1
  store i32 %tmp_45, i32* @int_clr_num, align 4
  br label %._crit_edge1323

._crit_edge1323:                                  ; preds = %28, %21
  br label %29

; <label>:29                                      ; preds = %._crit_edge1323, %20
  br label %.loopexit1269

; <label>:30                                      ; preds = %12
  %tmp_26 = icmp eq i4 %p_Result_1, 1
  br i1 %tmp_26, label %31, label %._crit_edge1316

; <label>:31                                      ; preds = %30
  %tmp_28 = icmp eq i8 %temp_diff_src_or_typ_2, 0
  br i1 %tmp_28, label %.preheader1270.preheader, label %39

.preheader1270.preheader:                         ; preds = %31
  %float_req_num_load = load i32* @float_req_num, align 4
  br label %.preheader1270

.preheader1270:                                   ; preds = %._crit_edge1331, %.preheader1270.preheader
  %i4 = phi i31 [ %i_6, %._crit_edge1331 ], [ 0, %.preheader1270.preheader ]
  %i4_cast = zext i31 %i4 to i32
  %tmp_38 = icmp slt i32 %i4_cast, %float_req_num_load
  %i_6 = add i31 %i4, 1
  br i1 %tmp_38, label %32, label %38

; <label>:32                                      ; preds = %.preheader1270
  %tmp_46 = zext i31 %i4 to i64
  %float_request_array_s = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_46
  %float_request_array_8 = load i8* %float_request_array_s, align 16
  %tmp_47 = icmp eq i8 %float_request_array_8, %temp_diff_src_or_typ_1
  br i1 %tmp_47, label %33, label %._crit_edge1331

; <label>:33                                      ; preds = %32
  %float_request_array_9 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_46
  %float_request_array_10 = load i16* %float_request_array_9, align 4
  %tmp_54 = icmp eq i16 %float_request_array_10, %temp_diff_src_or_typ
  br i1 %tmp_54, label %34, label %._crit_edge1331

; <label>:34                                      ; preds = %33
  %float_request_array_11 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_46
  %float_request_array_12 = load i1* %float_request_array_11, align 1
  br i1 %float_request_array_12, label %._crit_edge1331, label %35

; <label>:35                                      ; preds = %34
  %float_request_array_13 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_46
  %float_request_array_14 = load i32* %float_request_array_13, align 4
  %tmp_79 = icmp eq i32 %float_request_array_14, %temp_diff_src_or_typ_3
  br i1 %tmp_79, label %36, label %._crit_edge1331

; <label>:36                                      ; preds = %35
  %float_request_array_15 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_46
  %float_request_array_16 = load i8* %float_request_array_15, align 8
  %tmp_88 = icmp eq i8 %float_request_array_16, %temp_diff_src_or_typ_4
  br i1 %tmp_88, label %37, label %._crit_edge1331

; <label>:37                                      ; preds = %36
  %float_request_array_17 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_46
  %float_request_array_18 = load i4* %float_request_array_17, align 1
  %tmp_93 = icmp eq i4 %float_request_array_18, %temp_diff_src_or_typ_5
  br i1 %tmp_93, label %.loopexit1269.loopexit40, label %._crit_edge1331

._crit_edge1331:                                  ; preds = %37, %36, %35, %34, %33, %32
  br label %.preheader1270

; <label>:38                                      ; preds = %.preheader1270
  %tmp_48 = sext i32 %float_req_num_load to i64
  %float_request_array_19 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_48
  store i8 %temp_diff_src_or_typ_1, i8* %float_request_array_19, align 16
  %float_request_array_20 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_48
  store i1 false, i1* %float_request_array_20, align 1
  %float_request_array_21 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_48
  store i32 %temp_diff_src_or_typ_3, i32* %float_request_array_21, align 4
  %float_request_array_22 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_48
  store i8 %temp_diff_src_or_typ_4, i8* %float_request_array_22, align 8
  %float_request_array_23 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_48
  store i4 %temp_diff_src_or_typ_5, i4* %float_request_array_23, align 1
  %float_request_array_24 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_48
  store i16 %temp_diff_src_or_typ, i16* %float_request_array_24, align 4
  %tmp_49 = add nsw i32 %float_req_num_load, 1
  store i32 %tmp_49, i32* @float_req_num, align 4
  br label %47

; <label>:39                                      ; preds = %31
  br i1 %tmp_11, label %.preheader1268.preheader, label %._crit_edge1337

.preheader1268.preheader:                         ; preds = %39
  br label %.preheader1268

.preheader1268:                                   ; preds = %.preheader1268.preheader, %._crit_edge1338
  %i5 = phi i31 [ %i_8, %._crit_edge1338 ], [ 0, %.preheader1268.preheader ]
  %i5_cast = zext i31 %i5 to i32
  %tmp_50 = icmp slt i32 %i5_cast, %float_clr_num_load
  %i_8 = add i31 %i5, 1
  br i1 %tmp_50, label %40, label %46

; <label>:40                                      ; preds = %.preheader1268
  %tmp_55 = zext i31 %i5 to i64
  %float_clr2snd_array_38 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_55
  %float_clr2snd_array_39 = load i8* %float_clr2snd_array_38, align 16
  %tmp_56 = icmp eq i8 %float_clr2snd_array_39, %temp_diff_src_or_typ_1
  br i1 %tmp_56, label %41, label %._crit_edge1338

; <label>:41                                      ; preds = %40
  %float_clr2snd_array_40 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_55
  %float_clr2snd_array_41 = load i16* %float_clr2snd_array_40, align 4
  %tmp_66 = icmp eq i16 %float_clr2snd_array_41, %temp_diff_src_or_typ
  br i1 %tmp_66, label %42, label %._crit_edge1338

; <label>:42                                      ; preds = %41
  %float_clr2snd_array_42 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_55
  %float_clr2snd_array_43 = load i1* %float_clr2snd_array_42, align 1
  br i1 %float_clr2snd_array_43, label %43, label %._crit_edge1338

; <label>:43                                      ; preds = %42
  %float_clr2snd_array_44 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_55
  %float_clr2snd_array_45 = load i32* %float_clr2snd_array_44, align 4
  %tmp_89 = icmp eq i32 %float_clr2snd_array_45, %temp_diff_src_or_typ_3
  br i1 %tmp_89, label %44, label %._crit_edge1338

; <label>:44                                      ; preds = %43
  %float_clr2snd_array_46 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_55
  %float_clr2snd_array_47 = load i8* %float_clr2snd_array_46, align 8
  %tmp_94 = icmp eq i8 %float_clr2snd_array_47, %temp_diff_src_or_typ_4
  br i1 %tmp_94, label %45, label %._crit_edge1338

; <label>:45                                      ; preds = %44
  %float_clr2snd_array_48 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_55
  %float_clr2snd_array_49 = load i4* %float_clr2snd_array_48, align 1
  %tmp_98 = icmp eq i4 %float_clr2snd_array_49, %temp_diff_src_or_typ_5
  br i1 %tmp_98, label %.loopexit1269.loopexit39, label %._crit_edge1338

._crit_edge1338:                                  ; preds = %45, %44, %43, %42, %41, %40
  br label %.preheader1268

; <label>:46                                      ; preds = %.preheader1268
  %tmp_57 = sext i32 %float_clr_num_load to i64
  %float_clr2snd_array_50 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_57
  store i8 %temp_diff_src_or_typ_1, i8* %float_clr2snd_array_50, align 16
  %float_clr2snd_array_51 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_57
  store i1 true, i1* %float_clr2snd_array_51, align 1
  %float_clr2snd_array_52 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_57
  store i32 %temp_diff_src_or_typ_3, i32* %float_clr2snd_array_52, align 4
  %float_clr2snd_array_53 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_57
  store i8 %temp_diff_src_or_typ_4, i8* %float_clr2snd_array_53, align 8
  %float_clr2snd_array_54 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_57
  store i4 %temp_diff_src_or_typ_5, i4* %float_clr2snd_array_54, align 1
  %float_clr2snd_array_55 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_57
  store i16 %temp_diff_src_or_typ, i16* %float_clr2snd_array_55, align 4
  %tmp_58 = add nsw i32 %float_clr_num_load, 1
  store i32 %tmp_58, i32* @float_clr_num, align 4
  br label %._crit_edge1337

._crit_edge1337:                                  ; preds = %46, %39
  br label %47

; <label>:47                                      ; preds = %._crit_edge1337, %38
  br label %.loopexit1269

._crit_edge1316:                                  ; preds = %30, %._crit_edge1313
  br label %.loopexit1269

; <label>:48                                      ; preds = %6
  %tmp_6 = add i64 %t_V, 1
  %tmp_7 = icmp eq i64 %tmp_6, 314465410
  br i1 %tmp_7, label %49, label %.loopexit1269

; <label>:49                                      ; preds = %48
  store i2 0, i2* @state_1, align 1
  br label %.loopexit1269

.preheader1267:                                   ; preds = %104, %.preheader1267.preheader
  %to_send_data = phi i64 [ %to_send_data_0_3, %104 ], [ undef, %.preheader1267.preheader ]
  %i6 = phi i32 [ %i_14, %104 ], [ 1, %.preheader1267.preheader ]
  %seq_num = phi i32 [ %temp_diff_src_or_typ_15, %104 ], [ 0, %.preheader1267.preheader ]
  %for_finished = phi i1 [ true, %104 ], [ false, %.preheader1267.preheader ]
  %error_is_seen = phi i1 [ %error_is_seen_s, %104 ], [ false, %.preheader1267.preheader ]
  br label %50

; <label>:50                                      ; preds = %98, %.preheader1267
  %tmp_data_V_1 = phi i64 [ %to_send_data, %.preheader1267 ], [ %to_send_data_0_2, %98 ]
  %i6_1 = phi i32 [ %i6, %.preheader1267 ], [ %i_13, %98 ]
  %old_seq_num_1 = phi i32 [ %seq_num, %.preheader1267 ], [ %seq_num_3, %98 ]
  %error_is_seen_1 = phi i1 [ %error_is_seen, %.preheader1267 ], [ %error_is_seen_2, %98 ]
  %tmp_3 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %i6_1, i32 1, i32 31)
  %icmp = icmp sgt i31 %tmp_3, 0
  br i1 %icmp, label %.loopexit1227.loopexit, label %51

; <label>:51                                      ; preds = %50
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str) nounwind
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i121P(i121* @stream_in_V, i32 1)
  br i1 %tmp_1, label %52, label %._crit_edge1345

; <label>:52                                      ; preds = %51
  %tmp_3_1 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_data_dest_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3_1, i32 64, i32 71)
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_3_1, i32 72)
  %recv_data_id_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3_1, i32 73, i32 80)
  br label %53

; <label>:53                                      ; preds = %54, %52
  %last_V_1 = phi i1 [ %tmp_9, %52 ], [ %tmp_20, %54 ]
  br i1 %last_V_1, label %55, label %54

; <label>:54                                      ; preds = %53
  %tmp_4_1 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_4_1, i32 72)
  br label %53

; <label>:55                                      ; preds = %53
  %temp_diff_src_or_typ_6 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_7 = trunc i121 %tmp_3_1 to i8
  %temp_diff_src_or_typ_8 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3_1, i32 8, i32 15)
  %temp_diff_src_or_typ_9 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_3_1, i32 16, i32 47)
  %temp_diff_src_or_typ_10 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3_1, i32 48, i32 55)
  %temp_diff_src_or_typ_11 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_3_1, i32 60, i32 63)
  %tmp_18 = icmp eq i8 %temp_diff_src_or_typ_8, 4
  %tmp_19 = icmp eq i8 %recv_data_id_V, 1
  %or_cond2 = and i1 %tmp_18, %tmp_19
  br i1 %or_cond2, label %56, label %._crit_edge1346

; <label>:56                                      ; preds = %55
  %lhs_V_cast = zext i32 %temp_diff_src_or_typ_9 to i33
  %r_V = mul i33 %lhs_V_cast, 372
  %i = call i32 @_ssdm_op_PartSelect.i32.i33.i32.i32(i33 %r_V, i32 1, i32 32)
  store i32 %old_seq_num_1, i32* %old_seq_num
  br label %98

._crit_edge1346:                                  ; preds = %55
  %tmp_24 = icmp eq i8 %temp_diff_src_or_typ_8, 5
  %or_cond3 = and i1 %tmp_24, %tmp_19
  br i1 %or_cond3, label %._crit_edge1349, label %._crit_edge1348

._crit_edge1348:                                  ; preds = %._crit_edge1346
  %p_Result_2 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_3_1, i32 85, i32 88)
  %tmp_27 = icmp eq i4 %p_Result_2, 0
  br i1 %tmp_27, label %57, label %._crit_edge1351

; <label>:57                                      ; preds = %._crit_edge1348
  %p_Result_3 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_3_1, i32 81, i32 84)
  %tmp_29 = icmp eq i4 %p_Result_3, 0
  br i1 %tmp_29, label %58, label %73

; <label>:58                                      ; preds = %57
  %tmp_31 = icmp eq i8 %temp_diff_src_or_typ_8, 0
  br i1 %tmp_31, label %.preheader1257.preheader, label %65

.preheader1257.preheader:                         ; preds = %58
  %int_req_num_load_1 = load i32* @int_req_num, align 4
  br label %.preheader1257

.preheader1257:                                   ; preds = %._crit_edge1352, %.preheader1257.preheader
  %i7 = phi i31 [ %i_7, %._crit_edge1352 ], [ 0, %.preheader1257.preheader ]
  %i7_cast = zext i31 %i7 to i32
  %tmp_51 = icmp slt i32 %i7_cast, %int_req_num_load_1
  %i_7 = add i31 %i7, 1
  br i1 %tmp_51, label %59, label %.loopexit1226

; <label>:59                                      ; preds = %.preheader1257
  %tmp_59 = zext i31 %i7 to i64
  %int_request_array_SR_3 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_59
  %int_request_array_SR_4 = load i8* %int_request_array_SR_3, align 16
  %tmp_60 = icmp eq i8 %int_request_array_SR_4, %temp_diff_src_or_typ_7
  br i1 %tmp_60, label %60, label %._crit_edge1352

; <label>:60                                      ; preds = %59
  %int_request_array_DE_3 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_59
  %int_request_array_DE_4 = load i16* %int_request_array_DE_3, align 4
  %tmp_67 = icmp eq i16 %int_request_array_DE_4, %temp_diff_src_or_typ_6
  br i1 %tmp_67, label %61, label %._crit_edge1352

; <label>:61                                      ; preds = %60
  %int_request_array_PK_3 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_59
  %int_request_array_PK_4 = load i1* %int_request_array_PK_3, align 1
  br i1 %int_request_array_PK_4, label %._crit_edge1352, label %62

; <label>:62                                      ; preds = %61
  %int_request_array_MS_3 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_59
  %int_request_array_MS_4 = load i32* %int_request_array_MS_3, align 4
  %tmp_90 = icmp eq i32 %int_request_array_MS_4, %temp_diff_src_or_typ_9
  br i1 %tmp_90, label %63, label %._crit_edge1352

; <label>:63                                      ; preds = %62
  %int_request_array_TA_3 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_59
  %int_request_array_TA_4 = load i8* %int_request_array_TA_3, align 8
  %tmp_95 = icmp eq i8 %int_request_array_TA_4, %temp_diff_src_or_typ_10
  br i1 %tmp_95, label %64, label %._crit_edge1352

; <label>:64                                      ; preds = %63
  %int_request_array_DA_3 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_59
  %int_request_array_DA_4 = load i4* %int_request_array_DA_3, align 1
  %tmp_99 = icmp eq i4 %int_request_array_DA_4, %temp_diff_src_or_typ_11
  br i1 %tmp_99, label %.critedge.loopexit, label %._crit_edge1352

._crit_edge1352:                                  ; preds = %64, %63, %62, %61, %60, %59
  br label %.preheader1257

.loopexit1226:                                    ; preds = %.preheader1257
  %tmp_61 = sext i32 %int_req_num_load_1 to i64
  %int_request_array_SR_5 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_61
  store i8 %temp_diff_src_or_typ_7, i8* %int_request_array_SR_5, align 16
  %int_request_array_PK_5 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_61
  store i1 false, i1* %int_request_array_PK_5, align 1
  %int_request_array_MS_5 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_61
  store i32 %temp_diff_src_or_typ_9, i32* %int_request_array_MS_5, align 4
  %int_request_array_TA_5 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_61
  store i8 %temp_diff_src_or_typ_10, i8* %int_request_array_TA_5, align 8
  %int_request_array_DA_5 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_61
  store i4 %temp_diff_src_or_typ_11, i4* %int_request_array_DA_5, align 1
  %int_request_array_DE_5 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_61
  store i16 %temp_diff_src_or_typ_6, i16* %int_request_array_DE_5, align 4
  %tmp_62 = add nsw i32 %int_req_num_load_1, 1
  store i32 %tmp_62, i32* @int_req_num, align 4
  br label %.critedge

.critedge.loopexit:                               ; preds = %64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.loopexit1226
  br label %72

; <label>:65                                      ; preds = %58
  %tmp_39 = icmp eq i8 %temp_diff_src_or_typ_8, 1
  br i1 %tmp_39, label %.preheader1256.preheader, label %._crit_edge1358

.preheader1256.preheader:                         ; preds = %65
  %int_clr_num_load_1 = load i32* @int_clr_num, align 4
  br label %.preheader1256

.preheader1256:                                   ; preds = %._crit_edge1359, %.preheader1256.preheader
  %i8 = phi i31 [ %i_9, %._crit_edge1359 ], [ 0, %.preheader1256.preheader ]
  %i8_cast = zext i31 %i8 to i32
  %tmp_63 = icmp slt i32 %i8_cast, %int_clr_num_load_1
  %i_9 = add i31 %i8, 1
  br i1 %tmp_63, label %66, label %.loopexit1225

; <label>:66                                      ; preds = %.preheader1256
  %tmp_68 = zext i31 %i8 to i64
  %int_clr2snd_array_SR_3 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_68
  %int_clr2snd_array_SR_4 = load i8* %int_clr2snd_array_SR_3, align 16
  %tmp_69 = icmp eq i8 %int_clr2snd_array_SR_4, %temp_diff_src_or_typ_7
  br i1 %tmp_69, label %67, label %._crit_edge1359

; <label>:67                                      ; preds = %66
  %int_clr2snd_array_DE_3 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_68
  %int_clr2snd_array_DE_4 = load i16* %int_clr2snd_array_DE_3, align 4
  %tmp_80 = icmp eq i16 %int_clr2snd_array_DE_4, %temp_diff_src_or_typ_6
  br i1 %tmp_80, label %68, label %._crit_edge1359

; <label>:68                                      ; preds = %67
  %int_clr2snd_array_PK_3 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_68
  %int_clr2snd_array_PK_4 = load i1* %int_clr2snd_array_PK_3, align 1
  br i1 %int_clr2snd_array_PK_4, label %69, label %._crit_edge1359

; <label>:69                                      ; preds = %68
  %int_clr2snd_array_MS_3 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_68
  %int_clr2snd_array_MS_4 = load i32* %int_clr2snd_array_MS_3, align 4
  %tmp_96 = icmp eq i32 %int_clr2snd_array_MS_4, %temp_diff_src_or_typ_9
  br i1 %tmp_96, label %70, label %._crit_edge1359

; <label>:70                                      ; preds = %69
  %int_clr2snd_array_TA_3 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_68
  %int_clr2snd_array_TA_4 = load i8* %int_clr2snd_array_TA_3, align 8
  %tmp_100 = icmp eq i8 %int_clr2snd_array_TA_4, %temp_diff_src_or_typ_10
  br i1 %tmp_100, label %71, label %._crit_edge1359

; <label>:71                                      ; preds = %70
  %int_clr2snd_array_DA_4 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_68
  %int_clr2snd_array_DA_5 = load i4* %int_clr2snd_array_DA_4, align 1
  %tmp_103 = icmp eq i4 %int_clr2snd_array_DA_5, %temp_diff_src_or_typ_11
  br i1 %tmp_103, label %.critedge1243.loopexit, label %._crit_edge1359

._crit_edge1359:                                  ; preds = %71, %70, %69, %68, %67, %66
  br label %.preheader1256

.loopexit1225:                                    ; preds = %.preheader1256
  %tmp_70 = sext i32 %int_clr_num_load_1 to i64
  %int_clr2snd_array_SR_5 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_70
  store i8 %temp_diff_src_or_typ_7, i8* %int_clr2snd_array_SR_5, align 16
  %int_clr2snd_array_PK_5 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_70
  store i1 true, i1* %int_clr2snd_array_PK_5, align 1
  %int_clr2snd_array_MS_5 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_70
  store i32 %temp_diff_src_or_typ_9, i32* %int_clr2snd_array_MS_5, align 4
  %int_clr2snd_array_TA_5 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_70
  store i8 %temp_diff_src_or_typ_10, i8* %int_clr2snd_array_TA_5, align 8
  %int_clr2snd_array_DA_6 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_70
  store i4 %temp_diff_src_or_typ_11, i4* %int_clr2snd_array_DA_6, align 1
  %int_clr2snd_array_DE_5 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_70
  store i16 %temp_diff_src_or_typ_6, i16* %int_clr2snd_array_DE_5, align 4
  %tmp_71 = add nsw i32 %int_clr_num_load_1, 1
  store i32 %tmp_71, i32* @int_clr_num, align 4
  br label %.critedge1243

.critedge1243.loopexit:                           ; preds = %71
  br label %.critedge1243

.critedge1243:                                    ; preds = %.critedge1243.loopexit, %.loopexit1225
  br label %._crit_edge1358

._crit_edge1358:                                  ; preds = %.critedge1243, %65
  br label %72

; <label>:72                                      ; preds = %._crit_edge1358, %.critedge
  br label %89

; <label>:73                                      ; preds = %57
  %tmp_32 = icmp eq i4 %p_Result_3, 1
  br i1 %tmp_32, label %74, label %._crit_edge1365

; <label>:74                                      ; preds = %73
  %tmp_40 = icmp eq i8 %temp_diff_src_or_typ_8, 0
  br i1 %tmp_40, label %.preheader1255.preheader, label %81

.preheader1255.preheader:                         ; preds = %74
  %float_req_num_load_1 = load i32* @float_req_num, align 4
  br label %.preheader1255

.preheader1255:                                   ; preds = %._crit_edge1366, %.preheader1255.preheader
  %i9 = phi i31 [ %i_11, %._crit_edge1366 ], [ 0, %.preheader1255.preheader ]
  %i9_cast = zext i31 %i9 to i32
  %tmp_64 = icmp slt i32 %i9_cast, %float_req_num_load_1
  %i_11 = add i31 %i9, 1
  br i1 %tmp_64, label %75, label %.loopexit1224

; <label>:75                                      ; preds = %.preheader1255
  %tmp_72 = zext i31 %i9 to i64
  %float_request_array_25 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_72
  %float_request_array_26 = load i8* %float_request_array_25, align 16
  %tmp_73 = icmp eq i8 %float_request_array_26, %temp_diff_src_or_typ_7
  br i1 %tmp_73, label %76, label %._crit_edge1366

; <label>:76                                      ; preds = %75
  %float_request_array_27 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_72
  %float_request_array_28 = load i16* %float_request_array_27, align 4
  %tmp_81 = icmp eq i16 %float_request_array_28, %temp_diff_src_or_typ_6
  br i1 %tmp_81, label %77, label %._crit_edge1366

; <label>:77                                      ; preds = %76
  %float_request_array_29 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_72
  %float_request_array_30 = load i1* %float_request_array_29, align 1
  br i1 %float_request_array_30, label %._crit_edge1366, label %78

; <label>:78                                      ; preds = %77
  %float_request_array_31 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_72
  %float_request_array_32 = load i32* %float_request_array_31, align 4
  %tmp_97 = icmp eq i32 %float_request_array_32, %temp_diff_src_or_typ_9
  br i1 %tmp_97, label %79, label %._crit_edge1366

; <label>:79                                      ; preds = %78
  %float_request_array_33 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_72
  %float_request_array_34 = load i8* %float_request_array_33, align 8
  %tmp_101 = icmp eq i8 %float_request_array_34, %temp_diff_src_or_typ_10
  br i1 %tmp_101, label %80, label %._crit_edge1366

; <label>:80                                      ; preds = %79
  %float_request_array_35 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_72
  %float_request_array_36 = load i4* %float_request_array_35, align 1
  %tmp_104 = icmp eq i4 %float_request_array_36, %temp_diff_src_or_typ_11
  br i1 %tmp_104, label %.critedge1244.loopexit, label %._crit_edge1366

._crit_edge1366:                                  ; preds = %80, %79, %78, %77, %76, %75
  br label %.preheader1255

.loopexit1224:                                    ; preds = %.preheader1255
  %tmp_74 = sext i32 %float_req_num_load_1 to i64
  %float_request_array_37 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_74
  store i8 %temp_diff_src_or_typ_7, i8* %float_request_array_37, align 16
  %float_request_array_38 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_74
  store i1 false, i1* %float_request_array_38, align 1
  %float_request_array_39 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_74
  store i32 %temp_diff_src_or_typ_9, i32* %float_request_array_39, align 4
  %float_request_array_40 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_74
  store i8 %temp_diff_src_or_typ_10, i8* %float_request_array_40, align 8
  %float_request_array_41 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_74
  store i4 %temp_diff_src_or_typ_11, i4* %float_request_array_41, align 1
  %float_request_array_42 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_74
  store i16 %temp_diff_src_or_typ_6, i16* %float_request_array_42, align 4
  %tmp_75 = add nsw i32 %float_req_num_load_1, 1
  store i32 %tmp_75, i32* @float_req_num, align 4
  br label %.critedge1244

.critedge1244.loopexit:                           ; preds = %80
  br label %.critedge1244

.critedge1244:                                    ; preds = %.critedge1244.loopexit, %.loopexit1224
  br label %88

; <label>:81                                      ; preds = %74
  %tmp_52 = icmp eq i8 %temp_diff_src_or_typ_8, 1
  br i1 %tmp_52, label %.preheader1254.preheader, label %._crit_edge1372

.preheader1254.preheader:                         ; preds = %81
  %float_clr_num_load_1 = load i32* @float_clr_num, align 4
  br label %.preheader1254

.preheader1254:                                   ; preds = %._crit_edge1373, %.preheader1254.preheader
  %i10 = phi i31 [ %i_1, %._crit_edge1373 ], [ 0, %.preheader1254.preheader ]
  %i10_cast = zext i31 %i10 to i32
  %tmp_76 = icmp slt i32 %i10_cast, %float_clr_num_load_1
  %i_1 = add i31 %i10, 1
  br i1 %tmp_76, label %82, label %.loopexit1223

; <label>:82                                      ; preds = %.preheader1254
  %tmp_82 = zext i31 %i10 to i64
  %float_clr2snd_array_56 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_82
  %float_clr2snd_array_57 = load i8* %float_clr2snd_array_56, align 16
  %tmp_83 = icmp eq i8 %float_clr2snd_array_57, %temp_diff_src_or_typ_7
  br i1 %tmp_83, label %83, label %._crit_edge1373

; <label>:83                                      ; preds = %82
  %float_clr2snd_array_58 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_82
  %float_clr2snd_array_59 = load i16* %float_clr2snd_array_58, align 4
  %tmp_91 = icmp eq i16 %float_clr2snd_array_59, %temp_diff_src_or_typ_6
  br i1 %tmp_91, label %84, label %._crit_edge1373

; <label>:84                                      ; preds = %83
  %float_clr2snd_array_60 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_82
  %float_clr2snd_array_61 = load i1* %float_clr2snd_array_60, align 1
  br i1 %float_clr2snd_array_61, label %85, label %._crit_edge1373

; <label>:85                                      ; preds = %84
  %float_clr2snd_array_62 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_82
  %float_clr2snd_array_63 = load i32* %float_clr2snd_array_62, align 4
  %tmp_102 = icmp eq i32 %float_clr2snd_array_63, %temp_diff_src_or_typ_9
  br i1 %tmp_102, label %86, label %._crit_edge1373

; <label>:86                                      ; preds = %85
  %float_clr2snd_array_64 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_82
  %float_clr2snd_array_65 = load i8* %float_clr2snd_array_64, align 8
  %tmp_105 = icmp eq i8 %float_clr2snd_array_65, %temp_diff_src_or_typ_10
  br i1 %tmp_105, label %87, label %._crit_edge1373

; <label>:87                                      ; preds = %86
  %float_clr2snd_array_66 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_82
  %float_clr2snd_array_67 = load i4* %float_clr2snd_array_66, align 1
  %tmp_106 = icmp eq i4 %float_clr2snd_array_67, %temp_diff_src_or_typ_11
  br i1 %tmp_106, label %.critedge1245.loopexit, label %._crit_edge1373

._crit_edge1373:                                  ; preds = %87, %86, %85, %84, %83, %82
  br label %.preheader1254

.loopexit1223:                                    ; preds = %.preheader1254
  %tmp_84 = sext i32 %float_clr_num_load_1 to i64
  %float_clr2snd_array_68 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_84
  store i8 %temp_diff_src_or_typ_7, i8* %float_clr2snd_array_68, align 16
  %float_clr2snd_array_69 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_84
  store i1 true, i1* %float_clr2snd_array_69, align 1
  %float_clr2snd_array_70 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_84
  store i32 %temp_diff_src_or_typ_9, i32* %float_clr2snd_array_70, align 4
  %float_clr2snd_array_71 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_84
  store i8 %temp_diff_src_or_typ_10, i8* %float_clr2snd_array_71, align 8
  %float_clr2snd_array_72 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_84
  store i4 %temp_diff_src_or_typ_11, i4* %float_clr2snd_array_72, align 1
  %float_clr2snd_array_73 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_84
  store i16 %temp_diff_src_or_typ_6, i16* %float_clr2snd_array_73, align 4
  %tmp_85 = add nsw i32 %float_clr_num_load_1, 1
  store i32 %tmp_85, i32* @float_clr_num, align 4
  br label %.critedge1245

.critedge1245.loopexit:                           ; preds = %87
  br label %.critedge1245

.critedge1245:                                    ; preds = %.critedge1245.loopexit, %.loopexit1223
  br label %._crit_edge1372

._crit_edge1372:                                  ; preds = %.critedge1245, %81
  br label %88

; <label>:88                                      ; preds = %._crit_edge1372, %.critedge1244
  br label %._crit_edge1365

._crit_edge1365:                                  ; preds = %88, %73
  br label %89

; <label>:89                                      ; preds = %._crit_edge1365, %72
  br label %._crit_edge1351

._crit_edge1351:                                  ; preds = %89, %._crit_edge1348
  br label %._crit_edge1349

._crit_edge1349:                                  ; preds = %._crit_edge1351, %._crit_edge1346
  br label %._crit_edge1345

._crit_edge1345:                                  ; preds = %._crit_edge1349, %51
  br i1 %error_is_seen_1, label %90, label %91

; <label>:90                                      ; preds = %._crit_edge1345
  %old_seq_num_load = load i32* %old_seq_num
  %tmp_dest_V_load = load i8* %tmp_dest_V
  %tmp_5_1 = call i121 @_ssdm_op_BitConcatenate.i121.i32.i17.i8.i64(i32 %old_seq_num_load, i17 8705, i8 %tmp_dest_V_load, i64 %tmp_data_V_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_5_1)
  %i_12 = add nsw i32 %i6_1, -1
  br label %98

; <label>:91                                      ; preds = %._crit_edge1345
  %tmp_107 = shl i32 %i6_1, 1
  %tmp_108 = add i32 -2, %tmp_107
  %tmp_109 = icmp slt i32 %tmp_108, 1
  br i1 %tmp_109, label %92, label %.loopexit1227.loopexit

; <label>:92                                      ; preds = %91
  %tmp_110 = add i32 %tmp_107, -1
  %tmp_111 = icmp slt i32 %tmp_110, 1
  br i1 %tmp_111, label %94, label %93

; <label>:93                                      ; preds = %92
  %tmp_dest_V_load_1 = load i8* %tmp_dest_V
  %p_Result_s_188 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 0, i32 %temp1)
  %tmp_6_1 = call i121 @_ssdm_op_BitConcatenate.i121.i32.i17.i8.i32.i32(i32 %old_seq_num_1, i17 8705, i8 %tmp_dest_V_load_1, i32 0, i32 %temp1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_6_1)
  br label %.loopexit1227

; <label>:94                                      ; preds = %92
  %p_Result_4 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %temp1, i32 %temp1)
  %tmp_112 = icmp slt i32 %tmp_107, 1
  br i1 %tmp_112, label %95, label %96

; <label>:95                                      ; preds = %94
  %tmp_113 = srem i32 %tmp_107, 372
  %tmp_114 = trunc i32 %tmp_113 to i10
  %tmp_115 = icmp eq i10 %tmp_114, 0
  br label %96

; <label>:96                                      ; preds = %95, %94
  %tmp_last_V = phi i1 [ true, %94 ], [ %tmp_115, %95 ]
  %seq_inc_3 = phi i1 [ false, %94 ], [ %tmp_115, %95 ]
  %test_load = load i1* %test
  %p_not = icmp eq i32 %old_seq_num_1, 2
  %demorgan = and i1 %test_load, %p_not
  br i1 %demorgan, label %._crit_edge1380.pre, label %97

; <label>:97                                      ; preds = %96
  %tmp_7_2 = call i121 @_ssdm_op_BitConcatenate.i121.i32.i16.i1.i8.i32.i32(i32 %old_seq_num_1, i16 4352, i1 %tmp_last_V, i8 1, i32 %temp1, i32 %temp1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_7_2)
  %not_tmp_s = icmp ne i32 %old_seq_num_1, 3
  %p_test_1 = and i1 %test_load, %not_tmp_s
  store i1 %p_test_1, i1* %test
  br label %._crit_edge1380

._crit_edge1380.pre:                              ; preds = %96
  store i1 true, i1* %test
  br label %._crit_edge1380

._crit_edge1380:                                  ; preds = %._crit_edge1380.pre, %97
  %seq_num_2 = add nsw i32 %old_seq_num_1, 1
  %p_seq_num_1 = select i1 %seq_inc_3, i32 %seq_num_2, i32 %old_seq_num_1
  store i8 1, i8* %tmp_dest_V
  br label %98

; <label>:98                                      ; preds = %._crit_edge1380, %90, %56
  %to_send_data_0_2 = phi i64 [ %tmp_data_V_1, %56 ], [ %tmp_data_V_1, %90 ], [ %p_Result_4, %._crit_edge1380 ]
  %i6_2 = phi i32 [ %i, %56 ], [ %i_12, %90 ], [ %i6_1, %._crit_edge1380 ]
  %seq_num_3 = phi i32 [ %temp_diff_src_or_typ_9, %56 ], [ %old_seq_num_1, %90 ], [ %p_seq_num_1, %._crit_edge1380 ]
  %error_is_seen_2 = phi i1 [ true, %56 ], [ false, %90 ], [ false, %._crit_edge1380 ]
  %i_13 = add nsw i32 %i6_2, 1
  br label %50

.loopexit1227.loopexit:                           ; preds = %91, %50
  %error_is_seen_ph = phi i1 [ %error_is_seen_1, %50 ], [ false, %91 ]
  %for_finished_1_ph = phi i1 [ %for_finished, %50 ], [ true, %91 ]
  br label %.loopexit1227

.loopexit1227:                                    ; preds = %.loopexit1227.loopexit, %93
  %error_is_seen_s = phi i1 [ false, %93 ], [ %error_is_seen_ph, %.loopexit1227.loopexit ]
  %to_send_data_0_3 = phi i64 [ %p_Result_s_188, %93 ], [ %tmp_data_V_1, %.loopexit1227.loopexit ]
  %for_finished_1 = phi i1 [ %for_finished, %93 ], [ %for_finished_1_ph, %.loopexit1227.loopexit ]
  br label %99

; <label>:99                                      ; preds = %._crit_edge1385, %.loopexit1227
  br i1 %for_finished_1, label %100, label %.loopexit1269.loopexit

; <label>:100                                     ; preds = %99
  %tmp_9_1 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_data_dest_V_1 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_9_1, i32 64, i32 71)
  %tmp_116 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_9_1, i32 72)
  %recv_data_id_V_1 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_9_1, i32 73, i32 80)
  br label %101

; <label>:101                                     ; preds = %102, %100
  %last_V_2 = phi i1 [ %tmp_116, %100 ], [ %tmp_120, %102 ]
  br i1 %last_V_2, label %103, label %102

; <label>:102                                     ; preds = %101
  %tmp_10_1 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_120 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_10_1, i32 72)
  br label %101

; <label>:103                                     ; preds = %101
  %temp_diff_src_or_typ_12 = zext i8 %recv_data_dest_V_1 to i16
  %temp_diff_src_or_typ_13 = trunc i121 %tmp_9_1 to i8
  %temp_diff_src_or_typ_14 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_9_1, i32 8, i32 15)
  %temp_diff_src_or_typ_15 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_9_1, i32 16, i32 47)
  %temp_diff_src_or_typ_16 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_9_1, i32 48, i32 55)
  %temp_diff_src_or_typ_17 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_9_1, i32 60, i32 63)
  %tmp_118 = icmp eq i8 %temp_diff_src_or_typ_14, 4
  %tmp_119 = icmp eq i8 %recv_data_id_V_1, 1
  %or_cond4 = and i1 %tmp_118, %tmp_119
  br i1 %or_cond4, label %104, label %._crit_edge1381

; <label>:104                                     ; preds = %103
  %lhs_V_1_cast = zext i32 %temp_diff_src_or_typ_15 to i33
  %r_V_1 = mul i33 %lhs_V_1_cast, 372
  %tmp_121 = call i32 @_ssdm_op_PartSelect.i32.i33.i32.i32(i33 %r_V_1, i32 1, i32 32)
  %i_14 = or i32 %tmp_121, 1
  br label %.preheader1267

._crit_edge1381:                                  ; preds = %103
  %tmp_122 = icmp eq i8 %temp_diff_src_or_typ_14, 5
  %or_cond5 = and i1 %tmp_122, %tmp_119
  br i1 %or_cond5, label %105, label %._crit_edge1383

; <label>:105                                     ; preds = %._crit_edge1381
  store i2 0, i2* @state_1, align 1
  br label %.loopexit1269

._crit_edge1383:                                  ; preds = %._crit_edge1381
  %p_Result_6 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_9_1, i32 85, i32 88)
  %tmp_123 = icmp eq i4 %p_Result_6, 0
  br i1 %tmp_123, label %106, label %._crit_edge1385

; <label>:106                                     ; preds = %._crit_edge1383
  %p_Result_7 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_9_1, i32 81, i32 84)
  %tmp_124 = icmp eq i4 %p_Result_7, 0
  br i1 %tmp_124, label %107, label %122

; <label>:107                                     ; preds = %106
  %tmp_125 = icmp eq i8 %temp_diff_src_or_typ_14, 0
  br i1 %tmp_125, label %.preheader1252.preheader, label %114

.preheader1252.preheader:                         ; preds = %107
  %int_req_num_load_2 = load i32* @int_req_num, align 4
  br label %.preheader1252

.preheader1252:                                   ; preds = %._crit_edge1386, %.preheader1252.preheader
  %i15 = phi i31 [ %i_19, %._crit_edge1386 ], [ 0, %.preheader1252.preheader ]
  %i16_cast = zext i31 %i15 to i32
  %tmp_129 = icmp slt i32 %i16_cast, %int_req_num_load_2
  %i_19 = add i31 %i15, 1
  br i1 %tmp_129, label %108, label %.loopexit1222

; <label>:108                                     ; preds = %.preheader1252
  %tmp_131 = zext i31 %i15 to i64
  %int_request_array_SR_6 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_131
  %int_request_array_SR_7 = load i8* %int_request_array_SR_6, align 16
  %tmp_132 = icmp eq i8 %int_request_array_SR_7, %temp_diff_src_or_typ_13
  br i1 %tmp_132, label %109, label %._crit_edge1386

; <label>:109                                     ; preds = %108
  %int_request_array_DE_6 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_131
  %int_request_array_DE_7 = load i16* %int_request_array_DE_6, align 4
  %tmp_137 = icmp eq i16 %int_request_array_DE_7, %temp_diff_src_or_typ_12
  br i1 %tmp_137, label %110, label %._crit_edge1386

; <label>:110                                     ; preds = %109
  %int_request_array_PK_6 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_131
  %int_request_array_PK_7 = load i1* %int_request_array_PK_6, align 1
  br i1 %int_request_array_PK_7, label %._crit_edge1386, label %111

; <label>:111                                     ; preds = %110
  %int_request_array_MS_6 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_131
  %int_request_array_MS_7 = load i32* %int_request_array_MS_6, align 4
  %tmp_153 = icmp eq i32 %int_request_array_MS_7, %temp_diff_src_or_typ_15
  br i1 %tmp_153, label %112, label %._crit_edge1386

; <label>:112                                     ; preds = %111
  %int_request_array_TA_6 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_131
  %int_request_array_TA_7 = load i8* %int_request_array_TA_6, align 8
  %tmp_155 = icmp eq i8 %int_request_array_TA_7, %temp_diff_src_or_typ_16
  br i1 %tmp_155, label %113, label %._crit_edge1386

; <label>:113                                     ; preds = %112
  %int_request_array_DA_6 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_131
  %int_request_array_DA_7 = load i4* %int_request_array_DA_6, align 1
  %tmp_158 = icmp eq i4 %int_request_array_DA_7, %temp_diff_src_or_typ_17
  br i1 %tmp_158, label %.critedge1246.loopexit, label %._crit_edge1386

._crit_edge1386:                                  ; preds = %113, %112, %111, %110, %109, %108
  br label %.preheader1252

.loopexit1222:                                    ; preds = %.preheader1252
  %tmp_133 = sext i32 %int_req_num_load_2 to i64
  %int_request_array_SR_8 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_133
  store i8 %temp_diff_src_or_typ_13, i8* %int_request_array_SR_8, align 16
  %int_request_array_PK_8 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_133
  store i1 false, i1* %int_request_array_PK_8, align 1
  %int_request_array_MS_8 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_133
  store i32 %temp_diff_src_or_typ_15, i32* %int_request_array_MS_8, align 4
  %int_request_array_TA_8 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_133
  store i8 %temp_diff_src_or_typ_16, i8* %int_request_array_TA_8, align 8
  %int_request_array_DA_8 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_133
  store i4 %temp_diff_src_or_typ_17, i4* %int_request_array_DA_8, align 1
  %int_request_array_DE_8 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_133
  store i16 %temp_diff_src_or_typ_12, i16* %int_request_array_DE_8, align 4
  %tmp_134 = add nsw i32 %int_req_num_load_2, 1
  store i32 %tmp_134, i32* @int_req_num, align 4
  br label %.critedge1246

.critedge1246.loopexit:                           ; preds = %113
  br label %.critedge1246

.critedge1246:                                    ; preds = %.critedge1246.loopexit, %.loopexit1222
  br label %121

; <label>:114                                     ; preds = %107
  %tmp_127 = icmp eq i8 %temp_diff_src_or_typ_14, 1
  br i1 %tmp_127, label %.preheader1251.preheader, label %._crit_edge1392

.preheader1251.preheader:                         ; preds = %114
  %int_clr_num_load_2 = load i32* @int_clr_num, align 4
  br label %.preheader1251

.preheader1251:                                   ; preds = %._crit_edge1393, %.preheader1251.preheader
  %i16 = phi i31 [ %i_2, %._crit_edge1393 ], [ 0, %.preheader1251.preheader ]
  %i17_cast = zext i31 %i16 to i32
  %tmp_135 = icmp slt i32 %i17_cast, %int_clr_num_load_2
  %i_2 = add i31 %i16, 1
  br i1 %tmp_135, label %115, label %.loopexit1221

; <label>:115                                     ; preds = %.preheader1251
  %tmp_138 = zext i31 %i16 to i64
  %int_clr2snd_array_SR_6 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_138
  %int_clr2snd_array_SR_7 = load i8* %int_clr2snd_array_SR_6, align 16
  %tmp_139 = icmp eq i8 %int_clr2snd_array_SR_7, %temp_diff_src_or_typ_13
  br i1 %tmp_139, label %116, label %._crit_edge1393

; <label>:116                                     ; preds = %115
  %int_clr2snd_array_DE_6 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_138
  %int_clr2snd_array_DE_7 = load i16* %int_clr2snd_array_DE_6, align 4
  %tmp_147 = icmp eq i16 %int_clr2snd_array_DE_7, %temp_diff_src_or_typ_12
  br i1 %tmp_147, label %117, label %._crit_edge1393

; <label>:117                                     ; preds = %116
  %int_clr2snd_array_PK_6 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_138
  %int_clr2snd_array_PK_7 = load i1* %int_clr2snd_array_PK_6, align 1
  br i1 %int_clr2snd_array_PK_7, label %118, label %._crit_edge1393

; <label>:118                                     ; preds = %117
  %int_clr2snd_array_MS_6 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_138
  %int_clr2snd_array_MS_7 = load i32* %int_clr2snd_array_MS_6, align 4
  %tmp_156 = icmp eq i32 %int_clr2snd_array_MS_7, %temp_diff_src_or_typ_15
  br i1 %tmp_156, label %119, label %._crit_edge1393

; <label>:119                                     ; preds = %118
  %int_clr2snd_array_TA_6 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_138
  %int_clr2snd_array_TA_7 = load i8* %int_clr2snd_array_TA_6, align 8
  %tmp_159 = icmp eq i8 %int_clr2snd_array_TA_7, %temp_diff_src_or_typ_16
  br i1 %tmp_159, label %120, label %._crit_edge1393

; <label>:120                                     ; preds = %119
  %int_clr2snd_array_DA_7 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_138
  %int_clr2snd_array_DA_8 = load i4* %int_clr2snd_array_DA_7, align 1
  %tmp_162 = icmp eq i4 %int_clr2snd_array_DA_8, %temp_diff_src_or_typ_17
  br i1 %tmp_162, label %.critedge1247.loopexit, label %._crit_edge1393

._crit_edge1393:                                  ; preds = %120, %119, %118, %117, %116, %115
  br label %.preheader1251

.loopexit1221:                                    ; preds = %.preheader1251
  %tmp_140 = sext i32 %int_clr_num_load_2 to i64
  %int_clr2snd_array_SR_8 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_140
  store i8 %temp_diff_src_or_typ_13, i8* %int_clr2snd_array_SR_8, align 16
  %int_clr2snd_array_PK_8 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_140
  store i1 true, i1* %int_clr2snd_array_PK_8, align 1
  %int_clr2snd_array_MS_8 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_140
  store i32 %temp_diff_src_or_typ_15, i32* %int_clr2snd_array_MS_8, align 4
  %int_clr2snd_array_TA_8 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_140
  store i8 %temp_diff_src_or_typ_16, i8* %int_clr2snd_array_TA_8, align 8
  %int_clr2snd_array_DA_9 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_140
  store i4 %temp_diff_src_or_typ_17, i4* %int_clr2snd_array_DA_9, align 1
  %int_clr2snd_array_DE_8 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_140
  store i16 %temp_diff_src_or_typ_12, i16* %int_clr2snd_array_DE_8, align 4
  %tmp_141 = add nsw i32 %int_clr_num_load_2, 1
  store i32 %tmp_141, i32* @int_clr_num, align 4
  br label %.critedge1247

.critedge1247.loopexit:                           ; preds = %120
  br label %.critedge1247

.critedge1247:                                    ; preds = %.critedge1247.loopexit, %.loopexit1221
  br label %._crit_edge1392

._crit_edge1392:                                  ; preds = %.critedge1247, %114
  br label %121

; <label>:121                                     ; preds = %._crit_edge1392, %.critedge1246
  br label %138

; <label>:122                                     ; preds = %106
  %tmp_126 = icmp eq i4 %p_Result_7, 1
  br i1 %tmp_126, label %123, label %._crit_edge1399

; <label>:123                                     ; preds = %122
  %tmp_128 = icmp eq i8 %temp_diff_src_or_typ_14, 0
  br i1 %tmp_128, label %.preheader1250.preheader, label %130

.preheader1250.preheader:                         ; preds = %123
  %float_req_num_load_2 = load i32* @float_req_num, align 4
  br label %.preheader1250

.preheader1250:                                   ; preds = %._crit_edge1400, %.preheader1250.preheader
  %i17 = phi i31 [ %i_10, %._crit_edge1400 ], [ 0, %.preheader1250.preheader ]
  %i18_cast = zext i31 %i17 to i32
  %tmp_136 = icmp slt i32 %i18_cast, %float_req_num_load_2
  %i_10 = add i31 %i17, 1
  br i1 %tmp_136, label %124, label %.loopexit1220

; <label>:124                                     ; preds = %.preheader1250
  %tmp_142 = zext i31 %i17 to i64
  %float_request_array_43 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_142
  %float_request_array_44 = load i8* %float_request_array_43, align 16
  %tmp_143 = icmp eq i8 %float_request_array_44, %temp_diff_src_or_typ_13
  br i1 %tmp_143, label %125, label %._crit_edge1400

; <label>:125                                     ; preds = %124
  %float_request_array_45 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_142
  %float_request_array_46 = load i16* %float_request_array_45, align 4
  %tmp_148 = icmp eq i16 %float_request_array_46, %temp_diff_src_or_typ_12
  br i1 %tmp_148, label %126, label %._crit_edge1400

; <label>:126                                     ; preds = %125
  %float_request_array_47 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_142
  %float_request_array_48 = load i1* %float_request_array_47, align 1
  br i1 %float_request_array_48, label %._crit_edge1400, label %127

; <label>:127                                     ; preds = %126
  %float_request_array_49 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_142
  %float_request_array_50 = load i32* %float_request_array_49, align 4
  %tmp_157 = icmp eq i32 %float_request_array_50, %temp_diff_src_or_typ_15
  br i1 %tmp_157, label %128, label %._crit_edge1400

; <label>:128                                     ; preds = %127
  %float_request_array_51 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_142
  %float_request_array_52 = load i8* %float_request_array_51, align 8
  %tmp_160 = icmp eq i8 %float_request_array_52, %temp_diff_src_or_typ_16
  br i1 %tmp_160, label %129, label %._crit_edge1400

; <label>:129                                     ; preds = %128
  %float_request_array_53 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_142
  %float_request_array_54 = load i4* %float_request_array_53, align 1
  %tmp_163 = icmp eq i4 %float_request_array_54, %temp_diff_src_or_typ_17
  br i1 %tmp_163, label %.critedge1248.loopexit, label %._crit_edge1400

._crit_edge1400:                                  ; preds = %129, %128, %127, %126, %125, %124
  br label %.preheader1250

.loopexit1220:                                    ; preds = %.preheader1250
  %tmp_144 = sext i32 %float_req_num_load_2 to i64
  %float_request_array_55 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_144
  store i8 %temp_diff_src_or_typ_13, i8* %float_request_array_55, align 16
  %float_request_array_56 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_144
  store i1 false, i1* %float_request_array_56, align 1
  %float_request_array_57 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_144
  store i32 %temp_diff_src_or_typ_15, i32* %float_request_array_57, align 4
  %float_request_array_58 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_144
  store i8 %temp_diff_src_or_typ_16, i8* %float_request_array_58, align 8
  %float_request_array_59 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_144
  store i4 %temp_diff_src_or_typ_17, i4* %float_request_array_59, align 1
  %float_request_array_60 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_144
  store i16 %temp_diff_src_or_typ_12, i16* %float_request_array_60, align 4
  %tmp_145 = add nsw i32 %float_req_num_load_2, 1
  store i32 %tmp_145, i32* @float_req_num, align 4
  br label %.critedge1248

.critedge1248.loopexit:                           ; preds = %129
  br label %.critedge1248

.critedge1248:                                    ; preds = %.critedge1248.loopexit, %.loopexit1220
  br label %137

; <label>:130                                     ; preds = %123
  %tmp_130 = icmp eq i8 %temp_diff_src_or_typ_14, 1
  br i1 %tmp_130, label %.preheader.preheader, label %._crit_edge1406

.preheader.preheader:                             ; preds = %130
  %float_clr_num_load_2 = load i32* @float_clr_num, align 4
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge1407, %.preheader.preheader
  %i18 = phi i31 [ %i_15, %._crit_edge1407 ], [ 0, %.preheader.preheader ]
  %i19_cast = zext i31 %i18 to i32
  %tmp_146 = icmp slt i32 %i19_cast, %float_clr_num_load_2
  %i_15 = add i31 %i18, 1
  br i1 %tmp_146, label %131, label %.loopexit

; <label>:131                                     ; preds = %.preheader
  %tmp_149 = zext i31 %i18 to i64
  %float_clr2snd_array_74 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_149
  %float_clr2snd_array_75 = load i8* %float_clr2snd_array_74, align 16
  %tmp_150 = icmp eq i8 %float_clr2snd_array_75, %temp_diff_src_or_typ_13
  br i1 %tmp_150, label %132, label %._crit_edge1407

; <label>:132                                     ; preds = %131
  %float_clr2snd_array_76 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_149
  %float_clr2snd_array_77 = load i16* %float_clr2snd_array_76, align 4
  %tmp_154 = icmp eq i16 %float_clr2snd_array_77, %temp_diff_src_or_typ_12
  br i1 %tmp_154, label %133, label %._crit_edge1407

; <label>:133                                     ; preds = %132
  %float_clr2snd_array_78 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_149
  %float_clr2snd_array_79 = load i1* %float_clr2snd_array_78, align 1
  br i1 %float_clr2snd_array_79, label %134, label %._crit_edge1407

; <label>:134                                     ; preds = %133
  %float_clr2snd_array_80 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_149
  %float_clr2snd_array_81 = load i32* %float_clr2snd_array_80, align 4
  %tmp_161 = icmp eq i32 %float_clr2snd_array_81, %temp_diff_src_or_typ_15
  br i1 %tmp_161, label %135, label %._crit_edge1407

; <label>:135                                     ; preds = %134
  %float_clr2snd_array_82 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_149
  %float_clr2snd_array_83 = load i8* %float_clr2snd_array_82, align 8
  %tmp_164 = icmp eq i8 %float_clr2snd_array_83, %temp_diff_src_or_typ_16
  br i1 %tmp_164, label %136, label %._crit_edge1407

; <label>:136                                     ; preds = %135
  %float_clr2snd_array_84 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_149
  %float_clr2snd_array_85 = load i4* %float_clr2snd_array_84, align 1
  %tmp_165 = icmp eq i4 %float_clr2snd_array_85, %temp_diff_src_or_typ_17
  br i1 %tmp_165, label %.critedge1249.loopexit, label %._crit_edge1407

._crit_edge1407:                                  ; preds = %136, %135, %134, %133, %132, %131
  br label %.preheader

.loopexit:                                        ; preds = %.preheader
  %tmp_151 = sext i32 %float_clr_num_load_2 to i64
  %float_clr2snd_array_86 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_151
  store i8 %temp_diff_src_or_typ_13, i8* %float_clr2snd_array_86, align 16
  %float_clr2snd_array_87 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_151
  store i1 true, i1* %float_clr2snd_array_87, align 1
  %float_clr2snd_array_88 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_151
  store i32 %temp_diff_src_or_typ_15, i32* %float_clr2snd_array_88, align 4
  %float_clr2snd_array_89 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_151
  store i8 %temp_diff_src_or_typ_16, i8* %float_clr2snd_array_89, align 8
  %float_clr2snd_array_90 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_151
  store i4 %temp_diff_src_or_typ_17, i4* %float_clr2snd_array_90, align 1
  %float_clr2snd_array_91 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_151
  store i16 %temp_diff_src_or_typ_12, i16* %float_clr2snd_array_91, align 4
  %tmp_152 = add nsw i32 %float_clr_num_load_2, 1
  store i32 %tmp_152, i32* @float_clr_num, align 4
  br label %.critedge1249

.critedge1249.loopexit:                           ; preds = %136
  br label %.critedge1249

.critedge1249:                                    ; preds = %.critedge1249.loopexit, %.loopexit
  br label %._crit_edge1406

._crit_edge1406:                                  ; preds = %.critedge1249, %130
  br label %137

; <label>:137                                     ; preds = %._crit_edge1406, %.critedge1248
  br label %._crit_edge1399

._crit_edge1399:                                  ; preds = %137, %122
  br label %138

; <label>:138                                     ; preds = %._crit_edge1399, %121
  br label %._crit_edge1385

._crit_edge1385:                                  ; preds = %138, %._crit_edge1383
  br label %99

.loopexit1269.loopexit:                           ; preds = %99
  br label %.loopexit1269

.loopexit1269.loopexit39:                         ; preds = %45
  br label %.loopexit1269

.loopexit1269.loopexit40:                         ; preds = %37
  br label %.loopexit1269

.loopexit1269.loopexit41:                         ; preds = %27
  br label %.loopexit1269

.loopexit1269.loopexit42:                         ; preds = %19
  br label %.loopexit1269

.loopexit1269.loopexit43:                         ; preds = %4
  br label %.loopexit1269

.loopexit1269:                                    ; preds = %.loopexit1269.loopexit43, %.loopexit1269.loopexit42, %.loopexit1269.loopexit41, %.loopexit1269.loopexit40, %.loopexit1269.loopexit39, %.loopexit1269.loopexit, %105, %49, %48, %._crit_edge1316, %47, %29, %11, %._crit_edge1309, %codeRepl
  %time_V_1_flag_2 = phi i1 [ false, %105 ], [ true, %11 ], [ false, %29 ], [ false, %47 ], [ true, %49 ], [ false, %codeRepl ], [ true, %._crit_edge1309 ], [ false, %._crit_edge1316 ], [ true, %48 ], [ false, %.loopexit1269.loopexit ], [ false, %.loopexit1269.loopexit39 ], [ false, %.loopexit1269.loopexit40 ], [ false, %.loopexit1269.loopexit41 ], [ false, %.loopexit1269.loopexit42 ], [ true, %.loopexit1269.loopexit43 ]
  %time_V_1_new_2 = phi i64 [ undef, %105 ], [ 0, %11 ], [ undef, %29 ], [ undef, %47 ], [ 0, %49 ], [ undef, %codeRepl ], [ 0, %._crit_edge1309 ], [ undef, %._crit_edge1316 ], [ %tmp_6, %48 ], [ undef, %.loopexit1269.loopexit ], [ undef, %.loopexit1269.loopexit39 ], [ undef, %.loopexit1269.loopexit40 ], [ undef, %.loopexit1269.loopexit41 ], [ undef, %.loopexit1269.loopexit42 ], [ 0, %.loopexit1269.loopexit43 ]
  br i1 %time_V_1_flag_2, label %mergeST, label %.loopexit1269.new

mergeST:                                          ; preds = %.loopexit1269
  store i64 %time_V_1_new_2, i64* @time_V_3, align 8
  br label %.loopexit1269.new

.loopexit1269.new:                                ; preds = %mergeST, %.loopexit1269
  ret void
}

define internal fastcc void @MPI_Send([1 x i12]* nocapture %buf_r) {
codeRepl:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str228, i32 0, i32 0, [1 x i8]* @p_str229, [1 x i8]* @p_str230, [1 x i8]* @p_str231, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str232, [1 x i8]* @p_str233)
  %empty_189 = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str234, i32 0, i32 0, [1 x i8]* @p_str235, [1 x i8]* @p_str236, [1 x i8]* @p_str237, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str238, [1 x i8]* @p_str239)
  %state_load = load i2* @state, align 1
  %t_V = load i64* @time_V_2, align 8
  switch i2 %state_load, label %.loopexit1109 [
    i2 0, label %._crit_edge1135
    i2 1, label %.preheader1117.preheader
    i2 -2, label %.preheader1107.preheader
  ]

.preheader1107.preheader:                         ; preds = %codeRepl
  %tmp_data_V = alloca i64
  %test_1 = alloca i1
  %temp_diff_src_or_typ = alloca i32
  %tmp_dest_V = alloca i8
  %error_is_seen_1 = alloca i1
  store i1 false, i1* %error_is_seen_1
  store i32 0, i32* %temp_diff_src_or_typ
  store i1 false, i1* %test_1
  br label %.preheader1107

.preheader1117.preheader:                         ; preds = %codeRepl
  %int_clr_num_load = load i32* @int_clr_num, align 4
  br label %.preheader1117

._crit_edge1135:                                  ; preds = %codeRepl
  %envlp_DATA_TYPE_V_lo = load i4* @envlp_DATA_TYPE_V, align 1
  %envlp_DATA_OR_ENVLP_s = load i4* @envlp_DATA_OR_ENVLP_1, align 1
  %tmp194 = call i121 @_ssdm_op_BitConcatenate.i121.i57.i4.i4.i56(i57 257, i4 %envlp_DATA_OR_ENVLP_s, i4 %envlp_DATA_TYPE_V_lo, i56 65536)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp194)
  store i2 1, i2* @state, align 1
  br label %.loopexit1109

.preheader1117:                                   ; preds = %._crit_edge1136, %.preheader1117.preheader
  %j = phi i31 [ %i_20, %._crit_edge1136 ], [ 0, %.preheader1117.preheader ]
  %j_cast = zext i31 %j to i32
  %tmp_s = icmp slt i32 %j_cast, %int_clr_num_load
  %i_20 = add i31 %j, 1
  br i1 %tmp_s, label %0, label %6

; <label>:0                                       ; preds = %.preheader1117
  %tmp_166 = zext i31 %j to i64
  %int_clr2snd_array_PK = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_166
  %int_clr2snd_array_PK_9 = load i1* %int_clr2snd_array_PK, align 1
  br i1 %int_clr2snd_array_PK_9, label %1, label %._crit_edge1136

; <label>:1                                       ; preds = %0
  %int_clr2snd_array_DE = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_166
  %int_clr2snd_array_DE_9 = load i16* %int_clr2snd_array_DE, align 4
  %tmp_167 = icmp eq i16 %int_clr2snd_array_DE_9, 0
  br i1 %tmp_167, label %2, label %._crit_edge1136

; <label>:2                                       ; preds = %1
  %int_clr2snd_array_SR = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_166
  %int_clr2snd_array_SR_9 = load i8* %int_clr2snd_array_SR, align 16
  %tmp_170 = icmp eq i8 %int_clr2snd_array_SR_9, 1
  br i1 %tmp_170, label %3, label %._crit_edge1136

; <label>:3                                       ; preds = %2
  %int_clr2snd_array_DA = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_166
  %int_clr2snd_array_DA_10 = load i4* %int_clr2snd_array_DA, align 1
  store i4 %int_clr2snd_array_DA_10, i4* @envlp_DATA_TYPE_V, align 1
  %int_clr2snd_array_DA_11 = getelementptr [512 x i4]* @int_clr2snd_array_DA_1, i64 0, i64 %tmp_166
  %int_clr2snd_array_DA_12 = load i4* %int_clr2snd_array_DA_11, align 2
  store i4 %int_clr2snd_array_DA_12, i4* @envlp_DATA_OR_ENVLP_1, align 2
  store i2 -2, i2* @state, align 1
  %tmp_171 = add nsw i32 %int_clr_num_load, -1
  store i32 %tmp_171, i32* @int_clr_num, align 4
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j3 = phi i32 [ %j_cast, %3 ], [ %j_2, %5 ]
  %tmp_179 = icmp slt i32 %j3, %tmp_171
  br i1 %tmp_179, label %5, label %.loopexit1109.loopexit14

; <label>:5                                       ; preds = %4
  %tmp_183 = sext i32 %j3 to i64
  %j_2 = add nsw i32 %j3, 1
  %tmp_184 = sext i32 %j_2 to i64
  %int_clr2snd_array_SR_10 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_184
  %int_clr2snd_array_SR_11 = load i8* %int_clr2snd_array_SR_10, align 16
  %int_clr2snd_array_SR_12 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_183
  store i8 %int_clr2snd_array_SR_11, i8* %int_clr2snd_array_SR_12, align 16
  %int_clr2snd_array_PK_10 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_184
  %int_clr2snd_array_PK_11 = load i1* %int_clr2snd_array_PK_10, align 1
  %int_clr2snd_array_PK_12 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_183
  store i1 %int_clr2snd_array_PK_11, i1* %int_clr2snd_array_PK_12, align 1
  %int_clr2snd_array_MS = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_184
  %int_clr2snd_array_MS_9 = load i32* %int_clr2snd_array_MS, align 4
  %int_clr2snd_array_MS_10 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_183
  store i32 %int_clr2snd_array_MS_9, i32* %int_clr2snd_array_MS_10, align 4
  %int_clr2snd_array_TA = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_184
  %int_clr2snd_array_TA_9 = load i8* %int_clr2snd_array_TA, align 8
  %int_clr2snd_array_TA_10 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_183
  store i8 %int_clr2snd_array_TA_9, i8* %int_clr2snd_array_TA_10, align 8
  %int_clr2snd_array_DA_13 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_184
  %int_clr2snd_array_DA_14 = load i4* %int_clr2snd_array_DA_13, align 1
  %int_clr2snd_array_DA_15 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_183
  store i4 %int_clr2snd_array_DA_14, i4* %int_clr2snd_array_DA_15, align 1
  %int_clr2snd_array_DA_16 = getelementptr [512 x i4]* @int_clr2snd_array_DA_1, i64 0, i64 %tmp_184
  %int_clr2snd_array_DA_17 = load i4* %int_clr2snd_array_DA_16, align 2
  %int_clr2snd_array_DA_18 = getelementptr [512 x i4]* @int_clr2snd_array_DA_1, i64 0, i64 %tmp_183
  store i4 %int_clr2snd_array_DA_17, i4* %int_clr2snd_array_DA_18, align 2
  %int_clr2snd_array_DE_10 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_184
  %int_clr2snd_array_DE_11 = load i16* %int_clr2snd_array_DE_10, align 4
  %int_clr2snd_array_DE_12 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_183
  store i16 %int_clr2snd_array_DE_11, i16* %int_clr2snd_array_DE_12, align 4
  br label %4

._crit_edge1136:                                  ; preds = %2, %1, %0
  br label %.preheader1117

; <label>:6                                       ; preds = %.preheader1117
  %tmp_4 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i121P(i121* @stream_in_V, i32 1)
  br i1 %tmp_4, label %7, label %48

; <label>:7                                       ; preds = %6
  %tmp_1 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_pkt_dest_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_1, i32 64, i32 71)
  %tmp_122 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_1, i32 72)
  br label %8

; <label>:8                                       ; preds = %9, %7
  %last_V_4 = phi i1 [ %tmp_122, %7 ], [ %tmp_126, %9 ]
  br i1 %last_V_4, label %10, label %9

; <label>:9                                       ; preds = %8
  %tmp_2 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_126 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_2, i32 72)
  br label %8

; <label>:10                                      ; preds = %8
  %temp_diff_src_or_typ_18 = zext i8 %recv_pkt_dest_V to i16
  %temp_diff_src_or_typ_19 = trunc i121 %tmp_1 to i8
  %temp_diff_src_or_typ_20 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_1, i32 8, i32 15)
  %temp_diff_src_or_typ_21 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_1, i32 16, i32 47)
  %temp_diff_src_or_typ_22 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_1, i32 48, i32 55)
  %temp_diff_src_or_typ_23 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_1, i32 60, i32 63)
  %tmp_172 = icmp eq i8 %temp_diff_src_or_typ_20, 1
  %tmp_173 = icmp eq i8 %recv_pkt_dest_V, 0
  %tmp_174 = icmp eq i8 %temp_diff_src_or_typ_19, 1
  %tmp1 = and i1 %tmp_173, %tmp_174
  %or_cond1 = and i1 %tmp1, %tmp_172
  br i1 %or_cond1, label %11, label %._crit_edge1139

; <label>:11                                      ; preds = %10
  store i2 -2, i2* @state, align 1
  br label %.loopexit1109

._crit_edge1139:                                  ; preds = %10
  %p_Result_8 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_1, i32 85, i32 88)
  %tmp_180 = icmp eq i4 %p_Result_8, 0
  br i1 %tmp_180, label %12, label %._crit_edge1142

; <label>:12                                      ; preds = %._crit_edge1139
  %p_Result_1 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_1, i32 81, i32 84)
  %tmp_185 = icmp eq i4 %p_Result_1, 0
  br i1 %tmp_185, label %13, label %30

; <label>:13                                      ; preds = %12
  %tmp_188 = icmp eq i8 %temp_diff_src_or_typ_20, 0
  br i1 %tmp_188, label %.preheader1114.preheader, label %21

.preheader1114.preheader:                         ; preds = %13
  %int_req_num_load = load i32* @int_req_num, align 4
  br label %.preheader1114

.preheader1114:                                   ; preds = %._crit_edge1143, %.preheader1114.preheader
  %i1 = phi i31 [ %i_29, %._crit_edge1143 ], [ 0, %.preheader1114.preheader ]
  %i1_cast = zext i31 %i1 to i32
  %tmp_197 = icmp slt i32 %i1_cast, %int_req_num_load
  %i_29 = add i31 %i1, 1
  br i1 %tmp_197, label %14, label %20

; <label>:14                                      ; preds = %.preheader1114
  %tmp_202 = zext i31 %i1 to i64
  %int_request_array_SR = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_202
  %int_request_array_SR_9 = load i8* %int_request_array_SR, align 16
  %tmp_203 = icmp eq i8 %int_request_array_SR_9, %temp_diff_src_or_typ_19
  br i1 %tmp_203, label %15, label %._crit_edge1143

; <label>:15                                      ; preds = %14
  %int_request_array_DE = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_202
  %int_request_array_DE_9 = load i16* %int_request_array_DE, align 4
  %tmp_212 = icmp eq i16 %int_request_array_DE_9, %temp_diff_src_or_typ_18
  br i1 %tmp_212, label %16, label %._crit_edge1143

; <label>:16                                      ; preds = %15
  %int_request_array_PK = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_202
  %int_request_array_PK_9 = load i1* %int_request_array_PK, align 1
  br i1 %int_request_array_PK_9, label %._crit_edge1143, label %17

; <label>:17                                      ; preds = %16
  %int_request_array_MS = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_202
  %int_request_array_MS_9 = load i32* %int_request_array_MS, align 4
  %tmp_260 = icmp eq i32 %int_request_array_MS_9, %temp_diff_src_or_typ_21
  br i1 %tmp_260, label %18, label %._crit_edge1143

; <label>:18                                      ; preds = %17
  %int_request_array_TA = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_202
  %int_request_array_TA_9 = load i8* %int_request_array_TA, align 8
  %tmp_274 = icmp eq i8 %int_request_array_TA_9, %temp_diff_src_or_typ_22
  br i1 %tmp_274, label %19, label %._crit_edge1143

; <label>:19                                      ; preds = %18
  %int_request_array_DA = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_202
  %int_request_array_DA_9 = load i4* %int_request_array_DA, align 1
  %tmp_281 = icmp eq i4 %int_request_array_DA_9, %temp_diff_src_or_typ_23
  br i1 %tmp_281, label %.loopexit1109.loopexit13, label %._crit_edge1143

._crit_edge1143:                                  ; preds = %19, %18, %17, %16, %15, %14
  br label %.preheader1114

; <label>:20                                      ; preds = %.preheader1114
  %tmp_204 = sext i32 %int_req_num_load to i64
  %int_request_array_SR_10 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_204
  store i8 %temp_diff_src_or_typ_19, i8* %int_request_array_SR_10, align 16
  %int_request_array_PK_10 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_204
  store i1 false, i1* %int_request_array_PK_10, align 1
  %int_request_array_MS_10 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_204
  store i32 %temp_diff_src_or_typ_21, i32* %int_request_array_MS_10, align 4
  %int_request_array_TA_10 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_204
  store i8 %temp_diff_src_or_typ_22, i8* %int_request_array_TA_10, align 8
  %int_request_array_DA_10 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_204
  store i4 %temp_diff_src_or_typ_23, i4* %int_request_array_DA_10, align 1
  %int_request_array_DE_10 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_204
  store i16 %temp_diff_src_or_typ_18, i16* %int_request_array_DE_10, align 4
  %tmp_205 = add nsw i32 %int_req_num_load, 1
  store i32 %tmp_205, i32* @int_req_num, align 4
  br label %29

; <label>:21                                      ; preds = %13
  br i1 %tmp_172, label %.preheader1112.preheader, label %._crit_edge1149

.preheader1112.preheader:                         ; preds = %21
  br label %.preheader1112

.preheader1112:                                   ; preds = %.preheader1112.preheader, %._crit_edge1150
  %i2 = phi i31 [ %i_16, %._crit_edge1150 ], [ 0, %.preheader1112.preheader ]
  %i2_cast = zext i31 %i2 to i32
  %tmp_206 = icmp slt i32 %i2_cast, %int_clr_num_load
  %i_16 = add i31 %i2, 1
  br i1 %tmp_206, label %22, label %28

; <label>:22                                      ; preds = %.preheader1112
  %tmp_213 = zext i31 %i2 to i64
  %int_clr2snd_array_SR_13 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_213
  %int_clr2snd_array_SR_14 = load i8* %int_clr2snd_array_SR_13, align 16
  %tmp_214 = icmp eq i8 %int_clr2snd_array_SR_14, %temp_diff_src_or_typ_19
  br i1 %tmp_214, label %23, label %._crit_edge1150

; <label>:23                                      ; preds = %22
  %int_clr2snd_array_DE_13 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_213
  %int_clr2snd_array_DE_14 = load i16* %int_clr2snd_array_DE_13, align 4
  %tmp_234 = icmp eq i16 %int_clr2snd_array_DE_14, %temp_diff_src_or_typ_18
  br i1 %tmp_234, label %24, label %._crit_edge1150

; <label>:24                                      ; preds = %23
  %int_clr2snd_array_PK_13 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_213
  %int_clr2snd_array_PK_14 = load i1* %int_clr2snd_array_PK_13, align 1
  br i1 %int_clr2snd_array_PK_14, label %25, label %._crit_edge1150

; <label>:25                                      ; preds = %24
  %int_clr2snd_array_MS_11 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_213
  %int_clr2snd_array_MS_12 = load i32* %int_clr2snd_array_MS_11, align 4
  %tmp_275 = icmp eq i32 %int_clr2snd_array_MS_12, %temp_diff_src_or_typ_21
  br i1 %tmp_275, label %26, label %._crit_edge1150

; <label>:26                                      ; preds = %25
  %int_clr2snd_array_TA_11 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_213
  %int_clr2snd_array_TA_12 = load i8* %int_clr2snd_array_TA_11, align 8
  %tmp_282 = icmp eq i8 %int_clr2snd_array_TA_12, %temp_diff_src_or_typ_22
  br i1 %tmp_282, label %27, label %._crit_edge1150

; <label>:27                                      ; preds = %26
  %int_clr2snd_array_DA_19 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_213
  %int_clr2snd_array_DA_20 = load i4* %int_clr2snd_array_DA_19, align 1
  %tmp_291 = icmp eq i4 %int_clr2snd_array_DA_20, %temp_diff_src_or_typ_23
  br i1 %tmp_291, label %.loopexit1109.loopexit12, label %._crit_edge1150

._crit_edge1150:                                  ; preds = %27, %26, %25, %24, %23, %22
  br label %.preheader1112

; <label>:28                                      ; preds = %.preheader1112
  %tmp_215 = sext i32 %int_clr_num_load to i64
  %int_clr2snd_array_SR_15 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_215
  store i8 %temp_diff_src_or_typ_19, i8* %int_clr2snd_array_SR_15, align 16
  %int_clr2snd_array_PK_15 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_215
  store i1 true, i1* %int_clr2snd_array_PK_15, align 1
  %int_clr2snd_array_MS_13 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_215
  store i32 %temp_diff_src_or_typ_21, i32* %int_clr2snd_array_MS_13, align 4
  %int_clr2snd_array_TA_13 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_215
  store i8 %temp_diff_src_or_typ_22, i8* %int_clr2snd_array_TA_13, align 8
  %int_clr2snd_array_DA_21 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_215
  store i4 %temp_diff_src_or_typ_23, i4* %int_clr2snd_array_DA_21, align 1
  %int_clr2snd_array_DE_15 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_215
  store i16 %temp_diff_src_or_typ_18, i16* %int_clr2snd_array_DE_15, align 4
  %tmp_216 = add nsw i32 %int_clr_num_load, 1
  store i32 %tmp_216, i32* @int_clr_num, align 4
  br label %._crit_edge1149

._crit_edge1149:                                  ; preds = %28, %21
  br label %29

; <label>:29                                      ; preds = %._crit_edge1149, %20
  br label %.loopexit1109

; <label>:30                                      ; preds = %12
  %tmp_189 = icmp eq i4 %p_Result_1, 1
  br i1 %tmp_189, label %31, label %._crit_edge1142

; <label>:31                                      ; preds = %30
  %tmp_192 = icmp eq i8 %temp_diff_src_or_typ_20, 0
  br i1 %tmp_192, label %.preheader1110.preheader, label %39

.preheader1110.preheader:                         ; preds = %31
  %float_req_num_load = load i32* @float_req_num, align 4
  br label %.preheader1110

.preheader1110:                                   ; preds = %._crit_edge1157, %.preheader1110.preheader
  %i4 = phi i31 [ %i_17, %._crit_edge1157 ], [ 0, %.preheader1110.preheader ]
  %i4_cast = zext i31 %i4 to i32
  %tmp_207 = icmp slt i32 %i4_cast, %float_req_num_load
  %i_17 = add i31 %i4, 1
  br i1 %tmp_207, label %32, label %38

; <label>:32                                      ; preds = %.preheader1110
  %tmp_217 = zext i31 %i4 to i64
  %float_request_array_s = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_217
  %float_request_array_61 = load i8* %float_request_array_s, align 16
  %tmp_218 = icmp eq i8 %float_request_array_61, %temp_diff_src_or_typ_19
  br i1 %tmp_218, label %33, label %._crit_edge1157

; <label>:33                                      ; preds = %32
  %float_request_array_62 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_217
  %float_request_array_63 = load i16* %float_request_array_62, align 4
  %tmp_235 = icmp eq i16 %float_request_array_63, %temp_diff_src_or_typ_18
  br i1 %tmp_235, label %34, label %._crit_edge1157

; <label>:34                                      ; preds = %33
  %float_request_array_64 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_217
  %float_request_array_65 = load i1* %float_request_array_64, align 1
  br i1 %float_request_array_65, label %._crit_edge1157, label %35

; <label>:35                                      ; preds = %34
  %float_request_array_66 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_217
  %float_request_array_67 = load i32* %float_request_array_66, align 4
  %tmp_276 = icmp eq i32 %float_request_array_67, %temp_diff_src_or_typ_21
  br i1 %tmp_276, label %36, label %._crit_edge1157

; <label>:36                                      ; preds = %35
  %float_request_array_68 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_217
  %float_request_array_69 = load i8* %float_request_array_68, align 8
  %tmp_283 = icmp eq i8 %float_request_array_69, %temp_diff_src_or_typ_22
  br i1 %tmp_283, label %37, label %._crit_edge1157

; <label>:37                                      ; preds = %36
  %float_request_array_70 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_217
  %float_request_array_71 = load i4* %float_request_array_70, align 1
  %tmp_292 = icmp eq i4 %float_request_array_71, %temp_diff_src_or_typ_23
  br i1 %tmp_292, label %.loopexit1109.loopexit11, label %._crit_edge1157

._crit_edge1157:                                  ; preds = %37, %36, %35, %34, %33, %32
  br label %.preheader1110

; <label>:38                                      ; preds = %.preheader1110
  %tmp_219 = sext i32 %float_req_num_load to i64
  %float_request_array_72 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_219
  store i8 %temp_diff_src_or_typ_19, i8* %float_request_array_72, align 16
  %float_request_array_73 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_219
  store i1 false, i1* %float_request_array_73, align 1
  %float_request_array_74 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_219
  store i32 %temp_diff_src_or_typ_21, i32* %float_request_array_74, align 4
  %float_request_array_75 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_219
  store i8 %temp_diff_src_or_typ_22, i8* %float_request_array_75, align 8
  %float_request_array_76 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_219
  store i4 %temp_diff_src_or_typ_23, i4* %float_request_array_76, align 1
  %float_request_array_77 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_219
  store i16 %temp_diff_src_or_typ_18, i16* %float_request_array_77, align 4
  %tmp_220 = add nsw i32 %float_req_num_load, 1
  store i32 %tmp_220, i32* @float_req_num, align 4
  br label %47

; <label>:39                                      ; preds = %31
  br i1 %tmp_172, label %.preheader1108.preheader, label %._crit_edge1163

.preheader1108.preheader:                         ; preds = %39
  %float_clr_num_load = load i32* @float_clr_num, align 4
  br label %.preheader1108

.preheader1108:                                   ; preds = %._crit_edge1164, %.preheader1108.preheader
  %i5 = phi i31 [ %i_22, %._crit_edge1164 ], [ 0, %.preheader1108.preheader ]
  %i5_cast = zext i31 %i5 to i32
  %tmp_221 = icmp slt i32 %i5_cast, %float_clr_num_load
  %i_22 = add i31 %i5, 1
  br i1 %tmp_221, label %40, label %46

; <label>:40                                      ; preds = %.preheader1108
  %tmp_236 = zext i31 %i5 to i64
  %float_clr2snd_array_s = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_236
  %float_clr2snd_array_92 = load i8* %float_clr2snd_array_s, align 16
  %tmp_237 = icmp eq i8 %float_clr2snd_array_92, %temp_diff_src_or_typ_19
  br i1 %tmp_237, label %41, label %._crit_edge1164

; <label>:41                                      ; preds = %40
  %float_clr2snd_array_93 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_236
  %float_clr2snd_array_94 = load i16* %float_clr2snd_array_93, align 4
  %tmp_261 = icmp eq i16 %float_clr2snd_array_94, %temp_diff_src_or_typ_18
  br i1 %tmp_261, label %42, label %._crit_edge1164

; <label>:42                                      ; preds = %41
  %float_clr2snd_array_95 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_236
  %float_clr2snd_array_96 = load i1* %float_clr2snd_array_95, align 1
  br i1 %float_clr2snd_array_96, label %43, label %._crit_edge1164

; <label>:43                                      ; preds = %42
  %float_clr2snd_array_97 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_236
  %float_clr2snd_array_98 = load i32* %float_clr2snd_array_97, align 4
  %tmp_284 = icmp eq i32 %float_clr2snd_array_98, %temp_diff_src_or_typ_21
  br i1 %tmp_284, label %44, label %._crit_edge1164

; <label>:44                                      ; preds = %43
  %float_clr2snd_array_99 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_236
  %float_clr2snd_array_100 = load i8* %float_clr2snd_array_99, align 8
  %tmp_293 = icmp eq i8 %float_clr2snd_array_100, %temp_diff_src_or_typ_22
  br i1 %tmp_293, label %45, label %._crit_edge1164

; <label>:45                                      ; preds = %44
  %float_clr2snd_array_101 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_236
  %float_clr2snd_array_102 = load i4* %float_clr2snd_array_101, align 1
  %tmp_302 = icmp eq i4 %float_clr2snd_array_102, %temp_diff_src_or_typ_23
  br i1 %tmp_302, label %.loopexit1109.loopexit, label %._crit_edge1164

._crit_edge1164:                                  ; preds = %45, %44, %43, %42, %41, %40
  br label %.preheader1108

; <label>:46                                      ; preds = %.preheader1108
  %tmp_238 = sext i32 %float_clr_num_load to i64
  %float_clr2snd_array_103 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_238
  store i8 %temp_diff_src_or_typ_19, i8* %float_clr2snd_array_103, align 16
  %float_clr2snd_array_104 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_238
  store i1 true, i1* %float_clr2snd_array_104, align 1
  %float_clr2snd_array_105 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_238
  store i32 %temp_diff_src_or_typ_21, i32* %float_clr2snd_array_105, align 4
  %float_clr2snd_array_106 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_238
  store i8 %temp_diff_src_or_typ_22, i8* %float_clr2snd_array_106, align 8
  %float_clr2snd_array_107 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_238
  store i4 %temp_diff_src_or_typ_23, i4* %float_clr2snd_array_107, align 1
  %float_clr2snd_array_108 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_238
  store i16 %temp_diff_src_or_typ_18, i16* %float_clr2snd_array_108, align 4
  %tmp_239 = add nsw i32 %float_clr_num_load, 1
  store i32 %tmp_239, i32* @float_clr_num, align 4
  br label %._crit_edge1163

._crit_edge1163:                                  ; preds = %46, %39
  br label %47

; <label>:47                                      ; preds = %._crit_edge1163, %38
  br label %.loopexit1109

._crit_edge1142:                                  ; preds = %30, %._crit_edge1139
  br label %.loopexit1109

; <label>:48                                      ; preds = %6
  %tmp_168 = add i64 %t_V, 1
  %tmp_169 = icmp eq i64 %tmp_168, 314465410
  br i1 %tmp_169, label %49, label %.loopexit1109

; <label>:49                                      ; preds = %48
  store i2 0, i2* @state, align 1
  br label %.loopexit1109

.preheader1107:                                   ; preds = %.preheader1107.backedge, %.preheader1107.preheader
  %seq_num_1 = phi i32 [ 0, %.preheader1107.preheader ], [ %seq_num_1_be, %.preheader1107.backedge ]
  %i6_1 = phi i32 [ 0, %.preheader1107.preheader ], [ %i6_1_be, %.preheader1107.backedge ]
  %tmp_121 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %i6_1, i32 2, i32 31)
  %icmp = icmp slt i30 %tmp_121, 1
  br i1 %icmp, label %50, label %.preheader1100.preheader

.preheader1100.preheader:                         ; preds = %.preheader1107
  br label %.preheader1100

; <label>:50                                      ; preds = %.preheader1107
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str)
  %tmp_3 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i121P(i121* @stream_in_V, i32 1)
  br i1 %tmp_3, label %51, label %._crit_edge1171

; <label>:51                                      ; preds = %50
  %tmp_3268 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_data_dest_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3268, i32 64, i32 71)
  %tmp_123 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_3268, i32 72)
  %recv_data_id_V_2 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3268, i32 73, i32 80)
  br label %52

; <label>:52                                      ; preds = %53, %51
  %last_V_3 = phi i1 [ %tmp_123, %51 ], [ %tmp_128, %53 ]
  br i1 %last_V_3, label %54, label %53

; <label>:53                                      ; preds = %52
  %tmp_4289 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_128 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_4289, i32 72)
  br label %52

; <label>:54                                      ; preds = %52
  %temp_diff_src_or_typ_24 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_25 = trunc i121 %tmp_3268 to i8
  %temp_diff_src_or_typ_26 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3268, i32 8, i32 15)
  %temp_diff_src_or_typ_27 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_3268, i32 16, i32 47)
  %temp_diff_src_or_typ_28 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_3268, i32 48, i32 55)
  %temp_diff_src_or_typ_29 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_3268, i32 60, i32 63)
  %tmp_175 = icmp eq i8 %temp_diff_src_or_typ_26, 4
  %tmp_176 = icmp eq i8 %recv_data_id_V_2, 1
  %or_cond2 = and i1 %tmp_175, %tmp_176
  br i1 %or_cond2, label %55, label %._crit_edge1172

; <label>:55                                      ; preds = %54
  %i = mul i32 %temp_diff_src_or_typ_27, 1488
  store i32 %temp_diff_src_or_typ_27, i32* %temp_diff_src_or_typ
  br label %95

._crit_edge1172:                                  ; preds = %54
  %tmp_181 = icmp eq i8 %temp_diff_src_or_typ_26, 5
  %or_cond3 = and i1 %tmp_181, %tmp_176
  br i1 %or_cond3, label %._crit_edge1175, label %._crit_edge1174

._crit_edge1174:                                  ; preds = %._crit_edge1172
  %p_Result_9 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_3268, i32 85, i32 88)
  %tmp_186 = icmp eq i4 %p_Result_9, 0
  br i1 %tmp_186, label %56, label %._crit_edge1177

; <label>:56                                      ; preds = %._crit_edge1174
  %p_Result_2 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_3268, i32 81, i32 84)
  %tmp_190 = icmp eq i4 %p_Result_2, 0
  br i1 %tmp_190, label %57, label %72

; <label>:57                                      ; preds = %56
  %tmp_193 = icmp eq i8 %temp_diff_src_or_typ_26, 0
  br i1 %tmp_193, label %.preheader1106.preheader, label %64

.preheader1106.preheader:                         ; preds = %57
  %int_req_num_load_3 = load i32* @int_req_num, align 4
  br label %.preheader1106

.preheader1106:                                   ; preds = %._crit_edge1178, %.preheader1106.preheader
  %i11 = phi i31 [ %i_18, %._crit_edge1178 ], [ 0, %.preheader1106.preheader ]
  %i11_cast = zext i31 %i11 to i32
  %tmp_208 = icmp slt i32 %i11_cast, %int_req_num_load_3
  %i_18 = add i31 %i11, 1
  br i1 %tmp_208, label %58, label %.loopexit1088

; <label>:58                                      ; preds = %.preheader1106
  %tmp_222 = zext i31 %i11 to i64
  %int_request_array_SR_11 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_222
  %int_request_array_SR_12 = load i8* %int_request_array_SR_11, align 16
  %tmp_223 = icmp eq i8 %int_request_array_SR_12, %temp_diff_src_or_typ_25
  br i1 %tmp_223, label %59, label %._crit_edge1178

; <label>:59                                      ; preds = %58
  %int_request_array_DE_11 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_222
  %int_request_array_DE_12 = load i16* %int_request_array_DE_11, align 4
  %tmp_240 = icmp eq i16 %int_request_array_DE_12, %temp_diff_src_or_typ_24
  br i1 %tmp_240, label %60, label %._crit_edge1178

; <label>:60                                      ; preds = %59
  %int_request_array_PK_11 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_222
  %int_request_array_PK_12 = load i1* %int_request_array_PK_11, align 1
  br i1 %int_request_array_PK_12, label %._crit_edge1178, label %61

; <label>:61                                      ; preds = %60
  %int_request_array_MS_11 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_222
  %int_request_array_MS_12 = load i32* %int_request_array_MS_11, align 4
  %tmp_277 = icmp eq i32 %int_request_array_MS_12, %temp_diff_src_or_typ_27
  br i1 %tmp_277, label %62, label %._crit_edge1178

; <label>:62                                      ; preds = %61
  %int_request_array_TA_11 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_222
  %int_request_array_TA_12 = load i8* %int_request_array_TA_11, align 8
  %tmp_285 = icmp eq i8 %int_request_array_TA_12, %temp_diff_src_or_typ_28
  br i1 %tmp_285, label %63, label %._crit_edge1178

; <label>:63                                      ; preds = %62
  %int_request_array_DA_11 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_222
  %int_request_array_DA_12 = load i4* %int_request_array_DA_11, align 1
  %tmp_294 = icmp eq i4 %int_request_array_DA_12, %temp_diff_src_or_typ_29
  br i1 %tmp_294, label %.critedge.loopexit, label %._crit_edge1178

._crit_edge1178:                                  ; preds = %63, %62, %61, %60, %59, %58
  br label %.preheader1106

.loopexit1088:                                    ; preds = %.preheader1106
  %tmp_224 = sext i32 %int_req_num_load_3 to i64
  %int_request_array_SR_13 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_224
  store i8 %temp_diff_src_or_typ_25, i8* %int_request_array_SR_13, align 16
  %int_request_array_PK_13 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_224
  store i1 false, i1* %int_request_array_PK_13, align 1
  %int_request_array_MS_13 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_224
  store i32 %temp_diff_src_or_typ_27, i32* %int_request_array_MS_13, align 4
  %int_request_array_TA_13 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_224
  store i8 %temp_diff_src_or_typ_28, i8* %int_request_array_TA_13, align 8
  %int_request_array_DA_13 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_224
  store i4 %temp_diff_src_or_typ_29, i4* %int_request_array_DA_13, align 1
  %int_request_array_DE_13 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_224
  store i16 %temp_diff_src_or_typ_24, i16* %int_request_array_DE_13, align 4
  %tmp_225 = add nsw i32 %int_req_num_load_3, 1
  store i32 %tmp_225, i32* @int_req_num, align 4
  br label %.critedge

.critedge.loopexit:                               ; preds = %63
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.loopexit1088
  br label %71

; <label>:64                                      ; preds = %57
  %tmp_198 = icmp eq i8 %temp_diff_src_or_typ_26, 1
  br i1 %tmp_198, label %.preheader1105.preheader, label %._crit_edge1184

.preheader1105.preheader:                         ; preds = %64
  %int_clr_num_load_3 = load i32* @int_clr_num, align 4
  br label %.preheader1105

.preheader1105:                                   ; preds = %._crit_edge1185, %.preheader1105.preheader
  %i13 = phi i31 [ %i_23, %._crit_edge1185 ], [ 0, %.preheader1105.preheader ]
  %i13_cast = zext i31 %i13 to i32
  %tmp_226 = icmp slt i32 %i13_cast, %int_clr_num_load_3
  %i_23 = add i31 %i13, 1
  br i1 %tmp_226, label %65, label %.loopexit1087

; <label>:65                                      ; preds = %.preheader1105
  %tmp_241 = zext i31 %i13 to i64
  %int_clr2snd_array_SR_16 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_241
  %int_clr2snd_array_SR_17 = load i8* %int_clr2snd_array_SR_16, align 16
  %tmp_242 = icmp eq i8 %int_clr2snd_array_SR_17, %temp_diff_src_or_typ_25
  br i1 %tmp_242, label %66, label %._crit_edge1185

; <label>:66                                      ; preds = %65
  %int_clr2snd_array_DE_16 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_241
  %int_clr2snd_array_DE_17 = load i16* %int_clr2snd_array_DE_16, align 4
  %tmp_262 = icmp eq i16 %int_clr2snd_array_DE_17, %temp_diff_src_or_typ_24
  br i1 %tmp_262, label %67, label %._crit_edge1185

; <label>:67                                      ; preds = %66
  %int_clr2snd_array_PK_16 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_241
  %int_clr2snd_array_PK_17 = load i1* %int_clr2snd_array_PK_16, align 1
  br i1 %int_clr2snd_array_PK_17, label %68, label %._crit_edge1185

; <label>:68                                      ; preds = %67
  %int_clr2snd_array_MS_14 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_241
  %int_clr2snd_array_MS_15 = load i32* %int_clr2snd_array_MS_14, align 4
  %tmp_286 = icmp eq i32 %int_clr2snd_array_MS_15, %temp_diff_src_or_typ_27
  br i1 %tmp_286, label %69, label %._crit_edge1185

; <label>:69                                      ; preds = %68
  %int_clr2snd_array_TA_14 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_241
  %int_clr2snd_array_TA_15 = load i8* %int_clr2snd_array_TA_14, align 8
  %tmp_295 = icmp eq i8 %int_clr2snd_array_TA_15, %temp_diff_src_or_typ_28
  br i1 %tmp_295, label %70, label %._crit_edge1185

; <label>:70                                      ; preds = %69
  %int_clr2snd_array_DA_22 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_241
  %int_clr2snd_array_DA_23 = load i4* %int_clr2snd_array_DA_22, align 1
  %tmp_303 = icmp eq i4 %int_clr2snd_array_DA_23, %temp_diff_src_or_typ_29
  br i1 %tmp_303, label %.critedge1090.loopexit, label %._crit_edge1185

._crit_edge1185:                                  ; preds = %70, %69, %68, %67, %66, %65
  br label %.preheader1105

.loopexit1087:                                    ; preds = %.preheader1105
  %tmp_243 = sext i32 %int_clr_num_load_3 to i64
  %int_clr2snd_array_SR_18 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_243
  store i8 %temp_diff_src_or_typ_25, i8* %int_clr2snd_array_SR_18, align 16
  %int_clr2snd_array_PK_18 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_243
  store i1 true, i1* %int_clr2snd_array_PK_18, align 1
  %int_clr2snd_array_MS_16 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_243
  store i32 %temp_diff_src_or_typ_27, i32* %int_clr2snd_array_MS_16, align 4
  %int_clr2snd_array_TA_16 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_243
  store i8 %temp_diff_src_or_typ_28, i8* %int_clr2snd_array_TA_16, align 8
  %int_clr2snd_array_DA_24 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_243
  store i4 %temp_diff_src_or_typ_29, i4* %int_clr2snd_array_DA_24, align 1
  %int_clr2snd_array_DE_18 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_243
  store i16 %temp_diff_src_or_typ_24, i16* %int_clr2snd_array_DE_18, align 4
  %tmp_244 = add nsw i32 %int_clr_num_load_3, 1
  store i32 %tmp_244, i32* @int_clr_num, align 4
  br label %.critedge1090

.critedge1090.loopexit:                           ; preds = %70
  br label %.critedge1090

.critedge1090:                                    ; preds = %.critedge1090.loopexit, %.loopexit1087
  br label %._crit_edge1184

._crit_edge1184:                                  ; preds = %.critedge1090, %64
  br label %71

; <label>:71                                      ; preds = %._crit_edge1184, %.critedge
  br label %88

; <label>:72                                      ; preds = %56
  %tmp_194 = icmp eq i4 %p_Result_2, 1
  br i1 %tmp_194, label %73, label %._crit_edge1191

; <label>:73                                      ; preds = %72
  %tmp_199 = icmp eq i8 %temp_diff_src_or_typ_26, 0
  br i1 %tmp_199, label %.preheader1104.preheader, label %80

.preheader1104.preheader:                         ; preds = %73
  %float_req_num_load_3 = load i32* @float_req_num, align 4
  br label %.preheader1104

.preheader1104:                                   ; preds = %._crit_edge1192, %.preheader1104.preheader
  %i16 = phi i31 [ %i_24, %._crit_edge1192 ], [ 0, %.preheader1104.preheader ]
  %i16_cast = zext i31 %i16 to i32
  %tmp_227 = icmp slt i32 %i16_cast, %float_req_num_load_3
  %i_24 = add i31 %i16, 1
  br i1 %tmp_227, label %74, label %.loopexit1086

; <label>:74                                      ; preds = %.preheader1104
  %tmp_245 = zext i31 %i16 to i64
  %float_request_array_78 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_245
  %float_request_array_79 = load i8* %float_request_array_78, align 16
  %tmp_246 = icmp eq i8 %float_request_array_79, %temp_diff_src_or_typ_25
  br i1 %tmp_246, label %75, label %._crit_edge1192

; <label>:75                                      ; preds = %74
  %float_request_array_80 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_245
  %float_request_array_81 = load i16* %float_request_array_80, align 4
  %tmp_263 = icmp eq i16 %float_request_array_81, %temp_diff_src_or_typ_24
  br i1 %tmp_263, label %76, label %._crit_edge1192

; <label>:76                                      ; preds = %75
  %float_request_array_82 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_245
  %float_request_array_83 = load i1* %float_request_array_82, align 1
  br i1 %float_request_array_83, label %._crit_edge1192, label %77

; <label>:77                                      ; preds = %76
  %float_request_array_84 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_245
  %float_request_array_85 = load i32* %float_request_array_84, align 4
  %tmp_287 = icmp eq i32 %float_request_array_85, %temp_diff_src_or_typ_27
  br i1 %tmp_287, label %78, label %._crit_edge1192

; <label>:78                                      ; preds = %77
  %float_request_array_86 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_245
  %float_request_array_87 = load i8* %float_request_array_86, align 8
  %tmp_296 = icmp eq i8 %float_request_array_87, %temp_diff_src_or_typ_28
  br i1 %tmp_296, label %79, label %._crit_edge1192

; <label>:79                                      ; preds = %78
  %float_request_array_88 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_245
  %float_request_array_89 = load i4* %float_request_array_88, align 1
  %tmp_304 = icmp eq i4 %float_request_array_89, %temp_diff_src_or_typ_29
  br i1 %tmp_304, label %.critedge1091.loopexit, label %._crit_edge1192

._crit_edge1192:                                  ; preds = %79, %78, %77, %76, %75, %74
  br label %.preheader1104

.loopexit1086:                                    ; preds = %.preheader1104
  %tmp_247 = sext i32 %float_req_num_load_3 to i64
  %float_request_array_90 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_247
  store i8 %temp_diff_src_or_typ_25, i8* %float_request_array_90, align 16
  %float_request_array_91 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_247
  store i1 false, i1* %float_request_array_91, align 1
  %float_request_array_92 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_247
  store i32 %temp_diff_src_or_typ_27, i32* %float_request_array_92, align 4
  %float_request_array_93 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_247
  store i8 %temp_diff_src_or_typ_28, i8* %float_request_array_93, align 8
  %float_request_array_94 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_247
  store i4 %temp_diff_src_or_typ_29, i4* %float_request_array_94, align 1
  %float_request_array_95 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_247
  store i16 %temp_diff_src_or_typ_24, i16* %float_request_array_95, align 4
  %tmp_258 = add nsw i32 %float_req_num_load_3, 1
  store i32 %tmp_258, i32* @float_req_num, align 4
  br label %.critedge1091

.critedge1091.loopexit:                           ; preds = %79
  br label %.critedge1091

.critedge1091:                                    ; preds = %.critedge1091.loopexit, %.loopexit1086
  br label %87

; <label>:80                                      ; preds = %73
  %tmp_209 = icmp eq i8 %temp_diff_src_or_typ_26, 1
  br i1 %tmp_209, label %.preheader1103.preheader, label %._crit_edge1198

.preheader1103.preheader:                         ; preds = %80
  %float_clr_num_load_3 = load i32* @float_clr_num, align 4
  br label %.preheader1103

.preheader1103:                                   ; preds = %._crit_edge1199, %.preheader1103.preheader
  %i18 = phi i31 [ %i_27, %._crit_edge1199 ], [ 0, %.preheader1103.preheader ]
  %i18_cast = zext i31 %i18 to i32
  %tmp_259 = icmp slt i32 %i18_cast, %float_clr_num_load_3
  %i_27 = add i31 %i18, 1
  br i1 %tmp_259, label %81, label %.loopexit1085

; <label>:81                                      ; preds = %.preheader1103
  %tmp_264 = zext i31 %i18 to i64
  %float_clr2snd_array_109 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_264
  %float_clr2snd_array_110 = load i8* %float_clr2snd_array_109, align 16
  %tmp_265 = icmp eq i8 %float_clr2snd_array_110, %temp_diff_src_or_typ_25
  br i1 %tmp_265, label %82, label %._crit_edge1199

; <label>:82                                      ; preds = %81
  %float_clr2snd_array_111 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_264
  %float_clr2snd_array_112 = load i16* %float_clr2snd_array_111, align 4
  %tmp_278 = icmp eq i16 %float_clr2snd_array_112, %temp_diff_src_or_typ_24
  br i1 %tmp_278, label %83, label %._crit_edge1199

; <label>:83                                      ; preds = %82
  %float_clr2snd_array_113 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_264
  %float_clr2snd_array_114 = load i1* %float_clr2snd_array_113, align 1
  br i1 %float_clr2snd_array_114, label %84, label %._crit_edge1199

; <label>:84                                      ; preds = %83
  %float_clr2snd_array_115 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_264
  %float_clr2snd_array_116 = load i32* %float_clr2snd_array_115, align 4
  %tmp_297 = icmp eq i32 %float_clr2snd_array_116, %temp_diff_src_or_typ_27
  br i1 %tmp_297, label %85, label %._crit_edge1199

; <label>:85                                      ; preds = %84
  %float_clr2snd_array_117 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_264
  %float_clr2snd_array_118 = load i8* %float_clr2snd_array_117, align 8
  %tmp_305 = icmp eq i8 %float_clr2snd_array_118, %temp_diff_src_or_typ_28
  br i1 %tmp_305, label %86, label %._crit_edge1199

; <label>:86                                      ; preds = %85
  %float_clr2snd_array_119 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_264
  %float_clr2snd_array_120 = load i4* %float_clr2snd_array_119, align 1
  %tmp_309 = icmp eq i4 %float_clr2snd_array_120, %temp_diff_src_or_typ_29
  br i1 %tmp_309, label %.critedge1092.loopexit, label %._crit_edge1199

._crit_edge1199:                                  ; preds = %86, %85, %84, %83, %82, %81
  br label %.preheader1103

.loopexit1085:                                    ; preds = %.preheader1103
  %tmp_266 = sext i32 %float_clr_num_load_3 to i64
  %float_clr2snd_array_121 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_266
  store i8 %temp_diff_src_or_typ_25, i8* %float_clr2snd_array_121, align 16
  %float_clr2snd_array_122 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_266
  store i1 true, i1* %float_clr2snd_array_122, align 1
  %float_clr2snd_array_123 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_266
  store i32 %temp_diff_src_or_typ_27, i32* %float_clr2snd_array_123, align 4
  %float_clr2snd_array_124 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_266
  store i8 %temp_diff_src_or_typ_28, i8* %float_clr2snd_array_124, align 8
  %float_clr2snd_array_125 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_266
  store i4 %temp_diff_src_or_typ_29, i4* %float_clr2snd_array_125, align 1
  %float_clr2snd_array_126 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_266
  store i16 %temp_diff_src_or_typ_24, i16* %float_clr2snd_array_126, align 4
  %tmp_267 = add nsw i32 %float_clr_num_load_3, 1
  store i32 %tmp_267, i32* @float_clr_num, align 4
  br label %.critedge1092

.critedge1092.loopexit:                           ; preds = %86
  br label %.critedge1092

.critedge1092:                                    ; preds = %.critedge1092.loopexit, %.loopexit1085
  br label %._crit_edge1198

._crit_edge1198:                                  ; preds = %.critedge1092, %80
  br label %87

; <label>:87                                      ; preds = %._crit_edge1198, %.critedge1091
  br label %._crit_edge1191

._crit_edge1191:                                  ; preds = %87, %72
  br label %88

; <label>:88                                      ; preds = %._crit_edge1191, %71
  br label %._crit_edge1177

._crit_edge1177:                                  ; preds = %88, %._crit_edge1174
  br label %._crit_edge1175

._crit_edge1175:                                  ; preds = %._crit_edge1177, %._crit_edge1172
  br label %._crit_edge1171

._crit_edge1171:                                  ; preds = %._crit_edge1175, %50
  %error_is_seen_1_load = load i1* %error_is_seen_1
  br i1 %error_is_seen_1_load, label %89, label %.preheader1102.preheader

.preheader1102.preheader:                         ; preds = %._crit_edge1171
  br label %.preheader1102

; <label>:89                                      ; preds = %._crit_edge1171
  %tmp_data_V_load = load i64* %tmp_data_V
  %temp_diff_src_or_typ_30 = load i32* %temp_diff_src_or_typ
  %tmp_dest_V_load = load i8* %tmp_dest_V
  %tmp_5 = call i121 @_ssdm_op_BitConcatenate.i121.i32.i17.i8.i64(i32 %temp_diff_src_or_typ_30, i17 8705, i8 %tmp_dest_V_load, i64 %tmp_data_V_load)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_5)
  %i_30 = add nsw i32 %i6_1, -8
  br label %95

.preheader1102:                                   ; preds = %.preheader1102.preheader, %90
  %j4 = phi i4 [ %j_3, %90 ], [ 0, %.preheader1102.preheader ]
  %j4_cast = zext i4 %j4 to i32
  %exitcond = icmp eq i4 %j4, -8
  %empty_190 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_3 = add i4 %j4, 1
  br i1 %exitcond, label %91, label %90

; <label>:90                                      ; preds = %.preheader1102
  %tmp_data_V_load_1 = load i64* %tmp_data_V
  %tmp_132 = trunc i4 %j4 to i3
  %Lo_assign = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_132, i3 0)
  %Hi_assign = or i6 %Lo_assign, 7
  %tmp_312 = add nsw i32 %i6_1, %j4_cast
  %tmp_133 = trunc i32 %tmp_312 to i2
  %adjSize = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %tmp_312, i32 2, i32 17)
  %mem_index_gep = add i16 31220, %adjSize
  %adjSize1965_cast = zext i16 %mem_index_gep to i17
  %addrCmp = icmp ult i16 %adjSize, -31220
  %addrCmp1 = icmp ult i16 %mem_index_gep, 31221
  %gepindex = add i17 -31220, %adjSize1965_cast
  %gepindex1 = select i1 %addrCmp, i17 %gepindex, i17 0
  %gepindex2 = select i1 %addrCmp1, i17 %gepindex1, i17 0
  %gepindex2_cast = sext i17 %gepindex2 to i64
  %buf_addr = getelementptr [1 x i12]* %buf_r, i64 0, i64 %gepindex2_cast
  %buf_load = load i12* %buf_addr, align 2
  %extLd = sext i12 %buf_load to i32
  %start_pos = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_133, i3 0)
  %end_pos = or i5 %start_pos, 7
  %tmp_134 = icmp ugt i5 %start_pos, %end_pos
  %tmp_135 = zext i5 %start_pos to i6
  %tmp_136 = zext i5 %end_pos to i6
  %tmp_137 = call i32 @llvm.part.select.i32(i32 %extLd, i32 31, i32 0)
  %tmp_138 = sub i6 %tmp_135, %tmp_136
  %tmp_139 = xor i6 %tmp_135, 31
  %tmp_140 = sub i6 %tmp_136, %tmp_135
  %tmp_141 = select i1 %tmp_134, i6 %tmp_138, i6 %tmp_140
  %tmp_142 = select i1 %tmp_134, i32 %tmp_137, i32 %extLd
  %tmp_143 = select i1 %tmp_134, i6 %tmp_139, i6 %tmp_135
  %tmp_144 = sub i6 31, %tmp_141
  %tmp_145 = zext i6 %tmp_143 to i32
  %tmp_146 = zext i6 %tmp_144 to i32
  %tmp_147 = lshr i32 %tmp_142, %tmp_145
  %tmp_148 = lshr i32 -1, %tmp_146
  %tmp_149 = and i32 %tmp_147, %tmp_148
  %tmp_150 = trunc i32 %tmp_149 to i8
  %p_Repl2_s = sext i8 %tmp_150 to i64
  %tmp_151 = icmp ugt i6 %Lo_assign, %Hi_assign
  %tmp_152 = zext i6 %Lo_assign to i7
  %tmp_153 = zext i6 %Hi_assign to i7
  %tmp_154 = xor i7 %tmp_152, 63
  %tmp_155 = select i1 %tmp_151, i7 %tmp_152, i7 %tmp_153
  %tmp_156 = select i1 %tmp_151, i7 %tmp_153, i7 %tmp_152
  %tmp_157 = select i1 %tmp_151, i7 %tmp_154, i7 %tmp_152
  %tmp_158 = xor i7 %tmp_155, 63
  %tmp_159 = zext i7 %tmp_157 to i64
  %tmp_160 = zext i7 %tmp_156 to i64
  %tmp_161 = zext i7 %tmp_158 to i64
  %tmp_162 = shl i64 %p_Repl2_s, %tmp_159
  %tmp_163 = call i64 @llvm.part.select.i64(i64 %tmp_162, i32 63, i32 0)
  %tmp_164 = select i1 %tmp_151, i64 %tmp_163, i64 %tmp_162
  %tmp_165 = shl i64 -1, %tmp_160
  %tmp_313 = lshr i64 -1, %tmp_161
  %p_demorgan = and i64 %tmp_165, %tmp_313
  %tmp_314 = xor i64 %p_demorgan, -1
  %tmp_315 = and i64 %tmp_data_V_load_1, %tmp_314
  %tmp_316 = and i64 %tmp_164, %p_demorgan
  %p_Result_s = or i64 %tmp_315, %tmp_316
  store i64 %p_Result_s, i64* %tmp_data_V
  br label %.preheader1102

; <label>:91                                      ; preds = %.preheader1102
  %tmp_311 = add nsw i32 %i6_1, 8
  %tmp_131 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %tmp_311, i32 2, i32 31)
  %icmp7 = icmp slt i30 %tmp_131, 1
  br i1 %icmp7, label %92, label %93

; <label>:92                                      ; preds = %91
  %tmp_317 = srem i32 %tmp_311, 1488
  %tmp_320 = trunc i32 %tmp_317 to i12
  %tmp_318 = icmp eq i12 %tmp_320, 0
  br label %93

; <label>:93                                      ; preds = %92, %91
  %tmp_last_V = phi i1 [ true, %91 ], [ %tmp_318, %92 ]
  %seq_inc_3 = phi i1 [ false, %91 ], [ %tmp_318, %92 ]
  %test_1_load = load i1* %test_1
  %p_not = icmp eq i32 %seq_num_1, 2
  %demorgan = and i1 %test_1_load, %p_not
  br i1 %demorgan, label %._crit_edge1205.pre, label %94

; <label>:94                                      ; preds = %93
  %tmp_data_V_load_2 = load i64* %tmp_data_V
  %tmp_6_3 = call i121 @_ssdm_op_BitConcatenate.i121.i32.i16.i1.i8.i64(i32 %seq_num_1, i16 4096, i1 %tmp_last_V, i8 1, i64 %tmp_data_V_load_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_6_3)
  %not_tmp_s = icmp ne i32 %seq_num_1, 3
  %p_test_1 = and i1 %test_1_load, %not_tmp_s
  store i1 %p_test_1, i1* %test_1
  br label %._crit_edge1205

._crit_edge1205.pre:                              ; preds = %93
  store i1 true, i1* %test_1
  br label %._crit_edge1205

._crit_edge1205:                                  ; preds = %._crit_edge1205.pre, %94
  %seq_num = add nsw i32 %seq_num_1, 1
  %p_seq_num_1 = select i1 %seq_inc_3, i32 %seq_num, i32 %seq_num_1
  %empty_191 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str, i32 %tmp)
  store i8 1, i8* %tmp_dest_V
  br label %95

; <label>:95                                      ; preds = %._crit_edge1205, %89, %55
  %seq_num_3 = phi i32 [ %temp_diff_src_or_typ_27, %55 ], [ %seq_num_1, %89 ], [ %p_seq_num_1, %._crit_edge1205 ]
  %i6_2 = phi i32 [ %i, %55 ], [ %i_30, %89 ], [ %i6_1, %._crit_edge1205 ]
  %error_is_seen_2 = phi i1 [ true, %55 ], [ false, %89 ], [ false, %._crit_edge1205 ]
  %i_31 = add nsw i32 %i6_2, 8
  store i1 %error_is_seen_2, i1* %error_is_seen_1
  br label %.preheader1107.backedge

.preheader1100:                                   ; preds = %.preheader1100.preheader, %._crit_edge1210
  %tmp_8 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_data_dest_V_2 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_8, i32 64, i32 71)
  %tmp_124 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_8, i32 72)
  %recv_data_id_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_8, i32 73, i32 80)
  br label %96

; <label>:96                                      ; preds = %97, %.preheader1100
  %last_V = phi i1 [ %tmp_124, %.preheader1100 ], [ %tmp_130, %97 ]
  br i1 %last_V, label %98, label %97

; <label>:97                                      ; preds = %96
  %tmp_9 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_130 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_9, i32 72)
  br label %96

; <label>:98                                      ; preds = %96
  %temp_diff_src_or_typ_31 = zext i8 %recv_data_dest_V_2 to i16
  %temp_diff_src_or_typ_32 = trunc i121 %tmp_8 to i8
  %temp_diff_src_or_typ_33 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_8, i32 8, i32 15)
  %temp_diff_src_or_typ_34 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_8, i32 16, i32 47)
  %temp_diff_src_or_typ_35 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_8, i32 48, i32 55)
  %temp_diff_src_or_typ_36 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_8, i32 60, i32 63)
  %tmp_177 = icmp eq i8 %temp_diff_src_or_typ_33, 4
  %tmp_178 = icmp eq i8 %recv_data_id_V, 1
  %or_cond4 = and i1 %tmp_177, %tmp_178
  br i1 %or_cond4, label %99, label %._crit_edge1206

; <label>:99                                      ; preds = %98
  %p_s = mul i32 %temp_diff_src_or_typ_34, 1488
  %i_21 = or i32 %p_s, 1
  br label %.preheader1107.backedge

.preheader1107.backedge:                          ; preds = %99, %95
  %seq_num_1_be = phi i32 [ %seq_num_3, %95 ], [ %temp_diff_src_or_typ_34, %99 ]
  %i6_1_be = phi i32 [ %i_31, %95 ], [ %i_21, %99 ]
  br label %.preheader1107

._crit_edge1206:                                  ; preds = %98
  %tmp_182 = icmp eq i8 %temp_diff_src_or_typ_33, 5
  %or_cond5 = and i1 %tmp_182, %tmp_178
  br i1 %or_cond5, label %100, label %._crit_edge1208

; <label>:100                                     ; preds = %._crit_edge1206
  store i2 0, i2* @state, align 1
  br label %.loopexit1109

._crit_edge1208:                                  ; preds = %._crit_edge1206
  %p_Result_s_192 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_8, i32 85, i32 88)
  %tmp_187 = icmp eq i4 %p_Result_s_192, 0
  br i1 %tmp_187, label %101, label %._crit_edge1210

; <label>:101                                     ; preds = %._crit_edge1208
  %p_Result_3 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_8, i32 81, i32 84)
  %tmp_191 = icmp eq i4 %p_Result_3, 0
  br i1 %tmp_191, label %102, label %117

; <label>:102                                     ; preds = %101
  %tmp_195 = icmp eq i8 %temp_diff_src_or_typ_33, 0
  br i1 %tmp_195, label %.preheader1099.preheader, label %109

.preheader1099.preheader:                         ; preds = %102
  %int_req_num_load_4 = load i32* @int_req_num, align 4
  br label %.preheader1099

.preheader1099:                                   ; preds = %._crit_edge1211, %.preheader1099.preheader
  %i22 = phi i31 [ %i_19, %._crit_edge1211 ], [ 0, %.preheader1099.preheader ]
  %i26_cast = zext i31 %i22 to i32
  %tmp_210 = icmp slt i32 %i26_cast, %int_req_num_load_4
  %i_19 = add i31 %i22, 1
  br i1 %tmp_210, label %103, label %.loopexit1084

; <label>:103                                     ; preds = %.preheader1099
  %tmp_228 = zext i31 %i22 to i64
  %int_request_array_SR_14 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_228
  %int_request_array_SR_15 = load i8* %int_request_array_SR_14, align 16
  %tmp_229 = icmp eq i8 %int_request_array_SR_15, %temp_diff_src_or_typ_32
  br i1 %tmp_229, label %104, label %._crit_edge1211

; <label>:104                                     ; preds = %103
  %int_request_array_DE_14 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_228
  %int_request_array_DE_15 = load i16* %int_request_array_DE_14, align 4
  %tmp_248 = icmp eq i16 %int_request_array_DE_15, %temp_diff_src_or_typ_31
  br i1 %tmp_248, label %105, label %._crit_edge1211

; <label>:105                                     ; preds = %104
  %int_request_array_PK_14 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_228
  %int_request_array_PK_15 = load i1* %int_request_array_PK_14, align 1
  br i1 %int_request_array_PK_15, label %._crit_edge1211, label %106

; <label>:106                                     ; preds = %105
  %int_request_array_MS_14 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_228
  %int_request_array_MS_15 = load i32* %int_request_array_MS_14, align 4
  %tmp_279 = icmp eq i32 %int_request_array_MS_15, %temp_diff_src_or_typ_34
  br i1 %tmp_279, label %107, label %._crit_edge1211

; <label>:107                                     ; preds = %106
  %int_request_array_TA_14 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_228
  %int_request_array_TA_15 = load i8* %int_request_array_TA_14, align 8
  %tmp_288 = icmp eq i8 %int_request_array_TA_15, %temp_diff_src_or_typ_35
  br i1 %tmp_288, label %108, label %._crit_edge1211

; <label>:108                                     ; preds = %107
  %int_request_array_DA_14 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_228
  %int_request_array_DA_15 = load i4* %int_request_array_DA_14, align 1
  %tmp_298 = icmp eq i4 %int_request_array_DA_15, %temp_diff_src_or_typ_36
  br i1 %tmp_298, label %.critedge1093.loopexit, label %._crit_edge1211

._crit_edge1211:                                  ; preds = %108, %107, %106, %105, %104, %103
  br label %.preheader1099

.loopexit1084:                                    ; preds = %.preheader1099
  %tmp_230 = sext i32 %int_req_num_load_4 to i64
  %int_request_array_SR_16 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_230
  store i8 %temp_diff_src_or_typ_32, i8* %int_request_array_SR_16, align 16
  %int_request_array_PK_16 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_230
  store i1 false, i1* %int_request_array_PK_16, align 1
  %int_request_array_MS_16 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_230
  store i32 %temp_diff_src_or_typ_34, i32* %int_request_array_MS_16, align 4
  %int_request_array_TA_16 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_230
  store i8 %temp_diff_src_or_typ_35, i8* %int_request_array_TA_16, align 8
  %int_request_array_DA_16 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_230
  store i4 %temp_diff_src_or_typ_36, i4* %int_request_array_DA_16, align 1
  %int_request_array_DE_16 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_230
  store i16 %temp_diff_src_or_typ_31, i16* %int_request_array_DE_16, align 4
  %tmp_231 = add nsw i32 %int_req_num_load_4, 1
  store i32 %tmp_231, i32* @int_req_num, align 4
  br label %.critedge1093

.critedge1093.loopexit:                           ; preds = %108
  br label %.critedge1093

.critedge1093:                                    ; preds = %.critedge1093.loopexit, %.loopexit1084
  br label %116

; <label>:109                                     ; preds = %102
  %tmp_200 = icmp eq i8 %temp_diff_src_or_typ_33, 1
  br i1 %tmp_200, label %.preheader1098.preheader, label %._crit_edge1217

.preheader1098.preheader:                         ; preds = %109
  %int_clr_num_load_4 = load i32* @int_clr_num, align 4
  br label %.preheader1098

.preheader1098:                                   ; preds = %._crit_edge1218, %.preheader1098.preheader
  %i23 = phi i31 [ %i_25, %._crit_edge1218 ], [ 0, %.preheader1098.preheader ]
  %i27_cast = zext i31 %i23 to i32
  %tmp_232 = icmp slt i32 %i27_cast, %int_clr_num_load_4
  %i_25 = add i31 %i23, 1
  br i1 %tmp_232, label %110, label %.loopexit1083

; <label>:110                                     ; preds = %.preheader1098
  %tmp_249 = zext i31 %i23 to i64
  %int_clr2snd_array_SR_19 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_249
  %int_clr2snd_array_SR_20 = load i8* %int_clr2snd_array_SR_19, align 16
  %tmp_250 = icmp eq i8 %int_clr2snd_array_SR_20, %temp_diff_src_or_typ_32
  br i1 %tmp_250, label %111, label %._crit_edge1218

; <label>:111                                     ; preds = %110
  %int_clr2snd_array_DE_19 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_249
  %int_clr2snd_array_DE_20 = load i16* %int_clr2snd_array_DE_19, align 4
  %tmp_268 = icmp eq i16 %int_clr2snd_array_DE_20, %temp_diff_src_or_typ_31
  br i1 %tmp_268, label %112, label %._crit_edge1218

; <label>:112                                     ; preds = %111
  %int_clr2snd_array_PK_19 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_249
  %int_clr2snd_array_PK_20 = load i1* %int_clr2snd_array_PK_19, align 1
  br i1 %int_clr2snd_array_PK_20, label %113, label %._crit_edge1218

; <label>:113                                     ; preds = %112
  %int_clr2snd_array_MS_17 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_249
  %int_clr2snd_array_MS_18 = load i32* %int_clr2snd_array_MS_17, align 4
  %tmp_289 = icmp eq i32 %int_clr2snd_array_MS_18, %temp_diff_src_or_typ_34
  br i1 %tmp_289, label %114, label %._crit_edge1218

; <label>:114                                     ; preds = %113
  %int_clr2snd_array_TA_17 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_249
  %int_clr2snd_array_TA_18 = load i8* %int_clr2snd_array_TA_17, align 8
  %tmp_299 = icmp eq i8 %int_clr2snd_array_TA_18, %temp_diff_src_or_typ_35
  br i1 %tmp_299, label %115, label %._crit_edge1218

; <label>:115                                     ; preds = %114
  %int_clr2snd_array_DA_25 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_249
  %int_clr2snd_array_DA_26 = load i4* %int_clr2snd_array_DA_25, align 1
  %tmp_306 = icmp eq i4 %int_clr2snd_array_DA_26, %temp_diff_src_or_typ_36
  br i1 %tmp_306, label %.critedge1094.loopexit, label %._crit_edge1218

._crit_edge1218:                                  ; preds = %115, %114, %113, %112, %111, %110
  br label %.preheader1098

.loopexit1083:                                    ; preds = %.preheader1098
  %tmp_251 = sext i32 %int_clr_num_load_4 to i64
  %int_clr2snd_array_SR_21 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_251
  store i8 %temp_diff_src_or_typ_32, i8* %int_clr2snd_array_SR_21, align 16
  %int_clr2snd_array_PK_21 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_251
  store i1 true, i1* %int_clr2snd_array_PK_21, align 1
  %int_clr2snd_array_MS_19 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_251
  store i32 %temp_diff_src_or_typ_34, i32* %int_clr2snd_array_MS_19, align 4
  %int_clr2snd_array_TA_19 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_251
  store i8 %temp_diff_src_or_typ_35, i8* %int_clr2snd_array_TA_19, align 8
  %int_clr2snd_array_DA_27 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_251
  store i4 %temp_diff_src_or_typ_36, i4* %int_clr2snd_array_DA_27, align 1
  %int_clr2snd_array_DE_21 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_251
  store i16 %temp_diff_src_or_typ_31, i16* %int_clr2snd_array_DE_21, align 4
  %tmp_252 = add nsw i32 %int_clr_num_load_4, 1
  store i32 %tmp_252, i32* @int_clr_num, align 4
  br label %.critedge1094

.critedge1094.loopexit:                           ; preds = %115
  br label %.critedge1094

.critedge1094:                                    ; preds = %.critedge1094.loopexit, %.loopexit1083
  br label %._crit_edge1217

._crit_edge1217:                                  ; preds = %.critedge1094, %109
  br label %116

; <label>:116                                     ; preds = %._crit_edge1217, %.critedge1093
  br label %133

; <label>:117                                     ; preds = %101
  %tmp_196 = icmp eq i4 %p_Result_3, 1
  br i1 %tmp_196, label %118, label %._crit_edge1224

; <label>:118                                     ; preds = %117
  %tmp_201 = icmp eq i8 %temp_diff_src_or_typ_33, 0
  br i1 %tmp_201, label %.preheader1097.preheader, label %125

.preheader1097.preheader:                         ; preds = %118
  %float_req_num_load_4 = load i32* @float_req_num, align 4
  br label %.preheader1097

.preheader1097:                                   ; preds = %._crit_edge1225, %.preheader1097.preheader
  %i24 = phi i31 [ %i_26, %._crit_edge1225 ], [ 0, %.preheader1097.preheader ]
  %i28_cast = zext i31 %i24 to i32
  %tmp_233 = icmp slt i32 %i28_cast, %float_req_num_load_4
  %i_26 = add i31 %i24, 1
  br i1 %tmp_233, label %119, label %.loopexit1082

; <label>:119                                     ; preds = %.preheader1097
  %tmp_253 = zext i31 %i24 to i64
  %float_request_array_96 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_253
  %float_request_array_97 = load i8* %float_request_array_96, align 16
  %tmp_254 = icmp eq i8 %float_request_array_97, %temp_diff_src_or_typ_32
  br i1 %tmp_254, label %120, label %._crit_edge1225

; <label>:120                                     ; preds = %119
  %float_request_array_98 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_253
  %float_request_array_99 = load i16* %float_request_array_98, align 4
  %tmp_269 = icmp eq i16 %float_request_array_99, %temp_diff_src_or_typ_31
  br i1 %tmp_269, label %121, label %._crit_edge1225

; <label>:121                                     ; preds = %120
  %float_request_array_100 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_253
  %float_request_array_101 = load i1* %float_request_array_100, align 1
  br i1 %float_request_array_101, label %._crit_edge1225, label %122

; <label>:122                                     ; preds = %121
  %float_request_array_102 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_253
  %float_request_array_103 = load i32* %float_request_array_102, align 4
  %tmp_290 = icmp eq i32 %float_request_array_103, %temp_diff_src_or_typ_34
  br i1 %tmp_290, label %123, label %._crit_edge1225

; <label>:123                                     ; preds = %122
  %float_request_array_104 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_253
  %float_request_array_105 = load i8* %float_request_array_104, align 8
  %tmp_300 = icmp eq i8 %float_request_array_105, %temp_diff_src_or_typ_35
  br i1 %tmp_300, label %124, label %._crit_edge1225

; <label>:124                                     ; preds = %123
  %float_request_array_106 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_253
  %float_request_array_107 = load i4* %float_request_array_106, align 1
  %tmp_307 = icmp eq i4 %float_request_array_107, %temp_diff_src_or_typ_36
  br i1 %tmp_307, label %.critedge1095.loopexit, label %._crit_edge1225

._crit_edge1225:                                  ; preds = %124, %123, %122, %121, %120, %119
  br label %.preheader1097

.loopexit1082:                                    ; preds = %.preheader1097
  %tmp_255 = sext i32 %float_req_num_load_4 to i64
  %float_request_array_108 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_255
  store i8 %temp_diff_src_or_typ_32, i8* %float_request_array_108, align 16
  %float_request_array_109 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_255
  store i1 false, i1* %float_request_array_109, align 1
  %float_request_array_110 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_255
  store i32 %temp_diff_src_or_typ_34, i32* %float_request_array_110, align 4
  %float_request_array_111 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_255
  store i8 %temp_diff_src_or_typ_35, i8* %float_request_array_111, align 8
  %float_request_array_112 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_255
  store i4 %temp_diff_src_or_typ_36, i4* %float_request_array_112, align 1
  %float_request_array_113 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_255
  store i16 %temp_diff_src_or_typ_31, i16* %float_request_array_113, align 4
  %tmp_256 = add nsw i32 %float_req_num_load_4, 1
  store i32 %tmp_256, i32* @float_req_num, align 4
  br label %.critedge1095

.critedge1095.loopexit:                           ; preds = %124
  br label %.critedge1095

.critedge1095:                                    ; preds = %.critedge1095.loopexit, %.loopexit1082
  br label %132

; <label>:125                                     ; preds = %118
  %tmp_211 = icmp eq i8 %temp_diff_src_or_typ_33, 1
  br i1 %tmp_211, label %.preheader.preheader, label %._crit_edge1231

.preheader.preheader:                             ; preds = %125
  %float_clr_num_load_4 = load i32* @float_clr_num, align 4
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge1232, %.preheader.preheader
  %i25 = phi i31 [ %i_28, %._crit_edge1232 ], [ 0, %.preheader.preheader ]
  %i29_cast = zext i31 %i25 to i32
  %tmp_257 = icmp slt i32 %i29_cast, %float_clr_num_load_4
  %i_28 = add i31 %i25, 1
  br i1 %tmp_257, label %126, label %.loopexit

; <label>:126                                     ; preds = %.preheader
  %tmp_270 = zext i31 %i25 to i64
  %float_clr2snd_array_127 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_270
  %float_clr2snd_array_128 = load i8* %float_clr2snd_array_127, align 16
  %tmp_271 = icmp eq i8 %float_clr2snd_array_128, %temp_diff_src_or_typ_32
  br i1 %tmp_271, label %127, label %._crit_edge1232

; <label>:127                                     ; preds = %126
  %float_clr2snd_array_129 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_270
  %float_clr2snd_array_130 = load i16* %float_clr2snd_array_129, align 4
  %tmp_280 = icmp eq i16 %float_clr2snd_array_130, %temp_diff_src_or_typ_31
  br i1 %tmp_280, label %128, label %._crit_edge1232

; <label>:128                                     ; preds = %127
  %float_clr2snd_array_131 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_270
  %float_clr2snd_array_132 = load i1* %float_clr2snd_array_131, align 1
  br i1 %float_clr2snd_array_132, label %129, label %._crit_edge1232

; <label>:129                                     ; preds = %128
  %float_clr2snd_array_133 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_270
  %float_clr2snd_array_134 = load i32* %float_clr2snd_array_133, align 4
  %tmp_301 = icmp eq i32 %float_clr2snd_array_134, %temp_diff_src_or_typ_34
  br i1 %tmp_301, label %130, label %._crit_edge1232

; <label>:130                                     ; preds = %129
  %float_clr2snd_array_135 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_270
  %float_clr2snd_array_136 = load i8* %float_clr2snd_array_135, align 8
  %tmp_308 = icmp eq i8 %float_clr2snd_array_136, %temp_diff_src_or_typ_35
  br i1 %tmp_308, label %131, label %._crit_edge1232

; <label>:131                                     ; preds = %130
  %float_clr2snd_array_137 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_270
  %float_clr2snd_array_138 = load i4* %float_clr2snd_array_137, align 1
  %tmp_310 = icmp eq i4 %float_clr2snd_array_138, %temp_diff_src_or_typ_36
  br i1 %tmp_310, label %.critedge1096.loopexit, label %._crit_edge1232

._crit_edge1232:                                  ; preds = %131, %130, %129, %128, %127, %126
  br label %.preheader

.loopexit:                                        ; preds = %.preheader
  %tmp_272 = sext i32 %float_clr_num_load_4 to i64
  %float_clr2snd_array_139 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_272
  store i8 %temp_diff_src_or_typ_32, i8* %float_clr2snd_array_139, align 16
  %float_clr2snd_array_140 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_272
  store i1 true, i1* %float_clr2snd_array_140, align 1
  %float_clr2snd_array_141 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_272
  store i32 %temp_diff_src_or_typ_34, i32* %float_clr2snd_array_141, align 4
  %float_clr2snd_array_142 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_272
  store i8 %temp_diff_src_or_typ_35, i8* %float_clr2snd_array_142, align 8
  %float_clr2snd_array_143 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_272
  store i4 %temp_diff_src_or_typ_36, i4* %float_clr2snd_array_143, align 1
  %float_clr2snd_array_144 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_272
  store i16 %temp_diff_src_or_typ_31, i16* %float_clr2snd_array_144, align 4
  %tmp_273 = add nsw i32 %float_clr_num_load_4, 1
  store i32 %tmp_273, i32* @float_clr_num, align 4
  br label %.critedge1096

.critedge1096.loopexit:                           ; preds = %131
  br label %.critedge1096

.critedge1096:                                    ; preds = %.critedge1096.loopexit, %.loopexit
  br label %._crit_edge1231

._crit_edge1231:                                  ; preds = %.critedge1096, %125
  br label %132

; <label>:132                                     ; preds = %._crit_edge1231, %.critedge1095
  br label %._crit_edge1224

._crit_edge1224:                                  ; preds = %132, %117
  br label %133

; <label>:133                                     ; preds = %._crit_edge1224, %116
  br label %._crit_edge1210

._crit_edge1210:                                  ; preds = %133, %._crit_edge1208
  br label %.preheader1100

.loopexit1109.loopexit:                           ; preds = %45
  br label %.loopexit1109

.loopexit1109.loopexit11:                         ; preds = %37
  br label %.loopexit1109

.loopexit1109.loopexit12:                         ; preds = %27
  br label %.loopexit1109

.loopexit1109.loopexit13:                         ; preds = %19
  br label %.loopexit1109

.loopexit1109.loopexit14:                         ; preds = %4
  br label %.loopexit1109

.loopexit1109:                                    ; preds = %.loopexit1109.loopexit14, %.loopexit1109.loopexit13, %.loopexit1109.loopexit12, %.loopexit1109.loopexit11, %.loopexit1109.loopexit, %100, %49, %48, %._crit_edge1142, %47, %29, %11, %._crit_edge1135, %codeRepl
  %time_V_2_flag_2 = phi i1 [ false, %100 ], [ true, %11 ], [ false, %29 ], [ false, %47 ], [ true, %49 ], [ false, %codeRepl ], [ true, %._crit_edge1135 ], [ false, %._crit_edge1142 ], [ true, %48 ], [ false, %.loopexit1109.loopexit ], [ false, %.loopexit1109.loopexit11 ], [ false, %.loopexit1109.loopexit12 ], [ false, %.loopexit1109.loopexit13 ], [ true, %.loopexit1109.loopexit14 ]
  %time_V_2_new_2 = phi i64 [ undef, %100 ], [ 0, %11 ], [ undef, %29 ], [ undef, %47 ], [ 0, %49 ], [ undef, %codeRepl ], [ 0, %._crit_edge1135 ], [ undef, %._crit_edge1142 ], [ %tmp_168, %48 ], [ undef, %.loopexit1109.loopexit ], [ undef, %.loopexit1109.loopexit11 ], [ undef, %.loopexit1109.loopexit12 ], [ undef, %.loopexit1109.loopexit13 ], [ 0, %.loopexit1109.loopexit14 ]
  br i1 %time_V_2_flag_2, label %mergeST, label %.loopexit1109.new

mergeST:                                          ; preds = %.loopexit1109
  store i64 %time_V_2_new_2, i64* @time_V_2, align 8
  br label %.loopexit1109.new

.loopexit1109.new:                                ; preds = %mergeST, %.loopexit1109
  ret void
}

define internal fastcc void @MPI_Recv([1000 x float]* nocapture %buf_r) {
codeRepl:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str228, i32 0, i32 0, [1 x i8]* @p_str229, [1 x i8]* @p_str230, [1 x i8]* @p_str231, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str232, [1 x i8]* @p_str233)
  %empty_193 = call i32 (...)* @_ssdm_op_SpecInterface(i121* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str234, i32 0, i32 0, [1 x i8]* @p_str235, [1 x i8]* @p_str236, [1 x i8]* @p_str237, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str238, [1 x i8]* @p_str239)
  %state_2_load = load i2* @state_2, align 1
  %pkt_out_dest_V = load i8* @envlp_SRC_V, align 1
  %clr2snd_SRC_V = load i8* @envlp_DEST_V, align 1
  switch i2 %state_2_load, label %.loopexit [
    i2 0, label %.preheader950.preheader
    i2 1, label %11
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
  %j = phi i31 [ %i_32, %._crit_edge991 ], [ 0, %.preheader950.preheader ]
  %j_cast = zext i31 %j to i32
  %tmp_s = icmp slt i32 %j_cast, %float_req_num_load
  %i_32 = add i31 %j, 1
  br i1 %tmp_s, label %0, label %6

; <label>:0                                       ; preds = %.preheader950
  %tmp_320 = zext i31 %j to i64
  %float_request_array_s = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_320
  %float_request_array_114 = load i1* %float_request_array_s, align 1
  br i1 %float_request_array_114, label %._crit_edge991, label %1

; <label>:1                                       ; preds = %0
  %float_request_array_115 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_320
  %float_request_array_116 = load i16* %float_request_array_115, align 4
  %tmp_325 = icmp eq i16 %float_request_array_116, 0
  br i1 %tmp_325, label %2, label %._crit_edge991

; <label>:2                                       ; preds = %1
  %float_request_array_117 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_320
  %float_request_array_118 = load i8* %float_request_array_117, align 16
  %tmp_326 = icmp eq i8 %float_request_array_118, 1
  br i1 %tmp_326, label %3, label %._crit_edge991

; <label>:3                                       ; preds = %2
  store i8 1, i8* @envlp_SRC_V, align 4
  %float_request_array_119 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_320
  %float_request_array_120 = load i32* %float_request_array_119, align 4
  store i32 %float_request_array_120, i32* @envlp_MSG_SIZE_V, align 4
  store i8 0, i8* @envlp_DEST_V, align 1
  store i2 1, i2* @state_2, align 1
  %tmp_331 = add nsw i32 %float_req_num_load, -1
  store i32 %tmp_331, i32* @float_req_num, align 4
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j6 = phi i32 [ %j_cast, %3 ], [ %j_4, %5 ]
  %tmp_333 = icmp slt i32 %j6, %tmp_331
  br i1 %tmp_333, label %5, label %.loopexit.loopexit47

; <label>:5                                       ; preds = %4
  %tmp_336 = sext i32 %j6 to i64
  %j_4 = add nsw i32 %j6, 1
  %tmp_337 = sext i32 %j_4 to i64
  %float_request_array_121 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_337
  %float_request_array_122 = load i8* %float_request_array_121, align 16
  %float_request_array_123 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_336
  store i8 %float_request_array_122, i8* %float_request_array_123, align 16
  %float_request_array_124 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_337
  %float_request_array_125 = load i1* %float_request_array_124, align 1
  %float_request_array_126 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_336
  store i1 %float_request_array_125, i1* %float_request_array_126, align 1
  %float_request_array_127 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_337
  %float_request_array_128 = load i32* %float_request_array_127, align 4
  %float_request_array_129 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_336
  store i32 %float_request_array_128, i32* %float_request_array_129, align 4
  %float_request_array_130 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_337
  %float_request_array_131 = load i8* %float_request_array_130, align 8
  %float_request_array_132 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_336
  store i8 %float_request_array_131, i8* %float_request_array_132, align 8
  %float_request_array_133 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_337
  %float_request_array_134 = load i4* %float_request_array_133, align 1
  %float_request_array_135 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_336
  store i4 %float_request_array_134, i4* %float_request_array_135, align 1
  %float_request_array_136 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_337
  %float_request_array_137 = load i4* %float_request_array_136, align 2
  %float_request_array_138 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_336
  store i4 %float_request_array_137, i4* %float_request_array_138, align 2
  %float_request_array_139 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_337
  %float_request_array_140 = load i16* %float_request_array_139, align 4
  %float_request_array_141 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_336
  store i16 %float_request_array_140, i16* %float_request_array_141, align 4
  br label %4

._crit_edge991:                                   ; preds = %2, %1, %0
  br label %.preheader950

; <label>:6                                       ; preds = %.preheader950
  %tmp213 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_pkt_dest_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp213, i32 64, i32 71)
  %tmp_321 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp213, i32 72)
  br label %7

; <label>:7                                       ; preds = %8, %6
  %last_V_5 = phi i1 [ %tmp_321, %6 ], [ %tmp_386, %8 ]
  br i1 %last_V_5, label %9, label %8

; <label>:8                                       ; preds = %7
  %tmp_1 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %tmp_386 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_1, i32 72)
  br label %7

; <label>:9                                       ; preds = %7
  %tmp_385 = trunc i121 %tmp213 to i8
  %envlp_PKT_TYPE_V_wri = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp213, i32 8, i32 15)
  %envlp_MSG_SIZE_V_wri = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp213, i32 16, i32 47)
  store i8 %tmp_385, i8* @envlp_SRC_V, align 1
  store i32 %envlp_MSG_SIZE_V_wri, i32* @envlp_MSG_SIZE_V, align 4
  store i8 %recv_pkt_dest_V, i8* @envlp_DEST_V, align 1
  %tmp_5 = or i8 %envlp_PKT_TYPE_V_wri, %recv_pkt_dest_V
  %tmp_11 = icmp eq i8 %tmp_5, 0
  %tmp_327 = icmp eq i8 %tmp_385, 1
  %or_cond1 = and i1 %tmp_11, %tmp_327
  br i1 %or_cond1, label %10, label %._crit_edge994

; <label>:10                                      ; preds = %9
  store i2 1, i2* @state_2, align 1
  br label %._crit_edge994

._crit_edge994:                                   ; preds = %10, %9
  br label %.loopexit

; <label>:11                                      ; preds = %codeRepl
  %clr2snd_MSG_SIZE_V = load i32* @envlp_MSG_SIZE_V, align 4
  %clr2snd_error_load = load i1* @clr2snd_error, align 1
  br i1 %clr2snd_error_load, label %12, label %13

; <label>:12                                      ; preds = %11
  store i1 false, i1* @clr2snd_error, align 1
  br label %14

; <label>:13                                      ; preds = %11
  %tmp_2 = call i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i8.i32.i8.i8(i49 513, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i32 %clr2snd_MSG_SIZE_V, i8 1, i8 %clr2snd_SRC_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_2)
  br label %14

; <label>:14                                      ; preds = %13, %12
  store i2 -2, i2* @state_2, align 1
  store i64 0, i64* @time_V, align 8
  br label %.loopexit

.preheader290:                                    ; preds = %.preheader290.preheader, %.loopexit934
  %i3 = phi i32 [ %i_37, %.loopexit934 ], [ 1, %.preheader290.preheader ]
  %last_V_load = load i1* %last_V
  %tmp_319 = icmp sgt i32 %i3, 501
  br i1 %tmp_319, label %.preheader.preheader, label %15

.preheader.preheader:                             ; preds = %.preheader290
  br label %.preheader

; <label>:15                                      ; preds = %.preheader290
  %tmp_322 = shl i32 %i3, 1
  %tmp_323 = add i32 -2, %tmp_322
  %tmp_324 = icmp slt i32 %tmp_323, 1000
  br i1 %tmp_324, label %20, label %16

; <label>:16                                      ; preds = %15
  store i2 0, i2* @state_2, align 1
  store i64 0, i64* @time_V, align 8
  br label %17

; <label>:17                                      ; preds = %18, %16
  %p_0610_1 = phi i1 [ %last_V_load, %16 ], [ %last_V_7, %18 ]
  br i1 %p_0610_1, label %19, label %18

; <label>:18                                      ; preds = %17
  %tmp_3 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %last_V_7 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_3, i32 72)
  br label %17

; <label>:19                                      ; preds = %17
  %error_MSG_SIZE_V_loa = load i32* %error_MSG_SIZE_V
  %tmp_4 = call i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i8.i32.i8.i8(i49 513, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i32 %error_MSG_SIZE_V_loa, i8 5, i8 %clr2snd_SRC_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_4)
  br label %.loopexit

; <label>:20                                      ; preds = %15
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i121P(i121* @stream_in_V, i32 1)
  br i1 %tmp, label %21, label %66

; <label>:21                                      ; preds = %20
  %tmp_5244 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %recv_data_data_V = trunc i121 %tmp_5244 to i64
  %recv_data_dest_V = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_5244, i32 64, i32 71)
  %recv_data_last_V = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_5244, i32 72)
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_5244, i32 85, i32 88)
  %tmp_328 = icmp eq i4 %p_Result_s, 1
  br i1 %tmp_328, label %22, label %._crit_edge997

; <label>:22                                      ; preds = %21
  store i64 0, i64* @time_V, align 8
  br label %._crit_edge997

._crit_edge997:                                   ; preds = %22, %21
  %error_MSG_SIZE_V_loa_1 = load i32* %error_MSG_SIZE_V
  %p_Result_4 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_5244, i32 89, i32 120)
  %p_Result_24_cast = zext i32 %p_Result_4 to i33
  %tmp_360_cast = sext i32 %error_MSG_SIZE_V_loa_1 to i33
  %tmp_332 = icmp ne i33 %p_Result_24_cast, %tmp_360_cast
  %demorgan = and i1 %tmp_328, %tmp_332
  br i1 %demorgan, label %23, label %._crit_edge998

; <label>:23                                      ; preds = %._crit_edge997
  %p_1_load = load i1* %p_1
  br i1 %p_1_load, label %._crit_edge1000, label %24

; <label>:24                                      ; preds = %23
  %error_MSG_SIZE_V_loa_2 = load i32* %error_MSG_SIZE_V
  %tmp_6 = call i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i8.i32.i8.i8(i49 513, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i32 %error_MSG_SIZE_V_loa_2, i8 4, i8 %clr2snd_SRC_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_6)
  store i1 true, i1* %p_1
  br label %._crit_edge1000

._crit_edge1000:                                  ; preds = %24, %23
  %i = add nsw i32 %i3, -1
  br label %.loopexit934

._crit_edge998:                                   ; preds = %._crit_edge997
  %tmp_334 = srem i32 %tmp_322, 372
  %tmp_391 = trunc i32 %tmp_334 to i10
  %tmp_335 = icmp eq i10 %tmp_391, 0
  br i1 %tmp_335, label %.preheader935.preheader, label %.loopexit936_ifconv

.preheader935.preheader:                          ; preds = %._crit_edge998
  br label %.preheader935

.preheader935:                                    ; preds = %.preheader935.preheader, %25
  %p_0610_2 = phi i1 [ %last_V_9, %25 ], [ %recv_data_last_V, %.preheader935.preheader ]
  br i1 %p_0610_2, label %.loopexit936_ifconv.loopexit, label %25

; <label>:25                                      ; preds = %.preheader935
  %tmp_7 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %last_V_9 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_7, i32 72)
  br label %.preheader935

.loopexit936_ifconv.loopexit:                     ; preds = %.preheader935
  br label %.loopexit936_ifconv

.loopexit936_ifconv:                              ; preds = %.loopexit936_ifconv.loopexit, %._crit_edge998
  %p_0610_3 = phi i1 [ %recv_data_last_V, %._crit_edge998 ], [ true, %.loopexit936_ifconv.loopexit ]
  %error_MSG_SIZE_V_loa_3 = load i32* %error_MSG_SIZE_V
  %seq_num = add nsw i32 %error_MSG_SIZE_V_loa_3, 1
  %p_s = select i1 %tmp_328, i32 %seq_num, i32 %error_MSG_SIZE_V_loa_3
  %seq_num_2 = select i1 %p_0610_3, i32 %p_s, i32 %error_MSG_SIZE_V_loa_3
  br i1 %tmp_328, label %.preheader933.preheader, label %28

.preheader933.preheader:                          ; preds = %.loopexit936_ifconv
  br label %.preheader933

.preheader933:                                    ; preds = %.preheader933.preheader, %._crit_edge1001
  %j7 = phi i2 [ %j_5, %._crit_edge1001 ], [ 0, %.preheader933.preheader ]
  %j7_cast2 = zext i2 %j7 to i32
  %exitcond = icmp eq i2 %j7, -2
  %empty_194 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_5 = add i2 %j7, 1
  br i1 %exitcond, label %.loopexit934.loopexit, label %26

; <label>:26                                      ; preds = %.preheader933
  %tmp_339 = add i32 %j7_cast2, %tmp_323
  %tmp_340 = icmp slt i32 %tmp_339, 1000
  br i1 %tmp_340, label %27, label %._crit_edge1001

; <label>:27                                      ; preds = %26
  %tmp_393 = trunc i2 %j7 to i1
  %Lo_assign = call i6 @_ssdm_op_BitConcatenate.i6.i1.i5(i1 %tmp_393, i5 0)
  %Hi_assign = or i6 %Lo_assign, 31
  %tmp_394 = icmp ugt i6 %Lo_assign, %Hi_assign
  %tmp_395 = zext i6 %Lo_assign to i7
  %tmp_396 = zext i6 %Hi_assign to i7
  %tmp_397 = call i64 @_ssdm_op_PartSelect.i64.i121.i32.i32(i121 %tmp_5244, i32 63, i32 0)
  %tmp_398 = sub i7 %tmp_395, %tmp_396
  %tmp_399 = xor i7 %tmp_395, 63
  %tmp_400 = sub i7 %tmp_396, %tmp_395
  %tmp_401 = select i1 %tmp_394, i7 %tmp_398, i7 %tmp_400
  %tmp_402 = select i1 %tmp_394, i64 %tmp_397, i64 %recv_data_data_V
  %tmp_403 = select i1 %tmp_394, i7 %tmp_399, i7 %tmp_395
  %tmp_404 = sub i7 63, %tmp_401
  %tmp_405 = zext i7 %tmp_403 to i64
  %tmp_406 = zext i7 %tmp_404 to i64
  %tmp_407 = lshr i64 %tmp_402, %tmp_405
  %tmp_408 = lshr i64 -1, %tmp_406
  %p_Result_s_195 = and i64 %tmp_407, %tmp_408
  %temp = trunc i64 %p_Result_s_195 to i32
  %tmp_341 = bitcast i32 %temp to float
  %tmp_342 = sext i32 %tmp_339 to i64
  %buf_addr = getelementptr [1000 x float]* %buf_r, i64 0, i64 %tmp_342
  store float %tmp_341, float* %buf_addr, align 4
  br label %._crit_edge1001

._crit_edge1001:                                  ; preds = %27, %26
  br label %.preheader933

; <label>:28                                      ; preds = %.loopexit936_ifconv
  %tmp_338 = icmp eq i4 %p_Result_s, 0
  br i1 %tmp_338, label %.preheader932.preheader, label %.loopexit934.pre39

.preheader932.preheader:                          ; preds = %28
  br label %.preheader932

.preheader932:                                    ; preds = %.preheader932.preheader, %29
  %p_0610_4 = phi i1 [ %last_V_10, %29 ], [ %p_0610_3, %.preheader932.preheader ]
  br i1 %p_0610_4, label %30, label %29

; <label>:29                                      ; preds = %.preheader932
  %tmp_8 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %last_V_10 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_8, i32 72)
  br label %.preheader932

; <label>:30                                      ; preds = %.preheader932
  %p_Result_5 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_5244, i32 81, i32 84)
  %tmp_343 = icmp eq i4 %p_Result_5, 0
  br i1 %tmp_343, label %31, label %48

; <label>:31                                      ; preds = %30
  %temp_diff_src_or_typ = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_37 = trunc i121 %tmp_5244 to i8
  %temp_diff_src_or_typ_38 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_5244, i32 8, i32 15)
  %temp_diff_src_or_typ_39 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_5244, i32 16, i32 47)
  %temp_diff_src_or_typ_40 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_5244, i32 48, i32 55)
  %temp_diff_src_or_typ_41 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_5244, i32 60, i32 63)
  %tmp_344 = icmp eq i8 %temp_diff_src_or_typ_38, 0
  br i1 %tmp_344, label %.preheader930.preheader, label %39

.preheader930.preheader:                          ; preds = %31
  %int_req_num_load = load i32* @int_req_num, align 4
  br label %.preheader930

.preheader930:                                    ; preds = %._crit_edge1002, %.preheader930.preheader
  %i8 = phi i31 [ %i_36, %._crit_edge1002 ], [ 0, %.preheader930.preheader ]
  %i8_cast = zext i31 %i8 to i32
  %tmp_348 = icmp slt i32 %i8_cast, %int_req_num_load
  %i_36 = add i31 %i8, 1
  br i1 %tmp_348, label %32, label %38

; <label>:32                                      ; preds = %.preheader930
  %tmp_350 = zext i31 %i8 to i64
  %int_request_array_SR = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_350
  %int_request_array_SR_17 = load i8* %int_request_array_SR, align 16
  %tmp_351 = icmp eq i8 %int_request_array_SR_17, %temp_diff_src_or_typ_37
  br i1 %tmp_351, label %33, label %._crit_edge1002

; <label>:33                                      ; preds = %32
  %int_request_array_DE = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_350
  %int_request_array_DE_17 = load i16* %int_request_array_DE, align 4
  %tmp_356 = icmp eq i16 %int_request_array_DE_17, %temp_diff_src_or_typ
  br i1 %tmp_356, label %34, label %._crit_edge1002

; <label>:34                                      ; preds = %33
  %int_request_array_PK = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_350
  %int_request_array_PK_17 = load i1* %int_request_array_PK, align 1
  br i1 %int_request_array_PK_17, label %._crit_edge1002, label %35

; <label>:35                                      ; preds = %34
  %int_request_array_MS = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_350
  %int_request_array_MS_17 = load i32* %int_request_array_MS, align 4
  %tmp_372 = icmp eq i32 %int_request_array_MS_17, %temp_diff_src_or_typ_39
  br i1 %tmp_372, label %36, label %._crit_edge1002

; <label>:36                                      ; preds = %35
  %int_request_array_TA = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_350
  %int_request_array_TA_17 = load i8* %int_request_array_TA, align 8
  %tmp_374 = icmp eq i8 %int_request_array_TA_17, %temp_diff_src_or_typ_40
  br i1 %tmp_374, label %37, label %._crit_edge1002

; <label>:37                                      ; preds = %36
  %int_request_array_DA = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_350
  %int_request_array_DA_17 = load i4* %int_request_array_DA, align 1
  %tmp_377 = icmp eq i4 %int_request_array_DA_17, %temp_diff_src_or_typ_41
  br i1 %tmp_377, label %.loopexit.loopexit46, label %._crit_edge1002

._crit_edge1002:                                  ; preds = %37, %36, %35, %34, %33, %32
  br label %.preheader930

; <label>:38                                      ; preds = %.preheader930
  %tmp_352 = sext i32 %int_req_num_load to i64
  %int_request_array_SR_18 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_352
  store i8 %temp_diff_src_or_typ_37, i8* %int_request_array_SR_18, align 16
  %int_request_array_PK_18 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_352
  store i1 false, i1* %int_request_array_PK_18, align 1
  %int_request_array_MS_18 = getelementptr [512 x i32]* @int_request_array_MS, i64 0, i64 %tmp_352
  store i32 %temp_diff_src_or_typ_39, i32* %int_request_array_MS_18, align 4
  %int_request_array_TA_18 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_352
  store i8 %temp_diff_src_or_typ_40, i8* %int_request_array_TA_18, align 8
  %int_request_array_DA_18 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_352
  store i4 %temp_diff_src_or_typ_41, i4* %int_request_array_DA_18, align 1
  %int_request_array_DE_18 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_352
  store i16 %temp_diff_src_or_typ, i16* %int_request_array_DE_18, align 4
  %tmp_353 = add nsw i32 %int_req_num_load, 1
  store i32 %tmp_353, i32* @int_req_num, align 4
  br label %47

; <label>:39                                      ; preds = %31
  %tmp_346 = icmp eq i8 %temp_diff_src_or_typ_38, 1
  br i1 %tmp_346, label %.preheader928.preheader, label %._crit_edge1008

.preheader928.preheader:                          ; preds = %39
  %int_clr_num_load = load i32* @int_clr_num, align 4
  br label %.preheader928

.preheader928:                                    ; preds = %._crit_edge1009, %.preheader928.preheader
  %i9 = phi i31 [ %i_29, %._crit_edge1009 ], [ 0, %.preheader928.preheader ]
  %i9_cast = zext i31 %i9 to i32
  %tmp_354 = icmp slt i32 %i9_cast, %int_clr_num_load
  %i_29 = add i31 %i9, 1
  br i1 %tmp_354, label %40, label %46

; <label>:40                                      ; preds = %.preheader928
  %tmp_357 = zext i31 %i9 to i64
  %int_clr2snd_array_SR = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_357
  %int_clr2snd_array_SR_22 = load i8* %int_clr2snd_array_SR, align 16
  %tmp_358 = icmp eq i8 %int_clr2snd_array_SR_22, %temp_diff_src_or_typ_37
  br i1 %tmp_358, label %41, label %._crit_edge1009

; <label>:41                                      ; preds = %40
  %int_clr2snd_array_DE = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_357
  %int_clr2snd_array_DE_22 = load i16* %int_clr2snd_array_DE, align 4
  %tmp_366 = icmp eq i16 %int_clr2snd_array_DE_22, %temp_diff_src_or_typ
  br i1 %tmp_366, label %42, label %._crit_edge1009

; <label>:42                                      ; preds = %41
  %int_clr2snd_array_PK = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_357
  %int_clr2snd_array_PK_22 = load i1* %int_clr2snd_array_PK, align 1
  br i1 %int_clr2snd_array_PK_22, label %43, label %._crit_edge1009

; <label>:43                                      ; preds = %42
  %int_clr2snd_array_MS = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_357
  %int_clr2snd_array_MS_20 = load i32* %int_clr2snd_array_MS, align 4
  %tmp_375 = icmp eq i32 %int_clr2snd_array_MS_20, %temp_diff_src_or_typ_39
  br i1 %tmp_375, label %44, label %._crit_edge1009

; <label>:44                                      ; preds = %43
  %int_clr2snd_array_TA = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_357
  %int_clr2snd_array_TA_20 = load i8* %int_clr2snd_array_TA, align 8
  %tmp_378 = icmp eq i8 %int_clr2snd_array_TA_20, %temp_diff_src_or_typ_40
  br i1 %tmp_378, label %45, label %._crit_edge1009

; <label>:45                                      ; preds = %44
  %int_clr2snd_array_DA = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_357
  %int_clr2snd_array_DA_28 = load i4* %int_clr2snd_array_DA, align 1
  %tmp_381 = icmp eq i4 %int_clr2snd_array_DA_28, %temp_diff_src_or_typ_41
  br i1 %tmp_381, label %.loopexit.loopexit45, label %._crit_edge1009

._crit_edge1009:                                  ; preds = %45, %44, %43, %42, %41, %40
  br label %.preheader928

; <label>:46                                      ; preds = %.preheader928
  %tmp_359 = sext i32 %int_clr_num_load to i64
  %int_clr2snd_array_SR_23 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_359
  store i8 %temp_diff_src_or_typ_37, i8* %int_clr2snd_array_SR_23, align 16
  %int_clr2snd_array_PK_23 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_359
  store i1 true, i1* %int_clr2snd_array_PK_23, align 1
  %int_clr2snd_array_MS_21 = getelementptr [512 x i32]* @int_clr2snd_array_MS, i64 0, i64 %tmp_359
  store i32 %temp_diff_src_or_typ_39, i32* %int_clr2snd_array_MS_21, align 4
  %int_clr2snd_array_TA_21 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_359
  store i8 %temp_diff_src_or_typ_40, i8* %int_clr2snd_array_TA_21, align 8
  %int_clr2snd_array_DA_29 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_359
  store i4 %temp_diff_src_or_typ_41, i4* %int_clr2snd_array_DA_29, align 1
  %int_clr2snd_array_DE_23 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_359
  store i16 %temp_diff_src_or_typ, i16* %int_clr2snd_array_DE_23, align 4
  %tmp_360 = add nsw i32 %int_clr_num_load, 1
  store i32 %tmp_360, i32* @int_clr_num, align 4
  br label %._crit_edge1008

._crit_edge1008:                                  ; preds = %46, %39
  br label %47

; <label>:47                                      ; preds = %._crit_edge1008, %38
  %i_34 = add nsw i32 %i3, -1
  store i1 false, i1* %p_1
  store i32 %seq_num_2, i32* %error_MSG_SIZE_V
  store i1 true, i1* %last_V
  br label %.loopexit934

; <label>:48                                      ; preds = %30
  %tmp_345 = icmp eq i4 %p_Result_5, 1
  br i1 %tmp_345, label %49, label %.loopexit934.pre

; <label>:49                                      ; preds = %48
  %temp_diff_src_or_typ_42 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_43 = trunc i121 %tmp_5244 to i8
  %temp_diff_src_or_typ_44 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_5244, i32 8, i32 15)
  %temp_diff_src_or_typ_45 = call i32 @_ssdm_op_PartSelect.i32.i121.i32.i32(i121 %tmp_5244, i32 16, i32 47)
  %temp_diff_src_or_typ_46 = call i8 @_ssdm_op_PartSelect.i8.i121.i32.i32(i121 %tmp_5244, i32 48, i32 55)
  %temp_diff_src_or_typ_47 = call i4 @_ssdm_op_PartSelect.i4.i121.i32.i32(i121 %tmp_5244, i32 60, i32 63)
  %tmp_347 = icmp eq i8 %temp_diff_src_or_typ_44, 0
  br i1 %tmp_347, label %.preheader926.preheader, label %57

.preheader926.preheader:                          ; preds = %49
  %float_req_num_load_5 = load i32* @float_req_num, align 4
  br label %.preheader926

.preheader926:                                    ; preds = %._crit_edge1016, %.preheader926.preheader
  %i11 = phi i31 [ %i_30, %._crit_edge1016 ], [ 0, %.preheader926.preheader ]
  %i11_cast = zext i31 %i11 to i32
  %tmp_355 = icmp slt i32 %i11_cast, %float_req_num_load_5
  %i_30 = add i31 %i11, 1
  br i1 %tmp_355, label %50, label %56

; <label>:50                                      ; preds = %.preheader926
  %tmp_361 = zext i31 %i11 to i64
  %float_request_array_142 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_361
  %float_request_array_143 = load i8* %float_request_array_142, align 16
  %tmp_362 = icmp eq i8 %float_request_array_143, %temp_diff_src_or_typ_43
  br i1 %tmp_362, label %51, label %._crit_edge1016

; <label>:51                                      ; preds = %50
  %float_request_array_144 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_361
  %float_request_array_145 = load i16* %float_request_array_144, align 4
  %tmp_367 = icmp eq i16 %float_request_array_145, %temp_diff_src_or_typ_42
  br i1 %tmp_367, label %52, label %._crit_edge1016

; <label>:52                                      ; preds = %51
  %float_request_array_146 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_361
  %float_request_array_147 = load i1* %float_request_array_146, align 1
  br i1 %float_request_array_147, label %._crit_edge1016, label %53

; <label>:53                                      ; preds = %52
  %float_request_array_148 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_361
  %float_request_array_149 = load i32* %float_request_array_148, align 4
  %tmp_376 = icmp eq i32 %float_request_array_149, %temp_diff_src_or_typ_45
  br i1 %tmp_376, label %54, label %._crit_edge1016

; <label>:54                                      ; preds = %53
  %float_request_array_150 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_361
  %float_request_array_151 = load i8* %float_request_array_150, align 8
  %tmp_379 = icmp eq i8 %float_request_array_151, %temp_diff_src_or_typ_46
  br i1 %tmp_379, label %55, label %._crit_edge1016

; <label>:55                                      ; preds = %54
  %float_request_array_152 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_361
  %float_request_array_153 = load i4* %float_request_array_152, align 1
  %tmp_382 = icmp eq i4 %float_request_array_153, %temp_diff_src_or_typ_47
  br i1 %tmp_382, label %.loopexit.loopexit44, label %._crit_edge1016

._crit_edge1016:                                  ; preds = %55, %54, %53, %52, %51, %50
  br label %.preheader926

; <label>:56                                      ; preds = %.preheader926
  %tmp_363 = sext i32 %float_req_num_load_5 to i64
  %float_request_array_154 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_363
  store i8 %temp_diff_src_or_typ_43, i8* %float_request_array_154, align 16
  %float_request_array_155 = getelementptr [512 x i1]* @float_request_array_4, i64 0, i64 %tmp_363
  store i1 false, i1* %float_request_array_155, align 1
  %float_request_array_156 = getelementptr [512 x i32]* @float_request_array_3, i64 0, i64 %tmp_363
  store i32 %temp_diff_src_or_typ_45, i32* %float_request_array_156, align 4
  %float_request_array_157 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_363
  store i8 %temp_diff_src_or_typ_46, i8* %float_request_array_157, align 8
  %float_request_array_158 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_363
  store i4 %temp_diff_src_or_typ_47, i4* %float_request_array_158, align 1
  %float_request_array_159 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_363
  store i16 %temp_diff_src_or_typ_42, i16* %float_request_array_159, align 4
  %tmp_364 = add nsw i32 %float_req_num_load_5, 1
  store i32 %tmp_364, i32* @float_req_num, align 4
  br label %65

; <label>:57                                      ; preds = %49
  %tmp_349 = icmp eq i8 %temp_diff_src_or_typ_44, 1
  br i1 %tmp_349, label %.preheader925.preheader, label %._crit_edge1022

.preheader925.preheader:                          ; preds = %57
  %float_clr_num_load = load i32* @float_clr_num, align 4
  br label %.preheader925

.preheader925:                                    ; preds = %._crit_edge1023, %.preheader925.preheader
  %i12 = phi i31 [ %i_31, %._crit_edge1023 ], [ 0, %.preheader925.preheader ]
  %i12_cast = zext i31 %i12 to i32
  %tmp_365 = icmp slt i32 %i12_cast, %float_clr_num_load
  %i_31 = add i31 %i12, 1
  br i1 %tmp_365, label %58, label %64

; <label>:58                                      ; preds = %.preheader925
  %tmp_368 = zext i31 %i12 to i64
  %float_clr2snd_array_s = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_368
  %float_clr2snd_array_145 = load i8* %float_clr2snd_array_s, align 16
  %tmp_369 = icmp eq i8 %float_clr2snd_array_145, %temp_diff_src_or_typ_43
  br i1 %tmp_369, label %59, label %._crit_edge1023

; <label>:59                                      ; preds = %58
  %float_clr2snd_array_146 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_368
  %float_clr2snd_array_147 = load i16* %float_clr2snd_array_146, align 4
  %tmp_373 = icmp eq i16 %float_clr2snd_array_147, %temp_diff_src_or_typ_42
  br i1 %tmp_373, label %60, label %._crit_edge1023

; <label>:60                                      ; preds = %59
  %float_clr2snd_array_148 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_368
  %float_clr2snd_array_149 = load i1* %float_clr2snd_array_148, align 1
  br i1 %float_clr2snd_array_149, label %61, label %._crit_edge1023

; <label>:61                                      ; preds = %60
  %float_clr2snd_array_150 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_368
  %float_clr2snd_array_151 = load i32* %float_clr2snd_array_150, align 4
  %tmp_380 = icmp eq i32 %float_clr2snd_array_151, %temp_diff_src_or_typ_45
  br i1 %tmp_380, label %62, label %._crit_edge1023

; <label>:62                                      ; preds = %61
  %float_clr2snd_array_152 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_368
  %float_clr2snd_array_153 = load i8* %float_clr2snd_array_152, align 8
  %tmp_383 = icmp eq i8 %float_clr2snd_array_153, %temp_diff_src_or_typ_46
  br i1 %tmp_383, label %63, label %._crit_edge1023

; <label>:63                                      ; preds = %62
  %float_clr2snd_array_154 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_368
  %float_clr2snd_array_155 = load i4* %float_clr2snd_array_154, align 1
  %tmp_384 = icmp eq i4 %float_clr2snd_array_155, %temp_diff_src_or_typ_47
  br i1 %tmp_384, label %.loopexit.loopexit, label %._crit_edge1023

._crit_edge1023:                                  ; preds = %63, %62, %61, %60, %59, %58
  br label %.preheader925

; <label>:64                                      ; preds = %.preheader925
  %tmp_370 = sext i32 %float_clr_num_load to i64
  %float_clr2snd_array_156 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_370
  store i8 %temp_diff_src_or_typ_43, i8* %float_clr2snd_array_156, align 16
  %float_clr2snd_array_157 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_370
  store i1 true, i1* %float_clr2snd_array_157, align 1
  %float_clr2snd_array_158 = getelementptr [512 x i32]* @float_clr2snd_array_3, i64 0, i64 %tmp_370
  store i32 %temp_diff_src_or_typ_45, i32* %float_clr2snd_array_158, align 4
  %float_clr2snd_array_159 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_370
  store i8 %temp_diff_src_or_typ_46, i8* %float_clr2snd_array_159, align 8
  %float_clr2snd_array_160 = getelementptr [512 x i4]* @float_clr2snd_array_7, i64 0, i64 %tmp_370
  store i4 %temp_diff_src_or_typ_47, i4* %float_clr2snd_array_160, align 1
  %float_clr2snd_array_161 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_370
  store i16 %temp_diff_src_or_typ_42, i16* %float_clr2snd_array_161, align 4
  %tmp_371 = add nsw i32 %float_clr_num_load, 1
  store i32 %tmp_371, i32* @float_clr_num, align 4
  br label %._crit_edge1022

._crit_edge1022:                                  ; preds = %64, %57
  br label %65

; <label>:65                                      ; preds = %._crit_edge1022, %56
  %i_35 = add nsw i32 %i3, -1
  store i1 false, i1* %p_1
  store i32 %seq_num_2, i32* %error_MSG_SIZE_V
  store i1 true, i1* %last_V
  br label %.loopexit934

; <label>:66                                      ; preds = %20
  %t_V = load i64* @time_V, align 8
  %tmp_329 = add i64 %t_V, 1
  store i64 %tmp_329, i64* @time_V, align 8
  %i_33 = add nsw i32 %i3, -1
  %tmp_330 = icmp eq i64 %tmp_329, 314465410
  br i1 %tmp_330, label %67, label %.loopexit934

; <label>:67                                      ; preds = %66
  store i64 0, i64* @time_V, align 8
  store i2 1, i2* @state_2, align 1
  br label %.loopexit

.loopexit934.loopexit:                            ; preds = %.preheader933
  store i1 false, i1* %p_1
  store i32 %seq_num_2, i32* %error_MSG_SIZE_V
  store i1 %p_0610_3, i1* %last_V
  br label %.loopexit934

.loopexit934.pre:                                 ; preds = %48
  store i1 false, i1* %p_1
  store i32 %seq_num_2, i32* %error_MSG_SIZE_V
  store i1 true, i1* %last_V
  br label %.loopexit934

.loopexit934.pre39:                               ; preds = %28
  store i1 false, i1* %p_1
  store i32 %seq_num_2, i32* %error_MSG_SIZE_V
  store i1 %p_0610_3, i1* %last_V
  br label %.loopexit934

.loopexit934:                                     ; preds = %.loopexit934.pre39, %.loopexit934.pre, %.loopexit934.loopexit, %66, %65, %47, %._crit_edge1000
  %i3_4 = phi i32 [ %i_34, %47 ], [ %i_35, %65 ], [ %i3, %.loopexit934.pre ], [ %i3, %.loopexit934.pre39 ], [ %i, %._crit_edge1000 ], [ %i_33, %66 ], [ %i3, %.loopexit934.loopexit ]
  %i_37 = add nsw i32 %i3_4, 1
  br label %.preheader290

.preheader:                                       ; preds = %.preheader.preheader, %68
  %p_0610_9 = phi i1 [ %last_V_6, %68 ], [ %last_V_load, %.preheader.preheader ]
  br i1 %p_0610_9, label %69, label %68

; <label>:68                                      ; preds = %.preheader
  %tmp_9 = call i121 @_ssdm_op_Read.ap_fifo.volatile.i121P(i121* @stream_in_V)
  %last_V_6 = call i1 @_ssdm_op_BitSelect.i1.i121.i32(i121 %tmp_9, i32 72)
  br label %.preheader

; <label>:69                                      ; preds = %.preheader
  %error_MSG_SIZE_V_loa_4 = load i32* %error_MSG_SIZE_V
  store i2 0, i2* @state_2, align 1
  store i64 0, i64* @time_V, align 8
  %tmp_10 = call i121 @_ssdm_op_BitConcatenate.i121.i49.i8.i4.i4.i8.i32.i8.i8(i49 513, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i32 %error_MSG_SIZE_V_loa_4, i8 5, i8 %clr2snd_SRC_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i121P(i121* @stream_out_V, i121 %tmp_10)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %63
  br label %.loopexit

.loopexit.loopexit44:                             ; preds = %55
  br label %.loopexit

.loopexit.loopexit45:                             ; preds = %45
  br label %.loopexit

.loopexit.loopexit46:                             ; preds = %37
  br label %.loopexit

.loopexit.loopexit47:                             ; preds = %4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit47, %.loopexit.loopexit46, %.loopexit.loopexit45, %.loopexit.loopexit44, %.loopexit.loopexit, %69, %67, %19, %14, %._crit_edge994, %codeRepl
  ret void
}

!opencl.kernels = !{!0, !7, !10, !16, !18, !20, !21, !21, !27, !33, !21, !21, !21, !34, !38, !38, !21, !44, !47, !47, !21, !21, !21, !21, !50, !44, !21, !52, !55, !21, !21, !21, !57, !57, !58, !58, !60, !62, !21, !21, !21, !21, !60, !62, !57, !57, !64, !64, !66, !69, !69, !21, !21, !21, !71, !73, !21, !21, !21, !57, !57, !75, !75, !77, !44, !79, !38, !38, !21, !81, !83, !85, !86, !88, !34, !44, !21, !21, !21, !90, !44, !50, !44, !92, !94, !66, !69, !69, !97, !100, !100, !21, !21, !21, !106, !106, !21, !21, !106, !106, !21, !21, !106, !106, !21, !21, !106, !106, !21, !21, !21, !107, !107, !107, !21, !21, !21, !109, !107, !107, !107, !111, !107, !107, !107, !113, !113, !115, !106, !106, !117, !119, !119, !120, !121, !122, !122, !123, !75, !75, !124, !125, !125, !97, !126, !126, !128, !129, !131, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!133, !140, !145, !150, !155, !160, !165, !170, !175, !180, !185, !190, !196}

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
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!29 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"int", metadata !"float"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"n", metadata !"h"}
!33 = metadata !{i32 ()* @integrate, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!34 = metadata !{null, metadata !35, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &", metadata !"int"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!38 = metadata !{null, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !6}
!39 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!40 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!42 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!44 = metadata !{null, metadata !39, metadata !40, metadata !45, metadata !42, metadata !46, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!47 = metadata !{null, metadata !39, metadata !40, metadata !48, metadata !42, metadata !49, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!50 = metadata !{null, metadata !35, metadata !2, metadata !51, metadata !4, metadata !37, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!52 = metadata !{null, metadata !35, metadata !2, metadata !53, metadata !4, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!55 = metadata !{null, metadata !35, metadata !2, metadata !56, metadata !4, metadata !37, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"const ap_int_base<32, true> &"}
!57 = metadata !{null, metadata !39, metadata !40, metadata !45, metadata !42, metadata !43, metadata !6}
!58 = metadata !{null, metadata !39, metadata !40, metadata !59, metadata !42, metadata !43, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!60 = metadata !{null, metadata !35, metadata !2, metadata !61, metadata !4, metadata !54, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"int"}
!62 = metadata !{null, metadata !35, metadata !2, metadata !63, metadata !4, metadata !37, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, true> &"}
!64 = metadata !{null, metadata !39, metadata !40, metadata !65, metadata !42, metadata !43, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!66 = metadata !{null, metadata !39, metadata !40, metadata !67, metadata !42, metadata !68, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!69 = metadata !{null, metadata !39, metadata !40, metadata !70, metadata !42, metadata !43, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!71 = metadata !{null, metadata !35, metadata !2, metadata !72, metadata !4, metadata !54, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!73 = metadata !{null, metadata !35, metadata !2, metadata !74, metadata !4, metadata !37, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, true> &"}
!75 = metadata !{null, metadata !39, metadata !40, metadata !76, metadata !42, metadata !43, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!77 = metadata !{null, metadata !35, metadata !2, metadata !78, metadata !4, metadata !37, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"int"}
!79 = metadata !{null, metadata !39, metadata !40, metadata !41, metadata !42, metadata !80, metadata !6}
!80 = metadata !{metadata !"kernel_arg_name", metadata !""}
!81 = metadata !{null, metadata !39, metadata !40, metadata !82, metadata !42, metadata !46, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!83 = metadata !{null, metadata !39, metadata !40, metadata !84, metadata !42, metadata !46, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!85 = metadata !{null, metadata !39, metadata !40, metadata !76, metadata !42, metadata !46, metadata !6}
!86 = metadata !{null, metadata !39, metadata !40, metadata !87, metadata !42, metadata !46, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!88 = metadata !{null, metadata !39, metadata !40, metadata !89, metadata !42, metadata !46, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!90 = metadata !{null, metadata !35, metadata !2, metadata !91, metadata !4, metadata !37, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"int"}
!92 = metadata !{null, metadata !39, metadata !40, metadata !93, metadata !42, metadata !46, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!94 = metadata !{null, metadata !39, metadata !40, metadata !95, metadata !42, metadata !96, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const struct stream_packet &"}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!97 = metadata !{null, metadata !35, metadata !2, metadata !98, metadata !4, metadata !99, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!100 = metadata !{null, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !6}
!101 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!102 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!104 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!106 = metadata !{null, metadata !39, metadata !40, metadata !41, metadata !42, metadata !68, metadata !6}
!107 = metadata !{null, metadata !39, metadata !40, metadata !108, metadata !42, metadata !49, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!109 = metadata !{null, metadata !39, metadata !40, metadata !110, metadata !42, metadata !46, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!111 = metadata !{null, metadata !39, metadata !40, metadata !112, metadata !42, metadata !46, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!113 = metadata !{null, metadata !39, metadata !40, metadata !114, metadata !42, metadata !43, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!115 = metadata !{null, metadata !39, metadata !40, metadata !116, metadata !42, metadata !46, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!117 = metadata !{null, metadata !39, metadata !40, metadata !118, metadata !42, metadata !46, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!119 = metadata !{null, metadata !39, metadata !40, metadata !116, metadata !42, metadata !43, metadata !6}
!120 = metadata !{null, metadata !39, metadata !40, metadata !114, metadata !42, metadata !46, metadata !6}
!121 = metadata !{null, metadata !39, metadata !40, metadata !84, metadata !42, metadata !68, metadata !6}
!122 = metadata !{null, metadata !39, metadata !40, metadata !84, metadata !42, metadata !43, metadata !6}
!123 = metadata !{null, metadata !39, metadata !40, metadata !76, metadata !42, metadata !68, metadata !6}
!124 = metadata !{null, metadata !39, metadata !40, metadata !89, metadata !42, metadata !68, metadata !6}
!125 = metadata !{null, metadata !39, metadata !40, metadata !89, metadata !42, metadata !43, metadata !6}
!126 = metadata !{null, metadata !101, metadata !102, metadata !127, metadata !104, metadata !105, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!128 = metadata !{null, metadata !39, metadata !40, metadata !95, metadata !42, metadata !80, metadata !6}
!129 = metadata !{null, metadata !39, metadata !40, metadata !130, metadata !42, metadata !46, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!131 = metadata !{null, metadata !39, metadata !40, metadata !132, metadata !42, metadata !80, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"const struct envelope &"}
!133 = metadata !{metadata !134, i40* @stream_out_V_user_V}
!134 = metadata !{metadata !135}
!135 = metadata !{i32 0, i32 39, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"stream_out.V.user.V", metadata !138, metadata !"uint40", i32 0, i32 39}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 0, i32 1}
!140 = metadata !{metadata !141, i1* @stream_out_V_last_V}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 0, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"stream_out.V.last.V", metadata !138, metadata !"uint1", i32 0, i32 0}
!145 = metadata !{metadata !146, i8* @stream_out_V_id_V}
!146 = metadata !{metadata !147}
!147 = metadata !{i32 0, i32 7, metadata !148}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !"stream_out.V.id.V", metadata !138, metadata !"uint8", i32 0, i32 7}
!150 = metadata !{metadata !151, i8* @stream_out_V_dest_V}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 7, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"stream_out.V.dest.V", metadata !138, metadata !"uint8", i32 0, i32 7}
!155 = metadata !{metadata !156, i64* @stream_out_V_data_V}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 0, i32 63, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"stream_out.V.data.V", metadata !138, metadata !"uint64", i32 0, i32 63}
!160 = metadata !{metadata !161, i40* @stream_in_V_user_V}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 0, i32 39, metadata !163}
!163 = metadata !{metadata !164}
!164 = metadata !{metadata !"stream_in.V.user.V", metadata !138, metadata !"uint40", i32 0, i32 39}
!165 = metadata !{metadata !166, i1* @stream_in_V_last_V}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 0, i32 0, metadata !168}
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !"stream_in.V.last.V", metadata !138, metadata !"uint1", i32 0, i32 0}
!170 = metadata !{metadata !171, i8* @stream_in_V_id_V}
!171 = metadata !{metadata !172}
!172 = metadata !{i32 0, i32 7, metadata !173}
!173 = metadata !{metadata !174}
!174 = metadata !{metadata !"stream_in.V.id.V", metadata !138, metadata !"uint8", i32 0, i32 7}
!175 = metadata !{metadata !176, i8* @stream_in_V_dest_V}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 0, i32 7, metadata !178}
!178 = metadata !{metadata !179}
!179 = metadata !{metadata !"stream_in.V.dest.V", metadata !138, metadata !"uint8", i32 0, i32 7}
!180 = metadata !{metadata !181, i64* @stream_in_V_data_V}
!181 = metadata !{metadata !182}
!182 = metadata !{i32 0, i32 63, metadata !183}
!183 = metadata !{metadata !184}
!184 = metadata !{metadata !"stream_in.V.data.V", metadata !138, metadata !"uint64", i32 0, i32 63}
!185 = metadata !{metadata !186, [1 x i32]* @llvm_global_ctors_0}
!186 = metadata !{metadata !187}
!187 = metadata !{i32 0, i32 31, metadata !188}
!188 = metadata !{metadata !189}
!189 = metadata !{metadata !"llvm.global_ctors.0", metadata !138, metadata !"", i32 0, i32 31}
!190 = metadata !{metadata !191, i121* @stream_out_V}
!191 = metadata !{metadata !157, metadata !192, metadata !193, metadata !194, metadata !195}
!192 = metadata !{i32 64, i32 71, metadata !153}
!193 = metadata !{i32 72, i32 72, metadata !143}
!194 = metadata !{i32 73, i32 80, metadata !148}
!195 = metadata !{i32 81, i32 120, metadata !136}
!196 = metadata !{metadata !197, i121* @stream_in_V}
!197 = metadata !{metadata !182, metadata !198, metadata !199, metadata !200, metadata !201}
!198 = metadata !{i32 64, i32 71, metadata !178}
!199 = metadata !{i32 72, i32 72, metadata !168}
!200 = metadata !{i32 73, i32 80, metadata !173}
!201 = metadata !{i32 81, i32 120, metadata !163}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 0, i32 31, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"return", metadata !206, metadata !"int", i32 0, i32 31}
!206 = metadata !{metadata !207}
!207 = metadata !{i32 0, i32 1, i32 0}
