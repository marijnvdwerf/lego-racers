.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel menufunc_80046E20
/* 3E150 80046E20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E154 80046E24 AFB10014 */  sw         $s1, 0x14($sp)
/* 3E158 80046E28 00808821 */  addu       $s1, $a0, $zero
/* 3E15C 80046E2C 3C028008 */  lui        $v0, %hi(D_80082824)
/* 3E160 80046E30 8C442824 */  lw         $a0, %lo(D_80082824)($v0)
/* 3E164 80046E34 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3E168 80046E38 0C01FB65 */  jal        func_8007ED94
/* 3E16C 80046E3C AFB00010 */   sw        $s0, 0x10($sp)
/* 3E170 80046E40 0C01FB4C */  jal        func_8007ED30
/* 3E174 80046E44 24044850 */   addiu     $a0, $zero, 0x4850
/* 3E178 80046E48 0C03BD64 */  jal        func_menu_800EF590
/* 3E17C 80046E4C 00402021 */   addu      $a0, $v0, $zero
/* 3E180 80046E50 3C10800A */  lui        $s0, %hi(D_8009C060)
/* 3E184 80046E54 0C01FB72 */  jal        func_8007EDC8
/* 3E188 80046E58 AE02C060 */   sw        $v0, %lo(D_8009C060)($s0)
/* 3E18C 80046E5C 8E02C060 */  lw         $v0, %lo(D_8009C060)($s0)
/* 3E190 80046E60 14400006 */  bnez       $v0, .L80046E7C
/* 3E194 80046E64 3C048004 */   lui       $a0, %hi(D_8003C3B0)
/* 3E198 80046E68 2484C3B0 */  addiu      $a0, $a0, %lo(D_8003C3B0)
/* 3E19C 80046E6C 00002821 */  addu       $a1, $zero, $zero
/* 3E1A0 80046E70 00A03021 */  addu       $a2, $a1, $zero
/* 3E1A4 80046E74 0C011ACF */  jal        func_80046B3C
/* 3E1A8 80046E78 00A03821 */   addu      $a3, $a1, $zero
.L80046E7C:
/* 3E1AC 80046E7C 8E04C060 */  lw         $a0, %lo(D_8009C060)($s0)
/* 3E1B0 80046E80 0C03BE29 */  jal        func_menu_800EF8A4
/* 3E1B4 80046E84 02202821 */   addu      $a1, $s1, $zero
/* 3E1B8 80046E88 8E04C060 */  lw         $a0, %lo(D_8009C060)($s0)
/* 3E1BC 80046E8C 0C03C21B */  jal        func_menu_800F086C
/* 3E1C0 80046E90 00000000 */   nop
/* 3E1C4 80046E94 8E04C060 */  lw         $a0, %lo(D_8009C060)($s0)
/* 3E1C8 80046E98 0C03BE93 */  jal        func_menu_800EFA4C
/* 3E1CC 80046E9C 00000000 */   nop
/* 3E1D0 80046EA0 8E03C060 */  lw         $v1, %lo(D_8009C060)($s0)
/* 3E1D4 80046EA4 10600006 */  beqz       $v1, .L80046EC0
/* 3E1D8 80046EA8 24050003 */   addiu     $a1, $zero, 0x3
/* 3E1DC 80046EAC 8C620000 */  lw         $v0, 0x0($v1)
/* 3E1E0 80046EB0 84440068 */  lh         $a0, 0x68($v0)
/* 3E1E4 80046EB4 8C42006C */  lw         $v0, 0x6C($v0)
/* 3E1E8 80046EB8 0040F809 */  jalr       $v0
/* 3E1EC 80046EBC 00642021 */   addu      $a0, $v1, $a0
.L80046EC0:
/* 3E1F0 80046EC0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3E1F4 80046EC4 8FB10014 */  lw         $s1, 0x14($sp)
/* 3E1F8 80046EC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 3E1FC 80046ECC 03E00008 */  jr         $ra
/* 3E200 80046ED0 27BD0020 */   addiu     $sp, $sp, 0x20
