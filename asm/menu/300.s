.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EE980
/* 10CA70 800EE980 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10CA74 800EE984 AFB00010 */  sw         $s0, 0x10($sp)
/* 10CA78 800EE988 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10CA7C 800EE98C 0C03BA7B */  jal        func_menu_800EE9EC
/* 10CA80 800EE990 00808021 */   addu      $s0, $a0, $zero
/* 10CA84 800EE994 02001021 */  addu       $v0, $s0, $zero
/* 10CA88 800EE998 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10CA8C 800EE99C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10CA90 800EE9A0 03E00008 */  jr         $ra
/* 10CA94 800EE9A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EE9A8
/* 10CA98 800EE9A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10CA9C 800EE9AC AFB10014 */  sw         $s1, 0x14($sp)
/* 10CAA0 800EE9B0 00808821 */  addu       $s1, $a0, $zero
/* 10CAA4 800EE9B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 10CAA8 800EE9B8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10CAAC 800EE9BC 0C03BAC8 */  jal        func_menu_800EEB20
/* 10CAB0 800EE9C0 00A08021 */   addu      $s0, $a1, $zero
/* 10CAB4 800EE9C4 32100001 */  andi       $s0, $s0, 0x1
/* 10CAB8 800EE9C8 12000003 */  beqz       $s0, .Lmenu_800EE9D8
/* 10CABC 800EE9CC 00000000 */   nop
/* 10CAC0 800EE9D0 0C01FB5C */  jal        func_8007ED70
/* 10CAC4 800EE9D4 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800EE9D8:
/* 10CAC8 800EE9D8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10CACC 800EE9DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 10CAD0 800EE9E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 10CAD4 800EE9E4 03E00008 */  jr         $ra
/* 10CAD8 800EE9E8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EE9EC
/* 10CADC 800EE9EC AC800020 */  sw         $zero, 0x20($a0)
/* 10CAE0 800EE9F0 AC800000 */  sw         $zero, 0x0($a0)
/* 10CAE4 800EE9F4 AC80001C */  sw         $zero, 0x1C($a0)
/* 10CAE8 800EE9F8 AC800004 */  sw         $zero, 0x4($a0)
/* 10CAEC 800EE9FC AC800014 */  sw         $zero, 0x14($a0)
/* 10CAF0 800EEA00 AC800018 */  sw         $zero, 0x18($a0)
/* 10CAF4 800EEA04 AC800008 */  sw         $zero, 0x8($a0)
/* 10CAF8 800EEA08 AC80000C */  sw         $zero, 0xC($a0)
/* 10CAFC 800EEA0C 03E00008 */  jr         $ra
/* 10CB00 800EEA10 AC800010 */   sw        $zero, 0x10($a0)

glabel func_menu_800EEA14
/* 10CB04 800EEA14 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10CB08 800EEA18 AFB40020 */  sw         $s4, 0x20($sp)
/* 10CB0C 800EEA1C 0080A021 */  addu       $s4, $a0, $zero
/* 10CB10 800EEA20 AFB00010 */  sw         $s0, 0x10($sp)
/* 10CB14 800EEA24 00A08021 */  addu       $s0, $a1, $zero
/* 10CB18 800EEA28 AFB50024 */  sw         $s5, 0x24($sp)
/* 10CB1C 800EEA2C 00C0A821 */  addu       $s5, $a2, $zero
/* 10CB20 800EEA30 AFBF002C */  sw         $ra, 0x2C($sp)
/* 10CB24 800EEA34 AFB60028 */  sw         $s6, 0x28($sp)
/* 10CB28 800EEA38 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10CB2C 800EEA3C AFB20018 */  sw         $s2, 0x18($sp)
/* 10CB30 800EEA40 AFB10014 */  sw         $s1, 0x14($sp)
/* 10CB34 800EEA44 8E820004 */  lw         $v0, 0x4($s4)
/* 10CB38 800EEA48 10400003 */  beqz       $v0, .Lmenu_800EEA58
/* 10CB3C 800EEA4C 00E0B021 */   addu      $s6, $a3, $zero
/* 10CB40 800EEA50 0C03BAC8 */  jal        func_menu_800EEB20
/* 10CB44 800EEA54 00000000 */   nop
.Lmenu_800EEA58:
/* 10CB48 800EEA58 3C028012 */  lui        $v0, %hi(D_menu_80126BF0)
/* 10CB4C 800EEA5C 8C446BF0 */  lw         $a0, %lo(D_menu_80126BF0)($v0)
/* 10CB50 800EEA60 AE90001C */  sw         $s0, 0x1C($s4)
/* 10CB54 800EEA64 0C01FB65 */  jal        func_8007ED94
/* 10CB58 800EEA68 AE800020 */   sw        $zero, 0x20($s4)
/* 10CB5C 800EEA6C 8E90001C */  lw         $s0, 0x1C($s4)
/* 10CB60 800EEA70 001020C0 */  sll        $a0, $s0, 3
/* 10CB64 800EEA74 00902021 */  addu       $a0, $a0, $s0
/* 10CB68 800EEA78 00042100 */  sll        $a0, $a0, 4
/* 10CB6C 800EEA7C 00902021 */  addu       $a0, $a0, $s0
/* 10CB70 800EEA80 00042080 */  sll        $a0, $a0, 2
/* 10CB74 800EEA84 0C00943C */  jal        func_800250F0
/* 10CB78 800EEA88 24840008 */   addiu     $a0, $a0, 0x8
/* 10CB7C 800EEA8C 24420008 */  addiu      $v0, $v0, 0x8
/* 10CB80 800EEA90 00409821 */  addu       $s3, $v0, $zero
/* 10CB84 800EEA94 02609021 */  addu       $s2, $s3, $zero
/* 10CB88 800EEA98 2611FFFF */  addiu      $s1, $s0, -0x1
/* 10CB8C 800EEA9C 06200007 */  bltz       $s1, .Lmenu_800EEABC
/* 10CB90 800EEAA0 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 10CB94 800EEAA4 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800EEAA8:
/* 10CB98 800EEAA8 0C03BB84 */  jal        func_menu_800EEE10
/* 10CB9C 800EEAAC 02402021 */   addu      $a0, $s2, $zero
/* 10CBA0 800EEAB0 2631FFFF */  addiu      $s1, $s1, -0x1
/* 10CBA4 800EEAB4 1630FFFC */  bne        $s1, $s0, .Lmenu_800EEAA8
/* 10CBA8 800EEAB8 26520244 */   addiu     $s2, $s2, 0x244
.Lmenu_800EEABC:
/* 10CBAC 800EEABC 0C01FB72 */  jal        func_8007EDC8
/* 10CBB0 800EEAC0 AE930004 */   sw        $s3, 0x4($s4)
/* 10CBB4 800EEAC4 8E820004 */  lw         $v0, 0x4($s4)
/* 10CBB8 800EEAC8 14400008 */  bnez       $v0, .Lmenu_800EEAEC
/* 10CBBC 800EEACC 02802021 */   addu      $a0, $s4, $zero
/* 10CBC0 800EEAD0 3C04800D */  lui        $a0, %hi(D_menu_800CBD60)
/* 10CBC4 800EEAD4 2484BD60 */  addiu      $a0, $a0, %lo(D_menu_800CBD60)
/* 10CBC8 800EEAD8 00002821 */  addu       $a1, $zero, $zero
/* 10CBCC 800EEADC 00A03021 */  addu       $a2, $a1, $zero
/* 10CBD0 800EEAE0 0C011ACF */  jal        func_80046B3C
/* 10CBD4 800EEAE4 00A03821 */   addu      $a3, $a1, $zero
/* 10CBD8 800EEAE8 02802021 */  addu       $a0, $s4, $zero
.Lmenu_800EEAEC:
/* 10CBDC 800EEAEC AC950008 */  sw         $s5, 0x8($a0)
/* 10CBE0 800EEAF0 0C03BAEA */  jal        func_menu_800EEBA8
/* 10CBE4 800EEAF4 AC96000C */   sw        $s6, 0xC($a0)
/* 10CBE8 800EEAF8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 10CBEC 800EEAFC 8FB60028 */  lw         $s6, 0x28($sp)
/* 10CBF0 800EEB00 8FB50024 */  lw         $s5, 0x24($sp)
/* 10CBF4 800EEB04 8FB40020 */  lw         $s4, 0x20($sp)
/* 10CBF8 800EEB08 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10CBFC 800EEB0C 8FB20018 */  lw         $s2, 0x18($sp)
/* 10CC00 800EEB10 8FB10014 */  lw         $s1, 0x14($sp)
/* 10CC04 800EEB14 8FB00010 */  lw         $s0, 0x10($sp)
/* 10CC08 800EEB18 03E00008 */  jr         $ra
/* 10CC0C 800EEB1C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800EEB20
/* 10CC10 800EEB20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10CC14 800EEB24 AFB10014 */  sw         $s1, 0x14($sp)
/* 10CC18 800EEB28 00808821 */  addu       $s1, $a0, $zero
/* 10CC1C 800EEB2C AFBF0018 */  sw         $ra, 0x18($sp)
/* 10CC20 800EEB30 AFB00010 */  sw         $s0, 0x10($sp)
/* 10CC24 800EEB34 8E240004 */  lw         $a0, 0x4($s1)
/* 10CC28 800EEB38 10800014 */  beqz       $a0, .Lmenu_800EEB8C
/* 10CC2C 800EEB3C 00000000 */   nop
/* 10CC30 800EEB40 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 10CC34 800EEB44 000310C0 */  sll        $v0, $v1, 3
/* 10CC38 800EEB48 00431021 */  addu       $v0, $v0, $v1
/* 10CC3C 800EEB4C 00021100 */  sll        $v0, $v0, 4
/* 10CC40 800EEB50 00431021 */  addu       $v0, $v0, $v1
/* 10CC44 800EEB54 00021080 */  sll        $v0, $v0, 2
/* 10CC48 800EEB58 00828021 */  addu       $s0, $a0, $v0
/* 10CC4C 800EEB5C 10900008 */  beq        $a0, $s0, .Lmenu_800EEB80
/* 10CC50 800EEB60 2610FDBC */   addiu     $s0, $s0, -0x244
.Lmenu_800EEB64:
/* 10CC54 800EEB64 02002021 */  addu       $a0, $s0, $zero
/* 10CC58 800EEB68 0C03BB8F */  jal        func_menu_800EEE3C
/* 10CC5C 800EEB6C 24050002 */   addiu     $a1, $zero, 0x2
/* 10CC60 800EEB70 8E220004 */  lw         $v0, 0x4($s1)
/* 10CC64 800EEB74 1450FFFB */  bne        $v0, $s0, .Lmenu_800EEB64
/* 10CC68 800EEB78 2610FDBC */   addiu     $s0, $s0, -0x244
/* 10CC6C 800EEB7C 8E240004 */  lw         $a0, 0x4($s1)
.Lmenu_800EEB80:
/* 10CC70 800EEB80 0C009444 */  jal        func_80025110
/* 10CC74 800EEB84 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 10CC78 800EEB88 AE200004 */  sw         $zero, 0x4($s1)
.Lmenu_800EEB8C:
/* 10CC7C 800EEB8C 0C03BA7B */  jal        func_menu_800EE9EC
/* 10CC80 800EEB90 02202021 */   addu      $a0, $s1, $zero
/* 10CC84 800EEB94 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10CC88 800EEB98 8FB10014 */  lw         $s1, 0x14($sp)
/* 10CC8C 800EEB9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10CC90 800EEBA0 03E00008 */  jr         $ra
/* 10CC94 800EEBA4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EEBA8
/* 10CC98 800EEBA8 00003021 */  addu       $a2, $zero, $zero
/* 10CC9C 800EEBAC 8C820004 */  lw         $v0, 0x4($a0)
/* 10CCA0 800EEBB0 00C02821 */  addu       $a1, $a2, $zero
/* 10CCA4 800EEBB4 00401821 */  addu       $v1, $v0, $zero
/* 10CCA8 800EEBB8 AC830014 */  sw         $v1, 0x14($a0)
.Lmenu_800EEBBC:
/* 10CCAC 800EEBBC 8C82001C */  lw         $v0, 0x1C($a0)
/* 10CCB0 800EEBC0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 10CCB4 800EEBC4 00C2102B */  sltu       $v0, $a2, $v0
/* 10CCB8 800EEBC8 10400008 */  beqz       $v0, .Lmenu_800EEBEC
/* 10CCBC 800EEBCC 24C60001 */   addiu     $a2, $a2, 0x1
/* 10CCC0 800EEBD0 8C820004 */  lw         $v0, 0x4($a0)
/* 10CCC4 800EEBD4 00A21021 */  addu       $v0, $a1, $v0
/* 10CCC8 800EEBD8 24420244 */  addiu      $v0, $v0, 0x244
/* 10CCCC 800EEBDC 24A50244 */  addiu      $a1, $a1, 0x244
/* 10CCD0 800EEBE0 AC620004 */  sw         $v0, 0x4($v1)
/* 10CCD4 800EEBE4 0803BAEF */  j          .Lmenu_800EEBBC
/* 10CCD8 800EEBE8 24630244 */   addiu     $v1, $v1, 0x244
.Lmenu_800EEBEC:
/* 10CCDC 800EEBEC 03E00008 */  jr         $ra
/* 10CCE0 800EEBF0 AC800018 */   sw        $zero, 0x18($a0)

glabel func_menu_800EEBF4
/* 10CCE4 800EEBF4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10CCE8 800EEBF8 AFB00018 */  sw         $s0, 0x18($sp)
/* 10CCEC 800EEBFC 00808021 */  addu       $s0, $a0, $zero
/* 10CCF0 800EEC00 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10CCF4 800EEC04 AFB1001C */  sw         $s1, 0x1C($sp)
/* 10CCF8 800EEC08 8E020014 */  lw         $v0, 0x14($s0)
/* 10CCFC 800EEC0C 14400003 */  bnez       $v0, .Lmenu_800EEC1C
/* 10CD00 800EEC10 24020001 */   addiu     $v0, $zero, 0x1
/* 10CD04 800EEC14 0803BB1E */  j          .Lmenu_800EEC78
/* 10CD08 800EEC18 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800EEC1C:
/* 10CD0C 800EEC1C 8E110014 */  lw         $s1, 0x14($s0)
/* 10CD10 800EEC20 AE020020 */  sw         $v0, 0x20($s0)
/* 10CD14 800EEC24 8E220004 */  lw         $v0, 0x4($s1)
/* 10CD18 800EEC28 AE020014 */  sw         $v0, 0x14($s0)
/* 10CD1C 800EEC2C AFB00010 */  sw         $s0, 0x10($sp)
/* 10CD20 800EEC30 8E050008 */  lw         $a1, 0x8($s0)
/* 10CD24 800EEC34 8E06000C */  lw         $a2, 0xC($s0)
/* 10CD28 800EEC38 8E070000 */  lw         $a3, 0x0($s0)
/* 10CD2C 800EEC3C 0C03BBB0 */  jal        func_menu_800EEEC0
/* 10CD30 800EEC40 02202021 */   addu      $a0, $s1, $zero
/* 10CD34 800EEC44 AE200004 */  sw         $zero, 0x4($s1)
/* 10CD38 800EEC48 8E020000 */  lw         $v0, 0x0($s0)
/* 10CD3C 800EEC4C 8E030018 */  lw         $v1, 0x18($s0)
/* 10CD40 800EEC50 24420001 */  addiu      $v0, $v0, 0x1
/* 10CD44 800EEC54 10600006 */  beqz       $v1, .Lmenu_800EEC70
/* 10CD48 800EEC58 AE020000 */   sw        $v0, 0x0($s0)
.Lmenu_800EEC5C:
/* 10CD4C 800EEC5C 8C620004 */  lw         $v0, 0x4($v1)
/* 10CD50 800EEC60 50400004 */  beql       $v0, $zero, .Lmenu_800EEC74
/* 10CD54 800EEC64 AC710004 */   sw        $s1, 0x4($v1)
/* 10CD58 800EEC68 0803BB17 */  j          .Lmenu_800EEC5C
/* 10CD5C 800EEC6C 00401821 */   addu      $v1, $v0, $zero
.Lmenu_800EEC70:
/* 10CD60 800EEC70 AE110018 */  sw         $s1, 0x18($s0)
.Lmenu_800EEC74:
/* 10CD64 800EEC74 02201021 */  addu       $v0, $s1, $zero
.Lmenu_800EEC78:
/* 10CD68 800EEC78 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10CD6C 800EEC7C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 10CD70 800EEC80 8FB00018 */  lw         $s0, 0x18($sp)
/* 10CD74 800EEC84 03E00008 */  jr         $ra
/* 10CD78 800EEC88 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EEC8C
/* 10CD7C 800EEC8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10CD80 800EEC90 AFB00010 */  sw         $s0, 0x10($sp)
/* 10CD84 800EEC94 00808021 */  addu       $s0, $a0, $zero
/* 10CD88 800EEC98 AFB10014 */  sw         $s1, 0x14($sp)
/* 10CD8C 800EEC9C AFBF0018 */  sw         $ra, 0x18($sp)
/* 10CD90 800EECA0 0C03BAFD */  jal        func_menu_800EEBF4
/* 10CD94 800EECA4 00A08821 */   addu      $s1, $a1, $zero
/* 10CD98 800EECA8 24030001 */  addiu      $v1, $zero, 0x1
/* 10CD9C 800EECAC AE030020 */  sw         $v1, 0x20($s0)
/* 10CDA0 800EECB0 00408021 */  addu       $s0, $v0, $zero
/* 10CDA4 800EECB4 02002021 */  addu       $a0, $s0, $zero
/* 10CDA8 800EECB8 0C03BCFF */  jal        func_menu_800EF3FC
/* 10CDAC 800EECBC 02202821 */   addu      $a1, $s1, $zero
/* 10CDB0 800EECC0 02001021 */  addu       $v0, $s0, $zero
/* 10CDB4 800EECC4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10CDB8 800EECC8 8FB10014 */  lw         $s1, 0x14($sp)
/* 10CDBC 800EECCC 8FB00010 */  lw         $s0, 0x10($sp)
/* 10CDC0 800EECD0 03E00008 */  jr         $ra
/* 10CDC4 800EECD4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EECD8
/* 10CDC8 800EECD8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10CDCC 800EECDC AFB10014 */  sw         $s1, 0x14($sp)
/* 10CDD0 800EECE0 00808821 */  addu       $s1, $a0, $zero
/* 10CDD4 800EECE4 00A02021 */  addu       $a0, $a1, $zero
/* 10CDD8 800EECE8 00001821 */  addu       $v1, $zero, $zero
/* 10CDDC 800EECEC AFB20018 */  sw         $s2, 0x18($sp)
/* 10CDE0 800EECF0 00609021 */  addu       $s2, $v1, $zero
/* 10CDE4 800EECF4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 10CDE8 800EECF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 10CDEC 800EECFC 8E300018 */  lw         $s0, 0x18($s1)
/* 10CDF0 800EED00 24020001 */  addiu      $v0, $zero, 0x1
/* 10CDF4 800EED04 AE220020 */  sw         $v0, 0x20($s1)
.Lmenu_800EED08:
/* 10CDF8 800EED08 12000007 */  beqz       $s0, .Lmenu_800EED28
/* 10CDFC 800EED0C 00000000 */   nop
/* 10CE00 800EED10 12040005 */  beq        $s0, $a0, .Lmenu_800EED28
/* 10CE04 800EED14 00000000 */   nop
/* 10CE08 800EED18 02001821 */  addu       $v1, $s0, $zero
/* 10CE0C 800EED1C 8E100004 */  lw         $s0, 0x4($s0)
/* 10CE10 800EED20 0803BB42 */  j          .Lmenu_800EED08
/* 10CE14 800EED24 00000000 */   nop
.Lmenu_800EED28:
/* 10CE18 800EED28 8E220000 */  lw         $v0, 0x0($s1)
/* 10CE1C 800EED2C 2442FFFF */  addiu      $v0, $v0, -0x1
/* 10CE20 800EED30 10600004 */  beqz       $v1, .Lmenu_800EED44
/* 10CE24 800EED34 AE220000 */   sw        $v0, 0x0($s1)
/* 10CE28 800EED38 8E020004 */  lw         $v0, 0x4($s0)
/* 10CE2C 800EED3C 0803BB54 */  j          .Lmenu_800EED50
/* 10CE30 800EED40 AC620004 */   sw        $v0, 0x4($v1)
.Lmenu_800EED44:
/* 10CE34 800EED44 8E220018 */  lw         $v0, 0x18($s1)
/* 10CE38 800EED48 8C420004 */  lw         $v0, 0x4($v0)
/* 10CE3C 800EED4C AE220018 */  sw         $v0, 0x18($s1)
.Lmenu_800EED50:
/* 10CE40 800EED50 8E220014 */  lw         $v0, 0x14($s1)
/* 10CE44 800EED54 AE020004 */  sw         $v0, 0x4($s0)
/* 10CE48 800EED58 0C03BBCA */  jal        func_menu_800EEF28
/* 10CE4C 800EED5C AE300014 */   sw        $s0, 0x14($s1)
/* 10CE50 800EED60 8E300018 */  lw         $s0, 0x18($s1)
.Lmenu_800EED64:
/* 10CE54 800EED64 12000007 */  beqz       $s0, .Lmenu_800EED84
/* 10CE58 800EED68 02402821 */   addu      $a1, $s2, $zero
/* 10CE5C 800EED6C 26520001 */  addiu      $s2, $s2, 0x1
/* 10CE60 800EED70 0C03BD29 */  jal        func_menu_800EF4A4
/* 10CE64 800EED74 02002021 */   addu      $a0, $s0, $zero
/* 10CE68 800EED78 8E100004 */  lw         $s0, 0x4($s0)
/* 10CE6C 800EED7C 0803BB59 */  j          .Lmenu_800EED64
/* 10CE70 800EED80 00000000 */   nop
.Lmenu_800EED84:
/* 10CE74 800EED84 8FBF001C */  lw         $ra, 0x1C($sp)
/* 10CE78 800EED88 8FB20018 */  lw         $s2, 0x18($sp)
/* 10CE7C 800EED8C 8FB10014 */  lw         $s1, 0x14($sp)
/* 10CE80 800EED90 8FB00010 */  lw         $s0, 0x10($sp)
/* 10CE84 800EED94 03E00008 */  jr         $ra
/* 10CE88 800EED98 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EED9C
/* 10CE8C 800EED9C 8C820018 */  lw         $v0, 0x18($a0)
/* 10CE90 800EEDA0 2403FFFF */  addiu      $v1, $zero, -0x1
/* 10CE94 800EEDA4 24A5FFFF */  addiu      $a1, $a1, -0x1
.Lmenu_800EEDA8:
/* 10CE98 800EEDA8 10A30004 */  beq        $a1, $v1, .Lmenu_800EEDBC
/* 10CE9C 800EEDAC 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 10CEA0 800EEDB0 8C420004 */  lw         $v0, 0x4($v0)
/* 10CEA4 800EEDB4 0803BB6A */  j          .Lmenu_800EEDA8
/* 10CEA8 800EEDB8 00000000 */   nop
.Lmenu_800EEDBC:
/* 10CEAC 800EEDBC 03E00008 */  jr         $ra
/* 10CEB0 800EEDC0 00000000 */   nop

glabel func_menu_800EEDC4
/* 10CEB4 800EEDC4 8C830018 */  lw         $v1, 0x18($a0)
.Lmenu_800EEDC8:
/* 10CEB8 800EEDC8 10600007 */  beqz       $v1, .Lmenu_800EEDE8
/* 10CEBC 800EEDCC 00000000 */   nop
/* 10CEC0 800EEDD0 8C620010 */  lw         $v0, 0x10($v1)
/* 10CEC4 800EEDD4 10450006 */  beq        $v0, $a1, .Lmenu_800EEDF0
/* 10CEC8 800EEDD8 00601021 */   addu      $v0, $v1, $zero
/* 10CECC 800EEDDC 8C630004 */  lw         $v1, 0x4($v1)
/* 10CED0 800EEDE0 0803BB72 */  j          .Lmenu_800EEDC8
/* 10CED4 800EEDE4 00000000 */   nop
.Lmenu_800EEDE8:
/* 10CED8 800EEDE8 03E00008 */  jr         $ra
/* 10CEDC 800EEDEC 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800EEDF0:
/* 10CEE0 800EEDF0 03E00008 */  jr         $ra
/* 10CEE4 800EEDF4 00000000 */   nop

glabel func_menu_800EEDF8
/* 10CEE8 800EEDF8 3C028012 */  lui        $v0, %hi(D_menu_80126BF0)
/* 10CEEC 800EEDFC 03E00008 */  jr         $ra
/* 10CEF0 800EEE00 AC446BF0 */   sw        $a0, %lo(D_menu_80126BF0)($v0)
