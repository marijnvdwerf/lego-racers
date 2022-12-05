.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007B670
/* 729A0 8007B670 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 729A4 8007B674 AFB00010 */  sw         $s0, 0x10($sp)
/* 729A8 8007B678 AFBF0014 */  sw         $ra, 0x14($sp)
/* 729AC 8007B67C 0C019294 */  jal        func_80064A50
/* 729B0 8007B680 00808021 */   addu      $s0, $a0, $zero
/* 729B4 8007B684 02001021 */  addu       $v0, $s0, $zero
/* 729B8 8007B688 3C038004 */  lui        $v1, %hi(D_8003FE28)
/* 729BC 8007B68C 2463FE28 */  addiu      $v1, $v1, %lo(D_8003FE28)
/* 729C0 8007B690 AC43002C */  sw         $v1, 0x2C($v0)
/* 729C4 8007B694 AC400030 */  sw         $zero, 0x30($v0)
/* 729C8 8007B698 8FBF0014 */  lw         $ra, 0x14($sp)
/* 729CC 8007B69C 8FB00010 */  lw         $s0, 0x10($sp)
/* 729D0 8007B6A0 03E00008 */  jr         $ra
/* 729D4 8007B6A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007B6A8
/* 729D8 8007B6A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 729DC 8007B6AC AFB00010 */  sw         $s0, 0x10($sp)
/* 729E0 8007B6B0 00808021 */  addu       $s0, $a0, $zero
/* 729E4 8007B6B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 729E8 8007B6B8 00A08821 */  addu       $s1, $a1, $zero
/* 729EC 8007B6BC 3C028004 */  lui        $v0, %hi(D_8003FE28)
/* 729F0 8007B6C0 2442FE28 */  addiu      $v0, $v0, %lo(D_8003FE28)
/* 729F4 8007B6C4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 729F8 8007B6C8 0C01EDE8 */  jal        func_8007B7A0
/* 729FC 8007B6CC AE02002C */   sw        $v0, 0x2C($s0)
/* 72A00 8007B6D0 02002021 */  addu       $a0, $s0, $zero
/* 72A04 8007B6D4 0C012D2F */  jal        func_8004B4BC
/* 72A08 8007B6D8 02202821 */   addu      $a1, $s1, $zero
/* 72A0C 8007B6DC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 72A10 8007B6E0 8FB10014 */  lw         $s1, 0x14($sp)
/* 72A14 8007B6E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 72A18 8007B6E8 03E00008 */  jr         $ra
/* 72A1C 8007B6EC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007B6F0
/* 72A20 8007B6F0 3C028008 */  lui        $v0, %hi(D_80087340)
/* 72A24 8007B6F4 03E00008 */  jr         $ra
/* 72A28 8007B6F8 AC447340 */   sw        $a0, %lo(D_80087340)($v0)

glabel func_8007B6FC
/* 72A2C 8007B6FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 72A30 8007B700 AFB00010 */  sw         $s0, 0x10($sp)
/* 72A34 8007B704 00808021 */  addu       $s0, $a0, $zero
/* 72A38 8007B708 24020001 */  addiu      $v0, $zero, 0x1
/* 72A3C 8007B70C 3C038008 */  lui        $v1, %hi(D_80087340)
/* 72A40 8007B710 AFBF0018 */  sw         $ra, 0x18($sp)
/* 72A44 8007B714 AFB10014 */  sw         $s1, 0x14($sp)
/* 72A48 8007B718 A6020022 */  sh         $v0, 0x22($s0)
/* 72A4C 8007B71C 94C20026 */  lhu        $v0, 0x26($a2)
/* 72A50 8007B720 8C647340 */  lw         $a0, %lo(D_80087340)($v1)
/* 72A54 8007B724 A6020026 */  sh         $v0, 0x26($s0)
/* 72A58 8007B728 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 72A5C 8007B72C 00021040 */  sll        $v0, $v0, 1
/* 72A60 8007B730 A6020020 */  sh         $v0, 0x20($s0)
/* 72A64 8007B734 94C20028 */  lhu        $v0, 0x28($a2)
/* 72A68 8007B738 96050020 */  lhu        $a1, 0x20($s0)
/* 72A6C 8007B73C A6020028 */  sh         $v0, 0x28($s0)
/* 72A70 8007B740 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 72A74 8007B744 00A20018 */  mult       $a1, $v0
/* 72A78 8007B748 AE060030 */  sw         $a2, 0x30($s0)
/* 72A7C 8007B74C 24020010 */  addiu      $v0, $zero, 0x10
/* 72A80 8007B750 00008812 */  mflo       $s1
/* 72A84 8007B754 0C01FB65 */  jal        func_8007ED94
/* 72A88 8007B758 A6020016 */   sh        $v0, 0x16($s0)
/* 72A8C 8007B75C 0C00943C */  jal        func_800250F0
/* 72A90 8007B760 02202021 */   addu      $a0, $s1, $zero
/* 72A94 8007B764 0C01FB72 */  jal        func_8007EDC8
/* 72A98 8007B768 AE020018 */   sw        $v0, 0x18($s0)
/* 72A9C 8007B76C 8E020018 */  lw         $v0, 0x18($s0)
/* 72AA0 8007B770 14400006 */  bnez       $v0, .L8007B78C
/* 72AA4 8007B774 3C048004 */   lui       $a0, %hi(D_8003FE20)
/* 72AA8 8007B778 2484FE20 */  addiu      $a0, $a0, %lo(D_8003FE20)
/* 72AAC 8007B77C 00002821 */  addu       $a1, $zero, $zero
/* 72AB0 8007B780 00A03021 */  addu       $a2, $a1, $zero
/* 72AB4 8007B784 0C011ACF */  jal        func_80046B3C
/* 72AB8 8007B788 00A03821 */   addu      $a3, $a1, $zero
.L8007B78C:
/* 72ABC 8007B78C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 72AC0 8007B790 8FB10014 */  lw         $s1, 0x14($sp)
/* 72AC4 8007B794 8FB00010 */  lw         $s0, 0x10($sp)
/* 72AC8 8007B798 03E00008 */  jr         $ra
/* 72ACC 8007B79C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007B7A0
/* 72AD0 8007B7A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72AD4 8007B7A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 72AD8 8007B7A8 00808021 */  addu       $s0, $a0, $zero
/* 72ADC 8007B7AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 72AE0 8007B7B0 8E040018 */  lw         $a0, 0x18($s0)
/* 72AE4 8007B7B4 50800005 */  beql       $a0, $zero, .L8007B7CC
/* 72AE8 8007B7B8 A6000022 */   sh        $zero, 0x22($s0)
/* 72AEC 8007B7BC 0C009444 */  jal        func_80025110
/* 72AF0 8007B7C0 00000000 */   nop
/* 72AF4 8007B7C4 AE000018 */  sw         $zero, 0x18($s0)
/* 72AF8 8007B7C8 A6000022 */  sh         $zero, 0x22($s0)
.L8007B7CC:
/* 72AFC 8007B7CC A6000026 */  sh         $zero, 0x26($s0)
/* 72B00 8007B7D0 A6000028 */  sh         $zero, 0x28($s0)
/* 72B04 8007B7D4 A6000020 */  sh         $zero, 0x20($s0)
/* 72B08 8007B7D8 AE000030 */  sw         $zero, 0x30($s0)
/* 72B0C 8007B7DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 72B10 8007B7E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 72B14 8007B7E4 03E00008 */  jr         $ra
/* 72B18 8007B7E8 27BD0018 */   addiu     $sp, $sp, 0x18
