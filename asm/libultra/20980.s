.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001FD80
/* 20980 8001FD80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20984 8001FD84 AFB00010 */  sw         $s0, 0x10($sp)
/* 20988 8001FD88 3C108003 */  lui        $s0, %hi(D_800310D0)
/* 2098C 8001FD8C 261010D0 */  addiu      $s0, $s0, %lo(D_800310D0)
/* 20990 8001FD90 02002021 */  addu       $a0, $s0, $zero
/* 20994 8001FD94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20998 8001FD98 0C006DC8 */  jal        func_8001B720
/* 2099C 8001FD9C 24050060 */   addiu     $a1, $zero, 0x60
/* 209A0 8001FDA0 3C038000 */  lui        $v1, %hi(D_80000300)
/* 209A4 8001FDA4 8C630300 */  lw         $v1, %lo(D_80000300)($v1)
/* 209A8 8001FDA8 3C018003 */  lui        $at, %hi(D_80031130)
/* 209AC 8001FDAC AC301130 */  sw         $s0, %lo(D_80031130)($at)
/* 209B0 8001FDB0 26100030 */  addiu      $s0, $s0, 0x30
/* 209B4 8001FDB4 24020001 */  addiu      $v0, $zero, 0x1
/* 209B8 8001FDB8 3C018003 */  lui        $at, %hi(D_80031102)
/* 209BC 8001FDBC A4221102 */  sh         $v0, %lo(D_80031102)($at)
/* 209C0 8001FDC0 3C018003 */  lui        $at, %hi(D_800310D2)
/* 209C4 8001FDC4 A42210D2 */  sh         $v0, %lo(D_800310D2)($at)
/* 209C8 8001FDC8 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 209CC 8001FDCC 3C018003 */  lui        $at, %hi(D_80031134)
/* 209D0 8001FDD0 AC301134 */  sw         $s0, %lo(D_80031134)($at)
/* 209D4 8001FDD4 3C018003 */  lui        $at, %hi(D_80031104)
/* 209D8 8001FDD8 AC221104 */  sw         $v0, %lo(D_80031104)($at)
/* 209DC 8001FDDC 3C018003 */  lui        $at, %hi(D_800310D4)
/* 209E0 8001FDE0 AC2210D4 */  sw         $v0, %lo(D_800310D4)($at)
/* 209E4 8001FDE4 14600004 */  bnez       $v1, .L8001FDF8
/* 209E8 8001FDE8 24020002 */   addiu     $v0, $zero, 0x2
/* 209EC 8001FDEC 3C028003 */  lui        $v0, %hi(D_80032330)
/* 209F0 8001FDF0 08007F85 */  j          .L8001FE14
/* 209F4 8001FDF4 24422330 */   addiu     $v0, $v0, %lo(D_80032330)
.L8001FDF8:
/* 209F8 8001FDF8 14620004 */  bne        $v1, $v0, .L8001FE0C
/* 209FC 8001FDFC 00000000 */   nop
/* 20A00 8001FE00 3C028003 */  lui        $v0, %hi(D_80032380)
/* 20A04 8001FE04 08007F85 */  j          .L8001FE14
/* 20A08 8001FE08 24422380 */   addiu     $v0, $v0, %lo(D_80032380)
.L8001FE0C:
/* 20A0C 8001FE0C 3C028003 */  lui        $v0, %hi(D_800322E0)
/* 20A10 8001FE10 244222E0 */  addiu      $v0, $v0, %lo(D_800322E0)
.L8001FE14:
/* 20A14 8001FE14 3C018003 */  lui        $at, %hi(D_80031108)
/* 20A18 8001FE18 AC221108 */  sw         $v0, %lo(D_80031108)($at)
/* 20A1C 8001FE1C 3C038003 */  lui        $v1, %hi(D_80031134)
/* 20A20 8001FE20 8C631134 */  lw         $v1, %lo(D_80031134)($v1)
/* 20A24 8001FE24 8C640008 */  lw         $a0, 0x8($v1)
/* 20A28 8001FE28 24020020 */  addiu      $v0, $zero, 0x20
/* 20A2C 8001FE2C A4620000 */  sh         $v0, 0x0($v1)
/* 20A30 8001FE30 8C820004 */  lw         $v0, 0x4($a0)
/* 20A34 8001FE34 3C04A440 */  lui        $a0, (0xA4400010 >> 16)
/* 20A38 8001FE38 34840010 */  ori        $a0, $a0, (0xA4400010 & 0xFFFF)
/* 20A3C 8001FE3C AC62000C */  sw         $v0, 0xC($v1)
/* 20A40 8001FE40 8C820000 */  lw         $v0, 0x0($a0)
/* 20A44 8001FE44 2C42000B */  sltiu      $v0, $v0, 0xB
/* 20A48 8001FE48 14400007 */  bnez       $v0, .L8001FE68
/* 20A4C 8001FE4C 3C02A440 */   lui       $v0, %hi(D_A4400000)
/* 20A50 8001FE50 3C03A440 */  lui        $v1, (0xA4400010 >> 16)
/* 20A54 8001FE54 34630010 */  ori        $v1, $v1, (0xA4400010 & 0xFFFF)
.L8001FE58:
/* 20A58 8001FE58 8C620000 */  lw         $v0, 0x0($v1)
/* 20A5C 8001FE5C 2C42000B */  sltiu      $v0, $v0, 0xB
/* 20A60 8001FE60 1040FFFD */  beqz       $v0, .L8001FE58
/* 20A64 8001FE64 3C02A440 */   lui       $v0, %hi(D_A4400000)
.L8001FE68:
/* 20A68 8001FE68 AC400000 */  sw         $zero, %lo(D_A4400000)($v0)
/* 20A6C 8001FE6C 0C008124 */  jal        func_80020490
/* 20A70 8001FE70 00000000 */   nop
/* 20A74 8001FE74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20A78 8001FE78 8FB00010 */  lw         $s0, 0x10($sp)
/* 20A7C 8001FE7C 03E00008 */  jr         $ra
/* 20A80 8001FE80 27BD0018 */   addiu     $sp, $sp, 0x18
/* 20A84 8001FE84 00000000 */  nop
/* 20A88 8001FE88 00000000 */  nop
/* 20A8C 8001FE8C 00000000 */  nop
