; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gGraphicsScripts = external dso_local local_unnamed_addr global ptr, align 4
@gGraphicsScriptCount = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackDisableGraphicsScriptsExcept(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr @gGraphicsScriptCount, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @gGraphicsScripts, align 4
  br label %8

8:                                                ; preds = %6, %15
  %9 = phi i8 [ %16, %15 ], [ %4, %6 ]
  %10 = phi i32 [ %18, %15 ], [ 0, %6 ]
  %11 = phi ptr [ %17, %15 ], [ %7, %6 ]
  %12 = icmp eq i32 %10, %3
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  store i8 0, ptr %11, align 4
  %14 = load i8, ptr @gGraphicsScriptCount, align 1
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i8 [ %9, %8 ], [ %14, %13 ]
  %17 = getelementptr %struct.GraphicsScript, ptr %11, i32 1
  %18 = add nuw nsw i32 %10, 1
  %19 = zext i8 %16 to i32
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %8, label %21

21:                                               ; preds = %15, %1
  ret i32 1
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
