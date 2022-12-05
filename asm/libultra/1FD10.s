.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001F110
/* 1FD10 8001F110 3C02A410 */  lui        $v0, (0xA410000C >> 16)
/* 1FD14 8001F114 3442000C */  ori        $v0, $v0, (0xA410000C & 0xFFFF)
/* 1FD18 8001F118 8C420000 */  lw         $v0, 0x0($v0)
/* 1FD1C 8001F11C 30420100 */  andi       $v0, $v0, 0x100
/* 1FD20 8001F120 03E00008 */  jr         $ra
/* 1FD24 8001F124 0002102B */   sltu      $v0, $zero, $v0
/* 1FD28 8001F128 00000000 */  nop
/* 1FD2C 8001F12C 00000000 */  nop
