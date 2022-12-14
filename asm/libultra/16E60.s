.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel func_80016260
/* 16E60 80016260 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 16E64 80016264 AFB20030 */  sw         $s2, 0x30($sp)
/* 16E68 80016268 00809021 */  addu       $s2, $a0, $zero
/* 16E6C 8001626C AFB40038 */  sw         $s4, 0x38($sp)
/* 16E70 80016270 24140002 */  addiu      $s4, $zero, 0x2
/* 16E74 80016274 AFB5003C */  sw         $s5, 0x3C($sp)
/* 16E78 80016278 24150001 */  addiu      $s5, $zero, 0x1
/* 16E7C 8001627C AFBF0040 */  sw         $ra, 0x40($sp)
/* 16E80 80016280 AFB30034 */  sw         $s3, 0x34($sp)
/* 16E84 80016284 AFB1002C */  sw         $s1, 0x2C($sp)
/* 16E88 80016288 AFB00028 */  sw         $s0, 0x28($sp)
/* 16E8C 8001628C AFA00018 */  sw         $zero, 0x18($sp)
.L80016290:
/* 16E90 80016290 8E440008 */  lw         $a0, 0x8($s2)
/* 16E94 80016294 27A50018 */  addiu      $a1, $sp, 0x18
/* 16E98 80016298 0C007720 */  jal        osRecvMesg
/* 16E9C 8001629C 24060001 */   addiu     $a2, $zero, 0x1
/* 16EA0 800162A0 8FA20018 */  lw         $v0, 0x18($sp)
/* 16EA4 800162A4 8C500014 */  lw         $s0, 0x14($v0)
/* 16EA8 800162A8 1200007C */  beqz       $s0, .L8001649C
/* 16EAC 800162AC 00000000 */   nop
/* 16EB0 800162B0 92020004 */  lbu        $v0, 0x4($s0)
/* 16EB4 800162B4 14540078 */  bne        $v0, $s4, .L80016498
/* 16EB8 800162B8 00000000 */   nop
/* 16EBC 800162BC 8E020014 */  lw         $v0, 0x14($s0)
/* 16EC0 800162C0 2C420002 */  sltiu      $v0, $v0, 0x2
/* 16EC4 800162C4 10400074 */  beqz       $v0, .L80016498
/* 16EC8 800162C8 2402FFFF */   addiu     $v0, $zero, -0x1
/* 16ECC 800162CC 9603001A */  lhu        $v1, 0x1A($s0)
/* 16ED0 800162D0 AE02001C */  sw         $v0, 0x1C($s0)
/* 16ED4 800162D4 000310C0 */  sll        $v0, $v1, 3
/* 16ED8 800162D8 00431021 */  addu       $v0, $v0, $v1
/* 16EDC 800162DC 00021080 */  sll        $v0, $v0, 2
/* 16EE0 800162E0 02021021 */  addu       $v0, $s0, $v0
/* 16EE4 800162E4 96030018 */  lhu        $v1, 0x18($s0)
/* 16EE8 800162E8 2451002C */  addiu      $s1, $v0, 0x2C
/* 16EEC 800162EC 24020003 */  addiu      $v0, $zero, 0x3
/* 16EF0 800162F0 10620005 */  beq        $v1, $v0, .L80016308
/* 16EF4 800162F4 00000000 */   nop
/* 16EF8 800162F8 8E220004 */  lw         $v0, 0x4($s1)
/* 16EFC 800162FC 8E23000C */  lw         $v1, 0xC($s1)
/* 16F00 80016300 00431023 */  subu       $v0, $v0, $v1
/* 16F04 80016304 AE220004 */  sw         $v0, 0x4($s1)
.L80016308:
/* 16F08 80016308 96020018 */  lhu        $v0, 0x18($s0)
/* 16F0C 8001630C 14540005 */  bne        $v0, $s4, .L80016324
/* 16F10 80016310 00009821 */   addu      $s3, $zero, $zero
/* 16F14 80016314 8FA20018 */  lw         $v0, 0x18($sp)
/* 16F18 80016318 8C420014 */  lw         $v0, 0x14($v0)
/* 16F1C 8001631C 8C420014 */  lw         $v0, 0x14($v0)
/* 16F20 80016320 2C530001 */  sltiu      $s3, $v0, 0x1
.L80016324:
/* 16F24 80016324 8E440010 */  lw         $a0, 0x10($s2)
/* 16F28 80016328 27A5001C */  addiu      $a1, $sp, 0x1C
/* 16F2C 8001632C 0C007720 */  jal        osRecvMesg
/* 16F30 80016330 24060001 */   addiu     $a2, $zero, 0x1
/* 16F34 80016334 3C040010 */  lui        $a0, (0x100401 >> 16)
/* 16F38 80016338 0C005998 */  jal        func_80016660
/* 16F3C 8001633C 34840401 */   ori       $a0, $a0, (0x100401 & 0xFFFF)
/* 16F40 80016340 3C050500 */  lui        $a1, (0x5000510 >> 16)
/* 16F44 80016344 8FA20018 */  lw         $v0, 0x18($sp)
/* 16F48 80016348 34A50510 */  ori        $a1, $a1, (0x5000510 & 0xFFFF)
/* 16F4C 8001634C 8E030024 */  lw         $v1, 0x24($s0)
/* 16F50 80016350 8C440014 */  lw         $a0, 0x14($v0)
/* 16F54 80016354 3C068000 */  lui        $a2, (0x80000000 >> 16)
/* 16F58 80016358 0C005A08 */  jal        func_80016820
/* 16F5C 8001635C 00663025 */   or        $a2, $v1, $a2
.L80016360:
/* 16F60 80016360 8E44000C */  lw         $a0, 0xC($s2)
/* 16F64 80016364 27A50020 */  addiu      $a1, $sp, 0x20
/* 16F68 80016368 0C007720 */  jal        osRecvMesg
/* 16F6C 8001636C 24060001 */   addiu     $a2, $zero, 0x1
/* 16F70 80016370 8FA20018 */  lw         $v0, 0x18($sp)
/* 16F74 80016374 8C500014 */  lw         $s0, 0x14($v0)
/* 16F78 80016378 9603001A */  lhu        $v1, 0x1A($s0)
/* 16F7C 8001637C 000310C0 */  sll        $v0, $v1, 3
/* 16F80 80016380 00431021 */  addu       $v0, $v0, $v1
/* 16F84 80016384 00021080 */  sll        $v0, $v0, 2
/* 16F88 80016388 02021021 */  addu       $v0, $s0, $v0
/* 16F8C 8001638C 2451002C */  addiu      $s1, $v0, 0x2C
/* 16F90 80016390 8E230000 */  lw         $v1, 0x0($s1)
/* 16F94 80016394 2402001D */  addiu      $v0, $zero, 0x1D
/* 16F98 80016398 14620027 */  bne        $v1, $v0, .L80016438
/* 16F9C 8001639C 02002021 */   addu      $a0, $s0, $zero
/* 16FA0 800163A0 3C050500 */  lui        $a1, (0x5000510 >> 16)
/* 16FA4 800163A4 8E020024 */  lw         $v0, 0x24($s0)
/* 16FA8 800163A8 34A50510 */  ori        $a1, $a1, (0x5000510 & 0xFFFF)
/* 16FAC 800163AC 3C061000 */  lui        $a2, (0x10000000 >> 16)
/* 16FB0 800163B0 0C005A08 */  jal        func_80016820
/* 16FB4 800163B4 00463025 */   or        $a2, $v0, $a2
/* 16FB8 800163B8 8FA20018 */  lw         $v0, 0x18($sp)
/* 16FBC 800163BC 8E060024 */  lw         $a2, 0x24($s0)
/* 16FC0 800163C0 8C440014 */  lw         $a0, 0x14($v0)
/* 16FC4 800163C4 3C050500 */  lui        $a1, (0x5000510 >> 16)
/* 16FC8 800163C8 0C005A08 */  jal        func_80016820
/* 16FCC 800163CC 34A50510 */   ori       $a1, $a1, (0x5000510 & 0xFFFF)
/* 16FD0 800163D0 8FA20018 */  lw         $v0, 0x18($sp)
/* 16FD4 800163D4 3C050500 */  lui        $a1, (0x5000508 >> 16)
/* 16FD8 800163D8 8C440014 */  lw         $a0, 0x14($v0)
/* 16FDC 800163DC 34A50508 */  ori        $a1, $a1, (0x5000508 & 0xFFFF)
/* 16FE0 800163E0 0C0059AC */  jal        func_800166B0
/* 16FE4 800163E4 27A60024 */   addiu     $a2, $sp, 0x24
/* 16FE8 800163E8 8FA20024 */  lw         $v0, 0x24($sp)
/* 16FEC 800163EC 3C030200 */  lui        $v1, (0x2000000 >> 16)
/* 16FF0 800163F0 00431024 */  and        $v0, $v0, $v1
/* 16FF4 800163F4 10400008 */  beqz       $v0, .L80016418
/* 16FF8 800163F8 3C050500 */   lui       $a1, (0x5000510 >> 16)
/* 16FFC 800163FC 8FA20018 */  lw         $v0, 0x18($sp)
/* 17000 80016400 34A50510 */  ori        $a1, $a1, (0x5000510 & 0xFFFF)
/* 17004 80016404 8E030024 */  lw         $v1, 0x24($s0)
/* 17008 80016408 8C440014 */  lw         $a0, 0x14($v0)
/* 1700C 8001640C 3C060100 */  lui        $a2, (0x1000000 >> 16)
/* 17010 80016410 0C005A08 */  jal        func_80016820
/* 17014 80016414 00663025 */   or        $a2, $v1, $a2
.L80016418:
/* 17018 80016418 3C03A460 */  lui        $v1, (0xA4600010 >> 16)
/* 1701C 8001641C 34630010 */  ori        $v1, $v1, (0xA4600010 & 0xFFFF)
/* 17020 80016420 3C040010 */  lui        $a0, (0x100C01 >> 16)
/* 17024 80016424 24020004 */  addiu      $v0, $zero, 0x4
/* 17028 80016428 AE220000 */  sw         $v0, 0x0($s1)
/* 1702C 8001642C AC740000 */  sw         $s4, 0x0($v1)
/* 17030 80016430 0C005988 */  jal        func_80016620
/* 17034 80016434 34840C01 */   ori       $a0, $a0, (0x100C01 & 0xFFFF)
.L80016438:
/* 17038 80016438 8FA50018 */  lw         $a1, 0x18($sp)
/* 1703C 8001643C 8CA40004 */  lw         $a0, 0x4($a1)
/* 17040 80016440 0C00776C */  jal        osSendMesg
/* 17044 80016444 00003021 */   addu      $a2, $zero, $zero
/* 17048 80016448 16750006 */  bne        $s3, $s5, .L80016464
/* 1704C 8001644C 00000000 */   nop
/* 17050 80016450 8FA20018 */  lw         $v0, 0x18($sp)
/* 17054 80016454 8C420014 */  lw         $v0, 0x14($v0)
/* 17058 80016458 8C42002C */  lw         $v0, 0x2C($v0)
/* 1705C 8001645C 1040FFC0 */  beqz       $v0, .L80016360
/* 17060 80016460 00009821 */   addu      $s3, $zero, $zero
.L80016464:
/* 17064 80016464 8E440010 */  lw         $a0, 0x10($s2)
/* 17068 80016468 00002821 */  addu       $a1, $zero, $zero
/* 1706C 8001646C 0C00776C */  jal        osSendMesg
/* 17070 80016470 00003021 */   addu      $a2, $zero, $zero
/* 17074 80016474 8FA20018 */  lw         $v0, 0x18($sp)
/* 17078 80016478 8C420014 */  lw         $v0, 0x14($v0)
/* 1707C 8001647C 9442001A */  lhu        $v0, 0x1A($v0)
/* 17080 80016480 1455FF83 */  bne        $v0, $s5, .L80016290
/* 17084 80016484 00000000 */   nop
/* 17088 80016488 0C007DE4 */  jal        func_8001F790
/* 1708C 8001648C 00000000 */   nop
/* 17090 80016490 080058A4 */  j          .L80016290
/* 17094 80016494 00000000 */   nop
.L80016498:
/* 17098 80016498 8FA20018 */  lw         $v0, 0x18($sp)
.L8001649C:
/* 1709C 8001649C 94420000 */  lhu        $v0, 0x0($v0)
/* 170A0 800164A0 2443FFF6 */  addiu      $v1, $v0, -0xA
/* 170A4 800164A4 2C620007 */  sltiu      $v0, $v1, 0x7
/* 170A8 800164A8 10400042 */  beqz       $v0, L800165B4
/* 170AC 800164AC 00031080 */   sll       $v0, $v1, 2
/* 170B0 800164B0 3C018000 */  lui        $at, %hi(jtbl_800014D0)
/* 170B4 800164B4 00220821 */  addu       $at, $at, $v0
/* 170B8 800164B8 8C2214D0 */  lw         $v0, %lo(jtbl_800014D0)($at)
/* 170BC 800164BC 00400008 */  jr         $v0
/* 170C0 800164C0 00000000 */   nop
glabel L800164C4
/* 170C4 800164C4 8E440010 */  lw         $a0, 0x10($s2)
/* 170C8 800164C8 27A5001C */  addiu      $a1, $sp, 0x1C
/* 170CC 800164CC 0C007720 */  jal        osRecvMesg
/* 170D0 800164D0 24060001 */   addiu     $a2, $zero, 0x1
/* 170D4 800164D4 8FA20018 */  lw         $v0, 0x18($sp)
/* 170D8 800164D8 8C45000C */  lw         $a1, 0xC($v0)
/* 170DC 800164DC 8C460008 */  lw         $a2, 0x8($v0)
/* 170E0 800164E0 8C470010 */  lw         $a3, 0x10($v0)
/* 170E4 800164E4 8E420014 */  lw         $v0, 0x14($s2)
/* 170E8 800164E8 0040F809 */  jalr       $v0
/* 170EC 800164EC 00002021 */   addu      $a0, $zero, $zero
/* 170F0 800164F0 0800596E */  j          .L800165B8
/* 170F4 800164F4 00000000 */   nop
glabel L800164F8
/* 170F8 800164F8 8E440010 */  lw         $a0, 0x10($s2)
/* 170FC 800164FC 27A5001C */  addiu      $a1, $sp, 0x1C
/* 17100 80016500 0C007720 */  jal        osRecvMesg
/* 17104 80016504 24060001 */   addiu     $a2, $zero, 0x1
/* 17108 80016508 8FA20018 */  lw         $v0, 0x18($sp)
/* 1710C 8001650C 8C45000C */  lw         $a1, 0xC($v0)
/* 17110 80016510 8C460008 */  lw         $a2, 0x8($v0)
/* 17114 80016514 8C470010 */  lw         $a3, 0x10($v0)
/* 17118 80016518 8E420014 */  lw         $v0, 0x14($s2)
/* 1711C 8001651C 0040F809 */  jalr       $v0
/* 17120 80016520 24040001 */   addiu     $a0, $zero, 0x1
/* 17124 80016524 0800596E */  j          .L800165B8
/* 17128 80016528 00000000 */   nop
glabel L8001652C
/* 1712C 8001652C 8E440010 */  lw         $a0, 0x10($s2)
/* 17130 80016530 27A5001C */  addiu      $a1, $sp, 0x1C
/* 17134 80016534 0C007720 */  jal        osRecvMesg
/* 17138 80016538 24060001 */   addiu     $a2, $zero, 0x1
/* 1713C 8001653C 8FA20018 */  lw         $v0, 0x18($sp)
/* 17140 80016540 8C430010 */  lw         $v1, 0x10($v0)
/* 17144 80016544 AFA30010 */  sw         $v1, 0x10($sp)
/* 17148 80016548 8C440014 */  lw         $a0, 0x14($v0)
/* 1714C 8001654C 8C46000C */  lw         $a2, 0xC($v0)
/* 17150 80016550 8C470008 */  lw         $a3, 0x8($v0)
/* 17154 80016554 8E420018 */  lw         $v0, 0x18($s2)
/* 17158 80016558 0040F809 */  jalr       $v0
/* 1715C 8001655C 00002821 */   addu      $a1, $zero, $zero
/* 17160 80016560 0800596E */  j          .L800165B8
/* 17164 80016564 00000000 */   nop
glabel L80016568
/* 17168 80016568 8E440010 */  lw         $a0, 0x10($s2)
/* 1716C 8001656C 27A5001C */  addiu      $a1, $sp, 0x1C
/* 17170 80016570 0C007720 */  jal        osRecvMesg
/* 17174 80016574 24060001 */   addiu     $a2, $zero, 0x1
/* 17178 80016578 8FA20018 */  lw         $v0, 0x18($sp)
/* 1717C 8001657C 8C430010 */  lw         $v1, 0x10($v0)
/* 17180 80016580 AFA30010 */  sw         $v1, 0x10($sp)
/* 17184 80016584 8C440014 */  lw         $a0, 0x14($v0)
/* 17188 80016588 8C46000C */  lw         $a2, 0xC($v0)
/* 1718C 8001658C 8C470008 */  lw         $a3, 0x8($v0)
/* 17190 80016590 8E420018 */  lw         $v0, 0x18($s2)
/* 17194 80016594 0040F809 */  jalr       $v0
/* 17198 80016598 24050001 */   addiu     $a1, $zero, 0x1
/* 1719C 8001659C 0800596E */  j          .L800165B8
/* 171A0 800165A0 00000000 */   nop
glabel L800165A4
/* 171A4 800165A4 8FA50018 */  lw         $a1, 0x18($sp)
/* 171A8 800165A8 8CA40004 */  lw         $a0, 0x4($a1)
/* 171AC 800165AC 0C00776C */  jal        osSendMesg
/* 171B0 800165B0 00003021 */   addu      $a2, $zero, $zero
glabel L800165B4
/* 171B4 800165B4 2402FFFF */  addiu      $v0, $zero, -0x1
.L800165B8:
/* 171B8 800165B8 1440FF35 */  bnez       $v0, .L80016290
/* 171BC 800165BC 27A50020 */   addiu     $a1, $sp, 0x20
/* 171C0 800165C0 8E44000C */  lw         $a0, 0xC($s2)
/* 171C4 800165C4 0C007720 */  jal        osRecvMesg
/* 171C8 800165C8 24060001 */   addiu     $a2, $zero, 0x1
/* 171CC 800165CC 8FA50018 */  lw         $a1, 0x18($sp)
/* 171D0 800165D0 8CA40004 */  lw         $a0, 0x4($a1)
/* 171D4 800165D4 0C00776C */  jal        osSendMesg
/* 171D8 800165D8 00003021 */   addu      $a2, $zero, $zero
/* 171DC 800165DC 8E440010 */  lw         $a0, 0x10($s2)
/* 171E0 800165E0 00002821 */  addu       $a1, $zero, $zero
/* 171E4 800165E4 0C00776C */  jal        osSendMesg
/* 171E8 800165E8 00003021 */   addu      $a2, $zero, $zero
/* 171EC 800165EC 080058A4 */  j          .L80016290
/* 171F0 800165F0 00000000 */   nop
/* 171F4 800165F4 8FBF0040 */  lw         $ra, 0x40($sp)
/* 171F8 800165F8 8FB5003C */  lw         $s5, 0x3C($sp)
/* 171FC 800165FC 8FB40038 */  lw         $s4, 0x38($sp)
/* 17200 80016600 8FB30034 */  lw         $s3, 0x34($sp)
/* 17204 80016604 8FB20030 */  lw         $s2, 0x30($sp)
/* 17208 80016608 8FB1002C */  lw         $s1, 0x2C($sp)
/* 1720C 8001660C 8FB00028 */  lw         $s0, 0x28($sp)
/* 17210 80016610 03E00008 */  jr         $ra
/* 17214 80016614 27BD0048 */   addiu     $sp, $sp, 0x48
/* 17218 80016618 00000000 */  nop
/* 1721C 8001661C 00000000 */  nop
