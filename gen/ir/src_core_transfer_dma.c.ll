; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTransferReadIndex = external dso_local local_unnamed_addr global i8, align 1
@gTransferWriteIndex = external dso_local local_unnamed_addr global i8, align 1
@gTransferBufferA = external dso_local local_unnamed_addr global [256 x i32], align 4

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @FlushDmaTransfers() local_unnamed_addr #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %1) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #2
  %3 = load i8, ptr @gTransferReadIndex, align 1
  %4 = load i8, ptr @gTransferWriteIndex, align 1
  %5 = icmp eq i8 %3, %4
  br i1 %5, label %58, label %6

6:                                                ; preds = %0
  %7 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %8 = and i16 %7, 252
  %9 = icmp ugt i16 %8, 219
  br i1 %9, label %58, label %10

10:                                               ; preds = %6, %54
  %11 = phi i8 [ %51, %54 ], [ %3, %6 ]
  %12 = add i8 %11, 1
  store i8 %12, ptr @gTransferReadIndex, align 1
  %13 = zext i8 %11 to i32
  %14 = getelementptr [256 x i32], ptr @gTransferBufferA, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, -1
  %17 = and i32 %15, 2147483647
  %18 = add i8 %11, 2
  store i8 %18, ptr @gTransferReadIndex, align 1
  %19 = zext i8 %12 to i32
  %20 = getelementptr [256 x i32], ptr @gTransferBufferA, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = add i8 %11, 3
  store i8 %22, ptr @gTransferReadIndex, align 1
  %23 = zext i8 %18 to i32
  %24 = getelementptr [256 x i32], ptr @gTransferBufferA, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i8 %22, -1
  %27 = select i1 %26, i8 0, i8 %22
  store i8 %27, ptr @gTransferReadIndex, align 1
  %28 = or i32 %25, %15
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %21, 3
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  %34 = inttoptr i32 %17 to ptr
  br i1 %16, label %41, label %35

35:                                               ; preds = %10
  %36 = inttoptr i32 %21 to ptr
  br i1 %33, label %39, label %37

37:                                               ; preds = %35
  %38 = load i16, ptr %34, align 2
  store i16 %38, ptr %1, align 2
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr %36, ptr inttoptr (i32 67109080 to ptr), align 8
  br label %45

39:                                               ; preds = %35
  %40 = load i32, ptr %34, align 4
  store i32 %40, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr %36, ptr inttoptr (i32 67109080 to ptr), align 8
  br label %45

41:                                               ; preds = %10
  store volatile ptr %34, ptr inttoptr (i32 67109076 to ptr), align 4
  %42 = inttoptr i32 %21 to ptr
  store volatile ptr %42, ptr inttoptr (i32 67109080 to ptr), align 8
  %43 = select i1 %33, i32 2, i32 1
  %44 = select i1 %33, i32 -2080374784, i32 -2147483648
  br label %45

45:                                               ; preds = %41, %37, %39
  %46 = phi i32 [ 1, %37 ], [ 2, %39 ], [ %43, %41 ]
  %47 = phi i32 [ -2130706432, %37 ], [ -2063597568, %39 ], [ %44, %41 ]
  %48 = lshr i32 %25, %46
  %49 = or i32 %48, %47
  store volatile i32 %49, ptr inttoptr (i32 67109084 to ptr), align 4
  %50 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %51 = load i8, ptr @gTransferReadIndex, align 1
  %52 = load i8, ptr @gTransferWriteIndex, align 1
  %53 = icmp eq i8 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %56 = and i16 %55, 252
  %57 = icmp ugt i16 %56, 219
  br i1 %57, label %58, label %10

58:                                               ; preds = %54, %45, %6, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %1) #2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
