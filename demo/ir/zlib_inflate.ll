; ModuleID = 'zlib/inflate.c'
source_filename = "zlib/inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@inflate.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown header flags set\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"header crc mismatch\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"incorrect length check\00", align 1
@fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16
@fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateResetKeep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 8
  store i64 0, ptr %24, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %28 = load i32, ptr %27, align 8, !tbaa !19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = and i32 %28, 1
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %32, ptr %33, align 8, !tbaa !20
  br label %34

34:                                               ; preds = %30, %23
  store i32 16180, ptr %19, align 8, !tbaa !16
  %35 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 2
  store i32 0, ptr %35, align 4, !tbaa !21
  %36 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 4
  store i32 0, ptr %36, align 4, !tbaa !22
  %37 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 5
  store i32 -1, ptr %37, align 8, !tbaa !23
  %38 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 6
  store i32 32768, ptr %38, align 4, !tbaa !24
  %39 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 9
  store ptr null, ptr %39, align 8, !tbaa !25
  %40 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 15
  store i64 0, ptr %40, align 8, !tbaa !26
  %41 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 16
  store i32 0, ptr %41, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 31
  %43 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 28
  store ptr %42, ptr %43, align 8, !tbaa !28
  %44 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 21
  store ptr %42, ptr %44, align 8, !tbaa !29
  %45 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 20
  store ptr %42, ptr %45, align 8, !tbaa !30
  %46 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 32
  store i32 1, ptr %46, align 8, !tbaa !31
  %47 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 33
  store i32 -1, ptr %47, align 4, !tbaa !32
  br label %48

48:                                               ; preds = %11, %15, %1, %3, %7, %18, %34
  %49 = phi i32 [ 0, %34 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 11
  store i32 0, ptr %24, align 4, !tbaa !33
  %25 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 12
  store i32 0, ptr %25, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 13
  store i32 0, ptr %26, align 4, !tbaa !35
  %27 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 8
  store i64 0, ptr %27, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %29, align 8, !tbaa !18
  %30 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  %31 = load i32, ptr %30, align 8, !tbaa !19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = and i32 %31, 1
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %35, ptr %36, align 8, !tbaa !20
  br label %37

37:                                               ; preds = %33, %23
  store i32 16180, ptr %19, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 2
  store i32 0, ptr %38, align 4, !tbaa !21
  %39 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 4
  store i32 0, ptr %39, align 4, !tbaa !22
  %40 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 5
  store i32 -1, ptr %40, align 8, !tbaa !23
  %41 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 6
  store i32 32768, ptr %41, align 4, !tbaa !24
  %42 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 9
  store ptr null, ptr %42, align 8, !tbaa !25
  %43 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 15
  store i64 0, ptr %43, align 8, !tbaa !26
  %44 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 16
  store i32 0, ptr %44, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 31
  %46 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 28
  store ptr %45, ptr %46, align 8, !tbaa !28
  %47 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 21
  store ptr %45, ptr %47, align 8, !tbaa !29
  %48 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 20
  store ptr %45, ptr %48, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 32
  store i32 1, ptr %49, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 33
  store i32 -1, ptr %50, align 4, !tbaa !32
  br label %51

51:                                               ; preds = %11, %15, %1, %3, %7, %37, %18
  %52 = phi i32 [ -2, %18 ], [ 0, %37 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateReset2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %99, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %99, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %99, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %99, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %99

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %99

24:                                               ; preds = %19
  %25 = icmp slt i32 %1, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = icmp ult i32 %1, -15
  br i1 %27, label %99, label %28

28:                                               ; preds = %26
  %29 = sub nsw i32 0, %1
  br label %36

30:                                               ; preds = %24
  %31 = lshr i32 %1, 4
  %32 = add nuw nsw i32 %31, 5
  %33 = icmp ult i32 %1, 48
  %34 = and i32 %1, 15
  %35 = select i1 %33, i32 %34, i32 %1
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi i32 [ %29, %28 ], [ %35, %30 ]
  %38 = phi i32 [ 0, %28 ], [ %32, %30 ]
  switch i32 %37, label %99 [
    i32 15, label %39
    i32 14, label %39
    i32 13, label %39
    i32 12, label %39
    i32 11, label %39
    i32 10, label %39
    i32 9, label %39
    i32 8, label %39
    i32 0, label %39
  ]

39:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36
  %40 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !36
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !37
  %46 = icmp eq i32 %45, %37
  br i1 %46, label %47, label %50

47:                                               ; preds = %39, %43
  %48 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  store i32 %38, ptr %48, align 8, !tbaa !19
  %49 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  store i32 %37, ptr %49, align 8, !tbaa !37
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !38
  tail call void %10(ptr noundef %52, ptr noundef nonnull %41) #9
  store ptr null, ptr %40, align 8, !tbaa !36
  %53 = load ptr, ptr %5, align 8, !tbaa !5
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  store i32 %38, ptr %55, align 8, !tbaa !19
  %56 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  store i32 %37, ptr %56, align 8, !tbaa !37
  br i1 %54, label %99, label %57

57:                                               ; preds = %47, %50
  %58 = load ptr, ptr %9, align 8, !tbaa !12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %99, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %13, align 8, !tbaa !13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %99, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 8, !tbaa !14
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !16
  %69 = add i32 %68, -16180
  %70 = icmp ult i32 %69, 32
  br i1 %70, label %71, label %99

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 11
  store i32 0, ptr %72, align 4, !tbaa !33
  %73 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 12
  store i32 0, ptr %73, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 13
  store i32 0, ptr %74, align 4, !tbaa !35
  %75 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 8
  store i64 0, ptr %75, align 8, !tbaa !17
  %76 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %77 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %77, align 8, !tbaa !18
  %78 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  %79 = load i32, ptr %78, align 8, !tbaa !19
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %71
  %82 = and i32 %79, 1
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %83, ptr %84, align 8, !tbaa !20
  br label %85

85:                                               ; preds = %81, %71
  store i32 16180, ptr %67, align 8, !tbaa !16
  %86 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 2
  store i32 0, ptr %86, align 4, !tbaa !21
  %87 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 4
  store i32 0, ptr %87, align 4, !tbaa !22
  %88 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 5
  store i32 -1, ptr %88, align 8, !tbaa !23
  %89 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 6
  store i32 32768, ptr %89, align 4, !tbaa !24
  %90 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 9
  store ptr null, ptr %90, align 8, !tbaa !25
  %91 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 15
  store i64 0, ptr %91, align 8, !tbaa !26
  %92 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 16
  store i32 0, ptr %92, align 8, !tbaa !27
  %93 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 31
  %94 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 28
  store ptr %93, ptr %94, align 8, !tbaa !28
  %95 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 21
  store ptr %93, ptr %95, align 8, !tbaa !29
  %96 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 20
  store ptr %93, ptr %96, align 8, !tbaa !30
  %97 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 32
  store i32 1, ptr %97, align 8, !tbaa !31
  %98 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 33
  store i32 -1, ptr %98, align 4, !tbaa !32
  br label %99

99:                                               ; preds = %12, %16, %2, %4, %8, %85, %66, %63, %60, %57, %50, %36, %26, %19
  %100 = phi i32 [ -2, %19 ], [ -2, %26 ], [ -2, %36 ], [ -2, %66 ], [ 0, %85 ], [ -2, %57 ], [ -2, %50 ], [ -2, %63 ], [ -2, %60 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !39
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %40, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %14, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %19, align 8, !tbaa !38
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ @zcalloc, %18 ], [ %16, %13 ]
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store ptr @zcfree, ptr %22, align 8, !tbaa !12
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = tail call ptr %21(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %29, ptr %32, align 8, !tbaa !13
  store ptr %0, ptr %29, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 14
  store ptr null, ptr %33, align 8, !tbaa !36
  %34 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 1
  store i32 16180, ptr %34, align 8, !tbaa !16
  %35 = tail call i32 @inflateReset2(ptr noundef nonnull %0, i32 noundef %1), !range !41
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %22, align 8, !tbaa !12
  %39 = load ptr, ptr %27, align 8, !tbaa !38
  tail call void %38(ptr noundef %39, ptr noundef nonnull %29) #9
  store ptr null, ptr %32, align 8, !tbaa !13
  br label %40

40:                                               ; preds = %31, %37, %26, %11, %4, %6
  %41 = phi i32 [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -4, %26 ], [ %35, %37 ], [ 0, %31 ]
  ret i32 %41
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #3

declare void @zcfree(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateInit_(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !39
  %7 = icmp ne i8 %6, 49
  %8 = icmp ne i32 %2, 112
  %9 = or i1 %8, %7
  br i1 %9, label %39, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %0, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  store ptr @zcalloc, ptr %14, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %18, align 8, !tbaa !38
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ @zcalloc, %17 ], [ %15, %12 ]
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store ptr @zcfree, ptr %21, align 8, !tbaa !12
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %28, ptr %31, align 8, !tbaa !13
  store ptr %0, ptr %28, align 8, !tbaa !14
  %32 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 14
  store ptr null, ptr %32, align 8, !tbaa !36
  %33 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 1
  store i32 16180, ptr %33, align 8, !tbaa !16
  %34 = tail call i32 @inflateReset2(ptr noundef nonnull %0, i32 noundef 15), !range !41
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %21, align 8, !tbaa !12
  %38 = load ptr, ptr %26, align 8, !tbaa !38
  tail call void %37(ptr noundef %38, ptr noundef nonnull %28) #9
  store ptr null, ptr %31, align 8, !tbaa !13
  br label %39

39:                                               ; preds = %3, %5, %10, %25, %30, %36
  %40 = phi i32 [ -6, %5 ], [ -6, %3 ], [ -2, %10 ], [ -4, %25 ], [ %34, %36 ], [ 0, %30 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflatePrime(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %1, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 15
  store i64 0, ptr %30, align 8, !tbaa !26
  %31 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 16
  store i32 0, ptr %31, align 8, !tbaa !27
  br label %50

32:                                               ; preds = %27
  %33 = icmp ugt i32 %1, 16
  br i1 %33, label %50, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 16
  %36 = load i32, ptr %35, align 8, !tbaa !27
  %37 = add i32 %36, %1
  %38 = icmp ugt i32 %37, 32
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = zext nneg i32 %1 to i64
  %41 = shl nsw i64 -1, %40
  %42 = trunc i64 %41 to i32
  %43 = xor i32 %42, -1
  %44 = and i32 %43, %2
  %45 = shl i32 %44, %36
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 15
  %48 = load i64, ptr %47, align 8, !tbaa !26
  %49 = add i64 %48, %46
  store i64 %49, ptr %47, align 8, !tbaa !26
  store i32 %37, ptr %35, align 8, !tbaa !27
  br label %50

50:                                               ; preds = %13, %17, %3, %5, %9, %32, %34, %25, %20, %39, %29
  %51 = phi i32 [ 0, %29 ], [ 0, %39 ], [ -2, %20 ], [ 0, %25 ], [ -2, %34 ], [ -2, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %2287, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2287, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2287, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2287, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2287

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2287

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2287, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !43
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2287

36:                                               ; preds = %32, %29
  %37 = icmp eq i32 %22, 16191
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i32 16192, ptr %21, align 8, !tbaa !16
  br label %39

39:                                               ; preds = %36, %38
  %40 = phi i32 [ %22, %36 ], [ 16192, %38 ]
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !44
  %45 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 15
  %46 = load i64, ptr %45, align 8, !tbaa !26
  %47 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 16
  %48 = load i32, ptr %47, align 8, !tbaa !27
  %49 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 3
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %51 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 8
  %52 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 5
  %53 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 7
  %54 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %55 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %56 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 17
  %57 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 25
  %58 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 26
  %59 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 24
  %60 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 27
  %61 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 31
  %62 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 28
  %63 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 20
  %64 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 22
  %65 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29
  %66 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 30
  %67 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 256
  %68 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 21
  %69 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 23
  %70 = icmp eq i32 %1, 6
  %71 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 33
  %72 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 19
  %73 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 34
  %74 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 18
  %75 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 12
  %76 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 32
  %77 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 13
  %78 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 14
  %79 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 11
  %80 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 4
  %81 = add i32 %1, -5
  %82 = icmp ult i32 %81, 2
  %83 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 2
  %84 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 9
  %85 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %86 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %87 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %88 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 10
  %89 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 6
  br label %90

90:                                               ; preds = %2096, %39
  %91 = phi i32 [ %40, %39 ], [ %2105, %2096 ]
  %92 = phi ptr [ %30, %39 ], [ %2097, %2096 ]
  %93 = phi ptr [ %27, %39 ], [ %2098, %2096 ]
  %94 = phi i32 [ %44, %39 ], [ %2099, %2096 ]
  %95 = phi i32 [ %42, %39 ], [ %2100, %2096 ]
  %96 = phi i64 [ %46, %39 ], [ %2101, %2096 ]
  %97 = phi i32 [ %48, %39 ], [ %2102, %2096 ]
  %98 = phi i32 [ %42, %39 ], [ %2103, %2096 ]
  %99 = phi i32 [ 0, %39 ], [ %2104, %2096 ]
  %100 = ptrtoint ptr %93 to i64
  switch i32 %91, label %2287 [
    i32 16180, label %124
    i32 16181, label %119
    i32 16182, label %273
    i32 16183, label %349
    i32 16184, label %403
    i32 16185, label %476
    i32 16186, label %536
    i32 16187, label %596
    i32 16188, label %656
    i32 16189, label %114
    i32 16190, label %768
    i32 16191, label %778
    i32 16192, label %783
    i32 16193, label %829
    i32 16194, label %898
    i32 16195, label %903
    i32 16196, label %109
    i32 16197, label %969
    i32 16198, label %105
    i32 16199, label %1366
    i32 16200, label %1372
    i32 16201, label %103
    i32 16202, label %1582
    i32 16203, label %101
    i32 16204, label %1771
    i32 16205, label %1904
    i32 16206, label %1911
    i32 16207, label %107
    i32 16208, label %2202
    i32 16209, label %2203
    i32 16210, label %2286
  ]

101:                                              ; preds = %90
  %102 = load i32, ptr %72, align 4, !tbaa !46
  br label %1724

103:                                              ; preds = %90
  %104 = load i32, ptr %72, align 4, !tbaa !46
  br label %1532

105:                                              ; preds = %90
  %106 = load i32, ptr %60, align 4, !tbaa !47
  br label %1040

107:                                              ; preds = %90
  %108 = load i32, ptr %49, align 8, !tbaa !19
  br label %2016

109:                                              ; preds = %90
  %110 = icmp ult i32 %97, 14
  br i1 %110, label %111, label %948

111:                                              ; preds = %109
  %112 = zext nneg i32 %97 to i64
  %113 = icmp eq i32 %94, 0
  br i1 %113, label %2152, label %923

114:                                              ; preds = %90
  %115 = icmp ult i32 %97, 32
  br i1 %115, label %116, label %761

116:                                              ; preds = %114
  %117 = zext nneg i32 %97 to i64
  %118 = icmp eq i32 %94, 0
  br i1 %118, label %2142, label %721

119:                                              ; preds = %90
  %120 = icmp ult i32 %97, 16
  br i1 %120, label %121, label %240

121:                                              ; preds = %119
  %122 = zext nneg i32 %97 to i64
  %123 = icmp eq i32 %94, 0
  br i1 %123, label %2137, label %215

124:                                              ; preds = %90
  %125 = load i32, ptr %49, align 8, !tbaa !19
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = icmp ult i32 %97, 16
  br i1 %128, label %129, label %158

129:                                              ; preds = %127
  %130 = zext nneg i32 %97 to i64
  %131 = icmp eq i32 %94, 0
  br i1 %131, label %2112, label %133

132:                                              ; preds = %124
  store i32 16192, ptr %21, align 8, !tbaa !16
  br label %2096

133:                                              ; preds = %129
  %134 = add i32 %94, -1
  %135 = getelementptr inbounds i8, ptr %92, i64 1
  %136 = load i8, ptr %92, align 1, !tbaa !39
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, %130
  %139 = add i64 %138, %96
  %140 = add nuw nsw i64 %130, 8
  %141 = icmp ult i32 %97, 8
  br i1 %141, label %142, label %152, !llvm.loop !48

142:                                              ; preds = %133
  %143 = icmp eq i32 %134, 0
  br i1 %143, label %2112, label %144

144:                                              ; preds = %142
  %145 = add i32 %94, -2
  %146 = getelementptr inbounds i8, ptr %92, i64 2
  %147 = load i8, ptr %135, align 1, !tbaa !39
  %148 = zext i8 %147 to i64
  %149 = shl nuw nsw i64 %148, %140
  %150 = add i64 %149, %139
  %151 = or disjoint i64 %130, 16
  br label %152

152:                                              ; preds = %144, %133
  %153 = phi i32 [ %134, %133 ], [ %145, %144 ]
  %154 = phi ptr [ %135, %133 ], [ %146, %144 ]
  %155 = phi i64 [ %139, %133 ], [ %150, %144 ]
  %156 = phi i64 [ %140, %133 ], [ %151, %144 ]
  %157 = trunc i64 %156 to i32
  br label %158

158:                                              ; preds = %152, %127
  %159 = phi ptr [ %92, %127 ], [ %154, %152 ]
  %160 = phi i32 [ %94, %127 ], [ %153, %152 ]
  %161 = phi i64 [ %96, %127 ], [ %155, %152 ]
  %162 = phi i32 [ %97, %127 ], [ %157, %152 ]
  %163 = and i32 %125, 2
  %164 = icmp ne i32 %163, 0
  %165 = icmp eq i64 %161, 35615
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %167, label %174

167:                                              ; preds = %158
  %168 = load i32, ptr %88, align 8, !tbaa !37
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 15, ptr %88, align 8, !tbaa !37
  br label %171

171:                                              ; preds = %170, %167
  %172 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  store i64 %172, ptr %53, align 8, !tbaa !50
  store i8 31, ptr %3, align 1, !tbaa !39
  store i8 -117, ptr %85, align 1, !tbaa !39
  %173 = call i64 @crc32(i64 noundef %172, ptr noundef nonnull %3, i32 noundef 2) #9
  store i64 %173, ptr %53, align 8, !tbaa !50
  store i32 16181, ptr %21, align 8, !tbaa !16
  br label %2096

174:                                              ; preds = %158
  %175 = load ptr, ptr %84, align 8, !tbaa !25
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.gz_header_s, ptr %175, i64 0, i32 12
  store i32 -1, ptr %178, align 8, !tbaa !51
  br label %179

179:                                              ; preds = %177, %174
  %180 = and i32 %125, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = shl i64 %161, 8
  %184 = and i64 %183, 65280
  %185 = lshr i64 %161, 8
  %186 = add nuw nsw i64 %184, %185
  %187 = urem i64 %186, 31
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %182, %179
  store ptr @.str.1, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

190:                                              ; preds = %182
  %191 = and i64 %161, 15
  %192 = icmp eq i64 %191, 8
  br i1 %192, label %194, label %193

193:                                              ; preds = %190
  store ptr @.str.2, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

194:                                              ; preds = %190
  %195 = lshr i64 %161, 4
  %196 = add i32 %162, -4
  %197 = trunc i64 %195 to i32
  %198 = and i32 %197, 15
  %199 = add nuw nsw i32 %198, 8
  %200 = load i32, ptr %88, align 8, !tbaa !37
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  store i32 %199, ptr %88, align 8, !tbaa !37
  br label %203

203:                                              ; preds = %202, %194
  %204 = phi i32 [ %199, %202 ], [ %200, %194 ]
  %205 = icmp ugt i32 %198, 7
  %206 = icmp ugt i32 %199, %204
  %207 = select i1 %205, i1 true, i1 %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store ptr @.str.3, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

209:                                              ; preds = %203
  %210 = shl nuw nsw i32 256, %198
  store i32 %210, ptr %89, align 4, !tbaa !24
  store i32 0, ptr %52, align 8, !tbaa !23
  %211 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  store i64 %211, ptr %53, align 8, !tbaa !50
  store i64 %211, ptr %54, align 8, !tbaa !20
  %212 = and i64 %161, 8192
  %213 = icmp eq i64 %212, 0
  %214 = select i1 %213, i32 16191, i32 16189
  store i32 %214, ptr %21, align 8, !tbaa !16
  br label %2096

215:                                              ; preds = %121
  %216 = add i32 %94, -1
  %217 = getelementptr inbounds i8, ptr %92, i64 1
  %218 = load i8, ptr %92, align 1, !tbaa !39
  %219 = zext i8 %218 to i64
  %220 = shl nuw nsw i64 %219, %122
  %221 = add i64 %220, %96
  %222 = add nuw nsw i64 %122, 8
  %223 = icmp ult i32 %97, 8
  br i1 %223, label %224, label %234, !llvm.loop !53

224:                                              ; preds = %215
  %225 = icmp eq i32 %216, 0
  br i1 %225, label %2137, label %226

226:                                              ; preds = %224
  %227 = add i32 %94, -2
  %228 = getelementptr inbounds i8, ptr %92, i64 2
  %229 = load i8, ptr %217, align 1, !tbaa !39
  %230 = zext i8 %229 to i64
  %231 = shl nuw nsw i64 %230, %222
  %232 = add i64 %231, %221
  %233 = or disjoint i64 %122, 16
  br label %234

234:                                              ; preds = %226, %215
  %235 = phi i32 [ %216, %215 ], [ %227, %226 ]
  %236 = phi ptr [ %217, %215 ], [ %228, %226 ]
  %237 = phi i64 [ %221, %215 ], [ %232, %226 ]
  %238 = phi i64 [ %222, %215 ], [ %233, %226 ]
  %239 = trunc i64 %238 to i32
  br label %240

240:                                              ; preds = %234, %119
  %241 = phi ptr [ %92, %119 ], [ %236, %234 ]
  %242 = phi i32 [ %94, %119 ], [ %235, %234 ]
  %243 = phi i64 [ %96, %119 ], [ %237, %234 ]
  %244 = phi i32 [ %97, %119 ], [ %239, %234 ]
  %245 = trunc i64 %243 to i32
  store i32 %245, ptr %52, align 8, !tbaa !23
  %246 = and i32 %245, 255
  %247 = icmp eq i32 %246, 8
  br i1 %247, label %249, label %248

248:                                              ; preds = %240
  store ptr @.str.2, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

249:                                              ; preds = %240
  %250 = and i32 %245, 57344
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  store ptr @.str.4, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

253:                                              ; preds = %249
  %254 = load ptr, ptr %84, align 8, !tbaa !25
  %255 = icmp eq ptr %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = lshr i32 %245, 8
  %258 = and i32 %257, 1
  store i32 %258, ptr %254, align 8, !tbaa !54
  br label %259

259:                                              ; preds = %256, %253
  %260 = and i32 %245, 512
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %272, label %262

262:                                              ; preds = %259
  %263 = load i32, ptr %49, align 8, !tbaa !19
  %264 = and i32 %263, 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %262
  %267 = trunc i64 %243 to i8
  store i8 %267, ptr %3, align 1, !tbaa !39
  %268 = lshr i64 %243, 8
  %269 = trunc i64 %268 to i8
  store i8 %269, ptr %85, align 1, !tbaa !39
  %270 = load i64, ptr %53, align 8, !tbaa !50
  %271 = call i64 @crc32(i64 noundef %270, ptr noundef nonnull %3, i32 noundef 2) #9
  store i64 %271, ptr %53, align 8, !tbaa !50
  br label %272

272:                                              ; preds = %266, %262, %259
  store i32 16182, ptr %21, align 8, !tbaa !16
  br label %275

273:                                              ; preds = %90
  %274 = icmp ult i32 %97, 32
  br i1 %274, label %275, label %322

275:                                              ; preds = %272, %273
  %276 = phi i32 [ 0, %272 ], [ %97, %273 ]
  %277 = phi i64 [ 0, %272 ], [ %96, %273 ]
  %278 = phi i32 [ %242, %272 ], [ %94, %273 ]
  %279 = phi ptr [ %241, %272 ], [ %92, %273 ]
  %280 = zext nneg i32 %276 to i64
  %281 = icmp eq i32 %278, 0
  br i1 %281, label %2132, label %282

282:                                              ; preds = %275
  %283 = add i32 %278, -1
  %284 = getelementptr inbounds i8, ptr %279, i64 1
  %285 = load i8, ptr %279, align 1, !tbaa !39
  %286 = zext i8 %285 to i64
  %287 = shl nuw nsw i64 %286, %280
  %288 = add i64 %287, %277
  %289 = add nuw nsw i64 %280, 8
  %290 = icmp ult i32 %276, 24
  br i1 %290, label %291, label %322, !llvm.loop !55

291:                                              ; preds = %282
  %292 = icmp eq i32 %283, 0
  br i1 %292, label %2132, label %293

293:                                              ; preds = %291
  %294 = add i32 %278, -2
  %295 = getelementptr inbounds i8, ptr %279, i64 2
  %296 = load i8, ptr %284, align 1, !tbaa !39
  %297 = zext i8 %296 to i64
  %298 = shl nuw nsw i64 %297, %289
  %299 = add i64 %298, %288
  %300 = add nuw nsw i64 %280, 16
  %301 = icmp ult i32 %276, 16
  br i1 %301, label %302, label %322, !llvm.loop !55

302:                                              ; preds = %293
  %303 = icmp eq i32 %294, 0
  br i1 %303, label %2132, label %304

304:                                              ; preds = %302
  %305 = add i32 %278, -3
  %306 = getelementptr inbounds i8, ptr %279, i64 3
  %307 = load i8, ptr %295, align 1, !tbaa !39
  %308 = zext i8 %307 to i64
  %309 = shl nuw nsw i64 %308, %300
  %310 = add i64 %309, %299
  %311 = add nuw nsw i64 %280, 24
  %312 = icmp ult i32 %276, 8
  br i1 %312, label %313, label %322, !llvm.loop !55

313:                                              ; preds = %304
  %314 = icmp eq i32 %305, 0
  br i1 %314, label %2132, label %315

315:                                              ; preds = %313
  %316 = add i32 %278, -4
  %317 = getelementptr inbounds i8, ptr %279, i64 4
  %318 = load i8, ptr %306, align 1, !tbaa !39
  %319 = zext i8 %318 to i64
  %320 = shl nuw nsw i64 %319, %311
  %321 = add i64 %320, %310
  br label %322

322:                                              ; preds = %282, %293, %304, %315, %273
  %323 = phi ptr [ %92, %273 ], [ %284, %282 ], [ %295, %293 ], [ %306, %304 ], [ %317, %315 ]
  %324 = phi i32 [ %94, %273 ], [ %283, %282 ], [ %294, %293 ], [ %305, %304 ], [ %316, %315 ]
  %325 = phi i64 [ %96, %273 ], [ %288, %282 ], [ %299, %293 ], [ %310, %304 ], [ %321, %315 ]
  %326 = load ptr, ptr %84, align 8, !tbaa !25
  %327 = icmp eq ptr %326, null
  br i1 %327, label %330, label %328

328:                                              ; preds = %322
  %329 = getelementptr inbounds %struct.gz_header_s, ptr %326, i64 0, i32 1
  store i64 %325, ptr %329, align 8, !tbaa !56
  br label %330

330:                                              ; preds = %328, %322
  %331 = load i32, ptr %52, align 8, !tbaa !23
  %332 = and i32 %331, 512
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %348, label %334

334:                                              ; preds = %330
  %335 = load i32, ptr %49, align 8, !tbaa !19
  %336 = and i32 %335, 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %348, label %338

338:                                              ; preds = %334
  %339 = trunc i64 %325 to i8
  store i8 %339, ptr %3, align 1, !tbaa !39
  %340 = lshr i64 %325, 8
  %341 = trunc i64 %340 to i8
  store i8 %341, ptr %85, align 1, !tbaa !39
  %342 = lshr i64 %325, 16
  %343 = trunc i64 %342 to i8
  store i8 %343, ptr %86, align 1, !tbaa !39
  %344 = lshr i64 %325, 24
  %345 = trunc i64 %344 to i8
  store i8 %345, ptr %87, align 1, !tbaa !39
  %346 = load i64, ptr %53, align 8, !tbaa !50
  %347 = call i64 @crc32(i64 noundef %346, ptr noundef nonnull %3, i32 noundef 4) #9
  store i64 %347, ptr %53, align 8, !tbaa !50
  br label %348

348:                                              ; preds = %338, %334, %330
  store i32 16183, ptr %21, align 8, !tbaa !16
  br label %351

349:                                              ; preds = %90
  %350 = icmp ult i32 %97, 16
  br i1 %350, label %351, label %376

351:                                              ; preds = %348, %349
  %352 = phi i32 [ 0, %348 ], [ %97, %349 ]
  %353 = phi i64 [ 0, %348 ], [ %96, %349 ]
  %354 = phi i32 [ %324, %348 ], [ %94, %349 ]
  %355 = phi ptr [ %323, %348 ], [ %92, %349 ]
  %356 = zext nneg i32 %352 to i64
  %357 = icmp eq i32 %354, 0
  br i1 %357, label %2127, label %358

358:                                              ; preds = %351
  %359 = add i32 %354, -1
  %360 = getelementptr inbounds i8, ptr %355, i64 1
  %361 = load i8, ptr %355, align 1, !tbaa !39
  %362 = zext i8 %361 to i64
  %363 = shl nuw nsw i64 %362, %356
  %364 = add i64 %363, %353
  %365 = add nuw nsw i64 %356, 8
  %366 = icmp ult i32 %352, 8
  br i1 %366, label %367, label %376, !llvm.loop !57

367:                                              ; preds = %358
  %368 = icmp eq i32 %359, 0
  br i1 %368, label %2127, label %369

369:                                              ; preds = %367
  %370 = add i32 %354, -2
  %371 = getelementptr inbounds i8, ptr %355, i64 2
  %372 = load i8, ptr %360, align 1, !tbaa !39
  %373 = zext i8 %372 to i64
  %374 = shl nuw nsw i64 %373, %365
  %375 = add i64 %374, %364
  br label %376

376:                                              ; preds = %358, %369, %349
  %377 = phi ptr [ %92, %349 ], [ %360, %358 ], [ %371, %369 ]
  %378 = phi i32 [ %94, %349 ], [ %359, %358 ], [ %370, %369 ]
  %379 = phi i64 [ %96, %349 ], [ %364, %358 ], [ %375, %369 ]
  %380 = load ptr, ptr %84, align 8, !tbaa !25
  %381 = icmp eq ptr %380, null
  br i1 %381, label %389, label %382

382:                                              ; preds = %376
  %383 = trunc i64 %379 to i32
  %384 = and i32 %383, 255
  %385 = getelementptr inbounds %struct.gz_header_s, ptr %380, i64 0, i32 2
  store i32 %384, ptr %385, align 8, !tbaa !58
  %386 = lshr i64 %379, 8
  %387 = trunc i64 %386 to i32
  %388 = getelementptr inbounds %struct.gz_header_s, ptr %380, i64 0, i32 3
  store i32 %387, ptr %388, align 4, !tbaa !59
  br label %389

389:                                              ; preds = %382, %376
  %390 = load i32, ptr %52, align 8, !tbaa !23
  %391 = and i32 %390, 512
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %407, label %393

393:                                              ; preds = %389
  %394 = load i32, ptr %49, align 8, !tbaa !19
  %395 = and i32 %394, 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %407, label %397

397:                                              ; preds = %393
  %398 = trunc i64 %379 to i8
  store i8 %398, ptr %3, align 1, !tbaa !39
  %399 = lshr i64 %379, 8
  %400 = trunc i64 %399 to i8
  store i8 %400, ptr %85, align 1, !tbaa !39
  %401 = load i64, ptr %53, align 8, !tbaa !50
  %402 = call i64 @crc32(i64 noundef %401, ptr noundef nonnull %3, i32 noundef 2) #9
  store i64 %402, ptr %53, align 8, !tbaa !50
  br label %407

403:                                              ; preds = %90
  %404 = load i32, ptr %52, align 8, !tbaa !23
  %405 = and i32 %404, 1024
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %462, label %411

407:                                              ; preds = %397, %393, %389
  store i32 16184, ptr %21, align 8, !tbaa !16
  %408 = load i32, ptr %52, align 8, !tbaa !23
  %409 = and i32 %408, 1024
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %462, label %413

411:                                              ; preds = %403
  %412 = icmp ult i32 %97, 16
  br i1 %412, label %413, label %439

413:                                              ; preds = %407, %411
  %414 = phi ptr [ %92, %411 ], [ %377, %407 ]
  %415 = phi i32 [ %94, %411 ], [ %378, %407 ]
  %416 = phi i64 [ %96, %411 ], [ 0, %407 ]
  %417 = phi i32 [ %97, %411 ], [ 0, %407 ]
  %418 = phi i32 [ %404, %411 ], [ %408, %407 ]
  %419 = zext nneg i32 %417 to i64
  %420 = icmp eq i32 %415, 0
  br i1 %420, label %2122, label %421

421:                                              ; preds = %413
  %422 = add i32 %415, -1
  %423 = getelementptr inbounds i8, ptr %414, i64 1
  %424 = load i8, ptr %414, align 1, !tbaa !39
  %425 = zext i8 %424 to i64
  %426 = shl nuw nsw i64 %425, %419
  %427 = add i64 %426, %416
  %428 = add nuw nsw i64 %419, 8
  %429 = icmp ult i32 %417, 8
  br i1 %429, label %430, label %439, !llvm.loop !60

430:                                              ; preds = %421
  %431 = icmp eq i32 %422, 0
  br i1 %431, label %2122, label %432

432:                                              ; preds = %430
  %433 = add i32 %415, -2
  %434 = getelementptr inbounds i8, ptr %414, i64 2
  %435 = load i8, ptr %423, align 1, !tbaa !39
  %436 = zext i8 %435 to i64
  %437 = shl nuw nsw i64 %436, %428
  %438 = add i64 %437, %427
  br label %439

439:                                              ; preds = %421, %432, %411
  %440 = phi i32 [ %404, %411 ], [ %418, %432 ], [ %418, %421 ]
  %441 = phi ptr [ %92, %411 ], [ %423, %421 ], [ %434, %432 ]
  %442 = phi i32 [ %94, %411 ], [ %422, %421 ], [ %433, %432 ]
  %443 = phi i64 [ %96, %411 ], [ %427, %421 ], [ %438, %432 ]
  %444 = trunc i64 %443 to i32
  store i32 %444, ptr %56, align 4, !tbaa !61
  %445 = load ptr, ptr %84, align 8, !tbaa !25
  %446 = icmp eq ptr %445, null
  br i1 %446, label %449, label %447

447:                                              ; preds = %439
  %448 = getelementptr inbounds %struct.gz_header_s, ptr %445, i64 0, i32 5
  store i32 %444, ptr %448, align 8, !tbaa !62
  br label %449

449:                                              ; preds = %447, %439
  %450 = and i32 %440, 512
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %471, label %452

452:                                              ; preds = %449
  %453 = load i32, ptr %49, align 8, !tbaa !19
  %454 = and i32 %453, 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %471, label %456

456:                                              ; preds = %452
  %457 = trunc i64 %443 to i8
  store i8 %457, ptr %3, align 1, !tbaa !39
  %458 = lshr i64 %443, 8
  %459 = trunc i64 %458 to i8
  store i8 %459, ptr %85, align 1, !tbaa !39
  %460 = load i64, ptr %53, align 8, !tbaa !50
  %461 = call i64 @crc32(i64 noundef %460, ptr noundef nonnull %3, i32 noundef 2) #9
  store i64 %461, ptr %53, align 8, !tbaa !50
  br label %471

462:                                              ; preds = %407, %403
  %463 = phi i32 [ 0, %407 ], [ %97, %403 ]
  %464 = phi i64 [ 0, %407 ], [ %96, %403 ]
  %465 = phi i32 [ %378, %407 ], [ %94, %403 ]
  %466 = phi ptr [ %377, %407 ], [ %92, %403 ]
  %467 = load ptr, ptr %84, align 8, !tbaa !25
  %468 = icmp eq ptr %467, null
  br i1 %468, label %471, label %469

469:                                              ; preds = %462
  %470 = getelementptr inbounds %struct.gz_header_s, ptr %467, i64 0, i32 4
  store ptr null, ptr %470, align 8, !tbaa !63
  br label %471

471:                                              ; preds = %456, %452, %449, %462, %469
  %472 = phi ptr [ %466, %469 ], [ %466, %462 ], [ %441, %449 ], [ %441, %452 ], [ %441, %456 ]
  %473 = phi i32 [ %465, %469 ], [ %465, %462 ], [ %442, %449 ], [ %442, %452 ], [ %442, %456 ]
  %474 = phi i64 [ %464, %469 ], [ %464, %462 ], [ 0, %449 ], [ 0, %452 ], [ 0, %456 ]
  %475 = phi i32 [ %463, %469 ], [ %463, %462 ], [ 0, %449 ], [ 0, %452 ], [ 0, %456 ]
  store i32 16185, ptr %21, align 8, !tbaa !16
  br label %476

476:                                              ; preds = %90, %471
  %477 = phi ptr [ %92, %90 ], [ %472, %471 ]
  %478 = phi i32 [ %94, %90 ], [ %473, %471 ]
  %479 = phi i64 [ %96, %90 ], [ %474, %471 ]
  %480 = phi i32 [ %97, %90 ], [ %475, %471 ]
  %481 = load i32, ptr %52, align 8, !tbaa !23
  %482 = and i32 %481, 1024
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %533, label %484

484:                                              ; preds = %476
  %485 = load i32, ptr %56, align 4, !tbaa !61
  %486 = call i32 @llvm.umin.i32(i32 %485, i32 %478)
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %528, label %488

488:                                              ; preds = %484
  %489 = load ptr, ptr %84, align 8, !tbaa !25
  %490 = icmp eq ptr %489, null
  br i1 %490, label %511, label %491

491:                                              ; preds = %488
  %492 = getelementptr inbounds %struct.gz_header_s, ptr %489, i64 0, i32 4
  %493 = load ptr, ptr %492, align 8, !tbaa !63
  %494 = icmp eq ptr %493, null
  br i1 %494, label %511, label %495

495:                                              ; preds = %491
  %496 = getelementptr inbounds %struct.gz_header_s, ptr %489, i64 0, i32 5
  %497 = load i32, ptr %496, align 8, !tbaa !62
  %498 = sub i32 %497, %485
  %499 = getelementptr inbounds %struct.gz_header_s, ptr %489, i64 0, i32 6
  %500 = load i32, ptr %499, align 4, !tbaa !64
  %501 = icmp ult i32 %498, %500
  br i1 %501, label %502, label %511

502:                                              ; preds = %495
  %503 = zext i32 %498 to i64
  %504 = getelementptr inbounds i8, ptr %493, i64 %503
  %505 = add i32 %498, %486
  %506 = icmp ugt i32 %505, %500
  %507 = sub i32 %500, %498
  %508 = select i1 %506, i32 %507, i32 %486
  %509 = zext i32 %508 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %504, ptr align 1 %477, i64 %509, i1 false)
  %510 = load i32, ptr %52, align 8, !tbaa !23
  br label %511

511:                                              ; preds = %502, %495, %491, %488
  %512 = phi i32 [ %510, %502 ], [ %481, %495 ], [ %481, %491 ], [ %481, %488 ]
  %513 = and i32 %512, 512
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %522, label %515

515:                                              ; preds = %511
  %516 = load i32, ptr %49, align 8, !tbaa !19
  %517 = and i32 %516, 4
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %515
  %520 = load i64, ptr %53, align 8, !tbaa !50
  %521 = call i64 @crc32(i64 noundef %520, ptr noundef %477, i32 noundef %486) #9
  store i64 %521, ptr %53, align 8, !tbaa !50
  br label %522

522:                                              ; preds = %519, %515, %511
  %523 = sub i32 %478, %486
  %524 = zext i32 %486 to i64
  %525 = getelementptr inbounds i8, ptr %477, i64 %524
  %526 = load i32, ptr %56, align 4, !tbaa !61
  %527 = sub i32 %526, %486
  store i32 %527, ptr %56, align 4, !tbaa !61
  br label %528

528:                                              ; preds = %522, %484
  %529 = phi i32 [ %527, %522 ], [ %485, %484 ]
  %530 = phi ptr [ %525, %522 ], [ %477, %484 ]
  %531 = phi i32 [ %523, %522 ], [ %478, %484 ]
  %532 = icmp eq i32 %529, 0
  br i1 %532, label %533, label %2203

533:                                              ; preds = %528, %476
  %534 = phi ptr [ %530, %528 ], [ %477, %476 ]
  %535 = phi i32 [ %531, %528 ], [ %478, %476 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16186, ptr %21, align 8, !tbaa !16
  br label %536

536:                                              ; preds = %90, %533
  %537 = phi ptr [ %92, %90 ], [ %534, %533 ]
  %538 = phi i32 [ %94, %90 ], [ %535, %533 ]
  %539 = phi i64 [ %96, %90 ], [ %479, %533 ]
  %540 = phi i32 [ %97, %90 ], [ %480, %533 ]
  %541 = load i32, ptr %52, align 8, !tbaa !23
  %542 = and i32 %541, 2048
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %588, label %544

544:                                              ; preds = %536
  %545 = icmp eq i32 %538, 0
  br i1 %545, label %2203, label %546

546:                                              ; preds = %544
  %547 = zext i32 %538 to i64
  br label %548

548:                                              ; preds = %546, %568
  %549 = phi i64 [ 0, %546 ], [ %550, %568 ]
  %550 = add nuw nsw i64 %549, 1
  %551 = getelementptr inbounds i8, ptr %537, i64 %549
  %552 = load i8, ptr %551, align 1, !tbaa !39
  %553 = load ptr, ptr %84, align 8, !tbaa !25
  %554 = icmp eq ptr %553, null
  br i1 %554, label %568, label %555

555:                                              ; preds = %548
  %556 = getelementptr inbounds %struct.gz_header_s, ptr %553, i64 0, i32 7
  %557 = load ptr, ptr %556, align 8, !tbaa !65
  %558 = icmp eq ptr %557, null
  br i1 %558, label %568, label %559

559:                                              ; preds = %555
  %560 = load i32, ptr %56, align 4, !tbaa !61
  %561 = getelementptr inbounds %struct.gz_header_s, ptr %553, i64 0, i32 8
  %562 = load i32, ptr %561, align 8, !tbaa !66
  %563 = icmp ult i32 %560, %562
  br i1 %563, label %564, label %568

564:                                              ; preds = %559
  %565 = add nuw i32 %560, 1
  store i32 %565, ptr %56, align 4, !tbaa !61
  %566 = zext i32 %560 to i64
  %567 = getelementptr inbounds i8, ptr %557, i64 %566
  store i8 %552, ptr %567, align 1, !tbaa !39
  br label %568

568:                                              ; preds = %548, %555, %559, %564
  %569 = icmp ne i8 %552, 0
  %570 = icmp ult i64 %550, %547
  %571 = select i1 %569, i1 %570, i1 false
  br i1 %571, label %548, label %572, !llvm.loop !67

572:                                              ; preds = %568
  %573 = trunc i64 %550 to i32
  %574 = load i32, ptr %52, align 8, !tbaa !23
  %575 = and i32 %574, 512
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %584, label %577

577:                                              ; preds = %572
  %578 = load i32, ptr %49, align 8, !tbaa !19
  %579 = and i32 %578, 4
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %584, label %581

581:                                              ; preds = %577
  %582 = load i64, ptr %53, align 8, !tbaa !50
  %583 = call i64 @crc32(i64 noundef %582, ptr noundef nonnull %537, i32 noundef %573) #9
  store i64 %583, ptr %53, align 8, !tbaa !50
  br label %584

584:                                              ; preds = %581, %577, %572
  %585 = sub i32 %538, %573
  %586 = and i64 %550, 4294967295
  %587 = getelementptr inbounds i8, ptr %537, i64 %586
  br i1 %569, label %2203, label %593

588:                                              ; preds = %536
  %589 = load ptr, ptr %84, align 8, !tbaa !25
  %590 = icmp eq ptr %589, null
  br i1 %590, label %593, label %591

591:                                              ; preds = %588
  %592 = getelementptr inbounds %struct.gz_header_s, ptr %589, i64 0, i32 7
  store ptr null, ptr %592, align 8, !tbaa !65
  br label %593

593:                                              ; preds = %588, %591, %584
  %594 = phi ptr [ %587, %584 ], [ %537, %591 ], [ %537, %588 ]
  %595 = phi i32 [ %585, %584 ], [ %538, %591 ], [ %538, %588 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16187, ptr %21, align 8, !tbaa !16
  br label %596

596:                                              ; preds = %90, %593
  %597 = phi ptr [ %92, %90 ], [ %594, %593 ]
  %598 = phi i32 [ %94, %90 ], [ %595, %593 ]
  %599 = phi i64 [ %96, %90 ], [ %539, %593 ]
  %600 = phi i32 [ %97, %90 ], [ %540, %593 ]
  %601 = load i32, ptr %52, align 8, !tbaa !23
  %602 = and i32 %601, 4096
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %648, label %604

604:                                              ; preds = %596
  %605 = icmp eq i32 %598, 0
  br i1 %605, label %2203, label %606

606:                                              ; preds = %604
  %607 = zext i32 %598 to i64
  br label %608

608:                                              ; preds = %606, %628
  %609 = phi i64 [ 0, %606 ], [ %610, %628 ]
  %610 = add nuw nsw i64 %609, 1
  %611 = getelementptr inbounds i8, ptr %597, i64 %609
  %612 = load i8, ptr %611, align 1, !tbaa !39
  %613 = load ptr, ptr %84, align 8, !tbaa !25
  %614 = icmp eq ptr %613, null
  br i1 %614, label %628, label %615

615:                                              ; preds = %608
  %616 = getelementptr inbounds %struct.gz_header_s, ptr %613, i64 0, i32 9
  %617 = load ptr, ptr %616, align 8, !tbaa !68
  %618 = icmp eq ptr %617, null
  br i1 %618, label %628, label %619

619:                                              ; preds = %615
  %620 = load i32, ptr %56, align 4, !tbaa !61
  %621 = getelementptr inbounds %struct.gz_header_s, ptr %613, i64 0, i32 10
  %622 = load i32, ptr %621, align 8, !tbaa !69
  %623 = icmp ult i32 %620, %622
  br i1 %623, label %624, label %628

624:                                              ; preds = %619
  %625 = add nuw i32 %620, 1
  store i32 %625, ptr %56, align 4, !tbaa !61
  %626 = zext i32 %620 to i64
  %627 = getelementptr inbounds i8, ptr %617, i64 %626
  store i8 %612, ptr %627, align 1, !tbaa !39
  br label %628

628:                                              ; preds = %608, %615, %619, %624
  %629 = icmp ne i8 %612, 0
  %630 = icmp ult i64 %610, %607
  %631 = select i1 %629, i1 %630, i1 false
  br i1 %631, label %608, label %632, !llvm.loop !70

632:                                              ; preds = %628
  %633 = trunc i64 %610 to i32
  %634 = load i32, ptr %52, align 8, !tbaa !23
  %635 = and i32 %634, 512
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %644, label %637

637:                                              ; preds = %632
  %638 = load i32, ptr %49, align 8, !tbaa !19
  %639 = and i32 %638, 4
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %644, label %641

641:                                              ; preds = %637
  %642 = load i64, ptr %53, align 8, !tbaa !50
  %643 = call i64 @crc32(i64 noundef %642, ptr noundef nonnull %597, i32 noundef %633) #9
  store i64 %643, ptr %53, align 8, !tbaa !50
  br label %644

644:                                              ; preds = %641, %637, %632
  %645 = sub i32 %598, %633
  %646 = and i64 %610, 4294967295
  %647 = getelementptr inbounds i8, ptr %597, i64 %646
  br i1 %629, label %2203, label %653

648:                                              ; preds = %596
  %649 = load ptr, ptr %84, align 8, !tbaa !25
  %650 = icmp eq ptr %649, null
  br i1 %650, label %653, label %651

651:                                              ; preds = %648
  %652 = getelementptr inbounds %struct.gz_header_s, ptr %649, i64 0, i32 9
  store ptr null, ptr %652, align 8, !tbaa !68
  br label %653

653:                                              ; preds = %648, %651, %644
  %654 = phi ptr [ %647, %644 ], [ %597, %651 ], [ %597, %648 ]
  %655 = phi i32 [ %645, %644 ], [ %598, %651 ], [ %598, %648 ]
  store i32 16188, ptr %21, align 8, !tbaa !16
  br label %656

656:                                              ; preds = %90, %653
  %657 = phi ptr [ %92, %90 ], [ %654, %653 ]
  %658 = phi i32 [ %94, %90 ], [ %655, %653 ]
  %659 = phi i64 [ %96, %90 ], [ %599, %653 ]
  %660 = phi i32 [ %97, %90 ], [ %600, %653 ]
  %661 = load i32, ptr %52, align 8, !tbaa !23
  %662 = and i32 %661, 512
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %707, label %664

664:                                              ; preds = %656
  %665 = icmp ult i32 %660, 16
  br i1 %665, label %666, label %694

666:                                              ; preds = %664
  %667 = zext nneg i32 %660 to i64
  %668 = icmp eq i32 %658, 0
  br i1 %668, label %2117, label %669

669:                                              ; preds = %666
  %670 = add i32 %658, -1
  %671 = getelementptr inbounds i8, ptr %657, i64 1
  %672 = load i8, ptr %657, align 1, !tbaa !39
  %673 = zext i8 %672 to i64
  %674 = shl nuw nsw i64 %673, %667
  %675 = add i64 %674, %659
  %676 = add nuw nsw i64 %667, 8
  %677 = icmp ult i32 %660, 8
  br i1 %677, label %678, label %688, !llvm.loop !71

678:                                              ; preds = %669
  %679 = icmp eq i32 %670, 0
  br i1 %679, label %2117, label %680

680:                                              ; preds = %678
  %681 = add i32 %658, -2
  %682 = getelementptr inbounds i8, ptr %657, i64 2
  %683 = load i8, ptr %671, align 1, !tbaa !39
  %684 = zext i8 %683 to i64
  %685 = shl nuw nsw i64 %684, %676
  %686 = add i64 %685, %675
  %687 = or disjoint i64 %667, 16
  br label %688

688:                                              ; preds = %680, %669
  %689 = phi i32 [ %670, %669 ], [ %681, %680 ]
  %690 = phi ptr [ %671, %669 ], [ %682, %680 ]
  %691 = phi i64 [ %675, %669 ], [ %686, %680 ]
  %692 = phi i64 [ %676, %669 ], [ %687, %680 ]
  %693 = trunc i64 %692 to i32
  br label %694

694:                                              ; preds = %688, %664
  %695 = phi ptr [ %657, %664 ], [ %690, %688 ]
  %696 = phi i32 [ %658, %664 ], [ %689, %688 ]
  %697 = phi i64 [ %659, %664 ], [ %691, %688 ]
  %698 = phi i32 [ %660, %664 ], [ %693, %688 ]
  %699 = load i32, ptr %49, align 8, !tbaa !19
  %700 = and i32 %699, 4
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %707, label %702

702:                                              ; preds = %694
  %703 = load i64, ptr %53, align 8, !tbaa !50
  %704 = and i64 %703, 65535
  %705 = icmp eq i64 %697, %704
  br i1 %705, label %707, label %706

706:                                              ; preds = %702
  store ptr @.str.5, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

707:                                              ; preds = %702, %694, %656
  %708 = phi ptr [ %657, %656 ], [ %695, %694 ], [ %695, %702 ]
  %709 = phi i32 [ %658, %656 ], [ %696, %694 ], [ %696, %702 ]
  %710 = phi i64 [ %659, %656 ], [ 0, %694 ], [ 0, %702 ]
  %711 = phi i32 [ %660, %656 ], [ 0, %694 ], [ 0, %702 ]
  %712 = load ptr, ptr %84, align 8, !tbaa !25
  %713 = icmp eq ptr %712, null
  br i1 %713, label %719, label %714

714:                                              ; preds = %707
  %715 = lshr i32 %661, 9
  %716 = and i32 %715, 1
  %717 = getelementptr inbounds %struct.gz_header_s, ptr %712, i64 0, i32 11
  store i32 %716, ptr %717, align 4, !tbaa !72
  %718 = getelementptr inbounds %struct.gz_header_s, ptr %712, i64 0, i32 12
  store i32 1, ptr %718, align 8, !tbaa !51
  br label %719

719:                                              ; preds = %714, %707
  %720 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  store i64 %720, ptr %53, align 8, !tbaa !50
  store i64 %720, ptr %54, align 8, !tbaa !20
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %2096

721:                                              ; preds = %116
  %722 = add i32 %94, -1
  %723 = getelementptr inbounds i8, ptr %92, i64 1
  %724 = load i8, ptr %92, align 1, !tbaa !39
  %725 = zext i8 %724 to i64
  %726 = shl nuw nsw i64 %725, %117
  %727 = add i64 %726, %96
  %728 = add nuw nsw i64 %117, 8
  %729 = icmp ult i32 %97, 24
  br i1 %729, label %730, label %761, !llvm.loop !73

730:                                              ; preds = %721
  %731 = icmp eq i32 %722, 0
  br i1 %731, label %2142, label %732

732:                                              ; preds = %730
  %733 = add i32 %94, -2
  %734 = getelementptr inbounds i8, ptr %92, i64 2
  %735 = load i8, ptr %723, align 1, !tbaa !39
  %736 = zext i8 %735 to i64
  %737 = shl nuw nsw i64 %736, %728
  %738 = add i64 %737, %727
  %739 = add nuw nsw i64 %117, 16
  %740 = icmp ult i32 %97, 16
  br i1 %740, label %741, label %761, !llvm.loop !73

741:                                              ; preds = %732
  %742 = icmp eq i32 %733, 0
  br i1 %742, label %2142, label %743

743:                                              ; preds = %741
  %744 = add i32 %94, -3
  %745 = getelementptr inbounds i8, ptr %92, i64 3
  %746 = load i8, ptr %734, align 1, !tbaa !39
  %747 = zext i8 %746 to i64
  %748 = shl nuw nsw i64 %747, %739
  %749 = add i64 %748, %738
  %750 = add nuw nsw i64 %117, 24
  %751 = icmp ult i32 %97, 8
  br i1 %751, label %752, label %761, !llvm.loop !73

752:                                              ; preds = %743
  %753 = icmp eq i32 %744, 0
  br i1 %753, label %2142, label %754

754:                                              ; preds = %752
  %755 = add i32 %94, -4
  %756 = getelementptr inbounds i8, ptr %92, i64 4
  %757 = load i8, ptr %745, align 1, !tbaa !39
  %758 = zext i8 %757 to i64
  %759 = shl nuw nsw i64 %758, %750
  %760 = add i64 %759, %749
  br label %761

761:                                              ; preds = %721, %732, %743, %754, %114
  %762 = phi ptr [ %92, %114 ], [ %723, %721 ], [ %734, %732 ], [ %745, %743 ], [ %756, %754 ]
  %763 = phi i32 [ %94, %114 ], [ %722, %721 ], [ %733, %732 ], [ %744, %743 ], [ %755, %754 ]
  %764 = phi i64 [ %96, %114 ], [ %727, %721 ], [ %738, %732 ], [ %749, %743 ], [ %760, %754 ]
  %765 = trunc i64 %764 to i32
  %766 = call i32 @llvm.bswap.i32(i32 %765)
  %767 = zext i32 %766 to i64
  store i64 %767, ptr %53, align 8, !tbaa !50
  store i64 %767, ptr %54, align 8, !tbaa !20
  store i32 16190, ptr %21, align 8, !tbaa !16
  br label %768

768:                                              ; preds = %90, %761
  %769 = phi ptr [ %92, %90 ], [ %762, %761 ]
  %770 = phi i32 [ %94, %90 ], [ %763, %761 ]
  %771 = phi i64 [ %96, %90 ], [ 0, %761 ]
  %772 = phi i32 [ %97, %90 ], [ 0, %761 ]
  %773 = load i32, ptr %80, align 4, !tbaa !22
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %776

775:                                              ; preds = %768
  store ptr %93, ptr %26, align 8, !tbaa !42
  store i32 %95, ptr %41, align 8, !tbaa !45
  store ptr %769, ptr %0, align 8, !tbaa !43
  store i32 %770, ptr %43, align 8, !tbaa !44
  store i64 %771, ptr %45, align 8, !tbaa !26
  store i32 %772, ptr %47, align 8, !tbaa !27
  br label %2287

776:                                              ; preds = %768
  %777 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  store i64 %777, ptr %53, align 8, !tbaa !50
  store i64 %777, ptr %54, align 8, !tbaa !20
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %778

778:                                              ; preds = %90, %776
  %779 = phi ptr [ %92, %90 ], [ %769, %776 ]
  %780 = phi i32 [ %94, %90 ], [ %770, %776 ]
  %781 = phi i64 [ %96, %90 ], [ %771, %776 ]
  %782 = phi i32 [ %97, %90 ], [ %772, %776 ]
  br i1 %82, label %2203, label %783

783:                                              ; preds = %778, %90
  %784 = phi ptr [ %92, %90 ], [ %779, %778 ]
  %785 = phi i32 [ %94, %90 ], [ %780, %778 ]
  %786 = phi i64 [ %96, %90 ], [ %781, %778 ]
  %787 = phi i32 [ %97, %90 ], [ %782, %778 ]
  %788 = load i32, ptr %83, align 4, !tbaa !21
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %794

790:                                              ; preds = %783
  %791 = icmp ult i32 %787, 3
  br i1 %791, label %792, label %808

792:                                              ; preds = %790
  %793 = icmp eq i32 %785, 0
  br i1 %793, label %2203, label %799

794:                                              ; preds = %783
  %795 = and i32 %787, 7
  %796 = zext nneg i32 %795 to i64
  %797 = lshr i64 %786, %796
  %798 = and i32 %787, -8
  store i32 16206, ptr %21, align 8, !tbaa !16
  br label %2096

799:                                              ; preds = %792
  %800 = or disjoint i32 %787, 8
  %801 = add i32 %785, -1
  %802 = getelementptr inbounds i8, ptr %784, i64 1
  %803 = load i8, ptr %784, align 1, !tbaa !39
  %804 = zext i8 %803 to i64
  %805 = zext nneg i32 %787 to i64
  %806 = shl nuw nsw i64 %804, %805
  %807 = add i64 %806, %786
  br label %808

808:                                              ; preds = %799, %790
  %809 = phi ptr [ %802, %799 ], [ %784, %790 ]
  %810 = phi i32 [ %801, %799 ], [ %785, %790 ]
  %811 = phi i64 [ %807, %799 ], [ %786, %790 ]
  %812 = phi i32 [ %800, %799 ], [ %787, %790 ]
  %813 = trunc i64 %811 to i32
  %814 = and i32 %813, 1
  store i32 %814, ptr %83, align 4, !tbaa !21
  %815 = lshr i32 %813, 1
  %816 = and i32 %815, 3
  switch i32 %816, label %823 [
    i32 0, label %824
    i32 1, label %817
    i32 2, label %821
    i32 3, label %822
  ]

817:                                              ; preds = %808
  store ptr @fixedtables.lenfix, ptr %63, align 8, !tbaa !30
  store i32 9, ptr %64, align 8, !tbaa !74
  store ptr @fixedtables.distfix, ptr %68, align 8, !tbaa !29
  store i32 5, ptr %69, align 4, !tbaa !75
  store i32 16199, ptr %21, align 8, !tbaa !16
  br i1 %70, label %818, label %826

818:                                              ; preds = %817
  %819 = lshr i64 %811, 3
  %820 = add i32 %812, -3
  br label %2203

821:                                              ; preds = %808
  br label %824

822:                                              ; preds = %808
  store ptr @.str.6, ptr %55, align 8, !tbaa !40
  br label %824

823:                                              ; preds = %808
  unreachable

824:                                              ; preds = %808, %822, %821
  %825 = phi i32 [ 16196, %821 ], [ 16209, %822 ], [ 16193, %808 ]
  store i32 %825, ptr %21, align 8, !tbaa !16
  br label %826

826:                                              ; preds = %824, %817
  %827 = lshr i64 %811, 3
  %828 = add i32 %812, -3
  br label %2096

829:                                              ; preds = %90
  %830 = and i32 %97, 7
  %831 = zext nneg i32 %830 to i64
  %832 = lshr i64 %96, %831
  %833 = and i32 %97, -8
  %834 = icmp ult i32 %833, 32
  br i1 %834, label %835, label %885

835:                                              ; preds = %829
  %836 = and i32 %97, -8
  %837 = zext i32 %836 to i64
  %838 = icmp eq i32 %94, 0
  br i1 %838, label %2147, label %839

839:                                              ; preds = %835
  %840 = add i32 %94, -1
  %841 = getelementptr inbounds i8, ptr %92, i64 1
  %842 = load i8, ptr %92, align 1, !tbaa !39
  %843 = zext i8 %842 to i64
  %844 = shl nuw nsw i64 %843, %837
  %845 = add i64 %844, %832
  %846 = add nuw nsw i64 %837, 8
  %847 = icmp ult i32 %836, 24
  br i1 %847, label %848, label %879, !llvm.loop !76

848:                                              ; preds = %839
  %849 = icmp eq i32 %840, 0
  br i1 %849, label %2147, label %850

850:                                              ; preds = %848
  %851 = add i32 %94, -2
  %852 = getelementptr inbounds i8, ptr %92, i64 2
  %853 = load i8, ptr %841, align 1, !tbaa !39
  %854 = zext i8 %853 to i64
  %855 = shl nuw nsw i64 %854, %846
  %856 = add i64 %855, %845
  %857 = add nuw nsw i64 %837, 16
  %858 = icmp ult i32 %836, 16
  br i1 %858, label %859, label %879, !llvm.loop !76

859:                                              ; preds = %850
  %860 = icmp eq i32 %851, 0
  br i1 %860, label %2147, label %861

861:                                              ; preds = %859
  %862 = add i32 %94, -3
  %863 = getelementptr inbounds i8, ptr %92, i64 3
  %864 = load i8, ptr %852, align 1, !tbaa !39
  %865 = zext i8 %864 to i64
  %866 = shl nuw nsw i64 %865, %857
  %867 = add i64 %866, %856
  %868 = add nuw nsw i64 %837, 24
  %869 = icmp eq i32 %836, 0
  br i1 %869, label %870, label %879, !llvm.loop !76

870:                                              ; preds = %861
  %871 = icmp eq i32 %862, 0
  br i1 %871, label %2147, label %872

872:                                              ; preds = %870
  %873 = add i32 %94, -4
  %874 = getelementptr inbounds i8, ptr %92, i64 4
  %875 = load i8, ptr %863, align 1, !tbaa !39
  %876 = zext i8 %875 to i64
  %877 = shl nuw nsw i64 %876, %868
  %878 = add i64 %877, %867
  br label %879

879:                                              ; preds = %872, %861, %850, %839
  %880 = phi i32 [ %840, %839 ], [ %851, %850 ], [ %862, %861 ], [ %873, %872 ]
  %881 = phi ptr [ %841, %839 ], [ %852, %850 ], [ %863, %861 ], [ %874, %872 ]
  %882 = phi i64 [ %845, %839 ], [ %856, %850 ], [ %867, %861 ], [ %878, %872 ]
  %883 = phi i64 [ %846, %839 ], [ %857, %850 ], [ %868, %861 ], [ 32, %872 ]
  %884 = trunc i64 %883 to i32
  br label %885

885:                                              ; preds = %879, %829
  %886 = phi ptr [ %92, %829 ], [ %881, %879 ]
  %887 = phi i32 [ %94, %829 ], [ %880, %879 ]
  %888 = phi i64 [ %832, %829 ], [ %882, %879 ]
  %889 = phi i32 [ %833, %829 ], [ %884, %879 ]
  %890 = and i64 %888, 65535
  %891 = lshr i64 %888, 16
  %892 = xor i64 %891, %890
  %893 = icmp eq i64 %892, 65535
  br i1 %893, label %895, label %894

894:                                              ; preds = %885
  store ptr @.str.7, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

895:                                              ; preds = %885
  %896 = trunc i64 %888 to i32
  %897 = and i32 %896, 65535
  store i32 %897, ptr %56, align 4, !tbaa !61
  store i32 16194, ptr %21, align 8, !tbaa !16
  br i1 %70, label %2203, label %898

898:                                              ; preds = %895, %90
  %899 = phi ptr [ %92, %90 ], [ %886, %895 ]
  %900 = phi i32 [ %94, %90 ], [ %887, %895 ]
  %901 = phi i64 [ %96, %90 ], [ 0, %895 ]
  %902 = phi i32 [ %97, %90 ], [ 0, %895 ]
  store i32 16195, ptr %21, align 8, !tbaa !16
  br label %903

903:                                              ; preds = %90, %898
  %904 = phi ptr [ %92, %90 ], [ %899, %898 ]
  %905 = phi i32 [ %94, %90 ], [ %900, %898 ]
  %906 = phi i64 [ %96, %90 ], [ %901, %898 ]
  %907 = phi i32 [ %97, %90 ], [ %902, %898 ]
  %908 = load i32, ptr %56, align 4, !tbaa !61
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %922, label %910

910:                                              ; preds = %903
  %911 = call i32 @llvm.umin.i32(i32 %908, i32 %905)
  %912 = call i32 @llvm.umin.i32(i32 %911, i32 %95)
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %2203, label %914

914:                                              ; preds = %910
  %915 = zext i32 %912 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %93, ptr align 1 %904, i64 %915, i1 false)
  %916 = sub i32 %905, %912
  %917 = getelementptr inbounds i8, ptr %904, i64 %915
  %918 = sub i32 %95, %912
  %919 = getelementptr inbounds i8, ptr %93, i64 %915
  %920 = load i32, ptr %56, align 4, !tbaa !61
  %921 = sub i32 %920, %912
  store i32 %921, ptr %56, align 4, !tbaa !61
  br label %2096

922:                                              ; preds = %903
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %2096

923:                                              ; preds = %111
  %924 = add i32 %94, -1
  %925 = getelementptr inbounds i8, ptr %92, i64 1
  %926 = load i8, ptr %92, align 1, !tbaa !39
  %927 = zext i8 %926 to i64
  %928 = shl nuw nsw i64 %927, %112
  %929 = add i64 %928, %96
  %930 = add nuw nsw i64 %112, 8
  %931 = icmp ult i32 %97, 6
  br i1 %931, label %932, label %942, !llvm.loop !77

932:                                              ; preds = %923
  %933 = icmp eq i32 %924, 0
  br i1 %933, label %2152, label %934

934:                                              ; preds = %932
  %935 = add i32 %94, -2
  %936 = getelementptr inbounds i8, ptr %92, i64 2
  %937 = load i8, ptr %925, align 1, !tbaa !39
  %938 = zext i8 %937 to i64
  %939 = shl nuw nsw i64 %938, %930
  %940 = add i64 %939, %929
  %941 = or disjoint i64 %112, 16
  br label %942

942:                                              ; preds = %934, %923
  %943 = phi i32 [ %924, %923 ], [ %935, %934 ]
  %944 = phi ptr [ %925, %923 ], [ %936, %934 ]
  %945 = phi i64 [ %929, %923 ], [ %940, %934 ]
  %946 = phi i64 [ %930, %923 ], [ %941, %934 ]
  %947 = trunc i64 %946 to i32
  br label %948

948:                                              ; preds = %942, %109
  %949 = phi ptr [ %92, %109 ], [ %944, %942 ]
  %950 = phi i32 [ %94, %109 ], [ %943, %942 ]
  %951 = phi i64 [ %96, %109 ], [ %945, %942 ]
  %952 = phi i32 [ %97, %109 ], [ %947, %942 ]
  %953 = trunc i64 %951 to i32
  %954 = and i32 %953, 31
  %955 = add nuw nsw i32 %954, 257
  store i32 %955, ptr %57, align 4, !tbaa !78
  %956 = lshr i32 %953, 5
  %957 = and i32 %956, 31
  %958 = add nuw nsw i32 %957, 1
  store i32 %958, ptr %58, align 8, !tbaa !79
  %959 = lshr i32 %953, 10
  %960 = and i32 %959, 15
  %961 = add nuw nsw i32 %960, 4
  store i32 %961, ptr %59, align 8, !tbaa !80
  %962 = lshr i64 %951, 14
  %963 = add i32 %952, -14
  %964 = icmp ugt i32 %954, 29
  %965 = icmp ugt i32 %957, 29
  %966 = or i1 %964, %965
  br i1 %966, label %967, label %968

967:                                              ; preds = %948
  store ptr @.str.8, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

968:                                              ; preds = %948
  store i32 0, ptr %60, align 4, !tbaa !47
  store i32 16197, ptr %21, align 8, !tbaa !16
  br label %973

969:                                              ; preds = %90
  %970 = load i32, ptr %59, align 8, !tbaa !80
  %971 = load i32, ptr %60, align 4, !tbaa !47
  %972 = icmp ult i32 %971, %970
  br i1 %972, label %973, label %982

973:                                              ; preds = %968, %969
  %974 = phi i32 [ %963, %968 ], [ %97, %969 ]
  %975 = phi i64 [ %962, %968 ], [ %96, %969 ]
  %976 = phi i32 [ %950, %968 ], [ %94, %969 ]
  %977 = phi ptr [ %949, %968 ], [ %92, %969 ]
  %978 = phi i32 [ %961, %968 ], [ %970, %969 ]
  %979 = phi i32 [ 0, %968 ], [ %971, %969 ]
  %980 = zext i32 %979 to i64
  %981 = zext i32 %978 to i64
  br label %991

982:                                              ; preds = %1009, %969
  %983 = phi ptr [ %92, %969 ], [ %1010, %1009 ]
  %984 = phi i32 [ %94, %969 ], [ %1011, %1009 ]
  %985 = phi i64 [ %96, %969 ], [ %1022, %1009 ]
  %986 = phi i32 [ %97, %969 ], [ %1023, %1009 ]
  %987 = phi i32 [ %971, %969 ], [ %978, %1009 ]
  %988 = icmp ult i32 %987, 19
  br i1 %988, label %989, label %1035

989:                                              ; preds = %982
  %990 = zext nneg i32 %987 to i64
  br label %1025

991:                                              ; preds = %973, %1009
  %992 = phi i64 [ %980, %973 ], [ %1016, %1009 ]
  %993 = phi i32 [ %974, %973 ], [ %1023, %1009 ]
  %994 = phi i64 [ %975, %973 ], [ %1022, %1009 ]
  %995 = phi i32 [ %976, %973 ], [ %1011, %1009 ]
  %996 = phi ptr [ %977, %973 ], [ %1010, %1009 ]
  %997 = icmp ult i32 %993, 3
  br i1 %997, label %998, label %1009

998:                                              ; preds = %991
  %999 = icmp eq i32 %995, 0
  br i1 %999, label %2203, label %1000

1000:                                             ; preds = %998
  %1001 = or disjoint i32 %993, 8
  %1002 = add i32 %995, -1
  %1003 = getelementptr inbounds i8, ptr %996, i64 1
  %1004 = load i8, ptr %996, align 1, !tbaa !39
  %1005 = zext i8 %1004 to i64
  %1006 = zext nneg i32 %993 to i64
  %1007 = shl nuw nsw i64 %1005, %1006
  %1008 = add i64 %1007, %994
  br label %1009

1009:                                             ; preds = %1000, %991
  %1010 = phi ptr [ %1003, %1000 ], [ %996, %991 ]
  %1011 = phi i32 [ %1002, %1000 ], [ %995, %991 ]
  %1012 = phi i64 [ %1008, %1000 ], [ %994, %991 ]
  %1013 = phi i32 [ %1001, %1000 ], [ %993, %991 ]
  %1014 = trunc i64 %1012 to i16
  %1015 = and i16 %1014, 7
  %1016 = add nuw nsw i64 %992, 1
  %1017 = trunc i64 %1016 to i32
  store i32 %1017, ptr %60, align 4, !tbaa !47
  %1018 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %992
  %1019 = load i16, ptr %1018, align 2, !tbaa !81
  %1020 = zext i16 %1019 to i64
  %1021 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1020
  store i16 %1015, ptr %1021, align 2, !tbaa !81
  %1022 = lshr i64 %1012, 3
  %1023 = add i32 %1013, -3
  %1024 = icmp eq i64 %1016, %981
  br i1 %1024, label %982, label %991, !llvm.loop !83

1025:                                             ; preds = %989, %1025
  %1026 = phi i64 [ %990, %989 ], [ %1027, %1025 ]
  %1027 = add nuw nsw i64 %1026, 1
  %1028 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %1026
  %1029 = load i16, ptr %1028, align 2, !tbaa !81
  %1030 = zext i16 %1029 to i64
  %1031 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1030
  store i16 0, ptr %1031, align 2, !tbaa !81
  %1032 = and i64 %1027, 4294967295
  %1033 = icmp eq i64 %1032, 19
  br i1 %1033, label %1034, label %1025, !llvm.loop !84

1034:                                             ; preds = %1025
  store i32 19, ptr %60, align 4, !tbaa !47
  br label %1035

1035:                                             ; preds = %1034, %982
  store ptr %61, ptr %62, align 8, !tbaa !28
  store ptr %61, ptr %63, align 8, !tbaa !30
  store i32 7, ptr %64, align 8, !tbaa !74
  %1036 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %65, i32 noundef 19, ptr noundef nonnull %62, ptr noundef nonnull %64, ptr noundef nonnull %66) #9
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1039, label %1038

1038:                                             ; preds = %1035
  store ptr @.str.9, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

1039:                                             ; preds = %1035
  store i32 0, ptr %60, align 4, !tbaa !47
  store i32 16198, ptr %21, align 8, !tbaa !16
  br label %1040

1040:                                             ; preds = %105, %1039
  %1041 = phi i32 [ %106, %105 ], [ 0, %1039 ]
  %1042 = phi ptr [ %92, %105 ], [ %983, %1039 ]
  %1043 = phi i32 [ %94, %105 ], [ %984, %1039 ]
  %1044 = phi i64 [ %96, %105 ], [ %985, %1039 ]
  %1045 = phi i32 [ %97, %105 ], [ %986, %1039 ]
  %1046 = phi i32 [ %99, %105 ], [ 0, %1039 ]
  %1047 = load i32, ptr %57, align 4, !tbaa !78
  %1048 = load i32, ptr %58, align 8, !tbaa !79
  %1049 = add i32 %1048, %1047
  %1050 = icmp ult i32 %1041, %1049
  br i1 %1050, label %1051, label %1344

1051:                                             ; preds = %1040
  %1052 = load ptr, ptr %63, align 8, !tbaa !30
  %1053 = load i32, ptr %64, align 8, !tbaa !74
  %1054 = shl nsw i32 -1, %1053
  %1055 = xor i32 %1054, -1
  br label %1056

1056:                                             ; preds = %1051, %1337
  %1057 = phi i32 [ %1045, %1051 ], [ %1342, %1337 ]
  %1058 = phi i64 [ %1044, %1051 ], [ %1341, %1337 ]
  %1059 = phi i32 [ %1043, %1051 ], [ %1340, %1337 ]
  %1060 = phi ptr [ %1042, %1051 ], [ %1339, %1337 ]
  %1061 = phi i32 [ %1041, %1051 ], [ %1338, %1337 ]
  %1062 = trunc i64 %1058 to i32
  %1063 = and i32 %1055, %1062
  %1064 = zext nneg i32 %1063 to i64
  %1065 = getelementptr inbounds %struct.code, ptr %1052, i64 %1064, i32 1
  %1066 = load i8, ptr %1065, align 1, !tbaa.struct !85
  %1067 = zext i8 %1066 to i32
  %1068 = icmp ult i32 %1057, %1067
  br i1 %1068, label %1069, label %1095

1069:                                             ; preds = %1056
  %1070 = zext nneg i32 %1057 to i64
  br label %1071

1071:                                             ; preds = %1069, %1077
  %1072 = phi i64 [ %1070, %1069 ], [ %1084, %1077 ]
  %1073 = phi i64 [ %1058, %1069 ], [ %1083, %1077 ]
  %1074 = phi i32 [ %1059, %1069 ], [ %1078, %1077 ]
  %1075 = phi ptr [ %1060, %1069 ], [ %1079, %1077 ]
  %1076 = icmp eq i32 %1074, 0
  br i1 %1076, label %2167, label %1077

1077:                                             ; preds = %1071
  %1078 = add i32 %1074, -1
  %1079 = getelementptr inbounds i8, ptr %1075, i64 1
  %1080 = load i8, ptr %1075, align 1, !tbaa !39
  %1081 = zext i8 %1080 to i64
  %1082 = shl i64 %1081, %1072
  %1083 = add i64 %1082, %1073
  %1084 = add nuw nsw i64 %1072, 8
  %1085 = trunc i64 %1083 to i32
  %1086 = and i32 %1055, %1085
  %1087 = zext nneg i32 %1086 to i64
  %1088 = getelementptr inbounds %struct.code, ptr %1052, i64 %1087, i32 1
  %1089 = load i8, ptr %1088, align 1, !tbaa.struct !85
  %1090 = zext i8 %1089 to i64
  %1091 = icmp ult i64 %1084, %1090
  br i1 %1091, label %1071, label %1092

1092:                                             ; preds = %1077
  %1093 = zext i8 %1089 to i32
  %1094 = trunc i64 %1084 to i32
  br label %1095

1095:                                             ; preds = %1092, %1056
  %1096 = phi i64 [ %1064, %1056 ], [ %1087, %1092 ]
  %1097 = phi i32 [ %1067, %1056 ], [ %1093, %1092 ]
  %1098 = phi ptr [ %1060, %1056 ], [ %1079, %1092 ]
  %1099 = phi i32 [ %1059, %1056 ], [ %1078, %1092 ]
  %1100 = phi i64 [ %1058, %1056 ], [ %1083, %1092 ]
  %1101 = phi i32 [ %1057, %1056 ], [ %1094, %1092 ]
  %1102 = phi i8 [ %1066, %1056 ], [ %1089, %1092 ]
  %1103 = getelementptr inbounds %struct.code, ptr %1052, i64 %1096, i32 2
  %1104 = load i16, ptr %1103, align 2, !tbaa.struct !86
  %1105 = icmp ult i16 %1104, 16
  br i1 %1105, label %1106, label %1113

1106:                                             ; preds = %1095
  %1107 = zext nneg i8 %1102 to i64
  %1108 = lshr i64 %1100, %1107
  %1109 = sub i32 %1101, %1097
  %1110 = add i32 %1061, 1
  store i32 %1110, ptr %60, align 4, !tbaa !47
  %1111 = zext i32 %1061 to i64
  %1112 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1111
  store i16 %1104, ptr %1112, align 2, !tbaa !81
  br label %1337

1113:                                             ; preds = %1095
  switch i16 %1104, label %1126 [
    i16 16, label %1120
    i16 17, label %1114
  ]

1114:                                             ; preds = %1113
  %1115 = add nuw nsw i32 %1097, 3
  %1116 = icmp ult i32 %1101, %1115
  br i1 %1116, label %1117, label %1186

1117:                                             ; preds = %1114
  %1118 = zext nneg i32 %1101 to i64
  %1119 = zext nneg i32 %1115 to i64
  br label %1169

1120:                                             ; preds = %1113
  %1121 = add nuw nsw i32 %1097, 2
  %1122 = icmp ult i32 %1101, %1121
  br i1 %1122, label %1123, label %1149

1123:                                             ; preds = %1120
  %1124 = zext nneg i32 %1101 to i64
  %1125 = zext nneg i32 %1121 to i64
  br label %1132

1126:                                             ; preds = %1113
  %1127 = add nuw nsw i32 %1097, 7
  %1128 = icmp ult i32 %1101, %1127
  br i1 %1128, label %1129, label %1216

1129:                                             ; preds = %1126
  %1130 = zext nneg i32 %1101 to i64
  %1131 = zext nneg i32 %1127 to i64
  br label %1199

1132:                                             ; preds = %1123, %1138
  %1133 = phi i64 [ %1124, %1123 ], [ %1145, %1138 ]
  %1134 = phi i64 [ %1100, %1123 ], [ %1144, %1138 ]
  %1135 = phi i32 [ %1099, %1123 ], [ %1139, %1138 ]
  %1136 = phi ptr [ %1098, %1123 ], [ %1140, %1138 ]
  %1137 = icmp eq i32 %1135, 0
  br i1 %1137, label %2108, label %1138

1138:                                             ; preds = %1132
  %1139 = add i32 %1135, -1
  %1140 = getelementptr inbounds i8, ptr %1136, i64 1
  %1141 = load i8, ptr %1136, align 1, !tbaa !39
  %1142 = zext i8 %1141 to i64
  %1143 = shl i64 %1142, %1133
  %1144 = add i64 %1143, %1134
  %1145 = add nuw nsw i64 %1133, 8
  %1146 = icmp ult i64 %1145, %1125
  br i1 %1146, label %1132, label %1147, !llvm.loop !87

1147:                                             ; preds = %1138
  %1148 = trunc i64 %1145 to i32
  br label %1149

1149:                                             ; preds = %1147, %1120
  %1150 = phi ptr [ %1098, %1120 ], [ %1140, %1147 ]
  %1151 = phi i32 [ %1099, %1120 ], [ %1139, %1147 ]
  %1152 = phi i64 [ %1100, %1120 ], [ %1144, %1147 ]
  %1153 = phi i32 [ %1101, %1120 ], [ %1148, %1147 ]
  %1154 = zext nneg i8 %1102 to i64
  %1155 = lshr i64 %1152, %1154
  %1156 = sub i32 %1153, %1097
  %1157 = icmp eq i32 %1061, 0
  br i1 %1157, label %1158, label %1159

1158:                                             ; preds = %1149
  store ptr @.str.10, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

1159:                                             ; preds = %1149
  %1160 = add i32 %1061, -1
  %1161 = zext i32 %1160 to i64
  %1162 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1161
  %1163 = load i16, ptr %1162, align 2, !tbaa !81
  %1164 = trunc i64 %1155 to i32
  %1165 = and i32 %1164, 3
  %1166 = add nuw nsw i32 %1165, 3
  %1167 = lshr i64 %1155, 2
  %1168 = add i32 %1156, -2
  br label %1229

1169:                                             ; preds = %1117, %1175
  %1170 = phi i64 [ %1118, %1117 ], [ %1182, %1175 ]
  %1171 = phi i64 [ %1100, %1117 ], [ %1181, %1175 ]
  %1172 = phi i32 [ %1099, %1117 ], [ %1176, %1175 ]
  %1173 = phi ptr [ %1098, %1117 ], [ %1177, %1175 ]
  %1174 = icmp eq i32 %1172, 0
  br i1 %1174, label %2110, label %1175

1175:                                             ; preds = %1169
  %1176 = add i32 %1172, -1
  %1177 = getelementptr inbounds i8, ptr %1173, i64 1
  %1178 = load i8, ptr %1173, align 1, !tbaa !39
  %1179 = zext i8 %1178 to i64
  %1180 = shl i64 %1179, %1170
  %1181 = add i64 %1180, %1171
  %1182 = add nuw nsw i64 %1170, 8
  %1183 = icmp ult i64 %1182, %1119
  br i1 %1183, label %1169, label %1184, !llvm.loop !88

1184:                                             ; preds = %1175
  %1185 = trunc i64 %1182 to i32
  br label %1186

1186:                                             ; preds = %1184, %1114
  %1187 = phi ptr [ %1098, %1114 ], [ %1177, %1184 ]
  %1188 = phi i32 [ %1099, %1114 ], [ %1176, %1184 ]
  %1189 = phi i64 [ %1100, %1114 ], [ %1181, %1184 ]
  %1190 = phi i32 [ %1101, %1114 ], [ %1185, %1184 ]
  %1191 = zext nneg i8 %1102 to i64
  %1192 = lshr i64 %1189, %1191
  %1193 = trunc i64 %1192 to i32
  %1194 = and i32 %1193, 7
  %1195 = add nuw nsw i32 %1194, 3
  %1196 = lshr i64 %1192, 3
  %1197 = sub i32 %1190, %1097
  %1198 = add i32 %1197, -3
  br label %1229

1199:                                             ; preds = %1129, %1205
  %1200 = phi i64 [ %1130, %1129 ], [ %1212, %1205 ]
  %1201 = phi i64 [ %1100, %1129 ], [ %1211, %1205 ]
  %1202 = phi i32 [ %1099, %1129 ], [ %1206, %1205 ]
  %1203 = phi ptr [ %1098, %1129 ], [ %1207, %1205 ]
  %1204 = icmp eq i32 %1202, 0
  br i1 %1204, label %2106, label %1205

1205:                                             ; preds = %1199
  %1206 = add i32 %1202, -1
  %1207 = getelementptr inbounds i8, ptr %1203, i64 1
  %1208 = load i8, ptr %1203, align 1, !tbaa !39
  %1209 = zext i8 %1208 to i64
  %1210 = shl i64 %1209, %1200
  %1211 = add i64 %1210, %1201
  %1212 = add nuw nsw i64 %1200, 8
  %1213 = icmp ult i64 %1212, %1131
  br i1 %1213, label %1199, label %1214, !llvm.loop !89

1214:                                             ; preds = %1205
  %1215 = trunc i64 %1212 to i32
  br label %1216

1216:                                             ; preds = %1214, %1126
  %1217 = phi ptr [ %1098, %1126 ], [ %1207, %1214 ]
  %1218 = phi i32 [ %1099, %1126 ], [ %1206, %1214 ]
  %1219 = phi i64 [ %1100, %1126 ], [ %1211, %1214 ]
  %1220 = phi i32 [ %1101, %1126 ], [ %1215, %1214 ]
  %1221 = zext nneg i8 %1102 to i64
  %1222 = lshr i64 %1219, %1221
  %1223 = trunc i64 %1222 to i32
  %1224 = and i32 %1223, 127
  %1225 = add nuw nsw i32 %1224, 11
  %1226 = lshr i64 %1222, 7
  %1227 = sub i32 %1220, %1097
  %1228 = add i32 %1227, -7
  br label %1229

1229:                                             ; preds = %1186, %1216, %1159
  %1230 = phi ptr [ %1150, %1159 ], [ %1187, %1186 ], [ %1217, %1216 ]
  %1231 = phi i32 [ %1151, %1159 ], [ %1188, %1186 ], [ %1218, %1216 ]
  %1232 = phi i64 [ %1167, %1159 ], [ %1196, %1186 ], [ %1226, %1216 ]
  %1233 = phi i32 [ %1168, %1159 ], [ %1198, %1186 ], [ %1228, %1216 ]
  %1234 = phi i32 [ %1166, %1159 ], [ %1195, %1186 ], [ %1225, %1216 ]
  %1235 = phi i16 [ %1163, %1159 ], [ 0, %1186 ], [ 0, %1216 ]
  %1236 = add i32 %1234, %1061
  %1237 = icmp ugt i32 %1236, %1049
  br i1 %1237, label %1317, label %1238

1238:                                             ; preds = %1229
  %1239 = icmp ult i32 %1234, 16
  %1240 = sub nsw i32 0, %1234
  %1241 = icmp ugt i32 %1061, %1240
  %1242 = select i1 %1239, i1 true, i1 %1241
  br i1 %1242, label %1296, label %1243

1243:                                             ; preds = %1238
  %1244 = and i32 %1234, -16
  %1245 = and i32 %1234, 15
  %1246 = add i32 %1061, %1244
  %1247 = insertelement <8 x i16> poison, i16 %1235, i64 0
  %1248 = shufflevector <8 x i16> %1247, <8 x i16> poison, <8 x i32> zeroinitializer
  %1249 = zext i32 %1061 to i64
  %1250 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1249
  %1251 = getelementptr inbounds i16, ptr %1250, i64 8
  store <8 x i16> %1248, ptr %1250, align 2, !tbaa !81
  store <8 x i16> %1248, ptr %1251, align 2, !tbaa !81
  %1252 = icmp eq i32 %1244, 16
  br i1 %1252, label %1294, label %1253, !llvm.loop !90

1253:                                             ; preds = %1243
  %1254 = add i32 %1061, 16
  %1255 = zext i32 %1254 to i64
  %1256 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1255
  %1257 = getelementptr inbounds i16, ptr %1256, i64 8
  store <8 x i16> %1248, ptr %1256, align 2, !tbaa !81
  store <8 x i16> %1248, ptr %1257, align 2, !tbaa !81
  %1258 = icmp eq i32 %1244, 32
  br i1 %1258, label %1294, label %1259, !llvm.loop !90

1259:                                             ; preds = %1253
  %1260 = add i32 %1061, 32
  %1261 = zext i32 %1260 to i64
  %1262 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1261
  %1263 = getelementptr inbounds i16, ptr %1262, i64 8
  store <8 x i16> %1248, ptr %1262, align 2, !tbaa !81
  store <8 x i16> %1248, ptr %1263, align 2, !tbaa !81
  %1264 = icmp eq i32 %1244, 48
  br i1 %1264, label %1294, label %1265, !llvm.loop !90

1265:                                             ; preds = %1259
  %1266 = add i32 %1061, 48
  %1267 = zext i32 %1266 to i64
  %1268 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1267
  %1269 = getelementptr inbounds i16, ptr %1268, i64 8
  store <8 x i16> %1248, ptr %1268, align 2, !tbaa !81
  store <8 x i16> %1248, ptr %1269, align 2, !tbaa !81
  %1270 = icmp eq i32 %1244, 64
  br i1 %1270, label %1294, label %1271, !llvm.loop !90

1271:                                             ; preds = %1265
  %1272 = add i32 %1061, 64
  %1273 = zext i32 %1272 to i64
  %1274 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1273
  %1275 = getelementptr inbounds i16, ptr %1274, i64 8
  store <8 x i16> %1248, ptr %1274, align 2, !tbaa !81
  store <8 x i16> %1248, ptr %1275, align 2, !tbaa !81
  %1276 = icmp eq i32 %1244, 80
  br i1 %1276, label %1294, label %1277, !llvm.loop !90

1277:                                             ; preds = %1271
  %1278 = add i32 %1061, 80
  %1279 = zext i32 %1278 to i64
  %1280 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1279
  %1281 = getelementptr inbounds i16, ptr %1280, i64 8
  store <8 x i16> %1248, ptr %1280, align 2, !tbaa !81
  store <8 x i16> %1248, ptr %1281, align 2, !tbaa !81
  %1282 = icmp eq i32 %1244, 96
  br i1 %1282, label %1294, label %1283, !llvm.loop !90

1283:                                             ; preds = %1277
  %1284 = add i32 %1061, 96
  %1285 = zext i32 %1284 to i64
  %1286 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1285
  %1287 = getelementptr inbounds i16, ptr %1286, i64 8
  store <8 x i16> %1248, ptr %1286, align 2, !tbaa !81
  store <8 x i16> %1248, ptr %1287, align 2, !tbaa !81
  %1288 = icmp eq i32 %1244, 112
  br i1 %1288, label %1294, label %1289, !llvm.loop !90

1289:                                             ; preds = %1283
  %1290 = add i32 %1061, 112
  %1291 = zext i32 %1290 to i64
  %1292 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1291
  %1293 = getelementptr inbounds i16, ptr %1292, i64 8
  store <8 x i16> %1248, ptr %1292, align 2, !tbaa !81
  store <8 x i16> %1248, ptr %1293, align 2, !tbaa !81
  br label %1294

1294:                                             ; preds = %1289, %1283, %1277, %1271, %1265, %1259, %1253, %1243
  %1295 = icmp eq i32 %1234, %1244
  br i1 %1295, label %1335, label %1296

1296:                                             ; preds = %1238, %1294
  %1297 = phi i32 [ %1234, %1238 ], [ %1245, %1294 ]
  %1298 = phi i32 [ %1061, %1238 ], [ %1246, %1294 ]
  %1299 = add nsw i32 %1297, -1
  %1300 = and i32 %1297, 3
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1312, label %1302

1302:                                             ; preds = %1296, %1302
  %1303 = phi i32 [ %1306, %1302 ], [ %1297, %1296 ]
  %1304 = phi i32 [ %1307, %1302 ], [ %1298, %1296 ]
  %1305 = phi i32 [ %1310, %1302 ], [ 0, %1296 ]
  %1306 = add nsw i32 %1303, -1
  %1307 = add i32 %1304, 1
  %1308 = zext i32 %1304 to i64
  %1309 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1308
  store i16 %1235, ptr %1309, align 2, !tbaa !81
  %1310 = add i32 %1305, 1
  %1311 = icmp eq i32 %1310, %1300
  br i1 %1311, label %1312, label %1302, !llvm.loop !93

1312:                                             ; preds = %1302, %1296
  %1313 = phi i32 [ undef, %1296 ], [ %1307, %1302 ]
  %1314 = phi i32 [ %1297, %1296 ], [ %1306, %1302 ]
  %1315 = phi i32 [ %1298, %1296 ], [ %1307, %1302 ]
  %1316 = icmp ult i32 %1299, 3
  br i1 %1316, label %1335, label %1318

1317:                                             ; preds = %1229
  store ptr @.str.10, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

1318:                                             ; preds = %1312, %1318
  %1319 = phi i32 [ %1330, %1318 ], [ %1314, %1312 ]
  %1320 = phi i32 [ %1331, %1318 ], [ %1315, %1312 ]
  %1321 = add i32 %1320, 1
  %1322 = zext i32 %1320 to i64
  %1323 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1322
  store i16 %1235, ptr %1323, align 2, !tbaa !81
  %1324 = add i32 %1320, 2
  %1325 = zext i32 %1321 to i64
  %1326 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1325
  store i16 %1235, ptr %1326, align 2, !tbaa !81
  %1327 = add i32 %1320, 3
  %1328 = zext i32 %1324 to i64
  %1329 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1328
  store i16 %1235, ptr %1329, align 2, !tbaa !81
  %1330 = add nsw i32 %1319, -4
  %1331 = add i32 %1320, 4
  %1332 = zext i32 %1327 to i64
  %1333 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1332
  store i16 %1235, ptr %1333, align 2, !tbaa !81
  %1334 = icmp eq i32 %1330, 0
  br i1 %1334, label %1335, label %1318, !llvm.loop !95

1335:                                             ; preds = %1312, %1318, %1294
  %1336 = phi i32 [ %1246, %1294 ], [ %1313, %1312 ], [ %1331, %1318 ]
  store i32 %1336, ptr %60, align 4, !tbaa !47
  br label %1337

1337:                                             ; preds = %1335, %1106
  %1338 = phi i32 [ %1110, %1106 ], [ %1336, %1335 ]
  %1339 = phi ptr [ %1098, %1106 ], [ %1230, %1335 ]
  %1340 = phi i32 [ %1099, %1106 ], [ %1231, %1335 ]
  %1341 = phi i64 [ %1108, %1106 ], [ %1232, %1335 ]
  %1342 = phi i32 [ %1109, %1106 ], [ %1233, %1335 ]
  %1343 = icmp ult i32 %1338, %1049
  br i1 %1343, label %1056, label %1344, !llvm.loop !96

1344:                                             ; preds = %1337, %1040
  %1345 = phi ptr [ %1042, %1040 ], [ %1339, %1337 ]
  %1346 = phi i32 [ %1043, %1040 ], [ %1340, %1337 ]
  %1347 = phi i64 [ %1044, %1040 ], [ %1341, %1337 ]
  %1348 = phi i32 [ %1045, %1040 ], [ %1342, %1337 ]
  %1349 = load i16, ptr %67, align 8, !tbaa !81
  %1350 = icmp eq i16 %1349, 0
  br i1 %1350, label %1351, label %1352

1351:                                             ; preds = %1344
  store ptr @.str.11, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

1352:                                             ; preds = %1344
  store ptr %61, ptr %62, align 8, !tbaa !28
  store ptr %61, ptr %63, align 8, !tbaa !30
  store i32 9, ptr %64, align 8, !tbaa !74
  %1353 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %65, i32 noundef %1047, ptr noundef nonnull %62, ptr noundef nonnull %64, ptr noundef nonnull %66) #9
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1356, label %1355

1355:                                             ; preds = %1352
  store ptr @.str.12, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

1356:                                             ; preds = %1352
  %1357 = load ptr, ptr %62, align 8, !tbaa !28
  store ptr %1357, ptr %68, align 8, !tbaa !29
  store i32 6, ptr %69, align 4, !tbaa !75
  %1358 = load i32, ptr %57, align 4, !tbaa !78
  %1359 = zext i32 %1358 to i64
  %1360 = getelementptr inbounds i16, ptr %65, i64 %1359
  %1361 = load i32, ptr %58, align 8, !tbaa !79
  %1362 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1360, i32 noundef %1361, ptr noundef nonnull %62, ptr noundef nonnull %69, ptr noundef nonnull %66) #9
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1365, label %1364

1364:                                             ; preds = %1356
  store ptr @.str.13, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

1365:                                             ; preds = %1356
  store i32 16199, ptr %21, align 8, !tbaa !16
  br i1 %70, label %2203, label %1366

1366:                                             ; preds = %1365, %90
  %1367 = phi ptr [ %92, %90 ], [ %1345, %1365 ]
  %1368 = phi i32 [ %94, %90 ], [ %1346, %1365 ]
  %1369 = phi i64 [ %96, %90 ], [ %1347, %1365 ]
  %1370 = phi i32 [ %97, %90 ], [ %1348, %1365 ]
  %1371 = phi i32 [ %99, %90 ], [ 0, %1365 ]
  store i32 16200, ptr %21, align 8, !tbaa !16
  br label %1372

1372:                                             ; preds = %90, %1366
  %1373 = phi ptr [ %92, %90 ], [ %1367, %1366 ]
  %1374 = phi i32 [ %94, %90 ], [ %1368, %1366 ]
  %1375 = phi i64 [ %96, %90 ], [ %1369, %1366 ]
  %1376 = phi i32 [ %97, %90 ], [ %1370, %1366 ]
  %1377 = phi i32 [ %99, %90 ], [ %1371, %1366 ]
  %1378 = icmp ugt i32 %1374, 5
  %1379 = icmp ugt i32 %95, 257
  %1380 = select i1 %1378, i1 %1379, i1 false
  br i1 %1380, label %1381, label %1391

1381:                                             ; preds = %1372
  store ptr %93, ptr %26, align 8, !tbaa !42
  store i32 %95, ptr %41, align 8, !tbaa !45
  store ptr %1373, ptr %0, align 8, !tbaa !43
  store i32 %1374, ptr %43, align 8, !tbaa !44
  store i64 %1375, ptr %45, align 8, !tbaa !26
  store i32 %1376, ptr %47, align 8, !tbaa !27
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %98) #9
  %1382 = load ptr, ptr %26, align 8, !tbaa !42
  %1383 = load i32, ptr %41, align 8, !tbaa !45
  %1384 = load ptr, ptr %0, align 8, !tbaa !43
  %1385 = load i32, ptr %43, align 8, !tbaa !44
  %1386 = load i64, ptr %45, align 8, !tbaa !26
  %1387 = load i32, ptr %47, align 8, !tbaa !27
  %1388 = load i32, ptr %21, align 8, !tbaa !16
  %1389 = icmp eq i32 %1388, 16191
  br i1 %1389, label %1390, label %2096

1390:                                             ; preds = %1381
  store i32 -1, ptr %71, align 4, !tbaa !32
  br label %2096

1391:                                             ; preds = %1372
  store i32 0, ptr %71, align 4, !tbaa !32
  %1392 = load ptr, ptr %63, align 8, !tbaa !30
  %1393 = load i32, ptr %64, align 8, !tbaa !74
  %1394 = shl nsw i32 -1, %1393
  %1395 = xor i32 %1394, -1
  %1396 = trunc i64 %1375 to i32
  %1397 = and i32 %1395, %1396
  %1398 = zext nneg i32 %1397 to i64
  %1399 = getelementptr inbounds %struct.code, ptr %1392, i64 %1398
  %1400 = getelementptr inbounds i8, ptr %1399, i64 1
  %1401 = load i8, ptr %1400, align 1, !tbaa.struct !85
  %1402 = zext i8 %1401 to i32
  %1403 = icmp ult i32 %1376, %1402
  br i1 %1403, label %1404, label %1431

1404:                                             ; preds = %1391
  %1405 = zext nneg i32 %1376 to i64
  br label %1406

1406:                                             ; preds = %1404, %1412
  %1407 = phi i64 [ %1405, %1404 ], [ %1419, %1412 ]
  %1408 = phi i64 [ %1375, %1404 ], [ %1418, %1412 ]
  %1409 = phi i32 [ %1374, %1404 ], [ %1413, %1412 ]
  %1410 = phi ptr [ %1373, %1404 ], [ %1414, %1412 ]
  %1411 = icmp eq i32 %1409, 0
  br i1 %1411, label %2197, label %1412

1412:                                             ; preds = %1406
  %1413 = add i32 %1409, -1
  %1414 = getelementptr inbounds i8, ptr %1410, i64 1
  %1415 = load i8, ptr %1410, align 1, !tbaa !39
  %1416 = zext i8 %1415 to i64
  %1417 = shl i64 %1416, %1407
  %1418 = add i64 %1417, %1408
  %1419 = add nuw nsw i64 %1407, 8
  %1420 = trunc i64 %1418 to i32
  %1421 = and i32 %1395, %1420
  %1422 = zext nneg i32 %1421 to i64
  %1423 = getelementptr inbounds %struct.code, ptr %1392, i64 %1422
  %1424 = getelementptr inbounds i8, ptr %1423, i64 1
  %1425 = load i8, ptr %1424, align 1, !tbaa.struct !85
  %1426 = zext i8 %1425 to i64
  %1427 = icmp ult i64 %1419, %1426
  br i1 %1427, label %1406, label %1428

1428:                                             ; preds = %1412
  %1429 = zext i8 %1425 to i32
  %1430 = trunc i64 %1419 to i32
  br label %1431

1431:                                             ; preds = %1428, %1391
  %1432 = phi ptr [ %1399, %1391 ], [ %1423, %1428 ]
  %1433 = phi ptr [ %1373, %1391 ], [ %1414, %1428 ]
  %1434 = phi i32 [ %1374, %1391 ], [ %1413, %1428 ]
  %1435 = phi i64 [ %1375, %1391 ], [ %1418, %1428 ]
  %1436 = phi i32 [ %1376, %1391 ], [ %1430, %1428 ]
  %1437 = phi i8 [ %1401, %1391 ], [ %1425, %1428 ]
  %1438 = phi i32 [ %1402, %1391 ], [ %1429, %1428 ]
  %1439 = getelementptr inbounds i8, ptr %1432, i64 2
  %1440 = load i16, ptr %1439, align 2, !tbaa.struct !86
  %1441 = load i8, ptr %1432, align 2, !tbaa.struct !97
  %1442 = add i8 %1441, -1
  %1443 = icmp ult i8 %1442, 15
  br i1 %1443, label %1444, label %1504

1444:                                             ; preds = %1431
  %1445 = zext nneg i8 %1441 to i32
  %1446 = zext i16 %1440 to i32
  %1447 = add nuw nsw i32 %1438, %1445
  %1448 = shl nsw i32 -1, %1447
  %1449 = xor i32 %1448, -1
  %1450 = trunc i64 %1435 to i32
  %1451 = and i32 %1450, %1449
  %1452 = lshr i32 %1451, %1438
  %1453 = add nuw i32 %1452, %1446
  %1454 = zext i32 %1453 to i64
  %1455 = getelementptr inbounds %struct.code, ptr %1392, i64 %1454
  %1456 = getelementptr inbounds i8, ptr %1455, i64 1
  %1457 = load i8, ptr %1456, align 1, !tbaa.struct !85
  %1458 = zext i8 %1457 to i32
  %1459 = add nuw nsw i32 %1438, %1458
  %1460 = icmp ugt i32 %1459, %1436
  br i1 %1460, label %1461, label %1491

1461:                                             ; preds = %1444
  %1462 = zext nneg i32 %1436 to i64
  br label %1463

1463:                                             ; preds = %1461, %1469
  %1464 = phi i64 [ %1462, %1461 ], [ %1476, %1469 ]
  %1465 = phi i64 [ %1435, %1461 ], [ %1475, %1469 ]
  %1466 = phi i32 [ %1434, %1461 ], [ %1470, %1469 ]
  %1467 = phi ptr [ %1433, %1461 ], [ %1471, %1469 ]
  %1468 = icmp eq i32 %1466, 0
  br i1 %1468, label %2192, label %1469

1469:                                             ; preds = %1463
  %1470 = add i32 %1466, -1
  %1471 = getelementptr inbounds i8, ptr %1467, i64 1
  %1472 = load i8, ptr %1467, align 1, !tbaa !39
  %1473 = zext i8 %1472 to i64
  %1474 = shl i64 %1473, %1464
  %1475 = add i64 %1474, %1465
  %1476 = add nuw nsw i64 %1464, 8
  %1477 = trunc i64 %1475 to i32
  %1478 = and i32 %1477, %1449
  %1479 = lshr i32 %1478, %1438
  %1480 = add nuw i32 %1479, %1446
  %1481 = zext i32 %1480 to i64
  %1482 = getelementptr inbounds %struct.code, ptr %1392, i64 %1481
  %1483 = getelementptr inbounds i8, ptr %1482, i64 1
  %1484 = load i8, ptr %1483, align 1, !tbaa.struct !85
  %1485 = zext i8 %1484 to i32
  %1486 = add nuw nsw i32 %1438, %1485
  %1487 = zext nneg i32 %1486 to i64
  %1488 = icmp ult i64 %1476, %1487
  br i1 %1488, label %1463, label %1489

1489:                                             ; preds = %1469
  %1490 = trunc i64 %1476 to i32
  br label %1491

1491:                                             ; preds = %1489, %1444
  %1492 = phi ptr [ %1433, %1444 ], [ %1471, %1489 ]
  %1493 = phi i32 [ %1434, %1444 ], [ %1470, %1489 ]
  %1494 = phi i64 [ %1435, %1444 ], [ %1475, %1489 ]
  %1495 = phi i32 [ %1436, %1444 ], [ %1490, %1489 ]
  %1496 = phi ptr [ %1455, %1444 ], [ %1482, %1489 ]
  %1497 = phi i8 [ %1457, %1444 ], [ %1484, %1489 ]
  %1498 = getelementptr inbounds i8, ptr %1496, i64 2
  %1499 = load i16, ptr %1498, align 2, !tbaa.struct !86
  %1500 = load i8, ptr %1496, align 2, !tbaa.struct !97
  %1501 = zext nneg i8 %1437 to i64
  %1502 = lshr i64 %1494, %1501
  %1503 = sub i32 %1495, %1438
  br label %1504

1504:                                             ; preds = %1431, %1491
  %1505 = phi i32 [ %1438, %1491 ], [ 0, %1431 ]
  %1506 = phi ptr [ %1492, %1491 ], [ %1433, %1431 ]
  %1507 = phi i32 [ %1493, %1491 ], [ %1434, %1431 ]
  %1508 = phi i64 [ %1502, %1491 ], [ %1435, %1431 ]
  %1509 = phi i32 [ %1503, %1491 ], [ %1436, %1431 ]
  %1510 = phi i16 [ %1499, %1491 ], [ %1440, %1431 ]
  %1511 = phi i8 [ %1497, %1491 ], [ %1437, %1431 ]
  %1512 = phi i8 [ %1500, %1491 ], [ %1441, %1431 ]
  %1513 = zext i8 %1511 to i32
  %1514 = zext nneg i8 %1511 to i64
  %1515 = lshr i64 %1508, %1514
  %1516 = sub i32 %1509, %1513
  %1517 = add nuw nsw i32 %1505, %1513
  store i32 %1517, ptr %71, align 4, !tbaa !32
  %1518 = zext i16 %1510 to i32
  store i32 %1518, ptr %56, align 4, !tbaa !61
  %1519 = zext i8 %1512 to i32
  %1520 = icmp eq i8 %1512, 0
  br i1 %1520, label %1521, label %1522

1521:                                             ; preds = %1504
  store i32 16205, ptr %21, align 8, !tbaa !16
  br label %2096

1522:                                             ; preds = %1504
  %1523 = and i32 %1519, 32
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1526, label %1525

1525:                                             ; preds = %1522
  store i32 -1, ptr %71, align 4, !tbaa !32
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %2096

1526:                                             ; preds = %1522
  %1527 = and i32 %1519, 64
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1530, label %1529

1529:                                             ; preds = %1526
  store ptr @.str.14, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

1530:                                             ; preds = %1526
  %1531 = and i32 %1519, 15
  store i32 %1531, ptr %72, align 4, !tbaa !46
  store i32 16201, ptr %21, align 8, !tbaa !16
  br label %1532

1532:                                             ; preds = %103, %1530
  %1533 = phi i32 [ %104, %103 ], [ %1531, %1530 ]
  %1534 = phi ptr [ %92, %103 ], [ %1506, %1530 ]
  %1535 = phi i32 [ %94, %103 ], [ %1507, %1530 ]
  %1536 = phi i64 [ %96, %103 ], [ %1515, %1530 ]
  %1537 = phi i32 [ %97, %103 ], [ %1516, %1530 ]
  %1538 = phi i32 [ %99, %103 ], [ %1377, %1530 ]
  %1539 = icmp eq i32 %1533, 0
  br i1 %1539, label %1540, label %1542

1540:                                             ; preds = %1532
  %1541 = load i32, ptr %56, align 4, !tbaa !61
  br label %1576

1542:                                             ; preds = %1532
  %1543 = icmp ult i32 %1537, %1533
  br i1 %1543, label %1544, label %1560

1544:                                             ; preds = %1542, %1550
  %1545 = phi i32 [ %1558, %1550 ], [ %1537, %1542 ]
  %1546 = phi i64 [ %1557, %1550 ], [ %1536, %1542 ]
  %1547 = phi i32 [ %1551, %1550 ], [ %1535, %1542 ]
  %1548 = phi ptr [ %1552, %1550 ], [ %1534, %1542 ]
  %1549 = icmp eq i32 %1547, 0
  br i1 %1549, label %2187, label %1550

1550:                                             ; preds = %1544
  %1551 = add i32 %1547, -1
  %1552 = getelementptr inbounds i8, ptr %1548, i64 1
  %1553 = load i8, ptr %1548, align 1, !tbaa !39
  %1554 = zext i8 %1553 to i64
  %1555 = zext nneg i32 %1545 to i64
  %1556 = shl i64 %1554, %1555
  %1557 = add i64 %1556, %1546
  %1558 = add i32 %1545, 8
  %1559 = icmp ult i32 %1558, %1533
  br i1 %1559, label %1544, label %1560, !llvm.loop !98

1560:                                             ; preds = %1550, %1542
  %1561 = phi ptr [ %1534, %1542 ], [ %1552, %1550 ]
  %1562 = phi i32 [ %1535, %1542 ], [ %1551, %1550 ]
  %1563 = phi i64 [ %1536, %1542 ], [ %1557, %1550 ]
  %1564 = phi i32 [ %1537, %1542 ], [ %1558, %1550 ]
  %1565 = trunc i64 %1563 to i32
  %1566 = shl nsw i32 -1, %1533
  %1567 = xor i32 %1566, -1
  %1568 = and i32 %1565, %1567
  %1569 = load i32, ptr %56, align 4, !tbaa !61
  %1570 = add i32 %1569, %1568
  store i32 %1570, ptr %56, align 4, !tbaa !61
  %1571 = zext nneg i32 %1533 to i64
  %1572 = lshr i64 %1563, %1571
  %1573 = sub i32 %1564, %1533
  %1574 = load i32, ptr %71, align 4, !tbaa !32
  %1575 = add i32 %1574, %1533
  store i32 %1575, ptr %71, align 4, !tbaa !32
  br label %1576

1576:                                             ; preds = %1540, %1560
  %1577 = phi i32 [ %1570, %1560 ], [ %1541, %1540 ]
  %1578 = phi ptr [ %1561, %1560 ], [ %1534, %1540 ]
  %1579 = phi i32 [ %1562, %1560 ], [ %1535, %1540 ]
  %1580 = phi i64 [ %1572, %1560 ], [ %1536, %1540 ]
  %1581 = phi i32 [ %1573, %1560 ], [ %1537, %1540 ]
  store i32 %1577, ptr %73, align 8, !tbaa !99
  store i32 16202, ptr %21, align 8, !tbaa !16
  br label %1582

1582:                                             ; preds = %90, %1576
  %1583 = phi ptr [ %92, %90 ], [ %1578, %1576 ]
  %1584 = phi i32 [ %94, %90 ], [ %1579, %1576 ]
  %1585 = phi i64 [ %96, %90 ], [ %1580, %1576 ]
  %1586 = phi i32 [ %97, %90 ], [ %1581, %1576 ]
  %1587 = phi i32 [ %99, %90 ], [ %1538, %1576 ]
  %1588 = load ptr, ptr %68, align 8, !tbaa !29
  %1589 = load i32, ptr %69, align 4, !tbaa !75
  %1590 = shl nsw i32 -1, %1589
  %1591 = xor i32 %1590, -1
  %1592 = trunc i64 %1585 to i32
  %1593 = and i32 %1591, %1592
  %1594 = zext nneg i32 %1593 to i64
  %1595 = getelementptr inbounds %struct.code, ptr %1588, i64 %1594
  %1596 = getelementptr inbounds i8, ptr %1595, i64 1
  %1597 = load i8, ptr %1596, align 1, !tbaa.struct !85
  %1598 = zext i8 %1597 to i32
  %1599 = icmp ult i32 %1586, %1598
  br i1 %1599, label %1600, label %1627

1600:                                             ; preds = %1582
  %1601 = zext nneg i32 %1586 to i64
  br label %1602

1602:                                             ; preds = %1600, %1608
  %1603 = phi i64 [ %1601, %1600 ], [ %1615, %1608 ]
  %1604 = phi i64 [ %1585, %1600 ], [ %1614, %1608 ]
  %1605 = phi i32 [ %1584, %1600 ], [ %1609, %1608 ]
  %1606 = phi ptr [ %1583, %1600 ], [ %1610, %1608 ]
  %1607 = icmp eq i32 %1605, 0
  br i1 %1607, label %2182, label %1608

1608:                                             ; preds = %1602
  %1609 = add i32 %1605, -1
  %1610 = getelementptr inbounds i8, ptr %1606, i64 1
  %1611 = load i8, ptr %1606, align 1, !tbaa !39
  %1612 = zext i8 %1611 to i64
  %1613 = shl i64 %1612, %1603
  %1614 = add i64 %1613, %1604
  %1615 = add nuw nsw i64 %1603, 8
  %1616 = trunc i64 %1614 to i32
  %1617 = and i32 %1591, %1616
  %1618 = zext nneg i32 %1617 to i64
  %1619 = getelementptr inbounds %struct.code, ptr %1588, i64 %1618
  %1620 = getelementptr inbounds i8, ptr %1619, i64 1
  %1621 = load i8, ptr %1620, align 1, !tbaa.struct !85
  %1622 = zext i8 %1621 to i64
  %1623 = icmp ult i64 %1615, %1622
  br i1 %1623, label %1602, label %1624

1624:                                             ; preds = %1608
  %1625 = zext i8 %1621 to i32
  %1626 = trunc i64 %1615 to i32
  br label %1627

1627:                                             ; preds = %1624, %1582
  %1628 = phi ptr [ %1595, %1582 ], [ %1619, %1624 ]
  %1629 = phi ptr [ %1583, %1582 ], [ %1610, %1624 ]
  %1630 = phi i32 [ %1584, %1582 ], [ %1609, %1624 ]
  %1631 = phi i64 [ %1585, %1582 ], [ %1614, %1624 ]
  %1632 = phi i32 [ %1586, %1582 ], [ %1626, %1624 ]
  %1633 = phi i8 [ %1597, %1582 ], [ %1621, %1624 ]
  %1634 = phi i32 [ %1598, %1582 ], [ %1625, %1624 ]
  %1635 = getelementptr inbounds i8, ptr %1628, i64 2
  %1636 = load i16, ptr %1635, align 2, !tbaa.struct !86
  %1637 = load i8, ptr %1628, align 2, !tbaa.struct !97
  %1638 = icmp ult i8 %1637, 16
  br i1 %1638, label %1641, label %1639

1639:                                             ; preds = %1627
  %1640 = load i32, ptr %71, align 4, !tbaa !32
  br label %1703

1641:                                             ; preds = %1627
  %1642 = zext nneg i8 %1637 to i32
  %1643 = zext i16 %1636 to i32
  %1644 = add nuw nsw i32 %1634, %1642
  %1645 = shl nsw i32 -1, %1644
  %1646 = xor i32 %1645, -1
  %1647 = trunc i64 %1631 to i32
  %1648 = and i32 %1647, %1646
  %1649 = lshr i32 %1648, %1634
  %1650 = add nuw i32 %1649, %1643
  %1651 = zext i32 %1650 to i64
  %1652 = getelementptr inbounds %struct.code, ptr %1588, i64 %1651
  %1653 = getelementptr inbounds i8, ptr %1652, i64 1
  %1654 = load i8, ptr %1653, align 1, !tbaa.struct !85
  %1655 = zext i8 %1654 to i32
  %1656 = add nuw nsw i32 %1634, %1655
  %1657 = icmp ugt i32 %1656, %1632
  br i1 %1657, label %1658, label %1688

1658:                                             ; preds = %1641
  %1659 = zext nneg i32 %1632 to i64
  br label %1660

1660:                                             ; preds = %1658, %1666
  %1661 = phi i64 [ %1659, %1658 ], [ %1673, %1666 ]
  %1662 = phi i64 [ %1631, %1658 ], [ %1672, %1666 ]
  %1663 = phi i32 [ %1630, %1658 ], [ %1667, %1666 ]
  %1664 = phi ptr [ %1629, %1658 ], [ %1668, %1666 ]
  %1665 = icmp eq i32 %1663, 0
  br i1 %1665, label %2177, label %1666

1666:                                             ; preds = %1660
  %1667 = add i32 %1663, -1
  %1668 = getelementptr inbounds i8, ptr %1664, i64 1
  %1669 = load i8, ptr %1664, align 1, !tbaa !39
  %1670 = zext i8 %1669 to i64
  %1671 = shl i64 %1670, %1661
  %1672 = add i64 %1671, %1662
  %1673 = add nuw nsw i64 %1661, 8
  %1674 = trunc i64 %1672 to i32
  %1675 = and i32 %1674, %1646
  %1676 = lshr i32 %1675, %1634
  %1677 = add nuw i32 %1676, %1643
  %1678 = zext i32 %1677 to i64
  %1679 = getelementptr inbounds %struct.code, ptr %1588, i64 %1678
  %1680 = getelementptr inbounds i8, ptr %1679, i64 1
  %1681 = load i8, ptr %1680, align 1, !tbaa.struct !85
  %1682 = zext i8 %1681 to i32
  %1683 = add nuw nsw i32 %1634, %1682
  %1684 = zext nneg i32 %1683 to i64
  %1685 = icmp ult i64 %1673, %1684
  br i1 %1685, label %1660, label %1686

1686:                                             ; preds = %1666
  %1687 = trunc i64 %1673 to i32
  br label %1688

1688:                                             ; preds = %1686, %1641
  %1689 = phi ptr [ %1629, %1641 ], [ %1668, %1686 ]
  %1690 = phi i32 [ %1630, %1641 ], [ %1667, %1686 ]
  %1691 = phi i64 [ %1631, %1641 ], [ %1672, %1686 ]
  %1692 = phi i32 [ %1632, %1641 ], [ %1687, %1686 ]
  %1693 = phi ptr [ %1652, %1641 ], [ %1679, %1686 ]
  %1694 = phi i8 [ %1654, %1641 ], [ %1681, %1686 ]
  %1695 = getelementptr inbounds i8, ptr %1693, i64 2
  %1696 = load i16, ptr %1695, align 2, !tbaa.struct !86
  %1697 = load i8, ptr %1693, align 2, !tbaa.struct !97
  %1698 = zext nneg i8 %1633 to i64
  %1699 = lshr i64 %1691, %1698
  %1700 = sub i32 %1692, %1634
  %1701 = load i32, ptr %71, align 4, !tbaa !32
  %1702 = add nsw i32 %1701, %1634
  br label %1703

1703:                                             ; preds = %1639, %1688
  %1704 = phi i32 [ %1702, %1688 ], [ %1640, %1639 ]
  %1705 = phi ptr [ %1689, %1688 ], [ %1629, %1639 ]
  %1706 = phi i32 [ %1690, %1688 ], [ %1630, %1639 ]
  %1707 = phi i64 [ %1699, %1688 ], [ %1631, %1639 ]
  %1708 = phi i32 [ %1700, %1688 ], [ %1632, %1639 ]
  %1709 = phi i16 [ %1696, %1688 ], [ %1636, %1639 ]
  %1710 = phi i8 [ %1694, %1688 ], [ %1633, %1639 ]
  %1711 = phi i8 [ %1697, %1688 ], [ %1637, %1639 ]
  %1712 = zext i8 %1710 to i32
  %1713 = zext nneg i8 %1710 to i64
  %1714 = lshr i64 %1707, %1713
  %1715 = sub i32 %1708, %1712
  %1716 = add nsw i32 %1704, %1712
  store i32 %1716, ptr %71, align 4, !tbaa !32
  %1717 = zext i8 %1711 to i32
  %1718 = and i32 %1717, 64
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1721, label %1720

1720:                                             ; preds = %1703
  store ptr @.str.15, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

1721:                                             ; preds = %1703
  %1722 = zext i16 %1709 to i32
  store i32 %1722, ptr %74, align 8, !tbaa !100
  %1723 = and i32 %1717, 15
  store i32 %1723, ptr %72, align 4, !tbaa !46
  store i32 16203, ptr %21, align 8, !tbaa !16
  br label %1724

1724:                                             ; preds = %101, %1721
  %1725 = phi i32 [ %102, %101 ], [ %1723, %1721 ]
  %1726 = phi ptr [ %92, %101 ], [ %1705, %1721 ]
  %1727 = phi i32 [ %94, %101 ], [ %1706, %1721 ]
  %1728 = phi i64 [ %96, %101 ], [ %1714, %1721 ]
  %1729 = phi i32 [ %97, %101 ], [ %1715, %1721 ]
  %1730 = phi i32 [ %99, %101 ], [ %1587, %1721 ]
  %1731 = icmp eq i32 %1725, 0
  br i1 %1731, label %1766, label %1732

1732:                                             ; preds = %1724
  %1733 = icmp ult i32 %1729, %1725
  br i1 %1733, label %1734, label %1750

1734:                                             ; preds = %1732, %1740
  %1735 = phi i32 [ %1748, %1740 ], [ %1729, %1732 ]
  %1736 = phi i64 [ %1747, %1740 ], [ %1728, %1732 ]
  %1737 = phi i32 [ %1741, %1740 ], [ %1727, %1732 ]
  %1738 = phi ptr [ %1742, %1740 ], [ %1726, %1732 ]
  %1739 = icmp eq i32 %1737, 0
  br i1 %1739, label %2172, label %1740

1740:                                             ; preds = %1734
  %1741 = add i32 %1737, -1
  %1742 = getelementptr inbounds i8, ptr %1738, i64 1
  %1743 = load i8, ptr %1738, align 1, !tbaa !39
  %1744 = zext i8 %1743 to i64
  %1745 = zext nneg i32 %1735 to i64
  %1746 = shl i64 %1744, %1745
  %1747 = add i64 %1746, %1736
  %1748 = add i32 %1735, 8
  %1749 = icmp ult i32 %1748, %1725
  br i1 %1749, label %1734, label %1750, !llvm.loop !101

1750:                                             ; preds = %1740, %1732
  %1751 = phi ptr [ %1726, %1732 ], [ %1742, %1740 ]
  %1752 = phi i32 [ %1727, %1732 ], [ %1741, %1740 ]
  %1753 = phi i64 [ %1728, %1732 ], [ %1747, %1740 ]
  %1754 = phi i32 [ %1729, %1732 ], [ %1748, %1740 ]
  %1755 = trunc i64 %1753 to i32
  %1756 = shl nsw i32 -1, %1725
  %1757 = xor i32 %1756, -1
  %1758 = and i32 %1755, %1757
  %1759 = load i32, ptr %74, align 8, !tbaa !100
  %1760 = add i32 %1759, %1758
  store i32 %1760, ptr %74, align 8, !tbaa !100
  %1761 = zext nneg i32 %1725 to i64
  %1762 = lshr i64 %1753, %1761
  %1763 = sub i32 %1754, %1725
  %1764 = load i32, ptr %71, align 4, !tbaa !32
  %1765 = add i32 %1764, %1725
  store i32 %1765, ptr %71, align 4, !tbaa !32
  br label %1766

1766:                                             ; preds = %1750, %1724
  %1767 = phi ptr [ %1751, %1750 ], [ %1726, %1724 ]
  %1768 = phi i32 [ %1752, %1750 ], [ %1727, %1724 ]
  %1769 = phi i64 [ %1762, %1750 ], [ %1728, %1724 ]
  %1770 = phi i32 [ %1763, %1750 ], [ %1729, %1724 ]
  store i32 16204, ptr %21, align 8, !tbaa !16
  br label %1771

1771:                                             ; preds = %90, %1766
  %1772 = phi ptr [ %92, %90 ], [ %1767, %1766 ]
  %1773 = phi i32 [ %94, %90 ], [ %1768, %1766 ]
  %1774 = phi i64 [ %96, %90 ], [ %1769, %1766 ]
  %1775 = phi i32 [ %97, %90 ], [ %1770, %1766 ]
  %1776 = phi i32 [ %99, %90 ], [ %1730, %1766 ]
  %1777 = icmp eq i32 %95, 0
  br i1 %1777, label %2203, label %1778

1778:                                             ; preds = %1771
  %1779 = sub i32 %98, %95
  %1780 = load i32, ptr %74, align 8, !tbaa !100
  %1781 = icmp ugt i32 %1780, %1779
  br i1 %1781, label %1782, label %1807

1782:                                             ; preds = %1778
  %1783 = sub i32 %1780, %1779
  %1784 = load i32, ptr %75, align 8, !tbaa !34
  %1785 = icmp ugt i32 %1783, %1784
  br i1 %1785, label %1786, label %1790

1786:                                             ; preds = %1782
  %1787 = load i32, ptr %76, align 8, !tbaa !31
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1790, label %1789

1789:                                             ; preds = %1786
  store ptr @.str.16, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

1790:                                             ; preds = %1786, %1782
  %1791 = load i32, ptr %77, align 4, !tbaa !35
  %1792 = icmp ugt i32 %1783, %1791
  br i1 %1792, label %1793, label %1797

1793:                                             ; preds = %1790
  %1794 = sub i32 %1783, %1791
  %1795 = load i32, ptr %79, align 4, !tbaa !33
  %1796 = sub i32 %1795, %1794
  br label %1799

1797:                                             ; preds = %1790
  %1798 = sub i32 %1791, %1783
  br label %1799

1799:                                             ; preds = %1797, %1793
  %1800 = phi i32 [ %1798, %1797 ], [ %1796, %1793 ]
  %1801 = phi i32 [ %1783, %1797 ], [ %1794, %1793 ]
  %1802 = load ptr, ptr %78, align 8, !tbaa !36
  %1803 = zext i32 %1800 to i64
  %1804 = getelementptr inbounds i8, ptr %1802, i64 %1803
  %1805 = load i32, ptr %56, align 4, !tbaa !61
  %1806 = call i32 @llvm.umin.i32(i32 %1801, i32 %1805)
  br label %1812

1807:                                             ; preds = %1778
  %1808 = zext i32 %1780 to i64
  %1809 = sub nsw i64 0, %1808
  %1810 = getelementptr inbounds i8, ptr %93, i64 %1809
  %1811 = load i32, ptr %56, align 4, !tbaa !61
  br label %1812

1812:                                             ; preds = %1799, %1807
  %1813 = phi i32 [ %1811, %1807 ], [ %1805, %1799 ]
  %1814 = phi i32 [ %1811, %1807 ], [ %1806, %1799 ]
  %1815 = phi ptr [ %1810, %1807 ], [ %1804, %1799 ]
  %1816 = call i32 @llvm.umin.i32(i32 %1814, i32 %95)
  %1817 = sub i32 %1813, %1816
  store i32 %1817, ptr %56, align 4, !tbaa !61
  %1818 = add i32 %1816, -1
  %1819 = zext i32 %1818 to i64
  %1820 = add nuw nsw i64 %1819, 1
  %1821 = icmp ult i32 %1818, 31
  %1822 = ptrtoint ptr %1815 to i64
  %1823 = sub i64 %100, %1822
  %1824 = icmp ult i64 %1823, 32
  %1825 = select i1 %1821, i1 true, i1 %1824
  br i1 %1825, label %1844, label %1826

1826:                                             ; preds = %1812
  %1827 = and i64 %1820, 8589934560
  %1828 = getelementptr i8, ptr %93, i64 %1827
  %1829 = trunc i64 %1827 to i32
  %1830 = sub i32 %1816, %1829
  %1831 = getelementptr i8, ptr %1815, i64 %1827
  br label %1832

1832:                                             ; preds = %1832, %1826
  %1833 = phi i64 [ 0, %1826 ], [ %1840, %1832 ]
  %1834 = getelementptr i8, ptr %93, i64 %1833
  %1835 = getelementptr i8, ptr %1815, i64 %1833
  %1836 = getelementptr i8, ptr %1835, i64 16
  %1837 = load <16 x i8>, ptr %1835, align 1, !tbaa !39
  %1838 = load <16 x i8>, ptr %1836, align 1, !tbaa !39
  %1839 = getelementptr i8, ptr %1834, i64 16
  store <16 x i8> %1837, ptr %1834, align 1, !tbaa !39
  store <16 x i8> %1838, ptr %1839, align 1, !tbaa !39
  %1840 = add nuw i64 %1833, 32
  %1841 = icmp eq i64 %1840, %1827
  br i1 %1841, label %1842, label %1832, !llvm.loop !102

1842:                                             ; preds = %1832
  %1843 = icmp eq i64 %1820, %1827
  br i1 %1843, label %1898, label %1844

1844:                                             ; preds = %1812, %1842
  %1845 = phi ptr [ %93, %1812 ], [ %1828, %1842 ]
  %1846 = phi i32 [ %1816, %1812 ], [ %1830, %1842 ]
  %1847 = phi ptr [ %1815, %1812 ], [ %1831, %1842 ]
  %1848 = add i32 %1846, -1
  %1849 = and i32 %1846, 7
  %1850 = icmp eq i32 %1849, 0
  br i1 %1850, label %1862, label %1851

1851:                                             ; preds = %1844, %1851
  %1852 = phi ptr [ %1858, %1851 ], [ %1845, %1844 ]
  %1853 = phi i32 [ %1859, %1851 ], [ %1846, %1844 ]
  %1854 = phi ptr [ %1856, %1851 ], [ %1847, %1844 ]
  %1855 = phi i32 [ %1860, %1851 ], [ 0, %1844 ]
  %1856 = getelementptr inbounds i8, ptr %1854, i64 1
  %1857 = load i8, ptr %1854, align 1, !tbaa !39
  %1858 = getelementptr inbounds i8, ptr %1852, i64 1
  store i8 %1857, ptr %1852, align 1, !tbaa !39
  %1859 = add i32 %1853, -1
  %1860 = add i32 %1855, 1
  %1861 = icmp eq i32 %1860, %1849
  br i1 %1861, label %1862, label %1851, !llvm.loop !103

1862:                                             ; preds = %1851, %1844
  %1863 = phi ptr [ undef, %1844 ], [ %1858, %1851 ]
  %1864 = phi ptr [ %1845, %1844 ], [ %1858, %1851 ]
  %1865 = phi i32 [ %1846, %1844 ], [ %1859, %1851 ]
  %1866 = phi ptr [ %1847, %1844 ], [ %1856, %1851 ]
  %1867 = icmp ult i32 %1848, 7
  br i1 %1867, label %1898, label %1868

1868:                                             ; preds = %1862, %1868
  %1869 = phi ptr [ %1895, %1868 ], [ %1864, %1862 ]
  %1870 = phi i32 [ %1896, %1868 ], [ %1865, %1862 ]
  %1871 = phi ptr [ %1893, %1868 ], [ %1866, %1862 ]
  %1872 = getelementptr inbounds i8, ptr %1871, i64 1
  %1873 = load i8, ptr %1871, align 1, !tbaa !39
  %1874 = getelementptr inbounds i8, ptr %1869, i64 1
  store i8 %1873, ptr %1869, align 1, !tbaa !39
  %1875 = getelementptr inbounds i8, ptr %1871, i64 2
  %1876 = load i8, ptr %1872, align 1, !tbaa !39
  %1877 = getelementptr inbounds i8, ptr %1869, i64 2
  store i8 %1876, ptr %1874, align 1, !tbaa !39
  %1878 = getelementptr inbounds i8, ptr %1871, i64 3
  %1879 = load i8, ptr %1875, align 1, !tbaa !39
  %1880 = getelementptr inbounds i8, ptr %1869, i64 3
  store i8 %1879, ptr %1877, align 1, !tbaa !39
  %1881 = getelementptr inbounds i8, ptr %1871, i64 4
  %1882 = load i8, ptr %1878, align 1, !tbaa !39
  %1883 = getelementptr inbounds i8, ptr %1869, i64 4
  store i8 %1882, ptr %1880, align 1, !tbaa !39
  %1884 = getelementptr inbounds i8, ptr %1871, i64 5
  %1885 = load i8, ptr %1881, align 1, !tbaa !39
  %1886 = getelementptr inbounds i8, ptr %1869, i64 5
  store i8 %1885, ptr %1883, align 1, !tbaa !39
  %1887 = getelementptr inbounds i8, ptr %1871, i64 6
  %1888 = load i8, ptr %1884, align 1, !tbaa !39
  %1889 = getelementptr inbounds i8, ptr %1869, i64 6
  store i8 %1888, ptr %1886, align 1, !tbaa !39
  %1890 = getelementptr inbounds i8, ptr %1871, i64 7
  %1891 = load i8, ptr %1887, align 1, !tbaa !39
  %1892 = getelementptr inbounds i8, ptr %1869, i64 7
  store i8 %1891, ptr %1889, align 1, !tbaa !39
  %1893 = getelementptr inbounds i8, ptr %1871, i64 8
  %1894 = load i8, ptr %1890, align 1, !tbaa !39
  %1895 = getelementptr inbounds i8, ptr %1869, i64 8
  store i8 %1894, ptr %1892, align 1, !tbaa !39
  %1896 = add i32 %1870, -8
  %1897 = icmp eq i32 %1896, 0
  br i1 %1897, label %1898, label %1868, !llvm.loop !104

1898:                                             ; preds = %1862, %1868, %1842
  %1899 = phi ptr [ %1828, %1842 ], [ %1863, %1862 ], [ %1895, %1868 ]
  %1900 = sub i32 %95, %1816
  %1901 = load i32, ptr %56, align 4, !tbaa !61
  %1902 = icmp eq i32 %1901, 0
  br i1 %1902, label %1903, label %2096

1903:                                             ; preds = %1898
  store i32 16200, ptr %21, align 8, !tbaa !16
  br label %2096

1904:                                             ; preds = %90
  %1905 = icmp eq i32 %95, 0
  br i1 %1905, label %2203, label %1906

1906:                                             ; preds = %1904
  %1907 = load i32, ptr %56, align 4, !tbaa !61
  %1908 = trunc i32 %1907 to i8
  %1909 = getelementptr inbounds i8, ptr %93, i64 1
  store i8 %1908, ptr %93, align 1, !tbaa !39
  %1910 = add i32 %95, -1
  store i32 16200, ptr %21, align 8, !tbaa !16
  br label %2096

1911:                                             ; preds = %90
  %1912 = load i32, ptr %49, align 8, !tbaa !19
  %1913 = icmp eq i32 %1912, 0
  br i1 %1913, label %2009, label %1914

1914:                                             ; preds = %1911
  %1915 = icmp ult i32 %97, 32
  br i1 %1915, label %1916, label %1966

1916:                                             ; preds = %1914
  %1917 = zext nneg i32 %97 to i64
  %1918 = icmp eq i32 %94, 0
  br i1 %1918, label %2162, label %1919

1919:                                             ; preds = %1916
  %1920 = add i32 %94, -1
  %1921 = getelementptr inbounds i8, ptr %92, i64 1
  %1922 = load i8, ptr %92, align 1, !tbaa !39
  %1923 = zext i8 %1922 to i64
  %1924 = shl nuw nsw i64 %1923, %1917
  %1925 = add i64 %1924, %96
  %1926 = add nuw nsw i64 %1917, 8
  %1927 = icmp ult i32 %97, 24
  br i1 %1927, label %1928, label %1960, !llvm.loop !105

1928:                                             ; preds = %1919
  %1929 = icmp eq i32 %1920, 0
  br i1 %1929, label %2162, label %1930

1930:                                             ; preds = %1928
  %1931 = add i32 %94, -2
  %1932 = getelementptr inbounds i8, ptr %92, i64 2
  %1933 = load i8, ptr %1921, align 1, !tbaa !39
  %1934 = zext i8 %1933 to i64
  %1935 = shl nuw nsw i64 %1934, %1926
  %1936 = add i64 %1935, %1925
  %1937 = add nuw nsw i64 %1917, 16
  %1938 = icmp ult i32 %97, 16
  br i1 %1938, label %1939, label %1960, !llvm.loop !105

1939:                                             ; preds = %1930
  %1940 = icmp eq i32 %1931, 0
  br i1 %1940, label %2162, label %1941

1941:                                             ; preds = %1939
  %1942 = add i32 %94, -3
  %1943 = getelementptr inbounds i8, ptr %92, i64 3
  %1944 = load i8, ptr %1932, align 1, !tbaa !39
  %1945 = zext i8 %1944 to i64
  %1946 = shl nuw nsw i64 %1945, %1937
  %1947 = add i64 %1946, %1936
  %1948 = add nuw nsw i64 %1917, 24
  %1949 = icmp ult i32 %97, 8
  br i1 %1949, label %1950, label %1960, !llvm.loop !105

1950:                                             ; preds = %1941
  %1951 = icmp eq i32 %1942, 0
  br i1 %1951, label %2162, label %1952

1952:                                             ; preds = %1950
  %1953 = add i32 %94, -4
  %1954 = getelementptr inbounds i8, ptr %92, i64 4
  %1955 = load i8, ptr %1943, align 1, !tbaa !39
  %1956 = zext i8 %1955 to i64
  %1957 = shl nuw nsw i64 %1956, %1948
  %1958 = add i64 %1957, %1947
  %1959 = or disjoint i64 %1917, 32
  br label %1960

1960:                                             ; preds = %1952, %1941, %1930, %1919
  %1961 = phi i32 [ %1920, %1919 ], [ %1931, %1930 ], [ %1942, %1941 ], [ %1953, %1952 ]
  %1962 = phi ptr [ %1921, %1919 ], [ %1932, %1930 ], [ %1943, %1941 ], [ %1954, %1952 ]
  %1963 = phi i64 [ %1925, %1919 ], [ %1936, %1930 ], [ %1947, %1941 ], [ %1958, %1952 ]
  %1964 = phi i64 [ %1926, %1919 ], [ %1937, %1930 ], [ %1948, %1941 ], [ %1959, %1952 ]
  %1965 = trunc i64 %1964 to i32
  br label %1966

1966:                                             ; preds = %1960, %1914
  %1967 = phi ptr [ %92, %1914 ], [ %1962, %1960 ]
  %1968 = phi i32 [ %94, %1914 ], [ %1961, %1960 ]
  %1969 = phi i64 [ %96, %1914 ], [ %1963, %1960 ]
  %1970 = phi i32 [ %97, %1914 ], [ %1965, %1960 ]
  %1971 = sub i32 %98, %95
  %1972 = zext i32 %1971 to i64
  %1973 = load i64, ptr %50, align 8, !tbaa !106
  %1974 = add i64 %1973, %1972
  store i64 %1974, ptr %50, align 8, !tbaa !106
  %1975 = load i64, ptr %51, align 8, !tbaa !17
  %1976 = add i64 %1975, %1972
  store i64 %1976, ptr %51, align 8, !tbaa !17
  %1977 = and i32 %1912, 4
  %1978 = icmp ne i32 %1977, 0
  %1979 = icmp ne i32 %98, %95
  %1980 = select i1 %1978, i1 %1979, i1 false
  br i1 %1980, label %1981, label %1995

1981:                                             ; preds = %1966
  %1982 = load i32, ptr %52, align 8, !tbaa !23
  %1983 = icmp eq i32 %1982, 0
  %1984 = load i64, ptr %53, align 8, !tbaa !50
  %1985 = sub nsw i64 0, %1972
  %1986 = getelementptr inbounds i8, ptr %93, i64 %1985
  br i1 %1983, label %1989, label %1987

1987:                                             ; preds = %1981
  %1988 = call i64 @crc32(i64 noundef %1984, ptr noundef %1986, i32 noundef %1971) #9
  br label %1991

1989:                                             ; preds = %1981
  %1990 = call i64 @adler32(i64 noundef %1984, ptr noundef %1986, i32 noundef %1971) #9
  br label %1991

1991:                                             ; preds = %1989, %1987
  %1992 = phi i64 [ %1988, %1987 ], [ %1990, %1989 ]
  store i64 %1992, ptr %53, align 8, !tbaa !50
  store i64 %1992, ptr %54, align 8, !tbaa !20
  %1993 = load i32, ptr %49, align 8, !tbaa !19
  %1994 = and i32 %1993, 4
  br label %1995

1995:                                             ; preds = %1991, %1966
  %1996 = phi i32 [ %1994, %1991 ], [ %1977, %1966 ]
  %1997 = phi i32 [ %1993, %1991 ], [ %1912, %1966 ]
  %1998 = icmp eq i32 %1996, 0
  br i1 %1998, label %2009, label %1999

1999:                                             ; preds = %1995
  %2000 = load i32, ptr %52, align 8, !tbaa !23
  %2001 = icmp eq i32 %2000, 0
  %2002 = trunc i64 %1969 to i32
  %2003 = call i32 @llvm.bswap.i32(i32 %2002)
  %2004 = zext i32 %2003 to i64
  %2005 = select i1 %2001, i64 %2004, i64 %1969
  %2006 = load i64, ptr %53, align 8, !tbaa !50
  %2007 = icmp eq i64 %2005, %2006
  br i1 %2007, label %2009, label %2008

2008:                                             ; preds = %1999
  store ptr @.str.17, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

2009:                                             ; preds = %1999, %1995, %1911
  %2010 = phi i32 [ 0, %1911 ], [ %1997, %1995 ], [ %1997, %1999 ]
  %2011 = phi ptr [ %92, %1911 ], [ %1967, %1995 ], [ %1967, %1999 ]
  %2012 = phi i32 [ %94, %1911 ], [ %1968, %1995 ], [ %1968, %1999 ]
  %2013 = phi i64 [ %96, %1911 ], [ 0, %1995 ], [ 0, %1999 ]
  %2014 = phi i32 [ %97, %1911 ], [ 0, %1995 ], [ 0, %1999 ]
  %2015 = phi i32 [ %98, %1911 ], [ %95, %1995 ], [ %95, %1999 ]
  store i32 16207, ptr %21, align 8, !tbaa !16
  br label %2016

2016:                                             ; preds = %107, %2009
  %2017 = phi i32 [ %108, %107 ], [ %2010, %2009 ]
  %2018 = phi ptr [ %92, %107 ], [ %2011, %2009 ]
  %2019 = phi i32 [ %94, %107 ], [ %2012, %2009 ]
  %2020 = phi i64 [ %96, %107 ], [ %2013, %2009 ]
  %2021 = phi i32 [ %97, %107 ], [ %2014, %2009 ]
  %2022 = phi i32 [ %98, %107 ], [ %2015, %2009 ]
  %2023 = icmp eq i32 %2017, 0
  br i1 %2023, label %2091, label %2024

2024:                                             ; preds = %2016
  %2025 = load i32, ptr %52, align 8, !tbaa !23
  %2026 = icmp eq i32 %2025, 0
  br i1 %2026, label %2091, label %2027

2027:                                             ; preds = %2024
  %2028 = icmp ult i32 %2021, 32
  br i1 %2028, label %2029, label %2079

2029:                                             ; preds = %2027
  %2030 = zext nneg i32 %2021 to i64
  %2031 = icmp eq i32 %2019, 0
  br i1 %2031, label %2157, label %2032

2032:                                             ; preds = %2029
  %2033 = add i32 %2019, -1
  %2034 = getelementptr inbounds i8, ptr %2018, i64 1
  %2035 = load i8, ptr %2018, align 1, !tbaa !39
  %2036 = zext i8 %2035 to i64
  %2037 = shl nuw nsw i64 %2036, %2030
  %2038 = add i64 %2037, %2020
  %2039 = add nuw nsw i64 %2030, 8
  %2040 = icmp ult i32 %2021, 24
  br i1 %2040, label %2041, label %2073, !llvm.loop !107

2041:                                             ; preds = %2032
  %2042 = icmp eq i32 %2033, 0
  br i1 %2042, label %2157, label %2043

2043:                                             ; preds = %2041
  %2044 = add i32 %2019, -2
  %2045 = getelementptr inbounds i8, ptr %2018, i64 2
  %2046 = load i8, ptr %2034, align 1, !tbaa !39
  %2047 = zext i8 %2046 to i64
  %2048 = shl nuw nsw i64 %2047, %2039
  %2049 = add i64 %2048, %2038
  %2050 = add nuw nsw i64 %2030, 16
  %2051 = icmp ult i32 %2021, 16
  br i1 %2051, label %2052, label %2073, !llvm.loop !107

2052:                                             ; preds = %2043
  %2053 = icmp eq i32 %2044, 0
  br i1 %2053, label %2157, label %2054

2054:                                             ; preds = %2052
  %2055 = add i32 %2019, -3
  %2056 = getelementptr inbounds i8, ptr %2018, i64 3
  %2057 = load i8, ptr %2045, align 1, !tbaa !39
  %2058 = zext i8 %2057 to i64
  %2059 = shl nuw nsw i64 %2058, %2050
  %2060 = add i64 %2059, %2049
  %2061 = add nuw nsw i64 %2030, 24
  %2062 = icmp ult i32 %2021, 8
  br i1 %2062, label %2063, label %2073, !llvm.loop !107

2063:                                             ; preds = %2054
  %2064 = icmp eq i32 %2055, 0
  br i1 %2064, label %2157, label %2065

2065:                                             ; preds = %2063
  %2066 = add i32 %2019, -4
  %2067 = getelementptr inbounds i8, ptr %2018, i64 4
  %2068 = load i8, ptr %2056, align 1, !tbaa !39
  %2069 = zext i8 %2068 to i64
  %2070 = shl nuw nsw i64 %2069, %2061
  %2071 = add i64 %2070, %2060
  %2072 = or disjoint i64 %2030, 32
  br label %2073

2073:                                             ; preds = %2065, %2054, %2043, %2032
  %2074 = phi i32 [ %2033, %2032 ], [ %2044, %2043 ], [ %2055, %2054 ], [ %2066, %2065 ]
  %2075 = phi ptr [ %2034, %2032 ], [ %2045, %2043 ], [ %2056, %2054 ], [ %2067, %2065 ]
  %2076 = phi i64 [ %2038, %2032 ], [ %2049, %2043 ], [ %2060, %2054 ], [ %2071, %2065 ]
  %2077 = phi i64 [ %2039, %2032 ], [ %2050, %2043 ], [ %2061, %2054 ], [ %2072, %2065 ]
  %2078 = trunc i64 %2077 to i32
  br label %2079

2079:                                             ; preds = %2073, %2027
  %2080 = phi ptr [ %2018, %2027 ], [ %2075, %2073 ]
  %2081 = phi i32 [ %2019, %2027 ], [ %2074, %2073 ]
  %2082 = phi i64 [ %2020, %2027 ], [ %2076, %2073 ]
  %2083 = phi i32 [ %2021, %2027 ], [ %2078, %2073 ]
  %2084 = and i32 %2017, 4
  %2085 = icmp eq i32 %2084, 0
  br i1 %2085, label %2091, label %2086

2086:                                             ; preds = %2079
  %2087 = load i64, ptr %51, align 8, !tbaa !17
  %2088 = and i64 %2087, 4294967295
  %2089 = icmp eq i64 %2082, %2088
  br i1 %2089, label %2091, label %2090

2090:                                             ; preds = %2086
  store ptr @.str.18, ptr %55, align 8, !tbaa !40
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2096

2091:                                             ; preds = %2086, %2079, %2024, %2016
  %2092 = phi ptr [ %2018, %2024 ], [ %2018, %2016 ], [ %2080, %2079 ], [ %2080, %2086 ]
  %2093 = phi i32 [ %2019, %2024 ], [ %2019, %2016 ], [ %2081, %2079 ], [ %2081, %2086 ]
  %2094 = phi i64 [ %2020, %2024 ], [ %2020, %2016 ], [ 0, %2079 ], [ 0, %2086 ]
  %2095 = phi i32 [ %2021, %2024 ], [ %2021, %2016 ], [ 0, %2079 ], [ 0, %2086 ]
  store i32 16208, ptr %21, align 8, !tbaa !16
  br label %2203

2096:                                             ; preds = %1158, %1317, %1898, %1903, %1381, %1390, %2090, %2008, %1906, %1789, %1720, %1529, %1525, %1521, %1364, %1355, %1351, %1038, %967, %922, %914, %894, %826, %794, %719, %706, %252, %248, %209, %208, %193, %189, %171, %132
  %2097 = phi ptr [ %2080, %2090 ], [ %1967, %2008 ], [ %92, %1906 ], [ %1772, %1789 ], [ %1772, %1903 ], [ %1772, %1898 ], [ %1705, %1720 ], [ %1384, %1390 ], [ %1384, %1381 ], [ %1506, %1521 ], [ %1506, %1525 ], [ %1506, %1529 ], [ %1345, %1351 ], [ %1345, %1355 ], [ %1345, %1364 ], [ %983, %1038 ], [ %949, %967 ], [ %917, %914 ], [ %904, %922 ], [ %886, %894 ], [ %784, %794 ], [ %809, %826 ], [ %695, %706 ], [ %708, %719 ], [ %241, %248 ], [ %241, %252 ], [ %92, %132 ], [ %159, %171 ], [ %159, %189 ], [ %159, %193 ], [ %159, %208 ], [ %159, %209 ], [ %1230, %1317 ], [ %1150, %1158 ]
  %2098 = phi ptr [ %93, %2090 ], [ %93, %2008 ], [ %1909, %1906 ], [ %93, %1789 ], [ %1899, %1903 ], [ %1899, %1898 ], [ %93, %1720 ], [ %1382, %1390 ], [ %1382, %1381 ], [ %93, %1521 ], [ %93, %1525 ], [ %93, %1529 ], [ %93, %1351 ], [ %93, %1355 ], [ %93, %1364 ], [ %93, %1038 ], [ %93, %967 ], [ %919, %914 ], [ %93, %922 ], [ %93, %894 ], [ %93, %794 ], [ %93, %826 ], [ %93, %706 ], [ %93, %719 ], [ %93, %248 ], [ %93, %252 ], [ %93, %132 ], [ %93, %171 ], [ %93, %189 ], [ %93, %193 ], [ %93, %208 ], [ %93, %209 ], [ %93, %1317 ], [ %93, %1158 ]
  %2099 = phi i32 [ %2081, %2090 ], [ %1968, %2008 ], [ %94, %1906 ], [ %1773, %1789 ], [ %1773, %1903 ], [ %1773, %1898 ], [ %1706, %1720 ], [ %1385, %1390 ], [ %1385, %1381 ], [ %1507, %1521 ], [ %1507, %1525 ], [ %1507, %1529 ], [ %1346, %1351 ], [ %1346, %1355 ], [ %1346, %1364 ], [ %984, %1038 ], [ %950, %967 ], [ %916, %914 ], [ %905, %922 ], [ %887, %894 ], [ %785, %794 ], [ %810, %826 ], [ %696, %706 ], [ %709, %719 ], [ %242, %248 ], [ %242, %252 ], [ %94, %132 ], [ %160, %171 ], [ %160, %189 ], [ %160, %193 ], [ %160, %208 ], [ %160, %209 ], [ %1231, %1317 ], [ %1151, %1158 ]
  %2100 = phi i32 [ %95, %2090 ], [ %95, %2008 ], [ %1910, %1906 ], [ %95, %1789 ], [ %1900, %1903 ], [ %1900, %1898 ], [ %95, %1720 ], [ %1383, %1390 ], [ %1383, %1381 ], [ %95, %1521 ], [ %95, %1525 ], [ %95, %1529 ], [ %95, %1351 ], [ %95, %1355 ], [ %95, %1364 ], [ %95, %1038 ], [ %95, %967 ], [ %918, %914 ], [ %95, %922 ], [ %95, %894 ], [ %95, %794 ], [ %95, %826 ], [ %95, %706 ], [ %95, %719 ], [ %95, %248 ], [ %95, %252 ], [ %95, %132 ], [ %95, %171 ], [ %95, %189 ], [ %95, %193 ], [ %95, %208 ], [ %95, %209 ], [ %95, %1317 ], [ %95, %1158 ]
  %2101 = phi i64 [ %2082, %2090 ], [ %1969, %2008 ], [ %96, %1906 ], [ %1774, %1789 ], [ %1774, %1903 ], [ %1774, %1898 ], [ %1714, %1720 ], [ %1386, %1390 ], [ %1386, %1381 ], [ %1515, %1521 ], [ %1515, %1525 ], [ %1515, %1529 ], [ %1347, %1351 ], [ %1347, %1355 ], [ %1347, %1364 ], [ %985, %1038 ], [ %962, %967 ], [ %906, %914 ], [ %906, %922 ], [ %888, %894 ], [ %797, %794 ], [ %827, %826 ], [ %697, %706 ], [ %710, %719 ], [ %243, %248 ], [ %243, %252 ], [ %96, %132 ], [ 0, %171 ], [ %161, %189 ], [ %161, %193 ], [ %195, %208 ], [ 0, %209 ], [ %1232, %1317 ], [ %1155, %1158 ]
  %2102 = phi i32 [ %2083, %2090 ], [ %1970, %2008 ], [ %97, %1906 ], [ %1775, %1789 ], [ %1775, %1903 ], [ %1775, %1898 ], [ %1715, %1720 ], [ %1387, %1390 ], [ %1387, %1381 ], [ %1516, %1521 ], [ %1516, %1525 ], [ %1516, %1529 ], [ %1348, %1351 ], [ %1348, %1355 ], [ %1348, %1364 ], [ %986, %1038 ], [ %963, %967 ], [ %907, %914 ], [ %907, %922 ], [ %889, %894 ], [ %798, %794 ], [ %828, %826 ], [ %698, %706 ], [ %711, %719 ], [ %244, %248 ], [ %244, %252 ], [ %97, %132 ], [ 0, %171 ], [ %162, %189 ], [ %162, %193 ], [ %196, %208 ], [ 0, %209 ], [ %1233, %1317 ], [ %1156, %1158 ]
  %2103 = phi i32 [ %2022, %2090 ], [ %95, %2008 ], [ %98, %1906 ], [ %98, %1789 ], [ %98, %1903 ], [ %98, %1898 ], [ %98, %1720 ], [ %98, %1390 ], [ %98, %1381 ], [ %98, %1521 ], [ %98, %1525 ], [ %98, %1529 ], [ %98, %1351 ], [ %98, %1355 ], [ %98, %1364 ], [ %98, %1038 ], [ %98, %967 ], [ %98, %914 ], [ %98, %922 ], [ %98, %894 ], [ %98, %794 ], [ %98, %826 ], [ %98, %706 ], [ %98, %719 ], [ %98, %248 ], [ %98, %252 ], [ %98, %132 ], [ %98, %171 ], [ %98, %189 ], [ %98, %193 ], [ %98, %208 ], [ %98, %209 ], [ %98, %1317 ], [ %98, %1158 ]
  %2104 = phi i32 [ %99, %2090 ], [ %99, %2008 ], [ %99, %1906 ], [ %1776, %1789 ], [ %1776, %1903 ], [ %1776, %1898 ], [ %1587, %1720 ], [ %1377, %1390 ], [ %1377, %1381 ], [ %1377, %1521 ], [ %1377, %1525 ], [ %1377, %1529 ], [ %1046, %1351 ], [ %1353, %1355 ], [ %1362, %1364 ], [ %1036, %1038 ], [ %99, %967 ], [ %99, %914 ], [ %99, %922 ], [ %99, %894 ], [ %99, %794 ], [ %99, %826 ], [ %99, %706 ], [ %99, %719 ], [ %99, %248 ], [ %99, %252 ], [ %99, %132 ], [ %99, %171 ], [ %99, %189 ], [ %99, %193 ], [ %99, %208 ], [ %99, %209 ], [ %1046, %1317 ], [ %1046, %1158 ]
  %2105 = load i32, ptr %21, align 8, !tbaa !16
  br label %90

2106:                                             ; preds = %1199
  %2107 = trunc i64 %1200 to i32
  br label %2203

2108:                                             ; preds = %1132
  %2109 = trunc i64 %1133 to i32
  br label %2203

2110:                                             ; preds = %1169
  %2111 = trunc i64 %1170 to i32
  br label %2203

2112:                                             ; preds = %142, %129
  %2113 = phi i64 [ %130, %129 ], [ %140, %142 ]
  %2114 = phi i64 [ %96, %129 ], [ %139, %142 ]
  %2115 = phi ptr [ %92, %129 ], [ %135, %142 ]
  %2116 = trunc i64 %2113 to i32
  br label %2203

2117:                                             ; preds = %678, %666
  %2118 = phi i64 [ %667, %666 ], [ %676, %678 ]
  %2119 = phi i64 [ %659, %666 ], [ %675, %678 ]
  %2120 = phi ptr [ %657, %666 ], [ %671, %678 ]
  %2121 = trunc i64 %2118 to i32
  br label %2203

2122:                                             ; preds = %430, %413
  %2123 = phi i64 [ %419, %413 ], [ %428, %430 ]
  %2124 = phi i64 [ %416, %413 ], [ %427, %430 ]
  %2125 = phi ptr [ %414, %413 ], [ %423, %430 ]
  %2126 = trunc i64 %2123 to i32
  br label %2203

2127:                                             ; preds = %367, %351
  %2128 = phi i64 [ %356, %351 ], [ %365, %367 ]
  %2129 = phi i64 [ %353, %351 ], [ %364, %367 ]
  %2130 = phi ptr [ %355, %351 ], [ %360, %367 ]
  %2131 = trunc i64 %2128 to i32
  br label %2203

2132:                                             ; preds = %313, %302, %291, %275
  %2133 = phi i64 [ %280, %275 ], [ %289, %291 ], [ %300, %302 ], [ %311, %313 ]
  %2134 = phi i64 [ %277, %275 ], [ %288, %291 ], [ %299, %302 ], [ %310, %313 ]
  %2135 = phi ptr [ %279, %275 ], [ %284, %291 ], [ %295, %302 ], [ %306, %313 ]
  %2136 = trunc i64 %2133 to i32
  br label %2203

2137:                                             ; preds = %224, %121
  %2138 = phi i64 [ %122, %121 ], [ %222, %224 ]
  %2139 = phi i64 [ %96, %121 ], [ %221, %224 ]
  %2140 = phi ptr [ %92, %121 ], [ %217, %224 ]
  %2141 = trunc i64 %2138 to i32
  br label %2203

2142:                                             ; preds = %752, %741, %730, %116
  %2143 = phi i64 [ %117, %116 ], [ %728, %730 ], [ %739, %741 ], [ %750, %752 ]
  %2144 = phi i64 [ %96, %116 ], [ %727, %730 ], [ %738, %741 ], [ %749, %752 ]
  %2145 = phi ptr [ %92, %116 ], [ %723, %730 ], [ %734, %741 ], [ %745, %752 ]
  %2146 = trunc i64 %2143 to i32
  br label %2203

2147:                                             ; preds = %870, %859, %848, %835
  %2148 = phi i64 [ %837, %835 ], [ %846, %848 ], [ %857, %859 ], [ %868, %870 ]
  %2149 = phi i64 [ %832, %835 ], [ %845, %848 ], [ %856, %859 ], [ %867, %870 ]
  %2150 = phi ptr [ %92, %835 ], [ %841, %848 ], [ %852, %859 ], [ %863, %870 ]
  %2151 = trunc i64 %2148 to i32
  br label %2203

2152:                                             ; preds = %932, %111
  %2153 = phi i64 [ %112, %111 ], [ %930, %932 ]
  %2154 = phi i64 [ %96, %111 ], [ %929, %932 ]
  %2155 = phi ptr [ %92, %111 ], [ %925, %932 ]
  %2156 = trunc i64 %2153 to i32
  br label %2203

2157:                                             ; preds = %2063, %2052, %2041, %2029
  %2158 = phi i64 [ %2030, %2029 ], [ %2039, %2041 ], [ %2050, %2052 ], [ %2061, %2063 ]
  %2159 = phi i64 [ %2020, %2029 ], [ %2038, %2041 ], [ %2049, %2052 ], [ %2060, %2063 ]
  %2160 = phi ptr [ %2018, %2029 ], [ %2034, %2041 ], [ %2045, %2052 ], [ %2056, %2063 ]
  %2161 = trunc i64 %2158 to i32
  br label %2203

2162:                                             ; preds = %1950, %1939, %1928, %1916
  %2163 = phi i64 [ %1917, %1916 ], [ %1926, %1928 ], [ %1937, %1939 ], [ %1948, %1950 ]
  %2164 = phi i64 [ %96, %1916 ], [ %1925, %1928 ], [ %1936, %1939 ], [ %1947, %1950 ]
  %2165 = phi ptr [ %92, %1916 ], [ %1921, %1928 ], [ %1932, %1939 ], [ %1943, %1950 ]
  %2166 = trunc i64 %2163 to i32
  br label %2203

2167:                                             ; preds = %1071
  %2168 = zext i32 %1059 to i64
  %2169 = shl i32 %1059, 3
  %2170 = add i32 %2169, %1057
  %2171 = getelementptr i8, ptr %1060, i64 %2168
  br label %2203

2172:                                             ; preds = %1734
  %2173 = shl i32 %1727, 3
  %2174 = add i32 %1729, %2173
  %2175 = zext i32 %1727 to i64
  %2176 = getelementptr i8, ptr %1726, i64 %2175
  br label %2203

2177:                                             ; preds = %1660
  %2178 = zext i32 %1630 to i64
  %2179 = shl i32 %1630, 3
  %2180 = add i32 %2179, %1632
  %2181 = getelementptr i8, ptr %1629, i64 %2178
  br label %2203

2182:                                             ; preds = %1602
  %2183 = zext i32 %1584 to i64
  %2184 = shl i32 %1584, 3
  %2185 = add i32 %2184, %1586
  %2186 = getelementptr i8, ptr %1583, i64 %2183
  br label %2203

2187:                                             ; preds = %1544
  %2188 = shl i32 %1535, 3
  %2189 = add i32 %1537, %2188
  %2190 = zext i32 %1535 to i64
  %2191 = getelementptr i8, ptr %1534, i64 %2190
  br label %2203

2192:                                             ; preds = %1463
  %2193 = zext i32 %1434 to i64
  %2194 = shl i32 %1434, 3
  %2195 = add i32 %2194, %1436
  %2196 = getelementptr i8, ptr %1433, i64 %2193
  br label %2203

2197:                                             ; preds = %1406
  %2198 = zext i32 %1374 to i64
  %2199 = shl i32 %1374, 3
  %2200 = add i32 %2199, %1376
  %2201 = getelementptr i8, ptr %1373, i64 %2198
  br label %2203

2202:                                             ; preds = %90
  br label %2203

2203:                                             ; preds = %528, %544, %584, %604, %644, %778, %895, %910, %1365, %1771, %1904, %792, %998, %90, %2202, %2197, %2192, %2187, %2182, %2177, %2172, %2167, %2162, %2157, %2152, %2147, %2142, %2137, %2132, %2127, %2122, %2117, %2112, %2110, %2108, %2106, %2091, %818
  %2204 = phi i32 [ %95, %818 ], [ %95, %2091 ], [ %95, %2106 ], [ %95, %2108 ], [ %95, %2110 ], [ %95, %2112 ], [ %95, %2117 ], [ %95, %2122 ], [ %95, %2127 ], [ %95, %2132 ], [ %95, %2137 ], [ %95, %2142 ], [ %95, %2147 ], [ %95, %2152 ], [ %95, %2157 ], [ %95, %2162 ], [ %95, %2167 ], [ %95, %2172 ], [ %95, %2177 ], [ %95, %2182 ], [ %95, %2187 ], [ %95, %2192 ], [ %95, %2197 ], [ %95, %90 ], [ %95, %998 ], [ %95, %528 ], [ %95, %544 ], [ %95, %584 ], [ %95, %604 ], [ %95, %644 ], [ %95, %778 ], [ %95, %895 ], [ %95, %910 ], [ %95, %1365 ], [ 0, %1771 ], [ 0, %1904 ], [ %95, %792 ], [ %95, %2202 ]
  %2205 = phi ptr [ %809, %818 ], [ %2092, %2091 ], [ %1203, %2106 ], [ %1136, %2108 ], [ %1173, %2110 ], [ %2115, %2112 ], [ %2120, %2117 ], [ %2125, %2122 ], [ %2130, %2127 ], [ %2135, %2132 ], [ %2140, %2137 ], [ %2145, %2142 ], [ %2150, %2147 ], [ %2155, %2152 ], [ %2160, %2157 ], [ %2165, %2162 ], [ %2171, %2167 ], [ %2176, %2172 ], [ %2181, %2177 ], [ %2186, %2182 ], [ %2191, %2187 ], [ %2196, %2192 ], [ %2201, %2197 ], [ %92, %90 ], [ %996, %998 ], [ %530, %528 ], [ %537, %544 ], [ %587, %584 ], [ %597, %604 ], [ %647, %644 ], [ %779, %778 ], [ %886, %895 ], [ %904, %910 ], [ %1345, %1365 ], [ %1772, %1771 ], [ %92, %1904 ], [ %784, %792 ], [ %92, %2202 ]
  %2206 = phi i32 [ %810, %818 ], [ %2093, %2091 ], [ 0, %2106 ], [ 0, %2108 ], [ 0, %2110 ], [ 0, %2112 ], [ 0, %2117 ], [ 0, %2122 ], [ 0, %2127 ], [ 0, %2132 ], [ 0, %2137 ], [ 0, %2142 ], [ 0, %2147 ], [ 0, %2152 ], [ 0, %2157 ], [ 0, %2162 ], [ 0, %2167 ], [ 0, %2172 ], [ 0, %2177 ], [ 0, %2182 ], [ 0, %2187 ], [ 0, %2192 ], [ 0, %2197 ], [ %94, %90 ], [ 0, %998 ], [ %531, %528 ], [ 0, %544 ], [ %585, %584 ], [ 0, %604 ], [ %645, %644 ], [ %780, %778 ], [ %887, %895 ], [ %905, %910 ], [ %1346, %1365 ], [ %1773, %1771 ], [ %94, %1904 ], [ 0, %792 ], [ %94, %2202 ]
  %2207 = phi i64 [ %819, %818 ], [ %2094, %2091 ], [ %1201, %2106 ], [ %1134, %2108 ], [ %1171, %2110 ], [ %2114, %2112 ], [ %2119, %2117 ], [ %2124, %2122 ], [ %2129, %2127 ], [ %2134, %2132 ], [ %2139, %2137 ], [ %2144, %2142 ], [ %2149, %2147 ], [ %2154, %2152 ], [ %2159, %2157 ], [ %2164, %2162 ], [ %1073, %2167 ], [ %1736, %2172 ], [ %1662, %2177 ], [ %1604, %2182 ], [ %1546, %2187 ], [ %1465, %2192 ], [ %1408, %2197 ], [ %96, %90 ], [ %994, %998 ], [ %479, %528 ], [ %539, %544 ], [ %539, %584 ], [ %599, %604 ], [ %599, %644 ], [ %781, %778 ], [ 0, %895 ], [ %906, %910 ], [ %1347, %1365 ], [ %1774, %1771 ], [ %96, %1904 ], [ %786, %792 ], [ %96, %2202 ]
  %2208 = phi i32 [ %820, %818 ], [ %2095, %2091 ], [ %2107, %2106 ], [ %2109, %2108 ], [ %2111, %2110 ], [ %2116, %2112 ], [ %2121, %2117 ], [ %2126, %2122 ], [ %2131, %2127 ], [ %2136, %2132 ], [ %2141, %2137 ], [ %2146, %2142 ], [ %2151, %2147 ], [ %2156, %2152 ], [ %2161, %2157 ], [ %2166, %2162 ], [ %2170, %2167 ], [ %2174, %2172 ], [ %2180, %2177 ], [ %2185, %2182 ], [ %2189, %2187 ], [ %2195, %2192 ], [ %2200, %2197 ], [ %97, %90 ], [ %993, %998 ], [ %480, %528 ], [ %540, %544 ], [ %540, %584 ], [ %600, %604 ], [ %600, %644 ], [ %782, %778 ], [ 0, %895 ], [ %907, %910 ], [ %1348, %1365 ], [ %1775, %1771 ], [ %97, %1904 ], [ %787, %792 ], [ %97, %2202 ]
  %2209 = phi i32 [ %98, %818 ], [ %2022, %2091 ], [ %98, %2106 ], [ %98, %2108 ], [ %98, %2110 ], [ %98, %2112 ], [ %98, %2117 ], [ %98, %2122 ], [ %98, %2127 ], [ %98, %2132 ], [ %98, %2137 ], [ %98, %2142 ], [ %98, %2147 ], [ %98, %2152 ], [ %2022, %2157 ], [ %98, %2162 ], [ %98, %2167 ], [ %98, %2172 ], [ %98, %2177 ], [ %98, %2182 ], [ %98, %2187 ], [ %98, %2192 ], [ %98, %2197 ], [ %98, %90 ], [ %98, %998 ], [ %98, %792 ], [ %98, %1904 ], [ %98, %1771 ], [ %98, %1365 ], [ %98, %910 ], [ %98, %895 ], [ %98, %778 ], [ %98, %644 ], [ %98, %604 ], [ %98, %584 ], [ %98, %544 ], [ %98, %528 ], [ %98, %2202 ]
  %2210 = phi i32 [ %99, %818 ], [ 1, %2091 ], [ %1046, %2106 ], [ %1046, %2108 ], [ %1046, %2110 ], [ %99, %2112 ], [ %99, %2117 ], [ %99, %2122 ], [ %99, %2127 ], [ %99, %2132 ], [ %99, %2137 ], [ %99, %2142 ], [ %99, %2147 ], [ %99, %2152 ], [ %99, %2157 ], [ %99, %2162 ], [ %1046, %2167 ], [ %1730, %2172 ], [ %1587, %2177 ], [ %1587, %2182 ], [ %1538, %2187 ], [ %1377, %2192 ], [ %1377, %2197 ], [ -3, %90 ], [ %99, %998 ], [ %99, %528 ], [ %99, %544 ], [ %99, %584 ], [ %99, %604 ], [ %99, %644 ], [ %99, %778 ], [ %99, %895 ], [ %99, %910 ], [ 0, %1365 ], [ %1776, %1771 ], [ %99, %1904 ], [ %99, %792 ], [ 1, %2202 ]
  store ptr %93, ptr %26, align 8, !tbaa !42
  store i32 %2204, ptr %41, align 8, !tbaa !45
  store ptr %2205, ptr %0, align 8, !tbaa !43
  store i32 %2206, ptr %43, align 8, !tbaa !44
  store i64 %2207, ptr %45, align 8, !tbaa !26
  store i32 %2208, ptr %47, align 8, !tbaa !27
  %2211 = load i32, ptr %79, align 4, !tbaa !33
  %2212 = icmp eq i32 %2211, 0
  br i1 %2212, label %2213, label %2222

2213:                                             ; preds = %2203
  %2214 = icmp eq i32 %2209, %2204
  br i1 %2214, label %2230, label %2215

2215:                                             ; preds = %2213
  %2216 = load i32, ptr %21, align 8, !tbaa !16
  %2217 = icmp ult i32 %2216, 16209
  br i1 %2217, label %2218, label %2230

2218:                                             ; preds = %2215
  %2219 = icmp ult i32 %2216, 16206
  %2220 = icmp ne i32 %1, 4
  %2221 = or i1 %2220, %2219
  br i1 %2221, label %2222, label %2230

2222:                                             ; preds = %2218, %2203
  %2223 = sub i32 %2209, %2204
  %2224 = call fastcc i32 @updatewindow(ptr noundef nonnull %0, ptr noundef %93, i32 noundef %2223), !range !108
  %2225 = icmp eq i32 %2224, 0
  br i1 %2225, label %2226, label %2229

2226:                                             ; preds = %2222
  %2227 = load i32, ptr %43, align 8, !tbaa !44
  %2228 = load i32, ptr %41, align 8, !tbaa !45
  br label %2230

2229:                                             ; preds = %2222
  store i32 16210, ptr %21, align 8, !tbaa !16
  br label %2287

2230:                                             ; preds = %2226, %2218, %2215, %2213
  %2231 = phi i32 [ %2228, %2226 ], [ %2204, %2218 ], [ %2204, %2215 ], [ %2204, %2213 ]
  %2232 = phi i32 [ %2227, %2226 ], [ %2206, %2218 ], [ %2206, %2215 ], [ %2206, %2213 ]
  %2233 = sub i32 %44, %2232
  %2234 = sub i32 %2209, %2231
  %2235 = zext i32 %2233 to i64
  %2236 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %2237 = load i64, ptr %2236, align 8, !tbaa !18
  %2238 = add i64 %2237, %2235
  store i64 %2238, ptr %2236, align 8, !tbaa !18
  %2239 = zext i32 %2234 to i64
  %2240 = load i64, ptr %50, align 8, !tbaa !106
  %2241 = add i64 %2240, %2239
  store i64 %2241, ptr %50, align 8, !tbaa !106
  %2242 = load i64, ptr %51, align 8, !tbaa !17
  %2243 = add i64 %2242, %2239
  store i64 %2243, ptr %51, align 8, !tbaa !17
  %2244 = load i32, ptr %49, align 8, !tbaa !19
  %2245 = and i32 %2244, 4
  %2246 = icmp ne i32 %2245, 0
  %2247 = icmp ne i32 %2209, %2231
  %2248 = select i1 %2246, i1 %2247, i1 false
  br i1 %2248, label %2249, label %2262

2249:                                             ; preds = %2230
  %2250 = load i32, ptr %52, align 8, !tbaa !23
  %2251 = icmp eq i32 %2250, 0
  %2252 = load i64, ptr %53, align 8, !tbaa !50
  %2253 = load ptr, ptr %26, align 8, !tbaa !42
  %2254 = sub nsw i64 0, %2239
  %2255 = getelementptr inbounds i8, ptr %2253, i64 %2254
  br i1 %2251, label %2258, label %2256

2256:                                             ; preds = %2249
  %2257 = call i64 @crc32(i64 noundef %2252, ptr noundef %2255, i32 noundef %2234) #9
  br label %2260

2258:                                             ; preds = %2249
  %2259 = call i64 @adler32(i64 noundef %2252, ptr noundef %2255, i32 noundef %2234) #9
  br label %2260

2260:                                             ; preds = %2258, %2256
  %2261 = phi i64 [ %2257, %2256 ], [ %2259, %2258 ]
  store i64 %2261, ptr %53, align 8, !tbaa !50
  store i64 %2261, ptr %54, align 8, !tbaa !20
  br label %2262

2262:                                             ; preds = %2260, %2230
  %2263 = load i32, ptr %47, align 8, !tbaa !27
  %2264 = load i32, ptr %83, align 4, !tbaa !21
  %2265 = icmp eq i32 %2264, 0
  %2266 = select i1 %2265, i32 0, i32 64
  %2267 = add nsw i32 %2266, %2263
  %2268 = load i32, ptr %21, align 8, !tbaa !16
  %2269 = icmp eq i32 %2268, 16191
  %2270 = select i1 %2269, i32 128, i32 0
  %2271 = add nsw i32 %2267, %2270
  %2272 = icmp eq i32 %2268, 16199
  %2273 = icmp eq i32 %2268, 16194
  %2274 = or i1 %2272, %2273
  %2275 = select i1 %2274, i32 256, i32 0
  %2276 = add nsw i32 %2271, %2275
  %2277 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 %2276, ptr %2277, align 8, !tbaa !109
  %2278 = icmp eq i32 %44, %2232
  %2279 = icmp eq i32 %2209, %2231
  %2280 = select i1 %2278, i1 %2279, i1 false
  %2281 = icmp eq i32 %1, 4
  %2282 = or i1 %2281, %2280
  %2283 = icmp eq i32 %2210, 0
  %2284 = select i1 %2282, i1 %2283, i1 false
  %2285 = select i1 %2284, i32 -5, i32 %2210
  br label %2287

2286:                                             ; preds = %90
  br label %2287

2287:                                             ; preds = %90, %2286, %13, %17, %2, %5, %9, %20, %25, %32, %2262, %2229, %775
  %2288 = phi i32 [ -4, %2229 ], [ %2285, %2262 ], [ 2, %775 ], [ -2, %32 ], [ -2, %25 ], [ -2, %20 ], [ -2, %9 ], [ -2, %5 ], [ -2, %2 ], [ -2, %17 ], [ -2, %13 ], [ -4, %2286 ], [ -2, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %2288
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @updatewindow(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 10
  %15 = load i32, ptr %14, align 8, !tbaa !37
  %16 = shl nuw i32 1, %15
  %17 = tail call ptr %11(ptr noundef %13, i32 noundef %16, i32 noundef 1) #9
  store ptr %17, ptr %6, align 8, !tbaa !36
  %18 = icmp eq ptr %17, null
  br i1 %18, label %71, label %19

19:                                               ; preds = %9, %3
  %20 = phi ptr [ %17, %9 ], [ %7, %3 ]
  %21 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !33
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !37
  %27 = shl nuw i32 1, %26
  store i32 %27, ptr %21, align 4, !tbaa !33
  %28 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  store i32 0, ptr %28, align 4, !tbaa !35
  %29 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 12
  store i32 0, ptr %29, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i32 [ %27, %24 ], [ %22, %19 ]
  %32 = icmp ugt i32 %31, %2
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = zext i32 %31 to i64
  %35 = sub nsw i64 0, %34
  %36 = getelementptr inbounds i8, ptr %1, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %36, i64 %34, i1 false)
  %37 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  store i32 0, ptr %37, align 4, !tbaa !35
  %38 = load i32, ptr %21, align 4, !tbaa !33
  %39 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 12
  store i32 %38, ptr %39, align 8, !tbaa !34
  br label %71

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !35
  %43 = sub i32 %31, %42
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %2)
  %45 = zext i32 %42 to i64
  %46 = getelementptr inbounds i8, ptr %20, i64 %45
  %47 = zext i32 %2 to i64
  %48 = sub nsw i64 0, %47
  %49 = getelementptr inbounds i8, ptr %1, i64 %48
  %50 = zext i32 %44 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %49, i64 %50, i1 false)
  %51 = icmp ult i32 %43, %2
  br i1 %51, label %52, label %60

52:                                               ; preds = %40
  %53 = sub i32 %2, %44
  %54 = load ptr, ptr %6, align 8, !tbaa !36
  %55 = zext i32 %53 to i64
  %56 = sub nsw i64 0, %55
  %57 = getelementptr inbounds i8, ptr %1, i64 %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %57, i64 %55, i1 false)
  store i32 %53, ptr %41, align 4, !tbaa !35
  %58 = load i32, ptr %21, align 4, !tbaa !33
  %59 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 12
  store i32 %58, ptr %59, align 8, !tbaa !34
  br label %71

60:                                               ; preds = %40
  %61 = load i32, ptr %41, align 4, !tbaa !35
  %62 = add i32 %61, %44
  %63 = load i32, ptr %21, align 4, !tbaa !33
  %64 = icmp eq i32 %62, %63
  %65 = select i1 %64, i32 0, i32 %62
  store i32 %65, ptr %41, align 4
  %66 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 12
  %67 = load i32, ptr %66, align 8, !tbaa !34
  %68 = icmp ult i32 %67, %63
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = add i32 %67, %44
  store i32 %70, ptr %66, align 8, !tbaa !34
  br label %71

71:                                               ; preds = %33, %60, %69, %52, %9
  %72 = phi i32 [ 1, %9 ], [ 0, %52 ], [ 0, %69 ], [ 0, %60 ], [ 0, %33 ]
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateEnd(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !36
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  tail call void %9(ptr noundef %29, ptr noundef nonnull %25) #9
  %30 = load ptr, ptr %8, align 8, !tbaa !12
  %31 = load ptr, ptr %12, align 8, !tbaa !13
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi ptr [ %31, %27 ], [ %13, %23 ]
  %34 = phi ptr [ %30, %27 ], [ %9, %23 ]
  %35 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  tail call void %34(ptr noundef %36, ptr noundef %33) #9
  store ptr null, ptr %12, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %11, %15, %1, %3, %7, %18, %32
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateGetDictionary(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 12
  %27 = load i32, ptr %26, align 8, !tbaa !34
  %28 = icmp ne i32 %27, 0
  %29 = icmp ne ptr %1, null
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 13
  %35 = load i32, ptr %34, align 4, !tbaa !35
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %33, i64 %36
  %38 = sub i32 %27, %35
  %39 = zext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %37, i64 %39, i1 false)
  %40 = load i32, ptr %26, align 8, !tbaa !34
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %1, i64 %41
  %43 = load i32, ptr %34, align 4, !tbaa !35
  %44 = zext i32 %43 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = load ptr, ptr %32, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %47, i64 %44, i1 false)
  br label %48

48:                                               ; preds = %31, %25
  %49 = icmp eq ptr %2, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %26, align 8, !tbaa !34
  store i32 %51, ptr %2, align 4, !tbaa !110
  br label %52

52:                                               ; preds = %13, %17, %3, %5, %9, %48, %50, %20
  %53 = phi i32 [ -2, %20 ], [ 0, %50 ], [ 0, %48 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateSetDictionary(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !19
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %22, 16190
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %32, label %46

31:                                               ; preds = %25
  br i1 %29, label %32, label %38

32:                                               ; preds = %30, %31
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #9
  %35 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !50
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32, %31
  %39 = zext i32 %2 to i64
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = tail call fastcc i32 @updatewindow(ptr noundef nonnull %0, ptr noundef %40, i32 noundef %2), !range !108
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 16210, ptr %21, align 8, !tbaa !16
  br label %46

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 4
  store i32 1, ptr %45, align 4, !tbaa !22
  br label %46

46:                                               ; preds = %13, %17, %3, %5, %9, %32, %30, %20, %44, %43
  %47 = phi i32 [ -4, %43 ], [ 0, %44 ], [ -2, %20 ], [ -2, %30 ], [ -3, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateGetHeader(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !19
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 9
  store ptr %1, ptr %30, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.gz_header_s, ptr %1, i64 0, i32 12
  store i32 0, ptr %31, align 8, !tbaa !51
  br label %32

32:                                               ; preds = %12, %16, %2, %4, %8, %24, %19, %29
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateSync(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %199, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %199, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %199, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %199, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %199

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %199

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !44
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !27
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %199, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 27
  %36 = load i32, ptr %35, align 4, !tbaa !110
  br label %122

37:                                               ; preds = %32
  store i32 16211, ptr %20, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !27
  %40 = and i32 %39, 7
  %41 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 15
  %42 = load i64, ptr %41, align 8, !tbaa !26
  %43 = zext nneg i32 %40 to i64
  %44 = lshr i64 %42, %43
  store i64 %44, ptr %41, align 8, !tbaa !26
  %45 = icmp ult i32 %39, 8
  br i1 %45, label %54, label %46

46:                                               ; preds = %37
  %47 = add i32 %39, -8
  %48 = lshr i32 %47, 3
  %49 = add nuw nsw i32 %48, 1
  %50 = and i32 %49, 3
  %51 = icmp ult i32 %47, 24
  br i1 %51, label %77, label %52

52:                                               ; preds = %46
  %53 = and i32 %49, 1073741820
  br label %55

54:                                               ; preds = %37
  store i32 0, ptr %38, align 8, !tbaa !27
  br label %118

55:                                               ; preds = %55, %52
  %56 = phi i64 [ 0, %52 ], [ %72, %55 ]
  %57 = phi i64 [ %44, %52 ], [ %74, %55 ]
  %58 = phi i32 [ 0, %52 ], [ %75, %55 ]
  %59 = trunc i64 %57 to i8
  %60 = or disjoint i64 %56, 1
  %61 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %56
  store i8 %59, ptr %61, align 1, !tbaa !39
  %62 = lshr i64 %57, 8
  %63 = trunc i64 %62 to i8
  %64 = or disjoint i64 %56, 2
  %65 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %60
  store i8 %63, ptr %65, align 1, !tbaa !39
  %66 = lshr i64 %57, 16
  %67 = trunc i64 %66 to i8
  %68 = or disjoint i64 %56, 3
  %69 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %64
  store i8 %67, ptr %69, align 1, !tbaa !39
  %70 = lshr i64 %57, 24
  %71 = trunc i64 %70 to i8
  %72 = add nuw nsw i64 %56, 4
  %73 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %68
  store i8 %71, ptr %73, align 1, !tbaa !39
  %74 = lshr i64 %57, 32
  %75 = add i32 %58, 4
  %76 = icmp eq i32 %75, %53
  br i1 %76, label %77, label %55, !llvm.loop !111

77:                                               ; preds = %55, %46
  %78 = phi i64 [ undef, %46 ], [ %72, %55 ]
  %79 = phi i64 [ undef, %46 ], [ %74, %55 ]
  %80 = phi i64 [ 0, %46 ], [ %72, %55 ]
  %81 = phi i64 [ %44, %46 ], [ %74, %55 ]
  %82 = icmp eq i32 %50, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %77, %83
  %84 = phi i64 [ %88, %83 ], [ %80, %77 ]
  %85 = phi i64 [ %90, %83 ], [ %81, %77 ]
  %86 = phi i32 [ %91, %83 ], [ 0, %77 ]
  %87 = trunc i64 %85 to i8
  %88 = add nuw nsw i64 %84, 1
  %89 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %84
  store i8 %87, ptr %89, align 1, !tbaa !39
  %90 = lshr i64 %85, 8
  %91 = add i32 %86, 1
  %92 = icmp eq i32 %91, %50
  br i1 %92, label %93, label %83, !llvm.loop !112

93:                                               ; preds = %83, %77
  %94 = phi i64 [ %78, %77 ], [ %88, %83 ]
  %95 = phi i64 [ %79, %77 ], [ %90, %83 ]
  store i64 %95, ptr %41, align 8, !tbaa !26
  store i32 0, ptr %38, align 8, !tbaa !27
  %96 = and i64 %94, 4294967295
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %93
  %99 = and i64 %94, 4294967295
  br label %100

100:                                              ; preds = %100, %98
  %101 = phi i64 [ 0, %98 ], [ %114, %100 ]
  %102 = phi i32 [ 0, %98 ], [ %113, %100 ]
  %103 = getelementptr inbounds i8, ptr %2, i64 %101
  %104 = load i8, ptr %103, align 1, !tbaa !39
  %105 = zext i8 %104 to i32
  %106 = icmp ult i32 %102, 2
  %107 = select i1 %106, i32 0, i32 255
  %108 = icmp eq i32 %107, %105
  %109 = add nuw nsw i32 %102, 1
  %110 = icmp eq i8 %104, 0
  %111 = sub nuw nsw i32 4, %102
  %112 = select i1 %110, i32 %111, i32 0
  %113 = select i1 %108, i32 %109, i32 %112
  %114 = add nuw nsw i64 %101, 1
  %115 = icmp ult i64 %114, %99
  %116 = icmp ult i32 %113, 4
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %100, label %118, !llvm.loop !113

118:                                              ; preds = %100, %54, %93
  %119 = phi i32 [ 0, %93 ], [ 0, %54 ], [ %113, %100 ]
  %120 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 27
  store i32 %119, ptr %120, align 4, !tbaa !110
  %121 = load i32, ptr %25, align 8, !tbaa !44
  br label %122

122:                                              ; preds = %34, %118
  %123 = phi i32 [ %119, %118 ], [ %36, %34 ]
  %124 = phi i32 [ %121, %118 ], [ %26, %34 ]
  %125 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 27
  %126 = load ptr, ptr %0, align 8, !tbaa !43
  %127 = icmp ne i32 %124, 0
  %128 = icmp ult i32 %123, 4
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %152

130:                                              ; preds = %122
  %131 = zext i32 %124 to i64
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi i64 [ 0, %130 ], [ %146, %132 ]
  %134 = phi i32 [ %123, %130 ], [ %145, %132 ]
  %135 = getelementptr inbounds i8, ptr %126, i64 %133
  %136 = load i8, ptr %135, align 1, !tbaa !39
  %137 = zext i8 %136 to i32
  %138 = icmp ult i32 %134, 2
  %139 = select i1 %138, i32 0, i32 255
  %140 = icmp eq i32 %139, %137
  %141 = add nuw nsw i32 %134, 1
  %142 = icmp eq i8 %136, 0
  %143 = sub nuw nsw i32 4, %134
  %144 = select i1 %142, i32 %143, i32 0
  %145 = select i1 %140, i32 %141, i32 %144
  %146 = add nuw nsw i64 %133, 1
  %147 = icmp ult i64 %146, %131
  %148 = icmp ult i32 %145, 4
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %132, label %150, !llvm.loop !113

150:                                              ; preds = %132
  %151 = trunc i64 %146 to i32
  br label %152

152:                                              ; preds = %122, %150
  %153 = phi i32 [ %123, %122 ], [ %145, %150 ]
  %154 = phi i32 [ 0, %122 ], [ %151, %150 ]
  store i32 %153, ptr %125, align 4, !tbaa !110
  %155 = load i32, ptr %25, align 8, !tbaa !44
  %156 = sub i32 %155, %154
  store i32 %156, ptr %25, align 8, !tbaa !44
  %157 = zext i32 %154 to i64
  %158 = getelementptr inbounds i8, ptr %126, i64 %157
  store ptr %158, ptr %0, align 8, !tbaa !43
  %159 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %160 = load i64, ptr %159, align 8, !tbaa !18
  %161 = add i64 %160, %157
  store i64 %161, ptr %159, align 8, !tbaa !18
  %162 = icmp eq i32 %153, 4
  br i1 %162, label %163, label %199

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 5
  %165 = load i32, ptr %164, align 8, !tbaa !23
  %166 = icmp eq i32 %165, -1
  %167 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  br i1 %166, label %171, label %168

168:                                              ; preds = %163
  %169 = load i32, ptr %167, align 8, !tbaa !19
  %170 = and i32 %169, -5
  br label %171

171:                                              ; preds = %163, %168
  %172 = phi i32 [ %170, %168 ], [ 0, %163 ]
  store i32 %172, ptr %167, align 8, !tbaa !19
  %173 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %174 = load i64, ptr %173, align 8, !tbaa !106
  %175 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 11
  store i32 0, ptr %175, align 4, !tbaa !33
  %176 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 12
  store i32 0, ptr %176, align 8, !tbaa !34
  %177 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 13
  store i32 0, ptr %177, align 4, !tbaa !35
  %178 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 8
  store i64 0, ptr %178, align 8, !tbaa !17
  %179 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %173, i8 0, i64 16, i1 false)
  %180 = load i32, ptr %179, align 8, !tbaa !19
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %171
  %183 = and i32 %180, 1
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %184, ptr %185, align 8, !tbaa !20
  br label %186

186:                                              ; preds = %171, %182
  %187 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 2
  store i32 0, ptr %187, align 4, !tbaa !21
  %188 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 4
  store i32 0, ptr %188, align 4, !tbaa !22
  %189 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 6
  store i32 32768, ptr %189, align 4, !tbaa !24
  %190 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 9
  store ptr null, ptr %190, align 8, !tbaa !25
  %191 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 15
  store i64 0, ptr %191, align 8, !tbaa !26
  %192 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 16
  store i32 0, ptr %192, align 8, !tbaa !27
  %193 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 31
  %194 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 28
  store ptr %193, ptr %194, align 8, !tbaa !28
  %195 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 21
  store ptr %193, ptr %195, align 8, !tbaa !29
  %196 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 20
  store ptr %193, ptr %196, align 8, !tbaa !30
  %197 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 32
  store i32 1, ptr %197, align 8, !tbaa !31
  %198 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 33
  store i32 -1, ptr %198, align 4, !tbaa !32
  store i64 %161, ptr %159, align 8, !tbaa !18
  store i64 %174, ptr %173, align 8, !tbaa !106
  store i32 %165, ptr %164, align 8, !tbaa !23
  store i32 16191, ptr %20, align 8, !tbaa !16
  br label %199

199:                                              ; preds = %12, %16, %1, %4, %8, %152, %28, %19, %186
  %200 = phi i32 [ 0, %186 ], [ -2, %19 ], [ -5, %28 ], [ -3, %152 ], [ -2, %8 ], [ -2, %4 ], [ -2, %1 ], [ -2, %16 ], [ -2, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %200
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @inflateSyncPoint(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = icmp eq i32 %20, 16193
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !27
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %11, %15, %1, %3, %7, %23, %25, %18
  %31 = phi i32 [ -2, %18 ], [ 0, %23 ], [ %29, %25 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateCopy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %89, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %89, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %89, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %89, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %89

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16212
  %23 = icmp ult i32 %22, -32
  %24 = icmp eq ptr %0, null
  %25 = or i1 %24, %23
  br i1 %25, label %89, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = tail call ptr %6(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %89, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 8, !tbaa !5
  %37 = load ptr, ptr %27, align 8, !tbaa !38
  %38 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !37
  %40 = shl nuw i32 1, %39
  %41 = tail call ptr %36(ptr noundef %37, i32 noundef %40, i32 noundef 1) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8, !tbaa !12
  %45 = load ptr, ptr %27, align 8, !tbaa !38
  tail call void %44(ptr noundef %45, ptr noundef nonnull %29) #9
  br label %89

46:                                               ; preds = %35, %31
  %47 = phi ptr [ %41, %35 ], [ null, %31 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %0, ptr noundef nonnull align 1 dereferenceable(112) %1, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7160) %29, ptr noundef nonnull align 1 dereferenceable(7160) %14, i64 7160, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !14
  %48 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 20
  %49 = load ptr, ptr %48, align 8, !tbaa !30
  %50 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 31
  %51 = icmp ult ptr %49, %50
  %52 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 31, i64 1443
  %53 = icmp ugt ptr %49, %52
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = ptrtoint ptr %50 to i64
  br label %70

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 31
  %59 = ptrtoint ptr %49 to i64
  %60 = ptrtoint ptr %50 to i64
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 20
  store ptr %62, ptr %63, align 8, !tbaa !30
  %64 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 21
  %65 = load ptr, ptr %64, align 8, !tbaa !29
  %66 = ptrtoint ptr %65 to i64
  %67 = sub i64 %66, %60
  %68 = getelementptr inbounds i8, ptr %58, i64 %67
  %69 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 21
  store ptr %68, ptr %69, align 8, !tbaa !29
  br label %70

70:                                               ; preds = %55, %57
  %71 = phi i64 [ %56, %55 ], [ %60, %57 ]
  %72 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 31
  %73 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 28
  %74 = load ptr, ptr %73, align 8, !tbaa !28
  %75 = ptrtoint ptr %74 to i64
  %76 = sub i64 %75, %71
  %77 = getelementptr inbounds i8, ptr %72, i64 %76
  %78 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 28
  store ptr %77, ptr %78, align 8, !tbaa !28
  %79 = icmp eq ptr %47, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  %82 = load i32, ptr %81, align 8, !tbaa !37
  %83 = shl nuw i32 1, %82
  %84 = load ptr, ptr %32, align 8, !tbaa !36
  %85 = zext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %47, ptr noundef nonnull align 1 dereferenceable(1) %84, i64 %85, i1 false)
  br label %86

86:                                               ; preds = %80, %70
  %87 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 14
  store ptr %47, ptr %87, align 8, !tbaa !36
  %88 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %29, ptr %88, align 8, !tbaa !13
  br label %89

89:                                               ; preds = %12, %16, %2, %4, %8, %26, %19, %86, %43
  %90 = phi i32 [ -4, %43 ], [ 0, %86 ], [ -2, %19 ], [ -4, %26 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %90
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateUndermine(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 32
  store i32 1, ptr %25, align 8, !tbaa !31
  br label %26

26:                                               ; preds = %12, %16, %2, %4, %8, %19, %24
  %27 = phi i32 [ -3, %24 ], [ -2, %19 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateValidate(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = icmp eq i32 %1, 0
  %26 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !19
  br i1 %25, label %28, label %30

28:                                               ; preds = %24
  %29 = and i32 %27, -5
  br label %34

30:                                               ; preds = %24
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = or i32 %27, 4
  store i32 %33, ptr %26, align 8, !tbaa !19
  br label %37

34:                                               ; preds = %28, %30
  %35 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %36 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  store i32 %35, ptr %36, align 8, !tbaa !19
  br label %37

37:                                               ; preds = %12, %16, %2, %4, %8, %32, %34, %19
  %38 = phi i32 [ -2, %19 ], [ 0, %34 ], [ 0, %32 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @inflateMark(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 33
  %25 = load i32, ptr %24, align 4, !tbaa !32
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 16
  switch i32 %20, label %37 [
    i32 16195, label %28
    i32 16204, label %31
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 17
  %30 = load i32, ptr %29, align 4, !tbaa !61
  br label %37

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !99
  %34 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 17
  %35 = load i32, ptr %34, align 4, !tbaa !61
  %36 = sub i32 %33, %35
  br label %37

37:                                               ; preds = %23, %31, %28
  %38 = phi i32 [ %30, %28 ], [ %36, %31 ], [ 0, %23 ]
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %27, %39
  br label %41

41:                                               ; preds = %11, %15, %1, %3, %7, %18, %37
  %42 = phi i64 [ %40, %37 ], [ -65536, %18 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %1 ], [ -65536, %15 ], [ -65536, %11 ]
  ret i64 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @inflateCodesUsed(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 28
  %25 = load ptr, ptr %24, align 8, !tbaa !28
  %26 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 31
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 2
  br label %31

31:                                               ; preds = %11, %15, %1, %3, %7, %18, %23
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %7 ], [ -1, %3 ], [ -1, %1 ], [ -1, %15 ], [ -1, %11 ]
  ret i64 %32
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 64}
!6 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 72}
!13 = !{!6, !7, i64 56}
!14 = !{!15, !7, i64 0}
!15 = !{!"inflate_state", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !11, i64 32, !11, i64 40, !7, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !7, i64 72, !11, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !7, i64 104, !7, i64 112, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !7, i64 144, !8, i64 152, !8, i64 792, !8, i64 1368, !10, i64 7144, !10, i64 7148, !10, i64 7152}
!16 = !{!15, !10, i64 8}
!17 = !{!15, !11, i64 40}
!18 = !{!6, !11, i64 16}
!19 = !{!15, !10, i64 16}
!20 = !{!6, !11, i64 96}
!21 = !{!15, !10, i64 12}
!22 = !{!15, !10, i64 20}
!23 = !{!15, !10, i64 24}
!24 = !{!15, !10, i64 28}
!25 = !{!15, !7, i64 48}
!26 = !{!15, !11, i64 80}
!27 = !{!15, !10, i64 88}
!28 = !{!15, !7, i64 144}
!29 = !{!15, !7, i64 112}
!30 = !{!15, !7, i64 104}
!31 = !{!15, !10, i64 7144}
!32 = !{!15, !10, i64 7148}
!33 = !{!15, !10, i64 60}
!34 = !{!15, !10, i64 64}
!35 = !{!15, !10, i64 68}
!36 = !{!15, !7, i64 72}
!37 = !{!15, !10, i64 56}
!38 = !{!6, !7, i64 80}
!39 = !{!8, !8, i64 0}
!40 = !{!6, !7, i64 48}
!41 = !{i32 -2, i32 1}
!42 = !{!6, !7, i64 24}
!43 = !{!6, !7, i64 0}
!44 = !{!6, !10, i64 8}
!45 = !{!6, !10, i64 32}
!46 = !{!15, !10, i64 100}
!47 = !{!15, !10, i64 140}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!15, !11, i64 32}
!51 = !{!52, !10, i64 72}
!52 = !{!"gz_header_s", !10, i64 0, !11, i64 8, !10, i64 16, !10, i64 20, !7, i64 24, !10, i64 32, !10, i64 36, !7, i64 40, !10, i64 48, !7, i64 56, !10, i64 64, !10, i64 68, !10, i64 72}
!53 = distinct !{!53, !49}
!54 = !{!52, !10, i64 0}
!55 = distinct !{!55, !49}
!56 = !{!52, !11, i64 8}
!57 = distinct !{!57, !49}
!58 = !{!52, !10, i64 16}
!59 = !{!52, !10, i64 20}
!60 = distinct !{!60, !49}
!61 = !{!15, !10, i64 92}
!62 = !{!52, !10, i64 32}
!63 = !{!52, !7, i64 24}
!64 = !{!52, !10, i64 36}
!65 = !{!52, !7, i64 40}
!66 = !{!52, !10, i64 48}
!67 = distinct !{!67, !49}
!68 = !{!52, !7, i64 56}
!69 = !{!52, !10, i64 64}
!70 = distinct !{!70, !49}
!71 = distinct !{!71, !49}
!72 = !{!52, !10, i64 68}
!73 = distinct !{!73, !49}
!74 = !{!15, !10, i64 120}
!75 = !{!15, !10, i64 124}
!76 = distinct !{!76, !49}
!77 = distinct !{!77, !49}
!78 = !{!15, !10, i64 132}
!79 = !{!15, !10, i64 136}
!80 = !{!15, !10, i64 128}
!81 = !{!82, !82, i64 0}
!82 = !{!"short", !8, i64 0}
!83 = distinct !{!83, !49}
!84 = distinct !{!84, !49}
!85 = !{i64 0, i64 1, !39, i64 1, i64 2, !81}
!86 = !{i64 0, i64 2, !81}
!87 = distinct !{!87, !49}
!88 = distinct !{!88, !49}
!89 = distinct !{!89, !49}
!90 = distinct !{!90, !49, !91, !92}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = distinct !{!95, !49, !91}
!96 = distinct !{!96, !49}
!97 = !{i64 0, i64 1, !39, i64 1, i64 1, !39, i64 2, i64 2, !81}
!98 = distinct !{!98, !49}
!99 = !{!15, !10, i64 7152}
!100 = !{!15, !10, i64 96}
!101 = distinct !{!101, !49}
!102 = distinct !{!102, !49, !91, !92}
!103 = distinct !{!103, !94}
!104 = distinct !{!104, !49, !91}
!105 = distinct !{!105, !49}
!106 = !{!6, !11, i64 40}
!107 = distinct !{!107, !49}
!108 = !{i32 0, i32 2}
!109 = !{!6, !10, i64 88}
!110 = !{!10, !10, i64 0}
!111 = distinct !{!111, !49}
!112 = distinct !{!112, !94}
!113 = distinct !{!113, !49}
