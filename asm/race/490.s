.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F3C10
/* A9FD0 800F3C10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A9FD4 800F3C14 AFB00010 */  sw         $s0, 0x10($sp)
/* A9FD8 800F3C18 00808021 */  addu       $s0, $a0, $zero
/* A9FDC 800F3C1C 26040008 */  addiu      $a0, $s0, 0x8
/* A9FE0 800F3C20 3C02800D */  lui        $v0, %hi(D_race_800CCCE0)
/* A9FE4 800F3C24 2442CCE0 */  addiu      $v0, $v0, %lo(D_race_800CCCE0)
/* A9FE8 800F3C28 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9FEC 800F3C2C 0C0164A4 */  jal        func_80059290
/* A9FF0 800F3C30 AE020000 */   sw        $v0, 0x0($s0)
/* A9FF4 800F3C34 0C016038 */  jal        func_800580E0
/* A9FF8 800F3C38 26040034 */   addiu     $a0, $s0, 0x34
/* A9FFC 800F3C3C 0C019FC8 */  jal        func_80067F20
/* AA000 800F3C40 260400C8 */   addiu     $a0, $s0, 0xC8
/* AA004 800F3C44 0C039AC0 */  jal        func_race_800E6B00
/* AA008 800F3C48 260400E4 */   addiu     $a0, $s0, 0xE4
/* AA00C 800F3C4C 0C0152E4 */  jal        func_80054B90
/* AA010 800F3C50 2604021C */   addiu     $a0, $s0, 0x21C
/* AA014 800F3C54 3C01800D */  lui        $at, %hi(D_race_800CCC40)
/* AA018 800F3C58 C422CC40 */  lwc1       $f2, %lo(D_race_800CCC40)($at)
/* AA01C 800F3C5C 3C01800D */  lui        $at, %hi(D_race_800CCC44)
/* AA020 800F3C60 C420CC44 */  lwc1       $f0, %lo(D_race_800CCC44)($at)
/* AA024 800F3C64 3C01800D */  lui        $at, %hi(D_race_800CCC48)
/* AA028 800F3C68 C424CC48 */  lwc1       $f4, %lo(D_race_800CCC48)($at)
/* AA02C 800F3C6C 02001021 */  addu       $v0, $s0, $zero
/* AA030 800F3C70 AC400004 */  sw         $zero, 0x4($v0)
/* AA034 800F3C74 AC400030 */  sw         $zero, 0x30($v0)
/* AA038 800F3C78 AC4000C4 */  sw         $zero, 0xC4($v0)
/* AA03C 800F3C7C AC400218 */  sw         $zero, 0x218($v0)
/* AA040 800F3C80 AC400228 */  sw         $zero, 0x228($v0)
/* AA044 800F3C84 AC40022C */  sw         $zero, 0x22C($v0)
/* AA048 800F3C88 AC400230 */  sw         $zero, 0x230($v0)
/* AA04C 800F3C8C AC400234 */  sw         $zero, 0x234($v0)
/* AA050 800F3C90 AC400238 */  sw         $zero, 0x238($v0)
/* AA054 800F3C94 AC40023C */  sw         $zero, 0x23C($v0)
/* AA058 800F3C98 AC400240 */  sw         $zero, 0x240($v0)
/* AA05C 800F3C9C AC400248 */  sw         $zero, 0x248($v0)
/* AA060 800F3CA0 AC40024C */  sw         $zero, 0x24C($v0)
/* AA064 800F3CA4 AC400254 */  sw         $zero, 0x254($v0)
/* AA068 800F3CA8 AC400258 */  sw         $zero, 0x258($v0)
/* AA06C 800F3CAC AC400250 */  sw         $zero, 0x250($v0)
/* AA070 800F3CB0 AC400284 */  sw         $zero, 0x284($v0)
/* AA074 800F3CB4 AC400280 */  sw         $zero, 0x280($v0)
/* AA078 800F3CB8 AC400244 */  sw         $zero, 0x244($v0)
/* AA07C 800F3CBC AC400264 */  sw         $zero, 0x264($v0)
/* AA080 800F3CC0 AC400268 */  sw         $zero, 0x268($v0)
/* AA084 800F3CC4 AC40026C */  sw         $zero, 0x26C($v0)
/* AA088 800F3CC8 E442025C */  swc1       $f2, 0x25C($v0)
/* AA08C 800F3CCC E4400270 */  swc1       $f0, 0x270($v0)
/* AA090 800F3CD0 E4400274 */  swc1       $f0, 0x274($v0)
/* AA094 800F3CD4 E4400278 */  swc1       $f0, 0x278($v0)
/* AA098 800F3CD8 E440027C */  swc1       $f0, 0x27C($v0)
/* AA09C 800F3CDC E4440260 */  swc1       $f4, 0x260($v0)
/* AA0A0 800F3CE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA0A4 800F3CE4 8FB00010 */  lw         $s0, 0x10($sp)
/* AA0A8 800F3CE8 03E00008 */  jr         $ra
/* AA0AC 800F3CEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F3CF0
/* AA0B0 800F3CF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AA0B4 800F3CF4 AFB10014 */  sw         $s1, 0x14($sp)
/* AA0B8 800F3CF8 00808821 */  addu       $s1, $a0, $zero
/* AA0BC 800F3CFC AFB00010 */  sw         $s0, 0x10($sp)
/* AA0C0 800F3D00 00A08021 */  addu       $s0, $a1, $zero
/* AA0C4 800F3D04 3C02800D */  lui        $v0, %hi(D_race_800CCCE0)
/* AA0C8 800F3D08 2442CCE0 */  addiu      $v0, $v0, %lo(D_race_800CCCE0)
/* AA0CC 800F3D0C AFBF0018 */  sw         $ra, 0x18($sp)
/* AA0D0 800F3D10 0C03D010 */  jal        func_race_800F4040
/* AA0D4 800F3D14 AE220000 */   sw        $v0, 0x0($s1)
/* AA0D8 800F3D18 2624021C */  addiu      $a0, $s1, 0x21C
/* AA0DC 800F3D1C 0C0152E9 */  jal        func_80054BA4
/* AA0E0 800F3D20 24050002 */   addiu     $a1, $zero, 0x2
/* AA0E4 800F3D24 262400E4 */  addiu      $a0, $s1, 0xE4
/* AA0E8 800F3D28 0C039AFD */  jal        func_race_800E6BF4
/* AA0EC 800F3D2C 24050002 */   addiu     $a1, $zero, 0x2
/* AA0F0 800F3D30 32100001 */  andi       $s0, $s0, 0x1
/* AA0F4 800F3D34 12000003 */  beqz       $s0, .Lrace_800F3D44
/* AA0F8 800F3D38 00000000 */   nop
/* AA0FC 800F3D3C 0C01FB5C */  jal        func_8007ED70
/* AA100 800F3D40 02202021 */   addu      $a0, $s1, $zero
.Lrace_800F3D44:
/* AA104 800F3D44 8FBF0018 */  lw         $ra, 0x18($sp)
/* AA108 800F3D48 8FB10014 */  lw         $s1, 0x14($sp)
/* AA10C 800F3D4C 8FB00010 */  lw         $s0, 0x10($sp)
/* AA110 800F3D50 03E00008 */  jr         $ra
/* AA114 800F3D54 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F3D58
/* AA118 800F3D58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AA11C 800F3D5C AFB20020 */  sw         $s2, 0x20($sp)
/* AA120 800F3D60 00809021 */  addu       $s2, $a0, $zero
/* AA124 800F3D64 AFBF0024 */  sw         $ra, 0x24($sp)
/* AA128 800F3D68 AFB1001C */  sw         $s1, 0x1C($sp)
/* AA12C 800F3D6C AFB00018 */  sw         $s0, 0x18($sp)
/* AA130 800F3D70 8E420004 */  lw         $v0, 0x4($s2)
/* AA134 800F3D74 10400003 */  beqz       $v0, .Lrace_800F3D84
/* AA138 800F3D78 00A08821 */   addu      $s1, $a1, $zero
/* AA13C 800F3D7C 0C03D010 */  jal        func_race_800F4040
/* AA140 800F3D80 00000000 */   nop
.Lrace_800F3D84:
/* AA144 800F3D84 8E220000 */  lw         $v0, 0x0($s1)
/* AA148 800F3D88 3C01800D */  lui        $at, %hi(D_race_800CCC4C)
/* AA14C 800F3D8C C428CC4C */  lwc1       $f8, %lo(D_race_800CCC4C)($at)
/* AA150 800F3D90 AE420030 */  sw         $v0, 0x30($s2)
/* AA154 800F3D94 8E220004 */  lw         $v0, 0x4($s1)
/* AA158 800F3D98 AE420218 */  sw         $v0, 0x218($s2)
/* AA15C 800F3D9C 8E220010 */  lw         $v0, 0x10($s1)
/* AA160 800F3DA0 AE420228 */  sw         $v0, 0x228($s2)
/* AA164 800F3DA4 8E220014 */  lw         $v0, 0x14($s1)
/* AA168 800F3DA8 AE42022C */  sw         $v0, 0x22C($s2)
/* AA16C 800F3DAC 8E220018 */  lw         $v0, 0x18($s1)
/* AA170 800F3DB0 AE420230 */  sw         $v0, 0x230($s2)
/* AA174 800F3DB4 8E22001C */  lw         $v0, 0x1C($s1)
/* AA178 800F3DB8 AE42023C */  sw         $v0, 0x23C($s2)
/* AA17C 800F3DBC 8E220028 */  lw         $v0, 0x28($s1)
/* AA180 800F3DC0 AE420240 */  sw         $v0, 0x240($s2)
/* AA184 800F3DC4 8E220024 */  lw         $v0, 0x24($s1)
/* AA188 800F3DC8 AE4200E0 */  sw         $v0, 0xE0($s2)
/* AA18C 800F3DCC 8E22002C */  lw         $v0, 0x2C($s1)
/* AA190 800F3DD0 AE420248 */  sw         $v0, 0x248($s2)
/* AA194 800F3DD4 44820000 */  mtc1       $v0, $f0
/* AA198 800F3DD8 46800020 */  cvt.s.w    $f0, $f0
/* AA19C 800F3DDC 46080002 */  mul.s      $f0, $f0, $f8
/* AA1A0 800F3DE0 3C01800D */  lui        $at, %hi(D_race_800CCC50)
/* AA1A4 800F3DE4 C422CC50 */  lwc1       $f2, %lo(D_race_800CCC50)($at)
/* AA1A8 800F3DE8 3C01800D */  lui        $at, %hi(D_race_800CCC54)
/* AA1AC 800F3DEC C424CC54 */  lwc1       $f4, %lo(D_race_800CCC54)($at)
/* AA1B0 800F3DF0 8E220030 */  lw         $v0, 0x30($s1)
/* AA1B4 800F3DF4 46001083 */  div.s      $f2, $f2, $f0
/* AA1B8 800F3DF8 46021180 */  add.s      $f6, $f2, $f2
/* AA1BC 800F3DFC AE42024C */  sw         $v0, 0x24C($s2)
/* AA1C0 800F3E00 46021082 */  mul.s      $f2, $f2, $f2
/* AA1C4 800F3E04 C6200034 */  lwc1       $f0, 0x34($s1)
/* AA1C8 800F3E08 E6400270 */  swc1       $f0, 0x270($s2)
/* AA1CC 800F3E0C C6200038 */  lwc1       $f0, 0x38($s1)
/* AA1D0 800F3E10 46062101 */  sub.s      $f4, $f4, $f6
/* AA1D4 800F3E14 E6400274 */  swc1       $f0, 0x274($s2)
/* AA1D8 800F3E18 C620003C */  lwc1       $f0, 0x3C($s1)
/* AA1DC 800F3E1C 46042100 */  add.s      $f4, $f4, $f4
/* AA1E0 800F3E20 E6400278 */  swc1       $f0, 0x278($s2)
/* AA1E4 800F3E24 C6200040 */  lwc1       $f0, 0x40($s1)
/* AA1E8 800F3E28 46022102 */  mul.s      $f4, $f4, $f2
/* AA1EC 800F3E2C E640027C */  swc1       $f0, 0x27C($s2)
/* AA1F0 800F3E30 3C01800D */  lui        $at, %hi(D_race_800CCC58)
/* AA1F4 800F3E34 C420CC58 */  lwc1       $f0, %lo(D_race_800CCC58)($at)
/* AA1F8 800F3E38 44821000 */  mtc1       $v0, $f2
/* AA1FC 800F3E3C 468010A0 */  cvt.s.w    $f2, $f2
/* AA200 800F3E40 46081082 */  mul.s      $f2, $f2, $f8
/* AA204 800F3E44 8E220044 */  lw         $v0, 0x44($s1)
/* AA208 800F3E48 E6460268 */  swc1       $f6, 0x268($s2)
/* AA20C 800F3E4C AE420244 */  sw         $v0, 0x244($s2)
/* AA210 800F3E50 46020003 */  div.s      $f0, $f0, $f2
/* AA214 800F3E54 46000007 */  neg.s      $f0, $f0
/* AA218 800F3E58 E644026C */  swc1       $f4, 0x26C($s2)
/* AA21C 800F3E5C E640025C */  swc1       $f0, 0x25C($s2)
/* AA220 800F3E60 AE400250 */  sw         $zero, 0x250($s2)
/* AA224 800F3E64 8E22000C */  lw         $v0, 0xC($s1)
/* AA228 800F3E68 14400004 */  bnez       $v0, .Lrace_800F3E7C
/* AA22C 800F3E6C 00000000 */   nop
/* AA230 800F3E70 8E220020 */  lw         $v0, 0x20($s1)
/* AA234 800F3E74 10400028 */  beqz       $v0, .Lrace_800F3F18
/* AA238 800F3E78 00000000 */   nop
.Lrace_800F3E7C:
/* AA23C 800F3E7C 8E430030 */  lw         $v1, 0x30($s2)
/* AA240 800F3E80 8C620000 */  lw         $v0, 0x0($v1)
/* AA244 800F3E84 84440068 */  lh         $a0, 0x68($v0)
/* AA248 800F3E88 8C42006C */  lw         $v0, 0x6C($v0)
/* AA24C 800F3E8C 0040F809 */  jalr       $v0
/* AA250 800F3E90 00642021 */   addu      $a0, $v1, $a0
/* AA254 800F3E94 AE4200C4 */  sw         $v0, 0xC4($s2)
/* AA258 800F3E98 8E250020 */  lw         $a1, 0x20($s1)
/* AA25C 800F3E9C 10A0001E */  beqz       $a1, .Lrace_800F3F18
/* AA260 800F3EA0 265000C8 */   addiu     $s0, $s2, 0xC8
/* AA264 800F3EA4 0C019FF4 */  jal        func_80067FD0
/* AA268 800F3EA8 02002021 */   addu      $a0, $s0, $zero
/* AA26C 800F3EAC 02002021 */  addu       $a0, $s0, $zero
/* AA270 800F3EB0 00003821 */  addu       $a3, $zero, $zero
/* AA274 800F3EB4 8E45023C */  lw         $a1, 0x23C($s2)
/* AA278 800F3EB8 8E4600E0 */  lw         $a2, 0xE0($s2)
/* AA27C 800F3EBC 0C01A018 */  jal        func_80068060
/* AA280 800F3EC0 24A50008 */   addiu     $a1, $a1, 0x8
/* AA284 800F3EC4 8E42023C */  lw         $v0, 0x23C($s2)
/* AA288 800F3EC8 02002021 */  addu       $a0, $s0, $zero
/* AA28C 800F3ECC 8C460014 */  lw         $a2, 0x14($v0)
/* AA290 800F3ED0 8C470018 */  lw         $a3, 0x18($v0)
/* AA294 800F3ED4 0C01A036 */  jal        func_800680D8
/* AA298 800F3ED8 00002821 */   addu      $a1, $zero, $zero
/* AA29C 800F3EDC 3C01800D */  lui        $at, %hi(D_race_800CCC5C)
/* AA2A0 800F3EE0 C422CC5C */  lwc1       $f2, %lo(D_race_800CCC5C)($at)
/* AA2A4 800F3EE4 3C073DCC */  lui        $a3, (0x3DCCCCCD >> 16)
/* AA2A8 800F3EE8 34E7CCCD */  ori        $a3, $a3, (0x3DCCCCCD & 0xFFFF)
/* AA2AC 800F3EEC 8E45023C */  lw         $a1, 0x23C($s2)
/* AA2B0 800F3EF0 3C01800D */  lui        $at, %hi(D_race_800CCC60)
/* AA2B4 800F3EF4 C420CC60 */  lwc1       $f0, %lo(D_race_800CCC60)($at)
/* AA2B8 800F3EF8 E7A20010 */  swc1       $f2, 0x10($sp)
/* AA2BC 800F3EFC E7A00014 */  swc1       $f0, 0x14($sp)
/* AA2C0 800F3F00 8E4400C4 */  lw         $a0, 0xC4($s2)
/* AA2C4 800F3F04 8E4600E0 */  lw         $a2, 0xE0($s2)
/* AA2C8 800F3F08 0C01A378 */  jal        func_80068DE0
/* AA2CC 800F3F0C 24A50008 */   addiu     $a1, $a1, 0x8
/* AA2D0 800F3F10 0803CFD6 */  j          .Lrace_800F3F58
/* AA2D4 800F3F14 00000000 */   nop
.Lrace_800F3F18:
/* AA2D8 800F3F18 8E4300C4 */  lw         $v1, 0xC4($s2)
/* AA2DC 800F3F1C 1060000E */  beqz       $v1, .Lrace_800F3F58
/* AA2E0 800F3F20 00000000 */   nop
/* AA2E4 800F3F24 8C620024 */  lw         $v0, 0x24($v1)
/* AA2E8 800F3F28 3C01800D */  lui        $at, %hi(D_race_800CCC64)
/* AA2EC 800F3F2C C420CC64 */  lwc1       $f0, %lo(D_race_800CCC64)($at)
/* AA2F0 800F3F30 3C063DCC */  lui        $a2, (0x3DCCCCCD >> 16)
/* AA2F4 800F3F34 34C6CCCD */  ori        $a2, $a2, (0x3DCCCCCD & 0xFFFF)
/* AA2F8 800F3F38 3C073E4C */  lui        $a3, (0x3E4CCCCD >> 16)
/* AA2FC 800F3F3C 34E7CCCD */  ori        $a3, $a3, (0x3E4CCCCD & 0xFFFF)
/* AA300 800F3F40 844400A0 */  lh         $a0, 0xA0($v0)
/* AA304 800F3F44 E7A00010 */  swc1       $f0, 0x10($sp)
/* AA308 800F3F48 8E25000C */  lw         $a1, 0xC($s1)
/* AA30C 800F3F4C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* AA310 800F3F50 0040F809 */  jalr       $v0
/* AA314 800F3F54 00642021 */   addu      $a0, $v1, $a0
.Lrace_800F3F58:
/* AA318 800F3F58 8E220008 */  lw         $v0, 0x8($s1)
/* AA31C 800F3F5C 1040001E */  beqz       $v0, .Lrace_800F3FD8
/* AA320 800F3F60 26500034 */   addiu     $s0, $s2, 0x34
/* AA324 800F3F64 8C450078 */  lw         $a1, 0x78($v0)
/* AA328 800F3F68 3C064874 */  lui        $a2, (0x48742400 >> 16)
/* AA32C 800F3F6C 34C62400 */  ori        $a2, $a2, (0x48742400 & 0xFFFF)
/* AA330 800F3F70 0C016059 */  jal        func_80058164
/* AA334 800F3F74 02002021 */   addu      $a0, $s0, $zero
/* AA338 800F3F78 8E240008 */  lw         $a0, 0x8($s1)
/* AA33C 800F3F7C 0C016264 */  jal        func_80058990
/* AA340 800F3F80 00000000 */   nop
/* AA344 800F3F84 44050000 */  mfc1       $a1, $f0
/* AA348 800F3F88 0C016274 */  jal        func_800589D0
/* AA34C 800F3F8C 02002021 */   addu      $a0, $s0, $zero
/* AA350 800F3F90 8E240008 */  lw         $a0, 0x8($s1)
/* AA354 800F3F94 0C01626C */  jal        func_800589B0
/* AA358 800F3F98 00000000 */   nop
/* AA35C 800F3F9C 44050000 */  mfc1       $a1, $f0
/* AA360 800F3FA0 0C01627F */  jal        func_800589FC
/* AA364 800F3FA4 02002021 */   addu      $a0, $s0, $zero
/* AA368 800F3FA8 8E240008 */  lw         $a0, 0x8($s1)
/* AA36C 800F3FAC 0C01628A */  jal        func_80058A28
/* AA370 800F3FB0 00000000 */   nop
/* AA374 800F3FB4 44050000 */  mfc1       $a1, $f0
/* AA378 800F3FB8 0C016298 */  jal        func_80058A60
/* AA37C 800F3FBC 02002021 */   addu      $a0, $s0, $zero
/* AA380 800F3FC0 8E240008 */  lw         $a0, 0x8($s1)
/* AA384 800F3FC4 0C016291 */  jal        func_80058A44
/* AA388 800F3FC8 00000000 */   nop
/* AA38C 800F3FCC 44050000 */  mfc1       $a1, $f0
/* AA390 800F3FD0 0C0162A3 */  jal        func_80058A8C
/* AA394 800F3FD4 02002021 */   addu      $a0, $s0, $zero
.Lrace_800F3FD8:
/* AA398 800F3FD8 8E430030 */  lw         $v1, 0x30($s2)
/* AA39C 800F3FDC 8C620000 */  lw         $v0, 0x0($v1)
/* AA3A0 800F3FE0 84440010 */  lh         $a0, 0x10($v0)
/* AA3A4 800F3FE4 8C420014 */  lw         $v0, 0x14($v0)
/* AA3A8 800F3FE8 0040F809 */  jalr       $v0
/* AA3AC 800F3FEC 00642021 */   addu      $a0, $v1, $a0
/* AA3B0 800F3FF0 2651021C */  addiu      $s1, $s2, 0x21C
/* AA3B4 800F3FF4 02202021 */  addu       $a0, $s1, $zero
/* AA3B8 800F3FF8 8C50001C */  lw         $s0, 0x1C($v0)
/* AA3BC 800F3FFC 24060001 */  addiu      $a2, $zero, 0x1
/* AA3C0 800F4000 0C0152FA */  jal        func_80054BE8
/* AA3C4 800F4004 02002821 */   addu      $a1, $s0, $zero
/* AA3C8 800F4008 264400E4 */  addiu      $a0, $s2, 0xE4
/* AA3CC 800F400C 02003021 */  addu       $a2, $s0, $zero
/* AA3D0 800F4010 8E450030 */  lw         $a1, 0x30($s2)
/* AA3D4 800F4014 0C039B0E */  jal        func_race_800E6C38
/* AA3D8 800F4018 2407000A */   addiu     $a3, $zero, 0xA
/* AA3DC 800F401C 24020001 */  addiu      $v0, $zero, 0x1
/* AA3E0 800F4020 AE510160 */  sw         $s1, 0x160($s2)
/* AA3E4 800F4024 AE420004 */  sw         $v0, 0x4($s2)
/* AA3E8 800F4028 8FBF0024 */  lw         $ra, 0x24($sp)
/* AA3EC 800F402C 8FB20020 */  lw         $s2, 0x20($sp)
/* AA3F0 800F4030 8FB1001C */  lw         $s1, 0x1C($sp)
/* AA3F4 800F4034 8FB00018 */  lw         $s0, 0x18($sp)
/* AA3F8 800F4038 03E00008 */  jr         $ra
/* AA3FC 800F403C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800F4040
/* AA400 800F4040 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AA404 800F4044 AFB00010 */  sw         $s0, 0x10($sp)
/* AA408 800F4048 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA40C 800F404C 0C03D0E2 */  jal        func_race_800F4388
/* AA410 800F4050 00808021 */   addu      $s0, $a0, $zero
/* AA414 800F4054 0C039B58 */  jal        func_race_800E6D60
/* AA418 800F4058 260400E4 */   addiu     $a0, $s0, 0xE4
/* AA41C 800F405C 0C0153DC */  jal        func_80054F70
/* AA420 800F4060 2604021C */   addiu     $a0, $s0, 0x21C
/* AA424 800F4064 0C01607E */  jal        func_800581F8
/* AA428 800F4068 26040034 */   addiu     $a0, $s0, 0x34
/* AA42C 800F406C 8E020030 */  lw         $v0, 0x30($s0)
/* AA430 800F4070 10400011 */  beqz       $v0, .Lrace_800F40B8
/* AA434 800F4074 00000000 */   nop
/* AA438 800F4078 8E0300C4 */  lw         $v1, 0xC4($s0)
/* AA43C 800F407C 1060000E */  beqz       $v1, .Lrace_800F40B8
/* AA440 800F4080 00000000 */   nop
/* AA444 800F4084 8C620024 */  lw         $v0, 0x24($v1)
/* AA448 800F4088 844400A8 */  lh         $a0, 0xA8($v0)
/* AA44C 800F408C 8C4200AC */  lw         $v0, 0xAC($v0)
/* AA450 800F4090 0040F809 */  jalr       $v0
/* AA454 800F4094 00642021 */   addu      $a0, $v1, $a0
/* AA458 800F4098 8E030030 */  lw         $v1, 0x30($s0)
/* AA45C 800F409C 8C620000 */  lw         $v0, 0x0($v1)
/* AA460 800F40A0 8E0500C4 */  lw         $a1, 0xC4($s0)
/* AA464 800F40A4 844400D0 */  lh         $a0, 0xD0($v0)
/* AA468 800F40A8 8C4200D4 */  lw         $v0, 0xD4($v0)
/* AA46C 800F40AC 0040F809 */  jalr       $v0
/* AA470 800F40B0 00642021 */   addu      $a0, $v1, $a0
/* AA474 800F40B4 AE0000C4 */  sw         $zero, 0xC4($s0)
.Lrace_800F40B8:
/* AA478 800F40B8 0C01A00F */  jal        func_8006803C
/* AA47C 800F40BC 260400C8 */   addiu     $a0, $s0, 0xC8
/* AA480 800F40C0 AE000004 */  sw         $zero, 0x4($s0)
/* AA484 800F40C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA488 800F40C8 8FB00010 */  lw         $s0, 0x10($sp)
/* AA48C 800F40CC 03E00008 */  jr         $ra
/* AA490 800F40D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F40D4
/* AA494 800F40D4 27BDFF80 */  addiu      $sp, $sp, -0x80
/* AA498 800F40D8 AFB00060 */  sw         $s0, 0x60($sp)
/* AA49C 800F40DC 00A08021 */  addu       $s0, $a1, $zero
/* AA4A0 800F40E0 AFBF006C */  sw         $ra, 0x6C($sp)
/* AA4A4 800F40E4 AFB20068 */  sw         $s2, 0x68($sp)
/* AA4A8 800F40E8 AFB10064 */  sw         $s1, 0x64($sp)
/* AA4AC 800F40EC F7B60078 */  sdc1       $f22, 0x78($sp)
/* AA4B0 800F40F0 F7B40070 */  sdc1       $f20, 0x70($sp)
/* AA4B4 800F40F4 C6000000 */  lwc1       $f0, 0x0($s0)
/* AA4B8 800F40F8 3C01800D */  lui        $at, %hi(D_race_800CCC70)
/* AA4BC 800F40FC C424CC70 */  lwc1       $f4, %lo(D_race_800CCC70)($at)
/* AA4C0 800F4100 4600203C */  c.lt.s     $f4, $f0
/* AA4C4 800F4104 00000000 */  nop
/* AA4C8 800F4108 45010019 */  bc1t       .Lrace_800F4170
/* AA4CC 800F410C 00808821 */   addu      $s1, $a0, $zero
/* AA4D0 800F4110 3C01800D */  lui        $at, %hi(D_race_800CCC74)
/* AA4D4 800F4114 C422CC74 */  lwc1       $f2, %lo(D_race_800CCC74)($at)
/* AA4D8 800F4118 4602003C */  c.lt.s     $f0, $f2
/* AA4DC 800F411C 00000000 */  nop
/* AA4E0 800F4120 45010014 */  bc1t       .Lrace_800F4174
/* AA4E4 800F4124 24020001 */   addiu     $v0, $zero, 0x1
/* AA4E8 800F4128 C6000004 */  lwc1       $f0, 0x4($s0)
/* AA4EC 800F412C 4600203C */  c.lt.s     $f4, $f0
/* AA4F0 800F4130 00000000 */  nop
/* AA4F4 800F4134 4503008C */  bc1tl      .Lrace_800F4368
/* AA4F8 800F4138 AE220004 */   sw        $v0, 0x4($s1)
/* AA4FC 800F413C 4602003C */  c.lt.s     $f0, $f2
/* AA500 800F4140 00000000 */  nop
/* AA504 800F4144 45030088 */  bc1tl      .Lrace_800F4368
/* AA508 800F4148 AE220004 */   sw        $v0, 0x4($s1)
/* AA50C 800F414C C6000008 */  lwc1       $f0, 0x8($s0)
/* AA510 800F4150 4600203C */  c.lt.s     $f4, $f0
/* AA514 800F4154 00000000 */  nop
/* AA518 800F4158 45030083 */  bc1tl      .Lrace_800F4368
/* AA51C 800F415C AE220004 */   sw        $v0, 0x4($s1)
/* AA520 800F4160 4602003C */  c.lt.s     $f0, $f2
/* AA524 800F4164 00000000 */  nop
/* AA528 800F4168 45000004 */  bc1f       .Lrace_800F417C
/* AA52C 800F416C 26320008 */   addiu     $s2, $s1, 0x8
.Lrace_800F4170:
/* AA530 800F4170 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800F4174:
/* AA534 800F4174 0803D0DA */  j          .Lrace_800F4368
/* AA538 800F4178 AE220004 */   sw        $v0, 0x4($s1)
.Lrace_800F417C:
/* AA53C 800F417C 02402021 */  addu       $a0, $s2, $zero
/* AA540 800F4180 02002821 */  addu       $a1, $s0, $zero
/* AA544 800F4184 8E230248 */  lw         $v1, 0x248($s1)
/* AA548 800F4188 3C01800D */  lui        $at, %hi(D_race_800CCC78)
/* AA54C 800F418C C420CC78 */  lwc1       $f0, %lo(D_race_800CCC78)($at)
/* AA550 800F4190 3C01800D */  lui        $at, %hi(D_race_800CCC7C)
/* AA554 800F4194 C436CC7C */  lwc1       $f22, %lo(D_race_800CCC7C)($at)
/* AA558 800F4198 C6220268 */  lwc1       $f2, 0x268($s1)
/* AA55C 800F419C 3C01800D */  lui        $at, %hi(D_race_800CCC80)
/* AA560 800F41A0 C434CC80 */  lwc1       $f20, %lo(D_race_800CCC80)($at)
/* AA564 800F41A4 24020002 */  addiu      $v0, $zero, 0x2
/* AA568 800F41A8 AE220004 */  sw         $v0, 0x4($s1)
/* AA56C 800F41AC AE260280 */  sw         $a2, 0x280($s1)
/* AA570 800F41B0 AE200258 */  sw         $zero, 0x258($s1)
/* AA574 800F41B4 AE270234 */  sw         $a3, 0x234($s1)
/* AA578 800F41B8 AE230250 */  sw         $v1, 0x250($s1)
/* AA57C 800F41BC E6200254 */  swc1       $f0, 0x254($s1)
/* AA580 800F41C0 E6360260 */  swc1       $f22, 0x260($s1)
/* AA584 800F41C4 0C01659D */  jal        func_80059674
/* AA588 800F41C8 E6220264 */   swc1      $f2, 0x264($s1)
/* AA58C 800F41CC 4405A000 */  mfc1       $a1, $f20
/* AA590 800F41D0 0C0165E8 */  jal        func_800597A0
/* AA594 800F41D4 02402021 */   addu      $a0, $s2, $zero
/* AA598 800F41D8 8E2200C4 */  lw         $v0, 0xC4($s1)
/* AA59C 800F41DC 1040000C */  beqz       $v0, .Lrace_800F4210
/* AA5A0 800F41E0 02002821 */   addu      $a1, $s0, $zero
/* AA5A4 800F41E4 E454003C */  swc1       $f20, 0x3C($v0)
/* AA5A8 800F41E8 8E2200C4 */  lw         $v0, 0xC4($s1)
/* AA5AC 800F41EC 3C01800D */  lui        $at, %hi(D_race_800CCC84)
/* AA5B0 800F41F0 C420CC84 */  lwc1       $f0, %lo(D_race_800CCC84)($at)
/* AA5B4 800F41F4 E4400040 */  swc1       $f0, 0x40($v0)
/* AA5B8 800F41F8 8E2300C4 */  lw         $v1, 0xC4($s1)
/* AA5BC 800F41FC 8C620024 */  lw         $v0, 0x24($v1)
/* AA5C0 800F4200 84440018 */  lh         $a0, 0x18($v0)
/* AA5C4 800F4204 8C42001C */  lw         $v0, 0x1C($v0)
/* AA5C8 800F4208 0040F809 */  jalr       $v0
/* AA5CC 800F420C 00642021 */   addu      $a0, $v1, $a0
.Lrace_800F4210:
/* AA5D0 800F4210 26240034 */  addiu      $a0, $s1, 0x34
/* AA5D4 800F4214 8C82005C */  lw         $v0, 0x5C($a0)
/* AA5D8 800F4218 30420001 */  andi       $v0, $v0, 0x1
/* AA5DC 800F421C 10400006 */  beqz       $v0, .Lrace_800F4238
/* AA5E0 800F4220 02002821 */   addu      $a1, $s0, $zero
/* AA5E4 800F4224 3C01800D */  lui        $at, %hi(D_race_800CCC88)
/* AA5E8 800F4228 C420CC88 */  lwc1       $f0, %lo(D_race_800CCC88)($at)
/* AA5EC 800F422C E4960058 */  swc1       $f22, 0x58($a0)
/* AA5F0 800F4230 0C015962 */  jal        func_80056588
/* AA5F4 800F4234 E480000C */   swc1      $f0, 0xC($a0)
.Lrace_800F4238:
/* AA5F8 800F4238 C6040000 */  lwc1       $f4, 0x0($s0)
/* AA5FC 800F423C E7A40050 */  swc1       $f4, 0x50($sp)
/* AA600 800F4240 C6000004 */  lwc1       $f0, 0x4($s0)
/* AA604 800F4244 E7A00054 */  swc1       $f0, 0x54($sp)
/* AA608 800F4248 C6020008 */  lwc1       $f2, 0x8($s0)
/* AA60C 800F424C 3C01800D */  lui        $at, %hi(D_race_800CCC8C)
/* AA610 800F4250 C420CC8C */  lwc1       $f0, %lo(D_race_800CCC8C)($at)
/* AA614 800F4254 46001080 */  add.s      $f2, $f2, $f0
/* AA618 800F4258 262400E4 */  addiu      $a0, $s1, 0xE4
/* AA61C 800F425C E7A20058 */  swc1       $f2, 0x58($sp)
/* AA620 800F4260 E48400F0 */  swc1       $f4, 0xF0($a0)
/* AA624 800F4264 C7A00054 */  lwc1       $f0, 0x54($sp)
/* AA628 800F4268 3C01800D */  lui        $at, %hi(D_race_800CCC90)
/* AA62C 800F426C C422CC90 */  lwc1       $f2, %lo(D_race_800CCC90)($at)
/* AA630 800F4270 3C01800D */  lui        $at, %hi(D_race_800CCC94)
/* AA634 800F4274 C424CC94 */  lwc1       $f4, %lo(D_race_800CCC94)($at)
/* AA638 800F4278 27A50030 */  addiu      $a1, $sp, 0x30
/* AA63C 800F427C E48000F4 */  swc1       $f0, 0xF4($a0)
/* AA640 800F4280 C7A00058 */  lwc1       $f0, 0x58($sp)
/* AA644 800F4284 27A60040 */  addiu      $a2, $sp, 0x40
/* AA648 800F4288 E48000F8 */  swc1       $f0, 0xF8($a0)
/* AA64C 800F428C AFA00030 */  sw         $zero, 0x30($sp)
/* AA650 800F4290 AFA00034 */  sw         $zero, 0x34($sp)
/* AA654 800F4294 E7A20038 */  swc1       $f2, 0x38($sp)
/* AA658 800F4298 E7A40040 */  swc1       $f4, 0x40($sp)
/* AA65C 800F429C AFA00044 */  sw         $zero, 0x44($sp)
/* AA660 800F42A0 0C039CC3 */  jal        func_race_800E730C
/* AA664 800F42A4 AFA00048 */   sw        $zero, 0x48($sp)
/* AA668 800F42A8 8E220238 */  lw         $v0, 0x238($s1)
/* AA66C 800F42AC 54400001 */  bnel       $v0, $zero, .Lrace_800F42B4
/* AA670 800F42B0 AC400024 */   sw        $zero, 0x24($v0)
.Lrace_800F42B4:
/* AA674 800F42B4 8E220230 */  lw         $v0, 0x230($s1)
/* AA678 800F42B8 1040000D */  beqz       $v0, .Lrace_800F42F0
/* AA67C 800F42BC 02202821 */   addu      $a1, $s1, $zero
/* AA680 800F42C0 24020004 */  addiu      $v0, $zero, 0x4
/* AA684 800F42C4 AFA20018 */  sw         $v0, 0x18($sp)
/* AA688 800F42C8 24020001 */  addiu      $v0, $zero, 0x1
/* AA68C 800F42CC AFA2001C */  sw         $v0, 0x1C($sp)
/* AA690 800F42D0 AFA00020 */  sw         $zero, 0x20($sp)
/* AA694 800F42D4 AFA00024 */  sw         $zero, 0x24($sp)
/* AA698 800F42D8 AFB20028 */  sw         $s2, 0x28($sp)
/* AA69C 800F42DC 8E240230 */  lw         $a0, 0x230($s1)
/* AA6A0 800F42E0 0C04053E */  jal        func_race_801014F8
/* AA6A4 800F42E4 27A60018 */   addiu     $a2, $sp, 0x18
/* AA6A8 800F42E8 0803D0BD */  j          .Lrace_800F42F4
/* AA6AC 800F42EC AE220238 */   sw        $v0, 0x238($s1)
.Lrace_800F42F0:
/* AA6B0 800F42F0 AE200238 */  sw         $zero, 0x238($s1)
.Lrace_800F42F4:
/* AA6B4 800F42F4 263000C8 */  addiu      $s0, $s1, 0xC8
/* AA6B8 800F42F8 8E020014 */  lw         $v0, 0x14($s0)
/* AA6BC 800F42FC 30420001 */  andi       $v0, $v0, 0x1
/* AA6C0 800F4300 1040000B */  beqz       $v0, .Lrace_800F4330
/* AA6C4 800F4304 00000000 */   nop
/* AA6C8 800F4308 0C01A026 */  jal        func_80068098
/* AA6CC 800F430C 02002021 */   addu      $a0, $s0, $zero
/* AA6D0 800F4310 0C01A02B */  jal        func_800680AC
/* AA6D4 800F4314 02002021 */   addu      $a0, $s0, $zero
/* AA6D8 800F4318 02002021 */  addu       $a0, $s0, $zero
/* AA6DC 800F431C 00003821 */  addu       $a3, $zero, $zero
/* AA6E0 800F4320 8E25023C */  lw         $a1, 0x23C($s1)
/* AA6E4 800F4324 8E2600E0 */  lw         $a2, 0xE0($s1)
/* AA6E8 800F4328 0C01A018 */  jal        func_80068060
/* AA6EC 800F432C 24A50008 */   addiu     $a1, $a1, 0x8
.Lrace_800F4330:
/* AA6F0 800F4330 8E220240 */  lw         $v0, 0x240($s1)
/* AA6F4 800F4334 1040000C */  beqz       $v0, .Lrace_800F4368
/* AA6F8 800F4338 3C05800D */   lui       $a1, %hi(D_race_800CCC68)
/* AA6FC 800F433C C7A00058 */  lwc1       $f0, 0x58($sp)
/* AA700 800F4340 3C01800D */  lui        $at, %hi(D_race_800CCC98)
/* AA704 800F4344 C422CC98 */  lwc1       $f2, %lo(D_race_800CCC98)($at)
/* AA708 800F4348 46020001 */  sub.s      $f0, $f0, $f2
/* AA70C 800F434C 24A5CC68 */  addiu      $a1, $a1, %lo(D_race_800CCC68)
/* AA710 800F4350 27A60050 */  addiu      $a2, $sp, 0x50
/* AA714 800F4354 E7A00058 */  swc1       $f0, 0x58($sp)
/* AA718 800F4358 AFA00010 */  sw         $zero, 0x10($sp)
/* AA71C 800F435C 8E240240 */  lw         $a0, 0x240($s1)
/* AA720 800F4360 0C0107DD */  jal        func_80041F74
/* AA724 800F4364 00003821 */   addu      $a3, $zero, $zero
.Lrace_800F4368:
/* AA728 800F4368 8FBF006C */  lw         $ra, 0x6C($sp)
/* AA72C 800F436C 8FB20068 */  lw         $s2, 0x68($sp)
/* AA730 800F4370 8FB10064 */  lw         $s1, 0x64($sp)
/* AA734 800F4374 8FB00060 */  lw         $s0, 0x60($sp)
/* AA738 800F4378 D7B60078 */  ldc1       $f22, 0x78($sp)
/* AA73C 800F437C D7B40070 */  ldc1       $f20, 0x70($sp)
/* AA740 800F4380 03E00008 */  jr         $ra
/* AA744 800F4384 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_800F4388
/* AA748 800F4388 8C820238 */  lw         $v0, 0x238($a0)
/* AA74C 800F438C 50400004 */  beql       $v0, $zero, .Lrace_800F43A0
/* AA750 800F4390 24020001 */   addiu     $v0, $zero, 0x1
/* AA754 800F4394 AC400024 */  sw         $zero, 0x24($v0)
/* AA758 800F4398 AC800238 */  sw         $zero, 0x238($a0)
/* AA75C 800F439C 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800F43A0:
/* AA760 800F43A0 03E00008 */  jr         $ra
/* AA764 800F43A4 AC820004 */   sw        $v0, 0x4($a0)

glabel func_race_800F43A8
/* AA768 800F43A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AA76C 800F43AC AFB00010 */  sw         $s0, 0x10($sp)
/* AA770 800F43B0 00808021 */  addu       $s0, $a0, $zero
/* AA774 800F43B4 AFB10014 */  sw         $s1, 0x14($sp)
/* AA778 800F43B8 AFBF0018 */  sw         $ra, 0x18($sp)
/* AA77C 800F43BC 8E030004 */  lw         $v1, 0x4($s0)
/* AA780 800F43C0 24020002 */  addiu      $v0, $zero, 0x2
/* AA784 800F43C4 14620004 */  bne        $v1, $v0, .Lrace_800F43D8
/* AA788 800F43C8 00A08821 */   addu      $s1, $a1, $zero
/* AA78C 800F43CC 0C03D117 */  jal        func_race_800F445C
/* AA790 800F43D0 00000000 */   nop
/* AA794 800F43D4 8E030004 */  lw         $v1, 0x4($s0)
.Lrace_800F43D8:
/* AA798 800F43D8 24020003 */  addiu      $v0, $zero, 0x3
/* AA79C 800F43DC 1462001A */  bne        $v1, $v0, .Lrace_800F4448
/* AA7A0 800F43E0 00000000 */   nop
/* AA7A4 800F43E4 3C01800D */  lui        $at, %hi(D_race_800CCC9C)
/* AA7A8 800F43E8 C422CC9C */  lwc1       $f2, %lo(D_race_800CCC9C)($at)
/* AA7AC 800F43EC 44910000 */  mtc1       $s1, $f0
/* AA7B0 800F43F0 46800020 */  cvt.s.w    $f0, $f0
/* AA7B4 800F43F4 46020002 */  mul.s      $f0, $f0, $f2
/* AA7B8 800F43F8 C602025C */  lwc1       $f2, 0x25C($s0)
/* AA7BC 800F43FC 46001082 */  mul.s      $f2, $f2, $f0
/* AA7C0 800F4400 C6000254 */  lwc1       $f0, 0x254($s0)
/* AA7C4 800F4404 46020000 */  add.s      $f0, $f0, $f2
/* AA7C8 800F4408 44801000 */  mtc1       $zero, $f2
/* AA7CC 800F440C 4602003C */  c.lt.s     $f0, $f2
/* AA7D0 800F4410 00000000 */  nop
/* AA7D4 800F4414 45000002 */  bc1f       .Lrace_800F4420
/* AA7D8 800F4418 E6000254 */   swc1      $f0, 0x254($s0)
/* AA7DC 800F441C E6020254 */  swc1       $f2, 0x254($s0)
.Lrace_800F4420:
/* AA7E0 800F4420 8E030250 */  lw         $v1, 0x250($s0)
/* AA7E4 800F4424 0223102B */  sltu       $v0, $s1, $v1
/* AA7E8 800F4428 14400006 */  bnez       $v0, .Lrace_800F4444
/* AA7EC 800F442C 00711023 */   subu      $v0, $v1, $s1
/* AA7F0 800F4430 AE000250 */  sw         $zero, 0x250($s0)
/* AA7F4 800F4434 0C03D0E2 */  jal        func_race_800F4388
/* AA7F8 800F4438 02002021 */   addu      $a0, $s0, $zero
/* AA7FC 800F443C 0803D112 */  j          .Lrace_800F4448
/* AA800 800F4440 00000000 */   nop
.Lrace_800F4444:
/* AA804 800F4444 AE020250 */  sw         $v0, 0x250($s0)
.Lrace_800F4448:
/* AA808 800F4448 8FBF0018 */  lw         $ra, 0x18($sp)
/* AA80C 800F444C 8FB10014 */  lw         $s1, 0x14($sp)
/* AA810 800F4450 8FB00010 */  lw         $s0, 0x10($sp)
/* AA814 800F4454 03E00008 */  jr         $ra
/* AA818 800F4458 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F445C
/* AA81C 800F445C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AA820 800F4460 AFB00010 */  sw         $s0, 0x10($sp)
/* AA824 800F4464 00808021 */  addu       $s0, $a0, $zero
/* AA828 800F4468 AFBF0018 */  sw         $ra, 0x18($sp)
/* AA82C 800F446C AFB10014 */  sw         $s1, 0x14($sp)
/* AA830 800F4470 F7B40020 */  sdc1       $f20, 0x20($sp)
/* AA834 800F4474 8E020004 */  lw         $v0, 0x4($s0)
/* AA838 800F4478 2C420002 */  sltiu      $v0, $v0, 0x2
/* AA83C 800F447C 144000A2 */  bnez       $v0, .Lrace_800F4708
/* AA840 800F4480 00A08821 */   addu      $s1, $a1, $zero
/* AA844 800F4484 8E030250 */  lw         $v1, 0x250($s0)
/* AA848 800F4488 0223102B */  sltu       $v0, $s1, $v1
/* AA84C 800F448C 54400024 */  bnel       $v0, $zero, .Lrace_800F4520
/* AA850 800F4490 26040008 */   addiu     $a0, $s0, 0x8
/* AA854 800F4494 8E02022C */  lw         $v0, 0x22C($s0)
/* AA858 800F4498 10400004 */  beqz       $v0, .Lrace_800F44AC
/* AA85C 800F449C 00000000 */   nop
/* AA860 800F44A0 8E020280 */  lw         $v0, 0x280($s0)
/* AA864 800F44A4 14400005 */  bnez       $v0, .Lrace_800F44BC
/* AA868 800F44A8 00000000 */   nop
.Lrace_800F44AC:
/* AA86C 800F44AC 0C03D0E2 */  jal        func_race_800F4388
/* AA870 800F44B0 02002021 */   addu      $a0, $s0, $zero
/* AA874 800F44B4 0803D1C2 */  j          .Lrace_800F4708
/* AA878 800F44B8 00000000 */   nop
.Lrace_800F44BC:
/* AA87C 800F44BC 8E020238 */  lw         $v0, 0x238($s0)
/* AA880 800F44C0 10400003 */  beqz       $v0, .Lrace_800F44D0
/* AA884 800F44C4 00000000 */   nop
/* AA888 800F44C8 AC400024 */  sw         $zero, 0x24($v0)
/* AA88C 800F44CC AE000238 */  sw         $zero, 0x238($s0)
.Lrace_800F44D0:
/* AA890 800F44D0 8E03024C */  lw         $v1, 0x24C($s0)
/* AA894 800F44D4 3C01800D */  lui        $at, %hi(D_race_800CCCA0)
/* AA898 800F44D8 C420CCA0 */  lwc1       $f0, %lo(D_race_800CCCA0)($at)
/* AA89C 800F44DC 24020003 */  addiu      $v0, $zero, 0x3
/* AA8A0 800F44E0 E6000254 */  swc1       $f0, 0x254($s0)
/* AA8A4 800F44E4 C6000274 */  lwc1       $f0, 0x274($s0)
/* AA8A8 800F44E8 260400E4 */  addiu      $a0, $s0, 0xE4
/* AA8AC 800F44EC AE020004 */  sw         $v0, 0x4($s0)
/* AA8B0 800F44F0 AE030250 */  sw         $v1, 0x250($s0)
/* AA8B4 800F44F4 E480011C */  swc1       $f0, 0x11C($a0)
/* AA8B8 800F44F8 3C01800D */  lui        $at, %hi(D_race_800CCCA4)
/* AA8BC 800F44FC C420CCA4 */  lwc1       $f0, %lo(D_race_800CCCA4)($at)
/* AA8C0 800F4500 C6020274 */  lwc1       $f2, 0x274($s0)
/* AA8C4 800F4504 E4800124 */  swc1       $f0, 0x124($a0)
/* AA8C8 800F4508 E4820120 */  swc1       $f2, 0x120($a0)
/* AA8CC 800F450C 8E050218 */  lw         $a1, 0x218($s0)
/* AA8D0 800F4510 0C039B98 */  jal        func_race_800E6E60
/* AA8D4 800F4514 00000000 */   nop
/* AA8D8 800F4518 0803D1C2 */  j          .Lrace_800F4708
/* AA8DC 800F451C 00000000 */   nop
.Lrace_800F4520:
/* AA8E0 800F4520 3C01800D */  lui        $at, %hi(D_race_800CCCA8)
/* AA8E4 800F4524 C422CCA8 */  lwc1       $f2, %lo(D_race_800CCCA8)($at)
/* AA8E8 800F4528 44910000 */  mtc1       $s1, $f0
/* AA8EC 800F452C 46800020 */  cvt.s.w    $f0, $f0
/* AA8F0 800F4530 46020502 */  mul.s      $f20, $f0, $f2
/* AA8F4 800F4534 C600026C */  lwc1       $f0, 0x26C($s0)
/* AA8F8 800F4538 46140002 */  mul.s      $f0, $f0, $f20
/* AA8FC 800F453C C6040264 */  lwc1       $f4, 0x264($s0)
/* AA900 800F4540 46002100 */  add.s      $f4, $f4, $f0
/* AA904 800F4544 46142182 */  mul.s      $f6, $f4, $f20
/* AA908 800F4548 C600027C */  lwc1       $f0, 0x27C($s0)
/* AA90C 800F454C 3C01800D */  lui        $at, %hi(D_race_800CCCAC)
/* AA910 800F4550 C434CCAC */  lwc1       $f20, %lo(D_race_800CCCAC)($at)
/* AA914 800F4554 46140001 */  sub.s      $f0, $f0, $f20
/* AA918 800F4558 C6020260 */  lwc1       $f2, 0x260($s0)
/* AA91C 800F455C 46061080 */  add.s      $f2, $f2, $f6
/* AA920 800F4560 46001002 */  mul.s      $f0, $f2, $f0
/* AA924 800F4564 46140000 */  add.s      $f0, $f0, $f20
/* AA928 800F4568 44050000 */  mfc1       $a1, $f0
/* AA92C 800F456C 00711023 */  subu       $v0, $v1, $s1
/* AA930 800F4570 AE020250 */  sw         $v0, 0x250($s0)
/* AA934 800F4574 E6040264 */  swc1       $f4, 0x264($s0)
/* AA938 800F4578 0C0165E8 */  jal        func_800597A0
/* AA93C 800F457C E6020260 */   swc1      $f2, 0x260($s0)
/* AA940 800F4580 C6000274 */  lwc1       $f0, 0x274($s0)
/* AA944 800F4584 46140001 */  sub.s      $f0, $f0, $f20
/* AA948 800F4588 C6020260 */  lwc1       $f2, 0x260($s0)
/* AA94C 800F458C 46001082 */  mul.s      $f2, $f2, $f0
/* AA950 800F4590 8E06022C */  lw         $a2, 0x22C($s0)
/* AA954 800F4594 10C0000F */  beqz       $a2, .Lrace_800F45D4
/* AA958 800F4598 46141500 */   add.s     $f20, $f2, $f20
/* AA95C 800F459C 8E020280 */  lw         $v0, 0x280($s0)
/* AA960 800F45A0 1040000C */  beqz       $v0, .Lrace_800F45D4
/* AA964 800F45A4 2604021C */   addiu     $a0, $s0, 0x21C
/* AA968 800F45A8 0C01543D */  jal        func_800550F4
/* AA96C 800F45AC 00002821 */   addu      $a1, $zero, $zero
/* AA970 800F45B0 3C01800D */  lui        $at, %hi(D_race_800CCCB0)
/* AA974 800F45B4 C420CCB0 */  lwc1       $f0, %lo(D_race_800CCCB0)($at)
/* AA978 800F45B8 260400E4 */  addiu      $a0, $s0, 0xE4
/* AA97C 800F45BC E494011C */  swc1       $f20, 0x11C($a0)
/* AA980 800F45C0 E4940120 */  swc1       $f20, 0x120($a0)
/* AA984 800F45C4 E4800124 */  swc1       $f0, 0x124($a0)
/* AA988 800F45C8 8E050218 */  lw         $a1, 0x218($s0)
/* AA98C 800F45CC 0C039B98 */  jal        func_race_800E6E60
/* AA990 800F45D0 00000000 */   nop
.Lrace_800F45D4:
/* AA994 800F45D4 8E0200C4 */  lw         $v0, 0xC4($s0)
/* AA998 800F45D8 1040000B */  beqz       $v0, .Lrace_800F4608
/* AA99C 800F45DC 00000000 */   nop
/* AA9A0 800F45E0 E454003C */  swc1       $f20, 0x3C($v0)
/* AA9A4 800F45E4 C6020278 */  lwc1       $f2, 0x278($s0)
/* AA9A8 800F45E8 3C01800D */  lui        $at, %hi(D_race_800CCCB4)
/* AA9AC 800F45EC C424CCB4 */  lwc1       $f4, %lo(D_race_800CCCB4)($at)
/* AA9B0 800F45F0 46041081 */  sub.s      $f2, $f2, $f4
/* AA9B4 800F45F4 C6000260 */  lwc1       $f0, 0x260($s0)
/* AA9B8 800F45F8 46020002 */  mul.s      $f0, $f0, $f2
/* AA9BC 800F45FC 46040000 */  add.s      $f0, $f0, $f4
/* AA9C0 800F4600 8E0200C4 */  lw         $v0, 0xC4($s0)
/* AA9C4 800F4604 E4400040 */  swc1       $f0, 0x40($v0)
.Lrace_800F4608:
/* AA9C8 800F4608 C6000270 */  lwc1       $f0, 0x270($s0)
/* AA9CC 800F460C 3C01800D */  lui        $at, %hi(D_race_800CCCB8)
/* AA9D0 800F4610 C424CCB8 */  lwc1       $f4, %lo(D_race_800CCCB8)($at)
/* AA9D4 800F4614 46040001 */  sub.s      $f0, $f0, $f4
/* AA9D8 800F4618 C6020260 */  lwc1       $f2, 0x260($s0)
/* AA9DC 800F461C 46001082 */  mul.s      $f2, $f2, $f0
/* AA9E0 800F4620 46041500 */  add.s      $f20, $f2, $f4
/* AA9E4 800F4624 3C01800D */  lui        $at, %hi(D_race_800CCCBC)
/* AA9E8 800F4628 C420CCBC */  lwc1       $f0, %lo(D_race_800CCCBC)($at)
/* AA9EC 800F462C 4614003C */  c.lt.s     $f0, $f20
/* AA9F0 800F4630 00000000 */  nop
/* AA9F4 800F4634 45030001 */  bc1tl      .Lrace_800F463C
/* AA9F8 800F4638 46000506 */   mov.s     $f20, $f0
.Lrace_800F463C:
/* AA9FC 800F463C 26030034 */  addiu      $v1, $s0, 0x34
/* AAA00 800F4640 8C62005C */  lw         $v0, 0x5C($v1)
/* AAA04 800F4644 30420001 */  andi       $v0, $v0, 0x1
/* AAA08 800F4648 10400005 */  beqz       $v0, .Lrace_800F4660
/* AAA0C 800F464C 00000000 */   nop
/* AAA10 800F4650 3C01800D */  lui        $at, %hi(D_race_800CCCC0)
/* AAA14 800F4654 C420CCC0 */  lwc1       $f0, %lo(D_race_800CCCC0)($at)
/* AAA18 800F4658 E4740058 */  swc1       $f20, 0x58($v1)
/* AAA1C 800F465C E460000C */  swc1       $f0, 0xC($v1)
.Lrace_800F4660:
/* AAA20 800F4660 C6000260 */  lwc1       $f0, 0x260($s0)
/* AAA24 800F4664 46000000 */  add.s      $f0, $f0, $f0
/* AAA28 800F4668 3C01800D */  lui        $at, %hi(D_race_800CCCC4)
/* AAA2C 800F466C C422CCC4 */  lwc1       $f2, %lo(D_race_800CCCC4)($at)
/* AAA30 800F4670 46001081 */  sub.s      $f2, $f2, $f0
/* AAA34 800F4674 3C01800D */  lui        $at, %hi(D_race_800CCCC8)
/* AAA38 800F4678 C420CCC8 */  lwc1       $f0, %lo(D_race_800CCCC8)($at)
/* AAA3C 800F467C 46001082 */  mul.s      $f2, $f2, $f0
/* AAA40 800F4680 44802000 */  mtc1       $zero, $f4
/* AAA44 800F4684 4604103C */  c.lt.s     $f2, $f4
/* AAA48 800F4688 00000000 */  nop
/* AAA4C 800F468C 45000003 */  bc1f       .Lrace_800F469C
/* AAA50 800F4690 E6020254 */   swc1      $f2, 0x254($s0)
/* AAA54 800F4694 0803D1AB */  j          .Lrace_800F46AC
/* AAA58 800F4698 E6040254 */   swc1      $f4, 0x254($s0)
.Lrace_800F469C:
/* AAA5C 800F469C 4602003C */  c.lt.s     $f0, $f2
/* AAA60 800F46A0 00000000 */  nop
/* AAA64 800F46A4 45030001 */  bc1tl      .Lrace_800F46AC
/* AAA68 800F46A8 E6000254 */   swc1      $f0, 0x254($s0)
.Lrace_800F46AC:
/* AAA6C 800F46AC C6000260 */  lwc1       $f0, 0x260($s0)
/* AAA70 800F46B0 3C01800D */  lui        $at, %hi(D_race_800CCCCC)
/* AAA74 800F46B4 C422CCCC */  lwc1       $f2, %lo(D_race_800CCCCC)($at)
/* AAA78 800F46B8 46001081 */  sub.s      $f2, $f2, $f0
/* AAA7C 800F46BC 3C01800D */  lui        $at, %hi(D_race_800CCCD0)
/* AAA80 800F46C0 C420CCD0 */  lwc1       $f0, %lo(D_race_800CCCD0)($at)
/* AAA84 800F46C4 46001082 */  mul.s      $f2, $f2, $f0
/* AAA88 800F46C8 44800000 */  mtc1       $zero, $f0
/* AAA8C 800F46CC 4600103C */  c.lt.s     $f2, $f0
/* AAA90 800F46D0 00000000 */  nop
/* AAA94 800F46D4 45000002 */  bc1f       .Lrace_800F46E0
/* AAA98 800F46D8 E6020258 */   swc1      $f2, 0x258($s0)
/* AAA9C 800F46DC E6000258 */  swc1       $f0, 0x258($s0)
.Lrace_800F46E0:
/* AAAA0 800F46E0 260400C8 */  addiu      $a0, $s0, 0xC8
/* AAAA4 800F46E4 8C820014 */  lw         $v0, 0x14($a0)
/* AAAA8 800F46E8 30420001 */  andi       $v0, $v0, 0x1
/* AAAAC 800F46EC 10400006 */  beqz       $v0, .Lrace_800F4708
/* AAAB0 800F46F0 00000000 */   nop
/* AAAB4 800F46F4 8E02023C */  lw         $v0, 0x23C($s0)
/* AAAB8 800F46F8 8C460014 */  lw         $a2, 0x14($v0)
/* AAABC 800F46FC 8C470018 */  lw         $a3, 0x18($v0)
/* AAAC0 800F4700 0C01A036 */  jal        func_800680D8
/* AAAC4 800F4704 02202821 */   addu      $a1, $s1, $zero
.Lrace_800F4708:
/* AAAC8 800F4708 8FBF0018 */  lw         $ra, 0x18($sp)
/* AAACC 800F470C 8FB10014 */  lw         $s1, 0x14($sp)
/* AAAD0 800F4710 8FB00010 */  lw         $s0, 0x10($sp)
/* AAAD4 800F4714 D7B40020 */  ldc1       $f20, 0x20($sp)
/* AAAD8 800F4718 03E00008 */  jr         $ra
/* AAADC 800F471C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800F4720
/* AAAE0 800F4720 03E00008 */  jr         $ra
/* AAAE4 800F4724 00000000 */   nop

glabel func_race_800F4728
/* AAAE8 800F4728 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AAAEC 800F472C AFB10014 */  sw         $s1, 0x14($sp)
/* AAAF0 800F4730 00808821 */  addu       $s1, $a0, $zero
/* AAAF4 800F4734 AFBF001C */  sw         $ra, 0x1C($sp)
/* AAAF8 800F4738 AFB20018 */  sw         $s2, 0x18($sp)
/* AAAFC 800F473C AFB00010 */  sw         $s0, 0x10($sp)
/* AAB00 800F4740 8E230004 */  lw         $v1, 0x4($s1)
/* AAB04 800F4744 2C620002 */  sltiu      $v0, $v1, 0x2
/* AAB08 800F4748 1440004E */  bnez       $v0, .Lrace_800F4884
/* AAB0C 800F474C 00A08021 */   addu      $s0, $a1, $zero
/* AAB10 800F4750 24020002 */  addiu      $v0, $zero, 0x2
/* AAB14 800F4754 14620033 */  bne        $v1, $v0, .Lrace_800F4824
/* AAB18 800F4758 24020003 */   addiu     $v0, $zero, 0x3
/* AAB1C 800F475C 8E22022C */  lw         $v0, 0x22C($s1)
/* AAB20 800F4760 1040000E */  beqz       $v0, .Lrace_800F479C
/* AAB24 800F4764 24060001 */   addiu     $a2, $zero, 0x1
/* AAB28 800F4768 8E220280 */  lw         $v0, 0x280($s1)
/* AAB2C 800F476C 1040000B */  beqz       $v0, .Lrace_800F479C
/* AAB30 800F4770 240500B4 */   addiu     $a1, $zero, 0xB4
/* AAB34 800F4774 8E02012C */  lw         $v0, 0x12C($s0)
/* AAB38 800F4778 24060002 */  addiu      $a2, $zero, 0x2
/* AAB3C 800F477C 84440170 */  lh         $a0, 0x170($v0)
/* AAB40 800F4780 8C420174 */  lw         $v0, 0x174($v0)
/* AAB44 800F4784 0040F809 */  jalr       $v0
/* AAB48 800F4788 02042021 */   addu      $a0, $s0, $a0
/* AAB4C 800F478C 262400E4 */  addiu      $a0, $s1, 0xE4
/* AAB50 800F4790 0C03A0C6 */  jal        func_race_800E8318
/* AAB54 800F4794 02002821 */   addu      $a1, $s0, $zero
/* AAB58 800F4798 24060001 */  addiu      $a2, $zero, 0x1
.Lrace_800F479C:
/* AAB5C 800F479C C6200254 */  lwc1       $f0, 0x254($s1)
/* AAB60 800F47A0 8E02012C */  lw         $v0, 0x12C($s0)
/* AAB64 800F47A4 4600008D */  trunc.w.s  $f2, $f0
/* AAB68 800F47A8 44051000 */  mfc1       $a1, $f2
/* AAB6C 800F47AC 84440170 */  lh         $a0, 0x170($v0)
/* AAB70 800F47B0 8C420174 */  lw         $v0, 0x174($v0)
/* AAB74 800F47B4 0040F809 */  jalr       $v0
/* AAB78 800F47B8 02042021 */   addu      $a0, $s0, $a0
/* AAB7C 800F47BC 8E2500C4 */  lw         $a1, 0xC4($s1)
/* AAB80 800F47C0 10A00007 */  beqz       $a1, .Lrace_800F47E0
/* AAB84 800F47C4 26320034 */   addiu     $s2, $s1, 0x34
/* AAB88 800F47C8 8E02012C */  lw         $v0, 0x12C($s0)
/* AAB8C 800F47CC 84440168 */  lh         $a0, 0x168($v0)
/* AAB90 800F47D0 8C42016C */  lw         $v0, 0x16C($v0)
/* AAB94 800F47D4 0040F809 */  jalr       $v0
/* AAB98 800F47D8 02042021 */   addu      $a0, $s0, $a0
/* AAB9C 800F47DC 26320034 */  addiu      $s2, $s1, 0x34
.Lrace_800F47E0:
/* AABA0 800F47E0 8E42005C */  lw         $v0, 0x5C($s2)
/* AABA4 800F47E4 30420001 */  andi       $v0, $v0, 0x1
/* AABA8 800F47E8 10400021 */  beqz       $v0, .Lrace_800F4870
/* AABAC 800F47EC 24060001 */   addiu     $a2, $zero, 0x1
/* AABB0 800F47F0 C6200258 */  lwc1       $f0, 0x258($s1)
/* AABB4 800F47F4 8E02012C */  lw         $v0, 0x12C($s0)
/* AABB8 800F47F8 4600008D */  trunc.w.s  $f2, $f0
/* AABBC 800F47FC 44051000 */  mfc1       $a1, $f2
/* AABC0 800F4800 84440170 */  lh         $a0, 0x170($v0)
/* AABC4 800F4804 8C420174 */  lw         $v0, 0x174($v0)
/* AABC8 800F4808 0040F809 */  jalr       $v0
/* AABCC 800F480C 02042021 */   addu      $a0, $s0, $a0
/* AABD0 800F4810 02402021 */  addu       $a0, $s2, $zero
/* AABD4 800F4814 0C016203 */  jal        func_8005880C
/* AABD8 800F4818 02002821 */   addu      $a1, $s0, $zero
/* AABDC 800F481C 0803D21C */  j          .Lrace_800F4870
/* AABE0 800F4820 00000000 */   nop
.Lrace_800F4824:
/* AABE4 800F4824 14620017 */  bne        $v1, $v0, .Lrace_800F4884
/* AABE8 800F4828 00000000 */   nop
/* AABEC 800F482C 8E22022C */  lw         $v0, 0x22C($s1)
/* AABF0 800F4830 10400014 */  beqz       $v0, .Lrace_800F4884
/* AABF4 800F4834 00000000 */   nop
/* AABF8 800F4838 8E220280 */  lw         $v0, 0x280($s1)
/* AABFC 800F483C 10400011 */  beqz       $v0, .Lrace_800F4884
/* AAC00 800F4840 24060002 */   addiu     $a2, $zero, 0x2
/* AAC04 800F4844 C6200254 */  lwc1       $f0, 0x254($s1)
/* AAC08 800F4848 8E02012C */  lw         $v0, 0x12C($s0)
/* AAC0C 800F484C 4600008D */  trunc.w.s  $f2, $f0
/* AAC10 800F4850 44051000 */  mfc1       $a1, $f2
/* AAC14 800F4854 84440170 */  lh         $a0, 0x170($v0)
/* AAC18 800F4858 8C420174 */  lw         $v0, 0x174($v0)
/* AAC1C 800F485C 0040F809 */  jalr       $v0
/* AAC20 800F4860 02042021 */   addu      $a0, $s0, $a0
/* AAC24 800F4864 262400E4 */  addiu      $a0, $s1, 0xE4
/* AAC28 800F4868 0C03A0C6 */  jal        func_race_800E8318
/* AAC2C 800F486C 02002821 */   addu      $a1, $s0, $zero
.Lrace_800F4870:
/* AAC30 800F4870 8E02012C */  lw         $v0, 0x12C($s0)
/* AAC34 800F4874 84440178 */  lh         $a0, 0x178($v0)
/* AAC38 800F4878 8C42017C */  lw         $v0, 0x17C($v0)
/* AAC3C 800F487C 0040F809 */  jalr       $v0
/* AAC40 800F4880 02042021 */   addu      $a0, $s0, $a0
.Lrace_800F4884:
/* AAC44 800F4884 8FBF001C */  lw         $ra, 0x1C($sp)
/* AAC48 800F4888 8FB20018 */  lw         $s2, 0x18($sp)
/* AAC4C 800F488C 8FB10014 */  lw         $s1, 0x14($sp)
/* AAC50 800F4890 8FB00010 */  lw         $s0, 0x10($sp)
/* AAC54 800F4894 03E00008 */  jr         $ra
/* AAC58 800F4898 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F489C
/* AAC5C 800F489C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* AAC60 800F48A0 AFB10054 */  sw         $s1, 0x54($sp)
/* AAC64 800F48A4 00808821 */  addu       $s1, $a0, $zero
/* AAC68 800F48A8 AFBF0058 */  sw         $ra, 0x58($sp)
/* AAC6C 800F48AC AFB00050 */  sw         $s0, 0x50($sp)
/* AAC70 800F48B0 F7B40060 */  sdc1       $f20, 0x60($sp)
/* AAC74 800F48B4 8E230244 */  lw         $v1, 0x244($s1)
/* AAC78 800F48B8 10600073 */  beqz       $v1, .Lrace_800F4A88
/* AAC7C 800F48BC 00000000 */   nop
/* AAC80 800F48C0 8CA40014 */  lw         $a0, 0x14($a1)
/* AAC84 800F48C4 8E220234 */  lw         $v0, 0x234($s1)
/* AAC88 800F48C8 1082006F */  beq        $a0, $v0, .Lrace_800F4A88
/* AAC8C 800F48CC 00000000 */   nop
/* AAC90 800F48D0 8C820D04 */  lw         $v0, 0xD04($a0)
/* AAC94 800F48D4 30420001 */  andi       $v0, $v0, 0x1
/* AAC98 800F48D8 1440006B */  bnez       $v0, .Lrace_800F4A88
/* AAC9C 800F48DC 249003FC */   addiu     $s0, $a0, 0x3FC
/* AACA0 800F48E0 24020001 */  addiu      $v0, $zero, 0x1
/* AACA4 800F48E4 10620005 */  beq        $v1, $v0, .Lrace_800F48FC
/* AACA8 800F48E8 24020002 */   addiu     $v0, $zero, 0x2
/* AACAC 800F48EC 10620011 */  beq        $v1, $v0, .Lrace_800F4934
/* AACB0 800F48F0 00000000 */   nop
/* AACB4 800F48F4 0803D2A2 */  j          .Lrace_800F4A88
/* AACB8 800F48F8 00000000 */   nop
.Lrace_800F48FC:
/* AACBC 800F48FC 8E0206AC */  lw         $v0, 0x6AC($s0)
/* AACC0 800F4900 30420002 */  andi       $v0, $v0, 0x2
/* AACC4 800F4904 14400060 */  bnez       $v0, .Lrace_800F4A88
/* AACC8 800F4908 00003821 */   addu      $a3, $zero, $zero
/* AACCC 800F490C 8E0200CC */  lw         $v0, 0xCC($s0)
/* AACD0 800F4910 3C054000 */  lui        $a1, (0x40000000 >> 16)
/* AACD4 800F4914 3C063BE5 */  lui        $a2, (0x3BE56042 >> 16)
/* AACD8 800F4918 34C66042 */  ori        $a2, $a2, (0x3BE56042 & 0xFFFF)
/* AACDC 800F491C 84440050 */  lh         $a0, 0x50($v0)
/* AACE0 800F4920 8C420054 */  lw         $v0, 0x54($v0)
/* AACE4 800F4924 0040F809 */  jalr       $v0
/* AACE8 800F4928 02042021 */   addu      $a0, $s0, $a0
/* AACEC 800F492C 0803D2A2 */  j          .Lrace_800F4A88
/* AACF0 800F4930 00000000 */   nop
.Lrace_800F4934:
/* AACF4 800F4934 8E0206AC */  lw         $v0, 0x6AC($s0)
/* AACF8 800F4938 30420080 */  andi       $v0, $v0, 0x80
/* AACFC 800F493C 10400004 */  beqz       $v0, .Lrace_800F4950
/* AAD00 800F4940 00001821 */   addu      $v1, $zero, $zero
/* AAD04 800F4944 8C820D08 */  lw         $v0, 0xD08($a0)
/* AAD08 800F4948 38420002 */  xori       $v0, $v0, 0x2
/* AAD0C 800F494C 0002182B */  sltu       $v1, $zero, $v0
.Lrace_800F4950:
/* AAD10 800F4950 1460004D */  bnez       $v1, .Lrace_800F4A88
/* AAD14 800F4954 00000000 */   nop
/* AAD18 800F4958 3C01800D */  lui        $at, %hi(D_race_800CCCD4)
/* AAD1C 800F495C C434CCD4 */  lwc1       $f20, %lo(D_race_800CCCD4)($at)
/* AAD20 800F4960 8C880568 */  lw         $t0, 0x568($a0)
/* AAD24 800F4964 8C89056C */  lw         $t1, 0x56C($a0)
/* AAD28 800F4968 8C8A0570 */  lw         $t2, 0x570($a0)
/* AAD2C 800F496C AFA80020 */  sw         $t0, 0x20($sp)
/* AAD30 800F4970 AFA90024 */  sw         $t1, 0x24($sp)
/* AAD34 800F4974 AFAA0028 */  sw         $t2, 0x28($sp)
/* AAD38 800F4978 AFA00030 */  sw         $zero, 0x30($sp)
/* AAD3C 800F497C AFA00034 */  sw         $zero, 0x34($sp)
/* AAD40 800F4980 0C04355D */  jal        func_race_8010D574
/* AAD44 800F4984 E7B40038 */   swc1      $f20, 0x38($sp)
/* AAD48 800F4988 AFA00010 */  sw         $zero, 0x10($sp)
/* AAD4C 800F498C C7A40010 */  lwc1       $f4, 0x10($sp)
/* AAD50 800F4990 27A20010 */  addiu      $v0, $sp, 0x10
/* AAD54 800F4994 AFA00014 */  sw         $zero, 0x14($sp)
/* AAD58 800F4998 AFA00018 */  sw         $zero, 0x18($sp)
/* AAD5C 800F499C E6040004 */  swc1       $f4, 0x4($s0)
/* AAD60 800F49A0 C4400004 */  lwc1       $f0, 0x4($v0)
/* AAD64 800F49A4 E6000008 */  swc1       $f0, 0x8($s0)
/* AAD68 800F49A8 C4400008 */  lwc1       $f0, 0x8($v0)
/* AAD6C 800F49AC E600000C */  swc1       $f0, 0xC($s0)
/* AAD70 800F49B0 8E220248 */  lw         $v0, 0x248($s1)
/* AAD74 800F49B4 1040000F */  beqz       $v0, .Lrace_800F49F4
/* AAD78 800F49B8 4600A086 */   mov.s     $f2, $f20
/* AAD7C 800F49BC C6200250 */  lwc1       $f0, 0x250($s1)
/* AAD80 800F49C0 46800020 */  cvt.s.w    $f0, $f0
/* AAD84 800F49C4 44821000 */  mtc1       $v0, $f2
/* AAD88 800F49C8 468010A0 */  cvt.s.w    $f2, $f2
/* AAD8C 800F49CC 46020003 */  div.s      $f0, $f0, $f2
/* AAD90 800F49D0 46000080 */  add.s      $f2, $f0, $f0
/* AAD94 800F49D4 4602A03C */  c.lt.s     $f20, $f2
/* AAD98 800F49D8 00000000 */  nop
/* AAD9C 800F49DC 45030005 */  bc1tl      .Lrace_800F49F4
/* AADA0 800F49E0 4600A086 */   mov.s     $f2, $f20
/* AADA4 800F49E4 4604103C */  c.lt.s     $f2, $f4
/* AADA8 800F49E8 00000000 */  nop
/* AADAC 800F49EC 45030001 */  bc1tl      .Lrace_800F49F4
/* AADB0 800F49F0 46002086 */   mov.s     $f2, $f4
.Lrace_800F49F4:
/* AADB4 800F49F4 3C01800D */  lui        $at, %hi(D_race_800CCCD8)
/* AADB8 800F49F8 C420CCD8 */  lwc1       $f0, %lo(D_race_800CCCD8)($at)
/* AADBC 800F49FC 46001002 */  mul.s      $f0, $f2, $f0
/* AADC0 800F4A00 C7AC0020 */  lwc1       $f12, 0x20($sp)
/* AADC4 800F4A04 46006302 */  mul.s      $f12, $f12, $f0
/* AADC8 800F4A08 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* AADCC 800F4A0C 46005282 */  mul.s      $f10, $f10, $f0
/* AADD0 800F4A10 27A50010 */  addiu      $a1, $sp, 0x10
/* AADD4 800F4A14 E7AC0010 */  swc1       $f12, 0x10($sp)
/* AADD8 800F4A18 E4AA0004 */  swc1       $f10, 0x4($a1)
/* AADDC 800F4A1C C7A80028 */  lwc1       $f8, 0x28($sp)
/* AADE0 800F4A20 46004202 */  mul.s      $f8, $f8, $f0
/* AADE4 800F4A24 3C01800D */  lui        $at, %hi(D_race_800CCCDC)
/* AADE8 800F4A28 C420CCDC */  lwc1       $f0, %lo(D_race_800CCCDC)($at)
/* AADEC 800F4A2C 46001002 */  mul.s      $f0, $f2, $f0
/* AADF0 800F4A30 E4A80008 */  swc1       $f8, 0x8($a1)
/* AADF4 800F4A34 C7A20030 */  lwc1       $f2, 0x30($sp)
/* AADF8 800F4A38 46001082 */  mul.s      $f2, $f2, $f0
/* AADFC 800F4A3C C7A40034 */  lwc1       $f4, 0x34($sp)
/* AAE00 800F4A40 46002102 */  mul.s      $f4, $f4, $f0
/* AAE04 800F4A44 C7A60038 */  lwc1       $f6, 0x38($sp)
/* AAE08 800F4A48 46003182 */  mul.s      $f6, $f6, $f0
/* AAE0C 800F4A4C 46026300 */  add.s      $f12, $f12, $f2
/* AAE10 800F4A50 E7A20040 */  swc1       $f2, 0x40($sp)
/* AAE14 800F4A54 46045280 */  add.s      $f10, $f10, $f4
/* AAE18 800F4A58 E7A40044 */  swc1       $f4, 0x44($sp)
/* AAE1C 800F4A5C E7A60048 */  swc1       $f6, 0x48($sp)
/* AAE20 800F4A60 46064200 */  add.s      $f8, $f8, $f6
/* AAE24 800F4A64 E7AC0010 */  swc1       $f12, 0x10($sp)
/* AAE28 800F4A68 E4AA0004 */  swc1       $f10, 0x4($a1)
/* AAE2C 800F4A6C E4A80008 */  swc1       $f8, 0x8($a1)
/* AAE30 800F4A70 8E0200CC */  lw         $v0, 0xCC($s0)
/* AAE34 800F4A74 00A03021 */  addu       $a2, $a1, $zero
/* AAE38 800F4A78 84440048 */  lh         $a0, 0x48($v0)
/* AAE3C 800F4A7C 8C42004C */  lw         $v0, 0x4C($v0)
/* AAE40 800F4A80 0040F809 */  jalr       $v0
/* AAE44 800F4A84 02042021 */   addu      $a0, $s0, $a0
.Lrace_800F4A88:
/* AAE48 800F4A88 8FBF0058 */  lw         $ra, 0x58($sp)
/* AAE4C 800F4A8C 8FB10054 */  lw         $s1, 0x54($sp)
/* AAE50 800F4A90 8FB00050 */  lw         $s0, 0x50($sp)
/* AAE54 800F4A94 D7B40060 */  ldc1       $f20, 0x60($sp)
/* AAE58 800F4A98 03E00008 */  jr         $ra
/* AAE5C 800F4A9C 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_800F4AA0
/* AAE60 800F4AA0 03E00008 */  jr         $ra
/* AAE64 800F4AA4 AC850284 */   sw        $a1, 0x284($a0)

glabel func_race_800F4AA8
/* AAE68 800F4AA8 8C820284 */  lw         $v0, 0x284($a0)
/* AAE6C 800F4AAC 03E00008 */  jr         $ra
/* AAE70 800F4AB0 00000000 */   nop

glabel func_race_800F4AB4
/* AAE74 800F4AB4 8C820250 */  lw         $v0, 0x250($a0)
/* AAE78 800F4AB8 03E00008 */  jr         $ra
/* AAE7C 800F4ABC 00000000 */   nop

glabel func_race_800F4AC0
/* AAE80 800F4AC0 8C820004 */  lw         $v0, 0x4($a0)
/* AAE84 800F4AC4 03E00008 */  jr         $ra
/* AAE88 800F4AC8 00000000 */   nop

glabel func_race_800F4ACC
/* AAE8C 800F4ACC 8C820004 */  lw         $v0, 0x4($a0)
/* AAE90 800F4AD0 03E00008 */  jr         $ra
/* AAE94 800F4AD4 0002102B */   sltu      $v0, $zero, $v0
