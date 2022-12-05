.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80064A50
/* 5BD80 80064A50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BD84 80064A54 AFB00010 */  sw         $s0, 0x10($sp)
/* 5BD88 80064A58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5BD8C 80064A5C 0C012D1C */  jal        func_8004B470
/* 5BD90 80064A60 00808021 */   addu      $s0, $a0, $zero
/* 5BD94 80064A64 02001021 */  addu       $v0, $s0, $zero
/* 5BD98 80064A68 3C038004 */  lui        $v1, %hi(D_8003E2E0)
/* 5BD9C 80064A6C 2463E2E0 */  addiu      $v1, $v1, %lo(D_8003E2E0)
/* 5BDA0 80064A70 AC43002C */  sw         $v1, 0x2C($v0)
/* 5BDA4 80064A74 AC400030 */  sw         $zero, 0x30($v0)
/* 5BDA8 80064A78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5BDAC 80064A7C 8FB00010 */  lw         $s0, 0x10($sp)
/* 5BDB0 80064A80 03E00008 */  jr         $ra
/* 5BDB4 80064A84 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80064A88
/* 5BDB8 80064A88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BDBC 80064A8C AFBF0010 */  sw         $ra, 0x10($sp)
/* 5BDC0 80064A90 0C012D2F */  jal        func_8004B4BC
/* 5BDC4 80064A94 00000000 */   nop
/* 5BDC8 80064A98 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5BDCC 80064A9C 03E00008 */  jr         $ra
/* 5BDD0 80064AA0 27BD0018 */   addiu     $sp, $sp, 0x18
