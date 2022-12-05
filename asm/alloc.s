.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800250F0
/* 25CF0 800250F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 25CF4 800250F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 25CF8 800250F8 0C01FB4C */  jal        func_8007ED30
/* 25CFC 800250FC 00000000 */   nop
/* 25D00 80025100 8FBF0010 */  lw         $ra, 0x10($sp)
/* 25D04 80025104 03E00008 */  jr         $ra
/* 25D08 80025108 27BD0018 */   addiu     $sp, $sp, 0x18
