.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EEE10
/* 10CF00 800EEE10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10CF04 800EEE14 AFB00010 */  sw         $s0, 0x10($sp)
/* 10CF08 800EEE18 00808021 */  addu       $s0, $a0, $zero
/* 10CF0C 800EEE1C AFBF0014 */  sw         $ra, 0x14($sp)
/* 10CF10 800EEE20 0C03BBA0 */  jal        func_menu_800EEE80
/* 10CF14 800EEE24 AE000004 */   sw        $zero, 0x4($s0)
/* 10CF18 800EEE28 02001021 */  addu       $v0, $s0, $zero
/* 10CF1C 800EEE2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10CF20 800EEE30 8FB00010 */  lw         $s0, 0x10($sp)
/* 10CF24 800EEE34 03E00008 */  jr         $ra
/* 10CF28 800EEE38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EEE3C
/* 10CF2C 800EEE3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10CF30 800EEE40 AFB10014 */  sw         $s1, 0x14($sp)
/* 10CF34 800EEE44 00808821 */  addu       $s1, $a0, $zero
/* 10CF38 800EEE48 AFB00010 */  sw         $s0, 0x10($sp)
/* 10CF3C 800EEE4C AFBF0018 */  sw         $ra, 0x18($sp)
/* 10CF40 800EEE50 0C03BBCA */  jal        func_menu_800EEF28
/* 10CF44 800EEE54 00A08021 */   addu      $s0, $a1, $zero
/* 10CF48 800EEE58 32100001 */  andi       $s0, $s0, 0x1
/* 10CF4C 800EEE5C 12000003 */  beqz       $s0, .Lmenu_800EEE6C
/* 10CF50 800EEE60 00000000 */   nop
/* 10CF54 800EEE64 0C01FB5C */  jal        func_8007ED70
/* 10CF58 800EEE68 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800EEE6C:
/* 10CF5C 800EEE6C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10CF60 800EEE70 8FB10014 */  lw         $s1, 0x14($sp)
/* 10CF64 800EEE74 8FB00010 */  lw         $s0, 0x10($sp)
/* 10CF68 800EEE78 03E00008 */  jr         $ra
/* 10CF6C 800EEE7C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EEE80
/* 10CF70 800EEE80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10CF74 800EEE84 AFB00010 */  sw         $s0, 0x10($sp)
/* 10CF78 800EEE88 00808021 */  addu       $s0, $a0, $zero
/* 10CF7C 800EEE8C 26040014 */  addiu      $a0, $s0, 0x14
/* 10CF80 800EEE90 00002821 */  addu       $a1, $zero, $zero
/* 10CF84 800EEE94 2406022D */  addiu      $a2, $zero, 0x22D
/* 10CF88 800EEE98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10CF8C 800EEE9C 0C000697 */  jal        func_80001A5C
/* 10CF90 800EEEA0 AE000000 */   sw        $zero, 0x0($s0)
/* 10CF94 800EEEA4 AE000008 */  sw         $zero, 0x8($s0)
/* 10CF98 800EEEA8 AE00000C */  sw         $zero, 0xC($s0)
/* 10CF9C 800EEEAC AE000010 */  sw         $zero, 0x10($s0)
/* 10CFA0 800EEEB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10CFA4 800EEEB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 10CFA8 800EEEB8 03E00008 */  jr         $ra
/* 10CFAC 800EEEBC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EEEC0
/* 10CFB0 800EEEC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10CFB4 800EEEC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 10CFB8 800EEEC8 00808021 */  addu       $s0, $a0, $zero
/* 10CFBC 800EEECC AFB10014 */  sw         $s1, 0x14($sp)
/* 10CFC0 800EEED0 00A08821 */  addu       $s1, $a1, $zero
/* 10CFC4 800EEED4 AFB20018 */  sw         $s2, 0x18($sp)
/* 10CFC8 800EEED8 00C09021 */  addu       $s2, $a2, $zero
/* 10CFCC 800EEEDC AFBF0020 */  sw         $ra, 0x20($sp)
/* 10CFD0 800EEEE0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10CFD4 800EEEE4 8E020008 */  lw         $v0, 0x8($s0)
/* 10CFD8 800EEEE8 10400003 */  beqz       $v0, .Lmenu_800EEEF8
/* 10CFDC 800EEEEC 00E09821 */   addu      $s3, $a3, $zero
/* 10CFE0 800EEEF0 0C03BBCA */  jal        func_menu_800EEF28
/* 10CFE4 800EEEF4 00000000 */   nop
.Lmenu_800EEEF8:
/* 10CFE8 800EEEF8 8FA20038 */  lw         $v0, 0x38($sp)
/* 10CFEC 800EEEFC AE110008 */  sw         $s1, 0x8($s0)
/* 10CFF0 800EEF00 AE12000C */  sw         $s2, 0xC($s0)
/* 10CFF4 800EEF04 AE130010 */  sw         $s3, 0x10($s0)
/* 10CFF8 800EEF08 AE020000 */  sw         $v0, 0x0($s0)
/* 10CFFC 800EEF0C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10D000 800EEF10 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10D004 800EEF14 8FB20018 */  lw         $s2, 0x18($sp)
/* 10D008 800EEF18 8FB10014 */  lw         $s1, 0x14($sp)
/* 10D00C 800EEF1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10D010 800EEF20 03E00008 */  jr         $ra
/* 10D014 800EEF24 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EEF28
/* 10D018 800EEF28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D01C 800EEF2C AFBF0010 */  sw         $ra, 0x10($sp)
/* 10D020 800EEF30 0C03BBA0 */  jal        func_menu_800EEE80
/* 10D024 800EEF34 00000000 */   nop
/* 10D028 800EEF38 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10D02C 800EEF3C 03E00008 */  jr         $ra
/* 10D030 800EEF40 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EEF44
/* 10D034 800EEF44 90820030 */  lbu        $v0, 0x30($a0)
/* 10D038 800EEF48 24840030 */  addiu      $a0, $a0, 0x30
/* 10D03C 800EEF4C A0A20001 */  sb         $v0, 0x1($a1)
/* 10D040 800EEF50 90820001 */  lbu        $v0, 0x1($a0)
/* 10D044 800EEF54 A0A20000 */  sb         $v0, 0x0($a1)
/* 10D048 800EEF58 90820002 */  lbu        $v0, 0x2($a0)
/* 10D04C 800EEF5C A0A20003 */  sb         $v0, 0x3($a1)
/* 10D050 800EEF60 90820003 */  lbu        $v0, 0x3($a0)
/* 10D054 800EEF64 A0A20002 */  sb         $v0, 0x2($a1)
/* 10D058 800EEF68 90820004 */  lbu        $v0, 0x4($a0)
/* 10D05C 800EEF6C 3042007F */  andi       $v0, $v0, 0x7F
/* 10D060 800EEF70 03E00008 */  jr         $ra
/* 10D064 800EEF74 A0A20004 */   sb        $v0, 0x4($a1)

glabel func_menu_800EEF78
/* 10D068 800EEF78 2483003D */  addiu      $v1, $a0, 0x3D
/* 10D06C 800EEF7C 00651025 */  or         $v0, $v1, $a1
/* 10D070 800EEF80 30420003 */  andi       $v0, $v0, 0x3
/* 10D074 800EEF84 10400016 */  beqz       $v0, .Lmenu_800EEFE0
/* 10D078 800EEF88 2484023D */   addiu     $a0, $a0, 0x23D
.Lmenu_800EEF8C:
/* 10D07C 800EEF8C 88660000 */  lwl        $a2, 0x0($v1)
/* 10D080 800EEF90 98660003 */  lwr        $a2, 0x3($v1)
/* 10D084 800EEF94 88670004 */  lwl        $a3, 0x4($v1)
/* 10D088 800EEF98 98670007 */  lwr        $a3, 0x7($v1)
/* 10D08C 800EEF9C 88680008 */  lwl        $t0, 0x8($v1)
/* 10D090 800EEFA0 9868000B */  lwr        $t0, 0xB($v1)
/* 10D094 800EEFA4 8869000C */  lwl        $t1, 0xC($v1)
/* 10D098 800EEFA8 9869000F */  lwr        $t1, 0xF($v1)
/* 10D09C 800EEFAC A8A60000 */  swl        $a2, 0x0($a1)
/* 10D0A0 800EEFB0 B8A60003 */  swr        $a2, 0x3($a1)
/* 10D0A4 800EEFB4 A8A70004 */  swl        $a3, 0x4($a1)
/* 10D0A8 800EEFB8 B8A70007 */  swr        $a3, 0x7($a1)
/* 10D0AC 800EEFBC A8A80008 */  swl        $t0, 0x8($a1)
/* 10D0B0 800EEFC0 B8A8000B */  swr        $t0, 0xB($a1)
/* 10D0B4 800EEFC4 A8A9000C */  swl        $t1, 0xC($a1)
/* 10D0B8 800EEFC8 B8A9000F */  swr        $t1, 0xF($a1)
/* 10D0BC 800EEFCC 24630010 */  addiu      $v1, $v1, 0x10
/* 10D0C0 800EEFD0 1464FFEE */  bne        $v1, $a0, .Lmenu_800EEF8C
/* 10D0C4 800EEFD4 24A50010 */   addiu     $a1, $a1, 0x10
/* 10D0C8 800EEFD8 0803BC03 */  j          .Lmenu_800EF00C
/* 10D0CC 800EEFDC 00000000 */   nop
.Lmenu_800EEFE0:
/* 10D0D0 800EEFE0 8C660000 */  lw         $a2, 0x0($v1)
/* 10D0D4 800EEFE4 8C670004 */  lw         $a3, 0x4($v1)
/* 10D0D8 800EEFE8 8C680008 */  lw         $t0, 0x8($v1)
/* 10D0DC 800EEFEC 8C69000C */  lw         $t1, 0xC($v1)
/* 10D0E0 800EEFF0 ACA60000 */  sw         $a2, 0x0($a1)
/* 10D0E4 800EEFF4 ACA70004 */  sw         $a3, 0x4($a1)
/* 10D0E8 800EEFF8 ACA80008 */  sw         $t0, 0x8($a1)
/* 10D0EC 800EEFFC ACA9000C */  sw         $t1, 0xC($a1)
/* 10D0F0 800EF000 24630010 */  addiu      $v1, $v1, 0x10
/* 10D0F4 800EF004 1464FFF6 */  bne        $v1, $a0, .Lmenu_800EEFE0
/* 10D0F8 800EF008 24A50010 */   addiu     $a1, $a1, 0x10
.Lmenu_800EF00C:
/* 10D0FC 800EF00C 80660000 */  lb         $a2, 0x0($v1)
/* 10D100 800EF010 80670001 */  lb         $a3, 0x1($v1)
/* 10D104 800EF014 A0A60000 */  sb         $a2, 0x0($a1)
/* 10D108 800EF018 03E00008 */  jr         $ra
/* 10D10C 800EF01C A0A70001 */   sb        $a3, 0x1($a1)

glabel func_menu_800EF020
/* 10D110 800EF020 88820035 */  lwl        $v0, 0x35($a0)
/* 10D114 800EF024 98820038 */  lwr        $v0, 0x38($a0)
/* 10D118 800EF028 88830039 */  lwl        $v1, 0x39($a0)
/* 10D11C 800EF02C 9883003C */  lwr        $v1, 0x3C($a0)
/* 10D120 800EF030 A8A20000 */  swl        $v0, 0x0($a1)
/* 10D124 800EF034 B8A20003 */  swr        $v0, 0x3($a1)
/* 10D128 800EF038 A8A30004 */  swl        $v1, 0x4($a1)
/* 10D12C 800EF03C B8A30007 */  swr        $v1, 0x7($a1)
/* 10D130 800EF040 03E00008 */  jr         $ra
/* 10D134 800EF044 00000000 */   nop

glabel func_menu_800EF048
/* 10D138 800EF048 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D13C 800EF04C 24820014 */  addiu      $v0, $a0, 0x14
/* 10D140 800EF050 00A02021 */  addu       $a0, $a1, $zero
/* 10D144 800EF054 00402821 */  addu       $a1, $v0, $zero
/* 10D148 800EF058 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10D14C 800EF05C 0C03BC2C */  jal        func_menu_800EF0B0
/* 10D150 800EF060 2406000E */   addiu     $a2, $zero, 0xE
/* 10D154 800EF064 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10D158 800EF068 03E00008 */  jr         $ra
/* 10D15C 800EF06C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF070
/* 10D160 800EF070 24840014 */  addiu      $a0, $a0, 0x14
/* 10D164 800EF074 24A60008 */  addiu      $a2, $a1, 0x8
.Lmenu_800EF078:
/* 10D168 800EF078 90820001 */  lbu        $v0, 0x1($a0)
/* 10D16C 800EF07C 90830000 */  lbu        $v1, 0x0($a0)
/* 10D170 800EF080 00021200 */  sll        $v0, $v0, 8
/* 10D174 800EF084 00621825 */  or         $v1, $v1, $v0
/* 10D178 800EF088 54600003 */  bnel       $v1, $zero, .Lmenu_800EF098
/* 10D17C 800EF08C A0A30000 */   sb        $v1, 0x0($a1)
/* 10D180 800EF090 03E00008 */  jr         $ra
/* 10D184 800EF094 A0A00000 */   sb        $zero, 0x0($a1)
.Lmenu_800EF098:
/* 10D188 800EF098 24A50001 */  addiu      $a1, $a1, 0x1
/* 10D18C 800EF09C 00A6102B */  sltu       $v0, $a1, $a2
/* 10D190 800EF0A0 1440FFF5 */  bnez       $v0, .Lmenu_800EF078
/* 10D194 800EF0A4 24840002 */   addiu     $a0, $a0, 0x2
/* 10D198 800EF0A8 03E00008 */  jr         $ra
/* 10D19C 800EF0AC 00000000 */   nop

glabel func_menu_800EF0B0
/* 10D1A0 800EF0B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10D1A4 800EF0B4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10D1A8 800EF0B8 00809821 */  addu       $s3, $a0, $zero
/* 10D1AC 800EF0BC AFB10014 */  sw         $s1, 0x14($sp)
/* 10D1B0 800EF0C0 00A08821 */  addu       $s1, $a1, $zero
/* 10D1B4 800EF0C4 AFB40020 */  sw         $s4, 0x20($sp)
/* 10D1B8 800EF0C8 00C0A021 */  addu       $s4, $a2, $zero
/* 10D1BC 800EF0CC AFB20018 */  sw         $s2, 0x18($sp)
/* 10D1C0 800EF0D0 00009021 */  addu       $s2, $zero, $zero
/* 10D1C4 800EF0D4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 10D1C8 800EF0D8 1280000F */  beqz       $s4, .Lmenu_800EF118
/* 10D1CC 800EF0DC AFB00010 */   sw        $s0, 0x10($sp)
.Lmenu_800EF0E0:
/* 10D1D0 800EF0E0 92220001 */  lbu        $v0, 0x1($s1)
/* 10D1D4 800EF0E4 92230000 */  lbu        $v1, 0x0($s1)
/* 10D1D8 800EF0E8 00021200 */  sll        $v0, $v0, 8
/* 10D1DC 800EF0EC 00628021 */  addu       $s0, $v1, $v0
/* 10D1E0 800EF0F0 3202FFFF */  andi       $v0, $s0, 0xFFFF
/* 10D1E4 800EF0F4 10400008 */  beqz       $v0, .Lmenu_800EF118
/* 10D1E8 800EF0F8 02602021 */   addu      $a0, $s3, $zero
/* 10D1EC 800EF0FC 0C0016EF */  jal        func_80005BBC
/* 10D1F0 800EF100 02402821 */   addu      $a1, $s2, $zero
/* 10D1F4 800EF104 A4500000 */  sh         $s0, 0x0($v0)
/* 10D1F8 800EF108 26520001 */  addiu      $s2, $s2, 0x1
/* 10D1FC 800EF10C 0254102B */  sltu       $v0, $s2, $s4
/* 10D200 800EF110 1440FFF3 */  bnez       $v0, .Lmenu_800EF0E0
/* 10D204 800EF114 26310002 */   addiu     $s1, $s1, 0x2
.Lmenu_800EF118:
/* 10D208 800EF118 02602021 */  addu       $a0, $s3, $zero
/* 10D20C 800EF11C 0C0016EF */  jal        func_80005BBC
/* 10D210 800EF120 02402821 */   addu      $a1, $s2, $zero
/* 10D214 800EF124 A4400000 */  sh         $zero, 0x0($v0)
/* 10D218 800EF128 A6600006 */  sh         $zero, 0x6($s3)
/* 10D21C 800EF12C A6720008 */  sh         $s2, 0x8($s3)
/* 10D220 800EF130 8FBF0024 */  lw         $ra, 0x24($sp)
/* 10D224 800EF134 8FB40020 */  lw         $s4, 0x20($sp)
/* 10D228 800EF138 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10D22C 800EF13C 8FB20018 */  lw         $s2, 0x18($sp)
/* 10D230 800EF140 8FB10014 */  lw         $s1, 0x14($sp)
/* 10D234 800EF144 8FB00010 */  lw         $s0, 0x10($sp)
/* 10D238 800EF148 03E00008 */  jr         $ra
/* 10D23C 800EF14C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EF150
/* 10D240 800EF150 90820034 */  lbu        $v0, 0x34($a0)
/* 10D244 800EF154 03E00008 */  jr         $ra
/* 10D248 800EF158 30420080 */   andi      $v0, $v0, 0x80

glabel func_menu_800EF15C
/* 10D24C 800EF15C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D250 800EF160 AFB00010 */  sw         $s0, 0x10($sp)
/* 10D254 800EF164 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10D258 800EF168 0C03BD5C */  jal        func_menu_800EF570
/* 10D25C 800EF16C 24900030 */   addiu     $s0, $a0, 0x30
/* 10D260 800EF170 92020004 */  lbu        $v0, 0x4($s0)
/* 10D264 800EF174 34420080 */  ori        $v0, $v0, 0x80
/* 10D268 800EF178 A2020004 */  sb         $v0, 0x4($s0)
/* 10D26C 800EF17C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10D270 800EF180 8FB00010 */  lw         $s0, 0x10($sp)
/* 10D274 800EF184 03E00008 */  jr         $ra
/* 10D278 800EF188 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF18C
/* 10D27C 800EF18C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D280 800EF190 AFB00010 */  sw         $s0, 0x10($sp)
/* 10D284 800EF194 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10D288 800EF198 0C03BD5C */  jal        func_menu_800EF570
/* 10D28C 800EF19C 24900030 */   addiu     $s0, $a0, 0x30
/* 10D290 800EF1A0 92020004 */  lbu        $v0, 0x4($s0)
/* 10D294 800EF1A4 3042007F */  andi       $v0, $v0, 0x7F
/* 10D298 800EF1A8 A2020004 */  sb         $v0, 0x4($s0)
/* 10D29C 800EF1AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10D2A0 800EF1B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 10D2A4 800EF1B4 03E00008 */  jr         $ra
/* 10D2A8 800EF1B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF1BC
/* 10D2AC 800EF1BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D2B0 800EF1C0 24830030 */  addiu      $v1, $a0, 0x30
/* 10D2B4 800EF1C4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10D2B8 800EF1C8 90A20001 */  lbu        $v0, 0x1($a1)
/* 10D2BC 800EF1CC 90660004 */  lbu        $a2, 0x4($v1)
/* 10D2C0 800EF1D0 A0820030 */  sb         $v0, 0x30($a0)
/* 10D2C4 800EF1D4 90A20000 */  lbu        $v0, 0x0($a1)
/* 10D2C8 800EF1D8 A0620001 */  sb         $v0, 0x1($v1)
/* 10D2CC 800EF1DC 90A20003 */  lbu        $v0, 0x3($a1)
/* 10D2D0 800EF1E0 A0620002 */  sb         $v0, 0x2($v1)
/* 10D2D4 800EF1E4 90A20002 */  lbu        $v0, 0x2($a1)
/* 10D2D8 800EF1E8 A0620003 */  sb         $v0, 0x3($v1)
/* 10D2DC 800EF1EC 90A20004 */  lbu        $v0, 0x4($a1)
/* 10D2E0 800EF1F0 30C60080 */  andi       $a2, $a2, 0x80
/* 10D2E4 800EF1F4 00461025 */  or         $v0, $v0, $a2
/* 10D2E8 800EF1F8 0C03BD5C */  jal        func_menu_800EF570
/* 10D2EC 800EF1FC A0620004 */   sb        $v0, 0x4($v1)
/* 10D2F0 800EF200 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10D2F4 800EF204 03E00008 */  jr         $ra
/* 10D2F8 800EF208 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF20C
/* 10D2FC 800EF20C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D300 800EF210 2483003D */  addiu      $v1, $a0, 0x3D
/* 10D304 800EF214 00A31025 */  or         $v0, $a1, $v1
/* 10D308 800EF218 30420003 */  andi       $v0, $v0, 0x3
/* 10D30C 800EF21C 10400017 */  beqz       $v0, .Lmenu_800EF27C
/* 10D310 800EF220 AFBF0010 */   sw        $ra, 0x10($sp)
/* 10D314 800EF224 24A20200 */  addiu      $v0, $a1, 0x200
.Lmenu_800EF228:
/* 10D318 800EF228 88A60000 */  lwl        $a2, 0x0($a1)
/* 10D31C 800EF22C 98A60003 */  lwr        $a2, 0x3($a1)
/* 10D320 800EF230 88A70004 */  lwl        $a3, 0x4($a1)
/* 10D324 800EF234 98A70007 */  lwr        $a3, 0x7($a1)
/* 10D328 800EF238 88A80008 */  lwl        $t0, 0x8($a1)
/* 10D32C 800EF23C 98A8000B */  lwr        $t0, 0xB($a1)
/* 10D330 800EF240 88A9000C */  lwl        $t1, 0xC($a1)
/* 10D334 800EF244 98A9000F */  lwr        $t1, 0xF($a1)
/* 10D338 800EF248 A8660000 */  swl        $a2, 0x0($v1)
/* 10D33C 800EF24C B8660003 */  swr        $a2, 0x3($v1)
/* 10D340 800EF250 A8670004 */  swl        $a3, 0x4($v1)
/* 10D344 800EF254 B8670007 */  swr        $a3, 0x7($v1)
/* 10D348 800EF258 A8680008 */  swl        $t0, 0x8($v1)
/* 10D34C 800EF25C B868000B */  swr        $t0, 0xB($v1)
/* 10D350 800EF260 A869000C */  swl        $t1, 0xC($v1)
/* 10D354 800EF264 B869000F */  swr        $t1, 0xF($v1)
/* 10D358 800EF268 24A50010 */  addiu      $a1, $a1, 0x10
/* 10D35C 800EF26C 14A2FFEE */  bne        $a1, $v0, .Lmenu_800EF228
/* 10D360 800EF270 24630010 */   addiu     $v1, $v1, 0x10
/* 10D364 800EF274 0803BCAB */  j          .Lmenu_800EF2AC
/* 10D368 800EF278 00000000 */   nop
.Lmenu_800EF27C:
/* 10D36C 800EF27C 24A20200 */  addiu      $v0, $a1, 0x200
.Lmenu_800EF280:
/* 10D370 800EF280 8CA60000 */  lw         $a2, 0x0($a1)
/* 10D374 800EF284 8CA70004 */  lw         $a3, 0x4($a1)
/* 10D378 800EF288 8CA80008 */  lw         $t0, 0x8($a1)
/* 10D37C 800EF28C 8CA9000C */  lw         $t1, 0xC($a1)
/* 10D380 800EF290 AC660000 */  sw         $a2, 0x0($v1)
/* 10D384 800EF294 AC670004 */  sw         $a3, 0x4($v1)
/* 10D388 800EF298 AC680008 */  sw         $t0, 0x8($v1)
/* 10D38C 800EF29C AC69000C */  sw         $t1, 0xC($v1)
/* 10D390 800EF2A0 24A50010 */  addiu      $a1, $a1, 0x10
/* 10D394 800EF2A4 14A2FFF6 */  bne        $a1, $v0, .Lmenu_800EF280
/* 10D398 800EF2A8 24630010 */   addiu     $v1, $v1, 0x10
.Lmenu_800EF2AC:
/* 10D39C 800EF2AC 80A60000 */  lb         $a2, 0x0($a1)
/* 10D3A0 800EF2B0 80A70001 */  lb         $a3, 0x1($a1)
/* 10D3A4 800EF2B4 A0660000 */  sb         $a2, 0x0($v1)
/* 10D3A8 800EF2B8 0C03BD5C */  jal        func_menu_800EF570
/* 10D3AC 800EF2BC A0670001 */   sb        $a3, 0x1($v1)
/* 10D3B0 800EF2C0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10D3B4 800EF2C4 03E00008 */  jr         $ra
/* 10D3B8 800EF2C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF2CC
/* 10D3BC 800EF2CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D3C0 800EF2D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10D3C4 800EF2D4 88A20000 */  lwl        $v0, 0x0($a1)
/* 10D3C8 800EF2D8 98A20003 */  lwr        $v0, 0x3($a1)
/* 10D3CC 800EF2DC 88A30004 */  lwl        $v1, 0x4($a1)
/* 10D3D0 800EF2E0 98A30007 */  lwr        $v1, 0x7($a1)
/* 10D3D4 800EF2E4 A8820035 */  swl        $v0, 0x35($a0)
/* 10D3D8 800EF2E8 B8820038 */  swr        $v0, 0x38($a0)
/* 10D3DC 800EF2EC A8830039 */  swl        $v1, 0x39($a0)
/* 10D3E0 800EF2F0 B883003C */  swr        $v1, 0x3C($a0)
/* 10D3E4 800EF2F4 0C03BD5C */  jal        func_menu_800EF570
/* 10D3E8 800EF2F8 00000000 */   nop
/* 10D3EC 800EF2FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10D3F0 800EF300 03E00008 */  jr         $ra
/* 10D3F4 800EF304 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF308
/* 10D3F8 800EF308 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D3FC 800EF30C AFB00010 */  sw         $s0, 0x10($sp)
/* 10D400 800EF310 00808021 */  addu       $s0, $a0, $zero
/* 10D404 800EF314 00A02021 */  addu       $a0, $a1, $zero
/* 10D408 800EF318 26050014 */  addiu      $a1, $s0, 0x14
/* 10D40C 800EF31C AFBF0014 */  sw         $ra, 0x14($sp)
/* 10D410 800EF320 0C03BCD0 */  jal        func_menu_800EF340
/* 10D414 800EF324 2406000E */   addiu     $a2, $zero, 0xE
/* 10D418 800EF328 0C03BD5C */  jal        func_menu_800EF570
/* 10D41C 800EF32C 02002021 */   addu      $a0, $s0, $zero
/* 10D420 800EF330 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10D424 800EF334 8FB00010 */  lw         $s0, 0x10($sp)
/* 10D428 800EF338 03E00008 */  jr         $ra
/* 10D42C 800EF33C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF340
/* 10D430 800EF340 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10D434 800EF344 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10D438 800EF348 00809821 */  addu       $s3, $a0, $zero
/* 10D43C 800EF34C AFB10014 */  sw         $s1, 0x14($sp)
/* 10D440 800EF350 AFBF0024 */  sw         $ra, 0x24($sp)
/* 10D444 800EF354 AFB40020 */  sw         $s4, 0x20($sp)
/* 10D448 800EF358 AFB20018 */  sw         $s2, 0x18($sp)
/* 10D44C 800EF35C AFB00010 */  sw         $s0, 0x10($sp)
/* 10D450 800EF360 96620008 */  lhu        $v0, 0x8($s3)
/* 10D454 800EF364 96630006 */  lhu        $v1, 0x6($s3)
/* 10D458 800EF368 00C0A021 */  addu       $s4, $a2, $zero
/* 10D45C 800EF36C 00431023 */  subu       $v0, $v0, $v1
/* 10D460 800EF370 3052FFFF */  andi       $s2, $v0, 0xFFFF
/* 10D464 800EF374 0292102B */  sltu       $v0, $s4, $s2
/* 10D468 800EF378 10400002 */  beqz       $v0, .Lmenu_800EF384
/* 10D46C 800EF37C 00A08821 */   addu      $s1, $a1, $zero
/* 10D470 800EF380 02809021 */  addu       $s2, $s4, $zero
.Lmenu_800EF384:
/* 10D474 800EF384 12400012 */  beqz       $s2, .Lmenu_800EF3D0
/* 10D478 800EF388 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800EF38C:
/* 10D47C 800EF38C 02602021 */  addu       $a0, $s3, $zero
/* 10D480 800EF390 0C0016EF */  jal        func_80005BBC
/* 10D484 800EF394 02002821 */   addu      $a1, $s0, $zero
/* 10D488 800EF398 94420000 */  lhu        $v0, 0x0($v0)
/* 10D48C 800EF39C 26100001 */  addiu      $s0, $s0, 0x1
/* 10D490 800EF3A0 A2220000 */  sb         $v0, 0x0($s1)
/* 10D494 800EF3A4 00021202 */  srl        $v0, $v0, 8
/* 10D498 800EF3A8 A2220001 */  sb         $v0, 0x1($s1)
/* 10D49C 800EF3AC 0212102B */  sltu       $v0, $s0, $s2
/* 10D4A0 800EF3B0 1440FFF6 */  bnez       $v0, .Lmenu_800EF38C
/* 10D4A4 800EF3B4 26310002 */   addiu     $s1, $s1, 0x2
/* 10D4A8 800EF3B8 0803BCF5 */  j          .Lmenu_800EF3D4
/* 10D4AC 800EF3BC 0214102B */   sltu      $v0, $s0, $s4
.Lmenu_800EF3C0:
/* 10D4B0 800EF3C0 26310001 */  addiu      $s1, $s1, 0x1
/* 10D4B4 800EF3C4 A2200000 */  sb         $zero, 0x0($s1)
/* 10D4B8 800EF3C8 26310001 */  addiu      $s1, $s1, 0x1
/* 10D4BC 800EF3CC 26100001 */  addiu      $s0, $s0, 0x1
.Lmenu_800EF3D0:
/* 10D4C0 800EF3D0 0214102B */  sltu       $v0, $s0, $s4
.Lmenu_800EF3D4:
/* 10D4C4 800EF3D4 5440FFFA */  bnel       $v0, $zero, .Lmenu_800EF3C0
/* 10D4C8 800EF3D8 A2200000 */   sb        $zero, 0x0($s1)
/* 10D4CC 800EF3DC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 10D4D0 800EF3E0 8FB40020 */  lw         $s4, 0x20($sp)
/* 10D4D4 800EF3E4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10D4D8 800EF3E8 8FB20018 */  lw         $s2, 0x18($sp)
/* 10D4DC 800EF3EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 10D4E0 800EF3F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 10D4E4 800EF3F4 03E00008 */  jr         $ra
/* 10D4E8 800EF3F8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EF3FC
/* 10D4EC 800EF3FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10D4F0 800EF400 AFB1001C */  sw         $s1, 0x1C($sp)
/* 10D4F4 800EF404 00808821 */  addu       $s1, $a0, $zero
/* 10D4F8 800EF408 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10D4FC 800EF40C AFB00018 */  sw         $s0, 0x18($sp)
/* 10D500 800EF410 8E220008 */  lw         $v0, 0x8($s1)
/* 10D504 800EF414 14400006 */  bnez       $v0, .Lmenu_800EF430
/* 10D508 800EF418 00A08021 */   addu      $s0, $a1, $zero
/* 10D50C 800EF41C 8E050008 */  lw         $a1, 0x8($s0)
/* 10D510 800EF420 8E06000C */  lw         $a2, 0xC($s0)
/* 10D514 800EF424 00003821 */  addu       $a3, $zero, $zero
/* 10D518 800EF428 0C03BBB0 */  jal        func_menu_800EEEC0
/* 10D51C 800EF42C AFA00010 */   sw        $zero, 0x10($sp)
.Lmenu_800EF430:
/* 10D520 800EF430 26230014 */  addiu      $v1, $s1, 0x14
/* 10D524 800EF434 26020014 */  addiu      $v0, $s0, 0x14
/* 10D528 800EF438 26050234 */  addiu      $a1, $s0, 0x234
.Lmenu_800EF43C:
/* 10D52C 800EF43C 8C480000 */  lw         $t0, 0x0($v0)
/* 10D530 800EF440 8C490004 */  lw         $t1, 0x4($v0)
/* 10D534 800EF444 8C4A0008 */  lw         $t2, 0x8($v0)
/* 10D538 800EF448 8C4B000C */  lw         $t3, 0xC($v0)
/* 10D53C 800EF44C AC680000 */  sw         $t0, 0x0($v1)
/* 10D540 800EF450 AC690004 */  sw         $t1, 0x4($v1)
/* 10D544 800EF454 AC6A0008 */  sw         $t2, 0x8($v1)
/* 10D548 800EF458 AC6B000C */  sw         $t3, 0xC($v1)
/* 10D54C 800EF45C 24420010 */  addiu      $v0, $v0, 0x10
/* 10D550 800EF460 1445FFF6 */  bne        $v0, $a1, .Lmenu_800EF43C
/* 10D554 800EF464 24630010 */   addiu     $v1, $v1, 0x10
/* 10D558 800EF468 02202021 */  addu       $a0, $s1, $zero
/* 10D55C 800EF46C 8C480000 */  lw         $t0, 0x0($v0)
/* 10D560 800EF470 8C490004 */  lw         $t1, 0x4($v0)
/* 10D564 800EF474 8C4A0008 */  lw         $t2, 0x8($v0)
/* 10D568 800EF478 804B000C */  lb         $t3, 0xC($v0)
/* 10D56C 800EF47C AC680000 */  sw         $t0, 0x0($v1)
/* 10D570 800EF480 AC690004 */  sw         $t1, 0x4($v1)
/* 10D574 800EF484 AC6A0008 */  sw         $t2, 0x8($v1)
/* 10D578 800EF488 0C03BD5C */  jal        func_menu_800EF570
/* 10D57C 800EF48C A06B000C */   sb        $t3, 0xC($v1)
/* 10D580 800EF490 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10D584 800EF494 8FB1001C */  lw         $s1, 0x1C($sp)
/* 10D588 800EF498 8FB00018 */  lw         $s0, 0x18($sp)
/* 10D58C 800EF49C 03E00008 */  jr         $ra
/* 10D590 800EF4A0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EF4A4
/* 10D594 800EF4A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D598 800EF4A8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10D59C 800EF4AC 0C03BD5C */  jal        func_menu_800EF570
/* 10D5A0 800EF4B0 AC850010 */   sw        $a1, 0x10($a0)
/* 10D5A4 800EF4B4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10D5A8 800EF4B8 03E00008 */  jr         $ra
/* 10D5AC 800EF4BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF4C0
/* 10D5B0 800EF4C0 00052840 */  sll        $a1, $a1, 1
/* 10D5B4 800EF4C4 90830240 */  lbu        $v1, 0x240($a0)
/* 10D5B8 800EF4C8 9082023F */  lbu        $v0, 0x23F($a0)
/* 10D5BC 800EF4CC 00031A00 */  sll        $v1, $v1, 8
/* 10D5C0 800EF4D0 00431025 */  or         $v0, $v0, $v1
/* 10D5C4 800EF4D4 00A21007 */  srav       $v0, $v0, $a1
/* 10D5C8 800EF4D8 03E00008 */  jr         $ra
/* 10D5CC 800EF4DC 30420003 */   andi      $v0, $v0, 0x3

glabel func_menu_800EF4E0
/* 10D5D0 800EF4E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D5D4 800EF4E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10D5D8 800EF4E8 2CC20004 */  sltiu      $v0, $a2, 0x4
/* 10D5DC 800EF4EC 1040000D */  beqz       $v0, .Lmenu_800EF524
/* 10D5E0 800EF4F0 00804021 */   addu      $t0, $a0, $zero
/* 10D5E4 800EF4F4 91020240 */  lbu        $v0, 0x240($t0)
/* 10D5E8 800EF4F8 9103023F */  lbu        $v1, 0x23F($t0)
/* 10D5EC 800EF4FC 00021200 */  sll        $v0, $v0, 8
/* 10D5F0 800EF500 00623825 */  or         $a3, $v1, $v0
/* 10D5F4 800EF504 00051040 */  sll        $v0, $a1, 1
/* 10D5F8 800EF508 00471007 */  srav       $v0, $a3, $v0
/* 10D5FC 800EF50C 30430003 */  andi       $v1, $v0, 0x3
/* 10D600 800EF510 10600006 */  beqz       $v1, .Lmenu_800EF52C
/* 10D604 800EF514 30C2FFFF */   andi      $v0, $a2, 0xFFFF
/* 10D608 800EF518 0043102B */  sltu       $v0, $v0, $v1
/* 10D60C 800EF51C 14400004 */  bnez       $v0, .Lmenu_800EF530
/* 10D610 800EF520 24030003 */   addiu     $v1, $zero, 0x3
.Lmenu_800EF524:
/* 10D614 800EF524 0803BD59 */  j          .Lmenu_800EF564
/* 10D618 800EF528 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800EF52C:
/* 10D61C 800EF52C 24030003 */  addiu      $v1, $zero, 0x3
.Lmenu_800EF530:
/* 10D620 800EF530 00052040 */  sll        $a0, $a1, 1
/* 10D624 800EF534 00831804 */  sllv       $v1, $v1, $a0
/* 10D628 800EF538 00031827 */  nor        $v1, $zero, $v1
/* 10D62C 800EF53C 00E31824 */  and        $v1, $a3, $v1
/* 10D630 800EF540 30C2FFFF */  andi       $v0, $a2, 0xFFFF
/* 10D634 800EF544 00821004 */  sllv       $v0, $v0, $a0
/* 10D638 800EF548 00623825 */  or         $a3, $v1, $v0
/* 10D63C 800EF54C 00071202 */  srl        $v0, $a3, 8
/* 10D640 800EF550 01002021 */  addu       $a0, $t0, $zero
/* 10D644 800EF554 A107023F */  sb         $a3, 0x23F($t0)
/* 10D648 800EF558 0C03BD5C */  jal        func_menu_800EF570
/* 10D64C 800EF55C A1020240 */   sb        $v0, 0x240($t0)
/* 10D650 800EF560 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800EF564:
/* 10D654 800EF564 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10D658 800EF568 03E00008 */  jr         $ra
/* 10D65C 800EF56C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF570
/* 10D660 800EF570 8C840000 */  lw         $a0, 0x0($a0)
/* 10D664 800EF574 10800002 */  beqz       $a0, .Lmenu_800EF580
/* 10D668 800EF578 24020001 */   addiu     $v0, $zero, 0x1
/* 10D66C 800EF57C AC820020 */  sw         $v0, 0x20($a0)
.Lmenu_800EF580:
/* 10D670 800EF580 03E00008 */  jr         $ra
/* 10D674 800EF584 00000000 */   nop
