; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptCallbackHalf3670 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3E38 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3564 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3AF8 = external dso_local local_unnamed_addr global i16, align 2
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gScriptCallbackSavedHalf3E3C = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3CD0 = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackEditClassWords124AC(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 1009, i8 noundef zeroext 2) #4
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %135, label %4

4:                                                ; preds = %1
  %5 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %6 = shl i16 %5, 5
  %7 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %8 = shl i16 %7, 2
  %9 = add i16 %8, %6
  %10 = load i16, ptr @gScriptCallbackHalf3564, align 2
  %11 = add i16 %9, %10
  %12 = load i16, ptr @gScriptCallbackHalf3AF8, align 2
  %13 = icmp eq i16 %12, 0
  %14 = zext i16 %2 to i32
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %13, label %17, label %69

17:                                               ; preds = %4
  br i1 %16, label %26, label %18

18:                                               ; preds = %17
  %19 = icmp eq i16 %7, 0
  %20 = icmp ne i16 %5, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = add i16 %5, -1
  store i16 %23, ptr @gScriptCallbackHalf3670, align 2
  store i16 7, ptr @gScriptCallbackHalf3E38, align 2
  br label %68

24:                                               ; preds = %18
  %25 = tail call i16 @llvm.usub.sat.i16(i16 %7, i16 1)
  store i16 %25, ptr @gScriptCallbackHalf3E38, align 2
  br label %68

26:                                               ; preds = %17
  %27 = and i32 %14, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = icmp eq i16 %7, 15
  %31 = icmp ult i16 %5, 6
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = add nuw nsw i16 %5, 1
  store i16 %34, ptr @gScriptCallbackHalf3670, align 2
  store i16 8, ptr @gScriptCallbackHalf3E38, align 2
  br label %68

35:                                               ; preds = %29
  %36 = icmp ult i16 %7, 15
  %37 = zext i1 %36 to i16
  %38 = add nuw nsw i16 %7, %37
  store i16 %38, ptr @gScriptCallbackHalf3E38, align 2
  br label %68

39:                                               ; preds = %26
  %40 = and i32 %14, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i16 @llvm.usub.sat.i16(i16 %10, i16 1)
  store i16 %43, ptr @gScriptCallbackHalf3564, align 2
  br label %68

44:                                               ; preds = %39
  %45 = and i32 %14, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = icmp ult i16 %10, 3
  %49 = zext i1 %48 to i16
  %50 = add nuw nsw i16 %10, %49
  store i16 %50, ptr @gScriptCallbackHalf3564, align 2
  br label %68

51:                                               ; preds = %44
  %52 = and i32 %14, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = add i16 %5, -1
  store i16 %55, ptr @gScriptCallbackHalf3670, align 2
  br label %68

56:                                               ; preds = %51
  %57 = and i32 %14, 256
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = add i16 %5, 1
  store i16 %60, ptr @gScriptCallbackHalf3670, align 2
  br label %68

61:                                               ; preds = %56
  %62 = and i32 %14, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = zext i16 %11 to i32
  %66 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %65
  %67 = load i16, ptr %66, align 2
  store i16 %67, ptr @gScriptCallbackSavedHalf3E3C, align 2
  store i16 1, ptr @gScriptCallbackHalf3AF8, align 2
  br label %68

68:                                               ; preds = %35, %33, %47, %59, %64, %61, %54, %42, %22, %24
  store i16 0, ptr @gScriptCallbackHalf3CD0, align 2
  br label %135

69:                                               ; preds = %4
  br i1 %16, label %85, label %70

70:                                               ; preds = %69
  %71 = load i16, ptr @gScriptCallbackHalf3CD0, align 2
  %72 = zext i16 %71 to i32
  %73 = shl nuw nsw i32 %72, 2
  %74 = shl nuw i32 1, %73
  %75 = zext i16 %11 to i32
  %76 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %75
  %77 = load i16, ptr %76, align 2
  %78 = and i32 %74, 4369
  %79 = xor i16 %77, -1
  %80 = zext i16 %79 to i32
  %81 = icmp ugt i32 %78, %80
  %82 = select i1 %81, i32 %80, i32 %74
  %83 = trunc i32 %82 to i16
  %84 = add i16 %77, %83
  store i16 %84, ptr %76, align 2
  br label %135

85:                                               ; preds = %69
  %86 = and i32 %14, 128
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %85
  %89 = load i16, ptr @gScriptCallbackHalf3CD0, align 2
  %90 = zext i16 %89 to i32
  %91 = shl nuw nsw i32 %90, 2
  %92 = shl nuw i32 1, %91
  %93 = trunc i32 %92 to i16
  %94 = zext i16 %11 to i32
  %95 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %94
  %96 = load i16, ptr %95, align 2
  %97 = and i32 %92, 4369
  %98 = zext i16 %96 to i32
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !4
  %101 = load i16, ptr %95, align 2
  br label %102

102:                                              ; preds = %100, %88
  %103 = phi i16 [ %101, %100 ], [ %93, %88 ]
  %104 = sub i16 %96, %103
  store i16 %104, ptr %95, align 2
  br label %135

105:                                              ; preds = %85
  %106 = and i32 %14, 32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load i16, ptr @gScriptCallbackHalf3CD0, align 2
  %110 = icmp ult i16 %109, 3
  %111 = zext i1 %110 to i16
  %112 = add nuw nsw i16 %109, %111
  store i16 %112, ptr @gScriptCallbackHalf3CD0, align 2
  br label %135

113:                                              ; preds = %105
  %114 = and i32 %14, 16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i16, ptr @gScriptCallbackHalf3CD0, align 2
  %118 = tail call i16 @llvm.usub.sat.i16(i16 %117, i16 1)
  store i16 %118, ptr @gScriptCallbackHalf3CD0, align 2
  br label %135

119:                                              ; preds = %113
  %120 = and i32 %14, 512
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = zext i16 %11 to i32
  %124 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %123
  store i16 0, ptr %124, align 2
  br label %135

125:                                              ; preds = %119
  %126 = and i32 %14, 256
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = zext i16 %11 to i32
  %130 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %129
  store i16 -1, ptr %130, align 2
  br label %135

131:                                              ; preds = %125
  tail call void asm sideeffect "", "r"(i16 %2) #5, !srcloc !5
  %132 = and i32 %14, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  br label %135

135:                                              ; preds = %68, %102, %116, %128, %134, %131, %122, %108, %70, %1
  %136 = phi i32 [ 0, %1 ], [ 5, %70 ], [ 5, %108 ], [ 5, %122 ], [ 5, %131 ], [ 5, %134 ], [ 5, %128 ], [ 5, %116 ], [ 5, %102 ], [ 5, %68 ]
  ret i32 %136
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreClassWord126CC(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %3 = shl i16 %2, 5
  %4 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %5 = shl i16 %4, 2
  %6 = add i16 %5, %3
  %7 = load i16, ptr @gScriptCallbackHalf3564, align 2
  %8 = add i16 %6, %7
  %9 = load i16, ptr @gScriptCallbackSavedHalf3E3C, align 2
  %10 = zext i16 %8 to i32
  %11 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %10
  store i16 %9, ptr %11, align 2
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 2717}
!5 = !{i64 3458}
