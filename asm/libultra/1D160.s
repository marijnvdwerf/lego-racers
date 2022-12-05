.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001C560
/* 1D160 8001C560 00A6001A */  div        $zero, $a1, $a2
/* 1D164 8001C564 14C00002 */  bnez       $a2, .L8001C570
/* 1D168 8001C568 00000000 */   nop
/* 1D16C 8001C56C 0007000D */  break      7
.L8001C570:
/* 1D170 8001C570 2401FFFF */  addiu      $at, $zero, -0x1
/* 1D174 8001C574 14C10004 */  bne        $a2, $at, .L8001C588
/* 1D178 8001C578 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1D17C 8001C57C 14A10002 */  bne        $a1, $at, .L8001C588
/* 1D180 8001C580 00000000 */   nop
/* 1D184 8001C584 0006000D */  break      6
.L8001C588:
/* 1D188 8001C588 00001812 */  mflo       $v1
/* 1D18C 8001C58C 00000000 */  nop
/* 1D190 8001C590 00000000 */  nop
/* 1D194 8001C594 00C30018 */  mult       $a2, $v1
/* 1D198 8001C598 00001012 */  mflo       $v0
/* 1D19C 8001C59C 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 1D1A0 8001C5A0 00803821 */  addu       $a3, $a0, $zero
/* 1D1A4 8001C5A4 AFA30000 */  sw         $v1, 0x0($sp)
/* 1D1A8 8001C5A8 00A22823 */  subu       $a1, $a1, $v0
/* 1D1AC 8001C5AC 04610006 */  bgez       $v1, .L8001C5C8
/* 1D1B0 8001C5B0 AFA50004 */   sw        $a1, 0x4($sp)
/* 1D1B4 8001C5B4 18A00004 */  blez       $a1, .L8001C5C8
/* 1D1B8 8001C5B8 24620001 */   addiu     $v0, $v1, 0x1
/* 1D1BC 8001C5BC AFA20000 */  sw         $v0, 0x0($sp)
/* 1D1C0 8001C5C0 00A61023 */  subu       $v0, $a1, $a2
/* 1D1C4 8001C5C4 AFA20004 */  sw         $v0, 0x4($sp)
.L8001C5C8:
/* 1D1C8 8001C5C8 8FA20000 */  lw         $v0, 0x0($sp)
/* 1D1CC 8001C5CC 8FA30004 */  lw         $v1, 0x4($sp)
/* 1D1D0 8001C5D0 ACE20000 */  sw         $v0, 0x0($a3)
/* 1D1D4 8001C5D4 ACE30004 */  sw         $v1, 0x4($a3)
/* 1D1D8 8001C5D8 00E01021 */  addu       $v0, $a3, $zero
/* 1D1DC 8001C5DC 03E00008 */  jr         $ra
/* 1D1E0 8001C5E0 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8001C5E4
/* 1D1E4 8001C5E4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1D1E8 8001C5E8 AFB3002C */  sw         $s3, 0x2C($sp)
/* 1D1EC 8001C5EC AFB20028 */  sw         $s2, 0x28($sp)
/* 1D1F0 8001C5F0 8FB20048 */  lw         $s2, 0x48($sp)
/* 1D1F4 8001C5F4 8FB3004C */  lw         $s3, 0x4C($sp)
/* 1D1F8 8001C5F8 AFB40030 */  sw         $s4, 0x30($sp)
/* 1D1FC 8001C5FC 0080A021 */  addu       $s4, $a0, $zero
/* 1D200 8001C600 AFB10024 */  sw         $s1, 0x24($sp)
/* 1D204 8001C604 AFB00020 */  sw         $s0, 0x20($sp)
/* 1D208 8001C608 00C08021 */  addu       $s0, $a2, $zero
/* 1D20C 8001C60C 00E08821 */  addu       $s1, $a3, $zero
/* 1D210 8001C610 02002021 */  addu       $a0, $s0, $zero
/* 1D214 8001C614 02202821 */  addu       $a1, $s1, $zero
/* 1D218 8001C618 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1D21C 8001C61C 02403021 */  addu       $a2, $s2, $zero
/* 1D220 8001C620 0C00901C */  jal        __divdi3
/* 1D224 8001C624 02603821 */   addu      $a3, $s3, $zero
/* 1D228 8001C628 00403021 */  addu       $a2, $v0, $zero
/* 1D22C 8001C62C 00603821 */  addu       $a3, $v1, $zero
/* 1D230 8001C630 02670019 */  multu      $s3, $a3
/* 1D234 8001C634 00001010 */  mfhi       $v0
/* 1D238 8001C638 00001812 */  mflo       $v1
/* 1D23C 8001C63C 00000000 */  nop
/* 1D240 8001C640 00000000 */  nop
/* 1D244 8001C644 02660018 */  mult       $s3, $a2
/* 1D248 8001C648 00002012 */  mflo       $a0
/* 1D24C 8001C64C 00000000 */  nop
/* 1D250 8001C650 00000000 */  nop
/* 1D254 8001C654 00F20018 */  mult       $a3, $s2
/* 1D258 8001C658 00002812 */  mflo       $a1
/* 1D25C 8001C65C AFA60010 */  sw         $a2, 0x10($sp)
/* 1D260 8001C660 AFA70014 */  sw         $a3, 0x14($sp)
/* 1D264 8001C664 00441021 */  addu       $v0, $v0, $a0
/* 1D268 8001C668 8FA40010 */  lw         $a0, 0x10($sp)
/* 1D26C 8001C66C 00451021 */  addu       $v0, $v0, $a1
/* 1D270 8001C670 0223282B */  sltu       $a1, $s1, $v1
/* 1D274 8001C674 02234823 */  subu       $t1, $s1, $v1
/* 1D278 8001C678 02024023 */  subu       $t0, $s0, $v0
/* 1D27C 8001C67C 01054023 */  subu       $t0, $t0, $a1
/* 1D280 8001C680 AFA80018 */  sw         $t0, 0x18($sp)
/* 1D284 8001C684 04810013 */  bgez       $a0, .L8001C6D4
/* 1D288 8001C688 AFA9001C */   sw        $t1, 0x1C($sp)
/* 1D28C 8001C68C 8FA20018 */  lw         $v0, 0x18($sp)
/* 1D290 8001C690 5C400006 */  bgtzl      $v0, .L8001C6AC
/* 1D294 8001C694 24E30001 */   addiu     $v1, $a3, 0x1
/* 1D298 8001C698 1440000E */  bnez       $v0, .L8001C6D4
/* 1D29C 8001C69C 00000000 */   nop
/* 1D2A0 8001C6A0 8FA2001C */  lw         $v0, 0x1C($sp)
/* 1D2A4 8001C6A4 1040000B */  beqz       $v0, .L8001C6D4
/* 1D2A8 8001C6A8 24E30001 */   addiu     $v1, $a3, 0x1
.L8001C6AC:
/* 1D2AC 8001C6AC 2C640001 */  sltiu      $a0, $v1, 0x1
/* 1D2B0 8001C6B0 00C41021 */  addu       $v0, $a2, $a0
/* 1D2B4 8001C6B4 AFA20010 */  sw         $v0, 0x10($sp)
/* 1D2B8 8001C6B8 AFA30014 */  sw         $v1, 0x14($sp)
/* 1D2BC 8001C6BC 0133202B */  sltu       $a0, $t1, $s3
/* 1D2C0 8001C6C0 01331823 */  subu       $v1, $t1, $s3
/* 1D2C4 8001C6C4 01121023 */  subu       $v0, $t0, $s2
/* 1D2C8 8001C6C8 00441023 */  subu       $v0, $v0, $a0
/* 1D2CC 8001C6CC AFA20018 */  sw         $v0, 0x18($sp)
/* 1D2D0 8001C6D0 AFA3001C */  sw         $v1, 0x1C($sp)
.L8001C6D4:
/* 1D2D4 8001C6D4 8FA20010 */  lw         $v0, 0x10($sp)
/* 1D2D8 8001C6D8 8FA30014 */  lw         $v1, 0x14($sp)
/* 1D2DC 8001C6DC 8FA40018 */  lw         $a0, 0x18($sp)
/* 1D2E0 8001C6E0 8FA5001C */  lw         $a1, 0x1C($sp)
/* 1D2E4 8001C6E4 AE820000 */  sw         $v0, 0x0($s4)
/* 1D2E8 8001C6E8 AE830004 */  sw         $v1, 0x4($s4)
/* 1D2EC 8001C6EC AE840008 */  sw         $a0, 0x8($s4)
/* 1D2F0 8001C6F0 AE85000C */  sw         $a1, 0xC($s4)
/* 1D2F4 8001C6F4 02801021 */  addu       $v0, $s4, $zero
/* 1D2F8 8001C6F8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1D2FC 8001C6FC 8FB40030 */  lw         $s4, 0x30($sp)
/* 1D300 8001C700 8FB3002C */  lw         $s3, 0x2C($sp)
/* 1D304 8001C704 8FB20028 */  lw         $s2, 0x28($sp)
/* 1D308 8001C708 8FB10024 */  lw         $s1, 0x24($sp)
/* 1D30C 8001C70C 8FB00020 */  lw         $s0, 0x20($sp)
/* 1D310 8001C710 03E00008 */  jr         $ra
/* 1D314 8001C714 27BD0038 */   addiu     $sp, $sp, 0x38
/* 1D318 8001C718 00000000 */  nop
/* 1D31C 8001C71C 00000000 */  nop
