; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreClassXZDirections(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 0
  %4 = load i8, ptr @gRenderClassSlots0, align 1
  %5 = load i8, ptr @gRenderClassSlots1, align 1
  br i1 %3, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots8(i8 noundef zeroext %4, i8 noundef zeroext %5) #2
  %8 = load i8, ptr @gRenderClassSlots1, align 1
  %9 = load i8, ptr @gRenderClassSlots0, align 1
  %10 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots8(i8 noundef zeroext %8, i8 noundef zeroext %9) #2
  br label %16

11:                                               ; preds = %1
  %12 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %4, i8 noundef zeroext %5) #2
  %13 = load i8, ptr @gRenderClassSlots1, align 1
  %14 = load i8, ptr @gRenderClassSlots0, align 1
  %15 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %13, i8 noundef zeroext %14) #2
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ %7, %6 ], [ %12, %11 ]
  %18 = phi i32 [ %10, %6 ], [ %15, %11 ]
  %19 = trunc i32 %18 to i8
  %20 = trunc i32 %17 to i8
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 10), align 1
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 11), align 1
  ret i32 1
}

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots8(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
