.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_80113D00
/* 131DF0 80113D00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 131DF4 80113D04 AFB00010 */  sw         $s0, 0x10($sp)
/* 131DF8 80113D08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 131DFC 80113D0C 0C044F5B */  jal        func_menu_80113D6C
/* 131E00 80113D10 00808021 */   addu      $s0, $a0, $zero
/* 131E04 80113D14 02001021 */  addu       $v0, $s0, $zero
/* 131E08 80113D18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 131E0C 80113D1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 131E10 80113D20 03E00008 */  jr         $ra
/* 131E14 80113D24 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80113D28
/* 131E18 80113D28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 131E1C 80113D2C AFB10014 */  sw         $s1, 0x14($sp)
/* 131E20 80113D30 00808821 */  addu       $s1, $a0, $zero
/* 131E24 80113D34 AFB00010 */  sw         $s0, 0x10($sp)
/* 131E28 80113D38 AFBF0018 */  sw         $ra, 0x18($sp)
/* 131E2C 80113D3C 0C044FAC */  jal        func_menu_80113EB0
/* 131E30 80113D40 00A08021 */   addu      $s0, $a1, $zero
/* 131E34 80113D44 32100001 */  andi       $s0, $s0, 0x1
/* 131E38 80113D48 12000003 */  beqz       $s0, .Lmenu_80113D58
/* 131E3C 80113D4C 00000000 */   nop
/* 131E40 80113D50 0C01FB5C */  jal        func_8007ED70
/* 131E44 80113D54 02202021 */   addu      $a0, $s1, $zero
.Lmenu_80113D58:
/* 131E48 80113D58 8FBF0018 */  lw         $ra, 0x18($sp)
/* 131E4C 80113D5C 8FB10014 */  lw         $s1, 0x14($sp)
/* 131E50 80113D60 8FB00010 */  lw         $s0, 0x10($sp)
/* 131E54 80113D64 03E00008 */  jr         $ra
/* 131E58 80113D68 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80113D6C
/* 131E5C 80113D6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 131E60 80113D70 AFB00010 */  sw         $s0, 0x10($sp)
/* 131E64 80113D74 00808021 */  addu       $s0, $a0, $zero
/* 131E68 80113D78 26040010 */  addiu      $a0, $s0, 0x10
/* 131E6C 80113D7C 00002821 */  addu       $a1, $zero, $zero
/* 131E70 80113D80 AFBF0014 */  sw         $ra, 0x14($sp)
/* 131E74 80113D84 0C000697 */  jal        func_80001A5C
/* 131E78 80113D88 24060010 */   addiu     $a2, $zero, 0x10
/* 131E7C 80113D8C 26040020 */  addiu      $a0, $s0, 0x20
/* 131E80 80113D90 00002821 */  addu       $a1, $zero, $zero
/* 131E84 80113D94 0C000697 */  jal        func_80001A5C
/* 131E88 80113D98 24060010 */   addiu     $a2, $zero, 0x10
/* 131E8C 80113D9C 24020001 */  addiu      $v0, $zero, 0x1
/* 131E90 80113DA0 AE000004 */  sw         $zero, 0x4($s0)
/* 131E94 80113DA4 AE000008 */  sw         $zero, 0x8($s0)
/* 131E98 80113DA8 AE000000 */  sw         $zero, 0x0($s0)
/* 131E9C 80113DAC AE00000C */  sw         $zero, 0xC($s0)
/* 131EA0 80113DB0 AE00003C */  sw         $zero, 0x3C($s0)
/* 131EA4 80113DB4 AE000038 */  sw         $zero, 0x38($s0)
/* 131EA8 80113DB8 AE000034 */  sw         $zero, 0x34($s0)
/* 131EAC 80113DBC AE000030 */  sw         $zero, 0x30($s0)
/* 131EB0 80113DC0 A2020040 */  sb         $v0, 0x40($s0)
/* 131EB4 80113DC4 A2020041 */  sb         $v0, 0x41($s0)
/* 131EB8 80113DC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 131EBC 80113DCC 8FB00010 */  lw         $s0, 0x10($sp)
/* 131EC0 80113DD0 03E00008 */  jr         $ra
/* 131EC4 80113DD4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80113DD8
/* 131EC8 80113DD8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 131ECC 80113DDC AFB00010 */  sw         $s0, 0x10($sp)
/* 131ED0 80113DE0 00808021 */  addu       $s0, $a0, $zero
/* 131ED4 80113DE4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 131ED8 80113DE8 AFB10014 */  sw         $s1, 0x14($sp)
/* 131EDC 80113DEC 8E020004 */  lw         $v0, 0x4($s0)
/* 131EE0 80113DF0 10400005 */  beqz       $v0, .Lmenu_80113E08
/* 131EE4 80113DF4 00A08821 */   addu      $s1, $a1, $zero
/* 131EE8 80113DF8 0C044FAC */  jal        func_menu_80113EB0
/* 131EEC 80113DFC 00000000 */   nop
/* 131EF0 80113E00 10400026 */  beqz       $v0, .Lmenu_80113E9C
/* 131EF4 80113E04 00001021 */   addu      $v0, $zero, $zero
.Lmenu_80113E08:
/* 131EF8 80113E08 8E220000 */  lw         $v0, 0x0($s1)
/* 131EFC 80113E0C 8C420030 */  lw         $v0, 0x30($v0)
/* 131F00 80113E10 10400022 */  beqz       $v0, .Lmenu_80113E9C
/* 131F04 80113E14 24020001 */   addiu     $v0, $zero, 0x1
/* 131F08 80113E18 8E220010 */  lw         $v0, 0x10($s1)
/* 131F0C 80113E1C 8C460000 */  lw         $a2, 0x0($v0)
/* 131F10 80113E20 8C470004 */  lw         $a3, 0x4($v0)
/* 131F14 80113E24 8C480008 */  lw         $t0, 0x8($v0)
/* 131F18 80113E28 8C49000C */  lw         $t1, 0xC($v0)
/* 131F1C 80113E2C AE060010 */  sw         $a2, 0x10($s0)
/* 131F20 80113E30 AE070014 */  sw         $a3, 0x14($s0)
/* 131F24 80113E34 AE080018 */  sw         $t0, 0x18($s0)
/* 131F28 80113E38 AE09001C */  sw         $t1, 0x1C($s0)
/* 131F2C 80113E3C 8E22000C */  lw         $v0, 0xC($s1)
/* 131F30 80113E40 AE02000C */  sw         $v0, 0xC($s0)
/* 131F34 80113E44 8E220004 */  lw         $v0, 0x4($s1)
/* 131F38 80113E48 8E03000C */  lw         $v1, 0xC($s0)
/* 131F3C 80113E4C AE020004 */  sw         $v0, 0x4($s0)
/* 131F40 80113E50 8E220008 */  lw         $v0, 0x8($s1)
/* 131F44 80113E54 AE020008 */  sw         $v0, 0x8($s0)
/* 131F48 80113E58 8E220000 */  lw         $v0, 0x0($s1)
/* 131F4C 80113E5C AE020000 */  sw         $v0, 0x0($s0)
/* 131F50 80113E60 8E220014 */  lw         $v0, 0x14($s1)
/* 131F54 80113E64 AE020030 */  sw         $v0, 0x30($s0)
/* 131F58 80113E68 8E220018 */  lw         $v0, 0x18($s1)
/* 131F5C 80113E6C AE020034 */  sw         $v0, 0x34($s0)
/* 131F60 80113E70 8E22001C */  lw         $v0, 0x1C($s1)
/* 131F64 80113E74 AE020038 */  sw         $v0, 0x38($s0)
/* 131F68 80113E78 8E220020 */  lw         $v0, 0x20($s1)
/* 131F6C 80113E7C AE000024 */  sw         $zero, 0x24($s0)
/* 131F70 80113E80 AE000020 */  sw         $zero, 0x20($s0)
/* 131F74 80113E84 AE02003C */  sw         $v0, 0x3C($s0)
/* 131F78 80113E88 8C620030 */  lw         $v0, 0x30($v1)
/* 131F7C 80113E8C AE020028 */  sw         $v0, 0x28($s0)
/* 131F80 80113E90 8C630034 */  lw         $v1, 0x34($v1)
/* 131F84 80113E94 24020001 */  addiu      $v0, $zero, 0x1
/* 131F88 80113E98 AE03002C */  sw         $v1, 0x2C($s0)
.Lmenu_80113E9C:
/* 131F8C 80113E9C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 131F90 80113EA0 8FB10014 */  lw         $s1, 0x14($sp)
/* 131F94 80113EA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 131F98 80113EA8 03E00008 */  jr         $ra
/* 131F9C 80113EAC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80113EB0
/* 131FA0 80113EB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 131FA4 80113EB4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 131FA8 80113EB8 0C044F5B */  jal        func_menu_80113D6C
/* 131FAC 80113EBC 00000000 */   nop
/* 131FB0 80113EC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 131FB4 80113EC4 24020001 */  addiu      $v0, $zero, 0x1
/* 131FB8 80113EC8 03E00008 */  jr         $ra
/* 131FBC 80113ECC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80113ED0
/* 131FC0 80113ED0 8C820004 */  lw         $v0, 0x4($a0)
/* 131FC4 80113ED4 10400005 */  beqz       $v0, .Lmenu_80113EEC
/* 131FC8 80113ED8 00000000 */   nop
/* 131FCC 80113EDC 8C820000 */  lw         $v0, 0x0($a0)
/* 131FD0 80113EE0 8C42003C */  lw         $v0, 0x3C($v0)
/* 131FD4 80113EE4 03E00008 */  jr         $ra
/* 131FD8 80113EE8 00000000 */   nop
.Lmenu_80113EEC:
/* 131FDC 80113EEC 03E00008 */  jr         $ra
/* 131FE0 80113EF0 00001021 */   addu      $v0, $zero, $zero

glabel func_menu_80113EF4
/* 131FE4 80113EF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 131FE8 80113EF8 AFB10014 */  sw         $s1, 0x14($sp)
/* 131FEC 80113EFC 00808821 */  addu       $s1, $a0, $zero
/* 131FF0 80113F00 AFBF0018 */  sw         $ra, 0x18($sp)
/* 131FF4 80113F04 AFB00010 */  sw         $s0, 0x10($sp)
/* 131FF8 80113F08 8E220004 */  lw         $v0, 0x4($s1)
/* 131FFC 80113F0C 10400034 */  beqz       $v0, .Lmenu_80113FE0
/* 132000 80113F10 24020001 */   addiu     $v0, $zero, 0x1
/* 132004 80113F14 82220040 */  lb         $v0, 0x40($s1)
/* 132008 80113F18 10400031 */  beqz       $v0, .Lmenu_80113FE0
/* 13200C 80113F1C 24020001 */   addiu     $v0, $zero, 0x1
/* 132010 80113F20 82220041 */  lb         $v0, 0x41($s1)
/* 132014 80113F24 1040002D */  beqz       $v0, .Lmenu_80113FDC
/* 132018 80113F28 24050001 */   addiu     $a1, $zero, 0x1
/* 13201C 80113F2C 8E220000 */  lw         $v0, 0x0($s1)
/* 132020 80113F30 8C50003C */  lw         $s0, 0x3C($v0)
/* 132024 80113F34 8E020098 */  lw         $v0, 0x98($s0)
/* 132028 80113F38 84440068 */  lh         $a0, 0x68($v0)
/* 13202C 80113F3C 8C42006C */  lw         $v0, 0x6C($v0)
/* 132030 80113F40 0040F809 */  jalr       $v0
/* 132034 80113F44 02042021 */   addu      $a0, $s0, $a0
/* 132038 80113F48 8E220030 */  lw         $v0, 0x30($s1)
/* 13203C 80113F4C 4600008D */  trunc.w.s  $f2, $f0
/* 132040 80113F50 44031000 */  mfc1       $v1, $f2
/* 132044 80113F54 00431021 */  addu       $v0, $v0, $v1
/* 132048 80113F58 AE220030 */  sw         $v0, 0x30($s1)
/* 13204C 80113F5C 8E020098 */  lw         $v0, 0x98($s0)
/* 132050 80113F60 24050002 */  addiu      $a1, $zero, 0x2
/* 132054 80113F64 84440068 */  lh         $a0, 0x68($v0)
/* 132058 80113F68 8C42006C */  lw         $v0, 0x6C($v0)
/* 13205C 80113F6C 0040F809 */  jalr       $v0
/* 132060 80113F70 02042021 */   addu      $a0, $s0, $a0
/* 132064 80113F74 4600008D */  trunc.w.s  $f2, $f0
/* 132068 80113F78 44031000 */  mfc1       $v1, $f2
/* 13206C 80113F7C 8E220034 */  lw         $v0, 0x34($s1)
/* 132070 80113F80 8E250030 */  lw         $a1, 0x30($s1)
/* 132074 80113F84 8E240010 */  lw         $a0, 0x10($s1)
/* 132078 80113F88 00431021 */  addu       $v0, $v0, $v1
/* 13207C 80113F8C AE220034 */  sw         $v0, 0x34($s1)
/* 132080 80113F90 00A4102A */  slt        $v0, $a1, $a0
/* 132084 80113F94 10400003 */  beqz       $v0, .Lmenu_80113FA4
/* 132088 80113F98 00000000 */   nop
/* 13208C 80113F9C 08044FED */  j          .Lmenu_80113FB4
/* 132090 80113FA0 AE240030 */   sw        $a0, 0x30($s1)
.Lmenu_80113FA4:
/* 132094 80113FA4 8E230018 */  lw         $v1, 0x18($s1)
/* 132098 80113FA8 0065102A */  slt        $v0, $v1, $a1
/* 13209C 80113FAC 54400001 */  bnel       $v0, $zero, .Lmenu_80113FB4
/* 1320A0 80113FB0 AE230030 */   sw        $v1, 0x30($s1)
.Lmenu_80113FB4:
/* 1320A4 80113FB4 8E240034 */  lw         $a0, 0x34($s1)
/* 1320A8 80113FB8 8E230014 */  lw         $v1, 0x14($s1)
/* 1320AC 80113FBC 0083102A */  slt        $v0, $a0, $v1
/* 1320B0 80113FC0 54400006 */  bnel       $v0, $zero, .Lmenu_80113FDC
/* 1320B4 80113FC4 AE230034 */   sw        $v1, 0x34($s1)
/* 1320B8 80113FC8 8E23001C */  lw         $v1, 0x1C($s1)
/* 1320BC 80113FCC 0064102A */  slt        $v0, $v1, $a0
/* 1320C0 80113FD0 10400003 */  beqz       $v0, .Lmenu_80113FE0
/* 1320C4 80113FD4 24020001 */   addiu     $v0, $zero, 0x1
/* 1320C8 80113FD8 AE230034 */  sw         $v1, 0x34($s1)
.Lmenu_80113FDC:
/* 1320CC 80113FDC 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_80113FE0:
/* 1320D0 80113FE0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1320D4 80113FE4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1320D8 80113FE8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1320DC 80113FEC 03E00008 */  jr         $ra
/* 1320E0 80113FF0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80113FF4
/* 1320E4 80113FF4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1320E8 80113FF8 00803821 */  addu       $a3, $a0, $zero
/* 1320EC 80113FFC AFBF0028 */  sw         $ra, 0x28($sp)
/* 1320F0 80114000 8CE20004 */  lw         $v0, 0x4($a3)
/* 1320F4 80114004 10400021 */  beqz       $v0, .Lmenu_8011408C
/* 1320F8 80114008 00001021 */   addu      $v0, $zero, $zero
/* 1320FC 8011400C 80E20040 */  lb         $v0, 0x40($a3)
/* 132100 80114010 1040001E */  beqz       $v0, .Lmenu_8011408C
/* 132104 80114014 00001021 */   addu      $v0, $zero, $zero
/* 132108 80114018 80E20041 */  lb         $v0, 0x41($a3)
/* 13210C 8011401C 14400003 */  bnez       $v0, .Lmenu_8011402C
/* 132110 80114020 00003021 */   addu      $a2, $zero, $zero
/* 132114 80114024 08045023 */  j          .Lmenu_8011408C
/* 132118 80114028 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8011402C:
/* 13211C 8011402C 8CE20030 */  lw         $v0, 0x30($a3)
/* 132120 80114030 AFA20018 */  sw         $v0, 0x18($sp)
/* 132124 80114034 8CE20030 */  lw         $v0, 0x30($a3)
/* 132128 80114038 8CE30028 */  lw         $v1, 0x28($a3)
/* 13212C 8011403C 00431021 */  addu       $v0, $v0, $v1
/* 132130 80114040 AFA20020 */  sw         $v0, 0x20($sp)
/* 132134 80114044 8CE20034 */  lw         $v0, 0x34($a3)
/* 132138 80114048 AFA2001C */  sw         $v0, 0x1C($sp)
/* 13213C 8011404C 8CE20034 */  lw         $v0, 0x34($a3)
/* 132140 80114050 8CE30028 */  lw         $v1, 0x28($a3)
/* 132144 80114054 00431021 */  addu       $v0, $v0, $v1
/* 132148 80114058 AFA20024 */  sw         $v0, 0x24($sp)
/* 13214C 8011405C 8CE40008 */  lw         $a0, 0x8($a3)
/* 132150 80114060 8C85012C */  lw         $a1, 0x12C($a0)
/* 132154 80114064 84A300E8 */  lh         $v1, 0xE8($a1)
/* 132158 80114068 24E20020 */  addiu      $v0, $a3, 0x20
/* 13215C 8011406C AFA20010 */  sw         $v0, 0x10($sp)
/* 132160 80114070 AFA00014 */  sw         $zero, 0x14($sp)
/* 132164 80114074 8CA200EC */  lw         $v0, 0xEC($a1)
/* 132168 80114078 8CE5000C */  lw         $a1, 0xC($a3)
/* 13216C 8011407C 27A70018 */  addiu      $a3, $sp, 0x18
/* 132170 80114080 0040F809 */  jalr       $v0
/* 132174 80114084 00832021 */   addu      $a0, $a0, $v1
/* 132178 80114088 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_8011408C:
/* 13217C 8011408C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 132180 80114090 03E00008 */  jr         $ra
/* 132184 80114094 27BD0030 */   addiu     $sp, $sp, 0x30
