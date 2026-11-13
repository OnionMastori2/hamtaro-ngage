; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".balign 4, 0"

@gScriptCallbackHalf3670 = external dso_local global i16, align 2
@gScriptCallbackHalf3E38 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3564 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3AF8 = external dso_local global i16, align 2
@gScriptCallbackByte3E34 = external dso_local local_unnamed_addr global i8, align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptCallbackHalf3CD0 = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackEditControlByte(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 1009, i8 noundef zeroext 2) #3
  %3 = zext i16 %2 to i32
  %4 = icmp eq i16 %2, 0
  br i1 %4, label %135, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %7 = shl i16 %6, 6
  %8 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %9 = shl i16 %8, 3
  %10 = add i16 %9, %7
  %11 = load i16, ptr @gScriptCallbackHalf3564, align 2
  %12 = zext i16 %11 to i32
  tail call void asm sideeffect "", "r"(i32 %12) #4, !srcloc !4
  %13 = add i16 %10, %11
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr @gScriptCallbackHalf3AF8, align 2
  %16 = icmp eq i16 %15, 0
  %17 = and i32 %3, 64
  %18 = icmp eq i32 %17, 0
  br i1 %16, label %19, label %80

19:                                               ; preds = %5
  br i1 %18, label %29, label %20

20:                                               ; preds = %19
  %21 = icmp eq i16 %8, 0
  %22 = icmp ne i16 %6, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = add i16 %6, -1
  store i16 %25, ptr @gScriptCallbackHalf3670, align 2
  store i16 7, ptr @gScriptCallbackHalf3E38, align 2
  br label %79

26:                                               ; preds = %20
  %27 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %28 = tail call i16 @llvm.usub.sat.i16(i16 %27, i16 1)
  store i16 %28, ptr @gScriptCallbackHalf3E38, align 2
  br label %79

29:                                               ; preds = %19
  %30 = and i32 %3, 128
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = icmp eq i16 %8, 15
  %34 = icmp ult i16 %6, 6
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = add nuw nsw i16 %6, 1
  %38 = tail call i32 asm "", "={r6},{r6}"(i32 ptrtoint (ptr @gScriptCallbackHalf3670 to i32)) #5, !srcloc !5
  %39 = inttoptr i32 %38 to ptr
  store i16 %37, ptr %39, align 2
  store i16 8, ptr @gScriptCallbackHalf3E38, align 2
  br label %79

40:                                               ; preds = %32
  %41 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %42 = icmp ult i16 %41, 15
  %43 = zext i1 %42 to i16
  %44 = add nuw nsw i16 %41, %43
  store i16 %44, ptr @gScriptCallbackHalf3E38, align 2
  br label %79

45:                                               ; preds = %29
  %46 = and i32 %3, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i16, ptr @gScriptCallbackHalf3564, align 2
  %50 = tail call i16 @llvm.usub.sat.i16(i16 %49, i16 1)
  br label %59

51:                                               ; preds = %45
  %52 = and i32 %3, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load i16, ptr @gScriptCallbackHalf3564, align 2
  %56 = icmp ult i16 %55, 7
  %57 = zext i1 %56 to i16
  %58 = add nuw nsw i16 %55, %57
  br label %59

59:                                               ; preds = %54, %48
  %60 = phi i16 [ %50, %48 ], [ %58, %54 ]
  store i16 %60, ptr @gScriptCallbackHalf3564, align 2
  br label %79

61:                                               ; preds = %51
  %62 = and i32 %3, 512
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = add i16 %6, -1
  store i16 %65, ptr @gScriptCallbackHalf3670, align 2
  br label %79

66:                                               ; preds = %61
  %67 = and i32 %3, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = add i16 %6, 1
  %71 = tail call i32 asm "", "={r6},{r6}"(i32 ptrtoint (ptr @gScriptCallbackHalf3670 to i32)) #5, !srcloc !6
  %72 = inttoptr i32 %71 to ptr
  store i16 %70, ptr %72, align 2
  br label %79

73:                                               ; preds = %66
  %74 = and i32 %3, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %14
  %78 = load i8, ptr %77, align 1
  store i8 %78, ptr @gScriptCallbackByte3E34, align 1
  store i16 1, ptr @gScriptCallbackHalf3AF8, align 2
  br label %79

79:                                               ; preds = %40, %36, %59, %69, %76, %73, %64, %24, %26
  store i16 0, ptr @gScriptCallbackHalf3CD0, align 2
  br label %135

80:                                               ; preds = %5
  br i1 %18, label %94, label %81

81:                                               ; preds = %80
  %82 = load i16, ptr @gScriptCallbackHalf3CD0, align 2
  %83 = icmp eq i16 %82, 0
  %84 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %14
  %85 = load i8, ptr %84, align 1
  br i1 %83, label %90, label %86

86:                                               ; preds = %81
  %87 = icmp ult i8 %85, -16
  %88 = add i8 %85, 16
  %89 = select i1 %87, i8 %88, i8 -1
  br label %121

90:                                               ; preds = %81
  %91 = icmp eq i8 %85, -1
  %92 = add i8 %85, 1
  %93 = select i1 %91, i8 -1, i8 %92
  br label %121

94:                                               ; preds = %80
  %95 = and i32 %3, 128
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %94
  %98 = load i16, ptr @gScriptCallbackHalf3CD0, align 2
  %99 = icmp eq i16 %98, 0
  %100 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %14
  %101 = load i8, ptr %100, align 1
  br i1 %99, label %106, label %102

102:                                              ; preds = %97
  %103 = icmp ugt i8 %101, 15
  %104 = add i8 %101, -16
  %105 = select i1 %103, i8 %104, i8 0
  br label %121

106:                                              ; preds = %97
  %107 = tail call i8 @llvm.usub.sat.i8(i8 %101, i8 1)
  br label %121

108:                                              ; preds = %94
  %109 = and i16 %2, 32
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store i16 1, ptr @gScriptCallbackHalf3CD0, align 2
  br label %135

112:                                              ; preds = %108
  %113 = and i16 %2, 16
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  store i16 0, ptr @gScriptCallbackHalf3CD0, align 2
  br label %135

116:                                              ; preds = %112
  %117 = and i32 %3, 512
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %14
  br label %121

121:                                              ; preds = %102, %86, %106, %90, %119
  %122 = phi i8 [ 0, %119 ], [ %93, %90 ], [ %107, %106 ], [ %89, %86 ], [ %105, %102 ]
  %123 = phi ptr [ %120, %119 ], [ %84, %90 ], [ %100, %106 ], [ %84, %86 ], [ %100, %102 ]
  store i8 %122, ptr %123, align 1
  br label %135

124:                                              ; preds = %116
  %125 = and i16 %2, 256
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %14
  store i8 -1, ptr %128, align 1
  br label %135

129:                                              ; preds = %124
  %130 = and i32 %3, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = tail call i32 asm "", "={r6},{r6}"(i32 ptrtoint (ptr @gScriptCallbackHalf3AF8 to i32)) #5, !srcloc !7
  %134 = inttoptr i32 %133 to ptr
  store i16 0, ptr %134, align 2
  br label %135

135:                                              ; preds = %79, %115, %127, %132, %129, %121, %111, %1
  %136 = phi i32 [ 0, %1 ], [ 5, %111 ], [ 5, %121 ], [ 5, %129 ], [ 5, %132 ], [ 5, %127 ], [ 5, %115 ], [ 5, %79 ]
  ret i32 %136
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1202}
!5 = !{i64 2028}
!6 = !{i64 3022}
!7 = !{i64 5206}
