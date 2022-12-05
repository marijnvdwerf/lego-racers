.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel func_8001FC20
/* 20820 8001FC20 40845800 */  mtc0       $a0, $11
/* 20824 8001FC24 03E00008 */  jr         $ra
/* 20828 8001FC28 00000000 */   nop
/* 2082C 8001FC2C 00000000 */  nop
