.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80015D60
/* 16960 80015D60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 16964 80015D64 AFB00010 */  sw         $s0, 0x10($sp)
/* 16968 80015D68 00808021 */  addu       $s0, $a0, $zero
/* 1696C 80015D6C AFB10014 */  sw         $s1, 0x14($sp)
/* 16970 80015D70 00A08821 */  addu       $s1, $a1, $zero
/* 16974 80015D74 3C02A460 */  lui        $v0, (0xA4600010 >> 16)
/* 16978 80015D78 34420010 */  ori        $v0, $v0, (0xA4600010 & 0xFFFF)
/* 1697C 80015D7C AFBF001C */  sw         $ra, 0x1C($sp)
/* 16980 80015D80 AFB20018 */  sw         $s2, 0x18($sp)
/* 16984 80015D84 8C420000 */  lw         $v0, 0x0($v0)
/* 16988 80015D88 00C02021 */  addu       $a0, $a2, $zero
/* 1698C 80015D8C 30420003 */  andi       $v0, $v0, 0x3
/* 16990 80015D90 10400007 */  beqz       $v0, .L80015DB0
/* 16994 80015D94 00E09021 */   addu      $s2, $a3, $zero
/* 16998 80015D98 3C03A460 */  lui        $v1, (0xA4600010 >> 16)
/* 1699C 80015D9C 34630010 */  ori        $v1, $v1, (0xA4600010 & 0xFFFF)
.L80015DA0:
/* 169A0 80015DA0 8C620000 */  lw         $v0, 0x0($v1)
/* 169A4 80015DA4 30420003 */  andi       $v0, $v0, 0x3
/* 169A8 80015DA8 1440FFFD */  bnez       $v0, .L80015DA0
/* 169AC 80015DAC 00000000 */   nop
.L80015DB0:
/* 169B0 80015DB0 0C006BB0 */  jal        osVirtualToPhysical
/* 169B4 80015DB4 00000000 */   nop
/* 169B8 80015DB8 3C06A460 */  lui        $a2, (0xA4600004 >> 16)
/* 169BC 80015DBC 34C60004 */  ori        $a2, $a2, (0xA4600004 & 0xFFFF)
/* 169C0 80015DC0 3C051FFF */  lui        $a1, (0x1FFFFFFF >> 16)
/* 169C4 80015DC4 3C038000 */  lui        $v1, %hi(D_80000308)
/* 169C8 80015DC8 8C630308 */  lw         $v1, %lo(D_80000308)($v1)
/* 169CC 80015DCC 34A5FFFF */  ori        $a1, $a1, (0x1FFFFFFF & 0xFFFF)
/* 169D0 80015DD0 3C04A460 */  lui        $a0, %hi(D_A4600000)
/* 169D4 80015DD4 AC820000 */  sw         $v0, %lo(D_A4600000)($a0)
/* 169D8 80015DD8 00711825 */  or         $v1, $v1, $s1
/* 169DC 80015DDC 00651824 */  and        $v1, $v1, $a1
/* 169E0 80015DE0 ACC30000 */  sw         $v1, 0x0($a2)
/* 169E4 80015DE4 12000005 */  beqz       $s0, .L80015DFC
/* 169E8 80015DE8 24020001 */   addiu     $v0, $zero, 0x1
/* 169EC 80015DEC 12020006 */  beq        $s0, $v0, .L80015E08
/* 169F0 80015DF0 3C03A460 */   lui       $v1, (0xA4600008 >> 16)
/* 169F4 80015DF4 08005786 */  j          .L80015E18
/* 169F8 80015DF8 2402FFFF */   addiu     $v0, $zero, -0x1
.L80015DFC:
/* 169FC 80015DFC 3C03A460 */  lui        $v1, (0xA4600008 >> 16)
/* 16A00 80015E00 08005783 */  j          .L80015E0C
/* 16A04 80015E04 3463000C */   ori       $v1, $v1, (0xA460000C & 0xFFFF)
.L80015E08:
/* 16A08 80015E08 34630008 */  ori        $v1, $v1, (0xA4600008 & 0xFFFF)
.L80015E0C:
/* 16A0C 80015E0C 2642FFFF */  addiu      $v0, $s2, -0x1
/* 16A10 80015E10 AC620000 */  sw         $v0, 0x0($v1)
/* 16A14 80015E14 00001021 */  addu       $v0, $zero, $zero
.L80015E18:
/* 16A18 80015E18 8FBF001C */  lw         $ra, 0x1C($sp)
/* 16A1C 80015E1C 8FB20018 */  lw         $s2, 0x18($sp)
/* 16A20 80015E20 8FB10014 */  lw         $s1, 0x14($sp)
/* 16A24 80015E24 8FB00010 */  lw         $s0, 0x10($sp)
/* 16A28 80015E28 03E00008 */  jr         $ra
/* 16A2C 80015E2C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80015E30
/* 16A30 80015E30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 16A34 80015E34 AFB00010 */  sw         $s0, 0x10($sp)
/* 16A38 80015E38 00808021 */  addu       $s0, $a0, $zero
/* 16A3C 80015E3C AFB10014 */  sw         $s1, 0x14($sp)
/* 16A40 80015E40 00A08821 */  addu       $s1, $a1, $zero
/* 16A44 80015E44 AFB20018 */  sw         $s2, 0x18($sp)
/* 16A48 80015E48 00C09021 */  addu       $s2, $a2, $zero
/* 16A4C 80015E4C 3C02A460 */  lui        $v0, (0xA4600010 >> 16)
/* 16A50 80015E50 34420010 */  ori        $v0, $v0, (0xA4600010 & 0xFFFF)
/* 16A54 80015E54 AFBF0020 */  sw         $ra, 0x20($sp)
/* 16A58 80015E58 AFB3001C */  sw         $s3, 0x1C($sp)
/* 16A5C 80015E5C 8C420000 */  lw         $v0, 0x0($v0)
/* 16A60 80015E60 8FB30038 */  lw         $s3, 0x38($sp)
/* 16A64 80015E64 30420003 */  andi       $v0, $v0, 0x3
/* 16A68 80015E68 10400007 */  beqz       $v0, .L80015E88
/* 16A6C 80015E6C 00E02021 */   addu      $a0, $a3, $zero
/* 16A70 80015E70 3C03A460 */  lui        $v1, (0xA4600010 >> 16)
/* 16A74 80015E74 34630010 */  ori        $v1, $v1, (0xA4600010 & 0xFFFF)
.L80015E78:
/* 16A78 80015E78 8C620000 */  lw         $v0, 0x0($v1)
/* 16A7C 80015E7C 30420003 */  andi       $v0, $v0, 0x3
/* 16A80 80015E80 1440FFFD */  bnez       $v0, .L80015E78
/* 16A84 80015E84 00000000 */   nop
.L80015E88:
/* 16A88 80015E88 92060009 */  lbu        $a2, 0x9($s0)
/* 16A8C 80015E8C 00061080 */  sll        $v0, $a2, 2
/* 16A90 80015E90 3C058003 */  lui        $a1, %hi(D_80030CB0)
/* 16A94 80015E94 00A22821 */  addu       $a1, $a1, $v0
/* 16A98 80015E98 8CA50CB0 */  lw         $a1, %lo(D_80030CB0)($a1)
/* 16A9C 80015E9C 92020004 */  lbu        $v0, 0x4($s0)
/* 16AA0 80015EA0 90A30004 */  lbu        $v1, 0x4($a1)
/* 16AA4 80015EA4 1062003D */  beq        $v1, $v0, .L80015F9C
/* 16AA8 80015EA8 00000000 */   nop
/* 16AAC 80015EAC 14C00019 */  bnez       $a2, .L80015F14
/* 16AB0 80015EB0 00A01821 */   addu      $v1, $a1, $zero
/* 16AB4 80015EB4 90620005 */  lbu        $v0, 0x5($v1)
/* 16AB8 80015EB8 92050005 */  lbu        $a1, 0x5($s0)
/* 16ABC 80015EBC 10450003 */  beq        $v0, $a1, .L80015ECC
/* 16AC0 80015EC0 3C02A460 */   lui       $v0, (0xA4600014 >> 16)
/* 16AC4 80015EC4 34420014 */  ori        $v0, $v0, (0xA4600014 & 0xFFFF)
/* 16AC8 80015EC8 AC450000 */  sw         $a1, 0x0($v0)
.L80015ECC:
/* 16ACC 80015ECC 90620006 */  lbu        $v0, 0x6($v1)
/* 16AD0 80015ED0 92050006 */  lbu        $a1, 0x6($s0)
/* 16AD4 80015ED4 10450003 */  beq        $v0, $a1, .L80015EE4
/* 16AD8 80015ED8 3C02A460 */   lui       $v0, (0xA460001C >> 16)
/* 16ADC 80015EDC 3442001C */  ori        $v0, $v0, (0xA460001C & 0xFFFF)
/* 16AE0 80015EE0 AC450000 */  sw         $a1, 0x0($v0)
.L80015EE4:
/* 16AE4 80015EE4 90620007 */  lbu        $v0, 0x7($v1)
/* 16AE8 80015EE8 92050007 */  lbu        $a1, 0x7($s0)
/* 16AEC 80015EEC 10450003 */  beq        $v0, $a1, .L80015EFC
/* 16AF0 80015EF0 3C02A460 */   lui       $v0, (0xA4600020 >> 16)
/* 16AF4 80015EF4 34420020 */  ori        $v0, $v0, (0xA4600020 & 0xFFFF)
/* 16AF8 80015EF8 AC450000 */  sw         $a1, 0x0($v0)
.L80015EFC:
/* 16AFC 80015EFC 90620008 */  lbu        $v0, 0x8($v1)
/* 16B00 80015F00 92050008 */  lbu        $a1, 0x8($s0)
/* 16B04 80015F04 1045001B */  beq        $v0, $a1, .L80015F74
/* 16B08 80015F08 3C02A460 */   lui       $v0, (0xA4600018 >> 16)
/* 16B0C 80015F0C 080057DC */  j          .L80015F70
/* 16B10 80015F10 34420018 */   ori       $v0, $v0, (0xA4600018 & 0xFFFF)
.L80015F14:
/* 16B14 80015F14 90620005 */  lbu        $v0, 0x5($v1)
/* 16B18 80015F18 92050005 */  lbu        $a1, 0x5($s0)
/* 16B1C 80015F1C 10450003 */  beq        $v0, $a1, .L80015F2C
/* 16B20 80015F20 3C02A460 */   lui       $v0, (0xA4600024 >> 16)
/* 16B24 80015F24 34420024 */  ori        $v0, $v0, (0xA4600024 & 0xFFFF)
/* 16B28 80015F28 AC450000 */  sw         $a1, 0x0($v0)
.L80015F2C:
/* 16B2C 80015F2C 90620006 */  lbu        $v0, 0x6($v1)
/* 16B30 80015F30 92050006 */  lbu        $a1, 0x6($s0)
/* 16B34 80015F34 10450003 */  beq        $v0, $a1, .L80015F44
/* 16B38 80015F38 3C02A460 */   lui       $v0, (0xA460002C >> 16)
/* 16B3C 80015F3C 3442002C */  ori        $v0, $v0, (0xA460002C & 0xFFFF)
/* 16B40 80015F40 AC450000 */  sw         $a1, 0x0($v0)
.L80015F44:
/* 16B44 80015F44 90620007 */  lbu        $v0, 0x7($v1)
/* 16B48 80015F48 92050007 */  lbu        $a1, 0x7($s0)
/* 16B4C 80015F4C 10450003 */  beq        $v0, $a1, .L80015F5C
/* 16B50 80015F50 3C02A460 */   lui       $v0, (0xA4600030 >> 16)
/* 16B54 80015F54 34420030 */  ori        $v0, $v0, (0xA4600030 & 0xFFFF)
/* 16B58 80015F58 AC450000 */  sw         $a1, 0x0($v0)
.L80015F5C:
/* 16B5C 80015F5C 90620008 */  lbu        $v0, 0x8($v1)
/* 16B60 80015F60 92050008 */  lbu        $a1, 0x8($s0)
/* 16B64 80015F64 10450003 */  beq        $v0, $a1, .L80015F74
/* 16B68 80015F68 3C02A460 */   lui       $v0, (0xA4600028 >> 16)
/* 16B6C 80015F6C 34420028 */  ori        $v0, $v0, (0xA4600028 & 0xFFFF)
.L80015F70:
/* 16B70 80015F70 AC450000 */  sw         $a1, 0x0($v0)
.L80015F74:
/* 16B74 80015F74 92020004 */  lbu        $v0, 0x4($s0)
/* 16B78 80015F78 A0620004 */  sb         $v0, 0x4($v1)
/* 16B7C 80015F7C 92020005 */  lbu        $v0, 0x5($s0)
/* 16B80 80015F80 A0620005 */  sb         $v0, 0x5($v1)
/* 16B84 80015F84 92020006 */  lbu        $v0, 0x6($s0)
/* 16B88 80015F88 A0620006 */  sb         $v0, 0x6($v1)
/* 16B8C 80015F8C 92020007 */  lbu        $v0, 0x7($s0)
/* 16B90 80015F90 A0620007 */  sb         $v0, 0x7($v1)
/* 16B94 80015F94 92020008 */  lbu        $v0, 0x8($s0)
/* 16B98 80015F98 A0620008 */  sb         $v0, 0x8($v1)
.L80015F9C:
/* 16B9C 80015F9C 0C006BB0 */  jal        osVirtualToPhysical
/* 16BA0 80015FA0 00000000 */   nop
/* 16BA4 80015FA4 3C04A460 */  lui        $a0, (0xA4600004 >> 16)
/* 16BA8 80015FA8 34840004 */  ori        $a0, $a0, (0xA4600004 & 0xFFFF)
/* 16BAC 80015FAC 3C03A460 */  lui        $v1, %hi(D_A4600000)
/* 16BB0 80015FB0 AC620000 */  sw         $v0, %lo(D_A4600000)($v1)
/* 16BB4 80015FB4 8E02000C */  lw         $v0, 0xC($s0)
/* 16BB8 80015FB8 3C031FFF */  lui        $v1, (0x1FFFFFFF >> 16)
/* 16BBC 80015FBC 3463FFFF */  ori        $v1, $v1, (0x1FFFFFFF & 0xFFFF)
/* 16BC0 80015FC0 00521025 */  or         $v0, $v0, $s2
/* 16BC4 80015FC4 00431024 */  and        $v0, $v0, $v1
/* 16BC8 80015FC8 AC820000 */  sw         $v0, 0x0($a0)
/* 16BCC 80015FCC 12200005 */  beqz       $s1, .L80015FE4
/* 16BD0 80015FD0 24020001 */   addiu     $v0, $zero, 0x1
/* 16BD4 80015FD4 12220006 */  beq        $s1, $v0, .L80015FF0
/* 16BD8 80015FD8 3C03A460 */   lui       $v1, (0xA4600008 >> 16)
/* 16BDC 80015FDC 08005800 */  j          .L80016000
/* 16BE0 80015FE0 2402FFFF */   addiu     $v0, $zero, -0x1
.L80015FE4:
/* 16BE4 80015FE4 3C03A460 */  lui        $v1, (0xA4600008 >> 16)
/* 16BE8 80015FE8 080057FD */  j          .L80015FF4
/* 16BEC 80015FEC 3463000C */   ori       $v1, $v1, (0xA460000C & 0xFFFF)
.L80015FF0:
/* 16BF0 80015FF0 34630008 */  ori        $v1, $v1, (0xA4600008 & 0xFFFF)
.L80015FF4:
/* 16BF4 80015FF4 2662FFFF */  addiu      $v0, $s3, -0x1
/* 16BF8 80015FF8 AC620000 */  sw         $v0, 0x0($v1)
/* 16BFC 80015FFC 00001021 */  addu       $v0, $zero, $zero
.L80016000:
/* 16C00 80016000 8FBF0020 */  lw         $ra, 0x20($sp)
/* 16C04 80016004 8FB3001C */  lw         $s3, 0x1C($sp)
/* 16C08 80016008 8FB20018 */  lw         $s2, 0x18($sp)
/* 16C0C 8001600C 8FB10014 */  lw         $s1, 0x14($sp)
/* 16C10 80016010 8FB00010 */  lw         $s0, 0x10($sp)
/* 16C14 80016014 03E00008 */  jr         $ra
/* 16C18 80016018 27BD0028 */   addiu     $sp, $sp, 0x28
/* 16C1C 8001601C 00000000 */  nop
