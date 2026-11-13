; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @UnlinkAudioChannelAsm(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i32, ptr %0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = inttoptr i32 %3 to ptr
  %7 = getelementptr i32, ptr %0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i32, ptr %0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr i32, ptr %6, i32 8
  %13 = inttoptr i32 %10 to ptr
  %14 = getelementptr i32, ptr %13, i32 13
  %15 = select i1 %11, ptr %12, ptr %14
  store i32 %8, ptr %15, align 4
  %16 = icmp eq i32 %8, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = inttoptr i32 %8 to ptr
  %19 = getelementptr i32, ptr %18, i32 12
  store i32 %10, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %5
  store i32 0, ptr %2, align 4
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
