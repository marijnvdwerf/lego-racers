.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8010E740
/* 12C830 8010E740 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12C834 8010E744 AFB00010 */  sw         $s0, 0x10($sp)
/* 12C838 8010E748 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12C83C 8010E74C 0C03DADB */  jal        func_menu_800F6B6C
/* 12C840 8010E750 00808021 */   addu      $s0, $a0, $zero
/* 12C844 8010E754 10400009 */  beqz       $v0, .Lmenu_8010E77C
/* 12C848 8010E758 26040458 */   addiu     $a0, $s0, 0x458
/* 12C84C 8010E75C 0C044BE9 */  jal        func_menu_80112FA4
/* 12C850 8010E760 24050004 */   addiu     $a1, $zero, 0x4
/* 12C854 8010E764 8E040354 */  lw         $a0, 0x354($s0)
/* 12C858 8010E768 0C03B955 */  jal        func_menu_800EE554
/* 12C85C 8010E76C 24840010 */   addiu     $a0, $a0, 0x10
/* 12C860 8010E770 8E020004 */  lw         $v0, 0x4($s0)
/* 12C864 8010E774 080439E0 */  j          .Lmenu_8010E780
/* 12C868 8010E778 00000000 */   nop
.Lmenu_8010E77C:
/* 12C86C 8010E77C 00001021 */  addu       $v0, $zero, $zero
.Lmenu_8010E780:
/* 12C870 8010E780 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12C874 8010E784 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C878 8010E788 03E00008 */  jr         $ra
/* 12C87C 8010E78C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010E790
/* 12C880 8010E790 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12C884 8010E794 AFB1001C */  sw         $s1, 0x1C($sp)
/* 12C888 8010E798 00808821 */  addu       $s1, $a0, $zero
/* 12C88C 8010E79C AFB30024 */  sw         $s3, 0x24($sp)
/* 12C890 8010E7A0 24030006 */  addiu      $v1, $zero, 0x6
/* 12C894 8010E7A4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 12C898 8010E7A8 AFB40028 */  sw         $s4, 0x28($sp)
/* 12C89C 8010E7AC AFB20020 */  sw         $s2, 0x20($sp)
/* 12C8A0 8010E7B0 AFB00018 */  sw         $s0, 0x18($sp)
/* 12C8A4 8010E7B4 8E222A94 */  lw         $v0, 0x2A94($s1)
/* 12C8A8 8010E7B8 8CD20004 */  lw         $s2, 0x4($a2)
/* 12C8AC 8010E7BC 1043001F */  beq        $v0, $v1, .Lmenu_8010E83C
/* 12C8B0 8010E7C0 00009821 */   addu      $s3, $zero, $zero
/* 12C8B4 8010E7C4 8E220364 */  lw         $v0, 0x364($s1)
/* 12C8B8 8010E7C8 14400086 */  bnez       $v0, .Lmenu_8010E9E4
/* 12C8BC 8010E7CC 24020001 */   addiu     $v0, $zero, 0x1
/* 12C8C0 8010E7D0 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* 12C8C4 8010E7D4 02428024 */  and        $s0, $s2, $v0
/* 12C8C8 8010E7D8 3C025000 */  lui        $v0, (0x50000000 >> 16)
/* 12C8CC 8010E7DC 16020015 */  bne        $s0, $v0, .Lmenu_8010E834
/* 12C8D0 8010E7E0 3C023000 */   lui       $v0, (0x30000000 >> 16)
/* 12C8D4 8010E7E4 02202021 */  addu       $a0, $s1, $zero
/* 12C8D8 8010E7E8 3243FFFF */  andi       $v1, $s2, 0xFFFF
/* 12C8DC 8010E7EC 2463FFFF */  addiu      $v1, $v1, -0x1
/* 12C8E0 8010E7F0 82252554 */  lb         $a1, 0x2554($s1)
/* 12C8E4 8010E7F4 30620001 */  andi       $v0, $v1, 0x1
/* 12C8E8 8010E7F8 AFA20010 */  sw         $v0, 0x10($sp)
/* 12C8EC 8010E7FC 3C028012 */  lui        $v0, %hi(D_menu_80126CA8)
/* 12C8F0 8010E800 24426CA8 */  addiu      $v0, $v0, %lo(D_menu_80126CA8)
/* 12C8F4 8010E804 00031880 */  sll        $v1, $v1, 2
/* 12C8F8 8010E808 00052940 */  sll        $a1, $a1, 5
/* 12C8FC 8010E80C 00651821 */  addu       $v1, $v1, $a1
/* 12C900 8010E810 00621021 */  addu       $v0, $v1, $v0
/* 12C904 8010E814 8C450000 */  lw         $a1, 0x0($v0)
/* 12C908 8010E818 3C028012 */  lui        $v0, %hi(D_menu_80126DA8)
/* 12C90C 8010E81C 24426DA8 */  addiu      $v0, $v0, %lo(D_menu_80126DA8)
/* 12C910 8010E820 00621821 */  addu       $v1, $v1, $v0
/* 12C914 8010E824 8C660000 */  lw         $a2, 0x0($v1)
/* 12C918 8010E828 0C03DB5A */  jal        func_menu_800F6D68
/* 12C91C 8010E82C 24070010 */   addiu     $a3, $zero, 0x10
/* 12C920 8010E830 3C023000 */  lui        $v0, (0x30000000 >> 16)
.Lmenu_8010E834:
/* 12C924 8010E834 12020003 */  beq        $s0, $v0, .Lmenu_8010E844
/* 12C928 8010E838 02501823 */   subu      $v1, $s2, $s0
.Lmenu_8010E83C:
/* 12C92C 8010E83C 08043A79 */  j          .Lmenu_8010E9E4
/* 12C930 8010E840 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_8010E844:
/* 12C934 8010E844 2C620010 */  sltiu      $v0, $v1, 0x10
/* 12C938 8010E848 1040005F */  beqz       $v0, Lmenu_8010E9C8
/* 12C93C 8010E84C 24140001 */   addiu     $s4, $zero, 0x1
/* 12C940 8010E850 3C02800D */  lui        $v0, %hi(jtbl_menu_800CF330)
/* 12C944 8010E854 2442F330 */  addiu      $v0, $v0, %lo(jtbl_menu_800CF330)
/* 12C948 8010E858 00031880 */  sll        $v1, $v1, 2
/* 12C94C 8010E85C 00621821 */  addu       $v1, $v1, $v0
/* 12C950 8010E860 8C620000 */  lw         $v0, 0x0($v1)
/* 12C954 8010E864 00400008 */  jr         $v0
/* 12C958 8010E868 00000000 */   nop
glabel Lmenu_8010E86C
/* 12C95C 8010E86C 262422BC */  addiu      $a0, $s1, 0x22BC
/* 12C960 8010E870 08043A20 */  j          .Lmenu_8010E880
/* 12C964 8010E874 2405FFFF */   addiu     $a1, $zero, -0x1
glabel Lmenu_8010E878
/* 12C968 8010E878 262422BC */  addiu      $a0, $s1, 0x22BC
/* 12C96C 8010E87C 24050001 */  addiu      $a1, $zero, 0x1
.Lmenu_8010E880:
/* 12C970 8010E880 0C03DF19 */  jal        func_menu_800F7C64
/* 12C974 8010E884 24060001 */   addiu     $a2, $zero, 0x1
/* 12C978 8010E888 08043A74 */  j          Lmenu_8010E9D0
/* 12C97C 8010E88C 24130006 */   addiu     $s3, $zero, 0x6
glabel Lmenu_8010E890
/* 12C980 8010E890 262422BC */  addiu      $a0, $s1, 0x22BC
/* 12C984 8010E894 08043A29 */  j          .Lmenu_8010E8A4
/* 12C988 8010E898 2405FFFF */   addiu     $a1, $zero, -0x1
glabel Lmenu_8010E89C
/* 12C98C 8010E89C 262422BC */  addiu      $a0, $s1, 0x22BC
/* 12C990 8010E8A0 24050001 */  addiu      $a1, $zero, 0x1
.Lmenu_8010E8A4:
/* 12C994 8010E8A4 0C03DFBB */  jal        func_menu_800F7EEC
/* 12C998 8010E8A8 24060001 */   addiu     $a2, $zero, 0x1
/* 12C99C 8010E8AC 10400048 */  beqz       $v0, Lmenu_8010E9D0
/* 12C9A0 8010E8B0 24130008 */   addiu     $s3, $zero, 0x8
/* 12C9A4 8010E8B4 08043A74 */  j          Lmenu_8010E9D0
/* 12C9A8 8010E8B8 24130006 */   addiu     $s3, $zero, 0x6
glabel Lmenu_8010E8BC
/* 12C9AC 8010E8BC 26221368 */  addiu      $v0, $s1, 0x1368
/* 12C9B0 8010E8C0 8C430054 */  lw         $v1, 0x54($v0)
/* 12C9B4 8010E8C4 846400B0 */  lh         $a0, 0xB0($v1)
/* 12C9B8 8010E8C8 24050001 */  addiu      $a1, $zero, 0x1
/* 12C9BC 8010E8CC 00442021 */  addu       $a0, $v0, $a0
/* 12C9C0 8010E8D0 8C6200B4 */  lw         $v0, 0xB4($v1)
/* 12C9C4 8010E8D4 08043A46 */  j          .Lmenu_8010E918
/* 12C9C8 8010E8D8 26300FA0 */   addiu     $s0, $s1, 0xFA0
glabel Lmenu_8010E8DC
/* 12C9CC 8010E8DC 2622114C */  addiu      $v0, $s1, 0x114C
/* 12C9D0 8010E8E0 8C430054 */  lw         $v1, 0x54($v0)
/* 12C9D4 8010E8E4 846400B0 */  lh         $a0, 0xB0($v1)
/* 12C9D8 8010E8E8 24050001 */  addiu      $a1, $zero, 0x1
/* 12C9DC 8010E8EC 00442021 */  addu       $a0, $v0, $a0
/* 12C9E0 8010E8F0 8C6200B4 */  lw         $v0, 0xB4($v1)
/* 12C9E4 8010E8F4 08043A54 */  j          .Lmenu_8010E950
/* 12C9E8 8010E8F8 26300FA0 */   addiu     $s0, $s1, 0xFA0
glabel Lmenu_8010E8FC
/* 12C9EC 8010E8FC 26220820 */  addiu      $v0, $s1, 0x820
/* 12C9F0 8010E900 8C430054 */  lw         $v1, 0x54($v0)
/* 12C9F4 8010E904 846400B0 */  lh         $a0, 0xB0($v1)
/* 12C9F8 8010E908 24050001 */  addiu      $a1, $zero, 0x1
/* 12C9FC 8010E90C 00442021 */  addu       $a0, $v0, $a0
/* 12CA00 8010E910 8C6200B4 */  lw         $v0, 0xB4($v1)
/* 12CA04 8010E914 26300458 */  addiu      $s0, $s1, 0x458
.Lmenu_8010E918:
/* 12CA08 8010E918 0040F809 */  jalr       $v0
/* 12CA0C 8010E91C 00000000 */   nop
/* 12CA10 8010E920 02002021 */  addu       $a0, $s0, $zero
/* 12CA14 8010E924 0C044B8C */  jal        func_menu_80112E30
/* 12CA18 8010E928 00002821 */   addu      $a1, $zero, $zero
/* 12CA1C 8010E92C 08043A74 */  j          Lmenu_8010E9D0
/* 12CA20 8010E930 00000000 */   nop
glabel Lmenu_8010E934
/* 12CA24 8010E934 26220604 */  addiu      $v0, $s1, 0x604
/* 12CA28 8010E938 8C430054 */  lw         $v1, 0x54($v0)
/* 12CA2C 8010E93C 846400B0 */  lh         $a0, 0xB0($v1)
/* 12CA30 8010E940 24050001 */  addiu      $a1, $zero, 0x1
/* 12CA34 8010E944 00442021 */  addu       $a0, $v0, $a0
/* 12CA38 8010E948 8C6200B4 */  lw         $v0, 0xB4($v1)
/* 12CA3C 8010E94C 26300458 */  addiu      $s0, $s1, 0x458
.Lmenu_8010E950:
/* 12CA40 8010E950 0040F809 */  jalr       $v0
/* 12CA44 8010E954 00000000 */   nop
/* 12CA48 8010E958 02002021 */  addu       $a0, $s0, $zero
/* 12CA4C 8010E95C 0C044B63 */  jal        func_menu_80112D8C
/* 12CA50 8010E960 00002821 */   addu      $a1, $zero, $zero
/* 12CA54 8010E964 08043A74 */  j          Lmenu_8010E9D0
/* 12CA58 8010E968 00000000 */   nop
glabel Lmenu_8010E96C
/* 12CA5C 8010E96C 8E240354 */  lw         $a0, 0x354($s1)
/* 12CA60 8010E970 0C03B90A */  jal        func_menu_800EE428
/* 12CA64 8010E974 24840010 */   addiu     $a0, $a0, 0x10
/* 12CA68 8010E978 24020001 */  addiu      $v0, $zero, 0x1
/* 12CA6C 8010E97C 08043A74 */  j          Lmenu_8010E9D0
/* 12CA70 8010E980 AE220364 */   sw        $v0, 0x364($s1)
glabel Lmenu_8010E984
/* 12CA74 8010E984 0C03E073 */  jal        func_menu_800F81CC
/* 12CA78 8010E988 262422BC */   addiu     $a0, $s1, 0x22BC
/* 12CA7C 8010E98C 08043A74 */  j          Lmenu_8010E9D0
/* 12CA80 8010E990 24130016 */   addiu     $s3, $zero, 0x16
glabel Lmenu_8010E994
/* 12CA84 8010E994 0C03DBC8 */  jal        func_menu_800F6F20
/* 12CA88 8010E998 02202021 */   addu      $a0, $s1, $zero
/* 12CA8C 8010E99C 5440000C */  bnel       $v0, $zero, Lmenu_8010E9D0
/* 12CA90 8010E9A0 24140005 */   addiu     $s4, $zero, 0x5
/* 12CA94 8010E9A4 08043A74 */  j          Lmenu_8010E9D0
/* 12CA98 8010E9A8 00000000 */   nop
glabel Lmenu_8010E9AC
/* 12CA9C 8010E9AC 0C03E109 */  jal        func_menu_800F8424
/* 12CAA0 8010E9B0 262422BC */   addiu     $a0, $s1, 0x22BC
/* 12CAA4 8010E9B4 10400006 */  beqz       $v0, Lmenu_8010E9D0
/* 12CAA8 8010E9B8 24020004 */   addiu     $v0, $zero, 0x4
/* 12CAAC 8010E9BC 24140006 */  addiu      $s4, $zero, 0x6
/* 12CAB0 8010E9C0 08043A74 */  j          Lmenu_8010E9D0
/* 12CAB4 8010E9C4 AE222A90 */   sw        $v0, 0x2A90($s1)
glabel Lmenu_8010E9C8
/* 12CAB8 8010E9C8 08043A79 */  j          .Lmenu_8010E9E4
/* 12CABC 8010E9CC 00001021 */   addu      $v0, $zero, $zero
glabel Lmenu_8010E9D0
/* 12CAC0 8010E9D0 8E240280 */  lw         $a0, 0x280($s1)
/* 12CAC4 8010E9D4 0C047910 */  jal        func_menu_8011E440
/* 12CAC8 8010E9D8 02602821 */   addu      $a1, $s3, $zero
/* 12CACC 8010E9DC 24020001 */  addiu      $v0, $zero, 0x1
/* 12CAD0 8010E9E0 AE342A98 */  sw         $s4, 0x2A98($s1)
.Lmenu_8010E9E4:
/* 12CAD4 8010E9E4 8FBF002C */  lw         $ra, 0x2C($sp)
/* 12CAD8 8010E9E8 8FB40028 */  lw         $s4, 0x28($sp)
/* 12CADC 8010E9EC 8FB30024 */  lw         $s3, 0x24($sp)
/* 12CAE0 8010E9F0 8FB20020 */  lw         $s2, 0x20($sp)
/* 12CAE4 8010E9F4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12CAE8 8010E9F8 8FB00018 */  lw         $s0, 0x18($sp)
/* 12CAEC 8010E9FC 03E00008 */  jr         $ra
/* 12CAF0 8010EA00 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8010EA04
/* 12CAF4 8010EA04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12CAF8 8010EA08 24030006 */  addiu      $v1, $zero, 0x6
/* 12CAFC 8010EA0C AFBF0010 */  sw         $ra, 0x10($sp)
/* 12CB00 8010EA10 8C822A94 */  lw         $v0, 0x2A94($a0)
/* 12CB04 8010EA14 8CC50004 */  lw         $a1, 0x4($a2)
/* 12CB08 8010EA18 10430027 */  beq        $v0, $v1, .Lmenu_8010EAB8
/* 12CB0C 8010EA1C 3C02F000 */   lui       $v0, (0xF0000000 >> 16)
/* 12CB10 8010EA20 00A21024 */  and        $v0, $a1, $v0
/* 12CB14 8010EA24 3C033000 */  lui        $v1, (0x30000000 >> 16)
/* 12CB18 8010EA28 14430024 */  bne        $v0, $v1, .Lmenu_8010EABC
/* 12CB1C 8010EA2C 24020001 */   addiu     $v0, $zero, 0x1
/* 12CB20 8010EA30 3C023000 */  lui        $v0, (0x30000005 >> 16)
/* 12CB24 8010EA34 34420005 */  ori        $v0, $v0, (0x30000005 & 0xFFFF)
/* 12CB28 8010EA38 10A20012 */  beq        $a1, $v0, .Lmenu_8010EA84
/* 12CB2C 8010EA3C 0045102B */   sltu      $v0, $v0, $a1
/* 12CB30 8010EA40 14400006 */  bnez       $v0, .Lmenu_8010EA5C
/* 12CB34 8010EA44 3C023000 */   lui       $v0, (0x30000004 >> 16)
/* 12CB38 8010EA48 34420004 */  ori        $v0, $v0, (0x30000004 & 0xFFFF)
/* 12CB3C 8010EA4C 10A2000B */  beq        $a1, $v0, .Lmenu_8010EA7C
/* 12CB40 8010EA50 00001021 */   addu      $v0, $zero, $zero
/* 12CB44 8010EA54 08043AAF */  j          .Lmenu_8010EABC
/* 12CB48 8010EA58 00000000 */   nop
.Lmenu_8010EA5C:
/* 12CB4C 8010EA5C 34420008 */  ori        $v0, $v0, (0x30000008 & 0xFFFF)
/* 12CB50 8010EA60 10A2000A */  beq        $a1, $v0, .Lmenu_8010EA8C
/* 12CB54 8010EA64 3C023000 */   lui       $v0, (0x30000009 >> 16)
/* 12CB58 8010EA68 34420009 */  ori        $v0, $v0, (0x30000009 & 0xFFFF)
/* 12CB5C 8010EA6C 10A20009 */  beq        $a1, $v0, .Lmenu_8010EA94
/* 12CB60 8010EA70 00001021 */   addu      $v0, $zero, $zero
/* 12CB64 8010EA74 08043AAF */  j          .Lmenu_8010EABC
/* 12CB68 8010EA78 00000000 */   nop
.Lmenu_8010EA7C:
/* 12CB6C 8010EA7C 08043AA6 */  j          .Lmenu_8010EA98
/* 12CB70 8010EA80 24831368 */   addiu     $v1, $a0, 0x1368
.Lmenu_8010EA84:
/* 12CB74 8010EA84 08043AA6 */  j          .Lmenu_8010EA98
/* 12CB78 8010EA88 2483114C */   addiu     $v1, $a0, 0x114C
.Lmenu_8010EA8C:
/* 12CB7C 8010EA8C 08043AA6 */  j          .Lmenu_8010EA98
/* 12CB80 8010EA90 24830820 */   addiu     $v1, $a0, 0x820
.Lmenu_8010EA94:
/* 12CB84 8010EA94 24830604 */  addiu      $v1, $a0, 0x604
.Lmenu_8010EA98:
/* 12CB88 8010EA98 8C620054 */  lw         $v0, 0x54($v1)
/* 12CB8C 8010EA9C 24050001 */  addiu      $a1, $zero, 0x1
/* 12CB90 8010EAA0 844400B8 */  lh         $a0, 0xB8($v0)
/* 12CB94 8010EAA4 8C4200BC */  lw         $v0, 0xBC($v0)
/* 12CB98 8010EAA8 0040F809 */  jalr       $v0
/* 12CB9C 8010EAAC 00642021 */   addu      $a0, $v1, $a0
/* 12CBA0 8010EAB0 08043AAF */  j          .Lmenu_8010EABC
/* 12CBA4 8010EAB4 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_8010EAB8:
/* 12CBA8 8010EAB8 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_8010EABC:
/* 12CBAC 8010EABC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 12CBB0 8010EAC0 03E00008 */  jr         $ra
/* 12CBB4 8010EAC4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010EAC8
/* 12CBB8 8010EAC8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12CBBC 8010EACC AFB00018 */  sw         $s0, 0x18($sp)
/* 12CBC0 8010EAD0 00808021 */  addu       $s0, $a0, $zero
/* 12CBC4 8010EAD4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 12CBC8 8010EAD8 AFB20020 */  sw         $s2, 0x20($sp)
/* 12CBCC 8010EADC 0C03DAA0 */  jal        func_menu_800F6A80
/* 12CBD0 8010EAE0 AFB1001C */   sw        $s1, 0x1C($sp)
/* 12CBD4 8010EAE4 02002021 */  addu       $a0, $s0, $zero
/* 12CBD8 8010EAE8 26052AD4 */  addiu      $a1, $s0, 0x2AD4
/* 12CBDC 8010EAEC 240600D0 */  addiu      $a2, $zero, 0xD0
/* 12CBE0 8010EAF0 0C04675B */  jal        func_menu_80119D6C
/* 12CBE4 8010EAF4 00C03821 */   addu      $a3, $a2, $zero
/* 12CBE8 8010EAF8 02002021 */  addu       $a0, $s0, $zero
/* 12CBEC 8010EAFC 26052B30 */  addiu      $a1, $s0, 0x2B30
/* 12CBF0 8010EB00 240600D3 */  addiu      $a2, $zero, 0xD3
/* 12CBF4 8010EB04 0C04675B */  jal        func_menu_80119D6C
/* 12CBF8 8010EB08 00C03821 */   addu      $a3, $a2, $zero
/* 12CBFC 8010EB0C 02002021 */  addu       $a0, $s0, $zero
/* 12CC00 8010EB10 26052B8C */  addiu      $a1, $s0, 0x2B8C
/* 12CC04 8010EB14 240600C2 */  addiu      $a2, $zero, 0xC2
/* 12CC08 8010EB18 0C04675B */  jal        func_menu_80119D6C
/* 12CC0C 8010EB1C 00C03821 */   addu      $a3, $a2, $zero
/* 12CC10 8010EB20 02002021 */  addu       $a0, $s0, $zero
/* 12CC14 8010EB24 26052BE8 */  addiu      $a1, $s0, 0x2BE8
/* 12CC18 8010EB28 240600C3 */  addiu      $a2, $zero, 0xC3
/* 12CC1C 8010EB2C 0C04675B */  jal        func_menu_80119D6C
/* 12CC20 8010EB30 240700C2 */   addiu     $a3, $zero, 0xC2
/* 12CC24 8010EB34 02002021 */  addu       $a0, $s0, $zero
/* 12CC28 8010EB38 26052C44 */  addiu      $a1, $s0, 0x2C44
/* 12CC2C 8010EB3C 240600C4 */  addiu      $a2, $zero, 0xC4
/* 12CC30 8010EB40 0C04675B */  jal        func_menu_80119D6C
/* 12CC34 8010EB44 240700C2 */   addiu     $a3, $zero, 0xC2
/* 12CC38 8010EB48 02002021 */  addu       $a0, $s0, $zero
/* 12CC3C 8010EB4C 26052CA0 */  addiu      $a1, $s0, 0x2CA0
/* 12CC40 8010EB50 240600C5 */  addiu      $a2, $zero, 0xC5
/* 12CC44 8010EB54 0C04675B */  jal        func_menu_80119D6C
/* 12CC48 8010EB58 00C03821 */   addu      $a3, $a2, $zero
/* 12CC4C 8010EB5C 02002021 */  addu       $a0, $s0, $zero
/* 12CC50 8010EB60 26052CFC */  addiu      $a1, $s0, 0x2CFC
/* 12CC54 8010EB64 240600D1 */  addiu      $a2, $zero, 0xD1
/* 12CC58 8010EB68 0C04675B */  jal        func_menu_80119D6C
/* 12CC5C 8010EB6C 00C03821 */   addu      $a3, $a2, $zero
/* 12CC60 8010EB70 02002021 */  addu       $a0, $s0, $zero
/* 12CC64 8010EB74 26052D58 */  addiu      $a1, $s0, 0x2D58
/* 12CC68 8010EB78 240600D2 */  addiu      $a2, $zero, 0xD2
/* 12CC6C 8010EB7C 0C04675B */  jal        func_menu_80119D6C
/* 12CC70 8010EB80 00C03821 */   addu      $a3, $a2, $zero
/* 12CC74 8010EB84 02002021 */  addu       $a0, $s0, $zero
/* 12CC78 8010EB88 26052DB4 */  addiu      $a1, $s0, 0x2DB4
/* 12CC7C 8010EB8C 240600C7 */  addiu      $a2, $zero, 0xC7
/* 12CC80 8010EB90 0C04675B */  jal        func_menu_80119D6C
/* 12CC84 8010EB94 00C03821 */   addu      $a3, $a2, $zero
/* 12CC88 8010EB98 02002021 */  addu       $a0, $s0, $zero
/* 12CC8C 8010EB9C 26052E10 */  addiu      $a1, $s0, 0x2E10
/* 12CC90 8010EBA0 240600C8 */  addiu      $a2, $zero, 0xC8
/* 12CC94 8010EBA4 0C04675B */  jal        func_menu_80119D6C
/* 12CC98 8010EBA8 00C03821 */   addu      $a3, $a2, $zero
/* 12CC9C 8010EBAC 02002021 */  addu       $a0, $s0, $zero
/* 12CCA0 8010EBB0 26052E6C */  addiu      $a1, $s0, 0x2E6C
/* 12CCA4 8010EBB4 240600C9 */  addiu      $a2, $zero, 0xC9
/* 12CCA8 8010EBB8 0C04675B */  jal        func_menu_80119D6C
/* 12CCAC 8010EBBC 00C03821 */   addu      $a3, $a2, $zero
/* 12CCB0 8010EBC0 02002021 */  addu       $a0, $s0, $zero
/* 12CCB4 8010EBC4 26052EC8 */  addiu      $a1, $s0, 0x2EC8
/* 12CCB8 8010EBC8 240600CA */  addiu      $a2, $zero, 0xCA
/* 12CCBC 8010EBCC 0C04675B */  jal        func_menu_80119D6C
/* 12CCC0 8010EBD0 00C03821 */   addu      $a3, $a2, $zero
/* 12CCC4 8010EBD4 02002021 */  addu       $a0, $s0, $zero
/* 12CCC8 8010EBD8 26052F24 */  addiu      $a1, $s0, 0x2F24
/* 12CCCC 8010EBDC 240600CB */  addiu      $a2, $zero, 0xCB
/* 12CCD0 8010EBE0 24070040 */  addiu      $a3, $zero, 0x40
/* 12CCD4 8010EBE4 2402003E */  addiu      $v0, $zero, 0x3E
/* 12CCD8 8010EBE8 0C04679E */  jal        func_menu_80119E78
/* 12CCDC 8010EBEC AFA20010 */   sw        $v0, 0x10($sp)
/* 12CCE0 8010EBF0 02002021 */  addu       $a0, $s0, $zero
/* 12CCE4 8010EBF4 26122F9C */  addiu      $s2, $s0, 0x2F9C
/* 12CCE8 8010EBF8 02402821 */  addu       $a1, $s2, $zero
/* 12CCEC 8010EBFC 240600CC */  addiu      $a2, $zero, 0xCC
/* 12CCF0 8010EC00 24070040 */  addiu      $a3, $zero, 0x40
/* 12CCF4 8010EC04 2411003F */  addiu      $s1, $zero, 0x3F
/* 12CCF8 8010EC08 0C04679E */  jal        func_menu_80119E78
/* 12CCFC 8010EC0C AFB10010 */   sw        $s1, 0x10($sp)
/* 12CD00 8010EC10 02002021 */  addu       $a0, $s0, $zero
/* 12CD04 8010EC14 26053014 */  addiu      $a1, $s0, 0x3014
/* 12CD08 8010EC18 240600CD */  addiu      $a2, $zero, 0xCD
/* 12CD0C 8010EC1C 24070040 */  addiu      $a3, $zero, 0x40
/* 12CD10 8010EC20 0C04679E */  jal        func_menu_80119E78
/* 12CD14 8010EC24 AFB10010 */   sw        $s1, 0x10($sp)
/* 12CD18 8010EC28 02002021 */  addu       $a0, $s0, $zero
/* 12CD1C 8010EC2C 2605308C */  addiu      $a1, $s0, 0x308C
/* 12CD20 8010EC30 240600CE */  addiu      $a2, $zero, 0xCE
/* 12CD24 8010EC34 24070040 */  addiu      $a3, $zero, 0x40
/* 12CD28 8010EC38 00E01021 */  addu       $v0, $a3, $zero
/* 12CD2C 8010EC3C 0C04679E */  jal        func_menu_80119E78
/* 12CD30 8010EC40 AFA20010 */   sw        $v0, 0x10($sp)
/* 12CD34 8010EC44 02002021 */  addu       $a0, $s0, $zero
/* 12CD38 8010EC48 24903104 */  addiu      $s0, $a0, 0x3104
/* 12CD3C 8010EC4C 02002821 */  addu       $a1, $s0, $zero
/* 12CD40 8010EC50 240600CF */  addiu      $a2, $zero, 0xCF
/* 12CD44 8010EC54 24070040 */  addiu      $a3, $zero, 0x40
/* 12CD48 8010EC58 24020041 */  addiu      $v0, $zero, 0x41
/* 12CD4C 8010EC5C 0C04679E */  jal        func_menu_80119E78
/* 12CD50 8010EC60 AFA20010 */   sw        $v0, 0x10($sp)
/* 12CD54 8010EC64 02402021 */  addu       $a0, $s2, $zero
/* 12CD58 8010EC68 0C047D63 */  jal        func_menu_8011F58C
/* 12CD5C 8010EC6C 24050118 */   addiu     $a1, $zero, 0x118
/* 12CD60 8010EC70 02002021 */  addu       $a0, $s0, $zero
/* 12CD64 8010EC74 0C047D63 */  jal        func_menu_8011F58C
/* 12CD68 8010EC78 2405002D */   addiu     $a1, $zero, 0x2D
/* 12CD6C 8010EC7C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12CD70 8010EC80 8FB20020 */  lw         $s2, 0x20($sp)
/* 12CD74 8010EC84 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12CD78 8010EC88 8FB00018 */  lw         $s0, 0x18($sp)
/* 12CD7C 8010EC8C 03E00008 */  jr         $ra
/* 12CD80 8010EC90 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010EC94
/* 12CD84 8010EC94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12CD88 8010EC98 AFB00010 */  sw         $s0, 0x10($sp)
/* 12CD8C 8010EC9C 00808021 */  addu       $s0, $a0, $zero
/* 12CD90 8010ECA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12CD94 8010ECA4 8E040354 */  lw         $a0, 0x354($s0)
/* 12CD98 8010ECA8 0C03B90A */  jal        func_menu_800EE428
/* 12CD9C 8010ECAC 24840010 */   addiu     $a0, $a0, 0x10
/* 12CDA0 8010ECB0 0C03DBFD */  jal        func_menu_800F6FF4
/* 12CDA4 8010ECB4 02002021 */   addu      $a0, $s0, $zero
/* 12CDA8 8010ECB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12CDAC 8010ECBC 8FB00010 */  lw         $s0, 0x10($sp)
/* 12CDB0 8010ECC0 03E00008 */  jr         $ra
/* 12CDB4 8010ECC4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010ECC8
/* 12CDB8 8010ECC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12CDBC 8010ECCC AFB00010 */  sw         $s0, 0x10($sp)
/* 12CDC0 8010ECD0 00808021 */  addu       $s0, $a0, $zero
/* 12CDC4 8010ECD4 2602258C */  addiu      $v0, $s0, 0x258C
/* 12CDC8 8010ECD8 14A20007 */  bne        $a1, $v0, .Lmenu_8010ECF8
/* 12CDCC 8010ECDC AFBF0014 */   sw        $ra, 0x14($sp)
/* 12CDD0 8010ECE0 8E040284 */  lw         $a0, 0x284($s0)
/* 12CDD4 8010ECE4 0C045449 */  jal        func_menu_80115124
/* 12CDD8 8010ECE8 00000000 */   nop
/* 12CDDC 8010ECEC 8E040354 */  lw         $a0, 0x354($s0)
/* 12CDE0 8010ECF0 0C03B955 */  jal        func_menu_800EE554
/* 12CDE4 8010ECF4 24840010 */   addiu     $a0, $a0, 0x10
.Lmenu_8010ECF8:
/* 12CDE8 8010ECF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12CDEC 8010ECFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 12CDF0 8010ED00 03E00008 */  jr         $ra
/* 12CDF4 8010ED04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010ED08
/* 12CDF8 8010ED08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12CDFC 8010ED0C AFB00010 */  sw         $s0, 0x10($sp)
/* 12CE00 8010ED10 00808021 */  addu       $s0, $a0, $zero
/* 12CE04 8010ED14 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12CE08 8010ED18 AFB10014 */  sw         $s1, 0x14($sp)
/* 12CE0C 8010ED1C 8E020364 */  lw         $v0, 0x364($s0)
/* 12CE10 8010ED20 14400004 */  bnez       $v0, .Lmenu_8010ED34
/* 12CE14 8010ED24 00A08821 */   addu      $s1, $a1, $zero
/* 12CE18 8010ED28 8E040354 */  lw         $a0, 0x354($s0)
/* 12CE1C 8010ED2C 0C03B955 */  jal        func_menu_800EE554
/* 12CE20 8010ED30 24840010 */   addiu     $a0, $a0, 0x10
.Lmenu_8010ED34:
/* 12CE24 8010ED34 02002021 */  addu       $a0, $s0, $zero
/* 12CE28 8010ED38 0C03DCD4 */  jal        func_menu_800F7350
/* 12CE2C 8010ED3C 02202821 */   addu      $a1, $s1, $zero
/* 12CE30 8010ED40 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12CE34 8010ED44 8FB10014 */  lw         $s1, 0x14($sp)
/* 12CE38 8010ED48 8FB00010 */  lw         $s0, 0x10($sp)
/* 12CE3C 8010ED4C 03E00008 */  jr         $ra
/* 12CE40 8010ED50 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010ED54
/* 12CE44 8010ED54 03E00008 */  jr         $ra
/* 12CE48 8010ED58 00000000 */   nop

glabel func_menu_8010ED5C
/* 12CE4C 8010ED5C 03E00008 */  jr         $ra
/* 12CE50 8010ED60 00000000 */   nop

glabel func_menu_8010ED64
/* 12CE54 8010ED64 03E00008 */  jr         $ra
/* 12CE58 8010ED68 00000000 */   nop

glabel func_menu_8010ED6C
/* 12CE5C 8010ED6C 03E00008 */  jr         $ra
/* 12CE60 8010ED70 00000000 */   nop

glabel func_menu_8010ED74
/* 12CE64 8010ED74 03E00008 */  jr         $ra
/* 12CE68 8010ED78 00000000 */   nop

glabel func_menu_8010ED7C
/* 12CE6C 8010ED7C 03E00008 */  jr         $ra
/* 12CE70 8010ED80 00000000 */   nop

glabel func_menu_8010ED84
/* 12CE74 8010ED84 03E00008 */  jr         $ra
/* 12CE78 8010ED88 00000000 */   nop

glabel func_menu_8010ED8C
/* 12CE7C 8010ED8C 03E00008 */  jr         $ra
/* 12CE80 8010ED90 00000000 */   nop

glabel func_menu_8010ED94
/* 12CE84 8010ED94 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12CE88 8010ED98 AFB00010 */  sw         $s0, 0x10($sp)
/* 12CE8C 8010ED9C 00808021 */  addu       $s0, $a0, $zero
/* 12CE90 8010EDA0 AFB10014 */  sw         $s1, 0x14($sp)
/* 12CE94 8010EDA4 00A08821 */  addu       $s1, $a1, $zero
/* 12CE98 8010EDA8 26043104 */  addiu      $a0, $s0, 0x3104
/* 12CE9C 8010EDAC AFBF0018 */  sw         $ra, 0x18($sp)
/* 12CEA0 8010EDB0 0C047CB9 */  jal        func_menu_8011F2E4
/* 12CEA4 8010EDB4 24050002 */   addiu     $a1, $zero, 0x2
/* 12CEA8 8010EDB8 2604308C */  addiu      $a0, $s0, 0x308C
/* 12CEAC 8010EDBC 0C047CB9 */  jal        func_menu_8011F2E4
/* 12CEB0 8010EDC0 24050002 */   addiu     $a1, $zero, 0x2
/* 12CEB4 8010EDC4 26043014 */  addiu      $a0, $s0, 0x3014
/* 12CEB8 8010EDC8 0C047CB9 */  jal        func_menu_8011F2E4
/* 12CEBC 8010EDCC 24050002 */   addiu     $a1, $zero, 0x2
/* 12CEC0 8010EDD0 26042F9C */  addiu      $a0, $s0, 0x2F9C
/* 12CEC4 8010EDD4 0C047CB9 */  jal        func_menu_8011F2E4
/* 12CEC8 8010EDD8 24050002 */   addiu     $a1, $zero, 0x2
/* 12CECC 8010EDDC 26042F24 */  addiu      $a0, $s0, 0x2F24
/* 12CED0 8010EDE0 0C047CB9 */  jal        func_menu_8011F2E4
/* 12CED4 8010EDE4 24050002 */   addiu     $a1, $zero, 0x2
/* 12CED8 8010EDE8 26042EC8 */  addiu      $a0, $s0, 0x2EC8
/* 12CEDC 8010EDEC 0C047BB3 */  jal        func_menu_8011EECC
/* 12CEE0 8010EDF0 24050002 */   addiu     $a1, $zero, 0x2
/* 12CEE4 8010EDF4 26042E6C */  addiu      $a0, $s0, 0x2E6C
/* 12CEE8 8010EDF8 0C047BB3 */  jal        func_menu_8011EECC
/* 12CEEC 8010EDFC 24050002 */   addiu     $a1, $zero, 0x2
/* 12CEF0 8010EE00 26042E10 */  addiu      $a0, $s0, 0x2E10
/* 12CEF4 8010EE04 0C047BB3 */  jal        func_menu_8011EECC
/* 12CEF8 8010EE08 24050002 */   addiu     $a1, $zero, 0x2
/* 12CEFC 8010EE0C 26042DB4 */  addiu      $a0, $s0, 0x2DB4
/* 12CF00 8010EE10 0C047BB3 */  jal        func_menu_8011EECC
/* 12CF04 8010EE14 24050002 */   addiu     $a1, $zero, 0x2
/* 12CF08 8010EE18 26042D58 */  addiu      $a0, $s0, 0x2D58
/* 12CF0C 8010EE1C 0C047BB3 */  jal        func_menu_8011EECC
/* 12CF10 8010EE20 24050002 */   addiu     $a1, $zero, 0x2
/* 12CF14 8010EE24 26042CFC */  addiu      $a0, $s0, 0x2CFC
/* 12CF18 8010EE28 0C047BB3 */  jal        func_menu_8011EECC
/* 12CF1C 8010EE2C 24050002 */   addiu     $a1, $zero, 0x2
/* 12CF20 8010EE30 26042CA0 */  addiu      $a0, $s0, 0x2CA0
/* 12CF24 8010EE34 0C047BB3 */  jal        func_menu_8011EECC
/* 12CF28 8010EE38 24050002 */   addiu     $a1, $zero, 0x2
/* 12CF2C 8010EE3C 26042C44 */  addiu      $a0, $s0, 0x2C44
/* 12CF30 8010EE40 0C047BB3 */  jal        func_menu_8011EECC
/* 12CF34 8010EE44 24050002 */   addiu     $a1, $zero, 0x2
/* 12CF38 8010EE48 26042BE8 */  addiu      $a0, $s0, 0x2BE8
/* 12CF3C 8010EE4C 0C047BB3 */  jal        func_menu_8011EECC
/* 12CF40 8010EE50 24050002 */   addiu     $a1, $zero, 0x2
/* 12CF44 8010EE54 26042B8C */  addiu      $a0, $s0, 0x2B8C
/* 12CF48 8010EE58 0C047BB3 */  jal        func_menu_8011EECC
/* 12CF4C 8010EE5C 24050002 */   addiu     $a1, $zero, 0x2
/* 12CF50 8010EE60 26042B30 */  addiu      $a0, $s0, 0x2B30
/* 12CF54 8010EE64 0C047BB3 */  jal        func_menu_8011EECC
/* 12CF58 8010EE68 24050002 */   addiu     $a1, $zero, 0x2
/* 12CF5C 8010EE6C 26042AD4 */  addiu      $a0, $s0, 0x2AD4
/* 12CF60 8010EE70 0C047BB3 */  jal        func_menu_8011EECC
/* 12CF64 8010EE74 24050002 */   addiu     $a1, $zero, 0x2
/* 12CF68 8010EE78 02002021 */  addu       $a0, $s0, $zero
/* 12CF6C 8010EE7C 0C03D9D9 */  jal        func_menu_800F6764
/* 12CF70 8010EE80 02202821 */   addu      $a1, $s1, $zero
/* 12CF74 8010EE84 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12CF78 8010EE88 8FB10014 */  lw         $s1, 0x14($sp)
/* 12CF7C 8010EE8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12CF80 8010EE90 03E00008 */  jr         $ra
/* 12CF84 8010EE94 27BD0020 */   addiu     $sp, $sp, 0x20
