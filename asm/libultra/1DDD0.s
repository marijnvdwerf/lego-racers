.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001D1D0
/* 1DDD0 8001D1D0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1DDD4 8001D1D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1DDD8 8001D1D8 00808021 */  addu       $s0, $a0, $zero
/* 1DDDC 8001D1DC AFB50024 */  sw         $s5, 0x24($sp)
/* 1DDE0 8001D1E0 00A0A821 */  addu       $s5, $a1, $zero
/* 1DDE4 8001D1E4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1DDE8 8001D1E8 00C09021 */  addu       $s2, $a2, $zero
/* 1DDEC 8001D1EC AFBF0028 */  sw         $ra, 0x28($sp)
/* 1DDF0 8001D1F0 AFB40020 */  sw         $s4, 0x20($sp)
/* 1DDF4 8001D1F4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1DDF8 8001D1F8 0C005734 */  jal        func_80015CD0
/* 1DDFC 8001D1FC AFB10014 */   sw        $s1, 0x14($sp)
/* 1DE00 8001D200 8E030008 */  lw         $v1, 0x8($s0)
/* 1DE04 8001D204 8E040010 */  lw         $a0, 0x10($s0)
/* 1DE08 8001D208 0064182A */  slt        $v1, $v1, $a0
/* 1DE0C 8001D20C 14600012 */  bnez       $v1, .L8001D258
/* 1DE10 8001D210 00408821 */   addu      $s1, $v0, $zero
/* 1DE14 8001D214 24140001 */  addiu      $s4, $zero, 0x1
/* 1DE18 8001D218 24130008 */  addiu      $s3, $zero, 0x8
.L8001D21C:
/* 1DE1C 8001D21C 12540005 */  beq        $s2, $s4, .L8001D234
/* 1DE20 8001D220 26040004 */   addiu     $a0, $s0, 0x4
/* 1DE24 8001D224 0C005750 */  jal        func_80015D40
/* 1DE28 8001D228 02202021 */   addu      $a0, $s1, $zero
/* 1DE2C 8001D22C 080074B8 */  j          .L8001D2E0
/* 1DE30 8001D230 2402FFFF */   addiu     $v0, $zero, -0x1
.L8001D234:
/* 1DE34 8001D234 3C028003 */  lui        $v0, %hi(D_800310B0)
/* 1DE38 8001D238 8C4210B0 */  lw         $v0, %lo(D_800310B0)($v0)
/* 1DE3C 8001D23C 0C007663 */  jal        func_8001D98C
/* 1DE40 8001D240 A4530010 */   sh        $s3, 0x10($v0)
/* 1DE44 8001D244 8E020008 */  lw         $v0, 0x8($s0)
/* 1DE48 8001D248 8E030010 */  lw         $v1, 0x10($s0)
/* 1DE4C 8001D24C 0043102A */  slt        $v0, $v0, $v1
/* 1DE50 8001D250 1040FFF2 */  beqz       $v0, .L8001D21C
/* 1DE54 8001D254 00000000 */   nop
.L8001D258:
/* 1DE58 8001D258 8E02000C */  lw         $v0, 0xC($s0)
/* 1DE5C 8001D25C 8E030010 */  lw         $v1, 0x10($s0)
/* 1DE60 8001D260 00431021 */  addu       $v0, $v0, $v1
/* 1DE64 8001D264 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1DE68 8001D268 0043001A */  div        $zero, $v0, $v1
/* 1DE6C 8001D26C 14600002 */  bnez       $v1, .L8001D278
/* 1DE70 8001D270 00000000 */   nop
/* 1DE74 8001D274 0007000D */  break      7
.L8001D278:
/* 1DE78 8001D278 2401FFFF */  addiu      $at, $zero, -0x1
/* 1DE7C 8001D27C 14610004 */  bne        $v1, $at, .L8001D290
/* 1DE80 8001D280 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1DE84 8001D284 14410002 */  bne        $v0, $at, .L8001D290
/* 1DE88 8001D288 00000000 */   nop
/* 1DE8C 8001D28C 0006000D */  break      6
.L8001D290:
/* 1DE90 8001D290 00001810 */  mfhi       $v1
/* 1DE94 8001D294 8E020014 */  lw         $v0, 0x14($s0)
/* 1DE98 8001D298 AE03000C */  sw         $v1, 0xC($s0)
/* 1DE9C 8001D29C 00031880 */  sll        $v1, $v1, 2
/* 1DEA0 8001D2A0 00621821 */  addu       $v1, $v1, $v0
/* 1DEA4 8001D2A4 AC750000 */  sw         $s5, 0x0($v1)
/* 1DEA8 8001D2A8 8E020008 */  lw         $v0, 0x8($s0)
/* 1DEAC 8001D2AC 8E030000 */  lw         $v1, 0x0($s0)
/* 1DEB0 8001D2B0 24420001 */  addiu      $v0, $v0, 0x1
/* 1DEB4 8001D2B4 AE020008 */  sw         $v0, 0x8($s0)
/* 1DEB8 8001D2B8 8C620000 */  lw         $v0, 0x0($v1)
/* 1DEBC 8001D2BC 10400005 */  beqz       $v0, .L8001D2D4
/* 1DEC0 8001D2C0 00000000 */   nop
/* 1DEC4 8001D2C4 0C0076B7 */  jal        func_8001DADC
/* 1DEC8 8001D2C8 02002021 */   addu      $a0, $s0, $zero
/* 1DECC 8001D2CC 0C007D5C */  jal        osStartThread
/* 1DED0 8001D2D0 00402021 */   addu      $a0, $v0, $zero
.L8001D2D4:
/* 1DED4 8001D2D4 0C005750 */  jal        func_80015D40
/* 1DED8 8001D2D8 02202021 */   addu      $a0, $s1, $zero
/* 1DEDC 8001D2DC 00001021 */  addu       $v0, $zero, $zero
.L8001D2E0:
/* 1DEE0 8001D2E0 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1DEE4 8001D2E4 8FB50024 */  lw         $s5, 0x24($sp)
/* 1DEE8 8001D2E8 8FB40020 */  lw         $s4, 0x20($sp)
/* 1DEEC 8001D2EC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1DEF0 8001D2F0 8FB20018 */  lw         $s2, 0x18($sp)
/* 1DEF4 8001D2F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1DEF8 8001D2F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1DEFC 8001D2FC 03E00008 */  jr         $ra
/* 1DF00 8001D300 27BD0030 */   addiu     $sp, $sp, 0x30
/* 1DF04 8001D304 00000000 */  nop
/* 1DF08 8001D308 00000000 */  nop
/* 1DF0C 8001D30C 00000000 */  nop
