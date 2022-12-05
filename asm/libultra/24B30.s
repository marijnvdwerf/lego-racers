.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80023F30
/* 24B30 80023F30 4442F800 */  cfc1       $v0, $31
/* 24B34 80023F34 44C4F800 */  ctc1       $a0, $31
/* 24B38 80023F38 03E00008 */  jr         $ra
/* 24B3C 80023F3C 00000000 */   nop

# Handwritten function
glabel func_80023F40
/* 24B40 80023F40 40846000 */  mtc0       $a0, $12
/* 24B44 80023F44 00000000 */  nop
/* 24B48 80023F48 03E00008 */  jr         $ra
/* 24B4C 80023F4C 00000000 */   nop

glabel func_80023F50
/* 24B50 80023F50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 24B54 80023F54 AFB00010 */  sw         $s0, 0x10($sp)
/* 24B58 80023F58 00808021 */  addu       $s0, $a0, $zero
/* 24B5C 80023F5C AFB10014 */  sw         $s1, 0x14($sp)
/* 24B60 80023F60 AFBF0018 */  sw         $ra, 0x18($sp)
/* 24B64 80023F64 0C008FE8 */  jal        func_80023FA0
/* 24B68 80023F68 00A08821 */   addu      $s1, $a1, $zero
/* 24B6C 80023F6C 14400006 */  bnez       $v0, .L80023F88
/* 24B70 80023F70 2402FFFF */   addiu     $v0, $zero, -0x1
/* 24B74 80023F74 3C02A000 */  lui        $v0, %hi(D_A0000000)
/* 24B78 80023F78 02021025 */  or         $v0, $s0, $v0
/* 24B7C 80023F7C 8C430000 */  lw         $v1, %lo(D_A0000000)($v0)
/* 24B80 80023F80 00001021 */  addu       $v0, $zero, $zero
/* 24B84 80023F84 AE230000 */  sw         $v1, 0x0($s1)
.L80023F88:
/* 24B88 80023F88 8FBF0018 */  lw         $ra, 0x18($sp)
/* 24B8C 80023F8C 8FB10014 */  lw         $s1, 0x14($sp)
/* 24B90 80023F90 8FB00010 */  lw         $s0, 0x10($sp)
/* 24B94 80023F94 03E00008 */  jr         $ra
/* 24B98 80023F98 27BD0020 */   addiu     $sp, $sp, 0x20
/* 24B9C 80023F9C 00000000 */  nop
