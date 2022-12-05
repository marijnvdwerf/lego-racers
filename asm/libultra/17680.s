.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osPiStartDma
/* 17680 80016A80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17684 80016A84 AFB00010 */  sw         $s0, 0x10($sp)
/* 17688 80016A88 00808021 */  addu       $s0, $a0, $zero
/* 1768C 80016A8C 8FA40028 */  lw         $a0, 0x28($sp)
/* 17690 80016A90 3C028003 */  lui        $v0, %hi(D_80030C90)
/* 17694 80016A94 8C420C90 */  lw         $v0, %lo(D_80030C90)($v0)
/* 17698 80016A98 8FA8002C */  lw         $t0, 0x2C($sp)
/* 1769C 80016A9C 8FA30030 */  lw         $v1, 0x30($sp)
/* 176A0 80016AA0 14400003 */  bnez       $v0, .L80016AB0
/* 176A4 80016AA4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 176A8 80016AA8 08005AC6 */  j          .L80016B18
/* 176AC 80016AAC 2402FFFF */   addiu     $v0, $zero, -0x1
.L80016AB0:
/* 176B0 80016AB0 14C00002 */  bnez       $a2, .L80016ABC
/* 176B4 80016AB4 2402000C */   addiu     $v0, $zero, 0xC
/* 176B8 80016AB8 2402000B */  addiu      $v0, $zero, 0xB
.L80016ABC:
/* 176BC 80016ABC A6020000 */  sh         $v0, 0x0($s0)
/* 176C0 80016AC0 24020001 */  addiu      $v0, $zero, 0x1
/* 176C4 80016AC4 A2050002 */  sb         $a1, 0x2($s0)
/* 176C8 80016AC8 AE030004 */  sw         $v1, 0x4($s0)
/* 176CC 80016ACC AE040008 */  sw         $a0, 0x8($s0)
/* 176D0 80016AD0 AE07000C */  sw         $a3, 0xC($s0)
/* 176D4 80016AD4 AE080010 */  sw         $t0, 0x10($s0)
/* 176D8 80016AD8 14A20009 */  bne        $a1, $v0, .L80016B00
/* 176DC 80016ADC AE000014 */   sw        $zero, 0x14($s0)
/* 176E0 80016AE0 0C005830 */  jal        func_800160C0
/* 176E4 80016AE4 00000000 */   nop
/* 176E8 80016AE8 00402021 */  addu       $a0, $v0, $zero
/* 176EC 80016AEC 02002821 */  addu       $a1, $s0, $zero
/* 176F0 80016AF0 0C007474 */  jal        func_8001D1D0
/* 176F4 80016AF4 00003021 */   addu      $a2, $zero, $zero
/* 176F8 80016AF8 08005AC6 */  j          .L80016B18
/* 176FC 80016AFC 00000000 */   nop
.L80016B00:
/* 17700 80016B00 0C005830 */  jal        func_800160C0
/* 17704 80016B04 00000000 */   nop
/* 17708 80016B08 00402021 */  addu       $a0, $v0, $zero
/* 1770C 80016B0C 02002821 */  addu       $a1, $s0, $zero
/* 17710 80016B10 0C00776C */  jal        osSendMesg
/* 17714 80016B14 00003021 */   addu      $a2, $zero, $zero
.L80016B18:
/* 17718 80016B18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1771C 80016B1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 17720 80016B20 03E00008 */  jr         $ra
/* 17724 80016B24 27BD0018 */   addiu     $sp, $sp, 0x18
/* 17728 80016B28 00000000 */  nop
/* 1772C 80016B2C 00000000 */  nop
