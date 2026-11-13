; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioMemoryTrackView = type { [64 x i8], ptr }
%struct.AudioMemoryPlayerView = type { [24 x i8], ptr }

@gAudioDispatchWords4F10 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ExecuteAudioMemoryCommand(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.AudioMemoryTrackView, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr i8, ptr %4, i32 1
  store ptr %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.AudioMemoryPlayerView, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %6, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = getelementptr i8, ptr %4, i32 2
  store ptr %12, ptr %3, align 4
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr i8, ptr %4, i32 3
  store ptr %15, ptr %3, align 4
  switch i8 %5, label %97 [
    i8 0, label %16
    i8 1, label %17
    i8 2, label %20
    i8 3, label %23
    i8 4, label %27
    i8 5, label %33
    i8 6, label %39
    i8 7, label %42
    i8 8, label %45
    i8 9, label %48
    i8 10, label %51
    i8 11, label %54
    i8 12, label %57
    i8 13, label %63
    i8 14, label %69
    i8 15, label %75
    i8 16, label %81
    i8 17, label %87
  ]

16:                                               ; preds = %2
  store i8 %13, ptr %11, align 1
  br label %97

17:                                               ; preds = %2
  %18 = load i8, ptr %11, align 1
  %19 = add i8 %18, %13
  store i8 %19, ptr %11, align 1
  br label %97

20:                                               ; preds = %2
  %21 = load i8, ptr %11, align 1
  %22 = sub i8 %21, %13
  store i8 %22, ptr %11, align 1
  br label %97

23:                                               ; preds = %2
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr i8, ptr %24, i32 %14
  %26 = load i8, ptr %25, align 1
  store i8 %26, ptr %11, align 1
  br label %97

27:                                               ; preds = %2
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i8, ptr %28, i32 %14
  %30 = load i8, ptr %29, align 1
  %31 = load i8, ptr %11, align 1
  %32 = add i8 %31, %30
  store i8 %32, ptr %11, align 1
  br label %97

33:                                               ; preds = %2
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 %14
  %36 = load i8, ptr %35, align 1
  %37 = load i8, ptr %11, align 1
  %38 = sub i8 %37, %36
  store i8 %38, ptr %11, align 1
  br label %97

39:                                               ; preds = %2
  %40 = load i8, ptr %11, align 1
  %41 = icmp eq i8 %40, %13
  br i1 %41, label %93, label %95

42:                                               ; preds = %2
  %43 = load i8, ptr %11, align 1
  %44 = icmp eq i8 %43, %13
  br i1 %44, label %95, label %93

45:                                               ; preds = %2
  %46 = load i8, ptr %11, align 1
  %47 = icmp ugt i8 %46, %13
  br i1 %47, label %93, label %95

48:                                               ; preds = %2
  %49 = load i8, ptr %11, align 1
  %50 = icmp ult i8 %49, %13
  br i1 %50, label %95, label %93

51:                                               ; preds = %2
  %52 = load i8, ptr %11, align 1
  %53 = icmp ugt i8 %52, %13
  br i1 %53, label %95, label %93

54:                                               ; preds = %2
  %55 = load i8, ptr %11, align 1
  %56 = icmp ult i8 %55, %13
  br i1 %56, label %93, label %95

57:                                               ; preds = %2
  %58 = load i8, ptr %11, align 1
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr i8, ptr %59, i32 %14
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %58, %61
  br i1 %62, label %93, label %95

63:                                               ; preds = %2
  %64 = load i8, ptr %11, align 1
  %65 = load ptr, ptr %7, align 4
  %66 = getelementptr i8, ptr %65, i32 %14
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %64, %67
  br i1 %68, label %95, label %93

69:                                               ; preds = %2
  %70 = load i8, ptr %11, align 1
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr i8, ptr %71, i32 %14
  %73 = load i8, ptr %72, align 1
  %74 = icmp ugt i8 %70, %73
  br i1 %74, label %93, label %95

75:                                               ; preds = %2
  %76 = load i8, ptr %11, align 1
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr i8, ptr %77, i32 %14
  %79 = load i8, ptr %78, align 1
  %80 = icmp ult i8 %76, %79
  br i1 %80, label %95, label %93

81:                                               ; preds = %2
  %82 = load i8, ptr %11, align 1
  %83 = load ptr, ptr %7, align 4
  %84 = getelementptr i8, ptr %83, i32 %14
  %85 = load i8, ptr %84, align 1
  %86 = icmp ugt i8 %82, %85
  br i1 %86, label %95, label %93

87:                                               ; preds = %2
  %88 = load i8, ptr %11, align 1
  %89 = load ptr, ptr %7, align 4
  %90 = getelementptr i8, ptr %89, i32 %14
  %91 = load i8, ptr %90, align 1
  %92 = icmp ult i8 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87, %81, %75, %69, %63, %57, %54, %51, %48, %45, %42, %39
  %94 = load ptr, ptr getelementptr ([0 x i8], ptr @gAudioDispatchWords4F10, i32 0, i32 4), align 1
  tail call arm_apcscc void %94(ptr noundef nonnull %0, ptr noundef nonnull %1) #1
  br label %97

95:                                               ; preds = %87, %81, %75, %69, %63, %57, %54, %51, %48, %45, %42, %39
  %96 = getelementptr i8, ptr %4, i32 7
  store ptr %96, ptr %3, align 4
  br label %97

97:                                               ; preds = %16, %17, %20, %23, %27, %33, %2, %95, %93
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
