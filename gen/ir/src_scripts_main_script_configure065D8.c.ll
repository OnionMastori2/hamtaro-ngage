; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gSaveGroup01Byte21E0 = external dso_local local_unnamed_addr global i8, align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptConfigure065D8(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  tail call void asm sideeffect "", "{r1}"(i32 %5) #2, !srcloc !4
  %6 = getelementptr i8, ptr %0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  tail call void asm sideeffect "", "r"(i32 %8) #2, !srcloc !5
  %9 = getelementptr i8, ptr %0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  tail call void asm sideeffect "", "{r1}"(i32 %11) #2, !srcloc !6
  %12 = getelementptr i8, ptr %0, i32 4
  %13 = getelementptr i8, ptr %0, i32 5
  %14 = load i8, ptr %12, align 1
  %15 = getelementptr i8, ptr %0, i32 6
  %16 = load i8, ptr %13, align 1
  store i8 %16, ptr @gMainScriptArgumentWords5E8, align 4
  %17 = getelementptr i8, ptr %0, i32 7
  %18 = load i8, ptr %15, align 1
  store i8 %18, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %19 = getelementptr i8, ptr %0, i32 8
  %20 = load i8, ptr %17, align 1
  store i8 %20, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %21 = getelementptr i8, ptr %0, i32 9
  %22 = load i8, ptr %19, align 1
  store i8 %22, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %23 = getelementptr i8, ptr %0, i32 10
  %24 = load i8, ptr %21, align 1
  store i8 %24, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %25 = getelementptr i8, ptr %0, i32 11
  %26 = load i8, ptr %23, align 1
  store i8 %26, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %27 = getelementptr i8, ptr %0, i32 12
  %28 = load i8, ptr %25, align 1
  store i8 %28, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %29 = getelementptr i8, ptr %0, i32 13
  %30 = load i8, ptr %27, align 1
  store i8 %30, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %31 = zext i8 %2 to i32
  %32 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %33 = icmp ult i32 %32, 16
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %32
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %37

37:                                               ; preds = %34, %1
  %38 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %39 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %40 = zext i16 %39 to i32
  tail call void asm sideeffect "", "r"(i32 %40) #2, !srcloc !7
  %41 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %42 = getelementptr i8, ptr %0, i32 14
  %43 = load i8, ptr %29, align 1
  store i8 %43, ptr @gMainScriptArgumentWords5E8, align 4
  %44 = getelementptr i8, ptr %0, i32 15
  %45 = load i8, ptr %42, align 1
  store i8 %45, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %46 = getelementptr i8, ptr %0, i32 16
  %47 = load i8, ptr %44, align 1
  store i8 %47, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %48 = getelementptr i8, ptr %0, i32 17
  %49 = load i8, ptr %46, align 1
  store i8 %49, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %50 = zext i16 %38 to i32
  %51 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %52 = icmp ult i32 %51, 16
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %51
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr @gMainScriptArgumentWords5E8, align 4
  br label %56

56:                                               ; preds = %53, %37
  %57 = phi i32 [ %55, %53 ], [ %51, %37 ]
  %58 = and i8 %14, 31
  %59 = zext nneg i8 %58 to i32
  tail call arm_apcscc void @ConfigureRenderXZCollisionScene(i32 noundef %31, i32 noundef %5, i32 noundef %8, i32 noundef %11, i32 noundef %59, i32 noundef %50, i32 noundef %40, i32 noundef %41, i32 noundef %57) #3
  %60 = and i8 %14, 64
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i8 0, ptr @gSaveGroup01Byte21E0, align 1
  br label %63

63:                                               ; preds = %62, %56
  %64 = icmp sgt i8 %14, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  tail call arm_apcscc void @MainScriptRebuildFollowerRoute(ptr noundef %48) #3
  br label %66

66:                                               ; preds = %65, %63
  store i32 17, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderXZCollisionScene(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @MainScriptRebuildFollowerRoute(ptr noundef) local_unnamed_addr #1

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
!4 = !{i64 700}
!5 = !{i64 850}
!6 = !{i64 1030}
!7 = !{i64 1693}
