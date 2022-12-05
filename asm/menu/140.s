.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800E73D0
/* 1054C0 800E73D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1054C4 800E73D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1054C8 800E73D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1054CC 800E73DC 0C038384 */  jal        func_menu_800E0E10
/* 1054D0 800E73E0 00808021 */   addu      $s0, $a0, $zero
/* 1054D4 800E73E4 3C02800D */  lui        $v0, %hi(D_menu_800CB360)
/* 1054D8 800E73E8 2442B360 */  addiu      $v0, $v0, %lo(D_menu_800CB360)
/* 1054DC 800E73EC 02002021 */  addu       $a0, $s0, $zero
/* 1054E0 800E73F0 0C039D03 */  jal        func_menu_800E740C
/* 1054E4 800E73F4 AE020010 */   sw        $v0, 0x10($s0)
/* 1054E8 800E73F8 02001021 */  addu       $v0, $s0, $zero
/* 1054EC 800E73FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1054F0 800E7400 8FB00010 */  lw         $s0, 0x10($sp)
/* 1054F4 800E7404 03E00008 */  jr         $ra
/* 1054F8 800E7408 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E740C
/* 1054FC 800E740C AC800004 */  sw         $zero, 0x4($a0)
/* 105500 800E7410 AC800014 */  sw         $zero, 0x14($a0)
/* 105504 800E7414 AC800018 */  sw         $zero, 0x18($a0)
/* 105508 800E7418 AC80001C */  sw         $zero, 0x1C($a0)
/* 10550C 800E741C AC800020 */  sw         $zero, 0x20($a0)
/* 105510 800E7420 AC800024 */  sw         $zero, 0x24($a0)
/* 105514 800E7424 AC800028 */  sw         $zero, 0x28($a0)
/* 105518 800E7428 AC80002C */  sw         $zero, 0x2C($a0)
/* 10551C 800E742C AC800030 */  sw         $zero, 0x30($a0)
/* 105520 800E7430 AC800034 */  sw         $zero, 0x34($a0)
/* 105524 800E7434 AC800038 */  sw         $zero, 0x38($a0)
/* 105528 800E7438 AC80003C */  sw         $zero, 0x3C($a0)
/* 10552C 800E743C AC800040 */  sw         $zero, 0x40($a0)
/* 105530 800E7440 03E00008 */  jr         $ra
/* 105534 800E7444 AC800044 */   sw        $zero, 0x44($a0)

glabel func_menu_800E7448
/* 105538 800E7448 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10553C 800E744C AFB10014 */  sw         $s1, 0x14($sp)
/* 105540 800E7450 00808821 */  addu       $s1, $a0, $zero
/* 105544 800E7454 AFB00010 */  sw         $s0, 0x10($sp)
/* 105548 800E7458 00A08021 */  addu       $s0, $a1, $zero
/* 10554C 800E745C AFB20018 */  sw         $s2, 0x18($sp)
/* 105550 800E7460 00C09021 */  addu       $s2, $a2, $zero
/* 105554 800E7464 02002021 */  addu       $a0, $s0, $zero
/* 105558 800E7468 AFBF001C */  sw         $ra, 0x1C($sp)
/* 10555C 800E746C 0C0026F4 */  jal        func_80009BD0
/* 105560 800E7470 24050005 */   addiu     $a1, $zero, 0x5
.Lmenu_800E7474:
/* 105564 800E7474 8E020028 */  lw         $v0, 0x28($s0)
/* 105568 800E7478 844400A0 */  lh         $a0, 0xA0($v0)
/* 10556C 800E747C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 105570 800E7480 0040F809 */  jalr       $v0
/* 105574 800E7484 02042021 */   addu      $a0, $s0, $a0
/* 105578 800E7488 00403821 */  addu       $a3, $v0, $zero
/* 10557C 800E748C 24020006 */  addiu      $v0, $zero, 0x6
/* 105580 800E7490 10E20031 */  beq        $a3, $v0, .Lmenu_800E7558
/* 105584 800E7494 2402002D */   addiu     $v0, $zero, 0x2D
/* 105588 800E7498 10E20016 */  beq        $a3, $v0, .Lmenu_800E74F4
/* 10558C 800E749C 2CE2002E */   sltiu     $v0, $a3, 0x2E
/* 105590 800E74A0 10400005 */  beqz       $v0, .Lmenu_800E74B8
/* 105594 800E74A4 2402002C */   addiu     $v0, $zero, 0x2C
/* 105598 800E74A8 10E20008 */  beq        $a3, $v0, .Lmenu_800E74CC
/* 10559C 800E74AC 00000000 */   nop
/* 1055A0 800E74B0 08039D51 */  j          .Lmenu_800E7544
/* 1055A4 800E74B4 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800E74B8:
/* 1055A8 800E74B8 2402002E */  addiu      $v0, $zero, 0x2E
/* 1055AC 800E74BC 10E20017 */  beq        $a3, $v0, .Lmenu_800E751C
/* 1055B0 800E74C0 00000000 */   nop
/* 1055B4 800E74C4 08039D51 */  j          .Lmenu_800E7544
/* 1055B8 800E74C8 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800E74CC:
/* 1055BC 800E74CC 0C002680 */  jal        func_80009A00
/* 1055C0 800E74D0 02002021 */   addu      $a0, $s0, $zero
/* 1055C4 800E74D4 02002021 */  addu       $a0, $s0, $zero
/* 1055C8 800E74D8 0C002680 */  jal        func_80009A00
/* 1055CC 800E74DC AE220018 */   sw        $v0, 0x18($s1)
/* 1055D0 800E74E0 02002021 */  addu       $a0, $s0, $zero
/* 1055D4 800E74E4 0C002680 */  jal        func_80009A00
/* 1055D8 800E74E8 AE22001C */   sw        $v0, 0x1C($s1)
/* 1055DC 800E74EC 08039D1D */  j          .Lmenu_800E7474
/* 1055E0 800E74F0 AE220020 */   sw        $v0, 0x20($s1)
.Lmenu_800E74F4:
/* 1055E4 800E74F4 0C002680 */  jal        func_80009A00
/* 1055E8 800E74F8 02002021 */   addu      $a0, $s0, $zero
/* 1055EC 800E74FC 02002021 */  addu       $a0, $s0, $zero
/* 1055F0 800E7500 0C002680 */  jal        func_80009A00
/* 1055F4 800E7504 AE220024 */   sw        $v0, 0x24($s1)
/* 1055F8 800E7508 02002021 */  addu       $a0, $s0, $zero
/* 1055FC 800E750C 0C002680 */  jal        func_80009A00
/* 105600 800E7510 AE220028 */   sw        $v0, 0x28($s1)
/* 105604 800E7514 08039D1D */  j          .Lmenu_800E7474
/* 105608 800E7518 AE22002C */   sw        $v0, 0x2C($s1)
.Lmenu_800E751C:
/* 10560C 800E751C 0C0025F8 */  jal        func_800097E0
/* 105610 800E7520 02002021 */   addu      $a0, $s0, $zero
/* 105614 800E7524 02002021 */  addu       $a0, $s0, $zero
/* 105618 800E7528 0C0025F8 */  jal        func_800097E0
/* 10561C 800E752C E620003C */   swc1      $f0, 0x3C($s1)
/* 105620 800E7530 02002021 */  addu       $a0, $s0, $zero
/* 105624 800E7534 0C0025F8 */  jal        func_800097E0
/* 105628 800E7538 E6200040 */   swc1      $f0, 0x40($s1)
/* 10562C 800E753C 08039D1D */  j          .Lmenu_800E7474
/* 105630 800E7540 E6200044 */   swc1      $f0, 0x44($s1)
.Lmenu_800E7544:
/* 105634 800E7544 02002821 */  addu       $a1, $s0, $zero
/* 105638 800E7548 0C038462 */  jal        func_menu_800E1188
/* 10563C 800E754C 02403021 */   addu      $a2, $s2, $zero
/* 105640 800E7550 08039D1D */  j          .Lmenu_800E7474
/* 105644 800E7554 00000000 */   nop
.Lmenu_800E7558:
/* 105648 800E7558 8FBF001C */  lw         $ra, 0x1C($sp)
/* 10564C 800E755C 8FB20018 */  lw         $s2, 0x18($sp)
/* 105650 800E7560 8FB10014 */  lw         $s1, 0x14($sp)
/* 105654 800E7564 8FB00010 */  lw         $s0, 0x10($sp)
/* 105658 800E7568 03E00008 */  jr         $ra
/* 10565C 800E756C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E7570
/* 105660 800E7570 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 105664 800E7574 AFB00010 */  sw         $s0, 0x10($sp)
/* 105668 800E7578 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10566C 800E757C 0C039D03 */  jal        func_menu_800E740C
/* 105670 800E7580 00808021 */   addu      $s0, $a0, $zero
/* 105674 800E7584 0C03839D */  jal        func_menu_800E0E74
/* 105678 800E7588 02002021 */   addu      $a0, $s0, $zero
/* 10567C 800E758C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 105680 800E7590 8FB00010 */  lw         $s0, 0x10($sp)
/* 105684 800E7594 03E00008 */  jr         $ra
/* 105688 800E7598 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E759C
/* 10568C 800E759C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 105690 800E75A0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 105694 800E75A4 8C820014 */  lw         $v0, 0x14($a0)
/* 105698 800E75A8 1440000F */  bnez       $v0, .Lmenu_800E75E8
/* 10569C 800E75AC 00000000 */   nop
/* 1056A0 800E75B0 8C820004 */  lw         $v0, 0x4($a0)
/* 1056A4 800E75B4 1040000C */  beqz       $v0, .Lmenu_800E75E8
/* 1056A8 800E75B8 24020001 */   addiu     $v0, $zero, 0x1
/* 1056AC 800E75BC C4800024 */  lwc1       $f0, 0x24($a0)
/* 1056B0 800E75C0 46800020 */  cvt.s.w    $f0, $f0
/* 1056B4 800E75C4 E4800030 */  swc1       $f0, 0x30($a0)
/* 1056B8 800E75C8 C4800028 */  lwc1       $f0, 0x28($a0)
/* 1056BC 800E75CC 46800020 */  cvt.s.w    $f0, $f0
/* 1056C0 800E75D0 E4800034 */  swc1       $f0, 0x34($a0)
/* 1056C4 800E75D4 C480002C */  lwc1       $f0, 0x2C($a0)
/* 1056C8 800E75D8 46800020 */  cvt.s.w    $f0, $f0
/* 1056CC 800E75DC AC820014 */  sw         $v0, 0x14($a0)
/* 1056D0 800E75E0 0C039DC6 */  jal        func_menu_800E7718
/* 1056D4 800E75E4 E4800038 */   swc1      $f0, 0x38($a0)
.Lmenu_800E75E8:
/* 1056D8 800E75E8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1056DC 800E75EC 03E00008 */  jr         $ra
/* 1056E0 800E75F0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E75F4
/* 1056E4 800E75F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1056E8 800E75F8 00801821 */  addu       $v1, $a0, $zero
/* 1056EC 800E75FC AFBF0010 */  sw         $ra, 0x10($sp)
/* 1056F0 800E7600 8C620014 */  lw         $v0, 0x14($v1)
/* 1056F4 800E7604 14400009 */  bnez       $v0, .Lmenu_800E762C
/* 1056F8 800E7608 00000000 */   nop
/* 1056FC 800E760C 8C620004 */  lw         $v0, 0x4($v1)
/* 105700 800E7610 50400001 */  beql       $v0, $zero, .Lmenu_800E7618
/* 105704 800E7614 AC650004 */   sw        $a1, 0x4($v1)
.Lmenu_800E7618:
/* 105708 800E7618 8C620010 */  lw         $v0, 0x10($v1)
/* 10570C 800E761C 84440010 */  lh         $a0, 0x10($v0)
/* 105710 800E7620 8C420014 */  lw         $v0, 0x14($v0)
/* 105714 800E7624 0040F809 */  jalr       $v0
/* 105718 800E7628 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E762C:
/* 10571C 800E762C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 105720 800E7630 03E00008 */  jr         $ra
/* 105724 800E7634 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E7638
/* 105728 800E7638 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10572C 800E763C AFBF0010 */  sw         $ra, 0x10($sp)
/* 105730 800E7640 8C820014 */  lw         $v0, 0x14($a0)
/* 105734 800E7644 10400009 */  beqz       $v0, .Lmenu_800E766C
/* 105738 800E7648 00000000 */   nop
/* 10573C 800E764C 8C830004 */  lw         $v1, 0x4($a0)
/* 105740 800E7650 10600006 */  beqz       $v1, .Lmenu_800E766C
/* 105744 800E7654 AC800014 */   sw        $zero, 0x14($a0)
/* 105748 800E7658 8C620024 */  lw         $v0, 0x24($v1)
/* 10574C 800E765C 84440058 */  lh         $a0, 0x58($v0)
/* 105750 800E7660 8C42005C */  lw         $v0, 0x5C($v0)
/* 105754 800E7664 0040F809 */  jalr       $v0
/* 105758 800E7668 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E766C:
/* 10575C 800E766C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 105760 800E7670 03E00008 */  jr         $ra
/* 105764 800E7674 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E7678
/* 105768 800E7678 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10576C 800E767C AFBF0010 */  sw         $ra, 0x10($sp)
/* 105770 800E7680 8C820014 */  lw         $v0, 0x14($a0)
/* 105774 800E7684 44851000 */  mtc1       $a1, $f2
/* 105778 800E7688 10400020 */  beqz       $v0, .Lmenu_800E770C
/* 10577C 800E768C 00000000 */   nop
/* 105780 800E7690 8C820004 */  lw         $v0, 0x4($a0)
/* 105784 800E7694 1040001D */  beqz       $v0, .Lmenu_800E770C
/* 105788 800E7698 00000000 */   nop
/* 10578C 800E769C C480003C */  lwc1       $f0, 0x3C($a0)
/* 105790 800E76A0 46001182 */  mul.s      $f6, $f2, $f0
/* 105794 800E76A4 C4800040 */  lwc1       $f0, 0x40($a0)
/* 105798 800E76A8 46001202 */  mul.s      $f8, $f2, $f0
/* 10579C 800E76AC C4800044 */  lwc1       $f0, 0x44($a0)
/* 1057A0 800E76B0 46001282 */  mul.s      $f10, $f2, $f0
/* 1057A4 800E76B4 4600330D */  trunc.w.s  $f12, $f6
/* 1057A8 800E76B8 44026000 */  mfc1       $v0, $f12
/* 1057AC 800E76BC 4600430D */  trunc.w.s  $f12, $f8
/* 1057B0 800E76C0 44036000 */  mfc1       $v1, $f12
/* 1057B4 800E76C4 4600530D */  trunc.w.s  $f12, $f10
/* 1057B8 800E76C8 44056000 */  mfc1       $a1, $f12
/* 1057BC 800E76CC 14400005 */  bnez       $v0, .Lmenu_800E76E4
/* 1057C0 800E76D0 00000000 */   nop
/* 1057C4 800E76D4 14600003 */  bnez       $v1, .Lmenu_800E76E4
/* 1057C8 800E76D8 00000000 */   nop
/* 1057CC 800E76DC 10A0000B */  beqz       $a1, .Lmenu_800E770C
/* 1057D0 800E76E0 00000000 */   nop
.Lmenu_800E76E4:
/* 1057D4 800E76E4 C4840030 */  lwc1       $f4, 0x30($a0)
/* 1057D8 800E76E8 46062100 */  add.s      $f4, $f4, $f6
/* 1057DC 800E76EC C4820034 */  lwc1       $f2, 0x34($a0)
/* 1057E0 800E76F0 46081080 */  add.s      $f2, $f2, $f8
/* 1057E4 800E76F4 C4800038 */  lwc1       $f0, 0x38($a0)
/* 1057E8 800E76F8 460A0000 */  add.s      $f0, $f0, $f10
/* 1057EC 800E76FC E4840030 */  swc1       $f4, 0x30($a0)
/* 1057F0 800E7700 E4820034 */  swc1       $f2, 0x34($a0)
/* 1057F4 800E7704 0C039DC6 */  jal        func_menu_800E7718
/* 1057F8 800E7708 E4800038 */   swc1      $f0, 0x38($a0)
.Lmenu_800E770C:
/* 1057FC 800E770C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 105800 800E7710 03E00008 */  jr         $ra
/* 105804 800E7714 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E7718
/* 105808 800E7718 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10580C 800E771C AFBF0030 */  sw         $ra, 0x30($sp)
/* 105810 800E7720 8C820018 */  lw         $v0, 0x18($a0)
/* 105814 800E7724 AFA20010 */  sw         $v0, 0x10($sp)
/* 105818 800E7728 8C82001C */  lw         $v0, 0x1C($a0)
/* 10581C 800E772C AFA20014 */  sw         $v0, 0x14($sp)
/* 105820 800E7730 8C820020 */  lw         $v0, 0x20($a0)
/* 105824 800E7734 AFA0001C */  sw         $zero, 0x1C($sp)
/* 105828 800E7738 AFA20018 */  sw         $v0, 0x18($sp)
/* 10582C 800E773C C4800030 */  lwc1       $f0, 0x30($a0)
/* 105830 800E7740 4600008D */  trunc.w.s  $f2, $f0
/* 105834 800E7744 E7A20020 */  swc1       $f2, 0x20($sp)
/* 105838 800E7748 C4800034 */  lwc1       $f0, 0x34($a0)
/* 10583C 800E774C 4600008D */  trunc.w.s  $f2, $f0
/* 105840 800E7750 E7A20024 */  swc1       $f2, 0x24($sp)
/* 105844 800E7754 C4800038 */  lwc1       $f0, 0x38($a0)
/* 105848 800E7758 AFA0002C */  sw         $zero, 0x2C($sp)
/* 10584C 800E775C 4600008D */  trunc.w.s  $f2, $f0
/* 105850 800E7760 E7A20028 */  swc1       $f2, 0x28($sp)
/* 105854 800E7764 8C820004 */  lw         $v0, 0x4($a0)
/* 105858 800E7768 8C430024 */  lw         $v1, 0x24($v0)
/* 10585C 800E776C 84640050 */  lh         $a0, 0x50($v1)
/* 105860 800E7770 00442021 */  addu       $a0, $v0, $a0
/* 105864 800E7774 8C620054 */  lw         $v0, 0x54($v1)
/* 105868 800E7778 0040F809 */  jalr       $v0
/* 10586C 800E777C 27A50010 */   addiu     $a1, $sp, 0x10
/* 105870 800E7780 8FBF0030 */  lw         $ra, 0x30($sp)
/* 105874 800E7784 03E00008 */  jr         $ra
/* 105878 800E7788 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E778C
/* 10587C 800E778C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 105880 800E7790 AFBF0010 */  sw         $ra, 0x10($sp)
/* 105884 800E7794 0C038391 */  jal        func_menu_800E0E44
/* 105888 800E7798 00000000 */   nop
/* 10588C 800E779C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 105890 800E77A0 03E00008 */  jr         $ra
/* 105894 800E77A4 27BD0018 */   addiu     $sp, $sp, 0x18
