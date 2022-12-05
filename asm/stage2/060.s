.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel racefunc_80045990
/* 3CCC0 80045990 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3CCC4 80045994 AFB10014 */  sw         $s1, 0x14($sp)
/* 3CCC8 80045998 00808821 */  addu       $s1, $a0, $zero
/* 3CCCC 8004599C 3C028008 */  lui        $v0, %hi(D_80082824)
/* 3CCD0 800459A0 8C442824 */  lw         $a0, %lo(D_80082824)($v0)
/* 3CCD4 800459A4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3CCD8 800459A8 0C01FB65 */  jal        func_8007ED94
/* 3CCDC 800459AC AFB00010 */   sw        $s0, 0x10($sp)
/* 3CCE0 800459B0 0C01FB4C */  jal        func_8007ED30
/* 3CCE4 800459B4 24043880 */   addiu     $a0, $zero, 0x3880
/* 3CCE8 800459B8 0C040224 */  jal        func_race_80100890
/* 3CCEC 800459BC 00402021 */   addu      $a0, $v0, $zero
/* 3CCF0 800459C0 3C108009 */  lui        $s0, %hi(D_80089850)
/* 3CCF4 800459C4 0C01FB72 */  jal        func_8007EDC8
/* 3CCF8 800459C8 AE029850 */   sw        $v0, %lo(D_80089850)($s0)
/* 3CCFC 800459CC 8E029850 */  lw         $v0, %lo(D_80089850)($s0)
/* 3CD00 800459D0 14400006 */  bnez       $v0, .L800459EC
/* 3CD04 800459D4 3C048004 */   lui       $a0, %hi(D_8003C1E0)
/* 3CD08 800459D8 2484C1E0 */  addiu      $a0, $a0, %lo(D_8003C1E0)
/* 3CD0C 800459DC 00002821 */  addu       $a1, $zero, $zero
/* 3CD10 800459E0 00A03021 */  addu       $a2, $a1, $zero
/* 3CD14 800459E4 0C011ACF */  jal        func_80046B3C
/* 3CD18 800459E8 00A03821 */   addu      $a3, $a1, $zero
.L800459EC:
/* 3CD1C 800459EC 8E049850 */  lw         $a0, %lo(D_80089850)($s0)
/* 3CD20 800459F0 0C04024E */  jal        func_race_80100938
/* 3CD24 800459F4 02202821 */   addu      $a1, $s1, $zero
/* 3CD28 800459F8 8E049850 */  lw         $a0, %lo(D_80089850)($s0)
/* 3CD2C 800459FC 0C040289 */  jal        func_race_80100A24
/* 3CD30 80045A00 00000000 */   nop
/* 3CD34 80045A04 8E049850 */  lw         $a0, %lo(D_80089850)($s0)
/* 3CD38 80045A08 0C0402A1 */  jal        func_race_80100A84
/* 3CD3C 80045A0C 00000000 */   nop
/* 3CD40 80045A10 8E049850 */  lw         $a0, %lo(D_80089850)($s0)
/* 3CD44 80045A14 10800003 */  beqz       $a0, .L80045A24
/* 3CD48 80045A18 00000000 */   nop
/* 3CD4C 80045A1C 0C040234 */  jal        func_race_801008D0
/* 3CD50 80045A20 24050003 */   addiu     $a1, $zero, 0x3
.L80045A24:
/* 3CD54 80045A24 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3CD58 80045A28 8FB10014 */  lw         $s1, 0x14($sp)
/* 3CD5C 80045A2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3CD60 80045A30 03E00008 */  jr         $ra
/* 3CD64 80045A34 27BD0020 */   addiu     $sp, $sp, 0x20
