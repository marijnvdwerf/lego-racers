.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800153E0
/* 15FE0 800153E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15FE4 800153E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 15FE8 800153E8 00808021 */  addu       $s0, $a0, $zero
/* 15FEC 800153EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 15FF0 800153F0 8E020008 */  lw         $v0, 0x8($s0)
/* 15FF4 800153F4 10400012 */  beqz       $v0, .L80015440
/* 15FF8 800153F8 00000000 */   nop
/* 15FFC 800153FC 0C005607 */  jal        func_8001581C
/* 16000 80015400 00000000 */   nop
/* 16004 80015404 00403021 */  addu       $a2, $v0, $zero
/* 16008 80015408 10C0000D */  beqz       $a2, .L80015440
/* 1600C 8001540C 3C028003 */   lui       $v0, %hi(n_syn)
/* 16010 80015410 8C420C84 */  lw         $v0, %lo(n_syn)($v0)
/* 16014 80015414 8E040008 */  lw         $a0, 0x8($s0)
/* 16018 80015418 8C43001C */  lw         $v1, 0x1C($v0)
/* 1601C 8001541C 8C840088 */  lw         $a0, 0x88($a0)
/* 16020 80015420 2402000F */  addiu      $v0, $zero, 0xF
/* 16024 80015424 A4C20008 */  sh         $v0, 0x8($a2)
/* 16028 80015428 ACC00000 */  sw         $zero, 0x0($a2)
/* 1602C 8001542C 00641821 */  addu       $v1, $v1, $a0
/* 16030 80015430 ACC30004 */  sw         $v1, 0x4($a2)
/* 16034 80015434 8E040008 */  lw         $a0, 0x8($s0)
/* 16038 80015438 0C004DE1 */  jal        func_80013784
/* 1603C 8001543C 24050003 */   addiu     $a1, $zero, 0x3
.L80015440:
/* 16040 80015440 8FBF0014 */  lw         $ra, 0x14($sp)
/* 16044 80015444 8FB00010 */  lw         $s0, 0x10($sp)
/* 16048 80015448 03E00008 */  jr         $ra
/* 1604C 8001544C 27BD0018 */   addiu     $sp, $sp, 0x18
