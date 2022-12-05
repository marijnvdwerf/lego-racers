.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8011B370
/* 139460 8011B370 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 139464 8011B374 AFB00010 */  sw         $s0, 0x10($sp)
/* 139468 8011B378 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13946C 8011B37C 0C04793C */  jal        func_menu_8011E4F0
/* 139470 8011B380 00808021 */   addu      $s0, $a0, $zero
/* 139474 8011B384 3C02800D */  lui        $v0, %hi(D_menu_800D04C0)
/* 139478 8011B388 244204C0 */  addiu      $v0, $v0, %lo(D_menu_800D04C0)
/* 13947C 8011B38C 02002021 */  addu       $a0, $s0, $zero
/* 139480 8011B390 0C046CFF */  jal        func_menu_8011B3FC
/* 139484 8011B394 AE020054 */   sw        $v0, 0x54($s0)
/* 139488 8011B398 02001021 */  addu       $v0, $s0, $zero
/* 13948C 8011B39C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 139490 8011B3A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 139494 8011B3A4 03E00008 */  jr         $ra
/* 139498 8011B3A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011B3AC
/* 13949C 8011B3AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1394A0 8011B3B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1394A4 8011B3B4 00808021 */  addu       $s0, $a0, $zero
/* 1394A8 8011B3B8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1394AC 8011B3BC 00A08821 */  addu       $s1, $a1, $zero
/* 1394B0 8011B3C0 3C02800D */  lui        $v0, %hi(D_menu_800D04C0)
/* 1394B4 8011B3C4 244204C0 */  addiu      $v0, $v0, %lo(D_menu_800D04C0)
/* 1394B8 8011B3C8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1394BC 8011B3CC 0C049139 */  jal        func_menu_801244E4
/* 1394C0 8011B3D0 AE020054 */   sw        $v0, 0x54($s0)
/* 1394C4 8011B3D4 0C046CFF */  jal        func_menu_8011B3FC
/* 1394C8 8011B3D8 02002021 */   addu      $a0, $s0, $zero
/* 1394CC 8011B3DC 02002021 */  addu       $a0, $s0, $zero
/* 1394D0 8011B3E0 0C04794B */  jal        func_menu_8011E52C
/* 1394D4 8011B3E4 02202821 */   addu      $a1, $s1, $zero
/* 1394D8 8011B3E8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1394DC 8011B3EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1394E0 8011B3F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1394E4 8011B3F4 03E00008 */  jr         $ra
/* 1394E8 8011B3F8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011B3FC
/* 1394EC 8011B3FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1394F0 8011B400 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1394F4 8011B404 AC80006C */  sw         $zero, 0x6C($a0)
/* 1394F8 8011B408 AC800068 */  sw         $zero, 0x68($a0)
/* 1394FC 8011B40C AC800060 */  sw         $zero, 0x60($a0)
/* 139500 8011B410 AC800058 */  sw         $zero, 0x58($a0)
/* 139504 8011B414 AC800070 */  sw         $zero, 0x70($a0)
/* 139508 8011B418 0C0490D1 */  jal        func_menu_80124344
/* 13950C 8011B41C AC800074 */   sw        $zero, 0x74($a0)
/* 139510 8011B420 8FBF0010 */  lw         $ra, 0x10($sp)
/* 139514 8011B424 03E00008 */  jr         $ra
/* 139518 8011B428 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011B42C
/* 13951C 8011B42C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 139520 8011B430 AFB00010 */  sw         $s0, 0x10($sp)
/* 139524 8011B434 00808021 */  addu       $s0, $a0, $zero
/* 139528 8011B438 AFB20018 */  sw         $s2, 0x18($sp)
/* 13952C 8011B43C 00A09021 */  addu       $s2, $a1, $zero
/* 139530 8011B440 AFBF001C */  sw         $ra, 0x1C($sp)
/* 139534 8011B444 AFB10014 */  sw         $s1, 0x14($sp)
/* 139538 8011B448 8E020054 */  lw         $v0, 0x54($s0)
/* 13953C 8011B44C 00C08821 */  addu       $s1, $a2, $zero
/* 139540 8011B450 84440018 */  lh         $a0, 0x18($v0)
/* 139544 8011B454 8C42001C */  lw         $v0, 0x1C($v0)
/* 139548 8011B458 0040F809 */  jalr       $v0
/* 13954C 8011B45C 02042021 */   addu      $a0, $s0, $a0
/* 139550 8011B460 02002021 */  addu       $a0, $s0, $zero
/* 139554 8011B464 AE110058 */  sw         $s1, 0x58($s0)
/* 139558 8011B468 8E420008 */  lw         $v0, 0x8($s2)
/* 13955C 8011B46C 02402821 */  addu       $a1, $s2, $zero
/* 139560 8011B470 0C0490FB */  jal        func_menu_801243EC
/* 139564 8011B474 AC82005C */   sw        $v0, 0x5C($a0)
/* 139568 8011B478 8FBF001C */  lw         $ra, 0x1C($sp)
/* 13956C 8011B47C 8FB20018 */  lw         $s2, 0x18($sp)
/* 139570 8011B480 8FB10014 */  lw         $s1, 0x14($sp)
/* 139574 8011B484 8FB00010 */  lw         $s0, 0x10($sp)
/* 139578 8011B488 03E00008 */  jr         $ra
/* 13957C 8011B48C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011B490
/* 139580 8011B490 04A10004 */  bgez       $a1, .Lmenu_8011B4A4
/* 139584 8011B494 00000000 */   nop
/* 139588 8011B498 8C820068 */  lw         $v0, 0x68($a0)
/* 13958C 8011B49C 03E00008 */  jr         $ra
/* 139590 8011B4A0 00451021 */   addu      $v0, $v0, $a1
.Lmenu_8011B4A4:
/* 139594 8011B4A4 8C830068 */  lw         $v1, 0x68($a0)
/* 139598 8011B4A8 00A3001A */  div        $zero, $a1, $v1
/* 13959C 8011B4AC 14600002 */  bnez       $v1, .Lmenu_8011B4B8
/* 1395A0 8011B4B0 00000000 */   nop
/* 1395A4 8011B4B4 0007000D */  break      7
.Lmenu_8011B4B8:
/* 1395A8 8011B4B8 2401FFFF */  addiu      $at, $zero, -0x1
/* 1395AC 8011B4BC 14610004 */  bne        $v1, $at, .Lmenu_8011B4D0
/* 1395B0 8011B4C0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1395B4 8011B4C4 14A10002 */  bne        $a1, $at, .Lmenu_8011B4D0
/* 1395B8 8011B4C8 00000000 */   nop
/* 1395BC 8011B4CC 0006000D */  break      6
.Lmenu_8011B4D0:
/* 1395C0 8011B4D0 00001010 */  mfhi       $v0
/* 1395C4 8011B4D4 03E00008 */  jr         $ra
/* 1395C8 8011B4D8 00000000 */   nop

glabel func_menu_8011B4DC
/* 1395CC 8011B4DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1395D0 8011B4E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 1395D4 8011B4E4 00809021 */  addu       $s2, $a0, $zero
/* 1395D8 8011B4E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1395DC 8011B4EC 00A08821 */  addu       $s1, $a1, $zero
/* 1395E0 8011B4F0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1395E4 8011B4F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1395E8 8011B4F8 8E500004 */  lw         $s0, 0x4($s2)
.Lmenu_8011B4FC:
/* 1395EC 8011B4FC 12000009 */  beqz       $s0, .Lmenu_8011B524
/* 1395F0 8011B500 02202821 */   addu      $a1, $s1, $zero
/* 1395F4 8011B504 8E020054 */  lw         $v0, 0x54($s0)
/* 1395F8 8011B508 84440030 */  lh         $a0, 0x30($v0)
/* 1395FC 8011B50C 8C420034 */  lw         $v0, 0x34($v0)
/* 139600 8011B510 0040F809 */  jalr       $v0
/* 139604 8011B514 02042021 */   addu      $a0, $s0, $a0
/* 139608 8011B518 8E100010 */  lw         $s0, 0x10($s0)
/* 13960C 8011B51C 08046D3F */  j          .Lmenu_8011B4FC
/* 139610 8011B520 00000000 */   nop
.Lmenu_8011B524:
/* 139614 8011B524 02402021 */  addu       $a0, $s2, $zero
/* 139618 8011B528 0C0493A4 */  jal        func_menu_80124E90
/* 13961C 8011B52C 02202821 */   addu      $a1, $s1, $zero
/* 139620 8011B530 8FBF001C */  lw         $ra, 0x1C($sp)
/* 139624 8011B534 8FB20018 */  lw         $s2, 0x18($sp)
/* 139628 8011B538 8FB10014 */  lw         $s1, 0x14($sp)
/* 13962C 8011B53C 8FB00010 */  lw         $s0, 0x10($sp)
/* 139630 8011B540 03E00008 */  jr         $ra
/* 139634 8011B544 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011B548
/* 139638 8011B548 03E00008 */  jr         $ra
/* 13963C 8011B54C 00000000 */   nop

glabel func_menu_8011B550
/* 139640 8011B550 03E00008 */  jr         $ra
/* 139644 8011B554 00000000 */   nop

glabel func_menu_8011B558
/* 139648 8011B558 03E00008 */  jr         $ra
/* 13964C 8011B55C 00001021 */   addu      $v0, $zero, $zero

glabel func_menu_8011B560
/* 139650 8011B560 8C820068 */  lw         $v0, 0x68($a0)
/* 139654 8011B564 03E00008 */  jr         $ra
/* 139658 8011B568 00000000 */   nop

glabel func_menu_8011B56C
/* 13965C 8011B56C 8C82006C */  lw         $v0, 0x6C($a0)
/* 139660 8011B570 03E00008 */  jr         $ra
/* 139664 8011B574 00000000 */   nop

glabel func_menu_8011B578
/* 139668 8011B578 8C820070 */  lw         $v0, 0x70($a0)
/* 13966C 8011B57C 03E00008 */  jr         $ra
/* 139670 8011B580 00000000 */   nop
