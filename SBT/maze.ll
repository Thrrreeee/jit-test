; ModuleID = 'maze.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { [6 x i8], %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.anon = type { i64 }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%seg_400000_LOAD_590_type = type <{ [8 x i8], [8 x i8], [8 x i8], ptr, [4 x i8], [4 x i8], [4 x i8], [8 x i8], [24 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], ptr, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], ptr, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], ptr, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], ptr, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i8], [40 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], ptr, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [28 x i8], [4 x i8], [28 x i8], [4 x i8], [52 x i8], [4 x i8], [8 x i8], [8 x i8], [12 x i8], [44 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [116 x i8], [4 x i8], [28 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8] }>
%seg_401000__init_1b_type = type <{ [27 x i8], [5 x i8], [80 x i8], [44 x i8], [4 x i8], [56 x i8], [4 x i8], [36 x i8], [4 x i8], [20 x i8], [4 x i8], [44 x i8], [4 x i8], [16 x i8], [4 x i8], [28 x i8], [4 x i8], [48 x i8], [4 x i8], [104 x i8], [4 x i8], [52 x i8], [4 x i8], [28 x i8], [4 x i8], [20 x i8], [4 x i8], [16 x i8], [4 x i8], [16 x i8], [4 x i8], [176 x i8], [4 x i8], [40 x i8], [4 x i8], [88 x i8], [4 x i8], [196 x i8], [4 x i8], [168 x i8], [4 x i8], [30 x i8], [2 x i8], [13 x i8] }>
%seg_402000__rodata_1f0_type = type <{ [4 x i8], [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [293 x i8], [1 x i8], [10 x i8], [52 x i8], [4 x i8], [4 x i8], [4 x i8], [52 x i8], [4 x i8], [36 x i8], [4 x i8], [64 x i8], [4 x i8] }>
%seg_403e10__init_array_10_type = type <{ ptr, ptr, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [100 x i8], ptr, ptr, [4 x i8], [20 x i8], ptr, ptr, ptr, ptr, [8 x i8], [16 x i8], [77 x i8], [3 x i8], [1 x i8] }>

@__mcsema_reg_state = thread_local(initialexec) global %struct.State zeroinitializer
@__mcsema_stack = internal thread_local(initialexec) global [1048576 x i8] zeroinitializer
@0 = internal global i1 false
@__mcsema_all_segments = internal global <{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }> <{ %seg_400000_LOAD_590_type <{ [8 x i8] c"\7FELF\02\01\01\00", [8 x i8] zeroinitializer, [8 x i8] c"\02\00>\00\01\00\00\00", ptr @_start, [4 x i8] c"@\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"8:\00\00", [8 x i8] zeroinitializer, [24 x i8] c"@\008\00\0D\00@\00\1E\00\1D\00\06\00\00\00\04\00\00\00@\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"@\00@\00", [4 x i8] zeroinitializer, [4 x i8] c"@\00@\00", [4 x i8] zeroinitializer, [4 x i8] c"\D8\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\D8\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\03\00\00\00\04\00\00\00\18\03\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\18\03@\00", [4 x i8] zeroinitializer, [4 x i8] c"\18\03@\00", [4 x i8] zeroinitializer, [4 x i8] c"\1C\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\1C\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] zeroinitializer, [8 x i8] c"\01\00\00\00\04\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"\00\00@\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\00@\00", [4 x i8] zeroinitializer, [4 x i8] c"\90\05\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\90\05\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\10\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\01\00\00\00\05\00\00\00\00\10\00\00", [4 x i8] zeroinitializer, ptr @.init_proc, [4 x i8] c"\00\10@\00", [4 x i8] zeroinitializer, [4 x i8] c"\95\05\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\95\05\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\10\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\01\00\00\00\04\00\00\00\00 \00\00", [4 x i8] zeroinitializer, ptr @data_402000, [4 x i8] c"\00 @\00", [4 x i8] zeroinitializer, [4 x i8] c"\D4\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\D4\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\10\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\01\00\00\00\06\00\00\00\10.\00\00", [4 x i8] zeroinitializer, ptr @data_403e10, [4 x i8] c"\10>@\00", [4 x i8] zeroinitializer, [4 x i8] c"\8D\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\90\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\10\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\02\00\00\00\06\00\00\00 .\00\00", [4 x i8] zeroinitializer, [4 x i8] c" >@\00", [4 x i8] zeroinitializer, [4 x i8] c" >@\00", [4 x i8] zeroinitializer, [4 x i8] c"\D0\01\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\D0\01\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\04\00\00\00\04\00\00\008\03\00\00", [4 x i8] zeroinitializer, [4 x i8] c"8\03@\00", [4 x i8] zeroinitializer, [4 x i8] c"8\03@\00", [4 x i8] zeroinitializer, [4 x i8] c" \00\00\00", [4 x i8] zeroinitializer, [4 x i8] c" \00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\04\00\00\00\04\00\00\00X\03\00\00", [4 x i8] zeroinitializer, [4 x i8] c"X\03@\00", [4 x i8] zeroinitializer, [4 x i8] c"X\03@\00", [4 x i8] zeroinitializer, [4 x i8] c"D\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"D\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\04\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"S\E5td\04\00\00\008\03\00\00", [4 x i8] zeroinitializer, [4 x i8] c"8\03@\00", [4 x i8] zeroinitializer, [4 x i8] c"8\03@\00", [4 x i8] zeroinitializer, [4 x i8] c" \00\00\00", [4 x i8] zeroinitializer, [4 x i8] c" \00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"P\E5td\04\00\00\00\F0!\00\00", [4 x i8] zeroinitializer, ptr @data_4021f0, [4 x i8] c"\F0!@\00", [4 x i8] zeroinitializer, [4 x i8] c"4\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"4\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\04\00\00\00", [4 x i8] zeroinitializer, [8 x i8] c"Q\E5td\06\00\00\00", [40 x i8] zeroinitializer, [4 x i8] c"\10\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"R\E5td\04\00\00\00\10.\00\00", [4 x i8] zeroinitializer, ptr @data_403e10, [4 x i8] c"\10>@\00", [4 x i8] zeroinitializer, [4 x i8] c"\F0\01\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\F0\01\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] zeroinitializer, [28 x i8] c"/lib64/ld-linux-x86-64.so.2\00", [4 x i8] zeroinitializer, [28 x i8] c"\04\00\00\00\10\00\00\00\05\00\00\00GNU\00\02\80\00\C0\04\00\00\00\01\00\00\00", [4 x i8] zeroinitializer, [52 x i8] c"\04\00\00\00\14\00\00\00\03\00\00\00GNU\00\06_\0B\D2\9FoY\9C\DF\098\CCF(\EE!>4\94\DC\04\00\00\00\10\00\00\00\01\00\00\00GNU\00", [4 x i8] zeroinitializer, [8 x i8] c"\03\00\00\00\02\00\00\00", [8 x i8] zeroinitializer, [12 x i8] c"\01\00\00\00\01\00\00\00\01\00\00\00", [44 x i8] zeroinitializer, [8 x i8] c"\10\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"-\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"\0B\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"K\00\00\00 \00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"(\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"\22\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [116 x i8] c"\00libc.so.6\00read\00__libc_start_main\00sleep\00exit\00printf\00GLIBC_2.2.5\00GLIBC_2.34\00__gmon_start__\00\00\00\02\00\03\00\03\00\00\00\03\00\03\00\01\00\02\00\01\00\00\00\10\00\00\00", [4 x i8] zeroinitializer, [28 x i8] c"u\1Ai\09\00\00\03\004\00\00\00\10\00\00\00\B4\91\96\06\00\00\02\00@\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\F0?@\00", [4 x i8] zeroinitializer, [8 x i8] c"\06\00\00\00\01\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"\F8?@\00", [4 x i8] zeroinitializer, [8 x i8] c"\06\00\00\00\04\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"\18@@\00", [4 x i8] zeroinitializer, [8 x i8] c"\07\00\00\00\02\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c" @@\00", [4 x i8] zeroinitializer, [8 x i8] c"\07\00\00\00\03\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"(@@\00", [4 x i8] zeroinitializer, [8 x i8] c"\07\00\00\00\05\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"0@@\00", [4 x i8] zeroinitializer, [8 x i8] c"\07\00\00\00\06\00\00\00", [8 x i8] zeroinitializer }>, [2672 x i8] zeroinitializer, %seg_401000__init_1b_type <{ [27 x i8] c"\F3\0F\1E\FAH\83\EC\08H\8B\05\E9/\00\00H\85\C0t\02\FF\D0H\83\C4\08\C3", [5 x i8] zeroinitializer, [80 x i8] c"\FF5\E2/\00\00\FF%\E4/\00\00\0F\1F@\00\FF%\E2/\00\00h\00\00\00\00\E9\E0\FF\FF\FF\FF%\DA/\00\00h\01\00\00\00\E9\D0\FF\FF\FF\FF%\D2/\00\00h\02\00\00\00\E9\C0\FF\FF\FF\FF%\CA/\00\00h\03\00\00\00\E9\B0\FF\FF\FF", [44 x i8] c"\F3\0F\1E\FA1\EDI\89\D1^H\89\E2H\83\E4\F0PTE1\C01\C9H\C7\C7\00\12@\00\FF\15[/\00\00\F4f.\0F\1F\84\00", [4 x i8] zeroinitializer, [56 x i8] c"\F3\0F\1E\FA\C3f.\0F\1F\84\00\00\00\00\00\90\B8\A0@@\00H=\A0@@\00t\13\B8\00\00\00\00H\85\C0t\09\BF\A0@@\00\FF\E0f\90\C3ff.\0F\1F\84\00", [4 x i8] zeroinitializer, [36 x i8] c"\0F\1F@\00\BE\A0@@\00H\81\EE\A0@@\00H\89\F0H\C1\EE?H\C1\F8\03H\01\C6H\D1\FEt\11\B8", [4 x i8] zeroinitializer, [20 x i8] c"H\85\C0t\07\BF\A0@@\00\FF\E0\C3ff.\0F\1F\84\00", [4 x i8] zeroinitializer, [44 x i8] c"\0F\1F@\00\F3\0F\1E\FA\80=r/\00\00\00u\13UH\89\E5\E8z\FF\FF\FF\C6\05`/\00\00\01]\C3\90\C3ff.\0F\1F\84\00", [4 x i8] zeroinitializer, [16 x i8] c"\0F\1F@\00\F3\0F\1E\FA\EB\8Af.\0F\1F\84\00", [4 x i8] zeroinitializer, [28 x i8] c"UH\89\E5H\83\EC\10\C7E\FC\00\00\00\00\83}\FC\07\0F\8Do\00\00\00\C7E\F8", [4 x i8] zeroinitializer, [48 x i8] c"\83}\F8\0B\0F\8D?\00\00\00HcE\FCHi\C0\0B\00\00\00H\B9P@@\00\00\00\00\00H\01\C1HcE\F8\0F\BE4\01H\BF\C0 @\00", [4 x i8] zeroinitializer, [104 x i8] c"\B0\00\E8u\FE\FF\FF\8BE\F8\83\C0\01\89E\F8\E9\B7\FF\FF\FFH\BFb!@\00\00\00\00\00\B0\00\E8V\FE\FF\FF\8BE\FC\83\C0\01\89E\FC\E9\87\FF\FF\FFH\BFb!@\00\00\00\00\00\B0\00\E87\FE\FF\FFH\83\C4\10]\C3\90UH\89\E5H\81\EC\90\00\00\00\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C7E\DC", [4 x i8] zeroinitializer, [52 x i8] c"\C7E\EC\01\00\00\00\C7E\E8\01\00\00\00HcE\E8Hi\C0\0B\00\00\00H\B9P@@\00\00\00\00\00H\01\C1HcE\EC\C6\04\01XH\BF\C3 @\00", [4 x i8] zeroinitializer, [28 x i8] c"\BE\0B\00\00\00\BA\07\00\00\00\B0\00\E8\C7\FD\FF\FF\8Bu\EC\8BU\E8H\BF\DB @", [4 x i8] zeroinitializer, [20 x i8] c"\00\89E\BC\B0\00\E8\AD\FD\FF\FF\8Bu\DCH\BF\F3 @\00", [4 x i8] zeroinitializer, [16 x i8] c"\89E\B8\B0\00\E8\96\FD\FF\FFH\BF\05!@\00", [4 x i8] zeroinitializer, [16 x i8] c"\89E\B4\B0\00\E8\82\FD\FF\FFH\BFH!@\00", [4 x i8] zeroinitializer, [176 x i8] c"\89E\B0\B0\00\E8n\FD\FF\FF\89E\AC\E8\96\FE\FF\FF1\FFH\8Du\C0\BA\1C\00\00\00\E8f\FD\FF\FF\83}\DC\1C\0F\8D{\02\00\00\8BE\EC\89E\E4\8BE\E8\89E\E0HcM\DC\0F\BED\0D\C0\83\C0\9F\89\C1\83\E8\16H\89M\A0\0F\87F\00\00\00H\8BE\A0H\8B\0C\C5\08 @\00\FF\E1\8BE\E8\83\C0\FF\89E\E8\E9\\\00\00\00\8BE\E8\83\C0\01\89E\E8\E9N\00\00\00\8BE\EC\83\C0\FF\89E\EC\E9@\00\00\00\8BE\EC\83\C0\01\89E\EC\E92\00\00\00H\BFd!@\00\00\00\00\00\B0\00\E8\CE\FC\FF\FFH\BF\90!@\00", [4 x i8] zeroinitializer, [40 x i8] c"\89E\9C\B0\00\E8\BA\FC\FF\FF\BF\01\00\00\00\89E\98\E8\CD\FC\FF\FFHcE\E8Hi\C0\0B\00\00\00H\B9P@@\00", [4 x i8] zeroinitializer, [88 x i8] c"H\01\C1HcE\EC\0F\BE\14\01\83\FA#\0F\853\00\00\00H\BF\9B!@\00\00\00\00\00\B0\00\E8s\FC\FF\FFH\8Du\C0H\BF\A5!@\00\00\00\00\00\89E\94\B0\00\E8[\FC\FF\FF1\FF\89E\90\E8q\FC\FF\FFHcE\E8Hi\C0\0B\00\00\00H\B9P@@\00", [4 x i8] zeroinitializer, [196 x i8] c"H\01\C1HcE\EC\0F\BE\14\01\83\FA \0F\84S\00\00\00\83}\E8\02\0F\85=\00\00\00HcE\E8Hi\C0\0B\00\00\00H\B9P@@\00\00\00\00\00H\01\C1HcE\EC\0F\BE\14\01\83\FA|\0F\85\14\00\00\00\83}\EC\00\0F\8E\0A\00\00\00\83}\EC\0B\0F\8C\0C\00\00\00\8BE\E4\89E\EC\8BE\E0\89E\E8\8Bu\EC\8BU\E8H\BF\DB @\00\00\00\00\00\B0\00\E8\BE\FB\FF\FF1\C9\8Bu\DCHc}\DC\0F\BET=\C0D\8BE\E4D;E\EC\89u\8C\89U\88\88M\87\0F\85\0C\00\00\00\8BE\E0;E\E8\0F\94\C1\88M\87\8AE\87\A8\01H\B9\DD!@\00\00\00\00\00H\BAc!@\00", [4 x i8] zeroinitializer, [168 x i8] c"H\0FE\D1H\BF\BB!@\00\00\00\00\00\8Bu\8CD\8BE\88H\89\95x\FF\FF\FFD\89\C2H\8B\8Dx\FF\FF\FF\B0\00\E8G\FB\FF\FF\8BU\E4;U\EC\0F\85-\00\00\00\8BE\E0;E\E8\0F\85!\00\00\00H\BF\E6!@\00\00\00\00\00\B0\00\E8\1E\FB\FF\FF\BF\01\00\00\00\89\85t\FF\FF\FF\E8.\FB\FF\FFHcE\E8Hi\C0\0B\00\00\00H\B9P@@\00\00\00\00\00H\01\C1HcE\EC\C6\04\01X\E8\19\FC\FF\FF\8BU\DC\83\C2\01\89U\DC\BF\01\00\00\00\E8\06\FB\FF\FF\E9{\FD\FF\FFH\BF\E6!@", [4 x i8] zeroinitializer, [30 x i8] c"\00\B0\00\E8\C0\FA\FF\FF\B9\01\00\00\00\89\85p\FF\FF\FF\89\C8H\81\C4\90\00\00\00]\C3", [2 x i8] zeroinitializer, [13 x i8] c"\F3\0F\1E\FAH\83\EC\08H\83\C4\08\C3" }>, [2667 x i8] zeroinitializer, %seg_402000__rodata_1f0_type <{ [4 x i8] c"\01\00\02\00", [4 x i8] zeroinitializer, ptr @data_401335, ptr @data_401351, ptr @data_401351, ptr @data_401343, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401327, ptr @data_401351, ptr @data_401351, ptr @data_401351, ptr @data_401319, [293 x i8] c"%c\00Maze dimensions: %dx%d\0A\00Player position: %dx%d\0A\00Iteration no. %d\0A\00Program the player moves with a sequence of 'w', 's', 'a' and 'd'\0A\00Try to reach the price(#)!\0A\00Wrong command, only w,s,a,d are accepted!)\0A\00You lose!\0A\00You win!\0A\00Your solution <%42s>\0A\00Iteration no. %d. Action: %c. %s\0A\00Blocked!", [1 x i8] zeroinitializer, [10 x i8] c"You lose\0A\00", [52 x i8] c"\01\1B\03;4\00\00\00\05\00\00\000\EE\FF\FFx\00\00\00\80\EE\FF\FFP\00\00\00\B0\EE\FF\FFd\00\00\00p\EF\FF\FF\A0\00\00\00\10\F0\FF\FF\C0\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\14\00\00\00", [4 x i8] zeroinitializer, [52 x i8] c"\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00(\EE\FF\FF&\00\00\00\00D\07\10\10\00\00\000\00\00\00D\EE\FF\FF\05\00\00\00", [4 x i8] zeroinitializer, [36 x i8] c"$\00\00\00D\00\00\00\B0\ED\FF\FFP\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22", [4 x i8] zeroinitializer, [64 x i8] c"\1C\00\00\00l\00\00\00\C8\EE\FF\FF\9F\00\00\00\00A\0E\10\86\02C\0D\06\02\9A\0C\07\08\00\00\1C\00\00\00\8C\00\00\00H\EF\FF\FF\86\03\00\00\00A\0E\10\86\02C\0D\06\03\81\03\0C\07\08\00", [4 x i8] zeroinitializer }>, [6972 x i8] zeroinitializer, %seg_403e10__init_array_10_type <{ ptr @frame_dummy, ptr @__do_global_dtors_aux, [4 x i8] c"\01\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\0C\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\10@\00", [4 x i8] zeroinitializer, [4 x i8] c"\0D\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\88\15@\00", [4 x i8] zeroinitializer, [4 x i8] c"\19\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\10>@\00", [4 x i8] zeroinitializer, [4 x i8] c"\1B\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\1A\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\18>@\00", [4 x i8] zeroinitializer, [4 x i8] c"\1C\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\F5\FE\FFo", [4 x i8] zeroinitializer, [4 x i8] c"\A0\03@\00", [4 x i8] zeroinitializer, [4 x i8] c"\05\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"h\04@\00", [4 x i8] zeroinitializer, [4 x i8] c"\06\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\C0\03@\00", [4 x i8] zeroinitializer, [4 x i8] c"\0A\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"Z\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\0B\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\18\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\15\00\00\00", [12 x i8] zeroinitializer, [4 x i8] c"\03\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00@@\00", [4 x i8] zeroinitializer, [4 x i8] c"\02\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"`\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\14\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\07\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\17\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"0\05@\00", [4 x i8] zeroinitializer, [4 x i8] c"\07\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\05@\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"0\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\09\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\18\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\FE\FF\FFo", [4 x i8] zeroinitializer, [4 x i8] c"\D0\04@\00", [4 x i8] zeroinitializer, [4 x i8] c"\FF\FF\FFo", [4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\F0\FF\FFo", [4 x i8] zeroinitializer, [4 x i8] c"\C2\04@\00", [100 x i8] zeroinitializer, ptr @__libc_start_main, ptr @__gmon_start__, [4 x i8] c" >@\00", [20 x i8] zeroinitializer, ptr @printf, ptr @read, ptr @exit, ptr @sleep, [8 x i8] zeroinitializer, [16 x i8] zeroinitializer, [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+", [3 x i8] zeroinitializer, [1 x i8] zeroinitializer }> }>, section ".section_400000"

@data_401111 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 9, i32 13)
@data_401570 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 41, i32 8)
@data_40155a = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 39, i32 158)
@data_401547 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 39, i32 139)
@data_401522 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 39, i32 102)
@data_401512 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 39, i32 86)
@data_4021e6 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 27, i32 0)
@data_4014e9 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 39, i32 45)
@data_4021bb = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 251)
@data_402163 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 163)
@data_4021dd = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 285)
@data_401472 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 37, i32 126)
@data_4013df = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 35, i32 71)
@data_4013d5 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 35, i32 61)
@data_4021a5 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 229)
@data_4013bd = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 35, i32 37)
@data_40219b = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 219)
@data_401383 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 33, i32 23)
@data_401376 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 33, i32 10)
@data_402190 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 208)
@data_401362 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 31, i32 170)
@data_402164 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 164)
@data_401351 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 31, i32 153)
@data_402008 = internal alias ptr, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 2)
@data_4012da = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 31, i32 34)
@data_4012ca = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 31, i32 18)
@data_4012c2 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 31, i32 10)
@data_402148 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 136)
@data_4012ae = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 29, i32 10)
@data_402105 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 69)
@data_40129a = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 27, i32 10)
@data_4020f3 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 51)
@data_401283 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 25, i32 11)
@data_4020db = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 27)
@data_401269 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 23, i32 17)
@data_4020c3 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 3)
@data_401136 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 11, i32 26)
@data_40409d = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 6, i32 103, i32 0)
@data_401095 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 3, i32 37)
@data_403ff0 = internal alias ptr, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 6, i32 92)
@data_40102c = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 2, i32 12)
@data_404010 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 6, i32 95, i32 12)
@data_404008 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 6, i32 95, i32 4)
@data_4011f9 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 19, i32 69)
@data_4011da = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 19, i32 38)
@data_402162 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 162)
@data_4011bb = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 19, i32 7)
@data_4020c0 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 25, i32 0)
@data_404050 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 6, i32 102, i32 0)
@data_4010d1 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 5, i32 49)
@data_4040a0 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 6, i32 104, i32 0)
@data_401016 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 0, i32 22)
@data_403ff8 = internal alias ptr, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 6, i32 93)
@data_401335 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 31, i32 125)
@data_401343 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 31, i32 139)
@data_401327 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 31, i32 111)
@data_401319 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 2, i32 31, i32 97)
@data_402000 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 0, i32 0)
@data_403e10 = internal alias ptr, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 6, i32 0)
@data_4021f0 = internal alias i8, getelementptr inbounds (<{ %seg_400000_LOAD_590_type, [2672 x i8], %seg_401000__init_1b_type, [2667 x i8], %seg_402000__rodata_1f0_type, [6972 x i8], %seg_403e10__init_array_10_type }>, ptr @__mcsema_all_segments, i32 0, i32 4, i32 28, i32 0)
@ZF_2071_1e56928 = private thread_local(initialexec) alias i8, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 2, i32 7)
@AF_2069_1e56928 = private thread_local(initialexec) alias i8, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 2, i32 5)
@OF_2077_1e56928 = private thread_local(initialexec) alias i8, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 2, i32 13)
@SF_2073_1e56928 = private thread_local(initialexec) alias i8, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 2, i32 9)
@PF_2067_1e56928 = private thread_local(initialexec) alias i8, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 2, i32 3)
@CF_2065_1e56928 = private thread_local(initialexec) alias i8, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 2, i32 1)
@RAX_2216_1e56970 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 1, i32 0, i32 0)
@RSP_2312_1e56970 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 13, i32 0, i32 0)
@R9_2360_1e56970 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 19, i32 0, i32 0)
@R8_2344_1e56970 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 17, i32 0, i32 0)
@RCX_2248_1e56970 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 5, i32 0, i32 0)
@RDX_2264_1e56970 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 7, i32 0, i32 0)
@RSI_2280_1e56970 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 9, i32 0, i32 0)
@RDI_2296_1e56970 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 11, i32 0, i32 0)
@RSP_2312_1e61e90 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 13, i32 0, i32 0)
@RIP_2472_1e56970 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 33, i32 0, i32 0)
@RIP_2472_1e61d30 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 33, i32 0, i32 0)
@RIP_2472_1e676b0 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 33, i32 0, i32 0)
@RDI_2296_1e56958 = private thread_local(initialexec) alias i32, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 11, i32 0, i32 0)
@RDX_2264_1e56958 = private thread_local(initialexec) alias i32, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 7, i32 0, i32 0)
@RDI_2296_1e61d30 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 11, i32 0, i32 0)
@RAX_2216_1e61d30 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 1, i32 0, i32 0)
@RIP_2472_2cc54c0 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 33, i32 0, i32 0)
@RAX_2216_1e56958 = private thread_local(initialexec) alias i32, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 1, i32 0, i32 0)
@RAX_2216_1e56940 = private thread_local(initialexec) alias i16, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 1, i32 0, i32 0)
@RCX_2248_1e61d30 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 5, i32 0, i32 0)
@RBP_2328_1e56970 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 15, i32 0, i32 0)
@RAX_2216_1e56928 = private thread_local(initialexec) alias i8, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 1, i32 0, i32 0)
@RDI_2296_200a410 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 11, i32 0, i32 0)
@RCX_2248_1e56958 = private thread_local(initialexec) alias i32, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 5, i32 0, i32 0)
@R8_2344_1e56958 = private thread_local(initialexec) alias i32, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 17, i32 0, i32 0)
@RBP_2328_1e56958 = private thread_local(initialexec) alias i32, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 15, i32 0, i32 0)
@RDX_2264_1e61d30 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 7, i32 0, i32 0)
@RIP_2472_200a410 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 33, i32 0, i32 0)
@RCX_2248_1e56928 = private thread_local(initialexec) alias i8, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 5, i32 0, i32 0)
@RSI_2280_1e56958 = private thread_local(initialexec) alias i32, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 9, i32 0, i32 0)
@RSI_2280_1e61d30 = private thread_local(initialexec) alias ptr, getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 9, i32 0, i32 0)

declare !remill.function.type !1289 dso_local ptr @__remill_sync_hyper_call(ptr nonnull align 16 dereferenceable(3376), ptr, i32) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare !remill.function.type !1289 i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: noduplicate noinline nounwind optnone
define dso_local ptr @__remill_error(ptr nonnull align 16 dereferenceable(3376) %0, i64 %1, ptr %2) #2 !remill.function.type !1289 {
  call void @abort()
  unreachable
}

; Function Attrs: noduplicate noinline nounwind optnone memory(none)
declare !remill.function.type !1289 dso_local ptr @__remill_barrier_store_load(ptr) #3

; Function Attrs: noduplicate noinline nounwind optnone memory(none)
declare !remill.function.type !1289 dso_local ptr @__remill_barrier_store_store(ptr) #3

; Function Attrs: noduplicate noinline nounwind optnone memory(none)
declare !remill.function.type !1289 dso_local ptr @__remill_barrier_load_load(ptr) #3

; Function Attrs: nounwind memory(none)
declare !remill.function.type !1289 dso_local i32 @__remill_fpu_exception_test_and_clear(i32, i32) #4

; Function Attrs: noduplicate noinline nounwind optnone memory(none)
declare !remill.function.type !1289 dso_local ptr @__remill_barrier_load_store(ptr) #5

; Function Attrs: noduplicate noinline nounwind optnone memory(none)
declare !remill.function.type !1289 dso_local ptr @__remill_atomic_begin(ptr) #5

; Function Attrs: noduplicate noinline nounwind optnone memory(none)
declare !remill.function.type !1289 dso_local ptr @__remill_atomic_end(ptr) #5

; Function Attrs: noduplicate noinline nounwind optnone memory(none)
declare !remill.function.type !1289 dso_local ptr @__remill_delay_slot_begin(ptr) #5

; Function Attrs: noduplicate noinline nounwind optnone memory(none)
declare !remill.function.type !1289 dso_local ptr @__remill_delay_slot_end(ptr) #5

; Function Attrs: noduplicate noinline nounwind optnone
declare !remill.function.type !1289 dso_local ptr @__remill_function_call(ptr nonnull align 1, i64, ptr) #6

; Function Attrs: noduplicate noinline nounwind optnone
declare !remill.function.type !1289 dso_local ptr @__remill_function_return(ptr nonnull align 1, i64, ptr) #6

; Function Attrs: noduplicate noinline nounwind optnone
declare !remill.function.type !1289 dso_local ptr @__remill_jump(ptr nonnull align 1, i64, ptr) #6

; Function Attrs: noduplicate noinline nounwind optnone
define dso_local ptr @__remill_missing_block(ptr nonnull align 1 %0, i64 %1, ptr %2) #6 !remill.function.type !1289 {
  call void @abort()
  unreachable
}

; Function Attrs: noduplicate noinline nounwind optnone
declare !remill.function.type !1289 dso_local ptr @__remill_async_hyper_call(ptr nonnull align 1, i64, ptr) #6

; Function Attrs: nobuiltin noinline
define private void @_start() #7 {
  %1 = call ptr @__mcsema_init_reg_state()
  %2 = call ptr @sub_401070__start(ptr %1, i64 4198512, ptr null)
  ret void
}

; Function Attrs: nobuiltin noinline
define private void @frame_dummy() #7 {
  %1 = call ptr @__mcsema_init_reg_state()
  %2 = call ptr @sub_401150_frame_dummy(ptr %1, i64 4198736, ptr null)
  ret void
}

; Function Attrs: nobuiltin noinline
define private void @__do_global_dtors_aux() #7 {
  %1 = call ptr @__mcsema_init_reg_state()
  %2 = call ptr @sub_401120___do_global_dtors_aux(ptr %1, i64 4198688, ptr null)
  ret void
}

; Function Attrs: nobuiltin noinline
define private void @.init_proc() #7 {
  %1 = call ptr @__mcsema_init_reg_state()
  %2 = call ptr @sub_401000__init_proc(ptr %1, i64 4198400, ptr null)
  ret void
}

; Function Attrs: nobuiltin noinline
define private void @.term_proc() #7 {
  %1 = call ptr @__mcsema_init_reg_state()
  %2 = call ptr @sub_401588__term_proc(ptr %1, i64 4199816, ptr null)
  ret void
}

; Function Attrs: noreturn
declare void @abort() #8

; Function Attrs: noinline
define internal ptr @sub_401000__init_proc(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %STATE.i = alloca ptr, align 8
  %MEMORY.i = alloca ptr, align 8
  %NEXT_PC.i = alloca i64, align 8
  %ESBASE.i = alloca i64, align 8
  %DSBASE.i = alloca i64, align 8
  %CSBASE.i = alloca i64, align 8
  %SSBASE.i = alloca i64, align 8
  %1 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 11, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 7, i32 0, i32 0
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @.init_proc to i64), ptr %NEXT_PC, align 8
  store ptr @.init_proc, ptr @RIP_2472_1e676b0, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_401000

inst_401000:                                      ; preds = %0
  %3 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %3, ptr @RIP_2472_1e56970, align 8
  %4 = add i64 %3, 4
  store volatile i64 %4, ptr %NEXT_PC, align 8
  %5 = load i32, ptr @RDX_2264_1e56958, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, ptr @RDI_2296_1e56958, align 4
  %8 = zext i32 %7 to i64
  %9 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %9, ptr %MEMORY, align 8
  br label %inst_401004

inst_401014:                                      ; preds = %102
  %10 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %10, ptr @RIP_2472_1e56970, align 8
  %11 = add i64 %10, 2
  store volatile i64 %11, ptr %NEXT_PC, align 8
  %12 = load i64, ptr @RAX_2216_1e56970, align 8
  %13 = load i64, ptr %NEXT_PC, align 8
  %14 = load ptr, ptr %MEMORY, align 8
  %15 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i = add i64 %15, -8
  %16 = inttoptr i64 %sub.i.i to ptr
  %17 = inttoptr i64 %sub.i.i to ptr
  %18 = ptrtoint ptr %17 to i64
  store i64 %13, ptr %16, align 8
  store i64 %sub.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %12, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %12, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %13, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %14, ptr %MEMORY, align 8
  %19 = load ptr, ptr %MEMORY, align 8
  %20 = load i64, ptr %NEXT_PC, align 8
  %21 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %21)
  %22 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %22)
  %23 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %23)
  %24 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %24)
  %25 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %25)
  %26 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %26)
  %27 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %27)
  store ptr @__mcsema_reg_state, ptr %STATE.i, align 8, !noalias !1295
  store ptr %19, ptr %MEMORY.i, align 8, !noalias !1295
  store volatile i64 %20, ptr %NEXT_PC.i, align 8, !noalias !1295
  store volatile i64 0, ptr %ESBASE.i, align 8, !noalias !1295
  store volatile i64 0, ptr %DSBASE.i, align 8, !noalias !1295
  store volatile i64 0, ptr %CSBASE.i, align 8, !noalias !1295
  store volatile i64 0, ptr %SSBASE.i, align 8, !noalias !1295
  %28 = inttoptr i64 %20 to ptr
  %29 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1299, !noalias !1300
  %30 = add i64 %29, 8
  %31 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %32 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %33 = ptrtoint ptr %32 to i64
  %34 = load i64, ptr %31, align 8
  %param0.i = load i64, ptr @RDI_2296_1e56970, align 8, !alias.scope !1299, !noalias !1300
  %param1.i = load i64, ptr @RSI_2280_1e56970, align 8, !alias.scope !1299, !noalias !1300
  %param2.i = load i64, ptr @RDX_2264_1e56970, align 8, !alias.scope !1299, !noalias !1300
  %param3.i = load i64, ptr @RCX_2248_1e56970, align 8, !alias.scope !1299, !noalias !1300
  %param4.i = load i64, ptr @R8_2344_1e56970, align 8, !alias.scope !1299, !noalias !1300
  %param5.i = load i64, ptr @R9_2360_1e56970, align 8, !alias.scope !1299, !noalias !1300
  %35 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1299, !noalias !1300
  %36 = add i64 %35, 8
  %37 = inttoptr i64 %36 to ptr
  %38 = inttoptr i64 %36 to ptr
  %39 = ptrtoint ptr %38 to i64
  %40 = load i64, ptr %37, align 8
  %41 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1299, !noalias !1300
  %42 = add i64 %41, 16
  %43 = inttoptr i64 %42 to ptr
  %44 = inttoptr i64 %42 to ptr
  %45 = ptrtoint ptr %44 to i64
  %46 = load i64, ptr %43, align 8
  %47 = call i64 %28(i64 %param0.i, i64 %param1.i, i64 %param2.i, i64 %param3.i, i64 %param4.i, i64 %param5.i, i64 %40, i64 %46) #15
  store volatile i64 %47, ptr @RAX_2216_1e56970, align 8, !alias.scope !1299, !noalias !1300
  store i64 %34, ptr %NEXT_PC.i, align 8, !noalias !1295
  store volatile i64 %30, ptr @RSP_2312_1e56970, align 8, !alias.scope !1299, !noalias !1300
  %48 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %48)
  %49 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %49)
  %50 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %50)
  %51 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %51)
  %52 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %52)
  %53 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %53)
  %54 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %54)
  store ptr %19, ptr %MEMORY, align 8
  store ptr @data_401016, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401016 to i64), ptr %NEXT_PC, align 8
  br label %inst_401016

inst_401016:                                      ; preds = %101, %inst_401014
  %55 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %55, ptr @RIP_2472_1e56970, align 8
  %56 = add i64 %55, 4
  store volatile i64 %56, ptr %NEXT_PC, align 8
  %57 = load i64, ptr @RSP_2312_1e56970, align 8
  %58 = load ptr, ptr %MEMORY, align 8
  %add.i.i3 = add i64 8, %57
  store i64 %add.i.i3, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i = icmp ult i64 %add.i.i3, %57
  %cmp1.i.i.i = icmp ult i64 %add.i.i3, 8
  %59 = or i1 %cmp.i.i.i, %cmp1.i.i.i
  %conv.i.i = zext i1 %59 to i8
  store i8 %conv.i.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i = trunc i64 %add.i.i3 to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i) #15, !range !1315
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i = xor i64 8, %57
  %xor1.i.i.i.i = xor i64 %xor.i25.i.i.i, %add.i.i3
  %and.i.i.i.i = lshr i64 %xor1.i.i.i.i, 4
  %64 = trunc i64 %and.i.i.i.i to i8
  %65 = and i8 %64, 1
  store i8 %65, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i = icmp eq i64 %add.i.i3, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  store i8 %conv5.i.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i = lshr i64 %add.i.i3, 63
  %66 = trunc i64 %res.lobit.i.i.i to i8
  store i8 %66, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i = lshr i64 %57, 63
  %xor.i.i.i.i = xor i64 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor.i.i.i.i, %res.lobit.i.i.i
  %cmp.i.i.i.i = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  store i8 %conv11.i.i.i, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %58, ptr %MEMORY, align 8
  br label %inst_40101a

inst_401004:                                      ; preds = %inst_401000
  %67 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %67, ptr @RIP_2472_1e56970, align 8
  %68 = add i64 %67, 4
  store volatile i64 %68, ptr %NEXT_PC, align 8
  %69 = load i64, ptr @RSP_2312_1e56970, align 8
  %70 = load ptr, ptr %MEMORY, align 8
  %sub.i.i4 = sub i64 %69, 8
  store i64 %sub.i.i4, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i5 = icmp ult i64 %69, 8
  %conv.i.i6 = zext i1 %cmp.i.i.i5 to i8
  store i8 %conv.i.i6, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i8 = trunc i64 %sub.i.i4 to i32
  %conv.i.i.i.i.i9 = and i32 %conv.i.i.i.i8, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i9) #15, !range !1315
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i11 = xor i64 8, %69
  %xor1.i.i.i.i12 = xor i64 %xor.i25.i.i.i11, %sub.i.i4
  %and.i.i.i.i13 = lshr i64 %xor1.i.i.i.i12, 4
  %75 = trunc i64 %and.i.i.i.i13 to i8
  %76 = and i8 %75, 1
  store i8 %76, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i15 = icmp eq i64 %sub.i.i4, 0
  %conv5.i.i.i16 = zext i1 %cmp.i24.i.i.i15 to i8
  store i8 %conv5.i.i.i16, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i18 = lshr i64 %sub.i.i4, 63
  %77 = trunc i64 %res.lobit.i.i.i18 to i8
  store i8 %77, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i20 = lshr i64 %69, 63
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i18, %shr.i.i.i.i20
  %add.i.i.i.i21 = add nuw nsw i64 %xor3.i.i.i.i, %shr.i.i.i.i20
  %cmp.i.i.i.i22 = icmp eq i64 %add.i.i.i.i21, 2
  %conv11.i.i.i23 = zext i1 %cmp.i.i.i.i22 to i8
  store i8 %conv11.i.i.i23, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %70, ptr %MEMORY, align 8
  br label %inst_401008

inst_401008:                                      ; preds = %inst_401004
  %78 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %78, ptr @RIP_2472_1e56970, align 8
  %79 = add i64 %78, 7
  store volatile i64 %79, ptr %NEXT_PC, align 8
  %80 = load ptr, ptr %MEMORY, align 8
  %81 = load i64, ptr @data_403ff8, align 8
  store i64 %81, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %80, ptr %MEMORY, align 8
  br label %inst_40100f

inst_40100f:                                      ; preds = %inst_401008
  %82 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %82, ptr @RIP_2472_1e56970, align 8
  %83 = add i64 %82, 3
  store volatile i64 %83, ptr %NEXT_PC, align 8
  %84 = load i64, ptr @RAX_2216_1e56970, align 8
  %85 = load i64, ptr @RAX_2216_1e56970, align 8
  %86 = load ptr, ptr %MEMORY, align 8
  %and.i.i = and i64 %85, %84
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i = trunc i64 %and.i.i to i32
  %conv.i.i.i.i27 = and i32 %conv.i.i.i, 255
  %87 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i27) #15, !range !1315
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i = icmp eq i64 %and.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  store i8 %conv3.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i = lshr i64 %and.i.i, 63
  %91 = trunc i64 %res.lobit.i.i to i8
  store i8 %91, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %86, ptr %MEMORY, align 8
  br label %inst_401012

inst_401012:                                      ; preds = %inst_40100f
  %92 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %92, ptr @RIP_2472_1e56970, align 8
  %93 = add i64 %92, 2
  store volatile i64 %93, ptr %NEXT_PC, align 8
  %94 = load i64, ptr %NEXT_PC, align 8
  %95 = add i64 %94, 2
  %96 = load i64, ptr %NEXT_PC, align 8
  %97 = load ptr, ptr %MEMORY, align 8
  %98 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  store i8 %98, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %tobool.not.i = icmp eq i8 %98, 0
  %cond1.i.i = select i1 %tobool.not.i, i64 %96, i64 %95
  store i64 %cond1.i.i, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %97, ptr %MEMORY, align 8
  %99 = load i8, ptr %BRANCH_TAKEN, align 1
  %100 = icmp eq i8 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %inst_401012
  br label %inst_401016

102:                                              ; preds = %inst_401012
  br label %inst_401014

inst_40101a:                                      ; preds = %inst_401016
  %103 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %103, ptr @RIP_2472_1e56970, align 8
  %104 = add i64 %103, 1
  store volatile i64 %104, ptr %NEXT_PC, align 8
  %105 = load ptr, ptr %MEMORY, align 8
  %106 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %107 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %108 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %109 = ptrtoint ptr %107 to i64
  %110 = load i64, ptr %106, align 8
  store i64 %110, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %110, ptr %NEXT_PC, align 8, !tbaa !1293
  %111 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i = add i64 %111, 8
  store i64 %add.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %105, ptr %MEMORY, align 8
  %112 = load ptr, ptr %MEMORY, align 8
  ret ptr %112
}

; Function Attrs: noinline
define internal ptr @sub_4010b0_deregister_tm_clones(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %STATE.i = alloca ptr, align 8
  %MEMORY.i = alloca ptr, align 8
  %NEXT_PC.i = alloca i64, align 8
  %ESBASE.i = alloca i64, align 8
  %DSBASE.i = alloca i64, align 8
  %CSBASE.i = alloca i64, align 8
  %SSBASE.i = alloca i64, align 8
  %RDI = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 11, i32 0, i32 0, !remill_register !1321
  %RAX = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 1, i32 0, i32 0, !remill_register !1322
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @deregister_tm_clones to i64), ptr %NEXT_PC, align 8
  store ptr @deregister_tm_clones, ptr @RIP_2472_2cc54c0, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_4010b0

inst_4010c7:                                      ; preds = %73
  %1 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1, ptr @RIP_2472_1e56970, align 8
  %2 = add i64 %1, 5
  store volatile i64 %2, ptr %NEXT_PC, align 8
  %3 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4040a0, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %3, ptr %MEMORY, align 8
  br label %inst_4010cc

inst_4010ce:                                      ; preds = %121, %79
  %4 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %4, ptr @RIP_2472_1e56970, align 8
  %5 = add i64 %4, 2
  store volatile i64 %5, ptr %NEXT_PC, align 8
  %6 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %6, ptr %MEMORY, align 8
  br label %inst_4010d0

inst_4010b0:                                      ; preds = %0
  %7 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %7, ptr @RIP_2472_1e56970, align 8
  %8 = add i64 %7, 5
  store volatile i64 %8, ptr %NEXT_PC, align 8
  %9 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4040a0, ptr @RAX_2216_1e61d30, align 8
  store volatile ptr %9, ptr %MEMORY, align 8
  br label %inst_4010b5

inst_4010d0:                                      ; preds = %72, %51, %inst_4010ce
  %10 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %10, ptr @RIP_2472_1e56970, align 8
  %11 = add i64 %10, 1
  store volatile i64 %11, ptr %NEXT_PC, align 8
  %12 = load ptr, ptr %MEMORY, align 8
  %13 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %14 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %15 = ptrtoint ptr %14 to i64
  %16 = load i64, ptr %13, align 8
  store i64 %16, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %16, ptr %NEXT_PC, align 8, !tbaa !1293
  %17 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i = add i64 %17, 8
  store i64 %add.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %12, ptr %MEMORY, align 8
  %18 = load ptr, ptr %MEMORY, align 8
  ret ptr %18

inst_4010d1:                                      ; preds = %121, %79
  %19 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %19, ptr @RIP_2472_1e56970, align 8
  %20 = add i64 %19, 11
  store volatile i64 %20, ptr %NEXT_PC, align 8
  %21 = load i64, ptr @RAX_2216_1e56970, align 8
  %22 = load i64, ptr @RAX_2216_1e56970, align 8
  %23 = mul i64 %22, 1
  %24 = add i64 %21, %23
  %25 = load i16, ptr @RAX_2216_1e56940, align 2
  %26 = zext i16 %25 to i64
  %27 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %27, ptr %MEMORY, align 8
  br label %inst_4010dc

inst_4010bd:                                      ; preds = %52
  %28 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %28, ptr @RIP_2472_1e56970, align 8
  %29 = add i64 %28, 5
  store volatile i64 %29, ptr %NEXT_PC, align 8
  %30 = load ptr, ptr %MEMORY, align 8
  store i64 0, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %30, ptr %MEMORY, align 8
  br label %inst_4010c2

inst_4010b5:                                      ; preds = %inst_4010b0
  %31 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %31, ptr @RIP_2472_1e56970, align 8
  %32 = add i64 %31, 6
  store volatile i64 %32, ptr %NEXT_PC, align 8
  %33 = load i64, ptr @RAX_2216_1e56970, align 8
  %34 = load ptr, ptr %MEMORY, align 8
  %sub.i.i = sub i64 %33, ptrtoint (ptr @data_4040a0 to i64)
  %cmp.i.i.i = icmp ult i64 %33, ptrtoint (ptr @data_4040a0 to i64)
  %conv.i.i = zext i1 %cmp.i.i.i to i8
  store i8 %conv.i.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i6 = trunc i64 %sub.i.i to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i6, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i) #15, !range !1315
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  store i8 %38, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i = xor i64 ptrtoint (ptr @data_4040a0 to i64), %33
  %xor1.i.i.i.i = xor i64 %xor.i25.i.i.i, %sub.i.i
  %and.i.i.i.i = lshr i64 %xor1.i.i.i.i, 4
  %39 = trunc i64 %and.i.i.i.i to i8
  %40 = and i8 %39, 1
  store i8 %40, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i = icmp eq i64 %sub.i.i, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  store i8 %conv5.i.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i = lshr i64 %sub.i.i, 63
  %41 = trunc i64 %res.lobit.i.i.i to i8
  store i8 %41, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i = lshr i64 %33, 63
  %xor.i.i.i.i = xor i64 0, %shr.i.i.i.i
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor3.i.i.i.i, %xor.i.i.i.i
  %cmp.i.i.i.i = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  store i8 %conv11.i.i.i, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %34, ptr %MEMORY, align 8
  br label %inst_4010bb

inst_4010bb:                                      ; preds = %inst_4010b5
  %42 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %42, ptr @RIP_2472_1e56970, align 8
  %43 = add i64 %42, 2
  store volatile i64 %43, ptr %NEXT_PC, align 8
  %44 = load i64, ptr %NEXT_PC, align 8
  %45 = add i64 %44, 19
  %46 = load i64, ptr %NEXT_PC, align 8
  %47 = load ptr, ptr %MEMORY, align 8
  %48 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  store i8 %48, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %tobool.not.i3 = icmp eq i8 %48, 0
  %cond1.i.i4 = select i1 %tobool.not.i3, i64 %46, i64 %45
  store i64 %cond1.i.i4, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %47, ptr %MEMORY, align 8
  %49 = load i8, ptr %BRANCH_TAKEN, align 1
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %inst_4010bb
  br label %inst_4010d0

52:                                               ; preds = %inst_4010bb
  br label %inst_4010bd

inst_4010c2:                                      ; preds = %inst_4010bd
  %53 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %53, ptr @RIP_2472_1e56970, align 8
  %54 = add i64 %53, 3
  store volatile i64 %54, ptr %NEXT_PC, align 8
  %55 = load i64, ptr @RAX_2216_1e56970, align 8
  %56 = load i64, ptr @RAX_2216_1e56970, align 8
  %57 = load ptr, ptr %MEMORY, align 8
  %and.i.i = and i64 %56, %55
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i = trunc i64 %and.i.i to i32
  %conv.i.i.i.i = and i32 %conv.i.i.i, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i) #15, !range !1315
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i = icmp eq i64 %and.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  store i8 %conv3.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i = lshr i64 %and.i.i, 63
  %62 = trunc i64 %res.lobit.i.i to i8
  store i8 %62, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %57, ptr %MEMORY, align 8
  br label %inst_4010c5

inst_4010c5:                                      ; preds = %inst_4010c2
  %63 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %63, ptr @RIP_2472_1e56970, align 8
  %64 = add i64 %63, 2
  store volatile i64 %64, ptr %NEXT_PC, align 8
  %65 = load i64, ptr %NEXT_PC, align 8
  %66 = add i64 %65, 9
  %67 = load i64, ptr %NEXT_PC, align 8
  %68 = load ptr, ptr %MEMORY, align 8
  %69 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  store i8 %69, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %tobool.not.i = icmp eq i8 %69, 0
  %cond1.i.i = select i1 %tobool.not.i, i64 %67, i64 %66
  store i64 %cond1.i.i, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %68, ptr %MEMORY, align 8
  %70 = load i8, ptr %BRANCH_TAKEN, align 1
  %71 = icmp eq i8 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %inst_4010c5
  br label %inst_4010d0

73:                                               ; preds = %inst_4010c5
  br label %inst_4010c7

inst_4010cc:                                      ; preds = %inst_4010c7
  %74 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %74, ptr @RIP_2472_1e56970, align 8
  %75 = add i64 %74, 2
  store volatile i64 %75, ptr %NEXT_PC, align 8
  %76 = load i64, ptr @RAX_2216_1e56970, align 8
  %77 = load ptr, ptr %MEMORY, align 8
  store i64 %76, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %76, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %77, ptr %MEMORY, align 8
  %78 = load i64, ptr @RIP_2472_1e56970, align 8
  br label %121

79:                                               ; preds = %121
  %80 = sub i64 ptrtoint (ptr @data_4010d1 to i64), %78
  %81 = trunc i64 %80 to i32
  %82 = zext i32 %81 to i64
  switch i64 %82, label %83 [
    i64 0, label %inst_4010d1
    i64 3, label %inst_4010ce
  ]

83:                                               ; preds = %79
  %84 = load ptr, ptr %MEMORY, align 8
  %85 = load i64, ptr %NEXT_PC, align 8
  %86 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %86)
  %87 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %87)
  %88 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %88)
  %89 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %89)
  %90 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %90)
  %91 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %91)
  %92 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %92)
  store ptr @__mcsema_reg_state, ptr %STATE.i, align 8, !noalias !1323
  store ptr %84, ptr %MEMORY.i, align 8, !noalias !1323
  store volatile i64 %85, ptr %NEXT_PC.i, align 8, !noalias !1323
  store volatile i64 0, ptr %ESBASE.i, align 8, !noalias !1323
  store volatile i64 0, ptr %DSBASE.i, align 8, !noalias !1323
  store volatile i64 0, ptr %CSBASE.i, align 8, !noalias !1323
  store volatile i64 0, ptr %SSBASE.i, align 8, !noalias !1323
  %93 = inttoptr i64 %85 to ptr
  %94 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %95 = add i64 %94, 8
  %96 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %97 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %98 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %99 = ptrtoint ptr %97 to i64
  %100 = load i64, ptr %96, align 8
  %param0.i = load i64, ptr @RDI_2296_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %param1.i = load i64, ptr @RSI_2280_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %param2.i = load i64, ptr @RDX_2264_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %param3.i = load i64, ptr @RCX_2248_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %param4.i = load i64, ptr @R8_2344_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %param5.i = load i64, ptr @R9_2360_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %101 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %102 = add i64 %101, 8
  %103 = inttoptr i64 %102 to ptr
  %104 = inttoptr i64 %102 to ptr
  %105 = ptrtoint ptr %104 to i64
  %106 = load i64, ptr %103, align 8
  %107 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %108 = add i64 %107, 16
  %109 = inttoptr i64 %108 to ptr
  %110 = inttoptr i64 %108 to ptr
  %111 = ptrtoint ptr %110 to i64
  %112 = load i64, ptr %109, align 8
  %113 = call i64 %93(i64 %param0.i, i64 %param1.i, i64 %param2.i, i64 %param3.i, i64 %param4.i, i64 %param5.i, i64 %106, i64 %112) #15
  store volatile i64 %113, ptr @RAX_2216_1e56970, align 8, !alias.scope !1327, !noalias !1328
  store i64 %100, ptr %NEXT_PC.i, align 8, !noalias !1323
  store volatile i64 %95, ptr @RSP_2312_1e56970, align 8, !alias.scope !1327, !noalias !1328
  %114 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %114)
  %115 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %115)
  %116 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %116)
  %117 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %117)
  %118 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %118)
  %119 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %119)
  %120 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %120)
  store ptr %84, ptr %MEMORY, align 8
  ret ptr %84

121:                                              ; preds = %inst_4010cc
  switch i64 %78, label %79 [
    i64 4198609, label %inst_4010d1
    i64 4198606, label %inst_4010ce
  ]

inst_4010dc:                                      ; preds = %inst_4010d1
  %122 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %122, ptr @RIP_2472_1e56970, align 8
  %123 = add i64 %122, 4
  store volatile i64 %123, ptr %NEXT_PC, align 8
  %124 = load i32, ptr @RAX_2216_1e56958, align 4
  %125 = zext i32 %124 to i64
  %126 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %126, ptr %MEMORY, align 8
  %127 = load ptr, ptr %MEMORY, align 8
  ret ptr %127
}

; Function Attrs: noinline
define internal ptr @sub_401160_draw(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %RDI = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 11, i32 0, i32 0, !remill_register !1321
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @draw to i64), ptr %NEXT_PC, align 8
  store ptr @draw, ptr @RIP_2472_2cc54c0, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_401160

inst_401160:                                      ; preds = %0
  %1 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1, ptr @RIP_2472_1e56970, align 8
  %2 = add i64 %1, 1
  store volatile i64 %2, ptr %NEXT_PC, align 8
  %3 = load i64, ptr @RBP_2328_1e56970, align 8
  %4 = load ptr, ptr %MEMORY, align 8
  %5 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i.i = add i64 %5, -8
  %6 = inttoptr i64 %sub.i.i.i to ptr
  %7 = inttoptr i64 %sub.i.i.i to ptr
  %8 = ptrtoint ptr %7 to i64
  store i64 %3, ptr %6, align 8
  store i64 %sub.i.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %4, ptr %MEMORY, align 8
  br label %inst_401161

inst_401180:                                      ; preds = %inst_4011c4, %inst_401179
  %9 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %9, ptr @RIP_2472_1e56970, align 8
  %10 = add i64 %9, 4
  store volatile i64 %10, ptr %NEXT_PC, align 8
  %11 = load i64, ptr @RBP_2328_1e56970, align 8
  %12 = sub i64 %11, 8
  %13 = load ptr, ptr %MEMORY, align 8
  %14 = inttoptr i64 %12 to ptr
  %15 = inttoptr i64 %12 to ptr
  %16 = ptrtoint ptr %15 to i64
  %17 = load i32, ptr %14, align 4
  %sub.i.i = sub i32 %17, 11
  %cmp.i.i.i = icmp ult i32 %17, 11
  %conv.i12.i = zext i1 %cmp.i.i.i to i8
  store i8 %conv.i12.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i = and i32 %sub.i.i, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i) #15, !range !1315
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i = xor i32 %17, 11
  %xor1.i.i.i.i = xor i32 %xor.i25.i.i.i, %sub.i.i
  %and.i.i.i.i = lshr i32 %xor1.i.i.i.i, 4
  %22 = trunc i32 %and.i.i.i.i to i8
  %23 = and i8 %22, 1
  store i8 %23, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i = icmp eq i32 %sub.i.i, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  store i8 %conv5.i.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i = lshr i32 %sub.i.i, 31
  %24 = trunc i32 %res.lobit.i.i.i to i8
  store i8 %24, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i = lshr i32 %17, 31
  %xor3.i.i.i.i = xor i32 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i32 %xor3.i.i.i.i, %shr.i.i.i.i
  %cmp.i.i.i.i = icmp eq i32 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  store i8 %conv11.i.i.i, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %13, ptr %MEMORY, align 8
  br label %inst_401184

inst_4011e8:                                      ; preds = %101
  %25 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %25, ptr @RIP_2472_1e56970, align 8
  %26 = add i64 %25, 10
  store volatile i64 %26, ptr %NEXT_PC, align 8
  %27 = load ptr, ptr %MEMORY, align 8
  store ptr @data_402162, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %27, ptr %MEMORY, align 8
  br label %inst_4011f2

inst_4011c9:                                      ; preds = %113
  %28 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %28, ptr @RIP_2472_1e56970, align 8
  %29 = add i64 %28, 10
  store volatile i64 %29, ptr %NEXT_PC, align 8
  %30 = load ptr, ptr %MEMORY, align 8
  store ptr @data_402162, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %30, ptr %MEMORY, align 8
  br label %inst_4011d3

inst_40118a:                                      ; preds = %114
  %31 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %31, ptr @RIP_2472_1e56970, align 8
  %32 = add i64 %31, 4
  store volatile i64 %32, ptr %NEXT_PC, align 8
  %33 = load i64, ptr @RBP_2328_1e56970, align 8
  %34 = sub i64 %33, 4
  %35 = load ptr, ptr %MEMORY, align 8
  %36 = inttoptr i64 %34 to ptr
  %37 = inttoptr i64 %34 to ptr
  %38 = ptrtoint ptr %37 to i64
  %39 = load i32, ptr %36, align 4
  %conv.i.i = sext i32 %39 to i64
  store i64 %conv.i.i, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %35, ptr %MEMORY, align 8
  br label %inst_40118e

inst_40116f:                                      ; preds = %inst_4011e3, %inst_401168
  %40 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %40, ptr @RIP_2472_1e56970, align 8
  %41 = add i64 %40, 4
  store volatile i64 %41, ptr %NEXT_PC, align 8
  %42 = load i64, ptr @RBP_2328_1e56970, align 8
  %43 = sub i64 %42, 4
  %44 = load ptr, ptr %MEMORY, align 8
  %45 = inttoptr i64 %43 to ptr
  %46 = inttoptr i64 %43 to ptr
  %47 = ptrtoint ptr %46 to i64
  %48 = load i32, ptr %45, align 4
  %sub.i.i7 = sub i32 %48, 7
  %cmp.i.i.i8 = icmp ult i32 %48, 7
  %conv.i12.i9 = zext i1 %cmp.i.i.i8 to i8
  store i8 %conv.i12.i9, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i11 = and i32 %sub.i.i7, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i11) #15, !range !1315
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  store i8 %52, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i13 = xor i32 %48, 7
  %xor1.i.i.i.i14 = xor i32 %xor.i25.i.i.i13, %sub.i.i7
  %and.i.i.i.i15 = lshr i32 %xor1.i.i.i.i14, 4
  %53 = trunc i32 %and.i.i.i.i15 to i8
  %54 = and i8 %53, 1
  store i8 %54, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i17 = icmp eq i32 %sub.i.i7, 0
  %conv5.i.i.i18 = zext i1 %cmp.i24.i.i.i17 to i8
  store i8 %conv5.i.i.i18, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i20 = lshr i32 %sub.i.i7, 31
  %55 = trunc i32 %res.lobit.i.i.i20 to i8
  store i8 %55, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i22 = lshr i32 %48, 31
  %xor3.i.i.i.i23 = xor i32 %res.lobit.i.i.i20, %shr.i.i.i.i22
  %add.i.i.i.i24 = add nuw nsw i32 %xor3.i.i.i.i23, %shr.i.i.i.i22
  %cmp.i.i.i.i25 = icmp eq i32 %add.i.i.i.i24, 2
  %conv11.i.i.i26 = zext i1 %cmp.i.i.i.i25 to i8
  store i8 %conv11.i.i.i26, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %44, ptr %MEMORY, align 8
  br label %inst_401173

inst_401179:                                      ; preds = %102
  %56 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %56, ptr @RIP_2472_1e56970, align 8
  %57 = add i64 %56, 7
  store volatile i64 %57, ptr %NEXT_PC, align 8
  %58 = load i64, ptr @RBP_2328_1e56970, align 8
  %59 = sub i64 %58, 8
  %60 = load ptr, ptr %MEMORY, align 8
  %61 = inttoptr i64 %59 to ptr
  %62 = inttoptr i64 %59 to ptr
  %63 = ptrtoint ptr %62 to i64
  store i32 0, ptr %61, align 4
  store volatile ptr %60, ptr %MEMORY, align 8
  br label %inst_401180

inst_4011ff:                                      ; No predecessors!
  %64 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %64, ptr @RIP_2472_1e56970, align 8
  %65 = add i64 %64, 1
  store volatile i64 %65, ptr %NEXT_PC, align 8
  %66 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %66, ptr %MEMORY, align 8
  %67 = load ptr, ptr %MEMORY, align 8
  ret ptr %67

inst_401161:                                      ; preds = %inst_401160
  %68 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %68, ptr @RIP_2472_1e56970, align 8
  %69 = add i64 %68, 3
  store volatile i64 %69, ptr %NEXT_PC, align 8
  %70 = load i64, ptr @RSP_2312_1e56970, align 8
  %71 = load ptr, ptr %MEMORY, align 8
  store i64 %70, ptr @RBP_2328_1e56970, align 8, !tbaa !1293
  store volatile ptr %71, ptr %MEMORY, align 8
  br label %inst_401164

inst_401164:                                      ; preds = %inst_401161
  %72 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %72, ptr @RIP_2472_1e56970, align 8
  %73 = add i64 %72, 4
  store volatile i64 %73, ptr %NEXT_PC, align 8
  %74 = load i64, ptr @RSP_2312_1e56970, align 8
  %75 = load ptr, ptr %MEMORY, align 8
  %sub.i.i52 = sub i64 %74, 16
  store i64 %sub.i.i52, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i53 = icmp ult i64 %74, 16
  %conv.i.i54 = zext i1 %cmp.i.i.i53 to i8
  store i8 %conv.i.i54, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i56 = trunc i64 %sub.i.i52 to i32
  %conv.i.i.i.i.i57 = and i32 %conv.i.i.i.i56, 255
  %76 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i57) #15, !range !1315
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i59 = xor i64 16, %74
  %xor1.i.i.i.i60 = xor i64 %xor.i25.i.i.i59, %sub.i.i52
  %and.i.i.i.i61 = lshr i64 %xor1.i.i.i.i60, 4
  %80 = trunc i64 %and.i.i.i.i61 to i8
  %81 = and i8 %80, 1
  store i8 %81, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i63 = icmp eq i64 %sub.i.i52, 0
  %conv5.i.i.i64 = zext i1 %cmp.i24.i.i.i63 to i8
  store i8 %conv5.i.i.i64, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i66 = lshr i64 %sub.i.i52, 63
  %82 = trunc i64 %res.lobit.i.i.i66 to i8
  store i8 %82, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i68 = lshr i64 %74, 63
  %xor3.i.i.i.i69 = xor i64 %res.lobit.i.i.i66, %shr.i.i.i.i68
  %add.i.i.i.i70 = add nuw nsw i64 %xor3.i.i.i.i69, %shr.i.i.i.i68
  %cmp.i.i.i.i71 = icmp eq i64 %add.i.i.i.i70, 2
  %conv11.i.i.i72 = zext i1 %cmp.i.i.i.i71 to i8
  store i8 %conv11.i.i.i72, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %75, ptr %MEMORY, align 8
  br label %inst_401168

inst_401168:                                      ; preds = %inst_401164
  %83 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %83, ptr @RIP_2472_1e56970, align 8
  %84 = add i64 %83, 7
  store volatile i64 %84, ptr %NEXT_PC, align 8
  %85 = load i64, ptr @RBP_2328_1e56970, align 8
  %86 = sub i64 %85, 4
  %87 = load ptr, ptr %MEMORY, align 8
  %88 = inttoptr i64 %86 to ptr
  %89 = inttoptr i64 %86 to ptr
  %90 = ptrtoint ptr %89 to i64
  store i32 0, ptr %88, align 4
  store volatile ptr %87, ptr %MEMORY, align 8
  br label %inst_40116f

inst_401173:                                      ; preds = %inst_40116f
  %91 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %91, ptr @RIP_2472_1e56970, align 8
  %92 = add i64 %91, 6
  store volatile i64 %92, ptr %NEXT_PC, align 8
  %93 = load i64, ptr %NEXT_PC, align 8
  %94 = add i64 %93, 111
  %95 = load i64, ptr %NEXT_PC, align 8
  %96 = load ptr, ptr %MEMORY, align 8
  %97 = load i8, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %tobool.i = icmp eq i8 %97, 0
  %98 = load i8, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  %tobool9.i = icmp ne i8 %98, 0
  %cmp.i.i = xor i1 %tobool.i, %tobool9.i
  %frombool.i = zext i1 %cmp.i.i to i8
  store i8 %frombool.i, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i = select i1 %cmp.i.i, i64 %94, i64 %95
  store i64 %cond1.i.i, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %96, ptr %MEMORY, align 8
  %99 = load i8, ptr %BRANCH_TAKEN, align 1
  %100 = icmp eq i8 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %inst_401173
  br label %inst_4011e8

102:                                              ; preds = %inst_401173
  br label %inst_401179

inst_401184:                                      ; preds = %inst_401180
  %103 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %103, ptr @RIP_2472_1e56970, align 8
  %104 = add i64 %103, 6
  store volatile i64 %104, ptr %NEXT_PC, align 8
  %105 = load i64, ptr %NEXT_PC, align 8
  %106 = add i64 %105, 63
  %107 = load i64, ptr %NEXT_PC, align 8
  %108 = load ptr, ptr %MEMORY, align 8
  %109 = load i8, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %tobool.i101 = icmp eq i8 %109, 0
  %110 = load i8, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  %tobool9.i103 = icmp ne i8 %110, 0
  %cmp.i.i104 = xor i1 %tobool.i101, %tobool9.i103
  %frombool.i105 = zext i1 %cmp.i.i104 to i8
  store i8 %frombool.i105, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i106 = select i1 %cmp.i.i104, i64 %106, i64 %107
  store i64 %cond1.i.i106, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %108, ptr %MEMORY, align 8
  %111 = load i8, ptr %BRANCH_TAKEN, align 1
  %112 = icmp eq i8 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %inst_401184
  br label %inst_4011c9

114:                                              ; preds = %inst_401184
  br label %inst_40118a

inst_40118e:                                      ; preds = %inst_40118a
  %115 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %115, ptr @RIP_2472_1e56970, align 8
  %116 = add i64 %115, 7
  store volatile i64 %116, ptr %NEXT_PC, align 8
  %117 = load i64, ptr @RAX_2216_1e56970, align 8
  %118 = load ptr, ptr %MEMORY, align 8
  %119 = ashr i64 %117, 63
  %L.sroa.2.0.insert.ext.i.i = zext i64 %119 to i128
  %L.sroa.2.0.insert.shift.i.i = shl nuw i128 %L.sroa.2.0.insert.ext.i.i, 64
  %L.sroa.0.0.insert.ext.i.i = zext i64 %117 to i128
  %L.sroa.0.0.insert.insert.i.i = or i128 %L.sroa.2.0.insert.shift.i.i, %L.sroa.0.0.insert.ext.i.i
  %mul.i.i = mul nsw i128 11, %L.sroa.0.0.insert.insert.i.i
  %retval.sroa.0.0.extract.trunc.i.i = trunc i128 %mul.i.i to i64
  store i64 %retval.sroa.0.0.extract.trunc.i.i, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %conv4.i.i.i = sext i64 %retval.sroa.0.0.extract.trunc.i.i to i128
  %cmp.i.i.i107 = icmp ne i128 %mul.i.i, %conv4.i.i.i
  %frombool.i.i = zext i1 %cmp.i.i.i107 to i8
  store i8 %frombool.i.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i = trunc i128 %mul.i.i to i32
  %conv.i.i.i.i109 = and i32 %conv.i.i.i, 255
  %120 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i109) #15, !range !1315
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store i8 0, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res_trunc.lobit.i.i = lshr i64 %retval.sroa.0.0.extract.trunc.i.i, 63
  %124 = trunc i64 %res_trunc.lobit.i.i to i8
  store i8 %124, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 %frombool.i.i, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %118, ptr %MEMORY, align 8
  br label %inst_401195

inst_401195:                                      ; preds = %inst_40118e
  %125 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %125, ptr @RIP_2472_1e56970, align 8
  %126 = add i64 %125, 10
  store volatile i64 %126, ptr %NEXT_PC, align 8
  %127 = load ptr, ptr %MEMORY, align 8
  store ptr @data_404050, ptr @RCX_2248_1e61d30, align 8
  store volatile ptr %127, ptr %MEMORY, align 8
  br label %inst_40119f

inst_40119f:                                      ; preds = %inst_401195
  %128 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %128, ptr @RIP_2472_1e56970, align 8
  %129 = add i64 %128, 3
  store volatile i64 %129, ptr %NEXT_PC, align 8
  %130 = load i64, ptr @RCX_2248_1e56970, align 8
  %131 = load i64, ptr @RAX_2216_1e56970, align 8
  %132 = load ptr, ptr %MEMORY, align 8
  %add.i.i114 = add i64 %131, %130
  store i64 %add.i.i114, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i115 = icmp ult i64 %add.i.i114, %130
  %cmp1.i.i.i116 = icmp ult i64 %add.i.i114, %131
  %133 = or i1 %cmp.i.i.i115, %cmp1.i.i.i116
  %conv.i.i117 = zext i1 %133 to i8
  store i8 %conv.i.i117, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i119 = trunc i64 %add.i.i114 to i32
  %conv.i.i.i.i.i120 = and i32 %conv.i.i.i.i119, 255
  %134 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i120) #15, !range !1315
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i122 = xor i64 %131, %130
  %xor1.i.i.i.i123 = xor i64 %xor.i25.i.i.i122, %add.i.i114
  %and.i.i.i.i124 = lshr i64 %xor1.i.i.i.i123, 4
  %138 = trunc i64 %and.i.i.i.i124 to i8
  %139 = and i8 %138, 1
  store i8 %139, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i126 = icmp eq i64 %add.i.i114, 0
  %conv5.i.i.i127 = zext i1 %cmp.i24.i.i.i126 to i8
  store i8 %conv5.i.i.i127, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i129 = lshr i64 %add.i.i114, 63
  %140 = trunc i64 %res.lobit.i.i.i129 to i8
  store i8 %140, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i131 = lshr i64 %130, 63
  %shr1.i.i.i.i = lshr i64 %131, 63
  %xor.i.i.i.i132 = xor i64 %res.lobit.i.i.i129, %shr.i.i.i.i131
  %xor3.i.i.i.i133 = xor i64 %res.lobit.i.i.i129, %shr1.i.i.i.i
  %add.i.i.i.i134 = add nuw nsw i64 %xor.i.i.i.i132, %xor3.i.i.i.i133
  %cmp.i.i.i.i135 = icmp eq i64 %add.i.i.i.i134, 2
  %conv11.i.i.i136 = zext i1 %cmp.i.i.i.i135 to i8
  store i8 %conv11.i.i.i136, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %132, ptr %MEMORY, align 8
  br label %inst_4011a2

inst_4011a2:                                      ; preds = %inst_40119f
  %141 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %141, ptr @RIP_2472_1e56970, align 8
  %142 = add i64 %141, 4
  store volatile i64 %142, ptr %NEXT_PC, align 8
  %143 = load i64, ptr @RBP_2328_1e56970, align 8
  %144 = sub i64 %143, 8
  %145 = load ptr, ptr %MEMORY, align 8
  %146 = inttoptr i64 %144 to ptr
  %147 = inttoptr i64 %144 to ptr
  %148 = ptrtoint ptr %147 to i64
  %149 = load i32, ptr %146, align 4
  %conv.i.i141 = sext i32 %149 to i64
  store i64 %conv.i.i141, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %145, ptr %MEMORY, align 8
  br label %inst_4011a6

inst_4011a6:                                      ; preds = %inst_4011a2
  %150 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %150, ptr @RIP_2472_1e56970, align 8
  %151 = add i64 %150, 4
  store volatile i64 %151, ptr %NEXT_PC, align 8
  %152 = load i64, ptr @RCX_2248_1e56970, align 8
  %153 = load i64, ptr @RAX_2216_1e56970, align 8
  %154 = mul i64 %153, 1
  %155 = add i64 %152, %154
  %156 = load ptr, ptr %MEMORY, align 8
  %157 = inttoptr i64 %155 to ptr
  %158 = inttoptr i64 %155 to ptr
  %159 = ptrtoint ptr %158 to i64
  %160 = load i8, ptr %157, align 1
  %conv.i.i143 = sext i8 %160 to i64
  %conv.i10.i = and i64 %conv.i.i143, 4294967295
  store i64 %conv.i10.i, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  store volatile ptr %156, ptr %MEMORY, align 8
  br label %inst_4011aa

inst_4011aa:                                      ; preds = %inst_4011a6
  %161 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %161, ptr @RIP_2472_1e56970, align 8
  %162 = add i64 %161, 10
  store volatile i64 %162, ptr %NEXT_PC, align 8
  %163 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4020c0, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %163, ptr %MEMORY, align 8
  br label %inst_4011b4

inst_4011b4:                                      ; preds = %inst_4011aa
  %164 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %164, ptr @RIP_2472_1e56970, align 8
  %165 = add i64 %164, 2
  store volatile i64 %165, ptr %NEXT_PC, align 8
  %166 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %166, ptr %MEMORY, align 8
  br label %inst_4011b6

inst_4011b6:                                      ; preds = %inst_4011b4
  %167 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %167, ptr @RIP_2472_1e56970, align 8
  %168 = add i64 %167, 5
  store volatile i64 %168, ptr %NEXT_PC, align 8
  %169 = load i64, ptr %NEXT_PC, align 8
  %170 = sub i64 %169, 395
  %171 = load i64, ptr %NEXT_PC, align 8
  %172 = load ptr, ptr %MEMORY, align 8
  %173 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i171 = add i64 %173, -8
  %174 = inttoptr i64 %sub.i.i171 to ptr
  %175 = inttoptr i64 %sub.i.i171 to ptr
  %176 = ptrtoint ptr %175 to i64
  store i64 %171, ptr %174, align 8
  store i64 %sub.i.i171, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %170, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %170, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %171, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %172, ptr %MEMORY, align 8
  %177 = load ptr, ptr %MEMORY, align 8
  %178 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %177)
  store ptr %178, ptr %MEMORY, align 8
  store ptr @data_4011bb, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4011bb to i64), ptr %NEXT_PC, align 8
  br label %inst_4011bb

inst_4011bb:                                      ; preds = %inst_4011b6
  %179 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %179, ptr @RIP_2472_1e56970, align 8
  %180 = add i64 %179, 3
  store volatile i64 %180, ptr %NEXT_PC, align 8
  %181 = load i64, ptr @RBP_2328_1e56970, align 8
  %182 = sub i64 %181, 8
  %183 = load ptr, ptr %MEMORY, align 8
  %184 = inttoptr i64 %182 to ptr
  %185 = inttoptr i64 %182 to ptr
  %186 = ptrtoint ptr %185 to i64
  %187 = load i32, ptr %184, align 4
  %conv.i.i169 = zext i32 %187 to i64
  store i64 %conv.i.i169, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %183, ptr %MEMORY, align 8
  br label %inst_4011be

inst_4011be:                                      ; preds = %inst_4011bb
  %188 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %188, ptr @RIP_2472_1e56970, align 8
  %189 = add i64 %188, 3
  store volatile i64 %189, ptr %NEXT_PC, align 8
  %190 = load i32, ptr @RAX_2216_1e56958, align 4
  %191 = zext i32 %190 to i64
  %192 = load ptr, ptr %MEMORY, align 8
  %add.i.i144 = add i32 1, %190
  %conv.i25.i145 = zext i32 %add.i.i144 to i64
  store i64 %conv.i25.i145, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i146 = icmp ult i32 %add.i.i144, %190
  %cmp1.i.i.i147 = icmp ult i32 %add.i.i144, 1
  %193 = or i1 %cmp.i.i.i146, %cmp1.i.i.i147
  %conv.i24.i148 = zext i1 %193 to i8
  store i8 %conv.i24.i148, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i150 = and i32 %add.i.i144, 255
  %194 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i150) #15, !range !1315
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i27.i152 = xor i64 1, %191
  %xor.i25.i.i.i153 = trunc i64 %xor.i25.i.i27.i152 to i32
  %xor1.i.i.i.i154 = xor i32 %add.i.i144, %xor.i25.i.i.i153
  %and.i.i.i.i155 = lshr i32 %xor1.i.i.i.i154, 4
  %198 = trunc i32 %and.i.i.i.i155 to i8
  %199 = and i8 %198, 1
  store i8 %199, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i157 = icmp eq i32 %add.i.i144, 0
  %conv5.i.i.i158 = zext i1 %cmp.i24.i.i.i157 to i8
  store i8 %conv5.i.i.i158, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i160 = lshr i32 %add.i.i144, 31
  %200 = trunc i32 %res.lobit.i.i.i160 to i8
  store i8 %200, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i162 = lshr i32 %190, 31
  %xor.i.i.i.i163 = xor i32 %res.lobit.i.i.i160, %shr.i.i.i.i162
  %add.i.i.i.i164 = add nuw nsw i32 %xor.i.i.i.i163, %res.lobit.i.i.i160
  %cmp.i.i.i.i165 = icmp eq i32 %add.i.i.i.i164, 2
  %conv11.i.i.i166 = zext i1 %cmp.i.i.i.i165 to i8
  store i8 %conv11.i.i.i166, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %192, ptr %MEMORY, align 8
  br label %inst_4011c1

inst_4011c1:                                      ; preds = %inst_4011be
  %201 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %201, ptr @RIP_2472_1e56970, align 8
  %202 = add i64 %201, 3
  store volatile i64 %202, ptr %NEXT_PC, align 8
  %203 = load i64, ptr @RBP_2328_1e56970, align 8
  %204 = sub i64 %203, 8
  %205 = load i32, ptr @RAX_2216_1e56958, align 4
  %206 = zext i32 %205 to i64
  %207 = load ptr, ptr %MEMORY, align 8
  %208 = inttoptr i64 %204 to ptr
  %209 = inttoptr i64 %204 to ptr
  %210 = ptrtoint ptr %209 to i64
  store i32 %205, ptr %208, align 4
  store volatile ptr %207, ptr %MEMORY, align 8
  br label %inst_4011c4

inst_4011c4:                                      ; preds = %inst_4011c1
  %211 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %211, ptr @RIP_2472_1e56970, align 8
  %212 = add i64 %211, 5
  store volatile i64 %212, ptr %NEXT_PC, align 8
  %213 = load i64, ptr %NEXT_PC, align 8
  %214 = sub i64 %213, 73
  %215 = load ptr, ptr %MEMORY, align 8
  store i64 %214, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %214, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %215, ptr %MEMORY, align 8
  br label %inst_401180

inst_4011d3:                                      ; preds = %inst_4011c9
  %216 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %216, ptr @RIP_2472_1e56970, align 8
  %217 = add i64 %216, 2
  store volatile i64 %217, ptr %NEXT_PC, align 8
  %218 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %218, ptr %MEMORY, align 8
  br label %inst_4011d5

inst_4011d5:                                      ; preds = %inst_4011d3
  %219 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %219, ptr @RIP_2472_1e56970, align 8
  %220 = add i64 %219, 5
  store volatile i64 %220, ptr %NEXT_PC, align 8
  %221 = load i64, ptr %NEXT_PC, align 8
  %222 = sub i64 %221, 426
  %223 = load i64, ptr %NEXT_PC, align 8
  %224 = load ptr, ptr %MEMORY, align 8
  %225 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i111 = add i64 %225, -8
  %226 = inttoptr i64 %sub.i.i111 to ptr
  %227 = inttoptr i64 %sub.i.i111 to ptr
  %228 = ptrtoint ptr %227 to i64
  store i64 %223, ptr %226, align 8
  store i64 %sub.i.i111, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %222, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %222, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %223, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %224, ptr %MEMORY, align 8
  %229 = load ptr, ptr %MEMORY, align 8
  %230 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %229)
  store ptr %230, ptr %MEMORY, align 8
  store ptr @data_4011da, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4011da to i64), ptr %NEXT_PC, align 8
  br label %inst_4011da

inst_4011da:                                      ; preds = %inst_4011d5
  %231 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %231, ptr @RIP_2472_1e56970, align 8
  %232 = add i64 %231, 3
  store volatile i64 %232, ptr %NEXT_PC, align 8
  %233 = load i64, ptr @RBP_2328_1e56970, align 8
  %234 = sub i64 %233, 4
  %235 = load ptr, ptr %MEMORY, align 8
  %236 = inttoptr i64 %234 to ptr
  %237 = inttoptr i64 %234 to ptr
  %238 = ptrtoint ptr %237 to i64
  %239 = load i32, ptr %236, align 4
  %conv.i.i99 = zext i32 %239 to i64
  store i64 %conv.i.i99, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %235, ptr %MEMORY, align 8
  br label %inst_4011dd

inst_4011dd:                                      ; preds = %inst_4011da
  %240 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %240, ptr @RIP_2472_1e56970, align 8
  %241 = add i64 %240, 3
  store volatile i64 %241, ptr %NEXT_PC, align 8
  %242 = load i32, ptr @RAX_2216_1e56958, align 4
  %243 = zext i32 %242 to i64
  %244 = load ptr, ptr %MEMORY, align 8
  %add.i.i77 = add i32 1, %242
  %conv.i25.i = zext i32 %add.i.i77 to i64
  store i64 %conv.i25.i, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i78 = icmp ult i32 %add.i.i77, %242
  %cmp1.i.i.i79 = icmp ult i32 %add.i.i77, 1
  %245 = or i1 %cmp.i.i.i78, %cmp1.i.i.i79
  %conv.i24.i = zext i1 %245 to i8
  store i8 %conv.i24.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i81 = and i32 %add.i.i77, 255
  %246 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i81) #15, !range !1315
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i27.i = xor i64 1, %243
  %xor.i25.i.i.i83 = trunc i64 %xor.i25.i.i27.i to i32
  %xor1.i.i.i.i84 = xor i32 %add.i.i77, %xor.i25.i.i.i83
  %and.i.i.i.i85 = lshr i32 %xor1.i.i.i.i84, 4
  %250 = trunc i32 %and.i.i.i.i85 to i8
  %251 = and i8 %250, 1
  store i8 %251, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i87 = icmp eq i32 %add.i.i77, 0
  %conv5.i.i.i88 = zext i1 %cmp.i24.i.i.i87 to i8
  store i8 %conv5.i.i.i88, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i90 = lshr i32 %add.i.i77, 31
  %252 = trunc i32 %res.lobit.i.i.i90 to i8
  store i8 %252, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i92 = lshr i32 %242, 31
  %xor.i.i.i.i93 = xor i32 %res.lobit.i.i.i90, %shr.i.i.i.i92
  %add.i.i.i.i94 = add nuw nsw i32 %xor.i.i.i.i93, %res.lobit.i.i.i90
  %cmp.i.i.i.i95 = icmp eq i32 %add.i.i.i.i94, 2
  %conv11.i.i.i96 = zext i1 %cmp.i.i.i.i95 to i8
  store i8 %conv11.i.i.i96, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %244, ptr %MEMORY, align 8
  br label %inst_4011e0

inst_4011e0:                                      ; preds = %inst_4011dd
  %253 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %253, ptr @RIP_2472_1e56970, align 8
  %254 = add i64 %253, 3
  store volatile i64 %254, ptr %NEXT_PC, align 8
  %255 = load i64, ptr @RBP_2328_1e56970, align 8
  %256 = sub i64 %255, 4
  %257 = load i32, ptr @RAX_2216_1e56958, align 4
  %258 = zext i32 %257 to i64
  %259 = load ptr, ptr %MEMORY, align 8
  %260 = inttoptr i64 %256 to ptr
  %261 = inttoptr i64 %256 to ptr
  %262 = ptrtoint ptr %261 to i64
  store i32 %257, ptr %260, align 4
  store volatile ptr %259, ptr %MEMORY, align 8
  br label %inst_4011e3

inst_4011e3:                                      ; preds = %inst_4011e0
  %263 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %263, ptr @RIP_2472_1e56970, align 8
  %264 = add i64 %263, 5
  store volatile i64 %264, ptr %NEXT_PC, align 8
  %265 = load i64, ptr %NEXT_PC, align 8
  %266 = sub i64 %265, 121
  %267 = load ptr, ptr %MEMORY, align 8
  store i64 %266, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %266, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %267, ptr %MEMORY, align 8
  br label %inst_40116f

inst_4011f2:                                      ; preds = %inst_4011e8
  %268 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %268, ptr @RIP_2472_1e56970, align 8
  %269 = add i64 %268, 2
  store volatile i64 %269, ptr %NEXT_PC, align 8
  %270 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %270, ptr %MEMORY, align 8
  br label %inst_4011f4

inst_4011f4:                                      ; preds = %inst_4011f2
  %271 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %271, ptr @RIP_2472_1e56970, align 8
  %272 = add i64 %271, 5
  store volatile i64 %272, ptr %NEXT_PC, align 8
  %273 = load i64, ptr %NEXT_PC, align 8
  %274 = sub i64 %273, 457
  %275 = load i64, ptr %NEXT_PC, align 8
  %276 = load ptr, ptr %MEMORY, align 8
  %277 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i50 = add i64 %277, -8
  %278 = inttoptr i64 %sub.i.i50 to ptr
  %279 = inttoptr i64 %sub.i.i50 to ptr
  %280 = ptrtoint ptr %279 to i64
  store i64 %275, ptr %278, align 8
  store i64 %sub.i.i50, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %274, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %274, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %275, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %276, ptr %MEMORY, align 8
  %281 = load ptr, ptr %MEMORY, align 8
  %282 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %281)
  store ptr %282, ptr %MEMORY, align 8
  store ptr @data_4011f9, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4011f9 to i64), ptr %NEXT_PC, align 8
  br label %inst_4011f9

inst_4011f9:                                      ; preds = %inst_4011f4
  %283 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %283, ptr @RIP_2472_1e56970, align 8
  %284 = add i64 %283, 4
  store volatile i64 %284, ptr %NEXT_PC, align 8
  %285 = load i64, ptr @RSP_2312_1e56970, align 8
  %286 = load ptr, ptr %MEMORY, align 8
  %add.i.i29 = add i64 16, %285
  store i64 %add.i.i29, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i30 = icmp ult i64 %add.i.i29, %285
  %cmp1.i.i.i = icmp ult i64 %add.i.i29, 16
  %287 = or i1 %cmp.i.i.i30, %cmp1.i.i.i
  %conv.i.i31 = zext i1 %287 to i8
  store i8 %conv.i.i31, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i = trunc i64 %add.i.i29 to i32
  %conv.i.i.i.i.i33 = and i32 %conv.i.i.i.i, 255
  %288 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i33) #15, !range !1315
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i35 = xor i64 16, %285
  %xor1.i.i.i.i36 = xor i64 %xor.i25.i.i.i35, %add.i.i29
  %and.i.i.i.i37 = lshr i64 %xor1.i.i.i.i36, 4
  %292 = trunc i64 %and.i.i.i.i37 to i8
  %293 = and i8 %292, 1
  store i8 %293, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i39 = icmp eq i64 %add.i.i29, 0
  %conv5.i.i.i40 = zext i1 %cmp.i24.i.i.i39 to i8
  store i8 %conv5.i.i.i40, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i42 = lshr i64 %add.i.i29, 63
  %294 = trunc i64 %res.lobit.i.i.i42 to i8
  store i8 %294, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i44 = lshr i64 %285, 63
  %xor.i.i.i.i = xor i64 %res.lobit.i.i.i42, %shr.i.i.i.i44
  %add.i.i.i.i45 = add nuw nsw i64 %xor.i.i.i.i, %res.lobit.i.i.i42
  %cmp.i.i.i.i46 = icmp eq i64 %add.i.i.i.i45, 2
  %conv11.i.i.i47 = zext i1 %cmp.i.i.i.i46 to i8
  store i8 %conv11.i.i.i47, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %286, ptr %MEMORY, align 8
  br label %inst_4011fd

inst_4011fd:                                      ; preds = %inst_4011f9
  %295 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %295, ptr @RIP_2472_1e56970, align 8
  %296 = add i64 %295, 1
  store volatile i64 %296, ptr %NEXT_PC, align 8
  %297 = load ptr, ptr %MEMORY, align 8
  %298 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %299 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %300 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i3 = add i64 %300, 8
  store i64 %add.i.i3, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %301 = ptrtoint ptr %299 to i64
  %302 = load i64, ptr %298, align 8
  store i64 %302, ptr @RBP_2328_1e56970, align 8, !tbaa !1293
  store volatile ptr %297, ptr %MEMORY, align 8
  br label %inst_4011fe

inst_4011fe:                                      ; preds = %inst_4011fd
  %303 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %303, ptr @RIP_2472_1e56970, align 8
  %304 = add i64 %303, 1
  store volatile i64 %304, ptr %NEXT_PC, align 8
  %305 = load ptr, ptr %MEMORY, align 8
  %306 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %307 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %308 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %309 = ptrtoint ptr %307 to i64
  %310 = load i64, ptr %306, align 8
  store i64 %310, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %310, ptr %NEXT_PC, align 8, !tbaa !1293
  %311 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i = add i64 %311, 8
  store i64 %add.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %305, ptr %MEMORY, align 8
  %312 = load ptr, ptr %MEMORY, align 8
  ret ptr %312
}

; Function Attrs: noinline
define internal ptr @sub_401020(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %STATE.i = alloca ptr, align 8
  %MEMORY.i = alloca ptr, align 8
  %NEXT_PC.i = alloca i64, align 8
  %ESBASE.i = alloca i64, align 8
  %DSBASE.i = alloca i64, align 8
  %CSBASE.i = alloca i64, align 8
  %SSBASE.i = alloca i64, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @callback_sub_401020 to i64), ptr %NEXT_PC, align 8
  store ptr @callback_sub_401020, ptr @RIP_2472_2cc54c0, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_401020

inst_401020:                                      ; preds = %0
  %1 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1, ptr @RIP_2472_1e56970, align 8
  %2 = add i64 %1, 6
  store volatile i64 %2, ptr %NEXT_PC, align 8
  %3 = load ptr, ptr %MEMORY, align 8
  %4 = load i64, ptr @data_404008, align 8
  %5 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i.i = add i64 %5, -8
  %6 = inttoptr i64 %sub.i.i.i to ptr
  %7 = inttoptr i64 %sub.i.i.i to ptr
  %8 = ptrtoint ptr %7 to i64
  store i64 %4, ptr %6, align 8
  store i64 %sub.i.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %3, ptr %MEMORY, align 8
  br label %inst_401026

inst_40102c:                                      ; preds = %62, %20
  %9 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %9, ptr @RIP_2472_1e56970, align 8
  %10 = add i64 %9, 4
  store volatile i64 %10, ptr %NEXT_PC, align 8
  %11 = load i32, ptr @RAX_2216_1e56958, align 4
  %12 = zext i32 %11 to i64
  %13 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %13, ptr %MEMORY, align 8
  %14 = load ptr, ptr %MEMORY, align 8
  ret ptr %14

inst_401026:                                      ; preds = %inst_401020
  %15 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %15, ptr @RIP_2472_1e56970, align 8
  %16 = add i64 %15, 6
  store volatile i64 %16, ptr %NEXT_PC, align 8
  %17 = load ptr, ptr %MEMORY, align 8
  %18 = load i64, ptr @data_404010, align 8
  store i64 %18, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %18, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %17, ptr %MEMORY, align 8
  %19 = load i64, ptr @RIP_2472_1e56970, align 8
  br label %62

20:                                               ; preds = %62
  %21 = sub i64 ptrtoint (ptr @data_40102c to i64), %19
  %22 = trunc i64 %21 to i32
  %23 = zext i32 %22 to i64
  switch i64 %23, label %24 [
    i64 0, label %inst_40102c
  ]

24:                                               ; preds = %20
  %25 = load ptr, ptr %MEMORY, align 8
  %26 = load i64, ptr %NEXT_PC, align 8
  %27 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %27)
  %28 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %28)
  %29 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %29)
  %30 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %30)
  %31 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %31)
  %32 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %32)
  %33 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %33)
  store ptr @__mcsema_reg_state, ptr %STATE.i, align 8, !noalias !1329
  store ptr %25, ptr %MEMORY.i, align 8, !noalias !1329
  store volatile i64 %26, ptr %NEXT_PC.i, align 8, !noalias !1329
  store volatile i64 0, ptr %ESBASE.i, align 8, !noalias !1329
  store volatile i64 0, ptr %DSBASE.i, align 8, !noalias !1329
  store volatile i64 0, ptr %CSBASE.i, align 8, !noalias !1329
  store volatile i64 0, ptr %SSBASE.i, align 8, !noalias !1329
  %34 = inttoptr i64 %26 to ptr
  %35 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %36 = add i64 %35, 8
  %37 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %38 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %39 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %40 = ptrtoint ptr %38 to i64
  %41 = load i64, ptr %37, align 8
  %param0.i = load i64, ptr @RDI_2296_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %param1.i = load i64, ptr @RSI_2280_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %param2.i = load i64, ptr @RDX_2264_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %param3.i = load i64, ptr @RCX_2248_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %param4.i = load i64, ptr @R8_2344_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %param5.i = load i64, ptr @R9_2360_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %42 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %43 = add i64 %42, 8
  %44 = inttoptr i64 %43 to ptr
  %45 = inttoptr i64 %43 to ptr
  %46 = ptrtoint ptr %45 to i64
  %47 = load i64, ptr %44, align 8
  %48 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %49 = add i64 %48, 16
  %50 = inttoptr i64 %49 to ptr
  %51 = inttoptr i64 %49 to ptr
  %52 = ptrtoint ptr %51 to i64
  %53 = load i64, ptr %50, align 8
  %54 = call i64 %34(i64 %param0.i, i64 %param1.i, i64 %param2.i, i64 %param3.i, i64 %param4.i, i64 %param5.i, i64 %47, i64 %53) #15
  store volatile i64 %54, ptr @RAX_2216_1e56970, align 8, !alias.scope !1333, !noalias !1334
  store i64 %41, ptr %NEXT_PC.i, align 8, !noalias !1329
  store volatile i64 %36, ptr @RSP_2312_1e56970, align 8, !alias.scope !1333, !noalias !1334
  %55 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %55)
  %56 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %56)
  %57 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %57)
  %58 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %58)
  %59 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %59)
  %60 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %60)
  %61 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %61)
  store ptr %25, ptr %MEMORY, align 8
  ret ptr %25

62:                                               ; preds = %inst_401026
  switch i64 %19, label %20 [
    i64 4198444, label %inst_40102c
  ]
}

; Function Attrs: noinline
define internal ptr @sub_401070__start(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %STATE.i = alloca ptr, align 8
  %MEMORY.i = alloca ptr, align 8
  %NEXT_PC.i = alloca i64, align 8
  %ESBASE.i = alloca i64, align 8
  %DSBASE.i = alloca i64, align 8
  %CSBASE.i = alloca i64, align 8
  %SSBASE.i = alloca i64, align 8
  %1 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 17, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 7, i32 0, i32 0
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @_start to i64), ptr %NEXT_PC, align 8
  store ptr @_start, ptr @RIP_2472_1e676b0, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_401070

inst_401070:                                      ; preds = %0
  %4 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %4, ptr @RIP_2472_1e56970, align 8
  %5 = add i64 %4, 4
  store volatile i64 %5, ptr %NEXT_PC, align 8
  %6 = load i32, ptr @RDX_2264_1e56958, align 4
  %7 = zext i32 %6 to i64
  %8 = load i32, ptr @RDI_2296_1e56958, align 4
  %9 = zext i32 %8 to i64
  %10 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %10, ptr %MEMORY, align 8
  br label %inst_401074

inst_401096:                                      ; No predecessors!
  %11 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %11, ptr @RIP_2472_1e56970, align 8
  %12 = add i64 %11, 10
  store volatile i64 %12, ptr %NEXT_PC, align 8
  %13 = load i64, ptr @RAX_2216_1e56970, align 8
  %14 = load i64, ptr @RAX_2216_1e56970, align 8
  %15 = mul i64 %14, 1
  %16 = add i64 %13, %15
  %17 = load i16, ptr @RAX_2216_1e56940, align 2
  %18 = zext i16 %17 to i64
  %19 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %19, ptr %MEMORY, align 8
  %20 = load ptr, ptr %MEMORY, align 8
  ret ptr %20

inst_401074:                                      ; preds = %inst_401070
  %21 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %21, ptr @RIP_2472_1e56970, align 8
  %22 = add i64 %21, 2
  store volatile i64 %22, ptr %NEXT_PC, align 8
  %23 = load i32, ptr @RBP_2328_1e56958, align 4
  %24 = zext i32 %23 to i64
  %25 = load i32, ptr @RBP_2328_1e56958, align 4
  %26 = zext i32 %25 to i64
  %27 = load ptr, ptr %MEMORY, align 8
  %xor3.i26.i = xor i64 %26, %24
  %xor3.i.i = trunc i64 %xor3.i26.i to i32
  %conv.i24.i = and i64 %xor3.i26.i, 4294967295
  store i64 %conv.i24.i, ptr @RBP_2328_1e56970, align 8, !tbaa !1293
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i = and i32 %xor3.i.i, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i) #15, !range !1315
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i = icmp eq i32 %xor3.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  store i8 %conv3.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i = lshr i32 %xor3.i.i, 31
  %32 = trunc i32 %res.lobit.i.i to i8
  store i8 %32, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %27, ptr %MEMORY, align 8
  br label %inst_401076

inst_401076:                                      ; preds = %inst_401074
  %33 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %33, ptr @RIP_2472_1e56970, align 8
  %34 = add i64 %33, 3
  store volatile i64 %34, ptr %NEXT_PC, align 8
  %35 = load i64, ptr @RDX_2264_1e56970, align 8
  %36 = load ptr, ptr %MEMORY, align 8
  store i64 %35, ptr @R9_2360_1e56970, align 8, !tbaa !1293
  store volatile ptr %36, ptr %MEMORY, align 8
  br label %inst_401079

inst_401079:                                      ; preds = %inst_401076
  %37 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %37, ptr @RIP_2472_1e56970, align 8
  %38 = add i64 %37, 1
  store volatile i64 %38, ptr %NEXT_PC, align 8
  %39 = load ptr, ptr %MEMORY, align 8
  %40 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %41 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %42 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i = add i64 %42, 8
  store i64 %add.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %43 = ptrtoint ptr %41 to i64
  %44 = load i64, ptr %40, align 8
  store i64 %44, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  store volatile ptr %39, ptr %MEMORY, align 8
  br label %inst_40107a

inst_40107a:                                      ; preds = %inst_401079
  %45 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %45, ptr @RIP_2472_1e56970, align 8
  %46 = add i64 %45, 3
  store volatile i64 %46, ptr %NEXT_PC, align 8
  %47 = load i64, ptr @RSP_2312_1e56970, align 8
  %48 = load ptr, ptr %MEMORY, align 8
  store i64 %47, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %48, ptr %MEMORY, align 8
  br label %inst_40107d

inst_40107d:                                      ; preds = %inst_40107a
  %49 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %49, ptr @RIP_2472_1e56970, align 8
  %50 = add i64 %49, 4
  store volatile i64 %50, ptr %NEXT_PC, align 8
  %51 = load i64, ptr @RSP_2312_1e56970, align 8
  %52 = load ptr, ptr %MEMORY, align 8
  %and.i.i = and i64 -16, %51
  store i64 %and.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i = trunc i64 %and.i.i to i32
  %conv.i.i.i.i2 = and i32 %conv.i.i.i, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i2) #15, !range !1315
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i4 = icmp eq i64 %and.i.i, 0
  %conv3.i.i5 = zext i1 %cmp.i1.i.i4 to i8
  store i8 %conv3.i.i5, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i7 = lshr i64 %and.i.i, 63
  %57 = trunc i64 %res.lobit.i.i7 to i8
  store i8 %57, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %52, ptr %MEMORY, align 8
  br label %inst_401081

inst_401081:                                      ; preds = %inst_40107d
  %58 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %58, ptr @RIP_2472_1e56970, align 8
  %59 = add i64 %58, 1
  store volatile i64 %59, ptr %NEXT_PC, align 8
  %60 = load i64, ptr @RAX_2216_1e56970, align 8
  %61 = load ptr, ptr %MEMORY, align 8
  %62 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i.i = add i64 %62, -8
  %63 = inttoptr i64 %sub.i.i.i to ptr
  %64 = inttoptr i64 %sub.i.i.i to ptr
  %65 = ptrtoint ptr %64 to i64
  store i64 %60, ptr %63, align 8
  store i64 %sub.i.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %61, ptr %MEMORY, align 8
  br label %inst_401082

inst_401082:                                      ; preds = %inst_401081
  %66 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %66, ptr @RIP_2472_1e56970, align 8
  %67 = add i64 %66, 1
  store volatile i64 %67, ptr %NEXT_PC, align 8
  %68 = load i64, ptr @RSP_2312_1e56970, align 8
  %69 = load ptr, ptr %MEMORY, align 8
  %70 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i.i14 = add i64 %70, -8
  %71 = inttoptr i64 %sub.i.i.i14 to ptr
  %72 = inttoptr i64 %sub.i.i.i14 to ptr
  %73 = ptrtoint ptr %72 to i64
  store i64 %68, ptr %71, align 8
  store i64 %sub.i.i.i14, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %69, ptr %MEMORY, align 8
  br label %inst_401083

inst_401083:                                      ; preds = %inst_401082
  %74 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %74, ptr @RIP_2472_1e56970, align 8
  %75 = add i64 %74, 3
  store volatile i64 %75, ptr %NEXT_PC, align 8
  %76 = load i32, ptr @R8_2344_1e56958, align 4
  %77 = zext i32 %76 to i64
  %78 = load i32, ptr @R8_2344_1e56958, align 4
  %79 = zext i32 %78 to i64
  %80 = load ptr, ptr %MEMORY, align 8
  %xor3.i26.i16 = xor i64 %79, %77
  %xor3.i.i17 = trunc i64 %xor3.i26.i16 to i32
  %conv.i24.i18 = and i64 %xor3.i26.i16, 4294967295
  store i64 %conv.i24.i18, ptr @R8_2344_1e56970, align 8, !tbaa !1293
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i20 = and i32 %xor3.i.i17, 255
  %81 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i20) #15, !range !1315
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i22 = icmp eq i32 %xor3.i.i17, 0
  %conv3.i.i23 = zext i1 %cmp.i1.i.i22 to i8
  store i8 %conv3.i.i23, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i25 = lshr i32 %xor3.i.i17, 31
  %85 = trunc i32 %res.lobit.i.i25 to i8
  store i8 %85, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %80, ptr %MEMORY, align 8
  br label %inst_401086

inst_401086:                                      ; preds = %inst_401083
  %86 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %86, ptr @RIP_2472_1e56970, align 8
  %87 = add i64 %86, 2
  store volatile i64 %87, ptr %NEXT_PC, align 8
  %88 = load i32, ptr @RCX_2248_1e56958, align 4
  %89 = zext i32 %88 to i64
  %90 = load i32, ptr @RCX_2248_1e56958, align 4
  %91 = zext i32 %90 to i64
  %92 = load ptr, ptr %MEMORY, align 8
  %xor3.i26.i29 = xor i64 %91, %89
  %xor3.i.i30 = trunc i64 %xor3.i26.i29 to i32
  %conv.i24.i31 = and i64 %xor3.i26.i29, 4294967295
  store i64 %conv.i24.i31, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i33 = and i32 %xor3.i.i30, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i33) #15, !range !1315
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i35 = icmp eq i32 %xor3.i.i30, 0
  %conv3.i.i36 = zext i1 %cmp.i1.i.i35 to i8
  store i8 %conv3.i.i36, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i38 = lshr i32 %xor3.i.i30, 31
  %97 = trunc i32 %res.lobit.i.i38 to i8
  store i8 %97, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %92, ptr %MEMORY, align 8
  br label %inst_401088

inst_401088:                                      ; preds = %inst_401086
  %98 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %98, ptr @RIP_2472_1e56970, align 8
  %99 = add i64 %98, 7
  store volatile i64 %99, ptr %NEXT_PC, align 8
  %100 = load ptr, ptr %MEMORY, align 8
  store ptr @main, ptr @RDI_2296_200a410, align 8
  store volatile ptr %100, ptr %MEMORY, align 8
  br label %inst_40108f

inst_40108f:                                      ; preds = %inst_401088
  %101 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %101, ptr @RIP_2472_1e56970, align 8
  %102 = add i64 %101, 6
  store volatile i64 %102, ptr %NEXT_PC, align 8
  %103 = load ptr, ptr %MEMORY, align 8
  %104 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i = add i64 %104, -8
  %105 = load i64, ptr @data_403ff0, align 8
  %106 = inttoptr i64 %sub.i.i to ptr
  %107 = inttoptr i64 %sub.i.i to ptr
  %108 = ptrtoint ptr %107 to i64
  store i64 ptrtoint (ptr @data_403ff0 to i64), ptr %106, align 8
  store i64 %sub.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %105, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %105, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 ptrtoint (ptr @data_403ff0 to i64), ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %103, ptr %MEMORY, align 8
  %109 = load ptr, ptr %MEMORY, align 8
  %110 = load i64, ptr %NEXT_PC, align 8
  %111 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %111)
  %112 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %112)
  %113 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %113)
  %114 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %114)
  %115 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %115)
  %116 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %116)
  %117 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %117)
  store ptr @__mcsema_reg_state, ptr %STATE.i, align 8, !noalias !1335
  store ptr %109, ptr %MEMORY.i, align 8, !noalias !1335
  store volatile i64 %110, ptr %NEXT_PC.i, align 8, !noalias !1335
  store volatile i64 0, ptr %ESBASE.i, align 8, !noalias !1335
  store volatile i64 0, ptr %DSBASE.i, align 8, !noalias !1335
  store volatile i64 0, ptr %CSBASE.i, align 8, !noalias !1335
  store volatile i64 0, ptr %SSBASE.i, align 8, !noalias !1335
  %118 = inttoptr i64 %110 to ptr
  %119 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %120 = add i64 %119, 8
  %121 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %122 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %123 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %124 = ptrtoint ptr %122 to i64
  %125 = load i64, ptr %121, align 8
  %param0.i = load i64, ptr @RDI_2296_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %param1.i = load i64, ptr @RSI_2280_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %param2.i = load i64, ptr @RDX_2264_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %param3.i = load i64, ptr @RCX_2248_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %param4.i = load i64, ptr @R8_2344_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %param5.i = load i64, ptr @R9_2360_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %126 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %127 = add i64 %126, 8
  %128 = inttoptr i64 %127 to ptr
  %129 = inttoptr i64 %127 to ptr
  %130 = ptrtoint ptr %129 to i64
  %131 = load i64, ptr %128, align 8
  %132 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %133 = add i64 %132, 16
  %134 = inttoptr i64 %133 to ptr
  %135 = inttoptr i64 %133 to ptr
  %136 = ptrtoint ptr %135 to i64
  %137 = load i64, ptr %134, align 8
  %138 = call i64 %118(i64 %param0.i, i64 %param1.i, i64 %param2.i, i64 %param3.i, i64 %param4.i, i64 %param5.i, i64 %131, i64 %137) #15
  store volatile i64 %138, ptr @RAX_2216_1e56970, align 8, !alias.scope !1339, !noalias !1340
  store i64 %125, ptr %NEXT_PC.i, align 8, !noalias !1335
  store volatile i64 %120, ptr @RSP_2312_1e56970, align 8, !alias.scope !1339, !noalias !1340
  %139 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %139)
  %140 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %140)
  %141 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %141)
  %142 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %142)
  %143 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %143)
  %144 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %144)
  %145 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %145)
  store ptr %109, ptr %MEMORY, align 8
  store ptr @data_401095, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401095 to i64), ptr %NEXT_PC, align 8
  br label %inst_401095

inst_401095:                                      ; preds = %inst_40108f
  %146 = load i64, ptr %NEXT_PC, align 8
  store i64 %146, ptr @RIP_2472_1e56970, align 8
  %147 = load ptr, ptr %MEMORY, align 8
  call void @abort() #15
  unreachable

__remill_error.exit:                              ; No predecessors!
  ret ptr undef
}

; Function Attrs: noinline
define internal ptr @sub_401120___do_global_dtors_aux(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %1 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 11, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 7, i32 0, i32 0
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @__do_global_dtors_aux to i64), ptr %NEXT_PC, align 8
  store ptr @__do_global_dtors_aux, ptr @RIP_2472_1e676b0, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_401120

inst_401120:                                      ; preds = %0
  %3 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %3, ptr @RIP_2472_1e56970, align 8
  %4 = add i64 %3, 4
  store volatile i64 %4, ptr %NEXT_PC, align 8
  %5 = load i32, ptr @RDX_2264_1e56958, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, ptr @RDI_2296_1e56958, align 4
  %8 = zext i32 %7 to i64
  %9 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %9, ptr %MEMORY, align 8
  br label %inst_401124

inst_401141:                                      ; No predecessors!
  %10 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %10, ptr @RIP_2472_1e56970, align 8
  %11 = add i64 %10, 11
  store volatile i64 %11, ptr %NEXT_PC, align 8
  %12 = load i64, ptr @RAX_2216_1e56970, align 8
  %13 = load i64, ptr @RAX_2216_1e56970, align 8
  %14 = mul i64 %13, 1
  %15 = add i64 %12, %14
  %16 = load i16, ptr @RAX_2216_1e56940, align 2
  %17 = zext i16 %16 to i64
  %18 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %18, ptr %MEMORY, align 8
  br label %inst_40114c

inst_401140:                                      ; preds = %58, %inst_40113f
  %19 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %19, ptr @RIP_2472_1e56970, align 8
  %20 = add i64 %19, 1
  store volatile i64 %20, ptr %NEXT_PC, align 8
  %21 = load ptr, ptr %MEMORY, align 8
  %22 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %23 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %24 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %25 = ptrtoint ptr %23 to i64
  %26 = load i64, ptr %22, align 8
  store i64 %26, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %26, ptr %NEXT_PC, align 8, !tbaa !1293
  %27 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i7 = add i64 %27, 8
  store i64 %add.i.i7, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %21, ptr %MEMORY, align 8
  %28 = load ptr, ptr %MEMORY, align 8
  ret ptr %28

inst_40112d:                                      ; preds = %59
  %29 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %29, ptr @RIP_2472_1e56970, align 8
  %30 = add i64 %29, 1
  store volatile i64 %30, ptr %NEXT_PC, align 8
  %31 = load i64, ptr @RBP_2328_1e56970, align 8
  %32 = load ptr, ptr %MEMORY, align 8
  %33 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i.i = add i64 %33, -8
  %34 = inttoptr i64 %sub.i.i.i to ptr
  %35 = inttoptr i64 %sub.i.i.i to ptr
  %36 = ptrtoint ptr %35 to i64
  store i64 %31, ptr %34, align 8
  store i64 %sub.i.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %32, ptr %MEMORY, align 8
  br label %inst_40112e

inst_40113f:                                      ; No predecessors!
  %37 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %37, ptr @RIP_2472_1e56970, align 8
  %38 = add i64 %37, 1
  store volatile i64 %38, ptr %NEXT_PC, align 8
  %39 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %39, ptr %MEMORY, align 8
  br label %inst_401140

inst_401124:                                      ; preds = %inst_401120
  %40 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %40, ptr @RIP_2472_1e56970, align 8
  %41 = add i64 %40, 7
  store volatile i64 %41, ptr %NEXT_PC, align 8
  %42 = load ptr, ptr %MEMORY, align 8
  %43 = load i8, ptr @data_40409d, align 1
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i = zext i8 %43 to i32
  %44 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i) #15, !range !1315
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = xor i8 %46, 1
  store i8 %47, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i = icmp eq i8 %43, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  store i8 %conv5.i.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i = lshr i8 %43, 7
  store i8 %res.lobit.i.i.i, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %48 = lshr i8 %43, 7
  %xor1215.i.i.i.i = xor i8 %res.lobit.i.i.i, %48
  %narrow.i.i.i.i = add nuw nsw i8 %xor1215.i.i.i.i, %48
  %cmp.i.i.i.i = icmp eq i8 %narrow.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  store i8 %conv11.i.i.i, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %42, ptr %MEMORY, align 8
  br label %inst_40112b

inst_40112b:                                      ; preds = %inst_401124
  %49 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %49, ptr @RIP_2472_1e56970, align 8
  %50 = add i64 %49, 2
  store volatile i64 %50, ptr %NEXT_PC, align 8
  %51 = load i64, ptr %NEXT_PC, align 8
  %52 = add i64 %51, 19
  %53 = load i64, ptr %NEXT_PC, align 8
  %54 = load ptr, ptr %MEMORY, align 8
  %55 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %tobool.not.i = icmp eq i8 %55, 0
  %frombool.i = zext i1 %tobool.not.i to i8
  store i8 %frombool.i, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i = select i1 %tobool.not.i, i64 %52, i64 %53
  store i64 %cond1.i.i, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %54, ptr %MEMORY, align 8
  %56 = load i8, ptr %BRANCH_TAKEN, align 1
  %57 = icmp eq i8 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %inst_40112b
  br label %inst_401140

59:                                               ; preds = %inst_40112b
  br label %inst_40112d

inst_40112e:                                      ; preds = %inst_40112d
  %60 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %60, ptr @RIP_2472_1e56970, align 8
  %61 = add i64 %60, 3
  store volatile i64 %61, ptr %NEXT_PC, align 8
  %62 = load i64, ptr @RSP_2312_1e56970, align 8
  %63 = load ptr, ptr %MEMORY, align 8
  store i64 %62, ptr @RBP_2328_1e56970, align 8, !tbaa !1293
  store volatile ptr %63, ptr %MEMORY, align 8
  br label %inst_401131

inst_401131:                                      ; preds = %inst_40112e
  %64 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %64, ptr @RIP_2472_1e56970, align 8
  %65 = add i64 %64, 5
  store volatile i64 %65, ptr %NEXT_PC, align 8
  %66 = load i64, ptr %NEXT_PC, align 8
  %67 = sub i64 %66, 134
  %68 = load i64, ptr %NEXT_PC, align 8
  %69 = load ptr, ptr %MEMORY, align 8
  %70 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i = add i64 %70, -8
  %71 = inttoptr i64 %sub.i.i to ptr
  %72 = inttoptr i64 %sub.i.i to ptr
  %73 = ptrtoint ptr %72 to i64
  store i64 %68, ptr %71, align 8
  store i64 %sub.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %67, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %67, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %68, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %69, ptr %MEMORY, align 8
  %74 = load ptr, ptr %MEMORY, align 8
  %75 = call ptr @sub_4010b0_deregister_tm_clones(ptr @__mcsema_reg_state, i64 undef, ptr %74)
  store ptr %75, ptr %MEMORY, align 8
  store ptr @data_401136, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401136 to i64), ptr %NEXT_PC, align 8
  br label %inst_401136

inst_401136:                                      ; preds = %inst_401131
  %76 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %76, ptr @RIP_2472_1e56970, align 8
  %77 = add i64 %76, 7
  store volatile i64 %77, ptr %NEXT_PC, align 8
  %78 = load ptr, ptr %MEMORY, align 8
  store i8 1, ptr @data_40409d, align 1
  store volatile ptr %78, ptr %MEMORY, align 8
  br label %inst_40113d

inst_40113d:                                      ; preds = %inst_401136
  %79 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %79, ptr @RIP_2472_1e56970, align 8
  %80 = add i64 %79, 1
  store volatile i64 %80, ptr %NEXT_PC, align 8
  %81 = load ptr, ptr %MEMORY, align 8
  %82 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %83 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %84 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i2 = add i64 %84, 8
  store i64 %add.i.i2, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %85 = ptrtoint ptr %83 to i64
  %86 = load i64, ptr %82, align 8
  store i64 %86, ptr @RBP_2328_1e56970, align 8, !tbaa !1293
  store volatile ptr %81, ptr %MEMORY, align 8
  br label %inst_40113e

inst_40113e:                                      ; preds = %inst_40113d
  %87 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %87, ptr @RIP_2472_1e56970, align 8
  %88 = add i64 %87, 1
  store volatile i64 %88, ptr %NEXT_PC, align 8
  %89 = load ptr, ptr %MEMORY, align 8
  %90 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %91 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %92 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %93 = ptrtoint ptr %91 to i64
  %94 = load i64, ptr %90, align 8
  store i64 %94, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %94, ptr %NEXT_PC, align 8, !tbaa !1293
  %95 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i = add i64 %95, 8
  store i64 %add.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %89, ptr %MEMORY, align 8
  %96 = load ptr, ptr %MEMORY, align 8
  ret ptr %96

inst_40114c:                                      ; preds = %inst_401141
  %97 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %97, ptr @RIP_2472_1e56970, align 8
  %98 = add i64 %97, 4
  store volatile i64 %98, ptr %NEXT_PC, align 8
  %99 = load i32, ptr @RAX_2216_1e56958, align 4
  %100 = zext i32 %99 to i64
  %101 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %101, ptr %MEMORY, align 8
  %102 = load ptr, ptr %MEMORY, align 8
  ret ptr %102
}

; Function Attrs: noinline
define internal ptr @sub_4010a0__dl_relocate_static_pie(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %1 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 11, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 7, i32 0, i32 0
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @_dl_relocate_static_pie to i64), ptr %NEXT_PC, align 8
  store ptr @_dl_relocate_static_pie, ptr @RIP_2472_2cc54c0, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_4010a0

inst_4010a0:                                      ; preds = %0
  %3 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %3, ptr @RIP_2472_1e56970, align 8
  %4 = add i64 %3, 4
  store volatile i64 %4, ptr %NEXT_PC, align 8
  %5 = load i32, ptr @RDX_2264_1e56958, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, ptr @RDI_2296_1e56958, align 4
  %8 = zext i32 %7 to i64
  %9 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %9, ptr %MEMORY, align 8
  br label %inst_4010a4

inst_4010a5:                                      ; No predecessors!
  %10 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %10, ptr @RIP_2472_1e56970, align 8
  %11 = add i64 %10, 10
  store volatile i64 %11, ptr %NEXT_PC, align 8
  %12 = load i64, ptr @RAX_2216_1e56970, align 8
  %13 = load i64, ptr @RAX_2216_1e56970, align 8
  %14 = mul i64 %13, 1
  %15 = add i64 %12, %14
  %16 = load i16, ptr @RAX_2216_1e56940, align 2
  %17 = zext i16 %16 to i64
  %18 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %18, ptr %MEMORY, align 8
  br label %inst_4010af

inst_4010a4:                                      ; preds = %inst_4010a0
  %19 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %19, ptr @RIP_2472_1e56970, align 8
  %20 = add i64 %19, 1
  store volatile i64 %20, ptr %NEXT_PC, align 8
  %21 = load ptr, ptr %MEMORY, align 8
  %22 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %23 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %24 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %25 = ptrtoint ptr %23 to i64
  %26 = load i64, ptr %22, align 8
  store i64 %26, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %26, ptr %NEXT_PC, align 8, !tbaa !1293
  %27 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i = add i64 %27, 8
  store i64 %add.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %21, ptr %MEMORY, align 8
  %28 = load ptr, ptr %MEMORY, align 8
  ret ptr %28

inst_4010af:                                      ; preds = %inst_4010a5
  %29 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %29, ptr @RIP_2472_1e56970, align 8
  %30 = add i64 %29, 1
  store volatile i64 %30, ptr %NEXT_PC, align 8
  %31 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %31, ptr %MEMORY, align 8
  %32 = load ptr, ptr %MEMORY, align 8
  ret ptr %32
}

; Function Attrs: noinline
define internal ptr @sub_401150_frame_dummy(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %1 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 11, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 7, i32 0, i32 0
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @frame_dummy to i64), ptr %NEXT_PC, align 8
  store ptr @frame_dummy, ptr @RIP_2472_1e676b0, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_401150

inst_401150:                                      ; preds = %0
  %3 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %3, ptr @RIP_2472_1e56970, align 8
  %4 = add i64 %3, 4
  store volatile i64 %4, ptr %NEXT_PC, align 8
  %5 = load i32, ptr @RDX_2264_1e56958, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, ptr @RDI_2296_1e56958, align 4
  %8 = zext i32 %7 to i64
  %9 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %9, ptr %MEMORY, align 8
  br label %inst_401154

inst_401156:                                      ; No predecessors!
  %10 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %10, ptr @RIP_2472_1e56970, align 8
  %11 = add i64 %10, 10
  store volatile i64 %11, ptr %NEXT_PC, align 8
  %12 = load i64, ptr @RAX_2216_1e56970, align 8
  %13 = load i64, ptr @RAX_2216_1e56970, align 8
  %14 = mul i64 %13, 1
  %15 = add i64 %12, %14
  %16 = load i16, ptr @RAX_2216_1e56940, align 2
  %17 = zext i16 %16 to i64
  %18 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %18, ptr %MEMORY, align 8
  %19 = load ptr, ptr %MEMORY, align 8
  ret ptr %19

inst_401154:                                      ; preds = %inst_401150
  %20 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %20, ptr @RIP_2472_1e56970, align 8
  %21 = add i64 %20, 2
  store volatile i64 %21, ptr %NEXT_PC, align 8
  %22 = load i64, ptr %NEXT_PC, align 8
  %23 = sub i64 %22, 118
  %24 = load ptr, ptr %MEMORY, align 8
  store i64 %23, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %23, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %24, ptr %MEMORY, align 8
  br label %inst_4010e0

inst_4010e0:                                      ; preds = %inst_401154
  %25 = load ptr, ptr %MEMORY, align 8
  %26 = load i64, ptr %NEXT_PC, align 8
  %27 = call ptr @sub_4010e0_register_tm_clones(ptr @__mcsema_reg_state, i64 %26, ptr %25)
  store ptr %27, ptr %MEMORY, align 8
  ret ptr %27
}

; Function Attrs: noinline
define internal ptr @sub_401200_main(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %STATE.i = alloca ptr, align 8
  %MEMORY.i = alloca ptr, align 8
  %NEXT_PC.i = alloca i64, align 8
  %ESBASE.i = alloca i64, align 8
  %DSBASE.i = alloca i64, align 8
  %CSBASE.i = alloca i64, align 8
  %SSBASE.i = alloca i64, align 8
  %1 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 7, i32 0, i32 0, !remill_register !1341
  %RDI = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 11, i32 0, i32 0, !remill_register !1321
  %RCX = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 5, i32 0, i32 0, !remill_register !1342
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @main to i64), ptr %NEXT_PC, align 8
  store ptr @main, ptr @RIP_2472_200a410, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_401200

inst_401200:                                      ; preds = %0
  %2 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %2, ptr @RIP_2472_1e56970, align 8
  %3 = add i64 %2, 1
  store volatile i64 %3, ptr %NEXT_PC, align 8
  %4 = load i64, ptr @RBP_2328_1e56970, align 8
  %5 = load ptr, ptr %MEMORY, align 8
  %6 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i.i = add i64 %6, -8
  %7 = inttoptr i64 %sub.i.i.i to ptr
  %8 = inttoptr i64 %sub.i.i.i to ptr
  %9 = ptrtoint ptr %8 to i64
  store i64 %4, ptr %7, align 8
  store i64 %sub.i.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %5, ptr %MEMORY, align 8
  br label %inst_401201

inst_401501:                                      ; preds = %1580
  %10 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %10, ptr @RIP_2472_1e56970, align 8
  %11 = add i64 %10, 10
  store volatile i64 %11, ptr %NEXT_PC, align 8
  %12 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4021e6, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %12, ptr %MEMORY, align 8
  br label %inst_40150b

inst_401383:                                      ; preds = %inst_40137e, %inst_40134c, %inst_40133e, %inst_401330, %inst_401322
  %13 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %13, ptr @RIP_2472_1e56970, align 8
  %14 = add i64 %13, 4
  store volatile i64 %14, ptr %NEXT_PC, align 8
  %15 = load i64, ptr @RBP_2328_1e56970, align 8
  %16 = sub i64 %15, 24
  %17 = load ptr, ptr %MEMORY, align 8
  %18 = inttoptr i64 %16 to ptr
  %19 = inttoptr i64 %16 to ptr
  %20 = ptrtoint ptr %19 to i64
  %21 = load i32, ptr %18, align 4
  %conv.i.i = sext i32 %21 to i64
  store i64 %conv.i.i, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %17, ptr %MEMORY, align 8
  br label %inst_401387

inst_401408:                                      ; preds = %1129
  %22 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %22, ptr @RIP_2472_1e56970, align 8
  %23 = add i64 %22, 4
  store volatile i64 %23, ptr %NEXT_PC, align 8
  %24 = load i64, ptr @RBP_2328_1e56970, align 8
  %25 = sub i64 %24, 24
  %26 = load ptr, ptr %MEMORY, align 8
  %27 = inttoptr i64 %25 to ptr
  %28 = inttoptr i64 %25 to ptr
  %29 = ptrtoint ptr %28 to i64
  %30 = load i32, ptr %27, align 4
  %sub.i.i = sub i32 %30, 2
  %cmp.i.i.i = icmp ult i32 %30, 2
  %conv.i12.i = zext i1 %cmp.i.i.i to i8
  store i8 %conv.i12.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i = and i32 %sub.i.i, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i) #15, !range !1315
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i = xor i32 %30, 2
  %xor1.i.i.i.i = xor i32 %xor.i25.i.i.i, %sub.i.i
  %and.i.i.i.i = lshr i32 %xor1.i.i.i.i, 4
  %35 = trunc i32 %and.i.i.i.i to i8
  %36 = and i8 %35, 1
  store i8 %36, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i = icmp eq i32 %sub.i.i, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  store i8 %conv5.i.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i = lshr i32 %sub.i.i, 31
  %37 = trunc i32 %res.lobit.i.i.i to i8
  store i8 %37, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i = lshr i32 %30, 31
  %xor3.i.i.i.i = xor i32 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i32 %xor3.i.i.i.i, %shr.i.i.i.i
  %cmp.i.i.i.i = icmp eq i32 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  store i8 %conv11.i.i.i, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %26, ptr %MEMORY, align 8
  br label %inst_40140c

inst_40130b:                                      ; preds = %669
  %38 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %38, ptr @RIP_2472_1e56970, align 8
  %39 = add i64 %38, 4
  store volatile i64 %39, ptr %NEXT_PC, align 8
  %40 = load i64, ptr @RBP_2328_1e56970, align 8
  %41 = sub i64 %40, 96
  %42 = load ptr, ptr %MEMORY, align 8
  %43 = inttoptr i64 %41 to ptr
  %44 = inttoptr i64 %41 to ptr
  %45 = ptrtoint ptr %44 to i64
  %46 = load i64, ptr %43, align 8
  store i64 %46, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %42, ptr %MEMORY, align 8
  br label %inst_40130f

inst_401412:                                      ; preds = %1140
  %47 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %47, ptr @RIP_2472_1e56970, align 8
  %48 = add i64 %47, 4
  store volatile i64 %48, ptr %NEXT_PC, align 8
  %49 = load i64, ptr @RBP_2328_1e56970, align 8
  %50 = sub i64 %49, 24
  %51 = load ptr, ptr %MEMORY, align 8
  %52 = inttoptr i64 %50 to ptr
  %53 = inttoptr i64 %50 to ptr
  %54 = ptrtoint ptr %53 to i64
  %55 = load i32, ptr %52, align 4
  %conv.i.i5 = sext i32 %55 to i64
  store i64 %conv.i.i5, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %51, ptr %MEMORY, align 8
  br label %inst_401416

inst_401497:                                      ; preds = %1401
  %56 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %56, ptr @RIP_2472_1e56970, align 8
  %57 = add i64 %56, 3
  store volatile i64 %57, ptr %NEXT_PC, align 8
  %58 = load i64, ptr @RBP_2328_1e56970, align 8
  %59 = sub i64 %58, 32
  %60 = load ptr, ptr %MEMORY, align 8
  %61 = inttoptr i64 %59 to ptr
  %62 = inttoptr i64 %59 to ptr
  %63 = ptrtoint ptr %62 to i64
  %64 = load i32, ptr %61, align 4
  %conv.i.i7 = zext i32 %64 to i64
  store i64 %conv.i.i7, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %60, ptr %MEMORY, align 8
  br label %inst_40149a

inst_401319:                                      ; preds = %729, %687
  %65 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %65, ptr @RIP_2472_1e56970, align 8
  %66 = add i64 %65, 3
  store volatile i64 %66, ptr %NEXT_PC, align 8
  %67 = load i64, ptr @RBP_2328_1e56970, align 8
  %68 = sub i64 %67, 24
  %69 = load ptr, ptr %MEMORY, align 8
  %70 = inttoptr i64 %68 to ptr
  %71 = inttoptr i64 %68 to ptr
  %72 = ptrtoint ptr %71 to i64
  %73 = load i32, ptr %70, align 4
  %conv.i.i9 = zext i32 %73 to i64
  store i64 %conv.i.i9, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %69, ptr %MEMORY, align 8
  br label %inst_40131c

inst_401522:                                      ; preds = %inst_40151d, %1579, %1550
  %74 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %74, ptr @RIP_2472_1e56970, align 8
  %75 = add i64 %74, 4
  store volatile i64 %75, ptr %NEXT_PC, align 8
  %76 = load i64, ptr @RBP_2328_1e56970, align 8
  %77 = sub i64 %76, 24
  %78 = load ptr, ptr %MEMORY, align 8
  %79 = inttoptr i64 %77 to ptr
  %80 = inttoptr i64 %77 to ptr
  %81 = ptrtoint ptr %80 to i64
  %82 = load i32, ptr %79, align 4
  %conv.i.i11 = sext i32 %82 to i64
  store i64 %conv.i.i11, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %78, ptr %MEMORY, align 8
  br label %inst_401526

inst_4014a3:                                      ; preds = %inst_4014a0, %1400
  %83 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %83, ptr @RIP_2472_1e56970, align 8
  %84 = add i64 %83, 3
  store volatile i64 %84, ptr %NEXT_PC, align 8
  %85 = load i64, ptr @RBP_2328_1e56970, align 8
  %86 = sub i64 %85, 121
  %87 = load ptr, ptr %MEMORY, align 8
  %88 = inttoptr i64 %86 to ptr
  %89 = inttoptr i64 %86 to ptr
  %90 = ptrtoint ptr %89 to i64
  %91 = load i8, ptr %88, align 1
  store i8 %91, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %87, ptr %MEMORY, align 8
  br label %inst_4014a6

inst_401327:                                      ; preds = %729, %687
  %92 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %92, ptr @RIP_2472_1e56970, align 8
  %93 = add i64 %92, 3
  store volatile i64 %93, ptr %NEXT_PC, align 8
  %94 = load i64, ptr @RBP_2328_1e56970, align 8
  %95 = sub i64 %94, 24
  %96 = load ptr, ptr %MEMORY, align 8
  %97 = inttoptr i64 %95 to ptr
  %98 = inttoptr i64 %95 to ptr
  %99 = ptrtoint ptr %98 to i64
  %100 = load i32, ptr %97, align 4
  %conv.i.i14 = zext i32 %100 to i64
  store i64 %conv.i.i14, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %96, ptr %MEMORY, align 8
  br label %inst_40132a

inst_4013ac:                                      ; preds = %978
  %101 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %101, ptr @RIP_2472_1e56970, align 8
  %102 = add i64 %101, 10
  store volatile i64 %102, ptr %NEXT_PC, align 8
  %103 = load ptr, ptr %MEMORY, align 8
  store ptr @data_40219b, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %103, ptr %MEMORY, align 8
  br label %inst_4013b6

inst_401335:                                      ; preds = %729, %687
  %104 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %104, ptr @RIP_2472_1e56970, align 8
  %105 = add i64 %104, 3
  store volatile i64 %105, ptr %NEXT_PC, align 8
  %106 = load i64, ptr @RBP_2328_1e56970, align 8
  %107 = sub i64 %106, 20
  %108 = load ptr, ptr %MEMORY, align 8
  %109 = inttoptr i64 %107 to ptr
  %110 = inttoptr i64 %107 to ptr
  %111 = ptrtoint ptr %110 to i64
  %112 = load i32, ptr %109, align 4
  %conv.i.i19 = zext i32 %112 to i64
  store i64 %conv.i.i19, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %108, ptr %MEMORY, align 8
  br label %inst_401338

inst_40143b:                                      ; preds = %1209
  %113 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %113, ptr @RIP_2472_1e56970, align 8
  %114 = add i64 %113, 4
  store volatile i64 %114, ptr %NEXT_PC, align 8
  %115 = load i64, ptr @RBP_2328_1e56970, align 8
  %116 = sub i64 %115, 20
  %117 = load ptr, ptr %MEMORY, align 8
  %118 = inttoptr i64 %116 to ptr
  %119 = inttoptr i64 %116 to ptr
  %120 = ptrtoint ptr %119 to i64
  %121 = load i32, ptr %118, align 4
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i22 = and i32 %121, 255
  %122 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i22) #15, !range !1315
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i25 = icmp eq i32 %121, 0
  %conv5.i.i.i26 = zext i1 %cmp.i24.i.i.i25 to i8
  store i8 %conv5.i.i.i26, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i28 = lshr i32 %121, 31
  %126 = trunc i32 %res.lobit.i.i.i28 to i8
  store i8 %126, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i30 = lshr i32 %121, 31
  %xor3.i.i.i.i31 = xor i32 %res.lobit.i.i.i28, %shr.i.i.i.i30
  %add.i.i.i.i32 = add nuw nsw i32 %xor3.i.i.i.i31, %shr.i.i.i.i30
  %cmp.i.i.i.i33 = icmp eq i32 %add.i.i.i.i32, 2
  %conv11.i.i.i34 = zext i1 %cmp.i.i.i.i33 to i8
  store i8 %conv11.i.i.i34, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %117, ptr %MEMORY, align 8
  br label %inst_40143f

inst_401343:                                      ; preds = %729, %687
  %127 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %127, ptr @RIP_2472_1e56970, align 8
  %128 = add i64 %127, 3
  store volatile i64 %128, ptr %NEXT_PC, align 8
  %129 = load i64, ptr @RBP_2328_1e56970, align 8
  %130 = sub i64 %129, 20
  %131 = load ptr, ptr %MEMORY, align 8
  %132 = inttoptr i64 %130 to ptr
  %133 = inttoptr i64 %130 to ptr
  %134 = ptrtoint ptr %133 to i64
  %135 = load i32, ptr %132, align 4
  %conv.i.i37 = zext i32 %135 to i64
  store i64 %conv.i.i37, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %131, ptr %MEMORY, align 8
  br label %inst_401346

inst_401445:                                      ; preds = %1223
  %136 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %136, ptr @RIP_2472_1e56970, align 8
  %137 = add i64 %136, 4
  store volatile i64 %137, ptr %NEXT_PC, align 8
  %138 = load i64, ptr @RBP_2328_1e56970, align 8
  %139 = sub i64 %138, 20
  %140 = load ptr, ptr %MEMORY, align 8
  %141 = inttoptr i64 %139 to ptr
  %142 = inttoptr i64 %139 to ptr
  %143 = ptrtoint ptr %142 to i64
  %144 = load i32, ptr %141, align 4
  %sub.i.i39 = sub i32 %144, 11
  %cmp.i.i.i40 = icmp ult i32 %144, 11
  %conv.i12.i41 = zext i1 %cmp.i.i.i40 to i8
  store i8 %conv.i12.i41, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i43 = and i32 %sub.i.i39, 255
  %145 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i43) #15, !range !1315
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i45 = xor i32 %144, 11
  %xor1.i.i.i.i46 = xor i32 %xor.i25.i.i.i45, %sub.i.i39
  %and.i.i.i.i47 = lshr i32 %xor1.i.i.i.i46, 4
  %149 = trunc i32 %and.i.i.i.i47 to i8
  %150 = and i8 %149, 1
  store i8 %150, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i49 = icmp eq i32 %sub.i.i39, 0
  %conv5.i.i.i50 = zext i1 %cmp.i24.i.i.i49 to i8
  store i8 %conv5.i.i.i50, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i52 = lshr i32 %sub.i.i39, 31
  %151 = trunc i32 %res.lobit.i.i.i52 to i8
  store i8 %151, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i54 = lshr i32 %144, 31
  %xor3.i.i.i.i55 = xor i32 %res.lobit.i.i.i52, %shr.i.i.i.i54
  %add.i.i.i.i56 = add nuw nsw i32 %xor3.i.i.i.i55, %shr.i.i.i.i54
  %cmp.i.i.i.i57 = icmp eq i32 %add.i.i.i.i56, 2
  %conv11.i.i.i58 = zext i1 %cmp.i.i.i.i57 to i8
  store i8 %conv11.i.i.i58, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %140, ptr %MEMORY, align 8
  br label %inst_401449

inst_40144f:                                      ; preds = %1235, %1222, %1208, %1139
  %152 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %152, ptr @RIP_2472_1e56970, align 8
  %153 = add i64 %152, 3
  store volatile i64 %153, ptr %NEXT_PC, align 8
  %154 = load i64, ptr @RBP_2328_1e56970, align 8
  %155 = sub i64 %154, 28
  %156 = load ptr, ptr %MEMORY, align 8
  %157 = inttoptr i64 %155 to ptr
  %158 = inttoptr i64 %155 to ptr
  %159 = ptrtoint ptr %158 to i64
  %160 = load i32, ptr %157, align 4
  %conv.i.i61 = zext i32 %160 to i64
  store i64 %conv.i.i61, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %156, ptr %MEMORY, align 8
  br label %inst_401452

inst_401351:                                      ; preds = %729, %687, %668
  %161 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %161, ptr @RIP_2472_1e56970, align 8
  %162 = add i64 %161, 10
  store volatile i64 %162, ptr %NEXT_PC, align 8
  %163 = load ptr, ptr %MEMORY, align 8
  store ptr @data_402164, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %163, ptr %MEMORY, align 8
  br label %inst_40135b

inst_4012da:                                      ; preds = %inst_40155a, %inst_4012d5
  %164 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %164, ptr @RIP_2472_1e56970, align 8
  %165 = add i64 %164, 4
  store volatile i64 %165, ptr %NEXT_PC, align 8
  %166 = load i64, ptr @RBP_2328_1e56970, align 8
  %167 = sub i64 %166, 36
  %168 = load ptr, ptr %MEMORY, align 8
  %169 = inttoptr i64 %167 to ptr
  %170 = inttoptr i64 %167 to ptr
  %171 = ptrtoint ptr %170 to i64
  %172 = load i32, ptr %169, align 4
  %sub.i.i84 = sub i32 %172, 28
  %cmp.i.i.i85 = icmp ult i32 %172, 28
  %conv.i12.i86 = zext i1 %cmp.i.i.i85 to i8
  store i8 %conv.i12.i86, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i88 = and i32 %sub.i.i84, 255
  %173 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i88) #15, !range !1315
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i90 = xor i32 %172, 28
  %xor1.i.i.i.i91 = xor i32 %xor.i25.i.i.i90, %sub.i.i84
  %and.i.i.i.i92 = lshr i32 %xor1.i.i.i.i91, 4
  %177 = trunc i32 %and.i.i.i.i92 to i8
  %178 = and i8 %177, 1
  store i8 %178, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i94 = icmp eq i32 %sub.i.i84, 0
  %conv5.i.i.i95 = zext i1 %cmp.i24.i.i.i94 to i8
  store i8 %conv5.i.i.i95, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i97 = lshr i32 %sub.i.i84, 31
  %179 = trunc i32 %res.lobit.i.i.i97 to i8
  store i8 %179, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i99 = lshr i32 %172, 31
  %xor3.i.i.i.i100 = xor i32 %res.lobit.i.i.i97, %shr.i.i.i.i99
  %add.i.i.i.i101 = add nuw nsw i32 %xor3.i.i.i.i100, %shr.i.i.i.i99
  %cmp.i.i.i.i102 = icmp eq i32 %add.i.i.i.i101, 2
  %conv11.i.i.i103 = zext i1 %cmp.i.i.i.i102 to i8
  store i8 %conv11.i.i.i103, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %168, ptr %MEMORY, align 8
  br label %inst_4012de

inst_40145b:                                      ; preds = %inst_401458, %1234, %1128
  %180 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %180, ptr @RIP_2472_1e56970, align 8
  %181 = add i64 %180, 3
  store volatile i64 %181, ptr %NEXT_PC, align 8
  %182 = load i64, ptr @RBP_2328_1e56970, align 8
  %183 = sub i64 %182, 20
  %184 = load ptr, ptr %MEMORY, align 8
  %185 = inttoptr i64 %183 to ptr
  %186 = inttoptr i64 %183 to ptr
  %187 = ptrtoint ptr %186 to i64
  %188 = load i32, ptr %185, align 4
  %conv.i.i106 = zext i32 %188 to i64
  store i64 %conv.i.i106, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  store volatile ptr %184, ptr %MEMORY, align 8
  br label %inst_40145e

inst_4013df:                                      ; preds = %inst_4013da, %977
  %189 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %189, ptr @RIP_2472_1e56970, align 8
  %190 = add i64 %189, 4
  store volatile i64 %190, ptr %NEXT_PC, align 8
  %191 = load i64, ptr @RBP_2328_1e56970, align 8
  %192 = sub i64 %191, 24
  %193 = load ptr, ptr %MEMORY, align 8
  %194 = inttoptr i64 %192 to ptr
  %195 = inttoptr i64 %192 to ptr
  %196 = ptrtoint ptr %195 to i64
  %197 = load i32, ptr %194, align 4
  %conv.i.i108 = sext i32 %197 to i64
  store i64 %conv.i.i108, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %193, ptr %MEMORY, align 8
  br label %inst_4013e3

inst_40155f:                                      ; preds = %566
  %198 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %198, ptr @RIP_2472_1e56970, align 8
  %199 = add i64 %198, 10
  store volatile i64 %199, ptr %NEXT_PC, align 8
  %200 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4021e6, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %200, ptr %MEMORY, align 8
  br label %inst_401569

inst_4012e4:                                      ; preds = %567
  %201 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %201, ptr @RIP_2472_1e56970, align 8
  %202 = add i64 %201, 3
  store volatile i64 %202, ptr %NEXT_PC, align 8
  %203 = load i64, ptr @RBP_2328_1e56970, align 8
  %204 = sub i64 %203, 20
  %205 = load ptr, ptr %MEMORY, align 8
  %206 = inttoptr i64 %204 to ptr
  %207 = inttoptr i64 %204 to ptr
  %208 = ptrtoint ptr %207 to i64
  %209 = load i32, ptr %206, align 4
  %conv.i.i110 = zext i32 %209 to i64
  store i64 %conv.i.i110, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %205, ptr %MEMORY, align 8
  br label %inst_4012e7

inst_4014f5:                                      ; preds = %1551
  %210 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %210, ptr @RIP_2472_1e56970, align 8
  %211 = add i64 %210, 3
  store volatile i64 %211, ptr %NEXT_PC, align 8
  %212 = load i64, ptr @RBP_2328_1e56970, align 8
  %213 = sub i64 %212, 32
  %214 = load ptr, ptr %MEMORY, align 8
  %215 = inttoptr i64 %213 to ptr
  %216 = inttoptr i64 %213 to ptr
  %217 = ptrtoint ptr %216 to i64
  %218 = load i32, ptr %215, align 4
  %conv.i.i112 = zext i32 %218 to i64
  store i64 %conv.i.i112, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %214, ptr %MEMORY, align 8
  br label %inst_4014f8

inst_401201:                                      ; preds = %inst_401200
  %219 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %219, ptr @RIP_2472_1e56970, align 8
  %220 = add i64 %219, 3
  store volatile i64 %220, ptr %NEXT_PC, align 8
  %221 = load i64, ptr @RSP_2312_1e56970, align 8
  %222 = load ptr, ptr %MEMORY, align 8
  store i64 %221, ptr @RBP_2328_1e56970, align 8, !tbaa !1293
  store volatile ptr %222, ptr %MEMORY, align 8
  br label %inst_401204

inst_401204:                                      ; preds = %inst_401201
  %223 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %223, ptr @RIP_2472_1e56970, align 8
  %224 = add i64 %223, 7
  store volatile i64 %224, ptr %NEXT_PC, align 8
  %225 = load i64, ptr @RSP_2312_1e56970, align 8
  %226 = load ptr, ptr %MEMORY, align 8
  %sub.i.i116 = sub i64 %225, 144
  store i64 %sub.i.i116, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i117 = icmp ult i64 %225, 144
  %conv.i.i118 = zext i1 %cmp.i.i.i117 to i8
  store i8 %conv.i.i118, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i120 = trunc i64 %sub.i.i116 to i32
  %conv.i.i.i.i.i121 = and i32 %conv.i.i.i.i120, 255
  %227 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i121) #15, !range !1315
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i123 = xor i64 144, %225
  %xor1.i.i.i.i124 = xor i64 %xor.i25.i.i.i123, %sub.i.i116
  %and.i.i.i.i125 = lshr i64 %xor1.i.i.i.i124, 4
  %231 = trunc i64 %and.i.i.i.i125 to i8
  %232 = and i8 %231, 1
  store i8 %232, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i127 = icmp eq i64 %sub.i.i116, 0
  %conv5.i.i.i128 = zext i1 %cmp.i24.i.i.i127 to i8
  store i8 %conv5.i.i.i128, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i130 = lshr i64 %sub.i.i116, 63
  %233 = trunc i64 %res.lobit.i.i.i130 to i8
  store i8 %233, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i132 = lshr i64 %225, 63
  %xor3.i.i.i.i133 = xor i64 %res.lobit.i.i.i130, %shr.i.i.i.i132
  %add.i.i.i.i134 = add nuw nsw i64 %xor3.i.i.i.i133, %shr.i.i.i.i132
  %cmp.i.i.i.i135 = icmp eq i64 %add.i.i.i.i134, 2
  %conv11.i.i.i136 = zext i1 %cmp.i.i.i.i135 to i8
  store i8 %conv11.i.i.i136, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %226, ptr %MEMORY, align 8
  br label %inst_40120b

inst_40120b:                                      ; preds = %inst_401204
  %234 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %234, ptr @RIP_2472_1e56970, align 8
  %235 = add i64 %234, 7
  store volatile i64 %235, ptr %NEXT_PC, align 8
  %236 = load i64, ptr @RBP_2328_1e56970, align 8
  %237 = sub i64 %236, 4
  %238 = load ptr, ptr %MEMORY, align 8
  %239 = inttoptr i64 %237 to ptr
  %240 = inttoptr i64 %237 to ptr
  %241 = ptrtoint ptr %240 to i64
  store i32 0, ptr %239, align 4
  store volatile ptr %238, ptr %MEMORY, align 8
  br label %inst_401212

inst_401212:                                      ; preds = %inst_40120b
  %242 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %242, ptr @RIP_2472_1e56970, align 8
  %243 = add i64 %242, 3
  store volatile i64 %243, ptr %NEXT_PC, align 8
  %244 = load i64, ptr @RBP_2328_1e56970, align 8
  %245 = sub i64 %244, 8
  %246 = load i32, ptr @RDI_2296_1e56958, align 4
  %247 = zext i32 %246 to i64
  %248 = load ptr, ptr %MEMORY, align 8
  %249 = inttoptr i64 %245 to ptr
  %250 = inttoptr i64 %245 to ptr
  %251 = ptrtoint ptr %250 to i64
  store i32 %246, ptr %249, align 4
  store volatile ptr %248, ptr %MEMORY, align 8
  br label %inst_401215

inst_401215:                                      ; preds = %inst_401212
  %252 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %252, ptr @RIP_2472_1e56970, align 8
  %253 = add i64 %252, 4
  store volatile i64 %253, ptr %NEXT_PC, align 8
  %254 = load i64, ptr @RBP_2328_1e56970, align 8
  %255 = sub i64 %254, 16
  %256 = load i64, ptr @RSI_2280_1e56970, align 8
  %257 = load ptr, ptr %MEMORY, align 8
  %258 = inttoptr i64 %255 to ptr
  %259 = inttoptr i64 %255 to ptr
  %260 = ptrtoint ptr %259 to i64
  store i64 %256, ptr %258, align 8
  store volatile ptr %257, ptr %MEMORY, align 8
  br label %inst_401219

inst_401219:                                      ; preds = %inst_401215
  %261 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %261, ptr @RIP_2472_1e56970, align 8
  %262 = add i64 %261, 7
  store volatile i64 %262, ptr %NEXT_PC, align 8
  %263 = load i64, ptr @RBP_2328_1e56970, align 8
  %264 = sub i64 %263, 36
  %265 = load ptr, ptr %MEMORY, align 8
  %266 = inttoptr i64 %264 to ptr
  %267 = inttoptr i64 %264 to ptr
  %268 = ptrtoint ptr %267 to i64
  store i32 0, ptr %266, align 4
  store volatile ptr %265, ptr %MEMORY, align 8
  br label %inst_401220

inst_401220:                                      ; preds = %inst_401219
  %269 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %269, ptr @RIP_2472_1e56970, align 8
  %270 = add i64 %269, 7
  store volatile i64 %270, ptr %NEXT_PC, align 8
  %271 = load i64, ptr @RBP_2328_1e56970, align 8
  %272 = sub i64 %271, 20
  %273 = load ptr, ptr %MEMORY, align 8
  %274 = inttoptr i64 %272 to ptr
  %275 = inttoptr i64 %272 to ptr
  %276 = ptrtoint ptr %275 to i64
  store i32 1, ptr %274, align 4
  store volatile ptr %273, ptr %MEMORY, align 8
  br label %inst_401227

inst_401227:                                      ; preds = %inst_401220
  %277 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %277, ptr @RIP_2472_1e56970, align 8
  %278 = add i64 %277, 7
  store volatile i64 %278, ptr %NEXT_PC, align 8
  %279 = load i64, ptr @RBP_2328_1e56970, align 8
  %280 = sub i64 %279, 24
  %281 = load ptr, ptr %MEMORY, align 8
  %282 = inttoptr i64 %280 to ptr
  %283 = inttoptr i64 %280 to ptr
  %284 = ptrtoint ptr %283 to i64
  store i32 1, ptr %282, align 4
  store volatile ptr %281, ptr %MEMORY, align 8
  br label %inst_40122e

inst_40122e:                                      ; preds = %inst_401227
  %285 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %285, ptr @RIP_2472_1e56970, align 8
  %286 = add i64 %285, 4
  store volatile i64 %286, ptr %NEXT_PC, align 8
  %287 = load i64, ptr @RBP_2328_1e56970, align 8
  %288 = sub i64 %287, 24
  %289 = load ptr, ptr %MEMORY, align 8
  %290 = inttoptr i64 %288 to ptr
  %291 = inttoptr i64 %288 to ptr
  %292 = ptrtoint ptr %291 to i64
  %293 = load i32, ptr %290, align 4
  %conv.i.i146 = sext i32 %293 to i64
  store i64 %conv.i.i146, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %289, ptr %MEMORY, align 8
  br label %inst_401232

inst_401232:                                      ; preds = %inst_40122e
  %294 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %294, ptr @RIP_2472_1e56970, align 8
  %295 = add i64 %294, 7
  store volatile i64 %295, ptr %NEXT_PC, align 8
  %296 = load i64, ptr @RAX_2216_1e56970, align 8
  %297 = load ptr, ptr %MEMORY, align 8
  %298 = ashr i64 %296, 63
  %L.sroa.2.0.insert.ext.i.i = zext i64 %298 to i128
  %L.sroa.2.0.insert.shift.i.i = shl nuw i128 %L.sroa.2.0.insert.ext.i.i, 64
  %L.sroa.0.0.insert.ext.i.i = zext i64 %296 to i128
  %L.sroa.0.0.insert.insert.i.i = or i128 %L.sroa.2.0.insert.shift.i.i, %L.sroa.0.0.insert.ext.i.i
  %mul.i.i = mul nsw i128 11, %L.sroa.0.0.insert.insert.i.i
  %retval.sroa.0.0.extract.trunc.i.i = trunc i128 %mul.i.i to i64
  store i64 %retval.sroa.0.0.extract.trunc.i.i, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %conv4.i.i.i = sext i64 %retval.sroa.0.0.extract.trunc.i.i to i128
  %cmp.i.i.i147 = icmp ne i128 %mul.i.i, %conv4.i.i.i
  %frombool.i.i = zext i1 %cmp.i.i.i147 to i8
  store i8 %frombool.i.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i = trunc i128 %mul.i.i to i32
  %conv.i.i.i.i149 = and i32 %conv.i.i.i, 255
  %299 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i149) #15, !range !1315
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store i8 0, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res_trunc.lobit.i.i = lshr i64 %retval.sroa.0.0.extract.trunc.i.i, 63
  %303 = trunc i64 %res_trunc.lobit.i.i to i8
  store i8 %303, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 %frombool.i.i, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %297, ptr %MEMORY, align 8
  br label %inst_401239

inst_401239:                                      ; preds = %inst_401232
  %304 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %304, ptr @RIP_2472_1e56970, align 8
  %305 = add i64 %304, 10
  store volatile i64 %305, ptr %NEXT_PC, align 8
  %306 = load ptr, ptr %MEMORY, align 8
  store ptr @data_404050, ptr @RCX_2248_1e61d30, align 8
  store volatile ptr %306, ptr %MEMORY, align 8
  br label %inst_401243

inst_401243:                                      ; preds = %inst_401239
  %307 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %307, ptr @RIP_2472_1e56970, align 8
  %308 = add i64 %307, 3
  store volatile i64 %308, ptr %NEXT_PC, align 8
  %309 = load i64, ptr @RCX_2248_1e56970, align 8
  %310 = load i64, ptr @RAX_2216_1e56970, align 8
  %311 = load ptr, ptr %MEMORY, align 8
  %add.i.i154 = add i64 %310, %309
  store i64 %add.i.i154, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i155 = icmp ult i64 %add.i.i154, %309
  %cmp1.i.i.i156 = icmp ult i64 %add.i.i154, %310
  %312 = or i1 %cmp.i.i.i155, %cmp1.i.i.i156
  %conv.i.i157 = zext i1 %312 to i8
  store i8 %conv.i.i157, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i159 = trunc i64 %add.i.i154 to i32
  %conv.i.i.i.i.i160 = and i32 %conv.i.i.i.i159, 255
  %313 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i160) #15, !range !1315
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i162 = xor i64 %310, %309
  %xor1.i.i.i.i163 = xor i64 %xor.i25.i.i.i162, %add.i.i154
  %and.i.i.i.i164 = lshr i64 %xor1.i.i.i.i163, 4
  %317 = trunc i64 %and.i.i.i.i164 to i8
  %318 = and i8 %317, 1
  store i8 %318, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i166 = icmp eq i64 %add.i.i154, 0
  %conv5.i.i.i167 = zext i1 %cmp.i24.i.i.i166 to i8
  store i8 %conv5.i.i.i167, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i169 = lshr i64 %add.i.i154, 63
  %319 = trunc i64 %res.lobit.i.i.i169 to i8
  store i8 %319, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i171 = lshr i64 %309, 63
  %shr1.i.i.i.i = lshr i64 %310, 63
  %xor.i.i.i.i172 = xor i64 %res.lobit.i.i.i169, %shr.i.i.i.i171
  %xor3.i.i.i.i173 = xor i64 %res.lobit.i.i.i169, %shr1.i.i.i.i
  %add.i.i.i.i174 = add nuw nsw i64 %xor.i.i.i.i172, %xor3.i.i.i.i173
  %cmp.i.i.i.i175 = icmp eq i64 %add.i.i.i.i174, 2
  %conv11.i.i.i176 = zext i1 %cmp.i.i.i.i175 to i8
  store i8 %conv11.i.i.i176, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %311, ptr %MEMORY, align 8
  br label %inst_401246

inst_401246:                                      ; preds = %inst_401243
  %320 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %320, ptr @RIP_2472_1e56970, align 8
  %321 = add i64 %320, 4
  store volatile i64 %321, ptr %NEXT_PC, align 8
  %322 = load i64, ptr @RBP_2328_1e56970, align 8
  %323 = sub i64 %322, 20
  %324 = load ptr, ptr %MEMORY, align 8
  %325 = inttoptr i64 %323 to ptr
  %326 = inttoptr i64 %323 to ptr
  %327 = ptrtoint ptr %326 to i64
  %328 = load i32, ptr %325, align 4
  %conv.i.i180 = sext i32 %328 to i64
  store i64 %conv.i.i180, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %324, ptr %MEMORY, align 8
  br label %inst_40124a

inst_40124a:                                      ; preds = %inst_401246
  %329 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %329, ptr @RIP_2472_1e56970, align 8
  %330 = add i64 %329, 4
  store volatile i64 %330, ptr %NEXT_PC, align 8
  %331 = load i64, ptr @RCX_2248_1e56970, align 8
  %332 = load i64, ptr @RAX_2216_1e56970, align 8
  %333 = mul i64 %332, 1
  %334 = add i64 %331, %333
  %335 = load ptr, ptr %MEMORY, align 8
  %336 = inttoptr i64 %334 to ptr
  %337 = inttoptr i64 %334 to ptr
  %338 = ptrtoint ptr %337 to i64
  store i8 88, ptr %336, align 1
  store volatile ptr %335, ptr %MEMORY, align 8
  br label %inst_40124e

inst_40124e:                                      ; preds = %inst_40124a
  %339 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %339, ptr @RIP_2472_1e56970, align 8
  %340 = add i64 %339, 10
  store volatile i64 %340, ptr %NEXT_PC, align 8
  %341 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4020c3, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %341, ptr %MEMORY, align 8
  br label %inst_401258

inst_401258:                                      ; preds = %inst_40124e
  %342 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %342, ptr @RIP_2472_1e56970, align 8
  %343 = add i64 %342, 5
  store volatile i64 %343, ptr %NEXT_PC, align 8
  %344 = load ptr, ptr %MEMORY, align 8
  store i64 11, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  store volatile ptr %344, ptr %MEMORY, align 8
  br label %inst_40125d

inst_40125d:                                      ; preds = %inst_401258
  %345 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %345, ptr @RIP_2472_1e56970, align 8
  %346 = add i64 %345, 5
  store volatile i64 %346, ptr %NEXT_PC, align 8
  %347 = load ptr, ptr %MEMORY, align 8
  store i64 7, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %347, ptr %MEMORY, align 8
  br label %inst_401262

inst_401262:                                      ; preds = %inst_40125d
  %348 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %348, ptr @RIP_2472_1e56970, align 8
  %349 = add i64 %348, 2
  store volatile i64 %349, ptr %NEXT_PC, align 8
  %350 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %350, ptr %MEMORY, align 8
  br label %inst_401264

inst_401264:                                      ; preds = %inst_401262
  %351 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %351, ptr @RIP_2472_1e56970, align 8
  %352 = add i64 %351, 5
  store volatile i64 %352, ptr %NEXT_PC, align 8
  %353 = load i64, ptr %NEXT_PC, align 8
  %354 = sub i64 %353, 569
  %355 = load i64, ptr %NEXT_PC, align 8
  %356 = load ptr, ptr %MEMORY, align 8
  %357 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i211 = add i64 %357, -8
  %358 = inttoptr i64 %sub.i.i211 to ptr
  %359 = inttoptr i64 %sub.i.i211 to ptr
  %360 = ptrtoint ptr %359 to i64
  store i64 %355, ptr %358, align 8
  store i64 %sub.i.i211, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %354, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %354, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %355, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %356, ptr %MEMORY, align 8
  %361 = load ptr, ptr %MEMORY, align 8
  %362 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %361)
  store ptr %362, ptr %MEMORY, align 8
  store ptr @data_401269, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401269 to i64), ptr %NEXT_PC, align 8
  br label %inst_401269

inst_401269:                                      ; preds = %inst_401264
  %363 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %363, ptr @RIP_2472_1e56970, align 8
  %364 = add i64 %363, 3
  store volatile i64 %364, ptr %NEXT_PC, align 8
  %365 = load i64, ptr @RBP_2328_1e56970, align 8
  %366 = sub i64 %365, 20
  %367 = load ptr, ptr %MEMORY, align 8
  %368 = inttoptr i64 %366 to ptr
  %369 = inttoptr i64 %366 to ptr
  %370 = ptrtoint ptr %369 to i64
  %371 = load i32, ptr %368, align 4
  %conv.i.i215 = zext i32 %371 to i64
  store i64 %conv.i.i215, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  store volatile ptr %367, ptr %MEMORY, align 8
  br label %inst_40126c

inst_40126c:                                      ; preds = %inst_401269
  %372 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %372, ptr @RIP_2472_1e56970, align 8
  %373 = add i64 %372, 3
  store volatile i64 %373, ptr %NEXT_PC, align 8
  %374 = load i64, ptr @RBP_2328_1e56970, align 8
  %375 = sub i64 %374, 24
  %376 = load ptr, ptr %MEMORY, align 8
  %377 = inttoptr i64 %375 to ptr
  %378 = inttoptr i64 %375 to ptr
  %379 = ptrtoint ptr %378 to i64
  %380 = load i32, ptr %377, align 4
  %conv.i.i217 = zext i32 %380 to i64
  store i64 %conv.i.i217, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %376, ptr %MEMORY, align 8
  br label %inst_40126f

inst_40126f:                                      ; preds = %inst_40126c
  %381 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %381, ptr @RIP_2472_1e56970, align 8
  %382 = add i64 %381, 10
  store volatile i64 %382, ptr %NEXT_PC, align 8
  %383 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4020db, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %383, ptr %MEMORY, align 8
  br label %inst_401279

inst_401279:                                      ; preds = %inst_40126f
  %384 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %384, ptr @RIP_2472_1e56970, align 8
  %385 = add i64 %384, 3
  store volatile i64 %385, ptr %NEXT_PC, align 8
  %386 = load i64, ptr @RBP_2328_1e56970, align 8
  %387 = sub i64 %386, 68
  %388 = load i32, ptr @RAX_2216_1e56958, align 4
  %389 = zext i32 %388 to i64
  %390 = load ptr, ptr %MEMORY, align 8
  %391 = inttoptr i64 %387 to ptr
  %392 = inttoptr i64 %387 to ptr
  %393 = ptrtoint ptr %392 to i64
  store i32 %388, ptr %391, align 4
  store volatile ptr %390, ptr %MEMORY, align 8
  br label %inst_40127c

inst_40127c:                                      ; preds = %inst_401279
  %394 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %394, ptr @RIP_2472_1e56970, align 8
  %395 = add i64 %394, 2
  store volatile i64 %395, ptr %NEXT_PC, align 8
  %396 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %396, ptr %MEMORY, align 8
  br label %inst_40127e

inst_40127e:                                      ; preds = %inst_40127c
  %397 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %397, ptr @RIP_2472_1e56970, align 8
  %398 = add i64 %397, 5
  store volatile i64 %398, ptr %NEXT_PC, align 8
  %399 = load i64, ptr %NEXT_PC, align 8
  %400 = sub i64 %399, 595
  %401 = load i64, ptr %NEXT_PC, align 8
  %402 = load ptr, ptr %MEMORY, align 8
  %403 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i266 = add i64 %403, -8
  %404 = inttoptr i64 %sub.i.i266 to ptr
  %405 = inttoptr i64 %sub.i.i266 to ptr
  %406 = ptrtoint ptr %405 to i64
  store i64 %401, ptr %404, align 8
  store i64 %sub.i.i266, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %400, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %400, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %401, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %402, ptr %MEMORY, align 8
  %407 = load ptr, ptr %MEMORY, align 8
  %408 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %407)
  store ptr %408, ptr %MEMORY, align 8
  store ptr @data_401283, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401283 to i64), ptr %NEXT_PC, align 8
  br label %inst_401283

inst_401283:                                      ; preds = %inst_40127e
  %409 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %409, ptr @RIP_2472_1e56970, align 8
  %410 = add i64 %409, 3
  store volatile i64 %410, ptr %NEXT_PC, align 8
  %411 = load i64, ptr @RBP_2328_1e56970, align 8
  %412 = sub i64 %411, 36
  %413 = load ptr, ptr %MEMORY, align 8
  %414 = inttoptr i64 %412 to ptr
  %415 = inttoptr i64 %412 to ptr
  %416 = ptrtoint ptr %415 to i64
  %417 = load i32, ptr %414, align 4
  %conv.i.i270 = zext i32 %417 to i64
  store i64 %conv.i.i270, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  store volatile ptr %413, ptr %MEMORY, align 8
  br label %inst_401286

inst_401286:                                      ; preds = %inst_401283
  %418 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %418, ptr @RIP_2472_1e56970, align 8
  %419 = add i64 %418, 10
  store volatile i64 %419, ptr %NEXT_PC, align 8
  %420 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4020f3, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %420, ptr %MEMORY, align 8
  br label %inst_401290

inst_401290:                                      ; preds = %inst_401286
  %421 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %421, ptr @RIP_2472_1e56970, align 8
  %422 = add i64 %421, 3
  store volatile i64 %422, ptr %NEXT_PC, align 8
  %423 = load i64, ptr @RBP_2328_1e56970, align 8
  %424 = sub i64 %423, 72
  %425 = load i32, ptr @RAX_2216_1e56958, align 4
  %426 = zext i32 %425 to i64
  %427 = load ptr, ptr %MEMORY, align 8
  %428 = inttoptr i64 %424 to ptr
  %429 = inttoptr i64 %424 to ptr
  %430 = ptrtoint ptr %429 to i64
  store i32 %425, ptr %428, align 4
  store volatile ptr %427, ptr %MEMORY, align 8
  br label %inst_401293

inst_401293:                                      ; preds = %inst_401290
  %431 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %431, ptr @RIP_2472_1e56970, align 8
  %432 = add i64 %431, 2
  store volatile i64 %432, ptr %NEXT_PC, align 8
  %433 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %433, ptr %MEMORY, align 8
  br label %inst_401295

inst_401295:                                      ; preds = %inst_401293
  %434 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %434, ptr @RIP_2472_1e56970, align 8
  %435 = add i64 %434, 5
  store volatile i64 %435, ptr %NEXT_PC, align 8
  %436 = load i64, ptr %NEXT_PC, align 8
  %437 = sub i64 %436, 618
  %438 = load i64, ptr %NEXT_PC, align 8
  %439 = load ptr, ptr %MEMORY, align 8
  %440 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i277 = add i64 %440, -8
  %441 = inttoptr i64 %sub.i.i277 to ptr
  %442 = inttoptr i64 %sub.i.i277 to ptr
  %443 = ptrtoint ptr %442 to i64
  store i64 %438, ptr %441, align 8
  store i64 %sub.i.i277, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %437, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %437, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %438, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %439, ptr %MEMORY, align 8
  %444 = load ptr, ptr %MEMORY, align 8
  %445 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %444)
  store ptr %445, ptr %MEMORY, align 8
  store ptr @data_40129a, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_40129a to i64), ptr %NEXT_PC, align 8
  br label %inst_40129a

inst_40129a:                                      ; preds = %inst_401295
  %446 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %446, ptr @RIP_2472_1e56970, align 8
  %447 = add i64 %446, 10
  store volatile i64 %447, ptr %NEXT_PC, align 8
  %448 = load ptr, ptr %MEMORY, align 8
  store ptr @data_402105, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %448, ptr %MEMORY, align 8
  br label %inst_4012a4

inst_4012a4:                                      ; preds = %inst_40129a
  %449 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %449, ptr @RIP_2472_1e56970, align 8
  %450 = add i64 %449, 3
  store volatile i64 %450, ptr %NEXT_PC, align 8
  %451 = load i64, ptr @RBP_2328_1e56970, align 8
  %452 = sub i64 %451, 76
  %453 = load i32, ptr @RAX_2216_1e56958, align 4
  %454 = zext i32 %453 to i64
  %455 = load ptr, ptr %MEMORY, align 8
  %456 = inttoptr i64 %452 to ptr
  %457 = inttoptr i64 %452 to ptr
  %458 = ptrtoint ptr %457 to i64
  store i32 %453, ptr %456, align 4
  store volatile ptr %455, ptr %MEMORY, align 8
  br label %inst_4012a7

inst_4012a7:                                      ; preds = %inst_4012a4
  %459 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %459, ptr @RIP_2472_1e56970, align 8
  %460 = add i64 %459, 2
  store volatile i64 %460, ptr %NEXT_PC, align 8
  %461 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %461, ptr %MEMORY, align 8
  br label %inst_4012a9

inst_4012a9:                                      ; preds = %inst_4012a7
  %462 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %462, ptr @RIP_2472_1e56970, align 8
  %463 = add i64 %462, 5
  store volatile i64 %463, ptr %NEXT_PC, align 8
  %464 = load i64, ptr %NEXT_PC, align 8
  %465 = sub i64 %464, 638
  %466 = load i64, ptr %NEXT_PC, align 8
  %467 = load ptr, ptr %MEMORY, align 8
  %468 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i283 = add i64 %468, -8
  %469 = inttoptr i64 %sub.i.i283 to ptr
  %470 = inttoptr i64 %sub.i.i283 to ptr
  %471 = ptrtoint ptr %470 to i64
  store i64 %466, ptr %469, align 8
  store i64 %sub.i.i283, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %465, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %465, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %466, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %467, ptr %MEMORY, align 8
  %472 = load ptr, ptr %MEMORY, align 8
  %473 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %472)
  store ptr %473, ptr %MEMORY, align 8
  store ptr @data_4012ae, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4012ae to i64), ptr %NEXT_PC, align 8
  br label %inst_4012ae

inst_4012ae:                                      ; preds = %inst_4012a9
  %474 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %474, ptr @RIP_2472_1e56970, align 8
  %475 = add i64 %474, 10
  store volatile i64 %475, ptr %NEXT_PC, align 8
  %476 = load ptr, ptr %MEMORY, align 8
  store ptr @data_402148, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %476, ptr %MEMORY, align 8
  br label %inst_4012b8

inst_4012b8:                                      ; preds = %inst_4012ae
  %477 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %477, ptr @RIP_2472_1e56970, align 8
  %478 = add i64 %477, 3
  store volatile i64 %478, ptr %NEXT_PC, align 8
  %479 = load i64, ptr @RBP_2328_1e56970, align 8
  %480 = sub i64 %479, 80
  %481 = load i32, ptr @RAX_2216_1e56958, align 4
  %482 = zext i32 %481 to i64
  %483 = load ptr, ptr %MEMORY, align 8
  %484 = inttoptr i64 %480 to ptr
  %485 = inttoptr i64 %480 to ptr
  %486 = ptrtoint ptr %485 to i64
  store i32 %481, ptr %484, align 4
  store volatile ptr %483, ptr %MEMORY, align 8
  br label %inst_4012bb

inst_4012bb:                                      ; preds = %inst_4012b8
  %487 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %487, ptr @RIP_2472_1e56970, align 8
  %488 = add i64 %487, 2
  store volatile i64 %488, ptr %NEXT_PC, align 8
  %489 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %489, ptr %MEMORY, align 8
  br label %inst_4012bd

inst_4012bd:                                      ; preds = %inst_4012bb
  %490 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %490, ptr @RIP_2472_1e56970, align 8
  %491 = add i64 %490, 5
  store volatile i64 %491, ptr %NEXT_PC, align 8
  %492 = load i64, ptr %NEXT_PC, align 8
  %493 = sub i64 %492, 658
  %494 = load i64, ptr %NEXT_PC, align 8
  %495 = load ptr, ptr %MEMORY, align 8
  %496 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i316 = add i64 %496, -8
  %497 = inttoptr i64 %sub.i.i316 to ptr
  %498 = inttoptr i64 %sub.i.i316 to ptr
  %499 = ptrtoint ptr %498 to i64
  store i64 %494, ptr %497, align 8
  store i64 %sub.i.i316, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %493, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %493, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %494, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %495, ptr %MEMORY, align 8
  %500 = load ptr, ptr %MEMORY, align 8
  %501 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %500)
  store ptr %501, ptr %MEMORY, align 8
  store ptr @data_4012c2, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4012c2 to i64), ptr %NEXT_PC, align 8
  br label %inst_4012c2

inst_4012c2:                                      ; preds = %inst_4012bd
  %502 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %502, ptr @RIP_2472_1e56970, align 8
  %503 = add i64 %502, 3
  store volatile i64 %503, ptr %NEXT_PC, align 8
  %504 = load i64, ptr @RBP_2328_1e56970, align 8
  %505 = sub i64 %504, 84
  %506 = load i32, ptr @RAX_2216_1e56958, align 4
  %507 = zext i32 %506 to i64
  %508 = load ptr, ptr %MEMORY, align 8
  %509 = inttoptr i64 %505 to ptr
  %510 = inttoptr i64 %505 to ptr
  %511 = ptrtoint ptr %510 to i64
  store i32 %506, ptr %509, align 4
  store volatile ptr %508, ptr %MEMORY, align 8
  br label %inst_4012c5

inst_4012c5:                                      ; preds = %inst_4012c2
  %512 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %512, ptr @RIP_2472_1e56970, align 8
  %513 = add i64 %512, 5
  store volatile i64 %513, ptr %NEXT_PC, align 8
  %514 = load i64, ptr %NEXT_PC, align 8
  %515 = sub i64 %514, 362
  %516 = load i64, ptr %NEXT_PC, align 8
  %517 = load ptr, ptr %MEMORY, align 8
  %518 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i321 = add i64 %518, -8
  %519 = inttoptr i64 %sub.i.i321 to ptr
  %520 = inttoptr i64 %sub.i.i321 to ptr
  %521 = ptrtoint ptr %520 to i64
  store i64 %516, ptr %519, align 8
  store i64 %sub.i.i321, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %515, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %515, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %516, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %517, ptr %MEMORY, align 8
  %522 = load ptr, ptr %MEMORY, align 8
  %523 = call ptr @sub_401160_draw(ptr @__mcsema_reg_state, i64 undef, ptr %522)
  store ptr %523, ptr %MEMORY, align 8
  store ptr @data_4012ca, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4012ca to i64), ptr %NEXT_PC, align 8
  br label %inst_4012ca

inst_4012ca:                                      ; preds = %inst_4012c5
  %524 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %524, ptr @RIP_2472_1e56970, align 8
  %525 = add i64 %524, 2
  store volatile i64 %525, ptr %NEXT_PC, align 8
  %526 = load i32, ptr @RDI_2296_1e56958, align 4
  %527 = zext i32 %526 to i64
  %528 = load i32, ptr @RDI_2296_1e56958, align 4
  %529 = zext i32 %528 to i64
  %530 = load ptr, ptr %MEMORY, align 8
  %xor3.i26.i = xor i64 %529, %527
  %xor3.i.i = trunc i64 %xor3.i26.i to i32
  %conv.i24.i324 = and i64 %xor3.i26.i, 4294967295
  store i64 %conv.i24.i324, ptr @RDI_2296_1e56970, align 8, !tbaa !1293
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i326 = and i32 %xor3.i.i, 255
  %531 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i326) #15, !range !1315
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i = icmp eq i32 %xor3.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  store i8 %conv3.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i = lshr i32 %xor3.i.i, 31
  %535 = trunc i32 %res.lobit.i.i to i8
  store i8 %535, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %530, ptr %MEMORY, align 8
  br label %inst_4012cc

inst_4012cc:                                      ; preds = %inst_4012ca
  %536 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %536, ptr @RIP_2472_1e56970, align 8
  %537 = add i64 %536, 4
  store volatile i64 %537, ptr %NEXT_PC, align 8
  %538 = load i64, ptr @RBP_2328_1e56970, align 8
  %539 = sub i64 %538, 64
  %540 = load ptr, ptr %MEMORY, align 8
  store i64 %539, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  store volatile ptr %540, ptr %MEMORY, align 8
  br label %inst_4012d0

inst_4012d0:                                      ; preds = %inst_4012cc
  %541 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %541, ptr @RIP_2472_1e56970, align 8
  %542 = add i64 %541, 5
  store volatile i64 %542, ptr %NEXT_PC, align 8
  %543 = load ptr, ptr %MEMORY, align 8
  store i64 28, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %543, ptr %MEMORY, align 8
  br label %inst_4012d5

inst_4012d5:                                      ; preds = %inst_4012d0
  %544 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %544, ptr @RIP_2472_1e56970, align 8
  %545 = add i64 %544, 5
  store volatile i64 %545, ptr %NEXT_PC, align 8
  %546 = load i64, ptr %NEXT_PC, align 8
  %547 = sub i64 %546, 666
  %548 = load i64, ptr %NEXT_PC, align 8
  %549 = load ptr, ptr %MEMORY, align 8
  %550 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i363 = add i64 %550, -8
  %551 = inttoptr i64 %sub.i.i363 to ptr
  %552 = inttoptr i64 %sub.i.i363 to ptr
  %553 = ptrtoint ptr %552 to i64
  store i64 %548, ptr %551, align 8
  store i64 %sub.i.i363, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %547, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %547, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %548, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %549, ptr %MEMORY, align 8
  %554 = load ptr, ptr %MEMORY, align 8
  %555 = call ptr @ext_4040b8_read(ptr @__mcsema_reg_state, i64 undef, ptr %554)
  store ptr %555, ptr %MEMORY, align 8
  store ptr @data_4012da, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4012da to i64), ptr %NEXT_PC, align 8
  br label %inst_4012da

inst_4012de:                                      ; preds = %inst_4012da
  %556 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %556, ptr @RIP_2472_1e56970, align 8
  %557 = add i64 %556, 6
  store volatile i64 %557, ptr %NEXT_PC, align 8
  %558 = load i64, ptr %NEXT_PC, align 8
  %559 = add i64 %558, 635
  %560 = load i64, ptr %NEXT_PC, align 8
  %561 = load ptr, ptr %MEMORY, align 8
  %562 = load i8, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %tobool.i = icmp eq i8 %562, 0
  %563 = load i8, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  %tobool9.i = icmp ne i8 %563, 0
  %cmp.i.i = xor i1 %tobool.i, %tobool9.i
  %frombool.i366 = zext i1 %cmp.i.i to i8
  store i8 %frombool.i366, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i367 = select i1 %cmp.i.i, i64 %559, i64 %560
  store i64 %cond1.i.i367, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %561, ptr %MEMORY, align 8
  %564 = load i8, ptr %BRANCH_TAKEN, align 1
  %565 = icmp eq i8 %564, 1
  br i1 %565, label %566, label %567

566:                                              ; preds = %inst_4012de
  br label %inst_40155f

567:                                              ; preds = %inst_4012de
  br label %inst_4012e4

inst_4012e7:                                      ; preds = %inst_4012e4
  %568 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %568, ptr @RIP_2472_1e56970, align 8
  %569 = add i64 %568, 3
  store volatile i64 %569, ptr %NEXT_PC, align 8
  %570 = load i64, ptr @RBP_2328_1e56970, align 8
  %571 = sub i64 %570, 28
  %572 = load i32, ptr @RAX_2216_1e56958, align 4
  %573 = zext i32 %572 to i64
  %574 = load ptr, ptr %MEMORY, align 8
  %575 = inttoptr i64 %571 to ptr
  %576 = inttoptr i64 %571 to ptr
  %577 = ptrtoint ptr %576 to i64
  store i32 %572, ptr %575, align 4
  store volatile ptr %574, ptr %MEMORY, align 8
  br label %inst_4012ea

inst_4012ea:                                      ; preds = %inst_4012e7
  %578 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %578, ptr @RIP_2472_1e56970, align 8
  %579 = add i64 %578, 3
  store volatile i64 %579, ptr %NEXT_PC, align 8
  %580 = load i64, ptr @RBP_2328_1e56970, align 8
  %581 = sub i64 %580, 24
  %582 = load ptr, ptr %MEMORY, align 8
  %583 = inttoptr i64 %581 to ptr
  %584 = inttoptr i64 %581 to ptr
  %585 = ptrtoint ptr %584 to i64
  %586 = load i32, ptr %583, align 4
  %conv.i.i374 = zext i32 %586 to i64
  store i64 %conv.i.i374, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %582, ptr %MEMORY, align 8
  br label %inst_4012ed

inst_4012ed:                                      ; preds = %inst_4012ea
  %587 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %587, ptr @RIP_2472_1e56970, align 8
  %588 = add i64 %587, 3
  store volatile i64 %588, ptr %NEXT_PC, align 8
  %589 = load i64, ptr @RBP_2328_1e56970, align 8
  %590 = sub i64 %589, 32
  %591 = load i32, ptr @RAX_2216_1e56958, align 4
  %592 = zext i32 %591 to i64
  %593 = load ptr, ptr %MEMORY, align 8
  %594 = inttoptr i64 %590 to ptr
  %595 = inttoptr i64 %590 to ptr
  %596 = ptrtoint ptr %595 to i64
  store i32 %591, ptr %594, align 4
  store volatile ptr %593, ptr %MEMORY, align 8
  br label %inst_4012f0

inst_4012f0:                                      ; preds = %inst_4012ed
  %597 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %597, ptr @RIP_2472_1e56970, align 8
  %598 = add i64 %597, 4
  store volatile i64 %598, ptr %NEXT_PC, align 8
  %599 = load i64, ptr @RBP_2328_1e56970, align 8
  %600 = sub i64 %599, 36
  %601 = load ptr, ptr %MEMORY, align 8
  %602 = inttoptr i64 %600 to ptr
  %603 = inttoptr i64 %600 to ptr
  %604 = ptrtoint ptr %603 to i64
  %605 = load i32, ptr %602, align 4
  %conv.i.i377 = sext i32 %605 to i64
  store i64 %conv.i.i377, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  store volatile ptr %601, ptr %MEMORY, align 8
  br label %inst_4012f4

inst_4012f4:                                      ; preds = %inst_4012f0
  %606 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %606, ptr @RIP_2472_1e56970, align 8
  %607 = add i64 %606, 5
  store volatile i64 %607, ptr %NEXT_PC, align 8
  %608 = load i64, ptr @RBP_2328_1e56970, align 8
  %609 = load i64, ptr @RCX_2248_1e56970, align 8
  %610 = mul i64 %609, 1
  %611 = add i64 %608, %610
  %612 = sub i64 %611, 64
  %613 = load ptr, ptr %MEMORY, align 8
  %614 = inttoptr i64 %612 to ptr
  %615 = inttoptr i64 %612 to ptr
  %616 = ptrtoint ptr %615 to i64
  %617 = load i8, ptr %614, align 1
  %conv.i.i379 = sext i8 %617 to i64
  %conv.i10.i = and i64 %conv.i.i379, 4294967295
  store i64 %conv.i10.i, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %613, ptr %MEMORY, align 8
  br label %inst_4012f9

inst_4012f9:                                      ; preds = %inst_4012f4
  %618 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %618, ptr @RIP_2472_1e56970, align 8
  %619 = add i64 %618, 3
  store volatile i64 %619, ptr %NEXT_PC, align 8
  %620 = load i32, ptr @RAX_2216_1e56958, align 4
  %621 = zext i32 %620 to i64
  %622 = load ptr, ptr %MEMORY, align 8
  %add.i.i380 = add i32 -97, %620
  %conv.i25.i381 = zext i32 %add.i.i380 to i64
  store i64 %conv.i25.i381, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i382 = icmp ult i32 %add.i.i380, %620
  %cmp1.i.i.i383 = icmp ult i32 %add.i.i380, -97
  %623 = or i1 %cmp.i.i.i382, %cmp1.i.i.i383
  %conv.i24.i384 = zext i1 %623 to i8
  store i8 %conv.i24.i384, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i386 = and i32 %add.i.i380, 255
  %624 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i386) #15, !range !1315
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i27.i388 = xor i64 -97, %621
  %xor.i25.i.i.i389 = trunc i64 %xor.i25.i.i27.i388 to i32
  %xor1.i.i.i.i390 = xor i32 %add.i.i380, %xor.i25.i.i.i389
  %and.i.i.i.i391 = lshr i32 %xor1.i.i.i.i390, 4
  %628 = trunc i32 %and.i.i.i.i391 to i8
  %629 = and i8 %628, 1
  store i8 %629, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i393 = icmp eq i32 %add.i.i380, 0
  %conv5.i.i.i394 = zext i1 %cmp.i24.i.i.i393 to i8
  store i8 %conv5.i.i.i394, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i396 = lshr i32 %add.i.i380, 31
  %630 = trunc i32 %res.lobit.i.i.i396 to i8
  store i8 %630, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i398 = lshr i32 %620, 31
  %xor.i.i.i.i399 = xor i32 %res.lobit.i.i.i396, %shr.i.i.i.i398
  %xor3.i.i.i.i400 = xor i32 %res.lobit.i.i.i396, 1
  %add.i.i.i.i401 = add nuw nsw i32 %xor.i.i.i.i399, %xor3.i.i.i.i400
  %cmp.i.i.i.i402 = icmp eq i32 %add.i.i.i.i401, 2
  %conv11.i.i.i403 = zext i1 %cmp.i.i.i.i402 to i8
  store i8 %conv11.i.i.i403, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %622, ptr %MEMORY, align 8
  br label %inst_4012fc

inst_4012fc:                                      ; preds = %inst_4012f9
  %631 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %631, ptr @RIP_2472_1e56970, align 8
  %632 = add i64 %631, 2
  store volatile i64 %632, ptr %NEXT_PC, align 8
  %633 = load i32, ptr @RAX_2216_1e56958, align 4
  %634 = zext i32 %633 to i64
  %635 = load ptr, ptr %MEMORY, align 8
  %conv.i11.i406 = and i64 %634, 4294967295
  store i64 %conv.i11.i406, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  store volatile ptr %635, ptr %MEMORY, align 8
  br label %inst_4012fe

inst_4012fe:                                      ; preds = %inst_4012fc
  %636 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %636, ptr @RIP_2472_1e56970, align 8
  %637 = add i64 %636, 3
  store volatile i64 %637, ptr %NEXT_PC, align 8
  %638 = load i32, ptr @RAX_2216_1e56958, align 4
  %639 = zext i32 %638 to i64
  %640 = load ptr, ptr %MEMORY, align 8
  %sub.i.i409 = sub i32 %638, 22
  %conv.i25.i410 = zext i32 %sub.i.i409 to i64
  store i64 %conv.i25.i410, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i411 = icmp ult i32 %638, 22
  %conv.i24.i412 = zext i1 %cmp.i.i.i411 to i8
  store i8 %conv.i24.i412, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i414 = and i32 %sub.i.i409, 255
  %641 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i414) #15, !range !1315
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i27.i416 = xor i64 22, %639
  %xor.i25.i.i.i417 = trunc i64 %xor.i25.i.i27.i416 to i32
  %xor1.i.i.i.i418 = xor i32 %sub.i.i409, %xor.i25.i.i.i417
  %and.i.i.i.i419 = lshr i32 %xor1.i.i.i.i418, 4
  %645 = trunc i32 %and.i.i.i.i419 to i8
  %646 = and i8 %645, 1
  store i8 %646, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i421 = icmp eq i32 %sub.i.i409, 0
  %conv5.i.i.i422 = zext i1 %cmp.i24.i.i.i421 to i8
  store i8 %conv5.i.i.i422, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i424 = lshr i32 %sub.i.i409, 31
  %647 = trunc i32 %res.lobit.i.i.i424 to i8
  store i8 %647, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i426 = lshr i32 %638, 31
  %xor3.i.i.i.i427 = xor i32 %res.lobit.i.i.i424, %shr.i.i.i.i426
  %add.i.i.i.i428 = add nuw nsw i32 %xor3.i.i.i.i427, %shr.i.i.i.i426
  %cmp.i.i.i.i429 = icmp eq i32 %add.i.i.i.i428, 2
  %conv11.i.i.i430 = zext i1 %cmp.i.i.i.i429 to i8
  store i8 %conv11.i.i.i430, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %640, ptr %MEMORY, align 8
  br label %inst_401301

inst_401301:                                      ; preds = %inst_4012fe
  %648 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %648, ptr @RIP_2472_1e56970, align 8
  %649 = add i64 %648, 4
  store volatile i64 %649, ptr %NEXT_PC, align 8
  %650 = load i64, ptr @RBP_2328_1e56970, align 8
  %651 = sub i64 %650, 96
  %652 = load i64, ptr @RCX_2248_1e56970, align 8
  %653 = load ptr, ptr %MEMORY, align 8
  %654 = inttoptr i64 %651 to ptr
  %655 = inttoptr i64 %651 to ptr
  %656 = ptrtoint ptr %655 to i64
  store i64 %652, ptr %654, align 8
  store volatile ptr %653, ptr %MEMORY, align 8
  br label %inst_401305

inst_401305:                                      ; preds = %inst_401301
  %657 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %657, ptr @RIP_2472_1e56970, align 8
  %658 = add i64 %657, 6
  store volatile i64 %658, ptr %NEXT_PC, align 8
  %659 = load i64, ptr %NEXT_PC, align 8
  %660 = add i64 %659, 70
  %661 = load i64, ptr %NEXT_PC, align 8
  %662 = load ptr, ptr %MEMORY, align 8
  %663 = load i8, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %664 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %665 = or i8 %664, %663
  %.not.i = icmp eq i8 %665, 0
  %frombool.i436 = zext i1 %.not.i to i8
  store i8 %frombool.i436, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i437 = select i1 %.not.i, i64 %660, i64 %661
  store i64 %cond1.i.i437, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %662, ptr %MEMORY, align 8
  %666 = load i8, ptr %BRANCH_TAKEN, align 1
  %667 = icmp eq i8 %666, 1
  br i1 %667, label %668, label %669

668:                                              ; preds = %inst_401305
  br label %inst_401351

669:                                              ; preds = %inst_401305
  br label %inst_40130b

inst_40130f:                                      ; preds = %inst_40130b
  %670 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %670, ptr @RIP_2472_1e56970, align 8
  %671 = add i64 %670, 8
  store volatile i64 %671, ptr %NEXT_PC, align 8
  %672 = load i64, ptr @RAX_2216_1e56970, align 8
  %673 = mul i64 %672, 8
  %674 = add i64 0, %673
  %675 = add i64 %674, ptrtoint (ptr @data_402008 to i64)
  %676 = load ptr, ptr %MEMORY, align 8
  %677 = trunc i64 %674 to i32
  %678 = getelementptr i8, ptr @data_402008, i32 %677
  %679 = bitcast ptr %678 to ptr
  %680 = ptrtoint ptr %679 to i64
  %681 = load i64, ptr %679, align 8
  store i64 %681, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  store volatile ptr %676, ptr %MEMORY, align 8
  br label %inst_401317

inst_401317:                                      ; preds = %inst_40130f
  %682 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %682, ptr @RIP_2472_1e56970, align 8
  %683 = add i64 %682, 2
  store volatile i64 %683, ptr %NEXT_PC, align 8
  %684 = load i64, ptr @RCX_2248_1e56970, align 8
  %685 = load ptr, ptr %MEMORY, align 8
  store i64 %684, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %684, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %685, ptr %MEMORY, align 8
  %686 = load i64, ptr @RIP_2472_1e56970, align 8
  br label %729

687:                                              ; preds = %729
  %688 = sub i64 ptrtoint (ptr @data_401351 to i64), %686
  %689 = trunc i64 %688 to i32
  %690 = zext i32 %689 to i64
  switch i64 %690, label %691 [
    i64 0, label %inst_401351
    i64 14, label %inst_401343
    i64 28, label %inst_401335
    i64 42, label %inst_401327
    i64 56, label %inst_401319
  ]

691:                                              ; preds = %687
  %692 = load ptr, ptr %MEMORY, align 8
  %693 = load i64, ptr %NEXT_PC, align 8
  %694 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %694)
  %695 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %695)
  %696 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %696)
  %697 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %697)
  %698 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %698)
  %699 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %699)
  %700 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %700)
  store ptr @__mcsema_reg_state, ptr %STATE.i, align 8, !noalias !1343
  store ptr %692, ptr %MEMORY.i, align 8, !noalias !1343
  store volatile i64 %693, ptr %NEXT_PC.i, align 8, !noalias !1343
  store volatile i64 0, ptr %ESBASE.i, align 8, !noalias !1343
  store volatile i64 0, ptr %DSBASE.i, align 8, !noalias !1343
  store volatile i64 0, ptr %CSBASE.i, align 8, !noalias !1343
  store volatile i64 0, ptr %SSBASE.i, align 8, !noalias !1343
  %701 = inttoptr i64 %693 to ptr
  %702 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %703 = add i64 %702, 8
  %704 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %705 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %706 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %707 = ptrtoint ptr %705 to i64
  %708 = load i64, ptr %704, align 8
  %param0.i = load i64, ptr @RDI_2296_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %param1.i = load i64, ptr @RSI_2280_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %param2.i = load i64, ptr @RDX_2264_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %param3.i = load i64, ptr @RCX_2248_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %param4.i = load i64, ptr @R8_2344_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %param5.i = load i64, ptr @R9_2360_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %709 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %710 = add i64 %709, 8
  %711 = inttoptr i64 %710 to ptr
  %712 = inttoptr i64 %710 to ptr
  %713 = ptrtoint ptr %712 to i64
  %714 = load i64, ptr %711, align 8
  %715 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %716 = add i64 %715, 16
  %717 = inttoptr i64 %716 to ptr
  %718 = inttoptr i64 %716 to ptr
  %719 = ptrtoint ptr %718 to i64
  %720 = load i64, ptr %717, align 8
  %721 = call i64 %701(i64 %param0.i, i64 %param1.i, i64 %param2.i, i64 %param3.i, i64 %param4.i, i64 %param5.i, i64 %714, i64 %720) #15
  store volatile i64 %721, ptr @RAX_2216_1e56970, align 8, !alias.scope !1347, !noalias !1348
  store i64 %708, ptr %NEXT_PC.i, align 8, !noalias !1343
  store volatile i64 %703, ptr @RSP_2312_1e56970, align 8, !alias.scope !1347, !noalias !1348
  %722 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %722)
  %723 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %723)
  %724 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %724)
  %725 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %725)
  %726 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %726)
  %727 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %727)
  %728 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %728)
  store ptr %692, ptr %MEMORY, align 8
  ret ptr %692

729:                                              ; preds = %inst_401317
  switch i64 %686, label %687 [
    i64 4199249, label %inst_401351
    i64 4199235, label %inst_401343
    i64 4199221, label %inst_401335
    i64 4199207, label %inst_401327
    i64 4199193, label %inst_401319
  ]

inst_40131c:                                      ; preds = %inst_401319
  %730 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %730, ptr @RIP_2472_1e56970, align 8
  %731 = add i64 %730, 3
  store volatile i64 %731, ptr %NEXT_PC, align 8
  %732 = load i32, ptr @RAX_2216_1e56958, align 4
  %733 = zext i32 %732 to i64
  %734 = load ptr, ptr %MEMORY, align 8
  %add.i.i456 = add i32 -1, %732
  %conv.i25.i457 = zext i32 %add.i.i456 to i64
  store i64 %conv.i25.i457, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i458 = icmp ult i32 %add.i.i456, %732
  %cmp1.i.i.i459 = icmp ult i32 %add.i.i456, -1
  %735 = or i1 %cmp.i.i.i458, %cmp1.i.i.i459
  %conv.i24.i460 = zext i1 %735 to i8
  store i8 %conv.i24.i460, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i462 = and i32 %add.i.i456, 255
  %736 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i462) #15, !range !1315
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i27.i464 = xor i64 -1, %733
  %xor.i25.i.i.i465 = trunc i64 %xor.i25.i.i27.i464 to i32
  %xor1.i.i.i.i466 = xor i32 %add.i.i456, %xor.i25.i.i.i465
  %and.i.i.i.i467 = lshr i32 %xor1.i.i.i.i466, 4
  %740 = trunc i32 %and.i.i.i.i467 to i8
  %741 = and i8 %740, 1
  store i8 %741, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i469 = icmp eq i32 %add.i.i456, 0
  %conv5.i.i.i470 = zext i1 %cmp.i24.i.i.i469 to i8
  store i8 %conv5.i.i.i470, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i472 = lshr i32 %add.i.i456, 31
  %742 = trunc i32 %res.lobit.i.i.i472 to i8
  store i8 %742, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i474 = lshr i32 %732, 31
  %xor.i.i.i.i475 = xor i32 %res.lobit.i.i.i472, %shr.i.i.i.i474
  %xor3.i.i.i.i476 = xor i32 %res.lobit.i.i.i472, 1
  %add.i.i.i.i477 = add nuw nsw i32 %xor.i.i.i.i475, %xor3.i.i.i.i476
  %cmp.i.i.i.i478 = icmp eq i32 %add.i.i.i.i477, 2
  %conv11.i.i.i479 = zext i1 %cmp.i.i.i.i478 to i8
  store i8 %conv11.i.i.i479, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %734, ptr %MEMORY, align 8
  br label %inst_40131f

inst_40131f:                                      ; preds = %inst_40131c
  %743 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %743, ptr @RIP_2472_1e56970, align 8
  %744 = add i64 %743, 3
  store volatile i64 %744, ptr %NEXT_PC, align 8
  %745 = load i64, ptr @RBP_2328_1e56970, align 8
  %746 = sub i64 %745, 24
  %747 = load i32, ptr @RAX_2216_1e56958, align 4
  %748 = zext i32 %747 to i64
  %749 = load ptr, ptr %MEMORY, align 8
  %750 = inttoptr i64 %746 to ptr
  %751 = inttoptr i64 %746 to ptr
  %752 = ptrtoint ptr %751 to i64
  store i32 %747, ptr %750, align 4
  store volatile ptr %749, ptr %MEMORY, align 8
  br label %inst_401322

inst_401322:                                      ; preds = %inst_40131f
  %753 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %753, ptr @RIP_2472_1e56970, align 8
  %754 = add i64 %753, 5
  store volatile i64 %754, ptr %NEXT_PC, align 8
  %755 = load i64, ptr %NEXT_PC, align 8
  %756 = add i64 %755, 92
  %757 = load ptr, ptr %MEMORY, align 8
  store i64 %756, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %756, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %757, ptr %MEMORY, align 8
  br label %inst_401383

inst_40132a:                                      ; preds = %inst_401327
  %758 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %758, ptr @RIP_2472_1e56970, align 8
  %759 = add i64 %758, 3
  store volatile i64 %759, ptr %NEXT_PC, align 8
  %760 = load i32, ptr @RAX_2216_1e56958, align 4
  %761 = zext i32 %760 to i64
  %762 = load ptr, ptr %MEMORY, align 8
  %add.i.i483 = add i32 1, %760
  %conv.i25.i484 = zext i32 %add.i.i483 to i64
  store i64 %conv.i25.i484, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i485 = icmp ult i32 %add.i.i483, %760
  %cmp1.i.i.i486 = icmp ult i32 %add.i.i483, 1
  %763 = or i1 %cmp.i.i.i485, %cmp1.i.i.i486
  %conv.i24.i487 = zext i1 %763 to i8
  store i8 %conv.i24.i487, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i489 = and i32 %add.i.i483, 255
  %764 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i489) #15, !range !1315
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i27.i491 = xor i64 1, %761
  %xor.i25.i.i.i492 = trunc i64 %xor.i25.i.i27.i491 to i32
  %xor1.i.i.i.i493 = xor i32 %add.i.i483, %xor.i25.i.i.i492
  %and.i.i.i.i494 = lshr i32 %xor1.i.i.i.i493, 4
  %768 = trunc i32 %and.i.i.i.i494 to i8
  %769 = and i8 %768, 1
  store i8 %769, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i496 = icmp eq i32 %add.i.i483, 0
  %conv5.i.i.i497 = zext i1 %cmp.i24.i.i.i496 to i8
  store i8 %conv5.i.i.i497, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i499 = lshr i32 %add.i.i483, 31
  %770 = trunc i32 %res.lobit.i.i.i499 to i8
  store i8 %770, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i501 = lshr i32 %760, 31
  %xor.i.i.i.i502 = xor i32 %res.lobit.i.i.i499, %shr.i.i.i.i501
  %add.i.i.i.i503 = add nuw nsw i32 %xor.i.i.i.i502, %res.lobit.i.i.i499
  %cmp.i.i.i.i504 = icmp eq i32 %add.i.i.i.i503, 2
  %conv11.i.i.i505 = zext i1 %cmp.i.i.i.i504 to i8
  store i8 %conv11.i.i.i505, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %762, ptr %MEMORY, align 8
  br label %inst_40132d

inst_40132d:                                      ; preds = %inst_40132a
  %771 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %771, ptr @RIP_2472_1e56970, align 8
  %772 = add i64 %771, 3
  store volatile i64 %772, ptr %NEXT_PC, align 8
  %773 = load i64, ptr @RBP_2328_1e56970, align 8
  %774 = sub i64 %773, 24
  %775 = load i32, ptr @RAX_2216_1e56958, align 4
  %776 = zext i32 %775 to i64
  %777 = load ptr, ptr %MEMORY, align 8
  %778 = inttoptr i64 %774 to ptr
  %779 = inttoptr i64 %774 to ptr
  %780 = ptrtoint ptr %779 to i64
  store i32 %775, ptr %778, align 4
  store volatile ptr %777, ptr %MEMORY, align 8
  br label %inst_401330

inst_401330:                                      ; preds = %inst_40132d
  %781 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %781, ptr @RIP_2472_1e56970, align 8
  %782 = add i64 %781, 5
  store volatile i64 %782, ptr %NEXT_PC, align 8
  %783 = load i64, ptr %NEXT_PC, align 8
  %784 = add i64 %783, 78
  %785 = load ptr, ptr %MEMORY, align 8
  store i64 %784, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %784, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %785, ptr %MEMORY, align 8
  br label %inst_401383

inst_401338:                                      ; preds = %inst_401335
  %786 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %786, ptr @RIP_2472_1e56970, align 8
  %787 = add i64 %786, 3
  store volatile i64 %787, ptr %NEXT_PC, align 8
  %788 = load i32, ptr @RAX_2216_1e56958, align 4
  %789 = zext i32 %788 to i64
  %790 = load ptr, ptr %MEMORY, align 8
  %add.i.i534 = add i32 -1, %788
  %conv.i25.i535 = zext i32 %add.i.i534 to i64
  store i64 %conv.i25.i535, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i536 = icmp ult i32 %add.i.i534, %788
  %cmp1.i.i.i537 = icmp ult i32 %add.i.i534, -1
  %791 = or i1 %cmp.i.i.i536, %cmp1.i.i.i537
  %conv.i24.i538 = zext i1 %791 to i8
  store i8 %conv.i24.i538, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i540 = and i32 %add.i.i534, 255
  %792 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i540) #15, !range !1315
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  %795 = xor i8 %794, 1
  store i8 %795, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i27.i542 = xor i64 -1, %789
  %xor.i25.i.i.i543 = trunc i64 %xor.i25.i.i27.i542 to i32
  %xor1.i.i.i.i544 = xor i32 %add.i.i534, %xor.i25.i.i.i543
  %and.i.i.i.i545 = lshr i32 %xor1.i.i.i.i544, 4
  %796 = trunc i32 %and.i.i.i.i545 to i8
  %797 = and i8 %796, 1
  store i8 %797, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i547 = icmp eq i32 %add.i.i534, 0
  %conv5.i.i.i548 = zext i1 %cmp.i24.i.i.i547 to i8
  store i8 %conv5.i.i.i548, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i550 = lshr i32 %add.i.i534, 31
  %798 = trunc i32 %res.lobit.i.i.i550 to i8
  store i8 %798, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i552 = lshr i32 %788, 31
  %xor.i.i.i.i553 = xor i32 %res.lobit.i.i.i550, %shr.i.i.i.i552
  %xor3.i.i.i.i554 = xor i32 %res.lobit.i.i.i550, 1
  %add.i.i.i.i555 = add nuw nsw i32 %xor.i.i.i.i553, %xor3.i.i.i.i554
  %cmp.i.i.i.i556 = icmp eq i32 %add.i.i.i.i555, 2
  %conv11.i.i.i557 = zext i1 %cmp.i.i.i.i556 to i8
  store i8 %conv11.i.i.i557, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %790, ptr %MEMORY, align 8
  br label %inst_40133b

inst_40133b:                                      ; preds = %inst_401338
  %799 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %799, ptr @RIP_2472_1e56970, align 8
  %800 = add i64 %799, 3
  store volatile i64 %800, ptr %NEXT_PC, align 8
  %801 = load i64, ptr @RBP_2328_1e56970, align 8
  %802 = sub i64 %801, 20
  %803 = load i32, ptr @RAX_2216_1e56958, align 4
  %804 = zext i32 %803 to i64
  %805 = load ptr, ptr %MEMORY, align 8
  %806 = inttoptr i64 %802 to ptr
  %807 = inttoptr i64 %802 to ptr
  %808 = ptrtoint ptr %807 to i64
  store i32 %803, ptr %806, align 4
  store volatile ptr %805, ptr %MEMORY, align 8
  br label %inst_40133e

inst_40133e:                                      ; preds = %inst_40133b
  %809 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %809, ptr @RIP_2472_1e56970, align 8
  %810 = add i64 %809, 5
  store volatile i64 %810, ptr %NEXT_PC, align 8
  %811 = load i64, ptr %NEXT_PC, align 8
  %812 = add i64 %811, 64
  %813 = load ptr, ptr %MEMORY, align 8
  store i64 %812, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %812, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %813, ptr %MEMORY, align 8
  br label %inst_401383

inst_401346:                                      ; preds = %inst_401343
  %814 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %814, ptr @RIP_2472_1e56970, align 8
  %815 = add i64 %814, 3
  store volatile i64 %815, ptr %NEXT_PC, align 8
  %816 = load i32, ptr @RAX_2216_1e56958, align 4
  %817 = zext i32 %816 to i64
  %818 = load ptr, ptr %MEMORY, align 8
  %add.i.i567 = add i32 1, %816
  %conv.i25.i568 = zext i32 %add.i.i567 to i64
  store i64 %conv.i25.i568, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i569 = icmp ult i32 %add.i.i567, %816
  %cmp1.i.i.i570 = icmp ult i32 %add.i.i567, 1
  %819 = or i1 %cmp.i.i.i569, %cmp1.i.i.i570
  %conv.i24.i571 = zext i1 %819 to i8
  store i8 %conv.i24.i571, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i573 = and i32 %add.i.i567, 255
  %820 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i573) #15, !range !1315
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i27.i575 = xor i64 1, %817
  %xor.i25.i.i.i576 = trunc i64 %xor.i25.i.i27.i575 to i32
  %xor1.i.i.i.i577 = xor i32 %add.i.i567, %xor.i25.i.i.i576
  %and.i.i.i.i578 = lshr i32 %xor1.i.i.i.i577, 4
  %824 = trunc i32 %and.i.i.i.i578 to i8
  %825 = and i8 %824, 1
  store i8 %825, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i580 = icmp eq i32 %add.i.i567, 0
  %conv5.i.i.i581 = zext i1 %cmp.i24.i.i.i580 to i8
  store i8 %conv5.i.i.i581, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i583 = lshr i32 %add.i.i567, 31
  %826 = trunc i32 %res.lobit.i.i.i583 to i8
  store i8 %826, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i585 = lshr i32 %816, 31
  %xor.i.i.i.i586 = xor i32 %res.lobit.i.i.i583, %shr.i.i.i.i585
  %add.i.i.i.i587 = add nuw nsw i32 %xor.i.i.i.i586, %res.lobit.i.i.i583
  %cmp.i.i.i.i588 = icmp eq i32 %add.i.i.i.i587, 2
  %conv11.i.i.i589 = zext i1 %cmp.i.i.i.i588 to i8
  store i8 %conv11.i.i.i589, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %818, ptr %MEMORY, align 8
  br label %inst_401349

inst_401349:                                      ; preds = %inst_401346
  %827 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %827, ptr @RIP_2472_1e56970, align 8
  %828 = add i64 %827, 3
  store volatile i64 %828, ptr %NEXT_PC, align 8
  %829 = load i64, ptr @RBP_2328_1e56970, align 8
  %830 = sub i64 %829, 20
  %831 = load i32, ptr @RAX_2216_1e56958, align 4
  %832 = zext i32 %831 to i64
  %833 = load ptr, ptr %MEMORY, align 8
  %834 = inttoptr i64 %830 to ptr
  %835 = inttoptr i64 %830 to ptr
  %836 = ptrtoint ptr %835 to i64
  store i32 %831, ptr %834, align 4
  store volatile ptr %833, ptr %MEMORY, align 8
  br label %inst_40134c

inst_40134c:                                      ; preds = %inst_401349
  %837 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %837, ptr @RIP_2472_1e56970, align 8
  %838 = add i64 %837, 5
  store volatile i64 %838, ptr %NEXT_PC, align 8
  %839 = load i64, ptr %NEXT_PC, align 8
  %840 = add i64 %839, 50
  %841 = load ptr, ptr %MEMORY, align 8
  store i64 %840, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %840, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %841, ptr %MEMORY, align 8
  br label %inst_401383

inst_40135b:                                      ; preds = %inst_401351
  %842 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %842, ptr @RIP_2472_1e56970, align 8
  %843 = add i64 %842, 2
  store volatile i64 %843, ptr %NEXT_PC, align 8
  %844 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %844, ptr %MEMORY, align 8
  br label %inst_40135d

inst_40135d:                                      ; preds = %inst_40135b
  %845 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %845, ptr @RIP_2472_1e56970, align 8
  %846 = add i64 %845, 5
  store volatile i64 %846, ptr %NEXT_PC, align 8
  %847 = load i64, ptr %NEXT_PC, align 8
  %848 = sub i64 %847, 818
  %849 = load i64, ptr %NEXT_PC, align 8
  %850 = load ptr, ptr %MEMORY, align 8
  %851 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i621 = add i64 %851, -8
  %852 = inttoptr i64 %sub.i.i621 to ptr
  %853 = inttoptr i64 %sub.i.i621 to ptr
  %854 = ptrtoint ptr %853 to i64
  store i64 %849, ptr %852, align 8
  store i64 %sub.i.i621, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %848, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %848, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %849, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %850, ptr %MEMORY, align 8
  %855 = load ptr, ptr %MEMORY, align 8
  %856 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %855)
  store ptr %856, ptr %MEMORY, align 8
  store ptr @data_401362, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401362 to i64), ptr %NEXT_PC, align 8
  br label %inst_401362

inst_401362:                                      ; preds = %inst_40135d
  %857 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %857, ptr @RIP_2472_1e56970, align 8
  %858 = add i64 %857, 10
  store volatile i64 %858, ptr %NEXT_PC, align 8
  %859 = load ptr, ptr %MEMORY, align 8
  store ptr @data_402190, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %859, ptr %MEMORY, align 8
  br label %inst_40136c

inst_40136c:                                      ; preds = %inst_401362
  %860 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %860, ptr @RIP_2472_1e56970, align 8
  %861 = add i64 %860, 3
  store volatile i64 %861, ptr %NEXT_PC, align 8
  %862 = load i64, ptr @RBP_2328_1e56970, align 8
  %863 = sub i64 %862, 100
  %864 = load i32, ptr @RAX_2216_1e56958, align 4
  %865 = zext i32 %864 to i64
  %866 = load ptr, ptr %MEMORY, align 8
  %867 = inttoptr i64 %863 to ptr
  %868 = inttoptr i64 %863 to ptr
  %869 = ptrtoint ptr %868 to i64
  store i32 %864, ptr %867, align 4
  store volatile ptr %866, ptr %MEMORY, align 8
  br label %inst_40136f

inst_40136f:                                      ; preds = %inst_40136c
  %870 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %870, ptr @RIP_2472_1e56970, align 8
  %871 = add i64 %870, 2
  store volatile i64 %871, ptr %NEXT_PC, align 8
  %872 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %872, ptr %MEMORY, align 8
  br label %inst_401371

inst_401371:                                      ; preds = %inst_40136f
  %873 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %873, ptr @RIP_2472_1e56970, align 8
  %874 = add i64 %873, 5
  store volatile i64 %874, ptr %NEXT_PC, align 8
  %875 = load i64, ptr %NEXT_PC, align 8
  %876 = sub i64 %875, 838
  %877 = load i64, ptr %NEXT_PC, align 8
  %878 = load ptr, ptr %MEMORY, align 8
  %879 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i631 = add i64 %879, -8
  %880 = inttoptr i64 %sub.i.i631 to ptr
  %881 = inttoptr i64 %sub.i.i631 to ptr
  %882 = ptrtoint ptr %881 to i64
  store i64 %877, ptr %880, align 8
  store i64 %sub.i.i631, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %876, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %876, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %877, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %878, ptr %MEMORY, align 8
  %883 = load ptr, ptr %MEMORY, align 8
  %884 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %883)
  store ptr %884, ptr %MEMORY, align 8
  store ptr @data_401376, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401376 to i64), ptr %NEXT_PC, align 8
  br label %inst_401376

inst_401376:                                      ; preds = %inst_401371
  %885 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %885, ptr @RIP_2472_1e56970, align 8
  %886 = add i64 %885, 5
  store volatile i64 %886, ptr %NEXT_PC, align 8
  %887 = load ptr, ptr %MEMORY, align 8
  store i64 1, ptr @RDI_2296_1e56970, align 8, !tbaa !1293
  store volatile ptr %887, ptr %MEMORY, align 8
  br label %inst_40137b

inst_40137b:                                      ; preds = %inst_401376
  %888 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %888, ptr @RIP_2472_1e56970, align 8
  %889 = add i64 %888, 3
  store volatile i64 %889, ptr %NEXT_PC, align 8
  %890 = load i64, ptr @RBP_2328_1e56970, align 8
  %891 = sub i64 %890, 104
  %892 = load i32, ptr @RAX_2216_1e56958, align 4
  %893 = zext i32 %892 to i64
  %894 = load ptr, ptr %MEMORY, align 8
  %895 = inttoptr i64 %891 to ptr
  %896 = inttoptr i64 %891 to ptr
  %897 = ptrtoint ptr %896 to i64
  store i32 %892, ptr %895, align 4
  store volatile ptr %894, ptr %MEMORY, align 8
  br label %inst_40137e

inst_40137e:                                      ; preds = %inst_40137b
  %898 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %898, ptr @RIP_2472_1e56970, align 8
  %899 = add i64 %898, 5
  store volatile i64 %899, ptr %NEXT_PC, align 8
  %900 = load i64, ptr %NEXT_PC, align 8
  %901 = sub i64 %900, 819
  %902 = load i64, ptr %NEXT_PC, align 8
  %903 = load ptr, ptr %MEMORY, align 8
  %904 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i638 = add i64 %904, -8
  %905 = inttoptr i64 %sub.i.i638 to ptr
  %906 = inttoptr i64 %sub.i.i638 to ptr
  %907 = ptrtoint ptr %906 to i64
  store i64 %902, ptr %905, align 8
  store i64 %sub.i.i638, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %901, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %901, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %902, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %903, ptr %MEMORY, align 8
  %908 = load ptr, ptr %MEMORY, align 8
  %909 = call ptr @ext_4040c0_exit(ptr @__mcsema_reg_state, i64 undef, ptr %908)
  store ptr %909, ptr %MEMORY, align 8
  store ptr @data_401383, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401383 to i64), ptr %NEXT_PC, align 8
  br label %inst_401383

inst_401387:                                      ; preds = %inst_401383
  %910 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %910, ptr @RIP_2472_1e56970, align 8
  %911 = add i64 %910, 7
  store volatile i64 %911, ptr %NEXT_PC, align 8
  %912 = load i64, ptr @RAX_2216_1e56970, align 8
  %913 = load ptr, ptr %MEMORY, align 8
  %914 = ashr i64 %912, 63
  %L.sroa.2.0.insert.ext.i.i641 = zext i64 %914 to i128
  %L.sroa.2.0.insert.shift.i.i642 = shl nuw i128 %L.sroa.2.0.insert.ext.i.i641, 64
  %L.sroa.0.0.insert.ext.i.i643 = zext i64 %912 to i128
  %L.sroa.0.0.insert.insert.i.i644 = or i128 %L.sroa.2.0.insert.shift.i.i642, %L.sroa.0.0.insert.ext.i.i643
  %mul.i.i645 = mul nsw i128 11, %L.sroa.0.0.insert.insert.i.i644
  %retval.sroa.0.0.extract.trunc.i.i646 = trunc i128 %mul.i.i645 to i64
  store i64 %retval.sroa.0.0.extract.trunc.i.i646, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %conv4.i.i.i647 = sext i64 %retval.sroa.0.0.extract.trunc.i.i646 to i128
  %cmp.i.i.i648 = icmp ne i128 %mul.i.i645, %conv4.i.i.i647
  %frombool.i.i649 = zext i1 %cmp.i.i.i648 to i8
  store i8 %frombool.i.i649, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i651 = trunc i128 %mul.i.i645 to i32
  %conv.i.i.i.i652 = and i32 %conv.i.i.i651, 255
  %915 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i652) #15, !range !1315
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store i8 0, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res_trunc.lobit.i.i657 = lshr i64 %retval.sroa.0.0.extract.trunc.i.i646, 63
  %919 = trunc i64 %res_trunc.lobit.i.i657 to i8
  store i8 %919, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 %frombool.i.i649, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %913, ptr %MEMORY, align 8
  br label %inst_40138e

inst_40138e:                                      ; preds = %inst_401387
  %920 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %920, ptr @RIP_2472_1e56970, align 8
  %921 = add i64 %920, 10
  store volatile i64 %921, ptr %NEXT_PC, align 8
  %922 = load ptr, ptr %MEMORY, align 8
  store ptr @data_404050, ptr @RCX_2248_1e61d30, align 8
  store volatile ptr %922, ptr %MEMORY, align 8
  br label %inst_401398

inst_401398:                                      ; preds = %inst_40138e
  %923 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %923, ptr @RIP_2472_1e56970, align 8
  %924 = add i64 %923, 3
  store volatile i64 %924, ptr %NEXT_PC, align 8
  %925 = load i64, ptr @RCX_2248_1e56970, align 8
  %926 = load i64, ptr @RAX_2216_1e56970, align 8
  %927 = load ptr, ptr %MEMORY, align 8
  %add.i.i673 = add i64 %926, %925
  store i64 %add.i.i673, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i674 = icmp ult i64 %add.i.i673, %925
  %cmp1.i.i.i675 = icmp ult i64 %add.i.i673, %926
  %928 = or i1 %cmp.i.i.i674, %cmp1.i.i.i675
  %conv.i.i676 = zext i1 %928 to i8
  store i8 %conv.i.i676, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i678 = trunc i64 %add.i.i673 to i32
  %conv.i.i.i.i.i679 = and i32 %conv.i.i.i.i678, 255
  %929 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i679) #15, !range !1315
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i681 = xor i64 %926, %925
  %xor1.i.i.i.i682 = xor i64 %xor.i25.i.i.i681, %add.i.i673
  %and.i.i.i.i683 = lshr i64 %xor1.i.i.i.i682, 4
  %933 = trunc i64 %and.i.i.i.i683 to i8
  %934 = and i8 %933, 1
  store i8 %934, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i685 = icmp eq i64 %add.i.i673, 0
  %conv5.i.i.i686 = zext i1 %cmp.i24.i.i.i685 to i8
  store i8 %conv5.i.i.i686, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i688 = lshr i64 %add.i.i673, 63
  %935 = trunc i64 %res.lobit.i.i.i688 to i8
  store i8 %935, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i690 = lshr i64 %925, 63
  %shr1.i.i.i.i691 = lshr i64 %926, 63
  %xor.i.i.i.i692 = xor i64 %res.lobit.i.i.i688, %shr.i.i.i.i690
  %xor3.i.i.i.i693 = xor i64 %res.lobit.i.i.i688, %shr1.i.i.i.i691
  %add.i.i.i.i694 = add nuw nsw i64 %xor.i.i.i.i692, %xor3.i.i.i.i693
  %cmp.i.i.i.i695 = icmp eq i64 %add.i.i.i.i694, 2
  %conv11.i.i.i696 = zext i1 %cmp.i.i.i.i695 to i8
  store i8 %conv11.i.i.i696, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %927, ptr %MEMORY, align 8
  br label %inst_40139b

inst_40139b:                                      ; preds = %inst_401398
  %936 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %936, ptr @RIP_2472_1e56970, align 8
  %937 = add i64 %936, 4
  store volatile i64 %937, ptr %NEXT_PC, align 8
  %938 = load i64, ptr @RBP_2328_1e56970, align 8
  %939 = sub i64 %938, 20
  %940 = load ptr, ptr %MEMORY, align 8
  %941 = inttoptr i64 %939 to ptr
  %942 = inttoptr i64 %939 to ptr
  %943 = ptrtoint ptr %942 to i64
  %944 = load i32, ptr %941, align 4
  %conv.i.i703 = sext i32 %944 to i64
  store i64 %conv.i.i703, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %940, ptr %MEMORY, align 8
  br label %inst_40139f

inst_40139f:                                      ; preds = %inst_40139b
  %945 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %945, ptr @RIP_2472_1e56970, align 8
  %946 = add i64 %945, 4
  store volatile i64 %946, ptr %NEXT_PC, align 8
  %947 = load i64, ptr @RCX_2248_1e56970, align 8
  %948 = load i64, ptr @RAX_2216_1e56970, align 8
  %949 = mul i64 %948, 1
  %950 = add i64 %947, %949
  %951 = load ptr, ptr %MEMORY, align 8
  %952 = inttoptr i64 %950 to ptr
  %953 = inttoptr i64 %950 to ptr
  %954 = ptrtoint ptr %953 to i64
  %955 = load i8, ptr %952, align 1
  %conv.i.i705 = sext i8 %955 to i64
  %conv.i10.i706 = and i64 %conv.i.i705, 4294967295
  store i64 %conv.i10.i706, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %951, ptr %MEMORY, align 8
  br label %inst_4013a3

inst_4013a3:                                      ; preds = %inst_40139f
  %956 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %956, ptr @RIP_2472_1e56970, align 8
  %957 = add i64 %956, 3
  store volatile i64 %957, ptr %NEXT_PC, align 8
  %958 = load i32, ptr @RDX_2264_1e56958, align 4
  %959 = zext i32 %958 to i64
  %960 = load ptr, ptr %MEMORY, align 8
  %sub.i.i707 = sub i32 %958, 35
  %cmp.i.i.i708 = icmp ult i32 %958, 35
  %conv.i14.i = zext i1 %cmp.i.i.i708 to i8
  store i8 %conv.i14.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i710 = and i32 %sub.i.i707, 255
  %961 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i710) #15, !range !1315
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i16.i = xor i64 35, %959
  %xor.i25.i.i.i712 = trunc i64 %xor.i25.i.i16.i to i32
  %xor1.i.i.i.i713 = xor i32 %sub.i.i707, %xor.i25.i.i.i712
  %and.i.i.i.i714 = lshr i32 %xor1.i.i.i.i713, 4
  %965 = trunc i32 %and.i.i.i.i714 to i8
  %966 = and i8 %965, 1
  store i8 %966, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i716 = icmp eq i32 %sub.i.i707, 0
  %conv5.i.i.i717 = zext i1 %cmp.i24.i.i.i716 to i8
  store i8 %conv5.i.i.i717, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i719 = lshr i32 %sub.i.i707, 31
  %967 = trunc i32 %res.lobit.i.i.i719 to i8
  store i8 %967, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i721 = lshr i32 %958, 31
  %xor3.i.i.i.i722 = xor i32 %res.lobit.i.i.i719, %shr.i.i.i.i721
  %add.i.i.i.i723 = add nuw nsw i32 %xor3.i.i.i.i722, %shr.i.i.i.i721
  %cmp.i.i.i.i724 = icmp eq i32 %add.i.i.i.i723, 2
  %conv11.i.i.i725 = zext i1 %cmp.i.i.i.i724 to i8
  store i8 %conv11.i.i.i725, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %960, ptr %MEMORY, align 8
  br label %inst_4013a6

inst_4013a6:                                      ; preds = %inst_4013a3
  %968 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %968, ptr @RIP_2472_1e56970, align 8
  %969 = add i64 %968, 6
  store volatile i64 %969, ptr %NEXT_PC, align 8
  %970 = load i64, ptr %NEXT_PC, align 8
  %971 = add i64 %970, 51
  %972 = load i64, ptr %NEXT_PC, align 8
  %973 = load ptr, ptr %MEMORY, align 8
  %974 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %tobool.not.i730 = icmp eq i8 %974, 0
  %frombool.i731 = zext i1 %tobool.not.i730 to i8
  store i8 %frombool.i731, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i732 = select i1 %tobool.not.i730, i64 %971, i64 %972
  store i64 %cond1.i.i732, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %973, ptr %MEMORY, align 8
  %975 = load i8, ptr %BRANCH_TAKEN, align 1
  %976 = icmp eq i8 %975, 1
  br i1 %976, label %977, label %978

977:                                              ; preds = %inst_4013a6
  br label %inst_4013df

978:                                              ; preds = %inst_4013a6
  br label %inst_4013ac

inst_4013b6:                                      ; preds = %inst_4013ac
  %979 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %979, ptr @RIP_2472_1e56970, align 8
  %980 = add i64 %979, 2
  store volatile i64 %980, ptr %NEXT_PC, align 8
  %981 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %981, ptr %MEMORY, align 8
  br label %inst_4013b8

inst_4013b8:                                      ; preds = %inst_4013b6
  %982 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %982, ptr @RIP_2472_1e56970, align 8
  %983 = add i64 %982, 5
  store volatile i64 %983, ptr %NEXT_PC, align 8
  %984 = load i64, ptr %NEXT_PC, align 8
  %985 = sub i64 %984, 909
  %986 = load i64, ptr %NEXT_PC, align 8
  %987 = load ptr, ptr %MEMORY, align 8
  %988 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i737 = add i64 %988, -8
  %989 = inttoptr i64 %sub.i.i737 to ptr
  %990 = inttoptr i64 %sub.i.i737 to ptr
  %991 = ptrtoint ptr %990 to i64
  store i64 %986, ptr %989, align 8
  store i64 %sub.i.i737, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %985, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %985, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %986, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %987, ptr %MEMORY, align 8
  %992 = load ptr, ptr %MEMORY, align 8
  %993 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %992)
  store ptr %993, ptr %MEMORY, align 8
  store ptr @data_4013bd, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4013bd to i64), ptr %NEXT_PC, align 8
  br label %inst_4013bd

inst_4013bd:                                      ; preds = %inst_4013b8
  %994 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %994, ptr @RIP_2472_1e56970, align 8
  %995 = add i64 %994, 4
  store volatile i64 %995, ptr %NEXT_PC, align 8
  %996 = load i64, ptr @RBP_2328_1e56970, align 8
  %997 = sub i64 %996, 64
  %998 = load ptr, ptr %MEMORY, align 8
  store i64 %997, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  store volatile ptr %998, ptr %MEMORY, align 8
  br label %inst_4013c1

inst_4013c1:                                      ; preds = %inst_4013bd
  %999 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %999, ptr @RIP_2472_1e56970, align 8
  %1000 = add i64 %999, 10
  store volatile i64 %1000, ptr %NEXT_PC, align 8
  %1001 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4021a5, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %1001, ptr %MEMORY, align 8
  br label %inst_4013cb

inst_4013cb:                                      ; preds = %inst_4013c1
  %1002 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1002, ptr @RIP_2472_1e56970, align 8
  %1003 = add i64 %1002, 3
  store volatile i64 %1003, ptr %NEXT_PC, align 8
  %1004 = load i64, ptr @RBP_2328_1e56970, align 8
  %1005 = sub i64 %1004, 108
  %1006 = load i32, ptr @RAX_2216_1e56958, align 4
  %1007 = zext i32 %1006 to i64
  %1008 = load ptr, ptr %MEMORY, align 8
  %1009 = inttoptr i64 %1005 to ptr
  %1010 = inttoptr i64 %1005 to ptr
  %1011 = ptrtoint ptr %1010 to i64
  store i32 %1006, ptr %1009, align 4
  store volatile ptr %1008, ptr %MEMORY, align 8
  br label %inst_4013ce

inst_4013ce:                                      ; preds = %inst_4013cb
  %1012 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1012, ptr @RIP_2472_1e56970, align 8
  %1013 = add i64 %1012, 2
  store volatile i64 %1013, ptr %NEXT_PC, align 8
  %1014 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %1014, ptr %MEMORY, align 8
  br label %inst_4013d0

inst_4013d0:                                      ; preds = %inst_4013ce
  %1015 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1015, ptr @RIP_2472_1e56970, align 8
  %1016 = add i64 %1015, 5
  store volatile i64 %1016, ptr %NEXT_PC, align 8
  %1017 = load i64, ptr %NEXT_PC, align 8
  %1018 = sub i64 %1017, 933
  %1019 = load i64, ptr %NEXT_PC, align 8
  %1020 = load ptr, ptr %MEMORY, align 8
  %1021 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i789 = add i64 %1021, -8
  %1022 = inttoptr i64 %sub.i.i789 to ptr
  %1023 = inttoptr i64 %sub.i.i789 to ptr
  %1024 = ptrtoint ptr %1023 to i64
  store i64 %1019, ptr %1022, align 8
  store i64 %sub.i.i789, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %1018, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1018, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %1019, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %1020, ptr %MEMORY, align 8
  %1025 = load ptr, ptr %MEMORY, align 8
  %1026 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %1025)
  store ptr %1026, ptr %MEMORY, align 8
  store ptr @data_4013d5, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4013d5 to i64), ptr %NEXT_PC, align 8
  br label %inst_4013d5

inst_4013d5:                                      ; preds = %inst_4013d0
  %1027 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1027, ptr @RIP_2472_1e56970, align 8
  %1028 = add i64 %1027, 2
  store volatile i64 %1028, ptr %NEXT_PC, align 8
  %1029 = load i32, ptr @RDI_2296_1e56958, align 4
  %1030 = zext i32 %1029 to i64
  %1031 = load i32, ptr @RDI_2296_1e56958, align 4
  %1032 = zext i32 %1031 to i64
  %1033 = load ptr, ptr %MEMORY, align 8
  %xor3.i26.i792 = xor i64 %1032, %1030
  %xor3.i.i793 = trunc i64 %xor3.i26.i792 to i32
  %conv.i24.i794 = and i64 %xor3.i26.i792, 4294967295
  store i64 %conv.i24.i794, ptr @RDI_2296_1e56970, align 8, !tbaa !1293
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i796 = and i32 %xor3.i.i793, 255
  %1034 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i796) #15, !range !1315
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i798 = icmp eq i32 %xor3.i.i793, 0
  %conv3.i.i799 = zext i1 %cmp.i1.i.i798 to i8
  store i8 %conv3.i.i799, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i801 = lshr i32 %xor3.i.i793, 31
  %1038 = trunc i32 %res.lobit.i.i801 to i8
  store i8 %1038, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %1033, ptr %MEMORY, align 8
  br label %inst_4013d7

inst_4013d7:                                      ; preds = %inst_4013d5
  %1039 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1039, ptr @RIP_2472_1e56970, align 8
  %1040 = add i64 %1039, 3
  store volatile i64 %1040, ptr %NEXT_PC, align 8
  %1041 = load i64, ptr @RBP_2328_1e56970, align 8
  %1042 = sub i64 %1041, 112
  %1043 = load i32, ptr @RAX_2216_1e56958, align 4
  %1044 = zext i32 %1043 to i64
  %1045 = load ptr, ptr %MEMORY, align 8
  %1046 = inttoptr i64 %1042 to ptr
  %1047 = inttoptr i64 %1042 to ptr
  %1048 = ptrtoint ptr %1047 to i64
  store i32 %1043, ptr %1046, align 4
  store volatile ptr %1045, ptr %MEMORY, align 8
  br label %inst_4013da

inst_4013da:                                      ; preds = %inst_4013d7
  %1049 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1049, ptr @RIP_2472_1e56970, align 8
  %1050 = add i64 %1049, 5
  store volatile i64 %1050, ptr %NEXT_PC, align 8
  %1051 = load i64, ptr %NEXT_PC, align 8
  %1052 = sub i64 %1051, 911
  %1053 = load i64, ptr %NEXT_PC, align 8
  %1054 = load ptr, ptr %MEMORY, align 8
  %1055 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i851 = add i64 %1055, -8
  %1056 = inttoptr i64 %sub.i.i851 to ptr
  %1057 = inttoptr i64 %sub.i.i851 to ptr
  %1058 = ptrtoint ptr %1057 to i64
  store i64 %1053, ptr %1056, align 8
  store i64 %sub.i.i851, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %1052, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1052, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %1053, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %1054, ptr %MEMORY, align 8
  %1059 = load ptr, ptr %MEMORY, align 8
  %1060 = call ptr @ext_4040c0_exit(ptr @__mcsema_reg_state, i64 undef, ptr %1059)
  store ptr %1060, ptr %MEMORY, align 8
  store ptr @data_4013df, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4013df to i64), ptr %NEXT_PC, align 8
  br label %inst_4013df

inst_4013e3:                                      ; preds = %inst_4013df
  %1061 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1061, ptr @RIP_2472_1e56970, align 8
  %1062 = add i64 %1061, 7
  store volatile i64 %1062, ptr %NEXT_PC, align 8
  %1063 = load i64, ptr @RAX_2216_1e56970, align 8
  %1064 = load ptr, ptr %MEMORY, align 8
  %1065 = ashr i64 %1063, 63
  %L.sroa.2.0.insert.ext.i.i854 = zext i64 %1065 to i128
  %L.sroa.2.0.insert.shift.i.i855 = shl nuw i128 %L.sroa.2.0.insert.ext.i.i854, 64
  %L.sroa.0.0.insert.ext.i.i856 = zext i64 %1063 to i128
  %L.sroa.0.0.insert.insert.i.i857 = or i128 %L.sroa.2.0.insert.shift.i.i855, %L.sroa.0.0.insert.ext.i.i856
  %mul.i.i858 = mul nsw i128 11, %L.sroa.0.0.insert.insert.i.i857
  %retval.sroa.0.0.extract.trunc.i.i859 = trunc i128 %mul.i.i858 to i64
  store i64 %retval.sroa.0.0.extract.trunc.i.i859, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %conv4.i.i.i860 = sext i64 %retval.sroa.0.0.extract.trunc.i.i859 to i128
  %cmp.i.i.i861 = icmp ne i128 %mul.i.i858, %conv4.i.i.i860
  %frombool.i.i862 = zext i1 %cmp.i.i.i861 to i8
  store i8 %frombool.i.i862, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i864 = trunc i128 %mul.i.i858 to i32
  %conv.i.i.i.i865 = and i32 %conv.i.i.i864, 255
  %1066 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i865) #15, !range !1315
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  store i8 %1069, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store i8 0, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res_trunc.lobit.i.i870 = lshr i64 %retval.sroa.0.0.extract.trunc.i.i859, 63
  %1070 = trunc i64 %res_trunc.lobit.i.i870 to i8
  store i8 %1070, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 %frombool.i.i862, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1064, ptr %MEMORY, align 8
  br label %inst_4013ea

inst_4013ea:                                      ; preds = %inst_4013e3
  %1071 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1071, ptr @RIP_2472_1e56970, align 8
  %1072 = add i64 %1071, 10
  store volatile i64 %1072, ptr %NEXT_PC, align 8
  %1073 = load ptr, ptr %MEMORY, align 8
  store ptr @data_404050, ptr @RCX_2248_1e61d30, align 8
  store volatile ptr %1073, ptr %MEMORY, align 8
  br label %inst_4013f4

inst_4013f4:                                      ; preds = %inst_4013ea
  %1074 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1074, ptr @RIP_2472_1e56970, align 8
  %1075 = add i64 %1074, 3
  store volatile i64 %1075, ptr %NEXT_PC, align 8
  %1076 = load i64, ptr @RCX_2248_1e56970, align 8
  %1077 = load i64, ptr @RAX_2216_1e56970, align 8
  %1078 = load ptr, ptr %MEMORY, align 8
  %add.i.i905 = add i64 %1077, %1076
  store i64 %add.i.i905, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i906 = icmp ult i64 %add.i.i905, %1076
  %cmp1.i.i.i907 = icmp ult i64 %add.i.i905, %1077
  %1079 = or i1 %cmp.i.i.i906, %cmp1.i.i.i907
  %conv.i.i908 = zext i1 %1079 to i8
  store i8 %conv.i.i908, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i910 = trunc i64 %add.i.i905 to i32
  %conv.i.i.i.i.i911 = and i32 %conv.i.i.i.i910, 255
  %1080 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i911) #15, !range !1315
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  %1083 = xor i8 %1082, 1
  store i8 %1083, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i913 = xor i64 %1077, %1076
  %xor1.i.i.i.i914 = xor i64 %xor.i25.i.i.i913, %add.i.i905
  %and.i.i.i.i915 = lshr i64 %xor1.i.i.i.i914, 4
  %1084 = trunc i64 %and.i.i.i.i915 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i917 = icmp eq i64 %add.i.i905, 0
  %conv5.i.i.i918 = zext i1 %cmp.i24.i.i.i917 to i8
  store i8 %conv5.i.i.i918, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i920 = lshr i64 %add.i.i905, 63
  %1086 = trunc i64 %res.lobit.i.i.i920 to i8
  store i8 %1086, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i922 = lshr i64 %1076, 63
  %shr1.i.i.i.i923 = lshr i64 %1077, 63
  %xor.i.i.i.i924 = xor i64 %res.lobit.i.i.i920, %shr.i.i.i.i922
  %xor3.i.i.i.i925 = xor i64 %res.lobit.i.i.i920, %shr1.i.i.i.i923
  %add.i.i.i.i926 = add nuw nsw i64 %xor.i.i.i.i924, %xor3.i.i.i.i925
  %cmp.i.i.i.i927 = icmp eq i64 %add.i.i.i.i926, 2
  %conv11.i.i.i928 = zext i1 %cmp.i.i.i.i927 to i8
  store i8 %conv11.i.i.i928, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1078, ptr %MEMORY, align 8
  br label %inst_4013f7

inst_4013f7:                                      ; preds = %inst_4013f4
  %1087 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1087, ptr @RIP_2472_1e56970, align 8
  %1088 = add i64 %1087, 4
  store volatile i64 %1088, ptr %NEXT_PC, align 8
  %1089 = load i64, ptr @RBP_2328_1e56970, align 8
  %1090 = sub i64 %1089, 20
  %1091 = load ptr, ptr %MEMORY, align 8
  %1092 = inttoptr i64 %1090 to ptr
  %1093 = inttoptr i64 %1090 to ptr
  %1094 = ptrtoint ptr %1093 to i64
  %1095 = load i32, ptr %1092, align 4
  %conv.i.i931 = sext i32 %1095 to i64
  store i64 %conv.i.i931, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %1091, ptr %MEMORY, align 8
  br label %inst_4013fb

inst_4013fb:                                      ; preds = %inst_4013f7
  %1096 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1096, ptr @RIP_2472_1e56970, align 8
  %1097 = add i64 %1096, 4
  store volatile i64 %1097, ptr %NEXT_PC, align 8
  %1098 = load i64, ptr @RCX_2248_1e56970, align 8
  %1099 = load i64, ptr @RAX_2216_1e56970, align 8
  %1100 = mul i64 %1099, 1
  %1101 = add i64 %1098, %1100
  %1102 = load ptr, ptr %MEMORY, align 8
  %1103 = inttoptr i64 %1101 to ptr
  %1104 = inttoptr i64 %1101 to ptr
  %1105 = ptrtoint ptr %1104 to i64
  %1106 = load i8, ptr %1103, align 1
  %conv.i.i903 = sext i8 %1106 to i64
  %conv.i10.i904 = and i64 %conv.i.i903, 4294967295
  store i64 %conv.i10.i904, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %1102, ptr %MEMORY, align 8
  br label %inst_4013ff

inst_4013ff:                                      ; preds = %inst_4013fb
  %1107 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1107, ptr @RIP_2472_1e56970, align 8
  %1108 = add i64 %1107, 3
  store volatile i64 %1108, ptr %NEXT_PC, align 8
  %1109 = load i32, ptr @RDX_2264_1e56958, align 4
  %1110 = zext i32 %1109 to i64
  %1111 = load ptr, ptr %MEMORY, align 8
  %sub.i.i880 = sub i32 %1109, 32
  %cmp.i.i.i881 = icmp ult i32 %1109, 32
  %conv.i14.i882 = zext i1 %cmp.i.i.i881 to i8
  store i8 %conv.i14.i882, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i884 = and i32 %sub.i.i880, 255
  %1112 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i884) #15, !range !1315
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i16.i886 = xor i64 32, %1110
  %xor.i25.i.i.i887 = trunc i64 %xor.i25.i.i16.i886 to i32
  %xor1.i.i.i.i888 = xor i32 %sub.i.i880, %xor.i25.i.i.i887
  %and.i.i.i.i889 = lshr i32 %xor1.i.i.i.i888, 4
  %1116 = trunc i32 %and.i.i.i.i889 to i8
  %1117 = and i8 %1116, 1
  store i8 %1117, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i891 = icmp eq i32 %sub.i.i880, 0
  %conv5.i.i.i892 = zext i1 %cmp.i24.i.i.i891 to i8
  store i8 %conv5.i.i.i892, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i894 = lshr i32 %sub.i.i880, 31
  %1118 = trunc i32 %res.lobit.i.i.i894 to i8
  store i8 %1118, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i896 = lshr i32 %1109, 31
  %xor3.i.i.i.i897 = xor i32 %res.lobit.i.i.i894, %shr.i.i.i.i896
  %add.i.i.i.i898 = add nuw nsw i32 %xor3.i.i.i.i897, %shr.i.i.i.i896
  %cmp.i.i.i.i899 = icmp eq i32 %add.i.i.i.i898, 2
  %conv11.i.i.i900 = zext i1 %cmp.i.i.i.i899 to i8
  store i8 %conv11.i.i.i900, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1111, ptr %MEMORY, align 8
  br label %inst_401402

inst_401402:                                      ; preds = %inst_4013ff
  %1119 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1119, ptr @RIP_2472_1e56970, align 8
  %1120 = add i64 %1119, 6
  store volatile i64 %1120, ptr %NEXT_PC, align 8
  %1121 = load i64, ptr %NEXT_PC, align 8
  %1122 = add i64 %1121, 83
  %1123 = load i64, ptr %NEXT_PC, align 8
  %1124 = load ptr, ptr %MEMORY, align 8
  %1125 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  store i8 %1125, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %tobool.not.i878 = icmp eq i8 %1125, 0
  %cond1.i.i879 = select i1 %tobool.not.i878, i64 %1123, i64 %1122
  store i64 %cond1.i.i879, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %1124, ptr %MEMORY, align 8
  %1126 = load i8, ptr %BRANCH_TAKEN, align 1
  %1127 = icmp eq i8 %1126, 1
  br i1 %1127, label %1128, label %1129

1128:                                             ; preds = %inst_401402
  br label %inst_40145b

1129:                                             ; preds = %inst_401402
  br label %inst_401408

inst_40140c:                                      ; preds = %inst_401408
  %1130 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1130, ptr @RIP_2472_1e56970, align 8
  %1131 = add i64 %1130, 6
  store volatile i64 %1131, ptr %NEXT_PC, align 8
  %1132 = load i64, ptr %NEXT_PC, align 8
  %1133 = add i64 %1132, 61
  %1134 = load i64, ptr %NEXT_PC, align 8
  %1135 = load ptr, ptr %MEMORY, align 8
  %1136 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %tobool.not.i874 = icmp eq i8 %1136, 0
  %frombool.i875 = zext i1 %tobool.not.i874 to i8
  store i8 %frombool.i875, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i876 = select i1 %tobool.not.i874, i64 %1133, i64 %1134
  store i64 %cond1.i.i876, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %1135, ptr %MEMORY, align 8
  %1137 = load i8, ptr %BRANCH_TAKEN, align 1
  %1138 = icmp eq i8 %1137, 1
  br i1 %1138, label %1139, label %1140

1139:                                             ; preds = %inst_40140c
  br label %inst_40144f

1140:                                             ; preds = %inst_40140c
  br label %inst_401412

inst_401416:                                      ; preds = %inst_401412
  %1141 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1141, ptr @RIP_2472_1e56970, align 8
  %1142 = add i64 %1141, 7
  store volatile i64 %1142, ptr %NEXT_PC, align 8
  %1143 = load i64, ptr @RAX_2216_1e56970, align 8
  %1144 = load ptr, ptr %MEMORY, align 8
  %1145 = ashr i64 %1143, 63
  %L.sroa.2.0.insert.ext.i.i830 = zext i64 %1145 to i128
  %L.sroa.2.0.insert.shift.i.i831 = shl nuw i128 %L.sroa.2.0.insert.ext.i.i830, 64
  %L.sroa.0.0.insert.ext.i.i832 = zext i64 %1143 to i128
  %L.sroa.0.0.insert.insert.i.i833 = or i128 %L.sroa.2.0.insert.shift.i.i831, %L.sroa.0.0.insert.ext.i.i832
  %mul.i.i834 = mul nsw i128 11, %L.sroa.0.0.insert.insert.i.i833
  %retval.sroa.0.0.extract.trunc.i.i835 = trunc i128 %mul.i.i834 to i64
  store i64 %retval.sroa.0.0.extract.trunc.i.i835, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %conv4.i.i.i836 = sext i64 %retval.sroa.0.0.extract.trunc.i.i835 to i128
  %cmp.i.i.i837 = icmp ne i128 %mul.i.i834, %conv4.i.i.i836
  %frombool.i.i838 = zext i1 %cmp.i.i.i837 to i8
  store i8 %frombool.i.i838, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i840 = trunc i128 %mul.i.i834 to i32
  %conv.i.i.i.i841 = and i32 %conv.i.i.i840, 255
  %1146 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i841) #15, !range !1315
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  store i8 %1149, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store i8 0, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res_trunc.lobit.i.i846 = lshr i64 %retval.sroa.0.0.extract.trunc.i.i835, 63
  %1150 = trunc i64 %res_trunc.lobit.i.i846 to i8
  store i8 %1150, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 %frombool.i.i838, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1144, ptr %MEMORY, align 8
  br label %inst_40141d

inst_40141d:                                      ; preds = %inst_401416
  %1151 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1151, ptr @RIP_2472_1e56970, align 8
  %1152 = add i64 %1151, 10
  store volatile i64 %1152, ptr %NEXT_PC, align 8
  %1153 = load ptr, ptr %MEMORY, align 8
  store ptr @data_404050, ptr @RCX_2248_1e61d30, align 8
  store volatile ptr %1153, ptr %MEMORY, align 8
  br label %inst_401427

inst_401427:                                      ; preds = %inst_40141d
  %1154 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1154, ptr @RIP_2472_1e56970, align 8
  %1155 = add i64 %1154, 3
  store volatile i64 %1155, ptr %NEXT_PC, align 8
  %1156 = load i64, ptr @RCX_2248_1e56970, align 8
  %1157 = load i64, ptr @RAX_2216_1e56970, align 8
  %1158 = load ptr, ptr %MEMORY, align 8
  %add.i.i805 = add i64 %1157, %1156
  store i64 %add.i.i805, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i806 = icmp ult i64 %add.i.i805, %1156
  %cmp1.i.i.i807 = icmp ult i64 %add.i.i805, %1157
  %1159 = or i1 %cmp.i.i.i806, %cmp1.i.i.i807
  %conv.i.i808 = zext i1 %1159 to i8
  store i8 %conv.i.i808, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i810 = trunc i64 %add.i.i805 to i32
  %conv.i.i.i.i.i811 = and i32 %conv.i.i.i.i810, 255
  %1160 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i811) #15, !range !1315
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i813 = xor i64 %1157, %1156
  %xor1.i.i.i.i814 = xor i64 %xor.i25.i.i.i813, %add.i.i805
  %and.i.i.i.i815 = lshr i64 %xor1.i.i.i.i814, 4
  %1164 = trunc i64 %and.i.i.i.i815 to i8
  %1165 = and i8 %1164, 1
  store i8 %1165, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i817 = icmp eq i64 %add.i.i805, 0
  %conv5.i.i.i818 = zext i1 %cmp.i24.i.i.i817 to i8
  store i8 %conv5.i.i.i818, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i820 = lshr i64 %add.i.i805, 63
  %1166 = trunc i64 %res.lobit.i.i.i820 to i8
  store i8 %1166, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i822 = lshr i64 %1156, 63
  %shr1.i.i.i.i823 = lshr i64 %1157, 63
  %xor.i.i.i.i824 = xor i64 %res.lobit.i.i.i820, %shr.i.i.i.i822
  %xor3.i.i.i.i825 = xor i64 %res.lobit.i.i.i820, %shr1.i.i.i.i823
  %add.i.i.i.i826 = add nuw nsw i64 %xor.i.i.i.i824, %xor3.i.i.i.i825
  %cmp.i.i.i.i827 = icmp eq i64 %add.i.i.i.i826, 2
  %conv11.i.i.i828 = zext i1 %cmp.i.i.i.i827 to i8
  store i8 %conv11.i.i.i828, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1158, ptr %MEMORY, align 8
  br label %inst_40142a

inst_40142a:                                      ; preds = %inst_401427
  %1167 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1167, ptr @RIP_2472_1e56970, align 8
  %1168 = add i64 %1167, 4
  store volatile i64 %1168, ptr %NEXT_PC, align 8
  %1169 = load i64, ptr @RBP_2328_1e56970, align 8
  %1170 = sub i64 %1169, 20
  %1171 = load ptr, ptr %MEMORY, align 8
  %1172 = inttoptr i64 %1170 to ptr
  %1173 = inttoptr i64 %1170 to ptr
  %1174 = ptrtoint ptr %1173 to i64
  %1175 = load i32, ptr %1172, align 4
  %conv.i.i787 = sext i32 %1175 to i64
  store i64 %conv.i.i787, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %1171, ptr %MEMORY, align 8
  br label %inst_40142e

inst_40142e:                                      ; preds = %inst_40142a
  %1176 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1176, ptr @RIP_2472_1e56970, align 8
  %1177 = add i64 %1176, 4
  store volatile i64 %1177, ptr %NEXT_PC, align 8
  %1178 = load i64, ptr @RCX_2248_1e56970, align 8
  %1179 = load i64, ptr @RAX_2216_1e56970, align 8
  %1180 = mul i64 %1179, 1
  %1181 = add i64 %1178, %1180
  %1182 = load ptr, ptr %MEMORY, align 8
  %1183 = inttoptr i64 %1181 to ptr
  %1184 = inttoptr i64 %1181 to ptr
  %1185 = ptrtoint ptr %1184 to i64
  %1186 = load i8, ptr %1183, align 1
  %conv.i.i783 = sext i8 %1186 to i64
  %conv.i10.i784 = and i64 %conv.i.i783, 4294967295
  store i64 %conv.i10.i784, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %1182, ptr %MEMORY, align 8
  br label %inst_401432

inst_401432:                                      ; preds = %inst_40142e
  %1187 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1187, ptr @RIP_2472_1e56970, align 8
  %1188 = add i64 %1187, 3
  store volatile i64 %1188, ptr %NEXT_PC, align 8
  %1189 = load i32, ptr @RDX_2264_1e56958, align 4
  %1190 = zext i32 %1189 to i64
  %1191 = load ptr, ptr %MEMORY, align 8
  %sub.i.i760 = sub i32 %1189, 124
  %cmp.i.i.i761 = icmp ult i32 %1189, 124
  %conv.i14.i762 = zext i1 %cmp.i.i.i761 to i8
  store i8 %conv.i14.i762, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i764 = and i32 %sub.i.i760, 255
  %1192 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i764) #15, !range !1315
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  store i8 %1195, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i16.i766 = xor i64 124, %1190
  %xor.i25.i.i.i767 = trunc i64 %xor.i25.i.i16.i766 to i32
  %xor1.i.i.i.i768 = xor i32 %sub.i.i760, %xor.i25.i.i.i767
  %and.i.i.i.i769 = lshr i32 %xor1.i.i.i.i768, 4
  %1196 = trunc i32 %and.i.i.i.i769 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i771 = icmp eq i32 %sub.i.i760, 0
  %conv5.i.i.i772 = zext i1 %cmp.i24.i.i.i771 to i8
  store i8 %conv5.i.i.i772, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i774 = lshr i32 %sub.i.i760, 31
  %1198 = trunc i32 %res.lobit.i.i.i774 to i8
  store i8 %1198, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i776 = lshr i32 %1189, 31
  %xor3.i.i.i.i777 = xor i32 %res.lobit.i.i.i774, %shr.i.i.i.i776
  %add.i.i.i.i778 = add nuw nsw i32 %xor3.i.i.i.i777, %shr.i.i.i.i776
  %cmp.i.i.i.i779 = icmp eq i32 %add.i.i.i.i778, 2
  %conv11.i.i.i780 = zext i1 %cmp.i.i.i.i779 to i8
  store i8 %conv11.i.i.i780, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1191, ptr %MEMORY, align 8
  br label %inst_401435

inst_401435:                                      ; preds = %inst_401432
  %1199 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1199, ptr @RIP_2472_1e56970, align 8
  %1200 = add i64 %1199, 6
  store volatile i64 %1200, ptr %NEXT_PC, align 8
  %1201 = load i64, ptr %NEXT_PC, align 8
  %1202 = add i64 %1201, 20
  %1203 = load i64, ptr %NEXT_PC, align 8
  %1204 = load ptr, ptr %MEMORY, align 8
  %1205 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %tobool.not.i757 = icmp eq i8 %1205, 0
  %frombool.i758 = zext i1 %tobool.not.i757 to i8
  store i8 %frombool.i758, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i759 = select i1 %tobool.not.i757, i64 %1202, i64 %1203
  store i64 %cond1.i.i759, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %1204, ptr %MEMORY, align 8
  %1206 = load i8, ptr %BRANCH_TAKEN, align 1
  %1207 = icmp eq i8 %1206, 1
  br i1 %1207, label %1208, label %1209

1208:                                             ; preds = %inst_401435
  br label %inst_40144f

1209:                                             ; preds = %inst_401435
  br label %inst_40143b

inst_40143f:                                      ; preds = %inst_40143b
  %1210 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1210, ptr @RIP_2472_1e56970, align 8
  %1211 = add i64 %1210, 6
  store volatile i64 %1211, ptr %NEXT_PC, align 8
  %1212 = load i64, ptr %NEXT_PC, align 8
  %1213 = add i64 %1212, 10
  %1214 = load i64, ptr %NEXT_PC, align 8
  %1215 = load ptr, ptr %MEMORY, align 8
  %1216 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %tobool.i749 = icmp ne i8 %1216, 0
  %1217 = load i8, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %tobool9.i751 = icmp ne i8 %1217, 0
  %1218 = load i8, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  %tobool11.i = icmp ne i8 %1218, 0
  %cmp.i.i753 = xor i1 %tobool9.i751, %tobool11.i
  %1219 = or i1 %tobool.i749, %cmp.i.i753
  %frombool.i754 = zext i1 %1219 to i8
  store i8 %frombool.i754, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i755 = select i1 %1219, i64 %1213, i64 %1214
  store i64 %cond1.i.i755, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %1215, ptr %MEMORY, align 8
  %1220 = load i8, ptr %BRANCH_TAKEN, align 1
  %1221 = icmp eq i8 %1220, 1
  br i1 %1221, label %1222, label %1223

1222:                                             ; preds = %inst_40143f
  br label %inst_40144f

1223:                                             ; preds = %inst_40143f
  br label %inst_401445

inst_401449:                                      ; preds = %inst_401445
  %1224 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1224, ptr @RIP_2472_1e56970, align 8
  %1225 = add i64 %1224, 6
  store volatile i64 %1225, ptr %NEXT_PC, align 8
  %1226 = load i64, ptr %NEXT_PC, align 8
  %1227 = add i64 %1226, 12
  %1228 = load i64, ptr %NEXT_PC, align 8
  %1229 = load ptr, ptr %MEMORY, align 8
  %1230 = load i8, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %tobool.i742 = icmp ne i8 %1230, 0
  %1231 = load i8, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  %tobool9.i744 = icmp ne i8 %1231, 0
  %cmp.i.i745 = xor i1 %tobool.i742, %tobool9.i744
  %frombool.i746 = zext i1 %cmp.i.i745 to i8
  store i8 %frombool.i746, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i747 = select i1 %cmp.i.i745, i64 %1227, i64 %1228
  store i64 %cond1.i.i747, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %1229, ptr %MEMORY, align 8
  %1232 = load i8, ptr %BRANCH_TAKEN, align 1
  %1233 = icmp eq i8 %1232, 1
  br i1 %1233, label %1234, label %1235

1234:                                             ; preds = %inst_401449
  br label %inst_40145b

1235:                                             ; preds = %inst_401449
  br label %inst_40144f

inst_401452:                                      ; preds = %inst_40144f
  %1236 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1236, ptr @RIP_2472_1e56970, align 8
  %1237 = add i64 %1236, 3
  store volatile i64 %1237, ptr %NEXT_PC, align 8
  %1238 = load i64, ptr @RBP_2328_1e56970, align 8
  %1239 = sub i64 %1238, 20
  %1240 = load i32, ptr @RAX_2216_1e56958, align 4
  %1241 = zext i32 %1240 to i64
  %1242 = load ptr, ptr %MEMORY, align 8
  %1243 = inttoptr i64 %1239 to ptr
  %1244 = inttoptr i64 %1239 to ptr
  %1245 = ptrtoint ptr %1244 to i64
  store i32 %1240, ptr %1243, align 4
  store volatile ptr %1242, ptr %MEMORY, align 8
  br label %inst_401455

inst_401455:                                      ; preds = %inst_401452
  %1246 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1246, ptr @RIP_2472_1e56970, align 8
  %1247 = add i64 %1246, 3
  store volatile i64 %1247, ptr %NEXT_PC, align 8
  %1248 = load i64, ptr @RBP_2328_1e56970, align 8
  %1249 = sub i64 %1248, 32
  %1250 = load ptr, ptr %MEMORY, align 8
  %1251 = inttoptr i64 %1249 to ptr
  %1252 = inttoptr i64 %1249 to ptr
  %1253 = ptrtoint ptr %1252 to i64
  %1254 = load i32, ptr %1251, align 4
  %conv.i.i735 = zext i32 %1254 to i64
  store i64 %conv.i.i735, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %1250, ptr %MEMORY, align 8
  br label %inst_401458

inst_401458:                                      ; preds = %inst_401455
  %1255 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1255, ptr @RIP_2472_1e56970, align 8
  %1256 = add i64 %1255, 3
  store volatile i64 %1256, ptr %NEXT_PC, align 8
  %1257 = load i64, ptr @RBP_2328_1e56970, align 8
  %1258 = sub i64 %1257, 24
  %1259 = load i32, ptr @RAX_2216_1e56958, align 4
  %1260 = zext i32 %1259 to i64
  %1261 = load ptr, ptr %MEMORY, align 8
  %1262 = inttoptr i64 %1258 to ptr
  %1263 = inttoptr i64 %1258 to ptr
  %1264 = ptrtoint ptr %1263 to i64
  store i32 %1259, ptr %1262, align 4
  store volatile ptr %1261, ptr %MEMORY, align 8
  br label %inst_40145b

inst_40145e:                                      ; preds = %inst_40145b
  %1265 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1265, ptr @RIP_2472_1e56970, align 8
  %1266 = add i64 %1265, 3
  store volatile i64 %1266, ptr %NEXT_PC, align 8
  %1267 = load i64, ptr @RBP_2328_1e56970, align 8
  %1268 = sub i64 %1267, 24
  %1269 = load ptr, ptr %MEMORY, align 8
  %1270 = inttoptr i64 %1268 to ptr
  %1271 = inttoptr i64 %1268 to ptr
  %1272 = ptrtoint ptr %1271 to i64
  %1273 = load i32, ptr %1270, align 4
  %conv.i.i728 = zext i32 %1273 to i64
  store i64 %conv.i.i728, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %1269, ptr %MEMORY, align 8
  br label %inst_401461

inst_401461:                                      ; preds = %inst_40145e
  %1274 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1274, ptr @RIP_2472_1e56970, align 8
  %1275 = add i64 %1274, 10
  store volatile i64 %1275, ptr %NEXT_PC, align 8
  %1276 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4020db, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %1276, ptr %MEMORY, align 8
  br label %inst_40146b

inst_40146b:                                      ; preds = %inst_401461
  %1277 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1277, ptr @RIP_2472_1e56970, align 8
  %1278 = add i64 %1277, 2
  store volatile i64 %1278, ptr %NEXT_PC, align 8
  %1279 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %1279, ptr %MEMORY, align 8
  br label %inst_40146d

inst_40146d:                                      ; preds = %inst_40146b
  %1280 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1280, ptr @RIP_2472_1e56970, align 8
  %1281 = add i64 %1280, 5
  store volatile i64 %1281, ptr %NEXT_PC, align 8
  %1282 = load i64, ptr %NEXT_PC, align 8
  %1283 = sub i64 %1282, 1090
  %1284 = load i64, ptr %NEXT_PC, align 8
  %1285 = load ptr, ptr %MEMORY, align 8
  %1286 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i699 = add i64 %1286, -8
  %1287 = inttoptr i64 %sub.i.i699 to ptr
  %1288 = inttoptr i64 %sub.i.i699 to ptr
  %1289 = ptrtoint ptr %1288 to i64
  store i64 %1284, ptr %1287, align 8
  store i64 %sub.i.i699, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %1283, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1283, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %1284, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %1285, ptr %MEMORY, align 8
  %1290 = load ptr, ptr %MEMORY, align 8
  %1291 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %1290)
  store ptr %1291, ptr %MEMORY, align 8
  store ptr @data_401472, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401472 to i64), ptr %NEXT_PC, align 8
  br label %inst_401472

inst_401472:                                      ; preds = %inst_40146d
  %1292 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1292, ptr @RIP_2472_1e56970, align 8
  %1293 = add i64 %1292, 2
  store volatile i64 %1293, ptr %NEXT_PC, align 8
  %1294 = load i32, ptr @RCX_2248_1e56958, align 4
  %1295 = zext i32 %1294 to i64
  %1296 = load i32, ptr @RCX_2248_1e56958, align 4
  %1297 = zext i32 %1296 to i64
  %1298 = load ptr, ptr %MEMORY, align 8
  %xor3.i26.i660 = xor i64 %1297, %1295
  %xor3.i.i661 = trunc i64 %xor3.i26.i660 to i32
  %conv.i24.i662 = and i64 %xor3.i26.i660, 4294967295
  store i64 %conv.i24.i662, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i664 = and i32 %xor3.i.i661, 255
  %1299 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i664) #15, !range !1315
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  store i8 %1302, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i666 = icmp eq i32 %xor3.i.i661, 0
  %conv3.i.i667 = zext i1 %cmp.i1.i.i666 to i8
  store i8 %conv3.i.i667, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i669 = lshr i32 %xor3.i.i661, 31
  %1303 = trunc i32 %res.lobit.i.i669 to i8
  store i8 %1303, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %1298, ptr %MEMORY, align 8
  br label %inst_401474

inst_401474:                                      ; preds = %inst_401472
  %1304 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1304, ptr @RIP_2472_1e56970, align 8
  %1305 = add i64 %1304, 3
  store volatile i64 %1305, ptr %NEXT_PC, align 8
  %1306 = load i64, ptr @RBP_2328_1e56970, align 8
  %1307 = sub i64 %1306, 36
  %1308 = load ptr, ptr %MEMORY, align 8
  %1309 = inttoptr i64 %1307 to ptr
  %1310 = inttoptr i64 %1307 to ptr
  %1311 = ptrtoint ptr %1310 to i64
  %1312 = load i32, ptr %1309, align 4
  %conv.i.i635 = zext i32 %1312 to i64
  store i64 %conv.i.i635, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  store volatile ptr %1308, ptr %MEMORY, align 8
  br label %inst_401477

inst_401477:                                      ; preds = %inst_401474
  %1313 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1313, ptr @RIP_2472_1e56970, align 8
  %1314 = add i64 %1313, 4
  store volatile i64 %1314, ptr %NEXT_PC, align 8
  %1315 = load i64, ptr @RBP_2328_1e56970, align 8
  %1316 = sub i64 %1315, 36
  %1317 = load ptr, ptr %MEMORY, align 8
  %1318 = inttoptr i64 %1316 to ptr
  %1319 = inttoptr i64 %1316 to ptr
  %1320 = ptrtoint ptr %1319 to i64
  %1321 = load i32, ptr %1318, align 4
  %conv.i.i629 = sext i32 %1321 to i64
  store i64 %conv.i.i629, ptr @RDI_2296_1e56970, align 8, !tbaa !1293
  store volatile ptr %1317, ptr %MEMORY, align 8
  br label %inst_40147b

inst_40147b:                                      ; preds = %inst_401477
  %1322 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1322, ptr @RIP_2472_1e56970, align 8
  %1323 = add i64 %1322, 5
  store volatile i64 %1323, ptr %NEXT_PC, align 8
  %1324 = load i64, ptr @RBP_2328_1e56970, align 8
  %1325 = load i64, ptr @RDI_2296_1e56970, align 8
  %1326 = mul i64 %1325, 1
  %1327 = add i64 %1324, %1326
  %1328 = sub i64 %1327, 64
  %1329 = load ptr, ptr %MEMORY, align 8
  %1330 = inttoptr i64 %1328 to ptr
  %1331 = inttoptr i64 %1328 to ptr
  %1332 = ptrtoint ptr %1331 to i64
  %1333 = load i8, ptr %1330, align 1
  %conv.i.i625 = sext i8 %1333 to i64
  %conv.i10.i626 = and i64 %conv.i.i625, 4294967295
  store i64 %conv.i10.i626, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %1329, ptr %MEMORY, align 8
  br label %inst_401480

inst_401480:                                      ; preds = %inst_40147b
  %1334 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1334, ptr @RIP_2472_1e56970, align 8
  %1335 = add i64 %1334, 4
  store volatile i64 %1335, ptr %NEXT_PC, align 8
  %1336 = load i64, ptr @RBP_2328_1e56970, align 8
  %1337 = sub i64 %1336, 28
  %1338 = load ptr, ptr %MEMORY, align 8
  %1339 = inttoptr i64 %1337 to ptr
  %1340 = inttoptr i64 %1337 to ptr
  %1341 = ptrtoint ptr %1340 to i64
  %1342 = load i32, ptr %1339, align 4
  %conv.i.i619 = zext i32 %1342 to i64
  store i64 %conv.i.i619, ptr @R8_2344_1e56970, align 8, !tbaa !1293
  store volatile ptr %1338, ptr %MEMORY, align 8
  br label %inst_401484

inst_401484:                                      ; preds = %inst_401480
  %1343 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1343, ptr @RIP_2472_1e56970, align 8
  %1344 = add i64 %1343, 4
  store volatile i64 %1344, ptr %NEXT_PC, align 8
  %1345 = load i32, ptr @R8_2344_1e56958, align 4
  %1346 = zext i32 %1345 to i64
  %1347 = load i64, ptr @RBP_2328_1e56970, align 8
  %1348 = sub i64 %1347, 20
  %1349 = load ptr, ptr %MEMORY, align 8
  %1350 = inttoptr i64 %1348 to ptr
  %1351 = inttoptr i64 %1348 to ptr
  %1352 = ptrtoint ptr %1351 to i64
  %1353 = load i32, ptr %1350, align 4
  %sub.i.i595 = sub i32 %1345, %1353
  %cmp.i.i.i596 = icmp ugt i32 %1353, %1345
  %conv.i12.i597 = zext i1 %cmp.i.i.i596 to i8
  store i8 %conv.i12.i597, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i599 = and i32 %sub.i.i595, 255
  %1354 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i599) #15, !range !1315
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i601 = xor i32 %1353, %1345
  %xor1.i.i.i.i602 = xor i32 %xor.i25.i.i.i601, %sub.i.i595
  %and.i.i.i.i603 = lshr i32 %xor1.i.i.i.i602, 4
  %1358 = trunc i32 %and.i.i.i.i603 to i8
  %1359 = and i8 %1358, 1
  store i8 %1359, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i605 = icmp eq i32 %sub.i.i595, 0
  %conv5.i.i.i606 = zext i1 %cmp.i24.i.i.i605 to i8
  store i8 %conv5.i.i.i606, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i608 = lshr i32 %sub.i.i595, 31
  %1360 = trunc i32 %res.lobit.i.i.i608 to i8
  store i8 %1360, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i610 = lshr i32 %1345, 31
  %shr1.i.i.i.i611 = lshr i32 %1353, 31
  %xor.i.i.i.i612 = xor i32 %shr1.i.i.i.i611, %shr.i.i.i.i610
  %xor3.i.i.i.i613 = xor i32 %res.lobit.i.i.i608, %shr.i.i.i.i610
  %add.i.i.i.i614 = add nuw nsw i32 %xor3.i.i.i.i613, %xor.i.i.i.i612
  %cmp.i.i.i.i615 = icmp eq i32 %add.i.i.i.i614, 2
  %conv11.i.i.i616 = zext i1 %cmp.i.i.i.i615 to i8
  store i8 %conv11.i.i.i616, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1349, ptr %MEMORY, align 8
  br label %inst_401488

inst_401488:                                      ; preds = %inst_401484
  %1361 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1361, ptr @RIP_2472_1e56970, align 8
  %1362 = add i64 %1361, 3
  store volatile i64 %1362, ptr %NEXT_PC, align 8
  %1363 = load i64, ptr @RBP_2328_1e56970, align 8
  %1364 = sub i64 %1363, 116
  %1365 = load i32, ptr @RSI_2280_1e56958, align 4
  %1366 = zext i32 %1365 to i64
  %1367 = load ptr, ptr %MEMORY, align 8
  %1368 = inttoptr i64 %1364 to ptr
  %1369 = inttoptr i64 %1364 to ptr
  %1370 = ptrtoint ptr %1369 to i64
  store i32 %1365, ptr %1368, align 4
  store volatile ptr %1367, ptr %MEMORY, align 8
  br label %inst_40148b

inst_40148b:                                      ; preds = %inst_401488
  %1371 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1371, ptr @RIP_2472_1e56970, align 8
  %1372 = add i64 %1371, 3
  store volatile i64 %1372, ptr %NEXT_PC, align 8
  %1373 = load i64, ptr @RBP_2328_1e56970, align 8
  %1374 = sub i64 %1373, 120
  %1375 = load i32, ptr @RDX_2264_1e56958, align 4
  %1376 = zext i32 %1375 to i64
  %1377 = load ptr, ptr %MEMORY, align 8
  %1378 = inttoptr i64 %1374 to ptr
  %1379 = inttoptr i64 %1374 to ptr
  %1380 = ptrtoint ptr %1379 to i64
  store i32 %1375, ptr %1378, align 4
  store volatile ptr %1377, ptr %MEMORY, align 8
  br label %inst_40148e

inst_40148e:                                      ; preds = %inst_40148b
  %1381 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1381, ptr @RIP_2472_1e56970, align 8
  %1382 = add i64 %1381, 3
  store volatile i64 %1382, ptr %NEXT_PC, align 8
  %1383 = load i64, ptr @RBP_2328_1e56970, align 8
  %1384 = sub i64 %1383, 121
  %1385 = load i8, ptr @RCX_2248_1e56928, align 1
  %1386 = zext i8 %1385 to i64
  %1387 = load ptr, ptr %MEMORY, align 8
  %1388 = inttoptr i64 %1384 to ptr
  %1389 = inttoptr i64 %1384 to ptr
  %1390 = ptrtoint ptr %1389 to i64
  store i8 %1385, ptr %1388, align 1
  store volatile ptr %1387, ptr %MEMORY, align 8
  br label %inst_401491

inst_401491:                                      ; preds = %inst_40148e
  %1391 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1391, ptr @RIP_2472_1e56970, align 8
  %1392 = add i64 %1391, 6
  store volatile i64 %1392, ptr %NEXT_PC, align 8
  %1393 = load i64, ptr %NEXT_PC, align 8
  %1394 = add i64 %1393, 12
  %1395 = load i64, ptr %NEXT_PC, align 8
  %1396 = load ptr, ptr %MEMORY, align 8
  %1397 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %tobool.not.i560 = icmp eq i8 %1397, 0
  %frombool.i561 = zext i1 %tobool.not.i560 to i8
  store i8 %frombool.i561, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i562 = select i1 %tobool.not.i560, i64 %1394, i64 %1395
  store i64 %cond1.i.i562, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %1396, ptr %MEMORY, align 8
  %1398 = load i8, ptr %BRANCH_TAKEN, align 1
  %1399 = icmp eq i8 %1398, 1
  br i1 %1399, label %1400, label %1401

1400:                                             ; preds = %inst_401491
  br label %inst_4014a3

1401:                                             ; preds = %inst_401491
  br label %inst_401497

inst_40149a:                                      ; preds = %inst_401497
  %1402 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1402, ptr @RIP_2472_1e56970, align 8
  %1403 = add i64 %1402, 3
  store volatile i64 %1403, ptr %NEXT_PC, align 8
  %1404 = load i32, ptr @RAX_2216_1e56958, align 4
  %1405 = zext i32 %1404 to i64
  %1406 = load i64, ptr @RBP_2328_1e56970, align 8
  %1407 = sub i64 %1406, 24
  %1408 = load ptr, ptr %MEMORY, align 8
  %1409 = inttoptr i64 %1407 to ptr
  %1410 = inttoptr i64 %1407 to ptr
  %1411 = ptrtoint ptr %1410 to i64
  %1412 = load i32, ptr %1409, align 4
  %sub.i.i511 = sub i32 %1404, %1412
  %cmp.i.i.i512 = icmp ugt i32 %1412, %1404
  %conv.i12.i513 = zext i1 %cmp.i.i.i512 to i8
  store i8 %conv.i12.i513, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i515 = and i32 %sub.i.i511, 255
  %1413 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i515) #15, !range !1315
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  %1416 = xor i8 %1415, 1
  store i8 %1416, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i517 = xor i32 %1412, %1404
  %xor1.i.i.i.i518 = xor i32 %xor.i25.i.i.i517, %sub.i.i511
  %and.i.i.i.i519 = lshr i32 %xor1.i.i.i.i518, 4
  %1417 = trunc i32 %and.i.i.i.i519 to i8
  %1418 = and i8 %1417, 1
  store i8 %1418, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i521 = icmp eq i32 %sub.i.i511, 0
  %conv5.i.i.i522 = zext i1 %cmp.i24.i.i.i521 to i8
  store i8 %conv5.i.i.i522, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i524 = lshr i32 %sub.i.i511, 31
  %1419 = trunc i32 %res.lobit.i.i.i524 to i8
  store i8 %1419, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i526 = lshr i32 %1404, 31
  %shr1.i.i.i.i527 = lshr i32 %1412, 31
  %xor.i.i.i.i528 = xor i32 %shr1.i.i.i.i527, %shr.i.i.i.i526
  %xor3.i.i.i.i529 = xor i32 %res.lobit.i.i.i524, %shr.i.i.i.i526
  %add.i.i.i.i530 = add nuw nsw i32 %xor3.i.i.i.i529, %xor.i.i.i.i528
  %cmp.i.i.i.i531 = icmp eq i32 %add.i.i.i.i530, 2
  %conv11.i.i.i532 = zext i1 %cmp.i.i.i.i531 to i8
  store i8 %conv11.i.i.i532, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1408, ptr %MEMORY, align 8
  br label %inst_40149d

inst_40149d:                                      ; preds = %inst_40149a
  %1420 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1420, ptr @RIP_2472_1e56970, align 8
  %1421 = add i64 %1420, 3
  store volatile i64 %1421, ptr %NEXT_PC, align 8
  %1422 = load ptr, ptr %MEMORY, align 8
  %1423 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  store i8 %1423, ptr @RCX_2248_1e56928, align 1, !tbaa !1290
  store volatile ptr %1422, ptr %MEMORY, align 8
  br label %inst_4014a0

inst_4014a0:                                      ; preds = %inst_40149d
  %1424 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1424, ptr @RIP_2472_1e56970, align 8
  %1425 = add i64 %1424, 3
  store volatile i64 %1425, ptr %NEXT_PC, align 8
  %1426 = load i64, ptr @RBP_2328_1e56970, align 8
  %1427 = sub i64 %1426, 121
  %1428 = load i8, ptr @RCX_2248_1e56928, align 1
  %1429 = zext i8 %1428 to i64
  %1430 = load ptr, ptr %MEMORY, align 8
  %1431 = inttoptr i64 %1427 to ptr
  %1432 = inttoptr i64 %1427 to ptr
  %1433 = ptrtoint ptr %1432 to i64
  store i8 %1428, ptr %1431, align 1
  store volatile ptr %1430, ptr %MEMORY, align 8
  br label %inst_4014a3

inst_4014a6:                                      ; preds = %inst_4014a3
  %1434 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1434, ptr @RIP_2472_1e56970, align 8
  %1435 = add i64 %1434, 2
  store volatile i64 %1435, ptr %NEXT_PC, align 8
  %1436 = load i8, ptr @RAX_2216_1e56928, align 1
  %1437 = zext i8 %1436 to i64
  %1438 = load ptr, ptr %MEMORY, align 8
  %and3.i12.i = and i64 1, %1437
  %and3.i.i = trunc i64 %and3.i12.i to i8
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %1439 = trunc i64 %and3.i12.i to i32
  %conv.i.i.i446 = and i32 %1439, 255
  %1440 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i446) #15, !range !1315
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i448 = icmp eq i8 %and3.i.i, 0
  %conv3.i.i449 = zext i1 %cmp.i1.i.i448 to i8
  store i8 %conv3.i.i449, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i451 = lshr i8 %and3.i.i, 7
  store i8 %res.lobit.i.i451, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %1438, ptr %MEMORY, align 8
  br label %inst_4014a8

inst_4014a8:                                      ; preds = %inst_4014a6
  %1444 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1444, ptr @RIP_2472_1e56970, align 8
  %1445 = add i64 %1444, 10
  store volatile i64 %1445, ptr %NEXT_PC, align 8
  %1446 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4021dd, ptr @RCX_2248_1e61d30, align 8
  store volatile ptr %1446, ptr %MEMORY, align 8
  br label %inst_4014b2

inst_4014b2:                                      ; preds = %inst_4014a8
  %1447 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1447, ptr @RIP_2472_1e56970, align 8
  %1448 = add i64 %1447, 10
  store volatile i64 %1448, ptr %NEXT_PC, align 8
  %1449 = load ptr, ptr %MEMORY, align 8
  store ptr @data_402163, ptr @RDX_2264_1e61d30, align 8
  store volatile ptr %1449, ptr %MEMORY, align 8
  br label %inst_4014bc

inst_4014bc:                                      ; preds = %inst_4014b2
  %1450 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1450, ptr @RIP_2472_1e56970, align 8
  %1451 = add i64 %1450, 4
  store volatile i64 %1451, ptr %NEXT_PC, align 8
  %1452 = load i64, ptr @RCX_2248_1e56970, align 8
  %1453 = load ptr, ptr %MEMORY, align 8
  %1454 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %tobool.not.i443 = icmp eq i8 %1454, 0
  %dst.coerce.val.i = load i64, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  %cond1.i.i444 = select i1 %tobool.not.i443, i64 %1452, i64 %dst.coerce.val.i
  store i64 %cond1.i.i444, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %1453, ptr %MEMORY, align 8
  br label %inst_4014c0

inst_4014c0:                                      ; preds = %inst_4014bc
  %1455 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1455, ptr @RIP_2472_1e56970, align 8
  %1456 = add i64 %1455, 10
  store volatile i64 %1456, ptr %NEXT_PC, align 8
  %1457 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4021bb, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %1457, ptr %MEMORY, align 8
  br label %inst_4014ca

inst_4014ca:                                      ; preds = %inst_4014c0
  %1458 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1458, ptr @RIP_2472_1e56970, align 8
  %1459 = add i64 %1458, 3
  store volatile i64 %1459, ptr %NEXT_PC, align 8
  %1460 = load i64, ptr @RBP_2328_1e56970, align 8
  %1461 = sub i64 %1460, 116
  %1462 = load ptr, ptr %MEMORY, align 8
  %1463 = inttoptr i64 %1461 to ptr
  %1464 = inttoptr i64 %1461 to ptr
  %1465 = ptrtoint ptr %1464 to i64
  %1466 = load i32, ptr %1463, align 4
  %conv.i.i439 = zext i32 %1466 to i64
  store i64 %conv.i.i439, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  store volatile ptr %1462, ptr %MEMORY, align 8
  br label %inst_4014cd

inst_4014cd:                                      ; preds = %inst_4014ca
  %1467 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1467, ptr @RIP_2472_1e56970, align 8
  %1468 = add i64 %1467, 4
  store volatile i64 %1468, ptr %NEXT_PC, align 8
  %1469 = load i64, ptr @RBP_2328_1e56970, align 8
  %1470 = sub i64 %1469, 120
  %1471 = load ptr, ptr %MEMORY, align 8
  %1472 = inttoptr i64 %1470 to ptr
  %1473 = inttoptr i64 %1470 to ptr
  %1474 = ptrtoint ptr %1473 to i64
  %1475 = load i32, ptr %1472, align 4
  %conv.i.i433 = zext i32 %1475 to i64
  store i64 %conv.i.i433, ptr @R8_2344_1e56970, align 8, !tbaa !1293
  store volatile ptr %1471, ptr %MEMORY, align 8
  br label %inst_4014d1

inst_4014d1:                                      ; preds = %inst_4014cd
  %1476 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1476, ptr @RIP_2472_1e56970, align 8
  %1477 = add i64 %1476, 7
  store volatile i64 %1477, ptr %NEXT_PC, align 8
  %1478 = load i64, ptr @RBP_2328_1e56970, align 8
  %1479 = sub i64 %1478, 136
  %1480 = load i64, ptr @RDX_2264_1e56970, align 8
  %1481 = load ptr, ptr %MEMORY, align 8
  %1482 = inttoptr i64 %1479 to ptr
  %1483 = inttoptr i64 %1479 to ptr
  %1484 = ptrtoint ptr %1483 to i64
  store i64 %1480, ptr %1482, align 8
  store volatile ptr %1481, ptr %MEMORY, align 8
  br label %inst_4014d8

inst_4014d8:                                      ; preds = %inst_4014d1
  %1485 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1485, ptr @RIP_2472_1e56970, align 8
  %1486 = add i64 %1485, 3
  store volatile i64 %1486, ptr %NEXT_PC, align 8
  %1487 = load i32, ptr @R8_2344_1e56958, align 4
  %1488 = zext i32 %1487 to i64
  %1489 = load ptr, ptr %MEMORY, align 8
  %conv.i11.i407 = and i64 %1488, 4294967295
  store i64 %conv.i11.i407, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %1489, ptr %MEMORY, align 8
  br label %inst_4014db

inst_4014db:                                      ; preds = %inst_4014d8
  %1490 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1490, ptr @RIP_2472_1e56970, align 8
  %1491 = add i64 %1490, 7
  store volatile i64 %1491, ptr %NEXT_PC, align 8
  %1492 = load i64, ptr @RBP_2328_1e56970, align 8
  %1493 = sub i64 %1492, 136
  %1494 = load ptr, ptr %MEMORY, align 8
  %1495 = inttoptr i64 %1493 to ptr
  %1496 = inttoptr i64 %1493 to ptr
  %1497 = ptrtoint ptr %1496 to i64
  %1498 = load i64, ptr %1495, align 8
  store i64 %1498, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  store volatile ptr %1494, ptr %MEMORY, align 8
  br label %inst_4014e2

inst_4014e2:                                      ; preds = %inst_4014db
  %1499 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1499, ptr @RIP_2472_1e56970, align 8
  %1500 = add i64 %1499, 2
  store volatile i64 %1500, ptr %NEXT_PC, align 8
  %1501 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %1501, ptr %MEMORY, align 8
  br label %inst_4014e4

inst_4014e4:                                      ; preds = %inst_4014e2
  %1502 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1502, ptr @RIP_2472_1e56970, align 8
  %1503 = add i64 %1502, 5
  store volatile i64 %1503, ptr %NEXT_PC, align 8
  %1504 = load i64, ptr %NEXT_PC, align 8
  %1505 = sub i64 %1504, 1209
  %1506 = load i64, ptr %NEXT_PC, align 8
  %1507 = load ptr, ptr %MEMORY, align 8
  %1508 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i369 = add i64 %1508, -8
  %1509 = inttoptr i64 %sub.i.i369 to ptr
  %1510 = inttoptr i64 %sub.i.i369 to ptr
  %1511 = ptrtoint ptr %1510 to i64
  store i64 %1506, ptr %1509, align 8
  store i64 %sub.i.i369, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %1505, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1505, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %1506, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %1507, ptr %MEMORY, align 8
  %1512 = load ptr, ptr %MEMORY, align 8
  %1513 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %1512)
  store ptr %1513, ptr %MEMORY, align 8
  store ptr @data_4014e9, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_4014e9 to i64), ptr %NEXT_PC, align 8
  br label %inst_4014e9

inst_4014e9:                                      ; preds = %inst_4014e4
  %1514 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1514, ptr @RIP_2472_1e56970, align 8
  %1515 = add i64 %1514, 3
  store volatile i64 %1515, ptr %NEXT_PC, align 8
  %1516 = load i64, ptr @RBP_2328_1e56970, align 8
  %1517 = sub i64 %1516, 28
  %1518 = load ptr, ptr %MEMORY, align 8
  %1519 = inttoptr i64 %1517 to ptr
  %1520 = inttoptr i64 %1517 to ptr
  %1521 = ptrtoint ptr %1520 to i64
  %1522 = load i32, ptr %1519, align 4
  %conv.i.i361 = zext i32 %1522 to i64
  store i64 %conv.i.i361, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %1518, ptr %MEMORY, align 8
  br label %inst_4014ec

inst_4014ec:                                      ; preds = %inst_4014e9
  %1523 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1523, ptr @RIP_2472_1e56970, align 8
  %1524 = add i64 %1523, 3
  store volatile i64 %1524, ptr %NEXT_PC, align 8
  %1525 = load i32, ptr @RDX_2264_1e56958, align 4
  %1526 = zext i32 %1525 to i64
  %1527 = load i64, ptr @RBP_2328_1e56970, align 8
  %1528 = sub i64 %1527, 20
  %1529 = load ptr, ptr %MEMORY, align 8
  %1530 = inttoptr i64 %1528 to ptr
  %1531 = inttoptr i64 %1528 to ptr
  %1532 = ptrtoint ptr %1531 to i64
  %1533 = load i32, ptr %1530, align 4
  %sub.i.i337 = sub i32 %1525, %1533
  %cmp.i.i.i338 = icmp ugt i32 %1533, %1525
  %conv.i12.i339 = zext i1 %cmp.i.i.i338 to i8
  store i8 %conv.i12.i339, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i341 = and i32 %sub.i.i337, 255
  %1534 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i341) #15, !range !1315
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = xor i8 %1536, 1
  store i8 %1537, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i343 = xor i32 %1533, %1525
  %xor1.i.i.i.i344 = xor i32 %xor.i25.i.i.i343, %sub.i.i337
  %and.i.i.i.i345 = lshr i32 %xor1.i.i.i.i344, 4
  %1538 = trunc i32 %and.i.i.i.i345 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i347 = icmp eq i32 %sub.i.i337, 0
  %conv5.i.i.i348 = zext i1 %cmp.i24.i.i.i347 to i8
  store i8 %conv5.i.i.i348, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i350 = lshr i32 %sub.i.i337, 31
  %1540 = trunc i32 %res.lobit.i.i.i350 to i8
  store i8 %1540, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i352 = lshr i32 %1525, 31
  %shr1.i.i.i.i353 = lshr i32 %1533, 31
  %xor.i.i.i.i354 = xor i32 %shr1.i.i.i.i353, %shr.i.i.i.i352
  %xor3.i.i.i.i355 = xor i32 %res.lobit.i.i.i350, %shr.i.i.i.i352
  %add.i.i.i.i356 = add nuw nsw i32 %xor3.i.i.i.i355, %xor.i.i.i.i354
  %cmp.i.i.i.i357 = icmp eq i32 %add.i.i.i.i356, 2
  %conv11.i.i.i358 = zext i1 %cmp.i.i.i.i357 to i8
  store i8 %conv11.i.i.i358, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1529, ptr %MEMORY, align 8
  br label %inst_4014ef

inst_4014ef:                                      ; preds = %inst_4014ec
  %1541 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1541, ptr @RIP_2472_1e56970, align 8
  %1542 = add i64 %1541, 6
  store volatile i64 %1542, ptr %NEXT_PC, align 8
  %1543 = load i64, ptr %NEXT_PC, align 8
  %1544 = add i64 %1543, 45
  %1545 = load i64, ptr %NEXT_PC, align 8
  %1546 = load ptr, ptr %MEMORY, align 8
  %1547 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %tobool.not.i333 = icmp eq i8 %1547, 0
  %frombool.i334 = zext i1 %tobool.not.i333 to i8
  store i8 %frombool.i334, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i335 = select i1 %tobool.not.i333, i64 %1544, i64 %1545
  store i64 %cond1.i.i335, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %1546, ptr %MEMORY, align 8
  %1548 = load i8, ptr %BRANCH_TAKEN, align 1
  %1549 = icmp eq i8 %1548, 1
  br i1 %1549, label %1550, label %1551

1550:                                             ; preds = %inst_4014ef
  br label %inst_401522

1551:                                             ; preds = %inst_4014ef
  br label %inst_4014f5

inst_4014f8:                                      ; preds = %inst_4014f5
  %1552 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1552, ptr @RIP_2472_1e56970, align 8
  %1553 = add i64 %1552, 3
  store volatile i64 %1553, ptr %NEXT_PC, align 8
  %1554 = load i32, ptr @RAX_2216_1e56958, align 4
  %1555 = zext i32 %1554 to i64
  %1556 = load i64, ptr @RBP_2328_1e56970, align 8
  %1557 = sub i64 %1556, 24
  %1558 = load ptr, ptr %MEMORY, align 8
  %1559 = inttoptr i64 %1557 to ptr
  %1560 = inttoptr i64 %1557 to ptr
  %1561 = ptrtoint ptr %1560 to i64
  %1562 = load i32, ptr %1559, align 4
  %sub.i.i292 = sub i32 %1554, %1562
  %cmp.i.i.i293 = icmp ugt i32 %1562, %1554
  %conv.i12.i294 = zext i1 %cmp.i.i.i293 to i8
  store i8 %conv.i12.i294, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i296 = and i32 %sub.i.i292, 255
  %1563 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i296) #15, !range !1315
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i298 = xor i32 %1562, %1554
  %xor1.i.i.i.i299 = xor i32 %xor.i25.i.i.i298, %sub.i.i292
  %and.i.i.i.i300 = lshr i32 %xor1.i.i.i.i299, 4
  %1567 = trunc i32 %and.i.i.i.i300 to i8
  %1568 = and i8 %1567, 1
  store i8 %1568, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i302 = icmp eq i32 %sub.i.i292, 0
  %conv5.i.i.i303 = zext i1 %cmp.i24.i.i.i302 to i8
  store i8 %conv5.i.i.i303, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i305 = lshr i32 %sub.i.i292, 31
  %1569 = trunc i32 %res.lobit.i.i.i305 to i8
  store i8 %1569, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i307 = lshr i32 %1554, 31
  %shr1.i.i.i.i308 = lshr i32 %1562, 31
  %xor.i.i.i.i309 = xor i32 %shr1.i.i.i.i308, %shr.i.i.i.i307
  %xor3.i.i.i.i310 = xor i32 %res.lobit.i.i.i305, %shr.i.i.i.i307
  %add.i.i.i.i311 = add nuw nsw i32 %xor3.i.i.i.i310, %xor.i.i.i.i309
  %cmp.i.i.i.i312 = icmp eq i32 %add.i.i.i.i311, 2
  %conv11.i.i.i313 = zext i1 %cmp.i.i.i.i312 to i8
  store i8 %conv11.i.i.i313, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1558, ptr %MEMORY, align 8
  br label %inst_4014fb

inst_4014fb:                                      ; preds = %inst_4014f8
  %1570 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1570, ptr @RIP_2472_1e56970, align 8
  %1571 = add i64 %1570, 6
  store volatile i64 %1571, ptr %NEXT_PC, align 8
  %1572 = load i64, ptr %NEXT_PC, align 8
  %1573 = add i64 %1572, 33
  %1574 = load i64, ptr %NEXT_PC, align 8
  %1575 = load ptr, ptr %MEMORY, align 8
  %1576 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %tobool.not.i = icmp eq i8 %1576, 0
  %frombool.i = zext i1 %tobool.not.i to i8
  store i8 %frombool.i, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %cond1.i.i = select i1 %tobool.not.i, i64 %1573, i64 %1574
  store i64 %cond1.i.i, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %1575, ptr %MEMORY, align 8
  %1577 = load i8, ptr %BRANCH_TAKEN, align 1
  %1578 = icmp eq i8 %1577, 1
  br i1 %1578, label %1579, label %1580

1579:                                             ; preds = %inst_4014fb
  br label %inst_401522

1580:                                             ; preds = %inst_4014fb
  br label %inst_401501

inst_40150b:                                      ; preds = %inst_401501
  %1581 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1581, ptr @RIP_2472_1e56970, align 8
  %1582 = add i64 %1581, 2
  store volatile i64 %1582, ptr %NEXT_PC, align 8
  %1583 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %1583, ptr %MEMORY, align 8
  br label %inst_40150d

inst_40150d:                                      ; preds = %inst_40150b
  %1584 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1584, ptr @RIP_2472_1e56970, align 8
  %1585 = add i64 %1584, 5
  store volatile i64 %1585, ptr %NEXT_PC, align 8
  %1586 = load i64, ptr %NEXT_PC, align 8
  %1587 = sub i64 %1586, 1250
  %1588 = load i64, ptr %NEXT_PC, align 8
  %1589 = load ptr, ptr %MEMORY, align 8
  %1590 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i287 = add i64 %1590, -8
  %1591 = inttoptr i64 %sub.i.i287 to ptr
  %1592 = inttoptr i64 %sub.i.i287 to ptr
  %1593 = ptrtoint ptr %1592 to i64
  store i64 %1588, ptr %1591, align 8
  store i64 %sub.i.i287, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %1587, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1587, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %1588, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %1589, ptr %MEMORY, align 8
  %1594 = load ptr, ptr %MEMORY, align 8
  %1595 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %1594)
  store ptr %1595, ptr %MEMORY, align 8
  store ptr @data_401512, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401512 to i64), ptr %NEXT_PC, align 8
  br label %inst_401512

inst_401512:                                      ; preds = %inst_40150d
  %1596 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1596, ptr @RIP_2472_1e56970, align 8
  %1597 = add i64 %1596, 5
  store volatile i64 %1597, ptr %NEXT_PC, align 8
  %1598 = load ptr, ptr %MEMORY, align 8
  store i64 1, ptr @RDI_2296_1e56970, align 8, !tbaa !1293
  store volatile ptr %1598, ptr %MEMORY, align 8
  br label %inst_401517

inst_401517:                                      ; preds = %inst_401512
  %1599 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1599, ptr @RIP_2472_1e56970, align 8
  %1600 = add i64 %1599, 6
  store volatile i64 %1600, ptr %NEXT_PC, align 8
  %1601 = load i64, ptr @RBP_2328_1e56970, align 8
  %1602 = sub i64 %1601, 140
  %1603 = load i32, ptr @RAX_2216_1e56958, align 4
  %1604 = zext i32 %1603 to i64
  %1605 = load ptr, ptr %MEMORY, align 8
  %1606 = inttoptr i64 %1602 to ptr
  %1607 = inttoptr i64 %1602 to ptr
  %1608 = ptrtoint ptr %1607 to i64
  store i32 %1603, ptr %1606, align 4
  store volatile ptr %1605, ptr %MEMORY, align 8
  br label %inst_40151d

inst_40151d:                                      ; preds = %inst_401517
  %1609 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1609, ptr @RIP_2472_1e56970, align 8
  %1610 = add i64 %1609, 5
  store volatile i64 %1610, ptr %NEXT_PC, align 8
  %1611 = load i64, ptr %NEXT_PC, align 8
  %1612 = sub i64 %1611, 1234
  %1613 = load i64, ptr %NEXT_PC, align 8
  %1614 = load ptr, ptr %MEMORY, align 8
  %1615 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i273 = add i64 %1615, -8
  %1616 = inttoptr i64 %sub.i.i273 to ptr
  %1617 = inttoptr i64 %sub.i.i273 to ptr
  %1618 = ptrtoint ptr %1617 to i64
  store i64 %1613, ptr %1616, align 8
  store i64 %sub.i.i273, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %1612, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1612, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %1613, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %1614, ptr %MEMORY, align 8
  %1619 = load ptr, ptr %MEMORY, align 8
  %1620 = call ptr @ext_4040c0_exit(ptr @__mcsema_reg_state, i64 undef, ptr %1619)
  store ptr %1620, ptr %MEMORY, align 8
  store ptr @data_401522, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401522 to i64), ptr %NEXT_PC, align 8
  br label %inst_401522

inst_401526:                                      ; preds = %inst_401522
  %1621 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1621, ptr @RIP_2472_1e56970, align 8
  %1622 = add i64 %1621, 7
  store volatile i64 %1622, ptr %NEXT_PC, align 8
  %1623 = load i64, ptr @RAX_2216_1e56970, align 8
  %1624 = load ptr, ptr %MEMORY, align 8
  %1625 = ashr i64 %1623, 63
  %L.sroa.2.0.insert.ext.i.i246 = zext i64 %1625 to i128
  %L.sroa.2.0.insert.shift.i.i247 = shl nuw i128 %L.sroa.2.0.insert.ext.i.i246, 64
  %L.sroa.0.0.insert.ext.i.i248 = zext i64 %1623 to i128
  %L.sroa.0.0.insert.insert.i.i249 = or i128 %L.sroa.2.0.insert.shift.i.i247, %L.sroa.0.0.insert.ext.i.i248
  %mul.i.i250 = mul nsw i128 11, %L.sroa.0.0.insert.insert.i.i249
  %retval.sroa.0.0.extract.trunc.i.i251 = trunc i128 %mul.i.i250 to i64
  store i64 %retval.sroa.0.0.extract.trunc.i.i251, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %conv4.i.i.i252 = sext i64 %retval.sroa.0.0.extract.trunc.i.i251 to i128
  %cmp.i.i.i253 = icmp ne i128 %mul.i.i250, %conv4.i.i.i252
  %frombool.i.i254 = zext i1 %cmp.i.i.i253 to i8
  store i8 %frombool.i.i254, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i256 = trunc i128 %mul.i.i250 to i32
  %conv.i.i.i.i257 = and i32 %conv.i.i.i256, 255
  %1626 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i257) #15, !range !1315
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  %1629 = xor i8 %1628, 1
  store i8 %1629, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store i8 0, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res_trunc.lobit.i.i262 = lshr i64 %retval.sroa.0.0.extract.trunc.i.i251, 63
  %1630 = trunc i64 %res_trunc.lobit.i.i262 to i8
  store i8 %1630, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 %frombool.i.i254, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1624, ptr %MEMORY, align 8
  br label %inst_40152d

inst_40152d:                                      ; preds = %inst_401526
  %1631 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1631, ptr @RIP_2472_1e56970, align 8
  %1632 = add i64 %1631, 10
  store volatile i64 %1632, ptr %NEXT_PC, align 8
  %1633 = load ptr, ptr %MEMORY, align 8
  store ptr @data_404050, ptr @RCX_2248_1e61d30, align 8
  store volatile ptr %1633, ptr %MEMORY, align 8
  br label %inst_401537

inst_401537:                                      ; preds = %inst_40152d
  %1634 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1634, ptr @RIP_2472_1e56970, align 8
  %1635 = add i64 %1634, 3
  store volatile i64 %1635, ptr %NEXT_PC, align 8
  %1636 = load i64, ptr @RCX_2248_1e56970, align 8
  %1637 = load i64, ptr @RAX_2216_1e56970, align 8
  %1638 = load ptr, ptr %MEMORY, align 8
  %add.i.i221 = add i64 %1637, %1636
  store i64 %add.i.i221, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i222 = icmp ult i64 %add.i.i221, %1636
  %cmp1.i.i.i223 = icmp ult i64 %add.i.i221, %1637
  %1639 = or i1 %cmp.i.i.i222, %cmp1.i.i.i223
  %conv.i.i224 = zext i1 %1639 to i8
  store i8 %conv.i.i224, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i226 = trunc i64 %add.i.i221 to i32
  %conv.i.i.i.i.i227 = and i32 %conv.i.i.i.i226, 255
  %1640 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i227) #15, !range !1315
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  %1643 = xor i8 %1642, 1
  store i8 %1643, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i229 = xor i64 %1637, %1636
  %xor1.i.i.i.i230 = xor i64 %xor.i25.i.i.i229, %add.i.i221
  %and.i.i.i.i231 = lshr i64 %xor1.i.i.i.i230, 4
  %1644 = trunc i64 %and.i.i.i.i231 to i8
  %1645 = and i8 %1644, 1
  store i8 %1645, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i233 = icmp eq i64 %add.i.i221, 0
  %conv5.i.i.i234 = zext i1 %cmp.i24.i.i.i233 to i8
  store i8 %conv5.i.i.i234, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i236 = lshr i64 %add.i.i221, 63
  %1646 = trunc i64 %res.lobit.i.i.i236 to i8
  store i8 %1646, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i238 = lshr i64 %1636, 63
  %shr1.i.i.i.i239 = lshr i64 %1637, 63
  %xor.i.i.i.i240 = xor i64 %res.lobit.i.i.i236, %shr.i.i.i.i238
  %xor3.i.i.i.i241 = xor i64 %res.lobit.i.i.i236, %shr1.i.i.i.i239
  %add.i.i.i.i242 = add nuw nsw i64 %xor.i.i.i.i240, %xor3.i.i.i.i241
  %cmp.i.i.i.i243 = icmp eq i64 %add.i.i.i.i242, 2
  %conv11.i.i.i244 = zext i1 %cmp.i.i.i.i243 to i8
  store i8 %conv11.i.i.i244, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1638, ptr %MEMORY, align 8
  br label %inst_40153a

inst_40153a:                                      ; preds = %inst_401537
  %1647 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1647, ptr @RIP_2472_1e56970, align 8
  %1648 = add i64 %1647, 4
  store volatile i64 %1648, ptr %NEXT_PC, align 8
  %1649 = load i64, ptr @RBP_2328_1e56970, align 8
  %1650 = sub i64 %1649, 20
  %1651 = load ptr, ptr %MEMORY, align 8
  %1652 = inttoptr i64 %1650 to ptr
  %1653 = inttoptr i64 %1650 to ptr
  %1654 = ptrtoint ptr %1653 to i64
  %1655 = load i32, ptr %1652, align 4
  %conv.i.i219 = sext i32 %1655 to i64
  store i64 %conv.i.i219, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %1651, ptr %MEMORY, align 8
  br label %inst_40153e

inst_40153e:                                      ; preds = %inst_40153a
  %1656 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1656, ptr @RIP_2472_1e56970, align 8
  %1657 = add i64 %1656, 4
  store volatile i64 %1657, ptr %NEXT_PC, align 8
  %1658 = load i64, ptr @RCX_2248_1e56970, align 8
  %1659 = load i64, ptr @RAX_2216_1e56970, align 8
  %1660 = mul i64 %1659, 1
  %1661 = add i64 %1658, %1660
  %1662 = load ptr, ptr %MEMORY, align 8
  %1663 = inttoptr i64 %1661 to ptr
  %1664 = inttoptr i64 %1661 to ptr
  %1665 = ptrtoint ptr %1664 to i64
  store i8 88, ptr %1663, align 1
  store volatile ptr %1662, ptr %MEMORY, align 8
  br label %inst_401542

inst_401542:                                      ; preds = %inst_40153e
  %1666 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1666, ptr @RIP_2472_1e56970, align 8
  %1667 = add i64 %1666, 5
  store volatile i64 %1667, ptr %NEXT_PC, align 8
  %1668 = load i64, ptr %NEXT_PC, align 8
  %1669 = sub i64 %1668, 999
  %1670 = load i64, ptr %NEXT_PC, align 8
  %1671 = load ptr, ptr %MEMORY, align 8
  %1672 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i206 = add i64 %1672, -8
  %1673 = inttoptr i64 %sub.i.i206 to ptr
  %1674 = inttoptr i64 %sub.i.i206 to ptr
  %1675 = ptrtoint ptr %1674 to i64
  store i64 %1670, ptr %1673, align 8
  store i64 %sub.i.i206, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %1669, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1669, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %1670, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %1671, ptr %MEMORY, align 8
  %1676 = load ptr, ptr %MEMORY, align 8
  %1677 = call ptr @sub_401160_draw(ptr @__mcsema_reg_state, i64 undef, ptr %1676)
  store ptr %1677, ptr %MEMORY, align 8
  store ptr @data_401547, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401547 to i64), ptr %NEXT_PC, align 8
  br label %inst_401547

inst_401547:                                      ; preds = %inst_401542
  %1678 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1678, ptr @RIP_2472_1e56970, align 8
  %1679 = add i64 %1678, 3
  store volatile i64 %1679, ptr %NEXT_PC, align 8
  %1680 = load i64, ptr @RBP_2328_1e56970, align 8
  %1681 = sub i64 %1680, 36
  %1682 = load ptr, ptr %MEMORY, align 8
  %1683 = inttoptr i64 %1681 to ptr
  %1684 = inttoptr i64 %1681 to ptr
  %1685 = ptrtoint ptr %1684 to i64
  %1686 = load i32, ptr %1683, align 4
  %conv.i.i204 = zext i32 %1686 to i64
  store i64 %conv.i.i204, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  store volatile ptr %1682, ptr %MEMORY, align 8
  br label %inst_40154a

inst_40154a:                                      ; preds = %inst_401547
  %1687 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1687, ptr @RIP_2472_1e56970, align 8
  %1688 = add i64 %1687, 3
  store volatile i64 %1688, ptr %NEXT_PC, align 8
  %1689 = load i32, ptr @RDX_2264_1e56958, align 4
  %1690 = zext i32 %1689 to i64
  %1691 = load ptr, ptr %MEMORY, align 8
  %add.i.i182 = add i32 1, %1689
  %conv.i25.i = zext i32 %add.i.i182 to i64
  store i64 %conv.i25.i, ptr @RDX_2264_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i183 = icmp ult i32 %add.i.i182, %1689
  %cmp1.i.i.i184 = icmp ult i32 %add.i.i182, 1
  %1692 = or i1 %cmp.i.i.i183, %cmp1.i.i.i184
  %conv.i24.i = zext i1 %1692 to i8
  store i8 %conv.i24.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i.i186 = and i32 %add.i.i182, 255
  %1693 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i186) #15, !range !1315
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i27.i = xor i64 1, %1690
  %xor.i25.i.i.i188 = trunc i64 %xor.i25.i.i27.i to i32
  %xor1.i.i.i.i189 = xor i32 %add.i.i182, %xor.i25.i.i.i188
  %and.i.i.i.i190 = lshr i32 %xor1.i.i.i.i189, 4
  %1697 = trunc i32 %and.i.i.i.i190 to i8
  %1698 = and i8 %1697, 1
  store i8 %1698, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i192 = icmp eq i32 %add.i.i182, 0
  %conv5.i.i.i193 = zext i1 %cmp.i24.i.i.i192 to i8
  store i8 %conv5.i.i.i193, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i195 = lshr i32 %add.i.i182, 31
  %1699 = trunc i32 %res.lobit.i.i.i195 to i8
  store i8 %1699, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i197 = lshr i32 %1689, 31
  %xor.i.i.i.i198 = xor i32 %res.lobit.i.i.i195, %shr.i.i.i.i197
  %add.i.i.i.i199 = add nuw nsw i32 %xor.i.i.i.i198, %res.lobit.i.i.i195
  %cmp.i.i.i.i200 = icmp eq i32 %add.i.i.i.i199, 2
  %conv11.i.i.i201 = zext i1 %cmp.i.i.i.i200 to i8
  store i8 %conv11.i.i.i201, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1691, ptr %MEMORY, align 8
  br label %inst_40154d

inst_40154d:                                      ; preds = %inst_40154a
  %1700 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1700, ptr @RIP_2472_1e56970, align 8
  %1701 = add i64 %1700, 3
  store volatile i64 %1701, ptr %NEXT_PC, align 8
  %1702 = load i64, ptr @RBP_2328_1e56970, align 8
  %1703 = sub i64 %1702, 36
  %1704 = load i32, ptr @RDX_2264_1e56958, align 4
  %1705 = zext i32 %1704 to i64
  %1706 = load ptr, ptr %MEMORY, align 8
  %1707 = inttoptr i64 %1703 to ptr
  %1708 = inttoptr i64 %1703 to ptr
  %1709 = ptrtoint ptr %1708 to i64
  store i32 %1704, ptr %1707, align 4
  store volatile ptr %1706, ptr %MEMORY, align 8
  br label %inst_401550

inst_401550:                                      ; preds = %inst_40154d
  %1710 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1710, ptr @RIP_2472_1e56970, align 8
  %1711 = add i64 %1710, 5
  store volatile i64 %1711, ptr %NEXT_PC, align 8
  %1712 = load ptr, ptr %MEMORY, align 8
  store i64 1, ptr @RDI_2296_1e56970, align 8, !tbaa !1293
  store volatile ptr %1712, ptr %MEMORY, align 8
  br label %inst_401555

inst_401555:                                      ; preds = %inst_401550
  %1713 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1713, ptr @RIP_2472_1e56970, align 8
  %1714 = add i64 %1713, 5
  store volatile i64 %1714, ptr %NEXT_PC, align 8
  %1715 = load i64, ptr %NEXT_PC, align 8
  %1716 = sub i64 %1715, 1274
  %1717 = load i64, ptr %NEXT_PC, align 8
  %1718 = load ptr, ptr %MEMORY, align 8
  %1719 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i151 = add i64 %1719, -8
  %1720 = inttoptr i64 %sub.i.i151 to ptr
  %1721 = inttoptr i64 %sub.i.i151 to ptr
  %1722 = ptrtoint ptr %1721 to i64
  store i64 %1717, ptr %1720, align 8
  store i64 %sub.i.i151, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %1716, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1716, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %1717, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %1718, ptr %MEMORY, align 8
  %1723 = load ptr, ptr %MEMORY, align 8
  %1724 = call ptr @ext_4040c8_sleep(ptr @__mcsema_reg_state, i64 undef, ptr %1723)
  store ptr %1724, ptr %MEMORY, align 8
  store ptr @data_40155a, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_40155a to i64), ptr %NEXT_PC, align 8
  br label %inst_40155a

inst_40155a:                                      ; preds = %inst_401555
  %1725 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1725, ptr @RIP_2472_1e56970, align 8
  %1726 = add i64 %1725, 5
  store volatile i64 %1726, ptr %NEXT_PC, align 8
  %1727 = load i64, ptr %NEXT_PC, align 8
  %1728 = sub i64 %1727, 645
  %1729 = load ptr, ptr %MEMORY, align 8
  store i64 %1728, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1728, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %1729, ptr %MEMORY, align 8
  br label %inst_4012da

inst_401569:                                      ; preds = %inst_40155f
  %1730 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1730, ptr @RIP_2472_1e56970, align 8
  %1731 = add i64 %1730, 2
  store volatile i64 %1731, ptr %NEXT_PC, align 8
  %1732 = load ptr, ptr %MEMORY, align 8
  store i8 0, ptr @RAX_2216_1e56928, align 1, !tbaa !1290
  store volatile ptr %1732, ptr %MEMORY, align 8
  br label %inst_40156b

inst_40156b:                                      ; preds = %inst_401569
  %1733 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1733, ptr @RIP_2472_1e56970, align 8
  %1734 = add i64 %1733, 5
  store volatile i64 %1734, ptr %NEXT_PC, align 8
  %1735 = load i64, ptr %NEXT_PC, align 8
  %1736 = sub i64 %1735, 1344
  %1737 = load i64, ptr %NEXT_PC, align 8
  %1738 = load ptr, ptr %MEMORY, align 8
  %1739 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %sub.i.i114 = add i64 %1739, -8
  %1740 = inttoptr i64 %sub.i.i114 to ptr
  %1741 = inttoptr i64 %sub.i.i114 to ptr
  %1742 = ptrtoint ptr %1741 to i64
  store i64 %1737, ptr %1740, align 8
  store i64 %sub.i.i114, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store i64 %1736, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1736, ptr %NEXT_PC, align 8, !tbaa !1293
  store i64 %1737, ptr %RETURN_PC, align 8, !tbaa !1293
  store volatile ptr %1738, ptr %MEMORY, align 8
  %1743 = load ptr, ptr %MEMORY, align 8
  %1744 = call ptr @ext_4040b0_printf(ptr @__mcsema_reg_state, i64 undef, ptr %1743)
  store ptr %1744, ptr %MEMORY, align 8
  store ptr @data_401570, ptr @RIP_2472_1e61d30, align 8
  store i64 ptrtoint (ptr @data_401570 to i64), ptr %NEXT_PC, align 8
  br label %inst_401570

inst_401570:                                      ; preds = %inst_40156b
  %1745 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1745, ptr @RIP_2472_1e56970, align 8
  %1746 = add i64 %1745, 5
  store volatile i64 %1746, ptr %NEXT_PC, align 8
  %1747 = load ptr, ptr %MEMORY, align 8
  store i64 1, ptr @RCX_2248_1e56970, align 8, !tbaa !1293
  store volatile ptr %1747, ptr %MEMORY, align 8
  br label %inst_401575

inst_401575:                                      ; preds = %inst_401570
  %1748 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1748, ptr @RIP_2472_1e56970, align 8
  %1749 = add i64 %1748, 6
  store volatile i64 %1749, ptr %NEXT_PC, align 8
  %1750 = load i64, ptr @RBP_2328_1e56970, align 8
  %1751 = sub i64 %1750, 144
  %1752 = load i32, ptr @RAX_2216_1e56958, align 4
  %1753 = zext i32 %1752 to i64
  %1754 = load ptr, ptr %MEMORY, align 8
  %1755 = inttoptr i64 %1751 to ptr
  %1756 = inttoptr i64 %1751 to ptr
  %1757 = ptrtoint ptr %1756 to i64
  store i32 %1752, ptr %1755, align 4
  store volatile ptr %1754, ptr %MEMORY, align 8
  br label %inst_40157b

inst_40157b:                                      ; preds = %inst_401575
  %1758 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1758, ptr @RIP_2472_1e56970, align 8
  %1759 = add i64 %1758, 2
  store volatile i64 %1759, ptr %NEXT_PC, align 8
  %1760 = load i32, ptr @RCX_2248_1e56958, align 4
  %1761 = zext i32 %1760 to i64
  %1762 = load ptr, ptr %MEMORY, align 8
  %conv.i11.i = and i64 %1761, 4294967295
  store i64 %conv.i11.i, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %1762, ptr %MEMORY, align 8
  br label %inst_40157d

inst_40157d:                                      ; preds = %inst_40157b
  %1763 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1763, ptr @RIP_2472_1e56970, align 8
  %1764 = add i64 %1763, 7
  store volatile i64 %1764, ptr %NEXT_PC, align 8
  %1765 = load i64, ptr @RSP_2312_1e56970, align 8
  %1766 = load ptr, ptr %MEMORY, align 8
  %add.i.i62 = add i64 144, %1765
  store i64 %add.i.i62, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i63 = icmp ult i64 %add.i.i62, %1765
  %cmp1.i.i.i = icmp ult i64 %add.i.i62, 144
  %1767 = or i1 %cmp.i.i.i63, %cmp1.i.i.i
  %conv.i.i64 = zext i1 %1767 to i8
  store i8 %conv.i.i64, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i = trunc i64 %add.i.i62 to i32
  %conv.i.i.i.i.i66 = and i32 %conv.i.i.i.i, 255
  %1768 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i66) #15, !range !1315
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = xor i8 %1770, 1
  store i8 %1771, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i68 = xor i64 144, %1765
  %xor1.i.i.i.i69 = xor i64 %xor.i25.i.i.i68, %add.i.i62
  %and.i.i.i.i70 = lshr i64 %xor1.i.i.i.i69, 4
  %1772 = trunc i64 %and.i.i.i.i70 to i8
  %1773 = and i8 %1772, 1
  store i8 %1773, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i72 = icmp eq i64 %add.i.i62, 0
  %conv5.i.i.i73 = zext i1 %cmp.i24.i.i.i72 to i8
  store i8 %conv5.i.i.i73, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i75 = lshr i64 %add.i.i62, 63
  %1774 = trunc i64 %res.lobit.i.i.i75 to i8
  store i8 %1774, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i77 = lshr i64 %1765, 63
  %xor.i.i.i.i = xor i64 %res.lobit.i.i.i75, %shr.i.i.i.i77
  %add.i.i.i.i78 = add nuw nsw i64 %xor.i.i.i.i, %res.lobit.i.i.i75
  %cmp.i.i.i.i79 = icmp eq i64 %add.i.i.i.i78, 2
  %conv11.i.i.i80 = zext i1 %cmp.i.i.i.i79 to i8
  store i8 %conv11.i.i.i80, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %1766, ptr %MEMORY, align 8
  br label %inst_401584

inst_401584:                                      ; preds = %inst_40157d
  %1775 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1775, ptr @RIP_2472_1e56970, align 8
  %1776 = add i64 %1775, 1
  store volatile i64 %1776, ptr %NEXT_PC, align 8
  %1777 = load ptr, ptr %MEMORY, align 8
  %1778 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %1779 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %1780 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i16 = add i64 %1780, 8
  store i64 %add.i.i16, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %1781 = ptrtoint ptr %1779 to i64
  %1782 = load i64, ptr %1778, align 8
  store i64 %1782, ptr @RBP_2328_1e56970, align 8, !tbaa !1293
  store volatile ptr %1777, ptr %MEMORY, align 8
  br label %inst_401585

inst_401585:                                      ; preds = %inst_401584
  %1783 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1783, ptr @RIP_2472_1e56970, align 8
  %1784 = add i64 %1783, 1
  store volatile i64 %1784, ptr %NEXT_PC, align 8
  %1785 = load ptr, ptr %MEMORY, align 8
  %1786 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %1787 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %1788 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %1789 = ptrtoint ptr %1787 to i64
  %1790 = load i64, ptr %1786, align 8
  store i64 %1790, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %1790, ptr %NEXT_PC, align 8, !tbaa !1293
  %1791 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i = add i64 %1791, 8
  store i64 %add.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %1785, ptr %MEMORY, align 8
  %1792 = load ptr, ptr %MEMORY, align 8
  ret ptr %1792
}

; Function Attrs: noinline
define internal ptr @sub_4010e0_register_tm_clones(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %STATE.i = alloca ptr, align 8
  %MEMORY.i = alloca ptr, align 8
  %NEXT_PC.i = alloca i64, align 8
  %ESBASE.i = alloca i64, align 8
  %DSBASE.i = alloca i64, align 8
  %CSBASE.i = alloca i64, align 8
  %SSBASE.i = alloca i64, align 8
  %RSI = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 9, i32 0, i32 0, !remill_register !1349
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @register_tm_clones to i64), ptr %NEXT_PC, align 8
  store ptr @register_tm_clones, ptr @RIP_2472_2cc54c0, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_4010e0

inst_4010e0:                                      ; preds = %0
  %1 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %1, ptr @RIP_2472_1e56970, align 8
  %2 = add i64 %1, 5
  store volatile i64 %2, ptr %NEXT_PC, align 8
  %3 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4040a0, ptr @RSI_2280_1e61d30, align 8
  store volatile ptr %3, ptr %MEMORY, align 8
  br label %inst_4010e5

inst_401109:                                      ; preds = %120
  %4 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %4, ptr @RIP_2472_1e56970, align 8
  %5 = add i64 %4, 5
  store volatile i64 %5, ptr %NEXT_PC, align 8
  %6 = load ptr, ptr %MEMORY, align 8
  store ptr @data_4040a0, ptr @RDI_2296_1e61d30, align 8
  store volatile ptr %6, ptr %MEMORY, align 8
  br label %inst_40110e

inst_401110:                                      ; preds = %168, %126, %119, %98
  %7 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %7, ptr @RIP_2472_1e56970, align 8
  %8 = add i64 %7, 1
  store volatile i64 %8, ptr %NEXT_PC, align 8
  %9 = load ptr, ptr %MEMORY, align 8
  %10 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %11 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %12 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %13 = ptrtoint ptr %11 to i64
  %14 = load i64, ptr %10, align 8
  store i64 %14, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %14, ptr %NEXT_PC, align 8, !tbaa !1293
  %15 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i = add i64 %15, 8
  store i64 %add.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %9, ptr %MEMORY, align 8
  %16 = load ptr, ptr %MEMORY, align 8
  ret ptr %16

inst_401111:                                      ; preds = %168, %126
  %17 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %17, ptr @RIP_2472_1e56970, align 8
  %18 = add i64 %17, 11
  store volatile i64 %18, ptr %NEXT_PC, align 8
  %19 = load i64, ptr @RAX_2216_1e56970, align 8
  %20 = load i64, ptr @RAX_2216_1e56970, align 8
  %21 = mul i64 %20, 1
  %22 = add i64 %19, %21
  %23 = load i16, ptr @RAX_2216_1e56940, align 2
  %24 = zext i16 %23 to i64
  %25 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %25, ptr %MEMORY, align 8
  br label %inst_40111c

inst_4010ff:                                      ; preds = %99
  %26 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %26, ptr @RIP_2472_1e56970, align 8
  %27 = add i64 %26, 5
  store volatile i64 %27, ptr %NEXT_PC, align 8
  %28 = load ptr, ptr %MEMORY, align 8
  store i64 0, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %28, ptr %MEMORY, align 8
  br label %inst_401104

inst_4010e5:                                      ; preds = %inst_4010e0
  %29 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %29, ptr @RIP_2472_1e56970, align 8
  %30 = add i64 %29, 7
  store volatile i64 %30, ptr %NEXT_PC, align 8
  %31 = load i64, ptr @RSI_2280_1e56970, align 8
  %32 = load ptr, ptr %MEMORY, align 8
  %sub.i.i = sub i64 %31, ptrtoint (ptr @data_4040a0 to i64)
  store i64 %sub.i.i, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i = icmp ult i64 %31, ptrtoint (ptr @data_4040a0 to i64)
  %conv.i.i = zext i1 %cmp.i.i.i to i8
  store i8 %conv.i.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i = trunc i64 %sub.i.i to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i) #15, !range !1315
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  store i8 %36, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i = xor i64 ptrtoint (ptr @data_4040a0 to i64), %31
  %xor1.i.i.i.i = xor i64 %xor.i25.i.i.i, %sub.i.i
  %and.i.i.i.i = lshr i64 %xor1.i.i.i.i, 4
  %37 = trunc i64 %and.i.i.i.i to i8
  %38 = and i8 %37, 1
  store i8 %38, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i = icmp eq i64 %sub.i.i, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  store i8 %conv5.i.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i = lshr i64 %sub.i.i, 63
  %39 = trunc i64 %res.lobit.i.i.i to i8
  store i8 %39, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i = lshr i64 %31, 63
  %xor.i.i.i.i = xor i64 0, %shr.i.i.i.i
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor3.i.i.i.i, %xor.i.i.i.i
  %cmp.i.i.i.i = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  store i8 %conv11.i.i.i, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %32, ptr %MEMORY, align 8
  br label %inst_4010ec

inst_4010ec:                                      ; preds = %inst_4010e5
  %40 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %40, ptr @RIP_2472_1e56970, align 8
  %41 = add i64 %40, 3
  store volatile i64 %41, ptr %NEXT_PC, align 8
  %42 = load i64, ptr @RSI_2280_1e56970, align 8
  %43 = load ptr, ptr %MEMORY, align 8
  store i64 %42, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  store volatile ptr %43, ptr %MEMORY, align 8
  br label %inst_4010ef

inst_4010ef:                                      ; preds = %inst_4010ec
  %44 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %44, ptr @RIP_2472_1e56970, align 8
  %45 = add i64 %44, 4
  store volatile i64 %45, ptr %NEXT_PC, align 8
  %46 = load i64, ptr @RSI_2280_1e56970, align 8
  %47 = load ptr, ptr %MEMORY, align 8
  %shr.i141.i = lshr i64 %46, 62
  %tobool.i45 = icmp ne i8 0, 0
  %new_val.0.i46 = lshr i64 %shr.i141.i, 1
  store i64 %new_val.0.i46, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  %48 = trunc i64 %shr.i141.i to i8
  %49 = and i8 %48, 1
  store i8 %49, ptr @CF_2065_1e56928, align 1, !tbaa !1290
  %conv.i.i49 = trunc i64 %new_val.0.i46 to i32
  %conv.i.i.i50 = and i32 %conv.i.i49, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i50) #15, !range !1315
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 %53, ptr @PF_2067_1e56928, align 1, !tbaa !1290
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1290
  %cmp.i.i = icmp eq i64 %new_val.0.i46, 0
  %conv80.i = zext i1 %cmp.i.i to i8
  store i8 %conv80.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1290
  store i8 0, ptr @SF_2073_1e56928, align 1, !tbaa !1290
  %conv92.i = zext i1 %tobool.i45 to i8
  store i8 %conv92.i, ptr @OF_2077_1e56928, align 1, !tbaa !1290
  store volatile ptr %47, ptr %MEMORY, align 8
  br label %inst_4010f3

inst_4010f3:                                      ; preds = %inst_4010ef
  %54 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %54, ptr @RIP_2472_1e56970, align 8
  %55 = add i64 %54, 4
  store volatile i64 %55, ptr %NEXT_PC, align 8
  %56 = load i64, ptr @RAX_2216_1e56970, align 8
  %57 = load ptr, ptr %MEMORY, align 8
  %shr.i162.i = ashr i64 %56, 2
  %tobool.i = icmp ne i8 0, 0
  %phi.cast.i = zext i1 %tobool.i to i8
  %new_val.0.i33 = ashr i64 %shr.i162.i, 1
  store i64 %new_val.0.i33, ptr @RAX_2216_1e56970, align 8, !tbaa !1293
  %58 = trunc i64 %shr.i162.i to i8
  %59 = and i8 %58, 1
  store i8 %59, ptr @CF_2065_1e56928, align 1, !tbaa !1290
  %conv.i.i36 = trunc i64 %new_val.0.i33 to i32
  %conv.i.i.i37 = and i32 %conv.i.i36, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i37) #15, !range !1315
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, ptr @PF_2067_1e56928, align 1, !tbaa !1290
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1290
  %cmp.i159.i40 = icmp eq i64 %new_val.0.i33, 0
  %conv88.i41 = zext i1 %cmp.i159.i40 to i8
  store i8 %conv88.i41, ptr @ZF_2071_1e56928, align 1, !tbaa !1290
  %new_val.0.in.lobit.i43 = lshr i64 %shr.i162.i, 63
  %64 = trunc i64 %new_val.0.in.lobit.i43 to i8
  store i8 %64, ptr @SF_2073_1e56928, align 1, !tbaa !1290
  store i8 %phi.cast.i, ptr @OF_2077_1e56928, align 1, !tbaa !1290
  store volatile ptr %57, ptr %MEMORY, align 8
  br label %inst_4010f7

inst_4010f7:                                      ; preds = %inst_4010f3
  %65 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %65, ptr @RIP_2472_1e56970, align 8
  %66 = add i64 %65, 3
  store volatile i64 %66, ptr %NEXT_PC, align 8
  %67 = load i64, ptr @RSI_2280_1e56970, align 8
  %68 = load i64, ptr @RAX_2216_1e56970, align 8
  %69 = load ptr, ptr %MEMORY, align 8
  %add.i.i10 = add i64 %68, %67
  store i64 %add.i.i10, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i11 = icmp ult i64 %add.i.i10, %67
  %cmp1.i.i.i = icmp ult i64 %add.i.i10, %68
  %70 = or i1 %cmp.i.i.i11, %cmp1.i.i.i
  %conv.i.i12 = zext i1 %70 to i8
  store i8 %conv.i.i12, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i14 = trunc i64 %add.i.i10 to i32
  %conv.i.i.i.i.i15 = and i32 %conv.i.i.i.i14, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i15) #15, !range !1315
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i17 = xor i64 %68, %67
  %xor1.i.i.i.i18 = xor i64 %xor.i25.i.i.i17, %add.i.i10
  %and.i.i.i.i19 = lshr i64 %xor1.i.i.i.i18, 4
  %75 = trunc i64 %and.i.i.i.i19 to i8
  %76 = and i8 %75, 1
  store i8 %76, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i21 = icmp eq i64 %add.i.i10, 0
  %conv5.i.i.i22 = zext i1 %cmp.i24.i.i.i21 to i8
  store i8 %conv5.i.i.i22, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i24 = lshr i64 %add.i.i10, 63
  %77 = trunc i64 %res.lobit.i.i.i24 to i8
  store i8 %77, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i26 = lshr i64 %67, 63
  %shr1.i.i.i.i = lshr i64 %68, 63
  %xor.i.i.i.i27 = xor i64 %res.lobit.i.i.i24, %shr.i.i.i.i26
  %xor3.i.i.i.i28 = xor i64 %res.lobit.i.i.i24, %shr1.i.i.i.i
  %add.i.i.i.i29 = add nuw nsw i64 %xor.i.i.i.i27, %xor3.i.i.i.i28
  %cmp.i.i.i.i30 = icmp eq i64 %add.i.i.i.i29, 2
  %conv11.i.i.i31 = zext i1 %cmp.i.i.i.i30 to i8
  store i8 %conv11.i.i.i31, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %69, ptr %MEMORY, align 8
  br label %inst_4010fa

inst_4010fa:                                      ; preds = %inst_4010f7
  %78 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %78, ptr @RIP_2472_1e56970, align 8
  %79 = add i64 %78, 3
  store volatile i64 %79, ptr %NEXT_PC, align 8
  %80 = load i64, ptr @RSI_2280_1e56970, align 8
  %81 = load ptr, ptr %MEMORY, align 8
  %new_val.0.i = ashr i64 %80, 1
  store i64 %new_val.0.i, ptr @RSI_2280_1e56970, align 8, !tbaa !1293
  %82 = trunc i64 %80 to i8
  %83 = and i8 %82, 1
  store i8 %83, ptr @CF_2065_1e56928, align 1, !tbaa !1290
  %conv.i.i7 = trunc i64 %new_val.0.i to i32
  %conv.i.i.i8 = and i32 %conv.i.i7, 255
  %84 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i8) #15, !range !1315
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, ptr @PF_2067_1e56928, align 1, !tbaa !1290
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1290
  %cmp.i159.i = icmp eq i64 %new_val.0.i, 0
  %conv88.i = zext i1 %cmp.i159.i to i8
  store i8 %conv88.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1290
  %new_val.0.in.lobit.i = lshr i64 %80, 63
  %88 = trunc i64 %new_val.0.in.lobit.i to i8
  store i8 %88, ptr @SF_2073_1e56928, align 1, !tbaa !1290
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1290
  store volatile ptr %81, ptr %MEMORY, align 8
  br label %inst_4010fd

inst_4010fd:                                      ; preds = %inst_4010fa
  %89 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %89, ptr @RIP_2472_1e56970, align 8
  %90 = add i64 %89, 2
  store volatile i64 %90, ptr %NEXT_PC, align 8
  %91 = load i64, ptr %NEXT_PC, align 8
  %92 = add i64 %91, 17
  %93 = load i64, ptr %NEXT_PC, align 8
  %94 = load ptr, ptr %MEMORY, align 8
  %95 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  store i8 %95, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %tobool.not.i5 = icmp eq i8 %95, 0
  %cond1.i.i6 = select i1 %tobool.not.i5, i64 %93, i64 %92
  store i64 %cond1.i.i6, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %94, ptr %MEMORY, align 8
  %96 = load i8, ptr %BRANCH_TAKEN, align 1
  %97 = icmp eq i8 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %inst_4010fd
  br label %inst_401110

99:                                               ; preds = %inst_4010fd
  br label %inst_4010ff

inst_401104:                                      ; preds = %inst_4010ff
  %100 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %100, ptr @RIP_2472_1e56970, align 8
  %101 = add i64 %100, 3
  store volatile i64 %101, ptr %NEXT_PC, align 8
  %102 = load i64, ptr @RAX_2216_1e56970, align 8
  %103 = load i64, ptr @RAX_2216_1e56970, align 8
  %104 = load ptr, ptr %MEMORY, align 8
  %and.i.i = and i64 %103, %102
  store i8 0, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i = trunc i64 %and.i.i to i32
  %conv.i.i.i.i3 = and i32 %conv.i.i.i, 255
  %105 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i3) #15, !range !1315
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %cmp.i1.i.i = icmp eq i64 %and.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  store i8 %conv3.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i = lshr i64 %and.i.i, 63
  %109 = trunc i64 %res.lobit.i.i to i8
  store i8 %109, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  store i8 0, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store i8 0, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  store volatile ptr %104, ptr %MEMORY, align 8
  br label %inst_401107

inst_401107:                                      ; preds = %inst_401104
  %110 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %110, ptr @RIP_2472_1e56970, align 8
  %111 = add i64 %110, 2
  store volatile i64 %111, ptr %NEXT_PC, align 8
  %112 = load i64, ptr %NEXT_PC, align 8
  %113 = add i64 %112, 7
  %114 = load i64, ptr %NEXT_PC, align 8
  %115 = load ptr, ptr %MEMORY, align 8
  %116 = load i8, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  store i8 %116, ptr %BRANCH_TAKEN, align 1, !tbaa !1290
  %tobool.not.i = icmp eq i8 %116, 0
  %cond1.i.i = select i1 %tobool.not.i, i64 %114, i64 %113
  store i64 %cond1.i.i, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %115, ptr %MEMORY, align 8
  %117 = load i8, ptr %BRANCH_TAKEN, align 1
  %118 = icmp eq i8 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %inst_401107
  br label %inst_401110

120:                                              ; preds = %inst_401107
  br label %inst_401109

inst_40110e:                                      ; preds = %inst_401109
  %121 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %121, ptr @RIP_2472_1e56970, align 8
  %122 = add i64 %121, 2
  store volatile i64 %122, ptr %NEXT_PC, align 8
  %123 = load i64, ptr @RAX_2216_1e56970, align 8
  %124 = load ptr, ptr %MEMORY, align 8
  store i64 %123, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %123, ptr %NEXT_PC, align 8, !tbaa !1293
  store volatile ptr %124, ptr %MEMORY, align 8
  %125 = load i64, ptr @RIP_2472_1e56970, align 8
  br label %168

126:                                              ; preds = %168
  %127 = sub i64 ptrtoint (ptr @data_401111 to i64), %125
  %128 = trunc i64 %127 to i32
  %129 = zext i32 %128 to i64
  switch i64 %129, label %130 [
    i64 0, label %inst_401111
    i64 1, label %inst_401110
  ]

130:                                              ; preds = %126
  %131 = load ptr, ptr %MEMORY, align 8
  %132 = load i64, ptr %NEXT_PC, align 8
  %133 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %133)
  %134 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %134)
  %135 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %135)
  %136 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %136)
  %137 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %137)
  %138 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %138)
  %139 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr %139)
  store ptr @__mcsema_reg_state, ptr %STATE.i, align 8, !noalias !1350
  store ptr %131, ptr %MEMORY.i, align 8, !noalias !1350
  store volatile i64 %132, ptr %NEXT_PC.i, align 8, !noalias !1350
  store volatile i64 0, ptr %ESBASE.i, align 8, !noalias !1350
  store volatile i64 0, ptr %DSBASE.i, align 8, !noalias !1350
  store volatile i64 0, ptr %CSBASE.i, align 8, !noalias !1350
  store volatile i64 0, ptr %SSBASE.i, align 8, !noalias !1350
  %140 = inttoptr i64 %132 to ptr
  %141 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %142 = add i64 %141, 8
  %143 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %144 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %145 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %146 = ptrtoint ptr %144 to i64
  %147 = load i64, ptr %143, align 8
  %param0.i = load i64, ptr @RDI_2296_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %param1.i = load i64, ptr @RSI_2280_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %param2.i = load i64, ptr @RDX_2264_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %param3.i = load i64, ptr @RCX_2248_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %param4.i = load i64, ptr @R8_2344_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %param5.i = load i64, ptr @R9_2360_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %148 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %149 = add i64 %148, 8
  %150 = inttoptr i64 %149 to ptr
  %151 = inttoptr i64 %149 to ptr
  %152 = ptrtoint ptr %151 to i64
  %153 = load i64, ptr %150, align 8
  %154 = load i64, ptr @RSP_2312_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %155 = add i64 %154, 16
  %156 = inttoptr i64 %155 to ptr
  %157 = inttoptr i64 %155 to ptr
  %158 = ptrtoint ptr %157 to i64
  %159 = load i64, ptr %156, align 8
  %160 = call i64 %140(i64 %param0.i, i64 %param1.i, i64 %param2.i, i64 %param3.i, i64 %param4.i, i64 %param5.i, i64 %153, i64 %159) #15
  store volatile i64 %160, ptr @RAX_2216_1e56970, align 8, !alias.scope !1354, !noalias !1355
  store i64 %147, ptr %NEXT_PC.i, align 8, !noalias !1350
  store volatile i64 %142, ptr @RSP_2312_1e56970, align 8, !alias.scope !1354, !noalias !1355
  %161 = bitcast ptr %STATE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %161)
  %162 = bitcast ptr %MEMORY.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %162)
  %163 = bitcast ptr %NEXT_PC.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %163)
  %164 = bitcast ptr %ESBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %164)
  %165 = bitcast ptr %DSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %165)
  %166 = bitcast ptr %CSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %166)
  %167 = bitcast ptr %SSBASE.i to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr %167)
  store ptr %131, ptr %MEMORY, align 8
  ret ptr %131

168:                                              ; preds = %inst_40110e
  switch i64 %125, label %126 [
    i64 4198673, label %inst_401111
    i64 4198672, label %inst_401110
  ]

inst_40111c:                                      ; preds = %inst_401111
  %169 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %169, ptr @RIP_2472_1e56970, align 8
  %170 = add i64 %169, 4
  store volatile i64 %170, ptr %NEXT_PC, align 8
  %171 = load i32, ptr @RAX_2216_1e56958, align 4
  %172 = zext i32 %171 to i64
  %173 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %173, ptr %MEMORY, align 8
  %174 = load ptr, ptr %MEMORY, align 8
  ret ptr %174
}

; Function Attrs: noinline
define internal ptr @sub_401588__term_proc(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %1 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 11, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 7, i32 0, i32 0
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  store i64 ptrtoint (ptr @.term_proc to i64), ptr %NEXT_PC, align 8
  store ptr @.term_proc, ptr @RIP_2472_1e676b0, align 8
  %stack_ptr_var = alloca i64, i64 1, align 8
  %frame_ptr_var = alloca i64, i64 1, align 8
  br label %inst_401588

inst_401588:                                      ; preds = %0
  %3 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %3, ptr @RIP_2472_1e56970, align 8
  %4 = add i64 %3, 4
  store volatile i64 %4, ptr %NEXT_PC, align 8
  %5 = load i32, ptr @RDX_2264_1e56958, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, ptr @RDI_2296_1e56958, align 4
  %8 = zext i32 %7 to i64
  %9 = load ptr, ptr %MEMORY, align 8
  store volatile ptr %9, ptr %MEMORY, align 8
  br label %inst_40158c

inst_40158c:                                      ; preds = %inst_401588
  %10 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %10, ptr @RIP_2472_1e56970, align 8
  %11 = add i64 %10, 4
  store volatile i64 %11, ptr %NEXT_PC, align 8
  %12 = load i64, ptr @RSP_2312_1e56970, align 8
  %13 = load ptr, ptr %MEMORY, align 8
  %sub.i.i = sub i64 %12, 8
  store i64 %sub.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i = icmp ult i64 %12, 8
  %conv.i.i = zext i1 %cmp.i.i.i to i8
  store i8 %conv.i.i, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i = trunc i64 %sub.i.i to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i) #15, !range !1315
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i = xor i64 8, %12
  %xor1.i.i.i.i = xor i64 %xor.i25.i.i.i, %sub.i.i
  %and.i.i.i.i = lshr i64 %xor1.i.i.i.i, 4
  %18 = trunc i64 %and.i.i.i.i to i8
  %19 = and i8 %18, 1
  store i8 %19, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i = icmp eq i64 %sub.i.i, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  store i8 %conv5.i.i.i, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i = lshr i64 %sub.i.i, 63
  %20 = trunc i64 %res.lobit.i.i.i to i8
  store i8 %20, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i = lshr i64 %12, 63
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor3.i.i.i.i, %shr.i.i.i.i
  %cmp.i.i.i.i = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  store i8 %conv11.i.i.i, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %13, ptr %MEMORY, align 8
  br label %inst_401590

inst_401590:                                      ; preds = %inst_40158c
  %21 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %21, ptr @RIP_2472_1e56970, align 8
  %22 = add i64 %21, 4
  store volatile i64 %22, ptr %NEXT_PC, align 8
  %23 = load i64, ptr @RSP_2312_1e56970, align 8
  %24 = load ptr, ptr %MEMORY, align 8
  %add.i.i1 = add i64 8, %23
  store i64 %add.i.i1, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  %cmp.i.i.i2 = icmp ult i64 %add.i.i1, %23
  %cmp1.i.i.i = icmp ult i64 %add.i.i1, 8
  %25 = or i1 %cmp.i.i.i2, %cmp1.i.i.i
  %conv.i.i3 = zext i1 %25 to i8
  store i8 %conv.i.i3, ptr @CF_2065_1e56928, align 1, !tbaa !1301
  %conv.i.i.i.i5 = trunc i64 %add.i.i1 to i32
  %conv.i.i.i.i.i6 = and i32 %conv.i.i.i.i5, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i6) #15, !range !1315
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, ptr @PF_2067_1e56928, align 1, !tbaa !1316
  %xor.i25.i.i.i8 = xor i64 8, %23
  %xor1.i.i.i.i9 = xor i64 %xor.i25.i.i.i8, %add.i.i1
  %and.i.i.i.i10 = lshr i64 %xor1.i.i.i.i9, 4
  %30 = trunc i64 %and.i.i.i.i10 to i8
  %31 = and i8 %30, 1
  store i8 %31, ptr @AF_2069_1e56928, align 1, !tbaa !1317
  %cmp.i24.i.i.i12 = icmp eq i64 %add.i.i1, 0
  %conv5.i.i.i13 = zext i1 %cmp.i24.i.i.i12 to i8
  store i8 %conv5.i.i.i13, ptr @ZF_2071_1e56928, align 1, !tbaa !1318
  %res.lobit.i.i.i15 = lshr i64 %add.i.i1, 63
  %32 = trunc i64 %res.lobit.i.i.i15 to i8
  store i8 %32, ptr @SF_2073_1e56928, align 1, !tbaa !1319
  %shr.i.i.i.i17 = lshr i64 %23, 63
  %xor.i.i.i.i = xor i64 %res.lobit.i.i.i15, %shr.i.i.i.i17
  %add.i.i.i.i18 = add nuw nsw i64 %xor.i.i.i.i, %res.lobit.i.i.i15
  %cmp.i.i.i.i19 = icmp eq i64 %add.i.i.i.i18, 2
  %conv11.i.i.i20 = zext i1 %cmp.i.i.i.i19 to i8
  store i8 %conv11.i.i.i20, ptr @OF_2077_1e56928, align 1, !tbaa !1320
  store volatile ptr %24, ptr %MEMORY, align 8
  br label %inst_401594

inst_401594:                                      ; preds = %inst_401590
  %33 = load volatile i64, ptr %NEXT_PC, align 8
  store volatile i64 %33, ptr @RIP_2472_1e56970, align 8
  %34 = add i64 %33, 1
  store volatile i64 %34, ptr %NEXT_PC, align 8
  %35 = load ptr, ptr %MEMORY, align 8
  %36 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %37 = load ptr, ptr @RSP_2312_1e61e90, align 8
  %38 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %39 = ptrtoint ptr %37 to i64
  %40 = load i64, ptr %36, align 8
  store i64 %40, ptr @RIP_2472_1e56970, align 8, !tbaa !1293
  store i64 %40, ptr %NEXT_PC, align 8, !tbaa !1293
  %41 = load i64, ptr @RSP_2312_1e56970, align 8, !tbaa !1290
  %add.i.i = add i64 %41, 8
  store i64 %add.i.i, ptr @RSP_2312_1e56970, align 8, !tbaa !1293
  store volatile ptr %35, ptr %MEMORY, align 8
  %42 = load ptr, ptr %MEMORY, align 8
  ret ptr %42
}

; Function Attrs: noinline
define internal ptr @ext_4040b0_printf(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  %next_pc = alloca i64, i64 0, align 8
  store i64 %pc, ptr %next_pc, align 8
  %MEMORY1 = alloca ptr, align 8
  %PC2 = alloca i64, align 8
  store ptr %memory, ptr %MEMORY1, align 8
  store i64 %pc, ptr %PC2, align 8
  %1 = load i64, ptr @RSP_2312_1e56970, align 8
  %2 = add i64 %1, 8
  %3 = load i64, ptr @RSP_2312_1e56970, align 8
  %4 = add i64 %3, 0
  %5 = inttoptr i64 %4 to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = ptrtoint ptr %6 to i64
  %8 = load i64, ptr %5, align 8
  %9 = load ptr, ptr @RDI_2296_1e61d30, align 8
  %param1 = load i64, ptr @RSI_2280_1e56970, align 8
  %param2 = load i64, ptr @RDX_2264_1e56970, align 8
  %param3 = load i64, ptr @RCX_2248_1e56970, align 8
  %param4 = load i64, ptr @R8_2344_1e56970, align 8
  %param5 = load i64, ptr @R9_2360_1e56970, align 8
  %10 = load i64, ptr @RSP_2312_1e56970, align 8
  %11 = add i64 %10, 8
  %12 = inttoptr i64 %11 to ptr
  %13 = inttoptr i64 %11 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr @RSP_2312_1e56970, align 8
  %17 = add i64 %16, 16
  %18 = inttoptr i64 %17 to ptr
  %19 = inttoptr i64 %17 to ptr
  %20 = ptrtoint ptr %19 to i64
  %21 = load i64, ptr %18, align 8
  %22 = call i32 (ptr, ...) @printf(ptr %9, i64 %param1, i64 %param2, i64 %param3, i64 %param4, i64 %param5, i64 %15, i64 %21)
  store volatile i64 0, ptr @RAX_2216_1e56970, align 8
  %23 = zext i32 %22 to i64
  store volatile i64 %23, ptr @RAX_2216_1e56970, align 8
  store i64 %8, ptr %NEXT_PC, align 8
  store volatile i64 %2, ptr @RSP_2312_1e56970, align 8
  ret ptr %memory
}

; Function Attrs: noinline
declare !remill.function.type !1356 extern_weak x86_64_sysvcc i32 @printf(ptr, ...) #10

; Function Attrs: nobuiltin noinline
declare !remill.function.type !1356 extern_weak x86_64_sysvcc i64 @sleep(i64) #7

; Function Attrs: noinline noreturn
declare !remill.function.type !1356 extern_weak x86_64_sysvcc void @exit(i32) #11

; Function Attrs: nobuiltin noinline
declare !remill.function.type !1356 extern_weak x86_64_sysvcc i64 @read(i64, i64, i64) #7

define internal x86_64_sysvcc i32 @printf_novarargs.1(ptr %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) {
  %9 = call i32 (ptr, ...) @printf(ptr %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7)
  ret i32 %9
}

; Function Attrs: noinline
define weak x86_64_sysvcc void @__gmon_start__() #10 !remill.function.type !1357 {
  ret void
}

; Function Attrs: noinline
define internal ptr @ext_4040c8_sleep(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  %next_pc = alloca i64, i64 0, align 8
  store i64 %pc, ptr %next_pc, align 8
  %MEMORY1 = alloca ptr, align 8
  %PC2 = alloca i64, align 8
  store ptr %memory, ptr %MEMORY1, align 8
  store i64 %pc, ptr %PC2, align 8
  %1 = load i64, ptr @RSP_2312_1e56970, align 8
  %2 = add i64 %1, 8
  %3 = load i64, ptr @RSP_2312_1e56970, align 8
  %4 = add i64 %3, 0
  %5 = inttoptr i64 %4 to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = ptrtoint ptr %6 to i64
  %8 = load i64, ptr %5, align 8
  %param0 = load i64, ptr @RDI_2296_1e56970, align 8
  %9 = call i64 @sleep(i64 %param0)
  store volatile i64 %9, ptr @RAX_2216_1e56970, align 8
  store i64 %8, ptr %NEXT_PC, align 8
  store volatile i64 %2, ptr @RSP_2312_1e56970, align 8
  ret ptr %memory
}

; Function Attrs: noinline
define internal ptr @ext_4040c0_exit(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  %next_pc = alloca i64, i64 0, align 8
  store i64 %pc, ptr %next_pc, align 8
  %MEMORY1 = alloca ptr, align 8
  %PC2 = alloca i64, align 8
  store ptr %memory, ptr %MEMORY1, align 8
  store i64 %pc, ptr %PC2, align 8
  %1 = load i64, ptr @RSP_2312_1e56970, align 8
  %2 = add i64 %1, 8
  %3 = load i64, ptr @RSP_2312_1e56970, align 8
  %4 = add i64 %3, 0
  %5 = inttoptr i64 %4 to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = ptrtoint ptr %6 to i64
  %8 = load i64, ptr %5, align 8
  %9 = getelementptr inbounds %struct.State, ptr %state, i32 0, i32 6, i32 11, i32 0, i32 0
  %param0 = load i32, ptr @RDI_2296_1e56958, align 4
  call void @exit(i32 %param0)
  store i64 %8, ptr %NEXT_PC, align 8
  store volatile i64 %2, ptr @RSP_2312_1e56970, align 8
  ret ptr undef
}

; Function Attrs: noinline
define internal ptr @ext_4040b8_read(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #9 {
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  %next_pc = alloca i64, i64 0, align 8
  store i64 %pc, ptr %next_pc, align 8
  %MEMORY1 = alloca ptr, align 8
  %PC2 = alloca i64, align 8
  store ptr %memory, ptr %MEMORY1, align 8
  store i64 %pc, ptr %PC2, align 8
  %1 = load i64, ptr @RSP_2312_1e56970, align 8
  %2 = add i64 %1, 8
  %3 = load i64, ptr @RSP_2312_1e56970, align 8
  %4 = add i64 %3, 0
  %5 = inttoptr i64 %4 to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = ptrtoint ptr %6 to i64
  %8 = load i64, ptr %5, align 8
  %param0 = load i64, ptr @RDI_2296_1e56970, align 8
  %param1 = load i64, ptr @RSI_2280_1e56970, align 8
  %param2 = load i64, ptr @RDX_2264_1e56970, align 8
  %9 = call i64 @read(i64 %param0, i64 %param1, i64 %param2)
  store volatile i64 %9, ptr @RAX_2216_1e56970, align 8
  store i64 %8, ptr %NEXT_PC, align 8
  store volatile i64 %2, ptr @RSP_2312_1e56970, align 8
  ret ptr %memory
}

; Function Attrs: noinline
declare !remill.function.type !1357 extern_weak x86_64_sysvcc void @__libc_start_main(ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr) #10

; Function Attrs: alwaysinline inlinehint nounwind
define dso_local ptr @__mcsema_detach_call_value(ptr noalias nonnull align 1 %state, i64 %pc, ptr noalias %memory) #12 !remill.function.type !1358 {
  %BRANCH_TAKEN = alloca i8, align 1
  %RETURN_PC = alloca i64, align 8
  %MONITOR = alloca i64, align 8
  %STATE = alloca ptr, align 8
  store ptr @__mcsema_reg_state, ptr %STATE, align 8
  %MEMORY = alloca ptr, align 8
  store ptr %memory, ptr %MEMORY, align 8
  %NEXT_PC = alloca i64, align 8
  store volatile i64 %pc, ptr %NEXT_PC, align 8
  %ESBASE = alloca i64, align 8
  store volatile i64 0, ptr %ESBASE, align 8
  %DSBASE = alloca i64, align 8
  store volatile i64 0, ptr %DSBASE, align 8
  %CSBASE = alloca i64, align 8
  store volatile i64 0, ptr %CSBASE, align 8
  %SSBASE = alloca i64, align 8
  store volatile i64 0, ptr %SSBASE, align 8
  %1 = inttoptr i64 %pc to ptr
  %2 = load i64, ptr @RSP_2312_1e56970, align 8
  %3 = add i64 %2, 8
  %4 = load i64, ptr @RSP_2312_1e56970, align 8
  %5 = add i64 %4, 0
  %6 = inttoptr i64 %5 to ptr
  %7 = inttoptr i64 %5 to ptr
  %8 = ptrtoint ptr %7 to i64
  %9 = load i64, ptr %6, align 8
  %param0 = load i64, ptr @RDI_2296_1e56970, align 8
  %param1 = load i64, ptr @RSI_2280_1e56970, align 8
  %param2 = load i64, ptr @RDX_2264_1e56970, align 8
  %param3 = load i64, ptr @RCX_2248_1e56970, align 8
  %param4 = load i64, ptr @R8_2344_1e56970, align 8
  %param5 = load i64, ptr @R9_2360_1e56970, align 8
  %10 = load i64, ptr @RSP_2312_1e56970, align 8
  %11 = add i64 %10, 8
  %12 = inttoptr i64 %11 to ptr
  %13 = inttoptr i64 %11 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr @RSP_2312_1e56970, align 8
  %17 = add i64 %16, 16
  %18 = inttoptr i64 %17 to ptr
  %19 = inttoptr i64 %17 to ptr
  %20 = ptrtoint ptr %19 to i64
  %21 = load i64, ptr %18, align 8
  %22 = call i64 %1(i64 %param0, i64 %param1, i64 %param2, i64 %param3, i64 %param4, i64 %param5, i64 %15, i64 %21)
  store volatile i64 %22, ptr @RAX_2216_1e56970, align 8
  store i64 %9, ptr %NEXT_PC, align 8
  store volatile i64 %3, ptr @RSP_2312_1e56970, align 8
  ret ptr %memory
}

define ptr @__mcsema_init_reg_state() {
entry:
  %0 = load volatile i64, ptr getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 13, i32 0, i32 0), align 8
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %is_null, label %end

is_null:                                          ; preds = %entry
  %constexpr = and i64 ptrtoint (ptr getelementptr inbounds ([1048576 x i8], ptr @__mcsema_stack, i32 0, i32 1048064) to i64), -16
  store i64 %constexpr, ptr getelementptr inbounds (%struct.State, ptr @__mcsema_reg_state, i32 0, i32 6, i32 13, i32 0, i32 0), align 8
  call void @__mcsema_early_init()
  br label %end

end:                                              ; preds = %is_null, %entry
  ret ptr @__mcsema_reg_state
}

define internal void @__mcsema_early_init() {
  %1 = load volatile i1, ptr @0, align 1
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  ret void

3:                                                ; preds = %0
  store volatile i1 true, ptr @0, align 1
  ret void
}

; Function Attrs: nobuiltin noinline
define private i64 @register_tm_clones(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #7 {
  %9 = call ptr @__mcsema_init_reg_state()
  %RDI = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 11, i32 0, i32 0, !remill_register !1321
  store volatile i64 %0, ptr %RDI, align 8
  %RSI = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 9, i32 0, i32 0, !remill_register !1349
  store volatile i64 %1, ptr %RSI, align 8
  %RDX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 7, i32 0, i32 0, !remill_register !1341
  store volatile i64 %2, ptr %RDX, align 8
  %RCX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 5, i32 0, i32 0, !remill_register !1342
  store volatile i64 %3, ptr %RCX, align 8
  %R8 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 17, i32 0, i32 0, !remill_register !1359
  store volatile i64 %4, ptr %R8, align 8
  %R9 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 19, i32 0, i32 0, !remill_register !1360
  store volatile i64 %5, ptr %R9, align 8
  %RSP = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 13, i32 0, i32 0, !remill_register !1361
  %10 = load i64, ptr %RSP, align 8
  %11 = add i64 %10, 8
  %12 = inttoptr i64 %11 to ptr
  %13 = inttoptr i64 %11 to ptr
  %14 = ptrtoint ptr %13 to i64
  store i64 %6, ptr %12, align 8
  %RSP1 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 13, i32 0, i32 0, !remill_register !1361
  %15 = load i64, ptr %RSP1, align 8
  %16 = add i64 %15, 16
  %17 = inttoptr i64 %16 to ptr
  %18 = inttoptr i64 %16 to ptr
  %19 = ptrtoint ptr %18 to i64
  store i64 %7, ptr %17, align 8
  %20 = call ptr @sub_4010e0_register_tm_clones(ptr %9, i64 4198624, ptr null)
  %RAX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 1, i32 0, i32 0, !remill_register !1322
  %21 = load i64, ptr %RAX, align 8
  ret i64 %21
}

; Function Attrs: nobuiltin noinline
define private i64 @_dl_relocate_static_pie(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #7 {
  %9 = call ptr @__mcsema_init_reg_state()
  %RDI = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 11, i32 0, i32 0, !remill_register !1321
  store volatile i64 %0, ptr %RDI, align 8
  %RSI = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 9, i32 0, i32 0, !remill_register !1349
  store volatile i64 %1, ptr %RSI, align 8
  %RDX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 7, i32 0, i32 0, !remill_register !1341
  store volatile i64 %2, ptr %RDX, align 8
  %RCX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 5, i32 0, i32 0, !remill_register !1342
  store volatile i64 %3, ptr %RCX, align 8
  %R8 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 17, i32 0, i32 0, !remill_register !1359
  store volatile i64 %4, ptr %R8, align 8
  %R9 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 19, i32 0, i32 0, !remill_register !1360
  store volatile i64 %5, ptr %R9, align 8
  %RSP = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 13, i32 0, i32 0, !remill_register !1361
  %10 = load i64, ptr %RSP, align 8
  %11 = add i64 %10, 8
  %12 = inttoptr i64 %11 to ptr
  %13 = inttoptr i64 %11 to ptr
  %14 = ptrtoint ptr %13 to i64
  store i64 %6, ptr %12, align 8
  %RSP1 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 13, i32 0, i32 0, !remill_register !1361
  %15 = load i64, ptr %RSP1, align 8
  %16 = add i64 %15, 16
  %17 = inttoptr i64 %16 to ptr
  %18 = inttoptr i64 %16 to ptr
  %19 = ptrtoint ptr %18 to i64
  store i64 %7, ptr %17, align 8
  %20 = call ptr @sub_4010a0__dl_relocate_static_pie(ptr %9, i64 4198560, ptr null)
  %RAX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 1, i32 0, i32 0, !remill_register !1322
  %21 = load i64, ptr %RAX, align 8
  ret i64 %21
}

; Function Attrs: nobuiltin noinline
define x86_64_sysvcc i32 @main(i32 %param0, ptr %param1, ptr %param2) #7 !remill.function.type !1356 {
  %1 = call ptr @__mcsema_init_reg_state()
  %2 = getelementptr inbounds %struct.State, ptr %1, i32 0, i32 6, i32 11, i32 0, i32 0
  %EDI = bitcast ptr %2 to ptr, !remill_register !1362
  store volatile i32 %param0, ptr %EDI, align 4
  %RSI = getelementptr inbounds %struct.State, ptr %1, i32 0, i32 6, i32 9, i32 0, i32 0, !remill_register !1349
  store volatile i64 0, ptr %RSI, align 8
  %3 = ptrtoint ptr %param1 to i64
  store volatile i64 %3, ptr %RSI, align 8
  %RDX = getelementptr inbounds %struct.State, ptr %1, i32 0, i32 6, i32 7, i32 0, i32 0, !remill_register !1341
  store volatile i64 0, ptr %RDX, align 8
  %4 = ptrtoint ptr %param2 to i64
  store volatile i64 %4, ptr %RDX, align 8
  %5 = call ptr @sub_401200_main(ptr %1, i64 4198912, ptr null)
  %RAX = getelementptr inbounds %struct.State, ptr %1, i32 0, i32 6, i32 1, i32 0, i32 0, !remill_register !1322
  %6 = load i64, ptr %RAX, align 8
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: nobuiltin noinline
define private i64 @callback_sub_401020(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #7 {
  %9 = call ptr @__mcsema_init_reg_state()
  %RDI = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 11, i32 0, i32 0, !remill_register !1321
  store volatile i64 %0, ptr %RDI, align 8
  %RSI = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 9, i32 0, i32 0, !remill_register !1349
  store volatile i64 %1, ptr %RSI, align 8
  %RDX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 7, i32 0, i32 0, !remill_register !1341
  store volatile i64 %2, ptr %RDX, align 8
  %RCX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 5, i32 0, i32 0, !remill_register !1342
  store volatile i64 %3, ptr %RCX, align 8
  %R8 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 17, i32 0, i32 0, !remill_register !1359
  store volatile i64 %4, ptr %R8, align 8
  %R9 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 19, i32 0, i32 0, !remill_register !1360
  store volatile i64 %5, ptr %R9, align 8
  %RSP = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 13, i32 0, i32 0, !remill_register !1361
  %10 = load i64, ptr %RSP, align 8
  %11 = add i64 %10, 8
  %12 = inttoptr i64 %11 to ptr
  %13 = inttoptr i64 %11 to ptr
  %14 = ptrtoint ptr %13 to i64
  store i64 %6, ptr %12, align 8
  %RSP1 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 13, i32 0, i32 0, !remill_register !1361
  %15 = load i64, ptr %RSP1, align 8
  %16 = add i64 %15, 16
  %17 = inttoptr i64 %16 to ptr
  %18 = inttoptr i64 %16 to ptr
  %19 = ptrtoint ptr %18 to i64
  store i64 %7, ptr %17, align 8
  %20 = call ptr @sub_401020(ptr %9, i64 4198432, ptr null)
  %RAX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 1, i32 0, i32 0, !remill_register !1322
  %21 = load i64, ptr %RAX, align 8
  ret i64 %21
}

; Function Attrs: nobuiltin noinline
define dso_local i64 @draw(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #7 !remill.function.type !1356 {
  %9 = call ptr @__mcsema_init_reg_state()
  %RDI = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 11, i32 0, i32 0, !remill_register !1321
  store volatile i64 %0, ptr %RDI, align 8
  %RSI = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 9, i32 0, i32 0, !remill_register !1349
  store volatile i64 %1, ptr %RSI, align 8
  %RDX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 7, i32 0, i32 0, !remill_register !1341
  store volatile i64 %2, ptr %RDX, align 8
  %RCX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 5, i32 0, i32 0, !remill_register !1342
  store volatile i64 %3, ptr %RCX, align 8
  %R8 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 17, i32 0, i32 0, !remill_register !1359
  store volatile i64 %4, ptr %R8, align 8
  %R9 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 19, i32 0, i32 0, !remill_register !1360
  store volatile i64 %5, ptr %R9, align 8
  %RSP = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 13, i32 0, i32 0, !remill_register !1361
  %10 = load i64, ptr %RSP, align 8
  %11 = add i64 %10, 8
  %12 = inttoptr i64 %11 to ptr
  %13 = inttoptr i64 %11 to ptr
  %14 = ptrtoint ptr %13 to i64
  store i64 %6, ptr %12, align 8
  %RSP1 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 13, i32 0, i32 0, !remill_register !1361
  %15 = load i64, ptr %RSP1, align 8
  %16 = add i64 %15, 16
  %17 = inttoptr i64 %16 to ptr
  %18 = inttoptr i64 %16 to ptr
  %19 = ptrtoint ptr %18 to i64
  store i64 %7, ptr %17, align 8
  %20 = call ptr @sub_401160_draw(ptr %9, i64 4198752, ptr null)
  %RAX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 1, i32 0, i32 0, !remill_register !1322
  %21 = load i64, ptr %RAX, align 8
  ret i64 %21
}

; Function Attrs: nobuiltin noinline
define private i64 @deregister_tm_clones(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #7 {
  %9 = call ptr @__mcsema_init_reg_state()
  %RDI = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 11, i32 0, i32 0, !remill_register !1321
  store volatile i64 %0, ptr %RDI, align 8
  %RSI = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 9, i32 0, i32 0, !remill_register !1349
  store volatile i64 %1, ptr %RSI, align 8
  %RDX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 7, i32 0, i32 0, !remill_register !1341
  store volatile i64 %2, ptr %RDX, align 8
  %RCX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 5, i32 0, i32 0, !remill_register !1342
  store volatile i64 %3, ptr %RCX, align 8
  %R8 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 17, i32 0, i32 0, !remill_register !1359
  store volatile i64 %4, ptr %R8, align 8
  %R9 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 19, i32 0, i32 0, !remill_register !1360
  store volatile i64 %5, ptr %R9, align 8
  %RSP = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 13, i32 0, i32 0, !remill_register !1361
  %10 = load i64, ptr %RSP, align 8
  %11 = add i64 %10, 8
  %12 = inttoptr i64 %11 to ptr
  %13 = inttoptr i64 %11 to ptr
  %14 = ptrtoint ptr %13 to i64
  store i64 %6, ptr %12, align 8
  %RSP1 = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 13, i32 0, i32 0, !remill_register !1361
  %15 = load i64, ptr %RSP1, align 8
  %16 = add i64 %15, 16
  %17 = inttoptr i64 %16 to ptr
  %18 = inttoptr i64 %16 to ptr
  %19 = ptrtoint ptr %18 to i64
  store i64 %7, ptr %17, align 8
  %20 = call ptr @sub_4010b0_deregister_tm_clones(ptr %9, i64 4198576, ptr null)
  %RAX = getelementptr inbounds %struct.State, ptr %9, i32 0, i32 6, i32 1, i32 0, i32 0, !remill_register !1322
  %21 = load i64, ptr %RAX, align 8
  ret i64 %21
}

; Function Attrs: noinline optnone
define ptr @__mcsema_debug_get_reg_state() #13 {
  ret ptr @__mcsema_reg_state
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone memory(none) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind memory(none) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noduplicate noinline nounwind optnone memory(none) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noinline }
attributes #8 = { noreturn }
attributes #9 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline }
attributes #11 = { noinline noreturn }
attributes #12 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline optnone }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!llvm.dbg.cu = !{!4}

!0 = !{!"clang version 11.0.1 (https://github.com/trailofbits/vcpkg.git 4592a93cc4ca82f1963dba08413c43639662d7ae)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !5, producer: "clang version 11.0.1 (https://github.com/trailofbits/vcpkg.git 4592a93cc4ca82f1963dba08413c43639662d7ae)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, imports: !7, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/zyl/btfinaltest-llvm11_debug/remill/lib/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/zyl/btfinaltest-llvm11_debug/remill-build/lib/Arch/X86/Runtime")
!6 = !{}
!7 = !{!8, !13, !20, !24, !31, !35, !40, !42, !50, !54, !58, !72, !76, !80, !84, !88, !93, !97, !101, !105, !109, !117, !121, !125, !127, !131, !135, !140, !146, !150, !154, !156, !164, !168, !176, !178, !182, !186, !190, !194, !199, !204, !209, !210, !211, !212, !214, !215, !216, !217, !218, !219, !220, !276, !280, !297, !300, !305, !313, !318, !322, !326, !330, !334, !336, !338, !342, !348, !352, !358, !364, !366, !370, !374, !378, !382, !393, !395, !399, !403, !407, !409, !413, !417, !421, !423, !425, !429, !437, !441, !445, !449, !451, !457, !459, !465, !469, !473, !477, !481, !485, !489, !491, !493, !497, !501, !505, !507, !511, !515, !517, !519, !523, !527, !531, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !550, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !580, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !610, !612, !616, !620, !625, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !659, !665, !670, !674, !676, !678, !680, !682, !689, !693, !697, !701, !705, !709, !714, !718, !720, !724, !730, !734, !739, !741, !743, !747, !751, !755, !757, !759, !761, !763, !767, !769, !771, !775, !779, !783, !787, !791, !793, !795, !799, !803, !807, !811, !813, !815, !819, !823, !824, !825, !826, !827, !828, !834, !836, !838, !842, !844, !846, !848, !850, !852, !854, !856, !861, !865, !867, !869, !874, !876, !878, !880, !882, !884, !886, !889, !891, !893, !897, !901, !903, !905, !907, !909, !911, !913, !915, !917, !919, !921, !925, !929, !931, !933, !935, !937, !939, !941, !943, !945, !947, !949, !951, !953, !955, !957, !959, !963, !967, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !993, !997, !1001, !1003, !1005, !1007, !1011, !1015, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1037, !1039, !1041, !1043, !1047, !1051, !1055, !1057, !1059, !1061, !1063, !1067, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1087, !1091, !1093, !1095, !1097, !1099, !1103, !1107, !1111, !1113, !1115, !1117, !1119, !1121, !1123, !1127, !1131, !1135, !1137, !1141, !1145, !1147, !1149, !1151, !1153, !1155, !1157, !1162, !1164, !1167, !1172, !1174, !1180, !1182, !1184, !1186, !1191, !1193, !1199, !1201, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1221, !1225, !1229, !1233, !1237, !1241, !1243, !1245, !1247, !1251, !1255, !1259, !1263, !1267, !1269, !1271, !1273, !1277, !1281, !1285, !1287}
!8 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !10, file: !12, line: 58)
!9 = !DINamespace(name: "__gnu_debug", scope: null)
!10 = !DINamespace(name: "__debug", scope: !11)
!11 = !DINamespace(name: "std", scope: null)
!12 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/debug/debug.h", directory: "")
!13 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !14, file: !19, line: 52)
!14 = !DISubprogram(name: "abs", scope: !15, file: !15, line: 840, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!15 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/std_abs.h", directory: "")
!20 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !21, file: !23, line: 127)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !15, line: 62, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!23 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib", directory: "")
!24 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !25, file: !23, line: 128)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !15, line: 70, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !27, identifier: "_ZTS6ldiv_t")
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !26, file: !15, line: 68, baseType: !29, size: 64)
!29 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !26, file: !15, line: 69, baseType: !29, size: 64, offset: 64)
!31 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !32, file: !23, line: 130)
!32 = !DISubprogram(name: "abort", scope: !15, file: !15, line: 591, type: !33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!33 = !DISubroutineType(types: !34)
!34 = !{null}
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !36, file: !23, line: 134)
!36 = !DISubprogram(name: "atexit", scope: !15, file: !15, line: 595, type: !37, flags: DIFlagPrototyped, spFlags: 0)
!37 = !DISubroutineType(types: !38)
!38 = !{!18, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!40 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !41, file: !23, line: 137)
!41 = !DISubprogram(name: "at_quick_exit", scope: !15, file: !15, line: 600, type: !37, flags: DIFlagPrototyped, spFlags: 0)
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !43, file: !23, line: 140)
!43 = !DISubprogram(name: "atof", scope: !15, file: !15, line: 101, type: !44, flags: DIFlagPrototyped, spFlags: 0)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !47}
!46 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !51, file: !23, line: 141)
!51 = !DISubprogram(name: "atoi", scope: !15, file: !15, line: 104, type: !52, flags: DIFlagPrototyped, spFlags: 0)
!52 = !DISubroutineType(types: !53)
!53 = !{!18, !47}
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !55, file: !23, line: 142)
!55 = !DISubprogram(name: "atol", scope: !15, file: !15, line: 107, type: !56, flags: DIFlagPrototyped, spFlags: 0)
!56 = !DISubroutineType(types: !57)
!57 = !{!29, !47}
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !59, file: !23, line: 143)
!59 = !DISubprogram(name: "bsearch", scope: !15, file: !15, line: 820, type: !60, flags: DIFlagPrototyped, spFlags: 0)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !63, !63, !65, !65, !68}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "vcpkg_ubuntu-20.04_llvm-11_amd64/installed/x64-linux-rel/tools/llvm/lib/clang/11.0.1/include/stddef.h", directory: "/home/zyl/btfinaltest-llvm11_debug")
!67 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !15, line: 808, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!18, !63, !63}
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !73, file: !23, line: 144)
!73 = !DISubprogram(name: "calloc", scope: !15, file: !15, line: 542, type: !74, flags: DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{!62, !65, !65}
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !77, file: !23, line: 145)
!77 = !DISubprogram(name: "div", scope: !15, file: !15, line: 852, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DISubroutineType(types: !79)
!79 = !{!21, !18, !18}
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !81, file: !23, line: 146)
!81 = !DISubprogram(name: "exit", scope: !15, file: !15, line: 617, type: !82, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !18}
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !85, file: !23, line: 147)
!85 = !DISubprogram(name: "free", scope: !15, file: !15, line: 565, type: !86, flags: DIFlagPrototyped, spFlags: 0)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !62}
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !89, file: !23, line: 148)
!89 = !DISubprogram(name: "getenv", scope: !15, file: !15, line: 634, type: !90, flags: DIFlagPrototyped, spFlags: 0)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !47}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !94, file: !23, line: 149)
!94 = !DISubprogram(name: "labs", scope: !15, file: !15, line: 841, type: !95, flags: DIFlagPrototyped, spFlags: 0)
!95 = !DISubroutineType(types: !96)
!96 = !{!29, !29}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !98, file: !23, line: 150)
!98 = !DISubprogram(name: "ldiv", scope: !15, file: !15, line: 854, type: !99, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{!25, !29, !29}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !102, file: !23, line: 151)
!102 = !DISubprogram(name: "malloc", scope: !15, file: !15, line: 539, type: !103, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{!62, !65}
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !106, file: !23, line: 153)
!106 = !DISubprogram(name: "mblen", scope: !15, file: !15, line: 922, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DISubroutineType(types: !108)
!108 = !{!18, !47, !65}
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !110, file: !23, line: 154)
!110 = !DISubprogram(name: "mbstowcs", scope: !15, file: !15, line: 933, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{!65, !113, !116, !65}
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !118, file: !23, line: 155)
!118 = !DISubprogram(name: "mbtowc", scope: !15, file: !15, line: 925, type: !119, flags: DIFlagPrototyped, spFlags: 0)
!119 = !DISubroutineType(types: !120)
!120 = !{!18, !113, !116, !65}
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !122, file: !23, line: 157)
!122 = !DISubprogram(name: "qsort", scope: !15, file: !15, line: 830, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !62, !65, !65, !68}
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !126, file: !23, line: 160)
!126 = !DISubprogram(name: "quick_exit", scope: !15, file: !15, line: 623, type: !82, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !128, file: !23, line: 163)
!128 = !DISubprogram(name: "rand", scope: !15, file: !15, line: 453, type: !129, flags: DIFlagPrototyped, spFlags: 0)
!129 = !DISubroutineType(types: !130)
!130 = !{!18}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !132, file: !23, line: 164)
!132 = !DISubprogram(name: "realloc", scope: !15, file: !15, line: 550, type: !133, flags: DIFlagPrototyped, spFlags: 0)
!133 = !DISubroutineType(types: !134)
!134 = !{!62, !62, !65}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !136, file: !23, line: 165)
!136 = !DISubprogram(name: "srand", scope: !15, file: !15, line: 455, type: !137, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !139}
!139 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !141, file: !23, line: 166)
!141 = !DISubprogram(name: "strtod", scope: !15, file: !15, line: 117, type: !142, flags: DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!46, !116, !144}
!144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !147, file: !23, line: 167)
!147 = !DISubprogram(name: "strtol", scope: !15, file: !15, line: 176, type: !148, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!29, !116, !144, !18}
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !151, file: !23, line: 168)
!151 = !DISubprogram(name: "strtoul", scope: !15, file: !15, line: 180, type: !152, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!67, !116, !144, !18}
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !155, file: !23, line: 169)
!155 = !DISubprogram(name: "system", scope: !15, file: !15, line: 784, type: !52, flags: DIFlagPrototyped, spFlags: 0)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !157, file: !23, line: 171)
!157 = !DISubprogram(name: "wcstombs", scope: !15, file: !15, line: 936, type: !158, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!65, !160, !161, !65}
!160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !92)
!161 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !165, file: !23, line: 172)
!165 = !DISubprogram(name: "wctomb", scope: !15, file: !15, line: 929, type: !166, flags: DIFlagPrototyped, spFlags: 0)
!166 = !DISubroutineType(types: !167)
!167 = !{!18, !92, !115}
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !170, file: !23, line: 200)
!169 = !DINamespace(name: "__gnu_cxx", scope: null)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !15, line: 80, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !172, identifier: "_ZTS7lldiv_t")
!172 = !{!173, !175}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !171, file: !15, line: 78, baseType: !174, size: 64)
!174 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !171, file: !15, line: 79, baseType: !174, size: 64, offset: 64)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !177, file: !23, line: 206)
!177 = !DISubprogram(name: "_Exit", scope: !15, file: !15, line: 629, type: !82, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !179, file: !23, line: 210)
!179 = !DISubprogram(name: "llabs", scope: !15, file: !15, line: 844, type: !180, flags: DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{!174, !174}
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !183, file: !23, line: 216)
!183 = !DISubprogram(name: "lldiv", scope: !15, file: !15, line: 858, type: !184, flags: DIFlagPrototyped, spFlags: 0)
!184 = !DISubroutineType(types: !185)
!185 = !{!170, !174, !174}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !187, file: !23, line: 227)
!187 = !DISubprogram(name: "atoll", scope: !15, file: !15, line: 112, type: !188, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DISubroutineType(types: !189)
!189 = !{!174, !47}
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !191, file: !23, line: 228)
!191 = !DISubprogram(name: "strtoll", scope: !15, file: !15, line: 200, type: !192, flags: DIFlagPrototyped, spFlags: 0)
!192 = !DISubroutineType(types: !193)
!193 = !{!174, !116, !144, !18}
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !195, file: !23, line: 229)
!195 = !DISubprogram(name: "strtoull", scope: !15, file: !15, line: 205, type: !196, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !116, !144, !18}
!198 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !200, file: !23, line: 231)
!200 = !DISubprogram(name: "strtof", scope: !15, file: !15, line: 123, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !116, !144}
!203 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !205, file: !23, line: 232)
!205 = !DISubprogram(name: "strtold", scope: !15, file: !15, line: 126, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !116, !144}
!208 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !170, file: !23, line: 240)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !177, file: !23, line: 242)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !179, file: !23, line: 244)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !213, file: !23, line: 245)
!213 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !169, file: !23, line: 213, type: !184, flags: DIFlagPrototyped, spFlags: 0)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !183, file: !23, line: 246)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !187, file: !23, line: 248)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !200, file: !23, line: 249)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !191, file: !23, line: 250)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !195, file: !23, line: 251)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !205, file: !23, line: 252)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !221, file: !222, line: 57)
!221 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !223, file: !222, line: 79, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !224, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!222 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/exception_ptr.h", directory: "")
!223 = !DINamespace(name: "__exception_ptr", scope: !11)
!224 = !{!225, !226, !230, !233, !234, !239, !240, !244, !250, !254, !258, !261, !262, !265, !269}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !221, file: !222, line: 81, baseType: !62, size: 64)
!226 = !DISubprogram(name: "exception_ptr", scope: !221, file: !222, line: 83, type: !227, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229, !62}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!230 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !221, file: !222, line: 85, type: !231, scopeLine: 85, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !229}
!233 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !221, file: !222, line: 86, type: !231, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!234 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !221, file: !222, line: 88, type: !235, scopeLine: 88, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{!62, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!239 = !DISubprogram(name: "exception_ptr", scope: !221, file: !222, line: 96, type: !231, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!240 = !DISubprogram(name: "exception_ptr", scope: !221, file: !222, line: 98, type: !241, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !229, !243}
!243 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !238, size: 64)
!244 = !DISubprogram(name: "exception_ptr", scope: !221, file: !222, line: 101, type: !245, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !229, !247}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !11, file: !248, line: 262, baseType: !249)
!248 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/c++config.h", directory: "")
!249 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!250 = !DISubprogram(name: "exception_ptr", scope: !221, file: !222, line: 105, type: !251, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !229, !253}
!253 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !221, size: 64)
!254 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !221, file: !222, line: 118, type: !255, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !229, !243}
!257 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !221, size: 64)
!258 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !221, file: !222, line: 122, type: !259, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!259 = !DISubroutineType(types: !260)
!260 = !{!257, !229, !253}
!261 = !DISubprogram(name: "~exception_ptr", scope: !221, file: !222, line: 129, type: !231, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!262 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !221, file: !222, line: 132, type: !263, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !229, !257}
!265 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !221, file: !222, line: 144, type: !266, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !237}
!268 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!269 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !221, file: !222, line: 153, type: !270, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !237}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !11, file: !275, line: 88, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!275 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/typeinfo", directory: "")
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !223, entity: !277, file: !222, line: 73)
!277 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !11, file: !222, line: 69, type: !278, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !221}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !281, file: !296, line: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !282, line: 6, baseType: !283)
!282 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !284, line: 21, baseType: !285)
!284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !286, identifier: "_ZTS11__mbstate_t")
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !285, file: !284, line: 15, baseType: !18, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !285, file: !284, line: 20, baseType: !289, size: 32, offset: 32)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !284, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !290, identifier: "_ZTSN11__mbstate_tUt_E")
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !289, file: !284, line: 18, baseType: !139, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !289, file: !284, line: 19, baseType: !293, size: 32)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 32, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 4)
!296 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwchar", directory: "")
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !298, file: !296, line: 141)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !299, line: 20, baseType: !139)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "")
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !301, file: !296, line: 143)
!301 = !DISubprogram(name: "btowc", scope: !302, file: !302, line: 284, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!303 = !DISubroutineType(types: !304)
!304 = !{!298, !18}
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !306, file: !296, line: 144)
!306 = !DISubprogram(name: "fgetwc", scope: !302, file: !302, line: 726, type: !307, flags: DIFlagPrototyped, spFlags: 0)
!307 = !DISubroutineType(types: !308)
!308 = !{!298, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !311, line: 5, baseType: !312)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !311, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !314, file: !296, line: 145)
!314 = !DISubprogram(name: "fgetws", scope: !302, file: !302, line: 755, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!114, !113, !18, !317}
!317 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !309)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !319, file: !296, line: 146)
!319 = !DISubprogram(name: "fputwc", scope: !302, file: !302, line: 740, type: !320, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DISubroutineType(types: !321)
!321 = !{!298, !115, !309}
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !323, file: !296, line: 147)
!323 = !DISubprogram(name: "fputws", scope: !302, file: !302, line: 762, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!18, !161, !317}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !327, file: !296, line: 148)
!327 = !DISubprogram(name: "fwide", scope: !302, file: !302, line: 573, type: !328, flags: DIFlagPrototyped, spFlags: 0)
!328 = !DISubroutineType(types: !329)
!329 = !{!18, !309, !18}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !331, file: !296, line: 149)
!331 = !DISubprogram(name: "fwprintf", scope: !302, file: !302, line: 580, type: !332, flags: DIFlagPrototyped, spFlags: 0)
!332 = !DISubroutineType(types: !333)
!333 = !{!18, !317, !161, null}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !335, file: !296, line: 150)
!335 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !302, file: !302, line: 640, type: !332, flags: DIFlagPrototyped, spFlags: 0)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !337, file: !296, line: 151)
!337 = !DISubprogram(name: "getwc", scope: !302, file: !302, line: 727, type: !307, flags: DIFlagPrototyped, spFlags: 0)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !339, file: !296, line: 152)
!339 = !DISubprogram(name: "getwchar", scope: !302, file: !302, line: 733, type: !340, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{!298}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !343, file: !296, line: 153)
!343 = !DISubprogram(name: "mbrlen", scope: !302, file: !302, line: 307, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{!65, !116, !65, !346}
!346 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !349, file: !296, line: 154)
!349 = !DISubprogram(name: "mbrtowc", scope: !302, file: !302, line: 296, type: !350, flags: DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{!65, !113, !116, !65, !346}
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !353, file: !296, line: 155)
!353 = !DISubprogram(name: "mbsinit", scope: !302, file: !302, line: 292, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{!18, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !359, file: !296, line: 156)
!359 = !DISubprogram(name: "mbsrtowcs", scope: !302, file: !302, line: 337, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!360 = !DISubroutineType(types: !361)
!361 = !{!65, !113, !362, !65, !346}
!362 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !365, file: !296, line: 157)
!365 = !DISubprogram(name: "putwc", scope: !302, file: !302, line: 741, type: !320, flags: DIFlagPrototyped, spFlags: 0)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !367, file: !296, line: 158)
!367 = !DISubprogram(name: "putwchar", scope: !302, file: !302, line: 747, type: !368, flags: DIFlagPrototyped, spFlags: 0)
!368 = !DISubroutineType(types: !369)
!369 = !{!298, !115}
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !371, file: !296, line: 160)
!371 = !DISubprogram(name: "swprintf", scope: !302, file: !302, line: 590, type: !372, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DISubroutineType(types: !373)
!373 = !{!18, !113, !65, !161, null}
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !375, file: !296, line: 162)
!375 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !302, file: !302, line: 647, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{!18, !161, !161, null}
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !379, file: !296, line: 163)
!379 = !DISubprogram(name: "ungetwc", scope: !302, file: !302, line: 770, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DISubroutineType(types: !381)
!381 = !{!298, !298, !309}
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !383, file: !296, line: 164)
!383 = !DISubprogram(name: "vfwprintf", scope: !302, file: !302, line: 598, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DISubroutineType(types: !385)
!385 = !{!18, !317, !161, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !5, size: 192, flags: DIFlagTypePassByValue, elements: !388, identifier: "_ZTS13__va_list_tag")
!388 = !{!389, !390, !391, !392}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !387, file: !5, baseType: !139, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !387, file: !5, baseType: !139, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !387, file: !5, baseType: !62, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !387, file: !5, baseType: !62, size: 64, offset: 128)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !394, file: !296, line: 166)
!394 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !302, file: !302, line: 693, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !396, file: !296, line: 169)
!396 = !DISubprogram(name: "vswprintf", scope: !302, file: !302, line: 611, type: !397, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DISubroutineType(types: !398)
!398 = !{!18, !113, !65, !161, !386}
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !400, file: !296, line: 172)
!400 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !302, file: !302, line: 700, type: !401, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{!18, !161, !161, !386}
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !404, file: !296, line: 174)
!404 = !DISubprogram(name: "vwprintf", scope: !302, file: !302, line: 606, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DISubroutineType(types: !406)
!406 = !{!18, !161, !386}
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !408, file: !296, line: 176)
!408 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !302, file: !302, line: 697, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !410, file: !296, line: 178)
!410 = !DISubprogram(name: "wcrtomb", scope: !302, file: !302, line: 301, type: !411, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!65, !160, !115, !346}
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !414, file: !296, line: 179)
!414 = !DISubprogram(name: "wcscat", scope: !302, file: !302, line: 97, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{!114, !113, !161}
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !418, file: !296, line: 180)
!418 = !DISubprogram(name: "wcscmp", scope: !302, file: !302, line: 106, type: !419, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DISubroutineType(types: !420)
!420 = !{!18, !162, !162}
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !422, file: !296, line: 181)
!422 = !DISubprogram(name: "wcscoll", scope: !302, file: !302, line: 131, type: !419, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !424, file: !296, line: 182)
!424 = !DISubprogram(name: "wcscpy", scope: !302, file: !302, line: 87, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !426, file: !296, line: 183)
!426 = !DISubprogram(name: "wcscspn", scope: !302, file: !302, line: 187, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!65, !162, !162}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !430, file: !296, line: 184)
!430 = !DISubprogram(name: "wcsftime", scope: !302, file: !302, line: 834, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{!65, !113, !65, !161, !433}
!433 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !302, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !438, file: !296, line: 185)
!438 = !DISubprogram(name: "wcslen", scope: !302, file: !302, line: 222, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{!65, !162}
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !442, file: !296, line: 186)
!442 = !DISubprogram(name: "wcsncat", scope: !302, file: !302, line: 101, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!114, !113, !161, !65}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !446, file: !296, line: 187)
!446 = !DISubprogram(name: "wcsncmp", scope: !302, file: !302, line: 109, type: !447, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DISubroutineType(types: !448)
!448 = !{!18, !162, !162, !65}
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !450, file: !296, line: 188)
!450 = !DISubprogram(name: "wcsncpy", scope: !302, file: !302, line: 92, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !452, file: !296, line: 189)
!452 = !DISubprogram(name: "wcsrtombs", scope: !302, file: !302, line: 343, type: !453, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DISubroutineType(types: !454)
!454 = !{!65, !160, !455, !65, !346}
!455 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !458, file: !296, line: 190)
!458 = !DISubprogram(name: "wcsspn", scope: !302, file: !302, line: 191, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !460, file: !296, line: 191)
!460 = !DISubprogram(name: "wcstod", scope: !302, file: !302, line: 377, type: !461, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DISubroutineType(types: !462)
!462 = !{!46, !161, !463}
!463 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !466, file: !296, line: 193)
!466 = !DISubprogram(name: "wcstof", scope: !302, file: !302, line: 382, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{!203, !161, !463}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !470, file: !296, line: 195)
!470 = !DISubprogram(name: "wcstok", scope: !302, file: !302, line: 217, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{!114, !113, !161, !463}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !474, file: !296, line: 196)
!474 = !DISubprogram(name: "wcstol", scope: !302, file: !302, line: 428, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!29, !161, !463, !18}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !478, file: !296, line: 197)
!478 = !DISubprogram(name: "wcstoul", scope: !302, file: !302, line: 433, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!67, !161, !463, !18}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !482, file: !296, line: 198)
!482 = !DISubprogram(name: "wcsxfrm", scope: !302, file: !302, line: 135, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DISubroutineType(types: !484)
!484 = !{!65, !113, !161, !65}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !486, file: !296, line: 199)
!486 = !DISubprogram(name: "wctob", scope: !302, file: !302, line: 288, type: !487, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{!18, !298}
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !490, file: !296, line: 200)
!490 = !DISubprogram(name: "wmemcmp", scope: !302, file: !302, line: 258, type: !447, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !492, file: !296, line: 201)
!492 = !DISubprogram(name: "wmemcpy", scope: !302, file: !302, line: 262, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !494, file: !296, line: 202)
!494 = !DISubprogram(name: "wmemmove", scope: !302, file: !302, line: 267, type: !495, flags: DIFlagPrototyped, spFlags: 0)
!495 = !DISubroutineType(types: !496)
!496 = !{!114, !114, !162, !65}
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !498, file: !296, line: 203)
!498 = !DISubprogram(name: "wmemset", scope: !302, file: !302, line: 271, type: !499, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DISubroutineType(types: !500)
!500 = !{!114, !114, !115, !65}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !502, file: !296, line: 204)
!502 = !DISubprogram(name: "wprintf", scope: !302, file: !302, line: 587, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{!18, !161, null}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !506, file: !296, line: 205)
!506 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !302, file: !302, line: 644, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !508, file: !296, line: 206)
!508 = !DISubprogram(name: "wcschr", scope: !302, file: !302, line: 164, type: !509, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!114, !162, !115}
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !512, file: !296, line: 207)
!512 = !DISubprogram(name: "wcspbrk", scope: !302, file: !302, line: 201, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!114, !162, !162}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !516, file: !296, line: 208)
!516 = !DISubprogram(name: "wcsrchr", scope: !302, file: !302, line: 174, type: !509, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !518, file: !296, line: 209)
!518 = !DISubprogram(name: "wcsstr", scope: !302, file: !302, line: 212, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !520, file: !296, line: 210)
!520 = !DISubprogram(name: "wmemchr", scope: !302, file: !302, line: 253, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!114, !162, !115, !65}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !524, file: !296, line: 251)
!524 = !DISubprogram(name: "wcstold", scope: !302, file: !302, line: 384, type: !525, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DISubroutineType(types: !526)
!526 = !{!208, !161, !463}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !528, file: !296, line: 260)
!528 = !DISubprogram(name: "wcstoll", scope: !302, file: !302, line: 441, type: !529, flags: DIFlagPrototyped, spFlags: 0)
!529 = !DISubroutineType(types: !530)
!530 = !{!174, !161, !463, !18}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !532, file: !296, line: 261)
!532 = !DISubprogram(name: "wcstoull", scope: !302, file: !302, line: 448, type: !533, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DISubroutineType(types: !534)
!534 = !{!198, !161, !463, !18}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !524, file: !296, line: 267)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !528, file: !296, line: 268)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !532, file: !296, line: 269)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !466, file: !296, line: 283)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !394, file: !296, line: 286)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !400, file: !296, line: 289)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !408, file: !296, line: 292)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !524, file: !296, line: 296)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !528, file: !296, line: 297)
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !532, file: !296, line: 298)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !546, file: !549, line: 47)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !547, line: 224, baseType: !548)
!547 = !DIFile(filename: "vcpkg_ubuntu-20.04_llvm-11_amd64/installed/x64-linux-rel/tools/llvm/lib/clang/11.0.1/include/stdint.h", directory: "/home/zyl/btfinaltest-llvm11_debug")
!548 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!549 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdint", directory: "")
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !551, file: !549, line: 48)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !547, line: 205, baseType: !552)
!552 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !554, file: !549, line: 49)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !547, line: 167, baseType: !18)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !556, file: !549, line: 50)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !547, line: 96, baseType: !29)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !558, file: !549, line: 52)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !547, line: 234, baseType: !546)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !560, file: !549, line: 53)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !547, line: 217, baseType: !551)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !562, file: !549, line: 54)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !547, line: 186, baseType: !554)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !564, file: !549, line: 55)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !547, line: 112, baseType: !556)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !566, file: !549, line: 57)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !547, line: 232, baseType: !546)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !568, file: !549, line: 58)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !547, line: 215, baseType: !551)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !570, file: !549, line: 59)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !547, line: 184, baseType: !554)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !572, file: !549, line: 60)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !547, line: 110, baseType: !556)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !574, file: !549, line: 62)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !547, line: 262, baseType: !29)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !576, file: !549, line: 63)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !547, line: 249, baseType: !29)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !578, file: !549, line: 65)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !547, line: 226, baseType: !579)
!579 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !581, file: !549, line: 66)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !547, line: 207, baseType: !582)
!582 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !584, file: !549, line: 67)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !547, line: 172, baseType: !139)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !586, file: !549, line: 68)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !547, line: 98, baseType: !67)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !588, file: !549, line: 70)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !547, line: 235, baseType: !578)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !590, file: !549, line: 71)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !547, line: 218, baseType: !581)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !592, file: !549, line: 72)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !547, line: 187, baseType: !584)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !594, file: !549, line: 73)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !547, line: 113, baseType: !586)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !596, file: !549, line: 75)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !547, line: 233, baseType: !578)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !598, file: !549, line: 76)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !547, line: 216, baseType: !581)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !600, file: !549, line: 77)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !547, line: 185, baseType: !584)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !602, file: !549, line: 78)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !547, line: 111, baseType: !586)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !604, file: !549, line: 80)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !547, line: 263, baseType: !67)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !606, file: !549, line: 81)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !547, line: 256, baseType: !67)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !608, file: !609, line: 44)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !11, file: !248, line: 258, baseType: !67)
!609 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ext/new_allocator.h", directory: "")
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !611, file: !609, line: 45)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !11, file: !248, line: 259, baseType: !29)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !613, file: !615, line: 53)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !614, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!614 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!615 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/clocale", directory: "")
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !617, file: !615, line: 54)
!617 = !DISubprogram(name: "setlocale", scope: !614, file: !614, line: 122, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DISubroutineType(types: !619)
!619 = !{!92, !18, !47}
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !621, file: !615, line: 55)
!621 = !DISubprogram(name: "localeconv", scope: !614, file: !614, line: 125, type: !622, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DISubroutineType(types: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !626, file: !628, line: 64)
!626 = !DISubprogram(name: "isalnum", scope: !627, file: !627, line: 108, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!628 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cctype", directory: "")
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !630, file: !628, line: 65)
!630 = !DISubprogram(name: "isalpha", scope: !627, file: !627, line: 109, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !632, file: !628, line: 66)
!632 = !DISubprogram(name: "iscntrl", scope: !627, file: !627, line: 110, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !634, file: !628, line: 67)
!634 = !DISubprogram(name: "isdigit", scope: !627, file: !627, line: 111, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !636, file: !628, line: 68)
!636 = !DISubprogram(name: "isgraph", scope: !627, file: !627, line: 113, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !638, file: !628, line: 69)
!638 = !DISubprogram(name: "islower", scope: !627, file: !627, line: 112, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !640, file: !628, line: 70)
!640 = !DISubprogram(name: "isprint", scope: !627, file: !627, line: 114, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !642, file: !628, line: 71)
!642 = !DISubprogram(name: "ispunct", scope: !627, file: !627, line: 115, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !644, file: !628, line: 72)
!644 = !DISubprogram(name: "isspace", scope: !627, file: !627, line: 116, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !646, file: !628, line: 73)
!646 = !DISubprogram(name: "isupper", scope: !627, file: !627, line: 117, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !648, file: !628, line: 74)
!648 = !DISubprogram(name: "isxdigit", scope: !627, file: !627, line: 118, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !650, file: !628, line: 75)
!650 = !DISubprogram(name: "tolower", scope: !627, file: !627, line: 122, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !652, file: !628, line: 76)
!652 = !DISubprogram(name: "toupper", scope: !627, file: !627, line: 125, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !654, file: !628, line: 87)
!654 = !DISubprogram(name: "isblank", scope: !627, file: !627, line: 130, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !656, file: !658, line: 98)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !657, line: 7, baseType: !312)
!657 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!658 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdio", directory: "")
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !660, file: !658, line: 99)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !661, line: 84, baseType: !662)
!661 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !663, line: 14, baseType: !664)
!663 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "")
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !663, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !666, file: !658, line: 101)
!666 = !DISubprogram(name: "clearerr", scope: !661, file: !661, line: 757, type: !667, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !671, file: !658, line: 102)
!671 = !DISubprogram(name: "fclose", scope: !661, file: !661, line: 213, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!672 = !DISubroutineType(types: !673)
!673 = !{!18, !669}
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !675, file: !658, line: 103)
!675 = !DISubprogram(name: "feof", scope: !661, file: !661, line: 759, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !677, file: !658, line: 104)
!677 = !DISubprogram(name: "ferror", scope: !661, file: !661, line: 761, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !679, file: !658, line: 105)
!679 = !DISubprogram(name: "fflush", scope: !661, file: !661, line: 218, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !681, file: !658, line: 106)
!681 = !DISubprogram(name: "fgetc", scope: !661, file: !661, line: 485, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !683, file: !658, line: 107)
!683 = !DISubprogram(name: "fgetpos", scope: !661, file: !661, line: 731, type: !684, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DISubroutineType(types: !685)
!685 = !{!18, !686, !687}
!686 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !669)
!687 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !690, file: !658, line: 108)
!690 = !DISubprogram(name: "fgets", scope: !661, file: !661, line: 564, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{!92, !160, !18, !686}
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !694, file: !658, line: 109)
!694 = !DISubprogram(name: "fopen", scope: !661, file: !661, line: 246, type: !695, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!669, !116, !116}
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !698, file: !658, line: 110)
!698 = !DISubprogram(name: "fprintf", scope: !661, file: !661, line: 326, type: !699, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DISubroutineType(types: !700)
!700 = !{!18, !686, !116, null}
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !702, file: !658, line: 111)
!702 = !DISubprogram(name: "fputc", scope: !661, file: !661, line: 521, type: !703, flags: DIFlagPrototyped, spFlags: 0)
!703 = !DISubroutineType(types: !704)
!704 = !{!18, !18, !669}
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !706, file: !658, line: 112)
!706 = !DISubprogram(name: "fputs", scope: !661, file: !661, line: 626, type: !707, flags: DIFlagPrototyped, spFlags: 0)
!707 = !DISubroutineType(types: !708)
!708 = !{!18, !116, !686}
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !710, file: !658, line: 113)
!710 = !DISubprogram(name: "fread", scope: !661, file: !661, line: 646, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!65, !713, !65, !65, !686}
!713 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !715, file: !658, line: 114)
!715 = !DISubprogram(name: "freopen", scope: !661, file: !661, line: 252, type: !716, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DISubroutineType(types: !717)
!717 = !{!669, !116, !116, !686}
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !719, file: !658, line: 115)
!719 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !661, file: !661, line: 407, type: !699, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !721, file: !658, line: 116)
!721 = !DISubprogram(name: "fseek", scope: !661, file: !661, line: 684, type: !722, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DISubroutineType(types: !723)
!723 = !{!18, !669, !29, !18}
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !725, file: !658, line: 117)
!725 = !DISubprogram(name: "fsetpos", scope: !661, file: !661, line: 736, type: !726, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DISubroutineType(types: !727)
!727 = !{!18, !669, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !731, file: !658, line: 118)
!731 = !DISubprogram(name: "ftell", scope: !661, file: !661, line: 689, type: !732, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DISubroutineType(types: !733)
!733 = !{!29, !669}
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !735, file: !658, line: 119)
!735 = !DISubprogram(name: "fwrite", scope: !661, file: !661, line: 652, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DISubroutineType(types: !737)
!737 = !{!65, !738, !65, !65, !686}
!738 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !740, file: !658, line: 120)
!740 = !DISubprogram(name: "getc", scope: !661, file: !661, line: 486, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !742, file: !658, line: 121)
!742 = !DISubprogram(name: "getchar", scope: !661, file: !661, line: 492, type: !129, flags: DIFlagPrototyped, spFlags: 0)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !744, file: !658, line: 124)
!744 = !DISubprogram(name: "gets", scope: !661, file: !661, line: 577, type: !745, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DISubroutineType(types: !746)
!746 = !{!92, !92}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !748, file: !658, line: 126)
!748 = !DISubprogram(name: "perror", scope: !661, file: !661, line: 775, type: !749, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !47}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !752, file: !658, line: 127)
!752 = !DISubprogram(name: "printf", scope: !661, file: !661, line: 332, type: !753, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{!18, !116, null}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !756, file: !658, line: 128)
!756 = !DISubprogram(name: "putc", scope: !661, file: !661, line: 522, type: !703, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !758, file: !658, line: 129)
!758 = !DISubprogram(name: "putchar", scope: !661, file: !661, line: 528, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !760, file: !658, line: 130)
!760 = !DISubprogram(name: "puts", scope: !661, file: !661, line: 632, type: !52, flags: DIFlagPrototyped, spFlags: 0)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !762, file: !658, line: 131)
!762 = !DISubprogram(name: "remove", scope: !661, file: !661, line: 146, type: !52, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !764, file: !658, line: 132)
!764 = !DISubprogram(name: "rename", scope: !661, file: !661, line: 148, type: !765, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DISubroutineType(types: !766)
!766 = !{!18, !47, !47}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !768, file: !658, line: 133)
!768 = !DISubprogram(name: "rewind", scope: !661, file: !661, line: 694, type: !667, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !770, file: !658, line: 134)
!770 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !661, file: !661, line: 410, type: !753, flags: DIFlagPrototyped, spFlags: 0)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !772, file: !658, line: 135)
!772 = !DISubprogram(name: "setbuf", scope: !661, file: !661, line: 304, type: !773, flags: DIFlagPrototyped, spFlags: 0)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !686, !160}
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !776, file: !658, line: 136)
!776 = !DISubprogram(name: "setvbuf", scope: !661, file: !661, line: 308, type: !777, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DISubroutineType(types: !778)
!778 = !{!18, !686, !160, !18, !65}
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !780, file: !658, line: 137)
!780 = !DISubprogram(name: "sprintf", scope: !661, file: !661, line: 334, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DISubroutineType(types: !782)
!782 = !{!18, !160, !116, null}
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !784, file: !658, line: 138)
!784 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !661, file: !661, line: 412, type: !785, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DISubroutineType(types: !786)
!786 = !{!18, !116, !116, null}
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !788, file: !658, line: 139)
!788 = !DISubprogram(name: "tmpfile", scope: !661, file: !661, line: 173, type: !789, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DISubroutineType(types: !790)
!790 = !{!669}
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !792, file: !658, line: 141)
!792 = !DISubprogram(name: "tmpnam", scope: !661, file: !661, line: 187, type: !745, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !794, file: !658, line: 143)
!794 = !DISubprogram(name: "ungetc", scope: !661, file: !661, line: 639, type: !703, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !796, file: !658, line: 144)
!796 = !DISubprogram(name: "vfprintf", scope: !661, file: !661, line: 341, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!18, !686, !116, !386}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !800, file: !658, line: 145)
!800 = !DISubprogram(name: "vprintf", scope: !661, file: !661, line: 347, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!18, !116, !386}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !804, file: !658, line: 146)
!804 = !DISubprogram(name: "vsprintf", scope: !661, file: !661, line: 349, type: !805, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{!18, !160, !116, !386}
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !808, file: !658, line: 175)
!808 = !DISubprogram(name: "snprintf", scope: !661, file: !661, line: 354, type: !809, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubroutineType(types: !810)
!810 = !{!18, !160, !65, !116, null}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !812, file: !658, line: 176)
!812 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !661, file: !661, line: 451, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !814, file: !658, line: 177)
!814 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !661, file: !661, line: 456, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !816, file: !658, line: 178)
!816 = !DISubprogram(name: "vsnprintf", scope: !661, file: !661, line: 358, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!817 = !DISubroutineType(types: !818)
!818 = !{!18, !160, !65, !116, !386}
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !820, file: !658, line: 179)
!820 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !661, file: !661, line: 459, type: !821, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DISubroutineType(types: !822)
!822 = !{!18, !116, !116, !386}
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !808, file: !658, line: 185)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !812, file: !658, line: 186)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !814, file: !658, line: 187)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !816, file: !658, line: 188)
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !820, file: !658, line: 189)
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !829, file: !833, line: 83)
!829 = !DISubprogram(name: "acos", scope: !830, file: !830, line: 53, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!830 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "")
!831 = !DISubroutineType(types: !832)
!832 = !{!46, !46}
!833 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cmath", directory: "")
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !835, file: !833, line: 102)
!835 = !DISubprogram(name: "asin", scope: !830, file: !830, line: 55, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !837, file: !833, line: 121)
!837 = !DISubprogram(name: "atan", scope: !830, file: !830, line: 57, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !839, file: !833, line: 140)
!839 = !DISubprogram(name: "atan2", scope: !830, file: !830, line: 59, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DISubroutineType(types: !841)
!841 = !{!46, !46, !46}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !843, file: !833, line: 161)
!843 = !DISubprogram(name: "ceil", scope: !830, file: !830, line: 159, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !845, file: !833, line: 180)
!845 = !DISubprogram(name: "cos", scope: !830, file: !830, line: 62, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !847, file: !833, line: 199)
!847 = !DISubprogram(name: "cosh", scope: !830, file: !830, line: 71, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !849, file: !833, line: 218)
!849 = !DISubprogram(name: "exp", scope: !830, file: !830, line: 95, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !851, file: !833, line: 237)
!851 = !DISubprogram(name: "fabs", scope: !830, file: !830, line: 162, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !853, file: !833, line: 256)
!853 = !DISubprogram(name: "floor", scope: !830, file: !830, line: 165, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !855, file: !833, line: 275)
!855 = !DISubprogram(name: "fmod", scope: !830, file: !830, line: 168, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !857, file: !833, line: 296)
!857 = !DISubprogram(name: "frexp", scope: !830, file: !830, line: 98, type: !858, flags: DIFlagPrototyped, spFlags: 0)
!858 = !DISubroutineType(types: !859)
!859 = !{!46, !46, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !862, file: !833, line: 315)
!862 = !DISubprogram(name: "ldexp", scope: !830, file: !830, line: 101, type: !863, flags: DIFlagPrototyped, spFlags: 0)
!863 = !DISubroutineType(types: !864)
!864 = !{!46, !46, !18}
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !866, file: !833, line: 334)
!866 = !DISubprogram(name: "log", scope: !830, file: !830, line: 104, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !868, file: !833, line: 353)
!868 = !DISubprogram(name: "log10", scope: !830, file: !830, line: 107, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !870, file: !833, line: 372)
!870 = !DISubprogram(name: "modf", scope: !830, file: !830, line: 110, type: !871, flags: DIFlagPrototyped, spFlags: 0)
!871 = !DISubroutineType(types: !872)
!872 = !{!46, !46, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !875, file: !833, line: 384)
!875 = !DISubprogram(name: "pow", scope: !830, file: !830, line: 140, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !877, file: !833, line: 421)
!877 = !DISubprogram(name: "sin", scope: !830, file: !830, line: 64, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !879, file: !833, line: 440)
!879 = !DISubprogram(name: "sinh", scope: !830, file: !830, line: 73, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !881, file: !833, line: 459)
!881 = !DISubprogram(name: "sqrt", scope: !830, file: !830, line: 143, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !883, file: !833, line: 478)
!883 = !DISubprogram(name: "tan", scope: !830, file: !830, line: 66, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !885, file: !833, line: 497)
!885 = !DISubprogram(name: "tanh", scope: !830, file: !830, line: 75, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !887, file: !833, line: 1065)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !888, line: 150, baseType: !46)
!888 = !DIFile(filename: "/usr/include/math.h", directory: "")
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !890, file: !833, line: 1066)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !888, line: 149, baseType: !203)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !892, file: !833, line: 1069)
!892 = !DISubprogram(name: "acosh", scope: !830, file: !830, line: 85, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !894, file: !833, line: 1070)
!894 = !DISubprogram(name: "acoshf", scope: !830, file: !830, line: 85, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DISubroutineType(types: !896)
!896 = !{!203, !203}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !898, file: !833, line: 1071)
!898 = !DISubprogram(name: "acoshl", scope: !830, file: !830, line: 85, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DISubroutineType(types: !900)
!900 = !{!208, !208}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !902, file: !833, line: 1073)
!902 = !DISubprogram(name: "asinh", scope: !830, file: !830, line: 87, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !904, file: !833, line: 1074)
!904 = !DISubprogram(name: "asinhf", scope: !830, file: !830, line: 87, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !906, file: !833, line: 1075)
!906 = !DISubprogram(name: "asinhl", scope: !830, file: !830, line: 87, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !908, file: !833, line: 1077)
!908 = !DISubprogram(name: "atanh", scope: !830, file: !830, line: 89, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !910, file: !833, line: 1078)
!910 = !DISubprogram(name: "atanhf", scope: !830, file: !830, line: 89, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !912, file: !833, line: 1079)
!912 = !DISubprogram(name: "atanhl", scope: !830, file: !830, line: 89, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !914, file: !833, line: 1081)
!914 = !DISubprogram(name: "cbrt", scope: !830, file: !830, line: 152, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !916, file: !833, line: 1082)
!916 = !DISubprogram(name: "cbrtf", scope: !830, file: !830, line: 152, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !918, file: !833, line: 1083)
!918 = !DISubprogram(name: "cbrtl", scope: !830, file: !830, line: 152, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !920, file: !833, line: 1085)
!920 = !DISubprogram(name: "copysign", scope: !830, file: !830, line: 196, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !922, file: !833, line: 1086)
!922 = !DISubprogram(name: "copysignf", scope: !830, file: !830, line: 196, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!923 = !DISubroutineType(types: !924)
!924 = !{!203, !203, !203}
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !926, file: !833, line: 1087)
!926 = !DISubprogram(name: "copysignl", scope: !830, file: !830, line: 196, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!927 = !DISubroutineType(types: !928)
!928 = !{!208, !208, !208}
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !930, file: !833, line: 1089)
!930 = !DISubprogram(name: "erf", scope: !830, file: !830, line: 228, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !932, file: !833, line: 1090)
!932 = !DISubprogram(name: "erff", scope: !830, file: !830, line: 228, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !934, file: !833, line: 1091)
!934 = !DISubprogram(name: "erfl", scope: !830, file: !830, line: 228, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !936, file: !833, line: 1093)
!936 = !DISubprogram(name: "erfc", scope: !830, file: !830, line: 229, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !938, file: !833, line: 1094)
!938 = !DISubprogram(name: "erfcf", scope: !830, file: !830, line: 229, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !940, file: !833, line: 1095)
!940 = !DISubprogram(name: "erfcl", scope: !830, file: !830, line: 229, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !942, file: !833, line: 1097)
!942 = !DISubprogram(name: "exp2", scope: !830, file: !830, line: 130, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !944, file: !833, line: 1098)
!944 = !DISubprogram(name: "exp2f", scope: !830, file: !830, line: 130, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !946, file: !833, line: 1099)
!946 = !DISubprogram(name: "exp2l", scope: !830, file: !830, line: 130, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !948, file: !833, line: 1101)
!948 = !DISubprogram(name: "expm1", scope: !830, file: !830, line: 119, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !950, file: !833, line: 1102)
!950 = !DISubprogram(name: "expm1f", scope: !830, file: !830, line: 119, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !952, file: !833, line: 1103)
!952 = !DISubprogram(name: "expm1l", scope: !830, file: !830, line: 119, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !954, file: !833, line: 1105)
!954 = !DISubprogram(name: "fdim", scope: !830, file: !830, line: 326, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !956, file: !833, line: 1106)
!956 = !DISubprogram(name: "fdimf", scope: !830, file: !830, line: 326, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !958, file: !833, line: 1107)
!958 = !DISubprogram(name: "fdiml", scope: !830, file: !830, line: 326, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !960, file: !833, line: 1109)
!960 = !DISubprogram(name: "fma", scope: !830, file: !830, line: 335, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!961 = !DISubroutineType(types: !962)
!962 = !{!46, !46, !46, !46}
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !964, file: !833, line: 1110)
!964 = !DISubprogram(name: "fmaf", scope: !830, file: !830, line: 335, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!965 = !DISubroutineType(types: !966)
!966 = !{!203, !203, !203, !203}
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !968, file: !833, line: 1111)
!968 = !DISubprogram(name: "fmal", scope: !830, file: !830, line: 335, type: !969, flags: DIFlagPrototyped, spFlags: 0)
!969 = !DISubroutineType(types: !970)
!970 = !{!208, !208, !208, !208}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !972, file: !833, line: 1113)
!972 = !DISubprogram(name: "fmax", scope: !830, file: !830, line: 329, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !974, file: !833, line: 1114)
!974 = !DISubprogram(name: "fmaxf", scope: !830, file: !830, line: 329, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !976, file: !833, line: 1115)
!976 = !DISubprogram(name: "fmaxl", scope: !830, file: !830, line: 329, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !978, file: !833, line: 1117)
!978 = !DISubprogram(name: "fmin", scope: !830, file: !830, line: 332, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !980, file: !833, line: 1118)
!980 = !DISubprogram(name: "fminf", scope: !830, file: !830, line: 332, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !982, file: !833, line: 1119)
!982 = !DISubprogram(name: "fminl", scope: !830, file: !830, line: 332, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !984, file: !833, line: 1121)
!984 = !DISubprogram(name: "hypot", scope: !830, file: !830, line: 147, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !986, file: !833, line: 1122)
!986 = !DISubprogram(name: "hypotf", scope: !830, file: !830, line: 147, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !988, file: !833, line: 1123)
!988 = !DISubprogram(name: "hypotl", scope: !830, file: !830, line: 147, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !990, file: !833, line: 1125)
!990 = !DISubprogram(name: "ilogb", scope: !830, file: !830, line: 280, type: !991, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DISubroutineType(types: !992)
!992 = !{!18, !46}
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !994, file: !833, line: 1126)
!994 = !DISubprogram(name: "ilogbf", scope: !830, file: !830, line: 280, type: !995, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DISubroutineType(types: !996)
!996 = !{!18, !203}
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !998, file: !833, line: 1127)
!998 = !DISubprogram(name: "ilogbl", scope: !830, file: !830, line: 280, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!18, !208}
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1002, file: !833, line: 1129)
!1002 = !DISubprogram(name: "lgamma", scope: !830, file: !830, line: 230, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1004, file: !833, line: 1130)
!1004 = !DISubprogram(name: "lgammaf", scope: !830, file: !830, line: 230, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1006, file: !833, line: 1131)
!1006 = !DISubprogram(name: "lgammal", scope: !830, file: !830, line: 230, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1008, file: !833, line: 1134)
!1008 = !DISubprogram(name: "llrint", scope: !830, file: !830, line: 316, type: !1009, flags: DIFlagPrototyped, spFlags: 0)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!174, !46}
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1012, file: !833, line: 1135)
!1012 = !DISubprogram(name: "llrintf", scope: !830, file: !830, line: 316, type: !1013, flags: DIFlagPrototyped, spFlags: 0)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!174, !203}
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1016, file: !833, line: 1136)
!1016 = !DISubprogram(name: "llrintl", scope: !830, file: !830, line: 316, type: !1017, flags: DIFlagPrototyped, spFlags: 0)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!174, !208}
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1020, file: !833, line: 1138)
!1020 = !DISubprogram(name: "llround", scope: !830, file: !830, line: 322, type: !1009, flags: DIFlagPrototyped, spFlags: 0)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1022, file: !833, line: 1139)
!1022 = !DISubprogram(name: "llroundf", scope: !830, file: !830, line: 322, type: !1013, flags: DIFlagPrototyped, spFlags: 0)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1024, file: !833, line: 1140)
!1024 = !DISubprogram(name: "llroundl", scope: !830, file: !830, line: 322, type: !1017, flags: DIFlagPrototyped, spFlags: 0)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1026, file: !833, line: 1143)
!1026 = !DISubprogram(name: "log1p", scope: !830, file: !830, line: 122, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1028, file: !833, line: 1144)
!1028 = !DISubprogram(name: "log1pf", scope: !830, file: !830, line: 122, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1030, file: !833, line: 1145)
!1030 = !DISubprogram(name: "log1pl", scope: !830, file: !830, line: 122, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1032, file: !833, line: 1147)
!1032 = !DISubprogram(name: "log2", scope: !830, file: !830, line: 133, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1034, file: !833, line: 1148)
!1034 = !DISubprogram(name: "log2f", scope: !830, file: !830, line: 133, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1036, file: !833, line: 1149)
!1036 = !DISubprogram(name: "log2l", scope: !830, file: !830, line: 133, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1038, file: !833, line: 1151)
!1038 = !DISubprogram(name: "logb", scope: !830, file: !830, line: 125, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1040, file: !833, line: 1152)
!1040 = !DISubprogram(name: "logbf", scope: !830, file: !830, line: 125, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1042, file: !833, line: 1153)
!1042 = !DISubprogram(name: "logbl", scope: !830, file: !830, line: 125, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1044, file: !833, line: 1155)
!1044 = !DISubprogram(name: "lrint", scope: !830, file: !830, line: 314, type: !1045, flags: DIFlagPrototyped, spFlags: 0)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!29, !46}
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1048, file: !833, line: 1156)
!1048 = !DISubprogram(name: "lrintf", scope: !830, file: !830, line: 314, type: !1049, flags: DIFlagPrototyped, spFlags: 0)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!29, !203}
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1052, file: !833, line: 1157)
!1052 = !DISubprogram(name: "lrintl", scope: !830, file: !830, line: 314, type: !1053, flags: DIFlagPrototyped, spFlags: 0)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!29, !208}
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1056, file: !833, line: 1159)
!1056 = !DISubprogram(name: "lround", scope: !830, file: !830, line: 320, type: !1045, flags: DIFlagPrototyped, spFlags: 0)
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1058, file: !833, line: 1160)
!1058 = !DISubprogram(name: "lroundf", scope: !830, file: !830, line: 320, type: !1049, flags: DIFlagPrototyped, spFlags: 0)
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1060, file: !833, line: 1161)
!1060 = !DISubprogram(name: "lroundl", scope: !830, file: !830, line: 320, type: !1053, flags: DIFlagPrototyped, spFlags: 0)
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1062, file: !833, line: 1163)
!1062 = !DISubprogram(name: "nan", scope: !830, file: !830, line: 201, type: !44, flags: DIFlagPrototyped, spFlags: 0)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1064, file: !833, line: 1164)
!1064 = !DISubprogram(name: "nanf", scope: !830, file: !830, line: 201, type: !1065, flags: DIFlagPrototyped, spFlags: 0)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!203, !47}
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1068, file: !833, line: 1165)
!1068 = !DISubprogram(name: "nanl", scope: !830, file: !830, line: 201, type: !1069, flags: DIFlagPrototyped, spFlags: 0)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!208, !47}
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1072, file: !833, line: 1167)
!1072 = !DISubprogram(name: "nearbyint", scope: !830, file: !830, line: 294, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1074, file: !833, line: 1168)
!1074 = !DISubprogram(name: "nearbyintf", scope: !830, file: !830, line: 294, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1076, file: !833, line: 1169)
!1076 = !DISubprogram(name: "nearbyintl", scope: !830, file: !830, line: 294, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1078, file: !833, line: 1171)
!1078 = !DISubprogram(name: "nextafter", scope: !830, file: !830, line: 259, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1080, file: !833, line: 1172)
!1080 = !DISubprogram(name: "nextafterf", scope: !830, file: !830, line: 259, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1082, file: !833, line: 1173)
!1082 = !DISubprogram(name: "nextafterl", scope: !830, file: !830, line: 259, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1084, file: !833, line: 1175)
!1084 = !DISubprogram(name: "nexttoward", scope: !830, file: !830, line: 261, type: !1085, flags: DIFlagPrototyped, spFlags: 0)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!46, !46, !208}
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1088, file: !833, line: 1176)
!1088 = !DISubprogram(name: "nexttowardf", scope: !830, file: !830, line: 261, type: !1089, flags: DIFlagPrototyped, spFlags: 0)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!203, !203, !208}
!1091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1092, file: !833, line: 1177)
!1092 = !DISubprogram(name: "nexttowardl", scope: !830, file: !830, line: 261, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1094, file: !833, line: 1179)
!1094 = !DISubprogram(name: "remainder", scope: !830, file: !830, line: 272, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1096, file: !833, line: 1180)
!1096 = !DISubprogram(name: "remainderf", scope: !830, file: !830, line: 272, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1098, file: !833, line: 1181)
!1098 = !DISubprogram(name: "remainderl", scope: !830, file: !830, line: 272, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1100, file: !833, line: 1183)
!1100 = !DISubprogram(name: "remquo", scope: !830, file: !830, line: 307, type: !1101, flags: DIFlagPrototyped, spFlags: 0)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!46, !46, !46, !860}
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1104, file: !833, line: 1184)
!1104 = !DISubprogram(name: "remquof", scope: !830, file: !830, line: 307, type: !1105, flags: DIFlagPrototyped, spFlags: 0)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!203, !203, !203, !860}
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1108, file: !833, line: 1185)
!1108 = !DISubprogram(name: "remquol", scope: !830, file: !830, line: 307, type: !1109, flags: DIFlagPrototyped, spFlags: 0)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!208, !208, !208, !860}
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1112, file: !833, line: 1187)
!1112 = !DISubprogram(name: "rint", scope: !830, file: !830, line: 256, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1114, file: !833, line: 1188)
!1114 = !DISubprogram(name: "rintf", scope: !830, file: !830, line: 256, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1116, file: !833, line: 1189)
!1116 = !DISubprogram(name: "rintl", scope: !830, file: !830, line: 256, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1118, file: !833, line: 1191)
!1118 = !DISubprogram(name: "round", scope: !830, file: !830, line: 298, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1120, file: !833, line: 1192)
!1120 = !DISubprogram(name: "roundf", scope: !830, file: !830, line: 298, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1122, file: !833, line: 1193)
!1122 = !DISubprogram(name: "roundl", scope: !830, file: !830, line: 298, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1124, file: !833, line: 1195)
!1124 = !DISubprogram(name: "scalbln", scope: !830, file: !830, line: 290, type: !1125, flags: DIFlagPrototyped, spFlags: 0)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!46, !46, !29}
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1128, file: !833, line: 1196)
!1128 = !DISubprogram(name: "scalblnf", scope: !830, file: !830, line: 290, type: !1129, flags: DIFlagPrototyped, spFlags: 0)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!203, !203, !29}
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1132, file: !833, line: 1197)
!1132 = !DISubprogram(name: "scalblnl", scope: !830, file: !830, line: 290, type: !1133, flags: DIFlagPrototyped, spFlags: 0)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!208, !208, !29}
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1136, file: !833, line: 1199)
!1136 = !DISubprogram(name: "scalbn", scope: !830, file: !830, line: 276, type: !863, flags: DIFlagPrototyped, spFlags: 0)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1138, file: !833, line: 1200)
!1138 = !DISubprogram(name: "scalbnf", scope: !830, file: !830, line: 276, type: !1139, flags: DIFlagPrototyped, spFlags: 0)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!203, !203, !18}
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1142, file: !833, line: 1201)
!1142 = !DISubprogram(name: "scalbnl", scope: !830, file: !830, line: 276, type: !1143, flags: DIFlagPrototyped, spFlags: 0)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!208, !208, !18}
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1146, file: !833, line: 1203)
!1146 = !DISubprogram(name: "tgamma", scope: !830, file: !830, line: 235, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1148, file: !833, line: 1204)
!1148 = !DISubprogram(name: "tgammaf", scope: !830, file: !830, line: 235, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1150, file: !833, line: 1205)
!1150 = !DISubprogram(name: "tgammal", scope: !830, file: !830, line: 235, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1152, file: !833, line: 1207)
!1152 = !DISubprogram(name: "trunc", scope: !830, file: !830, line: 302, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1154, file: !833, line: 1208)
!1154 = !DISubprogram(name: "truncf", scope: !830, file: !830, line: 302, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1156, file: !833, line: 1209)
!1156 = !DISubprogram(name: "truncl", scope: !830, file: !830, line: 302, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1158, file: !1161, line: 58)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1159, line: 94, baseType: !1160)
!1159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "")
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1159, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1161 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/fenv.h", directory: "")
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1163, file: !1161, line: 59)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1159, line: 68, baseType: !582)
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1165, file: !1161, line: 62)
!1165 = !DISubprogram(name: "feclearexcept", scope: !1166, file: !1166, line: 71, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!1166 = !DIFile(filename: "/usr/include/fenv.h", directory: "")
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1168, file: !1161, line: 63)
!1168 = !DISubprogram(name: "fegetexceptflag", scope: !1166, file: !1166, line: 75, type: !1169, flags: DIFlagPrototyped, spFlags: 0)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!18, !1171, !18}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1173, file: !1161, line: 64)
!1173 = !DISubprogram(name: "feraiseexcept", scope: !1166, file: !1166, line: 78, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1175, file: !1161, line: 65)
!1175 = !DISubprogram(name: "fesetexceptflag", scope: !1166, file: !1166, line: 88, type: !1176, flags: DIFlagPrototyped, spFlags: 0)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!18, !1178, !18}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1181, file: !1161, line: 66)
!1181 = !DISubprogram(name: "fetestexcept", scope: !1166, file: !1166, line: 92, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1183, file: !1161, line: 68)
!1183 = !DISubprogram(name: "fegetround", scope: !1166, file: !1166, line: 104, type: !129, flags: DIFlagPrototyped, spFlags: 0)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1185, file: !1161, line: 69)
!1185 = !DISubprogram(name: "fesetround", scope: !1166, file: !1166, line: 107, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1187, file: !1161, line: 71)
!1187 = !DISubprogram(name: "fegetenv", scope: !1166, file: !1166, line: 114, type: !1188, flags: DIFlagPrototyped, spFlags: 0)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!18, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1192, file: !1161, line: 72)
!1192 = !DISubprogram(name: "feholdexcept", scope: !1166, file: !1166, line: 119, type: !1188, flags: DIFlagPrototyped, spFlags: 0)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1194, file: !1161, line: 73)
!1194 = !DISubprogram(name: "fesetenv", scope: !1166, file: !1166, line: 123, type: !1195, flags: DIFlagPrototyped, spFlags: 0)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!18, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1200, file: !1161, line: 74)
!1200 = !DISubprogram(name: "feupdateenv", scope: !1166, file: !1166, line: 128, type: !1195, flags: DIFlagPrototyped, spFlags: 0)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1158, file: !1202, line: 61)
!1202 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cfenv", directory: "")
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1163, file: !1202, line: 62)
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1165, file: !1202, line: 65)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1168, file: !1202, line: 66)
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1173, file: !1202, line: 67)
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1175, file: !1202, line: 68)
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1181, file: !1202, line: 69)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1183, file: !1202, line: 71)
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1185, file: !1202, line: 72)
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1187, file: !1202, line: 74)
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1192, file: !1202, line: 75)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1194, file: !1202, line: 76)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1200, file: !1202, line: 77)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1216, file: !1220, line: 77)
!1216 = !DISubprogram(name: "memchr", scope: !1217, file: !1217, line: 73, type: !1218, flags: DIFlagPrototyped, spFlags: 0)
!1217 = !DIFile(filename: "/usr/include/string.h", directory: "")
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!63, !63, !18, !65}
!1220 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstring", directory: "")
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1222, file: !1220, line: 78)
!1222 = !DISubprogram(name: "memcmp", scope: !1217, file: !1217, line: 64, type: !1223, flags: DIFlagPrototyped, spFlags: 0)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!18, !63, !63, !65}
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1226, file: !1220, line: 79)
!1226 = !DISubprogram(name: "memcpy", scope: !1217, file: !1217, line: 43, type: !1227, flags: DIFlagPrototyped, spFlags: 0)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!62, !713, !738, !65}
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1230, file: !1220, line: 80)
!1230 = !DISubprogram(name: "memmove", scope: !1217, file: !1217, line: 47, type: !1231, flags: DIFlagPrototyped, spFlags: 0)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!62, !62, !63, !65}
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1234, file: !1220, line: 81)
!1234 = !DISubprogram(name: "memset", scope: !1217, file: !1217, line: 61, type: !1235, flags: DIFlagPrototyped, spFlags: 0)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!62, !62, !18, !65}
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1238, file: !1220, line: 82)
!1238 = !DISubprogram(name: "strcat", scope: !1217, file: !1217, line: 130, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!92, !160, !116}
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1242, file: !1220, line: 83)
!1242 = !DISubprogram(name: "strcmp", scope: !1217, file: !1217, line: 137, type: !765, flags: DIFlagPrototyped, spFlags: 0)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1244, file: !1220, line: 84)
!1244 = !DISubprogram(name: "strcoll", scope: !1217, file: !1217, line: 144, type: !765, flags: DIFlagPrototyped, spFlags: 0)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1246, file: !1220, line: 85)
!1246 = !DISubprogram(name: "strcpy", scope: !1217, file: !1217, line: 122, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1248, file: !1220, line: 86)
!1248 = !DISubprogram(name: "strcspn", scope: !1217, file: !1217, line: 273, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!65, !47, !47}
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1252, file: !1220, line: 87)
!1252 = !DISubprogram(name: "strerror", scope: !1217, file: !1217, line: 397, type: !1253, flags: DIFlagPrototyped, spFlags: 0)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!92, !18}
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1256, file: !1220, line: 88)
!1256 = !DISubprogram(name: "strlen", scope: !1217, file: !1217, line: 385, type: !1257, flags: DIFlagPrototyped, spFlags: 0)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!65, !47}
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1260, file: !1220, line: 89)
!1260 = !DISubprogram(name: "strncat", scope: !1217, file: !1217, line: 133, type: !1261, flags: DIFlagPrototyped, spFlags: 0)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!92, !160, !116, !65}
!1263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1264, file: !1220, line: 90)
!1264 = !DISubprogram(name: "strncmp", scope: !1217, file: !1217, line: 140, type: !1265, flags: DIFlagPrototyped, spFlags: 0)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!18, !47, !47, !65}
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1268, file: !1220, line: 91)
!1268 = !DISubprogram(name: "strncpy", scope: !1217, file: !1217, line: 125, type: !1261, flags: DIFlagPrototyped, spFlags: 0)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1270, file: !1220, line: 92)
!1270 = !DISubprogram(name: "strspn", scope: !1217, file: !1217, line: 277, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1272, file: !1220, line: 93)
!1272 = !DISubprogram(name: "strtok", scope: !1217, file: !1217, line: 336, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!1273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1274, file: !1220, line: 94)
!1274 = !DISubprogram(name: "strxfrm", scope: !1217, file: !1217, line: 147, type: !1275, flags: DIFlagPrototyped, spFlags: 0)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!65, !160, !116, !65}
!1277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1278, file: !1220, line: 95)
!1278 = !DISubprogram(name: "strchr", scope: !1217, file: !1217, line: 208, type: !1279, flags: DIFlagPrototyped, spFlags: 0)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!47, !47, !18}
!1281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1282, file: !1220, line: 96)
!1282 = !DISubprogram(name: "strpbrk", scope: !1217, file: !1217, line: 285, type: !1283, flags: DIFlagPrototyped, spFlags: 0)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!47, !47, !47}
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1286, file: !1220, line: 97)
!1286 = !DISubprogram(name: "strrchr", scope: !1217, file: !1217, line: 235, type: !1279, flags: DIFlagPrototyped, spFlags: 0)
!1287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1288, file: !1220, line: 98)
!1288 = !DISubprogram(name: "strstr", scope: !1217, file: !1217, line: 312, type: !1283, flags: DIFlagPrototyped, spFlags: 0)
!1289 = !{!"base.helper.semantics"}
!1290 = !{!1291, !1291, i64 0}
!1291 = !{!"omnipotent char", !1292, i64 0}
!1292 = !{!"Simple C++ TBAA"}
!1293 = !{!1294, !1294, i64 0}
!1294 = !{!"long", !1291, i64 0}
!1295 = !{!1296, !1298}
!1296 = distinct !{!1296, !1297, !"__mcsema_detach_call_value: %state"}
!1297 = distinct !{!1297, !"__mcsema_detach_call_value"}
!1298 = distinct !{!1298, !1297, !"__mcsema_detach_call_value: %memory"}
!1299 = !{!1296}
!1300 = !{!1298}
!1301 = !{!1302, !1291, i64 2065}
!1302 = !{!"_ZTS5State", !1291, i64 16, !1303, i64 2064, !1291, i64 2080, !1304, i64 2088, !1306, i64 2112, !1308, i64 2208, !1309, i64 2480, !1310, i64 2608, !1311, i64 2736, !1291, i64 2760, !1291, i64 2768, !1312, i64 3280}
!1303 = !{!"_ZTS10ArithFlags", !1291, i64 0, !1291, i64 1, !1291, i64 2, !1291, i64 3, !1291, i64 4, !1291, i64 5, !1291, i64 6, !1291, i64 7, !1291, i64 8, !1291, i64 9, !1291, i64 10, !1291, i64 11, !1291, i64 12, !1291, i64 13, !1291, i64 14, !1291, i64 15}
!1304 = !{!"_ZTS8Segments", !1305, i64 0, !1291, i64 2, !1305, i64 4, !1291, i64 6, !1305, i64 8, !1291, i64 10, !1305, i64 12, !1291, i64 14, !1305, i64 16, !1291, i64 18, !1305, i64 20, !1291, i64 22}
!1305 = !{!"short", !1291, i64 0}
!1306 = !{!"_ZTS12AddressSpace", !1294, i64 0, !1307, i64 8, !1294, i64 16, !1307, i64 24, !1294, i64 32, !1307, i64 40, !1294, i64 48, !1307, i64 56, !1294, i64 64, !1307, i64 72, !1294, i64 80, !1307, i64 88}
!1307 = !{!"_ZTS3Reg", !1291, i64 0}
!1308 = !{!"_ZTS3GPR", !1294, i64 0, !1307, i64 8, !1294, i64 16, !1307, i64 24, !1294, i64 32, !1307, i64 40, !1294, i64 48, !1307, i64 56, !1294, i64 64, !1307, i64 72, !1294, i64 80, !1307, i64 88, !1294, i64 96, !1307, i64 104, !1294, i64 112, !1307, i64 120, !1294, i64 128, !1307, i64 136, !1294, i64 144, !1307, i64 152, !1294, i64 160, !1307, i64 168, !1294, i64 176, !1307, i64 184, !1294, i64 192, !1307, i64 200, !1294, i64 208, !1307, i64 216, !1294, i64 224, !1307, i64 232, !1294, i64 240, !1307, i64 248, !1294, i64 256, !1307, i64 264}
!1309 = !{!"_ZTS8X87Stack", !1291, i64 0}
!1310 = !{!"_ZTS3MMX", !1291, i64 0}
!1311 = !{!"_ZTS14FPUStatusFlags", !1291, i64 0, !1291, i64 1, !1291, i64 2, !1291, i64 3, !1291, i64 4, !1291, i64 5, !1291, i64 6, !1291, i64 7, !1291, i64 8, !1291, i64 9, !1291, i64 10, !1291, i64 11, !1291, i64 12, !1291, i64 13, !1291, i64 14, !1291, i64 15, !1291, i64 16, !1291, i64 17, !1291, i64 18, !1291, i64 19, !1291, i64 20}
!1312 = !{!"_ZTS13SegmentCaches", !1313, i64 0, !1313, i64 16, !1313, i64 32, !1313, i64 48, !1313, i64 64, !1313, i64 80}
!1313 = !{!"_ZTS13SegmentShadow", !1291, i64 0, !1314, i64 8, !1314, i64 12}
!1314 = !{!"int", !1291, i64 0}
!1315 = !{i32 0, i32 9}
!1316 = !{!1302, !1291, i64 2067}
!1317 = !{!1302, !1291, i64 2069}
!1318 = !{!1302, !1291, i64 2071}
!1319 = !{!1302, !1291, i64 2073}
!1320 = !{!1302, !1291, i64 2077}
!1321 = !{[4 x i8] c"RDI\00"}
!1322 = !{[4 x i8] c"RAX\00"}
!1323 = !{!1324, !1326}
!1324 = distinct !{!1324, !1325, !"__mcsema_detach_call_value: %state"}
!1325 = distinct !{!1325, !"__mcsema_detach_call_value"}
!1326 = distinct !{!1326, !1325, !"__mcsema_detach_call_value: %memory"}
!1327 = !{!1324}
!1328 = !{!1326}
!1329 = !{!1330, !1332}
!1330 = distinct !{!1330, !1331, !"__mcsema_detach_call_value: %state"}
!1331 = distinct !{!1331, !"__mcsema_detach_call_value"}
!1332 = distinct !{!1332, !1331, !"__mcsema_detach_call_value: %memory"}
!1333 = !{!1330}
!1334 = !{!1332}
!1335 = !{!1336, !1338}
!1336 = distinct !{!1336, !1337, !"__mcsema_detach_call_value: %state"}
!1337 = distinct !{!1337, !"__mcsema_detach_call_value"}
!1338 = distinct !{!1338, !1337, !"__mcsema_detach_call_value: %memory"}
!1339 = !{!1336}
!1340 = !{!1338}
!1341 = !{[4 x i8] c"RDX\00"}
!1342 = !{[4 x i8] c"RCX\00"}
!1343 = !{!1344, !1346}
!1344 = distinct !{!1344, !1345, !"__mcsema_detach_call_value: %state"}
!1345 = distinct !{!1345, !"__mcsema_detach_call_value"}
!1346 = distinct !{!1346, !1345, !"__mcsema_detach_call_value: %memory"}
!1347 = !{!1344}
!1348 = !{!1346}
!1349 = !{[4 x i8] c"RSI\00"}
!1350 = !{!1351, !1353}
!1351 = distinct !{!1351, !1352, !"__mcsema_detach_call_value: %state"}
!1352 = distinct !{!1352, !"__mcsema_detach_call_value"}
!1353 = distinct !{!1353, !1352, !"__mcsema_detach_call_value: %memory"}
!1354 = !{!1351}
!1355 = !{!1353}
!1356 = !{!"base.entrypoint"}
!1357 = !{!"base.external.cfgexternal"}
!1358 = !{!"base.helper.mcsema"}
!1359 = !{[3 x i8] c"R8\00"}
!1360 = !{[3 x i8] c"R9\00"}
!1361 = !{[4 x i8] c"RSP\00"}
!1362 = !{[4 x i8] c"EDI\00"}
