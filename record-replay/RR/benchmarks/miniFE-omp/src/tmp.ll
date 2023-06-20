; ModuleID = 'main-openmp-amdgcn-amd-amdhsa.bc'
source_filename = "main.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"union._openmp_teams_reduction_type_$_" = type { %struct._globalized_locals_ty }
%struct._globalized_locals_ty = type { [1024 x double] }
%struct._globalized_locals_ty.0 = type { [1024 x double] }

@__omp_rtl_debug_kind = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_teams_oversubscription = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_threads_oversubscription = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_no_thread_state = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_no_nested_parallelism = weak_odr hidden addrspace(1) constant i32 0
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 22, ptr @0 }, align 8
@3 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l157_exec_mode = weak protected addrspace(1) constant i8 2
@__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l162_exec_mode = weak protected addrspace(1) constant i8 2
@__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l169_exec_mode = weak protected addrspace(1) constant i8 2
@__openmp_nvptx_data_transfer_temporary_storage = weak addrspace(3) global [64 x i32] undef
@4 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@"_openmp_teams_reductions_buffer_$_$ptr" = internal addrspace(1) constant ptr addrspacecast (ptr addrspace(1) @"_openmp_teams_reductions_buffer_$_" to ptr)
@__omp_offloading_5a_4a7455e3__ZN6miniFE6dot_r2INS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4__l290_exec_mode = weak protected addrspace(1) constant i8 2
@__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l200_exec_mode = weak protected addrspace(1) constant i8 2
@__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l205_exec_mode = weak protected addrspace(1) constant i8 2
@__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l210_exec_mode = weak protected addrspace(1) constant i8 2
@__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l215_exec_mode = weak protected addrspace(1) constant i8 2
@__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l220_exec_mode = weak protected addrspace(1) constant i8 2
@__omp_offloading_5a_4a7455e3__ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9__l254_exec_mode = weak protected addrspace(1) constant i8 2
@__omp_offloading_5a_8ac81b25__ZN6miniFE10matvec_stdINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7__l521_exec_mode = weak protected addrspace(1) constant i8 2
@"_openmp_teams_reductions_buffer_$_" = internal addrspace(1) global %"union._openmp_teams_reduction_type_$_" zeroinitializer
@llvm.compiler.used = appending addrspace(1) global [12 x ptr] [ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l157_exec_mode to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l162_exec_mode to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l169_exec_mode to ptr), ptr addrspacecast (ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_4a7455e3__ZN6miniFE6dot_r2INS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4__l290_exec_mode to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l200_exec_mode to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l205_exec_mode to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l210_exec_mode to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l215_exec_mode to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l220_exec_mode to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_4a7455e3__ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9__l254_exec_mode to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_5a_8ac81b25__ZN6miniFE10matvec_stdINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7__l521_exec_mode to ptr)], section "llvm.metadata"
@__oclc_finite_only_opt = internal local_unnamed_addr addrspace(4) constant i8 0, align 1

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l157(i64 noundef %n, ptr noundef %wcoefs, ptr noundef %xcoefs) #0 {
entry:
  %n.addr = alloca i64, align 8, addrspace(5)
  %wcoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %wcoefs.addr.ascast = addrspacecast ptr addrspace(5) %wcoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %wcoefs, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %0 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %0, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %1 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %2 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %2, ptr %n.casted.ascast, align 4, !tbaa !36
  %3 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %4 = load ptr, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  %5 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %1, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %3, ptr %4, ptr %5) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

declare i32 @__kmpc_target_init(ptr, i8, i1)

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef %wcoefs, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %wcoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i3 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [5 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %wcoefs.addr.ascast = addrspacecast ptr addrspace(5) %wcoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i3.ascast = addrspacecast ptr addrspace(5) %i3 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %wcoefs, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i3) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %4 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %5, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %6 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %7 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %8 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %9 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %10 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %10, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end12, %cond.end
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %12 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %add = add nsw i32 %12, 1
  %cmp5 = icmp slt i32 %11, %add
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, ptr %.omp.comb.lb.ascast, align 4, !llvm.access.group !38
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %.omp.comb.ub.ascast, align 4, !llvm.access.group !38
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36, !llvm.access.group !38
  store i32 %17, ptr %n.casted.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %18 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30, !llvm.access.group !38
  %19 = load ptr, ptr %wcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !38
  %20 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !38
  %21 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %22 = inttoptr i64 %14 to ptr
  store ptr %22, ptr %21, align 8, !tbaa !34, !llvm.access.group !38
  %23 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %24 = inttoptr i64 %16 to ptr
  store ptr %24, ptr %23, align 8, !tbaa !34, !llvm.access.group !38
  %25 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %26 = inttoptr i64 %18 to ptr
  store ptr %26, ptr %25, align 8, !tbaa !34, !llvm.access.group !38
  %27 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %19, ptr %27, align 8, !tbaa !34, !llvm.access.group !38
  %28 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %20, ptr %28, align 8, !tbaa !34, !llvm.access.group !38
  %29 = load ptr, ptr %.global_tid..addr.ascast, align 8, !llvm.access.group !38
  %30 = load i32, ptr %29, align 4, !tbaa !36, !llvm.access.group !38
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %30, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.1, ptr null, ptr %captured_vars_addrs.ascast, i64 5), !llvm.access.group !38
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %31 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %32 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %add6 = add nsw i32 %31, %32
  store i32 %add6, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %33 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %34 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %add7 = add nsw i32 %33, %34
  store i32 %add7, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %35 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %36 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %add8 = add nsw i32 %35, %36
  store i32 %add8, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %37 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %38 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %cmp9 = icmp sgt i32 %37, %38
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %omp.inner.for.inc
  %39 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !38
  br label %cond.end12

cond.false11:                                     ; preds = %omp.inner.for.inc
  %40 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !38
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %39, %cond.true10 ], [ %40, %cond.false11 ]
  store i32 %cond13, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !38
  %41 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !38
  store i32 %41, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !38
  br label %omp.inner.for.cond, !llvm.loop !39

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %42 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %43 = load i32, ptr %42, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %43)
  %44 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %46 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub14 = sub nsw i32 %46, 0
  %div15 = sdiv i32 %sub14, 1
  %mul = mul nsw i32 %div15, 1
  %add16 = add nsw i32 0, %mul
  store i32 %add16, ptr %i3.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i3) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p5(i64 immarg, ptr addrspace(5) nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p5(i64 immarg, ptr addrspace(5) nocapture) #2

declare i32 @__kmpc_get_hardware_num_threads_in_block()

declare void @__kmpc_distribute_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32)

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.1(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef %wcoefs, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %wcoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %wcoefs.addr.ascast = addrspacecast ptr addrspace(5) %wcoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %wcoefs, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %4 to i32
  %5 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %5 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i4) #3
  %6 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %7 = load i32, ptr %6, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %7, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %8 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %8, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %9 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !42
  %conv5 = sext i32 %9 to i64
  %10 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30, !llvm.access.group !42
  %cmp6 = icmp ule i64 %conv5, %10
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !42
  %mul = mul nsw i32 %11, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !42
  %12 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !42
  %13 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !42
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds double, ptr %12, i64 %idxprom
  %14 = load double, ptr %arrayidx, align 8, !tbaa !43, !llvm.access.group !42
  %15 = load ptr, ptr %wcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !42
  %16 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !42
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds double, ptr %15, i64 %idxprom7
  store double %14, ptr %arrayidx8, align 8, !tbaa !43, !llvm.access.group !42
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %17 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !42
  %18 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !42
  %add9 = add nsw i32 %17, %18
  store i32 %add9, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !42
  br label %omp.inner.for.cond, !llvm.loop !45

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %19 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %20 = load i32, ptr %19, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %20)
  %21 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %23 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub10 = sub nsw i32 %23, 0
  %div11 = sdiv i32 %sub10, 1
  %mul12 = mul nsw i32 %div11, 1
  %add13 = add nsw i32 0, %mul12
  store i32 %add13, ptr %i4.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_distribute_static_fini(ptr, i32) #3

; Function Attrs: alwaysinline
declare void @__kmpc_parallel_51(ptr, i32, i32, i32, i32, ptr, ptr, ptr, i64) #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) #3

declare void @__kmpc_target_deinit(ptr, i8)

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l162(i64 noundef %n, ptr noundef %wcoefs, i64 noundef %alpha, ptr noundef %xcoefs) #0 {
entry:
  %n.addr = alloca i64, align 8, addrspace(5)
  %wcoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %alpha.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %wcoefs.addr.ascast = addrspacecast ptr addrspace(5) %wcoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %alpha.casted.ascast = addrspacecast ptr addrspace(5) %alpha.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %wcoefs, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %0 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %0, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %1 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %2 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %2, ptr %n.casted.ascast, align 4, !tbaa !36
  %3 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %4 = load ptr, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  %5 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43
  store double %5, ptr %alpha.casted.ascast, align 8, !tbaa !43
  %6 = load i64, ptr %alpha.casted.ascast, align 8, !tbaa !30
  %7 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %1, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__.2(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %3, ptr %4, i64 %6, ptr %7) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.2(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef %wcoefs, i64 noundef %alpha, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %wcoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i3 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %alpha.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [6 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %wcoefs.addr.ascast = addrspacecast ptr addrspace(5) %wcoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i3.ascast = addrspacecast ptr addrspace(5) %i3 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %alpha.casted.ascast = addrspacecast ptr addrspace(5) %alpha.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %wcoefs, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i3) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %4 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %5, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %6 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %7 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %8 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %9 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %10 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %10, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end12, %cond.end
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %12 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %add = add nsw i32 %12, 1
  %cmp5 = icmp slt i32 %11, %add
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, ptr %.omp.comb.lb.ascast, align 4, !llvm.access.group !47
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %.omp.comb.ub.ascast, align 4, !llvm.access.group !47
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36, !llvm.access.group !47
  store i32 %17, ptr %n.casted.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %18 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30, !llvm.access.group !47
  %19 = load ptr, ptr %wcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !47
  %20 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43, !llvm.access.group !47
  store double %20, ptr %alpha.casted.ascast, align 8, !tbaa !43, !llvm.access.group !47
  %21 = load i64, ptr %alpha.casted.ascast, align 8, !tbaa !30, !llvm.access.group !47
  %22 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !47
  %23 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %24 = inttoptr i64 %14 to ptr
  store ptr %24, ptr %23, align 8, !tbaa !34, !llvm.access.group !47
  %25 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %26 = inttoptr i64 %16 to ptr
  store ptr %26, ptr %25, align 8, !tbaa !34, !llvm.access.group !47
  %27 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %28 = inttoptr i64 %18 to ptr
  store ptr %28, ptr %27, align 8, !tbaa !34, !llvm.access.group !47
  %29 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %19, ptr %29, align 8, !tbaa !34, !llvm.access.group !47
  %30 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  %31 = inttoptr i64 %21 to ptr
  store ptr %31, ptr %30, align 8, !tbaa !34, !llvm.access.group !47
  %32 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 5
  store ptr %22, ptr %32, align 8, !tbaa !34, !llvm.access.group !47
  %33 = load ptr, ptr %.global_tid..addr.ascast, align 8, !llvm.access.group !47
  %34 = load i32, ptr %33, align 4, !tbaa !36, !llvm.access.group !47
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %34, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.3, ptr null, ptr %captured_vars_addrs.ascast, i64 6), !llvm.access.group !47
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %35 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %36 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %add6 = add nsw i32 %35, %36
  store i32 %add6, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %37 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %38 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %add7 = add nsw i32 %37, %38
  store i32 %add7, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %39 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %40 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %add8 = add nsw i32 %39, %40
  store i32 %add8, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %41 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %42 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %cmp9 = icmp sgt i32 %41, %42
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %omp.inner.for.inc
  %43 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !47
  br label %cond.end12

cond.false11:                                     ; preds = %omp.inner.for.inc
  %44 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !47
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %43, %cond.true10 ], [ %44, %cond.false11 ]
  store i32 %cond13, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !47
  %45 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !47
  store i32 %45, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !47
  br label %omp.inner.for.cond, !llvm.loop !48

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %46 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %47 = load i32, ptr %46, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %47)
  %48 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %50 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub14 = sub nsw i32 %50, 0
  %div15 = sdiv i32 %sub14, 1
  %mul = mul nsw i32 %div15, 1
  %add16 = add nsw i32 0, %mul
  store i32 %add16, ptr %i3.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i3) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.3(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef %wcoefs, i64 noundef %alpha, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %wcoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %wcoefs.addr.ascast = addrspacecast ptr addrspace(5) %wcoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %wcoefs, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %4 to i32
  %5 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %5 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i4) #3
  %6 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %7 = load i32, ptr %6, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %7, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %8 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %8, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %9 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !50
  %conv5 = sext i32 %9 to i64
  %10 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30, !llvm.access.group !50
  %cmp6 = icmp ule i64 %conv5, %10
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !50
  %mul = mul nsw i32 %11, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !50
  %12 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43, !llvm.access.group !50
  %13 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !50
  %14 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !50
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds double, ptr %13, i64 %idxprom
  %15 = load double, ptr %arrayidx, align 8, !tbaa !43, !llvm.access.group !50
  %mul7 = fmul contract double %12, %15
  %16 = load ptr, ptr %wcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !50
  %17 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !50
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %16, i64 %idxprom8
  store double %mul7, ptr %arrayidx9, align 8, !tbaa !43, !llvm.access.group !50
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !50
  %19 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !50
  %add10 = add nsw i32 %18, %19
  store i32 %add10, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !50
  br label %omp.inner.for.cond, !llvm.loop !51

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %20 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %21 = load i32, ptr %20, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %21)
  %22 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %24 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub11 = sub nsw i32 %24, 0
  %div12 = sdiv i32 %sub11, 1
  %mul13 = mul nsw i32 %div12, 1
  %add14 = add nsw i32 0, %mul13
  store i32 %add14, ptr %i4.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l169(i64 noundef %n, ptr noundef %wcoefs, ptr noundef %xcoefs, i64 noundef %beta, ptr noundef %ycoefs) #0 {
entry:
  %n.addr = alloca i64, align 8, addrspace(5)
  %wcoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %beta.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %beta.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %wcoefs.addr.ascast = addrspacecast ptr addrspace(5) %wcoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %beta.addr.ascast = addrspacecast ptr addrspace(5) %beta.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %beta.casted.ascast = addrspacecast ptr addrspace(5) %beta.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %wcoefs, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %beta, ptr %beta.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %0 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %0, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %1 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %2 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %2, ptr %n.casted.ascast, align 4, !tbaa !36
  %3 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %4 = load ptr, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  %5 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %6 = load double, ptr %beta.addr.ascast, align 8, !tbaa !43
  store double %6, ptr %beta.casted.ascast, align 8, !tbaa !43
  %7 = load i64, ptr %beta.casted.ascast, align 8, !tbaa !30
  %8 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %1, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__.4(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %3, ptr %4, ptr %5, i64 %7, ptr %8) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.4(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef %wcoefs, ptr noundef %xcoefs, i64 noundef %beta, ptr noundef %ycoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %wcoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %beta.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i3 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %beta.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [7 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %wcoefs.addr.ascast = addrspacecast ptr addrspace(5) %wcoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %beta.addr.ascast = addrspacecast ptr addrspace(5) %beta.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i3.ascast = addrspacecast ptr addrspace(5) %i3 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %beta.casted.ascast = addrspacecast ptr addrspace(5) %beta.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %wcoefs, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %beta, ptr %beta.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i3) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %4 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %5, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %6 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %7 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %8 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %9 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %10 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %10, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end12, %cond.end
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %12 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %add = add nsw i32 %12, 1
  %cmp5 = icmp slt i32 %11, %add
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, ptr %.omp.comb.lb.ascast, align 4, !llvm.access.group !53
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %.omp.comb.ub.ascast, align 4, !llvm.access.group !53
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36, !llvm.access.group !53
  store i32 %17, ptr %n.casted.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %18 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30, !llvm.access.group !53
  %19 = load ptr, ptr %wcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !53
  %20 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !53
  %21 = load double, ptr %beta.addr.ascast, align 8, !tbaa !43, !llvm.access.group !53
  store double %21, ptr %beta.casted.ascast, align 8, !tbaa !43, !llvm.access.group !53
  %22 = load i64, ptr %beta.casted.ascast, align 8, !tbaa !30, !llvm.access.group !53
  %23 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !53
  %24 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %25 = inttoptr i64 %14 to ptr
  store ptr %25, ptr %24, align 8, !tbaa !34, !llvm.access.group !53
  %26 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %27 = inttoptr i64 %16 to ptr
  store ptr %27, ptr %26, align 8, !tbaa !34, !llvm.access.group !53
  %28 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %29 = inttoptr i64 %18 to ptr
  store ptr %29, ptr %28, align 8, !tbaa !34, !llvm.access.group !53
  %30 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %19, ptr %30, align 8, !tbaa !34, !llvm.access.group !53
  %31 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %20, ptr %31, align 8, !tbaa !34, !llvm.access.group !53
  %32 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 5
  %33 = inttoptr i64 %22 to ptr
  store ptr %33, ptr %32, align 8, !tbaa !34, !llvm.access.group !53
  %34 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 6
  store ptr %23, ptr %34, align 8, !tbaa !34, !llvm.access.group !53
  %35 = load ptr, ptr %.global_tid..addr.ascast, align 8, !llvm.access.group !53
  %36 = load i32, ptr %35, align 4, !tbaa !36, !llvm.access.group !53
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %36, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.5, ptr null, ptr %captured_vars_addrs.ascast, i64 7), !llvm.access.group !53
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %37 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %38 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %add6 = add nsw i32 %37, %38
  store i32 %add6, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %39 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %40 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %add7 = add nsw i32 %39, %40
  store i32 %add7, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %41 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %42 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %add8 = add nsw i32 %41, %42
  store i32 %add8, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %43 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %44 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %cmp9 = icmp sgt i32 %43, %44
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %omp.inner.for.inc
  %45 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !53
  br label %cond.end12

cond.false11:                                     ; preds = %omp.inner.for.inc
  %46 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !53
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %45, %cond.true10 ], [ %46, %cond.false11 ]
  store i32 %cond13, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !53
  %47 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !53
  store i32 %47, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !53
  br label %omp.inner.for.cond, !llvm.loop !54

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %48 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %49 = load i32, ptr %48, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %49)
  %50 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %52 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub14 = sub nsw i32 %52, 0
  %div15 = sdiv i32 %sub14, 1
  %mul = mul nsw i32 %div15, 1
  %add16 = add nsw i32 0, %mul
  store i32 %add16, ptr %i3.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i3) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.5(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef %wcoefs, ptr noundef %xcoefs, i64 noundef %beta, ptr noundef %ycoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %wcoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %beta.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %wcoefs.addr.ascast = addrspacecast ptr addrspace(5) %wcoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %beta.addr.ascast = addrspacecast ptr addrspace(5) %beta.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %wcoefs, ptr %wcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %beta, ptr %beta.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %4 to i32
  %5 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %5 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i4) #3
  %6 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %7 = load i32, ptr %6, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %7, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %8 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %8, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %9 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !56
  %conv5 = sext i32 %9 to i64
  %10 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30, !llvm.access.group !56
  %cmp6 = icmp ule i64 %conv5, %10
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !56
  %mul = mul nsw i32 %11, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !56
  %12 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !56
  %13 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !56
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds double, ptr %12, i64 %idxprom
  %14 = load double, ptr %arrayidx, align 8, !tbaa !43, !llvm.access.group !56
  %15 = load double, ptr %beta.addr.ascast, align 8, !tbaa !43, !llvm.access.group !56
  %16 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !56
  %17 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !56
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds double, ptr %16, i64 %idxprom7
  %18 = load double, ptr %arrayidx8, align 8, !tbaa !43, !llvm.access.group !56
  %mul9 = fmul contract double %15, %18
  %add10 = fadd contract double %14, %mul9
  %19 = load ptr, ptr %wcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !56
  %20 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !56
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds double, ptr %19, i64 %idxprom11
  store double %add10, ptr %arrayidx12, align 8, !tbaa !43, !llvm.access.group !56
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !56
  %22 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !56
  %add13 = add nsw i32 %21, %22
  store i32 %add13, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !56
  br label %omp.inner.for.cond, !llvm.loop !57

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %24 = load i32, ptr %23, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %24)
  %25 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %27 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub14 = sub nsw i32 %27, 0
  %div15 = sdiv i32 %sub14, 1
  %mul16 = mul nsw i32 %div15, 1
  %add17 = add nsw i32 0, %mul16
  store i32 %add17, ptr %i4.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_4a7455e3__ZN6miniFE6dot_r2INS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4__l290(i64 noundef %n, ptr noundef nonnull align 8 dereferenceable(8) %result, ptr noundef %xcoefs) #0 {
entry:
  %n.addr = alloca i64, align 8, addrspace(5)
  %result.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %result.addr.ascast = addrspacecast ptr addrspace(5) %result.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %result, ptr %result.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %0 = load ptr, ptr %result.addr.ascast, align 8, !tbaa !34
  %1 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %1, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %3 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %3, ptr %n.casted.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %5 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %2, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__.6(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %4, ptr %0, ptr %5) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.6(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef nonnull align 8 dereferenceable(8) %result, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %result.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %result1 = alloca double, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.2 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [5 x ptr], align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %result.addr.ascast = addrspacecast ptr addrspace(5) %result.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %result1.ascast = addrspacecast ptr addrspace(5) %result1 to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.2.ascast = addrspacecast ptr addrspace(5) %.capture_expr.2 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %result, ptr %result.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %0 = load ptr, ptr %result.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %result1) #3
  store double 0.000000e+00, ptr %result1.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %1 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %1, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.2) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %2, 0
  %div = sdiv i32 %sub, 1
  %sub3 = sub nsw i32 %div, 1
  store i32 %sub3, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %3 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %3
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %4 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  store i32 %4, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i4) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %5 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %6 = load i32, ptr %5, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %6, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %7 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %8 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  %cmp5 = icmp sgt i32 %7, %8
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %9 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %10 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %11 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %11, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end13, %cond.end
  %12 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %13 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  %add = add nsw i32 %13, 1
  %cmp6 = icmp slt i32 %12, %add
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %18, ptr %n.casted.ascast, align 4, !tbaa !36
  %19 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %20 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %21 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %22 = inttoptr i64 %15 to ptr
  store ptr %22, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %24 = inttoptr i64 %17 to ptr
  store ptr %24, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %26 = inttoptr i64 %19 to ptr
  store ptr %26, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %result1.ascast, ptr %27, align 8, !tbaa !34
  %28 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %20, ptr %28, align 8, !tbaa !34
  %29 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %30 = load i32, ptr %29, align 4, !tbaa !36
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %30, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.7, ptr null, ptr %captured_vars_addrs.ascast, i64 5)
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %31 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %32 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add7 = add nsw i32 %31, %32
  store i32 %add7, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %33 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  %34 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add8 = add nsw i32 %33, %34
  store i32 %add8, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  %35 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %36 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add9 = add nsw i32 %35, %36
  store i32 %add9, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %37 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %38 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  %cmp10 = icmp sgt i32 %37, %38
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %omp.inner.for.inc
  %39 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  br label %cond.end13

cond.false12:                                     ; preds = %omp.inner.for.inc
  %40 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i32 [ %39, %cond.true11 ], [ %40, %cond.false12 ]
  store i32 %cond14, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %41 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %41, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %42 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %43 = load i32, ptr %42, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %43)
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i4) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.2) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  %44 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %45 = load i32, ptr %44, align 4, !tbaa !36
  %46 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %result1.ascast, ptr %46, align 8
  %47 = load ptr, ptr addrspace(1) @"_openmp_teams_reductions_buffer_$_$ptr", align 8, !tbaa !34
  %48 = call i32 @__kmpc_nvptx_teams_reduce_nowait_v2(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %45, ptr %47, i32 1024, ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func.9, ptr @_omp_reduction_inter_warp_copy_func.10, ptr @_omp_reduction_list_to_global_copy_func, ptr @_omp_reduction_list_to_global_reduce_func, ptr @_omp_reduction_global_to_list_copy_func, ptr @_omp_reduction_global_to_list_reduce_func)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %.omp.reduction.then, label %.omp.reduction.done

.omp.reduction.then:                              ; preds = %omp.precond.end
  %50 = load double, ptr %0, align 8, !tbaa !43
  %51 = load double, ptr %result1.ascast, align 8, !tbaa !43
  %add15 = fadd contract double %50, %51
  store double %add15, ptr %0, align 8, !tbaa !43
  call void @__kmpc_nvptx_end_reduce_nowait(i32 %45)
  br label %.omp.reduction.done

.omp.reduction.done:                              ; preds = %.omp.reduction.then, %omp.precond.end
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %result1) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.7(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef nonnull align 8 dereferenceable(8) %result, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %result.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %result4 = alloca double, align 8, addrspace(5)
  %i5 = alloca i32, align 4, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %result.addr.ascast = addrspacecast ptr addrspace(5) %result.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %result4.ascast = addrspacecast ptr addrspace(5) %result4 to ptr
  %i5.ascast = addrspacecast ptr addrspace(5) %i5 to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %result, ptr %result.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %0 = load ptr, ptr %result.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %1 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %1, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %2, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %3 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %3
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %4 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %4, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %5 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %5 to i32
  %6 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %6 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %result4) #3
  store double 0.000000e+00, ptr %result4.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i5) #3
  %7 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %8 = load i32, ptr %7, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %8, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %9 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %9, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %10 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %conv6 = sext i32 %10 to i64
  %11 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %cmp7 = icmp ule i64 %conv6, %11
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %mul = mul nsw i32 %12, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i5.ascast, align 4, !tbaa !36
  %13 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %14 = load i32, ptr %i5.ascast, align 4, !tbaa !36
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds double, ptr %13, i64 %idxprom
  %15 = load double, ptr %arrayidx, align 8, !tbaa !43
  %16 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %17 = load i32, ptr %i5.ascast, align 4, !tbaa !36
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %16, i64 %idxprom8
  %18 = load double, ptr %arrayidx9, align 8, !tbaa !43
  %mul10 = fmul contract double %15, %18
  %19 = load double, ptr %result4.ascast, align 8, !tbaa !43
  %add11 = fadd contract double %19, %mul10
  store double %add11, ptr %result4.ascast, align 8, !tbaa !43
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %21 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add12 = add nsw i32 %20, %21
  store i32 %add12, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %23 = load i32, ptr %22, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %23)
  %24 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %25 = load i32, ptr %24, align 4, !tbaa !36
  %26 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %result4.ascast, ptr %26, align 8
  %27 = call i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %25, i32 1, i64 8, ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func, ptr @_omp_reduction_inter_warp_copy_func)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %.omp.reduction.then, label %.omp.reduction.done

.omp.reduction.then:                              ; preds = %omp.loop.exit
  %29 = load double, ptr %0, align 8, !tbaa !43
  %30 = load double, ptr %result4.ascast, align 8, !tbaa !43
  %add13 = fadd contract double %29, %30
  store double %add13, ptr %0, align 8, !tbaa !43
  call void @__kmpc_nvptx_end_reduce_nowait(i32 %25)
  br label %.omp.reduction.done

.omp.reduction.done:                              ; preds = %.omp.reduction.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i5) #3
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %result4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.reduction.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @"_omp$reduction$reduction_func"(ptr noundef %0, ptr noundef %1) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store ptr %1, ptr %.addr1.ascast, align 8, !tbaa !34
  %2 = load ptr, ptr %.addr.ascast, align 8
  %3 = load ptr, ptr %.addr1.ascast, align 8
  %4 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds [1 x ptr], ptr %2, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = load double, ptr %7, align 8, !tbaa !43
  %9 = load double, ptr %5, align 8, !tbaa !43
  %add = fadd contract double %8, %9
  store double %add, ptr %7, align 8, !tbaa !43
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i16, align 2, addrspace(5)
  %.addr2 = alloca i16, align 2, addrspace(5)
  %.addr3 = alloca i16, align 2, addrspace(5)
  %.omp.reduction.remote_reduce_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.element = alloca double, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.addr3.ascast = addrspacecast ptr addrspace(5) %.addr3 to ptr
  %.omp.reduction.remote_reduce_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.remote_reduce_list to ptr
  %.omp.reduction.element.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.element to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i16 %1, ptr %.addr1.ascast, align 2, !tbaa !59
  store i16 %2, ptr %.addr2.ascast, align 2, !tbaa !59
  store i16 %3, ptr %.addr3.ascast, align 2, !tbaa !59
  %4 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %5 = load i16, ptr %.addr1.ascast, align 2, !tbaa !59
  %6 = load i16, ptr %.addr2.ascast, align 2, !tbaa !59
  %7 = load i16, ptr %.addr3.ascast, align 2, !tbaa !59
  %8 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %11 = getelementptr double, ptr %9, i64 1
  %12 = load i64, ptr %9, align 8
  %13 = call i32 @__kmpc_get_warp_size()
  %14 = trunc i32 %13 to i16
  %15 = call i64 @__kmpc_shuffle_int64(i64 %12, i16 %6, i16 %14)
  store i64 %15, ptr %.omp.reduction.element.ascast, align 8
  %16 = getelementptr i64, ptr %9, i64 1
  %17 = getelementptr i64, ptr %.omp.reduction.element.ascast, i64 1
  store ptr %.omp.reduction.element.ascast, ptr %10, align 8, !tbaa !34
  %18 = icmp eq i16 %7, 0
  %19 = icmp eq i16 %7, 1
  %20 = icmp ult i16 %5, %6
  %21 = and i1 %19, %20
  %22 = icmp eq i16 %7, 2
  %23 = and i16 %5, 1
  %24 = icmp eq i16 %23, 0
  %25 = and i1 %22, %24
  %26 = icmp sgt i16 %6, 0
  %27 = and i1 %25, %26
  %28 = or i1 %18, %21
  %29 = or i1 %28, %27
  br i1 %29, label %then, label %else

then:                                             ; preds = %entry
  call void @"_omp$reduction$reduction_func"(ptr %4, ptr %.omp.reduction.remote_reduce_list.ascast) #3
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %30 = icmp eq i16 %7, 1
  %31 = icmp uge i16 %5, %6
  %32 = and i1 %30, %31
  br i1 %32, label %then4, label %else5

then4:                                            ; preds = %ifcont
  %33 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %36 = load ptr, ptr %35, align 8
  %37 = load double, ptr %34, align 8
  store double %37, ptr %36, align 8
  br label %ifcont6

else5:                                            ; preds = %ifcont
  br label %ifcont6

ifcont6:                                          ; preds = %else5, %then4
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_get_warp_size() #3

declare i64 @__kmpc_shuffle_int64(i64, i16, i16)

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_inter_warp_copy_func(ptr noundef %0, i32 noundef %1) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.cnt.addr = alloca i32, align 4, addrspace(5)
  %2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.cnt.addr.ascast = addrspacecast ptr addrspace(5) %.cnt.addr to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  %3 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %4 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_lane_id = and i32 %4, 63
  %5 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_warp_id = ashr i32 %5, 6
  %6 = load ptr, ptr %.addr.ascast, align 8
  store i32 0, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  br label %precond

precond:                                          ; preds = %ifcont4, %entry
  %7 = load i32, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %body, label %exit

body:                                             ; preds = %precond
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %2)
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %else

then:                                             ; preds = %body
  %9 = getelementptr inbounds [1 x ptr], ptr %6, i64 0, i64 0
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr i32, ptr %10, i32 %7
  %12 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %nvptx_warp_id
  %13 = load i32, ptr %11, align 4
  store volatile i32 %13, ptr addrspace(3) %12, align 4
  br label %ifcont

else:                                             ; preds = %body
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %2)
  %14 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %is_active_thread = icmp ult i32 %3, %14
  br i1 %is_active_thread, label %then2, label %else3

then2:                                            ; preds = %ifcont
  %15 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %3
  %16 = getelementptr inbounds [1 x ptr], ptr %6, i64 0, i64 0
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr i32, ptr %17, i32 %7
  %19 = load volatile i32, ptr addrspace(3) %15, align 4, !tbaa !36
  store i32 %19, ptr %18, align 4, !tbaa !36
  br label %ifcont4

else3:                                            ; preds = %ifcont
  br label %ifcont4

ifcont4:                                          ; preds = %else3, %then2
  %20 = add nsw i32 %7, 1
  store i32 %20, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  br label %precond

exit:                                             ; preds = %precond
  ret void
}

declare i32 @__kmpc_get_hardware_thread_id_in_block()

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) #6

declare i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr, i32, i32, i64, ptr, ptr, ptr)

declare void @__kmpc_nvptx_end_reduce_nowait(i32)

; Function Attrs: convergent norecurse nounwind
define internal void @"_omp$reduction$reduction_func.8"(ptr noundef %0, ptr noundef %1) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store ptr %1, ptr %.addr1.ascast, align 8, !tbaa !34
  %2 = load ptr, ptr %.addr.ascast, align 8
  %3 = load ptr, ptr %.addr1.ascast, align 8
  %4 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds [1 x ptr], ptr %2, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = load double, ptr %7, align 8, !tbaa !43
  %9 = load double, ptr %5, align 8, !tbaa !43
  %add = fadd contract double %8, %9
  store double %add, ptr %7, align 8, !tbaa !43
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_shuffle_and_reduce_func.9(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i16, align 2, addrspace(5)
  %.addr2 = alloca i16, align 2, addrspace(5)
  %.addr3 = alloca i16, align 2, addrspace(5)
  %.omp.reduction.remote_reduce_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.element = alloca double, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.addr3.ascast = addrspacecast ptr addrspace(5) %.addr3 to ptr
  %.omp.reduction.remote_reduce_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.remote_reduce_list to ptr
  %.omp.reduction.element.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.element to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i16 %1, ptr %.addr1.ascast, align 2, !tbaa !59
  store i16 %2, ptr %.addr2.ascast, align 2, !tbaa !59
  store i16 %3, ptr %.addr3.ascast, align 2, !tbaa !59
  %4 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %5 = load i16, ptr %.addr1.ascast, align 2, !tbaa !59
  %6 = load i16, ptr %.addr2.ascast, align 2, !tbaa !59
  %7 = load i16, ptr %.addr3.ascast, align 2, !tbaa !59
  %8 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %11 = getelementptr double, ptr %9, i64 1
  %12 = load i64, ptr %9, align 8
  %13 = call i32 @__kmpc_get_warp_size()
  %14 = trunc i32 %13 to i16
  %15 = call i64 @__kmpc_shuffle_int64(i64 %12, i16 %6, i16 %14)
  store i64 %15, ptr %.omp.reduction.element.ascast, align 8
  %16 = getelementptr i64, ptr %9, i64 1
  %17 = getelementptr i64, ptr %.omp.reduction.element.ascast, i64 1
  store ptr %.omp.reduction.element.ascast, ptr %10, align 8, !tbaa !34
  %18 = icmp eq i16 %7, 0
  %19 = icmp eq i16 %7, 1
  %20 = icmp ult i16 %5, %6
  %21 = and i1 %19, %20
  %22 = icmp eq i16 %7, 2
  %23 = and i16 %5, 1
  %24 = icmp eq i16 %23, 0
  %25 = and i1 %22, %24
  %26 = icmp sgt i16 %6, 0
  %27 = and i1 %25, %26
  %28 = or i1 %18, %21
  %29 = or i1 %28, %27
  br i1 %29, label %then, label %else

then:                                             ; preds = %entry
  call void @"_omp$reduction$reduction_func.8"(ptr %4, ptr %.omp.reduction.remote_reduce_list.ascast) #3
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %30 = icmp eq i16 %7, 1
  %31 = icmp uge i16 %5, %6
  %32 = and i1 %30, %31
  br i1 %32, label %then4, label %else5

then4:                                            ; preds = %ifcont
  %33 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %36 = load ptr, ptr %35, align 8
  %37 = load double, ptr %34, align 8
  store double %37, ptr %36, align 8
  br label %ifcont6

else5:                                            ; preds = %ifcont
  br label %ifcont6

ifcont6:                                          ; preds = %else5, %then4
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_inter_warp_copy_func.10(ptr noundef %0, i32 noundef %1) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.cnt.addr = alloca i32, align 4, addrspace(5)
  %2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.cnt.addr.ascast = addrspacecast ptr addrspace(5) %.cnt.addr to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  %3 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %4 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_lane_id = and i32 %4, 63
  %5 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_warp_id = ashr i32 %5, 6
  %6 = load ptr, ptr %.addr.ascast, align 8
  store i32 0, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  br label %precond

precond:                                          ; preds = %ifcont4, %entry
  %7 = load i32, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %body, label %exit

body:                                             ; preds = %precond
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %2)
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %else

then:                                             ; preds = %body
  %9 = getelementptr inbounds [1 x ptr], ptr %6, i64 0, i64 0
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr i32, ptr %10, i32 %7
  %12 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %nvptx_warp_id
  %13 = load i32, ptr %11, align 4
  store volatile i32 %13, ptr addrspace(3) %12, align 4
  br label %ifcont

else:                                             ; preds = %body
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %2)
  %14 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %is_active_thread = icmp ult i32 %3, %14
  br i1 %is_active_thread, label %then2, label %else3

then2:                                            ; preds = %ifcont
  %15 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %3
  %16 = getelementptr inbounds [1 x ptr], ptr %6, i64 0, i64 0
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr i32, ptr %17, i32 %7
  %19 = load volatile i32, ptr addrspace(3) %15, align 4, !tbaa !36
  store i32 %19, ptr %18, align 4, !tbaa !36
  br label %ifcont4

else3:                                            ; preds = %ifcont
  br label %ifcont4

ifcont4:                                          ; preds = %else3, %then2
  %20 = add nsw i32 %7, 1
  store i32 %20, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  br label %precond

exit:                                             ; preds = %precond
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_list_to_global_copy_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  store ptr %2, ptr %.addr2.ascast, align 8, !tbaa !34
  %3 = load ptr, ptr %.addr2.ascast, align 8, !tbaa !34
  %4 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %5 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %6 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %result = getelementptr inbounds %struct._globalized_locals_ty, ptr %4, i32 0, i32 0
  %8 = getelementptr inbounds [1024 x double], ptr %result, i32 0, i32 %5
  %9 = load double, ptr %7, align 8
  store double %9, ptr %8, align 128, !tbaa !61
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_list_to_global_reduce_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  store ptr %2, ptr %.addr2.ascast, align 8, !tbaa !34
  %3 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %4 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %5 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  %result = getelementptr inbounds %struct._globalized_locals_ty, ptr %3, i32 0, i32 0
  %6 = getelementptr inbounds [1024 x double], ptr %result, i32 0, i32 %4
  store ptr %6, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %.addr2.ascast, align 8, !tbaa !34
  call void @"_omp$reduction$reduction_func.8"(ptr %.omp.reduction.red_list.ascast, ptr %7) #3
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_global_to_list_copy_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  store ptr %2, ptr %.addr2.ascast, align 8, !tbaa !34
  %3 = load ptr, ptr %.addr2.ascast, align 8, !tbaa !34
  %4 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %5 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %6 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %result = getelementptr inbounds %struct._globalized_locals_ty, ptr %4, i32 0, i32 0
  %8 = getelementptr inbounds [1024 x double], ptr %result, i32 0, i32 %5
  %9 = load double, ptr %8, align 128, !tbaa !61
  store double %9, ptr %7, align 8
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_global_to_list_reduce_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  store ptr %2, ptr %.addr2.ascast, align 8, !tbaa !34
  %3 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %4 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %5 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  %result = getelementptr inbounds %struct._globalized_locals_ty, ptr %3, i32 0, i32 0
  %6 = getelementptr inbounds [1024 x double], ptr %result, i32 0, i32 %4
  store ptr %6, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %.addr2.ascast, align 8, !tbaa !34
  call void @"_omp$reduction$reduction_func.8"(ptr %7, ptr %.omp.reduction.red_list.ascast) #3
  ret void
}

declare i32 @__kmpc_nvptx_teams_reduce_nowait_v2(ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr)

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l200(i64 noundef %n, ptr noundef %ycoefs, ptr noundef %xcoefs) #0 {
entry:
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %0 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %0, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %1 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %2 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %2, ptr %n.casted.ascast, align 4, !tbaa !36
  %3 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %4 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %5 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %1, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__.11(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %3, ptr %4, ptr %5) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.11(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef %ycoefs, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i3 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [5 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i3.ascast = addrspacecast ptr addrspace(5) %i3 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i3) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %4 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %5, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %6 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %7 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %8 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %9 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %10 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %10, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end12, %cond.end
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %12 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %add = add nsw i32 %12, 1
  %cmp5 = icmp slt i32 %11, %add
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, ptr %.omp.comb.lb.ascast, align 4, !llvm.access.group !63
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %.omp.comb.ub.ascast, align 4, !llvm.access.group !63
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36, !llvm.access.group !63
  store i32 %17, ptr %n.casted.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %18 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30, !llvm.access.group !63
  %19 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !63
  %20 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !63
  %21 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %22 = inttoptr i64 %14 to ptr
  store ptr %22, ptr %21, align 8, !tbaa !34, !llvm.access.group !63
  %23 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %24 = inttoptr i64 %16 to ptr
  store ptr %24, ptr %23, align 8, !tbaa !34, !llvm.access.group !63
  %25 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %26 = inttoptr i64 %18 to ptr
  store ptr %26, ptr %25, align 8, !tbaa !34, !llvm.access.group !63
  %27 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %19, ptr %27, align 8, !tbaa !34, !llvm.access.group !63
  %28 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %20, ptr %28, align 8, !tbaa !34, !llvm.access.group !63
  %29 = load ptr, ptr %.global_tid..addr.ascast, align 8, !llvm.access.group !63
  %30 = load i32, ptr %29, align 4, !tbaa !36, !llvm.access.group !63
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %30, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.12, ptr null, ptr %captured_vars_addrs.ascast, i64 5), !llvm.access.group !63
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %31 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %32 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %add6 = add nsw i32 %31, %32
  store i32 %add6, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %33 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %34 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %add7 = add nsw i32 %33, %34
  store i32 %add7, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %35 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %36 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %add8 = add nsw i32 %35, %36
  store i32 %add8, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %37 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %38 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %cmp9 = icmp sgt i32 %37, %38
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %omp.inner.for.inc
  %39 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !63
  br label %cond.end12

cond.false11:                                     ; preds = %omp.inner.for.inc
  %40 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !63
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %39, %cond.true10 ], [ %40, %cond.false11 ]
  store i32 %cond13, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !63
  %41 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !63
  store i32 %41, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !63
  br label %omp.inner.for.cond, !llvm.loop !64

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %42 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %43 = load i32, ptr %42, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %43)
  %44 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %46 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub14 = sub nsw i32 %46, 0
  %div15 = sdiv i32 %sub14, 1
  %mul = mul nsw i32 %div15, 1
  %add16 = add nsw i32 0, %mul
  store i32 %add16, ptr %i3.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i3) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.12(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef %ycoefs, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %4 to i32
  %5 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %5 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i4) #3
  %6 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %7 = load i32, ptr %6, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %7, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %8 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %8, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %9 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !66
  %conv5 = sext i32 %9 to i64
  %10 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30, !llvm.access.group !66
  %cmp6 = icmp ule i64 %conv5, %10
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !66
  %mul = mul nsw i32 %11, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !66
  %12 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !66
  %13 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !66
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds double, ptr %12, i64 %idxprom
  %14 = load double, ptr %arrayidx, align 8, !tbaa !43, !llvm.access.group !66
  %15 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !66
  %16 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !66
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds double, ptr %15, i64 %idxprom7
  %17 = load double, ptr %arrayidx8, align 8, !tbaa !43, !llvm.access.group !66
  %add9 = fadd contract double %17, %14
  store double %add9, ptr %arrayidx8, align 8, !tbaa !43, !llvm.access.group !66
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !66
  %19 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !66
  %add10 = add nsw i32 %18, %19
  store i32 %add10, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !66
  br label %omp.inner.for.cond, !llvm.loop !67

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %20 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %21 = load i32, ptr %20, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %21)
  %22 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %24 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub11 = sub nsw i32 %24, 0
  %div12 = sdiv i32 %sub11, 1
  %mul13 = mul nsw i32 %div12, 1
  %add14 = add nsw i32 0, %mul13
  store i32 %add14, ptr %i4.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l205(i64 noundef %n, ptr noundef %ycoefs, i64 noundef %alpha, ptr noundef %xcoefs) #0 {
entry:
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %alpha.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %alpha.casted.ascast = addrspacecast ptr addrspace(5) %alpha.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %0 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %0, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %1 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %2 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %2, ptr %n.casted.ascast, align 4, !tbaa !36
  %3 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %4 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %5 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43
  store double %5, ptr %alpha.casted.ascast, align 8, !tbaa !43
  %6 = load i64, ptr %alpha.casted.ascast, align 8, !tbaa !30
  %7 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %1, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__.13(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %3, ptr %4, i64 %6, ptr %7) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.13(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef %ycoefs, i64 noundef %alpha, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i3 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %alpha.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [6 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i3.ascast = addrspacecast ptr addrspace(5) %i3 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %alpha.casted.ascast = addrspacecast ptr addrspace(5) %alpha.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i3) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %4 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %5, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %6 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %7 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %8 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %9 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %10 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %10, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end12, %cond.end
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %12 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %add = add nsw i32 %12, 1
  %cmp5 = icmp slt i32 %11, %add
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, ptr %.omp.comb.lb.ascast, align 4, !llvm.access.group !69
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %.omp.comb.ub.ascast, align 4, !llvm.access.group !69
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36, !llvm.access.group !69
  store i32 %17, ptr %n.casted.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %18 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30, !llvm.access.group !69
  %19 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !69
  %20 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43, !llvm.access.group !69
  store double %20, ptr %alpha.casted.ascast, align 8, !tbaa !43, !llvm.access.group !69
  %21 = load i64, ptr %alpha.casted.ascast, align 8, !tbaa !30, !llvm.access.group !69
  %22 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !69
  %23 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %24 = inttoptr i64 %14 to ptr
  store ptr %24, ptr %23, align 8, !tbaa !34, !llvm.access.group !69
  %25 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %26 = inttoptr i64 %16 to ptr
  store ptr %26, ptr %25, align 8, !tbaa !34, !llvm.access.group !69
  %27 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %28 = inttoptr i64 %18 to ptr
  store ptr %28, ptr %27, align 8, !tbaa !34, !llvm.access.group !69
  %29 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %19, ptr %29, align 8, !tbaa !34, !llvm.access.group !69
  %30 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  %31 = inttoptr i64 %21 to ptr
  store ptr %31, ptr %30, align 8, !tbaa !34, !llvm.access.group !69
  %32 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 5
  store ptr %22, ptr %32, align 8, !tbaa !34, !llvm.access.group !69
  %33 = load ptr, ptr %.global_tid..addr.ascast, align 8, !llvm.access.group !69
  %34 = load i32, ptr %33, align 4, !tbaa !36, !llvm.access.group !69
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %34, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.14, ptr null, ptr %captured_vars_addrs.ascast, i64 6), !llvm.access.group !69
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %35 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %36 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %add6 = add nsw i32 %35, %36
  store i32 %add6, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %37 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %38 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %add7 = add nsw i32 %37, %38
  store i32 %add7, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %39 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %40 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %add8 = add nsw i32 %39, %40
  store i32 %add8, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %41 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %42 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %cmp9 = icmp sgt i32 %41, %42
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %omp.inner.for.inc
  %43 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !69
  br label %cond.end12

cond.false11:                                     ; preds = %omp.inner.for.inc
  %44 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !69
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %43, %cond.true10 ], [ %44, %cond.false11 ]
  store i32 %cond13, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !69
  %45 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !69
  store i32 %45, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !69
  br label %omp.inner.for.cond, !llvm.loop !70

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %46 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %47 = load i32, ptr %46, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %47)
  %48 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %50 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub14 = sub nsw i32 %50, 0
  %div15 = sdiv i32 %sub14, 1
  %mul = mul nsw i32 %div15, 1
  %add16 = add nsw i32 0, %mul
  store i32 %add16, ptr %i3.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i3) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.14(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef %ycoefs, i64 noundef %alpha, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %4 to i32
  %5 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %5 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i4) #3
  %6 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %7 = load i32, ptr %6, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %7, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %8 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %8, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %9 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !72
  %conv5 = sext i32 %9 to i64
  %10 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30, !llvm.access.group !72
  %cmp6 = icmp ule i64 %conv5, %10
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !72
  %mul = mul nsw i32 %11, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !72
  %12 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43, !llvm.access.group !72
  %13 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !72
  %14 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !72
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds double, ptr %13, i64 %idxprom
  %15 = load double, ptr %arrayidx, align 8, !tbaa !43, !llvm.access.group !72
  %mul7 = fmul contract double %12, %15
  %16 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !72
  %17 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !72
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %16, i64 %idxprom8
  %18 = load double, ptr %arrayidx9, align 8, !tbaa !43, !llvm.access.group !72
  %add10 = fadd contract double %18, %mul7
  store double %add10, ptr %arrayidx9, align 8, !tbaa !43, !llvm.access.group !72
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !72
  %20 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !72
  %add11 = add nsw i32 %19, %20
  store i32 %add11, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !72
  br label %omp.inner.for.cond, !llvm.loop !73

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %21 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %22 = load i32, ptr %21, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %22)
  %23 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %25 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub12 = sub nsw i32 %25, 0
  %div13 = sdiv i32 %sub12, 1
  %mul14 = mul nsw i32 %div13, 1
  %add15 = add nsw i32 0, %mul14
  store i32 %add15, ptr %i4.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l210(i64 noundef %n, ptr noundef %ycoefs, ptr noundef %xcoefs, i64 noundef %beta) #0 {
entry:
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %beta.addr = alloca i64, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %beta.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %beta.addr.ascast = addrspacecast ptr addrspace(5) %beta.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %beta.casted.ascast = addrspacecast ptr addrspace(5) %beta.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %beta, ptr %beta.addr.ascast, align 8, !tbaa !30
  %0 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %0, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %1 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %2 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %2, ptr %n.casted.ascast, align 4, !tbaa !36
  %3 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %4 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %5 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %6 = load double, ptr %beta.addr.ascast, align 8, !tbaa !43
  store double %6, ptr %beta.casted.ascast, align 8, !tbaa !43
  %7 = load i64, ptr %beta.casted.ascast, align 8, !tbaa !30
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %1, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__.15(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %3, ptr %4, ptr %5, i64 %7) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.15(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef %ycoefs, ptr noundef %xcoefs, i64 noundef %beta) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %beta.addr = alloca i64, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i3 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %beta.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [6 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %beta.addr.ascast = addrspacecast ptr addrspace(5) %beta.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i3.ascast = addrspacecast ptr addrspace(5) %i3 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %beta.casted.ascast = addrspacecast ptr addrspace(5) %beta.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %beta, ptr %beta.addr.ascast, align 8, !tbaa !30
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i3) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %4 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %5, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %6 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %7 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %8 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %9 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %10 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %10, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end12, %cond.end
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %12 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %add = add nsw i32 %12, 1
  %cmp5 = icmp slt i32 %11, %add
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, ptr %.omp.comb.lb.ascast, align 4, !llvm.access.group !75
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %.omp.comb.ub.ascast, align 4, !llvm.access.group !75
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36, !llvm.access.group !75
  store i32 %17, ptr %n.casted.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %18 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30, !llvm.access.group !75
  %19 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !75
  %20 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !75
  %21 = load double, ptr %beta.addr.ascast, align 8, !tbaa !43, !llvm.access.group !75
  store double %21, ptr %beta.casted.ascast, align 8, !tbaa !43, !llvm.access.group !75
  %22 = load i64, ptr %beta.casted.ascast, align 8, !tbaa !30, !llvm.access.group !75
  %23 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %24 = inttoptr i64 %14 to ptr
  store ptr %24, ptr %23, align 8, !tbaa !34, !llvm.access.group !75
  %25 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %26 = inttoptr i64 %16 to ptr
  store ptr %26, ptr %25, align 8, !tbaa !34, !llvm.access.group !75
  %27 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %28 = inttoptr i64 %18 to ptr
  store ptr %28, ptr %27, align 8, !tbaa !34, !llvm.access.group !75
  %29 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %19, ptr %29, align 8, !tbaa !34, !llvm.access.group !75
  %30 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %20, ptr %30, align 8, !tbaa !34, !llvm.access.group !75
  %31 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 5
  %32 = inttoptr i64 %22 to ptr
  store ptr %32, ptr %31, align 8, !tbaa !34, !llvm.access.group !75
  %33 = load ptr, ptr %.global_tid..addr.ascast, align 8, !llvm.access.group !75
  %34 = load i32, ptr %33, align 4, !tbaa !36, !llvm.access.group !75
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %34, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.16, ptr null, ptr %captured_vars_addrs.ascast, i64 6), !llvm.access.group !75
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %35 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %36 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %add6 = add nsw i32 %35, %36
  store i32 %add6, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %37 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %38 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %add7 = add nsw i32 %37, %38
  store i32 %add7, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %39 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %40 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %add8 = add nsw i32 %39, %40
  store i32 %add8, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %41 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %42 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %cmp9 = icmp sgt i32 %41, %42
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %omp.inner.for.inc
  %43 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !75
  br label %cond.end12

cond.false11:                                     ; preds = %omp.inner.for.inc
  %44 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !75
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %43, %cond.true10 ], [ %44, %cond.false11 ]
  store i32 %cond13, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !75
  %45 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !75
  store i32 %45, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !75
  br label %omp.inner.for.cond, !llvm.loop !76

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %46 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %47 = load i32, ptr %46, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %47)
  %48 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %50 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub14 = sub nsw i32 %50, 0
  %div15 = sdiv i32 %sub14, 1
  %mul = mul nsw i32 %div15, 1
  %add16 = add nsw i32 0, %mul
  store i32 %add16, ptr %i3.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i3) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.16(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef %ycoefs, ptr noundef %xcoefs, i64 noundef %beta) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %beta.addr = alloca i64, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %beta.addr.ascast = addrspacecast ptr addrspace(5) %beta.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %beta, ptr %beta.addr.ascast, align 8, !tbaa !30
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %4 to i32
  %5 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %5 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i4) #3
  %6 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %7 = load i32, ptr %6, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %7, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %8 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %8, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %9 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !78
  %conv5 = sext i32 %9 to i64
  %10 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30, !llvm.access.group !78
  %cmp6 = icmp ule i64 %conv5, %10
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !78
  %mul = mul nsw i32 %11, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !78
  %12 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !78
  %13 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !78
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds double, ptr %12, i64 %idxprom
  %14 = load double, ptr %arrayidx, align 8, !tbaa !43, !llvm.access.group !78
  %15 = load double, ptr %beta.addr.ascast, align 8, !tbaa !43, !llvm.access.group !78
  %16 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !78
  %17 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !78
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds double, ptr %16, i64 %idxprom7
  %18 = load double, ptr %arrayidx8, align 8, !tbaa !43, !llvm.access.group !78
  %mul9 = fmul contract double %15, %18
  %add10 = fadd contract double %14, %mul9
  %19 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !78
  %20 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !78
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds double, ptr %19, i64 %idxprom11
  store double %add10, ptr %arrayidx12, align 8, !tbaa !43, !llvm.access.group !78
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !78
  %22 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !78
  %add13 = add nsw i32 %21, %22
  store i32 %add13, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !78
  br label %omp.inner.for.cond, !llvm.loop !79

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %24 = load i32, ptr %23, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %24)
  %25 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %27 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub14 = sub nsw i32 %27, 0
  %div15 = sdiv i32 %sub14, 1
  %mul16 = mul nsw i32 %div15, 1
  %add17 = add nsw i32 0, %mul16
  store i32 %add17, ptr %i4.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l215(i64 noundef %n, ptr noundef %ycoefs, i64 noundef %alpha, ptr noundef %xcoefs) #0 {
entry:
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %alpha.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %alpha.casted.ascast = addrspacecast ptr addrspace(5) %alpha.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %0 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %0, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %1 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %2 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %2, ptr %n.casted.ascast, align 4, !tbaa !36
  %3 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %4 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %5 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43
  store double %5, ptr %alpha.casted.ascast, align 8, !tbaa !43
  %6 = load i64, ptr %alpha.casted.ascast, align 8, !tbaa !30
  %7 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %1, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__.17(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %3, ptr %4, i64 %6, ptr %7) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.17(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef %ycoefs, i64 noundef %alpha, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i3 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %alpha.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [6 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i3.ascast = addrspacecast ptr addrspace(5) %i3 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %alpha.casted.ascast = addrspacecast ptr addrspace(5) %alpha.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i3) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %4 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %5, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %6 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %7 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %8 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %9 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %10 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %10, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end12, %cond.end
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %12 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %add = add nsw i32 %12, 1
  %cmp5 = icmp slt i32 %11, %add
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, ptr %.omp.comb.lb.ascast, align 4, !llvm.access.group !81
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %.omp.comb.ub.ascast, align 4, !llvm.access.group !81
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36, !llvm.access.group !81
  store i32 %17, ptr %n.casted.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %18 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30, !llvm.access.group !81
  %19 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !81
  %20 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43, !llvm.access.group !81
  store double %20, ptr %alpha.casted.ascast, align 8, !tbaa !43, !llvm.access.group !81
  %21 = load i64, ptr %alpha.casted.ascast, align 8, !tbaa !30, !llvm.access.group !81
  %22 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !81
  %23 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %24 = inttoptr i64 %14 to ptr
  store ptr %24, ptr %23, align 8, !tbaa !34, !llvm.access.group !81
  %25 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %26 = inttoptr i64 %16 to ptr
  store ptr %26, ptr %25, align 8, !tbaa !34, !llvm.access.group !81
  %27 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %28 = inttoptr i64 %18 to ptr
  store ptr %28, ptr %27, align 8, !tbaa !34, !llvm.access.group !81
  %29 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %19, ptr %29, align 8, !tbaa !34, !llvm.access.group !81
  %30 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  %31 = inttoptr i64 %21 to ptr
  store ptr %31, ptr %30, align 8, !tbaa !34, !llvm.access.group !81
  %32 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 5
  store ptr %22, ptr %32, align 8, !tbaa !34, !llvm.access.group !81
  %33 = load ptr, ptr %.global_tid..addr.ascast, align 8, !llvm.access.group !81
  %34 = load i32, ptr %33, align 4, !tbaa !36, !llvm.access.group !81
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %34, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.18, ptr null, ptr %captured_vars_addrs.ascast, i64 6), !llvm.access.group !81
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %35 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %36 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %add6 = add nsw i32 %35, %36
  store i32 %add6, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %37 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %38 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %add7 = add nsw i32 %37, %38
  store i32 %add7, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %39 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %40 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %add8 = add nsw i32 %39, %40
  store i32 %add8, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %41 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %42 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %cmp9 = icmp sgt i32 %41, %42
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %omp.inner.for.inc
  %43 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !81
  br label %cond.end12

cond.false11:                                     ; preds = %omp.inner.for.inc
  %44 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !81
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %43, %cond.true10 ], [ %44, %cond.false11 ]
  store i32 %cond13, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !81
  %45 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !81
  store i32 %45, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !81
  br label %omp.inner.for.cond, !llvm.loop !82

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %46 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %47 = load i32, ptr %46, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %47)
  %48 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %50 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub14 = sub nsw i32 %50, 0
  %div15 = sdiv i32 %sub14, 1
  %mul = mul nsw i32 %div15, 1
  %add16 = add nsw i32 0, %mul
  store i32 %add16, ptr %i3.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i3) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.18(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef %ycoefs, i64 noundef %alpha, ptr noundef %xcoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %4 to i32
  %5 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %5 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i4) #3
  %6 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %7 = load i32, ptr %6, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %7, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %8 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %8, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %9 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !84
  %conv5 = sext i32 %9 to i64
  %10 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30, !llvm.access.group !84
  %cmp6 = icmp ule i64 %conv5, %10
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !84
  %mul = mul nsw i32 %11, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !84
  %12 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43, !llvm.access.group !84
  %13 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !84
  %14 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !84
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds double, ptr %13, i64 %idxprom
  %15 = load double, ptr %arrayidx, align 8, !tbaa !43, !llvm.access.group !84
  %mul7 = fmul contract double %12, %15
  %16 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !84
  %17 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !84
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %16, i64 %idxprom8
  store double %mul7, ptr %arrayidx9, align 8, !tbaa !43, !llvm.access.group !84
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !84
  %19 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !84
  %add10 = add nsw i32 %18, %19
  store i32 %add10, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !84
  br label %omp.inner.for.cond, !llvm.loop !85

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %20 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %21 = load i32, ptr %20, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %21)
  %22 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %24 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub11 = sub nsw i32 %24, 0
  %div12 = sdiv i32 %sub11, 1
  %mul13 = mul nsw i32 %div12, 1
  %add14 = add nsw i32 0, %mul13
  store i32 %add14, ptr %i4.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l220(i64 noundef %n, ptr noundef %ycoefs, i64 noundef %alpha, ptr noundef %xcoefs, i64 noundef %beta) #0 {
entry:
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %beta.addr = alloca i64, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %alpha.casted = alloca i64, align 8, addrspace(5)
  %beta.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %beta.addr.ascast = addrspacecast ptr addrspace(5) %beta.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %alpha.casted.ascast = addrspacecast ptr addrspace(5) %alpha.casted to ptr
  %beta.casted.ascast = addrspacecast ptr addrspace(5) %beta.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %beta, ptr %beta.addr.ascast, align 8, !tbaa !30
  %0 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %0, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %1 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %2 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %2, ptr %n.casted.ascast, align 4, !tbaa !36
  %3 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %4 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %5 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43
  store double %5, ptr %alpha.casted.ascast, align 8, !tbaa !43
  %6 = load i64, ptr %alpha.casted.ascast, align 8, !tbaa !30
  %7 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %8 = load double, ptr %beta.addr.ascast, align 8, !tbaa !43
  store double %8, ptr %beta.casted.ascast, align 8, !tbaa !43
  %9 = load i64, ptr %beta.casted.ascast, align 8, !tbaa !30
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %1, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__.19(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %3, ptr %4, i64 %6, ptr %7, i64 %9) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.19(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef %ycoefs, i64 noundef %alpha, ptr noundef %xcoefs, i64 noundef %beta) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %beta.addr = alloca i64, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i3 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %alpha.casted = alloca i64, align 8, addrspace(5)
  %beta.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [7 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %beta.addr.ascast = addrspacecast ptr addrspace(5) %beta.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i3.ascast = addrspacecast ptr addrspace(5) %i3 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %alpha.casted.ascast = addrspacecast ptr addrspace(5) %alpha.casted to ptr
  %beta.casted.ascast = addrspacecast ptr addrspace(5) %beta.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %beta, ptr %beta.addr.ascast, align 8, !tbaa !30
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i3) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %4 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %5, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %6 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %7 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %8 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %9 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %10 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %10, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end12, %cond.end
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %12 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %add = add nsw i32 %12, 1
  %cmp5 = icmp slt i32 %11, %add
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, ptr %.omp.comb.lb.ascast, align 4, !llvm.access.group !87
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %.omp.comb.ub.ascast, align 4, !llvm.access.group !87
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36, !llvm.access.group !87
  store i32 %17, ptr %n.casted.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %18 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30, !llvm.access.group !87
  %19 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !87
  %20 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43, !llvm.access.group !87
  store double %20, ptr %alpha.casted.ascast, align 8, !tbaa !43, !llvm.access.group !87
  %21 = load i64, ptr %alpha.casted.ascast, align 8, !tbaa !30, !llvm.access.group !87
  %22 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !87
  %23 = load double, ptr %beta.addr.ascast, align 8, !tbaa !43, !llvm.access.group !87
  store double %23, ptr %beta.casted.ascast, align 8, !tbaa !43, !llvm.access.group !87
  %24 = load i64, ptr %beta.casted.ascast, align 8, !tbaa !30, !llvm.access.group !87
  %25 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %26 = inttoptr i64 %14 to ptr
  store ptr %26, ptr %25, align 8, !tbaa !34, !llvm.access.group !87
  %27 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %28 = inttoptr i64 %16 to ptr
  store ptr %28, ptr %27, align 8, !tbaa !34, !llvm.access.group !87
  %29 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %30 = inttoptr i64 %18 to ptr
  store ptr %30, ptr %29, align 8, !tbaa !34, !llvm.access.group !87
  %31 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %19, ptr %31, align 8, !tbaa !34, !llvm.access.group !87
  %32 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  %33 = inttoptr i64 %21 to ptr
  store ptr %33, ptr %32, align 8, !tbaa !34, !llvm.access.group !87
  %34 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 5
  store ptr %22, ptr %34, align 8, !tbaa !34, !llvm.access.group !87
  %35 = getelementptr inbounds [7 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 6
  %36 = inttoptr i64 %24 to ptr
  store ptr %36, ptr %35, align 8, !tbaa !34, !llvm.access.group !87
  %37 = load ptr, ptr %.global_tid..addr.ascast, align 8, !llvm.access.group !87
  %38 = load i32, ptr %37, align 4, !tbaa !36, !llvm.access.group !87
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %38, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.20, ptr null, ptr %captured_vars_addrs.ascast, i64 7), !llvm.access.group !87
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %39 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %40 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %add6 = add nsw i32 %39, %40
  store i32 %add6, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %41 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %42 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %add7 = add nsw i32 %41, %42
  store i32 %add7, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %43 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %44 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %add8 = add nsw i32 %43, %44
  store i32 %add8, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %45 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %46 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %cmp9 = icmp sgt i32 %45, %46
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %omp.inner.for.inc
  %47 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36, !llvm.access.group !87
  br label %cond.end12

cond.false11:                                     ; preds = %omp.inner.for.inc
  %48 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !87
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %47, %cond.true10 ], [ %48, %cond.false11 ]
  store i32 %cond13, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36, !llvm.access.group !87
  %49 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36, !llvm.access.group !87
  store i32 %49, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !87
  br label %omp.inner.for.cond, !llvm.loop !88

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %50 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %51 = load i32, ptr %50, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %51)
  %52 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %54 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub14 = sub nsw i32 %54, 0
  %div15 = sdiv i32 %sub14, 1
  %mul = mul nsw i32 %div15, 1
  %add16 = add nsw i32 0, %mul
  store i32 %add16, ptr %i3.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i3) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.20(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef %ycoefs, i64 noundef %alpha, ptr noundef %xcoefs, i64 noundef %beta) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %alpha.addr = alloca i64, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %beta.addr = alloca i64, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %alpha.addr.ascast = addrspacecast ptr addrspace(5) %alpha.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %beta.addr.ascast = addrspacecast ptr addrspace(5) %beta.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i64 %alpha, ptr %alpha.addr.ascast, align 8, !tbaa !30
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store i64 %beta, ptr %beta.addr.ascast, align 8, !tbaa !30
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %4 to i32
  %5 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %5 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i4) #3
  %6 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %7 = load i32, ptr %6, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %7, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %8 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %8, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %9 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !90
  %conv5 = sext i32 %9 to i64
  %10 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30, !llvm.access.group !90
  %cmp6 = icmp ule i64 %conv5, %10
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !90
  %mul = mul nsw i32 %11, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !90
  %12 = load double, ptr %alpha.addr.ascast, align 8, !tbaa !43, !llvm.access.group !90
  %13 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !90
  %14 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !90
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds double, ptr %13, i64 %idxprom
  %15 = load double, ptr %arrayidx, align 8, !tbaa !43, !llvm.access.group !90
  %mul7 = fmul contract double %12, %15
  %16 = load double, ptr %beta.addr.ascast, align 8, !tbaa !43, !llvm.access.group !90
  %17 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !90
  %18 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !90
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %17, i64 %idxprom8
  %19 = load double, ptr %arrayidx9, align 8, !tbaa !43, !llvm.access.group !90
  %mul10 = fmul contract double %16, %19
  %add11 = fadd contract double %mul7, %mul10
  %20 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34, !llvm.access.group !90
  %21 = load i32, ptr %i4.ascast, align 4, !tbaa !36, !llvm.access.group !90
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds double, ptr %20, i64 %idxprom12
  store double %add11, ptr %arrayidx13, align 8, !tbaa !43, !llvm.access.group !90
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !90
  %23 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36, !llvm.access.group !90
  %add14 = add nsw i32 %22, %23
  store i32 %add14, ptr %.omp.iv.ascast, align 4, !tbaa !36, !llvm.access.group !90
  br label %omp.inner.for.cond, !llvm.loop !91

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %25 = load i32, ptr %24, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %25)
  %26 = load i32, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %.omp.final.then, label %.omp.final.done

.omp.final.then:                                  ; preds = %omp.loop.exit
  %28 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub15 = sub nsw i32 %28, 0
  %div16 = sdiv i32 %sub15, 1
  %mul17 = mul nsw i32 %div16, 1
  %add18 = add nsw i32 0, %mul17
  store i32 %add18, ptr %i4.ascast, align 4, !tbaa !36
  br label %.omp.final.done

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_4a7455e3__ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9__l254(i64 noundef %n, ptr noundef nonnull align 8 dereferenceable(8) %result, ptr noundef %xcoefs, ptr noundef %ycoefs) #0 {
entry:
  %n.addr = alloca i64, align 8, addrspace(5)
  %result.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %result.addr.ascast = addrspacecast ptr addrspace(5) %result.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %result, ptr %result.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %0 = load ptr, ptr %result.addr.ascast, align 8, !tbaa !34
  %1 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %1, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %3 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %3, ptr %n.casted.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %5 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %6 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %2, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__.21(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %4, ptr %0, ptr %5, ptr %6) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.21(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef nonnull align 8 dereferenceable(8) %result, ptr noundef %xcoefs, ptr noundef %ycoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %result.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %result1 = alloca double, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.2 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [6 x ptr], align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %result.addr.ascast = addrspacecast ptr addrspace(5) %result.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %result1.ascast = addrspacecast ptr addrspace(5) %result1 to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.2.ascast = addrspacecast ptr addrspace(5) %.capture_expr.2 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %result, ptr %result.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %0 = load ptr, ptr %result.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %result1) #3
  store double 0.000000e+00, ptr %result1.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %1 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %1, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.2) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %2, 0
  %div = sdiv i32 %sub, 1
  %sub3 = sub nsw i32 %div, 1
  store i32 %sub3, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %3 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %3
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %4 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  store i32 %4, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i4) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %5 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %6 = load i32, ptr %5, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %6, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %7 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %8 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  %cmp5 = icmp sgt i32 %7, %8
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %9 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %10 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %11 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %11, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end13, %cond.end
  %12 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %13 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  %add = add nsw i32 %13, 1
  %cmp6 = icmp slt i32 %12, %add
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %18, ptr %n.casted.ascast, align 4, !tbaa !36
  %19 = load i64, ptr %n.casted.ascast, align 8, !tbaa !30
  %20 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %21 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %22 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %23 = inttoptr i64 %15 to ptr
  store ptr %23, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %25 = inttoptr i64 %17 to ptr
  store ptr %25, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %27 = inttoptr i64 %19 to ptr
  store ptr %27, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %result1.ascast, ptr %28, align 8, !tbaa !34
  %29 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %20, ptr %29, align 8, !tbaa !34
  %30 = getelementptr inbounds [6 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 5
  store ptr %21, ptr %30, align 8, !tbaa !34
  %31 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %32 = load i32, ptr %31, align 4, !tbaa !36
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %32, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.22, ptr null, ptr %captured_vars_addrs.ascast, i64 6)
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %33 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %34 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add7 = add nsw i32 %33, %34
  store i32 %add7, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %35 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  %36 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add8 = add nsw i32 %35, %36
  store i32 %add8, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  %37 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %38 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add9 = add nsw i32 %37, %38
  store i32 %add9, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %39 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %40 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  %cmp10 = icmp sgt i32 %39, %40
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %omp.inner.for.inc
  %41 = load i32, ptr %.capture_expr.2.ascast, align 4, !tbaa !36
  br label %cond.end13

cond.false12:                                     ; preds = %omp.inner.for.inc
  %42 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i32 [ %41, %cond.true11 ], [ %42, %cond.false12 ]
  store i32 %cond14, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %43 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %43, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %44 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %45 = load i32, ptr %44, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %45)
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i4) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.2) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  %46 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %result1.ascast, ptr %48, align 8
  %49 = load ptr, ptr addrspace(1) @"_openmp_teams_reductions_buffer_$_$ptr", align 8, !tbaa !34
  %50 = call i32 @__kmpc_nvptx_teams_reduce_nowait_v2(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %47, ptr %49, i32 1024, ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func.27, ptr @_omp_reduction_inter_warp_copy_func.28, ptr @_omp_reduction_list_to_global_copy_func.29, ptr @_omp_reduction_list_to_global_reduce_func.30, ptr @_omp_reduction_global_to_list_copy_func.31, ptr @_omp_reduction_global_to_list_reduce_func.32)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %.omp.reduction.then, label %.omp.reduction.done

.omp.reduction.then:                              ; preds = %omp.precond.end
  %52 = load double, ptr %0, align 8, !tbaa !43
  %53 = load double, ptr %result1.ascast, align 8, !tbaa !43
  %add15 = fadd contract double %52, %53
  store double %add15, ptr %0, align 8, !tbaa !43
  call void @__kmpc_nvptx_end_reduce_nowait(i32 %47)
  br label %.omp.reduction.done

.omp.reduction.done:                              ; preds = %.omp.reduction.then, %omp.precond.end
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %result1) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.22(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef nonnull align 8 dereferenceable(8) %result, ptr noundef %xcoefs, ptr noundef %ycoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %result.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %result4 = alloca double, align 8, addrspace(5)
  %i5 = alloca i32, align 4, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %result.addr.ascast = addrspacecast ptr addrspace(5) %result.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %result4.ascast = addrspacecast ptr addrspace(5) %result4 to ptr
  %i5.ascast = addrspacecast ptr addrspace(5) %i5 to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %n, ptr %n.addr.ascast, align 8, !tbaa !30
  store ptr %result, ptr %result.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %0 = load ptr, ptr %result.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %1 = load i32, ptr %n.addr.ascast, align 4, !tbaa !36
  store i32 %1, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %2, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  store i32 0, ptr %i.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  %3 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %3
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %4 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %4, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %5 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %5 to i32
  %6 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %6 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %result4) #3
  store double 0.000000e+00, ptr %result4.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i5) #3
  %7 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %8 = load i32, ptr %7, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %8, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %9 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %9, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %10 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %conv6 = sext i32 %10 to i64
  %11 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %cmp7 = icmp ule i64 %conv6, %11
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %mul = mul nsw i32 %12, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i5.ascast, align 4, !tbaa !36
  %13 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %14 = load i32, ptr %i5.ascast, align 4, !tbaa !36
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds double, ptr %13, i64 %idxprom
  %15 = load double, ptr %arrayidx, align 8, !tbaa !43
  %16 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %17 = load i32, ptr %i5.ascast, align 4, !tbaa !36
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %16, i64 %idxprom8
  %18 = load double, ptr %arrayidx9, align 8, !tbaa !43
  %mul10 = fmul contract double %15, %18
  %19 = load double, ptr %result4.ascast, align 8, !tbaa !43
  %add11 = fadd contract double %19, %mul10
  store double %add11, ptr %result4.ascast, align 8, !tbaa !43
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %21 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add12 = add nsw i32 %20, %21
  store i32 %add12, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %23 = load i32, ptr %22, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %23)
  %24 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %25 = load i32, ptr %24, align 4, !tbaa !36
  %26 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %result4.ascast, ptr %26, align 8
  %27 = call i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %25, i32 1, i64 8, ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func.24, ptr @_omp_reduction_inter_warp_copy_func.25)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %.omp.reduction.then, label %.omp.reduction.done

.omp.reduction.then:                              ; preds = %omp.loop.exit
  %29 = load double, ptr %0, align 8, !tbaa !43
  %30 = load double, ptr %result4.ascast, align 8, !tbaa !43
  %add13 = fadd contract double %29, %30
  store double %add13, ptr %0, align 8, !tbaa !43
  call void @__kmpc_nvptx_end_reduce_nowait(i32 %25)
  br label %.omp.reduction.done

.omp.reduction.done:                              ; preds = %.omp.reduction.then, %omp.loop.exit
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i5) #3
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %result4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.reduction.done, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @"_omp$reduction$reduction_func.23"(ptr noundef %0, ptr noundef %1) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store ptr %1, ptr %.addr1.ascast, align 8, !tbaa !34
  %2 = load ptr, ptr %.addr.ascast, align 8
  %3 = load ptr, ptr %.addr1.ascast, align 8
  %4 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds [1 x ptr], ptr %2, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = load double, ptr %7, align 8, !tbaa !43
  %9 = load double, ptr %5, align 8, !tbaa !43
  %add = fadd contract double %8, %9
  store double %add, ptr %7, align 8, !tbaa !43
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_shuffle_and_reduce_func.24(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i16, align 2, addrspace(5)
  %.addr2 = alloca i16, align 2, addrspace(5)
  %.addr3 = alloca i16, align 2, addrspace(5)
  %.omp.reduction.remote_reduce_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.element = alloca double, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.addr3.ascast = addrspacecast ptr addrspace(5) %.addr3 to ptr
  %.omp.reduction.remote_reduce_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.remote_reduce_list to ptr
  %.omp.reduction.element.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.element to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i16 %1, ptr %.addr1.ascast, align 2, !tbaa !59
  store i16 %2, ptr %.addr2.ascast, align 2, !tbaa !59
  store i16 %3, ptr %.addr3.ascast, align 2, !tbaa !59
  %4 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %5 = load i16, ptr %.addr1.ascast, align 2, !tbaa !59
  %6 = load i16, ptr %.addr2.ascast, align 2, !tbaa !59
  %7 = load i16, ptr %.addr3.ascast, align 2, !tbaa !59
  %8 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %11 = getelementptr double, ptr %9, i64 1
  %12 = load i64, ptr %9, align 8
  %13 = call i32 @__kmpc_get_warp_size()
  %14 = trunc i32 %13 to i16
  %15 = call i64 @__kmpc_shuffle_int64(i64 %12, i16 %6, i16 %14)
  store i64 %15, ptr %.omp.reduction.element.ascast, align 8
  %16 = getelementptr i64, ptr %9, i64 1
  %17 = getelementptr i64, ptr %.omp.reduction.element.ascast, i64 1
  store ptr %.omp.reduction.element.ascast, ptr %10, align 8, !tbaa !34
  %18 = icmp eq i16 %7, 0
  %19 = icmp eq i16 %7, 1
  %20 = icmp ult i16 %5, %6
  %21 = and i1 %19, %20
  %22 = icmp eq i16 %7, 2
  %23 = and i16 %5, 1
  %24 = icmp eq i16 %23, 0
  %25 = and i1 %22, %24
  %26 = icmp sgt i16 %6, 0
  %27 = and i1 %25, %26
  %28 = or i1 %18, %21
  %29 = or i1 %28, %27
  br i1 %29, label %then, label %else

then:                                             ; preds = %entry
  call void @"_omp$reduction$reduction_func.23"(ptr %4, ptr %.omp.reduction.remote_reduce_list.ascast) #3
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %30 = icmp eq i16 %7, 1
  %31 = icmp uge i16 %5, %6
  %32 = and i1 %30, %31
  br i1 %32, label %then4, label %else5

then4:                                            ; preds = %ifcont
  %33 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %36 = load ptr, ptr %35, align 8
  %37 = load double, ptr %34, align 8
  store double %37, ptr %36, align 8
  br label %ifcont6

else5:                                            ; preds = %ifcont
  br label %ifcont6

ifcont6:                                          ; preds = %else5, %then4
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_inter_warp_copy_func.25(ptr noundef %0, i32 noundef %1) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.cnt.addr = alloca i32, align 4, addrspace(5)
  %2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.cnt.addr.ascast = addrspacecast ptr addrspace(5) %.cnt.addr to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  %3 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %4 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_lane_id = and i32 %4, 63
  %5 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_warp_id = ashr i32 %5, 6
  %6 = load ptr, ptr %.addr.ascast, align 8
  store i32 0, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  br label %precond

precond:                                          ; preds = %ifcont4, %entry
  %7 = load i32, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %body, label %exit

body:                                             ; preds = %precond
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %2)
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %else

then:                                             ; preds = %body
  %9 = getelementptr inbounds [1 x ptr], ptr %6, i64 0, i64 0
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr i32, ptr %10, i32 %7
  %12 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %nvptx_warp_id
  %13 = load i32, ptr %11, align 4
  store volatile i32 %13, ptr addrspace(3) %12, align 4
  br label %ifcont

else:                                             ; preds = %body
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %2)
  %14 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %is_active_thread = icmp ult i32 %3, %14
  br i1 %is_active_thread, label %then2, label %else3

then2:                                            ; preds = %ifcont
  %15 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %3
  %16 = getelementptr inbounds [1 x ptr], ptr %6, i64 0, i64 0
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr i32, ptr %17, i32 %7
  %19 = load volatile i32, ptr addrspace(3) %15, align 4, !tbaa !36
  store i32 %19, ptr %18, align 4, !tbaa !36
  br label %ifcont4

else3:                                            ; preds = %ifcont
  br label %ifcont4

ifcont4:                                          ; preds = %else3, %then2
  %20 = add nsw i32 %7, 1
  store i32 %20, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  br label %precond

exit:                                             ; preds = %precond
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @"_omp$reduction$reduction_func.26"(ptr noundef %0, ptr noundef %1) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store ptr %1, ptr %.addr1.ascast, align 8, !tbaa !34
  %2 = load ptr, ptr %.addr.ascast, align 8
  %3 = load ptr, ptr %.addr1.ascast, align 8
  %4 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds [1 x ptr], ptr %2, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = load double, ptr %7, align 8, !tbaa !43
  %9 = load double, ptr %5, align 8, !tbaa !43
  %add = fadd contract double %8, %9
  store double %add, ptr %7, align 8, !tbaa !43
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_shuffle_and_reduce_func.27(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i16, align 2, addrspace(5)
  %.addr2 = alloca i16, align 2, addrspace(5)
  %.addr3 = alloca i16, align 2, addrspace(5)
  %.omp.reduction.remote_reduce_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.element = alloca double, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.addr3.ascast = addrspacecast ptr addrspace(5) %.addr3 to ptr
  %.omp.reduction.remote_reduce_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.remote_reduce_list to ptr
  %.omp.reduction.element.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.element to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i16 %1, ptr %.addr1.ascast, align 2, !tbaa !59
  store i16 %2, ptr %.addr2.ascast, align 2, !tbaa !59
  store i16 %3, ptr %.addr3.ascast, align 2, !tbaa !59
  %4 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %5 = load i16, ptr %.addr1.ascast, align 2, !tbaa !59
  %6 = load i16, ptr %.addr2.ascast, align 2, !tbaa !59
  %7 = load i16, ptr %.addr3.ascast, align 2, !tbaa !59
  %8 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %11 = getelementptr double, ptr %9, i64 1
  %12 = load i64, ptr %9, align 8
  %13 = call i32 @__kmpc_get_warp_size()
  %14 = trunc i32 %13 to i16
  %15 = call i64 @__kmpc_shuffle_int64(i64 %12, i16 %6, i16 %14)
  store i64 %15, ptr %.omp.reduction.element.ascast, align 8
  %16 = getelementptr i64, ptr %9, i64 1
  %17 = getelementptr i64, ptr %.omp.reduction.element.ascast, i64 1
  store ptr %.omp.reduction.element.ascast, ptr %10, align 8, !tbaa !34
  %18 = icmp eq i16 %7, 0
  %19 = icmp eq i16 %7, 1
  %20 = icmp ult i16 %5, %6
  %21 = and i1 %19, %20
  %22 = icmp eq i16 %7, 2
  %23 = and i16 %5, 1
  %24 = icmp eq i16 %23, 0
  %25 = and i1 %22, %24
  %26 = icmp sgt i16 %6, 0
  %27 = and i1 %25, %26
  %28 = or i1 %18, %21
  %29 = or i1 %28, %27
  br i1 %29, label %then, label %else

then:                                             ; preds = %entry
  call void @"_omp$reduction$reduction_func.26"(ptr %4, ptr %.omp.reduction.remote_reduce_list.ascast) #3
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %30 = icmp eq i16 %7, 1
  %31 = icmp uge i16 %5, %6
  %32 = and i1 %30, %31
  br i1 %32, label %then4, label %else5

then4:                                            ; preds = %ifcont
  %33 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %36 = load ptr, ptr %35, align 8
  %37 = load double, ptr %34, align 8
  store double %37, ptr %36, align 8
  br label %ifcont6

else5:                                            ; preds = %ifcont
  br label %ifcont6

ifcont6:                                          ; preds = %else5, %then4
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_inter_warp_copy_func.28(ptr noundef %0, i32 noundef %1) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.cnt.addr = alloca i32, align 4, addrspace(5)
  %2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.cnt.addr.ascast = addrspacecast ptr addrspace(5) %.cnt.addr to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  %3 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %4 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_lane_id = and i32 %4, 63
  %5 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_warp_id = ashr i32 %5, 6
  %6 = load ptr, ptr %.addr.ascast, align 8
  store i32 0, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  br label %precond

precond:                                          ; preds = %ifcont4, %entry
  %7 = load i32, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %body, label %exit

body:                                             ; preds = %precond
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %2)
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %else

then:                                             ; preds = %body
  %9 = getelementptr inbounds [1 x ptr], ptr %6, i64 0, i64 0
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr i32, ptr %10, i32 %7
  %12 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %nvptx_warp_id
  %13 = load i32, ptr %11, align 4
  store volatile i32 %13, ptr addrspace(3) %12, align 4
  br label %ifcont

else:                                             ; preds = %body
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %2)
  %14 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %is_active_thread = icmp ult i32 %3, %14
  br i1 %is_active_thread, label %then2, label %else3

then2:                                            ; preds = %ifcont
  %15 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %3
  %16 = getelementptr inbounds [1 x ptr], ptr %6, i64 0, i64 0
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr i32, ptr %17, i32 %7
  %19 = load volatile i32, ptr addrspace(3) %15, align 4, !tbaa !36
  store i32 %19, ptr %18, align 4, !tbaa !36
  br label %ifcont4

else3:                                            ; preds = %ifcont
  br label %ifcont4

ifcont4:                                          ; preds = %else3, %then2
  %20 = add nsw i32 %7, 1
  store i32 %20, ptr %.cnt.addr.ascast, align 4, !tbaa !36
  br label %precond

exit:                                             ; preds = %precond
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_list_to_global_copy_func.29(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  store ptr %2, ptr %.addr2.ascast, align 8, !tbaa !34
  %3 = load ptr, ptr %.addr2.ascast, align 8, !tbaa !34
  %4 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %5 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %6 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %result = getelementptr inbounds %struct._globalized_locals_ty.0, ptr %4, i32 0, i32 0
  %8 = getelementptr inbounds [1024 x double], ptr %result, i32 0, i32 %5
  %9 = load double, ptr %7, align 8
  store double %9, ptr %8, align 128, !tbaa !61
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_list_to_global_reduce_func.30(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  store ptr %2, ptr %.addr2.ascast, align 8, !tbaa !34
  %3 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %4 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %5 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  %result = getelementptr inbounds %struct._globalized_locals_ty.0, ptr %3, i32 0, i32 0
  %6 = getelementptr inbounds [1024 x double], ptr %result, i32 0, i32 %4
  store ptr %6, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %.addr2.ascast, align 8, !tbaa !34
  call void @"_omp$reduction$reduction_func.26"(ptr %.omp.reduction.red_list.ascast, ptr %7) #3
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_global_to_list_copy_func.31(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  store ptr %2, ptr %.addr2.ascast, align 8, !tbaa !34
  %3 = load ptr, ptr %.addr2.ascast, align 8, !tbaa !34
  %4 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %5 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %6 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %result = getelementptr inbounds %struct._globalized_locals_ty.0, ptr %4, i32 0, i32 0
  %8 = getelementptr inbounds [1024 x double], ptr %result, i32 0, i32 %5
  %9 = load double, ptr %8, align 128, !tbaa !61
  store double %9, ptr %7, align 8
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal void @_omp_reduction_global_to_list_reduce_func.32(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8, !tbaa !34
  store i32 %1, ptr %.addr1.ascast, align 4, !tbaa !36
  store ptr %2, ptr %.addr2.ascast, align 8, !tbaa !34
  %3 = load ptr, ptr %.addr.ascast, align 8, !tbaa !34
  %4 = load i32, ptr %.addr1.ascast, align 4, !tbaa !36
  %5 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  %result = getelementptr inbounds %struct._globalized_locals_ty.0, ptr %3, i32 0, i32 0
  %6 = getelementptr inbounds [1024 x double], ptr %result, i32 0, i32 %4
  store ptr %6, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %.addr2.ascast, align 8, !tbaa !34
  call void @"_omp$reduction$reduction_func.26"(ptr %7, ptr %.omp.reduction.red_list.ascast) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak_odr protected amdgpu_kernel void @__omp_offloading_5a_8ac81b25__ZN6miniFE10matvec_stdINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7__l521(i64 noundef %rows_size, i64 noundef %row_start, ptr noundef %Arowoffsets, i64 noundef %row_end, ptr noundef %Acoefs, ptr noundef %xcoefs, ptr noundef %Acols, ptr noundef %ycoefs) #0 {
entry:
  %rows_size.addr = alloca i64, align 8, addrspace(5)
  %row_start.addr = alloca i64, align 8, addrspace(5)
  %Arowoffsets.addr = alloca ptr, align 8, addrspace(5)
  %row_end.addr = alloca i64, align 8, addrspace(5)
  %Acoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %Acols.addr = alloca ptr, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %rows_size.casted = alloca i64, align 8, addrspace(5)
  %row_start.casted = alloca i64, align 8, addrspace(5)
  %row_end.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %rows_size.addr.ascast = addrspacecast ptr addrspace(5) %rows_size.addr to ptr
  %row_start.addr.ascast = addrspacecast ptr addrspace(5) %row_start.addr to ptr
  %Arowoffsets.addr.ascast = addrspacecast ptr addrspace(5) %Arowoffsets.addr to ptr
  %row_end.addr.ascast = addrspacecast ptr addrspace(5) %row_end.addr to ptr
  %Acoefs.addr.ascast = addrspacecast ptr addrspace(5) %Acoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %Acols.addr.ascast = addrspacecast ptr addrspace(5) %Acols.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %rows_size.casted.ascast = addrspacecast ptr addrspace(5) %rows_size.casted to ptr
  %row_start.casted.ascast = addrspacecast ptr addrspace(5) %row_start.casted to ptr
  %row_end.casted.ascast = addrspacecast ptr addrspace(5) %row_end.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store i64 %rows_size, ptr %rows_size.addr.ascast, align 8, !tbaa !30
  store i64 %row_start, ptr %row_start.addr.ascast, align 8, !tbaa !30
  store ptr %Arowoffsets, ptr %Arowoffsets.addr.ascast, align 8, !tbaa !34
  store i64 %row_end, ptr %row_end.addr.ascast, align 8, !tbaa !30
  store ptr %Acoefs, ptr %Acoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %Acols, ptr %Acols.addr.ascast, align 8, !tbaa !34
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %0 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2, i1 false)
  %exec_user_code = icmp eq i32 %0, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %1 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @1 to ptr))
  %2 = load i32, ptr %rows_size.addr.ascast, align 4, !tbaa !36
  store i32 %2, ptr %rows_size.casted.ascast, align 4, !tbaa !36
  %3 = load i64, ptr %rows_size.casted.ascast, align 8, !tbaa !30
  %4 = load i32, ptr %row_start.addr.ascast, align 4, !tbaa !36
  store i32 %4, ptr %row_start.casted.ascast, align 4, !tbaa !36
  %5 = load i64, ptr %row_start.casted.ascast, align 8, !tbaa !30
  %6 = load ptr, ptr %Arowoffsets.addr.ascast, align 8, !tbaa !34
  %7 = load i32, ptr %row_end.addr.ascast, align 4, !tbaa !36
  store i32 %7, ptr %row_end.casted.ascast, align 4, !tbaa !36
  %8 = load i64, ptr %row_end.casted.ascast, align 8, !tbaa !30
  %9 = load ptr, ptr %Acoefs.addr.ascast, align 8, !tbaa !34
  %10 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %11 = load ptr, ptr %Acols.addr.ascast, align 8, !tbaa !34
  %12 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %1, ptr %.threadid_temp..ascast, align 4, !tbaa !36
  call void @__omp_outlined__.33(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %3, i64 %5, ptr %6, i64 %8, ptr %9, ptr %10, ptr %11, ptr %12) #3
  call void @__kmpc_target_deinit(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i8 2)
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.33(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %rows_size, i64 noundef %row_start, ptr noundef %Arowoffsets, i64 noundef %row_end, ptr noundef %Acoefs, ptr noundef %xcoefs, ptr noundef %Acols, ptr noundef %ycoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %rows_size.addr = alloca i64, align 8, addrspace(5)
  %row_start.addr = alloca i64, align 8, addrspace(5)
  %Arowoffsets.addr = alloca ptr, align 8, addrspace(5)
  %row_end.addr = alloca i64, align 8, addrspace(5)
  %Acoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %Acols.addr = alloca ptr, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %row = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %row3 = alloca i32, align 4, addrspace(5)
  %rows_size.casted = alloca i64, align 8, addrspace(5)
  %row_start.casted = alloca i64, align 8, addrspace(5)
  %row_end.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [10 x ptr], align 8, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %rows_size.addr.ascast = addrspacecast ptr addrspace(5) %rows_size.addr to ptr
  %row_start.addr.ascast = addrspacecast ptr addrspace(5) %row_start.addr to ptr
  %Arowoffsets.addr.ascast = addrspacecast ptr addrspace(5) %Arowoffsets.addr to ptr
  %row_end.addr.ascast = addrspacecast ptr addrspace(5) %row_end.addr to ptr
  %Acoefs.addr.ascast = addrspacecast ptr addrspace(5) %Acoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %Acols.addr.ascast = addrspacecast ptr addrspace(5) %Acols.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %row.ascast = addrspacecast ptr addrspace(5) %row to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %row3.ascast = addrspacecast ptr addrspace(5) %row3 to ptr
  %rows_size.casted.ascast = addrspacecast ptr addrspace(5) %rows_size.casted to ptr
  %row_start.casted.ascast = addrspacecast ptr addrspace(5) %row_start.casted to ptr
  %row_end.casted.ascast = addrspacecast ptr addrspace(5) %row_end.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %rows_size, ptr %rows_size.addr.ascast, align 8, !tbaa !30
  store i64 %row_start, ptr %row_start.addr.ascast, align 8, !tbaa !30
  store ptr %Arowoffsets, ptr %Arowoffsets.addr.ascast, align 8, !tbaa !34
  store i64 %row_end, ptr %row_end.addr.ascast, align 8, !tbaa !30
  store ptr %Acoefs, ptr %Acoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %Acols, ptr %Acols.addr.ascast, align 8, !tbaa !34
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %rows_size.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %row) #3
  store i32 0, ptr %row.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %row) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  store i32 0, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %row3) #3
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %4 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !36
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %5, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %6 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %7 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %8 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %9 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %10 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %10, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end12, %cond.end
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %12 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %add = add nsw i32 %12, 1
  %cmp5 = icmp slt i32 %11, %add
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %rows_size.addr.ascast, align 4, !tbaa !36
  store i32 %17, ptr %rows_size.casted.ascast, align 4, !tbaa !36
  %18 = load i64, ptr %rows_size.casted.ascast, align 8, !tbaa !30
  %19 = load i32, ptr %row_start.addr.ascast, align 4, !tbaa !36
  store i32 %19, ptr %row_start.casted.ascast, align 4, !tbaa !36
  %20 = load i64, ptr %row_start.casted.ascast, align 8, !tbaa !30
  %21 = load ptr, ptr %Arowoffsets.addr.ascast, align 8, !tbaa !34
  %22 = load i32, ptr %row_end.addr.ascast, align 4, !tbaa !36
  store i32 %22, ptr %row_end.casted.ascast, align 4, !tbaa !36
  %23 = load i64, ptr %row_end.casted.ascast, align 8, !tbaa !30
  %24 = load ptr, ptr %Acoefs.addr.ascast, align 8, !tbaa !34
  %25 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %26 = load ptr, ptr %Acols.addr.ascast, align 8, !tbaa !34
  %27 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %28 = getelementptr inbounds [10 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %29 = inttoptr i64 %14 to ptr
  store ptr %29, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds [10 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %31 = inttoptr i64 %16 to ptr
  store ptr %31, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds [10 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %33 = inttoptr i64 %18 to ptr
  store ptr %33, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds [10 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  %35 = inttoptr i64 %20 to ptr
  store ptr %35, ptr %34, align 8, !tbaa !34
  %36 = getelementptr inbounds [10 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %21, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds [10 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 5
  %38 = inttoptr i64 %23 to ptr
  store ptr %38, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds [10 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 6
  store ptr %24, ptr %39, align 8, !tbaa !34
  %40 = getelementptr inbounds [10 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 7
  store ptr %25, ptr %40, align 8, !tbaa !34
  %41 = getelementptr inbounds [10 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 8
  store ptr %26, ptr %41, align 8, !tbaa !34
  %42 = getelementptr inbounds [10 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 9
  store ptr %27, ptr %42, align 8, !tbaa !34
  %43 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %44 = load i32, ptr %43, align 4, !tbaa !36
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @1 to ptr), i32 %44, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__.34, ptr null, ptr %captured_vars_addrs.ascast, i64 10)
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %45 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %46 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add6 = add nsw i32 %45, %46
  store i32 %add6, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %47 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  %48 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add7 = add nsw i32 %47, %48
  store i32 %add7, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  %49 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %50 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add8 = add nsw i32 %49, %50
  store i32 %add8, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %51 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %52 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  %cmp9 = icmp sgt i32 %51, %52
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %omp.inner.for.inc
  %53 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  br label %cond.end12

cond.false11:                                     ; preds = %omp.inner.for.inc
  %54 = load i32, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %53, %cond.true10 ], [ %54, %cond.false11 ]
  store i32 %cond13, ptr %.omp.comb.ub.ascast, align 4, !tbaa !36
  %55 = load i32, ptr %.omp.comb.lb.ascast, align 4, !tbaa !36
  store i32 %55, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %56 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %57 = load i32, ptr %56, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %57)
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %row3) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.comb.lb) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @__omp_outlined__.34(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %rows_size, i64 noundef %row_start, ptr noundef %Arowoffsets, i64 noundef %row_end, ptr noundef %Acoefs, ptr noundef %xcoefs, ptr noundef %Acols, ptr noundef %ycoefs) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %rows_size.addr = alloca i64, align 8, addrspace(5)
  %row_start.addr = alloca i64, align 8, addrspace(5)
  %Arowoffsets.addr = alloca ptr, align 8, addrspace(5)
  %row_end.addr = alloca i64, align 8, addrspace(5)
  %Acoefs.addr = alloca ptr, align 8, addrspace(5)
  %xcoefs.addr = alloca ptr, align 8, addrspace(5)
  %Acols.addr = alloca ptr, align 8, addrspace(5)
  %ycoefs.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %row = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %row4 = alloca i32, align 4, addrspace(5)
  %sum = alloca double, align 8, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %rows_size.addr.ascast = addrspacecast ptr addrspace(5) %rows_size.addr to ptr
  %row_start.addr.ascast = addrspacecast ptr addrspace(5) %row_start.addr to ptr
  %Arowoffsets.addr.ascast = addrspacecast ptr addrspace(5) %Arowoffsets.addr to ptr
  %row_end.addr.ascast = addrspacecast ptr addrspace(5) %row_end.addr to ptr
  %Acoefs.addr.ascast = addrspacecast ptr addrspace(5) %Acoefs.addr to ptr
  %xcoefs.addr.ascast = addrspacecast ptr addrspace(5) %xcoefs.addr to ptr
  %Acols.addr.ascast = addrspacecast ptr addrspace(5) %Acols.addr to ptr
  %ycoefs.addr.ascast = addrspacecast ptr addrspace(5) %ycoefs.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %row.ascast = addrspacecast ptr addrspace(5) %row to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %row4.ascast = addrspacecast ptr addrspace(5) %row4 to ptr
  %sum.ascast = addrspacecast ptr addrspace(5) %sum to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8, !tbaa !34
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8, !tbaa !34
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  store i64 %rows_size, ptr %rows_size.addr.ascast, align 8, !tbaa !30
  store i64 %row_start, ptr %row_start.addr.ascast, align 8, !tbaa !30
  store ptr %Arowoffsets, ptr %Arowoffsets.addr.ascast, align 8, !tbaa !34
  store i64 %row_end, ptr %row_end.addr.ascast, align 8, !tbaa !30
  store ptr %Acoefs, ptr %Acoefs.addr.ascast, align 8, !tbaa !34
  store ptr %xcoefs, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  store ptr %Acols, ptr %Acols.addr.ascast, align 8, !tbaa !34
  store ptr %ycoefs, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  %0 = load i32, ptr %rows_size.addr.ascast, align 4, !tbaa !36
  store i32 %0, ptr %.capture_expr..ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  %1 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %row) #3
  store i32 0, ptr %row.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %row) #3
  %2 = load i32, ptr %.capture_expr..ascast, align 4, !tbaa !36
  %cmp = icmp slt i32 0, %2
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  store i32 0, ptr %.omp.lb.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  %3 = load i32, ptr %.capture_expr.1.ascast, align 4, !tbaa !36
  store i32 %3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  %4 = load i64, ptr %.previous.lb..addr.ascast, align 8, !tbaa !30
  %conv = trunc i64 %4 to i32
  %5 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %conv3 = trunc i64 %5 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %conv3, ptr %.omp.ub.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  store i32 1, ptr %.omp.stride.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %row4) #3
  %6 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %7 = load i32, ptr %6, align 4, !tbaa !36
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %7, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %8 = load i32, ptr %.omp.lb.ascast, align 4, !tbaa !36
  store i32 %8, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %9 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %conv5 = sext i32 %9 to i64
  %10 = load i64, ptr %.previous.ub..addr.ascast, align 8, !tbaa !30
  %cmp6 = icmp ule i64 %conv5, %10
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %mul = mul nsw i32 %11, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %row4.ascast, align 4, !tbaa !36
  %12 = load ptr, ptr %Arowoffsets.addr.ascast, align 8, !tbaa !34
  %13 = load i32, ptr %row4.ascast, align 4, !tbaa !36
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom
  %14 = load i32, ptr %arrayidx, align 4, !tbaa !36
  store i32 %14, ptr %row_start.addr.ascast, align 4, !tbaa !36
  %15 = load ptr, ptr %Arowoffsets.addr.ascast, align 8, !tbaa !34
  %16 = load i32, ptr %row4.ascast, align 4, !tbaa !36
  %add7 = add nsw i32 %16, 1
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %15, i64 %idxprom8
  %17 = load i32, ptr %arrayidx9, align 4, !tbaa !36
  store i32 %17, ptr %row_end.addr.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %sum) #3
  store double 0.000000e+00, ptr %sum.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #3
  %18 = load i32, ptr %row_start.addr.ascast, align 4, !tbaa !36
  store i32 %18, ptr %i.ascast, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %19 = load i32, ptr %i.ascast, align 4, !tbaa !36
  %20 = load i32, ptr %row_end.addr.ascast, align 4, !tbaa !36
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %Acoefs.addr.ascast, align 8, !tbaa !34
  %22 = load i32, ptr %i.ascast, align 4, !tbaa !36
  %idxprom11 = sext i32 %22 to i64
  %arrayidx12 = getelementptr inbounds double, ptr %21, i64 %idxprom11
  %23 = load double, ptr %arrayidx12, align 8, !tbaa !43
  %24 = load ptr, ptr %xcoefs.addr.ascast, align 8, !tbaa !34
  %25 = load ptr, ptr %Acols.addr.ascast, align 8, !tbaa !34
  %26 = load i32, ptr %i.ascast, align 4, !tbaa !36
  %idxprom13 = sext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %25, i64 %idxprom13
  %27 = load i32, ptr %arrayidx14, align 4, !tbaa !36
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds double, ptr %24, i64 %idxprom15
  %28 = load double, ptr %arrayidx16, align 8, !tbaa !43
  %mul17 = fmul contract double %23, %28
  %29 = load double, ptr %sum.ascast, align 8, !tbaa !43
  %add18 = fadd contract double %29, %mul17
  store double %add18, ptr %sum.ascast, align 8, !tbaa !43
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i.ascast, align 4, !tbaa !36
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i.ascast, align 4, !tbaa !36
  br label %for.cond, !llvm.loop !93

for.end:                                          ; preds = %for.cond.cleanup
  %31 = load double, ptr %sum.ascast, align 8, !tbaa !43
  %32 = load ptr, ptr %ycoefs.addr.ascast, align 8, !tbaa !34
  %33 = load i32, ptr %row4.ascast, align 4, !tbaa !36
  %idxprom19 = sext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds double, ptr %32, i64 %idxprom19
  store double %31, ptr %arrayidx20, align 8, !tbaa !43
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %sum) #3
  br label %omp.body.continue

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %34 = load i32, ptr %.omp.iv.ascast, align 4, !tbaa !36
  %35 = load i32, ptr %.omp.stride.ascast, align 4, !tbaa !36
  %add21 = add nsw i32 %34, %35
  store i32 %add21, ptr %.omp.iv.ascast, align 4, !tbaa !36
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %36 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %37 = load i32, ptr %36, align 4, !tbaa !36
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @2 to ptr), i32 %37)
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %row4) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.is_last) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.stride) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.ub) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.lb) #3
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.1) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.capture_expr.) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %.omp.iv) #3
  ret void
}

; Function Attrs: cold convergent mustprogress noinline nounwind optsize
define weak hidden { double, double } @__muldc3(double noundef %__a, double noundef %__b, double noundef %__c, double noundef %__d) #7 {
entry:
  %retval = alloca { double, double }, align 8, addrspace(5)
  %__a.addr = alloca double, align 8, addrspace(5)
  %__b.addr = alloca double, align 8, addrspace(5)
  %__c.addr = alloca double, align 8, addrspace(5)
  %__d.addr = alloca double, align 8, addrspace(5)
  %__ac = alloca double, align 8, addrspace(5)
  %__bd = alloca double, align 8, addrspace(5)
  %__ad = alloca double, align 8, addrspace(5)
  %__bc = alloca double, align 8, addrspace(5)
  %z = alloca { double, double }, align 8, addrspace(5)
  %__recalc = alloca i32, align 4, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %__a.addr.ascast = addrspacecast ptr addrspace(5) %__a.addr to ptr
  %__b.addr.ascast = addrspacecast ptr addrspace(5) %__b.addr to ptr
  %__c.addr.ascast = addrspacecast ptr addrspace(5) %__c.addr to ptr
  %__d.addr.ascast = addrspacecast ptr addrspace(5) %__d.addr to ptr
  %__ac.ascast = addrspacecast ptr addrspace(5) %__ac to ptr
  %__bd.ascast = addrspacecast ptr addrspace(5) %__bd to ptr
  %__ad.ascast = addrspacecast ptr addrspace(5) %__ad to ptr
  %__bc.ascast = addrspacecast ptr addrspace(5) %__bc to ptr
  %z.ascast = addrspacecast ptr addrspace(5) %z to ptr
  %__recalc.ascast = addrspacecast ptr addrspace(5) %__recalc to ptr
  store double %__a, ptr %__a.addr.ascast, align 8, !tbaa !43
  store double %__b, ptr %__b.addr.ascast, align 8, !tbaa !43
  store double %__c, ptr %__c.addr.ascast, align 8, !tbaa !43
  store double %__d, ptr %__d.addr.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %__ac) #3
  %0 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %1 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul = fmul contract double %0, %1
  store double %mul, ptr %__ac.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %__bd) #3
  %2 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %3 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul1 = fmul contract double %2, %3
  store double %mul1, ptr %__bd.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %__ad) #3
  %4 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %5 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul2 = fmul contract double %4, %5
  store double %mul2, ptr %__ad.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %__bc) #3
  %6 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %7 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul3 = fmul contract double %6, %7
  store double %mul3, ptr %__bc.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %z) #3
  %8 = load double, ptr %__ac.ascast, align 8, !tbaa !43
  %9 = load double, ptr %__bd.ascast, align 8, !tbaa !43
  %sub = fsub contract double %8, %9
  %z.ascast.realp = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 0
  store double %sub, ptr %z.ascast.realp, align 8, !tbaa !43
  %10 = load double, ptr %__ad.ascast, align 8, !tbaa !43
  %11 = load double, ptr %__bc.ascast, align 8, !tbaa !43
  %add = fadd contract double %10, %11
  %z.ascast.imagp = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 1
  store double %add, ptr %z.ascast.imagp, align 8, !tbaa !43
  %z.ascast.realp4 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 0
  %12 = load double, ptr %z.ascast.realp4, align 8, !tbaa !43
  %call = call i32 @__ocml_isnan_f64(double noundef %12) #11
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end106

land.lhs.true:                                    ; preds = %entry
  %z.ascast.imagp5 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 1
  %13 = load double, ptr %z.ascast.imagp5, align 8, !tbaa !43
  %call6 = call i32 @__ocml_isnan_f64(double noundef %13) #11
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end106

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %__recalc) #3
  store i32 0, ptr %__recalc.ascast, align 4, !tbaa !36
  %14 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call8 = call i32 @__ocml_isinf_f64(double noundef %14) #11
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call10 = call i32 @__ocml_isinf_f64(double noundef %15) #11
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end30

if.then12:                                        ; preds = %lor.lhs.false, %if.then
  %16 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call13 = call i32 @__ocml_isinf_f64(double noundef %16) #11
  %tobool14 = icmp ne i32 %call13, 0
  %17 = zext i1 %tobool14 to i64
  %cond = select i1 %tobool14, i32 1, i32 0
  %conv = sitofp i32 %cond to double
  %18 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call15 = call contract double @__ocml_copysign_f64(double noundef %conv, double noundef %18) #11
  store double %call15, ptr %__a.addr.ascast, align 8, !tbaa !43
  %19 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call16 = call i32 @__ocml_isinf_f64(double noundef %19) #11
  %tobool17 = icmp ne i32 %call16, 0
  %20 = zext i1 %tobool17 to i64
  %cond18 = select i1 %tobool17, i32 1, i32 0
  %conv19 = sitofp i32 %cond18 to double
  %21 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call20 = call contract double @__ocml_copysign_f64(double noundef %conv19, double noundef %21) #11
  store double %call20, ptr %__b.addr.ascast, align 8, !tbaa !43
  %22 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call21 = call i32 @__ocml_isnan_f64(double noundef %22) #11
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then12
  %23 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call24 = call contract double @__ocml_copysign_f64(double noundef 0.000000e+00, double noundef %23) #11
  store double %call24, ptr %__c.addr.ascast, align 8, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then12
  %24 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call25 = call i32 @__ocml_isnan_f64(double noundef %24) #11
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end
  %25 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call28 = call contract double @__ocml_copysign_f64(double noundef 0.000000e+00, double noundef %25) #11
  store double %call28, ptr %__d.addr.ascast, align 8, !tbaa !43
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end
  store i32 1, ptr %__recalc.ascast, align 4, !tbaa !36
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %lor.lhs.false
  %26 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call31 = call i32 @__ocml_isinf_f64(double noundef %26) #11
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end30
  %27 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call34 = call i32 @__ocml_isinf_f64(double noundef %27) #11
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end57

if.then36:                                        ; preds = %lor.lhs.false33, %if.end30
  %28 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call37 = call i32 @__ocml_isinf_f64(double noundef %28) #11
  %tobool38 = icmp ne i32 %call37, 0
  %29 = zext i1 %tobool38 to i64
  %cond39 = select i1 %tobool38, i32 1, i32 0
  %conv40 = sitofp i32 %cond39 to double
  %30 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call41 = call contract double @__ocml_copysign_f64(double noundef %conv40, double noundef %30) #11
  store double %call41, ptr %__c.addr.ascast, align 8, !tbaa !43
  %31 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call42 = call i32 @__ocml_isinf_f64(double noundef %31) #11
  %tobool43 = icmp ne i32 %call42, 0
  %32 = zext i1 %tobool43 to i64
  %cond44 = select i1 %tobool43, i32 1, i32 0
  %conv45 = sitofp i32 %cond44 to double
  %33 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call46 = call contract double @__ocml_copysign_f64(double noundef %conv45, double noundef %33) #11
  store double %call46, ptr %__d.addr.ascast, align 8, !tbaa !43
  %34 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call47 = call i32 @__ocml_isnan_f64(double noundef %34) #11
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.then36
  %35 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call50 = call contract double @__ocml_copysign_f64(double noundef 0.000000e+00, double noundef %35) #11
  store double %call50, ptr %__a.addr.ascast, align 8, !tbaa !43
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then36
  %36 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call52 = call i32 @__ocml_isnan_f64(double noundef %36) #11
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end51
  %37 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call55 = call contract double @__ocml_copysign_f64(double noundef 0.000000e+00, double noundef %37) #11
  store double %call55, ptr %__b.addr.ascast, align 8, !tbaa !43
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51
  store i32 1, ptr %__recalc.ascast, align 4, !tbaa !36
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %lor.lhs.false33
  %38 = load i32, ptr %__recalc.ascast, align 4, !tbaa !36
  %tobool58 = icmp ne i32 %38, 0
  br i1 %tobool58, label %if.end92, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.end57
  %39 = load double, ptr %__ac.ascast, align 8, !tbaa !43
  %call60 = call i32 @__ocml_isinf_f64(double noundef %39) #11
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then71, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %land.lhs.true59
  %40 = load double, ptr %__bd.ascast, align 8, !tbaa !43
  %call63 = call i32 @__ocml_isinf_f64(double noundef %40) #11
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then71, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %41 = load double, ptr %__ad.ascast, align 8, !tbaa !43
  %call66 = call i32 @__ocml_isinf_f64(double noundef %41) #11
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then71, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %42 = load double, ptr %__bc.ascast, align 8, !tbaa !43
  %call69 = call i32 @__ocml_isinf_f64(double noundef %42) #11
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end92

if.then71:                                        ; preds = %lor.lhs.false68, %lor.lhs.false65, %lor.lhs.false62, %land.lhs.true59
  %43 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call72 = call i32 @__ocml_isnan_f64(double noundef %43) #11
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then71
  %44 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call75 = call contract double @__ocml_copysign_f64(double noundef 0.000000e+00, double noundef %44) #11
  store double %call75, ptr %__a.addr.ascast, align 8, !tbaa !43
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.then71
  %45 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call77 = call i32 @__ocml_isnan_f64(double noundef %45) #11
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end76
  %46 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call80 = call contract double @__ocml_copysign_f64(double noundef 0.000000e+00, double noundef %46) #11
  store double %call80, ptr %__b.addr.ascast, align 8, !tbaa !43
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end76
  %47 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call82 = call i32 @__ocml_isnan_f64(double noundef %47) #11
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end81
  %48 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call85 = call contract double @__ocml_copysign_f64(double noundef 0.000000e+00, double noundef %48) #11
  store double %call85, ptr %__c.addr.ascast, align 8, !tbaa !43
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end81
  %49 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call87 = call i32 @__ocml_isnan_f64(double noundef %49) #11
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end86
  %50 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call90 = call contract double @__ocml_copysign_f64(double noundef 0.000000e+00, double noundef %50) #11
  store double %call90, ptr %__d.addr.ascast, align 8, !tbaa !43
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end86
  store i32 1, ptr %__recalc.ascast, align 4, !tbaa !36
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %lor.lhs.false68, %if.end57
  %51 = load i32, ptr %__recalc.ascast, align 4, !tbaa !36
  %tobool93 = icmp ne i32 %51, 0
  br i1 %tobool93, label %if.then94, label %if.end105

if.then94:                                        ; preds = %if.end92
  %52 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %53 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul95 = fmul contract double %52, %53
  %54 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %55 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul96 = fmul contract double %54, %55
  %sub97 = fsub contract double %mul95, %mul96
  %mul98 = fmul contract double 0x7FF0000000000000, %sub97
  %z.ascast.realp99 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 0
  store double %mul98, ptr %z.ascast.realp99, align 8, !tbaa !43
  %56 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %57 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul100 = fmul contract double %56, %57
  %58 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %59 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul101 = fmul contract double %58, %59
  %add102 = fadd contract double %mul100, %mul101
  %mul103 = fmul contract double 0x7FF0000000000000, %add102
  %z.ascast.imagp104 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 1
  store double %mul103, ptr %z.ascast.imagp104, align 8, !tbaa !43
  br label %if.end105

if.end105:                                        ; preds = %if.then94, %if.end92
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %__recalc) #3
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %land.lhs.true, %entry
  %z.ascast.realp107 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 0
  %z.ascast.real = load double, ptr %z.ascast.realp107, align 8
  %z.ascast.imagp108 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 1
  %z.ascast.imag = load double, ptr %z.ascast.imagp108, align 8
  %retval.ascast.realp = getelementptr inbounds { double, double }, ptr %retval.ascast, i32 0, i32 0
  %retval.ascast.imagp = getelementptr inbounds { double, double }, ptr %retval.ascast, i32 0, i32 1
  store double %z.ascast.real, ptr %retval.ascast.realp, align 8
  store double %z.ascast.imag, ptr %retval.ascast.imagp, align 8
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %z) #3
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %__bc) #3
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %__ad) #3
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %__bd) #3
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %__ac) #3
  %60 = load { double, double }, ptr %retval.ascast, align 8
  ret { double, double } %60
}

; Function Attrs: cold convergent mustprogress noinline nounwind optsize
define weak hidden [2 x i32] @__mulsc3(float noundef %__a, float noundef %__b, float noundef %__c, float noundef %__d) #7 {
entry:
  %retval = alloca { float, float }, align 4, addrspace(5)
  %__a.addr = alloca float, align 4, addrspace(5)
  %__b.addr = alloca float, align 4, addrspace(5)
  %__c.addr = alloca float, align 4, addrspace(5)
  %__d.addr = alloca float, align 4, addrspace(5)
  %__ac = alloca float, align 4, addrspace(5)
  %__bd = alloca float, align 4, addrspace(5)
  %__ad = alloca float, align 4, addrspace(5)
  %__bc = alloca float, align 4, addrspace(5)
  %z = alloca { float, float }, align 4, addrspace(5)
  %__recalc = alloca i32, align 4, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %__a.addr.ascast = addrspacecast ptr addrspace(5) %__a.addr to ptr
  %__b.addr.ascast = addrspacecast ptr addrspace(5) %__b.addr to ptr
  %__c.addr.ascast = addrspacecast ptr addrspace(5) %__c.addr to ptr
  %__d.addr.ascast = addrspacecast ptr addrspace(5) %__d.addr to ptr
  %__ac.ascast = addrspacecast ptr addrspace(5) %__ac to ptr
  %__bd.ascast = addrspacecast ptr addrspace(5) %__bd to ptr
  %__ad.ascast = addrspacecast ptr addrspace(5) %__ad to ptr
  %__bc.ascast = addrspacecast ptr addrspace(5) %__bc to ptr
  %z.ascast = addrspacecast ptr addrspace(5) %z to ptr
  %__recalc.ascast = addrspacecast ptr addrspace(5) %__recalc to ptr
  store float %__a, ptr %__a.addr.ascast, align 4, !tbaa !96
  store float %__b, ptr %__b.addr.ascast, align 4, !tbaa !96
  store float %__c, ptr %__c.addr.ascast, align 4, !tbaa !96
  store float %__d, ptr %__d.addr.ascast, align 4, !tbaa !96
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %__ac) #3
  %0 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %1 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul = fmul contract float %0, %1
  store float %mul, ptr %__ac.ascast, align 4, !tbaa !96
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %__bd) #3
  %2 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %3 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul1 = fmul contract float %2, %3
  store float %mul1, ptr %__bd.ascast, align 4, !tbaa !96
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %__ad) #3
  %4 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %5 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul2 = fmul contract float %4, %5
  store float %mul2, ptr %__ad.ascast, align 4, !tbaa !96
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %__bc) #3
  %6 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %7 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul3 = fmul contract float %6, %7
  store float %mul3, ptr %__bc.ascast, align 4, !tbaa !96
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %z) #3
  %8 = load float, ptr %__ac.ascast, align 4, !tbaa !96
  %9 = load float, ptr %__bd.ascast, align 4, !tbaa !96
  %sub = fsub contract float %8, %9
  %z.ascast.realp = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 0
  store float %sub, ptr %z.ascast.realp, align 4, !tbaa !96
  %10 = load float, ptr %__ad.ascast, align 4, !tbaa !96
  %11 = load float, ptr %__bc.ascast, align 4, !tbaa !96
  %add = fadd contract float %10, %11
  %z.ascast.imagp = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 1
  store float %add, ptr %z.ascast.imagp, align 4, !tbaa !96
  %z.ascast.realp4 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 0
  %12 = load float, ptr %z.ascast.realp4, align 4, !tbaa !96
  %call = call i32 @__ocml_isnan_f32(float noundef %12) #11
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end106

land.lhs.true:                                    ; preds = %entry
  %z.ascast.imagp5 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 1
  %13 = load float, ptr %z.ascast.imagp5, align 4, !tbaa !96
  %call6 = call i32 @__ocml_isnan_f32(float noundef %13) #11
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end106

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %__recalc) #3
  store i32 0, ptr %__recalc.ascast, align 4, !tbaa !36
  %14 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call8 = call i32 @__ocml_isinf_f32(float noundef %14) #11
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call10 = call i32 @__ocml_isinf_f32(float noundef %15) #11
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end30

if.then12:                                        ; preds = %lor.lhs.false, %if.then
  %16 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call13 = call i32 @__ocml_isinf_f32(float noundef %16) #11
  %tobool14 = icmp ne i32 %call13, 0
  %17 = zext i1 %tobool14 to i64
  %cond = select i1 %tobool14, i32 1, i32 0
  %conv = sitofp i32 %cond to float
  %18 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call15 = call contract float @__ocml_copysign_f32(float noundef %conv, float noundef %18) #11
  store float %call15, ptr %__a.addr.ascast, align 4, !tbaa !96
  %19 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call16 = call i32 @__ocml_isinf_f32(float noundef %19) #11
  %tobool17 = icmp ne i32 %call16, 0
  %20 = zext i1 %tobool17 to i64
  %cond18 = select i1 %tobool17, i32 1, i32 0
  %conv19 = sitofp i32 %cond18 to float
  %21 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call20 = call contract float @__ocml_copysign_f32(float noundef %conv19, float noundef %21) #11
  store float %call20, ptr %__b.addr.ascast, align 4, !tbaa !96
  %22 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call21 = call i32 @__ocml_isnan_f32(float noundef %22) #11
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then12
  %23 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call24 = call contract float @__ocml_copysign_f32(float noundef 0.000000e+00, float noundef %23) #11
  store float %call24, ptr %__c.addr.ascast, align 4, !tbaa !96
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then12
  %24 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call25 = call i32 @__ocml_isnan_f32(float noundef %24) #11
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end
  %25 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call28 = call contract float @__ocml_copysign_f32(float noundef 0.000000e+00, float noundef %25) #11
  store float %call28, ptr %__d.addr.ascast, align 4, !tbaa !96
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end
  store i32 1, ptr %__recalc.ascast, align 4, !tbaa !36
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %lor.lhs.false
  %26 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call31 = call i32 @__ocml_isinf_f32(float noundef %26) #11
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end30
  %27 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call34 = call i32 @__ocml_isinf_f32(float noundef %27) #11
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end57

if.then36:                                        ; preds = %lor.lhs.false33, %if.end30
  %28 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call37 = call i32 @__ocml_isinf_f32(float noundef %28) #11
  %tobool38 = icmp ne i32 %call37, 0
  %29 = zext i1 %tobool38 to i64
  %cond39 = select i1 %tobool38, i32 1, i32 0
  %conv40 = sitofp i32 %cond39 to float
  %30 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call41 = call contract float @__ocml_copysign_f32(float noundef %conv40, float noundef %30) #11
  store float %call41, ptr %__c.addr.ascast, align 4, !tbaa !96
  %31 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call42 = call i32 @__ocml_isinf_f32(float noundef %31) #11
  %tobool43 = icmp ne i32 %call42, 0
  %32 = zext i1 %tobool43 to i64
  %cond44 = select i1 %tobool43, i32 1, i32 0
  %conv45 = sitofp i32 %cond44 to float
  %33 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call46 = call contract float @__ocml_copysign_f32(float noundef %conv45, float noundef %33) #11
  store float %call46, ptr %__d.addr.ascast, align 4, !tbaa !96
  %34 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call47 = call i32 @__ocml_isnan_f32(float noundef %34) #11
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.then36
  %35 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call50 = call contract float @__ocml_copysign_f32(float noundef 0.000000e+00, float noundef %35) #11
  store float %call50, ptr %__a.addr.ascast, align 4, !tbaa !96
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then36
  %36 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call52 = call i32 @__ocml_isnan_f32(float noundef %36) #11
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end51
  %37 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call55 = call contract float @__ocml_copysign_f32(float noundef 0.000000e+00, float noundef %37) #11
  store float %call55, ptr %__b.addr.ascast, align 4, !tbaa !96
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51
  store i32 1, ptr %__recalc.ascast, align 4, !tbaa !36
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %lor.lhs.false33
  %38 = load i32, ptr %__recalc.ascast, align 4, !tbaa !36
  %tobool58 = icmp ne i32 %38, 0
  br i1 %tobool58, label %if.end92, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.end57
  %39 = load float, ptr %__ac.ascast, align 4, !tbaa !96
  %call60 = call i32 @__ocml_isinf_f32(float noundef %39) #11
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then71, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %land.lhs.true59
  %40 = load float, ptr %__bd.ascast, align 4, !tbaa !96
  %call63 = call i32 @__ocml_isinf_f32(float noundef %40) #11
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then71, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %41 = load float, ptr %__ad.ascast, align 4, !tbaa !96
  %call66 = call i32 @__ocml_isinf_f32(float noundef %41) #11
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then71, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %42 = load float, ptr %__bc.ascast, align 4, !tbaa !96
  %call69 = call i32 @__ocml_isinf_f32(float noundef %42) #11
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end92

if.then71:                                        ; preds = %lor.lhs.false68, %lor.lhs.false65, %lor.lhs.false62, %land.lhs.true59
  %43 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call72 = call i32 @__ocml_isnan_f32(float noundef %43) #11
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then71
  %44 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call75 = call contract float @__ocml_copysign_f32(float noundef 0.000000e+00, float noundef %44) #11
  store float %call75, ptr %__a.addr.ascast, align 4, !tbaa !96
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.then71
  %45 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call77 = call i32 @__ocml_isnan_f32(float noundef %45) #11
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end76
  %46 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call80 = call contract float @__ocml_copysign_f32(float noundef 0.000000e+00, float noundef %46) #11
  store float %call80, ptr %__b.addr.ascast, align 4, !tbaa !96
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end76
  %47 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call82 = call i32 @__ocml_isnan_f32(float noundef %47) #11
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end81
  %48 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call85 = call contract float @__ocml_copysign_f32(float noundef 0.000000e+00, float noundef %48) #11
  store float %call85, ptr %__c.addr.ascast, align 4, !tbaa !96
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end81
  %49 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call87 = call i32 @__ocml_isnan_f32(float noundef %49) #11
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end86
  %50 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call90 = call contract float @__ocml_copysign_f32(float noundef 0.000000e+00, float noundef %50) #11
  store float %call90, ptr %__d.addr.ascast, align 4, !tbaa !96
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end86
  store i32 1, ptr %__recalc.ascast, align 4, !tbaa !36
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %lor.lhs.false68, %if.end57
  %51 = load i32, ptr %__recalc.ascast, align 4, !tbaa !36
  %tobool93 = icmp ne i32 %51, 0
  br i1 %tobool93, label %if.then94, label %if.end105

if.then94:                                        ; preds = %if.end92
  %52 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %53 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul95 = fmul contract float %52, %53
  %54 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %55 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul96 = fmul contract float %54, %55
  %sub97 = fsub contract float %mul95, %mul96
  %mul98 = fmul contract float 0x7FF0000000000000, %sub97
  %z.ascast.realp99 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 0
  store float %mul98, ptr %z.ascast.realp99, align 4, !tbaa !96
  %56 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %57 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul100 = fmul contract float %56, %57
  %58 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %59 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul101 = fmul contract float %58, %59
  %add102 = fadd contract float %mul100, %mul101
  %mul103 = fmul contract float 0x7FF0000000000000, %add102
  %z.ascast.imagp104 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 1
  store float %mul103, ptr %z.ascast.imagp104, align 4, !tbaa !96
  br label %if.end105

if.end105:                                        ; preds = %if.then94, %if.end92
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %__recalc) #3
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %land.lhs.true, %entry
  %z.ascast.realp107 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 0
  %z.ascast.real = load float, ptr %z.ascast.realp107, align 4
  %z.ascast.imagp108 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 1
  %z.ascast.imag = load float, ptr %z.ascast.imagp108, align 4
  %retval.ascast.realp = getelementptr inbounds { float, float }, ptr %retval.ascast, i32 0, i32 0
  %retval.ascast.imagp = getelementptr inbounds { float, float }, ptr %retval.ascast, i32 0, i32 1
  store float %z.ascast.real, ptr %retval.ascast.realp, align 4
  store float %z.ascast.imag, ptr %retval.ascast.imagp, align 4
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %z) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %__bc) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %__ad) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %__bd) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %__ac) #3
  %60 = load [2 x i32], ptr %retval.ascast, align 4
  ret [2 x i32] %60
}

; Function Attrs: cold convergent mustprogress noinline nounwind optsize
define weak hidden { double, double } @__divdc3(double noundef %__a, double noundef %__b, double noundef %__c, double noundef %__d) #7 {
entry:
  %retval = alloca { double, double }, align 8, addrspace(5)
  %__a.addr = alloca double, align 8, addrspace(5)
  %__b.addr = alloca double, align 8, addrspace(5)
  %__c.addr = alloca double, align 8, addrspace(5)
  %__d.addr = alloca double, align 8, addrspace(5)
  %__ilogbw = alloca i32, align 4, addrspace(5)
  %__logbw = alloca double, align 8, addrspace(5)
  %__denom = alloca double, align 8, addrspace(5)
  %z = alloca { double, double }, align 8, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %__a.addr.ascast = addrspacecast ptr addrspace(5) %__a.addr to ptr
  %__b.addr.ascast = addrspacecast ptr addrspace(5) %__b.addr to ptr
  %__c.addr.ascast = addrspacecast ptr addrspace(5) %__c.addr to ptr
  %__d.addr.ascast = addrspacecast ptr addrspace(5) %__d.addr to ptr
  %__ilogbw.ascast = addrspacecast ptr addrspace(5) %__ilogbw to ptr
  %__logbw.ascast = addrspacecast ptr addrspace(5) %__logbw to ptr
  %__denom.ascast = addrspacecast ptr addrspace(5) %__denom to ptr
  %z.ascast = addrspacecast ptr addrspace(5) %z to ptr
  store double %__a, ptr %__a.addr.ascast, align 8, !tbaa !43
  store double %__b, ptr %__b.addr.ascast, align 8, !tbaa !43
  store double %__c, ptr %__c.addr.ascast, align 8, !tbaa !43
  store double %__d, ptr %__d.addr.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %__ilogbw) #3
  store i32 0, ptr %__ilogbw.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %__logbw) #3
  %0 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call = call contract double @__ocml_fabs_f64(double noundef %0) #11
  %1 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call1 = call contract double @__ocml_fabs_f64(double noundef %1) #11
  %call2 = call contract double @__ocml_fmax_f64(double noundef %call, double noundef %call1) #11
  %call3 = call contract double @__ocml_logb_f64(double noundef %call2) #11
  store double %call3, ptr %__logbw.ascast, align 8, !tbaa !43
  %2 = load double, ptr %__logbw.ascast, align 8, !tbaa !43
  %call4 = call i32 @__ocml_isfinite_f64(double noundef %2) #11
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load double, ptr %__logbw.ascast, align 8, !tbaa !43
  %conv = fptosi double %3 to i32
  store i32 %conv, ptr %__ilogbw.ascast, align 4, !tbaa !36
  %4 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %5 = load i32, ptr %__ilogbw.ascast, align 4, !tbaa !36
  %sub = sub nsw i32 0, %5
  %call5 = call contract double @__ocml_scalbn_f64(double noundef %4, i32 noundef %sub) #11
  store double %call5, ptr %__c.addr.ascast, align 8, !tbaa !43
  %6 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %7 = load i32, ptr %__ilogbw.ascast, align 4, !tbaa !36
  %sub6 = sub nsw i32 0, %7
  %call7 = call contract double @__ocml_scalbn_f64(double noundef %6, i32 noundef %sub6) #11
  store double %call7, ptr %__d.addr.ascast, align 8, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %__denom) #3
  %8 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %9 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul = fmul contract double %8, %9
  %10 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %11 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul8 = fmul contract double %10, %11
  %add = fadd contract double %mul, %mul8
  store double %add, ptr %__denom.ascast, align 8, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %z) #3
  %12 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %13 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul9 = fmul contract double %12, %13
  %14 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %15 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul10 = fmul contract double %14, %15
  %add11 = fadd contract double %mul9, %mul10
  %16 = load double, ptr %__denom.ascast, align 8, !tbaa !43
  %div = fdiv contract double %add11, %16
  %17 = load i32, ptr %__ilogbw.ascast, align 4, !tbaa !36
  %sub12 = sub nsw i32 0, %17
  %call13 = call contract double @__ocml_scalbn_f64(double noundef %div, i32 noundef %sub12) #11
  %z.ascast.realp = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 0
  store double %call13, ptr %z.ascast.realp, align 8, !tbaa !43
  %18 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %19 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul14 = fmul contract double %18, %19
  %20 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %21 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul15 = fmul contract double %20, %21
  %sub16 = fsub contract double %mul14, %mul15
  %22 = load double, ptr %__denom.ascast, align 8, !tbaa !43
  %div17 = fdiv contract double %sub16, %22
  %23 = load i32, ptr %__ilogbw.ascast, align 4, !tbaa !36
  %sub18 = sub nsw i32 0, %23
  %call19 = call contract double @__ocml_scalbn_f64(double noundef %div17, i32 noundef %sub18) #11
  %z.ascast.imagp = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 1
  store double %call19, ptr %z.ascast.imagp, align 8, !tbaa !43
  %z.ascast.realp20 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 0
  %24 = load double, ptr %z.ascast.realp20, align 8, !tbaa !43
  %call21 = call i32 @__ocml_isnan_f64(double noundef %24) #11
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end101

land.lhs.true:                                    ; preds = %if.end
  %z.ascast.imagp23 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 1
  %25 = load double, ptr %z.ascast.imagp23, align 8, !tbaa !43
  %call24 = call i32 @__ocml_isnan_f64(double noundef %25) #11
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end101

if.then26:                                        ; preds = %land.lhs.true
  %26 = load double, ptr %__denom.ascast, align 8, !tbaa !43
  %cmp = fcmp contract oeq double %26, 0.000000e+00
  br i1 %cmp, label %land.lhs.true27, label %if.else

land.lhs.true27:                                  ; preds = %if.then26
  %27 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call28 = call i32 @__ocml_isnan_f64(double noundef %27) #11
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false, label %if.then32

lor.lhs.false:                                    ; preds = %land.lhs.true27
  %28 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call30 = call i32 @__ocml_isnan_f64(double noundef %28) #11
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.else, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false, %land.lhs.true27
  %29 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call33 = call contract double @__ocml_copysign_f64(double noundef 0x7FF0000000000000, double noundef %29) #11
  %30 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %mul34 = fmul contract double %call33, %30
  %z.ascast.realp35 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 0
  store double %mul34, ptr %z.ascast.realp35, align 8, !tbaa !43
  %31 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call36 = call contract double @__ocml_copysign_f64(double noundef 0x7FF0000000000000, double noundef %31) #11
  %32 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %mul37 = fmul contract double %call36, %32
  %z.ascast.imagp38 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 1
  store double %mul37, ptr %z.ascast.imagp38, align 8, !tbaa !43
  br label %if.end100

if.else:                                          ; preds = %lor.lhs.false, %if.then26
  %33 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call39 = call i32 @__ocml_isinf_f64(double noundef %33) #11
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true44, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.else
  %34 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call42 = call i32 @__ocml_isinf_f64(double noundef %34) #11
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true44, label %if.else68

land.lhs.true44:                                  ; preds = %lor.lhs.false41, %if.else
  %35 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call45 = call i32 @__ocml_isfinite_f64(double noundef %35) #11
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %land.lhs.true47, label %if.else68

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %36 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call48 = call i32 @__ocml_isfinite_f64(double noundef %36) #11
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.else68

if.then50:                                        ; preds = %land.lhs.true47
  %37 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call51 = call i32 @__ocml_isinf_f64(double noundef %37) #11
  %tobool52 = icmp ne i32 %call51, 0
  %38 = zext i1 %tobool52 to i64
  %cond = select contract i1 %tobool52, double 1.000000e+00, double 0.000000e+00
  %39 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call53 = call contract double @__ocml_copysign_f64(double noundef %cond, double noundef %39) #11
  store double %call53, ptr %__a.addr.ascast, align 8, !tbaa !43
  %40 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call54 = call i32 @__ocml_isinf_f64(double noundef %40) #11
  %tobool55 = icmp ne i32 %call54, 0
  %41 = zext i1 %tobool55 to i64
  %cond56 = select contract i1 %tobool55, double 1.000000e+00, double 0.000000e+00
  %42 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call57 = call contract double @__ocml_copysign_f64(double noundef %cond56, double noundef %42) #11
  store double %call57, ptr %__b.addr.ascast, align 8, !tbaa !43
  %43 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %44 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul58 = fmul contract double %43, %44
  %45 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %46 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul59 = fmul contract double %45, %46
  %add60 = fadd contract double %mul58, %mul59
  %mul61 = fmul contract double 0x7FF0000000000000, %add60
  %z.ascast.realp62 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 0
  store double %mul61, ptr %z.ascast.realp62, align 8, !tbaa !43
  %47 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %48 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul63 = fmul contract double %47, %48
  %49 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %50 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul64 = fmul contract double %49, %50
  %sub65 = fsub contract double %mul63, %mul64
  %mul66 = fmul contract double 0x7FF0000000000000, %sub65
  %z.ascast.imagp67 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 1
  store double %mul66, ptr %z.ascast.imagp67, align 8, !tbaa !43
  br label %if.end99

if.else68:                                        ; preds = %land.lhs.true47, %land.lhs.true44, %lor.lhs.false41
  %51 = load double, ptr %__logbw.ascast, align 8, !tbaa !43
  %call69 = call i32 @__ocml_isinf_f64(double noundef %51) #11
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %land.lhs.true71, label %if.end98

land.lhs.true71:                                  ; preds = %if.else68
  %52 = load double, ptr %__logbw.ascast, align 8, !tbaa !43
  %cmp72 = fcmp contract ogt double %52, 0.000000e+00
  br i1 %cmp72, label %land.lhs.true73, label %if.end98

land.lhs.true73:                                  ; preds = %land.lhs.true71
  %53 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %call74 = call i32 @__ocml_isfinite_f64(double noundef %53) #11
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %land.lhs.true76, label %if.end98

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %54 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %call77 = call i32 @__ocml_isfinite_f64(double noundef %54) #11
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end98

if.then79:                                        ; preds = %land.lhs.true76
  %55 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call80 = call i32 @__ocml_isinf_f64(double noundef %55) #11
  %tobool81 = icmp ne i32 %call80, 0
  %56 = zext i1 %tobool81 to i64
  %cond82 = select contract i1 %tobool81, double 1.000000e+00, double 0.000000e+00
  %57 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %call83 = call contract double @__ocml_copysign_f64(double noundef %cond82, double noundef %57) #11
  store double %call83, ptr %__c.addr.ascast, align 8, !tbaa !43
  %58 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call84 = call i32 @__ocml_isinf_f64(double noundef %58) #11
  %tobool85 = icmp ne i32 %call84, 0
  %59 = zext i1 %tobool85 to i64
  %cond86 = select contract i1 %tobool85, double 1.000000e+00, double 0.000000e+00
  %60 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %call87 = call contract double @__ocml_copysign_f64(double noundef %cond86, double noundef %60) #11
  store double %call87, ptr %__d.addr.ascast, align 8, !tbaa !43
  %61 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %62 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul88 = fmul contract double %61, %62
  %63 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %64 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul89 = fmul contract double %63, %64
  %add90 = fadd contract double %mul88, %mul89
  %mul91 = fmul contract double 0.000000e+00, %add90
  %z.ascast.realp92 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 0
  store double %mul91, ptr %z.ascast.realp92, align 8, !tbaa !43
  %65 = load double, ptr %__b.addr.ascast, align 8, !tbaa !43
  %66 = load double, ptr %__c.addr.ascast, align 8, !tbaa !43
  %mul93 = fmul contract double %65, %66
  %67 = load double, ptr %__a.addr.ascast, align 8, !tbaa !43
  %68 = load double, ptr %__d.addr.ascast, align 8, !tbaa !43
  %mul94 = fmul contract double %67, %68
  %sub95 = fsub contract double %mul93, %mul94
  %mul96 = fmul contract double 0.000000e+00, %sub95
  %z.ascast.imagp97 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 1
  store double %mul96, ptr %z.ascast.imagp97, align 8, !tbaa !43
  br label %if.end98

if.end98:                                         ; preds = %if.then79, %land.lhs.true76, %land.lhs.true73, %land.lhs.true71, %if.else68
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then50
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then32
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %land.lhs.true, %if.end
  %z.ascast.realp102 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 0
  %z.ascast.real = load double, ptr %z.ascast.realp102, align 8
  %z.ascast.imagp103 = getelementptr inbounds { double, double }, ptr %z.ascast, i32 0, i32 1
  %z.ascast.imag = load double, ptr %z.ascast.imagp103, align 8
  %retval.ascast.realp = getelementptr inbounds { double, double }, ptr %retval.ascast, i32 0, i32 0
  %retval.ascast.imagp = getelementptr inbounds { double, double }, ptr %retval.ascast, i32 0, i32 1
  store double %z.ascast.real, ptr %retval.ascast.realp, align 8
  store double %z.ascast.imag, ptr %retval.ascast.imagp, align 8
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %z) #3
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %__denom) #3
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %__logbw) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %__ilogbw) #3
  %69 = load { double, double }, ptr %retval.ascast, align 8
  ret { double, double } %69
}

; Function Attrs: cold convergent mustprogress noinline nounwind optsize
define weak hidden [2 x i32] @__divsc3(float noundef %__a, float noundef %__b, float noundef %__c, float noundef %__d) #7 {
entry:
  %retval = alloca { float, float }, align 4, addrspace(5)
  %__a.addr = alloca float, align 4, addrspace(5)
  %__b.addr = alloca float, align 4, addrspace(5)
  %__c.addr = alloca float, align 4, addrspace(5)
  %__d.addr = alloca float, align 4, addrspace(5)
  %__ilogbw = alloca i32, align 4, addrspace(5)
  %__logbw = alloca float, align 4, addrspace(5)
  %__denom = alloca float, align 4, addrspace(5)
  %z = alloca { float, float }, align 4, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %__a.addr.ascast = addrspacecast ptr addrspace(5) %__a.addr to ptr
  %__b.addr.ascast = addrspacecast ptr addrspace(5) %__b.addr to ptr
  %__c.addr.ascast = addrspacecast ptr addrspace(5) %__c.addr to ptr
  %__d.addr.ascast = addrspacecast ptr addrspace(5) %__d.addr to ptr
  %__ilogbw.ascast = addrspacecast ptr addrspace(5) %__ilogbw to ptr
  %__logbw.ascast = addrspacecast ptr addrspace(5) %__logbw to ptr
  %__denom.ascast = addrspacecast ptr addrspace(5) %__denom to ptr
  %z.ascast = addrspacecast ptr addrspace(5) %z to ptr
  store float %__a, ptr %__a.addr.ascast, align 4, !tbaa !96
  store float %__b, ptr %__b.addr.ascast, align 4, !tbaa !96
  store float %__c, ptr %__c.addr.ascast, align 4, !tbaa !96
  store float %__d, ptr %__d.addr.ascast, align 4, !tbaa !96
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %__ilogbw) #3
  store i32 0, ptr %__ilogbw.ascast, align 4, !tbaa !36
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %__logbw) #3
  %0 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call = call contract float @__ocml_fabs_f32(float noundef %0) #11
  %1 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call1 = call contract float @__ocml_fabs_f32(float noundef %1) #11
  %call2 = call contract float @__ocml_fmax_f32(float noundef %call, float noundef %call1) #11
  %call3 = call contract float @__ocml_logb_f32(float noundef %call2) #11
  store float %call3, ptr %__logbw.ascast, align 4, !tbaa !96
  %2 = load float, ptr %__logbw.ascast, align 4, !tbaa !96
  %call4 = call i32 @__ocml_isfinite_f32(float noundef %2) #11
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load float, ptr %__logbw.ascast, align 4, !tbaa !96
  %conv = fptosi float %3 to i32
  store i32 %conv, ptr %__ilogbw.ascast, align 4, !tbaa !36
  %4 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %5 = load i32, ptr %__ilogbw.ascast, align 4, !tbaa !36
  %sub = sub nsw i32 0, %5
  %call5 = call contract float @__ocml_scalbn_f32(float noundef %4, i32 noundef %sub) #11
  store float %call5, ptr %__c.addr.ascast, align 4, !tbaa !96
  %6 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %7 = load i32, ptr %__ilogbw.ascast, align 4, !tbaa !36
  %sub6 = sub nsw i32 0, %7
  %call7 = call contract float @__ocml_scalbn_f32(float noundef %6, i32 noundef %sub6) #11
  store float %call7, ptr %__d.addr.ascast, align 4, !tbaa !96
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %__denom) #3
  %8 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %9 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul = fmul contract float %8, %9
  %10 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %11 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul8 = fmul contract float %10, %11
  %add = fadd contract float %mul, %mul8
  store float %add, ptr %__denom.ascast, align 4, !tbaa !96
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %z) #3
  %12 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %13 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul9 = fmul contract float %12, %13
  %14 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %15 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul10 = fmul contract float %14, %15
  %add11 = fadd contract float %mul9, %mul10
  %16 = load float, ptr %__denom.ascast, align 4, !tbaa !96
  %div = fdiv contract float %add11, %16
  %17 = load i32, ptr %__ilogbw.ascast, align 4, !tbaa !36
  %sub12 = sub nsw i32 0, %17
  %call13 = call contract float @__ocml_scalbn_f32(float noundef %div, i32 noundef %sub12) #11
  %z.ascast.realp = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 0
  store float %call13, ptr %z.ascast.realp, align 4, !tbaa !96
  %18 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %19 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul14 = fmul contract float %18, %19
  %20 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %21 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul15 = fmul contract float %20, %21
  %sub16 = fsub contract float %mul14, %mul15
  %22 = load float, ptr %__denom.ascast, align 4, !tbaa !96
  %div17 = fdiv contract float %sub16, %22
  %23 = load i32, ptr %__ilogbw.ascast, align 4, !tbaa !36
  %sub18 = sub nsw i32 0, %23
  %call19 = call contract float @__ocml_scalbn_f32(float noundef %div17, i32 noundef %sub18) #11
  %z.ascast.imagp = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 1
  store float %call19, ptr %z.ascast.imagp, align 4, !tbaa !96
  %z.ascast.realp20 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 0
  %24 = load float, ptr %z.ascast.realp20, align 4, !tbaa !96
  %call21 = call i32 @__ocml_isnan_f32(float noundef %24) #11
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end105

land.lhs.true:                                    ; preds = %if.end
  %z.ascast.imagp23 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 1
  %25 = load float, ptr %z.ascast.imagp23, align 4, !tbaa !96
  %call24 = call i32 @__ocml_isnan_f32(float noundef %25) #11
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end105

if.then26:                                        ; preds = %land.lhs.true
  %26 = load float, ptr %__denom.ascast, align 4, !tbaa !96
  %cmp = fcmp contract oeq float %26, 0.000000e+00
  br i1 %cmp, label %land.lhs.true27, label %if.else

land.lhs.true27:                                  ; preds = %if.then26
  %27 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call28 = call i32 @__ocml_isnan_f32(float noundef %27) #11
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false, label %if.then32

lor.lhs.false:                                    ; preds = %land.lhs.true27
  %28 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call30 = call i32 @__ocml_isnan_f32(float noundef %28) #11
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.else, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false, %land.lhs.true27
  %29 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call33 = call contract float @__ocml_copysign_f32(float noundef 0x7FF0000000000000, float noundef %29) #11
  %30 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %mul34 = fmul contract float %call33, %30
  %z.ascast.realp35 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 0
  store float %mul34, ptr %z.ascast.realp35, align 4, !tbaa !96
  %31 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call36 = call contract float @__ocml_copysign_f32(float noundef 0x7FF0000000000000, float noundef %31) #11
  %32 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %mul37 = fmul contract float %call36, %32
  %z.ascast.imagp38 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 1
  store float %mul37, ptr %z.ascast.imagp38, align 4, !tbaa !96
  br label %if.end104

if.else:                                          ; preds = %lor.lhs.false, %if.then26
  %33 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call39 = call i32 @__ocml_isinf_f32(float noundef %33) #11
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true44, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.else
  %34 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call42 = call i32 @__ocml_isinf_f32(float noundef %34) #11
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true44, label %if.else70

land.lhs.true44:                                  ; preds = %lor.lhs.false41, %if.else
  %35 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call45 = call i32 @__ocml_isfinite_f32(float noundef %35) #11
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %land.lhs.true47, label %if.else70

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %36 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call48 = call i32 @__ocml_isfinite_f32(float noundef %36) #11
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.else70

if.then50:                                        ; preds = %land.lhs.true47
  %37 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call51 = call i32 @__ocml_isinf_f32(float noundef %37) #11
  %tobool52 = icmp ne i32 %call51, 0
  %38 = zext i1 %tobool52 to i64
  %cond = select i1 %tobool52, i32 1, i32 0
  %conv53 = sitofp i32 %cond to float
  %39 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call54 = call contract float @__ocml_copysign_f32(float noundef %conv53, float noundef %39) #11
  store float %call54, ptr %__a.addr.ascast, align 4, !tbaa !96
  %40 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call55 = call i32 @__ocml_isinf_f32(float noundef %40) #11
  %tobool56 = icmp ne i32 %call55, 0
  %41 = zext i1 %tobool56 to i64
  %cond57 = select i1 %tobool56, i32 1, i32 0
  %conv58 = sitofp i32 %cond57 to float
  %42 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call59 = call contract float @__ocml_copysign_f32(float noundef %conv58, float noundef %42) #11
  store float %call59, ptr %__b.addr.ascast, align 4, !tbaa !96
  %43 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %44 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul60 = fmul contract float %43, %44
  %45 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %46 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul61 = fmul contract float %45, %46
  %add62 = fadd contract float %mul60, %mul61
  %mul63 = fmul contract float 0x7FF0000000000000, %add62
  %z.ascast.realp64 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 0
  store float %mul63, ptr %z.ascast.realp64, align 4, !tbaa !96
  %47 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %48 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul65 = fmul contract float %47, %48
  %49 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %50 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul66 = fmul contract float %49, %50
  %sub67 = fsub contract float %mul65, %mul66
  %mul68 = fmul contract float 0x7FF0000000000000, %sub67
  %z.ascast.imagp69 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 1
  store float %mul68, ptr %z.ascast.imagp69, align 4, !tbaa !96
  br label %if.end103

if.else70:                                        ; preds = %land.lhs.true47, %land.lhs.true44, %lor.lhs.false41
  %51 = load float, ptr %__logbw.ascast, align 4, !tbaa !96
  %call71 = call i32 @__ocml_isinf_f32(float noundef %51) #11
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %land.lhs.true73, label %if.end102

land.lhs.true73:                                  ; preds = %if.else70
  %52 = load float, ptr %__logbw.ascast, align 4, !tbaa !96
  %cmp74 = fcmp contract ogt float %52, 0.000000e+00
  br i1 %cmp74, label %land.lhs.true75, label %if.end102

land.lhs.true75:                                  ; preds = %land.lhs.true73
  %53 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %call76 = call i32 @__ocml_isfinite_f32(float noundef %53) #11
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %land.lhs.true78, label %if.end102

land.lhs.true78:                                  ; preds = %land.lhs.true75
  %54 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %call79 = call i32 @__ocml_isfinite_f32(float noundef %54) #11
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.end102

if.then81:                                        ; preds = %land.lhs.true78
  %55 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call82 = call i32 @__ocml_isinf_f32(float noundef %55) #11
  %tobool83 = icmp ne i32 %call82, 0
  %56 = zext i1 %tobool83 to i64
  %cond84 = select i1 %tobool83, i32 1, i32 0
  %conv85 = sitofp i32 %cond84 to float
  %57 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %call86 = call contract float @__ocml_copysign_f32(float noundef %conv85, float noundef %57) #11
  store float %call86, ptr %__c.addr.ascast, align 4, !tbaa !96
  %58 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call87 = call i32 @__ocml_isinf_f32(float noundef %58) #11
  %tobool88 = icmp ne i32 %call87, 0
  %59 = zext i1 %tobool88 to i64
  %cond89 = select i1 %tobool88, i32 1, i32 0
  %conv90 = sitofp i32 %cond89 to float
  %60 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %call91 = call contract float @__ocml_copysign_f32(float noundef %conv90, float noundef %60) #11
  store float %call91, ptr %__d.addr.ascast, align 4, !tbaa !96
  %61 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %62 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul92 = fmul contract float %61, %62
  %63 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %64 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul93 = fmul contract float %63, %64
  %add94 = fadd contract float %mul92, %mul93
  %mul95 = fmul contract float 0.000000e+00, %add94
  %z.ascast.realp96 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 0
  store float %mul95, ptr %z.ascast.realp96, align 4, !tbaa !96
  %65 = load float, ptr %__b.addr.ascast, align 4, !tbaa !96
  %66 = load float, ptr %__c.addr.ascast, align 4, !tbaa !96
  %mul97 = fmul contract float %65, %66
  %67 = load float, ptr %__a.addr.ascast, align 4, !tbaa !96
  %68 = load float, ptr %__d.addr.ascast, align 4, !tbaa !96
  %mul98 = fmul contract float %67, %68
  %sub99 = fsub contract float %mul97, %mul98
  %mul100 = fmul contract float 0.000000e+00, %sub99
  %z.ascast.imagp101 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 1
  store float %mul100, ptr %z.ascast.imagp101, align 4, !tbaa !96
  br label %if.end102

if.end102:                                        ; preds = %if.then81, %land.lhs.true78, %land.lhs.true75, %land.lhs.true73, %if.else70
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then50
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then32
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %land.lhs.true, %if.end
  %z.ascast.realp106 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 0
  %z.ascast.real = load float, ptr %z.ascast.realp106, align 4
  %z.ascast.imagp107 = getelementptr inbounds { float, float }, ptr %z.ascast, i32 0, i32 1
  %z.ascast.imag = load float, ptr %z.ascast.imagp107, align 4
  %retval.ascast.realp = getelementptr inbounds { float, float }, ptr %retval.ascast, i32 0, i32 0
  %retval.ascast.imagp = getelementptr inbounds { float, float }, ptr %retval.ascast, i32 0, i32 1
  store float %z.ascast.real, ptr %retval.ascast.realp, align 4
  store float %z.ascast.imag, ptr %retval.ascast.imagp, align 4
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %z) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %__denom) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %__logbw) #3
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %__ilogbw) #3
  %69 = load [2 x i32], ptr %retval.ascast, align 4
  ret [2 x i32] %69
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal double @__ocml_copysign_f64(double noundef %0, double noundef %1) #8 {
  %3 = tail call double @llvm.copysign.f64(double %0, double %1)
  ret double %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #9

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__ocml_copysign_f32(float noundef %0, float noundef %1) #8 {
  %3 = tail call float @llvm.copysign.f32(float %0, float %1)
  ret float %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #9

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal double @__ocml_fabs_f64(double noundef %0) #8 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  ret double %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__ocml_fabs_f32(float noundef %0) #8 {
  %2 = tail call float @llvm.fabs.f32(float %0)
  ret float %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal double @__ocml_fmax_f64(double noundef %0, double noundef %1) #8 {
  %3 = tail call double @llvm.maxnum.f64(double %0, double %1)
  ret double %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #9

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__ocml_fmax_f32(float noundef %0, float noundef %1) #8 {
  %3 = tail call float @llvm.maxnum.f32(float %0, float %1)
  ret float %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal i32 @__ocml_isfinite_f64(double noundef %0) #8 {
  %2 = tail call i1 @llvm.amdgcn.class.f64(double %0, i32 504)
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.amdgcn.class.f64(double, i32) #9

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal i32 @__ocml_isfinite_f32(float noundef %0) #8 {
  %2 = tail call i1 @llvm.amdgcn.class.f32(float %0, i32 504)
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.amdgcn.class.f32(float, i32) #9

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal i32 @__ocml_isinf_f64(double noundef %0) #8 {
  %2 = tail call double @llvm.fabs.f64(double %0) #12
  %3 = fcmp oeq double %2, 0x7FF0000000000000
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal i32 @__ocml_isinf_f32(float noundef %0) #8 {
  %2 = tail call float @llvm.fabs.f32(float %0) #12
  %3 = fcmp oeq float %2, 0x7FF0000000000000
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal i32 @__ocml_isnan_f64(double noundef %0) #8 {
  %2 = fcmp uno double %0, 0.000000e+00
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal i32 @__ocml_isnan_f32(float noundef %0) #8 {
  %2 = fcmp uno float %0, 0.000000e+00
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal double @__ocml_logb_f64(double noundef %0) #8 {
  %2 = tail call i32 @llvm.amdgcn.frexp.exp.i32.f64(double %0)
  %3 = add nsw i32 %2, -1
  %4 = sitofp i32 %3 to double
  %5 = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !98, !range !102
  %6 = icmp eq i8 %5, 0
  %7 = tail call double @llvm.fabs.f64(double %0)
  %8 = tail call i1 @llvm.amdgcn.class.f64(double %7, i32 504)
  %9 = select i1 %8, double %4, double %7
  %10 = fcmp oeq double %0, 0.000000e+00
  %11 = select i1 %10, double 0xFFF0000000000000, double %9
  %12 = select i1 %6, double %11, double %4
  ret double %12
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.frexp.exp.i32.f64(double) #9

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__ocml_logb_f32(float noundef %0) #8 {
  %2 = tail call i32 @llvm.amdgcn.frexp.exp.i32.f32(float %0)
  %3 = add nsw i32 %2, -1
  %4 = sitofp i32 %3 to float
  %5 = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !98, !range !102
  %6 = icmp eq i8 %5, 0
  %7 = tail call float @llvm.fabs.f32(float %0)
  %8 = tail call i1 @llvm.amdgcn.class.f32(float %7, i32 504)
  %9 = select i1 %8, float %4, float %7
  %10 = fcmp oeq float %0, 0.000000e+00
  %11 = select i1 %10, float 0xFFF0000000000000, float %9
  %12 = select i1 %6, float %11, float %4
  ret float %12
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.frexp.exp.i32.f32(float) #9

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn memory(none)
define internal double @__ocml_scalbn_f64(double noundef %0, i32 noundef %1) #10 {
  %3 = tail call double @__ocml_ldexp_f64(double noundef %0, i32 noundef %1) #11
  ret double %3
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal double @__ocml_ldexp_f64(double noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = tail call double @llvm.amdgcn.ldexp.f64(double %0, i32 %1)
  ret double %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.amdgcn.ldexp.f64(double, i32) #9

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn memory(none)
define internal float @__ocml_scalbn_f32(float noundef %0, i32 noundef %1) #10 {
  %3 = tail call float @__ocml_ldexp_f32(float noundef %0, i32 noundef %1) #11
  ret float %3
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__ocml_ldexp_f32(float noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = tail call float @llvm.amdgcn.ldexp.f32(float %0, i32 %1)
  ret float %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.ldexp.f32(float, i32) #9

attributes #0 = { alwaysinline convergent norecurse nounwind "kernel" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" "uniform-work-group-size"="true" }
attributes #1 = { alwaysinline convergent norecurse nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }
attributes #4 = { alwaysinline }
attributes #5 = { convergent norecurse nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #6 = { convergent nounwind }
attributes #7 = { cold convergent mustprogress noinline nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx90a" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #8 = { convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { convergent mustprogress nofree norecurse nounwind willreturn memory(none) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #11 = { convergent nounwind willreturn memory(none) }
attributes #12 = { memory(none) }

!omp_offload.info = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10}
!nvvm.annotations = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26}
!llvm.ident = !{!27, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28, !28}
!opencl.ocl.version = !{!29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29, !29}

!0 = !{i32 0, i32 90, i32 -1966597339, !"_ZN6miniFE10matvec_stdINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_", i32 521, i32 0, i32 10}
!1 = !{i32 0, i32 90, i32 1249138147, !"_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_", i32 254, i32 0, i32 9}
!2 = !{i32 0, i32 90, i32 1249138147, !"_ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3_", i32 200, i32 0, i32 4}
!3 = !{i32 0, i32 90, i32 1249138147, !"_ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3_", i32 205, i32 0, i32 5}
!4 = !{i32 0, i32 90, i32 1249138147, !"_ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3_", i32 210, i32 0, i32 6}
!5 = !{i32 0, i32 90, i32 1249138147, !"_ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3_", i32 215, i32 0, i32 7}
!6 = !{i32 0, i32 90, i32 1249138147, !"_ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3_", i32 220, i32 0, i32 8}
!7 = !{i32 0, i32 90, i32 1249138147, !"_ZN6miniFE6dot_r2INS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_", i32 290, i32 0, i32 3}
!8 = !{i32 0, i32 90, i32 1249138147, !"_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_", i32 157, i32 0, i32 0}
!9 = !{i32 0, i32 90, i32 1249138147, !"_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_", i32 162, i32 0, i32 1}
!10 = !{i32 0, i32 90, i32 1249138147, !"_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_", i32 169, i32 0, i32 2}
!11 = !{ptr @__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l157, !"kernel", i32 1}
!12 = !{ptr @__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l162, !"kernel", i32 1}
!13 = !{ptr @__omp_offloading_5a_4a7455e3__ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3__l169, !"kernel", i32 1}
!14 = !{ptr @__omp_offloading_5a_4a7455e3__ZN6miniFE6dot_r2INS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4__l290, !"kernel", i32 1}
!15 = !{ptr @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l200, !"kernel", i32 1}
!16 = !{ptr @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l205, !"kernel", i32 1}
!17 = !{ptr @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l210, !"kernel", i32 1}
!18 = !{ptr @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l215, !"kernel", i32 1}
!19 = !{ptr @__omp_offloading_5a_4a7455e3__ZN6miniFE6daxpbyINS_6VectorIdiiEEEEvdRKT_dRS3__l220, !"kernel", i32 1}
!20 = !{ptr @__omp_offloading_5a_4a7455e3__ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9__l254, !"kernel", i32 1}
!21 = !{ptr @__omp_offloading_5a_8ac81b25__ZN6miniFE10matvec_stdINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7__l521, !"kernel", i32 1}
!22 = !{i32 1, !"amdgpu_code_object_version", i32 400}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"openmp", i32 50}
!25 = !{i32 7, !"openmp-device", i32 50}
!26 = !{i32 8, !"PIC Level", i32 1}
!27 = !{!"clang version 16.0.0 (git@github.com:jdoerfert/llvm-project.git 048cb3b55cd509457bfea1a89d69169eebd03ab3)"}
!28 = !{!"AMD clang version 15.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.4.3 23045 a29fe425c7b0e5aba97ed2f95f61fd5ecba68aed)"}
!29 = !{i32 2, i32 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"long", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C++ TBAA"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !32, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !32, i64 0}
!38 = distinct !{}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.parallel_accesses", !38}
!41 = !{!"llvm.loop.vectorize.enable", i1 true}
!42 = distinct !{}
!43 = !{!44, !44, i64 0}
!44 = !{!"double", !32, i64 0}
!45 = distinct !{!45, !46, !41}
!46 = !{!"llvm.loop.parallel_accesses", !42}
!47 = distinct !{}
!48 = distinct !{!48, !49, !41}
!49 = !{!"llvm.loop.parallel_accesses", !47}
!50 = distinct !{}
!51 = distinct !{!51, !52, !41}
!52 = !{!"llvm.loop.parallel_accesses", !50}
!53 = distinct !{}
!54 = distinct !{!54, !55, !41}
!55 = !{!"llvm.loop.parallel_accesses", !53}
!56 = distinct !{}
!57 = distinct !{!57, !58, !41}
!58 = !{!"llvm.loop.parallel_accesses", !56}
!59 = !{!60, !60, i64 0}
!60 = !{!"short", !32, i64 0}
!61 = !{!62, !32, i64 0}
!62 = !{!"_ZTS21_globalized_locals_ty", !32, i64 0}
!63 = distinct !{}
!64 = distinct !{!64, !65, !41}
!65 = !{!"llvm.loop.parallel_accesses", !63}
!66 = distinct !{}
!67 = distinct !{!67, !68, !41}
!68 = !{!"llvm.loop.parallel_accesses", !66}
!69 = distinct !{}
!70 = distinct !{!70, !71, !41}
!71 = !{!"llvm.loop.parallel_accesses", !69}
!72 = distinct !{}
!73 = distinct !{!73, !74, !41}
!74 = !{!"llvm.loop.parallel_accesses", !72}
!75 = distinct !{}
!76 = distinct !{!76, !77, !41}
!77 = !{!"llvm.loop.parallel_accesses", !75}
!78 = distinct !{}
!79 = distinct !{!79, !80, !41}
!80 = !{!"llvm.loop.parallel_accesses", !78}
!81 = distinct !{}
!82 = distinct !{!82, !83, !41}
!83 = !{!"llvm.loop.parallel_accesses", !81}
!84 = distinct !{}
!85 = distinct !{!85, !86, !41}
!86 = !{!"llvm.loop.parallel_accesses", !84}
!87 = distinct !{}
!88 = distinct !{!88, !89, !41}
!89 = !{!"llvm.loop.parallel_accesses", !87}
!90 = distinct !{}
!91 = distinct !{!91, !92, !41}
!92 = !{!"llvm.loop.parallel_accesses", !90}
!93 = distinct !{!93, !94, !95}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.count", i32 27}
!96 = !{!97, !97, i64 0}
!97 = !{!"float", !32, i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"bool", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{i8 0, i8 2}
