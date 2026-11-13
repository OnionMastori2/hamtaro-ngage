; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.SaveGroup3ListDescriptor = type { ptr, i8, i8, i8, i8, [2 x i8], [3 x i16], ptr, ptr }
%struct.GameCounterDescriptor = type { ptr, i8, i8, [6 x i8], ptr, ptr }

@gSaveGroup3ListDescriptors = external dso_local constant [0 x %struct.SaveGroup3ListDescriptor], align 4
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup01Block1CC20 = external dso_local global [0 x i8], align 1
@gSaveGroup3Block1EE40 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gGameCounterDescriptorsD0D8 = external dso_local local_unnamed_addr constant [0 x %struct.GameCounterDescriptor], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckSelectedGameRecordRequirements(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  %3 = zext i16 %2 to i32
  %4 = getelementptr [0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 %3, i32 6
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = lshr i32 %6, 7
  %8 = and i32 %7, 127
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = add i32 %8, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, -1
  %15 = zext i8 %13 to i32
  %16 = and i32 %6, 127
  %17 = icmp ugt i32 %16, %15
  %18 = or i1 %14, %17
  br i1 %18, label %52, label %19

19:                                               ; preds = %10, %1
  %20 = getelementptr i8, ptr %4, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = lshr i32 %22, 7
  %24 = and i32 %23, 127
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %19
  %27 = add i32 %24, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, -1
  %31 = zext i8 %29 to i32
  %32 = and i32 %22, 127
  %33 = icmp ugt i32 %32, %31
  %34 = or i1 %30, %33
  br i1 %34, label %52, label %35

35:                                               ; preds = %26, %19
  %36 = getelementptr i8, ptr %4, i32 4
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = lshr i32 %38, 7
  %40 = and i32 %39, 127
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = add i32 %40, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, -1
  %47 = zext i8 %45 to i32
  %48 = and i32 %38, 127
  %49 = icmp ugt i32 %48, %47
  %50 = or i1 %46, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %42, %35
  br label %52

52:                                               ; preds = %51, %42, %26, %10
  %53 = phi i8 [ 0, %10 ], [ 0, %26 ], [ 0, %42 ], [ 1, %51 ]
  store i8 %53, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackFindEmptyGameRecordByteSlot(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %1, %9
  %3 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %4 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = trunc i32 %3 to i8
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 422), align 1
  br label %12

9:                                                ; preds = %2
  %10 = add nuw nsw i32 %3, 1
  %11 = icmp eq i32 %10, 30
  br i1 %11, label %12, label %2

12:                                               ; preds = %9, %7
  %13 = phi i8 [ 1, %7 ], [ 0, %9 ]
  store i8 %13, ptr @gRasterScriptControlBytes, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCaptureSelectedGameRecordCandidate(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i16, ptr @gAnimationClassValues, i32 %3
  %5 = getelementptr i16, ptr %4, i32 35
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  store i16 %6, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  %8 = getelementptr %struct.SaveGroup3ListDescriptor, ptr @gSaveGroup3ListDescriptors, i32 %7, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i16
  store i16 %10, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  %11 = trunc i16 %6 to i8
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackResolveGameRecordCounterOutcome(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %3 = zext i8 %2 to i32
  %4 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 5) #6
  %5 = zext i16 %4 to i32
  %6 = getelementptr [0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 %3, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = tail call arm_apcscc i32 @__udivsi3(i32 noundef %8, i32 noundef 25) #6
  %10 = and i32 %9, 255
  %11 = icmp ugt i32 %10, %5
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %70

13:                                               ; preds = %1
  store i8 3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 422), align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr i8, ptr @gSaveGroup3Block1EE40, i32 %15
  store i8 0, ptr %16, align 1
  %17 = getelementptr [0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 %3, i32 6
  %18 = ptrtoint ptr %17 to i32
  %19 = load i16, ptr %17, align 2
  %20 = lshr i16 %19, 7
  %21 = and i16 %20, 127
  %22 = zext nneg i16 %21 to i32
  %23 = getelementptr %struct.GameCounterDescriptor, ptr @gGameCounterDescriptorsD0D8, i32 %22, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 5
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = add i32 %22, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = load i8, ptr %28, align 1
  %30 = trunc i16 %19 to i8
  %31 = and i8 %30, 127
  %32 = add i8 %29, %31
  store i8 %32, ptr %28, align 1
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %33 = trunc i16 %21 to i8
  store i8 %33, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %34

34:                                               ; preds = %26, %13
  %35 = add i32 %18, 2
  %36 = inttoptr i32 %35 to ptr
  %37 = load i16, ptr %36, align 4
  %38 = lshr i16 %37, 7
  %39 = and i16 %38, 127
  %40 = zext nneg i16 %39 to i32
  %41 = getelementptr %struct.GameCounterDescriptor, ptr @gGameCounterDescriptorsD0D8, i32 %40, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %42, 5
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = add i32 %40, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = load i8, ptr %46, align 1
  %48 = trunc i16 %37 to i8
  %49 = and i8 %48, 127
  %50 = add i8 %47, %49
  store i8 %50, ptr %46, align 1
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %51 = trunc i16 %39 to i8
  store i8 %51, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %52

52:                                               ; preds = %44, %34
  %53 = add i32 %18, 4
  %54 = inttoptr i32 %53 to ptr
  %55 = load i16, ptr %54, align 2
  %56 = lshr i16 %55, 7
  %57 = and i16 %56, 127
  %58 = zext nneg i16 %57 to i32
  %59 = getelementptr %struct.GameCounterDescriptor, ptr @gGameCounterDescriptorsD0D8, i32 %58, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = icmp eq i8 %60, 5
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = add i32 %58, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %64 = inttoptr i32 %63 to ptr
  %65 = load i8, ptr %64, align 1
  %66 = trunc i16 %55 to i8
  %67 = and i8 %66, 127
  %68 = add i8 %65, %67
  store i8 %68, ptr %64, align 1
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %69 = trunc i16 %57 to i8
  br label %70

70:                                               ; preds = %12, %62
  %71 = phi i8 [ %69, %62 ], [ 0, %12 ]
  store i8 %71, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %72

72:                                               ; preds = %70, %52
  ret i32 0
}

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

declare dso_local arm_apcscc i32 @__udivsi3(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreGameRecordWithCounterCosts(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  %3 = zext i16 %2 to i32
  %4 = mul nuw nsw i32 %3, 24
  %5 = add i32 %4, ptrtoint (ptr @gSaveGroup3ListDescriptors to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.SaveGroup3ListDescriptor, ptr %6, i32 0, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = lshr i16 %8, 7
  %10 = and i16 %9, 127
  %11 = zext nneg i16 %10 to i32
  %12 = add i32 %11, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = trunc i16 %8 to i8
  %16 = and i8 %15, 127
  %17 = sub i8 %14, %16
  store i8 %17, ptr %13, align 1
  %18 = getelementptr %struct.SaveGroup3ListDescriptor, ptr %6, i32 0, i32 6, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = lshr i16 %19, 7
  %21 = and i16 %20, 127
  %22 = zext nneg i16 %21 to i32
  %23 = add i32 %22, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = load i8, ptr %24, align 1
  %26 = trunc i16 %19 to i8
  %27 = and i8 %26, 127
  %28 = sub i8 %25, %27
  store i8 %28, ptr %24, align 1
  %29 = getelementptr %struct.SaveGroup3ListDescriptor, ptr %6, i32 0, i32 6, i32 2
  %30 = load i16, ptr %29, align 2
  %31 = lshr i16 %30, 7
  %32 = and i16 %31, 127
  %33 = zext nneg i16 %32 to i32
  %34 = add i32 %33, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = load i8, ptr %35, align 1
  %37 = trunc i16 %30 to i8
  %38 = and i8 %37, 127
  %39 = sub i8 %36, %38
  store i8 %39, ptr %35, align 1
  %40 = trunc i16 %2 to i8
  %41 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 422), align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr i8, ptr @gSaveGroup3Block1EE40, i32 %42
  store i8 %40, ptr %43, align 1
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
