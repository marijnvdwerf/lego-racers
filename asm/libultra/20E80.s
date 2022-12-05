.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViSetMode
/* 20E80 80020280 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20E84 80020284 AFB00010 */  sw         $s0, 0x10($sp)
/* 20E88 80020288 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20E8C 8002028C 0C005734 */  jal        func_80015CD0
/* 20E90 80020290 00808021 */   addu      $s0, $a0, $zero
/* 20E94 80020294 3C048003 */  lui        $a0, %hi(D_80031134)
/* 20E98 80020298 8C841134 */  lw         $a0, %lo(D_80031134)($a0)
/* 20E9C 8002029C AC900008 */  sw         $s0, 0x8($a0)
/* 20EA0 800202A0 8C850008 */  lw         $a1, 0x8($a0)
/* 20EA4 800202A4 24030001 */  addiu      $v1, $zero, 0x1
/* 20EA8 800202A8 A4830000 */  sh         $v1, 0x0($a0)
/* 20EAC 800202AC 8CA30004 */  lw         $v1, 0x4($a1)
/* 20EB0 800202B0 AC83000C */  sw         $v1, 0xC($a0)
/* 20EB4 800202B4 0C005750 */  jal        func_80015D40
/* 20EB8 800202B8 00402021 */   addu      $a0, $v0, $zero
/* 20EBC 800202BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20EC0 800202C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 20EC4 800202C4 03E00008 */  jr         $ra
/* 20EC8 800202C8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 20ECC 800202CC 00000000 */  nop
