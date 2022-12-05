.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_80104460
/* 122550 80104460 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 122554 80104464 AFB40020 */  sw         $s4, 0x20($sp)
/* 122558 80104468 0080A021 */  addu       $s4, $a0, $zero
/* 12255C 8010446C AFBF0028 */  sw         $ra, 0x28($sp)
/* 122560 80104470 AFB50024 */  sw         $s5, 0x24($sp)
/* 122564 80104474 AFB3001C */  sw         $s3, 0x1C($sp)
/* 122568 80104478 AFB20018 */  sw         $s2, 0x18($sp)
/* 12256C 8010447C AFB10014 */  sw         $s1, 0x14($sp)
/* 122570 80104480 0C0401D8 */  jal        func_menu_80100760
/* 122574 80104484 AFB00010 */   sw        $s0, 0x10($sp)
/* 122578 80104488 26840374 */  addiu      $a0, $s4, 0x374
/* 12257C 8010448C 3C02800D */  lui        $v0, %hi(D_menu_800CDEB0)
/* 122580 80104490 2442DEB0 */  addiu      $v0, $v0, %lo(D_menu_800CDEB0)
/* 122584 80104494 0C047BA4 */  jal        func_menu_8011EE90
/* 122588 80104498 AE820000 */   sw        $v0, 0x0($s4)
/* 12258C 8010449C 0C047CA8 */  jal        func_menu_8011F2A0
/* 122590 801044A0 268403D0 */   addiu     $a0, $s4, 0x3D0
/* 122594 801044A4 0C040F38 */  jal        func_menu_80103CE0
/* 122598 801044A8 26840448 */   addiu     $a0, $s4, 0x448
/* 12259C 801044AC 0C040F38 */  jal        func_menu_80103CE0
/* 1225A0 801044B0 26840738 */   addiu     $a0, $s4, 0x738
/* 1225A4 801044B4 0C040F38 */  jal        func_menu_80103CE0
/* 1225A8 801044B8 26840A28 */   addiu     $a0, $s4, 0xA28
/* 1225AC 801044BC 0C040F38 */  jal        func_menu_80103CE0
/* 1225B0 801044C0 26840D18 */   addiu     $a0, $s4, 0xD18
/* 1225B4 801044C4 0C040F38 */  jal        func_menu_80103CE0
/* 1225B8 801044C8 26841008 */   addiu     $a0, $s4, 0x1008
/* 1225BC 801044CC 0C040F38 */  jal        func_menu_80103CE0
/* 1225C0 801044D0 268412F8 */   addiu     $a0, $s4, 0x12F8
/* 1225C4 801044D4 0C040F38 */  jal        func_menu_80103CE0
/* 1225C8 801044D8 268415E8 */   addiu     $a0, $s4, 0x15E8
/* 1225CC 801044DC 0C040F38 */  jal        func_menu_80103CE0
/* 1225D0 801044E0 268418D8 */   addiu     $a0, $s4, 0x18D8
/* 1225D4 801044E4 0C044D38 */  jal        func_menu_801134E0
/* 1225D8 801044E8 26841BC8 */   addiu     $a0, $s4, 0x1BC8
/* 1225DC 801044EC 0C044D38 */  jal        func_menu_801134E0
/* 1225E0 801044F0 268425BC */   addiu     $a0, $s4, 0x25BC
/* 1225E4 801044F4 26912FB0 */  addiu      $s1, $s4, 0x2FB0
/* 1225E8 801044F8 0C04729C */  jal        func_menu_8011CA70
/* 1225EC 801044FC 02202021 */   addu      $a0, $s1, $zero
/* 1225F0 80104500 26923044 */  addiu      $s2, $s4, 0x3044
/* 1225F4 80104504 02402021 */  addu       $a0, $s2, $zero
/* 1225F8 80104508 3C10800D */  lui        $s0, %hi(D_menu_800D0740)
/* 1225FC 8010450C 26100740 */  addiu      $s0, $s0, %lo(D_menu_800D0740)
/* 122600 80104510 0C04729C */  jal        func_menu_8011CA70
/* 122604 80104514 AE300054 */   sw        $s0, 0x54($s1)
/* 122608 80104518 269330D8 */  addiu      $s3, $s4, 0x30D8
/* 12260C 8010451C 24110005 */  addiu      $s1, $zero, 0x5
/* 122610 80104520 2415FFFF */  addiu      $s5, $zero, -0x1
/* 122614 80104524 AE500054 */  sw         $s0, 0x54($s2)
.Lmenu_80104528:
/* 122618 80104528 0C047CA8 */  jal        func_menu_8011F2A0
/* 12261C 8010452C 02602021 */   addu      $a0, $s3, $zero
/* 122620 80104530 2631FFFF */  addiu      $s1, $s1, -0x1
/* 122624 80104534 1635FFFC */  bne        $s1, $s5, .Lmenu_80104528
/* 122628 80104538 26730078 */   addiu     $s3, $s3, 0x78
/* 12262C 8010453C 269133A8 */  addiu      $s1, $s4, 0x33A8
/* 122630 80104540 24100004 */  addiu      $s0, $zero, 0x4
/* 122634 80104544 2412FFFF */  addiu      $s2, $zero, -0x1
.Lmenu_80104548:
/* 122638 80104548 0C047CA8 */  jal        func_menu_8011F2A0
/* 12263C 8010454C 02202021 */   addu      $a0, $s1, $zero
/* 122640 80104550 2610FFFF */  addiu      $s0, $s0, -0x1
/* 122644 80104554 1612FFFC */  bne        $s0, $s2, .Lmenu_80104548
/* 122648 80104558 26310078 */   addiu     $s1, $s1, 0x78
/* 12264C 8010455C 26913600 */  addiu      $s1, $s4, 0x3600
/* 122650 80104560 24100001 */  addiu      $s0, $zero, 0x1
/* 122654 80104564 2412FFFF */  addiu      $s2, $zero, -0x1
.Lmenu_80104568:
/* 122658 80104568 0C047CA8 */  jal        func_menu_8011F2A0
/* 12265C 8010456C 02202021 */   addu      $a0, $s1, $zero
/* 122660 80104570 2610FFFF */  addiu      $s0, $s0, -0x1
/* 122664 80104574 1612FFFC */  bne        $s0, $s2, .Lmenu_80104568
/* 122668 80104578 26310078 */   addiu     $s1, $s1, 0x78
/* 12266C 8010457C 0C044D38 */  jal        func_menu_801134E0
/* 122670 80104580 268436F0 */   addiu     $a0, $s4, 0x36F0
/* 122674 80104584 269040E4 */  addiu      $s0, $s4, 0x40E4
/* 122678 80104588 0C04729C */  jal        func_menu_8011CA70
/* 12267C 8010458C 02002021 */   addu      $a0, $s0, $zero
/* 122680 80104590 3C02800D */  lui        $v0, %hi(D_menu_800D0740)
/* 122684 80104594 24420740 */  addiu      $v0, $v0, %lo(D_menu_800D0740)
/* 122688 80104598 AE020054 */  sw         $v0, 0x54($s0)
/* 12268C 8010459C 0C047754 */  jal        func_menu_8011DD50
/* 122690 801045A0 26844178 */   addiu     $a0, $s4, 0x4178
/* 122694 801045A4 0C047754 */  jal        func_menu_8011DD50
/* 122698 801045A8 26844864 */   addiu     $a0, $s4, 0x4864
/* 12269C 801045AC 0C047CA8 */  jal        func_menu_8011F2A0
/* 1226A0 801045B0 26844F50 */   addiu     $a0, $s4, 0x4F50
/* 1226A4 801045B4 0C047CA8 */  jal        func_menu_8011F2A0
/* 1226A8 801045B8 26844FC8 */   addiu     $a0, $s4, 0x4FC8
/* 1226AC 801045BC 26915040 */  addiu      $s1, $s4, 0x5040
/* 1226B0 801045C0 24100002 */  addiu      $s0, $zero, 0x2
/* 1226B4 801045C4 2412FFFF */  addiu      $s2, $zero, -0x1
.Lmenu_801045C8:
/* 1226B8 801045C8 0C047CA8 */  jal        func_menu_8011F2A0
/* 1226BC 801045CC 02202021 */   addu      $a0, $s1, $zero
/* 1226C0 801045D0 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1226C4 801045D4 1612FFFC */  bne        $s0, $s2, .Lmenu_801045C8
/* 1226C8 801045D8 26310078 */   addiu     $s1, $s1, 0x78
/* 1226CC 801045DC 0C041211 */  jal        func_menu_80104844
/* 1226D0 801045E0 02802021 */   addu      $a0, $s4, $zero
/* 1226D4 801045E4 02801021 */  addu       $v0, $s4, $zero
/* 1226D8 801045E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1226DC 801045EC 8FB50024 */  lw         $s5, 0x24($sp)
/* 1226E0 801045F0 8FB40020 */  lw         $s4, 0x20($sp)
/* 1226E4 801045F4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1226E8 801045F8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1226EC 801045FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1226F0 80104600 8FB00010 */  lw         $s0, 0x10($sp)
/* 1226F4 80104604 03E00008 */  jr         $ra
/* 1226F8 80104608 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8010460C
/* 1226FC 8010460C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 122700 80104610 AFB10014 */  sw         $s1, 0x14($sp)
/* 122704 80104614 00808821 */  addu       $s1, $a0, $zero
/* 122708 80104618 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12270C 8010461C 00A09821 */  addu       $s3, $a1, $zero
/* 122710 80104620 3C02800D */  lui        $v0, %hi(D_menu_800CDEB0)
/* 122714 80104624 2442DEB0 */  addiu      $v0, $v0, %lo(D_menu_800CDEB0)
/* 122718 80104628 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12271C 8010462C AFB20018 */  sw         $s2, 0x18($sp)
/* 122720 80104630 AFB00010 */  sw         $s0, 0x10($sp)
/* 122724 80104634 0C040232 */  jal        func_menu_801008C8
/* 122728 80104638 AE220000 */   sw        $v0, 0x0($s1)
/* 12272C 8010463C 26225040 */  addiu      $v0, $s1, 0x5040
/* 122730 80104640 1040000D */  beqz       $v0, .Lmenu_80104678
/* 122734 80104644 263051A8 */   addiu     $s0, $s1, 0x51A8
/* 122738 80104648 5050000C */  beql       $v0, $s0, .Lmenu_8010467C
/* 12273C 8010464C 26244FC8 */   addiu     $a0, $s1, 0x4FC8
/* 122740 80104650 00409021 */  addu       $s2, $v0, $zero
/* 122744 80104654 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_80104658:
/* 122748 80104658 8E020054 */  lw         $v0, 0x54($s0)
/* 12274C 8010465C 24050002 */  addiu      $a1, $zero, 0x2
/* 122750 80104660 84440010 */  lh         $a0, 0x10($v0)
/* 122754 80104664 8C420014 */  lw         $v0, 0x14($v0)
/* 122758 80104668 0040F809 */  jalr       $v0
/* 12275C 8010466C 02042021 */   addu      $a0, $s0, $a0
/* 122760 80104670 1650FFF9 */  bne        $s2, $s0, .Lmenu_80104658
/* 122764 80104674 2610FF88 */   addiu     $s0, $s0, -0x78
.Lmenu_80104678:
/* 122768 80104678 26244FC8 */  addiu      $a0, $s1, 0x4FC8
.Lmenu_8010467C:
/* 12276C 8010467C 0C047CB9 */  jal        func_menu_8011F2E4
/* 122770 80104680 24050002 */   addiu     $a1, $zero, 0x2
/* 122774 80104684 26244F50 */  addiu      $a0, $s1, 0x4F50
/* 122778 80104688 0C047CB9 */  jal        func_menu_8011F2E4
/* 12277C 8010468C 24050002 */   addiu     $a1, $zero, 0x2
/* 122780 80104690 26244864 */  addiu      $a0, $s1, 0x4864
/* 122784 80104694 0C047763 */  jal        func_menu_8011DD8C
/* 122788 80104698 24050002 */   addiu     $a1, $zero, 0x2
/* 12278C 8010469C 26244178 */  addiu      $a0, $s1, 0x4178
/* 122790 801046A0 0C047763 */  jal        func_menu_8011DD8C
/* 122794 801046A4 24050002 */   addiu     $a1, $zero, 0x2
/* 122798 801046A8 262440E4 */  addiu      $a0, $s1, 0x40E4
/* 12279C 801046AC 0C0472AB */  jal        func_menu_8011CAAC
/* 1227A0 801046B0 24050002 */   addiu     $a1, $zero, 0x2
/* 1227A4 801046B4 263036F0 */  addiu      $s0, $s1, 0x36F0
/* 1227A8 801046B8 02002021 */  addu       $a0, $s0, $zero
/* 1227AC 801046BC 0C044D49 */  jal        func_menu_80113524
/* 1227B0 801046C0 24050002 */   addiu     $a1, $zero, 0x2
/* 1227B4 801046C4 26223600 */  addiu      $v0, $s1, 0x3600
/* 1227B8 801046C8 5040000E */  beql       $v0, $zero, .Lmenu_80104704
/* 1227BC 801046CC 262233A8 */   addiu     $v0, $s1, 0x33A8
/* 1227C0 801046D0 5050000C */  beql       $v0, $s0, .Lmenu_80104704
/* 1227C4 801046D4 262233A8 */   addiu     $v0, $s1, 0x33A8
/* 1227C8 801046D8 00409021 */  addu       $s2, $v0, $zero
/* 1227CC 801046DC 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_801046E0:
/* 1227D0 801046E0 8E020054 */  lw         $v0, 0x54($s0)
/* 1227D4 801046E4 24050002 */  addiu      $a1, $zero, 0x2
/* 1227D8 801046E8 84440010 */  lh         $a0, 0x10($v0)
/* 1227DC 801046EC 8C420014 */  lw         $v0, 0x14($v0)
/* 1227E0 801046F0 0040F809 */  jalr       $v0
/* 1227E4 801046F4 02042021 */   addu      $a0, $s0, $a0
/* 1227E8 801046F8 5650FFF9 */  bnel       $s2, $s0, .Lmenu_801046E0
/* 1227EC 801046FC 2610FF88 */   addiu     $s0, $s0, -0x78
/* 1227F0 80104700 262233A8 */  addiu      $v0, $s1, 0x33A8
.Lmenu_80104704:
/* 1227F4 80104704 1040000D */  beqz       $v0, .Lmenu_8010473C
/* 1227F8 80104708 26303600 */   addiu     $s0, $s1, 0x3600
/* 1227FC 8010470C 5050000C */  beql       $v0, $s0, .Lmenu_80104740
/* 122800 80104710 262230D8 */   addiu     $v0, $s1, 0x30D8
/* 122804 80104714 00409021 */  addu       $s2, $v0, $zero
/* 122808 80104718 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_8010471C:
/* 12280C 8010471C 8E020054 */  lw         $v0, 0x54($s0)
/* 122810 80104720 24050002 */  addiu      $a1, $zero, 0x2
/* 122814 80104724 84440010 */  lh         $a0, 0x10($v0)
/* 122818 80104728 8C420014 */  lw         $v0, 0x14($v0)
/* 12281C 8010472C 0040F809 */  jalr       $v0
/* 122820 80104730 02042021 */   addu      $a0, $s0, $a0
/* 122824 80104734 1650FFF9 */  bne        $s2, $s0, .Lmenu_8010471C
/* 122828 80104738 2610FF88 */   addiu     $s0, $s0, -0x78
.Lmenu_8010473C:
/* 12282C 8010473C 262230D8 */  addiu      $v0, $s1, 0x30D8
.Lmenu_80104740:
/* 122830 80104740 1040000C */  beqz       $v0, .Lmenu_80104774
/* 122834 80104744 263033A8 */   addiu     $s0, $s1, 0x33A8
/* 122838 80104748 1050000A */  beq        $v0, $s0, .Lmenu_80104774
/* 12283C 8010474C 00409021 */   addu      $s2, $v0, $zero
/* 122840 80104750 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_80104754:
/* 122844 80104754 8E020054 */  lw         $v0, 0x54($s0)
/* 122848 80104758 24050002 */  addiu      $a1, $zero, 0x2
/* 12284C 8010475C 84440010 */  lh         $a0, 0x10($v0)
/* 122850 80104760 8C420014 */  lw         $v0, 0x14($v0)
/* 122854 80104764 0040F809 */  jalr       $v0
/* 122858 80104768 02042021 */   addu      $a0, $s0, $a0
/* 12285C 8010476C 1650FFF9 */  bne        $s2, $s0, .Lmenu_80104754
/* 122860 80104770 2610FF88 */   addiu     $s0, $s0, -0x78
.Lmenu_80104774:
/* 122864 80104774 26243044 */  addiu      $a0, $s1, 0x3044
/* 122868 80104778 0C0472AB */  jal        func_menu_8011CAAC
/* 12286C 8010477C 24050002 */   addiu     $a1, $zero, 0x2
/* 122870 80104780 26242FB0 */  addiu      $a0, $s1, 0x2FB0
/* 122874 80104784 0C0472AB */  jal        func_menu_8011CAAC
/* 122878 80104788 24050002 */   addiu     $a1, $zero, 0x2
/* 12287C 8010478C 262425BC */  addiu      $a0, $s1, 0x25BC
/* 122880 80104790 0C044D49 */  jal        func_menu_80113524
/* 122884 80104794 24050002 */   addiu     $a1, $zero, 0x2
/* 122888 80104798 26241BC8 */  addiu      $a0, $s1, 0x1BC8
/* 12288C 8010479C 0C044D49 */  jal        func_menu_80113524
/* 122890 801047A0 24050002 */   addiu     $a1, $zero, 0x2
/* 122894 801047A4 262418D8 */  addiu      $a0, $s1, 0x18D8
/* 122898 801047A8 0C040F4B */  jal        func_menu_80103D2C
/* 12289C 801047AC 24050002 */   addiu     $a1, $zero, 0x2
/* 1228A0 801047B0 262415E8 */  addiu      $a0, $s1, 0x15E8
/* 1228A4 801047B4 0C040F4B */  jal        func_menu_80103D2C
/* 1228A8 801047B8 24050002 */   addiu     $a1, $zero, 0x2
/* 1228AC 801047BC 262412F8 */  addiu      $a0, $s1, 0x12F8
/* 1228B0 801047C0 0C040F4B */  jal        func_menu_80103D2C
/* 1228B4 801047C4 24050002 */   addiu     $a1, $zero, 0x2
/* 1228B8 801047C8 26241008 */  addiu      $a0, $s1, 0x1008
/* 1228BC 801047CC 0C040F4B */  jal        func_menu_80103D2C
/* 1228C0 801047D0 24050002 */   addiu     $a1, $zero, 0x2
/* 1228C4 801047D4 26240D18 */  addiu      $a0, $s1, 0xD18
/* 1228C8 801047D8 0C040F4B */  jal        func_menu_80103D2C
/* 1228CC 801047DC 24050002 */   addiu     $a1, $zero, 0x2
/* 1228D0 801047E0 26240A28 */  addiu      $a0, $s1, 0xA28
/* 1228D4 801047E4 0C040F4B */  jal        func_menu_80103D2C
/* 1228D8 801047E8 24050002 */   addiu     $a1, $zero, 0x2
/* 1228DC 801047EC 26240738 */  addiu      $a0, $s1, 0x738
/* 1228E0 801047F0 0C040F4B */  jal        func_menu_80103D2C
/* 1228E4 801047F4 24050002 */   addiu     $a1, $zero, 0x2
/* 1228E8 801047F8 26240448 */  addiu      $a0, $s1, 0x448
/* 1228EC 801047FC 0C040F4B */  jal        func_menu_80103D2C
/* 1228F0 80104800 24050002 */   addiu     $a1, $zero, 0x2
/* 1228F4 80104804 262403D0 */  addiu      $a0, $s1, 0x3D0
/* 1228F8 80104808 0C047CB9 */  jal        func_menu_8011F2E4
/* 1228FC 8010480C 24050002 */   addiu     $a1, $zero, 0x2
/* 122900 80104810 26240374 */  addiu      $a0, $s1, 0x374
/* 122904 80104814 0C047BB3 */  jal        func_menu_8011EECC
/* 122908 80104818 24050002 */   addiu     $a1, $zero, 0x2
/* 12290C 8010481C 02202021 */  addu       $a0, $s1, $zero
/* 122910 80104820 0C0401EF */  jal        func_menu_801007BC
/* 122914 80104824 02602821 */   addu      $a1, $s3, $zero
/* 122918 80104828 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12291C 8010482C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 122920 80104830 8FB20018 */  lw         $s2, 0x18($sp)
/* 122924 80104834 8FB10014 */  lw         $s1, 0x14($sp)
/* 122928 80104838 8FB00010 */  lw         $s0, 0x10($sp)
/* 12292C 8010483C 03E00008 */  jr         $ra
/* 122930 80104840 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_80104844
/* 122934 80104844 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 122938 80104848 AFBF0010 */  sw         $ra, 0x10($sp)
/* 12293C 8010484C A0800368 */  sb         $zero, 0x368($a0)
/* 122940 80104850 A0800369 */  sb         $zero, 0x369($a0)
/* 122944 80104854 AC80036C */  sw         $zero, 0x36C($a0)
/* 122948 80104858 0C040207 */  jal        func_menu_8010081C
/* 12294C 8010485C AC800370 */   sw        $zero, 0x370($a0)
/* 122950 80104860 8FBF0010 */  lw         $ra, 0x10($sp)
/* 122954 80104864 03E00008 */  jr         $ra
/* 122958 80104868 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010486C
/* 12295C 8010486C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 122960 80104870 AFB00018 */  sw         $s0, 0x18($sp)
/* 122964 80104874 00808021 */  addu       $s0, $a0, $zero
/* 122968 80104878 26050374 */  addiu      $a1, $s0, 0x374
/* 12296C 8010487C 24060052 */  addiu      $a2, $zero, 0x52
/* 122970 80104880 AFBF001C */  sw         $ra, 0x1C($sp)
/* 122974 80104884 0C04675B */  jal        func_menu_80119D6C
/* 122978 80104888 00C03821 */   addu      $a3, $a2, $zero
/* 12297C 8010488C 24020010 */  addiu      $v0, $zero, 0x10
/* 122980 80104890 02002021 */  addu       $a0, $s0, $zero
/* 122984 80104894 249003D0 */  addiu      $s0, $a0, 0x3D0
/* 122988 80104898 02002821 */  addu       $a1, $s0, $zero
/* 12298C 8010489C 24060043 */  addiu      $a2, $zero, 0x43
/* 122990 801048A0 00C03821 */  addu       $a3, $a2, $zero
/* 122994 801048A4 0C04679E */  jal        func_menu_80119E78
/* 122998 801048A8 AFA20010 */   sw        $v0, 0x10($sp)
/* 12299C 801048AC 02002021 */  addu       $a0, $s0, $zero
/* 1229A0 801048B0 0C047D63 */  jal        func_menu_8011F58C
/* 1229A4 801048B4 2405001E */   addiu     $a1, $zero, 0x1E
/* 1229A8 801048B8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1229AC 801048BC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1229B0 801048C0 03E00008 */  jr         $ra
/* 1229B4 801048C4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_801048C8
/* 1229B8 801048C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1229BC 801048CC AFB00018 */  sw         $s0, 0x18($sp)
/* 1229C0 801048D0 00808021 */  addu       $s0, $a0, $zero
/* 1229C4 801048D4 26050448 */  addiu      $a1, $s0, 0x448
/* 1229C8 801048D8 240600FA */  addiu      $a2, $zero, 0xFA
/* 1229CC 801048DC 2407004B */  addiu      $a3, $zero, 0x4B
/* 1229D0 801048E0 24020011 */  addiu      $v0, $zero, 0x11
/* 1229D4 801048E4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1229D8 801048E8 0C040297 */  jal        func_menu_80100A5C
/* 1229DC 801048EC AFA20010 */   sw        $v0, 0x10($sp)
/* 1229E0 801048F0 8E020000 */  lw         $v0, 0x0($s0)
/* 1229E4 801048F4 84440138 */  lh         $a0, 0x138($v0)
/* 1229E8 801048F8 8C42013C */  lw         $v0, 0x13C($v0)
/* 1229EC 801048FC 0040F809 */  jalr       $v0
/* 1229F0 80104900 02042021 */   addu      $a0, $s0, $a0
/* 1229F4 80104904 02002021 */  addu       $a0, $s0, $zero
/* 1229F8 80104908 26050738 */  addiu      $a1, $s0, 0x738
/* 1229FC 8010490C 240600FC */  addiu      $a2, $zero, 0xFC
/* 122A00 80104910 2407004B */  addiu      $a3, $zero, 0x4B
/* 122A04 80104914 24020013 */  addiu      $v0, $zero, 0x13
/* 122A08 80104918 0C040297 */  jal        func_menu_80100A5C
/* 122A0C 8010491C AFA20010 */   sw        $v0, 0x10($sp)
/* 122A10 80104920 02002021 */  addu       $a0, $s0, $zero
/* 122A14 80104924 26050A28 */  addiu      $a1, $s0, 0xA28
/* 122A18 80104928 240600FD */  addiu      $a2, $zero, 0xFD
/* 122A1C 8010492C 2407004B */  addiu      $a3, $zero, 0x4B
/* 122A20 80104930 24020017 */  addiu      $v0, $zero, 0x17
/* 122A24 80104934 0C040297 */  jal        func_menu_80100A5C
/* 122A28 80104938 AFA20010 */   sw        $v0, 0x10($sp)
/* 122A2C 8010493C 02002021 */  addu       $a0, $s0, $zero
/* 122A30 80104940 26050D18 */  addiu      $a1, $s0, 0xD18
/* 122A34 80104944 240600FE */  addiu      $a2, $zero, 0xFE
/* 122A38 80104948 2407004B */  addiu      $a3, $zero, 0x4B
/* 122A3C 8010494C 24020018 */  addiu      $v0, $zero, 0x18
/* 122A40 80104950 0C040297 */  jal        func_menu_80100A5C
/* 122A44 80104954 AFA20010 */   sw        $v0, 0x10($sp)
/* 122A48 80104958 02002021 */  addu       $a0, $s0, $zero
/* 122A4C 8010495C 260512F8 */  addiu      $a1, $s0, 0x12F8
/* 122A50 80104960 240600FF */  addiu      $a2, $zero, 0xFF
/* 122A54 80104964 2407004B */  addiu      $a3, $zero, 0x4B
/* 122A58 80104968 2402009C */  addiu      $v0, $zero, 0x9C
/* 122A5C 8010496C 0C040297 */  jal        func_menu_80100A5C
/* 122A60 80104970 AFA20010 */   sw        $v0, 0x10($sp)
/* 122A64 80104974 02002021 */  addu       $a0, $s0, $zero
/* 122A68 80104978 26051008 */  addiu      $a1, $s0, 0x1008
/* 122A6C 8010497C 24060027 */  addiu      $a2, $zero, 0x27
/* 122A70 80104980 2407004B */  addiu      $a3, $zero, 0x4B
/* 122A74 80104984 24020058 */  addiu      $v0, $zero, 0x58
/* 122A78 80104988 0C040297 */  jal        func_menu_80100A5C
/* 122A7C 8010498C AFA20010 */   sw        $v0, 0x10($sp)
/* 122A80 80104990 02002021 */  addu       $a0, $s0, $zero
/* 122A84 80104994 248518D8 */  addiu      $a1, $a0, 0x18D8
/* 122A88 80104998 24060048 */  addiu      $a2, $zero, 0x48
/* 122A8C 8010499C 2407004C */  addiu      $a3, $zero, 0x4C
/* 122A90 801049A0 24020002 */  addiu      $v0, $zero, 0x2
/* 122A94 801049A4 0C040297 */  jal        func_menu_80100A5C
/* 122A98 801049A8 AFA20010 */   sw        $v0, 0x10($sp)
/* 122A9C 801049AC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 122AA0 801049B0 8FB00018 */  lw         $s0, 0x18($sp)
/* 122AA4 801049B4 03E00008 */  jr         $ra
/* 122AA8 801049B8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_801049BC
/* 122AAC 801049BC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 122AB0 801049C0 AFB20020 */  sw         $s2, 0x20($sp)
/* 122AB4 801049C4 00809021 */  addu       $s2, $a0, $zero
/* 122AB8 801049C8 AFB00018 */  sw         $s0, 0x18($sp)
/* 122ABC 801049CC 26502FB0 */  addiu      $s0, $s2, 0x2FB0
/* 122AC0 801049D0 02002821 */  addu       $a1, $s0, $zero
/* 122AC4 801049D4 24060046 */  addiu      $a2, $zero, 0x46
/* 122AC8 801049D8 24070044 */  addiu      $a3, $zero, 0x44
/* 122ACC 801049DC AFBF0028 */  sw         $ra, 0x28($sp)
/* 122AD0 801049E0 AFB30024 */  sw         $s3, 0x24($sp)
/* 122AD4 801049E4 0C046966 */  jal        func_menu_8011A598
/* 122AD8 801049E8 AFB1001C */   sw        $s1, 0x1C($sp)
/* 122ADC 801049EC 02402021 */  addu       $a0, $s2, $zero
/* 122AE0 801049F0 26513044 */  addiu      $s1, $s2, 0x3044
/* 122AE4 801049F4 02202821 */  addu       $a1, $s1, $zero
/* 122AE8 801049F8 24060046 */  addiu      $a2, $zero, 0x46
/* 122AEC 801049FC 0C046966 */  jal        func_menu_8011A598
/* 122AF0 80104A00 24070044 */   addiu     $a3, $zero, 0x44
/* 122AF4 80104A04 02402021 */  addu       $a0, $s2, $zero
/* 122AF8 80104A08 26451BC8 */  addiu      $a1, $s2, 0x1BC8
/* 122AFC 80104A0C 02003021 */  addu       $a2, $s0, $zero
/* 122B00 80104A10 24070100 */  addiu      $a3, $zero, 0x100
/* 122B04 80104A14 24100055 */  addiu      $s0, $zero, 0x55
/* 122B08 80104A18 0C04699A */  jal        func_menu_8011A668
/* 122B0C 80104A1C AFB00010 */   sw        $s0, 0x10($sp)
/* 122B10 80104A20 02402021 */  addu       $a0, $s2, $zero
/* 122B14 80104A24 264525BC */  addiu      $a1, $s2, 0x25BC
/* 122B18 80104A28 02203021 */  addu       $a2, $s1, $zero
/* 122B1C 80104A2C 24070101 */  addiu      $a3, $zero, 0x101
/* 122B20 80104A30 0C04699A */  jal        func_menu_8011A668
/* 122B24 80104A34 AFB00010 */   sw        $s0, 0x10($sp)
/* 122B28 80104A38 02402021 */  addu       $a0, $s2, $zero
/* 122B2C 80104A3C 26453600 */  addiu      $a1, $s2, 0x3600
/* 122B30 80104A40 2406010D */  addiu      $a2, $zero, 0x10D
/* 122B34 80104A44 24070040 */  addiu      $a3, $zero, 0x40
/* 122B38 80104A48 24020059 */  addiu      $v0, $zero, 0x59
/* 122B3C 80104A4C 0C04679E */  jal        func_menu_80119E78
/* 122B40 80104A50 AFA20010 */   sw        $v0, 0x10($sp)
/* 122B44 80104A54 02402021 */  addu       $a0, $s2, $zero
/* 122B48 80104A58 26453678 */  addiu      $a1, $s2, 0x3678
/* 122B4C 80104A5C 2406010E */  addiu      $a2, $zero, 0x10E
/* 122B50 80104A60 24070040 */  addiu      $a3, $zero, 0x40
/* 122B54 80104A64 2402005A */  addiu      $v0, $zero, 0x5A
/* 122B58 80104A68 0C04679E */  jal        func_menu_80119E78
/* 122B5C 80104A6C AFA20010 */   sw        $v0, 0x10($sp)
/* 122B60 80104A70 00008821 */  addu       $s1, $zero, $zero
/* 122B64 80104A74 241330D8 */  addiu      $s3, $zero, 0x30D8
.Lmenu_80104A78:
/* 122B68 80104A78 26220060 */  addiu      $v0, $s1, 0x60
/* 122B6C 80104A7C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 122B70 80104A80 AFA20010 */  sw         $v0, 0x10($sp)
/* 122B74 80104A84 02402021 */  addu       $a0, $s2, $zero
/* 122B78 80104A88 02538021 */  addu       $s0, $s2, $s3
/* 122B7C 80104A8C 02002821 */  addu       $a1, $s0, $zero
/* 122B80 80104A90 2406009E */  addiu      $a2, $zero, 0x9E
/* 122B84 80104A94 0C04679E */  jal        func_menu_80119E78
/* 122B88 80104A98 24070040 */   addiu     $a3, $zero, 0x40
/* 122B8C 80104A9C 26442FB0 */  addiu      $a0, $s2, 0x2FB0
/* 122B90 80104AA0 0C047346 */  jal        func_menu_8011CD18
/* 122B94 80104AA4 02002821 */   addu      $a1, $s0, $zero
/* 122B98 80104AA8 26310001 */  addiu      $s1, $s1, 0x1
/* 122B9C 80104AAC 2A220006 */  slti       $v0, $s1, 0x6
/* 122BA0 80104AB0 1440FFF1 */  bnez       $v0, .Lmenu_80104A78
/* 122BA4 80104AB4 26730078 */   addiu     $s3, $s3, 0x78
/* 122BA8 80104AB8 26442FB0 */  addiu      $a0, $s2, 0x2FB0
/* 122BAC 80104ABC 8E420370 */  lw         $v0, 0x370($s2)
/* 122BB0 80104AC0 00008821 */  addu       $s1, $zero, $zero
/* 122BB4 80104AC4 9045000C */  lbu        $a1, 0xC($v0)
/* 122BB8 80104AC8 0C0472E9 */  jal        func_menu_8011CBA4
/* 122BBC 80104ACC 241333A8 */   addiu     $s3, $zero, 0x33A8
/* 122BC0 80104AD0 8E420000 */  lw         $v0, 0x0($s2)
/* 122BC4 80104AD4 26451BC8 */  addiu      $a1, $s2, 0x1BC8
/* 122BC8 80104AD8 84440090 */  lh         $a0, 0x90($v0)
/* 122BCC 80104ADC 8C420094 */  lw         $v0, 0x94($v0)
/* 122BD0 80104AE0 0040F809 */  jalr       $v0
/* 122BD4 80104AE4 02442021 */   addu      $a0, $s2, $a0
.Lmenu_80104AE8:
/* 122BD8 80104AE8 26220061 */  addiu      $v0, $s1, 0x61
/* 122BDC 80104AEC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 122BE0 80104AF0 AFA20010 */  sw         $v0, 0x10($sp)
/* 122BE4 80104AF4 02402021 */  addu       $a0, $s2, $zero
/* 122BE8 80104AF8 02538021 */  addu       $s0, $s2, $s3
/* 122BEC 80104AFC 02002821 */  addu       $a1, $s0, $zero
/* 122BF0 80104B00 2406009E */  addiu      $a2, $zero, 0x9E
/* 122BF4 80104B04 0C04679E */  jal        func_menu_80119E78
/* 122BF8 80104B08 24070040 */   addiu     $a3, $zero, 0x40
/* 122BFC 80104B0C 26443044 */  addiu      $a0, $s2, 0x3044
/* 122C00 80104B10 0C047346 */  jal        func_menu_8011CD18
/* 122C04 80104B14 02002821 */   addu      $a1, $s0, $zero
/* 122C08 80104B18 26310001 */  addiu      $s1, $s1, 0x1
/* 122C0C 80104B1C 2A220005 */  slti       $v0, $s1, 0x5
/* 122C10 80104B20 1440FFF1 */  bnez       $v0, .Lmenu_80104AE8
/* 122C14 80104B24 26730078 */   addiu     $s3, $s3, 0x78
/* 122C18 80104B28 8E420370 */  lw         $v0, 0x370($s2)
/* 122C1C 80104B2C 90450023 */  lbu        $a1, 0x23($v0)
/* 122C20 80104B30 26443044 */  addiu      $a0, $s2, 0x3044
/* 122C24 80104B34 0C0472E9 */  jal        func_menu_8011CBA4
/* 122C28 80104B38 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 122C2C 80104B3C 8E420000 */  lw         $v0, 0x0($s2)
/* 122C30 80104B40 264525BC */  addiu      $a1, $s2, 0x25BC
/* 122C34 80104B44 84440090 */  lh         $a0, 0x90($v0)
/* 122C38 80104B48 8C420094 */  lw         $v0, 0x94($v0)
/* 122C3C 80104B4C 0040F809 */  jalr       $v0
/* 122C40 80104B50 02442021 */   addu      $a0, $s2, $a0
/* 122C44 80104B54 0C041504 */  jal        func_menu_80105410
/* 122C48 80104B58 02402021 */   addu      $a0, $s2, $zero
/* 122C4C 80104B5C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 122C50 80104B60 8FB30024 */  lw         $s3, 0x24($sp)
/* 122C54 80104B64 8FB20020 */  lw         $s2, 0x20($sp)
/* 122C58 80104B68 8FB1001C */  lw         $s1, 0x1C($sp)
/* 122C5C 80104B6C 8FB00018 */  lw         $s0, 0x18($sp)
/* 122C60 80104B70 03E00008 */  jr         $ra
/* 122C64 80104B74 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_80104B78
/* 122C68 80104B78 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 122C6C 80104B7C AFB30024 */  sw         $s3, 0x24($sp)
/* 122C70 80104B80 00809821 */  addu       $s3, $a0, $zero
/* 122C74 80104B84 AFBF002C */  sw         $ra, 0x2C($sp)
/* 122C78 80104B88 AFB40028 */  sw         $s4, 0x28($sp)
/* 122C7C 80104B8C AFB20020 */  sw         $s2, 0x20($sp)
/* 122C80 80104B90 AFB1001C */  sw         $s1, 0x1C($sp)
/* 122C84 80104B94 AFB00018 */  sw         $s0, 0x18($sp)
/* 122C88 80104B98 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 122C8C 80104B9C F7B60038 */  sdc1       $f22, 0x38($sp)
/* 122C90 80104BA0 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 122C94 80104BA4 8E630370 */  lw         $v1, 0x370($s3)
/* 122C98 80104BA8 9062001F */  lbu        $v0, 0x1F($v1)
/* 122C9C 80104BAC 44821000 */  mtc1       $v0, $f2
/* 122CA0 80104BB0 468010A1 */  cvt.d.w    $f2, $f2
/* 122CA4 80104BB4 04430005 */  bgezl      $v0, .Lmenu_80104BCC
/* 122CA8 80104BB8 46201020 */   cvt.s.d   $f0, $f2
/* 122CAC 80104BBC 3C01800D */  lui        $at, %hi(D_menu_800CDDD0)
/* 122CB0 80104BC0 D420DDD0 */  ldc1       $f0, %lo(D_menu_800CDDD0)($at)
/* 122CB4 80104BC4 46201080 */  add.d      $f2, $f2, $f0
/* 122CB8 80104BC8 46201020 */  cvt.s.d    $f0, $f2
.Lmenu_80104BCC:
/* 122CBC 80104BCC 3C01800D */  lui        $at, %hi(D_menu_800CDDD8)
/* 122CC0 80104BD0 C424DDD8 */  lwc1       $f4, %lo(D_menu_800CDDD8)($at)
/* 122CC4 80104BD4 90620020 */  lbu        $v0, 0x20($v1)
/* 122CC8 80104BD8 44821000 */  mtc1       $v0, $f2
/* 122CCC 80104BDC 468010A1 */  cvt.d.w    $f2, $f2
/* 122CD0 80104BE0 04410004 */  bgez       $v0, .Lmenu_80104BF4
/* 122CD4 80104BE4 46040603 */   div.s     $f24, $f0, $f4
/* 122CD8 80104BE8 3C01800D */  lui        $at, %hi(D_menu_800CDDE0)
/* 122CDC 80104BEC D420DDE0 */  ldc1       $f0, %lo(D_menu_800CDDE0)($at)
/* 122CE0 80104BF0 46201080 */  add.d      $f2, $f2, $f0
.Lmenu_80104BF4:
/* 122CE4 80104BF4 46201520 */  cvt.s.d    $f20, $f2
/* 122CE8 80104BF8 4604A503 */  div.s      $f20, $f20, $f4
/* 122CEC 80104BFC 02602021 */  addu       $a0, $s3, $zero
/* 122CF0 80104C00 26714178 */  addiu      $s1, $s3, 0x4178
/* 122CF4 80104C04 02202821 */  addu       $a1, $s1, $zero
/* 122CF8 80104C08 24060106 */  addiu      $a2, $zero, 0x106
/* 122CFC 80104C0C 0C046A38 */  jal        func_menu_8011A8E0
/* 122D00 80104C10 240700F9 */   addiu     $a3, $zero, 0xF9
/* 122D04 80104C14 02602021 */  addu       $a0, $s3, $zero
/* 122D08 80104C18 26724864 */  addiu      $s2, $s3, 0x4864
/* 122D0C 80104C1C 02402821 */  addu       $a1, $s2, $zero
/* 122D10 80104C20 24060107 */  addiu      $a2, $zero, 0x107
/* 122D14 80104C24 0C046A38 */  jal        func_menu_8011A8E0
/* 122D18 80104C28 240700F9 */   addiu     $a3, $zero, 0xF9
/* 122D1C 80104C2C 02602021 */  addu       $a0, $s3, $zero
/* 122D20 80104C30 267040E4 */  addiu      $s0, $s3, 0x40E4
/* 122D24 80104C34 02002821 */  addu       $a1, $s0, $zero
/* 122D28 80104C38 24060108 */  addiu      $a2, $zero, 0x108
/* 122D2C 80104C3C 0C046966 */  jal        func_menu_8011A598
/* 122D30 80104C40 24070044 */   addiu     $a3, $zero, 0x44
/* 122D34 80104C44 02602021 */  addu       $a0, $s3, $zero
/* 122D38 80104C48 266536F0 */  addiu      $a1, $s3, 0x36F0
/* 122D3C 80104C4C 02003021 */  addu       $a2, $s0, $zero
/* 122D40 80104C50 24070109 */  addiu      $a3, $zero, 0x109
/* 122D44 80104C54 24020055 */  addiu      $v0, $zero, 0x55
/* 122D48 80104C58 0C04699A */  jal        func_menu_8011A668
/* 122D4C 80104C5C AFA20010 */   sw        $v0, 0x10($sp)
/* 122D50 80104C60 02202021 */  addu       $a0, $s1, $zero
/* 122D54 80104C64 3C01800D */  lui        $at, %hi(D_menu_800CDDE8)
/* 122D58 80104C68 C422DDE8 */  lwc1       $f2, %lo(D_menu_800CDDE8)($at)
/* 122D5C 80104C6C 3C01800D */  lui        $at, %hi(D_menu_800CDDEC)
/* 122D60 80104C70 C436DDEC */  lwc1       $f22, %lo(D_menu_800CDDEC)($at)
/* 122D64 80104C74 4602C603 */  div.s      $f24, $f24, $f2
/* 122D68 80104C78 4616C000 */  add.s      $f0, $f24, $f22
/* 122D6C 80104C7C 00008021 */  addu       $s0, $zero, $zero
/* 122D70 80104C80 4600018D */  trunc.w.s  $f6, $f0
/* 122D74 80104C84 44053000 */  mfc1       $a1, $f6
/* 122D78 80104C88 0C04781C */  jal        func_menu_8011E070
/* 122D7C 80104C8C 4602A503 */   div.s     $f20, $f20, $f2
/* 122D80 80104C90 4616A500 */  add.s      $f20, $f20, $f22
/* 122D84 80104C94 24145040 */  addiu      $s4, $zero, 0x5040
/* 122D88 80104C98 4600A18D */  trunc.w.s  $f6, $f20
/* 122D8C 80104C9C 44053000 */  mfc1       $a1, $f6
/* 122D90 80104CA0 0C04781C */  jal        func_menu_8011E070
/* 122D94 80104CA4 02402021 */   addu      $a0, $s2, $zero
/* 122D98 80104CA8 8E620000 */  lw         $v0, 0x0($s3)
/* 122D9C 80104CAC 02202821 */  addu       $a1, $s1, $zero
/* 122DA0 80104CB0 84440090 */  lh         $a0, 0x90($v0)
/* 122DA4 80104CB4 8C420094 */  lw         $v0, 0x94($v0)
/* 122DA8 80104CB8 0040F809 */  jalr       $v0
/* 122DAC 80104CBC 02642021 */   addu      $a0, $s3, $a0
/* 122DB0 80104CC0 8E620000 */  lw         $v0, 0x0($s3)
/* 122DB4 80104CC4 02402821 */  addu       $a1, $s2, $zero
/* 122DB8 80104CC8 84440090 */  lh         $a0, 0x90($v0)
/* 122DBC 80104CCC 8C420094 */  lw         $v0, 0x94($v0)
/* 122DC0 80104CD0 0040F809 */  jalr       $v0
/* 122DC4 80104CD4 02642021 */   addu      $a0, $s3, $a0
.Lmenu_80104CD8:
/* 122DC8 80104CD8 2602005D */  addiu      $v0, $s0, 0x5D
/* 122DCC 80104CDC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 122DD0 80104CE0 AFA20010 */  sw         $v0, 0x10($sp)
/* 122DD4 80104CE4 02602021 */  addu       $a0, $s3, $zero
/* 122DD8 80104CE8 02742821 */  addu       $a1, $s3, $s4
/* 122DDC 80104CEC 26060111 */  addiu      $a2, $s0, 0x111
/* 122DE0 80104CF0 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 122DE4 80104CF4 0C04679E */  jal        func_menu_80119E78
/* 122DE8 80104CF8 24070040 */   addiu     $a3, $zero, 0x40
/* 122DEC 80104CFC 26100001 */  addiu      $s0, $s0, 0x1
/* 122DF0 80104D00 2A020003 */  slti       $v0, $s0, 0x3
/* 122DF4 80104D04 1440FFF4 */  bnez       $v0, .Lmenu_80104CD8
/* 122DF8 80104D08 26940078 */   addiu     $s4, $s4, 0x78
/* 122DFC 80104D0C 02602021 */  addu       $a0, $s3, $zero
/* 122E00 80104D10 26724F50 */  addiu      $s2, $s3, 0x4F50
/* 122E04 80104D14 02402821 */  addu       $a1, $s2, $zero
/* 122E08 80104D18 24060114 */  addiu      $a2, $zero, 0x114
/* 122E0C 80104D1C 24070040 */  addiu      $a3, $zero, 0x40
/* 122E10 80104D20 240200A7 */  addiu      $v0, $zero, 0xA7
/* 122E14 80104D24 0C04679E */  jal        func_menu_80119E78
/* 122E18 80104D28 AFA20010 */   sw        $v0, 0x10($sp)
/* 122E1C 80104D2C 02602021 */  addu       $a0, $s3, $zero
/* 122E20 80104D30 26714FC8 */  addiu      $s1, $s3, 0x4FC8
/* 122E24 80104D34 02202821 */  addu       $a1, $s1, $zero
/* 122E28 80104D38 24060114 */  addiu      $a2, $zero, 0x114
/* 122E2C 80104D3C 24070040 */  addiu      $a3, $zero, 0x40
/* 122E30 80104D40 240200A8 */  addiu      $v0, $zero, 0xA8
/* 122E34 80104D44 0C04679E */  jal        func_menu_80119E78
/* 122E38 80104D48 AFA20010 */   sw        $v0, 0x10($sp)
/* 122E3C 80104D4C 267040E4 */  addiu      $s0, $s3, 0x40E4
/* 122E40 80104D50 02002021 */  addu       $a0, $s0, $zero
/* 122E44 80104D54 0C047346 */  jal        func_menu_8011CD18
/* 122E48 80104D58 02402821 */   addu      $a1, $s2, $zero
/* 122E4C 80104D5C 02002021 */  addu       $a0, $s0, $zero
/* 122E50 80104D60 0C047346 */  jal        func_menu_8011CD18
/* 122E54 80104D64 02202821 */   addu      $a1, $s1, $zero
/* 122E58 80104D68 8E620370 */  lw         $v0, 0x370($s3)
/* 122E5C 80104D6C 90450021 */  lbu        $a1, 0x21($v0)
/* 122E60 80104D70 02002021 */  addu       $a0, $s0, $zero
/* 122E64 80104D74 0C0472E9 */  jal        func_menu_8011CBA4
/* 122E68 80104D78 2CA50001 */   sltiu     $a1, $a1, 0x1
/* 122E6C 80104D7C 8E620000 */  lw         $v0, 0x0($s3)
/* 122E70 80104D80 266536F0 */  addiu      $a1, $s3, 0x36F0
/* 122E74 80104D84 84440090 */  lh         $a0, 0x90($v0)
/* 122E78 80104D88 8C420094 */  lw         $v0, 0x94($v0)
/* 122E7C 80104D8C 0040F809 */  jalr       $v0
/* 122E80 80104D90 02642021 */   addu      $a0, $s3, $a0
/* 122E84 80104D94 0C04154E */  jal        func_menu_80105538
/* 122E88 80104D98 02602021 */   addu      $a0, $s3, $zero
/* 122E8C 80104D9C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 122E90 80104DA0 8FB40028 */  lw         $s4, 0x28($sp)
/* 122E94 80104DA4 8FB30024 */  lw         $s3, 0x24($sp)
/* 122E98 80104DA8 8FB20020 */  lw         $s2, 0x20($sp)
/* 122E9C 80104DAC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 122EA0 80104DB0 8FB00018 */  lw         $s0, 0x18($sp)
/* 122EA4 80104DB4 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 122EA8 80104DB8 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 122EAC 80104DBC D7B40030 */  ldc1       $f20, 0x30($sp)
/* 122EB0 80104DC0 03E00008 */  jr         $ra
/* 122EB4 80104DC4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_80104DC8
/* 122EB8 80104DC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 122EBC 80104DCC AFB00010 */  sw         $s0, 0x10($sp)
/* 122EC0 80104DD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 122EC4 80104DD4 0C04121B */  jal        func_menu_8010486C
/* 122EC8 80104DD8 00808021 */   addu      $s0, $a0, $zero
/* 122ECC 80104DDC 0C041232 */  jal        func_menu_801048C8
/* 122ED0 80104DE0 02002021 */   addu      $a0, $s0, $zero
/* 122ED4 80104DE4 0C04126F */  jal        func_menu_801049BC
/* 122ED8 80104DE8 02002021 */   addu      $a0, $s0, $zero
/* 122EDC 80104DEC 0C0412DE */  jal        func_menu_80104B78
/* 122EE0 80104DF0 02002021 */   addu      $a0, $s0, $zero
/* 122EE4 80104DF4 8E020000 */  lw         $v0, 0x0($s0)
/* 122EE8 80104DF8 84440140 */  lh         $a0, 0x140($v0)
/* 122EEC 80104DFC 8C420144 */  lw         $v0, 0x144($v0)
/* 122EF0 80104E00 0040F809 */  jalr       $v0
/* 122EF4 80104E04 02042021 */   addu      $a0, $s0, $a0
/* 122EF8 80104E08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 122EFC 80104E0C 8FB00010 */  lw         $s0, 0x10($sp)
/* 122F00 80104E10 03E00008 */  jr         $ra
/* 122F04 80104E14 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80104E18
/* 122F08 80104E18 03E00008 */  jr         $ra
/* 122F0C 80104E1C 00000000 */   nop

glabel func_menu_80104E20
/* 122F10 80104E20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 122F14 80104E24 AFB00010 */  sw         $s0, 0x10($sp)
/* 122F18 80104E28 00808021 */  addu       $s0, $a0, $zero
/* 122F1C 80104E2C AFB10014 */  sw         $s1, 0x14($sp)
/* 122F20 80104E30 00A08821 */  addu       $s1, $a1, $zero
/* 122F24 80104E34 26222624 */  addiu      $v0, $s1, 0x2624
/* 122F28 80104E38 AFBF0018 */  sw         $ra, 0x18($sp)
/* 122F2C 80104E3C 0C040214 */  jal        func_menu_80100850
/* 122F30 80104E40 AE020370 */   sw        $v0, 0x370($s0)
/* 122F34 80104E44 14400003 */  bnez       $v0, .Lmenu_80104E54
/* 122F38 80104E48 02002021 */   addu      $a0, $s0, $zero
/* 122F3C 80104E4C 0804139F */  j          .Lmenu_80104E7C
/* 122F40 80104E50 00001021 */   addu      $v0, $zero, $zero
.Lmenu_80104E54:
/* 122F44 80104E54 0C040509 */  jal        func_menu_80101424
/* 122F48 80104E58 02202821 */   addu      $a1, $s1, $zero
/* 122F4C 80104E5C 14400007 */  bnez       $v0, .Lmenu_80104E7C
/* 122F50 80104E60 24020001 */   addiu     $v0, $zero, 0x1
/* 122F54 80104E64 02002021 */  addu       $a0, $s0, $zero
/* 122F58 80104E68 02202821 */  addu       $a1, $s1, $zero
/* 122F5C 80104E6C 00003021 */  addu       $a2, $zero, $zero
/* 122F60 80104E70 0C04051A */  jal        func_menu_80101468
/* 122F64 80104E74 24070001 */   addiu     $a3, $zero, 0x1
/* 122F68 80104E78 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_80104E7C:
/* 122F6C 80104E7C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 122F70 80104E80 8FB10014 */  lw         $s1, 0x14($sp)
/* 122F74 80104E84 8FB00010 */  lw         $s0, 0x10($sp)
/* 122F78 80104E88 03E00008 */  jr         $ra
/* 122F7C 80104E8C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80104E90
/* 122F80 80104E90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 122F84 80104E94 AFB00010 */  sw         $s0, 0x10($sp)
/* 122F88 80104E98 00808021 */  addu       $s0, $a0, $zero
/* 122F8C 80104E9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 122F90 80104EA0 96020360 */  lhu        $v0, 0x360($s0)
/* 122F94 80104EA4 2443FFFE */  addiu      $v1, $v0, -0x2
/* 122F98 80104EA8 2C62002B */  sltiu      $v0, $v1, 0x2B
/* 122F9C 80104EAC 10400010 */  beqz       $v0, Lmenu_80104EF0
/* 122FA0 80104EB0 3C02800D */   lui       $v0, %hi(jtbl_menu_800CDDF0)
/* 122FA4 80104EB4 2442DDF0 */  addiu      $v0, $v0, %lo(jtbl_menu_800CDDF0)
/* 122FA8 80104EB8 00031880 */  sll        $v1, $v1, 2
/* 122FAC 80104EBC 00621821 */  addu       $v1, $v1, $v0
/* 122FB0 80104EC0 8C620000 */  lw         $v0, 0x0($v1)
/* 122FB4 80104EC4 00400008 */  jr         $v0
/* 122FB8 80104EC8 00000000 */   nop
glabel Lmenu_80104ECC
/* 122FBC 80104ECC 8E040354 */  lw         $a0, 0x354($s0)
/* 122FC0 80104ED0 0C0401B4 */  jal        func_menu_801006D0
/* 122FC4 80104ED4 24840004 */   addiu     $a0, $a0, 0x4
/* 122FC8 80104ED8 080413BC */  j          Lmenu_80104EF0
/* 122FCC 80104EDC 00000000 */   nop
glabel Lmenu_80104EE0
/* 122FD0 80104EE0 8E040354 */  lw         $a0, 0x354($s0)
/* 122FD4 80104EE4 96050360 */  lhu        $a1, 0x360($s0)
/* 122FD8 80104EE8 0C0401A6 */  jal        func_menu_80100698
/* 122FDC 80104EEC 24840004 */   addiu     $a0, $a0, 0x4
glabel Lmenu_80104EF0
/* 122FE0 80104EF0 8E040354 */  lw         $a0, 0x354($s0)
/* 122FE4 80104EF4 24050031 */  addiu      $a1, $zero, 0x31
/* 122FE8 80104EF8 0C0401A6 */  jal        func_menu_80100698
/* 122FEC 80104EFC 24840004 */   addiu     $a0, $a0, 0x4
/* 122FF0 80104F00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 122FF4 80104F04 8FB00010 */  lw         $s0, 0x10($sp)
/* 122FF8 80104F08 03E00008 */  jr         $ra
/* 122FFC 80104F0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80104F10
/* 123000 80104F10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 123004 80104F14 AFB1001C */  sw         $s1, 0x1C($sp)
/* 123008 80104F18 00808821 */  addu       $s1, $a0, $zero
/* 12300C 80104F1C AFB20020 */  sw         $s2, 0x20($sp)
/* 123010 80104F20 00A09021 */  addu       $s2, $a1, $zero
/* 123014 80104F24 26220448 */  addiu      $v0, $s1, 0x448
/* 123018 80104F28 AFBF0024 */  sw         $ra, 0x24($sp)
/* 12301C 80104F2C 16420004 */  bne        $s2, $v0, .Lmenu_80104F40
/* 123020 80104F30 AFB00018 */   sw        $s0, 0x18($sp)
/* 123024 80104F34 24020001 */  addiu      $v0, $zero, 0x1
/* 123028 80104F38 08041402 */  j          .Lmenu_80105008
/* 12302C 80104F3C A2220369 */   sb        $v0, 0x369($s1)
.Lmenu_80104F40:
/* 123030 80104F40 26220738 */  addiu      $v0, $s1, 0x738
/* 123034 80104F44 1642000F */  bne        $s2, $v0, .Lmenu_80104F84
/* 123038 80104F48 26220A28 */   addiu     $v0, $s1, 0xA28
/* 12303C 80104F4C 24020072 */  addiu      $v0, $zero, 0x72
/* 123040 80104F50 AFA20010 */  sw         $v0, 0x10($sp)
/* 123044 80104F54 02202021 */  addu       $a0, $s1, $zero
/* 123048 80104F58 263015E8 */  addiu      $s0, $s1, 0x15E8
/* 12304C 80104F5C 02002821 */  addu       $a1, $s0, $zero
/* 123050 80104F60 240600A1 */  addiu      $a2, $zero, 0xA1
/* 123054 80104F64 0C040297 */  jal        func_menu_80100A5C
/* 123058 80104F68 2407004F */   addiu     $a3, $zero, 0x4F
/* 12305C 80104F6C 02202021 */  addu       $a0, $s1, $zero
/* 123060 80104F70 02002821 */  addu       $a1, $s0, $zero
/* 123064 80104F74 0C046B5F */  jal        func_menu_8011AD7C
/* 123068 80104F78 240600BD */   addiu     $a2, $zero, 0xBD
/* 12306C 80104F7C 08041402 */  j          .Lmenu_80105008
/* 123070 80104F80 00000000 */   nop
.Lmenu_80104F84:
/* 123074 80104F84 16420004 */  bne        $s2, $v0, .Lmenu_80104F98
/* 123078 80104F88 26220D18 */   addiu     $v0, $s1, 0xD18
/* 12307C 80104F8C 2402000A */  addiu      $v0, $zero, 0xA
/* 123080 80104F90 08041402 */  j          .Lmenu_80105008
/* 123084 80104F94 A6220360 */   sh        $v0, 0x360($s1)
.Lmenu_80104F98:
/* 123088 80104F98 16420004 */  bne        $s2, $v0, .Lmenu_80104FAC
/* 12308C 80104F9C 262212F8 */   addiu     $v0, $s1, 0x12F8
/* 123090 80104FA0 2402000B */  addiu      $v0, $zero, 0xB
/* 123094 80104FA4 08041402 */  j          .Lmenu_80105008
/* 123098 80104FA8 A6220360 */   sh        $v0, 0x360($s1)
.Lmenu_80104FAC:
/* 12309C 80104FAC 16420004 */  bne        $s2, $v0, .Lmenu_80104FC0
/* 1230A0 80104FB0 26221008 */   addiu     $v0, $s1, 0x1008
/* 1230A4 80104FB4 2402002C */  addiu      $v0, $zero, 0x2C
/* 1230A8 80104FB8 08041402 */  j          .Lmenu_80105008
/* 1230AC 80104FBC A6220360 */   sh        $v0, 0x360($s1)
.Lmenu_80104FC0:
/* 1230B0 80104FC0 16420004 */  bne        $s2, $v0, .Lmenu_80104FD4
/* 1230B4 80104FC4 262218D8 */   addiu     $v0, $s1, 0x18D8
/* 1230B8 80104FC8 24020027 */  addiu      $v0, $zero, 0x27
/* 1230BC 80104FCC 08041402 */  j          .Lmenu_80105008
/* 1230C0 80104FD0 A6220360 */   sh        $v0, 0x360($s1)
.Lmenu_80104FD4:
/* 1230C4 80104FD4 16420007 */  bne        $s2, $v0, .Lmenu_80104FF4
/* 1230C8 80104FD8 262215E8 */   addiu     $v0, $s1, 0x15E8
/* 1230CC 80104FDC 92220368 */  lbu        $v0, 0x368($s1)
/* 1230D0 80104FE0 54400009 */  bnel       $v0, $zero, .Lmenu_80105008
/* 1230D4 80104FE4 A2200369 */   sb        $zero, 0x369($s1)
/* 1230D8 80104FE8 24020002 */  addiu      $v0, $zero, 0x2
/* 1230DC 80104FEC 08041402 */  j          .Lmenu_80105008
/* 1230E0 80104FF0 A6220360 */   sh        $v0, 0x360($s1)
.Lmenu_80104FF4:
/* 1230E4 80104FF4 16420004 */  bne        $s2, $v0, .Lmenu_80105008
/* 1230E8 80104FF8 24020002 */   addiu     $v0, $zero, 0x2
/* 1230EC 80104FFC 8E240284 */  lw         $a0, 0x284($s1)
/* 1230F0 80105000 0C045449 */  jal        func_menu_80115124
/* 1230F4 80105004 A2220369 */   sb        $v0, 0x369($s1)
.Lmenu_80105008:
/* 1230F8 80105008 96230360 */  lhu        $v1, 0x360($s1)
/* 1230FC 8010500C 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 123100 80105010 10620002 */  beq        $v1, $v0, .Lmenu_8010501C
/* 123104 80105014 24020001 */   addiu     $v0, $zero, 0x1
/* 123108 80105018 AE220364 */  sw         $v0, 0x364($s1)
.Lmenu_8010501C:
/* 12310C 8010501C AE32035C */  sw         $s2, 0x35C($s1)
/* 123110 80105020 8FBF0024 */  lw         $ra, 0x24($sp)
/* 123114 80105024 8FB20020 */  lw         $s2, 0x20($sp)
/* 123118 80105028 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12311C 8010502C 8FB00018 */  lw         $s0, 0x18($sp)
/* 123120 80105030 03E00008 */  jr         $ra
/* 123124 80105034 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_80105038
/* 123128 80105038 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12312C 8010503C 24824178 */  addiu      $v0, $a0, 0x4178
/* 123130 80105040 14A20022 */  bne        $a1, $v0, .Lmenu_801050CC
/* 123134 80105044 AFBF0010 */   sw        $ra, 0x10($sp)
/* 123138 80105048 C4A406C0 */  lwc1       $f4, 0x6C0($a1)
/* 12313C 8010504C 46802120 */  cvt.s.w    $f4, $f4
/* 123140 80105050 3C01800D */  lui        $at, %hi(D_menu_800CDE9C)
/* 123144 80105054 C422DE9C */  lwc1       $f2, %lo(D_menu_800CDE9C)($at)
/* 123148 80105058 3C01800D */  lui        $at, %hi(D_menu_800CDEA0)
/* 12314C 8010505C C420DEA0 */  lwc1       $f0, %lo(D_menu_800CDEA0)($at)
/* 123150 80105060 46022103 */  div.s      $f4, $f4, $f2
/* 123154 80105064 46002002 */  mul.s      $f0, $f4, $f0
/* 123158 80105068 8C830370 */  lw         $v1, 0x370($a0)
/* 12315C 8010506C 24020001 */  addiu      $v0, $zero, 0x1
/* 123160 80105070 AC620000 */  sw         $v0, 0x0($v1)
/* 123164 80105074 4600018D */  trunc.w.s  $f6, $f0
/* 123168 80105078 44023000 */  mfc1       $v0, $f6
/* 12316C 8010507C A062001F */  sb         $v0, 0x1F($v1)
/* 123170 80105080 8C820354 */  lw         $v0, 0x354($a0)
/* 123174 80105084 8C420000 */  lw         $v0, 0x0($v0)
/* 123178 80105088 8C420008 */  lw         $v0, 0x8($v0)
/* 12317C 8010508C 1040005B */  beqz       $v0, .Lmenu_801051FC
/* 123180 80105090 00000000 */   nop
/* 123184 80105094 E4440010 */  swc1       $f4, 0x10($v0)
/* 123188 80105098 8C820354 */  lw         $v0, 0x354($a0)
/* 12318C 8010509C 8C43461C */  lw         $v1, 0x461C($v0)
/* 123190 801050A0 10600056 */  beqz       $v1, .Lmenu_801051FC
/* 123194 801050A4 00000000 */   nop
/* 123198 801050A8 8C620000 */  lw         $v0, 0x0($v1)
/* 12319C 801050AC 3C053F4C */  lui        $a1, (0x3F4CCCCD >> 16)
/* 1231A0 801050B0 34A5CCCD */  ori        $a1, $a1, (0x3F4CCCCD & 0xFFFF)
/* 1231A4 801050B4 84440038 */  lh         $a0, 0x38($v0)
/* 1231A8 801050B8 8C42003C */  lw         $v0, 0x3C($v0)
/* 1231AC 801050BC 0040F809 */  jalr       $v0
/* 1231B0 801050C0 00642021 */   addu      $a0, $v1, $a0
/* 1231B4 801050C4 0804147F */  j          .Lmenu_801051FC
/* 1231B8 801050C8 00000000 */   nop
.Lmenu_801050CC:
/* 1231BC 801050CC 24824864 */  addiu      $v0, $a0, 0x4864
/* 1231C0 801050D0 14A20016 */  bne        $a1, $v0, .Lmenu_8010512C
/* 1231C4 801050D4 24821BC8 */   addiu     $v0, $a0, 0x1BC8
/* 1231C8 801050D8 C4A406C0 */  lwc1       $f4, 0x6C0($a1)
/* 1231CC 801050DC 46802120 */  cvt.s.w    $f4, $f4
/* 1231D0 801050E0 3C01800D */  lui        $at, %hi(D_menu_800CDEA4)
/* 1231D4 801050E4 C422DEA4 */  lwc1       $f2, %lo(D_menu_800CDEA4)($at)
/* 1231D8 801050E8 3C01800D */  lui        $at, %hi(D_menu_800CDEA8)
/* 1231DC 801050EC C420DEA8 */  lwc1       $f0, %lo(D_menu_800CDEA8)($at)
/* 1231E0 801050F0 46022103 */  div.s      $f4, $f4, $f2
/* 1231E4 801050F4 46002002 */  mul.s      $f0, $f4, $f0
/* 1231E8 801050F8 8C830370 */  lw         $v1, 0x370($a0)
/* 1231EC 801050FC 24020001 */  addiu      $v0, $zero, 0x1
/* 1231F0 80105100 AC620000 */  sw         $v0, 0x0($v1)
/* 1231F4 80105104 4600018D */  trunc.w.s  $f6, $f0
/* 1231F8 80105108 44023000 */  mfc1       $v0, $f6
/* 1231FC 8010510C A0620020 */  sb         $v0, 0x20($v1)
/* 123200 80105110 8C820354 */  lw         $v0, 0x354($a0)
/* 123204 80105114 8C420000 */  lw         $v0, 0x0($v0)
/* 123208 80105118 8C420008 */  lw         $v0, 0x8($v0)
/* 12320C 8010511C 54400037 */  bnel       $v0, $zero, .Lmenu_801051FC
/* 123210 80105120 E444000C */   swc1      $f4, 0xC($v0)
/* 123214 80105124 0804147F */  j          .Lmenu_801051FC
/* 123218 80105128 00000000 */   nop
.Lmenu_8010512C:
/* 12321C 8010512C 14A2000D */  bne        $a1, $v0, .Lmenu_80105164
/* 123220 80105130 248225BC */   addiu     $v0, $a0, 0x25BC
/* 123224 80105134 8C820354 */  lw         $v0, 0x354($a0)
/* 123228 80105138 8C83301C */  lw         $v1, 0x301C($a0)
/* 12322C 8010513C 8C420000 */  lw         $v0, 0x0($v0)
/* 123230 80105140 AC430104 */  sw         $v1, 0x104($v0)
/* 123234 80105144 8C820354 */  lw         $v0, 0x354($a0)
/* 123238 80105148 8C420000 */  lw         $v0, 0x0($v0)
/* 12323C 8010514C 8C830370 */  lw         $v1, 0x370($a0)
/* 123240 80105150 8C440104 */  lw         $a0, 0x104($v0)
/* 123244 80105154 24020001 */  addiu      $v0, $zero, 0x1
/* 123248 80105158 AC620000 */  sw         $v0, 0x0($v1)
/* 12324C 8010515C 0804147F */  j          .Lmenu_801051FC
/* 123250 80105160 A064000C */   sb        $a0, 0xC($v1)
.Lmenu_80105164:
/* 123254 80105164 14A2000E */  bne        $a1, $v0, .Lmenu_801051A0
/* 123258 80105168 248236F0 */   addiu     $v0, $a0, 0x36F0
/* 12325C 8010516C 8C830354 */  lw         $v1, 0x354($a0)
/* 123260 80105170 8C8230B0 */  lw         $v0, 0x30B0($a0)
/* 123264 80105174 8C630000 */  lw         $v1, 0x0($v1)
/* 123268 80105178 24420001 */  addiu      $v0, $v0, 0x1
/* 12326C 8010517C A0620030 */  sb         $v0, 0x30($v1)
/* 123270 80105180 8C820354 */  lw         $v0, 0x354($a0)
/* 123274 80105184 8C420000 */  lw         $v0, 0x0($v0)
/* 123278 80105188 8C830370 */  lw         $v1, 0x370($a0)
/* 12327C 8010518C 90440030 */  lbu        $a0, 0x30($v0)
/* 123280 80105190 24020001 */  addiu      $v0, $zero, 0x1
/* 123284 80105194 AC620000 */  sw         $v0, 0x0($v1)
/* 123288 80105198 0804147F */  j          .Lmenu_801051FC
/* 12328C 8010519C A0640023 */   sb        $a0, 0x23($v1)
.Lmenu_801051A0:
/* 123290 801051A0 14A20016 */  bne        $a1, $v0, .Lmenu_801051FC
/* 123294 801051A4 00000000 */   nop
/* 123298 801051A8 8C824150 */  lw         $v0, 0x4150($a0)
/* 12329C 801051AC 8C830370 */  lw         $v1, 0x370($a0)
/* 1232A0 801051B0 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1232A4 801051B4 A0620021 */  sb         $v0, 0x21($v1)
/* 1232A8 801051B8 24020001 */  addiu      $v0, $zero, 0x1
/* 1232AC 801051BC AC620000 */  sw         $v0, 0x0($v1)
/* 1232B0 801051C0 8C820354 */  lw         $v0, 0x354($a0)
/* 1232B4 801051C4 8C420000 */  lw         $v0, 0x0($v0)
/* 1232B8 801051C8 8C450008 */  lw         $a1, 0x8($v0)
/* 1232BC 801051CC 10A0000B */  beqz       $a1, .Lmenu_801051FC
/* 1232C0 801051D0 00000000 */   nop
/* 1232C4 801051D4 8C820370 */  lw         $v0, 0x370($a0)
/* 1232C8 801051D8 90420021 */  lbu        $v0, 0x21($v0)
/* 1232CC 801051DC 10400004 */  beqz       $v0, .Lmenu_801051F0
/* 1232D0 801051E0 2403FFFB */   addiu     $v1, $zero, -0x5
/* 1232D4 801051E4 8CA20000 */  lw         $v0, 0x0($a1)
/* 1232D8 801051E8 0804147E */  j          .Lmenu_801051F8
/* 1232DC 801051EC 00431024 */   and       $v0, $v0, $v1
.Lmenu_801051F0:
/* 1232E0 801051F0 8CA20000 */  lw         $v0, 0x0($a1)
/* 1232E4 801051F4 34420004 */  ori        $v0, $v0, 0x4
.Lmenu_801051F8:
/* 1232E8 801051F8 ACA20000 */  sw         $v0, 0x0($a1)
.Lmenu_801051FC:
/* 1232EC 801051FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1232F0 80105200 03E00008 */  jr         $ra
/* 1232F4 80105204 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80105208
/* 1232F8 80105208 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1232FC 8010520C AFB00010 */  sw         $s0, 0x10($sp)
/* 123300 80105210 00808021 */  addu       $s0, $a0, $zero
/* 123304 80105214 26040448 */  addiu      $a0, $s0, 0x448
/* 123308 80105218 3C064000 */  lui        $a2, (0x40000000 >> 16)
/* 12330C 8010521C AFBF0018 */  sw         $ra, 0x18($sp)
/* 123310 80105220 AFB10014 */  sw         $s1, 0x14($sp)
/* 123314 80105224 8C820018 */  lw         $v0, 0x18($a0)
/* 123318 80105228 26030738 */  addiu      $v1, $s0, 0x738
/* 12331C 8010522C 00461025 */  or         $v0, $v0, $a2
/* 123320 80105230 AC820018 */  sw         $v0, 0x18($a0)
/* 123324 80105234 8C620018 */  lw         $v0, 0x18($v1)
/* 123328 80105238 00461025 */  or         $v0, $v0, $a2
/* 12332C 8010523C AC620018 */  sw         $v0, 0x18($v1)
/* 123330 80105240 26030A28 */  addiu      $v1, $s0, 0xA28
/* 123334 80105244 8C620018 */  lw         $v0, 0x18($v1)
/* 123338 80105248 00461025 */  or         $v0, $v0, $a2
/* 12333C 8010524C AC620018 */  sw         $v0, 0x18($v1)
/* 123340 80105250 26030D18 */  addiu      $v1, $s0, 0xD18
/* 123344 80105254 8C620018 */  lw         $v0, 0x18($v1)
/* 123348 80105258 00461025 */  or         $v0, $v0, $a2
/* 12334C 8010525C AC620018 */  sw         $v0, 0x18($v1)
/* 123350 80105260 260312F8 */  addiu      $v1, $s0, 0x12F8
/* 123354 80105264 8C620018 */  lw         $v0, 0x18($v1)
/* 123358 80105268 00461025 */  or         $v0, $v0, $a2
/* 12335C 8010526C AC620018 */  sw         $v0, 0x18($v1)
/* 123360 80105270 26031008 */  addiu      $v1, $s0, 0x1008
/* 123364 80105274 8C620018 */  lw         $v0, 0x18($v1)
/* 123368 80105278 24050004 */  addiu      $a1, $zero, 0x4
/* 12336C 8010527C 00461025 */  or         $v0, $v0, $a2
/* 123370 80105280 0C048D3F */  jal        func_menu_801234FC
/* 123374 80105284 AC620018 */   sw        $v0, 0x18($v1)
/* 123378 80105288 261103D0 */  addiu      $s1, $s0, 0x3D0
/* 12337C 8010528C 02202021 */  addu       $a0, $s1, $zero
/* 123380 80105290 24050010 */  addiu      $a1, $zero, 0x10
/* 123384 80105294 0C047D09 */  jal        func_menu_8011F424
/* 123388 80105298 24060001 */   addiu     $a2, $zero, 0x1
/* 12338C 8010529C 02202021 */  addu       $a0, $s1, $zero
/* 123390 801052A0 0C047D63 */  jal        func_menu_8011F58C
/* 123394 801052A4 2405001E */   addiu     $a1, $zero, 0x1E
/* 123398 801052A8 260418D8 */  addiu      $a0, $s0, 0x18D8
/* 12339C 801052AC 0C041070 */  jal        func_menu_801041C0
/* 1233A0 801052B0 24050002 */   addiu     $a1, $zero, 0x2
/* 1233A4 801052B4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1233A8 801052B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1233AC 801052BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1233B0 801052C0 03E00008 */  jr         $ra
/* 1233B4 801052C4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_801052C8
/* 1233B8 801052C8 3C05BFFF */  lui        $a1, (0xBFFFFFFF >> 16)
/* 1233BC 801052CC 24830448 */  addiu      $v1, $a0, 0x448
/* 1233C0 801052D0 8C620018 */  lw         $v0, 0x18($v1)
/* 1233C4 801052D4 34A5FFFF */  ori        $a1, $a1, (0xBFFFFFFF & 0xFFFF)
/* 1233C8 801052D8 00451024 */  and        $v0, $v0, $a1
/* 1233CC 801052DC AC620018 */  sw         $v0, 0x18($v1)
/* 1233D0 801052E0 24830738 */  addiu      $v1, $a0, 0x738
/* 1233D4 801052E4 8C620018 */  lw         $v0, 0x18($v1)
/* 1233D8 801052E8 00451024 */  and        $v0, $v0, $a1
/* 1233DC 801052EC AC620018 */  sw         $v0, 0x18($v1)
/* 1233E0 801052F0 24830A28 */  addiu      $v1, $a0, 0xA28
/* 1233E4 801052F4 8C620018 */  lw         $v0, 0x18($v1)
/* 1233E8 801052F8 00451024 */  and        $v0, $v0, $a1
/* 1233EC 801052FC AC620018 */  sw         $v0, 0x18($v1)
/* 1233F0 80105300 24830D18 */  addiu      $v1, $a0, 0xD18
/* 1233F4 80105304 8C620018 */  lw         $v0, 0x18($v1)
/* 1233F8 80105308 00451024 */  and        $v0, $v0, $a1
/* 1233FC 8010530C AC620018 */  sw         $v0, 0x18($v1)
/* 123400 80105310 248312F8 */  addiu      $v1, $a0, 0x12F8
/* 123404 80105314 8C620018 */  lw         $v0, 0x18($v1)
/* 123408 80105318 24841008 */  addiu      $a0, $a0, 0x1008
/* 12340C 8010531C 00451024 */  and        $v0, $v0, $a1
/* 123410 80105320 AC620018 */  sw         $v0, 0x18($v1)
/* 123414 80105324 8C820018 */  lw         $v0, 0x18($a0)
/* 123418 80105328 00451024 */  and        $v0, $v0, $a1
/* 12341C 8010532C 03E00008 */  jr         $ra
/* 123420 80105330 AC820018 */   sw        $v0, 0x18($a0)

glabel func_menu_80105334
/* 123424 80105334 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 123428 80105338 AFB00010 */  sw         $s0, 0x10($sp)
/* 12342C 8010533C 00808021 */  addu       $s0, $a0, $zero
/* 123430 80105340 AFB10014 */  sw         $s1, 0x14($sp)
/* 123434 80105344 261103D0 */  addiu      $s1, $s0, 0x3D0
/* 123438 80105348 02202021 */  addu       $a0, $s1, $zero
/* 12343C 8010534C 24050011 */  addiu      $a1, $zero, 0x11
/* 123440 80105350 24060001 */  addiu      $a2, $zero, 0x1
/* 123444 80105354 AFBF001C */  sw         $ra, 0x1C($sp)
/* 123448 80105358 0C047D09 */  jal        func_menu_8011F424
/* 12344C 8010535C AFB20018 */   sw        $s2, 0x18($sp)
/* 123450 80105360 02202021 */  addu       $a0, $s1, $zero
/* 123454 80105364 0C047D63 */  jal        func_menu_8011F58C
/* 123458 80105368 2405001E */   addiu     $a1, $zero, 0x1E
/* 12345C 8010536C 260418D8 */  addiu      $a0, $s0, 0x18D8
/* 123460 80105370 0C041070 */  jal        func_menu_801041C0
/* 123464 80105374 24050010 */   addiu     $a1, $zero, 0x10
/* 123468 80105378 26121BC8 */  addiu      $s2, $s0, 0x1BC8
/* 12346C 8010537C 3C044000 */  lui        $a0, (0x40000000 >> 16)
/* 123470 80105380 8E420018 */  lw         $v0, 0x18($s2)
/* 123474 80105384 261125BC */  addiu      $s1, $s0, 0x25BC
/* 123478 80105388 00441025 */  or         $v0, $v0, $a0
/* 12347C 8010538C AE420018 */  sw         $v0, 0x18($s2)
/* 123480 80105390 8E220018 */  lw         $v0, 0x18($s1)
/* 123484 80105394 26033600 */  addiu      $v1, $s0, 0x3600
/* 123488 80105398 00441025 */  or         $v0, $v0, $a0
/* 12348C 8010539C AE220018 */  sw         $v0, 0x18($s1)
/* 123490 801053A0 8C620018 */  lw         $v0, 0x18($v1)
/* 123494 801053A4 00441025 */  or         $v0, $v0, $a0
/* 123498 801053A8 AC620018 */  sw         $v0, 0x18($v1)
/* 12349C 801053AC 26033678 */  addiu      $v1, $s0, 0x3678
/* 1234A0 801053B0 8C620018 */  lw         $v0, 0x18($v1)
/* 1234A4 801053B4 00441025 */  or         $v0, $v0, $a0
/* 1234A8 801053B8 AC620018 */  sw         $v0, 0x18($v1)
/* 1234AC 801053BC 8E020000 */  lw         $v0, 0x0($s0)
/* 1234B0 801053C0 02402821 */  addu       $a1, $s2, $zero
/* 1234B4 801053C4 84440090 */  lh         $a0, 0x90($v0)
/* 1234B8 801053C8 8C420094 */  lw         $v0, 0x94($v0)
/* 1234BC 801053CC 0040F809 */  jalr       $v0
/* 1234C0 801053D0 02042021 */   addu      $a0, $s0, $a0
/* 1234C4 801053D4 8E020000 */  lw         $v0, 0x0($s0)
/* 1234C8 801053D8 02202821 */  addu       $a1, $s1, $zero
/* 1234CC 801053DC 84440090 */  lh         $a0, 0x90($v0)
/* 1234D0 801053E0 8C420094 */  lw         $v0, 0x94($v0)
/* 1234D4 801053E4 0040F809 */  jalr       $v0
/* 1234D8 801053E8 02042021 */   addu      $a0, $s0, $a0
/* 1234DC 801053EC 02402021 */  addu       $a0, $s2, $zero
/* 1234E0 801053F0 0C044BE9 */  jal        func_menu_80112FA4
/* 1234E4 801053F4 24050004 */   addiu     $a1, $zero, 0x4
/* 1234E8 801053F8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1234EC 801053FC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1234F0 80105400 8FB10014 */  lw         $s1, 0x14($sp)
/* 1234F4 80105404 8FB00010 */  lw         $s0, 0x10($sp)
/* 1234F8 80105408 03E00008 */  jr         $ra
/* 1234FC 8010540C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80105410
/* 123500 80105410 3C05BFFF */  lui        $a1, (0xBFFFFFFF >> 16)
/* 123504 80105414 24831BC8 */  addiu      $v1, $a0, 0x1BC8
/* 123508 80105418 8C620018 */  lw         $v0, 0x18($v1)
/* 12350C 8010541C 34A5FFFF */  ori        $a1, $a1, (0xBFFFFFFF & 0xFFFF)
/* 123510 80105420 00451024 */  and        $v0, $v0, $a1
/* 123514 80105424 AC620018 */  sw         $v0, 0x18($v1)
/* 123518 80105428 248325BC */  addiu      $v1, $a0, 0x25BC
/* 12351C 8010542C 8C620018 */  lw         $v0, 0x18($v1)
/* 123520 80105430 00451024 */  and        $v0, $v0, $a1
/* 123524 80105434 AC620018 */  sw         $v0, 0x18($v1)
/* 123528 80105438 24833600 */  addiu      $v1, $a0, 0x3600
/* 12352C 8010543C 8C620018 */  lw         $v0, 0x18($v1)
/* 123530 80105440 24843678 */  addiu      $a0, $a0, 0x3678
/* 123534 80105444 00451024 */  and        $v0, $v0, $a1
/* 123538 80105448 AC620018 */  sw         $v0, 0x18($v1)
/* 12353C 8010544C 8C820018 */  lw         $v0, 0x18($a0)
/* 123540 80105450 00451024 */  and        $v0, $v0, $a1
/* 123544 80105454 03E00008 */  jr         $ra
/* 123548 80105458 AC820018 */   sw        $v0, 0x18($a0)

glabel func_menu_8010545C
/* 12354C 8010545C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 123550 80105460 AFB10014 */  sw         $s1, 0x14($sp)
/* 123554 80105464 00808821 */  addu       $s1, $a0, $zero
/* 123558 80105468 00003021 */  addu       $a2, $zero, $zero
/* 12355C 8010546C 26234178 */  addiu      $v1, $s1, 0x4178
/* 123560 80105470 AFBF0018 */  sw         $ra, 0x18($sp)
/* 123564 80105474 AFB00010 */  sw         $s0, 0x10($sp)
/* 123568 80105478 8C620018 */  lw         $v0, 0x18($v1)
/* 12356C 8010547C 3C044000 */  lui        $a0, (0x40000000 >> 16)
/* 123570 80105480 00441025 */  or         $v0, $v0, $a0
/* 123574 80105484 AC620018 */  sw         $v0, 0x18($v1)
/* 123578 80105488 26234864 */  addiu      $v1, $s1, 0x4864
/* 12357C 8010548C 8C620018 */  lw         $v0, 0x18($v1)
/* 123580 80105490 00803821 */  addu       $a3, $a0, $zero
/* 123584 80105494 00441025 */  or         $v0, $v0, $a0
/* 123588 80105498 AC620018 */  sw         $v0, 0x18($v1)
/* 12358C 8010549C 262336F0 */  addiu      $v1, $s1, 0x36F0
/* 123590 801054A0 8C620018 */  lw         $v0, 0x18($v1)
/* 123594 801054A4 00C02821 */  addu       $a1, $a2, $zero
/* 123598 801054A8 00441025 */  or         $v0, $v0, $a0
.Lmenu_801054AC:
/* 12359C 801054AC AC620018 */  sw         $v0, 0x18($v1)
/* 1235A0 801054B0 28C20003 */  slti       $v0, $a2, 0x3
/* 1235A4 801054B4 10400007 */  beqz       $v0, .Lmenu_801054D4
/* 1235A8 801054B8 00B11821 */   addu      $v1, $a1, $s1
/* 1235AC 801054BC 24635040 */  addiu      $v1, $v1, 0x5040
/* 1235B0 801054C0 24A50078 */  addiu      $a1, $a1, 0x78
/* 1235B4 801054C4 8C620018 */  lw         $v0, 0x18($v1)
/* 1235B8 801054C8 24C60001 */  addiu      $a2, $a2, 0x1
/* 1235BC 801054CC 0804152B */  j          .Lmenu_801054AC
/* 1235C0 801054D0 00471025 */   or        $v0, $v0, $a3
.Lmenu_801054D4:
/* 1235C4 801054D4 8E220000 */  lw         $v0, 0x0($s1)
/* 1235C8 801054D8 262536F0 */  addiu      $a1, $s1, 0x36F0
/* 1235CC 801054DC 84440090 */  lh         $a0, 0x90($v0)
/* 1235D0 801054E0 8C420094 */  lw         $v0, 0x94($v0)
/* 1235D4 801054E4 0040F809 */  jalr       $v0
/* 1235D8 801054E8 02242021 */   addu      $a0, $s1, $a0
/* 1235DC 801054EC 26244178 */  addiu      $a0, $s1, 0x4178
/* 1235E0 801054F0 0C044BE9 */  jal        func_menu_80112FA4
/* 1235E4 801054F4 24050004 */   addiu     $a1, $zero, 0x4
/* 1235E8 801054F8 263003D0 */  addiu      $s0, $s1, 0x3D0
/* 1235EC 801054FC 02002021 */  addu       $a0, $s0, $zero
/* 1235F0 80105500 24050013 */  addiu      $a1, $zero, 0x13
/* 1235F4 80105504 0C047D09 */  jal        func_menu_8011F424
/* 1235F8 80105508 24060001 */   addiu     $a2, $zero, 0x1
/* 1235FC 8010550C 02002021 */  addu       $a0, $s0, $zero
/* 123600 80105510 0C047D63 */  jal        func_menu_8011F58C
/* 123604 80105514 2405001E */   addiu     $a1, $zero, 0x1E
/* 123608 80105518 262418D8 */  addiu      $a0, $s1, 0x18D8
/* 12360C 8010551C 0C041070 */  jal        func_menu_801041C0
/* 123610 80105520 24050010 */   addiu     $a1, $zero, 0x10
/* 123614 80105524 8FBF0018 */  lw         $ra, 0x18($sp)
/* 123618 80105528 8FB10014 */  lw         $s1, 0x14($sp)
/* 12361C 8010552C 8FB00010 */  lw         $s0, 0x10($sp)
/* 123620 80105530 03E00008 */  jr         $ra
/* 123624 80105534 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80105538
/* 123628 80105538 00803821 */  addu       $a3, $a0, $zero
/* 12362C 8010553C 3C04BFFF */  lui        $a0, (0xBFFFFFFF >> 16)
/* 123630 80105540 3484FFFF */  ori        $a0, $a0, (0xBFFFFFFF & 0xFFFF)
/* 123634 80105544 00003021 */  addu       $a2, $zero, $zero
/* 123638 80105548 24E34178 */  addiu      $v1, $a3, 0x4178
/* 12363C 8010554C 8C620018 */  lw         $v0, 0x18($v1)
/* 123640 80105550 3C08BFFF */  lui        $t0, (0xBFFFFFFF >> 16)
/* 123644 80105554 00441024 */  and        $v0, $v0, $a0
/* 123648 80105558 AC620018 */  sw         $v0, 0x18($v1)
/* 12364C 8010555C 24E34864 */  addiu      $v1, $a3, 0x4864
/* 123650 80105560 8C620018 */  lw         $v0, 0x18($v1)
/* 123654 80105564 3508FFFF */  ori        $t0, $t0, (0xBFFFFFFF & 0xFFFF)
/* 123658 80105568 00441024 */  and        $v0, $v0, $a0
/* 12365C 8010556C AC620018 */  sw         $v0, 0x18($v1)
/* 123660 80105570 24E336F0 */  addiu      $v1, $a3, 0x36F0
/* 123664 80105574 8C620018 */  lw         $v0, 0x18($v1)
/* 123668 80105578 00C02821 */  addu       $a1, $a2, $zero
/* 12366C 8010557C 00441024 */  and        $v0, $v0, $a0
.Lmenu_80105580:
/* 123670 80105580 AC620018 */  sw         $v0, 0x18($v1)
/* 123674 80105584 28C20003 */  slti       $v0, $a2, 0x3
/* 123678 80105588 10400007 */  beqz       $v0, .Lmenu_801055A8
/* 12367C 8010558C 00A71821 */   addu      $v1, $a1, $a3
/* 123680 80105590 24635040 */  addiu      $v1, $v1, 0x5040
/* 123684 80105594 24A50078 */  addiu      $a1, $a1, 0x78
/* 123688 80105598 8C620018 */  lw         $v0, 0x18($v1)
/* 12368C 8010559C 24C60001 */  addiu      $a2, $a2, 0x1
/* 123690 801055A0 08041560 */  j          .Lmenu_80105580
/* 123694 801055A4 00481024 */   and       $v0, $v0, $t0
.Lmenu_801055A8:
/* 123698 801055A8 03E00008 */  jr         $ra
/* 12369C 801055AC 00000000 */   nop

glabel func_menu_801055B0
/* 1236A0 801055B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1236A4 801055B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1236A8 801055B8 00808021 */  addu       $s0, $a0, $zero
/* 1236AC 801055BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1236B0 801055C0 92030368 */  lbu        $v1, 0x368($s0)
/* 1236B4 801055C4 24020001 */  addiu      $v0, $zero, 0x1
/* 1236B8 801055C8 10620012 */  beq        $v1, $v0, .Lmenu_80105614
/* 1236BC 801055CC 28620002 */   slti      $v0, $v1, 0x2
/* 1236C0 801055D0 10400005 */  beqz       $v0, .Lmenu_801055E8
/* 1236C4 801055D4 24020002 */   addiu     $v0, $zero, 0x2
/* 1236C8 801055D8 10600007 */  beqz       $v1, .Lmenu_801055F8
/* 1236CC 801055DC 00000000 */   nop
/* 1236D0 801055E0 0804158B */  j          .Lmenu_8010562C
/* 1236D4 801055E4 00000000 */   nop
.Lmenu_801055E8:
/* 1236D8 801055E8 1062000E */  beq        $v1, $v0, .Lmenu_80105624
/* 1236DC 801055EC 00000000 */   nop
/* 1236E0 801055F0 0804158B */  j          .Lmenu_8010562C
/* 1236E4 801055F4 00000000 */   nop
.Lmenu_801055F8:
/* 1236E8 801055F8 8E020000 */  lw         $v0, 0x0($s0)
/* 1236EC 801055FC 84440148 */  lh         $a0, 0x148($v0)
/* 1236F0 80105600 8C42014C */  lw         $v0, 0x14C($v0)
/* 1236F4 80105604 0040F809 */  jalr       $v0
/* 1236F8 80105608 02042021 */   addu      $a0, $s0, $a0
/* 1236FC 8010560C 0804158B */  j          .Lmenu_8010562C
/* 123700 80105610 00000000 */   nop
.Lmenu_80105614:
/* 123704 80105614 0C041504 */  jal        func_menu_80105410
/* 123708 80105618 02002021 */   addu      $a0, $s0, $zero
/* 12370C 8010561C 0804158B */  j          .Lmenu_8010562C
/* 123710 80105620 00000000 */   nop
.Lmenu_80105624:
/* 123714 80105624 0C04154E */  jal        func_menu_80105538
/* 123718 80105628 02002021 */   addu      $a0, $s0, $zero
.Lmenu_8010562C:
/* 12371C 8010562C 92030369 */  lbu        $v1, 0x369($s0)
/* 123720 80105630 24020001 */  addiu      $v0, $zero, 0x1
/* 123724 80105634 10620012 */  beq        $v1, $v0, .Lmenu_80105680
/* 123728 80105638 28620002 */   slti      $v0, $v1, 0x2
/* 12372C 8010563C 10400005 */  beqz       $v0, .Lmenu_80105654
/* 123730 80105640 24020002 */   addiu     $v0, $zero, 0x2
/* 123734 80105644 10600007 */  beqz       $v1, .Lmenu_80105664
/* 123738 80105648 00000000 */   nop
/* 12373C 8010564C 080415A6 */  j          .Lmenu_80105698
/* 123740 80105650 00000000 */   nop
.Lmenu_80105654:
/* 123744 80105654 1062000E */  beq        $v1, $v0, .Lmenu_80105690
/* 123748 80105658 00000000 */   nop
/* 12374C 8010565C 080415A6 */  j          .Lmenu_80105698
/* 123750 80105660 00000000 */   nop
.Lmenu_80105664:
/* 123754 80105664 8E020000 */  lw         $v0, 0x0($s0)
/* 123758 80105668 84440140 */  lh         $a0, 0x140($v0)
/* 12375C 8010566C 8C420144 */  lw         $v0, 0x144($v0)
/* 123760 80105670 0040F809 */  jalr       $v0
/* 123764 80105674 02042021 */   addu      $a0, $s0, $a0
/* 123768 80105678 080415A6 */  j          .Lmenu_80105698
/* 12376C 8010567C 00000000 */   nop
.Lmenu_80105680:
/* 123770 80105680 0C0414CD */  jal        func_menu_80105334
/* 123774 80105684 02002021 */   addu      $a0, $s0, $zero
/* 123778 80105688 080415A6 */  j          .Lmenu_80105698
/* 12377C 8010568C 00000000 */   nop
.Lmenu_80105690:
/* 123780 80105690 0C041517 */  jal        func_menu_8010545C
/* 123784 80105694 02002021 */   addu      $a0, $s0, $zero
.Lmenu_80105698:
/* 123788 80105698 92020369 */  lbu        $v0, 0x369($s0)
/* 12378C 8010569C A2020368 */  sb         $v0, 0x368($s0)
/* 123790 801056A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 123794 801056A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 123798 801056A8 03E00008 */  jr         $ra
/* 12379C 801056AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_801056B0
/* 1237A0 801056B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1237A4 801056B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1237A8 801056B8 00808021 */  addu       $s0, $a0, $zero
/* 1237AC 801056BC AFBF0018 */  sw         $ra, 0x18($sp)
/* 1237B0 801056C0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1237B4 801056C4 92030369 */  lbu        $v1, 0x369($s0)
/* 1237B8 801056C8 92020368 */  lbu        $v0, 0x368($s0)
/* 1237BC 801056CC 1062000B */  beq        $v1, $v0, .Lmenu_801056FC
/* 1237C0 801056D0 00A08821 */   addu      $s1, $a1, $zero
/* 1237C4 801056D4 8E02035C */  lw         $v0, 0x35C($s0)
/* 1237C8 801056D8 8C420050 */  lw         $v0, 0x50($v0)
/* 1237CC 801056DC 04400006 */  bltz       $v0, .Lmenu_801056F8
/* 1237D0 801056E0 00000000 */   nop
/* 1237D4 801056E4 8E020000 */  lw         $v0, 0x0($s0)
/* 1237D8 801056E8 84440150 */  lh         $a0, 0x150($v0)
/* 1237DC 801056EC 8C420154 */  lw         $v0, 0x154($v0)
/* 1237E0 801056F0 0040F809 */  jalr       $v0
/* 1237E4 801056F4 02042021 */   addu      $a0, $s0, $a0
.Lmenu_801056F8:
/* 1237E8 801056F8 92020368 */  lbu        $v0, 0x368($s0)
.Lmenu_801056FC:
/* 1237EC 801056FC 14400013 */  bnez       $v0, .Lmenu_8010574C
/* 1237F0 80105700 02002021 */   addu      $a0, $s0, $zero
/* 1237F4 80105704 8E0300CC */  lw         $v1, 0xCC($s0)
/* 1237F8 80105708 8C620034 */  lw         $v0, 0x34($v1)
/* 1237FC 8010570C 28420002 */  slti       $v0, $v0, 0x2
/* 123800 80105710 10400004 */  beqz       $v0, .Lmenu_80105724
/* 123804 80105714 00002021 */   addu      $a0, $zero, $zero
/* 123808 80105718 8C62002C */  lw         $v0, 0x2C($v1)
/* 12380C 8010571C 10400002 */  beqz       $v0, .Lmenu_80105728
/* 123810 80105720 00000000 */   nop
.Lmenu_80105724:
/* 123814 80105724 24040001 */  addiu      $a0, $zero, 0x1
.Lmenu_80105728:
/* 123818 80105728 10800005 */  beqz       $a0, .Lmenu_80105740
/* 12381C 8010572C 26040D18 */   addiu     $a0, $s0, 0xD18
/* 123820 80105730 0C048CEC */  jal        func_menu_801233B0
/* 123824 80105734 24050005 */   addiu     $a1, $zero, 0x5
/* 123828 80105738 080415D3 */  j          .Lmenu_8010574C
/* 12382C 8010573C 02002021 */   addu      $a0, $s0, $zero
.Lmenu_80105740:
/* 123830 80105740 0C048D07 */  jal        func_menu_8012341C
/* 123834 80105744 24050005 */   addiu     $a1, $zero, 0x5
/* 123838 80105748 02002021 */  addu       $a0, $s0, $zero
.Lmenu_8010574C:
/* 12383C 8010574C 0C04056C */  jal        func_menu_801015B0
/* 123840 80105750 02202821 */   addu      $a1, $s1, $zero
/* 123844 80105754 8FBF0018 */  lw         $ra, 0x18($sp)
/* 123848 80105758 8FB10014 */  lw         $s1, 0x14($sp)
/* 12384C 8010575C 8FB00010 */  lw         $s0, 0x10($sp)
/* 123850 80105760 03E00008 */  jr         $ra
/* 123854 80105764 27BD0020 */   addiu     $sp, $sp, 0x20
