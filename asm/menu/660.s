.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8010EEA0
/* 12CF90 8010EEA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12CF94 8010EEA4 AFB20018 */  sw         $s2, 0x18($sp)
/* 12CF98 8010EEA8 00809021 */  addu       $s2, $a0, $zero
/* 12CF9C 8010EEAC AFBF0020 */  sw         $ra, 0x20($sp)
/* 12CFA0 8010EEB0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12CFA4 8010EEB4 AFB10014 */  sw         $s1, 0x14($sp)
/* 12CFA8 8010EEB8 0C0401D8 */  jal        func_menu_80100760
/* 12CFAC 8010EEBC AFB00010 */   sw        $s0, 0x10($sp)
/* 12CFB0 8010EEC0 3C02800D */  lui        $v0, %hi(D_menu_800CF508)
/* 12CFB4 8010EEC4 2442F508 */  addiu      $v0, $v0, %lo(D_menu_800CF508)
/* 12CFB8 8010EEC8 26440368 */  addiu      $a0, $s2, 0x368
/* 12CFBC 8010EECC 0C047BA4 */  jal        func_menu_8011EE90
/* 12CFC0 8010EED0 AE420000 */   sw        $v0, 0x0($s2)
/* 12CFC4 8010EED4 0C047BA4 */  jal        func_menu_8011EE90
/* 12CFC8 8010EED8 264403C4 */   addiu     $a0, $s2, 0x3C4
/* 12CFCC 8010EEDC 0C047BA4 */  jal        func_menu_8011EE90
/* 12CFD0 8010EEE0 26440420 */   addiu     $a0, $s2, 0x420
/* 12CFD4 8010EEE4 0C047DD8 */  jal        func_menu_8011F760
/* 12CFD8 8010EEE8 2644047C */   addiu     $a0, $s2, 0x47C
/* 12CFDC 8010EEEC 265104F4 */  addiu      $s1, $s2, 0x4F4
/* 12CFE0 8010EEF0 24100004 */  addiu      $s0, $zero, 0x4
/* 12CFE4 8010EEF4 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_8010EEF8:
/* 12CFE8 8010EEF8 0C047CA8 */  jal        func_menu_8011F2A0
/* 12CFEC 8010EEFC 02202021 */   addu      $a0, $s1, $zero
/* 12CFF0 8010EF00 2610FFFF */  addiu      $s0, $s0, -0x1
/* 12CFF4 8010EF04 1613FFFC */  bne        $s0, $s3, .Lmenu_8010EEF8
/* 12CFF8 8010EF08 26310078 */   addiu     $s1, $s1, 0x78
/* 12CFFC 8010EF0C 2651074C */  addiu      $s1, $s2, 0x74C
/* 12D000 8010EF10 24100004 */  addiu      $s0, $zero, 0x4
/* 12D004 8010EF14 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_8010EF18:
/* 12D008 8010EF18 0C047CA8 */  jal        func_menu_8011F2A0
/* 12D00C 8010EF1C 02202021 */   addu      $a0, $s1, $zero
/* 12D010 8010EF20 2610FFFF */  addiu      $s0, $s0, -0x1
/* 12D014 8010EF24 1613FFFC */  bne        $s0, $s3, .Lmenu_8010EF18
/* 12D018 8010EF28 26310078 */   addiu     $s1, $s1, 0x78
/* 12D01C 8010EF2C 0C047CA8 */  jal        func_menu_8011F2A0
/* 12D020 8010EF30 264409A4 */   addiu     $a0, $s2, 0x9A4
/* 12D024 8010EF34 0C047CA8 */  jal        func_menu_8011F2A0
/* 12D028 8010EF38 26440A1C */   addiu     $a0, $s2, 0xA1C
/* 12D02C 8010EF3C 0C047CA8 */  jal        func_menu_8011F2A0
/* 12D030 8010EF40 26440A94 */   addiu     $a0, $s2, 0xA94
/* 12D034 8010EF44 0C047DD8 */  jal        func_menu_8011F760
/* 12D038 8010EF48 26440B0C */   addiu     $a0, $s2, 0xB0C
/* 12D03C 8010EF4C 0C0444A0 */  jal        func_menu_80111280
/* 12D040 8010EF50 26440B84 */   addiu     $a0, $s2, 0xB84
/* 12D044 8010EF54 0C0444A0 */  jal        func_menu_80111280
/* 12D048 8010EF58 26440DA0 */   addiu     $a0, $s2, 0xDA0
/* 12D04C 8010EF5C 0C040F38 */  jal        func_menu_80103CE0
/* 12D050 8010EF60 26440FBC */   addiu     $a0, $s2, 0xFBC
/* 12D054 8010EF64 0C040F38 */  jal        func_menu_80103CE0
/* 12D058 8010EF68 264412AC */   addiu     $a0, $s2, 0x12AC
/* 12D05C 8010EF6C 0C040F38 */  jal        func_menu_80103CE0
/* 12D060 8010EF70 2644159C */   addiu     $a0, $s2, 0x159C
/* 12D064 8010EF74 0C040F38 */  jal        func_menu_80103CE0
/* 12D068 8010EF78 2644188C */   addiu     $a0, $s2, 0x188C
/* 12D06C 8010EF7C 0C0016DC */  jal        func_80005B70
/* 12D070 8010EF80 26441B7C */   addiu     $a0, $s2, 0x1B7C
/* 12D074 8010EF84 0C0016DC */  jal        func_80005B70
/* 12D078 8010EF88 26441B88 */   addiu     $a0, $s2, 0x1B88
/* 12D07C 8010EF8C 0C043BED */  jal        func_menu_8010EFB4
/* 12D080 8010EF90 02402021 */   addu      $a0, $s2, $zero
/* 12D084 8010EF94 02401021 */  addu       $v0, $s2, $zero
/* 12D088 8010EF98 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12D08C 8010EF9C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12D090 8010EFA0 8FB20018 */  lw         $s2, 0x18($sp)
/* 12D094 8010EFA4 8FB10014 */  lw         $s1, 0x14($sp)
/* 12D098 8010EFA8 8FB00010 */  lw         $s0, 0x10($sp)
/* 12D09C 8010EFAC 03E00008 */  jr         $ra
/* 12D0A0 8010EFB0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010EFB4
/* 12D0A4 8010EFB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12D0A8 8010EFB8 AFB00010 */  sw         $s0, 0x10($sp)
/* 12D0AC 8010EFBC 00808021 */  addu       $s0, $a0, $zero
/* 12D0B0 8010EFC0 26041B94 */  addiu      $a0, $s0, 0x1B94
/* 12D0B4 8010EFC4 00002821 */  addu       $a1, $zero, $zero
/* 12D0B8 8010EFC8 240601B8 */  addiu      $a2, $zero, 0x1B8
/* 12D0BC 8010EFCC AFBF0014 */  sw         $ra, 0x14($sp)
/* 12D0C0 8010EFD0 AE001E1C */  sw         $zero, 0x1E1C($s0)
/* 12D0C4 8010EFD4 AE001E20 */  sw         $zero, 0x1E20($s0)
/* 12D0C8 8010EFD8 AE001E24 */  sw         $zero, 0x1E24($s0)
/* 12D0CC 8010EFDC AE001E28 */  sw         $zero, 0x1E28($s0)
/* 12D0D0 8010EFE0 AE001E2C */  sw         $zero, 0x1E2C($s0)
/* 12D0D4 8010EFE4 AE001E30 */  sw         $zero, 0x1E30($s0)
/* 12D0D8 8010EFE8 0C000697 */  jal        func_80001A5C
/* 12D0DC 8010EFEC AE002234 */   sw        $zero, 0x2234($s0)
/* 12D0E0 8010EFF0 26041D4C */  addiu      $a0, $s0, 0x1D4C
/* 12D0E4 8010EFF4 00002821 */  addu       $a1, $zero, $zero
/* 12D0E8 8010EFF8 0C000697 */  jal        func_80001A5C
/* 12D0EC 8010EFFC 240600A0 */   addiu     $a2, $zero, 0xA0
/* 12D0F0 8010F000 26041DEC */  addiu      $a0, $s0, 0x1DEC
/* 12D0F4 8010F004 00002821 */  addu       $a1, $zero, $zero
/* 12D0F8 8010F008 0C000697 */  jal        func_80001A5C
/* 12D0FC 8010F00C 24060030 */   addiu     $a2, $zero, 0x30
/* 12D100 8010F010 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12D104 8010F014 8FB00010 */  lw         $s0, 0x10($sp)
/* 12D108 8010F018 03E00008 */  jr         $ra
/* 12D10C 8010F01C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010F020
/* 12D110 8010F020 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12D114 8010F024 AFB10014 */  sw         $s1, 0x14($sp)
/* 12D118 8010F028 00808821 */  addu       $s1, $a0, $zero
/* 12D11C 8010F02C AFB3001C */  sw         $s3, 0x1C($sp)
/* 12D120 8010F030 00A09821 */  addu       $s3, $a1, $zero
/* 12D124 8010F034 3C02800D */  lui        $v0, %hi(D_menu_800CF508)
/* 12D128 8010F038 2442F508 */  addiu      $v0, $v0, %lo(D_menu_800CF508)
/* 12D12C 8010F03C AFBF0020 */  sw         $ra, 0x20($sp)
/* 12D130 8010F040 AFB20018 */  sw         $s2, 0x18($sp)
/* 12D134 8010F044 AFB00010 */  sw         $s0, 0x10($sp)
/* 12D138 8010F048 0C043C9F */  jal        func_menu_8010F284
/* 12D13C 8010F04C AE220000 */   sw        $v0, 0x0($s1)
/* 12D140 8010F050 26241B88 */  addiu      $a0, $s1, 0x1B88
/* 12D144 8010F054 0C0016E2 */  jal        func_80005B88
/* 12D148 8010F058 24050002 */   addiu     $a1, $zero, 0x2
/* 12D14C 8010F05C 26241B7C */  addiu      $a0, $s1, 0x1B7C
/* 12D150 8010F060 0C0016E2 */  jal        func_80005B88
/* 12D154 8010F064 24050002 */   addiu     $a1, $zero, 0x2
/* 12D158 8010F068 2624188C */  addiu      $a0, $s1, 0x188C
/* 12D15C 8010F06C 0C040F4B */  jal        func_menu_80103D2C
/* 12D160 8010F070 24050002 */   addiu     $a1, $zero, 0x2
/* 12D164 8010F074 2624159C */  addiu      $a0, $s1, 0x159C
/* 12D168 8010F078 0C040F4B */  jal        func_menu_80103D2C
/* 12D16C 8010F07C 24050002 */   addiu     $a1, $zero, 0x2
/* 12D170 8010F080 262412AC */  addiu      $a0, $s1, 0x12AC
/* 12D174 8010F084 0C040F4B */  jal        func_menu_80103D2C
/* 12D178 8010F088 24050002 */   addiu     $a1, $zero, 0x2
/* 12D17C 8010F08C 26240FBC */  addiu      $a0, $s1, 0xFBC
/* 12D180 8010F090 0C040F4B */  jal        func_menu_80103D2C
/* 12D184 8010F094 24050002 */   addiu     $a1, $zero, 0x2
/* 12D188 8010F098 26240DA0 */  addiu      $a0, $s1, 0xDA0
/* 12D18C 8010F09C 0C0444B1 */  jal        func_menu_801112C4
/* 12D190 8010F0A0 24050002 */   addiu     $a1, $zero, 0x2
/* 12D194 8010F0A4 26240B84 */  addiu      $a0, $s1, 0xB84
/* 12D198 8010F0A8 0C0444B1 */  jal        func_menu_801112C4
/* 12D19C 8010F0AC 24050002 */   addiu     $a1, $zero, 0x2
/* 12D1A0 8010F0B0 26240B0C */  addiu      $a0, $s1, 0xB0C
/* 12D1A4 8010F0B4 0C047DE7 */  jal        func_menu_8011F79C
/* 12D1A8 8010F0B8 24050002 */   addiu     $a1, $zero, 0x2
/* 12D1AC 8010F0BC 26240A94 */  addiu      $a0, $s1, 0xA94
/* 12D1B0 8010F0C0 0C047CB9 */  jal        func_menu_8011F2E4
/* 12D1B4 8010F0C4 24050002 */   addiu     $a1, $zero, 0x2
/* 12D1B8 8010F0C8 26240A1C */  addiu      $a0, $s1, 0xA1C
/* 12D1BC 8010F0CC 0C047CB9 */  jal        func_menu_8011F2E4
/* 12D1C0 8010F0D0 24050002 */   addiu     $a1, $zero, 0x2
/* 12D1C4 8010F0D4 263009A4 */  addiu      $s0, $s1, 0x9A4
/* 12D1C8 8010F0D8 02002021 */  addu       $a0, $s0, $zero
/* 12D1CC 8010F0DC 0C047CB9 */  jal        func_menu_8011F2E4
/* 12D1D0 8010F0E0 24050002 */   addiu     $a1, $zero, 0x2
/* 12D1D4 8010F0E4 2622074C */  addiu      $v0, $s1, 0x74C
/* 12D1D8 8010F0E8 5040000E */  beql       $v0, $zero, .Lmenu_8010F124
/* 12D1DC 8010F0EC 262204F4 */   addiu     $v0, $s1, 0x4F4
/* 12D1E0 8010F0F0 5050000C */  beql       $v0, $s0, .Lmenu_8010F124
/* 12D1E4 8010F0F4 262204F4 */   addiu     $v0, $s1, 0x4F4
/* 12D1E8 8010F0F8 00409021 */  addu       $s2, $v0, $zero
/* 12D1EC 8010F0FC 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_8010F100:
/* 12D1F0 8010F100 8E020054 */  lw         $v0, 0x54($s0)
/* 12D1F4 8010F104 24050002 */  addiu      $a1, $zero, 0x2
/* 12D1F8 8010F108 84440010 */  lh         $a0, 0x10($v0)
/* 12D1FC 8010F10C 8C420014 */  lw         $v0, 0x14($v0)
/* 12D200 8010F110 0040F809 */  jalr       $v0
/* 12D204 8010F114 02042021 */   addu      $a0, $s0, $a0
/* 12D208 8010F118 1650FFF9 */  bne        $s2, $s0, .Lmenu_8010F100
/* 12D20C 8010F11C 2610FF88 */   addiu     $s0, $s0, -0x78
/* 12D210 8010F120 262204F4 */  addiu      $v0, $s1, 0x4F4
.Lmenu_8010F124:
/* 12D214 8010F124 1040000C */  beqz       $v0, .Lmenu_8010F158
/* 12D218 8010F128 2630074C */   addiu     $s0, $s1, 0x74C
/* 12D21C 8010F12C 1050000A */  beq        $v0, $s0, .Lmenu_8010F158
/* 12D220 8010F130 00409021 */   addu      $s2, $v0, $zero
/* 12D224 8010F134 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_8010F138:
/* 12D228 8010F138 8E020054 */  lw         $v0, 0x54($s0)
/* 12D22C 8010F13C 24050002 */  addiu      $a1, $zero, 0x2
/* 12D230 8010F140 84440010 */  lh         $a0, 0x10($v0)
/* 12D234 8010F144 8C420014 */  lw         $v0, 0x14($v0)
/* 12D238 8010F148 0040F809 */  jalr       $v0
/* 12D23C 8010F14C 02042021 */   addu      $a0, $s0, $a0
/* 12D240 8010F150 1650FFF9 */  bne        $s2, $s0, .Lmenu_8010F138
/* 12D244 8010F154 2610FF88 */   addiu     $s0, $s0, -0x78
.Lmenu_8010F158:
/* 12D248 8010F158 2624047C */  addiu      $a0, $s1, 0x47C
/* 12D24C 8010F15C 0C047DE7 */  jal        func_menu_8011F79C
/* 12D250 8010F160 24050002 */   addiu     $a1, $zero, 0x2
/* 12D254 8010F164 26240420 */  addiu      $a0, $s1, 0x420
/* 12D258 8010F168 0C047BB3 */  jal        func_menu_8011EECC
/* 12D25C 8010F16C 24050002 */   addiu     $a1, $zero, 0x2
/* 12D260 8010F170 262403C4 */  addiu      $a0, $s1, 0x3C4
/* 12D264 8010F174 0C047BB3 */  jal        func_menu_8011EECC
/* 12D268 8010F178 24050002 */   addiu     $a1, $zero, 0x2
/* 12D26C 8010F17C 26240368 */  addiu      $a0, $s1, 0x368
/* 12D270 8010F180 0C047BB3 */  jal        func_menu_8011EECC
/* 12D274 8010F184 24050002 */   addiu     $a1, $zero, 0x2
/* 12D278 8010F188 02202021 */  addu       $a0, $s1, $zero
/* 12D27C 8010F18C 0C0401EF */  jal        func_menu_801007BC
/* 12D280 8010F190 02602821 */   addu      $a1, $s3, $zero
/* 12D284 8010F194 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12D288 8010F198 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12D28C 8010F19C 8FB20018 */  lw         $s2, 0x18($sp)
/* 12D290 8010F1A0 8FB10014 */  lw         $s1, 0x14($sp)
/* 12D294 8010F1A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 12D298 8010F1A8 03E00008 */  jr         $ra
/* 12D29C 8010F1AC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010F1B0
/* 12D2A0 8010F1B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12D2A4 8010F1B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 12D2A8 8010F1B8 00808021 */  addu       $s0, $a0, $zero
/* 12D2AC 8010F1BC AFB20018 */  sw         $s2, 0x18($sp)
/* 12D2B0 8010F1C0 00A09021 */  addu       $s2, $a1, $zero
/* 12D2B4 8010F1C4 AFB40020 */  sw         $s4, 0x20($sp)
/* 12D2B8 8010F1C8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 12D2BC 8010F1CC AFB3001C */  sw         $s3, 0x1C($sp)
/* 12D2C0 8010F1D0 AFB10014 */  sw         $s1, 0x14($sp)
/* 12D2C4 8010F1D4 8E020004 */  lw         $v0, 0x4($s0)
/* 12D2C8 8010F1D8 8E53262C */  lw         $s3, 0x262C($s2)
/* 12D2CC 8010F1DC 10400006 */  beqz       $v0, .Lmenu_8010F1F8
/* 12D2D0 8010F1E0 00C0A021 */   addu      $s4, $a2, $zero
/* 12D2D4 8010F1E4 8E020000 */  lw         $v0, 0x0($s0)
/* 12D2D8 8010F1E8 844400F0 */  lh         $a0, 0xF0($v0)
/* 12D2DC 8010F1EC 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 12D2E0 8010F1F0 0040F809 */  jalr       $v0
/* 12D2E4 8010F1F4 02042021 */   addu      $a0, $s0, $a0
.Lmenu_8010F1F8:
/* 12D2E8 8010F1F8 3C028000 */  lui        $v0, %hi(D_80000300)
/* 12D2EC 8010F1FC 8C420300 */  lw         $v0, %lo(D_80000300)($v0)
/* 12D2F0 8010F200 14400003 */  bnez       $v0, .Lmenu_8010F210
/* 12D2F4 8010F204 AE001E20 */   sw        $zero, 0x1E20($s0)
/* 12D2F8 8010F208 08043C91 */  j          .Lmenu_8010F244
/* 12D2FC 8010F20C 24020004 */   addiu     $v0, $zero, 0x4
.Lmenu_8010F210:
/* 12D300 8010F210 8E420010 */  lw         $v0, 0x10($s2)
/* 12D304 8010F214 8C420034 */  lw         $v0, 0x34($v0)
/* 12D308 8010F218 10400006 */  beqz       $v0, .Lmenu_8010F234
/* 12D30C 8010F21C 00008821 */   addu      $s1, $zero, $zero
/* 12D310 8010F220 02602021 */  addu       $a0, $s3, $zero
/* 12D314 8010F224 0C01F211 */  jal        func_8007C844
/* 12D318 8010F228 02202821 */   addu      $a1, $s1, $zero
/* 12D31C 8010F22C 14400002 */  bnez       $v0, .Lmenu_8010F238
/* 12D320 8010F230 00000000 */   nop
.Lmenu_8010F234:
/* 12D324 8010F234 24110001 */  addiu      $s1, $zero, 0x1
.Lmenu_8010F238:
/* 12D328 8010F238 16200002 */  bnez       $s1, .Lmenu_8010F244
/* 12D32C 8010F23C 24020002 */   addiu     $v0, $zero, 0x2
/* 12D330 8010F240 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_8010F244:
/* 12D334 8010F244 AE021E1C */  sw         $v0, 0x1E1C($s0)
/* 12D338 8010F248 02002021 */  addu       $a0, $s0, $zero
/* 12D33C 8010F24C 02402821 */  addu       $a1, $s2, $zero
/* 12D340 8010F250 0C040214 */  jal        func_menu_80100850
/* 12D344 8010F254 02803021 */   addu      $a2, $s4, $zero
/* 12D348 8010F258 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12D34C 8010F25C 8FB40020 */  lw         $s4, 0x20($sp)
/* 12D350 8010F260 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12D354 8010F264 8FB20018 */  lw         $s2, 0x18($sp)
/* 12D358 8010F268 8FB10014 */  lw         $s1, 0x14($sp)
/* 12D35C 8010F26C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12D360 8010F270 0002102B */  sltu       $v0, $zero, $v0
/* 12D364 8010F274 03E00008 */  jr         $ra
/* 12D368 8010F278 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010F284
/* 12D36C 8010F27C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12D370 8010F280 AFB00010 */  sw         $s0, 0x10($sp)
/* 12D374 8010F284 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12D378 8010F288 0C040232 */  jal        func_menu_801008C8
/* 12D37C 8010F28C 00808021 */   addu      $s0, $a0, $zero
/* 12D380 8010F290 0C043BED */  jal        func_menu_8010EFB4
/* 12D384 8010F294 02002021 */   addu      $a0, $s0, $zero
/* 12D388 8010F298 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12D38C 8010F29C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12D390 8010F2A0 24020001 */  addiu      $v0, $zero, 0x1
/* 12D394 8010F2A4 03E00008 */  jr         $ra
/* 12D398 8010F2A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010F2B4
/* 12D39C 8010F2AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12D3A0 8010F2B0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 12D3A4 8010F2B4 8C821E20 */  lw         $v0, 0x1E20($a0)
/* 12D3A8 8010F2B8 8C831E1C */  lw         $v1, 0x1E1C($a0)
/* 12D3AC 8010F2BC 00452821 */  addu       $a1, $v0, $a1
/* 12D3B0 8010F2C0 24020001 */  addiu      $v0, $zero, 0x1
/* 12D3B4 8010F2C4 14620006 */  bne        $v1, $v0, .Lmenu_8010F2E0
/* 12D3B8 8010F2C8 AC851E20 */   sw        $a1, 0x1E20($a0)
/* 12D3BC 8010F2CC 2CA200FB */  sltiu      $v0, $a1, 0xFB
/* 12D3C0 8010F2D0 14400003 */  bnez       $v0, .Lmenu_8010F2E0
/* 12D3C4 8010F2D4 00000000 */   nop
/* 12D3C8 8010F2D8 0C043CFE */  jal        func_menu_8010F400
/* 12D3CC 8010F2DC 00000000 */   nop
.Lmenu_8010F2E0:
/* 12D3D0 8010F2E0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 12D3D4 8010F2E4 00001021 */  addu       $v0, $zero, $zero
/* 12D3D8 8010F2E8 03E00008 */  jr         $ra
/* 12D3DC 8010F2EC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010F2F8
/* 12D3E0 8010F2F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12D3E4 8010F2F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 12D3E8 8010F2F8 00808021 */  addu       $s0, $a0, $zero
/* 12D3EC 8010F2FC 260212AC */  addiu      $v0, $s0, 0x12AC
/* 12D3F0 8010F300 14A20008 */  bne        $a1, $v0, .Lmenu_8010F324
/* 12D3F4 8010F304 AFBF0014 */   sw        $ra, 0x14($sp)
/* 12D3F8 8010F308 8E020000 */  lw         $v0, 0x0($s0)
/* 12D3FC 8010F30C 84440110 */  lh         $a0, 0x110($v0)
/* 12D400 8010F310 8C420114 */  lw         $v0, 0x114($v0)
/* 12D404 8010F314 0040F809 */  jalr       $v0
/* 12D408 8010F318 02042021 */   addu      $a0, $s0, $a0
/* 12D40C 8010F31C 08043CFA */  j          .Lmenu_8010F3E8
/* 12D410 8010F320 00000000 */   nop
.Lmenu_8010F324:
/* 12D414 8010F324 8E061E28 */  lw         $a2, 0x1E28($s0)
/* 12D418 8010F328 10C0002F */  beqz       $a2, .Lmenu_8010F3E8
/* 12D41C 8010F32C 2602159C */   addiu     $v0, $s0, 0x159C
/* 12D420 8010F330 14A20005 */  bne        $a1, $v0, .Lmenu_8010F348
/* 12D424 8010F334 2602188C */   addiu     $v0, $s0, 0x188C
/* 12D428 8010F338 0C043FBF */  jal        func_menu_8010FF04
/* 12D42C 8010F33C 02002021 */   addu      $a0, $s0, $zero
/* 12D430 8010F340 08043CD4 */  j          .Lmenu_8010F350
/* 12D434 8010F344 00000000 */   nop
.Lmenu_8010F348:
/* 12D438 8010F348 14A20006 */  bne        $a1, $v0, .Lmenu_8010F364
/* 12D43C 8010F34C 26020FBC */   addiu     $v0, $s0, 0xFBC
.Lmenu_8010F350:
/* 12D440 8010F350 8E040284 */  lw         $a0, 0x284($s0)
/* 12D444 8010F354 0C045449 */  jal        func_menu_80115124
/* 12D448 8010F358 00000000 */   nop
/* 12D44C 8010F35C 08043CF8 */  j          .Lmenu_8010F3E0
/* 12D450 8010F360 00000000 */   nop
.Lmenu_8010F364:
/* 12D454 8010F364 14A20005 */  bne        $a1, $v0, .Lmenu_8010F37C
/* 12D458 8010F368 26020B84 */   addiu     $v0, $s0, 0xB84
/* 12D45C 8010F36C 0C043F3B */  jal        func_menu_8010FCF4
/* 12D460 8010F370 02002021 */   addu      $a0, $s0, $zero
/* 12D464 8010F374 08043CF8 */  j          .Lmenu_8010F3E0
/* 12D468 8010F378 00000000 */   nop
.Lmenu_8010F37C:
/* 12D46C 8010F37C 14A2000E */  bne        $a1, $v0, .Lmenu_8010F3B8
/* 12D470 8010F380 26020DA0 */   addiu     $v0, $s0, 0xDA0
/* 12D474 8010F384 8E041E2C */  lw         $a0, 0x1E2C($s0)
/* 12D478 8010F388 24830001 */  addiu      $v1, $a0, 0x1
/* 12D47C 8010F38C 0066102B */  sltu       $v0, $v1, $a2
/* 12D480 8010F390 10400013 */  beqz       $v0, .Lmenu_8010F3E0
/* 12D484 8010F394 00000000 */   nop
/* 12D488 8010F398 8E021E30 */  lw         $v0, 0x1E30($s0)
/* 12D48C 8010F39C 24420005 */  addiu      $v0, $v0, 0x5
/* 12D490 8010F3A0 0062102B */  sltu       $v0, $v1, $v0
/* 12D494 8010F3A4 1440000E */  bnez       $v0, .Lmenu_8010F3E0
/* 12D498 8010F3A8 AE031E2C */   sw        $v1, 0x1E2C($s0)
/* 12D49C 8010F3AC 2482FFFD */  addiu      $v0, $a0, -0x3
/* 12D4A0 8010F3B0 08043CF8 */  j          .Lmenu_8010F3E0
/* 12D4A4 8010F3B4 AE021E30 */   sw        $v0, 0x1E30($s0)
.Lmenu_8010F3B8:
/* 12D4A8 8010F3B8 14A20009 */  bne        $a1, $v0, .Lmenu_8010F3E0
/* 12D4AC 8010F3BC 00000000 */   nop
/* 12D4B0 8010F3C0 8E031E2C */  lw         $v1, 0x1E2C($s0)
/* 12D4B4 8010F3C4 10600006 */  beqz       $v1, .Lmenu_8010F3E0
/* 12D4B8 8010F3C8 2463FFFF */   addiu     $v1, $v1, -0x1
/* 12D4BC 8010F3CC 8E021E30 */  lw         $v0, 0x1E30($s0)
/* 12D4C0 8010F3D0 0062102B */  sltu       $v0, $v1, $v0
/* 12D4C4 8010F3D4 10400002 */  beqz       $v0, .Lmenu_8010F3E0
/* 12D4C8 8010F3D8 AE031E2C */   sw        $v1, 0x1E2C($s0)
/* 12D4CC 8010F3DC AE031E30 */  sw         $v1, 0x1E30($s0)
.Lmenu_8010F3E0:
/* 12D4D0 8010F3E0 0C043E36 */  jal        func_menu_8010F8E0
/* 12D4D4 8010F3E4 02002021 */   addu      $a0, $s0, $zero
.Lmenu_8010F3E8:
/* 12D4D8 8010F3E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12D4DC 8010F3EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 12D4E0 8010F3F0 03E00008 */  jr         $ra
/* 12D4E4 8010F3F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010F400
/* 12D4E8 8010F3F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12D4EC 8010F3FC AFB00010 */  sw         $s0, 0x10($sp)
/* 12D4F0 8010F400 00808021 */  addu       $s0, $a0, $zero
/* 12D4F4 8010F404 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12D4F8 8010F408 8E030354 */  lw         $v1, 0x354($s0)
/* 12D4FC 8010F40C 8C624614 */  lw         $v0, 0x4614($v1)
/* 12D500 8010F410 30428000 */  andi       $v0, $v0, 0x8000
/* 12D504 8010F414 10400011 */  beqz       $v0, .Lmenu_8010F45C
/* 12D508 8010F418 00000000 */   nop
/* 12D50C 8010F41C 8C62462C */  lw         $v0, 0x462C($v1)
/* 12D510 8010F420 0C043DE8 */  jal        func_menu_8010F7A8
/* 12D514 8010F424 AE021E24 */   sw        $v0, 0x1E24($s0)
/* 12D518 8010F428 1040000C */  beqz       $v0, .Lmenu_8010F45C
/* 12D51C 8010F42C 24020003 */   addiu     $v0, $zero, 0x3
/* 12D520 8010F430 8E030000 */  lw         $v1, 0x0($s0)
/* 12D524 8010F434 AE021E1C */  sw         $v0, 0x1E1C($s0)
/* 12D528 8010F438 AE001E20 */  sw         $zero, 0x1E20($s0)
/* 12D52C 8010F43C 846400A0 */  lh         $a0, 0xA0($v1)
/* 12D530 8010F440 8C6200A4 */  lw         $v0, 0xA4($v1)
/* 12D534 8010F444 0040F809 */  jalr       $v0
/* 12D538 8010F448 02042021 */   addu      $a0, $s0, $a0
/* 12D53C 8010F44C 0C043E36 */  jal        func_menu_8010F8E0
/* 12D540 8010F450 02002021 */   addu      $a0, $s0, $zero
/* 12D544 8010F454 08043D1C */  j          .Lmenu_8010F470
/* 12D548 8010F458 00000000 */   nop
.Lmenu_8010F45C:
/* 12D54C 8010F45C 8E020000 */  lw         $v0, 0x0($s0)
/* 12D550 8010F460 84440110 */  lh         $a0, 0x110($v0)
/* 12D554 8010F464 8C420114 */  lw         $v0, 0x114($v0)
/* 12D558 8010F468 0040F809 */  jalr       $v0
/* 12D55C 8010F46C 02042021 */   addu      $a0, $s0, $a0
.Lmenu_8010F470:
/* 12D560 8010F470 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12D564 8010F474 8FB00010 */  lw         $s0, 0x10($sp)
/* 12D568 8010F478 03E00008 */  jr         $ra
/* 12D56C 8010F47C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010F488
/* 12D570 8010F480 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12D574 8010F484 AFB1001C */  sw         $s1, 0x1C($sp)
/* 12D578 8010F488 00808821 */  addu       $s1, $a0, $zero
/* 12D57C 8010F48C AFBF0030 */  sw         $ra, 0x30($sp)
/* 12D580 8010F490 AFB5002C */  sw         $s5, 0x2C($sp)
/* 12D584 8010F494 AFB40028 */  sw         $s4, 0x28($sp)
/* 12D588 8010F498 AFB30024 */  sw         $s3, 0x24($sp)
/* 12D58C 8010F49C AFB20020 */  sw         $s2, 0x20($sp)
/* 12D590 8010F4A0 AFB00018 */  sw         $s0, 0x18($sp)
/* 12D594 8010F4A4 8E231E1C */  lw         $v1, 0x1E1C($s1)
/* 12D598 8010F4A8 24020002 */  addiu      $v0, $zero, 0x2
/* 12D59C 8010F4AC 10620009 */  beq        $v1, $v0, .Lmenu_8010F4D4
/* 12D5A0 8010F4B0 28620003 */   slti      $v0, $v1, 0x3
/* 12D5A4 8010F4B4 14400095 */  bnez       $v0, .Lmenu_8010F70C
/* 12D5A8 8010F4B8 24020003 */   addiu     $v0, $zero, 0x3
/* 12D5AC 8010F4BC 10620016 */  beq        $v1, $v0, .Lmenu_8010F518
/* 12D5B0 8010F4C0 24020004 */   addiu     $v0, $zero, 0x4
/* 12D5B4 8010F4C4 1062007C */  beq        $v1, $v0, .Lmenu_8010F6B8
/* 12D5B8 8010F4C8 02202021 */   addu      $a0, $s1, $zero
/* 12D5BC 8010F4CC 08043DC3 */  j          .Lmenu_8010F70C
/* 12D5C0 8010F4D0 00000000 */   nop
.Lmenu_8010F4D4:
/* 12D5C4 8010F4D4 02202021 */  addu       $a0, $s1, $zero
/* 12D5C8 8010F4D8 26250368 */  addiu      $a1, $s1, 0x368
/* 12D5CC 8010F4DC 24060052 */  addiu      $a2, $zero, 0x52
/* 12D5D0 8010F4E0 0C04675B */  jal        func_menu_80119D6C
/* 12D5D4 8010F4E4 00C03821 */   addu      $a3, $a2, $zero
/* 12D5D8 8010F4E8 02202021 */  addu       $a0, $s1, $zero
/* 12D5DC 8010F4EC 262503C4 */  addiu      $a1, $s1, 0x3C4
/* 12D5E0 8010F4F0 2406005B */  addiu      $a2, $zero, 0x5B
/* 12D5E4 8010F4F4 0C04675B */  jal        func_menu_80119D6C
/* 12D5E8 8010F4F8 00C03821 */   addu      $a3, $a2, $zero
/* 12D5EC 8010F4FC 02202021 */  addu       $a0, $s1, $zero
/* 12D5F0 8010F500 26250420 */  addiu      $a1, $s1, 0x420
/* 12D5F4 8010F504 2406005C */  addiu      $a2, $zero, 0x5C
/* 12D5F8 8010F508 0C04675B */  jal        func_menu_80119D6C
/* 12D5FC 8010F50C 00C03821 */   addu      $a3, $a2, $zero
/* 12D600 8010F510 08043DBD */  j          .Lmenu_8010F6F4
/* 12D604 8010F514 2402007D */   addiu     $v0, $zero, 0x7D
.Lmenu_8010F518:
/* 12D608 8010F518 02202021 */  addu       $a0, $s1, $zero
/* 12D60C 8010F51C 26250368 */  addiu      $a1, $s1, 0x368
/* 12D610 8010F520 24060052 */  addiu      $a2, $zero, 0x52
/* 12D614 8010F524 0C04675B */  jal        func_menu_80119D6C
/* 12D618 8010F528 00C03821 */   addu      $a3, $a2, $zero
/* 12D61C 8010F52C 02202021 */  addu       $a0, $s1, $zero
/* 12D620 8010F530 262503C4 */  addiu      $a1, $s1, 0x3C4
/* 12D624 8010F534 2406005B */  addiu      $a2, $zero, 0x5B
/* 12D628 8010F538 0C04675B */  jal        func_menu_80119D6C
/* 12D62C 8010F53C 00C03821 */   addu      $a3, $a2, $zero
/* 12D630 8010F540 02202021 */  addu       $a0, $s1, $zero
/* 12D634 8010F544 26250420 */  addiu      $a1, $s1, 0x420
/* 12D638 8010F548 2406005C */  addiu      $a2, $zero, 0x5C
/* 12D63C 8010F54C 0C04675B */  jal        func_menu_80119D6C
/* 12D640 8010F550 00C03821 */   addu      $a3, $a2, $zero
/* 12D644 8010F554 02202021 */  addu       $a0, $s1, $zero
/* 12D648 8010F558 26250DA0 */  addiu      $a1, $s1, 0xDA0
/* 12D64C 8010F55C 24060133 */  addiu      $a2, $zero, 0x133
/* 12D650 8010F560 0C046870 */  jal        func_menu_8011A1C0
/* 12D654 8010F564 24070135 */   addiu     $a3, $zero, 0x135
/* 12D658 8010F568 02202021 */  addu       $a0, $s1, $zero
/* 12D65C 8010F56C 26250B84 */  addiu      $a1, $s1, 0xB84
/* 12D660 8010F570 24060134 */  addiu      $a2, $zero, 0x134
/* 12D664 8010F574 0C046870 */  jal        func_menu_8011A1C0
/* 12D668 8010F578 24070136 */   addiu     $a3, $zero, 0x136
/* 12D66C 8010F57C 00008021 */  addu       $s0, $zero, $zero
/* 12D670 8010F580 2415007E */  addiu      $s5, $zero, 0x7E
/* 12D674 8010F584 2414007F */  addiu      $s4, $zero, 0x7F
/* 12D678 8010F588 2413074C */  addiu      $s3, $zero, 0x74C
/* 12D67C 8010F58C 241204F4 */  addiu      $s2, $zero, 0x4F4
.Lmenu_8010F590:
/* 12D680 8010F590 02202021 */  addu       $a0, $s1, $zero
/* 12D684 8010F594 02322821 */  addu       $a1, $s1, $s2
/* 12D688 8010F598 26060138 */  addiu      $a2, $s0, 0x138
/* 12D68C 8010F59C 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 12D690 8010F5A0 24070040 */  addiu      $a3, $zero, 0x40
/* 12D694 8010F5A4 0C04679E */  jal        func_menu_80119E78
/* 12D698 8010F5A8 AFB50010 */   sw        $s5, 0x10($sp)
/* 12D69C 8010F5AC 02202021 */  addu       $a0, $s1, $zero
/* 12D6A0 8010F5B0 02332821 */  addu       $a1, $s1, $s3
/* 12D6A4 8010F5B4 2606013D */  addiu      $a2, $s0, 0x13D
/* 12D6A8 8010F5B8 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 12D6AC 8010F5BC 24070040 */  addiu      $a3, $zero, 0x40
/* 12D6B0 8010F5C0 0C04679E */  jal        func_menu_80119E78
/* 12D6B4 8010F5C4 AFB40010 */   sw        $s4, 0x10($sp)
/* 12D6B8 8010F5C8 26730078 */  addiu      $s3, $s3, 0x78
/* 12D6BC 8010F5CC 26100001 */  addiu      $s0, $s0, 0x1
/* 12D6C0 8010F5D0 2E020005 */  sltiu      $v0, $s0, 0x5
/* 12D6C4 8010F5D4 1440FFEE */  bnez       $v0, .Lmenu_8010F590
/* 12D6C8 8010F5D8 26520078 */   addiu     $s2, $s2, 0x78
/* 12D6CC 8010F5DC 02202021 */  addu       $a0, $s1, $zero
/* 12D6D0 8010F5E0 262509A4 */  addiu      $a1, $s1, 0x9A4
/* 12D6D4 8010F5E4 24060142 */  addiu      $a2, $zero, 0x142
/* 12D6D8 8010F5E8 24070040 */  addiu      $a3, $zero, 0x40
/* 12D6DC 8010F5EC 24020082 */  addiu      $v0, $zero, 0x82
/* 12D6E0 8010F5F0 0C04679E */  jal        func_menu_80119E78
/* 12D6E4 8010F5F4 AFA20010 */   sw        $v0, 0x10($sp)
/* 12D6E8 8010F5F8 02202021 */  addu       $a0, $s1, $zero
/* 12D6EC 8010F5FC 26250A1C */  addiu      $a1, $s1, 0xA1C
/* 12D6F0 8010F600 24060143 */  addiu      $a2, $zero, 0x143
/* 12D6F4 8010F604 24070040 */  addiu      $a3, $zero, 0x40
/* 12D6F8 8010F608 24020083 */  addiu      $v0, $zero, 0x83
/* 12D6FC 8010F60C 0C04679E */  jal        func_menu_80119E78
/* 12D700 8010F610 AFA20010 */   sw        $v0, 0x10($sp)
/* 12D704 8010F614 02202021 */  addu       $a0, $s1, $zero
/* 12D708 8010F618 26250A94 */  addiu      $a1, $s1, 0xA94
/* 12D70C 8010F61C 24060144 */  addiu      $a2, $zero, 0x144
/* 12D710 8010F620 24070040 */  addiu      $a3, $zero, 0x40
/* 12D714 8010F624 2402007F */  addiu      $v0, $zero, 0x7F
/* 12D718 8010F628 0C04679E */  jal        func_menu_80119E78
/* 12D71C 8010F62C AFA20010 */   sw        $v0, 0x10($sp)
/* 12D720 8010F630 02202021 */  addu       $a0, $s1, $zero
/* 12D724 8010F634 26250B0C */  addiu      $a1, $s1, 0xB0C
/* 12D728 8010F638 24060150 */  addiu      $a2, $zero, 0x150
/* 12D72C 8010F63C 24070040 */  addiu      $a3, $zero, 0x40
/* 12D730 8010F640 24020091 */  addiu      $v0, $zero, 0x91
/* 12D734 8010F644 0C04679E */  jal        func_menu_80119E78
/* 12D738 8010F648 AFA20010 */   sw        $v0, 0x10($sp)
/* 12D73C 8010F64C 02202021 */  addu       $a0, $s1, $zero
/* 12D740 8010F650 26320FBC */  addiu      $s2, $s1, 0xFBC
/* 12D744 8010F654 02402821 */  addu       $a1, $s2, $zero
/* 12D748 8010F658 24060137 */  addiu      $a2, $zero, 0x137
/* 12D74C 8010F65C 2407004B */  addiu      $a3, $zero, 0x4B
/* 12D750 8010F660 24020080 */  addiu      $v0, $zero, 0x80
/* 12D754 8010F664 0C040297 */  jal        func_menu_80100A5C
/* 12D758 8010F668 AFA20010 */   sw        $v0, 0x10($sp)
/* 12D75C 8010F66C 02202021 */  addu       $a0, $s1, $zero
/* 12D760 8010F670 263012AC */  addiu      $s0, $s1, 0x12AC
/* 12D764 8010F674 02002821 */  addu       $a1, $s0, $zero
/* 12D768 8010F678 24060049 */  addiu      $a2, $zero, 0x49
/* 12D76C 8010F67C 2407004F */  addiu      $a3, $zero, 0x4F
/* 12D770 8010F680 24020072 */  addiu      $v0, $zero, 0x72
/* 12D774 8010F684 0C040297 */  jal        func_menu_80100A5C
/* 12D778 8010F688 AFA20010 */   sw        $v0, 0x10($sp)
/* 12D77C 8010F68C 8E221E28 */  lw         $v0, 0x1E28($s1)
/* 12D780 8010F690 54400005 */  bnel       $v0, $zero, .Lmenu_8010F6A8
/* 12D784 8010F694 26240B84 */   addiu     $a0, $s1, 0xB84
/* 12D788 8010F698 02402021 */  addu       $a0, $s2, $zero
/* 12D78C 8010F69C 0C048D07 */  jal        func_menu_8012341C
/* 12D790 8010F6A0 24050005 */   addiu     $a1, $zero, 0x5
/* 12D794 8010F6A4 02002021 */  addu       $a0, $s0, $zero
.Lmenu_8010F6A8:
/* 12D798 8010F6A8 0C048D3F */  jal        func_menu_801234FC
/* 12D79C 8010F6AC 00002821 */   addu      $a1, $zero, $zero
/* 12D7A0 8010F6B0 08043DC3 */  j          .Lmenu_8010F70C
/* 12D7A4 8010F6B4 00000000 */   nop
.Lmenu_8010F6B8:
/* 12D7A8 8010F6B8 26250368 */  addiu      $a1, $s1, 0x368
/* 12D7AC 8010F6BC 24060052 */  addiu      $a2, $zero, 0x52
/* 12D7B0 8010F6C0 0C04675B */  jal        func_menu_80119D6C
/* 12D7B4 8010F6C4 00C03821 */   addu      $a3, $a2, $zero
/* 12D7B8 8010F6C8 02202021 */  addu       $a0, $s1, $zero
/* 12D7BC 8010F6CC 262503C4 */  addiu      $a1, $s1, 0x3C4
/* 12D7C0 8010F6D0 2406005B */  addiu      $a2, $zero, 0x5B
/* 12D7C4 8010F6D4 0C04675B */  jal        func_menu_80119D6C
/* 12D7C8 8010F6D8 00C03821 */   addu      $a3, $a2, $zero
/* 12D7CC 8010F6DC 02202021 */  addu       $a0, $s1, $zero
/* 12D7D0 8010F6E0 26250420 */  addiu      $a1, $s1, 0x420
/* 12D7D4 8010F6E4 2406005C */  addiu      $a2, $zero, 0x5C
/* 12D7D8 8010F6E8 0C04675B */  jal        func_menu_80119D6C
/* 12D7DC 8010F6EC 00C03821 */   addu      $a3, $a2, $zero
/* 12D7E0 8010F6F0 240200C0 */  addiu      $v0, $zero, 0xC0
.Lmenu_8010F6F4:
/* 12D7E4 8010F6F4 AFA20010 */  sw         $v0, 0x10($sp)
/* 12D7E8 8010F6F8 02202021 */  addu       $a0, $s1, $zero
/* 12D7EC 8010F6FC 2485047C */  addiu      $a1, $a0, 0x47C
/* 12D7F0 8010F700 24060132 */  addiu      $a2, $zero, 0x132
/* 12D7F4 8010F704 0C04679E */  jal        func_menu_80119E78
/* 12D7F8 8010F708 24070040 */   addiu     $a3, $zero, 0x40
.Lmenu_8010F70C:
/* 12D7FC 8010F70C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 12D800 8010F710 8FB5002C */  lw         $s5, 0x2C($sp)
/* 12D804 8010F714 8FB40028 */  lw         $s4, 0x28($sp)
/* 12D808 8010F718 8FB30024 */  lw         $s3, 0x24($sp)
/* 12D80C 8010F71C 8FB20020 */  lw         $s2, 0x20($sp)
/* 12D810 8010F720 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12D814 8010F724 8FB00018 */  lw         $s0, 0x18($sp)
/* 12D818 8010F728 03E00008 */  jr         $ra
/* 12D81C 8010F72C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_8010F738
/* 12D820 8010F730 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12D824 8010F734 AFB00010 */  sw         $s0, 0x10($sp)
/* 12D828 8010F738 00808021 */  addu       $s0, $a0, $zero
/* 12D82C 8010F73C AFBF0014 */  sw         $ra, 0x14($sp)
/* 12D830 8010F740 8E040354 */  lw         $a0, 0x354($s0)
/* 12D834 8010F744 0C0401B4 */  jal        func_menu_801006D0
/* 12D838 8010F748 24840004 */   addiu     $a0, $a0, 0x4
/* 12D83C 8010F74C 8E031E1C */  lw         $v1, 0x1E1C($s0)
/* 12D840 8010F750 24020002 */  addiu      $v0, $zero, 0x2
/* 12D844 8010F754 1062000E */  beq        $v1, $v0, .Lmenu_8010F790
/* 12D848 8010F758 28620003 */   slti      $v0, $v1, 0x3
/* 12D84C 8010F75C 10400005 */  beqz       $v0, .Lmenu_8010F774
/* 12D850 8010F760 24020001 */   addiu     $v0, $zero, 0x1
/* 12D854 8010F764 10620006 */  beq        $v1, $v0, .Lmenu_8010F780
/* 12D858 8010F768 00000000 */   nop
/* 12D85C 8010F76C 08043DE4 */  j          .Lmenu_8010F790
/* 12D860 8010F770 00000000 */   nop
.Lmenu_8010F774:
/* 12D864 8010F774 24020003 */  addiu      $v0, $zero, 0x3
/* 12D868 8010F778 14620005 */  bne        $v1, $v0, .Lmenu_8010F790
/* 12D86C 8010F77C 00000000 */   nop
.Lmenu_8010F780:
/* 12D870 8010F780 8E040354 */  lw         $a0, 0x354($s0)
/* 12D874 8010F784 2405002B */  addiu      $a1, $zero, 0x2B
/* 12D878 8010F788 0C0401A6 */  jal        func_menu_80100698
/* 12D87C 8010F78C 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_8010F790:
/* 12D880 8010F790 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12D884 8010F794 8FB00010 */  lw         $s0, 0x10($sp)
/* 12D888 8010F798 03E00008 */  jr         $ra
/* 12D88C 8010F79C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010F7A8
/* 12D890 8010F7A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12D894 8010F7A4 AFB40020 */  sw         $s4, 0x20($sp)
/* 12D898 8010F7A8 0080A021 */  addu       $s4, $a0, $zero
/* 12D89C 8010F7AC AFBF0024 */  sw         $ra, 0x24($sp)
/* 12D8A0 8010F7B0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12D8A4 8010F7B4 AFB20018 */  sw         $s2, 0x18($sp)
/* 12D8A8 8010F7B8 AFB10014 */  sw         $s1, 0x14($sp)
/* 12D8AC 8010F7BC AFB00010 */  sw         $s0, 0x10($sp)
/* 12D8B0 8010F7C0 8E840354 */  lw         $a0, 0x354($s4)
/* 12D8B4 8010F7C4 8E851E24 */  lw         $a1, 0x1E24($s4)
/* 12D8B8 8010F7C8 8C820BF4 */  lw         $v0, 0xBF4($a0)
/* 12D8BC 8010F7CC 24840BF4 */  addiu      $a0, $a0, 0xBF4
/* 12D8C0 8010F7D0 84430018 */  lh         $v1, 0x18($v0)
/* 12D8C4 8010F7D4 8C42001C */  lw         $v0, 0x1C($v0)
/* 12D8C8 8010F7D8 0040F809 */  jalr       $v0
/* 12D8CC 8010F7DC 00832021 */   addu      $a0, $a0, $v1
/* 12D8D0 8010F7E0 00409021 */  addu       $s2, $v0, $zero
/* 12D8D4 8010F7E4 8E420004 */  lw         $v0, 0x4($s2)
/* 12D8D8 8010F7E8 84440050 */  lh         $a0, 0x50($v0)
/* 12D8DC 8010F7EC 8C420054 */  lw         $v0, 0x54($v0)
/* 12D8E0 8010F7F0 0040F809 */  jalr       $v0
/* 12D8E4 8010F7F4 02442021 */   addu      $a0, $s2, $a0
/* 12D8E8 8010F7F8 1040002F */  beqz       $v0, .Lmenu_8010F8B8
/* 12D8EC 8010F7FC 00001021 */   addu      $v0, $zero, $zero
/* 12D8F0 8010F800 8E420000 */  lw         $v0, 0x0($s2)
/* 12D8F4 8010F804 10400009 */  beqz       $v0, .Lmenu_8010F82C
/* 12D8F8 8010F808 26851E28 */   addiu     $a1, $s4, 0x1E28
/* 12D8FC 8010F80C 8E420004 */  lw         $v0, 0x4($s2)
/* 12D900 8010F810 84440010 */  lh         $a0, 0x10($v0)
/* 12D904 8010F814 8C420014 */  lw         $v0, 0x14($v0)
/* 12D908 8010F818 0040F809 */  jalr       $v0
/* 12D90C 8010F81C 02442021 */   addu      $a0, $s2, $a0
/* 12D910 8010F820 14400025 */  bnez       $v0, .Lmenu_8010F8B8
/* 12D914 8010F824 00001021 */   addu      $v0, $zero, $zero
/* 12D918 8010F828 26851E28 */  addiu      $a1, $s4, 0x1E28
.Lmenu_8010F82C:
/* 12D91C 8010F82C 00003021 */  addu       $a2, $zero, $zero
/* 12D920 8010F830 8E420004 */  lw         $v0, 0x4($s2)
/* 12D924 8010F834 00C08821 */  addu       $s1, $a2, $zero
/* 12D928 8010F838 84440038 */  lh         $a0, 0x38($v0)
/* 12D92C 8010F83C 8C42003C */  lw         $v0, 0x3C($v0)
/* 12D930 8010F840 0040F809 */  jalr       $v0
/* 12D934 8010F844 02442021 */   addu      $a0, $s2, $a0
/* 12D938 8010F848 8E821E28 */  lw         $v0, 0x1E28($s4)
/* 12D93C 8010F84C 10400013 */  beqz       $v0, .Lmenu_8010F89C
/* 12D940 8010F850 00008021 */   addu      $s0, $zero, $zero
/* 12D944 8010F854 24131E34 */  addiu      $s3, $zero, 0x1E34
.Lmenu_8010F858:
/* 12D948 8010F858 2E220010 */  sltiu      $v0, $s1, 0x10
/* 12D94C 8010F85C 1040000F */  beqz       $v0, .Lmenu_8010F89C
/* 12D950 8010F860 02202821 */   addu      $a1, $s1, $zero
/* 12D954 8010F864 8E420004 */  lw         $v0, 0x4($s2)
/* 12D958 8010F868 02933021 */  addu       $a2, $s4, $s3
/* 12D95C 8010F86C 84440048 */  lh         $a0, 0x48($v0)
/* 12D960 8010F870 8C42004C */  lw         $v0, 0x4C($v0)
/* 12D964 8010F874 0040F809 */  jalr       $v0
/* 12D968 8010F878 02442021 */   addu      $a0, $s2, $a0
/* 12D96C 8010F87C 14400003 */  bnez       $v0, .Lmenu_8010F88C
/* 12D970 8010F880 00000000 */   nop
/* 12D974 8010F884 26730040 */  addiu      $s3, $s3, 0x40
/* 12D978 8010F888 26100001 */  addiu      $s0, $s0, 0x1
.Lmenu_8010F88C:
/* 12D97C 8010F88C 8E821E28 */  lw         $v0, 0x1E28($s4)
/* 12D980 8010F890 0202102B */  sltu       $v0, $s0, $v0
/* 12D984 8010F894 1440FFF0 */  bnez       $v0, .Lmenu_8010F858
/* 12D988 8010F898 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_8010F89C:
/* 12D98C 8010F89C 8E420004 */  lw         $v0, 0x4($s2)
/* 12D990 8010F8A0 26852234 */  addiu      $a1, $s4, 0x2234
/* 12D994 8010F8A4 84440040 */  lh         $a0, 0x40($v0)
/* 12D998 8010F8A8 8C420044 */  lw         $v0, 0x44($v0)
/* 12D99C 8010F8AC 0040F809 */  jalr       $v0
/* 12D9A0 8010F8B0 02442021 */   addu      $a0, $s2, $a0
/* 12D9A4 8010F8B4 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_8010F8B8:
/* 12D9A8 8010F8B8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12D9AC 8010F8BC 8FB40020 */  lw         $s4, 0x20($sp)
/* 12D9B0 8010F8C0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12D9B4 8010F8C4 8FB20018 */  lw         $s2, 0x18($sp)
/* 12D9B8 8010F8C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 12D9BC 8010F8CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 12D9C0 8010F8D0 03E00008 */  jr         $ra
/* 12D9C4 8010F8D4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010F8E0
/* 12D9C8 8010F8D8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 12D9CC 8010F8DC AFB40058 */  sw         $s4, 0x58($sp)
/* 12D9D0 8010F8E0 0080A021 */  addu       $s4, $a0, $zero
/* 12D9D4 8010F8E4 AFBF006C */  sw         $ra, 0x6C($sp)
/* 12D9D8 8010F8E8 AFBE0068 */  sw         $fp, 0x68($sp)
/* 12D9DC 8010F8EC AFB70064 */  sw         $s7, 0x64($sp)
/* 12D9E0 8010F8F0 AFB60060 */  sw         $s6, 0x60($sp)
/* 12D9E4 8010F8F4 AFB5005C */  sw         $s5, 0x5C($sp)
/* 12D9E8 8010F8F8 AFB30054 */  sw         $s3, 0x54($sp)
/* 12D9EC 8010F8FC AFB20050 */  sw         $s2, 0x50($sp)
/* 12D9F0 8010F900 AFB1004C */  sw         $s1, 0x4C($sp)
/* 12D9F4 8010F904 AFB00048 */  sw         $s0, 0x48($sp)
/* 12D9F8 8010F908 8E921E30 */  lw         $s2, 0x1E30($s4)
/* 12D9FC 8010F90C 8E821E28 */  lw         $v0, 0x1E28($s4)
/* 12DA00 8010F910 0242102B */  sltu       $v0, $s2, $v0
/* 12DA04 8010F914 10400087 */  beqz       $v0, .Lmenu_8010FB34
/* 12DA08 8010F918 0000A821 */   addu      $s5, $zero, $zero
/* 12DA0C 8010F91C 26911B7C */  addiu      $s1, $s4, 0x1B7C
/* 12DA10 8010F920 27A70028 */  addiu      $a3, $sp, 0x28
/* 12DA14 8010F924 AFA70034 */  sw         $a3, 0x34($sp)
/* 12DA18 8010F928 26871B88 */  addiu      $a3, $s4, 0x1B88
/* 12DA1C 8010F92C AFA70038 */  sw         $a3, 0x38($sp)
/* 12DA20 8010F930 27A70018 */  addiu      $a3, $sp, 0x18
/* 12DA24 8010F934 00121180 */  sll        $v0, $s2, 6
/* 12DA28 8010F938 0054B821 */  addu       $s7, $v0, $s4
/* 12DA2C 8010F93C 241604F4 */  addiu      $s6, $zero, 0x4F4
/* 12DA30 8010F940 02809821 */  addu       $s3, $s4, $zero
/* 12DA34 8010F944 AFA7003C */  sw         $a3, 0x3C($sp)
/* 12DA38 8010F948 2407074C */  addiu      $a3, $zero, 0x74C
/* 12DA3C 8010F94C 241E1B94 */  addiu      $fp, $zero, 0x1B94
/* 12DA40 8010F950 AFA00040 */  sw         $zero, 0x40($sp)
/* 12DA44 8010F954 AFA70044 */  sw         $a3, 0x44($sp)
.Lmenu_8010F958:
/* 12DA48 8010F958 2EA20005 */  sltiu      $v0, $s5, 0x5
/* 12DA4C 8010F95C 10400075 */  beqz       $v0, .Lmenu_8010FB34
/* 12DA50 8010F960 029E2821 */   addu      $a1, $s4, $fp
/* 12DA54 8010F964 02202021 */  addu       $a0, $s1, $zero
/* 12DA58 8010F968 0C0016F6 */  jal        func_80005BD8
/* 12DA5C 8010F96C 24060020 */   addiu     $a2, $zero, 0x20
/* 12DA60 8010F970 00121180 */  sll        $v0, $s2, 6
/* 12DA64 8010F974 24421E34 */  addiu      $v0, $v0, 0x1E34
/* 12DA68 8010F978 02828021 */  addu       $s0, $s4, $v0
/* 12DA6C 8010F97C 02002021 */  addu       $a0, $s0, $zero
/* 12DA70 8010F980 0C043F5B */  jal        func_menu_8010FD74
/* 12DA74 8010F984 02202821 */   addu      $a1, $s1, $zero
/* 12DA78 8010F988 02002021 */  addu       $a0, $s0, $zero
/* 12DA7C 8010F98C 3C05800D */  lui        $a1, %hi(D_menu_800CF4F0)
/* 12DA80 8010F990 0C0006A2 */  jal        func_80001A88
/* 12DA84 8010F994 24A5F4F0 */   addiu     $a1, $a1, %lo(D_menu_800CF4F0)
/* 12DA88 8010F998 54400018 */  bnel       $v0, $zero, .Lmenu_8010F9FC
/* 12DA8C 8010F99C 02202821 */   addu      $a1, $s1, $zero
/* 12DA90 8010F9A0 3C04800D */  lui        $a0, %hi(D_menu_800CF4FC)
/* 12DA94 8010F9A4 2484F4FC */  addiu      $a0, $a0, %lo(D_menu_800CF4FC)
/* 12DA98 8010F9A8 0C043F8D */  jal        func_menu_8010FE3C
/* 12DA9C 8010F9AC 02202821 */   addu      $a1, $s1, $zero
/* 12DAA0 8010F9B0 27A40030 */  addiu      $a0, $sp, 0x30
/* 12DAA4 8010F9B4 8EE21E58 */  lw         $v0, 0x1E58($s7)
/* 12DAA8 8010F9B8 02202821 */  addu       $a1, $s1, $zero
/* 12DAAC 8010F9BC 00021400 */  sll        $v0, $v0, 16
/* 12DAB0 8010F9C0 0C043F8D */  jal        func_menu_8010FE3C
/* 12DAB4 8010F9C4 AFA20030 */   sw        $v0, 0x30($sp)
/* 12DAB8 8010F9C8 3C04800D */  lui        $a0, %hi(D_menu_800CF4FC)
/* 12DABC 8010F9CC 2484F4FC */  addiu      $a0, $a0, %lo(D_menu_800CF4FC)
/* 12DAC0 8010F9D0 0C043F8D */  jal        func_menu_8010FE3C
/* 12DAC4 8010F9D4 02202821 */   addu      $a1, $s1, $zero
/* 12DAC8 8010F9D8 26050028 */  addiu      $a1, $s0, 0x28
/* 12DACC 8010F9DC 8FA40034 */  lw         $a0, 0x34($sp)
/* 12DAD0 8010F9E0 0C000708 */  jal        func_80001C20
/* 12DAD4 8010F9E4 24060004 */   addiu     $a2, $zero, 0x4
/* 12DAD8 8010F9E8 8FA40034 */  lw         $a0, 0x34($sp)
/* 12DADC 8010F9EC 02202821 */  addu       $a1, $s1, $zero
/* 12DAE0 8010F9F0 0C043F8D */  jal        func_menu_8010FE3C
/* 12DAE4 8010F9F4 A3A0002C */   sb        $zero, 0x2C($sp)
/* 12DAE8 8010F9F8 02202821 */  addu       $a1, $s1, $zero
.Lmenu_8010F9FC:
/* 12DAEC 8010F9FC 24060001 */  addiu      $a2, $zero, 0x1
/* 12DAF0 8010FA00 8E620548 */  lw         $v0, 0x548($s3)
/* 12DAF4 8010FA04 02961821 */  addu       $v1, $s4, $s6
/* 12DAF8 8010FA08 84440090 */  lh         $a0, 0x90($v0)
/* 12DAFC 8010FA0C 8C420094 */  lw         $v0, 0x94($v0)
/* 12DB00 8010FA10 0040F809 */  jalr       $v0
/* 12DB04 8010FA14 00642021 */   addu      $a0, $v1, $a0
/* 12DB08 8010FA18 00152940 */  sll        $a1, $s5, 5
/* 12DB0C 8010FA1C 24A51D4C */  addiu      $a1, $a1, 0x1D4C
/* 12DB10 8010FA20 02852821 */  addu       $a1, $s4, $a1
/* 12DB14 8010FA24 8FA40038 */  lw         $a0, 0x38($sp)
/* 12DB18 8010FA28 0C0016F6 */  jal        func_80005BD8
/* 12DB1C 8010FA2C 24060010 */   addiu     $a2, $zero, 0x10
/* 12DB20 8010FA30 3C05800D */  lui        $a1, %hi(D_menu_800CF500)
/* 12DB24 8010FA34 24A5F500 */  addiu      $a1, $a1, %lo(D_menu_800CF500)
/* 12DB28 8010FA38 8EE61E54 */  lw         $a2, 0x1E54($s7)
/* 12DB2C 8010FA3C 8FA4003C */  lw         $a0, 0x3C($sp)
/* 12DB30 8010FA40 0C006E14 */  jal        sprintf
/* 12DB34 8010FA44 00063202 */   srl       $a2, $a2, 8
/* 12DB38 8010FA48 8FA4003C */  lw         $a0, 0x3C($sp)
/* 12DB3C 8010FA4C 8FA50038 */  lw         $a1, 0x38($sp)
/* 12DB40 8010FA50 0C043F5B */  jal        func_menu_8010FD74
/* 12DB44 8010FA54 00000000 */   nop
/* 12DB48 8010FA58 24060001 */  addiu      $a2, $zero, 0x1
/* 12DB4C 8010FA5C 8FA50038 */  lw         $a1, 0x38($sp)
/* 12DB50 8010FA60 8FA70044 */  lw         $a3, 0x44($sp)
/* 12DB54 8010FA64 8E6207A0 */  lw         $v0, 0x7A0($s3)
/* 12DB58 8010FA68 02871821 */  addu       $v1, $s4, $a3
/* 12DB5C 8010FA6C 84440090 */  lh         $a0, 0x90($v0)
/* 12DB60 8010FA70 8C420094 */  lw         $v0, 0x94($v0)
/* 12DB64 8010FA74 0040F809 */  jalr       $v0
/* 12DB68 8010FA78 00642021 */   addu      $a0, $v1, $a0
/* 12DB6C 8010FA7C 8E821E2C */  lw         $v0, 0x1E2C($s4)
/* 12DB70 8010FA80 14520006 */  bne        $v0, $s2, .Lmenu_8010FA9C
/* 12DB74 8010FA84 24020076 */   addiu     $v0, $zero, 0x76
/* 12DB78 8010FA88 240700FF */  addiu      $a3, $zero, 0xFF
/* 12DB7C 8010FA8C A3A70010 */  sb         $a3, 0x10($sp)
/* 12DB80 8010FA90 A3A70011 */  sb         $a3, 0x11($sp)
/* 12DB84 8010FA94 08043EAD */  j          .Lmenu_8010FAB4
/* 12DB88 8010FA98 A3A00012 */   sb        $zero, 0x12($sp)
.Lmenu_8010FA9C:
/* 12DB8C 8010FA9C A3A20010 */  sb         $v0, 0x10($sp)
/* 12DB90 8010FAA0 2402006B */  addiu      $v0, $zero, 0x6B
/* 12DB94 8010FAA4 A3A20011 */  sb         $v0, 0x11($sp)
/* 12DB98 8010FAA8 2402000F */  addiu      $v0, $zero, 0xF
/* 12DB9C 8010FAAC 240700FF */  addiu      $a3, $zero, 0xFF
/* 12DBA0 8010FAB0 A3A20012 */  sb         $v0, 0x12($sp)
.Lmenu_8010FAB4:
/* 12DBA4 8010FAB4 A3A70013 */  sb         $a3, 0x13($sp)
/* 12DBA8 8010FAB8 27A50010 */  addiu      $a1, $sp, 0x10
/* 12DBAC 8010FABC 02961821 */  addu       $v1, $s4, $s6
/* 12DBB0 8010FAC0 26D60078 */  addiu      $s6, $s6, 0x78
/* 12DBB4 8010FAC4 8E620548 */  lw         $v0, 0x548($s3)
/* 12DBB8 8010FAC8 26730078 */  addiu      $s3, $s3, 0x78
/* 12DBBC 8010FACC 27DE0058 */  addiu      $fp, $fp, 0x58
/* 12DBC0 8010FAD0 26B50001 */  addiu      $s5, $s5, 0x1
/* 12DBC4 8010FAD4 26F70040 */  addiu      $s7, $s7, 0x40
/* 12DBC8 8010FAD8 8FA70044 */  lw         $a3, 0x44($sp)
/* 12DBCC 8010FADC 26520001 */  addiu      $s2, $s2, 0x1
/* 12DBD0 8010FAE0 24E70078 */  addiu      $a3, $a3, 0x78
/* 12DBD4 8010FAE4 AFA70044 */  sw         $a3, 0x44($sp)
/* 12DBD8 8010FAE8 84440030 */  lh         $a0, 0x30($v0)
/* 12DBDC 8010FAEC 8C420034 */  lw         $v0, 0x34($v0)
/* 12DBE0 8010FAF0 0040F809 */  jalr       $v0
/* 12DBE4 8010FAF4 00642021 */   addu      $a0, $v1, $a0
/* 12DBE8 8010FAF8 8FA70040 */  lw         $a3, 0x40($sp)
/* 12DBEC 8010FAFC 2684074C */  addiu      $a0, $s4, 0x74C
/* 12DBF0 8010FB00 00872021 */  addu       $a0, $a0, $a3
/* 12DBF4 8010FB04 8C820054 */  lw         $v0, 0x54($a0)
/* 12DBF8 8010FB08 27A50010 */  addiu      $a1, $sp, 0x10
/* 12DBFC 8010FB0C 84430030 */  lh         $v1, 0x30($v0)
/* 12DC00 8010FB10 8C420034 */  lw         $v0, 0x34($v0)
/* 12DC04 8010FB14 0040F809 */  jalr       $v0
/* 12DC08 8010FB18 00832021 */   addu      $a0, $a0, $v1
/* 12DC0C 8010FB1C 8FA70040 */  lw         $a3, 0x40($sp)
/* 12DC10 8010FB20 8E821E28 */  lw         $v0, 0x1E28($s4)
/* 12DC14 8010FB24 24E70078 */  addiu      $a3, $a3, 0x78
/* 12DC18 8010FB28 0242102B */  sltu       $v0, $s2, $v0
/* 12DC1C 8010FB2C 1440FF8A */  bnez       $v0, .Lmenu_8010F958
/* 12DC20 8010FB30 AFA70040 */   sw        $a3, 0x40($sp)
.Lmenu_8010FB34:
/* 12DC24 8010FB34 24020076 */  addiu      $v0, $zero, 0x76
/* 12DC28 8010FB38 A3A20010 */  sb         $v0, 0x10($sp)
/* 12DC2C 8010FB3C 2402006B */  addiu      $v0, $zero, 0x6B
/* 12DC30 8010FB40 A3A20011 */  sb         $v0, 0x11($sp)
/* 12DC34 8010FB44 2402000F */  addiu      $v0, $zero, 0xF
/* 12DC38 8010FB48 A3A20012 */  sb         $v0, 0x12($sp)
/* 12DC3C 8010FB4C 240200FF */  addiu      $v0, $zero, 0xFF
/* 12DC40 8010FB50 A3A20013 */  sb         $v0, 0x13($sp)
/* 12DC44 8010FB54 2EA20005 */  sltiu      $v0, $s5, 0x5
/* 12DC48 8010FB58 1040002B */  beqz       $v0, .Lmenu_8010FC08
/* 12DC4C 8010FB5C 00151100 */   sll       $v0, $s5, 4
/* 12DC50 8010FB60 00551023 */  subu       $v0, $v0, $s5
/* 12DC54 8010FB64 000210C0 */  sll        $v0, $v0, 3
/* 12DC58 8010FB68 2457074C */  addiu      $s7, $v0, 0x74C
/* 12DC5C 8010FB6C 245604F4 */  addiu      $s6, $v0, 0x4F4
/* 12DC60 8010FB70 00549821 */  addu       $s3, $v0, $s4
/* 12DC64 8010FB74 27A50010 */  addiu      $a1, $sp, 0x10
.Lmenu_8010FB78:
/* 12DC68 8010FB78 02968821 */  addu       $s1, $s4, $s6
/* 12DC6C 8010FB7C 26D60078 */  addiu      $s6, $s6, 0x78
/* 12DC70 8010FB80 267004F4 */  addiu      $s0, $s3, 0x4F4
/* 12DC74 8010FB84 2672074C */  addiu      $s2, $s3, 0x74C
/* 12DC78 8010FB88 26730078 */  addiu      $s3, $s3, 0x78
/* 12DC7C 8010FB8C 8E020054 */  lw         $v0, 0x54($s0)
/* 12DC80 8010FB90 26B50001 */  addiu      $s5, $s5, 0x1
/* 12DC84 8010FB94 84440030 */  lh         $a0, 0x30($v0)
/* 12DC88 8010FB98 8C420034 */  lw         $v0, 0x34($v0)
/* 12DC8C 8010FB9C 0040F809 */  jalr       $v0
/* 12DC90 8010FBA0 02242021 */   addu      $a0, $s1, $a0
/* 12DC94 8010FBA4 2405007E */  addiu      $a1, $zero, 0x7E
/* 12DC98 8010FBA8 8E020054 */  lw         $v0, 0x54($s0)
/* 12DC9C 8010FBAC 24060001 */  addiu      $a2, $zero, 0x1
/* 12DCA0 8010FBB0 84440088 */  lh         $a0, 0x88($v0)
/* 12DCA4 8010FBB4 8C42008C */  lw         $v0, 0x8C($v0)
/* 12DCA8 8010FBB8 0040F809 */  jalr       $v0
/* 12DCAC 8010FBBC 02242021 */   addu      $a0, $s1, $a0
/* 12DCB0 8010FBC0 27A50010 */  addiu      $a1, $sp, 0x10
/* 12DCB4 8010FBC4 02978021 */  addu       $s0, $s4, $s7
/* 12DCB8 8010FBC8 8E420054 */  lw         $v0, 0x54($s2)
/* 12DCBC 8010FBCC 26F70078 */  addiu      $s7, $s7, 0x78
/* 12DCC0 8010FBD0 84440030 */  lh         $a0, 0x30($v0)
/* 12DCC4 8010FBD4 8C420034 */  lw         $v0, 0x34($v0)
/* 12DCC8 8010FBD8 0040F809 */  jalr       $v0
/* 12DCCC 8010FBDC 02042021 */   addu      $a0, $s0, $a0
/* 12DCD0 8010FBE0 2405007F */  addiu      $a1, $zero, 0x7F
/* 12DCD4 8010FBE4 8E420054 */  lw         $v0, 0x54($s2)
/* 12DCD8 8010FBE8 24060001 */  addiu      $a2, $zero, 0x1
/* 12DCDC 8010FBEC 84440088 */  lh         $a0, 0x88($v0)
/* 12DCE0 8010FBF0 8C42008C */  lw         $v0, 0x8C($v0)
/* 12DCE4 8010FBF4 0040F809 */  jalr       $v0
/* 12DCE8 8010FBF8 02042021 */   addu      $a0, $s0, $a0
/* 12DCEC 8010FBFC 2EA20005 */  sltiu      $v0, $s5, 0x5
/* 12DCF0 8010FC00 5440FFDD */  bnel       $v0, $zero, .Lmenu_8010FB78
/* 12DCF4 8010FC04 27A50010 */   addiu     $a1, $sp, 0x10
.Lmenu_8010FC08:
/* 12DCF8 8010FC08 268409A4 */  addiu      $a0, $s4, 0x9A4
/* 12DCFC 8010FC0C 27A50010 */  addiu      $a1, $sp, 0x10
/* 12DD00 8010FC10 240200C8 */  addiu      $v0, $zero, 0xC8
/* 12DD04 8010FC14 A3A20010 */  sb         $v0, 0x10($sp)
/* 12DD08 8010FC18 A3A20011 */  sb         $v0, 0x11($sp)
/* 12DD0C 8010FC1C 0C0493A4 */  jal        func_menu_80124E90
/* 12DD10 8010FC20 A3A20012 */   sb        $v0, 0x12($sp)
/* 12DD14 8010FC24 26840A1C */  addiu      $a0, $s4, 0xA1C
/* 12DD18 8010FC28 0C0493A4 */  jal        func_menu_80124E90
/* 12DD1C 8010FC2C 27A50010 */   addiu     $a1, $sp, 0x10
/* 12DD20 8010FC30 26840B0C */  addiu      $a0, $s4, 0xB0C
/* 12DD24 8010FC34 0C0493A4 */  jal        func_menu_80124E90
/* 12DD28 8010FC38 27A50010 */   addiu     $a1, $sp, 0x10
/* 12DD2C 8010FC3C 26920A94 */  addiu      $s2, $s4, 0xA94
/* 12DD30 8010FC40 02402021 */  addu       $a0, $s2, $zero
/* 12DD34 8010FC44 0C0493A4 */  jal        func_menu_80124E90
/* 12DD38 8010FC48 27A50010 */   addiu     $a1, $sp, 0x10
/* 12DD3C 8010FC4C 26901B88 */  addiu      $s0, $s4, 0x1B88
/* 12DD40 8010FC50 02002021 */  addu       $a0, $s0, $zero
/* 12DD44 8010FC54 26851DEC */  addiu      $a1, $s4, 0x1DEC
/* 12DD48 8010FC58 0C0016F6 */  jal        func_80005BD8
/* 12DD4C 8010FC5C 24060018 */   addiu     $a2, $zero, 0x18
/* 12DD50 8010FC60 27B10018 */  addiu      $s1, $sp, 0x18
/* 12DD54 8010FC64 02202021 */  addu       $a0, $s1, $zero
/* 12DD58 8010FC68 3C05800D */  lui        $a1, %hi(D_menu_800CF500)
/* 12DD5C 8010FC6C 8E862234 */  lw         $a2, 0x2234($s4)
/* 12DD60 8010FC70 24A5F500 */  addiu      $a1, $a1, %lo(D_menu_800CF500)
/* 12DD64 8010FC74 0C006E14 */  jal        sprintf
/* 12DD68 8010FC78 00063202 */   srl       $a2, $a2, 8
/* 12DD6C 8010FC7C 02202021 */  addu       $a0, $s1, $zero
/* 12DD70 8010FC80 0C043F5B */  jal        func_menu_8010FD74
/* 12DD74 8010FC84 02002821 */   addu      $a1, $s0, $zero
/* 12DD78 8010FC88 02402021 */  addu       $a0, $s2, $zero
/* 12DD7C 8010FC8C 02002821 */  addu       $a1, $s0, $zero
/* 12DD80 8010FC90 0C047D27 */  jal        func_menu_8011F49C
/* 12DD84 8010FC94 24060001 */   addiu     $a2, $zero, 0x1
/* 12DD88 8010FC98 26821B7C */  addiu      $v0, $s4, 0x1B7C
/* 12DD8C 8010FC9C AE801B7C */  sw         $zero, 0x1B7C($s4)
/* 12DD90 8010FCA0 A4400008 */  sh         $zero, 0x8($v0)
/* 12DD94 8010FCA4 A4400006 */  sh         $zero, 0x6($v0)
/* 12DD98 8010FCA8 A4400004 */  sh         $zero, 0x4($v0)
/* 12DD9C 8010FCAC AE801B88 */  sw         $zero, 0x1B88($s4)
/* 12DDA0 8010FCB0 A6000008 */  sh         $zero, 0x8($s0)
/* 12DDA4 8010FCB4 A6000006 */  sh         $zero, 0x6($s0)
/* 12DDA8 8010FCB8 A6000004 */  sh         $zero, 0x4($s0)
/* 12DDAC 8010FCBC 8FBF006C */  lw         $ra, 0x6C($sp)
/* 12DDB0 8010FCC0 8FBE0068 */  lw         $fp, 0x68($sp)
/* 12DDB4 8010FCC4 8FB70064 */  lw         $s7, 0x64($sp)
/* 12DDB8 8010FCC8 8FB60060 */  lw         $s6, 0x60($sp)
/* 12DDBC 8010FCCC 8FB5005C */  lw         $s5, 0x5C($sp)
/* 12DDC0 8010FCD0 8FB40058 */  lw         $s4, 0x58($sp)
/* 12DDC4 8010FCD4 8FB30054 */  lw         $s3, 0x54($sp)
/* 12DDC8 8010FCD8 8FB20050 */  lw         $s2, 0x50($sp)
/* 12DDCC 8010FCDC 8FB1004C */  lw         $s1, 0x4C($sp)
/* 12DDD0 8010FCE0 8FB00048 */  lw         $s0, 0x48($sp)
/* 12DDD4 8010FCE4 03E00008 */  jr         $ra
/* 12DDD8 8010FCE8 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_menu_8010FCF4
/* 12DDDC 8010FCEC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12DDE0 8010FCF0 AFB00018 */  sw         $s0, 0x18($sp)
/* 12DDE4 8010FCF4 00808021 */  addu       $s0, $a0, $zero
/* 12DDE8 8010FCF8 AFB20020 */  sw         $s2, 0x20($sp)
/* 12DDEC 8010FCFC 2612159C */  addiu      $s2, $s0, 0x159C
/* 12DDF0 8010FD00 02402821 */  addu       $a1, $s2, $zero
/* 12DDF4 8010FD04 240600A1 */  addiu      $a2, $zero, 0xA1
/* 12DDF8 8010FD08 2407004F */  addiu      $a3, $zero, 0x4F
/* 12DDFC 8010FD0C 24020073 */  addiu      $v0, $zero, 0x73
/* 12DE00 8010FD10 AFBF0024 */  sw         $ra, 0x24($sp)
/* 12DE04 8010FD14 AFB1001C */  sw         $s1, 0x1C($sp)
/* 12DE08 8010FD18 0C040297 */  jal        func_menu_80100A5C
/* 12DE0C 8010FD1C AFA20010 */   sw        $v0, 0x10($sp)
/* 12DE10 8010FD20 02002021 */  addu       $a0, $s0, $zero
/* 12DE14 8010FD24 2611188C */  addiu      $s1, $s0, 0x188C
/* 12DE18 8010FD28 02202821 */  addu       $a1, $s1, $zero
/* 12DE1C 8010FD2C 240600A1 */  addiu      $a2, $zero, 0xA1
/* 12DE20 8010FD30 2407004E */  addiu      $a3, $zero, 0x4E
/* 12DE24 8010FD34 24020074 */  addiu      $v0, $zero, 0x74
/* 12DE28 8010FD38 0C040297 */  jal        func_menu_80100A5C
/* 12DE2C 8010FD3C AFA20010 */   sw        $v0, 0x10($sp)
/* 12DE30 8010FD40 02002021 */  addu       $a0, $s0, $zero
/* 12DE34 8010FD44 02402821 */  addu       $a1, $s2, $zero
/* 12DE38 8010FD48 02203021 */  addu       $a2, $s1, $zero
/* 12DE3C 8010FD4C 0C046B48 */  jal        func_menu_8011AD20
/* 12DE40 8010FD50 24070081 */   addiu     $a3, $zero, 0x81
/* 12DE44 8010FD54 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12DE48 8010FD58 8FB20020 */  lw         $s2, 0x20($sp)
/* 12DE4C 8010FD5C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12DE50 8010FD60 8FB00018 */  lw         $s0, 0x18($sp)
/* 12DE54 8010FD64 03E00008 */  jr         $ra
/* 12DE58 8010FD68 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010FD74
/* 12DE5C 8010FD6C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12DE60 8010FD70 AFB20018 */  sw         $s2, 0x18($sp)
/* 12DE64 8010FD74 00809021 */  addu       $s2, $a0, $zero
/* 12DE68 8010FD78 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12DE6C 8010FD7C 00A09821 */  addu       $s3, $a1, $zero
/* 12DE70 8010FD80 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12DE74 8010FD84 AFB10014 */  sw         $s1, 0x14($sp)
/* 12DE78 8010FD88 0C006DFE */  jal        strlen
/* 12DE7C 8010FD8C AFB00010 */   sw        $s0, 0x10($sp)
/* 12DE80 8010FD90 00408021 */  addu       $s0, $v0, $zero
/* 12DE84 8010FD94 26040001 */  addiu      $a0, $s0, 0x1
/* 12DE88 8010FD98 0C00943C */  jal        func_800250F0
/* 12DE8C 8010FD9C 00042040 */   sll       $a0, $a0, 1
/* 12DE90 8010FDA0 00408821 */  addu       $s1, $v0, $zero
/* 12DE94 8010FDA4 16200006 */  bnez       $s1, .Lmenu_8010FDC0
/* 12DE98 8010FDA8 3C04800D */   lui       $a0, %hi(D_menu_800CF504)
/* 12DE9C 8010FDAC 2484F504 */  addiu      $a0, $a0, %lo(D_menu_800CF504)
/* 12DEA0 8010FDB0 00002821 */  addu       $a1, $zero, $zero
/* 12DEA4 8010FDB4 00A03021 */  addu       $a2, $a1, $zero
/* 12DEA8 8010FDB8 0C011ACF */  jal        func_80046B3C
/* 12DEAC 8010FDBC 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_8010FDC0:
/* 12DEB0 8010FDC0 1A000009 */  blez       $s0, .Lmenu_8010FDE8
/* 12DEB4 8010FDC4 00001821 */   addu      $v1, $zero, $zero
/* 12DEB8 8010FDC8 02202021 */  addu       $a0, $s1, $zero
.Lmenu_8010FDCC:
/* 12DEBC 8010FDCC 02431021 */  addu       $v0, $s2, $v1
/* 12DEC0 8010FDD0 90420000 */  lbu        $v0, 0x0($v0)
/* 12DEC4 8010FDD4 24630001 */  addiu      $v1, $v1, 0x1
/* 12DEC8 8010FDD8 A4820000 */  sh         $v0, 0x0($a0)
/* 12DECC 8010FDDC 0070102A */  slt        $v0, $v1, $s0
/* 12DED0 8010FDE0 1440FFFA */  bnez       $v0, .Lmenu_8010FDCC
/* 12DED4 8010FDE4 24840002 */   addiu     $a0, $a0, 0x2
.Lmenu_8010FDE8:
/* 12DED8 8010FDE8 00101040 */  sll        $v0, $s0, 1
/* 12DEDC 8010FDEC 00511021 */  addu       $v0, $v0, $s1
/* 12DEE0 8010FDF0 A4400000 */  sh         $zero, 0x0($v0)
/* 12DEE4 8010FDF4 02602021 */  addu       $a0, $s3, $zero
/* 12DEE8 8010FDF8 0C001831 */  jal        func_800060C4
/* 12DEEC 8010FDFC 02202821 */   addu      $a1, $s1, $zero
/* 12DEF0 8010FE00 0C00172D */  jal        func_80005CB4
/* 12DEF4 8010FE04 02602021 */   addu      $a0, $s3, $zero
/* 12DEF8 8010FE08 12200003 */  beqz       $s1, .Lmenu_8010FE18
/* 12DEFC 8010FE0C 00000000 */   nop
/* 12DF00 8010FE10 0C009444 */  jal        func_80025110
/* 12DF04 8010FE14 02202021 */   addu      $a0, $s1, $zero
.Lmenu_8010FE18:
/* 12DF08 8010FE18 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12DF0C 8010FE1C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12DF10 8010FE20 8FB20018 */  lw         $s2, 0x18($sp)
/* 12DF14 8010FE24 8FB10014 */  lw         $s1, 0x14($sp)
/* 12DF18 8010FE28 8FB00010 */  lw         $s0, 0x10($sp)
/* 12DF1C 8010FE2C 03E00008 */  jr         $ra
/* 12DF20 8010FE30 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010FE3C
/* 12DF24 8010FE34 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12DF28 8010FE38 AFB20018 */  sw         $s2, 0x18($sp)
/* 12DF2C 8010FE3C 00809021 */  addu       $s2, $a0, $zero
/* 12DF30 8010FE40 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12DF34 8010FE44 00A09821 */  addu       $s3, $a1, $zero
/* 12DF38 8010FE48 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12DF3C 8010FE4C AFB10014 */  sw         $s1, 0x14($sp)
/* 12DF40 8010FE50 0C006DFE */  jal        strlen
/* 12DF44 8010FE54 AFB00010 */   sw        $s0, 0x10($sp)
/* 12DF48 8010FE58 00408021 */  addu       $s0, $v0, $zero
/* 12DF4C 8010FE5C 26040001 */  addiu      $a0, $s0, 0x1
/* 12DF50 8010FE60 0C00943C */  jal        func_800250F0
/* 12DF54 8010FE64 00042040 */   sll       $a0, $a0, 1
/* 12DF58 8010FE68 00408821 */  addu       $s1, $v0, $zero
/* 12DF5C 8010FE6C 16200006 */  bnez       $s1, .Lmenu_8010FE88
/* 12DF60 8010FE70 3C04800D */   lui       $a0, %hi(D_menu_800CF504)
/* 12DF64 8010FE74 2484F504 */  addiu      $a0, $a0, %lo(D_menu_800CF504)
/* 12DF68 8010FE78 00002821 */  addu       $a1, $zero, $zero
/* 12DF6C 8010FE7C 00A03021 */  addu       $a2, $a1, $zero
/* 12DF70 8010FE80 0C011ACF */  jal        func_80046B3C
/* 12DF74 8010FE84 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_8010FE88:
/* 12DF78 8010FE88 1A000009 */  blez       $s0, .Lmenu_8010FEB0
/* 12DF7C 8010FE8C 00001821 */   addu      $v1, $zero, $zero
/* 12DF80 8010FE90 02202021 */  addu       $a0, $s1, $zero
.Lmenu_8010FE94:
/* 12DF84 8010FE94 02431021 */  addu       $v0, $s2, $v1
/* 12DF88 8010FE98 90420000 */  lbu        $v0, 0x0($v0)
/* 12DF8C 8010FE9C 24630001 */  addiu      $v1, $v1, 0x1
/* 12DF90 8010FEA0 A4820000 */  sh         $v0, 0x0($a0)
/* 12DF94 8010FEA4 0070102A */  slt        $v0, $v1, $s0
/* 12DF98 8010FEA8 1440FFFA */  bnez       $v0, .Lmenu_8010FE94
/* 12DF9C 8010FEAC 24840002 */   addiu     $a0, $a0, 0x2
.Lmenu_8010FEB0:
/* 12DFA0 8010FEB0 00101040 */  sll        $v0, $s0, 1
/* 12DFA4 8010FEB4 00511021 */  addu       $v0, $v0, $s1
/* 12DFA8 8010FEB8 A4400000 */  sh         $zero, 0x0($v0)
/* 12DFAC 8010FEBC 02602021 */  addu       $a0, $s3, $zero
/* 12DFB0 8010FEC0 0C00179F */  jal        func_80005E7C
/* 12DFB4 8010FEC4 02202821 */   addu      $a1, $s1, $zero
/* 12DFB8 8010FEC8 0C00172D */  jal        func_80005CB4
/* 12DFBC 8010FECC 02602021 */   addu      $a0, $s3, $zero
/* 12DFC0 8010FED0 12200003 */  beqz       $s1, .Lmenu_8010FEE0
/* 12DFC4 8010FED4 00000000 */   nop
/* 12DFC8 8010FED8 0C009444 */  jal        func_80025110
/* 12DFCC 8010FEDC 02202021 */   addu      $a0, $s1, $zero
.Lmenu_8010FEE0:
/* 12DFD0 8010FEE0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12DFD4 8010FEE4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12DFD8 8010FEE8 8FB20018 */  lw         $s2, 0x18($sp)
/* 12DFDC 8010FEEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 12DFE0 8010FEF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 12DFE4 8010FEF4 03E00008 */  jr         $ra
/* 12DFE8 8010FEF8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010FF04
/* 12DFEC 8010FEFC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12DFF0 8010FF00 AFB20018 */  sw         $s2, 0x18($sp)
/* 12DFF4 8010FF04 00809021 */  addu       $s2, $a0, $zero
/* 12DFF8 8010FF08 AFBF0024 */  sw         $ra, 0x24($sp)
/* 12DFFC 8010FF0C AFB40020 */  sw         $s4, 0x20($sp)
/* 12E000 8010FF10 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12E004 8010FF14 AFB10014 */  sw         $s1, 0x14($sp)
/* 12E008 8010FF18 AFB00010 */  sw         $s0, 0x10($sp)
/* 12E00C 8010FF1C 8E421E28 */  lw         $v0, 0x1E28($s2)
/* 12E010 8010FF20 10400084 */  beqz       $v0, .Lmenu_80110134
/* 12E014 8010FF24 00000000 */   nop
/* 12E018 8010FF28 8E440354 */  lw         $a0, 0x354($s2)
/* 12E01C 8010FF2C 8E451E24 */  lw         $a1, 0x1E24($s2)
/* 12E020 8010FF30 8C820BF4 */  lw         $v0, 0xBF4($a0)
/* 12E024 8010FF34 24840BF4 */  addiu      $a0, $a0, 0xBF4
/* 12E028 8010FF38 84430018 */  lh         $v1, 0x18($v0)
/* 12E02C 8010FF3C 8C42001C */  lw         $v0, 0x1C($v0)
/* 12E030 8010FF40 0040F809 */  jalr       $v0
/* 12E034 8010FF44 00832021 */   addu      $a0, $a0, $v1
/* 12E038 8010FF48 0040A021 */  addu       $s4, $v0, $zero
/* 12E03C 8010FF4C 8E820004 */  lw         $v0, 0x4($s4)
/* 12E040 8010FF50 84440050 */  lh         $a0, 0x50($v0)
/* 12E044 8010FF54 8C420054 */  lw         $v0, 0x54($v0)
/* 12E048 8010FF58 0040F809 */  jalr       $v0
/* 12E04C 8010FF5C 02842021 */   addu      $a0, $s4, $a0
/* 12E050 8010FF60 10400074 */  beqz       $v0, .Lmenu_80110134
/* 12E054 8010FF64 3C05800D */   lui       $a1, %hi(D_menu_800CF4F0)
/* 12E058 8010FF68 8E441E2C */  lw         $a0, 0x1E2C($s2)
/* 12E05C 8010FF6C 24A5F4F0 */  addiu      $a1, $a1, %lo(D_menu_800CF4F0)
/* 12E060 8010FF70 00042180 */  sll        $a0, $a0, 6
/* 12E064 8010FF74 24841E34 */  addiu      $a0, $a0, 0x1E34
/* 12E068 8010FF78 0C0006A2 */  jal        func_80001A88
/* 12E06C 8010FF7C 02442021 */   addu      $a0, $s2, $a0
/* 12E070 8010FF80 14400028 */  bnez       $v0, .Lmenu_80110024
/* 12E074 8010FF84 00000000 */   nop
/* 12E078 8010FF88 8E530354 */  lw         $s3, 0x354($s2)
/* 12E07C 8010FF8C 8E421E24 */  lw         $v0, 0x1E24($s2)
/* 12E080 8010FF90 26712624 */  addiu      $s1, $s3, 0x2624
/* 12E084 8010FF94 8E230004 */  lw         $v1, 0x4($s1)
/* 12E088 8010FF98 14620016 */  bne        $v1, $v0, .Lmenu_8010FFF4
/* 12E08C 8010FF9C 00000000 */   nop
/* 12E090 8010FFA0 8E250008 */  lw         $a1, 0x8($s1)
/* 12E094 8010FFA4 92300022 */  lbu        $s0, 0x22($s1)
/* 12E098 8010FFA8 0C03C87C */  jal        func_menu_800F21F0
/* 12E09C 8010FFAC 02202021 */   addu      $a0, $s1, $zero
/* 12E0A0 8010FFB0 24020001 */  addiu      $v0, $zero, 0x1
/* 12E0A4 8010FFB4 02202021 */  addu       $a0, $s1, $zero
/* 12E0A8 8010FFB8 A2300022 */  sb         $s0, 0x22($s1)
/* 12E0AC 8010FFBC AE622624 */  sw         $v0, 0x2624($s3)
/* 12E0B0 8010FFC0 8E431E24 */  lw         $v1, 0x1E24($s2)
/* 12E0B4 8010FFC4 8E450354 */  lw         $a1, 0x354($s2)
/* 12E0B8 8010FFC8 00031080 */  sll        $v0, $v1, 2
/* 12E0BC 8010FFCC 00431021 */  addu       $v0, $v0, $v1
/* 12E0C0 8010FFD0 000210C0 */  sll        $v0, $v0, 3
/* 12E0C4 8010FFD4 00431023 */  subu       $v0, $v0, $v1
/* 12E0C8 8010FFD8 000210C0 */  sll        $v0, $v0, 3
/* 12E0CC 8010FFDC 00431021 */  addu       $v0, $v0, $v1
/* 12E0D0 8010FFE0 00021080 */  sll        $v0, $v0, 2
/* 12E0D4 8010FFE4 00A22821 */  addu       $a1, $a1, $v0
/* 12E0D8 8010FFE8 0C03C9E5 */  jal        func_menu_800F2794
/* 12E0DC 8010FFEC 24A50DE8 */   addiu     $a1, $a1, 0xDE8
/* 12E0E0 8010FFF0 8E421E24 */  lw         $v0, 0x1E24($s2)
.Lmenu_8010FFF4:
/* 12E0E4 8010FFF4 8E440354 */  lw         $a0, 0x354($s2)
/* 12E0E8 8010FFF8 00021880 */  sll        $v1, $v0, 2
/* 12E0EC 8010FFFC 00621821 */  addu       $v1, $v1, $v0
/* 12E0F0 80110000 000318C0 */  sll        $v1, $v1, 3
/* 12E0F4 80110004 00621823 */  subu       $v1, $v1, $v0
/* 12E0F8 80110008 000318C0 */  sll        $v1, $v1, 3
/* 12E0FC 8011000C 00621821 */  addu       $v1, $v1, $v0
/* 12E100 80110010 00031880 */  sll        $v1, $v1, 2
/* 12E104 80110014 00832021 */  addu       $a0, $a0, $v1
/* 12E108 80110018 24840DE8 */  addiu      $a0, $a0, 0xDE8
/* 12E10C 8011001C 0C03BAEA */  jal        func_menu_800EEBA8
/* 12E110 80110020 AC800000 */   sw        $zero, 0x0($a0)
.Lmenu_80110024:
/* 12E114 80110024 8E451E2C */  lw         $a1, 0x1E2C($s2)
/* 12E118 80110028 8E820004 */  lw         $v0, 0x4($s4)
/* 12E11C 8011002C 00052980 */  sll        $a1, $a1, 6
/* 12E120 80110030 24A51E34 */  addiu      $a1, $a1, 0x1E34
/* 12E124 80110034 02452821 */  addu       $a1, $s2, $a1
/* 12E128 80110038 84440030 */  lh         $a0, 0x30($v0)
/* 12E12C 8011003C 8C420034 */  lw         $v0, 0x34($v0)
/* 12E130 80110040 0040F809 */  jalr       $v0
/* 12E134 80110044 02842021 */   addu      $a0, $s4, $a0
/* 12E138 80110048 8E820004 */  lw         $v0, 0x4($s4)
/* 12E13C 8011004C 26452234 */  addiu      $a1, $s2, 0x2234
/* 12E140 80110050 84440040 */  lh         $a0, 0x40($v0)
/* 12E144 80110054 8C420044 */  lw         $v0, 0x44($v0)
/* 12E148 80110058 0040F809 */  jalr       $v0
/* 12E14C 8011005C 02842021 */   addu      $a0, $s4, $a0
/* 12E150 80110060 8E431E28 */  lw         $v1, 0x1E28($s2)
/* 12E154 80110064 24020001 */  addiu      $v0, $zero, 0x1
/* 12E158 80110068 14620008 */  bne        $v1, $v0, .Lmenu_8011008C
/* 12E15C 8011006C 2462FFFF */   addiu     $v0, $v1, -0x1
/* 12E160 80110070 26440FBC */  addiu      $a0, $s2, 0xFBC
/* 12E164 80110074 0C048D07 */  jal        func_menu_8012341C
/* 12E168 80110078 24050005 */   addiu     $a1, $zero, 0x5
/* 12E16C 8011007C AE401E2C */  sw         $zero, 0x1E2C($s2)
/* 12E170 80110080 AE401E28 */  sw         $zero, 0x1E28($s2)
/* 12E174 80110084 0804404B */  j          .Lmenu_8011012C
/* 12E178 80110088 AE401E30 */   sw        $zero, 0x1E30($s2)
.Lmenu_8011008C:
/* 12E17C 8011008C 8E451E2C */  lw         $a1, 0x1E2C($s2)
/* 12E180 80110090 00A2102B */  sltu       $v0, $a1, $v0
/* 12E184 80110094 10400019 */  beqz       $v0, .Lmenu_801100FC
/* 12E188 80110098 00051180 */   sll       $v0, $a1, 6
/* 12E18C 8011009C 24470040 */  addiu      $a3, $v0, 0x40
/* 12E190 801100A0 00523021 */  addu       $a2, $v0, $s2
.Lmenu_801100A4:
/* 12E194 801100A4 24C41E34 */  addiu      $a0, $a2, 0x1E34
/* 12E198 801100A8 02471021 */  addu       $v0, $s2, $a3
/* 12E19C 801100AC 24431E34 */  addiu      $v1, $v0, 0x1E34
/* 12E1A0 801100B0 24421E74 */  addiu      $v0, $v0, 0x1E74
.Lmenu_801100B4:
/* 12E1A4 801100B4 8C680000 */  lw         $t0, 0x0($v1)
/* 12E1A8 801100B8 8C690004 */  lw         $t1, 0x4($v1)
/* 12E1AC 801100BC 8C6A0008 */  lw         $t2, 0x8($v1)
/* 12E1B0 801100C0 8C6B000C */  lw         $t3, 0xC($v1)
/* 12E1B4 801100C4 AC880000 */  sw         $t0, 0x0($a0)
/* 12E1B8 801100C8 AC890004 */  sw         $t1, 0x4($a0)
/* 12E1BC 801100CC AC8A0008 */  sw         $t2, 0x8($a0)
/* 12E1C0 801100D0 AC8B000C */  sw         $t3, 0xC($a0)
/* 12E1C4 801100D4 24630010 */  addiu      $v1, $v1, 0x10
/* 12E1C8 801100D8 1462FFF6 */  bne        $v1, $v0, .Lmenu_801100B4
/* 12E1CC 801100DC 24840010 */   addiu     $a0, $a0, 0x10
/* 12E1D0 801100E0 24E70040 */  addiu      $a3, $a3, 0x40
/* 12E1D4 801100E4 8E421E28 */  lw         $v0, 0x1E28($s2)
/* 12E1D8 801100E8 24A50001 */  addiu      $a1, $a1, 0x1
/* 12E1DC 801100EC 2442FFFF */  addiu      $v0, $v0, -0x1
/* 12E1E0 801100F0 00A2102B */  sltu       $v0, $a1, $v0
/* 12E1E4 801100F4 1440FFEB */  bnez       $v0, .Lmenu_801100A4
/* 12E1E8 801100F8 24C60040 */   addiu     $a2, $a2, 0x40
.Lmenu_801100FC:
/* 12E1EC 801100FC 8E421E28 */  lw         $v0, 0x1E28($s2)
/* 12E1F0 80110100 8E431E2C */  lw         $v1, 0x1E2C($s2)
/* 12E1F4 80110104 2442FFFF */  addiu      $v0, $v0, -0x1
/* 12E1F8 80110108 AE421E28 */  sw         $v0, 0x1E28($s2)
/* 12E1FC 8011010C 0062102B */  sltu       $v0, $v1, $v0
/* 12E200 80110110 14400006 */  bnez       $v0, .Lmenu_8011012C
/* 12E204 80110114 2463FFFF */   addiu     $v1, $v1, -0x1
/* 12E208 80110118 8E421E30 */  lw         $v0, 0x1E30($s2)
/* 12E20C 8011011C 0062102B */  sltu       $v0, $v1, $v0
/* 12E210 80110120 10400002 */  beqz       $v0, .Lmenu_8011012C
/* 12E214 80110124 AE431E2C */   sw        $v1, 0x1E2C($s2)
/* 12E218 80110128 AE431E30 */  sw         $v1, 0x1E30($s2)
.Lmenu_8011012C:
/* 12E21C 8011012C 0C043E36 */  jal        func_menu_8010F8E0
/* 12E220 80110130 02402021 */   addu      $a0, $s2, $zero
.Lmenu_80110134:
/* 12E224 80110134 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12E228 80110138 8FB40020 */  lw         $s4, 0x20($sp)
/* 12E22C 8011013C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12E230 80110140 8FB20018 */  lw         $s2, 0x18($sp)
/* 12E234 80110144 8FB10014 */  lw         $s1, 0x14($sp)
/* 12E238 80110148 8FB00010 */  lw         $s0, 0x10($sp)
/* 12E23C 8011014C 03E00008 */  jr         $ra
/* 12E240 80110150 27BD0028 */   addiu     $sp, $sp, 0x28
