.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001F130
/* 1FD30 8001F130 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FD34 8001F134 3C02A480 */  lui        $v0, (0xA4800018 >> 16)
/* 1FD38 8001F138 34420018 */  ori        $v0, $v0, (0xA4800018 & 0xFFFF)
/* 1FD3C 8001F13C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1FD40 8001F140 AFB10014 */  sw         $s1, 0x14($sp)
/* 1FD44 8001F144 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FD48 8001F148 8C420000 */  lw         $v0, 0x0($v0)
/* 1FD4C 8001F14C 00808021 */  addu       $s0, $a0, $zero
/* 1FD50 8001F150 30420003 */  andi       $v0, $v0, 0x3
/* 1FD54 8001F154 10400003 */  beqz       $v0, .L8001F164
/* 1FD58 8001F158 00A08821 */   addu      $s1, $a1, $zero
/* 1FD5C 8001F15C 08007C70 */  j          .L8001F1C0
/* 1FD60 8001F160 2402FFFF */   addiu     $v0, $zero, -0x1
.L8001F164:
/* 1FD64 8001F164 24020001 */  addiu      $v0, $zero, 0x1
/* 1FD68 8001F168 16020003 */  bne        $s0, $v0, .L8001F178
/* 1FD6C 8001F16C 02202021 */   addu      $a0, $s1, $zero
/* 1FD70 8001F170 0C006A20 */  jal        osWritebackDCache
/* 1FD74 8001F174 24050040 */   addiu     $a1, $zero, 0x40
.L8001F178:
/* 1FD78 8001F178 0C006BB0 */  jal        osVirtualToPhysical
/* 1FD7C 8001F17C 02202021 */   addu      $a0, $s1, $zero
/* 1FD80 8001F180 3C03A480 */  lui        $v1, %hi(D_A4800000)
/* 1FD84 8001F184 AC620000 */  sw         $v0, %lo(D_A4800000)($v1)
/* 1FD88 8001F188 56000003 */  bnel       $s0, $zero, .L8001F198
/* 1FD8C 8001F18C 3C03A480 */   lui       $v1, (0xA4800010 >> 16)
/* 1FD90 8001F190 08007C67 */  j          .L8001F19C
/* 1FD94 8001F194 34630004 */   ori       $v1, $v1, (0xA4800004 & 0xFFFF)
.L8001F198:
/* 1FD98 8001F198 34630010 */  ori        $v1, $v1, (0xA4800010 & 0xFFFF)
.L8001F19C:
/* 1FD9C 8001F19C 3C021FC0 */  lui        $v0, (0x1FC007C0 >> 16)
/* 1FDA0 8001F1A0 344207C0 */  ori        $v0, $v0, (0x1FC007C0 & 0xFFFF)
/* 1FDA4 8001F1A4 AC620000 */  sw         $v0, 0x0($v1)
/* 1FDA8 8001F1A8 16000005 */  bnez       $s0, .L8001F1C0
/* 1FDAC 8001F1AC 00001021 */   addu      $v0, $zero, $zero
/* 1FDB0 8001F1B0 02202021 */  addu       $a0, $s1, $zero
/* 1FDB4 8001F1B4 0C0069D4 */  jal        osInvalDCache
/* 1FDB8 8001F1B8 24050040 */   addiu     $a1, $zero, 0x40
/* 1FDBC 8001F1BC 00001021 */  addu       $v0, $zero, $zero
.L8001F1C0:
/* 1FDC0 8001F1C0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1FDC4 8001F1C4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FDC8 8001F1C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FDCC 8001F1CC 03E00008 */  jr         $ra
/* 1FDD0 8001F1D0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1FDD4 8001F1D4 00000000 */  nop
/* 1FDD8 8001F1D8 00000000 */  nop
/* 1FDDC 8001F1DC 00000000 */  nop
