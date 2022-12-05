.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSpTaskYield
/* 1F1E0 8001E5E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F1E4 8001E5E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1F1E8 8001E5E8 0C007944 */  jal        func_8001E510
/* 1F1EC 8001E5EC 24040400 */   addiu     $a0, $zero, 0x400
/* 1F1F0 8001E5F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1F1F4 8001E5F4 03E00008 */  jr         $ra
/* 1F1F8 8001E5F8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1F1FC 8001E5FC 00000000 */  nop
