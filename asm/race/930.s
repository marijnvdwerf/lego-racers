.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8012E890
/* E4C50 8012E890 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E4C54 8012E894 AFB00010 */  sw         $s0, 0x10($sp)
/* E4C58 8012E898 AFBF0014 */  sw         $ra, 0x14($sp)
/* E4C5C 8012E89C 0C047E80 */  jal        func_race_8011FA00
/* E4C60 8012E8A0 00808021 */   addu      $s0, $a0, $zero
/* E4C64 8012E8A4 3C02800D */  lui        $v0, %hi(D_race_800CF180)
/* E4C68 8012E8A8 2442F180 */  addiu      $v0, $v0, %lo(D_race_800CF180)
/* E4C6C 8012E8AC 02002021 */  addu       $a0, $s0, $zero
/* E4C70 8012E8B0 0C04BA6B */  jal        func_race_8012E9AC
/* E4C74 8012E8B4 AE020000 */   sw        $v0, 0x0($s0)
/* E4C78 8012E8B8 02001021 */  addu       $v0, $s0, $zero
/* E4C7C 8012E8BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* E4C80 8012E8C0 8FB00010 */  lw         $s0, 0x10($sp)
/* E4C84 8012E8C4 03E00008 */  jr         $ra
/* E4C88 8012E8C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012E8CC
/* E4C8C 8012E8CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E4C90 8012E8D0 AFB00010 */  sw         $s0, 0x10($sp)
/* E4C94 8012E8D4 00808021 */  addu       $s0, $a0, $zero
/* E4C98 8012E8D8 AFB10014 */  sw         $s1, 0x14($sp)
/* E4C9C 8012E8DC 00A08821 */  addu       $s1, $a1, $zero
/* E4CA0 8012E8E0 3C02800D */  lui        $v0, %hi(D_race_800CF180)
/* E4CA4 8012E8E4 2442F180 */  addiu      $v0, $v0, %lo(D_race_800CF180)
/* E4CA8 8012E8E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* E4CAC 8012E8EC 0C04BA5B */  jal        func_race_8012E96C
/* E4CB0 8012E8F0 AE020000 */   sw        $v0, 0x0($s0)
/* E4CB4 8012E8F4 02002021 */  addu       $a0, $s0, $zero
/* E4CB8 8012E8F8 0C047E8A */  jal        func_race_8011FA28
/* E4CBC 8012E8FC 02202821 */   addu      $a1, $s1, $zero
/* E4CC0 8012E900 8FBF0018 */  lw         $ra, 0x18($sp)
/* E4CC4 8012E904 8FB10014 */  lw         $s1, 0x14($sp)
/* E4CC8 8012E908 8FB00010 */  lw         $s0, 0x10($sp)
/* E4CCC 8012E90C 03E00008 */  jr         $ra
/* E4CD0 8012E910 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012E914
/* E4CD4 8012E914 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E4CD8 8012E918 AFB00010 */  sw         $s0, 0x10($sp)
/* E4CDC 8012E91C 00808021 */  addu       $s0, $a0, $zero
/* E4CE0 8012E920 AFB10014 */  sw         $s1, 0x14($sp)
/* E4CE4 8012E924 00A08821 */  addu       $s1, $a1, $zero
/* E4CE8 8012E928 AFBF001C */  sw         $ra, 0x1C($sp)
/* E4CEC 8012E92C AFB20018 */  sw         $s2, 0x18($sp)
/* E4CF0 8012E930 8E020004 */  lw         $v0, 0x4($s0)
/* E4CF4 8012E934 10400003 */  beqz       $v0, .Lrace_8012E944
/* E4CF8 8012E938 00C09021 */   addu      $s2, $a2, $zero
/* E4CFC 8012E93C 0C04BA5B */  jal        func_race_8012E96C
/* E4D00 8012E940 00000000 */   nop
.Lrace_8012E944:
/* E4D04 8012E944 24020001 */  addiu      $v0, $zero, 0x1
/* E4D08 8012E948 AE11001C */  sw         $s1, 0x1C($s0)
/* E4D0C 8012E94C AE12002C */  sw         $s2, 0x2C($s0)
/* E4D10 8012E950 AE020004 */  sw         $v0, 0x4($s0)
/* E4D14 8012E954 8FBF001C */  lw         $ra, 0x1C($sp)
/* E4D18 8012E958 8FB20018 */  lw         $s2, 0x18($sp)
/* E4D1C 8012E95C 8FB10014 */  lw         $s1, 0x14($sp)
/* E4D20 8012E960 8FB00010 */  lw         $s0, 0x10($sp)
/* E4D24 8012E964 03E00008 */  jr         $ra
/* E4D28 8012E968 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012E96C
/* E4D2C 8012E96C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E4D30 8012E970 AFB00010 */  sw         $s0, 0x10($sp)
/* E4D34 8012E974 00808021 */  addu       $s0, $a0, $zero
/* E4D38 8012E978 AFBF0014 */  sw         $ra, 0x14($sp)
/* E4D3C 8012E97C 8E020000 */  lw         $v0, 0x0($s0)
/* E4D40 8012E980 84440040 */  lh         $a0, 0x40($v0)
/* E4D44 8012E984 8C420044 */  lw         $v0, 0x44($v0)
/* E4D48 8012E988 0040F809 */  jalr       $v0
/* E4D4C 8012E98C 02042021 */   addu      $a0, $s0, $a0
/* E4D50 8012E990 0C04BA6B */  jal        func_race_8012E9AC
/* E4D54 8012E994 02002021 */   addu      $a0, $s0, $zero
/* E4D58 8012E998 AE000004 */  sw         $zero, 0x4($s0)
/* E4D5C 8012E99C 8FBF0014 */  lw         $ra, 0x14($sp)
/* E4D60 8012E9A0 8FB00010 */  lw         $s0, 0x10($sp)
/* E4D64 8012E9A4 03E00008 */  jr         $ra
/* E4D68 8012E9A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012E9AC
/* E4D6C 8012E9AC AC800020 */  sw         $zero, 0x20($a0)
/* E4D70 8012E9B0 AC800024 */  sw         $zero, 0x24($a0)
/* E4D74 8012E9B4 AC800028 */  sw         $zero, 0x28($a0)
/* E4D78 8012E9B8 AC800018 */  sw         $zero, 0x18($a0)
/* E4D7C 8012E9BC AC80001C */  sw         $zero, 0x1C($a0)
/* E4D80 8012E9C0 AC80002C */  sw         $zero, 0x2C($a0)
/* E4D84 8012E9C4 03E00008 */  jr         $ra
/* E4D88 8012E9C8 AC800030 */   sw        $zero, 0x30($a0)

glabel func_race_8012E9CC
/* E4D8C 8012E9CC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E4D90 8012E9D0 AFB60030 */  sw         $s6, 0x30($sp)
/* E4D94 8012E9D4 0080B021 */  addu       $s6, $a0, $zero
/* E4D98 8012E9D8 AFB00018 */  sw         $s0, 0x18($sp)
/* E4D9C 8012E9DC 00A08021 */  addu       $s0, $a1, $zero
/* E4DA0 8012E9E0 AFB1001C */  sw         $s1, 0x1C($sp)
/* E4DA4 8012E9E4 00C08821 */  addu       $s1, $a2, $zero
/* E4DA8 8012E9E8 AFB5002C */  sw         $s5, 0x2C($sp)
/* E4DAC 8012E9EC 0000A821 */  addu       $s5, $zero, $zero
/* E4DB0 8012E9F0 AFB30024 */  sw         $s3, 0x24($sp)
/* E4DB4 8012E9F4 02A09821 */  addu       $s3, $s5, $zero
/* E4DB8 8012E9F8 AFBF0034 */  sw         $ra, 0x34($sp)
/* E4DBC 8012E9FC AFB40028 */  sw         $s4, 0x28($sp)
/* E4DC0 8012EA00 AFB20020 */  sw         $s2, 0x20($sp)
/* E4DC4 8012EA04 8EC4001C */  lw         $a0, 0x1C($s6)
/* E4DC8 8012EA08 0C04B4FB */  jal        func_race_8012D3EC
/* E4DCC 8012EA0C 02A0A021 */   addu      $s4, $s5, $zero
/* E4DD0 8012EA10 14400003 */  bnez       $v0, .Lrace_8012EA20
/* E4DD4 8012EA14 AEC20020 */   sw        $v0, 0x20($s6)
/* E4DD8 8012EA18 0804BBCB */  j          .Lrace_8012EF2C
/* E4DDC 8012EA1C 24020006 */   addiu     $v0, $zero, 0x6
.Lrace_8012EA20:
/* E4DE0 8012EA20 8EC4001C */  lw         $a0, 0x1C($s6)
/* E4DE4 8012EA24 0C04B4FB */  jal        func_race_8012D3EC
/* E4DE8 8012EA28 00000000 */   nop
/* E4DEC 8012EA2C 14400003 */  bnez       $v0, .Lrace_8012EA3C
/* E4DF0 8012EA30 AEC20024 */   sw        $v0, 0x24($s6)
/* E4DF4 8012EA34 0804BBCB */  j          .Lrace_8012EF2C
/* E4DF8 8012EA38 24020006 */   addiu     $v0, $zero, 0x6
.Lrace_8012EA3C:
/* E4DFC 8012EA3C 8EC4001C */  lw         $a0, 0x1C($s6)
/* E4E00 8012EA40 0C04B4FB */  jal        func_race_8012D3EC
/* E4E04 8012EA44 00000000 */   nop
/* E4E08 8012EA48 14400003 */  bnez       $v0, .Lrace_8012EA58
/* E4E0C 8012EA4C AEC20028 */   sw        $v0, 0x28($s6)
/* E4E10 8012EA50 0804BBCB */  j          .Lrace_8012EF2C
/* E4E14 8012EA54 24020006 */   addiu     $v0, $zero, 0x6
.Lrace_8012EA58:
/* E4E18 8012EA58 AED00018 */  sw         $s0, 0x18($s6)
/* E4E1C 8012EA5C 8E020C84 */  lw         $v0, 0xC84($s0)
/* E4E20 8012EA60 30420001 */  andi       $v0, $v0, 0x1
/* E4E24 8012EA64 1040000F */  beqz       $v0, .Lrace_8012EAA4
/* E4E28 8012EA68 24020190 */   addiu     $v0, $zero, 0x190
/* E4E2C 8012EA6C 8EC4001C */  lw         $a0, 0x1C($s6)
/* E4E30 8012EA70 0C04B3C7 */  jal        func_race_8012CF1C
/* E4E34 8012EA74 02002821 */   addu      $a1, $s0, $zero
/* E4E38 8012EA78 8EC40018 */  lw         $a0, 0x18($s6)
/* E4E3C 8012EA7C 0C04353E */  jal        func_race_8010D4F8
/* E4E40 8012EA80 00000000 */   nop
/* E4E44 8012EA84 8EC40018 */  lw         $a0, 0x18($s6)
/* E4E48 8012EA88 8C820D04 */  lw         $v0, 0xD04($a0)
/* E4E4C 8012EA8C 30420008 */  andi       $v0, $v0, 0x8
/* E4E50 8012EA90 10400004 */  beqz       $v0, .Lrace_8012EAA4
/* E4E54 8012EA94 24020190 */   addiu     $v0, $zero, 0x190
/* E4E58 8012EA98 0C0434BA */  jal        func_race_8010D2E8
/* E4E5C 8012EA9C 00000000 */   nop
/* E4E60 8012EAA0 24020190 */  addiu      $v0, $zero, 0x190
.Lrace_8012EAA4:
/* E4E64 8012EAA4 AEC20008 */  sw         $v0, 0x8($s6)
/* E4E68 8012EAA8 24020001 */  addiu      $v0, $zero, 0x1
/* E4E6C 8012EAAC 12220028 */  beq        $s1, $v0, .Lrace_8012EB50
/* E4E70 8012EAB0 AED10014 */   sw        $s1, 0x14($s6)
/* E4E74 8012EAB4 12200005 */  beqz       $s1, .Lrace_8012EACC
/* E4E78 8012EAB8 24020002 */   addiu     $v0, $zero, 0x2
/* E4E7C 8012EABC 12220041 */  beq        $s1, $v0, .Lrace_8012EBC4
/* E4E80 8012EAC0 00002821 */   addu      $a1, $zero, $zero
/* E4E84 8012EAC4 0804BB17 */  j          .Lrace_8012EC5C
/* E4E88 8012EAC8 24110001 */   addiu     $s1, $zero, 0x1
.Lrace_8012EACC:
/* E4E8C 8012EACC 8EC2001C */  lw         $v0, 0x1C($s6)
/* E4E90 8012EAD0 3C03800D */  lui        $v1, %hi(D_race_800CF0E0)
/* E4E94 8012EAD4 8C42005C */  lw         $v0, 0x5C($v0)
/* E4E98 8012EAD8 2465F0E0 */  addiu      $a1, $v1, %lo(D_race_800CF0E0)
/* E4E9C 8012EADC 8C4300BC */  lw         $v1, 0xBC($v0)
/* E4EA0 8012EAE0 14600003 */  bnez       $v1, .Lrace_8012EAF0
/* E4EA4 8012EAE4 244400BC */   addiu     $a0, $v0, 0xBC
/* E4EA8 8012EAE8 0804BABF */  j          .Lrace_8012EAFC
/* E4EAC 8012EAEC 0000A821 */   addu      $s5, $zero, $zero
.Lrace_8012EAF0:
/* E4EB0 8012EAF0 0C016427 */  jal        func_8005909C
/* E4EB4 8012EAF4 00000000 */   nop
/* E4EB8 8012EAF8 0040A821 */  addu       $s5, $v0, $zero
.Lrace_8012EAFC:
/* E4EBC 8012EAFC 8EC2001C */  lw         $v0, 0x1C($s6)
/* E4EC0 8012EB00 3C03800D */  lui        $v1, %hi(D_race_800CF0E8)
/* E4EC4 8012EB04 8C42005C */  lw         $v0, 0x5C($v0)
/* E4EC8 8012EB08 2465F0E8 */  addiu      $a1, $v1, %lo(D_race_800CF0E8)
/* E4ECC 8012EB0C 8C4300BC */  lw         $v1, 0xBC($v0)
/* E4ED0 8012EB10 14600003 */  bnez       $v1, .Lrace_8012EB20
/* E4ED4 8012EB14 244400BC */   addiu     $a0, $v0, 0xBC
/* E4ED8 8012EB18 0804BACB */  j          .Lrace_8012EB2C
/* E4EDC 8012EB1C 00009821 */   addu      $s3, $zero, $zero
.Lrace_8012EB20:
/* E4EE0 8012EB20 0C016427 */  jal        func_8005909C
/* E4EE4 8012EB24 00000000 */   nop
/* E4EE8 8012EB28 00409821 */  addu       $s3, $v0, $zero
.Lrace_8012EB2C:
/* E4EEC 8012EB2C 8EC2001C */  lw         $v0, 0x1C($s6)
/* E4EF0 8012EB30 3C03800D */  lui        $v1, %hi(D_race_800CF0F0)
/* E4EF4 8012EB34 8C42005C */  lw         $v0, 0x5C($v0)
/* E4EF8 8012EB38 2465F0F0 */  addiu      $a1, $v1, %lo(D_race_800CF0F0)
.Lrace_8012EB3C:
/* E4EFC 8012EB3C 8C4300BC */  lw         $v1, 0xBC($v0)
/* E4F00 8012EB40 1060003F */  beqz       $v1, .Lrace_8012EC40
/* E4F04 8012EB44 244400BC */   addiu     $a0, $v0, 0xBC
/* E4F08 8012EB48 0804BB12 */  j          .Lrace_8012EC48
/* E4F0C 8012EB4C 00000000 */   nop
.Lrace_8012EB50:
/* E4F10 8012EB50 8EC2001C */  lw         $v0, 0x1C($s6)
/* E4F14 8012EB54 3C03800D */  lui        $v1, %hi(D_race_800CF0F8)
/* E4F18 8012EB58 8C42005C */  lw         $v0, 0x5C($v0)
/* E4F1C 8012EB5C 2465F0F8 */  addiu      $a1, $v1, %lo(D_race_800CF0F8)
/* E4F20 8012EB60 8C4300BC */  lw         $v1, 0xBC($v0)
/* E4F24 8012EB64 14600003 */  bnez       $v1, .Lrace_8012EB74
/* E4F28 8012EB68 244400BC */   addiu     $a0, $v0, 0xBC
/* E4F2C 8012EB6C 0804BAE0 */  j          .Lrace_8012EB80
/* E4F30 8012EB70 0000A821 */   addu      $s5, $zero, $zero
.Lrace_8012EB74:
/* E4F34 8012EB74 0C016427 */  jal        func_8005909C
/* E4F38 8012EB78 00000000 */   nop
/* E4F3C 8012EB7C 0040A821 */  addu       $s5, $v0, $zero
.Lrace_8012EB80:
/* E4F40 8012EB80 8EC2001C */  lw         $v0, 0x1C($s6)
/* E4F44 8012EB84 3C03800D */  lui        $v1, %hi(D_race_800CF100)
/* E4F48 8012EB88 8C42005C */  lw         $v0, 0x5C($v0)
/* E4F4C 8012EB8C 2465F100 */  addiu      $a1, $v1, %lo(D_race_800CF100)
/* E4F50 8012EB90 8C4300BC */  lw         $v1, 0xBC($v0)
/* E4F54 8012EB94 14600003 */  bnez       $v1, .Lrace_8012EBA4
/* E4F58 8012EB98 244400BC */   addiu     $a0, $v0, 0xBC
/* E4F5C 8012EB9C 0804BAEC */  j          .Lrace_8012EBB0
/* E4F60 8012EBA0 00009821 */   addu      $s3, $zero, $zero
.Lrace_8012EBA4:
/* E4F64 8012EBA4 0C016427 */  jal        func_8005909C
/* E4F68 8012EBA8 00000000 */   nop
/* E4F6C 8012EBAC 00409821 */  addu       $s3, $v0, $zero
.Lrace_8012EBB0:
/* E4F70 8012EBB0 8EC2001C */  lw         $v0, 0x1C($s6)
/* E4F74 8012EBB4 3C03800D */  lui        $v1, %hi(D_race_800CF108)
/* E4F78 8012EBB8 8C42005C */  lw         $v0, 0x5C($v0)
/* E4F7C 8012EBBC 0804BACF */  j          .Lrace_8012EB3C
/* E4F80 8012EBC0 2465F108 */   addiu     $a1, $v1, %lo(D_race_800CF108)
.Lrace_8012EBC4:
/* E4F84 8012EBC4 8EC2001C */  lw         $v0, 0x1C($s6)
/* E4F88 8012EBC8 3C03800D */  lui        $v1, %hi(D_race_800CF110)
/* E4F8C 8012EBCC 8C42005C */  lw         $v0, 0x5C($v0)
/* E4F90 8012EBD0 2465F110 */  addiu      $a1, $v1, %lo(D_race_800CF110)
/* E4F94 8012EBD4 8C4300BC */  lw         $v1, 0xBC($v0)
/* E4F98 8012EBD8 14600003 */  bnez       $v1, .Lrace_8012EBE8
/* E4F9C 8012EBDC 244400BC */   addiu     $a0, $v0, 0xBC
/* E4FA0 8012EBE0 0804BAFD */  j          .Lrace_8012EBF4
/* E4FA4 8012EBE4 0000A821 */   addu      $s5, $zero, $zero
.Lrace_8012EBE8:
/* E4FA8 8012EBE8 0C016427 */  jal        func_8005909C
/* E4FAC 8012EBEC 00000000 */   nop
/* E4FB0 8012EBF0 0040A821 */  addu       $s5, $v0, $zero
.Lrace_8012EBF4:
/* E4FB4 8012EBF4 8EC2001C */  lw         $v0, 0x1C($s6)
/* E4FB8 8012EBF8 3C03800D */  lui        $v1, %hi(D_race_800CF118)
/* E4FBC 8012EBFC 8C42005C */  lw         $v0, 0x5C($v0)
/* E4FC0 8012EC00 2465F118 */  addiu      $a1, $v1, %lo(D_race_800CF118)
/* E4FC4 8012EC04 8C4300BC */  lw         $v1, 0xBC($v0)
/* E4FC8 8012EC08 14600003 */  bnez       $v1, .Lrace_8012EC18
/* E4FCC 8012EC0C 244400BC */   addiu     $a0, $v0, 0xBC
/* E4FD0 8012EC10 0804BB09 */  j          .Lrace_8012EC24
/* E4FD4 8012EC14 00009821 */   addu      $s3, $zero, $zero
.Lrace_8012EC18:
/* E4FD8 8012EC18 0C016427 */  jal        func_8005909C
/* E4FDC 8012EC1C 00000000 */   nop
/* E4FE0 8012EC20 00409821 */  addu       $s3, $v0, $zero
.Lrace_8012EC24:
/* E4FE4 8012EC24 8EC2001C */  lw         $v0, 0x1C($s6)
/* E4FE8 8012EC28 3C03800D */  lui        $v1, %hi(D_race_800CF120)
/* E4FEC 8012EC2C 8C42005C */  lw         $v0, 0x5C($v0)
/* E4FF0 8012EC30 2465F120 */  addiu      $a1, $v1, %lo(D_race_800CF120)
/* E4FF4 8012EC34 8C4300BC */  lw         $v1, 0xBC($v0)
/* E4FF8 8012EC38 14600003 */  bnez       $v1, .Lrace_8012EC48
/* E4FFC 8012EC3C 244400BC */   addiu     $a0, $v0, 0xBC
.Lrace_8012EC40:
/* E5000 8012EC40 0804BB15 */  j          .Lrace_8012EC54
/* E5004 8012EC44 0000A021 */   addu      $s4, $zero, $zero
.Lrace_8012EC48:
/* E5008 8012EC48 0C016427 */  jal        func_8005909C
/* E500C 8012EC4C 00000000 */   nop
/* E5010 8012EC50 0040A021 */  addu       $s4, $v0, $zero
.Lrace_8012EC54:
/* E5014 8012EC54 00002821 */  addu       $a1, $zero, $zero
/* E5018 8012EC58 24110001 */  addiu      $s1, $zero, 0x1
.Lrace_8012EC5C:
/* E501C 8012EC5C 26B20004 */  addiu      $s2, $s5, 0x4
/* E5020 8012EC60 8EA20024 */  lw         $v0, 0x24($s5)
/* E5024 8012EC64 8EB00078 */  lw         $s0, 0x78($s5)
/* E5028 8012EC68 844400B8 */  lh         $a0, 0xB8($v0)
/* E502C 8012EC6C 8C4200BC */  lw         $v0, 0xBC($v0)
/* E5030 8012EC70 0040F809 */  jalr       $v0
/* E5034 8012EC74 02A42021 */   addu      $a0, $s5, $a0
/* E5038 8012EC78 8EA700A8 */  lw         $a3, 0xA8($s5)
/* E503C 8012EC7C C6A00084 */  lwc1       $f0, 0x84($s5)
/* E5040 8012EC80 02002821 */  addu       $a1, $s0, $zero
/* E5044 8012EC84 E7A00010 */  swc1       $f0, 0x10($sp)
/* E5048 8012EC88 8EC40020 */  lw         $a0, 0x20($s6)
/* E504C 8012EC8C 0C01956B */  jal        func_800655AC
/* E5050 8012EC90 00403021 */   addu      $a2, $v0, $zero
.Lrace_8012EC94:
/* E5054 8012EC94 2E220003 */  sltiu      $v0, $s1, 0x3
/* E5058 8012EC98 10400013 */  beqz       $v0, .Lrace_8012ECE8
/* E505C 8012EC9C 00002821 */   addu      $a1, $zero, $zero
/* E5060 8012ECA0 8E500078 */  lw         $s0, 0x78($s2)
/* E5064 8012ECA4 1200000D */  beqz       $s0, .Lrace_8012ECDC
/* E5068 8012ECA8 02202821 */   addu      $a1, $s1, $zero
/* E506C 8012ECAC 8EA20024 */  lw         $v0, 0x24($s5)
/* E5070 8012ECB0 844400B8 */  lh         $a0, 0xB8($v0)
/* E5074 8012ECB4 8C4200BC */  lw         $v0, 0xBC($v0)
/* E5078 8012ECB8 0040F809 */  jalr       $v0
/* E507C 8012ECBC 02A42021 */   addu      $a0, $s5, $a0
/* E5080 8012ECC0 8E4700A8 */  lw         $a3, 0xA8($s2)
/* E5084 8012ECC4 C6400084 */  lwc1       $f0, 0x84($s2)
/* E5088 8012ECC8 02002821 */  addu       $a1, $s0, $zero
/* E508C 8012ECCC E7A00010 */  swc1       $f0, 0x10($sp)
/* E5090 8012ECD0 8EC40020 */  lw         $a0, 0x20($s6)
/* E5094 8012ECD4 0C0196C4 */  jal        func_80065B10
/* E5098 8012ECD8 00403021 */   addu      $a2, $v0, $zero
.Lrace_8012ECDC:
/* E509C 8012ECDC 26520004 */  addiu      $s2, $s2, 0x4
/* E50A0 8012ECE0 0804BB25 */  j          .Lrace_8012EC94
/* E50A4 8012ECE4 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_8012ECE8:
/* E50A8 8012ECE8 24110001 */  addiu      $s1, $zero, 0x1
/* E50AC 8012ECEC 26720004 */  addiu      $s2, $s3, 0x4
/* E50B0 8012ECF0 8E620024 */  lw         $v0, 0x24($s3)
/* E50B4 8012ECF4 8E700078 */  lw         $s0, 0x78($s3)
/* E50B8 8012ECF8 844400B8 */  lh         $a0, 0xB8($v0)
/* E50BC 8012ECFC 8C4200BC */  lw         $v0, 0xBC($v0)
/* E50C0 8012ED00 0040F809 */  jalr       $v0
/* E50C4 8012ED04 02642021 */   addu      $a0, $s3, $a0
/* E50C8 8012ED08 8E6700A8 */  lw         $a3, 0xA8($s3)
/* E50CC 8012ED0C C6600084 */  lwc1       $f0, 0x84($s3)
/* E50D0 8012ED10 02002821 */  addu       $a1, $s0, $zero
/* E50D4 8012ED14 E7A00010 */  swc1       $f0, 0x10($sp)
/* E50D8 8012ED18 8EC40024 */  lw         $a0, 0x24($s6)
/* E50DC 8012ED1C 0C01956B */  jal        func_800655AC
/* E50E0 8012ED20 00403021 */   addu      $a2, $v0, $zero
.Lrace_8012ED24:
/* E50E4 8012ED24 2E220003 */  sltiu      $v0, $s1, 0x3
/* E50E8 8012ED28 10400013 */  beqz       $v0, .Lrace_8012ED78
/* E50EC 8012ED2C 00000000 */   nop
/* E50F0 8012ED30 8E500078 */  lw         $s0, 0x78($s2)
/* E50F4 8012ED34 1200000D */  beqz       $s0, .Lrace_8012ED6C
/* E50F8 8012ED38 02202821 */   addu      $a1, $s1, $zero
/* E50FC 8012ED3C 8E620024 */  lw         $v0, 0x24($s3)
/* E5100 8012ED40 844400B8 */  lh         $a0, 0xB8($v0)
/* E5104 8012ED44 8C4200BC */  lw         $v0, 0xBC($v0)
/* E5108 8012ED48 0040F809 */  jalr       $v0
/* E510C 8012ED4C 02642021 */   addu      $a0, $s3, $a0
/* E5110 8012ED50 8E4700A8 */  lw         $a3, 0xA8($s2)
/* E5114 8012ED54 C6400084 */  lwc1       $f0, 0x84($s2)
/* E5118 8012ED58 02002821 */  addu       $a1, $s0, $zero
/* E511C 8012ED5C E7A00010 */  swc1       $f0, 0x10($sp)
/* E5120 8012ED60 8EC40024 */  lw         $a0, 0x24($s6)
/* E5124 8012ED64 0C0196C4 */  jal        func_80065B10
/* E5128 8012ED68 00403021 */   addu      $a2, $v0, $zero
.Lrace_8012ED6C:
/* E512C 8012ED6C 26520004 */  addiu      $s2, $s2, 0x4
/* E5130 8012ED70 0804BB49 */  j          .Lrace_8012ED24
/* E5134 8012ED74 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_8012ED78:
/* E5138 8012ED78 0C016264 */  jal        func_80058990
/* E513C 8012ED7C 02602021 */   addu      $a0, $s3, $zero
/* E5140 8012ED80 8EC40024 */  lw         $a0, 0x24($s6)
/* E5144 8012ED84 44050000 */  mfc1       $a1, $f0
/* E5148 8012ED88 0C016274 */  jal        func_800589D0
/* E514C 8012ED8C 24110001 */   addiu     $s1, $zero, 0x1
/* E5150 8012ED90 0C01626C */  jal        func_800589B0
/* E5154 8012ED94 02602021 */   addu      $a0, $s3, $zero
/* E5158 8012ED98 8EC40024 */  lw         $a0, 0x24($s6)
/* E515C 8012ED9C 44050000 */  mfc1       $a1, $f0
/* E5160 8012EDA0 0C01627F */  jal        func_800589FC
/* E5164 8012EDA4 26920004 */   addiu     $s2, $s4, 0x4
/* E5168 8012EDA8 0C01628A */  jal        func_80058A28
/* E516C 8012EDAC 02602021 */   addu      $a0, $s3, $zero
/* E5170 8012EDB0 8EC40024 */  lw         $a0, 0x24($s6)
/* E5174 8012EDB4 44050000 */  mfc1       $a1, $f0
/* E5178 8012EDB8 0C016298 */  jal        func_80058A60
/* E517C 8012EDBC 00000000 */   nop
/* E5180 8012EDC0 0C016291 */  jal        func_80058A44
/* E5184 8012EDC4 02602021 */   addu      $a0, $s3, $zero
/* E5188 8012EDC8 8EC40024 */  lw         $a0, 0x24($s6)
/* E518C 8012EDCC 44050000 */  mfc1       $a1, $f0
/* E5190 8012EDD0 0C0162A3 */  jal        func_80058A8C
/* E5194 8012EDD4 00000000 */   nop
/* E5198 8012EDD8 00002821 */  addu       $a1, $zero, $zero
/* E519C 8012EDDC 8E820024 */  lw         $v0, 0x24($s4)
/* E51A0 8012EDE0 8E900078 */  lw         $s0, 0x78($s4)
/* E51A4 8012EDE4 844400B8 */  lh         $a0, 0xB8($v0)
/* E51A8 8012EDE8 8C4200BC */  lw         $v0, 0xBC($v0)
/* E51AC 8012EDEC 0040F809 */  jalr       $v0
/* E51B0 8012EDF0 02842021 */   addu      $a0, $s4, $a0
/* E51B4 8012EDF4 8E8700A8 */  lw         $a3, 0xA8($s4)
/* E51B8 8012EDF8 C6800084 */  lwc1       $f0, 0x84($s4)
/* E51BC 8012EDFC 02002821 */  addu       $a1, $s0, $zero
/* E51C0 8012EE00 E7A00010 */  swc1       $f0, 0x10($sp)
/* E51C4 8012EE04 8EC40028 */  lw         $a0, 0x28($s6)
/* E51C8 8012EE08 0C01956B */  jal        func_800655AC
/* E51CC 8012EE0C 00403021 */   addu      $a2, $v0, $zero
.Lrace_8012EE10:
/* E51D0 8012EE10 2E220003 */  sltiu      $v0, $s1, 0x3
/* E51D4 8012EE14 10400013 */  beqz       $v0, .Lrace_8012EE64
/* E51D8 8012EE18 00000000 */   nop
/* E51DC 8012EE1C 8E500078 */  lw         $s0, 0x78($s2)
/* E51E0 8012EE20 1200000D */  beqz       $s0, .Lrace_8012EE58
/* E51E4 8012EE24 02202821 */   addu      $a1, $s1, $zero
/* E51E8 8012EE28 8E820024 */  lw         $v0, 0x24($s4)
/* E51EC 8012EE2C 844400B8 */  lh         $a0, 0xB8($v0)
/* E51F0 8012EE30 8C4200BC */  lw         $v0, 0xBC($v0)
/* E51F4 8012EE34 0040F809 */  jalr       $v0
/* E51F8 8012EE38 02842021 */   addu      $a0, $s4, $a0
/* E51FC 8012EE3C 8E4700A8 */  lw         $a3, 0xA8($s2)
/* E5200 8012EE40 C6400084 */  lwc1       $f0, 0x84($s2)
/* E5204 8012EE44 02002821 */  addu       $a1, $s0, $zero
/* E5208 8012EE48 E7A00010 */  swc1       $f0, 0x10($sp)
/* E520C 8012EE4C 8EC40028 */  lw         $a0, 0x28($s6)
/* E5210 8012EE50 0C0196C4 */  jal        func_80065B10
/* E5214 8012EE54 00403021 */   addu      $a2, $v0, $zero
.Lrace_8012EE58:
/* E5218 8012EE58 26520004 */  addiu      $s2, $s2, 0x4
/* E521C 8012EE5C 0804BB84 */  j          .Lrace_8012EE10
/* E5220 8012EE60 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_8012EE64:
/* E5224 8012EE64 0C016264 */  jal        func_80058990
/* E5228 8012EE68 02802021 */   addu      $a0, $s4, $zero
/* E522C 8012EE6C 8EC40028 */  lw         $a0, 0x28($s6)
/* E5230 8012EE70 44050000 */  mfc1       $a1, $f0
/* E5234 8012EE74 0C016274 */  jal        func_800589D0
/* E5238 8012EE78 3C100001 */   lui       $s0, (0x10000 >> 16)
/* E523C 8012EE7C 0C01626C */  jal        func_800589B0
/* E5240 8012EE80 02802021 */   addu      $a0, $s4, $zero
/* E5244 8012EE84 8EC40028 */  lw         $a0, 0x28($s6)
/* E5248 8012EE88 44050000 */  mfc1       $a1, $f0
/* E524C 8012EE8C 0C01627F */  jal        func_800589FC
/* E5250 8012EE90 00000000 */   nop
/* E5254 8012EE94 0C01628A */  jal        func_80058A28
/* E5258 8012EE98 02802021 */   addu      $a0, $s4, $zero
/* E525C 8012EE9C 8EC40028 */  lw         $a0, 0x28($s6)
/* E5260 8012EEA0 44050000 */  mfc1       $a1, $f0
/* E5264 8012EEA4 0C016298 */  jal        func_80058A60
/* E5268 8012EEA8 00000000 */   nop
/* E526C 8012EEAC 0C016291 */  jal        func_80058A44
/* E5270 8012EEB0 02802021 */   addu      $a0, $s4, $zero
/* E5274 8012EEB4 8EC40028 */  lw         $a0, 0x28($s6)
/* E5278 8012EEB8 44050000 */  mfc1       $a1, $f0
/* E527C 8012EEBC 0C0162A3 */  jal        func_80058A8C
/* E5280 8012EEC0 00000000 */   nop
/* E5284 8012EEC4 0C04BCAD */  jal        func_race_8012F2B4
/* E5288 8012EEC8 02C02021 */   addu      $a0, $s6, $zero
/* E528C 8012EECC 8EC30020 */  lw         $v1, 0x20($s6)
/* E5290 8012EED0 8C62005C */  lw         $v0, 0x5C($v1)
/* E5294 8012EED4 00501025 */  or         $v0, $v0, $s0
/* E5298 8012EED8 AC62005C */  sw         $v0, 0x5C($v1)
/* E529C 8012EEDC 8EC40020 */  lw         $a0, 0x20($s6)
/* E52A0 8012EEE0 0C01971D */  jal        func_80065C74
/* E52A4 8012EEE4 00002821 */   addu      $a1, $zero, $zero
/* E52A8 8012EEE8 8EC30024 */  lw         $v1, 0x24($s6)
/* E52AC 8012EEEC 8C62005C */  lw         $v0, 0x5C($v1)
/* E52B0 8012EEF0 00501025 */  or         $v0, $v0, $s0
/* E52B4 8012EEF4 AC62005C */  sw         $v0, 0x5C($v1)
/* E52B8 8012EEF8 8EC40024 */  lw         $a0, 0x24($s6)
/* E52BC 8012EEFC 0C01971D */  jal        func_80065C74
/* E52C0 8012EF00 00002821 */   addu      $a1, $zero, $zero
/* E52C4 8012EF04 8EC30028 */  lw         $v1, 0x28($s6)
/* E52C8 8012EF08 8C62005C */  lw         $v0, 0x5C($v1)
/* E52CC 8012EF0C 00501025 */  or         $v0, $v0, $s0
/* E52D0 8012EF10 AC62005C */  sw         $v0, 0x5C($v1)
/* E52D4 8012EF14 8EC40028 */  lw         $a0, 0x28($s6)
/* E52D8 8012EF18 0C01971D */  jal        func_80065C74
/* E52DC 8012EF1C 00002821 */   addu      $a1, $zero, $zero
/* E52E0 8012EF20 0C04BBD6 */  jal        func_race_8012EF58
/* E52E4 8012EF24 02C02021 */   addu      $a0, $s6, $zero
/* E52E8 8012EF28 24020002 */  addiu      $v0, $zero, 0x2
.Lrace_8012EF2C:
/* E52EC 8012EF2C AEC20004 */  sw         $v0, 0x4($s6)
/* E52F0 8012EF30 8FBF0034 */  lw         $ra, 0x34($sp)
/* E52F4 8012EF34 8FB60030 */  lw         $s6, 0x30($sp)
/* E52F8 8012EF38 8FB5002C */  lw         $s5, 0x2C($sp)
/* E52FC 8012EF3C 8FB40028 */  lw         $s4, 0x28($sp)
/* E5300 8012EF40 8FB30024 */  lw         $s3, 0x24($sp)
/* E5304 8012EF44 8FB20020 */  lw         $s2, 0x20($sp)
/* E5308 8012EF48 8FB1001C */  lw         $s1, 0x1C($sp)
/* E530C 8012EF4C 8FB00018 */  lw         $s0, 0x18($sp)
/* E5310 8012EF50 03E00008 */  jr         $ra
/* E5314 8012EF54 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8012EF58
/* E5318 8012EF58 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* E531C 8012EF5C AFB10034 */  sw         $s1, 0x34($sp)
/* E5320 8012EF60 00808821 */  addu       $s1, $a0, $zero
/* E5324 8012EF64 AFBF0038 */  sw         $ra, 0x38($sp)
/* E5328 8012EF68 AFB00030 */  sw         $s0, 0x30($sp)
/* E532C 8012EF6C F7B80050 */  sdc1       $f24, 0x50($sp)
/* E5330 8012EF70 F7B60048 */  sdc1       $f22, 0x48($sp)
/* E5334 8012EF74 F7B40040 */  sdc1       $f20, 0x40($sp)
/* E5338 8012EF78 8E220014 */  lw         $v0, 0x14($s1)
/* E533C 8012EF7C 14400002 */  bnez       $v0, .Lrace_8012EF88
/* E5340 8012EF80 240600FA */   addiu     $a2, $zero, 0xFA
/* E5344 8012EF84 2406007D */  addiu      $a2, $zero, 0x7D
.Lrace_8012EF88:
/* E5348 8012EF88 8E240018 */  lw         $a0, 0x18($s1)
/* E534C 8012EF8C 3C05BB23 */  lui        $a1, (0xBB23D70A >> 16)
/* E5350 8012EF90 34A5D70A */  ori        $a1, $a1, (0xBB23D70A & 0xFFFF)
/* E5354 8012EF94 0C03F9F1 */  jal        func_race_800FE7C4
/* E5358 8012EF98 248403FC */   addiu     $a0, $a0, 0x3FC
/* E535C 8012EF9C 8E240018 */  lw         $a0, 0x18($s1)
/* E5360 8012EFA0 8E250014 */  lw         $a1, 0x14($s1)
/* E5364 8012EFA4 0C043519 */  jal        func_race_8010D464
/* E5368 8012EFA8 00000000 */   nop
/* E536C 8012EFAC 8E220018 */  lw         $v0, 0x18($s1)
/* E5370 8012EFB0 8C43005C */  lw         $v1, 0x5C($v0)
/* E5374 8012EFB4 27B00020 */  addiu      $s0, $sp, 0x20
/* E5378 8012EFB8 8C620024 */  lw         $v0, 0x24($v1)
/* E537C 8012EFBC 02002821 */  addu       $a1, $s0, $zero
/* E5380 8012EFC0 84440010 */  lh         $a0, 0x10($v0)
/* E5384 8012EFC4 8C420014 */  lw         $v0, 0x14($v0)
/* E5388 8012EFC8 0040F809 */  jalr       $v0
/* E538C 8012EFCC 00642021 */   addu      $a0, $v1, $a0
/* E5390 8012EFD0 8E250014 */  lw         $a1, 0x14($s1)
/* E5394 8012EFD4 3C01800D */  lui        $at, %hi(D_race_800CF128)
/* E5398 8012EFD8 C438F128 */  lwc1       $f24, %lo(D_race_800CF128)($at)
/* E539C 8012EFDC 3C01800D */  lui        $at, %hi(D_race_800CF12C)
/* E53A0 8012EFE0 C434F12C */  lwc1       $f20, %lo(D_race_800CF12C)($at)
/* E53A4 8012EFE4 3C01800D */  lui        $at, %hi(D_race_800CF130)
/* E53A8 8012EFE8 C436F130 */  lwc1       $f22, %lo(D_race_800CF130)($at)
/* E53AC 8012EFEC 02003021 */  addu       $a2, $s0, $zero
/* E53B0 8012EFF0 E7B80010 */  swc1       $f24, 0x10($sp)
/* E53B4 8012EFF4 E7B40014 */  swc1       $f20, 0x14($sp)
/* E53B8 8012EFF8 E7B40018 */  swc1       $f20, 0x18($sp)
/* E53BC 8012EFFC 8E240010 */  lw         $a0, 0x10($s1)
/* E53C0 8012F000 4407B000 */  mfc1       $a3, $f22
/* E53C4 8012F004 0C046530 */  jal        func_race_801194C0
/* E53C8 8012F008 24A50024 */   addiu     $a1, $a1, 0x24
/* E53CC 8012F00C 24050041 */  addiu      $a1, $zero, 0x41
/* E53D0 8012F010 E7B80010 */  swc1       $f24, 0x10($sp)
/* E53D4 8012F014 E7B40014 */  swc1       $f20, 0x14($sp)
/* E53D8 8012F018 E7B40018 */  swc1       $f20, 0x18($sp)
/* E53DC 8012F01C 8E240010 */  lw         $a0, 0x10($s1)
/* E53E0 8012F020 4407B000 */  mfc1       $a3, $f22
/* E53E4 8012F024 0C046530 */  jal        func_race_801194C0
/* E53E8 8012F028 02003021 */   addu      $a2, $s0, $zero
/* E53EC 8012F02C 8E230014 */  lw         $v1, 0x14($s1)
/* E53F0 8012F030 24020002 */  addiu      $v0, $zero, 0x2
/* E53F4 8012F034 14620004 */  bne        $v1, $v0, .Lrace_8012F048
/* E53F8 8012F038 00000000 */   nop
/* E53FC 8012F03C 8E240018 */  lw         $a0, 0x18($s1)
/* E5400 8012F040 0C0434A9 */  jal        func_race_8010D2A4
/* E5404 8012F044 00000000 */   nop
.Lrace_8012F048:
/* E5408 8012F048 8FBF0038 */  lw         $ra, 0x38($sp)
/* E540C 8012F04C 8FB10034 */  lw         $s1, 0x34($sp)
/* E5410 8012F050 8FB00030 */  lw         $s0, 0x30($sp)
/* E5414 8012F054 D7B80050 */  ldc1       $f24, 0x50($sp)
/* E5418 8012F058 D7B60048 */  ldc1       $f22, 0x48($sp)
/* E541C 8012F05C D7B40040 */  ldc1       $f20, 0x40($sp)
/* E5420 8012F060 03E00008 */  jr         $ra
/* E5424 8012F064 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_8012F068
/* E5428 8012F068 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* E542C 8012F06C AFB1004C */  sw         $s1, 0x4C($sp)
/* E5430 8012F070 00808821 */  addu       $s1, $a0, $zero
/* E5434 8012F074 AFB00048 */  sw         $s0, 0x48($sp)
/* E5438 8012F078 AFBF0054 */  sw         $ra, 0x54($sp)
/* E543C 8012F07C AFB20050 */  sw         $s2, 0x50($sp)
/* E5440 8012F080 8E230004 */  lw         $v1, 0x4($s1)
/* E5444 8012F084 24020006 */  addiu      $v0, $zero, 0x6
/* E5448 8012F088 10620084 */  beq        $v1, $v0, .Lrace_8012F29C
/* E544C 8012F08C 00A08021 */   addu      $s0, $a1, $zero
/* E5450 8012F090 0C047E96 */  jal        func_race_8011FA58
/* E5454 8012F094 00000000 */   nop
/* E5458 8012F098 8E230020 */  lw         $v1, 0x20($s1)
/* E545C 8012F09C 8C620024 */  lw         $v0, 0x24($v1)
/* E5460 8012F0A0 02002821 */  addu       $a1, $s0, $zero
/* E5464 8012F0A4 84440020 */  lh         $a0, 0x20($v0)
/* E5468 8012F0A8 8C420024 */  lw         $v0, 0x24($v0)
/* E546C 8012F0AC 0040F809 */  jalr       $v0
/* E5470 8012F0B0 00642021 */   addu      $a0, $v1, $a0
/* E5474 8012F0B4 8E230024 */  lw         $v1, 0x24($s1)
/* E5478 8012F0B8 8C620024 */  lw         $v0, 0x24($v1)
/* E547C 8012F0BC 02002821 */  addu       $a1, $s0, $zero
/* E5480 8012F0C0 84440020 */  lh         $a0, 0x20($v0)
/* E5484 8012F0C4 8C420024 */  lw         $v0, 0x24($v0)
/* E5488 8012F0C8 0040F809 */  jalr       $v0
/* E548C 8012F0CC 00642021 */   addu      $a0, $v1, $a0
/* E5490 8012F0D0 8E230028 */  lw         $v1, 0x28($s1)
/* E5494 8012F0D4 8C620024 */  lw         $v0, 0x24($v1)
/* E5498 8012F0D8 02002821 */  addu       $a1, $s0, $zero
/* E549C 8012F0DC 84440020 */  lh         $a0, 0x20($v0)
/* E54A0 8012F0E0 8C420024 */  lw         $v0, 0x24($v0)
/* E54A4 8012F0E4 0040F809 */  jalr       $v0
/* E54A8 8012F0E8 00642021 */   addu      $a0, $v1, $a0
/* E54AC 8012F0EC 8E230014 */  lw         $v1, 0x14($s1)
/* E54B0 8012F0F0 24020002 */  addiu      $v0, $zero, 0x2
/* E54B4 8012F0F4 14620017 */  bne        $v1, $v0, .Lrace_8012F154
/* E54B8 8012F0F8 24020003 */   addiu     $v0, $zero, 0x3
/* E54BC 8012F0FC 8E230004 */  lw         $v1, 0x4($s1)
/* E54C0 8012F100 14620014 */  bne        $v1, $v0, .Lrace_8012F154
/* E54C4 8012F104 00000000 */   nop
/* E54C8 8012F108 8E220030 */  lw         $v0, 0x30($s1)
/* E54CC 8012F10C 14400014 */  bnez       $v0, .Lrace_8012F160
/* E54D0 8012F110 27A50038 */   addiu     $a1, $sp, 0x38
/* E54D4 8012F114 8E220008 */  lw         $v0, 0x8($s1)
/* E54D8 8012F118 2C420320 */  sltiu      $v0, $v0, 0x320
/* E54DC 8012F11C 1040000D */  beqz       $v0, .Lrace_8012F154
/* E54E0 8012F120 00000000 */   nop
/* E54E4 8012F124 8E22001C */  lw         $v0, 0x1C($s1)
/* E54E8 8012F128 8C420058 */  lw         $v0, 0x58($v0)
/* E54EC 8012F12C 30420002 */  andi       $v0, $v0, 0x2
/* E54F0 8012F130 14400008 */  bnez       $v0, .Lrace_8012F154
/* E54F4 8012F134 3C05800D */   lui       $a1, %hi(D_race_800CF134)
/* E54F8 8012F138 24A5F134 */  addiu      $a1, $a1, %lo(D_race_800CF134)
/* E54FC 8012F13C 00003021 */  addu       $a2, $zero, $zero
/* E5500 8012F140 AFA00010 */  sw         $zero, 0x10($sp)
/* E5504 8012F144 8E24002C */  lw         $a0, 0x2C($s1)
/* E5508 8012F148 0C0107DD */  jal        func_80041F74
/* E550C 8012F14C 00C03821 */   addu      $a3, $a2, $zero
/* E5510 8012F150 AE220030 */  sw         $v0, 0x30($s1)
.Lrace_8012F154:
/* E5514 8012F154 8E220030 */  lw         $v0, 0x30($s1)
/* E5518 8012F158 10400039 */  beqz       $v0, .Lrace_8012F240
/* E551C 8012F15C 27A50038 */   addiu     $a1, $sp, 0x38
.Lrace_8012F160:
/* E5520 8012F160 8E220018 */  lw         $v0, 0x18($s1)
/* E5524 8012F164 3C01800D */  lui        $at, %hi(D_race_800CF13C)
/* E5528 8012F168 C420F13C */  lwc1       $f0, %lo(D_race_800CF13C)($at)
/* E552C 8012F16C 3C01800D */  lui        $at, %hi(D_race_800CF140)
/* E5530 8012F170 C422F140 */  lwc1       $f2, %lo(D_race_800CF140)($at)
/* E5534 8012F174 8C50005C */  lw         $s0, 0x5C($v0)
/* E5538 8012F178 27B20028 */  addiu      $s2, $sp, 0x28
/* E553C 8012F17C E7A00038 */  swc1       $f0, 0x38($sp)
/* E5540 8012F180 AFA0003C */  sw         $zero, 0x3C($sp)
/* E5544 8012F184 E7A20040 */  swc1       $f2, 0x40($sp)
/* E5548 8012F188 8E020024 */  lw         $v0, 0x24($s0)
/* E554C 8012F18C 02403021 */  addu       $a2, $s2, $zero
/* E5550 8012F190 84440060 */  lh         $a0, 0x60($v0)
/* E5554 8012F194 8C420064 */  lw         $v0, 0x64($v0)
/* E5558 8012F198 0040F809 */  jalr       $v0
/* E555C 8012F19C 02042021 */   addu      $a0, $s0, $a0
/* E5560 8012F1A0 8E220030 */  lw         $v0, 0x30($s1)
/* E5564 8012F1A4 8C450000 */  lw         $a1, 0x0($v0)
/* E5568 8012F1A8 10A00007 */  beqz       $a1, .Lrace_8012F1C8
/* E556C 8012F1AC 24A50168 */   addiu     $a1, $a1, 0x168
/* E5570 8012F1B0 8E020024 */  lw         $v0, 0x24($s0)
/* E5574 8012F1B4 84440090 */  lh         $a0, 0x90($v0)
/* E5578 8012F1B8 8C420094 */  lw         $v0, 0x94($v0)
/* E557C 8012F1BC 0040F809 */  jalr       $v0
/* E5580 8012F1C0 02042021 */   addu      $a0, $s0, $a0
/* E5584 8012F1C4 8E220030 */  lw         $v0, 0x30($s1)
.Lrace_8012F1C8:
/* E5588 8012F1C8 8C440000 */  lw         $a0, 0x0($v0)
/* E558C 8012F1CC 10800003 */  beqz       $a0, .Lrace_8012F1DC
/* E5590 8012F1D0 00000000 */   nop
/* E5594 8012F1D4 0C01058D */  jal        func_80041634
/* E5598 8012F1D8 02402821 */   addu      $a1, $s2, $zero
.Lrace_8012F1DC:
/* E559C 8012F1DC 8E220018 */  lw         $v0, 0x18($s1)
/* E55A0 8012F1E0 3C01800D */  lui        $at, %hi(D_race_800CF144)
/* E55A4 8012F1E4 C424F144 */  lwc1       $f4, %lo(D_race_800CF144)($at)
/* E55A8 8012F1E8 8C480400 */  lw         $t0, 0x400($v0)
/* E55AC 8012F1EC 8C490404 */  lw         $t1, 0x404($v0)
/* E55B0 8012F1F0 8C4A0408 */  lw         $t2, 0x408($v0)
/* E55B4 8012F1F4 AFA80018 */  sw         $t0, 0x18($sp)
/* E55B8 8012F1F8 AFA9001C */  sw         $t1, 0x1C($sp)
/* E55BC 8012F1FC AFAA0020 */  sw         $t2, 0x20($sp)
/* E55C0 8012F200 C7A00018 */  lwc1       $f0, 0x18($sp)
/* E55C4 8012F204 46040002 */  mul.s      $f0, $f0, $f4
/* E55C8 8012F208 27A50018 */  addiu      $a1, $sp, 0x18
/* E55CC 8012F20C E7A00018 */  swc1       $f0, 0x18($sp)
/* E55D0 8012F210 C4A20004 */  lwc1       $f2, 0x4($a1)
/* E55D4 8012F214 46041082 */  mul.s      $f2, $f2, $f4
/* E55D8 8012F218 C4A00008 */  lwc1       $f0, 0x8($a1)
/* E55DC 8012F21C 46040002 */  mul.s      $f0, $f0, $f4
/* E55E0 8012F220 E4A20004 */  swc1       $f2, 0x4($a1)
/* E55E4 8012F224 E4A00008 */  swc1       $f0, 0x8($a1)
/* E55E8 8012F228 8E220030 */  lw         $v0, 0x30($s1)
/* E55EC 8012F22C 8C440000 */  lw         $a0, 0x0($v0)
/* E55F0 8012F230 10800003 */  beqz       $a0, .Lrace_8012F240
/* E55F4 8012F234 00000000 */   nop
/* E55F8 8012F238 0C01059B */  jal        func_8004166C
/* E55FC 8012F23C 00000000 */   nop
.Lrace_8012F240:
/* E5600 8012F240 8E240018 */  lw         $a0, 0x18($s1)
/* E5604 8012F244 8C820D04 */  lw         $v0, 0xD04($a0)
/* E5608 8012F248 30420008 */  andi       $v0, $v0, 0x8
/* E560C 8012F24C 1040000C */  beqz       $v0, .Lrace_8012F280
/* E5610 8012F250 00002821 */   addu      $a1, $zero, $zero
/* E5614 8012F254 8E230004 */  lw         $v1, 0x4($s1)
/* E5618 8012F258 24020003 */  addiu      $v0, $zero, 0x3
/* E561C 8012F25C 14620008 */  bne        $v1, $v0, .Lrace_8012F280
/* E5620 8012F260 00000000 */   nop
/* E5624 8012F264 8E220008 */  lw         $v0, 0x8($s1)
/* E5628 8012F268 2C421194 */  sltiu      $v0, $v0, 0x1194
/* E562C 8012F26C 10400004 */  beqz       $v0, .Lrace_8012F280
/* E5630 8012F270 00000000 */   nop
/* E5634 8012F274 0C03FEDF */  jal        func_race_800FFB7C
/* E5638 8012F278 248403FC */   addiu     $a0, $a0, 0x3FC
/* E563C 8012F27C 2C450001 */  sltiu      $a1, $v0, 0x1
.Lrace_8012F280:
/* E5640 8012F280 10A00006 */  beqz       $a1, .Lrace_8012F29C
/* E5644 8012F284 00000000 */   nop
/* E5648 8012F288 8E220000 */  lw         $v0, 0x0($s1)
/* E564C 8012F28C 84440030 */  lh         $a0, 0x30($v0)
/* E5650 8012F290 8C420034 */  lw         $v0, 0x34($v0)
/* E5654 8012F294 0040F809 */  jalr       $v0
/* E5658 8012F298 02242021 */   addu      $a0, $s1, $a0
.Lrace_8012F29C:
/* E565C 8012F29C 8FBF0054 */  lw         $ra, 0x54($sp)
/* E5660 8012F2A0 8FB20050 */  lw         $s2, 0x50($sp)
/* E5664 8012F2A4 8FB1004C */  lw         $s1, 0x4C($sp)
/* E5668 8012F2A8 8FB00048 */  lw         $s0, 0x48($sp)
/* E566C 8012F2AC 03E00008 */  jr         $ra
/* E5670 8012F2B0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_8012F2B4
/* E5674 8012F2B4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* E5678 8012F2B8 AFB10054 */  sw         $s1, 0x54($sp)
/* E567C 8012F2BC 00808821 */  addu       $s1, $a0, $zero
/* E5680 8012F2C0 AFBF005C */  sw         $ra, 0x5C($sp)
/* E5684 8012F2C4 AFB20058 */  sw         $s2, 0x58($sp)
/* E5688 8012F2C8 AFB00050 */  sw         $s0, 0x50($sp)
/* E568C 8012F2CC 8E220018 */  lw         $v0, 0x18($s1)
/* E5690 8012F2D0 8C500054 */  lw         $s0, 0x54($v0)
/* E5694 8012F2D4 27B20040 */  addiu      $s2, $sp, 0x40
/* E5698 8012F2D8 8E020024 */  lw         $v0, 0x24($s0)
/* E569C 8012F2DC 02402821 */  addu       $a1, $s2, $zero
/* E56A0 8012F2E0 84440010 */  lh         $a0, 0x10($v0)
/* E56A4 8012F2E4 8C420014 */  lw         $v0, 0x14($v0)
/* E56A8 8012F2E8 0040F809 */  jalr       $v0
/* E56AC 8012F2EC 02042021 */   addu      $a0, $s0, $a0
/* E56B0 8012F2F0 C6040028 */  lwc1       $f4, 0x28($s0)
/* E56B4 8012F2F4 3C01800D */  lui        $at, %hi(D_race_800CF148)
/* E56B8 8012F2F8 C422F148 */  lwc1       $f2, %lo(D_race_800CF148)($at)
/* E56BC 8012F2FC 3C01800D */  lui        $at, %hi(D_race_800CF14C)
/* E56C0 8012F300 C426F14C */  lwc1       $f6, %lo(D_race_800CF14C)($at)
/* E56C4 8012F304 27A20010 */  addiu      $v0, $sp, 0x10
/* E56C8 8012F308 E7A40010 */  swc1       $f4, 0x10($sp)
/* E56CC 8012F30C C600002C */  lwc1       $f0, 0x2C($s0)
/* E56D0 8012F310 46022102 */  mul.s      $f4, $f4, $f2
/* E56D4 8012F314 E4400004 */  swc1       $f0, 0x4($v0)
/* E56D8 8012F318 C6000030 */  lwc1       $f0, 0x30($s0)
/* E56DC 8012F31C E4400008 */  swc1       $f0, 0x8($v0)
/* E56E0 8012F320 C7AE0014 */  lwc1       $f14, 0x14($sp)
/* E56E4 8012F324 C6000034 */  lwc1       $f0, 0x34($s0)
/* E56E8 8012F328 46027382 */  mul.s      $f14, $f14, $f2
/* E56EC 8012F32C C7A80018 */  lwc1       $f8, 0x18($sp)
/* E56F0 8012F330 E7A00020 */  swc1       $f0, 0x20($sp)
/* E56F4 8012F334 C6000038 */  lwc1       $f0, 0x38($s0)
/* E56F8 8012F338 46024202 */  mul.s      $f8, $f8, $f2
/* E56FC 8012F33C E7A00024 */  swc1       $f0, 0x24($sp)
/* E5700 8012F340 C600003C */  lwc1       $f0, 0x3C($s0)
/* E5704 8012F344 E7A00028 */  swc1       $f0, 0x28($sp)
/* E5708 8012F348 C6000040 */  lwc1       $f0, 0x40($s0)
/* E570C 8012F34C 46060302 */  mul.s      $f12, $f0, $f6
/* E5710 8012F350 E7A00030 */  swc1       $f0, 0x30($sp)
/* E5714 8012F354 C6000044 */  lwc1       $f0, 0x44($s0)
/* E5718 8012F358 46060282 */  mul.s      $f10, $f0, $f6
/* E571C 8012F35C E7A00034 */  swc1       $f0, 0x34($sp)
/* E5720 8012F360 C6100048 */  lwc1       $f16, 0x48($s0)
/* E5724 8012F364 46068182 */  mul.s      $f6, $f16, $f6
/* E5728 8012F368 C7A20048 */  lwc1       $f2, 0x48($sp)
/* E572C 8012F36C 46081080 */  add.s      $f2, $f2, $f8
/* E5730 8012F370 C7A00040 */  lwc1       $f0, 0x40($sp)
/* E5734 8012F374 46040000 */  add.s      $f0, $f0, $f4
/* E5738 8012F378 C7A40044 */  lwc1       $f4, 0x44($sp)
/* E573C 8012F37C 460E2100 */  add.s      $f4, $f4, $f14
/* E5740 8012F380 460C0300 */  add.s      $f12, $f0, $f12
/* E5744 8012F384 E7B00038 */  swc1       $f16, 0x38($sp)
/* E5748 8012F388 E7A20048 */  swc1       $f2, 0x48($sp)
/* E574C 8012F38C 460A2280 */  add.s      $f10, $f4, $f10
/* E5750 8012F390 E7A00040 */  swc1       $f0, 0x40($sp)
/* E5754 8012F394 E7A40044 */  swc1       $f4, 0x44($sp)
/* E5758 8012F398 46061080 */  add.s      $f2, $f2, $f6
/* E575C 8012F39C E7AC0040 */  swc1       $f12, 0x40($sp)
/* E5760 8012F3A0 E7AA0044 */  swc1       $f10, 0x44($sp)
/* E5764 8012F3A4 E7A20048 */  swc1       $f2, 0x48($sp)
/* E5768 8012F3A8 8E230020 */  lw         $v1, 0x20($s1)
/* E576C 8012F3AC 8C620024 */  lw         $v0, 0x24($v1)
/* E5770 8012F3B0 02402821 */  addu       $a1, $s2, $zero
/* E5774 8012F3B4 84440018 */  lh         $a0, 0x18($v0)
/* E5778 8012F3B8 8C42001C */  lw         $v0, 0x1C($v0)
/* E577C 8012F3BC 0040F809 */  jalr       $v0
/* E5780 8012F3C0 00642021 */   addu      $a0, $v1, $a0
/* E5784 8012F3C4 8E220020 */  lw         $v0, 0x20($s1)
/* E5788 8012F3C8 8C430024 */  lw         $v1, 0x24($v0)
/* E578C 8012F3CC 84640080 */  lh         $a0, 0x80($v1)
/* E5790 8012F3D0 27A50020 */  addiu      $a1, $sp, 0x20
/* E5794 8012F3D4 00442021 */  addu       $a0, $v0, $a0
/* E5798 8012F3D8 8C620084 */  lw         $v0, 0x84($v1)
/* E579C 8012F3DC 0040F809 */  jalr       $v0
/* E57A0 8012F3E0 27A60030 */   addiu     $a2, $sp, 0x30
/* E57A4 8012F3E4 8E230020 */  lw         $v1, 0x20($s1)
/* E57A8 8012F3E8 8E220024 */  lw         $v0, 0x24($s1)
/* E57AC 8012F3EC 3C01800D */  lui        $at, %hi(D_race_800CF150)
/* E57B0 8012F3F0 C422F150 */  lwc1       $f2, %lo(D_race_800CF150)($at)
/* E57B4 8012F3F4 C4600028 */  lwc1       $f0, 0x28($v1)
/* E57B8 8012F3F8 E4400028 */  swc1       $f0, 0x28($v0)
/* E57BC 8012F3FC C460002C */  lwc1       $f0, 0x2C($v1)
/* E57C0 8012F400 E440002C */  swc1       $f0, 0x2C($v0)
/* E57C4 8012F404 C4600030 */  lwc1       $f0, 0x30($v1)
/* E57C8 8012F408 E4400030 */  swc1       $f0, 0x30($v0)
/* E57CC 8012F40C C4600034 */  lwc1       $f0, 0x34($v1)
/* E57D0 8012F410 E4400034 */  swc1       $f0, 0x34($v0)
/* E57D4 8012F414 C4600038 */  lwc1       $f0, 0x38($v1)
/* E57D8 8012F418 E4400038 */  swc1       $f0, 0x38($v0)
/* E57DC 8012F41C C460003C */  lwc1       $f0, 0x3C($v1)
/* E57E0 8012F420 E440003C */  swc1       $f0, 0x3C($v0)
/* E57E4 8012F424 C4600040 */  lwc1       $f0, 0x40($v1)
/* E57E8 8012F428 E4400040 */  swc1       $f0, 0x40($v0)
/* E57EC 8012F42C C4600044 */  lwc1       $f0, 0x44($v1)
/* E57F0 8012F430 E4400044 */  swc1       $f0, 0x44($v0)
/* E57F4 8012F434 C4600048 */  lwc1       $f0, 0x48($v1)
/* E57F8 8012F438 E4400048 */  swc1       $f0, 0x48($v0)
/* E57FC 8012F43C 8C67004C */  lw         $a3, 0x4C($v1)
/* E5800 8012F440 8C680050 */  lw         $t0, 0x50($v1)
/* E5804 8012F444 8C690054 */  lw         $t1, 0x54($v1)
/* E5808 8012F448 AC47004C */  sw         $a3, 0x4C($v0)
/* E580C 8012F44C AC480050 */  sw         $t0, 0x50($v0)
/* E5810 8012F450 AC490054 */  sw         $t1, 0x54($v0)
/* E5814 8012F454 E442000C */  swc1       $f2, 0xC($v0)
/* E5818 8012F458 8E230020 */  lw         $v1, 0x20($s1)
/* E581C 8012F45C 8E220028 */  lw         $v0, 0x28($s1)
/* E5820 8012F460 C4600028 */  lwc1       $f0, 0x28($v1)
/* E5824 8012F464 E4400028 */  swc1       $f0, 0x28($v0)
/* E5828 8012F468 C460002C */  lwc1       $f0, 0x2C($v1)
/* E582C 8012F46C E440002C */  swc1       $f0, 0x2C($v0)
/* E5830 8012F470 C4600030 */  lwc1       $f0, 0x30($v1)
/* E5834 8012F474 E4400030 */  swc1       $f0, 0x30($v0)
/* E5838 8012F478 C4600034 */  lwc1       $f0, 0x34($v1)
/* E583C 8012F47C E4400034 */  swc1       $f0, 0x34($v0)
/* E5840 8012F480 C4600038 */  lwc1       $f0, 0x38($v1)
/* E5844 8012F484 E4400038 */  swc1       $f0, 0x38($v0)
/* E5848 8012F488 C460003C */  lwc1       $f0, 0x3C($v1)
/* E584C 8012F48C E440003C */  swc1       $f0, 0x3C($v0)
/* E5850 8012F490 C4600040 */  lwc1       $f0, 0x40($v1)
/* E5854 8012F494 E4400040 */  swc1       $f0, 0x40($v0)
/* E5858 8012F498 C4600044 */  lwc1       $f0, 0x44($v1)
/* E585C 8012F49C E4400044 */  swc1       $f0, 0x44($v0)
/* E5860 8012F4A0 C4600048 */  lwc1       $f0, 0x48($v1)
/* E5864 8012F4A4 E4400048 */  swc1       $f0, 0x48($v0)
/* E5868 8012F4A8 8C67004C */  lw         $a3, 0x4C($v1)
/* E586C 8012F4AC 8C680050 */  lw         $t0, 0x50($v1)
/* E5870 8012F4B0 8C690054 */  lw         $t1, 0x54($v1)
/* E5874 8012F4B4 AC47004C */  sw         $a3, 0x4C($v0)
/* E5878 8012F4B8 AC480050 */  sw         $t0, 0x50($v0)
/* E587C 8012F4BC AC490054 */  sw         $t1, 0x54($v0)
/* E5880 8012F4C0 E442000C */  swc1       $f2, 0xC($v0)
/* E5884 8012F4C4 8FBF005C */  lw         $ra, 0x5C($sp)
/* E5888 8012F4C8 8FB20058 */  lw         $s2, 0x58($sp)
/* E588C 8012F4CC 8FB10054 */  lw         $s1, 0x54($sp)
/* E5890 8012F4D0 8FB00050 */  lw         $s0, 0x50($sp)
/* E5894 8012F4D4 03E00008 */  jr         $ra
/* E5898 8012F4D8 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_race_8012F4DC
/* E589C 8012F4DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E58A0 8012F4E0 AFB00010 */  sw         $s0, 0x10($sp)
/* E58A4 8012F4E4 00808021 */  addu       $s0, $a0, $zero
/* E58A8 8012F4E8 AFB10014 */  sw         $s1, 0x14($sp)
/* E58AC 8012F4EC AFBF0018 */  sw         $ra, 0x18($sp)
/* E58B0 8012F4F0 8E030004 */  lw         $v1, 0x4($s0)
/* E58B4 8012F4F4 24020006 */  addiu      $v0, $zero, 0x6
/* E58B8 8012F4F8 10620009 */  beq        $v1, $v0, .Lrace_8012F520
/* E58BC 8012F4FC 00A08821 */   addu      $s1, $a1, $zero
/* E58C0 8012F500 0C04BCAD */  jal        func_race_8012F2B4
/* E58C4 8012F504 00000000 */   nop
/* E58C8 8012F508 8E22012C */  lw         $v0, 0x12C($s1)
/* E58CC 8012F50C 8E050020 */  lw         $a1, 0x20($s0)
/* E58D0 8012F510 84440118 */  lh         $a0, 0x118($v0)
/* E58D4 8012F514 8C42011C */  lw         $v0, 0x11C($v0)
/* E58D8 8012F518 0040F809 */  jalr       $v0
/* E58DC 8012F51C 02242021 */   addu      $a0, $s1, $a0
.Lrace_8012F520:
/* E58E0 8012F520 8FBF0018 */  lw         $ra, 0x18($sp)
/* E58E4 8012F524 8FB10014 */  lw         $s1, 0x14($sp)
/* E58E8 8012F528 8FB00010 */  lw         $s0, 0x10($sp)
/* E58EC 8012F52C 03E00008 */  jr         $ra
/* E58F0 8012F530 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012F534
/* E58F4 8012F534 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E58F8 8012F538 AFB10014 */  sw         $s1, 0x14($sp)
/* E58FC 8012F53C 00808821 */  addu       $s1, $a0, $zero
/* E5900 8012F540 AFB00010 */  sw         $s0, 0x10($sp)
/* E5904 8012F544 AFBF0018 */  sw         $ra, 0x18($sp)
/* E5908 8012F548 8E230004 */  lw         $v1, 0x4($s1)
/* E590C 8012F54C 24020006 */  addiu      $v0, $zero, 0x6
/* E5910 8012F550 10620045 */  beq        $v1, $v0, .Lrace_8012F668
/* E5914 8012F554 00A08021 */   addu      $s0, $a1, $zero
/* E5918 8012F558 24020002 */  addiu      $v0, $zero, 0x2
/* E591C 8012F55C 14620012 */  bne        $v1, $v0, .Lrace_8012F5A8
/* E5920 8012F560 24020004 */   addiu     $v0, $zero, 0x4
/* E5924 8012F564 8E220008 */  lw         $v0, 0x8($s1)
/* E5928 8012F568 2C420033 */  sltiu      $v0, $v0, 0x33
/* E592C 8012F56C 14400008 */  bnez       $v0, .Lrace_8012F590
/* E5930 8012F570 240500FF */   addiu     $a1, $zero, 0xFF
/* E5934 8012F574 00002821 */  addu       $a1, $zero, $zero
/* E5938 8012F578 8E02012C */  lw         $v0, 0x12C($s0)
/* E593C 8012F57C 24060001 */  addiu      $a2, $zero, 0x1
/* E5940 8012F580 84440170 */  lh         $a0, 0x170($v0)
/* E5944 8012F584 8C420174 */  lw         $v0, 0x174($v0)
/* E5948 8012F588 0804BD7F */  j          .Lrace_8012F5FC
/* E594C 8012F58C 02042021 */   addu      $a0, $s0, $a0
.Lrace_8012F590:
/* E5950 8012F590 8E02012C */  lw         $v0, 0x12C($s0)
/* E5954 8012F594 24060001 */  addiu      $a2, $zero, 0x1
/* E5958 8012F598 84440170 */  lh         $a0, 0x170($v0)
/* E595C 8012F59C 8C420174 */  lw         $v0, 0x174($v0)
/* E5960 8012F5A0 0804BD7F */  j          .Lrace_8012F5FC
/* E5964 8012F5A4 02042021 */   addu      $a0, $s0, $a0
.Lrace_8012F5A8:
/* E5968 8012F5A8 14620016 */  bne        $v1, $v0, .Lrace_8012F604
/* E596C 8012F5AC 00000000 */   nop
/* E5970 8012F5B0 8E220008 */  lw         $v0, 0x8($s1)
/* E5974 8012F5B4 2442FEA2 */  addiu      $v0, $v0, -0x15E
/* E5978 8012F5B8 04420001 */  bltzl      $v0, .Lrace_8012F5C0
/* E597C 8012F5BC 00001021 */   addu      $v0, $zero, $zero
.Lrace_8012F5C0:
/* E5980 8012F5C0 3C01800D */  lui        $at, %hi(D_race_800CF154)
/* E5984 8012F5C4 C422F154 */  lwc1       $f2, %lo(D_race_800CF154)($at)
/* E5988 8012F5C8 44820000 */  mtc1       $v0, $f0
/* E598C 8012F5CC 46800020 */  cvt.s.w    $f0, $f0
/* E5990 8012F5D0 46020003 */  div.s      $f0, $f0, $f2
/* E5994 8012F5D4 3C01800D */  lui        $at, %hi(D_race_800CF158)
/* E5998 8012F5D8 C422F158 */  lwc1       $f2, %lo(D_race_800CF158)($at)
/* E599C 8012F5DC 8E02012C */  lw         $v0, 0x12C($s0)
/* E59A0 8012F5E0 46020002 */  mul.s      $f0, $f0, $f2
/* E59A4 8012F5E4 24060001 */  addiu      $a2, $zero, 0x1
/* E59A8 8012F5E8 84440170 */  lh         $a0, 0x170($v0)
/* E59AC 8012F5EC 8C420174 */  lw         $v0, 0x174($v0)
/* E59B0 8012F5F0 02042021 */  addu       $a0, $s0, $a0
/* E59B4 8012F5F4 4600010D */  trunc.w.s  $f4, $f0
/* E59B8 8012F5F8 44052000 */  mfc1       $a1, $f4
.Lrace_8012F5FC:
/* E59BC 8012F5FC 0040F809 */  jalr       $v0
/* E59C0 8012F600 00000000 */   nop
.Lrace_8012F604:
/* E59C4 8012F604 8E230028 */  lw         $v1, 0x28($s1)
/* E59C8 8012F608 8C620024 */  lw         $v0, 0x24($v1)
/* E59CC 8012F60C 02002821 */  addu       $a1, $s0, $zero
/* E59D0 8012F610 84440040 */  lh         $a0, 0x40($v0)
/* E59D4 8012F614 8C420044 */  lw         $v0, 0x44($v0)
/* E59D8 8012F618 0040F809 */  jalr       $v0
/* E59DC 8012F61C 00642021 */   addu      $a0, $v1, $a0
/* E59E0 8012F620 8E230024 */  lw         $v1, 0x24($s1)
/* E59E4 8012F624 8C620024 */  lw         $v0, 0x24($v1)
/* E59E8 8012F628 02002821 */  addu       $a1, $s0, $zero
/* E59EC 8012F62C 84440040 */  lh         $a0, 0x40($v0)
/* E59F0 8012F630 8C420044 */  lw         $v0, 0x44($v0)
/* E59F4 8012F634 0040F809 */  jalr       $v0
/* E59F8 8012F638 00642021 */   addu      $a0, $v1, $a0
/* E59FC 8012F63C 8E240004 */  lw         $a0, 0x4($s1)
/* E5A00 8012F640 24020002 */  addiu      $v0, $zero, 0x2
/* E5A04 8012F644 10820003 */  beq        $a0, $v0, .Lrace_8012F654
/* E5A08 8012F648 24020004 */   addiu     $v0, $zero, 0x4
/* E5A0C 8012F64C 14820006 */  bne        $a0, $v0, .Lrace_8012F668
/* E5A10 8012F650 00000000 */   nop
.Lrace_8012F654:
/* E5A14 8012F654 8E02012C */  lw         $v0, 0x12C($s0)
/* E5A18 8012F658 84440178 */  lh         $a0, 0x178($v0)
/* E5A1C 8012F65C 8C42017C */  lw         $v0, 0x17C($v0)
/* E5A20 8012F660 0040F809 */  jalr       $v0
/* E5A24 8012F664 02042021 */   addu      $a0, $s0, $a0
.Lrace_8012F668:
/* E5A28 8012F668 8FBF0018 */  lw         $ra, 0x18($sp)
/* E5A2C 8012F66C 8FB10014 */  lw         $s1, 0x14($sp)
/* E5A30 8012F670 8FB00010 */  lw         $s0, 0x10($sp)
/* E5A34 8012F674 03E00008 */  jr         $ra
/* E5A38 8012F678 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012F67C
/* E5A3C 8012F67C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* E5A40 8012F680 AFB00030 */  sw         $s0, 0x30($sp)
/* E5A44 8012F684 00808021 */  addu       $s0, $a0, $zero
/* E5A48 8012F688 AFBF0038 */  sw         $ra, 0x38($sp)
/* E5A4C 8012F68C AFB10034 */  sw         $s1, 0x34($sp)
/* E5A50 8012F690 8E110004 */  lw         $s1, 0x4($s0)
/* E5A54 8012F694 24020003 */  addiu      $v0, $zero, 0x3
/* E5A58 8012F698 12220023 */  beq        $s1, $v0, .Lrace_8012F728
/* E5A5C 8012F69C 2A220004 */   slti      $v0, $s1, 0x4
/* E5A60 8012F6A0 10400005 */  beqz       $v0, .Lrace_8012F6B8
/* E5A64 8012F6A4 24020002 */   addiu     $v0, $zero, 0x2
/* E5A68 8012F6A8 12220008 */  beq        $s1, $v0, .Lrace_8012F6CC
/* E5A6C 8012F6AC 00000000 */   nop
/* E5A70 8012F6B0 0804BE15 */  j          .Lrace_8012F854
/* E5A74 8012F6B4 00000000 */   nop
.Lrace_8012F6B8:
/* E5A78 8012F6B8 24020004 */  addiu      $v0, $zero, 0x4
/* E5A7C 8012F6BC 12220034 */  beq        $s1, $v0, .Lrace_8012F790
/* E5A80 8012F6C0 27B10020 */   addiu     $s1, $sp, 0x20
/* E5A84 8012F6C4 0804BE15 */  j          .Lrace_8012F854
/* E5A88 8012F6C8 00000000 */   nop
.Lrace_8012F6CC:
/* E5A8C 8012F6CC 8E040020 */  lw         $a0, 0x20($s0)
/* E5A90 8012F6D0 0C01971D */  jal        func_80065C74
/* E5A94 8012F6D4 24050001 */   addiu     $a1, $zero, 0x1
/* E5A98 8012F6D8 8E040024 */  lw         $a0, 0x24($s0)
/* E5A9C 8012F6DC 0C01971D */  jal        func_80065C74
/* E5AA0 8012F6E0 24050001 */   addiu     $a1, $zero, 0x1
/* E5AA4 8012F6E4 8E040028 */  lw         $a0, 0x28($s0)
/* E5AA8 8012F6E8 0C01971D */  jal        func_80065C74
/* E5AAC 8012F6EC 24050001 */   addiu     $a1, $zero, 0x1
/* E5AB0 8012F6F0 8E030014 */  lw         $v1, 0x14($s0)
/* E5AB4 8012F6F4 24020001 */  addiu      $v0, $zero, 0x1
/* E5AB8 8012F6F8 50620005 */  beql       $v1, $v0, .Lrace_8012F710
/* E5ABC 8012F6FC 240205DC */   addiu     $v0, $zero, 0x5DC
/* E5AC0 8012F700 50600003 */  beql       $v1, $zero, .Lrace_8012F710
/* E5AC4 8012F704 240203E8 */   addiu     $v0, $zero, 0x3E8
/* E5AC8 8012F708 14710002 */  bne        $v1, $s1, .Lrace_8012F714
/* E5ACC 8012F70C 24021388 */   addiu     $v0, $zero, 0x1388
.Lrace_8012F710:
/* E5AD0 8012F710 AE020008 */  sw         $v0, 0x8($s0)
.Lrace_8012F714:
/* E5AD4 8012F714 8E040018 */  lw         $a0, 0x18($s0)
/* E5AD8 8012F718 0C04339E */  jal        func_race_8010CE78
/* E5ADC 8012F71C 24050001 */   addiu     $a1, $zero, 0x1
/* E5AE0 8012F720 0804BE14 */  j          .Lrace_8012F850
/* E5AE4 8012F724 24020003 */   addiu     $v0, $zero, 0x3
.Lrace_8012F728:
/* E5AE8 8012F728 8E030014 */  lw         $v1, 0x14($s0)
/* E5AEC 8012F72C 24020002 */  addiu      $v0, $zero, 0x2
/* E5AF0 8012F730 1462000A */  bne        $v1, $v0, .Lrace_8012F75C
/* E5AF4 8012F734 00000000 */   nop
/* E5AF8 8012F738 8E02001C */  lw         $v0, 0x1C($s0)
/* E5AFC 8012F73C 8C420058 */  lw         $v0, 0x58($v0)
/* E5B00 8012F740 30420002 */  andi       $v0, $v0, 0x2
/* E5B04 8012F744 10400005 */  beqz       $v0, .Lrace_8012F75C
/* E5B08 8012F748 00000000 */   nop
/* E5B0C 8012F74C 24021388 */  addiu      $v0, $zero, 0x1388
/* E5B10 8012F750 AE020008 */  sw         $v0, 0x8($s0)
/* E5B14 8012F754 0804BE15 */  j          .Lrace_8012F854
/* E5B18 8012F758 AE110004 */   sw        $s1, 0x4($s0)
.Lrace_8012F75C:
/* E5B1C 8012F75C 8E040020 */  lw         $a0, 0x20($s0)
/* E5B20 8012F760 0C01971D */  jal        func_80065C74
/* E5B24 8012F764 24050002 */   addiu     $a1, $zero, 0x2
/* E5B28 8012F768 8E040024 */  lw         $a0, 0x24($s0)
/* E5B2C 8012F76C 0C01971D */  jal        func_80065C74
/* E5B30 8012F770 24050002 */   addiu     $a1, $zero, 0x2
/* E5B34 8012F774 8E040028 */  lw         $a0, 0x28($s0)
/* E5B38 8012F778 0C01971D */  jal        func_80065C74
/* E5B3C 8012F77C 24050002 */   addiu     $a1, $zero, 0x2
/* E5B40 8012F780 240202BC */  addiu      $v0, $zero, 0x2BC
/* E5B44 8012F784 AE020008 */  sw         $v0, 0x8($s0)
/* E5B48 8012F788 0804BE14 */  j          .Lrace_8012F850
/* E5B4C 8012F78C 24020004 */   addiu     $v0, $zero, 0x4
.Lrace_8012F790:
/* E5B50 8012F790 8E020018 */  lw         $v0, 0x18($s0)
/* E5B54 8012F794 8C43005C */  lw         $v1, 0x5C($v0)
/* E5B58 8012F798 8C620024 */  lw         $v0, 0x24($v1)
/* E5B5C 8012F79C 02202821 */  addu       $a1, $s1, $zero
/* E5B60 8012F7A0 84440010 */  lh         $a0, 0x10($v0)
/* E5B64 8012F7A4 8C420014 */  lw         $v0, 0x14($v0)
/* E5B68 8012F7A8 0040F809 */  jalr       $v0
/* E5B6C 8012F7AC 00642021 */   addu      $a0, $v1, $a0
/* E5B70 8012F7B0 8E030014 */  lw         $v1, 0x14($s0)
/* E5B74 8012F7B4 24020002 */  addiu      $v0, $zero, 0x2
/* E5B78 8012F7B8 14620011 */  bne        $v1, $v0, .Lrace_8012F800
/* E5B7C 8012F7BC 24050028 */   addiu     $a1, $zero, 0x28
/* E5B80 8012F7C0 3C01800D */  lui        $at, %hi(D_race_800CF15C)
/* E5B84 8012F7C4 C420F15C */  lwc1       $f0, %lo(D_race_800CF15C)($at)
/* E5B88 8012F7C8 3C01800D */  lui        $at, %hi(D_race_800CF160)
/* E5B8C 8012F7CC C422F160 */  lwc1       $f2, %lo(D_race_800CF160)($at)
/* E5B90 8012F7D0 E7A00010 */  swc1       $f0, 0x10($sp)
/* E5B94 8012F7D4 C6000014 */  lwc1       $f0, 0x14($s0)
/* E5B98 8012F7D8 46800020 */  cvt.s.w    $f0, $f0
/* E5B9C 8012F7DC 46020002 */  mul.s      $f0, $f0, $f2
/* E5BA0 8012F7E0 3C01800D */  lui        $at, %hi(D_race_800CF164)
/* E5BA4 8012F7E4 C422F164 */  lwc1       $f2, %lo(D_race_800CF164)($at)
/* E5BA8 8012F7E8 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* E5BAC 8012F7EC 46020000 */  add.s      $f0, $f0, $f2
/* E5BB0 8012F7F0 3C01800D */  lui        $at, %hi(D_race_800CF168)
/* E5BB4 8012F7F4 C422F168 */  lwc1       $f2, %lo(D_race_800CF168)($at)
/* E5BB8 8012F7F8 0804BE0E */  j          .Lrace_8012F838
/* E5BBC 8012F7FC 2405004B */   addiu     $a1, $zero, 0x4B
.Lrace_8012F800:
/* E5BC0 8012F800 3C01800D */  lui        $at, %hi(D_race_800CF16C)
/* E5BC4 8012F804 C420F16C */  lwc1       $f0, %lo(D_race_800CF16C)($at)
/* E5BC8 8012F808 3C01800D */  lui        $at, %hi(D_race_800CF170)
/* E5BCC 8012F80C C422F170 */  lwc1       $f2, %lo(D_race_800CF170)($at)
/* E5BD0 8012F810 E7A00010 */  swc1       $f0, 0x10($sp)
/* E5BD4 8012F814 C6000014 */  lwc1       $f0, 0x14($s0)
/* E5BD8 8012F818 46800020 */  cvt.s.w    $f0, $f0
/* E5BDC 8012F81C 46020002 */  mul.s      $f0, $f0, $f2
/* E5BE0 8012F820 3C01800D */  lui        $at, %hi(D_race_800CF174)
/* E5BE4 8012F824 C422F174 */  lwc1       $f2, %lo(D_race_800CF174)($at)
/* E5BE8 8012F828 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* E5BEC 8012F82C 46020000 */  add.s      $f0, $f0, $f2
/* E5BF0 8012F830 3C01800D */  lui        $at, %hi(D_race_800CF178)
/* E5BF4 8012F834 C422F178 */  lwc1       $f2, %lo(D_race_800CF178)($at)
.Lrace_8012F838:
/* E5BF8 8012F838 E7A20018 */  swc1       $f2, 0x18($sp)
/* E5BFC 8012F83C E7A00014 */  swc1       $f0, 0x14($sp)
/* E5C00 8012F840 8E040010 */  lw         $a0, 0x10($s0)
/* E5C04 8012F844 0C046530 */  jal        func_race_801194C0
/* E5C08 8012F848 02203021 */   addu      $a2, $s1, $zero
/* E5C0C 8012F84C 24020006 */  addiu      $v0, $zero, 0x6
.Lrace_8012F850:
/* E5C10 8012F850 AE020004 */  sw         $v0, 0x4($s0)
.Lrace_8012F854:
/* E5C14 8012F854 8FBF0038 */  lw         $ra, 0x38($sp)
/* E5C18 8012F858 8FB10034 */  lw         $s1, 0x34($sp)
/* E5C1C 8012F85C 8FB00030 */  lw         $s0, 0x30($sp)
/* E5C20 8012F860 03E00008 */  jr         $ra
/* E5C24 8012F864 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8012F868
/* E5C28 8012F868 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E5C2C 8012F86C AFB00010 */  sw         $s0, 0x10($sp)
/* E5C30 8012F870 00808021 */  addu       $s0, $a0, $zero
/* E5C34 8012F874 AFBF0014 */  sw         $ra, 0x14($sp)
/* E5C38 8012F878 8E050030 */  lw         $a1, 0x30($s0)
/* E5C3C 8012F87C 24020001 */  addiu      $v0, $zero, 0x1
/* E5C40 8012F880 10A00005 */  beqz       $a1, .Lrace_8012F898
/* E5C44 8012F884 AE020004 */   sw        $v0, 0x4($s0)
/* E5C48 8012F888 8E04002C */  lw         $a0, 0x2C($s0)
/* E5C4C 8012F88C 0C01087B */  jal        func_800421EC
/* E5C50 8012F890 00000000 */   nop
/* E5C54 8012F894 AE000030 */  sw         $zero, 0x30($s0)
.Lrace_8012F898:
/* E5C58 8012F898 8E040018 */  lw         $a0, 0x18($s0)
/* E5C5C 8012F89C 1080000B */  beqz       $a0, .Lrace_8012F8CC
/* E5C60 8012F8A0 00000000 */   nop
/* E5C64 8012F8A4 0C04353E */  jal        func_race_8010D4F8
/* E5C68 8012F8A8 00000000 */   nop
/* E5C6C 8012F8AC 8E040018 */  lw         $a0, 0x18($s0)
/* E5C70 8012F8B0 8C820D04 */  lw         $v0, 0xD04($a0)
/* E5C74 8012F8B4 30420008 */  andi       $v0, $v0, 0x8
/* E5C78 8012F8B8 50400004 */  beql       $v0, $zero, .Lrace_8012F8CC
/* E5C7C 8012F8BC AE000018 */   sw        $zero, 0x18($s0)
/* E5C80 8012F8C0 0C0434BA */  jal        func_race_8010D2E8
/* E5C84 8012F8C4 00000000 */   nop
/* E5C88 8012F8C8 AE000018 */  sw         $zero, 0x18($s0)
.Lrace_8012F8CC:
/* E5C8C 8012F8CC 8E030028 */  lw         $v1, 0x28($s0)
/* E5C90 8012F8D0 1060000B */  beqz       $v1, .Lrace_8012F900
/* E5C94 8012F8D4 00000000 */   nop
/* E5C98 8012F8D8 8C620024 */  lw         $v0, 0x24($v1)
/* E5C9C 8012F8DC 844400B0 */  lh         $a0, 0xB0($v0)
/* E5CA0 8012F8E0 8C4200B4 */  lw         $v0, 0xB4($v0)
/* E5CA4 8012F8E4 0040F809 */  jalr       $v0
/* E5CA8 8012F8E8 00642021 */   addu      $a0, $v1, $a0
/* E5CAC 8012F8EC 8E04001C */  lw         $a0, 0x1C($s0)
/* E5CB0 8012F8F0 8E050028 */  lw         $a1, 0x28($s0)
/* E5CB4 8012F8F4 0C04B519 */  jal        func_race_8012D464
/* E5CB8 8012F8F8 00000000 */   nop
/* E5CBC 8012F8FC AE000028 */  sw         $zero, 0x28($s0)
.Lrace_8012F900:
/* E5CC0 8012F900 8E030024 */  lw         $v1, 0x24($s0)
/* E5CC4 8012F904 1060000B */  beqz       $v1, .Lrace_8012F934
/* E5CC8 8012F908 00000000 */   nop
/* E5CCC 8012F90C 8C620024 */  lw         $v0, 0x24($v1)
/* E5CD0 8012F910 844400B0 */  lh         $a0, 0xB0($v0)
/* E5CD4 8012F914 8C4200B4 */  lw         $v0, 0xB4($v0)
/* E5CD8 8012F918 0040F809 */  jalr       $v0
/* E5CDC 8012F91C 00642021 */   addu      $a0, $v1, $a0
/* E5CE0 8012F920 8E04001C */  lw         $a0, 0x1C($s0)
/* E5CE4 8012F924 8E050024 */  lw         $a1, 0x24($s0)
/* E5CE8 8012F928 0C04B519 */  jal        func_race_8012D464
/* E5CEC 8012F92C 00000000 */   nop
/* E5CF0 8012F930 AE000024 */  sw         $zero, 0x24($s0)
.Lrace_8012F934:
/* E5CF4 8012F934 8E030020 */  lw         $v1, 0x20($s0)
/* E5CF8 8012F938 1060000B */  beqz       $v1, .Lrace_8012F968
/* E5CFC 8012F93C 00000000 */   nop
/* E5D00 8012F940 8C620024 */  lw         $v0, 0x24($v1)
/* E5D04 8012F944 844400B0 */  lh         $a0, 0xB0($v0)
/* E5D08 8012F948 8C4200B4 */  lw         $v0, 0xB4($v0)
/* E5D0C 8012F94C 0040F809 */  jalr       $v0
/* E5D10 8012F950 00642021 */   addu      $a0, $v1, $a0
/* E5D14 8012F954 8E04001C */  lw         $a0, 0x1C($s0)
/* E5D18 8012F958 8E050020 */  lw         $a1, 0x20($s0)
/* E5D1C 8012F95C 0C04B519 */  jal        func_race_8012D464
/* E5D20 8012F960 00000000 */   nop
/* E5D24 8012F964 AE000020 */  sw         $zero, 0x20($s0)
.Lrace_8012F968:
/* E5D28 8012F968 8FBF0014 */  lw         $ra, 0x14($sp)
/* E5D2C 8012F96C 8FB00010 */  lw         $s0, 0x10($sp)
/* E5D30 8012F970 03E00008 */  jr         $ra
/* E5D34 8012F974 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012F978
/* E5D38 8012F978 03E00008 */  jr         $ra
/* E5D3C 8012F97C 24020003 */   addiu     $v0, $zero, 0x3

glabel func_race_8012F980
/* E5D40 8012F980 03E00008 */  jr         $ra
/* E5D44 8012F984 AC800018 */   sw        $zero, 0x18($a0)

glabel func_race_8012F988
/* E5D48 8012F988 8C820018 */  lw         $v0, 0x18($a0)
/* E5D4C 8012F98C 03E00008 */  jr         $ra
/* E5D50 8012F990 00000000 */   nop

glabel func_race_8012F994
/* E5D54 8012F994 03E00008 */  jr         $ra
/* E5D58 8012F998 24020003 */   addiu     $v0, $zero, 0x3
