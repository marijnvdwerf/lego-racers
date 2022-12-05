.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8011FB40
/* D5F00 8011FB40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D5F04 8011FB44 AFB00010 */  sw         $s0, 0x10($sp)
/* D5F08 8011FB48 AFBF0014 */  sw         $ra, 0x14($sp)
/* D5F0C 8011FB4C 0C0152E4 */  jal        func_80054B90
/* D5F10 8011FB50 00808021 */   addu      $s0, $a0, $zero
/* D5F14 8011FB54 02001021 */  addu       $v0, $s0, $zero
/* D5F18 8011FB58 AC40000C */  sw         $zero, 0xC($v0)
/* D5F1C 8011FB5C AC400010 */  sw         $zero, 0x10($v0)
/* D5F20 8011FB60 8FBF0014 */  lw         $ra, 0x14($sp)
/* D5F24 8011FB64 8FB00010 */  lw         $s0, 0x10($sp)
/* D5F28 8011FB68 03E00008 */  jr         $ra
/* D5F2C 8011FB6C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011FB70
/* D5F30 8011FB70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D5F34 8011FB74 AFB10014 */  sw         $s1, 0x14($sp)
/* D5F38 8011FB78 00808821 */  addu       $s1, $a0, $zero
/* D5F3C 8011FB7C AFB00010 */  sw         $s0, 0x10($sp)
/* D5F40 8011FB80 AFBF0018 */  sw         $ra, 0x18($sp)
/* D5F44 8011FB84 0C047EF0 */  jal        func_race_8011FBC0
/* D5F48 8011FB88 00A08021 */   addu      $s0, $a1, $zero
/* D5F4C 8011FB8C 02202021 */  addu       $a0, $s1, $zero
/* D5F50 8011FB90 0C0152E9 */  jal        func_80054BA4
/* D5F54 8011FB94 24050002 */   addiu     $a1, $zero, 0x2
/* D5F58 8011FB98 32100001 */  andi       $s0, $s0, 0x1
/* D5F5C 8011FB9C 12000003 */  beqz       $s0, .Lrace_8011FBAC
/* D5F60 8011FBA0 00000000 */   nop
/* D5F64 8011FBA4 0C01FB5C */  jal        func_8007ED70
/* D5F68 8011FBA8 02202021 */   addu      $a0, $s1, $zero
.Lrace_8011FBAC:
/* D5F6C 8011FBAC 8FBF0018 */  lw         $ra, 0x18($sp)
/* D5F70 8011FBB0 8FB10014 */  lw         $s1, 0x14($sp)
/* D5F74 8011FBB4 8FB00010 */  lw         $s0, 0x10($sp)
/* D5F78 8011FBB8 03E00008 */  jr         $ra
/* D5F7C 8011FBBC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011FBC0
/* D5F80 8011FBC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D5F84 8011FBC4 AFB00010 */  sw         $s0, 0x10($sp)
/* D5F88 8011FBC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D5F8C 8011FBCC 0C0153DC */  jal        func_80054F70
/* D5F90 8011FBD0 00808021 */   addu      $s0, $a0, $zero
/* D5F94 8011FBD4 AE00000C */  sw         $zero, 0xC($s0)
/* D5F98 8011FBD8 AE000010 */  sw         $zero, 0x10($s0)
/* D5F9C 8011FBDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D5FA0 8011FBE0 8FB00010 */  lw         $s0, 0x10($sp)
/* D5FA4 8011FBE4 03E00008 */  jr         $ra
/* D5FA8 8011FBE8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011FBEC
/* D5FAC 8011FBEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D5FB0 8011FBF0 AFB00010 */  sw         $s0, 0x10($sp)
/* D5FB4 8011FBF4 00808021 */  addu       $s0, $a0, $zero
/* D5FB8 8011FBF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* D5FBC 8011FBFC AFB10014 */  sw         $s1, 0x14($sp)
/* D5FC0 8011FC00 8E020010 */  lw         $v0, 0x10($s0)
/* D5FC4 8011FC04 10400003 */  beqz       $v0, .Lrace_8011FC14
/* D5FC8 8011FC08 00A08821 */   addu      $s1, $a1, $zero
/* D5FCC 8011FC0C 0C047EF0 */  jal        func_race_8011FBC0
/* D5FD0 8011FC10 00000000 */   nop
.Lrace_8011FC14:
/* D5FD4 8011FC14 02002021 */  addu       $a0, $s0, $zero
/* D5FD8 8011FC18 02202821 */  addu       $a1, $s1, $zero
/* D5FDC 8011FC1C 0C0152FA */  jal        func_80054BE8
/* D5FE0 8011FC20 24060001 */   addiu     $a2, $zero, 0x1
/* D5FE4 8011FC24 24020001 */  addiu      $v0, $zero, 0x1
/* D5FE8 8011FC28 AE020010 */  sw         $v0, 0x10($s0)
/* D5FEC 8011FC2C 8FBF0018 */  lw         $ra, 0x18($sp)
/* D5FF0 8011FC30 8FB10014 */  lw         $s1, 0x14($sp)
/* D5FF4 8011FC34 8FB00010 */  lw         $s0, 0x10($sp)
/* D5FF8 8011FC38 03E00008 */  jr         $ra
/* D5FFC 8011FC3C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011FC40
/* D6000 8011FC40 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* D6004 8011FC44 AFB5004C */  sw         $s5, 0x4C($sp)
/* D6008 8011FC48 0080A821 */  addu       $s5, $a0, $zero
/* D600C 8011FC4C AFB30044 */  sw         $s3, 0x44($sp)
/* D6010 8011FC50 00A09821 */  addu       $s3, $a1, $zero
/* D6014 8011FC54 00002821 */  addu       $a1, $zero, $zero
/* D6018 8011FC58 AFB20040 */  sw         $s2, 0x40($sp)
/* D601C 8011FC5C 24120001 */  addiu      $s2, $zero, 0x1
/* D6020 8011FC60 AFBE0058 */  sw         $fp, 0x58($sp)
/* D6024 8011FC64 00E0F021 */  addu       $fp, $a3, $zero
/* D6028 8011FC68 AFBF005C */  sw         $ra, 0x5C($sp)
/* D602C 8011FC6C AFB70054 */  sw         $s7, 0x54($sp)
/* D6030 8011FC70 AFB60050 */  sw         $s6, 0x50($sp)
/* D6034 8011FC74 AFB40048 */  sw         $s4, 0x48($sp)
/* D6038 8011FC78 AFB1003C */  sw         $s1, 0x3C($sp)
/* D603C 8011FC7C AFB00038 */  sw         $s0, 0x38($sp)
/* D6040 8011FC80 AEA6000C */  sw         $a2, 0xC($s5)
/* D6044 8011FC84 8E620024 */  lw         $v0, 0x24($s3)
/* D6048 8011FC88 8FB40074 */  lw         $s4, 0x74($sp)
/* D604C 8011FC8C 8FB70070 */  lw         $s7, 0x70($sp)
/* D6050 8011FC90 8FB60078 */  lw         $s6, 0x78($sp)
/* D6054 8011FC94 8E700078 */  lw         $s0, 0x78($s3)
/* D6058 8011FC98 844400B8 */  lh         $a0, 0xB8($v0)
/* D605C 8011FC9C 8C4200BC */  lw         $v0, 0xBC($v0)
/* D6060 8011FCA0 0040F809 */  jalr       $v0
/* D6064 8011FCA4 02642021 */   addu      $a0, $s3, $a0
/* D6068 8011FCA8 8E6700A8 */  lw         $a3, 0xA8($s3)
/* D606C 8011FCAC C6600084 */  lwc1       $f0, 0x84($s3)
/* D6070 8011FCB0 02002821 */  addu       $a1, $s0, $zero
/* D6074 8011FCB4 E7A00010 */  swc1       $f0, 0x10($sp)
/* D6078 8011FCB8 8EA4000C */  lw         $a0, 0xC($s5)
/* D607C 8011FCBC 0C01956B */  jal        func_800655AC
/* D6080 8011FCC0 00403021 */   addu      $a2, $v0, $zero
/* D6084 8011FCC4 26700004 */  addiu      $s0, $s3, 0x4
.Lrace_8011FCC8:
/* D6088 8011FCC8 2E420003 */  sltiu      $v0, $s2, 0x3
/* D608C 8011FCCC 10400013 */  beqz       $v0, .Lrace_8011FD1C
/* D6090 8011FCD0 00000000 */   nop
/* D6094 8011FCD4 8E110078 */  lw         $s1, 0x78($s0)
/* D6098 8011FCD8 1220000D */  beqz       $s1, .Lrace_8011FD10
/* D609C 8011FCDC 02402821 */   addu      $a1, $s2, $zero
/* D60A0 8011FCE0 8E620024 */  lw         $v0, 0x24($s3)
/* D60A4 8011FCE4 844400B8 */  lh         $a0, 0xB8($v0)
/* D60A8 8011FCE8 8C4200BC */  lw         $v0, 0xBC($v0)
/* D60AC 8011FCEC 0040F809 */  jalr       $v0
/* D60B0 8011FCF0 02642021 */   addu      $a0, $s3, $a0
/* D60B4 8011FCF4 8E0700A8 */  lw         $a3, 0xA8($s0)
/* D60B8 8011FCF8 C6000084 */  lwc1       $f0, 0x84($s0)
/* D60BC 8011FCFC 02202821 */  addu       $a1, $s1, $zero
/* D60C0 8011FD00 E7A00010 */  swc1       $f0, 0x10($sp)
/* D60C4 8011FD04 8EA4000C */  lw         $a0, 0xC($s5)
/* D60C8 8011FD08 0C0196C4 */  jal        func_80065B10
/* D60CC 8011FD0C 00403021 */   addu      $a2, $v0, $zero
.Lrace_8011FD10:
/* D60D0 8011FD10 26100004 */  addiu      $s0, $s0, 0x4
/* D60D4 8011FD14 08047F32 */  j          .Lrace_8011FCC8
/* D60D8 8011FD18 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_8011FD1C:
/* D60DC 8011FD1C 8E6200A8 */  lw         $v0, 0xA8($s3)
/* D60E0 8011FD20 8C420030 */  lw         $v0, 0x30($v0)
/* D60E4 8011FD24 0282001B */  divu       $zero, $s4, $v0
/* D60E8 8011FD28 14400002 */  bnez       $v0, .Lrace_8011FD34
/* D60EC 8011FD2C 00000000 */   nop
/* D60F0 8011FD30 0007000D */  break      7
.Lrace_8011FD34:
/* D60F4 8011FD34 0000A010 */  mfhi       $s4
/* D60F8 8011FD38 8EA4000C */  lw         $a0, 0xC($s5)
/* D60FC 8011FD3C 0C01971D */  jal        func_80065C74
/* D6100 8011FD40 02802821 */   addu      $a1, $s4, $zero
/* D6104 8011FD44 8EA4000C */  lw         $a0, 0xC($s5)
/* D6108 8011FD48 8C82005C */  lw         $v0, 0x5C($a0)
/* D610C 8011FD4C 3C030001 */  lui        $v1, (0x10000 >> 16)
/* D6110 8011FD50 00431025 */  or         $v0, $v0, $v1
/* D6114 8011FD54 AC82005C */  sw         $v0, 0x5C($a0)
/* D6118 8011FD58 8EA4000C */  lw         $a0, 0xC($s5)
/* D611C 8011FD5C 3C03FFFB */  lui        $v1, (0xFFFBFFFF >> 16)
/* D6120 8011FD60 8C82005C */  lw         $v0, 0x5C($a0)
/* D6124 8011FD64 3463FFFF */  ori        $v1, $v1, (0xFFFBFFFF & 0xFFFF)
/* D6128 8011FD68 00431024 */  and        $v0, $v0, $v1
/* D612C 8011FD6C 12C00007 */  beqz       $s6, .Lrace_8011FD8C
/* D6130 8011FD70 AC82005C */   sw        $v0, 0x5C($a0)
/* D6134 8011FD74 02A02021 */  addu       $a0, $s5, $zero
/* D6138 8011FD78 00002821 */  addu       $a1, $zero, $zero
/* D613C 8011FD7C 0C01543D */  jal        func_800550F4
/* D6140 8011FD80 02C03021 */   addu      $a2, $s6, $zero
/* D6144 8011FD84 8EA2000C */  lw         $v0, 0xC($s5)
/* D6148 8011FD88 AC55006C */  sw         $s5, 0x6C($v0)
.Lrace_8011FD8C:
/* D614C 8011FD8C 8EE80000 */  lw         $t0, 0x0($s7)
/* D6150 8011FD90 8EE90004 */  lw         $t1, 0x4($s7)
/* D6154 8011FD94 8EEA0008 */  lw         $t2, 0x8($s7)
/* D6158 8011FD98 AFA80018 */  sw         $t0, 0x18($sp)
/* D615C 8011FD9C AFA9001C */  sw         $t1, 0x1C($sp)
/* D6160 8011FDA0 AFAA0020 */  sw         $t2, 0x20($sp)
/* D6164 8011FDA4 C7A00018 */  lwc1       $f0, 0x18($sp)
/* D6168 8011FDA8 44801000 */  mtc1       $zero, $f2
/* D616C 8011FDAC 46020032 */  c.eq.s     $f0, $f2
/* D6170 8011FDB0 00000000 */  nop
/* D6174 8011FDB4 4500000E */  bc1f       .Lrace_8011FDF0
/* D6178 8011FDB8 00000000 */   nop
/* D617C 8011FDBC C7A0001C */  lwc1       $f0, 0x1C($sp)
/* D6180 8011FDC0 46020032 */  c.eq.s     $f0, $f2
/* D6184 8011FDC4 00000000 */  nop
/* D6188 8011FDC8 45000009 */  bc1f       .Lrace_8011FDF0
/* D618C 8011FDCC 00000000 */   nop
/* D6190 8011FDD0 C7A00020 */  lwc1       $f0, 0x20($sp)
/* D6194 8011FDD4 46020032 */  c.eq.s     $f0, $f2
/* D6198 8011FDD8 00000000 */  nop
/* D619C 8011FDDC 45000004 */  bc1f       .Lrace_8011FDF0
/* D61A0 8011FDE0 00000000 */   nop
/* D61A4 8011FDE4 3C01800D */  lui        $at, %hi(D_race_800CE520)
/* D61A8 8011FDE8 C420E520 */  lwc1       $f0, %lo(D_race_800CE520)($at)
/* D61AC 8011FDEC E7A00018 */  swc1       $f0, 0x18($sp)
.Lrace_8011FDF0:
/* D61B0 8011FDF0 3C01800D */  lui        $at, %hi(D_race_800CE524)
/* D61B4 8011FDF4 C420E524 */  lwc1       $f0, %lo(D_race_800CE524)($at)
/* D61B8 8011FDF8 AFA00028 */  sw         $zero, 0x28($sp)
/* D61BC 8011FDFC AFA0002C */  sw         $zero, 0x2C($sp)
/* D61C0 8011FE00 E7A00030 */  swc1       $f0, 0x30($sp)
/* D61C4 8011FE04 8EA3000C */  lw         $v1, 0xC($s5)
/* D61C8 8011FE08 8C620024 */  lw         $v0, 0x24($v1)
/* D61CC 8011FE0C 03C02821 */  addu       $a1, $fp, $zero
/* D61D0 8011FE10 84440018 */  lh         $a0, 0x18($v0)
/* D61D4 8011FE14 8C42001C */  lw         $v0, 0x1C($v0)
/* D61D8 8011FE18 0040F809 */  jalr       $v0
/* D61DC 8011FE1C 00642021 */   addu      $a0, $v1, $a0
/* D61E0 8011FE20 8EA3000C */  lw         $v1, 0xC($s5)
/* D61E4 8011FE24 02E02821 */  addu       $a1, $s7, $zero
/* D61E8 8011FE28 8C620024 */  lw         $v0, 0x24($v1)
/* D61EC 8011FE2C 27A60028 */  addiu      $a2, $sp, 0x28
/* D61F0 8011FE30 84440080 */  lh         $a0, 0x80($v0)
/* D61F4 8011FE34 8C420084 */  lw         $v0, 0x84($v0)
/* D61F8 8011FE38 0040F809 */  jalr       $v0
/* D61FC 8011FE3C 00642021 */   addu      $a0, $v1, $a0
/* D6200 8011FE40 24020002 */  addiu      $v0, $zero, 0x2
/* D6204 8011FE44 AEA20010 */  sw         $v0, 0x10($s5)
/* D6208 8011FE48 8FBF005C */  lw         $ra, 0x5C($sp)
/* D620C 8011FE4C 8FBE0058 */  lw         $fp, 0x58($sp)
/* D6210 8011FE50 8FB70054 */  lw         $s7, 0x54($sp)
/* D6214 8011FE54 8FB60050 */  lw         $s6, 0x50($sp)
/* D6218 8011FE58 8FB5004C */  lw         $s5, 0x4C($sp)
/* D621C 8011FE5C 8FB40048 */  lw         $s4, 0x48($sp)
/* D6220 8011FE60 8FB30044 */  lw         $s3, 0x44($sp)
/* D6224 8011FE64 8FB20040 */  lw         $s2, 0x40($sp)
/* D6228 8011FE68 8FB1003C */  lw         $s1, 0x3C($sp)
/* D622C 8011FE6C 8FB00038 */  lw         $s0, 0x38($sp)
/* D6230 8011FE70 03E00008 */  jr         $ra
/* D6234 8011FE74 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_race_8011FE78
/* D6238 8011FE78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D623C 8011FE7C AFB00010 */  sw         $s0, 0x10($sp)
/* D6240 8011FE80 00808021 */  addu       $s0, $a0, $zero
/* D6244 8011FE84 AFBF0014 */  sw         $ra, 0x14($sp)
/* D6248 8011FE88 8E030010 */  lw         $v1, 0x10($s0)
/* D624C 8011FE8C 24020002 */  addiu      $v0, $zero, 0x2
/* D6250 8011FE90 14620015 */  bne        $v1, $v0, .Lrace_8011FEE8
/* D6254 8011FE94 00000000 */   nop
/* D6258 8011FE98 8E02000C */  lw         $v0, 0xC($s0)
/* D625C 8011FE9C 8C430024 */  lw         $v1, 0x24($v0)
/* D6260 8011FEA0 84640020 */  lh         $a0, 0x20($v1)
/* D6264 8011FEA4 00442021 */  addu       $a0, $v0, $a0
/* D6268 8011FEA8 8C620024 */  lw         $v0, 0x24($v1)
/* D626C 8011FEAC 0040F809 */  jalr       $v0
/* D6270 8011FEB0 00000000 */   nop
/* D6274 8011FEB4 8E04000C */  lw         $a0, 0xC($s0)
/* D6278 8011FEB8 0C0199BD */  jal        func_800666F4
/* D627C 8011FEBC 00000000 */   nop
/* D6280 8011FEC0 10400009 */  beqz       $v0, .Lrace_8011FEE8
/* D6284 8011FEC4 00000000 */   nop
/* D6288 8011FEC8 8E03000C */  lw         $v1, 0xC($s0)
/* D628C 8011FECC 8C620024 */  lw         $v0, 0x24($v1)
/* D6290 8011FED0 844400B0 */  lh         $a0, 0xB0($v0)
/* D6294 8011FED4 8C4200B4 */  lw         $v0, 0xB4($v0)
/* D6298 8011FED8 0040F809 */  jalr       $v0
/* D629C 8011FEDC 00642021 */   addu      $a0, $v1, $a0
/* D62A0 8011FEE0 24020003 */  addiu      $v0, $zero, 0x3
/* D62A4 8011FEE4 AE020010 */  sw         $v0, 0x10($s0)
.Lrace_8011FEE8:
/* D62A8 8011FEE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* D62AC 8011FEEC 8FB00010 */  lw         $s0, 0x10($sp)
/* D62B0 8011FEF0 03E00008 */  jr         $ra
/* D62B4 8011FEF4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011FEF8
/* D62B8 8011FEF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D62BC 8011FEFC 00803021 */  addu       $a2, $a0, $zero
/* D62C0 8011FF00 AFBF0010 */  sw         $ra, 0x10($sp)
/* D62C4 8011FF04 8CC30010 */  lw         $v1, 0x10($a2)
/* D62C8 8011FF08 24020002 */  addiu      $v0, $zero, 0x2
/* D62CC 8011FF0C 14620007 */  bne        $v1, $v0, .Lrace_8011FF2C
/* D62D0 8011FF10 00A03821 */   addu      $a3, $a1, $zero
/* D62D4 8011FF14 8CE2012C */  lw         $v0, 0x12C($a3)
/* D62D8 8011FF18 8CC5000C */  lw         $a1, 0xC($a2)
/* D62DC 8011FF1C 84440118 */  lh         $a0, 0x118($v0)
/* D62E0 8011FF20 8C42011C */  lw         $v0, 0x11C($v0)
/* D62E4 8011FF24 0040F809 */  jalr       $v0
/* D62E8 8011FF28 00E42021 */   addu      $a0, $a3, $a0
.Lrace_8011FF2C:
/* D62EC 8011FF2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* D62F0 8011FF30 03E00008 */  jr         $ra
/* D62F4 8011FF34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011FF38
/* D62F8 8011FF38 24020001 */  addiu      $v0, $zero, 0x1
/* D62FC 8011FF3C AC80000C */  sw         $zero, 0xC($a0)
/* D6300 8011FF40 03E00008 */  jr         $ra
/* D6304 8011FF44 AC820010 */   sw        $v0, 0x10($a0)
