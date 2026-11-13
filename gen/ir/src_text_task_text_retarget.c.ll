; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTaskConstructorByte646 = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextVariantFamilies = external dso_local constant [5 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef ptr @IdentityTaskTextPointer(ptr noundef readnone returned %0) local_unnamed_addr #0 {
  ret ptr %0
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @RetargetTaskTextBundle(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load i8, ptr @gTaskConstructorByte646, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %69, label %4

4:                                                ; preds = %1
  %5 = zext i8 %2 to i32
  %6 = tail call i32 asm "", "={r2},{r2}"(i32 %5) #2, !srcloc !4
  %7 = icmp ult i32 %6, 2
  br label %8

8:                                                ; preds = %67, %4
  %9 = phi i32 [ 0, %4 ], [ %68, %67 ]
  %10 = icmp eq i32 %9, %6
  br i1 %10, label %66, label %11

11:                                               ; preds = %8
  %12 = tail call i32 asm "", "={r0},{r0}"(i32 %9) #2, !srcloc !5
  %13 = shl i32 %12, 2
  %14 = tail call ptr asm "", "={r1},{r1}"(ptr nonnull @gDefaultTaskContextScript) #2, !srcloc !6
  %15 = tail call i32 asm "", "=r,r,0"(ptr %14, i32 0) #2, !srcloc !7
  %16 = ptrtoint ptr %14 to i32
  br label %17

17:                                               ; preds = %60, %11
  %18 = phi i32 [ %15, %11 ], [ %61, %60 ]
  %19 = phi ptr [ @gTaskTextVariantFamilies, %11 ], [ %62, %60 ]
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %13
  %22 = inttoptr i32 %21 to ptr
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %16
  br i1 %25, label %60, label %26

26:                                               ; preds = %17
  %27 = tail call i32 asm "", "={r0},{r0}"(i32 ptrtoint (ptr @gTaskTextVariantFamilies to i32)) #2, !srcloc !8
  %28 = load i32, ptr %0, align 4
  br label %29

29:                                               ; preds = %36, %26
  %30 = phi i32 [ %24, %26 ], [ %48, %36 ]
  %31 = phi i32 [ 0, %26 ], [ %38, %36 ]
  %32 = phi i32 [ 0, %26 ], [ %37, %36 ]
  %33 = icmp eq i32 %28, %30
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %32, 80
  br i1 %35, label %60, label %36

36:                                               ; preds = %34
  %37 = add nuw nsw i32 %32, 1
  %38 = add nuw nsw i32 %31, 4
  %39 = tail call i32 asm "", "={r6},{r6}"(i32 ptrtoint (ptr @gTaskTextVariantFamilies to i32)) #2, !srcloc !9
  %40 = add i32 %39, %18
  %41 = inttoptr i32 %40 to ptr
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %13
  %44 = inttoptr i32 %43 to ptr
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %38
  %47 = inttoptr i32 %46 to ptr
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %16
  br i1 %49, label %60, label %29

50:                                               ; preds = %29
  %51 = add i32 %27, %18
  %52 = inttoptr i32 %51 to ptr
  %53 = load i32, ptr %52, align 4
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr i32, ptr %54, i32 %5
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %31
  %58 = inttoptr i32 %57 to ptr
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %0, align 4
  br label %69

60:                                               ; preds = %34, %36, %17
  %61 = add i32 %18, 4
  %62 = getelementptr i32, ptr %19, i32 1
  %63 = icmp sgt ptr %62, inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextVariantFamilies to i32), i32 16) to ptr)
  br i1 %63, label %64, label %17

64:                                               ; preds = %60
  %65 = icmp ult i32 %9, 2
  br i1 %65, label %67, label %69

66:                                               ; preds = %8
  br i1 %7, label %67, label %69

67:                                               ; preds = %66, %64
  %68 = add nuw nsw i32 %9, 1
  br label %8

69:                                               ; preds = %66, %64, %50, %1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 579}
!5 = !{i64 1091}
!6 = !{i64 1302}
!7 = !{i64 1428}
!8 = !{i64 1879}
!9 = !{i64 2726}
