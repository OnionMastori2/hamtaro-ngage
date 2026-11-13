; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1
@gBootScriptHandlers = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gScriptHandlerRunning = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @RunMainScriptFrame() local_unnamed_addr #0 {
  store i8 0, ptr @gScriptYielded, align 1
  br label %1

1:                                                ; preds = %1, %0
  %2 = load i8, ptr @gScriptOpcode, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x ptr], ptr @gBootScriptHandlers, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @gScriptCursor, align 4
  tail call arm_apcscc void %5(ptr noundef %6) #1
  %7 = load i8, ptr @gScriptYielded, align 1
  %8 = icmp eq i8 %7, 0
  %9 = load i8, ptr @gScriptHandlerRunning, align 1
  %10 = icmp ne i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %1, label %12

12:                                               ; preds = %1
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
