.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80020210
/* 20E10 80020210 3C028003 */  lui        $v0, %hi(D_80031130)
/* 20E14 80020214 03E00008 */  jr         $ra
/* 20E18 80020218 8C421130 */   lw        $v0, %lo(D_80031130)($v0)
/* 20E1C 8002021C 00000000 */  nop
