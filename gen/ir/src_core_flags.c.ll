; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gGameFlags = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i16 %0 to i32
  %3 = lshr i32 %2, 3
  %4 = getelementptr [0 x i8], ptr @gGameFlags, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %2, 7
  %8 = lshr i32 %6, %7
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  %4 = and i16 %0, 7
  %5 = shl nuw nsw i16 1, %4
  %6 = lshr i16 %0, 3
  %7 = zext nneg i16 %6 to i32
  %8 = getelementptr [0 x i8], ptr @gGameFlags, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = trunc i16 %5 to i8
  %11 = xor i8 %10, -1
  %12 = and i8 %9, %11
  %13 = or i8 %9, %10
  %14 = select i1 %3, i8 %12, i8 %13
  store i8 %14, ptr %8, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetGameFlag17(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i32 %0, 0
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gGameFlags, i32 0, i32 2), align 1
  %4 = and i8 %3, -3
  %5 = select i1 %2, i8 0, i8 2
  %6 = or disjoint i8 %4, %5
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gGameFlags, i32 0, i32 2), align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetGameFlag18(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i32 %0, 0
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gGameFlags, i32 0, i32 2), align 1
  %4 = and i8 %3, -5
  %5 = select i1 %2, i8 0, i8 4
  %6 = or disjoint i8 %4, %5
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gGameFlags, i32 0, i32 2), align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
