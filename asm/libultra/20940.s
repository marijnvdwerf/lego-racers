.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViGetCurrentFramebuffer
/* 20940 8001FD40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20944 8001FD44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20948 8001FD48 0C005734 */  jal        func_80015CD0
/* 2094C 8001FD4C AFB00010 */   sw        $s0, 0x10($sp)
/* 20950 8001FD50 3C038003 */  lui        $v1, %hi(D_80031130)
/* 20954 8001FD54 8C631130 */  lw         $v1, %lo(D_80031130)($v1)
/* 20958 8001FD58 8C700004 */  lw         $s0, 0x4($v1)
/* 2095C 8001FD5C 0C005750 */  jal        func_80015D40
/* 20960 8001FD60 00402021 */   addu      $a0, $v0, $zero
/* 20964 8001FD64 02001021 */  addu       $v0, $s0, $zero
/* 20968 8001FD68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2096C 8001FD6C 8FB00010 */  lw         $s0, 0x10($sp)
/* 20970 8001FD70 03E00008 */  jr         $ra
/* 20974 8001FD74 27BD0018 */   addiu     $sp, $sp, 0x18
/* 20978 8001FD78 00000000 */  nop
/* 2097C 8001FD7C 00000000 */  nop
