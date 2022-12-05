.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800FD650
/* 11B740 800FD650 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11B744 800FD654 AFB20018 */  sw         $s2, 0x18($sp)
/* 11B748 800FD658 00809021 */  addu       $s2, $a0, $zero
/* 11B74C 800FD65C AFBF0020 */  sw         $ra, 0x20($sp)
/* 11B750 800FD660 AFB3001C */  sw         $s3, 0x1C($sp)
/* 11B754 800FD664 AFB10014 */  sw         $s1, 0x14($sp)
/* 11B758 800FD668 0C0401D8 */  jal        func_menu_80100760
/* 11B75C 800FD66C AFB00010 */   sw        $s0, 0x10($sp)
/* 11B760 800FD670 3C02800D */  lui        $v0, %hi(D_menu_800CD040)
/* 11B764 800FD674 2442D040 */  addiu      $v0, $v0, %lo(D_menu_800CD040)
/* 11B768 800FD678 26440368 */  addiu      $a0, $s2, 0x368
/* 11B76C 800FD67C 0C047BA4 */  jal        func_menu_8011EE90
/* 11B770 800FD680 AE420000 */   sw        $v0, 0x0($s2)
/* 11B774 800FD684 0C047BA4 */  jal        func_menu_8011EE90
/* 11B778 800FD688 264403C4 */   addiu     $a0, $s2, 0x3C4
/* 11B77C 800FD68C 26510420 */  addiu      $s1, $s2, 0x420
/* 11B780 800FD690 24100003 */  addiu      $s0, $zero, 0x3
/* 11B784 800FD694 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_800FD698:
/* 11B788 800FD698 0C0415DC */  jal        func_menu_80105770
/* 11B78C 800FD69C 02202021 */   addu      $a0, $s1, $zero
/* 11B790 800FD6A0 2610FFFF */  addiu      $s0, $s0, -0x1
/* 11B794 800FD6A4 1613FFFC */  bne        $s0, $s3, .Lmenu_800FD698
/* 11B798 800FD6A8 26310170 */   addiu     $s1, $s1, 0x170
/* 11B79C 800FD6AC 265109E0 */  addiu      $s1, $s2, 0x9E0
/* 11B7A0 800FD6B0 24100003 */  addiu      $s0, $zero, 0x3
/* 11B7A4 800FD6B4 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_800FD6B8:
/* 11B7A8 800FD6B8 0C044D38 */  jal        func_menu_801134E0
/* 11B7AC 800FD6BC 02202021 */   addu      $a0, $s1, $zero
/* 11B7B0 800FD6C0 2610FFFF */  addiu      $s0, $s0, -0x1
/* 11B7B4 800FD6C4 1613FFFC */  bne        $s0, $s3, .Lmenu_800FD6B8
/* 11B7B8 800FD6C8 263109F4 */   addiu     $s1, $s1, 0x9F4
/* 11B7BC 800FD6CC 0C044424 */  jal        func_menu_80111090
/* 11B7C0 800FD6D0 264431B0 */   addiu     $a0, $s2, 0x31B0
/* 11B7C4 800FD6D4 0C047CA8 */  jal        func_menu_8011F2A0
/* 11B7C8 800FD6D8 26443688 */   addiu     $a0, $s2, 0x3688
/* 11B7CC 800FD6DC 0C040F38 */  jal        func_menu_80103CE0
/* 11B7D0 800FD6E0 26443700 */   addiu     $a0, $s2, 0x3700
/* 11B7D4 800FD6E4 0C040F38 */  jal        func_menu_80103CE0
/* 11B7D8 800FD6E8 264439F0 */   addiu     $a0, $s2, 0x39F0
/* 11B7DC 800FD6EC 0C040F38 */  jal        func_menu_80103CE0
/* 11B7E0 800FD6F0 26443CE0 */   addiu     $a0, $s2, 0x3CE0
/* 11B7E4 800FD6F4 0C040F38 */  jal        func_menu_80103CE0
/* 11B7E8 800FD6F8 26443FD0 */   addiu     $a0, $s2, 0x3FD0
/* 11B7EC 800FD6FC 0C040F38 */  jal        func_menu_80103CE0
/* 11B7F0 800FD700 264442C0 */   addiu     $a0, $s2, 0x42C0
/* 11B7F4 800FD704 0C040F38 */  jal        func_menu_80103CE0
/* 11B7F8 800FD708 264445B0 */   addiu     $a0, $s2, 0x45B0
/* 11B7FC 800FD70C 0C040F38 */  jal        func_menu_80103CE0
/* 11B800 800FD710 264448A0 */   addiu     $a0, $s2, 0x48A0
/* 11B804 800FD714 0C035C74 */  jal        func_menu_800D71D0
/* 11B808 800FD718 26444B90 */   addiu     $a0, $s2, 0x4B90
/* 11B80C 800FD71C 0C03FAAC */  jal        func_menu_800FEAB0
/* 11B810 800FD720 26444BE0 */   addiu     $a0, $s2, 0x4BE0
/* 11B814 800FD724 0C03F62E */  jal        func_menu_800FD8B8
/* 11B818 800FD728 02402021 */   addu      $a0, $s2, $zero
/* 11B81C 800FD72C 02401021 */  addu       $v0, $s2, $zero
/* 11B820 800FD730 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11B824 800FD734 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11B828 800FD738 8FB20018 */  lw         $s2, 0x18($sp)
/* 11B82C 800FD73C 8FB10014 */  lw         $s1, 0x14($sp)
/* 11B830 800FD740 8FB00010 */  lw         $s0, 0x10($sp)
/* 11B834 800FD744 03E00008 */  jr         $ra
/* 11B838 800FD748 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FD74C
/* 11B83C 800FD74C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11B840 800FD750 AFB10014 */  sw         $s1, 0x14($sp)
/* 11B844 800FD754 00808821 */  addu       $s1, $a0, $zero
/* 11B848 800FD758 AFB3001C */  sw         $s3, 0x1C($sp)
/* 11B84C 800FD75C 00A09821 */  addu       $s3, $a1, $zero
/* 11B850 800FD760 3C02800D */  lui        $v0, %hi(D_menu_800CD040)
/* 11B854 800FD764 2442D040 */  addiu      $v0, $v0, %lo(D_menu_800CD040)
/* 11B858 800FD768 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11B85C 800FD76C AFB20018 */  sw         $s2, 0x18($sp)
/* 11B860 800FD770 AFB00010 */  sw         $s0, 0x10($sp)
/* 11B864 800FD774 0C03F7AC */  jal        func_menu_800FDEB0
/* 11B868 800FD778 AE220000 */   sw        $v0, 0x0($s1)
/* 11B86C 800FD77C 26244BE0 */  addiu      $a0, $s1, 0x4BE0
/* 11B870 800FD780 0C03FABF */  jal        func_menu_800FEAFC
/* 11B874 800FD784 24050002 */   addiu     $a1, $zero, 0x2
/* 11B878 800FD788 26244B90 */  addiu      $a0, $s1, 0x4B90
/* 11B87C 800FD78C 0C035C7E */  jal        func_menu_800D71F8
/* 11B880 800FD790 24050002 */   addiu     $a1, $zero, 0x2
/* 11B884 800FD794 262448A0 */  addiu      $a0, $s1, 0x48A0
/* 11B888 800FD798 0C040F4B */  jal        func_menu_80103D2C
/* 11B88C 800FD79C 24050002 */   addiu     $a1, $zero, 0x2
/* 11B890 800FD7A0 262445B0 */  addiu      $a0, $s1, 0x45B0
/* 11B894 800FD7A4 0C040F4B */  jal        func_menu_80103D2C
/* 11B898 800FD7A8 24050002 */   addiu     $a1, $zero, 0x2
/* 11B89C 800FD7AC 262442C0 */  addiu      $a0, $s1, 0x42C0
/* 11B8A0 800FD7B0 0C040F4B */  jal        func_menu_80103D2C
/* 11B8A4 800FD7B4 24050002 */   addiu     $a1, $zero, 0x2
/* 11B8A8 800FD7B8 26243FD0 */  addiu      $a0, $s1, 0x3FD0
/* 11B8AC 800FD7BC 0C040F4B */  jal        func_menu_80103D2C
/* 11B8B0 800FD7C0 24050002 */   addiu     $a1, $zero, 0x2
/* 11B8B4 800FD7C4 26243CE0 */  addiu      $a0, $s1, 0x3CE0
/* 11B8B8 800FD7C8 0C040F4B */  jal        func_menu_80103D2C
/* 11B8BC 800FD7CC 24050002 */   addiu     $a1, $zero, 0x2
/* 11B8C0 800FD7D0 262439F0 */  addiu      $a0, $s1, 0x39F0
/* 11B8C4 800FD7D4 0C040F4B */  jal        func_menu_80103D2C
/* 11B8C8 800FD7D8 24050002 */   addiu     $a1, $zero, 0x2
/* 11B8CC 800FD7DC 26243700 */  addiu      $a0, $s1, 0x3700
/* 11B8D0 800FD7E0 0C040F4B */  jal        func_menu_80103D2C
/* 11B8D4 800FD7E4 24050002 */   addiu     $a1, $zero, 0x2
/* 11B8D8 800FD7E8 26243688 */  addiu      $a0, $s1, 0x3688
/* 11B8DC 800FD7EC 0C047CB9 */  jal        func_menu_8011F2E4
/* 11B8E0 800FD7F0 24050002 */   addiu     $a1, $zero, 0x2
/* 11B8E4 800FD7F4 263031B0 */  addiu      $s0, $s1, 0x31B0
/* 11B8E8 800FD7F8 02002021 */  addu       $a0, $s0, $zero
/* 11B8EC 800FD7FC 0C044435 */  jal        func_menu_801110D4
/* 11B8F0 800FD800 24050002 */   addiu     $a1, $zero, 0x2
/* 11B8F4 800FD804 262209E0 */  addiu      $v0, $s1, 0x9E0
/* 11B8F8 800FD808 5040000E */  beql       $v0, $zero, .Lmenu_800FD844
/* 11B8FC 800FD80C 26220420 */   addiu     $v0, $s1, 0x420
/* 11B900 800FD810 5050000C */  beql       $v0, $s0, .Lmenu_800FD844
/* 11B904 800FD814 26220420 */   addiu     $v0, $s1, 0x420
/* 11B908 800FD818 00409021 */  addu       $s2, $v0, $zero
/* 11B90C 800FD81C 2610F60C */  addiu      $s0, $s0, -0x9F4
.Lmenu_800FD820:
/* 11B910 800FD820 8E020054 */  lw         $v0, 0x54($s0)
/* 11B914 800FD824 24050002 */  addiu      $a1, $zero, 0x2
/* 11B918 800FD828 84440010 */  lh         $a0, 0x10($v0)
/* 11B91C 800FD82C 8C420014 */  lw         $v0, 0x14($v0)
/* 11B920 800FD830 0040F809 */  jalr       $v0
/* 11B924 800FD834 02042021 */   addu      $a0, $s0, $a0
/* 11B928 800FD838 1650FFF9 */  bne        $s2, $s0, .Lmenu_800FD820
/* 11B92C 800FD83C 2610F60C */   addiu     $s0, $s0, -0x9F4
/* 11B930 800FD840 26220420 */  addiu      $v0, $s1, 0x420
.Lmenu_800FD844:
/* 11B934 800FD844 1040000C */  beqz       $v0, .Lmenu_800FD878
/* 11B938 800FD848 263009E0 */   addiu     $s0, $s1, 0x9E0
/* 11B93C 800FD84C 1050000A */  beq        $v0, $s0, .Lmenu_800FD878
/* 11B940 800FD850 00409021 */   addu      $s2, $v0, $zero
/* 11B944 800FD854 2610FE90 */  addiu      $s0, $s0, -0x170
.Lmenu_800FD858:
/* 11B948 800FD858 8E020054 */  lw         $v0, 0x54($s0)
/* 11B94C 800FD85C 24050002 */  addiu      $a1, $zero, 0x2
/* 11B950 800FD860 84440010 */  lh         $a0, 0x10($v0)
/* 11B954 800FD864 8C420014 */  lw         $v0, 0x14($v0)
/* 11B958 800FD868 0040F809 */  jalr       $v0
/* 11B95C 800FD86C 02042021 */   addu      $a0, $s0, $a0
/* 11B960 800FD870 1650FFF9 */  bne        $s2, $s0, .Lmenu_800FD858
/* 11B964 800FD874 2610FE90 */   addiu     $s0, $s0, -0x170
.Lmenu_800FD878:
/* 11B968 800FD878 262403C4 */  addiu      $a0, $s1, 0x3C4
/* 11B96C 800FD87C 0C047BB3 */  jal        func_menu_8011EECC
/* 11B970 800FD880 24050002 */   addiu     $a1, $zero, 0x2
/* 11B974 800FD884 26240368 */  addiu      $a0, $s1, 0x368
/* 11B978 800FD888 0C047BB3 */  jal        func_menu_8011EECC
/* 11B97C 800FD88C 24050002 */   addiu     $a1, $zero, 0x2
/* 11B980 800FD890 02202021 */  addu       $a0, $s1, $zero
/* 11B984 800FD894 0C0401EF */  jal        func_menu_801007BC
/* 11B988 800FD898 02602821 */   addu      $a1, $s3, $zero
/* 11B98C 800FD89C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11B990 800FD8A0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11B994 800FD8A4 8FB20018 */  lw         $s2, 0x18($sp)
/* 11B998 800FD8A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 11B99C 800FD8AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 11B9A0 800FD8B0 03E00008 */  jr         $ra
/* 11B9A4 800FD8B4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FD8B8
/* 11B9A8 800FD8B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11B9AC 800FD8BC 24020001 */  addiu      $v0, $zero, 0x1
/* 11B9B0 800FD8C0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 11B9B4 800FD8C4 A4804D48 */  sh         $zero, 0x4D48($a0)
/* 11B9B8 800FD8C8 AC824D4C */  sw         $v0, 0x4D4C($a0)
/* 11B9BC 800FD8CC AC804D54 */  sw         $zero, 0x4D54($a0)
/* 11B9C0 800FD8D0 AC804D44 */  sw         $zero, 0x4D44($a0)
/* 11B9C4 800FD8D4 0C040207 */  jal        func_menu_8010081C
/* 11B9C8 800FD8D8 AC804D50 */   sw        $zero, 0x4D50($a0)
/* 11B9CC 800FD8DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 11B9D0 800FD8E0 03E00008 */  jr         $ra
/* 11B9D4 800FD8E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FD8E8
/* 11B9D8 800FD8E8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 11B9DC 800FD8EC AFB20030 */  sw         $s2, 0x30($sp)
/* 11B9E0 800FD8F0 00809021 */  addu       $s2, $a0, $zero
/* 11B9E4 800FD8F4 AFB00028 */  sw         $s0, 0x28($sp)
/* 11B9E8 800FD8F8 00A08021 */  addu       $s0, $a1, $zero
/* 11B9EC 800FD8FC AFB1002C */  sw         $s1, 0x2C($sp)
/* 11B9F0 800FD900 00C08821 */  addu       $s1, $a2, $zero
/* 11B9F4 800FD904 27A40010 */  addiu      $a0, $sp, 0x10
/* 11B9F8 800FD908 00002821 */  addu       $a1, $zero, $zero
/* 11B9FC 800FD90C AFBF0034 */  sw         $ra, 0x34($sp)
/* 11BA00 800FD910 0C000697 */  jal        func_80001A5C
/* 11BA04 800FD914 24060018 */   addiu     $a2, $zero, 0x18
/* 11BA08 800FD918 26444B90 */  addiu      $a0, $s2, 0x4B90
/* 11BA0C 800FD91C 8E220004 */  lw         $v0, 0x4($s1)
/* 11BA10 800FD920 27A50010 */  addiu      $a1, $sp, 0x10
/* 11BA14 800FD924 AFA20018 */  sw         $v0, 0x18($sp)
/* 11BA18 800FD928 8E230000 */  lw         $v1, 0x0($s1)
/* 11BA1C 800FD92C 26023DDC */  addiu      $v0, $s0, 0x3DDC
/* 11BA20 800FD930 AFA2001C */  sw         $v0, 0x1C($sp)
/* 11BA24 800FD934 AFA30014 */  sw         $v1, 0x14($sp)
/* 11BA28 800FD938 8E020000 */  lw         $v0, 0x0($s0)
/* 11BA2C 800FD93C 24060002 */  addiu      $a2, $zero, 0x2
/* 11BA30 800FD940 8C42001C */  lw         $v0, 0x1C($v0)
/* 11BA34 800FD944 26104540 */  addiu      $s0, $s0, 0x4540
/* 11BA38 800FD948 AFB00010 */  sw         $s0, 0x10($sp)
/* 11BA3C 800FD94C 0C035CA5 */  jal        func_menu_800D7294
/* 11BA40 800FD950 AFA20020 */   sw        $v0, 0x20($sp)
/* 11BA44 800FD954 8FBF0034 */  lw         $ra, 0x34($sp)
/* 11BA48 800FD958 8FB20030 */  lw         $s2, 0x30($sp)
/* 11BA4C 800FD95C 8FB1002C */  lw         $s1, 0x2C($sp)
/* 11BA50 800FD960 8FB00028 */  lw         $s0, 0x28($sp)
/* 11BA54 800FD964 03E00008 */  jr         $ra
/* 11BA58 800FD968 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800FD96C
/* 11BA5C 800FD96C 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* 11BA60 800FD970 AFB10094 */  sw         $s1, 0x94($sp)
/* 11BA64 800FD974 00808821 */  addu       $s1, $a0, $zero
/* 11BA68 800FD978 AFB3009C */  sw         $s3, 0x9C($sp)
/* 11BA6C 800FD97C 00A09821 */  addu       $s3, $a1, $zero
/* 11BA70 800FD980 30C5FFFF */  andi       $a1, $a2, 0xFFFF
/* 11BA74 800FD984 AFB00090 */  sw         $s0, 0x90($sp)
/* 11BA78 800FD988 00E08021 */  addu       $s0, $a3, $zero
/* 11BA7C 800FD98C AFBF00A0 */  sw         $ra, 0xA0($sp)
/* 11BA80 800FD990 0C046710 */  jal        func_menu_80119C40
/* 11BA84 800FD994 AFB20098 */   sw        $s2, 0x98($sp)
/* 11BA88 800FD998 02202021 */  addu       $a0, $s1, $zero
/* 11BA8C 800FD99C 3205FFFF */  andi       $a1, $s0, 0xFFFF
/* 11BA90 800FD9A0 0C0466EC */  jal        func_menu_80119BB0
/* 11BA94 800FD9A4 00408021 */   addu      $s0, $v0, $zero
/* 11BA98 800FD9A8 12000003 */  beqz       $s0, .Lmenu_800FD9B8
/* 11BA9C 800FD9AC 00409021 */   addu      $s2, $v0, $zero
/* 11BAA0 800FD9B0 16400003 */  bnez       $s2, .Lmenu_800FD9C0
/* 11BAA4 800FD9B4 27A30010 */   addiu     $v1, $sp, 0x10
.Lmenu_800FD9B8:
/* 11BAA8 800FD9B8 0803F694 */  j          .Lmenu_800FDA50
/* 11BAAC 800FD9BC 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800FD9C0:
/* 11BAB0 800FD9C0 02001021 */  addu       $v0, $s0, $zero
/* 11BAB4 800FD9C4 24440080 */  addiu      $a0, $v0, 0x80
.Lmenu_800FD9C8:
/* 11BAB8 800FD9C8 8C480000 */  lw         $t0, 0x0($v0)
/* 11BABC 800FD9CC 8C490004 */  lw         $t1, 0x4($v0)
/* 11BAC0 800FD9D0 8C4A0008 */  lw         $t2, 0x8($v0)
/* 11BAC4 800FD9D4 8C4B000C */  lw         $t3, 0xC($v0)
/* 11BAC8 800FD9D8 AC680000 */  sw         $t0, 0x0($v1)
/* 11BACC 800FD9DC AC690004 */  sw         $t1, 0x4($v1)
/* 11BAD0 800FD9E0 AC6A0008 */  sw         $t2, 0x8($v1)
/* 11BAD4 800FD9E4 AC6B000C */  sw         $t3, 0xC($v1)
/* 11BAD8 800FD9E8 24420010 */  addiu      $v0, $v0, 0x10
/* 11BADC 800FD9EC 1444FFF6 */  bne        $v0, $a0, .Lmenu_800FD9C8
/* 11BAE0 800FD9F0 24630010 */   addiu     $v1, $v1, 0x10
/* 11BAE4 800FD9F4 02202021 */  addu       $a0, $s1, $zero
/* 11BAE8 800FD9F8 0C0465E3 */  jal        func_menu_8011978C
/* 11BAEC 800FD9FC 27A50010 */   addiu     $a1, $sp, 0x10
/* 11BAF0 800FDA00 8E230354 */  lw         $v1, 0x354($s1)
/* 11BAF4 800FDA04 26224B90 */  addiu      $v0, $s1, 0x4B90
/* 11BAF8 800FDA08 AFA20088 */  sw         $v0, 0x88($sp)
/* 11BAFC 800FDA0C 8FA200B8 */  lw         $v0, 0xB8($sp)
/* 11BB00 800FDA10 AFA2008C */  sw         $v0, 0x8C($sp)
/* 11BB04 800FDA14 AFA30084 */  sw         $v1, 0x84($sp)
/* 11BB08 800FDA18 8E224D4C */  lw         $v0, 0x4D4C($s1)
/* 11BB0C 800FDA1C AFA2007C */  sw         $v0, 0x7C($sp)
/* 11BB10 800FDA20 8E230000 */  lw         $v1, 0x0($s1)
/* 11BB14 800FDA24 24420001 */  addiu      $v0, $v0, 0x1
/* 11BB18 800FDA28 AE224D4C */  sw         $v0, 0x4D4C($s1)
/* 11BB1C 800FDA2C 846400E0 */  lh         $a0, 0xE0($v1)
/* 11BB20 800FDA30 8C6200E4 */  lw         $v0, 0xE4($v1)
/* 11BB24 800FDA34 0040F809 */  jalr       $v0
/* 11BB28 800FDA38 02242021 */   addu      $a0, $s1, $a0
/* 11BB2C 800FDA3C 02602021 */  addu       $a0, $s3, $zero
/* 11BB30 800FDA40 27A50010 */  addiu      $a1, $sp, 0x10
/* 11BB34 800FDA44 02403021 */  addu       $a2, $s2, $zero
/* 11BB38 800FDA48 0C04160D */  jal        func_menu_80105834
/* 11BB3C 800FDA4C E7A00080 */   swc1      $f0, 0x80($sp)
.Lmenu_800FDA50:
/* 11BB40 800FDA50 8FBF00A0 */  lw         $ra, 0xA0($sp)
/* 11BB44 800FDA54 8FB3009C */  lw         $s3, 0x9C($sp)
/* 11BB48 800FDA58 8FB20098 */  lw         $s2, 0x98($sp)
/* 11BB4C 800FDA5C 8FB10094 */  lw         $s1, 0x94($sp)
/* 11BB50 800FDA60 8FB00090 */  lw         $s0, 0x90($sp)
/* 11BB54 800FDA64 03E00008 */  jr         $ra
/* 11BB58 800FDA68 27BD00A8 */   addiu     $sp, $sp, 0xA8

glabel func_menu_800FDA6C
/* 11BB5C 800FDA6C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 11BB60 800FDA70 AFB20038 */  sw         $s2, 0x38($sp)
/* 11BB64 800FDA74 00809021 */  addu       $s2, $a0, $zero
/* 11BB68 800FDA78 3C02800D */  lui        $v0, %hi(D_menu_800CD010)
/* 11BB6C 800FDA7C 2445D010 */  addiu      $a1, $v0, %lo(D_menu_800CD010)
/* 11BB70 800FDA80 AFBF003C */  sw         $ra, 0x3C($sp)
/* 11BB74 800FDA84 AFB10034 */  sw         $s1, 0x34($sp)
/* 11BB78 800FDA88 10A00008 */  beqz       $a1, .Lmenu_800FDAAC
/* 11BB7C 800FDA8C AFB00030 */   sw        $s0, 0x30($sp)
/* 11BB80 800FDA90 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 11BB84 800FDA94 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 11BB88 800FDA98 02002021 */  addu       $a0, $s0, $zero
/* 11BB8C 800FDA9C 0C000708 */  jal        func_80001C20
/* 11BB90 800FDAA0 24060100 */   addiu     $a2, $zero, 0x100
/* 11BB94 800FDAA4 0803F6AD */  j          .Lmenu_800FDAB4
/* 11BB98 800FDAA8 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800FDAAC:
/* 11BB9C 800FDAAC 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 11BBA0 800FDAB0 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800FDAB4:
/* 11BBA4 800FDAB4 02402021 */  addu       $a0, $s2, $zero
/* 11BBA8 800FDAB8 264531B0 */  addiu      $a1, $s2, 0x31B0
/* 11BBAC 800FDABC 00003021 */  addu       $a2, $zero, $zero
/* 11BBB0 800FDAC0 0C046AA0 */  jal        func_menu_8011AA80
/* 11BBB4 800FDAC4 240700DC */   addiu     $a3, $zero, 0xDC
/* 11BBB8 800FDAC8 3C02800D */  lui        $v0, %hi(D_menu_800CD020)
/* 11BBBC 800FDACC 2445D020 */  addiu      $a1, $v0, %lo(D_menu_800CD020)
/* 11BBC0 800FDAD0 10A00007 */  beqz       $a1, .Lmenu_800FDAF0
/* 11BBC4 800FDAD4 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 11BBC8 800FDAD8 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 11BBCC 800FDADC 02002021 */  addu       $a0, $s0, $zero
/* 11BBD0 800FDAE0 0C000708 */  jal        func_80001C20
/* 11BBD4 800FDAE4 24060100 */   addiu     $a2, $zero, 0x100
/* 11BBD8 800FDAE8 0803F6BE */  j          .Lmenu_800FDAF8
/* 11BBDC 800FDAEC A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800FDAF0:
/* 11BBE0 800FDAF0 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 11BBE4 800FDAF4 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800FDAF8:
/* 11BBE8 800FDAF8 27A40010 */  addiu      $a0, $sp, 0x10
/* 11BBEC 800FDAFC 00002821 */  addu       $a1, $zero, $zero
/* 11BBF0 800FDB00 0C000697 */  jal        func_80001A5C
/* 11BBF4 800FDB04 2406001C */   addiu     $a2, $zero, 0x1C
/* 11BBF8 800FDB08 26514BE0 */  addiu      $s1, $s2, 0x4BE0
/* 11BBFC 800FDB0C 8E4200B4 */  lw         $v0, 0xB4($s2)
/* 11BC00 800FDB10 3C01800D */  lui        $at, %hi(D_menu_800CD02C)
/* 11BC04 800FDB14 C420D02C */  lwc1       $f0, %lo(D_menu_800CD02C)($at)
/* 11BC08 800FDB18 3C01800D */  lui        $at, %hi(D_menu_800CD030)
/* 11BC0C 800FDB1C C422D030 */  lwc1       $f2, %lo(D_menu_800CD030)($at)
/* 11BC10 800FDB20 3C01800D */  lui        $at, %hi(D_menu_800CD034)
/* 11BC14 800FDB24 C424D034 */  lwc1       $f4, %lo(D_menu_800CD034)($at)
/* 11BC18 800FDB28 02202021 */  addu       $a0, $s1, $zero
/* 11BC1C 800FDB2C AFA20010 */  sw         $v0, 0x10($sp)
/* 11BC20 800FDB30 8E4200B8 */  lw         $v0, 0xB8($s2)
/* 11BC24 800FDB34 265031B0 */  addiu      $s0, $s2, 0x31B0
/* 11BC28 800FDB38 AFB00018 */  sw         $s0, 0x18($sp)
/* 11BC2C 800FDB3C AFA20014 */  sw         $v0, 0x14($sp)
/* 11BC30 800FDB40 8E420354 */  lw         $v0, 0x354($s2)
/* 11BC34 800FDB44 27A50010 */  addiu      $a1, $sp, 0x10
/* 11BC38 800FDB48 E7A00020 */  swc1       $f0, 0x20($sp)
/* 11BC3C 800FDB4C E7A20024 */  swc1       $f2, 0x24($sp)
/* 11BC40 800FDB50 E7A40028 */  swc1       $f4, 0x28($sp)
/* 11BC44 800FDB54 2442459C */  addiu      $v0, $v0, 0x459C
/* 11BC48 800FDB58 0C03FB3C */  jal        func_menu_800FECF0
/* 11BC4C 800FDB5C AFA2001C */   sw        $v0, 0x1C($sp)
/* 11BC50 800FDB60 02002021 */  addu       $a0, $s0, $zero
/* 11BC54 800FDB64 0C0441DB */  jal        func_menu_8011076C
/* 11BC58 800FDB68 02202821 */   addu      $a1, $s1, $zero
/* 11BC5C 800FDB6C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 11BC60 800FDB70 8FB20038 */  lw         $s2, 0x38($sp)
/* 11BC64 800FDB74 8FB10034 */  lw         $s1, 0x34($sp)
/* 11BC68 800FDB78 8FB00030 */  lw         $s0, 0x30($sp)
/* 11BC6C 800FDB7C 03E00008 */  jr         $ra
/* 11BC70 800FDB80 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800FDB84
/* 11BC74 800FDB84 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 11BC78 800FDB88 AFB40038 */  sw         $s4, 0x38($sp)
/* 11BC7C 800FDB8C 0080A021 */  addu       $s4, $a0, $zero
/* 11BC80 800FDB90 26850368 */  addiu      $a1, $s4, 0x368
/* 11BC84 800FDB94 24060052 */  addiu      $a2, $zero, 0x52
/* 11BC88 800FDB98 00C03821 */  addu       $a3, $a2, $zero
/* 11BC8C 800FDB9C AFBF003C */  sw         $ra, 0x3C($sp)
/* 11BC90 800FDBA0 AFB30034 */  sw         $s3, 0x34($sp)
/* 11BC94 800FDBA4 AFB20030 */  sw         $s2, 0x30($sp)
/* 11BC98 800FDBA8 AFB1002C */  sw         $s1, 0x2C($sp)
/* 11BC9C 800FDBAC 0C04675B */  jal        func_menu_80119D6C
/* 11BCA0 800FDBB0 AFB00028 */   sw        $s0, 0x28($sp)
/* 11BCA4 800FDBB4 02802021 */  addu       $a0, $s4, $zero
/* 11BCA8 800FDBB8 26853700 */  addiu      $a1, $s4, 0x3700
/* 11BCAC 800FDBBC 240600DE */  addiu      $a2, $zero, 0xDE
/* 11BCB0 800FDBC0 2407004B */  addiu      $a3, $zero, 0x4B
/* 11BCB4 800FDBC4 24020038 */  addiu      $v0, $zero, 0x38
/* 11BCB8 800FDBC8 0C040297 */  jal        func_menu_80100A5C
/* 11BCBC 800FDBCC AFA20010 */   sw        $v0, 0x10($sp)
/* 11BCC0 800FDBD0 02802021 */  addu       $a0, $s4, $zero
/* 11BCC4 800FDBD4 26900420 */  addiu      $s0, $s4, 0x420
/* 11BCC8 800FDBD8 02002821 */  addu       $a1, $s0, $zero
/* 11BCCC 800FDBDC 240600D9 */  addiu      $a2, $zero, 0xD9
/* 11BCD0 800FDBE0 24070044 */  addiu      $a3, $zero, 0x44
/* 11BCD4 800FDBE4 0C03F65B */  jal        func_menu_800FD96C
/* 11BCD8 800FDBE8 AFA00010 */   sw        $zero, 0x10($sp)
/* 11BCDC 800FDBEC 02802021 */  addu       $a0, $s4, $zero
/* 11BCE0 800FDBF0 26930590 */  addiu      $s3, $s4, 0x590
/* 11BCE4 800FDBF4 02602821 */  addu       $a1, $s3, $zero
/* 11BCE8 800FDBF8 240600DA */  addiu      $a2, $zero, 0xDA
/* 11BCEC 800FDBFC 24070044 */  addiu      $a3, $zero, 0x44
/* 11BCF0 800FDC00 24020001 */  addiu      $v0, $zero, 0x1
/* 11BCF4 800FDC04 0C03F65B */  jal        func_menu_800FD96C
/* 11BCF8 800FDC08 AFA20010 */   sw        $v0, 0x10($sp)
/* 11BCFC 800FDC0C 02802021 */  addu       $a0, $s4, $zero
/* 11BD00 800FDC10 26920700 */  addiu      $s2, $s4, 0x700
/* 11BD04 800FDC14 02402821 */  addu       $a1, $s2, $zero
/* 11BD08 800FDC18 240600D9 */  addiu      $a2, $zero, 0xD9
/* 11BD0C 800FDC1C 24070044 */  addiu      $a3, $zero, 0x44
/* 11BD10 800FDC20 24020002 */  addiu      $v0, $zero, 0x2
/* 11BD14 800FDC24 0C03F65B */  jal        func_menu_800FD96C
/* 11BD18 800FDC28 AFA20010 */   sw        $v0, 0x10($sp)
/* 11BD1C 800FDC2C 02802021 */  addu       $a0, $s4, $zero
/* 11BD20 800FDC30 26910870 */  addiu      $s1, $s4, 0x870
/* 11BD24 800FDC34 02202821 */  addu       $a1, $s1, $zero
/* 11BD28 800FDC38 240600D9 */  addiu      $a2, $zero, 0xD9
/* 11BD2C 800FDC3C 24070044 */  addiu      $a3, $zero, 0x44
/* 11BD30 800FDC40 24020003 */  addiu      $v0, $zero, 0x3
/* 11BD34 800FDC44 0C03F65B */  jal        func_menu_800FD96C
/* 11BD38 800FDC48 AFA20010 */   sw        $v0, 0x10($sp)
/* 11BD3C 800FDC4C 02802021 */  addu       $a0, $s4, $zero
/* 11BD40 800FDC50 268509E0 */  addiu      $a1, $s4, 0x9E0
/* 11BD44 800FDC54 02003021 */  addu       $a2, $s0, $zero
/* 11BD48 800FDC58 240700D4 */  addiu      $a3, $zero, 0xD4
/* 11BD4C 800FDC5C 241000D8 */  addiu      $s0, $zero, 0xD8
/* 11BD50 800FDC60 0C04699A */  jal        func_menu_8011A668
/* 11BD54 800FDC64 AFB00010 */   sw        $s0, 0x10($sp)
/* 11BD58 800FDC68 02802021 */  addu       $a0, $s4, $zero
/* 11BD5C 800FDC6C 268513D4 */  addiu      $a1, $s4, 0x13D4
/* 11BD60 800FDC70 02603021 */  addu       $a2, $s3, $zero
/* 11BD64 800FDC74 240700D5 */  addiu      $a3, $zero, 0xD5
/* 11BD68 800FDC78 0C04699A */  jal        func_menu_8011A668
/* 11BD6C 800FDC7C AFB00010 */   sw        $s0, 0x10($sp)
/* 11BD70 800FDC80 02802021 */  addu       $a0, $s4, $zero
/* 11BD74 800FDC84 26851DC8 */  addiu      $a1, $s4, 0x1DC8
/* 11BD78 800FDC88 02403021 */  addu       $a2, $s2, $zero
/* 11BD7C 800FDC8C 240700D6 */  addiu      $a3, $zero, 0xD6
/* 11BD80 800FDC90 0C04699A */  jal        func_menu_8011A668
/* 11BD84 800FDC94 AFB00010 */   sw        $s0, 0x10($sp)
/* 11BD88 800FDC98 02802021 */  addu       $a0, $s4, $zero
/* 11BD8C 800FDC9C 268527BC */  addiu      $a1, $s4, 0x27BC
/* 11BD90 800FDCA0 02203021 */  addu       $a2, $s1, $zero
/* 11BD94 800FDCA4 240700D7 */  addiu      $a3, $zero, 0xD7
/* 11BD98 800FDCA8 0C04699A */  jal        func_menu_8011A668
/* 11BD9C 800FDCAC AFB00010 */   sw        $s0, 0x10($sp)
/* 11BDA0 800FDCB0 0C03F69B */  jal        func_menu_800FDA6C
/* 11BDA4 800FDCB4 02802021 */   addu      $a0, $s4, $zero
/* 11BDA8 800FDCB8 02802021 */  addu       $a0, $s4, $zero
/* 11BDAC 800FDCBC 26903688 */  addiu      $s0, $s4, 0x3688
/* 11BDB0 800FDCC0 02002821 */  addu       $a1, $s0, $zero
/* 11BDB4 800FDCC4 24060043 */  addiu      $a2, $zero, 0x43
/* 11BDB8 800FDCC8 00C03821 */  addu       $a3, $a2, $zero
/* 11BDBC 800FDCCC 24020009 */  addiu      $v0, $zero, 0x9
/* 11BDC0 800FDCD0 0C04679E */  jal        func_menu_80119E78
/* 11BDC4 800FDCD4 AFA20010 */   sw        $v0, 0x10($sp)
/* 11BDC8 800FDCD8 02002021 */  addu       $a0, $s0, $zero
/* 11BDCC 800FDCDC 0C047D63 */  jal        func_menu_8011F58C
/* 11BDD0 800FDCE0 2405001E */   addiu     $a1, $zero, 0x1E
/* 11BDD4 800FDCE4 8E820354 */  lw         $v0, 0x354($s4)
/* 11BDD8 800FDCE8 8C424614 */  lw         $v0, 0x4614($v0)
/* 11BDDC 800FDCEC 30420001 */  andi       $v0, $v0, 0x1
/* 11BDE0 800FDCF0 10400007 */  beqz       $v0, .Lmenu_800FDD10
/* 11BDE4 800FDCF4 2402000A */   addiu     $v0, $zero, 0xA
/* 11BDE8 800FDCF8 AFA20010 */  sw         $v0, 0x10($sp)
/* 11BDEC 800FDCFC 02802021 */  addu       $a0, $s4, $zero
/* 11BDF0 800FDD00 26853CE0 */  addiu      $a1, $s4, 0x3CE0
/* 11BDF4 800FDD04 24060049 */  addiu      $a2, $zero, 0x49
/* 11BDF8 800FDD08 0803F74A */  j          .Lmenu_800FDD28
/* 11BDFC 800FDD0C 2407004D */   addiu     $a3, $zero, 0x4D
.Lmenu_800FDD10:
/* 11BE00 800FDD10 24020072 */  addiu      $v0, $zero, 0x72
/* 11BE04 800FDD14 AFA20010 */  sw         $v0, 0x10($sp)
/* 11BE08 800FDD18 02802021 */  addu       $a0, $s4, $zero
/* 11BE0C 800FDD1C 26853CE0 */  addiu      $a1, $s4, 0x3CE0
/* 11BE10 800FDD20 24060049 */  addiu      $a2, $zero, 0x49
/* 11BE14 800FDD24 2407004F */  addiu      $a3, $zero, 0x4F
.Lmenu_800FDD28:
/* 11BE18 800FDD28 0C040297 */  jal        func_menu_80100A5C
/* 11BE1C 800FDD2C 00000000 */   nop
/* 11BE20 800FDD30 02802021 */  addu       $a0, $s4, $zero
/* 11BE24 800FDD34 268539F0 */  addiu      $a1, $s4, 0x39F0
/* 11BE28 800FDD38 24060048 */  addiu      $a2, $zero, 0x48
/* 11BE2C 800FDD3C 2407004E */  addiu      $a3, $zero, 0x4E
/* 11BE30 800FDD40 2402001F */  addiu      $v0, $zero, 0x1F
/* 11BE34 800FDD44 0C040297 */  jal        func_menu_80100A5C
/* 11BE38 800FDD48 AFA20010 */   sw        $v0, 0x10($sp)
/* 11BE3C 800FDD4C 26843688 */  addiu      $a0, $s4, 0x3688
/* 11BE40 800FDD50 8E8836B8 */  lw         $t0, 0x36B8($s4)
/* 11BE44 800FDD54 8E8936BC */  lw         $t1, 0x36BC($s4)
/* 11BE48 800FDD58 8E8A36C0 */  lw         $t2, 0x36C0($s4)
/* 11BE4C 800FDD5C 8E8B36C4 */  lw         $t3, 0x36C4($s4)
/* 11BE50 800FDD60 AFA80018 */  sw         $t0, 0x18($sp)
/* 11BE54 800FDD64 AFA9001C */  sw         $t1, 0x1C($sp)
/* 11BE58 800FDD68 AFAA0020 */  sw         $t2, 0x20($sp)
/* 11BE5C 800FDD6C AFAB0024 */  sw         $t3, 0x24($sp)
/* 11BE60 800FDD70 8FA20020 */  lw         $v0, 0x20($sp)
/* 11BE64 800FDD74 8FA30018 */  lw         $v1, 0x18($sp)
/* 11BE68 800FDD78 00431023 */  subu       $v0, $v0, $v1
/* 11BE6C 800FDD7C 284200F9 */  slti       $v0, $v0, 0xF9
/* 11BE70 800FDD80 14400004 */  bnez       $v0, .Lmenu_800FDD94
/* 11BE74 800FDD84 27A50018 */   addiu     $a1, $sp, 0x18
/* 11BE78 800FDD88 240200E8 */  addiu      $v0, $zero, 0xE8
/* 11BE7C 800FDD8C 0C04936A */  jal        func_menu_80124DA8
/* 11BE80 800FDD90 AFA20018 */   sw        $v0, 0x18($sp)
.Lmenu_800FDD94:
/* 11BE84 800FDD94 8FBF003C */  lw         $ra, 0x3C($sp)
/* 11BE88 800FDD98 8FB40038 */  lw         $s4, 0x38($sp)
/* 11BE8C 800FDD9C 8FB30034 */  lw         $s3, 0x34($sp)
/* 11BE90 800FDDA0 8FB20030 */  lw         $s2, 0x30($sp)
/* 11BE94 800FDDA4 8FB1002C */  lw         $s1, 0x2C($sp)
/* 11BE98 800FDDA8 8FB00028 */  lw         $s0, 0x28($sp)
/* 11BE9C 800FDDAC 03E00008 */  jr         $ra
/* 11BEA0 800FDDB0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800FDDB4
/* 11BEA4 800FDDB4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11BEA8 800FDDB8 AFB00020 */  sw         $s0, 0x20($sp)
/* 11BEAC 800FDDBC 00808021 */  addu       $s0, $a0, $zero
/* 11BEB0 800FDDC0 AFB10024 */  sw         $s1, 0x24($sp)
/* 11BEB4 800FDDC4 00A08821 */  addu       $s1, $a1, $zero
/* 11BEB8 800FDDC8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 11BEBC 800FDDCC AFB20028 */  sw         $s2, 0x28($sp)
/* 11BEC0 800FDDD0 8E22459C */  lw         $v0, 0x459C($s1)
/* 11BEC4 800FDDD4 14400003 */  bnez       $v0, .Lmenu_800FDDE4
/* 11BEC8 800FDDD8 00C09021 */   addu      $s2, $a2, $zero
/* 11BECC 800FDDDC 0C04042B */  jal        func_menu_801010AC
/* 11BED0 800FDDE0 00003021 */   addu      $a2, $zero, $zero
.Lmenu_800FDDE4:
/* 11BED4 800FDDE4 02002021 */  addu       $a0, $s0, $zero
/* 11BED8 800FDDE8 02202821 */  addu       $a1, $s1, $zero
/* 11BEDC 800FDDEC 0C040214 */  jal        func_menu_80100850
/* 11BEE0 800FDDF0 02403021 */   addu      $a2, $s2, $zero
/* 11BEE4 800FDDF4 10400027 */  beqz       $v0, .Lmenu_800FDE94
/* 11BEE8 800FDDF8 02002021 */   addu      $a0, $s0, $zero
/* 11BEEC 800FDDFC 27A50010 */  addiu      $a1, $sp, 0x10
/* 11BEF0 800FDE00 27A60018 */  addiu      $a2, $sp, 0x18
/* 11BEF4 800FDE04 24020080 */  addiu      $v0, $zero, 0x80
/* 11BEF8 800FDE08 A3A20012 */  sb         $v0, 0x12($sp)
/* 11BEFC 800FDE0C A3A20011 */  sb         $v0, 0x11($sp)
/* 11BF00 800FDE10 A3A20010 */  sb         $v0, 0x10($sp)
/* 11BF04 800FDE14 240200FF */  addiu      $v0, $zero, 0xFF
/* 11BF08 800FDE18 A3A2001B */  sb         $v0, 0x1B($sp)
/* 11BF0C 800FDE1C A3A2001A */  sb         $v0, 0x1A($sp)
/* 11BF10 800FDE20 A3A20019 */  sb         $v0, 0x19($sp)
/* 11BF14 800FDE24 A3A20018 */  sb         $v0, 0x18($sp)
/* 11BF18 800FDE28 0C0402F1 */  jal        func_menu_80100BC4
/* 11BF1C 800FDE2C A3A20013 */   sb        $v0, 0x13($sp)
/* 11BF20 800FDE30 3C05800D */  lui        $a1, %hi(D_menu_800CD038)
/* 11BF24 800FDE34 24A5D038 */  addiu      $a1, $a1, %lo(D_menu_800CD038)
/* 11BF28 800FDE38 26074CF8 */  addiu      $a3, $s0, 0x4CF8
/* 11BF2C 800FDE3C 8E220000 */  lw         $v0, 0x0($s1)
/* 11BF30 800FDE40 8CE30008 */  lw         $v1, 0x8($a3)
/* 11BF34 800FDE44 8C46001C */  lw         $a2, 0x1C($v0)
/* 11BF38 800FDE48 84640030 */  lh         $a0, 0x30($v1)
/* 11BF3C 800FDE4C 8C620034 */  lw         $v0, 0x34($v1)
/* 11BF40 800FDE50 0040F809 */  jalr       $v0
/* 11BF44 800FDE54 00E42021 */   addu      $a0, $a3, $a0
/* 11BF48 800FDE58 0C03620E */  jal        func_menu_800D8838
/* 11BF4C 800FDE5C 26242CF8 */   addiu     $a0, $s1, 0x2CF8
/* 11BF50 800FDE60 02002021 */  addu       $a0, $s0, $zero
/* 11BF54 800FDE64 02202821 */  addu       $a1, $s1, $zero
/* 11BF58 800FDE68 0C03F63A */  jal        func_menu_800FD8E8
/* 11BF5C 800FDE6C 02403021 */   addu      $a2, $s2, $zero
/* 11BF60 800FDE70 0C03F893 */  jal        func_menu_800FE24C
/* 11BF64 800FDE74 02002021 */   addu      $a0, $s0, $zero
/* 11BF68 800FDE78 0C03F827 */  jal        func_menu_800FE09C
/* 11BF6C 800FDE7C 02002021 */   addu      $a0, $s0, $zero
/* 11BF70 800FDE80 26043700 */  addiu      $a0, $s0, 0x3700
/* 11BF74 800FDE84 0C048D3F */  jal        func_menu_801234FC
/* 11BF78 800FDE88 24050005 */   addiu     $a1, $zero, 0x5
/* 11BF7C 800FDE8C 0803F7A6 */  j          .Lmenu_800FDE98
/* 11BF80 800FDE90 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800FDE94:
/* 11BF84 800FDE94 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800FDE98:
/* 11BF88 800FDE98 8FBF002C */  lw         $ra, 0x2C($sp)
/* 11BF8C 800FDE9C 8FB20028 */  lw         $s2, 0x28($sp)
/* 11BF90 800FDEA0 8FB10024 */  lw         $s1, 0x24($sp)
/* 11BF94 800FDEA4 8FB00020 */  lw         $s0, 0x20($sp)
/* 11BF98 800FDEA8 03E00008 */  jr         $ra
/* 11BF9C 800FDEAC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FDEB0
/* 11BFA0 800FDEB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11BFA4 800FDEB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 11BFA8 800FDEB8 00808021 */  addu       $s0, $a0, $zero
/* 11BFAC 800FDEBC AFBF0018 */  sw         $ra, 0x18($sp)
/* 11BFB0 800FDEC0 AFB10014 */  sw         $s1, 0x14($sp)
/* 11BFB4 800FDEC4 8E020004 */  lw         $v0, 0x4($s0)
/* 11BFB8 800FDEC8 8E110354 */  lw         $s1, 0x354($s0)
/* 11BFBC 800FDECC 10400007 */  beqz       $v0, .Lmenu_800FDEEC
/* 11BFC0 800FDED0 24020001 */   addiu     $v0, $zero, 0x1
/* 11BFC4 800FDED4 0C035CCC */  jal        func_menu_800D7330
/* 11BFC8 800FDED8 26044B90 */   addiu     $a0, $s0, 0x4B90
/* 11BFCC 800FDEDC 0C036201 */  jal        func_menu_800D8804
/* 11BFD0 800FDEE0 26242CF8 */   addiu     $a0, $s1, 0x2CF8
/* 11BFD4 800FDEE4 0C040232 */  jal        func_menu_801008C8
/* 11BFD8 800FDEE8 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800FDEEC:
/* 11BFDC 800FDEEC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11BFE0 800FDEF0 8FB10014 */  lw         $s1, 0x14($sp)
/* 11BFE4 800FDEF4 8FB00010 */  lw         $s0, 0x10($sp)
/* 11BFE8 800FDEF8 03E00008 */  jr         $ra
/* 11BFEC 800FDEFC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FDF00
/* 11BFF0 800FDF00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11BFF4 800FDF04 AFB00018 */  sw         $s0, 0x18($sp)
/* 11BFF8 800FDF08 00808021 */  addu       $s0, $a0, $zero
/* 11BFFC 800FDF0C AFBF001C */  sw         $ra, 0x1C($sp)
/* 11C000 800FDF10 8E040354 */  lw         $a0, 0x354($s0)
/* 11C004 800FDF14 8C824614 */  lw         $v0, 0x4614($a0)
/* 11C008 800FDF18 30420001 */  andi       $v0, $v0, 0x1
/* 11C00C 800FDF1C 14400014 */  bnez       $v0, .Lmenu_800FDF70
/* 11C010 800FDF20 00001021 */   addu      $v0, $zero, $zero
/* 11C014 800FDF24 24842A5C */  addiu      $a0, $a0, 0x2A5C
/* 11C018 800FDF28 0C03BBD1 */  jal        func_menu_800EEF44
/* 11C01C 800FDF2C 27A50010 */   addiu     $a1, $sp, 0x10
/* 11C020 800FDF30 93A30010 */  lbu        $v1, 0x10($sp)
/* 11C024 800FDF34 92024D3C */  lbu        $v0, 0x4D3C($s0)
/* 11C028 800FDF38 1462000D */  bne        $v1, $v0, .Lmenu_800FDF70
/* 11C02C 800FDF3C 24020001 */   addiu     $v0, $zero, 0x1
/* 11C030 800FDF40 93A30011 */  lbu        $v1, 0x11($sp)
/* 11C034 800FDF44 92024D3D */  lbu        $v0, 0x4D3D($s0)
/* 11C038 800FDF48 14620009 */  bne        $v1, $v0, .Lmenu_800FDF70
/* 11C03C 800FDF4C 24020001 */   addiu     $v0, $zero, 0x1
/* 11C040 800FDF50 93A30012 */  lbu        $v1, 0x12($sp)
/* 11C044 800FDF54 92024D3E */  lbu        $v0, 0x4D3E($s0)
/* 11C048 800FDF58 54620005 */  bnel       $v1, $v0, .Lmenu_800FDF70
/* 11C04C 800FDF5C 24020001 */   addiu     $v0, $zero, 0x1
/* 11C050 800FDF60 93A20013 */  lbu        $v0, 0x13($sp)
/* 11C054 800FDF64 92034D3F */  lbu        $v1, 0x4D3F($s0)
/* 11C058 800FDF68 00431026 */  xor        $v0, $v0, $v1
/* 11C05C 800FDF6C 0002102B */  sltu       $v0, $zero, $v0
.Lmenu_800FDF70:
/* 11C060 800FDF70 8FBF001C */  lw         $ra, 0x1C($sp)
/* 11C064 800FDF74 8FB00018 */  lw         $s0, 0x18($sp)
/* 11C068 800FDF78 03E00008 */  jr         $ra
/* 11C06C 800FDF7C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FDF80
/* 11C070 800FDF80 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 11C074 800FDF84 AFB1002C */  sw         $s1, 0x2C($sp)
/* 11C078 800FDF88 00808821 */  addu       $s1, $a0, $zero
/* 11C07C 800FDF8C AFB00028 */  sw         $s0, 0x28($sp)
/* 11C080 800FDF90 27B00018 */  addiu      $s0, $sp, 0x18
/* 11C084 800FDF94 AFBF0030 */  sw         $ra, 0x30($sp)
/* 11C088 800FDF98 0C0016DC */  jal        func_80005B70
/* 11C08C 800FDF9C 02002021 */   addu      $a0, $s0, $zero
/* 11C090 800FDFA0 02002821 */  addu       $a1, $s0, $zero
/* 11C094 800FDFA4 8E2400D0 */  lw         $a0, 0xD0($s1)
/* 11C098 800FDFA8 0C003053 */  jal        func_8000C14C
/* 11C09C 800FDFAC 2406008B */   addiu     $a2, $zero, 0x8B
/* 11C0A0 800FDFB0 96224D48 */  lhu        $v0, 0x4D48($s1)
/* 11C0A4 800FDFB4 10400006 */  beqz       $v0, .Lmenu_800FDFD0
/* 11C0A8 800FDFB8 00403021 */   addu      $a2, $v0, $zero
/* 11C0AC 800FDFBC 8E2400D0 */  lw         $a0, 0xD0($s1)
/* 11C0B0 800FDFC0 0C003053 */  jal        func_8000C14C
/* 11C0B4 800FDFC4 02002821 */   addu      $a1, $s0, $zero
/* 11C0B8 800FDFC8 0803F807 */  j          .Lmenu_800FE01C
/* 11C0BC 800FDFCC A6204D48 */   sh        $zero, 0x4D48($s1)
.Lmenu_800FDFD0:
/* 11C0C0 800FDFD0 3C088003 */  lui        $t0, %hi(D_8002FAB0)
/* 11C0C4 800FDFD4 3C028003 */  lui        $v0, %hi(D_8002F2B0)
/* 11C0C8 800FDFD8 2442F2B0 */  addiu      $v0, $v0, %lo(D_8002F2B0)
/* 11C0CC 800FDFDC 3C058012 */  lui        $a1, %hi(D_menu_80126F68)
/* 11C0D0 800FDFE0 8D07FAB0 */  lw         $a3, %lo(D_8002FAB0)($t0)
/* 11C0D4 800FDFE4 8E2400D0 */  lw         $a0, 0xD0($s1)
/* 11C0D8 800FDFE8 24E70001 */  addiu      $a3, $a3, 0x1
/* 11C0DC 800FDFEC 30E703FF */  andi       $a3, $a3, 0x3FF
/* 11C0E0 800FDFF0 00071840 */  sll        $v1, $a3, 1
/* 11C0E4 800FDFF4 00621821 */  addu       $v1, $v1, $v0
/* 11C0E8 800FDFF8 94620000 */  lhu        $v0, 0x0($v1)
/* 11C0EC 800FDFFC 24A56F68 */  addiu      $a1, $a1, %lo(D_menu_80126F68)
/* 11C0F0 800FE000 AD07FAB0 */  sw         $a3, %lo(D_8002FAB0)($t0)
/* 11C0F4 800FE004 30420007 */  andi       $v0, $v0, 0x7
/* 11C0F8 800FE008 00021040 */  sll        $v0, $v0, 1
/* 11C0FC 800FE00C 00451021 */  addu       $v0, $v0, $a1
/* 11C100 800FE010 94460000 */  lhu        $a2, 0x0($v0)
/* 11C104 800FE014 0C003053 */  jal        func_8000C14C
/* 11C108 800FE018 02002821 */   addu      $a1, $s0, $zero
.Lmenu_800FE01C:
/* 11C10C 800FE01C 27A40018 */  addiu      $a0, $sp, 0x18
/* 11C110 800FE020 0C001867 */  jal        func_8000619C
/* 11C114 800FE024 27A50010 */   addiu     $a1, $sp, 0x10
/* 11C118 800FE028 26304CF8 */  addiu      $s0, $s1, 0x4CF8
/* 11C11C 800FE02C 02002021 */  addu       $a0, $s0, $zero
/* 11C120 800FE030 0C016427 */  jal        func_8005909C
/* 11C124 800FE034 27A50010 */   addiu     $a1, $sp, 0x10
/* 11C128 800FE038 14400003 */  bnez       $v0, .Lmenu_800FE048
/* 11C12C 800FE03C 00000000 */   nop
/* 11C130 800FE040 0803F81E */  j          .Lmenu_800FE078
/* 11C134 800FE044 2410FFFF */   addiu     $s0, $zero, -0x1
.Lmenu_800FE048:
/* 11C138 800FE048 8E03002C */  lw         $v1, 0x2C($s0)
/* 11C13C 800FE04C 00431823 */  subu       $v1, $v0, $v1
/* 11C140 800FE050 00031040 */  sll        $v0, $v1, 1
/* 11C144 800FE054 00431021 */  addu       $v0, $v0, $v1
/* 11C148 800FE058 00021900 */  sll        $v1, $v0, 4
/* 11C14C 800FE05C 00431021 */  addu       $v0, $v0, $v1
/* 11C150 800FE060 00021A00 */  sll        $v1, $v0, 8
/* 11C154 800FE064 00431021 */  addu       $v0, $v0, $v1
/* 11C158 800FE068 00021C00 */  sll        $v1, $v0, 16
/* 11C15C 800FE06C 00431021 */  addu       $v0, $v0, $v1
/* 11C160 800FE070 00021023 */  negu       $v0, $v0
/* 11C164 800FE074 000280C3 */  sra        $s0, $v0, 3
.Lmenu_800FE078:
/* 11C168 800FE078 27A40018 */  addiu      $a0, $sp, 0x18
/* 11C16C 800FE07C 0C0016E2 */  jal        func_80005B88
/* 11C170 800FE080 24050002 */   addiu     $a1, $zero, 0x2
/* 11C174 800FE084 02001021 */  addu       $v0, $s0, $zero
/* 11C178 800FE088 8FBF0030 */  lw         $ra, 0x30($sp)
/* 11C17C 800FE08C 8FB1002C */  lw         $s1, 0x2C($sp)
/* 11C180 800FE090 8FB00028 */  lw         $s0, 0x28($sp)
/* 11C184 800FE094 03E00008 */  jr         $ra
/* 11C188 800FE098 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800FE09C
/* 11C18C 800FE09C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11C190 800FE0A0 AFB10014 */  sw         $s1, 0x14($sp)
/* 11C194 800FE0A4 00808821 */  addu       $s1, $a0, $zero
/* 11C198 800FE0A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 11C19C 800FE0AC 26304BFC */  addiu      $s0, $s1, 0x4BFC
/* 11C1A0 800FE0B0 AFB20018 */  sw         $s2, 0x18($sp)
/* 11C1A4 800FE0B4 3C120002 */  lui        $s2, (0x20000 >> 16)
/* 11C1A8 800FE0B8 AFBF001C */  sw         $ra, 0x1C($sp)
.Lmenu_800FE0BC:
/* 11C1AC 800FE0BC 0C03F7E0 */  jal        func_menu_800FDF80
/* 11C1B0 800FE0C0 02202021 */   addu      $a0, $s1, $zero
/* 11C1B4 800FE0C4 8E03005C */  lw         $v1, 0x5C($s0)
/* 11C1B8 800FE0C8 00721824 */  and        $v1, $v1, $s2
/* 11C1BC 800FE0CC 10600004 */  beqz       $v1, .Lmenu_800FE0E0
/* 11C1C0 800FE0D0 00000000 */   nop
/* 11C1C4 800FE0D4 960300D8 */  lhu        $v1, 0xD8($s0)
/* 11C1C8 800FE0D8 0803F839 */  j          .Lmenu_800FE0E4
/* 11C1CC 800FE0DC 00000000 */   nop
.Lmenu_800FE0E0:
/* 11C1D0 800FE0E0 960300BC */  lhu        $v1, 0xBC($s0)
.Lmenu_800FE0E4:
/* 11C1D4 800FE0E4 1043FFF5 */  beq        $v0, $v1, .Lmenu_800FE0BC
/* 11C1D8 800FE0E8 02002021 */   addu      $a0, $s0, $zero
/* 11C1DC 800FE0EC 0C01971D */  jal        func_80065C74
/* 11C1E0 800FE0F0 00402821 */   addu      $a1, $v0, $zero
/* 11C1E4 800FE0F4 3C02FFFB */  lui        $v0, (0xFFFBFFFF >> 16)
/* 11C1E8 800FE0F8 3442FFFF */  ori        $v0, $v0, (0xFFFBFFFF & 0xFFFF)
/* 11C1EC 800FE0FC 8E03005C */  lw         $v1, 0x5C($s0)
/* 11C1F0 800FE100 3C040001 */  lui        $a0, (0x10000 >> 16)
/* 11C1F4 800FE104 00641825 */  or         $v1, $v1, $a0
/* 11C1F8 800FE108 00621824 */  and        $v1, $v1, $v0
/* 11C1FC 800FE10C AE03005C */  sw         $v1, 0x5C($s0)
/* 11C200 800FE110 8FBF001C */  lw         $ra, 0x1C($sp)
/* 11C204 800FE114 8FB20018 */  lw         $s2, 0x18($sp)
/* 11C208 800FE118 8FB10014 */  lw         $s1, 0x14($sp)
/* 11C20C 800FE11C 8FB00010 */  lw         $s0, 0x10($sp)
/* 11C210 800FE120 03E00008 */  jr         $ra
/* 11C214 800FE124 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FE128
/* 11C218 800FE128 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 11C21C 800FE12C AFB1003C */  sw         $s1, 0x3C($sp)
/* 11C220 800FE130 00808821 */  addu       $s1, $a0, $zero
/* 11C224 800FE134 AFB00038 */  sw         $s0, 0x38($sp)
/* 11C228 800FE138 27B00028 */  addiu      $s0, $sp, 0x28
/* 11C22C 800FE13C 02002021 */  addu       $a0, $s0, $zero
/* 11C230 800FE140 AFB20040 */  sw         $s2, 0x40($sp)
/* 11C234 800FE144 AFBF0044 */  sw         $ra, 0x44($sp)
/* 11C238 800FE148 0C0016DC */  jal        func_80005B70
/* 11C23C 800FE14C 26324BFC */   addiu     $s2, $s1, 0x4BFC
/* 11C240 800FE150 3C088003 */  lui        $t0, %hi(D_8002FAB0)
/* 11C244 800FE154 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* 11C248 800FE158 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* 11C24C 800FE15C 8D07FAB0 */  lw         $a3, %lo(D_8002FAB0)($t0)
/* 11C250 800FE160 8E2400D0 */  lw         $a0, 0xD0($s1)
/* 11C254 800FE164 24E70001 */  addiu      $a3, $a3, 0x1
/* 11C258 800FE168 30E703FF */  andi       $a3, $a3, 0x3FF
/* 11C25C 800FE16C 00071040 */  sll        $v0, $a3, 1
/* 11C260 800FE170 00431021 */  addu       $v0, $v0, $v1
/* 11C264 800FE174 3C038012 */  lui        $v1, %hi(D_menu_80126F78)
/* 11C268 800FE178 94420000 */  lhu        $v0, 0x0($v0)
/* 11C26C 800FE17C 24636F78 */  addiu      $v1, $v1, %lo(D_menu_80126F78)
/* 11C270 800FE180 AD07FAB0 */  sw         $a3, %lo(D_8002FAB0)($t0)
/* 11C274 800FE184 30450001 */  andi       $a1, $v0, 0x1
/* 11C278 800FE188 00051040 */  sll        $v0, $a1, 1
/* 11C27C 800FE18C 00431021 */  addu       $v0, $v0, $v1
/* 11C280 800FE190 94460000 */  lhu        $a2, 0x0($v0)
/* 11C284 800FE194 0C003053 */  jal        func_8000C14C
/* 11C288 800FE198 02002821 */   addu      $a1, $s0, $zero
/* 11C28C 800FE19C 02002021 */  addu       $a0, $s0, $zero
/* 11C290 800FE1A0 0C001867 */  jal        func_8000619C
/* 11C294 800FE1A4 27A50020 */   addiu     $a1, $sp, 0x20
/* 11C298 800FE1A8 26314CF8 */  addiu      $s1, $s1, 0x4CF8
/* 11C29C 800FE1AC 02202021 */  addu       $a0, $s1, $zero
/* 11C2A0 800FE1B0 0C016427 */  jal        func_8005909C
/* 11C2A4 800FE1B4 27A50020 */   addiu     $a1, $sp, 0x20
/* 11C2A8 800FE1B8 1040000D */  beqz       $v0, .Lmenu_800FE1F0
/* 11C2AC 800FE1BC 2405FFFF */   addiu     $a1, $zero, -0x1
/* 11C2B0 800FE1C0 8E23002C */  lw         $v1, 0x2C($s1)
/* 11C2B4 800FE1C4 00431823 */  subu       $v1, $v0, $v1
/* 11C2B8 800FE1C8 00031040 */  sll        $v0, $v1, 1
/* 11C2BC 800FE1CC 00431021 */  addu       $v0, $v0, $v1
/* 11C2C0 800FE1D0 00021900 */  sll        $v1, $v0, 4
/* 11C2C4 800FE1D4 00431021 */  addu       $v0, $v0, $v1
/* 11C2C8 800FE1D8 00021A00 */  sll        $v1, $v0, 8
/* 11C2CC 800FE1DC 00431021 */  addu       $v0, $v0, $v1
/* 11C2D0 800FE1E0 00021C00 */  sll        $v1, $v0, 16
/* 11C2D4 800FE1E4 00431021 */  addu       $v0, $v0, $v1
/* 11C2D8 800FE1E8 00021023 */  negu       $v0, $v0
/* 11C2DC 800FE1EC 000228C3 */  sra        $a1, $v0, 3
.Lmenu_800FE1F0:
/* 11C2E0 800FE1F0 02402021 */  addu       $a0, $s2, $zero
/* 11C2E4 800FE1F4 240600C8 */  addiu      $a2, $zero, 0xC8
/* 11C2E8 800FE1F8 00003821 */  addu       $a3, $zero, $zero
/* 11C2EC 800FE1FC AFA00010 */  sw         $zero, 0x10($sp)
/* 11C2F0 800FE200 AFA00014 */  sw         $zero, 0x14($sp)
/* 11C2F4 800FE204 0C019761 */  jal        func_80065D84
/* 11C2F8 800FE208 AFA00018 */   sw        $zero, 0x18($sp)
/* 11C2FC 800FE20C 3C02FFFB */  lui        $v0, (0xFFFBFFFF >> 16)
/* 11C300 800FE210 3442FFFF */  ori        $v0, $v0, (0xFFFBFFFF & 0xFFFF)
/* 11C304 800FE214 27A40028 */  addiu      $a0, $sp, 0x28
/* 11C308 800FE218 24050002 */  addiu      $a1, $zero, 0x2
/* 11C30C 800FE21C 8E43005C */  lw         $v1, 0x5C($s2)
/* 11C310 800FE220 3C060001 */  lui        $a2, (0x10000 >> 16)
/* 11C314 800FE224 00661825 */  or         $v1, $v1, $a2
/* 11C318 800FE228 00621824 */  and        $v1, $v1, $v0
/* 11C31C 800FE22C 0C0016E2 */  jal        func_80005B88
/* 11C320 800FE230 AE43005C */   sw        $v1, 0x5C($s2)
/* 11C324 800FE234 8FBF0044 */  lw         $ra, 0x44($sp)
/* 11C328 800FE238 8FB20040 */  lw         $s2, 0x40($sp)
/* 11C32C 800FE23C 8FB1003C */  lw         $s1, 0x3C($sp)
/* 11C330 800FE240 8FB00038 */  lw         $s0, 0x38($sp)
/* 11C334 800FE244 03E00008 */  jr         $ra
/* 11C338 800FE248 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800FE24C
/* 11C33C 800FE24C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11C340 800FE250 AFB10014 */  sw         $s1, 0x14($sp)
/* 11C344 800FE254 00808821 */  addu       $s1, $a0, $zero
/* 11C348 800FE258 AFB00010 */  sw         $s0, 0x10($sp)
/* 11C34C 800FE25C 26304D3C */  addiu      $s0, $s1, 0x4D3C
/* 11C350 800FE260 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11C354 800FE264 8E240354 */  lw         $a0, 0x354($s1)
/* 11C358 800FE268 02002821 */  addu       $a1, $s0, $zero
/* 11C35C 800FE26C 0C03BBD1 */  jal        func_menu_800EEF44
/* 11C360 800FE270 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 11C364 800FE274 92254D3C */  lbu        $a1, 0x4D3C($s1)
/* 11C368 800FE278 0C0418A7 */  jal        func_menu_8010629C
/* 11C36C 800FE27C 26240420 */   addiu     $a0, $s1, 0x420
/* 11C370 800FE280 92254D3D */  lbu        $a1, 0x4D3D($s1)
/* 11C374 800FE284 0C0418A7 */  jal        func_menu_8010629C
/* 11C378 800FE288 26240590 */   addiu     $a0, $s1, 0x590
/* 11C37C 800FE28C 92254D3E */  lbu        $a1, 0x4D3E($s1)
/* 11C380 800FE290 0C0418A7 */  jal        func_menu_8010629C
/* 11C384 800FE294 26240700 */   addiu     $a0, $s1, 0x700
/* 11C388 800FE298 92254D3F */  lbu        $a1, 0x4D3F($s1)
/* 11C38C 800FE29C 0C0418A7 */  jal        func_menu_8010629C
/* 11C390 800FE2A0 26240870 */   addiu     $a0, $s1, 0x870
/* 11C394 800FE2A4 26244BE0 */  addiu      $a0, $s1, 0x4BE0
/* 11C398 800FE2A8 0C03FBD2 */  jal        func_menu_800FEF48
/* 11C39C 800FE2AC 02002821 */   addu      $a1, $s0, $zero
/* 11C3A0 800FE2B0 8E220354 */  lw         $v0, 0x354($s1)
/* 11C3A4 800FE2B4 8C424614 */  lw         $v0, 0x4614($v0)
/* 11C3A8 800FE2B8 30420001 */  andi       $v0, $v0, 0x1
/* 11C3AC 800FE2BC 50400007 */  beql       $v0, $zero, .Lmenu_800FE2DC
/* 11C3B0 800FE2C0 AE204D44 */   sw        $zero, 0x4D44($s1)
/* 11C3B4 800FE2C4 8E224D3C */  lw         $v0, 0x4D3C($s1)
/* 11C3B8 800FE2C8 54400004 */  bnel       $v0, $zero, .Lmenu_800FE2DC
/* 11C3BC 800FE2CC AE204D44 */   sw        $zero, 0x4D44($s1)
/* 11C3C0 800FE2D0 24020001 */  addiu      $v0, $zero, 0x1
/* 11C3C4 800FE2D4 AE224D54 */  sw         $v0, 0x4D54($s1)
/* 11C3C8 800FE2D8 AE204D44 */  sw         $zero, 0x4D44($s1)
.Lmenu_800FE2DC:
/* 11C3CC 800FE2DC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11C3D0 800FE2E0 8FB10014 */  lw         $s1, 0x14($sp)
/* 11C3D4 800FE2E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 11C3D8 800FE2E8 03E00008 */  jr         $ra
/* 11C3DC 800FE2EC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FE2F0
/* 11C3E0 800FE2F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11C3E4 800FE2F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 11C3E8 800FE2F8 00808021 */  addu       $s0, $a0, $zero
/* 11C3EC 800FE2FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 11C3F0 800FE300 8E040354 */  lw         $a0, 0x354($s0)
/* 11C3F4 800FE304 26054D3C */  addiu      $a1, $s0, 0x4D3C
/* 11C3F8 800FE308 0C03BC6F */  jal        func_menu_800EF1BC
/* 11C3FC 800FE30C 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 11C400 800FE310 8E050354 */  lw         $a1, 0x354($s0)
/* 11C404 800FE314 8CA24614 */  lw         $v0, 0x4614($a1)
/* 11C408 800FE318 14400006 */  bnez       $v0, .Lmenu_800FE334
/* 11C40C 800FE31C 00000000 */   nop
/* 11C410 800FE320 8CA42CA4 */  lw         $a0, 0x2CA4($a1)
/* 11C414 800FE324 0C03BCFF */  jal        func_menu_800EF3FC
/* 11C418 800FE328 24A52A5C */   addiu     $a1, $a1, 0x2A5C
/* 11C41C 800FE32C 24020001 */  addiu      $v0, $zero, 0x1
/* 11C420 800FE330 AE024D50 */  sw         $v0, 0x4D50($s0)
.Lmenu_800FE334:
/* 11C424 800FE334 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11C428 800FE338 8FB00010 */  lw         $s0, 0x10($sp)
/* 11C42C 800FE33C 03E00008 */  jr         $ra
/* 11C430 800FE340 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FE344
/* 11C434 800FE344 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11C438 800FE348 AFB00010 */  sw         $s0, 0x10($sp)
/* 11C43C 800FE34C 00808021 */  addu       $s0, $a0, $zero
/* 11C440 800FE350 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11C444 800FE354 8E070354 */  lw         $a3, 0x354($s0)
/* 11C448 800FE358 8CE52CA4 */  lw         $a1, 0x2CA4($a3)
/* 11C44C 800FE35C 24020001 */  addiu      $v0, $zero, 0x1
/* 11C450 800FE360 8CA60008 */  lw         $a2, 0x8($a1)
/* 11C454 800FE364 8CA3000C */  lw         $v1, 0xC($a1)
/* 11C458 800FE368 10C20006 */  beq        $a2, $v0, .Lmenu_800FE384
/* 11C45C 800FE36C 00002021 */   addu      $a0, $zero, $zero
/* 11C460 800FE370 24020002 */  addiu      $v0, $zero, 0x2
/* 11C464 800FE374 10C20005 */  beq        $a2, $v0, .Lmenu_800FE38C
/* 11C468 800FE378 00031080 */   sll       $v0, $v1, 2
/* 11C46C 800FE37C 0803F8EB */  j          .Lmenu_800FE3AC
/* 11C470 800FE380 00000000 */   nop
.Lmenu_800FE384:
/* 11C474 800FE384 0803F8EB */  j          .Lmenu_800FE3AC
/* 11C478 800FE388 24E402A4 */   addiu     $a0, $a3, 0x2A4
.Lmenu_800FE38C:
/* 11C47C 800FE38C 00431021 */  addu       $v0, $v0, $v1
/* 11C480 800FE390 000210C0 */  sll        $v0, $v0, 3
/* 11C484 800FE394 00431023 */  subu       $v0, $v0, $v1
/* 11C488 800FE398 000210C0 */  sll        $v0, $v0, 3
/* 11C48C 800FE39C 00431021 */  addu       $v0, $v0, $v1
/* 11C490 800FE3A0 00021080 */  sll        $v0, $v0, 2
/* 11C494 800FE3A4 00E21021 */  addu       $v0, $a3, $v0
/* 11C498 800FE3A8 24440DE8 */  addiu      $a0, $v0, 0xDE8
.Lmenu_800FE3AC:
/* 11C49C 800FE3AC 0C03BB36 */  jal        func_menu_800EECD8
/* 11C4A0 800FE3B0 00000000 */   nop
/* 11C4A4 800FE3B4 8E020354 */  lw         $v0, 0x354($s0)
/* 11C4A8 800FE3B8 AC402CA4 */  sw         $zero, 0x2CA4($v0)
/* 11C4AC 800FE3BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11C4B0 800FE3C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11C4B4 800FE3C4 03E00008 */  jr         $ra
/* 11C4B8 800FE3C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FE3CC
/* 11C4BC 800FE3CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11C4C0 800FE3D0 AFB10014 */  sw         $s1, 0x14($sp)
/* 11C4C4 800FE3D4 00008821 */  addu       $s1, $zero, $zero
/* 11C4C8 800FE3D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 11C4CC 800FE3DC 24904BFC */  addiu      $s0, $a0, 0x4BFC
/* 11C4D0 800FE3E0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11C4D4 800FE3E4 0C0199BD */  jal        func_800666F4
/* 11C4D8 800FE3E8 02002021 */   addu      $a0, $s0, $zero
/* 11C4DC 800FE3EC 54400007 */  bnel       $v0, $zero, .Lmenu_800FE40C
/* 11C4E0 800FE3F0 24110001 */   addiu     $s1, $zero, 0x1
/* 11C4E4 800FE3F4 8E02005C */  lw         $v0, 0x5C($s0)
/* 11C4E8 800FE3F8 3C030001 */  lui        $v1, (0x10000 >> 16)
/* 11C4EC 800FE3FC 00431024 */  and        $v0, $v0, $v1
/* 11C4F0 800FE400 14400003 */  bnez       $v0, .Lmenu_800FE410
/* 11C4F4 800FE404 02201021 */   addu      $v0, $s1, $zero
/* 11C4F8 800FE408 24110001 */  addiu      $s1, $zero, 0x1
.Lmenu_800FE40C:
/* 11C4FC 800FE40C 02201021 */  addu       $v0, $s1, $zero
.Lmenu_800FE410:
/* 11C500 800FE410 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11C504 800FE414 8FB10014 */  lw         $s1, 0x14($sp)
/* 11C508 800FE418 8FB00010 */  lw         $s0, 0x10($sp)
/* 11C50C 800FE41C 03E00008 */  jr         $ra
/* 11C510 800FE420 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FE424
/* 11C514 800FE424 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11C518 800FE428 AFB00010 */  sw         $s0, 0x10($sp)
/* 11C51C 800FE42C 00808021 */  addu       $s0, $a0, $zero
/* 11C520 800FE430 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11C524 800FE434 96030360 */  lhu        $v1, 0x360($s0)
/* 11C528 800FE438 24020003 */  addiu      $v0, $zero, 0x3
/* 11C52C 800FE43C 10620005 */  beq        $v1, $v0, .Lmenu_800FE454
/* 11C530 800FE440 24020010 */   addiu     $v0, $zero, 0x10
/* 11C534 800FE444 1062001A */  beq        $v1, $v0, .Lmenu_800FE4B0
/* 11C538 800FE448 00000000 */   nop
/* 11C53C 800FE44C 0803F933 */  j          .Lmenu_800FE4CC
/* 11C540 800FE450 00000000 */   nop
.Lmenu_800FE454:
/* 11C544 800FE454 8E040354 */  lw         $a0, 0x354($s0)
/* 11C548 800FE458 0C0401B4 */  jal        func_menu_801006D0
/* 11C54C 800FE45C 24840004 */   addiu     $a0, $a0, 0x4
/* 11C550 800FE460 8E024D50 */  lw         $v0, 0x4D50($s0)
/* 11C554 800FE464 1040000C */  beqz       $v0, .Lmenu_800FE498
/* 11C558 800FE468 24020002 */   addiu     $v0, $zero, 0x2
/* 11C55C 800FE46C 8E050354 */  lw         $a1, 0x354($s0)
/* 11C560 800FE470 8CA42CA4 */  lw         $a0, 0x2CA4($a1)
/* 11C564 800FE474 8C830008 */  lw         $v1, 0x8($a0)
/* 11C568 800FE478 14620007 */  bne        $v1, $v0, .Lmenu_800FE498
/* 11C56C 800FE47C 00000000 */   nop
/* 11C570 800FE480 8C82000C */  lw         $v0, 0xC($a0)
/* 11C574 800FE484 ACA24620 */  sw         $v0, 0x4620($a1)
/* 11C578 800FE488 8E040354 */  lw         $a0, 0x354($s0)
/* 11C57C 800FE48C 24050032 */  addiu      $a1, $zero, 0x32
/* 11C580 800FE490 0C0401A6 */  jal        func_menu_80100698
/* 11C584 800FE494 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800FE498:
/* 11C588 800FE498 8E020354 */  lw         $v0, 0x354($s0)
/* 11C58C 800FE49C 8C434614 */  lw         $v1, 0x4614($v0)
/* 11C590 800FE4A0 2404FFFE */  addiu      $a0, $zero, -0x2
/* 11C594 800FE4A4 00641824 */  and        $v1, $v1, $a0
/* 11C598 800FE4A8 0803F933 */  j          .Lmenu_800FE4CC
/* 11C59C 800FE4AC AC434614 */   sw        $v1, 0x4614($v0)
.Lmenu_800FE4B0:
/* 11C5A0 800FE4B0 8E040354 */  lw         $a0, 0x354($s0)
/* 11C5A4 800FE4B4 0C0401B4 */  jal        func_menu_801006D0
/* 11C5A8 800FE4B8 24840004 */   addiu     $a0, $a0, 0x4
/* 11C5AC 800FE4BC 8E040354 */  lw         $a0, 0x354($s0)
/* 11C5B0 800FE4C0 24050010 */  addiu      $a1, $zero, 0x10
/* 11C5B4 800FE4C4 0C0401A6 */  jal        func_menu_80100698
/* 11C5B8 800FE4C8 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800FE4CC:
/* 11C5BC 800FE4CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11C5C0 800FE4D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11C5C4 800FE4D4 03E00008 */  jr         $ra
/* 11C5C8 800FE4D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FE4DC
/* 11C5CC 800FE4DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11C5D0 800FE4E0 00803021 */  addu       $a2, $a0, $zero
/* 11C5D4 800FE4E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 11C5D8 800FE4E8 8CC20364 */  lw         $v0, 0x364($a2)
/* 11C5DC 800FE4EC 10400012 */  beqz       $v0, .Lmenu_800FE538
/* 11C5E0 800FE4F0 24020001 */   addiu     $v0, $zero, 0x1
/* 11C5E4 800FE4F4 0803F958 */  j          .Lmenu_800FE560
/* 11C5E8 800FE4F8 00000000 */   nop
.Lmenu_800FE4FC:
/* 11C5EC 800FE4FC 00A32821 */  addu       $a1, $a1, $v1
/* 11C5F0 800FE500 00052940 */  sll        $a1, $a1, 5
/* 11C5F4 800FE504 00A32823 */  subu       $a1, $a1, $v1
/* 11C5F8 800FE508 00052880 */  sll        $a1, $a1, 2
/* 11C5FC 800FE50C 00A32821 */  addu       $a1, $a1, $v1
/* 11C600 800FE510 00052880 */  sll        $a1, $a1, 2
/* 11C604 800FE514 24A509E0 */  addiu      $a1, $a1, 0x9E0
/* 11C608 800FE518 8CC20000 */  lw         $v0, 0x0($a2)
/* 11C60C 800FE51C 00C52821 */  addu       $a1, $a2, $a1
/* 11C610 800FE520 84440090 */  lh         $a0, 0x90($v0)
/* 11C614 800FE524 8C420094 */  lw         $v0, 0x94($v0)
/* 11C618 800FE528 0040F809 */  jalr       $v0
/* 11C61C 800FE52C 00C42021 */   addu      $a0, $a2, $a0
/* 11C620 800FE530 0803F958 */  j          .Lmenu_800FE560
/* 11C624 800FE534 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800FE538:
/* 11C628 800FE538 00001821 */  addu       $v1, $zero, $zero
/* 11C62C 800FE53C 24040420 */  addiu      $a0, $zero, 0x420
.Lmenu_800FE540:
/* 11C630 800FE540 00C41021 */  addu       $v0, $a2, $a0
/* 11C634 800FE544 50A2FFED */  beql       $a1, $v0, .Lmenu_800FE4FC
/* 11C638 800FE548 00032880 */   sll       $a1, $v1, 2
/* 11C63C 800FE54C 24630001 */  addiu      $v1, $v1, 0x1
/* 11C640 800FE550 28620004 */  slti       $v0, $v1, 0x4
/* 11C644 800FE554 1440FFFA */  bnez       $v0, .Lmenu_800FE540
/* 11C648 800FE558 24840170 */   addiu     $a0, $a0, 0x170
/* 11C64C 800FE55C 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800FE560:
/* 11C650 800FE560 8FBF0010 */  lw         $ra, 0x10($sp)
/* 11C654 800FE564 03E00008 */  jr         $ra
/* 11C658 800FE568 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FE56C
/* 11C65C 800FE56C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11C660 800FE570 AFB00010 */  sw         $s0, 0x10($sp)
/* 11C664 800FE574 00808021 */  addu       $s0, $a0, $zero
/* 11C668 800FE578 24020001 */  addiu      $v0, $zero, 0x1
/* 11C66C 800FE57C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11C670 800FE580 AE024D44 */  sw         $v0, 0x4D44($s0)
/* 11C674 800FE584 260209E0 */  addiu      $v0, $s0, 0x9E0
/* 11C678 800FE588 54A2000C */  bnel       $a1, $v0, .Lmenu_800FE5BC
/* 11C67C 800FE58C 260213D4 */   addiu     $v0, $s0, 0x13D4
/* 11C680 800FE590 26030420 */  addiu      $v1, $s0, 0x420
/* 11C684 800FE594 8C62006C */  lw         $v0, 0x6C($v1)
/* 11C688 800FE598 00021080 */  sll        $v0, $v0, 2
/* 11C68C 800FE59C 00621821 */  addu       $v1, $v1, $v0
/* 11C690 800FE5A0 8C6200D0 */  lw         $v0, 0xD0($v1)
/* 11C694 800FE5A4 26044BE0 */  addiu      $a0, $s0, 0x4BE0
/* 11C698 800FE5A8 A2024D3C */  sb         $v0, 0x4D3C($s0)
/* 11C69C 800FE5AC 0C03FB7A */  jal        func_menu_800FEDE8
/* 11C6A0 800FE5B0 304500FF */   andi      $a1, $v0, 0xFF
/* 11C6A4 800FE5B4 0803F989 */  j          .Lmenu_800FE624
/* 11C6A8 800FE5B8 2402008B */   addiu     $v0, $zero, 0x8B
.Lmenu_800FE5BC:
/* 11C6AC 800FE5BC 54A2000D */  bnel       $a1, $v0, .Lmenu_800FE5F4
/* 11C6B0 800FE5C0 26021DC8 */   addiu     $v0, $s0, 0x1DC8
/* 11C6B4 800FE5C4 26030590 */  addiu      $v1, $s0, 0x590
/* 11C6B8 800FE5C8 8C62006C */  lw         $v0, 0x6C($v1)
/* 11C6BC 800FE5CC 26044BE0 */  addiu      $a0, $s0, 0x4BE0
/* 11C6C0 800FE5D0 00021080 */  sll        $v0, $v0, 2
/* 11C6C4 800FE5D4 00621821 */  addu       $v1, $v1, $v0
/* 11C6C8 800FE5D8 8C6200D0 */  lw         $v0, 0xD0($v1)
/* 11C6CC 800FE5DC 00003021 */  addu       $a2, $zero, $zero
/* 11C6D0 800FE5E0 A2024D3D */  sb         $v0, 0x4D3D($s0)
/* 11C6D4 800FE5E4 0C03FB8E */  jal        func_menu_800FEE38
/* 11C6D8 800FE5E8 304500FF */   andi      $a1, $v0, 0xFF
/* 11C6DC 800FE5EC 0803F989 */  j          .Lmenu_800FE624
/* 11C6E0 800FE5F0 2402008B */   addiu     $v0, $zero, 0x8B
.Lmenu_800FE5F4:
/* 11C6E4 800FE5F4 14A2000E */  bne        $a1, $v0, .Lmenu_800FE630
/* 11C6E8 800FE5F8 260227BC */   addiu     $v0, $s0, 0x27BC
/* 11C6EC 800FE5FC 26030700 */  addiu      $v1, $s0, 0x700
/* 11C6F0 800FE600 8C62006C */  lw         $v0, 0x6C($v1)
/* 11C6F4 800FE604 00021080 */  sll        $v0, $v0, 2
/* 11C6F8 800FE608 00621821 */  addu       $v1, $v1, $v0
/* 11C6FC 800FE60C 8C6200D0 */  lw         $v0, 0xD0($v1)
/* 11C700 800FE610 26044BE0 */  addiu      $a0, $s0, 0x4BE0
/* 11C704 800FE614 A2024D3E */  sb         $v0, 0x4D3E($s0)
/* 11C708 800FE618 0C03FBAA */  jal        func_menu_800FEEA8
/* 11C70C 800FE61C 304500FF */   andi      $a1, $v0, 0xFF
/* 11C710 800FE620 2402008C */  addiu      $v0, $zero, 0x8C
.Lmenu_800FE624:
/* 11C714 800FE624 A6024D48 */  sh         $v0, 0x4D48($s0)
/* 11C718 800FE628 0803F9A7 */  j          .Lmenu_800FE69C
/* 11C71C 800FE62C AE004D54 */   sw        $zero, 0x4D54($s0)
.Lmenu_800FE630:
/* 11C720 800FE630 54A2001A */  bnel       $a1, $v0, .Lmenu_800FE69C
/* 11C724 800FE634 AE004D44 */   sw        $zero, 0x4D44($s0)
/* 11C728 800FE638 26030870 */  addiu      $v1, $s0, 0x870
/* 11C72C 800FE63C 8C62006C */  lw         $v0, 0x6C($v1)
/* 11C730 800FE640 00021080 */  sll        $v0, $v0, 2
/* 11C734 800FE644 00621821 */  addu       $v1, $v1, $v0
/* 11C738 800FE648 8C6200D0 */  lw         $v0, 0xD0($v1)
/* 11C73C 800FE64C 26044BE0 */  addiu      $a0, $s0, 0x4BE0
/* 11C740 800FE650 A2024D3F */  sb         $v0, 0x4D3F($s0)
/* 11C744 800FE654 0C03FBBE */  jal        func_menu_800FEEF8
/* 11C748 800FE658 304500FF */   andi      $a1, $v0, 0xFF
/* 11C74C 800FE65C 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* 11C750 800FE660 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* 11C754 800FE664 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* 11C758 800FE668 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* 11C75C 800FE66C 24840001 */  addiu      $a0, $a0, 0x1
/* 11C760 800FE670 308403FF */  andi       $a0, $a0, 0x3FF
/* 11C764 800FE674 00041040 */  sll        $v0, $a0, 1
/* 11C768 800FE678 00431021 */  addu       $v0, $v0, $v1
/* 11C76C 800FE67C 94420000 */  lhu        $v0, 0x0($v0)
/* 11C770 800FE680 2403008D */  addiu      $v1, $zero, 0x8D
/* 11C774 800FE684 30420001 */  andi       $v0, $v0, 0x1
/* 11C778 800FE688 10400002 */  beqz       $v0, .Lmenu_800FE694
/* 11C77C 800FE68C ACA4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a1)
/* 11C780 800FE690 240300E0 */  addiu      $v1, $zero, 0xE0
.Lmenu_800FE694:
/* 11C784 800FE694 A6034D48 */  sh         $v1, 0x4D48($s0)
/* 11C788 800FE698 AE004D54 */  sw         $zero, 0x4D54($s0)
.Lmenu_800FE69C:
/* 11C78C 800FE69C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11C790 800FE6A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11C794 800FE6A4 03E00008 */  jr         $ra
/* 11C798 800FE6A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FE6AC
/* 11C79C 800FE6AC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 11C7A0 800FE6B0 AFB20020 */  sw         $s2, 0x20($sp)
/* 11C7A4 800FE6B4 00809021 */  addu       $s2, $a0, $zero
/* 11C7A8 800FE6B8 AFB60030 */  sw         $s6, 0x30($sp)
/* 11C7AC 800FE6BC 00A0B021 */  addu       $s6, $a1, $zero
/* 11C7B0 800FE6C0 26423700 */  addiu      $v0, $s2, 0x3700
/* 11C7B4 800FE6C4 AFBF0038 */  sw         $ra, 0x38($sp)
/* 11C7B8 800FE6C8 AFB70034 */  sw         $s7, 0x34($sp)
/* 11C7BC 800FE6CC AFB5002C */  sw         $s5, 0x2C($sp)
/* 11C7C0 800FE6D0 AFB40028 */  sw         $s4, 0x28($sp)
/* 11C7C4 800FE6D4 AFB30024 */  sw         $s3, 0x24($sp)
/* 11C7C8 800FE6D8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 11C7CC 800FE6DC 16C20012 */  bne        $s6, $v0, .Lmenu_800FE728
/* 11C7D0 800FE6E0 AFB00018 */   sw        $s0, 0x18($sp)
/* 11C7D4 800FE6E4 8E424D54 */  lw         $v0, 0x4D54($s2)
/* 11C7D8 800FE6E8 10400004 */  beqz       $v0, .Lmenu_800FE6FC
/* 11C7DC 800FE6EC 264545B0 */   addiu     $a1, $s2, 0x45B0
/* 11C7E0 800FE6F0 8E420000 */  lw         $v0, 0x0($s2)
/* 11C7E4 800FE6F4 0803FA03 */  j          .Lmenu_800FE80C
/* 11C7E8 800FE6F8 00000000 */   nop
.Lmenu_800FE6FC:
/* 11C7EC 800FE6FC 02402021 */  addu       $a0, $s2, $zero
/* 11C7F0 800FE700 265145B0 */  addiu      $s1, $s2, 0x45B0
/* 11C7F4 800FE704 02202821 */  addu       $a1, $s1, $zero
/* 11C7F8 800FE708 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11C7FC 800FE70C 2407004F */  addiu      $a3, $zero, 0x4F
/* 11C800 800FE710 24020020 */  addiu      $v0, $zero, 0x20
/* 11C804 800FE714 0C040297 */  jal        func_menu_80100A5C
/* 11C808 800FE718 AFA20010 */   sw        $v0, 0x10($sp)
/* 11C80C 800FE71C 02402021 */  addu       $a0, $s2, $zero
/* 11C810 800FE720 0803F9DA */  j          .Lmenu_800FE768
/* 11C814 800FE724 265048A0 */   addiu     $s0, $s2, 0x48A0
.Lmenu_800FE728:
/* 11C818 800FE728 264239F0 */  addiu      $v0, $s2, 0x39F0
/* 11C81C 800FE72C 16C2003D */  bne        $s6, $v0, .Lmenu_800FE824
/* 11C820 800FE730 26423CE0 */   addiu     $v0, $s2, 0x3CE0
/* 11C824 800FE734 0C03F7C0 */  jal        func_menu_800FDF00
/* 11C828 800FE738 02402021 */   addu      $a0, $s2, $zero
/* 11C82C 800FE73C 10400017 */  beqz       $v0, .Lmenu_800FE79C
/* 11C830 800FE740 02402021 */   addu      $a0, $s2, $zero
/* 11C834 800FE744 26513FD0 */  addiu      $s1, $s2, 0x3FD0
/* 11C838 800FE748 02202821 */  addu       $a1, $s1, $zero
/* 11C83C 800FE74C 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11C840 800FE750 2407004F */  addiu      $a3, $zero, 0x4F
/* 11C844 800FE754 24020020 */  addiu      $v0, $zero, 0x20
/* 11C848 800FE758 0C040297 */  jal        func_menu_80100A5C
/* 11C84C 800FE75C AFA20010 */   sw        $v0, 0x10($sp)
/* 11C850 800FE760 02402021 */  addu       $a0, $s2, $zero
/* 11C854 800FE764 265042C0 */  addiu      $s0, $s2, 0x42C0
.Lmenu_800FE768:
/* 11C858 800FE768 02002821 */  addu       $a1, $s0, $zero
/* 11C85C 800FE76C 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11C860 800FE770 2407004E */  addiu      $a3, $zero, 0x4E
/* 11C864 800FE774 2402001F */  addiu      $v0, $zero, 0x1F
/* 11C868 800FE778 0C040297 */  jal        func_menu_80100A5C
/* 11C86C 800FE77C AFA20010 */   sw        $v0, 0x10($sp)
/* 11C870 800FE780 02402021 */  addu       $a0, $s2, $zero
/* 11C874 800FE784 02202821 */  addu       $a1, $s1, $zero
/* 11C878 800FE788 02003021 */  addu       $a2, $s0, $zero
/* 11C87C 800FE78C 0C046B48 */  jal        func_menu_8011AD20
/* 11C880 800FE790 2407007B */   addiu     $a3, $zero, 0x7B
/* 11C884 800FE794 0803FA84 */  j          .Lmenu_800FEA10
/* 11C888 800FE798 00000000 */   nop
.Lmenu_800FE79C:
/* 11C88C 800FE79C 8E420354 */  lw         $v0, 0x354($s2)
/* 11C890 800FE7A0 8C424614 */  lw         $v0, 0x4614($v0)
/* 11C894 800FE7A4 30420001 */  andi       $v0, $v0, 0x1
/* 11C898 800FE7A8 10400016 */  beqz       $v0, .Lmenu_800FE804
/* 11C89C 800FE7AC 26513FD0 */   addiu     $s1, $s2, 0x3FD0
/* 11C8A0 800FE7B0 02202821 */  addu       $a1, $s1, $zero
/* 11C8A4 800FE7B4 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11C8A8 800FE7B8 2407004F */  addiu      $a3, $zero, 0x4F
/* 11C8AC 800FE7BC 24020073 */  addiu      $v0, $zero, 0x73
/* 11C8B0 800FE7C0 0C040297 */  jal        func_menu_80100A5C
/* 11C8B4 800FE7C4 AFA20010 */   sw        $v0, 0x10($sp)
/* 11C8B8 800FE7C8 02402021 */  addu       $a0, $s2, $zero
/* 11C8BC 800FE7CC 265042C0 */  addiu      $s0, $s2, 0x42C0
/* 11C8C0 800FE7D0 02002821 */  addu       $a1, $s0, $zero
/* 11C8C4 800FE7D4 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11C8C8 800FE7D8 2407004E */  addiu      $a3, $zero, 0x4E
/* 11C8CC 800FE7DC 24020074 */  addiu      $v0, $zero, 0x74
/* 11C8D0 800FE7E0 0C040297 */  jal        func_menu_80100A5C
/* 11C8D4 800FE7E4 AFA20010 */   sw        $v0, 0x10($sp)
/* 11C8D8 800FE7E8 02402021 */  addu       $a0, $s2, $zero
/* 11C8DC 800FE7EC 02202821 */  addu       $a1, $s1, $zero
/* 11C8E0 800FE7F0 02003021 */  addu       $a2, $s0, $zero
/* 11C8E4 800FE7F4 0C046B48 */  jal        func_menu_8011AD20
/* 11C8E8 800FE7F8 24070077 */   addiu     $a3, $zero, 0x77
/* 11C8EC 800FE7FC 0803FA84 */  j          .Lmenu_800FEA10
/* 11C8F0 800FE800 00000000 */   nop
.Lmenu_800FE804:
/* 11C8F4 800FE804 8E420000 */  lw         $v0, 0x0($s2)
/* 11C8F8 800FE808 26453FD0 */  addiu      $a1, $s2, 0x3FD0
.Lmenu_800FE80C:
/* 11C8FC 800FE80C 84440078 */  lh         $a0, 0x78($v0)
/* 11C900 800FE810 8C42007C */  lw         $v0, 0x7C($v0)
/* 11C904 800FE814 0040F809 */  jalr       $v0
/* 11C908 800FE818 02442021 */   addu      $a0, $s2, $a0
/* 11C90C 800FE81C 0803FA84 */  j          .Lmenu_800FEA10
/* 11C910 800FE820 00000000 */   nop
.Lmenu_800FE824:
/* 11C914 800FE824 16C2000C */  bne        $s6, $v0, .Lmenu_800FE858
/* 11C918 800FE828 26423FD0 */   addiu     $v0, $s2, 0x3FD0
/* 11C91C 800FE82C 0C03F8BC */  jal        func_menu_800FE2F0
/* 11C920 800FE830 02402021 */   addu      $a0, $s2, $zero
/* 11C924 800FE834 0C03F84A */  jal        func_menu_800FE128
/* 11C928 800FE838 02402021 */   addu      $a0, $s2, $zero
/* 11C92C 800FE83C 8E420354 */  lw         $v0, 0x354($s2)
/* 11C930 800FE840 8C424614 */  lw         $v0, 0x4614($v0)
/* 11C934 800FE844 30420001 */  andi       $v0, $v0, 0x1
/* 11C938 800FE848 10400018 */  beqz       $v0, .Lmenu_800FE8AC
/* 11C93C 800FE84C 24020010 */   addiu     $v0, $zero, 0x10
/* 11C940 800FE850 0803FA84 */  j          .Lmenu_800FEA10
/* 11C944 800FE854 A6420360 */   sh        $v0, 0x360($s2)
.Lmenu_800FE858:
/* 11C948 800FE858 16C20017 */  bne        $s6, $v0, .Lmenu_800FE8B8
/* 11C94C 800FE85C 264245B0 */   addiu     $v0, $s2, 0x45B0
/* 11C950 800FE860 8E420354 */  lw         $v0, 0x354($s2)
/* 11C954 800FE864 8C424614 */  lw         $v0, 0x4614($v0)
/* 11C958 800FE868 30420001 */  andi       $v0, $v0, 0x1
/* 11C95C 800FE86C 10400004 */  beqz       $v0, .Lmenu_800FE880
/* 11C960 800FE870 3C04FFFE */   lui       $a0, (0xFFFEFFFF >> 16)
/* 11C964 800FE874 0C03F8D1 */  jal        func_menu_800FE344
/* 11C968 800FE878 02402021 */   addu      $a0, $s2, $zero
/* 11C96C 800FE87C 3C04FFFE */  lui        $a0, (0xFFFEFFFF >> 16)
.Lmenu_800FE880:
/* 11C970 800FE880 26434BFC */  addiu      $v1, $s2, 0x4BFC
/* 11C974 800FE884 8C62005C */  lw         $v0, 0x5C($v1)
/* 11C978 800FE888 3484FFFF */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
/* 11C97C 800FE88C 00441024 */  and        $v0, $v0, $a0
/* 11C980 800FE890 AC62005C */  sw         $v0, 0x5C($v1)
/* 11C984 800FE894 8E440284 */  lw         $a0, 0x284($s2)
/* 11C988 800FE898 8C82009C */  lw         $v0, 0x9C($a0)
/* 11C98C 800FE89C 10400004 */  beqz       $v0, .Lmenu_800FE8B0
/* 11C990 800FE8A0 24020003 */   addiu     $v0, $zero, 0x3
/* 11C994 800FE8A4 0C045449 */  jal        func_menu_80115124
/* 11C998 800FE8A8 00000000 */   nop
.Lmenu_800FE8AC:
/* 11C99C 800FE8AC 24020003 */  addiu      $v0, $zero, 0x3
.Lmenu_800FE8B0:
/* 11C9A0 800FE8B0 0803FA84 */  j          .Lmenu_800FEA10
/* 11C9A4 800FE8B4 A6420360 */   sh        $v0, 0x360($s2)
.Lmenu_800FE8B8:
/* 11C9A8 800FE8B8 16C2004E */  bne        $s6, $v0, .Lmenu_800FE9F4
/* 11C9AC 800FE8BC 264242C0 */   addiu     $v0, $s2, 0x42C0
/* 11C9B0 800FE8C0 0000A021 */  addu       $s4, $zero, $zero
/* 11C9B4 800FE8C4 3C158003 */  lui        $s5, %hi(D_8002FAB0)
/* 11C9B8 800FE8C8 3C028003 */  lui        $v0, %hi(D_8002F2B0)
/* 11C9BC 800FE8CC 2457F2B0 */  addiu      $s7, $v0, %lo(D_8002F2B0)
/* 11C9C0 800FE8D0 24130420 */  addiu      $s3, $zero, 0x420
/* 11C9C4 800FE8D4 02408821 */  addu       $s1, $s2, $zero
/* 11C9C8 800FE8D8 02808021 */  addu       $s0, $s4, $zero
/* 11C9CC 800FE8DC 2A820004 */  slti       $v0, $s4, 0x4
.Lmenu_800FE8E0:
/* 11C9D0 800FE8E0 10400020 */  beqz       $v0, .Lmenu_800FE964
/* 11C9D4 800FE8E4 02121821 */   addu      $v1, $s0, $s2
/* 11C9D8 800FE8E8 8EA6FAB0 */  lw         $a2, %lo(D_8002FAB0)($s5)
/* 11C9DC 800FE8EC 8C630488 */  lw         $v1, 0x488($v1)
/* 11C9E0 800FE8F0 24C60001 */  addiu      $a2, $a2, 0x1
/* 11C9E4 800FE8F4 30C603FF */  andi       $a2, $a2, 0x3FF
/* 11C9E8 800FE8F8 00061040 */  sll        $v0, $a2, 1
/* 11C9EC 800FE8FC 00571021 */  addu       $v0, $v0, $s7
/* 11C9F0 800FE900 94420000 */  lhu        $v0, 0x0($v0)
/* 11C9F4 800FE904 0043001A */  div        $zero, $v0, $v1
/* 11C9F8 800FE908 14600002 */  bnez       $v1, .Lmenu_800FE914
/* 11C9FC 800FE90C 00000000 */   nop
/* 11CA00 800FE910 0007000D */  break      7
.Lmenu_800FE914:
/* 11CA04 800FE914 2401FFFF */  addiu      $at, $zero, -0x1
/* 11CA08 800FE918 14610004 */  bne        $v1, $at, .Lmenu_800FE92C
/* 11CA0C 800FE91C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 11CA10 800FE920 14410002 */  bne        $v0, $at, .Lmenu_800FE92C
/* 11CA14 800FE924 00000000 */   nop
/* 11CA18 800FE928 0006000D */  break      6
.Lmenu_800FE92C:
/* 11CA1C 800FE92C 00002810 */  mfhi       $a1
/* 11CA20 800FE930 26100170 */  addiu      $s0, $s0, 0x170
/* 11CA24 800FE934 26940001 */  addiu      $s4, $s4, 0x1
/* 11CA28 800FE938 AEA6FAB0 */  sw         $a2, %lo(D_8002FAB0)($s5)
/* 11CA2C 800FE93C 02531821 */  addu       $v1, $s2, $s3
/* 11CA30 800FE940 26730170 */  addiu      $s3, $s3, 0x170
/* 11CA34 800FE944 8E220474 */  lw         $v0, 0x474($s1)
/* 11CA38 800FE948 26310170 */  addiu      $s1, $s1, 0x170
/* 11CA3C 800FE94C 844400A8 */  lh         $a0, 0xA8($v0)
/* 11CA40 800FE950 8C4200AC */  lw         $v0, 0xAC($v0)
/* 11CA44 800FE954 0040F809 */  jalr       $v0
/* 11CA48 800FE958 00642021 */   addu      $a0, $v1, $a0
/* 11CA4C 800FE95C 0803FA38 */  j          .Lmenu_800FE8E0
/* 11CA50 800FE960 2A820004 */   slti      $v0, $s4, 0x4
.Lmenu_800FE964:
/* 11CA54 800FE964 26430420 */  addiu      $v1, $s2, 0x420
/* 11CA58 800FE968 8C62006C */  lw         $v0, 0x6C($v1)
/* 11CA5C 800FE96C 00021080 */  sll        $v0, $v0, 2
/* 11CA60 800FE970 00621821 */  addu       $v1, $v1, $v0
/* 11CA64 800FE974 8C6200D0 */  lw         $v0, 0xD0($v1)
/* 11CA68 800FE978 26430590 */  addiu      $v1, $s2, 0x590
/* 11CA6C 800FE97C A2424D3C */  sb         $v0, 0x4D3C($s2)
/* 11CA70 800FE980 8C62006C */  lw         $v0, 0x6C($v1)
/* 11CA74 800FE984 00021080 */  sll        $v0, $v0, 2
/* 11CA78 800FE988 00621821 */  addu       $v1, $v1, $v0
/* 11CA7C 800FE98C 8C6200D0 */  lw         $v0, 0xD0($v1)
/* 11CA80 800FE990 26430700 */  addiu      $v1, $s2, 0x700
/* 11CA84 800FE994 A2424D3D */  sb         $v0, 0x4D3D($s2)
/* 11CA88 800FE998 8C62006C */  lw         $v0, 0x6C($v1)
/* 11CA8C 800FE99C 00021080 */  sll        $v0, $v0, 2
/* 11CA90 800FE9A0 00621821 */  addu       $v1, $v1, $v0
/* 11CA94 800FE9A4 8C6200D0 */  lw         $v0, 0xD0($v1)
/* 11CA98 800FE9A8 26430870 */  addiu      $v1, $s2, 0x870
/* 11CA9C 800FE9AC A2424D3E */  sb         $v0, 0x4D3E($s2)
/* 11CAA0 800FE9B0 8C62006C */  lw         $v0, 0x6C($v1)
/* 11CAA4 800FE9B4 26444BE0 */  addiu      $a0, $s2, 0x4BE0
/* 11CAA8 800FE9B8 00021080 */  sll        $v0, $v0, 2
/* 11CAAC 800FE9BC 00621821 */  addu       $v1, $v1, $v0
/* 11CAB0 800FE9C0 8C6200D0 */  lw         $v0, 0xD0($v1)
/* 11CAB4 800FE9C4 26454D3C */  addiu      $a1, $s2, 0x4D3C
/* 11CAB8 800FE9C8 0C03FBD2 */  jal        func_menu_800FEF48
/* 11CABC 800FE9CC A2424D3F */   sb        $v0, 0x4D3F($s2)
/* 11CAC0 800FE9D0 8E440284 */  lw         $a0, 0x284($s2)
/* 11CAC4 800FE9D4 8C82009C */  lw         $v0, 0x9C($a0)
/* 11CAC8 800FE9D8 10400004 */  beqz       $v0, .Lmenu_800FE9EC
/* 11CACC 800FE9DC 24020001 */   addiu     $v0, $zero, 0x1
/* 11CAD0 800FE9E0 0C045449 */  jal        func_menu_80115124
/* 11CAD4 800FE9E4 00000000 */   nop
/* 11CAD8 800FE9E8 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800FE9EC:
/* 11CADC 800FE9EC 0803FA84 */  j          .Lmenu_800FEA10
/* 11CAE0 800FE9F0 AE424D54 */   sw        $v0, 0x4D54($s2)
.Lmenu_800FE9F4:
/* 11CAE4 800FE9F4 12C20003 */  beq        $s6, $v0, .Lmenu_800FEA04
/* 11CAE8 800FE9F8 264248A0 */   addiu     $v0, $s2, 0x48A0
/* 11CAEC 800FE9FC 16C20004 */  bne        $s6, $v0, .Lmenu_800FEA10
/* 11CAF0 800FEA00 00000000 */   nop
.Lmenu_800FEA04:
/* 11CAF4 800FEA04 8E440284 */  lw         $a0, 0x284($s2)
/* 11CAF8 800FEA08 0C045449 */  jal        func_menu_80115124
/* 11CAFC 800FEA0C 00000000 */   nop
.Lmenu_800FEA10:
/* 11CB00 800FEA10 96430360 */  lhu        $v1, 0x360($s2)
/* 11CB04 800FEA14 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 11CB08 800FEA18 10620003 */  beq        $v1, $v0, .Lmenu_800FEA28
/* 11CB0C 800FEA1C 24020001 */   addiu     $v0, $zero, 0x1
/* 11CB10 800FEA20 AE420364 */  sw         $v0, 0x364($s2)
/* 11CB14 800FEA24 AE56035C */  sw         $s6, 0x35C($s2)
.Lmenu_800FEA28:
/* 11CB18 800FEA28 8FBF0038 */  lw         $ra, 0x38($sp)
/* 11CB1C 800FEA2C 8FB70034 */  lw         $s7, 0x34($sp)
/* 11CB20 800FEA30 8FB60030 */  lw         $s6, 0x30($sp)
/* 11CB24 800FEA34 8FB5002C */  lw         $s5, 0x2C($sp)
/* 11CB28 800FEA38 8FB40028 */  lw         $s4, 0x28($sp)
/* 11CB2C 800FEA3C 8FB30024 */  lw         $s3, 0x24($sp)
/* 11CB30 800FEA40 8FB20020 */  lw         $s2, 0x20($sp)
/* 11CB34 800FEA44 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11CB38 800FEA48 8FB00018 */  lw         $s0, 0x18($sp)
/* 11CB3C 800FEA4C 03E00008 */  jr         $ra
/* 11CB40 800FEA50 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800FEA54
/* 11CB44 800FEA54 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11CB48 800FEA58 AFB00010 */  sw         $s0, 0x10($sp)
/* 11CB4C 800FEA5C 00808021 */  addu       $s0, $a0, $zero
/* 11CB50 800FEA60 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11CB54 800FEA64 AFB10014 */  sw         $s1, 0x14($sp)
/* 11CB58 800FEA68 8E020364 */  lw         $v0, 0x364($s0)
/* 11CB5C 800FEA6C 14400007 */  bnez       $v0, .Lmenu_800FEA8C
/* 11CB60 800FEA70 00A08821 */   addu      $s1, $a1, $zero
/* 11CB64 800FEA74 0C0199BD */  jal        func_800666F4
/* 11CB68 800FEA78 26044BFC */   addiu     $a0, $s0, 0x4BFC
/* 11CB6C 800FEA7C 10400004 */  beqz       $v0, .Lmenu_800FEA90
/* 11CB70 800FEA80 02002021 */   addu      $a0, $s0, $zero
/* 11CB74 800FEA84 0C03F827 */  jal        func_menu_800FE09C
/* 11CB78 800FEA88 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800FEA8C:
/* 11CB7C 800FEA8C 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800FEA90:
/* 11CB80 800FEA90 0C04056C */  jal        func_menu_801015B0
/* 11CB84 800FEA94 02202821 */   addu      $a1, $s1, $zero
/* 11CB88 800FEA98 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11CB8C 800FEA9C 8FB10014 */  lw         $s1, 0x14($sp)
/* 11CB90 800FEAA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CB94 800FEAA4 03E00008 */  jr         $ra
/* 11CB98 800FEAA8 27BD0020 */   addiu     $sp, $sp, 0x20
