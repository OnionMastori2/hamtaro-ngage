; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gCpuTransferReadIndex = external dso_local local_unnamed_addr global i8, align 1
@gCpuTransferWriteIndex = external dso_local local_unnamed_addr global i8, align 1
@gTransferBufferB = external dso_local local_unnamed_addr global [256 x i32], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @FlushCpuTransfers() local_unnamed_addr #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  %3 = load i8, ptr @gCpuTransferReadIndex, align 1
  %4 = load i8, ptr @gCpuTransferWriteIndex, align 1
  %5 = icmp eq i8 %3, %4
  br i1 %5, label %95, label %6

6:                                                ; preds = %0
  %7 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %8 = and i16 %7, 248
  %9 = icmp ugt i16 %8, 199
  br i1 %9, label %95, label %10

10:                                               ; preds = %6, %91
  %11 = load i8, ptr @gCpuTransferReadIndex, align 1
  %12 = add i8 %11, 1
  store i8 %12, ptr @gCpuTransferReadIndex, align 1
  %13 = zext i8 %11 to i32
  %14 = getelementptr [256 x i32], ptr @gTransferBufferB, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2147483647
  %17 = and i8 %12, 127
  %18 = add nuw i8 %17, 1
  store i8 %18, ptr @gCpuTransferReadIndex, align 1
  %19 = zext nneg i8 %17 to i32
  %20 = getelementptr [256 x i32], ptr @gTransferBufferB, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = and i8 %18, 127
  %23 = add nuw i8 %22, 1
  store i8 %23, ptr @gCpuTransferReadIndex, align 1
  %24 = zext nneg i8 %22 to i32
  %25 = getelementptr [256 x i32], ptr @gTransferBufferB, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = and i8 %23, 127
  store i8 %27, ptr @gCpuTransferReadIndex, align 1
  %28 = icmp eq i32 %26, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = inttoptr i32 %16 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = trunc i32 %31 to i8
  %33 = inttoptr i32 %21 to ptr
  store i8 %32, ptr %33, align 1
  br label %91

34:                                               ; preds = %10
  %35 = icmp sgt i32 %15, -1
  %36 = and i32 %26, 31
  %37 = icmp eq i32 %36, 0
  br i1 %35, label %65, label %38

38:                                               ; preds = %34
  %39 = and i32 %21, 3
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = and i32 %26, 3
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i1 %40, i1 false
  %46 = inttoptr i32 %16 to ptr
  %47 = inttoptr i32 %21 to ptr
  br i1 %45, label %53, label %48

48:                                               ; preds = %42
  %49 = load i16, ptr %46, align 2
  store i16 %49, ptr %1, align 2
  %50 = lshr i32 %26, 1
  %51 = and i32 %50, 2097151
  %52 = or disjoint i32 %51, 16777216
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %1, ptr noundef %47, i32 noundef %52) #4
  br label %91

53:                                               ; preds = %42
  %54 = load i32, ptr %46, align 4
  store i32 %54, ptr %2, align 4
  %55 = lshr exact i32 %26, 2
  %56 = and i32 %55, 2097151
  %57 = or disjoint i32 %56, 83886080
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %2, ptr noundef %47, i32 noundef %57) #4
  br label %91

58:                                               ; preds = %38
  %59 = inttoptr i32 %16 to ptr
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %2, align 4
  %61 = inttoptr i32 %21 to ptr
  %62 = lshr exact i32 %26, 2
  %63 = and i32 %62, 2097144
  %64 = or disjoint i32 %63, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %2, ptr noundef %61, i32 noundef %64) #4
  br label %91

65:                                               ; preds = %34
  %66 = and i32 %15, 3
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %37, i1 %67, i1 false
  %69 = and i32 %21, 3
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %86, label %72

72:                                               ; preds = %65
  %73 = and i32 %26, 3
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i1 %67, i1 false
  %76 = select i1 %75, i1 %70, i1 false
  %77 = inttoptr i32 %16 to ptr
  %78 = inttoptr i32 %21 to ptr
  br i1 %76, label %82, label %79

79:                                               ; preds = %72
  %80 = lshr i32 %26, 1
  %81 = and i32 %80, 2097151
  call arm_apcscc void @BiosCpuSet(ptr noundef %77, ptr noundef %78, i32 noundef %81) #4
  br label %91

82:                                               ; preds = %72
  %83 = lshr exact i32 %26, 2
  %84 = and i32 %83, 2097151
  %85 = or disjoint i32 %84, 67108864
  call arm_apcscc void @BiosCpuSet(ptr noundef %77, ptr noundef %78, i32 noundef %85) #4
  br label %91

86:                                               ; preds = %65
  %87 = inttoptr i32 %16 to ptr
  %88 = inttoptr i32 %21 to ptr
  %89 = lshr exact i32 %26, 2
  %90 = and i32 %89, 2097144
  call arm_apcscc void @BiosCpuFastSet(ptr noundef %87, ptr noundef %88, i32 noundef %90) #4
  br label %91

91:                                               ; preds = %48, %53, %58, %79, %82, %86, %29
  %92 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %93 = and i16 %92, 248
  %94 = icmp ugt i16 %93, 199
  br i1 %94, label %95, label %10

95:                                               ; preds = %91, %6, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosCpuFastSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
