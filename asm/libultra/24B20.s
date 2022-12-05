.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel func_80023F20
/* 24B20 80023F20 40026000 */  mfc0       $v0, $12
/* 24B24 80023F24 03E00008 */  jr         $ra
/* 24B28 80023F28 00000000 */   nop
/* 24B2C 80023F2C 00000000 */  nop
