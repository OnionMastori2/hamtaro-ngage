; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gSaveGroup01Block2EB0 = external dso_local global [0 x i8], align 1
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreActorRenderSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 99), align 1
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = mul nuw nsw i32 %3, 104
  %7 = add i32 %6, %5
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call arm_apcscc ptr @memcpy(ptr noundef %8, ptr noundef nonnull @gSaveGroup01Block2EB0, i32 noundef 104) #2
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 200), align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 203), align 1
  %13 = load i8, ptr @gCoreScriptByte2274, align 1
  %14 = zext i8 %13 to i32
  %15 = load ptr, ptr @gRenderSlots, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = mul nuw nsw i32 %14, 104
  %18 = add i32 %17, %16
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call arm_apcscc ptr @memcpy(ptr noundef %19, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), i32 noundef 104) #2
  br label %21

21:                                               ; preds = %12, %1
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 304), align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 307), align 1
  %25 = load i8, ptr @gRenderClassSlots1, align 1
  %26 = zext i8 %25 to i32
  %27 = load ptr, ptr @gRenderSlots, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = mul nuw nsw i32 %26, 104
  %30 = add i32 %29, %28
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call arm_apcscc ptr @memcpy(ptr noundef %31, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), i32 noundef 104) #2
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 408), align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 411), align 1
  %37 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %38 = zext i8 %37 to i32
  %39 = load ptr, ptr @gRenderSlots, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = mul nuw nsw i32 %38, 104
  %42 = add i32 %41, %40
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call arm_apcscc ptr @memcpy(ptr noundef %43, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), i32 noundef 104) #2
  br label %45

45:                                               ; preds = %36, %33
  ret i32 0
}

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
