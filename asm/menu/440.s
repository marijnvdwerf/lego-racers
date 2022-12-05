.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800FA6A0
/* 118790 800FA6A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 118794 800FA6A4 AFB20018 */  sw         $s2, 0x18($sp)
/* 118798 800FA6A8 00809021 */  addu       $s2, $a0, $zero
/* 11879C 800FA6AC AFBF0020 */  sw         $ra, 0x20($sp)
/* 1187A0 800FA6B0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1187A4 800FA6B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1187A8 800FA6B8 0C0401D8 */  jal        func_menu_80100760
/* 1187AC 800FA6BC AFB00010 */   sw        $s0, 0x10($sp)
/* 1187B0 800FA6C0 264403A8 */  addiu      $a0, $s2, 0x3A8
/* 1187B4 800FA6C4 3C02800D */  lui        $v0, %hi(D_menu_800CCB90)
/* 1187B8 800FA6C8 2442CB90 */  addiu      $v0, $v0, %lo(D_menu_800CCB90)
/* 1187BC 800FA6CC 0C047BA4 */  jal        func_menu_8011EE90
/* 1187C0 800FA6D0 AE420000 */   sw        $v0, 0x0($s2)
/* 1187C4 800FA6D4 0C047CA8 */  jal        func_menu_8011F2A0
/* 1187C8 800FA6D8 26440404 */   addiu     $a0, $s2, 0x404
/* 1187CC 800FA6DC 0C040F38 */  jal        func_menu_80103CE0
/* 1187D0 800FA6E0 2644047C */   addiu     $a0, $s2, 0x47C
/* 1187D4 800FA6E4 26500780 */  addiu      $s0, $s2, 0x780
/* 1187D8 800FA6E8 0C04729C */  jal        func_menu_8011CA70
/* 1187DC 800FA6EC 02002021 */   addu      $a0, $s0, $zero
/* 1187E0 800FA6F0 26440814 */  addiu      $a0, $s2, 0x814
/* 1187E4 800FA6F4 3C02800D */  lui        $v0, %hi(D_menu_800D0740)
/* 1187E8 800FA6F8 24420740 */  addiu      $v0, $v0, %lo(D_menu_800D0740)
/* 1187EC 800FA6FC 0C044D38 */  jal        func_menu_801134E0
/* 1187F0 800FA700 AE020054 */   sw        $v0, 0x54($s0)
/* 1187F4 800FA704 26511208 */  addiu      $s1, $s2, 0x1208
/* 1187F8 800FA708 24100004 */  addiu      $s0, $zero, 0x4
/* 1187FC 800FA70C 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_800FA710:
/* 118800 800FA710 0C047BA4 */  jal        func_menu_8011EE90
/* 118804 800FA714 02202021 */   addu      $a0, $s1, $zero
/* 118808 800FA718 2610FFFF */  addiu      $s0, $s0, -0x1
/* 11880C 800FA71C 1613FFFC */  bne        $s0, $s3, .Lmenu_800FA710
/* 118810 800FA720 2631005C */   addiu     $s1, $s1, 0x5C
/* 118814 800FA724 0C047CA8 */  jal        func_menu_8011F2A0
/* 118818 800FA728 264413D4 */   addiu     $a0, $s2, 0x13D4
/* 11881C 800FA72C 2651144C */  addiu      $s1, $s2, 0x144C
/* 118820 800FA730 24100008 */  addiu      $s0, $zero, 0x8
/* 118824 800FA734 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_800FA738:
/* 118828 800FA738 0C040F38 */  jal        func_menu_80103CE0
/* 11882C 800FA73C 02202021 */   addu      $a0, $s1, $zero
/* 118830 800FA740 2610FFFF */  addiu      $s0, $s0, -0x1
/* 118834 800FA744 1613FFFC */  bne        $s0, $s3, .Lmenu_800FA738
/* 118838 800FA748 263102F0 */   addiu     $s1, $s1, 0x2F0
/* 11883C 800FA74C 26512EBC */  addiu      $s1, $s2, 0x2EBC
/* 118840 800FA750 24100008 */  addiu      $s0, $zero, 0x8
/* 118844 800FA754 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_800FA758:
/* 118848 800FA758 0C047CA8 */  jal        func_menu_8011F2A0
/* 11884C 800FA75C 02202021 */   addu      $a0, $s1, $zero
/* 118850 800FA760 2610FFFF */  addiu      $s0, $s0, -0x1
/* 118854 800FA764 1613FFFC */  bne        $s0, $s3, .Lmenu_800FA758
/* 118858 800FA768 26310078 */   addiu     $s1, $s1, 0x78
/* 11885C 800FA76C 265132F4 */  addiu      $s1, $s2, 0x32F4
/* 118860 800FA770 24100008 */  addiu      $s0, $zero, 0x8
/* 118864 800FA774 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_800FA778:
/* 118868 800FA778 0C0016DC */  jal        func_80005B70
/* 11886C 800FA77C 02202021 */   addu      $a0, $s1, $zero
/* 118870 800FA780 2610FFFF */  addiu      $s0, $s0, -0x1
/* 118874 800FA784 1613FFFC */  bne        $s0, $s3, .Lmenu_800FA778
/* 118878 800FA788 2631000C */   addiu     $s1, $s1, 0xC
/* 11887C 800FA78C 0C03EA4F */  jal        func_menu_800FA93C
/* 118880 800FA790 02402021 */   addu      $a0, $s2, $zero
/* 118884 800FA794 02401021 */  addu       $v0, $s2, $zero
/* 118888 800FA798 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11888C 800FA79C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 118890 800FA7A0 8FB20018 */  lw         $s2, 0x18($sp)
/* 118894 800FA7A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 118898 800FA7A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 11889C 800FA7AC 03E00008 */  jr         $ra
/* 1188A0 800FA7B0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FA7B4
/* 1188A4 800FA7B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1188A8 800FA7B8 AFB20018 */  sw         $s2, 0x18($sp)
/* 1188AC 800FA7BC 00809021 */  addu       $s2, $a0, $zero
/* 1188B0 800FA7C0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1188B4 800FA7C4 00A09821 */  addu       $s3, $a1, $zero
/* 1188B8 800FA7C8 3C02800D */  lui        $v0, %hi(D_menu_800CCB90)
/* 1188BC 800FA7CC 2442CB90 */  addiu      $v0, $v0, %lo(D_menu_800CCB90)
/* 1188C0 800FA7D0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1188C4 800FA7D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1188C8 800FA7D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1188CC 800FA7DC 0C040232 */  jal        func_menu_801008C8
/* 1188D0 800FA7E0 AE420000 */   sw        $v0, 0x0($s2)
/* 1188D4 800FA7E4 264232F4 */  addiu      $v0, $s2, 0x32F4
/* 1188D8 800FA7E8 5040000C */  beql       $v0, $zero, .Lmenu_800FA81C
/* 1188DC 800FA7EC 26422EBC */   addiu     $v0, $s2, 0x2EBC
/* 1188E0 800FA7F0 26503360 */  addiu      $s0, $s2, 0x3360
/* 1188E4 800FA7F4 50500009 */  beql       $v0, $s0, .Lmenu_800FA81C
/* 1188E8 800FA7F8 26422EBC */   addiu     $v0, $s2, 0x2EBC
/* 1188EC 800FA7FC 00408821 */  addu       $s1, $v0, $zero
/* 1188F0 800FA800 2610FFF4 */  addiu      $s0, $s0, -0xC
.Lmenu_800FA804:
/* 1188F4 800FA804 02002021 */  addu       $a0, $s0, $zero
/* 1188F8 800FA808 0C0016E2 */  jal        func_80005B88
/* 1188FC 800FA80C 24050002 */   addiu     $a1, $zero, 0x2
/* 118900 800FA810 5630FFFC */  bnel       $s1, $s0, .Lmenu_800FA804
/* 118904 800FA814 2610FFF4 */   addiu     $s0, $s0, -0xC
/* 118908 800FA818 26422EBC */  addiu      $v0, $s2, 0x2EBC
.Lmenu_800FA81C:
/* 11890C 800FA81C 1040000D */  beqz       $v0, .Lmenu_800FA854
/* 118910 800FA820 265032F4 */   addiu     $s0, $s2, 0x32F4
/* 118914 800FA824 5050000C */  beql       $v0, $s0, .Lmenu_800FA858
/* 118918 800FA828 2642144C */   addiu     $v0, $s2, 0x144C
/* 11891C 800FA82C 00408821 */  addu       $s1, $v0, $zero
/* 118920 800FA830 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_800FA834:
/* 118924 800FA834 8E020054 */  lw         $v0, 0x54($s0)
/* 118928 800FA838 24050002 */  addiu      $a1, $zero, 0x2
/* 11892C 800FA83C 84440010 */  lh         $a0, 0x10($v0)
/* 118930 800FA840 8C420014 */  lw         $v0, 0x14($v0)
/* 118934 800FA844 0040F809 */  jalr       $v0
/* 118938 800FA848 02042021 */   addu      $a0, $s0, $a0
/* 11893C 800FA84C 1630FFF9 */  bne        $s1, $s0, .Lmenu_800FA834
/* 118940 800FA850 2610FF88 */   addiu     $s0, $s0, -0x78
.Lmenu_800FA854:
/* 118944 800FA854 2642144C */  addiu      $v0, $s2, 0x144C
.Lmenu_800FA858:
/* 118948 800FA858 1040000D */  beqz       $v0, .Lmenu_800FA890
/* 11894C 800FA85C 26502EBC */   addiu     $s0, $s2, 0x2EBC
/* 118950 800FA860 5050000C */  beql       $v0, $s0, .Lmenu_800FA894
/* 118954 800FA864 265013D4 */   addiu     $s0, $s2, 0x13D4
/* 118958 800FA868 00408821 */  addu       $s1, $v0, $zero
/* 11895C 800FA86C 2610FD10 */  addiu      $s0, $s0, -0x2F0
.Lmenu_800FA870:
/* 118960 800FA870 8E020054 */  lw         $v0, 0x54($s0)
/* 118964 800FA874 24050002 */  addiu      $a1, $zero, 0x2
/* 118968 800FA878 84440010 */  lh         $a0, 0x10($v0)
/* 11896C 800FA87C 8C420014 */  lw         $v0, 0x14($v0)
/* 118970 800FA880 0040F809 */  jalr       $v0
/* 118974 800FA884 02042021 */   addu      $a0, $s0, $a0
/* 118978 800FA888 1630FFF9 */  bne        $s1, $s0, .Lmenu_800FA870
/* 11897C 800FA88C 2610FD10 */   addiu     $s0, $s0, -0x2F0
.Lmenu_800FA890:
/* 118980 800FA890 265013D4 */  addiu      $s0, $s2, 0x13D4
.Lmenu_800FA894:
/* 118984 800FA894 02002021 */  addu       $a0, $s0, $zero
/* 118988 800FA898 0C047CB9 */  jal        func_menu_8011F2E4
/* 11898C 800FA89C 24050002 */   addiu     $a1, $zero, 0x2
/* 118990 800FA8A0 26421208 */  addiu      $v0, $s2, 0x1208
/* 118994 800FA8A4 1040000D */  beqz       $v0, .Lmenu_800FA8DC
/* 118998 800FA8A8 26440814 */   addiu     $a0, $s2, 0x814
/* 11899C 800FA8AC 1050000B */  beq        $v0, $s0, .Lmenu_800FA8DC
/* 1189A0 800FA8B0 00408821 */   addu      $s1, $v0, $zero
/* 1189A4 800FA8B4 2610FFA4 */  addiu      $s0, $s0, -0x5C
.Lmenu_800FA8B8:
/* 1189A8 800FA8B8 8E020054 */  lw         $v0, 0x54($s0)
/* 1189AC 800FA8BC 24050002 */  addiu      $a1, $zero, 0x2
/* 1189B0 800FA8C0 84440010 */  lh         $a0, 0x10($v0)
/* 1189B4 800FA8C4 8C420014 */  lw         $v0, 0x14($v0)
/* 1189B8 800FA8C8 0040F809 */  jalr       $v0
/* 1189BC 800FA8CC 02042021 */   addu      $a0, $s0, $a0
/* 1189C0 800FA8D0 1630FFF9 */  bne        $s1, $s0, .Lmenu_800FA8B8
/* 1189C4 800FA8D4 2610FFA4 */   addiu     $s0, $s0, -0x5C
/* 1189C8 800FA8D8 26440814 */  addiu      $a0, $s2, 0x814
.Lmenu_800FA8DC:
/* 1189CC 800FA8DC 0C044D49 */  jal        func_menu_80113524
/* 1189D0 800FA8E0 24050002 */   addiu     $a1, $zero, 0x2
/* 1189D4 800FA8E4 26440780 */  addiu      $a0, $s2, 0x780
/* 1189D8 800FA8E8 0C0472AB */  jal        func_menu_8011CAAC
/* 1189DC 800FA8EC 24050002 */   addiu     $a1, $zero, 0x2
/* 1189E0 800FA8F0 2644047C */  addiu      $a0, $s2, 0x47C
/* 1189E4 800FA8F4 0C040F4B */  jal        func_menu_80103D2C
/* 1189E8 800FA8F8 24050002 */   addiu     $a1, $zero, 0x2
/* 1189EC 800FA8FC 26440404 */  addiu      $a0, $s2, 0x404
/* 1189F0 800FA900 0C047CB9 */  jal        func_menu_8011F2E4
/* 1189F4 800FA904 24050002 */   addiu     $a1, $zero, 0x2
/* 1189F8 800FA908 264403A8 */  addiu      $a0, $s2, 0x3A8
/* 1189FC 800FA90C 0C047BB3 */  jal        func_menu_8011EECC
/* 118A00 800FA910 24050002 */   addiu     $a1, $zero, 0x2
/* 118A04 800FA914 02402021 */  addu       $a0, $s2, $zero
/* 118A08 800FA918 0C0401EF */  jal        func_menu_801007BC
/* 118A0C 800FA91C 02602821 */   addu      $a1, $s3, $zero
/* 118A10 800FA920 8FBF0020 */  lw         $ra, 0x20($sp)
/* 118A14 800FA924 8FB3001C */  lw         $s3, 0x1C($sp)
/* 118A18 800FA928 8FB20018 */  lw         $s2, 0x18($sp)
/* 118A1C 800FA92C 8FB10014 */  lw         $s1, 0x14($sp)
/* 118A20 800FA930 8FB00010 */  lw         $s0, 0x10($sp)
/* 118A24 800FA934 03E00008 */  jr         $ra
/* 118A28 800FA938 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FA93C
/* 118A2C 800FA93C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 118A30 800FA940 AFB00010 */  sw         $s0, 0x10($sp)
/* 118A34 800FA944 00808021 */  addu       $s0, $a0, $zero
/* 118A38 800FA948 26040368 */  addiu      $a0, $s0, 0x368
/* 118A3C 800FA94C 00002821 */  addu       $a1, $zero, $zero
/* 118A40 800FA950 24060014 */  addiu      $a2, $zero, 0x14
/* 118A44 800FA954 AFBF0014 */  sw         $ra, 0x14($sp)
/* 118A48 800FA958 AE00039C */  sw         $zero, 0x39C($s0)
/* 118A4C 800FA95C AE0003A0 */  sw         $zero, 0x3A0($s0)
/* 118A50 800FA960 AE0003A4 */  sw         $zero, 0x3A4($s0)
/* 118A54 800FA964 AE000390 */  sw         $zero, 0x390($s0)
/* 118A58 800FA968 AE000394 */  sw         $zero, 0x394($s0)
/* 118A5C 800FA96C 0C000697 */  jal        func_80001A5C
/* 118A60 800FA970 AE000398 */   sw        $zero, 0x398($s0)
/* 118A64 800FA974 2604037C */  addiu      $a0, $s0, 0x37C
/* 118A68 800FA978 00002821 */  addu       $a1, $zero, $zero
/* 118A6C 800FA97C 0C000697 */  jal        func_80001A5C
/* 118A70 800FA980 24060014 */   addiu     $a2, $zero, 0x14
/* 118A74 800FA984 2604076C */  addiu      $a0, $s0, 0x76C
/* 118A78 800FA988 00002821 */  addu       $a1, $zero, $zero
/* 118A7C 800FA98C 0C000697 */  jal        func_80001A5C
/* 118A80 800FA990 24060012 */   addiu     $a2, $zero, 0x12
/* 118A84 800FA994 2404002E */  addiu      $a0, $zero, 0x2E
/* 118A88 800FA998 24030007 */  addiu      $v1, $zero, 0x7
/* 118A8C 800FA99C 2602000E */  addiu      $v0, $s0, 0xE
.Lmenu_800FA9A0:
/* 118A90 800FA9A0 A444076C */  sh         $a0, 0x76C($v0)
/* 118A94 800FA9A4 2463FFFF */  addiu      $v1, $v1, -0x1
/* 118A98 800FA9A8 0461FFFD */  bgez       $v1, .Lmenu_800FA9A0
/* 118A9C 800FA9AC 2442FFFE */   addiu     $v0, $v0, -0x2
/* 118AA0 800FA9B0 0C040207 */  jal        func_menu_8010081C
/* 118AA4 800FA9B4 02002021 */   addu      $a0, $s0, $zero
/* 118AA8 800FA9B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 118AAC 800FA9BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 118AB0 800FA9C0 03E00008 */  jr         $ra
/* 118AB4 800FA9C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FA9C8
/* 118AB8 800FA9C8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 118ABC 800FA9CC AFB30034 */  sw         $s3, 0x34($sp)
/* 118AC0 800FA9D0 00809821 */  addu       $s3, $a0, $zero
/* 118AC4 800FA9D4 266503A8 */  addiu      $a1, $s3, 0x3A8
/* 118AC8 800FA9D8 24060052 */  addiu      $a2, $zero, 0x52
/* 118ACC 800FA9DC AFBF003C */  sw         $ra, 0x3C($sp)
/* 118AD0 800FA9E0 AFB40038 */  sw         $s4, 0x38($sp)
/* 118AD4 800FA9E4 AFB20030 */  sw         $s2, 0x30($sp)
/* 118AD8 800FA9E8 AFB1002C */  sw         $s1, 0x2C($sp)
/* 118ADC 800FA9EC AFB00028 */  sw         $s0, 0x28($sp)
/* 118AE0 800FA9F0 967003A6 */  lhu        $s0, 0x3A6($s3)
/* 118AE4 800FA9F4 00C03821 */  addu       $a3, $a2, $zero
/* 118AE8 800FA9F8 0C04675B */  jal        func_menu_80119D6C
/* 118AEC 800FA9FC 26100017 */   addiu     $s0, $s0, 0x17
/* 118AF0 800FAA00 02602021 */  addu       $a0, $s3, $zero
/* 118AF4 800FAA04 26710404 */  addiu      $s1, $s3, 0x404
/* 118AF8 800FAA08 02202821 */  addu       $a1, $s1, $zero
/* 118AFC 800FAA0C 24060043 */  addiu      $a2, $zero, 0x43
/* 118B00 800FAA10 00C03821 */  addu       $a3, $a2, $zero
/* 118B04 800FAA14 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* 118B08 800FAA18 0C04679E */  jal        func_menu_80119E78
/* 118B0C 800FAA1C AFB00010 */   sw        $s0, 0x10($sp)
/* 118B10 800FAA20 8E680434 */  lw         $t0, 0x434($s3)
/* 118B14 800FAA24 8E690438 */  lw         $t1, 0x438($s3)
/* 118B18 800FAA28 8E6A043C */  lw         $t2, 0x43C($s3)
/* 118B1C 800FAA2C 8E6B0440 */  lw         $t3, 0x440($s3)
/* 118B20 800FAA30 AFA80018 */  sw         $t0, 0x18($sp)
/* 118B24 800FAA34 AFA9001C */  sw         $t1, 0x1C($sp)
/* 118B28 800FAA38 AFAA0020 */  sw         $t2, 0x20($sp)
/* 118B2C 800FAA3C AFAB0024 */  sw         $t3, 0x24($sp)
/* 118B30 800FAA40 8FA20020 */  lw         $v0, 0x20($sp)
/* 118B34 800FAA44 8FA30018 */  lw         $v1, 0x18($sp)
/* 118B38 800FAA48 00431023 */  subu       $v0, $v0, $v1
/* 118B3C 800FAA4C 28420187 */  slti       $v0, $v0, 0x187
/* 118B40 800FAA50 14400003 */  bnez       $v0, .Lmenu_800FAA60
/* 118B44 800FAA54 27A50018 */   addiu     $a1, $sp, 0x18
/* 118B48 800FAA58 24620186 */  addiu      $v0, $v1, 0x186
/* 118B4C 800FAA5C AFA20020 */  sw         $v0, 0x20($sp)
.Lmenu_800FAA60:
/* 118B50 800FAA60 0C04936A */  jal        func_menu_80124DA8
/* 118B54 800FAA64 02202021 */   addu      $a0, $s1, $zero
/* 118B58 800FAA68 02202021 */  addu       $a0, $s1, $zero
/* 118B5C 800FAA6C 0C047D63 */  jal        func_menu_8011F58C
/* 118B60 800FAA70 2405001E */   addiu     $a1, $zero, 0x1E
/* 118B64 800FAA74 00008021 */  addu       $s0, $zero, $zero
/* 118B68 800FAA78 24140069 */  addiu      $s4, $zero, 0x69
/* 118B6C 800FAA7C 24122EBC */  addiu      $s2, $zero, 0x2EBC
/* 118B70 800FAA80 2411144C */  addiu      $s1, $zero, 0x144C
.Lmenu_800FAA84:
/* 118B74 800FAA84 02602021 */  addu       $a0, $s3, $zero
/* 118B78 800FAA88 02712821 */  addu       $a1, $s3, $s1
/* 118B7C 800FAA8C 26060115 */  addiu      $a2, $s0, 0x115
/* 118B80 800FAA90 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 118B84 800FAA94 2407004B */  addiu      $a3, $zero, 0x4B
/* 118B88 800FAA98 0C040297 */  jal        func_menu_80100A5C
/* 118B8C 800FAA9C AFB40010 */   sw        $s4, 0x10($sp)
/* 118B90 800FAAA0 02602021 */  addu       $a0, $s3, $zero
/* 118B94 800FAAA4 02722821 */  addu       $a1, $s3, $s2
/* 118B98 800FAAA8 26060123 */  addiu      $a2, $s0, 0x123
/* 118B9C 800FAAAC 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 118BA0 800FAAB0 24070040 */  addiu      $a3, $zero, 0x40
/* 118BA4 800FAAB4 26020069 */  addiu      $v0, $s0, 0x69
/* 118BA8 800FAAB8 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 118BAC 800FAABC 0C04679E */  jal        func_menu_80119E78
/* 118BB0 800FAAC0 AFA20010 */   sw        $v0, 0x10($sp)
/* 118BB4 800FAAC4 26520078 */  addiu      $s2, $s2, 0x78
/* 118BB8 800FAAC8 26100001 */  addiu      $s0, $s0, 0x1
/* 118BBC 800FAACC 2E020009 */  sltiu      $v0, $s0, 0x9
/* 118BC0 800FAAD0 1440FFEC */  bnez       $v0, .Lmenu_800FAA84
/* 118BC4 800FAAD4 263102F0 */   addiu     $s1, $s1, 0x2F0
/* 118BC8 800FAAD8 00002821 */  addu       $a1, $zero, $zero
/* 118BCC 800FAADC 3C11BFFF */  lui        $s1, (0xBFFFFFFF >> 16)
/* 118BD0 800FAAE0 8E6214A0 */  lw         $v0, 0x14A0($s3)
/* 118BD4 800FAAE4 2670144C */  addiu      $s0, $s3, 0x144C
/* 118BD8 800FAAE8 84440098 */  lh         $a0, 0x98($v0)
/* 118BDC 800FAAEC 8C42009C */  lw         $v0, 0x9C($v0)
/* 118BE0 800FAAF0 0040F809 */  jalr       $v0
/* 118BE4 800FAAF4 02042021 */   addu      $a0, $s0, $a0
/* 118BE8 800FAAF8 3631FFFF */  ori        $s1, $s1, (0xBFFFFFFF & 0xFFFF)
/* 118BEC 800FAAFC 8E020018 */  lw         $v0, 0x18($s0)
/* 118BF0 800FAB00 26632EBC */  addiu      $v1, $s3, 0x2EBC
/* 118BF4 800FAB04 00511024 */  and        $v0, $v0, $s1
/* 118BF8 800FAB08 AE020018 */  sw         $v0, 0x18($s0)
/* 118BFC 800FAB0C 8C620018 */  lw         $v0, 0x18($v1)
/* 118C00 800FAB10 00002821 */  addu       $a1, $zero, $zero
/* 118C04 800FAB14 00511024 */  and        $v0, $v0, $s1
/* 118C08 800FAB18 AC620018 */  sw         $v0, 0x18($v1)
/* 118C0C 800FAB1C 8E621790 */  lw         $v0, 0x1790($s3)
/* 118C10 800FAB20 2670173C */  addiu      $s0, $s3, 0x173C
/* 118C14 800FAB24 84440098 */  lh         $a0, 0x98($v0)
/* 118C18 800FAB28 8C42009C */  lw         $v0, 0x9C($v0)
/* 118C1C 800FAB2C 0040F809 */  jalr       $v0
/* 118C20 800FAB30 02042021 */   addu      $a0, $s0, $a0
/* 118C24 800FAB34 02602021 */  addu       $a0, $s3, $zero
/* 118C28 800FAB38 2485047C */  addiu      $a1, $a0, 0x47C
/* 118C2C 800FAB3C 24060048 */  addiu      $a2, $zero, 0x48
/* 118C30 800FAB40 8E020018 */  lw         $v0, 0x18($s0)
/* 118C34 800FAB44 24832F34 */  addiu      $v1, $a0, 0x2F34
/* 118C38 800FAB48 00511024 */  and        $v0, $v0, $s1
/* 118C3C 800FAB4C AE020018 */  sw         $v0, 0x18($s0)
/* 118C40 800FAB50 8C620018 */  lw         $v0, 0x18($v1)
/* 118C44 800FAB54 2407004F */  addiu      $a3, $zero, 0x4F
/* 118C48 800FAB58 00511024 */  and        $v0, $v0, $s1
/* 118C4C 800FAB5C AC620018 */  sw         $v0, 0x18($v1)
/* 118C50 800FAB60 2402001E */  addiu      $v0, $zero, 0x1E
/* 118C54 800FAB64 0C040297 */  jal        func_menu_80100A5C
/* 118C58 800FAB68 AFA20010 */   sw        $v0, 0x10($sp)
/* 118C5C 800FAB6C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 118C60 800FAB70 8FB40038 */  lw         $s4, 0x38($sp)
/* 118C64 800FAB74 8FB30034 */  lw         $s3, 0x34($sp)
/* 118C68 800FAB78 8FB20030 */  lw         $s2, 0x30($sp)
/* 118C6C 800FAB7C 8FB1002C */  lw         $s1, 0x2C($sp)
/* 118C70 800FAB80 8FB00028 */  lw         $s0, 0x28($sp)
/* 118C74 800FAB84 03E00008 */  jr         $ra
/* 118C78 800FAB88 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800FAB8C
/* 118C7C 800FAB8C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 118C80 800FAB90 AFB00010 */  sw         $s0, 0x10($sp)
/* 118C84 800FAB94 00808021 */  addu       $s0, $a0, $zero
/* 118C88 800FAB98 AFBF002C */  sw         $ra, 0x2C($sp)
/* 118C8C 800FAB9C AFB60028 */  sw         $s6, 0x28($sp)
/* 118C90 800FABA0 AFB50024 */  sw         $s5, 0x24($sp)
/* 118C94 800FABA4 AFB40020 */  sw         $s4, 0x20($sp)
/* 118C98 800FABA8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 118C9C 800FABAC AFB20018 */  sw         $s2, 0x18($sp)
/* 118CA0 800FABB0 0C0404D7 */  jal        func_menu_8010135C
/* 118CA4 800FABB4 AFB10014 */   sw        $s1, 0x14($sp)
/* 118CA8 800FABB8 8E0200CC */  lw         $v0, 0xCC($s0)
/* 118CAC 800FABBC 8C420034 */  lw         $v0, 0x34($v0)
/* 118CB0 800FABC0 AE02039C */  sw         $v0, 0x39C($s0)
/* 118CB4 800FABC4 2C420004 */  sltiu      $v0, $v0, 0x4
/* 118CB8 800FABC8 14400003 */  bnez       $v0, .Lmenu_800FABD8
/* 118CBC 800FABCC 00008821 */   addu      $s1, $zero, $zero
/* 118CC0 800FABD0 24020003 */  addiu      $v0, $zero, 0x3
/* 118CC4 800FABD4 AE02039C */  sw         $v0, 0x39C($s0)
.Lmenu_800FABD8:
/* 118CC8 800FABD8 24160004 */  addiu      $s6, $zero, 0x4
/* 118CCC 800FABDC 24150006 */  addiu      $s5, $zero, 0x6
/* 118CD0 800FABE0 02009821 */  addu       $s3, $s0, $zero
/* 118CD4 800FABE4 24121208 */  addiu      $s2, $zero, 0x1208
.Lmenu_800FABE8:
/* 118CD8 800FABE8 2E220003 */  sltiu      $v0, $s1, 0x3
/* 118CDC 800FABEC 10400019 */  beqz       $v0, .Lmenu_800FAC54
/* 118CE0 800FABF0 00111880 */   sll       $v1, $s1, 2
/* 118CE4 800FABF4 8E0200CC */  lw         $v0, 0xCC($s0)
/* 118CE8 800FABF8 00431021 */  addu       $v0, $v0, $v1
/* 118CEC 800FABFC 8C540040 */  lw         $s4, 0x40($v0)
/* 118CF0 800FAC00 5280FFF9 */  beql       $s4, $zero, .Lmenu_800FABE8
/* 118CF4 800FAC04 26310001 */   addiu     $s1, $s1, 0x1
/* 118CF8 800FAC08 8E820050 */  lw         $v0, 0x50($s4)
/* 118CFC 800FAC0C 10560005 */  beq        $v0, $s6, .Lmenu_800FAC24
/* 118D00 800FAC10 02002021 */   addu      $a0, $s0, $zero
/* 118D04 800FAC14 10550006 */  beq        $v0, $s5, .Lmenu_800FAC30
/* 118D08 800FAC18 02122821 */   addu      $a1, $s0, $s2
/* 118D0C 800FAC1C 0803EB0D */  j          .Lmenu_800FAC34
/* 118D10 800FAC20 2406011F */   addiu     $a2, $zero, 0x11F
.Lmenu_800FAC24:
/* 118D14 800FAC24 02122821 */  addu       $a1, $s0, $s2
/* 118D18 800FAC28 0803EB0D */  j          .Lmenu_800FAC34
/* 118D1C 800FAC2C 24060120 */   addiu     $a2, $zero, 0x120
.Lmenu_800FAC30:
/* 118D20 800FAC30 24060121 */  addiu      $a2, $zero, 0x121
.Lmenu_800FAC34:
/* 118D24 800FAC34 0C04675B */  jal        func_menu_80119D6C
/* 118D28 800FAC38 00C03821 */   addu      $a3, $a2, $zero
/* 118D2C 800FAC3C AE740368 */  sw         $s4, 0x368($s3)
/* 118D30 800FAC40 AE71037C */  sw         $s1, 0x37C($s3)
/* 118D34 800FAC44 26730004 */  addiu      $s3, $s3, 0x4
/* 118D38 800FAC48 2652005C */  addiu      $s2, $s2, 0x5C
/* 118D3C 800FAC4C 0803EAFA */  j          .Lmenu_800FABE8
/* 118D40 800FAC50 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800FAC54:
/* 118D44 800FAC54 8E0300CC */  lw         $v1, 0xCC($s0)
/* 118D48 800FAC58 8C62002C */  lw         $v0, 0x2C($v1)
/* 118D4C 800FAC5C 1040001D */  beqz       $v0, .Lmenu_800FACD4
/* 118D50 800FAC60 24110002 */   addiu     $s1, $zero, 0x2
/* 118D54 800FAC64 8C740038 */  lw         $s4, 0x38($v1)
/* 118D58 800FAC68 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800FAC6C:
/* 118D5C 800FAC6C 24060122 */  addiu      $a2, $zero, 0x122
/* 118D60 800FAC70 8E02039C */  lw         $v0, 0x39C($s0)
/* 118D64 800FAC74 00C03821 */  addu       $a3, $a2, $zero
/* 118D68 800FAC78 00022840 */  sll        $a1, $v0, 1
/* 118D6C 800FAC7C 00A22821 */  addu       $a1, $a1, $v0
/* 118D70 800FAC80 000528C0 */  sll        $a1, $a1, 3
/* 118D74 800FAC84 00A22823 */  subu       $a1, $a1, $v0
/* 118D78 800FAC88 00052880 */  sll        $a1, $a1, 2
/* 118D7C 800FAC8C 24A51208 */  addiu      $a1, $a1, 0x1208
/* 118D80 800FAC90 0C04675B */  jal        func_menu_80119D6C
/* 118D84 800FAC94 02052821 */   addu      $a1, $s0, $a1
/* 118D88 800FAC98 8E02039C */  lw         $v0, 0x39C($s0)
/* 118D8C 800FAC9C 00021080 */  sll        $v0, $v0, 2
/* 118D90 800FACA0 02021021 */  addu       $v0, $s0, $v0
/* 118D94 800FACA4 AC540368 */  sw         $s4, 0x368($v0)
/* 118D98 800FACA8 8E02039C */  lw         $v0, 0x39C($s0)
/* 118D9C 800FACAC 00021080 */  sll        $v0, $v0, 2
/* 118DA0 800FACB0 02021021 */  addu       $v0, $s0, $v0
/* 118DA4 800FACB4 AC51037C */  sw         $s1, 0x37C($v0)
/* 118DA8 800FACB8 8E02039C */  lw         $v0, 0x39C($s0)
/* 118DAC 800FACBC 26310001 */  addiu      $s1, $s1, 0x1
/* 118DB0 800FACC0 24420001 */  addiu      $v0, $v0, 0x1
/* 118DB4 800FACC4 AE02039C */  sw         $v0, 0x39C($s0)
/* 118DB8 800FACC8 2E220005 */  sltiu      $v0, $s1, 0x5
/* 118DBC 800FACCC 1440FFE7 */  bnez       $v0, .Lmenu_800FAC6C
/* 118DC0 800FACD0 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800FACD4:
/* 118DC4 800FACD4 8FBF002C */  lw         $ra, 0x2C($sp)
/* 118DC8 800FACD8 8FB60028 */  lw         $s6, 0x28($sp)
/* 118DCC 800FACDC 8FB50024 */  lw         $s5, 0x24($sp)
/* 118DD0 800FACE0 8FB40020 */  lw         $s4, 0x20($sp)
/* 118DD4 800FACE4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 118DD8 800FACE8 8FB20018 */  lw         $s2, 0x18($sp)
/* 118DDC 800FACEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 118DE0 800FACF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 118DE4 800FACF4 03E00008 */  jr         $ra
/* 118DE8 800FACF8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FACFC
/* 118DEC 800FACFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 118DF0 800FAD00 AFB00010 */  sw         $s0, 0x10($sp)
/* 118DF4 800FAD04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 118DF8 800FAD08 94C30028 */  lhu        $v1, 0x28($a2)
/* 118DFC 800FAD0C 2402000B */  addiu      $v0, $zero, 0xB
/* 118E00 800FAD10 14620003 */  bne        $v1, $v0, .Lmenu_800FAD20
/* 118E04 800FAD14 00808021 */   addu      $s0, $a0, $zero
/* 118E08 800FAD18 24020001 */  addiu      $v0, $zero, 0x1
/* 118E0C 800FAD1C AE0203A4 */  sw         $v0, 0x3A4($s0)
.Lmenu_800FAD20:
/* 118E10 800FAD20 24020009 */  addiu      $v0, $zero, 0x9
/* 118E14 800FAD24 A4C20028 */  sh         $v0, 0x28($a2)
/* 118E18 800FAD28 0C040214 */  jal        func_menu_80100850
/* 118E1C 800FAD2C 02002021 */   addu      $a0, $s0, $zero
/* 118E20 800FAD30 10400022 */  beqz       $v0, .Lmenu_800FADBC
/* 118E24 800FAD34 00001021 */   addu      $v0, $zero, $zero
/* 118E28 800FAD38 0C03EAE3 */  jal        func_menu_800FAB8C
/* 118E2C 800FAD3C 02002021 */   addu      $a0, $s0, $zero
/* 118E30 800FAD40 8E0203A4 */  lw         $v0, 0x3A4($s0)
/* 118E34 800FAD44 8E030354 */  lw         $v1, 0x354($s0)
/* 118E38 800FAD48 00021080 */  sll        $v0, $v0, 2
/* 118E3C 800FAD4C 00621821 */  addu       $v1, $v1, $v0
/* 118E40 800FAD50 8E02039C */  lw         $v0, 0x39C($s0)
/* 118E44 800FAD54 9066298F */  lbu        $a2, 0x298F($v1)
/* 118E48 800FAD58 1040000A */  beqz       $v0, .Lmenu_800FAD84
/* 118E4C 800FAD5C 00002021 */   addu      $a0, $zero, $zero
/* 118E50 800FAD60 00402821 */  addu       $a1, $v0, $zero
/* 118E54 800FAD64 02001821 */  addu       $v1, $s0, $zero
.Lmenu_800FAD68:
/* 118E58 800FAD68 8C62037C */  lw         $v0, 0x37C($v1)
/* 118E5C 800FAD6C 50460005 */  beql       $v0, $a2, .Lmenu_800FAD84
/* 118E60 800FAD70 AE0403A0 */   sw        $a0, 0x3A0($s0)
/* 118E64 800FAD74 24840001 */  addiu      $a0, $a0, 0x1
/* 118E68 800FAD78 0085102B */  sltu       $v0, $a0, $a1
/* 118E6C 800FAD7C 1440FFFA */  bnez       $v0, .Lmenu_800FAD68
/* 118E70 800FAD80 24630004 */   addiu     $v1, $v1, 0x4
.Lmenu_800FAD84:
/* 118E74 800FAD84 24050004 */  addiu      $a1, $zero, 0x4
/* 118E78 800FAD88 8E021A80 */  lw         $v0, 0x1A80($s0)
/* 118E7C 800FAD8C 26031A2C */  addiu      $v1, $s0, 0x1A2C
/* 118E80 800FAD90 844400A0 */  lh         $a0, 0xA0($v0)
/* 118E84 800FAD94 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 118E88 800FAD98 0040F809 */  jalr       $v0
/* 118E8C 800FAD9C 00642021 */   addu      $a0, $v1, $a0
/* 118E90 800FADA0 8E020000 */  lw         $v0, 0x0($s0)
/* 118E94 800FADA4 00002821 */  addu       $a1, $zero, $zero
/* 118E98 800FADA8 844400F8 */  lh         $a0, 0xF8($v0)
/* 118E9C 800FADAC 8C4200FC */  lw         $v0, 0xFC($v0)
/* 118EA0 800FADB0 0040F809 */  jalr       $v0
/* 118EA4 800FADB4 02042021 */   addu      $a0, $s0, $a0
/* 118EA8 800FADB8 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800FADBC:
/* 118EAC 800FADBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 118EB0 800FADC0 8FB00010 */  lw         $s0, 0x10($sp)
/* 118EB4 800FADC4 03E00008 */  jr         $ra
/* 118EB8 800FADC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FADCC
/* 118EBC 800FADCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 118EC0 800FADD0 AFB00010 */  sw         $s0, 0x10($sp)
/* 118EC4 800FADD4 00808021 */  addu       $s0, $a0, $zero
/* 118EC8 800FADD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 118ECC 800FADDC 8E040354 */  lw         $a0, 0x354($s0)
/* 118ED0 800FADE0 0C0401B4 */  jal        func_menu_801006D0
/* 118ED4 800FADE4 24840004 */   addiu     $a0, $a0, 0x4
/* 118ED8 800FADE8 8E040354 */  lw         $a0, 0x354($s0)
/* 118EDC 800FADEC 24050031 */  addiu      $a1, $zero, 0x31
/* 118EE0 800FADF0 0C0401A6 */  jal        func_menu_80100698
/* 118EE4 800FADF4 24840004 */   addiu     $a0, $a0, 0x4
/* 118EE8 800FADF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 118EEC 800FADFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 118EF0 800FAE00 03E00008 */  jr         $ra
/* 118EF4 800FAE04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FAE08
/* 118EF8 800FAE08 03E00008 */  jr         $ra
/* 118EFC 800FAE0C 00000000 */   nop

glabel func_menu_800FAE10
/* 118F00 800FAE10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 118F04 800FAE14 AFB10014 */  sw         $s1, 0x14($sp)
/* 118F08 800FAE18 00808821 */  addu       $s1, $a0, $zero
/* 118F0C 800FAE1C AFB3001C */  sw         $s3, 0x1C($sp)
/* 118F10 800FAE20 00A09821 */  addu       $s3, $a1, $zero
/* 118F14 800FAE24 AFBF0020 */  sw         $ra, 0x20($sp)
/* 118F18 800FAE28 AFB20018 */  sw         $s2, 0x18($sp)
/* 118F1C 800FAE2C AFB00010 */  sw         $s0, 0x10($sp)
/* 118F20 800FAE30 9662002C */  lhu        $v0, 0x2C($s3)
/* 118F24 800FAE34 96231478 */  lhu        $v1, 0x1478($s1)
/* 118F28 800FAE38 00439023 */  subu       $s2, $v0, $v1
/* 118F2C 800FAE3C 2E420009 */  sltiu      $v0, $s2, 0x9
/* 118F30 800FAE40 10400019 */  beqz       $v0, .Lmenu_800FAEA8
/* 118F34 800FAE44 00000000 */   nop
/* 118F38 800FAE48 8E2203A0 */  lw         $v0, 0x3A0($s1)
/* 118F3C 800FAE4C 00021080 */  sll        $v0, $v0, 2
/* 118F40 800FAE50 02221021 */  addu       $v0, $s1, $v0
/* 118F44 800FAE54 8C500368 */  lw         $s0, 0x368($v0)
/* 118F48 800FAE58 0C002D28 */  jal        func_8000B4A0
/* 118F4C 800FAE5C 02002021 */   addu      $a0, $s0, $zero
/* 118F50 800FAE60 02002021 */  addu       $a0, $s0, $zero
/* 118F54 800FAE64 0C002D30 */  jal        func_8000B4C0
/* 118F58 800FAE68 AE220394 */   sw        $v0, 0x394($s1)
/* 118F5C 800FAE6C 02002021 */  addu       $a0, $s0, $zero
/* 118F60 800FAE70 00002821 */  addu       $a1, $zero, $zero
/* 118F64 800FAE74 00A03021 */  addu       $a2, $a1, $zero
/* 118F68 800FAE78 0C002D1C */  jal        func_8000B470
/* 118F6C 800FAE7C AE220398 */   sw        $v0, 0x398($s1)
/* 118F70 800FAE80 02403021 */  addu       $a2, $s2, $zero
/* 118F74 800FAE84 00003821 */  addu       $a3, $zero, $zero
/* 118F78 800FAE88 8E2203A0 */  lw         $v0, 0x3A0($s1)
/* 118F7C 800FAE8C 8E240354 */  lw         $a0, 0x354($s1)
/* 118F80 800FAE90 00021080 */  sll        $v0, $v0, 2
/* 118F84 800FAE94 02221021 */  addu       $v0, $s1, $v0
/* 118F88 800FAE98 8C45037C */  lw         $a1, 0x37C($v0)
/* 118F8C 800FAE9C 0C03C995 */  jal        func_menu_800F2654
/* 118F90 800FAEA0 24842624 */   addiu     $a0, $a0, 0x2624
/* 118F94 800FAEA4 AE330390 */  sw         $s3, 0x390($s1)
.Lmenu_800FAEA8:
/* 118F98 800FAEA8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 118F9C 800FAEAC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 118FA0 800FAEB0 8FB20018 */  lw         $s2, 0x18($sp)
/* 118FA4 800FAEB4 8FB10014 */  lw         $s1, 0x14($sp)
/* 118FA8 800FAEB8 8FB00010 */  lw         $s0, 0x10($sp)
/* 118FAC 800FAEBC 03E00008 */  jr         $ra
/* 118FB0 800FAEC0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FAEC4
/* 118FB4 800FAEC4 2482047C */  addiu      $v0, $a0, 0x47C
/* 118FB8 800FAEC8 14A20004 */  bne        $a1, $v0, .Lmenu_800FAEDC
/* 118FBC 800FAECC 24020008 */   addiu     $v0, $zero, 0x8
/* 118FC0 800FAED0 A4820360 */  sh         $v0, 0x360($a0)
/* 118FC4 800FAED4 24020001 */  addiu      $v0, $zero, 0x1
/* 118FC8 800FAED8 AC820364 */  sw         $v0, 0x364($a0)
.Lmenu_800FAEDC:
/* 118FCC 800FAEDC 03E00008 */  jr         $ra
/* 118FD0 800FAEE0 AC85035C */   sw        $a1, 0x35C($a0)

glabel func_menu_800FAEE4
/* 118FD4 800FAEE4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 118FD8 800FAEE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 118FDC 800FAEEC 00808021 */  addu       $s0, $a0, $zero
/* 118FE0 800FAEF0 00C04021 */  addu       $t0, $a2, $zero
/* 118FE4 800FAEF4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 118FE8 800FAEF8 AFB10014 */  sw         $s1, 0x14($sp)
/* 118FEC 800FAEFC 8E020354 */  lw         $v0, 0x354($s0)
/* 118FF0 800FAF00 8E0303A0 */  lw         $v1, 0x3A0($s0)
/* 118FF4 800FAF04 8D060004 */  lw         $a2, 0x4($t0)
/* 118FF8 800FAF08 24442624 */  addiu      $a0, $v0, 0x2624
/* 118FFC 800FAF0C 00031880 */  sll        $v1, $v1, 2
/* 119000 800FAF10 02031821 */  addu       $v1, $s0, $v1
/* 119004 800FAF14 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* 119008 800FAF18 00C23824 */  and        $a3, $a2, $v0
/* 11900C 800FAF1C 8C710368 */  lw         $s1, 0x368($v1)
/* 119010 800FAF20 8E020364 */  lw         $v0, 0x364($s0)
/* 119014 800FAF24 8C65037C */  lw         $a1, 0x37C($v1)
/* 119018 800FAF28 1440003C */  bnez       $v0, .Lmenu_800FB01C
/* 11901C 800FAF2C 24020001 */   addiu     $v0, $zero, 0x1
/* 119020 800FAF30 8E030358 */  lw         $v1, 0x358($s0)
/* 119024 800FAF34 10600009 */  beqz       $v1, .Lmenu_800FAF5C
/* 119028 800FAF38 2602047C */   addiu     $v0, $s0, 0x47C
/* 11902C 800FAF3C 10620007 */  beq        $v1, $v0, .Lmenu_800FAF5C
/* 119030 800FAF40 3C023000 */   lui       $v0, (0x30000004 >> 16)
/* 119034 800FAF44 34420004 */  ori        $v0, $v0, (0x30000004 & 0xFFFF)
/* 119038 800FAF48 14C20004 */  bne        $a2, $v0, .Lmenu_800FAF5C
/* 11903C 800FAF4C 00000000 */   nop
/* 119040 800FAF50 8D020000 */  lw         $v0, 0x0($t0)
/* 119044 800FAF54 1451000F */  bne        $v0, $s1, .Lmenu_800FAF94
/* 119048 800FAF58 00000000 */   nop
.Lmenu_800FAF5C:
/* 11904C 800FAF5C 8E020390 */  lw         $v0, 0x390($s0)
/* 119050 800FAF60 14400003 */  bnez       $v0, .Lmenu_800FAF70
/* 119054 800FAF64 3C023000 */   lui       $v0, (0x30000000 >> 16)
/* 119058 800FAF68 0803EC07 */  j          .Lmenu_800FB01C
/* 11905C 800FAF6C 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800FAF70:
/* 119060 800FAF70 10E20003 */  beq        $a3, $v0, .Lmenu_800FAF80
/* 119064 800FAF74 3C021000 */   lui       $v0, (0x10000000 >> 16)
/* 119068 800FAF78 14E20028 */  bne        $a3, $v0, .Lmenu_800FB01C
/* 11906C 800FAF7C 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800FAF80:
/* 119070 800FAF80 9102000D */  lbu        $v0, 0xD($t0)
/* 119074 800FAF84 10400008 */  beqz       $v0, .Lmenu_800FAFA8
/* 119078 800FAF88 24020001 */   addiu     $v0, $zero, 0x1
/* 11907C 800FAF8C 0803EC07 */  j          .Lmenu_800FB01C
/* 119080 800FAF90 00000000 */   nop
.Lmenu_800FAF94:
/* 119084 800FAF94 8E040280 */  lw         $a0, 0x280($s0)
/* 119088 800FAF98 0C047910 */  jal        func_menu_8011E440
/* 11908C 800FAF9C 24050008 */   addiu     $a1, $zero, 0x8
/* 119090 800FAFA0 0803EC07 */  j          .Lmenu_800FB01C
/* 119094 800FAFA4 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800FAFA8:
/* 119098 800FAFA8 00001821 */  addu       $v1, $zero, $zero
/* 11909C 800FAFAC 8D070004 */  lw         $a3, 0x4($t0)
/* 1190A0 800FAFB0 3C028012 */  lui        $v0, %hi(D_menu_80126EF8)
/* 1190A4 800FAFB4 24466EF8 */  addiu      $a2, $v0, %lo(D_menu_80126EF8)
.Lmenu_800FAFB8:
/* 1190A8 800FAFB8 8CC20000 */  lw         $v0, 0x0($a2)
/* 1190AC 800FAFBC 10E2FFF5 */  beq        $a3, $v0, .Lmenu_800FAF94
/* 1190B0 800FAFC0 24630001 */   addiu     $v1, $v1, 0x1
/* 1190B4 800FAFC4 2C620005 */  sltiu      $v0, $v1, 0x5
/* 1190B8 800FAFC8 1440FFFB */  bnez       $v0, .Lmenu_800FAFB8
/* 1190BC 800FAFCC 24C60004 */   addiu     $a2, $a2, 0x4
/* 1190C0 800FAFD0 8E020390 */  lw         $v0, 0x390($s0)
/* 1190C4 800FAFD4 96061478 */  lhu        $a2, 0x1478($s0)
/* 1190C8 800FAFD8 9442002C */  lhu        $v0, 0x2C($v0)
/* 1190CC 800FAFDC 8D070004 */  lw         $a3, 0x4($t0)
/* 1190D0 800FAFE0 0C03C995 */  jal        func_menu_800F2654
/* 1190D4 800FAFE4 00463023 */   subu      $a2, $v0, $a2
/* 1190D8 800FAFE8 8E050394 */  lw         $a1, 0x394($s0)
/* 1190DC 800FAFEC 8E060398 */  lw         $a2, 0x398($s0)
/* 1190E0 800FAFF0 0C002D1C */  jal        func_8000B470
/* 1190E4 800FAFF4 02202021 */   addu      $a0, $s1, $zero
/* 1190E8 800FAFF8 8E030390 */  lw         $v1, 0x390($s0)
/* 1190EC 800FAFFC 8C620054 */  lw         $v0, 0x54($v1)
/* 1190F0 800FB000 00002821 */  addu       $a1, $zero, $zero
/* 1190F4 800FB004 844400B8 */  lh         $a0, 0xB8($v0)
/* 1190F8 800FB008 8C4200BC */  lw         $v0, 0xBC($v0)
/* 1190FC 800FB00C 0040F809 */  jalr       $v0
/* 119100 800FB010 00642021 */   addu      $a0, $v1, $a0
/* 119104 800FB014 24020001 */  addiu      $v0, $zero, 0x1
/* 119108 800FB018 AE000390 */  sw         $zero, 0x390($s0)
.Lmenu_800FB01C:
/* 11910C 800FB01C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 119110 800FB020 8FB10014 */  lw         $s1, 0x14($sp)
/* 119114 800FB024 8FB00010 */  lw         $s0, 0x10($sp)
/* 119118 800FB028 03E00008 */  jr         $ra
/* 11911C 800FB02C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FB030
/* 119120 800FB030 8C820364 */  lw         $v0, 0x364($a0)
/* 119124 800FB034 14400004 */  bnez       $v0, .Lmenu_800FB048
/* 119128 800FB038 00000000 */   nop
/* 11912C 800FB03C 8C820390 */  lw         $v0, 0x390($a0)
/* 119130 800FB040 03E00008 */  jr         $ra
/* 119134 800FB044 00000000 */   nop
.Lmenu_800FB048:
/* 119138 800FB048 03E00008 */  jr         $ra
/* 11913C 800FB04C 24020001 */   addiu     $v0, $zero, 0x1

glabel func_menu_800FB050
/* 119140 800FB050 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 119144 800FB054 AFB10014 */  sw         $s1, 0x14($sp)
/* 119148 800FB058 00808821 */  addu       $s1, $a0, $zero
/* 11914C 800FB05C AFB3001C */  sw         $s3, 0x1C($sp)
/* 119150 800FB060 00009821 */  addu       $s3, $zero, $zero
/* 119154 800FB064 AFB20018 */  sw         $s2, 0x18($sp)
/* 119158 800FB068 241232F4 */  addiu      $s2, $zero, 0x32F4
/* 11915C 800FB06C AFB50024 */  sw         $s5, 0x24($sp)
/* 119160 800FB070 2415144C */  addiu      $s5, $zero, 0x144C
/* 119164 800FB074 AFBF002C */  sw         $ra, 0x2C($sp)
/* 119168 800FB078 AFB60028 */  sw         $s6, 0x28($sp)
/* 11916C 800FB07C AFB40020 */  sw         $s4, 0x20($sp)
/* 119170 800FB080 AFB00010 */  sw         $s0, 0x10($sp)
/* 119174 800FB084 8E220354 */  lw         $v0, 0x354($s1)
/* 119178 800FB088 0260A021 */  addu       $s4, $s3, $zero
/* 11917C 800FB08C 24562624 */  addiu      $s6, $v0, 0x2624
.Lmenu_800FB090:
/* 119180 800FB090 2E620009 */  sltiu      $v0, $s3, 0x9
/* 119184 800FB094 10400034 */  beqz       $v0, .Lmenu_800FB168
/* 119188 800FB098 02322021 */   addu      $a0, $s1, $s2
/* 11918C 800FB09C 2625076C */  addiu      $a1, $s1, 0x76C
/* 119190 800FB0A0 0C0016F6 */  jal        func_80005BD8
/* 119194 800FB0A4 00003021 */   addu      $a2, $zero, $zero
/* 119198 800FB0A8 02911021 */  addu       $v0, $s4, $s1
/* 11919C 800FB0AC 90421578 */  lbu        $v0, 0x1578($v0)
/* 1191A0 800FB0B0 30420004 */  andi       $v0, $v0, 0x4
/* 1191A4 800FB0B4 14400025 */  bnez       $v0, .Lmenu_800FB14C
/* 1191A8 800FB0B8 02352021 */   addu      $a0, $s1, $s5
/* 1191AC 800FB0BC 02C02021 */  addu       $a0, $s6, $zero
/* 1191B0 800FB0C0 8E2203A0 */  lw         $v0, 0x3A0($s1)
/* 1191B4 800FB0C4 8E2503A4 */  lw         $a1, 0x3A4($s1)
/* 1191B8 800FB0C8 00021080 */  sll        $v0, $v0, 2
/* 1191BC 800FB0CC 02221021 */  addu       $v0, $s1, $v0
/* 1191C0 800FB0D0 8C46037C */  lw         $a2, 0x37C($v0)
/* 1191C4 800FB0D4 0C03C93F */  jal        func_menu_800F24FC
/* 1191C8 800FB0D8 02603821 */   addu      $a3, $s3, $zero
/* 1191CC 800FB0DC 00402821 */  addu       $a1, $v0, $zero
/* 1191D0 800FB0E0 10A00019 */  beqz       $a1, .Lmenu_800FB148
/* 1191D4 800FB0E4 3C02F000 */   lui       $v0, (0xF0000000 >> 16)
/* 1191D8 800FB0E8 00A21024 */  and        $v0, $a1, $v0
/* 1191DC 800FB0EC 3C031000 */  lui        $v1, (0x10000000 >> 16)
/* 1191E0 800FB0F0 14430005 */  bne        $v0, $v1, .Lmenu_800FB108
/* 1191E4 800FB0F4 00000000 */   nop
/* 1191E8 800FB0F8 8E2200CC */  lw         $v0, 0xCC($s1)
/* 1191EC 800FB0FC 8C430038 */  lw         $v1, 0x38($v0)
/* 1191F0 800FB100 0803EC46 */  j          .Lmenu_800FB118
/* 1191F4 800FB104 00000000 */   nop
.Lmenu_800FB108:
/* 1191F8 800FB108 8E2203A0 */  lw         $v0, 0x3A0($s1)
/* 1191FC 800FB10C 00021080 */  sll        $v0, $v0, 2
/* 119200 800FB110 02221021 */  addu       $v0, $s1, $v0
/* 119204 800FB114 8C430368 */  lw         $v1, 0x368($v0)
.Lmenu_800FB118:
/* 119208 800FB118 8C620098 */  lw         $v0, 0x98($v1)
/* 11920C 800FB11C 84440050 */  lh         $a0, 0x50($v0)
/* 119210 800FB120 8C420054 */  lw         $v0, 0x54($v0)
/* 119214 800FB124 0040F809 */  jalr       $v0
/* 119218 800FB128 00642021 */   addu      $a0, $v1, $a0
/* 11921C 800FB12C 02328021 */  addu       $s0, $s1, $s2
/* 119220 800FB130 02002021 */  addu       $a0, $s0, $zero
/* 119224 800FB134 00402821 */  addu       $a1, $v0, $zero
/* 119228 800FB138 0C0016F6 */  jal        func_80005BD8
/* 11922C 800FB13C 00003021 */   addu      $a2, $zero, $zero
/* 119230 800FB140 0C001852 */  jal        func_80006148
/* 119234 800FB144 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800FB148:
/* 119238 800FB148 02352021 */  addu       $a0, $s1, $s5
.Lmenu_800FB14C:
/* 11923C 800FB14C 0C04109A */  jal        func_menu_80104268
/* 119240 800FB150 02322821 */   addu      $a1, $s1, $s2
/* 119244 800FB154 2652000C */  addiu      $s2, $s2, 0xC
/* 119248 800FB158 26B502F0 */  addiu      $s5, $s5, 0x2F0
/* 11924C 800FB15C 269402F0 */  addiu      $s4, $s4, 0x2F0
/* 119250 800FB160 0803EC24 */  j          .Lmenu_800FB090
/* 119254 800FB164 26730001 */   addiu     $s3, $s3, 0x1
.Lmenu_800FB168:
/* 119258 800FB168 8FBF002C */  lw         $ra, 0x2C($sp)
/* 11925C 800FB16C 8FB60028 */  lw         $s6, 0x28($sp)
/* 119260 800FB170 8FB50024 */  lw         $s5, 0x24($sp)
/* 119264 800FB174 8FB40020 */  lw         $s4, 0x20($sp)
/* 119268 800FB178 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11926C 800FB17C 8FB20018 */  lw         $s2, 0x18($sp)
/* 119270 800FB180 8FB10014 */  lw         $s1, 0x14($sp)
/* 119274 800FB184 8FB00010 */  lw         $s0, 0x10($sp)
/* 119278 800FB188 03E00008 */  jr         $ra
/* 11927C 800FB18C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FB190
/* 119280 800FB190 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 119284 800FB194 AFB00010 */  sw         $s0, 0x10($sp)
/* 119288 800FB198 00808021 */  addu       $s0, $a0, $zero
/* 11928C 800FB19C AFB10014 */  sw         $s1, 0x14($sp)
/* 119290 800FB1A0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 119294 800FB1A4 0C03EAE3 */  jal        func_menu_800FAB8C
/* 119298 800FB1A8 00A08821 */   addu      $s1, $a1, $zero
/* 11929C 800FB1AC 0C03EC14 */  jal        func_menu_800FB050
/* 1192A0 800FB1B0 02002021 */   addu      $a0, $s0, $zero
/* 1192A4 800FB1B4 8E0203A0 */  lw         $v0, 0x3A0($s0)
/* 1192A8 800FB1B8 00021080 */  sll        $v0, $v0, 2
/* 1192AC 800FB1BC 02021021 */  addu       $v0, $s0, $v0
/* 1192B0 800FB1C0 8C420368 */  lw         $v0, 0x368($v0)
/* 1192B4 800FB1C4 8C430054 */  lw         $v1, 0x54($v0)
/* 1192B8 800FB1C8 24020003 */  addiu      $v0, $zero, 0x3
/* 1192BC 800FB1CC 1462000D */  bne        $v1, $v0, .Lmenu_800FB204
/* 1192C0 800FB1D0 00002821 */   addu      $a1, $zero, $zero
/* 1192C4 800FB1D4 8E0214A0 */  lw         $v0, 0x14A0($s0)
/* 1192C8 800FB1D8 2603144C */  addiu      $v1, $s0, 0x144C
/* 1192CC 800FB1DC 84440090 */  lh         $a0, 0x90($v0)
/* 1192D0 800FB1E0 8C420094 */  lw         $v0, 0x94($v0)
/* 1192D4 800FB1E4 0040F809 */  jalr       $v0
/* 1192D8 800FB1E8 00642021 */   addu      $a0, $v1, $a0
/* 1192DC 800FB1EC 00002821 */  addu       $a1, $zero, $zero
/* 1192E0 800FB1F0 8E021790 */  lw         $v0, 0x1790($s0)
/* 1192E4 800FB1F4 84440090 */  lh         $a0, 0x90($v0)
/* 1192E8 800FB1F8 8C420094 */  lw         $v0, 0x94($v0)
/* 1192EC 800FB1FC 0803EC8C */  j          .Lmenu_800FB230
/* 1192F0 800FB200 2603173C */   addiu     $v1, $s0, 0x173C
.Lmenu_800FB204:
/* 1192F4 800FB204 8E0214A0 */  lw         $v0, 0x14A0($s0)
/* 1192F8 800FB208 2603144C */  addiu      $v1, $s0, 0x144C
/* 1192FC 800FB20C 84440098 */  lh         $a0, 0x98($v0)
/* 119300 800FB210 8C42009C */  lw         $v0, 0x9C($v0)
/* 119304 800FB214 0040F809 */  jalr       $v0
/* 119308 800FB218 00642021 */   addu      $a0, $v1, $a0
/* 11930C 800FB21C 00002821 */  addu       $a1, $zero, $zero
/* 119310 800FB220 8E021790 */  lw         $v0, 0x1790($s0)
/* 119314 800FB224 2603173C */  addiu      $v1, $s0, 0x173C
/* 119318 800FB228 84440098 */  lh         $a0, 0x98($v0)
/* 11931C 800FB22C 8C42009C */  lw         $v0, 0x9C($v0)
.Lmenu_800FB230:
/* 119320 800FB230 0040F809 */  jalr       $v0
/* 119324 800FB234 00642021 */   addu      $a0, $v1, $a0
/* 119328 800FB238 02002021 */  addu       $a0, $s0, $zero
/* 11932C 800FB23C 0C04056C */  jal        func_menu_801015B0
/* 119330 800FB240 02202821 */   addu      $a1, $s1, $zero
/* 119334 800FB244 8FBF0018 */  lw         $ra, 0x18($sp)
/* 119338 800FB248 8FB10014 */  lw         $s1, 0x14($sp)
/* 11933C 800FB24C 8FB00010 */  lw         $s0, 0x10($sp)
/* 119340 800FB250 03E00008 */  jr         $ra
/* 119344 800FB254 27BD0020 */   addiu     $sp, $sp, 0x20
