.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001A6A0
/* 1B2A0 8001A6A0 03E00008 */  jr         $ra
/* 1B2A4 8001A6A4 AC800000 */   sw        $zero, 0x0($a0)
/* 1B2A8 8001A6A8 00000000 */  nop
/* 1B2AC 8001A6AC 00000000 */  nop
