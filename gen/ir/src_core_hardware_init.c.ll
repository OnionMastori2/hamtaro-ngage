; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gUnknownPatterns = external dso_local global [16 x i16], align 2
@gUnknown2E30 = external dso_local local_unnamed_addr global i8, align 1
@gRandomSeed0 = external dso_local local_unnamed_addr global i32, align 4
@gRandomSeed1 = external dso_local local_unnamed_addr global i32, align 4
@gRandomSeed2 = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeHardware() local_unnamed_addr #0 {
  store volatile i16 17846, ptr inttoptr (i32 67109380 to ptr), align 4
  store volatile i16 8, ptr inttoptr (i32 67108872 to ptr), align 8
  store volatile ptr @irq_dispatch, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50340480 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2080374272, ptr inttoptr (i32 67109084 to ptr), align 4
  %1 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store ptr inttoptr (i32 50340480 to ptr), ptr inttoptr (i32 50364412 to ptr), align 4
  store volatile i16 8195, ptr inttoptr (i32 67109376 to ptr), align 512
  store volatile i16 8, ptr inttoptr (i32 67108868 to ptr), align 4
  tail call arm_apcscc void @InitializeVideoState() #2
  store i8 0, ptr @gUnknown2E30, align 1
  store i32 15042, ptr @gRandomSeed0, align 4
  store i32 19955, ptr @gRandomSeed1, align 4
  %2 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %3 = and i16 %2, 255
  %4 = add nuw nsw i16 %3, 1
  %5 = zext nneg i16 %4 to i32
  store i32 %5, ptr @gRandomSeed2, align 4
  store volatile i16 4369, ptr @gUnknownPatterns, align 2
  store volatile i16 8738, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 1), align 2
  store volatile i16 17476, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 2), align 2
  store volatile i16 -30584, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 3), align 2
  store volatile i16 257, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 4), align 2
  store volatile i16 4112, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 5), align 2
  store volatile i16 21845, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 6), align 2
  store volatile i16 -21846, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 7), align 2
  store volatile i16 4352, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 8), align 2
  store volatile i16 17, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 9), align 2
  store volatile i16 21930, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 10), align 2
  store volatile i16 -21931, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 11), align 2
  store volatile i16 23130, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 12), align 2
  store volatile i16 -23131, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 13), align 2
  store volatile i16 291, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 14), align 2
  store volatile i16 17767, ptr getelementptr inbounds ([16 x i16], ptr @gUnknownPatterns, i32 0, i32 15), align 2
  ret void
}

declare dso_local arm_apcscc void @irq_dispatch() #1

declare dso_local arm_apcscc void @InitializeVideoState() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
