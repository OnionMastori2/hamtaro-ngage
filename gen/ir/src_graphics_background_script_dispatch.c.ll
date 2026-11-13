; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4
@gBackgroundRenderStateCount = external dso_local local_unnamed_addr global i8, align 1
@gBackgroundCommandHandlers = external dso_local local_unnamed_addr global [0 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateBackgroundStates() local_unnamed_addr #0 {
  %1 = alloca ptr, align 4
  %2 = load i8, ptr @gBackgroundRenderStateCount, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %46, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @gRenderStates, align 4
  br label %6

6:                                                ; preds = %4, %39
  %7 = phi i32 [ %41, %39 ], [ 0, %4 ]
  %8 = phi ptr [ %42, %39 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.BackgroundRenderState, ptr %8, i32 0, i32 9
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BackgroundRenderState, ptr %8, i32 0, i32 4
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BackgroundRenderState, ptr %8, i32 0, i32 5
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #3
  %21 = getelementptr inbounds %struct.BackgroundRenderState, ptr %8, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  store ptr %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %27, %20
  %24 = load ptr, ptr %1, align 4
  %25 = load i8, ptr %24, align 1
  %26 = icmp slt i8 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = and i8 %25, 127
  %29 = zext nneg i8 %28 to i32
  %30 = getelementptr i8, ptr %24, i32 1
  store ptr %30, ptr %1, align 4
  %31 = getelementptr [0 x ptr], ptr @gBackgroundCommandHandlers, i32 0, i32 %29
  %32 = load ptr, ptr %31, align 4
  %33 = call arm_apcscc i32 %32(ptr noundef %8, ptr noundef nonnull %1) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %23, label %35

35:                                               ; preds = %27, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #3
  br label %39

36:                                               ; preds = %16
  call arm_apcscc void @UpdateBackgroundMotion(ptr noundef nonnull %8) #4
  br label %39

37:                                               ; preds = %12
  %38 = add i16 %14, -1
  store i16 %38, ptr %13, align 4
  br label %39

39:                                               ; preds = %37, %36, %35, %6
  %40 = add nuw nsw i32 %7, 1
  %41 = and i32 %40, 255
  %42 = getelementptr %struct.BackgroundRenderState, ptr %8, i32 1
  %43 = load i8, ptr @gBackgroundRenderStateCount, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %6, label %46

46:                                               ; preds = %39, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ProcessBackgroundState(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 4
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %2, align 4
  br label %13

13:                                               ; preds = %17, %10
  %14 = load ptr, ptr %2, align 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp slt i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = and i8 %15, 127
  %19 = zext nneg i8 %18 to i32
  %20 = getelementptr i8, ptr %14, i32 1
  store ptr %20, ptr %2, align 4
  %21 = getelementptr [0 x ptr], ptr @gBackgroundCommandHandlers, i32 0, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = call arm_apcscc i32 %22(ptr noundef %0, ptr noundef nonnull %2) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %13, label %25

25:                                               ; preds = %13, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  br label %29

26:                                               ; preds = %6
  tail call arm_apcscc void @UpdateBackgroundMotion(ptr noundef nonnull %0) #4
  br label %29

27:                                               ; preds = %1
  %28 = add i16 %4, -1
  store i16 %28, ptr %3, align 4
  br label %29

29:                                               ; preds = %25, %26, %27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ProcessBackgroundCommands(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  %3 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  store ptr %4, ptr %2, align 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = load ptr, ptr %2, align 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp slt i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = and i8 %7, 127
  %11 = zext nneg i8 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 1
  store ptr %12, ptr %2, align 4
  %13 = getelementptr [0 x ptr], ptr @gBackgroundCommandHandlers, i32 0, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = call arm_apcscc i32 %14(ptr noundef %0, ptr noundef nonnull %2) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %5, label %17

17:                                               ; preds = %5, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret void
}

declare dso_local arm_apcscc void @UpdateBackgroundMotion(ptr noundef) local_unnamed_addr #2

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
