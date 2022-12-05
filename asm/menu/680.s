.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_80111090
/* 12F180 80111090 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12F184 80111094 AFB00010 */  sw         $s0, 0x10($sp)
/* 12F188 80111098 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12F18C 8011109C 0C044058 */  jal        func_menu_80110160
/* 12F190 801110A0 00808021 */   addu      $s0, $a0, $zero
/* 12F194 801110A4 3C02800D */  lui        $v0, %hi(D_menu_800CF700)
/* 12F198 801110A8 2442F700 */  addiu      $v0, $v0, %lo(D_menu_800CF700)
/* 12F19C 801110AC 260400DC */  addiu      $a0, $s0, 0xDC
/* 12F1A0 801110B0 0C0479E0 */  jal        func_menu_8011E780
/* 12F1A4 801110B4 AE020054 */   sw        $v0, 0x54($s0)
/* 12F1A8 801110B8 0C044079 */  jal        func_menu_801101E4
/* 12F1AC 801110BC 02002021 */   addu      $a0, $s0, $zero
/* 12F1B0 801110C0 02001021 */  addu       $v0, $s0, $zero
/* 12F1B4 801110C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12F1B8 801110C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 12F1BC 801110CC 03E00008 */  jr         $ra
/* 12F1C0 801110D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_801110D4
/* 12F1C4 801110D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12F1C8 801110D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 12F1CC 801110DC 00808021 */  addu       $s0, $a0, $zero
/* 12F1D0 801110E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 12F1D4 801110E4 00A08821 */  addu       $s1, $a1, $zero
/* 12F1D8 801110E8 3C02800D */  lui        $v0, %hi(D_menu_800CF700)
/* 12F1DC 801110EC 2442F700 */  addiu      $v0, $v0, %lo(D_menu_800CF700)
/* 12F1E0 801110F0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12F1E4 801110F4 0C0440CA */  jal        func_menu_80110328
/* 12F1E8 801110F8 AE020054 */   sw        $v0, 0x54($s0)
/* 12F1EC 801110FC 260400DC */  addiu      $a0, $s0, 0xDC
/* 12F1F0 80111100 0C0479FF */  jal        func_menu_8011E7FC
/* 12F1F4 80111104 24050002 */   addiu     $a1, $zero, 0x2
/* 12F1F8 80111108 02002021 */  addu       $a0, $s0, $zero
/* 12F1FC 8011110C 0C044067 */  jal        func_menu_8011019C
/* 12F200 80111110 02202821 */   addu      $a1, $s1, $zero
/* 12F204 80111114 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12F208 80111118 8FB10014 */  lw         $s1, 0x14($sp)
/* 12F20C 8011111C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12F210 80111120 03E00008 */  jr         $ra
/* 12F214 80111124 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80111128
/* 12F218 80111128 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 12F21C 8011112C AFB10074 */  sw         $s1, 0x74($sp)
/* 12F220 80111130 00808821 */  addu       $s1, $a0, $zero
/* 12F224 80111134 AFB00070 */  sw         $s0, 0x70($sp)
/* 12F228 80111138 00A08021 */  addu       $s0, $a1, $zero
/* 12F22C 8011113C 27A40010 */  addiu      $a0, $sp, 0x10
/* 12F230 80111140 00002821 */  addu       $a1, $zero, $zero
/* 12F234 80111144 AFBF0078 */  sw         $ra, 0x78($sp)
/* 12F238 80111148 0C000697 */  jal        func_80001A5C
/* 12F23C 8011114C 24060060 */   addiu     $a2, $zero, 0x60
/* 12F240 80111150 8E020084 */  lw         $v0, 0x84($s0)
/* 12F244 80111154 27A30010 */  addiu      $v1, $sp, 0x10
/* 12F248 80111158 24440060 */  addiu      $a0, $v0, 0x60
.Lmenu_8011115C:
/* 12F24C 8011115C 8C470000 */  lw         $a3, 0x0($v0)
/* 12F250 80111160 8C480004 */  lw         $t0, 0x4($v0)
/* 12F254 80111164 8C490008 */  lw         $t1, 0x8($v0)
/* 12F258 80111168 8C4A000C */  lw         $t2, 0xC($v0)
/* 12F25C 8011116C AC670000 */  sw         $a3, 0x0($v1)
/* 12F260 80111170 AC680004 */  sw         $t0, 0x4($v1)
/* 12F264 80111174 AC690008 */  sw         $t1, 0x8($v1)
/* 12F268 80111178 AC6A000C */  sw         $t2, 0xC($v1)
/* 12F26C 8011117C 24420010 */  addiu      $v0, $v0, 0x10
/* 12F270 80111180 1444FFF6 */  bne        $v0, $a0, .Lmenu_8011115C
/* 12F274 80111184 24630010 */   addiu     $v1, $v1, 0x10
/* 12F278 80111188 262400DC */  addiu      $a0, $s1, 0xDC
/* 12F27C 8011118C 8E070010 */  lw         $a3, 0x10($s0)
/* 12F280 80111190 8E080014 */  lw         $t0, 0x14($s0)
/* 12F284 80111194 8E090018 */  lw         $t1, 0x18($s0)
/* 12F288 80111198 8E0A001C */  lw         $t2, 0x1C($s0)
/* 12F28C 8011119C AFA70020 */  sw         $a3, 0x20($sp)
/* 12F290 801111A0 AFA80024 */  sw         $t0, 0x24($sp)
/* 12F294 801111A4 AFA90028 */  sw         $t1, 0x28($sp)
/* 12F298 801111A8 AFAA002C */  sw         $t2, 0x2C($sp)
/* 12F29C 801111AC 8E020028 */  lw         $v0, 0x28($s0)
/* 12F2A0 801111B0 27A50010 */  addiu      $a1, $sp, 0x10
/* 12F2A4 801111B4 0C047A26 */  jal        func_menu_8011E898
/* 12F2A8 801111B8 AFA20038 */   sw        $v0, 0x38($sp)
/* 12F2AC 801111BC 8FBF0078 */  lw         $ra, 0x78($sp)
/* 12F2B0 801111C0 8FB10074 */  lw         $s1, 0x74($sp)
/* 12F2B4 801111C4 8FB00070 */  lw         $s0, 0x70($sp)
/* 12F2B8 801111C8 03E00008 */  jr         $ra
/* 12F2BC 801111CC 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_menu_801111D0
/* 12F2C0 801111D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12F2C4 801111D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 12F2C8 801111D8 00808021 */  addu       $s0, $a0, $zero
/* 12F2CC 801111DC AFB10014 */  sw         $s1, 0x14($sp)
/* 12F2D0 801111E0 00A08821 */  addu       $s1, $a1, $zero
/* 12F2D4 801111E4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 12F2D8 801111E8 AFB20018 */  sw         $s2, 0x18($sp)
/* 12F2DC 801111EC 8E020054 */  lw         $v0, 0x54($s0)
/* 12F2E0 801111F0 00C09021 */  addu       $s2, $a2, $zero
/* 12F2E4 801111F4 84440018 */  lh         $a0, 0x18($v0)
/* 12F2E8 801111F8 8C42001C */  lw         $v0, 0x1C($v0)
/* 12F2EC 801111FC 0040F809 */  jalr       $v0
/* 12F2F0 80111200 02042021 */   addu      $a0, $s0, $a0
/* 12F2F4 80111204 02002021 */  addu       $a0, $s0, $zero
/* 12F2F8 80111208 0C04444A */  jal        func_menu_80111128
/* 12F2FC 8011120C 02202821 */   addu      $a1, $s1, $zero
/* 12F300 80111210 14400003 */  bnez       $v0, .Lmenu_80111220
/* 12F304 80111214 02002021 */   addu      $a0, $s0, $zero
/* 12F308 80111218 08044498 */  j          .Lmenu_80111260
/* 12F30C 8011121C 00001021 */   addu      $v0, $zero, $zero
.Lmenu_80111220:
/* 12F310 80111220 24860164 */  addiu      $a2, $a0, 0x164
/* 12F314 80111224 AE200010 */  sw         $zero, 0x10($s1)
/* 12F318 80111228 AE200014 */  sw         $zero, 0x14($s1)
/* 12F31C 8011122C 8CC20008 */  lw         $v0, 0x8($a2)
/* 12F320 80111230 8C830164 */  lw         $v1, 0x164($a0)
/* 12F324 80111234 02202821 */  addu       $a1, $s1, $zero
/* 12F328 80111238 00431023 */  subu       $v0, $v0, $v1
/* 12F32C 8011123C ACA20018 */  sw         $v0, 0x18($a1)
/* 12F330 80111240 8CC3000C */  lw         $v1, 0xC($a2)
/* 12F334 80111244 8CC60004 */  lw         $a2, 0x4($a2)
/* 12F338 80111248 24820134 */  addiu      $v0, $a0, 0x134
/* 12F33C 8011124C ACA20028 */  sw         $v0, 0x28($a1)
/* 12F340 80111250 00661823 */  subu       $v1, $v1, $a2
/* 12F344 80111254 02403021 */  addu       $a2, $s2, $zero
/* 12F348 80111258 0C044097 */  jal        func_menu_8011025C
/* 12F34C 8011125C ACA3001C */   sw        $v1, 0x1C($a1)
.Lmenu_80111260:
/* 12F350 80111260 8FBF001C */  lw         $ra, 0x1C($sp)
/* 12F354 80111264 8FB20018 */  lw         $s2, 0x18($sp)
/* 12F358 80111268 8FB10014 */  lw         $s1, 0x14($sp)
/* 12F35C 8011126C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12F360 80111270 03E00008 */  jr         $ra
/* 12F364 80111274 27BD0020 */   addiu     $sp, $sp, 0x20
