.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800F73C0
/* 1154B0 800F73C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1154B4 800F73C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1154B8 800F73C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1154BC 800F73CC 0C04639C */  jal        func_menu_80118E70
/* 1154C0 800F73D0 00808021 */   addu      $s0, $a0, $zero
/* 1154C4 800F73D4 26040028 */  addiu      $a0, $s0, 0x28
/* 1154C8 800F73D8 3C02800D */  lui        $v0, %hi(D_menu_800CC690)
/* 1154CC 800F73DC 2442C690 */  addiu      $v0, $v0, %lo(D_menu_800CC690)
/* 1154D0 800F73E0 0C035E1D */  jal        func_menu_800D7874
/* 1154D4 800F73E4 AE020018 */   sw        $v0, 0x18($s0)
/* 1154D8 800F73E8 0C03B56C */  jal        func_menu_800ED5B0
/* 1154DC 800F73EC 26040058 */   addiu     $a0, $s0, 0x58
/* 1154E0 800F73F0 0C01955C */  jal        func_80065570
/* 1154E4 800F73F4 260400A8 */   addiu     $a0, $s0, 0xA8
/* 1154E8 800F73F8 0C016038 */  jal        func_800580E0
/* 1154EC 800F73FC 260401A4 */   addiu     $a0, $s0, 0x1A4
/* 1154F0 800F7400 0C03B3B4 */  jal        func_menu_800ECED0
/* 1154F4 800F7404 2604023C */   addiu     $a0, $s0, 0x23C
/* 1154F8 800F7408 00002021 */  addu       $a0, $zero, $zero
/* 1154FC 800F740C 02001821 */  addu       $v1, $s0, $zero
/* 115500 800F7410 3C01800D */  lui        $at, %hi(D_menu_800CC5D0)
/* 115504 800F7414 C420C5D0 */  lwc1       $f0, %lo(D_menu_800CC5D0)($at)
/* 115508 800F7418 3C01800D */  lui        $at, %hi(D_menu_800CC5D4)
/* 11550C 800F741C C424C5D4 */  lwc1       $f4, %lo(D_menu_800CC5D4)($at)
/* 115510 800F7420 3C01800D */  lui        $at, %hi(D_menu_800CC5D8)
/* 115514 800F7424 C422C5D8 */  lwc1       $f2, %lo(D_menu_800CC5D8)($at)
.Lmenu_800F7428:
/* 115518 800F7428 E46002A8 */  swc1       $f0, 0x2A8($v1)
/* 11551C 800F742C 46040000 */  add.s      $f0, $f0, $f4
/* 115520 800F7430 4600103E */  c.le.s     $f2, $f0
/* 115524 800F7434 00000000 */  nop
/* 115528 800F7438 45030001 */  bc1tl      .Lmenu_800F7440
/* 11552C 800F743C 46020001 */   sub.s     $f0, $f0, $f2
.Lmenu_800F7440:
/* 115530 800F7440 24840001 */  addiu      $a0, $a0, 0x1
/* 115534 800F7444 28820008 */  slti       $v0, $a0, 0x8
/* 115538 800F7448 1440FFF7 */  bnez       $v0, .Lmenu_800F7428
/* 11553C 800F744C 24630004 */   addiu     $v1, $v1, 0x4
/* 115540 800F7450 0C03DD33 */  jal        func_menu_800F74CC
/* 115544 800F7454 02002021 */   addu      $a0, $s0, $zero
/* 115548 800F7458 02001021 */  addu       $v0, $s0, $zero
/* 11554C 800F745C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 115550 800F7460 8FB00010 */  lw         $s0, 0x10($sp)
/* 115554 800F7464 03E00008 */  jr         $ra
/* 115558 800F7468 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F746C
/* 11555C 800F746C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 115560 800F7470 AFB00010 */  sw         $s0, 0x10($sp)
/* 115564 800F7474 00808021 */  addu       $s0, $a0, $zero
/* 115568 800F7478 AFB10014 */  sw         $s1, 0x14($sp)
/* 11556C 800F747C 00A08821 */  addu       $s1, $a1, $zero
/* 115570 800F7480 3C02800D */  lui        $v0, %hi(D_menu_800CC690)
/* 115574 800F7484 2442C690 */  addiu      $v0, $v0, %lo(D_menu_800CC690)
/* 115578 800F7488 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11557C 800F748C 0C03DD85 */  jal        func_menu_800F7614
/* 115580 800F7490 AE020018 */   sw        $v0, 0x18($s0)
/* 115584 800F7494 26040058 */  addiu      $a0, $s0, 0x58
/* 115588 800F7498 0C03B579 */  jal        func_menu_800ED5E4
/* 11558C 800F749C 24050002 */   addiu     $a1, $zero, 0x2
/* 115590 800F74A0 26040028 */  addiu      $a0, $s0, 0x28
/* 115594 800F74A4 0C035E27 */  jal        func_menu_800D789C
/* 115598 800F74A8 24050002 */   addiu     $a1, $zero, 0x2
/* 11559C 800F74AC 02002021 */  addu       $a0, $s0, $zero
/* 1155A0 800F74B0 0C0463A9 */  jal        func_menu_80118EA4
/* 1155A4 800F74B4 02202821 */   addu      $a1, $s1, $zero
/* 1155A8 800F74B8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1155AC 800F74BC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1155B0 800F74C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1155B4 800F74C4 03E00008 */  jr         $ra
/* 1155B8 800F74C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F74CC
/* 1155BC 800F74CC 44800000 */  mtc1       $zero, $f0
/* 1155C0 800F74D0 24020001 */  addiu      $v0, $zero, 0x1
/* 1155C4 800F74D4 AC800024 */  sw         $zero, 0x24($a0)
/* 1155C8 800F74D8 AC800238 */  sw         $zero, 0x238($a0)
/* 1155CC 800F74DC AC80019C */  sw         $zero, 0x19C($a0)
/* 1155D0 800F74E0 AC80001C */  sw         $zero, 0x1C($a0)
/* 1155D4 800F74E4 AC820244 */  sw         $v0, 0x244($a0)
/* 1155D8 800F74E8 AC800240 */  sw         $zero, 0x240($a0)
/* 1155DC 800F74EC AC800248 */  sw         $zero, 0x248($a0)
/* 1155E0 800F74F0 A0800298 */  sb         $zero, 0x298($a0)
/* 1155E4 800F74F4 AC800264 */  sw         $zero, 0x264($a0)
/* 1155E8 800F74F8 AC800268 */  sw         $zero, 0x268($a0)
/* 1155EC 800F74FC A0800278 */  sb         $zero, 0x278($a0)
/* 1155F0 800F7500 A0800290 */  sb         $zero, 0x290($a0)
/* 1155F4 800F7504 AC80028C */  sw         $zero, 0x28C($a0)
/* 1155F8 800F7508 AC8002A0 */  sw         $zero, 0x2A0($a0)
/* 1155FC 800F750C AC8002A4 */  sw         $zero, 0x2A4($a0)
/* 115600 800F7510 AC800294 */  sw         $zero, 0x294($a0)
/* 115604 800F7514 E4800258 */  swc1       $f0, 0x258($a0)
/* 115608 800F7518 E4800254 */  swc1       $f0, 0x254($a0)
/* 11560C 800F751C E4800250 */  swc1       $f0, 0x250($a0)
/* 115610 800F7520 E480026C */  swc1       $f0, 0x26C($a0)
/* 115614 800F7524 E4800270 */  swc1       $f0, 0x270($a0)
/* 115618 800F7528 E4800274 */  swc1       $f0, 0x274($a0)
/* 11561C 800F752C E480029C */  swc1       $f0, 0x29C($a0)
/* 115620 800F7530 E4800288 */  swc1       $f0, 0x288($a0)
/* 115624 800F7534 E48002C8 */  swc1       $f0, 0x2C8($a0)
/* 115628 800F7538 03E00008 */  jr         $ra
/* 11562C 800F753C E48002CC */   swc1      $f0, 0x2CC($a0)

glabel func_menu_800F7540
/* 115630 800F7540 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 115634 800F7544 AFB00010 */  sw         $s0, 0x10($sp)
/* 115638 800F7548 00808021 */  addu       $s0, $a0, $zero
/* 11563C 800F754C AFBF0018 */  sw         $ra, 0x18($sp)
/* 115640 800F7550 AFB10014 */  sw         $s1, 0x14($sp)
/* 115644 800F7554 8E020018 */  lw         $v0, 0x18($s0)
/* 115648 800F7558 00A08821 */  addu       $s1, $a1, $zero
/* 11564C 800F755C 84440018 */  lh         $a0, 0x18($v0)
/* 115650 800F7560 8C42001C */  lw         $v0, 0x1C($v0)
/* 115654 800F7564 0040F809 */  jalr       $v0
/* 115658 800F7568 02042021 */   addu      $a0, $s0, $a0
/* 11565C 800F756C 8E220018 */  lw         $v0, 0x18($s1)
/* 115660 800F7570 AE02001C */  sw         $v0, 0x1C($s0)
/* 115664 800F7574 8E220010 */  lw         $v0, 0x10($s1)
/* 115668 800F7578 AE020020 */  sw         $v0, 0x20($s0)
/* 11566C 800F757C 8E220014 */  lw         $v0, 0x14($s1)
/* 115670 800F7580 AE020024 */  sw         $v0, 0x24($s0)
/* 115674 800F7584 C620001C */  lwc1       $f0, 0x1C($s1)
/* 115678 800F7588 E6000250 */  swc1       $f0, 0x250($s0)
/* 11567C 800F758C C6200020 */  lwc1       $f0, 0x20($s1)
/* 115680 800F7590 02002021 */  addu       $a0, $s0, $zero
/* 115684 800F7594 E6000254 */  swc1       $f0, 0x254($s0)
/* 115688 800F7598 C6200024 */  lwc1       $f0, 0x24($s1)
/* 11568C 800F759C 02202821 */  addu       $a1, $s1, $zero
/* 115690 800F75A0 0C0463C4 */  jal        func_menu_80118F10
/* 115694 800F75A4 E6000258 */   swc1      $f0, 0x258($s0)
/* 115698 800F75A8 10400014 */  beqz       $v0, .Lmenu_800F75FC
/* 11569C 800F75AC 00000000 */   nop
/* 1156A0 800F75B0 8E25002C */  lw         $a1, 0x2C($s1)
/* 1156A4 800F75B4 0C03DDFA */  jal        func_menu_800F77E8
/* 1156A8 800F75B8 02002021 */   addu      $a0, $s0, $zero
/* 1156AC 800F75BC 0C03DE43 */  jal        func_menu_800F790C
/* 1156B0 800F75C0 02002021 */   addu      $a0, $s0, $zero
/* 1156B4 800F75C4 0C03DDB1 */  jal        func_menu_800F76C4
/* 1156B8 800F75C8 02002021 */   addu      $a0, $s0, $zero
/* 1156BC 800F75CC 0C03DDCE */  jal        func_menu_800F7738
/* 1156C0 800F75D0 02002021 */   addu      $a0, $s0, $zero
/* 1156C4 800F75D4 8E050024 */  lw         $a1, 0x24($s0)
/* 1156C8 800F75D8 26040028 */  addiu      $a0, $s0, 0x28
/* 1156CC 800F75DC 0C035E3F */  jal        func_menu_800D78FC
/* 1156D0 800F75E0 24A52CF8 */   addiu     $a1, $a1, 0x2CF8
/* 1156D4 800F75E4 02002021 */  addu       $a0, $s0, $zero
/* 1156D8 800F75E8 0C03DEB7 */  jal        func_menu_800F7ADC
/* 1156DC 800F75EC 24050001 */   addiu     $a1, $zero, 0x1
/* 1156E0 800F75F0 02002021 */  addu       $a0, $s0, $zero
/* 1156E4 800F75F4 0C03E04C */  jal        func_menu_800F8130
/* 1156E8 800F75F8 00002821 */   addu      $a1, $zero, $zero
.Lmenu_800F75FC:
/* 1156EC 800F75FC 8E020014 */  lw         $v0, 0x14($s0)
/* 1156F0 800F7600 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1156F4 800F7604 8FB10014 */  lw         $s1, 0x14($sp)
/* 1156F8 800F7608 8FB00010 */  lw         $s0, 0x10($sp)
/* 1156FC 800F760C 03E00008 */  jr         $ra
/* 115700 800F7610 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F7614
/* 115704 800F7614 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 115708 800F7618 AFB00010 */  sw         $s0, 0x10($sp)
/* 11570C 800F761C 00808021 */  addu       $s0, $a0, $zero
/* 115710 800F7620 AFBF0014 */  sw         $ra, 0x14($sp)
/* 115714 800F7624 8E020014 */  lw         $v0, 0x14($s0)
/* 115718 800F7628 10400022 */  beqz       $v0, .Lmenu_800F76B4
/* 11571C 800F762C 24020001 */   addiu     $v0, $zero, 0x1
/* 115720 800F7630 8E020200 */  lw         $v0, 0x200($s0)
/* 115724 800F7634 30420001 */  andi       $v0, $v0, 0x1
/* 115728 800F7638 10400008 */  beqz       $v0, .Lmenu_800F765C
/* 11572C 800F763C 00000000 */   nop
/* 115730 800F7640 8E030008 */  lw         $v1, 0x8($s0)
/* 115734 800F7644 8C620000 */  lw         $v0, 0x0($v1)
/* 115738 800F7648 8E050234 */  lw         $a1, 0x234($s0)
/* 11573C 800F764C 84440098 */  lh         $a0, 0x98($v0)
/* 115740 800F7650 8C42009C */  lw         $v0, 0x9C($v0)
/* 115744 800F7654 0040F809 */  jalr       $v0
/* 115748 800F7658 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F765C:
/* 11574C 800F765C 0C01958C */  jal        func_80065630
/* 115750 800F7660 260400A8 */   addiu     $a0, $s0, 0xA8
/* 115754 800F7664 8E05019C */  lw         $a1, 0x19C($s0)
/* 115758 800F7668 10A00007 */  beqz       $a1, .Lmenu_800F7688
/* 11575C 800F766C 00000000 */   nop
/* 115760 800F7670 8E030008 */  lw         $v1, 0x8($s0)
/* 115764 800F7674 8C620000 */  lw         $v0, 0x0($v1)
/* 115768 800F7678 844400A0 */  lh         $a0, 0xA0($v0)
/* 11576C 800F767C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 115770 800F7680 0040F809 */  jalr       $v0
/* 115774 800F7684 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F7688:
/* 115778 800F7688 8E050238 */  lw         $a1, 0x238($s0)
/* 11577C 800F768C 10A00007 */  beqz       $a1, .Lmenu_800F76AC
/* 115780 800F7690 00000000 */   nop
/* 115784 800F7694 8E030008 */  lw         $v1, 0x8($s0)
/* 115788 800F7698 8C620000 */  lw         $v0, 0x0($v1)
/* 11578C 800F769C 84440098 */  lh         $a0, 0x98($v0)
/* 115790 800F76A0 8C42009C */  lw         $v0, 0x9C($v0)
/* 115794 800F76A4 0040F809 */  jalr       $v0
/* 115798 800F76A8 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F76AC:
/* 11579C 800F76AC 0C0463DD */  jal        func_menu_80118F74
/* 1157A0 800F76B0 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800F76B4:
/* 1157A4 800F76B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1157A8 800F76B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1157AC 800F76BC 03E00008 */  jr         $ra
/* 1157B0 800F76C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F76C4
/* 1157B4 800F76C4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1157B8 800F76C8 AFB00020 */  sw         $s0, 0x20($sp)
/* 1157BC 800F76CC 00808021 */  addu       $s0, $a0, $zero
/* 1157C0 800F76D0 AFB10024 */  sw         $s1, 0x24($sp)
/* 1157C4 800F76D4 2611027C */  addiu      $s1, $s0, 0x27C
/* 1157C8 800F76D8 02202821 */  addu       $a1, $s1, $zero
/* 1157CC 800F76DC AFBF0028 */  sw         $ra, 0x28($sp)
/* 1157D0 800F76E0 0C03E50E */  jal        func_menu_800F9438
/* 1157D4 800F76E4 00003021 */   addu      $a2, $zero, $zero
/* 1157D8 800F76E8 C6000250 */  lwc1       $f0, 0x250($s0)
/* 1157DC 800F76EC 3C01800D */  lui        $at, %hi(D_menu_800CC5DC)
/* 1157E0 800F76F0 C422C5DC */  lwc1       $f2, %lo(D_menu_800CC5DC)($at)
/* 1157E4 800F76F4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1157E8 800F76F8 C6000254 */  lwc1       $f0, 0x254($s0)
/* 1157EC 800F76FC E7A00014 */  swc1       $f0, 0x14($sp)
/* 1157F0 800F7700 C6000258 */  lwc1       $f0, 0x258($s0)
/* 1157F4 800F7704 46020000 */  add.s      $f0, $f0, $f2
/* 1157F8 800F7708 02202821 */  addu       $a1, $s1, $zero
/* 1157FC 800F770C E7A00018 */  swc1       $f0, 0x18($sp)
/* 115800 800F7710 8E040010 */  lw         $a0, 0x10($s0)
/* 115804 800F7714 27A60010 */  addiu      $a2, $sp, 0x10
/* 115808 800F7718 A2000290 */  sb         $zero, 0x290($s0)
/* 11580C 800F771C 0C0441B2 */  jal        func_menu_801106C8
/* 115810 800F7720 AE000288 */   sw        $zero, 0x288($s0)
/* 115814 800F7724 8FBF0028 */  lw         $ra, 0x28($sp)
/* 115818 800F7728 8FB10024 */  lw         $s1, 0x24($sp)
/* 11581C 800F772C 8FB00020 */  lw         $s0, 0x20($sp)
/* 115820 800F7730 03E00008 */  jr         $ra
/* 115824 800F7734 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F7738
/* 115828 800F7738 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11582C 800F773C AFB00020 */  sw         $s0, 0x20($sp)
/* 115830 800F7740 00808021 */  addu       $s0, $a0, $zero
/* 115834 800F7744 AFBF0024 */  sw         $ra, 0x24($sp)
/* 115838 800F7748 8E030008 */  lw         $v1, 0x8($s0)
/* 11583C 800F774C 8C620000 */  lw         $v0, 0x0($v1)
/* 115840 800F7750 84440030 */  lh         $a0, 0x30($v0)
/* 115844 800F7754 8C420034 */  lw         $v0, 0x34($v0)
/* 115848 800F7758 0040F809 */  jalr       $v0
/* 11584C 800F775C 00642021 */   addu      $a0, $v1, $a0
/* 115850 800F7760 14400007 */  bnez       $v0, .Lmenu_800F7780
/* 115854 800F7764 AE020234 */   sw        $v0, 0x234($s0)
/* 115858 800F7768 3C04800D */  lui        $a0, %hi(D_menu_800CC5E0)
/* 11585C 800F776C 2484C5E0 */  addiu      $a0, $a0, %lo(D_menu_800CC5E0)
/* 115860 800F7770 00002821 */  addu       $a1, $zero, $zero
/* 115864 800F7774 00A03021 */  addu       $a2, $a1, $zero
/* 115868 800F7778 0C011ACF */  jal        func_80046B3C
/* 11586C 800F777C 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800F7780:
/* 115870 800F7780 24060002 */  addiu      $a2, $zero, 0x2
/* 115874 800F7784 8E020024 */  lw         $v0, 0x24($s0)
/* 115878 800F7788 8E040234 */  lw         $a0, 0x234($s0)
/* 11587C 800F778C 8C422CF0 */  lw         $v0, 0x2CF0($v0)
/* 115880 800F7790 8C83003C */  lw         $v1, 0x3C($a0)
/* 115884 800F7794 00023840 */  sll        $a3, $v0, 1
/* 115888 800F7798 84680048 */  lh         $t0, 0x48($v1)
/* 11588C 800F779C 00E23821 */  addu       $a3, $a3, $v0
/* 115890 800F77A0 AFA20010 */  sw         $v0, 0x10($sp)
/* 115894 800F77A4 24020064 */  addiu      $v0, $zero, 0x64
/* 115898 800F77A8 AFA20014 */  sw         $v0, 0x14($sp)
/* 11589C 800F77AC 24020005 */  addiu      $v0, $zero, 0x5
/* 1158A0 800F77B0 AFA20018 */  sw         $v0, 0x18($sp)
/* 1158A4 800F77B4 8E05000C */  lw         $a1, 0xC($s0)
/* 1158A8 800F77B8 8C62004C */  lw         $v0, 0x4C($v1)
/* 1158AC 800F77BC 0040F809 */  jalr       $v0
/* 1158B0 800F77C0 00882021 */   addu      $a0, $a0, $t0
/* 1158B4 800F77C4 8E050234 */  lw         $a1, 0x234($s0)
/* 1158B8 800F77C8 3C067CF0 */  lui        $a2, (0x7CF0BDC2 >> 16)
/* 1158BC 800F77CC 34C6BDC2 */  ori        $a2, $a2, (0x7CF0BDC2 & 0xFFFF)
/* 1158C0 800F77D0 0C016059 */  jal        func_80058164
/* 1158C4 800F77D4 260401A4 */   addiu     $a0, $s0, 0x1A4
/* 1158C8 800F77D8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1158CC 800F77DC 8FB00020 */  lw         $s0, 0x20($sp)
/* 1158D0 800F77E0 03E00008 */  jr         $ra
/* 1158D4 800F77E4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F77E8
/* 1158D8 800F77E8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1158DC 800F77EC AFB00020 */  sw         $s0, 0x20($sp)
/* 1158E0 800F77F0 00808021 */  addu       $s0, $a0, $zero
/* 1158E4 800F77F4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1158E8 800F77F8 8E030024 */  lw         $v1, 0x24($s0)
/* 1158EC 800F77FC 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 1158F0 800F7800 AC6245AC */  sw         $v0, 0x45AC($v1)
/* 1158F4 800F7804 8E040024 */  lw         $a0, 0x24($s0)
/* 1158F8 800F7808 27A50018 */  addiu      $a1, $sp, 0x18
/* 1158FC 800F780C 0C03BBD1 */  jal        func_menu_800EEF44
/* 115900 800F7810 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 115904 800F7814 27A50018 */  addiu      $a1, $sp, 0x18
/* 115908 800F7818 00003021 */  addu       $a2, $zero, $zero
/* 11590C 800F781C 8E040024 */  lw         $a0, 0x24($s0)
/* 115910 800F7820 00C03821 */  addu       $a3, $a2, $zero
/* 115914 800F7824 0C037746 */  jal        func_menu_800DDD18
/* 115918 800F7828 2484459C */   addiu     $a0, $a0, 0x459C
/* 11591C 800F782C 14400007 */  bnez       $v0, .Lmenu_800F784C
/* 115920 800F7830 AE020238 */   sw        $v0, 0x238($s0)
/* 115924 800F7834 3C04800D */  lui        $a0, %hi(D_menu_800CC5E0)
/* 115928 800F7838 2484C5E0 */  addiu      $a0, $a0, %lo(D_menu_800CC5E0)
/* 11592C 800F783C 00002821 */  addu       $a1, $zero, $zero
/* 115930 800F7840 00A03021 */  addu       $a2, $a1, $zero
/* 115934 800F7844 0C011ACF */  jal        func_80046B3C
/* 115938 800F7848 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800F784C:
/* 11593C 800F784C 27A60018 */  addiu      $a2, $sp, 0x18
/* 115940 800F7850 8E040024 */  lw         $a0, 0x24($s0)
/* 115944 800F7854 8E050238 */  lw         $a1, 0x238($s0)
/* 115948 800F7858 0C0377BF */  jal        func_menu_800DDEFC
/* 11594C 800F785C 2484459C */   addiu     $a0, $a0, 0x459C
/* 115950 800F7860 8E030008 */  lw         $v1, 0x8($s0)
/* 115954 800F7864 8C620000 */  lw         $v0, 0x0($v1)
/* 115958 800F7868 84440038 */  lh         $a0, 0x38($v0)
/* 11595C 800F786C 8C42003C */  lw         $v0, 0x3C($v0)
/* 115960 800F7870 0040F809 */  jalr       $v0
/* 115964 800F7874 00642021 */   addu      $a0, $v1, $a0
/* 115968 800F7878 8E040024 */  lw         $a0, 0x24($s0)
/* 11596C 800F787C 27A50018 */  addiu      $a1, $sp, 0x18
/* 115970 800F7880 AE02019C */  sw         $v0, 0x19C($s0)
/* 115974 800F7884 0C037778 */  jal        func_menu_800DDDE0
/* 115978 800F7888 2484459C */   addiu     $a0, $a0, 0x459C
/* 11597C 800F788C 8E06019C */  lw         $a2, 0x19C($s0)
/* 115980 800F7890 8CC30008 */  lw         $v1, 0x8($a2)
/* 115984 800F7894 00402821 */  addu       $a1, $v0, $zero
/* 115988 800F7898 84640030 */  lh         $a0, 0x30($v1)
/* 11598C 800F789C 8C620034 */  lw         $v0, 0x34($v1)
/* 115990 800F78A0 0040F809 */  jalr       $v0
/* 115994 800F78A4 00C42021 */   addu      $a0, $a2, $a0
/* 115998 800F78A8 8E02019C */  lw         $v0, 0x19C($s0)
/* 11599C 800F78AC 14400006 */  bnez       $v0, .Lmenu_800F78C8
/* 1159A0 800F78B0 00002821 */   addu      $a1, $zero, $zero
/* 1159A4 800F78B4 3C04800D */  lui        $a0, %hi(D_menu_800CC5E0)
/* 1159A8 800F78B8 2484C5E0 */  addiu      $a0, $a0, %lo(D_menu_800CC5E0)
/* 1159AC 800F78BC 00A03021 */  addu       $a2, $a1, $zero
/* 1159B0 800F78C0 0C011ACF */  jal        func_80046B3C
/* 1159B4 800F78C4 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800F78C8:
/* 1159B8 800F78C8 8E040024 */  lw         $a0, 0x24($s0)
/* 1159BC 800F78CC 27A50018 */  addiu      $a1, $sp, 0x18
/* 1159C0 800F78D0 0C03778A */  jal        func_menu_800DDE28
/* 1159C4 800F78D4 2484459C */   addiu     $a0, $a0, 0x459C
/* 1159C8 800F78D8 3C01800D */  lui        $at, %hi(D_menu_800CC5E4)
/* 1159CC 800F78DC C420C5E4 */  lwc1       $f0, %lo(D_menu_800CC5E4)($at)
/* 1159D0 800F78E0 AE0201A0 */  sw         $v0, 0x1A0($s0)
/* 1159D4 800F78E4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1159D8 800F78E8 8E050238 */  lw         $a1, 0x238($s0)
/* 1159DC 800F78EC 8E06019C */  lw         $a2, 0x19C($s0)
/* 1159E0 800F78F0 8E0701A0 */  lw         $a3, 0x1A0($s0)
/* 1159E4 800F78F4 0C01956B */  jal        func_800655AC
/* 1159E8 800F78F8 260400A8 */   addiu     $a0, $s0, 0xA8
/* 1159EC 800F78FC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1159F0 800F7900 8FB00020 */  lw         $s0, 0x20($sp)
/* 1159F4 800F7904 03E00008 */  jr         $ra
/* 1159F8 800F7908 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F790C
/* 1159FC 800F790C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 115A00 800F7910 AFB1002C */  sw         $s1, 0x2C($sp)
/* 115A04 800F7914 00808821 */  addu       $s1, $a0, $zero
/* 115A08 800F7918 27A40010 */  addiu      $a0, $sp, 0x10
/* 115A0C 800F791C 00002821 */  addu       $a1, $zero, $zero
/* 115A10 800F7920 24060018 */  addiu      $a2, $zero, 0x18
/* 115A14 800F7924 AFBF0030 */  sw         $ra, 0x30($sp)
/* 115A18 800F7928 0C000697 */  jal        func_80001A5C
/* 115A1C 800F792C AFB00028 */   sw        $s0, 0x28($sp)
/* 115A20 800F7930 8E220024 */  lw         $v0, 0x24($s1)
/* 115A24 800F7934 24423D3C */  addiu      $v0, $v0, 0x3D3C
/* 115A28 800F7938 AFA20010 */  sw         $v0, 0x10($sp)
/* 115A2C 800F793C 8E220024 */  lw         $v0, 0x24($s1)
/* 115A30 800F7940 24422CF8 */  addiu      $v0, $v0, 0x2CF8
/* 115A34 800F7944 AFA20014 */  sw         $v0, 0x14($sp)
/* 115A38 800F7948 8E220024 */  lw         $v0, 0x24($s1)
/* 115A3C 800F794C 262300A8 */  addiu      $v1, $s1, 0xA8
/* 115A40 800F7950 AFA3001C */  sw         $v1, 0x1C($sp)
/* 115A44 800F7954 24422D04 */  addiu      $v0, $v0, 0x2D04
/* 115A48 800F7958 AFA20018 */  sw         $v0, 0x18($sp)
/* 115A4C 800F795C 8E240024 */  lw         $a0, 0x24($s1)
/* 115A50 800F7960 27A50020 */  addiu      $a1, $sp, 0x20
/* 115A54 800F7964 0C03BC08 */  jal        func_menu_800EF020
/* 115A58 800F7968 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 115A5C 800F796C 26300058 */  addiu      $s0, $s1, 0x58
/* 115A60 800F7970 02002021 */  addu       $a0, $s0, $zero
/* 115A64 800F7974 0C03B5A2 */  jal        func_menu_800ED688
/* 115A68 800F7978 27A50010 */   addiu     $a1, $sp, 0x10
/* 115A6C 800F797C 02002021 */  addu       $a0, $s0, $zero
/* 115A70 800F7980 0C03B5E1 */  jal        func_menu_800ED784
/* 115A74 800F7984 26250250 */   addiu     $a1, $s1, 0x250
/* 115A78 800F7988 0C0166DC */  jal        func_80059B70
/* 115A7C 800F798C 02002021 */   addu      $a0, $s0, $zero
/* 115A80 800F7990 8FBF0030 */  lw         $ra, 0x30($sp)
/* 115A84 800F7994 8FB1002C */  lw         $s1, 0x2C($sp)
/* 115A88 800F7998 8FB00028 */  lw         $s0, 0x28($sp)
/* 115A8C 800F799C 03E00008 */  jr         $ra
/* 115A90 800F79A0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800F79A4
/* 115A94 800F79A4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 115A98 800F79A8 AFB10024 */  sw         $s1, 0x24($sp)
/* 115A9C 800F79AC 00C08821 */  addu       $s1, $a2, $zero
/* 115AA0 800F79B0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 115AA4 800F79B4 AFB00020 */  sw         $s0, 0x20($sp)
/* 115AA8 800F79B8 8C820010 */  lw         $v0, 0x10($a0)
/* 115AAC 800F79BC 00A02021 */  addu       $a0, $a1, $zero
/* 115AB0 800F79C0 8C500064 */  lw         $s0, 0x64($v0)
/* 115AB4 800F79C4 0C0165A4 */  jal        func_80059690
/* 115AB8 800F79C8 27A50010 */   addiu     $a1, $sp, 0x10
/* 115ABC 800F79CC 27A50010 */  addiu      $a1, $sp, 0x10
/* 115AC0 800F79D0 8E02011C */  lw         $v0, 0x11C($s0)
/* 115AC4 800F79D4 02203021 */  addu       $a2, $s1, $zero
/* 115AC8 800F79D8 84440048 */  lh         $a0, 0x48($v0)
/* 115ACC 800F79DC 8C42004C */  lw         $v0, 0x4C($v0)
/* 115AD0 800F79E0 0040F809 */  jalr       $v0
/* 115AD4 800F79E4 02042021 */   addu      $a0, $s0, $a0
/* 115AD8 800F79E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 115ADC 800F79EC 8FB10024 */  lw         $s1, 0x24($sp)
/* 115AE0 800F79F0 8FB00020 */  lw         $s0, 0x20($sp)
/* 115AE4 800F79F4 03E00008 */  jr         $ra
/* 115AE8 800F79F8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F79FC
/* 115AEC 800F79FC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 115AF0 800F7A00 AFB00028 */  sw         $s0, 0x28($sp)
/* 115AF4 800F7A04 00808021 */  addu       $s0, $a0, $zero
/* 115AF8 800F7A08 AFBF0034 */  sw         $ra, 0x34($sp)
/* 115AFC 800F7A0C AFB20030 */  sw         $s2, 0x30($sp)
/* 115B00 800F7A10 AFB1002C */  sw         $s1, 0x2C($sp)
/* 115B04 800F7A14 8E020024 */  lw         $v0, 0x24($s0)
/* 115B08 800F7A18 27A60010 */  addiu      $a2, $sp, 0x10
/* 115B0C 800F7A1C 8C522CBC */  lw         $s2, 0x2CBC($v0)
/* 115B10 800F7A20 27A70014 */  addiu      $a3, $sp, 0x14
/* 115B14 800F7A24 AE05025C */  sw         $a1, 0x25C($s0)
/* 115B18 800F7A28 0C0371AB */  jal        func_menu_800DC6AC
/* 115B1C 800F7A2C 02402021 */   addu      $a0, $s2, $zero
/* 115B20 800F7A30 24060001 */  addiu      $a2, $zero, 0x1
/* 115B24 800F7A34 8E040024 */  lw         $a0, 0x24($s0)
/* 115B28 800F7A38 8FA50010 */  lw         $a1, 0x10($sp)
/* 115B2C 800F7A3C 0C038006 */  jal        func_menu_800E0018
/* 115B30 800F7A40 24842CC0 */   addiu     $a0, $a0, 0x2CC0
/* 115B34 800F7A44 26110028 */  addiu      $s1, $s0, 0x28
/* 115B38 800F7A48 02202021 */  addu       $a0, $s1, $zero
/* 115B3C 800F7A4C 8FA60014 */  lw         $a2, 0x14($sp)
/* 115B40 800F7A50 8E470008 */  lw         $a3, 0x8($s2)
/* 115B44 800F7A54 0C035FA0 */  jal        func_menu_800D7E80
/* 115B48 800F7A58 00402821 */   addu      $a1, $v0, $zero
/* 115B4C 800F7A5C 02202021 */  addu       $a0, $s1, $zero
/* 115B50 800F7A60 27A50018 */  addiu      $a1, $sp, 0x18
/* 115B54 800F7A64 27A6001C */  addiu      $a2, $sp, 0x1C
/* 115B58 800F7A68 0C036165 */  jal        func_menu_800D8594
/* 115B5C 800F7A6C 27A70020 */   addiu     $a3, $sp, 0x20
/* 115B60 800F7A70 8E03000C */  lw         $v1, 0xC($s0)
/* 115B64 800F7A74 8C62012C */  lw         $v0, 0x12C($v1)
/* 115B68 800F7A78 844401E8 */  lh         $a0, 0x1E8($v0)
/* 115B6C 800F7A7C 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 115B70 800F7A80 0040F809 */  jalr       $v0
/* 115B74 800F7A84 00642021 */   addu      $a0, $v1, $a0
/* 115B78 800F7A88 8E040024 */  lw         $a0, 0x24($s0)
/* 115B7C 800F7A8C 24050001 */  addiu      $a1, $zero, 0x1
/* 115B80 800F7A90 0C03699C */  jal        func_menu_800DA670
/* 115B84 800F7A94 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 115B88 800F7A98 02202821 */  addu       $a1, $s1, $zero
/* 115B8C 800F7A9C 261101A4 */  addiu      $s1, $s0, 0x1A4
/* 115B90 800F7AA0 8E040024 */  lw         $a0, 0x24($s0)
/* 115B94 800F7AA4 02203021 */  addu       $a2, $s1, $zero
/* 115B98 800F7AA8 0C036D30 */  jal        func_menu_800DB4C0
/* 115B9C 800F7AAC 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 115BA0 800F7AB0 02202021 */  addu       $a0, $s1, $zero
/* 115BA4 800F7AB4 0C015962 */  jal        func_80056588
/* 115BA8 800F7AB8 26050250 */   addiu     $a1, $s0, 0x250
/* 115BAC 800F7ABC 24020001 */  addiu      $v0, $zero, 0x1
/* 115BB0 800F7AC0 AE020240 */  sw         $v0, 0x240($s0)
/* 115BB4 800F7AC4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 115BB8 800F7AC8 8FB20030 */  lw         $s2, 0x30($sp)
/* 115BBC 800F7ACC 8FB1002C */  lw         $s1, 0x2C($sp)
/* 115BC0 800F7AD0 8FB00028 */  lw         $s0, 0x28($sp)
/* 115BC4 800F7AD4 03E00008 */  jr         $ra
/* 115BC8 800F7AD8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800F7ADC
/* 115BCC 800F7ADC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 115BD0 800F7AE0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 115BD4 800F7AE4 A0850298 */  sb         $a1, 0x298($a0)
/* 115BD8 800F7AE8 80820298 */  lb         $v0, 0x298($a0)
/* 115BDC 800F7AEC 44850000 */  mtc1       $a1, $f0
/* 115BE0 800F7AF0 46800020 */  cvt.s.w    $f0, $f0
/* 115BE4 800F7AF4 E48002C8 */  swc1       $f0, 0x2C8($a0)
/* 115BE8 800F7AF8 00021080 */  sll        $v0, $v0, 2
/* 115BEC 800F7AFC 00821021 */  addu       $v0, $a0, $v0
/* 115BF0 800F7B00 8C4502A8 */  lw         $a1, 0x2A8($v0)
/* 115BF4 800F7B04 0C03DEC6 */  jal        func_menu_800F7B18
/* 115BF8 800F7B08 00000000 */   nop
/* 115BFC 800F7B0C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 115C00 800F7B10 03E00008 */  jr         $ra
/* 115C04 800F7B14 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F7B18
/* 115C08 800F7B18 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 115C0C 800F7B1C AFB10034 */  sw         $s1, 0x34($sp)
/* 115C10 800F7B20 00808821 */  addu       $s1, $a0, $zero
/* 115C14 800F7B24 27A40010 */  addiu      $a0, $sp, 0x10
/* 115C18 800F7B28 44850000 */  mtc1       $a1, $f0
/* 115C1C 800F7B2C 00802821 */  addu       $a1, $a0, $zero
/* 115C20 800F7B30 AFB00030 */  sw         $s0, 0x30($sp)
/* 115C24 800F7B34 27B00020 */  addiu      $s0, $sp, 0x20
/* 115C28 800F7B38 3C01800D */  lui        $at, %hi(D_menu_800CC5E8)
/* 115C2C 800F7B3C C422C5E8 */  lwc1       $f2, %lo(D_menu_800CC5E8)($at)
/* 115C30 800F7B40 44070000 */  mfc1       $a3, $f0
/* 115C34 800F7B44 02003021 */  addu       $a2, $s0, $zero
/* 115C38 800F7B48 AFBF0038 */  sw         $ra, 0x38($sp)
/* 115C3C 800F7B4C AFA00014 */  sw         $zero, 0x14($sp)
/* 115C40 800F7B50 AFA00018 */  sw         $zero, 0x18($sp)
/* 115C44 800F7B54 AFA00020 */  sw         $zero, 0x20($sp)
/* 115C48 800F7B58 AFA00024 */  sw         $zero, 0x24($sp)
/* 115C4C 800F7B5C E7A20010 */  swc1       $f2, 0x10($sp)
/* 115C50 800F7B60 0C0012FA */  jal        func_80004BE8
/* 115C54 800F7B64 E7A20028 */   swc1      $f2, 0x28($sp)
/* 115C58 800F7B68 26240058 */  addiu      $a0, $s1, 0x58
/* 115C5C 800F7B6C 27A50010 */  addiu      $a1, $sp, 0x10
/* 115C60 800F7B70 0C03B60D */  jal        func_menu_800ED834
/* 115C64 800F7B74 02003021 */   addu      $a2, $s0, $zero
/* 115C68 800F7B78 262401A4 */  addiu      $a0, $s1, 0x1A4
/* 115C6C 800F7B7C 27A50010 */  addiu      $a1, $sp, 0x10
/* 115C70 800F7B80 0C015729 */  jal        func_80055CA4
/* 115C74 800F7B84 02003021 */   addu      $a2, $s0, $zero
/* 115C78 800F7B88 8FBF0038 */  lw         $ra, 0x38($sp)
/* 115C7C 800F7B8C 8FB10034 */  lw         $s1, 0x34($sp)
/* 115C80 800F7B90 8FB00030 */  lw         $s0, 0x30($sp)
/* 115C84 800F7B94 03E00008 */  jr         $ra
/* 115C88 800F7B98 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800F7B9C
/* 115C8C 800F7B9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 115C90 800F7BA0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 115C94 800F7BA4 8C820248 */  lw         $v0, 0x248($a0)
/* 115C98 800F7BA8 44851000 */  mtc1       $a1, $f2
/* 115C9C 800F7BAC 30420001 */  andi       $v0, $v0, 0x1
/* 115CA0 800F7BB0 14400029 */  bnez       $v0, .Lmenu_800F7C58
/* 115CA4 800F7BB4 00001021 */   addu      $v0, $zero, $zero
/* 115CA8 800F7BB8 44802000 */  mtc1       $zero, $f4
/* 115CAC 800F7BBC 46041032 */  c.eq.s     $f2, $f4
/* 115CB0 800F7BC0 00000000 */  nop
/* 115CB4 800F7BC4 45010024 */  bc1t       .Lmenu_800F7C58
/* 115CB8 800F7BC8 00000000 */   nop
/* 115CBC 800F7BCC C48002C8 */  lwc1       $f0, 0x2C8($a0)
/* 115CC0 800F7BD0 46020080 */  add.s      $f2, $f0, $f2
/* 115CC4 800F7BD4 4604103C */  c.lt.s     $f2, $f4
/* 115CC8 800F7BD8 00000000 */  nop
/* 115CCC 800F7BDC 45000005 */  bc1f       .Lmenu_800F7BF4
/* 115CD0 800F7BE0 E48202C8 */   swc1      $f2, 0x2C8($a0)
/* 115CD4 800F7BE4 3C01800D */  lui        $at, %hi(D_menu_800CC5EC)
/* 115CD8 800F7BE8 C420C5EC */  lwc1       $f0, %lo(D_menu_800CC5EC)($at)
/* 115CDC 800F7BEC 0803DF04 */  j          .Lmenu_800F7C10
/* 115CE0 800F7BF0 46001000 */   add.s     $f0, $f2, $f0
.Lmenu_800F7BF4:
/* 115CE4 800F7BF4 3C01800D */  lui        $at, %hi(D_menu_800CC5F0)
/* 115CE8 800F7BF8 C420C5F0 */  lwc1       $f0, %lo(D_menu_800CC5F0)($at)
/* 115CEC 800F7BFC 4602003E */  c.le.s     $f0, $f2
/* 115CF0 800F7C00 00000000 */  nop
/* 115CF4 800F7C04 45000003 */  bc1f       .Lmenu_800F7C14
/* 115CF8 800F7C08 00000000 */   nop
/* 115CFC 800F7C0C 46001001 */  sub.s      $f0, $f2, $f0
.Lmenu_800F7C10:
/* 115D00 800F7C10 E48002C8 */  swc1       $f0, 0x2C8($a0)
.Lmenu_800F7C14:
/* 115D04 800F7C14 C48202C8 */  lwc1       $f2, 0x2C8($a0)
/* 115D08 800F7C18 4600118D */  trunc.w.s  $f6, $f2
/* 115D0C 800F7C1C 44023000 */  mfc1       $v0, $f6
/* 115D10 800F7C20 44820000 */  mtc1       $v0, $f0
/* 115D14 800F7C24 46800020 */  cvt.s.w    $f0, $f0
/* 115D18 800F7C28 46001081 */  sub.s      $f2, $f2, $f0
/* 115D1C 800F7C2C 3C01800D */  lui        $at, %hi(D_menu_800CC5F4)
/* 115D20 800F7C30 C420C5F4 */  lwc1       $f0, %lo(D_menu_800CC5F4)($at)
/* 115D24 800F7C34 46001082 */  mul.s      $f2, $f2, $f0
/* 115D28 800F7C38 00021080 */  sll        $v0, $v0, 2
/* 115D2C 800F7C3C 00821021 */  addu       $v0, $a0, $v0
/* 115D30 800F7C40 C44002A8 */  lwc1       $f0, 0x2A8($v0)
/* 115D34 800F7C44 46020000 */  add.s      $f0, $f0, $f2
/* 115D38 800F7C48 44050000 */  mfc1       $a1, $f0
/* 115D3C 800F7C4C 0C03DEC6 */  jal        func_menu_800F7B18
/* 115D40 800F7C50 E480029C */   swc1      $f0, 0x29C($a0)
/* 115D44 800F7C54 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F7C58:
/* 115D48 800F7C58 8FBF0010 */  lw         $ra, 0x10($sp)
/* 115D4C 800F7C5C 03E00008 */  jr         $ra
/* 115D50 800F7C60 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F7C64
/* 115D54 800F7C64 8C830248 */  lw         $v1, 0x248($a0)
/* 115D58 800F7C68 30620001 */  andi       $v0, $v1, 0x1
/* 115D5C 800F7C6C 10400003 */  beqz       $v0, .Lmenu_800F7C7C
/* 115D60 800F7C70 34620001 */   ori       $v0, $v1, 0x1
/* 115D64 800F7C74 03E00008 */  jr         $ra
/* 115D68 800F7C78 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F7C7C:
/* 115D6C 800F7C7C AC820248 */  sw         $v0, 0x248($a0)
/* 115D70 800F7C80 24020096 */  addiu      $v0, $zero, 0x96
/* 115D74 800F7C84 AC8202A0 */  sw         $v0, 0x2A0($a0)
/* 115D78 800F7C88 10C00006 */  beqz       $a2, .Lmenu_800F7CA4
/* 115D7C 800F7C8C AC8202A4 */   sw        $v0, 0x2A4($a0)
/* 115D80 800F7C90 80820298 */  lb         $v0, 0x298($a0)
/* 115D84 800F7C94 00021080 */  sll        $v0, $v0, 2
/* 115D88 800F7C98 00821021 */  addu       $v0, $a0, $v0
/* 115D8C 800F7C9C C44002A8 */  lwc1       $f0, 0x2A8($v0)
/* 115D90 800F7CA0 E480029C */  swc1       $f0, 0x29C($a0)
.Lmenu_800F7CA4:
/* 115D94 800F7CA4 90820298 */  lbu        $v0, 0x298($a0)
/* 115D98 800F7CA8 00451021 */  addu       $v0, $v0, $a1
/* 115D9C 800F7CAC 00021E00 */  sll        $v1, $v0, 24
/* 115DA0 800F7CB0 00032E03 */  sra        $a1, $v1, 24
/* 115DA4 800F7CB4 04A00005 */  bltz       $a1, .Lmenu_800F7CCC
/* 115DA8 800F7CB8 A0820298 */   sb        $v0, 0x298($a0)
/* 115DAC 800F7CBC 000316C3 */  sra        $v0, $v1, 27
/* 115DB0 800F7CC0 000210C0 */  sll        $v0, $v0, 3
/* 115DB4 800F7CC4 0803DF34 */  j          .Lmenu_800F7CD0
/* 115DB8 800F7CC8 00A21023 */   subu      $v0, $a1, $v0
.Lmenu_800F7CCC:
/* 115DBC 800F7CCC 24420008 */  addiu      $v0, $v0, 0x8
.Lmenu_800F7CD0:
/* 115DC0 800F7CD0 A0820298 */  sb         $v0, 0x298($a0)
/* 115DC4 800F7CD4 80830298 */  lb         $v1, 0x298($a0)
/* 115DC8 800F7CD8 24020001 */  addiu      $v0, $zero, 0x1
/* 115DCC 800F7CDC 44830000 */  mtc1       $v1, $f0
/* 115DD0 800F7CE0 46800020 */  cvt.s.w    $f0, $f0
/* 115DD4 800F7CE4 03E00008 */  jr         $ra
/* 115DD8 800F7CE8 E48002C8 */   swc1      $f0, 0x2C8($a0)

glabel func_menu_800F7CEC
/* 115DDC 800F7CEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 115DE0 800F7CF0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 115DE4 800F7CF4 8C820248 */  lw         $v0, 0x248($a0)
/* 115DE8 800F7CF8 30420001 */  andi       $v0, $v0, 0x1
/* 115DEC 800F7CFC 14400014 */  bnez       $v0, .Lmenu_800F7D50
/* 115DF0 800F7D00 24020008 */   addiu     $v0, $zero, 0x8
/* 115DF4 800F7D04 C48202C8 */  lwc1       $f2, 0x2C8($a0)
/* 115DF8 800F7D08 3C01800D */  lui        $at, %hi(D_menu_800CC5F8)
/* 115DFC 800F7D0C C420C5F8 */  lwc1       $f0, %lo(D_menu_800CC5F8)($at)
/* 115E00 800F7D10 46001000 */  add.s      $f0, $f2, $f0
/* 115E04 800F7D14 4600010D */  trunc.w.s  $f4, $f0
/* 115E08 800F7D18 44052000 */  mfc1       $a1, $f4
/* 115E0C 800F7D1C 50A20001 */  beql       $a1, $v0, .Lmenu_800F7D24
/* 115E10 800F7D20 00002821 */   addu      $a1, $zero, $zero
.Lmenu_800F7D24:
/* 115E14 800F7D24 80820298 */  lb         $v0, 0x298($a0)
/* 115E18 800F7D28 54A20007 */  bnel       $a1, $v0, .Lmenu_800F7D48
/* 115E1C 800F7D2C 00A22823 */   subu      $a1, $a1, $v0
/* 115E20 800F7D30 44850000 */  mtc1       $a1, $f0
/* 115E24 800F7D34 46800020 */  cvt.s.w    $f0, $f0
/* 115E28 800F7D38 46001032 */  c.eq.s     $f2, $f0
/* 115E2C 800F7D3C 00000000 */  nop
/* 115E30 800F7D40 45010003 */  bc1t       .Lmenu_800F7D50
/* 115E34 800F7D44 00A22823 */   subu      $a1, $a1, $v0
.Lmenu_800F7D48:
/* 115E38 800F7D48 0C03DF19 */  jal        func_menu_800F7C64
/* 115E3C 800F7D4C 00003021 */   addu      $a2, $zero, $zero
.Lmenu_800F7D50:
/* 115E40 800F7D50 8FBF0010 */  lw         $ra, 0x10($sp)
/* 115E44 800F7D54 03E00008 */  jr         $ra
/* 115E48 800F7D58 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F7D5C
/* 115E4C 800F7D5C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 115E50 800F7D60 AFB10044 */  sw         $s1, 0x44($sp)
/* 115E54 800F7D64 00808821 */  addu       $s1, $a0, $zero
/* 115E58 800F7D68 AFBF0048 */  sw         $ra, 0x48($sp)
/* 115E5C 800F7D6C AFB00040 */  sw         $s0, 0x40($sp)
/* 115E60 800F7D70 F7B40050 */  sdc1       $f20, 0x50($sp)
/* 115E64 800F7D74 8E220248 */  lw         $v0, 0x248($s1)
/* 115E68 800F7D78 44852000 */  mtc1       $a1, $f4
/* 115E6C 800F7D7C 30420002 */  andi       $v0, $v0, 0x2
/* 115E70 800F7D80 54400054 */  bnel       $v0, $zero, .Lmenu_800F7ED4
/* 115E74 800F7D84 00001021 */   addu      $v0, $zero, $zero
/* 115E78 800F7D88 44801000 */  mtc1       $zero, $f2
/* 115E7C 800F7D8C 46022032 */  c.eq.s     $f4, $f2
/* 115E80 800F7D90 00000000 */  nop
/* 115E84 800F7D94 4503004F */  bc1tl      .Lmenu_800F7ED4
/* 115E88 800F7D98 00001021 */   addu      $v0, $zero, $zero
/* 115E8C 800F7D9C 4604103C */  c.lt.s     $f2, $f4
/* 115E90 800F7DA0 00000000 */  nop
/* 115E94 800F7DA4 45000007 */  bc1f       .Lmenu_800F7DC4
/* 115E98 800F7DA8 00000000 */   nop
/* 115E9C 800F7DAC C6220288 */  lwc1       $f2, 0x288($s1)
/* 115EA0 800F7DB0 3C01800D */  lui        $at, %hi(D_menu_800CC5FC)
/* 115EA4 800F7DB4 C420C5FC */  lwc1       $f0, %lo(D_menu_800CC5FC)($at)
/* 115EA8 800F7DB8 4602003E */  c.le.s     $f0, $f2
/* 115EAC 800F7DBC 0803DF73 */  j          .Lmenu_800F7DCC
/* 115EB0 800F7DC0 00000000 */   nop
.Lmenu_800F7DC4:
/* 115EB4 800F7DC4 C6200288 */  lwc1       $f0, 0x288($s1)
/* 115EB8 800F7DC8 4602003E */  c.le.s     $f0, $f2
.Lmenu_800F7DCC:
/* 115EBC 800F7DCC 00000000 */  nop
/* 115EC0 800F7DD0 45010040 */  bc1t       .Lmenu_800F7ED4
/* 115EC4 800F7DD4 00001021 */   addu      $v0, $zero, $zero
/* 115EC8 800F7DD8 C6200288 */  lwc1       $f0, 0x288($s1)
/* 115ECC 800F7DDC 46040000 */  add.s      $f0, $f0, $f4
/* 115ED0 800F7DE0 44801000 */  mtc1       $zero, $f2
/* 115ED4 800F7DE4 4602003C */  c.lt.s     $f0, $f2
/* 115ED8 800F7DE8 00000000 */  nop
/* 115EDC 800F7DEC 45010007 */  bc1t       .Lmenu_800F7E0C
/* 115EE0 800F7DF0 E6200288 */   swc1      $f0, 0x288($s1)
/* 115EE4 800F7DF4 3C01800D */  lui        $at, %hi(D_menu_800CC600)
/* 115EE8 800F7DF8 C422C600 */  lwc1       $f2, %lo(D_menu_800CC600)($at)
/* 115EEC 800F7DFC 4600103C */  c.lt.s     $f2, $f0
/* 115EF0 800F7E00 00000000 */  nop
/* 115EF4 800F7E04 45000002 */  bc1f       .Lmenu_800F7E10
/* 115EF8 800F7E08 00000000 */   nop
.Lmenu_800F7E0C:
/* 115EFC 800F7E0C E6220288 */  swc1       $f2, 0x288($s1)
.Lmenu_800F7E10:
/* 115F00 800F7E10 C6200288 */  lwc1       $f0, 0x288($s1)
/* 115F04 800F7E14 24020002 */  addiu      $v0, $zero, 0x2
/* 115F08 800F7E18 4600018D */  trunc.w.s  $f6, $f0
/* 115F0C 800F7E1C 44103000 */  mfc1       $s0, $f6
/* 115F10 800F7E20 52020001 */  beql       $s0, $v0, .Lmenu_800F7E28
/* 115F14 800F7E24 24100001 */   addiu     $s0, $zero, 0x1
.Lmenu_800F7E28:
/* 115F18 800F7E28 02202021 */  addu       $a0, $s1, $zero
/* 115F1C 800F7E2C 27A50020 */  addiu      $a1, $sp, 0x20
/* 115F20 800F7E30 02003021 */  addu       $a2, $s0, $zero
/* 115F24 800F7E34 4490A000 */  mtc1       $s0, $f20
/* 115F28 800F7E38 4680A520 */  cvt.s.w    $f20, $f20
/* 115F2C 800F7E3C 0C03E50E */  jal        func_menu_800F9438
/* 115F30 800F7E40 46140501 */   sub.s     $f20, $f0, $f20
/* 115F34 800F7E44 02202021 */  addu       $a0, $s1, $zero
/* 115F38 800F7E48 27A50030 */  addiu      $a1, $sp, 0x30
/* 115F3C 800F7E4C 0C03E50E */  jal        func_menu_800F9438
/* 115F40 800F7E50 26060001 */   addiu     $a2, $s0, 0x1
/* 115F44 800F7E54 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 115F48 800F7E58 C7A20020 */  lwc1       $f2, 0x20($sp)
/* 115F4C 800F7E5C 46020001 */  sub.s      $f0, $f0, $f2
/* 115F50 800F7E60 4600A002 */  mul.s      $f0, $f20, $f0
/* 115F54 800F7E64 46001080 */  add.s      $f2, $f2, $f0
/* 115F58 800F7E68 E622027C */  swc1       $f2, 0x27C($s1)
/* 115F5C 800F7E6C C7A00034 */  lwc1       $f0, 0x34($sp)
/* 115F60 800F7E70 C7A20024 */  lwc1       $f2, 0x24($sp)
/* 115F64 800F7E74 46020001 */  sub.s      $f0, $f0, $f2
/* 115F68 800F7E78 4600A002 */  mul.s      $f0, $f20, $f0
/* 115F6C 800F7E7C 46001080 */  add.s      $f2, $f2, $f0
/* 115F70 800F7E80 E6220280 */  swc1       $f2, 0x280($s1)
/* 115F74 800F7E84 C7A00038 */  lwc1       $f0, 0x38($sp)
/* 115F78 800F7E88 C7A20028 */  lwc1       $f2, 0x28($sp)
/* 115F7C 800F7E8C 46020001 */  sub.s      $f0, $f0, $f2
/* 115F80 800F7E90 4600A502 */  mul.s      $f20, $f20, $f0
/* 115F84 800F7E94 46141080 */  add.s      $f2, $f2, $f20
/* 115F88 800F7E98 C6200250 */  lwc1       $f0, 0x250($s1)
/* 115F8C 800F7E9C E6220284 */  swc1       $f2, 0x284($s1)
/* 115F90 800F7EA0 E7A00010 */  swc1       $f0, 0x10($sp)
/* 115F94 800F7EA4 C6200254 */  lwc1       $f0, 0x254($s1)
/* 115F98 800F7EA8 3C01800D */  lui        $at, %hi(D_menu_800CC604)
/* 115F9C 800F7EAC C422C604 */  lwc1       $f2, %lo(D_menu_800CC604)($at)
/* 115FA0 800F7EB0 E7A00014 */  swc1       $f0, 0x14($sp)
/* 115FA4 800F7EB4 C6200258 */  lwc1       $f0, 0x258($s1)
/* 115FA8 800F7EB8 46020000 */  add.s      $f0, $f0, $f2
/* 115FAC 800F7EBC 2625027C */  addiu      $a1, $s1, 0x27C
/* 115FB0 800F7EC0 E7A00018 */  swc1       $f0, 0x18($sp)
/* 115FB4 800F7EC4 8E240010 */  lw         $a0, 0x10($s1)
/* 115FB8 800F7EC8 0C0441B2 */  jal        func_menu_801106C8
/* 115FBC 800F7ECC 27A60010 */   addiu     $a2, $sp, 0x10
/* 115FC0 800F7ED0 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F7ED4:
/* 115FC4 800F7ED4 8FBF0048 */  lw         $ra, 0x48($sp)
/* 115FC8 800F7ED8 8FB10044 */  lw         $s1, 0x44($sp)
/* 115FCC 800F7EDC 8FB00040 */  lw         $s0, 0x40($sp)
/* 115FD0 800F7EE0 D7B40050 */  ldc1       $f20, 0x50($sp)
/* 115FD4 800F7EE4 03E00008 */  jr         $ra
/* 115FD8 800F7EE8 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_menu_800F7EEC
/* 115FDC 800F7EEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 115FE0 800F7EF0 AFB00010 */  sw         $s0, 0x10($sp)
/* 115FE4 800F7EF4 00808021 */  addu       $s0, $a0, $zero
/* 115FE8 800F7EF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 115FEC 800F7EFC AFB10014 */  sw         $s1, 0x14($sp)
/* 115FF0 800F7F00 8E020248 */  lw         $v0, 0x248($s0)
/* 115FF4 800F7F04 30420002 */  andi       $v0, $v0, 0x2
/* 115FF8 800F7F08 1440000B */  bnez       $v0, .Lmenu_800F7F38
/* 115FFC 800F7F0C 00A08821 */   addu      $s1, $a1, $zero
/* 116000 800F7F10 06210004 */  bgez       $s1, .Lmenu_800F7F24
/* 116004 800F7F14 00000000 */   nop
/* 116008 800F7F18 92020290 */  lbu        $v0, 0x290($s0)
/* 11600C 800F7F1C 10400028 */  beqz       $v0, .Lmenu_800F7FC0
/* 116010 800F7F20 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F7F24:
/* 116014 800F7F24 1A200006 */  blez       $s1, .Lmenu_800F7F40
/* 116018 800F7F28 24020002 */   addiu     $v0, $zero, 0x2
/* 11601C 800F7F2C 92030290 */  lbu        $v1, 0x290($s0)
/* 116020 800F7F30 14620003 */  bne        $v1, $v0, .Lmenu_800F7F40
/* 116024 800F7F34 00000000 */   nop
.Lmenu_800F7F38:
/* 116028 800F7F38 0803DFF0 */  j          .Lmenu_800F7FC0
/* 11602C 800F7F3C 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F7F40:
/* 116030 800F7F40 10C00004 */  beqz       $a2, .Lmenu_800F7F54
/* 116034 800F7F44 02002021 */   addu      $a0, $s0, $zero
/* 116038 800F7F48 92060290 */  lbu        $a2, 0x290($s0)
/* 11603C 800F7F4C 0C03E50E */  jal        func_menu_800F9438
/* 116040 800F7F50 2605027C */   addiu     $a1, $s0, 0x27C
.Lmenu_800F7F54:
/* 116044 800F7F54 06210007 */  bgez       $s1, .Lmenu_800F7F74
/* 116048 800F7F58 00111023 */   negu      $v0, $s1
/* 11604C 800F7F5C 92030290 */  lbu        $v1, 0x290($s0)
/* 116050 800F7F60 0062102A */  slt        $v0, $v1, $v0
/* 116054 800F7F64 1040000B */  beqz       $v0, .Lmenu_800F7F94
/* 116058 800F7F68 00711021 */   addu      $v0, $v1, $s1
/* 11605C 800F7F6C 0803DFE6 */  j          .Lmenu_800F7F98
/* 116060 800F7F70 A2000290 */   sb        $zero, 0x290($s0)
.Lmenu_800F7F74:
/* 116064 800F7F74 92020290 */  lbu        $v0, 0x290($s0)
/* 116068 800F7F78 00511021 */  addu       $v0, $v0, $s1
/* 11606C 800F7F7C A2020290 */  sb         $v0, 0x290($s0)
/* 116070 800F7F80 304200FF */  andi       $v0, $v0, 0xFF
/* 116074 800F7F84 2C420002 */  sltiu      $v0, $v0, 0x2
/* 116078 800F7F88 14400004 */  bnez       $v0, .Lmenu_800F7F9C
/* 11607C 800F7F8C 24020001 */   addiu     $v0, $zero, 0x1
/* 116080 800F7F90 24020002 */  addiu      $v0, $zero, 0x2
.Lmenu_800F7F94:
/* 116084 800F7F94 A2020290 */  sb         $v0, 0x290($s0)
.Lmenu_800F7F98:
/* 116088 800F7F98 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F7F9C:
/* 11608C 800F7F9C 92040290 */  lbu        $a0, 0x290($s0)
/* 116090 800F7FA0 2403012C */  addiu      $v1, $zero, 0x12C
/* 116094 800F7FA4 AE03028C */  sw         $v1, 0x28C($s0)
/* 116098 800F7FA8 8E030248 */  lw         $v1, 0x248($s0)
/* 11609C 800F7FAC 44840000 */  mtc1       $a0, $f0
/* 1160A0 800F7FB0 46800020 */  cvt.s.w    $f0, $f0
/* 1160A4 800F7FB4 34630002 */  ori        $v1, $v1, 0x2
/* 1160A8 800F7FB8 E6000288 */  swc1       $f0, 0x288($s0)
/* 1160AC 800F7FBC AE030248 */  sw         $v1, 0x248($s0)
.Lmenu_800F7FC0:
/* 1160B0 800F7FC0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1160B4 800F7FC4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1160B8 800F7FC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1160BC 800F7FCC 03E00008 */  jr         $ra
/* 1160C0 800F7FD0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F7FD4
/* 1160C4 800F7FD4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1160C8 800F7FD8 AFB3003C */  sw         $s3, 0x3C($sp)
/* 1160CC 800F7FDC 00809821 */  addu       $s3, $a0, $zero
/* 1160D0 800F7FE0 AFBF0040 */  sw         $ra, 0x40($sp)
/* 1160D4 800F7FE4 AFB20038 */  sw         $s2, 0x38($sp)
/* 1160D8 800F7FE8 AFB10034 */  sw         $s1, 0x34($sp)
/* 1160DC 800F7FEC AFB00030 */  sw         $s0, 0x30($sp)
/* 1160E0 800F7FF0 F7B40048 */  sdc1       $f20, 0x48($sp)
/* 1160E4 800F7FF4 8E620248 */  lw         $v0, 0x248($s3)
/* 1160E8 800F7FF8 30420002 */  andi       $v0, $v0, 0x2
/* 1160EC 800F7FFC 14400044 */  bnez       $v0, .Lmenu_800F8110
/* 1160F0 800F8000 27B00010 */   addiu     $s0, $sp, 0x10
/* 1160F4 800F8004 8E620010 */  lw         $v0, 0x10($s3)
/* 1160F8 800F8008 8C420064 */  lw         $v0, 0x64($v0)
/* 1160FC 800F800C 8C430000 */  lw         $v1, 0x0($v0)
/* 116100 800F8010 8C62000C */  lw         $v0, 0xC($v1)
/* 116104 800F8014 02002821 */  addu       $a1, $s0, $zero
/* 116108 800F8018 84440088 */  lh         $a0, 0x88($v0)
/* 11610C 800F801C 8C42008C */  lw         $v0, 0x8C($v0)
/* 116110 800F8020 0040F809 */  jalr       $v0
/* 116114 800F8024 00642021 */   addu      $a0, $v1, $a0
/* 116118 800F8028 02602021 */  addu       $a0, $s3, $zero
/* 11611C 800F802C 27A50020 */  addiu      $a1, $sp, 0x20
/* 116120 800F8030 0C03E50E */  jal        func_menu_800F9438
/* 116124 800F8034 00003021 */   addu      $a2, $zero, $zero
/* 116128 800F8038 C7A40010 */  lwc1       $f4, 0x10($sp)
/* 11612C 800F803C C7A00020 */  lwc1       $f0, 0x20($sp)
/* 116130 800F8040 46002101 */  sub.s      $f4, $f4, $f0
/* 116134 800F8044 46042102 */  mul.s      $f4, $f4, $f4
/* 116138 800F8048 C6060004 */  lwc1       $f6, 0x4($s0)
/* 11613C 800F804C C7A00024 */  lwc1       $f0, 0x24($sp)
/* 116140 800F8050 46003181 */  sub.s      $f6, $f6, $f0
/* 116144 800F8054 46063182 */  mul.s      $f6, $f6, $f6
/* 116148 800F8058 C6020008 */  lwc1       $f2, 0x8($s0)
/* 11614C 800F805C C7A00028 */  lwc1       $f0, 0x28($sp)
/* 116150 800F8060 46001081 */  sub.s      $f2, $f2, $f0
/* 116154 800F8064 46021082 */  mul.s      $f2, $f2, $f2
/* 116158 800F8068 46062100 */  add.s      $f4, $f4, $f6
/* 11615C 800F806C 00009021 */  addu       $s2, $zero, $zero
/* 116160 800F8070 24110001 */  addiu      $s1, $zero, 0x1
/* 116164 800F8074 46022500 */  add.s      $f20, $f4, $f2
.Lmenu_800F8078:
/* 116168 800F8078 2E220003 */  sltiu      $v0, $s1, 0x3
/* 11616C 800F807C 1040001A */  beqz       $v0, .Lmenu_800F80E8
/* 116170 800F8080 02602021 */   addu      $a0, $s3, $zero
/* 116174 800F8084 27A50020 */  addiu      $a1, $sp, 0x20
/* 116178 800F8088 0C03E50E */  jal        func_menu_800F9438
/* 11617C 800F808C 02203021 */   addu      $a2, $s1, $zero
/* 116180 800F8090 C7A40010 */  lwc1       $f4, 0x10($sp)
/* 116184 800F8094 C7A00020 */  lwc1       $f0, 0x20($sp)
/* 116188 800F8098 46002101 */  sub.s      $f4, $f4, $f0
/* 11618C 800F809C 46042102 */  mul.s      $f4, $f4, $f4
/* 116190 800F80A0 C6060004 */  lwc1       $f6, 0x4($s0)
/* 116194 800F80A4 C7A00024 */  lwc1       $f0, 0x24($sp)
/* 116198 800F80A8 46003181 */  sub.s      $f6, $f6, $f0
/* 11619C 800F80AC 46063182 */  mul.s      $f6, $f6, $f6
/* 1161A0 800F80B0 C7A20028 */  lwc1       $f2, 0x28($sp)
/* 1161A4 800F80B4 C6000008 */  lwc1       $f0, 0x8($s0)
/* 1161A8 800F80B8 46020001 */  sub.s      $f0, $f0, $f2
/* 1161AC 800F80BC 46000002 */  mul.s      $f0, $f0, $f0
/* 1161B0 800F80C0 46062100 */  add.s      $f4, $f4, $f6
/* 1161B4 800F80C4 46002100 */  add.s      $f4, $f4, $f0
/* 1161B8 800F80C8 4614203C */  c.lt.s     $f4, $f20
/* 1161BC 800F80CC 00000000 */  nop
/* 1161C0 800F80D0 4502FFE9 */  bc1fl      .Lmenu_800F8078
/* 1161C4 800F80D4 26310001 */   addiu     $s1, $s1, 0x1
/* 1161C8 800F80D8 02209021 */  addu       $s2, $s1, $zero
/* 1161CC 800F80DC 46002506 */  mov.s      $f20, $f4
/* 1161D0 800F80E0 0803E01E */  j          .Lmenu_800F8078
/* 1161D4 800F80E4 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800F80E8:
/* 1161D8 800F80E8 44800000 */  mtc1       $zero, $f0
/* 1161DC 800F80EC 4600A032 */  c.eq.s     $f20, $f0
/* 1161E0 800F80F0 00000000 */  nop
/* 1161E4 800F80F4 45000003 */  bc1f       .Lmenu_800F8104
/* 1161E8 800F80F8 00003021 */   addu      $a2, $zero, $zero
/* 1161EC 800F80FC 0803E044 */  j          .Lmenu_800F8110
/* 1161F0 800F8100 A2720290 */   sb        $s2, 0x290($s3)
.Lmenu_800F8104:
/* 1161F4 800F8104 90850290 */  lbu        $a1, 0x290($a0)
/* 1161F8 800F8108 0C03DFBB */  jal        func_menu_800F7EEC
/* 1161FC 800F810C 02452823 */   subu      $a1, $s2, $a1
.Lmenu_800F8110:
/* 116200 800F8110 8FBF0040 */  lw         $ra, 0x40($sp)
/* 116204 800F8114 8FB3003C */  lw         $s3, 0x3C($sp)
/* 116208 800F8118 8FB20038 */  lw         $s2, 0x38($sp)
/* 11620C 800F811C 8FB10034 */  lw         $s1, 0x34($sp)
/* 116210 800F8120 8FB00030 */  lw         $s0, 0x30($sp)
/* 116214 800F8124 D7B40048 */  ldc1       $f20, 0x48($sp)
/* 116218 800F8128 03E00008 */  jr         $ra
/* 11621C 800F812C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800F8130
/* 116220 800F8130 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 116224 800F8134 AFB00010 */  sw         $s0, 0x10($sp)
/* 116228 800F8138 00808021 */  addu       $s0, $a0, $zero
/* 11622C 800F813C AFBF0014 */  sw         $ra, 0x14($sp)
/* 116230 800F8140 8E020248 */  lw         $v0, 0x248($s0)
/* 116234 800F8144 30420002 */  andi       $v0, $v0, 0x2
/* 116238 800F8148 1440001C */  bnez       $v0, .Lmenu_800F81BC
/* 11623C 800F814C 00001021 */   addu      $v0, $zero, $zero
/* 116240 800F8150 10A0000F */  beqz       $a1, .Lmenu_800F8190
/* 116244 800F8154 02002021 */   addu      $a0, $s0, $zero
/* 116248 800F8158 24060001 */  addiu      $a2, $zero, 0x1
/* 11624C 800F815C 82020298 */  lb         $v0, 0x298($s0)
/* 116250 800F8160 24050009 */  addiu      $a1, $zero, 0x9
/* 116254 800F8164 0C03DF19 */  jal        func_menu_800F7C64
/* 116258 800F8168 00A22823 */   subu      $a1, $a1, $v0
/* 11625C 800F816C 14400003 */  bnez       $v0, .Lmenu_800F817C
/* 116260 800F8170 02002021 */   addu      $a0, $s0, $zero
/* 116264 800F8174 0803E06F */  j          .Lmenu_800F81BC
/* 116268 800F8178 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F817C:
/* 11626C 800F817C 92060290 */  lbu        $a2, 0x290($s0)
/* 116270 800F8180 0C03E50E */  jal        func_menu_800F9438
/* 116274 800F8184 2605027C */   addiu     $a1, $s0, 0x27C
/* 116278 800F8188 0803E065 */  j          .Lmenu_800F8194
/* 11627C 800F818C 2402012C */   addiu     $v0, $zero, 0x12C
.Lmenu_800F8190:
/* 116280 800F8190 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F8194:
/* 116284 800F8194 AE02028C */  sw         $v0, 0x28C($s0)
/* 116288 800F8198 24020001 */  addiu      $v0, $zero, 0x1
/* 11628C 800F819C 3C01800D */  lui        $at, %hi(D_menu_800CC608)
/* 116290 800F81A0 C420C608 */  lwc1       $f0, %lo(D_menu_800CC608)($at)
/* 116294 800F81A4 8E040248 */  lw         $a0, 0x248($s0)
/* 116298 800F81A8 00401821 */  addu       $v1, $v0, $zero
/* 11629C 800F81AC A2030290 */  sb         $v1, 0x290($s0)
/* 1162A0 800F81B0 34840002 */  ori        $a0, $a0, 0x2
/* 1162A4 800F81B4 E6000288 */  swc1       $f0, 0x288($s0)
/* 1162A8 800F81B8 AE040248 */  sw         $a0, 0x248($s0)
.Lmenu_800F81BC:
/* 1162AC 800F81BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1162B0 800F81C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1162B4 800F81C4 03E00008 */  jr         $ra
/* 1162B8 800F81C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F81CC
/* 1162BC 800F81CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1162C0 800F81D0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1162C4 800F81D4 00808821 */  addu       $s1, $a0, $zero
/* 1162C8 800F81D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1162CC 800F81DC AFB00010 */  sw         $s0, 0x10($sp)
/* 1162D0 800F81E0 8E23000C */  lw         $v1, 0xC($s1)
/* 1162D4 800F81E4 8C62012C */  lw         $v0, 0x12C($v1)
/* 1162D8 800F81E8 844401E8 */  lh         $a0, 0x1E8($v0)
/* 1162DC 800F81EC 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 1162E0 800F81F0 0040F809 */  jalr       $v0
/* 1162E4 800F81F4 00642021 */   addu      $a0, $v1, $a0
/* 1162E8 800F81F8 26300028 */  addiu      $s0, $s1, 0x28
/* 1162EC 800F81FC 0C036097 */  jal        func_menu_800D825C
/* 1162F0 800F8200 02002021 */   addu      $a0, $s0, $zero
/* 1162F4 800F8204 8E240024 */  lw         $a0, 0x24($s1)
/* 1162F8 800F8208 24050001 */  addiu      $a1, $zero, 0x1
/* 1162FC 800F820C 0C03699C */  jal        func_menu_800DA670
/* 116300 800F8210 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 116304 800F8214 02002821 */  addu       $a1, $s0, $zero
/* 116308 800F8218 263001A4 */  addiu      $s0, $s1, 0x1A4
/* 11630C 800F821C 8E240024 */  lw         $a0, 0x24($s1)
/* 116310 800F8220 02003021 */  addu       $a2, $s0, $zero
/* 116314 800F8224 0C036D30 */  jal        func_menu_800DB4C0
/* 116318 800F8228 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11631C 800F822C 02002021 */  addu       $a0, $s0, $zero
/* 116320 800F8230 0C015962 */  jal        func_80056588
/* 116324 800F8234 26250250 */   addiu     $a1, $s1, 0x250
/* 116328 800F8238 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11632C 800F823C 8FB10014 */  lw         $s1, 0x14($sp)
/* 116330 800F8240 8FB00010 */  lw         $s0, 0x10($sp)
/* 116334 800F8244 03E00008 */  jr         $ra
/* 116338 800F8248 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F824C
/* 11633C 800F824C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 116340 800F8250 AFB20030 */  sw         $s2, 0x30($sp)
/* 116344 800F8254 00809021 */  addu       $s2, $a0, $zero
/* 116348 800F8258 AFB1002C */  sw         $s1, 0x2C($sp)
/* 11634C 800F825C 00A08821 */  addu       $s1, $a1, $zero
/* 116350 800F8260 AFB00028 */  sw         $s0, 0x28($sp)
/* 116354 800F8264 26500028 */  addiu      $s0, $s2, 0x28
/* 116358 800F8268 02002021 */  addu       $a0, $s0, $zero
/* 11635C 800F826C 27A50010 */  addiu      $a1, $sp, 0x10
/* 116360 800F8270 27A60014 */  addiu      $a2, $sp, 0x14
/* 116364 800F8274 AFBF0034 */  sw         $ra, 0x34($sp)
/* 116368 800F8278 0C036165 */  jal        func_menu_800D8594
/* 11636C 800F827C 27A70018 */   addiu     $a3, $sp, 0x18
/* 116370 800F8280 02002021 */  addu       $a0, $s0, $zero
/* 116374 800F8284 0C036131 */  jal        func_menu_800D84C4
/* 116378 800F8288 02202821 */   addu      $a1, $s1, $zero
/* 11637C 800F828C 02002021 */  addu       $a0, $s0, $zero
/* 116380 800F8290 27A5001C */  addiu      $a1, $sp, 0x1C
/* 116384 800F8294 27A60020 */  addiu      $a2, $sp, 0x20
/* 116388 800F8298 0C036165 */  jal        func_menu_800D8594
/* 11638C 800F829C 27A70024 */   addiu     $a3, $sp, 0x24
/* 116390 800F82A0 8FA30010 */  lw         $v1, 0x10($sp)
/* 116394 800F82A4 8FA2001C */  lw         $v0, 0x1C($sp)
/* 116398 800F82A8 14620009 */  bne        $v1, $v0, .Lmenu_800F82D0
/* 11639C 800F82AC 00000000 */   nop
/* 1163A0 800F82B0 8FA30014 */  lw         $v1, 0x14($sp)
/* 1163A4 800F82B4 8FA20020 */  lw         $v0, 0x20($sp)
/* 1163A8 800F82B8 14620005 */  bne        $v1, $v0, .Lmenu_800F82D0
/* 1163AC 800F82BC 00000000 */   nop
/* 1163B0 800F82C0 8FA30018 */  lw         $v1, 0x18($sp)
/* 1163B4 800F82C4 8FA20024 */  lw         $v0, 0x24($sp)
/* 1163B8 800F82C8 10620015 */  beq        $v1, $v0, .Lmenu_800F8320
/* 1163BC 800F82CC 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F82D0:
/* 1163C0 800F82D0 8E43000C */  lw         $v1, 0xC($s2)
/* 1163C4 800F82D4 8C62012C */  lw         $v0, 0x12C($v1)
/* 1163C8 800F82D8 844401E8 */  lh         $a0, 0x1E8($v0)
/* 1163CC 800F82DC 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 1163D0 800F82E0 0040F809 */  jalr       $v0
/* 1163D4 800F82E4 00642021 */   addu      $a0, $v1, $a0
/* 1163D8 800F82E8 8E440024 */  lw         $a0, 0x24($s2)
/* 1163DC 800F82EC 24050001 */  addiu      $a1, $zero, 0x1
/* 1163E0 800F82F0 0C03699C */  jal        func_menu_800DA670
/* 1163E4 800F82F4 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 1163E8 800F82F8 26450028 */  addiu      $a1, $s2, 0x28
/* 1163EC 800F82FC 265001A4 */  addiu      $s0, $s2, 0x1A4
/* 1163F0 800F8300 8E440024 */  lw         $a0, 0x24($s2)
/* 1163F4 800F8304 02003021 */  addu       $a2, $s0, $zero
/* 1163F8 800F8308 0C036D30 */  jal        func_menu_800DB4C0
/* 1163FC 800F830C 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 116400 800F8310 02002021 */  addu       $a0, $s0, $zero
/* 116404 800F8314 0C015962 */  jal        func_80056588
/* 116408 800F8318 26450250 */   addiu     $a1, $s2, 0x250
/* 11640C 800F831C 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F8320:
/* 116410 800F8320 8FBF0034 */  lw         $ra, 0x34($sp)
/* 116414 800F8324 8FB20030 */  lw         $s2, 0x30($sp)
/* 116418 800F8328 8FB1002C */  lw         $s1, 0x2C($sp)
/* 11641C 800F832C 8FB00028 */  lw         $s0, 0x28($sp)
/* 116420 800F8330 03E00008 */  jr         $ra
/* 116424 800F8334 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800F8338
/* 116428 800F8338 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 11642C 800F833C AFB20030 */  sw         $s2, 0x30($sp)
/* 116430 800F8340 00809021 */  addu       $s2, $a0, $zero
/* 116434 800F8344 AFB1002C */  sw         $s1, 0x2C($sp)
/* 116438 800F8348 00A08821 */  addu       $s1, $a1, $zero
/* 11643C 800F834C AFB00028 */  sw         $s0, 0x28($sp)
/* 116440 800F8350 26500028 */  addiu      $s0, $s2, 0x28
/* 116444 800F8354 02002021 */  addu       $a0, $s0, $zero
/* 116448 800F8358 27A50010 */  addiu      $a1, $sp, 0x10
/* 11644C 800F835C 27A60014 */  addiu      $a2, $sp, 0x14
/* 116450 800F8360 AFBF0034 */  sw         $ra, 0x34($sp)
/* 116454 800F8364 0C036165 */  jal        func_menu_800D8594
/* 116458 800F8368 27A70018 */   addiu     $a3, $sp, 0x18
/* 11645C 800F836C 02002021 */  addu       $a0, $s0, $zero
/* 116460 800F8370 0C03614B */  jal        func_menu_800D852C
/* 116464 800F8374 02202821 */   addu      $a1, $s1, $zero
/* 116468 800F8378 02002021 */  addu       $a0, $s0, $zero
/* 11646C 800F837C 27A5001C */  addiu      $a1, $sp, 0x1C
/* 116470 800F8380 27A60020 */  addiu      $a2, $sp, 0x20
/* 116474 800F8384 0C036165 */  jal        func_menu_800D8594
/* 116478 800F8388 27A70024 */   addiu     $a3, $sp, 0x24
/* 11647C 800F838C 8FA30010 */  lw         $v1, 0x10($sp)
/* 116480 800F8390 8FA2001C */  lw         $v0, 0x1C($sp)
/* 116484 800F8394 14620009 */  bne        $v1, $v0, .Lmenu_800F83BC
/* 116488 800F8398 00000000 */   nop
/* 11648C 800F839C 8FA30014 */  lw         $v1, 0x14($sp)
/* 116490 800F83A0 8FA20020 */  lw         $v0, 0x20($sp)
/* 116494 800F83A4 14620005 */  bne        $v1, $v0, .Lmenu_800F83BC
/* 116498 800F83A8 00000000 */   nop
/* 11649C 800F83AC 8FA30018 */  lw         $v1, 0x18($sp)
/* 1164A0 800F83B0 8FA20024 */  lw         $v0, 0x24($sp)
/* 1164A4 800F83B4 10620015 */  beq        $v1, $v0, .Lmenu_800F840C
/* 1164A8 800F83B8 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F83BC:
/* 1164AC 800F83BC 8E43000C */  lw         $v1, 0xC($s2)
/* 1164B0 800F83C0 8C62012C */  lw         $v0, 0x12C($v1)
/* 1164B4 800F83C4 844401E8 */  lh         $a0, 0x1E8($v0)
/* 1164B8 800F83C8 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 1164BC 800F83CC 0040F809 */  jalr       $v0
/* 1164C0 800F83D0 00642021 */   addu      $a0, $v1, $a0
/* 1164C4 800F83D4 8E440024 */  lw         $a0, 0x24($s2)
/* 1164C8 800F83D8 24050001 */  addiu      $a1, $zero, 0x1
/* 1164CC 800F83DC 0C03699C */  jal        func_menu_800DA670
/* 1164D0 800F83E0 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 1164D4 800F83E4 26450028 */  addiu      $a1, $s2, 0x28
/* 1164D8 800F83E8 265001A4 */  addiu      $s0, $s2, 0x1A4
/* 1164DC 800F83EC 8E440024 */  lw         $a0, 0x24($s2)
/* 1164E0 800F83F0 02003021 */  addu       $a2, $s0, $zero
/* 1164E4 800F83F4 0C036D30 */  jal        func_menu_800DB4C0
/* 1164E8 800F83F8 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 1164EC 800F83FC 02002021 */  addu       $a0, $s0, $zero
/* 1164F0 800F8400 0C015962 */  jal        func_80056588
/* 1164F4 800F8404 26450250 */   addiu     $a1, $s2, 0x250
/* 1164F8 800F8408 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F840C:
/* 1164FC 800F840C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 116500 800F8410 8FB20030 */  lw         $s2, 0x30($sp)
/* 116504 800F8414 8FB1002C */  lw         $s1, 0x2C($sp)
/* 116508 800F8418 8FB00028 */  lw         $s0, 0x28($sp)
/* 11650C 800F841C 03E00008 */  jr         $ra
/* 116510 800F8420 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800F8424
/* 116514 800F8424 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 116518 800F8428 AFB1002C */  sw         $s1, 0x2C($sp)
/* 11651C 800F842C 00808821 */  addu       $s1, $a0, $zero
/* 116520 800F8430 26240028 */  addiu      $a0, $s1, 0x28
/* 116524 800F8434 27A50018 */  addiu      $a1, $sp, 0x18
/* 116528 800F8438 27A6001C */  addiu      $a2, $sp, 0x1C
/* 11652C 800F843C AFBF0030 */  sw         $ra, 0x30($sp)
/* 116530 800F8440 AFB00028 */  sw         $s0, 0x28($sp)
/* 116534 800F8444 8C90000C */  lw         $s0, 0xC($a0)
/* 116538 800F8448 0C036165 */  jal        func_menu_800D8594
/* 11653C 800F844C 27A70020 */   addiu     $a3, $sp, 0x20
/* 116540 800F8450 8E240024 */  lw         $a0, 0x24($s1)
/* 116544 800F8454 8FA60018 */  lw         $a2, 0x18($sp)
/* 116548 800F8458 8FA7001C */  lw         $a3, 0x1C($sp)
/* 11654C 800F845C 8FA20020 */  lw         $v0, 0x20($sp)
/* 116550 800F8460 24842CF8 */  addiu      $a0, $a0, 0x2CF8
/* 116554 800F8464 02002821 */  addu       $a1, $s0, $zero
/* 116558 800F8468 0C03632B */  jal        func_menu_800D8CAC
/* 11655C 800F846C AFA20010 */   sw        $v0, 0x10($sp)
/* 116560 800F8470 00401821 */  addu       $v1, $v0, $zero
/* 116564 800F8474 04610012 */  bgez       $v1, .Lmenu_800F84C0
/* 116568 800F8478 2402FFF9 */   addiu     $v0, $zero, -0x7
/* 11656C 800F847C 14620009 */  bne        $v1, $v0, .Lmenu_800F84A4
/* 116570 800F8480 00000000 */   nop
/* 116574 800F8484 8E23001C */  lw         $v1, 0x1C($s1)
/* 116578 800F8488 8C620000 */  lw         $v0, 0x0($v1)
/* 11657C 800F848C 84440178 */  lh         $a0, 0x178($v0)
/* 116580 800F8490 8C42017C */  lw         $v0, 0x17C($v0)
/* 116584 800F8494 0040F809 */  jalr       $v0
/* 116588 800F8498 00642021 */   addu      $a0, $v1, $a0
/* 11658C 800F849C 0803E13C */  j          .Lmenu_800F84F0
/* 116590 800F84A0 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F84A4:
/* 116594 800F84A4 10600006 */  beqz       $v1, .Lmenu_800F84C0
/* 116598 800F84A8 00000000 */   nop
/* 11659C 800F84AC 8E240020 */  lw         $a0, 0x20($s1)
/* 1165A0 800F84B0 0C047910 */  jal        func_menu_8011E440
/* 1165A4 800F84B4 24050012 */   addiu     $a1, $zero, 0x12
/* 1165A8 800F84B8 0803E13C */  j          .Lmenu_800F84F0
/* 1165AC 800F84BC 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F84C0:
/* 1165B0 800F84C0 8E240024 */  lw         $a0, 0x24($s1)
/* 1165B4 800F84C4 0C03BC63 */  jal        func_menu_800EF18C
/* 1165B8 800F84C8 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 1165BC 800F84CC 24020001 */  addiu      $v0, $zero, 0x1
/* 1165C0 800F84D0 240309C4 */  addiu      $v1, $zero, 0x9C4
/* 1165C4 800F84D4 AE23024C */  sw         $v1, 0x24C($s1)
/* 1165C8 800F84D8 8E230248 */  lw         $v1, 0x248($s1)
/* 1165CC 800F84DC 3C01800D */  lui        $at, %hi(D_menu_800CC60C)
/* 1165D0 800F84E0 C420C60C */  lwc1       $f0, %lo(D_menu_800CC60C)($at)
/* 1165D4 800F84E4 34630004 */  ori        $v1, $v1, 0x4
/* 1165D8 800F84E8 AE230248 */  sw         $v1, 0x248($s1)
/* 1165DC 800F84EC E6200274 */  swc1       $f0, 0x274($s1)
.Lmenu_800F84F0:
/* 1165E0 800F84F0 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1165E4 800F84F4 8FB1002C */  lw         $s1, 0x2C($sp)
/* 1165E8 800F84F8 8FB00028 */  lw         $s0, 0x28($sp)
/* 1165EC 800F84FC 03E00008 */  jr         $ra
/* 1165F0 800F8500 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800F8504
/* 1165F4 800F8504 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1165F8 800F8508 AFB20048 */  sw         $s2, 0x48($sp)
/* 1165FC 800F850C 00809021 */  addu       $s2, $a0, $zero
/* 116600 800F8510 AFB00040 */  sw         $s0, 0x40($sp)
/* 116604 800F8514 00A08021 */  addu       $s0, $a1, $zero
/* 116608 800F8518 AFB40050 */  sw         $s4, 0x50($sp)
/* 11660C 800F851C 00C0A021 */  addu       $s4, $a2, $zero
/* 116610 800F8520 AFBF0054 */  sw         $ra, 0x54($sp)
/* 116614 800F8524 AFB3004C */  sw         $s3, 0x4C($sp)
/* 116618 800F8528 AFB10044 */  sw         $s1, 0x44($sp)
/* 11661C 800F852C 8E420024 */  lw         $v0, 0x24($s2)
/* 116620 800F8530 24512CF8 */  addiu      $s1, $v0, 0x2CF8
/* 116624 800F8534 8E2300D4 */  lw         $v1, 0xD4($s1)
/* 116628 800F8538 24020001 */  addiu      $v0, $zero, 0x1
/* 11662C 800F853C 10620039 */  beq        $v1, $v0, .Lmenu_800F8624
/* 116630 800F8540 00E09821 */   addu      $s3, $a3, $zero
/* 116634 800F8544 8E43000C */  lw         $v1, 0xC($s2)
/* 116638 800F8548 8C62012C */  lw         $v0, 0x12C($v1)
/* 11663C 800F854C 844401E8 */  lh         $a0, 0x1E8($v0)
/* 116640 800F8550 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 116644 800F8554 0040F809 */  jalr       $v0
/* 116648 800F8558 00642021 */   addu      $a0, $v1, $a0
/* 11664C 800F855C 02202021 */  addu       $a0, $s1, $zero
/* 116650 800F8560 27A60028 */  addiu      $a2, $sp, 0x28
/* 116654 800F8564 27A7002C */  addiu      $a3, $sp, 0x2C
/* 116658 800F8568 8E2500D4 */  lw         $a1, 0xD4($s1)
/* 11665C 800F856C 27A20030 */  addiu      $v0, $sp, 0x30
/* 116660 800F8570 AFA20010 */  sw         $v0, 0x10($sp)
/* 116664 800F8574 27A20034 */  addiu      $v0, $sp, 0x34
/* 116668 800F8578 AFA20014 */  sw         $v0, 0x14($sp)
/* 11666C 800F857C 27A20038 */  addiu      $v0, $sp, 0x38
/* 116670 800F8580 AFA20018 */  sw         $v0, 0x18($sp)
/* 116674 800F8584 AFB3001C */  sw         $s3, 0x1C($sp)
/* 116678 800F8588 AFB00020 */  sw         $s0, 0x20($sp)
/* 11667C 800F858C 0C036B43 */  jal        func_menu_800DAD0C
/* 116680 800F8590 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 116684 800F8594 0C036B9D */  jal        func_menu_800DAE74
/* 116688 800F8598 02202021 */   addu      $a0, $s1, $zero
/* 11668C 800F859C 02202021 */  addu       $a0, $s1, $zero
/* 116690 800F85A0 0C03699C */  jal        func_menu_800DA670
/* 116694 800F85A4 24050001 */   addiu     $a1, $zero, 0x1
/* 116698 800F85A8 02202021 */  addu       $a0, $s1, $zero
/* 11669C 800F85AC 24050001 */  addiu      $a1, $zero, 0x1
/* 1166A0 800F85B0 0C036A24 */  jal        func_menu_800DA890
/* 1166A4 800F85B4 2406007F */   addiu     $a2, $zero, 0x7F
/* 1166A8 800F85B8 26500028 */  addiu      $s0, $s2, 0x28
/* 1166AC 800F85BC 02002021 */  addu       $a0, $s0, $zero
/* 1166B0 800F85C0 8FA50028 */  lw         $a1, 0x28($sp)
/* 1166B4 800F85C4 8E660000 */  lw         $a2, 0x0($s3)
/* 1166B8 800F85C8 0C035FA0 */  jal        func_menu_800D7E80
/* 1166BC 800F85CC 00003821 */   addu      $a3, $zero, $zero
/* 1166C0 800F85D0 8FA5002C */  lw         $a1, 0x2C($sp)
/* 1166C4 800F85D4 8FA60030 */  lw         $a2, 0x30($sp)
/* 1166C8 800F85D8 8FA70038 */  lw         $a3, 0x38($sp)
/* 1166CC 800F85DC 02002021 */  addu       $a0, $s0, $zero
/* 1166D0 800F85E0 0C036173 */  jal        func_menu_800D85CC
/* 1166D4 800F85E4 AFA00010 */   sw        $zero, 0x10($sp)
/* 1166D8 800F85E8 02202021 */  addu       $a0, $s1, $zero
/* 1166DC 800F85EC 02002821 */  addu       $a1, $s0, $zero
/* 1166E0 800F85F0 0C036D30 */  jal        func_menu_800DB4C0
/* 1166E4 800F85F4 264601A4 */   addiu     $a2, $s2, 0x1A4
/* 1166E8 800F85F8 8FA20028 */  lw         $v0, 0x28($sp)
/* 1166EC 800F85FC 94420010 */  lhu        $v0, 0x10($v0)
/* 1166F0 800F8600 AE820000 */  sw         $v0, 0x0($s4)
/* 1166F4 800F8604 8E440024 */  lw         $a0, 0x24($s2)
/* 1166F8 800F8608 0C03BC63 */  jal        func_menu_800EF18C
/* 1166FC 800F860C 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 116700 800F8610 8E440020 */  lw         $a0, 0x20($s2)
/* 116704 800F8614 0C047910 */  jal        func_menu_8011E440
/* 116708 800F8618 2405000D */   addiu     $a1, $zero, 0xD
/* 11670C 800F861C 0803E190 */  j          .Lmenu_800F8640
/* 116710 800F8620 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800F8624:
/* 116714 800F8624 8E440020 */  lw         $a0, 0x20($s2)
/* 116718 800F8628 0C047910 */  jal        func_menu_8011E440
/* 11671C 800F862C 24050012 */   addiu     $a1, $zero, 0x12
/* 116720 800F8630 00001021 */  addu       $v0, $zero, $zero
/* 116724 800F8634 AE600000 */  sw         $zero, 0x0($s3)
/* 116728 800F8638 AE800000 */  sw         $zero, 0x0($s4)
/* 11672C 800F863C AE000000 */  sw         $zero, 0x0($s0)
.Lmenu_800F8640:
/* 116730 800F8640 8FBF0054 */  lw         $ra, 0x54($sp)
/* 116734 800F8644 8FB40050 */  lw         $s4, 0x50($sp)
/* 116738 800F8648 8FB3004C */  lw         $s3, 0x4C($sp)
/* 11673C 800F864C 8FB20048 */  lw         $s2, 0x48($sp)
/* 116740 800F8650 8FB10044 */  lw         $s1, 0x44($sp)
/* 116744 800F8654 8FB00040 */  lw         $s0, 0x40($sp)
/* 116748 800F8658 03E00008 */  jr         $ra
/* 11674C 800F865C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_menu_800F8660
/* 116750 800F8660 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 116754 800F8664 AFB1003C */  sw         $s1, 0x3C($sp)
/* 116758 800F8668 00808821 */  addu       $s1, $a0, $zero
/* 11675C 800F866C AFBF0048 */  sw         $ra, 0x48($sp)
/* 116760 800F8670 AFB30044 */  sw         $s3, 0x44($sp)
/* 116764 800F8674 AFB20040 */  sw         $s2, 0x40($sp)
/* 116768 800F8678 AFB00038 */  sw         $s0, 0x38($sp)
/* 11676C 800F867C 8E22000C */  lw         $v0, 0xC($s1)
/* 116770 800F8680 8C53011C */  lw         $s3, 0x11C($v0)
/* 116774 800F8684 3C02800D */  lui        $v0, %hi(D_menu_800CC610)
/* 116778 800F8688 244AC610 */  addiu      $t2, $v0, %lo(D_menu_800CC610)
/* 11677C 800F868C 89470000 */  lwl        $a3, 0x0($t2)
/* 116780 800F8690 99470003 */  lwr        $a3, 0x3($t2)
/* 116784 800F8694 ABA70010 */  swl        $a3, 0x10($sp)
/* 116788 800F8698 BBA70013 */  swr        $a3, 0x13($sp)
/* 11678C 800F869C 3C02800D */  lui        $v0, %hi(D_menu_800CC614)
/* 116790 800F86A0 244AC614 */  addiu      $t2, $v0, %lo(D_menu_800CC614)
/* 116794 800F86A4 89470000 */  lwl        $a3, 0x0($t2)
/* 116798 800F86A8 99470003 */  lwr        $a3, 0x3($t2)
/* 11679C 800F86AC ABA70018 */  swl        $a3, 0x18($sp)
/* 1167A0 800F86B0 BBA7001B */  swr        $a3, 0x1B($sp)
/* 1167A4 800F86B4 16600019 */  bnez       $s3, .Lmenu_800F871C
/* 1167A8 800F86B8 00000000 */   nop
/* 1167AC 800F86BC 2633023C */  addiu      $s3, $s1, 0x23C
/* 1167B0 800F86C0 02602021 */  addu       $a0, $s3, $zero
/* 1167B4 800F86C4 8BA70010 */  lwl        $a3, 0x10($sp)
/* 1167B8 800F86C8 9BA70013 */  lwr        $a3, 0x13($sp)
/* 1167BC 800F86CC ABA70030 */  swl        $a3, 0x30($sp)
/* 1167C0 800F86D0 BBA70033 */  swr        $a3, 0x33($sp)
/* 1167C4 800F86D4 93A50030 */  lbu        $a1, 0x30($sp)
/* 1167C8 800F86D8 93A20031 */  lbu        $v0, 0x31($sp)
/* 1167CC 800F86DC 93A30032 */  lbu        $v1, 0x32($sp)
/* 1167D0 800F86E0 00052E00 */  sll        $a1, $a1, 24
/* 1167D4 800F86E4 00021400 */  sll        $v0, $v0, 16
/* 1167D8 800F86E8 00A22825 */  or         $a1, $a1, $v0
/* 1167DC 800F86EC 00031A00 */  sll        $v1, $v1, 8
/* 1167E0 800F86F0 93A20033 */  lbu        $v0, 0x33($sp)
/* 1167E4 800F86F4 00A32825 */  or         $a1, $a1, $v1
/* 1167E8 800F86F8 0C03B3BB */  jal        func_menu_800ECEEC
/* 1167EC 800F86FC 00A22825 */   or        $a1, $a1, $v0
/* 1167F0 800F8700 8E23000C */  lw         $v1, 0xC($s1)
/* 1167F4 800F8704 8C62012C */  lw         $v0, 0x12C($v1)
/* 1167F8 800F8708 02602821 */  addu       $a1, $s3, $zero
/* 1167FC 800F870C 84440060 */  lh         $a0, 0x60($v0)
/* 116800 800F8710 8C420064 */  lw         $v0, 0x64($v0)
/* 116804 800F8714 0040F809 */  jalr       $v0
/* 116808 800F8718 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F871C:
/* 11680C 800F871C 8A670000 */  lwl        $a3, 0x0($s3)
/* 116810 800F8720 9A670003 */  lwr        $a3, 0x3($s3)
/* 116814 800F8724 ABA70010 */  swl        $a3, 0x10($sp)
/* 116818 800F8728 BBA70013 */  swr        $a3, 0x13($sp)
/* 11681C 800F872C 8E220294 */  lw         $v0, 0x294($s1)
/* 116820 800F8730 24120002 */  addiu      $s2, $zero, 0x2
/* 116824 800F8734 14520016 */  bne        $v0, $s2, .Lmenu_800F8790
/* 116828 800F8738 02602021 */   addu      $a0, $s3, $zero
/* 11682C 800F873C 8BA70018 */  lwl        $a3, 0x18($sp)
/* 116830 800F8740 9BA7001B */  lwr        $a3, 0x1B($sp)
/* 116834 800F8744 ABA70030 */  swl        $a3, 0x30($sp)
/* 116838 800F8748 BBA70033 */  swr        $a3, 0x33($sp)
/* 11683C 800F874C 93A50030 */  lbu        $a1, 0x30($sp)
/* 116840 800F8750 93A20031 */  lbu        $v0, 0x31($sp)
/* 116844 800F8754 93A30032 */  lbu        $v1, 0x32($sp)
/* 116848 800F8758 00052E00 */  sll        $a1, $a1, 24
/* 11684C 800F875C 00021400 */  sll        $v0, $v0, 16
/* 116850 800F8760 00A22825 */  or         $a1, $a1, $v0
/* 116854 800F8764 00031A00 */  sll        $v1, $v1, 8
/* 116858 800F8768 93A20033 */  lbu        $v0, 0x33($sp)
/* 11685C 800F876C 00A32825 */  or         $a1, $a1, $v1
/* 116860 800F8770 0C03B3BB */  jal        func_menu_800ECEEC
/* 116864 800F8774 00A22825 */   or        $a1, $a1, $v0
/* 116868 800F8778 8E23000C */  lw         $v1, 0xC($s1)
/* 11686C 800F877C 8C62012C */  lw         $v0, 0x12C($v1)
/* 116870 800F8780 844400C8 */  lh         $a0, 0xC8($v0)
/* 116874 800F8784 8C4200CC */  lw         $v0, 0xCC($v0)
/* 116878 800F8788 0040F809 */  jalr       $v0
/* 11687C 800F878C 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F8790:
/* 116880 800F8790 8E25000C */  lw         $a1, 0xC($s1)
/* 116884 800F8794 0C01676B */  jal        func_80059DAC
/* 116888 800F8798 26240058 */   addiu     $a0, $s1, 0x58
/* 11688C 800F879C 8E220294 */  lw         $v0, 0x294($s1)
/* 116890 800F87A0 14520017 */  bne        $v0, $s2, .Lmenu_800F8800
/* 116894 800F87A4 00000000 */   nop
/* 116898 800F87A8 02602021 */  addu       $a0, $s3, $zero
/* 11689C 800F87AC 8BA70010 */  lwl        $a3, 0x10($sp)
/* 1168A0 800F87B0 9BA70013 */  lwr        $a3, 0x13($sp)
/* 1168A4 800F87B4 ABA70030 */  swl        $a3, 0x30($sp)
/* 1168A8 800F87B8 BBA70033 */  swr        $a3, 0x33($sp)
/* 1168AC 800F87BC 93A50030 */  lbu        $a1, 0x30($sp)
/* 1168B0 800F87C0 93A20031 */  lbu        $v0, 0x31($sp)
/* 1168B4 800F87C4 93A30032 */  lbu        $v1, 0x32($sp)
/* 1168B8 800F87C8 00052E00 */  sll        $a1, $a1, 24
/* 1168BC 800F87CC 00021400 */  sll        $v0, $v0, 16
/* 1168C0 800F87D0 00A22825 */  or         $a1, $a1, $v0
/* 1168C4 800F87D4 00031A00 */  sll        $v1, $v1, 8
/* 1168C8 800F87D8 93A20033 */  lbu        $v0, 0x33($sp)
/* 1168CC 800F87DC 00A32825 */  or         $a1, $a1, $v1
/* 1168D0 800F87E0 0C03B3BB */  jal        func_menu_800ECEEC
/* 1168D4 800F87E4 00A22825 */   or        $a1, $a1, $v0
/* 1168D8 800F87E8 8E23000C */  lw         $v1, 0xC($s1)
/* 1168DC 800F87EC 8C62012C */  lw         $v0, 0x12C($v1)
/* 1168E0 800F87F0 844400C8 */  lh         $a0, 0xC8($v0)
/* 1168E4 800F87F4 8C4200CC */  lw         $v0, 0xCC($v0)
/* 1168E8 800F87F8 0040F809 */  jalr       $v0
/* 1168EC 800F87FC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F8800:
/* 1168F0 800F8800 8E220240 */  lw         $v0, 0x240($s1)
/* 1168F4 800F8804 104000E0 */  beqz       $v0, .Lmenu_800F8B88
/* 1168F8 800F8808 00000000 */   nop
/* 1168FC 800F880C 8E220244 */  lw         $v0, 0x244($s1)
/* 116900 800F8810 10400007 */  beqz       $v0, .Lmenu_800F8830
/* 116904 800F8814 00000000 */   nop
/* 116908 800F8818 8E25000C */  lw         $a1, 0xC($s1)
/* 11690C 800F881C 8E240024 */  lw         $a0, 0x24($s1)
/* 116910 800F8820 3C063DCC */  lui        $a2, (0x3DCCCCCD >> 16)
/* 116914 800F8824 34C6CCCD */  ori        $a2, $a2, (0x3DCCCCCD & 0xFFFF)
/* 116918 800F8828 0C036BA5 */  jal        func_menu_800DAE94
/* 11691C 800F882C 24842CF8 */   addiu     $a0, $a0, 0x2CF8
.Lmenu_800F8830:
/* 116920 800F8830 C6200250 */  lwc1       $f0, 0x250($s1)
/* 116924 800F8834 263001A4 */  addiu      $s0, $s1, 0x1A4
/* 116928 800F8838 E7A00020 */  swc1       $f0, 0x20($sp)
/* 11692C 800F883C C6200254 */  lwc1       $f0, 0x254($s1)
/* 116930 800F8840 02002021 */  addu       $a0, $s0, $zero
/* 116934 800F8844 E7A00024 */  swc1       $f0, 0x24($sp)
/* 116938 800F8848 C620026C */  lwc1       $f0, 0x26C($s1)
/* 11693C 800F884C 27A50020 */  addiu      $a1, $sp, 0x20
/* 116940 800F8850 0C015962 */  jal        func_80056588
/* 116944 800F8854 E7A00028 */   swc1      $f0, 0x28($sp)
/* 116948 800F8858 8E230294 */  lw         $v1, 0x294($s1)
/* 11694C 800F885C 24020001 */  addiu      $v0, $zero, 0x1
/* 116950 800F8860 14620017 */  bne        $v1, $v0, .Lmenu_800F88C0
/* 116954 800F8864 00000000 */   nop
/* 116958 800F8868 02602021 */  addu       $a0, $s3, $zero
/* 11695C 800F886C 8BA70018 */  lwl        $a3, 0x18($sp)
/* 116960 800F8870 9BA7001B */  lwr        $a3, 0x1B($sp)
/* 116964 800F8874 ABA70030 */  swl        $a3, 0x30($sp)
/* 116968 800F8878 BBA70033 */  swr        $a3, 0x33($sp)
/* 11696C 800F887C 93A50030 */  lbu        $a1, 0x30($sp)
/* 116970 800F8880 93A20031 */  lbu        $v0, 0x31($sp)
/* 116974 800F8884 93A30032 */  lbu        $v1, 0x32($sp)
/* 116978 800F8888 00052E00 */  sll        $a1, $a1, 24
/* 11697C 800F888C 00021400 */  sll        $v0, $v0, 16
/* 116980 800F8890 00A22825 */  or         $a1, $a1, $v0
/* 116984 800F8894 00031A00 */  sll        $v1, $v1, 8
/* 116988 800F8898 93A20033 */  lbu        $v0, 0x33($sp)
/* 11698C 800F889C 00A32825 */  or         $a1, $a1, $v1
/* 116990 800F88A0 0C03B3BB */  jal        func_menu_800ECEEC
/* 116994 800F88A4 00A22825 */   or        $a1, $a1, $v0
/* 116998 800F88A8 8E23000C */  lw         $v1, 0xC($s1)
/* 11699C 800F88AC 8C62012C */  lw         $v0, 0x12C($v1)
/* 1169A0 800F88B0 844400C8 */  lh         $a0, 0xC8($v0)
/* 1169A4 800F88B4 8C4200CC */  lw         $v0, 0xCC($v0)
/* 1169A8 800F88B8 0040F809 */  jalr       $v0
/* 1169AC 800F88BC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F88C0:
/* 1169B0 800F88C0 8E220248 */  lw         $v0, 0x248($s1)
/* 1169B4 800F88C4 3042000C */  andi       $v0, $v0, 0xC
/* 1169B8 800F88C8 1440001C */  bnez       $v0, .Lmenu_800F893C
/* 1169BC 800F88CC 00000000 */   nop
/* 1169C0 800F88D0 92220278 */  lbu        $v0, 0x278($s1)
/* 1169C4 800F88D4 30420007 */  andi       $v0, $v0, 0x7
/* 1169C8 800F88D8 10400037 */  beqz       $v0, .Lmenu_800F89B8
/* 1169CC 800F88DC 00000000 */   nop
/* 1169D0 800F88E0 92220290 */  lbu        $v0, 0x290($s1)
/* 1169D4 800F88E4 10520015 */  beq        $v0, $s2, .Lmenu_800F893C
/* 1169D8 800F88E8 24050040 */   addiu     $a1, $zero, 0x40
/* 1169DC 800F88EC 8E23000C */  lw         $v1, 0xC($s1)
/* 1169E0 800F88F0 8C62012C */  lw         $v0, 0x12C($v1)
/* 1169E4 800F88F4 00003021 */  addu       $a2, $zero, $zero
/* 1169E8 800F88F8 84440170 */  lh         $a0, 0x170($v0)
/* 1169EC 800F88FC 8C420174 */  lw         $v0, 0x174($v0)
/* 1169F0 800F8900 0040F809 */  jalr       $v0
/* 1169F4 800F8904 00642021 */   addu      $a0, $v1, $a0
/* 1169F8 800F8908 8E23000C */  lw         $v1, 0xC($s1)
/* 1169FC 800F890C 8C62012C */  lw         $v0, 0x12C($v1)
/* 116A00 800F8910 02002821 */  addu       $a1, $s0, $zero
/* 116A04 800F8914 84440118 */  lh         $a0, 0x118($v0)
/* 116A08 800F8918 8C42011C */  lw         $v0, 0x11C($v0)
/* 116A0C 800F891C 0040F809 */  jalr       $v0
/* 116A10 800F8920 00642021 */   addu      $a0, $v1, $a0
/* 116A14 800F8924 8E23000C */  lw         $v1, 0xC($s1)
/* 116A18 800F8928 8C62012C */  lw         $v0, 0x12C($v1)
/* 116A1C 800F892C 84440178 */  lh         $a0, 0x178($v0)
/* 116A20 800F8930 8C42017C */  lw         $v0, 0x17C($v0)
/* 116A24 800F8934 0040F809 */  jalr       $v0
/* 116A28 800F8938 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F893C:
/* 116A2C 800F893C 92220278 */  lbu        $v0, 0x278($s1)
/* 116A30 800F8940 30420007 */  andi       $v0, $v0, 0x7
/* 116A34 800F8944 1040001C */  beqz       $v0, .Lmenu_800F89B8
/* 116A38 800F8948 00000000 */   nop
/* 116A3C 800F894C C620026C */  lwc1       $f0, 0x26C($s1)
/* 116A40 800F8950 C6220270 */  lwc1       $f2, 0x270($s1)
/* 116A44 800F8954 46020001 */  sub.s      $f0, $f0, $f2
/* 116A48 800F8958 3C01800D */  lui        $at, %hi(D_menu_800CC618)
/* 116A4C 800F895C C426C618 */  lwc1       $f6, %lo(D_menu_800CC618)($at)
/* 116A50 800F8960 46060101 */  sub.s      $f4, $f0, $f6
/* 116A54 800F8964 4606203C */  c.lt.s     $f4, $f6
/* 116A58 800F8968 00000000 */  nop
/* 116A5C 800F896C 4500002C */  bc1f       .Lmenu_800F8A20
/* 116A60 800F8970 24100096 */   addiu     $s0, $zero, 0x96
/* 116A64 800F8974 92230290 */  lbu        $v1, 0x290($s1)
/* 116A68 800F8978 24020002 */  addiu      $v0, $zero, 0x2
/* 116A6C 800F897C 10620029 */  beq        $v1, $v0, .Lmenu_800F8A24
/* 116A70 800F8980 263201A4 */   addiu     $s2, $s1, 0x1A4
/* 116A74 800F8984 44800000 */  mtc1       $zero, $f0
/* 116A78 800F8988 4600203C */  c.lt.s     $f4, $f0
/* 116A7C 800F898C 00000000 */  nop
/* 116A80 800F8990 45010024 */  bc1t       .Lmenu_800F8A24
/* 116A84 800F8994 00008021 */   addu      $s0, $zero, $zero
/* 116A88 800F8998 3C01800D */  lui        $at, %hi(D_menu_800CC61C)
/* 116A8C 800F899C C422C61C */  lwc1       $f2, %lo(D_menu_800CC61C)($at)
/* 116A90 800F89A0 46062003 */  div.s      $f0, $f4, $f6
/* 116A94 800F89A4 46020002 */  mul.s      $f0, $f0, $f2
/* 116A98 800F89A8 4600020D */  trunc.w.s  $f8, $f0
/* 116A9C 800F89AC 44104000 */  mfc1       $s0, $f8
/* 116AA0 800F89B0 0803E28A */  j          .Lmenu_800F8A28
/* 116AA4 800F89B4 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800F89B8:
/* 116AA8 800F89B8 C6200268 */  lwc1       $f0, 0x268($s1)
/* 116AAC 800F89BC 46800020 */  cvt.s.w    $f0, $f0
/* 116AB0 800F89C0 3C01800D */  lui        $at, %hi(D_menu_800CC620)
/* 116AB4 800F89C4 C422C620 */  lwc1       $f2, %lo(D_menu_800CC620)($at)
/* 116AB8 800F89C8 3C01800D */  lui        $at, %hi(D_menu_800CC624)
/* 116ABC 800F89CC C424C624 */  lwc1       $f4, %lo(D_menu_800CC624)($at)
/* 116AC0 800F89D0 46020003 */  div.s      $f0, $f0, $f2
/* 116AC4 800F89D4 46040002 */  mul.s      $f0, $f0, $f4
/* 116AC8 800F89D8 3C01800D */  lui        $at, %hi(D_menu_800CC628)
/* 116ACC 800F89DC C422C628 */  lwc1       $f2, %lo(D_menu_800CC628)($at)
/* 116AD0 800F89E0 46020002 */  mul.s      $f0, $f0, $f2
/* 116AD4 800F89E4 3C038003 */  lui        $v1, %hi(D_8002D2B0)
/* 116AD8 800F89E8 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* 116ADC 800F89EC 3C01800D */  lui        $at, %hi(D_menu_800CC62C)
/* 116AE0 800F89F0 C422C62C */  lwc1       $f2, %lo(D_menu_800CC62C)($at)
/* 116AE4 800F89F4 4600020D */  trunc.w.s  $f8, $f0
/* 116AE8 800F89F8 44024000 */  mfc1       $v0, $f8
/* 116AEC 800F89FC 2442FF00 */  addiu      $v0, $v0, -0x100
/* 116AF0 800F8A00 304203FF */  andi       $v0, $v0, 0x3FF
/* 116AF4 800F8A04 00021080 */  sll        $v0, $v0, 2
/* 116AF8 800F8A08 00431021 */  addu       $v0, $v0, $v1
/* 116AFC 800F8A0C C4400000 */  lwc1       $f0, 0x0($v0)
/* 116B00 800F8A10 46020002 */  mul.s      $f0, $f0, $f2
/* 116B04 800F8A14 4600020D */  trunc.w.s  $f8, $f0
/* 116B08 800F8A18 44024000 */  mfc1       $v0, $f8
/* 116B0C 800F8A1C 24500064 */  addiu      $s0, $v0, 0x64
.Lmenu_800F8A20:
/* 116B10 800F8A20 263201A4 */  addiu      $s2, $s1, 0x1A4
.Lmenu_800F8A24:
/* 116B14 800F8A24 02402021 */  addu       $a0, $s2, $zero
.Lmenu_800F8A28:
/* 116B18 800F8A28 C6200270 */  lwc1       $f0, 0x270($s1)
/* 116B1C 800F8A2C 27A50020 */  addiu      $a1, $sp, 0x20
/* 116B20 800F8A30 0C015962 */  jal        func_80056588
/* 116B24 800F8A34 E7A00028 */   swc1      $f0, 0x28($sp)
/* 116B28 800F8A38 8E220248 */  lw         $v0, 0x248($s1)
/* 116B2C 800F8A3C 3042000C */  andi       $v0, $v0, 0xC
/* 116B30 800F8A40 1440001B */  bnez       $v0, .Lmenu_800F8AB0
/* 116B34 800F8A44 00000000 */   nop
/* 116B38 800F8A48 12000015 */  beqz       $s0, .Lmenu_800F8AA0
/* 116B3C 800F8A4C 02002821 */   addu      $a1, $s0, $zero
/* 116B40 800F8A50 8E23000C */  lw         $v1, 0xC($s1)
/* 116B44 800F8A54 8C62012C */  lw         $v0, 0x12C($v1)
/* 116B48 800F8A58 00003021 */  addu       $a2, $zero, $zero
/* 116B4C 800F8A5C 84440170 */  lh         $a0, 0x170($v0)
/* 116B50 800F8A60 8C420174 */  lw         $v0, 0x174($v0)
/* 116B54 800F8A64 0040F809 */  jalr       $v0
/* 116B58 800F8A68 00642021 */   addu      $a0, $v1, $a0
/* 116B5C 800F8A6C 8E23000C */  lw         $v1, 0xC($s1)
/* 116B60 800F8A70 8C62012C */  lw         $v0, 0x12C($v1)
/* 116B64 800F8A74 02402821 */  addu       $a1, $s2, $zero
/* 116B68 800F8A78 84440118 */  lh         $a0, 0x118($v0)
/* 116B6C 800F8A7C 8C42011C */  lw         $v0, 0x11C($v0)
/* 116B70 800F8A80 0040F809 */  jalr       $v0
/* 116B74 800F8A84 00642021 */   addu      $a0, $v1, $a0
/* 116B78 800F8A88 8E23000C */  lw         $v1, 0xC($s1)
/* 116B7C 800F8A8C 8C62012C */  lw         $v0, 0x12C($v1)
/* 116B80 800F8A90 84440178 */  lh         $a0, 0x178($v0)
/* 116B84 800F8A94 8C42017C */  lw         $v0, 0x17C($v0)
/* 116B88 800F8A98 0040F809 */  jalr       $v0
/* 116B8C 800F8A9C 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F8AA0:
/* 116B90 800F8AA0 8E220248 */  lw         $v0, 0x248($s1)
/* 116B94 800F8AA4 3042000C */  andi       $v0, $v0, 0xC
/* 116B98 800F8AA8 10400004 */  beqz       $v0, .Lmenu_800F8ABC
/* 116B9C 800F8AAC 00000000 */   nop
.Lmenu_800F8AB0:
/* 116BA0 800F8AB0 C6200274 */  lwc1       $f0, 0x274($s1)
/* 116BA4 800F8AB4 0803E2B2 */  j          .Lmenu_800F8AC8
/* 116BA8 800F8AB8 E7A00028 */   swc1      $f0, 0x28($sp)
.Lmenu_800F8ABC:
/* 116BAC 800F8ABC 3C01800D */  lui        $at, %hi(D_menu_800CC630)
/* 116BB0 800F8AC0 C420C630 */  lwc1       $f0, %lo(D_menu_800CC630)($at)
/* 116BB4 800F8AC4 E7A00028 */  swc1       $f0, 0x28($sp)
.Lmenu_800F8AC8:
/* 116BB8 800F8AC8 263001A4 */  addiu      $s0, $s1, 0x1A4
/* 116BBC 800F8ACC 02002021 */  addu       $a0, $s0, $zero
/* 116BC0 800F8AD0 0C015962 */  jal        func_80056588
/* 116BC4 800F8AD4 27A50020 */   addiu     $a1, $sp, 0x20
/* 116BC8 800F8AD8 92230290 */  lbu        $v1, 0x290($s1)
/* 116BCC 800F8ADC 24020002 */  addiu      $v0, $zero, 0x2
/* 116BD0 800F8AE0 14620005 */  bne        $v1, $v0, .Lmenu_800F8AF8
/* 116BD4 800F8AE4 00000000 */   nop
/* 116BD8 800F8AE8 8E220248 */  lw         $v0, 0x248($s1)
/* 116BDC 800F8AEC 3042000C */  andi       $v0, $v0, 0xC
/* 116BE0 800F8AF0 50400009 */  beql       $v0, $zero, .Lmenu_800F8B18
/* 116BE4 800F8AF4 262401A4 */   addiu     $a0, $s1, 0x1A4
.Lmenu_800F8AF8:
/* 116BE8 800F8AF8 8E23000C */  lw         $v1, 0xC($s1)
/* 116BEC 800F8AFC 8C62012C */  lw         $v0, 0x12C($v1)
/* 116BF0 800F8B00 02002821 */  addu       $a1, $s0, $zero
/* 116BF4 800F8B04 84440118 */  lh         $a0, 0x118($v0)
/* 116BF8 800F8B08 8C42011C */  lw         $v0, 0x11C($v0)
/* 116BFC 800F8B0C 0040F809 */  jalr       $v0
/* 116C00 800F8B10 00642021 */   addu      $a0, $v1, $a0
/* 116C04 800F8B14 262401A4 */  addiu      $a0, $s1, 0x1A4
.Lmenu_800F8B18:
/* 116C08 800F8B18 0C015962 */  jal        func_80056588
/* 116C0C 800F8B1C 26250250 */   addiu     $a1, $s1, 0x250
/* 116C10 800F8B20 8E230294 */  lw         $v1, 0x294($s1)
/* 116C14 800F8B24 24020001 */  addiu      $v0, $zero, 0x1
/* 116C18 800F8B28 14620017 */  bne        $v1, $v0, .Lmenu_800F8B88
/* 116C1C 800F8B2C 00000000 */   nop
/* 116C20 800F8B30 02602021 */  addu       $a0, $s3, $zero
/* 116C24 800F8B34 8BA80010 */  lwl        $t0, 0x10($sp)
/* 116C28 800F8B38 9BA80013 */  lwr        $t0, 0x13($sp)
/* 116C2C 800F8B3C ABA80030 */  swl        $t0, 0x30($sp)
/* 116C30 800F8B40 BBA80033 */  swr        $t0, 0x33($sp)
/* 116C34 800F8B44 93A50030 */  lbu        $a1, 0x30($sp)
/* 116C38 800F8B48 93A20031 */  lbu        $v0, 0x31($sp)
/* 116C3C 800F8B4C 93A30032 */  lbu        $v1, 0x32($sp)
/* 116C40 800F8B50 00052E00 */  sll        $a1, $a1, 24
/* 116C44 800F8B54 00021400 */  sll        $v0, $v0, 16
/* 116C48 800F8B58 00A22825 */  or         $a1, $a1, $v0
/* 116C4C 800F8B5C 00031A00 */  sll        $v1, $v1, 8
/* 116C50 800F8B60 93A20033 */  lbu        $v0, 0x33($sp)
/* 116C54 800F8B64 00A32825 */  or         $a1, $a1, $v1
/* 116C58 800F8B68 0C03B3BB */  jal        func_menu_800ECEEC
/* 116C5C 800F8B6C 00A22825 */   or        $a1, $a1, $v0
/* 116C60 800F8B70 8E23000C */  lw         $v1, 0xC($s1)
/* 116C64 800F8B74 8C62012C */  lw         $v0, 0x12C($v1)
/* 116C68 800F8B78 844400C8 */  lh         $a0, 0xC8($v0)
/* 116C6C 800F8B7C 8C4200CC */  lw         $v0, 0xCC($v0)
/* 116C70 800F8B80 0040F809 */  jalr       $v0
/* 116C74 800F8B84 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F8B88:
/* 116C78 800F8B88 8E220248 */  lw         $v0, 0x248($s1)
/* 116C7C 800F8B8C 3042000C */  andi       $v0, $v0, 0xC
/* 116C80 800F8B90 14400002 */  bnez       $v0, .Lmenu_800F8B9C
/* 116C84 800F8B94 24020001 */   addiu     $v0, $zero, 0x1
/* 116C88 800F8B98 AE220244 */  sw         $v0, 0x244($s1)
.Lmenu_800F8B9C:
/* 116C8C 800F8B9C 8FBF0048 */  lw         $ra, 0x48($sp)
/* 116C90 800F8BA0 8FB30044 */  lw         $s3, 0x44($sp)
/* 116C94 800F8BA4 8FB20040 */  lw         $s2, 0x40($sp)
/* 116C98 800F8BA8 8FB1003C */  lw         $s1, 0x3C($sp)
/* 116C9C 800F8BAC 8FB00038 */  lw         $s0, 0x38($sp)
/* 116CA0 800F8BB0 24020001 */  addiu      $v0, $zero, 0x1
/* 116CA4 800F8BB4 03E00008 */  jr         $ra
/* 116CA8 800F8BB8 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800F8BBC
/* 116CAC 800F8BBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 116CB0 800F8BC0 AFB00010 */  sw         $s0, 0x10($sp)
/* 116CB4 800F8BC4 00808021 */  addu       $s0, $a0, $zero
/* 116CB8 800F8BC8 AFB10014 */  sw         $s1, 0x14($sp)
/* 116CBC 800F8BCC AFBF0018 */  sw         $ra, 0x18($sp)
/* 116CC0 800F8BD0 0C03E320 */  jal        func_menu_800F8C80
/* 116CC4 800F8BD4 00A08821 */   addu      $s1, $a1, $zero
/* 116CC8 800F8BD8 8E030268 */  lw         $v1, 0x268($s0)
/* 116CCC 800F8BDC 0223102B */  sltu       $v0, $s1, $v1
/* 116CD0 800F8BE0 54400004 */  bnel       $v0, $zero, .Lmenu_800F8BF4
/* 116CD4 800F8BE4 00711023 */   subu      $v0, $v1, $s1
/* 116CD8 800F8BE8 02231823 */  subu       $v1, $s1, $v1
/* 116CDC 800F8BEC 240203E8 */  addiu      $v0, $zero, 0x3E8
/* 116CE0 800F8BF0 00431023 */  subu       $v0, $v0, $v1
.Lmenu_800F8BF4:
/* 116CE4 800F8BF4 AE020268 */  sw         $v0, 0x268($s0)
/* 116CE8 800F8BF8 260400A8 */  addiu      $a0, $s0, 0xA8
/* 116CEC 800F8BFC 0C0197F5 */  jal        func_80065FD4
/* 116CF0 800F8C00 02202821 */   addu      $a1, $s1, $zero
/* 116CF4 800F8C04 8E020248 */  lw         $v0, 0x248($s0)
/* 116CF8 800F8C08 10400017 */  beqz       $v0, .Lmenu_800F8C68
/* 116CFC 800F8C0C 30420001 */   andi      $v0, $v0, 0x1
/* 116D00 800F8C10 10400003 */  beqz       $v0, .Lmenu_800F8C20
/* 116D04 800F8C14 02002021 */   addu      $a0, $s0, $zero
/* 116D08 800F8C18 0C03E3C9 */  jal        func_menu_800F8F24
/* 116D0C 800F8C1C 02202821 */   addu      $a1, $s1, $zero
.Lmenu_800F8C20:
/* 116D10 800F8C20 8E020248 */  lw         $v0, 0x248($s0)
/* 116D14 800F8C24 30420002 */  andi       $v0, $v0, 0x2
/* 116D18 800F8C28 10400003 */  beqz       $v0, .Lmenu_800F8C38
/* 116D1C 800F8C2C 02002021 */   addu      $a0, $s0, $zero
/* 116D20 800F8C30 0C03E409 */  jal        func_menu_800F9024
/* 116D24 800F8C34 02202821 */   addu      $a1, $s1, $zero
.Lmenu_800F8C38:
/* 116D28 800F8C38 8E020248 */  lw         $v0, 0x248($s0)
/* 116D2C 800F8C3C 30420004 */  andi       $v0, $v0, 0x4
/* 116D30 800F8C40 10400003 */  beqz       $v0, .Lmenu_800F8C50
/* 116D34 800F8C44 02002021 */   addu      $a0, $s0, $zero
/* 116D38 800F8C48 0C03E459 */  jal        func_menu_800F9164
/* 116D3C 800F8C4C 02202821 */   addu      $a1, $s1, $zero
.Lmenu_800F8C50:
/* 116D40 800F8C50 8E020248 */  lw         $v0, 0x248($s0)
/* 116D44 800F8C54 30420008 */  andi       $v0, $v0, 0x8
/* 116D48 800F8C58 10400003 */  beqz       $v0, .Lmenu_800F8C68
/* 116D4C 800F8C5C 02002021 */   addu      $a0, $s0, $zero
/* 116D50 800F8C60 0C03E4D0 */  jal        func_menu_800F9340
/* 116D54 800F8C64 02202821 */   addu      $a1, $s1, $zero
.Lmenu_800F8C68:
/* 116D58 800F8C68 24020001 */  addiu      $v0, $zero, 0x1
/* 116D5C 800F8C6C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 116D60 800F8C70 8FB10014 */  lw         $s1, 0x14($sp)
/* 116D64 800F8C74 8FB00010 */  lw         $s0, 0x10($sp)
/* 116D68 800F8C78 03E00008 */  jr         $ra
/* 116D6C 800F8C7C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F8C80
/* 116D70 800F8C80 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 116D74 800F8C84 AFB1002C */  sw         $s1, 0x2C($sp)
/* 116D78 800F8C88 00808821 */  addu       $s1, $a0, $zero
/* 116D7C 800F8C8C AFBF0034 */  sw         $ra, 0x34($sp)
/* 116D80 800F8C90 AFB20030 */  sw         $s2, 0x30($sp)
/* 116D84 800F8C94 AFB00028 */  sw         $s0, 0x28($sp)
/* 116D88 800F8C98 8E220248 */  lw         $v0, 0x248($s1)
/* 116D8C 800F8C9C 3042000C */  andi       $v0, $v0, 0xC
/* 116D90 800F8CA0 14400088 */  bnez       $v0, .Lmenu_800F8EC4
/* 116D94 800F8CA4 00A09021 */   addu      $s2, $a1, $zero
/* 116D98 800F8CA8 26240028 */  addiu      $a0, $s1, 0x28
/* 116D9C 800F8CAC 27A50018 */  addiu      $a1, $sp, 0x18
/* 116DA0 800F8CB0 27A6001C */  addiu      $a2, $sp, 0x1C
/* 116DA4 800F8CB4 8C90000C */  lw         $s0, 0xC($a0)
/* 116DA8 800F8CB8 0C036165 */  jal        func_menu_800D8594
/* 116DAC 800F8CBC 27A70020 */   addiu     $a3, $sp, 0x20
/* 116DB0 800F8CC0 8E240024 */  lw         $a0, 0x24($s1)
/* 116DB4 800F8CC4 8FA60018 */  lw         $a2, 0x18($sp)
/* 116DB8 800F8CC8 8FA7001C */  lw         $a3, 0x1C($sp)
/* 116DBC 800F8CCC 8FA20020 */  lw         $v0, 0x20($sp)
/* 116DC0 800F8CD0 24842CF8 */  addiu      $a0, $a0, 0x2CF8
/* 116DC4 800F8CD4 02002821 */  addu       $a1, $s0, $zero
/* 116DC8 800F8CD8 0C03632B */  jal        func_menu_800D8CAC
/* 116DCC 800F8CDC AFA20010 */   sw        $v0, 0x10($sp)
/* 116DD0 800F8CE0 04400008 */  bltz       $v0, .Lmenu_800F8D04
/* 116DD4 800F8CE4 00000000 */   nop
/* 116DD8 800F8CE8 92220278 */  lbu        $v0, 0x278($s1)
/* 116DDC 800F8CEC 1440000A */  bnez       $v0, .Lmenu_800F8D18
/* 116DE0 800F8CF0 02202021 */   addu      $a0, $s1, $zero
/* 116DE4 800F8CF4 0C03E3BF */  jal        func_menu_800F8EFC
/* 116DE8 800F8CF8 00002821 */   addu      $a1, $zero, $zero
/* 116DEC 800F8CFC 0803E346 */  j          .Lmenu_800F8D18
/* 116DF0 800F8D00 00000000 */   nop
.Lmenu_800F8D04:
/* 116DF4 800F8D04 92220278 */  lbu        $v0, 0x278($s1)
/* 116DF8 800F8D08 C6200270 */  lwc1       $f0, 0x270($s1)
/* 116DFC 800F8D0C 304200F8 */  andi       $v0, $v0, 0xF8
/* 116E00 800F8D10 A2220278 */  sb         $v0, 0x278($s1)
/* 116E04 800F8D14 E620026C */  swc1       $f0, 0x26C($s1)
.Lmenu_800F8D18:
/* 116E08 800F8D18 92230278 */  lbu        $v1, 0x278($s1)
/* 116E0C 800F8D1C 30620007 */  andi       $v0, $v1, 0x7
/* 116E10 800F8D20 1040001B */  beqz       $v0, .Lmenu_800F8D90
/* 116E14 800F8D24 00000000 */   nop
/* 116E18 800F8D28 8E250264 */  lw         $a1, 0x264($s1)
/* 116E1C 800F8D2C 0245102B */  sltu       $v0, $s2, $a1
/* 116E20 800F8D30 14400016 */  bnez       $v0, .Lmenu_800F8D8C
/* 116E24 800F8D34 00B21023 */   subu      $v0, $a1, $s2
/* 116E28 800F8D38 30620001 */  andi       $v0, $v1, 0x1
/* 116E2C 800F8D3C 10400005 */  beqz       $v0, .Lmenu_800F8D54
/* 116E30 800F8D40 306200FE */   andi      $v0, $v1, 0xFE
/* 116E34 800F8D44 34420002 */  ori        $v0, $v0, 0x2
/* 116E38 800F8D48 A2220278 */  sb         $v0, 0x278($s1)
/* 116E3C 800F8D4C 0803E364 */  j          .Lmenu_800F8D90
/* 116E40 800F8D50 AE200264 */   sw        $zero, 0x264($s1)
.Lmenu_800F8D54:
/* 116E44 800F8D54 30620002 */  andi       $v0, $v1, 0x2
/* 116E48 800F8D58 10400005 */  beqz       $v0, .Lmenu_800F8D70
/* 116E4C 800F8D5C 02202021 */   addu      $a0, $s1, $zero
/* 116E50 800F8D60 0C03E3B7 */  jal        func_menu_800F8EDC
/* 116E54 800F8D64 02452823 */   subu      $a1, $s2, $a1
/* 116E58 800F8D68 0803E364 */  j          .Lmenu_800F8D90
/* 116E5C 800F8D6C 00000000 */   nop
.Lmenu_800F8D70:
/* 116E60 800F8D70 30620004 */  andi       $v0, $v1, 0x4
/* 116E64 800F8D74 10400006 */  beqz       $v0, .Lmenu_800F8D90
/* 116E68 800F8D78 00000000 */   nop
/* 116E6C 800F8D7C 0C03E3BF */  jal        func_menu_800F8EFC
/* 116E70 800F8D80 02452823 */   subu      $a1, $s2, $a1
/* 116E74 800F8D84 0803E364 */  j          .Lmenu_800F8D90
/* 116E78 800F8D88 00000000 */   nop
.Lmenu_800F8D8C:
/* 116E7C 800F8D8C AE220264 */  sw         $v0, 0x264($s1)
.Lmenu_800F8D90:
/* 116E80 800F8D90 8E220024 */  lw         $v0, 0x24($s1)
/* 116E84 800F8D94 3C01800D */  lui        $at, %hi(D_menu_800CC634)
/* 116E88 800F8D98 C422C634 */  lwc1       $f2, %lo(D_menu_800CC634)($at)
/* 116E8C 800F8D9C C4403C7C */  lwc1       $f0, 0x3C7C($v0)
/* 116E90 800F8DA0 46800020 */  cvt.s.w    $f0, $f0
/* 116E94 800F8DA4 46020002 */  mul.s      $f0, $f0, $f2
/* 116E98 800F8DA8 3C01800D */  lui        $at, %hi(D_menu_800CC638)
/* 116E9C 800F8DAC C422C638 */  lwc1       $f2, %lo(D_menu_800CC638)($at)
/* 116EA0 800F8DB0 92230278 */  lbu        $v1, 0x278($s1)
/* 116EA4 800F8DB4 46020080 */  add.s      $f2, $f0, $f2
/* 116EA8 800F8DB8 30620007 */  andi       $v0, $v1, 0x7
/* 116EAC 800F8DBC 1040003D */  beqz       $v0, .Lmenu_800F8EB4
/* 116EB0 800F8DC0 E6220270 */   swc1      $f2, 0x270($s1)
/* 116EB4 800F8DC4 30620001 */  andi       $v0, $v1, 0x1
/* 116EB8 800F8DC8 10400028 */  beqz       $v0, .Lmenu_800F8E6C
/* 116EBC 800F8DCC 30620004 */   andi      $v0, $v1, 0x4
/* 116EC0 800F8DD0 C620026C */  lwc1       $f0, 0x26C($s1)
/* 116EC4 800F8DD4 46020001 */  sub.s      $f0, $f0, $f2
/* 116EC8 800F8DD8 3C01800D */  lui        $at, %hi(D_menu_800CC63C)
/* 116ECC 800F8DDC C424C63C */  lwc1       $f4, %lo(D_menu_800CC63C)($at)
/* 116ED0 800F8DE0 4600018D */  trunc.w.s  $f6, $f0
/* 116ED4 800F8DE4 44023000 */  mfc1       $v0, $f6
/* 116ED8 800F8DE8 3C01800D */  lui        $at, %hi(D_menu_800CC640)
/* 116EDC 800F8DEC C420C640 */  lwc1       $f0, %lo(D_menu_800CC640)($at)
/* 116EE0 800F8DF0 44821000 */  mtc1       $v0, $f2
/* 116EE4 800F8DF4 468010A0 */  cvt.s.w    $f2, $f2
/* 116EE8 800F8DF8 46001083 */  div.s      $f2, $f2, $f0
/* 116EEC 800F8DFC 4602203C */  c.lt.s     $f4, $f2
/* 116EF0 800F8E00 00000000 */  nop
/* 116EF4 800F8E04 45000003 */  bc1f       .Lmenu_800F8E14
/* 116EF8 800F8E08 00000000 */   nop
/* 116EFC 800F8E0C 0803E38B */  j          .Lmenu_800F8E2C
/* 116F00 800F8E10 46002086 */   mov.s     $f2, $f4
.Lmenu_800F8E14:
/* 116F04 800F8E14 3C01800D */  lui        $at, %hi(D_menu_800CC644)
/* 116F08 800F8E18 C420C644 */  lwc1       $f0, %lo(D_menu_800CC644)($at)
/* 116F0C 800F8E1C 4600103C */  c.lt.s     $f2, $f0
/* 116F10 800F8E20 00000000 */  nop
/* 116F14 800F8E24 45030001 */  bc1tl      .Lmenu_800F8E2C
/* 116F18 800F8E28 46000086 */   mov.s     $f2, $f0
.Lmenu_800F8E2C:
/* 116F1C 800F8E2C 3C01800D */  lui        $at, %hi(D_menu_800CC648)
/* 116F20 800F8E30 C420C648 */  lwc1       $f0, %lo(D_menu_800CC648)($at)
/* 116F24 800F8E34 46001002 */  mul.s      $f0, $f2, $f0
/* 116F28 800F8E38 44921000 */  mtc1       $s2, $f2
/* 116F2C 800F8E3C 468010A0 */  cvt.s.w    $f2, $f2
/* 116F30 800F8E40 46020002 */  mul.s      $f0, $f0, $f2
/* 116F34 800F8E44 C622026C */  lwc1       $f2, 0x26C($s1)
/* 116F38 800F8E48 46001081 */  sub.s      $f2, $f2, $f0
/* 116F3C 800F8E4C C6200270 */  lwc1       $f0, 0x270($s1)
/* 116F40 800F8E50 4600103E */  c.le.s     $f2, $f0
/* 116F44 800F8E54 00000000 */  nop
/* 116F48 800F8E58 4500001A */  bc1f       .Lmenu_800F8EC4
/* 116F4C 800F8E5C E622026C */   swc1      $f2, 0x26C($s1)
/* 116F50 800F8E60 E620026C */  swc1       $f0, 0x26C($s1)
/* 116F54 800F8E64 0803E3B1 */  j          .Lmenu_800F8EC4
/* 116F58 800F8E68 AE200264 */   sw        $zero, 0x264($s1)
.Lmenu_800F8E6C:
/* 116F5C 800F8E6C 10400015 */  beqz       $v0, .Lmenu_800F8EC4
/* 116F60 800F8E70 00000000 */   nop
/* 116F64 800F8E74 3C01800D */  lui        $at, %hi(D_menu_800CC64C)
/* 116F68 800F8E78 C420C64C */  lwc1       $f0, %lo(D_menu_800CC64C)($at)
/* 116F6C 800F8E7C 44921000 */  mtc1       $s2, $f2
/* 116F70 800F8E80 468010A0 */  cvt.s.w    $f2, $f2
/* 116F74 800F8E84 46001082 */  mul.s      $f2, $f2, $f0
/* 116F78 800F8E88 C620026C */  lwc1       $f0, 0x26C($s1)
/* 116F7C 800F8E8C 46020000 */  add.s      $f0, $f0, $f2
/* 116F80 800F8E90 3C01800D */  lui        $at, %hi(D_menu_800CC650)
/* 116F84 800F8E94 C422C650 */  lwc1       $f2, %lo(D_menu_800CC650)($at)
/* 116F88 800F8E98 4600103E */  c.le.s     $f2, $f0
/* 116F8C 800F8E9C 00000000 */  nop
/* 116F90 800F8EA0 45000008 */  bc1f       .Lmenu_800F8EC4
/* 116F94 800F8EA4 E620026C */   swc1      $f0, 0x26C($s1)
/* 116F98 800F8EA8 E622026C */  swc1       $f2, 0x26C($s1)
/* 116F9C 800F8EAC 0803E3B1 */  j          .Lmenu_800F8EC4
/* 116FA0 800F8EB0 AE200264 */   sw        $zero, 0x264($s1)
.Lmenu_800F8EB4:
/* 116FA4 800F8EB4 C6200270 */  lwc1       $f0, 0x270($s1)
/* 116FA8 800F8EB8 240209C4 */  addiu      $v0, $zero, 0x9C4
/* 116FAC 800F8EBC AE220264 */  sw         $v0, 0x264($s1)
/* 116FB0 800F8EC0 E620026C */  swc1       $f0, 0x26C($s1)
.Lmenu_800F8EC4:
/* 116FB4 800F8EC4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 116FB8 800F8EC8 8FB20030 */  lw         $s2, 0x30($sp)
/* 116FBC 800F8ECC 8FB1002C */  lw         $s1, 0x2C($sp)
/* 116FC0 800F8ED0 8FB00028 */  lw         $s0, 0x28($sp)
/* 116FC4 800F8ED4 03E00008 */  jr         $ra
/* 116FC8 800F8ED8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800F8EDC
/* 116FCC 800F8EDC 240209C4 */  addiu      $v0, $zero, 0x9C4
/* 116FD0 800F8EE0 90830278 */  lbu        $v1, 0x278($a0)
/* 116FD4 800F8EE4 00451023 */  subu       $v0, $v0, $a1
/* 116FD8 800F8EE8 AC820264 */  sw         $v0, 0x264($a0)
/* 116FDC 800F8EEC 34630004 */  ori        $v1, $v1, 0x4
/* 116FE0 800F8EF0 306300FC */  andi       $v1, $v1, 0xFC
/* 116FE4 800F8EF4 03E00008 */  jr         $ra
/* 116FE8 800F8EF8 A0830278 */   sb        $v1, 0x278($a0)

glabel func_menu_800F8EFC
/* 116FEC 800F8EFC 240209C4 */  addiu      $v0, $zero, 0x9C4
/* 116FF0 800F8F00 90830278 */  lbu        $v1, 0x278($a0)
/* 116FF4 800F8F04 00451023 */  subu       $v0, $v0, $a1
/* 116FF8 800F8F08 AC820264 */  sw         $v0, 0x264($a0)
/* 116FFC 800F8F0C 34630001 */  ori        $v1, $v1, 0x1
/* 117000 800F8F10 306300F9 */  andi       $v1, $v1, 0xF9
/* 117004 800F8F14 03E00008 */  jr         $ra
/* 117008 800F8F18 A0830278 */   sb        $v1, 0x278($a0)

glabel func_menu_800F8F1C
/* 11700C 800F8F1C 03E00008 */  jr         $ra
/* 117010 800F8F20 00001021 */   addu      $v0, $zero, $zero

glabel func_menu_800F8F24
/* 117014 800F8F24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117018 800F8F28 AFBF0010 */  sw         $ra, 0x10($sp)
/* 11701C 800F8F2C 8C8302A0 */  lw         $v1, 0x2A0($a0)
/* 117020 800F8F30 10600039 */  beqz       $v1, .Lmenu_800F9018
/* 117024 800F8F34 00A3102B */   sltu      $v0, $a1, $v1
/* 117028 800F8F38 14400007 */  bnez       $v0, .Lmenu_800F8F58
/* 11702C 800F8F3C 00651023 */   subu      $v0, $v1, $a1
/* 117030 800F8F40 8C820248 */  lw         $v0, 0x248($a0)
/* 117034 800F8F44 2403FFFE */  addiu      $v1, $zero, -0x2
/* 117038 800F8F48 AC8002A0 */  sw         $zero, 0x2A0($a0)
/* 11703C 800F8F4C 00431024 */  and        $v0, $v0, $v1
/* 117040 800F8F50 0803E3D7 */  j          .Lmenu_800F8F5C
/* 117044 800F8F54 AC820248 */   sw        $v0, 0x248($a0)
.Lmenu_800F8F58:
/* 117048 800F8F58 AC8202A0 */  sw         $v0, 0x2A0($a0)
.Lmenu_800F8F5C:
/* 11704C 800F8F5C C48202A0 */  lwc1       $f2, 0x2A0($a0)
/* 117050 800F8F60 468010A0 */  cvt.s.w    $f2, $f2
/* 117054 800F8F64 C48002A4 */  lwc1       $f0, 0x2A4($a0)
/* 117058 800F8F68 46800020 */  cvt.s.w    $f0, $f0
/* 11705C 800F8F6C 3C01800D */  lui        $at, %hi(D_menu_800CC654)
/* 117060 800F8F70 C428C654 */  lwc1       $f8, %lo(D_menu_800CC654)($at)
/* 117064 800F8F74 46001083 */  div.s      $f2, $f2, $f0
/* 117068 800F8F78 46081082 */  mul.s      $f2, $f2, $f8
/* 11706C 800F8F7C 3C01800D */  lui        $at, %hi(D_menu_800CC658)
/* 117070 800F8F80 C420C658 */  lwc1       $f0, %lo(D_menu_800CC658)($at)
/* 117074 800F8F84 3C038003 */  lui        $v1, %hi(D_8002D2B0)
/* 117078 800F8F88 46001082 */  mul.s      $f2, $f2, $f0
/* 11707C 800F8F8C 80820298 */  lb         $v0, 0x298($a0)
/* 117080 800F8F90 C486029C */  lwc1       $f6, 0x29C($a0)
/* 117084 800F8F94 00021080 */  sll        $v0, $v0, 2
/* 117088 800F8F98 00821021 */  addu       $v0, $a0, $v0
/* 11708C 800F8F9C 46083000 */  add.s      $f0, $f6, $f8
/* 117090 800F8FA0 C44402A8 */  lwc1       $f4, 0x2A8($v0)
/* 117094 800F8FA4 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* 117098 800F8FA8 4604003C */  c.lt.s     $f0, $f4
/* 11709C 800F8FAC 4600128D */  trunc.w.s  $f10, $f2
/* 1170A0 800F8FB0 44025000 */  mfc1       $v0, $f10
/* 1170A4 800F8FB4 2442FF00 */  addiu      $v0, $v0, -0x100
/* 1170A8 800F8FB8 304203FF */  andi       $v0, $v0, 0x3FF
/* 1170AC 800F8FBC 00021080 */  sll        $v0, $v0, 2
/* 1170B0 800F8FC0 00431021 */  addu       $v0, $v0, $v1
/* 1170B4 800F8FC4 C4420000 */  lwc1       $f2, 0x0($v0)
/* 1170B8 800F8FC8 45020005 */  bc1fl      .Lmenu_800F8FE0
/* 1170BC 800F8FCC 46083001 */   sub.s     $f0, $f6, $f8
/* 1170C0 800F8FD0 3C01800D */  lui        $at, %hi(D_menu_800CC65C)
/* 1170C4 800F8FD4 C420C65C */  lwc1       $f0, %lo(D_menu_800CC65C)($at)
/* 1170C8 800F8FD8 0803E3FF */  j          .Lmenu_800F8FFC
/* 1170CC 800F8FDC 46002101 */   sub.s     $f4, $f4, $f0
.Lmenu_800F8FE0:
/* 1170D0 800F8FE0 4600203C */  c.lt.s     $f4, $f0
/* 1170D4 800F8FE4 00000000 */  nop
/* 1170D8 800F8FE8 45000004 */  bc1f       .Lmenu_800F8FFC
/* 1170DC 800F8FEC 00000000 */   nop
/* 1170E0 800F8FF0 3C01800D */  lui        $at, %hi(D_menu_800CC660)
/* 1170E4 800F8FF4 C420C660 */  lwc1       $f0, %lo(D_menu_800CC660)($at)
/* 1170E8 800F8FF8 46002100 */  add.s      $f4, $f4, $f0
.Lmenu_800F8FFC:
/* 1170EC 800F8FFC C480029C */  lwc1       $f0, 0x29C($a0)
/* 1170F0 800F9000 46040001 */  sub.s      $f0, $f0, $f4
/* 1170F4 800F9004 46001002 */  mul.s      $f0, $f2, $f0
/* 1170F8 800F9008 46002100 */  add.s      $f4, $f4, $f0
/* 1170FC 800F900C 44052000 */  mfc1       $a1, $f4
/* 117100 800F9010 0C03DEC6 */  jal        func_menu_800F7B18
/* 117104 800F9014 00000000 */   nop
.Lmenu_800F9018:
/* 117108 800F9018 8FBF0010 */  lw         $ra, 0x10($sp)
/* 11710C 800F901C 03E00008 */  jr         $ra
/* 117110 800F9020 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F9024
/* 117114 800F9024 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 117118 800F9028 AFB00050 */  sw         $s0, 0x50($sp)
/* 11711C 800F902C 00808021 */  addu       $s0, $a0, $zero
/* 117120 800F9030 AFBF0054 */  sw         $ra, 0x54($sp)
/* 117124 800F9034 F7B40058 */  sdc1       $f20, 0x58($sp)
/* 117128 800F9038 8E03028C */  lw         $v1, 0x28C($s0)
/* 11712C 800F903C 10600044 */  beqz       $v1, .Lmenu_800F9150
/* 117130 800F9040 00A3102B */   sltu      $v0, $a1, $v1
/* 117134 800F9044 14400007 */  bnez       $v0, .Lmenu_800F9064
/* 117138 800F9048 00651023 */   subu      $v0, $v1, $a1
/* 11713C 800F904C 8E020248 */  lw         $v0, 0x248($s0)
/* 117140 800F9050 2403FFFD */  addiu      $v1, $zero, -0x3
/* 117144 800F9054 AE00028C */  sw         $zero, 0x28C($s0)
/* 117148 800F9058 00431024 */  and        $v0, $v0, $v1
/* 11714C 800F905C 0803E41A */  j          .Lmenu_800F9068
/* 117150 800F9060 AE020248 */   sw        $v0, 0x248($s0)
.Lmenu_800F9064:
/* 117154 800F9064 AE02028C */  sw         $v0, 0x28C($s0)
.Lmenu_800F9068:
/* 117158 800F9068 C600028C */  lwc1       $f0, 0x28C($s0)
/* 11715C 800F906C 46800020 */  cvt.s.w    $f0, $f0
/* 117160 800F9070 3C01800D */  lui        $at, %hi(D_menu_800CC664)
/* 117164 800F9074 C422C664 */  lwc1       $f2, %lo(D_menu_800CC664)($at)
/* 117168 800F9078 3C01800D */  lui        $at, %hi(D_menu_800CC668)
/* 11716C 800F907C C424C668 */  lwc1       $f4, %lo(D_menu_800CC668)($at)
/* 117170 800F9080 46020003 */  div.s      $f0, $f0, $f2
/* 117174 800F9084 46040002 */  mul.s      $f0, $f0, $f4
/* 117178 800F9088 3C01800D */  lui        $at, %hi(D_menu_800CC66C)
/* 11717C 800F908C C422C66C */  lwc1       $f2, %lo(D_menu_800CC66C)($at)
/* 117180 800F9090 02002021 */  addu       $a0, $s0, $zero
/* 117184 800F9094 46020002 */  mul.s      $f0, $f0, $f2
/* 117188 800F9098 3C038003 */  lui        $v1, %hi(D_8002D2B0)
/* 11718C 800F909C 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* 117190 800F90A0 92060290 */  lbu        $a2, 0x290($s0)
/* 117194 800F90A4 4600030D */  trunc.w.s  $f12, $f0
/* 117198 800F90A8 44026000 */  mfc1       $v0, $f12
/* 11719C 800F90AC 2442FF00 */  addiu      $v0, $v0, -0x100
/* 1171A0 800F90B0 304203FF */  andi       $v0, $v0, 0x3FF
/* 1171A4 800F90B4 00021080 */  sll        $v0, $v0, 2
/* 1171A8 800F90B8 00431021 */  addu       $v0, $v0, $v1
/* 1171AC 800F90BC C4540000 */  lwc1       $f20, 0x0($v0)
/* 1171B0 800F90C0 0C03E50E */  jal        func_menu_800F9438
/* 1171B4 800F90C4 27A50040 */   addiu     $a1, $sp, 0x40
/* 1171B8 800F90C8 C600027C */  lwc1       $f0, 0x27C($s0)
/* 1171BC 800F90CC C7A60040 */  lwc1       $f6, 0x40($sp)
/* 1171C0 800F90D0 46060001 */  sub.s      $f0, $f0, $f6
/* 1171C4 800F90D4 C7A40044 */  lwc1       $f4, 0x44($sp)
/* 1171C8 800F90D8 46140282 */  mul.s      $f10, $f0, $f20
/* 1171CC 800F90DC E7A00030 */  swc1       $f0, 0x30($sp)
/* 1171D0 800F90E0 C6000280 */  lwc1       $f0, 0x280($s0)
/* 1171D4 800F90E4 46040001 */  sub.s      $f0, $f0, $f4
/* 1171D8 800F90E8 C7A20048 */  lwc1       $f2, 0x48($sp)
/* 1171DC 800F90EC 46140202 */  mul.s      $f8, $f0, $f20
/* 1171E0 800F90F0 E7A00034 */  swc1       $f0, 0x34($sp)
/* 1171E4 800F90F4 C6000284 */  lwc1       $f0, 0x284($s0)
/* 1171E8 800F90F8 46020001 */  sub.s      $f0, $f0, $f2
/* 1171EC 800F90FC 46140502 */  mul.s      $f20, $f0, $f20
/* 1171F0 800F9100 460A3180 */  add.s      $f6, $f6, $f10
/* 1171F4 800F9104 46082100 */  add.s      $f4, $f4, $f8
/* 1171F8 800F9108 E7A00038 */  swc1       $f0, 0x38($sp)
/* 1171FC 800F910C 46141080 */  add.s      $f2, $f2, $f20
/* 117200 800F9110 E7A60010 */  swc1       $f6, 0x10($sp)
/* 117204 800F9114 E7A40014 */  swc1       $f4, 0x14($sp)
/* 117208 800F9118 E7A20018 */  swc1       $f2, 0x18($sp)
/* 11720C 800F911C C6000250 */  lwc1       $f0, 0x250($s0)
/* 117210 800F9120 3C01800D */  lui        $at, %hi(D_menu_800CC670)
/* 117214 800F9124 C422C670 */  lwc1       $f2, %lo(D_menu_800CC670)($at)
/* 117218 800F9128 E7A00020 */  swc1       $f0, 0x20($sp)
/* 11721C 800F912C C6000254 */  lwc1       $f0, 0x254($s0)
/* 117220 800F9130 E7A00024 */  swc1       $f0, 0x24($sp)
/* 117224 800F9134 C6000258 */  lwc1       $f0, 0x258($s0)
/* 117228 800F9138 46020000 */  add.s      $f0, $f0, $f2
/* 11722C 800F913C 27A50010 */  addiu      $a1, $sp, 0x10
/* 117230 800F9140 E7A00028 */  swc1       $f0, 0x28($sp)
/* 117234 800F9144 8E040010 */  lw         $a0, 0x10($s0)
/* 117238 800F9148 0C0441B2 */  jal        func_menu_801106C8
/* 11723C 800F914C 27A60020 */   addiu     $a2, $sp, 0x20
.Lmenu_800F9150:
/* 117240 800F9150 8FBF0054 */  lw         $ra, 0x54($sp)
/* 117244 800F9154 8FB00050 */  lw         $s0, 0x50($sp)
/* 117248 800F9158 D7B40058 */  ldc1       $f20, 0x58($sp)
/* 11724C 800F915C 03E00008 */  jr         $ra
/* 117250 800F9160 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_menu_800F9164
/* 117254 800F9164 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 117258 800F9168 AFB3003C */  sw         $s3, 0x3C($sp)
/* 11725C 800F916C 00809821 */  addu       $s3, $a0, $zero
/* 117260 800F9170 AFBF0044 */  sw         $ra, 0x44($sp)
/* 117264 800F9174 AFB40040 */  sw         $s4, 0x40($sp)
/* 117268 800F9178 AFB20038 */  sw         $s2, 0x38($sp)
/* 11726C 800F917C AFB10034 */  sw         $s1, 0x34($sp)
/* 117270 800F9180 AFB00030 */  sw         $s0, 0x30($sp)
/* 117274 800F9184 8E63024C */  lw         $v1, 0x24C($s3)
/* 117278 800F9188 00A0A021 */  addu       $s4, $a1, $zero
/* 11727C 800F918C 0283102B */  sltu       $v0, $s4, $v1
/* 117280 800F9190 14400054 */  bnez       $v0, .Lmenu_800F92E4
/* 117284 800F9194 00741023 */   subu      $v0, $v1, $s4
/* 117288 800F9198 26710028 */  addiu      $s1, $s3, 0x28
/* 11728C 800F919C 02202021 */  addu       $a0, $s1, $zero
/* 117290 800F91A0 27A50020 */  addiu      $a1, $sp, 0x20
/* 117294 800F91A4 27A60024 */  addiu      $a2, $sp, 0x24
/* 117298 800F91A8 8E32000C */  lw         $s2, 0xC($s1)
/* 11729C 800F91AC 0C036165 */  jal        func_menu_800D8594
/* 1172A0 800F91B0 27A70028 */   addiu     $a3, $sp, 0x28
/* 1172A4 800F91B4 26700058 */  addiu      $s0, $s3, 0x58
/* 1172A8 800F91B8 02002021 */  addu       $a0, $s0, $zero
/* 1172AC 800F91BC 3C05BF80 */  lui        $a1, (0xBF800000 >> 16)
/* 1172B0 800F91C0 8E620248 */  lw         $v0, 0x248($s3)
/* 1172B4 800F91C4 2403FFFB */  addiu      $v1, $zero, -0x5
/* 1172B8 800F91C8 AE60024C */  sw         $zero, 0x24C($s3)
/* 1172BC 800F91CC 00431024 */  and        $v0, $v0, $v1
/* 1172C0 800F91D0 0C0165E8 */  jal        func_800597A0
/* 1172C4 800F91D4 AE620248 */   sw        $v0, 0x248($s3)
/* 1172C8 800F91D8 0C0166DC */  jal        func_80059B70
/* 1172CC 800F91DC 02002021 */   addu      $a0, $s0, $zero
/* 1172D0 800F91E0 8E63000C */  lw         $v1, 0xC($s3)
/* 1172D4 800F91E4 8C62012C */  lw         $v0, 0x12C($v1)
/* 1172D8 800F91E8 844401E8 */  lh         $a0, 0x1E8($v0)
/* 1172DC 800F91EC 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 1172E0 800F91F0 0040F809 */  jalr       $v0
/* 1172E4 800F91F4 00642021 */   addu      $a0, $v1, $a0
/* 1172E8 800F91F8 8E620024 */  lw         $v0, 0x24($s3)
/* 1172EC 800F91FC 8FA60020 */  lw         $a2, 0x20($sp)
/* 1172F0 800F9200 8E230010 */  lw         $v1, 0x10($s1)
/* 1172F4 800F9204 24442CF8 */  addiu      $a0, $v0, 0x2CF8
/* 1172F8 800F9208 8C422CBC */  lw         $v0, 0x2CBC($v0)
/* 1172FC 800F920C 8FA70024 */  lw         $a3, 0x24($sp)
/* 117300 800F9210 8C480008 */  lw         $t0, 0x8($v0)
/* 117304 800F9214 8FA20028 */  lw         $v0, 0x28($sp)
/* 117308 800F9218 02402821 */  addu       $a1, $s2, $zero
/* 11730C 800F921C AFA30014 */  sw         $v1, 0x14($sp)
/* 117310 800F9220 AFA20010 */  sw         $v0, 0x10($sp)
/* 117314 800F9224 0C0362F7 */  jal        func_menu_800D8BDC
/* 117318 800F9228 AFA80018 */   sw        $t0, 0x18($sp)
/* 11731C 800F922C 8E640024 */  lw         $a0, 0x24($s3)
/* 117320 800F9230 24050001 */  addiu      $a1, $zero, 0x1
/* 117324 800F9234 0C03699C */  jal        func_menu_800DA670
/* 117328 800F9238 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11732C 800F923C 24050001 */  addiu      $a1, $zero, 0x1
/* 117330 800F9240 8E640024 */  lw         $a0, 0x24($s3)
/* 117334 800F9244 2406007F */  addiu      $a2, $zero, 0x7F
/* 117338 800F9248 0C036A24 */  jal        func_menu_800DA890
/* 11733C 800F924C 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 117340 800F9250 8E62001C */  lw         $v0, 0x1C($s3)
/* 117344 800F9254 8C430000 */  lw         $v1, 0x0($v0)
/* 117348 800F9258 84640028 */  lh         $a0, 0x28($v1)
/* 11734C 800F925C 8E650010 */  lw         $a1, 0x10($s3)
/* 117350 800F9260 00442021 */  addu       $a0, $v0, $a0
/* 117354 800F9264 8E620024 */  lw         $v0, 0x24($s3)
/* 117358 800F9268 8C63002C */  lw         $v1, 0x2C($v1)
/* 11735C 800F926C 90502DD4 */  lbu        $s0, 0x2DD4($v0)
/* 117360 800F9270 0060F809 */  jalr       $v1
/* 117364 800F9274 00000000 */   nop
/* 117368 800F9278 12000015 */  beqz       $s0, .Lmenu_800F92D0
/* 11736C 800F927C 00000000 */   nop
/* 117370 800F9280 8E63001C */  lw         $v1, 0x1C($s3)
/* 117374 800F9284 8C620000 */  lw         $v0, 0x0($v1)
/* 117378 800F9288 84440178 */  lh         $a0, 0x178($v0)
/* 11737C 800F928C 8C42017C */  lw         $v0, 0x17C($v0)
/* 117380 800F9290 0040F809 */  jalr       $v0
/* 117384 800F9294 00642021 */   addu      $a0, $v1, $a0
/* 117388 800F9298 8E640024 */  lw         $a0, 0x24($s3)
/* 11738C 800F929C 0C036B9D */  jal        func_menu_800DAE74
/* 117390 800F92A0 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 117394 800F92A4 8E640024 */  lw         $a0, 0x24($s3)
/* 117398 800F92A8 24050001 */  addiu      $a1, $zero, 0x1
/* 11739C 800F92AC 0C03699C */  jal        func_menu_800DA670
/* 1173A0 800F92B0 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 1173A4 800F92B4 24050001 */  addiu      $a1, $zero, 0x1
/* 1173A8 800F92B8 8E640024 */  lw         $a0, 0x24($s3)
/* 1173AC 800F92BC 2406007F */  addiu      $a2, $zero, 0x7F
/* 1173B0 800F92C0 0C036A24 */  jal        func_menu_800DA890
/* 1173B4 800F92C4 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 1173B8 800F92C8 0803E4BA */  j          .Lmenu_800F92E8
/* 1173BC 800F92CC 00000000 */   nop
.Lmenu_800F92D0:
/* 1173C0 800F92D0 8E640020 */  lw         $a0, 0x20($s3)
/* 1173C4 800F92D4 0C047910 */  jal        func_menu_8011E440
/* 1173C8 800F92D8 2405000A */   addiu     $a1, $zero, 0xA
/* 1173CC 800F92DC 0803E4BA */  j          .Lmenu_800F92E8
/* 1173D0 800F92E0 00000000 */   nop
.Lmenu_800F92E4:
/* 1173D4 800F92E4 AE62024C */  sw         $v0, 0x24C($s3)
.Lmenu_800F92E8:
/* 1173D8 800F92E8 3C01800D */  lui        $at, %hi(D_menu_800CC674)
/* 1173DC 800F92EC C420C674 */  lwc1       $f0, %lo(D_menu_800CC674)($at)
/* 1173E0 800F92F0 44941000 */  mtc1       $s4, $f2
/* 1173E4 800F92F4 468010A0 */  cvt.s.w    $f2, $f2
/* 1173E8 800F92F8 46001082 */  mul.s      $f2, $f2, $f0
/* 1173EC 800F92FC C6600274 */  lwc1       $f0, 0x274($s3)
/* 1173F0 800F9300 46020001 */  sub.s      $f0, $f0, $f2
/* 1173F4 800F9304 C6620270 */  lwc1       $f2, 0x270($s3)
/* 1173F8 800F9308 4602003C */  c.lt.s     $f0, $f2
/* 1173FC 800F930C 00000000 */  nop
/* 117400 800F9310 45000003 */  bc1f       .Lmenu_800F9320
/* 117404 800F9314 E6600274 */   swc1      $f0, 0x274($s3)
/* 117408 800F9318 E6620274 */  swc1       $f2, 0x274($s3)
/* 11740C 800F931C AE60024C */  sw         $zero, 0x24C($s3)
.Lmenu_800F9320:
/* 117410 800F9320 8FBF0044 */  lw         $ra, 0x44($sp)
/* 117414 800F9324 8FB40040 */  lw         $s4, 0x40($sp)
/* 117418 800F9328 8FB3003C */  lw         $s3, 0x3C($sp)
/* 11741C 800F932C 8FB20038 */  lw         $s2, 0x38($sp)
/* 117420 800F9330 8FB10034 */  lw         $s1, 0x34($sp)
/* 117424 800F9334 8FB00030 */  lw         $s0, 0x30($sp)
/* 117428 800F9338 03E00008 */  jr         $ra
/* 11742C 800F933C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800F9340
/* 117430 800F9340 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 117434 800F9344 AFB00010 */  sw         $s0, 0x10($sp)
/* 117438 800F9348 00808021 */  addu       $s0, $a0, $zero
/* 11743C 800F934C AFBF0018 */  sw         $ra, 0x18($sp)
/* 117440 800F9350 AFB10014 */  sw         $s1, 0x14($sp)
/* 117444 800F9354 8E03024C */  lw         $v1, 0x24C($s0)
/* 117448 800F9358 00A08821 */  addu       $s1, $a1, $zero
/* 11744C 800F935C 0223102B */  sltu       $v0, $s1, $v1
/* 117450 800F9360 1440000F */  bnez       $v0, .Lmenu_800F93A0
/* 117454 800F9364 00711023 */   subu      $v0, $v1, $s1
/* 117458 800F9368 8E020248 */  lw         $v0, 0x248($s0)
/* 11745C 800F936C 8E06001C */  lw         $a2, 0x1C($s0)
/* 117460 800F9370 2403FFF7 */  addiu      $v1, $zero, -0x9
/* 117464 800F9374 AE00024C */  sw         $zero, 0x24C($s0)
/* 117468 800F9378 00431024 */  and        $v0, $v0, $v1
/* 11746C 800F937C AE020248 */  sw         $v0, 0x248($s0)
/* 117470 800F9380 8CC20000 */  lw         $v0, 0x0($a2)
/* 117474 800F9384 8E050010 */  lw         $a1, 0x10($s0)
/* 117478 800F9388 84440028 */  lh         $a0, 0x28($v0)
/* 11747C 800F938C 8C42002C */  lw         $v0, 0x2C($v0)
/* 117480 800F9390 0040F809 */  jalr       $v0
/* 117484 800F9394 00C42021 */   addu      $a0, $a2, $a0
/* 117488 800F9398 0803E4E9 */  j          .Lmenu_800F93A4
/* 11748C 800F939C 00000000 */   nop
.Lmenu_800F93A0:
/* 117490 800F93A0 AE02024C */  sw         $v0, 0x24C($s0)
.Lmenu_800F93A4:
/* 117494 800F93A4 3C01800D */  lui        $at, %hi(D_menu_800CC678)
/* 117498 800F93A8 C420C678 */  lwc1       $f0, %lo(D_menu_800CC678)($at)
/* 11749C 800F93AC 44911000 */  mtc1       $s1, $f2
/* 1174A0 800F93B0 468010A0 */  cvt.s.w    $f2, $f2
/* 1174A4 800F93B4 46001082 */  mul.s      $f2, $f2, $f0
/* 1174A8 800F93B8 C6000274 */  lwc1       $f0, 0x274($s0)
/* 1174AC 800F93BC 46020000 */  add.s      $f0, $f0, $f2
/* 1174B0 800F93C0 3C01800D */  lui        $at, %hi(D_menu_800CC67C)
/* 1174B4 800F93C4 C422C67C */  lwc1       $f2, %lo(D_menu_800CC67C)($at)
/* 1174B8 800F93C8 4600103C */  c.lt.s     $f2, $f0
/* 1174BC 800F93CC 00000000 */  nop
/* 1174C0 800F93D0 45000003 */  bc1f       .Lmenu_800F93E0
/* 1174C4 800F93D4 E6000274 */   swc1      $f0, 0x274($s0)
/* 1174C8 800F93D8 AE00024C */  sw         $zero, 0x24C($s0)
/* 1174CC 800F93DC E6020274 */  swc1       $f2, 0x274($s0)
.Lmenu_800F93E0:
/* 1174D0 800F93E0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1174D4 800F93E4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1174D8 800F93E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1174DC 800F93EC 03E00008 */  jr         $ra
/* 1174E0 800F93F0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F93F4
/* 1174E4 800F93F4 240207D0 */  addiu      $v0, $zero, 0x7D0
/* 1174E8 800F93F8 AC82024C */  sw         $v0, 0x24C($a0)
/* 1174EC 800F93FC 8C820248 */  lw         $v0, 0x248($a0)
/* 1174F0 800F9400 C4800270 */  lwc1       $f0, 0x270($a0)
/* 1174F4 800F9404 AC800244 */  sw         $zero, 0x244($a0)
/* 1174F8 800F9408 34420008 */  ori        $v0, $v0, 0x8
/* 1174FC 800F940C AC820248 */  sw         $v0, 0x248($a0)
/* 117500 800F9410 03E00008 */  jr         $ra
/* 117504 800F9414 E4800274 */   swc1      $f0, 0x274($a0)

glabel func_menu_800F9418
/* 117508 800F9418 24020002 */  addiu      $v0, $zero, 0x2
/* 11750C 800F941C 03E00008 */  jr         $ra
/* 117510 800F9420 AC820294 */   sw        $v0, 0x294($a0)

glabel func_menu_800F9424
/* 117514 800F9424 24020001 */  addiu      $v0, $zero, 0x1
/* 117518 800F9428 03E00008 */  jr         $ra
/* 11751C 800F942C AC820294 */   sw        $v0, 0x294($a0)

glabel func_menu_800F9430
/* 117520 800F9430 03E00008 */  jr         $ra
/* 117524 800F9434 AC800294 */   sw        $zero, 0x294($a0)

glabel func_menu_800F9438
/* 117528 800F9438 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11752C 800F943C AFB00010 */  sw         $s0, 0x10($sp)
/* 117530 800F9440 00808021 */  addu       $s0, $a0, $zero
/* 117534 800F9444 AFB10014 */  sw         $s1, 0x14($sp)
/* 117538 800F9448 00A08821 */  addu       $s1, $a1, $zero
/* 11753C 800F944C AFB20018 */  sw         $s2, 0x18($sp)
/* 117540 800F9450 00C09021 */  addu       $s2, $a2, $zero
/* 117544 800F9454 AFBF001C */  sw         $ra, 0x1C($sp)
/* 117548 800F9458 0C0165C5 */  jal        func_80059714
/* 11754C 800F945C 26040058 */   addiu     $a0, $s0, 0x58
/* 117550 800F9460 3C01800D */  lui        $at, %hi(D_menu_800CC680)
/* 117554 800F9464 C422C680 */  lwc1       $f2, %lo(D_menu_800CC680)($at)
/* 117558 800F9468 46020001 */  sub.s      $f0, $f0, $f2
/* 11755C 800F946C 3C01800D */  lui        $at, %hi(D_menu_800CC684)
/* 117560 800F9470 C422C684 */  lwc1       $f2, %lo(D_menu_800CC684)($at)
/* 117564 800F9474 3C01800D */  lui        $at, %hi(D_menu_800CC688)
/* 117568 800F9478 C424C688 */  lwc1       $f4, %lo(D_menu_800CC688)($at)
/* 11756C 800F947C 46020003 */  div.s      $f0, $f0, $f2
/* 117570 800F9480 4600203C */  c.lt.s     $f4, $f0
/* 117574 800F9484 00000000 */  nop
/* 117578 800F9488 45000003 */  bc1f       .Lmenu_800F9498
/* 11757C 800F948C E60002CC */   swc1      $f0, 0x2CC($s0)
/* 117580 800F9490 0803E52B */  j          .Lmenu_800F94AC
/* 117584 800F9494 E60402CC */   swc1      $f4, 0x2CC($s0)
.Lmenu_800F9498:
/* 117588 800F9498 44801000 */  mtc1       $zero, $f2
/* 11758C 800F949C 4602003C */  c.lt.s     $f0, $f2
/* 117590 800F94A0 00000000 */  nop
/* 117594 800F94A4 45030001 */  bc1tl      .Lmenu_800F94AC
/* 117598 800F94A8 E60202CC */   swc1      $f2, 0x2CC($s0)
.Lmenu_800F94AC:
/* 11759C 800F94AC 3C04800D */  lui        $a0, %hi(D_menu_800CC6C0)
/* 1175A0 800F94B0 2484C6C0 */  addiu      $a0, $a0, %lo(D_menu_800CC6C0)
/* 1175A4 800F94B4 00121840 */  sll        $v1, $s2, 1
/* 1175A8 800F94B8 00721821 */  addu       $v1, $v1, $s2
/* 1175AC 800F94BC 00031880 */  sll        $v1, $v1, 2
/* 1175B0 800F94C0 C60402CC */  lwc1       $f4, 0x2CC($s0)
/* 1175B4 800F94C4 3C01800D */  lui        $at, %hi(D_menu_800CC68C)
/* 1175B8 800F94C8 C426C68C */  lwc1       $f6, %lo(D_menu_800CC68C)($at)
/* 1175BC 800F94CC 00642021 */  addu       $a0, $v1, $a0
/* 1175C0 800F94D0 46043001 */  sub.s      $f0, $f6, $f4
/* 1175C4 800F94D4 C4820000 */  lwc1       $f2, 0x0($a0)
/* 1175C8 800F94D8 3C02800D */  lui        $v0, %hi(D_menu_800CC6E4)
/* 1175CC 800F94DC 46001082 */  mul.s      $f2, $f2, $f0
/* 1175D0 800F94E0 2442C6E4 */  addiu      $v0, $v0, %lo(D_menu_800CC6E4)
/* 1175D4 800F94E4 00621821 */  addu       $v1, $v1, $v0
/* 1175D8 800F94E8 C4600000 */  lwc1       $f0, 0x0($v1)
/* 1175DC 800F94EC 46040002 */  mul.s      $f0, $f0, $f4
/* 1175E0 800F94F0 46001080 */  add.s      $f2, $f2, $f0
/* 1175E4 800F94F4 E6220000 */  swc1       $f2, 0x0($s1)
/* 1175E8 800F94F8 C60402CC */  lwc1       $f4, 0x2CC($s0)
/* 1175EC 800F94FC 46043001 */  sub.s      $f0, $f6, $f4
/* 1175F0 800F9500 C4820004 */  lwc1       $f2, 0x4($a0)
/* 1175F4 800F9504 46001082 */  mul.s      $f2, $f2, $f0
/* 1175F8 800F9508 C4600004 */  lwc1       $f0, 0x4($v1)
/* 1175FC 800F950C 46040002 */  mul.s      $f0, $f0, $f4
/* 117600 800F9510 46001080 */  add.s      $f2, $f2, $f0
/* 117604 800F9514 C4600008 */  lwc1       $f0, 0x8($v1)
/* 117608 800F9518 E6220004 */  swc1       $f2, 0x4($s1)
/* 11760C 800F951C C60402CC */  lwc1       $f4, 0x2CC($s0)
/* 117610 800F9520 46040002 */  mul.s      $f0, $f0, $f4
/* 117614 800F9524 46043181 */  sub.s      $f6, $f6, $f4
/* 117618 800F9528 C4820008 */  lwc1       $f2, 0x8($a0)
/* 11761C 800F952C 46061082 */  mul.s      $f2, $f2, $f6
/* 117620 800F9530 46001080 */  add.s      $f2, $f2, $f0
/* 117624 800F9534 E6220008 */  swc1       $f2, 0x8($s1)
/* 117628 800F9538 8FBF001C */  lw         $ra, 0x1C($sp)
/* 11762C 800F953C 8FB20018 */  lw         $s2, 0x18($sp)
/* 117630 800F9540 8FB10014 */  lw         $s1, 0x14($sp)
/* 117634 800F9544 8FB00010 */  lw         $s0, 0x10($sp)
/* 117638 800F9548 03E00008 */  jr         $ra
/* 11763C 800F954C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F9550
/* 117640 800F9550 8C820294 */  lw         $v0, 0x294($a0)
/* 117644 800F9554 38420001 */  xori       $v0, $v0, 0x1
/* 117648 800F9558 03E00008 */  jr         $ra
/* 11764C 800F955C 2C420001 */   sltiu     $v0, $v0, 0x1

glabel func_menu_800F9560
/* 117650 800F9560 8C820294 */  lw         $v0, 0x294($a0)
/* 117654 800F9564 38420002 */  xori       $v0, $v0, 0x2
/* 117658 800F9568 03E00008 */  jr         $ra
/* 11765C 800F956C 2C420001 */   sltiu     $v0, $v0, 0x1

glabel func_menu_800F9570
/* 117660 800F9570 80820298 */  lb         $v0, 0x298($a0)
/* 117664 800F9574 03E00008 */  jr         $ra
/* 117668 800F9578 00000000 */   nop

glabel func_menu_800F957C
/* 11766C 800F957C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117670 800F9580 00A03021 */  addu       $a2, $a1, $zero
/* 117674 800F9584 AFBF0010 */  sw         $ra, 0x10($sp)
/* 117678 800F9588 0C03DE69 */  jal        func_menu_800F79A4
/* 11767C 800F958C 248501A4 */   addiu     $a1, $a0, 0x1A4
/* 117680 800F9590 8FBF0010 */  lw         $ra, 0x10($sp)
/* 117684 800F9594 03E00008 */  jr         $ra
/* 117688 800F9598 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F959C
/* 11768C 800F959C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117690 800F95A0 00A03021 */  addu       $a2, $a1, $zero
/* 117694 800F95A4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 117698 800F95A8 0C03DE69 */  jal        func_menu_800F79A4
/* 11769C 800F95AC 24850058 */   addiu     $a1, $a0, 0x58
/* 1176A0 800F95B0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1176A4 800F95B4 03E00008 */  jr         $ra
/* 1176A8 800F95B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F95BC
/* 1176AC 800F95BC 03E00008 */  jr         $ra
/* 1176B0 800F95C0 248201A4 */   addiu     $v0, $a0, 0x1A4

glabel func_menu_800F95C4
/* 1176B4 800F95C4 03E00008 */  jr         $ra
/* 1176B8 800F95C8 24820058 */   addiu     $v0, $a0, 0x58

glabel func_menu_800F95CC
/* 1176BC 800F95CC 8C820248 */  lw         $v0, 0x248($a0)
/* 1176C0 800F95D0 03E00008 */  jr         $ra
/* 1176C4 800F95D4 3042000C */   andi      $v0, $v0, 0xC
