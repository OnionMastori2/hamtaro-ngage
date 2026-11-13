; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetTaskTextHorizontalOffset(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 65535
  %4 = icmp ult i32 %3, 255
  br i1 %4, label %36, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %7) #2
  %9 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = and i8 %10, 127
  %14 = zext nneg i8 %13 to i32
  %15 = mul i32 %8, %14
  br label %28

16:                                               ; preds = %5
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  %19 = load i8, ptr %18, align 1
  %20 = lshr i8 %19, 3
  %21 = and i8 %20, 1
  %22 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %17, i8 noundef zeroext %21) #2
  %23 = load i8, ptr %9, align 4
  %24 = zext i8 %23 to i32
  %25 = add i32 %8, -1
  %26 = mul i32 %25, %24
  %27 = add i32 %26, %22
  br label %28

28:                                               ; preds = %16, %12
  %29 = phi i32 [ %15, %12 ], [ %27, %16 ]
  %30 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 3
  %34 = sub i32 %33, %29
  %35 = sdiv i32 %34, 2
  br label %36

36:                                               ; preds = %2, %28
  %37 = phi i32 [ %35, %28 ], [ %1, %2 ]
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 16
  store i16 %38, ptr %39, align 4
  ret void
}

declare dso_local arm_apcscc i32 @CountTaskTextItems(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
