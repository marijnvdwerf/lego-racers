.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001F880
/* 20480 8001F880 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20484 8001F884 8FA20028 */  lw         $v0, 0x28($sp)
/* 20488 8001F888 8FA3002C */  lw         $v1, 0x2C($sp)
/* 2048C 8001F88C AFB00010 */  sw         $s0, 0x10($sp)
/* 20490 8001F890 00808021 */  addu       $s0, $a0, $zero
/* 20494 8001F894 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20498 8001F898 AE000000 */  sw         $zero, 0x0($s0)
/* 2049C 8001F89C AE000004 */  sw         $zero, 0x4($s0)
/* 204A0 8001F8A0 AE060010 */  sw         $a2, 0x10($s0)
/* 204A4 8001F8A4 AE070014 */  sw         $a3, 0x14($s0)
/* 204A8 8001F8A8 AE020008 */  sw         $v0, 0x8($s0)
/* 204AC 8001F8AC AE03000C */  sw         $v1, 0xC($s0)
/* 204B0 8001F8B0 8FA50030 */  lw         $a1, 0x30($sp)
/* 204B4 8001F8B4 8FA80034 */  lw         $t0, 0x34($sp)
/* 204B8 8001F8B8 14C00006 */  bnez       $a2, .L8001F8D4
/* 204BC 8001F8BC 02002021 */   addu      $a0, $s0, $zero
/* 204C0 8001F8C0 54E00005 */  bnel       $a3, $zero, .L8001F8D8
/* 204C4 8001F8C4 AE050018 */   sw        $a1, 0x18($s0)
/* 204C8 8001F8C8 AE020010 */  sw         $v0, 0x10($s0)
/* 204CC 8001F8CC AE030014 */  sw         $v1, 0x14($s0)
/* 204D0 8001F8D0 02002021 */  addu       $a0, $s0, $zero
.L8001F8D4:
/* 204D4 8001F8D4 AE050018 */  sw         $a1, 0x18($s0)
.L8001F8D8:
/* 204D8 8001F8D8 0C007EC4 */  jal        func_8001FB10
/* 204DC 8001F8DC AE08001C */   sw        $t0, 0x1C($s0)
/* 204E0 8001F8E0 3C048003 */  lui        $a0, %hi(D_800310C0)
/* 204E4 8001F8E4 8C8410C0 */  lw         $a0, %lo(D_800310C0)($a0)
/* 204E8 8001F8E8 8C840000 */  lw         $a0, 0x0($a0)
/* 204EC 8001F8EC 54900005 */  bnel       $a0, $s0, .L8001F904
/* 204F0 8001F8F0 00001021 */   addu      $v0, $zero, $zero
/* 204F4 8001F8F4 00402021 */  addu       $a0, $v0, $zero
/* 204F8 8001F8F8 0C007EAC */  jal        func_8001FAB0
/* 204FC 8001F8FC 00602821 */   addu      $a1, $v1, $zero
/* 20500 8001F900 00001021 */  addu       $v0, $zero, $zero
.L8001F904:
/* 20504 8001F904 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20508 8001F908 8FB00010 */  lw         $s0, 0x10($sp)
/* 2050C 8001F90C 03E00008 */  jr         $ra
/* 20510 8001F910 27BD0018 */   addiu     $sp, $sp, 0x18
/* 20514 8001F914 00000000 */  nop
/* 20518 8001F918 00000000 */  nop
/* 2051C 8001F91C 00000000 */  nop
