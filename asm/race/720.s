.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80119740
/* CFB00 80119740 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CFB04 80119744 AFB00010 */  sw         $s0, 0x10($sp)
/* CFB08 80119748 AFBF0014 */  sw         $ra, 0x14($sp)
/* CFB0C 8011974C 0C040B20 */  jal        func_race_80102C80
/* CFB10 80119750 00808021 */   addu      $s0, $a0, $zero
/* CFB14 80119754 260400A8 */  addiu      $a0, $s0, 0xA8
/* CFB18 80119758 3C02800D */  lui        $v0, %hi(D_race_800CE0C8)
/* CFB1C 8011975C 2442E0C8 */  addiu      $v0, $v0, %lo(D_race_800CE0C8)
/* CFB20 80119760 0C035088 */  jal        func_race_800D4220
/* CFB24 80119764 AE020000 */   sw        $v0, 0x0($s0)
/* CFB28 80119768 02001021 */  addu       $v0, $s0, $zero
/* CFB2C 8011976C AC400220 */  sw         $zero, 0x220($v0)
/* CFB30 80119770 AC400224 */  sw         $zero, 0x224($v0)
/* CFB34 80119774 AC400228 */  sw         $zero, 0x228($v0)
/* CFB38 80119778 AC40022C */  sw         $zero, 0x22C($v0)
/* CFB3C 8011977C AC40023C */  sw         $zero, 0x23C($v0)
/* CFB40 80119780 8FBF0014 */  lw         $ra, 0x14($sp)
/* CFB44 80119784 8FB00010 */  lw         $s0, 0x10($sp)
/* CFB48 80119788 03E00008 */  jr         $ra
/* CFB4C 8011978C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80119790
/* CFB50 80119790 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CFB54 80119794 AFB00010 */  sw         $s0, 0x10($sp)
/* CFB58 80119798 00808021 */  addu       $s0, $a0, $zero
/* CFB5C 8011979C AFB10014 */  sw         $s1, 0x14($sp)
/* CFB60 801197A0 00A08821 */  addu       $s1, $a1, $zero
/* CFB64 801197A4 3C02800D */  lui        $v0, %hi(D_race_800CE0C8)
/* CFB68 801197A8 2442E0C8 */  addiu      $v0, $v0, %lo(D_race_800CE0C8)
/* CFB6C 801197AC AFBF0018 */  sw         $ra, 0x18($sp)
/* CFB70 801197B0 0C046649 */  jal        func_race_80119924
/* CFB74 801197B4 AE020000 */   sw        $v0, 0x0($s0)
/* CFB78 801197B8 260400A8 */  addiu      $a0, $s0, 0xA8
/* CFB7C 801197BC 0C035095 */  jal        func_race_800D4254
/* CFB80 801197C0 24050002 */   addiu     $a1, $zero, 0x2
/* CFB84 801197C4 02002021 */  addu       $a0, $s0, $zero
/* CFB88 801197C8 0C040B2D */  jal        func_race_80102CB4
/* CFB8C 801197CC 02202821 */   addu      $a1, $s1, $zero
/* CFB90 801197D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* CFB94 801197D4 8FB10014 */  lw         $s1, 0x14($sp)
/* CFB98 801197D8 8FB00010 */  lw         $s0, 0x10($sp)
/* CFB9C 801197DC 03E00008 */  jr         $ra
/* CFBA0 801197E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801197E4
/* CFBA4 801197E4 27BDFF68 */  addiu      $sp, $sp, -0x98
/* CFBA8 801197E8 AFB1008C */  sw         $s1, 0x8C($sp)
/* CFBAC 801197EC 00A08821 */  addu       $s1, $a1, $zero
/* CFBB0 801197F0 AFBF0094 */  sw         $ra, 0x94($sp)
/* CFBB4 801197F4 AFB20090 */  sw         $s2, 0x90($sp)
/* CFBB8 801197F8 AFB00088 */  sw         $s0, 0x88($sp)
/* CFBBC 801197FC C6200004 */  lwc1       $f0, 0x4($s1)
/* CFBC0 80119800 00809021 */  addu       $s2, $a0, $zero
/* CFBC4 80119804 E6400220 */  swc1       $f0, 0x220($s2)
/* CFBC8 80119808 C620000C */  lwc1       $f0, 0xC($s1)
/* CFBCC 8011980C AE400228 */  sw         $zero, 0x228($s2)
/* CFBD0 80119810 AE4000A4 */  sw         $zero, 0xA4($s2)
/* CFBD4 80119814 E6400224 */  swc1       $f0, 0x224($s2)
/* CFBD8 80119818 8E240000 */  lw         $a0, 0x0($s1)
/* CFBDC 8011981C AFA40010 */  sw         $a0, 0x10($sp)
/* CFBE0 80119820 8C820000 */  lw         $v0, 0x0($a0)
/* CFBE4 80119824 84430010 */  lh         $v1, 0x10($v0)
/* CFBE8 80119828 8C420014 */  lw         $v0, 0x14($v0)
/* CFBEC 8011982C 0040F809 */  jalr       $v0
/* CFBF0 80119830 00832021 */   addu      $a0, $a0, $v1
/* CFBF4 80119834 8C42001C */  lw         $v0, 0x1C($v0)
/* CFBF8 80119838 44800000 */  mtc1       $zero, $f0
/* CFBFC 8011983C AFA20014 */  sw         $v0, 0x14($sp)
/* CFC00 80119840 8E22001C */  lw         $v0, 0x1C($s1)
/* CFC04 80119844 24030005 */  addiu      $v1, $zero, 0x5
/* CFC08 80119848 AFA3001C */  sw         $v1, 0x1C($sp)
/* CFC0C 8011984C AFA20018 */  sw         $v0, 0x18($sp)
/* CFC10 80119850 C622000C */  lwc1       $f2, 0xC($s1)
/* CFC14 80119854 46001032 */  c.eq.s     $f2, $f0
/* CFC18 80119858 00000000 */  nop
/* CFC1C 8011985C 45000003 */  bc1f       .Lrace_8011986C
/* CFC20 80119860 24020001 */   addiu     $v0, $zero, 0x1
/* CFC24 80119864 0804661C */  j          .Lrace_80119870
/* CFC28 80119868 AFA20020 */   sw        $v0, 0x20($sp)
.Lrace_8011986C:
/* CFC2C 8011986C AFA30020 */  sw         $v1, 0x20($sp)
.Lrace_80119870:
/* CFC30 80119870 24020002 */  addiu      $v0, $zero, 0x2
/* CFC34 80119874 AFA20024 */  sw         $v0, 0x24($sp)
/* CFC38 80119878 AFA00028 */  sw         $zero, 0x28($sp)
/* CFC3C 8011987C C6200008 */  lwc1       $f0, 0x8($s1)
/* CFC40 80119880 3C01800D */  lui        $at, %hi(D_race_800CE080)
/* CFC44 80119884 C424E080 */  lwc1       $f4, %lo(D_race_800CE080)($at)
/* CFC48 80119888 AFA00030 */  sw         $zero, 0x30($sp)
/* CFC4C 8011988C AFA00034 */  sw         $zero, 0x34($sp)
/* CFC50 80119890 AFA00038 */  sw         $zero, 0x38($sp)
/* CFC54 80119894 E7A0002C */  swc1       $f0, 0x2C($sp)
/* CFC58 80119898 C6200008 */  lwc1       $f0, 0x8($s1)
/* CFC5C 8011989C 46040002 */  mul.s      $f0, $f0, $f4
/* CFC60 801198A0 265000A8 */  addiu      $s0, $s2, 0xA8
/* CFC64 801198A4 02002021 */  addu       $a0, $s0, $zero
/* CFC68 801198A8 27A50010 */  addiu      $a1, $sp, 0x10
/* CFC6C 801198AC AFA00040 */  sw         $zero, 0x40($sp)
/* CFC70 801198B0 E7A0003C */  swc1       $f0, 0x3C($sp)
/* CFC74 801198B4 C6220008 */  lwc1       $f2, 0x8($s1)
/* CFC78 801198B8 3C01800D */  lui        $at, %hi(D_race_800CE084)
/* CFC7C 801198BC C420E084 */  lwc1       $f0, %lo(D_race_800CE084)($at)
/* CFC80 801198C0 24020003 */  addiu      $v0, $zero, 0x3
/* CFC84 801198C4 AFA00048 */  sw         $zero, 0x48($sp)
/* CFC88 801198C8 AFA00064 */  sw         $zero, 0x64($sp)
/* CFC8C 801198CC E7A40068 */  swc1       $f4, 0x68($sp)
/* CFC90 801198D0 AFA20078 */  sw         $v0, 0x78($sp)
/* CFC94 801198D4 AFA00080 */  sw         $zero, 0x80($sp)
/* CFC98 801198D8 E7A0006C */  swc1       $f0, 0x6C($sp)
/* CFC9C 801198DC 3C01800D */  lui        $at, %hi(D_race_800CE088)
/* CFCA0 801198E0 C420E088 */  lwc1       $f0, %lo(D_race_800CE088)($at)
/* CFCA4 801198E4 46001087 */  neg.s      $f2, $f2
/* CFCA8 801198E8 E7A20044 */  swc1       $f2, 0x44($sp)
/* CFCAC 801198EC 0C0350E3 */  jal        func_race_800D438C
/* CFCB0 801198F0 E7A0007C */   swc1      $f0, 0x7C($sp)
/* CFCB4 801198F4 02002021 */  addu       $a0, $s0, $zero
/* CFCB8 801198F8 26250010 */  addiu      $a1, $s1, 0x10
/* CFCBC 801198FC 26260014 */  addiu      $a2, $s1, 0x14
/* CFCC0 80119900 0C0354E2 */  jal        func_race_800D5388
/* CFCC4 80119904 26270018 */   addiu     $a3, $s1, 0x18
/* CFCC8 80119908 AE40023C */  sw         $zero, 0x23C($s2)
/* CFCCC 8011990C 8FBF0094 */  lw         $ra, 0x94($sp)
/* CFCD0 80119910 8FB20090 */  lw         $s2, 0x90($sp)
/* CFCD4 80119914 8FB1008C */  lw         $s1, 0x8C($sp)
/* CFCD8 80119918 8FB00088 */  lw         $s0, 0x88($sp)
/* CFCDC 8011991C 03E00008 */  jr         $ra
/* CFCE0 80119920 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_race_80119924
/* CFCE4 80119924 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CFCE8 80119928 AFB00010 */  sw         $s0, 0x10($sp)
/* CFCEC 8011992C AFBF0014 */  sw         $ra, 0x14($sp)
/* CFCF0 80119930 0C040E4A */  jal        func_race_80103928
/* CFCF4 80119934 00808021 */   addu      $s0, $a0, $zero
/* CFCF8 80119938 0C03518A */  jal        func_race_800D4628
/* CFCFC 8011993C 260400A8 */   addiu     $a0, $s0, 0xA8
/* CFD00 80119940 8FBF0014 */  lw         $ra, 0x14($sp)
/* CFD04 80119944 8FB00010 */  lw         $s0, 0x10($sp)
/* CFD08 80119948 03E00008 */  jr         $ra
/* CFD0C 8011994C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80119950
/* CFD10 80119950 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* CFD14 80119954 AFB00020 */  sw         $s0, 0x20($sp)
/* CFD18 80119958 00808021 */  addu       $s0, $a0, $zero
/* CFD1C 8011995C AFBF0024 */  sw         $ra, 0x24($sp)
/* CFD20 80119960 F7B40028 */  sdc1       $f20, 0x28($sp)
/* CFD24 80119964 8E02023C */  lw         $v0, 0x23C($s0)
/* CFD28 80119968 30420002 */  andi       $v0, $v0, 0x2
/* CFD2C 8011996C 10400005 */  beqz       $v0, .Lrace_80119984
/* CFD30 80119970 24020002 */   addiu     $v0, $zero, 0x2
/* CFD34 80119974 0C0466FA */  jal        func_race_80119BE8
/* CFD38 80119978 00000000 */   nop
/* CFD3C 8011997C 08046686 */  j          .Lrace_80119A18
/* CFD40 80119980 00000000 */   nop
.Lrace_80119984:
/* CFD44 80119984 8E030004 */  lw         $v1, 0x4($s0)
/* CFD48 80119988 14620005 */  bne        $v1, $v0, .Lrace_801199A0
/* CFD4C 8011998C 00000000 */   nop
/* CFD50 80119990 0C046769 */  jal        func_race_80119DA4
/* CFD54 80119994 02002021 */   addu      $a0, $s0, $zero
/* CFD58 80119998 08046686 */  j          .Lrace_80119A18
/* CFD5C 8011999C 00000000 */   nop
.Lrace_801199A0:
/* CFD60 801199A0 0C040E56 */  jal        func_race_80103958
/* CFD64 801199A4 02002021 */   addu      $a0, $s0, $zero
/* CFD68 801199A8 8E030004 */  lw         $v1, 0x4($s0)
/* CFD6C 801199AC 24020001 */  addiu      $v0, $zero, 0x1
/* CFD70 801199B0 54620019 */  bnel       $v1, $v0, .Lrace_80119A18
/* CFD74 801199B4 00601021 */   addu      $v0, $v1, $zero
/* CFD78 801199B8 C6140050 */  lwc1       $f20, 0x50($s0)
/* CFD7C 801199BC 4680A520 */  cvt.s.w    $f20, $f20
/* CFD80 801199C0 C6000054 */  lwc1       $f0, 0x54($s0)
/* CFD84 801199C4 46800020 */  cvt.s.w    $f0, $f0
/* CFD88 801199C8 3C01800D */  lui        $at, %hi(D_race_800CE08C)
/* CFD8C 801199CC C422E08C */  lwc1       $f2, %lo(D_race_800CE08C)($at)
/* CFD90 801199D0 4600A003 */  div.s      $f0, $f20, $f0
/* CFD94 801199D4 46001081 */  sub.s      $f2, $f2, $f0
/* CFD98 801199D8 C6000224 */  lwc1       $f0, 0x224($s0)
/* CFD9C 801199DC 46001082 */  mul.s      $f2, $f2, $f0
/* CFDA0 801199E0 8E030008 */  lw         $v1, 0x8($s0)
/* CFDA4 801199E4 E6020228 */  swc1       $f2, 0x228($s0)
/* CFDA8 801199E8 8C620024 */  lw         $v0, 0x24($v1)
/* CFDAC 801199EC 27A50010 */  addiu      $a1, $sp, 0x10
/* CFDB0 801199F0 84440010 */  lh         $a0, 0x10($v0)
/* CFDB4 801199F4 8C420014 */  lw         $v0, 0x14($v0)
/* CFDB8 801199F8 0040F809 */  jalr       $v0
/* CFDBC 801199FC 00642021 */   addu      $a0, $v1, $a0
/* CFDC0 80119A00 02002021 */  addu       $a0, $s0, $zero
/* CFDC4 80119A04 4406A000 */  mfc1       $a2, $f20
/* CFDC8 80119A08 8C870228 */  lw         $a3, 0x228($a0)
/* CFDCC 80119A0C 0C04668B */  jal        func_race_80119A2C
/* CFDD0 80119A10 27A50010 */   addiu     $a1, $sp, 0x10
/* CFDD4 80119A14 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_80119A18:
/* CFDD8 80119A18 8FBF0024 */  lw         $ra, 0x24($sp)
/* CFDDC 80119A1C 8FB00020 */  lw         $s0, 0x20($sp)
/* CFDE0 80119A20 D7B40028 */  ldc1       $f20, 0x28($sp)
/* CFDE4 80119A24 03E00008 */  jr         $ra
/* CFDE8 80119A28 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_80119A2C
/* CFDEC 80119A2C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* CFDF0 80119A30 AFB10044 */  sw         $s1, 0x44($sp)
/* CFDF4 80119A34 00808821 */  addu       $s1, $a0, $zero
/* CFDF8 80119A38 AFB20048 */  sw         $s2, 0x48($sp)
/* CFDFC 80119A3C 00A09021 */  addu       $s2, $a1, $zero
/* CFE00 80119A40 AFBF004C */  sw         $ra, 0x4C($sp)
/* CFE04 80119A44 AFB00040 */  sw         $s0, 0x40($sp)
/* CFE08 80119A48 F7BE0078 */  sdc1       $f30, 0x78($sp)
/* CFE0C 80119A4C F7BC0070 */  sdc1       $f28, 0x70($sp)
/* CFE10 80119A50 F7BA0068 */  sdc1       $f26, 0x68($sp)
/* CFE14 80119A54 F7B80060 */  sdc1       $f24, 0x60($sp)
/* CFE18 80119A58 F7B60058 */  sdc1       $f22, 0x58($sp)
/* CFE1C 80119A5C F7B40050 */  sdc1       $f20, 0x50($sp)
/* CFE20 80119A60 8E22009C */  lw         $v0, 0x9C($s1)
/* CFE24 80119A64 3C01800D */  lui        $at, %hi(D_race_800CE090)
/* CFE28 80119A68 C434E090 */  lwc1       $f20, %lo(D_race_800CE090)($at)
/* CFE2C 80119A6C 44864000 */  mtc1       $a2, $f8
/* CFE30 80119A70 8C42005C */  lw         $v0, 0x5C($v0)
/* CFE34 80119A74 4487C000 */  mtc1       $a3, $f24
/* CFE38 80119A78 8C430024 */  lw         $v1, 0x24($v0)
/* CFE3C 80119A7C 46144682 */  mul.s      $f26, $f8, $f20
/* CFE40 80119A80 84640010 */  lh         $a0, 0x10($v1)
/* CFE44 80119A84 3C01800D */  lui        $at, %hi(D_race_800CE094)
/* CFE48 80119A88 C420E094 */  lwc1       $f0, %lo(D_race_800CE094)($at)
/* CFE4C 80119A8C 00442021 */  addu       $a0, $v0, $a0
/* CFE50 80119A90 8C620014 */  lw         $v0, 0x14($v1)
/* CFE54 80119A94 4600D682 */  mul.s      $f26, $f26, $f0
/* CFE58 80119A98 0040F809 */  jalr       $v0
/* CFE5C 80119A9C 27A50020 */   addiu     $a1, $sp, 0x20
/* CFE60 80119AA0 C7A60028 */  lwc1       $f6, 0x28($sp)
/* CFE64 80119AA4 C6200220 */  lwc1       $f0, 0x220($s1)
/* CFE68 80119AA8 46003180 */  add.s      $f6, $f6, $f0
/* CFE6C 80119AAC C7A00020 */  lwc1       $f0, 0x20($sp)
/* CFE70 80119AB0 E7A60028 */  swc1       $f6, 0x28($sp)
/* CFE74 80119AB4 C6420000 */  lwc1       $f2, 0x0($s2)
/* CFE78 80119AB8 46001081 */  sub.s      $f2, $f2, $f0
/* CFE7C 80119ABC C7A00024 */  lwc1       $f0, 0x24($sp)
/* CFE80 80119AC0 E7A20030 */  swc1       $f2, 0x30($sp)
/* CFE84 80119AC4 C6440004 */  lwc1       $f4, 0x4($s2)
/* CFE88 80119AC8 46002101 */  sub.s      $f4, $f4, $f0
/* CFE8C 80119ACC 262400A8 */  addiu      $a0, $s1, 0xA8
/* CFE90 80119AD0 46141702 */  mul.s      $f28, $f2, $f20
/* CFE94 80119AD4 27A50020 */  addiu      $a1, $sp, 0x20
/* CFE98 80119AD8 E7A40034 */  swc1       $f4, 0x34($sp)
/* CFE9C 80119ADC C6400008 */  lwc1       $f0, 0x8($s2)
/* CFEA0 80119AE0 27A60030 */  addiu      $a2, $sp, 0x30
/* CFEA4 80119AE4 46060001 */  sub.s      $f0, $f0, $f6
/* CFEA8 80119AE8 4480B000 */  mtc1       $zero, $f22
/* CFEAC 80119AEC 3C01800D */  lui        $at, %hi(D_race_800CE098)
/* CFEB0 80119AF0 C43EE098 */  lwc1       $f30, %lo(D_race_800CE098)($at)
/* CFEB4 80119AF4 46142502 */  mul.s      $f20, $f4, $f20
/* CFEB8 80119AF8 0C0351AA */  jal        func_race_800D46A8
/* CFEBC 80119AFC E7A00038 */   swc1      $f0, 0x38($sp)
/* CFEC0 80119B00 C7A00020 */  lwc1       $f0, 0x20($sp)
/* CFEC4 80119B04 C7A20024 */  lwc1       $f2, 0x24($sp)
/* CFEC8 80119B08 00008021 */  addu       $s0, $zero, $zero
/* CFECC 80119B0C E7A00010 */  swc1       $f0, 0x10($sp)
/* CFED0 80119B10 E7A20014 */  swc1       $f2, 0x14($sp)
.Lrace_80119B14:
/* CFED4 80119B14 2E020004 */  sltiu      $v0, $s0, 0x4
/* CFED8 80119B18 10400019 */  beqz       $v0, .Lrace_80119B80
/* CFEDC 80119B1C 27A50010 */   addiu     $a1, $sp, 0x10
/* CFEE0 80119B20 461AB580 */  add.s      $f22, $f22, $f26
/* CFEE4 80119B24 C7A20010 */  lwc1       $f2, 0x10($sp)
/* CFEE8 80119B28 461C1080 */  add.s      $f2, $f2, $f28
/* CFEEC 80119B2C C7A00014 */  lwc1       $f0, 0x14($sp)
/* CFEF0 80119B30 46140000 */  add.s      $f0, $f0, $f20
/* CFEF4 80119B34 4616B182 */  mul.s      $f6, $f22, $f22
/* CFEF8 80119B38 E7A20010 */  swc1       $f2, 0x10($sp)
/* CFEFC 80119B3C E7A00014 */  swc1       $f0, 0x14($sp)
/* CFF00 80119B40 C622003C */  lwc1       $f2, 0x3C($s1)
/* CFF04 80119B44 46161082 */  mul.s      $f2, $f2, $f22
/* CFF08 80119B48 00000000 */  nop
/* CFF0C 80119B4C 461E3182 */  mul.s      $f6, $f6, $f30
/* CFF10 80119B50 C6240040 */  lwc1       $f4, 0x40($s1)
/* CFF14 80119B54 46062102 */  mul.s      $f4, $f4, $f6
/* CFF18 80119B58 C6200018 */  lwc1       $f0, 0x18($s1)
/* CFF1C 80119B5C 46020000 */  add.s      $f0, $f0, $f2
/* CFF20 80119B60 262400A8 */  addiu      $a0, $s1, 0xA8
/* CFF24 80119B64 46040000 */  add.s      $f0, $f0, $f4
/* CFF28 80119B68 4406C000 */  mfc1       $a2, $f24
/* CFF2C 80119B6C 26100001 */  addiu      $s0, $s0, 0x1
/* CFF30 80119B70 0C0354FB */  jal        func_race_800D53EC
/* CFF34 80119B74 E7A00018 */   swc1      $f0, 0x18($sp)
/* CFF38 80119B78 080466C5 */  j          .Lrace_80119B14
/* CFF3C 80119B7C 4600C607 */   neg.s     $f24, $f24
.Lrace_80119B80:
/* CFF40 80119B80 263000A8 */  addiu      $s0, $s1, 0xA8
/* CFF44 80119B84 02002021 */  addu       $a0, $s0, $zero
/* CFF48 80119B88 4406C000 */  mfc1       $a2, $f24
/* CFF4C 80119B8C 0C0354FB */  jal        func_race_800D53EC
/* CFF50 80119B90 02402821 */   addu      $a1, $s2, $zero
/* CFF54 80119B94 0C0352EF */  jal        func_race_800D4BBC
/* CFF58 80119B98 02002021 */   addu      $a0, $s0, $zero
/* CFF5C 80119B9C 8FBF004C */  lw         $ra, 0x4C($sp)
/* CFF60 80119BA0 8FB20048 */  lw         $s2, 0x48($sp)
/* CFF64 80119BA4 8FB10044 */  lw         $s1, 0x44($sp)
/* CFF68 80119BA8 8FB00040 */  lw         $s0, 0x40($sp)
/* CFF6C 80119BAC D7BE0078 */  ldc1       $f30, 0x78($sp)
/* CFF70 80119BB0 D7BC0070 */  ldc1       $f28, 0x70($sp)
/* CFF74 80119BB4 D7BA0068 */  ldc1       $f26, 0x68($sp)
/* CFF78 80119BB8 D7B80060 */  ldc1       $f24, 0x60($sp)
/* CFF7C 80119BBC D7B60058 */  ldc1       $f22, 0x58($sp)
/* CFF80 80119BC0 D7B40050 */  ldc1       $f20, 0x50($sp)
/* CFF84 80119BC4 03E00008 */  jr         $ra
/* CFF88 80119BC8 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_80119BCC
/* CFF8C 80119BCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CFF90 80119BD0 AFBF0010 */  sw         $ra, 0x10($sp)
/* CFF94 80119BD4 0C0354F0 */  jal        func_race_800D53C0
/* CFF98 80119BD8 248400A8 */   addiu     $a0, $a0, 0xA8
/* CFF9C 80119BDC 8FBF0010 */  lw         $ra, 0x10($sp)
/* CFFA0 80119BE0 03E00008 */  jr         $ra
/* CFFA4 80119BE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80119BE8
/* CFFA8 80119BE8 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* CFFAC 80119BEC AFB20050 */  sw         $s2, 0x50($sp)
/* CFFB0 80119BF0 00809021 */  addu       $s2, $a0, $zero
/* CFFB4 80119BF4 AFBF0054 */  sw         $ra, 0x54($sp)
/* CFFB8 80119BF8 AFB1004C */  sw         $s1, 0x4C($sp)
/* CFFBC 80119BFC AFB00048 */  sw         $s0, 0x48($sp)
/* CFFC0 80119C00 F7B40058 */  sdc1       $f20, 0x58($sp)
/* CFFC4 80119C04 8E42009C */  lw         $v0, 0x9C($s2)
/* CFFC8 80119C08 44851000 */  mtc1       $a1, $f2
/* CFFCC 80119C0C 468010A0 */  cvt.s.w    $f2, $f2
/* CFFD0 80119C10 8C42005C */  lw         $v0, 0x5C($v0)
/* CFFD4 80119C14 27B10018 */  addiu      $s1, $sp, 0x18
/* CFFD8 80119C18 8C430024 */  lw         $v1, 0x24($v0)
/* CFFDC 80119C1C 84640010 */  lh         $a0, 0x10($v1)
/* CFFE0 80119C20 3C01800D */  lui        $at, %hi(D_race_800CE09C)
/* CFFE4 80119C24 C420E09C */  lwc1       $f0, %lo(D_race_800CE09C)($at)
/* CFFE8 80119C28 00442021 */  addu       $a0, $v0, $a0
/* CFFEC 80119C2C 8C620014 */  lw         $v0, 0x14($v1)
/* CFFF0 80119C30 46001502 */  mul.s      $f20, $f2, $f0
/* CFFF4 80119C34 0040F809 */  jalr       $v0
/* CFFF8 80119C38 02202821 */   addu      $a1, $s1, $zero
/* CFFFC 80119C3C 02202021 */  addu       $a0, $s1, $zero
/* D0000 80119C40 26500230 */  addiu      $s0, $s2, 0x230
/* D0004 80119C44 C7A00020 */  lwc1       $f0, 0x20($sp)
/* D0008 80119C48 C6420220 */  lwc1       $f2, 0x220($s2)
/* D000C 80119C4C 3C064210 */  lui        $a2, (0x42100000 >> 16)
/* D0010 80119C50 46020000 */  add.s      $f0, $f0, $f2
/* D0014 80119C54 3C07437A */  lui        $a3, (0x437A0000 >> 16)
/* D0018 80119C58 02002821 */  addu       $a1, $s0, $zero
/* D001C 80119C5C E7A00020 */  swc1       $f0, 0x20($sp)
/* D0020 80119C60 0C001427 */  jal        func_8000509C
/* D0024 80119C64 E7B40010 */   swc1      $f20, 0x10($sp)
/* D0028 80119C68 10400003 */  beqz       $v0, .Lrace_80119C78
/* D002C 80119C6C 24020004 */   addiu     $v0, $zero, 0x4
/* D0030 80119C70 08046762 */  j          .Lrace_80119D88
/* D0034 80119C74 AE40023C */   sw        $zero, 0x23C($s2)
.Lrace_80119C78:
/* D0038 80119C78 C640022C */  lwc1       $f0, 0x22C($s2)
/* D003C 80119C7C 46140001 */  sub.s      $f0, $f0, $f20
/* D0040 80119C80 44801000 */  mtc1       $zero, $f2
/* D0044 80119C84 4602003C */  c.lt.s     $f0, $f2
/* D0048 80119C88 00000000 */  nop
/* D004C 80119C8C 45000002 */  bc1f       .Lrace_80119C98
/* D0050 80119C90 E640022C */   swc1      $f0, 0x22C($s2)
/* D0054 80119C94 E642022C */  swc1       $f2, 0x22C($s2)
.Lrace_80119C98:
/* D0058 80119C98 C6420230 */  lwc1       $f2, 0x230($s2)
/* D005C 80119C9C C7A00018 */  lwc1       $f0, 0x18($sp)
/* D0060 80119CA0 46001081 */  sub.s      $f2, $f2, $f0
/* D0064 80119CA4 3C01800D */  lui        $at, %hi(D_race_800CE0A0)
/* D0068 80119CA8 C424E0A0 */  lwc1       $f4, %lo(D_race_800CE0A0)($at)
/* D006C 80119CAC C648022C */  lwc1       $f8, 0x22C($s2)
/* D0070 80119CB0 46041282 */  mul.s      $f10, $f2, $f4
/* D0074 80119CB4 E7A20028 */  swc1       $f2, 0x28($sp)
/* D0078 80119CB8 C6000004 */  lwc1       $f0, 0x4($s0)
/* D007C 80119CBC C6220004 */  lwc1       $f2, 0x4($s1)
/* D0080 80119CC0 46020001 */  sub.s      $f0, $f0, $f2
/* D0084 80119CC4 46040182 */  mul.s      $f6, $f0, $f4
/* D0088 80119CC8 E7A0002C */  swc1       $f0, 0x2C($sp)
/* D008C 80119CCC C6020008 */  lwc1       $f2, 0x8($s0)
/* D0090 80119CD0 C6200008 */  lwc1       $f0, 0x8($s1)
/* D0094 80119CD4 264400A8 */  addiu      $a0, $s2, 0xA8
/* D0098 80119CD8 46001081 */  sub.s      $f2, $f2, $f0
/* D009C 80119CDC 02202821 */  addu       $a1, $s1, $zero
/* D00A0 80119CE0 27A60028 */  addiu      $a2, $sp, 0x28
/* D00A4 80119CE4 46041102 */  mul.s      $f4, $f2, $f4
/* D00A8 80119CE8 00008821 */  addu       $s1, $zero, $zero
/* D00AC 80119CEC 3C01800D */  lui        $at, %hi(D_race_800CE0A4)
/* D00B0 80119CF0 C420E0A4 */  lwc1       $f0, %lo(D_race_800CE0A4)($at)
/* D00B4 80119CF4 00A08021 */  addu       $s0, $a1, $zero
/* D00B8 80119CF8 E7AA0038 */  swc1       $f10, 0x38($sp)
/* D00BC 80119CFC 46004502 */  mul.s      $f20, $f8, $f0
/* D00C0 80119D00 E7A20030 */  swc1       $f2, 0x30($sp)
/* D00C4 80119D04 E7A6003C */  swc1       $f6, 0x3C($sp)
/* D00C8 80119D08 0C0351AA */  jal        func_race_800D46A8
/* D00CC 80119D0C E7A40040 */   swc1      $f4, 0x40($sp)
/* D00D0 80119D10 2E220004 */  sltiu      $v0, $s1, 0x4
.Lrace_80119D14:
/* D00D4 80119D14 10400014 */  beqz       $v0, .Lrace_80119D68
/* D00D8 80119D18 02002821 */   addu      $a1, $s0, $zero
/* D00DC 80119D1C 264400A8 */  addiu      $a0, $s2, 0xA8
/* D00E0 80119D20 26310001 */  addiu      $s1, $s1, 0x1
/* D00E4 80119D24 C7A60018 */  lwc1       $f6, 0x18($sp)
/* D00E8 80119D28 C7A00038 */  lwc1       $f0, 0x38($sp)
/* D00EC 80119D2C C6040004 */  lwc1       $f4, 0x4($s0)
/* D00F0 80119D30 46003180 */  add.s      $f6, $f6, $f0
/* D00F4 80119D34 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* D00F8 80119D38 4406A000 */  mfc1       $a2, $f20
/* D00FC 80119D3C 46002100 */  add.s      $f4, $f4, $f0
/* D0100 80119D40 C7A20040 */  lwc1       $f2, 0x40($sp)
/* D0104 80119D44 C6000008 */  lwc1       $f0, 0x8($s0)
/* D0108 80119D48 4600A507 */  neg.s      $f20, $f20
/* D010C 80119D4C 46020000 */  add.s      $f0, $f0, $f2
/* D0110 80119D50 E7A60018 */  swc1       $f6, 0x18($sp)
/* D0114 80119D54 E6040004 */  swc1       $f4, 0x4($s0)
/* D0118 80119D58 0C0354FB */  jal        func_race_800D53EC
/* D011C 80119D5C E6000008 */   swc1      $f0, 0x8($s0)
/* D0120 80119D60 08046745 */  j          .Lrace_80119D14
/* D0124 80119D64 2E220004 */   sltiu     $v0, $s1, 0x4
.Lrace_80119D68:
/* D0128 80119D68 265000A8 */  addiu      $s0, $s2, 0xA8
/* D012C 80119D6C 02002021 */  addu       $a0, $s0, $zero
/* D0130 80119D70 4406A000 */  mfc1       $a2, $f20
/* D0134 80119D74 0C0354FB */  jal        func_race_800D53EC
/* D0138 80119D78 26450230 */   addiu     $a1, $s2, 0x230
/* D013C 80119D7C 0C0352EF */  jal        func_race_800D4BBC
/* D0140 80119D80 02002021 */   addu      $a0, $s0, $zero
/* D0144 80119D84 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_80119D88:
/* D0148 80119D88 8FBF0054 */  lw         $ra, 0x54($sp)
/* D014C 80119D8C 8FB20050 */  lw         $s2, 0x50($sp)
/* D0150 80119D90 8FB1004C */  lw         $s1, 0x4C($sp)
/* D0154 80119D94 8FB00048 */  lw         $s0, 0x48($sp)
/* D0158 80119D98 D7B40058 */  ldc1       $f20, 0x58($sp)
/* D015C 80119D9C 03E00008 */  jr         $ra
/* D0160 80119DA0 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_race_80119DA4
/* D0164 80119DA4 27BDFF18 */  addiu      $sp, $sp, -0xE8
/* D0168 80119DA8 AFB000B0 */  sw         $s0, 0xB0($sp)
/* D016C 80119DAC 00808021 */  addu       $s0, $a0, $zero
/* D0170 80119DB0 44851000 */  mtc1       $a1, $f2
/* D0174 80119DB4 468010A0 */  cvt.s.w    $f2, $f2
/* D0178 80119DB8 AFB200B8 */  sw         $s2, 0xB8($sp)
/* D017C 80119DBC 27B20018 */  addiu      $s2, $sp, 0x18
/* D0180 80119DC0 AFBF00BC */  sw         $ra, 0xBC($sp)
/* D0184 80119DC4 AFB100B4 */  sw         $s1, 0xB4($sp)
/* D0188 80119DC8 F7BC00E0 */  sdc1       $f28, 0xE0($sp)
/* D018C 80119DCC F7BA00D8 */  sdc1       $f26, 0xD8($sp)
/* D0190 80119DD0 F7B800D0 */  sdc1       $f24, 0xD0($sp)
/* D0194 80119DD4 F7B600C8 */  sdc1       $f22, 0xC8($sp)
/* D0198 80119DD8 F7B400C0 */  sdc1       $f20, 0xC0($sp)
/* D019C 80119DDC 8E0200A4 */  lw         $v0, 0xA4($s0)
/* D01A0 80119DE0 02402821 */  addu       $a1, $s2, $zero
/* D01A4 80119DE4 8C43005C */  lw         $v1, 0x5C($v0)
/* D01A8 80119DE8 3C01800D */  lui        $at, %hi(D_race_800CE0A8)
/* D01AC 80119DEC C420E0A8 */  lwc1       $f0, %lo(D_race_800CE0A8)($at)
/* D01B0 80119DF0 8C620024 */  lw         $v0, 0x24($v1)
/* D01B4 80119DF4 46001582 */  mul.s      $f22, $f2, $f0
/* D01B8 80119DF8 84440010 */  lh         $a0, 0x10($v0)
/* D01BC 80119DFC 8C420014 */  lw         $v0, 0x14($v0)
/* D01C0 80119E00 0040F809 */  jalr       $v0
/* D01C4 80119E04 00642021 */   addu      $a0, $v1, $a0
/* D01C8 80119E08 C7A00020 */  lwc1       $f0, 0x20($sp)
/* D01CC 80119E0C 3C01800D */  lui        $at, %hi(D_race_800CE0AC)
/* D01D0 80119E10 C434E0AC */  lwc1       $f20, %lo(D_race_800CE0AC)($at)
/* D01D4 80119E14 46140000 */  add.s      $f0, $f0, $f20
/* D01D8 80119E18 E7A00020 */  swc1       $f0, 0x20($sp)
/* D01DC 80119E1C 8E030008 */  lw         $v1, 0x8($s0)
/* D01E0 80119E20 27B10028 */  addiu      $s1, $sp, 0x28
/* D01E4 80119E24 8C620024 */  lw         $v0, 0x24($v1)
/* D01E8 80119E28 02202821 */  addu       $a1, $s1, $zero
/* D01EC 80119E2C 84440010 */  lh         $a0, 0x10($v0)
/* D01F0 80119E30 8C420014 */  lw         $v0, 0x14($v0)
/* D01F4 80119E34 0040F809 */  jalr       $v0
/* D01F8 80119E38 00642021 */   addu      $a0, $v1, $a0
/* D01FC 80119E3C 8E02023C */  lw         $v0, 0x23C($s0)
/* D0200 80119E40 30420001 */  andi       $v0, $v0, 0x1
/* D0204 80119E44 1440000F */  bnez       $v0, .Lrace_80119E84
/* D0208 80119E48 02202821 */   addu      $a1, $s1, $zero
/* D020C 80119E4C 02402021 */  addu       $a0, $s2, $zero
/* D0210 80119E50 4406A000 */  mfc1       $a2, $f20
/* D0214 80119E54 3C074396 */  lui        $a3, (0x43960000 >> 16)
/* D0218 80119E58 0C001427 */  jal        func_8000509C
/* D021C 80119E5C E7B60010 */   swc1      $f22, 0x10($sp)
/* D0220 80119E60 10400004 */  beqz       $v0, .Lrace_80119E74
/* D0224 80119E64 00000000 */   nop
/* D0228 80119E68 8E02023C */  lw         $v0, 0x23C($s0)
/* D022C 80119E6C 34420001 */  ori        $v0, $v0, 0x1
/* D0230 80119E70 AE02023C */  sw         $v0, 0x23C($s0)
.Lrace_80119E74:
/* D0234 80119E74 8E02023C */  lw         $v0, 0x23C($s0)
/* D0238 80119E78 30420001 */  andi       $v0, $v0, 0x1
/* D023C 80119E7C 10400007 */  beqz       $v0, .Lrace_80119E9C
/* D0240 80119E80 00000000 */   nop
.Lrace_80119E84:
/* D0244 80119E84 8FA80018 */  lw         $t0, 0x18($sp)
/* D0248 80119E88 8FA9001C */  lw         $t1, 0x1C($sp)
/* D024C 80119E8C 8FAA0020 */  lw         $t2, 0x20($sp)
/* D0250 80119E90 AFA80028 */  sw         $t0, 0x28($sp)
/* D0254 80119E94 AFA9002C */  sw         $t1, 0x2C($sp)
/* D0258 80119E98 AFAA0030 */  sw         $t2, 0x30($sp)
.Lrace_80119E9C:
/* D025C 80119E9C 8E030008 */  lw         $v1, 0x8($s0)
/* D0260 80119EA0 27B10028 */  addiu      $s1, $sp, 0x28
/* D0264 80119EA4 8C620024 */  lw         $v0, 0x24($v1)
/* D0268 80119EA8 02202821 */  addu       $a1, $s1, $zero
/* D026C 80119EAC 84440018 */  lh         $a0, 0x18($v0)
/* D0270 80119EB0 8C42001C */  lw         $v0, 0x1C($v0)
/* D0274 80119EB4 0040F809 */  jalr       $v0
/* D0278 80119EB8 00642021 */   addu      $a0, $v1, $a0
/* D027C 80119EBC 8E02009C */  lw         $v0, 0x9C($s0)
/* D0280 80119EC0 8C43005C */  lw         $v1, 0x5C($v0)
/* D0284 80119EC4 8C620024 */  lw         $v0, 0x24($v1)
/* D0288 80119EC8 27A50038 */  addiu      $a1, $sp, 0x38
/* D028C 80119ECC 84440010 */  lh         $a0, 0x10($v0)
/* D0290 80119ED0 8C420014 */  lw         $v0, 0x14($v0)
/* D0294 80119ED4 0040F809 */  jalr       $v0
/* D0298 80119ED8 00642021 */   addu      $a0, $v1, $a0
/* D029C 80119EDC C7A40040 */  lwc1       $f4, 0x40($sp)
/* D02A0 80119EE0 C6000220 */  lwc1       $f0, 0x220($s0)
/* D02A4 80119EE4 C7A60028 */  lwc1       $f6, 0x28($sp)
/* D02A8 80119EE8 46002100 */  add.s      $f4, $f4, $f0
/* D02AC 80119EEC C7A00038 */  lwc1       $f0, 0x38($sp)
/* D02B0 80119EF0 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* D02B4 80119EF4 46003181 */  sub.s      $f6, $f6, $f0
/* D02B8 80119EF8 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* D02BC 80119EFC 46001081 */  sub.s      $f2, $f2, $f0
/* D02C0 80119F00 C7A00030 */  lwc1       $f0, 0x30($sp)
/* D02C4 80119F04 E7A40040 */  swc1       $f4, 0x40($sp)
/* D02C8 80119F08 46040001 */  sub.s      $f0, $f0, $f4
/* D02CC 80119F0C E7A60058 */  swc1       $f6, 0x58($sp)
/* D02D0 80119F10 E7A2005C */  swc1       $f2, 0x5C($sp)
/* D02D4 80119F14 E7A00060 */  swc1       $f0, 0x60($sp)
/* D02D8 80119F18 C600022C */  lwc1       $f0, 0x22C($s0)
/* D02DC 80119F1C 46160000 */  add.s      $f0, $f0, $f22
/* D02E0 80119F20 3C01800D */  lui        $at, %hi(D_race_800CE0B0)
/* D02E4 80119F24 C422E0B0 */  lwc1       $f2, %lo(D_race_800CE0B0)($at)
/* D02E8 80119F28 4600103E */  c.le.s     $f2, $f0
/* D02EC 80119F2C 00000000 */  nop
/* D02F0 80119F30 45000012 */  bc1f       .Lrace_80119F7C
/* D02F4 80119F34 E600022C */   swc1      $f0, 0x22C($s0)
/* D02F8 80119F38 27A50038 */  addiu      $a1, $sp, 0x38
/* D02FC 80119F3C 02203021 */  addu       $a2, $s1, $zero
/* D0300 80119F40 26020028 */  addiu      $v0, $s0, 0x28
/* D0304 80119F44 E602022C */  swc1       $f2, 0x22C($s0)
/* D0308 80119F48 AFA20010 */  sw         $v0, 0x10($sp)
/* D030C 80119F4C 8E04000C */  lw         $a0, 0xC($s0)
/* D0310 80119F50 0C03CAED */  jal        func_race_800F2BB4
/* D0314 80119F54 27A70078 */   addiu     $a3, $sp, 0x78
/* D0318 80119F58 10400008 */  beqz       $v0, .Lrace_80119F7C
/* D031C 80119F5C 24020003 */   addiu     $v0, $zero, 0x3
/* D0320 80119F60 C7A0009C */  lwc1       $f0, 0x9C($sp)
/* D0324 80119F64 E600005C */  swc1       $f0, 0x5C($s0)
/* D0328 80119F68 C7A000A0 */  lwc1       $f0, 0xA0($sp)
/* D032C 80119F6C E6000060 */  swc1       $f0, 0x60($s0)
/* D0330 80119F70 C7A000A4 */  lwc1       $f0, 0xA4($sp)
/* D0334 80119F74 0804682A */  j          .Lrace_8011A0A8
/* D0338 80119F78 E6000064 */   swc1      $f0, 0x64($s0)
.Lrace_80119F7C:
/* D033C 80119F7C 3C01800D */  lui        $at, %hi(D_race_800CE0B4)
/* D0340 80119F80 C426E0B4 */  lwc1       $f6, %lo(D_race_800CE0B4)($at)
/* D0344 80119F84 C6000054 */  lwc1       $f0, 0x54($s0)
/* D0348 80119F88 46800020 */  cvt.s.w    $f0, $f0
/* D034C 80119F8C 46060602 */  mul.s      $f24, $f0, $f6
/* D0350 80119F90 C7A40058 */  lwc1       $f4, 0x58($sp)
/* D0354 80119F94 46062102 */  mul.s      $f4, $f4, $f6
/* D0358 80119F98 C7A2005C */  lwc1       $f2, 0x5C($sp)
/* D035C 80119F9C 46061082 */  mul.s      $f2, $f2, $f6
/* D0360 80119FA0 260400A8 */  addiu      $a0, $s0, 0xA8
/* D0364 80119FA4 3C01800D */  lui        $at, %hi(D_race_800CE0B8)
/* D0368 80119FA8 C420E0B8 */  lwc1       $f0, %lo(D_race_800CE0B8)($at)
/* D036C 80119FAC 27A50038 */  addiu      $a1, $sp, 0x38
/* D0370 80119FB0 4600C602 */  mul.s      $f24, $f24, $f0
/* D0374 80119FB4 4480B000 */  mtc1       $zero, $f22
/* D0378 80119FB8 3C01800D */  lui        $at, %hi(D_race_800CE0BC)
/* D037C 80119FBC C43CE0BC */  lwc1       $f28, %lo(D_race_800CE0BC)($at)
/* D0380 80119FC0 C7A00060 */  lwc1       $f0, 0x60($sp)
/* D0384 80119FC4 C608022C */  lwc1       $f8, 0x22C($s0)
/* D0388 80119FC8 46060002 */  mul.s      $f0, $f0, $f6
/* D038C 80119FCC 3C01800D */  lui        $at, %hi(D_race_800CE0C0)
/* D0390 80119FD0 C426E0C0 */  lwc1       $f6, %lo(D_race_800CE0C0)($at)
/* D0394 80119FD4 27A60058 */  addiu      $a2, $sp, 0x58
/* D0398 80119FD8 E7A40068 */  swc1       $f4, 0x68($sp)
/* D039C 80119FDC E7A2006C */  swc1       $f2, 0x6C($sp)
/* D03A0 80119FE0 46083681 */  sub.s      $f26, $f6, $f8
/* D03A4 80119FE4 0C0351AA */  jal        func_race_800D46A8
/* D03A8 80119FE8 E7A00070 */   swc1      $f0, 0x70($sp)
/* D03AC 80119FEC C7B40040 */  lwc1       $f20, 0x40($sp)
/* D03B0 80119FF0 C7A00038 */  lwc1       $f0, 0x38($sp)
/* D03B4 80119FF4 C7A2003C */  lwc1       $f2, 0x3C($sp)
/* D03B8 80119FF8 00008821 */  addu       $s1, $zero, $zero
/* D03BC 80119FFC E7A00048 */  swc1       $f0, 0x48($sp)
/* D03C0 8011A000 E7A2004C */  swc1       $f2, 0x4C($sp)
.Lrace_8011A004:
/* D03C4 8011A004 C7A40048 */  lwc1       $f4, 0x48($sp)
/* D03C8 8011A008 4618B580 */  add.s      $f22, $f22, $f24
/* D03CC 8011A00C C7A00068 */  lwc1       $f0, 0x68($sp)
/* D03D0 8011A010 C7A2004C */  lwc1       $f2, 0x4C($sp)
/* D03D4 8011A014 46002100 */  add.s      $f4, $f4, $f0
/* D03D8 8011A018 C7A0006C */  lwc1       $f0, 0x6C($sp)
/* D03DC 8011A01C 46001080 */  add.s      $f2, $f2, $f0
/* D03E0 8011A020 4616B002 */  mul.s      $f0, $f22, $f22
/* D03E4 8011A024 E7A40048 */  swc1       $f4, 0x48($sp)
/* D03E8 8011A028 E7A2004C */  swc1       $f2, 0x4C($sp)
/* D03EC 8011A02C C606003C */  lwc1       $f6, 0x3C($s0)
/* D03F0 8011A030 46163182 */  mul.s      $f6, $f6, $f22
/* D03F4 8011A034 00000000 */  nop
/* D03F8 8011A038 461C0002 */  mul.s      $f0, $f0, $f28
/* D03FC 8011A03C C6040040 */  lwc1       $f4, 0x40($s0)
/* D0400 8011A040 46002102 */  mul.s      $f4, $f4, $f0
/* D0404 8011A044 C7A00070 */  lwc1       $f0, 0x70($sp)
/* D0408 8011A048 4600A500 */  add.s      $f20, $f20, $f0
/* D040C 8011A04C C602022C */  lwc1       $f2, 0x22C($s0)
/* D0410 8011A050 46141082 */  mul.s      $f2, $f2, $f20
/* D0414 8011A054 C6000018 */  lwc1       $f0, 0x18($s0)
/* D0418 8011A058 46060000 */  add.s      $f0, $f0, $f6
/* D041C 8011A05C 46040180 */  add.s      $f6, $f0, $f4
/* D0420 8011A060 4606D002 */  mul.s      $f0, $f26, $f6
/* D0424 8011A064 260400A8 */  addiu      $a0, $s0, 0xA8
/* D0428 8011A068 27A50048 */  addiu      $a1, $sp, 0x48
/* D042C 8011A06C 46001080 */  add.s      $f2, $f2, $f0
/* D0430 8011A070 00003021 */  addu       $a2, $zero, $zero
/* D0434 8011A074 26310001 */  addiu      $s1, $s1, 0x1
/* D0438 8011A078 0C0354FB */  jal        func_race_800D53EC
/* D043C 8011A07C E7A20050 */   swc1      $f2, 0x50($sp)
/* D0440 8011A080 2E220004 */  sltiu      $v0, $s1, 0x4
/* D0444 8011A084 1440FFDF */  bnez       $v0, .Lrace_8011A004
/* D0448 8011A088 27A50028 */   addiu     $a1, $sp, 0x28
/* D044C 8011A08C 261000A8 */  addiu      $s0, $s0, 0xA8
/* D0450 8011A090 02002021 */  addu       $a0, $s0, $zero
/* D0454 8011A094 0C0354FB */  jal        func_race_800D53EC
/* D0458 8011A098 00003021 */   addu      $a2, $zero, $zero
/* D045C 8011A09C 0C0352EF */  jal        func_race_800D4BBC
/* D0460 8011A0A0 02002021 */   addu      $a0, $s0, $zero
/* D0464 8011A0A4 24020002 */  addiu      $v0, $zero, 0x2
.Lrace_8011A0A8:
/* D0468 8011A0A8 8FBF00BC */  lw         $ra, 0xBC($sp)
/* D046C 8011A0AC 8FB200B8 */  lw         $s2, 0xB8($sp)
/* D0470 8011A0B0 8FB100B4 */  lw         $s1, 0xB4($sp)
/* D0474 8011A0B4 8FB000B0 */  lw         $s0, 0xB0($sp)
/* D0478 8011A0B8 D7BC00E0 */  ldc1       $f28, 0xE0($sp)
/* D047C 8011A0BC D7BA00D8 */  ldc1       $f26, 0xD8($sp)
/* D0480 8011A0C0 D7B800D0 */  ldc1       $f24, 0xD0($sp)
/* D0484 8011A0C4 D7B600C8 */  ldc1       $f22, 0xC8($sp)
/* D0488 8011A0C8 D7B400C0 */  ldc1       $f20, 0xC0($sp)
/* D048C 8011A0CC 03E00008 */  jr         $ra
/* D0490 8011A0D0 27BD00E8 */   addiu     $sp, $sp, 0xE8

glabel func_race_8011A0D4
/* D0494 8011A0D4 C4A00000 */  lwc1       $f0, 0x0($a1)
/* D0498 8011A0D8 8C8200A4 */  lw         $v0, 0xA4($a0)
/* D049C 8011A0DC E4800230 */  swc1       $f0, 0x230($a0)
/* D04A0 8011A0E0 C4A00004 */  lwc1       $f0, 0x4($a1)
/* D04A4 8011A0E4 E4800234 */  swc1       $f0, 0x234($a0)
/* D04A8 8011A0E8 C4A00008 */  lwc1       $f0, 0x8($a1)
/* D04AC 8011A0EC 14400006 */  bnez       $v0, .Lrace_8011A108
/* D04B0 8011A0F0 E4800238 */   swc1      $f0, 0x238($a0)
/* D04B4 8011A0F4 C4800228 */  lwc1       $f0, 0x228($a0)
/* D04B8 8011A0F8 3C01800D */  lui        $at, %hi(D_race_800CE0C4)
/* D04BC 8011A0FC C422E0C4 */  lwc1       $f2, %lo(D_race_800CE0C4)($at)
/* D04C0 8011A100 46020003 */  div.s      $f0, $f0, $f2
/* D04C4 8011A104 E480022C */  swc1       $f0, 0x22C($a0)
.Lrace_8011A108:
/* D04C8 8011A108 8C82023C */  lw         $v0, 0x23C($a0)
/* D04CC 8011A10C 34420002 */  ori        $v0, $v0, 0x2
/* D04D0 8011A110 03E00008 */  jr         $ra
/* D04D4 8011A114 AC82023C */   sw        $v0, 0x23C($a0)

glabel func_race_8011A118
/* D04D8 8011A118 8C82023C */  lw         $v0, 0x23C($a0)
/* D04DC 8011A11C 03E00008 */  jr         $ra
/* D04E0 8011A120 30420001 */   andi      $v0, $v0, 0x1

glabel func_race_8011A124
/* D04E4 8011A124 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D04E8 8011A128 AFBF0010 */  sw         $ra, 0x10($sp)
/* D04EC 8011A12C 0C040E4A */  jal        func_race_80103928
/* D04F0 8011A130 00000000 */   nop
/* D04F4 8011A134 8FBF0010 */  lw         $ra, 0x10($sp)
/* D04F8 8011A138 03E00008 */  jr         $ra
/* D04FC 8011A13C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011A140
/* D0500 8011A140 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0504 8011A144 AFB00010 */  sw         $s0, 0x10($sp)
/* D0508 8011A148 AFBF0014 */  sw         $ra, 0x14($sp)
/* D050C 8011A14C 0C040D1A */  jal        func_race_80103468
/* D0510 8011A150 00808021 */   addu      $s0, $a0, $zero
/* D0514 8011A154 AE00022C */  sw         $zero, 0x22C($s0)
/* D0518 8011A158 AE00023C */  sw         $zero, 0x23C($s0)
/* D051C 8011A15C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0520 8011A160 8FB00010 */  lw         $s0, 0x10($sp)
/* D0524 8011A164 03E00008 */  jr         $ra
/* D0528 8011A168 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011A16C
/* D052C 8011A16C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D0530 8011A170 AFB00018 */  sw         $s0, 0x18($sp)
/* D0534 8011A174 00808021 */  addu       $s0, $a0, $zero
/* D0538 8011A178 24020001 */  addiu      $v0, $zero, 0x1
/* D053C 8011A17C 8FA30030 */  lw         $v1, 0x30($sp)
/* D0540 8011A180 AFBF001C */  sw         $ra, 0x1C($sp)
/* D0544 8011A184 AFA20014 */  sw         $v0, 0x14($sp)
/* D0548 8011A188 0C040C6A */  jal        func_race_801031A8
/* D054C 8011A18C AFA30010 */   sw        $v1, 0x10($sp)
/* D0550 8011A190 AE00022C */  sw         $zero, 0x22C($s0)
/* D0554 8011A194 AE00023C */  sw         $zero, 0x23C($s0)
/* D0558 8011A198 8FBF001C */  lw         $ra, 0x1C($sp)
/* D055C 8011A19C 8FB00018 */  lw         $s0, 0x18($sp)
/* D0560 8011A1A0 03E00008 */  jr         $ra
/* D0564 8011A1A4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011A1A8
/* D0568 8011A1A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D056C 8011A1AC AFB00018 */  sw         $s0, 0x18($sp)
/* D0570 8011A1B0 00808021 */  addu       $s0, $a0, $zero
/* D0574 8011A1B4 24020001 */  addiu      $v0, $zero, 0x1
/* D0578 8011A1B8 AFBF001C */  sw         $ra, 0x1C($sp)
/* D057C 8011A1BC AFA20010 */  sw         $v0, 0x10($sp)
/* D0580 8011A1C0 0C040B68 */  jal        func_race_80102DA0
/* D0584 8011A1C4 AFA00014 */   sw        $zero, 0x14($sp)
/* D0588 8011A1C8 AE00022C */  sw         $zero, 0x22C($s0)
/* D058C 8011A1CC AE00023C */  sw         $zero, 0x23C($s0)
/* D0590 8011A1D0 8FBF001C */  lw         $ra, 0x1C($sp)
/* D0594 8011A1D4 8FB00018 */  lw         $s0, 0x18($sp)
/* D0598 8011A1D8 03E00008 */  jr         $ra
/* D059C 8011A1DC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011A1E0
/* D05A0 8011A1E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D05A4 8011A1E4 AFB00010 */  sw         $s0, 0x10($sp)
/* D05A8 8011A1E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D05AC 8011A1EC 0C046882 */  jal        func_race_8011A208
/* D05B0 8011A1F0 00808021 */   addu      $s0, $a0, $zero
/* D05B4 8011A1F4 02001021 */  addu       $v0, $s0, $zero
/* D05B8 8011A1F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* D05BC 8011A1FC 8FB00010 */  lw         $s0, 0x10($sp)
/* D05C0 8011A200 03E00008 */  jr         $ra
/* D05C4 8011A204 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011A208
/* D05C8 8011A208 A0800000 */  sb         $zero, 0x0($a0)
/* D05CC 8011A20C AC800008 */  sw         $zero, 0x8($a0)
/* D05D0 8011A210 AC80000C */  sw         $zero, 0xC($a0)
/* D05D4 8011A214 AC800010 */  sw         $zero, 0x10($a0)
/* D05D8 8011A218 AC800014 */  sw         $zero, 0x14($a0)
/* D05DC 8011A21C AC800018 */  sw         $zero, 0x18($a0)
/* D05E0 8011A220 AC80001C */  sw         $zero, 0x1C($a0)
/* D05E4 8011A224 AC800020 */  sw         $zero, 0x20($a0)
/* D05E8 8011A228 AC800024 */  sw         $zero, 0x24($a0)
/* D05EC 8011A22C AC800028 */  sw         $zero, 0x28($a0)
/* D05F0 8011A230 AC80002C */  sw         $zero, 0x2C($a0)
/* D05F4 8011A234 AC800030 */  sw         $zero, 0x30($a0)
/* D05F8 8011A238 AC800034 */  sw         $zero, 0x34($a0)
/* D05FC 8011A23C AC800038 */  sw         $zero, 0x38($a0)
/* D0600 8011A240 AC80003C */  sw         $zero, 0x3C($a0)
/* D0604 8011A244 A0800040 */  sb         $zero, 0x40($a0)
/* D0608 8011A248 AC800048 */  sw         $zero, 0x48($a0)
/* D060C 8011A24C AC80004C */  sw         $zero, 0x4C($a0)
/* D0610 8011A250 AC800050 */  sw         $zero, 0x50($a0)
/* D0614 8011A254 AC800054 */  sw         $zero, 0x54($a0)
/* D0618 8011A258 03E00008 */  jr         $ra
/* D061C 8011A25C AC800058 */   sw        $zero, 0x58($a0)

glabel func_race_8011A260
/* D0620 8011A260 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D0624 8011A264 AFB00010 */  sw         $s0, 0x10($sp)
/* D0628 8011A268 00808021 */  addu       $s0, $a0, $zero
/* D062C 8011A26C AFB10014 */  sw         $s1, 0x14($sp)
/* D0630 8011A270 00A08821 */  addu       $s1, $a1, $zero
/* D0634 8011A274 AFBF0020 */  sw         $ra, 0x20($sp)
/* D0638 8011A278 AFB3001C */  sw         $s3, 0x1C($sp)
/* D063C 8011A27C AFB20018 */  sw         $s2, 0x18($sp)
/* D0640 8011A280 8E020008 */  lw         $v0, 0x8($s0)
/* D0644 8011A284 30420001 */  andi       $v0, $v0, 0x1
/* D0648 8011A288 10400003 */  beqz       $v0, .Lrace_8011A298
/* D064C 8011A28C 00C09021 */   addu      $s2, $a2, $zero
/* D0650 8011A290 0C04696F */  jal        func_race_8011A5BC
/* D0654 8011A294 00000000 */   nop
.Lrace_8011A298:
/* D0658 8011A298 02202021 */  addu       $a0, $s1, $zero
/* D065C 8011A29C 0C0026F4 */  jal        func_80009BD0
/* D0660 8011A2A0 24050027 */   addiu     $a1, $zero, 0x27
/* D0664 8011A2A4 8E220028 */  lw         $v0, 0x28($s1)
/* D0668 8011A2A8 844400A0 */  lh         $a0, 0xA0($v0)
/* D066C 8011A2AC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* D0670 8011A2B0 0040F809 */  jalr       $v0
/* D0674 8011A2B4 02242021 */   addu      $a0, $s1, $a0
/* D0678 8011A2B8 02202021 */  addu       $a0, $s1, $zero
/* D067C 8011A2BC 8A270044 */  lwl        $a3, 0x44($s1)
/* D0680 8011A2C0 9A270047 */  lwr        $a3, 0x47($s1)
/* D0684 8011A2C4 8A280048 */  lwl        $t0, 0x48($s1)
/* D0688 8011A2C8 9A28004B */  lwr        $t0, 0x4B($s1)
/* D068C 8011A2CC AA070000 */  swl        $a3, 0x0($s0)
/* D0690 8011A2D0 BA070003 */  swr        $a3, 0x3($s0)
/* D0694 8011A2D4 AA080004 */  swl        $t0, 0x4($s0)
/* D0698 8011A2D8 BA080007 */  swr        $t0, 0x7($s0)
/* D069C 8011A2DC 0C0026F4 */  jal        func_80009BD0
/* D06A0 8011A2E0 24050005 */   addiu     $a1, $zero, 0x5
/* D06A4 8011A2E4 3C02800D */  lui        $v0, %hi(jtbl_race_800CE120)
/* D06A8 8011A2E8 2453E120 */  addiu      $s3, $v0, %lo(jtbl_race_800CE120)
.Lrace_8011A2EC:
/* D06AC 8011A2EC 8E220028 */  lw         $v0, 0x28($s1)
/* D06B0 8011A2F0 844400A0 */  lh         $a0, 0xA0($v0)
/* D06B4 8011A2F4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* D06B8 8011A2F8 0040F809 */  jalr       $v0
/* D06BC 8011A2FC 02242021 */   addu      $a0, $s1, $a0
/* D06C0 8011A300 00401821 */  addu       $v1, $v0, $zero
/* D06C4 8011A304 24020006 */  addiu      $v0, $zero, 0x6
/* D06C8 8011A308 106200A2 */  beq        $v1, $v0, .Lrace_8011A594
/* D06CC 8011A30C 2463FFD8 */   addiu     $v1, $v1, -0x28
/* D06D0 8011A310 2C620012 */  sltiu      $v0, $v1, 0x12
/* D06D4 8011A314 10400097 */  beqz       $v0, .Lrace_8011A574
/* D06D8 8011A318 00031080 */   sll       $v0, $v1, 2
/* D06DC 8011A31C 00531021 */  addu       $v0, $v0, $s3
/* D06E0 8011A320 8C420000 */  lw         $v0, 0x0($v0)
/* D06E4 8011A324 00400008 */  jr         $v0
/* D06E8 8011A328 00000000 */   nop
glabel Lrace_8011A32C
/* D06EC 8011A32C 0C002680 */  jal        func_80009A00
/* D06F0 8011A330 02202021 */   addu      $a0, $s1, $zero
/* D06F4 8011A334 8E030008 */  lw         $v1, 0x8($s0)
/* D06F8 8011A338 AE02000C */  sw         $v0, 0xC($s0)
/* D06FC 8011A33C 34630002 */  ori        $v1, $v1, 0x2
/* D0700 8011A340 080468BB */  j          .Lrace_8011A2EC
/* D0704 8011A344 AE030008 */   sw        $v1, 0x8($s0)
glabel Lrace_8011A348
/* D0708 8011A348 0C002680 */  jal        func_80009A00
/* D070C 8011A34C 02202021 */   addu      $a0, $s1, $zero
/* D0710 8011A350 8E030008 */  lw         $v1, 0x8($s0)
/* D0714 8011A354 AE020010 */  sw         $v0, 0x10($s0)
/* D0718 8011A358 34630004 */  ori        $v1, $v1, 0x4
/* D071C 8011A35C 080468BB */  j          .Lrace_8011A2EC
/* D0720 8011A360 AE030008 */   sw        $v1, 0x8($s0)
glabel Lrace_8011A364
/* D0724 8011A364 0C002680 */  jal        func_80009A00
/* D0728 8011A368 02202021 */   addu      $a0, $s1, $zero
/* D072C 8011A36C 8E030008 */  lw         $v1, 0x8($s0)
/* D0730 8011A370 AE020014 */  sw         $v0, 0x14($s0)
/* D0734 8011A374 34630008 */  ori        $v1, $v1, 0x8
/* D0738 8011A378 080468BB */  j          .Lrace_8011A2EC
/* D073C 8011A37C AE030008 */   sw        $v1, 0x8($s0)
glabel Lrace_8011A380
/* D0740 8011A380 0C002680 */  jal        func_80009A00
/* D0744 8011A384 02202021 */   addu      $a0, $s1, $zero
/* D0748 8011A388 8E030008 */  lw         $v1, 0x8($s0)
/* D074C 8011A38C AE020018 */  sw         $v0, 0x18($s0)
/* D0750 8011A390 34630010 */  ori        $v1, $v1, 0x10
/* D0754 8011A394 080468BB */  j          .Lrace_8011A2EC
/* D0758 8011A398 AE030008 */   sw        $v1, 0x8($s0)
glabel Lrace_8011A39C
/* D075C 8011A39C 0C0025F8 */  jal        func_800097E0
/* D0760 8011A3A0 02202021 */   addu      $a0, $s1, $zero
/* D0764 8011A3A4 02202021 */  addu       $a0, $s1, $zero
/* D0768 8011A3A8 0C0025F8 */  jal        func_800097E0
/* D076C 8011A3AC E600001C */   swc1      $f0, 0x1C($s0)
/* D0770 8011A3B0 02202021 */  addu       $a0, $s1, $zero
/* D0774 8011A3B4 0C0025F8 */  jal        func_800097E0
/* D0778 8011A3B8 E6000020 */   swc1      $f0, 0x20($s0)
/* D077C 8011A3BC 8E020008 */  lw         $v0, 0x8($s0)
/* D0780 8011A3C0 E6000024 */  swc1       $f0, 0x24($s0)
/* D0784 8011A3C4 34420020 */  ori        $v0, $v0, 0x20
/* D0788 8011A3C8 1240FFC8 */  beqz       $s2, .Lrace_8011A2EC
/* D078C 8011A3CC AE020008 */   sw        $v0, 0x8($s0)
/* D0790 8011A3D0 C6000020 */  lwc1       $f0, 0x20($s0)
/* D0794 8011A3D4 46000007 */  neg.s      $f0, $f0
/* D0798 8011A3D8 080468BB */  j          .Lrace_8011A2EC
/* D079C 8011A3DC E6000020 */   swc1      $f0, 0x20($s0)
glabel Lrace_8011A3E0
/* D07A0 8011A3E0 0C0025F8 */  jal        func_800097E0
/* D07A4 8011A3E4 02202021 */   addu      $a0, $s1, $zero
/* D07A8 8011A3E8 02202021 */  addu       $a0, $s1, $zero
/* D07AC 8011A3EC 0C0025F8 */  jal        func_800097E0
/* D07B0 8011A3F0 E6000028 */   swc1      $f0, 0x28($s0)
/* D07B4 8011A3F4 02202021 */  addu       $a0, $s1, $zero
/* D07B8 8011A3F8 0C0025F8 */  jal        func_800097E0
/* D07BC 8011A3FC E600002C */   swc1      $f0, 0x2C($s0)
/* D07C0 8011A400 8E020008 */  lw         $v0, 0x8($s0)
/* D07C4 8011A404 E6000030 */  swc1       $f0, 0x30($s0)
/* D07C8 8011A408 34420040 */  ori        $v0, $v0, 0x40
/* D07CC 8011A40C 1240FFB7 */  beqz       $s2, .Lrace_8011A2EC
/* D07D0 8011A410 AE020008 */   sw        $v0, 0x8($s0)
/* D07D4 8011A414 C600002C */  lwc1       $f0, 0x2C($s0)
/* D07D8 8011A418 46000007 */  neg.s      $f0, $f0
/* D07DC 8011A41C 080468BB */  j          .Lrace_8011A2EC
/* D07E0 8011A420 E600002C */   swc1      $f0, 0x2C($s0)
glabel Lrace_8011A424
/* D07E4 8011A424 0C002680 */  jal        func_80009A00
/* D07E8 8011A428 02202021 */   addu      $a0, $s1, $zero
/* D07EC 8011A42C 8E030008 */  lw         $v1, 0x8($s0)
/* D07F0 8011A430 AE020034 */  sw         $v0, 0x34($s0)
/* D07F4 8011A434 34630080 */  ori        $v1, $v1, 0x80
/* D07F8 8011A438 080468BB */  j          .Lrace_8011A2EC
/* D07FC 8011A43C AE030008 */   sw        $v1, 0x8($s0)
glabel Lrace_8011A440
/* D0800 8011A440 0C002680 */  jal        func_80009A00
/* D0804 8011A444 02202021 */   addu      $a0, $s1, $zero
/* D0808 8011A448 8E030008 */  lw         $v1, 0x8($s0)
/* D080C 8011A44C AE020038 */  sw         $v0, 0x38($s0)
/* D0810 8011A450 34630100 */  ori        $v1, $v1, 0x100
/* D0814 8011A454 080468BB */  j          .Lrace_8011A2EC
/* D0818 8011A458 AE030008 */   sw        $v1, 0x8($s0)
glabel Lrace_8011A45C
/* D081C 8011A45C 0C002680 */  jal        func_80009A00
/* D0820 8011A460 02202021 */   addu      $a0, $s1, $zero
/* D0824 8011A464 8E030008 */  lw         $v1, 0x8($s0)
/* D0828 8011A468 AE02003C */  sw         $v0, 0x3C($s0)
/* D082C 8011A46C 34630200 */  ori        $v1, $v1, 0x200
/* D0830 8011A470 080468BB */  j          .Lrace_8011A2EC
/* D0834 8011A474 AE030008 */   sw        $v1, 0x8($s0)
glabel Lrace_8011A478
/* D0838 8011A478 8E220028 */  lw         $v0, 0x28($s1)
/* D083C 8011A47C 844400A0 */  lh         $a0, 0xA0($v0)
/* D0840 8011A480 8C4200A4 */  lw         $v0, 0xA4($v0)
/* D0844 8011A484 0040F809 */  jalr       $v0
/* D0848 8011A488 02242021 */   addu      $a0, $s1, $a0
/* D084C 8011A48C 8A270044 */  lwl        $a3, 0x44($s1)
/* D0850 8011A490 9A270047 */  lwr        $a3, 0x47($s1)
/* D0854 8011A494 8A280048 */  lwl        $t0, 0x48($s1)
/* D0858 8011A498 9A28004B */  lwr        $t0, 0x4B($s1)
/* D085C 8011A49C AA070040 */  swl        $a3, 0x40($s0)
/* D0860 8011A4A0 BA070043 */  swr        $a3, 0x43($s0)
/* D0864 8011A4A4 AA080044 */  swl        $t0, 0x44($s0)
/* D0868 8011A4A8 BA080047 */  swr        $t0, 0x47($s0)
/* D086C 8011A4AC 8E020008 */  lw         $v0, 0x8($s0)
/* D0870 8011A4B0 34420400 */  ori        $v0, $v0, 0x400
/* D0874 8011A4B4 080468BB */  j          .Lrace_8011A2EC
/* D0878 8011A4B8 AE020008 */   sw        $v0, 0x8($s0)
glabel Lrace_8011A4BC
/* D087C 8011A4BC 0C0025F8 */  jal        func_800097E0
/* D0880 8011A4C0 02202021 */   addu      $a0, $s1, $zero
/* D0884 8011A4C4 8E020008 */  lw         $v0, 0x8($s0)
/* D0888 8011A4C8 E6000048 */  swc1       $f0, 0x48($s0)
/* D088C 8011A4CC 34420800 */  ori        $v0, $v0, 0x800
/* D0890 8011A4D0 080468BB */  j          .Lrace_8011A2EC
/* D0894 8011A4D4 AE020008 */   sw        $v0, 0x8($s0)
glabel Lrace_8011A4D8
/* D0898 8011A4D8 0C0025F8 */  jal        func_800097E0
/* D089C 8011A4DC 02202021 */   addu      $a0, $s1, $zero
/* D08A0 8011A4E0 8E020008 */  lw         $v0, 0x8($s0)
/* D08A4 8011A4E4 E600004C */  swc1       $f0, 0x4C($s0)
/* D08A8 8011A4E8 34421000 */  ori        $v0, $v0, 0x1000
/* D08AC 8011A4EC 080468BB */  j          .Lrace_8011A2EC
/* D08B0 8011A4F0 AE020008 */   sw        $v0, 0x8($s0)
glabel Lrace_8011A4F4
/* D08B4 8011A4F4 0C0025F8 */  jal        func_800097E0
/* D08B8 8011A4F8 02202021 */   addu      $a0, $s1, $zero
/* D08BC 8011A4FC 8E020008 */  lw         $v0, 0x8($s0)
/* D08C0 8011A500 E6000050 */  swc1       $f0, 0x50($s0)
/* D08C4 8011A504 34422000 */  ori        $v0, $v0, 0x2000
/* D08C8 8011A508 080468BB */  j          .Lrace_8011A2EC
/* D08CC 8011A50C AE020008 */   sw        $v0, 0x8($s0)
glabel Lrace_8011A510
/* D08D0 8011A510 0C0025F8 */  jal        func_800097E0
/* D08D4 8011A514 02202021 */   addu      $a0, $s1, $zero
/* D08D8 8011A518 8E020008 */  lw         $v0, 0x8($s0)
/* D08DC 8011A51C E6000054 */  swc1       $f0, 0x54($s0)
/* D08E0 8011A520 34424000 */  ori        $v0, $v0, 0x4000
/* D08E4 8011A524 080468BB */  j          .Lrace_8011A2EC
/* D08E8 8011A528 AE020008 */   sw        $v0, 0x8($s0)
glabel Lrace_8011A52C
/* D08EC 8011A52C 0C0025F8 */  jal        func_800097E0
/* D08F0 8011A530 02202021 */   addu      $a0, $s1, $zero
/* D08F4 8011A534 8E020008 */  lw         $v0, 0x8($s0)
/* D08F8 8011A538 E6000058 */  swc1       $f0, 0x58($s0)
/* D08FC 8011A53C 34428000 */  ori        $v0, $v0, 0x8000
/* D0900 8011A540 080468BB */  j          .Lrace_8011A2EC
/* D0904 8011A544 AE020008 */   sw        $v0, 0x8($s0)
glabel Lrace_8011A548
/* D0908 8011A548 8E020008 */  lw         $v0, 0x8($s0)
/* D090C 8011A54C 0804695A */  j          .Lrace_8011A568
/* D0910 8011A550 3C030001 */   lui       $v1, (0x10000 >> 16)
glabel Lrace_8011A554
/* D0914 8011A554 8E020008 */  lw         $v0, 0x8($s0)
/* D0918 8011A558 0804695A */  j          .Lrace_8011A568
/* D091C 8011A55C 3C030002 */   lui       $v1, (0x20000 >> 16)
glabel Lrace_8011A560
/* D0920 8011A560 8E020008 */  lw         $v0, 0x8($s0)
/* D0924 8011A564 3C030004 */  lui        $v1, (0x40000 >> 16)
.Lrace_8011A568:
/* D0928 8011A568 00431025 */  or         $v0, $v0, $v1
/* D092C 8011A56C 080468BB */  j          .Lrace_8011A2EC
/* D0930 8011A570 AE020008 */   sw        $v0, 0x8($s0)
.Lrace_8011A574:
/* D0934 8011A574 8E220028 */  lw         $v0, 0x28($s1)
/* D0938 8011A578 00002821 */  addu       $a1, $zero, $zero
/* D093C 8011A57C 84440098 */  lh         $a0, 0x98($v0)
/* D0940 8011A580 8C42009C */  lw         $v0, 0x9C($v0)
/* D0944 8011A584 0040F809 */  jalr       $v0
/* D0948 8011A588 02242021 */   addu      $a0, $s1, $a0
/* D094C 8011A58C 080468BB */  j          .Lrace_8011A2EC
/* D0950 8011A590 00000000 */   nop
.Lrace_8011A594:
/* D0954 8011A594 8E020008 */  lw         $v0, 0x8($s0)
/* D0958 8011A598 34420001 */  ori        $v0, $v0, 0x1
/* D095C 8011A59C AE020008 */  sw         $v0, 0x8($s0)
/* D0960 8011A5A0 8FBF0020 */  lw         $ra, 0x20($sp)
/* D0964 8011A5A4 8FB3001C */  lw         $s3, 0x1C($sp)
/* D0968 8011A5A8 8FB20018 */  lw         $s2, 0x18($sp)
/* D096C 8011A5AC 8FB10014 */  lw         $s1, 0x14($sp)
/* D0970 8011A5B0 8FB00010 */  lw         $s0, 0x10($sp)
/* D0974 8011A5B4 03E00008 */  jr         $ra
/* D0978 8011A5B8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8011A5BC
/* D097C 8011A5BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0980 8011A5C0 AFBF0010 */  sw         $ra, 0x10($sp)
/* D0984 8011A5C4 0C046882 */  jal        func_race_8011A208
/* D0988 8011A5C8 00000000 */   nop
/* D098C 8011A5CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* D0990 8011A5D0 03E00008 */  jr         $ra
/* D0994 8011A5D4 27BD0018 */   addiu     $sp, $sp, 0x18
