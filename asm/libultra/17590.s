.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80016990
/* 17590 80016990 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17594 80016994 24020001 */  addiu      $v0, $zero, 0x1
/* 17598 80016998 AFB00010 */  sw         $s0, 0x10($sp)
/* 1759C 8001699C 3C108004 */  lui        $s0, %hi(D_8003A4E0)
/* 175A0 800169A0 2610A4E0 */  addiu      $s0, $s0, %lo(D_8003A4E0)
/* 175A4 800169A4 02002021 */  addu       $a0, $s0, $zero
/* 175A8 800169A8 3C058004 */  lui        $a1, %hi(D_8003A4D0)
/* 175AC 800169AC 24A5A4D0 */  addiu      $a1, $a1, %lo(D_8003A4D0)
/* 175B0 800169B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 175B4 800169B4 3C018003 */  lui        $at, %hi(D_80030CD0)
/* 175B8 800169B8 AC220CD0 */  sw         $v0, %lo(D_80030CD0)($at)
/* 175BC 800169BC 0C007468 */  jal        osCreateMesgQueue
/* 175C0 800169C0 24060001 */   addiu     $a2, $zero, 0x1
/* 175C4 800169C4 02002021 */  addu       $a0, $s0, $zero
/* 175C8 800169C8 00002821 */  addu       $a1, $zero, $zero
/* 175CC 800169CC 0C00776C */  jal        osSendMesg
/* 175D0 800169D0 00003021 */   addu      $a2, $zero, $zero
/* 175D4 800169D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 175D8 800169D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 175DC 800169DC 03E00008 */  jr         $ra
/* 175E0 800169E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800169E4
/* 175E4 800169E4 3C028003 */  lui        $v0, %hi(D_80030CD0)
/* 175E8 800169E8 8C420CD0 */  lw         $v0, %lo(D_80030CD0)($v0)
/* 175EC 800169EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 175F0 800169F0 1440000F */  bnez       $v0, .L80016A30
/* 175F4 800169F4 AFBF0018 */   sw        $ra, 0x18($sp)
/* 175F8 800169F8 24020001 */  addiu      $v0, $zero, 0x1
/* 175FC 800169FC 3C018003 */  lui        $at, %hi(D_80030CD0)
/* 17600 80016A00 AC220CD0 */  sw         $v0, %lo(D_80030CD0)($at)
/* 17604 80016A04 3C048004 */  lui        $a0, %hi(D_8003A4E0)
/* 17608 80016A08 2484A4E0 */  addiu      $a0, $a0, %lo(D_8003A4E0)
/* 1760C 80016A0C 3C058004 */  lui        $a1, %hi(D_8003A4D0)
/* 17610 80016A10 24A5A4D0 */  addiu      $a1, $a1, %lo(D_8003A4D0)
/* 17614 80016A14 0C007468 */  jal        osCreateMesgQueue
/* 17618 80016A18 24060001 */   addiu     $a2, $zero, 0x1
/* 1761C 80016A1C 3C048004 */  lui        $a0, %hi(D_8003A4E0)
/* 17620 80016A20 2484A4E0 */  addiu      $a0, $a0, %lo(D_8003A4E0)
/* 17624 80016A24 00002821 */  addu       $a1, $zero, $zero
/* 17628 80016A28 0C00776C */  jal        osSendMesg
/* 1762C 80016A2C 00003021 */   addu      $a2, $zero, $zero
.L80016A30:
/* 17630 80016A30 3C048004 */  lui        $a0, %hi(D_8003A4E0)
/* 17634 80016A34 2484A4E0 */  addiu      $a0, $a0, %lo(D_8003A4E0)
/* 17638 80016A38 27A50010 */  addiu      $a1, $sp, 0x10
/* 1763C 80016A3C 0C007720 */  jal        osRecvMesg
/* 17640 80016A40 24060001 */   addiu     $a2, $zero, 0x1
/* 17644 80016A44 8FBF0018 */  lw         $ra, 0x18($sp)
/* 17648 80016A48 03E00008 */  jr         $ra
/* 1764C 80016A4C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80016A50
/* 17650 80016A50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17654 80016A54 AFBF0010 */  sw         $ra, 0x10($sp)
/* 17658 80016A58 3C048004 */  lui        $a0, %hi(D_8003A4E0)
/* 1765C 80016A5C 2484A4E0 */  addiu      $a0, $a0, %lo(D_8003A4E0)
/* 17660 80016A60 00002821 */  addu       $a1, $zero, $zero
/* 17664 80016A64 0C00776C */  jal        osSendMesg
/* 17668 80016A68 00003021 */   addu      $a2, $zero, $zero
/* 1766C 80016A6C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17670 80016A70 03E00008 */  jr         $ra
/* 17674 80016A74 27BD0018 */   addiu     $sp, $sp, 0x18
/* 17678 80016A78 00000000 */  nop
/* 1767C 80016A7C 00000000 */  nop
