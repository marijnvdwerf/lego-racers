.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_801115C0
/* 12F6B0 801115C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12F6B4 801115C4 AFB20018 */  sw         $s2, 0x18($sp)
/* 12F6B8 801115C8 00809021 */  addu       $s2, $a0, $zero
/* 12F6BC 801115CC AFBF0020 */  sw         $ra, 0x20($sp)
/* 12F6C0 801115D0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12F6C4 801115D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 12F6C8 801115D8 0C048AFC */  jal        func_menu_80122BF0
/* 12F6CC 801115DC AFB00010 */   sw        $s0, 0x10($sp)
/* 12F6D0 801115E0 3C02800D */  lui        $v0, %hi(D_menu_800CF888)
/* 12F6D4 801115E4 2442F888 */  addiu      $v0, $v0, %lo(D_menu_800CF888)
/* 12F6D8 801115E8 2651022C */  addiu      $s1, $s2, 0x22C
/* 12F6DC 801115EC 24100002 */  addiu      $s0, $zero, 0x2
/* 12F6E0 801115F0 2413FFFF */  addiu      $s3, $zero, -0x1
/* 12F6E4 801115F4 AE420054 */  sw         $v0, 0x54($s2)
.Lmenu_801115F8:
/* 12F6E8 801115F8 0C047BA4 */  jal        func_menu_8011EE90
/* 12F6EC 801115FC 02202021 */   addu      $a0, $s1, $zero
/* 12F6F0 80111600 2610FFFF */  addiu      $s0, $s0, -0x1
/* 12F6F4 80111604 1613FFFC */  bne        $s0, $s3, .Lmenu_801115F8
/* 12F6F8 80111608 2631005C */   addiu     $s1, $s1, 0x5C
/* 12F6FC 8011160C 0C047CA8 */  jal        func_menu_8011F2A0
/* 12F700 80111610 26440340 */   addiu     $a0, $s2, 0x340
/* 12F704 80111614 0C0445B7 */  jal        func_menu_801116DC
/* 12F708 80111618 02402021 */   addu      $a0, $s2, $zero
/* 12F70C 8011161C 02401021 */  addu       $v0, $s2, $zero
/* 12F710 80111620 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12F714 80111624 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12F718 80111628 8FB20018 */  lw         $s2, 0x18($sp)
/* 12F71C 8011162C 8FB10014 */  lw         $s1, 0x14($sp)
/* 12F720 80111630 8FB00010 */  lw         $s0, 0x10($sp)
/* 12F724 80111634 03E00008 */  jr         $ra
/* 12F728 80111638 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011163C
/* 12F72C 8011163C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12F730 80111640 AFB20018 */  sw         $s2, 0x18($sp)
/* 12F734 80111644 00809021 */  addu       $s2, $a0, $zero
/* 12F738 80111648 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12F73C 8011164C 00A09821 */  addu       $s3, $a1, $zero
/* 12F740 80111650 3C02800D */  lui        $v0, %hi(D_menu_800CF888)
/* 12F744 80111654 2442F888 */  addiu      $v0, $v0, %lo(D_menu_800CF888)
/* 12F748 80111658 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12F74C 8011165C AFB10014 */  sw         $s1, 0x14($sp)
/* 12F750 80111660 AFB00010 */  sw         $s0, 0x10($sp)
/* 12F754 80111664 0C0446E0 */  jal        func_menu_80111B80
/* 12F758 80111668 AE420054 */   sw        $v0, 0x54($s2)
/* 12F75C 8011166C 26500340 */  addiu      $s0, $s2, 0x340
/* 12F760 80111670 02002021 */  addu       $a0, $s0, $zero
/* 12F764 80111674 0C047CB9 */  jal        func_menu_8011F2E4
/* 12F768 80111678 24050002 */   addiu     $a1, $zero, 0x2
/* 12F76C 8011167C 2642022C */  addiu      $v0, $s2, 0x22C
/* 12F770 80111680 1040000D */  beqz       $v0, .Lmenu_801116B8
/* 12F774 80111684 02402021 */   addu      $a0, $s2, $zero
/* 12F778 80111688 1050000B */  beq        $v0, $s0, .Lmenu_801116B8
/* 12F77C 8011168C 00408821 */   addu      $s1, $v0, $zero
/* 12F780 80111690 2610FFA4 */  addiu      $s0, $s0, -0x5C
.Lmenu_80111694:
/* 12F784 80111694 8E020054 */  lw         $v0, 0x54($s0)
/* 12F788 80111698 24050002 */  addiu      $a1, $zero, 0x2
/* 12F78C 8011169C 84440010 */  lh         $a0, 0x10($v0)
/* 12F790 801116A0 8C420014 */  lw         $v0, 0x14($v0)
/* 12F794 801116A4 0040F809 */  jalr       $v0
/* 12F798 801116A8 02042021 */   addu      $a0, $s0, $a0
/* 12F79C 801116AC 1630FFF9 */  bne        $s1, $s0, .Lmenu_80111694
/* 12F7A0 801116B0 2610FFA4 */   addiu     $s0, $s0, -0x5C
/* 12F7A4 801116B4 02402021 */  addu       $a0, $s2, $zero
.Lmenu_801116B8:
/* 12F7A8 801116B8 0C048B0B */  jal        func_menu_80122C2C
/* 12F7AC 801116BC 02602821 */   addu      $a1, $s3, $zero
/* 12F7B0 801116C0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12F7B4 801116C4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12F7B8 801116C8 8FB20018 */  lw         $s2, 0x18($sp)
/* 12F7BC 801116CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 12F7C0 801116D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 12F7C4 801116D4 03E00008 */  jr         $ra
/* 12F7C8 801116D8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_801116DC
/* 12F7CC 801116DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12F7D0 801116E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 12F7D4 801116E4 00808021 */  addu       $s0, $a0, $zero
/* 12F7D8 801116E8 260401CC */  addiu      $a0, $s0, 0x1CC
/* 12F7DC 801116EC 00002821 */  addu       $a1, $zero, $zero
/* 12F7E0 801116F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12F7E4 801116F4 0C000697 */  jal        func_80001A5C
/* 12F7E8 801116F8 24060060 */   addiu     $a2, $zero, 0x60
/* 12F7EC 801116FC 260401A8 */  addiu      $a0, $s0, 0x1A8
/* 12F7F0 80111700 00002821 */  addu       $a1, $zero, $zero
/* 12F7F4 80111704 0C000697 */  jal        func_80001A5C
/* 12F7F8 80111708 24060010 */   addiu     $a2, $zero, 0x10
/* 12F7FC 8011170C 8E020280 */  lw         $v0, 0x280($s0)
/* 12F800 80111710 2603022C */  addiu      $v1, $s0, 0x22C
/* 12F804 80111714 84440018 */  lh         $a0, 0x18($v0)
/* 12F808 80111718 8C42001C */  lw         $v0, 0x1C($v0)
/* 12F80C 8011171C 0040F809 */  jalr       $v0
/* 12F810 80111720 00642021 */   addu      $a0, $v1, $a0
/* 12F814 80111724 8E0202DC */  lw         $v0, 0x2DC($s0)
/* 12F818 80111728 26030288 */  addiu      $v1, $s0, 0x288
/* 12F81C 8011172C 84440018 */  lh         $a0, 0x18($v0)
/* 12F820 80111730 8C42001C */  lw         $v0, 0x1C($v0)
/* 12F824 80111734 0040F809 */  jalr       $v0
/* 12F828 80111738 00642021 */   addu      $a0, $v1, $a0
/* 12F82C 8011173C 8E020338 */  lw         $v0, 0x338($s0)
/* 12F830 80111740 260302E4 */  addiu      $v1, $s0, 0x2E4
/* 12F834 80111744 84440018 */  lh         $a0, 0x18($v0)
/* 12F838 80111748 8C42001C */  lw         $v0, 0x1C($v0)
/* 12F83C 8011174C 0040F809 */  jalr       $v0
/* 12F840 80111750 00642021 */   addu      $a0, $v1, $a0
/* 12F844 80111754 0C049139 */  jal        func_menu_801244E4
/* 12F848 80111758 26040340 */   addiu     $a0, $s0, 0x340
/* 12F84C 8011175C 0C048B1D */  jal        func_menu_80122C74
/* 12F850 80111760 02002021 */   addu      $a0, $s0, $zero
/* 12F854 80111764 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12F858 80111768 8FB00010 */  lw         $s0, 0x10($sp)
/* 12F85C 8011176C 03E00008 */  jr         $ra
/* 12F860 80111770 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80111774
/* 12F864 80111774 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 12F868 80111778 AFB00038 */  sw         $s0, 0x38($sp)
/* 12F86C 8011177C 00808021 */  addu       $s0, $a0, $zero
/* 12F870 80111780 AFB1003C */  sw         $s1, 0x3C($sp)
/* 12F874 80111784 00A08821 */  addu       $s1, $a1, $zero
/* 12F878 80111788 27A40018 */  addiu      $a0, $sp, 0x18
/* 12F87C 8011178C AFBF0044 */  sw         $ra, 0x44($sp)
/* 12F880 80111790 0C0016DC */  jal        func_80005B70
/* 12F884 80111794 AFB20040 */   sw        $s2, 0x40($sp)
/* 12F888 80111798 27A50018 */  addiu      $a1, $sp, 0x18
/* 12F88C 8011179C 8E240084 */  lw         $a0, 0x84($s1)
/* 12F890 801117A0 962600E8 */  lhu        $a2, 0xE8($s1)
/* 12F894 801117A4 0C003053 */  jal        func_8000C14C
/* 12F898 801117A8 26320010 */   addiu     $s2, $s1, 0x10
/* 12F89C 801117AC 02002021 */  addu       $a0, $s0, $zero
/* 12F8A0 801117B0 27A60018 */  addiu      $a2, $sp, 0x18
/* 12F8A4 801117B4 9202019C */  lbu        $v0, 0x19C($s0)
/* 12F8A8 801117B8 27A30028 */  addiu      $v1, $sp, 0x28
/* 12F8AC 801117BC AFA30010 */  sw         $v1, 0x10($sp)
/* 12F8B0 801117C0 AFA00014 */  sw         $zero, 0x14($sp)
/* 12F8B4 801117C4 00021080 */  sll        $v0, $v0, 2
/* 12F8B8 801117C8 02021021 */  addu       $v0, $s0, $v0
/* 12F8BC 801117CC 8C4501CC */  lw         $a1, 0x1CC($v0)
/* 12F8C0 801117D0 0C04928A */  jal        func_menu_80124A28
/* 12F8C4 801117D4 02403821 */   addu      $a3, $s2, $zero
/* 12F8C8 801117D8 8FA30028 */  lw         $v1, 0x28($sp)
/* 12F8CC 801117DC 8E240010 */  lw         $a0, 0x10($s1)
/* 12F8D0 801117E0 8E420008 */  lw         $v0, 0x8($s2)
/* 12F8D4 801117E4 00641823 */  subu       $v1, $v1, $a0
/* 12F8D8 801117E8 44830000 */  mtc1       $v1, $f0
/* 12F8DC 801117EC 46800020 */  cvt.s.w    $f0, $f0
/* 12F8E0 801117F0 00441023 */  subu       $v0, $v0, $a0
/* 12F8E4 801117F4 44821000 */  mtc1       $v0, $f2
/* 12F8E8 801117F8 468010A0 */  cvt.s.w    $f2, $f2
/* 12F8EC 801117FC 46020003 */  div.s      $f0, $f0, $f2
/* 12F8F0 80111800 E60001A8 */  swc1       $f0, 0x1A8($s0)
/* 12F8F4 80111804 8FA20030 */  lw         $v0, 0x30($sp)
/* 12F8F8 80111808 8E230010 */  lw         $v1, 0x10($s1)
/* 12F8FC 8011180C 27A40018 */  addiu      $a0, $sp, 0x18
/* 12F900 80111810 00431023 */  subu       $v0, $v0, $v1
/* 12F904 80111814 44820000 */  mtc1       $v0, $f0
/* 12F908 80111818 46800020 */  cvt.s.w    $f0, $f0
/* 12F90C 8011181C 46020003 */  div.s      $f0, $f0, $f2
/* 12F910 80111820 E60001B0 */  swc1       $f0, 0x1B0($s0)
/* 12F914 80111824 8FA3002C */  lw         $v1, 0x2C($sp)
/* 12F918 80111828 8E450004 */  lw         $a1, 0x4($s2)
/* 12F91C 8011182C 8E42000C */  lw         $v0, 0xC($s2)
/* 12F920 80111830 00651823 */  subu       $v1, $v1, $a1
/* 12F924 80111834 44830000 */  mtc1       $v1, $f0
/* 12F928 80111838 46800020 */  cvt.s.w    $f0, $f0
/* 12F92C 8011183C 00451023 */  subu       $v0, $v0, $a1
/* 12F930 80111840 44821000 */  mtc1       $v0, $f2
/* 12F934 80111844 468010A0 */  cvt.s.w    $f2, $f2
/* 12F938 80111848 46020003 */  div.s      $f0, $f0, $f2
/* 12F93C 8011184C E60001AC */  swc1       $f0, 0x1AC($s0)
/* 12F940 80111850 8FA20034 */  lw         $v0, 0x34($sp)
/* 12F944 80111854 8E430004 */  lw         $v1, 0x4($s2)
/* 12F948 80111858 24050002 */  addiu      $a1, $zero, 0x2
/* 12F94C 8011185C 00431023 */  subu       $v0, $v0, $v1
/* 12F950 80111860 44820000 */  mtc1       $v0, $f0
/* 12F954 80111864 46800020 */  cvt.s.w    $f0, $f0
/* 12F958 80111868 46020003 */  div.s      $f0, $f0, $f2
/* 12F95C 8011186C 0C0016E2 */  jal        func_80005B88
/* 12F960 80111870 E60001B4 */   swc1      $f0, 0x1B4($s0)
/* 12F964 80111874 8FBF0044 */  lw         $ra, 0x44($sp)
/* 12F968 80111878 8FB20040 */  lw         $s2, 0x40($sp)
/* 12F96C 8011187C 8FB1003C */  lw         $s1, 0x3C($sp)
/* 12F970 80111880 8FB00038 */  lw         $s0, 0x38($sp)
/* 12F974 80111884 03E00008 */  jr         $ra
/* 12F978 80111888 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_8011188C
/* 12F97C 8011188C 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 12F980 80111890 AFB3005C */  sw         $s3, 0x5C($sp)
/* 12F984 80111894 00809821 */  addu       $s3, $a0, $zero
/* 12F988 80111898 AFB60068 */  sw         $s6, 0x68($sp)
/* 12F98C 8011189C 00A0B021 */  addu       $s6, $a1, $zero
/* 12F990 801118A0 27A40010 */  addiu      $a0, $sp, 0x10
/* 12F994 801118A4 00002821 */  addu       $a1, $zero, $zero
/* 12F998 801118A8 2406003C */  addiu      $a2, $zero, 0x3C
/* 12F99C 801118AC AFBF006C */  sw         $ra, 0x6C($sp)
/* 12F9A0 801118B0 AFB50064 */  sw         $s5, 0x64($sp)
/* 12F9A4 801118B4 AFB40060 */  sw         $s4, 0x60($sp)
/* 12F9A8 801118B8 AFB20058 */  sw         $s2, 0x58($sp)
/* 12F9AC 801118BC AFB10054 */  sw         $s1, 0x54($sp)
/* 12F9B0 801118C0 0C000697 */  jal        func_80001A5C
/* 12F9B4 801118C4 AFB00050 */   sw        $s0, 0x50($sp)
/* 12F9B8 801118C8 00009021 */  addu       $s2, $zero, $zero
/* 12F9BC 801118CC 24150400 */  addiu      $s5, $zero, 0x400
/* 12F9C0 801118D0 3C148000 */  lui        $s4, (0x80000000 >> 16)
/* 12F9C4 801118D4 2411022C */  addiu      $s1, $zero, 0x22C
/* 12F9C8 801118D8 02608021 */  addu       $s0, $s3, $zero
.Lmenu_801118DC:
/* 12F9CC 801118DC 27A30010 */  addiu      $v1, $sp, 0x10
/* 12F9D0 801118E0 02C01021 */  addu       $v0, $s6, $zero
/* 12F9D4 801118E4 24440030 */  addiu      $a0, $v0, 0x30
.Lmenu_801118E8:
/* 12F9D8 801118E8 8C470000 */  lw         $a3, 0x0($v0)
/* 12F9DC 801118EC 8C480004 */  lw         $t0, 0x4($v0)
/* 12F9E0 801118F0 8C490008 */  lw         $t1, 0x8($v0)
/* 12F9E4 801118F4 8C4A000C */  lw         $t2, 0xC($v0)
/* 12F9E8 801118F8 AC670000 */  sw         $a3, 0x0($v1)
/* 12F9EC 801118FC AC680004 */  sw         $t0, 0x4($v1)
/* 12F9F0 80111900 AC690008 */  sw         $t1, 0x8($v1)
/* 12F9F4 80111904 AC6A000C */  sw         $t2, 0xC($v1)
/* 12F9F8 80111908 24420010 */  addiu      $v0, $v0, 0x10
/* 12F9FC 8011190C 1444FFF6 */  bne        $v0, $a0, .Lmenu_801118E8
/* 12FA00 80111910 24630010 */   addiu     $v1, $v1, 0x10
/* 12FA04 80111914 8C470000 */  lw         $a3, 0x0($v0)
/* 12FA08 80111918 8C480004 */  lw         $t0, 0x4($v0)
/* 12FA0C 8011191C AC670000 */  sw         $a3, 0x0($v1)
/* 12FA10 80111920 AC680004 */  sw         $t0, 0x4($v1)
/* 12FA14 80111924 8FA2003C */  lw         $v0, 0x3C($sp)
/* 12FA18 80111928 02712021 */  addu       $a0, $s3, $s1
/* 12FA1C 8011192C A7B50030 */  sh         $s5, 0x30($sp)
/* 12FA20 80111930 AFB30038 */  sw         $s3, 0x38($sp)
/* 12FA24 80111934 00541025 */  or         $v0, $v0, $s4
/* 12FA28 80111938 AFA2003C */  sw         $v0, 0x3C($sp)
/* 12FA2C 8011193C 8E0201E4 */  lw         $v0, 0x1E4($s0)
/* 12FA30 80111940 27A50010 */  addiu      $a1, $sp, 0x10
/* 12FA34 80111944 0C047BCC */  jal        func_menu_8011EF30
/* 12FA38 80111948 AFA20048 */   sw        $v0, 0x48($sp)
/* 12FA3C 8011194C 14400003 */  bnez       $v0, .Lmenu_8011195C
/* 12FA40 80111950 2631005C */   addiu     $s1, $s1, 0x5C
/* 12FA44 80111954 0804465C */  j          .Lmenu_80111970
/* 12FA48 80111958 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8011195C:
/* 12FA4C 8011195C 26520001 */  addiu      $s2, $s2, 0x1
/* 12FA50 80111960 2A420003 */  slti       $v0, $s2, 0x3
/* 12FA54 80111964 1440FFDD */  bnez       $v0, .Lmenu_801118DC
/* 12FA58 80111968 2610000C */   addiu     $s0, $s0, 0xC
/* 12FA5C 8011196C 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_80111970:
/* 12FA60 80111970 8FBF006C */  lw         $ra, 0x6C($sp)
/* 12FA64 80111974 8FB60068 */  lw         $s6, 0x68($sp)
/* 12FA68 80111978 8FB50064 */  lw         $s5, 0x64($sp)
/* 12FA6C 8011197C 8FB40060 */  lw         $s4, 0x60($sp)
/* 12FA70 80111980 8FB3005C */  lw         $s3, 0x5C($sp)
/* 12FA74 80111984 8FB20058 */  lw         $s2, 0x58($sp)
/* 12FA78 80111988 8FB10054 */  lw         $s1, 0x54($sp)
/* 12FA7C 8011198C 8FB00050 */  lw         $s0, 0x50($sp)
/* 12FA80 80111990 03E00008 */  jr         $ra
/* 12FA84 80111994 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_menu_80111998
/* 12FA88 80111998 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 12FA8C 8011199C AFB1005C */  sw         $s1, 0x5C($sp)
/* 12FA90 801119A0 00808821 */  addu       $s1, $a0, $zero
/* 12FA94 801119A4 AFB20060 */  sw         $s2, 0x60($sp)
/* 12FA98 801119A8 00A09021 */  addu       $s2, $a1, $zero
/* 12FA9C 801119AC AFB00058 */  sw         $s0, 0x58($sp)
/* 12FAA0 801119B0 AFBF0064 */  sw         $ra, 0x64($sp)
/* 12FAA4 801119B4 0C0445DD */  jal        func_menu_80111774
/* 12FAA8 801119B8 00C08021 */   addu      $s0, $a2, $zero
/* 12FAAC 801119BC 27A40010 */  addiu      $a0, $sp, 0x10
/* 12FAB0 801119C0 00002821 */  addu       $a1, $zero, $zero
/* 12FAB4 801119C4 0C000697 */  jal        func_80001A5C
/* 12FAB8 801119C8 24060048 */   addiu     $a2, $zero, 0x48
/* 12FABC 801119CC 27A30010 */  addiu      $v1, $sp, 0x10
/* 12FAC0 801119D0 02401021 */  addu       $v0, $s2, $zero
/* 12FAC4 801119D4 26440030 */  addiu      $a0, $s2, 0x30
.Lmenu_801119D8:
/* 12FAC8 801119D8 8C470000 */  lw         $a3, 0x0($v0)
/* 12FACC 801119DC 8C480004 */  lw         $t0, 0x4($v0)
/* 12FAD0 801119E0 8C490008 */  lw         $t1, 0x8($v0)
/* 12FAD4 801119E4 8C4A000C */  lw         $t2, 0xC($v0)
/* 12FAD8 801119E8 AC670000 */  sw         $a3, 0x0($v1)
/* 12FADC 801119EC AC680004 */  sw         $t0, 0x4($v1)
/* 12FAE0 801119F0 AC690008 */  sw         $t1, 0x8($v1)
/* 12FAE4 801119F4 AC6A000C */  sw         $t2, 0xC($v1)
/* 12FAE8 801119F8 24420010 */  addiu      $v0, $v0, 0x10
/* 12FAEC 801119FC 1444FFF6 */  bne        $v0, $a0, .Lmenu_801119D8
/* 12FAF0 80111A00 24630010 */   addiu     $v1, $v1, 0x10
/* 12FAF4 80111A04 8C470000 */  lw         $a3, 0x0($v0)
/* 12FAF8 80111A08 8C480004 */  lw         $t0, 0x4($v0)
/* 12FAFC 80111A0C AC670000 */  sw         $a3, 0x0($v1)
/* 12FB00 80111A10 AC680004 */  sw         $t0, 0x4($v1)
/* 12FB04 80111A14 8FA20020 */  lw         $v0, 0x20($sp)
/* 12FB08 80111A18 8E0300F0 */  lw         $v1, 0xF0($s0)
/* 12FB0C 80111A1C 00431021 */  addu       $v0, $v0, $v1
/* 12FB10 80111A20 AFA20020 */  sw         $v0, 0x20($sp)
/* 12FB14 80111A24 8FA20024 */  lw         $v0, 0x24($sp)
/* 12FB18 80111A28 8E0300F4 */  lw         $v1, 0xF4($s0)
/* 12FB1C 80111A2C 00431021 */  addu       $v0, $v0, $v1
/* 12FB20 80111A30 AFA20024 */  sw         $v0, 0x24($sp)
/* 12FB24 80111A34 8FA20028 */  lw         $v0, 0x28($sp)
/* 12FB28 80111A38 8E0300F8 */  lw         $v1, 0xF8($s0)
/* 12FB2C 80111A3C 00431023 */  subu       $v0, $v0, $v1
/* 12FB30 80111A40 AFA20028 */  sw         $v0, 0x28($sp)
/* 12FB34 80111A44 8E0500FC */  lw         $a1, 0xFC($s0)
/* 12FB38 80111A48 8FA2003C */  lw         $v0, 0x3C($sp)
/* 12FB3C 80111A4C 8FA3002C */  lw         $v1, 0x2C($sp)
/* 12FB40 80111A50 3C048000 */  lui        $a0, (0x80000000 >> 16)
/* 12FB44 80111A54 AFB10038 */  sw         $s1, 0x38($sp)
/* 12FB48 80111A58 00441025 */  or         $v0, $v0, $a0
/* 12FB4C 80111A5C 00651823 */  subu       $v1, $v1, $a1
/* 12FB50 80111A60 AFA2003C */  sw         $v0, 0x3C($sp)
/* 12FB54 80111A64 AFA3002C */  sw         $v1, 0x2C($sp)
/* 12FB58 80111A68 964200E8 */  lhu        $v0, 0xE8($s2)
/* 12FB5C 80111A6C 262601B8 */  addiu      $a2, $s1, 0x1B8
/* 12FB60 80111A70 A7A20050 */  sh         $v0, 0x50($sp)
/* 12FB64 80111A74 8E420084 */  lw         $v0, 0x84($s2)
/* 12FB68 80111A78 26240340 */  addiu      $a0, $s1, 0x340
/* 12FB6C 80111A7C AFA20048 */  sw         $v0, 0x48($sp)
/* 12FB70 80111A80 8E2201CC */  lw         $v0, 0x1CC($s1)
/* 12FB74 80111A84 27A50010 */  addiu      $a1, $sp, 0x10
/* 12FB78 80111A88 AFA2004C */  sw         $v0, 0x4C($sp)
/* 12FB7C 80111A8C 0C047CDE */  jal        func_menu_8011F378
/* 12FB80 80111A90 AE2001C8 */   sw        $zero, 0x1C8($s1)
/* 12FB84 80111A94 8FBF0064 */  lw         $ra, 0x64($sp)
/* 12FB88 80111A98 8FB20060 */  lw         $s2, 0x60($sp)
/* 12FB8C 80111A9C 8FB1005C */  lw         $s1, 0x5C($sp)
/* 12FB90 80111AA0 8FB00058 */  lw         $s0, 0x58($sp)
/* 12FB94 80111AA4 03E00008 */  jr         $ra
/* 12FB98 80111AA8 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_menu_80111AAC
/* 12FB9C 80111AAC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12FBA0 80111AB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 12FBA4 80111AB4 00808021 */  addu       $s0, $a0, $zero
/* 12FBA8 80111AB8 AFB10014 */  sw         $s1, 0x14($sp)
/* 12FBAC 80111ABC 00A08821 */  addu       $s1, $a1, $zero
/* 12FBB0 80111AC0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 12FBB4 80111AC4 AFB20018 */  sw         $s2, 0x18($sp)
/* 12FBB8 80111AC8 8E020054 */  lw         $v0, 0x54($s0)
/* 12FBBC 80111ACC 00C09021 */  addu       $s2, $a2, $zero
/* 12FBC0 80111AD0 84440018 */  lh         $a0, 0x18($v0)
/* 12FBC4 80111AD4 8C42001C */  lw         $v0, 0x1C($v0)
/* 12FBC8 80111AD8 0040F809 */  jalr       $v0
/* 12FBCC 80111ADC 02042021 */   addu      $a0, $s0, $a0
/* 12FBD0 80111AE0 260301CC */  addiu      $v1, $s0, 0x1CC
/* 12FBD4 80111AE4 26220088 */  addiu      $v0, $s1, 0x88
/* 12FBD8 80111AE8 262400E8 */  addiu      $a0, $s1, 0xE8
.Lmenu_80111AEC:
/* 12FBDC 80111AEC 8C470000 */  lw         $a3, 0x0($v0)
/* 12FBE0 80111AF0 8C480004 */  lw         $t0, 0x4($v0)
/* 12FBE4 80111AF4 8C490008 */  lw         $t1, 0x8($v0)
/* 12FBE8 80111AF8 8C4A000C */  lw         $t2, 0xC($v0)
/* 12FBEC 80111AFC AC670000 */  sw         $a3, 0x0($v1)
/* 12FBF0 80111B00 AC680004 */  sw         $t0, 0x4($v1)
/* 12FBF4 80111B04 AC690008 */  sw         $t1, 0x8($v1)
/* 12FBF8 80111B08 AC6A000C */  sw         $t2, 0xC($v1)
/* 12FBFC 80111B0C 24420010 */  addiu      $v0, $v0, 0x10
/* 12FC00 80111B10 1444FFF6 */  bne        $v0, $a0, .Lmenu_80111AEC
/* 12FC04 80111B14 24630010 */   addiu     $v1, $v1, 0x10
/* 12FC08 80111B18 24020005 */  addiu      $v0, $zero, 0x5
/* 12FC0C 80111B1C 2442FFFF */  addiu      $v0, $v0, -0x1
.Lmenu_80111B20:
/* 12FC10 80111B20 0441FFFF */  bgez       $v0, .Lmenu_80111B20
/* 12FC14 80111B24 2442FFFF */   addiu     $v0, $v0, -0x1
/* 12FC18 80111B28 02002021 */  addu       $a0, $s0, $zero
/* 12FC1C 80111B2C 02202821 */  addu       $a1, $s1, $zero
/* 12FC20 80111B30 0C048B92 */  jal        func_menu_80122E48
/* 12FC24 80111B34 02403021 */   addu      $a2, $s2, $zero
/* 12FC28 80111B38 1040000A */  beqz       $v0, .Lmenu_80111B64
/* 12FC2C 80111B3C 02002021 */   addu      $a0, $s0, $zero
/* 12FC30 80111B40 0C044623 */  jal        func_menu_8011188C
/* 12FC34 80111B44 02202821 */   addu      $a1, $s1, $zero
/* 12FC38 80111B48 10400006 */  beqz       $v0, .Lmenu_80111B64
/* 12FC3C 80111B4C 02002021 */   addu      $a0, $s0, $zero
/* 12FC40 80111B50 02202821 */  addu       $a1, $s1, $zero
/* 12FC44 80111B54 0C044666 */  jal        func_menu_80111998
/* 12FC48 80111B58 02403021 */   addu      $a2, $s2, $zero
/* 12FC4C 80111B5C 080446DA */  j          .Lmenu_80111B68
/* 12FC50 80111B60 00000000 */   nop
.Lmenu_80111B64:
/* 12FC54 80111B64 00001021 */  addu       $v0, $zero, $zero
.Lmenu_80111B68:
/* 12FC58 80111B68 8FBF001C */  lw         $ra, 0x1C($sp)
/* 12FC5C 80111B6C 8FB20018 */  lw         $s2, 0x18($sp)
/* 12FC60 80111B70 8FB10014 */  lw         $s1, 0x14($sp)
/* 12FC64 80111B74 8FB00010 */  lw         $s0, 0x10($sp)
/* 12FC68 80111B78 03E00008 */  jr         $ra
/* 12FC6C 80111B7C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80111B80
/* 12FC70 80111B80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12FC74 80111B84 AFBF0010 */  sw         $ra, 0x10($sp)
/* 12FC78 80111B88 8C820018 */  lw         $v0, 0x18($a0)
/* 12FC7C 80111B8C 04410003 */  bgez       $v0, .Lmenu_80111B9C
/* 12FC80 80111B90 24020001 */   addiu     $v0, $zero, 0x1
/* 12FC84 80111B94 0C048BC6 */  jal        func_menu_80122F18
/* 12FC88 80111B98 00000000 */   nop
.Lmenu_80111B9C:
/* 12FC8C 80111B9C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 12FC90 80111BA0 03E00008 */  jr         $ra
/* 12FC94 80111BA4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80111BA8
/* 12FC98 80111BA8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12FC9C 80111BAC AFB00020 */  sw         $s0, 0x20($sp)
/* 12FCA0 80111BB0 00808021 */  addu       $s0, $a0, $zero
/* 12FCA4 80111BB4 27A50010 */  addiu      $a1, $sp, 0x10
/* 12FCA8 80111BB8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 12FCAC 80111BBC AFB3002C */  sw         $s3, 0x2C($sp)
/* 12FCB0 80111BC0 AFB20028 */  sw         $s2, 0x28($sp)
/* 12FCB4 80111BC4 AFB10024 */  sw         $s1, 0x24($sp)
/* 12FCB8 80111BC8 8E120038 */  lw         $s2, 0x38($s0)
/* 12FCBC 80111BCC 8E020030 */  lw         $v0, 0x30($s0)
/* 12FCC0 80111BD0 3C01800D */  lui        $at, %hi(D_menu_800CF880)
/* 12FCC4 80111BD4 C420F880 */  lwc1       $f0, %lo(D_menu_800CF880)($at)
/* 12FCC8 80111BD8 8E030034 */  lw         $v1, 0x34($s0)
/* 12FCCC 80111BDC 02429023 */  subu       $s2, $s2, $v0
/* 12FCD0 80111BE0 44921000 */  mtc1       $s2, $f2
/* 12FCD4 80111BE4 468010A0 */  cvt.s.w    $f2, $f2
/* 12FCD8 80111BE8 8E02003C */  lw         $v0, 0x3C($s0)
/* 12FCDC 80111BEC 46001082 */  mul.s      $f2, $f2, $f0
/* 12FCE0 80111BF0 AFA00014 */  sw         $zero, 0x14($sp)
/* 12FCE4 80111BF4 AFA00010 */  sw         $zero, 0x10($sp)
/* 12FCE8 80111BF8 00431023 */  subu       $v0, $v0, $v1
/* 12FCEC 80111BFC AFA2001C */  sw         $v0, 0x1C($sp)
/* 12FCF0 80111C00 4600110D */  trunc.w.s  $f4, $f2
/* 12FCF4 80111C04 44112000 */  mfc1       $s1, $f4
/* 12FCF8 80111C08 AFB10018 */  sw         $s1, 0x18($sp)
/* 12FCFC 80111C0C 8E020280 */  lw         $v0, 0x280($s0)
/* 12FD00 80111C10 2613022C */  addiu      $s3, $s0, 0x22C
/* 12FD04 80111C14 84440028 */  lh         $a0, 0x28($v0)
/* 12FD08 80111C18 8C42002C */  lw         $v0, 0x2C($v0)
/* 12FD0C 80111C1C 0040F809 */  jalr       $v0
/* 12FD10 80111C20 02642021 */   addu      $a0, $s3, $a0
/* 12FD14 80111C24 9203019C */  lbu        $v1, 0x19C($s0)
/* 12FD18 80111C28 00031040 */  sll        $v0, $v1, 1
/* 12FD1C 80111C2C 00431021 */  addu       $v0, $v0, $v1
/* 12FD20 80111C30 00021080 */  sll        $v0, $v0, 2
/* 12FD24 80111C34 02021021 */  addu       $v0, $s0, $v0
/* 12FD28 80111C38 8C4201E4 */  lw         $v0, 0x1E4($v0)
/* 12FD2C 80111C3C 27A50010 */  addiu      $a1, $sp, 0x10
/* 12FD30 80111C40 AE620058 */  sw         $v0, 0x58($s3)
/* 12FD34 80111C44 8FA20018 */  lw         $v0, 0x18($sp)
/* 12FD38 80111C48 02518823 */  subu       $s1, $s2, $s1
/* 12FD3C 80111C4C AFB10018 */  sw         $s1, 0x18($sp)
/* 12FD40 80111C50 AFA20010 */  sw         $v0, 0x10($sp)
/* 12FD44 80111C54 8E0202DC */  lw         $v0, 0x2DC($s0)
/* 12FD48 80111C58 26110288 */  addiu      $s1, $s0, 0x288
/* 12FD4C 80111C5C 84440028 */  lh         $a0, 0x28($v0)
/* 12FD50 80111C60 8C42002C */  lw         $v0, 0x2C($v0)
/* 12FD54 80111C64 0040F809 */  jalr       $v0
/* 12FD58 80111C68 02242021 */   addu      $a0, $s1, $a0
/* 12FD5C 80111C6C 9203019C */  lbu        $v1, 0x19C($s0)
/* 12FD60 80111C70 00031040 */  sll        $v0, $v1, 1
/* 12FD64 80111C74 00431021 */  addu       $v0, $v0, $v1
/* 12FD68 80111C78 00021080 */  sll        $v0, $v0, 2
/* 12FD6C 80111C7C 02021021 */  addu       $v0, $s0, $v0
/* 12FD70 80111C80 8C4201E8 */  lw         $v0, 0x1E8($v0)
/* 12FD74 80111C84 AE220058 */  sw         $v0, 0x58($s1)
/* 12FD78 80111C88 8FA20018 */  lw         $v0, 0x18($sp)
/* 12FD7C 80111C8C 27A50010 */  addiu      $a1, $sp, 0x10
/* 12FD80 80111C90 AFB20018 */  sw         $s2, 0x18($sp)
/* 12FD84 80111C94 AFA20010 */  sw         $v0, 0x10($sp)
/* 12FD88 80111C98 8E020338 */  lw         $v0, 0x338($s0)
/* 12FD8C 80111C9C 261102E4 */  addiu      $s1, $s0, 0x2E4
/* 12FD90 80111CA0 84440028 */  lh         $a0, 0x28($v0)
/* 12FD94 80111CA4 8C42002C */  lw         $v0, 0x2C($v0)
/* 12FD98 80111CA8 0040F809 */  jalr       $v0
/* 12FD9C 80111CAC 02242021 */   addu      $a0, $s1, $a0
/* 12FDA0 80111CB0 9203019C */  lbu        $v1, 0x19C($s0)
/* 12FDA4 80111CB4 00031040 */  sll        $v0, $v1, 1
/* 12FDA8 80111CB8 00431021 */  addu       $v0, $v0, $v1
/* 12FDAC 80111CBC 00021080 */  sll        $v0, $v0, 2
/* 12FDB0 80111CC0 02021021 */  addu       $v0, $s0, $v0
/* 12FDB4 80111CC4 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 12FDB8 80111CC8 AE220058 */  sw         $v0, 0x58($s1)
/* 12FDBC 80111CCC 8E02003C */  lw         $v0, 0x3C($s0)
/* 12FDC0 80111CD0 8E030034 */  lw         $v1, 0x34($s0)
/* 12FDC4 80111CD4 C60001AC */  lwc1       $f0, 0x1AC($s0)
/* 12FDC8 80111CD8 00431023 */  subu       $v0, $v0, $v1
/* 12FDCC 80111CDC 44821000 */  mtc1       $v0, $f2
/* 12FDD0 80111CE0 468010A0 */  cvt.s.w    $f2, $f2
/* 12FDD4 80111CE4 46020002 */  mul.s      $f0, $f0, $f2
/* 12FDD8 80111CE8 4600010D */  trunc.w.s  $f4, $f0
/* 12FDDC 80111CEC E7A40014 */  swc1       $f4, 0x14($sp)
/* 12FDE0 80111CF0 8E02003C */  lw         $v0, 0x3C($s0)
/* 12FDE4 80111CF4 8E030034 */  lw         $v1, 0x34($s0)
/* 12FDE8 80111CF8 C60001B4 */  lwc1       $f0, 0x1B4($s0)
/* 12FDEC 80111CFC 00431023 */  subu       $v0, $v0, $v1
/* 12FDF0 80111D00 44821000 */  mtc1       $v0, $f2
/* 12FDF4 80111D04 468010A0 */  cvt.s.w    $f2, $f2
/* 12FDF8 80111D08 46020002 */  mul.s      $f0, $f0, $f2
/* 12FDFC 80111D0C 4600010D */  trunc.w.s  $f4, $f0
/* 12FE00 80111D10 E7A4001C */  swc1       $f4, 0x1C($sp)
/* 12FE04 80111D14 8E020038 */  lw         $v0, 0x38($s0)
/* 12FE08 80111D18 8E030030 */  lw         $v1, 0x30($s0)
/* 12FE0C 80111D1C C60001A8 */  lwc1       $f0, 0x1A8($s0)
/* 12FE10 80111D20 00431023 */  subu       $v0, $v0, $v1
/* 12FE14 80111D24 44821000 */  mtc1       $v0, $f2
/* 12FE18 80111D28 468010A0 */  cvt.s.w    $f2, $f2
/* 12FE1C 80111D2C 46020002 */  mul.s      $f0, $f0, $f2
/* 12FE20 80111D30 4600010D */  trunc.w.s  $f4, $f0
/* 12FE24 80111D34 E7A40010 */  swc1       $f4, 0x10($sp)
/* 12FE28 80111D38 8E020038 */  lw         $v0, 0x38($s0)
/* 12FE2C 80111D3C 8E030030 */  lw         $v1, 0x30($s0)
/* 12FE30 80111D40 C60201B0 */  lwc1       $f2, 0x1B0($s0)
/* 12FE34 80111D44 00431023 */  subu       $v0, $v0, $v1
/* 12FE38 80111D48 44820000 */  mtc1       $v0, $f0
/* 12FE3C 80111D4C 46800020 */  cvt.s.w    $f0, $f0
/* 12FE40 80111D50 46001082 */  mul.s      $f2, $f2, $f0
/* 12FE44 80111D54 27A50010 */  addiu      $a1, $sp, 0x10
/* 12FE48 80111D58 26110340 */  addiu      $s1, $s0, 0x340
/* 12FE4C 80111D5C 4600110D */  trunc.w.s  $f4, $f2
/* 12FE50 80111D60 E7A40018 */  swc1       $f4, 0x18($sp)
/* 12FE54 80111D64 0C04936A */  jal        func_menu_80124DA8
/* 12FE58 80111D68 02202021 */   addu      $a0, $s1, $zero
/* 12FE5C 80111D6C 9202019C */  lbu        $v0, 0x19C($s0)
/* 12FE60 80111D70 00021080 */  sll        $v0, $v0, 2
/* 12FE64 80111D74 02028021 */  addu       $s0, $s0, $v0
/* 12FE68 80111D78 8E0201CC */  lw         $v0, 0x1CC($s0)
/* 12FE6C 80111D7C AE220060 */  sw         $v0, 0x60($s1)
/* 12FE70 80111D80 8FBF0030 */  lw         $ra, 0x30($sp)
/* 12FE74 80111D84 8FB3002C */  lw         $s3, 0x2C($sp)
/* 12FE78 80111D88 8FB20028 */  lw         $s2, 0x28($sp)
/* 12FE7C 80111D8C 8FB10024 */  lw         $s1, 0x24($sp)
/* 12FE80 80111D90 8FB00020 */  lw         $s0, 0x20($sp)
/* 12FE84 80111D94 00001021 */  addu       $v0, $zero, $zero
/* 12FE88 80111D98 03E00008 */  jr         $ra
/* 12FE8C 80111D9C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80111DA0
/* 12FE90 80111DA0 03E00008 */  jr         $ra
/* 12FE94 80111DA4 24820340 */   addiu     $v0, $a0, 0x340
