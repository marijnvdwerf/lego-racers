.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8011B590
/* 139680 8011B590 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 139684 8011B594 AFB00010 */  sw         $s0, 0x10($sp)
/* 139688 8011B598 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13968C 8011B59C 0C046CDC */  jal        func_menu_8011B370
/* 139690 8011B5A0 00808021 */   addu      $s0, $a0, $zero
/* 139694 8011B5A4 3C02800D */  lui        $v0, %hi(D_menu_800D05A0)
/* 139698 8011B5A8 244205A0 */  addiu      $v0, $v0, %lo(D_menu_800D05A0)
/* 13969C 8011B5AC 26040088 */  addiu      $a0, $s0, 0x88
/* 1396A0 8011B5B0 0C03B3B4 */  jal        func_menu_800ECED0
/* 1396A4 8011B5B4 AE020054 */   sw        $v0, 0x54($s0)
/* 1396A8 8011B5B8 0C03B39C */  jal        func_menu_800ECE70
/* 1396AC 8011B5BC 2604008C */   addiu     $a0, $s0, 0x8C
/* 1396B0 8011B5C0 0C046D89 */  jal        func_menu_8011B624
/* 1396B4 8011B5C4 02002021 */   addu      $a0, $s0, $zero
/* 1396B8 8011B5C8 02001021 */  addu       $v0, $s0, $zero
/* 1396BC 8011B5CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1396C0 8011B5D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1396C4 8011B5D4 03E00008 */  jr         $ra
/* 1396C8 8011B5D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011B5DC
/* 1396CC 8011B5DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1396D0 8011B5E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1396D4 8011B5E4 00808021 */  addu       $s0, $a0, $zero
/* 1396D8 8011B5E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1396DC 8011B5EC 00A08821 */  addu       $s1, $a1, $zero
/* 1396E0 8011B5F0 3C02800D */  lui        $v0, %hi(D_menu_800D05A0)
/* 1396E4 8011B5F4 244205A0 */  addiu      $v0, $v0, %lo(D_menu_800D05A0)
/* 1396E8 8011B5F8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1396EC 8011B5FC 0C046DCA */  jal        func_menu_8011B728
/* 1396F0 8011B600 AE020054 */   sw        $v0, 0x54($s0)
/* 1396F4 8011B604 02002021 */  addu       $a0, $s0, $zero
/* 1396F8 8011B608 0C046CEB */  jal        func_menu_8011B3AC
/* 1396FC 8011B60C 02202821 */   addu      $a1, $s1, $zero
/* 139700 8011B610 8FBF0018 */  lw         $ra, 0x18($sp)
/* 139704 8011B614 8FB10014 */  lw         $s1, 0x14($sp)
/* 139708 8011B618 8FB00010 */  lw         $s0, 0x10($sp)
/* 13970C 8011B61C 03E00008 */  jr         $ra
/* 139710 8011B620 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011B624
/* 139714 8011B624 44800000 */  mtc1       $zero, $f0
/* 139718 8011B628 3C01800D */  lui        $at, %hi(D_menu_800D0580)
/* 13971C 8011B62C C4220580 */  lwc1       $f2, %lo(D_menu_800D0580)($at)
/* 139720 8011B630 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 139724 8011B634 AFBF0010 */  sw         $ra, 0x10($sp)
/* 139728 8011B638 AC800080 */  sw         $zero, 0x80($a0)
/* 13972C 8011B63C AC800084 */  sw         $zero, 0x84($a0)
/* 139730 8011B640 AC80007C */  sw         $zero, 0x7C($a0)
/* 139734 8011B644 E48000A0 */  swc1       $f0, 0xA0($a0)
/* 139738 8011B648 E480009C */  swc1       $f0, 0x9C($a0)
/* 13973C 8011B64C E48200A4 */  swc1       $f2, 0xA4($a0)
/* 139740 8011B650 0C046CFF */  jal        func_menu_8011B3FC
/* 139744 8011B654 E48000BC */   swc1      $f0, 0xBC($a0)
/* 139748 8011B658 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13974C 8011B65C 03E00008 */  jr         $ra
/* 139750 8011B660 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011B664
/* 139754 8011B664 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 139758 8011B668 AFB00018 */  sw         $s0, 0x18($sp)
/* 13975C 8011B66C 00808021 */  addu       $s0, $a0, $zero
/* 139760 8011B670 AFB1001C */  sw         $s1, 0x1C($sp)
/* 139764 8011B674 AFBF0020 */  sw         $ra, 0x20($sp)
/* 139768 8011B678 0C046D0B */  jal        func_menu_8011B42C
/* 13976C 8011B67C 00A08821 */   addu      $s1, $a1, $zero
/* 139770 8011B680 10400023 */  beqz       $v0, .Lmenu_8011B710
/* 139774 8011B684 02002021 */   addu      $a0, $s0, $zero
/* 139778 8011B688 C6200040 */  lwc1       $f0, 0x40($s1)
/* 13977C 8011B68C E60000BC */  swc1       $f0, 0xBC($s0)
/* 139780 8011B690 8E22006C */  lw         $v0, 0x6C($s1)
/* 139784 8011B694 02202821 */  addu       $a1, $s1, $zero
/* 139788 8011B698 0C046E00 */  jal        func_menu_8011B800
/* 13978C 8011B69C AE020078 */   sw        $v0, 0x78($s0)
/* 139790 8011B6A0 0C046E8A */  jal        func_menu_8011BA28
/* 139794 8011B6A4 02002021 */   addu      $a0, $s0, $zero
/* 139798 8011B6A8 02002021 */  addu       $a0, $s0, $zero
/* 13979C 8011B6AC 0C046EBA */  jal        func_menu_8011BAE8
/* 1397A0 8011B6B0 02202821 */   addu      $a1, $s1, $zero
/* 1397A4 8011B6B4 0C046EA2 */  jal        func_menu_8011BA88
/* 1397A8 8011B6B8 02002021 */   addu      $a0, $s0, $zero
/* 1397AC 8011B6BC 27A50010 */  addiu      $a1, $sp, 0x10
/* 1397B0 8011B6C0 240200FF */  addiu      $v0, $zero, 0xFF
/* 1397B4 8011B6C4 A3A20012 */  sb         $v0, 0x12($sp)
/* 1397B8 8011B6C8 A3A20011 */  sb         $v0, 0x11($sp)
/* 1397BC 8011B6CC A3A20010 */  sb         $v0, 0x10($sp)
/* 1397C0 8011B6D0 A3A20013 */  sb         $v0, 0x13($sp)
/* 1397C4 8011B6D4 8E020054 */  lw         $v0, 0x54($s0)
/* 1397C8 8011B6D8 00A03021 */  addu       $a2, $a1, $zero
/* 1397CC 8011B6DC 84440098 */  lh         $a0, 0x98($v0)
/* 1397D0 8011B6E0 8C42009C */  lw         $v0, 0x9C($v0)
/* 1397D4 8011B6E4 0040F809 */  jalr       $v0
/* 1397D8 8011B6E8 02042021 */   addu      $a0, $s0, $a0
/* 1397DC 8011B6EC 27A50010 */  addiu      $a1, $sp, 0x10
/* 1397E0 8011B6F0 8E020054 */  lw         $v0, 0x54($s0)
/* 1397E4 8011B6F4 00A03021 */  addu       $a2, $a1, $zero
/* 1397E8 8011B6F8 844400A0 */  lh         $a0, 0xA0($v0)
/* 1397EC 8011B6FC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 1397F0 8011B700 0040F809 */  jalr       $v0
/* 1397F4 8011B704 02042021 */   addu      $a0, $s0, $a0
/* 1397F8 8011B708 08046DC5 */  j          .Lmenu_8011B714
/* 1397FC 8011B70C 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_8011B710:
/* 139800 8011B710 00001021 */  addu       $v0, $zero, $zero
.Lmenu_8011B714:
/* 139804 8011B714 8FBF0020 */  lw         $ra, 0x20($sp)
/* 139808 8011B718 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13980C 8011B71C 8FB00018 */  lw         $s0, 0x18($sp)
/* 139810 8011B720 03E00008 */  jr         $ra
/* 139814 8011B724 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011B728
/* 139818 8011B728 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13981C 8011B72C AFB20018 */  sw         $s2, 0x18($sp)
/* 139820 8011B730 00809021 */  addu       $s2, $a0, $zero
/* 139824 8011B734 AFBF001C */  sw         $ra, 0x1C($sp)
/* 139828 8011B738 AFB10014 */  sw         $s1, 0x14($sp)
/* 13982C 8011B73C AFB00010 */  sw         $s0, 0x10($sp)
/* 139830 8011B740 8E420018 */  lw         $v0, 0x18($s2)
/* 139834 8011B744 04410028 */  bgez       $v0, .Lmenu_8011B7E8
/* 139838 8011B748 24020001 */   addiu     $v0, $zero, 0x1
/* 13983C 8011B74C 8E42007C */  lw         $v0, 0x7C($s2)
/* 139840 8011B750 1040001A */  beqz       $v0, .Lmenu_8011B7BC
/* 139844 8011B754 00000000 */   nop
/* 139848 8011B758 8E420060 */  lw         $v0, 0x60($s2)
/* 13984C 8011B75C 18400012 */  blez       $v0, .Lmenu_8011B7A8
/* 139850 8011B760 00008021 */   addu      $s0, $zero, $zero
/* 139854 8011B764 02008821 */  addu       $s1, $s0, $zero
.Lmenu_8011B768:
/* 139858 8011B768 8E42007C */  lw         $v0, 0x7C($s2)
/* 13985C 8011B76C 02221021 */  addu       $v0, $s1, $v0
/* 139860 8011B770 8C45002C */  lw         $a1, 0x2C($v0)
/* 139864 8011B774 10A00007 */  beqz       $a1, .Lmenu_8011B794
/* 139868 8011B778 00000000 */   nop
/* 13986C 8011B77C 8E43001C */  lw         $v1, 0x1C($s2)
/* 139870 8011B780 8C620000 */  lw         $v0, 0x0($v1)
/* 139874 8011B784 84440098 */  lh         $a0, 0x98($v0)
/* 139878 8011B788 8C42009C */  lw         $v0, 0x9C($v0)
/* 13987C 8011B78C 0040F809 */  jalr       $v0
/* 139880 8011B790 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011B794:
/* 139884 8011B794 8E420060 */  lw         $v0, 0x60($s2)
/* 139888 8011B798 26100001 */  addiu      $s0, $s0, 0x1
/* 13988C 8011B79C 0202102A */  slt        $v0, $s0, $v0
/* 139890 8011B7A0 1440FFF1 */  bnez       $v0, .Lmenu_8011B768
/* 139894 8011B7A4 263100D0 */   addiu     $s1, $s1, 0xD0
.Lmenu_8011B7A8:
/* 139898 8011B7A8 8E44007C */  lw         $a0, 0x7C($s2)
/* 13989C 8011B7AC 10800003 */  beqz       $a0, .Lmenu_8011B7BC
/* 1398A0 8011B7B0 00000000 */   nop
/* 1398A4 8011B7B4 0C009444 */  jal        func_80025110
/* 1398A8 8011B7B8 00000000 */   nop
.Lmenu_8011B7BC:
/* 1398AC 8011B7BC 8E450080 */  lw         $a1, 0x80($s2)
/* 1398B0 8011B7C0 10A00007 */  beqz       $a1, .Lmenu_8011B7E0
/* 1398B4 8011B7C4 00000000 */   nop
/* 1398B8 8011B7C8 8E43001C */  lw         $v1, 0x1C($s2)
/* 1398BC 8011B7CC 8C620000 */  lw         $v0, 0x0($v1)
/* 1398C0 8011B7D0 844400B0 */  lh         $a0, 0xB0($v0)
/* 1398C4 8011B7D4 8C4200B4 */  lw         $v0, 0xB4($v0)
/* 1398C8 8011B7D8 0040F809 */  jalr       $v0
/* 1398CC 8011B7DC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011B7E0:
/* 1398D0 8011B7E0 0C049139 */  jal        func_menu_801244E4
/* 1398D4 8011B7E4 02402021 */   addu      $a0, $s2, $zero
.Lmenu_8011B7E8:
/* 1398D8 8011B7E8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1398DC 8011B7EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1398E0 8011B7F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1398E4 8011B7F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1398E8 8011B7F8 03E00008 */  jr         $ra
/* 1398EC 8011B7FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011B800
/* 1398F0 8011B800 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1398F4 8011B804 AFB00050 */  sw         $s0, 0x50($sp)
/* 1398F8 8011B808 00808021 */  addu       $s0, $a0, $zero
/* 1398FC 8011B80C AFB20058 */  sw         $s2, 0x58($sp)
/* 139900 8011B810 00A09021 */  addu       $s2, $a1, $zero
/* 139904 8011B814 AFB10054 */  sw         $s1, 0x54($sp)
/* 139908 8011B818 26510048 */  addiu      $s1, $s2, 0x48
/* 13990C 8011B81C AFBF005C */  sw         $ra, 0x5C($sp)
/* 139910 8011B820 C620001C */  lwc1       $f0, 0x1C($s1)
/* 139914 8011B824 8E03001C */  lw         $v1, 0x1C($s0)
/* 139918 8011B828 E60000B4 */  swc1       $f0, 0xB4($s0)
/* 13991C 8011B82C 8C620000 */  lw         $v0, 0x0($v1)
/* 139920 8011B830 84440048 */  lh         $a0, 0x48($v0)
/* 139924 8011B834 8C42004C */  lw         $v0, 0x4C($v0)
/* 139928 8011B838 0040F809 */  jalr       $v0
/* 13992C 8011B83C 00642021 */   addu      $a0, $v1, $a0
/* 139930 8011B840 AE020080 */  sw         $v0, 0x80($s0)
/* 139934 8011B844 8C43002C */  lw         $v1, 0x2C($v0)
/* 139938 8011B848 C6200018 */  lwc1       $f0, 0x18($s1)
/* 13993C 8011B84C 34630002 */  ori        $v1, $v1, 0x2
/* 139940 8011B850 E4400004 */  swc1       $f0, 0x4($v0)
/* 139944 8011B854 AC43002C */  sw         $v1, 0x2C($v0)
/* 139948 8011B858 8E030080 */  lw         $v1, 0x80($s0)
/* 13994C 8011B85C C60000B4 */  lwc1       $f0, 0xB4($s0)
/* 139950 8011B860 8C62002C */  lw         $v0, 0x2C($v1)
/* 139954 8011B864 E460000C */  swc1       $f0, 0xC($v1)
/* 139958 8011B868 34420002 */  ori        $v0, $v0, 0x2
/* 13995C 8011B86C AC62002C */  sw         $v0, 0x2C($v1)
/* 139960 8011B870 8E030080 */  lw         $v1, 0x80($s0)
/* 139964 8011B874 C6200020 */  lwc1       $f0, 0x20($s1)
/* 139968 8011B878 8C62002C */  lw         $v0, 0x2C($v1)
/* 13996C 8011B87C 27A50020 */  addiu      $a1, $sp, 0x20
/* 139970 8011B880 E4600010 */  swc1       $f0, 0x10($v1)
/* 139974 8011B884 3C01800D */  lui        $at, %hi(D_menu_800D0584)
/* 139978 8011B888 C4200584 */  lwc1       $f0, %lo(D_menu_800D0584)($at)
/* 13997C 8011B88C 34420002 */  ori        $v0, $v0, 0x2
/* 139980 8011B890 AC62002C */  sw         $v0, 0x2C($v1)
/* 139984 8011B894 AFA00010 */  sw         $zero, 0x10($sp)
/* 139988 8011B898 AFA00014 */  sw         $zero, 0x14($sp)
/* 13998C 8011B89C E7A00018 */  swc1       $f0, 0x18($sp)
/* 139990 8011B8A0 C60000B4 */  lwc1       $f0, 0xB4($s0)
/* 139994 8011B8A4 27A60030 */  addiu      $a2, $sp, 0x30
/* 139998 8011B8A8 AFA00024 */  sw         $zero, 0x24($sp)
/* 13999C 8011B8AC AFA00028 */  sw         $zero, 0x28($sp)
/* 1399A0 8011B8B0 AFA00030 */  sw         $zero, 0x30($sp)
/* 1399A4 8011B8B4 AFA00034 */  sw         $zero, 0x34($sp)
/* 1399A8 8011B8B8 AFA00038 */  sw         $zero, 0x38($sp)
/* 1399AC 8011B8BC E7A00020 */  swc1       $f0, 0x20($sp)
/* 1399B0 8011B8C0 8E040080 */  lw         $a0, 0x80($s0)
/* 1399B4 8011B8C4 0C0128BC */  jal        func_8004A2F0
/* 1399B8 8011B8C8 27A70010 */   addiu     $a3, $sp, 0x10
/* 1399BC 8011B8CC 0C046E55 */  jal        func_menu_8011B954
/* 1399C0 8011B8D0 02002021 */   addu      $a0, $s0, $zero
/* 1399C4 8011B8D4 8E020080 */  lw         $v0, 0x80($s0)
/* 1399C8 8011B8D8 8C48010C */  lw         $t0, 0x10C($v0)
/* 1399CC 8011B8DC 8C490110 */  lw         $t1, 0x110($v0)
/* 1399D0 8011B8E0 8C4A0114 */  lw         $t2, 0x114($v0)
/* 1399D4 8011B8E4 8C4B0118 */  lw         $t3, 0x118($v0)
/* 1399D8 8011B8E8 AFA80040 */  sw         $t0, 0x40($sp)
/* 1399DC 8011B8EC AFA90044 */  sw         $t1, 0x44($sp)
/* 1399E0 8011B8F0 AFAA0048 */  sw         $t2, 0x48($sp)
/* 1399E4 8011B8F4 AFAB004C */  sw         $t3, 0x4C($sp)
/* 1399E8 8011B8F8 8FA30048 */  lw         $v1, 0x48($sp)
/* 1399EC 8011B8FC 8FA20040 */  lw         $v0, 0x40($sp)
/* 1399F0 8011B900 8FA40044 */  lw         $a0, 0x44($sp)
/* 1399F4 8011B904 C6440070 */  lwc1       $f4, 0x70($s2)
/* 1399F8 8011B908 00621823 */  subu       $v1, $v1, $v0
/* 1399FC 8011B90C 8FA2004C */  lw         $v0, 0x4C($sp)
/* 139A00 8011B910 44830000 */  mtc1       $v1, $f0
/* 139A04 8011B914 46800020 */  cvt.s.w    $f0, $f0
/* 139A08 8011B918 00441023 */  subu       $v0, $v0, $a0
/* 139A0C 8011B91C 44821000 */  mtc1       $v0, $f2
/* 139A10 8011B920 468010A0 */  cvt.s.w    $f2, $f2
/* 139A14 8011B924 46020003 */  div.s      $f0, $f0, $f2
/* 139A18 8011B928 46040002 */  mul.s      $f0, $f0, $f4
/* 139A1C 8011B92C 8E040080 */  lw         $a0, 0x80($s0)
/* 139A20 8011B930 44050000 */  mfc1       $a1, $f0
/* 139A24 8011B934 0C0128F6 */  jal        func_8004A3D8
/* 139A28 8011B938 00000000 */   nop
/* 139A2C 8011B93C 8FBF005C */  lw         $ra, 0x5C($sp)
/* 139A30 8011B940 8FB20058 */  lw         $s2, 0x58($sp)
/* 139A34 8011B944 8FB10054 */  lw         $s1, 0x54($sp)
/* 139A38 8011B948 8FB00050 */  lw         $s0, 0x50($sp)
/* 139A3C 8011B94C 03E00008 */  jr         $ra
/* 139A40 8011B950 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_menu_8011B954
/* 139A44 8011B954 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 139A48 8011B958 AFB00020 */  sw         $s0, 0x20($sp)
/* 139A4C 8011B95C 00808021 */  addu       $s0, $a0, $zero
/* 139A50 8011B960 AFBF0028 */  sw         $ra, 0x28($sp)
/* 139A54 8011B964 AFB10024 */  sw         $s1, 0x24($sp)
/* 139A58 8011B968 8E030020 */  lw         $v1, 0x20($s0)
/* 139A5C 8011B96C 8C62012C */  lw         $v0, 0x12C($v1)
/* 139A60 8011B970 84440030 */  lh         $a0, 0x30($v0)
/* 139A64 8011B974 8C420034 */  lw         $v0, 0x34($v0)
/* 139A68 8011B978 0040F809 */  jalr       $v0
/* 139A6C 8011B97C 00642021 */   addu      $a0, $v1, $a0
/* 139A70 8011B980 8E030080 */  lw         $v1, 0x80($s0)
/* 139A74 8011B984 10600023 */  beqz       $v1, .Lmenu_8011BA14
/* 139A78 8011B988 00408821 */   addu      $s1, $v0, $zero
/* 139A7C 8011B98C 0C049323 */  jal        func_menu_80124C8C
/* 139A80 8011B990 02002021 */   addu      $a0, $s0, $zero
/* 139A84 8011B994 8C460000 */  lw         $a2, 0x0($v0)
/* 139A88 8011B998 8C470004 */  lw         $a3, 0x4($v0)
/* 139A8C 8011B99C 8C480008 */  lw         $t0, 0x8($v0)
/* 139A90 8011B9A0 8C49000C */  lw         $t1, 0xC($v0)
/* 139A94 8011B9A4 AFA60010 */  sw         $a2, 0x10($sp)
/* 139A98 8011B9A8 AFA70014 */  sw         $a3, 0x14($sp)
/* 139A9C 8011B9AC AFA80018 */  sw         $t0, 0x18($sp)
/* 139AA0 8011B9B0 AFA9001C */  sw         $t1, 0x1C($sp)
/* 139AA4 8011B9B4 8FA20010 */  lw         $v0, 0x10($sp)
/* 139AA8 8011B9B8 04410002 */  bgez       $v0, .Lmenu_8011B9C4
/* 139AAC 8011B9BC 27A50010 */   addiu     $a1, $sp, 0x10
/* 139AB0 8011B9C0 AFA00010 */  sw         $zero, 0x10($sp)
.Lmenu_8011B9C4:
/* 139AB4 8011B9C4 96230026 */  lhu        $v1, 0x26($s1)
/* 139AB8 8011B9C8 8FA20018 */  lw         $v0, 0x18($sp)
/* 139ABC 8011B9CC 0062102A */  slt        $v0, $v1, $v0
/* 139AC0 8011B9D0 54400001 */  bnel       $v0, $zero, .Lmenu_8011B9D8
/* 139AC4 8011B9D4 AFA30018 */   sw        $v1, 0x18($sp)
.Lmenu_8011B9D8:
/* 139AC8 8011B9D8 8FA20014 */  lw         $v0, 0x14($sp)
/* 139ACC 8011B9DC 04420001 */  bltzl      $v0, .Lmenu_8011B9E4
/* 139AD0 8011B9E0 AFA00014 */   sw        $zero, 0x14($sp)
.Lmenu_8011B9E4:
/* 139AD4 8011B9E4 96230028 */  lhu        $v1, 0x28($s1)
/* 139AD8 8011B9E8 8FA2001C */  lw         $v0, 0x1C($sp)
/* 139ADC 8011B9EC 0062102A */  slt        $v0, $v1, $v0
/* 139AE0 8011B9F0 54400001 */  bnel       $v0, $zero, .Lmenu_8011B9F8
/* 139AE4 8011B9F4 AFA3001C */   sw        $v1, 0x1C($sp)
.Lmenu_8011B9F8:
/* 139AE8 8011B9F8 8E020080 */  lw         $v0, 0x80($s0)
/* 139AEC 8011B9FC 8C43011C */  lw         $v1, 0x11C($v0)
/* 139AF0 8011BA00 84640020 */  lh         $a0, 0x20($v1)
/* 139AF4 8011BA04 00442021 */  addu       $a0, $v0, $a0
/* 139AF8 8011BA08 8C620024 */  lw         $v0, 0x24($v1)
/* 139AFC 8011BA0C 0040F809 */  jalr       $v0
/* 139B00 8011BA10 00000000 */   nop
.Lmenu_8011BA14:
/* 139B04 8011BA14 8FBF0028 */  lw         $ra, 0x28($sp)
/* 139B08 8011BA18 8FB10024 */  lw         $s1, 0x24($sp)
/* 139B0C 8011BA1C 8FB00020 */  lw         $s0, 0x20($sp)
/* 139B10 8011BA20 03E00008 */  jr         $ra
/* 139B14 8011BA24 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011BA28
/* 139B18 8011BA28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 139B1C 8011BA2C AFB00010 */  sw         $s0, 0x10($sp)
/* 139B20 8011BA30 00808021 */  addu       $s0, $a0, $zero
/* 139B24 8011BA34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 139B28 8011BA38 8E020020 */  lw         $v0, 0x20($s0)
/* 139B2C 8011BA3C 8E030020 */  lw         $v1, 0x20($s0)
/* 139B30 8011BA40 8C420008 */  lw         $v0, 0x8($v0)
/* 139B34 8011BA44 AE020084 */  sw         $v0, 0x84($s0)
/* 139B38 8011BA48 8C62012C */  lw         $v0, 0x12C($v1)
/* 139B3C 8011BA4C 8E050080 */  lw         $a1, 0x80($s0)
/* 139B40 8011BA50 84440048 */  lh         $a0, 0x48($v0)
/* 139B44 8011BA54 8C42004C */  lw         $v0, 0x4C($v0)
/* 139B48 8011BA58 0040F809 */  jalr       $v0
/* 139B4C 8011BA5C 00642021 */   addu      $a0, $v1, $a0
/* 139B50 8011BA60 8E030020 */  lw         $v1, 0x20($s0)
/* 139B54 8011BA64 8C62012C */  lw         $v0, 0x12C($v1)
/* 139B58 8011BA68 844400C0 */  lh         $a0, 0xC0($v0)
/* 139B5C 8011BA6C 8C4200C4 */  lw         $v0, 0xC4($v0)
/* 139B60 8011BA70 0040F809 */  jalr       $v0
/* 139B64 8011BA74 00642021 */   addu      $a0, $v1, $a0
/* 139B68 8011BA78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 139B6C 8011BA7C 8FB00010 */  lw         $s0, 0x10($sp)
/* 139B70 8011BA80 03E00008 */  jr         $ra
/* 139B74 8011BA84 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011BA88
/* 139B78 8011BA88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 139B7C 8011BA8C AFB00010 */  sw         $s0, 0x10($sp)
/* 139B80 8011BA90 00808021 */  addu       $s0, $a0, $zero
/* 139B84 8011BA94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 139B88 8011BA98 8E050084 */  lw         $a1, 0x84($s0)
/* 139B8C 8011BA9C 10A0000E */  beqz       $a1, .Lmenu_8011BAD8
/* 139B90 8011BAA0 00000000 */   nop
/* 139B94 8011BAA4 8E020020 */  lw         $v0, 0x20($s0)
/* 139B98 8011BAA8 8C43012C */  lw         $v1, 0x12C($v0)
/* 139B9C 8011BAAC 84640048 */  lh         $a0, 0x48($v1)
/* 139BA0 8011BAB0 00442021 */  addu       $a0, $v0, $a0
/* 139BA4 8011BAB4 8C62004C */  lw         $v0, 0x4C($v1)
/* 139BA8 8011BAB8 0040F809 */  jalr       $v0
/* 139BAC 8011BABC 00000000 */   nop
/* 139BB0 8011BAC0 8E030020 */  lw         $v1, 0x20($s0)
/* 139BB4 8011BAC4 8C62012C */  lw         $v0, 0x12C($v1)
/* 139BB8 8011BAC8 844400C0 */  lh         $a0, 0xC0($v0)
/* 139BBC 8011BACC 8C4200C4 */  lw         $v0, 0xC4($v0)
/* 139BC0 8011BAD0 0040F809 */  jalr       $v0
/* 139BC4 8011BAD4 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011BAD8:
/* 139BC8 8011BAD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 139BCC 8011BADC 8FB00010 */  lw         $s0, 0x10($sp)
/* 139BD0 8011BAE0 03E00008 */  jr         $ra
/* 139BD4 8011BAE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011BAE8
/* 139BD8 8011BAE8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 139BDC 8011BAEC AFB20018 */  sw         $s2, 0x18($sp)
/* 139BE0 8011BAF0 00809021 */  addu       $s2, $a0, $zero
/* 139BE4 8011BAF4 3C028012 */  lui        $v0, %hi(D_80127180)
/* 139BE8 8011BAF8 8C447180 */  lw         $a0, %lo(D_80127180)($v0)
/* 139BEC 8011BAFC AFB50024 */  sw         $s5, 0x24($sp)
/* 139BF0 8011BB00 00A0A821 */  addu       $s5, $a1, $zero
/* 139BF4 8011BB04 AFBF0028 */  sw         $ra, 0x28($sp)
/* 139BF8 8011BB08 AFB40020 */  sw         $s4, 0x20($sp)
/* 139BFC 8011BB0C AFB3001C */  sw         $s3, 0x1C($sp)
/* 139C00 8011BB10 AFB10014 */  sw         $s1, 0x14($sp)
/* 139C04 8011BB14 AFB00010 */  sw         $s0, 0x10($sp)
/* 139C08 8011BB18 8EA20038 */  lw         $v0, 0x38($s5)
/* 139C0C 8011BB1C AE420060 */  sw         $v0, 0x60($s2)
/* 139C10 8011BB20 8EA20044 */  lw         $v0, 0x44($s5)
/* 139C14 8011BB24 0C01FB65 */  jal        func_8007ED94
/* 139C18 8011BB28 AE420064 */   sw        $v0, 0x64($s2)
/* 139C1C 8011BB2C 8E500060 */  lw         $s0, 0x60($s2)
/* 139C20 8011BB30 00102040 */  sll        $a0, $s0, 1
/* 139C24 8011BB34 00902021 */  addu       $a0, $a0, $s0
/* 139C28 8011BB38 00042080 */  sll        $a0, $a0, 2
/* 139C2C 8011BB3C 00902021 */  addu       $a0, $a0, $s0
/* 139C30 8011BB40 00042100 */  sll        $a0, $a0, 4
/* 139C34 8011BB44 0C00943C */  jal        func_800250F0
/* 139C38 8011BB48 2610FFFF */   addiu     $s0, $s0, -0x1
/* 139C3C 8011BB4C 00409821 */  addu       $s3, $v0, $zero
/* 139C40 8011BB50 06000007 */  bltz       $s0, .Lmenu_8011BB70
/* 139C44 8011BB54 02608821 */   addu      $s1, $s3, $zero
/* 139C48 8011BB58 2414FFFF */  addiu      $s4, $zero, -0x1
.Lmenu_8011BB5C:
/* 139C4C 8011BB5C 0C016038 */  jal        func_800580E0
/* 139C50 8011BB60 26240034 */   addiu     $a0, $s1, 0x34
/* 139C54 8011BB64 2610FFFF */  addiu      $s0, $s0, -0x1
/* 139C58 8011BB68 1614FFFC */  bne        $s0, $s4, .Lmenu_8011BB5C
/* 139C5C 8011BB6C 263100D0 */   addiu     $s1, $s1, 0xD0
.Lmenu_8011BB70:
/* 139C60 8011BB70 0C01FB72 */  jal        func_8007EDC8
/* 139C64 8011BB74 AE53007C */   sw        $s3, 0x7C($s2)
/* 139C68 8011BB78 8E42007C */  lw         $v0, 0x7C($s2)
/* 139C6C 8011BB7C 14400006 */  bnez       $v0, .Lmenu_8011BB98
/* 139C70 8011BB80 3C04800D */   lui       $a0, %hi(D_menu_800D0588)
/* 139C74 8011BB84 24840588 */  addiu      $a0, $a0, %lo(D_menu_800D0588)
/* 139C78 8011BB88 00002821 */  addu       $a1, $zero, $zero
/* 139C7C 8011BB8C 00A03021 */  addu       $a2, $a1, $zero
/* 139C80 8011BB90 0C011ACF */  jal        func_80046B3C
/* 139C84 8011BB94 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_8011BB98:
/* 139C88 8011BB98 8E420060 */  lw         $v0, 0x60($s2)
/* 139C8C 8011BB9C 8E43007C */  lw         $v1, 0x7C($s2)
/* 139C90 8011BBA0 18400020 */  blez       $v0, .Lmenu_8011BC24
/* 139C94 8011BBA4 00008821 */   addu      $s1, $zero, $zero
/* 139C98 8011BBA8 3C13800D */  lui        $s3, %hi(D_menu_800D0588)
/* 139C9C 8011BBAC 24700010 */  addiu      $s0, $v1, 0x10
.Lmenu_8011BBB0:
/* 139CA0 8011BBB0 8E43001C */  lw         $v1, 0x1C($s2)
/* 139CA4 8011BBB4 8C620000 */  lw         $v0, 0x0($v1)
/* 139CA8 8011BBB8 84440030 */  lh         $a0, 0x30($v0)
/* 139CAC 8011BBBC 8C420034 */  lw         $v0, 0x34($v0)
/* 139CB0 8011BBC0 0040F809 */  jalr       $v0
/* 139CB4 8011BBC4 00642021 */   addu      $a0, $v1, $a0
/* 139CB8 8011BBC8 14400006 */  bnez       $v0, .Lmenu_8011BBE4
/* 139CBC 8011BBCC AE02001C */   sw        $v0, 0x1C($s0)
/* 139CC0 8011BBD0 26640588 */  addiu      $a0, $s3, %lo(D_menu_800D0588)
/* 139CC4 8011BBD4 00002821 */  addu       $a1, $zero, $zero
/* 139CC8 8011BBD8 00A03021 */  addu       $a2, $a1, $zero
/* 139CCC 8011BBDC 0C011ACF */  jal        func_80046B3C
/* 139CD0 8011BBE0 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_8011BBE4:
/* 139CD4 8011BBE4 00111100 */  sll        $v0, $s1, 4
/* 139CD8 8011BBE8 8EA3003C */  lw         $v1, 0x3C($s5)
/* 139CDC 8011BBEC 26310001 */  addiu      $s1, $s1, 0x1
/* 139CE0 8011BBF0 00431021 */  addu       $v0, $v0, $v1
/* 139CE4 8011BBF4 8C480000 */  lw         $t0, 0x0($v0)
/* 139CE8 8011BBF8 8C490004 */  lw         $t1, 0x4($v0)
/* 139CEC 8011BBFC 8C4A0008 */  lw         $t2, 0x8($v0)
/* 139CF0 8011BC00 8C4B000C */  lw         $t3, 0xC($v0)
/* 139CF4 8011BC04 AE080000 */  sw         $t0, 0x0($s0)
/* 139CF8 8011BC08 AE090004 */  sw         $t1, 0x4($s0)
/* 139CFC 8011BC0C AE0A0008 */  sw         $t2, 0x8($s0)
/* 139D00 8011BC10 AE0B000C */  sw         $t3, 0xC($s0)
/* 139D04 8011BC14 8E420060 */  lw         $v0, 0x60($s2)
/* 139D08 8011BC18 0222102A */  slt        $v0, $s1, $v0
/* 139D0C 8011BC1C 1440FFE4 */  bnez       $v0, .Lmenu_8011BBB0
/* 139D10 8011BC20 261000D0 */   addiu     $s0, $s0, 0xD0
.Lmenu_8011BC24:
/* 139D14 8011BC24 0C046F14 */  jal        func_menu_8011BC50
/* 139D18 8011BC28 02402021 */   addu      $a0, $s2, $zero
/* 139D1C 8011BC2C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 139D20 8011BC30 8FB50024 */  lw         $s5, 0x24($sp)
/* 139D24 8011BC34 8FB40020 */  lw         $s4, 0x20($sp)
/* 139D28 8011BC38 8FB3001C */  lw         $s3, 0x1C($sp)
/* 139D2C 8011BC3C 8FB20018 */  lw         $s2, 0x18($sp)
/* 139D30 8011BC40 8FB10014 */  lw         $s1, 0x14($sp)
/* 139D34 8011BC44 8FB00010 */  lw         $s0, 0x10($sp)
/* 139D38 8011BC48 03E00008 */  jr         $ra
/* 139D3C 8011BC4C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011BC50
/* 139D40 8011BC50 00803021 */  addu       $a2, $a0, $zero
/* 139D44 8011BC54 00004021 */  addu       $t0, $zero, $zero
/* 139D48 8011BC58 8CC7007C */  lw         $a3, 0x7C($a2)
/* 139D4C 8011BC5C 8CC40038 */  lw         $a0, 0x38($a2)
/* 139D50 8011BC60 8CC30030 */  lw         $v1, 0x30($a2)
/* 139D54 8011BC64 8CC20080 */  lw         $v0, 0x80($a2)
/* 139D58 8011BC68 00832023 */  subu       $a0, $a0, $v1
/* 139D5C 8011BC6C C4400014 */  lwc1       $f0, 0x14($v0)
/* 139D60 8011BC70 44841000 */  mtc1       $a0, $f2
/* 139D64 8011BC74 468010A0 */  cvt.s.w    $f2, $f2
/* 139D68 8011BC78 46000000 */  add.s      $f0, $f0, $f0
/* 139D6C 8011BC7C 00042043 */  sra        $a0, $a0, 1
/* 139D70 8011BC80 8CC30034 */  lw         $v1, 0x34($a2)
/* 139D74 8011BC84 46020003 */  div.s      $f0, $f0, $f2
/* 139D78 8011BC88 E4C00040 */  swc1       $f0, 0x40($a2)
/* 139D7C 8011BC8C C4400018 */  lwc1       $f0, 0x18($v0)
/* 139D80 8011BC90 8CC2003C */  lw         $v0, 0x3C($a2)
/* 139D84 8011BC94 00042023 */  negu       $a0, $a0
/* 139D88 8011BC98 00431023 */  subu       $v0, $v0, $v1
/* 139D8C 8011BC9C 46000000 */  add.s      $f0, $f0, $f0
/* 139D90 8011BCA0 44821000 */  mtc1       $v0, $f2
/* 139D94 8011BCA4 468010A0 */  cvt.s.w    $f2, $f2
/* 139D98 8011BCA8 8CC20060 */  lw         $v0, 0x60($a2)
/* 139D9C 8011BCAC 46020003 */  div.s      $f0, $f0, $f2
/* 139DA0 8011BCB0 18400032 */  blez       $v0, .Lmenu_8011BD7C
/* 139DA4 8011BCB4 E4C00044 */   swc1      $f0, 0x44($a2)
/* 139DA8 8011BCB8 3C01800D */  lui        $at, %hi(D_menu_800D058C)
/* 139DAC 8011BCBC C426058C */  lwc1       $f6, %lo(D_menu_800D058C)($at)
/* 139DB0 8011BCC0 24E50028 */  addiu      $a1, $a3, 0x28
.Lmenu_8011BCC4:
/* 139DB4 8011BCC4 8CA2FFE8 */  lw         $v0, -0x18($a1)
/* 139DB8 8011BCC8 C4C00040 */  lwc1       $f0, 0x40($a2)
/* 139DBC 8011BCCC 00821021 */  addu       $v0, $a0, $v0
/* 139DC0 8011BCD0 44822000 */  mtc1       $v0, $f4
/* 139DC4 8011BCD4 46802120 */  cvt.s.w    $f4, $f4
/* 139DC8 8011BCD8 46002102 */  mul.s      $f4, $f4, $f0
/* 139DCC 8011BCDC E4E40000 */  swc1       $f4, 0x0($a3)
/* 139DD0 8011BCE0 8CA3FFF0 */  lw         $v1, -0x10($a1)
/* 139DD4 8011BCE4 8CA2FFE8 */  lw         $v0, -0x18($a1)
/* 139DD8 8011BCE8 C4C20040 */  lwc1       $f2, 0x40($a2)
/* 139DDC 8011BCEC 00621823 */  subu       $v1, $v1, $v0
/* 139DE0 8011BCF0 44830000 */  mtc1       $v1, $f0
/* 139DE4 8011BCF4 46800020 */  cvt.s.w    $f0, $f0
/* 139DE8 8011BCF8 46020002 */  mul.s      $f0, $f0, $f2
/* 139DEC 8011BCFC 8CA2FFF4 */  lw         $v0, -0xC($a1)
/* 139DF0 8011BD00 8CA3FFEC */  lw         $v1, -0x14($a1)
/* 139DF4 8011BD04 46002100 */  add.s      $f4, $f4, $f0
/* 139DF8 8011BD08 00431023 */  subu       $v0, $v0, $v1
/* 139DFC 8011BD0C E4A4FFE0 */  swc1       $f4, -0x20($a1)
/* 139E00 8011BD10 C4C20044 */  lwc1       $f2, 0x44($a2)
/* 139E04 8011BD14 44820000 */  mtc1       $v0, $f0
/* 139E08 8011BD18 46800020 */  cvt.s.w    $f0, $f0
/* 139E0C 8011BD1C 46020002 */  mul.s      $f0, $f0, $f2
/* 139E10 8011BD20 ACA0FFE4 */  sw         $zero, -0x1C($a1)
/* 139E14 8011BD24 E4A0FFDC */  swc1       $f0, -0x24($a1)
/* 139E18 8011BD28 C4E00000 */  lwc1       $f0, 0x0($a3)
/* 139E1C 8011BD2C 46002086 */  mov.s      $f2, $f4
/* 139E20 8011BD30 46001080 */  add.s      $f2, $f2, $f0
/* 139E24 8011BD34 46061082 */  mul.s      $f2, $f2, $f6
/* 139E28 8011BD38 ACA0FFFC */  sw         $zero, -0x4($a1)
/* 139E2C 8011BD3C E4A2FFF8 */  swc1       $f2, -0x8($a1)
/* 139E30 8011BD40 C4E00000 */  lwc1       $f0, 0x0($a3)
/* 139E34 8011BD44 46002086 */  mov.s      $f2, $f4
/* 139E38 8011BD48 46001081 */  sub.s      $f2, $f2, $f0
/* 139E3C 8011BD4C C4A0FFDC */  lwc1       $f0, -0x24($a1)
/* 139E40 8011BD50 4602003C */  c.lt.s     $f0, $f2
/* 139E44 8011BD54 00000000 */  nop
/* 139E48 8011BD58 45020002 */  bc1fl      .Lmenu_8011BD64
/* 139E4C 8011BD5C E4A20000 */   swc1      $f2, 0x0($a1)
/* 139E50 8011BD60 E4A00000 */  swc1       $f0, 0x0($a1)
.Lmenu_8011BD64:
/* 139E54 8011BD64 25080001 */  addiu      $t0, $t0, 0x1
/* 139E58 8011BD68 24A500D0 */  addiu      $a1, $a1, 0xD0
/* 139E5C 8011BD6C 8CC20060 */  lw         $v0, 0x60($a2)
/* 139E60 8011BD70 0102102A */  slt        $v0, $t0, $v0
/* 139E64 8011BD74 1440FFD3 */  bnez       $v0, .Lmenu_8011BCC4
/* 139E68 8011BD78 24E700D0 */   addiu     $a3, $a3, 0xD0
.Lmenu_8011BD7C:
/* 139E6C 8011BD7C 03E00008 */  jr         $ra
/* 139E70 8011BD80 00000000 */   nop

glabel func_menu_8011BD84
/* 139E74 8011BD84 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 139E78 8011BD88 AFB00020 */  sw         $s0, 0x20($sp)
/* 139E7C 8011BD8C 00A08021 */  addu       $s0, $a1, $zero
/* 139E80 8011BD90 26040034 */  addiu      $a0, $s0, 0x34
/* 139E84 8011BD94 00002821 */  addu       $a1, $zero, $zero
/* 139E88 8011BD98 27A60010 */  addiu      $a2, $sp, 0x10
/* 139E8C 8011BD9C AFBF0024 */  sw         $ra, 0x24($sp)
/* 139E90 8011BDA0 0C0161E1 */  jal        func_80058784
/* 139E94 8011BDA4 26070030 */   addiu     $a3, $s0, 0x30
/* 139E98 8011BDA8 C6000030 */  lwc1       $f0, 0x30($s0)
/* 139E9C 8011BDAC 46000000 */  add.s      $f0, $f0, $f0
/* 139EA0 8011BDB0 E6000030 */  swc1       $f0, 0x30($s0)
/* 139EA4 8011BDB4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 139EA8 8011BDB8 8FB00020 */  lw         $s0, 0x20($sp)
/* 139EAC 8011BDBC 03E00008 */  jr         $ra
/* 139EB0 8011BDC0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011BDC4
/* 139EB4 8011BDC4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 139EB8 8011BDC8 AFBF0054 */  sw         $ra, 0x54($sp)
/* 139EBC 8011BDCC AFB20050 */  sw         $s2, 0x50($sp)
/* 139EC0 8011BDD0 AFB1004C */  sw         $s1, 0x4C($sp)
/* 139EC4 8011BDD4 AFB00048 */  sw         $s0, 0x48($sp)
/* 139EC8 8011BDD8 F7B60060 */  sdc1       $f22, 0x60($sp)
/* 139ECC 8011BDDC F7B40058 */  sdc1       $f20, 0x58($sp)
/* 139ED0 8011BDE0 C4A40030 */  lwc1       $f4, 0x30($a1)
/* 139ED4 8011BDE4 C4A20028 */  lwc1       $f2, 0x28($a1)
/* 139ED8 8011BDE8 46022581 */  sub.s      $f22, $f4, $f2
/* 139EDC 8011BDEC 44800000 */  mtc1       $zero, $f0
/* 139EE0 8011BDF0 4616003C */  c.lt.s     $f0, $f22
/* 139EE4 8011BDF4 00000000 */  nop
/* 139EE8 8011BDF8 45000005 */  bc1f       .Lmenu_8011BE10
/* 139EEC 8011BDFC 00C09021 */   addu      $s2, $a2, $zero
/* 139EF0 8011BE00 C48000B4 */  lwc1       $f0, 0xB4($a0)
/* 139EF4 8011BE04 46020003 */  div.s      $f0, $f0, $f2
/* 139EF8 8011BE08 46160002 */  mul.s      $f0, $f0, $f22
/* 139EFC 8011BE0C 46000587 */  neg.s      $f22, $f0
.Lmenu_8011BE10:
/* 139F00 8011BE10 3C01800D */  lui        $at, %hi(D_menu_800D0590)
/* 139F04 8011BE14 C4220590 */  lwc1       $f2, %lo(D_menu_800D0590)($at)
/* 139F08 8011BE18 46022000 */  add.s      $f0, $f4, $f2
/* 139F0C 8011BE1C 46020000 */  add.s      $f0, $f0, $f2
/* 139F10 8011BE20 46000007 */  neg.s      $f0, $f0
/* 139F14 8011BE24 4616003C */  c.lt.s     $f0, $f22
/* 139F18 8011BE28 00000000 */  nop
/* 139F1C 8011BE2C 45030001 */  bc1tl      .Lmenu_8011BE34
/* 139F20 8011BE30 46000586 */   mov.s     $f22, $f0
.Lmenu_8011BE34:
/* 139F24 8011BE34 C48000B4 */  lwc1       $f0, 0xB4($a0)
/* 139F28 8011BE38 E7A00010 */  swc1       $f0, 0x10($sp)
/* 139F2C 8011BE3C C4A00020 */  lwc1       $f0, 0x20($a1)
/* 139F30 8011BE40 E7A00014 */  swc1       $f0, 0x14($sp)
/* 139F34 8011BE44 C4A00024 */  lwc1       $f0, 0x24($a1)
/* 139F38 8011BE48 24B00034 */  addiu      $s0, $a1, 0x34
/* 139F3C 8011BE4C E7A00018 */  swc1       $f0, 0x18($sp)
/* 139F40 8011BE50 C48000B4 */  lwc1       $f0, 0xB4($a0)
/* 139F44 8011BE54 27B10030 */  addiu      $s1, $sp, 0x30
/* 139F48 8011BE58 46160501 */  sub.s      $f20, $f0, $f22
/* 139F4C 8011BE5C 02202821 */  addu       $a1, $s1, $zero
/* 139F50 8011BE60 02002021 */  addu       $a0, $s0, $zero
/* 139F54 8011BE64 0C01595B */  jal        func_8005656C
/* 139F58 8011BE68 4600A503 */   div.s     $f20, $f20, $f0
/* 139F5C 8011BE6C E6560000 */  swc1       $f22, 0x0($s2)
/* 139F60 8011BE70 C7A00014 */  lwc1       $f0, 0x14($sp)
/* 139F64 8011BE74 46140002 */  mul.s      $f0, $f0, $f20
/* 139F68 8011BE78 E6400004 */  swc1       $f0, 0x4($s2)
/* 139F6C 8011BE7C C7A00018 */  lwc1       $f0, 0x18($sp)
/* 139F70 8011BE80 46140002 */  mul.s      $f0, $f0, $f20
/* 139F74 8011BE84 02002021 */  addu       $a0, $s0, $zero
/* 139F78 8011BE88 02402821 */  addu       $a1, $s2, $zero
/* 139F7C 8011BE8C 0C015962 */  jal        func_80056588
/* 139F80 8011BE90 E6400008 */   swc1      $f0, 0x8($s2)
/* 139F84 8011BE94 02002021 */  addu       $a0, $s0, $zero
/* 139F88 8011BE98 00002821 */  addu       $a1, $zero, $zero
/* 139F8C 8011BE9C 27A60020 */  addiu      $a2, $sp, 0x20
/* 139F90 8011BEA0 0C0161E1 */  jal        func_80058784
/* 139F94 8011BEA4 27A70040 */   addiu     $a3, $sp, 0x40
/* 139F98 8011BEA8 C7A20020 */  lwc1       $f2, 0x20($sp)
/* 139F9C 8011BEAC C6400000 */  lwc1       $f0, 0x0($s2)
/* 139FA0 8011BEB0 46001081 */  sub.s      $f2, $f2, $f0
/* 139FA4 8011BEB4 46020001 */  sub.s      $f0, $f0, $f2
/* 139FA8 8011BEB8 E6400000 */  swc1       $f0, 0x0($s2)
/* 139FAC 8011BEBC C7A20024 */  lwc1       $f2, 0x24($sp)
/* 139FB0 8011BEC0 C6400004 */  lwc1       $f0, 0x4($s2)
/* 139FB4 8011BEC4 46001081 */  sub.s      $f2, $f2, $f0
/* 139FB8 8011BEC8 46020001 */  sub.s      $f0, $f0, $f2
/* 139FBC 8011BECC C6420008 */  lwc1       $f2, 0x8($s2)
/* 139FC0 8011BED0 E6400004 */  swc1       $f0, 0x4($s2)
/* 139FC4 8011BED4 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 139FC8 8011BED8 46020001 */  sub.s      $f0, $f0, $f2
/* 139FCC 8011BEDC 46001081 */  sub.s      $f2, $f2, $f0
/* 139FD0 8011BEE0 02002021 */  addu       $a0, $s0, $zero
/* 139FD4 8011BEE4 02202821 */  addu       $a1, $s1, $zero
/* 139FD8 8011BEE8 0C015962 */  jal        func_80056588
/* 139FDC 8011BEEC E6420008 */   swc1      $f2, 0x8($s2)
/* 139FE0 8011BEF0 8FBF0054 */  lw         $ra, 0x54($sp)
/* 139FE4 8011BEF4 8FB20050 */  lw         $s2, 0x50($sp)
/* 139FE8 8011BEF8 8FB1004C */  lw         $s1, 0x4C($sp)
/* 139FEC 8011BEFC 8FB00048 */  lw         $s0, 0x48($sp)
/* 139FF0 8011BF00 D7B60060 */  ldc1       $f22, 0x60($sp)
/* 139FF4 8011BF04 D7B40058 */  ldc1       $f20, 0x58($sp)
/* 139FF8 8011BF08 03E00008 */  jr         $ra
/* 139FFC 8011BF0C 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_menu_8011BF10
/* 13A000 8011BF10 00051840 */  sll        $v1, $a1, 1
/* 13A004 8011BF14 00651821 */  addu       $v1, $v1, $a1
/* 13A008 8011BF18 00031880 */  sll        $v1, $v1, 2
/* 13A00C 8011BF1C 00651821 */  addu       $v1, $v1, $a1
/* 13A010 8011BF20 8C82007C */  lw         $v0, 0x7C($a0)
/* 13A014 8011BF24 00031900 */  sll        $v1, $v1, 4
/* 13A018 8011BF28 00431021 */  addu       $v0, $v0, $v1
/* 13A01C 8011BF2C 03E00008 */  jr         $ra
/* 13A020 8011BF30 24420034 */   addiu     $v0, $v0, 0x34

glabel func_menu_8011BF34
/* 13A024 8011BF34 00051040 */  sll        $v0, $a1, 1
/* 13A028 8011BF38 00451021 */  addu       $v0, $v0, $a1
/* 13A02C 8011BF3C 00021080 */  sll        $v0, $v0, 2
/* 13A030 8011BF40 00451021 */  addu       $v0, $v0, $a1
/* 13A034 8011BF44 8C83007C */  lw         $v1, 0x7C($a0)
/* 13A038 8011BF48 00021100 */  sll        $v0, $v0, 4
/* 13A03C 8011BF4C 00431021 */  addu       $v0, $v0, $v1
/* 13A040 8011BF50 8C42002C */  lw         $v0, 0x2C($v0)
/* 13A044 8011BF54 03E00008 */  jr         $ra
/* 13A048 8011BF58 00000000 */   nop

glabel func_menu_8011BF5C
/* 13A04C 8011BF5C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13A050 8011BF60 AFB10024 */  sw         $s1, 0x24($sp)
/* 13A054 8011BF64 00808821 */  addu       $s1, $a0, $zero
/* 13A058 8011BF68 00051040 */  sll        $v0, $a1, 1
/* 13A05C 8011BF6C 00451021 */  addu       $v0, $v0, $a1
/* 13A060 8011BF70 00021080 */  sll        $v0, $v0, 2
/* 13A064 8011BF74 00451021 */  addu       $v0, $v0, $a1
/* 13A068 8011BF78 AFBF0028 */  sw         $ra, 0x28($sp)
/* 13A06C 8011BF7C AFB00020 */  sw         $s0, 0x20($sp)
/* 13A070 8011BF80 8E30007C */  lw         $s0, 0x7C($s1)
/* 13A074 8011BF84 00021100 */  sll        $v0, $v0, 4
/* 13A078 8011BF88 02028021 */  addu       $s0, $s0, $v0
/* 13A07C 8011BF8C 0C046F61 */  jal        func_menu_8011BD84
/* 13A080 8011BF90 02002821 */   addu      $a1, $s0, $zero
/* 13A084 8011BF94 02202021 */  addu       $a0, $s1, $zero
/* 13A088 8011BF98 02002821 */  addu       $a1, $s0, $zero
/* 13A08C 8011BF9C 0C046F71 */  jal        func_menu_8011BDC4
/* 13A090 8011BFA0 27A60010 */   addiu     $a2, $sp, 0x10
/* 13A094 8011BFA4 26110034 */  addiu      $s1, $s0, 0x34
/* 13A098 8011BFA8 02202021 */  addu       $a0, $s1, $zero
/* 13A09C 8011BFAC 0C015962 */  jal        func_80056588
/* 13A0A0 8011BFB0 27A50010 */   addiu     $a1, $sp, 0x10
/* 13A0A4 8011BFB4 8E220078 */  lw         $v0, 0x78($s1)
/* 13A0A8 8011BFB8 AE02002C */  sw         $v0, 0x2C($s0)
/* 13A0AC 8011BFBC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 13A0B0 8011BFC0 8FB10024 */  lw         $s1, 0x24($sp)
/* 13A0B4 8011BFC4 8FB00020 */  lw         $s0, 0x20($sp)
/* 13A0B8 8011BFC8 03E00008 */  jr         $ra
/* 13A0BC 8011BFCC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011BFD0
/* 13A0C0 8011BFD0 8C820060 */  lw         $v0, 0x60($a0)
/* 13A0C4 8011BFD4 8C83007C */  lw         $v1, 0x7C($a0)
/* 13A0C8 8011BFD8 1840000F */  blez       $v0, .Lmenu_8011C018
/* 13A0CC 8011BFDC 00003821 */   addu      $a3, $zero, $zero
/* 13A0D0 8011BFE0 246300CC */  addiu      $v1, $v1, 0xCC
.Lmenu_8011BFE4:
/* 13A0D4 8011BFE4 24E70001 */  addiu      $a3, $a3, 0x1
/* 13A0D8 8011BFE8 88A80000 */  lwl        $t0, 0x0($a1)
/* 13A0DC 8011BFEC 98A80003 */  lwr        $t0, 0x3($a1)
/* 13A0E0 8011BFF0 A868FFFC */  swl        $t0, -0x4($v1)
/* 13A0E4 8011BFF4 B868FFFF */  swr        $t0, -0x1($v1)
/* 13A0E8 8011BFF8 88C80000 */  lwl        $t0, 0x0($a2)
/* 13A0EC 8011BFFC 98C80003 */  lwr        $t0, 0x3($a2)
/* 13A0F0 8011C000 A8680000 */  swl        $t0, 0x0($v1)
/* 13A0F4 8011C004 B8680003 */  swr        $t0, 0x3($v1)
/* 13A0F8 8011C008 8C820060 */  lw         $v0, 0x60($a0)
/* 13A0FC 8011C00C 00E2102A */  slt        $v0, $a3, $v0
/* 13A100 8011C010 1440FFF4 */  bnez       $v0, .Lmenu_8011BFE4
/* 13A104 8011C014 246300D0 */   addiu     $v1, $v1, 0xD0
.Lmenu_8011C018:
/* 13A108 8011C018 03E00008 */  jr         $ra
/* 13A10C 8011C01C 00000000 */   nop

glabel func_menu_8011C020
/* 13A110 8011C020 8C830064 */  lw         $v1, 0x64($a0)
/* 13A114 8011C024 00031040 */  sll        $v0, $v1, 1
/* 13A118 8011C028 00431021 */  addu       $v0, $v0, $v1
/* 13A11C 8011C02C 00021080 */  sll        $v0, $v0, 2
/* 13A120 8011C030 00431021 */  addu       $v0, $v0, $v1
/* 13A124 8011C034 8C83007C */  lw         $v1, 0x7C($a0)
/* 13A128 8011C038 00021100 */  sll        $v0, $v0, 4
/* 13A12C 8011C03C 00621821 */  addu       $v1, $v1, $v0
/* 13A130 8011C040 88A70000 */  lwl        $a3, 0x0($a1)
/* 13A134 8011C044 98A70003 */  lwr        $a3, 0x3($a1)
/* 13A138 8011C048 A86700C8 */  swl        $a3, 0xC8($v1)
/* 13A13C 8011C04C B86700CB */  swr        $a3, 0xCB($v1)
/* 13A140 8011C050 88C70000 */  lwl        $a3, 0x0($a2)
/* 13A144 8011C054 98C70003 */  lwr        $a3, 0x3($a2)
/* 13A148 8011C058 A86700CC */  swl        $a3, 0xCC($v1)
/* 13A14C 8011C05C B86700CF */  swr        $a3, 0xCF($v1)
/* 13A150 8011C060 03E00008 */  jr         $ra
/* 13A154 8011C064 00000000 */   nop

glabel func_menu_8011C068
/* 13A158 8011C068 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 13A15C 8011C06C AFB60048 */  sw         $s6, 0x48($sp)
/* 13A160 8011C070 0080B021 */  addu       $s6, $a0, $zero
/* 13A164 8011C074 AFB3003C */  sw         $s3, 0x3C($sp)
/* 13A168 8011C078 00009821 */  addu       $s3, $zero, $zero
/* 13A16C 8011C07C AFB50044 */  sw         $s5, 0x44($sp)
/* 13A170 8011C080 27B50020 */  addiu      $s5, $sp, 0x20
/* 13A174 8011C084 AFB40040 */  sw         $s4, 0x40($sp)
/* 13A178 8011C088 27B40010 */  addiu      $s4, $sp, 0x10
/* 13A17C 8011C08C AFBF004C */  sw         $ra, 0x4C($sp)
/* 13A180 8011C090 AFB20038 */  sw         $s2, 0x38($sp)
/* 13A184 8011C094 AFB10034 */  sw         $s1, 0x34($sp)
/* 13A188 8011C098 AFB00030 */  sw         $s0, 0x30($sp)
/* 13A18C 8011C09C 8ED1007C */  lw         $s1, 0x7C($s6)
/* 13A190 8011C0A0 44800000 */  mtc1       $zero, $f0
/* 13A194 8011C0A4 26300054 */  addiu      $s0, $s1, 0x54
/* 13A198 8011C0A8 E7A00018 */  swc1       $f0, 0x18($sp)
/* 13A19C 8011C0AC E7A00014 */  swc1       $f0, 0x14($sp)
/* 13A1A0 8011C0B0 E7A00010 */  swc1       $f0, 0x10($sp)
.Lmenu_8011C0B4:
/* 13A1A4 8011C0B4 8EC20060 */  lw         $v0, 0x60($s6)
/* 13A1A8 8011C0B8 0262102A */  slt        $v0, $s3, $v0
/* 13A1AC 8011C0BC 10400016 */  beqz       $v0, .Lmenu_8011C118
/* 13A1B0 8011C0C0 00000000 */   nop
/* 13A1B4 8011C0C4 8E02003C */  lw         $v0, 0x3C($s0)
/* 13A1B8 8011C0C8 30420001 */  andi       $v0, $v0, 0x1
/* 13A1BC 8011C0CC 1040000E */  beqz       $v0, .Lmenu_8011C108
/* 13A1C0 8011C0D0 26320034 */   addiu     $s2, $s1, 0x34
/* 13A1C4 8011C0D4 02C02021 */  addu       $a0, $s6, $zero
/* 13A1C8 8011C0D8 02202821 */  addu       $a1, $s1, $zero
/* 13A1CC 8011C0DC 0C046F71 */  jal        func_menu_8011BDC4
/* 13A1D0 8011C0E0 02A03021 */   addu      $a2, $s5, $zero
/* 13A1D4 8011C0E4 02402021 */  addu       $a0, $s2, $zero
/* 13A1D8 8011C0E8 0C015962 */  jal        func_80056588
/* 13A1DC 8011C0EC 02A02821 */   addu      $a1, $s5, $zero
/* 13A1E0 8011C0F0 C7A00010 */  lwc1       $f0, 0x10($sp)
/* 13A1E4 8011C0F4 E600FFF8 */  swc1       $f0, -0x8($s0)
/* 13A1E8 8011C0F8 C6800004 */  lwc1       $f0, 0x4($s4)
/* 13A1EC 8011C0FC E600FFFC */  swc1       $f0, -0x4($s0)
/* 13A1F0 8011C100 C6800008 */  lwc1       $f0, 0x8($s4)
/* 13A1F4 8011C104 E6000000 */  swc1       $f0, 0x0($s0)
.Lmenu_8011C108:
/* 13A1F8 8011C108 26730001 */  addiu      $s3, $s3, 0x1
/* 13A1FC 8011C10C 261000D0 */  addiu      $s0, $s0, 0xD0
/* 13A200 8011C110 0804702D */  j          .Lmenu_8011C0B4
/* 13A204 8011C114 263100D0 */   addiu     $s1, $s1, 0xD0
.Lmenu_8011C118:
/* 13A208 8011C118 8FBF004C */  lw         $ra, 0x4C($sp)
/* 13A20C 8011C11C 8FB60048 */  lw         $s6, 0x48($sp)
/* 13A210 8011C120 8FB50044 */  lw         $s5, 0x44($sp)
/* 13A214 8011C124 8FB40040 */  lw         $s4, 0x40($sp)
/* 13A218 8011C128 8FB3003C */  lw         $s3, 0x3C($sp)
/* 13A21C 8011C12C 8FB20038 */  lw         $s2, 0x38($sp)
/* 13A220 8011C130 8FB10034 */  lw         $s1, 0x34($sp)
/* 13A224 8011C134 8FB00030 */  lw         $s0, 0x30($sp)
/* 13A228 8011C138 03E00008 */  jr         $ra
/* 13A22C 8011C13C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_8011C140
/* 13A230 8011C140 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 13A234 8011C144 AFB20048 */  sw         $s2, 0x48($sp)
/* 13A238 8011C148 00809021 */  addu       $s2, $a0, $zero
/* 13A23C 8011C14C AFB3004C */  sw         $s3, 0x4C($sp)
/* 13A240 8011C150 00009821 */  addu       $s3, $zero, $zero
/* 13A244 8011C154 AFB40050 */  sw         $s4, 0x50($sp)
/* 13A248 8011C158 27B40010 */  addiu      $s4, $sp, 0x10
/* 13A24C 8011C15C AFBF0054 */  sw         $ra, 0x54($sp)
/* 13A250 8011C160 AFB10044 */  sw         $s1, 0x44($sp)
/* 13A254 8011C164 AFB00040 */  sw         $s0, 0x40($sp)
/* 13A258 8011C168 8E51007C */  lw         $s1, 0x7C($s2)
/* 13A25C 8011C16C 8E420058 */  lw         $v0, 0x58($s2)
/* 13A260 8011C170 26300054 */  addiu      $s0, $s1, 0x54
/* 13A264 8011C174 8C43000C */  lw         $v1, 0xC($v0)
/* 13A268 8011C178 24020001 */  addiu      $v0, $zero, 0x1
/* 13A26C 8011C17C AE420070 */  sw         $v0, 0x70($s2)
/* 13A270 8011C180 AE430074 */  sw         $v1, 0x74($s2)
.Lmenu_8011C184:
/* 13A274 8011C184 8E420060 */  lw         $v0, 0x60($s2)
/* 13A278 8011C188 0262102A */  slt        $v0, $s3, $v0
/* 13A27C 8011C18C 10400029 */  beqz       $v0, .Lmenu_8011C234
/* 13A280 8011C190 00000000 */   nop
/* 13A284 8011C194 8E02003C */  lw         $v0, 0x3C($s0)
/* 13A288 8011C198 30420001 */  andi       $v0, $v0, 0x1
/* 13A28C 8011C19C 10400021 */  beqz       $v0, .Lmenu_8011C224
/* 13A290 8011C1A0 26240034 */   addiu     $a0, $s1, 0x34
/* 13A294 8011C1A4 0C01595B */  jal        func_8005656C
/* 13A298 8011C1A8 27A50020 */   addiu     $a1, $sp, 0x20
/* 13A29C 8011C1AC 02402021 */  addu       $a0, $s2, $zero
/* 13A2A0 8011C1B0 02202821 */  addu       $a1, $s1, $zero
/* 13A2A4 8011C1B4 0C046F71 */  jal        func_menu_8011BDC4
/* 13A2A8 8011C1B8 27A60030 */   addiu     $a2, $sp, 0x30
/* 13A2AC 8011C1BC C7A60030 */  lwc1       $f6, 0x30($sp)
/* 13A2B0 8011C1C0 C7A00020 */  lwc1       $f0, 0x20($sp)
/* 13A2B4 8011C1C4 C7A20024 */  lwc1       $f2, 0x24($sp)
/* 13A2B8 8011C1C8 46003181 */  sub.s      $f6, $f6, $f0
/* 13A2BC 8011C1CC C7A40028 */  lwc1       $f4, 0x28($sp)
/* 13A2C0 8011C1D0 C6400074 */  lwc1       $f0, 0x74($s2)
/* 13A2C4 8011C1D4 46800020 */  cvt.s.w    $f0, $f0
/* 13A2C8 8011C1D8 46003183 */  div.s      $f6, $f6, $f0
/* 13A2CC 8011C1DC C7A00034 */  lwc1       $f0, 0x34($sp)
/* 13A2D0 8011C1E0 E7A60010 */  swc1       $f6, 0x10($sp)
/* 13A2D4 8011C1E4 46020001 */  sub.s      $f0, $f0, $f2
/* 13A2D8 8011C1E8 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 13A2DC 8011C1EC C6480074 */  lwc1       $f8, 0x74($s2)
/* 13A2E0 8011C1F0 46804220 */  cvt.s.w    $f8, $f8
/* 13A2E4 8011C1F4 46041081 */  sub.s      $f2, $f2, $f4
/* 13A2E8 8011C1F8 46080003 */  div.s      $f0, $f0, $f8
/* 13A2EC 8011C1FC E7A00014 */  swc1       $f0, 0x14($sp)
/* 13A2F0 8011C200 C6400074 */  lwc1       $f0, 0x74($s2)
/* 13A2F4 8011C204 46800020 */  cvt.s.w    $f0, $f0
/* 13A2F8 8011C208 46001083 */  div.s      $f2, $f2, $f0
/* 13A2FC 8011C20C E7A20018 */  swc1       $f2, 0x18($sp)
/* 13A300 8011C210 E606FFF8 */  swc1       $f6, -0x8($s0)
/* 13A304 8011C214 C6800004 */  lwc1       $f0, 0x4($s4)
/* 13A308 8011C218 E600FFFC */  swc1       $f0, -0x4($s0)
/* 13A30C 8011C21C C6800008 */  lwc1       $f0, 0x8($s4)
/* 13A310 8011C220 E6000000 */  swc1       $f0, 0x0($s0)
.Lmenu_8011C224:
/* 13A314 8011C224 26730001 */  addiu      $s3, $s3, 0x1
/* 13A318 8011C228 261000D0 */  addiu      $s0, $s0, 0xD0
/* 13A31C 8011C22C 08047061 */  j          .Lmenu_8011C184
/* 13A320 8011C230 263100D0 */   addiu     $s1, $s1, 0xD0
.Lmenu_8011C234:
/* 13A324 8011C234 8FBF0054 */  lw         $ra, 0x54($sp)
/* 13A328 8011C238 8FB40050 */  lw         $s4, 0x50($sp)
/* 13A32C 8011C23C 8FB3004C */  lw         $s3, 0x4C($sp)
/* 13A330 8011C240 8FB20048 */  lw         $s2, 0x48($sp)
/* 13A334 8011C244 8FB10044 */  lw         $s1, 0x44($sp)
/* 13A338 8011C248 8FB00040 */  lw         $s0, 0x40($sp)
/* 13A33C 8011C24C 03E00008 */  jr         $ra
/* 13A340 8011C250 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_menu_8011C254
/* 13A344 8011C254 03E00008 */  jr         $ra
/* 13A348 8011C258 00000000 */   nop

glabel func_menu_8011C25C
/* 13A34C 8011C25C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13A350 8011C260 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13A354 8011C264 00809821 */  addu       $s3, $a0, $zero
/* 13A358 8011C268 AFB20018 */  sw         $s2, 0x18($sp)
/* 13A35C 8011C26C 00009021 */  addu       $s2, $zero, $zero
/* 13A360 8011C270 AFBF0024 */  sw         $ra, 0x24($sp)
/* 13A364 8011C274 AFB40020 */  sw         $s4, 0x20($sp)
/* 13A368 8011C278 AFB10014 */  sw         $s1, 0x14($sp)
/* 13A36C 8011C27C AFB00010 */  sw         $s0, 0x10($sp)
/* 13A370 8011C280 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 13A374 8011C284 8E71007C */  lw         $s1, 0x7C($s3)
/* 13A378 8011C288 3C01800D */  lui        $at, %hi(D_menu_800D0594)
/* 13A37C 8011C28C C4340594 */  lwc1       $f20, %lo(D_menu_800D0594)($at)
/* 13A380 8011C290 26300034 */  addiu      $s0, $s1, 0x34
/* 13A384 8011C294 8E34002C */  lw         $s4, 0x2C($s1)
.Lmenu_8011C298:
/* 13A388 8011C298 8E620060 */  lw         $v0, 0x60($s3)
/* 13A38C 8011C29C 2442FFFF */  addiu      $v0, $v0, -0x1
/* 13A390 8011C2A0 0242102A */  slt        $v0, $s2, $v0
/* 13A394 8011C2A4 10400032 */  beqz       $v0, .Lmenu_8011C370
/* 13A398 8011C2A8 00000000 */   nop
/* 13A39C 8011C2AC 8E02012C */  lw         $v0, 0x12C($s0)
/* 13A3A0 8011C2B0 8E0500C8 */  lw         $a1, 0xC8($s0)
/* 13A3A4 8011C2B4 30420001 */  andi       $v0, $v0, 0x1
/* 13A3A8 8011C2B8 10400027 */  beqz       $v0, .Lmenu_8011C358
/* 13A3AC 8011C2BC AE05FFF8 */   sw        $a1, -0x8($s0)
/* 13A3B0 8011C2C0 3C067CF0 */  lui        $a2, (0x7CF0BDC2 >> 16)
/* 13A3B4 8011C2C4 34C6BDC2 */  ori        $a2, $a2, (0x7CF0BDC2 & 0xFFFF)
/* 13A3B8 8011C2C8 0C016059 */  jal        func_80058164
/* 13A3BC 8011C2CC 02002021 */   addu      $a0, $s0, $zero
/* 13A3C0 8011C2D0 C60000F8 */  lwc1       $f0, 0xF8($s0)
/* 13A3C4 8011C2D4 C60200FC */  lwc1       $f2, 0xFC($s0)
/* 13A3C8 8011C2D8 C6040100 */  lwc1       $f4, 0x100($s0)
/* 13A3CC 8011C2DC C6060104 */  lwc1       $f6, 0x104($s0)
/* 13A3D0 8011C2E0 C6080108 */  lwc1       $f8, 0x108($s0)
/* 13A3D4 8011C2E4 C60A010C */  lwc1       $f10, 0x10C($s0)
/* 13A3D8 8011C2E8 C60C0110 */  lwc1       $f12, 0x110($s0)
/* 13A3DC 8011C2EC C60E0114 */  lwc1       $f14, 0x114($s0)
/* 13A3E0 8011C2F0 C6100118 */  lwc1       $f16, 0x118($s0)
/* 13A3E4 8011C2F4 02602021 */  addu       $a0, $s3, $zero
/* 13A3E8 8011C2F8 E6000028 */  swc1       $f0, 0x28($s0)
/* 13A3EC 8011C2FC E602002C */  swc1       $f2, 0x2C($s0)
/* 13A3F0 8011C300 E6040030 */  swc1       $f4, 0x30($s0)
/* 13A3F4 8011C304 E6060034 */  swc1       $f6, 0x34($s0)
/* 13A3F8 8011C308 E6080038 */  swc1       $f8, 0x38($s0)
/* 13A3FC 8011C30C E60A003C */  swc1       $f10, 0x3C($s0)
/* 13A400 8011C310 E60C0040 */  swc1       $f12, 0x40($s0)
/* 13A404 8011C314 E60E0044 */  swc1       $f14, 0x44($s0)
/* 13A408 8011C318 E6100048 */  swc1       $f16, 0x48($s0)
/* 13A40C 8011C31C 8E03011C */  lw         $v1, 0x11C($s0)
/* 13A410 8011C320 8E070120 */  lw         $a3, 0x120($s0)
/* 13A414 8011C324 8E080124 */  lw         $t0, 0x124($s0)
/* 13A418 8011C328 AE03004C */  sw         $v1, 0x4C($s0)
/* 13A41C 8011C32C AE070050 */  sw         $a3, 0x50($s0)
/* 13A420 8011C330 AE080054 */  sw         $t0, 0x54($s0)
/* 13A424 8011C334 8E02013C */  lw         $v0, 0x13C($s0)
/* 13A428 8011C338 C60000CC */  lwc1       $f0, 0xCC($s0)
/* 13A42C 8011C33C 02202821 */  addu       $a1, $s1, $zero
/* 13A430 8011C340 E614000C */  swc1       $f20, 0xC($s0)
/* 13A434 8011C344 AE02006C */  sw         $v0, 0x6C($s0)
/* 13A438 8011C348 0C046F61 */  jal        func_menu_8011BD84
/* 13A43C 8011C34C E600FFFC */   swc1      $f0, -0x4($s0)
/* 13A440 8011C350 080470D9 */  j          .Lmenu_8011C364
/* 13A444 8011C354 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_8011C358:
/* 13A448 8011C358 0C01607E */  jal        func_800581F8
/* 13A44C 8011C35C 02002021 */   addu      $a0, $s0, $zero
/* 13A450 8011C360 26520001 */  addiu      $s2, $s2, 0x1
.Lmenu_8011C364:
/* 13A454 8011C364 261000D0 */  addiu      $s0, $s0, 0xD0
/* 13A458 8011C368 080470A6 */  j          .Lmenu_8011C298
/* 13A45C 8011C36C 263100D0 */   addiu     $s1, $s1, 0xD0
.Lmenu_8011C370:
/* 13A460 8011C370 0C01607E */  jal        func_800581F8
/* 13A464 8011C374 26240034 */   addiu     $a0, $s1, 0x34
/* 13A468 8011C378 AE34002C */  sw         $s4, 0x2C($s1)
/* 13A46C 8011C37C 8E620054 */  lw         $v0, 0x54($s3)
/* 13A470 8011C380 00002821 */  addu       $a1, $zero, $zero
/* 13A474 8011C384 84440090 */  lh         $a0, 0x90($v0)
/* 13A478 8011C388 8C420094 */  lw         $v0, 0x94($v0)
/* 13A47C 8011C38C 0040F809 */  jalr       $v0
/* 13A480 8011C390 02642021 */   addu      $a0, $s3, $a0
/* 13A484 8011C394 8E62006C */  lw         $v0, 0x6C($s3)
/* 13A488 8011C398 8FBF0024 */  lw         $ra, 0x24($sp)
/* 13A48C 8011C39C 8FB40020 */  lw         $s4, 0x20($sp)
/* 13A490 8011C3A0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13A494 8011C3A4 8FB20018 */  lw         $s2, 0x18($sp)
/* 13A498 8011C3A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 13A49C 8011C3AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 13A4A0 8011C3B0 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 13A4A4 8011C3B4 03E00008 */  jr         $ra
/* 13A4A8 8011C3B8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011C3BC
/* 13A4AC 8011C3BC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13A4B0 8011C3C0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13A4B4 8011C3C4 00809821 */  addu       $s3, $a0, $zero
/* 13A4B8 8011C3C8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 13A4BC 8011C3CC AFB40020 */  sw         $s4, 0x20($sp)
/* 13A4C0 8011C3D0 AFB20018 */  sw         $s2, 0x18($sp)
/* 13A4C4 8011C3D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 13A4C8 8011C3D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 13A4CC 8011C3DC F7B40028 */  sdc1       $f20, 0x28($sp)
/* 13A4D0 8011C3E0 8E620060 */  lw         $v0, 0x60($s3)
/* 13A4D4 8011C3E4 3C01800D */  lui        $at, %hi(D_menu_800D0598)
/* 13A4D8 8011C3E8 C4340598 */  lwc1       $f20, %lo(D_menu_800D0598)($at)
/* 13A4DC 8011C3EC 8E64007C */  lw         $a0, 0x7C($s3)
/* 13A4E0 8011C3F0 00021840 */  sll        $v1, $v0, 1
/* 13A4E4 8011C3F4 00621821 */  addu       $v1, $v1, $v0
/* 13A4E8 8011C3F8 00031880 */  sll        $v1, $v1, 2
/* 13A4EC 8011C3FC 00621821 */  addu       $v1, $v1, $v0
/* 13A4F0 8011C400 00031900 */  sll        $v1, $v1, 4
/* 13A4F4 8011C404 00832021 */  addu       $a0, $a0, $v1
/* 13A4F8 8011C408 2491FF30 */  addiu      $s1, $a0, -0xD0
/* 13A4FC 8011C40C 2452FFFF */  addiu      $s2, $v0, -0x1
/* 13A500 8011C410 2490FF64 */  addiu      $s0, $a0, -0x9C
/* 13A504 8011C414 8E34002C */  lw         $s4, 0x2C($s1)
.Lmenu_8011C418:
/* 13A508 8011C418 1A400032 */  blez       $s2, .Lmenu_8011C4E4
/* 13A50C 8011C41C 00000000 */   nop
/* 13A510 8011C420 8E02FF8C */  lw         $v0, -0x74($s0)
/* 13A514 8011C424 8E05FF28 */  lw         $a1, -0xD8($s0)
/* 13A518 8011C428 30420001 */  andi       $v0, $v0, 0x1
/* 13A51C 8011C42C 10400027 */  beqz       $v0, .Lmenu_8011C4CC
/* 13A520 8011C430 AE05FFF8 */   sw        $a1, -0x8($s0)
/* 13A524 8011C434 3C067CF0 */  lui        $a2, (0x7CF0BDC2 >> 16)
/* 13A528 8011C438 34C6BDC2 */  ori        $a2, $a2, (0x7CF0BDC2 & 0xFFFF)
/* 13A52C 8011C43C 0C016059 */  jal        func_80058164
/* 13A530 8011C440 02002021 */   addu      $a0, $s0, $zero
/* 13A534 8011C444 C600FF58 */  lwc1       $f0, -0xA8($s0)
/* 13A538 8011C448 C602FF5C */  lwc1       $f2, -0xA4($s0)
/* 13A53C 8011C44C C604FF60 */  lwc1       $f4, -0xA0($s0)
/* 13A540 8011C450 C606FF64 */  lwc1       $f6, -0x9C($s0)
/* 13A544 8011C454 C608FF68 */  lwc1       $f8, -0x98($s0)
/* 13A548 8011C458 C60AFF6C */  lwc1       $f10, -0x94($s0)
/* 13A54C 8011C45C C60CFF70 */  lwc1       $f12, -0x90($s0)
/* 13A550 8011C460 C60EFF74 */  lwc1       $f14, -0x8C($s0)
/* 13A554 8011C464 C610FF78 */  lwc1       $f16, -0x88($s0)
/* 13A558 8011C468 02602021 */  addu       $a0, $s3, $zero
/* 13A55C 8011C46C E6000028 */  swc1       $f0, 0x28($s0)
/* 13A560 8011C470 E602002C */  swc1       $f2, 0x2C($s0)
/* 13A564 8011C474 E6040030 */  swc1       $f4, 0x30($s0)
/* 13A568 8011C478 E6060034 */  swc1       $f6, 0x34($s0)
/* 13A56C 8011C47C E6080038 */  swc1       $f8, 0x38($s0)
/* 13A570 8011C480 E60A003C */  swc1       $f10, 0x3C($s0)
/* 13A574 8011C484 E60C0040 */  swc1       $f12, 0x40($s0)
/* 13A578 8011C488 E60E0044 */  swc1       $f14, 0x44($s0)
/* 13A57C 8011C48C E6100048 */  swc1       $f16, 0x48($s0)
/* 13A580 8011C490 8E07FF7C */  lw         $a3, -0x84($s0)
/* 13A584 8011C494 8E08FF80 */  lw         $t0, -0x80($s0)
/* 13A588 8011C498 8E09FF84 */  lw         $t1, -0x7C($s0)
/* 13A58C 8011C49C AE07004C */  sw         $a3, 0x4C($s0)
/* 13A590 8011C4A0 AE080050 */  sw         $t0, 0x50($s0)
/* 13A594 8011C4A4 AE090054 */  sw         $t1, 0x54($s0)
/* 13A598 8011C4A8 8E02FF9C */  lw         $v0, -0x64($s0)
/* 13A59C 8011C4AC C600FF2C */  lwc1       $f0, -0xD4($s0)
/* 13A5A0 8011C4B0 02202821 */  addu       $a1, $s1, $zero
/* 13A5A4 8011C4B4 E614000C */  swc1       $f20, 0xC($s0)
/* 13A5A8 8011C4B8 AE02006C */  sw         $v0, 0x6C($s0)
/* 13A5AC 8011C4BC 0C046F61 */  jal        func_menu_8011BD84
/* 13A5B0 8011C4C0 E600FFFC */   swc1      $f0, -0x4($s0)
/* 13A5B4 8011C4C4 08047136 */  j          .Lmenu_8011C4D8
/* 13A5B8 8011C4C8 2652FFFF */   addiu     $s2, $s2, -0x1
.Lmenu_8011C4CC:
/* 13A5BC 8011C4CC 0C01607E */  jal        func_800581F8
/* 13A5C0 8011C4D0 02002021 */   addu      $a0, $s0, $zero
/* 13A5C4 8011C4D4 2652FFFF */  addiu      $s2, $s2, -0x1
.Lmenu_8011C4D8:
/* 13A5C8 8011C4D8 2610FF30 */  addiu      $s0, $s0, -0xD0
/* 13A5CC 8011C4DC 08047106 */  j          .Lmenu_8011C418
/* 13A5D0 8011C4E0 2631FF30 */   addiu     $s1, $s1, -0xD0
.Lmenu_8011C4E4:
/* 13A5D4 8011C4E4 0C01607E */  jal        func_800581F8
/* 13A5D8 8011C4E8 26240034 */   addiu     $a0, $s1, 0x34
/* 13A5DC 8011C4EC AE34002C */  sw         $s4, 0x2C($s1)
/* 13A5E0 8011C4F0 8E620054 */  lw         $v0, 0x54($s3)
/* 13A5E4 8011C4F4 00002821 */  addu       $a1, $zero, $zero
/* 13A5E8 8011C4F8 84440090 */  lh         $a0, 0x90($v0)
/* 13A5EC 8011C4FC 8C420094 */  lw         $v0, 0x94($v0)
/* 13A5F0 8011C500 0040F809 */  jalr       $v0
/* 13A5F4 8011C504 02642021 */   addu      $a0, $s3, $a0
/* 13A5F8 8011C508 8E62006C */  lw         $v0, 0x6C($s3)
/* 13A5FC 8011C50C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 13A600 8011C510 8FB40020 */  lw         $s4, 0x20($sp)
/* 13A604 8011C514 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13A608 8011C518 8FB20018 */  lw         $s2, 0x18($sp)
/* 13A60C 8011C51C 8FB10014 */  lw         $s1, 0x14($sp)
/* 13A610 8011C520 8FB00010 */  lw         $s0, 0x10($sp)
/* 13A614 8011C524 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 13A618 8011C528 03E00008 */  jr         $ra
/* 13A61C 8011C52C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011C530
/* 13A620 8011C530 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13A624 8011C534 AFB00010 */  sw         $s0, 0x10($sp)
/* 13A628 8011C538 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13A62C 8011C53C 0C04918B */  jal        func_menu_8012462C
/* 13A630 8011C540 00808021 */   addu      $s0, $a0, $zero
/* 13A634 8011C544 0C046E55 */  jal        func_menu_8011B954
/* 13A638 8011C548 02002021 */   addu      $a0, $s0, $zero
/* 13A63C 8011C54C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13A640 8011C550 8FB00010 */  lw         $s0, 0x10($sp)
/* 13A644 8011C554 03E00008 */  jr         $ra
/* 13A648 8011C558 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011C55C
/* 13A64C 8011C55C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13A650 8011C560 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13A654 8011C564 00808821 */  addu       $s1, $a0, $zero
/* 13A658 8011C568 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13A65C 8011C56C 00A0A821 */  addu       $s5, $a1, $zero
/* 13A660 8011C570 AFB30024 */  sw         $s3, 0x24($sp)
/* 13A664 8011C574 00C09821 */  addu       $s3, $a2, $zero
/* 13A668 8011C578 AFB40028 */  sw         $s4, 0x28($sp)
/* 13A66C 8011C57C 00E0A021 */  addu       $s4, $a3, $zero
/* 13A670 8011C580 02602821 */  addu       $a1, $s3, $zero
/* 13A674 8011C584 02803021 */  addu       $a2, $s4, $zero
/* 13A678 8011C588 AFBF0030 */  sw         $ra, 0x30($sp)
/* 13A67C 8011C58C AFB20020 */  sw         $s2, 0x20($sp)
/* 13A680 8011C590 0C04923A */  jal        func_menu_801248E8
/* 13A684 8011C594 AFB00018 */   sw        $s0, 0x18($sp)
/* 13A688 8011C598 1040002F */  beqz       $v0, .Lmenu_8011C658
/* 13A68C 8011C59C 3C03F000 */   lui       $v1, (0xF0000000 >> 16)
/* 13A690 8011C5A0 8EA20004 */  lw         $v0, 0x4($s5)
/* 13A694 8011C5A4 00431024 */  and        $v0, $v0, $v1
/* 13A698 8011C5A8 3C032000 */  lui        $v1, (0x20000000 >> 16)
/* 13A69C 8011C5AC 1443002B */  bne        $v0, $v1, .Lmenu_8011C65C
/* 13A6A0 8011C5B0 00001021 */   addu      $v0, $zero, $zero
/* 13A6A4 8011C5B4 00008021 */  addu       $s0, $zero, $zero
/* 13A6A8 8011C5B8 02009021 */  addu       $s2, $s0, $zero
.Lmenu_8011C5BC:
/* 13A6AC 8011C5BC 8E220060 */  lw         $v0, 0x60($s1)
/* 13A6B0 8011C5C0 0202102A */  slt        $v0, $s0, $v0
/* 13A6B4 8011C5C4 10400024 */  beqz       $v0, .Lmenu_8011C658
/* 13A6B8 8011C5C8 02202021 */   addu      $a0, $s1, $zero
/* 13A6BC 8011C5CC 02603021 */  addu       $a2, $s3, $zero
/* 13A6C0 8011C5D0 8E25007C */  lw         $a1, 0x7C($s1)
/* 13A6C4 8011C5D4 02803821 */  addu       $a3, $s4, $zero
/* 13A6C8 8011C5D8 00B22821 */  addu       $a1, $a1, $s2
/* 13A6CC 8011C5DC 0C04924D */  jal        func_menu_80124934
/* 13A6D0 8011C5E0 24A50010 */   addiu     $a1, $a1, 0x10
/* 13A6D4 8011C5E4 10400019 */  beqz       $v0, .Lmenu_8011C64C
/* 13A6D8 8011C5E8 02202021 */   addu      $a0, $s1, $zero
/* 13A6DC 8011C5EC 8E250064 */  lw         $a1, 0x64($s1)
/* 13A6E0 8011C5F0 8E22006C */  lw         $v0, 0x6C($s1)
/* 13A6E4 8011C5F4 02052823 */  subu       $a1, $s0, $a1
/* 13A6E8 8011C5F8 0C046D24 */  jal        func_menu_8011B490
/* 13A6EC 8011C5FC 00452821 */   addu      $a1, $v0, $a1
/* 13A6F0 8011C600 8E230054 */  lw         $v1, 0x54($s1)
/* 13A6F4 8011C604 00402821 */  addu       $a1, $v0, $zero
/* 13A6F8 8011C608 846400A8 */  lh         $a0, 0xA8($v1)
/* 13A6FC 8011C60C 8C6200AC */  lw         $v0, 0xAC($v1)
/* 13A700 8011C610 0040F809 */  jalr       $v0
/* 13A704 8011C614 02242021 */   addu      $a0, $s1, $a0
/* 13A708 8011C618 8E230024 */  lw         $v1, 0x24($s1)
/* 13A70C 8011C61C 10600009 */  beqz       $v1, .Lmenu_8011C644
/* 13A710 8011C620 02202821 */   addu      $a1, $s1, $zero
/* 13A714 8011C624 8C620000 */  lw         $v0, 0x0($v1)
/* 13A718 8011C628 02A03021 */  addu       $a2, $s5, $zero
/* 13A71C 8011C62C 84440038 */  lh         $a0, 0x38($v0)
/* 13A720 8011C630 02603821 */  addu       $a3, $s3, $zero
/* 13A724 8011C634 AFB40010 */  sw         $s4, 0x10($sp)
/* 13A728 8011C638 8C42003C */  lw         $v0, 0x3C($v0)
/* 13A72C 8011C63C 0040F809 */  jalr       $v0
/* 13A730 8011C640 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011C644:
/* 13A734 8011C644 08047197 */  j          .Lmenu_8011C65C
/* 13A738 8011C648 02201021 */   addu      $v0, $s1, $zero
.Lmenu_8011C64C:
/* 13A73C 8011C64C 265200D0 */  addiu      $s2, $s2, 0xD0
/* 13A740 8011C650 0804716F */  j          .Lmenu_8011C5BC
/* 13A744 8011C654 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_8011C658:
/* 13A748 8011C658 00001021 */  addu       $v0, $zero, $zero
.Lmenu_8011C65C:
/* 13A74C 8011C65C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13A750 8011C660 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13A754 8011C664 8FB40028 */  lw         $s4, 0x28($sp)
/* 13A758 8011C668 8FB30024 */  lw         $s3, 0x24($sp)
/* 13A75C 8011C66C 8FB20020 */  lw         $s2, 0x20($sp)
/* 13A760 8011C670 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13A764 8011C674 8FB00018 */  lw         $s0, 0x18($sp)
/* 13A768 8011C678 03E00008 */  jr         $ra
/* 13A76C 8011C67C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_8011C680
/* 13A770 8011C680 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 13A774 8011C684 AFB20030 */  sw         $s2, 0x30($sp)
/* 13A778 8011C688 00809021 */  addu       $s2, $a0, $zero
/* 13A77C 8011C68C AFB40038 */  sw         $s4, 0x38($sp)
/* 13A780 8011C690 0000A021 */  addu       $s4, $zero, $zero
/* 13A784 8011C694 AFBF0048 */  sw         $ra, 0x48($sp)
/* 13A788 8011C698 AFB70044 */  sw         $s7, 0x44($sp)
/* 13A78C 8011C69C AFB60040 */  sw         $s6, 0x40($sp)
/* 13A790 8011C6A0 AFB5003C */  sw         $s5, 0x3C($sp)
/* 13A794 8011C6A4 AFB30034 */  sw         $s3, 0x34($sp)
/* 13A798 8011C6A8 AFB1002C */  sw         $s1, 0x2C($sp)
/* 13A79C 8011C6AC AFB00028 */  sw         $s0, 0x28($sp)
/* 13A7A0 8011C6B0 8E430020 */  lw         $v1, 0x20($s2)
/* 13A7A4 8011C6B4 3C16FF00 */  lui        $s6, (0xFF00FFFF >> 16)
/* 13A7A8 8011C6B8 8C62012C */  lw         $v0, 0x12C($v1)
/* 13A7AC 8011C6BC 8E53007C */  lw         $s3, 0x7C($s2)
/* 13A7B0 8011C6C0 844401C8 */  lh         $a0, 0x1C8($v0)
/* 13A7B4 8011C6C4 8C4201CC */  lw         $v0, 0x1CC($v0)
/* 13A7B8 8011C6C8 0040F809 */  jalr       $v0
/* 13A7BC 8011C6CC 00642021 */   addu      $a0, $v1, $a0
/* 13A7C0 8011C6D0 0C046E8A */  jal        func_menu_8011BA28
/* 13A7C4 8011C6D4 02402021 */   addu      $a0, $s2, $zero
/* 13A7C8 8011C6D8 8E430020 */  lw         $v1, 0x20($s2)
/* 13A7CC 8011C6DC 36D6FFFF */  ori        $s6, $s6, (0xFF00FFFF & 0xFFFF)
/* 13A7D0 8011C6E0 8C62012C */  lw         $v0, 0x12C($v1)
/* 13A7D4 8011C6E4 8E450078 */  lw         $a1, 0x78($s2)
/* 13A7D8 8011C6E8 844401D8 */  lh         $a0, 0x1D8($v0)
/* 13A7DC 8011C6EC 8C4201DC */  lw         $v0, 0x1DC($v0)
/* 13A7E0 8011C6F0 0040F809 */  jalr       $v0
/* 13A7E4 8011C6F4 00642021 */   addu      $a0, $v1, $a0
/* 13A7E8 8011C6F8 2650008C */  addiu      $s0, $s2, 0x8C
/* 13A7EC 8011C6FC 8E420020 */  lw         $v0, 0x20($s2)
/* 13A7F0 8011C700 02002021 */  addu       $a0, $s0, $zero
/* 13A7F4 8011C704 8C420120 */  lw         $v0, 0x120($v0)
/* 13A7F8 8011C708 8C460004 */  lw         $a2, 0x4($v0)
/* 13A7FC 8011C70C 8C470008 */  lw         $a3, 0x8($v0)
/* 13A800 8011C710 8C48000C */  lw         $t0, 0xC($v0)
/* 13A804 8011C714 AFA60010 */  sw         $a2, 0x10($sp)
/* 13A808 8011C718 AFA70014 */  sw         $a3, 0x14($sp)
/* 13A80C 8011C71C AFA80018 */  sw         $t0, 0x18($sp)
/* 13A810 8011C720 0C03B3AB */  jal        func_menu_800ECEAC
/* 13A814 8011C724 27A50010 */   addiu     $a1, $sp, 0x10
/* 13A818 8011C728 8E430020 */  lw         $v1, 0x20($s2)
/* 13A81C 8011C72C 3C15FFFF */  lui        $s5, (0xFFFF00FF >> 16)
/* 13A820 8011C730 8C62012C */  lw         $v0, 0x12C($v1)
/* 13A824 8011C734 36B500FF */  ori        $s5, $s5, (0xFFFF00FF & 0xFFFF)
/* 13A828 8011C738 84440058 */  lh         $a0, 0x58($v0)
/* 13A82C 8011C73C 8C42005C */  lw         $v0, 0x5C($v0)
/* 13A830 8011C740 0040F809 */  jalr       $v0
/* 13A834 8011C744 00642021 */   addu      $a0, $v1, $a0
/* 13A838 8011C748 8E430020 */  lw         $v1, 0x20($s2)
/* 13A83C 8011C74C 2417FF00 */  addiu      $s7, $zero, -0x100
/* 13A840 8011C750 8C62012C */  lw         $v0, 0x12C($v1)
/* 13A844 8011C754 26450088 */  addiu      $a1, $s2, 0x88
/* 13A848 8011C758 84440060 */  lh         $a0, 0x60($v0)
/* 13A84C 8011C75C 8C420064 */  lw         $v0, 0x64($v0)
/* 13A850 8011C760 0040F809 */  jalr       $v0
/* 13A854 8011C764 00642021 */   addu      $a0, $v1, $a0
/* 13A858 8011C768 8E430020 */  lw         $v1, 0x20($s2)
/* 13A85C 8011C76C 267100CC */  addiu      $s1, $s3, 0xCC
/* 13A860 8011C770 8C62012C */  lw         $v0, 0x12C($v1)
/* 13A864 8011C774 02002821 */  addu       $a1, $s0, $zero
/* 13A868 8011C778 84440068 */  lh         $a0, 0x68($v0)
/* 13A86C 8011C77C 8C42006C */  lw         $v0, 0x6C($v0)
/* 13A870 8011C780 0040F809 */  jalr       $v0
/* 13A874 8011C784 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011C788:
/* 13A878 8011C788 8E420060 */  lw         $v0, 0x60($s2)
/* 13A87C 8011C78C 0282102A */  slt        $v0, $s4, $v0
/* 13A880 8011C790 1040003E */  beqz       $v0, .Lmenu_8011C88C
/* 13A884 8011C794 00000000 */   nop
/* 13A888 8011C798 8E22FFC4 */  lw         $v0, -0x3C($s1)
/* 13A88C 8011C79C 30420001 */  andi       $v0, $v0, 0x1
/* 13A890 8011C7A0 10400036 */  beqz       $v0, .Lmenu_8011C87C
/* 13A894 8011C7A4 26700034 */   addiu     $s0, $s3, 0x34
/* 13A898 8011C7A8 8E420020 */  lw         $v0, 0x20($s2)
/* 13A89C 8011C7AC 8C44011C */  lw         $a0, 0x11C($v0)
/* 13A8A0 8011C7B0 8A26FFFC */  lwl        $a2, -0x4($s1)
/* 13A8A4 8011C7B4 9A26FFFF */  lwr        $a2, -0x1($s1)
/* 13A8A8 8011C7B8 ABA60020 */  swl        $a2, 0x20($sp)
/* 13A8AC 8011C7BC BBA60023 */  swr        $a2, 0x23($sp)
/* 13A8B0 8011C7C0 93A50020 */  lbu        $a1, 0x20($sp)
/* 13A8B4 8011C7C4 93A20021 */  lbu        $v0, 0x21($sp)
/* 13A8B8 8011C7C8 00052E00 */  sll        $a1, $a1, 24
/* 13A8BC 8011C7CC 00B62824 */  and        $a1, $a1, $s6
/* 13A8C0 8011C7D0 00021400 */  sll        $v0, $v0, 16
/* 13A8C4 8011C7D4 00A22825 */  or         $a1, $a1, $v0
/* 13A8C8 8011C7D8 93A20022 */  lbu        $v0, 0x22($sp)
/* 13A8CC 8011C7DC 00B52824 */  and        $a1, $a1, $s5
/* 13A8D0 8011C7E0 00021200 */  sll        $v0, $v0, 8
/* 13A8D4 8011C7E4 00A22825 */  or         $a1, $a1, $v0
/* 13A8D8 8011C7E8 93A20023 */  lbu        $v0, 0x23($sp)
/* 13A8DC 8011C7EC 00B72824 */  and        $a1, $a1, $s7
/* 13A8E0 8011C7F0 0C03B3BB */  jal        func_menu_800ECEEC
/* 13A8E4 8011C7F4 00A22825 */   or        $a1, $a1, $v0
/* 13A8E8 8011C7F8 8E420020 */  lw         $v0, 0x20($s2)
/* 13A8EC 8011C7FC 8C440120 */  lw         $a0, 0x120($v0)
/* 13A8F0 8011C800 8A260000 */  lwl        $a2, 0x0($s1)
/* 13A8F4 8011C804 9A260003 */  lwr        $a2, 0x3($s1)
/* 13A8F8 8011C808 ABA60020 */  swl        $a2, 0x20($sp)
/* 13A8FC 8011C80C BBA60023 */  swr        $a2, 0x23($sp)
/* 13A900 8011C810 93A50020 */  lbu        $a1, 0x20($sp)
/* 13A904 8011C814 93A20021 */  lbu        $v0, 0x21($sp)
/* 13A908 8011C818 00052E00 */  sll        $a1, $a1, 24
/* 13A90C 8011C81C 00B62824 */  and        $a1, $a1, $s6
/* 13A910 8011C820 00021400 */  sll        $v0, $v0, 16
/* 13A914 8011C824 00A22825 */  or         $a1, $a1, $v0
/* 13A918 8011C828 93A20022 */  lbu        $v0, 0x22($sp)
/* 13A91C 8011C82C 00B52824 */  and        $a1, $a1, $s5
/* 13A920 8011C830 00021200 */  sll        $v0, $v0, 8
/* 13A924 8011C834 00A22825 */  or         $a1, $a1, $v0
/* 13A928 8011C838 93A20023 */  lbu        $v0, 0x23($sp)
/* 13A92C 8011C83C 00B72824 */  and        $a1, $a1, $s7
/* 13A930 8011C840 0C03B3BB */  jal        func_menu_800ECEEC
/* 13A934 8011C844 00A22825 */   or        $a1, $a1, $v0
/* 13A938 8011C848 8E430020 */  lw         $v1, 0x20($s2)
/* 13A93C 8011C84C 8C62012C */  lw         $v0, 0x12C($v1)
/* 13A940 8011C850 844400C8 */  lh         $a0, 0xC8($v0)
/* 13A944 8011C854 8C4200CC */  lw         $v0, 0xCC($v0)
/* 13A948 8011C858 0040F809 */  jalr       $v0
/* 13A94C 8011C85C 00642021 */   addu      $a0, $v1, $a0
/* 13A950 8011C860 8E430020 */  lw         $v1, 0x20($s2)
/* 13A954 8011C864 8C62012C */  lw         $v0, 0x12C($v1)
/* 13A958 8011C868 02002821 */  addu       $a1, $s0, $zero
/* 13A95C 8011C86C 84440118 */  lh         $a0, 0x118($v0)
/* 13A960 8011C870 8C42011C */  lw         $v0, 0x11C($v0)
/* 13A964 8011C874 0040F809 */  jalr       $v0
/* 13A968 8011C878 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011C87C:
/* 13A96C 8011C87C 26940001 */  addiu      $s4, $s4, 0x1
/* 13A970 8011C880 263100D0 */  addiu      $s1, $s1, 0xD0
/* 13A974 8011C884 080471E2 */  j          .Lmenu_8011C788
/* 13A978 8011C888 267300D0 */   addiu     $s3, $s3, 0xD0
.Lmenu_8011C88C:
/* 13A97C 8011C88C 0C046EA2 */  jal        func_menu_8011BA88
/* 13A980 8011C890 02402021 */   addu      $a0, $s2, $zero
/* 13A984 8011C894 8E430020 */  lw         $v1, 0x20($s2)
/* 13A988 8011C898 8C62012C */  lw         $v0, 0x12C($v1)
/* 13A98C 8011C89C 24050006 */  addiu      $a1, $zero, 0x6
/* 13A990 8011C8A0 844401D8 */  lh         $a0, 0x1D8($v0)
/* 13A994 8011C8A4 8C4201DC */  lw         $v0, 0x1DC($v0)
/* 13A998 8011C8A8 0040F809 */  jalr       $v0
/* 13A99C 8011C8AC 00642021 */   addu      $a0, $v1, $a0
/* 13A9A0 8011C8B0 8E430020 */  lw         $v1, 0x20($s2)
/* 13A9A4 8011C8B4 8C62012C */  lw         $v0, 0x12C($v1)
/* 13A9A8 8011C8B8 00002821 */  addu       $a1, $zero, $zero
/* 13A9AC 8011C8BC 844401D0 */  lh         $a0, 0x1D0($v0)
/* 13A9B0 8011C8C0 8C4201D4 */  lw         $v0, 0x1D4($v0)
/* 13A9B4 8011C8C4 0040F809 */  jalr       $v0
/* 13A9B8 8011C8C8 00642021 */   addu      $a0, $v1, $a0
/* 13A9BC 8011C8CC 8FBF0048 */  lw         $ra, 0x48($sp)
/* 13A9C0 8011C8D0 8FB70044 */  lw         $s7, 0x44($sp)
/* 13A9C4 8011C8D4 8FB60040 */  lw         $s6, 0x40($sp)
/* 13A9C8 8011C8D8 8FB5003C */  lw         $s5, 0x3C($sp)
/* 13A9CC 8011C8DC 8FB40038 */  lw         $s4, 0x38($sp)
/* 13A9D0 8011C8E0 8FB30034 */  lw         $s3, 0x34($sp)
/* 13A9D4 8011C8E4 8FB20030 */  lw         $s2, 0x30($sp)
/* 13A9D8 8011C8E8 8FB1002C */  lw         $s1, 0x2C($sp)
/* 13A9DC 8011C8EC 8FB00028 */  lw         $s0, 0x28($sp)
/* 13A9E0 8011C8F0 00001021 */  addu       $v0, $zero, $zero
/* 13A9E4 8011C8F4 03E00008 */  jr         $ra
/* 13A9E8 8011C8F8 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_8011C8FC
/* 13A9EC 8011C8FC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13A9F0 8011C900 AFB3002C */  sw         $s3, 0x2C($sp)
/* 13A9F4 8011C904 00809821 */  addu       $s3, $a0, $zero
/* 13A9F8 8011C908 AFBF0034 */  sw         $ra, 0x34($sp)
/* 13A9FC 8011C90C AFB40030 */  sw         $s4, 0x30($sp)
/* 13AA00 8011C910 AFB20028 */  sw         $s2, 0x28($sp)
/* 13AA04 8011C914 AFB10024 */  sw         $s1, 0x24($sp)
/* 13AA08 8011C918 AFB00020 */  sw         $s0, 0x20($sp)
/* 13AA0C 8011C91C 8E620070 */  lw         $v0, 0x70($s3)
/* 13AA10 8011C920 10400027 */  beqz       $v0, .Lmenu_8011C9C0
/* 13AA14 8011C924 00A0A021 */   addu      $s4, $a1, $zero
/* 13AA18 8011C928 8E620074 */  lw         $v0, 0x74($s3)
/* 13AA1C 8011C92C 1440001E */  bnez       $v0, .Lmenu_8011C9A8
/* 13AA20 8011C930 00009021 */   addu      $s2, $zero, $zero
/* 13AA24 8011C934 44800000 */  mtc1       $zero, $f0
/* 13AA28 8011C938 E7A00018 */  swc1       $f0, 0x18($sp)
/* 13AA2C 8011C93C E7A00014 */  swc1       $f0, 0x14($sp)
/* 13AA30 8011C940 E7A00010 */  swc1       $f0, 0x10($sp)
/* 13AA34 8011C944 8E71007C */  lw         $s1, 0x7C($s3)
/* 13AA38 8011C948 27A30010 */  addiu      $v1, $sp, 0x10
/* 13AA3C 8011C94C 26300054 */  addiu      $s0, $s1, 0x54
.Lmenu_8011C950:
/* 13AA40 8011C950 8E620060 */  lw         $v0, 0x60($s3)
/* 13AA44 8011C954 0242102A */  slt        $v0, $s2, $v0
/* 13AA48 8011C958 1040000D */  beqz       $v0, .Lmenu_8011C990
/* 13AA4C 8011C95C 00000000 */   nop
/* 13AA50 8011C960 8E02003C */  lw         $v0, 0x3C($s0)
/* 13AA54 8011C964 30420001 */  andi       $v0, $v0, 0x1
/* 13AA58 8011C968 10400007 */  beqz       $v0, .Lmenu_8011C988
/* 13AA5C 8011C96C 26520001 */   addiu     $s2, $s2, 0x1
/* 13AA60 8011C970 C7A00010 */  lwc1       $f0, 0x10($sp)
/* 13AA64 8011C974 E600FFF8 */  swc1       $f0, -0x8($s0)
/* 13AA68 8011C978 C4600004 */  lwc1       $f0, 0x4($v1)
/* 13AA6C 8011C97C E600FFFC */  swc1       $f0, -0x4($s0)
/* 13AA70 8011C980 C4600008 */  lwc1       $f0, 0x8($v1)
/* 13AA74 8011C984 E6000000 */  swc1       $f0, 0x0($s0)
.Lmenu_8011C988:
/* 13AA78 8011C988 08047254 */  j          .Lmenu_8011C950
/* 13AA7C 8011C98C 261000D0 */   addiu     $s0, $s0, 0xD0
.Lmenu_8011C990:
/* 13AA80 8011C990 8E620054 */  lw         $v0, 0x54($s3)
/* 13AA84 8011C994 AE600070 */  sw         $zero, 0x70($s3)
/* 13AA88 8011C998 84440088 */  lh         $a0, 0x88($v0)
/* 13AA8C 8011C99C 8C42008C */  lw         $v0, 0x8C($v0)
/* 13AA90 8011C9A0 0040F809 */  jalr       $v0
/* 13AA94 8011C9A4 02642021 */   addu      $a0, $s3, $a0
.Lmenu_8011C9A8:
/* 13AA98 8011C9A8 8E630074 */  lw         $v1, 0x74($s3)
/* 13AA9C 8011C9AC 0074102B */  sltu       $v0, $v1, $s4
/* 13AAA0 8011C9B0 54400001 */  bnel       $v0, $zero, .Lmenu_8011C9B8
/* 13AAA4 8011C9B4 0060A021 */   addu      $s4, $v1, $zero
.Lmenu_8011C9B8:
/* 13AAA8 8011C9B8 00741023 */  subu       $v0, $v1, $s4
/* 13AAAC 8011C9BC AE620074 */  sw         $v0, 0x74($s3)
.Lmenu_8011C9C0:
/* 13AAB0 8011C9C0 8E620060 */  lw         $v0, 0x60($s3)
/* 13AAB4 8011C9C4 8E71007C */  lw         $s1, 0x7C($s3)
/* 13AAB8 8011C9C8 18400011 */  blez       $v0, .Lmenu_8011CA10
/* 13AABC 8011C9CC 00009021 */   addu      $s2, $zero, $zero
.Lmenu_8011C9D0:
/* 13AAC0 8011C9D0 02802821 */  addu       $a1, $s4, $zero
/* 13AAC4 8011C9D4 26520001 */  addiu      $s2, $s2, 0x1
/* 13AAC8 8011C9D8 26300034 */  addiu      $s0, $s1, 0x34
/* 13AACC 8011C9DC 8E620054 */  lw         $v0, 0x54($s3)
/* 13AAD0 8011C9E0 02003021 */  addu       $a2, $s0, $zero
/* 13AAD4 8011C9E4 844400C0 */  lh         $a0, 0xC0($v0)
/* 13AAD8 8011C9E8 8C4200C4 */  lw         $v0, 0xC4($v0)
/* 13AADC 8011C9EC 0040F809 */  jalr       $v0
/* 13AAE0 8011C9F0 02642021 */   addu      $a0, $s3, $a0
/* 13AAE4 8011C9F4 02002021 */  addu       $a0, $s0, $zero
/* 13AAE8 8011C9F8 0C0161A1 */  jal        func_80058684
/* 13AAEC 8011C9FC 02802821 */   addu      $a1, $s4, $zero
/* 13AAF0 8011CA00 8E620060 */  lw         $v0, 0x60($s3)
/* 13AAF4 8011CA04 0242102A */  slt        $v0, $s2, $v0
/* 13AAF8 8011CA08 1440FFF1 */  bnez       $v0, .Lmenu_8011C9D0
/* 13AAFC 8011CA0C 263100D0 */   addiu     $s1, $s1, 0xD0
.Lmenu_8011CA10:
/* 13AB00 8011CA10 8FBF0034 */  lw         $ra, 0x34($sp)
/* 13AB04 8011CA14 8FB40030 */  lw         $s4, 0x30($sp)
/* 13AB08 8011CA18 8FB3002C */  lw         $s3, 0x2C($sp)
/* 13AB0C 8011CA1C 8FB20028 */  lw         $s2, 0x28($sp)
/* 13AB10 8011CA20 8FB10024 */  lw         $s1, 0x24($sp)
/* 13AB14 8011CA24 8FB00020 */  lw         $s0, 0x20($sp)
/* 13AB18 8011CA28 00001021 */  addu       $v0, $zero, $zero
/* 13AB1C 8011CA2C 03E00008 */  jr         $ra
/* 13AB20 8011CA30 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_8011CA34
/* 13AB24 8011CA34 3C028012 */  lui        $v0, %hi(D_80127180)
/* 13AB28 8011CA38 03E00008 */  jr         $ra
/* 13AB2C 8011CA3C AC447180 */   sw        $a0, %lo(D_80127180)($v0)

glabel func_menu_8011CA40
/* 13AB30 8011CA40 03E00008 */  jr         $ra
/* 13AB34 8011CA44 AC8500BC */   sw        $a1, 0xBC($a0)

glabel func_menu_8011CA48
/* 13AB38 8011CA48 8C820064 */  lw         $v0, 0x64($a0)
/* 13AB3C 8011CA4C 00021840 */  sll        $v1, $v0, 1
/* 13AB40 8011CA50 00621821 */  addu       $v1, $v1, $v0
/* 13AB44 8011CA54 00031880 */  sll        $v1, $v1, 2
/* 13AB48 8011CA58 00621821 */  addu       $v1, $v1, $v0
/* 13AB4C 8011CA5C 8C82007C */  lw         $v0, 0x7C($a0)
/* 13AB50 8011CA60 00031900 */  sll        $v1, $v1, 4
/* 13AB54 8011CA64 00431021 */  addu       $v0, $v0, $v1
/* 13AB58 8011CA68 03E00008 */  jr         $ra
/* 13AB5C 8011CA6C 24420034 */   addiu     $v0, $v0, 0x34

glabel func_menu_8011CA70
/* 13AB60 8011CA70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13AB64 8011CA74 AFB00010 */  sw         $s0, 0x10($sp)
/* 13AB68 8011CA78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13AB6C 8011CA7C 0C046CDC */  jal        func_menu_8011B370
/* 13AB70 8011CA80 00808021 */   addu      $s0, $a0, $zero
/* 13AB74 8011CA84 3C02800D */  lui        $v0, %hi(D_menu_800D0670)
/* 13AB78 8011CA88 24420670 */  addiu      $v0, $v0, %lo(D_menu_800D0670)
/* 13AB7C 8011CA8C 02002021 */  addu       $a0, $s0, $zero
/* 13AB80 8011CA90 0C0472BF */  jal        func_menu_8011CAFC
/* 13AB84 8011CA94 AE020054 */   sw        $v0, 0x54($s0)
/* 13AB88 8011CA98 02001021 */  addu       $v0, $s0, $zero
/* 13AB8C 8011CA9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13AB90 8011CAA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 13AB94 8011CAA4 03E00008 */  jr         $ra
/* 13AB98 8011CAA8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011CAAC
/* 13AB9C 8011CAAC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13ABA0 8011CAB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 13ABA4 8011CAB4 00808021 */  addu       $s0, $a0, $zero
/* 13ABA8 8011CAB8 AFB10014 */  sw         $s1, 0x14($sp)
/* 13ABAC 8011CABC 00A08821 */  addu       $s1, $a1, $zero
/* 13ABB0 8011CAC0 3C02800D */  lui        $v0, %hi(D_menu_800D0670)
/* 13ABB4 8011CAC4 24420670 */  addiu      $v0, $v0, %lo(D_menu_800D0670)
/* 13ABB8 8011CAC8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13ABBC 8011CACC 0C049139 */  jal        func_menu_801244E4
/* 13ABC0 8011CAD0 AE020054 */   sw        $v0, 0x54($s0)
/* 13ABC4 8011CAD4 0C0472BF */  jal        func_menu_8011CAFC
/* 13ABC8 8011CAD8 02002021 */   addu      $a0, $s0, $zero
/* 13ABCC 8011CADC 02002021 */  addu       $a0, $s0, $zero
/* 13ABD0 8011CAE0 0C046CEB */  jal        func_menu_8011B3AC
/* 13ABD4 8011CAE4 02202821 */   addu      $a1, $s1, $zero
/* 13ABD8 8011CAE8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13ABDC 8011CAEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 13ABE0 8011CAF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 13ABE4 8011CAF4 03E00008 */  jr         $ra
/* 13ABE8 8011CAF8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011CAFC
/* 13ABEC 8011CAFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13ABF0 8011CB00 AFB00010 */  sw         $s0, 0x10($sp)
/* 13ABF4 8011CB04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13ABF8 8011CB08 0C046CFF */  jal        func_menu_8011B3FC
/* 13ABFC 8011CB0C 00808021 */   addu      $s0, $a0, $zero
/* 13AC00 8011CB10 44800000 */  mtc1       $zero, $f0
/* 13AC04 8011CB14 24020001 */  addiu      $v0, $zero, 0x1
/* 13AC08 8011CB18 AE000078 */  sw         $zero, 0x78($s0)
/* 13AC0C 8011CB1C AE020060 */  sw         $v0, 0x60($s0)
/* 13AC10 8011CB20 E6000090 */  swc1       $f0, 0x90($s0)
/* 13AC14 8011CB24 E600008C */  swc1       $f0, 0x8C($s0)
/* 13AC18 8011CB28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13AC1C 8011CB2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13AC20 8011CB30 03E00008 */  jr         $ra
/* 13AC24 8011CB34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011CB38
/* 13AC28 8011CB38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13AC2C 8011CB3C 00803021 */  addu       $a2, $a0, $zero
/* 13AC30 8011CB40 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13AC34 8011CB44 8CC20078 */  lw         $v0, 0x78($a2)
/* 13AC38 8011CB48 8CC30004 */  lw         $v1, 0x4($a2)
/* 13AC3C 8011CB4C 10A20012 */  beq        $a1, $v0, .Lmenu_8011CB98
/* 13AC40 8011CB50 00002021 */   addu      $a0, $zero, $zero
/* 13AC44 8011CB54 ACC00078 */  sw         $zero, 0x78($a2)
.Lmenu_8011CB58:
/* 13AC48 8011CB58 10600007 */  beqz       $v1, .Lmenu_8011CB78
/* 13AC4C 8011CB5C 00000000 */   nop
/* 13AC50 8011CB60 50650004 */  beql       $v1, $a1, .Lmenu_8011CB74
/* 13AC54 8011CB64 ACC30078 */   sw        $v1, 0x78($a2)
/* 13AC58 8011CB68 8C630010 */  lw         $v1, 0x10($v1)
/* 13AC5C 8011CB6C 080472D6 */  j          .Lmenu_8011CB58
/* 13AC60 8011CB70 24840001 */   addiu     $a0, $a0, 0x1
.Lmenu_8011CB74:
/* 13AC64 8011CB74 ACC4006C */  sw         $a0, 0x6C($a2)
.Lmenu_8011CB78:
/* 13AC68 8011CB78 8CC20070 */  lw         $v0, 0x70($a2)
/* 13AC6C 8011CB7C 14400006 */  bnez       $v0, .Lmenu_8011CB98
/* 13AC70 8011CB80 00000000 */   nop
/* 13AC74 8011CB84 8CC20054 */  lw         $v0, 0x54($a2)
/* 13AC78 8011CB88 84440088 */  lh         $a0, 0x88($v0)
/* 13AC7C 8011CB8C 8C42008C */  lw         $v0, 0x8C($v0)
/* 13AC80 8011CB90 0040F809 */  jalr       $v0
/* 13AC84 8011CB94 00C42021 */   addu      $a0, $a2, $a0
.Lmenu_8011CB98:
/* 13AC88 8011CB98 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13AC8C 8011CB9C 03E00008 */  jr         $ra
/* 13AC90 8011CBA0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011CBA4
/* 13AC94 8011CBA4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13AC98 8011CBA8 AFB10014 */  sw         $s1, 0x14($sp)
/* 13AC9C 8011CBAC 00808821 */  addu       $s1, $a0, $zero
/* 13ACA0 8011CBB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 13ACA4 8011CBB4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13ACA8 8011CBB8 0C049345 */  jal        func_menu_80124D14
/* 13ACAC 8011CBBC 00A08021 */   addu      $s0, $a1, $zero
/* 13ACB0 8011CBC0 8E230070 */  lw         $v1, 0x70($s1)
/* 13ACB4 8011CBC4 AE220078 */  sw         $v0, 0x78($s1)
/* 13ACB8 8011CBC8 14600006 */  bnez       $v1, .Lmenu_8011CBE4
/* 13ACBC 8011CBCC AE30006C */   sw        $s0, 0x6C($s1)
/* 13ACC0 8011CBD0 8E220054 */  lw         $v0, 0x54($s1)
/* 13ACC4 8011CBD4 84440088 */  lh         $a0, 0x88($v0)
/* 13ACC8 8011CBD8 8C42008C */  lw         $v0, 0x8C($v0)
/* 13ACCC 8011CBDC 0040F809 */  jalr       $v0
/* 13ACD0 8011CBE0 02242021 */   addu      $a0, $s1, $a0
.Lmenu_8011CBE4:
/* 13ACD4 8011CBE4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13ACD8 8011CBE8 8FB10014 */  lw         $s1, 0x14($sp)
/* 13ACDC 8011CBEC 8FB00010 */  lw         $s0, 0x10($sp)
/* 13ACE0 8011CBF0 03E00008 */  jr         $ra
/* 13ACE4 8011CBF4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011CBF8
/* 13ACE8 8011CBF8 00802821 */  addu       $a1, $a0, $zero
/* 13ACEC 8011CBFC 8CA20078 */  lw         $v0, 0x78($a1)
/* 13ACF0 8011CC00 8C440030 */  lw         $a0, 0x30($v0)
/* 13ACF4 8011CC04 8CA20058 */  lw         $v0, 0x58($a1)
/* 13ACF8 8011CC08 ACA40048 */  sw         $a0, 0x48($a1)
/* 13ACFC 8011CC0C 8C420010 */  lw         $v0, 0x10($v0)
/* 13AD00 8011CC10 10400016 */  beqz       $v0, .Lmenu_8011CC6C
/* 13AD04 8011CC14 00000000 */   nop
/* 13AD08 8011CC18 8CA20038 */  lw         $v0, 0x38($a1)
/* 13AD0C 8011CC1C 8CA30030 */  lw         $v1, 0x30($a1)
/* 13AD10 8011CC20 00431023 */  subu       $v0, $v0, $v1
/* 13AD14 8011CC24 0082001A */  div        $zero, $a0, $v0
/* 13AD18 8011CC28 14400002 */  bnez       $v0, .Lmenu_8011CC34
/* 13AD1C 8011CC2C 00000000 */   nop
/* 13AD20 8011CC30 0007000D */  break      7
.Lmenu_8011CC34:
/* 13AD24 8011CC34 2401FFFF */  addiu      $at, $zero, -0x1
/* 13AD28 8011CC38 14410004 */  bne        $v0, $at, .Lmenu_8011CC4C
/* 13AD2C 8011CC3C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 13AD30 8011CC40 14810002 */  bne        $a0, $at, .Lmenu_8011CC4C
/* 13AD34 8011CC44 00000000 */   nop
/* 13AD38 8011CC48 0006000D */  break      6
.Lmenu_8011CC4C:
/* 13AD3C 8011CC4C 00001012 */  mflo       $v0
/* 13AD40 8011CC50 8CA30038 */  lw         $v1, 0x38($a1)
/* 13AD44 8011CC54 8CA40030 */  lw         $a0, 0x30($a1)
/* 13AD48 8011CC58 00641823 */  subu       $v1, $v1, $a0
/* 13AD4C 8011CC5C 00430018 */  mult       $v0, $v1
/* 13AD50 8011CC60 ACA20048 */  sw         $v0, 0x48($a1)
/* 13AD54 8011CC64 00001812 */  mflo       $v1
/* 13AD58 8011CC68 ACA30048 */  sw         $v1, 0x48($a1)
.Lmenu_8011CC6C:
/* 13AD5C 8011CC6C 03E00008 */  jr         $ra
/* 13AD60 8011CC70 00000000 */   nop

glabel func_menu_8011CC74
/* 13AD64 8011CC74 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13AD68 8011CC78 AFB10014 */  sw         $s1, 0x14($sp)
/* 13AD6C 8011CC7C 00808821 */  addu       $s1, $a0, $zero
/* 13AD70 8011CC80 AFB00010 */  sw         $s0, 0x10($sp)
/* 13AD74 8011CC84 00A08021 */  addu       $s0, $a1, $zero
/* 13AD78 8011CC88 02002021 */  addu       $a0, $s0, $zero
/* 13AD7C 8011CC8C AFBF0018 */  sw         $ra, 0x18($sp)
/* 13AD80 8011CC90 0C0491AD */  jal        func_menu_801246B4
/* 13AD84 8011CC94 02202821 */   addu      $a1, $s1, $zero
/* 13AD88 8011CC98 8E020054 */  lw         $v0, 0x54($s0)
/* 13AD8C 8011CC9C 26250028 */  addiu      $a1, $s1, 0x28
/* 13AD90 8011CCA0 84440030 */  lh         $a0, 0x30($v0)
/* 13AD94 8011CCA4 8C420034 */  lw         $v0, 0x34($v0)
/* 13AD98 8011CCA8 0040F809 */  jalr       $v0
/* 13AD9C 8011CCAC 02042021 */   addu      $a0, $s0, $a0
/* 13ADA0 8011CCB0 02002821 */  addu       $a1, $s0, $zero
/* 13ADA4 8011CCB4 8E220068 */  lw         $v0, 0x68($s1)
/* 13ADA8 8011CCB8 8E230054 */  lw         $v1, 0x54($s1)
/* 13ADAC 8011CCBC 24420001 */  addiu      $v0, $v0, 0x1
/* 13ADB0 8011CCC0 AE220068 */  sw         $v0, 0x68($s1)
/* 13ADB4 8011CCC4 846400C0 */  lh         $a0, 0xC0($v1)
/* 13ADB8 8011CCC8 8C6200C4 */  lw         $v0, 0xC4($v1)
/* 13ADBC 8011CCCC 0040F809 */  jalr       $v0
/* 13ADC0 8011CCD0 02242021 */   addu      $a0, $s1, $a0
/* 13ADC4 8011CCD4 8E25006C */  lw         $a1, 0x6C($s1)
/* 13ADC8 8011CCD8 14A00004 */  bnez       $a1, .Lmenu_8011CCEC
/* 13ADCC 8011CCDC 24020001 */   addiu     $v0, $zero, 0x1
/* 13ADD0 8011CCE0 8E230068 */  lw         $v1, 0x68($s1)
/* 13ADD4 8011CCE4 14620007 */  bne        $v1, $v0, .Lmenu_8011CD04
/* 13ADD8 8011CCE8 00000000 */   nop
.Lmenu_8011CCEC:
/* 13ADDC 8011CCEC 8E220054 */  lw         $v0, 0x54($s1)
/* 13ADE0 8011CCF0 24A50001 */  addiu      $a1, $a1, 0x1
/* 13ADE4 8011CCF4 844400A8 */  lh         $a0, 0xA8($v0)
/* 13ADE8 8011CCF8 8C4200AC */  lw         $v0, 0xAC($v0)
/* 13ADEC 8011CCFC 0040F809 */  jalr       $v0
/* 13ADF0 8011CD00 02242021 */   addu      $a0, $s1, $a0
.Lmenu_8011CD04:
/* 13ADF4 8011CD04 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13ADF8 8011CD08 8FB10014 */  lw         $s1, 0x14($sp)
/* 13ADFC 8011CD0C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13AE00 8011CD10 03E00008 */  jr         $ra
/* 13AE04 8011CD14 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011CD18
/* 13AE08 8011CD18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13AE0C 8011CD1C AFB10014 */  sw         $s1, 0x14($sp)
/* 13AE10 8011CD20 00808821 */  addu       $s1, $a0, $zero
/* 13AE14 8011CD24 AFB00010 */  sw         $s0, 0x10($sp)
/* 13AE18 8011CD28 00A08021 */  addu       $s0, $a1, $zero
/* 13AE1C 8011CD2C AFBF0018 */  sw         $ra, 0x18($sp)
/* 13AE20 8011CD30 8E020054 */  lw         $v0, 0x54($s0)
/* 13AE24 8011CD34 02202821 */  addu       $a1, $s1, $zero
/* 13AE28 8011CD38 84440020 */  lh         $a0, 0x20($v0)
/* 13AE2C 8011CD3C 8C420024 */  lw         $v0, 0x24($v0)
/* 13AE30 8011CD40 0040F809 */  jalr       $v0
/* 13AE34 8011CD44 02042021 */   addu      $a0, $s0, $a0
/* 13AE38 8011CD48 8E020054 */  lw         $v0, 0x54($s0)
/* 13AE3C 8011CD4C 26250028 */  addiu      $a1, $s1, 0x28
/* 13AE40 8011CD50 84440030 */  lh         $a0, 0x30($v0)
/* 13AE44 8011CD54 8C420034 */  lw         $v0, 0x34($v0)
/* 13AE48 8011CD58 0040F809 */  jalr       $v0
/* 13AE4C 8011CD5C 02042021 */   addu      $a0, $s0, $a0
/* 13AE50 8011CD60 02002821 */  addu       $a1, $s0, $zero
/* 13AE54 8011CD64 8E220068 */  lw         $v0, 0x68($s1)
/* 13AE58 8011CD68 8E230054 */  lw         $v1, 0x54($s1)
/* 13AE5C 8011CD6C 24420001 */  addiu      $v0, $v0, 0x1
/* 13AE60 8011CD70 AE220068 */  sw         $v0, 0x68($s1)
/* 13AE64 8011CD74 846400C0 */  lh         $a0, 0xC0($v1)
/* 13AE68 8011CD78 8C6200C4 */  lw         $v0, 0xC4($v1)
/* 13AE6C 8011CD7C 0040F809 */  jalr       $v0
/* 13AE70 8011CD80 02242021 */   addu      $a0, $s1, $a0
/* 13AE74 8011CD84 8E230068 */  lw         $v1, 0x68($s1)
/* 13AE78 8011CD88 24020001 */  addiu      $v0, $zero, 0x1
/* 13AE7C 8011CD8C 14620007 */  bne        $v1, $v0, .Lmenu_8011CDAC
/* 13AE80 8011CD90 00000000 */   nop
/* 13AE84 8011CD94 8E220054 */  lw         $v0, 0x54($s1)
/* 13AE88 8011CD98 8E25006C */  lw         $a1, 0x6C($s1)
/* 13AE8C 8011CD9C 844400A8 */  lh         $a0, 0xA8($v0)
/* 13AE90 8011CDA0 8C4200AC */  lw         $v0, 0xAC($v0)
/* 13AE94 8011CDA4 0040F809 */  jalr       $v0
/* 13AE98 8011CDA8 02242021 */   addu      $a0, $s1, $a0
.Lmenu_8011CDAC:
/* 13AE9C 8011CDAC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13AEA0 8011CDB0 8FB10014 */  lw         $s1, 0x14($sp)
/* 13AEA4 8011CDB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 13AEA8 8011CDB8 03E00008 */  jr         $ra
/* 13AEAC 8011CDBC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011CDC0
/* 13AEB0 8011CDC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13AEB4 8011CDC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 13AEB8 8011CDC8 00808021 */  addu       $s0, $a0, $zero
/* 13AEBC 8011CDCC AFB10014 */  sw         $s1, 0x14($sp)
/* 13AEC0 8011CDD0 00A08821 */  addu       $s1, $a1, $zero
/* 13AEC4 8011CDD4 AFB20018 */  sw         $s2, 0x18($sp)
/* 13AEC8 8011CDD8 00C09021 */  addu       $s2, $a2, $zero
/* 13AECC 8011CDDC 16400005 */  bnez       $s2, .Lmenu_8011CDF4
/* 13AED0 8011CDE0 AFBF001C */   sw        $ra, 0x1C($sp)
/* 13AED4 8011CDE4 0C04731D */  jal        func_menu_8011CC74
/* 13AED8 8011CDE8 00000000 */   nop
/* 13AEDC 8011CDEC 080473A0 */  j          .Lmenu_8011CE80
/* 13AEE0 8011CDF0 00000000 */   nop
.Lmenu_8011CDF4:
/* 13AEE4 8011CDF4 02002021 */  addu       $a0, $s0, $zero
/* 13AEE8 8011CDF8 0C049345 */  jal        func_menu_80124D14
/* 13AEEC 8011CDFC 2645FFFF */   addiu     $a1, $s2, -0x1
/* 13AEF0 8011CE00 02202021 */  addu       $a0, $s1, $zero
/* 13AEF4 8011CE04 02002821 */  addu       $a1, $s0, $zero
/* 13AEF8 8011CE08 0C049154 */  jal        func_menu_80124550
/* 13AEFC 8011CE0C 00403021 */   addu      $a2, $v0, $zero
/* 13AF00 8011CE10 8E220054 */  lw         $v0, 0x54($s1)
/* 13AF04 8011CE14 26050028 */  addiu      $a1, $s0, 0x28
/* 13AF08 8011CE18 84440030 */  lh         $a0, 0x30($v0)
/* 13AF0C 8011CE1C 8C420034 */  lw         $v0, 0x34($v0)
/* 13AF10 8011CE20 0040F809 */  jalr       $v0
/* 13AF14 8011CE24 02242021 */   addu      $a0, $s1, $a0
/* 13AF18 8011CE28 02202821 */  addu       $a1, $s1, $zero
/* 13AF1C 8011CE2C 8E020068 */  lw         $v0, 0x68($s0)
/* 13AF20 8011CE30 8E030054 */  lw         $v1, 0x54($s0)
/* 13AF24 8011CE34 24420001 */  addiu      $v0, $v0, 0x1
/* 13AF28 8011CE38 AE020068 */  sw         $v0, 0x68($s0)
/* 13AF2C 8011CE3C 846400C0 */  lh         $a0, 0xC0($v1)
/* 13AF30 8011CE40 8C6200C4 */  lw         $v0, 0xC4($v1)
/* 13AF34 8011CE44 0040F809 */  jalr       $v0
/* 13AF38 8011CE48 02042021 */   addu      $a0, $s0, $a0
/* 13AF3C 8011CE4C 8E05006C */  lw         $a1, 0x6C($s0)
/* 13AF40 8011CE50 00B2102A */  slt        $v0, $a1, $s2
/* 13AF44 8011CE54 10400004 */  beqz       $v0, .Lmenu_8011CE68
/* 13AF48 8011CE58 24020001 */   addiu     $v0, $zero, 0x1
/* 13AF4C 8011CE5C 8E030068 */  lw         $v1, 0x68($s0)
/* 13AF50 8011CE60 14620007 */  bne        $v1, $v0, .Lmenu_8011CE80
/* 13AF54 8011CE64 00000000 */   nop
.Lmenu_8011CE68:
/* 13AF58 8011CE68 8E020054 */  lw         $v0, 0x54($s0)
/* 13AF5C 8011CE6C 24A50001 */  addiu      $a1, $a1, 0x1
/* 13AF60 8011CE70 844400A8 */  lh         $a0, 0xA8($v0)
/* 13AF64 8011CE74 8C4200AC */  lw         $v0, 0xAC($v0)
/* 13AF68 8011CE78 0040F809 */  jalr       $v0
/* 13AF6C 8011CE7C 02042021 */   addu      $a0, $s0, $a0
.Lmenu_8011CE80:
/* 13AF70 8011CE80 8FBF001C */  lw         $ra, 0x1C($sp)
/* 13AF74 8011CE84 8FB20018 */  lw         $s2, 0x18($sp)
/* 13AF78 8011CE88 8FB10014 */  lw         $s1, 0x14($sp)
/* 13AF7C 8011CE8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13AF80 8011CE90 03E00008 */  jr         $ra
/* 13AF84 8011CE94 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011CE98
/* 13AF88 8011CE98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13AF8C 8011CE9C AFB10014 */  sw         $s1, 0x14($sp)
/* 13AF90 8011CEA0 00808821 */  addu       $s1, $a0, $zero
/* 13AF94 8011CEA4 00A02021 */  addu       $a0, $a1, $zero
/* 13AF98 8011CEA8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13AF9C 8011CEAC AFB00010 */  sw         $s0, 0x10($sp)
/* 13AFA0 8011CEB0 8C900010 */  lw         $s0, 0x10($a0)
/* 13AFA4 8011CEB4 0C0491D0 */  jal        func_menu_80124740
/* 13AFA8 8011CEB8 00000000 */   nop
/* 13AFAC 8011CEBC 8E220068 */  lw         $v0, 0x68($s1)
/* 13AFB0 8011CEC0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 13AFB4 8011CEC4 AE220068 */  sw         $v0, 0x68($s1)
.Lmenu_8011CEC8:
/* 13AFB8 8011CEC8 12000013 */  beqz       $s0, .Lmenu_8011CF18
/* 13AFBC 8011CECC 02002821 */   addu      $a1, $s0, $zero
/* 13AFC0 8011CED0 8E220054 */  lw         $v0, 0x54($s1)
/* 13AFC4 8011CED4 844400C0 */  lh         $a0, 0xC0($v0)
/* 13AFC8 8011CED8 8C4200C4 */  lw         $v0, 0xC4($v0)
/* 13AFCC 8011CEDC 0040F809 */  jalr       $v0
/* 13AFD0 8011CEE0 02242021 */   addu      $a0, $s1, $a0
/* 13AFD4 8011CEE4 8E220078 */  lw         $v0, 0x78($s1)
/* 13AFD8 8011CEE8 16020008 */  bne        $s0, $v0, .Lmenu_8011CF0C
/* 13AFDC 8011CEEC 00000000 */   nop
/* 13AFE0 8011CEF0 8E25006C */  lw         $a1, 0x6C($s1)
/* 13AFE4 8011CEF4 8E220054 */  lw         $v0, 0x54($s1)
/* 13AFE8 8011CEF8 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 13AFEC 8011CEFC 844400A8 */  lh         $a0, 0xA8($v0)
/* 13AFF0 8011CF00 8C4200AC */  lw         $v0, 0xAC($v0)
/* 13AFF4 8011CF04 0040F809 */  jalr       $v0
/* 13AFF8 8011CF08 02242021 */   addu      $a0, $s1, $a0
.Lmenu_8011CF0C:
/* 13AFFC 8011CF0C 8E100010 */  lw         $s0, 0x10($s0)
/* 13B000 8011CF10 080473B2 */  j          .Lmenu_8011CEC8
/* 13B004 8011CF14 00000000 */   nop
.Lmenu_8011CF18:
/* 13B008 8011CF18 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13B00C 8011CF1C 8FB10014 */  lw         $s1, 0x14($sp)
/* 13B010 8011CF20 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B014 8011CF24 03E00008 */  jr         $ra
/* 13B018 8011CF28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011CF2C
/* 13B01C 8011CF2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13B020 8011CF30 AFB00010 */  sw         $s0, 0x10($sp)
/* 13B024 8011CF34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13B028 8011CF38 0C049345 */  jal        func_menu_80124D14
/* 13B02C 8011CF3C 00808021 */   addu      $s0, $a0, $zero
/* 13B030 8011CF40 02002021 */  addu       $a0, $s0, $zero
/* 13B034 8011CF44 00408021 */  addu       $s0, $v0, $zero
/* 13B038 8011CF48 0C0473A6 */  jal        func_menu_8011CE98
/* 13B03C 8011CF4C 02002821 */   addu      $a1, $s0, $zero
/* 13B040 8011CF50 02001021 */  addu       $v0, $s0, $zero
/* 13B044 8011CF54 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13B048 8011CF58 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B04C 8011CF5C 03E00008 */  jr         $ra
/* 13B050 8011CF60 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011CF64
/* 13B054 8011CF64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13B058 8011CF68 AFB00010 */  sw         $s0, 0x10($sp)
/* 13B05C 8011CF6C 00808021 */  addu       $s0, $a0, $zero
/* 13B060 8011CF70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13B064 8011CF74 8E020068 */  lw         $v0, 0x68($s0)
/* 13B068 8011CF78 10400006 */  beqz       $v0, .Lmenu_8011CF94
/* 13B06C 8011CF7C 02002021 */   addu      $a0, $s0, $zero
.Lmenu_8011CF80:
/* 13B070 8011CF80 0C0473CB */  jal        func_menu_8011CF2C
/* 13B074 8011CF84 00002821 */   addu      $a1, $zero, $zero
/* 13B078 8011CF88 8E020068 */  lw         $v0, 0x68($s0)
/* 13B07C 8011CF8C 1440FFFC */  bnez       $v0, .Lmenu_8011CF80
/* 13B080 8011CF90 02002021 */   addu      $a0, $s0, $zero
.Lmenu_8011CF94:
/* 13B084 8011CF94 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13B088 8011CF98 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B08C 8011CF9C 03E00008 */  jr         $ra
/* 13B090 8011CFA0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011CFA4
/* 13B094 8011CFA4 8C820078 */  lw         $v0, 0x78($a0)
/* 13B098 8011CFA8 03E00008 */  jr         $ra
/* 13B09C 8011CFAC 00000000 */   nop

glabel func_menu_8011CFB0
/* 13B0A0 8011CFB0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13B0A4 8011CFB4 00803021 */  addu       $a2, $a0, $zero
/* 13B0A8 8011CFB8 AFB00030 */  sw         $s0, 0x30($sp)
/* 13B0AC 8011CFBC 00A08021 */  addu       $s0, $a1, $zero
/* 13B0B0 8011CFC0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 13B0B4 8011CFC4 8E070030 */  lw         $a3, 0x30($s0)
/* 13B0B8 8011CFC8 8E080034 */  lw         $t0, 0x34($s0)
/* 13B0BC 8011CFCC 8E090038 */  lw         $t1, 0x38($s0)
/* 13B0C0 8011CFD0 8E0A003C */  lw         $t2, 0x3C($s0)
/* 13B0C4 8011CFD4 AFA70020 */  sw         $a3, 0x20($sp)
/* 13B0C8 8011CFD8 AFA80024 */  sw         $t0, 0x24($sp)
/* 13B0CC 8011CFDC AFA90028 */  sw         $t1, 0x28($sp)
/* 13B0D0 8011CFE0 AFAA002C */  sw         $t2, 0x2C($sp)
/* 13B0D4 8011CFE4 8CC20058 */  lw         $v0, 0x58($a2)
/* 13B0D8 8011CFE8 8C420010 */  lw         $v0, 0x10($v0)
/* 13B0DC 8011CFEC 10400005 */  beqz       $v0, .Lmenu_8011D004
/* 13B0E0 8011CFF0 00000000 */   nop
/* 13B0E4 8011CFF4 8CC30038 */  lw         $v1, 0x38($a2)
/* 13B0E8 8011CFF8 8CC20030 */  lw         $v0, 0x30($a2)
/* 13B0EC 8011CFFC 08047404 */  j          .Lmenu_8011D010
/* 13B0F0 8011D000 00622823 */   subu      $a1, $v1, $v0
.Lmenu_8011D004:
/* 13B0F4 8011D004 8FA30028 */  lw         $v1, 0x28($sp)
/* 13B0F8 8011D008 8FA20020 */  lw         $v0, 0x20($sp)
/* 13B0FC 8011D00C 00622823 */  subu       $a1, $v1, $v0
.Lmenu_8011D010:
/* 13B100 8011D010 8E02000C */  lw         $v0, 0xC($s0)
/* 13B104 8011D014 50400018 */  beql       $v0, $zero, .Lmenu_8011D078
/* 13B108 8011D018 AFA00010 */   sw        $zero, 0x10($sp)
/* 13B10C 8011D01C 8C430038 */  lw         $v1, 0x38($v0)
/* 13B110 8011D020 AFA30010 */  sw         $v1, 0x10($sp)
/* 13B114 8011D024 8CC20058 */  lw         $v0, 0x58($a2)
/* 13B118 8011D028 8C420010 */  lw         $v0, 0x10($v0)
/* 13B11C 8011D02C 10400012 */  beqz       $v0, .Lmenu_8011D078
/* 13B120 8011D030 2462FFFF */   addiu     $v0, $v1, -0x1
/* 13B124 8011D034 00451021 */  addu       $v0, $v0, $a1
/* 13B128 8011D038 0045001A */  div        $zero, $v0, $a1
/* 13B12C 8011D03C 14A00002 */  bnez       $a1, .Lmenu_8011D048
/* 13B130 8011D040 00000000 */   nop
/* 13B134 8011D044 0007000D */  break      7
.Lmenu_8011D048:
/* 13B138 8011D048 2401FFFF */  addiu      $at, $zero, -0x1
/* 13B13C 8011D04C 14A10004 */  bne        $a1, $at, .Lmenu_8011D060
/* 13B140 8011D050 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 13B144 8011D054 14410002 */  bne        $v0, $at, .Lmenu_8011D060
/* 13B148 8011D058 00000000 */   nop
/* 13B14C 8011D05C 0006000D */  break      6
.Lmenu_8011D060:
/* 13B150 8011D060 00001012 */  mflo       $v0
/* 13B154 8011D064 00000000 */  nop
/* 13B158 8011D068 00000000 */  nop
/* 13B15C 8011D06C 00450018 */  mult       $v0, $a1
/* 13B160 8011D070 00001012 */  mflo       $v0
/* 13B164 8011D074 AFA20010 */  sw         $v0, 0x10($sp)
.Lmenu_8011D078:
/* 13B168 8011D078 8FA30024 */  lw         $v1, 0x24($sp)
/* 13B16C 8011D07C 8FA20010 */  lw         $v0, 0x10($sp)
/* 13B170 8011D080 8FA4002C */  lw         $a0, 0x2C($sp)
/* 13B174 8011D084 00451021 */  addu       $v0, $v0, $a1
/* 13B178 8011D088 AFA30014 */  sw         $v1, 0x14($sp)
/* 13B17C 8011D08C AFA4001C */  sw         $a0, 0x1C($sp)
/* 13B180 8011D090 AFA20018 */  sw         $v0, 0x18($sp)
/* 13B184 8011D094 8CC20058 */  lw         $v0, 0x58($a2)
/* 13B188 8011D098 8C420010 */  lw         $v0, 0x10($v0)
/* 13B18C 8011D09C 10400006 */  beqz       $v0, .Lmenu_8011D0B8
/* 13B190 8011D0A0 27A50010 */   addiu     $a1, $sp, 0x10
/* 13B194 8011D0A4 00C02021 */  addu       $a0, $a2, $zero
/* 13B198 8011D0A8 0C049260 */  jal        func_menu_80124980
/* 13B19C 8011D0AC 27A60020 */   addiu     $a2, $sp, 0x20
/* 13B1A0 8011D0B0 08047436 */  j          .Lmenu_8011D0D8
/* 13B1A4 8011D0B4 00000000 */   nop
.Lmenu_8011D0B8:
/* 13B1A8 8011D0B8 8FA70010 */  lw         $a3, 0x10($sp)
/* 13B1AC 8011D0BC 8FA80014 */  lw         $t0, 0x14($sp)
/* 13B1B0 8011D0C0 8FA90018 */  lw         $t1, 0x18($sp)
/* 13B1B4 8011D0C4 8FAA001C */  lw         $t2, 0x1C($sp)
/* 13B1B8 8011D0C8 AFA70020 */  sw         $a3, 0x20($sp)
/* 13B1BC 8011D0CC AFA80024 */  sw         $t0, 0x24($sp)
/* 13B1C0 8011D0D0 AFA90028 */  sw         $t1, 0x28($sp)
/* 13B1C4 8011D0D4 AFAA002C */  sw         $t2, 0x2C($sp)
.Lmenu_8011D0D8:
/* 13B1C8 8011D0D8 8E020054 */  lw         $v0, 0x54($s0)
/* 13B1CC 8011D0DC 27A50020 */  addiu      $a1, $sp, 0x20
/* 13B1D0 8011D0E0 84440028 */  lh         $a0, 0x28($v0)
/* 13B1D4 8011D0E4 8C42002C */  lw         $v0, 0x2C($v0)
/* 13B1D8 8011D0E8 0040F809 */  jalr       $v0
/* 13B1DC 8011D0EC 02042021 */   addu      $a0, $s0, $a0
/* 13B1E0 8011D0F0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 13B1E4 8011D0F4 8FB00030 */  lw         $s0, 0x30($sp)
/* 13B1E8 8011D0F8 03E00008 */  jr         $ra
/* 13B1EC 8011D0FC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_8011D100
/* 13B1F0 8011D100 8C820058 */  lw         $v0, 0x58($a0)
/* 13B1F4 8011D104 C4800048 */  lwc1       $f0, 0x48($a0)
/* 13B1F8 8011D108 46800020 */  cvt.s.w    $f0, $f0
/* 13B1FC 8011D10C 8C46000C */  lw         $a2, 0xC($v0)
/* 13B200 8011D110 8C820050 */  lw         $v0, 0x50($a0)
/* 13B204 8011D114 3C038000 */  lui        $v1, (0x80000000 >> 16)
/* 13B208 8011D118 E4800090 */  swc1       $f0, 0x90($a0)
/* 13B20C 8011D11C 44850000 */  mtc1       $a1, $f0
/* 13B210 8011D120 46800020 */  cvt.s.w    $f0, $f0
/* 13B214 8011D124 00431025 */  or         $v0, $v0, $v1
/* 13B218 8011D128 AC820050 */  sw         $v0, 0x50($a0)
/* 13B21C 8011D12C 24020001 */  addiu      $v0, $zero, 0x1
/* 13B220 8011D130 44861000 */  mtc1       $a2, $f2
/* 13B224 8011D134 468010A0 */  cvt.s.w    $f2, $f2
/* 13B228 8011D138 46020003 */  div.s      $f0, $f0, $f2
/* 13B22C 8011D13C AC820070 */  sw         $v0, 0x70($a0)
/* 13B230 8011D140 AC860074 */  sw         $a2, 0x74($a0)
/* 13B234 8011D144 03E00008 */  jr         $ra
/* 13B238 8011D148 E480008C */   swc1      $f0, 0x8C($a0)

glabel func_menu_8011D14C
/* 13B23C 8011D14C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13B240 8011D150 AFB00010 */  sw         $s0, 0x10($sp)
/* 13B244 8011D154 00808021 */  addu       $s0, $a0, $zero
/* 13B248 8011D158 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13B24C 8011D15C 8E030068 */  lw         $v1, 0x68($s0)
/* 13B250 8011D160 10600028 */  beqz       $v1, .Lmenu_8011D204
/* 13B254 8011D164 00001021 */   addu      $v0, $zero, $zero
/* 13B258 8011D168 8E020070 */  lw         $v0, 0x70($s0)
/* 13B25C 8011D16C 14400024 */  bnez       $v0, .Lmenu_8011D200
/* 13B260 8011D170 2463FFFF */   addiu     $v1, $v1, -0x1
/* 13B264 8011D174 8E02006C */  lw         $v0, 0x6C($s0)
/* 13B268 8011D178 0043102A */  slt        $v0, $v0, $v1
/* 13B26C 8011D17C 14400005 */  bnez       $v0, .Lmenu_8011D194
/* 13B270 8011D180 00000000 */   nop
/* 13B274 8011D184 8E030058 */  lw         $v1, 0x58($s0)
/* 13B278 8011D188 8C620014 */  lw         $v0, 0x14($v1)
/* 13B27C 8011D18C 10400018 */  beqz       $v0, .Lmenu_8011D1F0
/* 13B280 8011D190 00000000 */   nop
.Lmenu_8011D194:
/* 13B284 8011D194 8E030038 */  lw         $v1, 0x38($s0)
/* 13B288 8011D198 8E050030 */  lw         $a1, 0x30($s0)
/* 13B28C 8011D19C 8E020054 */  lw         $v0, 0x54($s0)
/* 13B290 8011D1A0 00652823 */  subu       $a1, $v1, $a1
/* 13B294 8011D1A4 84440090 */  lh         $a0, 0x90($v0)
/* 13B298 8011D1A8 8C420094 */  lw         $v0, 0x94($v0)
/* 13B29C 8011D1AC 0040F809 */  jalr       $v0
/* 13B2A0 8011D1B0 02042021 */   addu      $a0, $s0, $a0
/* 13B2A4 8011D1B4 8E05006C */  lw         $a1, 0x6C($s0)
/* 13B2A8 8011D1B8 02002021 */  addu       $a0, $s0, $zero
/* 13B2AC 8011D1BC 0C046D24 */  jal        func_menu_8011B490
/* 13B2B0 8011D1C0 24A50001 */   addiu     $a1, $a1, 0x1
/* 13B2B4 8011D1C4 8E030054 */  lw         $v1, 0x54($s0)
/* 13B2B8 8011D1C8 00402821 */  addu       $a1, $v0, $zero
/* 13B2BC 8011D1CC 846400A8 */  lh         $a0, 0xA8($v1)
/* 13B2C0 8011D1D0 8C6200AC */  lw         $v0, 0xAC($v1)
/* 13B2C4 8011D1D4 0040F809 */  jalr       $v0
/* 13B2C8 8011D1D8 02042021 */   addu      $a0, $s0, $a0
/* 13B2CC 8011D1DC 8E020058 */  lw         $v0, 0x58($s0)
/* 13B2D0 8011D1E0 8E04005C */  lw         $a0, 0x5C($s0)
/* 13B2D4 8011D1E4 8C450000 */  lw         $a1, 0x0($v0)
/* 13B2D8 8011D1E8 0804747E */  j          .Lmenu_8011D1F8
/* 13B2DC 8011D1EC 00000000 */   nop
.Lmenu_8011D1F0:
/* 13B2E0 8011D1F0 8E04005C */  lw         $a0, 0x5C($s0)
/* 13B2E4 8011D1F4 8C650008 */  lw         $a1, 0x8($v1)
.Lmenu_8011D1F8:
/* 13B2E8 8011D1F8 0C047910 */  jal        func_menu_8011E440
/* 13B2EC 8011D1FC 00000000 */   nop
.Lmenu_8011D200:
/* 13B2F0 8011D200 8E02006C */  lw         $v0, 0x6C($s0)
.Lmenu_8011D204:
/* 13B2F4 8011D204 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13B2F8 8011D208 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B2FC 8011D20C 03E00008 */  jr         $ra
/* 13B300 8011D210 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011D214
/* 13B304 8011D214 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13B308 8011D218 AFB00010 */  sw         $s0, 0x10($sp)
/* 13B30C 8011D21C 00808021 */  addu       $s0, $a0, $zero
/* 13B310 8011D220 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13B314 8011D224 8E020068 */  lw         $v0, 0x68($s0)
/* 13B318 8011D228 10400027 */  beqz       $v0, .Lmenu_8011D2C8
/* 13B31C 8011D22C 00001021 */   addu      $v0, $zero, $zero
/* 13B320 8011D230 8E020070 */  lw         $v0, 0x70($s0)
/* 13B324 8011D234 14400023 */  bnez       $v0, .Lmenu_8011D2C4
/* 13B328 8011D238 00000000 */   nop
/* 13B32C 8011D23C 8E02006C */  lw         $v0, 0x6C($s0)
/* 13B330 8011D240 14400005 */  bnez       $v0, .Lmenu_8011D258
/* 13B334 8011D244 00000000 */   nop
/* 13B338 8011D248 8E030058 */  lw         $v1, 0x58($s0)
/* 13B33C 8011D24C 8C620014 */  lw         $v0, 0x14($v1)
/* 13B340 8011D250 10400018 */  beqz       $v0, .Lmenu_8011D2B4
/* 13B344 8011D254 00000000 */   nop
.Lmenu_8011D258:
/* 13B348 8011D258 8E030030 */  lw         $v1, 0x30($s0)
/* 13B34C 8011D25C 8E050038 */  lw         $a1, 0x38($s0)
/* 13B350 8011D260 8E020054 */  lw         $v0, 0x54($s0)
/* 13B354 8011D264 00652823 */  subu       $a1, $v1, $a1
/* 13B358 8011D268 84440090 */  lh         $a0, 0x90($v0)
/* 13B35C 8011D26C 8C420094 */  lw         $v0, 0x94($v0)
/* 13B360 8011D270 0040F809 */  jalr       $v0
/* 13B364 8011D274 02042021 */   addu      $a0, $s0, $a0
/* 13B368 8011D278 8E05006C */  lw         $a1, 0x6C($s0)
/* 13B36C 8011D27C 02002021 */  addu       $a0, $s0, $zero
/* 13B370 8011D280 0C046D24 */  jal        func_menu_8011B490
/* 13B374 8011D284 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 13B378 8011D288 8E030054 */  lw         $v1, 0x54($s0)
/* 13B37C 8011D28C 00402821 */  addu       $a1, $v0, $zero
/* 13B380 8011D290 846400A8 */  lh         $a0, 0xA8($v1)
/* 13B384 8011D294 8C6200AC */  lw         $v0, 0xAC($v1)
/* 13B388 8011D298 0040F809 */  jalr       $v0
/* 13B38C 8011D29C 02042021 */   addu      $a0, $s0, $a0
/* 13B390 8011D2A0 8E020058 */  lw         $v0, 0x58($s0)
/* 13B394 8011D2A4 8E04005C */  lw         $a0, 0x5C($s0)
/* 13B398 8011D2A8 8C450004 */  lw         $a1, 0x4($v0)
/* 13B39C 8011D2AC 080474AF */  j          .Lmenu_8011D2BC
/* 13B3A0 8011D2B0 00000000 */   nop
.Lmenu_8011D2B4:
/* 13B3A4 8011D2B4 8E04005C */  lw         $a0, 0x5C($s0)
/* 13B3A8 8011D2B8 8C650008 */  lw         $a1, 0x8($v1)
.Lmenu_8011D2BC:
/* 13B3AC 8011D2BC 0C047910 */  jal        func_menu_8011E440
/* 13B3B0 8011D2C0 00000000 */   nop
.Lmenu_8011D2C4:
/* 13B3B4 8011D2C4 8E02006C */  lw         $v0, 0x6C($s0)
.Lmenu_8011D2C8:
/* 13B3B8 8011D2C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13B3BC 8011D2CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B3C0 8011D2D0 03E00008 */  jr         $ra
/* 13B3C4 8011D2D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011D2D8
/* 13B3C8 8011D2D8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 13B3CC 8011D2DC AFB20038 */  sw         $s2, 0x38($sp)
/* 13B3D0 8011D2E0 00809021 */  addu       $s2, $a0, $zero
/* 13B3D4 8011D2E4 AFB3003C */  sw         $s3, 0x3C($sp)
/* 13B3D8 8011D2E8 00A09821 */  addu       $s3, $a1, $zero
/* 13B3DC 8011D2EC AFB40040 */  sw         $s4, 0x40($sp)
/* 13B3E0 8011D2F0 00C0A021 */  addu       $s4, $a2, $zero
/* 13B3E4 8011D2F4 AFBF0044 */  sw         $ra, 0x44($sp)
/* 13B3E8 8011D2F8 AFB10034 */  sw         $s1, 0x34($sp)
/* 13B3EC 8011D2FC AFB00030 */  sw         $s0, 0x30($sp)
/* 13B3F0 8011D300 8E500004 */  lw         $s0, 0x4($s2)
/* 13B3F4 8011D304 8E420058 */  lw         $v0, 0x58($s2)
/* 13B3F8 8011D308 8E430008 */  lw         $v1, 0x8($s2)
/* 13B3FC 8011D30C 8C420014 */  lw         $v0, 0x14($v0)
/* 13B400 8011D310 10400003 */  beqz       $v0, .Lmenu_8011D320
/* 13B404 8011D314 24710030 */   addiu     $s1, $v1, 0x30
/* 13B408 8011D318 16000003 */  bnez       $s0, .Lmenu_8011D328
/* 13B40C 8011D31C 00000000 */   nop
.Lmenu_8011D320:
/* 13B410 8011D320 0804751E */  j          .Lmenu_8011D478
/* 13B414 8011D324 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8011D328:
/* 13B418 8011D328 1200000A */  beqz       $s0, .Lmenu_8011D354
/* 13B41C 8011D32C 02602821 */   addu      $a1, $s3, $zero
/* 13B420 8011D330 8E020054 */  lw         $v0, 0x54($s0)
/* 13B424 8011D334 02803021 */  addu       $a2, $s4, $zero
/* 13B428 8011D338 84440040 */  lh         $a0, 0x40($v0)
/* 13B42C 8011D33C 8C420044 */  lw         $v0, 0x44($v0)
/* 13B430 8011D340 0040F809 */  jalr       $v0
/* 13B434 8011D344 02042021 */   addu      $a0, $s0, $a0
/* 13B438 8011D348 8E100010 */  lw         $s0, 0x10($s0)
/* 13B43C 8011D34C 080474CA */  j          .Lmenu_8011D328
/* 13B440 8011D350 00000000 */   nop
.Lmenu_8011D354:
/* 13B444 8011D354 8E420058 */  lw         $v0, 0x58($s2)
/* 13B448 8011D358 8C420010 */  lw         $v0, 0x10($v0)
/* 13B44C 8011D35C 10400005 */  beqz       $v0, .Lmenu_8011D374
/* 13B450 8011D360 00000000 */   nop
/* 13B454 8011D364 8E430038 */  lw         $v1, 0x38($s2)
/* 13B458 8011D368 8E420030 */  lw         $v0, 0x30($s2)
/* 13B45C 8011D36C 080474E0 */  j          .Lmenu_8011D380
/* 13B460 8011D370 00622823 */   subu      $a1, $v1, $v0
.Lmenu_8011D374:
/* 13B464 8011D374 8E230008 */  lw         $v1, 0x8($s1)
/* 13B468 8011D378 8E220000 */  lw         $v0, 0x0($s1)
/* 13B46C 8011D37C 00622823 */  subu       $a1, $v1, $v0
.Lmenu_8011D380:
/* 13B470 8011D380 8E220008 */  lw         $v0, 0x8($s1)
/* 13B474 8011D384 00451021 */  addu       $v0, $v0, $a1
/* 13B478 8011D388 2442FFFF */  addiu      $v0, $v0, -0x1
/* 13B47C 8011D38C 0045001A */  div        $zero, $v0, $a1
/* 13B480 8011D390 14A00002 */  bnez       $a1, .Lmenu_8011D39C
/* 13B484 8011D394 00000000 */   nop
/* 13B488 8011D398 0007000D */  break      7
.Lmenu_8011D39C:
/* 13B48C 8011D39C 2401FFFF */  addiu      $at, $zero, -0x1
/* 13B490 8011D3A0 14A10004 */  bne        $a1, $at, .Lmenu_8011D3B4
/* 13B494 8011D3A4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 13B498 8011D3A8 14410002 */  bne        $v0, $at, .Lmenu_8011D3B4
/* 13B49C 8011D3AC 00000000 */   nop
/* 13B4A0 8011D3B0 0006000D */  break      6
.Lmenu_8011D3B4:
/* 13B4A4 8011D3B4 00001012 */  mflo       $v0
/* 13B4A8 8011D3B8 00000000 */  nop
/* 13B4AC 8011D3BC 00000000 */  nop
/* 13B4B0 8011D3C0 00450018 */  mult       $v0, $a1
/* 13B4B4 8011D3C4 8E430048 */  lw         $v1, 0x48($s2)
/* 13B4B8 8011D3C8 00651021 */  addu       $v0, $v1, $a1
/* 13B4BC 8011D3CC 00002012 */  mflo       $a0
/* 13B4C0 8011D3D0 0082102A */  slt        $v0, $a0, $v0
/* 13B4C4 8011D3D4 10400027 */  beqz       $v0, .Lmenu_8011D474
/* 13B4C8 8011D3D8 00608821 */   addu      $s1, $v1, $zero
/* 13B4CC 8011D3DC AE400048 */  sw         $zero, 0x48($s2)
/* 13B4D0 8011D3E0 8E670000 */  lw         $a3, 0x0($s3)
/* 13B4D4 8011D3E4 8E680004 */  lw         $t0, 0x4($s3)
/* 13B4D8 8011D3E8 8E690008 */  lw         $t1, 0x8($s3)
/* 13B4DC 8011D3EC 8E6A000C */  lw         $t2, 0xC($s3)
/* 13B4E0 8011D3F0 AFA70010 */  sw         $a3, 0x10($sp)
/* 13B4E4 8011D3F4 AFA80014 */  sw         $t0, 0x14($sp)
/* 13B4E8 8011D3F8 AFA90018 */  sw         $t1, 0x18($sp)
/* 13B4EC 8011D3FC AFAA001C */  sw         $t2, 0x1C($sp)
/* 13B4F0 8011D400 8E870000 */  lw         $a3, 0x0($s4)
/* 13B4F4 8011D404 8E880004 */  lw         $t0, 0x4($s4)
/* 13B4F8 8011D408 8E890008 */  lw         $t1, 0x8($s4)
/* 13B4FC 8011D40C 8E8A000C */  lw         $t2, 0xC($s4)
/* 13B500 8011D410 AFA70020 */  sw         $a3, 0x20($sp)
/* 13B504 8011D414 AFA80024 */  sw         $t0, 0x24($sp)
/* 13B508 8011D418 AFA90028 */  sw         $t1, 0x28($sp)
/* 13B50C 8011D41C AFAA002C */  sw         $t2, 0x2C($sp)
/* 13B510 8011D420 8FA20020 */  lw         $v0, 0x20($sp)
/* 13B514 8011D424 8FA30028 */  lw         $v1, 0x28($sp)
/* 13B518 8011D428 00912023 */  subu       $a0, $a0, $s1
/* 13B51C 8011D42C AFA00010 */  sw         $zero, 0x10($sp)
/* 13B520 8011D430 00441021 */  addu       $v0, $v0, $a0
/* 13B524 8011D434 00621823 */  subu       $v1, $v1, $v0
/* 13B528 8011D438 AFA20020 */  sw         $v0, 0x20($sp)
/* 13B52C 8011D43C AFA30018 */  sw         $v1, 0x18($sp)
/* 13B530 8011D440 8E500004 */  lw         $s0, 0x4($s2)
.Lmenu_8011D444:
/* 13B534 8011D444 1200000A */  beqz       $s0, .Lmenu_8011D470
/* 13B538 8011D448 27A50010 */   addiu     $a1, $sp, 0x10
/* 13B53C 8011D44C 8E020054 */  lw         $v0, 0x54($s0)
/* 13B540 8011D450 27A60020 */  addiu      $a2, $sp, 0x20
/* 13B544 8011D454 84440040 */  lh         $a0, 0x40($v0)
/* 13B548 8011D458 8C420044 */  lw         $v0, 0x44($v0)
/* 13B54C 8011D45C 0040F809 */  jalr       $v0
/* 13B550 8011D460 02042021 */   addu      $a0, $s0, $a0
/* 13B554 8011D464 8E100010 */  lw         $s0, 0x10($s0)
/* 13B558 8011D468 08047511 */  j          .Lmenu_8011D444
/* 13B55C 8011D46C 00000000 */   nop
.Lmenu_8011D470:
/* 13B560 8011D470 AE510048 */  sw         $s1, 0x48($s2)
.Lmenu_8011D474:
/* 13B564 8011D474 02401021 */  addu       $v0, $s2, $zero
.Lmenu_8011D478:
/* 13B568 8011D478 8FBF0044 */  lw         $ra, 0x44($sp)
/* 13B56C 8011D47C 8FB40040 */  lw         $s4, 0x40($sp)
/* 13B570 8011D480 8FB3003C */  lw         $s3, 0x3C($sp)
/* 13B574 8011D484 8FB20038 */  lw         $s2, 0x38($sp)
/* 13B578 8011D488 8FB10034 */  lw         $s1, 0x34($sp)
/* 13B57C 8011D48C 8FB00030 */  lw         $s0, 0x30($sp)
/* 13B580 8011D490 03E00008 */  jr         $ra
/* 13B584 8011D494 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_8011D498
/* 13B588 8011D498 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13B58C 8011D49C AFB00010 */  sw         $s0, 0x10($sp)
/* 13B590 8011D4A0 00808021 */  addu       $s0, $a0, $zero
/* 13B594 8011D4A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13B598 8011D4A8 8E020070 */  lw         $v0, 0x70($s0)
/* 13B59C 8011D4AC 14400003 */  bnez       $v0, .Lmenu_8011D4BC
/* 13B5A0 8011D4B0 00000000 */   nop
.Lmenu_8011D4B4:
/* 13B5A4 8011D4B4 0804757E */  j          .Lmenu_8011D5F8
/* 13B5A8 8011D4B8 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8011D4BC:
/* 13B5AC 8011D4BC 8E030074 */  lw         $v1, 0x74($s0)
/* 13B5B0 8011D4C0 14600016 */  bnez       $v1, .Lmenu_8011D51C
/* 13B5B4 8011D4C4 0065102B */   sltu      $v0, $v1, $a1
/* 13B5B8 8011D4C8 3C047FFF */  lui        $a0, (0x7FFFFFFF >> 16)
/* 13B5BC 8011D4CC 8E020050 */  lw         $v0, 0x50($s0)
/* 13B5C0 8011D4D0 8E030054 */  lw         $v1, 0x54($s0)
/* 13B5C4 8011D4D4 3484FFFF */  ori        $a0, $a0, (0x7FFFFFFF & 0xFFFF)
/* 13B5C8 8011D4D8 AE000070 */  sw         $zero, 0x70($s0)
/* 13B5CC 8011D4DC 00441024 */  and        $v0, $v0, $a0
/* 13B5D0 8011D4E0 AE020050 */  sw         $v0, 0x50($s0)
/* 13B5D4 8011D4E4 84640088 */  lh         $a0, 0x88($v1)
/* 13B5D8 8011D4E8 8C62008C */  lw         $v0, 0x8C($v1)
/* 13B5DC 8011D4EC 0040F809 */  jalr       $v0
/* 13B5E0 8011D4F0 02042021 */   addu      $a0, $s0, $a0
/* 13B5E4 8011D4F4 8E030024 */  lw         $v1, 0x24($s0)
/* 13B5E8 8011D4F8 1060FFEE */  beqz       $v1, .Lmenu_8011D4B4
/* 13B5EC 8011D4FC 02002821 */   addu      $a1, $s0, $zero
/* 13B5F0 8011D500 8C620000 */  lw         $v0, 0x0($v1)
/* 13B5F4 8011D504 84440028 */  lh         $a0, 0x28($v0)
/* 13B5F8 8011D508 8C42002C */  lw         $v0, 0x2C($v0)
/* 13B5FC 8011D50C 0040F809 */  jalr       $v0
/* 13B600 8011D510 00642021 */   addu      $a0, $v1, $a0
/* 13B604 8011D514 0804757E */  j          .Lmenu_8011D5F8
/* 13B608 8011D518 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8011D51C:
/* 13B60C 8011D51C 54400001 */  bnel       $v0, $zero, .Lmenu_8011D524
/* 13B610 8011D520 00602821 */   addu      $a1, $v1, $zero
.Lmenu_8011D524:
/* 13B614 8011D524 C602008C */  lwc1       $f2, 0x8C($s0)
/* 13B618 8011D528 44850000 */  mtc1       $a1, $f0
/* 13B61C 8011D52C 46800020 */  cvt.s.w    $f0, $f0
/* 13B620 8011D530 46001082 */  mul.s      $f2, $f2, $f0
/* 13B624 8011D534 C6000090 */  lwc1       $f0, 0x90($s0)
/* 13B628 8011D538 44802000 */  mtc1       $zero, $f4
/* 13B62C 8011D53C 46020000 */  add.s      $f0, $f0, $f2
/* 13B630 8011D540 00651023 */  subu       $v0, $v1, $a1
/* 13B634 8011D544 AE020074 */  sw         $v0, 0x74($s0)
/* 13B638 8011D548 4604003C */  c.lt.s     $f0, $f4
/* 13B63C 8011D54C 00000000 */  nop
/* 13B640 8011D550 45000025 */  bc1f       .Lmenu_8011D5E8
/* 13B644 8011D554 E6000090 */   swc1      $f0, 0x90($s0)
/* 13B648 8011D558 8E020058 */  lw         $v0, 0x58($s0)
/* 13B64C 8011D55C 8C420010 */  lw         $v0, 0x10($v0)
/* 13B650 8011D560 1040001A */  beqz       $v0, .Lmenu_8011D5CC
/* 13B654 8011D564 00000000 */   nop
/* 13B658 8011D568 8E020008 */  lw         $v0, 0x8($s0)
/* 13B65C 8011D56C 8E030038 */  lw         $v1, 0x38($s0)
/* 13B660 8011D570 8C420038 */  lw         $v0, 0x38($v0)
/* 13B664 8011D574 8E040030 */  lw         $a0, 0x30($s0)
/* 13B668 8011D578 00431021 */  addu       $v0, $v0, $v1
/* 13B66C 8011D57C 00441023 */  subu       $v0, $v0, $a0
/* 13B670 8011D580 2442FFFF */  addiu      $v0, $v0, -0x1
/* 13B674 8011D584 00641823 */  subu       $v1, $v1, $a0
/* 13B678 8011D588 0043001A */  div        $zero, $v0, $v1
/* 13B67C 8011D58C 14600002 */  bnez       $v1, .Lmenu_8011D598
/* 13B680 8011D590 00000000 */   nop
/* 13B684 8011D594 0007000D */  break      7
.Lmenu_8011D598:
/* 13B688 8011D598 2401FFFF */  addiu      $at, $zero, -0x1
/* 13B68C 8011D59C 14610004 */  bne        $v1, $at, .Lmenu_8011D5B0
/* 13B690 8011D5A0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 13B694 8011D5A4 14410002 */  bne        $v0, $at, .Lmenu_8011D5B0
/* 13B698 8011D5A8 00000000 */   nop
/* 13B69C 8011D5AC 0006000D */  break      6
.Lmenu_8011D5B0:
/* 13B6A0 8011D5B0 00002012 */  mflo       $a0
/* 13B6A4 8011D5B4 00000000 */  nop
/* 13B6A8 8011D5B8 00000000 */  nop
/* 13B6AC 8011D5BC 00830018 */  mult       $a0, $v1
/* 13B6B0 8011D5C0 00002012 */  mflo       $a0
/* 13B6B4 8011D5C4 08047575 */  j          .Lmenu_8011D5D4
/* 13B6B8 8011D5C8 00000000 */   nop
.Lmenu_8011D5CC:
/* 13B6BC 8011D5CC 8E020008 */  lw         $v0, 0x8($s0)
/* 13B6C0 8011D5D0 8C440038 */  lw         $a0, 0x38($v0)
.Lmenu_8011D5D4:
/* 13B6C4 8011D5D4 C6000090 */  lwc1       $f0, 0x90($s0)
/* 13B6C8 8011D5D8 44841000 */  mtc1       $a0, $f2
/* 13B6CC 8011D5DC 468010A0 */  cvt.s.w    $f2, $f2
/* 13B6D0 8011D5E0 46020000 */  add.s      $f0, $f0, $f2
/* 13B6D4 8011D5E4 E6000090 */  swc1       $f0, 0x90($s0)
.Lmenu_8011D5E8:
/* 13B6D8 8011D5E8 C6000090 */  lwc1       $f0, 0x90($s0)
/* 13B6DC 8011D5EC 00001021 */  addu       $v0, $zero, $zero
/* 13B6E0 8011D5F0 4600018D */  trunc.w.s  $f6, $f0
/* 13B6E4 8011D5F4 E6060048 */  swc1       $f6, 0x48($s0)
.Lmenu_8011D5F8:
/* 13B6E8 8011D5F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13B6EC 8011D5FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B6F0 8011D600 03E00008 */  jr         $ra
/* 13B6F4 8011D604 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011D608
/* 13B6F8 8011D608 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13B6FC 8011D60C AFBF0010 */  sw         $ra, 0x10($sp)
/* 13B700 8011D610 0C0472AB */  jal        func_menu_8011CAAC
/* 13B704 8011D614 00000000 */   nop
/* 13B708 8011D618 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13B70C 8011D61C 03E00008 */  jr         $ra
/* 13B710 8011D620 27BD0018 */   addiu     $sp, $sp, 0x18
