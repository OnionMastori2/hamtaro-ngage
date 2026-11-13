; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTaskAdjustedTextBuffers = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef nonnull ptr @CopyTaskTextAdjustedInitialDefault(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 225, ptr %2, align 4
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %2, ptr noundef nonnull @gTaskAdjustedTextBuffers, i32 noundef 16777224) #4
  %3 = load i8, ptr %0, align 1
  %4 = add i8 %3, -97
  %5 = icmp ult i8 %4, 47
  %6 = add i8 %3, -85
  %7 = select i1 %5, i8 %6, i8 %3
  store i8 %7, ptr @gTaskAdjustedTextBuffers, align 1
  %8 = load i8, ptr %0, align 1
  %9 = and i8 %8, -2
  %10 = icmp eq i8 %9, -32
  br i1 %10, label %23, label %11

11:                                               ; preds = %1, %11
  %12 = phi i32 [ %20, %11 ], [ 1, %1 ]
  %13 = phi ptr [ %16, %11 ], [ @gTaskAdjustedTextBuffers, %1 ]
  %14 = phi ptr [ %15, %11 ], [ %0, %1 ]
  %15 = getelementptr i8, ptr %14, i32 1
  %16 = getelementptr i8, ptr %13, i32 1
  %17 = load i8, ptr %15, align 1
  store i8 %17, ptr %16, align 1
  %18 = and i8 %17, -2
  %19 = icmp ne i8 %18, -32
  %20 = add nuw nsw i32 %12, 1
  %21 = icmp ult i32 %12, 31
  %22 = and i1 %21, %19
  br i1 %22, label %11, label %23, !llvm.loop !4

23:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret ptr @gTaskAdjustedTextBuffers
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef nonnull ptr @CopyTaskTextAdjustedInitial(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = shl i32 %1, 5
  %5 = getelementptr i8, ptr @gTaskAdjustedTextBuffers, i32 %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 225, ptr %3, align 4
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 16777224) #4
  %6 = load i8, ptr %0, align 1
  %7 = add i8 %6, -97
  %8 = icmp ult i8 %7, 47
  %9 = add i8 %6, -85
  %10 = select i1 %8, i8 %9, i8 %6
  store i8 %10, ptr %5, align 1
  %11 = load i8, ptr %0, align 1
  %12 = and i8 %11, -2
  %13 = icmp eq i8 %12, -32
  br i1 %13, label %27, label %14

14:                                               ; preds = %2, %14
  %15 = phi i32 [ %24, %14 ], [ 1, %2 ]
  %16 = phi ptr [ %19, %14 ], [ %5, %2 ]
  %17 = phi ptr [ %18, %14 ], [ %0, %2 ]
  %18 = getelementptr i8, ptr %17, i32 1
  %19 = getelementptr i8, ptr %16, i32 1
  %20 = load i8, ptr %18, align 1
  store i8 %20, ptr %19, align 1
  %21 = load i8, ptr %18, align 1
  %22 = and i8 %21, -2
  %23 = icmp ne i8 %22, -32
  %24 = add nuw nsw i32 %15, 1
  %25 = icmp ult i32 %15, 31
  %26 = and i1 %23, %25
  br i1 %26, label %14, label %27, !llvm.loop !4

27:                                               ; preds = %14, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @BiosCpuFastSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.peeled.count", i32 1}
