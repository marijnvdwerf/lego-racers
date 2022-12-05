.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8011F760
/* 13D850 8011F760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13D854 8011F764 AFB00010 */  sw         $s0, 0x10($sp)
/* 13D858 8011F768 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13D85C 8011F76C 0C047CA8 */  jal        func_menu_8011F2A0
/* 13D860 8011F770 00808021 */   addu      $s0, $a0, $zero
/* 13D864 8011F774 3C02800D */  lui        $v0, %hi(D_menu_800D0D60)
/* 13D868 8011F778 24420D60 */  addiu      $v0, $v0, %lo(D_menu_800D0D60)
/* 13D86C 8011F77C 02002021 */  addu       $a0, $s0, $zero
/* 13D870 8011F780 0C047CCE */  jal        func_menu_8011F338
/* 13D874 8011F784 AE020054 */   sw        $v0, 0x54($s0)
/* 13D878 8011F788 02001021 */  addu       $v0, $s0, $zero
/* 13D87C 8011F78C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13D880 8011F790 8FB00010 */  lw         $s0, 0x10($sp)
/* 13D884 8011F794 03E00008 */  jr         $ra
/* 13D888 8011F798 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011F79C
/* 13D88C 8011F79C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13D890 8011F7A0 AFB00010 */  sw         $s0, 0x10($sp)
/* 13D894 8011F7A4 00808021 */  addu       $s0, $a0, $zero
/* 13D898 8011F7A8 AFB10014 */  sw         $s1, 0x14($sp)
/* 13D89C 8011F7AC 00A08821 */  addu       $s1, $a1, $zero
/* 13D8A0 8011F7B0 3C02800D */  lui        $v0, %hi(D_menu_800D0D60)
/* 13D8A4 8011F7B4 24420D60 */  addiu      $v0, $v0, %lo(D_menu_800D0D60)
/* 13D8A8 8011F7B8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13D8AC 8011F7BC 0C049139 */  jal        func_menu_801244E4
/* 13D8B0 8011F7C0 AE020054 */   sw        $v0, 0x54($s0)
/* 13D8B4 8011F7C4 02002021 */  addu       $a0, $s0, $zero
/* 13D8B8 8011F7C8 0C047CB9 */  jal        func_menu_8011F2E4
/* 13D8BC 8011F7CC 02202821 */   addu      $a1, $s1, $zero
/* 13D8C0 8011F7D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13D8C4 8011F7D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 13D8C8 8011F7D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 13D8CC 8011F7DC 03E00008 */  jr         $ra
/* 13D8D0 8011F7E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011F7E4
/* 13D8D4 8011F7E4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 13D8D8 8011F7E8 AFB00028 */  sw         $s0, 0x28($sp)
/* 13D8DC 8011F7EC 00808021 */  addu       $s0, $a0, $zero
/* 13D8E0 8011F7F0 AFB20030 */  sw         $s2, 0x30($sp)
/* 13D8E4 8011F7F4 00A09021 */  addu       $s2, $a1, $zero
/* 13D8E8 8011F7F8 AFB30034 */  sw         $s3, 0x34($sp)
/* 13D8EC 8011F7FC 00C09821 */  addu       $s3, $a2, $zero
/* 13D8F0 8011F800 AFB1002C */  sw         $s1, 0x2C($sp)
/* 13D8F4 8011F804 26110064 */  addiu      $s1, $s0, 0x64
/* 13D8F8 8011F808 AFBF0038 */  sw         $ra, 0x38($sp)
/* 13D8FC 8011F80C 0C00171E */  jal        func_80005C78
/* 13D900 8011F810 02202021 */   addu      $a0, $s1, $zero
/* 13D904 8011F814 8E020038 */  lw         $v0, 0x38($s0)
/* 13D908 8011F818 10400012 */  beqz       $v0, .Lmenu_8011F864
/* 13D90C 8011F81C 02202821 */   addu      $a1, $s1, $zero
/* 13D910 8011F820 27A60020 */  addiu      $a2, $sp, 0x20
/* 13D914 8011F824 8E040060 */  lw         $a0, 0x60($s0)
/* 13D918 8011F828 0C01376C */  jal        func_8004DDB0
/* 13D91C 8011F82C 27A70024 */   addiu     $a3, $sp, 0x24
/* 13D920 8011F830 8E020038 */  lw         $v0, 0x38($s0)
/* 13D924 8011F834 8E040030 */  lw         $a0, 0x30($s0)
/* 13D928 8011F838 8FA30020 */  lw         $v1, 0x20($sp)
/* 13D92C 8011F83C 00441023 */  subu       $v0, $v0, $a0
/* 13D930 8011F840 0062182A */  slt        $v1, $v1, $v0
/* 13D934 8011F844 10600007 */  beqz       $v1, .Lmenu_8011F864
/* 13D938 8011F848 02002021 */   addu      $a0, $s0, $zero
/* 13D93C 8011F84C AE000074 */  sw         $zero, 0x74($s0)
/* 13D940 8011F850 02402821 */  addu       $a1, $s2, $zero
/* 13D944 8011F854 0C047D27 */  jal        func_menu_8011F49C
/* 13D948 8011F858 02603021 */   addu      $a2, $s3, $zero
/* 13D94C 8011F85C 08047E45 */  j          .Lmenu_8011F914
/* 13D950 8011F860 00000000 */   nop
.Lmenu_8011F864:
/* 13D954 8011F864 26050064 */  addiu      $a1, $s0, 0x64
/* 13D958 8011F868 C6000040 */  lwc1       $f0, 0x40($s0)
/* 13D95C 8011F86C 24020001 */  addiu      $v0, $zero, 0x1
/* 13D960 8011F870 AE020074 */  sw         $v0, 0x74($s0)
/* 13D964 8011F874 E7A00010 */  swc1       $f0, 0x10($sp)
/* 13D968 8011F878 C6000044 */  lwc1       $f0, 0x44($s0)
/* 13D96C 8011F87C 27A20020 */  addiu      $v0, $sp, 0x20
/* 13D970 8011F880 AFA20018 */  sw         $v0, 0x18($sp)
/* 13D974 8011F884 27A20024 */  addiu      $v0, $sp, 0x24
/* 13D978 8011F888 AFA2001C */  sw         $v0, 0x1C($sp)
/* 13D97C 8011F88C E7A00014 */  swc1       $f0, 0x14($sp)
/* 13D980 8011F890 8E040060 */  lw         $a0, 0x60($s0)
/* 13D984 8011F894 8E060070 */  lw         $a2, 0x70($s0)
/* 13D988 8011F898 0C0137FC */  jal        func_8004DFF0
/* 13D98C 8011F89C 00003821 */   addu      $a3, $zero, $zero
/* 13D990 8011F8A0 8E020038 */  lw         $v0, 0x38($s0)
/* 13D994 8011F8A4 10400006 */  beqz       $v0, .Lmenu_8011F8C0
/* 13D998 8011F8A8 00000000 */   nop
/* 13D99C 8011F8AC 8E03003C */  lw         $v1, 0x3C($s0)
/* 13D9A0 8011F8B0 10600003 */  beqz       $v1, .Lmenu_8011F8C0
/* 13D9A4 8011F8B4 00000000 */   nop
/* 13D9A8 8011F8B8 1260000A */  beqz       $s3, .Lmenu_8011F8E4
/* 13D9AC 8011F8BC 00000000 */   nop
.Lmenu_8011F8C0:
/* 13D9B0 8011F8C0 8E020030 */  lw         $v0, 0x30($s0)
/* 13D9B4 8011F8C4 8FA40020 */  lw         $a0, 0x20($sp)
/* 13D9B8 8011F8C8 8E030034 */  lw         $v1, 0x34($s0)
/* 13D9BC 8011F8CC 8FA50024 */  lw         $a1, 0x24($sp)
/* 13D9C0 8011F8D0 00441021 */  addu       $v0, $v0, $a0
/* 13D9C4 8011F8D4 00651821 */  addu       $v1, $v1, $a1
/* 13D9C8 8011F8D8 AE020038 */  sw         $v0, 0x38($s0)
/* 13D9CC 8011F8DC 08047E45 */  j          .Lmenu_8011F914
/* 13D9D0 8011F8E0 AE03003C */   sw        $v1, 0x3C($s0)
.Lmenu_8011F8E4:
/* 13D9D4 8011F8E4 8E020034 */  lw         $v0, 0x34($s0)
/* 13D9D8 8011F8E8 8FA40024 */  lw         $a0, 0x24($sp)
/* 13D9DC 8011F8EC 00621823 */  subu       $v1, $v1, $v0
/* 13D9E0 8011F8F0 0064102B */  sltu       $v0, $v1, $a0
/* 13D9E4 8011F8F4 10400007 */  beqz       $v0, .Lmenu_8011F914
/* 13D9E8 8011F8F8 00000000 */   nop
/* 13D9EC 8011F8FC 44830000 */  mtc1       $v1, $f0
/* 13D9F0 8011F900 46800020 */  cvt.s.w    $f0, $f0
/* 13D9F4 8011F904 44841000 */  mtc1       $a0, $f2
/* 13D9F8 8011F908 468010A0 */  cvt.s.w    $f2, $f2
/* 13D9FC 8011F90C 46020003 */  div.s      $f0, $f0, $f2
/* 13DA00 8011F910 E6000044 */  swc1       $f0, 0x44($s0)
.Lmenu_8011F914:
/* 13DA04 8011F914 8FBF0038 */  lw         $ra, 0x38($sp)
/* 13DA08 8011F918 8FB30034 */  lw         $s3, 0x34($sp)
/* 13DA0C 8011F91C 8FB20030 */  lw         $s2, 0x30($sp)
/* 13DA10 8011F920 8FB1002C */  lw         $s1, 0x2C($sp)
/* 13DA14 8011F924 8FB00028 */  lw         $s0, 0x28($sp)
/* 13DA18 8011F928 03E00008 */  jr         $ra
/* 13DA1C 8011F92C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_8011F930
/* 13DA20 8011F930 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 13DA24 8011F934 AFB3003C */  sw         $s3, 0x3C($sp)
/* 13DA28 8011F938 00809821 */  addu       $s3, $a0, $zero
/* 13DA2C 8011F93C AFBF0044 */  sw         $ra, 0x44($sp)
/* 13DA30 8011F940 AFB40040 */  sw         $s4, 0x40($sp)
/* 13DA34 8011F944 AFB20038 */  sw         $s2, 0x38($sp)
/* 13DA38 8011F948 AFB10034 */  sw         $s1, 0x34($sp)
/* 13DA3C 8011F94C AFB00030 */  sw         $s0, 0x30($sp)
/* 13DA40 8011F950 8E620074 */  lw         $v0, 0x74($s3)
/* 13DA44 8011F954 10400023 */  beqz       $v0, .Lmenu_8011F9E4
/* 13DA48 8011F958 00C0A021 */   addu      $s4, $a2, $zero
/* 13DA4C 8011F95C 26720064 */  addiu      $s2, $s3, 0x64
/* 13DA50 8011F960 02402021 */  addu       $a0, $s2, $zero
/* 13DA54 8011F964 8E910000 */  lw         $s1, 0x0($s4)
/* 13DA58 8011F968 8CA30000 */  lw         $v1, 0x0($a1)
/* 13DA5C 8011F96C 8E900004 */  lw         $s0, 0x4($s4)
/* 13DA60 8011F970 8CA20004 */  lw         $v0, 0x4($a1)
/* 13DA64 8011F974 02238823 */  subu       $s1, $s1, $v1
/* 13DA68 8011F978 0C00173D */  jal        func_80005CF4
/* 13DA6C 8011F97C 02028023 */   subu      $s0, $s0, $v0
/* 13DA70 8011F980 AFB00024 */  sw         $s0, 0x24($sp)
/* 13DA74 8011F984 8E62003C */  lw         $v0, 0x3C($s3)
/* 13DA78 8011F988 8E630034 */  lw         $v1, 0x34($s3)
/* 13DA7C 8011F98C AFB10020 */  sw         $s1, 0x20($sp)
/* 13DA80 8011F990 02028021 */  addu       $s0, $s0, $v0
/* 13DA84 8011F994 02038023 */  subu       $s0, $s0, $v1
/* 13DA88 8011F998 AFB0002C */  sw         $s0, 0x2C($sp)
/* 13DA8C 8011F99C 8E620038 */  lw         $v0, 0x38($s3)
/* 13DA90 8011F9A0 8E630030 */  lw         $v1, 0x30($s3)
/* 13DA94 8011F9A4 02228821 */  addu       $s1, $s1, $v0
/* 13DA98 8011F9A8 02238823 */  subu       $s1, $s1, $v1
/* 13DA9C 8011F9AC AFB10028 */  sw         $s1, 0x28($sp)
/* 13DAA0 8011F9B0 AFB20010 */  sw         $s2, 0x10($sp)
/* 13DAA4 8011F9B4 8E620070 */  lw         $v0, 0x70($s3)
/* 13DAA8 8011F9B8 AFA20014 */  sw         $v0, 0x14($sp)
/* 13DAAC 8011F9BC 8E620058 */  lw         $v0, 0x58($s3)
/* 13DAB0 8011F9C0 02602021 */  addu       $a0, $s3, $zero
/* 13DAB4 8011F9C4 8C420010 */  lw         $v0, 0x10($v0)
/* 13DAB8 8011F9C8 27A50020 */  addiu      $a1, $sp, 0x20
/* 13DABC 8011F9CC AFA20018 */  sw         $v0, 0x18($sp)
/* 13DAC0 8011F9D0 8C870060 */  lw         $a3, 0x60($a0)
/* 13DAC4 8011F9D4 0C0492CA */  jal        func_menu_80124B28
/* 13DAC8 8011F9D8 02803021 */   addu      $a2, $s4, $zero
/* 13DACC 8011F9DC 08047E7C */  j          .Lmenu_8011F9F0
/* 13DAD0 8011F9E0 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8011F9E4:
/* 13DAD4 8011F9E4 02602021 */  addu       $a0, $s3, $zero
/* 13DAD8 8011F9E8 0C047D73 */  jal        func_menu_8011F5CC
/* 13DADC 8011F9EC 02803021 */   addu      $a2, $s4, $zero
.Lmenu_8011F9F0:
/* 13DAE0 8011F9F0 8FBF0044 */  lw         $ra, 0x44($sp)
/* 13DAE4 8011F9F4 8FB40040 */  lw         $s4, 0x40($sp)
/* 13DAE8 8011F9F8 8FB3003C */  lw         $s3, 0x3C($sp)
/* 13DAEC 8011F9FC 8FB20038 */  lw         $s2, 0x38($sp)
/* 13DAF0 8011FA00 8FB10034 */  lw         $s1, 0x34($sp)
/* 13DAF4 8011FA04 8FB00030 */  lw         $s0, 0x30($sp)
/* 13DAF8 8011FA08 03E00008 */  jr         $ra
/* 13DAFC 8011FA0C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_8011FA10
/* 13DB00 8011FA10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13DB04 8011FA14 AFB00010 */  sw         $s0, 0x10($sp)
/* 13DB08 8011FA18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13DB0C 8011FA1C 0C0462A3 */  jal        func_menu_80118A8C
/* 13DB10 8011FA20 00808021 */   addu      $s0, $a0, $zero
/* 13DB14 8011FA24 3C02800D */  lui        $v0, %hi(D_menu_800D0EE0)
/* 13DB18 8011FA28 24420EE0 */  addiu      $v0, $v0, %lo(D_menu_800D0EE0)
/* 13DB1C 8011FA2C 02002021 */  addu       $a0, $s0, $zero
/* 13DB20 8011FA30 0C047EA5 */  jal        func_menu_8011FA94
/* 13DB24 8011FA34 AE020008 */   sw        $v0, 0x8($s0)
/* 13DB28 8011FA38 02001021 */  addu       $v0, $s0, $zero
/* 13DB2C 8011FA3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13DB30 8011FA40 8FB00010 */  lw         $s0, 0x10($sp)
/* 13DB34 8011FA44 03E00008 */  jr         $ra
/* 13DB38 8011FA48 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011FA4C
/* 13DB3C 8011FA4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13DB40 8011FA50 AFB00010 */  sw         $s0, 0x10($sp)
/* 13DB44 8011FA54 00808021 */  addu       $s0, $a0, $zero
/* 13DB48 8011FA58 AFB10014 */  sw         $s1, 0x14($sp)
/* 13DB4C 8011FA5C 00A08821 */  addu       $s1, $a1, $zero
/* 13DB50 8011FA60 3C02800D */  lui        $v0, %hi(D_menu_800D0EE0)
/* 13DB54 8011FA64 24420EE0 */  addiu      $v0, $v0, %lo(D_menu_800D0EE0)
/* 13DB58 8011FA68 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13DB5C 8011FA6C 0C047ED2 */  jal        func_menu_8011FB48
/* 13DB60 8011FA70 AE020008 */   sw        $v0, 0x8($s0)
/* 13DB64 8011FA74 02002021 */  addu       $a0, $s0, $zero
/* 13DB68 8011FA78 0C0462B2 */  jal        func_menu_80118AC8
/* 13DB6C 8011FA7C 02202821 */   addu      $a1, $s1, $zero
/* 13DB70 8011FA80 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13DB74 8011FA84 8FB10014 */  lw         $s1, 0x14($sp)
/* 13DB78 8011FA88 8FB00010 */  lw         $s0, 0x10($sp)
/* 13DB7C 8011FA8C 03E00008 */  jr         $ra
/* 13DB80 8011FA90 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011FA94
/* 13DB84 8011FA94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13DB88 8011FA98 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13DB8C 8011FA9C AC800020 */  sw         $zero, 0x20($a0)
/* 13DB90 8011FAA0 AC800024 */  sw         $zero, 0x24($a0)
/* 13DB94 8011FAA4 AC800028 */  sw         $zero, 0x28($a0)
/* 13DB98 8011FAA8 AC80002C */  sw         $zero, 0x2C($a0)
/* 13DB9C 8011FAAC AC800030 */  sw         $zero, 0x30($a0)
/* 13DBA0 8011FAB0 AC800034 */  sw         $zero, 0x34($a0)
/* 13DBA4 8011FAB4 AC800038 */  sw         $zero, 0x38($a0)
/* 13DBA8 8011FAB8 AC80003C */  sw         $zero, 0x3C($a0)
/* 13DBAC 8011FABC AC800040 */  sw         $zero, 0x40($a0)
/* 13DBB0 8011FAC0 AC800044 */  sw         $zero, 0x44($a0)
/* 13DBB4 8011FAC4 0C0462C4 */  jal        func_menu_80118B10
/* 13DBB8 8011FAC8 AC800048 */   sw        $zero, 0x48($a0)
/* 13DBBC 8011FACC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13DBC0 8011FAD0 03E00008 */  jr         $ra
/* 13DBC4 8011FAD4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011FAD8
/* 13DBC8 8011FAD8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13DBCC 8011FADC AFB00010 */  sw         $s0, 0x10($sp)
/* 13DBD0 8011FAE0 00808021 */  addu       $s0, $a0, $zero
/* 13DBD4 8011FAE4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13DBD8 8011FAE8 AFB10014 */  sw         $s1, 0x14($sp)
/* 13DBDC 8011FAEC 8E020008 */  lw         $v0, 0x8($s0)
/* 13DBE0 8011FAF0 00A08821 */  addu       $s1, $a1, $zero
/* 13DBE4 8011FAF4 84440018 */  lh         $a0, 0x18($v0)
/* 13DBE8 8011FAF8 8C42001C */  lw         $v0, 0x1C($v0)
/* 13DBEC 8011FAFC 0040F809 */  jalr       $v0
/* 13DBF0 8011FB00 02042021 */   addu      $a0, $s0, $a0
/* 13DBF4 8011FB04 8E220000 */  lw         $v0, 0x0($s1)
/* 13DBF8 8011FB08 AE020014 */  sw         $v0, 0x14($s0)
/* 13DBFC 8011FB0C 8E220004 */  lw         $v0, 0x4($s1)
/* 13DC00 8011FB10 02002021 */  addu       $a0, $s0, $zero
/* 13DC04 8011FB14 0C0462CA */  jal        func_menu_80118B28
/* 13DC08 8011FB18 AE020020 */   sw        $v0, 0x20($s0)
/* 13DC0C 8011FB1C 10400003 */  beqz       $v0, .Lmenu_8011FB2C
/* 13DC10 8011FB20 02002021 */   addu      $a0, $s0, $zero
/* 13DC14 8011FB24 0C047F3E */  jal        func_menu_8011FCF8
/* 13DC18 8011FB28 02202821 */   addu      $a1, $s1, $zero
.Lmenu_8011FB2C:
/* 13DC1C 8011FB2C 8E020000 */  lw         $v0, 0x0($s0)
/* 13DC20 8011FB30 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13DC24 8011FB34 8FB10014 */  lw         $s1, 0x14($sp)
/* 13DC28 8011FB38 8FB00010 */  lw         $s0, 0x10($sp)
/* 13DC2C 8011FB3C 0002102B */  sltu       $v0, $zero, $v0
/* 13DC30 8011FB40 03E00008 */  jr         $ra
/* 13DC34 8011FB44 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011FB48
/* 13DC38 8011FB48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13DC3C 8011FB4C AFB00010 */  sw         $s0, 0x10($sp)
/* 13DC40 8011FB50 00808021 */  addu       $s0, $a0, $zero
/* 13DC44 8011FB54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13DC48 8011FB58 8E020000 */  lw         $v0, 0x0($s0)
/* 13DC4C 8011FB5C 10400035 */  beqz       $v0, .Lmenu_8011FC34
/* 13DC50 8011FB60 00000000 */   nop
/* 13DC54 8011FB64 8E040024 */  lw         $a0, 0x24($s0)
/* 13DC58 8011FB68 10800003 */  beqz       $a0, .Lmenu_8011FB78
/* 13DC5C 8011FB6C 00000000 */   nop
/* 13DC60 8011FB70 0C009444 */  jal        func_80025110
/* 13DC64 8011FB74 00000000 */   nop
.Lmenu_8011FB78:
/* 13DC68 8011FB78 8E040028 */  lw         $a0, 0x28($s0)
/* 13DC6C 8011FB7C 10800003 */  beqz       $a0, .Lmenu_8011FB8C
/* 13DC70 8011FB80 00000000 */   nop
/* 13DC74 8011FB84 0C009444 */  jal        func_80025110
/* 13DC78 8011FB88 00000000 */   nop
.Lmenu_8011FB8C:
/* 13DC7C 8011FB8C 8E04002C */  lw         $a0, 0x2C($s0)
/* 13DC80 8011FB90 10800003 */  beqz       $a0, .Lmenu_8011FBA0
/* 13DC84 8011FB94 00000000 */   nop
/* 13DC88 8011FB98 0C009444 */  jal        func_80025110
/* 13DC8C 8011FB9C 00000000 */   nop
.Lmenu_8011FBA0:
/* 13DC90 8011FBA0 8E040030 */  lw         $a0, 0x30($s0)
/* 13DC94 8011FBA4 10800003 */  beqz       $a0, .Lmenu_8011FBB4
/* 13DC98 8011FBA8 00000000 */   nop
/* 13DC9C 8011FBAC 0C009444 */  jal        func_80025110
/* 13DCA0 8011FBB0 00000000 */   nop
.Lmenu_8011FBB4:
/* 13DCA4 8011FBB4 8E040034 */  lw         $a0, 0x34($s0)
/* 13DCA8 8011FBB8 10800003 */  beqz       $a0, .Lmenu_8011FBC8
/* 13DCAC 8011FBBC 00000000 */   nop
/* 13DCB0 8011FBC0 0C009444 */  jal        func_80025110
/* 13DCB4 8011FBC4 00000000 */   nop
.Lmenu_8011FBC8:
/* 13DCB8 8011FBC8 8E040038 */  lw         $a0, 0x38($s0)
/* 13DCBC 8011FBCC 10800003 */  beqz       $a0, .Lmenu_8011FBDC
/* 13DCC0 8011FBD0 00000000 */   nop
/* 13DCC4 8011FBD4 0C009444 */  jal        func_80025110
/* 13DCC8 8011FBD8 00000000 */   nop
.Lmenu_8011FBDC:
/* 13DCCC 8011FBDC 8E04003C */  lw         $a0, 0x3C($s0)
/* 13DCD0 8011FBE0 10800003 */  beqz       $a0, .Lmenu_8011FBF0
/* 13DCD4 8011FBE4 00000000 */   nop
/* 13DCD8 8011FBE8 0C009444 */  jal        func_80025110
/* 13DCDC 8011FBEC 00000000 */   nop
.Lmenu_8011FBF0:
/* 13DCE0 8011FBF0 8E040040 */  lw         $a0, 0x40($s0)
/* 13DCE4 8011FBF4 10800003 */  beqz       $a0, .Lmenu_8011FC04
/* 13DCE8 8011FBF8 00000000 */   nop
/* 13DCEC 8011FBFC 0C009444 */  jal        func_80025110
/* 13DCF0 8011FC00 00000000 */   nop
.Lmenu_8011FC04:
/* 13DCF4 8011FC04 8E040044 */  lw         $a0, 0x44($s0)
/* 13DCF8 8011FC08 10800003 */  beqz       $a0, .Lmenu_8011FC18
/* 13DCFC 8011FC0C 00000000 */   nop
/* 13DD00 8011FC10 0C009444 */  jal        func_80025110
/* 13DD04 8011FC14 00000000 */   nop
.Lmenu_8011FC18:
/* 13DD08 8011FC18 8E040048 */  lw         $a0, 0x48($s0)
/* 13DD0C 8011FC1C 10800003 */  beqz       $a0, .Lmenu_8011FC2C
/* 13DD10 8011FC20 00000000 */   nop
/* 13DD14 8011FC24 0C009444 */  jal        func_80025110
/* 13DD18 8011FC28 00000000 */   nop
.Lmenu_8011FC2C:
/* 13DD1C 8011FC2C 0C0462CE */  jal        func_menu_80118B38
/* 13DD20 8011FC30 02002021 */   addu      $a0, $s0, $zero
.Lmenu_8011FC34:
/* 13DD24 8011FC34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13DD28 8011FC38 8FB00010 */  lw         $s0, 0x10($sp)
/* 13DD2C 8011FC3C 03E00008 */  jr         $ra
/* 13DD30 8011FC40 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011FC44
/* 13DD34 8011FC44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13DD38 8011FC48 AFB10014 */  sw         $s1, 0x14($sp)
/* 13DD3C 8011FC4C 00808821 */  addu       $s1, $a0, $zero
/* 13DD40 8011FC50 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13DD44 8011FC54 10A00013 */  beqz       $a1, .Lmenu_8011FCA4
/* 13DD48 8011FC58 AFB00010 */   sw        $s0, 0x10($sp)
/* 13DD4C 8011FC5C 0C01FB4C */  jal        func_8007ED30
/* 13DD50 8011FC60 24040654 */   addiu     $a0, $zero, 0x654
/* 13DD54 8011FC64 0C00278C */  jal        func_80009E30
/* 13DD58 8011FC68 00402021 */   addu      $a0, $v0, $zero
/* 13DD5C 8011FC6C 14400007 */  bnez       $v0, .Lmenu_8011FC8C
/* 13DD60 8011FC70 AE220010 */   sw        $v0, 0x10($s1)
/* 13DD64 8011FC74 3C04800D */  lui        $a0, %hi(D_menu_800D0E00)
/* 13DD68 8011FC78 24840E00 */  addiu      $a0, $a0, %lo(D_menu_800D0E00)
/* 13DD6C 8011FC7C 00002821 */  addu       $a1, $zero, $zero
/* 13DD70 8011FC80 00A03021 */  addu       $a2, $a1, $zero
/* 13DD74 8011FC84 0C011ACF */  jal        func_80046B3C
/* 13DD78 8011FC88 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_8011FC8C:
/* 13DD7C 8011FC8C 8E240010 */  lw         $a0, 0x10($s1)
/* 13DD80 8011FC90 3C05800D */  lui        $a1, %hi(D_menu_800D0E04)
/* 13DD84 8011FC94 0C0025BA */  jal        func_800096E8
/* 13DD88 8011FC98 24A50E04 */   addiu     $a1, $a1, %lo(D_menu_800D0E04)
/* 13DD8C 8011FC9C 08047F39 */  j          .Lmenu_8011FCE4
/* 13DD90 8011FCA0 00000000 */   nop
.Lmenu_8011FCA4:
/* 13DD94 8011FCA4 0C01FB4C */  jal        func_8007ED30
/* 13DD98 8011FCA8 24040658 */   addiu     $a0, $zero, 0x658
/* 13DD9C 8011FCAC 00408021 */  addu       $s0, $v0, $zero
/* 13DDA0 8011FCB0 0C002504 */  jal        func_80009410
/* 13DDA4 8011FCB4 02002021 */   addu      $a0, $s0, $zero
/* 13DDA8 8011FCB8 3C02800D */  lui        $v0, %hi(D_menu_800D0F18)
/* 13DDAC 8011FCBC 24420F18 */  addiu      $v0, $v0, %lo(D_menu_800D0F18)
/* 13DDB0 8011FCC0 AE020028 */  sw         $v0, 0x28($s0)
/* 13DDB4 8011FCC4 16000007 */  bnez       $s0, .Lmenu_8011FCE4
/* 13DDB8 8011FCC8 AE300010 */   sw        $s0, 0x10($s1)
/* 13DDBC 8011FCCC 3C04800D */  lui        $a0, %hi(D_menu_800D0E00)
/* 13DDC0 8011FCD0 24840E00 */  addiu      $a0, $a0, %lo(D_menu_800D0E00)
/* 13DDC4 8011FCD4 00002821 */  addu       $a1, $zero, $zero
/* 13DDC8 8011FCD8 00A03021 */  addu       $a2, $a1, $zero
/* 13DDCC 8011FCDC 0C011ACF */  jal        func_80046B3C
/* 13DDD0 8011FCE0 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_8011FCE4:
/* 13DDD4 8011FCE4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13DDD8 8011FCE8 8FB10014 */  lw         $s1, 0x14($sp)
/* 13DDDC 8011FCEC 8FB00010 */  lw         $s0, 0x10($sp)
/* 13DDE0 8011FCF0 03E00008 */  jr         $ra
/* 13DDE4 8011FCF4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011FCF8
/* 13DDE8 8011FCF8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13DDEC 8011FCFC AFB00010 */  sw         $s0, 0x10($sp)
/* 13DDF0 8011FD00 00808021 */  addu       $s0, $a0, $zero
/* 13DDF4 8011FD04 AFB10014 */  sw         $s1, 0x14($sp)
/* 13DDF8 8011FD08 00A08821 */  addu       $s1, $a1, $zero
/* 13DDFC 8011FD0C AFBF0018 */  sw         $ra, 0x18($sp)
/* 13DE00 8011FD10 8E020008 */  lw         $v0, 0x8($s0)
/* 13DE04 8011FD14 8E25000C */  lw         $a1, 0xC($s1)
/* 13DE08 8011FD18 84440028 */  lh         $a0, 0x28($v0)
/* 13DE0C 8011FD1C 8C42002C */  lw         $v0, 0x2C($v0)
/* 13DE10 8011FD20 0040F809 */  jalr       $v0
/* 13DE14 8011FD24 02042021 */   addu      $a0, $s0, $a0
/* 13DE18 8011FD28 8E030010 */  lw         $v1, 0x10($s0)
/* 13DE1C 8011FD2C 8C620028 */  lw         $v0, 0x28($v1)
/* 13DE20 8011FD30 8E250008 */  lw         $a1, 0x8($s1)
/* 13DE24 8011FD34 84440088 */  lh         $a0, 0x88($v0)
/* 13DE28 8011FD38 8C42008C */  lw         $v0, 0x8C($v0)
/* 13DE2C 8011FD3C 0040F809 */  jalr       $v0
/* 13DE30 8011FD40 00642021 */   addu      $a0, $v1, $a0
/* 13DE34 8011FD44 0C0462E0 */  jal        func_menu_80118B80
/* 13DE38 8011FD48 02002021 */   addu      $a0, $s0, $zero
/* 13DE3C 8011FD4C 0C046372 */  jal        func_menu_80118DC8
/* 13DE40 8011FD50 02002021 */   addu      $a0, $s0, $zero
/* 13DE44 8011FD54 8E030010 */  lw         $v1, 0x10($s0)
/* 13DE48 8011FD58 8C620028 */  lw         $v0, 0x28($v1)
/* 13DE4C 8011FD5C 84440048 */  lh         $a0, 0x48($v0)
/* 13DE50 8011FD60 8C42004C */  lw         $v0, 0x4C($v0)
/* 13DE54 8011FD64 0040F809 */  jalr       $v0
/* 13DE58 8011FD68 00642021 */   addu      $a0, $v1, $a0
/* 13DE5C 8011FD6C 8E030010 */  lw         $v1, 0x10($s0)
/* 13DE60 8011FD70 10600006 */  beqz       $v1, .Lmenu_8011FD8C
/* 13DE64 8011FD74 24050003 */   addiu     $a1, $zero, 0x3
/* 13DE68 8011FD78 8C620028 */  lw         $v0, 0x28($v1)
/* 13DE6C 8011FD7C 84440038 */  lh         $a0, 0x38($v0)
/* 13DE70 8011FD80 8C42003C */  lw         $v0, 0x3C($v0)
/* 13DE74 8011FD84 0040F809 */  jalr       $v0
/* 13DE78 8011FD88 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011FD8C:
/* 13DE7C 8011FD8C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13DE80 8011FD90 8FB10014 */  lw         $s1, 0x14($sp)
/* 13DE84 8011FD94 8FB00010 */  lw         $s0, 0x10($sp)
/* 13DE88 8011FD98 03E00008 */  jr         $ra
/* 13DE8C 8011FD9C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011FDA0
/* 13DE90 8011FDA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13DE94 8011FDA4 24A3FFCE */  addiu      $v1, $a1, -0x32
/* 13DE98 8011FDA8 2C62000C */  sltiu      $v0, $v1, 0xC
/* 13DE9C 8011FDAC 10400030 */  beqz       $v0, Lmenu_8011FE70
/* 13DEA0 8011FDB0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 13DEA4 8011FDB4 3C02800D */  lui        $v0, %hi(jtbl_menu_800D0E10)
/* 13DEA8 8011FDB8 24420E10 */  addiu      $v0, $v0, %lo(jtbl_menu_800D0E10)
/* 13DEAC 8011FDBC 00031880 */  sll        $v1, $v1, 2
/* 13DEB0 8011FDC0 00621821 */  addu       $v1, $v1, $v0
/* 13DEB4 8011FDC4 8C620000 */  lw         $v0, 0x0($v1)
/* 13DEB8 8011FDC8 00400008 */  jr         $v0
/* 13DEBC 8011FDCC 00000000 */   nop
glabel Lmenu_8011FDD0
/* 13DEC0 8011FDD0 0C0483CC */  jal        func_menu_80120F30
/* 13DEC4 8011FDD4 00000000 */   nop
/* 13DEC8 8011FDD8 08047FA3 */  j          .Lmenu_8011FE8C
/* 13DECC 8011FDDC 00000000 */   nop
glabel Lmenu_8011FDE0
/* 13DED0 8011FDE0 0C048418 */  jal        func_menu_80121060
/* 13DED4 8011FDE4 00000000 */   nop
/* 13DED8 8011FDE8 08047FA3 */  j          .Lmenu_8011FE8C
/* 13DEDC 8011FDEC 00000000 */   nop
glabel Lmenu_8011FDF0
/* 13DEE0 8011FDF0 0C048464 */  jal        func_menu_80121190
/* 13DEE4 8011FDF4 00000000 */   nop
/* 13DEE8 8011FDF8 08047FA3 */  j          .Lmenu_8011FE8C
/* 13DEEC 8011FDFC 00000000 */   nop
glabel Lmenu_8011FE00
/* 13DEF0 8011FE00 0C0484B2 */  jal        func_menu_801212C8
/* 13DEF4 8011FE04 00000000 */   nop
/* 13DEF8 8011FE08 08047FA3 */  j          .Lmenu_8011FE8C
/* 13DEFC 8011FE0C 00000000 */   nop
glabel Lmenu_8011FE10
/* 13DF00 8011FE10 0C048500 */  jal        func_menu_80121400
/* 13DF04 8011FE14 00000000 */   nop
/* 13DF08 8011FE18 08047FA3 */  j          .Lmenu_8011FE8C
/* 13DF0C 8011FE1C 00000000 */   nop
glabel Lmenu_8011FE20
/* 13DF10 8011FE20 0C04854A */  jal        func_menu_80121528
/* 13DF14 8011FE24 00000000 */   nop
/* 13DF18 8011FE28 08047FA3 */  j          .Lmenu_8011FE8C
/* 13DF1C 8011FE2C 00000000 */   nop
glabel Lmenu_8011FE30
/* 13DF20 8011FE30 0C048598 */  jal        func_menu_80121660
/* 13DF24 8011FE34 00000000 */   nop
/* 13DF28 8011FE38 08047FA3 */  j          .Lmenu_8011FE8C
/* 13DF2C 8011FE3C 00000000 */   nop
glabel Lmenu_8011FE40
/* 13DF30 8011FE40 0C0485E4 */  jal        func_menu_80121790
/* 13DF34 8011FE44 00000000 */   nop
/* 13DF38 8011FE48 08047FA3 */  j          .Lmenu_8011FE8C
/* 13DF3C 8011FE4C 00000000 */   nop
glabel Lmenu_8011FE50
/* 13DF40 8011FE50 0C048632 */  jal        func_menu_801218C8
/* 13DF44 8011FE54 00000000 */   nop
/* 13DF48 8011FE58 08047FA3 */  j          .Lmenu_8011FE8C
/* 13DF4C 8011FE5C 00000000 */   nop
glabel Lmenu_8011FE60
/* 13DF50 8011FE60 0C048680 */  jal        func_menu_80121A00
/* 13DF54 8011FE64 00000000 */   nop
/* 13DF58 8011FE68 08047FA3 */  j          .Lmenu_8011FE8C
/* 13DF5C 8011FE6C 00000000 */   nop
glabel Lmenu_8011FE70
/* 13DF60 8011FE70 8C820010 */  lw         $v0, 0x10($a0)
/* 13DF64 8011FE74 8C430028 */  lw         $v1, 0x28($v0)
/* 13DF68 8011FE78 84640098 */  lh         $a0, 0x98($v1)
/* 13DF6C 8011FE7C 00442021 */  addu       $a0, $v0, $a0
/* 13DF70 8011FE80 8C62009C */  lw         $v0, 0x9C($v1)
/* 13DF74 8011FE84 0040F809 */  jalr       $v0
/* 13DF78 8011FE88 24050013 */   addiu     $a1, $zero, 0x13
.Lmenu_8011FE8C:
/* 13DF7C 8011FE8C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13DF80 8011FE90 03E00008 */  jr         $ra
/* 13DF84 8011FE94 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011FE98
/* 13DF88 8011FE98 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13DF8C 8011FE9C AFB10014 */  sw         $s1, 0x14($sp)
/* 13DF90 8011FEA0 00808821 */  addu       $s1, $a0, $zero
/* 13DF94 8011FEA4 AFB20018 */  sw         $s2, 0x18($sp)
/* 13DF98 8011FEA8 00A09021 */  addu       $s2, $a1, $zero
/* 13DF9C 8011FEAC 26440004 */  addiu      $a0, $s2, 0x4
/* 13DFA0 8011FEB0 240500FF */  addiu      $a1, $zero, 0xFF
/* 13DFA4 8011FEB4 24060004 */  addiu      $a2, $zero, 0x4
/* 13DFA8 8011FEB8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 13DFAC 8011FEBC AFB50024 */  sw         $s5, 0x24($sp)
/* 13DFB0 8011FEC0 AFB40020 */  sw         $s4, 0x20($sp)
/* 13DFB4 8011FEC4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13DFB8 8011FEC8 0C000697 */  jal        func_80001A5C
/* 13DFBC 8011FECC AFB00010 */   sw        $s0, 0x10($sp)
/* 13DFC0 8011FED0 8E230010 */  lw         $v1, 0x10($s1)
/* 13DFC4 8011FED4 8C620028 */  lw         $v0, 0x28($v1)
/* 13DFC8 8011FED8 844400A0 */  lh         $a0, 0xA0($v0)
/* 13DFCC 8011FEDC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13DFD0 8011FEE0 0040F809 */  jalr       $v0
/* 13DFD4 8011FEE4 00642021 */   addu      $a0, $v1, $a0
/* 13DFD8 8011FEE8 24030005 */  addiu      $v1, $zero, 0x5
/* 13DFDC 8011FEEC 10430007 */  beq        $v0, $v1, .Lmenu_8011FF0C
/* 13DFE0 8011FEF0 24050005 */   addiu     $a1, $zero, 0x5
/* 13DFE4 8011FEF4 8E230010 */  lw         $v1, 0x10($s1)
/* 13DFE8 8011FEF8 8C620028 */  lw         $v0, 0x28($v1)
/* 13DFEC 8011FEFC 84440098 */  lh         $a0, 0x98($v0)
/* 13DFF0 8011FF00 8C42009C */  lw         $v0, 0x9C($v0)
/* 13DFF4 8011FF04 0040F809 */  jalr       $v0
/* 13DFF8 8011FF08 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011FF0C:
/* 13DFFC 8011FF0C 24150006 */  addiu      $s5, $zero, 0x6
/* 13E000 8011FF10 24140028 */  addiu      $s4, $zero, 0x28
/* 13E004 8011FF14 2413002A */  addiu      $s3, $zero, 0x2A
.Lmenu_8011FF18:
/* 13E008 8011FF18 8E230010 */  lw         $v1, 0x10($s1)
/* 13E00C 8011FF1C 8C620028 */  lw         $v0, 0x28($v1)
/* 13E010 8011FF20 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E014 8011FF24 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E018 8011FF28 0040F809 */  jalr       $v0
/* 13E01C 8011FF2C 00642021 */   addu      $a0, $v1, $a0
/* 13E020 8011FF30 10550021 */  beq        $v0, $s5, .Lmenu_8011FFB8
/* 13E024 8011FF34 00000000 */   nop
/* 13E028 8011FF38 8E300010 */  lw         $s0, 0x10($s1)
/* 13E02C 8011FF3C 8E020034 */  lw         $v0, 0x34($s0)
/* 13E030 8011FF40 10540005 */  beq        $v0, $s4, .Lmenu_8011FF58
/* 13E034 8011FF44 00000000 */   nop
/* 13E038 8011FF48 1053000D */  beq        $v0, $s3, .Lmenu_8011FF80
/* 13E03C 8011FF4C 24050013 */   addiu     $a1, $zero, 0x13
/* 13E040 8011FF50 08047FE6 */  j          .Lmenu_8011FF98
/* 13E044 8011FF54 00000000 */   nop
.Lmenu_8011FF58:
/* 13E048 8011FF58 8E020028 */  lw         $v0, 0x28($s0)
/* 13E04C 8011FF5C 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E050 8011FF60 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E054 8011FF64 0040F809 */  jalr       $v0
/* 13E058 8011FF68 02042021 */   addu      $a0, $s0, $a0
/* 13E05C 8011FF6C 8E240014 */  lw         $a0, 0x14($s1)
/* 13E060 8011FF70 0C016EC5 */  jal        func_8005BB14
/* 13E064 8011FF74 26050044 */   addiu     $a1, $s0, 0x44
/* 13E068 8011FF78 08047FC6 */  j          .Lmenu_8011FF18
/* 13E06C 8011FF7C AE420000 */   sw        $v0, 0x0($s2)
.Lmenu_8011FF80:
/* 13E070 8011FF80 02202021 */  addu       $a0, $s1, $zero
/* 13E074 8011FF84 0C046358 */  jal        func_menu_80118D60
/* 13E078 8011FF88 26450004 */   addiu     $a1, $s2, 0x4
/* 13E07C 8011FF8C 24020001 */  addiu      $v0, $zero, 0x1
/* 13E080 8011FF90 08047FC6 */  j          .Lmenu_8011FF18
/* 13E084 8011FF94 AE420008 */   sw        $v0, 0x8($s2)
.Lmenu_8011FF98:
/* 13E088 8011FF98 8E230010 */  lw         $v1, 0x10($s1)
/* 13E08C 8011FF9C 8C620028 */  lw         $v0, 0x28($v1)
/* 13E090 8011FFA0 84440098 */  lh         $a0, 0x98($v0)
/* 13E094 8011FFA4 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E098 8011FFA8 0040F809 */  jalr       $v0
/* 13E09C 8011FFAC 00642021 */   addu      $a0, $v1, $a0
/* 13E0A0 8011FFB0 08047FC6 */  j          .Lmenu_8011FF18
/* 13E0A4 8011FFB4 00000000 */   nop
.Lmenu_8011FFB8:
/* 13E0A8 8011FFB8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 13E0AC 8011FFBC 8FB50024 */  lw         $s5, 0x24($sp)
/* 13E0B0 8011FFC0 8FB40020 */  lw         $s4, 0x20($sp)
/* 13E0B4 8011FFC4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13E0B8 8011FFC8 8FB20018 */  lw         $s2, 0x18($sp)
/* 13E0BC 8011FFCC 8FB10014 */  lw         $s1, 0x14($sp)
/* 13E0C0 8011FFD0 8FB00010 */  lw         $s0, 0x10($sp)
/* 13E0C4 8011FFD4 03E00008 */  jr         $ra
/* 13E0C8 8011FFD8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011FFDC
/* 13E0CC 8011FFDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13E0D0 8011FFE0 AFB10014 */  sw         $s1, 0x14($sp)
/* 13E0D4 8011FFE4 00808821 */  addu       $s1, $a0, $zero
/* 13E0D8 8011FFE8 AFB20018 */  sw         $s2, 0x18($sp)
/* 13E0DC 8011FFEC 00A09021 */  addu       $s2, $a1, $zero
/* 13E0E0 8011FFF0 26440004 */  addiu      $a0, $s2, 0x4
/* 13E0E4 8011FFF4 240500FF */  addiu      $a1, $zero, 0xFF
/* 13E0E8 8011FFF8 24060004 */  addiu      $a2, $zero, 0x4
/* 13E0EC 8011FFFC AFBF001C */  sw         $ra, 0x1C($sp)
/* 13E0F0 80120000 0C000697 */  jal        func_80001A5C
/* 13E0F4 80120004 AFB00010 */   sw        $s0, 0x10($sp)
/* 13E0F8 80120008 8E230010 */  lw         $v1, 0x10($s1)
/* 13E0FC 8012000C 8C620028 */  lw         $v0, 0x28($v1)
/* 13E100 80120010 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E104 80120014 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E108 80120018 0040F809 */  jalr       $v0
/* 13E10C 8012001C 00642021 */   addu      $a0, $v1, $a0
/* 13E110 80120020 24030005 */  addiu      $v1, $zero, 0x5
/* 13E114 80120024 10430007 */  beq        $v0, $v1, .Lmenu_80120044
/* 13E118 80120028 24050005 */   addiu     $a1, $zero, 0x5
/* 13E11C 8012002C 8E230010 */  lw         $v1, 0x10($s1)
/* 13E120 80120030 8C620028 */  lw         $v0, 0x28($v1)
.Lmenu_80120034:
/* 13E124 80120034 84440098 */  lh         $a0, 0x98($v0)
/* 13E128 80120038 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E12C 8012003C 0040F809 */  jalr       $v0
/* 13E130 80120040 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80120044:
/* 13E134 80120044 8E230010 */  lw         $v1, 0x10($s1)
/* 13E138 80120048 8C620028 */  lw         $v0, 0x28($v1)
/* 13E13C 8012004C 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E140 80120050 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E144 80120054 0040F809 */  jalr       $v0
/* 13E148 80120058 00642021 */   addu      $a0, $v1, $a0
/* 13E14C 8012005C 24030006 */  addiu      $v1, $zero, 0x6
/* 13E150 80120060 1043002F */  beq        $v0, $v1, .Lmenu_80120120
/* 13E154 80120064 2402002A */   addiu     $v0, $zero, 0x2A
/* 13E158 80120068 8E300010 */  lw         $s0, 0x10($s1)
/* 13E15C 8012006C 8E030034 */  lw         $v1, 0x34($s0)
/* 13E160 80120070 1062001D */  beq        $v1, $v0, .Lmenu_801200E8
/* 13E164 80120074 00602021 */   addu      $a0, $v1, $zero
/* 13E168 80120078 2C62002B */  sltiu      $v0, $v1, 0x2B
/* 13E16C 8012007C 10400005 */  beqz       $v0, .Lmenu_80120094
/* 13E170 80120080 24020029 */   addiu     $v0, $zero, 0x29
/* 13E174 80120084 1062000A */  beq        $v1, $v0, .Lmenu_801200B0
/* 13E178 80120088 00000000 */   nop
/* 13E17C 8012008C 08048044 */  j          .Lmenu_80120110
/* 13E180 80120090 00000000 */   nop
.Lmenu_80120094:
/* 13E184 80120094 2402002E */  addiu      $v0, $zero, 0x2E
/* 13E188 80120098 10820019 */  beq        $a0, $v0, .Lmenu_80120100
/* 13E18C 8012009C 2402002F */   addiu     $v0, $zero, 0x2F
/* 13E190 801200A0 1082000D */  beq        $a0, $v0, .Lmenu_801200D8
/* 13E194 801200A4 00000000 */   nop
/* 13E198 801200A8 08048044 */  j          .Lmenu_80120110
/* 13E19C 801200AC 00000000 */   nop
.Lmenu_801200B0:
/* 13E1A0 801200B0 8E020028 */  lw         $v0, 0x28($s0)
/* 13E1A4 801200B4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E1A8 801200B8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E1AC 801200BC 0040F809 */  jalr       $v0
/* 13E1B0 801200C0 02042021 */   addu      $a0, $s0, $a0
/* 13E1B4 801200C4 8E240014 */  lw         $a0, 0x14($s1)
/* 13E1B8 801200C8 0C016E91 */  jal        func_8005BA44
/* 13E1BC 801200CC 26050044 */   addiu     $a1, $s0, 0x44
/* 13E1C0 801200D0 08048011 */  j          .Lmenu_80120044
/* 13E1C4 801200D4 AE420000 */   sw        $v0, 0x0($s2)
.Lmenu_801200D8:
/* 13E1C8 801200D8 0C002680 */  jal        func_80009A00
/* 13E1CC 801200DC 02002021 */   addu      $a0, $s0, $zero
/* 13E1D0 801200E0 08048011 */  j          .Lmenu_80120044
/* 13E1D4 801200E4 AE420010 */   sw        $v0, 0x10($s2)
.Lmenu_801200E8:
/* 13E1D8 801200E8 02202021 */  addu       $a0, $s1, $zero
/* 13E1DC 801200EC 0C046358 */  jal        func_menu_80118D60
/* 13E1E0 801200F0 26450004 */   addiu     $a1, $s2, 0x4
/* 13E1E4 801200F4 24020001 */  addiu      $v0, $zero, 0x1
/* 13E1E8 801200F8 08048011 */  j          .Lmenu_80120044
/* 13E1EC 801200FC AE42000C */   sw        $v0, 0xC($s2)
.Lmenu_80120100:
/* 13E1F0 80120100 0C002680 */  jal        func_80009A00
/* 13E1F4 80120104 02002021 */   addu      $a0, $s0, $zero
/* 13E1F8 80120108 08048011 */  j          .Lmenu_80120044
/* 13E1FC 8012010C AE420008 */   sw        $v0, 0x8($s2)
.Lmenu_80120110:
/* 13E200 80120110 8E230010 */  lw         $v1, 0x10($s1)
/* 13E204 80120114 8C620028 */  lw         $v0, 0x28($v1)
/* 13E208 80120118 0804800D */  j          .Lmenu_80120034
/* 13E20C 8012011C 24050013 */   addiu     $a1, $zero, 0x13
.Lmenu_80120120:
/* 13E210 80120120 8FBF001C */  lw         $ra, 0x1C($sp)
/* 13E214 80120124 8FB20018 */  lw         $s2, 0x18($sp)
/* 13E218 80120128 8FB10014 */  lw         $s1, 0x14($sp)
/* 13E21C 8012012C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13E220 80120130 03E00008 */  jr         $ra
/* 13E224 80120134 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80120138
/* 13E228 80120138 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13E22C 8012013C AFB3001C */  sw         $s3, 0x1C($sp)
/* 13E230 80120140 00809821 */  addu       $s3, $a0, $zero
/* 13E234 80120144 AFB40020 */  sw         $s4, 0x20($sp)
/* 13E238 80120148 00A0A021 */  addu       $s4, $a1, $zero
/* 13E23C 8012014C 26840024 */  addiu      $a0, $s4, 0x24
/* 13E240 80120150 240500FF */  addiu      $a1, $zero, 0xFF
/* 13E244 80120154 24060004 */  addiu      $a2, $zero, 0x4
/* 13E248 80120158 AFBF0024 */  sw         $ra, 0x24($sp)
/* 13E24C 8012015C AFB20018 */  sw         $s2, 0x18($sp)
/* 13E250 80120160 AFB10014 */  sw         $s1, 0x14($sp)
/* 13E254 80120164 0C000697 */  jal        func_80001A5C
/* 13E258 80120168 AFB00010 */   sw        $s0, 0x10($sp)
/* 13E25C 8012016C 8E630010 */  lw         $v1, 0x10($s3)
/* 13E260 80120170 8C620028 */  lw         $v0, 0x28($v1)
/* 13E264 80120174 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E268 80120178 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E26C 8012017C 0040F809 */  jalr       $v0
/* 13E270 80120180 00642021 */   addu      $a0, $v1, $a0
/* 13E274 80120184 24030005 */  addiu      $v1, $zero, 0x5
/* 13E278 80120188 10430007 */  beq        $v0, $v1, .Lmenu_801201A8
/* 13E27C 8012018C 24050005 */   addiu     $a1, $zero, 0x5
/* 13E280 80120190 8E630010 */  lw         $v1, 0x10($s3)
/* 13E284 80120194 8C620028 */  lw         $v0, 0x28($v1)
.Lmenu_80120198:
/* 13E288 80120198 84440098 */  lh         $a0, 0x98($v0)
/* 13E28C 8012019C 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E290 801201A0 0040F809 */  jalr       $v0
/* 13E294 801201A4 00642021 */   addu      $a0, $v1, $a0
.Lmenu_801201A8:
/* 13E298 801201A8 8E630010 */  lw         $v1, 0x10($s3)
/* 13E29C 801201AC 8C620028 */  lw         $v0, 0x28($v1)
/* 13E2A0 801201B0 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E2A4 801201B4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E2A8 801201B8 0040F809 */  jalr       $v0
/* 13E2AC 801201BC 00642021 */   addu      $a0, $v1, $a0
/* 13E2B0 801201C0 24030006 */  addiu      $v1, $zero, 0x6
/* 13E2B4 801201C4 10430028 */  beq        $v0, $v1, .Lmenu_80120268
/* 13E2B8 801201C8 00000000 */   nop
/* 13E2BC 801201CC 8E620010 */  lw         $v0, 0x10($s3)
/* 13E2C0 801201D0 8C430034 */  lw         $v1, 0x34($v0)
/* 13E2C4 801201D4 24020028 */  addiu      $v0, $zero, 0x28
/* 13E2C8 801201D8 10620005 */  beq        $v1, $v0, .Lmenu_801201F0
/* 13E2CC 801201DC 2402002A */   addiu     $v0, $zero, 0x2A
/* 13E2D0 801201E0 10620014 */  beq        $v1, $v0, .Lmenu_80120234
/* 13E2D4 801201E4 24050013 */   addiu     $a1, $zero, 0x13
/* 13E2D8 801201E8 08048096 */  j          .Lmenu_80120258
/* 13E2DC 801201EC 00000000 */   nop
.Lmenu_801201F0:
/* 13E2E0 801201F0 00009021 */  addu       $s2, $zero, $zero
/* 13E2E4 801201F4 02808821 */  addu       $s1, $s4, $zero
.Lmenu_801201F8:
/* 13E2E8 801201F8 2A420008 */  slti       $v0, $s2, 0x8
/* 13E2EC 801201FC 1040FFEA */  beqz       $v0, .Lmenu_801201A8
/* 13E2F0 80120200 26520001 */   addiu     $s2, $s2, 0x1
/* 13E2F4 80120204 8E700010 */  lw         $s0, 0x10($s3)
/* 13E2F8 80120208 8E020028 */  lw         $v0, 0x28($s0)
/* 13E2FC 8012020C 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E300 80120210 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E304 80120214 0040F809 */  jalr       $v0
/* 13E308 80120218 02042021 */   addu      $a0, $s0, $a0
/* 13E30C 8012021C 8E640014 */  lw         $a0, 0x14($s3)
/* 13E310 80120220 0C016EC5 */  jal        func_8005BB14
/* 13E314 80120224 26050044 */   addiu     $a1, $s0, 0x44
/* 13E318 80120228 AE220000 */  sw         $v0, 0x0($s1)
/* 13E31C 8012022C 0804807E */  j          .Lmenu_801201F8
/* 13E320 80120230 26310004 */   addiu     $s1, $s1, 0x4
.Lmenu_80120234:
/* 13E324 80120234 02602021 */  addu       $a0, $s3, $zero
/* 13E328 80120238 0C046358 */  jal        func_menu_80118D60
/* 13E32C 8012023C 26850020 */   addiu     $a1, $s4, 0x20
/* 13E330 80120240 02602021 */  addu       $a0, $s3, $zero
/* 13E334 80120244 0C046358 */  jal        func_menu_80118D60
/* 13E338 80120248 26850024 */   addiu     $a1, $s4, 0x24
/* 13E33C 8012024C 24020001 */  addiu      $v0, $zero, 0x1
/* 13E340 80120250 0804806A */  j          .Lmenu_801201A8
/* 13E344 80120254 AE820028 */   sw        $v0, 0x28($s4)
.Lmenu_80120258:
/* 13E348 80120258 8E630010 */  lw         $v1, 0x10($s3)
/* 13E34C 8012025C 8C620028 */  lw         $v0, 0x28($v1)
/* 13E350 80120260 08048066 */  j          .Lmenu_80120198
/* 13E354 80120264 00000000 */   nop
.Lmenu_80120268:
/* 13E358 80120268 8FBF0024 */  lw         $ra, 0x24($sp)
/* 13E35C 8012026C 8FB40020 */  lw         $s4, 0x20($sp)
/* 13E360 80120270 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13E364 80120274 8FB20018 */  lw         $s2, 0x18($sp)
/* 13E368 80120278 8FB10014 */  lw         $s1, 0x14($sp)
/* 13E36C 8012027C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13E370 80120280 03E00008 */  jr         $ra
/* 13E374 80120284 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_80120288
/* 13E378 80120288 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13E37C 8012028C AFB20018 */  sw         $s2, 0x18($sp)
/* 13E380 80120290 00809021 */  addu       $s2, $a0, $zero
/* 13E384 80120294 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13E388 80120298 00A09821 */  addu       $s3, $a1, $zero
/* 13E38C 8012029C 02602021 */  addu       $a0, $s3, $zero
/* 13E390 801202A0 240500FF */  addiu      $a1, $zero, 0xFF
/* 13E394 801202A4 24060018 */  addiu      $a2, $zero, 0x18
/* 13E398 801202A8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 13E39C 801202AC AFB40020 */  sw         $s4, 0x20($sp)
/* 13E3A0 801202B0 AFB10014 */  sw         $s1, 0x14($sp)
/* 13E3A4 801202B4 0C000697 */  jal        func_80001A5C
/* 13E3A8 801202B8 AFB00010 */   sw        $s0, 0x10($sp)
/* 13E3AC 801202BC 8E430010 */  lw         $v1, 0x10($s2)
/* 13E3B0 801202C0 8C620028 */  lw         $v0, 0x28($v1)
/* 13E3B4 801202C4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E3B8 801202C8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E3BC 801202CC 0040F809 */  jalr       $v0
/* 13E3C0 801202D0 00642021 */   addu      $a0, $v1, $a0
/* 13E3C4 801202D4 24030005 */  addiu      $v1, $zero, 0x5
/* 13E3C8 801202D8 10430007 */  beq        $v0, $v1, .Lmenu_801202F8
/* 13E3CC 801202DC 24050005 */   addiu     $a1, $zero, 0x5
/* 13E3D0 801202E0 8E430010 */  lw         $v1, 0x10($s2)
/* 13E3D4 801202E4 8C620028 */  lw         $v0, 0x28($v1)
/* 13E3D8 801202E8 84440098 */  lh         $a0, 0x98($v0)
/* 13E3DC 801202EC 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E3E0 801202F0 0040F809 */  jalr       $v0
/* 13E3E4 801202F4 00642021 */   addu      $a0, $v1, $a0
.Lmenu_801202F8:
/* 13E3E8 801202F8 24140001 */  addiu      $s4, $zero, 0x1
.Lmenu_801202FC:
/* 13E3EC 801202FC 8E430010 */  lw         $v1, 0x10($s2)
/* 13E3F0 80120300 8C620028 */  lw         $v0, 0x28($v1)
/* 13E3F4 80120304 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E3F8 80120308 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E3FC 8012030C 0040F809 */  jalr       $v0
/* 13E400 80120310 00642021 */   addu      $a0, $v1, $a0
/* 13E404 80120314 24030006 */  addiu      $v1, $zero, 0x6
/* 13E408 80120318 1043003E */  beq        $v0, $v1, .Lmenu_80120414
/* 13E40C 8012031C 2402002B */   addiu     $v0, $zero, 0x2B
/* 13E410 80120320 8E440010 */  lw         $a0, 0x10($s2)
/* 13E414 80120324 8C830034 */  lw         $v1, 0x34($a0)
/* 13E418 80120328 10620011 */  beq        $v1, $v0, .Lmenu_80120370
/* 13E41C 8012032C 00602821 */   addu      $a1, $v1, $zero
/* 13E420 80120330 2C62002C */  sltiu      $v0, $v1, 0x2C
/* 13E424 80120334 10400005 */  beqz       $v0, .Lmenu_8012034C
/* 13E428 80120338 2402002A */   addiu     $v0, $zero, 0x2A
/* 13E42C 8012033C 10620022 */  beq        $v1, $v0, .Lmenu_801203C8
/* 13E430 80120340 00008021 */   addu      $s0, $zero, $zero
/* 13E434 80120344 080480FC */  j          .Lmenu_801203F0
/* 13E438 80120348 00000000 */   nop
.Lmenu_8012034C:
/* 13E43C 8012034C 2402002C */  addiu      $v0, $zero, 0x2C
/* 13E440 80120350 10A20012 */  beq        $a1, $v0, .Lmenu_8012039C
/* 13E444 80120354 2402002D */   addiu     $v0, $zero, 0x2D
/* 13E448 80120358 14A20025 */  bne        $a1, $v0, .Lmenu_801203F0
/* 13E44C 8012035C 00000000 */   nop
/* 13E450 80120360 0C002680 */  jal        func_80009A00
/* 13E454 80120364 00000000 */   nop
/* 13E458 80120368 080480BF */  j          .Lmenu_801202FC
/* 13E45C 8012036C AE620084 */   sw        $v0, 0x84($s3)
.Lmenu_80120370:
/* 13E460 80120370 00008021 */  addu       $s0, $zero, $zero
/* 13E464 80120374 02608821 */  addu       $s1, $s3, $zero
.Lmenu_80120378:
/* 13E468 80120378 8E440010 */  lw         $a0, 0x10($s2)
/* 13E46C 8012037C 0C002680 */  jal        func_80009A00
/* 13E470 80120380 26100001 */   addiu     $s0, $s0, 0x1
/* 13E474 80120384 A6220018 */  sh         $v0, 0x18($s1)
/* 13E478 80120388 2A020005 */  slti       $v0, $s0, 0x5
/* 13E47C 8012038C 1440FFFA */  bnez       $v0, .Lmenu_80120378
/* 13E480 80120390 26310002 */   addiu     $s1, $s1, 0x2
/* 13E484 80120394 080480BF */  j          .Lmenu_801202FC
/* 13E488 80120398 AE74008C */   sw        $s4, 0x8C($s3)
.Lmenu_8012039C:
/* 13E48C 8012039C 00008021 */  addu       $s0, $zero, $zero
/* 13E490 801203A0 24110024 */  addiu      $s1, $zero, 0x24
.Lmenu_801203A4:
/* 13E494 801203A4 02402021 */  addu       $a0, $s2, $zero
/* 13E498 801203A8 0C04633E */  jal        func_menu_80118CF8
/* 13E49C 801203AC 02712821 */   addu      $a1, $s3, $s1
/* 13E4A0 801203B0 26100001 */  addiu      $s0, $s0, 0x1
/* 13E4A4 801203B4 2A020006 */  slti       $v0, $s0, 0x6
/* 13E4A8 801203B8 1440FFFA */  bnez       $v0, .Lmenu_801203A4
/* 13E4AC 801203BC 26310010 */   addiu     $s1, $s1, 0x10
/* 13E4B0 801203C0 080480BF */  j          .Lmenu_801202FC
/* 13E4B4 801203C4 00000000 */   nop
.Lmenu_801203C8:
/* 13E4B8 801203C8 02608821 */  addu       $s1, $s3, $zero
.Lmenu_801203CC:
/* 13E4BC 801203CC 02402021 */  addu       $a0, $s2, $zero
/* 13E4C0 801203D0 0C046358 */  jal        func_menu_80118D60
/* 13E4C4 801203D4 02202821 */   addu      $a1, $s1, $zero
/* 13E4C8 801203D8 26100001 */  addiu      $s0, $s0, 0x1
/* 13E4CC 801203DC 2A020006 */  slti       $v0, $s0, 0x6
/* 13E4D0 801203E0 1440FFFA */  bnez       $v0, .Lmenu_801203CC
/* 13E4D4 801203E4 26310004 */   addiu     $s1, $s1, 0x4
/* 13E4D8 801203E8 080480BF */  j          .Lmenu_801202FC
/* 13E4DC 801203EC AE740088 */   sw        $s4, 0x88($s3)
.Lmenu_801203F0:
/* 13E4E0 801203F0 8E430010 */  lw         $v1, 0x10($s2)
/* 13E4E4 801203F4 8C620028 */  lw         $v0, 0x28($v1)
/* 13E4E8 801203F8 24050013 */  addiu      $a1, $zero, 0x13
/* 13E4EC 801203FC 84440098 */  lh         $a0, 0x98($v0)
/* 13E4F0 80120400 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E4F4 80120404 0040F809 */  jalr       $v0
/* 13E4F8 80120408 00642021 */   addu      $a0, $v1, $a0
/* 13E4FC 8012040C 080480BF */  j          .Lmenu_801202FC
/* 13E500 80120410 00000000 */   nop
.Lmenu_80120414:
/* 13E504 80120414 8FBF0024 */  lw         $ra, 0x24($sp)
/* 13E508 80120418 8FB40020 */  lw         $s4, 0x20($sp)
/* 13E50C 8012041C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13E510 80120420 8FB20018 */  lw         $s2, 0x18($sp)
/* 13E514 80120424 8FB10014 */  lw         $s1, 0x14($sp)
/* 13E518 80120428 8FB00010 */  lw         $s0, 0x10($sp)
/* 13E51C 8012042C 03E00008 */  jr         $ra
/* 13E520 80120430 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_80120434
/* 13E524 80120434 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13E528 80120438 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13E52C 8012043C 00809821 */  addu       $s3, $a0, $zero
/* 13E530 80120440 AFBF0028 */  sw         $ra, 0x28($sp)
/* 13E534 80120444 AFB50024 */  sw         $s5, 0x24($sp)
/* 13E538 80120448 AFB40020 */  sw         $s4, 0x20($sp)
/* 13E53C 8012044C AFB20018 */  sw         $s2, 0x18($sp)
/* 13E540 80120450 AFB10014 */  sw         $s1, 0x14($sp)
/* 13E544 80120454 AFB00010 */  sw         $s0, 0x10($sp)
/* 13E548 80120458 8E630010 */  lw         $v1, 0x10($s3)
/* 13E54C 8012045C 8C620028 */  lw         $v0, 0x28($v1)
/* 13E550 80120460 00A0A021 */  addu       $s4, $a1, $zero
/* 13E554 80120464 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E558 80120468 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E55C 8012046C 0040F809 */  jalr       $v0
/* 13E560 80120470 00642021 */   addu      $a0, $v1, $a0
/* 13E564 80120474 24030005 */  addiu      $v1, $zero, 0x5
/* 13E568 80120478 10430007 */  beq        $v0, $v1, .Lmenu_80120498
/* 13E56C 8012047C 24050005 */   addiu     $a1, $zero, 0x5
/* 13E570 80120480 8E630010 */  lw         $v1, 0x10($s3)
/* 13E574 80120484 8C620028 */  lw         $v0, 0x28($v1)
/* 13E578 80120488 84440098 */  lh         $a0, 0x98($v0)
/* 13E57C 8012048C 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E580 80120490 0040F809 */  jalr       $v0
/* 13E584 80120494 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80120498:
/* 13E588 80120498 24150006 */  addiu      $s5, $zero, 0x6
.Lmenu_8012049C:
/* 13E58C 8012049C 8E630010 */  lw         $v1, 0x10($s3)
/* 13E590 801204A0 8C620028 */  lw         $v0, 0x28($v1)
/* 13E594 801204A4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E598 801204A8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E59C 801204AC 0040F809 */  jalr       $v0
/* 13E5A0 801204B0 00642021 */   addu      $a0, $v1, $a0
/* 13E5A4 801204B4 10550026 */  beq        $v0, $s5, .Lmenu_80120550
/* 13E5A8 801204B8 00000000 */   nop
/* 13E5AC 801204BC 8E620010 */  lw         $v0, 0x10($s3)
/* 13E5B0 801204C0 8C430034 */  lw         $v1, 0x34($v0)
/* 13E5B4 801204C4 24020028 */  addiu      $v0, $zero, 0x28
/* 13E5B8 801204C8 10620008 */  beq        $v1, $v0, .Lmenu_801204EC
/* 13E5BC 801204CC 2402003A */   addiu     $v0, $zero, 0x3A
/* 13E5C0 801204D0 14620017 */  bne        $v1, $v0, .Lmenu_80120530
/* 13E5C4 801204D4 24050013 */   addiu     $a1, $zero, 0x13
/* 13E5C8 801204D8 02602021 */  addu       $a0, $s3, $zero
/* 13E5CC 801204DC 0C0480A2 */  jal        func_menu_80120288
/* 13E5D0 801204E0 02802821 */   addu      $a1, $s4, $zero
/* 13E5D4 801204E4 08048127 */  j          .Lmenu_8012049C
/* 13E5D8 801204E8 00000000 */   nop
.Lmenu_801204EC:
/* 13E5DC 801204EC 00009021 */  addu       $s2, $zero, $zero
/* 13E5E0 801204F0 02808821 */  addu       $s1, $s4, $zero
.Lmenu_801204F4:
/* 13E5E4 801204F4 2A420006 */  slti       $v0, $s2, 0x6
/* 13E5E8 801204F8 1040FFE8 */  beqz       $v0, .Lmenu_8012049C
/* 13E5EC 801204FC 26520001 */   addiu     $s2, $s2, 0x1
/* 13E5F0 80120500 8E700010 */  lw         $s0, 0x10($s3)
/* 13E5F4 80120504 8E020028 */  lw         $v0, 0x28($s0)
/* 13E5F8 80120508 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E5FC 8012050C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E600 80120510 0040F809 */  jalr       $v0
/* 13E604 80120514 02042021 */   addu      $a0, $s0, $a0
/* 13E608 80120518 8E640014 */  lw         $a0, 0x14($s3)
/* 13E60C 8012051C 0C016EC5 */  jal        func_8005BB14
/* 13E610 80120520 26050044 */   addiu     $a1, $s0, 0x44
/* 13E614 80120524 AE220090 */  sw         $v0, 0x90($s1)
/* 13E618 80120528 0804813D */  j          .Lmenu_801204F4
/* 13E61C 8012052C 26310004 */   addiu     $s1, $s1, 0x4
.Lmenu_80120530:
/* 13E620 80120530 8E630010 */  lw         $v1, 0x10($s3)
/* 13E624 80120534 8C620028 */  lw         $v0, 0x28($v1)
/* 13E628 80120538 84440098 */  lh         $a0, 0x98($v0)
/* 13E62C 8012053C 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E630 80120540 0040F809 */  jalr       $v0
/* 13E634 80120544 00642021 */   addu      $a0, $v1, $a0
/* 13E638 80120548 08048127 */  j          .Lmenu_8012049C
/* 13E63C 8012054C 00000000 */   nop
.Lmenu_80120550:
/* 13E640 80120550 8FBF0028 */  lw         $ra, 0x28($sp)
/* 13E644 80120554 8FB50024 */  lw         $s5, 0x24($sp)
/* 13E648 80120558 8FB40020 */  lw         $s4, 0x20($sp)
/* 13E64C 8012055C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13E650 80120560 8FB20018 */  lw         $s2, 0x18($sp)
/* 13E654 80120564 8FB10014 */  lw         $s1, 0x14($sp)
/* 13E658 80120568 8FB00010 */  lw         $s0, 0x10($sp)
/* 13E65C 8012056C 03E00008 */  jr         $ra
/* 13E660 80120570 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_80120574
/* 13E664 80120574 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13E668 80120578 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13E66C 8012057C 00809821 */  addu       $s3, $a0, $zero
/* 13E670 80120580 AFBF0028 */  sw         $ra, 0x28($sp)
/* 13E674 80120584 AFB50024 */  sw         $s5, 0x24($sp)
/* 13E678 80120588 AFB40020 */  sw         $s4, 0x20($sp)
/* 13E67C 8012058C AFB20018 */  sw         $s2, 0x18($sp)
/* 13E680 80120590 AFB10014 */  sw         $s1, 0x14($sp)
/* 13E684 80120594 AFB00010 */  sw         $s0, 0x10($sp)
/* 13E688 80120598 8E630010 */  lw         $v1, 0x10($s3)
/* 13E68C 8012059C 00A0A821 */  addu       $s5, $a1, $zero
/* 13E690 801205A0 8C620028 */  lw         $v0, 0x28($v1)
/* 13E694 801205A4 0000A021 */  addu       $s4, $zero, $zero
/* 13E698 801205A8 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E69C 801205AC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E6A0 801205B0 0040F809 */  jalr       $v0
/* 13E6A4 801205B4 00642021 */   addu      $a0, $v1, $a0
/* 13E6A8 801205B8 24030005 */  addiu      $v1, $zero, 0x5
/* 13E6AC 801205BC 10430007 */  beq        $v0, $v1, .Lmenu_801205DC
/* 13E6B0 801205C0 24050005 */   addiu     $a1, $zero, 0x5
/* 13E6B4 801205C4 8E630010 */  lw         $v1, 0x10($s3)
/* 13E6B8 801205C8 8C620028 */  lw         $v0, 0x28($v1)
.Lmenu_801205CC:
/* 13E6BC 801205CC 84440098 */  lh         $a0, 0x98($v0)
/* 13E6C0 801205D0 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E6C4 801205D4 0040F809 */  jalr       $v0
/* 13E6C8 801205D8 00642021 */   addu      $a0, $v1, $a0
.Lmenu_801205DC:
/* 13E6CC 801205DC 8E630010 */  lw         $v1, 0x10($s3)
/* 13E6D0 801205E0 8C620028 */  lw         $v0, 0x28($v1)
/* 13E6D4 801205E4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E6D8 801205E8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E6DC 801205EC 0040F809 */  jalr       $v0
/* 13E6E0 801205F0 00642021 */   addu      $a0, $v1, $a0
/* 13E6E4 801205F4 24030006 */  addiu      $v1, $zero, 0x6
/* 13E6E8 801205F8 10430044 */  beq        $v0, $v1, .Lmenu_8012070C
/* 13E6EC 801205FC 24020003 */   addiu     $v0, $zero, 0x3
/* 13E6F0 80120600 8E620010 */  lw         $v0, 0x10($s3)
/* 13E6F4 80120604 8C430034 */  lw         $v1, 0x34($v0)
/* 13E6F8 80120608 24020029 */  addiu      $v0, $zero, 0x29
/* 13E6FC 8012060C 10620017 */  beq        $v1, $v0, .Lmenu_8012066C
/* 13E700 80120610 00602021 */   addu      $a0, $v1, $zero
/* 13E704 80120614 2C62002A */  sltiu      $v0, $v1, 0x2A
/* 13E708 80120618 10400005 */  beqz       $v0, .Lmenu_80120630
/* 13E70C 8012061C 24020028 */   addiu     $v0, $zero, 0x28
/* 13E710 80120620 10620023 */  beq        $v1, $v0, .Lmenu_801206B0
/* 13E714 80120624 00008821 */   addu      $s1, $zero, $zero
/* 13E718 80120628 080481BF */  j          .Lmenu_801206FC
/* 13E71C 8012062C 00000000 */   nop
.Lmenu_80120630:
/* 13E720 80120630 2402002C */  addiu      $v0, $zero, 0x2C
/* 13E724 80120634 10820008 */  beq        $a0, $v0, .Lmenu_80120658
/* 13E728 80120638 2402003A */   addiu     $v0, $zero, 0x3A
/* 13E72C 8012063C 1482002F */  bne        $a0, $v0, .Lmenu_801206FC
/* 13E730 80120640 00000000 */   nop
/* 13E734 80120644 02602021 */  addu       $a0, $s3, $zero
/* 13E738 80120648 0C0480A2 */  jal        func_menu_80120288
/* 13E73C 8012064C 02A02821 */   addu      $a1, $s5, $zero
/* 13E740 80120650 08048177 */  j          .Lmenu_801205DC
/* 13E744 80120654 00000000 */   nop
.Lmenu_80120658:
/* 13E748 80120658 02602021 */  addu       $a0, $s3, $zero
/* 13E74C 8012065C 0C04633E */  jal        func_menu_80118CF8
/* 13E750 80120660 26A500F0 */   addiu     $a1, $s5, 0xF0
/* 13E754 80120664 08048177 */  j          .Lmenu_801205DC
/* 13E758 80120668 00000000 */   nop
.Lmenu_8012066C:
/* 13E75C 8012066C 00008821 */  addu       $s1, $zero, $zero
/* 13E760 80120670 02A09021 */  addu       $s2, $s5, $zero
.Lmenu_80120674:
/* 13E764 80120674 2A220006 */  slti       $v0, $s1, 0x6
/* 13E768 80120678 1040FFD8 */  beqz       $v0, .Lmenu_801205DC
/* 13E76C 8012067C 26310001 */   addiu     $s1, $s1, 0x1
/* 13E770 80120680 8E700010 */  lw         $s0, 0x10($s3)
/* 13E774 80120684 8E020028 */  lw         $v0, 0x28($s0)
/* 13E778 80120688 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E77C 8012068C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E780 80120690 0040F809 */  jalr       $v0
/* 13E784 80120694 02042021 */   addu      $a0, $s0, $a0
/* 13E788 80120698 8E640014 */  lw         $a0, 0x14($s3)
/* 13E78C 8012069C 0C016E91 */  jal        func_8005BA44
/* 13E790 801206A0 26050044 */   addiu     $a1, $s0, 0x44
/* 13E794 801206A4 AE420090 */  sw         $v0, 0x90($s2)
/* 13E798 801206A8 0804819D */  j          .Lmenu_80120674
/* 13E79C 801206AC 26520004 */   addiu     $s2, $s2, 0x4
.Lmenu_801206B0:
/* 13E7A0 801206B0 00149080 */  sll        $s2, $s4, 2
.Lmenu_801206B4:
/* 13E7A4 801206B4 2A220006 */  slti       $v0, $s1, 0x6
/* 13E7A8 801206B8 1040000E */  beqz       $v0, .Lmenu_801206F4
/* 13E7AC 801206BC 26310001 */   addiu     $s1, $s1, 0x1
/* 13E7B0 801206C0 8E700010 */  lw         $s0, 0x10($s3)
/* 13E7B4 801206C4 8E020028 */  lw         $v0, 0x28($s0)
/* 13E7B8 801206C8 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E7BC 801206CC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E7C0 801206D0 0040F809 */  jalr       $v0
/* 13E7C4 801206D4 02042021 */   addu      $a0, $s0, $a0
/* 13E7C8 801206D8 8E640014 */  lw         $a0, 0x14($s3)
/* 13E7CC 801206DC 0C016EC5 */  jal        func_8005BB14
/* 13E7D0 801206E0 26050044 */   addiu     $a1, $s0, 0x44
/* 13E7D4 801206E4 02B21821 */  addu       $v1, $s5, $s2
/* 13E7D8 801206E8 2652000C */  addiu      $s2, $s2, 0xC
/* 13E7DC 801206EC 080481AD */  j          .Lmenu_801206B4
/* 13E7E0 801206F0 AC6200A8 */   sw        $v0, 0xA8($v1)
.Lmenu_801206F4:
/* 13E7E4 801206F4 08048177 */  j          .Lmenu_801205DC
/* 13E7E8 801206F8 26940001 */   addiu     $s4, $s4, 0x1
.Lmenu_801206FC:
/* 13E7EC 801206FC 8E630010 */  lw         $v1, 0x10($s3)
/* 13E7F0 80120700 8C620028 */  lw         $v0, 0x28($v1)
/* 13E7F4 80120704 08048173 */  j          .Lmenu_801205CC
/* 13E7F8 80120708 24050013 */   addiu     $a1, $zero, 0x13
.Lmenu_8012070C:
/* 13E7FC 8012070C 12820007 */  beq        $s4, $v0, .Lmenu_8012072C
/* 13E800 80120710 24050013 */   addiu     $a1, $zero, 0x13
/* 13E804 80120714 8E630010 */  lw         $v1, 0x10($s3)
/* 13E808 80120718 8C620028 */  lw         $v0, 0x28($v1)
/* 13E80C 8012071C 84440098 */  lh         $a0, 0x98($v0)
/* 13E810 80120720 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E814 80120724 0040F809 */  jalr       $v0
/* 13E818 80120728 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8012072C:
/* 13E81C 8012072C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 13E820 80120730 8FB50024 */  lw         $s5, 0x24($sp)
/* 13E824 80120734 8FB40020 */  lw         $s4, 0x20($sp)
/* 13E828 80120738 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13E82C 8012073C 8FB20018 */  lw         $s2, 0x18($sp)
/* 13E830 80120740 8FB10014 */  lw         $s1, 0x14($sp)
/* 13E834 80120744 8FB00010 */  lw         $s0, 0x10($sp)
/* 13E838 80120748 03E00008 */  jr         $ra
/* 13E83C 8012074C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_80120750
/* 13E840 80120750 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13E844 80120754 AFB20018 */  sw         $s2, 0x18($sp)
/* 13E848 80120758 00809021 */  addu       $s2, $a0, $zero
/* 13E84C 8012075C AFBF0024 */  sw         $ra, 0x24($sp)
/* 13E850 80120760 AFB40020 */  sw         $s4, 0x20($sp)
/* 13E854 80120764 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13E858 80120768 AFB10014 */  sw         $s1, 0x14($sp)
/* 13E85C 8012076C AFB00010 */  sw         $s0, 0x10($sp)
/* 13E860 80120770 8E430010 */  lw         $v1, 0x10($s2)
/* 13E864 80120774 8C620028 */  lw         $v0, 0x28($v1)
/* 13E868 80120778 00A09821 */  addu       $s3, $a1, $zero
/* 13E86C 8012077C 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E870 80120780 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E874 80120784 0040F809 */  jalr       $v0
/* 13E878 80120788 00642021 */   addu      $a0, $v1, $a0
/* 13E87C 8012078C 24030005 */  addiu      $v1, $zero, 0x5
/* 13E880 80120790 10430007 */  beq        $v0, $v1, .Lmenu_801207B0
/* 13E884 80120794 24050005 */   addiu     $a1, $zero, 0x5
/* 13E888 80120798 8E430010 */  lw         $v1, 0x10($s2)
/* 13E88C 8012079C 8C620028 */  lw         $v0, 0x28($v1)
/* 13E890 801207A0 84440098 */  lh         $a0, 0x98($v0)
/* 13E894 801207A4 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E898 801207A8 0040F809 */  jalr       $v0
/* 13E89C 801207AC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_801207B0:
/* 13E8A0 801207B0 3C02800D */  lui        $v0, %hi(jtbl_menu_800D0E40)
/* 13E8A4 801207B4 24540E40 */  addiu      $s4, $v0, %lo(jtbl_menu_800D0E40)
.Lmenu_801207B8:
/* 13E8A8 801207B8 8E430010 */  lw         $v1, 0x10($s2)
/* 13E8AC 801207BC 8C620028 */  lw         $v0, 0x28($v1)
/* 13E8B0 801207C0 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E8B4 801207C4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E8B8 801207C8 0040F809 */  jalr       $v0
/* 13E8BC 801207CC 00642021 */   addu      $a0, $v1, $a0
/* 13E8C0 801207D0 24030006 */  addiu      $v1, $zero, 0x6
/* 13E8C4 801207D4 10430045 */  beq        $v0, $v1, .Lmenu_801208EC
/* 13E8C8 801207D8 00000000 */   nop
/* 13E8CC 801207DC 8E420010 */  lw         $v0, 0x10($s2)
/* 13E8D0 801207E0 8C420034 */  lw         $v0, 0x34($v0)
/* 13E8D4 801207E4 2443FFD8 */  addiu      $v1, $v0, -0x28
/* 13E8D8 801207E8 2C620013 */  sltiu      $v0, $v1, 0x13
/* 13E8DC 801207EC 10400036 */  beqz       $v0, Lmenu_801208C8
/* 13E8E0 801207F0 00031080 */   sll       $v0, $v1, 2
/* 13E8E4 801207F4 00541021 */  addu       $v0, $v0, $s4
/* 13E8E8 801207F8 8C420000 */  lw         $v0, 0x0($v0)
/* 13E8EC 801207FC 00400008 */  jr         $v0
/* 13E8F0 80120800 00000000 */   nop
glabel Lmenu_80120804
/* 13E8F4 80120804 02402021 */  addu       $a0, $s2, $zero
/* 13E8F8 80120808 0C0480A2 */  jal        func_menu_80120288
/* 13E8FC 8012080C 02602821 */   addu      $a1, $s3, $zero
/* 13E900 80120810 080481EE */  j          .Lmenu_801207B8
/* 13E904 80120814 00000000 */   nop
glabel Lmenu_80120818
/* 13E908 80120818 8E440010 */  lw         $a0, 0x10($s2)
/* 13E90C 8012081C 0C002680 */  jal        func_80009A00
/* 13E910 80120820 00000000 */   nop
/* 13E914 80120824 080481EE */  j          .Lmenu_801207B8
/* 13E918 80120828 AE6200AC */   sw        $v0, 0xAC($s3)
glabel Lmenu_8012082C
/* 13E91C 8012082C 8E6200AC */  lw         $v0, 0xAC($s3)
/* 13E920 80120830 1840FFE1 */  blez       $v0, .Lmenu_801207B8
/* 13E924 80120834 00008021 */   addu      $s0, $zero, $zero
/* 13E928 80120838 02608821 */  addu       $s1, $s3, $zero
.Lmenu_8012083C:
/* 13E92C 8012083C 8E440010 */  lw         $a0, 0x10($s2)
/* 13E930 80120840 0C002680 */  jal        func_80009A00
/* 13E934 80120844 26100001 */   addiu     $s0, $s0, 0x1
/* 13E938 80120848 AE2200B0 */  sw         $v0, 0xB0($s1)
/* 13E93C 8012084C 8E6200AC */  lw         $v0, 0xAC($s3)
/* 13E940 80120850 0202102A */  slt        $v0, $s0, $v0
/* 13E944 80120854 1440FFF9 */  bnez       $v0, .Lmenu_8012083C
/* 13E948 80120858 26310004 */   addiu     $s1, $s1, 0x4
/* 13E94C 8012085C 080481EE */  j          .Lmenu_801207B8
/* 13E950 80120860 00000000 */   nop
glabel Lmenu_80120864
/* 13E954 80120864 8E6200AC */  lw         $v0, 0xAC($s3)
/* 13E958 80120868 1840FFD3 */  blez       $v0, .Lmenu_801207B8
/* 13E95C 8012086C 00008021 */   addu      $s0, $zero, $zero
/* 13E960 80120870 241100D0 */  addiu      $s1, $zero, 0xD0
.Lmenu_80120874:
/* 13E964 80120874 02402021 */  addu       $a0, $s2, $zero
/* 13E968 80120878 0C04633E */  jal        func_menu_80118CF8
/* 13E96C 8012087C 02712821 */   addu      $a1, $s3, $s1
/* 13E970 80120880 8E6200AC */  lw         $v0, 0xAC($s3)
/* 13E974 80120884 26100001 */  addiu      $s0, $s0, 0x1
/* 13E978 80120888 0202102A */  slt        $v0, $s0, $v0
/* 13E97C 8012088C 1440FFF9 */  bnez       $v0, .Lmenu_80120874
/* 13E980 80120890 26310010 */   addiu     $s1, $s1, 0x10
/* 13E984 80120894 080481EE */  j          .Lmenu_801207B8
/* 13E988 80120898 00000000 */   nop
glabel Lmenu_8012089C
/* 13E98C 8012089C 8E500010 */  lw         $s0, 0x10($s2)
/* 13E990 801208A0 8E020028 */  lw         $v0, 0x28($s0)
/* 13E994 801208A4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13E998 801208A8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13E99C 801208AC 0040F809 */  jalr       $v0
/* 13E9A0 801208B0 02042021 */   addu      $a0, $s0, $a0
/* 13E9A4 801208B4 8E440014 */  lw         $a0, 0x14($s2)
/* 13E9A8 801208B8 0C016EC5 */  jal        func_8005BB14
/* 13E9AC 801208BC 26050044 */   addiu     $a1, $s0, 0x44
/* 13E9B0 801208C0 080481EE */  j          .Lmenu_801207B8
/* 13E9B4 801208C4 AE6200A8 */   sw        $v0, 0xA8($s3)
glabel Lmenu_801208C8
/* 13E9B8 801208C8 8E430010 */  lw         $v1, 0x10($s2)
/* 13E9BC 801208CC 8C620028 */  lw         $v0, 0x28($v1)
/* 13E9C0 801208D0 24050013 */  addiu      $a1, $zero, 0x13
/* 13E9C4 801208D4 84440098 */  lh         $a0, 0x98($v0)
/* 13E9C8 801208D8 8C42009C */  lw         $v0, 0x9C($v0)
/* 13E9CC 801208DC 0040F809 */  jalr       $v0
/* 13E9D0 801208E0 00642021 */   addu      $a0, $v1, $a0
/* 13E9D4 801208E4 080481EE */  j          .Lmenu_801207B8
/* 13E9D8 801208E8 00000000 */   nop
.Lmenu_801208EC:
/* 13E9DC 801208EC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 13E9E0 801208F0 8FB40020 */  lw         $s4, 0x20($sp)
/* 13E9E4 801208F4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13E9E8 801208F8 8FB20018 */  lw         $s2, 0x18($sp)
/* 13E9EC 801208FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 13E9F0 80120900 8FB00010 */  lw         $s0, 0x10($sp)
/* 13E9F4 80120904 03E00008 */  jr         $ra
/* 13E9F8 80120908 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8012090C
/* 13E9FC 8012090C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13EA00 80120910 AFB20018 */  sw         $s2, 0x18($sp)
/* 13EA04 80120914 00809021 */  addu       $s2, $a0, $zero
/* 13EA08 80120918 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13EA0C 8012091C AFB3001C */  sw         $s3, 0x1C($sp)
/* 13EA10 80120920 AFB10014 */  sw         $s1, 0x14($sp)
/* 13EA14 80120924 AFB00010 */  sw         $s0, 0x10($sp)
/* 13EA18 80120928 8E430010 */  lw         $v1, 0x10($s2)
/* 13EA1C 8012092C 8C620028 */  lw         $v0, 0x28($v1)
/* 13EA20 80120930 00A09821 */  addu       $s3, $a1, $zero
/* 13EA24 80120934 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EA28 80120938 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EA2C 8012093C 0040F809 */  jalr       $v0
/* 13EA30 80120940 00642021 */   addu      $a0, $v1, $a0
/* 13EA34 80120944 24030005 */  addiu      $v1, $zero, 0x5
/* 13EA38 80120948 10430007 */  beq        $v0, $v1, .Lmenu_80120968
/* 13EA3C 8012094C 24050005 */   addiu     $a1, $zero, 0x5
/* 13EA40 80120950 8E430010 */  lw         $v1, 0x10($s2)
/* 13EA44 80120954 8C620028 */  lw         $v0, 0x28($v1)
.Lmenu_80120958:
/* 13EA48 80120958 84440098 */  lh         $a0, 0x98($v0)
/* 13EA4C 8012095C 8C42009C */  lw         $v0, 0x9C($v0)
/* 13EA50 80120960 0040F809 */  jalr       $v0
/* 13EA54 80120964 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80120968:
/* 13EA58 80120968 8E430010 */  lw         $v1, 0x10($s2)
/* 13EA5C 8012096C 8C620028 */  lw         $v0, 0x28($v1)
/* 13EA60 80120970 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EA64 80120974 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EA68 80120978 0040F809 */  jalr       $v0
/* 13EA6C 8012097C 00642021 */   addu      $a0, $v1, $a0
/* 13EA70 80120980 24030006 */  addiu      $v1, $zero, 0x6
/* 13EA74 80120984 1043002B */  beq        $v0, $v1, .Lmenu_80120A34
/* 13EA78 80120988 2402002D */   addiu     $v0, $zero, 0x2D
/* 13EA7C 8012098C 8E440010 */  lw         $a0, 0x10($s2)
/* 13EA80 80120990 8C830034 */  lw         $v1, 0x34($a0)
/* 13EA84 80120994 10620017 */  beq        $v1, $v0, .Lmenu_801209F4
/* 13EA88 80120998 00602821 */   addu      $a1, $v1, $zero
/* 13EA8C 8012099C 2C62002E */  sltiu      $v0, $v1, 0x2E
/* 13EA90 801209A0 10400005 */  beqz       $v0, .Lmenu_801209B8
/* 13EA94 801209A4 2402002B */   addiu     $v0, $zero, 0x2B
/* 13EA98 801209A8 10620008 */  beq        $v1, $v0, .Lmenu_801209CC
/* 13EA9C 801209AC 00008821 */   addu      $s1, $zero, $zero
/* 13EAA0 801209B0 08048289 */  j          .Lmenu_80120A24
/* 13EAA4 801209B4 00000000 */   nop
.Lmenu_801209B8:
/* 13EAA8 801209B8 2402002F */  addiu      $v0, $zero, 0x2F
/* 13EAAC 801209BC 10A20011 */  beq        $a1, $v0, .Lmenu_80120A04
/* 13EAB0 801209C0 00000000 */   nop
/* 13EAB4 801209C4 08048289 */  j          .Lmenu_80120A24
/* 13EAB8 801209C8 00000000 */   nop
.Lmenu_801209CC:
/* 13EABC 801209CC 02608021 */  addu       $s0, $s3, $zero
.Lmenu_801209D0:
/* 13EAC0 801209D0 8E440010 */  lw         $a0, 0x10($s2)
/* 13EAC4 801209D4 0C002680 */  jal        func_80009A00
/* 13EAC8 801209D8 26310001 */   addiu     $s1, $s1, 0x1
/* 13EACC 801209DC AE020000 */  sw         $v0, 0x0($s0)
/* 13EAD0 801209E0 2A220003 */  slti       $v0, $s1, 0x3
/* 13EAD4 801209E4 1440FFFA */  bnez       $v0, .Lmenu_801209D0
/* 13EAD8 801209E8 26100004 */   addiu     $s0, $s0, 0x4
/* 13EADC 801209EC 0804825A */  j          .Lmenu_80120968
/* 13EAE0 801209F0 00000000 */   nop
.Lmenu_801209F4:
/* 13EAE4 801209F4 0C002680 */  jal        func_80009A00
/* 13EAE8 801209F8 00000000 */   nop
/* 13EAEC 801209FC 0804825A */  j          .Lmenu_80120968
/* 13EAF0 80120A00 AE62000C */   sw        $v0, 0xC($s3)
.Lmenu_80120A04:
/* 13EAF4 80120A04 0C002680 */  jal        func_80009A00
/* 13EAF8 80120A08 00000000 */   nop
/* 13EAFC 80120A0C AE620010 */  sw         $v0, 0x10($s3)
/* 13EB00 80120A10 8E440010 */  lw         $a0, 0x10($s2)
/* 13EB04 80120A14 0C002680 */  jal        func_80009A00
/* 13EB08 80120A18 00000000 */   nop
/* 13EB0C 80120A1C 0804825A */  j          .Lmenu_80120968
/* 13EB10 80120A20 AE620014 */   sw        $v0, 0x14($s3)
.Lmenu_80120A24:
/* 13EB14 80120A24 8E430010 */  lw         $v1, 0x10($s2)
/* 13EB18 80120A28 8C620028 */  lw         $v0, 0x28($v1)
/* 13EB1C 80120A2C 08048256 */  j          .Lmenu_80120958
/* 13EB20 80120A30 24050013 */   addiu     $a1, $zero, 0x13
.Lmenu_80120A34:
/* 13EB24 80120A34 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13EB28 80120A38 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13EB2C 80120A3C 8FB20018 */  lw         $s2, 0x18($sp)
/* 13EB30 80120A40 8FB10014 */  lw         $s1, 0x14($sp)
/* 13EB34 80120A44 8FB00010 */  lw         $s0, 0x10($sp)
/* 13EB38 80120A48 03E00008 */  jr         $ra
/* 13EB3C 80120A4C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_80120A50
/* 13EB40 80120A50 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13EB44 80120A54 AFB20018 */  sw         $s2, 0x18($sp)
/* 13EB48 80120A58 00809021 */  addu       $s2, $a0, $zero
/* 13EB4C 80120A5C AFB3001C */  sw         $s3, 0x1C($sp)
/* 13EB50 80120A60 00A09821 */  addu       $s3, $a1, $zero
/* 13EB54 80120A64 AFB60028 */  sw         $s6, 0x28($sp)
/* 13EB58 80120A68 0000B021 */  addu       $s6, $zero, $zero
/* 13EB5C 80120A6C AFBF002C */  sw         $ra, 0x2C($sp)
/* 13EB60 80120A70 AFB50024 */  sw         $s5, 0x24($sp)
/* 13EB64 80120A74 AFB40020 */  sw         $s4, 0x20($sp)
/* 13EB68 80120A78 AFB10014 */  sw         $s1, 0x14($sp)
/* 13EB6C 80120A7C AFB00010 */  sw         $s0, 0x10($sp)
/* 13EB70 80120A80 8E430010 */  lw         $v1, 0x10($s2)
/* 13EB74 80120A84 02C0A021 */  addu       $s4, $s6, $zero
/* 13EB78 80120A88 8C620028 */  lw         $v0, 0x28($v1)
/* 13EB7C 80120A8C 02C0A821 */  addu       $s5, $s6, $zero
/* 13EB80 80120A90 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EB84 80120A94 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EB88 80120A98 0040F809 */  jalr       $v0
/* 13EB8C 80120A9C 00642021 */   addu      $a0, $v1, $a0
/* 13EB90 80120AA0 24030005 */  addiu      $v1, $zero, 0x5
/* 13EB94 80120AA4 10430007 */  beq        $v0, $v1, .Lmenu_80120AC4
/* 13EB98 80120AA8 24050005 */   addiu     $a1, $zero, 0x5
/* 13EB9C 80120AAC 8E430010 */  lw         $v1, 0x10($s2)
/* 13EBA0 80120AB0 8C620028 */  lw         $v0, 0x28($v1)
/* 13EBA4 80120AB4 84440098 */  lh         $a0, 0x98($v0)
/* 13EBA8 80120AB8 8C42009C */  lw         $v0, 0x9C($v0)
/* 13EBAC 80120ABC 0040F809 */  jalr       $v0
/* 13EBB0 80120AC0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80120AC4:
/* 13EBB4 80120AC4 2664009C */  addiu      $a0, $s3, 0x9C
/* 13EBB8 80120AC8 240500FF */  addiu      $a1, $zero, 0xFF
/* 13EBBC 80120ACC 0C000697 */  jal        func_80001A5C
/* 13EBC0 80120AD0 24060010 */   addiu     $a2, $zero, 0x10
/* 13EBC4 80120AD4 266400AC */  addiu      $a0, $s3, 0xAC
/* 13EBC8 80120AD8 240500FF */  addiu      $a1, $zero, 0xFF
/* 13EBCC 80120ADC 0C000697 */  jal        func_80001A5C
/* 13EBD0 80120AE0 24060010 */   addiu     $a2, $zero, 0x10
.Lmenu_80120AE4:
/* 13EBD4 80120AE4 8E430010 */  lw         $v1, 0x10($s2)
/* 13EBD8 80120AE8 8C620028 */  lw         $v0, 0x28($v1)
/* 13EBDC 80120AEC 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EBE0 80120AF0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EBE4 80120AF4 0040F809 */  jalr       $v0
/* 13EBE8 80120AF8 00642021 */   addu      $a0, $v1, $a0
/* 13EBEC 80120AFC 24030006 */  addiu      $v1, $zero, 0x6
/* 13EBF0 80120B00 10430052 */  beq        $v0, $v1, .Lmenu_80120C4C
/* 13EBF4 80120B04 24020034 */   addiu     $v0, $zero, 0x34
/* 13EBF8 80120B08 8E500010 */  lw         $s0, 0x10($s2)
/* 13EBFC 80120B0C 8E030034 */  lw         $v1, 0x34($s0)
/* 13EC00 80120B10 10620027 */  beq        $v1, $v0, .Lmenu_80120BB0
/* 13EC04 80120B14 00602021 */   addu      $a0, $v1, $zero
/* 13EC08 80120B18 2C620035 */  sltiu      $v0, $v1, 0x35
/* 13EC0C 80120B1C 10400005 */  beqz       $v0, .Lmenu_80120B34
/* 13EC10 80120B20 2402002A */   addiu     $v0, $zero, 0x2A
/* 13EC14 80120B24 1062002D */  beq        $v1, $v0, .Lmenu_80120BDC
/* 13EC18 80120B28 00008021 */   addu      $s0, $zero, $zero
/* 13EC1C 80120B2C 0804830A */  j          .Lmenu_80120C28
/* 13EC20 80120B30 00000000 */   nop
.Lmenu_80120B34:
/* 13EC24 80120B34 24020035 */  addiu      $v0, $zero, 0x35
/* 13EC28 80120B38 10820008 */  beq        $a0, $v0, .Lmenu_80120B5C
/* 13EC2C 80120B3C 2402003A */   addiu     $v0, $zero, 0x3A
/* 13EC30 80120B40 14820039 */  bne        $a0, $v0, .Lmenu_80120C28
/* 13EC34 80120B44 00000000 */   nop
/* 13EC38 80120B48 02402021 */  addu       $a0, $s2, $zero
/* 13EC3C 80120B4C 0C0480A2 */  jal        func_menu_80120288
/* 13EC40 80120B50 02602821 */   addu      $a1, $s3, $zero
/* 13EC44 80120B54 080482B9 */  j          .Lmenu_80120AE4
/* 13EC48 80120B58 26D60001 */   addiu     $s6, $s6, 0x1
.Lmenu_80120B5C:
/* 13EC4C 80120B5C 8E020028 */  lw         $v0, 0x28($s0)
/* 13EC50 80120B60 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EC54 80120B64 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EC58 80120B68 0040F809 */  jalr       $v0
/* 13EC5C 80120B6C 02042021 */   addu      $a0, $s0, $a0
/* 13EC60 80120B70 02402021 */  addu       $a0, $s2, $zero
/* 13EC64 80120B74 0C0486CC */  jal        func_menu_80121B30
/* 13EC68 80120B78 26050044 */   addiu     $a1, $s0, 0x44
/* 13EC6C 80120B7C AE620090 */  sw         $v0, 0x90($s3)
/* 13EC70 80120B80 8E500010 */  lw         $s0, 0x10($s2)
/* 13EC74 80120B84 8E020028 */  lw         $v0, 0x28($s0)
/* 13EC78 80120B88 26B50001 */  addiu      $s5, $s5, 0x1
/* 13EC7C 80120B8C 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EC80 80120B90 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EC84 80120B94 0040F809 */  jalr       $v0
/* 13EC88 80120B98 02042021 */   addu      $a0, $s0, $a0
/* 13EC8C 80120B9C 02402021 */  addu       $a0, $s2, $zero
/* 13EC90 80120BA0 0C0486CC */  jal        func_menu_80121B30
/* 13EC94 80120BA4 26050044 */   addiu     $a1, $s0, 0x44
/* 13EC98 80120BA8 080482B9 */  j          .Lmenu_80120AE4
/* 13EC9C 80120BAC AE620094 */   sw        $v0, 0x94($s3)
.Lmenu_80120BB0:
/* 13ECA0 80120BB0 8E020028 */  lw         $v0, 0x28($s0)
/* 13ECA4 80120BB4 26940001 */  addiu      $s4, $s4, 0x1
/* 13ECA8 80120BB8 844400A0 */  lh         $a0, 0xA0($v0)
/* 13ECAC 80120BBC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13ECB0 80120BC0 0040F809 */  jalr       $v0
/* 13ECB4 80120BC4 02042021 */   addu      $a0, $s0, $a0
/* 13ECB8 80120BC8 02402021 */  addu       $a0, $s2, $zero
/* 13ECBC 80120BCC 0C0486CC */  jal        func_menu_80121B30
/* 13ECC0 80120BD0 26050044 */   addiu     $a1, $s0, 0x44
/* 13ECC4 80120BD4 080482B9 */  j          .Lmenu_80120AE4
/* 13ECC8 80120BD8 AE620098 */   sw        $v0, 0x98($s3)
.Lmenu_80120BDC:
/* 13ECCC 80120BDC 2411009C */  addiu      $s1, $zero, 0x9C
.Lmenu_80120BE0:
/* 13ECD0 80120BE0 02402021 */  addu       $a0, $s2, $zero
/* 13ECD4 80120BE4 0C046358 */  jal        func_menu_80118D60
/* 13ECD8 80120BE8 02712821 */   addu      $a1, $s3, $s1
/* 13ECDC 80120BEC 26100001 */  addiu      $s0, $s0, 0x1
/* 13ECE0 80120BF0 2A020004 */  slti       $v0, $s0, 0x4
/* 13ECE4 80120BF4 1440FFFA */  bnez       $v0, .Lmenu_80120BE0
/* 13ECE8 80120BF8 26310004 */   addiu     $s1, $s1, 0x4
/* 13ECEC 80120BFC 00008021 */  addu       $s0, $zero, $zero
/* 13ECF0 80120C00 241100AC */  addiu      $s1, $zero, 0xAC
.Lmenu_80120C04:
/* 13ECF4 80120C04 02402021 */  addu       $a0, $s2, $zero
/* 13ECF8 80120C08 0C046358 */  jal        func_menu_80118D60
/* 13ECFC 80120C0C 02712821 */   addu      $a1, $s3, $s1
/* 13ED00 80120C10 26100001 */  addiu      $s0, $s0, 0x1
/* 13ED04 80120C14 2A020004 */  slti       $v0, $s0, 0x4
/* 13ED08 80120C18 1440FFFA */  bnez       $v0, .Lmenu_80120C04
/* 13ED0C 80120C1C 26310004 */   addiu     $s1, $s1, 0x4
/* 13ED10 80120C20 080482B9 */  j          .Lmenu_80120AE4
/* 13ED14 80120C24 00000000 */   nop
.Lmenu_80120C28:
/* 13ED18 80120C28 8E430010 */  lw         $v1, 0x10($s2)
/* 13ED1C 80120C2C 8C620028 */  lw         $v0, 0x28($v1)
/* 13ED20 80120C30 24050013 */  addiu      $a1, $zero, 0x13
/* 13ED24 80120C34 84440098 */  lh         $a0, 0x98($v0)
/* 13ED28 80120C38 8C42009C */  lw         $v0, 0x9C($v0)
/* 13ED2C 80120C3C 0040F809 */  jalr       $v0
/* 13ED30 80120C40 00642021 */   addu      $a0, $v1, $a0
/* 13ED34 80120C44 080482B9 */  j          .Lmenu_80120AE4
/* 13ED38 80120C48 00000000 */   nop
.Lmenu_80120C4C:
/* 13ED3C 80120C4C 328200FF */  andi       $v0, $s4, 0xFF
/* 13ED40 80120C50 10400005 */  beqz       $v0, .Lmenu_80120C68
/* 13ED44 80120C54 32C200FF */   andi      $v0, $s6, 0xFF
/* 13ED48 80120C58 10400003 */  beqz       $v0, .Lmenu_80120C68
/* 13ED4C 80120C5C 32A200FF */   andi      $v0, $s5, 0xFF
/* 13ED50 80120C60 14400008 */  bnez       $v0, .Lmenu_80120C84
/* 13ED54 80120C64 00000000 */   nop
.Lmenu_80120C68:
/* 13ED58 80120C68 8E430010 */  lw         $v1, 0x10($s2)
/* 13ED5C 80120C6C 8C620028 */  lw         $v0, 0x28($v1)
/* 13ED60 80120C70 24050013 */  addiu      $a1, $zero, 0x13
/* 13ED64 80120C74 84440098 */  lh         $a0, 0x98($v0)
/* 13ED68 80120C78 8C42009C */  lw         $v0, 0x9C($v0)
/* 13ED6C 80120C7C 0040F809 */  jalr       $v0
/* 13ED70 80120C80 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80120C84:
/* 13ED74 80120C84 8FBF002C */  lw         $ra, 0x2C($sp)
/* 13ED78 80120C88 8FB60028 */  lw         $s6, 0x28($sp)
/* 13ED7C 80120C8C 8FB50024 */  lw         $s5, 0x24($sp)
/* 13ED80 80120C90 8FB40020 */  lw         $s4, 0x20($sp)
/* 13ED84 80120C94 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13ED88 80120C98 8FB20018 */  lw         $s2, 0x18($sp)
/* 13ED8C 80120C9C 8FB10014 */  lw         $s1, 0x14($sp)
/* 13ED90 80120CA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 13ED94 80120CA4 03E00008 */  jr         $ra
/* 13ED98 80120CA8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_80120CAC
/* 13ED9C 80120CAC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13EDA0 80120CB0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13EDA4 80120CB4 00809821 */  addu       $s3, $a0, $zero
/* 13EDA8 80120CB8 AFB40020 */  sw         $s4, 0x20($sp)
/* 13EDAC 80120CBC 00A0A021 */  addu       $s4, $a1, $zero
/* 13EDB0 80120CC0 AFB7002C */  sw         $s7, 0x2C($sp)
/* 13EDB4 80120CC4 0000B821 */  addu       $s7, $zero, $zero
/* 13EDB8 80120CC8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 13EDBC 80120CCC AFBE0030 */  sw         $fp, 0x30($sp)
/* 13EDC0 80120CD0 AFB60028 */  sw         $s6, 0x28($sp)
/* 13EDC4 80120CD4 AFB50024 */  sw         $s5, 0x24($sp)
/* 13EDC8 80120CD8 AFB20018 */  sw         $s2, 0x18($sp)
/* 13EDCC 80120CDC AFB10014 */  sw         $s1, 0x14($sp)
/* 13EDD0 80120CE0 AFB00010 */  sw         $s0, 0x10($sp)
/* 13EDD4 80120CE4 8E630010 */  lw         $v1, 0x10($s3)
/* 13EDD8 80120CE8 02E0A821 */  addu       $s5, $s7, $zero
/* 13EDDC 80120CEC 8C620028 */  lw         $v0, 0x28($v1)
/* 13EDE0 80120CF0 02E0B021 */  addu       $s6, $s7, $zero
/* 13EDE4 80120CF4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EDE8 80120CF8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EDEC 80120CFC 0040F809 */  jalr       $v0
/* 13EDF0 80120D00 00642021 */   addu      $a0, $v1, $a0
/* 13EDF4 80120D04 24030005 */  addiu      $v1, $zero, 0x5
/* 13EDF8 80120D08 10430007 */  beq        $v0, $v1, .Lmenu_80120D28
/* 13EDFC 80120D0C 24050005 */   addiu     $a1, $zero, 0x5
/* 13EE00 80120D10 8E630010 */  lw         $v1, 0x10($s3)
/* 13EE04 80120D14 8C620028 */  lw         $v0, 0x28($v1)
/* 13EE08 80120D18 84440098 */  lh         $a0, 0x98($v0)
/* 13EE0C 80120D1C 8C42009C */  lw         $v0, 0x9C($v0)
/* 13EE10 80120D20 0040F809 */  jalr       $v0
/* 13EE14 80120D24 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80120D28:
/* 13EE18 80120D28 3C02800D */  lui        $v0, %hi(jtbl_menu_800D0E90)
/* 13EE1C 80120D2C 245E0E90 */  addiu      $fp, $v0, %lo(jtbl_menu_800D0E90)
.Lmenu_80120D30:
/* 13EE20 80120D30 8E630010 */  lw         $v1, 0x10($s3)
/* 13EE24 80120D34 8C620028 */  lw         $v0, 0x28($v1)
/* 13EE28 80120D38 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EE2C 80120D3C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EE30 80120D40 0040F809 */  jalr       $v0
/* 13EE34 80120D44 00642021 */   addu      $a0, $v1, $a0
/* 13EE38 80120D48 24030006 */  addiu      $v1, $zero, 0x6
/* 13EE3C 80120D4C 1043005F */  beq        $v0, $v1, .Lmenu_80120ECC
/* 13EE40 80120D50 32A200FF */   andi      $v0, $s5, 0xFF
/* 13EE44 80120D54 8E620010 */  lw         $v0, 0x10($s3)
/* 13EE48 80120D58 8C420034 */  lw         $v0, 0x34($v0)
/* 13EE4C 80120D5C 2443FFD8 */  addiu      $v1, $v0, -0x28
/* 13EE50 80120D60 2C620013 */  sltiu      $v0, $v1, 0x13
/* 13EE54 80120D64 10400050 */  beqz       $v0, Lmenu_80120EA8
/* 13EE58 80120D68 00031080 */   sll       $v0, $v1, 2
/* 13EE5C 80120D6C 005E1021 */  addu       $v0, $v0, $fp
/* 13EE60 80120D70 8C420000 */  lw         $v0, 0x0($v0)
/* 13EE64 80120D74 00400008 */  jr         $v0
/* 13EE68 80120D78 00000000 */   nop
glabel Lmenu_80120D7C
/* 13EE6C 80120D7C 02602021 */  addu       $a0, $s3, $zero
/* 13EE70 80120D80 0C0480A2 */  jal        func_menu_80120288
/* 13EE74 80120D84 02802821 */   addu      $a1, $s4, $zero
/* 13EE78 80120D88 0804834C */  j          .Lmenu_80120D30
/* 13EE7C 80120D8C 26F70001 */   addiu     $s7, $s7, 0x1
glabel Lmenu_80120D90
/* 13EE80 80120D90 8E700010 */  lw         $s0, 0x10($s3)
/* 13EE84 80120D94 8E020028 */  lw         $v0, 0x28($s0)
/* 13EE88 80120D98 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EE8C 80120D9C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EE90 80120DA0 0040F809 */  jalr       $v0
/* 13EE94 80120DA4 02042021 */   addu      $a0, $s0, $a0
/* 13EE98 80120DA8 02602021 */  addu       $a0, $s3, $zero
/* 13EE9C 80120DAC 0C0486CC */  jal        func_menu_80121B30
/* 13EEA0 80120DB0 26050044 */   addiu     $a1, $s0, 0x44
/* 13EEA4 80120DB4 AE820090 */  sw         $v0, 0x90($s4)
/* 13EEA8 80120DB8 8E700010 */  lw         $s0, 0x10($s3)
/* 13EEAC 80120DBC 8E020028 */  lw         $v0, 0x28($s0)
/* 13EEB0 80120DC0 26D60001 */  addiu      $s6, $s6, 0x1
/* 13EEB4 80120DC4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EEB8 80120DC8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EEBC 80120DCC 0040F809 */  jalr       $v0
/* 13EEC0 80120DD0 02042021 */   addu      $a0, $s0, $a0
/* 13EEC4 80120DD4 02602021 */  addu       $a0, $s3, $zero
/* 13EEC8 80120DD8 0C0486CC */  jal        func_menu_80121B30
/* 13EECC 80120DDC 26050044 */   addiu     $a1, $s0, 0x44
/* 13EED0 80120DE0 0804834C */  j          .Lmenu_80120D30
/* 13EED4 80120DE4 AE820094 */   sw        $v0, 0x94($s4)
glabel Lmenu_80120DE8
/* 13EED8 80120DE8 8E700010 */  lw         $s0, 0x10($s3)
/* 13EEDC 80120DEC 8E020028 */  lw         $v0, 0x28($s0)
/* 13EEE0 80120DF0 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EEE4 80120DF4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EEE8 80120DF8 0040F809 */  jalr       $v0
/* 13EEEC 80120DFC 02042021 */   addu      $a0, $s0, $a0
/* 13EEF0 80120E00 02602021 */  addu       $a0, $s3, $zero
/* 13EEF4 80120E04 0C0486CC */  jal        func_menu_80121B30
/* 13EEF8 80120E08 26050044 */   addiu     $a1, $s0, 0x44
/* 13EEFC 80120E0C AE82009C */  sw         $v0, 0x9C($s4)
/* 13EF00 80120E10 8E700010 */  lw         $s0, 0x10($s3)
/* 13EF04 80120E14 8E020028 */  lw         $v0, 0x28($s0)
/* 13EF08 80120E18 26B50001 */  addiu      $s5, $s5, 0x1
/* 13EF0C 80120E1C 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EF10 80120E20 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EF14 80120E24 0040F809 */  jalr       $v0
/* 13EF18 80120E28 02042021 */   addu      $a0, $s0, $a0
/* 13EF1C 80120E2C 02602021 */  addu       $a0, $s3, $zero
/* 13EF20 80120E30 0C0486CC */  jal        func_menu_80121B30
/* 13EF24 80120E34 26050044 */   addiu     $a1, $s0, 0x44
/* 13EF28 80120E38 0804834C */  j          .Lmenu_80120D30
/* 13EF2C 80120E3C AE820098 */   sw        $v0, 0x98($s4)
glabel Lmenu_80120E40
/* 13EF30 80120E40 00009021 */  addu       $s2, $zero, $zero
/* 13EF34 80120E44 02808821 */  addu       $s1, $s4, $zero
.Lmenu_80120E48:
/* 13EF38 80120E48 2A420006 */  slti       $v0, $s2, 0x6
/* 13EF3C 80120E4C 1040FFB8 */  beqz       $v0, .Lmenu_80120D30
/* 13EF40 80120E50 26520001 */   addiu     $s2, $s2, 0x1
/* 13EF44 80120E54 8E700010 */  lw         $s0, 0x10($s3)
/* 13EF48 80120E58 8E020028 */  lw         $v0, 0x28($s0)
/* 13EF4C 80120E5C 844400A0 */  lh         $a0, 0xA0($v0)
/* 13EF50 80120E60 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13EF54 80120E64 0040F809 */  jalr       $v0
/* 13EF58 80120E68 02042021 */   addu      $a0, $s0, $a0
/* 13EF5C 80120E6C 8E640014 */  lw         $a0, 0x14($s3)
/* 13EF60 80120E70 0C016EC5 */  jal        func_8005BB14
/* 13EF64 80120E74 26050044 */   addiu     $a1, $s0, 0x44
/* 13EF68 80120E78 AE2200A0 */  sw         $v0, 0xA0($s1)
/* 13EF6C 80120E7C 08048392 */  j          .Lmenu_80120E48
/* 13EF70 80120E80 26310004 */   addiu     $s1, $s1, 0x4
glabel Lmenu_80120E84
/* 13EF74 80120E84 8E640010 */  lw         $a0, 0x10($s3)
/* 13EF78 80120E88 0C002680 */  jal        func_80009A00
/* 13EF7C 80120E8C 00000000 */   nop
/* 13EF80 80120E90 A68200B8 */  sh         $v0, 0xB8($s4)
/* 13EF84 80120E94 8E640010 */  lw         $a0, 0x10($s3)
/* 13EF88 80120E98 0C002680 */  jal        func_80009A00
/* 13EF8C 80120E9C 00000000 */   nop
/* 13EF90 80120EA0 0804834C */  j          .Lmenu_80120D30
/* 13EF94 80120EA4 A68200BA */   sh        $v0, 0xBA($s4)
glabel Lmenu_80120EA8
/* 13EF98 80120EA8 8E630010 */  lw         $v1, 0x10($s3)
/* 13EF9C 80120EAC 8C620028 */  lw         $v0, 0x28($v1)
/* 13EFA0 80120EB0 24050013 */  addiu      $a1, $zero, 0x13
/* 13EFA4 80120EB4 84440098 */  lh         $a0, 0x98($v0)
/* 13EFA8 80120EB8 8C42009C */  lw         $v0, 0x9C($v0)
/* 13EFAC 80120EBC 0040F809 */  jalr       $v0
/* 13EFB0 80120EC0 00642021 */   addu      $a0, $v1, $a0
/* 13EFB4 80120EC4 0804834C */  j          .Lmenu_80120D30
/* 13EFB8 80120EC8 00000000 */   nop
.Lmenu_80120ECC:
/* 13EFBC 80120ECC 10400005 */  beqz       $v0, .Lmenu_80120EE4
/* 13EFC0 80120ED0 32E200FF */   andi      $v0, $s7, 0xFF
/* 13EFC4 80120ED4 10400003 */  beqz       $v0, .Lmenu_80120EE4
/* 13EFC8 80120ED8 32C200FF */   andi      $v0, $s6, 0xFF
/* 13EFCC 80120EDC 14400008 */  bnez       $v0, .Lmenu_80120F00
/* 13EFD0 80120EE0 00000000 */   nop
.Lmenu_80120EE4:
/* 13EFD4 80120EE4 8E630010 */  lw         $v1, 0x10($s3)
/* 13EFD8 80120EE8 8C620028 */  lw         $v0, 0x28($v1)
/* 13EFDC 80120EEC 24050013 */  addiu      $a1, $zero, 0x13
/* 13EFE0 80120EF0 84440098 */  lh         $a0, 0x98($v0)
/* 13EFE4 80120EF4 8C42009C */  lw         $v0, 0x9C($v0)
/* 13EFE8 80120EF8 0040F809 */  jalr       $v0
/* 13EFEC 80120EFC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80120F00:
/* 13EFF0 80120F00 8FBF0034 */  lw         $ra, 0x34($sp)
/* 13EFF4 80120F04 8FBE0030 */  lw         $fp, 0x30($sp)
/* 13EFF8 80120F08 8FB7002C */  lw         $s7, 0x2C($sp)
/* 13EFFC 80120F0C 8FB60028 */  lw         $s6, 0x28($sp)
/* 13F000 80120F10 8FB50024 */  lw         $s5, 0x24($sp)
/* 13F004 80120F14 8FB40020 */  lw         $s4, 0x20($sp)
/* 13F008 80120F18 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13F00C 80120F1C 8FB20018 */  lw         $s2, 0x18($sp)
/* 13F010 80120F20 8FB10014 */  lw         $s1, 0x14($sp)
/* 13F014 80120F24 8FB00010 */  lw         $s0, 0x10($sp)
/* 13F018 80120F28 03E00008 */  jr         $ra
/* 13F01C 80120F2C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80120F30
/* 13F020 80120F30 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13F024 80120F34 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13F028 80120F38 00808821 */  addu       $s1, $a0, $zero
/* 13F02C 80120F3C AFBF0030 */  sw         $ra, 0x30($sp)
/* 13F030 80120F40 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13F034 80120F44 AFB40028 */  sw         $s4, 0x28($sp)
/* 13F038 80120F48 AFB30024 */  sw         $s3, 0x24($sp)
/* 13F03C 80120F4C AFB20020 */  sw         $s2, 0x20($sp)
/* 13F040 80120F50 0C0462FF */  jal        func_menu_80118BFC
/* 13F044 80120F54 AFB00018 */   sw        $s0, 0x18($sp)
/* 13F048 80120F58 00009821 */  addu       $s3, $zero, $zero
/* 13F04C 80120F5C 24150032 */  addiu      $s5, $zero, 0x32
/* 13F050 80120F60 02609021 */  addu       $s2, $s3, $zero
/* 13F054 80120F64 3C038012 */  lui        $v1, %hi(D_menu_80127170)
/* 13F058 80120F68 8C647170 */  lw         $a0, %lo(D_menu_80127170)($v1)
/* 13F05C 80120F6C 0C01FB65 */  jal        func_8007ED94
/* 13F060 80120F70 0040A021 */   addu      $s4, $v0, $zero
/* 13F064 80120F74 00148040 */  sll        $s0, $s4, 1
/* 13F068 80120F78 02148021 */  addu       $s0, $s0, $s4
/* 13F06C 80120F7C 00108080 */  sll        $s0, $s0, 2
/* 13F070 80120F80 0C00943C */  jal        func_800250F0
/* 13F074 80120F84 02002021 */   addu      $a0, $s0, $zero
/* 13F078 80120F88 0C01FB72 */  jal        func_8007EDC8
/* 13F07C 80120F8C AE220024 */   sw        $v0, 0x24($s1)
/* 13F080 80120F90 02602821 */  addu       $a1, $s3, $zero
/* 13F084 80120F94 8E240024 */  lw         $a0, 0x24($s1)
/* 13F088 80120F98 0C000697 */  jal        func_80001A5C
/* 13F08C 80120F9C 02003021 */   addu      $a2, $s0, $zero
.Lmenu_80120FA0:
/* 13F090 80120FA0 0274102A */  slt        $v0, $s3, $s4
/* 13F094 80120FA4 10400025 */  beqz       $v0, .Lmenu_8012103C
/* 13F098 80120FA8 00000000 */   nop
/* 13F09C 80120FAC 8E230010 */  lw         $v1, 0x10($s1)
/* 13F0A0 80120FB0 8C620028 */  lw         $v0, 0x28($v1)
/* 13F0A4 80120FB4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F0A8 80120FB8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F0AC 80120FBC 0040F809 */  jalr       $v0
/* 13F0B0 80120FC0 00642021 */   addu      $a0, $v1, $a0
/* 13F0B4 80120FC4 10550007 */  beq        $v0, $s5, .Lmenu_80120FE4
/* 13F0B8 80120FC8 24050013 */   addiu     $a1, $zero, 0x13
/* 13F0BC 80120FCC 8E230010 */  lw         $v1, 0x10($s1)
/* 13F0C0 80120FD0 8C620028 */  lw         $v0, 0x28($v1)
/* 13F0C4 80120FD4 84440098 */  lh         $a0, 0x98($v0)
/* 13F0C8 80120FD8 8C42009C */  lw         $v0, 0x9C($v0)
/* 13F0CC 80120FDC 0040F809 */  jalr       $v0
/* 13F0D0 80120FE0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80120FE4:
/* 13F0D4 80120FE4 8E300010 */  lw         $s0, 0x10($s1)
/* 13F0D8 80120FE8 8E020028 */  lw         $v0, 0x28($s0)
/* 13F0DC 80120FEC 26730001 */  addiu      $s3, $s3, 0x1
/* 13F0E0 80120FF0 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F0E4 80120FF4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F0E8 80120FF8 0040F809 */  jalr       $v0
/* 13F0EC 80120FFC 02042021 */   addu      $a0, $s0, $a0
/* 13F0F0 80121000 27A40010 */  addiu      $a0, $sp, 0x10
/* 13F0F4 80121004 26050044 */  addiu      $a1, $s0, 0x44
/* 13F0F8 80121008 0C000708 */  jal        func_80001C20
/* 13F0FC 8012100C 24060008 */   addiu     $a2, $zero, 0x8
/* 13F100 80121010 02202021 */  addu       $a0, $s1, $zero
/* 13F104 80121014 8E260024 */  lw         $a2, 0x24($s1)
/* 13F108 80121018 27A50010 */  addiu      $a1, $sp, 0x10
/* 13F10C 8012101C 0C0163C7 */  jal        func_80058F1C
/* 13F110 80121020 00D23021 */   addu      $a2, $a2, $s2
/* 13F114 80121024 8E250024 */  lw         $a1, 0x24($s1)
/* 13F118 80121028 02202021 */  addu       $a0, $s1, $zero
/* 13F11C 8012102C 0C047FA6 */  jal        func_menu_8011FE98
/* 13F120 80121030 00B22821 */   addu      $a1, $a1, $s2
/* 13F124 80121034 080483E8 */  j          .Lmenu_80120FA0
/* 13F128 80121038 2652000C */   addiu     $s2, $s2, 0xC
.Lmenu_8012103C:
/* 13F12C 8012103C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13F130 80121040 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13F134 80121044 8FB40028 */  lw         $s4, 0x28($sp)
/* 13F138 80121048 8FB30024 */  lw         $s3, 0x24($sp)
/* 13F13C 8012104C 8FB20020 */  lw         $s2, 0x20($sp)
/* 13F140 80121050 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13F144 80121054 8FB00018 */  lw         $s0, 0x18($sp)
/* 13F148 80121058 03E00008 */  jr         $ra
/* 13F14C 8012105C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80121060
/* 13F150 80121060 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13F154 80121064 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13F158 80121068 00808821 */  addu       $s1, $a0, $zero
/* 13F15C 8012106C AFBF0030 */  sw         $ra, 0x30($sp)
/* 13F160 80121070 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13F164 80121074 AFB40028 */  sw         $s4, 0x28($sp)
/* 13F168 80121078 AFB30024 */  sw         $s3, 0x24($sp)
/* 13F16C 8012107C AFB20020 */  sw         $s2, 0x20($sp)
/* 13F170 80121080 0C0462FF */  jal        func_menu_80118BFC
/* 13F174 80121084 AFB00018 */   sw        $s0, 0x18($sp)
/* 13F178 80121088 00009821 */  addu       $s3, $zero, $zero
/* 13F17C 8012108C 24150033 */  addiu      $s5, $zero, 0x33
/* 13F180 80121090 02609021 */  addu       $s2, $s3, $zero
/* 13F184 80121094 3C038012 */  lui        $v1, %hi(D_menu_80127170)
/* 13F188 80121098 8C647170 */  lw         $a0, %lo(D_menu_80127170)($v1)
/* 13F18C 8012109C 0C01FB65 */  jal        func_8007ED94
/* 13F190 801210A0 0040A021 */   addu      $s4, $v0, $zero
/* 13F194 801210A4 00148080 */  sll        $s0, $s4, 2
/* 13F198 801210A8 02148021 */  addu       $s0, $s0, $s4
/* 13F19C 801210AC 00108080 */  sll        $s0, $s0, 2
/* 13F1A0 801210B0 0C00943C */  jal        func_800250F0
/* 13F1A4 801210B4 02002021 */   addu      $a0, $s0, $zero
/* 13F1A8 801210B8 0C01FB72 */  jal        func_8007EDC8
/* 13F1AC 801210BC AE220028 */   sw        $v0, 0x28($s1)
/* 13F1B0 801210C0 02602821 */  addu       $a1, $s3, $zero
/* 13F1B4 801210C4 8E240028 */  lw         $a0, 0x28($s1)
/* 13F1B8 801210C8 0C000697 */  jal        func_80001A5C
/* 13F1BC 801210CC 02003021 */   addu      $a2, $s0, $zero
.Lmenu_801210D0:
/* 13F1C0 801210D0 0274102A */  slt        $v0, $s3, $s4
/* 13F1C4 801210D4 10400025 */  beqz       $v0, .Lmenu_8012116C
/* 13F1C8 801210D8 00000000 */   nop
/* 13F1CC 801210DC 8E230010 */  lw         $v1, 0x10($s1)
/* 13F1D0 801210E0 8C620028 */  lw         $v0, 0x28($v1)
/* 13F1D4 801210E4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F1D8 801210E8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F1DC 801210EC 0040F809 */  jalr       $v0
/* 13F1E0 801210F0 00642021 */   addu      $a0, $v1, $a0
/* 13F1E4 801210F4 10550007 */  beq        $v0, $s5, .Lmenu_80121114
/* 13F1E8 801210F8 24050013 */   addiu     $a1, $zero, 0x13
/* 13F1EC 801210FC 8E230010 */  lw         $v1, 0x10($s1)
/* 13F1F0 80121100 8C620028 */  lw         $v0, 0x28($v1)
/* 13F1F4 80121104 84440098 */  lh         $a0, 0x98($v0)
/* 13F1F8 80121108 8C42009C */  lw         $v0, 0x9C($v0)
/* 13F1FC 8012110C 0040F809 */  jalr       $v0
/* 13F200 80121110 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80121114:
/* 13F204 80121114 8E300010 */  lw         $s0, 0x10($s1)
/* 13F208 80121118 8E020028 */  lw         $v0, 0x28($s0)
/* 13F20C 8012111C 26730001 */  addiu      $s3, $s3, 0x1
/* 13F210 80121120 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F214 80121124 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F218 80121128 0040F809 */  jalr       $v0
/* 13F21C 8012112C 02042021 */   addu      $a0, $s0, $a0
/* 13F220 80121130 27A40010 */  addiu      $a0, $sp, 0x10
/* 13F224 80121134 26050044 */  addiu      $a1, $s0, 0x44
/* 13F228 80121138 0C000708 */  jal        func_80001C20
/* 13F22C 8012113C 24060008 */   addiu     $a2, $zero, 0x8
/* 13F230 80121140 02202021 */  addu       $a0, $s1, $zero
/* 13F234 80121144 8E260028 */  lw         $a2, 0x28($s1)
/* 13F238 80121148 27A50010 */  addiu      $a1, $sp, 0x10
/* 13F23C 8012114C 0C0163C7 */  jal        func_80058F1C
/* 13F240 80121150 00D23021 */   addu      $a2, $a2, $s2
/* 13F244 80121154 8E250028 */  lw         $a1, 0x28($s1)
/* 13F248 80121158 02202021 */  addu       $a0, $s1, $zero
/* 13F24C 8012115C 0C047FF7 */  jal        func_menu_8011FFDC
/* 13F250 80121160 00B22821 */   addu      $a1, $a1, $s2
/* 13F254 80121164 08048434 */  j          .Lmenu_801210D0
/* 13F258 80121168 26520014 */   addiu     $s2, $s2, 0x14
.Lmenu_8012116C:
/* 13F25C 8012116C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13F260 80121170 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13F264 80121174 8FB40028 */  lw         $s4, 0x28($sp)
/* 13F268 80121178 8FB30024 */  lw         $s3, 0x24($sp)
/* 13F26C 8012117C 8FB20020 */  lw         $s2, 0x20($sp)
/* 13F270 80121180 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13F274 80121184 8FB00018 */  lw         $s0, 0x18($sp)
/* 13F278 80121188 03E00008 */  jr         $ra
/* 13F27C 8012118C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80121190
/* 13F280 80121190 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13F284 80121194 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13F288 80121198 00808821 */  addu       $s1, $a0, $zero
/* 13F28C 8012119C AFBF0030 */  sw         $ra, 0x30($sp)
/* 13F290 801211A0 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13F294 801211A4 AFB40028 */  sw         $s4, 0x28($sp)
/* 13F298 801211A8 AFB30024 */  sw         $s3, 0x24($sp)
/* 13F29C 801211AC AFB20020 */  sw         $s2, 0x20($sp)
/* 13F2A0 801211B0 0C0462FF */  jal        func_menu_80118BFC
/* 13F2A4 801211B4 AFB00018 */   sw        $s0, 0x18($sp)
/* 13F2A8 801211B8 00009821 */  addu       $s3, $zero, $zero
/* 13F2AC 801211BC 24150034 */  addiu      $s5, $zero, 0x34
/* 13F2B0 801211C0 02609021 */  addu       $s2, $s3, $zero
/* 13F2B4 801211C4 3C038012 */  lui        $v1, %hi(D_menu_80127170)
/* 13F2B8 801211C8 8C647170 */  lw         $a0, %lo(D_menu_80127170)($v1)
/* 13F2BC 801211CC 0C01FB65 */  jal        func_8007ED94
/* 13F2C0 801211D0 0040A021 */   addu      $s4, $v0, $zero
/* 13F2C4 801211D4 00148040 */  sll        $s0, $s4, 1
/* 13F2C8 801211D8 02148021 */  addu       $s0, $s0, $s4
/* 13F2CC 801211DC 00108080 */  sll        $s0, $s0, 2
/* 13F2D0 801211E0 02148023 */  subu       $s0, $s0, $s4
/* 13F2D4 801211E4 00108080 */  sll        $s0, $s0, 2
/* 13F2D8 801211E8 0C00943C */  jal        func_800250F0
/* 13F2DC 801211EC 02002021 */   addu      $a0, $s0, $zero
/* 13F2E0 801211F0 0C01FB72 */  jal        func_8007EDC8
/* 13F2E4 801211F4 AE22002C */   sw        $v0, 0x2C($s1)
/* 13F2E8 801211F8 02602821 */  addu       $a1, $s3, $zero
/* 13F2EC 801211FC 8E24002C */  lw         $a0, 0x2C($s1)
/* 13F2F0 80121200 0C000697 */  jal        func_80001A5C
/* 13F2F4 80121204 02003021 */   addu      $a2, $s0, $zero
.Lmenu_80121208:
/* 13F2F8 80121208 0274102A */  slt        $v0, $s3, $s4
/* 13F2FC 8012120C 10400025 */  beqz       $v0, .Lmenu_801212A4
/* 13F300 80121210 00000000 */   nop
/* 13F304 80121214 8E230010 */  lw         $v1, 0x10($s1)
/* 13F308 80121218 8C620028 */  lw         $v0, 0x28($v1)
/* 13F30C 8012121C 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F310 80121220 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F314 80121224 0040F809 */  jalr       $v0
/* 13F318 80121228 00642021 */   addu      $a0, $v1, $a0
/* 13F31C 8012122C 10550007 */  beq        $v0, $s5, .Lmenu_8012124C
/* 13F320 80121230 24050013 */   addiu     $a1, $zero, 0x13
/* 13F324 80121234 8E230010 */  lw         $v1, 0x10($s1)
/* 13F328 80121238 8C620028 */  lw         $v0, 0x28($v1)
/* 13F32C 8012123C 84440098 */  lh         $a0, 0x98($v0)
/* 13F330 80121240 8C42009C */  lw         $v0, 0x9C($v0)
/* 13F334 80121244 0040F809 */  jalr       $v0
/* 13F338 80121248 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8012124C:
/* 13F33C 8012124C 8E300010 */  lw         $s0, 0x10($s1)
/* 13F340 80121250 8E020028 */  lw         $v0, 0x28($s0)
/* 13F344 80121254 26730001 */  addiu      $s3, $s3, 0x1
/* 13F348 80121258 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F34C 8012125C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F350 80121260 0040F809 */  jalr       $v0
/* 13F354 80121264 02042021 */   addu      $a0, $s0, $a0
/* 13F358 80121268 27A40010 */  addiu      $a0, $sp, 0x10
/* 13F35C 8012126C 26050044 */  addiu      $a1, $s0, 0x44
/* 13F360 80121270 0C000708 */  jal        func_80001C20
/* 13F364 80121274 24060008 */   addiu     $a2, $zero, 0x8
/* 13F368 80121278 02202021 */  addu       $a0, $s1, $zero
/* 13F36C 8012127C 8E26002C */  lw         $a2, 0x2C($s1)
/* 13F370 80121280 27A50010 */  addiu      $a1, $sp, 0x10
/* 13F374 80121284 0C0163C7 */  jal        func_80058F1C
/* 13F378 80121288 00D23021 */   addu      $a2, $a2, $s2
/* 13F37C 8012128C 8E25002C */  lw         $a1, 0x2C($s1)
/* 13F380 80121290 02202021 */  addu       $a0, $s1, $zero
/* 13F384 80121294 0C04804E */  jal        func_menu_80120138
/* 13F388 80121298 00B22821 */   addu      $a1, $a1, $s2
/* 13F38C 8012129C 08048482 */  j          .Lmenu_80121208
/* 13F390 801212A0 2652002C */   addiu     $s2, $s2, 0x2C
.Lmenu_801212A4:
/* 13F394 801212A4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13F398 801212A8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13F39C 801212AC 8FB40028 */  lw         $s4, 0x28($sp)
/* 13F3A0 801212B0 8FB30024 */  lw         $s3, 0x24($sp)
/* 13F3A4 801212B4 8FB20020 */  lw         $s2, 0x20($sp)
/* 13F3A8 801212B8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13F3AC 801212BC 8FB00018 */  lw         $s0, 0x18($sp)
/* 13F3B0 801212C0 03E00008 */  jr         $ra
/* 13F3B4 801212C4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_801212C8
/* 13F3B8 801212C8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13F3BC 801212CC AFB1001C */  sw         $s1, 0x1C($sp)
/* 13F3C0 801212D0 00808821 */  addu       $s1, $a0, $zero
/* 13F3C4 801212D4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 13F3C8 801212D8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13F3CC 801212DC AFB40028 */  sw         $s4, 0x28($sp)
/* 13F3D0 801212E0 AFB30024 */  sw         $s3, 0x24($sp)
/* 13F3D4 801212E4 AFB20020 */  sw         $s2, 0x20($sp)
/* 13F3D8 801212E8 0C0462FF */  jal        func_menu_80118BFC
/* 13F3DC 801212EC AFB00018 */   sw        $s0, 0x18($sp)
/* 13F3E0 801212F0 00009821 */  addu       $s3, $zero, $zero
/* 13F3E4 801212F4 24150035 */  addiu      $s5, $zero, 0x35
/* 13F3E8 801212F8 02609021 */  addu       $s2, $s3, $zero
/* 13F3EC 801212FC 3C038012 */  lui        $v1, %hi(D_menu_80127170)
/* 13F3F0 80121300 8C647170 */  lw         $a0, %lo(D_menu_80127170)($v1)
/* 13F3F4 80121304 0C01FB65 */  jal        func_8007ED94
/* 13F3F8 80121308 0040A021 */   addu      $s4, $v0, $zero
/* 13F3FC 8012130C 00148080 */  sll        $s0, $s4, 2
/* 13F400 80121310 02148021 */  addu       $s0, $s0, $s4
/* 13F404 80121314 00108080 */  sll        $s0, $s0, 2
/* 13F408 80121318 02148021 */  addu       $s0, $s0, $s4
/* 13F40C 8012131C 001080C0 */  sll        $s0, $s0, 3
/* 13F410 80121320 0C00943C */  jal        func_800250F0
/* 13F414 80121324 02002021 */   addu      $a0, $s0, $zero
/* 13F418 80121328 0C01FB72 */  jal        func_8007EDC8
/* 13F41C 8012132C AE220030 */   sw        $v0, 0x30($s1)
/* 13F420 80121330 02602821 */  addu       $a1, $s3, $zero
/* 13F424 80121334 8E240030 */  lw         $a0, 0x30($s1)
/* 13F428 80121338 0C000697 */  jal        func_80001A5C
/* 13F42C 8012133C 02003021 */   addu      $a2, $s0, $zero
.Lmenu_80121340:
/* 13F430 80121340 0274102A */  slt        $v0, $s3, $s4
/* 13F434 80121344 10400025 */  beqz       $v0, .Lmenu_801213DC
/* 13F438 80121348 00000000 */   nop
/* 13F43C 8012134C 8E230010 */  lw         $v1, 0x10($s1)
/* 13F440 80121350 8C620028 */  lw         $v0, 0x28($v1)
/* 13F444 80121354 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F448 80121358 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F44C 8012135C 0040F809 */  jalr       $v0
/* 13F450 80121360 00642021 */   addu      $a0, $v1, $a0
/* 13F454 80121364 10550007 */  beq        $v0, $s5, .Lmenu_80121384
/* 13F458 80121368 24050013 */   addiu     $a1, $zero, 0x13
/* 13F45C 8012136C 8E230010 */  lw         $v1, 0x10($s1)
/* 13F460 80121370 8C620028 */  lw         $v0, 0x28($v1)
/* 13F464 80121374 84440098 */  lh         $a0, 0x98($v0)
/* 13F468 80121378 8C42009C */  lw         $v0, 0x9C($v0)
/* 13F46C 8012137C 0040F809 */  jalr       $v0
/* 13F470 80121380 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80121384:
/* 13F474 80121384 8E300010 */  lw         $s0, 0x10($s1)
/* 13F478 80121388 8E020028 */  lw         $v0, 0x28($s0)
/* 13F47C 8012138C 26730001 */  addiu      $s3, $s3, 0x1
/* 13F480 80121390 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F484 80121394 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F488 80121398 0040F809 */  jalr       $v0
/* 13F48C 8012139C 02042021 */   addu      $a0, $s0, $a0
/* 13F490 801213A0 27A40010 */  addiu      $a0, $sp, 0x10
/* 13F494 801213A4 26050044 */  addiu      $a1, $s0, 0x44
/* 13F498 801213A8 0C000708 */  jal        func_80001C20
/* 13F49C 801213AC 24060008 */   addiu     $a2, $zero, 0x8
/* 13F4A0 801213B0 02202021 */  addu       $a0, $s1, $zero
/* 13F4A4 801213B4 8E260030 */  lw         $a2, 0x30($s1)
/* 13F4A8 801213B8 27A50010 */  addiu      $a1, $sp, 0x10
/* 13F4AC 801213BC 0C0163C7 */  jal        func_80058F1C
/* 13F4B0 801213C0 00D23021 */   addu      $a2, $a2, $s2
/* 13F4B4 801213C4 8E250030 */  lw         $a1, 0x30($s1)
/* 13F4B8 801213C8 02202021 */  addu       $a0, $s1, $zero
/* 13F4BC 801213CC 0C04810D */  jal        func_menu_80120434
/* 13F4C0 801213D0 00B22821 */   addu      $a1, $a1, $s2
/* 13F4C4 801213D4 080484D0 */  j          .Lmenu_80121340
/* 13F4C8 801213D8 265200A8 */   addiu     $s2, $s2, 0xA8
.Lmenu_801213DC:
/* 13F4CC 801213DC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13F4D0 801213E0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13F4D4 801213E4 8FB40028 */  lw         $s4, 0x28($sp)
/* 13F4D8 801213E8 8FB30024 */  lw         $s3, 0x24($sp)
/* 13F4DC 801213EC 8FB20020 */  lw         $s2, 0x20($sp)
/* 13F4E0 801213F0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13F4E4 801213F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 13F4E8 801213F8 03E00008 */  jr         $ra
/* 13F4EC 801213FC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80121400
/* 13F4F0 80121400 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13F4F4 80121404 AFB20020 */  sw         $s2, 0x20($sp)
/* 13F4F8 80121408 00809021 */  addu       $s2, $a0, $zero
/* 13F4FC 8012140C AFBF0030 */  sw         $ra, 0x30($sp)
/* 13F500 80121410 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13F504 80121414 AFB40028 */  sw         $s4, 0x28($sp)
/* 13F508 80121418 AFB30024 */  sw         $s3, 0x24($sp)
/* 13F50C 8012141C AFB1001C */  sw         $s1, 0x1C($sp)
/* 13F510 80121420 0C0462FF */  jal        func_menu_80118BFC
/* 13F514 80121424 AFB00018 */   sw        $s0, 0x18($sp)
/* 13F518 80121428 00009821 */  addu       $s3, $zero, $zero
/* 13F51C 8012142C 24150036 */  addiu      $s5, $zero, 0x36
/* 13F520 80121430 3C038012 */  lui        $v1, %hi(D_menu_80127170)
/* 13F524 80121434 8C647170 */  lw         $a0, %lo(D_menu_80127170)($v1)
/* 13F528 80121438 0C01FB65 */  jal        func_8007ED94
/* 13F52C 8012143C 0040A021 */   addu      $s4, $v0, $zero
/* 13F530 80121440 00148200 */  sll        $s0, $s4, 8
/* 13F534 80121444 0C00943C */  jal        func_800250F0
/* 13F538 80121448 02002021 */   addu      $a0, $s0, $zero
/* 13F53C 8012144C 0C01FB72 */  jal        func_8007EDC8
/* 13F540 80121450 AE420034 */   sw        $v0, 0x34($s2)
/* 13F544 80121454 02602821 */  addu       $a1, $s3, $zero
/* 13F548 80121458 8E440034 */  lw         $a0, 0x34($s2)
/* 13F54C 8012145C 0C000697 */  jal        func_80001A5C
/* 13F550 80121460 02003021 */   addu      $a2, $s0, $zero
/* 13F554 80121464 0274102A */  slt        $v0, $s3, $s4
.Lmenu_80121468:
/* 13F558 80121468 10400026 */  beqz       $v0, .Lmenu_80121504
/* 13F55C 8012146C 00000000 */   nop
/* 13F560 80121470 8E430010 */  lw         $v1, 0x10($s2)
/* 13F564 80121474 8C620028 */  lw         $v0, 0x28($v1)
/* 13F568 80121478 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F56C 8012147C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F570 80121480 0040F809 */  jalr       $v0
/* 13F574 80121484 00642021 */   addu      $a0, $v1, $a0
/* 13F578 80121488 10550007 */  beq        $v0, $s5, .Lmenu_801214A8
/* 13F57C 8012148C 24050013 */   addiu     $a1, $zero, 0x13
/* 13F580 80121490 8E430010 */  lw         $v1, 0x10($s2)
/* 13F584 80121494 8C620028 */  lw         $v0, 0x28($v1)
/* 13F588 80121498 84440098 */  lh         $a0, 0x98($v0)
/* 13F58C 8012149C 8C42009C */  lw         $v0, 0x9C($v0)
/* 13F590 801214A0 0040F809 */  jalr       $v0
/* 13F594 801214A4 00642021 */   addu      $a0, $v1, $a0
.Lmenu_801214A8:
/* 13F598 801214A8 8E500010 */  lw         $s0, 0x10($s2)
/* 13F59C 801214AC 00138A00 */  sll        $s1, $s3, 8
/* 13F5A0 801214B0 8E020028 */  lw         $v0, 0x28($s0)
/* 13F5A4 801214B4 26730001 */  addiu      $s3, $s3, 0x1
/* 13F5A8 801214B8 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F5AC 801214BC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F5B0 801214C0 0040F809 */  jalr       $v0
/* 13F5B4 801214C4 02042021 */   addu      $a0, $s0, $a0
/* 13F5B8 801214C8 27A40010 */  addiu      $a0, $sp, 0x10
/* 13F5BC 801214CC 26050044 */  addiu      $a1, $s0, 0x44
/* 13F5C0 801214D0 0C000708 */  jal        func_80001C20
/* 13F5C4 801214D4 24060008 */   addiu     $a2, $zero, 0x8
/* 13F5C8 801214D8 02402021 */  addu       $a0, $s2, $zero
/* 13F5CC 801214DC 8E460034 */  lw         $a2, 0x34($s2)
/* 13F5D0 801214E0 27A50010 */  addiu      $a1, $sp, 0x10
/* 13F5D4 801214E4 0C0163C7 */  jal        func_80058F1C
/* 13F5D8 801214E8 00D13021 */   addu      $a2, $a2, $s1
/* 13F5DC 801214EC 8E450034 */  lw         $a1, 0x34($s2)
/* 13F5E0 801214F0 02402021 */  addu       $a0, $s2, $zero
/* 13F5E4 801214F4 0C04815D */  jal        func_menu_80120574
/* 13F5E8 801214F8 00B12821 */   addu      $a1, $a1, $s1
/* 13F5EC 801214FC 0804851A */  j          .Lmenu_80121468
/* 13F5F0 80121500 0274102A */   slt       $v0, $s3, $s4
.Lmenu_80121504:
/* 13F5F4 80121504 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13F5F8 80121508 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13F5FC 8012150C 8FB40028 */  lw         $s4, 0x28($sp)
/* 13F600 80121510 8FB30024 */  lw         $s3, 0x24($sp)
/* 13F604 80121514 8FB20020 */  lw         $s2, 0x20($sp)
/* 13F608 80121518 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13F60C 8012151C 8FB00018 */  lw         $s0, 0x18($sp)
/* 13F610 80121520 03E00008 */  jr         $ra
/* 13F614 80121524 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80121528
/* 13F618 80121528 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13F61C 8012152C AFB1001C */  sw         $s1, 0x1C($sp)
/* 13F620 80121530 00808821 */  addu       $s1, $a0, $zero
/* 13F624 80121534 AFBF0030 */  sw         $ra, 0x30($sp)
/* 13F628 80121538 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13F62C 8012153C AFB40028 */  sw         $s4, 0x28($sp)
/* 13F630 80121540 AFB30024 */  sw         $s3, 0x24($sp)
/* 13F634 80121544 AFB20020 */  sw         $s2, 0x20($sp)
/* 13F638 80121548 0C0462FF */  jal        func_menu_80118BFC
/* 13F63C 8012154C AFB00018 */   sw        $s0, 0x18($sp)
/* 13F640 80121550 00009821 */  addu       $s3, $zero, $zero
/* 13F644 80121554 24150037 */  addiu      $s5, $zero, 0x37
/* 13F648 80121558 02609021 */  addu       $s2, $s3, $zero
/* 13F64C 8012155C 3C038012 */  lui        $v1, %hi(D_menu_80127170)
/* 13F650 80121560 8C647170 */  lw         $a0, %lo(D_menu_80127170)($v1)
/* 13F654 80121564 0C01FB65 */  jal        func_8007ED94
/* 13F658 80121568 0040A021 */   addu      $s4, $v0, $zero
/* 13F65C 8012156C 00148080 */  sll        $s0, $s4, 2
/* 13F660 80121570 02148021 */  addu       $s0, $s0, $s4
/* 13F664 80121574 00108080 */  sll        $s0, $s0, 2
/* 13F668 80121578 02148021 */  addu       $s0, $s0, $s4
/* 13F66C 8012157C 00108100 */  sll        $s0, $s0, 4
/* 13F670 80121580 0C00943C */  jal        func_800250F0
/* 13F674 80121584 02002021 */   addu      $a0, $s0, $zero
/* 13F678 80121588 0C01FB72 */  jal        func_8007EDC8
/* 13F67C 8012158C AE220038 */   sw        $v0, 0x38($s1)
/* 13F680 80121590 02602821 */  addu       $a1, $s3, $zero
/* 13F684 80121594 8E240038 */  lw         $a0, 0x38($s1)
/* 13F688 80121598 0C000697 */  jal        func_80001A5C
/* 13F68C 8012159C 02003021 */   addu      $a2, $s0, $zero
.Lmenu_801215A0:
/* 13F690 801215A0 0274102A */  slt        $v0, $s3, $s4
/* 13F694 801215A4 10400025 */  beqz       $v0, .Lmenu_8012163C
/* 13F698 801215A8 00000000 */   nop
/* 13F69C 801215AC 8E230010 */  lw         $v1, 0x10($s1)
/* 13F6A0 801215B0 8C620028 */  lw         $v0, 0x28($v1)
/* 13F6A4 801215B4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F6A8 801215B8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F6AC 801215BC 0040F809 */  jalr       $v0
/* 13F6B0 801215C0 00642021 */   addu      $a0, $v1, $a0
/* 13F6B4 801215C4 10550007 */  beq        $v0, $s5, .Lmenu_801215E4
/* 13F6B8 801215C8 24050013 */   addiu     $a1, $zero, 0x13
/* 13F6BC 801215CC 8E230010 */  lw         $v1, 0x10($s1)
/* 13F6C0 801215D0 8C620028 */  lw         $v0, 0x28($v1)
/* 13F6C4 801215D4 84440098 */  lh         $a0, 0x98($v0)
/* 13F6C8 801215D8 8C42009C */  lw         $v0, 0x9C($v0)
/* 13F6CC 801215DC 0040F809 */  jalr       $v0
/* 13F6D0 801215E0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_801215E4:
/* 13F6D4 801215E4 8E300010 */  lw         $s0, 0x10($s1)
/* 13F6D8 801215E8 8E020028 */  lw         $v0, 0x28($s0)
/* 13F6DC 801215EC 26730001 */  addiu      $s3, $s3, 0x1
/* 13F6E0 801215F0 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F6E4 801215F4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F6E8 801215F8 0040F809 */  jalr       $v0
/* 13F6EC 801215FC 02042021 */   addu      $a0, $s0, $a0
/* 13F6F0 80121600 27A40010 */  addiu      $a0, $sp, 0x10
/* 13F6F4 80121604 26050044 */  addiu      $a1, $s0, 0x44
/* 13F6F8 80121608 0C000708 */  jal        func_80001C20
/* 13F6FC 8012160C 24060008 */   addiu     $a2, $zero, 0x8
/* 13F700 80121610 02202021 */  addu       $a0, $s1, $zero
/* 13F704 80121614 8E260038 */  lw         $a2, 0x38($s1)
/* 13F708 80121618 27A50010 */  addiu      $a1, $sp, 0x10
/* 13F70C 8012161C 0C0163C7 */  jal        func_80058F1C
/* 13F710 80121620 00D23021 */   addu      $a2, $a2, $s2
/* 13F714 80121624 8E250038 */  lw         $a1, 0x38($s1)
/* 13F718 80121628 02202021 */  addu       $a0, $s1, $zero
/* 13F71C 8012162C 0C0481D4 */  jal        func_menu_80120750
/* 13F720 80121630 00B22821 */   addu      $a1, $a1, $s2
/* 13F724 80121634 08048568 */  j          .Lmenu_801215A0
/* 13F728 80121638 26520150 */   addiu     $s2, $s2, 0x150
.Lmenu_8012163C:
/* 13F72C 8012163C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13F730 80121640 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13F734 80121644 8FB40028 */  lw         $s4, 0x28($sp)
/* 13F738 80121648 8FB30024 */  lw         $s3, 0x24($sp)
/* 13F73C 8012164C 8FB20020 */  lw         $s2, 0x20($sp)
/* 13F740 80121650 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13F744 80121654 8FB00018 */  lw         $s0, 0x18($sp)
/* 13F748 80121658 03E00008 */  jr         $ra
/* 13F74C 8012165C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80121660
/* 13F750 80121660 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13F754 80121664 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13F758 80121668 00808821 */  addu       $s1, $a0, $zero
/* 13F75C 8012166C AFBF0030 */  sw         $ra, 0x30($sp)
/* 13F760 80121670 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13F764 80121674 AFB40028 */  sw         $s4, 0x28($sp)
/* 13F768 80121678 AFB30024 */  sw         $s3, 0x24($sp)
/* 13F76C 8012167C AFB20020 */  sw         $s2, 0x20($sp)
/* 13F770 80121680 0C0462FF */  jal        func_menu_80118BFC
/* 13F774 80121684 AFB00018 */   sw        $s0, 0x18($sp)
/* 13F778 80121688 00009821 */  addu       $s3, $zero, $zero
/* 13F77C 8012168C 24150038 */  addiu      $s5, $zero, 0x38
/* 13F780 80121690 02609021 */  addu       $s2, $s3, $zero
/* 13F784 80121694 3C038012 */  lui        $v1, %hi(D_menu_80127170)
/* 13F788 80121698 8C647170 */  lw         $a0, %lo(D_menu_80127170)($v1)
/* 13F78C 8012169C 0C01FB65 */  jal        func_8007ED94
/* 13F790 801216A0 0040A021 */   addu      $s4, $v0, $zero
/* 13F794 801216A4 00148040 */  sll        $s0, $s4, 1
/* 13F798 801216A8 02148021 */  addu       $s0, $s0, $s4
/* 13F79C 801216AC 001080C0 */  sll        $s0, $s0, 3
/* 13F7A0 801216B0 0C00943C */  jal        func_800250F0
/* 13F7A4 801216B4 02002021 */   addu      $a0, $s0, $zero
/* 13F7A8 801216B8 0C01FB72 */  jal        func_8007EDC8
/* 13F7AC 801216BC AE22003C */   sw        $v0, 0x3C($s1)
/* 13F7B0 801216C0 02602821 */  addu       $a1, $s3, $zero
/* 13F7B4 801216C4 8E24003C */  lw         $a0, 0x3C($s1)
/* 13F7B8 801216C8 0C000697 */  jal        func_80001A5C
/* 13F7BC 801216CC 02003021 */   addu      $a2, $s0, $zero
.Lmenu_801216D0:
/* 13F7C0 801216D0 0274102A */  slt        $v0, $s3, $s4
/* 13F7C4 801216D4 10400025 */  beqz       $v0, .Lmenu_8012176C
/* 13F7C8 801216D8 00000000 */   nop
/* 13F7CC 801216DC 8E230010 */  lw         $v1, 0x10($s1)
/* 13F7D0 801216E0 8C620028 */  lw         $v0, 0x28($v1)
/* 13F7D4 801216E4 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F7D8 801216E8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F7DC 801216EC 0040F809 */  jalr       $v0
/* 13F7E0 801216F0 00642021 */   addu      $a0, $v1, $a0
/* 13F7E4 801216F4 10550007 */  beq        $v0, $s5, .Lmenu_80121714
/* 13F7E8 801216F8 24050013 */   addiu     $a1, $zero, 0x13
/* 13F7EC 801216FC 8E230010 */  lw         $v1, 0x10($s1)
/* 13F7F0 80121700 8C620028 */  lw         $v0, 0x28($v1)
/* 13F7F4 80121704 84440098 */  lh         $a0, 0x98($v0)
/* 13F7F8 80121708 8C42009C */  lw         $v0, 0x9C($v0)
/* 13F7FC 8012170C 0040F809 */  jalr       $v0
/* 13F800 80121710 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80121714:
/* 13F804 80121714 8E300010 */  lw         $s0, 0x10($s1)
/* 13F808 80121718 8E020028 */  lw         $v0, 0x28($s0)
/* 13F80C 8012171C 26730001 */  addiu      $s3, $s3, 0x1
/* 13F810 80121720 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F814 80121724 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F818 80121728 0040F809 */  jalr       $v0
/* 13F81C 8012172C 02042021 */   addu      $a0, $s0, $a0
/* 13F820 80121730 27A40010 */  addiu      $a0, $sp, 0x10
/* 13F824 80121734 26050044 */  addiu      $a1, $s0, 0x44
/* 13F828 80121738 0C000708 */  jal        func_80001C20
/* 13F82C 8012173C 24060008 */   addiu     $a2, $zero, 0x8
/* 13F830 80121740 02202021 */  addu       $a0, $s1, $zero
/* 13F834 80121744 8E26003C */  lw         $a2, 0x3C($s1)
/* 13F838 80121748 27A50010 */  addiu      $a1, $sp, 0x10
/* 13F83C 8012174C 0C0163C7 */  jal        func_80058F1C
/* 13F840 80121750 00D23021 */   addu      $a2, $a2, $s2
/* 13F844 80121754 8E25003C */  lw         $a1, 0x3C($s1)
/* 13F848 80121758 02202021 */  addu       $a0, $s1, $zero
/* 13F84C 8012175C 0C048243 */  jal        func_menu_8012090C
/* 13F850 80121760 00B22821 */   addu      $a1, $a1, $s2
/* 13F854 80121764 080485B4 */  j          .Lmenu_801216D0
/* 13F858 80121768 26520018 */   addiu     $s2, $s2, 0x18
.Lmenu_8012176C:
/* 13F85C 8012176C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13F860 80121770 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13F864 80121774 8FB40028 */  lw         $s4, 0x28($sp)
/* 13F868 80121778 8FB30024 */  lw         $s3, 0x24($sp)
/* 13F86C 8012177C 8FB20020 */  lw         $s2, 0x20($sp)
/* 13F870 80121780 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13F874 80121784 8FB00018 */  lw         $s0, 0x18($sp)
/* 13F878 80121788 03E00008 */  jr         $ra
/* 13F87C 8012178C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80121790
/* 13F880 80121790 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13F884 80121794 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13F888 80121798 00808821 */  addu       $s1, $a0, $zero
/* 13F88C 8012179C AFBF0030 */  sw         $ra, 0x30($sp)
/* 13F890 801217A0 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13F894 801217A4 AFB40028 */  sw         $s4, 0x28($sp)
/* 13F898 801217A8 AFB30024 */  sw         $s3, 0x24($sp)
/* 13F89C 801217AC AFB20020 */  sw         $s2, 0x20($sp)
/* 13F8A0 801217B0 0C0462FF */  jal        func_menu_80118BFC
/* 13F8A4 801217B4 AFB00018 */   sw        $s0, 0x18($sp)
/* 13F8A8 801217B8 00009821 */  addu       $s3, $zero, $zero
/* 13F8AC 801217BC 24150039 */  addiu      $s5, $zero, 0x39
/* 13F8B0 801217C0 02609021 */  addu       $s2, $s3, $zero
/* 13F8B4 801217C4 3C038012 */  lui        $v1, %hi(D_menu_80127170)
/* 13F8B8 801217C8 8C647170 */  lw         $a0, %lo(D_menu_80127170)($v1)
/* 13F8BC 801217CC 0C01FB65 */  jal        func_8007ED94
/* 13F8C0 801217D0 0040A021 */   addu      $s4, $v0, $zero
/* 13F8C4 801217D4 00148040 */  sll        $s0, $s4, 1
/* 13F8C8 801217D8 02148021 */  addu       $s0, $s0, $s4
/* 13F8CC 801217DC 00108100 */  sll        $s0, $s0, 4
/* 13F8D0 801217E0 02148023 */  subu       $s0, $s0, $s4
/* 13F8D4 801217E4 00108080 */  sll        $s0, $s0, 2
/* 13F8D8 801217E8 0C00943C */  jal        func_800250F0
/* 13F8DC 801217EC 02002021 */   addu      $a0, $s0, $zero
/* 13F8E0 801217F0 0C01FB72 */  jal        func_8007EDC8
/* 13F8E4 801217F4 AE220040 */   sw        $v0, 0x40($s1)
/* 13F8E8 801217F8 02602821 */  addu       $a1, $s3, $zero
/* 13F8EC 801217FC 8E240040 */  lw         $a0, 0x40($s1)
/* 13F8F0 80121800 0C000697 */  jal        func_80001A5C
/* 13F8F4 80121804 02003021 */   addu      $a2, $s0, $zero
.Lmenu_80121808:
/* 13F8F8 80121808 0274102A */  slt        $v0, $s3, $s4
/* 13F8FC 8012180C 10400025 */  beqz       $v0, .Lmenu_801218A4
/* 13F900 80121810 00000000 */   nop
/* 13F904 80121814 8E230010 */  lw         $v1, 0x10($s1)
/* 13F908 80121818 8C620028 */  lw         $v0, 0x28($v1)
/* 13F90C 8012181C 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F910 80121820 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F914 80121824 0040F809 */  jalr       $v0
/* 13F918 80121828 00642021 */   addu      $a0, $v1, $a0
/* 13F91C 8012182C 10550007 */  beq        $v0, $s5, .Lmenu_8012184C
/* 13F920 80121830 24050013 */   addiu     $a1, $zero, 0x13
/* 13F924 80121834 8E230010 */  lw         $v1, 0x10($s1)
/* 13F928 80121838 8C620028 */  lw         $v0, 0x28($v1)
/* 13F92C 8012183C 84440098 */  lh         $a0, 0x98($v0)
/* 13F930 80121840 8C42009C */  lw         $v0, 0x9C($v0)
/* 13F934 80121844 0040F809 */  jalr       $v0
/* 13F938 80121848 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8012184C:
/* 13F93C 8012184C 8E300010 */  lw         $s0, 0x10($s1)
/* 13F940 80121850 8E020028 */  lw         $v0, 0x28($s0)
/* 13F944 80121854 26730001 */  addiu      $s3, $s3, 0x1
/* 13F948 80121858 844400A0 */  lh         $a0, 0xA0($v0)
/* 13F94C 8012185C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13F950 80121860 0040F809 */  jalr       $v0
/* 13F954 80121864 02042021 */   addu      $a0, $s0, $a0
/* 13F958 80121868 27A40010 */  addiu      $a0, $sp, 0x10
/* 13F95C 8012186C 26050044 */  addiu      $a1, $s0, 0x44
/* 13F960 80121870 0C000708 */  jal        func_80001C20
/* 13F964 80121874 24060008 */   addiu     $a2, $zero, 0x8
/* 13F968 80121878 02202021 */  addu       $a0, $s1, $zero
/* 13F96C 8012187C 8E260040 */  lw         $a2, 0x40($s1)
/* 13F970 80121880 27A50010 */  addiu      $a1, $sp, 0x10
/* 13F974 80121884 0C0163C7 */  jal        func_80058F1C
/* 13F978 80121888 00D23021 */   addu      $a2, $a2, $s2
/* 13F97C 8012188C 8E250040 */  lw         $a1, 0x40($s1)
/* 13F980 80121890 02202021 */  addu       $a0, $s1, $zero
/* 13F984 80121894 0C048294 */  jal        func_menu_80120A50
/* 13F988 80121898 00B22821 */   addu      $a1, $a1, $s2
/* 13F98C 8012189C 08048602 */  j          .Lmenu_80121808
/* 13F990 801218A0 265200BC */   addiu     $s2, $s2, 0xBC
.Lmenu_801218A4:
/* 13F994 801218A4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13F998 801218A8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13F99C 801218AC 8FB40028 */  lw         $s4, 0x28($sp)
/* 13F9A0 801218B0 8FB30024 */  lw         $s3, 0x24($sp)
/* 13F9A4 801218B4 8FB20020 */  lw         $s2, 0x20($sp)
/* 13F9A8 801218B8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13F9AC 801218BC 8FB00018 */  lw         $s0, 0x18($sp)
/* 13F9B0 801218C0 03E00008 */  jr         $ra
/* 13F9B4 801218C4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_801218C8
/* 13F9B8 801218C8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13F9BC 801218CC AFB1001C */  sw         $s1, 0x1C($sp)
/* 13F9C0 801218D0 00808821 */  addu       $s1, $a0, $zero
/* 13F9C4 801218D4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 13F9C8 801218D8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13F9CC 801218DC AFB40028 */  sw         $s4, 0x28($sp)
/* 13F9D0 801218E0 AFB30024 */  sw         $s3, 0x24($sp)
/* 13F9D4 801218E4 AFB20020 */  sw         $s2, 0x20($sp)
/* 13F9D8 801218E8 0C0462FF */  jal        func_menu_80118BFC
/* 13F9DC 801218EC AFB00018 */   sw        $s0, 0x18($sp)
/* 13F9E0 801218F0 00009821 */  addu       $s3, $zero, $zero
/* 13F9E4 801218F4 2415003B */  addiu      $s5, $zero, 0x3B
/* 13F9E8 801218F8 02609021 */  addu       $s2, $s3, $zero
/* 13F9EC 801218FC 3C038012 */  lui        $v1, %hi(D_menu_80127170)
/* 13F9F0 80121900 8C647170 */  lw         $a0, %lo(D_menu_80127170)($v1)
/* 13F9F4 80121904 0C01FB65 */  jal        func_8007ED94
/* 13F9F8 80121908 0040A021 */   addu      $s4, $v0, $zero
/* 13F9FC 8012190C 00148040 */  sll        $s0, $s4, 1
/* 13FA00 80121910 02148021 */  addu       $s0, $s0, $s4
/* 13FA04 80121914 00108100 */  sll        $s0, $s0, 4
/* 13FA08 80121918 02148023 */  subu       $s0, $s0, $s4
/* 13FA0C 8012191C 00108080 */  sll        $s0, $s0, 2
/* 13FA10 80121920 0C00943C */  jal        func_800250F0
/* 13FA14 80121924 02002021 */   addu      $a0, $s0, $zero
/* 13FA18 80121928 0C01FB72 */  jal        func_8007EDC8
/* 13FA1C 8012192C AE220044 */   sw        $v0, 0x44($s1)
/* 13FA20 80121930 02602821 */  addu       $a1, $s3, $zero
/* 13FA24 80121934 8E240044 */  lw         $a0, 0x44($s1)
/* 13FA28 80121938 0C000697 */  jal        func_80001A5C
/* 13FA2C 8012193C 02003021 */   addu      $a2, $s0, $zero
.Lmenu_80121940:
/* 13FA30 80121940 0274102A */  slt        $v0, $s3, $s4
/* 13FA34 80121944 10400025 */  beqz       $v0, .Lmenu_801219DC
/* 13FA38 80121948 00000000 */   nop
/* 13FA3C 8012194C 8E230010 */  lw         $v1, 0x10($s1)
/* 13FA40 80121950 8C620028 */  lw         $v0, 0x28($v1)
/* 13FA44 80121954 844400A0 */  lh         $a0, 0xA0($v0)
/* 13FA48 80121958 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13FA4C 8012195C 0040F809 */  jalr       $v0
/* 13FA50 80121960 00642021 */   addu      $a0, $v1, $a0
/* 13FA54 80121964 10550007 */  beq        $v0, $s5, .Lmenu_80121984
/* 13FA58 80121968 24050013 */   addiu     $a1, $zero, 0x13
/* 13FA5C 8012196C 8E230010 */  lw         $v1, 0x10($s1)
/* 13FA60 80121970 8C620028 */  lw         $v0, 0x28($v1)
/* 13FA64 80121974 84440098 */  lh         $a0, 0x98($v0)
/* 13FA68 80121978 8C42009C */  lw         $v0, 0x9C($v0)
/* 13FA6C 8012197C 0040F809 */  jalr       $v0
/* 13FA70 80121980 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80121984:
/* 13FA74 80121984 8E300010 */  lw         $s0, 0x10($s1)
/* 13FA78 80121988 8E020028 */  lw         $v0, 0x28($s0)
/* 13FA7C 8012198C 26730001 */  addiu      $s3, $s3, 0x1
/* 13FA80 80121990 844400A0 */  lh         $a0, 0xA0($v0)
/* 13FA84 80121994 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13FA88 80121998 0040F809 */  jalr       $v0
/* 13FA8C 8012199C 02042021 */   addu      $a0, $s0, $a0
/* 13FA90 801219A0 27A40010 */  addiu      $a0, $sp, 0x10
/* 13FA94 801219A4 26050044 */  addiu      $a1, $s0, 0x44
/* 13FA98 801219A8 0C000708 */  jal        func_80001C20
/* 13FA9C 801219AC 24060008 */   addiu     $a2, $zero, 0x8
/* 13FAA0 801219B0 02202021 */  addu       $a0, $s1, $zero
/* 13FAA4 801219B4 8E260044 */  lw         $a2, 0x44($s1)
/* 13FAA8 801219B8 27A50010 */  addiu      $a1, $sp, 0x10
/* 13FAAC 801219BC 0C0163C7 */  jal        func_80058F1C
/* 13FAB0 801219C0 00D23021 */   addu      $a2, $a2, $s2
/* 13FAB4 801219C4 8E250044 */  lw         $a1, 0x44($s1)
/* 13FAB8 801219C8 02202021 */  addu       $a0, $s1, $zero
/* 13FABC 801219CC 0C04832B */  jal        func_menu_80120CAC
/* 13FAC0 801219D0 00B22821 */   addu      $a1, $a1, $s2
/* 13FAC4 801219D4 08048650 */  j          .Lmenu_80121940
/* 13FAC8 801219D8 265200BC */   addiu     $s2, $s2, 0xBC
.Lmenu_801219DC:
/* 13FACC 801219DC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13FAD0 801219E0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13FAD4 801219E4 8FB40028 */  lw         $s4, 0x28($sp)
/* 13FAD8 801219E8 8FB30024 */  lw         $s3, 0x24($sp)
/* 13FADC 801219EC 8FB20020 */  lw         $s2, 0x20($sp)
/* 13FAE0 801219F0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13FAE4 801219F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 13FAE8 801219F8 03E00008 */  jr         $ra
/* 13FAEC 801219FC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80121A00
/* 13FAF0 80121A00 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13FAF4 80121A04 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13FAF8 80121A08 00808821 */  addu       $s1, $a0, $zero
/* 13FAFC 80121A0C AFBF0030 */  sw         $ra, 0x30($sp)
/* 13FB00 80121A10 AFB5002C */  sw         $s5, 0x2C($sp)
/* 13FB04 80121A14 AFB40028 */  sw         $s4, 0x28($sp)
/* 13FB08 80121A18 AFB30024 */  sw         $s3, 0x24($sp)
/* 13FB0C 80121A1C AFB20020 */  sw         $s2, 0x20($sp)
/* 13FB10 80121A20 0C0462FF */  jal        func_menu_80118BFC
/* 13FB14 80121A24 AFB00018 */   sw        $s0, 0x18($sp)
/* 13FB18 80121A28 00009821 */  addu       $s3, $zero, $zero
/* 13FB1C 80121A2C 2415003A */  addiu      $s5, $zero, 0x3A
/* 13FB20 80121A30 02609021 */  addu       $s2, $s3, $zero
/* 13FB24 80121A34 3C038012 */  lui        $v1, %hi(D_menu_80127170)
/* 13FB28 80121A38 8C647170 */  lw         $a0, %lo(D_menu_80127170)($v1)
/* 13FB2C 80121A3C 0C01FB65 */  jal        func_8007ED94
/* 13FB30 80121A40 0040A021 */   addu      $s4, $v0, $zero
/* 13FB34 80121A44 001480C0 */  sll        $s0, $s4, 3
/* 13FB38 80121A48 02148021 */  addu       $s0, $s0, $s4
/* 13FB3C 80121A4C 00108100 */  sll        $s0, $s0, 4
/* 13FB40 80121A50 0C00943C */  jal        func_800250F0
/* 13FB44 80121A54 02002021 */   addu      $a0, $s0, $zero
/* 13FB48 80121A58 0C01FB72 */  jal        func_8007EDC8
/* 13FB4C 80121A5C AE220048 */   sw        $v0, 0x48($s1)
/* 13FB50 80121A60 02602821 */  addu       $a1, $s3, $zero
/* 13FB54 80121A64 8E240048 */  lw         $a0, 0x48($s1)
/* 13FB58 80121A68 0C000697 */  jal        func_80001A5C
/* 13FB5C 80121A6C 02003021 */   addu      $a2, $s0, $zero
.Lmenu_80121A70:
/* 13FB60 80121A70 0274102A */  slt        $v0, $s3, $s4
/* 13FB64 80121A74 10400025 */  beqz       $v0, .Lmenu_80121B0C
/* 13FB68 80121A78 00000000 */   nop
/* 13FB6C 80121A7C 8E230010 */  lw         $v1, 0x10($s1)
/* 13FB70 80121A80 8C620028 */  lw         $v0, 0x28($v1)
/* 13FB74 80121A84 844400A0 */  lh         $a0, 0xA0($v0)
/* 13FB78 80121A88 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13FB7C 80121A8C 0040F809 */  jalr       $v0
/* 13FB80 80121A90 00642021 */   addu      $a0, $v1, $a0
/* 13FB84 80121A94 10550007 */  beq        $v0, $s5, .Lmenu_80121AB4
/* 13FB88 80121A98 24050013 */   addiu     $a1, $zero, 0x13
/* 13FB8C 80121A9C 8E230010 */  lw         $v1, 0x10($s1)
/* 13FB90 80121AA0 8C620028 */  lw         $v0, 0x28($v1)
/* 13FB94 80121AA4 84440098 */  lh         $a0, 0x98($v0)
/* 13FB98 80121AA8 8C42009C */  lw         $v0, 0x9C($v0)
/* 13FB9C 80121AAC 0040F809 */  jalr       $v0
/* 13FBA0 80121AB0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80121AB4:
/* 13FBA4 80121AB4 8E300010 */  lw         $s0, 0x10($s1)
/* 13FBA8 80121AB8 8E020028 */  lw         $v0, 0x28($s0)
/* 13FBAC 80121ABC 26730001 */  addiu      $s3, $s3, 0x1
/* 13FBB0 80121AC0 844400A0 */  lh         $a0, 0xA0($v0)
/* 13FBB4 80121AC4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 13FBB8 80121AC8 0040F809 */  jalr       $v0
/* 13FBBC 80121ACC 02042021 */   addu      $a0, $s0, $a0
/* 13FBC0 80121AD0 27A40010 */  addiu      $a0, $sp, 0x10
/* 13FBC4 80121AD4 26050044 */  addiu      $a1, $s0, 0x44
/* 13FBC8 80121AD8 0C000708 */  jal        func_80001C20
/* 13FBCC 80121ADC 24060008 */   addiu     $a2, $zero, 0x8
/* 13FBD0 80121AE0 02202021 */  addu       $a0, $s1, $zero
/* 13FBD4 80121AE4 8E260048 */  lw         $a2, 0x48($s1)
/* 13FBD8 80121AE8 27A50010 */  addiu      $a1, $sp, 0x10
/* 13FBDC 80121AEC 0C0163C7 */  jal        func_80058F1C
/* 13FBE0 80121AF0 00D23021 */   addu      $a2, $a2, $s2
/* 13FBE4 80121AF4 8E250048 */  lw         $a1, 0x48($s1)
/* 13FBE8 80121AF8 02202021 */  addu       $a0, $s1, $zero
/* 13FBEC 80121AFC 0C0480A2 */  jal        func_menu_80120288
/* 13FBF0 80121B00 00B22821 */   addu      $a1, $a1, $s2
/* 13FBF4 80121B04 0804869C */  j          .Lmenu_80121A70
/* 13FBF8 80121B08 26520090 */   addiu     $s2, $s2, 0x90
.Lmenu_80121B0C:
/* 13FBFC 80121B0C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 13FC00 80121B10 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13FC04 80121B14 8FB40028 */  lw         $s4, 0x28($sp)
/* 13FC08 80121B18 8FB30024 */  lw         $s3, 0x24($sp)
/* 13FC0C 80121B1C 8FB20020 */  lw         $s2, 0x20($sp)
/* 13FC10 80121B20 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13FC14 80121B24 8FB00018 */  lw         $s0, 0x18($sp)
/* 13FC18 80121B28 03E00008 */  jr         $ra
/* 13FC1C 80121B2C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80121B30
/* 13FC20 80121B30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13FC24 80121B34 AFB00018 */  sw         $s0, 0x18($sp)
/* 13FC28 80121B38 00808021 */  addu       $s0, $a0, $zero
/* 13FC2C 80121B3C AFB1001C */  sw         $s1, 0x1C($sp)
/* 13FC30 80121B40 00A08821 */  addu       $s1, $a1, $zero
/* 13FC34 80121B44 27A40010 */  addiu      $a0, $sp, 0x10
/* 13FC38 80121B48 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13FC3C 80121B4C 0C000708 */  jal        func_80001C20
/* 13FC40 80121B50 24060008 */   addiu     $a2, $zero, 0x8
/* 13FC44 80121B54 02002021 */  addu       $a0, $s0, $zero
/* 13FC48 80121B58 0C016427 */  jal        func_8005909C
/* 13FC4C 80121B5C 27A50010 */   addiu     $a1, $sp, 0x10
/* 13FC50 80121B60 14400006 */  bnez       $v0, .Lmenu_80121B7C
/* 13FC54 80121B64 00000000 */   nop
/* 13FC58 80121B68 8E040020 */  lw         $a0, 0x20($s0)
/* 13FC5C 80121B6C 10800003 */  beqz       $a0, .Lmenu_80121B7C
/* 13FC60 80121B70 00000000 */   nop
/* 13FC64 80121B74 0C0486CC */  jal        func_menu_80121B30
/* 13FC68 80121B78 02202821 */   addu      $a1, $s1, $zero
.Lmenu_80121B7C:
/* 13FC6C 80121B7C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13FC70 80121B80 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13FC74 80121B84 8FB00018 */  lw         $s0, 0x18($sp)
/* 13FC78 80121B88 03E00008 */  jr         $ra
/* 13FC7C 80121B8C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_80121B90
/* 13FC80 80121B90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13FC84 80121B94 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13FC88 80121B98 0C002513 */  jal        func_8000944C
/* 13FC8C 80121B9C 00000000 */   nop
/* 13FC90 80121BA0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13FC94 80121BA4 03E00008 */  jr         $ra
/* 13FC98 80121BA8 27BD0018 */   addiu     $sp, $sp, 0x18
