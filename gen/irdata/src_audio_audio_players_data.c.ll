; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioPlayerRecord = type { ptr, i32, i32 }

@gAudioPsgWaves = dso_local local_unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 -572719104, i32 -43691, i32 -859037150, i32 -1431686349], [4 x i32] [i32 -1372932388, i32 -1622646329, i32 783964925, i32 1405799640], [4 x i32] [i32 -152843918, i32 -388643948, i32 -1497832973, i32 -1816987421]], align 4
@gAudioPlayerRecordsADEC = dso_local local_unnamed_addr constant [6 x %struct.AudioPlayerRecord] [%struct.AudioPlayerRecord { ptr inttoptr (i32 50351824 to ptr), i32 50336144, i32 8 }, %struct.AudioPlayerRecord { ptr inttoptr (i32 50352288 to ptr), i32 50336784, i32 8 }, %struct.AudioPlayerRecord { ptr inttoptr (i32 50352352 to ptr), i32 50337424, i32 5 }, %struct.AudioPlayerRecord { ptr inttoptr (i32 50352496 to ptr), i32 50337824, i32 2 }, %struct.AudioPlayerRecord { ptr inttoptr (i32 50352416 to ptr), i32 50337984, i32 65538 }, %struct.AudioPlayerRecord { ptr inttoptr (i32 50351760 to ptr), i32 50338144, i32 2 }], align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
