.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8011FA00
/* D5DC0 8011FA00 00801021 */  addu       $v0, $a0, $zero
/* D5DC4 8011FA04 3C03800D */  lui        $v1, %hi(D_race_800CE4D0)
/* D5DC8 8011FA08 2463E4D0 */  addiu      $v1, $v1, %lo(D_race_800CE4D0)
/* D5DCC 8011FA0C AC430000 */  sw         $v1, 0x0($v0)
/* D5DD0 8011FA10 AC400004 */  sw         $zero, 0x4($v0)
/* D5DD4 8011FA14 AC400008 */  sw         $zero, 0x8($v0)
/* D5DD8 8011FA18 AC40000C */  sw         $zero, 0xC($v0)
/* D5DDC 8011FA1C AC400010 */  sw         $zero, 0x10($v0)
/* D5DE0 8011FA20 03E00008 */  jr         $ra
/* D5DE4 8011FA24 AC400014 */   sw        $zero, 0x14($v0)

glabel func_race_8011FA28
/* D5DE8 8011FA28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D5DEC 8011FA2C 3C02800D */  lui        $v0, %hi(D_race_800CE4D0)
/* D5DF0 8011FA30 2442E4D0 */  addiu      $v0, $v0, %lo(D_race_800CE4D0)
/* D5DF4 8011FA34 30A50001 */  andi       $a1, $a1, 0x1
/* D5DF8 8011FA38 AFBF0010 */  sw         $ra, 0x10($sp)
/* D5DFC 8011FA3C 10A00003 */  beqz       $a1, .Lrace_8011FA4C
/* D5E00 8011FA40 AC820000 */   sw        $v0, 0x0($a0)
/* D5E04 8011FA44 0C01FB5C */  jal        func_8007ED70
/* D5E08 8011FA48 00000000 */   nop
.Lrace_8011FA4C:
/* D5E0C 8011FA4C 8FBF0010 */  lw         $ra, 0x10($sp)
/* D5E10 8011FA50 03E00008 */  jr         $ra
/* D5E14 8011FA54 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011FA58
/* D5E18 8011FA58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D5E1C 8011FA5C 00803021 */  addu       $a2, $a0, $zero
/* D5E20 8011FA60 AFBF0010 */  sw         $ra, 0x10($sp)
/* D5E24 8011FA64 8CC30008 */  lw         $v1, 0x8($a2)
/* D5E28 8011FA68 00A3102B */  sltu       $v0, $a1, $v1
/* D5E2C 8011FA6C 14400009 */  bnez       $v0, .Lrace_8011FA94
/* D5E30 8011FA70 00651023 */   subu      $v0, $v1, $a1
/* D5E34 8011FA74 8CC20000 */  lw         $v0, 0x0($a2)
/* D5E38 8011FA78 ACC00008 */  sw         $zero, 0x8($a2)
/* D5E3C 8011FA7C 84440030 */  lh         $a0, 0x30($v0)
/* D5E40 8011FA80 8C420034 */  lw         $v0, 0x34($v0)
/* D5E44 8011FA84 0040F809 */  jalr       $v0
/* D5E48 8011FA88 00C42021 */   addu      $a0, $a2, $a0
/* D5E4C 8011FA8C 08047EA6 */  j          .Lrace_8011FA98
/* D5E50 8011FA90 00000000 */   nop
.Lrace_8011FA94:
/* D5E54 8011FA94 ACC20008 */  sw         $v0, 0x8($a2)
.Lrace_8011FA98:
/* D5E58 8011FA98 8FBF0010 */  lw         $ra, 0x10($sp)
/* D5E5C 8011FA9C 03E00008 */  jr         $ra
/* D5E60 8011FAA0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011FAA4
/* D5E64 8011FAA4 03E00008 */  jr         $ra
/* D5E68 8011FAA8 00000000 */   nop

glabel func_race_8011FAAC
/* D5E6C 8011FAAC 03E00008 */  jr         $ra
/* D5E70 8011FAB0 00000000 */   nop

glabel func_race_8011FAB4
/* D5E74 8011FAB4 03E00008 */  jr         $ra
/* D5E78 8011FAB8 00000000 */   nop

glabel func_race_8011FABC
/* D5E7C 8011FABC 24020001 */  addiu      $v0, $zero, 0x1
/* D5E80 8011FAC0 03E00008 */  jr         $ra
/* D5E84 8011FAC4 AC820004 */   sw        $v0, 0x4($a0)

glabel func_race_8011FAC8
/* D5E88 8011FAC8 03E00008 */  jr         $ra
/* D5E8C 8011FACC AC850010 */   sw        $a1, 0x10($a0)

glabel func_race_8011FAD0
/* D5E90 8011FAD0 03E00008 */  jr         $ra
/* D5E94 8011FAD4 AC85000C */   sw        $a1, 0xC($a0)

glabel func_race_8011FAD8
/* D5E98 8011FAD8 8C82000C */  lw         $v0, 0xC($a0)
/* D5E9C 8011FADC 03E00008 */  jr         $ra
/* D5EA0 8011FAE0 00000000 */   nop

glabel func_race_8011FAE4
/* D5EA4 8011FAE4 03E00008 */  jr         $ra
/* D5EA8 8011FAE8 AC850014 */   sw        $a1, 0x14($a0)

glabel func_race_8011FAEC
/* D5EAC 8011FAEC 03E00008 */  jr         $ra
/* D5EB0 8011FAF0 AC850004 */   sw        $a1, 0x4($a0)

glabel func_race_8011FAF4
/* D5EB4 8011FAF4 8C820014 */  lw         $v0, 0x14($a0)
/* D5EB8 8011FAF8 03E00008 */  jr         $ra
/* D5EBC 8011FAFC 00000000 */   nop

glabel func_race_8011FB00
/* D5EC0 8011FB00 03E00008 */  jr         $ra
/* D5EC4 8011FB04 AC850008 */   sw        $a1, 0x8($a0)

glabel func_race_8011FB08
/* D5EC8 8011FB08 8C820008 */  lw         $v0, 0x8($a0)
/* D5ECC 8011FB0C 03E00008 */  jr         $ra
/* D5ED0 8011FB10 00000000 */   nop

glabel func_race_8011FB14
/* D5ED4 8011FB14 8C820004 */  lw         $v0, 0x4($a0)
/* D5ED8 8011FB18 03E00008 */  jr         $ra
/* D5EDC 8011FB1C 00000000 */   nop

glabel func_race_8011FB20
/* D5EE0 8011FB20 8C820004 */  lw         $v0, 0x4($a0)
/* D5EE4 8011FB24 03E00008 */  jr         $ra
/* D5EE8 8011FB28 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_8011FB2C
/* D5EEC 8011FB2C 03E00008 */  jr         $ra
/* D5EF0 8011FB30 00001021 */   addu      $v0, $zero, $zero
