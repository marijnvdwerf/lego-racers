.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80023FC0
/* 24BC0 80023FC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 24BC4 80023FC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 24BC8 80023FC8 00808021 */  addu       $s0, $a0, $zero
/* 24BCC 80023FCC AFB10014 */  sw         $s1, 0x14($sp)
/* 24BD0 80023FD0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 24BD4 80023FD4 0C008FE8 */  jal        func_80023FA0
/* 24BD8 80023FD8 00A08821 */   addu      $s1, $a1, $zero
/* 24BDC 80023FDC 54400005 */  bnel       $v0, $zero, .L80023FF4
/* 24BE0 80023FE0 2402FFFF */   addiu     $v0, $zero, -0x1
/* 24BE4 80023FE4 3C02A000 */  lui        $v0, %hi(D_A0000000)
/* 24BE8 80023FE8 02021025 */  or         $v0, $s0, $v0
/* 24BEC 80023FEC AC510000 */  sw         $s1, %lo(D_A0000000)($v0)
/* 24BF0 80023FF0 00001021 */  addu       $v0, $zero, $zero
.L80023FF4:
/* 24BF4 80023FF4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 24BF8 80023FF8 8FB10014 */  lw         $s1, 0x14($sp)
/* 24BFC 80023FFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 24C00 80024000 03E00008 */  jr         $ra
/* 24C04 80024004 27BD0020 */   addiu     $sp, $sp, 0x20
/* 24C08 80024008 00000000 */  nop
/* 24C0C 8002400C 00000000 */  nop
