.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViSwapBuffer
/* 21040 80020440 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21044 80020444 AFB00010 */  sw         $s0, 0x10($sp)
/* 21048 80020448 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2104C 8002044C 0C005734 */  jal        func_80015CD0
/* 21050 80020450 00808021 */   addu      $s0, $a0, $zero
/* 21054 80020454 3C048003 */  lui        $a0, %hi(D_80031134)
/* 21058 80020458 8C841134 */  lw         $a0, %lo(D_80031134)($a0)
/* 2105C 8002045C 94830000 */  lhu        $v1, 0x0($a0)
/* 21060 80020460 AC900004 */  sw         $s0, 0x4($a0)
/* 21064 80020464 34630010 */  ori        $v1, $v1, 0x10
/* 21068 80020468 A4830000 */  sh         $v1, 0x0($a0)
/* 2106C 8002046C 0C005750 */  jal        func_80015D40
/* 21070 80020470 00402021 */   addu      $a0, $v0, $zero
/* 21074 80020474 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21078 80020478 8FB00010 */  lw         $s0, 0x10($sp)
/* 2107C 8002047C 03E00008 */  jr         $ra
/* 21080 80020480 27BD0018 */   addiu     $sp, $sp, 0x18
/* 21084 80020484 00000000 */  nop
/* 21088 80020488 00000000 */  nop
/* 2108C 8002048C 00000000 */  nop
