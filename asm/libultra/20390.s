.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001F790
/* 20390 8001F790 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20394 8001F794 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20398 8001F798 0C005734 */  jal        func_80015CD0
/* 2039C 8001F79C AFB00010 */   sw        $s0, 0x10($sp)
/* 203A0 8001F7A0 3C038003 */  lui        $v1, %hi(D_800310B0)
/* 203A4 8001F7A4 8C6310B0 */  lw         $v1, %lo(D_800310B0)($v1)
/* 203A8 8001F7A8 3C048003 */  lui        $a0, %hi(D_800310A8)
/* 203AC 8001F7AC 248410A8 */  addiu      $a0, $a0, %lo(D_800310A8)
/* 203B0 8001F7B0 24050002 */  addiu      $a1, $zero, 0x2
/* 203B4 8001F7B4 00408021 */  addu       $s0, $v0, $zero
/* 203B8 8001F7B8 0C007663 */  jal        func_8001D98C
/* 203BC 8001F7BC A4650010 */   sh        $a1, 0x10($v1)
/* 203C0 8001F7C0 0C005750 */  jal        func_80015D40
/* 203C4 8001F7C4 02002021 */   addu      $a0, $s0, $zero
/* 203C8 8001F7C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 203CC 8001F7CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 203D0 8001F7D0 03E00008 */  jr         $ra
/* 203D4 8001F7D4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 203D8 8001F7D8 00000000 */  nop
/* 203DC 8001F7DC 00000000 */  nop
