.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8011EE90
/* 13CF80 8011EE90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13CF84 8011EE94 AFB00010 */  sw         $s0, 0x10($sp)
/* 13CF88 8011EE98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13CF8C 8011EE9C 0C04793C */  jal        func_menu_8011E4F0
/* 13CF90 8011EEA0 00808021 */   addu      $s0, $a0, $zero
/* 13CF94 8011EEA4 3C02800D */  lui        $v0, %hi(D_menu_800D0BA0)
/* 13CF98 8011EEA8 24420BA0 */  addiu      $v0, $v0, %lo(D_menu_800D0BA0)
/* 13CF9C 8011EEAC 02002021 */  addu       $a0, $s0, $zero
/* 13CFA0 8011EEB0 0C047BC5 */  jal        func_menu_8011EF14
/* 13CFA4 8011EEB4 AE020054 */   sw        $v0, 0x54($s0)
/* 13CFA8 8011EEB8 02001021 */  addu       $v0, $s0, $zero
/* 13CFAC 8011EEBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13CFB0 8011EEC0 8FB00010 */  lw         $s0, 0x10($sp)
/* 13CFB4 8011EEC4 03E00008 */  jr         $ra
/* 13CFB8 8011EEC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011EECC
/* 13CFBC 8011EECC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13CFC0 8011EED0 AFB00010 */  sw         $s0, 0x10($sp)
/* 13CFC4 8011EED4 00808021 */  addu       $s0, $a0, $zero
/* 13CFC8 8011EED8 AFB10014 */  sw         $s1, 0x14($sp)
/* 13CFCC 8011EEDC 00A08821 */  addu       $s1, $a1, $zero
/* 13CFD0 8011EEE0 3C02800D */  lui        $v0, %hi(D_menu_800D0BA0)
/* 13CFD4 8011EEE4 24420BA0 */  addiu      $v0, $v0, %lo(D_menu_800D0BA0)
/* 13CFD8 8011EEE8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13CFDC 8011EEEC 0C049139 */  jal        func_menu_801244E4
/* 13CFE0 8011EEF0 AE020054 */   sw        $v0, 0x54($s0)
/* 13CFE4 8011EEF4 02002021 */  addu       $a0, $s0, $zero
/* 13CFE8 8011EEF8 0C04794B */  jal        func_menu_8011E52C
/* 13CFEC 8011EEFC 02202821 */   addu      $a1, $s1, $zero
/* 13CFF0 8011EF00 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13CFF4 8011EF04 8FB10014 */  lw         $s1, 0x14($sp)
/* 13CFF8 8011EF08 8FB00010 */  lw         $s0, 0x10($sp)
/* 13CFFC 8011EF0C 03E00008 */  jr         $ra
/* 13D000 8011EF10 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011EF14
/* 13D004 8011EF14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13D008 8011EF18 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13D00C 8011EF1C 0C0490D1 */  jal        func_menu_80124344
/* 13D010 8011EF20 AC800058 */   sw        $zero, 0x58($a0)
/* 13D014 8011EF24 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13D018 8011EF28 03E00008 */  jr         $ra
/* 13D01C 8011EF2C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011EF30
/* 13D020 8011EF30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13D024 8011EF34 AFB10014 */  sw         $s1, 0x14($sp)
/* 13D028 8011EF38 00808821 */  addu       $s1, $a0, $zero
/* 13D02C 8011EF3C AFBF0018 */  sw         $ra, 0x18($sp)
/* 13D030 8011EF40 AFB00010 */  sw         $s0, 0x10($sp)
/* 13D034 8011EF44 8E220054 */  lw         $v0, 0x54($s1)
/* 13D038 8011EF48 00A08021 */  addu       $s0, $a1, $zero
/* 13D03C 8011EF4C 84440018 */  lh         $a0, 0x18($v0)
/* 13D040 8011EF50 8C42001C */  lw         $v0, 0x1C($v0)
/* 13D044 8011EF54 0040F809 */  jalr       $v0
/* 13D048 8011EF58 02242021 */   addu      $a0, $s1, $a0
/* 13D04C 8011EF5C 8E030038 */  lw         $v1, 0x38($s0)
/* 13D050 8011EF60 AE230058 */  sw         $v1, 0x58($s1)
/* 13D054 8011EF64 8E020018 */  lw         $v0, 0x18($s0)
/* 13D058 8011EF68 14400005 */  bnez       $v0, .Lmenu_8011EF80
/* 13D05C 8011EF6C 00000000 */   nop
/* 13D060 8011EF70 8C630030 */  lw         $v1, 0x30($v1)
/* 13D064 8011EF74 8E020010 */  lw         $v0, 0x10($s0)
/* 13D068 8011EF78 00431021 */  addu       $v0, $v0, $v1
/* 13D06C 8011EF7C AE020018 */  sw         $v0, 0x18($s0)
.Lmenu_8011EF80:
/* 13D070 8011EF80 8E02001C */  lw         $v0, 0x1C($s0)
/* 13D074 8011EF84 14400006 */  bnez       $v0, .Lmenu_8011EFA0
/* 13D078 8011EF88 02202021 */   addu      $a0, $s1, $zero
/* 13D07C 8011EF8C 8E220058 */  lw         $v0, 0x58($s1)
/* 13D080 8011EF90 8C430034 */  lw         $v1, 0x34($v0)
/* 13D084 8011EF94 8E020014 */  lw         $v0, 0x14($s0)
/* 13D088 8011EF98 00431021 */  addu       $v0, $v0, $v1
/* 13D08C 8011EF9C AE02001C */  sw         $v0, 0x1C($s0)
.Lmenu_8011EFA0:
/* 13D090 8011EFA0 0C0490FB */  jal        func_menu_801243EC
/* 13D094 8011EFA4 02002821 */   addu      $a1, $s0, $zero
/* 13D098 8011EFA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13D09C 8011EFAC 8FB10014 */  lw         $s1, 0x14($sp)
/* 13D0A0 8011EFB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 13D0A4 8011EFB4 03E00008 */  jr         $ra
/* 13D0A8 8011EFB8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011EFBC
/* 13D0AC 8011EFBC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13D0B0 8011EFC0 AFB00020 */  sw         $s0, 0x20($sp)
/* 13D0B4 8011EFC4 00808021 */  addu       $s0, $a0, $zero
/* 13D0B8 8011EFC8 AFB10024 */  sw         $s1, 0x24($sp)
/* 13D0BC 8011EFCC 00A08821 */  addu       $s1, $a1, $zero
/* 13D0C0 8011EFD0 AFBF002C */  sw         $ra, 0x2C($sp)
/* 13D0C4 8011EFD4 AFB20028 */  sw         $s2, 0x28($sp)
/* 13D0C8 8011EFD8 AFA00014 */  sw         $zero, 0x14($sp)
/* 13D0CC 8011EFDC AFA00010 */  sw         $zero, 0x10($sp)
/* 13D0D0 8011EFE0 8E020058 */  lw         $v0, 0x58($s0)
/* 13D0D4 8011EFE4 00C09021 */  addu       $s2, $a2, $zero
/* 13D0D8 8011EFE8 8C420030 */  lw         $v0, 0x30($v0)
/* 13D0DC 8011EFEC AFA20018 */  sw         $v0, 0x18($sp)
/* 13D0E0 8011EFF0 8E020058 */  lw         $v0, 0x58($s0)
/* 13D0E4 8011EFF4 27A50010 */  addiu      $a1, $sp, 0x10
/* 13D0E8 8011EFF8 8C420034 */  lw         $v0, 0x34($v0)
/* 13D0EC 8011EFFC 26060030 */  addiu      $a2, $s0, 0x30
/* 13D0F0 8011F000 0C0493AA */  jal        func_menu_80124EA8
/* 13D0F4 8011F004 AFA2001C */   sw        $v0, 0x1C($sp)
/* 13D0F8 8011F008 02002021 */  addu       $a0, $s0, $zero
/* 13D0FC 8011F00C 02202821 */  addu       $a1, $s1, $zero
/* 13D100 8011F010 0C0493CD */  jal        func_menu_80124F34
/* 13D104 8011F014 27A60010 */   addiu     $a2, $sp, 0x10
/* 13D108 8011F018 02002021 */  addu       $a0, $s0, $zero
/* 13D10C 8011F01C 02402821 */  addu       $a1, $s2, $zero
/* 13D110 8011F020 8C870058 */  lw         $a3, 0x58($a0)
/* 13D114 8011F024 0C0492B5 */  jal        func_menu_80124AD4
/* 13D118 8011F028 27A60010 */   addiu     $a2, $sp, 0x10
/* 13D11C 8011F02C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 13D120 8011F030 8FB20028 */  lw         $s2, 0x28($sp)
/* 13D124 8011F034 8FB10024 */  lw         $s1, 0x24($sp)
/* 13D128 8011F038 8FB00020 */  lw         $s0, 0x20($sp)
/* 13D12C 8011F03C 00001021 */  addu       $v0, $zero, $zero
/* 13D130 8011F040 03E00008 */  jr         $ra
/* 13D134 8011F044 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011F048
/* 13D138 8011F048 03E00008 */  jr         $ra
/* 13D13C 8011F04C AC850058 */   sw        $a1, 0x58($a0)

glabel func_menu_8011F050
/* 13D140 8011F050 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13D144 8011F054 AFB00010 */  sw         $s0, 0x10($sp)
/* 13D148 8011F058 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13D14C 8011F05C 0C047BA4 */  jal        func_menu_8011EE90
/* 13D150 8011F060 00808021 */   addu      $s0, $a0, $zero
/* 13D154 8011F064 3C02800D */  lui        $v0, %hi(D_menu_800D0C30)
/* 13D158 8011F068 24420C30 */  addiu      $v0, $v0, %lo(D_menu_800D0C30)
/* 13D15C 8011F06C 02002021 */  addu       $a0, $s0, $zero
/* 13D160 8011F070 0C047BC5 */  jal        func_menu_8011EF14
/* 13D164 8011F074 AE020054 */   sw        $v0, 0x54($s0)
/* 13D168 8011F078 02001021 */  addu       $v0, $s0, $zero
/* 13D16C 8011F07C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13D170 8011F080 8FB00010 */  lw         $s0, 0x10($sp)
/* 13D174 8011F084 03E00008 */  jr         $ra
/* 13D178 8011F088 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011F08C
/* 13D17C 8011F08C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13D180 8011F090 AFB00010 */  sw         $s0, 0x10($sp)
/* 13D184 8011F094 00808021 */  addu       $s0, $a0, $zero
/* 13D188 8011F098 AFB10014 */  sw         $s1, 0x14($sp)
/* 13D18C 8011F09C 00A08821 */  addu       $s1, $a1, $zero
/* 13D190 8011F0A0 3C02800D */  lui        $v0, %hi(D_menu_800D0C30)
/* 13D194 8011F0A4 24420C30 */  addiu      $v0, $v0, %lo(D_menu_800D0C30)
/* 13D198 8011F0A8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13D19C 8011F0AC 0C049139 */  jal        func_menu_801244E4
/* 13D1A0 8011F0B0 AE020054 */   sw        $v0, 0x54($s0)
/* 13D1A4 8011F0B4 02002021 */  addu       $a0, $s0, $zero
/* 13D1A8 8011F0B8 0C047BB3 */  jal        func_menu_8011EECC
/* 13D1AC 8011F0BC 02202821 */   addu      $a1, $s1, $zero
/* 13D1B0 8011F0C0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13D1B4 8011F0C4 8FB10014 */  lw         $s1, 0x14($sp)
/* 13D1B8 8011F0C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 13D1BC 8011F0CC 03E00008 */  jr         $ra
/* 13D1C0 8011F0D0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011F0D4
/* 13D1C4 8011F0D4 00A03821 */  addu       $a3, $a1, $zero
/* 13D1C8 8011F0D8 8C860070 */  lw         $a2, 0x70($a0)
/* 13D1CC 8011F0DC 8CE30004 */  lw         $v1, 0x4($a3)
/* 13D1D0 8011F0E0 00C3102A */  slt        $v0, $a2, $v1
/* 13D1D4 8011F0E4 10400005 */  beqz       $v0, .Lmenu_8011F0FC
/* 13D1D8 8011F0E8 00C01021 */   addu      $v0, $a2, $zero
/* 13D1DC 8011F0EC 00662823 */  subu       $a1, $v1, $a2
/* 13D1E0 8011F0F0 00451021 */  addu       $v0, $v0, $a1
/* 13D1E4 8011F0F4 AC850060 */  sw         $a1, 0x60($a0)
/* 13D1E8 8011F0F8 AC820070 */  sw         $v0, 0x70($a0)
.Lmenu_8011F0FC:
/* 13D1EC 8011F0FC 8C86006C */  lw         $a2, 0x6C($a0)
/* 13D1F0 8011F100 8CE30000 */  lw         $v1, 0x0($a3)
/* 13D1F4 8011F104 00C3102A */  slt        $v0, $a2, $v1
/* 13D1F8 8011F108 10400005 */  beqz       $v0, .Lmenu_8011F120
/* 13D1FC 8011F10C 00C01021 */   addu      $v0, $a2, $zero
/* 13D200 8011F110 00662823 */  subu       $a1, $v1, $a2
/* 13D204 8011F114 00451021 */  addu       $v0, $v0, $a1
/* 13D208 8011F118 AC85005C */  sw         $a1, 0x5C($a0)
/* 13D20C 8011F11C AC82006C */  sw         $v0, 0x6C($a0)
.Lmenu_8011F120:
/* 13D210 8011F120 8C860074 */  lw         $a2, 0x74($a0)
/* 13D214 8011F124 8CE30008 */  lw         $v1, 0x8($a3)
/* 13D218 8011F128 0066102A */  slt        $v0, $v1, $a2
/* 13D21C 8011F12C 10400007 */  beqz       $v0, .Lmenu_8011F14C
/* 13D220 8011F130 00C32823 */   subu      $a1, $a2, $v1
/* 13D224 8011F134 00C01821 */  addu       $v1, $a2, $zero
/* 13D228 8011F138 8C820064 */  lw         $v0, 0x64($a0)
/* 13D22C 8011F13C 00651823 */  subu       $v1, $v1, $a1
/* 13D230 8011F140 AC830074 */  sw         $v1, 0x74($a0)
/* 13D234 8011F144 00451023 */  subu       $v0, $v0, $a1
/* 13D238 8011F148 AC820064 */  sw         $v0, 0x64($a0)
.Lmenu_8011F14C:
/* 13D23C 8011F14C 8C830078 */  lw         $v1, 0x78($a0)
/* 13D240 8011F150 8CE5000C */  lw         $a1, 0xC($a3)
/* 13D244 8011F154 00A3102A */  slt        $v0, $a1, $v1
/* 13D248 8011F158 10400006 */  beqz       $v0, .Lmenu_8011F174
/* 13D24C 8011F15C 00652823 */   subu      $a1, $v1, $a1
/* 13D250 8011F160 8C820068 */  lw         $v0, 0x68($a0)
/* 13D254 8011F164 00651823 */  subu       $v1, $v1, $a1
/* 13D258 8011F168 AC830078 */  sw         $v1, 0x78($a0)
/* 13D25C 8011F16C 00451023 */  subu       $v0, $v0, $a1
/* 13D260 8011F170 AC820068 */  sw         $v0, 0x68($a0)
.Lmenu_8011F174:
/* 13D264 8011F174 03E00008 */  jr         $ra
/* 13D268 8011F178 00000000 */   nop

glabel func_menu_8011F17C
/* 13D26C 8011F17C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13D270 8011F180 AFB00010 */  sw         $s0, 0x10($sp)
/* 13D274 8011F184 00808021 */  addu       $s0, $a0, $zero
/* 13D278 8011F188 AFB60028 */  sw         $s6, 0x28($sp)
/* 13D27C 8011F18C 00A0B021 */  addu       $s6, $a1, $zero
/* 13D280 8011F190 AFB40020 */  sw         $s4, 0x20($sp)
/* 13D284 8011F194 AFBF002C */  sw         $ra, 0x2C($sp)
/* 13D288 8011F198 AFB50024 */  sw         $s5, 0x24($sp)
/* 13D28C 8011F19C AFB3001C */  sw         $s3, 0x1C($sp)
/* 13D290 8011F1A0 AFB20018 */  sw         $s2, 0x18($sp)
/* 13D294 8011F1A4 AFB10014 */  sw         $s1, 0x14($sp)
/* 13D298 8011F1A8 8ED20004 */  lw         $s2, 0x4($s6)
/* 13D29C 8011F1AC 8EC2000C */  lw         $v0, 0xC($s6)
/* 13D2A0 8011F1B0 8E030058 */  lw         $v1, 0x58($s0)
/* 13D2A4 8011F1B4 0242102A */  slt        $v0, $s2, $v0
/* 13D2A8 8011F1B8 8C730030 */  lw         $s3, 0x30($v1)
/* 13D2AC 8011F1BC 8C750034 */  lw         $s5, 0x34($v1)
/* 13D2B0 8011F1C0 1040002A */  beqz       $v0, .Lmenu_8011F26C
/* 13D2B4 8011F1C4 00C0A021 */   addu      $s4, $a2, $zero
.Lmenu_8011F1C8:
/* 13D2B8 8011F1C8 8ED10000 */  lw         $s1, 0x0($s6)
/* 13D2BC 8011F1CC 8EC20008 */  lw         $v0, 0x8($s6)
/* 13D2C0 8011F1D0 0222102A */  slt        $v0, $s1, $v0
/* 13D2C4 8011F1D4 10400020 */  beqz       $v0, .Lmenu_8011F258
/* 13D2C8 8011F1D8 00000000 */   nop
/* 13D2CC 8011F1DC AE000060 */  sw         $zero, 0x60($s0)
.Lmenu_8011F1E0:
/* 13D2D0 8011F1E0 AE00005C */  sw         $zero, 0x5C($s0)
/* 13D2D4 8011F1E4 AE130064 */  sw         $s3, 0x64($s0)
/* 13D2D8 8011F1E8 AE150068 */  sw         $s5, 0x68($s0)
/* 13D2DC 8011F1EC 8E820004 */  lw         $v0, 0x4($s4)
/* 13D2E0 8011F1F0 00521021 */  addu       $v0, $v0, $s2
/* 13D2E4 8011F1F4 AE020070 */  sw         $v0, 0x70($s0)
/* 13D2E8 8011F1F8 8E820000 */  lw         $v0, 0x0($s4)
/* 13D2EC 8011F1FC 00511021 */  addu       $v0, $v0, $s1
/* 13D2F0 8011F200 AE02006C */  sw         $v0, 0x6C($s0)
/* 13D2F4 8011F204 8E820000 */  lw         $v0, 0x0($s4)
/* 13D2F8 8011F208 02002021 */  addu       $a0, $s0, $zero
/* 13D2FC 8011F20C 00511021 */  addu       $v0, $v0, $s1
/* 13D300 8011F210 00531021 */  addu       $v0, $v0, $s3
/* 13D304 8011F214 AE020074 */  sw         $v0, 0x74($s0)
/* 13D308 8011F218 8E820004 */  lw         $v0, 0x4($s4)
/* 13D30C 8011F21C 02802821 */  addu       $a1, $s4, $zero
/* 13D310 8011F220 00521021 */  addu       $v0, $v0, $s2
/* 13D314 8011F224 00551021 */  addu       $v0, $v0, $s5
/* 13D318 8011F228 0C047C35 */  jal        func_menu_8011F0D4
/* 13D31C 8011F22C AE020078 */   sw        $v0, 0x78($s0)
/* 13D320 8011F230 02002021 */  addu       $a0, $s0, $zero
/* 13D324 8011F234 2605006C */  addiu      $a1, $s0, 0x6C
/* 13D328 8011F238 8E070058 */  lw         $a3, 0x58($s0)
/* 13D32C 8011F23C 0C0492B5 */  jal        func_menu_80124AD4
/* 13D330 8011F240 2606005C */   addiu     $a2, $s0, 0x5C
/* 13D334 8011F244 8EC20008 */  lw         $v0, 0x8($s6)
/* 13D338 8011F248 02338821 */  addu       $s1, $s1, $s3
/* 13D33C 8011F24C 0222102A */  slt        $v0, $s1, $v0
/* 13D340 8011F250 5440FFE3 */  bnel       $v0, $zero, .Lmenu_8011F1E0
/* 13D344 8011F254 AE000060 */   sw        $zero, 0x60($s0)
.Lmenu_8011F258:
/* 13D348 8011F258 8EC2000C */  lw         $v0, 0xC($s6)
/* 13D34C 8011F25C 02559021 */  addu       $s2, $s2, $s5
/* 13D350 8011F260 0242102A */  slt        $v0, $s2, $v0
/* 13D354 8011F264 1440FFD8 */  bnez       $v0, .Lmenu_8011F1C8
/* 13D358 8011F268 00000000 */   nop
.Lmenu_8011F26C:
/* 13D35C 8011F26C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 13D360 8011F270 8FB60028 */  lw         $s6, 0x28($sp)
/* 13D364 8011F274 8FB50024 */  lw         $s5, 0x24($sp)
/* 13D368 8011F278 8FB40020 */  lw         $s4, 0x20($sp)
/* 13D36C 8011F27C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13D370 8011F280 8FB20018 */  lw         $s2, 0x18($sp)
/* 13D374 8011F284 8FB10014 */  lw         $s1, 0x14($sp)
/* 13D378 8011F288 8FB00010 */  lw         $s0, 0x10($sp)
/* 13D37C 8011F28C 00001021 */  addu       $v0, $zero, $zero
/* 13D380 8011F290 03E00008 */  jr         $ra
/* 13D384 8011F294 27BD0030 */   addiu     $sp, $sp, 0x30
