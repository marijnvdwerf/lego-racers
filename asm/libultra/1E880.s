.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osRecvMesg
/* 1E880 8001DC80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1E884 8001DC84 AFB00010 */  sw         $s0, 0x10($sp)
/* 1E888 8001DC88 00808021 */  addu       $s0, $a0, $zero
/* 1E88C 8001DC8C AFB40020 */  sw         $s4, 0x20($sp)
/* 1E890 8001DC90 00A0A021 */  addu       $s4, $a1, $zero
/* 1E894 8001DC94 AFB10014 */  sw         $s1, 0x14($sp)
/* 1E898 8001DC98 00C08821 */  addu       $s1, $a2, $zero
/* 1E89C 8001DC9C AFBF0024 */  sw         $ra, 0x24($sp)
/* 1E8A0 8001DCA0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1E8A4 8001DCA4 0C005734 */  jal        func_80015CD0
/* 1E8A8 8001DCA8 AFB20018 */   sw        $s2, 0x18($sp)
/* 1E8AC 8001DCAC 8E030008 */  lw         $v1, 0x8($s0)
/* 1E8B0 8001DCB0 1460000F */  bnez       $v1, .L8001DCF0
/* 1E8B4 8001DCB4 00409021 */   addu      $s2, $v0, $zero
/* 1E8B8 8001DCB8 24130008 */  addiu      $s3, $zero, 0x8
.L8001DCBC:
/* 1E8BC 8001DCBC 16200005 */  bnez       $s1, .L8001DCD4
/* 1E8C0 8001DCC0 02002021 */   addu      $a0, $s0, $zero
/* 1E8C4 8001DCC4 0C005750 */  jal        func_80015D40
/* 1E8C8 8001DCC8 02402021 */   addu      $a0, $s2, $zero
/* 1E8CC 8001DCCC 08007761 */  j          .L8001DD84
/* 1E8D0 8001DCD0 2402FFFF */   addiu     $v0, $zero, -0x1
.L8001DCD4:
/* 1E8D4 8001DCD4 3C028003 */  lui        $v0, %hi(D_800310B0)
/* 1E8D8 8001DCD8 8C4210B0 */  lw         $v0, %lo(D_800310B0)($v0)
/* 1E8DC 8001DCDC 0C007663 */  jal        func_8001D98C
/* 1E8E0 8001DCE0 A4530010 */   sh        $s3, 0x10($v0)
/* 1E8E4 8001DCE4 8E020008 */  lw         $v0, 0x8($s0)
/* 1E8E8 8001DCE8 1040FFF4 */  beqz       $v0, .L8001DCBC
/* 1E8EC 8001DCEC 00000000 */   nop
.L8001DCF0:
/* 1E8F0 8001DCF0 12800007 */  beqz       $s4, .L8001DD10
/* 1E8F4 8001DCF4 00000000 */   nop
/* 1E8F8 8001DCF8 8E02000C */  lw         $v0, 0xC($s0)
/* 1E8FC 8001DCFC 8E030014 */  lw         $v1, 0x14($s0)
/* 1E900 8001DD00 00021080 */  sll        $v0, $v0, 2
/* 1E904 8001DD04 00431021 */  addu       $v0, $v0, $v1
/* 1E908 8001DD08 8C420000 */  lw         $v0, 0x0($v0)
/* 1E90C 8001DD0C AE820000 */  sw         $v0, 0x0($s4)
.L8001DD10:
/* 1E910 8001DD10 8E02000C */  lw         $v0, 0xC($s0)
/* 1E914 8001DD14 8E030010 */  lw         $v1, 0x10($s0)
/* 1E918 8001DD18 24420001 */  addiu      $v0, $v0, 0x1
/* 1E91C 8001DD1C 0043001A */  div        $zero, $v0, $v1
/* 1E920 8001DD20 14600002 */  bnez       $v1, .L8001DD2C
/* 1E924 8001DD24 00000000 */   nop
/* 1E928 8001DD28 0007000D */  break      7
.L8001DD2C:
/* 1E92C 8001DD2C 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E930 8001DD30 14610004 */  bne        $v1, $at, .L8001DD44
/* 1E934 8001DD34 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1E938 8001DD38 14410002 */  bne        $v0, $at, .L8001DD44
/* 1E93C 8001DD3C 00000000 */   nop
/* 1E940 8001DD40 0006000D */  break      6
.L8001DD44:
/* 1E944 8001DD44 00002010 */  mfhi       $a0
/* 1E948 8001DD48 8E020008 */  lw         $v0, 0x8($s0)
/* 1E94C 8001DD4C 8E030004 */  lw         $v1, 0x4($s0)
/* 1E950 8001DD50 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1E954 8001DD54 AE020008 */  sw         $v0, 0x8($s0)
/* 1E958 8001DD58 AE04000C */  sw         $a0, 0xC($s0)
/* 1E95C 8001DD5C 8C620000 */  lw         $v0, 0x0($v1)
/* 1E960 8001DD60 10400005 */  beqz       $v0, .L8001DD78
/* 1E964 8001DD64 00000000 */   nop
/* 1E968 8001DD68 0C0076B7 */  jal        func_8001DADC
/* 1E96C 8001DD6C 26040004 */   addiu     $a0, $s0, 0x4
/* 1E970 8001DD70 0C007D5C */  jal        osStartThread
/* 1E974 8001DD74 00402021 */   addu      $a0, $v0, $zero
.L8001DD78:
/* 1E978 8001DD78 0C005750 */  jal        func_80015D40
/* 1E97C 8001DD7C 02402021 */   addu      $a0, $s2, $zero
/* 1E980 8001DD80 00001021 */  addu       $v0, $zero, $zero
.L8001DD84:
/* 1E984 8001DD84 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1E988 8001DD88 8FB40020 */  lw         $s4, 0x20($sp)
/* 1E98C 8001DD8C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1E990 8001DD90 8FB20018 */  lw         $s2, 0x18($sp)
/* 1E994 8001DD94 8FB10014 */  lw         $s1, 0x14($sp)
/* 1E998 8001DD98 8FB00010 */  lw         $s0, 0x10($sp)
/* 1E99C 8001DD9C 03E00008 */  jr         $ra
/* 1E9A0 8001DDA0 27BD0028 */   addiu     $sp, $sp, 0x28
/* 1E9A4 8001DDA4 00000000 */  nop
/* 1E9A8 8001DDA8 00000000 */  nop
/* 1E9AC 8001DDAC 00000000 */  nop
