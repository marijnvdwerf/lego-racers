.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel n_alAuxBusPull
/* 13840 80012C40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13844 80012C44 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13848 80012C48 00809821 */  addu       $s3, $a0, $zero
/* 1384C 80012C4C 00A03021 */  addu       $a2, $a1, $zero
/* 13850 80012C50 00C01821 */  addu       $v1, $a2, $zero
/* 13854 80012C54 3C028003 */  lui        $v0, %hi(n_syn)
/* 13858 80012C58 8C420C84 */  lw         $v0, %lo(n_syn)($v0)
/* 1385C 80012C5C 24C60008 */  addiu      $a2, $a2, 0x8
/* 13860 80012C60 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13864 80012C64 AFB20018 */  sw         $s2, 0x18($sp)
/* 13868 80012C68 AFB10014 */  sw         $s1, 0x14($sp)
/* 1386C 80012C6C AFB00010 */  sw         $s0, 0x10($sp)
/* 13870 80012C70 8C520034 */  lw         $s2, 0x34($v0)
/* 13874 80012C74 3C020200 */  lui        $v0, (0x20007C0 >> 16)
/* 13878 80012C78 8E44001C */  lw         $a0, 0x1C($s2)
/* 1387C 80012C7C 344207C0 */  ori        $v0, $v0, (0x20007C0 & 0xFFFF)
/* 13880 80012C80 AC620000 */  sw         $v0, 0x0($v1)
/* 13884 80012C84 240202E0 */  addiu      $v0, $zero, 0x2E0
/* 13888 80012C88 AC620004 */  sw         $v0, 0x4($v1)
/* 1388C 80012C8C 8E420014 */  lw         $v0, 0x14($s2)
/* 13890 80012C90 1840000B */  blez       $v0, .L80012CC0
/* 13894 80012C94 00008021 */   addu      $s0, $zero, $zero
/* 13898 80012C98 00808821 */  addu       $s1, $a0, $zero
.L80012C9C:
/* 1389C 80012C9C 8E240000 */  lw         $a0, 0x0($s1)
/* 138A0 80012CA0 26310004 */  addiu      $s1, $s1, 0x4
/* 138A4 80012CA4 26100001 */  addiu      $s0, $s0, 0x1
/* 138A8 80012CA8 0C004C80 */  jal        n_alEnvmixerPull
/* 138AC 80012CAC 02602821 */   addu      $a1, $s3, $zero
/* 138B0 80012CB0 8E430014 */  lw         $v1, 0x14($s2)
/* 138B4 80012CB4 0203182A */  slt        $v1, $s0, $v1
/* 138B8 80012CB8 1460FFF8 */  bnez       $v1, .L80012C9C
/* 138BC 80012CBC 00403021 */   addu      $a2, $v0, $zero
.L80012CC0:
/* 138C0 80012CC0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 138C4 80012CC4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 138C8 80012CC8 8FB20018 */  lw         $s2, 0x18($sp)
/* 138CC 80012CCC 8FB10014 */  lw         $s1, 0x14($sp)
/* 138D0 80012CD0 8FB00010 */  lw         $s0, 0x10($sp)
/* 138D4 80012CD4 00C01021 */  addu       $v0, $a2, $zero
/* 138D8 80012CD8 03E00008 */  jr         $ra
/* 138DC 80012CDC 27BD0028 */   addiu     $sp, $sp, 0x28
