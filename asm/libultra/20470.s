.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel func_8001F870
/* 20470 8001F870 40024800 */  mfc0       $v0, $9
/* 20474 8001F874 03E00008 */  jr         $ra
/* 20478 8001F878 00000000 */   nop
/* 2047C 8001F87C 00000000 */  nop
