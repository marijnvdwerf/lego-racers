.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80006290
/* 6E90 80006290 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6E94 80006294 AFBF0010 */  sw         $ra, 0x10($sp)
/* 6E98 80006298 0C007DF8 */  jal        osGetTime
/* 6E9C 8000629C 00000000 */   nop
/* 6EA0 800062A0 3C028003 */  lui        $v0, %hi(D_8002FAB0)
/* 6EA4 800062A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6EA8 800062A8 306303FF */  andi       $v1, $v1, 0x3FF
/* 6EAC 800062AC AC43FAB0 */  sw         $v1, %lo(D_8002FAB0)($v0)
/* 6EB0 800062B0 03E00008 */  jr         $ra
/* 6EB4 800062B4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 6EB8 800062B8 00000000 */  nop
