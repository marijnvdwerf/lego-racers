.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osEPiStartDma
/* 16C20 80016020 3C028003 */  lui        $v0, %hi(D_80030C90)
/* 16C24 80016024 8C420C90 */  lw         $v0, %lo(D_80030C90)($v0)
/* 16C28 80016028 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 16C2C 8001602C AFB00010 */  sw         $s0, 0x10($sp)
/* 16C30 80016030 00A08021 */  addu       $s0, $a1, $zero
/* 16C34 80016034 14400003 */  bnez       $v0, .L80016044
/* 16C38 80016038 AFBF0014 */   sw        $ra, 0x14($sp)
/* 16C3C 8001603C 08005829 */  j          .L800160A4
/* 16C40 80016040 2402FFFF */   addiu     $v0, $zero, -0x1
.L80016044:
/* 16C44 80016044 14C00003 */  bnez       $a2, .L80016054
/* 16C48 80016048 AE040014 */   sw        $a0, 0x14($s0)
/* 16C4C 8001604C 08005816 */  j          .L80016058
/* 16C50 80016050 2402000F */   addiu     $v0, $zero, 0xF
.L80016054:
/* 16C54 80016054 24020010 */  addiu      $v0, $zero, 0x10
.L80016058:
/* 16C58 80016058 A6020000 */  sh         $v0, 0x0($s0)
/* 16C5C 8001605C 92030002 */  lbu        $v1, 0x2($s0)
/* 16C60 80016060 24020001 */  addiu      $v0, $zero, 0x1
/* 16C64 80016064 14620009 */  bne        $v1, $v0, .L8001608C
/* 16C68 80016068 00000000 */   nop
/* 16C6C 8001606C 0C005830 */  jal        func_800160C0
/* 16C70 80016070 00000000 */   nop
/* 16C74 80016074 00402021 */  addu       $a0, $v0, $zero
/* 16C78 80016078 02002821 */  addu       $a1, $s0, $zero
/* 16C7C 8001607C 0C007474 */  jal        func_8001D1D0
/* 16C80 80016080 00003021 */   addu      $a2, $zero, $zero
/* 16C84 80016084 08005829 */  j          .L800160A4
/* 16C88 80016088 00000000 */   nop
.L8001608C:
/* 16C8C 8001608C 0C005830 */  jal        func_800160C0
/* 16C90 80016090 00000000 */   nop
/* 16C94 80016094 00402021 */  addu       $a0, $v0, $zero
/* 16C98 80016098 02002821 */  addu       $a1, $s0, $zero
/* 16C9C 8001609C 0C00776C */  jal        osSendMesg
/* 16CA0 800160A0 00003021 */   addu      $a2, $zero, $zero
.L800160A4:
/* 16CA4 800160A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 16CA8 800160A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 16CAC 800160AC 03E00008 */  jr         $ra
/* 16CB0 800160B0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 16CB4 800160B4 00000000 */  nop
/* 16CB8 800160B8 00000000 */  nop
/* 16CBC 800160BC 00000000 */  nop
