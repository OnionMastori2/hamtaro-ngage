; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MainScriptTaskResource = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, ptr }
%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gMainScriptTaskResourceIndices600 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskContexts5F0 = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMainScriptTaskResourcesBFD0 = external dso_local constant [0 x %struct.MainScriptTaskResource], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptSetTaskResourceIndex(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i8], ptr @gMainScriptTaskResourceIndices600, i32 0, i32 %3
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %4, align 1
  %7 = getelementptr [0 x ptr], ptr @gTaskContexts5F0, i32 0, i32 %3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = zext i8 %6 to i32
  %12 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %11
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr inbounds %struct.TaskContext, ptr %8, i32 0, i32 23
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %10, %1
  store i32 2, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
