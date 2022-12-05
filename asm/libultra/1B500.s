.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel osWritebackDCacheAll
/* 1B500 8001A900 3C088000 */  lui        $t0, 0x8000
/* 1B504 8001A904 240A2000 */  addiu      $t2, $zero, 0x2000
/* 1B508 8001A908 010A4821 */  addu       $t1, $t0, $t2
/* 1B50C 8001A90C 2529FFF0 */  addiu      $t1, $t1, -0x10
.L8001A910:
/* 1B510 8001A910 BD010000 */  cache      0x01, 0x0($t0)
/* 1B514 8001A914 0109082B */  sltu       $at, $t0, $t1
/* 1B518 8001A918 1420FFFD */  bnez       $at, .L8001A910
/* 1B51C 8001A91C 25080010 */   addiu     $t0, $t0, 0x10
/* 1B520 8001A920 03E00008 */  jr         $ra
/* 1B524 8001A924 00000000 */   nop
/* 1B528 8001A928 00000000 */  nop
/* 1B52C 8001A92C 00000000 */  nop
