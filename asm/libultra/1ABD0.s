.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alHeapDBAlloc
/* 1ABD0 80019FD0 8FA20010 */  lw         $v0, 0x10($sp)
/* 1ABD4 80019FD4 00E20018 */  mult       $a3, $v0
/* 1ABD8 80019FD8 00003812 */  mflo       $a3
/* 1ABDC 80019FDC 8CC30008 */  lw         $v1, 0x8($a2)
/* 1ABE0 80019FE0 8CC20000 */  lw         $v0, 0x0($a2)
/* 1ABE4 80019FE4 2404FFF0 */  addiu      $a0, $zero, -0x10
/* 1ABE8 80019FE8 8CC50004 */  lw         $a1, 0x4($a2)
/* 1ABEC 80019FEC 00431021 */  addu       $v0, $v0, $v1
/* 1ABF0 80019FF0 24E7000F */  addiu      $a3, $a3, 0xF
/* 1ABF4 80019FF4 00E43824 */  and        $a3, $a3, $a0
/* 1ABF8 80019FF8 00A72021 */  addu       $a0, $a1, $a3
/* 1ABFC 80019FFC 0044102B */  sltu       $v0, $v0, $a0
/* 1AC00 8001A000 14400003 */  bnez       $v0, .L8001A010
/* 1AC04 8001A004 00004021 */   addu      $t0, $zero, $zero
/* 1AC08 8001A008 00A04021 */  addu       $t0, $a1, $zero
/* 1AC0C 8001A00C ACC40004 */  sw         $a0, 0x4($a2)
.L8001A010:
/* 1AC10 8001A010 03E00008 */  jr         $ra
/* 1AC14 8001A014 01001021 */   addu      $v0, $t0, $zero
/* 1AC18 8001A018 00000000 */  nop
/* 1AC1C 8001A01C 00000000 */  nop
