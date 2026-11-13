; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderXZCollisionRecord = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gMainScriptDestinationWords21F0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @HasRenderXZRecordCollision(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %33, %2
  %4 = phi i32 [ 0, %2 ], [ %35, %33 ]
  %5 = getelementptr [0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = load i16, ptr %7, align 2
  %11 = zext i16 %10 to i32
  %12 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %13 = zext i8 %12 to i16
  %14 = icmp ugt i16 %10, %13
  br i1 %14, label %39, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %7, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @gRenderSlots, align 4
  %22 = getelementptr %struct.RenderSlot, ptr %21, i32 %11, i32 23
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %7, i32 0, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call arm_apcscc i32 @IsRenderXZWithinRecordRectangle(ptr noundef nonnull %7, i32 noundef %0, i32 noundef %1) #2
  br label %33

31:                                               ; preds = %25
  %32 = tail call arm_apcscc i32 @IsRenderXZWithinRecordCircle(ptr noundef nonnull %7, i32 noundef %0, i32 noundef %1) #2
  br label %33

33:                                               ; preds = %29, %31, %20, %15
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ], [ 0, %20 ], [ 0, %15 ]
  %35 = add nuw nsw i32 %4, 1
  %36 = icmp ne i32 %34, 0
  %37 = icmp ugt i32 %4, 30
  %38 = or i1 %37, %36
  br i1 %38, label %39, label %3

39:                                               ; preds = %3, %33, %9
  %40 = phi i32 [ %34, %33 ], [ 0, %9 ], [ 0, %3 ]
  ret i32 %40
}

declare dso_local arm_apcscc i32 @IsRenderXZWithinRecordRectangle(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @IsRenderXZWithinRecordCircle(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
