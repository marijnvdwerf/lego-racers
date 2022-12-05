.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80023FA0
/* 24BA0 80023FA0 3C02A480 */  lui        $v0, (0xA4800018 >> 16)
/* 24BA4 80023FA4 34420018 */  ori        $v0, $v0, (0xA4800018 & 0xFFFF)
/* 24BA8 80023FA8 8C420000 */  lw         $v0, 0x0($v0)
/* 24BAC 80023FAC 30420003 */  andi       $v0, $v0, 0x3
/* 24BB0 80023FB0 03E00008 */  jr         $ra
/* 24BB4 80023FB4 0002102B */   sltu      $v0, $zero, $v0
/* 24BB8 80023FB8 00000000 */  nop
/* 24BBC 80023FBC 00000000 */  nop
