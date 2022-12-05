.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80015350
/* 15F50 80015350 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 15F54 80015354 AFB00010 */  sw         $s0, 0x10($sp)
/* 15F58 80015358 00808021 */  addu       $s0, $a0, $zero
/* 15F5C 8001535C AFBF0018 */  sw         $ra, 0x18($sp)
/* 15F60 80015360 AFB10014 */  sw         $s1, 0x14($sp)
/* 15F64 80015364 8E020008 */  lw         $v0, 0x8($s0)
/* 15F68 80015368 10400015 */  beqz       $v0, .L800153C0
/* 15F6C 8001536C 00A08821 */   addu      $s1, $a1, $zero
/* 15F70 80015370 0C005607 */  jal        func_8001581C
/* 15F74 80015374 00000000 */   nop
/* 15F78 80015378 00403021 */  addu       $a2, $v0, $zero
/* 15F7C 8001537C 10C00010 */  beqz       $a2, .L800153C0
/* 15F80 80015380 3C028003 */   lui       $v0, %hi(n_syn)
/* 15F84 80015384 8C420C84 */  lw         $v0, %lo(n_syn)($v0)
/* 15F88 80015388 8E040008 */  lw         $a0, 0x8($s0)
/* 15F8C 8001538C 8C43001C */  lw         $v1, 0x1C($v0)
/* 15F90 80015390 8C840088 */  lw         $a0, 0x88($a0)
/* 15F94 80015394 2402000E */  addiu      $v0, $zero, 0xE
/* 15F98 80015398 A4C20008 */  sh         $v0, 0x8($a2)
/* 15F9C 8001539C ACD1000C */  sw         $s1, 0xC($a2)
/* 15FA0 800153A0 ACC00000 */  sw         $zero, 0x0($a2)
/* 15FA4 800153A4 00641821 */  addu       $v1, $v1, $a0
/* 15FA8 800153A8 ACC30004 */  sw         $v1, 0x4($a2)
/* 15FAC 800153AC 9602001A */  lhu        $v0, 0x1A($s0)
/* 15FB0 800153B0 A4C2000A */  sh         $v0, 0xA($a2)
/* 15FB4 800153B4 8E040008 */  lw         $a0, 0x8($s0)
/* 15FB8 800153B8 0C004DE1 */  jal        func_80013784
/* 15FBC 800153BC 24050003 */   addiu     $a1, $zero, 0x3
.L800153C0:
/* 15FC0 800153C0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 15FC4 800153C4 8FB10014 */  lw         $s1, 0x14($sp)
/* 15FC8 800153C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 15FCC 800153CC 03E00008 */  jr         $ra
/* 15FD0 800153D0 27BD0020 */   addiu     $sp, $sp, 0x20
