; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gGameFlags = external dso_local global [0 x i8], align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptSetGameFlag(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gMainScriptArgumentWords5E8, align 4
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %6 = load i8, ptr %4, align 1
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %7 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %8 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %9 = icmp eq i8 %8, 0
  %10 = lshr i16 %7, 3
  %11 = zext nneg i16 %10 to i32
  %12 = add i32 %11, ptrtoint (ptr @gGameFlags to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = and i16 %7, 7
  %15 = shl nuw nsw i16 1, %14
  %16 = load i8, ptr %13, align 1
  %17 = trunc i16 %15 to i8
  %18 = xor i8 %17, -1
  %19 = and i8 %16, %18
  %20 = or i8 %16, %17
  %21 = select i1 %9, i8 %19, i8 %20
  store i8 %21, ptr %13, align 1
  store i32 3, ptr @gScriptBytesConsumed, align 4
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
