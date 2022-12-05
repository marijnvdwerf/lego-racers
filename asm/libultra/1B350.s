.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel osInvalDCache
/* 1B350 8001A750 18A00020 */  blez       $a1, .L8001A7D4
/* 1B354 8001A754 00000000 */   nop
/* 1B358 8001A758 240B2000 */  addiu      $t3, $zero, 0x2000
/* 1B35C 8001A75C 00AB082B */  sltu       $at, $a1, $t3
/* 1B360 8001A760 1020001E */  beqz       $at, .L8001A7DC
/* 1B364 8001A764 00000000 */   nop
/* 1B368 8001A768 00804021 */  addu       $t0, $a0, $zero
/* 1B36C 8001A76C 00854821 */  addu       $t1, $a0, $a1
/* 1B370 8001A770 0109082B */  sltu       $at, $t0, $t1
/* 1B374 8001A774 10200017 */  beqz       $at, .L8001A7D4
/* 1B378 8001A778 00000000 */   nop
/* 1B37C 8001A77C 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 1B380 8001A780 310A000F */  andi       $t2, $t0, 0xF
/* 1B384 8001A784 11400007 */  beqz       $t2, .L8001A7A4
/* 1B388 8001A788 00000000 */   nop
/* 1B38C 8001A78C 010A4023 */  subu       $t0, $t0, $t2
/* 1B390 8001A790 BD150000 */  cache      0x15, 0x0($t0)
/* 1B394 8001A794 0109082B */  sltu       $at, $t0, $t1
/* 1B398 8001A798 1020000E */  beqz       $at, .L8001A7D4
/* 1B39C 8001A79C 00000000 */   nop
/* 1B3A0 8001A7A0 25080010 */  addiu      $t0, $t0, 0x10
.L8001A7A4:
/* 1B3A4 8001A7A4 312A000F */  andi       $t2, $t1, 0xF
/* 1B3A8 8001A7A8 11400006 */  beqz       $t2, .L8001A7C4
/* 1B3AC 8001A7AC 00000000 */   nop
/* 1B3B0 8001A7B0 012A4823 */  subu       $t1, $t1, $t2
/* 1B3B4 8001A7B4 BD350010 */  cache      0x15, 0x10($t1)
/* 1B3B8 8001A7B8 0128082B */  sltu       $at, $t1, $t0
/* 1B3BC 8001A7BC 14200005 */  bnez       $at, .L8001A7D4
/* 1B3C0 8001A7C0 00000000 */   nop
.L8001A7C4:
/* 1B3C4 8001A7C4 BD110000 */  cache      0x11, 0x0($t0)
/* 1B3C8 8001A7C8 0109082B */  sltu       $at, $t0, $t1
/* 1B3CC 8001A7CC 1420FFFD */  bnez       $at, .L8001A7C4
/* 1B3D0 8001A7D0 25080010 */   addiu     $t0, $t0, 0x10
.L8001A7D4:
/* 1B3D4 8001A7D4 03E00008 */  jr         $ra
/* 1B3D8 8001A7D8 00000000 */   nop
.L8001A7DC:
/* 1B3DC 8001A7DC 3C088000 */  lui        $t0, 0x8000
/* 1B3E0 8001A7E0 010B4821 */  addu       $t1, $t0, $t3
/* 1B3E4 8001A7E4 2529FFF0 */  addiu      $t1, $t1, -0x10
.L8001A7E8:
/* 1B3E8 8001A7E8 BD010000 */  cache      0x01, 0x0($t0)
/* 1B3EC 8001A7EC 0109082B */  sltu       $at, $t0, $t1
/* 1B3F0 8001A7F0 1420FFFD */  bnez       $at, .L8001A7E8
/* 1B3F4 8001A7F4 25080010 */   addiu     $t0, $t0, 0x10
/* 1B3F8 8001A7F8 03E00008 */  jr         $ra
/* 1B3FC 8001A7FC 00000000 */   nop

# Handwritten function
glabel osInvalICache
/* 1B400 8001A800 18A00011 */  blez       $a1, .L8001A848
/* 1B404 8001A804 00000000 */   nop
/* 1B408 8001A808 240B4000 */  addiu      $t3, $zero, 0x4000
/* 1B40C 8001A80C 00AB082B */  sltu       $at, $a1, $t3
/* 1B410 8001A810 1020000F */  beqz       $at, .L8001A850
/* 1B414 8001A814 00000000 */   nop
/* 1B418 8001A818 00804021 */  addu       $t0, $a0, $zero
/* 1B41C 8001A81C 00854821 */  addu       $t1, $a0, $a1
/* 1B420 8001A820 0109082B */  sltu       $at, $t0, $t1
/* 1B424 8001A824 10200008 */  beqz       $at, .L8001A848
/* 1B428 8001A828 00000000 */   nop
/* 1B42C 8001A82C 2529FFE0 */  addiu      $t1, $t1, -0x20
/* 1B430 8001A830 310A001F */  andi       $t2, $t0, 0x1F
/* 1B434 8001A834 010A4023 */  subu       $t0, $t0, $t2
.L8001A838:
/* 1B438 8001A838 BD100000 */  cache      0x10, 0x0($t0)
/* 1B43C 8001A83C 0109082B */  sltu       $at, $t0, $t1
/* 1B440 8001A840 1420FFFD */  bnez       $at, .L8001A838
/* 1B444 8001A844 25080020 */   addiu     $t0, $t0, 0x20
.L8001A848:
/* 1B448 8001A848 03E00008 */  jr         $ra
/* 1B44C 8001A84C 00000000 */   nop
.L8001A850:
/* 1B450 8001A850 3C088000 */  lui        $t0, 0x8000
/* 1B454 8001A854 010B4821 */  addu       $t1, $t0, $t3
/* 1B458 8001A858 2529FFE0 */  addiu      $t1, $t1, -0x20
.L8001A85C:
/* 1B45C 8001A85C BD000000 */  cache      0x00, 0x0($t0)
/* 1B460 8001A860 0109082B */  sltu       $at, $t0, $t1
/* 1B464 8001A864 1420FFFD */  bnez       $at, .L8001A85C
/* 1B468 8001A868 25080020 */   addiu     $t0, $t0, 0x20
/* 1B46C 8001A86C 03E00008 */  jr         $ra
/* 1B470 8001A870 00000000 */   nop
/* 1B474 8001A874 00000000 */  nop
/* 1B478 8001A878 00000000 */  nop
/* 1B47C 8001A87C 00000000 */  nop
