; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRecordCaptionText3B00 = external dso_local global [0 x i8], align 1
@gGameRecordMessageType0TextBundles = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gGameRecordMessageType1TextBundles = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gGameRecordMessageSpecialInitialKeys = external dso_local constant [0 x i8], align 1
@gRecordCaptionTextBundles = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gGameRecordMessageTextTarget00AF4 = external dso_local global [0 x i8], align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gGameRecordMessageAnimation19_1272 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88D12CF = external dso_local constant [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gGameRecordMessageAnimation19_1236 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88D12C3 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88D12AE = external dso_local constant [0 x i8], align 1
@gActorPresetResource88DE8D1 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88DE6FA = external dso_local constant [0 x i8], align 1
@gActorPresetResource88DE90A = external dso_local constant [0 x i8], align 1
@gActorPresetResource88DE916 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88DE963 = external dso_local constant [0 x i8], align 1
@gGameRecordMessageAnimation16_E8BD = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareGameRecordMessageText(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr asm "", "={r8},{r8}"(ptr %0) #3, !srcloc !4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  %4 = zext i8 %3 to i32
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %5 = load i8, ptr %2, align 1
  switch i8 %5, label %92 [
    i8 1, label %18
    i8 0, label %6
    i8 2, label %80
  ]

6:                                                ; preds = %1
  %7 = getelementptr [0 x ptr], ptr @gGameRecordMessageType0TextBundles, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @gDefaultTaskContextScript
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr ptr, ptr %8, i32 %12
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %6, %10
  %16 = phi ptr [ %14, %10 ], [ @gDefaultTaskContextScript, %6 ]
  %17 = tail call ptr asm "", "={r1},{r1}"(ptr nonnull @gRecordCaptionText3B00) #3, !srcloc !5
  br label %96

18:                                               ; preds = %1
  %19 = getelementptr [0 x ptr], ptr @gGameRecordMessageType1TextBundles, i32 0, i32 %4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @gDefaultTaskContextScript
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr ptr, ptr %20, i32 %24
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %18, %22
  %28 = phi ptr [ %26, %22 ], [ @gDefaultTaskContextScript, %18 ]
  %29 = load i8, ptr @gGameRecordMessageSpecialInitialKeys, align 1
  %30 = tail call ptr asm "", "={r4},{r4}"(ptr nonnull @gRecordCaptionText3B00) #3, !srcloc !6
  %31 = icmp eq i8 %29, %3
  br i1 %31, label %74, label %32

32:                                               ; preds = %27
  %33 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 1) to ptr), align 1
  %34 = icmp eq i8 %33, %3
  br i1 %34, label %74, label %35

35:                                               ; preds = %32
  %36 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 2) to ptr), align 1
  %37 = icmp eq i8 %36, %3
  br i1 %37, label %74, label %38

38:                                               ; preds = %35
  %39 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 3) to ptr), align 1
  %40 = icmp eq i8 %39, %3
  br i1 %40, label %74, label %41

41:                                               ; preds = %38
  %42 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 4) to ptr), align 1
  %43 = icmp eq i8 %42, %3
  br i1 %43, label %74, label %44

44:                                               ; preds = %41
  %45 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 5) to ptr), align 1
  %46 = icmp eq i8 %45, %3
  br i1 %46, label %74, label %47

47:                                               ; preds = %44
  %48 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 6) to ptr), align 1
  %49 = icmp eq i8 %48, %3
  br i1 %49, label %74, label %50

50:                                               ; preds = %47
  %51 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 7) to ptr), align 1
  %52 = icmp eq i8 %51, %3
  br i1 %52, label %74, label %53

53:                                               ; preds = %50
  %54 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 8) to ptr), align 1
  %55 = icmp eq i8 %54, %3
  br i1 %55, label %74, label %56

56:                                               ; preds = %53
  %57 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 9) to ptr), align 1
  %58 = icmp eq i8 %57, %3
  br i1 %58, label %74, label %59

59:                                               ; preds = %56
  %60 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 10) to ptr), align 1
  %61 = icmp eq i8 %60, %3
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 11) to ptr), align 1
  %64 = icmp eq i8 %63, %3
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 12) to ptr), align 1
  %67 = icmp eq i8 %66, %3
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 13) to ptr), align 1
  %70 = icmp eq i8 %69, %3
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gGameRecordMessageSpecialInitialKeys to i32), i32 14) to ptr), align 1
  %73 = icmp eq i8 %72, %3
  br i1 %73, label %74, label %75

74:                                               ; preds = %32, %35, %38, %41, %44, %47, %50, %53, %56, %59, %62, %65, %68, %71, %27
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  br label %75

75:                                               ; preds = %71, %74
  %76 = phi i32 [ 0, %74 ], [ 1, %71 ]
  %77 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  switch i8 %77, label %96 [
    i8 4, label %78
    i8 3, label %78
    i8 1, label %78
  ]

78:                                               ; preds = %75, %75, %75
  %79 = tail call i32 asm "", "={r1},{r1}"(i32 0) #3, !srcloc !7
  br label %96

80:                                               ; preds = %1
  %81 = getelementptr [0 x ptr], ptr @gRecordCaptionTextBundles, i32 0, i32 %4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, @gDefaultTaskContextScript
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %86 = zext i8 %85 to i32
  %87 = getelementptr ptr, ptr %82, i32 %86
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %80, %84
  %90 = phi ptr [ %88, %84 ], [ @gDefaultTaskContextScript, %80 ]
  %91 = tail call i32 asm "", "={r2},{r2}"(i32 0) #3, !srcloc !8
  br label %92

92:                                               ; preds = %1, %89
  %93 = phi ptr [ %90, %89 ], [ undef, %1 ]
  %94 = phi i32 [ %91, %89 ], [ 1, %1 ]
  %95 = tail call ptr asm "", "={r4},{r4}"(ptr nonnull @gRecordCaptionText3B00) #3, !srcloc !9
  br label %96

96:                                               ; preds = %15, %92, %78, %75
  %97 = phi ptr [ %30, %75 ], [ %30, %78 ], [ %95, %92 ], [ %17, %15 ]
  %98 = phi ptr [ %28, %75 ], [ %28, %78 ], [ %93, %92 ], [ %16, %15 ]
  %99 = phi i32 [ %76, %75 ], [ %79, %78 ], [ %94, %92 ], [ 0, %15 ]
  %100 = ptrtoint ptr %97 to i32
  %101 = add i32 %100, -1
  %102 = load i8, ptr %98, align 1
  br label %103

103:                                              ; preds = %143, %96
  %104 = phi i8 [ %102, %96 ], [ %145, %143 ]
  %105 = phi i32 [ 0, %96 ], [ %148, %143 ]
  %106 = phi i8 [ 0, %96 ], [ %144, %143 ]
  %107 = phi ptr [ %98, %96 ], [ %108, %143 ]
  %108 = getelementptr i8, ptr %107, i32 1
  %109 = add i32 %105, ptrtoint (ptr @gRecordCaptionText3B00 to i32)
  %110 = inttoptr i32 %109 to ptr
  store i8 %104, ptr %110, align 1
  %111 = icmp eq i32 %105, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %103
  %113 = tail call i32 asm "", "=r,0"(i32 %99) #3, !srcloc !10
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %112
  %116 = load i8, ptr @gRecordCaptionText3B00, align 1
  %117 = add i8 %116, -97
  %118 = icmp ult i8 %117, 50
  br i1 %118, label %138, label %143

119:                                              ; preds = %103
  %120 = add i32 %101, %105
  %121 = inttoptr i32 %120 to ptr
  %122 = load i8, ptr %121, align 1
  %123 = icmp eq i8 %122, 1
  br i1 %123, label %124, label %143

124:                                              ; preds = %119
  %125 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %126 = icmp eq i8 %125, 3
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = add i8 %104, -97
  %129 = icmp ult i8 %128, 50
  br i1 %129, label %138, label %143

130:                                              ; preds = %124
  %131 = icmp eq i8 %106, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %130
  %133 = load i8, ptr %2, align 1
  %134 = icmp ult i8 %133, 2
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = add i8 %104, -97
  %137 = icmp ult i8 %136, 50
  br i1 %137, label %138, label %143

138:                                              ; preds = %135, %127, %115
  %139 = phi i8 [ %116, %115 ], [ %104, %127 ], [ %104, %135 ]
  %140 = phi ptr [ @gRecordCaptionText3B00, %115 ], [ %110, %127 ], [ %110, %135 ]
  %141 = phi i8 [ %106, %115 ], [ %106, %127 ], [ 1, %135 ]
  %142 = add i8 %139, -85
  store i8 %142, ptr %140, align 1
  br label %143

143:                                              ; preds = %138, %119, %132, %135, %130, %127, %112, %115
  %144 = phi i8 [ %106, %115 ], [ %106, %112 ], [ %106, %119 ], [ %106, %127 ], [ %106, %130 ], [ 0, %132 ], [ 1, %135 ], [ %141, %138 ]
  %145 = load i8, ptr %108, align 1
  %146 = icmp eq i8 %145, 0
  %147 = add nuw nsw i32 %105, 1
  %148 = and i32 %147, 255
  br i1 %146, label %149, label %103

149:                                              ; preds = %143
  %150 = tail call ptr asm "", "={r2},{r2}"(ptr %97) #3, !srcloc !11
  %151 = ptrtoint ptr %150 to i32
  %152 = add i32 %148, %151
  %153 = inttoptr i32 %152 to ptr
  store i8 0, ptr %153, align 1
  store i32 ptrtoint (ptr @gGameRecordMessageTextTarget00AF4 to i32), ptr @gTaskTextVariables2BB0, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot19Animation1272() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull @gGameRecordMessageAnimation19_1272) #4
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot19Animation12CF() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull @gActorPresetResource88D12CF) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot19TimedAnimation1236() local_unnamed_addr #1 {
  store i16 40, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 45), align 2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull @gGameRecordMessageAnimation19_1236) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot19Animation12C3() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull @gActorPresetResource88D12C3) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot19Animation12AE() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull @gActorPresetResource88D12AE) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot16AnimationE8D1() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88DE8D1) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot16AnimationE6FA() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88DE6FA) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot16AnimationE90A() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88DE90A) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot16AnimationE916() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88DE916) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot16AnimationE963() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88DE963) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameRecordMessageSlot16TimedAnimationE8BD() local_unnamed_addr #1 {
  store i16 40, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 44), align 2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gGameRecordMessageAnimation16_E8BD) #4
  ret void
}

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1350}
!5 = !{i64 2555}
!6 = !{i64 3258}
!7 = !{i64 4057}
!8 = !{i64 4552}
!9 = !{i64 4704}
!10 = !{i64 5139}
!11 = !{i64 6352}
