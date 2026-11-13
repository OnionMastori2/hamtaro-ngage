; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gCoreScriptByte0785 = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup01Byte21E0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2C50 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateCoreMotionControl() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 783, i8 noundef zeroext 1) #2
  %2 = zext i16 %1 to i32
  store i8 0, ptr @gCoreScriptByte0785, align 1
  %3 = load i8, ptr @gSaveGroup01Byte21E0, align 1
  %4 = and i8 %3, 8
  %5 = icmp ne i8 %4, 0
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i8 8, ptr @gCoreScriptByte0785, align 1
  br label %33

10:                                               ; preds = %0
  %11 = zext i8 %3 to i32
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = and i32 %2, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  store i8 8, ptr @gCoreScriptByte0785, align 1
  store i8 1, ptr @gCoreScriptByte2C50, align 1
  br label %33

18:                                               ; preds = %10
  %19 = and i32 %11, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = and i32 %2, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i8 8, ptr @gCoreScriptByte0785, align 1
  store i8 3, ptr @gCoreScriptByte2C50, align 1
  br label %33

25:                                               ; preds = %21
  %26 = and i32 %2, 516
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i8 8, ptr @gCoreScriptByte0785, align 1
  store i8 2, ptr @gCoreScriptByte2C50, align 1
  br label %33

29:                                               ; preds = %25
  %30 = and i32 %2, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i8 8, ptr @gCoreScriptByte0785, align 1
  store i8 3, ptr @gCoreScriptByte2C50, align 1
  br label %33

33:                                               ; preds = %17, %14, %18, %28, %32, %29, %24, %9
  ret void
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateCoreRenderCollision() local_unnamed_addr #0 {
  %1 = load i8, ptr @gCoreScriptByte0785, align 1
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @UpdateRenderXZCollisionScript(i8 noundef zeroext %1, i8 noundef zeroext %2) #2
  %3 = load i8, ptr @gCoreScriptByte0785, align 1
  %4 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @ProcessCoreRenderCollisionRecords(i8 noundef zeroext %3, i8 noundef zeroext %4) #2
  ret void
}

declare dso_local arm_apcscc void @UpdateRenderXZCollisionScript(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @ProcessCoreRenderCollisionRecords(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
