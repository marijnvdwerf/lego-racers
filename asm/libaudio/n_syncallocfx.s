.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel n_alSynAllocFX
/* 16640 80015A40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 16644 80015A44 AFB10014 */  sw         $s1, 0x14($sp)
/* 16648 80015A48 3C118003 */  lui        $s1, %hi(n_syn)
/* 1664C 80015A4C AFB00010 */  sw         $s0, 0x10($sp)
/* 16650 80015A50 00048400 */  sll        $s0, $a0, 16
/* 16654 80015A54 8E220C84 */  lw         $v0, %lo(n_syn)($s1)
/* 16658 80015A58 00108383 */  sra        $s0, $s0, 14
/* 1665C 80015A5C AFBF0018 */  sw         $ra, 0x18($sp)
/* 16660 80015A60 8C420034 */  lw         $v0, 0x34($v0)
/* 16664 80015A64 26040024 */  addiu      $a0, $s0, 0x24
/* 16668 80015A68 0C004B38 */  jal        n_alFxNew
/* 1666C 80015A6C 00442021 */   addu      $a0, $v0, $a0
/* 16670 80015A70 8E220C84 */  lw         $v0, %lo(n_syn)($s1)
/* 16674 80015A74 8FBF0018 */  lw         $ra, 0x18($sp)
/* 16678 80015A78 8C420034 */  lw         $v0, 0x34($v0)
/* 1667C 80015A7C 8FB10014 */  lw         $s1, 0x14($sp)
/* 16680 80015A80 00501021 */  addu       $v0, $v0, $s0
/* 16684 80015A84 8C420024 */  lw         $v0, 0x24($v0)
/* 16688 80015A88 8FB00010 */  lw         $s0, 0x10($sp)
/* 1668C 80015A8C 03E00008 */  jr         $ra
/* 16690 80015A90 27BD0020 */   addiu     $sp, $sp, 0x20
