.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801227D0
/* D8B90 801227D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D8B94 801227D4 AFB00010 */  sw         $s0, 0x10($sp)
/* D8B98 801227D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D8B9C 801227DC 0C048AF4 */  jal        func_race_80122BD0
/* D8BA0 801227E0 00808021 */   addu      $s0, $a0, $zero
/* D8BA4 801227E4 02001021 */  addu       $v0, $s0, $zero
/* D8BA8 801227E8 3C03800D */  lui        $v1, %hi(D_race_800CE748)
/* D8BAC 801227EC 2463E748 */  addiu      $v1, $v1, %lo(D_race_800CE748)
/* D8BB0 801227F0 AC430000 */  sw         $v1, 0x0($v0)
/* D8BB4 801227F4 AC400060 */  sw         $zero, 0x60($v0)
/* D8BB8 801227F8 A0400064 */  sb         $zero, 0x64($v0)
/* D8BBC 801227FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D8BC0 80122800 8FB00010 */  lw         $s0, 0x10($sp)
/* D8BC4 80122804 03E00008 */  jr         $ra
/* D8BC8 80122808 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012280C
/* D8BCC 8012280C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D8BD0 80122810 AFB00010 */  sw         $s0, 0x10($sp)
/* D8BD4 80122814 00808021 */  addu       $s0, $a0, $zero
/* D8BD8 80122818 AFB10014 */  sw         $s1, 0x14($sp)
/* D8BDC 8012281C 00A08821 */  addu       $s1, $a1, $zero
/* D8BE0 80122820 3C02800D */  lui        $v0, %hi(D_race_800CE748)
/* D8BE4 80122824 2442E748 */  addiu      $v0, $v0, %lo(D_race_800CE748)
/* D8BE8 80122828 AFBF0018 */  sw         $ra, 0x18($sp)
/* D8BEC 8012282C 0C048A15 */  jal        func_race_80122854
/* D8BF0 80122830 AE020000 */   sw        $v0, 0x0($s0)
/* D8BF4 80122834 02002021 */  addu       $a0, $s0, $zero
/* D8BF8 80122838 0C048B04 */  jal        func_race_80122C10
/* D8BFC 8012283C 02202821 */   addu      $a1, $s1, $zero
/* D8C00 80122840 8FBF0018 */  lw         $ra, 0x18($sp)
/* D8C04 80122844 8FB10014 */  lw         $s1, 0x14($sp)
/* D8C08 80122848 8FB00010 */  lw         $s0, 0x10($sp)
/* D8C0C 8012284C 03E00008 */  jr         $ra
/* D8C10 80122850 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80122854
/* D8C14 80122854 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D8C18 80122858 AFBF0010 */  sw         $ra, 0x10($sp)
/* D8C1C 8012285C AC800060 */  sw         $zero, 0x60($a0)
/* D8C20 80122860 0C048BA5 */  jal        func_race_80122E94
/* D8C24 80122864 A0800064 */   sb        $zero, 0x64($a0)
/* D8C28 80122868 8FBF0010 */  lw         $ra, 0x10($sp)
/* D8C2C 8012286C 03E00008 */  jr         $ra
/* D8C30 80122870 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80122874
/* D8C34 80122874 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D8C38 80122878 AFB00010 */  sw         $s0, 0x10($sp)
/* D8C3C 8012287C 00808021 */  addu       $s0, $a0, $zero
/* D8C40 80122880 26040008 */  addiu      $a0, $s0, 0x8
/* D8C44 80122884 AFBF0014 */  sw         $ra, 0x14($sp)
/* D8C48 80122888 0C016596 */  jal        func_80059658
/* D8C4C 8012288C 26050054 */   addiu     $a1, $s0, 0x54
/* D8C50 80122890 24020002 */  addiu      $v0, $zero, 0x2
/* D8C54 80122894 AE02003C */  sw         $v0, 0x3C($s0)
/* D8C58 80122898 AE000060 */  sw         $zero, 0x60($s0)
/* D8C5C 8012289C A2000064 */  sb         $zero, 0x64($s0)
/* D8C60 801228A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* D8C64 801228A4 8FB00010 */  lw         $s0, 0x10($sp)
/* D8C68 801228A8 03E00008 */  jr         $ra
/* D8C6C 801228AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801228B0
/* D8C70 801228B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D8C74 801228B4 AFB00010 */  sw         $s0, 0x10($sp)
/* D8C78 801228B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D8C7C 801228BC 0C048BA0 */  jal        func_race_80122E80
/* D8C80 801228C0 00808021 */   addu      $s0, $a0, $zero
/* D8C84 801228C4 26040008 */  addiu      $a0, $s0, 0x8
/* D8C88 801228C8 0C01659D */  jal        func_80059674
/* D8C8C 801228CC 26050054 */   addiu     $a1, $s0, 0x54
/* D8C90 801228D0 02002021 */  addu       $a0, $s0, $zero
/* D8C94 801228D4 00002821 */  addu       $a1, $zero, $zero
/* D8C98 801228D8 24020002 */  addiu      $v0, $zero, 0x2
/* D8C9C 801228DC AC82003C */  sw         $v0, 0x3C($a0)
/* D8CA0 801228E0 AC800060 */  sw         $zero, 0x60($a0)
/* D8CA4 801228E4 A0800064 */  sb         $zero, 0x64($a0)
/* D8CA8 801228E8 0C048BE7 */  jal        func_race_80122F9C
/* D8CAC 801228EC AC80004C */   sw        $zero, 0x4C($a0)
/* D8CB0 801228F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* D8CB4 801228F4 8FB00010 */  lw         $s0, 0x10($sp)
/* D8CB8 801228F8 03E00008 */  jr         $ra
/* D8CBC 801228FC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80122900
/* D8CC0 80122900 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D8CC4 80122904 AFB00010 */  sw         $s0, 0x10($sp)
/* D8CC8 80122908 00808021 */  addu       $s0, $a0, $zero
/* D8CCC 8012290C AFB10014 */  sw         $s1, 0x14($sp)
/* D8CD0 80122910 AFBF0018 */  sw         $ra, 0x18($sp)
/* D8CD4 80122914 8E03003C */  lw         $v1, 0x3C($s0)
/* D8CD8 80122918 24020004 */  addiu      $v0, $zero, 0x4
/* D8CDC 8012291C 10620032 */  beq        $v1, $v0, .Lrace_801229E8
/* D8CE0 80122920 00A08821 */   addu      $s1, $a1, $zero
/* D8CE4 80122924 0C048BAC */  jal        func_race_80122EB0
/* D8CE8 80122928 00000000 */   nop
/* D8CEC 8012292C 92020064 */  lbu        $v0, 0x64($s0)
/* D8CF0 80122930 30420001 */  andi       $v0, $v0, 0x1
/* D8CF4 80122934 10400009 */  beqz       $v0, .Lrace_8012295C
/* D8CF8 80122938 00000000 */   nop
/* D8CFC 8012293C 8E020060 */  lw         $v0, 0x60($s0)
/* D8D00 80122940 00511021 */  addu       $v0, $v0, $s1
/* D8D04 80122944 AE020060 */  sw         $v0, 0x60($s0)
/* D8D08 80122948 2C422711 */  sltiu      $v0, $v0, 0x2711
/* D8D0C 8012294C 14400003 */  bnez       $v0, .Lrace_8012295C
/* D8D10 80122950 00000000 */   nop
/* D8D14 80122954 0C048AB2 */  jal        func_race_80122AC8
/* D8D18 80122958 02002021 */   addu      $a0, $s0, $zero
.Lrace_8012295C:
/* D8D1C 8012295C 8E03003C */  lw         $v1, 0x3C($s0)
/* D8D20 80122960 24110002 */  addiu      $s1, $zero, 0x2
/* D8D24 80122964 10710017 */  beq        $v1, $s1, .Lrace_801229C4
/* D8D28 80122968 24020003 */   addiu     $v0, $zero, 0x3
/* D8D2C 8012296C 1462001E */  bne        $v1, $v0, .Lrace_801229E8
/* D8D30 80122970 00000000 */   nop
/* D8D34 80122974 8E02004C */  lw         $v0, 0x4C($s0)
/* D8D38 80122978 2C4200FB */  sltiu      $v0, $v0, 0xFB
/* D8D3C 8012297C 1440001A */  bnez       $v0, .Lrace_801229E8
/* D8D40 80122980 00000000 */   nop
/* D8D44 80122984 92030064 */  lbu        $v1, 0x64($s0)
/* D8D48 80122988 00711024 */  and        $v0, $v1, $s1
/* D8D4C 8012298C 10400007 */  beqz       $v0, .Lrace_801229AC
/* D8D50 80122990 26040008 */   addiu     $a0, $s0, 0x8
/* D8D54 80122994 26050054 */  addiu      $a1, $s0, 0x54
/* D8D58 80122998 306200FD */  andi       $v0, $v1, 0xFD
/* D8D5C 8012299C 0C01659D */  jal        func_80059674
/* D8D60 801229A0 A2020064 */   sb        $v0, 0x64($s0)
/* D8D64 801229A4 08048A6D */  j          .Lrace_801229B4
/* D8D68 801229A8 AE11003C */   sw        $s1, 0x3C($s0)
.Lrace_801229AC:
/* D8D6C 801229AC 24020001 */  addiu      $v0, $zero, 0x1
/* D8D70 801229B0 AE02003C */  sw         $v0, 0x3C($s0)
.Lrace_801229B4:
/* D8D74 801229B4 AE00004C */  sw         $zero, 0x4C($s0)
/* D8D78 801229B8 02002021 */  addu       $a0, $s0, $zero
/* D8D7C 801229BC 08048A78 */  j          .Lrace_801229E0
/* D8D80 801229C0 00002821 */   addu      $a1, $zero, $zero
.Lrace_801229C4:
/* D8D84 801229C4 8E02004C */  lw         $v0, 0x4C($s0)
/* D8D88 801229C8 2C4201F5 */  sltiu      $v0, $v0, 0x1F5
/* D8D8C 801229CC 14400006 */  bnez       $v0, .Lrace_801229E8
/* D8D90 801229D0 02002021 */   addu      $a0, $s0, $zero
/* D8D94 801229D4 24050001 */  addiu      $a1, $zero, 0x1
/* D8D98 801229D8 AC80003C */  sw         $zero, 0x3C($a0)
/* D8D9C 801229DC AC80004C */  sw         $zero, 0x4C($a0)
.Lrace_801229E0:
/* D8DA0 801229E0 0C048BE7 */  jal        func_race_80122F9C
/* D8DA4 801229E4 00000000 */   nop
.Lrace_801229E8:
/* D8DA8 801229E8 8FBF0018 */  lw         $ra, 0x18($sp)
/* D8DAC 801229EC 8FB10014 */  lw         $s1, 0x14($sp)
/* D8DB0 801229F0 8FB00010 */  lw         $s0, 0x10($sp)
/* D8DB4 801229F4 03E00008 */  jr         $ra
/* D8DB8 801229F8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801229FC
/* D8DBC 801229FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D8DC0 80122A00 AFB00010 */  sw         $s0, 0x10($sp)
/* D8DC4 80122A04 00808021 */  addu       $s0, $a0, $zero
/* D8DC8 80122A08 AFBF0014 */  sw         $ra, 0x14($sp)
/* D8DCC 80122A0C 8E02003C */  lw         $v0, 0x3C($s0)
/* D8DD0 80122A10 1440000D */  bnez       $v0, .Lrace_80122A48
/* D8DD4 80122A14 00A02021 */   addu      $a0, $a1, $zero
/* D8DD8 80122A18 0C043438 */  jal        func_race_8010D0E0
/* D8DDC 80122A1C 02002821 */   addu      $a1, $s0, $zero
/* D8DE0 80122A20 10400009 */  beqz       $v0, .Lrace_80122A48
/* D8DE4 80122A24 24020001 */   addiu     $v0, $zero, 0x1
/* D8DE8 80122A28 92030064 */  lbu        $v1, 0x64($s0)
/* D8DEC 80122A2C AE020040 */  sw         $v0, 0x40($s0)
/* D8DF0 80122A30 24020003 */  addiu      $v0, $zero, 0x3
/* D8DF4 80122A34 AE02003C */  sw         $v0, 0x3C($s0)
/* D8DF8 80122A38 AE00004C */  sw         $zero, 0x4C($s0)
/* D8DFC 80122A3C AE000060 */  sw         $zero, 0x60($s0)
/* D8E00 80122A40 306300FE */  andi       $v1, $v1, 0xFE
/* D8E04 80122A44 A2030064 */  sb         $v1, 0x64($s0)
.Lrace_80122A48:
/* D8E08 80122A48 8FBF0014 */  lw         $ra, 0x14($sp)
/* D8E0C 80122A4C 8FB00010 */  lw         $s0, 0x10($sp)
/* D8E10 80122A50 03E00008 */  jr         $ra
/* D8E14 80122A54 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80122A58
/* D8E18 80122A58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D8E1C 80122A5C AFA5002C */  sw         $a1, 0x2C($sp)
/* D8E20 80122A60 C7A0002C */  lwc1       $f0, 0x2C($sp)
/* D8E24 80122A64 AFB00020 */  sw         $s0, 0x20($sp)
/* D8E28 80122A68 00808021 */  addu       $s0, $a0, $zero
/* D8E2C 80122A6C AFA60030 */  sw         $a2, 0x30($sp)
/* D8E30 80122A70 E7A00010 */  swc1       $f0, 0x10($sp)
/* D8E34 80122A74 C7A00030 */  lwc1       $f0, 0x30($sp)
/* D8E38 80122A78 AFA70034 */  sw         $a3, 0x34($sp)
/* D8E3C 80122A7C E7A00014 */  swc1       $f0, 0x14($sp)
/* D8E40 80122A80 C7A00034 */  lwc1       $f0, 0x34($sp)
/* D8E44 80122A84 27A50010 */  addiu      $a1, $sp, 0x10
/* D8E48 80122A88 AFBF0024 */  sw         $ra, 0x24($sp)
/* D8E4C 80122A8C 0C048ACD */  jal        func_race_80122B34
/* D8E50 80122A90 E7A00018 */   swc1      $f0, 0x18($sp)
/* D8E54 80122A94 26040008 */  addiu      $a0, $s0, 0x8
/* D8E58 80122A98 0C01659D */  jal        func_80059674
/* D8E5C 80122A9C 27A50010 */   addiu     $a1, $sp, 0x10
/* D8E60 80122AA0 92030064 */  lbu        $v1, 0x64($s0)
/* D8E64 80122AA4 24020002 */  addiu      $v0, $zero, 0x2
/* D8E68 80122AA8 AE02003C */  sw         $v0, 0x3C($s0)
/* D8E6C 80122AAC AE00004C */  sw         $zero, 0x4C($s0)
/* D8E70 80122AB0 34630001 */  ori        $v1, $v1, 0x1
/* D8E74 80122AB4 A2030064 */  sb         $v1, 0x64($s0)
/* D8E78 80122AB8 8FBF0024 */  lw         $ra, 0x24($sp)
/* D8E7C 80122ABC 8FB00020 */  lw         $s0, 0x20($sp)
/* D8E80 80122AC0 03E00008 */  jr         $ra
/* D8E84 80122AC4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80122AC8
/* D8E88 80122AC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D8E8C 80122ACC AFB00010 */  sw         $s0, 0x10($sp)
/* D8E90 80122AD0 00808021 */  addu       $s0, $a0, $zero
/* D8E94 80122AD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* D8E98 80122AD8 92020064 */  lbu        $v0, 0x64($s0)
/* D8E9C 80122ADC 8E03003C */  lw         $v1, 0x3C($s0)
/* D8EA0 80122AE0 AE000060 */  sw         $zero, 0x60($s0)
/* D8EA4 80122AE4 304200FE */  andi       $v0, $v0, 0xFE
/* D8EA8 80122AE8 14600008 */  bnez       $v1, .Lrace_80122B0C
/* D8EAC 80122AEC A2020064 */   sb        $v0, 0x64($s0)
/* D8EB0 80122AF0 00401821 */  addu       $v1, $v0, $zero
/* D8EB4 80122AF4 24020003 */  addiu      $v0, $zero, 0x3
/* D8EB8 80122AF8 34630002 */  ori        $v1, $v1, 0x2
/* D8EBC 80122AFC AE02003C */  sw         $v0, 0x3C($s0)
/* D8EC0 80122B00 AE00004C */  sw         $zero, 0x4C($s0)
/* D8EC4 80122B04 08048AC9 */  j          .Lrace_80122B24
/* D8EC8 80122B08 A2030064 */   sb        $v1, 0x64($s0)
.Lrace_80122B0C:
/* D8ECC 80122B0C 26040008 */  addiu      $a0, $s0, 0x8
/* D8ED0 80122B10 0C01659D */  jal        func_80059674
/* D8ED4 80122B14 26050054 */   addiu     $a1, $s0, 0x54
/* D8ED8 80122B18 24020002 */  addiu      $v0, $zero, 0x2
/* D8EDC 80122B1C AE02003C */  sw         $v0, 0x3C($s0)
/* D8EE0 80122B20 AE00004C */  sw         $zero, 0x4C($s0)
.Lrace_80122B24:
/* D8EE4 80122B24 8FBF0014 */  lw         $ra, 0x14($sp)
/* D8EE8 80122B28 8FB00010 */  lw         $s0, 0x10($sp)
/* D8EEC 80122B2C 03E00008 */  jr         $ra
/* D8EF0 80122B30 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80122B34
/* D8EF4 80122B34 27BDFF88 */  addiu      $sp, $sp, -0x78
/* D8EF8 80122B38 AFB00070 */  sw         $s0, 0x70($sp)
/* D8EFC 80122B3C 00A08021 */  addu       $s0, $a1, $zero
/* D8F00 80122B40 AFBF0074 */  sw         $ra, 0x74($sp)
/* D8F04 80122B44 C6000000 */  lwc1       $f0, 0x0($s0)
/* D8F08 80122B48 3C01800D */  lui        $at, %hi(D_race_800CE740)
/* D8F0C 80122B4C C422E740 */  lwc1       $f2, %lo(D_race_800CE740)($at)
/* D8F10 80122B50 E7A00050 */  swc1       $f0, 0x50($sp)
/* D8F14 80122B54 C6000004 */  lwc1       $f0, 0x4($s0)
/* D8F18 80122B58 E7A00054 */  swc1       $f0, 0x54($sp)
/* D8F1C 80122B5C C6000008 */  lwc1       $f0, 0x8($s0)
/* D8F20 80122B60 46020000 */  add.s      $f0, $f0, $f2
/* D8F24 80122B64 E7A00058 */  swc1       $f0, 0x58($sp)
/* D8F28 80122B68 C6000000 */  lwc1       $f0, 0x0($s0)
/* D8F2C 80122B6C E7A00060 */  swc1       $f0, 0x60($sp)
/* D8F30 80122B70 C6000004 */  lwc1       $f0, 0x4($s0)
/* D8F34 80122B74 E7A00064 */  swc1       $f0, 0x64($sp)
/* D8F38 80122B78 C6000008 */  lwc1       $f0, 0x8($s0)
/* D8F3C 80122B7C 46020001 */  sub.s      $f0, $f0, $f2
/* D8F40 80122B80 27A50050 */  addiu      $a1, $sp, 0x50
/* D8F44 80122B84 E7A00068 */  swc1       $f0, 0x68($sp)
/* D8F48 80122B88 8C820004 */  lw         $v0, 0x4($a0)
/* D8F4C 80122B8C 27A60060 */  addiu      $a2, $sp, 0x60
/* D8F50 80122B90 8C440068 */  lw         $a0, 0x68($v0)
/* D8F54 80122B94 27A70018 */  addiu      $a3, $sp, 0x18
/* D8F58 80122B98 AFB00010 */  sw         $s0, 0x10($sp)
/* D8F5C 80122B9C 0C03CA12 */  jal        func_race_800F2848
/* D8F60 80122BA0 AFA00014 */   sw        $zero, 0x14($sp)
/* D8F64 80122BA4 C6000008 */  lwc1       $f0, 0x8($s0)
/* D8F68 80122BA8 3C01800D */  lui        $at, %hi(D_race_800CE744)
/* D8F6C 80122BAC C422E744 */  lwc1       $f2, %lo(D_race_800CE744)($at)
/* D8F70 80122BB0 46020000 */  add.s      $f0, $f0, $f2
/* D8F74 80122BB4 E6000008 */  swc1       $f0, 0x8($s0)
/* D8F78 80122BB8 8FBF0074 */  lw         $ra, 0x74($sp)
/* D8F7C 80122BBC 8FB00070 */  lw         $s0, 0x70($sp)
/* D8F80 80122BC0 03E00008 */  jr         $ra
/* D8F84 80122BC4 27BD0078 */   addiu     $sp, $sp, 0x78
