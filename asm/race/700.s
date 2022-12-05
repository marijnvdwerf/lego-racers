.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801178F0
/* CDCB0 801178F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CDCB4 801178F4 AFB00010 */  sw         $s0, 0x10($sp)
/* CDCB8 801178F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* CDCBC 801178FC 0C045B2C */  jal        func_race_80116CB0
/* CDCC0 80117900 00808021 */   addu      $s0, $a0, $zero
/* CDCC4 80117904 02001021 */  addu       $v0, $s0, $zero
/* CDCC8 80117908 3C03800D */  lui        $v1, %hi(D_race_800CE060)
/* CDCCC 8011790C 2463E060 */  addiu      $v1, $v1, %lo(D_race_800CE060)
/* CDCD0 80117910 AC4300CC */  sw         $v1, 0xCC($v0)
/* CDCD4 80117914 AC4000D0 */  sw         $zero, 0xD0($v0)
/* CDCD8 80117918 AC4000D4 */  sw         $zero, 0xD4($v0)
/* CDCDC 8011791C AC4000D8 */  sw         $zero, 0xD8($v0)
/* CDCE0 80117920 AC4000DC */  sw         $zero, 0xDC($v0)
/* CDCE4 80117924 AC4000E0 */  sw         $zero, 0xE0($v0)
/* CDCE8 80117928 8FBF0014 */  lw         $ra, 0x14($sp)
/* CDCEC 8011792C 8FB00010 */  lw         $s0, 0x10($sp)
/* CDCF0 80117930 03E00008 */  jr         $ra
/* CDCF4 80117934 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80117938
/* CDCF8 80117938 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CDCFC 8011793C C7A00028 */  lwc1       $f0, 0x28($sp)
/* CDD00 80117940 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* CDD04 80117944 3C01800D */  lui        $at, %hi(D_race_800CDFB0)
/* CDD08 80117948 C424DFB0 */  lwc1       $f4, %lo(D_race_800CDFB0)($at)
/* CDD0C 8011794C AFBF0010 */  sw         $ra, 0x10($sp)
/* CDD10 80117950 AC8700D0 */  sw         $a3, 0xD0($a0)
/* CDD14 80117954 AC8000E0 */  sw         $zero, 0xE0($a0)
/* CDD18 80117958 E48000D4 */  swc1       $f0, 0xD4($a0)
/* CDD1C 8011795C E48200D8 */  swc1       $f2, 0xD8($a0)
/* CDD20 80117960 0C045B51 */  jal        func_race_80116D44
/* CDD24 80117964 E48400DC */   swc1      $f4, 0xDC($a0)
/* CDD28 80117968 8FBF0010 */  lw         $ra, 0x10($sp)
/* CDD2C 8011796C 03E00008 */  jr         $ra
/* CDD30 80117970 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80117974
/* CDD34 80117974 C48600D4 */  lwc1       $f6, 0xD4($a0)
/* CDD38 80117978 46063382 */  mul.s      $f14, $f6, $f6
/* CDD3C 8011797C C48C00D8 */  lwc1       $f12, 0xD8($a0)
/* CDD40 80117980 460C6102 */  mul.s      $f4, $f12, $f12
/* CDD44 80117984 C48000D0 */  lwc1       $f0, 0xD0($a0)
/* CDD48 80117988 46000282 */  mul.s      $f10, $f0, $f0
/* CDD4C 8011798C C48200C4 */  lwc1       $f2, 0xC4($a0)
/* CDD50 80117990 46047200 */  add.s      $f8, $f14, $f4
/* CDD54 80117994 46001003 */  div.s      $f0, $f2, $f0
/* CDD58 80117998 46080002 */  mul.s      $f0, $f0, $f8
/* CDD5C 8011799C 46045100 */  add.s      $f4, $f10, $f4
/* CDD60 801179A0 46061183 */  div.s      $f6, $f2, $f6
/* CDD64 801179A4 46043182 */  mul.s      $f6, $f6, $f4
/* CDD68 801179A8 AC80002C */  sw         $zero, 0x2C($a0)
/* CDD6C 801179AC 460E5280 */  add.s      $f10, $f10, $f14
/* CDD70 801179B0 460C1083 */  div.s      $f2, $f2, $f12
/* CDD74 801179B4 3C01800D */  lui        $at, %hi(D_race_800CDFB4)
/* CDD78 801179B8 C428DFB4 */  lwc1       $f8, %lo(D_race_800CDFB4)($at)
/* CDD7C 801179BC 460A1082 */  mul.s      $f2, $f2, $f10
/* CDD80 801179C0 AC800030 */  sw         $zero, 0x30($a0)
/* CDD84 801179C4 AC800034 */  sw         $zero, 0x34($a0)
/* CDD88 801179C8 AC80003C */  sw         $zero, 0x3C($a0)
/* CDD8C 801179CC AC800040 */  sw         $zero, 0x40($a0)
/* CDD90 801179D0 46080002 */  mul.s      $f0, $f0, $f8
/* CDD94 801179D4 AC800044 */  sw         $zero, 0x44($a0)
/* CDD98 801179D8 AC800050 */  sw         $zero, 0x50($a0)
/* CDD9C 801179DC AC800054 */  sw         $zero, 0x54($a0)
/* CDDA0 801179E0 AC800058 */  sw         $zero, 0x58($a0)
/* CDDA4 801179E4 46083182 */  mul.s      $f6, $f6, $f8
/* CDDA8 801179E8 AC800060 */  sw         $zero, 0x60($a0)
/* CDDAC 801179EC AC800064 */  sw         $zero, 0x64($a0)
/* CDDB0 801179F0 AC800068 */  sw         $zero, 0x68($a0)
/* CDDB4 801179F4 3C01800D */  lui        $at, %hi(D_race_800CDFB8)
/* CDDB8 801179F8 C424DFB8 */  lwc1       $f4, %lo(D_race_800CDFB8)($at)
/* CDDBC 801179FC 46081082 */  mul.s      $f2, $f2, $f8
/* CDDC0 80117A00 E4800028 */  swc1       $f0, 0x28($a0)
/* CDDC4 80117A04 46002003 */  div.s      $f0, $f4, $f0
/* CDDC8 80117A08 E4860038 */  swc1       $f6, 0x38($a0)
/* CDDCC 80117A0C E480004C */  swc1       $f0, 0x4C($a0)
/* CDDD0 80117A10 46003006 */  mov.s      $f0, $f6
/* CDDD4 80117A14 46002003 */  div.s      $f0, $f4, $f0
/* CDDD8 80117A18 46022103 */  div.s      $f4, $f4, $f2
/* CDDDC 80117A1C E4820048 */  swc1       $f2, 0x48($a0)
/* CDDE0 80117A20 E480005C */  swc1       $f0, 0x5C($a0)
/* CDDE4 80117A24 03E00008 */  jr         $ra
/* CDDE8 80117A28 E484006C */   swc1      $f4, 0x6C($a0)

glabel func_race_80117A2C
/* CDDEC 80117A2C 27BDFF60 */  addiu      $sp, $sp, -0xA0
/* CDDF0 80117A30 AFB10064 */  sw         $s1, 0x64($sp)
/* CDDF4 80117A34 00808821 */  addu       $s1, $a0, $zero
/* CDDF8 80117A38 AFB20068 */  sw         $s2, 0x68($sp)
/* CDDFC 80117A3C 00A09021 */  addu       $s2, $a1, $zero
/* CDE00 80117A40 AFB00060 */  sw         $s0, 0x60($sp)
/* CDE04 80117A44 8FB000B0 */  lw         $s0, 0xB0($sp)
/* CDE08 80117A48 27A20058 */  addiu      $v0, $sp, 0x58
/* CDE0C 80117A4C AFA20010 */  sw         $v0, 0x10($sp)
/* CDE10 80117A50 27A2005C */  addiu      $v0, $sp, 0x5C
/* CDE14 80117A54 AFB3006C */  sw         $s3, 0x6C($sp)
/* CDE18 80117A58 00E09821 */  addu       $s3, $a3, $zero
/* CDE1C 80117A5C AFBF0070 */  sw         $ra, 0x70($sp)
/* CDE20 80117A60 F7BC0098 */  sdc1       $f28, 0x98($sp)
/* CDE24 80117A64 F7BA0090 */  sdc1       $f26, 0x90($sp)
/* CDE28 80117A68 F7B80088 */  sdc1       $f24, 0x88($sp)
/* CDE2C 80117A6C F7B60080 */  sdc1       $f22, 0x80($sp)
/* CDE30 80117A70 F7B40078 */  sdc1       $f20, 0x78($sp)
/* CDE34 80117A74 0C045FF2 */  jal        func_race_80117FC8
/* CDE38 80117A78 AFA20014 */   sw        $v0, 0x14($sp)
/* CDE3C 80117A7C 14400003 */  bnez       $v0, .Lrace_80117A8C
/* CDE40 80117A80 00003021 */   addu      $a2, $zero, $zero
/* CDE44 80117A84 08045FE6 */  j          .Lrace_80117F98
/* CDE48 80117A88 00001021 */   addu      $v0, $zero, $zero
.Lrace_80117A8C:
/* CDE4C 80117A8C 00C02821 */  addu       $a1, $a2, $zero
/* CDE50 80117A90 3C01800D */  lui        $at, %hi(D_race_800CDFBC)
/* CDE54 80117A94 C438DFBC */  lwc1       $f24, %lo(D_race_800CDFBC)($at)
/* CDE58 80117A98 3C01800D */  lui        $at, %hi(D_race_800CDFC0)
/* CDE5C 80117A9C C43CDFC0 */  lwc1       $f28, %lo(D_race_800CDFC0)($at)
/* CDE60 80117AA0 24080002 */  addiu      $t0, $zero, 0x2
/* CDE64 80117AA4 AE000008 */  sw         $zero, 0x8($s0)
/* CDE68 80117AA8 C61A0008 */  lwc1       $f26, 0x8($s0)
/* CDE6C 80117AAC 24070004 */  addiu      $a3, $zero, 0x4
/* CDE70 80117AB0 AE000000 */  sw         $zero, 0x0($s0)
/* CDE74 80117AB4 AE000004 */  sw         $zero, 0x4($s0)
.Lrace_80117AB8:
/* CDE78 80117AB8 2CA20002 */  sltiu      $v0, $a1, 0x2
/* CDE7C 80117ABC 1040012B */  beqz       $v0, .Lrace_80117F6C
/* CDE80 80117AC0 24020001 */   addiu     $v0, $zero, 0x1
/* CDE84 80117AC4 14A0005B */  bnez       $a1, .Lrace_80117C34
/* CDE88 80117AC8 27A30018 */   addiu     $v1, $sp, 0x18
/* CDE8C 80117ACC 8E220000 */  lw         $v0, 0x0($s1)
/* CDE90 80117AD0 C4480028 */  lwc1       $f8, 0x28($v0)
/* CDE94 80117AD4 E7A80018 */  swc1       $f8, 0x18($sp)
/* CDE98 80117AD8 C444002C */  lwc1       $f4, 0x2C($v0)
/* CDE9C 80117ADC E4640004 */  swc1       $f4, 0x4($v1)
/* CDEA0 80117AE0 C4420030 */  lwc1       $f2, 0x30($v0)
/* CDEA4 80117AE4 E4620008 */  swc1       $f2, 0x8($v1)
/* CDEA8 80117AE8 C44C0034 */  lwc1       $f12, 0x34($v0)
/* CDEAC 80117AEC E7AC0028 */  swc1       $f12, 0x28($sp)
/* CDEB0 80117AF0 C44A0038 */  lwc1       $f10, 0x38($v0)
/* CDEB4 80117AF4 E7AA002C */  swc1       $f10, 0x2C($sp)
/* CDEB8 80117AF8 C446003C */  lwc1       $f6, 0x3C($v0)
/* CDEBC 80117AFC E7A60030 */  swc1       $f6, 0x30($sp)
/* CDEC0 80117B00 C4520040 */  lwc1       $f18, 0x40($v0)
/* CDEC4 80117B04 E7B20038 */  swc1       $f18, 0x38($sp)
/* CDEC8 80117B08 C4500044 */  lwc1       $f16, 0x44($v0)
/* CDECC 80117B0C E7B0003C */  swc1       $f16, 0x3C($sp)
/* CDED0 80117B10 C44E0048 */  lwc1       $f14, 0x48($v0)
/* CDED4 80117B14 E7AE0040 */  swc1       $f14, 0x40($sp)
/* CDED8 80117B18 C62000D0 */  lwc1       $f0, 0xD0($s1)
/* CDEDC 80117B1C 46180002 */  mul.s      $f0, $f0, $f24
/* CDEE0 80117B20 00000000 */  nop
/* CDEE4 80117B24 46004202 */  mul.s      $f8, $f8, $f0
/* CDEE8 80117B28 00000000 */  nop
/* CDEEC 80117B2C 46002502 */  mul.s      $f20, $f4, $f0
/* CDEF0 80117B30 00000000 */  nop
/* CDEF4 80117B34 46001582 */  mul.s      $f22, $f2, $f0
/* CDEF8 80117B38 E7A80018 */  swc1       $f8, 0x18($sp)
/* CDEFC 80117B3C E4740004 */  swc1       $f20, 0x4($v1)
/* CDF00 80117B40 E4760008 */  swc1       $f22, 0x8($v1)
/* CDF04 80117B44 C62000D4 */  lwc1       $f0, 0xD4($s1)
/* CDF08 80117B48 46180002 */  mul.s      $f0, $f0, $f24
/* CDF0C 80117B4C 00000000 */  nop
/* CDF10 80117B50 46006302 */  mul.s      $f12, $f12, $f0
/* CDF14 80117B54 00000000 */  nop
/* CDF18 80117B58 46005282 */  mul.s      $f10, $f10, $f0
/* CDF1C 80117B5C 00000000 */  nop
/* CDF20 80117B60 46003182 */  mul.s      $f6, $f6, $f0
/* CDF24 80117B64 E7AC0028 */  swc1       $f12, 0x28($sp)
/* CDF28 80117B68 E7AA002C */  swc1       $f10, 0x2C($sp)
/* CDF2C 80117B6C E7A60030 */  swc1       $f6, 0x30($sp)
/* CDF30 80117B70 C62000D8 */  lwc1       $f0, 0xD8($s1)
/* CDF34 80117B74 46180002 */  mul.s      $f0, $f0, $f24
/* CDF38 80117B78 00000000 */  nop
/* CDF3C 80117B7C 46009482 */  mul.s      $f18, $f18, $f0
/* CDF40 80117B80 00000000 */  nop
/* CDF44 80117B84 46008402 */  mul.s      $f16, $f16, $f0
/* CDF48 80117B88 00000000 */  nop
/* CDF4C 80117B8C 46007382 */  mul.s      $f14, $f14, $f0
/* CDF50 80117B90 E7B20038 */  swc1       $f18, 0x38($sp)
/* CDF54 80117B94 E7B0003C */  swc1       $f16, 0x3C($sp)
/* CDF58 80117B98 E7AE0040 */  swc1       $f14, 0x40($sp)
/* CDF5C 80117B9C C62400DC */  lwc1       $f4, 0xDC($s1)
/* CDF60 80117BA0 461C2032 */  c.eq.s     $f4, $f28
/* CDF64 80117BA4 00000000 */  nop
/* CDF68 80117BA8 4501001F */  bc1t       .Lrace_80117C28
/* CDF6C 80117BAC 00000000 */   nop
/* CDF70 80117BB0 461A2032 */  c.eq.s     $f4, $f26
/* CDF74 80117BB4 00000000 */  nop
/* CDF78 80117BB8 450100F7 */  bc1t       .Lrace_80117F98
/* CDF7C 80117BBC 00001021 */   addu      $v0, $zero, $zero
/* CDF80 80117BC0 46044002 */  mul.s      $f0, $f8, $f4
/* CDF84 80117BC4 00000000 */  nop
/* CDF88 80117BC8 4604A082 */  mul.s      $f2, $f20, $f4
/* CDF8C 80117BCC 00000000 */  nop
/* CDF90 80117BD0 4604B102 */  mul.s      $f4, $f22, $f4
/* CDF94 80117BD4 E7A00018 */  swc1       $f0, 0x18($sp)
/* CDF98 80117BD8 E4620004 */  swc1       $f2, 0x4($v1)
/* CDF9C 80117BDC E4640008 */  swc1       $f4, 0x8($v1)
/* CDFA0 80117BE0 C62000DC */  lwc1       $f0, 0xDC($s1)
/* CDFA4 80117BE4 46006082 */  mul.s      $f2, $f12, $f0
/* CDFA8 80117BE8 00000000 */  nop
/* CDFAC 80117BEC 46005102 */  mul.s      $f4, $f10, $f0
/* CDFB0 80117BF0 00000000 */  nop
/* CDFB4 80117BF4 46003002 */  mul.s      $f0, $f6, $f0
/* CDFB8 80117BF8 E7A20028 */  swc1       $f2, 0x28($sp)
/* CDFBC 80117BFC E7A4002C */  swc1       $f4, 0x2C($sp)
/* CDFC0 80117C00 E7A00030 */  swc1       $f0, 0x30($sp)
/* CDFC4 80117C04 C62000DC */  lwc1       $f0, 0xDC($s1)
/* CDFC8 80117C08 46009082 */  mul.s      $f2, $f18, $f0
/* CDFCC 80117C0C 00000000 */  nop
/* CDFD0 80117C10 46008102 */  mul.s      $f4, $f16, $f0
/* CDFD4 80117C14 00000000 */  nop
/* CDFD8 80117C18 46007002 */  mul.s      $f0, $f14, $f0
/* CDFDC 80117C1C E7A20038 */  swc1       $f2, 0x38($sp)
/* CDFE0 80117C20 E7A4003C */  swc1       $f4, 0x3C($sp)
/* CDFE4 80117C24 E7A00040 */  swc1       $f0, 0x40($sp)
.Lrace_80117C28:
/* CDFE8 80117C28 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* CDFEC 80117C2C 08045F65 */  j          .Lrace_80117D94
/* CDFF0 80117C30 2624001C */   addiu     $a0, $s1, 0x1C
.Lrace_80117C34:
/* CDFF4 80117C34 8E420000 */  lw         $v0, 0x0($s2)
/* CDFF8 80117C38 C4480028 */  lwc1       $f8, 0x28($v0)
/* CDFFC 80117C3C E7A80018 */  swc1       $f8, 0x18($sp)
/* CE000 80117C40 C444002C */  lwc1       $f4, 0x2C($v0)
/* CE004 80117C44 E4640004 */  swc1       $f4, 0x4($v1)
/* CE008 80117C48 C4420030 */  lwc1       $f2, 0x30($v0)
/* CE00C 80117C4C E4620008 */  swc1       $f2, 0x8($v1)
/* CE010 80117C50 C44C0034 */  lwc1       $f12, 0x34($v0)
/* CE014 80117C54 E7AC0028 */  swc1       $f12, 0x28($sp)
/* CE018 80117C58 C44A0038 */  lwc1       $f10, 0x38($v0)
/* CE01C 80117C5C E7AA002C */  swc1       $f10, 0x2C($sp)
/* CE020 80117C60 C446003C */  lwc1       $f6, 0x3C($v0)
/* CE024 80117C64 E7A60030 */  swc1       $f6, 0x30($sp)
/* CE028 80117C68 C4520040 */  lwc1       $f18, 0x40($v0)
/* CE02C 80117C6C E7B20038 */  swc1       $f18, 0x38($sp)
/* CE030 80117C70 C4500044 */  lwc1       $f16, 0x44($v0)
/* CE034 80117C74 E7B0003C */  swc1       $f16, 0x3C($sp)
/* CE038 80117C78 C44E0048 */  lwc1       $f14, 0x48($v0)
/* CE03C 80117C7C E7AE0040 */  swc1       $f14, 0x40($sp)
/* CE040 80117C80 C64000D0 */  lwc1       $f0, 0xD0($s2)
/* CE044 80117C84 46180002 */  mul.s      $f0, $f0, $f24
/* CE048 80117C88 00000000 */  nop
/* CE04C 80117C8C 46004202 */  mul.s      $f8, $f8, $f0
/* CE050 80117C90 00000000 */  nop
/* CE054 80117C94 46002502 */  mul.s      $f20, $f4, $f0
/* CE058 80117C98 00000000 */  nop
/* CE05C 80117C9C 46001582 */  mul.s      $f22, $f2, $f0
/* CE060 80117CA0 E7A80018 */  swc1       $f8, 0x18($sp)
/* CE064 80117CA4 E4740004 */  swc1       $f20, 0x4($v1)
/* CE068 80117CA8 E4760008 */  swc1       $f22, 0x8($v1)
/* CE06C 80117CAC C64000D4 */  lwc1       $f0, 0xD4($s2)
/* CE070 80117CB0 46180002 */  mul.s      $f0, $f0, $f24
/* CE074 80117CB4 00000000 */  nop
/* CE078 80117CB8 46006302 */  mul.s      $f12, $f12, $f0
/* CE07C 80117CBC 00000000 */  nop
/* CE080 80117CC0 46005282 */  mul.s      $f10, $f10, $f0
/* CE084 80117CC4 00000000 */  nop
/* CE088 80117CC8 46003182 */  mul.s      $f6, $f6, $f0
/* CE08C 80117CCC E7AC0028 */  swc1       $f12, 0x28($sp)
/* CE090 80117CD0 E7AA002C */  swc1       $f10, 0x2C($sp)
/* CE094 80117CD4 E7A60030 */  swc1       $f6, 0x30($sp)
/* CE098 80117CD8 C64000D8 */  lwc1       $f0, 0xD8($s2)
/* CE09C 80117CDC 46180002 */  mul.s      $f0, $f0, $f24
/* CE0A0 80117CE0 00000000 */  nop
/* CE0A4 80117CE4 46009482 */  mul.s      $f18, $f18, $f0
/* CE0A8 80117CE8 00000000 */  nop
/* CE0AC 80117CEC 46008402 */  mul.s      $f16, $f16, $f0
/* CE0B0 80117CF0 00000000 */  nop
/* CE0B4 80117CF4 46007382 */  mul.s      $f14, $f14, $f0
/* CE0B8 80117CF8 E7B20038 */  swc1       $f18, 0x38($sp)
/* CE0BC 80117CFC E7B0003C */  swc1       $f16, 0x3C($sp)
/* CE0C0 80117D00 E7AE0040 */  swc1       $f14, 0x40($sp)
/* CE0C4 80117D04 C64400DC */  lwc1       $f4, 0xDC($s2)
/* CE0C8 80117D08 461C2032 */  c.eq.s     $f4, $f28
/* CE0CC 80117D0C 00000000 */  nop
/* CE0D0 80117D10 4501001F */  bc1t       .Lrace_80117D90
/* CE0D4 80117D14 2644001C */   addiu     $a0, $s2, 0x1C
/* CE0D8 80117D18 461A2032 */  c.eq.s     $f4, $f26
/* CE0DC 80117D1C 00000000 */  nop
/* CE0E0 80117D20 4501009D */  bc1t       .Lrace_80117F98
/* CE0E4 80117D24 00001021 */   addu      $v0, $zero, $zero
/* CE0E8 80117D28 46044002 */  mul.s      $f0, $f8, $f4
/* CE0EC 80117D2C 00000000 */  nop
/* CE0F0 80117D30 4604A082 */  mul.s      $f2, $f20, $f4
/* CE0F4 80117D34 00000000 */  nop
/* CE0F8 80117D38 4604B102 */  mul.s      $f4, $f22, $f4
/* CE0FC 80117D3C E7A00018 */  swc1       $f0, 0x18($sp)
/* CE100 80117D40 E4620004 */  swc1       $f2, 0x4($v1)
/* CE104 80117D44 E4640008 */  swc1       $f4, 0x8($v1)
/* CE108 80117D48 C64000DC */  lwc1       $f0, 0xDC($s2)
/* CE10C 80117D4C 46006082 */  mul.s      $f2, $f12, $f0
/* CE110 80117D50 00000000 */  nop
/* CE114 80117D54 46005102 */  mul.s      $f4, $f10, $f0
/* CE118 80117D58 00000000 */  nop
/* CE11C 80117D5C 46003002 */  mul.s      $f0, $f6, $f0
/* CE120 80117D60 E7A20028 */  swc1       $f2, 0x28($sp)
/* CE124 80117D64 E7A4002C */  swc1       $f4, 0x2C($sp)
/* CE128 80117D68 E7A00030 */  swc1       $f0, 0x30($sp)
/* CE12C 80117D6C C64000DC */  lwc1       $f0, 0xDC($s2)
/* CE130 80117D70 46009082 */  mul.s      $f2, $f18, $f0
/* CE134 80117D74 00000000 */  nop
/* CE138 80117D78 46008102 */  mul.s      $f4, $f16, $f0
/* CE13C 80117D7C 00000000 */  nop
/* CE140 80117D80 46007002 */  mul.s      $f0, $f14, $f0
/* CE144 80117D84 E7A20038 */  swc1       $f2, 0x38($sp)
/* CE148 80117D88 E7A4003C */  swc1       $f4, 0x3C($sp)
/* CE14C 80117D8C E7A00040 */  swc1       $f0, 0x40($sp)
.Lrace_80117D90:
/* CE150 80117D90 C7AA005C */  lwc1       $f10, 0x5C($sp)
.Lrace_80117D94:
/* CE154 80117D94 00001821 */  addu       $v1, $zero, $zero
.Lrace_80117D98:
/* CE158 80117D98 2C620008 */  sltiu      $v0, $v1, 0x8
/* CE15C 80117D9C 10400071 */  beqz       $v0, .Lrace_80117F64
/* CE160 80117DA0 2C620004 */   sltiu     $v0, $v1, 0x4
/* CE164 80117DA4 10400008 */  beqz       $v0, .Lrace_80117DC8
/* CE168 80117DA8 00000000 */   nop
/* CE16C 80117DAC C7A00018 */  lwc1       $f0, 0x18($sp)
/* CE170 80117DB0 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* CE174 80117DB4 C7A40020 */  lwc1       $f4, 0x20($sp)
/* CE178 80117DB8 E7A00048 */  swc1       $f0, 0x48($sp)
/* CE17C 80117DBC E7A2004C */  swc1       $f2, 0x4C($sp)
/* CE180 80117DC0 08045F7B */  j          .Lrace_80117DEC
/* CE184 80117DC4 E7A40050 */   swc1      $f4, 0x50($sp)
.Lrace_80117DC8:
/* CE188 80117DC8 C7A00018 */  lwc1       $f0, 0x18($sp)
/* CE18C 80117DCC C7A20020 */  lwc1       $f2, 0x20($sp)
/* CE190 80117DD0 46000007 */  neg.s      $f0, $f0
/* CE194 80117DD4 E7A00048 */  swc1       $f0, 0x48($sp)
/* CE198 80117DD8 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* CE19C 80117DDC 46001087 */  neg.s      $f2, $f2
/* CE1A0 80117DE0 E7A20050 */  swc1       $f2, 0x50($sp)
/* CE1A4 80117DE4 46000007 */  neg.s      $f0, $f0
/* CE1A8 80117DE8 E7A0004C */  swc1       $f0, 0x4C($sp)
.Lrace_80117DEC:
/* CE1AC 80117DEC 2C620002 */  sltiu      $v0, $v1, 0x2
/* CE1B0 80117DF0 14400004 */  bnez       $v0, .Lrace_80117E04
/* CE1B4 80117DF4 2462FFFC */   addiu     $v0, $v1, -0x4
/* CE1B8 80117DF8 2C420002 */  sltiu      $v0, $v0, 0x2
/* CE1BC 80117DFC 1040000B */  beqz       $v0, .Lrace_80117E2C
/* CE1C0 80117E00 00000000 */   nop
.Lrace_80117E04:
/* CE1C4 80117E04 C7A60048 */  lwc1       $f6, 0x48($sp)
/* CE1C8 80117E08 C7A00028 */  lwc1       $f0, 0x28($sp)
/* CE1CC 80117E0C C7A4004C */  lwc1       $f4, 0x4C($sp)
/* CE1D0 80117E10 46003180 */  add.s      $f6, $f6, $f0
/* CE1D4 80117E14 C7A0002C */  lwc1       $f0, 0x2C($sp)
/* CE1D8 80117E18 C7A20050 */  lwc1       $f2, 0x50($sp)
/* CE1DC 80117E1C 46002100 */  add.s      $f4, $f4, $f0
/* CE1E0 80117E20 C7A00030 */  lwc1       $f0, 0x30($sp)
/* CE1E4 80117E24 08045F94 */  j          .Lrace_80117E50
/* CE1E8 80117E28 46001080 */   add.s     $f2, $f2, $f0
.Lrace_80117E2C:
/* CE1EC 80117E2C C7A60048 */  lwc1       $f6, 0x48($sp)
/* CE1F0 80117E30 C7A00028 */  lwc1       $f0, 0x28($sp)
/* CE1F4 80117E34 C7A4004C */  lwc1       $f4, 0x4C($sp)
/* CE1F8 80117E38 46003181 */  sub.s      $f6, $f6, $f0
/* CE1FC 80117E3C C7A0002C */  lwc1       $f0, 0x2C($sp)
/* CE200 80117E40 C7A20050 */  lwc1       $f2, 0x50($sp)
/* CE204 80117E44 46002101 */  sub.s      $f4, $f4, $f0
/* CE208 80117E48 C7A00030 */  lwc1       $f0, 0x30($sp)
/* CE20C 80117E4C 46001081 */  sub.s      $f2, $f2, $f0
.Lrace_80117E50:
/* CE210 80117E50 E7A60048 */  swc1       $f6, 0x48($sp)
/* CE214 80117E54 E7A4004C */  swc1       $f4, 0x4C($sp)
/* CE218 80117E58 10600007 */  beqz       $v1, .Lrace_80117E78
/* CE21C 80117E5C E7A20050 */   swc1      $f2, 0x50($sp)
/* CE220 80117E60 10680005 */  beq        $v1, $t0, .Lrace_80117E78
/* CE224 80117E64 00000000 */   nop
/* CE228 80117E68 10670003 */  beq        $v1, $a3, .Lrace_80117E78
/* CE22C 80117E6C 24020006 */   addiu     $v0, $zero, 0x6
/* CE230 80117E70 1462000B */  bne        $v1, $v0, .Lrace_80117EA0
/* CE234 80117E74 00000000 */   nop
.Lrace_80117E78:
/* CE238 80117E78 C7A60048 */  lwc1       $f6, 0x48($sp)
/* CE23C 80117E7C C7A00038 */  lwc1       $f0, 0x38($sp)
/* CE240 80117E80 C7A4004C */  lwc1       $f4, 0x4C($sp)
/* CE244 80117E84 46003180 */  add.s      $f6, $f6, $f0
/* CE248 80117E88 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* CE24C 80117E8C C7A20050 */  lwc1       $f2, 0x50($sp)
/* CE250 80117E90 46002100 */  add.s      $f4, $f4, $f0
/* CE254 80117E94 C7A00040 */  lwc1       $f0, 0x40($sp)
/* CE258 80117E98 08045FB1 */  j          .Lrace_80117EC4
/* CE25C 80117E9C 46001080 */   add.s     $f2, $f2, $f0
.Lrace_80117EA0:
/* CE260 80117EA0 C7A60048 */  lwc1       $f6, 0x48($sp)
/* CE264 80117EA4 C7A00038 */  lwc1       $f0, 0x38($sp)
/* CE268 80117EA8 C7A4004C */  lwc1       $f4, 0x4C($sp)
/* CE26C 80117EAC 46003181 */  sub.s      $f6, $f6, $f0
/* CE270 80117EB0 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* CE274 80117EB4 C7A20050 */  lwc1       $f2, 0x50($sp)
/* CE278 80117EB8 46002101 */  sub.s      $f4, $f4, $f0
/* CE27C 80117EBC C7A00040 */  lwc1       $f0, 0x40($sp)
/* CE280 80117EC0 46001081 */  sub.s      $f2, $f2, $f0
.Lrace_80117EC4:
/* CE284 80117EC4 E7A60048 */  swc1       $f6, 0x48($sp)
/* CE288 80117EC8 E7A4004C */  swc1       $f4, 0x4C($sp)
/* CE28C 80117ECC E7A20050 */  swc1       $f2, 0x50($sp)
/* CE290 80117ED0 C7A80048 */  lwc1       $f8, 0x48($sp)
/* CE294 80117ED4 C6640000 */  lwc1       $f4, 0x0($s3)
/* CE298 80117ED8 46044102 */  mul.s      $f4, $f8, $f4
/* CE29C 80117EDC C7A6004C */  lwc1       $f6, 0x4C($sp)
/* CE2A0 80117EE0 C6600004 */  lwc1       $f0, 0x4($s3)
/* CE2A4 80117EE4 46003182 */  mul.s      $f6, $f6, $f0
/* CE2A8 80117EE8 C7A20050 */  lwc1       $f2, 0x50($sp)
/* CE2AC 80117EEC C6600008 */  lwc1       $f0, 0x8($s3)
/* CE2B0 80117EF0 46001082 */  mul.s      $f2, $f2, $f0
/* CE2B4 80117EF4 46062100 */  add.s      $f4, $f4, $f6
/* CE2B8 80117EF8 24020001 */  addiu      $v0, $zero, 0x1
/* CE2BC 80117EFC 14A20002 */  bne        $a1, $v0, .Lrace_80117F08
/* CE2C0 80117F00 46022100 */   add.s     $f4, $f4, $f2
/* CE2C4 80117F04 46002107 */  neg.s      $f4, $f4
.Lrace_80117F08:
/* CE2C8 80117F08 4604503E */  c.le.s     $f10, $f4
/* CE2CC 80117F0C 00000000 */  nop
/* CE2D0 80117F10 4500FFA1 */  bc1f       .Lrace_80117D98
/* CE2D4 80117F14 24630001 */   addiu     $v1, $v1, 0x1
/* CE2D8 80117F18 C4820000 */  lwc1       $f2, 0x0($a0)
/* CE2DC 80117F1C 46081080 */  add.s      $f2, $f2, $f8
/* CE2E0 80117F20 C6000000 */  lwc1       $f0, 0x0($s0)
/* CE2E4 80117F24 46020000 */  add.s      $f0, $f0, $f2
/* CE2E8 80117F28 E6000000 */  swc1       $f0, 0x0($s0)
/* CE2EC 80117F2C C4820004 */  lwc1       $f2, 0x4($a0)
/* CE2F0 80117F30 C7A0004C */  lwc1       $f0, 0x4C($sp)
/* CE2F4 80117F34 46001080 */  add.s      $f2, $f2, $f0
/* CE2F8 80117F38 C6000004 */  lwc1       $f0, 0x4($s0)
/* CE2FC 80117F3C 46020000 */  add.s      $f0, $f0, $f2
/* CE300 80117F40 E6000004 */  swc1       $f0, 0x4($s0)
/* CE304 80117F44 C4820008 */  lwc1       $f2, 0x8($a0)
/* CE308 80117F48 C7A00050 */  lwc1       $f0, 0x50($sp)
/* CE30C 80117F4C 46001080 */  add.s      $f2, $f2, $f0
/* CE310 80117F50 C6000008 */  lwc1       $f0, 0x8($s0)
/* CE314 80117F54 46020000 */  add.s      $f0, $f0, $f2
/* CE318 80117F58 24C60001 */  addiu      $a2, $a2, 0x1
/* CE31C 80117F5C 08045F66 */  j          .Lrace_80117D98
/* CE320 80117F60 E6000008 */   swc1      $f0, 0x8($s0)
.Lrace_80117F64:
/* CE324 80117F64 08045EAE */  j          .Lrace_80117AB8
/* CE328 80117F68 24A50001 */   addiu     $a1, $a1, 0x1
.Lrace_80117F6C:
/* CE32C 80117F6C 44862000 */  mtc1       $a2, $f4
/* CE330 80117F70 46802120 */  cvt.s.w    $f4, $f4
/* CE334 80117F74 C6000000 */  lwc1       $f0, 0x0($s0)
/* CE338 80117F78 C6020008 */  lwc1       $f2, 0x8($s0)
/* CE33C 80117F7C 46040003 */  div.s      $f0, $f0, $f4
/* CE340 80117F80 E6000000 */  swc1       $f0, 0x0($s0)
/* CE344 80117F84 C6000004 */  lwc1       $f0, 0x4($s0)
/* CE348 80117F88 46041083 */  div.s      $f2, $f2, $f4
/* CE34C 80117F8C E6020008 */  swc1       $f2, 0x8($s0)
/* CE350 80117F90 46040003 */  div.s      $f0, $f0, $f4
/* CE354 80117F94 E6000004 */  swc1       $f0, 0x4($s0)
.Lrace_80117F98:
/* CE358 80117F98 8FBF0070 */  lw         $ra, 0x70($sp)
/* CE35C 80117F9C 8FB3006C */  lw         $s3, 0x6C($sp)
/* CE360 80117FA0 8FB20068 */  lw         $s2, 0x68($sp)
/* CE364 80117FA4 8FB10064 */  lw         $s1, 0x64($sp)
/* CE368 80117FA8 8FB00060 */  lw         $s0, 0x60($sp)
/* CE36C 80117FAC D7BC0098 */  ldc1       $f28, 0x98($sp)
/* CE370 80117FB0 D7BA0090 */  ldc1       $f26, 0x90($sp)
/* CE374 80117FB4 D7B80088 */  ldc1       $f24, 0x88($sp)
/* CE378 80117FB8 D7B60080 */  ldc1       $f22, 0x80($sp)
/* CE37C 80117FBC D7B40078 */  ldc1       $f20, 0x78($sp)
/* CE380 80117FC0 03E00008 */  jr         $ra
/* CE384 80117FC4 27BD00A0 */   addiu     $sp, $sp, 0xA0

glabel func_race_80117FC8
/* CE388 80117FC8 27BDFEB8 */  addiu      $sp, $sp, -0x148
/* CE38C 80117FCC AFB60128 */  sw         $s6, 0x128($sp)
/* CE390 80117FD0 0080B021 */  addu       $s6, $a0, $zero
/* CE394 80117FD4 AFB7012C */  sw         $s7, 0x12C($sp)
/* CE398 80117FD8 00A0B821 */  addu       $s7, $a1, $zero
/* CE39C 80117FDC AFB3011C */  sw         $s3, 0x11C($sp)
/* CE3A0 80117FE0 00C09821 */  addu       $s3, $a2, $zero
/* CE3A4 80117FE4 AFB20118 */  sw         $s2, 0x118($sp)
/* CE3A8 80117FE8 00E09021 */  addu       $s2, $a3, $zero
/* CE3AC 80117FEC AFBF0130 */  sw         $ra, 0x130($sp)
/* CE3B0 80117FF0 AFB50124 */  sw         $s5, 0x124($sp)
/* CE3B4 80117FF4 AFB40120 */  sw         $s4, 0x120($sp)
/* CE3B8 80117FF8 AFB10114 */  sw         $s1, 0x114($sp)
/* CE3BC 80117FFC AFB00110 */  sw         $s0, 0x110($sp)
/* CE3C0 80118000 F7B60140 */  sdc1       $f22, 0x140($sp)
/* CE3C4 80118004 F7B40138 */  sdc1       $f20, 0x138($sp)
/* CE3C8 80118008 8EC20000 */  lw         $v0, 0x0($s6)
/* CE3CC 8011800C 27B00028 */  addiu      $s0, $sp, 0x28
/* CE3D0 80118010 8C430024 */  lw         $v1, 0x24($v0)
/* CE3D4 80118014 84640090 */  lh         $a0, 0x90($v1)
/* CE3D8 80118018 8FB40158 */  lw         $s4, 0x158($sp)
/* CE3DC 8011801C 00442021 */  addu       $a0, $v0, $a0
/* CE3E0 80118020 8C620094 */  lw         $v0, 0x94($v1)
/* CE3E4 80118024 8FB5015C */  lw         $s5, 0x15C($sp)
/* CE3E8 80118028 0040F809 */  jalr       $v0
/* CE3EC 8011802C 02002821 */   addu      $a1, $s0, $zero
/* CE3F0 80118030 8EE30000 */  lw         $v1, 0x0($s7)
/* CE3F4 80118034 27B10078 */  addiu      $s1, $sp, 0x78
/* CE3F8 80118038 8C620024 */  lw         $v0, 0x24($v1)
/* CE3FC 8011803C 02202821 */  addu       $a1, $s1, $zero
/* CE400 80118040 84440090 */  lh         $a0, 0x90($v0)
/* CE404 80118044 8C420094 */  lw         $v0, 0x94($v0)
/* CE408 80118048 0040F809 */  jalr       $v0
/* CE40C 8011804C 00642021 */   addu      $a0, $v1, $a0
/* CE410 80118050 C6E0001C */  lwc1       $f0, 0x1C($s7)
/* CE414 80118054 C6C2001C */  lwc1       $f2, 0x1C($s6)
/* CE418 80118058 46020001 */  sub.s      $f0, $f0, $f2
/* CE41C 8011805C 26E3001C */  addiu      $v1, $s7, 0x1C
/* CE420 80118060 26C4001C */  addiu      $a0, $s6, 0x1C
/* CE424 80118064 E7A00018 */  swc1       $f0, 0x18($sp)
/* CE428 80118068 C4600004 */  lwc1       $f0, 0x4($v1)
/* CE42C 8011806C C4820004 */  lwc1       $f2, 0x4($a0)
/* CE430 80118070 46020001 */  sub.s      $f0, $f0, $f2
/* CE434 80118074 27A20018 */  addiu      $v0, $sp, 0x18
/* CE438 80118078 E4400004 */  swc1       $f0, 0x4($v0)
/* CE43C 8011807C C4600008 */  lwc1       $f0, 0x8($v1)
/* CE440 80118080 C4820008 */  lwc1       $f2, 0x8($a0)
/* CE444 80118084 46020001 */  sub.s      $f0, $f0, $f2
/* CE448 80118088 E4400008 */  swc1       $f0, 0x8($v0)
/* CE44C 8011808C AFA20010 */  sw         $v0, 0x10($sp)
/* CE450 80118090 8FA40018 */  lw         $a0, 0x18($sp)
/* CE454 80118094 8FA5001C */  lw         $a1, 0x1C($sp)
/* CE458 80118098 8FA60020 */  lw         $a2, 0x20($sp)
/* CE45C 8011809C 0C0014BD */  jal        func_800052F4
/* CE460 801180A0 02003821 */   addu      $a3, $s0, $zero
/* CE464 801180A4 02202021 */  addu       $a0, $s1, $zero
/* CE468 801180A8 02002821 */  addu       $a1, $s0, $zero
/* CE46C 801180AC 0C0014E6 */  jal        func_80005398
/* CE470 801180B0 27A60050 */   addiu     $a2, $sp, 0x50
/* CE474 801180B4 C6C000D0 */  lwc1       $f0, 0xD0($s6)
/* CE478 801180B8 3C01800D */  lui        $at, %hi(D_race_800CDFC4)
/* CE47C 801180BC C422DFC4 */  lwc1       $f2, %lo(D_race_800CDFC4)($at)
/* CE480 801180C0 46020502 */  mul.s      $f20, $f0, $f2
/* CE484 801180C4 C6C000D4 */  lwc1       $f0, 0xD4($s6)
/* CE488 801180C8 46020582 */  mul.s      $f22, $f0, $f2
/* CE48C 801180CC C6C000D8 */  lwc1       $f0, 0xD8($s6)
/* CE490 801180D0 46020302 */  mul.s      $f12, $f0, $f2
/* CE494 801180D4 C6C200DC */  lwc1       $f2, 0xDC($s6)
/* CE498 801180D8 3C01800D */  lui        $at, %hi(D_race_800CDFC8)
/* CE49C 801180DC C420DFC8 */  lwc1       $f0, %lo(D_race_800CDFC8)($at)
/* CE4A0 801180E0 46001032 */  c.eq.s     $f2, $f0
/* CE4A4 801180E4 00000000 */  nop
/* CE4A8 801180E8 4501000B */  bc1t       .Lrace_80118118
/* CE4AC 801180EC 2410FFFF */   addiu     $s0, $zero, -0x1
/* CE4B0 801180F0 44800000 */  mtc1       $zero, $f0
/* CE4B4 801180F4 46001032 */  c.eq.s     $f2, $f0
/* CE4B8 801180F8 00000000 */  nop
/* CE4BC 801180FC 4501042D */  bc1t       .Lrace_801191B4
/* CE4C0 80118100 00001021 */   addu      $v0, $zero, $zero
/* CE4C4 80118104 4602A502 */  mul.s      $f20, $f20, $f2
/* CE4C8 80118108 00000000 */  nop
/* CE4CC 8011810C 4602B582 */  mul.s      $f22, $f22, $f2
/* CE4D0 80118110 00000000 */  nop
/* CE4D4 80118114 46026302 */  mul.s      $f12, $f12, $f2
.Lrace_80118118:
/* CE4D8 80118118 C6E000D0 */  lwc1       $f0, 0xD0($s7)
/* CE4DC 8011811C 3C01800D */  lui        $at, %hi(D_race_800CDFCC)
/* CE4E0 80118120 C422DFCC */  lwc1       $f2, %lo(D_race_800CDFCC)($at)
/* CE4E4 80118124 46020402 */  mul.s      $f16, $f0, $f2
/* CE4E8 80118128 C6E000D4 */  lwc1       $f0, 0xD4($s7)
/* CE4EC 8011812C 46020482 */  mul.s      $f18, $f0, $f2
/* CE4F0 80118130 C6E000D8 */  lwc1       $f0, 0xD8($s7)
/* CE4F4 80118134 46020382 */  mul.s      $f14, $f0, $f2
/* CE4F8 80118138 C6E200DC */  lwc1       $f2, 0xDC($s7)
/* CE4FC 8011813C 3C01800D */  lui        $at, %hi(D_race_800CDFD0)
/* CE500 80118140 C420DFD0 */  lwc1       $f0, %lo(D_race_800CDFD0)($at)
/* CE504 80118144 46001032 */  c.eq.s     $f2, $f0
/* CE508 80118148 00000000 */  nop
/* CE50C 8011814C 4501000B */  bc1t       .Lrace_8011817C
/* CE510 80118150 00000000 */   nop
/* CE514 80118154 44800000 */  mtc1       $zero, $f0
/* CE518 80118158 46001032 */  c.eq.s     $f2, $f0
/* CE51C 8011815C 00000000 */  nop
/* CE520 80118160 45010414 */  bc1t       .Lrace_801191B4
/* CE524 80118164 00001021 */   addu      $v0, $zero, $zero
/* CE528 80118168 46028402 */  mul.s      $f16, $f16, $f2
/* CE52C 8011816C 00000000 */  nop
/* CE530 80118170 46029482 */  mul.s      $f18, $f18, $f2
/* CE534 80118174 00000000 */  nop
/* CE538 80118178 46027382 */  mul.s      $f14, $f14, $f2
.Lrace_8011817C:
/* CE53C 8011817C C7A00050 */  lwc1       $f0, 0x50($sp)
/* CE540 80118180 44802000 */  mtc1       $zero, $f4
/* CE544 80118184 46000086 */  mov.s      $f2, $f0
/* CE548 80118188 4604103C */  c.lt.s     $f2, $f4
/* CE54C 8011818C 00000000 */  nop
/* CE550 80118190 45030001 */  bc1tl      .Lrace_80118198
/* CE554 80118194 46001087 */   neg.s     $f2, $f2
.Lrace_80118198:
/* CE558 80118198 C7A00054 */  lwc1       $f0, 0x54($sp)
/* CE55C 8011819C E7A20078 */  swc1       $f2, 0x78($sp)
/* CE560 801181A0 46000086 */  mov.s      $f2, $f0
/* CE564 801181A4 4604103C */  c.lt.s     $f2, $f4
/* CE568 801181A8 00000000 */  nop
/* CE56C 801181AC 45030001 */  bc1tl      .Lrace_801181B4
/* CE570 801181B0 46001087 */   neg.s     $f2, $f2
.Lrace_801181B4:
/* CE574 801181B4 C7A00058 */  lwc1       $f0, 0x58($sp)
/* CE578 801181B8 E7A2007C */  swc1       $f2, 0x7C($sp)
/* CE57C 801181BC 46000086 */  mov.s      $f2, $f0
/* CE580 801181C0 4604103C */  c.lt.s     $f2, $f4
/* CE584 801181C4 00000000 */  nop
/* CE588 801181C8 45030001 */  bc1tl      .Lrace_801181D0
/* CE58C 801181CC 46001087 */   neg.s     $f2, $f2
.Lrace_801181D0:
/* CE590 801181D0 C7A0005C */  lwc1       $f0, 0x5C($sp)
/* CE594 801181D4 E7A20080 */  swc1       $f2, 0x80($sp)
/* CE598 801181D8 46000086 */  mov.s      $f2, $f0
/* CE59C 801181DC 4604103C */  c.lt.s     $f2, $f4
/* CE5A0 801181E0 00000000 */  nop
/* CE5A4 801181E4 45030001 */  bc1tl      .Lrace_801181EC
/* CE5A8 801181E8 46001087 */   neg.s     $f2, $f2
.Lrace_801181EC:
/* CE5AC 801181EC C7A00060 */  lwc1       $f0, 0x60($sp)
/* CE5B0 801181F0 E7A20084 */  swc1       $f2, 0x84($sp)
/* CE5B4 801181F4 46000086 */  mov.s      $f2, $f0
/* CE5B8 801181F8 4604103C */  c.lt.s     $f2, $f4
/* CE5BC 801181FC 00000000 */  nop
/* CE5C0 80118200 45030001 */  bc1tl      .Lrace_80118208
/* CE5C4 80118204 46001087 */   neg.s     $f2, $f2
.Lrace_80118208:
/* CE5C8 80118208 C7A00064 */  lwc1       $f0, 0x64($sp)
/* CE5CC 8011820C E7A20088 */  swc1       $f2, 0x88($sp)
/* CE5D0 80118210 46000086 */  mov.s      $f2, $f0
/* CE5D4 80118214 4604103C */  c.lt.s     $f2, $f4
/* CE5D8 80118218 00000000 */  nop
/* CE5DC 8011821C 45030001 */  bc1tl      .Lrace_80118224
/* CE5E0 80118220 46001087 */   neg.s     $f2, $f2
.Lrace_80118224:
/* CE5E4 80118224 C7A00068 */  lwc1       $f0, 0x68($sp)
/* CE5E8 80118228 E7A2008C */  swc1       $f2, 0x8C($sp)
/* CE5EC 8011822C 46000086 */  mov.s      $f2, $f0
/* CE5F0 80118230 4604103C */  c.lt.s     $f2, $f4
/* CE5F4 80118234 00000000 */  nop
/* CE5F8 80118238 45030001 */  bc1tl      .Lrace_80118240
/* CE5FC 8011823C 46001087 */   neg.s     $f2, $f2
.Lrace_80118240:
/* CE600 80118240 C7A0006C */  lwc1       $f0, 0x6C($sp)
/* CE604 80118244 E7A20090 */  swc1       $f2, 0x90($sp)
/* CE608 80118248 46000086 */  mov.s      $f2, $f0
/* CE60C 8011824C 4604103C */  c.lt.s     $f2, $f4
/* CE610 80118250 00000000 */  nop
/* CE614 80118254 45030001 */  bc1tl      .Lrace_8011825C
/* CE618 80118258 46001087 */   neg.s     $f2, $f2
.Lrace_8011825C:
/* CE61C 8011825C C7A00070 */  lwc1       $f0, 0x70($sp)
/* CE620 80118260 E7A20094 */  swc1       $f2, 0x94($sp)
/* CE624 80118264 46000086 */  mov.s      $f2, $f0
/* CE628 80118268 4604103C */  c.lt.s     $f2, $f4
/* CE62C 8011826C 00000000 */  nop
/* CE630 80118270 45030001 */  bc1tl      .Lrace_80118278
/* CE634 80118274 46001087 */   neg.s     $f2, $f2
.Lrace_80118278:
/* CE638 80118278 3C01800D */  lui        $at, %hi(D_race_800CDFD4)
/* CE63C 8011827C C420DFD4 */  lwc1       $f0, %lo(D_race_800CDFD4)($at)
/* CE640 80118280 E7A20098 */  swc1       $f2, 0x98($sp)
/* CE644 80118284 E6600000 */  swc1       $f0, 0x0($s3)
/* CE648 80118288 E6440000 */  swc1       $f4, 0x0($s2)
/* CE64C 8011828C E6440004 */  swc1       $f4, 0x4($s2)
/* CE650 80118290 E6440008 */  swc1       $f4, 0x8($s2)
/* CE654 80118294 C7A00018 */  lwc1       $f0, 0x18($sp)
/* CE658 80118298 46000206 */  mov.s      $f8, $f0
/* CE65C 8011829C 4604403C */  c.lt.s     $f8, $f4
/* CE660 801182A0 00000000 */  nop
/* CE664 801182A4 45030001 */  bc1tl      .Lrace_801182AC
/* CE668 801182A8 46004207 */   neg.s     $f8, $f8
.Lrace_801182AC:
/* CE66C 801182AC C7A40078 */  lwc1       $f4, 0x78($sp)
/* CE670 801182B0 46048102 */  mul.s      $f4, $f16, $f4
/* CE674 801182B4 C7A20084 */  lwc1       $f2, 0x84($sp)
/* CE678 801182B8 46029082 */  mul.s      $f2, $f18, $f2
/* CE67C 801182BC C7A00090 */  lwc1       $f0, 0x90($sp)
/* CE680 801182C0 46007002 */  mul.s      $f0, $f14, $f0
/* CE684 801182C4 46022100 */  add.s      $f4, $f4, $f2
/* CE688 801182C8 46002080 */  add.s      $f2, $f4, $f0
/* CE68C 801182CC 4600A186 */  mov.s      $f6, $f20
/* CE690 801182D0 46023280 */  add.s      $f10, $f6, $f2
/* CE694 801182D4 4608503C */  c.lt.s     $f10, $f8
/* CE698 801182D8 00000000 */  nop
/* CE69C 801182DC 450103B5 */  bc1t       .Lrace_801191B4
/* CE6A0 801182E0 00001021 */   addu      $v0, $zero, $zero
/* CE6A4 801182E4 46085101 */  sub.s      $f4, $f10, $f8
/* CE6A8 801182E8 C6600000 */  lwc1       $f0, 0x0($s3)
/* CE6AC 801182EC 4600203C */  c.lt.s     $f4, $f0
/* CE6B0 801182F0 00000000 */  nop
/* CE6B4 801182F4 4500000B */  bc1f       .Lrace_80118324
/* CE6B8 801182F8 00000000 */   nop
/* CE6BC 801182FC E6640000 */  swc1       $f4, 0x0($s3)
/* CE6C0 80118300 12800003 */  beqz       $s4, .Lrace_80118310
/* CE6C4 80118304 00008021 */   addu      $s0, $zero, $zero
/* CE6C8 80118308 46043001 */  sub.s      $f0, $f6, $f4
/* CE6CC 8011830C E6800000 */  swc1       $f0, 0x0($s4)
.Lrace_80118310:
/* CE6D0 80118310 12A00004 */  beqz       $s5, .Lrace_80118324
/* CE6D4 80118314 00000000 */   nop
/* CE6D8 80118318 C6600000 */  lwc1       $f0, 0x0($s3)
/* CE6DC 8011831C 46001001 */  sub.s      $f0, $f2, $f0
/* CE6E0 80118320 E6A00000 */  swc1       $f0, 0x0($s5)
.Lrace_80118324:
/* CE6E4 80118324 C7A00018 */  lwc1       $f0, 0x18($sp)
/* CE6E8 80118328 C7A20050 */  lwc1       $f2, 0x50($sp)
/* CE6EC 8011832C 46020002 */  mul.s      $f0, $f0, $f2
/* CE6F0 80118330 C7A6001C */  lwc1       $f6, 0x1C($sp)
/* CE6F4 80118334 C7A20054 */  lwc1       $f2, 0x54($sp)
/* CE6F8 80118338 46023182 */  mul.s      $f6, $f6, $f2
/* CE6FC 8011833C C7A40058 */  lwc1       $f4, 0x58($sp)
/* CE700 80118340 C7A20020 */  lwc1       $f2, 0x20($sp)
/* CE704 80118344 46041082 */  mul.s      $f2, $f2, $f4
/* CE708 80118348 46060000 */  add.s      $f0, $f0, $f6
/* CE70C 8011834C 46020000 */  add.s      $f0, $f0, $f2
/* CE710 80118350 44801000 */  mtc1       $zero, $f2
/* CE714 80118354 46000206 */  mov.s      $f8, $f0
/* CE718 80118358 4602403C */  c.lt.s     $f8, $f2
/* CE71C 8011835C 00000000 */  nop
/* CE720 80118360 45030001 */  bc1tl      .Lrace_80118368
/* CE724 80118364 46004207 */   neg.s     $f8, $f8
.Lrace_80118368:
/* CE728 80118368 C7A40078 */  lwc1       $f4, 0x78($sp)
/* CE72C 8011836C 4604A102 */  mul.s      $f4, $f20, $f4
/* CE730 80118370 C7A2007C */  lwc1       $f2, 0x7C($sp)
/* CE734 80118374 4602B082 */  mul.s      $f2, $f22, $f2
/* CE738 80118378 C7A00080 */  lwc1       $f0, 0x80($sp)
/* CE73C 8011837C 46006002 */  mul.s      $f0, $f12, $f0
/* CE740 80118380 46022100 */  add.s      $f4, $f4, $f2
/* CE744 80118384 46002080 */  add.s      $f2, $f4, $f0
/* CE748 80118388 46008186 */  mov.s      $f6, $f16
/* CE74C 8011838C 46023280 */  add.s      $f10, $f6, $f2
/* CE750 80118390 4608503C */  c.lt.s     $f10, $f8
/* CE754 80118394 00000000 */  nop
/* CE758 80118398 45010386 */  bc1t       .Lrace_801191B4
/* CE75C 8011839C 00001021 */   addu      $v0, $zero, $zero
/* CE760 801183A0 46085101 */  sub.s      $f4, $f10, $f8
/* CE764 801183A4 C6600000 */  lwc1       $f0, 0x0($s3)
/* CE768 801183A8 4600203C */  c.lt.s     $f4, $f0
/* CE76C 801183AC 00000000 */  nop
/* CE770 801183B0 4500000B */  bc1f       .Lrace_801183E0
/* CE774 801183B4 00000000 */   nop
/* CE778 801183B8 E6640000 */  swc1       $f4, 0x0($s3)
/* CE77C 801183BC 12800003 */  beqz       $s4, .Lrace_801183CC
/* CE780 801183C0 24100001 */   addiu     $s0, $zero, 0x1
/* CE784 801183C4 46043001 */  sub.s      $f0, $f6, $f4
/* CE788 801183C8 E6800000 */  swc1       $f0, 0x0($s4)
.Lrace_801183CC:
/* CE78C 801183CC 12A00004 */  beqz       $s5, .Lrace_801183E0
/* CE790 801183D0 00000000 */   nop
/* CE794 801183D4 C6600000 */  lwc1       $f0, 0x0($s3)
/* CE798 801183D8 46001001 */  sub.s      $f0, $f2, $f0
/* CE79C 801183DC E6A00000 */  swc1       $f0, 0x0($s5)
.Lrace_801183E0:
/* CE7A0 801183E0 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* CE7A4 801183E4 44801000 */  mtc1       $zero, $f2
/* CE7A8 801183E8 46000206 */  mov.s      $f8, $f0
/* CE7AC 801183EC 4602403C */  c.lt.s     $f8, $f2
/* CE7B0 801183F0 00000000 */  nop
/* CE7B4 801183F4 45030001 */  bc1tl      .Lrace_801183FC
/* CE7B8 801183F8 46004207 */   neg.s     $f8, $f8
.Lrace_801183FC:
/* CE7BC 801183FC C7A4007C */  lwc1       $f4, 0x7C($sp)
/* CE7C0 80118400 46048102 */  mul.s      $f4, $f16, $f4
/* CE7C4 80118404 C7A20088 */  lwc1       $f2, 0x88($sp)
/* CE7C8 80118408 46029082 */  mul.s      $f2, $f18, $f2
/* CE7CC 8011840C C7A00094 */  lwc1       $f0, 0x94($sp)
/* CE7D0 80118410 46007002 */  mul.s      $f0, $f14, $f0
/* CE7D4 80118414 46022100 */  add.s      $f4, $f4, $f2
/* CE7D8 80118418 46002080 */  add.s      $f2, $f4, $f0
/* CE7DC 8011841C 4600B186 */  mov.s      $f6, $f22
/* CE7E0 80118420 46023280 */  add.s      $f10, $f6, $f2
/* CE7E4 80118424 4608503C */  c.lt.s     $f10, $f8
/* CE7E8 80118428 00000000 */  nop
/* CE7EC 8011842C 45010361 */  bc1t       .Lrace_801191B4
/* CE7F0 80118430 00001021 */   addu      $v0, $zero, $zero
/* CE7F4 80118434 46085101 */  sub.s      $f4, $f10, $f8
/* CE7F8 80118438 C6600000 */  lwc1       $f0, 0x0($s3)
/* CE7FC 8011843C 4600203C */  c.lt.s     $f4, $f0
/* CE800 80118440 00000000 */  nop
/* CE804 80118444 4500000B */  bc1f       .Lrace_80118474
/* CE808 80118448 00000000 */   nop
/* CE80C 8011844C E6640000 */  swc1       $f4, 0x0($s3)
/* CE810 80118450 12800003 */  beqz       $s4, .Lrace_80118460
/* CE814 80118454 24100002 */   addiu     $s0, $zero, 0x2
/* CE818 80118458 46043001 */  sub.s      $f0, $f6, $f4
/* CE81C 8011845C E6800000 */  swc1       $f0, 0x0($s4)
.Lrace_80118460:
/* CE820 80118460 12A00004 */  beqz       $s5, .Lrace_80118474
/* CE824 80118464 00000000 */   nop
/* CE828 80118468 C6600000 */  lwc1       $f0, 0x0($s3)
/* CE82C 8011846C 46001001 */  sub.s      $f0, $f2, $f0
/* CE830 80118470 E6A00000 */  swc1       $f0, 0x0($s5)
.Lrace_80118474:
/* CE834 80118474 C7A00020 */  lwc1       $f0, 0x20($sp)
/* CE838 80118478 44801000 */  mtc1       $zero, $f2
/* CE83C 8011847C 46000206 */  mov.s      $f8, $f0
/* CE840 80118480 4602403C */  c.lt.s     $f8, $f2
/* CE844 80118484 00000000 */  nop
/* CE848 80118488 45030001 */  bc1tl      .Lrace_80118490
/* CE84C 8011848C 46004207 */   neg.s     $f8, $f8
.Lrace_80118490:
/* CE850 80118490 C7A40080 */  lwc1       $f4, 0x80($sp)
/* CE854 80118494 46048102 */  mul.s      $f4, $f16, $f4
/* CE858 80118498 C7A2008C */  lwc1       $f2, 0x8C($sp)
/* CE85C 8011849C 46029082 */  mul.s      $f2, $f18, $f2
/* CE860 801184A0 C7A00098 */  lwc1       $f0, 0x98($sp)
/* CE864 801184A4 46007002 */  mul.s      $f0, $f14, $f0
/* CE868 801184A8 46022100 */  add.s      $f4, $f4, $f2
/* CE86C 801184AC 46002080 */  add.s      $f2, $f4, $f0
/* CE870 801184B0 46006186 */  mov.s      $f6, $f12
/* CE874 801184B4 46023280 */  add.s      $f10, $f6, $f2
/* CE878 801184B8 4608503C */  c.lt.s     $f10, $f8
/* CE87C 801184BC 00000000 */  nop
/* CE880 801184C0 4501033C */  bc1t       .Lrace_801191B4
/* CE884 801184C4 00001021 */   addu      $v0, $zero, $zero
/* CE888 801184C8 46085101 */  sub.s      $f4, $f10, $f8
/* CE88C 801184CC C6600000 */  lwc1       $f0, 0x0($s3)
/* CE890 801184D0 4600203C */  c.lt.s     $f4, $f0
/* CE894 801184D4 00000000 */  nop
/* CE898 801184D8 4500000B */  bc1f       .Lrace_80118508
/* CE89C 801184DC 00000000 */   nop
/* CE8A0 801184E0 E6640000 */  swc1       $f4, 0x0($s3)
/* CE8A4 801184E4 12800003 */  beqz       $s4, .Lrace_801184F4
/* CE8A8 801184E8 24100003 */   addiu     $s0, $zero, 0x3
/* CE8AC 801184EC 46043001 */  sub.s      $f0, $f6, $f4
/* CE8B0 801184F0 E6800000 */  swc1       $f0, 0x0($s4)
.Lrace_801184F4:
/* CE8B4 801184F4 12A00004 */  beqz       $s5, .Lrace_80118508
/* CE8B8 801184F8 00000000 */   nop
/* CE8BC 801184FC C6600000 */  lwc1       $f0, 0x0($s3)
/* CE8C0 80118500 46001001 */  sub.s      $f0, $f2, $f0
/* CE8C4 80118504 E6A00000 */  swc1       $f0, 0x0($s5)
.Lrace_80118508:
/* CE8C8 80118508 C7A00018 */  lwc1       $f0, 0x18($sp)
/* CE8CC 8011850C C7A2005C */  lwc1       $f2, 0x5C($sp)
/* CE8D0 80118510 46020002 */  mul.s      $f0, $f0, $f2
/* CE8D4 80118514 C7A6001C */  lwc1       $f6, 0x1C($sp)
/* CE8D8 80118518 C7A20060 */  lwc1       $f2, 0x60($sp)
/* CE8DC 8011851C 46023182 */  mul.s      $f6, $f6, $f2
/* CE8E0 80118520 C7A40064 */  lwc1       $f4, 0x64($sp)
/* CE8E4 80118524 C7A20020 */  lwc1       $f2, 0x20($sp)
/* CE8E8 80118528 46041082 */  mul.s      $f2, $f2, $f4
/* CE8EC 8011852C 46060000 */  add.s      $f0, $f0, $f6
/* CE8F0 80118530 46020000 */  add.s      $f0, $f0, $f2
/* CE8F4 80118534 44801000 */  mtc1       $zero, $f2
/* CE8F8 80118538 46000206 */  mov.s      $f8, $f0
/* CE8FC 8011853C 4602403C */  c.lt.s     $f8, $f2
/* CE900 80118540 00000000 */  nop
/* CE904 80118544 45030001 */  bc1tl      .Lrace_8011854C
/* CE908 80118548 46004207 */   neg.s     $f8, $f8
.Lrace_8011854C:
/* CE90C 8011854C C7A40084 */  lwc1       $f4, 0x84($sp)
/* CE910 80118550 4604A102 */  mul.s      $f4, $f20, $f4
/* CE914 80118554 C7A20088 */  lwc1       $f2, 0x88($sp)
/* CE918 80118558 4602B082 */  mul.s      $f2, $f22, $f2
/* CE91C 8011855C C7A0008C */  lwc1       $f0, 0x8C($sp)
/* CE920 80118560 46006002 */  mul.s      $f0, $f12, $f0
/* CE924 80118564 46022100 */  add.s      $f4, $f4, $f2
/* CE928 80118568 46002080 */  add.s      $f2, $f4, $f0
/* CE92C 8011856C 46009186 */  mov.s      $f6, $f18
/* CE930 80118570 46023280 */  add.s      $f10, $f6, $f2
/* CE934 80118574 4608503C */  c.lt.s     $f10, $f8
/* CE938 80118578 00000000 */  nop
/* CE93C 8011857C 4501030D */  bc1t       .Lrace_801191B4
/* CE940 80118580 00001021 */   addu      $v0, $zero, $zero
/* CE944 80118584 46085101 */  sub.s      $f4, $f10, $f8
/* CE948 80118588 C6600000 */  lwc1       $f0, 0x0($s3)
/* CE94C 8011858C 4600203C */  c.lt.s     $f4, $f0
/* CE950 80118590 00000000 */  nop
/* CE954 80118594 4500000B */  bc1f       .Lrace_801185C4
/* CE958 80118598 00000000 */   nop
/* CE95C 8011859C E6640000 */  swc1       $f4, 0x0($s3)
/* CE960 801185A0 12800003 */  beqz       $s4, .Lrace_801185B0
/* CE964 801185A4 24100004 */   addiu     $s0, $zero, 0x4
/* CE968 801185A8 46043001 */  sub.s      $f0, $f6, $f4
/* CE96C 801185AC E6800000 */  swc1       $f0, 0x0($s4)
.Lrace_801185B0:
/* CE970 801185B0 12A00004 */  beqz       $s5, .Lrace_801185C4
/* CE974 801185B4 00000000 */   nop
/* CE978 801185B8 C6600000 */  lwc1       $f0, 0x0($s3)
/* CE97C 801185BC 46001001 */  sub.s      $f0, $f2, $f0
/* CE980 801185C0 E6A00000 */  swc1       $f0, 0x0($s5)
.Lrace_801185C4:
/* CE984 801185C4 C7A00018 */  lwc1       $f0, 0x18($sp)
/* CE988 801185C8 C7A20068 */  lwc1       $f2, 0x68($sp)
/* CE98C 801185CC 46020002 */  mul.s      $f0, $f0, $f2
/* CE990 801185D0 C7A6001C */  lwc1       $f6, 0x1C($sp)
/* CE994 801185D4 C7A2006C */  lwc1       $f2, 0x6C($sp)
/* CE998 801185D8 46023182 */  mul.s      $f6, $f6, $f2
/* CE99C 801185DC C7A40070 */  lwc1       $f4, 0x70($sp)
/* CE9A0 801185E0 C7A20020 */  lwc1       $f2, 0x20($sp)
/* CE9A4 801185E4 46041082 */  mul.s      $f2, $f2, $f4
/* CE9A8 801185E8 46060000 */  add.s      $f0, $f0, $f6
/* CE9AC 801185EC 46020000 */  add.s      $f0, $f0, $f2
/* CE9B0 801185F0 44801000 */  mtc1       $zero, $f2
/* CE9B4 801185F4 46000206 */  mov.s      $f8, $f0
/* CE9B8 801185F8 4602403C */  c.lt.s     $f8, $f2
/* CE9BC 801185FC 00000000 */  nop
/* CE9C0 80118600 45030001 */  bc1tl      .Lrace_80118608
/* CE9C4 80118604 46004207 */   neg.s     $f8, $f8
.Lrace_80118608:
/* CE9C8 80118608 C7A40090 */  lwc1       $f4, 0x90($sp)
/* CE9CC 8011860C 4604A102 */  mul.s      $f4, $f20, $f4
/* CE9D0 80118610 C7A20094 */  lwc1       $f2, 0x94($sp)
/* CE9D4 80118614 4602B082 */  mul.s      $f2, $f22, $f2
/* CE9D8 80118618 C7A00098 */  lwc1       $f0, 0x98($sp)
/* CE9DC 8011861C 46006002 */  mul.s      $f0, $f12, $f0
/* CE9E0 80118620 46022100 */  add.s      $f4, $f4, $f2
/* CE9E4 80118624 46002080 */  add.s      $f2, $f4, $f0
/* CE9E8 80118628 46007186 */  mov.s      $f6, $f14
/* CE9EC 8011862C 46023280 */  add.s      $f10, $f6, $f2
/* CE9F0 80118630 4608503C */  c.lt.s     $f10, $f8
/* CE9F4 80118634 00000000 */  nop
/* CE9F8 80118638 450102DE */  bc1t       .Lrace_801191B4
/* CE9FC 8011863C 00001021 */   addu      $v0, $zero, $zero
/* CEA00 80118640 46085101 */  sub.s      $f4, $f10, $f8
/* CEA04 80118644 C6600000 */  lwc1       $f0, 0x0($s3)
/* CEA08 80118648 4600203C */  c.lt.s     $f4, $f0
/* CEA0C 8011864C 00000000 */  nop
/* CEA10 80118650 4500000B */  bc1f       .Lrace_80118680
/* CEA14 80118654 00000000 */   nop
/* CEA18 80118658 E6640000 */  swc1       $f4, 0x0($s3)
/* CEA1C 8011865C 12800003 */  beqz       $s4, .Lrace_8011866C
/* CEA20 80118660 24100005 */   addiu     $s0, $zero, 0x5
/* CEA24 80118664 46043001 */  sub.s      $f0, $f6, $f4
/* CEA28 80118668 E6800000 */  swc1       $f0, 0x0($s4)
.Lrace_8011866C:
/* CEA2C 8011866C 12A00004 */  beqz       $s5, .Lrace_80118680
/* CEA30 80118670 00000000 */   nop
/* CEA34 80118674 C6600000 */  lwc1       $f0, 0x0($s3)
/* CEA38 80118678 46001001 */  sub.s      $f0, $f2, $f0
/* CEA3C 8011867C E6A00000 */  swc1       $f0, 0x0($s5)
.Lrace_80118680:
/* CEA40 80118680 C7A60080 */  lwc1       $f6, 0x80($sp)
/* CEA44 80118684 4606B182 */  mul.s      $f6, $f22, $f6
/* CEA48 80118688 C7A4007C */  lwc1       $f4, 0x7C($sp)
/* CEA4C 8011868C 46046102 */  mul.s      $f4, $f12, $f4
/* CEA50 80118690 C7A20090 */  lwc1       $f2, 0x90($sp)
/* CEA54 80118694 46029082 */  mul.s      $f2, $f18, $f2
/* CEA58 80118698 C7A00084 */  lwc1       $f0, 0x84($sp)
/* CEA5C 8011869C 46007002 */  mul.s      $f0, $f14, $f0
/* CEA60 801186A0 46043180 */  add.s      $f6, $f6, $f4
/* CEA64 801186A4 46001080 */  add.s      $f2, $f2, $f0
/* CEA68 801186A8 46023280 */  add.s      $f10, $f6, $f2
/* CEA6C 801186AC 3C01800D */  lui        $at, %hi(D_race_800CDFD8)
/* CEA70 801186B0 C420DFD8 */  lwc1       $f0, %lo(D_race_800CDFD8)($at)
/* CEA74 801186B4 4600503C */  c.lt.s     $f10, $f0
/* CEA78 801186B8 00000000 */  nop
/* CEA7C 801186BC 45000007 */  bc1f       .Lrace_801186DC
/* CEA80 801186C0 00001021 */   addu      $v0, $zero, $zero
/* CEA84 801186C4 3C01800D */  lui        $at, %hi(D_race_800CDFDC)
/* CEA88 801186C8 C420DFDC */  lwc1       $f0, %lo(D_race_800CDFDC)($at)
/* CEA8C 801186CC 460A003C */  c.lt.s     $f0, $f10
/* CEA90 801186D0 00000000 */  nop
/* CEA94 801186D4 45030001 */  bc1tl      .Lrace_801186DC
/* CEA98 801186D8 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_801186DC:
/* CEA9C 801186DC 14400012 */  bnez       $v0, .Lrace_80118728
/* CEAA0 801186E0 00000000 */   nop
/* CEAA4 801186E4 C7A40020 */  lwc1       $f4, 0x20($sp)
/* CEAA8 801186E8 C7A00054 */  lwc1       $f0, 0x54($sp)
/* CEAAC 801186EC 46002102 */  mul.s      $f4, $f4, $f0
/* CEAB0 801186F0 C7A20058 */  lwc1       $f2, 0x58($sp)
/* CEAB4 801186F4 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* CEAB8 801186F8 46020002 */  mul.s      $f0, $f0, $f2
/* CEABC 801186FC 46002101 */  sub.s      $f4, $f4, $f0
/* CEAC0 80118700 44800000 */  mtc1       $zero, $f0
/* CEAC4 80118704 46002206 */  mov.s      $f8, $f4
/* CEAC8 80118708 4600203C */  c.lt.s     $f4, $f0
/* CEACC 8011870C 00000000 */  nop
/* CEAD0 80118710 45030001 */  bc1tl      .Lrace_80118718
/* CEAD4 80118714 46004207 */   neg.s     $f8, $f8
.Lrace_80118718:
/* CEAD8 80118718 4608503C */  c.lt.s     $f10, $f8
/* CEADC 8011871C 00000000 */  nop
/* CEAE0 80118720 450102A4 */  bc1t       .Lrace_801191B4
/* CEAE4 80118724 00001021 */   addu      $v0, $zero, $zero
.Lrace_80118728:
/* CEAE8 80118728 C7A6008C */  lwc1       $f6, 0x8C($sp)
/* CEAEC 8011872C 4606B182 */  mul.s      $f6, $f22, $f6
/* CEAF0 80118730 C7A40088 */  lwc1       $f4, 0x88($sp)
/* CEAF4 80118734 46046102 */  mul.s      $f4, $f12, $f4
/* CEAF8 80118738 C7A20090 */  lwc1       $f2, 0x90($sp)
/* CEAFC 8011873C 46028082 */  mul.s      $f2, $f16, $f2
/* CEB00 80118740 C7A00078 */  lwc1       $f0, 0x78($sp)
/* CEB04 80118744 46007002 */  mul.s      $f0, $f14, $f0
/* CEB08 80118748 46043180 */  add.s      $f6, $f6, $f4
/* CEB0C 8011874C 46001080 */  add.s      $f2, $f2, $f0
/* CEB10 80118750 46023280 */  add.s      $f10, $f6, $f2
/* CEB14 80118754 3C01800D */  lui        $at, %hi(D_race_800CDFE0)
/* CEB18 80118758 C420DFE0 */  lwc1       $f0, %lo(D_race_800CDFE0)($at)
/* CEB1C 8011875C 4600503C */  c.lt.s     $f10, $f0
/* CEB20 80118760 00000000 */  nop
/* CEB24 80118764 45000007 */  bc1f       .Lrace_80118784
/* CEB28 80118768 00001021 */   addu      $v0, $zero, $zero
/* CEB2C 8011876C 3C01800D */  lui        $at, %hi(D_race_800CDFE4)
/* CEB30 80118770 C420DFE4 */  lwc1       $f0, %lo(D_race_800CDFE4)($at)
/* CEB34 80118774 460A003C */  c.lt.s     $f0, $f10
/* CEB38 80118778 00000000 */  nop
/* CEB3C 8011877C 45030001 */  bc1tl      .Lrace_80118784
/* CEB40 80118780 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_80118784:
/* CEB44 80118784 14400012 */  bnez       $v0, .Lrace_801187D0
/* CEB48 80118788 00000000 */   nop
/* CEB4C 8011878C C7A40020 */  lwc1       $f4, 0x20($sp)
/* CEB50 80118790 C7A00060 */  lwc1       $f0, 0x60($sp)
/* CEB54 80118794 46002102 */  mul.s      $f4, $f4, $f0
/* CEB58 80118798 C7A20064 */  lwc1       $f2, 0x64($sp)
/* CEB5C 8011879C C7A0001C */  lwc1       $f0, 0x1C($sp)
/* CEB60 801187A0 46020002 */  mul.s      $f0, $f0, $f2
/* CEB64 801187A4 46002101 */  sub.s      $f4, $f4, $f0
/* CEB68 801187A8 44800000 */  mtc1       $zero, $f0
/* CEB6C 801187AC 46002206 */  mov.s      $f8, $f4
/* CEB70 801187B0 4600203C */  c.lt.s     $f4, $f0
/* CEB74 801187B4 00000000 */  nop
/* CEB78 801187B8 45030001 */  bc1tl      .Lrace_801187C0
/* CEB7C 801187BC 46004207 */   neg.s     $f8, $f8
.Lrace_801187C0:
/* CEB80 801187C0 4608503C */  c.lt.s     $f10, $f8
/* CEB84 801187C4 00000000 */  nop
/* CEB88 801187C8 4501027A */  bc1t       .Lrace_801191B4
/* CEB8C 801187CC 00001021 */   addu      $v0, $zero, $zero
.Lrace_801187D0:
/* CEB90 801187D0 C7A60098 */  lwc1       $f6, 0x98($sp)
/* CEB94 801187D4 4606B182 */  mul.s      $f6, $f22, $f6
/* CEB98 801187D8 C7A40094 */  lwc1       $f4, 0x94($sp)
/* CEB9C 801187DC 46046102 */  mul.s      $f4, $f12, $f4
/* CEBA0 801187E0 C7A20084 */  lwc1       $f2, 0x84($sp)
/* CEBA4 801187E4 46028082 */  mul.s      $f2, $f16, $f2
/* CEBA8 801187E8 C7A00078 */  lwc1       $f0, 0x78($sp)
/* CEBAC 801187EC 46009002 */  mul.s      $f0, $f18, $f0
/* CEBB0 801187F0 46043180 */  add.s      $f6, $f6, $f4
/* CEBB4 801187F4 46001080 */  add.s      $f2, $f2, $f0
/* CEBB8 801187F8 46023280 */  add.s      $f10, $f6, $f2
/* CEBBC 801187FC 3C01800D */  lui        $at, %hi(D_race_800CDFE8)
/* CEBC0 80118800 C420DFE8 */  lwc1       $f0, %lo(D_race_800CDFE8)($at)
/* CEBC4 80118804 4600503C */  c.lt.s     $f10, $f0
/* CEBC8 80118808 00000000 */  nop
/* CEBCC 8011880C 45000007 */  bc1f       .Lrace_8011882C
/* CEBD0 80118810 00001021 */   addu      $v0, $zero, $zero
/* CEBD4 80118814 3C01800D */  lui        $at, %hi(D_race_800CDFEC)
/* CEBD8 80118818 C420DFEC */  lwc1       $f0, %lo(D_race_800CDFEC)($at)
/* CEBDC 8011881C 460A003C */  c.lt.s     $f0, $f10
/* CEBE0 80118820 00000000 */  nop
/* CEBE4 80118824 45030001 */  bc1tl      .Lrace_8011882C
/* CEBE8 80118828 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_8011882C:
/* CEBEC 8011882C 14400012 */  bnez       $v0, .Lrace_80118878
/* CEBF0 80118830 00000000 */   nop
/* CEBF4 80118834 C7A40020 */  lwc1       $f4, 0x20($sp)
/* CEBF8 80118838 C7A0006C */  lwc1       $f0, 0x6C($sp)
/* CEBFC 8011883C 46002102 */  mul.s      $f4, $f4, $f0
/* CEC00 80118840 C7A20070 */  lwc1       $f2, 0x70($sp)
/* CEC04 80118844 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* CEC08 80118848 46020002 */  mul.s      $f0, $f0, $f2
/* CEC0C 8011884C 46002101 */  sub.s      $f4, $f4, $f0
/* CEC10 80118850 44800000 */  mtc1       $zero, $f0
/* CEC14 80118854 46002206 */  mov.s      $f8, $f4
/* CEC18 80118858 4600203C */  c.lt.s     $f4, $f0
/* CEC1C 8011885C 00000000 */  nop
/* CEC20 80118860 45030001 */  bc1tl      .Lrace_80118868
/* CEC24 80118864 46004207 */   neg.s     $f8, $f8
.Lrace_80118868:
/* CEC28 80118868 4608503C */  c.lt.s     $f10, $f8
/* CEC2C 8011886C 00000000 */  nop
/* CEC30 80118870 45010250 */  bc1t       .Lrace_801191B4
/* CEC34 80118874 00001021 */   addu      $v0, $zero, $zero
.Lrace_80118878:
/* CEC38 80118878 C7A60080 */  lwc1       $f6, 0x80($sp)
/* CEC3C 8011887C 4606A182 */  mul.s      $f6, $f20, $f6
/* CEC40 80118880 C7A40078 */  lwc1       $f4, 0x78($sp)
/* CEC44 80118884 46046102 */  mul.s      $f4, $f12, $f4
/* CEC48 80118888 C7A20094 */  lwc1       $f2, 0x94($sp)
/* CEC4C 8011888C 46029082 */  mul.s      $f2, $f18, $f2
/* CEC50 80118890 C7A00088 */  lwc1       $f0, 0x88($sp)
/* CEC54 80118894 46007002 */  mul.s      $f0, $f14, $f0
/* CEC58 80118898 46043180 */  add.s      $f6, $f6, $f4
/* CEC5C 8011889C 46001080 */  add.s      $f2, $f2, $f0
/* CEC60 801188A0 46023280 */  add.s      $f10, $f6, $f2
/* CEC64 801188A4 3C01800D */  lui        $at, %hi(D_race_800CDFF0)
/* CEC68 801188A8 C420DFF0 */  lwc1       $f0, %lo(D_race_800CDFF0)($at)
/* CEC6C 801188AC 4600503C */  c.lt.s     $f10, $f0
/* CEC70 801188B0 00000000 */  nop
/* CEC74 801188B4 45000007 */  bc1f       .Lrace_801188D4
/* CEC78 801188B8 00001021 */   addu      $v0, $zero, $zero
/* CEC7C 801188BC 3C01800D */  lui        $at, %hi(D_race_800CDFF4)
/* CEC80 801188C0 C420DFF4 */  lwc1       $f0, %lo(D_race_800CDFF4)($at)
/* CEC84 801188C4 460A003C */  c.lt.s     $f0, $f10
/* CEC88 801188C8 00000000 */  nop
/* CEC8C 801188CC 45030001 */  bc1tl      .Lrace_801188D4
/* CEC90 801188D0 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_801188D4:
/* CEC94 801188D4 14400012 */  bnez       $v0, .Lrace_80118920
/* CEC98 801188D8 00000000 */   nop
/* CEC9C 801188DC C7A40018 */  lwc1       $f4, 0x18($sp)
/* CECA0 801188E0 C7A00058 */  lwc1       $f0, 0x58($sp)
/* CECA4 801188E4 46002102 */  mul.s      $f4, $f4, $f0
/* CECA8 801188E8 C7A20050 */  lwc1       $f2, 0x50($sp)
/* CECAC 801188EC C7A00020 */  lwc1       $f0, 0x20($sp)
/* CECB0 801188F0 46020002 */  mul.s      $f0, $f0, $f2
/* CECB4 801188F4 46002101 */  sub.s      $f4, $f4, $f0
/* CECB8 801188F8 44800000 */  mtc1       $zero, $f0
/* CECBC 801188FC 46002206 */  mov.s      $f8, $f4
/* CECC0 80118900 4600203C */  c.lt.s     $f4, $f0
/* CECC4 80118904 00000000 */  nop
/* CECC8 80118908 45030001 */  bc1tl      .Lrace_80118910
/* CECCC 8011890C 46004207 */   neg.s     $f8, $f8
.Lrace_80118910:
/* CECD0 80118910 4608503C */  c.lt.s     $f10, $f8
/* CECD4 80118914 00000000 */  nop
/* CECD8 80118918 45010226 */  bc1t       .Lrace_801191B4
/* CECDC 8011891C 00001021 */   addu      $v0, $zero, $zero
.Lrace_80118920:
/* CECE0 80118920 C7A6008C */  lwc1       $f6, 0x8C($sp)
/* CECE4 80118924 4606A182 */  mul.s      $f6, $f20, $f6
/* CECE8 80118928 C7A40084 */  lwc1       $f4, 0x84($sp)
/* CECEC 8011892C 46046102 */  mul.s      $f4, $f12, $f4
/* CECF0 80118930 C7A20094 */  lwc1       $f2, 0x94($sp)
/* CECF4 80118934 46028082 */  mul.s      $f2, $f16, $f2
/* CECF8 80118938 C7A0007C */  lwc1       $f0, 0x7C($sp)
/* CECFC 8011893C 46007002 */  mul.s      $f0, $f14, $f0
/* CED00 80118940 46043180 */  add.s      $f6, $f6, $f4
/* CED04 80118944 46001080 */  add.s      $f2, $f2, $f0
/* CED08 80118948 46023280 */  add.s      $f10, $f6, $f2
/* CED0C 8011894C 3C01800D */  lui        $at, %hi(D_race_800CDFF8)
/* CED10 80118950 C420DFF8 */  lwc1       $f0, %lo(D_race_800CDFF8)($at)
/* CED14 80118954 4600503C */  c.lt.s     $f10, $f0
/* CED18 80118958 00000000 */  nop
/* CED1C 8011895C 45000007 */  bc1f       .Lrace_8011897C
/* CED20 80118960 00001021 */   addu      $v0, $zero, $zero
/* CED24 80118964 3C01800D */  lui        $at, %hi(D_race_800CDFFC)
/* CED28 80118968 C420DFFC */  lwc1       $f0, %lo(D_race_800CDFFC)($at)
/* CED2C 8011896C 460A003C */  c.lt.s     $f0, $f10
/* CED30 80118970 00000000 */  nop
/* CED34 80118974 45030001 */  bc1tl      .Lrace_8011897C
/* CED38 80118978 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_8011897C:
/* CED3C 8011897C 14400012 */  bnez       $v0, .Lrace_801189C8
/* CED40 80118980 00000000 */   nop
/* CED44 80118984 C7A40018 */  lwc1       $f4, 0x18($sp)
/* CED48 80118988 C7A00064 */  lwc1       $f0, 0x64($sp)
/* CED4C 8011898C 46002102 */  mul.s      $f4, $f4, $f0
/* CED50 80118990 C7A2005C */  lwc1       $f2, 0x5C($sp)
/* CED54 80118994 C7A00020 */  lwc1       $f0, 0x20($sp)
/* CED58 80118998 46020002 */  mul.s      $f0, $f0, $f2
/* CED5C 8011899C 46002101 */  sub.s      $f4, $f4, $f0
/* CED60 801189A0 44800000 */  mtc1       $zero, $f0
/* CED64 801189A4 46002206 */  mov.s      $f8, $f4
/* CED68 801189A8 4600203C */  c.lt.s     $f4, $f0
/* CED6C 801189AC 00000000 */  nop
/* CED70 801189B0 45030001 */  bc1tl      .Lrace_801189B8
/* CED74 801189B4 46004207 */   neg.s     $f8, $f8
.Lrace_801189B8:
/* CED78 801189B8 4608503C */  c.lt.s     $f10, $f8
/* CED7C 801189BC 00000000 */  nop
/* CED80 801189C0 450101FC */  bc1t       .Lrace_801191B4
/* CED84 801189C4 00001021 */   addu      $v0, $zero, $zero
.Lrace_801189C8:
/* CED88 801189C8 C7A60098 */  lwc1       $f6, 0x98($sp)
/* CED8C 801189CC 4606A182 */  mul.s      $f6, $f20, $f6
/* CED90 801189D0 C7A40090 */  lwc1       $f4, 0x90($sp)
/* CED94 801189D4 46046102 */  mul.s      $f4, $f12, $f4
/* CED98 801189D8 C7A20088 */  lwc1       $f2, 0x88($sp)
/* CED9C 801189DC 46028082 */  mul.s      $f2, $f16, $f2
/* CEDA0 801189E0 C7A0007C */  lwc1       $f0, 0x7C($sp)
/* CEDA4 801189E4 46009002 */  mul.s      $f0, $f18, $f0
/* CEDA8 801189E8 46043180 */  add.s      $f6, $f6, $f4
/* CEDAC 801189EC 46001080 */  add.s      $f2, $f2, $f0
/* CEDB0 801189F0 46023280 */  add.s      $f10, $f6, $f2
/* CEDB4 801189F4 3C01800D */  lui        $at, %hi(D_race_800CE000)
/* CEDB8 801189F8 C420E000 */  lwc1       $f0, %lo(D_race_800CE000)($at)
/* CEDBC 801189FC 4600503C */  c.lt.s     $f10, $f0
/* CEDC0 80118A00 00000000 */  nop
/* CEDC4 80118A04 45000007 */  bc1f       .Lrace_80118A24
/* CEDC8 80118A08 00001021 */   addu      $v0, $zero, $zero
/* CEDCC 80118A0C 3C01800D */  lui        $at, %hi(D_race_800CE004)
/* CEDD0 80118A10 C420E004 */  lwc1       $f0, %lo(D_race_800CE004)($at)
/* CEDD4 80118A14 460A003C */  c.lt.s     $f0, $f10
/* CEDD8 80118A18 00000000 */  nop
/* CEDDC 80118A1C 45030001 */  bc1tl      .Lrace_80118A24
/* CEDE0 80118A20 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_80118A24:
/* CEDE4 80118A24 14400012 */  bnez       $v0, .Lrace_80118A70
/* CEDE8 80118A28 00000000 */   nop
/* CEDEC 80118A2C C7A40018 */  lwc1       $f4, 0x18($sp)
/* CEDF0 80118A30 C7A00070 */  lwc1       $f0, 0x70($sp)
/* CEDF4 80118A34 46002102 */  mul.s      $f4, $f4, $f0
/* CEDF8 80118A38 C7A20068 */  lwc1       $f2, 0x68($sp)
/* CEDFC 80118A3C C7A00020 */  lwc1       $f0, 0x20($sp)
/* CEE00 80118A40 46020002 */  mul.s      $f0, $f0, $f2
/* CEE04 80118A44 46002101 */  sub.s      $f4, $f4, $f0
/* CEE08 80118A48 44800000 */  mtc1       $zero, $f0
/* CEE0C 80118A4C 46002206 */  mov.s      $f8, $f4
/* CEE10 80118A50 4600203C */  c.lt.s     $f4, $f0
/* CEE14 80118A54 00000000 */  nop
/* CEE18 80118A58 45030001 */  bc1tl      .Lrace_80118A60
/* CEE1C 80118A5C 46004207 */   neg.s     $f8, $f8
.Lrace_80118A60:
/* CEE20 80118A60 4608503C */  c.lt.s     $f10, $f8
/* CEE24 80118A64 00000000 */  nop
/* CEE28 80118A68 450101D2 */  bc1t       .Lrace_801191B4
/* CEE2C 80118A6C 00001021 */   addu      $v0, $zero, $zero
.Lrace_80118A70:
/* CEE30 80118A70 C7A6007C */  lwc1       $f6, 0x7C($sp)
/* CEE34 80118A74 4606A182 */  mul.s      $f6, $f20, $f6
/* CEE38 80118A78 C7A40078 */  lwc1       $f4, 0x78($sp)
/* CEE3C 80118A7C 4604B102 */  mul.s      $f4, $f22, $f4
/* CEE40 80118A80 C7A20098 */  lwc1       $f2, 0x98($sp)
/* CEE44 80118A84 46029082 */  mul.s      $f2, $f18, $f2
/* CEE48 80118A88 C7A0008C */  lwc1       $f0, 0x8C($sp)
/* CEE4C 80118A8C 46007002 */  mul.s      $f0, $f14, $f0
/* CEE50 80118A90 46043180 */  add.s      $f6, $f6, $f4
/* CEE54 80118A94 46001080 */  add.s      $f2, $f2, $f0
/* CEE58 80118A98 46023280 */  add.s      $f10, $f6, $f2
/* CEE5C 80118A9C 3C01800D */  lui        $at, %hi(D_race_800CE008)
/* CEE60 80118AA0 C420E008 */  lwc1       $f0, %lo(D_race_800CE008)($at)
/* CEE64 80118AA4 4600503C */  c.lt.s     $f10, $f0
/* CEE68 80118AA8 00000000 */  nop
/* CEE6C 80118AAC 45000007 */  bc1f       .Lrace_80118ACC
/* CEE70 80118AB0 00001021 */   addu      $v0, $zero, $zero
/* CEE74 80118AB4 3C01800D */  lui        $at, %hi(D_race_800CE00C)
/* CEE78 80118AB8 C420E00C */  lwc1       $f0, %lo(D_race_800CE00C)($at)
/* CEE7C 80118ABC 460A003C */  c.lt.s     $f0, $f10
/* CEE80 80118AC0 00000000 */  nop
/* CEE84 80118AC4 45030001 */  bc1tl      .Lrace_80118ACC
/* CEE88 80118AC8 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_80118ACC:
/* CEE8C 80118ACC 14400012 */  bnez       $v0, .Lrace_80118B18
/* CEE90 80118AD0 00000000 */   nop
/* CEE94 80118AD4 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* CEE98 80118AD8 C7A00050 */  lwc1       $f0, 0x50($sp)
/* CEE9C 80118ADC 46002102 */  mul.s      $f4, $f4, $f0
/* CEEA0 80118AE0 C7A20054 */  lwc1       $f2, 0x54($sp)
/* CEEA4 80118AE4 C7A00018 */  lwc1       $f0, 0x18($sp)
/* CEEA8 80118AE8 46020002 */  mul.s      $f0, $f0, $f2
/* CEEAC 80118AEC 46002101 */  sub.s      $f4, $f4, $f0
/* CEEB0 80118AF0 44800000 */  mtc1       $zero, $f0
/* CEEB4 80118AF4 46002206 */  mov.s      $f8, $f4
/* CEEB8 80118AF8 4600203C */  c.lt.s     $f4, $f0
/* CEEBC 80118AFC 00000000 */  nop
/* CEEC0 80118B00 45030001 */  bc1tl      .Lrace_80118B08
/* CEEC4 80118B04 46004207 */   neg.s     $f8, $f8
.Lrace_80118B08:
/* CEEC8 80118B08 4608503C */  c.lt.s     $f10, $f8
/* CEECC 80118B0C 00000000 */  nop
/* CEED0 80118B10 450101A8 */  bc1t       .Lrace_801191B4
/* CEED4 80118B14 00001021 */   addu      $v0, $zero, $zero
.Lrace_80118B18:
/* CEED8 80118B18 C7A60088 */  lwc1       $f6, 0x88($sp)
/* CEEDC 80118B1C 4606A182 */  mul.s      $f6, $f20, $f6
/* CEEE0 80118B20 C7A40084 */  lwc1       $f4, 0x84($sp)
/* CEEE4 80118B24 4604B102 */  mul.s      $f4, $f22, $f4
/* CEEE8 80118B28 C7A20098 */  lwc1       $f2, 0x98($sp)
/* CEEEC 80118B2C 46028082 */  mul.s      $f2, $f16, $f2
/* CEEF0 80118B30 C7A00080 */  lwc1       $f0, 0x80($sp)
/* CEEF4 80118B34 46007002 */  mul.s      $f0, $f14, $f0
/* CEEF8 80118B38 46043180 */  add.s      $f6, $f6, $f4
/* CEEFC 80118B3C 46001080 */  add.s      $f2, $f2, $f0
/* CEF00 80118B40 46023280 */  add.s      $f10, $f6, $f2
/* CEF04 80118B44 3C01800D */  lui        $at, %hi(D_race_800CE010)
/* CEF08 80118B48 C420E010 */  lwc1       $f0, %lo(D_race_800CE010)($at)
/* CEF0C 80118B4C 4600503C */  c.lt.s     $f10, $f0
/* CEF10 80118B50 00000000 */  nop
/* CEF14 80118B54 45000007 */  bc1f       .Lrace_80118B74
/* CEF18 80118B58 00001021 */   addu      $v0, $zero, $zero
/* CEF1C 80118B5C 3C01800D */  lui        $at, %hi(D_race_800CE014)
/* CEF20 80118B60 C420E014 */  lwc1       $f0, %lo(D_race_800CE014)($at)
/* CEF24 80118B64 460A003C */  c.lt.s     $f0, $f10
/* CEF28 80118B68 00000000 */  nop
/* CEF2C 80118B6C 45030001 */  bc1tl      .Lrace_80118B74
/* CEF30 80118B70 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_80118B74:
/* CEF34 80118B74 14400012 */  bnez       $v0, .Lrace_80118BC0
/* CEF38 80118B78 00000000 */   nop
/* CEF3C 80118B7C C7A4001C */  lwc1       $f4, 0x1C($sp)
/* CEF40 80118B80 C7A0005C */  lwc1       $f0, 0x5C($sp)
/* CEF44 80118B84 46002102 */  mul.s      $f4, $f4, $f0
/* CEF48 80118B88 C7A20060 */  lwc1       $f2, 0x60($sp)
/* CEF4C 80118B8C C7A00018 */  lwc1       $f0, 0x18($sp)
/* CEF50 80118B90 46020002 */  mul.s      $f0, $f0, $f2
/* CEF54 80118B94 46002101 */  sub.s      $f4, $f4, $f0
/* CEF58 80118B98 44800000 */  mtc1       $zero, $f0
/* CEF5C 80118B9C 46002206 */  mov.s      $f8, $f4
/* CEF60 80118BA0 4600203C */  c.lt.s     $f4, $f0
/* CEF64 80118BA4 00000000 */  nop
/* CEF68 80118BA8 45030001 */  bc1tl      .Lrace_80118BB0
/* CEF6C 80118BAC 46004207 */   neg.s     $f8, $f8
.Lrace_80118BB0:
/* CEF70 80118BB0 4608503C */  c.lt.s     $f10, $f8
/* CEF74 80118BB4 00000000 */  nop
/* CEF78 80118BB8 4501017E */  bc1t       .Lrace_801191B4
/* CEF7C 80118BBC 00001021 */   addu      $v0, $zero, $zero
.Lrace_80118BC0:
/* CEF80 80118BC0 C7A60094 */  lwc1       $f6, 0x94($sp)
/* CEF84 80118BC4 4606A182 */  mul.s      $f6, $f20, $f6
/* CEF88 80118BC8 C7A40090 */  lwc1       $f4, 0x90($sp)
/* CEF8C 80118BCC 4604B102 */  mul.s      $f4, $f22, $f4
/* CEF90 80118BD0 C7A2008C */  lwc1       $f2, 0x8C($sp)
/* CEF94 80118BD4 46028082 */  mul.s      $f2, $f16, $f2
/* CEF98 80118BD8 C7A00080 */  lwc1       $f0, 0x80($sp)
/* CEF9C 80118BDC 46009002 */  mul.s      $f0, $f18, $f0
/* CEFA0 80118BE0 46043180 */  add.s      $f6, $f6, $f4
/* CEFA4 80118BE4 46001080 */  add.s      $f2, $f2, $f0
/* CEFA8 80118BE8 46023280 */  add.s      $f10, $f6, $f2
/* CEFAC 80118BEC 3C01800D */  lui        $at, %hi(D_race_800CE018)
/* CEFB0 80118BF0 C420E018 */  lwc1       $f0, %lo(D_race_800CE018)($at)
/* CEFB4 80118BF4 4600503C */  c.lt.s     $f10, $f0
/* CEFB8 80118BF8 00000000 */  nop
/* CEFBC 80118BFC 45000007 */  bc1f       .Lrace_80118C1C
/* CEFC0 80118C00 00001021 */   addu      $v0, $zero, $zero
/* CEFC4 80118C04 3C01800D */  lui        $at, %hi(D_race_800CE01C)
/* CEFC8 80118C08 C420E01C */  lwc1       $f0, %lo(D_race_800CE01C)($at)
/* CEFCC 80118C0C 460A003C */  c.lt.s     $f0, $f10
/* CEFD0 80118C10 00000000 */  nop
/* CEFD4 80118C14 45030001 */  bc1tl      .Lrace_80118C1C
/* CEFD8 80118C18 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_80118C1C:
/* CEFDC 80118C1C 14400012 */  bnez       $v0, .Lrace_80118C68
/* CEFE0 80118C20 00000000 */   nop
/* CEFE4 80118C24 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* CEFE8 80118C28 C7A00068 */  lwc1       $f0, 0x68($sp)
/* CEFEC 80118C2C 46002102 */  mul.s      $f4, $f4, $f0
/* CEFF0 80118C30 C7A2006C */  lwc1       $f2, 0x6C($sp)
/* CEFF4 80118C34 C7A00018 */  lwc1       $f0, 0x18($sp)
/* CEFF8 80118C38 46020002 */  mul.s      $f0, $f0, $f2
/* CEFFC 80118C3C 46002101 */  sub.s      $f4, $f4, $f0
/* CF000 80118C40 44800000 */  mtc1       $zero, $f0
/* CF004 80118C44 46002206 */  mov.s      $f8, $f4
/* CF008 80118C48 4600203C */  c.lt.s     $f4, $f0
/* CF00C 80118C4C 00000000 */  nop
/* CF010 80118C50 45030001 */  bc1tl      .Lrace_80118C58
/* CF014 80118C54 46004207 */   neg.s     $f8, $f8
.Lrace_80118C58:
/* CF018 80118C58 4608503C */  c.lt.s     $f10, $f8
/* CF01C 80118C5C 00000000 */  nop
/* CF020 80118C60 45010154 */  bc1t       .Lrace_801191B4
/* CF024 80118C64 00001021 */   addu      $v0, $zero, $zero
.Lrace_80118C68:
/* CF028 80118C68 8EC20000 */  lw         $v0, 0x0($s6)
/* CF02C 80118C6C C4400028 */  lwc1       $f0, 0x28($v0)
/* CF030 80118C70 E7A000A0 */  swc1       $f0, 0xA0($sp)
/* CF034 80118C74 C440002C */  lwc1       $f0, 0x2C($v0)
/* CF038 80118C78 E7A000A4 */  swc1       $f0, 0xA4($sp)
/* CF03C 80118C7C C4400030 */  lwc1       $f0, 0x30($v0)
/* CF040 80118C80 E7A000A8 */  swc1       $f0, 0xA8($sp)
/* CF044 80118C84 C4400034 */  lwc1       $f0, 0x34($v0)
/* CF048 80118C88 E7A000B0 */  swc1       $f0, 0xB0($sp)
/* CF04C 80118C8C C4400038 */  lwc1       $f0, 0x38($v0)
/* CF050 80118C90 E7A000B4 */  swc1       $f0, 0xB4($sp)
/* CF054 80118C94 C440003C */  lwc1       $f0, 0x3C($v0)
/* CF058 80118C98 E7A000B8 */  swc1       $f0, 0xB8($sp)
/* CF05C 80118C9C C4400040 */  lwc1       $f0, 0x40($v0)
/* CF060 80118CA0 E7A000C0 */  swc1       $f0, 0xC0($sp)
/* CF064 80118CA4 C4400044 */  lwc1       $f0, 0x44($v0)
/* CF068 80118CA8 E7A000C4 */  swc1       $f0, 0xC4($sp)
/* CF06C 80118CAC C4400048 */  lwc1       $f0, 0x48($v0)
/* CF070 80118CB0 E7A000C8 */  swc1       $f0, 0xC8($sp)
/* CF074 80118CB4 8EE20000 */  lw         $v0, 0x0($s7)
/* CF078 80118CB8 C4400028 */  lwc1       $f0, 0x28($v0)
/* CF07C 80118CBC E7A000D0 */  swc1       $f0, 0xD0($sp)
/* CF080 80118CC0 C440002C */  lwc1       $f0, 0x2C($v0)
/* CF084 80118CC4 E7A000D4 */  swc1       $f0, 0xD4($sp)
/* CF088 80118CC8 C4400030 */  lwc1       $f0, 0x30($v0)
/* CF08C 80118CCC E7A000D8 */  swc1       $f0, 0xD8($sp)
/* CF090 80118CD0 C4400034 */  lwc1       $f0, 0x34($v0)
/* CF094 80118CD4 E7A000E0 */  swc1       $f0, 0xE0($sp)
/* CF098 80118CD8 C4400038 */  lwc1       $f0, 0x38($v0)
/* CF09C 80118CDC E7A000E4 */  swc1       $f0, 0xE4($sp)
/* CF0A0 80118CE0 C440003C */  lwc1       $f0, 0x3C($v0)
/* CF0A4 80118CE4 E7A000E8 */  swc1       $f0, 0xE8($sp)
/* CF0A8 80118CE8 C4400040 */  lwc1       $f0, 0x40($v0)
/* CF0AC 80118CEC E7A000F0 */  swc1       $f0, 0xF0($sp)
/* CF0B0 80118CF0 C4400044 */  lwc1       $f0, 0x44($v0)
/* CF0B4 80118CF4 E7A000F4 */  swc1       $f0, 0xF4($sp)
/* CF0B8 80118CF8 C4400048 */  lwc1       $f0, 0x48($v0)
/* CF0BC 80118CFC 2E02000F */  sltiu      $v0, $s0, 0xF
/* CF0C0 80118D00 10400109 */  beqz       $v0, .Lrace_80119128
/* CF0C4 80118D04 E7A000F8 */   swc1      $f0, 0xF8($sp)
/* CF0C8 80118D08 3C02800D */  lui        $v0, %hi(jtbl_race_800CE020)
/* CF0CC 80118D0C 2442E020 */  addiu      $v0, $v0, %lo(jtbl_race_800CE020)
/* CF0D0 80118D10 00101880 */  sll        $v1, $s0, 2
/* CF0D4 80118D14 00621821 */  addu       $v1, $v1, $v0
/* CF0D8 80118D18 8C620000 */  lw         $v0, 0x0($v1)
/* CF0DC 80118D1C 00400008 */  jr         $v0
/* CF0E0 80118D20 00000000 */   nop
glabel Lrace_80118D24
/* CF0E4 80118D24 8FA800A0 */  lw         $t0, 0xA0($sp)
/* CF0E8 80118D28 8FA900A4 */  lw         $t1, 0xA4($sp)
/* CF0EC 80118D2C 8FAA00A8 */  lw         $t2, 0xA8($sp)
/* CF0F0 80118D30 AE480000 */  sw         $t0, 0x0($s2)
/* CF0F4 80118D34 AE490004 */  sw         $t1, 0x4($s2)
/* CF0F8 80118D38 AE4A0008 */  sw         $t2, 0x8($s2)
/* CF0FC 80118D3C 0804644A */  j          .Lrace_80119128
/* CF100 80118D40 00000000 */   nop
glabel Lrace_80118D44
/* CF104 80118D44 8FA800D0 */  lw         $t0, 0xD0($sp)
/* CF108 80118D48 8FA900D4 */  lw         $t1, 0xD4($sp)
/* CF10C 80118D4C 8FAA00D8 */  lw         $t2, 0xD8($sp)
/* CF110 80118D50 AE480000 */  sw         $t0, 0x0($s2)
/* CF114 80118D54 AE490004 */  sw         $t1, 0x4($s2)
/* CF118 80118D58 AE4A0008 */  sw         $t2, 0x8($s2)
/* CF11C 80118D5C 0804644A */  j          .Lrace_80119128
/* CF120 80118D60 00000000 */   nop
glabel Lrace_80118D64
/* CF124 80118D64 8FA800B0 */  lw         $t0, 0xB0($sp)
/* CF128 80118D68 8FA900B4 */  lw         $t1, 0xB4($sp)
/* CF12C 80118D6C 8FAA00B8 */  lw         $t2, 0xB8($sp)
/* CF130 80118D70 AE480000 */  sw         $t0, 0x0($s2)
/* CF134 80118D74 AE490004 */  sw         $t1, 0x4($s2)
/* CF138 80118D78 AE4A0008 */  sw         $t2, 0x8($s2)
/* CF13C 80118D7C 0804644A */  j          .Lrace_80119128
/* CF140 80118D80 00000000 */   nop
glabel Lrace_80118D84
/* CF144 80118D84 8FA800C0 */  lw         $t0, 0xC0($sp)
/* CF148 80118D88 8FA900C4 */  lw         $t1, 0xC4($sp)
/* CF14C 80118D8C 8FAA00C8 */  lw         $t2, 0xC8($sp)
/* CF150 80118D90 AE480000 */  sw         $t0, 0x0($s2)
/* CF154 80118D94 AE490004 */  sw         $t1, 0x4($s2)
/* CF158 80118D98 AE4A0008 */  sw         $t2, 0x8($s2)
/* CF15C 80118D9C 0804644A */  j          .Lrace_80119128
/* CF160 80118DA0 00000000 */   nop
glabel Lrace_80118DA4
/* CF164 80118DA4 8FA800E0 */  lw         $t0, 0xE0($sp)
/* CF168 80118DA8 8FA900E4 */  lw         $t1, 0xE4($sp)
/* CF16C 80118DAC 8FAA00E8 */  lw         $t2, 0xE8($sp)
/* CF170 80118DB0 AE480000 */  sw         $t0, 0x0($s2)
/* CF174 80118DB4 AE490004 */  sw         $t1, 0x4($s2)
/* CF178 80118DB8 AE4A0008 */  sw         $t2, 0x8($s2)
/* CF17C 80118DBC 0804644A */  j          .Lrace_80119128
/* CF180 80118DC0 00000000 */   nop
glabel Lrace_80118DC4
/* CF184 80118DC4 8FA800F0 */  lw         $t0, 0xF0($sp)
/* CF188 80118DC8 8FA900F4 */  lw         $t1, 0xF4($sp)
/* CF18C 80118DCC 8FAA00F8 */  lw         $t2, 0xF8($sp)
/* CF190 80118DD0 AE480000 */  sw         $t0, 0x0($s2)
/* CF194 80118DD4 AE490004 */  sw         $t1, 0x4($s2)
/* CF198 80118DD8 AE4A0008 */  sw         $t2, 0x8($s2)
/* CF19C 80118DDC 0804644A */  j          .Lrace_80119128
/* CF1A0 80118DE0 00000000 */   nop
glabel Lrace_80118DE4
/* CF1A4 80118DE4 C7A400A4 */  lwc1       $f4, 0xA4($sp)
/* CF1A8 80118DE8 C7A000D8 */  lwc1       $f0, 0xD8($sp)
/* CF1AC 80118DEC 46002102 */  mul.s      $f4, $f4, $f0
/* CF1B0 80118DF0 C7A200D4 */  lwc1       $f2, 0xD4($sp)
/* CF1B4 80118DF4 C7A000A8 */  lwc1       $f0, 0xA8($sp)
/* CF1B8 80118DF8 46020002 */  mul.s      $f0, $f0, $f2
/* CF1BC 80118DFC 46002101 */  sub.s      $f4, $f4, $f0
/* CF1C0 80118E00 E6440000 */  swc1       $f4, 0x0($s2)
/* CF1C4 80118E04 C7A400A8 */  lwc1       $f4, 0xA8($sp)
/* CF1C8 80118E08 C7A000D0 */  lwc1       $f0, 0xD0($sp)
/* CF1CC 80118E0C 46002102 */  mul.s      $f4, $f4, $f0
/* CF1D0 80118E10 C7A200D8 */  lwc1       $f2, 0xD8($sp)
/* CF1D4 80118E14 C7A000A0 */  lwc1       $f0, 0xA0($sp)
/* CF1D8 80118E18 46020002 */  mul.s      $f0, $f0, $f2
/* CF1DC 80118E1C 46002101 */  sub.s      $f4, $f4, $f0
/* CF1E0 80118E20 E6440004 */  swc1       $f4, 0x4($s2)
/* CF1E4 80118E24 C7A400A0 */  lwc1       $f4, 0xA0($sp)
/* CF1E8 80118E28 C7A000D4 */  lwc1       $f0, 0xD4($sp)
/* CF1EC 80118E2C 46002102 */  mul.s      $f4, $f4, $f0
/* CF1F0 80118E30 C7A200D0 */  lwc1       $f2, 0xD0($sp)
/* CF1F4 80118E34 C7A000A4 */  lwc1       $f0, 0xA4($sp)
/* CF1F8 80118E38 08046444 */  j          .Lrace_80119110
/* CF1FC 80118E3C 00000000 */   nop
glabel Lrace_80118E40
/* CF200 80118E40 C7A400A4 */  lwc1       $f4, 0xA4($sp)
/* CF204 80118E44 C7A000E8 */  lwc1       $f0, 0xE8($sp)
/* CF208 80118E48 46002102 */  mul.s      $f4, $f4, $f0
/* CF20C 80118E4C C7A200E4 */  lwc1       $f2, 0xE4($sp)
/* CF210 80118E50 C7A000A8 */  lwc1       $f0, 0xA8($sp)
/* CF214 80118E54 46020002 */  mul.s      $f0, $f0, $f2
/* CF218 80118E58 46002101 */  sub.s      $f4, $f4, $f0
/* CF21C 80118E5C E6440000 */  swc1       $f4, 0x0($s2)
/* CF220 80118E60 C7A400A8 */  lwc1       $f4, 0xA8($sp)
/* CF224 80118E64 C7A000E0 */  lwc1       $f0, 0xE0($sp)
/* CF228 80118E68 46002102 */  mul.s      $f4, $f4, $f0
/* CF22C 80118E6C C7A200E8 */  lwc1       $f2, 0xE8($sp)
/* CF230 80118E70 C7A000A0 */  lwc1       $f0, 0xA0($sp)
/* CF234 80118E74 46020002 */  mul.s      $f0, $f0, $f2
/* CF238 80118E78 46002101 */  sub.s      $f4, $f4, $f0
/* CF23C 80118E7C E6440004 */  swc1       $f4, 0x4($s2)
/* CF240 80118E80 C7A400A0 */  lwc1       $f4, 0xA0($sp)
/* CF244 80118E84 C7A000E4 */  lwc1       $f0, 0xE4($sp)
/* CF248 80118E88 46002102 */  mul.s      $f4, $f4, $f0
/* CF24C 80118E8C C7A200E0 */  lwc1       $f2, 0xE0($sp)
/* CF250 80118E90 C7A000A4 */  lwc1       $f0, 0xA4($sp)
/* CF254 80118E94 08046444 */  j          .Lrace_80119110
/* CF258 80118E98 00000000 */   nop
glabel Lrace_80118E9C
/* CF25C 80118E9C C7A400A4 */  lwc1       $f4, 0xA4($sp)
/* CF260 80118EA0 C7A000F8 */  lwc1       $f0, 0xF8($sp)
/* CF264 80118EA4 46002102 */  mul.s      $f4, $f4, $f0
/* CF268 80118EA8 C7A200F4 */  lwc1       $f2, 0xF4($sp)
/* CF26C 80118EAC C7A000A8 */  lwc1       $f0, 0xA8($sp)
/* CF270 80118EB0 46020002 */  mul.s      $f0, $f0, $f2
/* CF274 80118EB4 46002101 */  sub.s      $f4, $f4, $f0
/* CF278 80118EB8 E6440000 */  swc1       $f4, 0x0($s2)
/* CF27C 80118EBC C7A400A8 */  lwc1       $f4, 0xA8($sp)
/* CF280 80118EC0 C7A000F0 */  lwc1       $f0, 0xF0($sp)
/* CF284 80118EC4 46002102 */  mul.s      $f4, $f4, $f0
/* CF288 80118EC8 C7A200F8 */  lwc1       $f2, 0xF8($sp)
/* CF28C 80118ECC C7A000A0 */  lwc1       $f0, 0xA0($sp)
/* CF290 80118ED0 46020002 */  mul.s      $f0, $f0, $f2
/* CF294 80118ED4 46002101 */  sub.s      $f4, $f4, $f0
/* CF298 80118ED8 E6440004 */  swc1       $f4, 0x4($s2)
/* CF29C 80118EDC C7A400A0 */  lwc1       $f4, 0xA0($sp)
/* CF2A0 80118EE0 C7A000F4 */  lwc1       $f0, 0xF4($sp)
/* CF2A4 80118EE4 46002102 */  mul.s      $f4, $f4, $f0
/* CF2A8 80118EE8 C7A200F0 */  lwc1       $f2, 0xF0($sp)
/* CF2AC 80118EEC C7A000A4 */  lwc1       $f0, 0xA4($sp)
/* CF2B0 80118EF0 08046444 */  j          .Lrace_80119110
/* CF2B4 80118EF4 00000000 */   nop
glabel Lrace_80118EF8
/* CF2B8 80118EF8 C7A400B4 */  lwc1       $f4, 0xB4($sp)
/* CF2BC 80118EFC C7A000D8 */  lwc1       $f0, 0xD8($sp)
/* CF2C0 80118F00 46002102 */  mul.s      $f4, $f4, $f0
/* CF2C4 80118F04 C7A200D4 */  lwc1       $f2, 0xD4($sp)
/* CF2C8 80118F08 C7A000B8 */  lwc1       $f0, 0xB8($sp)
/* CF2CC 80118F0C 46020002 */  mul.s      $f0, $f0, $f2
/* CF2D0 80118F10 46002101 */  sub.s      $f4, $f4, $f0
/* CF2D4 80118F14 E6440000 */  swc1       $f4, 0x0($s2)
/* CF2D8 80118F18 C7A400B8 */  lwc1       $f4, 0xB8($sp)
/* CF2DC 80118F1C C7A000D0 */  lwc1       $f0, 0xD0($sp)
/* CF2E0 80118F20 46002102 */  mul.s      $f4, $f4, $f0
/* CF2E4 80118F24 C7A200D8 */  lwc1       $f2, 0xD8($sp)
/* CF2E8 80118F28 C7A000B0 */  lwc1       $f0, 0xB0($sp)
/* CF2EC 80118F2C 46020002 */  mul.s      $f0, $f0, $f2
/* CF2F0 80118F30 46002101 */  sub.s      $f4, $f4, $f0
/* CF2F4 80118F34 E6440004 */  swc1       $f4, 0x4($s2)
/* CF2F8 80118F38 C7A400B0 */  lwc1       $f4, 0xB0($sp)
/* CF2FC 80118F3C C7A000D4 */  lwc1       $f0, 0xD4($sp)
/* CF300 80118F40 46002102 */  mul.s      $f4, $f4, $f0
/* CF304 80118F44 C7A200D0 */  lwc1       $f2, 0xD0($sp)
/* CF308 80118F48 C7A000B4 */  lwc1       $f0, 0xB4($sp)
/* CF30C 80118F4C 08046444 */  j          .Lrace_80119110
/* CF310 80118F50 00000000 */   nop
glabel Lrace_80118F54
/* CF314 80118F54 C7A400B4 */  lwc1       $f4, 0xB4($sp)
/* CF318 80118F58 C7A000E8 */  lwc1       $f0, 0xE8($sp)
/* CF31C 80118F5C 46002102 */  mul.s      $f4, $f4, $f0
/* CF320 80118F60 C7A200E4 */  lwc1       $f2, 0xE4($sp)
/* CF324 80118F64 C7A000B8 */  lwc1       $f0, 0xB8($sp)
/* CF328 80118F68 46020002 */  mul.s      $f0, $f0, $f2
/* CF32C 80118F6C 46002101 */  sub.s      $f4, $f4, $f0
/* CF330 80118F70 E6440000 */  swc1       $f4, 0x0($s2)
/* CF334 80118F74 C7A400B8 */  lwc1       $f4, 0xB8($sp)
/* CF338 80118F78 C7A000E0 */  lwc1       $f0, 0xE0($sp)
/* CF33C 80118F7C 46002102 */  mul.s      $f4, $f4, $f0
/* CF340 80118F80 C7A200E8 */  lwc1       $f2, 0xE8($sp)
/* CF344 80118F84 C7A000B0 */  lwc1       $f0, 0xB0($sp)
/* CF348 80118F88 46020002 */  mul.s      $f0, $f0, $f2
/* CF34C 80118F8C 46002101 */  sub.s      $f4, $f4, $f0
/* CF350 80118F90 E6440004 */  swc1       $f4, 0x4($s2)
/* CF354 80118F94 C7A400B0 */  lwc1       $f4, 0xB0($sp)
/* CF358 80118F98 C7A000E4 */  lwc1       $f0, 0xE4($sp)
/* CF35C 80118F9C 46002102 */  mul.s      $f4, $f4, $f0
/* CF360 80118FA0 C7A200E0 */  lwc1       $f2, 0xE0($sp)
/* CF364 80118FA4 C7A000B4 */  lwc1       $f0, 0xB4($sp)
/* CF368 80118FA8 08046444 */  j          .Lrace_80119110
/* CF36C 80118FAC 00000000 */   nop
glabel Lrace_80118FB0
/* CF370 80118FB0 C7A400B4 */  lwc1       $f4, 0xB4($sp)
/* CF374 80118FB4 C7A000F8 */  lwc1       $f0, 0xF8($sp)
/* CF378 80118FB8 46002102 */  mul.s      $f4, $f4, $f0
/* CF37C 80118FBC C7A200F4 */  lwc1       $f2, 0xF4($sp)
/* CF380 80118FC0 C7A000B8 */  lwc1       $f0, 0xB8($sp)
/* CF384 80118FC4 46020002 */  mul.s      $f0, $f0, $f2
/* CF388 80118FC8 46002101 */  sub.s      $f4, $f4, $f0
/* CF38C 80118FCC E6440000 */  swc1       $f4, 0x0($s2)
/* CF390 80118FD0 C7A400B8 */  lwc1       $f4, 0xB8($sp)
/* CF394 80118FD4 C7A000F0 */  lwc1       $f0, 0xF0($sp)
/* CF398 80118FD8 46002102 */  mul.s      $f4, $f4, $f0
/* CF39C 80118FDC C7A200F8 */  lwc1       $f2, 0xF8($sp)
/* CF3A0 80118FE0 C7A000B0 */  lwc1       $f0, 0xB0($sp)
/* CF3A4 80118FE4 46020002 */  mul.s      $f0, $f0, $f2
/* CF3A8 80118FE8 46002101 */  sub.s      $f4, $f4, $f0
/* CF3AC 80118FEC E6440004 */  swc1       $f4, 0x4($s2)
/* CF3B0 80118FF0 C7A400B0 */  lwc1       $f4, 0xB0($sp)
/* CF3B4 80118FF4 C7A000F4 */  lwc1       $f0, 0xF4($sp)
/* CF3B8 80118FF8 46002102 */  mul.s      $f4, $f4, $f0
/* CF3BC 80118FFC C7A200F0 */  lwc1       $f2, 0xF0($sp)
/* CF3C0 80119000 C7A000B4 */  lwc1       $f0, 0xB4($sp)
/* CF3C4 80119004 08046444 */  j          .Lrace_80119110
/* CF3C8 80119008 00000000 */   nop
glabel Lrace_8011900C
/* CF3CC 8011900C C7A400C4 */  lwc1       $f4, 0xC4($sp)
/* CF3D0 80119010 C7A000D8 */  lwc1       $f0, 0xD8($sp)
/* CF3D4 80119014 46002102 */  mul.s      $f4, $f4, $f0
/* CF3D8 80119018 C7A200D4 */  lwc1       $f2, 0xD4($sp)
/* CF3DC 8011901C C7A000C8 */  lwc1       $f0, 0xC8($sp)
/* CF3E0 80119020 46020002 */  mul.s      $f0, $f0, $f2
/* CF3E4 80119024 46002101 */  sub.s      $f4, $f4, $f0
/* CF3E8 80119028 E6440000 */  swc1       $f4, 0x0($s2)
/* CF3EC 8011902C C7A400C8 */  lwc1       $f4, 0xC8($sp)
/* CF3F0 80119030 C7A000D0 */  lwc1       $f0, 0xD0($sp)
/* CF3F4 80119034 46002102 */  mul.s      $f4, $f4, $f0
/* CF3F8 80119038 C7A200D8 */  lwc1       $f2, 0xD8($sp)
/* CF3FC 8011903C C7A000C0 */  lwc1       $f0, 0xC0($sp)
/* CF400 80119040 46020002 */  mul.s      $f0, $f0, $f2
/* CF404 80119044 46002101 */  sub.s      $f4, $f4, $f0
/* CF408 80119048 E6440004 */  swc1       $f4, 0x4($s2)
/* CF40C 8011904C C7A400C0 */  lwc1       $f4, 0xC0($sp)
/* CF410 80119050 C7A000D4 */  lwc1       $f0, 0xD4($sp)
/* CF414 80119054 46002102 */  mul.s      $f4, $f4, $f0
/* CF418 80119058 C7A200D0 */  lwc1       $f2, 0xD0($sp)
/* CF41C 8011905C 08046443 */  j          .Lrace_8011910C
/* CF420 80119060 00000000 */   nop
glabel Lrace_80119064
/* CF424 80119064 C7A400C4 */  lwc1       $f4, 0xC4($sp)
/* CF428 80119068 C7A000E8 */  lwc1       $f0, 0xE8($sp)
/* CF42C 8011906C 46002102 */  mul.s      $f4, $f4, $f0
/* CF430 80119070 C7A200E4 */  lwc1       $f2, 0xE4($sp)
/* CF434 80119074 C7A000C8 */  lwc1       $f0, 0xC8($sp)
/* CF438 80119078 46020002 */  mul.s      $f0, $f0, $f2
/* CF43C 8011907C 46002101 */  sub.s      $f4, $f4, $f0
/* CF440 80119080 E6440000 */  swc1       $f4, 0x0($s2)
/* CF444 80119084 C7A400C8 */  lwc1       $f4, 0xC8($sp)
/* CF448 80119088 C7A000E0 */  lwc1       $f0, 0xE0($sp)
/* CF44C 8011908C 46002102 */  mul.s      $f4, $f4, $f0
/* CF450 80119090 C7A200E8 */  lwc1       $f2, 0xE8($sp)
/* CF454 80119094 C7A000C0 */  lwc1       $f0, 0xC0($sp)
/* CF458 80119098 46020002 */  mul.s      $f0, $f0, $f2
/* CF45C 8011909C 46002101 */  sub.s      $f4, $f4, $f0
/* CF460 801190A0 E6440004 */  swc1       $f4, 0x4($s2)
/* CF464 801190A4 C7A400C0 */  lwc1       $f4, 0xC0($sp)
/* CF468 801190A8 C7A000E4 */  lwc1       $f0, 0xE4($sp)
/* CF46C 801190AC 46002102 */  mul.s      $f4, $f4, $f0
/* CF470 801190B0 C7A200E0 */  lwc1       $f2, 0xE0($sp)
/* CF474 801190B4 08046443 */  j          .Lrace_8011910C
/* CF478 801190B8 00000000 */   nop
glabel Lrace_801190BC
/* CF47C 801190BC C7A400C4 */  lwc1       $f4, 0xC4($sp)
/* CF480 801190C0 C7A000F8 */  lwc1       $f0, 0xF8($sp)
/* CF484 801190C4 46002102 */  mul.s      $f4, $f4, $f0
/* CF488 801190C8 C7A200F4 */  lwc1       $f2, 0xF4($sp)
/* CF48C 801190CC C7A000C8 */  lwc1       $f0, 0xC8($sp)
/* CF490 801190D0 46020002 */  mul.s      $f0, $f0, $f2
/* CF494 801190D4 46002101 */  sub.s      $f4, $f4, $f0
/* CF498 801190D8 E6440000 */  swc1       $f4, 0x0($s2)
/* CF49C 801190DC C7A400C8 */  lwc1       $f4, 0xC8($sp)
/* CF4A0 801190E0 C7A000F0 */  lwc1       $f0, 0xF0($sp)
/* CF4A4 801190E4 46002102 */  mul.s      $f4, $f4, $f0
/* CF4A8 801190E8 C7A200F8 */  lwc1       $f2, 0xF8($sp)
/* CF4AC 801190EC C7A000C0 */  lwc1       $f0, 0xC0($sp)
/* CF4B0 801190F0 46020002 */  mul.s      $f0, $f0, $f2
/* CF4B4 801190F4 46002101 */  sub.s      $f4, $f4, $f0
/* CF4B8 801190F8 E6440004 */  swc1       $f4, 0x4($s2)
/* CF4BC 801190FC C7A400C0 */  lwc1       $f4, 0xC0($sp)
/* CF4C0 80119100 C7A000F4 */  lwc1       $f0, 0xF4($sp)
/* CF4C4 80119104 46002102 */  mul.s      $f4, $f4, $f0
/* CF4C8 80119108 C7A200F0 */  lwc1       $f2, 0xF0($sp)
.Lrace_8011910C:
/* CF4CC 8011910C C7A000C4 */  lwc1       $f0, 0xC4($sp)
.Lrace_80119110:
/* CF4D0 80119110 46020002 */  mul.s      $f0, $f0, $f2
/* CF4D4 80119114 46002101 */  sub.s      $f4, $f4, $f0
/* CF4D8 80119118 02402021 */  addu       $a0, $s2, $zero
/* CF4DC 8011911C 02402821 */  addu       $a1, $s2, $zero
/* CF4E0 80119120 0C000F26 */  jal        func_80003C98
/* CF4E4 80119124 E6440008 */   swc1      $f4, 0x8($s2)
.Lrace_80119128:
/* CF4E8 80119128 C6C2001C */  lwc1       $f2, 0x1C($s6)
/* CF4EC 8011912C C6E0001C */  lwc1       $f0, 0x1C($s7)
/* CF4F0 80119130 46001081 */  sub.s      $f2, $f2, $f0
/* CF4F4 80119134 26C2001C */  addiu      $v0, $s6, 0x1C
/* CF4F8 80119138 26E3001C */  addiu      $v1, $s7, 0x1C
/* CF4FC 8011913C E7A20100 */  swc1       $f2, 0x100($sp)
/* CF500 80119140 C4460004 */  lwc1       $f6, 0x4($v0)
/* CF504 80119144 C4600004 */  lwc1       $f0, 0x4($v1)
/* CF508 80119148 46003181 */  sub.s      $f6, $f6, $f0
/* CF50C 8011914C E7A60104 */  swc1       $f6, 0x104($sp)
/* CF510 80119150 C4440008 */  lwc1       $f4, 0x8($v0)
/* CF514 80119154 C4600008 */  lwc1       $f0, 0x8($v1)
/* CF518 80119158 46002101 */  sub.s      $f4, $f4, $f0
/* CF51C 8011915C E7A40108 */  swc1       $f4, 0x108($sp)
/* CF520 80119160 C6480000 */  lwc1       $f8, 0x0($s2)
/* CF524 80119164 46081082 */  mul.s      $f2, $f2, $f8
/* CF528 80119168 C6400004 */  lwc1       $f0, 0x4($s2)
/* CF52C 8011916C 46003182 */  mul.s      $f6, $f6, $f0
/* CF530 80119170 C6400008 */  lwc1       $f0, 0x8($s2)
/* CF534 80119174 46002102 */  mul.s      $f4, $f4, $f0
/* CF538 80119178 46061080 */  add.s      $f2, $f2, $f6
/* CF53C 8011917C 46041080 */  add.s      $f2, $f2, $f4
/* CF540 80119180 44800000 */  mtc1       $zero, $f0
/* CF544 80119184 4600103C */  c.lt.s     $f2, $f0
/* CF548 80119188 00000000 */  nop
/* CF54C 8011918C 45000009 */  bc1f       .Lrace_801191B4
/* CF550 80119190 24020001 */   addiu     $v0, $zero, 0x1
/* CF554 80119194 46004007 */  neg.s      $f0, $f8
/* CF558 80119198 E6400000 */  swc1       $f0, 0x0($s2)
/* CF55C 8011919C C6400004 */  lwc1       $f0, 0x4($s2)
/* CF560 801191A0 C6420008 */  lwc1       $f2, 0x8($s2)
/* CF564 801191A4 46000007 */  neg.s      $f0, $f0
/* CF568 801191A8 46001087 */  neg.s      $f2, $f2
/* CF56C 801191AC E6400004 */  swc1       $f0, 0x4($s2)
/* CF570 801191B0 E6420008 */  swc1       $f2, 0x8($s2)
.Lrace_801191B4:
/* CF574 801191B4 8FBF0130 */  lw         $ra, 0x130($sp)
/* CF578 801191B8 8FB7012C */  lw         $s7, 0x12C($sp)
/* CF57C 801191BC 8FB60128 */  lw         $s6, 0x128($sp)
/* CF580 801191C0 8FB50124 */  lw         $s5, 0x124($sp)
/* CF584 801191C4 8FB40120 */  lw         $s4, 0x120($sp)
/* CF588 801191C8 8FB3011C */  lw         $s3, 0x11C($sp)
/* CF58C 801191CC 8FB20118 */  lw         $s2, 0x118($sp)
/* CF590 801191D0 8FB10114 */  lw         $s1, 0x114($sp)
/* CF594 801191D4 8FB00110 */  lw         $s0, 0x110($sp)
/* CF598 801191D8 D7B60140 */  ldc1       $f22, 0x140($sp)
/* CF59C 801191DC D7B40138 */  ldc1       $f20, 0x138($sp)
/* CF5A0 801191E0 03E00008 */  jr         $ra
/* CF5A4 801191E4 27BD0148 */   addiu     $sp, $sp, 0x148

glabel func_race_801191E8
/* CF5A8 801191E8 C48000DC */  lwc1       $f0, 0xDC($a0)
/* CF5AC 801191EC 03E00008 */  jr         $ra
/* CF5B0 801191F0 00000000 */   nop

glabel func_race_801191F4
/* CF5B4 801191F4 03E00008 */  jr         $ra
/* CF5B8 801191F8 AC8500DC */   sw        $a1, 0xDC($a0)

glabel func_race_801191FC
/* CF5BC 801191FC 8C8200E0 */  lw         $v0, 0xE0($a0)
/* CF5C0 80119200 03E00008 */  jr         $ra
/* CF5C4 80119204 00000000 */   nop

glabel func_race_80119208
/* CF5C8 80119208 03E00008 */  jr         $ra
/* CF5CC 8011920C AC8500E0 */   sw        $a1, 0xE0($a0)

glabel func_race_80119210
/* CF5D0 80119210 C48000D8 */  lwc1       $f0, 0xD8($a0)
/* CF5D4 80119214 03E00008 */  jr         $ra
/* CF5D8 80119218 00000000 */   nop

glabel func_race_8011921C
/* CF5DC 8011921C C48000D4 */  lwc1       $f0, 0xD4($a0)
/* CF5E0 80119220 03E00008 */  jr         $ra
/* CF5E4 80119224 00000000 */   nop

glabel func_race_80119228
/* CF5E8 80119228 C48000D0 */  lwc1       $f0, 0xD0($a0)
/* CF5EC 8011922C 03E00008 */  jr         $ra
/* CF5F0 80119230 00000000 */   nop
