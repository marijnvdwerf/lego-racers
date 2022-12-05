.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel n_alFxNew
/* 138E0 80012CE0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 138E4 80012CE4 AFB00018 */  sw         $s0, 0x18($sp)
/* 138E8 80012CE8 00808021 */  addu       $s0, $a0, $zero
/* 138EC 80012CEC AFB60030 */  sw         $s6, 0x30($sp)
/* 138F0 80012CF0 00A0B021 */  addu       $s6, $a1, $zero
/* 138F4 80012CF4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 138F8 80012CF8 00C0A821 */  addu       $s5, $a2, $zero
/* 138FC 80012CFC 00002021 */  addu       $a0, $zero, $zero
/* 13900 80012D00 00802821 */  addu       $a1, $a0, $zero
/* 13904 80012D04 24070001 */  addiu      $a3, $zero, 0x1
/* 13908 80012D08 2402002C */  addiu      $v0, $zero, 0x2C
/* 1390C 80012D0C AFBF0034 */  sw         $ra, 0x34($sp)
/* 13910 80012D10 AFB40028 */  sw         $s4, 0x28($sp)
/* 13914 80012D14 AFB30024 */  sw         $s3, 0x24($sp)
/* 13918 80012D18 AFB20020 */  sw         $s2, 0x20($sp)
/* 1391C 80012D1C AFB1001C */  sw         $s1, 0x1C($sp)
/* 13920 80012D20 0C0067F4 */  jal        alHeapDBAlloc
/* 13924 80012D24 AFA20010 */   sw        $v0, 0x10($sp)
/* 13928 80012D28 00409821 */  addu       $s3, $v0, $zero
/* 1392C 80012D2C AE130000 */  sw         $s3, 0x0($s0)
/* 13930 80012D30 92C2001C */  lbu        $v0, 0x1C($s6)
/* 13934 80012D34 2443FFFF */  addiu      $v1, $v0, -0x1
/* 13938 80012D38 2C620006 */  sltiu      $v0, $v1, 0x6
/* 1393C 80012D3C 10400019 */  beqz       $v0, .L80012DA4
/* 13940 80012D40 3C028000 */   lui       $v0, %hi(jtbl_80001020)
/* 13944 80012D44 24421020 */  addiu      $v0, $v0, %lo(jtbl_80001020)
/* 13948 80012D48 00031880 */  sll        $v1, $v1, 2
/* 1394C 80012D4C 00621821 */  addu       $v1, $v1, $v0
/* 13950 80012D50 8C620000 */  lw         $v0, 0x0($v1)
/* 13954 80012D54 00400008 */  jr         $v0
/* 13958 80012D58 00000000 */   nop
glabel L80012D5C
/* 1395C 80012D5C 3C028003 */  lui        $v0, %hi(SMALLROOM_PARAMS_N)
/* 13960 80012D60 08004B6B */  j          .L80012DAC
/* 13964 80012D64 245209E0 */   addiu     $s2, $v0, %lo(SMALLROOM_PARAMS_N)
glabel L80012D68
/* 13968 80012D68 3C028003 */  lui        $v0, %hi(BIGROOM_PARAMS_N)
/* 1396C 80012D6C 08004B6B */  j          .L80012DAC
/* 13970 80012D70 24520A48 */   addiu     $s2, $v0, %lo(BIGROOM_PARAMS_N)
glabel L80012D74
/* 13974 80012D74 3C028003 */  lui        $v0, %hi(ECHO_PARAMS_N)
/* 13978 80012D78 08004B6B */  j          .L80012DAC
/* 1397C 80012D7C 24520AD0 */   addiu     $s2, $v0, %lo(ECHO_PARAMS_N)
glabel L80012D80
/* 13980 80012D80 3C028003 */  lui        $v0, %hi(CHORUS_PARAMS_N)
/* 13984 80012D84 08004B6B */  j          .L80012DAC
/* 13988 80012D88 24520AF8 */   addiu     $s2, $v0, %lo(CHORUS_PARAMS_N)
glabel L80012D8C
/* 1398C 80012D8C 3C028003 */  lui        $v0, %hi(FLANGE_PARAMS_N)
/* 13990 80012D90 08004B6B */  j          .L80012DAC
/* 13994 80012D94 24520B20 */   addiu     $s2, $v0, %lo(FLANGE_PARAMS_N)
glabel L80012D98
/* 13998 80012D98 8ED20020 */  lw         $s2, 0x20($s6)
/* 1399C 80012D9C 08004B6C */  j          .L80012DB0
/* 139A0 80012DA0 24110002 */   addiu     $s1, $zero, 0x2
.L80012DA4:
/* 139A4 80012DA4 3C028003 */  lui        $v0, %hi(NULL_PARAMS_N)
/* 139A8 80012DA8 24520B48 */  addiu      $s2, $v0, %lo(NULL_PARAMS_N)
.L80012DAC:
/* 139AC 80012DAC 24110002 */  addiu      $s1, $zero, 0x2
.L80012DB0:
/* 139B0 80012DB0 00002021 */  addu       $a0, $zero, $zero
/* 139B4 80012DB4 92420003 */  lbu        $v0, 0x3($s2)
/* 139B8 80012DB8 00802821 */  addu       $a1, $a0, $zero
/* 139BC 80012DBC A2620024 */  sb         $v0, 0x24($s3)
/* 139C0 80012DC0 304700FF */  andi       $a3, $v0, 0xFF
/* 139C4 80012DC4 8E420004 */  lw         $v0, 0x4($s2)
/* 139C8 80012DC8 02A03021 */  addu       $a2, $s5, $zero
/* 139CC 80012DCC AE62001C */  sw         $v0, 0x1C($s3)
/* 139D0 80012DD0 24020028 */  addiu      $v0, $zero, 0x28
/* 139D4 80012DD4 0C0067F4 */  jal        alHeapDBAlloc
/* 139D8 80012DD8 AFA20010 */   sw        $v0, 0x10($sp)
/* 139DC 80012DDC 00002021 */  addu       $a0, $zero, $zero
/* 139E0 80012DE0 00802821 */  addu       $a1, $a0, $zero
/* 139E4 80012DE4 AE620020 */  sw         $v0, 0x20($s3)
/* 139E8 80012DE8 24020002 */  addiu      $v0, $zero, 0x2
/* 139EC 80012DEC AFA20010 */  sw         $v0, 0x10($sp)
/* 139F0 80012DF0 8E67001C */  lw         $a3, 0x1C($s3)
/* 139F4 80012DF4 0C0067F4 */  jal        alHeapDBAlloc
/* 139F8 80012DF8 02A03021 */   addu      $a2, $s5, $zero
/* 139FC 80012DFC 8E63001C */  lw         $v1, 0x1C($s3)
/* 13A00 80012E00 00002021 */  addu       $a0, $zero, $zero
/* 13A04 80012E04 AE620014 */  sw         $v0, 0x14($s3)
/* 13A08 80012E08 1060000C */  beqz       $v1, .L80012E3C
/* 13A0C 80012E0C AE620018 */   sw        $v0, 0x18($s3)
/* 13A10 80012E10 3082FFFF */  andi       $v0, $a0, 0xFFFF
.L80012E14:
/* 13A14 80012E14 24840001 */  addiu      $a0, $a0, 0x1
/* 13A18 80012E18 8E630014 */  lw         $v1, 0x14($s3)
/* 13A1C 80012E1C 00021040 */  sll        $v0, $v0, 1
/* 13A20 80012E20 00431021 */  addu       $v0, $v0, $v1
/* 13A24 80012E24 A4400000 */  sh         $zero, 0x0($v0)
/* 13A28 80012E28 8E63001C */  lw         $v1, 0x1C($s3)
/* 13A2C 80012E2C 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 13A30 80012E30 0043102B */  sltu       $v0, $v0, $v1
/* 13A34 80012E34 1440FFF7 */  bnez       $v0, .L80012E14
/* 13A38 80012E38 3082FFFF */   andi      $v0, $a0, 0xFFFF
.L80012E3C:
/* 13A3C 80012E3C 92620024 */  lbu        $v0, 0x24($s3)
/* 13A40 80012E40 10400097 */  beqz       $v0, .L800130A0
/* 13A44 80012E44 0000A021 */   addu      $s4, $zero, $zero
/* 13A48 80012E48 3282FFFF */  andi       $v0, $s4, 0xFFFF
.L80012E4C:
/* 13A4C 80012E4C 00021880 */  sll        $v1, $v0, 2
/* 13A50 80012E50 00621821 */  addu       $v1, $v1, $v0
/* 13A54 80012E54 000318C0 */  sll        $v1, $v1, 3
/* 13A58 80012E58 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* 13A5C 80012E5C 00021080 */  sll        $v0, $v0, 2
/* 13A60 80012E60 00521021 */  addu       $v0, $v0, $s2
/* 13A64 80012E64 8E640020 */  lw         $a0, 0x20($s3)
/* 13A68 80012E68 8C420000 */  lw         $v0, 0x0($v0)
/* 13A6C 80012E6C 00838021 */  addu       $s0, $a0, $v1
/* 13A70 80012E70 26240001 */  addiu      $a0, $s1, 0x1
/* 13A74 80012E74 AE020000 */  sw         $v0, 0x0($s0)
/* 13A78 80012E78 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 13A7C 80012E7C 00021080 */  sll        $v0, $v0, 2
/* 13A80 80012E80 00521021 */  addu       $v0, $v0, $s2
/* 13A84 80012E84 8C430000 */  lw         $v1, 0x0($v0)
/* 13A88 80012E88 24820001 */  addiu      $v0, $a0, 0x1
/* 13A8C 80012E8C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 13A90 80012E90 00021080 */  sll        $v0, $v0, 2
/* 13A94 80012E94 00521021 */  addu       $v0, $v0, $s2
/* 13A98 80012E98 AE030004 */  sw         $v1, 0x4($s0)
/* 13A9C 80012E9C 94430002 */  lhu        $v1, 0x2($v0)
/* 13AA0 80012EA0 24820002 */  addiu      $v0, $a0, 0x2
/* 13AA4 80012EA4 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 13AA8 80012EA8 00021080 */  sll        $v0, $v0, 2
/* 13AAC 80012EAC 00521021 */  addu       $v0, $v0, $s2
/* 13AB0 80012EB0 A603000A */  sh         $v1, 0xA($s0)
/* 13AB4 80012EB4 94430002 */  lhu        $v1, 0x2($v0)
/* 13AB8 80012EB8 24820003 */  addiu      $v0, $a0, 0x3
/* 13ABC 80012EBC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 13AC0 80012EC0 00021080 */  sll        $v0, $v0, 2
/* 13AC4 80012EC4 00521021 */  addu       $v0, $v0, $s2
/* 13AC8 80012EC8 A6030008 */  sh         $v1, 0x8($s0)
/* 13ACC 80012ECC 94420002 */  lhu        $v0, 0x2($v0)
/* 13AD0 80012ED0 24850004 */  addiu      $a1, $a0, 0x4
/* 13AD4 80012ED4 A602000C */  sh         $v0, 0xC($s0)
/* 13AD8 80012ED8 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* 13ADC 80012EDC 00021080 */  sll        $v0, $v0, 2
/* 13AE0 80012EE0 00521021 */  addu       $v0, $v0, $s2
/* 13AE4 80012EE4 8C420000 */  lw         $v0, 0x0($v0)
/* 13AE8 80012EE8 10400041 */  beqz       $v0, .L80012FF0
/* 13AEC 80012EEC 24830005 */   addiu     $v1, $a0, 0x5
/* 13AF0 80012EF0 24910006 */  addiu      $s1, $a0, 0x6
/* 13AF4 80012EF4 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* 13AF8 80012EF8 00021080 */  sll        $v0, $v0, 2
/* 13AFC 80012EFC 00521021 */  addu       $v0, $v0, $s2
/* 13B00 80012F00 C4400000 */  lwc1       $f0, 0x0($v0)
/* 13B04 80012F04 46800020 */  cvt.s.w    $f0, $f0
/* 13B08 80012F08 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 13B0C 80012F0C 00031880 */  sll        $v1, $v1, 2
/* 13B10 80012F10 00721821 */  addu       $v1, $v1, $s2
/* 13B14 80012F14 3C018000 */  lui        $at, %hi(D_80001038)
/* 13B18 80012F18 C4221038 */  lwc1       $f2, %lo(D_80001038)($at)
/* 13B1C 80012F1C 8E040004 */  lw         $a0, 0x4($s0)
/* 13B20 80012F20 8E020000 */  lw         $v0, 0x0($s0)
/* 13B24 80012F24 46020003 */  div.s      $f0, $f0, $f2
/* 13B28 80012F28 46000021 */  cvt.d.s    $f0, $f0
/* 13B2C 80012F2C 00822023 */  subu       $a0, $a0, $v0
/* 13B30 80012F30 46200000 */  add.d      $f0, $f0, $f0
/* 13B34 80012F34 44842000 */  mtc1       $a0, $f4
/* 13B38 80012F38 46802121 */  cvt.d.w    $f4, $f4
/* 13B3C 80012F3C C6C20018 */  lwc1       $f2, 0x18($s6)
/* 13B40 80012F40 468010A1 */  cvt.d.w    $f2, $f2
/* 13B44 80012F44 46220003 */  div.d      $f0, $f0, $f2
/* 13B48 80012F48 46200020 */  cvt.s.d    $f0, $f0
/* 13B4C 80012F4C E6000010 */  swc1       $f0, 0x10($s0)
/* 13B50 80012F50 C4600000 */  lwc1       $f0, 0x0($v1)
/* 13B54 80012F54 46800020 */  cvt.s.w    $f0, $f0
/* 13B58 80012F58 3C018000 */  lui        $at, %hi(D_80001040)
/* 13B5C 80012F5C D4221040 */  ldc1       $f2, %lo(D_80001040)($at)
/* 13B60 80012F60 46000021 */  cvt.d.s    $f0, $f0
/* 13B64 80012F64 04810004 */  bgez       $a0, .L80012F78
/* 13B68 80012F68 46220083 */   div.d     $f2, $f0, $f2
/* 13B6C 80012F6C 3C018000 */  lui        $at, %hi(D_80001048)
/* 13B70 80012F70 D4201048 */  ldc1       $f0, %lo(D_80001048)($at)
/* 13B74 80012F74 46202100 */  add.d      $f4, $f4, $f0
.L80012F78:
/* 13B78 80012F78 00002021 */  addu       $a0, $zero, $zero
/* 13B7C 80012F7C 46241002 */  mul.d      $f0, $f2, $f4
/* 13B80 80012F80 00802821 */  addu       $a1, $a0, $zero
/* 13B84 80012F84 02A03021 */  addu       $a2, $s5, $zero
/* 13B88 80012F88 24070001 */  addiu      $a3, $zero, 0x1
/* 13B8C 80012F8C 3C018000 */  lui        $at, %hi(D_80001050)
/* 13B90 80012F90 C4221050 */  lwc1       $f2, %lo(D_80001050)($at)
/* 13B94 80012F94 24020034 */  addiu      $v0, $zero, 0x34
/* 13B98 80012F98 AE000018 */  sw         $zero, 0x18($s0)
/* 13B9C 80012F9C E6020014 */  swc1       $f2, 0x14($s0)
/* 13BA0 80012FA0 46200020 */  cvt.s.d    $f0, $f0
/* 13BA4 80012FA4 E600001C */  swc1       $f0, 0x1C($s0)
/* 13BA8 80012FA8 0C0067F4 */  jal        alHeapDBAlloc
/* 13BAC 80012FAC AFA20010 */   sw        $v0, 0x10($sp)
/* 13BB0 80012FB0 00002021 */  addu       $a0, $zero, $zero
/* 13BB4 80012FB4 00802821 */  addu       $a1, $a0, $zero
/* 13BB8 80012FB8 02A03021 */  addu       $a2, $s5, $zero
/* 13BBC 80012FBC 24070001 */  addiu      $a3, $zero, 0x1
/* 13BC0 80012FC0 AE020024 */  sw         $v0, 0x24($s0)
/* 13BC4 80012FC4 24020020 */  addiu      $v0, $zero, 0x20
/* 13BC8 80012FC8 0C0067F4 */  jal        alHeapDBAlloc
/* 13BCC 80012FCC AFA20010 */   sw        $v0, 0x10($sp)
/* 13BD0 80012FD0 8E030024 */  lw         $v1, 0x24($s0)
/* 13BD4 80012FD4 AC620014 */  sw         $v0, 0x14($v1)
/* 13BD8 80012FD8 8E020024 */  lw         $v0, 0x24($s0)
/* 13BDC 80012FDC AC400020 */  sw         $zero, 0x20($v0)
/* 13BE0 80012FE0 8E030024 */  lw         $v1, 0x24($s0)
/* 13BE4 80012FE4 24020001 */  addiu      $v0, $zero, 0x1
/* 13BE8 80012FE8 08004BFE */  j          .L80012FF8
/* 13BEC 80012FEC AC620024 */   sw        $v0, 0x24($v1)
.L80012FF0:
/* 13BF0 80012FF0 AE000024 */  sw         $zero, 0x24($s0)
/* 13BF4 80012FF4 24910006 */  addiu      $s1, $a0, 0x6
.L80012FF8:
/* 13BF8 80012FF8 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* 13BFC 80012FFC 00021080 */  sll        $v0, $v0, 2
/* 13C00 80013000 00521021 */  addu       $v0, $v0, $s2
/* 13C04 80013004 8C420000 */  lw         $v0, 0x0($v0)
/* 13C08 80013008 1040001D */  beqz       $v0, .L80013080
/* 13C0C 8001300C 00002021 */   addu      $a0, $zero, $zero
/* 13C10 80013010 00802821 */  addu       $a1, $a0, $zero
/* 13C14 80013014 02A03021 */  addu       $a2, $s5, $zero
/* 13C18 80013018 24070001 */  addiu      $a3, $zero, 0x1
/* 13C1C 8001301C 24020030 */  addiu      $v0, $zero, 0x30
/* 13C20 80013020 0C0067F4 */  jal        alHeapDBAlloc
/* 13C24 80013024 AFA20010 */   sw        $v0, 0x10($sp)
/* 13C28 80013028 00002021 */  addu       $a0, $zero, $zero
/* 13C2C 8001302C 00802821 */  addu       $a1, $a0, $zero
/* 13C30 80013030 02A03021 */  addu       $a2, $s5, $zero
/* 13C34 80013034 24070001 */  addiu      $a3, $zero, 0x1
/* 13C38 80013038 AE020020 */  sw         $v0, 0x20($s0)
/* 13C3C 8001303C 24020008 */  addiu      $v0, $zero, 0x8
/* 13C40 80013040 0C0067F4 */  jal        alHeapDBAlloc
/* 13C44 80013044 AFA20010 */   sw        $v0, 0x10($sp)
/* 13C48 80013048 8E030020 */  lw         $v1, 0x20($s0)
/* 13C4C 8001304C AC620028 */  sw         $v0, 0x28($v1)
/* 13C50 80013050 02201021 */  addu       $v0, $s1, $zero
/* 13C54 80013054 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 13C58 80013058 00021080 */  sll        $v0, $v0, 2
/* 13C5C 8001305C 00521021 */  addu       $v0, $v0, $s2
/* 13C60 80013060 8E030020 */  lw         $v1, 0x20($s0)
/* 13C64 80013064 94420002 */  lhu        $v0, 0x2($v0)
/* 13C68 80013068 A4620000 */  sh         $v0, 0x0($v1)
/* 13C6C 8001306C 8E040020 */  lw         $a0, 0x20($s0)
/* 13C70 80013070 0C005B4C */  jal        _init_lpfilter
/* 13C74 80013074 26310001 */   addiu     $s1, $s1, 0x1
/* 13C78 80013078 08004C23 */  j          .L8001308C
/* 13C7C 8001307C 26940001 */   addiu     $s4, $s4, 0x1
.L80013080:
/* 13C80 80013080 AE000020 */  sw         $zero, 0x20($s0)
/* 13C84 80013084 26310001 */  addiu      $s1, $s1, 0x1
/* 13C88 80013088 26940001 */  addiu      $s4, $s4, 0x1
.L8001308C:
/* 13C8C 8001308C 92630024 */  lbu        $v1, 0x24($s3)
/* 13C90 80013090 3282FFFF */  andi       $v0, $s4, 0xFFFF
/* 13C94 80013094 0043102B */  sltu       $v0, $v0, $v1
/* 13C98 80013098 1440FF6C */  bnez       $v0, .L80012E4C
/* 13C9C 8001309C 3282FFFF */   andi      $v0, $s4, 0xFFFF
.L800130A0:
/* 13CA0 800130A0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 13CA4 800130A4 8FB60030 */  lw         $s6, 0x30($sp)
/* 13CA8 800130A8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 13CAC 800130AC 8FB40028 */  lw         $s4, 0x28($sp)
/* 13CB0 800130B0 8FB30024 */  lw         $s3, 0x24($sp)
/* 13CB4 800130B4 8FB20020 */  lw         $s2, 0x20($sp)
/* 13CB8 800130B8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13CBC 800130BC 8FB00018 */  lw         $s0, 0x18($sp)
/* 13CC0 800130C0 03E00008 */  jr         $ra
/* 13CC4 800130C4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800130C8
/* 13CC8 800130C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13CCC 800130CC AFB00018 */  sw         $s0, 0x18($sp)
/* 13CD0 800130D0 00808021 */  addu       $s0, $a0, $zero
/* 13CD4 800130D4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13CD8 800130D8 00A08821 */  addu       $s1, $a1, $zero
/* 13CDC 800130DC AFB30024 */  sw         $s3, 0x24($sp)
/* 13CE0 800130E0 00C09821 */  addu       $s3, $a2, $zero
/* 13CE4 800130E4 00002021 */  addu       $a0, $zero, $zero
/* 13CE8 800130E8 00802821 */  addu       $a1, $a0, $zero
/* 13CEC 800130EC 24070001 */  addiu      $a3, $zero, 0x1
/* 13CF0 800130F0 AFB20020 */  sw         $s2, 0x20($sp)
/* 13CF4 800130F4 24120020 */  addiu      $s2, $zero, 0x20
/* 13CF8 800130F8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 13CFC 800130FC 0C0067F4 */  jal        alHeapDBAlloc
/* 13D00 80013100 AFB20010 */   sw        $s2, 0x10($sp)
/* 13D04 80013104 00002021 */  addu       $a0, $zero, $zero
/* 13D08 80013108 00802821 */  addu       $a1, $a0, $zero
/* 13D0C 8001310C 02603021 */  addu       $a2, $s3, $zero
/* 13D10 80013110 24070001 */  addiu      $a3, $zero, 0x1
/* 13D14 80013114 AE02000C */  sw         $v0, 0xC($s0)
/* 13D18 80013118 0C0067F4 */  jal        alHeapDBAlloc
/* 13D1C 8001311C AFB20010 */   sw        $s2, 0x10($sp)
/* 13D20 80013120 2604002C */  addiu      $a0, $s0, 0x2C
/* 13D24 80013124 0220F809 */  jalr       $s1
/* 13D28 80013128 AE020010 */   sw        $v0, 0x10($s0)
/* 13D2C 8001312C 00002021 */  addu       $a0, $zero, $zero
/* 13D30 80013130 00802821 */  addu       $a1, $a0, $zero
/* 13D34 80013134 02603021 */  addu       $a2, $s3, $zero
/* 13D38 80013138 24070001 */  addiu      $a3, $zero, 0x1
/* 13D3C 8001313C 00E08821 */  addu       $s1, $a3, $zero
/* 13D40 80013140 AE020028 */  sw         $v0, 0x28($s0)
/* 13D44 80013144 AE000034 */  sw         $zero, 0x34($s0)
/* 13D48 80013148 AE110038 */  sw         $s1, 0x38($s0)
/* 13D4C 8001314C AE00003C */  sw         $zero, 0x3C($s0)
/* 13D50 80013150 0C0067F4 */  jal        alHeapDBAlloc
/* 13D54 80013154 AFB20010 */   sw        $s2, 0x10($sp)
/* 13D58 80013158 00002021 */  addu       $a0, $zero, $zero
/* 13D5C 8001315C 00802821 */  addu       $a1, $a0, $zero
/* 13D60 80013160 02603021 */  addu       $a2, $s3, $zero
/* 13D64 80013164 3C018000 */  lui        $at, %hi(D_80001054)
/* 13D68 80013168 C4201054 */  lwc1       $f0, %lo(D_80001054)($at)
/* 13D6C 8001316C 24070001 */  addiu      $a3, $zero, 0x1
/* 13D70 80013170 AE020040 */  sw         $v0, 0x40($s0)
/* 13D74 80013174 24020050 */  addiu      $v0, $zero, 0x50
/* 13D78 80013178 AE00004C */  sw         $zero, 0x4C($s0)
/* 13D7C 8001317C AE110050 */  sw         $s1, 0x50($s0)
/* 13D80 80013180 AE000048 */  sw         $zero, 0x48($s0)
/* 13D84 80013184 E6000044 */  swc1       $f0, 0x44($s0)
/* 13D88 80013188 0C0067F4 */  jal        alHeapDBAlloc
/* 13D8C 8001318C AFA20010 */   sw        $v0, 0x10($sp)
/* 13D90 80013190 AE020054 */  sw         $v0, 0x54($s0)
/* 13D94 80013194 AE110078 */  sw         $s1, 0x78($s0)
/* 13D98 80013198 AE000084 */  sw         $zero, 0x84($s0)
/* 13D9C 8001319C A611005A */  sh         $s1, 0x5A($s0)
/* 13DA0 800131A0 A6110068 */  sh         $s1, 0x68($s0)
/* 13DA4 800131A4 A611006E */  sh         $s1, 0x6E($s0)
/* 13DA8 800131A8 A611005C */  sh         $s1, 0x5C($s0)
/* 13DAC 800131AC A611005E */  sh         $s1, 0x5E($s0)
/* 13DB0 800131B0 A6000060 */  sh         $zero, 0x60($s0)
/* 13DB4 800131B4 A6000062 */  sh         $zero, 0x62($s0)
/* 13DB8 800131B8 A6110066 */  sh         $s1, 0x66($s0)
/* 13DBC 800131BC A6000064 */  sh         $zero, 0x64($s0)
/* 13DC0 800131C0 A6000064 */  sh         $zero, 0x64($s0)
/* 13DC4 800131C4 AE000070 */  sw         $zero, 0x70($s0)
/* 13DC8 800131C8 AE000074 */  sw         $zero, 0x74($s0)
/* 13DCC 800131CC A6000058 */  sh         $zero, 0x58($s0)
/* 13DD0 800131D0 AE00007C */  sw         $zero, 0x7C($s0)
/* 13DD4 800131D4 AE000080 */  sw         $zero, 0x80($s0)
/* 13DD8 800131D8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 13DDC 800131DC 8FB30024 */  lw         $s3, 0x24($sp)
/* 13DE0 800131E0 8FB20020 */  lw         $s2, 0x20($sp)
/* 13DE4 800131E4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13DE8 800131E8 8FB00018 */  lw         $s0, 0x18($sp)
/* 13DEC 800131EC 03E00008 */  jr         $ra
/* 13DF0 800131F0 27BD0030 */   addiu     $sp, $sp, 0x30
