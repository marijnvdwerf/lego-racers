.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel sqrt
/* 1BB20 8001AF20 03E00008 */  jr         $ra
/* 1BB24 8001AF24 46006004 */   sqrt.s    $f0, $f12
/* 1BB28 8001AF28 00000000 */  nop
/* 1BB2C 8001AF2C 00000000 */  nop
