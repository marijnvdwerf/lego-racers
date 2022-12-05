.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8011D630
/* 13B720 8011D630 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13B724 8011D634 AFB00010 */  sw         $s0, 0x10($sp)
/* 13B728 8011D638 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13B72C 8011D63C 0C044AE0 */  jal        func_menu_80112B80
/* 13B730 8011D640 00808021 */   addu      $s0, $a0, $zero
/* 13B734 8011D644 3C02800D */  lui        $v0, %hi(D_menu_800D0810)
/* 13B738 8011D648 24420810 */  addiu      $v0, $v0, %lo(D_menu_800D0810)
/* 13B73C 8011D64C 260405EC */  addiu      $a0, $s0, 0x5EC
/* 13B740 8011D650 0C047BA4 */  jal        func_menu_8011EE90
/* 13B744 8011D654 AE020054 */   sw        $v0, 0x54($s0)
/* 13B748 8011D658 0C047BA4 */  jal        func_menu_8011EE90
/* 13B74C 8011D65C 26040648 */   addiu     $a0, $s0, 0x648
/* 13B750 8011D660 0C0475B7 */  jal        func_menu_8011D6DC
/* 13B754 8011D664 02002021 */   addu      $a0, $s0, $zero
/* 13B758 8011D668 02001021 */  addu       $v0, $s0, $zero
/* 13B75C 8011D66C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13B760 8011D670 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B764 8011D674 03E00008 */  jr         $ra
/* 13B768 8011D678 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011D67C
/* 13B76C 8011D67C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13B770 8011D680 AFB00010 */  sw         $s0, 0x10($sp)
/* 13B774 8011D684 00808021 */  addu       $s0, $a0, $zero
/* 13B778 8011D688 AFB10014 */  sw         $s1, 0x14($sp)
/* 13B77C 8011D68C 00A08821 */  addu       $s1, $a1, $zero
/* 13B780 8011D690 3C02800D */  lui        $v0, %hi(D_menu_800D0810)
/* 13B784 8011D694 24420810 */  addiu      $v0, $v0, %lo(D_menu_800D0810)
/* 13B788 8011D698 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13B78C 8011D69C 0C048BC6 */  jal        func_menu_80122F18
/* 13B790 8011D6A0 AE020054 */   sw        $v0, 0x54($s0)
/* 13B794 8011D6A4 26040648 */  addiu      $a0, $s0, 0x648
/* 13B798 8011D6A8 0C047BB3 */  jal        func_menu_8011EECC
/* 13B79C 8011D6AC 24050002 */   addiu     $a1, $zero, 0x2
/* 13B7A0 8011D6B0 260405EC */  addiu      $a0, $s0, 0x5EC
/* 13B7A4 8011D6B4 0C047BB3 */  jal        func_menu_8011EECC
/* 13B7A8 8011D6B8 24050002 */   addiu     $a1, $zero, 0x2
/* 13B7AC 8011D6BC 02002021 */  addu       $a0, $s0, $zero
/* 13B7B0 8011D6C0 0C044AF3 */  jal        func_menu_80112BCC
/* 13B7B4 8011D6C4 02202821 */   addu      $a1, $s1, $zero
/* 13B7B8 8011D6C8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13B7BC 8011D6CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 13B7C0 8011D6D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B7C4 8011D6D4 03E00008 */  jr         $ra
/* 13B7C8 8011D6D8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011D6DC
/* 13B7CC 8011D6DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13B7D0 8011D6E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 13B7D4 8011D6E4 00808021 */  addu       $s0, $a0, $zero
/* 13B7D8 8011D6E8 26040648 */  addiu      $a0, $s0, 0x648
/* 13B7DC 8011D6EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 13B7E0 8011D6F0 AE0006C0 */  sw         $zero, 0x6C0($s0)
/* 13B7E4 8011D6F4 AE0006C8 */  sw         $zero, 0x6C8($s0)
/* 13B7E8 8011D6F8 AE0006C4 */  sw         $zero, 0x6C4($s0)
/* 13B7EC 8011D6FC AE0006CC */  sw         $zero, 0x6CC($s0)
/* 13B7F0 8011D700 0C049139 */  jal        func_menu_801244E4
/* 13B7F4 8011D704 AE0005E8 */   sw        $zero, 0x5E8($s0)
/* 13B7F8 8011D708 0C049139 */  jal        func_menu_801244E4
/* 13B7FC 8011D70C 260405EC */   addiu     $a0, $s0, 0x5EC
/* 13B800 8011D710 0C048B1D */  jal        func_menu_80122C74
/* 13B804 8011D714 02002021 */   addu      $a0, $s0, $zero
/* 13B808 8011D718 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13B80C 8011D71C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B810 8011D720 03E00008 */  jr         $ra
/* 13B814 8011D724 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011D728
/* 13B818 8011D728 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13B81C 8011D72C AFB00010 */  sw         $s0, 0x10($sp)
/* 13B820 8011D730 00808021 */  addu       $s0, $a0, $zero
/* 13B824 8011D734 AFB10014 */  sw         $s1, 0x14($sp)
/* 13B828 8011D738 00A08821 */  addu       $s1, $a1, $zero
/* 13B82C 8011D73C AFBF001C */  sw         $ra, 0x1C($sp)
/* 13B830 8011D740 AFB20018 */  sw         $s2, 0x18($sp)
/* 13B834 8011D744 8E020054 */  lw         $v0, 0x54($s0)
/* 13B838 8011D748 00C09021 */  addu       $s2, $a2, $zero
/* 13B83C 8011D74C 84440018 */  lh         $a0, 0x18($v0)
/* 13B840 8011D750 8C42001C */  lw         $v0, 0x1C($v0)
/* 13B844 8011D754 0040F809 */  jalr       $v0
/* 13B848 8011D758 02042021 */   addu      $a0, $s0, $a0
/* 13B84C 8011D75C AE1205E8 */  sw         $s2, 0x5E8($s0)
/* 13B850 8011D760 8E2200B0 */  lw         $v0, 0xB0($s1)
/* 13B854 8011D764 AE0206C0 */  sw         $v0, 0x6C0($s0)
/* 13B858 8011D768 8E2200B4 */  lw         $v0, 0xB4($s1)
/* 13B85C 8011D76C AE0206BC */  sw         $v0, 0x6BC($s0)
/* 13B860 8011D770 8E22007C */  lw         $v0, 0x7C($s1)
/* 13B864 8011D774 14400002 */  bnez       $v0, .Lmenu_8011D780
/* 13B868 8011D778 262200AC */   addiu     $v0, $s1, 0xAC
/* 13B86C 8011D77C 264200B8 */  addiu      $v0, $s2, 0xB8
.Lmenu_8011D780:
/* 13B870 8011D780 88430000 */  lwl        $v1, 0x0($v0)
/* 13B874 8011D784 98430003 */  lwr        $v1, 0x3($v0)
/* 13B878 8011D788 AA0306E0 */  swl        $v1, 0x6E0($s0)
/* 13B87C 8011D78C BA0306E3 */  swr        $v1, 0x6E3($s0)
/* 13B880 8011D790 02002021 */  addu       $a0, $s0, $zero
/* 13B884 8011D794 02202821 */  addu       $a1, $s1, $zero
/* 13B888 8011D798 0C044B4D */  jal        func_menu_80112D34
/* 13B88C 8011D79C 02403021 */   addu      $a2, $s2, $zero
/* 13B890 8011D7A0 10400026 */  beqz       $v0, .Lmenu_8011D83C
/* 13B894 8011D7A4 00000000 */   nop
/* 13B898 8011D7A8 8E220090 */  lw         $v0, 0x90($s1)
/* 13B89C 8011D7AC AC500028 */  sw         $s0, 0x28($v0)
/* 13B8A0 8011D7B0 8E22008C */  lw         $v0, 0x8C($s1)
/* 13B8A4 8011D7B4 AC500028 */  sw         $s0, 0x28($v0)
/* 13B8A8 8011D7B8 8E250090 */  lw         $a1, 0x90($s1)
/* 13B8AC 8011D7BC 0C047BCC */  jal        func_menu_8011EF30
/* 13B8B0 8011D7C0 26040648 */   addiu     $a0, $s0, 0x648
/* 13B8B4 8011D7C4 1040001D */  beqz       $v0, .Lmenu_8011D83C
/* 13B8B8 8011D7C8 00000000 */   nop
/* 13B8BC 8011D7CC 8E25008C */  lw         $a1, 0x8C($s1)
/* 13B8C0 8011D7D0 0C047BCC */  jal        func_menu_8011EF30
/* 13B8C4 8011D7D4 260405EC */   addiu     $a0, $s0, 0x5EC
/* 13B8C8 8011D7D8 10400018 */  beqz       $v0, .Lmenu_8011D83C
/* 13B8CC 8011D7DC 00000000 */   nop
/* 13B8D0 8011D7E0 8E020054 */  lw         $v0, 0x54($s0)
/* 13B8D4 8011D7E4 84440108 */  lh         $a0, 0x108($v0)
/* 13B8D8 8011D7E8 8C42010C */  lw         $v0, 0x10C($v0)
/* 13B8DC 8011D7EC 0040F809 */  jalr       $v0
/* 13B8E0 8011D7F0 02042021 */   addu      $a0, $s0, $a0
/* 13B8E4 8011D7F4 8E020054 */  lw         $v0, 0x54($s0)
/* 13B8E8 8011D7F8 84440110 */  lh         $a0, 0x110($v0)
/* 13B8EC 8011D7FC 8C420114 */  lw         $v0, 0x114($v0)
/* 13B8F0 8011D800 0040F809 */  jalr       $v0
/* 13B8F4 8011D804 02042021 */   addu      $a0, $s0, $a0
/* 13B8F8 8011D808 8E020054 */  lw         $v0, 0x54($s0)
/* 13B8FC 8011D80C 84440118 */  lh         $a0, 0x118($v0)
/* 13B900 8011D810 8C42011C */  lw         $v0, 0x11C($v0)
/* 13B904 8011D814 0040F809 */  jalr       $v0
/* 13B908 8011D818 02042021 */   addu      $a0, $s0, $a0
/* 13B90C 8011D81C 8E020054 */  lw         $v0, 0x54($s0)
/* 13B910 8011D820 26050028 */  addiu      $a1, $s0, 0x28
/* 13B914 8011D824 84440030 */  lh         $a0, 0x30($v0)
/* 13B918 8011D828 8C420034 */  lw         $v0, 0x34($v0)
/* 13B91C 8011D82C 0040F809 */  jalr       $v0
/* 13B920 8011D830 02042021 */   addu      $a0, $s0, $a0
/* 13B924 8011D834 08047615 */  j          .Lmenu_8011D854
/* 13B928 8011D838 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_8011D83C:
/* 13B92C 8011D83C 8E020054 */  lw         $v0, 0x54($s0)
/* 13B930 8011D840 84440018 */  lh         $a0, 0x18($v0)
/* 13B934 8011D844 8C42001C */  lw         $v0, 0x1C($v0)
/* 13B938 8011D848 0040F809 */  jalr       $v0
/* 13B93C 8011D84C 02042021 */   addu      $a0, $s0, $a0
/* 13B940 8011D850 00001021 */  addu       $v0, $zero, $zero
.Lmenu_8011D854:
/* 13B944 8011D854 8FBF001C */  lw         $ra, 0x1C($sp)
/* 13B948 8011D858 8FB20018 */  lw         $s2, 0x18($sp)
/* 13B94C 8011D85C 8FB10014 */  lw         $s1, 0x14($sp)
/* 13B950 8011D860 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B954 8011D864 03E00008 */  jr         $ra
/* 13B958 8011D868 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011D86C
/* 13B95C 8011D86C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13B960 8011D870 AFB00010 */  sw         $s0, 0x10($sp)
/* 13B964 8011D874 00808021 */  addu       $s0, $a0, $zero
/* 13B968 8011D878 AFB10014 */  sw         $s1, 0x14($sp)
/* 13B96C 8011D87C 00A08821 */  addu       $s1, $a1, $zero
/* 13B970 8011D880 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13B974 8011D884 0C0493A4 */  jal        func_menu_80124E90
/* 13B978 8011D888 26040648 */   addiu     $a0, $s0, 0x648
/* 13B97C 8011D88C 260405EC */  addiu      $a0, $s0, 0x5EC
/* 13B980 8011D890 0C0493A4 */  jal        func_menu_80124E90
/* 13B984 8011D894 02202821 */   addu      $a1, $s1, $zero
/* 13B988 8011D898 02002021 */  addu       $a0, $s0, $zero
/* 13B98C 8011D89C 0C0493A4 */  jal        func_menu_80124E90
/* 13B990 8011D8A0 02202821 */   addu      $a1, $s1, $zero
/* 13B994 8011D8A4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13B998 8011D8A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 13B99C 8011D8AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B9A0 8011D8B0 03E00008 */  jr         $ra
/* 13B9A4 8011D8B4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011D8B8
/* 13B9A8 8011D8B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13B9AC 8011D8BC AFB00010 */  sw         $s0, 0x10($sp)
/* 13B9B0 8011D8C0 00808021 */  addu       $s0, $a0, $zero
/* 13B9B4 8011D8C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13B9B8 8011D8C8 8E0506C0 */  lw         $a1, 0x6C0($s0)
/* 13B9BC 8011D8CC 10A00012 */  beqz       $a1, .Lmenu_8011D918
/* 13B9C0 8011D8D0 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 13B9C4 8011D8D4 8E020054 */  lw         $v0, 0x54($s0)
/* 13B9C8 8011D8D8 84440128 */  lh         $a0, 0x128($v0)
/* 13B9CC 8011D8DC 8C42012C */  lw         $v0, 0x12C($v0)
/* 13B9D0 8011D8E0 0040F809 */  jalr       $v0
/* 13B9D4 8011D8E4 02042021 */   addu      $a0, $s0, $a0
/* 13B9D8 8011D8E8 8E030170 */  lw         $v1, 0x170($s0)
/* 13B9DC 8011D8EC 10600006 */  beqz       $v1, .Lmenu_8011D908
/* 13B9E0 8011D8F0 02002821 */   addu      $a1, $s0, $zero
/* 13B9E4 8011D8F4 8C620000 */  lw         $v0, 0x0($v1)
/* 13B9E8 8011D8F8 84440090 */  lh         $a0, 0x90($v0)
/* 13B9EC 8011D8FC 8C420094 */  lw         $v0, 0x94($v0)
/* 13B9F0 8011D900 0040F809 */  jalr       $v0
/* 13B9F4 8011D904 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011D908:
/* 13B9F8 8011D908 8E04016C */  lw         $a0, 0x16C($s0)
/* 13B9FC 8011D90C 960506E0 */  lhu        $a1, 0x6E0($s0)
/* 13BA00 8011D910 08047648 */  j          .Lmenu_8011D920
/* 13BA04 8011D914 00000000 */   nop
.Lmenu_8011D918:
/* 13BA08 8011D918 8E04016C */  lw         $a0, 0x16C($s0)
/* 13BA0C 8011D91C 960506E2 */  lhu        $a1, 0x6E2($s0)
.Lmenu_8011D920:
/* 13BA10 8011D920 0C047910 */  jal        func_menu_8011E440
/* 13BA14 8011D924 00000000 */   nop
/* 13BA18 8011D928 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13BA1C 8011D92C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13BA20 8011D930 03E00008 */  jr         $ra
/* 13BA24 8011D934 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011D938
/* 13BA28 8011D938 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13BA2C 8011D93C AFB00010 */  sw         $s0, 0x10($sp)
/* 13BA30 8011D940 00808021 */  addu       $s0, $a0, $zero
/* 13BA34 8011D944 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13BA38 8011D948 8E0206BC */  lw         $v0, 0x6BC($s0)
/* 13BA3C 8011D94C 8E0506C0 */  lw         $a1, 0x6C0($s0)
/* 13BA40 8011D950 2442FFFF */  addiu      $v0, $v0, -0x1
/* 13BA44 8011D954 10A20012 */  beq        $a1, $v0, .Lmenu_8011D9A0
/* 13BA48 8011D958 24A50001 */   addiu     $a1, $a1, 0x1
/* 13BA4C 8011D95C 8E020054 */  lw         $v0, 0x54($s0)
/* 13BA50 8011D960 84440128 */  lh         $a0, 0x128($v0)
/* 13BA54 8011D964 8C42012C */  lw         $v0, 0x12C($v0)
/* 13BA58 8011D968 0040F809 */  jalr       $v0
/* 13BA5C 8011D96C 02042021 */   addu      $a0, $s0, $a0
/* 13BA60 8011D970 8E030170 */  lw         $v1, 0x170($s0)
/* 13BA64 8011D974 10600006 */  beqz       $v1, .Lmenu_8011D990
/* 13BA68 8011D978 02002821 */   addu      $a1, $s0, $zero
/* 13BA6C 8011D97C 8C620000 */  lw         $v0, 0x0($v1)
/* 13BA70 8011D980 84440090 */  lh         $a0, 0x90($v0)
/* 13BA74 8011D984 8C420094 */  lw         $v0, 0x94($v0)
/* 13BA78 8011D988 0040F809 */  jalr       $v0
/* 13BA7C 8011D98C 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011D990:
/* 13BA80 8011D990 8E04016C */  lw         $a0, 0x16C($s0)
/* 13BA84 8011D994 960506E0 */  lhu        $a1, 0x6E0($s0)
/* 13BA88 8011D998 0804766A */  j          .Lmenu_8011D9A8
/* 13BA8C 8011D99C 00000000 */   nop
.Lmenu_8011D9A0:
/* 13BA90 8011D9A0 8E04016C */  lw         $a0, 0x16C($s0)
/* 13BA94 8011D9A4 960506E2 */  lhu        $a1, 0x6E2($s0)
.Lmenu_8011D9A8:
/* 13BA98 8011D9A8 0C047910 */  jal        func_menu_8011E440
/* 13BA9C 8011D9AC 00000000 */   nop
/* 13BAA0 8011D9B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13BAA4 8011D9B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 13BAA8 8011D9B8 03E00008 */  jr         $ra
/* 13BAAC 8011D9BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011D9C0
/* 13BAB0 8011D9C0 03E00008 */  jr         $ra
/* 13BAB4 8011D9C4 00001021 */   addu      $v0, $zero, $zero

glabel func_menu_8011D9C8
/* 13BAB8 8011D9C8 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* 13BABC 8011D9CC 00A21024 */  and        $v0, $a1, $v0
/* 13BAC0 8011D9D0 3C032000 */  lui        $v1, (0x20000000 >> 16)
/* 13BAC4 8011D9D4 14430003 */  bne        $v0, $v1, .Lmenu_8011D9E4
/* 13BAC8 8011D9D8 3C023000 */   lui       $v0, (0x30000009 >> 16)
/* 13BACC 8011D9DC 03E00008 */  jr         $ra
/* 13BAD0 8011D9E0 00A01021 */   addu      $v0, $a1, $zero
.Lmenu_8011D9E4:
/* 13BAD4 8011D9E4 34420009 */  ori        $v0, $v0, (0x30000009 & 0xFFFF)
/* 13BAD8 8011D9E8 50A20022 */  beql       $a1, $v0, .Lmenu_8011DA74
/* 13BADC 8011D9EC 3C023000 */   lui       $v0, (0x3000000B >> 16)
/* 13BAE0 8011D9F0 0045102B */  sltu       $v0, $v0, $a1
/* 13BAE4 8011D9F4 14400013 */  bnez       $v0, .Lmenu_8011DA44
/* 13BAE8 8011D9F8 3C023000 */   lui       $v0, (0x3000000B >> 16)
/* 13BAEC 8011D9FC 3C021000 */  lui        $v0, (0x100000CD >> 16)
/* 13BAF0 8011DA00 344200CD */  ori        $v0, $v0, (0x100000CD & 0xFFFF)
/* 13BAF4 8011DA04 50A2001D */  beql       $a1, $v0, .Lmenu_8011DA7C
/* 13BAF8 8011DA08 3C023000 */   lui       $v0, (0x3000000A >> 16)
/* 13BAFC 8011DA0C 0045102B */  sltu       $v0, $v0, $a1
/* 13BB00 8011DA10 14400007 */  bnez       $v0, .Lmenu_8011DA30
/* 13BB04 8011DA14 3C023000 */   lui       $v0, (0x30000007 >> 16)
/* 13BB08 8011DA18 3C021000 */  lui        $v0, (0x100000CB >> 16)
/* 13BB0C 8011DA1C 344200CB */  ori        $v0, $v0, (0x100000CB & 0xFFFF)
/* 13BB10 8011DA20 10A20014 */  beq        $a1, $v0, .Lmenu_8011DA74
/* 13BB14 8011DA24 3C023000 */   lui       $v0, (0x30000007 >> 16)
/* 13BB18 8011DA28 080476A1 */  j          .Lmenu_8011DA84
/* 13BB1C 8011DA2C 00000000 */   nop
.Lmenu_8011DA30:
/* 13BB20 8011DA30 34420007 */  ori        $v0, $v0, (0x30000007 & 0xFFFF)
/* 13BB24 8011DA34 10A20011 */  beq        $a1, $v0, .Lmenu_8011DA7C
/* 13BB28 8011DA38 3C023000 */   lui       $v0, (0x3000000B >> 16)
/* 13BB2C 8011DA3C 080476A1 */  j          .Lmenu_8011DA84
/* 13BB30 8011DA40 00000000 */   nop
.Lmenu_8011DA44:
/* 13BB34 8011DA44 3442000B */  ori        $v0, $v0, (0x3000000B & 0xFFFF)
/* 13BB38 8011DA48 50A2000A */  beql       $a1, $v0, .Lmenu_8011DA74
/* 13BB3C 8011DA4C 3C023000 */   lui       $v0, (0x3000000B >> 16)
/* 13BB40 8011DA50 00A2102B */  sltu       $v0, $a1, $v0
/* 13BB44 8011DA54 14400009 */  bnez       $v0, .Lmenu_8011DA7C
/* 13BB48 8011DA58 3C023000 */   lui       $v0, (0x3000000A >> 16)
/* 13BB4C 8011DA5C 3C024000 */  lui        $v0, (0x40000001 >> 16)
/* 13BB50 8011DA60 50A20006 */  beql       $a1, $v0, .Lmenu_8011DA7C
/* 13BB54 8011DA64 3C023000 */   lui       $v0, (0x3000000A >> 16)
/* 13BB58 8011DA68 34420001 */  ori        $v0, $v0, (0x40000001 & 0xFFFF)
/* 13BB5C 8011DA6C 14A20005 */  bne        $a1, $v0, .Lmenu_8011DA84
/* 13BB60 8011DA70 3C023000 */   lui       $v0, (0x3000000B >> 16)
.Lmenu_8011DA74:
/* 13BB64 8011DA74 03E00008 */  jr         $ra
/* 13BB68 8011DA78 3442000B */   ori       $v0, $v0, (0x3000000B & 0xFFFF)
.Lmenu_8011DA7C:
/* 13BB6C 8011DA7C 03E00008 */  jr         $ra
/* 13BB70 8011DA80 3442000A */   ori       $v0, $v0, (0x3000000A & 0xFFFF)
.Lmenu_8011DA84:
/* 13BB74 8011DA84 03E00008 */  jr         $ra
/* 13BB78 8011DA88 34420001 */   ori       $v0, $v0, (0x30000001 & 0xFFFF)

glabel func_menu_8011DA8C
/* 13BB7C 8011DA8C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13BB80 8011DA90 AFB20020 */  sw         $s2, 0x20($sp)
/* 13BB84 8011DA94 00809021 */  addu       $s2, $a0, $zero
/* 13BB88 8011DA98 AFB30024 */  sw         $s3, 0x24($sp)
/* 13BB8C 8011DA9C 00A09821 */  addu       $s3, $a1, $zero
/* 13BB90 8011DAA0 AFB40028 */  sw         $s4, 0x28($sp)
/* 13BB94 8011DAA4 00C0A021 */  addu       $s4, $a2, $zero
/* 13BB98 8011DAA8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13BB9C 8011DAAC AFBF0030 */  sw         $ra, 0x30($sp)
/* 13BBA0 8011DAB0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13BBA4 8011DAB4 AFB00018 */  sw         $s0, 0x18($sp)
/* 13BBA8 8011DAB8 9242012C */  lbu        $v0, 0x12C($s2)
/* 13BBAC 8011DABC 8E710004 */  lw         $s1, 0x4($s3)
/* 13BBB0 8011DAC0 30420001 */  andi       $v0, $v0, 0x1
/* 13BBB4 8011DAC4 1040004D */  beqz       $v0, .Lmenu_8011DBFC
/* 13BBB8 8011DAC8 00E0A821 */   addu      $s5, $a3, $zero
/* 13BBBC 8011DACC 8E4201A0 */  lw         $v0, 0x1A0($s2)
/* 13BBC0 8011DAD0 10400003 */  beqz       $v0, .Lmenu_8011DAE0
/* 13BBC4 8011DAD4 00000000 */   nop
/* 13BBC8 8011DAD8 14510049 */  bne        $v0, $s1, .Lmenu_8011DC00
/* 13BBCC 8011DADC 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8011DAE0:
/* 13BBD0 8011DAE0 9242012C */  lbu        $v0, 0x12C($s2)
/* 13BBD4 8011DAE4 30420004 */  andi       $v0, $v0, 0x4
/* 13BBD8 8011DAE8 14400005 */  bnez       $v0, .Lmenu_8011DB00
/* 13BBDC 8011DAEC 02202821 */   addu      $a1, $s1, $zero
/* 13BBE0 8011DAF0 9262000D */  lbu        $v0, 0xD($s3)
/* 13BBE4 8011DAF4 14400042 */  bnez       $v0, .Lmenu_8011DC00
/* 13BBE8 8011DAF8 00001021 */   addu      $v0, $zero, $zero
/* 13BBEC 8011DAFC 02202821 */  addu       $a1, $s1, $zero
.Lmenu_8011DB00:
/* 13BBF0 8011DB00 02803021 */  addu       $a2, $s4, $zero
/* 13BBF4 8011DB04 8E420054 */  lw         $v0, 0x54($s2)
/* 13BBF8 8011DB08 02A03821 */  addu       $a3, $s5, $zero
/* 13BBFC 8011DB0C 844400E8 */  lh         $a0, 0xE8($v0)
/* 13BC00 8011DB10 8C4200EC */  lw         $v0, 0xEC($v0)
/* 13BC04 8011DB14 0040F809 */  jalr       $v0
/* 13BC08 8011DB18 02442021 */   addu      $a0, $s2, $a0
/* 13BC0C 8011DB1C 8E430054 */  lw         $v1, 0x54($s2)
/* 13BC10 8011DB20 00402821 */  addu       $a1, $v0, $zero
/* 13BC14 8011DB24 846400F0 */  lh         $a0, 0xF0($v1)
/* 13BC18 8011DB28 8C6200F4 */  lw         $v0, 0xF4($v1)
/* 13BC1C 8011DB2C 0040F809 */  jalr       $v0
/* 13BC20 8011DB30 02442021 */   addu      $a0, $s2, $a0
/* 13BC24 8011DB34 00408821 */  addu       $s1, $v0, $zero
/* 13BC28 8011DB38 9244012C */  lbu        $a0, 0x12C($s2)
/* 13BC2C 8011DB3C 30820001 */  andi       $v0, $a0, 0x1
/* 13BC30 8011DB40 10400003 */  beqz       $v0, .Lmenu_8011DB50
/* 13BC34 8011DB44 00001821 */   addu      $v1, $zero, $zero
/* 13BC38 8011DB48 30820002 */  andi       $v0, $a0, 0x2
/* 13BC3C 8011DB4C 0062182B */  sltu       $v1, $v1, $v0
.Lmenu_8011DB50:
/* 13BC40 8011DB50 10600029 */  beqz       $v1, .Lmenu_8011DBF8
/* 13BC44 8011DB54 3C02F000 */   lui       $v0, (0xF0000000 >> 16)
/* 13BC48 8011DB58 02221024 */  and        $v0, $s1, $v0
/* 13BC4C 8011DB5C 3C032000 */  lui        $v1, (0x20000000 >> 16)
/* 13BC50 8011DB60 5443001D */  bnel       $v0, $v1, .Lmenu_8011DBD8
/* 13BC54 8011DB64 02402021 */   addu      $a0, $s2, $zero
/* 13BC58 8011DB68 265005EC */  addiu      $s0, $s2, 0x5EC
/* 13BC5C 8011DB6C 02002021 */  addu       $a0, $s0, $zero
/* 13BC60 8011DB70 27A50010 */  addiu      $a1, $sp, 0x10
/* 13BC64 8011DB74 27A60014 */  addiu      $a2, $sp, 0x14
/* 13BC68 8011DB78 AFB40010 */  sw         $s4, 0x10($sp)
/* 13BC6C 8011DB7C 0C049445 */  jal        func_menu_80125114
/* 13BC70 8011DB80 AFB50014 */   sw        $s5, 0x14($sp)
/* 13BC74 8011DB84 8FA50010 */  lw         $a1, 0x10($sp)
/* 13BC78 8011DB88 8FA60014 */  lw         $a2, 0x14($sp)
/* 13BC7C 8011DB8C 0C04923A */  jal        func_menu_801248E8
/* 13BC80 8011DB90 02002021 */   addu      $a0, $s0, $zero
/* 13BC84 8011DB94 10400010 */  beqz       $v0, .Lmenu_8011DBD8
/* 13BC88 8011DB98 02402021 */   addu      $a0, $s2, $zero
/* 13BC8C 8011DB9C 8E620004 */  lw         $v0, 0x4($s3)
/* 13BC90 8011DBA0 8E44016C */  lw         $a0, 0x16C($s2)
/* 13BC94 8011DBA4 964506E0 */  lhu        $a1, 0x6E0($s2)
/* 13BC98 8011DBA8 0C047910 */  jal        func_menu_8011E440
/* 13BC9C 8011DBAC AE4201A0 */   sw        $v0, 0x1A0($s2)
/* 13BCA0 8011DBB0 0C0491F5 */  jal        func_menu_801247D4
/* 13BCA4 8011DBB4 02402021 */   addu      $a0, $s2, $zero
/* 13BCA8 8011DBB8 8E420054 */  lw         $v0, 0x54($s2)
/* 13BCAC 8011DBBC 00002821 */  addu       $a1, $zero, $zero
/* 13BCB0 8011DBC0 844400B0 */  lh         $a0, 0xB0($v0)
/* 13BCB4 8011DBC4 8C4200B4 */  lw         $v0, 0xB4($v0)
/* 13BCB8 8011DBC8 0040F809 */  jalr       $v0
/* 13BCBC 8011DBCC 02442021 */   addu      $a0, $s2, $a0
/* 13BCC0 8011DBD0 08047700 */  j          .Lmenu_8011DC00
/* 13BCC4 8011DBD4 02401021 */   addu      $v0, $s2, $zero
.Lmenu_8011DBD8:
/* 13BCC8 8011DBD8 02602821 */  addu       $a1, $s3, $zero
/* 13BCCC 8011DBDC 0C044CC2 */  jal        func_menu_80113308
/* 13BCD0 8011DBE0 02203021 */   addu      $a2, $s1, $zero
/* 13BCD4 8011DBE4 10400004 */  beqz       $v0, .Lmenu_8011DBF8
/* 13BCD8 8011DBE8 02401021 */   addu      $v0, $s2, $zero
/* 13BCDC 8011DBEC 8E630004 */  lw         $v1, 0x4($s3)
/* 13BCE0 8011DBF0 08047700 */  j          .Lmenu_8011DC00
/* 13BCE4 8011DBF4 AC4301A0 */   sw        $v1, 0x1A0($v0)
.Lmenu_8011DBF8:
/* 13BCE8 8011DBF8 AE4001A0 */  sw         $zero, 0x1A0($s2)
.Lmenu_8011DBFC:
/* 13BCEC 8011DBFC 00001021 */  addu       $v0, $zero, $zero
.Lmenu_8011DC00:
/* 13BCF0 8011DC00 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13BCF4 8011DC04 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13BCF8 8011DC08 8FB40028 */  lw         $s4, 0x28($sp)
/* 13BCFC 8011DC0C 8FB30024 */  lw         $s3, 0x24($sp)
/* 13BD00 8011DC10 8FB20020 */  lw         $s2, 0x20($sp)
/* 13BD04 8011DC14 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13BD08 8011DC18 8FB00018 */  lw         $s0, 0x18($sp)
/* 13BD0C 8011DC1C 03E00008 */  jr         $ra
/* 13BD10 8011DC20 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_8011DC24
/* 13BD14 8011DC24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13BD18 8011DC28 AFB10014 */  sw         $s1, 0x14($sp)
/* 13BD1C 8011DC2C 00808821 */  addu       $s1, $a0, $zero
/* 13BD20 8011DC30 AFB20018 */  sw         $s2, 0x18($sp)
/* 13BD24 8011DC34 00A09021 */  addu       $s2, $a1, $zero
/* 13BD28 8011DC38 AFBF001C */  sw         $ra, 0x1C($sp)
/* 13BD2C 8011DC3C AFB00010 */  sw         $s0, 0x10($sp)
/* 13BD30 8011DC40 8E500004 */  lw         $s0, 0x4($s2)
/* 13BD34 8011DC44 8E2201A0 */  lw         $v0, 0x1A0($s1)
/* 13BD38 8011DC48 14500035 */  bne        $v0, $s0, .Lmenu_8011DD20
/* 13BD3C 8011DC4C 00001021 */   addu      $v0, $zero, $zero
/* 13BD40 8011DC50 8E220054 */  lw         $v0, 0x54($s1)
/* 13BD44 8011DC54 02002821 */  addu       $a1, $s0, $zero
/* 13BD48 8011DC58 844400E8 */  lh         $a0, 0xE8($v0)
/* 13BD4C 8011DC5C 8C4200EC */  lw         $v0, 0xEC($v0)
/* 13BD50 8011DC60 0040F809 */  jalr       $v0
/* 13BD54 8011DC64 02242021 */   addu      $a0, $s1, $a0
/* 13BD58 8011DC68 8E230054 */  lw         $v1, 0x54($s1)
/* 13BD5C 8011DC6C 00402821 */  addu       $a1, $v0, $zero
/* 13BD60 8011DC70 846400F0 */  lh         $a0, 0xF0($v1)
/* 13BD64 8011DC74 8C6200F4 */  lw         $v0, 0xF4($v1)
/* 13BD68 8011DC78 0040F809 */  jalr       $v0
/* 13BD6C 8011DC7C 02242021 */   addu      $a0, $s1, $a0
/* 13BD70 8011DC80 00408021 */  addu       $s0, $v0, $zero
/* 13BD74 8011DC84 9223012C */  lbu        $v1, 0x12C($s1)
/* 13BD78 8011DC88 00002021 */  addu       $a0, $zero, $zero
/* 13BD7C 8011DC8C 30620001 */  andi       $v0, $v1, 0x1
/* 13BD80 8011DC90 10400005 */  beqz       $v0, .Lmenu_8011DCA8
/* 13BD84 8011DC94 AE2001A0 */   sw        $zero, 0x1A0($s1)
/* 13BD88 8011DC98 30620004 */  andi       $v0, $v1, 0x4
/* 13BD8C 8011DC9C 10400002 */  beqz       $v0, .Lmenu_8011DCA8
/* 13BD90 8011DCA0 30620002 */   andi      $v0, $v1, 0x2
/* 13BD94 8011DCA4 0082202B */  sltu       $a0, $a0, $v0
.Lmenu_8011DCA8:
/* 13BD98 8011DCA8 10800006 */  beqz       $a0, .Lmenu_8011DCC4
/* 13BD9C 8011DCAC 02202021 */   addu      $a0, $s1, $zero
/* 13BDA0 8011DCB0 02402821 */  addu       $a1, $s2, $zero
/* 13BDA4 8011DCB4 0C044D10 */  jal        func_menu_80113440
/* 13BDA8 8011DCB8 02003021 */   addu      $a2, $s0, $zero
/* 13BDAC 8011DCBC 14400018 */  bnez       $v0, .Lmenu_8011DD20
/* 13BDB0 8011DCC0 02201021 */   addu      $v0, $s1, $zero
.Lmenu_8011DCC4:
/* 13BDB4 8011DCC4 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* 13BDB8 8011DCC8 02021024 */  and        $v0, $s0, $v0
/* 13BDBC 8011DCCC 3C032000 */  lui        $v1, (0x20000000 >> 16)
/* 13BDC0 8011DCD0 1443000C */  bne        $v0, $v1, .Lmenu_8011DD04
/* 13BDC4 8011DCD4 00000000 */   nop
/* 13BDC8 8011DCD8 8E24016C */  lw         $a0, 0x16C($s1)
/* 13BDCC 8011DCDC 962506E0 */  lhu        $a1, 0x6E0($s1)
/* 13BDD0 8011DCE0 0C047910 */  jal        func_menu_8011E440
/* 13BDD4 8011DCE4 00000000 */   nop
/* 13BDD8 8011DCE8 8E220054 */  lw         $v0, 0x54($s1)
/* 13BDDC 8011DCEC 84440120 */  lh         $a0, 0x120($v0)
/* 13BDE0 8011DCF0 8C420124 */  lw         $v0, 0x124($v0)
/* 13BDE4 8011DCF4 0040F809 */  jalr       $v0
/* 13BDE8 8011DCF8 02242021 */   addu      $a0, $s1, $a0
/* 13BDEC 8011DCFC 0C04921C */  jal        func_menu_80124870
/* 13BDF0 8011DD00 02202021 */   addu      $a0, $s1, $zero
.Lmenu_8011DD04:
/* 13BDF4 8011DD04 8E220054 */  lw         $v0, 0x54($s1)
/* 13BDF8 8011DD08 00002821 */  addu       $a1, $zero, $zero
/* 13BDFC 8011DD0C 844400B8 */  lh         $a0, 0xB8($v0)
/* 13BE00 8011DD10 8C4200BC */  lw         $v0, 0xBC($v0)
/* 13BE04 8011DD14 0040F809 */  jalr       $v0
/* 13BE08 8011DD18 02242021 */   addu      $a0, $s1, $a0
/* 13BE0C 8011DD1C 02201021 */  addu       $v0, $s1, $zero
.Lmenu_8011DD20:
/* 13BE10 8011DD20 8FBF001C */  lw         $ra, 0x1C($sp)
/* 13BE14 8011DD24 8FB20018 */  lw         $s2, 0x18($sp)
/* 13BE18 8011DD28 8FB10014 */  lw         $s1, 0x14($sp)
/* 13BE1C 8011DD2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13BE20 8011DD30 03E00008 */  jr         $ra
/* 13BE24 8011DD34 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011DD38
/* 13BE28 8011DD38 8C8206C0 */  lw         $v0, 0x6C0($a0)
/* 13BE2C 8011DD3C 03E00008 */  jr         $ra
/* 13BE30 8011DD40 00000000 */   nop
