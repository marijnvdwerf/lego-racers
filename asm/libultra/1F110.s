.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001E510
/* 1F110 8001E510 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 1F114 8001E514 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 1F118 8001E518 03E00008 */  jr         $ra
/* 1F11C 8001E51C AC440000 */   sw        $a0, 0x0($v0)

glabel func_8001E520
/* 1F120 8001E520 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 1F124 8001E524 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 1F128 8001E528 8C420000 */  lw         $v0, 0x0($v0)
/* 1F12C 8001E52C 30420001 */  andi       $v0, $v0, 0x1
/* 1F130 8001E530 10400004 */  beqz       $v0, .L8001E544
/* 1F134 8001E534 3C02A408 */   lui       $v0, %hi(D_A4080000)
/* 1F138 8001E538 AC440000 */  sw         $a0, %lo(D_A4080000)($v0)
/* 1F13C 8001E53C 08007952 */  j          .L8001E548
/* 1F140 8001E540 00001021 */   addu      $v0, $zero, $zero
.L8001E544:
/* 1F144 8001E544 2402FFFF */  addiu      $v0, $zero, -0x1
.L8001E548:
/* 1F148 8001E548 03E00008 */  jr         $ra
/* 1F14C 8001E54C 00000000 */   nop

glabel func_8001E550
/* 1F150 8001E550 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F154 8001E554 AFB20018 */  sw         $s2, 0x18($sp)
/* 1F158 8001E558 00809021 */  addu       $s2, $a0, $zero
/* 1F15C 8001E55C AFB00010 */  sw         $s0, 0x10($sp)
/* 1F160 8001E560 00A08021 */  addu       $s0, $a1, $zero
/* 1F164 8001E564 AFB10014 */  sw         $s1, 0x14($sp)
/* 1F168 8001E568 00C08821 */  addu       $s1, $a2, $zero
/* 1F16C 8001E56C AFB3001C */  sw         $s3, 0x1C($sp)
/* 1F170 8001E570 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1F174 8001E574 0C00793C */  jal        func_8001E4F0
/* 1F178 8001E578 00E09821 */   addu      $s3, $a3, $zero
/* 1F17C 8001E57C 14400010 */  bnez       $v0, .L8001E5C0
/* 1F180 8001E580 2402FFFF */   addiu     $v0, $zero, -0x1
/* 1F184 8001E584 3C02A404 */  lui        $v0, %hi(D_A4040000)
/* 1F188 8001E588 02202021 */  addu       $a0, $s1, $zero
/* 1F18C 8001E58C 0C006BB0 */  jal        osVirtualToPhysical
/* 1F190 8001E590 AC500000 */   sw        $s0, %lo(D_A4040000)($v0)
/* 1F194 8001E594 3C03A404 */  lui        $v1, (0xA4040004 >> 16)
/* 1F198 8001E598 34630004 */  ori        $v1, $v1, (0xA4040004 & 0xFFFF)
/* 1F19C 8001E59C AC620000 */  sw         $v0, 0x0($v1)
/* 1F1A0 8001E5A0 16400003 */  bnez       $s2, .L8001E5B0
/* 1F1A4 8001E5A4 3C03A404 */   lui       $v1, (0xA4040008 >> 16)
/* 1F1A8 8001E5A8 0800796D */  j          .L8001E5B4
/* 1F1AC 8001E5AC 3463000C */   ori       $v1, $v1, (0xA404000C & 0xFFFF)
.L8001E5B0:
/* 1F1B0 8001E5B0 34630008 */  ori        $v1, $v1, (0xA4040008 & 0xFFFF)
.L8001E5B4:
/* 1F1B4 8001E5B4 2662FFFF */  addiu      $v0, $s3, -0x1
/* 1F1B8 8001E5B8 AC620000 */  sw         $v0, 0x0($v1)
/* 1F1BC 8001E5BC 00001021 */  addu       $v0, $zero, $zero
.L8001E5C0:
/* 1F1C0 8001E5C0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1F1C4 8001E5C4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1F1C8 8001E5C8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F1CC 8001E5CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F1D0 8001E5D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F1D4 8001E5D4 03E00008 */  jr         $ra
/* 1F1D8 8001E5D8 27BD0028 */   addiu     $sp, $sp, 0x28
/* 1F1DC 8001E5DC 00000000 */  nop
