; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gWordExpressionCursor = external dso_local global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @EvaluateWordExpression(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %51, %1
  %3 = phi i32 [ 0, %1 ], [ %54, %51 ]
  %4 = phi i32 [ %0, %1 ], [ %53, %51 ]
  %5 = inttoptr i32 %4 to ptr
  %6 = load i16, ptr %5, align 2
  %7 = add i32 %4, 2
  %8 = inttoptr i32 %7 to ptr
  store ptr %8, ptr @gWordExpressionCursor, align 4
  %9 = zext i16 %6 to i32
  %10 = and i32 %9, 57344
  %11 = and i32 %9, 7680
  %12 = and i32 %9, 511
  %13 = tail call arm_apcscc i32 @ResolveWordExpressionOperand(ptr noundef nonnull @gWordExpressionCursor, i32 noundef %10, i32 noundef %12) #3
  br label %14

14:                                               ; preds = %18, %2
  %15 = phi i32 [ %13, %2 ], [ %21, %18 ]
  %16 = phi i32 [ %11, %2 ], [ %27, %18 ]
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 23)
  switch i32 %17, label %88 [
    i32 13, label %89
    i32 14, label %90
    i32 0, label %18
    i32 8, label %30
    i32 9, label %37
    i32 7, label %44
    i32 5, label %51
    i32 6, label %55
    i32 2, label %61
    i32 3, label %70
    i32 4, label %79
  ]

18:                                               ; preds = %14
  %19 = load ptr, ptr @gWordExpressionCursor, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call arm_apcscc i32 @EvaluateWordExpression(i32 noundef %20) #4
  %22 = load ptr, ptr @gWordExpressionCursor, align 4
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr i16, ptr %22, i32 1
  store ptr %25, ptr @gWordExpressionCursor, align 4
  %26 = tail call i32 asm "", "=r,{r1}"(i32 7680) #5, !srcloc !4
  %27 = and i32 %26, %24
  br label %14

28:                                               ; preds = %72, %63, %55, %44, %37, %30, %90
  %29 = phi i32 [ %92, %90 ], [ %36, %30 ], [ %43, %37 ], [ %50, %44 ], [ %60, %55 ], [ %69, %63 ], [ %78, %72 ]
  ret i32 %29

30:                                               ; preds = %14
  %31 = load ptr, ptr @gWordExpressionCursor, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call arm_apcscc i32 @EvaluateWordExpression(i32 noundef %32) #4
  %34 = icmp eq i32 %15, %33
  %35 = zext i1 %34 to i32
  %36 = add i32 %3, %35
  br label %28

37:                                               ; preds = %14
  %38 = load ptr, ptr @gWordExpressionCursor, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call arm_apcscc i32 @EvaluateWordExpression(i32 noundef %39) #4
  %41 = icmp slt i32 %15, %40
  %42 = zext i1 %41 to i32
  %43 = add i32 %3, %42
  br label %28

44:                                               ; preds = %14
  %45 = load ptr, ptr @gWordExpressionCursor, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call arm_apcscc i32 @EvaluateWordExpression(i32 noundef %46) #4
  %48 = icmp sge i32 %15, %47
  %49 = zext i1 %48 to i32
  %50 = add i32 %3, %49
  br label %28

51:                                               ; preds = %14
  %52 = load ptr, ptr @gWordExpressionCursor, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = add i32 %15, %3
  br label %2

55:                                               ; preds = %14
  %56 = load ptr, ptr @gWordExpressionCursor, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call arm_apcscc i32 @EvaluateWordExpression(i32 noundef %57) #4
  %59 = add i32 %15, %3
  %60 = sub i32 %59, %58
  br label %28

61:                                               ; preds = %14
  %62 = icmp eq i32 %15, 0
  br i1 %62, label %90, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr @gWordExpressionCursor, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = tail call arm_apcscc i32 @EvaluateWordExpression(i32 noundef %65) #4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = add i32 %3, %68
  br label %28

70:                                               ; preds = %14
  %71 = icmp eq i32 %15, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %70
  %73 = load ptr, ptr @gWordExpressionCursor, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = tail call arm_apcscc i32 @EvaluateWordExpression(i32 noundef %74) #4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = add i32 %3, %77
  br label %28

79:                                               ; preds = %14
  %80 = load ptr, ptr @gWordExpressionCursor, align 4
  %81 = ptrtoint ptr %80 to i32
  %82 = tail call arm_apcscc i32 @EvaluateWordExpression(i32 noundef %81) #4
  %83 = icmp eq i32 %15, 0
  %84 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %86

85:                                               ; preds = %79
  br i1 %84, label %90, label %87

86:                                               ; preds = %79
  br i1 %84, label %87, label %90

87:                                               ; preds = %86, %85
  br label %90

88:                                               ; preds = %14
  br label %90

89:                                               ; preds = %14
  br label %90

90:                                               ; preds = %14, %89, %88, %87, %85, %86, %70, %61
  %91 = phi i32 [ 0, %61 ], [ 1, %70 ], [ 0, %86 ], [ 1, %87 ], [ 0, %85 ], [ %15, %88 ], [ 1, %89 ], [ 0, %14 ]
  %92 = add i32 %91, %3
  br label %28
}

declare dso_local arm_apcscc i32 @ResolveWordExpressionOperand(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1139}
