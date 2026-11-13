; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gWordUpdateCursor079C = external dso_local global ptr, align 4
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gGameFlags = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @UpdateWordExpression(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm "", "={r9},{r9}"(i32 57344) #3, !srcloc !4
  br label %3

3:                                                ; preds = %29, %1
  %4 = phi i32 [ 0, %1 ], [ %32, %29 ]
  %5 = phi i32 [ %0, %1 ], [ %31, %29 ]
  %6 = inttoptr i32 %5 to ptr
  %7 = load i16, ptr %6, align 2
  %8 = add i32 %5, 2
  %9 = inttoptr i32 %8 to ptr
  store ptr %9, ptr @gWordUpdateCursor079C, align 4
  %10 = zext i16 %7 to i32
  %11 = and i32 %2, %10
  %12 = and i32 %10, 7680
  %13 = and i32 %10, 511
  %14 = tail call arm_apcscc i32 @ResolveWordExpressionOperand(ptr noundef nonnull @gWordUpdateCursor079C, i32 noundef %11, i32 noundef %13) #4
  br label %15

15:                                               ; preds = %19, %3
  %16 = phi i32 [ %14, %3 ], [ %22, %19 ]
  %17 = phi i32 [ %12, %3 ], [ %28, %19 ]
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 23)
  switch i32 %18, label %124 [
    i32 13, label %143
    i32 14, label %144
    i32 0, label %19
    i32 5, label %29
    i32 6, label %35
    i32 2, label %41
    i32 3, label %47
    i32 4, label %53
    i32 10, label %59
    i32 11, label %74
    i32 12, label %99
  ]

19:                                               ; preds = %15
  %20 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %21) #5
  %23 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr i16, ptr %23, i32 1
  store ptr %26, ptr @gWordUpdateCursor079C, align 4
  %27 = tail call i32 asm "", "=r,{r1}"(i32 7680) #3, !srcloc !5
  %28 = and i32 %27, %25
  br label %15

29:                                               ; preds = %15
  %30 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = add i32 %16, %4
  br label %3

33:                                               ; preds = %112, %101, %87, %76, %53, %47, %41, %35, %144
  %34 = phi i32 [ %146, %144 ], [ %40, %35 ], [ %46, %41 ], [ %52, %47 ], [ %58, %53 ], [ %86, %76 ], [ %98, %87 ], [ %111, %101 ], [ %123, %112 ]
  ret i32 %34

35:                                               ; preds = %15
  %36 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %37) #5
  %39 = add i32 %16, %4
  %40 = sub i32 %39, %38
  br label %33

41:                                               ; preds = %15
  %42 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %43) #5
  %45 = and i32 %44, %16
  %46 = add i32 %45, %4
  br label %33

47:                                               ; preds = %15
  %48 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %49) #5
  %51 = or i32 %50, %16
  %52 = add i32 %51, %4
  br label %33

53:                                               ; preds = %15
  %54 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %55) #5
  %57 = xor i32 %56, %16
  %58 = add i32 %57, %4
  br label %33

59:                                               ; preds = %15
  %60 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %61) #5
  %63 = trunc i32 %11 to i16
  switch i16 %63, label %144 [
    i16 24576, label %64
    i16 -32768, label %68
  ]

64:                                               ; preds = %59
  %65 = add i32 %13, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %66 = inttoptr i32 %65 to ptr
  %67 = trunc i32 %62 to i8
  store i8 %67, ptr %66, align 1
  br label %144

68:                                               ; preds = %59
  %69 = shl nuw nsw i32 %13, 1
  %70 = add i32 %69, ptrtoint (ptr @gAnimationClassValues to i32)
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call ptr asm "", "={r2},{r2}"(ptr %71) #3, !srcloc !6
  %73 = trunc i32 %62 to i16
  store i16 %73, ptr %72, align 2
  br label %144

74:                                               ; preds = %15
  %75 = trunc i32 %11 to i16
  switch i16 %75, label %144 [
    i16 24576, label %76
    i16 -32768, label %87
  ]

76:                                               ; preds = %74
  %77 = add i32 %13, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %78 = inttoptr i32 %77 to ptr
  %79 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %80) #5
  %82 = load i8, ptr %78, align 1
  %83 = zext i8 %82 to i32
  %84 = add i32 %81, %83
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr %78, align 1
  %86 = add i32 %84, %4
  br label %33

87:                                               ; preds = %74
  %88 = shl nuw nsw i32 %13, 1
  %89 = add i32 %88, ptrtoint (ptr @gAnimationClassValues to i32)
  %90 = inttoptr i32 %89 to ptr
  %91 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %92) #5
  %94 = load i16, ptr %90, align 2
  %95 = zext i16 %94 to i32
  %96 = add i32 %93, %95
  %97 = trunc i32 %96 to i16
  store i16 %97, ptr %90, align 2
  %98 = add i32 %96, %4
  br label %33

99:                                               ; preds = %15
  %100 = trunc i32 %11 to i16
  switch i16 %100, label %144 [
    i16 24576, label %101
    i16 -32768, label %112
  ]

101:                                              ; preds = %99
  %102 = add i32 %13, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %103 = inttoptr i32 %102 to ptr
  %104 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %105 = ptrtoint ptr %104 to i32
  %106 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %105) #5
  %107 = load i8, ptr %103, align 1
  %108 = zext i8 %107 to i32
  %109 = sub i32 %108, %106
  %110 = trunc i32 %109 to i8
  store i8 %110, ptr %103, align 1
  %111 = add i32 %109, %4
  br label %33

112:                                              ; preds = %99
  %113 = shl nuw nsw i32 %13, 1
  %114 = add i32 %113, ptrtoint (ptr @gAnimationClassValues to i32)
  %115 = inttoptr i32 %114 to ptr
  %116 = load ptr, ptr @gWordUpdateCursor079C, align 4
  %117 = ptrtoint ptr %116 to i32
  %118 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %117) #5
  %119 = load i16, ptr %115, align 2
  %120 = zext i16 %119 to i32
  %121 = sub i32 %120, %118
  %122 = trunc i32 %121 to i16
  store i16 %122, ptr %115, align 2
  %123 = add i32 %121, %4
  br label %33

124:                                              ; preds = %15
  %125 = lshr i32 %13, 3
  %126 = add i32 %125, ptrtoint (ptr @gGameFlags to i32)
  %127 = inttoptr i32 %126 to ptr
  %128 = tail call i32 asm "", "=r,0"(i32 %13) #3, !srcloc !7
  %129 = trunc i32 %11 to i16
  switch i16 %129, label %144 [
    i16 16384, label %130
    i16 8192, label %137
  ]

130:                                              ; preds = %124
  %131 = and i32 %128, 7
  %132 = shl nuw nsw i32 1, %131
  %133 = load i8, ptr %127, align 1
  %134 = trunc i32 %132 to i8
  %135 = xor i8 %134, -1
  %136 = and i8 %133, %135
  store i8 %136, ptr %127, align 1
  br label %144

137:                                              ; preds = %124
  %138 = and i32 %128, 7
  %139 = shl nuw nsw i32 1, %138
  %140 = load i8, ptr %127, align 1
  %141 = trunc i32 %139 to i8
  %142 = or i8 %140, %141
  store i8 %142, ptr %127, align 1
  br label %144

143:                                              ; preds = %15
  br label %144

144:                                              ; preds = %15, %143, %124, %99, %74, %130, %64, %59, %68, %137
  %145 = phi i32 [ 1, %137 ], [ %62, %68 ], [ %62, %64 ], [ %62, %59 ], [ 0, %130 ], [ %16, %74 ], [ %16, %99 ], [ %16, %124 ], [ 1, %143 ], [ 0, %15 ]
  %146 = add i32 %145, %4
  br label %33
}

declare dso_local arm_apcscc i32 @ResolveWordExpressionOperand(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 527}
!5 = !{i64 1503}
!6 = !{i64 2436}
!7 = !{i64 3640}
