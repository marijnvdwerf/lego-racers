.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8006E070
/* 653A0 8006E070 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 653A4 8006E074 AFB00010 */  sw         $s0, 0x10($sp)
/* 653A8 8006E078 00808021 */  addu       $s0, $a0, $zero
/* 653AC 8006E07C AFBF0014 */  sw         $ra, 0x14($sp)
/* 653B0 8006E080 8E020004 */  lw         $v0, 0x4($s0)
/* 653B4 8006E084 30420001 */  andi       $v0, $v0, 0x1
/* 653B8 8006E088 10400003 */  beqz       $v0, .L8006E098
/* 653BC 8006E08C 00000000 */   nop
/* 653C0 8006E090 0C01B82D */  jal        func_8006E0B4
/* 653C4 8006E094 00000000 */   nop
.L8006E098:
/* 653C8 8006E098 8E020004 */  lw         $v0, 0x4($s0)
/* 653CC 8006E09C 34420001 */  ori        $v0, $v0, 0x1
/* 653D0 8006E0A0 AE020004 */  sw         $v0, 0x4($s0)
/* 653D4 8006E0A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 653D8 8006E0A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 653DC 8006E0AC 03E00008 */  jr         $ra
/* 653E0 8006E0B0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006E0B4
/* 653E4 8006E0B4 03E00008 */  jr         $ra
/* 653E8 8006E0B8 00000000 */   nop
