; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskGraphicsByte645 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @QueueTaskTextRowTransfer(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 2
  %10 = lshr i8 %9, 1
  %11 = zext nneg i8 %10 to i32
  br label %12

12:                                               ; preds = %12, %1
  %13 = phi i32 [ %7, %1 ], [ %15, %12 ]
  %14 = icmp slt i32 %13, %11
  %15 = sub nsw i32 %13, %11
  br i1 %14, label %16, label %12

16:                                               ; preds = %12
  %17 = shl nuw nsw i32 %4, 6
  %18 = load i8, ptr %0, align 4
  %19 = icmp sgt i8 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  %24 = icmp ne i8 %3, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %28, label %35

26:                                               ; preds = %16
  %27 = icmp eq i8 %3, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20, %26
  %29 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 15
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  %32 = load i32, ptr %31, align 4
  %33 = mul nsw i32 %13, %17
  %34 = add i32 %32, %33
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %30, i32 noundef %34, i32 noundef %17) #2
  br label %35

35:                                               ; preds = %26, %28, %20
  store i8 0, ptr @gTaskGraphicsByte645, align 1
  ret void
}

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
