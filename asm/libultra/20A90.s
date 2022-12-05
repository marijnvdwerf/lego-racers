.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViGetNextFramebuffer
/* 20A90 8001FE90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20A94 8001FE94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20A98 8001FE98 0C005734 */  jal        func_80015CD0
/* 20A9C 8001FE9C AFB00010 */   sw        $s0, 0x10($sp)
/* 20AA0 8001FEA0 3C038003 */  lui        $v1, %hi(D_80031134)
/* 20AA4 8001FEA4 8C631134 */  lw         $v1, %lo(D_80031134)($v1)
/* 20AA8 8001FEA8 8C700004 */  lw         $s0, 0x4($v1)
/* 20AAC 8001FEAC 0C005750 */  jal        func_80015D40
/* 20AB0 8001FEB0 00402021 */   addu      $a0, $v0, $zero
/* 20AB4 8001FEB4 02001021 */  addu       $v0, $s0, $zero
/* 20AB8 8001FEB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20ABC 8001FEBC 8FB00010 */  lw         $s0, 0x10($sp)
/* 20AC0 8001FEC0 03E00008 */  jr         $ra
/* 20AC4 8001FEC4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 20AC8 8001FEC8 00000000 */  nop
/* 20ACC 8001FECC 00000000 */  nop
