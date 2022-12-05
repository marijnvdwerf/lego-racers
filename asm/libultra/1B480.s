.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel osWritebackDCache
/* 1B480 8001A880 18A00011 */  blez       $a1, .L8001A8C8
/* 1B484 8001A884 00000000 */   nop
/* 1B488 8001A888 240B2000 */  addiu      $t3, $zero, 0x2000
/* 1B48C 8001A88C 00AB082B */  sltu       $at, $a1, $t3
/* 1B490 8001A890 1020000F */  beqz       $at, .L8001A8D0
/* 1B494 8001A894 00000000 */   nop
/* 1B498 8001A898 00804021 */  addu       $t0, $a0, $zero
/* 1B49C 8001A89C 00854821 */  addu       $t1, $a0, $a1
/* 1B4A0 8001A8A0 0109082B */  sltu       $at, $t0, $t1
/* 1B4A4 8001A8A4 10200008 */  beqz       $at, .L8001A8C8
/* 1B4A8 8001A8A8 00000000 */   nop
/* 1B4AC 8001A8AC 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 1B4B0 8001A8B0 310A000F */  andi       $t2, $t0, 0xF
/* 1B4B4 8001A8B4 010A4023 */  subu       $t0, $t0, $t2
.L8001A8B8:
/* 1B4B8 8001A8B8 BD190000 */  cache      0x19, 0x0($t0)
/* 1B4BC 8001A8BC 0109082B */  sltu       $at, $t0, $t1
/* 1B4C0 8001A8C0 1420FFFD */  bnez       $at, .L8001A8B8
/* 1B4C4 8001A8C4 25080010 */   addiu     $t0, $t0, 0x10
.L8001A8C8:
/* 1B4C8 8001A8C8 03E00008 */  jr         $ra
/* 1B4CC 8001A8CC 00000000 */   nop
.L8001A8D0:
/* 1B4D0 8001A8D0 3C088000 */  lui        $t0, 0x8000
/* 1B4D4 8001A8D4 010B4821 */  addu       $t1, $t0, $t3
/* 1B4D8 8001A8D8 2529FFF0 */  addiu      $t1, $t1, -0x10
.L8001A8DC:
/* 1B4DC 8001A8DC BD010000 */  cache      0x01, 0x0($t0)
/* 1B4E0 8001A8E0 0109082B */  sltu       $at, $t0, $t1
/* 1B4E4 8001A8E4 1420FFFD */  bnez       $at, .L8001A8DC
/* 1B4E8 8001A8E8 25080010 */   addiu     $t0, $t0, 0x10
/* 1B4EC 8001A8EC 03E00008 */  jr         $ra
/* 1B4F0 8001A8F0 00000000 */   nop
/* 1B4F4 8001A8F4 00000000 */  nop
/* 1B4F8 8001A8F8 00000000 */  nop
/* 1B4FC 8001A8FC 00000000 */  nop
