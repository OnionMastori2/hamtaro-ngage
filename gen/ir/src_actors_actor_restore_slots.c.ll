; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gActorRestoreSlotIndices = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup01Block2EB0 = external dso_local global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreSavedRenderSlotPair(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "", "=r,0"(i32 104) #2, !srcloc !4
  tail call void asm sideeffect "", "{r0}"(ptr nonnull @gSaveGroup01Block2EB0) #2, !srcloc !5
  %3 = load i8, ptr @gActorRestoreSlotIndices, align 1
  %4 = icmp eq i8 %3, -1
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = mul i32 %2, %6
  %9 = ptrtoint ptr %7 to i32
  %10 = add i32 %8, %9
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call arm_apcscc ptr @memcpy(ptr noundef %11, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 416), i32 noundef 104) #3
  br label %13

13:                                               ; preds = %5, %1
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gActorRestoreSlotIndices, i32 0, i32 1), align 1
  %15 = icmp eq i8 %14, -1
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = zext i8 %14 to i32
  %18 = load ptr, ptr @gRenderSlots, align 4
  %19 = mul i32 %2, %17
  %20 = ptrtoint ptr %18 to i32
  %21 = add i32 %19, %20
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call arm_apcscc ptr @memcpy(ptr noundef %22, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 520), i32 noundef 104) #3
  br label %24

24:                                               ; preds = %16, %13
  ret i32 0
}

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 531}
!5 = !{i64 655}
