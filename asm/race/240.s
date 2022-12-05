.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E4D90
/* 9B150 800E4D90 00801021 */  addu       $v0, $a0, $zero
/* 9B154 800E4D94 3C03800D */  lui        $v1, %hi(D_race_800CB900)
/* 9B158 800E4D98 2463B900 */  addiu      $v1, $v1, %lo(D_race_800CB900)
/* 9B15C 800E4D9C AC430000 */  sw         $v1, 0x0($v0)
/* 9B160 800E4DA0 AC400004 */  sw         $zero, 0x4($v0)
/* 9B164 800E4DA4 AC400008 */  sw         $zero, 0x8($v0)
/* 9B168 800E4DA8 AC40000C */  sw         $zero, 0xC($v0)
/* 9B16C 800E4DAC AC400010 */  sw         $zero, 0x10($v0)
/* 9B170 800E4DB0 03E00008 */  jr         $ra
/* 9B174 800E4DB4 AC400014 */   sw        $zero, 0x14($v0)

glabel func_race_800E4DB8
/* 9B178 800E4DB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9B17C 800E4DBC AFB10014 */  sw         $s1, 0x14($sp)
/* 9B180 800E4DC0 00808821 */  addu       $s1, $a0, $zero
/* 9B184 800E4DC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 9B188 800E4DC8 00A08021 */  addu       $s0, $a1, $zero
/* 9B18C 800E4DCC 3C02800D */  lui        $v0, %hi(D_race_800CB900)
/* 9B190 800E4DD0 2442B900 */  addiu      $v0, $v0, %lo(D_race_800CB900)
/* 9B194 800E4DD4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9B198 800E4DD8 0C0393B4 */  jal        func_race_800E4ED0
/* 9B19C 800E4DDC AE220000 */   sw        $v0, 0x0($s1)
/* 9B1A0 800E4DE0 32100001 */  andi       $s0, $s0, 0x1
/* 9B1A4 800E4DE4 12000003 */  beqz       $s0, .Lrace_800E4DF4
/* 9B1A8 800E4DE8 00000000 */   nop
/* 9B1AC 800E4DEC 0C01FB5C */  jal        func_8007ED70
/* 9B1B0 800E4DF0 02202021 */   addu      $a0, $s1, $zero
.Lrace_800E4DF4:
/* 9B1B4 800E4DF4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9B1B8 800E4DF8 8FB10014 */  lw         $s1, 0x14($sp)
/* 9B1BC 800E4DFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 9B1C0 800E4E00 03E00008 */  jr         $ra
/* 9B1C4 800E4E04 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E4E08
/* 9B1C8 800E4E08 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9B1CC 800E4E0C AFB10014 */  sw         $s1, 0x14($sp)
/* 9B1D0 800E4E10 00808821 */  addu       $s1, $a0, $zero
/* 9B1D4 800E4E14 AFB00010 */  sw         $s0, 0x10($sp)
/* 9B1D8 800E4E18 00A08021 */  addu       $s0, $a1, $zero
/* 9B1DC 800E4E1C AFB20018 */  sw         $s2, 0x18($sp)
/* 9B1E0 800E4E20 00C09021 */  addu       $s2, $a2, $zero
/* 9B1E4 800E4E24 AFBF0020 */  sw         $ra, 0x20($sp)
/* 9B1E8 800E4E28 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9B1EC 800E4E2C 8E220004 */  lw         $v0, 0x4($s1)
/* 9B1F0 800E4E30 10400003 */  beqz       $v0, .Lrace_800E4E40
/* 9B1F4 800E4E34 00E09821 */   addu      $s3, $a3, $zero
/* 9B1F8 800E4E38 0C0393B4 */  jal        func_race_800E4ED0
/* 9B1FC 800E4E3C 00000000 */   nop
.Lrace_800E4E40:
/* 9B200 800E4E40 AE32000C */  sw         $s2, 0xC($s1)
/* 9B204 800E4E44 02401821 */  addu       $v1, $s2, $zero
/* 9B208 800E4E48 36620008 */  ori        $v0, $s3, 0x8
/* 9B20C 800E4E4C AE220014 */  sw         $v0, 0x14($s1)
/* 9B210 800E4E50 8C62000C */  lw         $v0, 0xC($v1)
/* 9B214 800E4E54 AE300008 */  sw         $s0, 0x8($s1)
/* 9B218 800E4E58 AE220010 */  sw         $v0, 0x10($s1)
/* 9B21C 800E4E5C 8E020000 */  lw         $v0, 0x0($s0)
/* 9B220 800E4E60 84440010 */  lh         $a0, 0x10($v0)
/* 9B224 800E4E64 8C420014 */  lw         $v0, 0x14($v0)
/* 9B228 800E4E68 0040F809 */  jalr       $v0
/* 9B22C 800E4E6C 02042021 */   addu      $a0, $s0, $a0
/* 9B230 800E4E70 8E230008 */  lw         $v1, 0x8($s1)
/* 9B234 800E4E74 8C650000 */  lw         $a1, 0x0($v1)
/* 9B238 800E4E78 84A40028 */  lh         $a0, 0x28($a1)
/* 9B23C 800E4E7C 00642021 */  addu       $a0, $v1, $a0
/* 9B240 800E4E80 8CA3002C */  lw         $v1, 0x2C($a1)
/* 9B244 800E4E84 8C50001C */  lw         $s0, 0x1C($v0)
/* 9B248 800E4E88 0060F809 */  jalr       $v1
/* 9B24C 800E4E8C 00000000 */   nop
/* 9B250 800E4E90 AE220004 */  sw         $v0, 0x4($s1)
/* 9B254 800E4E94 8C430008 */  lw         $v1, 0x8($v0)
/* 9B258 800E4E98 02002821 */  addu       $a1, $s0, $zero
/* 9B25C 800E4E9C 84640048 */  lh         $a0, 0x48($v1)
/* 9B260 800E4EA0 8E270010 */  lw         $a3, 0x10($s1)
/* 9B264 800E4EA4 00442021 */  addu       $a0, $v0, $a0
/* 9B268 800E4EA8 8C62004C */  lw         $v0, 0x4C($v1)
/* 9B26C 800E4EAC 0040F809 */  jalr       $v0
/* 9B270 800E4EB0 02203021 */   addu      $a2, $s1, $zero
/* 9B274 800E4EB4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 9B278 800E4EB8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9B27C 800E4EBC 8FB20018 */  lw         $s2, 0x18($sp)
/* 9B280 800E4EC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 9B284 800E4EC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 9B288 800E4EC8 03E00008 */  jr         $ra
/* 9B28C 800E4ECC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E4ED0
/* 9B290 800E4ED0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9B294 800E4ED4 AFB00010 */  sw         $s0, 0x10($sp)
/* 9B298 800E4ED8 00808021 */  addu       $s0, $a0, $zero
/* 9B29C 800E4EDC AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B2A0 800E4EE0 8E030008 */  lw         $v1, 0x8($s0)
/* 9B2A4 800E4EE4 5060000A */  beql       $v1, $zero, .Lrace_800E4F10
/* 9B2A8 800E4EE8 AE000004 */   sw        $zero, 0x4($s0)
/* 9B2AC 800E4EEC 8E050004 */  lw         $a1, 0x4($s0)
/* 9B2B0 800E4EF0 50A00007 */  beql       $a1, $zero, .Lrace_800E4F10
/* 9B2B4 800E4EF4 AE000004 */   sw        $zero, 0x4($s0)
/* 9B2B8 800E4EF8 8C620000 */  lw         $v0, 0x0($v1)
/* 9B2BC 800E4EFC 84440090 */  lh         $a0, 0x90($v0)
/* 9B2C0 800E4F00 8C420094 */  lw         $v0, 0x94($v0)
/* 9B2C4 800E4F04 0040F809 */  jalr       $v0
/* 9B2C8 800E4F08 00642021 */   addu      $a0, $v1, $a0
/* 9B2CC 800E4F0C AE000004 */  sw         $zero, 0x4($s0)
.Lrace_800E4F10:
/* 9B2D0 800E4F10 AE000008 */  sw         $zero, 0x8($s0)
/* 9B2D4 800E4F14 AE00000C */  sw         $zero, 0xC($s0)
/* 9B2D8 800E4F18 AE000010 */  sw         $zero, 0x10($s0)
/* 9B2DC 800E4F1C AE000014 */  sw         $zero, 0x14($s0)
/* 9B2E0 800E4F20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B2E4 800E4F24 8FB00010 */  lw         $s0, 0x10($sp)
/* 9B2E8 800E4F28 03E00008 */  jr         $ra
/* 9B2EC 800E4F2C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E4F30
/* 9B2F0 800E4F30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9B2F4 800E4F34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B2F8 800E4F38 AFB00010 */  sw         $s0, 0x10($sp)
/* 9B2FC 800E4F3C 8C820014 */  lw         $v0, 0x14($a0)
/* 9B300 800E4F40 00C08021 */  addu       $s0, $a2, $zero
/* 9B304 800E4F44 AE020000 */  sw         $v0, 0x0($s0)
/* 9B308 800E4F48 8C82000C */  lw         $v0, 0xC($a0)
/* 9B30C 800E4F4C 8C420004 */  lw         $v0, 0x4($v0)
/* 9B310 800E4F50 8C430008 */  lw         $v1, 0x8($v0)
/* 9B314 800E4F54 84640058 */  lh         $a0, 0x58($v1)
/* 9B318 800E4F58 00442021 */  addu       $a0, $v0, $a0
/* 9B31C 800E4F5C 8C62005C */  lw         $v0, 0x5C($v1)
/* 9B320 800E4F60 0040F809 */  jalr       $v0
/* 9B324 800E4F64 00000000 */   nop
/* 9B328 800E4F68 AE020004 */  sw         $v0, 0x4($s0)
/* 9B32C 800E4F6C 24020002 */  addiu      $v0, $zero, 0x2
/* 9B330 800E4F70 A2020010 */  sb         $v0, 0x10($s0)
/* 9B334 800E4F74 24020001 */  addiu      $v0, $zero, 0x1
/* 9B338 800E4F78 A200000C */  sb         $zero, 0xC($s0)
/* 9B33C 800E4F7C A200000D */  sb         $zero, 0xD($s0)
/* 9B340 800E4F80 A200000E */  sb         $zero, 0xE($s0)
/* 9B344 800E4F84 A200000F */  sb         $zero, 0xF($s0)
/* 9B348 800E4F88 A2000008 */  sb         $zero, 0x8($s0)
/* 9B34C 800E4F8C A2000009 */  sb         $zero, 0x9($s0)
/* 9B350 800E4F90 A200000A */  sb         $zero, 0xA($s0)
/* 9B354 800E4F94 A200000B */  sb         $zero, 0xB($s0)
/* 9B358 800E4F98 A2000011 */  sb         $zero, 0x11($s0)
/* 9B35C 800E4F9C A2020012 */  sb         $v0, 0x12($s0)
/* 9B360 800E4FA0 A2000013 */  sb         $zero, 0x13($s0)
/* 9B364 800E4FA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B368 800E4FA8 8FB00010 */  lw         $s0, 0x10($sp)
/* 9B36C 800E4FAC 03E00008 */  jr         $ra
/* 9B370 800E4FB0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E4FB4
/* 9B374 800E4FB4 8C820010 */  lw         $v0, 0x10($a0)
/* 9B378 800E4FB8 03E00008 */  jr         $ra
/* 9B37C 800E4FBC 00000000 */   nop

glabel func_race_800E4FC0
/* 9B380 800E4FC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9B384 800E4FC4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9B388 800E4FC8 8C820004 */  lw         $v0, 0x4($a0)
/* 9B38C 800E4FCC 8C430008 */  lw         $v1, 0x8($v0)
/* 9B390 800E4FD0 84640058 */  lh         $a0, 0x58($v1)
/* 9B394 800E4FD4 00442021 */  addu       $a0, $v0, $a0
/* 9B398 800E4FD8 8C62005C */  lw         $v0, 0x5C($v1)
/* 9B39C 800E4FDC 0040F809 */  jalr       $v0
/* 9B3A0 800E4FE0 00000000 */   nop
/* 9B3A4 800E4FE4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9B3A8 800E4FE8 03E00008 */  jr         $ra
/* 9B3AC 800E4FEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E4FF0
/* 9B3B0 800E4FF0 8C820004 */  lw         $v0, 0x4($a0)
/* 9B3B4 800E4FF4 03E00008 */  jr         $ra
/* 9B3B8 800E4FF8 0002102B */   sltu      $v0, $zero, $v0
