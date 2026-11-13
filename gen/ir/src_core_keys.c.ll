; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.KeyState = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.KeyRepeatState = type { i16, i16, i16, i16, i8, i8, i16 }

@gPreviousKeys = external dso_local local_unnamed_addr global i16, align 2
@gKeyState = external dso_local local_unnamed_addr global %struct.KeyState, align 2
@gDirectionHigh = external dso_local local_unnamed_addr constant [16 x i8], align 1
@gDirectionLow = external dso_local local_unnamed_addr constant [16 x i8], align 1
@gKeyRepeatState = external dso_local local_unnamed_addr global %struct.KeyRepeatState, align 2
@switch.table.QueryDirection = private unnamed_addr constant [4 x ptr] [ptr @gKeyState, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 1), ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 2), ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 3)], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @InitializeKeys() local_unnamed_addr #0 {
  store i16 90, ptr @gKeyRepeatState, align 2
  store i16 4, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 1), align 2
  store i16 0, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 3), align 2
  store i16 0, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 4), align 2
  store i8 0, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 5), align 1
  store i16 0, ptr @gPreviousKeys, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @ConfigureKeyRepeat(i16 noundef zeroext %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  store i16 %0, ptr @gKeyRepeatState, align 2
  store i16 %1, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 1), align 2
  store i16 0, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 3), align 2
  store i16 0, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 2), align 2
  store i8 %2, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 4), align 2
  store i8 %3, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 5), align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define dso_local arm_apcscc void @ReadKeys() local_unnamed_addr #1 {
  %1 = load volatile i16, ptr inttoptr (i32 67109168 to ptr), align 16
  %2 = and i16 %1, 1023
  %3 = xor i16 %2, 1023
  %4 = load i16, ptr @gPreviousKeys, align 2
  %5 = xor i16 %4, -1
  %6 = and i16 %3, %5
  store i16 %6, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 1), align 2
  store i16 %6, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 2), align 2
  %7 = or i16 %1, -1024
  %8 = and i16 %4, %7
  store i16 %8, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 3), align 2
  store i16 %3, ptr @gKeyState, align 2
  %9 = icmp ne i16 %6, 0
  %10 = icmp eq i16 %6, %3
  %11 = and i1 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = load i16, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 8), align 2
  br label %16

14:                                               ; preds = %0
  %15 = load i16, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 6), align 2
  store i16 %15, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 8), align 2
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i16 [ %13, %12 ], [ %15, %14 ]
  %18 = add i16 %17, -1
  store i16 %18, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 8), align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  store i16 %3, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 2), align 2
  %21 = load i16, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 7), align 2
  store i16 %21, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 8), align 2
  br label %22

22:                                               ; preds = %20, %16
  %23 = icmp eq i16 %3, %4
  %24 = load i16, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 9), align 2
  %25 = add i16 %24, 1
  %26 = select i1 %23, i16 %25, i16 0
  store i16 %26, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 9), align 2
  store i16 %3, ptr @gPreviousKeys, align 2
  %27 = lshr i16 %3, 4
  %28 = and i16 %27, 15
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %22
  %31 = zext nneg i16 %28 to i32
  %32 = getelementptr [16 x i8], ptr @gDirectionHigh, i32 0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i16
  %35 = shl nuw i16 %34, 8
  %36 = getelementptr [16 x i8], ptr @gDirectionLow, i32 0, i32 %31
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i16
  %39 = or disjoint i16 %35, %38
  store i16 %39, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 4), align 2
  br label %40

40:                                               ; preds = %30, %22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetKeyRepeatDelays(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  store i16 %0, ptr @gKeyRepeatState, align 2
  store i16 %1, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 1), align 2
  store i16 0, ptr getelementptr inbounds (%struct.KeyRepeatState, ptr @gKeyRepeatState, i32 0, i32 2), align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @InputReserved09B24() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i8 @QueryDirection(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = icmp ult i8 %1, 4
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = zext nneg i8 %1 to i32
  %6 = getelementptr inbounds [4 x ptr], ptr @switch.table.QueryDirection, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 240
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %4
  %12 = icmp eq i8 %0, 1
  %13 = load i16, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 4), align 2
  br i1 %12, label %14, label %17

14:                                               ; preds = %11
  %15 = lshr i16 %13, 8
  %16 = trunc i16 %15 to i8
  br label %19

17:                                               ; preds = %11
  %18 = trunc i16 %13 to i8
  br label %19

19:                                               ; preds = %2, %4, %17, %14
  %20 = phi i8 [ %16, %14 ], [ %18, %17 ], [ 0, %4 ], [ 0, %2 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  switch i8 %1, label %15 [
    i8 0, label %3
    i8 1, label %6
    i8 2, label %9
    i8 3, label %12
  ]

3:                                                ; preds = %2
  %4 = load i16, ptr @gKeyState, align 2
  %5 = and i16 %4, %0
  br label %15

6:                                                ; preds = %2
  %7 = load i16, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 1), align 2
  %8 = and i16 %7, %0
  br label %15

9:                                                ; preds = %2
  %10 = load i16, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 2), align 2
  %11 = and i16 %10, %0
  br label %15

12:                                               ; preds = %2
  %13 = load i16, ptr getelementptr inbounds (%struct.KeyState, ptr @gKeyState, i32 0, i32 3), align 2
  %14 = and i16 %13, %0
  br label %15

15:                                               ; preds = %2, %12, %9, %6, %3
  %16 = phi i16 [ undef, %2 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ], [ %5, %3 ]
  ret i16 %16
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
