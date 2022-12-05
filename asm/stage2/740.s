.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007EE20
/* 76150 8007EE20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 76154 8007EE24 3C028004 */  lui        $v0, %hi(D_800403D8)
/* 76158 8007EE28 244203D8 */  addiu      $v0, $v0, %lo(D_800403D8)
/* 7615C 8007EE2C 30A50001 */  andi       $a1, $a1, 0x1
/* 76160 8007EE30 AFBF0010 */  sw         $ra, 0x10($sp)
/* 76164 8007EE34 10A00003 */  beqz       $a1, .L8007EE44
/* 76168 8007EE38 AC820000 */   sw        $v0, 0x0($a0)
/* 7616C 8007EE3C 0C01FB5C */  jal        func_8007ED70
/* 76170 8007EE40 00000000 */   nop
.L8007EE44:
/* 76174 8007EE44 8FBF0010 */  lw         $ra, 0x10($sp)
/* 76178 8007EE48 03E00008 */  jr         $ra
/* 7617C 8007EE4C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007EE50
/* 76180 8007EE50 00801021 */  addu       $v0, $a0, $zero
/* 76184 8007EE54 3C038004 */  lui        $v1, %hi(D_80040428)
/* 76188 8007EE58 3C018004 */  lui        $at, %hi(D_800403D0)
/* 7618C 8007EE5C C42003D0 */  lwc1       $f0, %lo(D_800403D0)($at)
/* 76190 8007EE60 24630428 */  addiu      $v1, $v1, %lo(D_80040428)
/* 76194 8007EE64 AC430014 */  sw         $v1, 0x14($v0)
/* 76198 8007EE68 AC400000 */  sw         $zero, 0x0($v0)
/* 7619C 8007EE6C AC400008 */  sw         $zero, 0x8($v0)
/* 761A0 8007EE70 AC400004 */  sw         $zero, 0x4($v0)
/* 761A4 8007EE74 E440000C */  swc1       $f0, 0xC($v0)
/* 761A8 8007EE78 03E00008 */  jr         $ra
/* 761AC 8007EE7C E4400010 */   swc1      $f0, 0x10($v0)

glabel func_8007EE80
/* 761B0 8007EE80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 761B4 8007EE84 AFB10014 */  sw         $s1, 0x14($sp)
/* 761B8 8007EE88 00808821 */  addu       $s1, $a0, $zero
/* 761BC 8007EE8C AFB00010 */  sw         $s0, 0x10($sp)
/* 761C0 8007EE90 00A08021 */  addu       $s0, $a1, $zero
/* 761C4 8007EE94 3C028004 */  lui        $v0, %hi(D_80040428)
/* 761C8 8007EE98 24420428 */  addiu      $v0, $v0, %lo(D_80040428)
/* 761CC 8007EE9C AFBF0018 */  sw         $ra, 0x18($sp)
/* 761D0 8007EEA0 0C01FBB4 */  jal        func_8007EED0
/* 761D4 8007EEA4 AE220014 */   sw        $v0, 0x14($s1)
/* 761D8 8007EEA8 32100001 */  andi       $s0, $s0, 0x1
/* 761DC 8007EEAC 12000003 */  beqz       $s0, .L8007EEBC
/* 761E0 8007EEB0 00000000 */   nop
/* 761E4 8007EEB4 0C01FB5C */  jal        func_8007ED70
/* 761E8 8007EEB8 02202021 */   addu      $a0, $s1, $zero
.L8007EEBC:
/* 761EC 8007EEBC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 761F0 8007EEC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 761F4 8007EEC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 761F8 8007EEC8 03E00008 */  jr         $ra
/* 761FC 8007EECC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007EED0
/* 76200 8007EED0 3C018004 */  lui        $at, %hi(D_800403D4)
/* 76204 8007EED4 C42003D4 */  lwc1       $f0, %lo(D_800403D4)($at)
/* 76208 8007EED8 AC800000 */  sw         $zero, 0x0($a0)
/* 7620C 8007EEDC AC800008 */  sw         $zero, 0x8($a0)
/* 76210 8007EEE0 E480000C */  swc1       $f0, 0xC($a0)
/* 76214 8007EEE4 03E00008 */  jr         $ra
/* 76218 8007EEE8 E4800010 */   swc1      $f0, 0x10($a0)

glabel func_8007EEEC
/* 7621C 8007EEEC 8C820004 */  lw         $v0, 0x4($a0)
/* 76220 8007EEF0 50400008 */  beql       $v0, $zero, .L8007EF14
/* 76224 8007EEF4 ACA20048 */   sw        $v0, 0x48($a1)
.L8007EEF8:
/* 76228 8007EEF8 10450007 */  beq        $v0, $a1, .L8007EF18
/* 7622C 8007EEFC 00000000 */   nop
/* 76230 8007EF00 8C420048 */  lw         $v0, 0x48($v0)
/* 76234 8007EF04 1440FFFC */  bnez       $v0, .L8007EEF8
/* 76238 8007EF08 00000000 */   nop
/* 7623C 8007EF0C 8C820004 */  lw         $v0, 0x4($a0)
/* 76240 8007EF10 ACA20048 */  sw         $v0, 0x48($a1)
.L8007EF14:
/* 76244 8007EF14 AC850004 */  sw         $a1, 0x4($a0)
.L8007EF18:
/* 76248 8007EF18 03E00008 */  jr         $ra
/* 7624C 8007EF1C 00000000 */   nop

glabel func_8007EF20
/* 76250 8007EF20 8C830004 */  lw         $v1, 0x4($a0)
/* 76254 8007EF24 10600017 */  beqz       $v1, .L8007EF84
/* 76258 8007EF28 00001021 */   addu      $v0, $zero, $zero
/* 7625C 8007EF2C 5465000A */  bnel       $v1, $a1, .L8007EF58
/* 76260 8007EF30 00602021 */   addu      $a0, $v1, $zero
/* 76264 8007EF34 8CA30048 */  lw         $v1, 0x48($a1)
/* 76268 8007EF38 00A01021 */  addu       $v0, $a1, $zero
/* 7626C 8007EF3C AC830004 */  sw         $v1, 0x4($a0)
/* 76270 8007EF40 03E00008 */  jr         $ra
/* 76274 8007EF44 AC400048 */   sw        $zero, 0x48($v0)
.L8007EF48:
/* 76278 8007EF48 8C430048 */  lw         $v1, 0x48($v0)
/* 7627C 8007EF4C AC830048 */  sw         $v1, 0x48($a0)
/* 76280 8007EF50 03E00008 */  jr         $ra
/* 76284 8007EF54 AC400048 */   sw        $zero, 0x48($v0)
.L8007EF58:
/* 76288 8007EF58 8C820048 */  lw         $v0, 0x48($a0)
.L8007EF5C:
/* 7628C 8007EF5C 10400007 */  beqz       $v0, .L8007EF7C
/* 76290 8007EF60 00000000 */   nop
/* 76294 8007EF64 1045FFF8 */  beq        $v0, $a1, .L8007EF48
/* 76298 8007EF68 00000000 */   nop
/* 7629C 8007EF6C 00402021 */  addu       $a0, $v0, $zero
/* 762A0 8007EF70 8C420048 */  lw         $v0, 0x48($v0)
/* 762A4 8007EF74 0801FBD7 */  j          .L8007EF5C
/* 762A8 8007EF78 00000000 */   nop
.L8007EF7C:
/* 762AC 8007EF7C 03E00008 */  jr         $ra
/* 762B0 8007EF80 00001021 */   addu      $v0, $zero, $zero
.L8007EF84:
/* 762B4 8007EF84 03E00008 */  jr         $ra
/* 762B8 8007EF88 00000000 */   nop

glabel func_8007EF8C
/* 762BC 8007EF8C 8C820008 */  lw         $v0, 0x8($a0)
/* 762C0 8007EF90 50400008 */  beql       $v0, $zero, .L8007EFB4
/* 762C4 8007EF94 ACA2004C */   sw        $v0, 0x4C($a1)
.L8007EF98:
/* 762C8 8007EF98 10450007 */  beq        $v0, $a1, .L8007EFB8
/* 762CC 8007EF9C 00000000 */   nop
/* 762D0 8007EFA0 8C42004C */  lw         $v0, 0x4C($v0)
/* 762D4 8007EFA4 1440FFFC */  bnez       $v0, .L8007EF98
/* 762D8 8007EFA8 00000000 */   nop
/* 762DC 8007EFAC 8C820008 */  lw         $v0, 0x8($a0)
/* 762E0 8007EFB0 ACA2004C */  sw         $v0, 0x4C($a1)
.L8007EFB4:
/* 762E4 8007EFB4 AC850008 */  sw         $a1, 0x8($a0)
.L8007EFB8:
/* 762E8 8007EFB8 03E00008 */  jr         $ra
/* 762EC 8007EFBC 00000000 */   nop

glabel func_8007EFC0
/* 762F0 8007EFC0 8C820008 */  lw         $v0, 0x8($a0)
/* 762F4 8007EFC4 10400014 */  beqz       $v0, .L8007F018
/* 762F8 8007EFC8 00000000 */   nop
/* 762FC 8007EFCC 54450009 */  bnel       $v0, $a1, .L8007EFF4
/* 76300 8007EFD0 00402021 */   addu      $a0, $v0, $zero
/* 76304 8007EFD4 8CA2004C */  lw         $v0, 0x4C($a1)
/* 76308 8007EFD8 AC820008 */  sw         $v0, 0x8($a0)
/* 7630C 8007EFDC 03E00008 */  jr         $ra
/* 76310 8007EFE0 ACA0004C */   sw        $zero, 0x4C($a1)
.L8007EFE4:
/* 76314 8007EFE4 8C62004C */  lw         $v0, 0x4C($v1)
/* 76318 8007EFE8 AC82004C */  sw         $v0, 0x4C($a0)
/* 7631C 8007EFEC 03E00008 */  jr         $ra
/* 76320 8007EFF0 AC60004C */   sw        $zero, 0x4C($v1)
.L8007EFF4:
/* 76324 8007EFF4 8C83004C */  lw         $v1, 0x4C($a0)
.L8007EFF8:
/* 76328 8007EFF8 10600007 */  beqz       $v1, .L8007F018
/* 7632C 8007EFFC 00000000 */   nop
/* 76330 8007F000 1065FFF8 */  beq        $v1, $a1, .L8007EFE4
/* 76334 8007F004 00000000 */   nop
/* 76338 8007F008 00602021 */  addu       $a0, $v1, $zero
/* 7633C 8007F00C 8C63004C */  lw         $v1, 0x4C($v1)
/* 76340 8007F010 0801FBFE */  j          .L8007EFF8
/* 76344 8007F014 00000000 */   nop
.L8007F018:
/* 76348 8007F018 03E00008 */  jr         $ra
/* 7634C 8007F01C 00000000 */   nop

glabel func_8007F020
/* 76350 8007F020 8C820000 */  lw         $v0, 0x0($a0)
/* 76354 8007F024 03E00008 */  jr         $ra
/* 76358 8007F028 30420004 */   andi      $v0, $v0, 0x4

glabel func_8007F02C
/* 7635C 8007F02C 8C820000 */  lw         $v0, 0x0($a0)
/* 76360 8007F030 2403FFFB */  addiu      $v1, $zero, -0x5
/* 76364 8007F034 00431024 */  and        $v0, $v0, $v1
/* 76368 8007F038 03E00008 */  jr         $ra
/* 7636C 8007F03C AC820000 */   sw        $v0, 0x0($a0)

glabel func_8007F040
/* 76370 8007F040 8C820000 */  lw         $v0, 0x0($a0)
/* 76374 8007F044 34420004 */  ori        $v0, $v0, 0x4
/* 76378 8007F048 03E00008 */  jr         $ra
/* 7637C 8007F04C AC820000 */   sw        $v0, 0x0($a0)

glabel func_8007F050
/* 76380 8007F050 8C820000 */  lw         $v0, 0x0($a0)
/* 76384 8007F054 03E00008 */  jr         $ra
/* 76388 8007F058 30420002 */   andi      $v0, $v0, 0x2

glabel func_8007F05C
/* 7638C 8007F05C 8C820000 */  lw         $v0, 0x0($a0)
/* 76390 8007F060 03E00008 */  jr         $ra
/* 76394 8007F064 30420001 */   andi      $v0, $v0, 0x1

glabel func_8007F068
/* 76398 8007F068 C4800010 */  lwc1       $f0, 0x10($a0)
/* 7639C 8007F06C 03E00008 */  jr         $ra
/* 763A0 8007F070 00000000 */   nop

glabel func_8007F074
/* 763A4 8007F074 C480000C */  lwc1       $f0, 0xC($a0)
/* 763A8 8007F078 03E00008 */  jr         $ra
/* 763AC 8007F07C 00000000 */   nop

glabel func_8007F080
/* 763B0 8007F080 03E00008 */  jr         $ra
/* 763B4 8007F084 AC850010 */   sw        $a1, 0x10($a0)

glabel func_8007F088
/* 763B8 8007F088 03E00008 */  jr         $ra
/* 763BC 8007F08C AC85000C */   sw        $a1, 0xC($a0)

glabel func_8007F090
/* 763C0 8007F090 00801021 */  addu       $v0, $a0, $zero
/* 763C4 8007F094 3C038004 */  lui        $v1, %hi(D_800404A0)
/* 763C8 8007F098 246304A0 */  addiu      $v1, $v1, %lo(D_800404A0)
/* 763CC 8007F09C AC430004 */  sw         $v1, 0x4($v0)
/* 763D0 8007F0A0 03E00008 */  jr         $ra
/* 763D4 8007F0A4 AC400000 */   sw        $zero, 0x0($v0)

glabel func_8007F0A8
/* 763D8 8007F0A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 763DC 8007F0AC 3C028004 */  lui        $v0, %hi(D_800404A0)
/* 763E0 8007F0B0 244204A0 */  addiu      $v0, $v0, %lo(D_800404A0)
/* 763E4 8007F0B4 30A50001 */  andi       $a1, $a1, 0x1
/* 763E8 8007F0B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 763EC 8007F0BC 10A00003 */  beqz       $a1, .L8007F0CC
/* 763F0 8007F0C0 AC820004 */   sw        $v0, 0x4($a0)
/* 763F4 8007F0C4 0C01FB5C */  jal        func_8007ED70
/* 763F8 8007F0C8 00000000 */   nop
.L8007F0CC:
/* 763FC 8007F0CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 76400 8007F0D0 03E00008 */  jr         $ra
/* 76404 8007F0D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007F0D8
/* 76408 8007F0D8 8C820000 */  lw         $v0, 0x0($a0)
/* 7640C 8007F0DC 03E00008 */  jr         $ra
/* 76410 8007F0E0 00000000 */   nop
