@  = global [64 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8,
                               i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16,
                               i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24,
                               i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32,
                               i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40,
                               i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48,
                               i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56,
                               i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64]

@global = global i64 0
@alias.ref1 = global i64* getelementptr inbounds ([64 x i64], [64 x i64]* @my_array, i64 0, i64 1)
@alias.ref2 = global i64* getelementptr inbounds ([64 x i64], [64 x i64]* @my_array, i64 0, i64 2)

; Aliases.
@alias = alias i64, i64* @global
@alias.ref3 = alias i64, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @my_array, i64 0, i64 32)
@alias.ref4 = alias i64, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @my_array, i64 0, i64 58)

define dso_local noundef i64 @main() {
entry:
  %val = load i64, i64* @alias.ref3
  call void @printInteger(i64 %val)
  ret i64 0
}

declare i64 @printf(i8*, ...)

@formatString = private constant [4 x i8] c"%d\0A\00"   ; Format string for printf

define void @printInteger(i64 %0) {
    %formatPtr = getelementptr inbounds [4 x i8], [4 x i8]* @formatString, i64 0, i64 0
    call i64 (i8*, ...) @printf(i8* %formatPtr, i64 %0)
    ret void
}
