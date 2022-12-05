.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel func_8001FC30
/* 20830 8001FC30 40085000 */  mfc0       $t0, $10
/* 20834 8001FC34 310900FF */  andi       $t1, $t0, 0xFF
/* 20838 8001FC38 2401E000 */  addiu      $at, $zero, -0x2000
/* 2083C 8001FC3C 00815024 */  and        $t2, $a0, $at
/* 20840 8001FC40 012A4825 */  or         $t1, $t1, $t2
/* 20844 8001FC44 40895000 */  mtc0       $t1, $10
/* 20848 8001FC48 00000000 */  nop
/* 2084C 8001FC4C 00000000 */  nop
/* 20850 8001FC50 00000000 */  nop
/* 20854 8001FC54 42000008 */  tlbp
/* 20858 8001FC58 00000000 */  nop
/* 2085C 8001FC5C 00000000 */  nop
/* 20860 8001FC60 400B0000 */  mfc0       $t3, $0
/* 20864 8001FC64 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 20868 8001FC68 01615824 */  and        $t3, $t3, $at
/* 2086C 8001FC6C 1560001A */  bnez       $t3, .L8001FCD8
/* 20870 8001FC70 00000000 */   nop
/* 20874 8001FC74 42000001 */  tlbr
/* 20878 8001FC78 00000000 */  nop
/* 2087C 8001FC7C 00000000 */  nop
/* 20880 8001FC80 00000000 */  nop
/* 20884 8001FC84 400B2800 */  mfc0       $t3, $5
/* 20888 8001FC88 216B2000 */  addi       $t3, $t3, 0x2000
/* 2088C 8001FC8C 000B5842 */  srl        $t3, $t3, 1
/* 20890 8001FC90 01646024 */  and        $t4, $t3, $a0
/* 20894 8001FC94 15800004 */  bnez       $t4, .L8001FCA8
/* 20898 8001FC98 216BFFFF */   addi      $t3, $t3, -0x1
/* 2089C 8001FC9C 40021000 */  mfc0       $v0, $2
/* 208A0 8001FCA0 10000002 */  b          .L8001FCAC
/* 208A4 8001FCA4 00000000 */   nop
.L8001FCA8:
/* 208A8 8001FCA8 40021800 */  mfc0       $v0, $3
.L8001FCAC:
/* 208AC 8001FCAC 304D0002 */  andi       $t5, $v0, 0x2
/* 208B0 8001FCB0 11A00009 */  beqz       $t5, .L8001FCD8
/* 208B4 8001FCB4 00000000 */   nop
/* 208B8 8001FCB8 3C013FFF */  lui        $at, (0x3FFFFFC0 >> 16)
/* 208BC 8001FCBC 3421FFC0 */  ori        $at, $at, (0x3FFFFFC0 & 0xFFFF)
/* 208C0 8001FCC0 00411024 */  and        $v0, $v0, $at
/* 208C4 8001FCC4 00021180 */  sll        $v0, $v0, 6
/* 208C8 8001FCC8 008B6824 */  and        $t5, $a0, $t3
/* 208CC 8001FCCC 004D1020 */  add        $v0, $v0, $t5
/* 208D0 8001FCD0 10000002 */  b          .L8001FCDC
/* 208D4 8001FCD4 00000000 */   nop
.L8001FCD8:
/* 208D8 8001FCD8 2402FFFF */  addiu      $v0, $zero, -0x1
.L8001FCDC:
/* 208DC 8001FCDC 40885000 */  mtc0       $t0, $10
/* 208E0 8001FCE0 03E00008 */  jr         $ra
/* 208E4 8001FCE4 00000000 */   nop
/* 208E8 8001FCE8 00000000 */  nop
/* 208EC 8001FCEC 00000000 */  nop
