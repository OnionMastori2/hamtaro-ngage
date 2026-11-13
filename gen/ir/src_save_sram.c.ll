; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gSramReadRoutine = external dso_local global [0 x i16], align 2
@gSaveDataReadCallback = external dso_local local_unnamed_addr global ptr, align 4
@gSramVerifyRoutine = external dso_local global [0 x i16], align 2
@gSaveDataVerifyCallback = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ReadSram(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "", "r,r"(ptr %1, i32 %2) #1, !srcloc !4
  %4 = load volatile i16, ptr inttoptr (i32 67109380 to ptr), align 4
  %5 = or i16 %4, 3
  store volatile i16 %5, ptr inttoptr (i32 67109380 to ptr), align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %0, %3 ]
  %9 = phi i32 [ %11, %7 ], [ %2, %3 ]
  %10 = phi ptr [ %14, %7 ], [ %1, %3 ]
  %11 = add i32 %9, -1
  %12 = getelementptr i8, ptr %8, i32 1
  %13 = load volatile i8, ptr %8, align 1
  %14 = getelementptr i8, ptr %10, i32 1
  store i8 %13, ptr %10, align 1
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %16, label %7

16:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @WriteSram(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "", "r,r"(ptr %1, i32 %2) #1, !srcloc !5
  %4 = load volatile i16, ptr inttoptr (i32 67109380 to ptr), align 4
  %5 = or i16 %4, 3
  store volatile i16 %5, ptr inttoptr (i32 67109380 to ptr), align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %0, %3 ]
  %9 = phi i32 [ %11, %7 ], [ %2, %3 ]
  %10 = phi ptr [ %14, %7 ], [ %1, %3 ]
  %11 = add i32 %9, -1
  %12 = getelementptr i8, ptr %8, i32 1
  %13 = load i8, ptr %8, align 1
  %14 = getelementptr i8, ptr %10, i32 1
  store volatile i8 %13, ptr %10, align 1
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %16, label %7

16:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @VerifySram(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "", "r,r"(ptr %1, i32 %2) #1, !srcloc !6
  %4 = load volatile i16, ptr inttoptr (i32 67109380 to ptr), align 4
  %5 = or i16 %4, 3
  store volatile i16 %5, ptr inttoptr (i32 67109380 to ptr), align 4
  br label %6

6:                                                ; preds = %11, %3
  %7 = phi i32 [ %2, %3 ], [ %12, %11 ]
  %8 = phi ptr [ %1, %3 ], [ %16, %11 ]
  %9 = phi ptr [ %0, %3 ], [ %15, %11 ]
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, -1
  %13 = load volatile i8, ptr %8, align 1
  %14 = load i8, ptr %9, align 1
  %15 = getelementptr i8, ptr %9, i32 1
  %16 = getelementptr i8, ptr %8, i32 1
  %17 = icmp eq i8 %13, %14
  br i1 %17, label %6, label %18

18:                                               ; preds = %11
  %19 = ptrtoint ptr %8 to i32
  br label %20

20:                                               ; preds = %6, %18
  %21 = phi i32 [ %19, %18 ], [ 0, %6 ]
  ret i32 %21
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeSram() #0 {
  %1 = tail call i32 asm "", "=r,0"(i32 1) #2, !srcloc !7
  %2 = xor i32 %1, -1
  %3 = lshr i32 sub (i32 ptrtoint (ptr @WriteSram to i32), i32 ptrtoint (ptr @ReadSram to i32)), 1
  %4 = trunc i32 %3 to i16
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %0
  %7 = and i32 %2, ptrtoint (ptr @ReadSram to i32)
  %8 = inttoptr i32 %7 to ptr
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %13, %9 ], [ %8, %6 ]
  %11 = phi ptr [ %15, %9 ], [ @gSramReadRoutine, %6 ]
  %12 = phi i16 [ %16, %9 ], [ %4, %6 ]
  %13 = getelementptr i16, ptr %10, i32 1
  %14 = load i16, ptr %10, align 2
  %15 = getelementptr i16, ptr %11, i32 1
  store i16 %14, ptr %11, align 2
  %16 = add i16 %12, -1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %9

18:                                               ; preds = %9, %0
  store ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSramReadRoutine to i32), i32 1) to ptr), ptr @gSaveDataReadCallback, align 4
  %19 = lshr i32 sub (i32 ptrtoint (ptr @InitializeSram to i32), i32 ptrtoint (ptr @VerifySram to i32)), 1
  %20 = trunc i32 %19 to i16
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = and i32 %2, ptrtoint (ptr @VerifySram to i32)
  %24 = inttoptr i32 %23 to ptr
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %29, %25 ], [ %24, %22 ]
  %27 = phi ptr [ %31, %25 ], [ @gSramVerifyRoutine, %22 ]
  %28 = phi i16 [ %32, %25 ], [ %20, %22 ]
  %29 = getelementptr i16, ptr %26, i32 1
  %30 = load i16, ptr %26, align 2
  %31 = getelementptr i16, ptr %27, i32 1
  store i16 %30, ptr %27, align 2
  %32 = add i16 %28, -1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %25

34:                                               ; preds = %25, %18
  store ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSramVerifyRoutine to i32), i32 1) to ptr), ptr @gSaveDataVerifyCallback, align 4
  %35 = load volatile i16, ptr inttoptr (i32 67109380 to ptr), align 4
  %36 = zext i16 %35 to i32
  %37 = tail call i32 asm "", "=r,0"(i32 %36) #2, !srcloc !8
  %38 = trunc i32 %37 to i16
  %39 = or i16 %38, 3
  store volatile i16 %39, ptr inttoptr (i32 67109380 to ptr), align 4
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind }
attributes #2 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 408}
!5 = !{i64 918}
!6 = !{i64 1431}
!7 = !{i64 2301}
!8 = !{i64 3462}
