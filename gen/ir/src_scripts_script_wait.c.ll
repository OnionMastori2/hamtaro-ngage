; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptCommandInitialized = external dso_local local_unnamed_addr global i8, align 1
@gScriptWaitCounter = external dso_local local_unnamed_addr global i16, align 2
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc void @ScriptWaitFrames(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gScriptCommandInitialized, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i16, ptr @gScriptWaitCounter, align 2
  br label %14

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i16
  %10 = shl nuw i16 %9, 8
  %11 = load i8, ptr %0, align 1
  %12 = zext i8 %11 to i16
  %13 = or disjoint i16 %10, %12
  store i16 %13, ptr @gScriptWaitCounter, align 2
  store i8 1, ptr @gScriptCommandInitialized, align 1
  store i32 2, ptr @gScriptBytesConsumed, align 4
  br label %14

14:                                               ; preds = %4, %6
  %15 = phi i16 [ %5, %4 ], [ %13, %6 ]
  %16 = add i16 %15, -1
  store i16 %16, ptr @gScriptWaitCounter, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8 0, ptr @gScriptOpcode, align 1
  br label %19

19:                                               ; preds = %18, %14
  store i8 1, ptr @gScriptYielded, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
