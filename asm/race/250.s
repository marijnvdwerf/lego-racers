.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E5000
/* 9B3C0 800E5000 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9B3C4 800E5004 AFB00010 */  sw         $s0, 0x10($sp)
/* 9B3C8 800E5008 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B3CC 800E500C 0C0399F4 */  jal        func_race_800E67D0
/* 9B3D0 800E5010 00808021 */   addu      $s0, $a0, $zero
/* 9B3D4 800E5014 0C039364 */  jal        func_race_800E4D90
/* 9B3D8 800E5018 2604003C */   addiu     $a0, $s0, 0x3C
/* 9B3DC 800E501C 02001021 */  addu       $v0, $s0, $zero
/* 9B3E0 800E5020 AC400054 */  sw         $zero, 0x54($v0)
/* 9B3E4 800E5024 AC400058 */  sw         $zero, 0x58($v0)
/* 9B3E8 800E5028 AC40005C */  sw         $zero, 0x5C($v0)
/* 9B3EC 800E502C AC400064 */  sw         $zero, 0x64($v0)
/* 9B3F0 800E5030 AC400060 */  sw         $zero, 0x60($v0)
/* 9B3F4 800E5034 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B3F8 800E5038 8FB00010 */  lw         $s0, 0x10($sp)
/* 9B3FC 800E503C 03E00008 */  jr         $ra
/* 9B400 800E5040 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E5044
/* 9B404 800E5044 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9B408 800E5048 AFB10014 */  sw         $s1, 0x14($sp)
/* 9B40C 800E504C 00808821 */  addu       $s1, $a0, $zero
/* 9B410 800E5050 AFB00010 */  sw         $s0, 0x10($sp)
/* 9B414 800E5054 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9B418 800E5058 0C03950A */  jal        func_race_800E5428
/* 9B41C 800E505C 00A08021 */   addu      $s0, $a1, $zero
/* 9B420 800E5060 2624003C */  addiu      $a0, $s1, 0x3C
/* 9B424 800E5064 0C03936E */  jal        func_race_800E4DB8
/* 9B428 800E5068 24050002 */   addiu     $a1, $zero, 0x2
/* 9B42C 800E506C 02202021 */  addu       $a0, $s1, $zero
/* 9B430 800E5070 0C039A08 */  jal        func_race_800E6820
/* 9B434 800E5074 24050002 */   addiu     $a1, $zero, 0x2
/* 9B438 800E5078 32100001 */  andi       $s0, $s0, 0x1
/* 9B43C 800E507C 12000003 */  beqz       $s0, .Lrace_800E508C
/* 9B440 800E5080 00000000 */   nop
/* 9B444 800E5084 0C01FB5C */  jal        func_8007ED70
/* 9B448 800E5088 02202021 */   addu      $a0, $s1, $zero
.Lrace_800E508C:
/* 9B44C 800E508C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9B450 800E5090 8FB10014 */  lw         $s1, 0x14($sp)
/* 9B454 800E5094 8FB00010 */  lw         $s0, 0x10($sp)
/* 9B458 800E5098 03E00008 */  jr         $ra
/* 9B45C 800E509C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E50A0
/* 9B460 800E50A0 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 9B464 800E50A4 AFB60068 */  sw         $s6, 0x68($sp)
/* 9B468 800E50A8 8FB60088 */  lw         $s6, 0x88($sp)
/* 9B46C 800E50AC F7B40070 */  sdc1       $f20, 0x70($sp)
/* 9B470 800E50B0 C7B40090 */  lwc1       $f20, 0x90($sp)
/* 9B474 800E50B4 AFB20058 */  sw         $s2, 0x58($sp)
/* 9B478 800E50B8 00809021 */  addu       $s2, $a0, $zero
/* 9B47C 800E50BC AFB10054 */  sw         $s1, 0x54($sp)
/* 9B480 800E50C0 00A08821 */  addu       $s1, $a1, $zero
/* 9B484 800E50C4 AFB40060 */  sw         $s4, 0x60($sp)
/* 9B488 800E50C8 00C0A021 */  addu       $s4, $a2, $zero
/* 9B48C 800E50CC AFBF006C */  sw         $ra, 0x6C($sp)
/* 9B490 800E50D0 AFB50064 */  sw         $s5, 0x64($sp)
/* 9B494 800E50D4 AFB3005C */  sw         $s3, 0x5C($sp)
/* 9B498 800E50D8 AFB00050 */  sw         $s0, 0x50($sp)
/* 9B49C 800E50DC AFA00038 */  sw         $zero, 0x38($sp)
/* 9B4A0 800E50E0 AFA0003C */  sw         $zero, 0x3C($sp)
/* 9B4A4 800E50E4 AFA00040 */  sw         $zero, 0x40($sp)
/* 9B4A8 800E50E8 AFA00044 */  sw         $zero, 0x44($sp)
/* 9B4AC 800E50EC AFA00048 */  sw         $zero, 0x48($sp)
/* 9B4B0 800E50F0 A7A0004C */  sh         $zero, 0x4C($sp)
/* 9B4B4 800E50F4 A7A0004E */  sh         $zero, 0x4E($sp)
/* 9B4B8 800E50F8 8E420054 */  lw         $v0, 0x54($s2)
/* 9B4BC 800E50FC 10400003 */  beqz       $v0, .Lrace_800E510C
/* 9B4C0 800E5100 00E0A821 */   addu      $s5, $a3, $zero
/* 9B4C4 800E5104 0C03950A */  jal        func_race_800E5428
/* 9B4C8 800E5108 00000000 */   nop
.Lrace_800E510C:
/* 9B4CC 800E510C AE540064 */  sw         $s4, 0x64($s2)
/* 9B4D0 800E5110 AE51005C */  sw         $s1, 0x5C($s2)
/* 9B4D4 800E5114 8E220000 */  lw         $v0, 0x0($s1)
/* 9B4D8 800E5118 84440010 */  lh         $a0, 0x10($v0)
/* 9B4DC 800E511C 8C420014 */  lw         $v0, 0x14($v0)
/* 9B4E0 800E5120 0040F809 */  jalr       $v0
/* 9B4E4 800E5124 02242021 */   addu      $a0, $s1, $a0
/* 9B4E8 800E5128 00409821 */  addu       $s3, $v0, $zero
/* 9B4EC 800E512C 8E70001C */  lw         $s0, 0x1C($s3)
/* 9B4F0 800E5130 8E02012C */  lw         $v0, 0x12C($s0)
/* 9B4F4 800E5134 84440030 */  lh         $a0, 0x30($v0)
/* 9B4F8 800E5138 8C420034 */  lw         $v0, 0x34($v0)
/* 9B4FC 800E513C 0040F809 */  jalr       $v0
/* 9B500 800E5140 02042021 */   addu      $a0, $s0, $a0
/* 9B504 800E5144 94430026 */  lhu        $v1, 0x26($v0)
/* 9B508 800E5148 94420028 */  lhu        $v0, 0x28($v0)
/* 9B50C 800E514C 00620018 */  mult       $v1, $v0
/* 9B510 800E5150 00001812 */  mflo       $v1
/* 9B514 800E5154 00000000 */  nop
/* 9B518 800E5158 00000000 */  nop
/* 9B51C 800E515C 02B60018 */  mult       $s5, $s6
/* 9B520 800E5160 44831000 */  mtc1       $v1, $f2
/* 9B524 800E5164 468010A0 */  cvt.s.w    $f2, $f2
/* 9B528 800E5168 00001012 */  mflo       $v0
/* 9B52C 800E516C 44820000 */  mtc1       $v0, $f0
/* 9B530 800E5170 46800020 */  cvt.s.w    $f0, $f0
/* 9B534 800E5174 46020003 */  div.s      $f0, $f0, $f2
/* 9B538 800E5178 C7A2008C */  lwc1       $f2, 0x8C($sp)
/* 9B53C 800E517C 46020002 */  mul.s      $f0, $f0, $f2
/* 9B540 800E5180 E6400068 */  swc1       $f0, 0x68($s2)
/* 9B544 800E5184 8E020000 */  lw         $v0, 0x0($s0)
/* 9B548 800E5188 30420180 */  andi       $v0, $v0, 0x180
/* 9B54C 800E518C 1040000B */  beqz       $v0, .Lrace_800E51BC
/* 9B550 800E5190 24027C00 */   addiu     $v0, $zero, 0x7C00
/* 9B554 800E5194 27A30038 */  addiu      $v1, $sp, 0x38
/* 9B558 800E5198 AFA20038 */  sw         $v0, 0x38($sp)
/* 9B55C 800E519C 240203E0 */  addiu      $v0, $zero, 0x3E0
/* 9B560 800E51A0 AC620004 */  sw         $v0, 0x4($v1)
/* 9B564 800E51A4 2402001F */  addiu      $v0, $zero, 0x1F
/* 9B568 800E51A8 AC620008 */  sw         $v0, 0x8($v1)
/* 9B56C 800E51AC 34028000 */  ori        $v0, $zero, 0x8000
/* 9B570 800E51B0 AC62000C */  sw         $v0, 0xC($v1)
/* 9B574 800E51B4 08039478 */  j          .Lrace_800E51E0
/* 9B578 800E51B8 24020010 */   addiu     $v0, $zero, 0x10
.Lrace_800E51BC:
/* 9B57C 800E51BC 3402F800 */  ori        $v0, $zero, 0xF800
/* 9B580 800E51C0 27A30038 */  addiu      $v1, $sp, 0x38
/* 9B584 800E51C4 AFA20038 */  sw         $v0, 0x38($sp)
/* 9B588 800E51C8 240207E0 */  addiu      $v0, $zero, 0x7E0
/* 9B58C 800E51CC AC620004 */  sw         $v0, 0x4($v1)
/* 9B590 800E51D0 2402001F */  addiu      $v0, $zero, 0x1F
/* 9B594 800E51D4 AC620008 */  sw         $v0, 0x8($v1)
/* 9B598 800E51D8 24020010 */  addiu      $v0, $zero, 0x10
/* 9B59C 800E51DC AFA00044 */  sw         $zero, 0x44($sp)
.Lrace_800E51E0:
/* 9B5A0 800E51E0 AFA00048 */  sw         $zero, 0x48($sp)
/* 9B5A4 800E51E4 A7A0004C */  sh         $zero, 0x4C($sp)
/* 9B5A8 800E51E8 A7A2004E */  sh         $v0, 0x4E($sp)
/* 9B5AC 800E51EC 02402021 */  addu       $a0, $s2, $zero
/* 9B5B0 800E51F0 02202821 */  addu       $a1, $s1, $zero
/* 9B5B4 800E51F4 02803021 */  addu       $a2, $s4, $zero
/* 9B5B8 800E51F8 02A03821 */  addu       $a3, $s5, $zero
/* 9B5BC 800E51FC 27A20030 */  addiu      $v0, $sp, 0x30
/* 9B5C0 800E5200 A3A00030 */  sb         $zero, 0x30($sp)
/* 9B5C4 800E5204 A3A00031 */  sb         $zero, 0x31($sp)
/* 9B5C8 800E5208 A3A00032 */  sb         $zero, 0x32($sp)
/* 9B5CC 800E520C A3A00033 */  sb         $zero, 0x33($sp)
/* 9B5D0 800E5210 AFB60010 */  sw         $s6, 0x10($sp)
/* 9B5D4 800E5214 8FA80038 */  lw         $t0, 0x38($sp)
/* 9B5D8 800E5218 8FA9003C */  lw         $t1, 0x3C($sp)
/* 9B5DC 800E521C 8FAA0040 */  lw         $t2, 0x40($sp)
/* 9B5E0 800E5220 8FAB0044 */  lw         $t3, 0x44($sp)
/* 9B5E4 800E5224 AFA80014 */  sw         $t0, 0x14($sp)
/* 9B5E8 800E5228 AFA90018 */  sw         $t1, 0x18($sp)
/* 9B5EC 800E522C AFAA001C */  sw         $t2, 0x1C($sp)
/* 9B5F0 800E5230 AFAB0020 */  sw         $t3, 0x20($sp)
/* 9B5F4 800E5234 8FA80048 */  lw         $t0, 0x48($sp)
/* 9B5F8 800E5238 8FA9004C */  lw         $t1, 0x4C($sp)
/* 9B5FC 800E523C AFA80024 */  sw         $t0, 0x24($sp)
/* 9B600 800E5240 AFA90028 */  sw         $t1, 0x28($sp)
/* 9B604 800E5244 0C039A1C */  jal        func_race_800E6870
/* 9B608 800E5248 AFA2002C */   sw        $v0, 0x2C($sp)
/* 9B60C 800E524C 2644003C */  addiu      $a0, $s2, 0x3C
/* 9B610 800E5250 02202821 */  addu       $a1, $s1, $zero
/* 9B614 800E5254 02403021 */  addu       $a2, $s2, $zero
/* 9B618 800E5258 0C039382 */  jal        func_race_800E4E08
/* 9B61C 800E525C 2407081A */   addiu     $a3, $zero, 0x81A
/* 9B620 800E5260 8E440064 */  lw         $a0, 0x64($s2)
/* 9B624 800E5264 0C00943C */  jal        func_800250F0
/* 9B628 800E5268 00042080 */   sll       $a0, $a0, 2
/* 9B62C 800E526C 14400007 */  bnez       $v0, .Lrace_800E528C
/* 9B630 800E5270 AE420054 */   sw        $v0, 0x54($s2)
/* 9B634 800E5274 3C04800D */  lui        $a0, %hi(D_race_800CB920)
/* 9B638 800E5278 2484B920 */  addiu      $a0, $a0, %lo(D_race_800CB920)
/* 9B63C 800E527C 00002821 */  addu       $a1, $zero, $zero
/* 9B640 800E5280 00A03021 */  addu       $a2, $a1, $zero
/* 9B644 800E5284 0C011ACF */  jal        func_80046B3C
/* 9B648 800E5288 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E528C:
/* 9B64C 800E528C 8E440064 */  lw         $a0, 0x64($s2)
/* 9B650 800E5290 0C00943C */  jal        func_800250F0
/* 9B654 800E5294 00042080 */   sll       $a0, $a0, 2
/* 9B658 800E5298 14400007 */  bnez       $v0, .Lrace_800E52B8
/* 9B65C 800E529C AE420058 */   sw        $v0, 0x58($s2)
/* 9B660 800E52A0 3C04800D */  lui        $a0, %hi(D_race_800CB920)
/* 9B664 800E52A4 2484B920 */  addiu      $a0, $a0, %lo(D_race_800CB920)
/* 9B668 800E52A8 00002821 */  addu       $a1, $zero, $zero
/* 9B66C 800E52AC 00A03021 */  addu       $a2, $a1, $zero
/* 9B670 800E52B0 0C011ACF */  jal        func_80046B3C
/* 9B674 800E52B4 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E52B8:
/* 9B678 800E52B8 00008821 */  addu       $s1, $zero, $zero
.Lrace_800E52BC:
/* 9B67C 800E52BC 8E420064 */  lw         $v0, 0x64($s2)
/* 9B680 800E52C0 0222102A */  slt        $v0, $s1, $v0
/* 9B684 800E52C4 1040003D */  beqz       $v0, .Lrace_800E53BC
/* 9B688 800E52C8 00000000 */   nop
/* 9B68C 800E52CC 8E43005C */  lw         $v1, 0x5C($s2)
/* 9B690 800E52D0 8C620000 */  lw         $v0, 0x0($v1)
/* 9B694 800E52D4 84440050 */  lh         $a0, 0x50($v0)
/* 9B698 800E52D8 8C420054 */  lw         $v0, 0x54($v0)
/* 9B69C 800E52DC 0040F809 */  jalr       $v0
/* 9B6A0 800E52E0 00642021 */   addu      $a0, $v1, $a0
/* 9B6A4 800E52E4 8E430054 */  lw         $v1, 0x54($s2)
/* 9B6A8 800E52E8 00118080 */  sll        $s0, $s1, 2
/* 9B6AC 800E52EC 02031821 */  addu       $v1, $s0, $v1
/* 9B6B0 800E52F0 AC620000 */  sw         $v0, 0x0($v1)
/* 9B6B4 800E52F4 8E430004 */  lw         $v1, 0x4($s2)
/* 9B6B8 800E52F8 8C620008 */  lw         $v0, 0x8($v1)
/* 9B6BC 800E52FC 02202821 */  addu       $a1, $s1, $zero
/* 9B6C0 800E5300 84440058 */  lh         $a0, 0x58($v0)
/* 9B6C4 800E5304 8C42005C */  lw         $v0, 0x5C($v0)
/* 9B6C8 800E5308 0040F809 */  jalr       $v0
/* 9B6CC 800E530C 00642021 */   addu      $a0, $v1, $a0
/* 9B6D0 800E5310 8E430054 */  lw         $v1, 0x54($s2)
/* 9B6D4 800E5314 02602821 */  addu       $a1, $s3, $zero
/* 9B6D8 800E5318 02031821 */  addu       $v1, $s0, $v1
/* 9B6DC 800E531C 8C630000 */  lw         $v1, 0x0($v1)
/* 9B6E0 800E5320 00403021 */  addu       $a2, $v0, $zero
/* 9B6E4 800E5324 8C62012C */  lw         $v0, 0x12C($v1)
/* 9B6E8 800E5328 4407A000 */  mfc1       $a3, $f20
/* 9B6EC 800E532C 84440228 */  lh         $a0, 0x228($v0)
/* 9B6F0 800E5330 8C42022C */  lw         $v0, 0x22C($v0)
/* 9B6F4 800E5334 0040F809 */  jalr       $v0
/* 9B6F8 800E5338 00642021 */   addu      $a0, $v1, $a0
/* 9B6FC 800E533C 8E420054 */  lw         $v0, 0x54($s2)
/* 9B700 800E5340 02021021 */  addu       $v0, $s0, $v0
/* 9B704 800E5344 8C430000 */  lw         $v1, 0x0($v0)
/* 9B708 800E5348 8C62012C */  lw         $v0, 0x12C($v1)
/* 9B70C 800E534C 27A50030 */  addiu      $a1, $sp, 0x30
/* 9B710 800E5350 84440040 */  lh         $a0, 0x40($v0)
/* 9B714 800E5354 8C420044 */  lw         $v0, 0x44($v0)
/* 9B718 800E5358 0040F809 */  jalr       $v0
/* 9B71C 800E535C 00642021 */   addu      $a0, $v1, $a0
/* 9B720 800E5360 8E43005C */  lw         $v1, 0x5C($s2)
/* 9B724 800E5364 8C620000 */  lw         $v0, 0x0($v1)
/* 9B728 800E5368 84440048 */  lh         $a0, 0x48($v0)
/* 9B72C 800E536C 8C42004C */  lw         $v0, 0x4C($v0)
/* 9B730 800E5370 0040F809 */  jalr       $v0
/* 9B734 800E5374 00642021 */   addu      $a0, $v1, $a0
/* 9B738 800E5378 8E430058 */  lw         $v1, 0x58($s2)
/* 9B73C 800E537C 26310001 */  addiu      $s1, $s1, 0x1
/* 9B740 800E5380 02031821 */  addu       $v1, $s0, $v1
/* 9B744 800E5384 AC620000 */  sw         $v0, 0x0($v1)
/* 9B748 800E5388 8E420054 */  lw         $v0, 0x54($s2)
/* 9B74C 800E538C 8E430058 */  lw         $v1, 0x58($s2)
/* 9B750 800E5390 02021021 */  addu       $v0, $s0, $v0
/* 9B754 800E5394 8C460000 */  lw         $a2, 0x0($v0)
/* 9B758 800E5398 02038021 */  addu       $s0, $s0, $v1
/* 9B75C 800E539C 8CC2012C */  lw         $v0, 0x12C($a2)
/* 9B760 800E53A0 8E050000 */  lw         $a1, 0x0($s0)
/* 9B764 800E53A4 84440048 */  lh         $a0, 0x48($v0)
/* 9B768 800E53A8 8C42004C */  lw         $v0, 0x4C($v0)
/* 9B76C 800E53AC 0040F809 */  jalr       $v0
/* 9B770 800E53B0 00C42021 */   addu      $a0, $a2, $a0
/* 9B774 800E53B4 080394AF */  j          .Lrace_800E52BC
/* 9B778 800E53B8 00000000 */   nop
.Lrace_800E53BC:
/* 9B77C 800E53BC 8E440064 */  lw         $a0, 0x64($s2)
/* 9B780 800E53C0 0C00943C */  jal        func_800250F0
/* 9B784 800E53C4 00042080 */   sll       $a0, $a0, 2
/* 9B788 800E53C8 14400007 */  bnez       $v0, .Lrace_800E53E8
/* 9B78C 800E53CC AE420060 */   sw        $v0, 0x60($s2)
/* 9B790 800E53D0 3C04800D */  lui        $a0, %hi(D_race_800CB920)
/* 9B794 800E53D4 2484B920 */  addiu      $a0, $a0, %lo(D_race_800CB920)
/* 9B798 800E53D8 00002821 */  addu       $a1, $zero, $zero
/* 9B79C 800E53DC 00A03021 */  addu       $a2, $a1, $zero
/* 9B7A0 800E53E0 0C011ACF */  jal        func_80046B3C
/* 9B7A4 800E53E4 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E53E8:
/* 9B7A8 800E53E8 00002821 */  addu       $a1, $zero, $zero
/* 9B7AC 800E53EC 8E460064 */  lw         $a2, 0x64($s2)
/* 9B7B0 800E53F0 8E440060 */  lw         $a0, 0x60($s2)
/* 9B7B4 800E53F4 0C000697 */  jal        func_80001A5C
/* 9B7B8 800E53F8 00063080 */   sll       $a2, $a2, 2
/* 9B7BC 800E53FC 8FBF006C */  lw         $ra, 0x6C($sp)
/* 9B7C0 800E5400 8FB60068 */  lw         $s6, 0x68($sp)
/* 9B7C4 800E5404 8FB50064 */  lw         $s5, 0x64($sp)
/* 9B7C8 800E5408 8FB40060 */  lw         $s4, 0x60($sp)
/* 9B7CC 800E540C 8FB3005C */  lw         $s3, 0x5C($sp)
/* 9B7D0 800E5410 8FB20058 */  lw         $s2, 0x58($sp)
/* 9B7D4 800E5414 8FB10054 */  lw         $s1, 0x54($sp)
/* 9B7D8 800E5418 8FB00050 */  lw         $s0, 0x50($sp)
/* 9B7DC 800E541C D7B40070 */  ldc1       $f20, 0x70($sp)
/* 9B7E0 800E5420 03E00008 */  jr         $ra
/* 9B7E4 800E5424 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_race_800E5428
/* 9B7E8 800E5428 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9B7EC 800E542C AFB20018 */  sw         $s2, 0x18($sp)
/* 9B7F0 800E5430 00809021 */  addu       $s2, $a0, $zero
/* 9B7F4 800E5434 AFBF001C */  sw         $ra, 0x1C($sp)
/* 9B7F8 800E5438 AFB10014 */  sw         $s1, 0x14($sp)
/* 9B7FC 800E543C AFB00010 */  sw         $s0, 0x10($sp)
/* 9B800 800E5440 8E420054 */  lw         $v0, 0x54($s2)
/* 9B804 800E5444 10400029 */  beqz       $v0, .Lrace_800E54EC
/* 9B808 800E5448 00000000 */   nop
/* 9B80C 800E544C 8E42005C */  lw         $v0, 0x5C($s2)
/* 9B810 800E5450 10400020 */  beqz       $v0, .Lrace_800E54D4
/* 9B814 800E5454 00000000 */   nop
/* 9B818 800E5458 8E420064 */  lw         $v0, 0x64($s2)
/* 9B81C 800E545C 1840001D */  blez       $v0, .Lrace_800E54D4
/* 9B820 800E5460 00008021 */   addu      $s0, $zero, $zero
.Lrace_800E5464:
/* 9B824 800E5464 8E420054 */  lw         $v0, 0x54($s2)
/* 9B828 800E5468 00108880 */  sll        $s1, $s0, 2
/* 9B82C 800E546C 02221021 */  addu       $v0, $s1, $v0
/* 9B830 800E5470 8C430000 */  lw         $v1, 0x0($v0)
/* 9B834 800E5474 10600012 */  beqz       $v1, .Lrace_800E54C0
/* 9B838 800E5478 00000000 */   nop
/* 9B83C 800E547C 8C62012C */  lw         $v0, 0x12C($v1)
/* 9B840 800E5480 84440038 */  lh         $a0, 0x38($v0)
/* 9B844 800E5484 8C42003C */  lw         $v0, 0x3C($v0)
/* 9B848 800E5488 0040F809 */  jalr       $v0
/* 9B84C 800E548C 00642021 */   addu      $a0, $v1, $a0
/* 9B850 800E5490 8E420054 */  lw         $v0, 0x54($s2)
/* 9B854 800E5494 8E46005C */  lw         $a2, 0x5C($s2)
/* 9B858 800E5498 02221021 */  addu       $v0, $s1, $v0
/* 9B85C 800E549C 8CC30000 */  lw         $v1, 0x0($a2)
/* 9B860 800E54A0 8C450000 */  lw         $a1, 0x0($v0)
/* 9B864 800E54A4 846400B8 */  lh         $a0, 0xB8($v1)
/* 9B868 800E54A8 8C6200BC */  lw         $v0, 0xBC($v1)
/* 9B86C 800E54AC 0040F809 */  jalr       $v0
/* 9B870 800E54B0 00C42021 */   addu      $a0, $a2, $a0
/* 9B874 800E54B4 8E420054 */  lw         $v0, 0x54($s2)
/* 9B878 800E54B8 02221021 */  addu       $v0, $s1, $v0
/* 9B87C 800E54BC AC400000 */  sw         $zero, 0x0($v0)
.Lrace_800E54C0:
/* 9B880 800E54C0 8E420064 */  lw         $v0, 0x64($s2)
/* 9B884 800E54C4 26100001 */  addiu      $s0, $s0, 0x1
/* 9B888 800E54C8 0202102A */  slt        $v0, $s0, $v0
/* 9B88C 800E54CC 1440FFE5 */  bnez       $v0, .Lrace_800E5464
/* 9B890 800E54D0 00000000 */   nop
.Lrace_800E54D4:
/* 9B894 800E54D4 8E440054 */  lw         $a0, 0x54($s2)
/* 9B898 800E54D8 50800004 */  beql       $a0, $zero, .Lrace_800E54EC
/* 9B89C 800E54DC AE400054 */   sw        $zero, 0x54($s2)
/* 9B8A0 800E54E0 0C009444 */  jal        func_80025110
/* 9B8A4 800E54E4 00000000 */   nop
/* 9B8A8 800E54E8 AE400054 */  sw         $zero, 0x54($s2)
.Lrace_800E54EC:
/* 9B8AC 800E54EC 8E420058 */  lw         $v0, 0x58($s2)
/* 9B8B0 800E54F0 10400021 */  beqz       $v0, .Lrace_800E5578
/* 9B8B4 800E54F4 00000000 */   nop
/* 9B8B8 800E54F8 8E42005C */  lw         $v0, 0x5C($s2)
/* 9B8BC 800E54FC 10400018 */  beqz       $v0, .Lrace_800E5560
/* 9B8C0 800E5500 00000000 */   nop
/* 9B8C4 800E5504 8E420064 */  lw         $v0, 0x64($s2)
/* 9B8C8 800E5508 18400015 */  blez       $v0, .Lrace_800E5560
/* 9B8CC 800E550C 00008021 */   addu      $s0, $zero, $zero
.Lrace_800E5510:
/* 9B8D0 800E5510 8E420058 */  lw         $v0, 0x58($s2)
/* 9B8D4 800E5514 00108880 */  sll        $s1, $s0, 2
/* 9B8D8 800E5518 02221021 */  addu       $v0, $s1, $v0
/* 9B8DC 800E551C 8C450000 */  lw         $a1, 0x0($v0)
/* 9B8E0 800E5520 10A0000A */  beqz       $a1, .Lrace_800E554C
/* 9B8E4 800E5524 00000000 */   nop
/* 9B8E8 800E5528 8E43005C */  lw         $v1, 0x5C($s2)
/* 9B8EC 800E552C 8C620000 */  lw         $v0, 0x0($v1)
/* 9B8F0 800E5530 844400B0 */  lh         $a0, 0xB0($v0)
/* 9B8F4 800E5534 8C4200B4 */  lw         $v0, 0xB4($v0)
/* 9B8F8 800E5538 0040F809 */  jalr       $v0
/* 9B8FC 800E553C 00642021 */   addu      $a0, $v1, $a0
/* 9B900 800E5540 8E420058 */  lw         $v0, 0x58($s2)
/* 9B904 800E5544 02221021 */  addu       $v0, $s1, $v0
/* 9B908 800E5548 AC400000 */  sw         $zero, 0x0($v0)
.Lrace_800E554C:
/* 9B90C 800E554C 8E420064 */  lw         $v0, 0x64($s2)
/* 9B910 800E5550 26100001 */  addiu      $s0, $s0, 0x1
/* 9B914 800E5554 0202102A */  slt        $v0, $s0, $v0
/* 9B918 800E5558 1440FFED */  bnez       $v0, .Lrace_800E5510
/* 9B91C 800E555C 00000000 */   nop
.Lrace_800E5560:
/* 9B920 800E5560 8E440058 */  lw         $a0, 0x58($s2)
/* 9B924 800E5564 50800004 */  beql       $a0, $zero, .Lrace_800E5578
/* 9B928 800E5568 AE400058 */   sw        $zero, 0x58($s2)
/* 9B92C 800E556C 0C009444 */  jal        func_80025110
/* 9B930 800E5570 00000000 */   nop
/* 9B934 800E5574 AE400058 */  sw         $zero, 0x58($s2)
.Lrace_800E5578:
/* 9B938 800E5578 8E440060 */  lw         $a0, 0x60($s2)
/* 9B93C 800E557C 50800005 */  beql       $a0, $zero, .Lrace_800E5594
/* 9B940 800E5580 2644003C */   addiu     $a0, $s2, 0x3C
/* 9B944 800E5584 0C009444 */  jal        func_80025110
/* 9B948 800E5588 00000000 */   nop
/* 9B94C 800E558C AE400060 */  sw         $zero, 0x60($s2)
/* 9B950 800E5590 2644003C */  addiu      $a0, $s2, 0x3C
.Lrace_800E5594:
/* 9B954 800E5594 AE40005C */  sw         $zero, 0x5C($s2)
/* 9B958 800E5598 0C0393B4 */  jal        func_race_800E4ED0
/* 9B95C 800E559C AE400064 */   sw        $zero, 0x64($s2)
/* 9B960 800E55A0 0C039A65 */  jal        func_race_800E6994
/* 9B964 800E55A4 02402021 */   addu      $a0, $s2, $zero
/* 9B968 800E55A8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 9B96C 800E55AC 8FB20018 */  lw         $s2, 0x18($sp)
/* 9B970 800E55B0 8FB10014 */  lw         $s1, 0x14($sp)
/* 9B974 800E55B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 9B978 800E55B8 03E00008 */  jr         $ra
/* 9B97C 800E55BC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E55C0
/* 9B980 800E55C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9B984 800E55C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 9B988 800E55C8 00808021 */  addu       $s0, $a0, $zero
/* 9B98C 800E55CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B990 800E55D0 8E020038 */  lw         $v0, 0x38($s0)
/* 9B994 800E55D4 10400006 */  beqz       $v0, .Lrace_800E55F0
/* 9B998 800E55D8 00002821 */   addu      $a1, $zero, $zero
/* 9B99C 800E55DC 8E060064 */  lw         $a2, 0x64($s0)
/* 9B9A0 800E55E0 8E040060 */  lw         $a0, 0x60($s0)
/* 9B9A4 800E55E4 0C000697 */  jal        func_80001A5C
/* 9B9A8 800E55E8 00063080 */   sll       $a2, $a2, 2
/* 9B9AC 800E55EC AE000038 */  sw         $zero, 0x38($s0)
.Lrace_800E55F0:
/* 9B9B0 800E55F0 8E020064 */  lw         $v0, 0x64($s0)
/* 9B9B4 800E55F4 1840000F */  blez       $v0, .Lrace_800E5634
/* 9B9B8 800E55F8 00002021 */   addu      $a0, $zero, $zero
/* 9B9BC 800E55FC 24050001 */  addiu      $a1, $zero, 0x1
.Lrace_800E5600:
/* 9B9C0 800E5600 8E020060 */  lw         $v0, 0x60($s0)
/* 9B9C4 800E5604 00041880 */  sll        $v1, $a0, 2
/* 9B9C8 800E5608 00621821 */  addu       $v1, $v1, $v0
/* 9B9CC 800E560C 8C620000 */  lw         $v0, 0x0($v1)
/* 9B9D0 800E5610 54400004 */  bnel       $v0, $zero, .Lrace_800E5624
/* 9B9D4 800E5614 24840001 */   addiu     $a0, $a0, 0x1
/* 9B9D8 800E5618 AC650000 */  sw         $a1, 0x0($v1)
/* 9B9DC 800E561C 0803958E */  j          .Lrace_800E5638
/* 9B9E0 800E5620 00801021 */   addu      $v0, $a0, $zero
.Lrace_800E5624:
/* 9B9E4 800E5624 8E020064 */  lw         $v0, 0x64($s0)
/* 9B9E8 800E5628 0082102A */  slt        $v0, $a0, $v0
/* 9B9EC 800E562C 1440FFF4 */  bnez       $v0, .Lrace_800E5600
/* 9B9F0 800E5630 00000000 */   nop
.Lrace_800E5634:
/* 9B9F4 800E5634 2402FFFF */  addiu      $v0, $zero, -0x1
.Lrace_800E5638:
/* 9B9F8 800E5638 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B9FC 800E563C 8FB00010 */  lw         $s0, 0x10($sp)
/* 9BA00 800E5640 03E00008 */  jr         $ra
/* 9BA04 800E5644 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E5648
/* 9BA08 800E5648 8C820060 */  lw         $v0, 0x60($a0)
/* 9BA0C 800E564C 00052880 */  sll        $a1, $a1, 2
/* 9BA10 800E5650 00A22821 */  addu       $a1, $a1, $v0
/* 9BA14 800E5654 03E00008 */  jr         $ra
/* 9BA18 800E5658 ACA00000 */   sw        $zero, 0x0($a1)

glabel func_race_800E565C
/* 9BA1C 800E565C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9BA20 800E5660 00002821 */  addu       $a1, $zero, $zero
/* 9BA24 800E5664 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9BA28 800E5668 8C860064 */  lw         $a2, 0x64($a0)
/* 9BA2C 800E566C 8C840060 */  lw         $a0, 0x60($a0)
/* 9BA30 800E5670 0C000697 */  jal        func_80001A5C
/* 9BA34 800E5674 00063080 */   sll       $a2, $a2, 2
/* 9BA38 800E5678 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9BA3C 800E567C 03E00008 */  jr         $ra
/* 9BA40 800E5680 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E5684
/* 9BA44 800E5684 00A60018 */  mult       $a1, $a2
/* 9BA48 800E5688 8C830010 */  lw         $v1, 0x10($a0)
/* 9BA4C 800E568C 00002812 */  mflo       $a1
/* 9BA50 800E5690 8C820014 */  lw         $v0, 0x14($a0)
/* 9BA54 800E5694 00000000 */  nop
/* 9BA58 800E5698 00620018 */  mult       $v1, $v0
/* 9BA5C 800E569C 44872000 */  mtc1       $a3, $f4
/* 9BA60 800E56A0 44851000 */  mtc1       $a1, $f2
/* 9BA64 800E56A4 468010A0 */  cvt.s.w    $f2, $f2
/* 9BA68 800E56A8 00001012 */  mflo       $v0
/* 9BA6C 800E56AC 44820000 */  mtc1       $v0, $f0
/* 9BA70 800E56B0 46800020 */  cvt.s.w    $f0, $f0
/* 9BA74 800E56B4 46020003 */  div.s      $f0, $f0, $f2
/* 9BA78 800E56B8 46040002 */  mul.s      $f0, $f0, $f4
/* 9BA7C 800E56BC 03E00008 */  jr         $ra
/* 9BA80 800E56C0 E4800068 */   swc1      $f0, 0x68($a0)
