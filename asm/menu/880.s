.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8011E780
/* 13C870 8011E780 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13C874 8011E784 AFB20018 */  sw         $s2, 0x18($sp)
/* 13C878 8011E788 00809021 */  addu       $s2, $a0, $zero
/* 13C87C 8011E78C AFBF0020 */  sw         $ra, 0x20($sp)
/* 13C880 8011E790 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13C884 8011E794 AFB10014 */  sw         $s1, 0x14($sp)
/* 13C888 8011E798 0C04793C */  jal        func_menu_8011E4F0
/* 13C88C 8011E79C AFB00010 */   sw        $s0, 0x10($sp)
/* 13C890 8011E7A0 3C02800D */  lui        $v0, %hi(D_menu_800D0B10)
/* 13C894 8011E7A4 24420B10 */  addiu      $v0, $v0, %lo(D_menu_800D0B10)
/* 13C898 8011E7A8 26440058 */  addiu      $a0, $s2, 0x58
/* 13C89C 8011E7AC 0C0495B8 */  jal        func_menu_801256E0
/* 13C8A0 8011E7B0 AE420054 */   sw        $v0, 0x54($s2)
/* 13C8A4 8011E7B4 265100FC */  addiu      $s1, $s2, 0xFC
/* 13C8A8 8011E7B8 24100007 */  addiu      $s0, $zero, 0x7
/* 13C8AC 8011E7BC 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_8011E7C0:
/* 13C8B0 8011E7C0 0C047BA4 */  jal        func_menu_8011EE90
/* 13C8B4 8011E7C4 02202021 */   addu      $a0, $s1, $zero
/* 13C8B8 8011E7C8 2610FFFF */  addiu      $s0, $s0, -0x1
/* 13C8BC 8011E7CC 1613FFFC */  bne        $s0, $s3, .Lmenu_8011E7C0
/* 13C8C0 8011E7D0 2631005C */   addiu     $s1, $s1, 0x5C
/* 13C8C4 8011E7D4 0C0490D1 */  jal        func_menu_80124344
/* 13C8C8 8011E7D8 02402021 */   addu      $a0, $s2, $zero
/* 13C8CC 8011E7DC 02401021 */  addu       $v0, $s2, $zero
/* 13C8D0 8011E7E0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13C8D4 8011E7E4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13C8D8 8011E7E8 8FB20018 */  lw         $s2, 0x18($sp)
/* 13C8DC 8011E7EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 13C8E0 8011E7F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C8E4 8011E7F4 03E00008 */  jr         $ra
/* 13C8E8 8011E7F8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011E7FC
/* 13C8EC 8011E7FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13C8F0 8011E800 AFB20018 */  sw         $s2, 0x18($sp)
/* 13C8F4 8011E804 00809021 */  addu       $s2, $a0, $zero
/* 13C8F8 8011E808 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13C8FC 8011E80C 00A09821 */  addu       $s3, $a1, $zero
/* 13C900 8011E810 3C02800D */  lui        $v0, %hi(D_menu_800D0B10)
/* 13C904 8011E814 24420B10 */  addiu      $v0, $v0, %lo(D_menu_800D0B10)
/* 13C908 8011E818 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13C90C 8011E81C AFB10014 */  sw         $s1, 0x14($sp)
/* 13C910 8011E820 AFB00010 */  sw         $s0, 0x10($sp)
/* 13C914 8011E824 0C049139 */  jal        func_menu_801244E4
/* 13C918 8011E828 AE420054 */   sw        $v0, 0x54($s2)
/* 13C91C 8011E82C 264200FC */  addiu      $v0, $s2, 0xFC
/* 13C920 8011E830 1040000C */  beqz       $v0, .Lmenu_8011E864
/* 13C924 8011E834 265003DC */   addiu     $s0, $s2, 0x3DC
/* 13C928 8011E838 1050000A */  beq        $v0, $s0, .Lmenu_8011E864
/* 13C92C 8011E83C 00408821 */   addu      $s1, $v0, $zero
/* 13C930 8011E840 2610FFA4 */  addiu      $s0, $s0, -0x5C
.Lmenu_8011E844:
/* 13C934 8011E844 8E020054 */  lw         $v0, 0x54($s0)
/* 13C938 8011E848 24050002 */  addiu      $a1, $zero, 0x2
/* 13C93C 8011E84C 84440010 */  lh         $a0, 0x10($v0)
/* 13C940 8011E850 8C420014 */  lw         $v0, 0x14($v0)
/* 13C944 8011E854 0040F809 */  jalr       $v0
/* 13C948 8011E858 02042021 */   addu      $a0, $s0, $a0
/* 13C94C 8011E85C 1630FFF9 */  bne        $s1, $s0, .Lmenu_8011E844
/* 13C950 8011E860 2610FFA4 */   addiu     $s0, $s0, -0x5C
.Lmenu_8011E864:
/* 13C954 8011E864 26440058 */  addiu      $a0, $s2, 0x58
/* 13C958 8011E868 0C0495C7 */  jal        func_menu_8012571C
/* 13C95C 8011E86C 24050002 */   addiu     $a1, $zero, 0x2
/* 13C960 8011E870 02402021 */  addu       $a0, $s2, $zero
/* 13C964 8011E874 0C04794B */  jal        func_menu_8011E52C
/* 13C968 8011E878 02602821 */   addu      $a1, $s3, $zero
/* 13C96C 8011E87C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13C970 8011E880 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13C974 8011E884 8FB20018 */  lw         $s2, 0x18($sp)
/* 13C978 8011E888 8FB10014 */  lw         $s1, 0x14($sp)
/* 13C97C 8011E88C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C980 8011E890 03E00008 */  jr         $ra
/* 13C984 8011E894 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011E898
/* 13C988 8011E898 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13C98C 8011E89C AFB00010 */  sw         $s0, 0x10($sp)
/* 13C990 8011E8A0 00808021 */  addu       $s0, $a0, $zero
/* 13C994 8011E8A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 13C998 8011E8A8 AFB20018 */  sw         $s2, 0x18($sp)
/* 13C99C 8011E8AC AFB10014 */  sw         $s1, 0x14($sp)
/* 13C9A0 8011E8B0 8E020054 */  lw         $v0, 0x54($s0)
/* 13C9A4 8011E8B4 00A09021 */  addu       $s2, $a1, $zero
/* 13C9A8 8011E8B8 84440018 */  lh         $a0, 0x18($v0)
/* 13C9AC 8011E8BC 8C42001C */  lw         $v0, 0x1C($v0)
/* 13C9B0 8011E8C0 0040F809 */  jalr       $v0
/* 13C9B4 8011E8C4 02042021 */   addu      $a0, $s0, $a0
/* 13C9B8 8011E8C8 02002021 */  addu       $a0, $s0, $zero
/* 13C9BC 8011E8CC 0C0490FB */  jal        func_menu_801243EC
/* 13C9C0 8011E8D0 02402821 */   addu      $a1, $s2, $zero
/* 13C9C4 8011E8D4 1040001B */  beqz       $v0, .Lmenu_8011E944
/* 13C9C8 8011E8D8 00008821 */   addu      $s1, $zero, $zero
/* 13C9CC 8011E8DC 02002021 */  addu       $a0, $s0, $zero
/* 13C9D0 8011E8E0 0C047AAC */  jal        func_menu_8011EAB0
/* 13C9D4 8011E8E4 02402821 */   addu      $a1, $s2, $zero
/* 13C9D8 8011E8E8 10400004 */  beqz       $v0, .Lmenu_8011E8FC
/* 13C9DC 8011E8EC 02002021 */   addu      $a0, $s0, $zero
/* 13C9E0 8011E8F0 0C047A5D */  jal        func_menu_8011E974
/* 13C9E4 8011E8F4 02402821 */   addu      $a1, $s2, $zero
/* 13C9E8 8011E8F8 0002882B */  sltu       $s1, $zero, $v0
.Lmenu_8011E8FC:
/* 13C9EC 8011E8FC 12200011 */  beqz       $s1, .Lmenu_8011E944
/* 13C9F0 8011E900 00000000 */   nop
/* 13C9F4 8011E904 8E42005C */  lw         $v0, 0x5C($s2)
/* 13C9F8 8011E908 14400006 */  bnez       $v0, .Lmenu_8011E924
/* 13C9FC 8011E90C 26030058 */   addiu     $v1, $s0, 0x58
/* 13CA00 8011E910 3C04F7FF */  lui        $a0, (0xF7FFFFFF >> 16)
/* 13CA04 8011E914 8C620018 */  lw         $v0, 0x18($v1)
/* 13CA08 8011E918 3484FFFF */  ori        $a0, $a0, (0xF7FFFFFF & 0xFFFF)
/* 13CA0C 8011E91C 00441024 */  and        $v0, $v0, $a0
/* 13CA10 8011E920 AC620018 */  sw         $v0, 0x18($v1)
.Lmenu_8011E924:
/* 13CA14 8011E924 8E020054 */  lw         $v0, 0x54($s0)
/* 13CA18 8011E928 26450010 */  addiu      $a1, $s2, 0x10
/* 13CA1C 8011E92C 84440028 */  lh         $a0, 0x28($v0)
/* 13CA20 8011E930 8C42002C */  lw         $v0, 0x2C($v0)
/* 13CA24 8011E934 0040F809 */  jalr       $v0
/* 13CA28 8011E938 02042021 */   addu      $a0, $s0, $a0
/* 13CA2C 8011E93C 08047A57 */  j          .Lmenu_8011E95C
/* 13CA30 8011E940 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_8011E944:
/* 13CA34 8011E944 8E020054 */  lw         $v0, 0x54($s0)
/* 13CA38 8011E948 84440018 */  lh         $a0, 0x18($v0)
/* 13CA3C 8011E94C 8C42001C */  lw         $v0, 0x1C($v0)
/* 13CA40 8011E950 0040F809 */  jalr       $v0
/* 13CA44 8011E954 02042021 */   addu      $a0, $s0, $a0
/* 13CA48 8011E958 00001021 */  addu       $v0, $zero, $zero
.Lmenu_8011E95C:
/* 13CA4C 8011E95C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 13CA50 8011E960 8FB20018 */  lw         $s2, 0x18($sp)
/* 13CA54 8011E964 8FB10014 */  lw         $s1, 0x14($sp)
/* 13CA58 8011E968 8FB00010 */  lw         $s0, 0x10($sp)
/* 13CA5C 8011E96C 03E00008 */  jr         $ra
/* 13CA60 8011E970 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011E974
/* 13CA64 8011E974 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 13CA68 8011E978 AFB50064 */  sw         $s5, 0x64($sp)
/* 13CA6C 8011E97C 0080A821 */  addu       $s5, $a0, $zero
/* 13CA70 8011E980 AFB40060 */  sw         $s4, 0x60($sp)
/* 13CA74 8011E984 00A0A021 */  addu       $s4, $a1, $zero
/* 13CA78 8011E988 27A40010 */  addiu      $a0, $sp, 0x10
/* 13CA7C 8011E98C 00002821 */  addu       $a1, $zero, $zero
/* 13CA80 8011E990 2406003C */  addiu      $a2, $zero, 0x3C
/* 13CA84 8011E994 AFBF0074 */  sw         $ra, 0x74($sp)
/* 13CA88 8011E998 AFBE0070 */  sw         $fp, 0x70($sp)
/* 13CA8C 8011E99C AFB7006C */  sw         $s7, 0x6C($sp)
/* 13CA90 8011E9A0 AFB60068 */  sw         $s6, 0x68($sp)
/* 13CA94 8011E9A4 AFB3005C */  sw         $s3, 0x5C($sp)
/* 13CA98 8011E9A8 AFB20058 */  sw         $s2, 0x58($sp)
/* 13CA9C 8011E9AC AFB10054 */  sw         $s1, 0x54($sp)
/* 13CAA0 8011E9B0 0C000697 */  jal        func_80001A5C
/* 13CAA4 8011E9B4 AFB00050 */   sw        $s0, 0x50($sp)
/* 13CAA8 8011E9B8 00009821 */  addu       $s3, $zero, $zero
/* 13CAAC 8011E9BC 26960030 */  addiu      $s6, $s4, 0x30
/* 13CAB0 8011E9C0 241E0400 */  addiu      $fp, $zero, 0x400
/* 13CAB4 8011E9C4 3C178000 */  lui        $s7, (0x80000000 >> 16)
/* 13CAB8 8011E9C8 241200FC */  addiu      $s2, $zero, 0xFC
/* 13CABC 8011E9CC 02A08821 */  addu       $s1, $s5, $zero
/* 13CAC0 8011E9D0 02808021 */  addu       $s0, $s4, $zero
.Lmenu_8011E9D4:
/* 13CAC4 8011E9D4 27A30010 */  addiu      $v1, $sp, 0x10
/* 13CAC8 8011E9D8 02801021 */  addu       $v0, $s4, $zero
.Lmenu_8011E9DC:
/* 13CACC 8011E9DC 8C470000 */  lw         $a3, 0x0($v0)
/* 13CAD0 8011E9E0 8C480004 */  lw         $t0, 0x4($v0)
/* 13CAD4 8011E9E4 8C490008 */  lw         $t1, 0x8($v0)
/* 13CAD8 8011E9E8 8C4A000C */  lw         $t2, 0xC($v0)
/* 13CADC 8011E9EC AC670000 */  sw         $a3, 0x0($v1)
/* 13CAE0 8011E9F0 AC680004 */  sw         $t0, 0x4($v1)
/* 13CAE4 8011E9F4 AC690008 */  sw         $t1, 0x8($v1)
/* 13CAE8 8011E9F8 AC6A000C */  sw         $t2, 0xC($v1)
/* 13CAEC 8011E9FC 24420010 */  addiu      $v0, $v0, 0x10
/* 13CAF0 8011EA00 1456FFF6 */  bne        $v0, $s6, .Lmenu_8011E9DC
/* 13CAF4 8011EA04 24630010 */   addiu     $v1, $v1, 0x10
/* 13CAF8 8011EA08 8C470000 */  lw         $a3, 0x0($v0)
/* 13CAFC 8011EA0C 8C480004 */  lw         $t0, 0x4($v0)
/* 13CB00 8011EA10 AC670000 */  sw         $a3, 0x0($v1)
/* 13CB04 8011EA14 AC680004 */  sw         $t0, 0x4($v1)
/* 13CB08 8011EA18 8FA2003C */  lw         $v0, 0x3C($sp)
/* 13CB0C 8011EA1C A7BE0030 */  sh         $fp, 0x30($sp)
/* 13CB10 8011EA20 AFB50038 */  sw         $s5, 0x38($sp)
/* 13CB14 8011EA24 00571025 */  or         $v0, $v0, $s7
/* 13CB18 8011EA28 AFA2003C */  sw         $v0, 0x3C($sp)
/* 13CB1C 8011EA2C 8E020038 */  lw         $v0, 0x38($s0)
/* 13CB20 8011EA30 02B22021 */  addu       $a0, $s5, $s2
/* 13CB24 8011EA34 AFA20048 */  sw         $v0, 0x48($sp)
/* 13CB28 8011EA38 8E020038 */  lw         $v0, 0x38($s0)
/* 13CB2C 8011EA3C AE2203DC */  sw         $v0, 0x3DC($s1)
/* 13CB30 8011EA40 8A870022 */  lwl        $a3, 0x22($s4)
/* 13CB34 8011EA44 9A870025 */  lwr        $a3, 0x25($s4)
/* 13CB38 8011EA48 ABA70032 */  swl        $a3, 0x32($sp)
/* 13CB3C 8011EA4C BBA70035 */  swr        $a3, 0x35($sp)
/* 13CB40 8011EA50 0C047BCC */  jal        func_menu_8011EF30
/* 13CB44 8011EA54 27A50010 */   addiu     $a1, $sp, 0x10
/* 13CB48 8011EA58 14400003 */  bnez       $v0, .Lmenu_8011EA68
/* 13CB4C 8011EA5C 2652005C */   addiu     $s2, $s2, 0x5C
/* 13CB50 8011EA60 08047AA0 */  j          .Lmenu_8011EA80
/* 13CB54 8011EA64 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8011EA68:
/* 13CB58 8011EA68 26310004 */  addiu      $s1, $s1, 0x4
/* 13CB5C 8011EA6C 26730001 */  addiu      $s3, $s3, 0x1
/* 13CB60 8011EA70 2A620008 */  slti       $v0, $s3, 0x8
/* 13CB64 8011EA74 1440FFD7 */  bnez       $v0, .Lmenu_8011E9D4
/* 13CB68 8011EA78 26100004 */   addiu     $s0, $s0, 0x4
/* 13CB6C 8011EA7C 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_8011EA80:
/* 13CB70 8011EA80 8FBF0074 */  lw         $ra, 0x74($sp)
/* 13CB74 8011EA84 8FBE0070 */  lw         $fp, 0x70($sp)
/* 13CB78 8011EA88 8FB7006C */  lw         $s7, 0x6C($sp)
/* 13CB7C 8011EA8C 8FB60068 */  lw         $s6, 0x68($sp)
/* 13CB80 8011EA90 8FB50064 */  lw         $s5, 0x64($sp)
/* 13CB84 8011EA94 8FB40060 */  lw         $s4, 0x60($sp)
/* 13CB88 8011EA98 8FB3005C */  lw         $s3, 0x5C($sp)
/* 13CB8C 8011EA9C 8FB20058 */  lw         $s2, 0x58($sp)
/* 13CB90 8011EAA0 8FB10054 */  lw         $s1, 0x54($sp)
/* 13CB94 8011EAA4 8FB00050 */  lw         $s0, 0x50($sp)
/* 13CB98 8011EAA8 03E00008 */  jr         $ra
/* 13CB9C 8011EAAC 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_menu_8011EAB0
/* 13CBA0 8011EAB0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 13CBA4 8011EAB4 AFB1004C */  sw         $s1, 0x4C($sp)
/* 13CBA8 8011EAB8 00808821 */  addu       $s1, $a0, $zero
/* 13CBAC 8011EABC AFB00048 */  sw         $s0, 0x48($sp)
/* 13CBB0 8011EAC0 00A08021 */  addu       $s0, $a1, $zero
/* 13CBB4 8011EAC4 27A40010 */  addiu      $a0, $sp, 0x10
/* 13CBB8 8011EAC8 00002821 */  addu       $a1, $zero, $zero
/* 13CBBC 8011EACC AFBF0050 */  sw         $ra, 0x50($sp)
/* 13CBC0 8011EAD0 0C000697 */  jal        func_80001A5C
/* 13CBC4 8011EAD4 24060038 */   addiu     $a2, $zero, 0x38
/* 13CBC8 8011EAD8 27A30010 */  addiu      $v1, $sp, 0x10
/* 13CBCC 8011EADC 02001021 */  addu       $v0, $s0, $zero
/* 13CBD0 8011EAE0 26040030 */  addiu      $a0, $s0, 0x30
.Lmenu_8011EAE4:
/* 13CBD4 8011EAE4 8C470000 */  lw         $a3, 0x0($v0)
/* 13CBD8 8011EAE8 8C480004 */  lw         $t0, 0x4($v0)
/* 13CBDC 8011EAEC 8C490008 */  lw         $t1, 0x8($v0)
/* 13CBE0 8011EAF0 8C4A000C */  lw         $t2, 0xC($v0)
/* 13CBE4 8011EAF4 AC670000 */  sw         $a3, 0x0($v1)
/* 13CBE8 8011EAF8 AC680004 */  sw         $t0, 0x4($v1)
/* 13CBEC 8011EAFC AC690008 */  sw         $t1, 0x8($v1)
/* 13CBF0 8011EB00 AC6A000C */  sw         $t2, 0xC($v1)
/* 13CBF4 8011EB04 24420010 */  addiu      $v0, $v0, 0x10
/* 13CBF8 8011EB08 1444FFF6 */  bne        $v0, $a0, .Lmenu_8011EAE4
/* 13CBFC 8011EB0C 24630010 */   addiu     $v1, $v1, 0x10
/* 13CC00 8011EB10 26240058 */  addiu      $a0, $s1, 0x58
/* 13CC04 8011EB14 8C470000 */  lw         $a3, 0x0($v0)
/* 13CC08 8011EB18 8C480004 */  lw         $t0, 0x4($v0)
/* 13CC0C 8011EB1C AC670000 */  sw         $a3, 0x0($v1)
/* 13CC10 8011EB20 AC680004 */  sw         $t0, 0x4($v1)
/* 13CC14 8011EB24 2402029A */  addiu      $v0, $zero, 0x29A
/* 13CC18 8011EB28 A7A20030 */  sh         $v0, 0x30($sp)
/* 13CC1C 8011EB2C 8FA2003C */  lw         $v0, 0x3C($sp)
/* 13CC20 8011EB30 3C038000 */  lui        $v1, (0x80000000 >> 16)
/* 13CC24 8011EB34 AFB10038 */  sw         $s1, 0x38($sp)
/* 13CC28 8011EB38 00431025 */  or         $v0, $v0, $v1
/* 13CC2C 8011EB3C AFA2003C */  sw         $v0, 0x3C($sp)
/* 13CC30 8011EB40 8A070058 */  lwl        $a3, 0x58($s0)
/* 13CC34 8011EB44 9A07005B */  lwr        $a3, 0x5B($s0)
/* 13CC38 8011EB48 ABA70032 */  swl        $a3, 0x32($sp)
/* 13CC3C 8011EB4C BBA70035 */  swr        $a3, 0x35($sp)
/* 13CC40 8011EB50 0C0495EA */  jal        func_menu_801257A8
/* 13CC44 8011EB54 27A50010 */   addiu     $a1, $sp, 0x10
/* 13CC48 8011EB58 8FBF0050 */  lw         $ra, 0x50($sp)
/* 13CC4C 8011EB5C 8FB1004C */  lw         $s1, 0x4C($sp)
/* 13CC50 8011EB60 8FB00048 */  lw         $s0, 0x48($sp)
/* 13CC54 8011EB64 03E00008 */  jr         $ra
/* 13CC58 8011EB68 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_menu_8011EB6C
/* 13CC5C 8011EB6C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 13CC60 8011EB70 AFB20048 */  sw         $s2, 0x48($sp)
/* 13CC64 8011EB74 00809021 */  addu       $s2, $a0, $zero
/* 13CC68 8011EB78 AFBF004C */  sw         $ra, 0x4C($sp)
/* 13CC6C 8011EB7C AFB10044 */  sw         $s1, 0x44($sp)
/* 13CC70 8011EB80 0C04936A */  jal        func_menu_80124DA8
/* 13CC74 8011EB84 AFB00040 */   sw        $s0, 0x40($sp)
/* 13CC78 8011EB88 8E420018 */  lw         $v0, 0x18($s2)
/* 13CC7C 8011EB8C 0441008F */  bgez       $v0, .Lmenu_8011EDCC
/* 13CC80 8011EB90 00000000 */   nop
/* 13CC84 8011EB94 AFA00010 */  sw         $zero, 0x10($sp)
/* 13CC88 8011EB98 AFA00014 */  sw         $zero, 0x14($sp)
/* 13CC8C 8011EB9C 8E4203DC */  lw         $v0, 0x3DC($s2)
/* 13CC90 8011EBA0 8C450030 */  lw         $a1, 0x30($v0)
/* 13CC94 8011EBA4 AFA50018 */  sw         $a1, 0x18($sp)
/* 13CC98 8011EBA8 8E4203DC */  lw         $v0, 0x3DC($s2)
/* 13CC9C 8011EBAC 8C440034 */  lw         $a0, 0x34($v0)
/* 13CCA0 8011EBB0 AFA4001C */  sw         $a0, 0x1C($sp)
/* 13CCA4 8011EBB4 8E420038 */  lw         $v0, 0x38($s2)
/* 13CCA8 8011EBB8 8E430030 */  lw         $v1, 0x30($s2)
/* 13CCAC 8011EBBC 00431023 */  subu       $v0, $v0, $v1
/* 13CCB0 8011EBC0 AFA20038 */  sw         $v0, 0x38($sp)
/* 13CCB4 8011EBC4 8E4303E4 */  lw         $v1, 0x3E4($s2)
/* 13CCB8 8011EBC8 8C630030 */  lw         $v1, 0x30($v1)
/* 13CCBC 8011EBCC AFA00034 */  sw         $zero, 0x34($sp)
/* 13CCC0 8011EBD0 AFA4003C */  sw         $a0, 0x3C($sp)
/* 13CCC4 8011EBD4 AFA50020 */  sw         $a1, 0x20($sp)
/* 13CCC8 8011EBD8 AFA00024 */  sw         $zero, 0x24($sp)
/* 13CCCC 8011EBDC 00431023 */  subu       $v0, $v0, $v1
/* 13CCD0 8011EBE0 AFA20030 */  sw         $v0, 0x30($sp)
/* 13CCD4 8011EBE4 AFA20028 */  sw         $v0, 0x28($sp)
/* 13CCD8 8011EBE8 8E4203E0 */  lw         $v0, 0x3E0($s2)
/* 13CCDC 8011EBEC 8C420034 */  lw         $v0, 0x34($v0)
/* 13CCE0 8011EBF0 27A50010 */  addiu      $a1, $sp, 0x10
/* 13CCE4 8011EBF4 AFA2002C */  sw         $v0, 0x2C($sp)
/* 13CCE8 8011EBF8 8E420150 */  lw         $v0, 0x150($s2)
/* 13CCEC 8011EBFC 264300FC */  addiu      $v1, $s2, 0xFC
/* 13CCF0 8011EC00 84440028 */  lh         $a0, 0x28($v0)
/* 13CCF4 8011EC04 8C42002C */  lw         $v0, 0x2C($v0)
/* 13CCF8 8011EC08 0040F809 */  jalr       $v0
/* 13CCFC 8011EC0C 00642021 */   addu      $a0, $v1, $a0
/* 13CD00 8011EC10 27B10020 */  addiu      $s1, $sp, 0x20
/* 13CD04 8011EC14 02202821 */  addu       $a1, $s1, $zero
/* 13CD08 8011EC18 8E4201AC */  lw         $v0, 0x1AC($s2)
/* 13CD0C 8011EC1C 26430158 */  addiu      $v1, $s2, 0x158
/* 13CD10 8011EC20 84440028 */  lh         $a0, 0x28($v0)
/* 13CD14 8011EC24 8C42002C */  lw         $v0, 0x2C($v0)
/* 13CD18 8011EC28 0040F809 */  jalr       $v0
/* 13CD1C 8011EC2C 00642021 */   addu      $a0, $v1, $a0
/* 13CD20 8011EC30 27B00030 */  addiu      $s0, $sp, 0x30
/* 13CD24 8011EC34 02002821 */  addu       $a1, $s0, $zero
/* 13CD28 8011EC38 8E420208 */  lw         $v0, 0x208($s2)
/* 13CD2C 8011EC3C 264301B4 */  addiu      $v1, $s2, 0x1B4
/* 13CD30 8011EC40 84440028 */  lh         $a0, 0x28($v0)
/* 13CD34 8011EC44 8C42002C */  lw         $v0, 0x2C($v0)
/* 13CD38 8011EC48 0040F809 */  jalr       $v0
/* 13CD3C 8011EC4C 00642021 */   addu      $a0, $v1, $a0
/* 13CD40 8011EC50 8FA40038 */  lw         $a0, 0x38($sp)
/* 13CD44 8011EC54 AFA40018 */  sw         $a0, 0x18($sp)
/* 13CD48 8011EC58 8E4203EC */  lw         $v0, 0x3EC($s2)
/* 13CD4C 8011EC5C 8C420030 */  lw         $v0, 0x30($v0)
/* 13CD50 8011EC60 00821023 */  subu       $v0, $a0, $v0
/* 13CD54 8011EC64 AFA20010 */  sw         $v0, 0x10($sp)
/* 13CD58 8011EC68 8E43003C */  lw         $v1, 0x3C($s2)
/* 13CD5C 8011EC6C 8E420034 */  lw         $v0, 0x34($s2)
/* 13CD60 8011EC70 00621823 */  subu       $v1, $v1, $v0
/* 13CD64 8011EC74 AFA3001C */  sw         $v1, 0x1C($sp)
/* 13CD68 8011EC78 8E4203EC */  lw         $v0, 0x3EC($s2)
/* 13CD6C 8011EC7C 8C420034 */  lw         $v0, 0x34($v0)
/* 13CD70 8011EC80 00621823 */  subu       $v1, $v1, $v0
/* 13CD74 8011EC84 AFA30014 */  sw         $v1, 0x14($sp)
/* 13CD78 8011EC88 8E4203E8 */  lw         $v0, 0x3E8($s2)
/* 13CD7C 8011EC8C 8C460030 */  lw         $a2, 0x30($v0)
/* 13CD80 8011EC90 8FA2003C */  lw         $v0, 0x3C($sp)
/* 13CD84 8011EC94 02202821 */  addu       $a1, $s1, $zero
/* 13CD88 8011EC98 AFA40028 */  sw         $a0, 0x28($sp)
/* 13CD8C 8011EC9C AFA3002C */  sw         $v1, 0x2C($sp)
/* 13CD90 8011ECA0 00862023 */  subu       $a0, $a0, $a2
/* 13CD94 8011ECA4 AFA20024 */  sw         $v0, 0x24($sp)
/* 13CD98 8011ECA8 AFA40020 */  sw         $a0, 0x20($sp)
/* 13CD9C 8011ECAC 8E420264 */  lw         $v0, 0x264($s2)
/* 13CDA0 8011ECB0 26430210 */  addiu      $v1, $s2, 0x210
/* 13CDA4 8011ECB4 84440028 */  lh         $a0, 0x28($v0)
/* 13CDA8 8011ECB8 8C42002C */  lw         $v0, 0x2C($v0)
/* 13CDAC 8011ECBC 0040F809 */  jalr       $v0
/* 13CDB0 8011ECC0 00642021 */   addu      $a0, $v1, $a0
/* 13CDB4 8011ECC4 27A50010 */  addiu      $a1, $sp, 0x10
/* 13CDB8 8011ECC8 8E4202C0 */  lw         $v0, 0x2C0($s2)
/* 13CDBC 8011ECCC 2643026C */  addiu      $v1, $s2, 0x26C
/* 13CDC0 8011ECD0 84440028 */  lh         $a0, 0x28($v0)
/* 13CDC4 8011ECD4 8C42002C */  lw         $v0, 0x2C($v0)
/* 13CDC8 8011ECD8 0040F809 */  jalr       $v0
/* 13CDCC 8011ECDC 00642021 */   addu      $a0, $v1, $a0
/* 13CDD0 8011ECE0 AFA00030 */  sw         $zero, 0x30($sp)
/* 13CDD4 8011ECE4 8E4203F4 */  lw         $v0, 0x3F4($s2)
/* 13CDD8 8011ECE8 8FA4001C */  lw         $a0, 0x1C($sp)
/* 13CDDC 8011ECEC 8C450030 */  lw         $a1, 0x30($v0)
/* 13CDE0 8011ECF0 AFA4003C */  sw         $a0, 0x3C($sp)
/* 13CDE4 8011ECF4 AFA50038 */  sw         $a1, 0x38($sp)
/* 13CDE8 8011ECF8 8E4203F4 */  lw         $v0, 0x3F4($s2)
/* 13CDEC 8011ECFC 8FA30010 */  lw         $v1, 0x10($sp)
/* 13CDF0 8011ED00 8C420034 */  lw         $v0, 0x34($v0)
/* 13CDF4 8011ED04 AFA50020 */  sw         $a1, 0x20($sp)
/* 13CDF8 8011ED08 AFA30028 */  sw         $v1, 0x28($sp)
/* 13CDFC 8011ED0C AFA4002C */  sw         $a0, 0x2C($sp)
/* 13CE00 8011ED10 00821023 */  subu       $v0, $a0, $v0
/* 13CE04 8011ED14 AFA20034 */  sw         $v0, 0x34($sp)
/* 13CE08 8011ED18 8E4203F0 */  lw         $v0, 0x3F0($s2)
/* 13CE0C 8011ED1C 8C420034 */  lw         $v0, 0x34($v0)
/* 13CE10 8011ED20 02202821 */  addu       $a1, $s1, $zero
/* 13CE14 8011ED24 00822023 */  subu       $a0, $a0, $v0
/* 13CE18 8011ED28 AFA40024 */  sw         $a0, 0x24($sp)
/* 13CE1C 8011ED2C 8E42031C */  lw         $v0, 0x31C($s2)
/* 13CE20 8011ED30 264302C8 */  addiu      $v1, $s2, 0x2C8
/* 13CE24 8011ED34 84440028 */  lh         $a0, 0x28($v0)
/* 13CE28 8011ED38 8C42002C */  lw         $v0, 0x2C($v0)
/* 13CE2C 8011ED3C 0040F809 */  jalr       $v0
/* 13CE30 8011ED40 00642021 */   addu      $a0, $v1, $a0
/* 13CE34 8011ED44 02002821 */  addu       $a1, $s0, $zero
/* 13CE38 8011ED48 8E420378 */  lw         $v0, 0x378($s2)
/* 13CE3C 8011ED4C 26430324 */  addiu      $v1, $s2, 0x324
/* 13CE40 8011ED50 84440028 */  lh         $a0, 0x28($v0)
/* 13CE44 8011ED54 8C42002C */  lw         $v0, 0x2C($v0)
/* 13CE48 8011ED58 0040F809 */  jalr       $v0
/* 13CE4C 8011ED5C 00642021 */   addu      $a0, $v1, $a0
/* 13CE50 8011ED60 AFA00020 */  sw         $zero, 0x20($sp)
/* 13CE54 8011ED64 8E4203F8 */  lw         $v0, 0x3F8($s2)
/* 13CE58 8011ED68 8C420030 */  lw         $v0, 0x30($v0)
/* 13CE5C 8011ED6C 2650012C */  addiu      $s0, $s2, 0x12C
/* 13CE60 8011ED70 AFA20028 */  sw         $v0, 0x28($sp)
/* 13CE64 8011ED74 8E03000C */  lw         $v1, 0xC($s0)
/* 13CE68 8011ED78 8FA20034 */  lw         $v0, 0x34($sp)
/* 13CE6C 8011ED7C 02202821 */  addu       $a1, $s1, $zero
/* 13CE70 8011ED80 AFA2002C */  sw         $v0, 0x2C($sp)
/* 13CE74 8011ED84 AFA30024 */  sw         $v1, 0x24($sp)
/* 13CE78 8011ED88 8E4203D4 */  lw         $v0, 0x3D4($s2)
/* 13CE7C 8011ED8C 26430380 */  addiu      $v1, $s2, 0x380
/* 13CE80 8011ED90 84440028 */  lh         $a0, 0x28($v0)
/* 13CE84 8011ED94 8C42002C */  lw         $v0, 0x2C($v0)
/* 13CE88 8011ED98 0040F809 */  jalr       $v0
/* 13CE8C 8011ED9C 00642021 */   addu      $a0, $v1, $a0
/* 13CE90 8011EDA0 8E020008 */  lw         $v0, 0x8($s0)
/* 13CE94 8011EDA4 AFA20010 */  sw         $v0, 0x10($sp)
/* 13CE98 8011EDA8 8E4201E4 */  lw         $v0, 0x1E4($s2)
/* 13CE9C 8011EDAC AFA20018 */  sw         $v0, 0x18($sp)
/* 13CEA0 8011EDB0 8E02000C */  lw         $v0, 0xC($s0)
/* 13CEA4 8011EDB4 26440058 */  addiu      $a0, $s2, 0x58
/* 13CEA8 8011EDB8 AFA20014 */  sw         $v0, 0x14($sp)
/* 13CEAC 8011EDBC 8E420358 */  lw         $v0, 0x358($s2)
/* 13CEB0 8011EDC0 27A50010 */  addiu      $a1, $sp, 0x10
/* 13CEB4 8011EDC4 0C04936A */  jal        func_menu_80124DA8
/* 13CEB8 8011EDC8 AFA2001C */   sw        $v0, 0x1C($sp)
.Lmenu_8011EDCC:
/* 13CEBC 8011EDCC 8FBF004C */  lw         $ra, 0x4C($sp)
/* 13CEC0 8011EDD0 8FB20048 */  lw         $s2, 0x48($sp)
/* 13CEC4 8011EDD4 8FB10044 */  lw         $s1, 0x44($sp)
/* 13CEC8 8011EDD8 8FB00040 */  lw         $s0, 0x40($sp)
/* 13CECC 8011EDDC 03E00008 */  jr         $ra
/* 13CED0 8011EDE0 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_8011EDE4
/* 13CED4 8011EDE4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13CED8 8011EDE8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13CEDC 8011EDEC 00809821 */  addu       $s3, $a0, $zero
/* 13CEE0 8011EDF0 AFB40020 */  sw         $s4, 0x20($sp)
/* 13CEE4 8011EDF4 00A0A021 */  addu       $s4, $a1, $zero
/* 13CEE8 8011EDF8 AFB20018 */  sw         $s2, 0x18($sp)
/* 13CEEC 8011EDFC 00009021 */  addu       $s2, $zero, $zero
/* 13CEF0 8011EE00 AFB10014 */  sw         $s1, 0x14($sp)
/* 13CEF4 8011EE04 241100FC */  addiu      $s1, $zero, 0xFC
/* 13CEF8 8011EE08 AFB00010 */  sw         $s0, 0x10($sp)
/* 13CEFC 8011EE0C 02608021 */  addu       $s0, $s3, $zero
/* 13CF00 8011EE10 AFBF0024 */  sw         $ra, 0x24($sp)
/* 13CF04 8011EE14 02711821 */  addu       $v1, $s3, $s1
.Lmenu_8011EE18:
/* 13CF08 8011EE18 2631005C */  addiu      $s1, $s1, 0x5C
/* 13CF0C 8011EE1C 8E020150 */  lw         $v0, 0x150($s0)
/* 13CF10 8011EE20 2610005C */  addiu      $s0, $s0, 0x5C
/* 13CF14 8011EE24 26520001 */  addiu      $s2, $s2, 0x1
/* 13CF18 8011EE28 02802821 */  addu       $a1, $s4, $zero
/* 13CF1C 8011EE2C 84440030 */  lh         $a0, 0x30($v0)
/* 13CF20 8011EE30 8C420034 */  lw         $v0, 0x34($v0)
/* 13CF24 8011EE34 0040F809 */  jalr       $v0
/* 13CF28 8011EE38 00642021 */   addu      $a0, $v1, $a0
/* 13CF2C 8011EE3C 2A420008 */  slti       $v0, $s2, 0x8
/* 13CF30 8011EE40 1440FFF5 */  bnez       $v0, .Lmenu_8011EE18
/* 13CF34 8011EE44 02711821 */   addu      $v1, $s3, $s1
/* 13CF38 8011EE48 8FBF0024 */  lw         $ra, 0x24($sp)
/* 13CF3C 8011EE4C 8FB40020 */  lw         $s4, 0x20($sp)
/* 13CF40 8011EE50 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13CF44 8011EE54 8FB20018 */  lw         $s2, 0x18($sp)
/* 13CF48 8011EE58 8FB10014 */  lw         $s1, 0x14($sp)
/* 13CF4C 8011EE5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13CF50 8011EE60 03E00008 */  jr         $ra
/* 13CF54 8011EE64 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011EE68
/* 13CF58 8011EE68 03E00008 */  jr         $ra
/* 13CF5C 8011EE6C 24820058 */   addiu     $v0, $a0, 0x58

glabel func_menu_8011EE70
/* 13CF60 8011EE70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13CF64 8011EE74 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13CF68 8011EE78 0C0495FD */  jal        func_menu_801257F4
/* 13CF6C 8011EE7C 24840058 */   addiu     $a0, $a0, 0x58
/* 13CF70 8011EE80 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13CF74 8011EE84 03E00008 */  jr         $ra
/* 13CF78 8011EE88 27BD0018 */   addiu     $sp, $sp, 0x18
