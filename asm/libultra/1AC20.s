.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel bcopy
/* 1AC20 8001A020 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 1AC24 8001A024 18C00008 */  blez       $a2, .L8001A048
/* 1AC28 8001A028 00001821 */   addu      $v1, $zero, $zero
.L8001A02C:
/* 1AC2C 8001A02C 90820000 */  lbu        $v0, 0x0($a0)
/* 1AC30 8001A030 24840001 */  addiu      $a0, $a0, 0x1
/* 1AC34 8001A034 24630001 */  addiu      $v1, $v1, 0x1
/* 1AC38 8001A038 A0A20000 */  sb         $v0, 0x0($a1)
/* 1AC3C 8001A03C 0066102A */  slt        $v0, $v1, $a2
/* 1AC40 8001A040 1440FFFA */  bnez       $v0, .L8001A02C
/* 1AC44 8001A044 24A50001 */   addiu     $a1, $a1, 0x1
.L8001A048:
/* 1AC48 8001A048 27BD0008 */  addiu      $sp, $sp, 0x8
/* 1AC4C 8001A04C 03E00008 */  jr         $ra
/* 1AC50 8001A050 00000000 */   nop
/* 1AC54 8001A054 00000000 */  nop
/* 1AC58 8001A058 00000000 */  nop
/* 1AC5C 8001A05C 00000000 */  nop
