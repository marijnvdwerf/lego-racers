.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004C2B0
/* 435E0 8004C2B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 435E4 8004C2B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 435E8 8004C2B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 435EC 8004C2BC 0C012D1C */  jal        func_8004B470
/* 435F0 8004C2C0 00808021 */   addu      $s0, $a0, $zero
/* 435F4 8004C2C4 02001021 */  addu       $v0, $s0, $zero
/* 435F8 8004C2C8 3C038004 */  lui        $v1, %hi(D_8003C810)
/* 435FC 8004C2CC 2463C810 */  addiu      $v1, $v1, %lo(D_8003C810)
/* 43600 8004C2D0 AC43002C */  sw         $v1, 0x2C($v0)
/* 43604 8004C2D4 AC400030 */  sw         $zero, 0x30($v0)
/* 43608 8004C2D8 AC400034 */  sw         $zero, 0x34($v0)
/* 4360C 8004C2DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 43610 8004C2E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 43614 8004C2E4 03E00008 */  jr         $ra
/* 43618 8004C2E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004C2EC
/* 4361C 8004C2EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 43620 8004C2F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 43624 8004C2F4 00808021 */  addu       $s0, $a0, $zero
/* 43628 8004C2F8 AFB10014 */  sw         $s1, 0x14($sp)
/* 4362C 8004C2FC 00A08821 */  addu       $s1, $a1, $zero
/* 43630 8004C300 3C028004 */  lui        $v0, %hi(D_8003C810)
/* 43634 8004C304 2442C810 */  addiu      $v0, $v0, %lo(D_8003C810)
/* 43638 8004C308 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4363C 8004C30C 0C0130D3 */  jal        func_8004C34C
/* 43640 8004C310 AE02002C */   sw        $v0, 0x2C($s0)
/* 43644 8004C314 02002021 */  addu       $a0, $s0, $zero
/* 43648 8004C318 0C012D2F */  jal        func_8004B4BC
/* 4364C 8004C31C 02202821 */   addu      $a1, $s1, $zero
/* 43650 8004C320 8FBF0018 */  lw         $ra, 0x18($sp)
/* 43654 8004C324 8FB10014 */  lw         $s1, 0x14($sp)
/* 43658 8004C328 8FB00010 */  lw         $s0, 0x10($sp)
/* 4365C 8004C32C 03E00008 */  jr         $ra
/* 43660 8004C330 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004C334
/* 43664 8004C334 8FA20010 */  lw         $v0, 0x10($sp)
/* 43668 8004C338 AC850030 */  sw         $a1, 0x30($a0)
/* 4366C 8004C33C A4860026 */  sh         $a2, 0x26($a0)
/* 43670 8004C340 A4870028 */  sh         $a3, 0x28($a0)
/* 43674 8004C344 03E00008 */  jr         $ra
/* 43678 8004C348 A4820016 */   sh        $v0, 0x16($a0)

glabel func_8004C34C
/* 4367C 8004C34C AC800030 */  sw         $zero, 0x30($a0)
/* 43680 8004C350 03E00008 */  jr         $ra
/* 43684 8004C354 AC800034 */   sw        $zero, 0x34($a0)

glabel func_8004C358
/* 43688 8004C358 8C820034 */  lw         $v0, 0x34($a0)
/* 4368C 8004C35C 03E00008 */  jr         $ra
/* 43690 8004C360 30420002 */   andi      $v0, $v0, 0x2

glabel func_8004C364
/* 43694 8004C364 8C820034 */  lw         $v0, 0x34($a0)
/* 43698 8004C368 03E00008 */  jr         $ra
/* 4369C 8004C36C 30420001 */   andi      $v0, $v0, 0x1

glabel func_8004C370
/* 436A0 8004C370 8C820030 */  lw         $v0, 0x30($a0)
/* 436A4 8004C374 03E00008 */  jr         $ra
/* 436A8 8004C378 00000000 */   nop
