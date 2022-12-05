.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001C310
/* 1CF10 8001C310 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1CF14 8001C314 AFB10044 */  sw         $s1, 0x44($sp)
/* 1CF18 8001C318 00808821 */  addu       $s1, $a0, $zero
/* 1CF1C 8001C31C AFB60058 */  sw         $s6, 0x58($sp)
/* 1CF20 8001C320 3C168003 */  lui        $s6, %hi(D_80031010)
/* 1CF24 8001C324 26D61010 */  addiu      $s6, $s6, %lo(D_80031010)
/* 1CF28 8001C328 30A400FF */  andi       $a0, $a1, 0xFF
/* 1CF2C 8001C32C 24020058 */  addiu      $v0, $zero, 0x58
/* 1CF30 8001C330 AFBF005C */  sw         $ra, 0x5C($sp)
/* 1CF34 8001C334 AFB50054 */  sw         $s5, 0x54($sp)
/* 1CF38 8001C338 AFB40050 */  sw         $s4, 0x50($sp)
/* 1CF3C 8001C33C AFB3004C */  sw         $s3, 0x4C($sp)
/* 1CF40 8001C340 AFB20048 */  sw         $s2, 0x48($sp)
/* 1CF44 8001C344 14820003 */  bne        $a0, $v0, .L8001C354
/* 1CF48 8001C348 AFB00040 */   sw        $s0, 0x40($sp)
/* 1CF4C 8001C34C 3C168003 */  lui        $s6, %hi(D_80031024)
/* 1CF50 8001C350 26D61024 */  addiu      $s6, $s6, %lo(D_80031024)
.L8001C354:
/* 1CF54 8001C354 2402006F */  addiu      $v0, $zero, 0x6F
/* 1CF58 8001C358 10820009 */  beq        $a0, $v0, .L8001C380
/* 1CF5C 8001C35C 38830078 */   xori      $v1, $a0, 0x78
/* 1CF60 8001C360 0003182B */  sltu       $v1, $zero, $v1
/* 1CF64 8001C364 38820058 */  xori       $v0, $a0, 0x58
/* 1CF68 8001C368 0002102B */  sltu       $v0, $zero, $v0
/* 1CF6C 8001C36C 00621824 */  and        $v1, $v1, $v0
/* 1CF70 8001C370 10600004 */  beqz       $v1, .L8001C384
/* 1CF74 8001C374 24130010 */   addiu     $s3, $zero, 0x10
/* 1CF78 8001C378 080070E1 */  j          .L8001C384
/* 1CF7C 8001C37C 2413000A */   addiu     $s3, $zero, 0xA
.L8001C380:
/* 1CF80 8001C380 24130008 */  addiu      $s3, $zero, 0x8
.L8001C384:
/* 1CF84 8001C384 8E340000 */  lw         $s4, 0x0($s1)
/* 1CF88 8001C388 8E350004 */  lw         $s5, 0x4($s1)
/* 1CF8C 8001C38C 30A200FF */  andi       $v0, $a1, 0xFF
/* 1CF90 8001C390 38430064 */  xori       $v1, $v0, 0x64
/* 1CF94 8001C394 2C630001 */  sltiu      $v1, $v1, 0x1
/* 1CF98 8001C398 38420069 */  xori       $v0, $v0, 0x69
/* 1CF9C 8001C39C 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1CFA0 8001C3A0 00621825 */  or         $v1, $v1, $v0
/* 1CFA4 8001C3A4 10600008 */  beqz       $v1, .L8001C3C8
/* 1CFA8 8001C3A8 24120018 */   addiu     $s2, $zero, 0x18
/* 1CFAC 8001C3AC 8E220000 */  lw         $v0, 0x0($s1)
/* 1CFB0 8001C3B0 04410005 */  bgez       $v0, .L8001C3C8
/* 1CFB4 8001C3B4 00000000 */   nop
/* 1CFB8 8001C3B8 0015A823 */  negu       $s5, $s5
/* 1CFBC 8001C3BC 0014A023 */  negu       $s4, $s4
/* 1CFC0 8001C3C0 0015102B */  sltu       $v0, $zero, $s5
/* 1CFC4 8001C3C4 0282A023 */  subu       $s4, $s4, $v0
.L8001C3C8:
/* 1CFC8 8001C3C8 56800007 */  bnel       $s4, $zero, .L8001C3E8
/* 1CFCC 8001C3CC 2652FFFF */   addiu     $s2, $s2, -0x1
/* 1CFD0 8001C3D0 56A00005 */  bnel       $s5, $zero, .L8001C3E8
/* 1CFD4 8001C3D4 2652FFFF */   addiu     $s2, $s2, -0x1
/* 1CFD8 8001C3D8 8E220024 */  lw         $v0, 0x24($s1)
/* 1CFDC 8001C3DC 1040000D */  beqz       $v0, .L8001C414
/* 1CFE0 8001C3E0 02603821 */   addu      $a3, $s3, $zero
/* 1CFE4 8001C3E4 2652FFFF */  addiu      $s2, $s2, -0x1
.L8001C3E8:
/* 1CFE8 8001C3E8 02603821 */  addu       $a3, $s3, $zero
/* 1CFEC 8001C3EC 00003021 */  addu       $a2, $zero, $zero
/* 1CFF0 8001C3F0 02802021 */  addu       $a0, $s4, $zero
/* 1CFF4 8001C3F4 02A02821 */  addu       $a1, $s5, $zero
/* 1CFF8 8001C3F8 27B00018 */  addiu      $s0, $sp, 0x18
/* 1CFFC 8001C3FC 0C0092FC */  jal        func_80024BF0
/* 1D000 8001C400 02128021 */   addu      $s0, $s0, $s2
/* 1D004 8001C404 02C31021 */  addu       $v0, $s6, $v1
/* 1D008 8001C408 90420000 */  lbu        $v0, 0x0($v0)
/* 1D00C 8001C40C A2020000 */  sb         $v0, 0x0($s0)
/* 1D010 8001C410 02603821 */  addu       $a3, $s3, $zero
.L8001C414:
/* 1D014 8001C414 00003021 */  addu       $a2, $zero, $zero
/* 1D018 8001C418 02802021 */  addu       $a0, $s4, $zero
/* 1D01C 8001C41C 0C009198 */  jal        func_80024660
/* 1D020 8001C420 02A02821 */   addu      $a1, $s5, $zero
/* 1D024 8001C424 AE220000 */  sw         $v0, 0x0($s1)
/* 1D028 8001C428 AE230004 */  sw         $v1, 0x4($s1)
/* 1D02C 8001C42C 27A20018 */  addiu      $v0, $sp, 0x18
/* 1D030 8001C430 02428021 */  addu       $s0, $s2, $v0
.L8001C434:
/* 1D034 8001C434 8E220000 */  lw         $v0, 0x0($s1)
/* 1D038 8001C438 1C400006 */  bgtz       $v0, .L8001C454
/* 1D03C 8001C43C 00001821 */   addu      $v1, $zero, $zero
/* 1D040 8001C440 14400006 */  bnez       $v0, .L8001C45C
/* 1D044 8001C444 0012102A */   slt       $v0, $zero, $s2
/* 1D048 8001C448 8E220004 */  lw         $v0, 0x4($s1)
/* 1D04C 8001C44C 10400003 */  beqz       $v0, .L8001C45C
/* 1D050 8001C450 0012102A */   slt       $v0, $zero, $s2
.L8001C454:
/* 1D054 8001C454 24030001 */  addiu      $v1, $zero, 0x1
/* 1D058 8001C458 0012102A */  slt        $v0, $zero, $s2
.L8001C45C:
/* 1D05C 8001C45C 00621024 */  and        $v0, $v1, $v0
/* 1D060 8001C460 10400014 */  beqz       $v0, .L8001C4B4
/* 1D064 8001C464 02601821 */   addu      $v1, $s3, $zero
/* 1D068 8001C468 8E260000 */  lw         $a2, 0x0($s1)
/* 1D06C 8001C46C 8E270004 */  lw         $a3, 0x4($s1)
/* 1D070 8001C470 001317C3 */  sra        $v0, $s3, 31
/* 1D074 8001C474 AFA20010 */  sw         $v0, 0x10($sp)
/* 1D078 8001C478 AFA30014 */  sw         $v1, 0x14($sp)
/* 1D07C 8001C47C 0C007179 */  jal        func_8001C5E4
/* 1D080 8001C480 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D084 8001C484 8FA20030 */  lw         $v0, 0x30($sp)
/* 1D088 8001C488 8FA30034 */  lw         $v1, 0x34($sp)
/* 1D08C 8001C48C AE220000 */  sw         $v0, 0x0($s1)
/* 1D090 8001C490 AE230004 */  sw         $v1, 0x4($s1)
/* 1D094 8001C494 8FA20038 */  lw         $v0, 0x38($sp)
/* 1D098 8001C498 8FA3003C */  lw         $v1, 0x3C($sp)
/* 1D09C 8001C49C 02C31021 */  addu       $v0, $s6, $v1
/* 1D0A0 8001C4A0 90420000 */  lbu        $v0, 0x0($v0)
/* 1D0A4 8001C4A4 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1D0A8 8001C4A8 2652FFFF */  addiu      $s2, $s2, -0x1
/* 1D0AC 8001C4AC 0800710D */  j          .L8001C434
/* 1D0B0 8001C4B0 A2020000 */   sb        $v0, 0x0($s0)
.L8001C4B4:
/* 1D0B4 8001C4B4 8E240008 */  lw         $a0, 0x8($s1)
/* 1D0B8 8001C4B8 27A50018 */  addiu      $a1, $sp, 0x18
/* 1D0BC 8001C4BC 00B22821 */  addu       $a1, $a1, $s2
/* 1D0C0 8001C4C0 24060018 */  addiu      $a2, $zero, 0x18
/* 1D0C4 8001C4C4 00D23023 */  subu       $a2, $a2, $s2
/* 1D0C8 8001C4C8 0C006E07 */  jal        strncpy
/* 1D0CC 8001C4CC AE260014 */   sw        $a2, 0x14($s1)
/* 1D0D0 8001C4D0 8E240014 */  lw         $a0, 0x14($s1)
/* 1D0D4 8001C4D4 8E230024 */  lw         $v1, 0x24($s1)
/* 1D0D8 8001C4D8 0083102A */  slt        $v0, $a0, $v1
/* 1D0DC 8001C4DC 10400002 */  beqz       $v0, .L8001C4E8
/* 1D0E0 8001C4E0 00641023 */   subu      $v0, $v1, $a0
/* 1D0E4 8001C4E4 AE220010 */  sw         $v0, 0x10($s1)
.L8001C4E8:
/* 1D0E8 8001C4E8 8E220024 */  lw         $v0, 0x24($s1)
/* 1D0EC 8001C4EC 0441000F */  bgez       $v0, .L8001C52C
/* 1D0F0 8001C4F0 24030010 */   addiu     $v1, $zero, 0x10
/* 1D0F4 8001C4F4 8E220030 */  lw         $v0, 0x30($s1)
/* 1D0F8 8001C4F8 30420014 */  andi       $v0, $v0, 0x14
/* 1D0FC 8001C4FC 1443000B */  bne        $v0, $v1, .L8001C52C
/* 1D100 8001C500 00000000 */   nop
/* 1D104 8001C504 8E220028 */  lw         $v0, 0x28($s1)
/* 1D108 8001C508 8E23000C */  lw         $v1, 0xC($s1)
/* 1D10C 8001C50C 8E250010 */  lw         $a1, 0x10($s1)
/* 1D110 8001C510 8E240014 */  lw         $a0, 0x14($s1)
/* 1D114 8001C514 00431023 */  subu       $v0, $v0, $v1
/* 1D118 8001C518 00451023 */  subu       $v0, $v0, $a1
/* 1D11C 8001C51C 00449023 */  subu       $s2, $v0, $a0
/* 1D120 8001C520 1A400002 */  blez       $s2, .L8001C52C
/* 1D124 8001C524 00B21021 */   addu      $v0, $a1, $s2
/* 1D128 8001C528 AE220010 */  sw         $v0, 0x10($s1)
.L8001C52C:
/* 1D12C 8001C52C 8FBF005C */  lw         $ra, 0x5C($sp)
/* 1D130 8001C530 8FB60058 */  lw         $s6, 0x58($sp)
/* 1D134 8001C534 8FB50054 */  lw         $s5, 0x54($sp)
/* 1D138 8001C538 8FB40050 */  lw         $s4, 0x50($sp)
/* 1D13C 8001C53C 8FB3004C */  lw         $s3, 0x4C($sp)
/* 1D140 8001C540 8FB20048 */  lw         $s2, 0x48($sp)
/* 1D144 8001C544 8FB10044 */  lw         $s1, 0x44($sp)
/* 1D148 8001C548 8FB00040 */  lw         $s0, 0x40($sp)
/* 1D14C 8001C54C 03E00008 */  jr         $ra
/* 1D150 8001C550 27BD0060 */   addiu     $sp, $sp, 0x60
/* 1D154 8001C554 00000000 */  nop
/* 1D158 8001C558 00000000 */  nop
/* 1D15C 8001C55C 00000000 */  nop
