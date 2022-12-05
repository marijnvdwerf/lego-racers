.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSpTaskYielded
/* 1F200 8001E600 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F204 8001E604 AFB00010 */  sw         $s0, 0x10($sp)
/* 1F208 8001E608 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F20C 8001E60C 0C007994 */  jal        func_8001E650
/* 1F210 8001E610 00808021 */   addu      $s0, $a0, $zero
/* 1F214 8001E614 00022202 */  srl        $a0, $v0, 8
/* 1F218 8001E618 30420080 */  andi       $v0, $v0, 0x80
/* 1F21C 8001E61C 10400006 */  beqz       $v0, .L8001E638
/* 1F220 8001E620 30840001 */   andi      $a0, $a0, 0x1
/* 1F224 8001E624 8E020004 */  lw         $v0, 0x4($s0)
/* 1F228 8001E628 2403FFFD */  addiu      $v1, $zero, -0x3
/* 1F22C 8001E62C 00441025 */  or         $v0, $v0, $a0
/* 1F230 8001E630 00431024 */  and        $v0, $v0, $v1
/* 1F234 8001E634 AE020004 */  sw         $v0, 0x4($s0)
.L8001E638:
/* 1F238 8001E638 00801021 */  addu       $v0, $a0, $zero
/* 1F23C 8001E63C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F240 8001E640 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F244 8001E644 03E00008 */  jr         $ra
/* 1F248 8001E648 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1F24C 8001E64C 00000000 */  nop
