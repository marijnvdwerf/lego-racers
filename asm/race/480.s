.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F2CC0
/* A9080 800F2CC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A9084 800F2CC4 AFB00010 */  sw         $s0, 0x10($sp)
/* A9088 800F2CC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A908C 800F2CCC 0C03CB52 */  jal        func_race_800F2D48
/* A9090 800F2CD0 00808021 */   addu      $s0, $a0, $zero
/* A9094 800F2CD4 02001021 */  addu       $v0, $s0, $zero
/* A9098 800F2CD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A909C 800F2CDC 8FB00010 */  lw         $s0, 0x10($sp)
/* A90A0 800F2CE0 03E00008 */  jr         $ra
/* A90A4 800F2CE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F2CE8
/* A90A8 800F2CE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A90AC 800F2CEC AFB10014 */  sw         $s1, 0x14($sp)
/* A90B0 800F2CF0 00808821 */  addu       $s1, $a0, $zero
/* A90B4 800F2CF4 AFB00010 */  sw         $s0, 0x10($sp)
/* A90B8 800F2CF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* A90BC 800F2CFC 0C03CB4B */  jal        func_race_800F2D2C
/* A90C0 800F2D00 00A08021 */   addu      $s0, $a1, $zero
/* A90C4 800F2D04 32100001 */  andi       $s0, $s0, 0x1
/* A90C8 800F2D08 12000003 */  beqz       $s0, .Lrace_800F2D18
/* A90CC 800F2D0C 00000000 */   nop
/* A90D0 800F2D10 0C01FB5C */  jal        func_8007ED70
/* A90D4 800F2D14 02202021 */   addu      $a0, $s1, $zero
.Lrace_800F2D18:
/* A90D8 800F2D18 8FBF0018 */  lw         $ra, 0x18($sp)
/* A90DC 800F2D1C 8FB10014 */  lw         $s1, 0x14($sp)
/* A90E0 800F2D20 8FB00010 */  lw         $s0, 0x10($sp)
/* A90E4 800F2D24 03E00008 */  jr         $ra
/* A90E8 800F2D28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F2D2C
/* A90EC 800F2D2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A90F0 800F2D30 AFBF0010 */  sw         $ra, 0x10($sp)
/* A90F4 800F2D34 0C03CB52 */  jal        func_race_800F2D48
/* A90F8 800F2D38 00000000 */   nop
/* A90FC 800F2D3C 8FBF0010 */  lw         $ra, 0x10($sp)
/* A9100 800F2D40 03E00008 */  jr         $ra
/* A9104 800F2D44 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F2D48
/* A9108 800F2D48 AC800000 */  sw         $zero, 0x0($a0)
/* A910C 800F2D4C AC800004 */  sw         $zero, 0x4($a0)
/* A9110 800F2D50 AC800008 */  sw         $zero, 0x8($a0)
/* A9114 800F2D54 AC80000C */  sw         $zero, 0xC($a0)
/* A9118 800F2D58 AC800010 */  sw         $zero, 0x10($a0)
/* A911C 800F2D5C AC800014 */  sw         $zero, 0x14($a0)
/* A9120 800F2D60 AC80002C */  sw         $zero, 0x2C($a0)
/* A9124 800F2D64 AC800018 */  sw         $zero, 0x18($a0)
/* A9128 800F2D68 AC80001C */  sw         $zero, 0x1C($a0)
/* A912C 800F2D6C AC800020 */  sw         $zero, 0x20($a0)
/* A9130 800F2D70 AC800024 */  sw         $zero, 0x24($a0)
/* A9134 800F2D74 AC800034 */  sw         $zero, 0x34($a0)
/* A9138 800F2D78 AC800038 */  sw         $zero, 0x38($a0)
/* A913C 800F2D7C AC80003C */  sw         $zero, 0x3C($a0)
/* A9140 800F2D80 AC800040 */  sw         $zero, 0x40($a0)
/* A9144 800F2D84 AC800044 */  sw         $zero, 0x44($a0)
/* A9148 800F2D88 AC800048 */  sw         $zero, 0x48($a0)
/* A914C 800F2D8C AC80004C */  sw         $zero, 0x4C($a0)
/* A9150 800F2D90 AC800028 */  sw         $zero, 0x28($a0)
/* A9154 800F2D94 AC800030 */  sw         $zero, 0x30($a0)
/* A9158 800F2D98 03E00008 */  jr         $ra
/* A915C 800F2D9C AC800050 */   sw        $zero, 0x50($a0)

glabel func_race_800F2DA0
/* A9160 800F2DA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A9164 800F2DA4 AFB00010 */  sw         $s0, 0x10($sp)
/* A9168 800F2DA8 00808021 */  addu       $s0, $a0, $zero
/* A916C 800F2DAC AFBF0018 */  sw         $ra, 0x18($sp)
/* A9170 800F2DB0 AFB10014 */  sw         $s1, 0x14($sp)
/* A9174 800F2DB4 8E020000 */  lw         $v0, 0x0($s0)
/* A9178 800F2DB8 10400003 */  beqz       $v0, .Lrace_800F2DC8
/* A917C 800F2DBC 00A08821 */   addu      $s1, $a1, $zero
/* A9180 800F2DC0 0C03CB4B */  jal        func_race_800F2D2C
/* A9184 800F2DC4 00000000 */   nop
.Lrace_800F2DC8:
/* A9188 800F2DC8 AE110000 */  sw         $s1, 0x0($s0)
/* A918C 800F2DCC 8FBF0018 */  lw         $ra, 0x18($sp)
/* A9190 800F2DD0 8FB10014 */  lw         $s1, 0x14($sp)
/* A9194 800F2DD4 8FB00010 */  lw         $s0, 0x10($sp)
/* A9198 800F2DD8 03E00008 */  jr         $ra
/* A919C 800F2DDC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F2DE0
/* A91A0 800F2DE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A91A4 800F2DE4 AFB00010 */  sw         $s0, 0x10($sp)
/* A91A8 800F2DE8 00808021 */  addu       $s0, $a0, $zero
/* A91AC 800F2DEC 00A05821 */  addu       $t3, $a1, $zero
/* A91B0 800F2DF0 2403FFFD */  addiu      $v1, $zero, -0x3
/* A91B4 800F2DF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A91B8 800F2DF8 8E020014 */  lw         $v0, 0x14($s0)
/* A91BC 800F2DFC C600000C */  lwc1       $f0, 0xC($s0)
/* A91C0 800F2E00 8E040020 */  lw         $a0, 0x20($s0)
/* A91C4 800F2E04 00431024 */  and        $v0, $v0, $v1
/* A91C8 800F2E08 AE020014 */  sw         $v0, 0x14($s0)
/* A91CC 800F2E0C 008B102B */  sltu       $v0, $a0, $t3
/* A91D0 800F2E10 1040004E */  beqz       $v0, .Lrace_800F2F4C
/* A91D4 800F2E14 E6000008 */   swc1      $f0, 0x8($s0)
/* A91D8 800F2E18 8E020014 */  lw         $v0, 0x14($s0)
/* A91DC 800F2E1C 30420010 */  andi       $v0, $v0, 0x10
/* A91E0 800F2E20 1040004C */  beqz       $v0, .Lrace_800F2F54
/* A91E4 800F2E24 3C098003 */   lui       $t1, %hi(D_8002FAB0)
/* A91E8 800F2E28 3C031062 */  lui        $v1, (0x10624DD3 >> 16)
/* A91EC 800F2E2C 3C088003 */  lui        $t0, %hi(D_8002F2B0)
/* A91F0 800F2E30 8D26FAB0 */  lw         $a2, %lo(D_8002FAB0)($t1)
/* A91F4 800F2E34 2508F2B0 */  addiu      $t0, $t0, %lo(D_8002F2B0)
/* A91F8 800F2E38 24C60001 */  addiu      $a2, $a2, 0x1
/* A91FC 800F2E3C 30C603FF */  andi       $a2, $a2, 0x3FF
/* A9200 800F2E40 00061040 */  sll        $v0, $a2, 1
/* A9204 800F2E44 00481021 */  addu       $v0, $v0, $t0
/* A9208 800F2E48 94440000 */  lhu        $a0, 0x0($v0)
/* A920C 800F2E4C 34634DD3 */  ori        $v1, $v1, (0x10624DD3 & 0xFFFF)
/* A9210 800F2E50 00830019 */  multu      $a0, $v1
/* A9214 800F2E54 3C0A51EB */  lui        $t2, (0x51EB851F >> 16)
/* A9218 800F2E58 24C70001 */  addiu      $a3, $a2, 0x1
/* A921C 800F2E5C 30E703FF */  andi       $a3, $a3, 0x3FF
/* A9220 800F2E60 00006010 */  mfhi       $t4
/* A9224 800F2E64 000C1942 */  srl        $v1, $t4, 5
/* A9228 800F2E68 00031140 */  sll        $v0, $v1, 5
/* A922C 800F2E6C 00431023 */  subu       $v0, $v0, $v1
/* A9230 800F2E70 00021080 */  sll        $v0, $v0, 2
/* A9234 800F2E74 00431021 */  addu       $v0, $v0, $v1
/* A9238 800F2E78 00021080 */  sll        $v0, $v0, 2
/* A923C 800F2E7C 00822023 */  subu       $a0, $a0, $v0
/* A9240 800F2E80 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* A9244 800F2E84 00071040 */  sll        $v0, $a3, 1
/* A9248 800F2E88 00481021 */  addu       $v0, $v0, $t0
/* A924C 800F2E8C AE040020 */  sw         $a0, 0x20($s0)
/* A9250 800F2E90 94440000 */  lhu        $a0, 0x0($v0)
/* A9254 800F2E94 354A851F */  ori        $t2, $t2, (0x51EB851F & 0xFFFF)
/* A9258 800F2E98 008A0019 */  multu      $a0, $t2
/* A925C 800F2E9C 3C01800D */  lui        $at, %hi(D_race_800CCBB0)
/* A9260 800F2EA0 C424CBB0 */  lwc1       $f4, %lo(D_race_800CCBB0)($at)
/* A9264 800F2EA4 00006010 */  mfhi       $t4
/* A9268 800F2EA8 000C19C2 */  srl        $v1, $t4, 7
/* A926C 800F2EAC 00031040 */  sll        $v0, $v1, 1
/* A9270 800F2EB0 00431021 */  addu       $v0, $v0, $v1
/* A9274 800F2EB4 000210C0 */  sll        $v0, $v0, 3
/* A9278 800F2EB8 00431021 */  addu       $v0, $v0, $v1
/* A927C 800F2EBC 00021100 */  sll        $v0, $v0, 4
/* A9280 800F2EC0 00822023 */  subu       $a0, $a0, $v0
/* A9284 800F2EC4 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* A9288 800F2EC8 44840000 */  mtc1       $a0, $f0
/* A928C 800F2ECC 46800020 */  cvt.s.w    $f0, $f0
/* A9290 800F2ED0 46040002 */  mul.s      $f0, $f0, $f4
/* A9294 800F2ED4 3C01800D */  lui        $at, %hi(D_race_800CCBB4)
/* A9298 800F2ED8 C422CBB4 */  lwc1       $f2, %lo(D_race_800CCBB4)($at)
/* A929C 800F2EDC 24E50001 */  addiu      $a1, $a3, 0x1
/* A92A0 800F2EE0 30A503FF */  andi       $a1, $a1, 0x3FF
/* A92A4 800F2EE4 46020001 */  sub.s      $f0, $f0, $f2
/* A92A8 800F2EE8 00051040 */  sll        $v0, $a1, 1
/* A92AC 800F2EEC 00481021 */  addu       $v0, $v0, $t0
/* A92B0 800F2EF0 E6000018 */  swc1       $f0, 0x18($s0)
/* A92B4 800F2EF4 94440000 */  lhu        $a0, 0x0($v0)
/* A92B8 800F2EF8 008A0019 */  multu      $a0, $t2
/* A92BC 800F2EFC 00006010 */  mfhi       $t4
/* A92C0 800F2F00 000C1982 */  srl        $v1, $t4, 6
/* A92C4 800F2F04 00031040 */  sll        $v0, $v1, 1
/* A92C8 800F2F08 00431021 */  addu       $v0, $v0, $v1
/* A92CC 800F2F0C 000210C0 */  sll        $v0, $v0, 3
/* A92D0 800F2F10 00431021 */  addu       $v0, $v0, $v1
/* A92D4 800F2F14 000210C0 */  sll        $v0, $v0, 3
/* A92D8 800F2F18 00822023 */  subu       $a0, $a0, $v0
/* A92DC 800F2F1C 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* A92E0 800F2F20 44840000 */  mtc1       $a0, $f0
/* A92E4 800F2F24 46800020 */  cvt.s.w    $f0, $f0
/* A92E8 800F2F28 46040002 */  mul.s      $f0, $f0, $f4
/* A92EC 800F2F2C 3C01800D */  lui        $at, %hi(D_race_800CCBB8)
/* A92F0 800F2F30 C422CBB8 */  lwc1       $f2, %lo(D_race_800CCBB8)($at)
/* A92F4 800F2F34 AD26FAB0 */  sw         $a2, %lo(D_8002FAB0)($t1)
/* A92F8 800F2F38 46020001 */  sub.s      $f0, $f0, $f2
/* A92FC 800F2F3C AD27FAB0 */  sw         $a3, %lo(D_8002FAB0)($t1)
/* A9300 800F2F40 AD25FAB0 */  sw         $a1, %lo(D_8002FAB0)($t1)
/* A9304 800F2F44 0803CBD5 */  j          .Lrace_800F2F54
/* A9308 800F2F48 E600001C */   swc1      $f0, 0x1C($s0)
.Lrace_800F2F4C:
/* A930C 800F2F4C 008B1023 */  subu       $v0, $a0, $t3
/* A9310 800F2F50 AE020020 */  sw         $v0, 0x20($s0)
.Lrace_800F2F54:
/* A9314 800F2F54 8E030014 */  lw         $v1, 0x14($s0)
/* A9318 800F2F58 30620004 */  andi       $v0, $v1, 0x4
/* A931C 800F2F5C 10400012 */  beqz       $v0, .Lrace_800F2FA8
/* A9320 800F2F60 30620008 */   andi      $v0, $v1, 0x8
/* A9324 800F2F64 8E020000 */  lw         $v0, 0x0($s0)
/* A9328 800F2F68 3C01800D */  lui        $at, %hi(D_race_800CCBBC)
/* A932C 800F2F6C C420CBBC */  lwc1       $f0, %lo(D_race_800CCBBC)($at)
/* A9330 800F2F70 C442061C */  lwc1       $f2, 0x61C($v0)
/* A9334 800F2F74 4600103C */  c.lt.s     $f2, $f0
/* A9338 800F2F78 00000000 */  nop
/* A933C 800F2F7C 45000006 */  bc1f       .Lrace_800F2F98
/* A9340 800F2F80 00000000 */   nop
/* A9344 800F2F84 AE00002C */  sw         $zero, 0x2C($s0)
/* A9348 800F2F88 0C03CDA8 */  jal        func_race_800F36A0
/* A934C 800F2F8C 02002021 */   addu      $a0, $s0, $zero
/* A9350 800F2F90 0803CBF6 */  j          .Lrace_800F2FD8
/* A9354 800F2F94 00000000 */   nop
.Lrace_800F2F98:
/* A9358 800F2F98 8E02002C */  lw         $v0, 0x2C($s0)
/* A935C 800F2F9C 004B1021 */  addu       $v0, $v0, $t3
/* A9360 800F2FA0 0803CBF6 */  j          .Lrace_800F2FD8
/* A9364 800F2FA4 AE02002C */   sw        $v0, 0x2C($s0)
.Lrace_800F2FA8:
/* A9368 800F2FA8 1040000B */  beqz       $v0, .Lrace_800F2FD8
/* A936C 800F2FAC 00000000 */   nop
/* A9370 800F2FB0 8E02002C */  lw         $v0, 0x2C($s0)
/* A9374 800F2FB4 004B1021 */  addu       $v0, $v0, $t3
/* A9378 800F2FB8 AE02002C */  sw         $v0, 0x2C($s0)
/* A937C 800F2FBC 2C42012C */  sltiu      $v0, $v0, 0x12C
/* A9380 800F2FC0 14400005 */  bnez       $v0, .Lrace_800F2FD8
/* A9384 800F2FC4 2403FFF7 */   addiu     $v1, $zero, -0x9
/* A9388 800F2FC8 8E020014 */  lw         $v0, 0x14($s0)
/* A938C 800F2FCC AE00002C */  sw         $zero, 0x2C($s0)
/* A9390 800F2FD0 00431024 */  and        $v0, $v0, $v1
/* A9394 800F2FD4 AE020014 */  sw         $v0, 0x14($s0)
.Lrace_800F2FD8:
/* A9398 800F2FD8 8E030014 */  lw         $v1, 0x14($s0)
/* A939C 800F2FDC 30620001 */  andi       $v0, $v1, 0x1
/* A93A0 800F2FE0 10400006 */  beqz       $v0, .Lrace_800F2FFC
/* A93A4 800F2FE4 00000000 */   nop
/* A93A8 800F2FE8 8E020000 */  lw         $v0, 0x0($s0)
/* A93AC 800F2FEC 8C4203F0 */  lw         $v0, 0x3F0($v0)
/* A93B0 800F2FF0 10400002 */  beqz       $v0, .Lrace_800F2FFC
/* A93B4 800F2FF4 34620100 */   ori       $v0, $v1, 0x100
/* A93B8 800F2FF8 AE020014 */  sw         $v0, 0x14($s0)
.Lrace_800F2FFC:
/* A93BC 800F2FFC 0C03CC6F */  jal        func_race_800F31BC
/* A93C0 800F3000 02002021 */   addu      $a0, $s0, $zero
/* A93C4 800F3004 0C03CD5B */  jal        func_race_800F356C
/* A93C8 800F3008 02002021 */   addu      $a0, $s0, $zero
/* A93CC 800F300C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A93D0 800F3010 8FB00010 */  lw         $s0, 0x10($sp)
/* A93D4 800F3014 03E00008 */  jr         $ra
/* A93D8 800F3018 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F301C
/* A93DC 800F301C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A93E0 800F3020 AFB00010 */  sw         $s0, 0x10($sp)
/* A93E4 800F3024 00808021 */  addu       $s0, $a0, $zero
/* A93E8 800F3028 AFBF0014 */  sw         $ra, 0x14($sp)
/* A93EC 800F302C 8E020000 */  lw         $v0, 0x0($s0)
/* A93F0 800F3030 44801000 */  mtc1       $zero, $f2
/* A93F4 800F3034 C440061C */  lwc1       $f0, 0x61C($v0)
/* A93F8 800F3038 4600103C */  c.lt.s     $f2, $f0
/* A93FC 800F303C 00000000 */  nop
/* A9400 800F3040 45020004 */  bc1fl      .Lrace_800F3054
/* A9404 800F3044 E6020010 */   swc1      $f2, 0x10($s0)
/* A9408 800F3048 3C01800D */  lui        $at, %hi(D_race_800CCBC0)
/* A940C 800F304C C420CBC0 */  lwc1       $f0, %lo(D_race_800CCBC0)($at)
/* A9410 800F3050 E6000010 */  swc1       $f0, 0x10($s0)
.Lrace_800F3054:
/* A9414 800F3054 0C03CC6F */  jal        func_race_800F31BC
/* A9418 800F3058 02002021 */   addu      $a0, $s0, $zero
/* A941C 800F305C 0C03CD5B */  jal        func_race_800F356C
/* A9420 800F3060 02002021 */   addu      $a0, $s0, $zero
/* A9424 800F3064 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9428 800F3068 8FB00010 */  lw         $s0, 0x10($sp)
/* A942C 800F306C 03E00008 */  jr         $ra
/* A9430 800F3070 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F3074
/* A9434 800F3074 8C820028 */  lw         $v0, 0x28($a0)
/* A9438 800F3078 8C860000 */  lw         $a2, 0x0($a0)
/* A943C 800F307C 00451821 */  addu       $v1, $v0, $a1
/* A9440 800F3080 AC830028 */  sw         $v1, 0x28($a0)
/* A9444 800F3084 8CC206AC */  lw         $v0, 0x6AC($a2)
/* A9448 800F3088 30420002 */  andi       $v0, $v0, 0x2
/* A944C 800F308C 10400007 */  beqz       $v0, .Lrace_800F30AC
/* A9450 800F3090 00000000 */   nop
.Lrace_800F3094:
/* A9454 800F3094 8C820014 */  lw         $v0, 0x14($a0)
/* A9458 800F3098 2403FFDF */  addiu      $v1, $zero, -0x21
/* A945C 800F309C AC800028 */  sw         $zero, 0x28($a0)
/* A9460 800F30A0 00431024 */  and        $v0, $v0, $v1
/* A9464 800F30A4 03E00008 */  jr         $ra
/* A9468 800F30A8 AC820014 */   sw        $v0, 0x14($a0)
.Lrace_800F30AC:
/* A946C 800F30AC 8C820014 */  lw         $v0, 0x14($a0)
/* A9470 800F30B0 30420020 */  andi       $v0, $v0, 0x20
/* A9474 800F30B4 10400005 */  beqz       $v0, .Lrace_800F30CC
/* A9478 800F30B8 2C6207D0 */   sltiu     $v0, $v1, 0x7D0
/* A947C 800F30BC 1040FFF5 */  beqz       $v0, .Lrace_800F3094
/* A9480 800F30C0 00000000 */   nop
/* A9484 800F30C4 0803CC4D */  j          .Lrace_800F3134
/* A9488 800F30C8 00000000 */   nop
.Lrace_800F30CC:
/* A948C 800F30CC C4C2061C */  lwc1       $f2, 0x61C($a2)
/* A9490 800F30D0 3C01800D */  lui        $at, %hi(D_race_800CCBC4)
/* A9494 800F30D4 C420CBC4 */  lwc1       $f0, %lo(D_race_800CCBC4)($at)
/* A9498 800F30D8 4602003C */  c.lt.s     $f0, $f2
/* A949C 800F30DC 00000000 */  nop
/* A94A0 800F30E0 45010007 */  bc1t       .Lrace_800F3100
/* A94A4 800F30E4 00001021 */   addu      $v0, $zero, $zero
/* A94A8 800F30E8 3C01800D */  lui        $at, %hi(D_race_800CCBC8)
/* A94AC 800F30EC C420CBC8 */  lwc1       $f0, %lo(D_race_800CCBC8)($at)
/* A94B0 800F30F0 4600103C */  c.lt.s     $f2, $f0
/* A94B4 800F30F4 00000000 */  nop
/* A94B8 800F30F8 45000002 */  bc1f       .Lrace_800F3104
/* A94BC 800F30FC 00000000 */   nop
.Lrace_800F3100:
/* A94C0 800F3100 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800F3104:
/* A94C4 800F3104 10400003 */  beqz       $v0, .Lrace_800F3114
/* A94C8 800F3108 00000000 */   nop
/* A94CC 800F310C 03E00008 */  jr         $ra
/* A94D0 800F3110 AC800028 */   sw        $zero, 0x28($a0)
.Lrace_800F3114:
/* A94D4 800F3114 8C820028 */  lw         $v0, 0x28($a0)
/* A94D8 800F3118 2C4203E8 */  sltiu      $v0, $v0, 0x3E8
/* A94DC 800F311C 14400005 */  bnez       $v0, .Lrace_800F3134
/* A94E0 800F3120 00000000 */   nop
/* A94E4 800F3124 8C820014 */  lw         $v0, 0x14($a0)
/* A94E8 800F3128 AC800028 */  sw         $zero, 0x28($a0)
/* A94EC 800F312C 34420020 */  ori        $v0, $v0, 0x20
/* A94F0 800F3130 AC820014 */  sw         $v0, 0x14($a0)
.Lrace_800F3134:
/* A94F4 800F3134 03E00008 */  jr         $ra
/* A94F8 800F3138 00000000 */   nop

glabel func_race_800F313C
/* A94FC 800F313C 8C820014 */  lw         $v0, 0x14($a0)
/* A9500 800F3140 44851000 */  mtc1       $a1, $f2
/* A9504 800F3144 30420010 */  andi       $v0, $v0, 0x10
/* A9508 800F3148 54400001 */  bnel       $v0, $zero, .Lrace_800F3150
/* A950C 800F314C 46001087 */   neg.s     $f2, $f2
.Lrace_800F3150:
/* A9510 800F3150 8C820000 */  lw         $v0, 0x0($a0)
/* A9514 800F3154 C4400714 */  lwc1       $f0, 0x714($v0)
/* A9518 800F3158 46001082 */  mul.s      $f2, $f2, $f0
/* A951C 800F315C 3C01800D */  lui        $at, %hi(D_race_800CCBCC)
/* A9520 800F3160 C420CBCC */  lwc1       $f0, %lo(D_race_800CCBCC)($at)
/* A9524 800F3164 46001102 */  mul.s      $f4, $f2, $f0
/* A9528 800F3168 44800000 */  mtc1       $zero, $f0
/* A952C 800F316C 4602003C */  c.lt.s     $f0, $f2
/* A9530 800F3170 00000000 */  nop
/* A9534 800F3174 45000009 */  bc1f       .Lrace_800F319C
/* A9538 800F3178 00000000 */   nop
/* A953C 800F317C 3C01800D */  lui        $at, %hi(D_race_800CCBD0)
/* A9540 800F3180 C420CBD0 */  lwc1       $f0, %lo(D_race_800CCBD0)($at)
/* A9544 800F3184 46002100 */  add.s      $f4, $f4, $f0
.Lrace_800F3188:
/* A9548 800F3188 3C01800D */  lui        $at, %hi(D_race_800CCBD4)
/* A954C 800F318C C420CBD4 */  lwc1       $f0, %lo(D_race_800CCBD4)($at)
/* A9550 800F3190 46040003 */  div.s      $f0, $f0, $f4
.Lrace_800F3194:
/* A9554 800F3194 03E00008 */  jr         $ra
/* A9558 800F3198 E480000C */   swc1      $f0, 0xC($a0)
.Lrace_800F319C:
/* A955C 800F319C 4600103C */  c.lt.s     $f2, $f0
/* A9560 800F31A0 00000000 */  nop
/* A9564 800F31A4 4500FFFB */  bc1f       .Lrace_800F3194
/* A9568 800F31A8 00000000 */   nop
/* A956C 800F31AC 3C01800D */  lui        $at, %hi(D_race_800CCBD8)
/* A9570 800F31B0 C420CBD8 */  lwc1       $f0, %lo(D_race_800CCBD8)($at)
/* A9574 800F31B4 0803CC62 */  j          .Lrace_800F3188
/* A9578 800F31B8 46002101 */   sub.s     $f4, $f4, $f0

glabel func_race_800F31BC
/* A957C 800F31BC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9580 800F31C0 AFB00010 */  sw         $s0, 0x10($sp)
/* A9584 800F31C4 00808021 */  addu       $s0, $a0, $zero
/* A9588 800F31C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A958C 800F31CC F7B80028 */  sdc1       $f24, 0x28($sp)
/* A9590 800F31D0 F7B60020 */  sdc1       $f22, 0x20($sp)
/* A9594 800F31D4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* A9598 800F31D8 C600000C */  lwc1       $f0, 0xC($s0)
/* A959C 800F31DC 4480A000 */  mtc1       $zero, $f20
/* A95A0 800F31E0 46140032 */  c.eq.s     $f0, $f20
/* A95A4 800F31E4 00000000 */  nop
/* A95A8 800F31E8 4500000F */  bc1f       .Lrace_800F3228
/* A95AC 800F31EC 00000000 */   nop
/* A95B0 800F31F0 C6000008 */  lwc1       $f0, 0x8($s0)
/* A95B4 800F31F4 46140032 */  c.eq.s     $f0, $f20
/* A95B8 800F31F8 00000000 */  nop
/* A95BC 800F31FC 4500000A */  bc1f       .Lrace_800F3228
/* A95C0 800F3200 00000000 */   nop
/* A95C4 800F3204 8E040000 */  lw         $a0, 0x0($s0)
/* A95C8 800F3208 4405A000 */  mfc1       $a1, $f20
/* A95CC 800F320C 0C047322 */  jal        func_race_8011CC88
/* A95D0 800F3210 00000000 */   nop
/* A95D4 800F3214 8E040000 */  lw         $a0, 0x0($s0)
/* A95D8 800F3218 0C047851 */  jal        func_race_8011E144
/* A95DC 800F321C E6140008 */   swc1      $f20, 0x8($s0)
/* A95E0 800F3220 0803CD1F */  j          .Lrace_800F347C
/* A95E4 800F3224 00000000 */   nop
.Lrace_800F3228:
/* A95E8 800F3228 C604000C */  lwc1       $f4, 0xC($s0)
/* A95EC 800F322C 44800000 */  mtc1       $zero, $f0
/* A95F0 800F3230 46002032 */  c.eq.s     $f4, $f0
/* A95F4 800F3234 00000000 */  nop
/* A95F8 800F3238 4501000D */  bc1t       .Lrace_800F3270
/* A95FC 800F323C 00000000 */   nop
/* A9600 800F3240 8E020000 */  lw         $v0, 0x0($s0)
/* A9604 800F3244 3C01800D */  lui        $at, %hi(D_race_800CCBDC)
/* A9608 800F3248 C420CBDC */  lwc1       $f0, %lo(D_race_800CCBDC)($at)
/* A960C 800F324C C4420608 */  lwc1       $f2, 0x608($v0)
/* A9610 800F3250 4600103C */  c.lt.s     $f2, $f0
/* A9614 800F3254 00000000 */  nop
/* A9618 800F3258 45000005 */  bc1f       .Lrace_800F3270
/* A961C 800F325C 00000000 */   nop
/* A9620 800F3260 3C01800D */  lui        $at, %hi(D_race_800CCBE0)
/* A9624 800F3264 C420CBE0 */  lwc1       $f0, %lo(D_race_800CCBE0)($at)
/* A9628 800F3268 46002002 */  mul.s      $f0, $f4, $f0
/* A962C 800F326C E600000C */  swc1       $f0, 0xC($s0)
.Lrace_800F3270:
/* A9630 800F3270 C616000C */  lwc1       $f22, 0xC($s0)
/* A9634 800F3274 4480C000 */  mtc1       $zero, $f24
/* A9638 800F3278 4618B03C */  c.lt.s     $f22, $f24
/* A963C 800F327C 00000000 */  nop
/* A9640 800F3280 45030001 */  bc1tl      .Lrace_800F3288
/* A9644 800F3284 4600B587 */   neg.s     $f22, $f22
.Lrace_800F3288:
/* A9648 800F3288 8E030014 */  lw         $v1, 0x14($s0)
/* A964C 800F328C 30620004 */  andi       $v0, $v1, 0x4
/* A9650 800F3290 10400042 */  beqz       $v0, .Lrace_800F339C
/* A9654 800F3294 30620002 */   andi      $v0, $v1, 0x2
/* A9658 800F3298 8E040000 */  lw         $a0, 0x0($s0)
/* A965C 800F329C 8E05000C */  lw         $a1, 0xC($s0)
/* A9660 800F32A0 0C040132 */  jal        func_race_801004C8
/* A9664 800F32A4 00000000 */   nop
/* A9668 800F32A8 10400037 */  beqz       $v0, .Lrace_800F3388
/* A966C 800F32AC 00000000 */   nop
/* A9670 800F32B0 4616C03C */  c.lt.s     $f24, $f22
/* A9674 800F32B4 00000000 */  nop
/* A9678 800F32B8 45000033 */  bc1f       .Lrace_800F3388
/* A967C 800F32BC 00000000 */   nop
/* A9680 800F32C0 8E040000 */  lw         $a0, 0x0($s0)
/* A9684 800F32C4 0C046FC8 */  jal        func_race_8011BF20
/* A9688 800F32C8 00000000 */   nop
/* A968C 800F32CC 46000506 */  mov.s      $f20, $f0
/* A9690 800F32D0 3C01800D */  lui        $at, %hi(D_race_800CCBE4)
/* A9694 800F32D4 C424CBE4 */  lwc1       $f4, %lo(D_race_800CCBE4)($at)
/* A9698 800F32D8 4614B003 */  div.s      $f0, $f22, $f20
/* A969C 800F32DC 46002001 */  sub.s      $f0, $f4, $f0
/* A96A0 800F32E0 3C01800D */  lui        $at, %hi(D_race_800CCBE8)
/* A96A4 800F32E4 C422CBE8 */  lwc1       $f2, %lo(D_race_800CCBE8)($at)
/* A96A8 800F32E8 4602003C */  c.lt.s     $f0, $f2
/* A96AC 800F32EC 00000000 */  nop
/* A96B0 800F32F0 45030001 */  bc1tl      .Lrace_800F32F8
/* A96B4 800F32F4 46001006 */   mov.s     $f0, $f2
.Lrace_800F32F8:
/* A96B8 800F32F8 8E030030 */  lw         $v1, 0x30($s0)
/* A96BC 800F32FC 24020001 */  addiu      $v0, $zero, 0x1
/* A96C0 800F3300 14620005 */  bne        $v1, $v0, .Lrace_800F3318
/* A96C4 800F3304 00000000 */   nop
/* A96C8 800F3308 3C01800D */  lui        $at, %hi(D_race_800CCBEC)
/* A96CC 800F330C C422CBEC */  lwc1       $f2, %lo(D_race_800CCBEC)($at)
/* A96D0 800F3310 0803CCC8 */  j          .Lrace_800F3320
/* A96D4 800F3314 46000000 */   add.s     $f0, $f0, $f0
.Lrace_800F3318:
/* A96D8 800F3318 3C01800D */  lui        $at, %hi(D_race_800CCBF0)
/* A96DC 800F331C C422CBF0 */  lwc1       $f2, %lo(D_race_800CCBF0)($at)
.Lrace_800F3320:
/* A96E0 800F3320 46040000 */  add.s      $f0, $f0, $f4
/* A96E4 800F3324 8E040000 */  lw         $a0, 0x0($s0)
/* A96E8 800F3328 44050000 */  mfc1       $a1, $f0
/* A96EC 800F332C 44061000 */  mfc1       $a2, $f2
/* A96F0 800F3330 3C074049 */  lui        $a3, (0x40490FDB >> 16)
/* A96F4 800F3334 34E70FDB */  ori        $a3, $a3, (0x40490FDB & 0xFFFF)
/* A96F8 800F3338 0C0477F6 */  jal        func_race_8011DFD8
/* A96FC 800F333C 00000000 */   nop
/* A9700 800F3340 4614B03C */  c.lt.s     $f22, $f20
/* A9704 800F3344 00000000 */  nop
/* A9708 800F3348 45000048 */  bc1f       .Lrace_800F346C
/* A970C 800F334C 00000000 */   nop
/* A9710 800F3350 4616A081 */  sub.s      $f2, $f20, $f22
/* A9714 800F3354 3C01800D */  lui        $at, %hi(D_race_800CCBF4)
/* A9718 800F3358 C420CBF4 */  lwc1       $f0, %lo(D_race_800CCBF4)($at)
/* A971C 800F335C 46001082 */  mul.s      $f2, $f2, $f0
/* A9720 800F3360 00000000 */  nop
/* A9724 800F3364 46001082 */  mul.s      $f2, $f2, $f0
/* A9728 800F3368 C604000C */  lwc1       $f4, 0xC($s0)
/* A972C 800F336C 44800000 */  mtc1       $zero, $f0
/* A9730 800F3370 4600203C */  c.lt.s     $f4, $f0
/* A9734 800F3374 00000000 */  nop
/* A9738 800F3378 4501003A */  bc1t       .Lrace_800F3464
/* A973C 800F337C 4602B500 */   add.s     $f20, $f22, $f2
/* A9740 800F3380 0803CD1B */  j          .Lrace_800F346C
/* A9744 800F3384 E614000C */   swc1      $f20, 0xC($s0)
.Lrace_800F3388:
/* A9748 800F3388 8E040000 */  lw         $a0, 0x0($s0)
/* A974C 800F338C 0C047851 */  jal        func_race_8011E144
/* A9750 800F3390 00000000 */   nop
/* A9754 800F3394 0803CD1B */  j          .Lrace_800F346C
/* A9758 800F3398 00000000 */   nop
.Lrace_800F339C:
/* A975C 800F339C 14400033 */  bnez       $v0, .Lrace_800F346C
/* A9760 800F33A0 00000000 */   nop
/* A9764 800F33A4 8E040000 */  lw         $a0, 0x0($s0)
/* A9768 800F33A8 0C0400FE */  jal        func_race_801003F8
/* A976C 800F33AC 00000000 */   nop
/* A9770 800F33B0 8E040000 */  lw         $a0, 0x0($s0)
/* A9774 800F33B4 8E05000C */  lw         $a1, 0xC($s0)
/* A9778 800F33B8 0C040132 */  jal        func_race_801004C8
/* A977C 800F33BC 46000506 */   mov.s     $f20, $f0
/* A9780 800F33C0 10400018 */  beqz       $v0, .Lrace_800F3424
/* A9784 800F33C4 00000000 */   nop
/* A9788 800F33C8 4614B03C */  c.lt.s     $f22, $f20
/* A978C 800F33CC 00000000 */  nop
/* A9790 800F33D0 45000014 */  bc1f       .Lrace_800F3424
/* A9794 800F33D4 00000000 */   nop
/* A9798 800F33D8 4616C03C */  c.lt.s     $f24, $f22
/* A979C 800F33DC 00000000 */  nop
/* A97A0 800F33E0 45000010 */  bc1f       .Lrace_800F3424
/* A97A4 800F33E4 00000000 */   nop
/* A97A8 800F33E8 3C01800D */  lui        $at, %hi(D_race_800CCBF8)
/* A97AC 800F33EC C422CBF8 */  lwc1       $f2, %lo(D_race_800CCBF8)($at)
/* A97B0 800F33F0 4614B003 */  div.s      $f0, $f22, $f20
/* A97B4 800F33F4 46001001 */  sub.s      $f0, $f2, $f0
/* A97B8 800F33F8 8E040000 */  lw         $a0, 0x0($s0)
/* A97BC 800F33FC 46020000 */  add.s      $f0, $f0, $f2
/* A97C0 800F3400 3C063F59 */  lui        $a2, (0x3F59999A >> 16)
/* A97C4 800F3404 34C6999A */  ori        $a2, $a2, (0x3F59999A & 0xFFFF)
/* A97C8 800F3408 3C073F35 */  lui        $a3, (0x3F350481 >> 16)
/* A97CC 800F340C 34E70481 */  ori        $a3, $a3, (0x3F350481 & 0xFFFF)
/* A97D0 800F3410 44050000 */  mfc1       $a1, $f0
/* A97D4 800F3414 0C0477F6 */  jal        func_race_8011DFD8
/* A97D8 800F3418 00000000 */   nop
/* A97DC 800F341C 0803CD0C */  j          .Lrace_800F3430
/* A97E0 800F3420 00000000 */   nop
.Lrace_800F3424:
/* A97E4 800F3424 8E040000 */  lw         $a0, 0x0($s0)
/* A97E8 800F3428 0C047851 */  jal        func_race_8011E144
/* A97EC 800F342C 00000000 */   nop
.Lrace_800F3430:
/* A97F0 800F3430 4614B03C */  c.lt.s     $f22, $f20
/* A97F4 800F3434 00000000 */  nop
/* A97F8 800F3438 4500000C */  bc1f       .Lrace_800F346C
/* A97FC 800F343C 00000000 */   nop
/* A9800 800F3440 C604000C */  lwc1       $f4, 0xC($s0)
/* A9804 800F3444 4616A180 */  add.s      $f6, $f20, $f22
/* A9808 800F3448 44800000 */  mtc1       $zero, $f0
/* A980C 800F344C 3C01800D */  lui        $at, %hi(D_race_800CCBFC)
/* A9810 800F3450 C422CBFC */  lwc1       $f2, %lo(D_race_800CCBFC)($at)
/* A9814 800F3454 4600203C */  c.lt.s     $f4, $f0
/* A9818 800F3458 46023502 */  mul.s      $f20, $f6, $f2
/* A981C 800F345C 45020003 */  bc1fl      .Lrace_800F346C
/* A9820 800F3460 E614000C */   swc1      $f20, 0xC($s0)
.Lrace_800F3464:
/* A9824 800F3464 4600A007 */  neg.s      $f0, $f20
/* A9828 800F3468 E600000C */  swc1       $f0, 0xC($s0)
.Lrace_800F346C:
/* A982C 800F346C 8E040000 */  lw         $a0, 0x0($s0)
/* A9830 800F3470 8E05000C */  lw         $a1, 0xC($s0)
/* A9834 800F3474 0C047322 */  jal        func_race_8011CC88
/* A9838 800F3478 00000000 */   nop
.Lrace_800F347C:
/* A983C 800F347C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9840 800F3480 8FB00010 */  lw         $s0, 0x10($sp)
/* A9844 800F3484 D7B80028 */  ldc1       $f24, 0x28($sp)
/* A9848 800F3488 D7B60020 */  ldc1       $f22, 0x20($sp)
/* A984C 800F348C D7B40018 */  ldc1       $f20, 0x18($sp)
/* A9850 800F3490 03E00008 */  jr         $ra
/* A9854 800F3494 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800F3498
/* A9858 800F3498 8C820014 */  lw         $v0, 0x14($a0)
/* A985C 800F349C 44851000 */  mtc1       $a1, $f2
/* A9860 800F34A0 30420010 */  andi       $v0, $v0, 0x10
/* A9864 800F34A4 1040000F */  beqz       $v0, .Lrace_800F34E4
/* A9868 800F34A8 00000000 */   nop
/* A986C 800F34AC C480001C */  lwc1       $f0, 0x1C($a0)
/* A9870 800F34B0 46001080 */  add.s      $f2, $f2, $f0
/* A9874 800F34B4 3C01800D */  lui        $at, %hi(D_race_800CCC00)
/* A9878 800F34B8 C420CC00 */  lwc1       $f0, %lo(D_race_800CCC00)($at)
/* A987C 800F34BC 4602003C */  c.lt.s     $f0, $f2
/* A9880 800F34C0 00000000 */  nop
/* A9884 800F34C4 45030007 */  bc1tl      .Lrace_800F34E4
/* A9888 800F34C8 46000086 */   mov.s     $f2, $f0
/* A988C 800F34CC 3C01800D */  lui        $at, %hi(D_race_800CCC04)
/* A9890 800F34D0 C420CC04 */  lwc1       $f0, %lo(D_race_800CCC04)($at)
/* A9894 800F34D4 4600103C */  c.lt.s     $f2, $f0
/* A9898 800F34D8 00000000 */  nop
/* A989C 800F34DC 45030001 */  bc1tl      .Lrace_800F34E4
/* A98A0 800F34E0 46000086 */   mov.s     $f2, $f0
.Lrace_800F34E4:
/* A98A4 800F34E4 44802000 */  mtc1       $zero, $f4
/* A98A8 800F34E8 4604103C */  c.lt.s     $f2, $f4
/* A98AC 800F34EC 00000000 */  nop
/* A98B0 800F34F0 45000007 */  bc1f       .Lrace_800F3510
/* A98B4 800F34F4 00001821 */   addu      $v1, $zero, $zero
/* A98B8 800F34F8 8C820000 */  lw         $v0, 0x0($a0)
/* A98BC 800F34FC C440061C */  lwc1       $f0, 0x61C($v0)
/* A98C0 800F3500 4600203C */  c.lt.s     $f4, $f0
/* A98C4 800F3504 00000000 */  nop
/* A98C8 800F3508 4503000B */  bc1tl      .Lrace_800F3538
/* A98CC 800F350C 24030001 */   addiu     $v1, $zero, 0x1
.Lrace_800F3510:
/* A98D0 800F3510 4602203C */  c.lt.s     $f4, $f2
/* A98D4 800F3514 00000000 */  nop
/* A98D8 800F3518 45000007 */  bc1f       .Lrace_800F3538
/* A98DC 800F351C 00000000 */   nop
/* A98E0 800F3520 8C820000 */  lw         $v0, 0x0($a0)
/* A98E4 800F3524 C440061C */  lwc1       $f0, 0x61C($v0)
/* A98E8 800F3528 4604003C */  c.lt.s     $f0, $f4
/* A98EC 800F352C 00000000 */  nop
/* A98F0 800F3530 45030001 */  bc1tl      .Lrace_800F3538
/* A98F4 800F3534 24030001 */   addiu     $v1, $zero, 0x1
.Lrace_800F3538:
/* A98F8 800F3538 10600007 */  beqz       $v1, .Lrace_800F3558
/* A98FC 800F353C 00000000 */   nop
/* A9900 800F3540 3C01800D */  lui        $at, %hi(D_race_800CCC08)
/* A9904 800F3544 C420CC08 */  lwc1       $f0, %lo(D_race_800CCC08)($at)
/* A9908 800F3548 46001002 */  mul.s      $f0, $f2, $f0
/* A990C 800F354C 46000000 */  add.s      $f0, $f0, $f0
/* A9910 800F3550 03E00008 */  jr         $ra
/* A9914 800F3554 E4800010 */   swc1      $f0, 0x10($a0)
.Lrace_800F3558:
/* A9918 800F3558 3C01800D */  lui        $at, %hi(D_race_800CCC0C)
/* A991C 800F355C C420CC0C */  lwc1       $f0, %lo(D_race_800CCC0C)($at)
/* A9920 800F3560 46001002 */  mul.s      $f0, $f2, $f0
/* A9924 800F3564 03E00008 */  jr         $ra
/* A9928 800F3568 E4800010 */   swc1      $f0, 0x10($a0)

glabel func_race_800F356C
/* A992C 800F356C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A9930 800F3570 AFBF0010 */  sw         $ra, 0x10($sp)
/* A9934 800F3574 8C820014 */  lw         $v0, 0x14($a0)
/* A9938 800F3578 30420008 */  andi       $v0, $v0, 0x8
/* A993C 800F357C 1040000B */  beqz       $v0, .Lrace_800F35AC
/* A9940 800F3580 00000000 */   nop
/* A9944 800F3584 C4820010 */  lwc1       $f2, 0x10($a0)
/* A9948 800F3588 44800000 */  mtc1       $zero, $f0
/* A994C 800F358C 4602003C */  c.lt.s     $f0, $f2
/* A9950 800F3590 00000000 */  nop
/* A9954 800F3594 45000005 */  bc1f       .Lrace_800F35AC
/* A9958 800F3598 00000000 */   nop
/* A995C 800F359C 3C01800D */  lui        $at, %hi(D_race_800CCC10)
/* A9960 800F35A0 C420CC10 */  lwc1       $f0, %lo(D_race_800CCC10)($at)
/* A9964 800F35A4 46001002 */  mul.s      $f0, $f2, $f0
/* A9968 800F35A8 E4800010 */  swc1       $f0, 0x10($a0)
.Lrace_800F35AC:
/* A996C 800F35AC 8C830014 */  lw         $v1, 0x14($a0)
/* A9970 800F35B0 30620001 */  andi       $v0, $v1, 0x1
/* A9974 800F35B4 1040000D */  beqz       $v0, .Lrace_800F35EC
/* A9978 800F35B8 30620100 */   andi      $v0, $v1, 0x100
/* A997C 800F35BC 10400006 */  beqz       $v0, .Lrace_800F35D8
/* A9980 800F35C0 00000000 */   nop
/* A9984 800F35C4 8C830000 */  lw         $v1, 0x0($a0)
/* A9988 800F35C8 8C6200CC */  lw         $v0, 0xCC($v1)
/* A998C 800F35CC 3C054358 */  lui        $a1, (0x43580000 >> 16)
/* A9990 800F35D0 0803CD7E */  j          .Lrace_800F35F8
/* A9994 800F35D4 00000000 */   nop
.Lrace_800F35D8:
/* A9998 800F35D8 8C830000 */  lw         $v1, 0x0($a0)
/* A999C 800F35DC 8C6200CC */  lw         $v0, 0xCC($v1)
/* A99A0 800F35E0 3C0543D8 */  lui        $a1, (0x43D80000 >> 16)
/* A99A4 800F35E4 0803CD7E */  j          .Lrace_800F35F8
/* A99A8 800F35E8 00000000 */   nop
.Lrace_800F35EC:
/* A99AC 800F35EC 8C830000 */  lw         $v1, 0x0($a0)
/* A99B0 800F35F0 8C6200CC */  lw         $v0, 0xCC($v1)
/* A99B4 800F35F4 8C850010 */  lw         $a1, 0x10($a0)
.Lrace_800F35F8:
/* A99B8 800F35F8 84440030 */  lh         $a0, 0x30($v0)
/* A99BC 800F35FC 8C420034 */  lw         $v0, 0x34($v0)
/* A99C0 800F3600 0040F809 */  jalr       $v0
/* A99C4 800F3604 00642021 */   addu      $a0, $v1, $a0
/* A99C8 800F3608 8FBF0010 */  lw         $ra, 0x10($sp)
/* A99CC 800F360C 03E00008 */  jr         $ra
/* A99D0 800F3610 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F3614
/* A99D4 800F3614 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A99D8 800F3618 AFB00010 */  sw         $s0, 0x10($sp)
/* A99DC 800F361C 00808021 */  addu       $s0, $a0, $zero
/* A99E0 800F3620 AFB10014 */  sw         $s1, 0x14($sp)
/* A99E4 800F3624 00A08821 */  addu       $s1, $a1, $zero
/* A99E8 800F3628 2403FFF7 */  addiu      $v1, $zero, -0x9
/* A99EC 800F362C AFBF0018 */  sw         $ra, 0x18($sp)
/* A99F0 800F3630 8E020014 */  lw         $v0, 0x14($s0)
/* A99F4 800F3634 8E040000 */  lw         $a0, 0x0($s0)
/* A99F8 800F3638 00431024 */  and        $v0, $v0, $v1
/* A99FC 800F363C 0C040105 */  jal        func_race_80100414
/* A9A00 800F3640 AE020014 */   sw        $v0, 0x14($s0)
/* A9A04 800F3644 10400011 */  beqz       $v0, .Lrace_800F368C
/* A9A08 800F3648 00000000 */   nop
/* A9A0C 800F364C 8E020014 */  lw         $v0, 0x14($s0)
/* A9A10 800F3650 AE00002C */  sw         $zero, 0x2C($s0)
/* A9A14 800F3654 AE110030 */  sw         $s1, 0x30($s0)
/* A9A18 800F3658 34420004 */  ori        $v0, $v0, 0x4
/* A9A1C 800F365C 16200006 */  bnez       $s1, .Lrace_800F3678
/* A9A20 800F3660 AE020014 */   sw        $v0, 0x14($s0)
/* A9A24 800F3664 8E040000 */  lw         $a0, 0x0($s0)
/* A9A28 800F3668 3C053E99 */  lui        $a1, (0x3E99999A >> 16)
/* A9A2C 800F366C 34A5999A */  ori        $a1, $a1, (0x3E99999A & 0xFFFF)
/* A9A30 800F3670 0803CDA1 */  j          .Lrace_800F3684
/* A9A34 800F3674 00000000 */   nop
.Lrace_800F3678:
/* A9A38 800F3678 8E040000 */  lw         $a0, 0x0($s0)
/* A9A3C 800F367C 3C053ECC */  lui        $a1, (0x3ECCCCCD >> 16)
/* A9A40 800F3680 34A5CCCD */  ori        $a1, $a1, (0x3ECCCCCD & 0xFFFF)
.Lrace_800F3684:
/* A9A44 800F3684 0C047D27 */  jal        func_race_8011F49C
/* A9A48 800F3688 00000000 */   nop
.Lrace_800F368C:
/* A9A4C 800F368C 8FBF0018 */  lw         $ra, 0x18($sp)
/* A9A50 800F3690 8FB10014 */  lw         $s1, 0x14($sp)
/* A9A54 800F3694 8FB00010 */  lw         $s0, 0x10($sp)
/* A9A58 800F3698 03E00008 */  jr         $ra
/* A9A5C 800F369C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F36A0
/* A9A60 800F36A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A9A64 800F36A4 AFB00010 */  sw         $s0, 0x10($sp)
/* A9A68 800F36A8 00808021 */  addu       $s0, $a0, $zero
/* A9A6C 800F36AC 2403FFFB */  addiu      $v1, $zero, -0x5
/* A9A70 800F36B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9A74 800F36B4 8E020014 */  lw         $v0, 0x14($s0)
/* A9A78 800F36B8 8E040000 */  lw         $a0, 0x0($s0)
/* A9A7C 800F36BC 00431024 */  and        $v0, $v0, $v1
/* A9A80 800F36C0 0C047851 */  jal        func_race_8011E144
/* A9A84 800F36C4 AE020014 */   sw        $v0, 0x14($s0)
/* A9A88 800F36C8 8E040000 */  lw         $a0, 0x0($s0)
/* A9A8C 800F36CC 8E020014 */  lw         $v0, 0x14($s0)
/* A9A90 800F36D0 2403FFF7 */  addiu      $v1, $zero, -0x9
/* A9A94 800F36D4 AE00002C */  sw         $zero, 0x2C($s0)
/* A9A98 800F36D8 00431024 */  and        $v0, $v0, $v1
/* A9A9C 800F36DC 0C047D2C */  jal        func_race_8011F4B0
/* A9AA0 800F36E0 AE020014 */   sw        $v0, 0x14($s0)
/* A9AA4 800F36E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9AA8 800F36E8 8FB00010 */  lw         $s0, 0x10($sp)
/* A9AAC 800F36EC 03E00008 */  jr         $ra
/* A9AB0 800F36F0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F36F4
/* A9AB4 800F36F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A9AB8 800F36F8 AFB00010 */  sw         $s0, 0x10($sp)
/* A9ABC 800F36FC 00808021 */  addu       $s0, $a0, $zero
/* A9AC0 800F3700 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9AC4 800F3704 8E030014 */  lw         $v1, 0x14($s0)
/* A9AC8 800F3708 240203E8 */  addiu      $v0, $zero, 0x3E8
/* A9ACC 800F370C AE020024 */  sw         $v0, 0x24($s0)
/* A9AD0 800F3710 AE050004 */  sw         $a1, 0x4($s0)
/* A9AD4 800F3714 34630040 */  ori        $v1, $v1, 0x40
/* A9AD8 800F3718 0C03CDA8 */  jal        func_race_800F36A0
/* A9ADC 800F371C AE030014 */   sw        $v1, 0x14($s0)
/* A9AE0 800F3720 8E040050 */  lw         $a0, 0x50($s0)
/* A9AE4 800F3724 8E050004 */  lw         $a1, 0x4($s0)
/* A9AE8 800F3728 0C04C3DD */  jal        func_race_80130F74
/* A9AEC 800F372C AE00000C */   sw        $zero, 0xC($s0)
/* A9AF0 800F3730 8E020050 */  lw         $v0, 0x50($s0)
/* A9AF4 800F3734 3C01800D */  lui        $at, %hi(D_race_800CCC14)
/* A9AF8 800F3738 C420CC14 */  lwc1       $f0, %lo(D_race_800CCC14)($at)
/* A9AFC 800F373C E440002C */  swc1       $f0, 0x2C($v0)
/* A9B00 800F3740 C6020024 */  lwc1       $f2, 0x24($s0)
/* A9B04 800F3744 468010A0 */  cvt.s.w    $f2, $f2
/* A9B08 800F3748 8E040050 */  lw         $a0, 0x50($s0)
/* A9B0C 800F374C 44051000 */  mfc1       $a1, $f2
/* A9B10 800F3750 0C04C439 */  jal        func_race_801310E4
/* A9B14 800F3754 00000000 */   nop
/* A9B18 800F3758 8E020050 */  lw         $v0, 0x50($s0)
/* A9B1C 800F375C 8C460000 */  lw         $a2, 0x0($v0)
/* A9B20 800F3760 8C470004 */  lw         $a3, 0x4($v0)
/* A9B24 800F3764 8C480008 */  lw         $t0, 0x8($v0)
/* A9B28 800F3768 AE060034 */  sw         $a2, 0x34($s0)
/* A9B2C 800F376C AE070038 */  sw         $a3, 0x38($s0)
/* A9B30 800F3770 AE08003C */  sw         $t0, 0x3C($s0)
/* A9B34 800F3774 8E020050 */  lw         $v0, 0x50($s0)
/* A9B38 800F3778 8C46000C */  lw         $a2, 0xC($v0)
/* A9B3C 800F377C 8C470010 */  lw         $a3, 0x10($v0)
/* A9B40 800F3780 8C480014 */  lw         $t0, 0x14($v0)
/* A9B44 800F3784 8C490018 */  lw         $t1, 0x18($v0)
/* A9B48 800F3788 AE060040 */  sw         $a2, 0x40($s0)
/* A9B4C 800F378C AE070044 */  sw         $a3, 0x44($s0)
/* A9B50 800F3790 AE080048 */  sw         $t0, 0x48($s0)
/* A9B54 800F3794 AE09004C */  sw         $t1, 0x4C($s0)
/* A9B58 800F3798 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9B5C 800F379C 8FB00010 */  lw         $s0, 0x10($sp)
/* A9B60 800F37A0 03E00008 */  jr         $ra
/* A9B64 800F37A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F37A8
/* A9B68 800F37A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A9B6C 800F37AC AFB00010 */  sw         $s0, 0x10($sp)
/* A9B70 800F37B0 00808021 */  addu       $s0, $a0, $zero
/* A9B74 800F37B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9B78 800F37B8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* A9B7C 800F37BC 8E040000 */  lw         $a0, 0x0($s0)
/* A9B80 800F37C0 AE000010 */  sw         $zero, 0x10($s0)
/* A9B84 800F37C4 C6140010 */  lwc1       $f20, 0x10($s0)
/* A9B88 800F37C8 8E020014 */  lw         $v0, 0x14($s0)
/* A9B8C 800F37CC 2403FFBF */  addiu      $v1, $zero, -0x41
/* A9B90 800F37D0 AE000004 */  sw         $zero, 0x4($s0)
/* A9B94 800F37D4 AE000024 */  sw         $zero, 0x24($s0)
/* A9B98 800F37D8 AE00000C */  sw         $zero, 0xC($s0)
/* A9B9C 800F37DC 4405A000 */  mfc1       $a1, $f20
/* A9BA0 800F37E0 00431024 */  and        $v0, $v0, $v1
/* A9BA4 800F37E4 0C047322 */  jal        func_race_8011CC88
/* A9BA8 800F37E8 AE020014 */   sw        $v0, 0x14($s0)
/* A9BAC 800F37EC 8E030000 */  lw         $v1, 0x0($s0)
/* A9BB0 800F37F0 8C6200CC */  lw         $v0, 0xCC($v1)
/* A9BB4 800F37F4 4405A000 */  mfc1       $a1, $f20
/* A9BB8 800F37F8 84440030 */  lh         $a0, 0x30($v0)
/* A9BBC 800F37FC 8C420034 */  lw         $v0, 0x34($v0)
/* A9BC0 800F3800 0040F809 */  jalr       $v0
/* A9BC4 800F3804 00642021 */   addu      $a0, $v1, $a0
/* A9BC8 800F3808 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9BCC 800F380C 8FB00010 */  lw         $s0, 0x10($sp)
/* A9BD0 800F3810 D7B40018 */  ldc1       $f20, 0x18($sp)
/* A9BD4 800F3814 03E00008 */  jr         $ra
/* A9BD8 800F3818 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F381C
/* A9BDC 800F381C 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* A9BE0 800F3820 AFB00090 */  sw         $s0, 0x90($sp)
/* A9BE4 800F3824 00808021 */  addu       $s0, $a0, $zero
/* A9BE8 800F3828 AFBF0098 */  sw         $ra, 0x98($sp)
/* A9BEC 800F382C AFB10094 */  sw         $s1, 0x94($sp)
/* A9BF0 800F3830 F7B400A0 */  sdc1       $f20, 0xA0($sp)
/* A9BF4 800F3834 8E020000 */  lw         $v0, 0x0($s0)
/* A9BF8 800F3838 8C43013C */  lw         $v1, 0x13C($v0)
/* A9BFC 800F383C 00A08821 */  addu       $s1, $a1, $zero
/* A9C00 800F3840 8C620024 */  lw         $v0, 0x24($v1)
/* A9C04 800F3844 27A50010 */  addiu      $a1, $sp, 0x10
/* A9C08 800F3848 84440010 */  lh         $a0, 0x10($v0)
/* A9C0C 800F384C 8C420014 */  lw         $v0, 0x14($v0)
/* A9C10 800F3850 0040F809 */  jalr       $v0
/* A9C14 800F3854 00642021 */   addu      $a0, $v1, $a0
/* A9C18 800F3858 C6000034 */  lwc1       $f0, 0x34($s0)
/* A9C1C 800F385C C7A20010 */  lwc1       $f2, 0x10($sp)
/* A9C20 800F3860 46020001 */  sub.s      $f0, $f0, $f2
/* A9C24 800F3864 C7A20014 */  lwc1       $f2, 0x14($sp)
/* A9C28 800F3868 46000102 */  mul.s      $f4, $f0, $f0
/* A9C2C 800F386C E7A00050 */  swc1       $f0, 0x50($sp)
/* A9C30 800F3870 C6000038 */  lwc1       $f0, 0x38($s0)
/* A9C34 800F3874 46020001 */  sub.s      $f0, $f0, $f2
/* A9C38 800F3878 C7A20018 */  lwc1       $f2, 0x18($sp)
/* A9C3C 800F387C 46000182 */  mul.s      $f6, $f0, $f0
/* A9C40 800F3880 E7A00054 */  swc1       $f0, 0x54($sp)
/* A9C44 800F3884 C600003C */  lwc1       $f0, 0x3C($s0)
/* A9C48 800F3888 46020001 */  sub.s      $f0, $f0, $f2
/* A9C4C 800F388C 46000082 */  mul.s      $f2, $f0, $f0
/* A9C50 800F3890 46062100 */  add.s      $f4, $f4, $f6
/* A9C54 800F3894 46022300 */  add.s      $f12, $f4, $f2
/* A9C58 800F3898 46006084 */  sqrt.s     $f2, $f12
/* A9C5C 800F389C 46021032 */  c.eq.s     $f2, $f2
/* A9C60 800F38A0 00000000 */  nop
/* A9C64 800F38A4 45010004 */  bc1t       .Lrace_800F38B8
/* A9C68 800F38A8 E7A00058 */   swc1      $f0, 0x58($sp)
/* A9C6C 800F38AC 0C006BC8 */  jal        sqrt
/* A9C70 800F38B0 00000000 */   nop
/* A9C74 800F38B4 46000086 */  mov.s      $f2, $f0
.Lrace_800F38B8:
/* A9C78 800F38B8 3C01800D */  lui        $at, %hi(D_race_800CCC18)
/* A9C7C 800F38BC C420CC18 */  lwc1       $f0, %lo(D_race_800CCC18)($at)
/* A9C80 800F38C0 46001506 */  mov.s      $f20, $f2
/* A9C84 800F38C4 4600A03C */  c.lt.s     $f20, $f0
/* A9C88 800F38C8 00000000 */  nop
/* A9C8C 800F38CC 45020012 */  bc1fl      .Lrace_800F3918
/* A9C90 800F38D0 02002021 */   addu      $a0, $s0, $zero
/* A9C94 800F38D4 8E040000 */  lw         $a0, 0x0($s0)
/* A9C98 800F38D8 8E050004 */  lw         $a1, 0x4($s0)
/* A9C9C 800F38DC 0C03FE9A */  jal        func_race_800FFA68
/* A9CA0 800F38E0 00000000 */   nop
/* A9CA4 800F38E4 8E040000 */  lw         $a0, 0x0($s0)
/* A9CA8 800F38E8 0C0401CE */  jal        func_race_80100738
/* A9CAC 800F38EC 00000000 */   nop
/* A9CB0 800F38F0 C60E0024 */  lwc1       $f14, 0x24($s0)
/* A9CB4 800F38F4 468073A0 */  cvt.s.w    $f14, $f14
/* A9CB8 800F38F8 8E040000 */  lw         $a0, 0x0($s0)
/* A9CBC 800F38FC 44057000 */  mfc1       $a1, $f14
/* A9CC0 800F3900 0C04C439 */  jal        func_race_801310E4
/* A9CC4 800F3904 24840738 */   addiu     $a0, $a0, 0x738
/* A9CC8 800F3908 0C03CDEA */  jal        func_race_800F37A8
/* A9CCC 800F390C 02002021 */   addu      $a0, $s0, $zero
/* A9CD0 800F3910 0803CEFC */  j          .Lrace_800F3BF0
/* A9CD4 800F3914 00000000 */   nop
.Lrace_800F3918:
/* A9CD8 800F3918 C600000C */  lwc1       $f0, 0xC($s0)
/* A9CDC 800F391C 02202821 */  addu       $a1, $s1, $zero
/* A9CE0 800F3920 0C03CC1D */  jal        func_race_800F3074
/* A9CE4 800F3924 E6000008 */   swc1      $f0, 0x8($s0)
/* A9CE8 800F3928 8E030000 */  lw         $v1, 0x0($s0)
/* A9CEC 800F392C 8C620370 */  lw         $v0, 0x370($v1)
/* A9CF0 800F3930 2C420003 */  sltiu      $v0, $v0, 0x3
/* A9CF4 800F3934 14400009 */  bnez       $v0, .Lrace_800F395C
/* A9CF8 800F3938 00000000 */   nop
/* A9CFC 800F393C 8C62013C */  lw         $v0, 0x13C($v1)
/* A9D00 800F3940 C4400028 */  lwc1       $f0, 0x28($v0)
/* A9D04 800F3944 E7A00020 */  swc1       $f0, 0x20($sp)
/* A9D08 800F3948 C440002C */  lwc1       $f0, 0x2C($v0)
/* A9D0C 800F394C E7A00024 */  swc1       $f0, 0x24($sp)
/* A9D10 800F3950 C4400030 */  lwc1       $f0, 0x30($v0)
/* A9D14 800F3954 0803CE5D */  j          .Lrace_800F3974
/* A9D18 800F3958 E7A00028 */   swc1      $f0, 0x28($sp)
.Lrace_800F395C:
/* A9D1C 800F395C 8C66016C */  lw         $a2, 0x16C($v1)
/* A9D20 800F3960 8C670170 */  lw         $a3, 0x170($v1)
/* A9D24 800F3964 8C680174 */  lw         $t0, 0x174($v1)
/* A9D28 800F3968 AFA60020 */  sw         $a2, 0x20($sp)
/* A9D2C 800F396C AFA70024 */  sw         $a3, 0x24($sp)
/* A9D30 800F3970 AFA80028 */  sw         $t0, 0x28($sp)
.Lrace_800F3974:
/* A9D34 800F3974 8E020000 */  lw         $v0, 0x0($s0)
/* A9D38 800F3978 8C42013C */  lw         $v0, 0x13C($v0)
/* A9D3C 800F397C C7A20050 */  lwc1       $f2, 0x50($sp)
/* A9D40 800F3980 C44A0034 */  lwc1       $f10, 0x34($v0)
/* A9D44 800F3984 C7A40054 */  lwc1       $f4, 0x54($sp)
/* A9D48 800F3988 46025082 */  mul.s      $f2, $f10, $f2
/* A9D4C 800F398C E7AA0030 */  swc1       $f10, 0x30($sp)
/* A9D50 800F3990 C4480038 */  lwc1       $f8, 0x38($v0)
/* A9D54 800F3994 C7A00058 */  lwc1       $f0, 0x58($sp)
/* A9D58 800F3998 46044102 */  mul.s      $f4, $f8, $f4
/* A9D5C 800F399C E7A80034 */  swc1       $f8, 0x34($sp)
/* A9D60 800F39A0 C446003C */  lwc1       $f6, 0x3C($v0)
/* A9D64 800F39A4 46003002 */  mul.s      $f0, $f6, $f0
/* A9D68 800F39A8 46041080 */  add.s      $f2, $f2, $f4
/* A9D6C 800F39AC 46001080 */  add.s      $f2, $f2, $f0
/* A9D70 800F39B0 44800000 */  mtc1       $zero, $f0
/* A9D74 800F39B4 24020001 */  addiu      $v0, $zero, 0x1
/* A9D78 800F39B8 4602003E */  c.le.s     $f0, $f2
/* A9D7C 800F39BC 00000000 */  nop
/* A9D80 800F39C0 45010002 */  bc1t       .Lrace_800F39CC
/* A9D84 800F39C4 E7A60038 */   swc1      $f6, 0x38($sp)
/* A9D88 800F39C8 00001021 */  addu       $v0, $zero, $zero
.Lrace_800F39CC:
/* A9D8C 800F39CC 50400009 */  beql       $v0, $zero, .Lrace_800F39F4
/* A9D90 800F39D0 46005007 */   neg.s     $f0, $f10
/* A9D94 800F39D4 8FA60030 */  lw         $a2, 0x30($sp)
/* A9D98 800F39D8 8FA70034 */  lw         $a3, 0x34($sp)
/* A9D9C 800F39DC 8FA80038 */  lw         $t0, 0x38($sp)
/* A9DA0 800F39E0 AFA60040 */  sw         $a2, 0x40($sp)
/* A9DA4 800F39E4 AFA70044 */  sw         $a3, 0x44($sp)
/* A9DA8 800F39E8 AFA80048 */  sw         $t0, 0x48($sp)
/* A9DAC 800F39EC 0803CE82 */  j          .Lrace_800F3A08
/* A9DB0 800F39F0 00000000 */   nop
.Lrace_800F39F4:
/* A9DB4 800F39F4 E7A00040 */  swc1       $f0, 0x40($sp)
/* A9DB8 800F39F8 46004007 */  neg.s      $f0, $f8
/* A9DBC 800F39FC E7A00044 */  swc1       $f0, 0x44($sp)
/* A9DC0 800F3A00 46003007 */  neg.s      $f0, $f6
/* A9DC4 800F3A04 E7A00048 */  swc1       $f0, 0x48($sp)
.Lrace_800F3A08:
/* A9DC8 800F3A08 3C01800D */  lui        $at, %hi(D_race_800CCC1C)
/* A9DCC 800F3A0C C420CC1C */  lwc1       $f0, %lo(D_race_800CCC1C)($at)
/* A9DD0 800F3A10 C7A80050 */  lwc1       $f8, 0x50($sp)
/* A9DD4 800F3A14 46140003 */  div.s      $f0, $f0, $f20
/* A9DD8 800F3A18 46004202 */  mul.s      $f8, $f8, $f0
/* A9DDC 800F3A1C C7AA0054 */  lwc1       $f10, 0x54($sp)
/* A9DE0 800F3A20 46005282 */  mul.s      $f10, $f10, $f0
/* A9DE4 800F3A24 C7A60058 */  lwc1       $f6, 0x58($sp)
/* A9DE8 800F3A28 46003182 */  mul.s      $f6, $f6, $f0
/* A9DEC 800F3A2C C7A40040 */  lwc1       $f4, 0x40($sp)
/* A9DF0 800F3A30 46082102 */  mul.s      $f4, $f4, $f8
/* A9DF4 800F3A34 C7A00044 */  lwc1       $f0, 0x44($sp)
/* A9DF8 800F3A38 460A0002 */  mul.s      $f0, $f0, $f10
/* A9DFC 800F3A3C C7A20048 */  lwc1       $f2, 0x48($sp)
/* A9E00 800F3A40 46061082 */  mul.s      $f2, $f2, $f6
/* A9E04 800F3A44 46002100 */  add.s      $f4, $f4, $f0
/* A9E08 800F3A48 E7A80050 */  swc1       $f8, 0x50($sp)
/* A9E0C 800F3A4C 3C01800D */  lui        $at, %hi(D_race_800CCC20)
/* A9E10 800F3A50 C420CC20 */  lwc1       $f0, %lo(D_race_800CCC20)($at)
/* A9E14 800F3A54 46022100 */  add.s      $f4, $f4, $f2
/* A9E18 800F3A58 E7AA0054 */  swc1       $f10, 0x54($sp)
/* A9E1C 800F3A5C 4600203C */  c.lt.s     $f4, $f0
/* A9E20 800F3A60 00000000 */  nop
/* A9E24 800F3A64 45000005 */  bc1f       .Lrace_800F3A7C
/* A9E28 800F3A68 E7A60058 */   swc1      $f6, 0x58($sp)
/* A9E2C 800F3A6C 3C01800D */  lui        $at, %hi(D_race_800CCC24)
/* A9E30 800F3A70 C420CC24 */  lwc1       $f0, %lo(D_race_800CCC24)($at)
/* A9E34 800F3A74 0803CEA2 */  j          .Lrace_800F3A88
/* A9E38 800F3A78 E600000C */   swc1      $f0, 0xC($s0)
.Lrace_800F3A7C:
/* A9E3C 800F3A7C 46042000 */  add.s      $f0, $f4, $f4
/* A9E40 800F3A80 4600A003 */  div.s      $f0, $f20, $f0
/* A9E44 800F3A84 E600000C */  swc1       $f0, 0xC($s0)
.Lrace_800F3A88:
/* A9E48 800F3A88 14400004 */  bnez       $v0, .Lrace_800F3A9C
/* A9E4C 800F3A8C 00000000 */   nop
/* A9E50 800F3A90 C600000C */  lwc1       $f0, 0xC($s0)
/* A9E54 800F3A94 46000007 */  neg.s      $f0, $f0
/* A9E58 800F3A98 E600000C */  swc1       $f0, 0xC($s0)
.Lrace_800F3A9C:
/* A9E5C 800F3A9C 8E020014 */  lw         $v0, 0x14($s0)
/* A9E60 800F3AA0 3C01800D */  lui        $at, %hi(D_race_800CCC28)
/* A9E64 800F3AA4 C420CC28 */  lwc1       $f0, %lo(D_race_800CCC28)($at)
/* A9E68 800F3AA8 30420020 */  andi       $v0, $v0, 0x20
/* A9E6C 800F3AAC 10400007 */  beqz       $v0, .Lrace_800F3ACC
/* A9E70 800F3AB0 E6000010 */   swc1      $f0, 0x10($s0)
/* A9E74 800F3AB4 C600000C */  lwc1       $f0, 0xC($s0)
/* A9E78 800F3AB8 3C01800D */  lui        $at, %hi(D_race_800CCC2C)
/* A9E7C 800F3ABC C422CC2C */  lwc1       $f2, %lo(D_race_800CCC2C)($at)
/* A9E80 800F3AC0 46000007 */  neg.s      $f0, $f0
/* A9E84 800F3AC4 E600000C */  swc1       $f0, 0xC($s0)
/* A9E88 800F3AC8 E6020010 */  swc1       $f2, 0x10($s0)
.Lrace_800F3ACC:
/* A9E8C 800F3ACC 3C01800D */  lui        $at, %hi(D_race_800CCC30)
/* A9E90 800F3AD0 C420CC30 */  lwc1       $f0, %lo(D_race_800CCC30)($at)
/* A9E94 800F3AD4 4600A03C */  c.lt.s     $f20, $f0
/* A9E98 800F3AD8 00000000 */  nop
/* A9E9C 800F3ADC 45000002 */  bc1f       .Lrace_800F3AE8
/* A9EA0 800F3AE0 00008821 */   addu      $s1, $zero, $zero
/* A9EA4 800F3AE4 24110001 */  addiu      $s1, $zero, 0x1
.Lrace_800F3AE8:
/* A9EA8 800F3AE8 16200019 */  bnez       $s1, .Lrace_800F3B50
/* A9EAC 800F3AEC 26040040 */   addiu     $a0, $s0, 0x40
/* A9EB0 800F3AF0 0C001055 */  jal        func_80004154
/* A9EB4 800F3AF4 27A50060 */   addiu     $a1, $sp, 0x60
/* A9EB8 800F3AF8 C7A80060 */  lwc1       $f8, 0x60($sp)
/* A9EBC 800F3AFC C7A00020 */  lwc1       $f0, 0x20($sp)
/* A9EC0 800F3B00 46080002 */  mul.s      $f0, $f0, $f8
/* A9EC4 800F3B04 C7AA0064 */  lwc1       $f10, 0x64($sp)
/* A9EC8 800F3B08 C7A20024 */  lwc1       $f2, 0x24($sp)
/* A9ECC 800F3B0C 460A1082 */  mul.s      $f2, $f2, $f10
/* A9ED0 800F3B10 C7A60068 */  lwc1       $f6, 0x68($sp)
/* A9ED4 800F3B14 C7A40028 */  lwc1       $f4, 0x28($sp)
/* A9ED8 800F3B18 46062102 */  mul.s      $f4, $f4, $f6
/* A9EDC 800F3B1C 46020000 */  add.s      $f0, $f0, $f2
/* A9EE0 800F3B20 E7A80050 */  swc1       $f8, 0x50($sp)
/* A9EE4 800F3B24 3C01800D */  lui        $at, %hi(D_race_800CCC34)
/* A9EE8 800F3B28 C422CC34 */  lwc1       $f2, %lo(D_race_800CCC34)($at)
/* A9EEC 800F3B2C 46040000 */  add.s      $f0, $f0, $f4
/* A9EF0 800F3B30 E7AA0054 */  swc1       $f10, 0x54($sp)
/* A9EF4 800F3B34 4602003C */  c.lt.s     $f0, $f2
/* A9EF8 800F3B38 00000000 */  nop
/* A9EFC 800F3B3C 45000002 */  bc1f       .Lrace_800F3B48
/* A9F00 800F3B40 E7A60058 */   swc1      $f6, 0x58($sp)
/* A9F04 800F3B44 24110001 */  addiu      $s1, $zero, 0x1
.Lrace_800F3B48:
/* A9F08 800F3B48 12200025 */  beqz       $s1, .Lrace_800F3BE0
/* A9F0C 800F3B4C 00000000 */   nop
.Lrace_800F3B50:
/* A9F10 800F3B50 3C01800D */  lui        $at, %hi(D_race_800CCC38)
/* A9F14 800F3B54 C420CC38 */  lwc1       $f0, %lo(D_race_800CCC38)($at)
/* A9F18 800F3B58 4614003C */  c.lt.s     $f0, $f20
/* A9F1C 800F3B5C 00000000 */  nop
/* A9F20 800F3B60 45030001 */  bc1tl      .Lrace_800F3B68
/* A9F24 800F3B64 00008821 */   addu      $s1, $zero, $zero
.Lrace_800F3B68:
/* A9F28 800F3B68 1220001D */  beqz       $s1, .Lrace_800F3BE0
/* A9F2C 800F3B6C 00000000 */   nop
/* A9F30 800F3B70 8E040050 */  lw         $a0, 0x50($s0)
/* A9F34 800F3B74 8E020024 */  lw         $v0, 0x24($s0)
/* A9F38 800F3B78 8E050004 */  lw         $a1, 0x4($s0)
/* A9F3C 800F3B7C 244200FA */  addiu      $v0, $v0, 0xFA
/* A9F40 800F3B80 0C04C3DD */  jal        func_race_80130F74
/* A9F44 800F3B84 AE020024 */   sw        $v0, 0x24($s0)
/* A9F48 800F3B88 C60E0024 */  lwc1       $f14, 0x24($s0)
/* A9F4C 800F3B8C 468073A0 */  cvt.s.w    $f14, $f14
/* A9F50 800F3B90 8E040050 */  lw         $a0, 0x50($s0)
/* A9F54 800F3B94 44057000 */  mfc1       $a1, $f14
/* A9F58 800F3B98 0C04C439 */  jal        func_race_801310E4
/* A9F5C 800F3B9C 00000000 */   nop
/* A9F60 800F3BA0 8E020050 */  lw         $v0, 0x50($s0)
/* A9F64 800F3BA4 8C460000 */  lw         $a2, 0x0($v0)
/* A9F68 800F3BA8 8C470004 */  lw         $a3, 0x4($v0)
/* A9F6C 800F3BAC 8C480008 */  lw         $t0, 0x8($v0)
/* A9F70 800F3BB0 AE060034 */  sw         $a2, 0x34($s0)
/* A9F74 800F3BB4 AE070038 */  sw         $a3, 0x38($s0)
/* A9F78 800F3BB8 AE08003C */  sw         $t0, 0x3C($s0)
/* A9F7C 800F3BBC 8E020050 */  lw         $v0, 0x50($s0)
/* A9F80 800F3BC0 8C46000C */  lw         $a2, 0xC($v0)
/* A9F84 800F3BC4 8C470010 */  lw         $a3, 0x10($v0)
/* A9F88 800F3BC8 8C480014 */  lw         $t0, 0x14($v0)
/* A9F8C 800F3BCC 8C490018 */  lw         $t1, 0x18($v0)
/* A9F90 800F3BD0 AE060040 */  sw         $a2, 0x40($s0)
/* A9F94 800F3BD4 AE070044 */  sw         $a3, 0x44($s0)
/* A9F98 800F3BD8 AE080048 */  sw         $t0, 0x48($s0)
/* A9F9C 800F3BDC AE09004C */  sw         $t1, 0x4C($s0)
.Lrace_800F3BE0:
/* A9FA0 800F3BE0 0C03CC6F */  jal        func_race_800F31BC
/* A9FA4 800F3BE4 02002021 */   addu      $a0, $s0, $zero
/* A9FA8 800F3BE8 0C03CD5B */  jal        func_race_800F356C
/* A9FAC 800F3BEC 02002021 */   addu      $a0, $s0, $zero
.Lrace_800F3BF0:
/* A9FB0 800F3BF0 8FBF0098 */  lw         $ra, 0x98($sp)
/* A9FB4 800F3BF4 8FB10094 */  lw         $s1, 0x94($sp)
/* A9FB8 800F3BF8 8FB00090 */  lw         $s0, 0x90($sp)
/* A9FBC 800F3BFC D7B400A0 */  ldc1       $f20, 0xA0($sp)
/* A9FC0 800F3C00 03E00008 */  jr         $ra
/* A9FC4 800F3C04 27BD00A8 */   addiu     $sp, $sp, 0xA8
