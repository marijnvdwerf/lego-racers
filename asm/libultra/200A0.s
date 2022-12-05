.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSetThreadPri
/* 200A0 8001F4A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 200A4 8001F4A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 200A8 8001F4A8 00808021 */  addu       $s0, $a0, $zero
/* 200AC 8001F4AC AFB10014 */  sw         $s1, 0x14($sp)
/* 200B0 8001F4B0 00A08821 */  addu       $s1, $a1, $zero
/* 200B4 8001F4B4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 200B8 8001F4B8 0C005734 */  jal        func_80015CD0
/* 200BC 8001F4BC AFB20018 */   sw        $s2, 0x18($sp)
/* 200C0 8001F4C0 16000003 */  bnez       $s0, .L8001F4D0
/* 200C4 8001F4C4 00409021 */   addu      $s2, $v0, $zero
/* 200C8 8001F4C8 3C108003 */  lui        $s0, %hi(D_800310B0)
/* 200CC 8001F4CC 8E1010B0 */  lw         $s0, %lo(D_800310B0)($s0)
.L8001F4D0:
/* 200D0 8001F4D0 8E020004 */  lw         $v0, 0x4($s0)
/* 200D4 8001F4D4 1051001C */  beq        $v0, $s1, .L8001F548
/* 200D8 8001F4D8 00000000 */   nop
/* 200DC 8001F4DC 3C028003 */  lui        $v0, %hi(D_800310B0)
/* 200E0 8001F4E0 8C4210B0 */  lw         $v0, %lo(D_800310B0)($v0)
/* 200E4 8001F4E4 1202000B */  beq        $s0, $v0, .L8001F514
/* 200E8 8001F4E8 AE110004 */   sw        $s1, 0x4($s0)
/* 200EC 8001F4EC 96030010 */  lhu        $v1, 0x10($s0)
/* 200F0 8001F4F0 24020001 */  addiu      $v0, $zero, 0x1
/* 200F4 8001F4F4 10620007 */  beq        $v1, $v0, .L8001F514
/* 200F8 8001F4F8 00000000 */   nop
/* 200FC 8001F4FC 8E040008 */  lw         $a0, 0x8($s0)
/* 20100 8001F500 0C007DD4 */  jal        func_8001F750
/* 20104 8001F504 02002821 */   addu      $a1, $s0, $zero
/* 20108 8001F508 8E040008 */  lw         $a0, 0x8($s0)
/* 2010C 8001F50C 0C0076A5 */  jal        func_8001DA94
/* 20110 8001F510 02002821 */   addu      $a1, $s0, $zero
.L8001F514:
/* 20114 8001F514 3C048003 */  lui        $a0, %hi(D_800310B0)
/* 20118 8001F518 8C8410B0 */  lw         $a0, %lo(D_800310B0)($a0)
/* 2011C 8001F51C 3C028003 */  lui        $v0, %hi(D_800310A8)
/* 20120 8001F520 8C4210A8 */  lw         $v0, %lo(D_800310A8)($v0)
/* 20124 8001F524 8C830004 */  lw         $v1, 0x4($a0)
/* 20128 8001F528 8C420004 */  lw         $v0, 0x4($v0)
/* 2012C 8001F52C 0062182A */  slt        $v1, $v1, $v0
/* 20130 8001F530 10600005 */  beqz       $v1, .L8001F548
/* 20134 8001F534 24020002 */   addiu     $v0, $zero, 0x2
/* 20138 8001F538 A4820010 */  sh         $v0, 0x10($a0)
/* 2013C 8001F53C 3C048003 */  lui        $a0, %hi(D_800310A8)
/* 20140 8001F540 0C007663 */  jal        func_8001D98C
/* 20144 8001F544 248410A8 */   addiu     $a0, $a0, %lo(D_800310A8)
.L8001F548:
/* 20148 8001F548 0C005750 */  jal        func_80015D40
/* 2014C 8001F54C 02402021 */   addu      $a0, $s2, $zero
/* 20150 8001F550 8FBF001C */  lw         $ra, 0x1C($sp)
/* 20154 8001F554 8FB20018 */  lw         $s2, 0x18($sp)
/* 20158 8001F558 8FB10014 */  lw         $s1, 0x14($sp)
/* 2015C 8001F55C 8FB00010 */  lw         $s0, 0x10($sp)
/* 20160 8001F560 03E00008 */  jr         $ra
/* 20164 8001F564 27BD0020 */   addiu     $sp, $sp, 0x20
/* 20168 8001F568 00000000 */  nop
/* 2016C 8001F56C 00000000 */  nop
