.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel func_8001E1D0
/* 1EDD0 8001E1D0 10C0001B */  beqz       $a2, .L8001E240
/* 1EDD4 8001E1D4 00A03821 */   addu      $a3, $a1, $zero
/* 1EDD8 8001E1D8 10850019 */  beq        $a0, $a1, .L8001E240
/* 1EDDC 8001E1DC 00000000 */   nop
/* 1EDE0 8001E1E0 00A4082A */  slt        $at, $a1, $a0
/* 1EDE4 8001E1E4 14200007 */  bnez       $at, .L8001E204
/* 1EDE8 8001E1E8 00000000 */   nop
/* 1EDEC 8001E1EC 00861020 */  add        $v0, $a0, $a2
/* 1EDF0 8001E1F0 00A2082A */  slt        $at, $a1, $v0
/* 1EDF4 8001E1F4 10200003 */  beqz       $at, .L8001E204
/* 1EDF8 8001E1F8 00000000 */   nop
/* 1EDFC 8001E1FC 1000005C */  b          .L8001E370
/* 1EE00 8001E200 00000000 */   nop
.L8001E204:
/* 1EE04 8001E204 28C10010 */  slti       $at, $a2, 0x10
/* 1EE08 8001E208 14200005 */  bnez       $at, .L8001E220
/* 1EE0C 8001E20C 00000000 */   nop
/* 1EE10 8001E210 30820003 */  andi       $v0, $a0, 0x3
/* 1EE14 8001E214 30A30003 */  andi       $v1, $a1, 0x3
/* 1EE18 8001E218 1043000B */  beq        $v0, $v1, .L8001E248
/* 1EE1C 8001E21C 00000000 */   nop
.L8001E220:
/* 1EE20 8001E220 10C00007 */  beqz       $a2, .L8001E240
/* 1EE24 8001E224 00000000 */   nop
/* 1EE28 8001E228 00861821 */  addu       $v1, $a0, $a2
.L8001E22C:
/* 1EE2C 8001E22C 80820000 */  lb         $v0, 0x0($a0)
/* 1EE30 8001E230 24840001 */  addiu      $a0, $a0, 0x1
/* 1EE34 8001E234 A0A20000 */  sb         $v0, 0x0($a1)
/* 1EE38 8001E238 1483FFFC */  bne        $a0, $v1, .L8001E22C
/* 1EE3C 8001E23C 24A50001 */   addiu     $a1, $a1, 0x1
.L8001E240:
/* 1EE40 8001E240 03E00008 */  jr         $ra
/* 1EE44 8001E244 00E01021 */   addu      $v0, $a3, $zero
.L8001E248:
/* 1EE48 8001E248 1040001A */  beqz       $v0, .L8001E2B4
/* 1EE4C 8001E24C 00000000 */   nop
/* 1EE50 8001E250 24010001 */  addiu      $at, $zero, 0x1
/* 1EE54 8001E254 10410010 */  beq        $v0, $at, .L8001E298
/* 1EE58 8001E258 00000000 */   nop
/* 1EE5C 8001E25C 24010002 */  addiu      $at, $zero, 0x2
/* 1EE60 8001E260 10410007 */  beq        $v0, $at, .L8001E280
/* 1EE64 8001E264 00000000 */   nop
/* 1EE68 8001E268 80820000 */  lb         $v0, 0x0($a0)
/* 1EE6C 8001E26C 24840001 */  addiu      $a0, $a0, 0x1
/* 1EE70 8001E270 A0A20000 */  sb         $v0, 0x0($a1)
/* 1EE74 8001E274 24A50001 */  addiu      $a1, $a1, 0x1
/* 1EE78 8001E278 1000000E */  b          .L8001E2B4
/* 1EE7C 8001E27C 24C6FFFF */   addiu     $a2, $a2, -0x1
.L8001E280:
/* 1EE80 8001E280 84820000 */  lh         $v0, 0x0($a0)
/* 1EE84 8001E284 24840002 */  addiu      $a0, $a0, 0x2
/* 1EE88 8001E288 A4A20000 */  sh         $v0, 0x0($a1)
/* 1EE8C 8001E28C 24A50002 */  addiu      $a1, $a1, 0x2
/* 1EE90 8001E290 10000008 */  b          .L8001E2B4
/* 1EE94 8001E294 24C6FFFE */   addiu     $a2, $a2, -0x2
.L8001E298:
/* 1EE98 8001E298 80820000 */  lb         $v0, 0x0($a0)
/* 1EE9C 8001E29C 84830001 */  lh         $v1, 0x1($a0)
/* 1EEA0 8001E2A0 24840003 */  addiu      $a0, $a0, 0x3
/* 1EEA4 8001E2A4 A0A20000 */  sb         $v0, 0x0($a1)
/* 1EEA8 8001E2A8 A4A30001 */  sh         $v1, 0x1($a1)
/* 1EEAC 8001E2AC 24A50003 */  addiu      $a1, $a1, 0x3
/* 1EEB0 8001E2B0 24C6FFFD */  addiu      $a2, $a2, -0x3
.L8001E2B4:
/* 1EEB4 8001E2B4 28C10020 */  slti       $at, $a2, 0x20
/* 1EEB8 8001E2B8 14200015 */  bnez       $at, .L8001E310
/* 1EEBC 8001E2BC 00000000 */   nop
/* 1EEC0 8001E2C0 8C820000 */  lw         $v0, 0x0($a0)
/* 1EEC4 8001E2C4 8C830004 */  lw         $v1, 0x4($a0)
/* 1EEC8 8001E2C8 8C880008 */  lw         $t0, 0x8($a0)
/* 1EECC 8001E2CC 8C89000C */  lw         $t1, 0xC($a0)
/* 1EED0 8001E2D0 8C8A0010 */  lw         $t2, 0x10($a0)
/* 1EED4 8001E2D4 8C8B0014 */  lw         $t3, 0x14($a0)
/* 1EED8 8001E2D8 8C8C0018 */  lw         $t4, 0x18($a0)
/* 1EEDC 8001E2DC 8C8D001C */  lw         $t5, 0x1C($a0)
/* 1EEE0 8001E2E0 24840020 */  addiu      $a0, $a0, 0x20
/* 1EEE4 8001E2E4 ACA20000 */  sw         $v0, 0x0($a1)
/* 1EEE8 8001E2E8 ACA30004 */  sw         $v1, 0x4($a1)
/* 1EEEC 8001E2EC ACA80008 */  sw         $t0, 0x8($a1)
/* 1EEF0 8001E2F0 ACA9000C */  sw         $t1, 0xC($a1)
/* 1EEF4 8001E2F4 ACAA0010 */  sw         $t2, 0x10($a1)
/* 1EEF8 8001E2F8 ACAB0014 */  sw         $t3, 0x14($a1)
/* 1EEFC 8001E2FC ACAC0018 */  sw         $t4, 0x18($a1)
/* 1EF00 8001E300 ACAD001C */  sw         $t5, 0x1C($a1)
/* 1EF04 8001E304 24A50020 */  addiu      $a1, $a1, 0x20
/* 1EF08 8001E308 1000FFEA */  b          .L8001E2B4
/* 1EF0C 8001E30C 24C6FFE0 */   addiu     $a2, $a2, -0x20
.L8001E310:
/* 1EF10 8001E310 28C10010 */  slti       $at, $a2, 0x10
/* 1EF14 8001E314 1420000D */  bnez       $at, .L8001E34C
/* 1EF18 8001E318 00000000 */   nop
/* 1EF1C 8001E31C 8C820000 */  lw         $v0, 0x0($a0)
/* 1EF20 8001E320 8C830004 */  lw         $v1, 0x4($a0)
/* 1EF24 8001E324 8C880008 */  lw         $t0, 0x8($a0)
/* 1EF28 8001E328 8C89000C */  lw         $t1, 0xC($a0)
/* 1EF2C 8001E32C 24840010 */  addiu      $a0, $a0, 0x10
/* 1EF30 8001E330 ACA20000 */  sw         $v0, 0x0($a1)
/* 1EF34 8001E334 ACA30004 */  sw         $v1, 0x4($a1)
/* 1EF38 8001E338 ACA80008 */  sw         $t0, 0x8($a1)
/* 1EF3C 8001E33C ACA9000C */  sw         $t1, 0xC($a1)
/* 1EF40 8001E340 24A50010 */  addiu      $a1, $a1, 0x10
/* 1EF44 8001E344 1000FFF2 */  b          .L8001E310
/* 1EF48 8001E348 24C6FFF0 */   addiu     $a2, $a2, -0x10
.L8001E34C:
/* 1EF4C 8001E34C 28C10004 */  slti       $at, $a2, 0x4
/* 1EF50 8001E350 1420FFB3 */  bnez       $at, .L8001E220
/* 1EF54 8001E354 00000000 */   nop
/* 1EF58 8001E358 8C820000 */  lw         $v0, 0x0($a0)
/* 1EF5C 8001E35C 24840004 */  addiu      $a0, $a0, 0x4
/* 1EF60 8001E360 ACA20000 */  sw         $v0, 0x0($a1)
/* 1EF64 8001E364 24A50004 */  addiu      $a1, $a1, 0x4
/* 1EF68 8001E368 1000FFF8 */  b          .L8001E34C
/* 1EF6C 8001E36C 24C6FFFC */   addiu     $a2, $a2, -0x4
.L8001E370:
/* 1EF70 8001E370 00862020 */  add        $a0, $a0, $a2
/* 1EF74 8001E374 00A62820 */  add        $a1, $a1, $a2
/* 1EF78 8001E378 28C10010 */  slti       $at, $a2, 0x10
/* 1EF7C 8001E37C 14200005 */  bnez       $at, .L8001E394
/* 1EF80 8001E380 00000000 */   nop
/* 1EF84 8001E384 30820003 */  andi       $v0, $a0, 0x3
/* 1EF88 8001E388 30A30003 */  andi       $v1, $a1, 0x3
/* 1EF8C 8001E38C 1043000D */  beq        $v0, $v1, .L8001E3C4
/* 1EF90 8001E390 00000000 */   nop
.L8001E394:
/* 1EF94 8001E394 10C0FFAA */  beqz       $a2, .L8001E240
/* 1EF98 8001E398 00000000 */   nop
/* 1EF9C 8001E39C 2484FFFF */  addiu      $a0, $a0, -0x1
/* 1EFA0 8001E3A0 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 1EFA4 8001E3A4 00861823 */  subu       $v1, $a0, $a2
.L8001E3A8:
/* 1EFA8 8001E3A8 80820000 */  lb         $v0, 0x0($a0)
/* 1EFAC 8001E3AC 2484FFFF */  addiu      $a0, $a0, -0x1
/* 1EFB0 8001E3B0 A0A20000 */  sb         $v0, 0x0($a1)
/* 1EFB4 8001E3B4 1483FFFC */  bne        $a0, $v1, .L8001E3A8
/* 1EFB8 8001E3B8 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 1EFBC 8001E3BC 03E00008 */  jr         $ra
/* 1EFC0 8001E3C0 00E01021 */   addu      $v0, $a3, $zero
.L8001E3C4:
/* 1EFC4 8001E3C4 1040001A */  beqz       $v0, .L8001E430
/* 1EFC8 8001E3C8 00000000 */   nop
/* 1EFCC 8001E3CC 24010003 */  addiu      $at, $zero, 0x3
/* 1EFD0 8001E3D0 10410010 */  beq        $v0, $at, .L8001E414
/* 1EFD4 8001E3D4 00000000 */   nop
/* 1EFD8 8001E3D8 24010002 */  addiu      $at, $zero, 0x2
/* 1EFDC 8001E3DC 10410007 */  beq        $v0, $at, .L8001E3FC
/* 1EFE0 8001E3E0 00000000 */   nop
/* 1EFE4 8001E3E4 8082FFFF */  lb         $v0, -0x1($a0)
/* 1EFE8 8001E3E8 2484FFFF */  addiu      $a0, $a0, -0x1
/* 1EFEC 8001E3EC A0A2FFFF */  sb         $v0, -0x1($a1)
/* 1EFF0 8001E3F0 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 1EFF4 8001E3F4 1000000E */  b          .L8001E430
/* 1EFF8 8001E3F8 24C6FFFF */   addiu     $a2, $a2, -0x1
.L8001E3FC:
/* 1EFFC 8001E3FC 8482FFFE */  lh         $v0, -0x2($a0)
/* 1F000 8001E400 2484FFFE */  addiu      $a0, $a0, -0x2
/* 1F004 8001E404 A4A2FFFE */  sh         $v0, -0x2($a1)
/* 1F008 8001E408 24A5FFFE */  addiu      $a1, $a1, -0x2
/* 1F00C 8001E40C 10000008 */  b          .L8001E430
/* 1F010 8001E410 24C6FFFE */   addiu     $a2, $a2, -0x2
.L8001E414:
/* 1F014 8001E414 8082FFFF */  lb         $v0, -0x1($a0)
/* 1F018 8001E418 8483FFFD */  lh         $v1, -0x3($a0)
/* 1F01C 8001E41C 2484FFFD */  addiu      $a0, $a0, -0x3
/* 1F020 8001E420 A0A2FFFF */  sb         $v0, -0x1($a1)
/* 1F024 8001E424 A4A3FFFD */  sh         $v1, -0x3($a1)
/* 1F028 8001E428 24A5FFFD */  addiu      $a1, $a1, -0x3
/* 1F02C 8001E42C 24C6FFFD */  addiu      $a2, $a2, -0x3
.L8001E430:
/* 1F030 8001E430 28C10020 */  slti       $at, $a2, 0x20
/* 1F034 8001E434 14200015 */  bnez       $at, .L8001E48C
/* 1F038 8001E438 00000000 */   nop
/* 1F03C 8001E43C 8C82FFFC */  lw         $v0, -0x4($a0)
/* 1F040 8001E440 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 1F044 8001E444 8C88FFF4 */  lw         $t0, -0xC($a0)
/* 1F048 8001E448 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 1F04C 8001E44C 8C8AFFEC */  lw         $t2, -0x14($a0)
/* 1F050 8001E450 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* 1F054 8001E454 8C8CFFE4 */  lw         $t4, -0x1C($a0)
/* 1F058 8001E458 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* 1F05C 8001E45C 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 1F060 8001E460 ACA2FFFC */  sw         $v0, -0x4($a1)
/* 1F064 8001E464 ACA3FFF8 */  sw         $v1, -0x8($a1)
/* 1F068 8001E468 ACA8FFF4 */  sw         $t0, -0xC($a1)
/* 1F06C 8001E46C ACA9FFF0 */  sw         $t1, -0x10($a1)
/* 1F070 8001E470 ACAAFFEC */  sw         $t2, -0x14($a1)
/* 1F074 8001E474 ACABFFE8 */  sw         $t3, -0x18($a1)
/* 1F078 8001E478 ACACFFE4 */  sw         $t4, -0x1C($a1)
/* 1F07C 8001E47C ACADFFE0 */  sw         $t5, -0x20($a1)
/* 1F080 8001E480 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 1F084 8001E484 1000FFEA */  b          .L8001E430
/* 1F088 8001E488 24C6FFE0 */   addiu     $a2, $a2, -0x20
.L8001E48C:
/* 1F08C 8001E48C 28C10010 */  slti       $at, $a2, 0x10
/* 1F090 8001E490 1420000D */  bnez       $at, .L8001E4C8
/* 1F094 8001E494 00000000 */   nop
/* 1F098 8001E498 8C82FFFC */  lw         $v0, -0x4($a0)
/* 1F09C 8001E49C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 1F0A0 8001E4A0 8C88FFF4 */  lw         $t0, -0xC($a0)
/* 1F0A4 8001E4A4 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 1F0A8 8001E4A8 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 1F0AC 8001E4AC ACA2FFFC */  sw         $v0, -0x4($a1)
/* 1F0B0 8001E4B0 ACA3FFF8 */  sw         $v1, -0x8($a1)
/* 1F0B4 8001E4B4 ACA8FFF4 */  sw         $t0, -0xC($a1)
/* 1F0B8 8001E4B8 ACA9FFF0 */  sw         $t1, -0x10($a1)
/* 1F0BC 8001E4BC 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* 1F0C0 8001E4C0 1000FFF2 */  b          .L8001E48C
/* 1F0C4 8001E4C4 24C6FFF0 */   addiu     $a2, $a2, -0x10
.L8001E4C8:
/* 1F0C8 8001E4C8 28C10004 */  slti       $at, $a2, 0x4
/* 1F0CC 8001E4CC 1420FFB1 */  bnez       $at, .L8001E394
/* 1F0D0 8001E4D0 00000000 */   nop
/* 1F0D4 8001E4D4 8C82FFFC */  lw         $v0, -0x4($a0)
/* 1F0D8 8001E4D8 2484FFFC */  addiu      $a0, $a0, -0x4
/* 1F0DC 8001E4DC ACA2FFFC */  sw         $v0, -0x4($a1)
/* 1F0E0 8001E4E0 24A5FFFC */  addiu      $a1, $a1, -0x4
/* 1F0E4 8001E4E4 1000FFF8 */  b          .L8001E4C8
/* 1F0E8 8001E4E8 24C6FFFC */   addiu     $a2, $a2, -0x4
/* 1F0EC 8001E4EC 00000000 */  nop

glabel func_8001E4F0
/* 1F0F0 8001E4F0 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 1F0F4 8001E4F4 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 1F0F8 8001E4F8 8C420000 */  lw         $v0, 0x0($v0)
/* 1F0FC 8001E4FC 3042001C */  andi       $v0, $v0, 0x1C
/* 1F100 8001E500 03E00008 */  jr         $ra
/* 1F104 8001E504 0002102B */   sltu      $v0, $zero, $v0
/* 1F108 8001E508 00000000 */  nop
/* 1F10C 8001E50C 00000000 */  nop
