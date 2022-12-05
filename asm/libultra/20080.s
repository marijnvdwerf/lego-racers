.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001F480
/* 20080 8001F480 14800003 */  bnez       $a0, .L8001F490
/* 20084 8001F484 00000000 */   nop
/* 20088 8001F488 3C048003 */  lui        $a0, %hi(D_800310B0)
/* 2008C 8001F48C 8C8410B0 */  lw         $a0, %lo(D_800310B0)($a0)
.L8001F490:
/* 20090 8001F490 03E00008 */  jr         $ra
/* 20094 8001F494 8C820004 */   lw        $v0, 0x4($a0)
/* 20098 8001F498 00000000 */  nop
/* 2009C 8001F49C 00000000 */  nop
