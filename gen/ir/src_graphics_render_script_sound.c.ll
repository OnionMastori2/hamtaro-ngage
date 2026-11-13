; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationStartSong(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 22) #2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 64
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr i8, ptr %11, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  %15 = getelementptr i8, ptr %11, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i16
  %18 = shl nuw i16 %17, 8
  %19 = or disjoint i16 %18, %14
  tail call arm_apcscc void @StartSong(i16 noundef zeroext %19) #2
  br label %20

20:                                               ; preds = %10, %5, %2
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr i8, ptr %21, i32 3
  store ptr %22, ptr %1, align 4
  %23 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 3
  store i16 %25, ptr %23, align 4
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationStopSong(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 22) #2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 64
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr i8, ptr %11, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  %15 = getelementptr i8, ptr %11, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i16
  %18 = shl nuw i16 %17, 8
  %19 = or disjoint i16 %18, %14
  tail call arm_apcscc void @StopSong(i16 noundef zeroext %19) #2
  br label %20

20:                                               ; preds = %10, %5, %2
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr i8, ptr %21, i32 3
  store ptr %22, ptr %1, align 4
  %23 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 3
  store i16 %25, ptr %23, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @StopSong(i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
