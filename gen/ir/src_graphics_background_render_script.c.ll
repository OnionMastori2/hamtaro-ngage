; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %1, 128
  %5 = icmp eq i32 %4, 0
  %6 = trunc i32 %1 to i8
  br i1 %5, label %9, label %7

7:                                                ; preds = %3
  %8 = and i8 %6, 127
  br label %10

9:                                                ; preds = %3
  tail call arm_apcscc void @ResetBackgroundLayers(i8 noundef zeroext %6) #2
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i8 [ %8, %7 ], [ %6, %9 ]
  %12 = trunc i32 %0 to i8
  tail call arm_apcscc void @ResetBackgroundRenderState(i8 noundef zeroext %12) #2
  %13 = load ptr, ptr @gRenderStates, align 4
  %14 = and i32 %0, 255
  %15 = getelementptr %struct.BackgroundRenderState, ptr %13, i32 %14, i32 9
  store i8 %11, ptr %15, align 4
  %16 = load ptr, ptr @gRenderStates, align 4
  %17 = getelementptr %struct.BackgroundRenderState, ptr %16, i32 %14, i32 6
  store ptr %2, ptr %17, align 4
  ret void
}

declare dso_local arm_apcscc void @ResetBackgroundLayers(i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @ResetBackgroundRenderState(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
