; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gSaveGroup3DefaultValues = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSaveGroup3DefaultIndices = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc i32 @ScanSaveGroup3AvailableFieldPairs(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  br label %6

6:                                                ; preds = %71, %4
  %7 = phi i32 [ 0, %4 ], [ %72, %71 ]
  %8 = phi i32 [ 0, %4 ], [ %74, %71 ]
  %9 = phi ptr [ %1, %4 ], [ %73, %71 ]
  %10 = phi ptr [ %0, %4 ], [ %75, %71 ]
  %11 = add i32 %8, %2
  %12 = mul i32 %11, 3
  %13 = add i32 %12, %3
  %14 = trunc i32 %13 to i8
  %15 = and i32 %13, 255
  %16 = load i8, ptr %10, align 1
  %17 = getelementptr i8, ptr %10, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = or i8 %18, %16
  %20 = zext i8 %19 to i32
  %21 = getelementptr [0 x i8], ptr @gSaveGroup3DefaultIndices, i32 0, i32 %15
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr @gSaveGroup3DefaultValues, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %26, -1
  %28 = and i32 %27, %20
  %29 = getelementptr i8, ptr %10, i32 12
  store volatile ptr %29, ptr %5, align 4
  %30 = icmp ult i32 %28, 128
  br i1 %30, label %35, label %31

31:                                               ; preds = %6
  %32 = getelementptr i8, ptr %9, i32 1
  store i8 %14, ptr %9, align 1
  %33 = getelementptr i8, ptr %9, i32 2
  store i8 0, ptr %32, align 1
  %34 = add i32 %7, 1
  br label %35

35:                                               ; preds = %31, %6
  %36 = phi i32 [ %34, %31 ], [ %7, %6 ]
  %37 = phi ptr [ %33, %31 ], [ %9, %6 ]
  %38 = and i32 %28, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %37, i32 1
  store i8 %14, ptr %37, align 1
  %42 = getelementptr i8, ptr %37, i32 2
  store i8 1, ptr %41, align 1
  %43 = add i32 %36, 1
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %43, %40 ], [ %36, %35 ]
  %46 = phi ptr [ %42, %40 ], [ %37, %35 ]
  %47 = and i32 %28, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %46, i32 1
  store i8 %14, ptr %46, align 1
  %51 = getelementptr i8, ptr %46, i32 2
  store i8 2, ptr %50, align 1
  %52 = add i32 %45, 1
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i32 [ %52, %49 ], [ %45, %44 ]
  %55 = phi ptr [ %51, %49 ], [ %46, %44 ]
  %56 = and i32 %28, 16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %55, i32 1
  store i8 %14, ptr %55, align 1
  %60 = getelementptr i8, ptr %55, i32 2
  store i8 3, ptr %59, align 1
  %61 = add i32 %54, 1
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i32 [ %61, %58 ], [ %54, %53 ]
  %64 = phi ptr [ %60, %58 ], [ %55, %53 ]
  %65 = and i32 %28, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr i8, ptr %64, i32 1
  store i8 %14, ptr %64, align 1
  %69 = getelementptr i8, ptr %64, i32 2
  store i8 4, ptr %68, align 1
  %70 = add i32 %63, 1
  br label %71

71:                                               ; preds = %67, %62
  %72 = phi i32 [ %70, %67 ], [ %63, %62 ]
  %73 = phi ptr [ %69, %67 ], [ %64, %62 ]
  %74 = add nuw nsw i32 %8, 1
  %75 = load volatile ptr, ptr %5, align 4
  %76 = icmp eq i32 %74, 10
  br i1 %76, label %77, label %6

77:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  ret i32 %72
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
