.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001F1E0
/* 1FDE0 8001F1E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FDE4 8001F1E4 24020001 */  addiu      $v0, $zero, 0x1
/* 1FDE8 8001F1E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FDEC 8001F1EC 3C108004 */  lui        $s0, %hi(D_8003A810)
/* 1FDF0 8001F1F0 2610A810 */  addiu      $s0, $s0, %lo(D_8003A810)
/* 1FDF4 8001F1F4 02002021 */  addu       $a0, $s0, $zero
/* 1FDF8 8001F1F8 3C058004 */  lui        $a1, %hi(D_8003A800)
/* 1FDFC 8001F1FC 24A5A800 */  addiu      $a1, $a1, %lo(D_8003A800)
/* 1FE00 8001F200 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FE04 8001F204 3C018003 */  lui        $at, %hi(D_80031090)
/* 1FE08 8001F208 AC221090 */  sw         $v0, %lo(D_80031090)($at)
/* 1FE0C 8001F20C 0C007468 */  jal        osCreateMesgQueue
/* 1FE10 8001F210 24060001 */   addiu     $a2, $zero, 0x1
/* 1FE14 8001F214 02002021 */  addu       $a0, $s0, $zero
/* 1FE18 8001F218 00002821 */  addu       $a1, $zero, $zero
/* 1FE1C 8001F21C 0C00776C */  jal        osSendMesg
/* 1FE20 8001F220 00003021 */   addu      $a2, $zero, $zero
/* 1FE24 8001F224 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FE28 8001F228 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FE2C 8001F22C 03E00008 */  jr         $ra
/* 1FE30 8001F230 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001F234
/* 1FE34 8001F234 3C028003 */  lui        $v0, %hi(D_80031090)
/* 1FE38 8001F238 8C421090 */  lw         $v0, %lo(D_80031090)($v0)
/* 1FE3C 8001F23C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FE40 8001F240 1440000F */  bnez       $v0, .L8001F280
/* 1FE44 8001F244 AFBF0018 */   sw        $ra, 0x18($sp)
/* 1FE48 8001F248 24020001 */  addiu      $v0, $zero, 0x1
/* 1FE4C 8001F24C 3C018003 */  lui        $at, %hi(D_80031090)
/* 1FE50 8001F250 AC221090 */  sw         $v0, %lo(D_80031090)($at)
/* 1FE54 8001F254 3C048004 */  lui        $a0, %hi(D_8003A810)
/* 1FE58 8001F258 2484A810 */  addiu      $a0, $a0, %lo(D_8003A810)
/* 1FE5C 8001F25C 3C058004 */  lui        $a1, %hi(D_8003A800)
/* 1FE60 8001F260 24A5A800 */  addiu      $a1, $a1, %lo(D_8003A800)
/* 1FE64 8001F264 0C007468 */  jal        osCreateMesgQueue
/* 1FE68 8001F268 24060001 */   addiu     $a2, $zero, 0x1
/* 1FE6C 8001F26C 3C048004 */  lui        $a0, %hi(D_8003A810)
/* 1FE70 8001F270 2484A810 */  addiu      $a0, $a0, %lo(D_8003A810)
/* 1FE74 8001F274 00002821 */  addu       $a1, $zero, $zero
/* 1FE78 8001F278 0C00776C */  jal        osSendMesg
/* 1FE7C 8001F27C 00003021 */   addu      $a2, $zero, $zero
.L8001F280:
/* 1FE80 8001F280 3C048004 */  lui        $a0, %hi(D_8003A810)
/* 1FE84 8001F284 2484A810 */  addiu      $a0, $a0, %lo(D_8003A810)
/* 1FE88 8001F288 27A50010 */  addiu      $a1, $sp, 0x10
/* 1FE8C 8001F28C 0C007720 */  jal        osRecvMesg
/* 1FE90 8001F290 24060001 */   addiu     $a2, $zero, 0x1
/* 1FE94 8001F294 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1FE98 8001F298 03E00008 */  jr         $ra
/* 1FE9C 8001F29C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001F2A0
/* 1FEA0 8001F2A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FEA4 8001F2A4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1FEA8 8001F2A8 3C048004 */  lui        $a0, %hi(D_8003A810)
/* 1FEAC 8001F2AC 2484A810 */  addiu      $a0, $a0, %lo(D_8003A810)
/* 1FEB0 8001F2B0 00002821 */  addu       $a1, $zero, $zero
/* 1FEB4 8001F2B4 0C00776C */  jal        osSendMesg
/* 1FEB8 8001F2B8 00003021 */   addu      $a2, $zero, $zero
/* 1FEBC 8001F2BC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1FEC0 8001F2C0 03E00008 */  jr         $ra
/* 1FEC4 8001F2C4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1FEC8 8001F2C8 00000000 */  nop
/* 1FECC 8001F2CC 00000000 */  nop
