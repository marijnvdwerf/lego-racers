.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80116CB0
/* CD070 80116CB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD074 80116CB4 AFB00010 */  sw         $s0, 0x10($sp)
/* CD078 80116CB8 00808021 */  addu       $s0, $a0, $zero
/* CD07C 80116CBC 3C02800D */  lui        $v0, %hi(D_race_800CDF88)
/* CD080 80116CC0 2442DF88 */  addiu      $v0, $v0, %lo(D_race_800CDF88)
/* CD084 80116CC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* CD088 80116CC8 0C045B39 */  jal        func_race_80116CE4
/* CD08C 80116CCC AE0200CC */   sw        $v0, 0xCC($s0)
/* CD090 80116CD0 02001021 */  addu       $v0, $s0, $zero
/* CD094 80116CD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* CD098 80116CD8 8FB00010 */  lw         $s0, 0x10($sp)
/* CD09C 80116CDC 03E00008 */  jr         $ra
/* CD0A0 80116CE0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80116CE4
/* CD0A4 80116CE4 3C01800D */  lui        $at, %hi(D_race_800CDF60)
/* CD0A8 80116CE8 C420DF60 */  lwc1       $f0, %lo(D_race_800CDF60)($at)
/* CD0AC 80116CEC AC800000 */  sw         $zero, 0x0($a0)
/* CD0B0 80116CF0 AC800010 */  sw         $zero, 0x10($a0)
/* CD0B4 80116CF4 AC800014 */  sw         $zero, 0x14($a0)
/* CD0B8 80116CF8 AC800018 */  sw         $zero, 0x18($a0)
/* CD0BC 80116CFC AC80001C */  sw         $zero, 0x1C($a0)
/* CD0C0 80116D00 AC800020 */  sw         $zero, 0x20($a0)
/* CD0C4 80116D04 AC800024 */  sw         $zero, 0x24($a0)
/* CD0C8 80116D08 AC800094 */  sw         $zero, 0x94($a0)
/* CD0CC 80116D0C AC800098 */  sw         $zero, 0x98($a0)
/* CD0D0 80116D10 AC80009C */  sw         $zero, 0x9C($a0)
/* CD0D4 80116D14 AC8000A0 */  sw         $zero, 0xA0($a0)
/* CD0D8 80116D18 AC8000A4 */  sw         $zero, 0xA4($a0)
/* CD0DC 80116D1C AC8000A8 */  sw         $zero, 0xA8($a0)
/* CD0E0 80116D20 AC8000AC */  sw         $zero, 0xAC($a0)
/* CD0E4 80116D24 AC8000B0 */  sw         $zero, 0xB0($a0)
/* CD0E8 80116D28 AC8000B4 */  sw         $zero, 0xB4($a0)
/* CD0EC 80116D2C AC8000B8 */  sw         $zero, 0xB8($a0)
/* CD0F0 80116D30 AC8000BC */  sw         $zero, 0xBC($a0)
/* CD0F4 80116D34 AC8000C0 */  sw         $zero, 0xC0($a0)
/* CD0F8 80116D38 E48000C4 */  swc1       $f0, 0xC4($a0)
/* CD0FC 80116D3C 03E00008 */  jr         $ra
/* CD100 80116D40 E48000C8 */   swc1      $f0, 0xC8($a0)

glabel func_race_80116D44
/* CD104 80116D44 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CD108 80116D48 AFB00010 */  sw         $s0, 0x10($sp)
/* CD10C 80116D4C 00808021 */  addu       $s0, $a0, $zero
/* CD110 80116D50 AFB10014 */  sw         $s1, 0x14($sp)
/* CD114 80116D54 AFBF0018 */  sw         $ra, 0x18($sp)
/* CD118 80116D58 F7B40020 */  sdc1       $f20, 0x20($sp)
/* CD11C 80116D5C 8E020000 */  lw         $v0, 0x0($s0)
/* CD120 80116D60 4486A000 */  mtc1       $a2, $f20
/* CD124 80116D64 10400003 */  beqz       $v0, .Lrace_80116D74
/* CD128 80116D68 00A08821 */   addu      $s1, $a1, $zero
/* CD12C 80116D6C 0C045B39 */  jal        func_race_80116CE4
/* CD130 80116D70 00000000 */   nop
.Lrace_80116D74:
/* CD134 80116D74 3C01800D */  lui        $at, %hi(D_race_800CDF64)
/* CD138 80116D78 C420DF64 */  lwc1       $f0, %lo(D_race_800CDF64)($at)
/* CD13C 80116D7C 8E0200CC */  lw         $v0, 0xCC($s0)
/* CD140 80116D80 AE110000 */  sw         $s1, 0x0($s0)
/* CD144 80116D84 AE000004 */  sw         $zero, 0x4($s0)
/* CD148 80116D88 AE000008 */  sw         $zero, 0x8($s0)
/* CD14C 80116D8C AE00000C */  sw         $zero, 0xC($s0)
/* CD150 80116D90 E61400C4 */  swc1       $f20, 0xC4($s0)
/* CD154 80116D94 46140003 */  div.s      $f0, $f0, $f20
/* CD158 80116D98 E60000C8 */  swc1       $f0, 0xC8($s0)
/* CD15C 80116D9C 84440008 */  lh         $a0, 0x8($v0)
/* CD160 80116DA0 8C42000C */  lw         $v0, 0xC($v0)
/* CD164 80116DA4 0040F809 */  jalr       $v0
/* CD168 80116DA8 02042021 */   addu      $a0, $s0, $a0
/* CD16C 80116DAC 0C045B7A */  jal        func_race_80116DE8
/* CD170 80116DB0 02002021 */   addu      $a0, $s0, $zero
/* CD174 80116DB4 8FBF0018 */  lw         $ra, 0x18($sp)
/* CD178 80116DB8 8FB10014 */  lw         $s1, 0x14($sp)
/* CD17C 80116DBC 8FB00010 */  lw         $s0, 0x10($sp)
/* CD180 80116DC0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* CD184 80116DC4 03E00008 */  jr         $ra
/* CD188 80116DC8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80116DCC
/* CD18C 80116DCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD190 80116DD0 AFBF0010 */  sw         $ra, 0x10($sp)
/* CD194 80116DD4 0C045B39 */  jal        func_race_80116CE4
/* CD198 80116DD8 00000000 */   nop
/* CD19C 80116DDC 8FBF0010 */  lw         $ra, 0x10($sp)
/* CD1A0 80116DE0 03E00008 */  jr         $ra
/* CD1A4 80116DE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80116DE8
/* CD1A8 80116DE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD1AC 80116DEC 00803021 */  addu       $a2, $a0, $zero
/* CD1B0 80116DF0 24C5004C */  addiu      $a1, $a2, 0x4C
/* CD1B4 80116DF4 AFBF0010 */  sw         $ra, 0x10($sp)
/* CD1B8 80116DF8 8CC40000 */  lw         $a0, 0x0($a2)
/* CD1BC 80116DFC 0C015984 */  jal        func_80056610
/* CD1C0 80116E00 24C60070 */   addiu     $a2, $a2, 0x70
/* CD1C4 80116E04 8FBF0010 */  lw         $ra, 0x10($sp)
/* CD1C8 80116E08 03E00008 */  jr         $ra
/* CD1CC 80116E0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80116E10
/* CD1D0 80116E10 C4920070 */  lwc1       $f18, 0x70($a0)
/* CD1D4 80116E14 C48000A0 */  lwc1       $f0, 0xA0($a0)
/* CD1D8 80116E18 46009482 */  mul.s      $f18, $f18, $f0
/* CD1DC 80116E1C C48E0074 */  lwc1       $f14, 0x74($a0)
/* CD1E0 80116E20 46007382 */  mul.s      $f14, $f14, $f0
/* CD1E4 80116E24 C4900078 */  lwc1       $f16, 0x78($a0)
/* CD1E8 80116E28 46008402 */  mul.s      $f16, $f16, $f0
/* CD1EC 80116E2C C482007C */  lwc1       $f2, 0x7C($a0)
/* CD1F0 80116E30 C48000A4 */  lwc1       $f0, 0xA4($a0)
/* CD1F4 80116E34 46001082 */  mul.s      $f2, $f2, $f0
/* CD1F8 80116E38 C4840080 */  lwc1       $f4, 0x80($a0)
/* CD1FC 80116E3C 46002102 */  mul.s      $f4, $f4, $f0
/* CD200 80116E40 C4860084 */  lwc1       $f6, 0x84($a0)
/* CD204 80116E44 46003182 */  mul.s      $f6, $f6, $f0
/* CD208 80116E48 C48A0088 */  lwc1       $f10, 0x88($a0)
/* CD20C 80116E4C C48000A8 */  lwc1       $f0, 0xA8($a0)
/* CD210 80116E50 46005282 */  mul.s      $f10, $f10, $f0
/* CD214 80116E54 C48C008C */  lwc1       $f12, 0x8C($a0)
/* CD218 80116E58 46006302 */  mul.s      $f12, $f12, $f0
/* CD21C 80116E5C C4880090 */  lwc1       $f8, 0x90($a0)
/* CD220 80116E60 46004202 */  mul.s      $f8, $f8, $f0
/* CD224 80116E64 E4920094 */  swc1       $f18, 0x94($a0)
/* CD228 80116E68 46009006 */  mov.s      $f0, $f18
/* CD22C 80116E6C 46020000 */  add.s      $f0, $f0, $f2
/* CD230 80116E70 E48E0098 */  swc1       $f14, 0x98($a0)
/* CD234 80116E74 46007086 */  mov.s      $f2, $f14
/* CD238 80116E78 46041080 */  add.s      $f2, $f2, $f4
/* CD23C 80116E7C E490009C */  swc1       $f16, 0x9C($a0)
/* CD240 80116E80 46008106 */  mov.s      $f4, $f16
/* CD244 80116E84 46062100 */  add.s      $f4, $f4, $f6
/* CD248 80116E88 E4800094 */  swc1       $f0, 0x94($a0)
/* CD24C 80116E8C 46000186 */  mov.s      $f6, $f0
/* CD250 80116E90 460A3180 */  add.s      $f6, $f6, $f10
/* CD254 80116E94 E4820098 */  swc1       $f2, 0x98($a0)
/* CD258 80116E98 460C1080 */  add.s      $f2, $f2, $f12
/* CD25C 80116E9C E484009C */  swc1       $f4, 0x9C($a0)
/* CD260 80116EA0 46002006 */  mov.s      $f0, $f4
/* CD264 80116EA4 46080000 */  add.s      $f0, $f0, $f8
/* CD268 80116EA8 E4860094 */  swc1       $f6, 0x94($a0)
/* CD26C 80116EAC E4820098 */  swc1       $f2, 0x98($a0)
/* CD270 80116EB0 03E00008 */  jr         $ra
/* CD274 80116EB4 E480009C */   swc1      $f0, 0x9C($a0)

glabel func_race_80116EB8
/* CD278 80116EB8 C48000AC */  lwc1       $f0, 0xAC($a0)
/* CD27C 80116EBC C4A20000 */  lwc1       $f2, 0x0($a1)
/* CD280 80116EC0 46020000 */  add.s      $f0, $f0, $f2
/* CD284 80116EC4 E48000AC */  swc1       $f0, 0xAC($a0)
/* CD288 80116EC8 C48000B0 */  lwc1       $f0, 0xB0($a0)
/* CD28C 80116ECC C4A20004 */  lwc1       $f2, 0x4($a1)
/* CD290 80116ED0 46020000 */  add.s      $f0, $f0, $f2
/* CD294 80116ED4 E48000B0 */  swc1       $f0, 0xB0($a0)
/* CD298 80116ED8 C48000B4 */  lwc1       $f0, 0xB4($a0)
/* CD29C 80116EDC C4A20008 */  lwc1       $f2, 0x8($a1)
/* CD2A0 80116EE0 46020000 */  add.s      $f0, $f0, $f2
/* CD2A4 80116EE4 03E00008 */  jr         $ra
/* CD2A8 80116EE8 E48000B4 */   swc1      $f0, 0xB4($a0)

glabel func_race_80116EEC
/* CD2AC 80116EEC C4C40000 */  lwc1       $f4, 0x0($a2)
/* CD2B0 80116EF0 C480001C */  lwc1       $f0, 0x1C($a0)
/* CD2B4 80116EF4 46002101 */  sub.s      $f4, $f4, $f0
/* CD2B8 80116EF8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CD2BC 80116EFC E7A40000 */  swc1       $f4, 0x0($sp)
/* CD2C0 80116F00 C4C60004 */  lwc1       $f6, 0x4($a2)
/* CD2C4 80116F04 C4800020 */  lwc1       $f0, 0x20($a0)
/* CD2C8 80116F08 46003181 */  sub.s      $f6, $f6, $f0
/* CD2CC 80116F0C E7A60004 */  swc1       $f6, 0x4($sp)
/* CD2D0 80116F10 C4C20008 */  lwc1       $f2, 0x8($a2)
/* CD2D4 80116F14 C4800024 */  lwc1       $f0, 0x24($a0)
/* CD2D8 80116F18 46001081 */  sub.s      $f2, $f2, $f0
/* CD2DC 80116F1C E7A20008 */  swc1       $f2, 0x8($sp)
/* CD2E0 80116F20 C4A80008 */  lwc1       $f8, 0x8($a1)
/* CD2E4 80116F24 46083202 */  mul.s      $f8, $f6, $f8
/* CD2E8 80116F28 C4A00004 */  lwc1       $f0, 0x4($a1)
/* CD2EC 80116F2C 46001002 */  mul.s      $f0, $f2, $f0
/* CD2F0 80116F30 46004201 */  sub.s      $f8, $f8, $f0
/* CD2F4 80116F34 E7A80010 */  swc1       $f8, 0x10($sp)
/* CD2F8 80116F38 C4A00000 */  lwc1       $f0, 0x0($a1)
/* CD2FC 80116F3C 46001082 */  mul.s      $f2, $f2, $f0
/* CD300 80116F40 C4A00008 */  lwc1       $f0, 0x8($a1)
/* CD304 80116F44 46002002 */  mul.s      $f0, $f4, $f0
/* CD308 80116F48 46001081 */  sub.s      $f2, $f2, $f0
/* CD30C 80116F4C E7A20014 */  swc1       $f2, 0x14($sp)
/* CD310 80116F50 C4A00004 */  lwc1       $f0, 0x4($a1)
/* CD314 80116F54 46002102 */  mul.s      $f4, $f4, $f0
/* CD318 80116F58 C4A00000 */  lwc1       $f0, 0x0($a1)
/* CD31C 80116F5C 46003182 */  mul.s      $f6, $f6, $f0
/* CD320 80116F60 46062101 */  sub.s      $f4, $f4, $f6
/* CD324 80116F64 E7A40018 */  swc1       $f4, 0x18($sp)
/* CD328 80116F68 C48000B8 */  lwc1       $f0, 0xB8($a0)
/* CD32C 80116F6C 46080000 */  add.s      $f0, $f0, $f8
/* CD330 80116F70 E48000B8 */  swc1       $f0, 0xB8($a0)
/* CD334 80116F74 C48000BC */  lwc1       $f0, 0xBC($a0)
/* CD338 80116F78 C7A20014 */  lwc1       $f2, 0x14($sp)
/* CD33C 80116F7C 46020000 */  add.s      $f0, $f0, $f2
/* CD340 80116F80 E48000BC */  swc1       $f0, 0xBC($a0)
/* CD344 80116F84 C48000C0 */  lwc1       $f0, 0xC0($a0)
/* CD348 80116F88 C7A20018 */  lwc1       $f2, 0x18($sp)
/* CD34C 80116F8C 46020000 */  add.s      $f0, $f0, $f2
/* CD350 80116F90 E48000C0 */  swc1       $f0, 0xC0($a0)
/* CD354 80116F94 03E00008 */  jr         $ra
/* CD358 80116F98 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80116F9C
/* CD35C 80116F9C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* CD360 80116FA0 AFB00040 */  sw         $s0, 0x40($sp)
/* CD364 80116FA4 00808021 */  addu       $s0, $a0, $zero
/* CD368 80116FA8 AFBF0044 */  sw         $ra, 0x44($sp)
/* CD36C 80116FAC 8E030000 */  lw         $v1, 0x0($s0)
/* CD370 80116FB0 8C620024 */  lw         $v0, 0x24($v1)
/* CD374 80116FB4 27A60010 */  addiu      $a2, $sp, 0x10
/* CD378 80116FB8 84440078 */  lh         $a0, 0x78($v0)
/* CD37C 80116FBC 8C42007C */  lw         $v0, 0x7C($v0)
/* CD380 80116FC0 0040F809 */  jalr       $v0
/* CD384 80116FC4 00642021 */   addu      $a0, $v1, $a0
/* CD388 80116FC8 C6020028 */  lwc1       $f2, 0x28($s0)
/* CD38C 80116FCC C7A00010 */  lwc1       $f0, 0x10($sp)
/* CD390 80116FD0 46001082 */  mul.s      $f2, $f2, $f0
/* CD394 80116FD4 E7A20020 */  swc1       $f2, 0x20($sp)
/* CD398 80116FD8 C604002C */  lwc1       $f4, 0x2C($s0)
/* CD39C 80116FDC 46002102 */  mul.s      $f4, $f4, $f0
/* CD3A0 80116FE0 E7A40024 */  swc1       $f4, 0x24($sp)
/* CD3A4 80116FE4 C6060030 */  lwc1       $f6, 0x30($s0)
/* CD3A8 80116FE8 46003182 */  mul.s      $f6, $f6, $f0
/* CD3AC 80116FEC C7A80014 */  lwc1       $f8, 0x14($sp)
/* CD3B0 80116FF0 E7A60028 */  swc1       $f6, 0x28($sp)
/* CD3B4 80116FF4 C6000034 */  lwc1       $f0, 0x34($s0)
/* CD3B8 80116FF8 46080002 */  mul.s      $f0, $f0, $f8
/* CD3BC 80116FFC 46001080 */  add.s      $f2, $f2, $f0
/* CD3C0 80117000 E7A20020 */  swc1       $f2, 0x20($sp)
/* CD3C4 80117004 C6000038 */  lwc1       $f0, 0x38($s0)
/* CD3C8 80117008 46080002 */  mul.s      $f0, $f0, $f8
/* CD3CC 8011700C 46002100 */  add.s      $f4, $f4, $f0
/* CD3D0 80117010 E7A40024 */  swc1       $f4, 0x24($sp)
/* CD3D4 80117014 C600003C */  lwc1       $f0, 0x3C($s0)
/* CD3D8 80117018 46080002 */  mul.s      $f0, $f0, $f8
/* CD3DC 8011701C 46003180 */  add.s      $f6, $f6, $f0
/* CD3E0 80117020 C7A80018 */  lwc1       $f8, 0x18($sp)
/* CD3E4 80117024 E7A60028 */  swc1       $f6, 0x28($sp)
/* CD3E8 80117028 C6000040 */  lwc1       $f0, 0x40($s0)
/* CD3EC 8011702C 46080002 */  mul.s      $f0, $f0, $f8
/* CD3F0 80117030 46001080 */  add.s      $f2, $f2, $f0
/* CD3F4 80117034 E7A20020 */  swc1       $f2, 0x20($sp)
/* CD3F8 80117038 C6000044 */  lwc1       $f0, 0x44($s0)
/* CD3FC 8011703C 46080002 */  mul.s      $f0, $f0, $f8
/* CD400 80117040 46002100 */  add.s      $f4, $f4, $f0
/* CD404 80117044 E7A40024 */  swc1       $f4, 0x24($sp)
/* CD408 80117048 C6000048 */  lwc1       $f0, 0x48($s0)
/* CD40C 8011704C 46080002 */  mul.s      $f0, $f0, $f8
/* CD410 80117050 46003180 */  add.s      $f6, $f6, $f0
/* CD414 80117054 E7A60028 */  swc1       $f6, 0x28($sp)
/* CD418 80117058 8E030000 */  lw         $v1, 0x0($s0)
/* CD41C 8011705C 27A50020 */  addiu      $a1, $sp, 0x20
/* CD420 80117060 8C620024 */  lw         $v0, 0x24($v1)
/* CD424 80117064 27A60030 */  addiu      $a2, $sp, 0x30
/* CD428 80117068 84440070 */  lh         $a0, 0x70($v0)
/* CD42C 8011706C 8C420074 */  lw         $v0, 0x74($v0)
/* CD430 80117070 0040F809 */  jalr       $v0
/* CD434 80117074 00642021 */   addu      $a0, $v1, $a0
/* CD438 80117078 C60000A0 */  lwc1       $f0, 0xA0($s0)
/* CD43C 8011707C C7A20030 */  lwc1       $f2, 0x30($sp)
/* CD440 80117080 46020000 */  add.s      $f0, $f0, $f2
/* CD444 80117084 E60000A0 */  swc1       $f0, 0xA0($s0)
/* CD448 80117088 C60000A4 */  lwc1       $f0, 0xA4($s0)
/* CD44C 8011708C C7A20034 */  lwc1       $f2, 0x34($sp)
/* CD450 80117090 46020000 */  add.s      $f0, $f0, $f2
/* CD454 80117094 E60000A4 */  swc1       $f0, 0xA4($s0)
/* CD458 80117098 C60000A8 */  lwc1       $f0, 0xA8($s0)
/* CD45C 8011709C C7A20038 */  lwc1       $f2, 0x38($sp)
/* CD460 801170A0 46020000 */  add.s      $f0, $f0, $f2
/* CD464 801170A4 E60000A8 */  swc1       $f0, 0xA8($s0)
/* CD468 801170A8 8FBF0044 */  lw         $ra, 0x44($sp)
/* CD46C 801170AC 8FB00040 */  lw         $s0, 0x40($sp)
/* CD470 801170B0 03E00008 */  jr         $ra
/* CD474 801170B4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_801170B8
/* CD478 801170B8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* CD47C 801170BC AFB00040 */  sw         $s0, 0x40($sp)
/* CD480 801170C0 00808021 */  addu       $s0, $a0, $zero
/* CD484 801170C4 AFBF0044 */  sw         $ra, 0x44($sp)
/* CD488 801170C8 C4C60000 */  lwc1       $f6, 0x0($a2)
/* CD48C 801170CC C600001C */  lwc1       $f0, 0x1C($s0)
/* CD490 801170D0 46003181 */  sub.s      $f6, $f6, $f0
/* CD494 801170D4 E7A60010 */  swc1       $f6, 0x10($sp)
/* CD498 801170D8 C4C00004 */  lwc1       $f0, 0x4($a2)
/* CD49C 801170DC C6020020 */  lwc1       $f2, 0x20($s0)
/* CD4A0 801170E0 46020001 */  sub.s      $f0, $f0, $f2
/* CD4A4 801170E4 E7A00014 */  swc1       $f0, 0x14($sp)
/* CD4A8 801170E8 C4C00008 */  lwc1       $f0, 0x8($a2)
/* CD4AC 801170EC C6020024 */  lwc1       $f2, 0x24($s0)
/* CD4B0 801170F0 46020001 */  sub.s      $f0, $f0, $f2
/* CD4B4 801170F4 27A20010 */  addiu      $v0, $sp, 0x10
/* CD4B8 801170F8 E7A00018 */  swc1       $f0, 0x18($sp)
/* CD4BC 801170FC C4480004 */  lwc1       $f8, 0x4($v0)
/* CD4C0 80117100 C4A20008 */  lwc1       $f2, 0x8($a1)
/* CD4C4 80117104 46024082 */  mul.s      $f2, $f8, $f2
/* CD4C8 80117108 C4440008 */  lwc1       $f4, 0x8($v0)
/* CD4CC 8011710C C4A00004 */  lwc1       $f0, 0x4($a1)
/* CD4D0 80117110 46002002 */  mul.s      $f0, $f4, $f0
/* CD4D4 80117114 46001081 */  sub.s      $f2, $f2, $f0
/* CD4D8 80117118 E7A20020 */  swc1       $f2, 0x20($sp)
/* CD4DC 8011711C C4A00000 */  lwc1       $f0, 0x0($a1)
/* CD4E0 80117120 46002102 */  mul.s      $f4, $f4, $f0
/* CD4E4 80117124 C4A00008 */  lwc1       $f0, 0x8($a1)
/* CD4E8 80117128 46003002 */  mul.s      $f0, $f6, $f0
/* CD4EC 8011712C 46002101 */  sub.s      $f4, $f4, $f0
/* CD4F0 80117130 E7A40024 */  swc1       $f4, 0x24($sp)
/* CD4F4 80117134 C4A00004 */  lwc1       $f0, 0x4($a1)
/* CD4F8 80117138 46003182 */  mul.s      $f6, $f6, $f0
/* CD4FC 8011713C C4A00000 */  lwc1       $f0, 0x0($a1)
/* CD500 80117140 46004202 */  mul.s      $f8, $f8, $f0
/* CD504 80117144 46083181 */  sub.s      $f6, $f6, $f8
/* CD508 80117148 27A40020 */  addiu      $a0, $sp, 0x20
/* CD50C 8011714C 00802821 */  addu       $a1, $a0, $zero
/* CD510 80117150 0C000F26 */  jal        func_80003C98
/* CD514 80117154 E7A60028 */   swc1      $f6, 0x28($sp)
/* CD518 80117158 C7AA0020 */  lwc1       $f10, 0x20($sp)
/* CD51C 8011715C C60400A0 */  lwc1       $f4, 0xA0($s0)
/* CD520 80117160 46045102 */  mul.s      $f4, $f10, $f4
/* CD524 80117164 260200A0 */  addiu      $v0, $s0, 0xA0
/* CD528 80117168 C7A80024 */  lwc1       $f8, 0x24($sp)
/* CD52C 8011716C C4420004 */  lwc1       $f2, 0x4($v0)
/* CD530 80117170 46024082 */  mul.s      $f2, $f8, $f2
/* CD534 80117174 C7A60028 */  lwc1       $f6, 0x28($sp)
/* CD538 80117178 C4400008 */  lwc1       $f0, 0x8($v0)
/* CD53C 8011717C 46003002 */  mul.s      $f0, $f6, $f0
/* CD540 80117180 46022100 */  add.s      $f4, $f4, $f2
/* CD544 80117184 46002080 */  add.s      $f2, $f4, $f0
/* CD548 80117188 44800000 */  mtc1       $zero, $f0
/* CD54C 8011718C 4600103C */  c.lt.s     $f2, $f0
/* CD550 80117190 00000000 */  nop
/* CD554 80117194 45010014 */  bc1t       .Lrace_801171E8
/* CD558 80117198 00000000 */   nop
/* CD55C 8011719C 46025102 */  mul.s      $f4, $f10, $f2
/* CD560 801171A0 00000000 */  nop
/* CD564 801171A4 46024002 */  mul.s      $f0, $f8, $f2
/* CD568 801171A8 00000000 */  nop
/* CD56C 801171AC 46023082 */  mul.s      $f2, $f6, $f2
/* CD570 801171B0 E7A40030 */  swc1       $f4, 0x30($sp)
/* CD574 801171B4 E7A00034 */  swc1       $f0, 0x34($sp)
/* CD578 801171B8 E7A20038 */  swc1       $f2, 0x38($sp)
/* CD57C 801171BC C60000A0 */  lwc1       $f0, 0xA0($s0)
/* CD580 801171C0 46040001 */  sub.s      $f0, $f0, $f4
/* CD584 801171C4 E60000A0 */  swc1       $f0, 0xA0($s0)
/* CD588 801171C8 C4400004 */  lwc1       $f0, 0x4($v0)
/* CD58C 801171CC C7A20034 */  lwc1       $f2, 0x34($sp)
/* CD590 801171D0 46020001 */  sub.s      $f0, $f0, $f2
/* CD594 801171D4 E4400004 */  swc1       $f0, 0x4($v0)
/* CD598 801171D8 C4400008 */  lwc1       $f0, 0x8($v0)
/* CD59C 801171DC C7A20038 */  lwc1       $f2, 0x38($sp)
/* CD5A0 801171E0 46020001 */  sub.s      $f0, $f0, $f2
/* CD5A4 801171E4 E4400008 */  swc1       $f0, 0x8($v0)
.Lrace_801171E8:
/* CD5A8 801171E8 8FBF0044 */  lw         $ra, 0x44($sp)
/* CD5AC 801171EC 8FB00040 */  lw         $s0, 0x40($sp)
/* CD5B0 801171F0 03E00008 */  jr         $ra
/* CD5B4 801171F4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_801171F8
/* CD5B8 801171F8 C4A80000 */  lwc1       $f8, 0x0($a1)
/* CD5BC 801171FC C48400A0 */  lwc1       $f4, 0xA0($a0)
/* CD5C0 80117200 46044102 */  mul.s      $f4, $f8, $f4
/* CD5C4 80117204 248200A0 */  addiu      $v0, $a0, 0xA0
/* CD5C8 80117208 C4A60004 */  lwc1       $f6, 0x4($a1)
/* CD5CC 8011720C C4400004 */  lwc1       $f0, 0x4($v0)
/* CD5D0 80117210 46003182 */  mul.s      $f6, $f6, $f0
/* CD5D4 80117214 C4420008 */  lwc1       $f2, 0x8($v0)
/* CD5D8 80117218 C4A00008 */  lwc1       $f0, 0x8($a1)
/* CD5DC 8011721C 46020002 */  mul.s      $f0, $f0, $f2
/* CD5E0 80117220 46062100 */  add.s      $f4, $f4, $f6
/* CD5E4 80117224 46002100 */  add.s      $f4, $f4, $f0
/* CD5E8 80117228 46044202 */  mul.s      $f8, $f8, $f4
/* CD5EC 8011722C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* CD5F0 80117230 E7A80000 */  swc1       $f8, 0x0($sp)
/* CD5F4 80117234 C4A00004 */  lwc1       $f0, 0x4($a1)
/* CD5F8 80117238 46040002 */  mul.s      $f0, $f0, $f4
/* CD5FC 8011723C E7A00004 */  swc1       $f0, 0x4($sp)
/* CD600 80117240 C4A00008 */  lwc1       $f0, 0x8($a1)
/* CD604 80117244 46040002 */  mul.s      $f0, $f0, $f4
/* CD608 80117248 E7A00008 */  swc1       $f0, 0x8($sp)
/* CD60C 8011724C C48000A0 */  lwc1       $f0, 0xA0($a0)
/* CD610 80117250 46080001 */  sub.s      $f0, $f0, $f8
/* CD614 80117254 E48000A0 */  swc1       $f0, 0xA0($a0)
/* CD618 80117258 C4400004 */  lwc1       $f0, 0x4($v0)
/* CD61C 8011725C C7A20004 */  lwc1       $f2, 0x4($sp)
/* CD620 80117260 46020001 */  sub.s      $f0, $f0, $f2
/* CD624 80117264 E4400004 */  swc1       $f0, 0x4($v0)
/* CD628 80117268 C4400008 */  lwc1       $f0, 0x8($v0)
/* CD62C 8011726C C7A20008 */  lwc1       $f2, 0x8($sp)
/* CD630 80117270 46020001 */  sub.s      $f0, $f0, $f2
/* CD634 80117274 E4400008 */  swc1       $f0, 0x8($v0)
/* CD638 80117278 03E00008 */  jr         $ra
/* CD63C 8011727C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_race_80117280
/* CD640 80117280 27BDFF20 */  addiu      $sp, $sp, -0xE0
/* CD644 80117284 AFB100A4 */  sw         $s1, 0xA4($sp)
/* CD648 80117288 00808821 */  addu       $s1, $a0, $zero
/* CD64C 8011728C AFB000A0 */  sw         $s0, 0xA0($sp)
/* CD650 80117290 AFBF00A8 */  sw         $ra, 0xA8($sp)
/* CD654 80117294 F7BE00D8 */  sdc1       $f30, 0xD8($sp)
/* CD658 80117298 F7BC00D0 */  sdc1       $f28, 0xD0($sp)
/* CD65C 8011729C F7BA00C8 */  sdc1       $f26, 0xC8($sp)
/* CD660 801172A0 F7B800C0 */  sdc1       $f24, 0xC0($sp)
/* CD664 801172A4 F7B600B8 */  sdc1       $f22, 0xB8($sp)
/* CD668 801172A8 F7B400B0 */  sdc1       $f20, 0xB0($sp)
/* CD66C 801172AC 0C045B84 */  jal        func_race_80116E10
/* CD670 801172B0 00A08021 */   addu      $s0, $a1, $zero
/* CD674 801172B4 C62000AC */  lwc1       $f0, 0xAC($s1)
/* CD678 801172B8 44906000 */  mtc1       $s0, $f12
/* CD67C 801172BC 46806320 */  cvt.s.w    $f12, $f12
/* CD680 801172C0 460C0002 */  mul.s      $f0, $f0, $f12
/* CD684 801172C4 E7AC0080 */  swc1       $f12, 0x80($sp)
/* CD688 801172C8 C62200C8 */  lwc1       $f2, 0xC8($s1)
/* CD68C 801172CC 46020002 */  mul.s      $f0, $f0, $f2
/* CD690 801172D0 E7A00020 */  swc1       $f0, 0x20($sp)
/* CD694 801172D4 C62000B0 */  lwc1       $f0, 0xB0($s1)
/* CD698 801172D8 460C0002 */  mul.s      $f0, $f0, $f12
/* CD69C 801172DC C62200C8 */  lwc1       $f2, 0xC8($s1)
/* CD6A0 801172E0 46020002 */  mul.s      $f0, $f0, $f2
/* CD6A4 801172E4 E7A00024 */  swc1       $f0, 0x24($sp)
/* CD6A8 801172E8 C62000B4 */  lwc1       $f0, 0xB4($s1)
/* CD6AC 801172EC 460C0002 */  mul.s      $f0, $f0, $f12
/* CD6B0 801172F0 C62200C8 */  lwc1       $f2, 0xC8($s1)
/* CD6B4 801172F4 46020002 */  mul.s      $f0, $f0, $f2
/* CD6B8 801172F8 27A50010 */  addiu      $a1, $sp, 0x10
/* CD6BC 801172FC E7A00028 */  swc1       $f0, 0x28($sp)
/* CD6C0 80117300 8E230000 */  lw         $v1, 0x0($s1)
/* CD6C4 80117304 3C01800D */  lui        $at, %hi(D_race_800CDF68)
/* CD6C8 80117308 C434DF68 */  lwc1       $f20, %lo(D_race_800CDF68)($at)
/* CD6CC 8011730C 8C620024 */  lw         $v0, 0x24($v1)
/* CD6D0 80117310 46146502 */  mul.s      $f20, $f12, $f20
/* CD6D4 80117314 84440010 */  lh         $a0, 0x10($v0)
/* CD6D8 80117318 8C420014 */  lw         $v0, 0x14($v0)
/* CD6DC 8011731C 0040F809 */  jalr       $v0
/* CD6E0 80117320 00642021 */   addu      $a0, $v1, $a0
/* CD6E4 80117324 C6220004 */  lwc1       $f2, 0x4($s1)
/* CD6E8 80117328 C7AE0080 */  lwc1       $f14, 0x80($sp)
/* CD6EC 8011732C 460E1082 */  mul.s      $f2, $f2, $f14
/* CD6F0 80117330 C7A00020 */  lwc1       $f0, 0x20($sp)
/* CD6F4 80117334 4600A002 */  mul.s      $f0, $f20, $f0
/* CD6F8 80117338 46001080 */  add.s      $f2, $f2, $f0
/* CD6FC 8011733C C7A00010 */  lwc1       $f0, 0x10($sp)
/* CD700 80117340 46020000 */  add.s      $f0, $f0, $f2
/* CD704 80117344 E7A00010 */  swc1       $f0, 0x10($sp)
/* CD708 80117348 C6220008 */  lwc1       $f2, 0x8($s1)
/* CD70C 8011734C 460E1082 */  mul.s      $f2, $f2, $f14
/* CD710 80117350 C7A00024 */  lwc1       $f0, 0x24($sp)
/* CD714 80117354 4600A002 */  mul.s      $f0, $f20, $f0
/* CD718 80117358 46001080 */  add.s      $f2, $f2, $f0
/* CD71C 8011735C C7A00014 */  lwc1       $f0, 0x14($sp)
/* CD720 80117360 46020000 */  add.s      $f0, $f0, $f2
/* CD724 80117364 E7A00014 */  swc1       $f0, 0x14($sp)
/* CD728 80117368 C622000C */  lwc1       $f2, 0xC($s1)
/* CD72C 8011736C 460E1082 */  mul.s      $f2, $f2, $f14
/* CD730 80117370 C7A00028 */  lwc1       $f0, 0x28($sp)
/* CD734 80117374 4600A502 */  mul.s      $f20, $f20, $f0
/* CD738 80117378 46141080 */  add.s      $f2, $f2, $f20
/* CD73C 8011737C C7A00018 */  lwc1       $f0, 0x18($sp)
/* CD740 80117380 46020000 */  add.s      $f0, $f0, $f2
/* CD744 80117384 E7A00018 */  swc1       $f0, 0x18($sp)
/* CD748 80117388 8E230000 */  lw         $v1, 0x0($s1)
/* CD74C 8011738C 8C620024 */  lw         $v0, 0x24($v1)
/* CD750 80117390 27A50010 */  addiu      $a1, $sp, 0x10
/* CD754 80117394 84440018 */  lh         $a0, 0x18($v0)
/* CD758 80117398 8C42001C */  lw         $v0, 0x1C($v0)
/* CD75C 8011739C 0040F809 */  jalr       $v0
/* CD760 801173A0 00642021 */   addu      $a0, $v1, $a0
/* CD764 801173A4 C7A00020 */  lwc1       $f0, 0x20($sp)
/* CD768 801173A8 44802000 */  mtc1       $zero, $f4
/* CD76C 801173AC 46040032 */  c.eq.s     $f0, $f4
/* CD770 801173B0 00000000 */  nop
/* CD774 801173B4 45000032 */  bc1f       .Lrace_80117480
/* CD778 801173B8 00000000 */   nop
/* CD77C 801173BC C7A00024 */  lwc1       $f0, 0x24($sp)
/* CD780 801173C0 46040032 */  c.eq.s     $f0, $f4
/* CD784 801173C4 00000000 */  nop
/* CD788 801173C8 4500002D */  bc1f       .Lrace_80117480
/* CD78C 801173CC 00000000 */   nop
/* CD790 801173D0 C7A00028 */  lwc1       $f0, 0x28($sp)
/* CD794 801173D4 46040032 */  c.eq.s     $f0, $f4
/* CD798 801173D8 00000000 */  nop
/* CD79C 801173DC 45000028 */  bc1f       .Lrace_80117480
/* CD7A0 801173E0 00000000 */   nop
/* CD7A4 801173E4 C6220004 */  lwc1       $f2, 0x4($s1)
/* CD7A8 801173E8 3C01800D */  lui        $at, %hi(D_race_800CDF6C)
/* CD7AC 801173EC C420DF6C */  lwc1       $f0, %lo(D_race_800CDF6C)($at)
/* CD7B0 801173F0 4600103C */  c.lt.s     $f2, $f0
/* CD7B4 801173F4 00000000 */  nop
/* CD7B8 801173F8 45000007 */  bc1f       .Lrace_80117418
/* CD7BC 801173FC 00000000 */   nop
/* CD7C0 80117400 3C01800D */  lui        $at, %hi(D_race_800CDF70)
/* CD7C4 80117404 C420DF70 */  lwc1       $f0, %lo(D_race_800CDF70)($at)
/* CD7C8 80117408 4602003C */  c.lt.s     $f0, $f2
/* CD7CC 8011740C 00000000 */  nop
/* CD7D0 80117410 45030001 */  bc1tl      .Lrace_80117418
/* CD7D4 80117414 E6240004 */   swc1      $f4, 0x4($s1)
.Lrace_80117418:
/* CD7D8 80117418 C6220008 */  lwc1       $f2, 0x8($s1)
/* CD7DC 8011741C 3C01800D */  lui        $at, %hi(D_race_800CDF74)
/* CD7E0 80117420 C420DF74 */  lwc1       $f0, %lo(D_race_800CDF74)($at)
/* CD7E4 80117424 4600103C */  c.lt.s     $f2, $f0
/* CD7E8 80117428 00000000 */  nop
/* CD7EC 8011742C 45000007 */  bc1f       .Lrace_8011744C
/* CD7F0 80117430 00000000 */   nop
/* CD7F4 80117434 3C01800D */  lui        $at, %hi(D_race_800CDF78)
/* CD7F8 80117438 C420DF78 */  lwc1       $f0, %lo(D_race_800CDF78)($at)
/* CD7FC 8011743C 4602003C */  c.lt.s     $f0, $f2
/* CD800 80117440 00000000 */  nop
/* CD804 80117444 45030001 */  bc1tl      .Lrace_8011744C
/* CD808 80117448 AE200008 */   sw        $zero, 0x8($s1)
.Lrace_8011744C:
/* CD80C 8011744C C622000C */  lwc1       $f2, 0xC($s1)
/* CD810 80117450 3C01800D */  lui        $at, %hi(D_race_800CDF7C)
/* CD814 80117454 C420DF7C */  lwc1       $f0, %lo(D_race_800CDF7C)($at)
/* CD818 80117458 4600103C */  c.lt.s     $f2, $f0
/* CD81C 8011745C 00000000 */  nop
/* CD820 80117460 45000007 */  bc1f       .Lrace_80117480
/* CD824 80117464 00000000 */   nop
/* CD828 80117468 3C01800D */  lui        $at, %hi(D_race_800CDF80)
/* CD82C 8011746C C420DF80 */  lwc1       $f0, %lo(D_race_800CDF80)($at)
/* CD830 80117470 4602003C */  c.lt.s     $f0, $f2
/* CD834 80117474 00000000 */  nop
/* CD838 80117478 45030001 */  bc1tl      .Lrace_80117480
/* CD83C 8011747C AE20000C */   sw        $zero, 0xC($s1)
.Lrace_80117480:
/* CD840 80117480 C6200004 */  lwc1       $f0, 0x4($s1)
/* CD844 80117484 C7A20020 */  lwc1       $f2, 0x20($sp)
/* CD848 80117488 46020000 */  add.s      $f0, $f0, $f2
/* CD84C 8011748C E6200004 */  swc1       $f0, 0x4($s1)
/* CD850 80117490 C6200008 */  lwc1       $f0, 0x8($s1)
/* CD854 80117494 C7A20024 */  lwc1       $f2, 0x24($sp)
/* CD858 80117498 46020000 */  add.s      $f0, $f0, $f2
/* CD85C 8011749C C622000C */  lwc1       $f2, 0xC($s1)
/* CD860 801174A0 E6200008 */  swc1       $f0, 0x8($s1)
/* CD864 801174A4 C7A00028 */  lwc1       $f0, 0x28($sp)
/* CD868 801174A8 C7AC0080 */  lwc1       $f12, 0x80($sp)
/* CD86C 801174AC 46001080 */  add.s      $f2, $f2, $f0
/* CD870 801174B0 C6200094 */  lwc1       $f0, 0x94($s1)
/* CD874 801174B4 46006002 */  mul.s      $f0, $f12, $f0
/* CD878 801174B8 E7A00084 */  swc1       $f0, 0x84($sp)
/* CD87C 801174BC C6200098 */  lwc1       $f0, 0x98($s1)
/* CD880 801174C0 46006002 */  mul.s      $f0, $f12, $f0
/* CD884 801174C4 8E230000 */  lw         $v1, 0x0($s1)
/* CD888 801174C8 27A50050 */  addiu      $a1, $sp, 0x50
/* CD88C 801174CC E622000C */  swc1       $f2, 0xC($s1)
/* CD890 801174D0 E7A00088 */  swc1       $f0, 0x88($sp)
/* CD894 801174D4 C620009C */  lwc1       $f0, 0x9C($s1)
/* CD898 801174D8 8C620024 */  lw         $v0, 0x24($v1)
/* CD89C 801174DC 46006002 */  mul.s      $f0, $f12, $f0
/* CD8A0 801174E0 27A60060 */  addiu      $a2, $sp, 0x60
/* CD8A4 801174E4 84440088 */  lh         $a0, 0x88($v0)
/* CD8A8 801174E8 8C42008C */  lw         $v0, 0x8C($v0)
/* CD8AC 801174EC 00642021 */  addu       $a0, $v1, $a0
/* CD8B0 801174F0 0040F809 */  jalr       $v0
/* CD8B4 801174F4 E7A0008C */   swc1      $f0, 0x8C($sp)
/* CD8B8 801174F8 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* CD8BC 801174FC C7AE008C */  lwc1       $f14, 0x8C($sp)
/* CD8C0 80117500 460A7382 */  mul.s      $f14, $f14, $f10
/* CD8C4 80117504 C7A80058 */  lwc1       $f8, 0x58($sp)
/* CD8C8 80117508 C7AC0088 */  lwc1       $f12, 0x88($sp)
/* CD8CC 8011750C 46086782 */  mul.s      $f30, $f12, $f8
/* CD8D0 80117510 C7AC0084 */  lwc1       $f12, 0x84($sp)
/* CD8D4 80117514 C7A20050 */  lwc1       $f2, 0x50($sp)
/* CD8D8 80117518 46086302 */  mul.s      $f12, $f12, $f8
/* CD8DC 8011751C E7AE0090 */  swc1       $f14, 0x90($sp)
/* CD8E0 80117520 C7AE008C */  lwc1       $f14, 0x8C($sp)
/* CD8E4 80117524 46027602 */  mul.s      $f24, $f14, $f2
/* CD8E8 80117528 C7AE0088 */  lwc1       $f14, 0x88($sp)
/* CD8EC 8011752C 46027482 */  mul.s      $f18, $f14, $f2
/* CD8F0 80117530 E7AC0094 */  swc1       $f12, 0x94($sp)
/* CD8F4 80117534 C7AC0084 */  lwc1       $f12, 0x84($sp)
/* CD8F8 80117538 460A6682 */  mul.s      $f26, $f12, $f10
/* CD8FC 8011753C C7A60064 */  lwc1       $f6, 0x64($sp)
/* CD900 80117540 C7AE008C */  lwc1       $f14, 0x8C($sp)
/* CD904 80117544 46067502 */  mul.s      $f20, $f14, $f6
/* CD908 80117548 C7A40068 */  lwc1       $f4, 0x68($sp)
/* CD90C 8011754C C7AC0088 */  lwc1       $f12, 0x88($sp)
/* CD910 80117550 46046582 */  mul.s      $f22, $f12, $f4
/* CD914 80117554 C7A00060 */  lwc1       $f0, 0x60($sp)
/* CD918 80117558 46007382 */  mul.s      $f14, $f14, $f0
/* CD91C 8011755C C7AC0084 */  lwc1       $f12, 0x84($sp)
/* CD920 80117560 46046302 */  mul.s      $f12, $f12, $f4
/* CD924 80117564 E7AE0098 */  swc1       $f14, 0x98($sp)
/* CD928 80117568 C7AE0088 */  lwc1       $f14, 0x88($sp)
/* CD92C 8011756C 46007402 */  mul.s      $f16, $f14, $f0
/* CD930 80117570 E7AC009C */  swc1       $f12, 0x9C($sp)
/* CD934 80117574 C7AC0084 */  lwc1       $f12, 0x84($sp)
/* CD938 80117578 46066702 */  mul.s      $f28, $f12, $f6
/* CD93C 8011757C 46185280 */  add.s      $f10, $f10, $f24
/* CD940 80117580 46124201 */  sub.s      $f8, $f8, $f18
/* CD944 80117584 461A4200 */  add.s      $f8, $f8, $f26
/* CD948 80117588 46140001 */  sub.s      $f0, $f0, $f20
/* CD94C 8011758C C7AE0090 */  lwc1       $f14, 0x90($sp)
/* CD950 80117590 460E1081 */  sub.s      $f2, $f2, $f14
/* CD954 80117594 C7AC0094 */  lwc1       $f12, 0x94($sp)
/* CD958 80117598 460C5281 */  sub.s      $f10, $f10, $f12
/* CD95C 8011759C C7AE0098 */  lwc1       $f14, 0x98($sp)
/* CD960 801175A0 460E3180 */  add.s      $f6, $f6, $f14
/* CD964 801175A4 46160000 */  add.s      $f0, $f0, $f22
/* CD968 801175A8 461E1080 */  add.s      $f2, $f2, $f30
/* CD96C 801175AC C7AC009C */  lwc1       $f12, 0x9C($sp)
/* CD970 801175B0 460C3181 */  sub.s      $f6, $f6, $f12
/* CD974 801175B4 E7A80038 */  swc1       $f8, 0x38($sp)
/* CD978 801175B8 46102101 */  sub.s      $f4, $f4, $f16
/* CD97C 801175BC E7AA0034 */  swc1       $f10, 0x34($sp)
/* CD980 801175C0 E7A00040 */  swc1       $f0, 0x40($sp)
/* CD984 801175C4 461C2100 */  add.s      $f4, $f4, $f28
/* CD988 801175C8 E7A20030 */  swc1       $f2, 0x30($sp)
/* CD98C 801175CC E7A60044 */  swc1       $f6, 0x44($sp)
/* CD990 801175D0 E7A40048 */  swc1       $f4, 0x48($sp)
/* CD994 801175D4 8E230000 */  lw         $v1, 0x0($s1)
/* CD998 801175D8 27A50030 */  addiu      $a1, $sp, 0x30
/* CD99C 801175DC 8C620024 */  lw         $v0, 0x24($v1)
/* CD9A0 801175E0 27A60040 */  addiu      $a2, $sp, 0x40
/* CD9A4 801175E4 84440080 */  lh         $a0, 0x80($v0)
/* CD9A8 801175E8 8C420084 */  lw         $v0, 0x84($v0)
/* CD9AC 801175EC 0040F809 */  jalr       $v0
/* CD9B0 801175F0 00642021 */   addu      $a0, $v1, $a0
/* CD9B4 801175F4 C62200B8 */  lwc1       $f2, 0xB8($s1)
/* CD9B8 801175F8 C7AE0080 */  lwc1       $f14, 0x80($sp)
/* CD9BC 801175FC 460E1082 */  mul.s      $f2, $f2, $f14
/* CD9C0 80117600 262200B8 */  addiu      $v0, $s1, 0xB8
/* CD9C4 80117604 E7A20070 */  swc1       $f2, 0x70($sp)
/* CD9C8 80117608 C4400004 */  lwc1       $f0, 0x4($v0)
/* CD9CC 8011760C 460E0002 */  mul.s      $f0, $f0, $f14
/* CD9D0 80117610 E7A00074 */  swc1       $f0, 0x74($sp)
/* CD9D4 80117614 C4400008 */  lwc1       $f0, 0x8($v0)
/* CD9D8 80117618 460E0002 */  mul.s      $f0, $f0, $f14
/* CD9DC 8011761C E7A00078 */  swc1       $f0, 0x78($sp)
/* CD9E0 80117620 C62000A0 */  lwc1       $f0, 0xA0($s1)
/* CD9E4 80117624 46020000 */  add.s      $f0, $f0, $f2
/* CD9E8 80117628 262200A0 */  addiu      $v0, $s1, 0xA0
/* CD9EC 8011762C E62000A0 */  swc1       $f0, 0xA0($s1)
/* CD9F0 80117630 C4400004 */  lwc1       $f0, 0x4($v0)
/* CD9F4 80117634 C7A20074 */  lwc1       $f2, 0x74($sp)
/* CD9F8 80117638 46020000 */  add.s      $f0, $f0, $f2
/* CD9FC 8011763C E4400004 */  swc1       $f0, 0x4($v0)
/* CDA00 80117640 C4400008 */  lwc1       $f0, 0x8($v0)
/* CDA04 80117644 C7A20078 */  lwc1       $f2, 0x78($sp)
/* CDA08 80117648 46020000 */  add.s      $f0, $f0, $f2
/* CDA0C 8011764C 44803000 */  mtc1       $zero, $f6
/* CDA10 80117650 E4400008 */  swc1       $f0, 0x8($v0)
/* CDA14 80117654 C62000B8 */  lwc1       $f0, 0xB8($s1)
/* CDA18 80117658 46060032 */  c.eq.s     $f0, $f6
/* CDA1C 8011765C 00000000 */  nop
/* CDA20 80117660 45020023 */  bc1fl      .Lrace_801176F0
/* CDA24 80117664 AE2000AC */   sw        $zero, 0xAC($s1)
/* CDA28 80117668 C62000BC */  lwc1       $f0, 0xBC($s1)
/* CDA2C 8011766C 46060032 */  c.eq.s     $f0, $f6
/* CDA30 80117670 00000000 */  nop
/* CDA34 80117674 4502001E */  bc1fl      .Lrace_801176F0
/* CDA38 80117678 AE2000AC */   sw        $zero, 0xAC($s1)
/* CDA3C 8011767C C62000C0 */  lwc1       $f0, 0xC0($s1)
/* CDA40 80117680 46060032 */  c.eq.s     $f0, $f6
/* CDA44 80117684 00000000 */  nop
/* CDA48 80117688 45020019 */  bc1fl      .Lrace_801176F0
/* CDA4C 8011768C AE2000AC */   sw        $zero, 0xAC($s1)
/* CDA50 80117690 C7AC0084 */  lwc1       $f12, 0x84($sp)
/* CDA54 80117694 46006386 */  mov.s      $f14, $f12
/* CDA58 80117698 460C6002 */  mul.s      $f0, $f12, $f12
/* CDA5C 8011769C C7AC0088 */  lwc1       $f12, 0x88($sp)
/* CDA60 801176A0 46006386 */  mov.s      $f14, $f12
/* CDA64 801176A4 460C6082 */  mul.s      $f2, $f12, $f12
/* CDA68 801176A8 C7AC008C */  lwc1       $f12, 0x8C($sp)
/* CDA6C 801176AC 46006386 */  mov.s      $f14, $f12
/* CDA70 801176B0 460C6102 */  mul.s      $f4, $f12, $f12
/* CDA74 801176B4 46020000 */  add.s      $f0, $f0, $f2
/* CDA78 801176B8 46040000 */  add.s      $f0, $f0, $f4
/* CDA7C 801176BC 3C01800D */  lui        $at, %hi(D_race_800CDF84)
/* CDA80 801176C0 C422DF84 */  lwc1       $f2, %lo(D_race_800CDF84)($at)
/* CDA84 801176C4 4602003C */  c.lt.s     $f0, $f2
/* CDA88 801176C8 00000000 */  nop
/* CDA8C 801176CC 45020008 */  bc1fl      .Lrace_801176F0
/* CDA90 801176D0 AE2000AC */   sw        $zero, 0xAC($s1)
/* CDA94 801176D4 E6260094 */  swc1       $f6, 0x94($s1)
/* CDA98 801176D8 E6260098 */  swc1       $f6, 0x98($s1)
/* CDA9C 801176DC E626009C */  swc1       $f6, 0x9C($s1)
/* CDAA0 801176E0 E62600A0 */  swc1       $f6, 0xA0($s1)
/* CDAA4 801176E4 E62600A4 */  swc1       $f6, 0xA4($s1)
/* CDAA8 801176E8 E62600A8 */  swc1       $f6, 0xA8($s1)
/* CDAAC 801176EC AE2000AC */  sw         $zero, 0xAC($s1)
.Lrace_801176F0:
/* CDAB0 801176F0 AE2000B0 */  sw         $zero, 0xB0($s1)
/* CDAB4 801176F4 AE2000B4 */  sw         $zero, 0xB4($s1)
/* CDAB8 801176F8 AE2000B8 */  sw         $zero, 0xB8($s1)
/* CDABC 801176FC AE2000BC */  sw         $zero, 0xBC($s1)
/* CDAC0 80117700 AE2000C0 */  sw         $zero, 0xC0($s1)
/* CDAC4 80117704 8FBF00A8 */  lw         $ra, 0xA8($sp)
/* CDAC8 80117708 8FB100A4 */  lw         $s1, 0xA4($sp)
/* CDACC 8011770C 8FB000A0 */  lw         $s0, 0xA0($sp)
/* CDAD0 80117710 D7BE00D8 */  ldc1       $f30, 0xD8($sp)
/* CDAD4 80117714 D7BC00D0 */  ldc1       $f28, 0xD0($sp)
/* CDAD8 80117718 D7BA00C8 */  ldc1       $f26, 0xC8($sp)
/* CDADC 8011771C D7B800C0 */  ldc1       $f24, 0xC0($sp)
/* CDAE0 80117720 D7B600B8 */  ldc1       $f22, 0xB8($sp)
/* CDAE4 80117724 D7B400B0 */  ldc1       $f20, 0xB0($sp)
/* CDAE8 80117728 03E00008 */  jr         $ra
/* CDAEC 8011772C 27BD00E0 */   addiu     $sp, $sp, 0xE0

glabel func_race_80117730
/* CDAF0 80117730 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CDAF4 80117734 00803021 */  addu       $a2, $a0, $zero
/* CDAF8 80117738 AFBF0010 */  sw         $ra, 0x10($sp)
/* CDAFC 8011773C 8CA70000 */  lw         $a3, 0x0($a1)
/* CDB00 80117740 8CA80004 */  lw         $t0, 0x4($a1)
/* CDB04 80117744 8CA90008 */  lw         $t1, 0x8($a1)
/* CDB08 80117748 ACC70010 */  sw         $a3, 0x10($a2)
/* CDB0C 8011774C ACC80014 */  sw         $t0, 0x14($a2)
/* CDB10 80117750 ACC90018 */  sw         $t1, 0x18($a2)
/* CDB14 80117754 8CC20000 */  lw         $v0, 0x0($a2)
/* CDB18 80117758 8C430024 */  lw         $v1, 0x24($v0)
/* CDB1C 8011775C 84640060 */  lh         $a0, 0x60($v1)
/* CDB20 80117760 24C50010 */  addiu      $a1, $a2, 0x10
/* CDB24 80117764 00442021 */  addu       $a0, $v0, $a0
/* CDB28 80117768 8C620064 */  lw         $v0, 0x64($v1)
/* CDB2C 8011776C 0040F809 */  jalr       $v0
/* CDB30 80117770 24C6001C */   addiu     $a2, $a2, 0x1C
/* CDB34 80117774 8FBF0010 */  lw         $ra, 0x10($sp)
/* CDB38 80117778 03E00008 */  jr         $ra
/* CDB3C 8011777C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80117780
/* CDB40 80117780 8C820000 */  lw         $v0, 0x0($a0)
/* CDB44 80117784 03E00008 */  jr         $ra
/* CDB48 80117788 00000000 */   nop

glabel func_race_8011778C
/* CDB4C 8011778C 8CA20000 */  lw         $v0, 0x0($a1)
/* CDB50 80117790 8CA30004 */  lw         $v1, 0x4($a1)
/* CDB54 80117794 8CA60008 */  lw         $a2, 0x8($a1)
/* CDB58 80117798 AC82001C */  sw         $v0, 0x1C($a0)
/* CDB5C 8011779C AC830020 */  sw         $v1, 0x20($a0)
/* CDB60 801177A0 AC860024 */  sw         $a2, 0x24($a0)
/* CDB64 801177A4 03E00008 */  jr         $ra
/* CDB68 801177A8 00000000 */   nop

glabel func_race_801177AC
/* CDB6C 801177AC C4A00000 */  lwc1       $f0, 0x0($a1)
/* CDB70 801177B0 E4800004 */  swc1       $f0, 0x4($a0)
/* CDB74 801177B4 C4A00004 */  lwc1       $f0, 0x4($a1)
/* CDB78 801177B8 E4800008 */  swc1       $f0, 0x8($a0)
/* CDB7C 801177BC C4A00008 */  lwc1       $f0, 0x8($a1)
/* CDB80 801177C0 03E00008 */  jr         $ra
/* CDB84 801177C4 E480000C */   swc1      $f0, 0xC($a0)

glabel func_race_801177C8
/* CDB88 801177C8 C4800004 */  lwc1       $f0, 0x4($a0)
/* CDB8C 801177CC E4A00000 */  swc1       $f0, 0x0($a1)
/* CDB90 801177D0 C4800008 */  lwc1       $f0, 0x8($a0)
/* CDB94 801177D4 E4A00004 */  swc1       $f0, 0x4($a1)
/* CDB98 801177D8 C480000C */  lwc1       $f0, 0xC($a0)
/* CDB9C 801177DC 03E00008 */  jr         $ra
/* CDBA0 801177E0 E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_801177E4
/* CDBA4 801177E4 44851000 */  mtc1       $a1, $f2
/* CDBA8 801177E8 3C01800D */  lui        $at, %hi(D_race_800CDFA8)
/* CDBAC 801177EC C420DFA8 */  lwc1       $f0, %lo(D_race_800CDFA8)($at)
/* CDBB0 801177F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CDBB4 801177F4 AFB00010 */  sw         $s0, 0x10($sp)
/* CDBB8 801177F8 00808021 */  addu       $s0, $a0, $zero
/* CDBBC 801177FC AFBF0014 */  sw         $ra, 0x14($sp)
/* CDBC0 80117800 8E0200CC */  lw         $v0, 0xCC($s0)
/* CDBC4 80117804 46020003 */  div.s      $f0, $f0, $f2
/* CDBC8 80117808 E60200C4 */  swc1       $f2, 0xC4($s0)
/* CDBCC 8011780C E60000C8 */  swc1       $f0, 0xC8($s0)
/* CDBD0 80117810 84440008 */  lh         $a0, 0x8($v0)
/* CDBD4 80117814 8C42000C */  lw         $v0, 0xC($v0)
/* CDBD8 80117818 0040F809 */  jalr       $v0
/* CDBDC 8011781C 02042021 */   addu      $a0, $s0, $a0
/* CDBE0 80117820 0C045B7A */  jal        func_race_80116DE8
/* CDBE4 80117824 02002021 */   addu      $a0, $s0, $zero
/* CDBE8 80117828 8FBF0014 */  lw         $ra, 0x14($sp)
/* CDBEC 8011782C 8FB00010 */  lw         $s0, 0x10($sp)
/* CDBF0 80117830 03E00008 */  jr         $ra
/* CDBF4 80117834 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80117838
/* CDBF8 80117838 C4800070 */  lwc1       $f0, 0x70($a0)
/* CDBFC 8011783C E4A00000 */  swc1       $f0, 0x0($a1)
/* CDC00 80117840 C4800074 */  lwc1       $f0, 0x74($a0)
/* CDC04 80117844 E4A00004 */  swc1       $f0, 0x4($a1)
/* CDC08 80117848 C4800078 */  lwc1       $f0, 0x78($a0)
/* CDC0C 8011784C E4A00008 */  swc1       $f0, 0x8($a1)
/* CDC10 80117850 C480007C */  lwc1       $f0, 0x7C($a0)
/* CDC14 80117854 E4A0000C */  swc1       $f0, 0xC($a1)
/* CDC18 80117858 C4800080 */  lwc1       $f0, 0x80($a0)
/* CDC1C 8011785C E4A00010 */  swc1       $f0, 0x10($a1)
/* CDC20 80117860 C4800084 */  lwc1       $f0, 0x84($a0)
/* CDC24 80117864 E4A00014 */  swc1       $f0, 0x14($a1)
/* CDC28 80117868 C4800088 */  lwc1       $f0, 0x88($a0)
/* CDC2C 8011786C E4A00018 */  swc1       $f0, 0x18($a1)
/* CDC30 80117870 C480008C */  lwc1       $f0, 0x8C($a0)
/* CDC34 80117874 E4A0001C */  swc1       $f0, 0x1C($a1)
/* CDC38 80117878 C4800090 */  lwc1       $f0, 0x90($a0)
/* CDC3C 8011787C 03E00008 */  jr         $ra
/* CDC40 80117880 E4A00020 */   swc1      $f0, 0x20($a1)

glabel func_race_80117884
/* CDC44 80117884 C48000C8 */  lwc1       $f0, 0xC8($a0)
/* CDC48 80117888 03E00008 */  jr         $ra
/* CDC4C 8011788C 00000000 */   nop

glabel func_race_80117890
/* CDC50 80117890 C48000C4 */  lwc1       $f0, 0xC4($a0)
/* CDC54 80117894 03E00008 */  jr         $ra
/* CDC58 80117898 00000000 */   nop

glabel func_race_8011789C
/* CDC5C 8011789C 8C82001C */  lw         $v0, 0x1C($a0)
/* CDC60 801178A0 8C830020 */  lw         $v1, 0x20($a0)
/* CDC64 801178A4 8C860024 */  lw         $a2, 0x24($a0)
/* CDC68 801178A8 ACA20000 */  sw         $v0, 0x0($a1)
/* CDC6C 801178AC ACA30004 */  sw         $v1, 0x4($a1)
/* CDC70 801178B0 ACA60008 */  sw         $a2, 0x8($a1)
/* CDC74 801178B4 03E00008 */  jr         $ra
/* CDC78 801178B8 00000000 */   nop

glabel func_race_801178BC
/* CDC7C 801178BC 8C820010 */  lw         $v0, 0x10($a0)
/* CDC80 801178C0 8C830014 */  lw         $v1, 0x14($a0)
/* CDC84 801178C4 8C860018 */  lw         $a2, 0x18($a0)
/* CDC88 801178C8 ACA20000 */  sw         $v0, 0x0($a1)
/* CDC8C 801178CC ACA30004 */  sw         $v1, 0x4($a1)
/* CDC90 801178D0 ACA60008 */  sw         $a2, 0x8($a1)
/* CDC94 801178D4 03E00008 */  jr         $ra
/* CDC98 801178D8 00000000 */   nop

glabel func_race_801178DC
/* CDC9C 801178DC 8C820000 */  lw         $v0, 0x0($a0)
/* CDCA0 801178E0 03E00008 */  jr         $ra
/* CDCA4 801178E4 0002102B */   sltu      $v0, $zero, $v0
