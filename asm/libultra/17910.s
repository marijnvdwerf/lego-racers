.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80016D10
/* 17910 80016D10 3C02A450 */  lui        $v0, (0xA450000C >> 16)
/* 17914 80016D14 3442000C */  ori        $v0, $v0, (0xA450000C & 0xFFFF)
/* 17918 80016D18 8C420000 */  lw         $v0, 0x0($v0)
/* 1791C 80016D1C 03E00008 */  jr         $ra
/* 17920 80016D20 28420000 */   slti      $v0, $v0, 0x0
/* 17924 80016D24 00000000 */  nop
/* 17928 80016D28 00000000 */  nop
/* 1792C 80016D2C 00000000 */  nop
