.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800FEAB0
/* 11CBA0 800FEAB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11CBA4 800FEAB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 11CBA8 800FEAB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11CBAC 800FEABC 0C04639C */  jal        func_menu_80118E70
/* 11CBB0 800FEAC0 00808021 */   addu      $s0, $a0, $zero
/* 11CBB4 800FEAC4 3C02800D */  lui        $v0, %hi(D_menu_800CD188)
/* 11CBB8 800FEAC8 2442D188 */  addiu      $v0, $v0, %lo(D_menu_800CD188)
/* 11CBBC 800FEACC 2604001C */  addiu      $a0, $s0, 0x1C
/* 11CBC0 800FEAD0 0C01955C */  jal        func_80065570
/* 11CBC4 800FEAD4 AE020018 */   sw        $v0, 0x18($s0)
/* 11CBC8 800FEAD8 0C01933C */  jal        func_80064CF0
/* 11CBCC 800FEADC 26040118 */   addiu     $a0, $s0, 0x118
/* 11CBD0 800FEAE0 0C03FAD4 */  jal        func_menu_800FEB50
/* 11CBD4 800FEAE4 02002021 */   addu      $a0, $s0, $zero
/* 11CBD8 800FEAE8 02001021 */  addu       $v0, $s0, $zero
/* 11CBDC 800FEAEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11CBE0 800FEAF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CBE4 800FEAF4 03E00008 */  jr         $ra
/* 11CBE8 800FEAF8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FEAFC
/* 11CBEC 800FEAFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11CBF0 800FEB00 AFB00010 */  sw         $s0, 0x10($sp)
/* 11CBF4 800FEB04 00808021 */  addu       $s0, $a0, $zero
/* 11CBF8 800FEB08 AFB10014 */  sw         $s1, 0x14($sp)
/* 11CBFC 800FEB0C 00A08821 */  addu       $s1, $a1, $zero
/* 11CC00 800FEB10 3C02800D */  lui        $v0, %hi(D_menu_800CD188)
/* 11CC04 800FEB14 2442D188 */  addiu      $v0, $v0, %lo(D_menu_800CD188)
/* 11CC08 800FEB18 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11CC0C 800FEB1C 0C03FB59 */  jal        func_menu_800FED64
/* 11CC10 800FEB20 AE020018 */   sw        $v0, 0x18($s0)
/* 11CC14 800FEB24 26040118 */  addiu      $a0, $s0, 0x118
/* 11CC18 800FEB28 0C01934F */  jal        func_80064D3C
/* 11CC1C 800FEB2C 24050002 */   addiu     $a1, $zero, 0x2
/* 11CC20 800FEB30 02002021 */  addu       $a0, $s0, $zero
/* 11CC24 800FEB34 0C0463A9 */  jal        func_menu_80118EA4
/* 11CC28 800FEB38 02202821 */   addu      $a1, $s1, $zero
/* 11CC2C 800FEB3C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11CC30 800FEB40 8FB10014 */  lw         $s1, 0x14($sp)
/* 11CC34 800FEB44 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CC38 800FEB48 03E00008 */  jr         $ra
/* 11CC3C 800FEB4C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FEB50
/* 11CC40 800FEB50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11CC44 800FEB54 AFB00010 */  sw         $s0, 0x10($sp)
/* 11CC48 800FEB58 00808021 */  addu       $s0, $a0, $zero
/* 11CC4C 800FEB5C 26040154 */  addiu      $a0, $s0, 0x154
/* 11CC50 800FEB60 00002821 */  addu       $a1, $zero, $zero
/* 11CC54 800FEB64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11CC58 800FEB68 0C000697 */  jal        func_80001A5C
/* 11CC5C 800FEB6C 24060005 */   addiu     $a2, $zero, 0x5
/* 11CC60 800FEB70 AE000150 */  sw         $zero, 0x150($s0)
/* 11CC64 800FEB74 AE000114 */  sw         $zero, 0x114($s0)
/* 11CC68 800FEB78 AE000110 */  sw         $zero, 0x110($s0)
/* 11CC6C 800FEB7C AE00014C */  sw         $zero, 0x14C($s0)
/* 11CC70 800FEB80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11CC74 800FEB84 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CC78 800FEB88 03E00008 */  jr         $ra
/* 11CC7C 800FEB8C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FEB90
/* 11CC80 800FEB90 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 11CC84 800FEB94 AFB00038 */  sw         $s0, 0x38($sp)
/* 11CC88 800FEB98 00808021 */  addu       $s0, $a0, $zero
/* 11CC8C 800FEB9C AFBF0040 */  sw         $ra, 0x40($sp)
/* 11CC90 800FEBA0 AFB1003C */  sw         $s1, 0x3C($sp)
/* 11CC94 800FEBA4 8E030150 */  lw         $v1, 0x150($s0)
/* 11CC98 800FEBA8 24020001 */  addiu      $v0, $zero, 0x1
/* 11CC9C 800FEBAC AC620010 */  sw         $v0, 0x10($v1)
/* 11CCA0 800FEBB0 8E030008 */  lw         $v1, 0x8($s0)
/* 11CCA4 800FEBB4 8C620000 */  lw         $v0, 0x0($v1)
/* 11CCA8 800FEBB8 84440030 */  lh         $a0, 0x30($v0)
/* 11CCAC 800FEBBC 8C420034 */  lw         $v0, 0x34($v0)
/* 11CCB0 800FEBC0 0040F809 */  jalr       $v0
/* 11CCB4 800FEBC4 00642021 */   addu      $a0, $v1, $a0
/* 11CCB8 800FEBC8 8E040150 */  lw         $a0, 0x150($s0)
/* 11CCBC 800FEBCC 27A50020 */  addiu      $a1, $sp, 0x20
/* 11CCC0 800FEBD0 0C03779C */  jal        func_menu_800DDE70
/* 11CCC4 800FEBD4 AE020110 */   sw        $v0, 0x110($s0)
/* 11CCC8 800FEBD8 8E040110 */  lw         $a0, 0x110($s0)
/* 11CCCC 800FEBDC 8C83003C */  lw         $v1, 0x3C($a0)
/* 11CCD0 800FEBE0 8FA20024 */  lw         $v0, 0x24($sp)
/* 11CCD4 800FEBE4 84680048 */  lh         $t0, 0x48($v1)
/* 11CCD8 800FEBE8 AFA20010 */  sw         $v0, 0x10($sp)
/* 11CCDC 800FEBEC 8FA20028 */  lw         $v0, 0x28($sp)
/* 11CCE0 800FEBF0 AFA20014 */  sw         $v0, 0x14($sp)
/* 11CCE4 800FEBF4 8FA2002C */  lw         $v0, 0x2C($sp)
/* 11CCE8 800FEBF8 24060002 */  addiu      $a2, $zero, 0x2
/* 11CCEC 800FEBFC AFA20018 */  sw         $v0, 0x18($sp)
/* 11CCF0 800FEC00 8E05000C */  lw         $a1, 0xC($s0)
/* 11CCF4 800FEC04 8FA70020 */  lw         $a3, 0x20($sp)
/* 11CCF8 800FEC08 8C62004C */  lw         $v0, 0x4C($v1)
/* 11CCFC 800FEC0C 0040F809 */  jalr       $v0
/* 11CD00 800FEC10 00882021 */   addu      $a0, $a0, $t0
/* 11CD04 800FEC14 26110154 */  addiu      $s1, $s0, 0x154
/* 11CD08 800FEC18 02202821 */  addu       $a1, $s1, $zero
/* 11CD0C 800FEC1C 8E040150 */  lw         $a0, 0x150($s0)
/* 11CD10 800FEC20 8E060110 */  lw         $a2, 0x110($s0)
/* 11CD14 800FEC24 00003821 */  addu       $a3, $zero, $zero
/* 11CD18 800FEC28 A2000157 */  sb         $zero, 0x157($s0)
/* 11CD1C 800FEC2C A2000156 */  sb         $zero, 0x156($s0)
/* 11CD20 800FEC30 A2000155 */  sb         $zero, 0x155($s0)
/* 11CD24 800FEC34 0C037746 */  jal        func_menu_800DDD18
/* 11CD28 800FEC38 A2000154 */   sb        $zero, 0x154($s0)
/* 11CD2C 800FEC3C 14400007 */  bnez       $v0, .Lmenu_800FEC5C
/* 11CD30 800FEC40 AE020110 */   sw        $v0, 0x110($s0)
/* 11CD34 800FEC44 3C04800D */  lui        $a0, %hi(D_menu_800CD180)
/* 11CD38 800FEC48 2484D180 */  addiu      $a0, $a0, %lo(D_menu_800CD180)
/* 11CD3C 800FEC4C 00002821 */  addu       $a1, $zero, $zero
/* 11CD40 800FEC50 00A03021 */  addu       $a2, $a1, $zero
/* 11CD44 800FEC54 0C011ACF */  jal        func_80046B3C
/* 11CD48 800FEC58 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800FEC5C:
/* 11CD4C 800FEC5C 8E030008 */  lw         $v1, 0x8($s0)
/* 11CD50 800FEC60 8C620000 */  lw         $v0, 0x0($v1)
/* 11CD54 800FEC64 84440038 */  lh         $a0, 0x38($v0)
/* 11CD58 800FEC68 8C42003C */  lw         $v0, 0x3C($v0)
/* 11CD5C 800FEC6C 0040F809 */  jalr       $v0
/* 11CD60 800FEC70 00642021 */   addu      $a0, $v1, $a0
/* 11CD64 800FEC74 14400007 */  bnez       $v0, .Lmenu_800FEC94
/* 11CD68 800FEC78 AE020114 */   sw        $v0, 0x114($s0)
/* 11CD6C 800FEC7C 3C04800D */  lui        $a0, %hi(D_menu_800CD180)
/* 11CD70 800FEC80 2484D180 */  addiu      $a0, $a0, %lo(D_menu_800CD180)
/* 11CD74 800FEC84 00002821 */  addu       $a1, $zero, $zero
/* 11CD78 800FEC88 00A03021 */  addu       $a2, $a1, $zero
/* 11CD7C 800FEC8C 0C011ACF */  jal        func_80046B3C
/* 11CD80 800FEC90 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800FEC94:
/* 11CD84 800FEC94 8E040150 */  lw         $a0, 0x150($s0)
/* 11CD88 800FEC98 0C037778 */  jal        func_menu_800DDDE0
/* 11CD8C 800FEC9C 02202821 */   addu      $a1, $s1, $zero
/* 11CD90 800FECA0 8E060114 */  lw         $a2, 0x114($s0)
/* 11CD94 800FECA4 8CC30008 */  lw         $v1, 0x8($a2)
/* 11CD98 800FECA8 00402821 */  addu       $a1, $v0, $zero
/* 11CD9C 800FECAC 84640030 */  lh         $a0, 0x30($v1)
/* 11CDA0 800FECB0 8C620034 */  lw         $v0, 0x34($v1)
/* 11CDA4 800FECB4 0040F809 */  jalr       $v0
/* 11CDA8 800FECB8 00C42021 */   addu      $a0, $a2, $a0
/* 11CDAC 800FECBC 3C01800D */  lui        $at, %hi(D_menu_800CD184)
/* 11CDB0 800FECC0 C420D184 */  lwc1       $f0, %lo(D_menu_800CD184)($at)
/* 11CDB4 800FECC4 2604001C */  addiu      $a0, $s0, 0x1C
/* 11CDB8 800FECC8 E7A00010 */  swc1       $f0, 0x10($sp)
/* 11CDBC 800FECCC 8E050110 */  lw         $a1, 0x110($s0)
/* 11CDC0 800FECD0 8E060114 */  lw         $a2, 0x114($s0)
/* 11CDC4 800FECD4 0C01956B */  jal        func_800655AC
/* 11CDC8 800FECD8 26070118 */   addiu     $a3, $s0, 0x118
/* 11CDCC 800FECDC 8FBF0040 */  lw         $ra, 0x40($sp)
/* 11CDD0 800FECE0 8FB1003C */  lw         $s1, 0x3C($sp)
/* 11CDD4 800FECE4 8FB00038 */  lw         $s0, 0x38($sp)
/* 11CDD8 800FECE8 03E00008 */  jr         $ra
/* 11CDDC 800FECEC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800FECF0
/* 11CDE0 800FECF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11CDE4 800FECF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 11CDE8 800FECF8 00808021 */  addu       $s0, $a0, $zero
/* 11CDEC 800FECFC AFBF0018 */  sw         $ra, 0x18($sp)
/* 11CDF0 800FED00 AFB10014 */  sw         $s1, 0x14($sp)
/* 11CDF4 800FED04 8E020018 */  lw         $v0, 0x18($s0)
/* 11CDF8 800FED08 00A08821 */  addu       $s1, $a1, $zero
/* 11CDFC 800FED0C 84440018 */  lh         $a0, 0x18($v0)
/* 11CE00 800FED10 8C42001C */  lw         $v0, 0x1C($v0)
/* 11CE04 800FED14 0040F809 */  jalr       $v0
/* 11CE08 800FED18 02042021 */   addu      $a0, $s0, $a0
/* 11CE0C 800FED1C 02002021 */  addu       $a0, $s0, $zero
/* 11CE10 800FED20 8E22000C */  lw         $v0, 0xC($s1)
/* 11CE14 800FED24 02202821 */  addu       $a1, $s1, $zero
/* 11CE18 800FED28 0C0463C4 */  jal        func_menu_80118F10
/* 11CE1C 800FED2C AE020150 */   sw        $v0, 0x150($s0)
/* 11CE20 800FED30 10400006 */  beqz       $v0, .Lmenu_800FED4C
/* 11CE24 800FED34 00000000 */   nop
/* 11CE28 800FED38 0C03FAE4 */  jal        func_menu_800FEB90
/* 11CE2C 800FED3C 02002021 */   addu      $a0, $s0, $zero
/* 11CE30 800FED40 2604001C */  addiu      $a0, $s0, 0x1C
/* 11CE34 800FED44 0C015962 */  jal        func_80056588
/* 11CE38 800FED48 26250010 */   addiu     $a1, $s1, 0x10
.Lmenu_800FED4C:
/* 11CE3C 800FED4C 8E020014 */  lw         $v0, 0x14($s0)
/* 11CE40 800FED50 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11CE44 800FED54 8FB10014 */  lw         $s1, 0x14($sp)
/* 11CE48 800FED58 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CE4C 800FED5C 03E00008 */  jr         $ra
/* 11CE50 800FED60 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FED64
/* 11CE54 800FED64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11CE58 800FED68 AFB00010 */  sw         $s0, 0x10($sp)
/* 11CE5C 800FED6C 00808021 */  addu       $s0, $a0, $zero
/* 11CE60 800FED70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11CE64 800FED74 8E020014 */  lw         $v0, 0x14($s0)
/* 11CE68 800FED78 10400017 */  beqz       $v0, .Lmenu_800FEDD8
/* 11CE6C 800FED7C 24020001 */   addiu     $v0, $zero, 0x1
/* 11CE70 800FED80 0C01958C */  jal        func_80065630
/* 11CE74 800FED84 2604001C */   addiu     $a0, $s0, 0x1C
/* 11CE78 800FED88 8E050110 */  lw         $a1, 0x110($s0)
/* 11CE7C 800FED8C 10A00007 */  beqz       $a1, .Lmenu_800FEDAC
/* 11CE80 800FED90 00000000 */   nop
/* 11CE84 800FED94 8E030008 */  lw         $v1, 0x8($s0)
/* 11CE88 800FED98 8C620000 */  lw         $v0, 0x0($v1)
/* 11CE8C 800FED9C 84440098 */  lh         $a0, 0x98($v0)
/* 11CE90 800FEDA0 8C42009C */  lw         $v0, 0x9C($v0)
/* 11CE94 800FEDA4 0040F809 */  jalr       $v0
/* 11CE98 800FEDA8 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800FEDAC:
/* 11CE9C 800FEDAC 8E050114 */  lw         $a1, 0x114($s0)
/* 11CEA0 800FEDB0 10A00007 */  beqz       $a1, .Lmenu_800FEDD0
/* 11CEA4 800FEDB4 00000000 */   nop
/* 11CEA8 800FEDB8 8E030008 */  lw         $v1, 0x8($s0)
/* 11CEAC 800FEDBC 8C620000 */  lw         $v0, 0x0($v1)
/* 11CEB0 800FEDC0 844400A0 */  lh         $a0, 0xA0($v0)
/* 11CEB4 800FEDC4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 11CEB8 800FEDC8 0040F809 */  jalr       $v0
/* 11CEBC 800FEDCC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800FEDD0:
/* 11CEC0 800FEDD0 0C0463DD */  jal        func_menu_80118F74
/* 11CEC4 800FEDD4 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800FEDD8:
/* 11CEC8 800FEDD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11CECC 800FEDDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CED0 800FEDE0 03E00008 */  jr         $ra
/* 11CED4 800FEDE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FEDE8
/* 11CED8 800FEDE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11CEDC 800FEDEC AFB00010 */  sw         $s0, 0x10($sp)
/* 11CEE0 800FEDF0 00808021 */  addu       $s0, $a0, $zero
/* 11CEE4 800FEDF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11CEE8 800FEDF8 8E03000C */  lw         $v1, 0xC($s0)
/* 11CEEC 800FEDFC A2050154 */  sb         $a1, 0x154($s0)
/* 11CEF0 800FEE00 8C62012C */  lw         $v0, 0x12C($v1)
/* 11CEF4 800FEE04 844401E8 */  lh         $a0, 0x1E8($v0)
/* 11CEF8 800FEE08 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 11CEFC 800FEE0C 0040F809 */  jalr       $v0
/* 11CF00 800FEE10 00642021 */   addu      $a0, $v1, $a0
/* 11CF04 800FEE14 26050154 */  addiu      $a1, $s0, 0x154
/* 11CF08 800FEE18 8E040150 */  lw         $a0, 0x150($s0)
/* 11CF0C 800FEE1C 8E060110 */  lw         $a2, 0x110($s0)
/* 11CF10 800FEE20 0C037746 */  jal        func_menu_800DDD18
/* 11CF14 800FEE24 00003821 */   addu      $a3, $zero, $zero
/* 11CF18 800FEE28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11CF1C 800FEE2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CF20 800FEE30 03E00008 */  jr         $ra
/* 11CF24 800FEE34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FEE38
/* 11CF28 800FEE38 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11CF2C 800FEE3C AFB00010 */  sw         $s0, 0x10($sp)
/* 11CF30 800FEE40 00808021 */  addu       $s0, $a0, $zero
/* 11CF34 800FEE44 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11CF38 800FEE48 AFB10014 */  sw         $s1, 0x14($sp)
/* 11CF3C 800FEE4C 8E03000C */  lw         $v1, 0xC($s0)
/* 11CF40 800FEE50 A2050155 */  sb         $a1, 0x155($s0)
/* 11CF44 800FEE54 A2060158 */  sb         $a2, 0x158($s0)
/* 11CF48 800FEE58 8C62012C */  lw         $v0, 0x12C($v1)
/* 11CF4C 800FEE5C 844401E8 */  lh         $a0, 0x1E8($v0)
/* 11CF50 800FEE60 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 11CF54 800FEE64 0040F809 */  jalr       $v0
/* 11CF58 800FEE68 00642021 */   addu      $a0, $v1, $a0
/* 11CF5C 800FEE6C 26110154 */  addiu      $s1, $s0, 0x154
/* 11CF60 800FEE70 02202821 */  addu       $a1, $s1, $zero
/* 11CF64 800FEE74 8E040150 */  lw         $a0, 0x150($s0)
/* 11CF68 800FEE78 8E060110 */  lw         $a2, 0x110($s0)
/* 11CF6C 800FEE7C 0C037746 */  jal        func_menu_800DDD18
/* 11CF70 800FEE80 00003821 */   addu      $a3, $zero, $zero
/* 11CF74 800FEE84 00402821 */  addu       $a1, $v0, $zero
/* 11CF78 800FEE88 8E040150 */  lw         $a0, 0x150($s0)
/* 11CF7C 800FEE8C 0C0377BF */  jal        func_menu_800DDEFC
/* 11CF80 800FEE90 02203021 */   addu      $a2, $s1, $zero
/* 11CF84 800FEE94 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11CF88 800FEE98 8FB10014 */  lw         $s1, 0x14($sp)
/* 11CF8C 800FEE9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CF90 800FEEA0 03E00008 */  jr         $ra
/* 11CF94 800FEEA4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FEEA8
/* 11CF98 800FEEA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11CF9C 800FEEAC AFB00010 */  sw         $s0, 0x10($sp)
/* 11CFA0 800FEEB0 00808021 */  addu       $s0, $a0, $zero
/* 11CFA4 800FEEB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11CFA8 800FEEB8 8E03000C */  lw         $v1, 0xC($s0)
/* 11CFAC 800FEEBC A2050156 */  sb         $a1, 0x156($s0)
/* 11CFB0 800FEEC0 8C62012C */  lw         $v0, 0x12C($v1)
/* 11CFB4 800FEEC4 844401E8 */  lh         $a0, 0x1E8($v0)
/* 11CFB8 800FEEC8 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 11CFBC 800FEECC 0040F809 */  jalr       $v0
/* 11CFC0 800FEED0 00642021 */   addu      $a0, $v1, $a0
/* 11CFC4 800FEED4 26050154 */  addiu      $a1, $s0, 0x154
/* 11CFC8 800FEED8 8E040150 */  lw         $a0, 0x150($s0)
/* 11CFCC 800FEEDC 8E060110 */  lw         $a2, 0x110($s0)
/* 11CFD0 800FEEE0 0C037746 */  jal        func_menu_800DDD18
/* 11CFD4 800FEEE4 00003821 */   addu      $a3, $zero, $zero
/* 11CFD8 800FEEE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11CFDC 800FEEEC 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CFE0 800FEEF0 03E00008 */  jr         $ra
/* 11CFE4 800FEEF4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FEEF8
/* 11CFE8 800FEEF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11CFEC 800FEEFC AFB00010 */  sw         $s0, 0x10($sp)
/* 11CFF0 800FEF00 00808021 */  addu       $s0, $a0, $zero
/* 11CFF4 800FEF04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11CFF8 800FEF08 8E03000C */  lw         $v1, 0xC($s0)
/* 11CFFC 800FEF0C A2050157 */  sb         $a1, 0x157($s0)
/* 11D000 800FEF10 8C62012C */  lw         $v0, 0x12C($v1)
/* 11D004 800FEF14 844401E8 */  lh         $a0, 0x1E8($v0)
/* 11D008 800FEF18 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 11D00C 800FEF1C 0040F809 */  jalr       $v0
/* 11D010 800FEF20 00642021 */   addu      $a0, $v1, $a0
/* 11D014 800FEF24 26050154 */  addiu      $a1, $s0, 0x154
/* 11D018 800FEF28 8E040150 */  lw         $a0, 0x150($s0)
/* 11D01C 800FEF2C 8E060110 */  lw         $a2, 0x110($s0)
/* 11D020 800FEF30 0C037746 */  jal        func_menu_800DDD18
/* 11D024 800FEF34 00003821 */   addu      $a3, $zero, $zero
/* 11D028 800FEF38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11D02C 800FEF3C 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D030 800FEF40 03E00008 */  jr         $ra
/* 11D034 800FEF44 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FEF48
/* 11D038 800FEF48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11D03C 800FEF4C AFB00010 */  sw         $s0, 0x10($sp)
/* 11D040 800FEF50 00808021 */  addu       $s0, $a0, $zero
/* 11D044 800FEF54 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11D048 800FEF58 AFB10014 */  sw         $s1, 0x14($sp)
/* 11D04C 800FEF5C 88A80000 */  lwl        $t0, 0x0($a1)
/* 11D050 800FEF60 98A80003 */  lwr        $t0, 0x3($a1)
/* 11D054 800FEF64 80A90004 */  lb         $t1, 0x4($a1)
/* 11D058 800FEF68 AA080154 */  swl        $t0, 0x154($s0)
/* 11D05C 800FEF6C BA080157 */  swr        $t0, 0x157($s0)
/* 11D060 800FEF70 A2090158 */  sb         $t1, 0x158($s0)
/* 11D064 800FEF74 8E02000C */  lw         $v0, 0xC($s0)
/* 11D068 800FEF78 8C43012C */  lw         $v1, 0x12C($v0)
/* 11D06C 800FEF7C 846401E8 */  lh         $a0, 0x1E8($v1)
/* 11D070 800FEF80 00442021 */  addu       $a0, $v0, $a0
/* 11D074 800FEF84 8C6201EC */  lw         $v0, 0x1EC($v1)
/* 11D078 800FEF88 0040F809 */  jalr       $v0
/* 11D07C 800FEF8C 26110154 */   addiu     $s1, $s0, 0x154
/* 11D080 800FEF90 02202821 */  addu       $a1, $s1, $zero
/* 11D084 800FEF94 8E040150 */  lw         $a0, 0x150($s0)
/* 11D088 800FEF98 8E060110 */  lw         $a2, 0x110($s0)
/* 11D08C 800FEF9C 0C037746 */  jal        func_menu_800DDD18
/* 11D090 800FEFA0 00003821 */   addu      $a3, $zero, $zero
/* 11D094 800FEFA4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11D098 800FEFA8 8FB10014 */  lw         $s1, 0x14($sp)
/* 11D09C 800FEFAC 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D0A0 800FEFB0 03E00008 */  jr         $ra
/* 11D0A4 800FEFB4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FEFB8
/* 11D0A8 800FEFB8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11D0AC 800FEFBC AFB10024 */  sw         $s1, 0x24($sp)
/* 11D0B0 800FEFC0 00808821 */  addu       $s1, $a0, $zero
/* 11D0B4 800FEFC4 AFB00020 */  sw         $s0, 0x20($sp)
/* 11D0B8 800FEFC8 2630001C */  addiu      $s0, $s1, 0x1C
/* 11D0BC 800FEFCC 02002021 */  addu       $a0, $s0, $zero
/* 11D0C0 800FEFD0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 11D0C4 800FEFD4 0C01595B */  jal        func_8005656C
/* 11D0C8 800FEFD8 27A50010 */   addiu     $a1, $sp, 0x10
/* 11D0CC 800FEFDC 02002021 */  addu       $a0, $s0, $zero
/* 11D0D0 800FEFE0 0C015962 */  jal        func_80056588
/* 11D0D4 800FEFE4 27A50010 */   addiu     $a1, $sp, 0x10
/* 11D0D8 800FEFE8 8E23000C */  lw         $v1, 0xC($s1)
/* 11D0DC 800FEFEC 8C62012C */  lw         $v0, 0x12C($v1)
/* 11D0E0 800FEFF0 02002821 */  addu       $a1, $s0, $zero
/* 11D0E4 800FEFF4 84440118 */  lh         $a0, 0x118($v0)
/* 11D0E8 800FEFF8 8C42011C */  lw         $v0, 0x11C($v0)
/* 11D0EC 800FEFFC 0040F809 */  jalr       $v0
/* 11D0F0 800FF000 00642021 */   addu      $a0, $v1, $a0
/* 11D0F4 800FF004 8FBF0028 */  lw         $ra, 0x28($sp)
/* 11D0F8 800FF008 8FB10024 */  lw         $s1, 0x24($sp)
/* 11D0FC 800FF00C 8FB00020 */  lw         $s0, 0x20($sp)
/* 11D100 800FF010 24020001 */  addiu      $v0, $zero, 0x1
/* 11D104 800FF014 03E00008 */  jr         $ra
/* 11D108 800FF018 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FF01C
/* 11D10C 800FF01C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D110 800FF020 AFBF0010 */  sw         $ra, 0x10($sp)
/* 11D114 800FF024 0C0197F5 */  jal        func_80065FD4
/* 11D118 800FF028 2484001C */   addiu     $a0, $a0, 0x1C
/* 11D11C 800FF02C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 11D120 800FF030 24020001 */  addiu      $v0, $zero, 0x1
/* 11D124 800FF034 03E00008 */  jr         $ra
/* 11D128 800FF038 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FF03C
/* 11D12C 800FF03C 03E00008 */  jr         $ra
/* 11D130 800FF040 2482001C */   addiu     $v0, $a0, 0x1C

glabel func_menu_800FF044
/* 11D134 800FF044 03E00008 */  jr         $ra
/* 11D138 800FF048 24820118 */   addiu     $v0, $a0, 0x118
