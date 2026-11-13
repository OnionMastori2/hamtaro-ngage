; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptCommandInitialized = external dso_local local_unnamed_addr global i8, align 1
@gScriptWaitCounter = external dso_local local_unnamed_addr global i16, align 2
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ScriptWaitInput(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gScriptCommandInitialized, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i16
  %8 = shl nuw i16 %7, 8
  %9 = load i8, ptr %0, align 1
  %10 = zext i8 %9 to i16
  %11 = or disjoint i16 %8, %10
  store i16 %11, ptr @gScriptWaitCounter, align 2
  store i8 1, ptr @gScriptCommandInitialized, align 1
  br label %12

12:                                               ; preds = %4, %1
  %13 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 1, i8 noundef zeroext 1) #2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i8 0, ptr @gScriptOpcode, align 1
  br label %16

16:                                               ; preds = %15, %12
  store i8 1, ptr @gScriptYielded, align 1
  ret void
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
