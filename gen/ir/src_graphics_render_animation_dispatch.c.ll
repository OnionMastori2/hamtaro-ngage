; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderAnimationHandlers = external dso_local local_unnamed_addr global [82 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ProcessRenderAnimation(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #2
  %3 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  store ptr %5, ptr %2, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = icmp sgt i16 %7, -1
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 2
  %11 = load i16, ptr %10, align 2
  %12 = icmp sgt i16 %11, -1
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = icmp sgt i16 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 0
  %19 = load i16, ptr %18, align 2
  %20 = icmp sgt i16 %19, -1
  br i1 %20, label %26, label %21

21:                                               ; preds = %17, %13, %9, %1
  %22 = phi i32 [ 3, %1 ], [ 2, %9 ], [ 1, %13 ], [ 0, %17 ]
  %23 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = inttoptr i32 %24 to ptr
  store ptr %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %17, %21
  %27 = phi ptr [ %25, %21 ], [ %5, %17 ]
  %28 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %27, i32 %30
  store ptr %31, ptr %2, align 4
  %32 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 3
  br label %33

33:                                               ; preds = %26, %50
  %34 = load i8, ptr %32, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load ptr, ptr %2, align 4
  %38 = load i8, ptr %37, align 1
  %39 = icmp sgt i8 %38, -1
  %40 = select i1 %39, i8 -58, i8 %38
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, -128
  %43 = getelementptr [82 x ptr], ptr @gRenderAnimationHandlers, i32 0, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = call arm_apcscc i32 %44(ptr noundef nonnull %0, ptr noundef nonnull %2) #3
  br label %50

46:                                               ; preds = %33
  %47 = add i8 %34, -1
  store i8 %47, ptr %32, align 1
  %48 = icmp ne i8 %47, 0
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %46, %36
  %51 = phi i32 [ %45, %36 ], [ %49, %46 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %33, label %53

53:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
