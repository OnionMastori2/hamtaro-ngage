; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gInitialIrqCallbacks = dso_local local_unnamed_addr constant [9 x ptr] [ptr @HandleVblankIrq, ptr @HandleHblankIrq, ptr @HandleVcountIrq, ptr @HandleIrqGroupC0, ptr @IrqCallback4Noop, ptr @IrqCallback5Noop, ptr @IrqCallback6Noop, ptr @IrqCallback7Noop, ptr @IrqCallback8Noop], align 4
@gUnusedIrqCallbackBD64 = dso_local local_unnamed_addr constant ptr @IrqAdjacentNoop, align 4
@gUnusedIrqNullCallbackStorage = dso_local local_unnamed_addr constant [4 x ptr] zeroinitializer, align 4

declare dso_local arm_apcscc void @HandleVblankIrq() #0

declare dso_local arm_apcscc void @HandleHblankIrq() #0

declare dso_local arm_apcscc void @HandleVcountIrq() #0

declare dso_local arm_apcscc void @HandleIrqGroupC0() #0

declare dso_local arm_apcscc void @IrqCallback4Noop() #0

declare dso_local arm_apcscc void @IrqCallback5Noop() #0

declare dso_local arm_apcscc void @IrqCallback6Noop() #0

declare dso_local arm_apcscc void @IrqCallback7Noop() #0

declare dso_local arm_apcscc void @IrqCallback8Noop() #0

declare dso_local arm_apcscc void @IrqAdjacentNoop() #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
