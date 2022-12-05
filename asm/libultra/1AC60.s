.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001A060
/* 1AC60 8001A060 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1AC64 8001A064 AFB5003C */  sw         $s5, 0x3C($sp)
/* 1AC68 8001A068 00A0A821 */  addu       $s5, $a1, $zero
/* 1AC6C 8001A06C AFBF0048 */  sw         $ra, 0x48($sp)
/* 1AC70 8001A070 AFB70044 */  sw         $s7, 0x44($sp)
/* 1AC74 8001A074 AFB60040 */  sw         $s6, 0x40($sp)
/* 1AC78 8001A078 AFB40038 */  sw         $s4, 0x38($sp)
/* 1AC7C 8001A07C AFB30034 */  sw         $s3, 0x34($sp)
/* 1AC80 8001A080 AFB20030 */  sw         $s2, 0x30($sp)
/* 1AC84 8001A084 AFB1002C */  sw         $s1, 0x2C($sp)
/* 1AC88 8001A088 AFB00028 */  sw         $s0, 0x28($sp)
/* 1AC8C 8001A08C 8EB60014 */  lw         $s6, 0x14($s5)
/* 1AC90 8001A090 0080A021 */  addu       $s4, $a0, $zero
/* 1AC94 8001A094 AE800000 */  sw         $zero, 0x0($s4)
/* 1AC98 8001A098 8EA20004 */  lw         $v0, 0x4($s5)
/* 1AC9C 8001A09C 00002021 */  addu       $a0, $zero, $zero
/* 1ACA0 8001A0A0 AE800020 */  sw         $zero, 0x20($s4)
/* 1ACA4 8001A0A4 AE80001C */  sw         $zero, 0x1C($s4)
/* 1ACA8 8001A0A8 AE82003C */  sw         $v0, 0x3C($s4)
/* 1ACAC 8001A0AC 8EA30018 */  lw         $v1, 0x18($s5)
/* 1ACB0 8001A0B0 00002821 */  addu       $a1, $zero, $zero
/* 1ACB4 8001A0B4 240200A0 */  addiu      $v0, $zero, 0xA0
/* 1ACB8 8001A0B8 AE820048 */  sw         $v0, 0x48($s4)
/* 1ACBC 8001A0BC AE830044 */  sw         $v1, 0x44($s4)
/* 1ACC0 8001A0C0 8EA20010 */  lw         $v0, 0x10($s5)
/* 1ACC4 8001A0C4 24070001 */  addiu      $a3, $zero, 0x1
/* 1ACC8 8001A0C8 02C03021 */  addu       $a2, $s6, $zero
/* 1ACCC 8001A0CC AE820024 */  sw         $v0, 0x24($s4)
/* 1ACD0 8001A0D0 2402001C */  addiu      $v0, $zero, 0x1C
/* 1ACD4 8001A0D4 0C0067F4 */  jal        alHeapDBAlloc
/* 1ACD8 8001A0D8 AFA20010 */   sw        $v0, 0x10($sp)
/* 1ACDC 8001A0DC 0040B821 */  addu       $s7, $v0, $zero
/* 1ACE0 8001A0E0 0C005D46 */  jal        func_80017518
/* 1ACE4 8001A0E4 02E02021 */   addu      $a0, $s7, $zero
/* 1ACE8 8001A0E8 00002021 */  addu       $a0, $zero, $zero
/* 1ACEC 8001A0EC 00002821 */  addu       $a1, $zero, $zero
/* 1ACF0 8001A0F0 02C03021 */  addu       $a2, $s6, $zero
/* 1ACF4 8001A0F4 24070001 */  addiu      $a3, $zero, 0x1
/* 1ACF8 8001A0F8 2402004C */  addiu      $v0, $zero, 0x4C
/* 1ACFC 8001A0FC AE970038 */  sw         $s7, 0x38($s4)
/* 1AD00 8001A100 0C0067F4 */  jal        alHeapDBAlloc
/* 1AD04 8001A104 AFA20010 */   sw        $v0, 0x10($sp)
/* 1AD08 8001A108 00002021 */  addu       $a0, $zero, $zero
/* 1AD0C 8001A10C AE820034 */  sw         $v0, 0x34($s4)
/* 1AD10 8001A110 24020001 */  addiu      $v0, $zero, 0x1
/* 1AD14 8001A114 24100004 */  addiu      $s0, $zero, 0x4
/* 1AD18 8001A118 AE820040 */  sw         $v0, 0x40($s4)
/* 1AD1C 8001A11C AFB00010 */  sw         $s0, 0x10($sp)
/* 1AD20 8001A120 8EA70004 */  lw         $a3, 0x4($s5)
/* 1AD24 8001A124 00002821 */  addu       $a1, $zero, $zero
/* 1AD28 8001A128 0C0067F4 */  jal        alHeapDBAlloc
/* 1AD2C 8001A12C 02C03021 */   addu      $a2, $s6, $zero
/* 1AD30 8001A130 8E840034 */  lw         $a0, 0x34($s4)
/* 1AD34 8001A134 8EA60004 */  lw         $a2, 0x4($s5)
/* 1AD38 8001A138 0C005D18 */  jal        func_80017460
/* 1AD3C 8001A13C 00402821 */   addu      $a1, $v0, $zero
/* 1AD40 8001A140 00002021 */  addu       $a0, $zero, $zero
/* 1AD44 8001A144 00002821 */  addu       $a1, $zero, $zero
/* 1AD48 8001A148 02C03021 */  addu       $a2, $s6, $zero
/* 1AD4C 8001A14C 24070001 */  addiu      $a3, $zero, 0x1
/* 1AD50 8001A150 24020020 */  addiu      $v0, $zero, 0x20
/* 1AD54 8001A154 0C0067F4 */  jal        alHeapDBAlloc
/* 1AD58 8001A158 AFA20010 */   sw        $v0, 0x10($sp)
/* 1AD5C 8001A15C 00002021 */  addu       $a0, $zero, $zero
/* 1AD60 8001A160 AE820030 */  sw         $v0, 0x30($s4)
/* 1AD64 8001A164 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AD68 8001A168 8EA70004 */  lw         $a3, 0x4($s5)
/* 1AD6C 8001A16C 00002821 */  addu       $a1, $zero, $zero
/* 1AD70 8001A170 0C0067F4 */  jal        alHeapDBAlloc
/* 1AD74 8001A174 02C03021 */   addu      $a2, $s6, $zero
/* 1AD78 8001A178 8E840030 */  lw         $a0, 0x30($s4)
/* 1AD7C 8001A17C 8EA60004 */  lw         $a2, 0x4($s5)
/* 1AD80 8001A180 0C005D2F */  jal        func_800174BC
/* 1AD84 8001A184 00402821 */   addu      $a1, $v0, $zero
/* 1AD88 8001A188 92A2001C */  lbu        $v0, 0x1C($s5)
/* 1AD8C 8001A18C 10400007 */  beqz       $v0, .L8001A1AC
/* 1AD90 8001A190 02802021 */   addu      $a0, $s4, $zero
/* 1AD94 8001A194 00002821 */  addu       $a1, $zero, $zero
/* 1AD98 8001A198 02A03021 */  addu       $a2, $s5, $zero
/* 1AD9C 8001A19C 0C0069AC */  jal        func_8001A6B0
/* 1ADA0 8001A1A0 02C03821 */   addu      $a3, $s6, $zero
/* 1ADA4 8001A1A4 08006870 */  j          .L8001A1C0
/* 1ADA8 8001A1A8 00002021 */   addu      $a0, $zero, $zero
.L8001A1AC:
/* 1ADAC 8001A1AC 8E840030 */  lw         $a0, 0x30($s4)
/* 1ADB0 8001A1B0 8E860034 */  lw         $a2, 0x34($s4)
/* 1ADB4 8001A1B4 0C0063E4 */  jal        func_80018F90
/* 1ADB8 8001A1B8 24050002 */   addiu     $a1, $zero, 0x2
/* 1ADBC 8001A1BC 00002021 */  addu       $a0, $zero, $zero
.L8001A1C0:
/* 1ADC0 8001A1C0 240200DC */  addiu      $v0, $zero, 0xDC
/* 1ADC4 8001A1C4 AE800004 */  sw         $zero, 0x4($s4)
/* 1ADC8 8001A1C8 AE800008 */  sw         $zero, 0x8($s4)
/* 1ADCC 8001A1CC AE800014 */  sw         $zero, 0x14($s4)
/* 1ADD0 8001A1D0 AE800018 */  sw         $zero, 0x18($s4)
/* 1ADD4 8001A1D4 AE80000C */  sw         $zero, 0xC($s4)
/* 1ADD8 8001A1D8 AE800010 */  sw         $zero, 0x10($s4)
/* 1ADDC 8001A1DC AFA20010 */  sw         $v0, 0x10($sp)
/* 1ADE0 8001A1E0 8EA70004 */  lw         $a3, 0x4($s5)
/* 1ADE4 8001A1E4 00002821 */  addu       $a1, $zero, $zero
/* 1ADE8 8001A1E8 0C0067F4 */  jal        alHeapDBAlloc
/* 1ADEC 8001A1EC 02C03021 */   addu      $a2, $s6, $zero
/* 1ADF0 8001A1F0 8EA30004 */  lw         $v1, 0x4($s5)
/* 1ADF4 8001A1F4 18600029 */  blez       $v1, .L8001A29C
/* 1ADF8 8001A1F8 00009821 */   addu      $s3, $zero, $zero
/* 1ADFC 8001A1FC 00409021 */  addu       $s2, $v0, $zero
.L8001A200:
/* 1AE00 8001A200 02402021 */  addu       $a0, $s2, $zero
/* 1AE04 8001A204 0C0067CF */  jal        alLink
/* 1AE08 8001A208 26850004 */   addiu     $a1, $s4, 0x4
/* 1AE0C 8001A20C AE400008 */  sw         $zero, 0x8($s2)
/* 1AE10 8001A210 8E850024 */  lw         $a1, 0x24($s4)
/* 1AE14 8001A214 26500010 */  addiu      $s0, $s2, 0x10
/* 1AE18 8001A218 02002021 */  addu       $a0, $s0, $zero
/* 1AE1C 8001A21C 0C005CC9 */  jal        func_80017324
/* 1AE20 8001A220 02C03021 */   addu      $a2, $s6, $zero
/* 1AE24 8001A224 02002021 */  addu       $a0, $s0, $zero
/* 1AE28 8001A228 24050001 */  addiu      $a1, $zero, 0x1
/* 1AE2C 8001A22C 0C005F50 */  jal        func_80017D40
/* 1AE30 8001A230 00003021 */   addu      $a2, $zero, $zero
/* 1AE34 8001A234 26510058 */  addiu      $s1, $s2, 0x58
/* 1AE38 8001A238 02202021 */  addu       $a0, $s1, $zero
/* 1AE3C 8001A23C 0C005CF5 */  jal        func_800173D4
/* 1AE40 8001A240 02C02821 */   addu      $a1, $s6, $zero
/* 1AE44 8001A244 02202021 */  addu       $a0, $s1, $zero
/* 1AE48 8001A248 24050001 */  addiu      $a1, $zero, 0x1
/* 1AE4C 8001A24C 0C00646B */  jal        func_800191AC
/* 1AE50 8001A250 02003021 */   addu      $a2, $s0, $zero
/* 1AE54 8001A254 2650008C */  addiu      $s0, $s2, 0x8C
/* 1AE58 8001A258 02002021 */  addu       $a0, $s0, $zero
/* 1AE5C 8001A25C 0C005C9B */  jal        func_8001726C
/* 1AE60 8001A260 02C02821 */   addu      $a1, $s6, $zero
/* 1AE64 8001A264 02002021 */  addu       $a0, $s0, $zero
/* 1AE68 8001A268 24050001 */  addiu      $a1, $zero, 0x1
/* 1AE6C 8001A26C 0C0061A0 */  jal        func_80018680
/* 1AE70 8001A270 02203021 */   addu      $a2, $s1, $zero
/* 1AE74 8001A274 8E840034 */  lw         $a0, 0x34($s4)
/* 1AE78 8001A278 24050002 */  addiu      $a1, $zero, 0x2
/* 1AE7C 8001A27C 0C006053 */  jal        func_8001814C
/* 1AE80 8001A280 02003021 */   addu      $a2, $s0, $zero
/* 1AE84 8001A284 AE50000C */  sw         $s0, 0xC($s2)
/* 1AE88 8001A288 8EA20004 */  lw         $v0, 0x4($s5)
/* 1AE8C 8001A28C 26730001 */  addiu      $s3, $s3, 0x1
/* 1AE90 8001A290 0262102A */  slt        $v0, $s3, $v0
/* 1AE94 8001A294 1440FFDA */  bnez       $v0, .L8001A200
/* 1AE98 8001A298 265200DC */   addiu     $s2, $s2, 0xDC
.L8001A29C:
/* 1AE9C 8001A29C 8E860030 */  lw         $a2, 0x30($s4)
/* 1AEA0 8001A2A0 02E02021 */  addu       $a0, $s7, $zero
/* 1AEA4 8001A2A4 0C0067AE */  jal        func_80019EB8
/* 1AEA8 8001A2A8 24050001 */   addiu     $a1, $zero, 0x1
/* 1AEAC 8001A2AC 00002021 */  addu       $a0, $zero, $zero
/* 1AEB0 8001A2B0 2402001C */  addiu      $v0, $zero, 0x1C
/* 1AEB4 8001A2B4 AFA20010 */  sw         $v0, 0x10($sp)
/* 1AEB8 8001A2B8 8EA70008 */  lw         $a3, 0x8($s5)
/* 1AEBC 8001A2BC 00002821 */  addu       $a1, $zero, $zero
/* 1AEC0 8001A2C0 0C0067F4 */  jal        alHeapDBAlloc
/* 1AEC4 8001A2C4 02C03021 */   addu      $a2, $s6, $zero
/* 1AEC8 8001A2C8 AE80002C */  sw         $zero, 0x2C($s4)
/* 1AECC 8001A2CC 8EA30008 */  lw         $v1, 0x8($s5)
/* 1AED0 8001A2D0 1860000A */  blez       $v1, .L8001A2FC
/* 1AED4 8001A2D4 00009821 */   addu      $s3, $zero, $zero
/* 1AED8 8001A2D8 00401821 */  addu       $v1, $v0, $zero
.L8001A2DC:
/* 1AEDC 8001A2DC 8E82002C */  lw         $v0, 0x2C($s4)
/* 1AEE0 8001A2E0 AC620000 */  sw         $v0, 0x0($v1)
/* 1AEE4 8001A2E4 AE83002C */  sw         $v1, 0x2C($s4)
/* 1AEE8 8001A2E8 8EA20008 */  lw         $v0, 0x8($s5)
/* 1AEEC 8001A2EC 26730001 */  addiu      $s3, $s3, 0x1
/* 1AEF0 8001A2F0 0262102A */  slt        $v0, $s3, $v0
/* 1AEF4 8001A2F4 1440FFF9 */  bnez       $v0, .L8001A2DC
/* 1AEF8 8001A2F8 2463001C */   addiu     $v1, $v1, 0x1C
.L8001A2FC:
/* 1AEFC 8001A2FC AE960028 */  sw         $s6, 0x28($s4)
/* 1AF00 8001A300 8FBF0048 */  lw         $ra, 0x48($sp)
/* 1AF04 8001A304 8FB70044 */  lw         $s7, 0x44($sp)
/* 1AF08 8001A308 8FB60040 */  lw         $s6, 0x40($sp)
/* 1AF0C 8001A30C 8FB5003C */  lw         $s5, 0x3C($sp)
/* 1AF10 8001A310 8FB40038 */  lw         $s4, 0x38($sp)
/* 1AF14 8001A314 8FB30034 */  lw         $s3, 0x34($sp)
/* 1AF18 8001A318 8FB20030 */  lw         $s2, 0x30($sp)
/* 1AF1C 8001A31C 8FB1002C */  lw         $s1, 0x2C($sp)
/* 1AF20 8001A320 8FB00028 */  lw         $s0, 0x28($sp)
/* 1AF24 8001A324 03E00008 */  jr         $ra
/* 1AF28 8001A328 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8001A32C
/* 1AF2C 8001A32C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1AF30 8001A330 AFB20028 */  sw         $s2, 0x28($sp)
/* 1AF34 8001A334 3C128003 */  lui        $s2, %hi(D_80030FA0)
/* 1AF38 8001A338 8E520FA0 */  lw         $s2, %lo(D_80030FA0)($s2)
/* 1AF3C 8001A33C AFB7003C */  sw         $s7, 0x3C($sp)
/* 1AF40 8001A340 0080B821 */  addu       $s7, $a0, $zero
/* 1AF44 8001A344 AFBE0040 */  sw         $fp, 0x40($sp)
/* 1AF48 8001A348 00A0F021 */  addu       $fp, $a1, $zero
/* 1AF4C 8001A34C AFB3002C */  sw         $s3, 0x2C($sp)
/* 1AF50 8001A350 00E09821 */  addu       $s3, $a3, $zero
/* 1AF54 8001A354 AFBF0044 */  sw         $ra, 0x44($sp)
/* 1AF58 8001A358 AFB60038 */  sw         $s6, 0x38($sp)
/* 1AF5C 8001A35C AFB50034 */  sw         $s5, 0x34($sp)
/* 1AF60 8001A360 AFB40030 */  sw         $s4, 0x30($sp)
/* 1AF64 8001A364 AFB10024 */  sw         $s1, 0x24($sp)
/* 1AF68 8001A368 AFB00020 */  sw         $s0, 0x20($sp)
/* 1AF6C 8001A36C 8E420000 */  lw         $v0, 0x0($s2)
/* 1AF70 8001A370 02E0A021 */  addu       $s4, $s7, $zero
/* 1AF74 8001A374 00C0A821 */  addu       $s5, $a2, $zero
/* 1AF78 8001A378 14400003 */  bnez       $v0, .L8001A388
/* 1AF7C 8001A37C A7A0001C */   sh        $zero, 0x1C($sp)
/* 1AF80 8001A380 0800692A */  j          .L8001A4A8
/* 1AF84 8001A384 AFC00000 */   sw        $zero, 0x0($fp)
.L8001A388:
/* 1AF88 8001A388 02402021 */  addu       $a0, $s2, $zero
/* 1AF8C 8001A38C 0C006992 */  jal        func_8001A648
/* 1AF90 8001A390 27A50018 */   addiu     $a1, $sp, 0x18
/* 1AF94 8001A394 8E430020 */  lw         $v1, 0x20($s2)
/* 1AF98 8001A398 AE42001C */  sw         $v0, 0x1C($s2)
/* 1AF9C 8001A39C 00431023 */  subu       $v0, $v0, $v1
/* 1AFA0 8001A3A0 0053102A */  slt        $v0, $v0, $s3
/* 1AFA4 8001A3A4 10400019 */  beqz       $v0, .L8001A40C
/* 1AFA8 8001A3A8 00000000 */   nop
/* 1AFAC 8001A3AC 2410FFF0 */  addiu      $s0, $zero, -0x10
.L8001A3B0:
/* 1AFB0 8001A3B0 8E42001C */  lw         $v0, 0x1C($s2)
/* 1AFB4 8001A3B4 8FA40018 */  lw         $a0, 0x18($sp)
/* 1AFB8 8001A3B8 00501024 */  and        $v0, $v0, $s0
/* 1AFBC 8001A3BC AE42001C */  sw         $v0, 0x1C($s2)
/* 1AFC0 8001A3C0 8C820008 */  lw         $v0, 0x8($a0)
/* 1AFC4 8001A3C4 0040F809 */  jalr       $v0
/* 1AFC8 8001A3C8 00000000 */   nop
/* 1AFCC 8001A3CC 02402021 */  addu       $a0, $s2, $zero
/* 1AFD0 8001A3D0 0C00696D */  jal        func_8001A5B4
/* 1AFD4 8001A3D4 00402821 */   addu      $a1, $v0, $zero
/* 1AFD8 8001A3D8 8FA60018 */  lw         $a2, 0x18($sp)
/* 1AFDC 8001A3DC 8CC30010 */  lw         $v1, 0x10($a2)
/* 1AFE0 8001A3E0 02402021 */  addu       $a0, $s2, $zero
/* 1AFE4 8001A3E4 27A50018 */  addiu      $a1, $sp, 0x18
/* 1AFE8 8001A3E8 00621821 */  addu       $v1, $v1, $v0
/* 1AFEC 8001A3EC 0C006992 */  jal        func_8001A648
/* 1AFF0 8001A3F0 ACC30010 */   sw        $v1, 0x10($a2)
/* 1AFF4 8001A3F4 8E430020 */  lw         $v1, 0x20($s2)
/* 1AFF8 8001A3F8 AE42001C */  sw         $v0, 0x1C($s2)
/* 1AFFC 8001A3FC 00431023 */  subu       $v0, $v0, $v1
/* 1B000 8001A400 0053102A */  slt        $v0, $v0, $s3
/* 1B004 8001A404 1440FFEA */  bnez       $v0, .L8001A3B0
/* 1B008 8001A408 00000000 */   nop
.L8001A40C:
/* 1B00C 8001A40C 8E42001C */  lw         $v0, 0x1C($s2)
/* 1B010 8001A410 2403FFF0 */  addiu      $v1, $zero, -0x10
/* 1B014 8001A414 00431024 */  and        $v0, $v0, $v1
/* 1B018 8001A418 1A60001E */  blez       $s3, .L8001A494
/* 1B01C 8001A41C AE42001C */   sw        $v0, 0x1C($s2)
/* 1B020 8001A420 3C160700 */  lui        $s6, (0x7000000 >> 16)
.L8001A424:
/* 1B024 8001A424 8E510048 */  lw         $s1, 0x48($s2)
/* 1B028 8001A428 0271102A */  slt        $v0, $s3, $s1
/* 1B02C 8001A42C 54400001 */  bnel       $v0, $zero, .L8001A434
/* 1B030 8001A430 02608821 */   addu      $s1, $s3, $zero
.L8001A434:
/* 1B034 8001A434 AE960000 */  sw         $s6, 0x0($s4)
/* 1B038 8001A438 AE800004 */  sw         $zero, 0x4($s4)
/* 1B03C 8001A43C 8E500038 */  lw         $s0, 0x38($s2)
/* 1B040 8001A440 24050006 */  addiu      $a1, $zero, 0x6
/* 1B044 8001A444 02A03021 */  addu       $a2, $s5, $zero
/* 1B048 8001A448 8E020008 */  lw         $v0, 0x8($s0)
/* 1B04C 8001A44C 02719823 */  subu       $s3, $s3, $s1
/* 1B050 8001A450 0040F809 */  jalr       $v0
/* 1B054 8001A454 02002021 */   addu      $a0, $s0, $zero
/* 1B058 8001A458 02002021 */  addu       $a0, $s0, $zero
/* 1B05C 8001A45C 26820008 */  addiu      $v0, $s4, 0x8
/* 1B060 8001A460 AFA20010 */  sw         $v0, 0x10($sp)
/* 1B064 8001A464 8C820004 */  lw         $v0, 0x4($a0)
/* 1B068 8001A468 8E470020 */  lw         $a3, 0x20($s2)
/* 1B06C 8001A46C 27A5001C */  addiu      $a1, $sp, 0x1C
/* 1B070 8001A470 0040F809 */  jalr       $v0
/* 1B074 8001A474 02203021 */   addu      $a2, $s1, $zero
/* 1B078 8001A478 0040A021 */  addu       $s4, $v0, $zero
/* 1B07C 8001A47C 8E430020 */  lw         $v1, 0x20($s2)
/* 1B080 8001A480 00111080 */  sll        $v0, $s1, 2
/* 1B084 8001A484 02A2A821 */  addu       $s5, $s5, $v0
/* 1B088 8001A488 00711821 */  addu       $v1, $v1, $s1
/* 1B08C 8001A48C 1E60FFE5 */  bgtz       $s3, .L8001A424
/* 1B090 8001A490 AE430020 */   sw        $v1, 0x20($s2)
.L8001A494:
/* 1B094 8001A494 02971023 */  subu       $v0, $s4, $s7
/* 1B098 8001A498 000210C3 */  sra        $v0, $v0, 3
/* 1B09C 8001A49C AFC20000 */  sw         $v0, 0x0($fp)
/* 1B0A0 8001A4A0 0C006948 */  jal        func_8001A520
/* 1B0A4 8001A4A4 02402021 */   addu      $a0, $s2, $zero
.L8001A4A8:
/* 1B0A8 8001A4A8 02801021 */  addu       $v0, $s4, $zero
/* 1B0AC 8001A4AC 8FBF0044 */  lw         $ra, 0x44($sp)
/* 1B0B0 8001A4B0 8FBE0040 */  lw         $fp, 0x40($sp)
/* 1B0B4 8001A4B4 8FB7003C */  lw         $s7, 0x3C($sp)
/* 1B0B8 8001A4B8 8FB60038 */  lw         $s6, 0x38($sp)
/* 1B0BC 8001A4BC 8FB50034 */  lw         $s5, 0x34($sp)
/* 1B0C0 8001A4C0 8FB40030 */  lw         $s4, 0x30($sp)
/* 1B0C4 8001A4C4 8FB3002C */  lw         $s3, 0x2C($sp)
/* 1B0C8 8001A4C8 8FB20028 */  lw         $s2, 0x28($sp)
/* 1B0CC 8001A4CC 8FB10024 */  lw         $s1, 0x24($sp)
/* 1B0D0 8001A4D0 8FB00020 */  lw         $s0, 0x20($sp)
/* 1B0D4 8001A4D4 03E00008 */  jr         $ra
/* 1B0D8 8001A4D8 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8001A4DC
/* 1B0DC 8001A4DC 3C048003 */  lui        $a0, %hi(D_80030FA0)
/* 1B0E0 8001A4E0 8C840FA0 */  lw         $a0, %lo(D_80030FA0)($a0)
/* 1B0E4 8001A4E4 8C82002C */  lw         $v0, 0x2C($a0)
/* 1B0E8 8001A4E8 10400005 */  beqz       $v0, .L8001A500
/* 1B0EC 8001A4EC 00001821 */   addu      $v1, $zero, $zero
/* 1B0F0 8001A4F0 00401821 */  addu       $v1, $v0, $zero
/* 1B0F4 8001A4F4 8C620000 */  lw         $v0, 0x0($v1)
/* 1B0F8 8001A4F8 AC82002C */  sw         $v0, 0x2C($a0)
/* 1B0FC 8001A4FC AC600000 */  sw         $zero, 0x0($v1)
.L8001A500:
/* 1B100 8001A500 03E00008 */  jr         $ra
/* 1B104 8001A504 00601021 */   addu      $v0, $v1, $zero

glabel func_8001A508
/* 1B108 8001A508 3C038003 */  lui        $v1, %hi(D_80030FA0)
/* 1B10C 8001A50C 8C630FA0 */  lw         $v1, %lo(D_80030FA0)($v1)
/* 1B110 8001A510 8C62002C */  lw         $v0, 0x2C($v1)
/* 1B114 8001A514 AC820000 */  sw         $v0, 0x0($a0)
/* 1B118 8001A518 03E00008 */  jr         $ra
/* 1B11C 8001A51C AC64002C */   sw        $a0, 0x2C($v1)

glabel func_8001A520
/* 1B120 8001A520 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1B124 8001A524 AFB10014 */  sw         $s1, 0x14($sp)
/* 1B128 8001A528 00808821 */  addu       $s1, $a0, $zero
/* 1B12C 8001A52C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1B130 8001A530 AFB00010 */  sw         $s0, 0x10($sp)
/* 1B134 8001A534 8E300014 */  lw         $s0, 0x14($s1)
/* 1B138 8001A538 12000009 */  beqz       $s0, .L8001A560
/* 1B13C 8001A53C 00000000 */   nop
.L8001A540:
/* 1B140 8001A540 0C0067D7 */  jal        alUnlink
/* 1B144 8001A544 02002021 */   addu      $a0, $s0, $zero
/* 1B148 8001A548 02002021 */  addu       $a0, $s0, $zero
/* 1B14C 8001A54C 0C0067CF */  jal        alLink
/* 1B150 8001A550 26250004 */   addiu     $a1, $s1, 0x4
/* 1B154 8001A554 8E300014 */  lw         $s0, 0x14($s1)
/* 1B158 8001A558 1600FFF9 */  bnez       $s0, .L8001A540
/* 1B15C 8001A55C 00000000 */   nop
.L8001A560:
/* 1B160 8001A560 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1B164 8001A564 8FB10014 */  lw         $s1, 0x14($sp)
/* 1B168 8001A568 8FB00010 */  lw         $s0, 0x10($sp)
/* 1B16C 8001A56C 03E00008 */  jr         $ra
/* 1B170 8001A570 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001A574
/* 1B174 8001A574 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1B178 8001A578 AFB10014 */  sw         $s1, 0x14($sp)
/* 1B17C 8001A57C 00808821 */  addu       $s1, $a0, $zero
/* 1B180 8001A580 AFB00010 */  sw         $s0, 0x10($sp)
/* 1B184 8001A584 00A08021 */  addu       $s0, $a1, $zero
/* 1B188 8001A588 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1B18C 8001A58C 0C0067D7 */  jal        alUnlink
/* 1B190 8001A590 02002021 */   addu      $a0, $s0, $zero
/* 1B194 8001A594 02002021 */  addu       $a0, $s0, $zero
/* 1B198 8001A598 0C0067CF */  jal        alLink
/* 1B19C 8001A59C 26250014 */   addiu     $a1, $s1, 0x14
/* 1B1A0 8001A5A0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1B1A4 8001A5A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1B1A8 8001A5A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1B1AC 8001A5AC 03E00008 */  jr         $ra
/* 1B1B0 8001A5B0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001A5B4
/* 1B1B4 8001A5B4 44850000 */  mtc1       $a1, $f0
/* 1B1B8 8001A5B8 00000000 */  nop
/* 1B1BC 8001A5BC 46800020 */  cvt.s.w    $f0, $f0
/* 1B1C0 8001A5C0 C4820044 */  lwc1       $f2, 0x44($a0)
/* 1B1C4 8001A5C4 468010A0 */  cvt.s.w    $f2, $f2
/* 1B1C8 8001A5C8 46020002 */  mul.s      $f0, $f0, $f2
/* 1B1CC 8001A5CC 3C018000 */  lui        $at, %hi(D_800016B0)
/* 1B1D0 8001A5D0 D42216B0 */  ldc1       $f2, %lo(D_800016B0)($at)
/* 1B1D4 8001A5D4 46000021 */  cvt.d.s    $f0, $f0
/* 1B1D8 8001A5D8 46220003 */  div.d      $f0, $f0, $f2
/* 1B1DC 8001A5DC 3C018000 */  lui        $at, %hi(D_800016B8)
/* 1B1E0 8001A5E0 D42216B8 */  ldc1       $f2, %lo(D_800016B8)($at)
/* 1B1E4 8001A5E4 46220000 */  add.d      $f0, $f0, $f2
/* 1B1E8 8001A5E8 46200020 */  cvt.s.d    $f0, $f0
/* 1B1EC 8001A5EC 4600008D */  trunc.w.s  $f2, $f0
/* 1B1F0 8001A5F0 44021000 */  mfc1       $v0, $f2
/* 1B1F4 8001A5F4 03E00008 */  jr         $ra
/* 1B1F8 8001A5F8 00000000 */   nop

glabel func_8001A5FC
/* 1B1FC 8001A5FC 44850000 */  mtc1       $a1, $f0
/* 1B200 8001A600 00000000 */  nop
/* 1B204 8001A604 46800020 */  cvt.s.w    $f0, $f0
/* 1B208 8001A608 C4820044 */  lwc1       $f2, 0x44($a0)
/* 1B20C 8001A60C 468010A0 */  cvt.s.w    $f2, $f2
/* 1B210 8001A610 46020002 */  mul.s      $f0, $f0, $f2
/* 1B214 8001A614 3C018000 */  lui        $at, %hi(D_800016C0)
/* 1B218 8001A618 D42216C0 */  ldc1       $f2, %lo(D_800016C0)($at)
/* 1B21C 8001A61C 46000021 */  cvt.d.s    $f0, $f0
/* 1B220 8001A620 46220003 */  div.d      $f0, $f0, $f2
/* 1B224 8001A624 3C018000 */  lui        $at, %hi(D_800016C8)
/* 1B228 8001A628 D42216C8 */  ldc1       $f2, %lo(D_800016C8)($at)
/* 1B22C 8001A62C 46220000 */  add.d      $f0, $f0, $f2
/* 1B230 8001A630 46200020 */  cvt.s.d    $f0, $f0
/* 1B234 8001A634 4600008D */  trunc.w.s  $f2, $f0
/* 1B238 8001A638 44031000 */  mfc1       $v1, $f2
/* 1B23C 8001A63C 2402FFF0 */  addiu      $v0, $zero, -0x10
/* 1B240 8001A640 03E00008 */  jr         $ra
/* 1B244 8001A644 00621024 */   and       $v0, $v1, $v0

glabel func_8001A648
/* 1B248 8001A648 ACA00000 */  sw         $zero, 0x0($a1)
/* 1B24C 8001A64C 8C860000 */  lw         $a2, 0x0($a0)
/* 1B250 8001A650 3C077FFF */  lui        $a3, (0x7FFFFFFF >> 16)
/* 1B254 8001A654 10C0000E */  beqz       $a2, .L8001A690
/* 1B258 8001A658 34E7FFFF */   ori       $a3, $a3, (0x7FFFFFFF & 0xFFFF)
.L8001A65C:
/* 1B25C 8001A65C 8CC20010 */  lw         $v0, 0x10($a2)
/* 1B260 8001A660 8C830020 */  lw         $v1, 0x20($a0)
/* 1B264 8001A664 00431023 */  subu       $v0, $v0, $v1
/* 1B268 8001A668 0047102A */  slt        $v0, $v0, $a3
/* 1B26C 8001A66C 10400005 */  beqz       $v0, .L8001A684
/* 1B270 8001A670 00000000 */   nop
/* 1B274 8001A674 ACA60000 */  sw         $a2, 0x0($a1)
/* 1B278 8001A678 8CC30010 */  lw         $v1, 0x10($a2)
/* 1B27C 8001A67C 8C820020 */  lw         $v0, 0x20($a0)
/* 1B280 8001A680 00623823 */  subu       $a3, $v1, $v0
.L8001A684:
/* 1B284 8001A684 8CC60000 */  lw         $a2, 0x0($a2)
/* 1B288 8001A688 14C0FFF4 */  bnez       $a2, .L8001A65C
/* 1B28C 8001A68C 00000000 */   nop
.L8001A690:
/* 1B290 8001A690 8CA20000 */  lw         $v0, 0x0($a1)
/* 1B294 8001A694 03E00008 */  jr         $ra
/* 1B298 8001A698 8C420010 */   lw        $v0, 0x10($v0)
/* 1B29C 8001A69C 00000000 */  nop
