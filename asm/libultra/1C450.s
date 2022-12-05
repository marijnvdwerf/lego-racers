.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel sprintf
/* 1C450 8001B850 AFA50004 */  sw         $a1, 0x4($sp)
/* 1C454 8001B854 AFA60008 */  sw         $a2, 0x8($sp)
/* 1C458 8001B858 AFA7000C */  sw         $a3, 0xC($sp)
/* 1C45C 8001B85C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C460 8001B860 AFB00010 */  sw         $s0, 0x10($sp)
/* 1C464 8001B864 00808021 */  addu       $s0, $a0, $zero
/* 1C468 8001B868 00A03021 */  addu       $a2, $a1, $zero
/* 1C46C 8001B86C 3C048002 */  lui        $a0, %hi(func_8001B8A8)
/* 1C470 8001B870 2484B8A8 */  addiu      $a0, $a0, %lo(func_8001B8A8)
/* 1C474 8001B874 02002821 */  addu       $a1, $s0, $zero
/* 1C478 8001B878 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C47C 8001B87C 0C006E38 */  jal        func_8001B8E0
/* 1C480 8001B880 27A70020 */   addiu     $a3, $sp, 0x20
/* 1C484 8001B884 00401821 */  addu       $v1, $v0, $zero
/* 1C488 8001B888 04600002 */  bltz       $v1, .L8001B894
/* 1C48C 8001B88C 02031021 */   addu      $v0, $s0, $v1
/* 1C490 8001B890 A0400000 */  sb         $zero, 0x0($v0)
.L8001B894:
/* 1C494 8001B894 00601021 */  addu       $v0, $v1, $zero
/* 1C498 8001B898 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C49C 8001B89C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1C4A0 8001B8A0 03E00008 */  jr         $ra
/* 1C4A4 8001B8A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001B8A8
/* 1C4A8 8001B8A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1C4AC 8001B8AC AFB10014 */  sw         $s1, 0x14($sp)
/* 1C4B0 8001B8B0 00808821 */  addu       $s1, $a0, $zero
/* 1C4B4 8001B8B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1C4B8 8001B8B8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1C4BC 8001B8BC 0C006E07 */  jal        strncpy
/* 1C4C0 8001B8C0 00C08021 */   addu      $s0, $a2, $zero
/* 1C4C4 8001B8C4 02301021 */  addu       $v0, $s1, $s0
/* 1C4C8 8001B8C8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1C4CC 8001B8CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1C4D0 8001B8D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1C4D4 8001B8D4 03E00008 */  jr         $ra
/* 1C4D8 8001B8D8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1C4DC 8001B8DC 00000000 */  nop
