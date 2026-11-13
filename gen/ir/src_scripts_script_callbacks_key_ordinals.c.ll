; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptResult = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @StoreSelectedKeyOrdinal(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  store i16 0, ptr @gScriptResult, align 2
  %3 = and i16 %1, %0
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %57, %51, %45, %39, %33, %27, %21, %15, %9, %2
  %8 = phi i16 [ 1, %2 ], [ %12, %9 ], [ %18, %15 ], [ %24, %21 ], [ %30, %27 ], [ %36, %33 ], [ %42, %39 ], [ %48, %45 ], [ %54, %51 ], [ %60, %57 ]
  store i16 %8, ptr @gScriptResult, align 2
  br label %63

9:                                                ; preds = %2
  %10 = lshr i16 %1, 9
  %11 = and i16 %10, 1
  %12 = add nuw nsw i16 %11, 1
  %13 = and i32 %4, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %9
  %16 = lshr i16 %1, 8
  %17 = and i16 %16, 1
  %18 = add nuw nsw i16 %12, %17
  %19 = and i32 %4, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %7

21:                                               ; preds = %15
  %22 = lshr i16 %1, 7
  %23 = and i16 %22, 1
  %24 = add nuw nsw i16 %18, %23
  %25 = and i32 %4, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %7

27:                                               ; preds = %21
  %28 = lshr i16 %1, 6
  %29 = and i16 %28, 1
  %30 = add nuw nsw i16 %24, %29
  %31 = and i32 %4, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %7

33:                                               ; preds = %27
  %34 = lshr i16 %1, 5
  %35 = and i16 %34, 1
  %36 = add nuw nsw i16 %30, %35
  %37 = and i32 %4, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %7

39:                                               ; preds = %33
  %40 = lshr i16 %1, 4
  %41 = and i16 %40, 1
  %42 = add nuw nsw i16 %36, %41
  %43 = and i32 %4, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %7

45:                                               ; preds = %39
  %46 = lshr i16 %1, 3
  %47 = and i16 %46, 1
  %48 = add nuw nsw i16 %42, %47
  %49 = and i32 %4, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %7

51:                                               ; preds = %45
  %52 = lshr i16 %1, 2
  %53 = and i16 %52, 1
  %54 = add nuw nsw i16 %48, %53
  %55 = and i32 %4, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %7

57:                                               ; preds = %51
  %58 = lshr i16 %1, 1
  %59 = and i16 %58, 1
  %60 = add nuw nsw i16 %54, %59
  %61 = and i32 %4, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %7

63:                                               ; preds = %57, %7
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadHeldKeyOrdinal(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i16
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i16
  %7 = shl nuw i16 %6, 8
  %8 = or disjoint i16 %7, %3
  %9 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext %8, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @StoreSelectedKeyOrdinal(i16 noundef zeroext %9, i16 noundef zeroext %8) #4
  ret i32 2
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadPressedKeyOrdinal(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i16
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i16
  %7 = shl nuw i16 %6, 8
  %8 = or disjoint i16 %7, %3
  %9 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext %8, i8 noundef zeroext 1) #3
  tail call arm_apcscc void @StoreSelectedKeyOrdinal(i16 noundef zeroext %9, i16 noundef zeroext %8) #4
  ret i32 2
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadRepeatKeyOrdinal(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i16
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i16
  %7 = shl nuw i16 %6, 8
  %8 = or disjoint i16 %7, %3
  %9 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext %8, i8 noundef zeroext 2) #3
  tail call arm_apcscc void @StoreSelectedKeyOrdinal(i16 noundef zeroext %9, i16 noundef zeroext %8) #4
  ret i32 2
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadDirectionalHeldAndPressedKeyOrdinal(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i16
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i16
  %7 = shl nuw i16 %6, 8
  %8 = or disjoint i16 %7, %3
  %9 = and i16 %3, 240
  %10 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext %9, i8 noundef zeroext 0) #3
  %11 = and i16 %8, 783
  %12 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext %11, i8 noundef zeroext 1) #3
  %13 = or i16 %12, %10
  tail call arm_apcscc void @StoreSelectedKeyOrdinal(i16 noundef zeroext %13, i16 noundef zeroext %8) #4
  ret i32 2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
