.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel func_80024010
/* 24C10 80024010 40085000 */  mfc0       $t0, $10
/* 24C14 80024014 2409001F */  addiu      $t1, $zero, 0x1F
/* 24C18 80024018 40890000 */  mtc0       $t1, $0
/* 24C1C 8002401C 40802800 */  mtc0       $zero, $5
/* 24C20 80024020 240A0017 */  addiu      $t2, $zero, 0x17
/* 24C24 80024024 3C09C000 */  lui        $t1, (0xC0000000 >> 16)
/* 24C28 80024028 40895000 */  mtc0       $t1, $10
/* 24C2C 8002402C 3C098000 */  lui        $t1, (0x80000000 >> 16)
/* 24C30 80024030 00095982 */  srl        $t3, $t1, 6
/* 24C34 80024034 016A5825 */  or         $t3, $t3, $t2
/* 24C38 80024038 408B1000 */  mtc0       $t3, $2
/* 24C3C 8002403C 24090001 */  addiu      $t1, $zero, 0x1
/* 24C40 80024040 40891800 */  mtc0       $t1, $3
/* 24C44 80024044 00000000 */  nop
/* 24C48 80024048 42000002 */  tlbwi
/* 24C4C 8002404C 00000000 */  nop
/* 24C50 80024050 00000000 */  nop
/* 24C54 80024054 00000000 */  nop
/* 24C58 80024058 00000000 */  nop
/* 24C5C 8002405C 40885000 */  mtc0       $t0, $10
/* 24C60 80024060 03E00008 */  jr         $ra
/* 24C64 80024064 00000000 */   nop
/* 24C68 80024068 00000000 */  nop
/* 24C6C 8002406C 00000000 */  nop
