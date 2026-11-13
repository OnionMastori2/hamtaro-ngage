; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MapBank9Entry3Scripts = type { [10 x i8], [64 x i8], %struct.MainHalfArgumentCommand, [11 x i8], [5 x i8], %struct.MainCallbackCommand, [4 x i8], %struct.MainPairArgumentCommand, [5 x i8], %struct.MainCallbackCommand, [14 x i8], %struct.MainCallbackCommand, [4 x i8], %struct.MainPairArgumentCommand, [5 x i8], %struct.MainCallbackCommand, [14 x i8], [39 x i8], [39 x i8], [22 x i8], [33 x i8], %struct.MainCallbackCommand, [51 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [39 x i8], [10 x i8], [10 x i8], [10 x i8], [10 x i8], [10 x i8], [38 x i8], %struct.MainCallbackCommand, [29 x i8], %struct.MainCallbackCommand, [29 x i8], [26 x i8], [6 x i8], [13 x i8], %struct.MainCallbackCommand, [69 x i8], [33 x i8], [24 x i8], [6 x i8], [8 x i8], [5 x i8], [59 x i8], [20 x i8], [5 x i8], [14 x i8], [31 x i8], [18 x i8], [9 x i8], [16 x i8], [346 x i8], [9 x i8], %struct.MainCallbackCommand, %struct.MainCallbackCommand, [1 x i8], [21 x i8], [64 x i8], [54 x i8], [15 x i8], [9 x i8], %struct.MainCallbackCommand, %struct.MainCallbackCommand, %struct.MainCallbackCommand, [162 x i8], [53 x i8], [53 x i8], [53 x i8], [48 x i8], [74 x i8], %struct.MainCallbackCommand, [57 x i8], %struct.MainCallbackCommand, [3 x i8], [6 x i8], [51 x i8], [1 x i8], %struct.MainHalfArgumentCommand, [23 x i8], %struct.MainCallbackCommand, [5 x i8], %struct.MainCallbackCommand, [5 x i8], [12 x i8], %struct.MainCallbackCommand, [22 x i8], [69 x i8], [1 x i8], %struct.MainHalfArgumentCommand, [23 x i8], %struct.MainCallbackCommand, [5 x i8], %struct.MainCallbackCommand, [5 x i8], [12 x i8], %struct.MainCallbackCommand, [22 x i8], [53 x i8], [38 x i8], [1 x i8], %struct.MainCallbackCommand, [14 x i8], %struct.MainIndirectByteCommand, %struct.MainCallbackCommand, %struct.MainCallbackCommand, [13 x i8], [12 x i8], [20 x i8], [20 x i8], [46 x i8], [18 x i8], %struct.MainCallbackCommand, [4 x i8], [5 x i8], [12 x i8], [46 x i8], [18 x i8], %struct.MainCallbackCommand, [4 x i8], [5 x i8], [7 x i8], [4 x i8], [1 x i8], %struct.MainCallbackCommand, [48 x i8], [1 x i8], [3 x i8] }
%struct.MainPairArgumentCommand = type <{ i8, ptr, i8, i8 }>
%struct.MainHalfArgumentCommand = type <{ i8, ptr, i16 }>
%struct.MainIndirectByteCommand = type <{ i8, ptr, i8, ptr }>
%struct.MainCallbackCommand = type <{ i8, ptr }>

@gSaveGroup3Byte35CC = external dso_local global i8, align 1
@gMapBank9Entry3Scripts = dso_local local_unnamed_addr constant %struct.MapBank9Entry3Scripts { [10 x i8] c"\1E\1Bv\0E\08\1E v\0E\08", [64 x i8] c"\05!A\01`\00P,\00\030\00`\00\04\00\\s\0E\080\00`\00\02\00\89s\0E\080\00`\00\03\00as\0E\080\00`\00\05\00as\0E\08\1D\03\D8s\0E\08\FFs\0E\08\9At\0E\08", %struct.MainHalfArgumentCommand <{ i8 28, ptr @ScriptCallbackReadPressedKeyOrdinal, i16 1 }>, [11 x i8] c"\1D\01\B1s\0E\08\0C\0As\0E\08", [5 x i8] c"\0C\0As\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackDisableVcountInterrupt }>, [4 x i8] c"\0B\CA\00\01", %struct.MainPairArgumentCommand <{ i8 28, ptr @ScriptCallbackBackupTwoRenderSlots, i8 30, i8 31 }>, [5 x i8] c"\1EH:\0D\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackRestoreActorRenderSlotsAndClearFlag }>, [14 x i8] c"-)\00\01\1E v\0E\08\0C\0As\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackDisableVcountInterrupt }>, [4 x i8] c"\0B\CA\00\01", %struct.MainPairArgumentCommand <{ i8 28, ptr @ScriptCallbackBackupTwoRenderSlots, i8 30, i8 31 }>, [5 x i8] c"\1E(O\0D\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackRestoreActorRenderSlotsAndClearFlag }>, [14 x i8] c"-)\00\02\1E v\0E\08\0C\0As\0E\08", [39 x i8] c"E\09\00\00\00\00$\04fOZ\08\94OZ\08\1D\04\C1t\0E\08\CBt\0E\08\D5t\0E\08\DFt\0E\08\0C\0As\0E\08", [39 x i8] c"E\09\00\00\00\00$\04fOZ\08\94OZ\08\1D\04\C1t\0E\08\CBt\0E\08\E9t\0E\08\DFt\0E\08\0C\0As\0E\08", [22 x i8] c"3\00\10\00\15t\0E\08D\0D\00\00\00\00\00\00\10\0D\02@\8B\08", [33 x i8] c"D\0A\00\00\00\00\00\00\10\0A#\C7\8A\08\0B\CA\00\01.\22\00`\00.#\00\80\00\1E`FZ\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackDisableVcountInterrupt }>, [51 x i8] c"0\00!\00\FF\00\98t\0E\08)!\00\1D\09nt\0E\08tt\0E\08zt\0E\08\80t\0E\08\86t\0E\08\8Ct\0E\08\92t\0E\08\94t\0E\08\96t\0E\08", [6 x i8] c"-\0F\00\03\0E\02", [6 x i8] c"-\0F\00\01\0E\03", [6 x i8] c"-\0F\00\08\0E\04", [6 x i8] c"-\0F\00\05\0E\05", [6 x i8] c"-\0F\00\13\0E\06", [6 x i8] c"-\0F\00\01\0E\07", [2 x i8] c"\0E\00", [2 x i8] c"\0E\00", [2 x i8] c"\0E\00", [2 x i8] c"\0E\00", [39 x i8] c"E\09\00\00\00\00$\04fOZ\08\94OZ\08\1D\04\F3t\0E\08\CBt\0E\08\E9t\0E\08\DFt\0E\08\0C\0As\0E\08", [10 x i8] c"\1E5zZ\08\0C\0As\0E\08", [10 x i8] c"\1E\E0zZ\08\0C\0As\0E\08", [10 x i8] c"\1E\FC|Z\08\0C\0As\0E\08", [10 x i8] c"\1E\01\8DZ\08\0C\0As\0E\08", [10 x i8] c"\1E\13~Z\08\0C\0As\0E\08", [38 x i8] c"\1E5zZ\08.\22\00`\00.#\00@\00.$\00\88\00.%\00@\00-\E1\00\01-\E2\00\01\1E|oZ\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackCheckPairListCompletion }>, [29 x i8] c"0\00a\00\01\00;u\0E\08\1Es\FAZ\08\1A\00HYn\08\19\00\00\0C\0As\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackReadMissingPairListCount }>, [29 x i8] c"1\00\01\00\01\00]u\0E\08\1Es\FAZ\08\1A\00\D0Xn\08\19\00\00\0C\0As\0E\08", [26 x i8] c"\1Es\FAZ\080\00\01\00\01\00wu\0E\08\1A\00XXn\08\0C}u\0E\08", [6 x i8] c"\1A\00DXn\08", [13 x i8] c"\19\00\00\1E\D4x\0E\08\1E2DZ\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackResetRenderAndBackground }>, [69 x i8] c"-)\00\00\1E\BCv\0E\08\16\17\1E\C2DZ\08\1E\8Fx\0E\08\02\10\00\0F\0A\013`\00\00\00@\00\C6\C0\8A\083\01\10\00\D4u\0E\08 \0A\00\00\00\01\F0\00\A0\00`\EE\01\02\00\00\00\00\0C\F5u\0E\08", [33 x i8] c"\0F\0D\01r\88\00\00\00@\00U@\8B\08 \0A\0D\00\00\01\F0\00\A0\00`\EE\01\02\00\00\00\00=", [24 x i8] c"\1Es\FAZ\083\01\80\02\0Dv\0E\08\1A\004Yn\08\0C\13v\0E\08", [6 x i8] c"\1A\00 Yn\08", [8 x i8] c"\19\00\00\0C\0As\0E\08", [5 x i8] c"-)\00\00\1F", [59 x i8] c"\1E\BCv\0E\083\01\EA\00tv\0E\08\1EOx\0E\08\1E:x\0E\08\0F\0A\013`\00\00\00\A8\00\AA\C7\8A\083\00\10\00[v\0E\08\0F\0D\01t`\00\00\00\A8\00U@\8B\08", [20 x i8] c"\05<\0A\AA\C7\8A\08[v\0E\083\00\10\00ov\0E\08=", [5 x i8] c"\0C\82v\0E\08", [14 x i8] c"\1EOx\0E\08F\EA\00\00\1EKFZ\08", [31 x i8] c"3\01\10\00\A1v\0E\08 \0A\00\00\00\01\F0\00\A0\00`\EE\01\02\00\00\00\00\0C\B3v\0E\08", [18 x i8] c" \0A\0D\00\00\01\F0\00\A0\00`\EE\01\02\00\00\00\00", [9 x i8] c"-(\00\03F\03\00\00\1F", [16 x i8] c"\17\17\0A\CA\00\011\00)\00\01\00\CCv\0E\08", [346 x i8] c"\15\00\00\00\00\00\14\00\03\01\01\00\18\00\03\15\01\00\00\00\00\14\01\01\01\01\00\1C\00\03\15\02\00\00\00\00\14\02\02\01\01\00\15\00\00\15\03\00\00\00\00\14\03\00\00\00\00\17\00\00,\00\01\00\00\00\00\F0\00\A0\00,\01\01\00\00\00\00\F0\00\A0\00\1ETCZ\08\05\06\B8\D7V\08\00@\00\064\B4B$\08\00b\01\06\00\02\02\00\00\044\E8D$\08\00j\01\06\80\00\06\00\00\04\06,\F5V\08\00(\01\06\054\A8\04W\08\00\C0\00\06<\00\15\00@\004\98\05W\08\00\E0\00\06<\00\15\00@\004T\06W\08\00\A8\00\06<\00\15\00@\00\055@\0BW\08`\EE\01\02<\00\22\00`\00\05\0F\18\01t`\00\0C\00\00\00!\CA\8F\08\0F\19\01tw\008\00\00\00\09\CA\8F\089\19\01\0F\1A\01t\80\00@\00\00\00\19\CA\8F\089\1A\03K\1A\01\0F\1B\01tx\00\08\000\00\11\CA\8F\08\0F\09\01\00\00\00\00\00\00\00\F1\C9\8F\081\00)\00\01\00&x\0E\08\0F\1F\01\B0\00\00\00\00\00\00\F9\C9\8F\08>\1F\02\03\0A9\1F\03K\1F\013\00\10\00&x\0E\08\0F\1E\01\B0\00\00\00\00\00\00\01\CA\8F\08>\1E\02\03\0D9\1E\03K\1E\01", [9 x i8] c"-#\00\1F.4\00@\00", %struct.MainCallbackCommand <{ i8 28, ptr @ConfigureVcountAlternatingBlend }>, %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackEnableVcountInterrupt }>, [1 x i8] c"\1F", [21 x i8] c"\1EOx\0E\08.\22\00`\00.#\00\80\00\1E5GZ\08\1F", [64 x i8] c"\06,\03W\08`\01\00\05\06\1CC\12\08@\02\00\05\06\C4\22\19\08`\02\00\05\06d\04W\08\80\02\00\05\06\88\04W\08\A0\02\00\05\06\D4\03W\08\C0\02\00\05\06,\04W\08\C0\03\00\05\1F", [54 x i8] c"\06d\04W\08\80\02\00\05\06\88\04W\08\A0\02\00\05\13\04\01\AA\C9\8F\08\13\05\01\C1\C9\8F\08\13\06\01\D8\C9\8F\08\13\07\017\C0\8A\08\13\09\01\93?\8B\08\1F", [15 x i8] c"\13\04\01|\C9\8F\08\13\05\01\93\C9\8F\08\1F", [9 x i8] c"\1E2DZ\08\17\17R\01", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackDisableVcountInterrupt }>, %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackResetRenderAndBackground }>, %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackPreparePairList }>, [162 x i8] c"\13\04\01\EF\C9\8F\08\05\15\00\00\00\00\00\14\00\01\01\01\00\18\00\00\15\01\00\00\00\00\14\01\02\01\01\00\1C\00\00\15\02\00\00\00\00\14\02\03\01\01\00\1A\00\00\1ETCZ\08\18\01\00\00 \00\00@\00\06\18\01\00\00\00\05\00\C0\00\06\18\01\00\00\00\05\00\E0\00\06)\EB\00\1D\04\8Ey\0E\08\C3y\0E\08\F8y\0E\08-z\0E\08\06H\0CW\08\A0P\00\06\06P1W\08\00(\01\064\E4wW\08,\C0\00\06\10\00\0E\00@\004\B0|W\08\18\E0\00\06\14\00\05\00@\00\0C]z\0E\08", [53 x i8] c"\06\8C\13W\08\A0P\00\06\06d?W\08\00(\01\0640yW\08,\C0\00\06\10\00\0E\00@\004\10}W\08\18\E0\00\06\14\00\05\00@\00\0C]z\0E\08", [53 x i8] c"\06\F8\1AW\08\A0P\00\06\06\10MW\08\00(\01\064\10zW\08,\C0\00\06\10\00\0E\00@\004X}W\08\18\E0\00\06\14\00\05\00@\00\0C]z\0E\08", [53 x i8] c"\06l\22W\08\A0P\00\06\06\D0ZW\08\00(\01\064\F0zW\08,\C0\00\06\10\00\0E\00@\004\A0}W\08\18\E0\00\06\14\00\05\00@\00\0C]z\0E\08", [48 x i8] c"\06\E4)W\08\A0P\00\06\06phW\08\00(\01\064\D0{W\08,\C0\00\06\10\00\0E\00@\004\E8}W\08\18\E0\00\06\14\00\05\00@\00", [74 x i8] c"4\9CwW\08\18\C1\00\06\14\00\0A\00@\004\C4xW\08\80\C3\00\06\0C\00\06\00@\004\F8|W\08Z\E1\00\06\10\00\08\00@\0040~W\08\00\D0\00\06@\00 \00@\00\0F\1F\00ql\00\0F\00\00\00\82\CB\8F\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackRenderPairList }>, [57 x i8] c"\0F\18\01q\04\00v\00\00\00=\CA\8F\089\18\01\0F\19\01q\08\00\08\00\00\00J\CB\8F\08\12\08\04\16\8C\8F\08F\80\02\00\16\17\1E\CCDZ\08\1E\C5x\0E\08\02\08\00", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackRefreshPairListPaletteSlots }>, [3 x i8] c"\02\08\00", [6 x i8] c"8\00\07\19\00\01", [51 x i8] c"\09\84\EE\89\08@\01\00\05 \00\09x\EE\89\08\F6\00\00\05\0A\00\09x\EE\89\086\01\00\05\0A\00\1A\00lXn\08\1A\00\\Yn\08\10\18p\CA\8F\08", [1 x i8] c"\05", %struct.MainHalfArgumentCommand <{ i8 28, ptr @ScriptCallbackReadRepeatKeyOrdinal, i16 195 }>, [23 x i8] c"\1D\04E{\0E\08O{\0E\08Y{\0E\08e{\0E\08\0C&{\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackSelectNextPairListEntry }>, [5 x i8] c"\0C&{\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackSelectPreviousPairListEntry }>, [5 x i8] c"\0C&{\0E\08", [12 x i8] c"\0A1\01\00\19\00\00\0C=}\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackClassifySelectedPairListEntry }>, [22 x i8] c"2\00a\00\02\00\80{\0E\08\0A-\01\00\02(\00\0C&{\0E\08", [69 x i8] c"\0A0\01\00\09\B0\EE\89\08@\01\00\05 \00\09\A4\EE\89\08\F6\00\00\05\0A\00\09\A4\EE\89\086\01\00\05\0A\00\09\D0\EE\89\08\F0\00\00\05\02\00;\1F\01\1A\00\80Xn\08\1A\00pYn\08\10\18=\CA\8F\08", [1 x i8] c"\05", %struct.MainHalfArgumentCommand <{ i8 28, ptr @ScriptCallbackReadRepeatKeyOrdinal, i16 51 }>, [23 x i8] c"\1D\04\E4{\0E\08\EE{\0E\08\F8{\0E\08\04|\0E\08\0C\C5{\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackSelectPreviousPairListVariant }>, [5 x i8] c"\0C\C5{\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackSelectNextPairListVariant }>, [5 x i8] c"\0C\C5{\0E\08", [12 x i8] c"\0A1\01\00;\1F\00\0C\F3z\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackClassifySelectedPairListVariant }>, [22 x i8] c"2\00a\00\02\00\1F|\0E\08\0A-\01\00\02(\00\0C\C5{\0E\08", [53 x i8] c"\19\00\00\0A0\01\00E\12\08\02\00\008\00\08\19\00\01\1A\00\94Xn\08$\02jOZ\08\94OZ\08\19\00\00\1D\02T|\0E\08\AF|\0E\08\0C\AF|\0E\08", [38 x i8] c"\0Ai\00\00\02<\00A\01\80\01\CC5\00\03\22\D8}\0E\08\BB|\0E\08\22\DC}\0E\08\CF|\0E\08#\D0}\0E\08", [1 x i8] c"\05", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackDecrementPairListValue }>, [14 x i8] c"\22\E0}\0E\08\8E|\0E\08\0Cz|\0E\08", %struct.MainIndirectByteCommand <{ i8 28, ptr @ScriptCallbackAddIndirectByte, i8 1, ptr @gSaveGroup3Byte35CC }>, %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackMarkSelectedPairListVariant }>, %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackRefreshPairListRemainingCount }>, [13 x i8] c"F\80\02\01F\FD\00\01\0C\E3|\0E\08", [12 x i8] c"\0Aj\00\00\02<\00\0C\E3|\0E\08", [20 x i8] c"8\00\07\19\00\01\1A\00\BCXn\08\19\00\00\0C\E3|\0E\08", [20 x i8] c"8\00\07\19\00\01\1A\00\E4Xn\08\19\00\00\0C\E3|\0E\08", [46 x i8] c"E\12\08\02\00\008\00\08\19\00\01\1A\00\F8Xn\08$\02jOZ\08\94OZ\08\19\00\00\1D\02\11}\0E\081}\0E\08\0C1}\0E\08", [18 x i8] c"\0Ai\00\00\02<\00;\1F\003\00\FD\00,}\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackRefreshPairListSelection }>, [4 x i8] c"F\FD\00\00", [5 x i8] c"\0C\EDz\0E\08", [12 x i8] c"\0Aj\00\00\02<\00\0C\92}\0E\08", [46 x i8] c"E\12\08\02\00\008\00\08\19\00\01\1A\00\0CYn\08$\02jOZ\08\94OZ\08\19\00\00\1D\02\8B}\0E\08k}\0E\08\0Ck}\0E\08", [18 x i8] c"\0Aj\00\00\02<\00;\1F\003\00\FD\00\86}\0E\08", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackRefreshPairListSelection }>, [4 x i8] c"F\FD\00\00", [5 x i8] c"\0C\EDz\0E\08", [7 x i8] c"\0Ai\00\00\02<\00", [4 x i8] c";\19\00\1F", [1 x i8] c"\05", %struct.MainCallbackCommand <{ i8 28, ptr @ScriptCallbackReadPressedKeyMask }>, [48 x i8] c"3\01\06\00\CC}\0E\083\01\07\00\CC}\0E\083\01\0C\00\CC}\0E\083\01\0D\00\CC}\0E\083\01\0B\00\CC}\0E\083\00\0A\00\96}\0E\08", [1 x i8] c"\1F", [3 x i8] zeroinitializer }, align 1
@gMapBank9PairListExpressions = dso_local local_unnamed_addr constant [11 x i16] [i16 -27456, i16 -25054, i16 28672, i16 -16895, i16 28544, i16 -16866, i16 -28151, i16 -25054, i16 -28480, i16 -8704, i16 0], align 2
@gMapBank9PairListExpressionSeparation = dso_local local_unnamed_addr constant [10 x i8] zeroinitializer, align 1
@gMapBank9Entry3InitialWords = dso_local local_unnamed_addr constant [10 x i32] [i32 9, i32 ptrtoint (ptr @PairListAnimationCD594 to i32), i32 ptrtoint (ptr @PairListAnimationCD5A8 to i32), i32 ptrtoint (ptr @PairListAnimationCD5C8 to i32), i32 ptrtoint (ptr @PairListAnimationCD5DC to i32), i32 ptrtoint (ptr @PairListAnimationCD5F0 to i32), i32 ptrtoint (ptr @PairListAnimationCD604 to i32), i32 ptrtoint (ptr @PairListAnimationCD618 to i32), i32 ptrtoint (ptr @PairListAnimationCD62C to i32), i32 ptrtoint (ptr @PairListAnimationCD640 to i32)], align 4

declare dso_local arm_apcscc i32 @ScriptCallbackReadPressedKeyOrdinal(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackDisableVcountInterrupt(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackBackupTwoRenderSlots(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackRestoreActorRenderSlotsAndClearFlag(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackCheckPairListCompletion(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackReadMissingPairListCount(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackResetRenderAndBackground(ptr noundef) #0

declare dso_local arm_apcscc i32 @ConfigureVcountAlternatingBlend() #0

declare dso_local arm_apcscc i32 @ScriptCallbackEnableVcountInterrupt(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackPreparePairList(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackRenderPairList(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackRefreshPairListPaletteSlots(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackReadRepeatKeyOrdinal(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackSelectNextPairListEntry(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackSelectPreviousPairListEntry(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackClassifySelectedPairListEntry(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackSelectPreviousPairListVariant(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackSelectNextPairListVariant(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackClassifySelectedPairListVariant(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackDecrementPairListValue(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackAddIndirectByte(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackMarkSelectedPairListVariant(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackRefreshPairListRemainingCount(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackRefreshPairListSelection(ptr noundef) #0

declare dso_local arm_apcscc i32 @ScriptCallbackReadPressedKeyMask(ptr noundef) #0

declare dso_local arm_apcscc void @PairListAnimationCD594() #0

declare dso_local arm_apcscc void @PairListAnimationCD5A8() #0

declare dso_local arm_apcscc void @PairListAnimationCD5C8() #0

declare dso_local arm_apcscc void @PairListAnimationCD5DC() #0

declare dso_local arm_apcscc void @PairListAnimationCD5F0() #0

declare dso_local arm_apcscc void @PairListAnimationCD604() #0

declare dso_local arm_apcscc void @PairListAnimationCD618() #0

declare dso_local arm_apcscc void @PairListAnimationCD62C() #0

declare dso_local arm_apcscc void @PairListAnimationCD640() #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
