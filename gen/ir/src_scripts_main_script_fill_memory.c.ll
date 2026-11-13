; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MainScriptFillArguments = type { i16, i16, i32 }

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptFillMemory(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = load i8, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  store i8 %5, ptr @gMainScriptArgumentWords5E8, align 4
  %6 = getelementptr i8, ptr %0, i32 2
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %8 = getelementptr i8, ptr %0, i32 3
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %10 = getelementptr i8, ptr %0, i32 4
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %12 = getelementptr i8, ptr %0, i32 5
  %13 = load i8, ptr %12, align 1
  store i8 %13, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %14 = getelementptr i8, ptr %0, i32 6
  %15 = load i8, ptr %14, align 1
  store i8 %15, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %16 = getelementptr i8, ptr %0, i32 7
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %18 = getelementptr i8, ptr %0, i32 8
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %20 = icmp eq i8 %3, 0
  %21 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br i1 %20, label %22, label %42

22:                                               ; preds = %1
  %23 = icmp ult i32 %21, 16
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %21
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr getelementptr inbounds ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %26, %24 ], [ %21, %22 ]
  %29 = load i8, ptr @gMainScriptArgumentWords5E8, align 4
  %30 = load i16, ptr getelementptr inbounds (%struct.MainScriptFillArguments, ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %64, label %32

32:                                               ; preds = %27
  %33 = inttoptr i32 %28 to ptr
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi ptr [ %33, %32 ], [ %37, %34 ]
  %36 = phi i32 [ 0, %32 ], [ %38, %34 ]
  %37 = getelementptr i8, ptr %35, i32 1
  store i8 %29, ptr %35, align 1
  %38 = add nuw nsw i32 %36, 1
  %39 = load i16, ptr getelementptr inbounds (%struct.MainScriptFillArguments, ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 2
  %40 = zext i16 %39 to i32
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %34, label %64

42:                                               ; preds = %1
  %43 = icmp ugt i32 %21, 100663295
  br i1 %43, label %44, label %55

44:                                               ; preds = %42
  %45 = load volatile i16, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %46 = and i16 %45, 128
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %50 = zext i16 %49 to i32
  %51 = shl nuw i32 %50, 16
  %52 = or disjoint i32 %51, %50
  %53 = load i16, ptr getelementptr inbounds (%struct.MainScriptFillArguments, ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 2
  %54 = zext i16 %53 to i32
  tail call arm_apcscc void @QueueDmaFill(i32 noundef %52, i32 noundef %21, i32 noundef %54) #3
  br label %64

55:                                               ; preds = %44, %42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  %56 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  store i16 %56, ptr %2, align 2
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  %57 = load volatile i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %58 = inttoptr i32 %57 to ptr
  store volatile ptr %58, ptr inttoptr (i32 67109080 to ptr), align 8
  %59 = load i16, ptr getelementptr inbounds (%struct.MainScriptFillArguments, ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 2
  %60 = lshr i16 %59, 1
  %61 = zext nneg i16 %60 to i32
  %62 = or disjoint i32 %61, -2130706432
  store volatile i32 %62, ptr inttoptr (i32 67109084 to ptr), align 4
  %63 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %64

64:                                               ; preds = %34, %48, %55, %27
  store i32 9, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @QueueDmaFill(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
