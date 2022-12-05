.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80025110
/* 25D10 80025110 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 25D14 80025114 AFBF0010 */  sw         $ra, 0x10($sp)
/* 25D18 80025118 0C01FB5C */  jal        func_8007ED70
/* 25D1C 8002511C 00000000 */   nop
/* 25D20 80025120 8FBF0010 */  lw         $ra, 0x10($sp)
/* 25D24 80025124 03E00008 */  jr         $ra
/* 25D28 80025128 27BD0018 */   addiu     $sp, $sp, 0x18
