.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E9960
/* 9FD20 800E9960 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9FD24 800E9964 AFB00010 */  sw         $s0, 0x10($sp)
/* 9FD28 800E9968 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9FD2C 800E996C 0C03A1A4 */  jal        func_race_800E8690
/* 9FD30 800E9970 00808021 */   addu      $s0, $a0, $zero
/* 9FD34 800E9974 02001021 */  addu       $v0, $s0, $zero
/* 9FD38 800E9978 3C03800D */  lui        $v1, %hi(D_race_800CBE58)
/* 9FD3C 800E997C 2463BE58 */  addiu      $v1, $v1, %lo(D_race_800CBE58)
/* 9FD40 800E9980 AC430000 */  sw         $v1, 0x0($v0)
/* 9FD44 800E9984 AC400010 */  sw         $zero, 0x10($v0)
/* 9FD48 800E9988 AC400014 */  sw         $zero, 0x14($v0)
/* 9FD4C 800E998C AC400018 */  sw         $zero, 0x18($v0)
/* 9FD50 800E9990 AC40001C */  sw         $zero, 0x1C($v0)
/* 9FD54 800E9994 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9FD58 800E9998 8FB00010 */  lw         $s0, 0x10($sp)
/* 9FD5C 800E999C 03E00008 */  jr         $ra
/* 9FD60 800E99A0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E99A4
/* 9FD64 800E99A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9FD68 800E99A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 9FD6C 800E99AC 00808021 */  addu       $s0, $a0, $zero
/* 9FD70 800E99B0 AFB10014 */  sw         $s1, 0x14($sp)
/* 9FD74 800E99B4 00A08821 */  addu       $s1, $a1, $zero
/* 9FD78 800E99B8 3C02800D */  lui        $v0, %hi(D_race_800CBE58)
/* 9FD7C 800E99BC 2442BE58 */  addiu      $v0, $v0, %lo(D_race_800CBE58)
/* 9FD80 800E99C0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9FD84 800E99C4 0C03A6CD */  jal        func_race_800E9B34
/* 9FD88 800E99C8 AE020000 */   sw        $v0, 0x0($s0)
/* 9FD8C 800E99CC 02002021 */  addu       $a0, $s0, $zero
/* 9FD90 800E99D0 0C03A1AC */  jal        func_race_800E86B0
/* 9FD94 800E99D4 02202821 */   addu      $a1, $s1, $zero
/* 9FD98 800E99D8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9FD9C 800E99DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 9FDA0 800E99E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 9FDA4 800E99E4 03E00008 */  jr         $ra
/* 9FDA8 800E99E8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E99EC
/* 9FDAC 800E99EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9FDB0 800E99F0 AFB00018 */  sw         $s0, 0x18($sp)
/* 9FDB4 800E99F4 00808021 */  addu       $s0, $a0, $zero
/* 9FDB8 800E99F8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 9FDBC 800E99FC 00A08821 */  addu       $s1, $a1, $zero
/* 9FDC0 800E9A00 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9FDC4 800E9A04 AFB20020 */  sw         $s2, 0x20($sp)
/* 9FDC8 800E9A08 8E02000C */  lw         $v0, 0xC($s0)
/* 9FDCC 800E9A0C 10400003 */  beqz       $v0, .Lrace_800E9A1C
/* 9FDD0 800E9A10 00C09021 */   addu      $s2, $a2, $zero
/* 9FDD4 800E9A14 0C03A6CD */  jal        func_race_800E9B34
/* 9FDD8 800E9A18 00000000 */   nop
.Lrace_800E9A1C:
/* 9FDDC 800E9A1C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 9FDE0 800E9A20 AE020008 */  sw         $v0, 0x8($s0)
/* 9FDE4 800E9A24 8E22000C */  lw         $v0, 0xC($s1)
/* 9FDE8 800E9A28 AE020004 */  sw         $v0, 0x4($s0)
/* 9FDEC 800E9A2C 8E420028 */  lw         $v0, 0x28($s2)
/* 9FDF0 800E9A30 844400A0 */  lh         $a0, 0xA0($v0)
/* 9FDF4 800E9A34 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 9FDF8 800E9A38 0040F809 */  jalr       $v0
/* 9FDFC 800E9A3C 02442021 */   addu      $a0, $s2, $a0
/* 9FE00 800E9A40 27A40010 */  addiu      $a0, $sp, 0x10
/* 9FE04 800E9A44 26450044 */  addiu      $a1, $s2, 0x44
/* 9FE08 800E9A48 0C000708 */  jal        func_80001C20
/* 9FE0C 800E9A4C 24060008 */   addiu     $a2, $zero, 0x8
/* 9FE10 800E9A50 8E220010 */  lw         $v0, 0x10($s1)
/* 9FE14 800E9A54 27A50010 */  addiu      $a1, $sp, 0x10
/* 9FE18 800E9A58 8C4300B0 */  lw         $v1, 0xB0($v0)
/* 9FE1C 800E9A5C 14600003 */  bnez       $v1, .Lrace_800E9A6C
/* 9FE20 800E9A60 244400B0 */   addiu     $a0, $v0, 0xB0
/* 9FE24 800E9A64 0803A69D */  j          .Lrace_800E9A74
/* 9FE28 800E9A68 00001021 */   addu      $v0, $zero, $zero
.Lrace_800E9A6C:
/* 9FE2C 800E9A6C 0C016427 */  jal        func_8005909C
/* 9FE30 800E9A70 00000000 */   nop
.Lrace_800E9A74:
/* 9FE34 800E9A74 14400021 */  bnez       $v0, .Lrace_800E9AFC
/* 9FE38 800E9A78 AE020010 */   sw        $v0, 0x10($s0)
/* 9FE3C 800E9A7C 8E220010 */  lw         $v0, 0x10($s1)
/* 9FE40 800E9A80 27A50010 */  addiu      $a1, $sp, 0x10
/* 9FE44 800E9A84 8C4300BC */  lw         $v1, 0xBC($v0)
/* 9FE48 800E9A88 14600003 */  bnez       $v1, .Lrace_800E9A98
/* 9FE4C 800E9A8C 244400BC */   addiu     $a0, $v0, 0xBC
/* 9FE50 800E9A90 0803A6A8 */  j          .Lrace_800E9AA0
/* 9FE54 800E9A94 00001021 */   addu      $v0, $zero, $zero
.Lrace_800E9A98:
/* 9FE58 800E9A98 0C016427 */  jal        func_8005909C
/* 9FE5C 800E9A9C 00000000 */   nop
.Lrace_800E9AA0:
/* 9FE60 800E9AA0 14400016 */  bnez       $v0, .Lrace_800E9AFC
/* 9FE64 800E9AA4 AE020010 */   sw        $v0, 0x10($s0)
/* 9FE68 800E9AA8 8E220014 */  lw         $v0, 0x14($s1)
/* 9FE6C 800E9AAC 27A50010 */  addiu      $a1, $sp, 0x10
/* 9FE70 800E9AB0 8C4300B0 */  lw         $v1, 0xB0($v0)
/* 9FE74 800E9AB4 14600003 */  bnez       $v1, .Lrace_800E9AC4
/* 9FE78 800E9AB8 244400B0 */   addiu     $a0, $v0, 0xB0
/* 9FE7C 800E9ABC 0803A6B3 */  j          .Lrace_800E9ACC
/* 9FE80 800E9AC0 00001021 */   addu      $v0, $zero, $zero
.Lrace_800E9AC4:
/* 9FE84 800E9AC4 0C016427 */  jal        func_8005909C
/* 9FE88 800E9AC8 00000000 */   nop
.Lrace_800E9ACC:
/* 9FE8C 800E9ACC 1440000B */  bnez       $v0, .Lrace_800E9AFC
/* 9FE90 800E9AD0 AE020010 */   sw        $v0, 0x10($s0)
/* 9FE94 800E9AD4 8E220014 */  lw         $v0, 0x14($s1)
/* 9FE98 800E9AD8 27A50010 */  addiu      $a1, $sp, 0x10
/* 9FE9C 800E9ADC 8C4300BC */  lw         $v1, 0xBC($v0)
/* 9FEA0 800E9AE0 14600003 */  bnez       $v1, .Lrace_800E9AF0
/* 9FEA4 800E9AE4 244400BC */   addiu     $a0, $v0, 0xBC
/* 9FEA8 800E9AE8 0803A6BE */  j          .Lrace_800E9AF8
/* 9FEAC 800E9AEC 00001021 */   addu      $v0, $zero, $zero
.Lrace_800E9AF0:
/* 9FEB0 800E9AF0 0C016427 */  jal        func_8005909C
/* 9FEB4 800E9AF4 00000000 */   nop
.Lrace_800E9AF8:
/* 9FEB8 800E9AF8 AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800E9AFC:
/* 9FEBC 800E9AFC 0C0025F8 */  jal        func_800097E0
/* 9FEC0 800E9B00 02402021 */   addu      $a0, $s2, $zero
/* 9FEC4 800E9B04 02402021 */  addu       $a0, $s2, $zero
/* 9FEC8 800E9B08 0C0025F8 */  jal        func_800097E0
/* 9FECC 800E9B0C E6000014 */   swc1      $f0, 0x14($s0)
/* 9FED0 800E9B10 24020001 */  addiu      $v0, $zero, 0x1
/* 9FED4 800E9B14 E6000018 */  swc1       $f0, 0x18($s0)
/* 9FED8 800E9B18 AE02000C */  sw         $v0, 0xC($s0)
/* 9FEDC 800E9B1C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9FEE0 800E9B20 8FB20020 */  lw         $s2, 0x20($sp)
/* 9FEE4 800E9B24 8FB1001C */  lw         $s1, 0x1C($sp)
/* 9FEE8 800E9B28 8FB00018 */  lw         $s0, 0x18($sp)
/* 9FEEC 800E9B2C 03E00008 */  jr         $ra
/* 9FEF0 800E9B30 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E9B34
/* 9FEF4 800E9B34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9FEF8 800E9B38 AFB00010 */  sw         $s0, 0x10($sp)
/* 9FEFC 800E9B3C 00808021 */  addu       $s0, $a0, $zero
/* 9FF00 800E9B40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9FF04 800E9B44 8E020000 */  lw         $v0, 0x0($s0)
/* 9FF08 800E9B48 00002821 */  addu       $a1, $zero, $zero
/* 9FF0C 800E9B4C 84440018 */  lh         $a0, 0x18($v0)
/* 9FF10 800E9B50 8C42001C */  lw         $v0, 0x1C($v0)
/* 9FF14 800E9B54 0040F809 */  jalr       $v0
/* 9FF18 800E9B58 02042021 */   addu      $a0, $s0, $a0
/* 9FF1C 800E9B5C 02002021 */  addu       $a0, $s0, $zero
/* 9FF20 800E9B60 AC800010 */  sw         $zero, 0x10($a0)
/* 9FF24 800E9B64 AC800014 */  sw         $zero, 0x14($a0)
/* 9FF28 800E9B68 AC800018 */  sw         $zero, 0x18($a0)
/* 9FF2C 800E9B6C 0C03A1C0 */  jal        func_race_800E8700
/* 9FF30 800E9B70 AC80001C */   sw        $zero, 0x1C($a0)
/* 9FF34 800E9B74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9FF38 800E9B78 8FB00010 */  lw         $s0, 0x10($sp)
/* 9FF3C 800E9B7C 03E00008 */  jr         $ra
/* 9FF40 800E9B80 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E9B84
/* 9FF44 800E9B84 24020002 */  addiu      $v0, $zero, 0x2
/* 9FF48 800E9B88 AC82000C */  sw         $v0, 0xC($a0)
/* 9FF4C 800E9B8C 03E00008 */  jr         $ra
/* 9FF50 800E9B90 AC80001C */   sw        $zero, 0x1C($a0)

glabel func_race_800E9B94
/* 9FF54 800E9B94 24020001 */  addiu      $v0, $zero, 0x1
/* 9FF58 800E9B98 03E00008 */  jr         $ra
/* 9FF5C 800E9B9C AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800E9BA0
/* 9FF60 800E9BA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9FF64 800E9BA4 AFB10014 */  sw         $s1, 0x14($sp)
/* 9FF68 800E9BA8 00808821 */  addu       $s1, $a0, $zero
/* 9FF6C 800E9BAC AFB00010 */  sw         $s0, 0x10($sp)
/* 9FF70 800E9BB0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9FF74 800E9BB4 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 9FF78 800E9BB8 0C03A1C4 */  jal        func_race_800E8710
/* 9FF7C 800E9BBC 00A08021 */   addu      $s0, $a1, $zero
/* 9FF80 800E9BC0 44902000 */  mtc1       $s0, $f4
/* 9FF84 800E9BC4 46802121 */  cvt.d.w    $f4, $f4
/* 9FF88 800E9BC8 06010004 */  bgez       $s0, .Lrace_800E9BDC
/* 9FF8C 800E9BCC 00000000 */   nop
/* 9FF90 800E9BD0 3C01800D */  lui        $at, %hi(D_race_800CBE40)
/* 9FF94 800E9BD4 D420BE40 */  ldc1       $f0, %lo(D_race_800CBE40)($at)
/* 9FF98 800E9BD8 46202100 */  add.d      $f4, $f4, $f0
.Lrace_800E9BDC:
/* 9FF9C 800E9BDC C622001C */  lwc1       $f2, 0x1C($s1)
/* 9FFA0 800E9BE0 46202020 */  cvt.s.d    $f0, $f4
/* 9FFA4 800E9BE4 46001000 */  add.s      $f0, $f2, $f0
/* 9FFA8 800E9BE8 3C01800D */  lui        $at, %hi(D_race_800CBE48)
/* 9FFAC 800E9BEC C424BE48 */  lwc1       $f4, %lo(D_race_800CBE48)($at)
/* 9FFB0 800E9BF0 4600203E */  c.le.s     $f4, $f0
/* 9FFB4 800E9BF4 00000000 */  nop
/* 9FFB8 800E9BF8 45000003 */  bc1f       .Lrace_800E9C08
/* 9FFBC 800E9BFC E620001C */   swc1      $f0, 0x1C($s1)
/* 9FFC0 800E9C00 46040001 */  sub.s      $f0, $f0, $f4
/* 9FFC4 800E9C04 E620001C */  swc1       $f0, 0x1C($s1)
.Lrace_800E9C08:
/* 9FFC8 800E9C08 C620001C */  lwc1       $f0, 0x1C($s1)
/* 9FFCC 800E9C0C 3C01800D */  lui        $at, %hi(D_race_800CBE4C)
/* 9FFD0 800E9C10 C422BE4C */  lwc1       $f2, %lo(D_race_800CBE4C)($at)
/* 9FFD4 800E9C14 46040003 */  div.s      $f0, $f0, $f4
/* 9FFD8 800E9C18 46020002 */  mul.s      $f0, $f0, $f2
/* 9FFDC 800E9C1C 3C01800D */  lui        $at, %hi(D_race_800CBE50)
/* 9FFE0 800E9C20 C422BE50 */  lwc1       $f2, %lo(D_race_800CBE50)($at)
/* 9FFE4 800E9C24 46020002 */  mul.s      $f0, $f0, $f2
/* 9FFE8 800E9C28 3C038003 */  lui        $v1, %hi(D_8002D2B0)
/* 9FFEC 800E9C2C 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* 9FFF0 800E9C30 4600018D */  trunc.w.s  $f6, $f0
/* 9FFF4 800E9C34 44023000 */  mfc1       $v0, $f6
/* 9FFF8 800E9C38 2442FF00 */  addiu      $v0, $v0, -0x100
/* 9FFFC 800E9C3C 304203FF */  andi       $v0, $v0, 0x3FF
/* A0000 800E9C40 00021080 */  sll        $v0, $v0, 2
/* A0004 800E9C44 00431021 */  addu       $v0, $v0, $v1
/* A0008 800E9C48 C4540000 */  lwc1       $f20, 0x0($v0)
/* A000C 800E9C4C C6200014 */  lwc1       $f0, 0x14($s1)
/* A0010 800E9C50 4600A002 */  mul.s      $f0, $f20, $f0
/* A0014 800E9C54 8E240010 */  lw         $a0, 0x10($s1)
/* A0018 800E9C58 44050000 */  mfc1       $a1, $f0
/* A001C 800E9C5C 0C016298 */  jal        func_80058A60
/* A0020 800E9C60 00000000 */   nop
/* A0024 800E9C64 C6200018 */  lwc1       $f0, 0x18($s1)
/* A0028 800E9C68 4600A502 */  mul.s      $f20, $f20, $f0
/* A002C 800E9C6C 8E240010 */  lw         $a0, 0x10($s1)
/* A0030 800E9C70 4405A000 */  mfc1       $a1, $f20
/* A0034 800E9C74 0C0162A3 */  jal        func_80058A8C
/* A0038 800E9C78 00000000 */   nop
/* A003C 800E9C7C 8FBF0018 */  lw         $ra, 0x18($sp)
/* A0040 800E9C80 8FB10014 */  lw         $s1, 0x14($sp)
/* A0044 800E9C84 8FB00010 */  lw         $s0, 0x10($sp)
/* A0048 800E9C88 D7B40020 */  ldc1       $f20, 0x20($sp)
/* A004C 800E9C8C 03E00008 */  jr         $ra
/* A0050 800E9C90 27BD0028 */   addiu     $sp, $sp, 0x28
