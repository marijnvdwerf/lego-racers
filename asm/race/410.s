.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800EF240
/* A5600 800EF240 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5604 800EF244 AFB00010 */  sw         $s0, 0x10($sp)
/* A5608 800EF248 AFBF0014 */  sw         $ra, 0x14($sp)
/* A560C 800EF24C 0C03A1A4 */  jal        func_race_800E8690
/* A5610 800EF250 00808021 */   addu      $s0, $a0, $zero
/* A5614 800EF254 3C02800D */  lui        $v0, %hi(D_race_800CC718)
/* A5618 800EF258 2442C718 */  addiu      $v0, $v0, %lo(D_race_800CC718)
/* A561C 800EF25C 26040010 */  addiu      $a0, $s0, 0x10
/* A5620 800EF260 0C0164A4 */  jal        func_80059290
/* A5624 800EF264 AE020000 */   sw        $v0, 0x0($s0)
/* A5628 800EF268 0C03BCB3 */  jal        func_race_800EF2CC
/* A562C 800EF26C 02002021 */   addu      $a0, $s0, $zero
/* A5630 800EF270 02001021 */  addu       $v0, $s0, $zero
/* A5634 800EF274 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5638 800EF278 8FB00010 */  lw         $s0, 0x10($sp)
/* A563C 800EF27C 03E00008 */  jr         $ra
/* A5640 800EF280 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EF284
/* A5644 800EF284 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A5648 800EF288 AFB00010 */  sw         $s0, 0x10($sp)
/* A564C 800EF28C 00808021 */  addu       $s0, $a0, $zero
/* A5650 800EF290 AFB10014 */  sw         $s1, 0x14($sp)
/* A5654 800EF294 00A08821 */  addu       $s1, $a1, $zero
/* A5658 800EF298 3C02800D */  lui        $v0, %hi(D_race_800CC718)
/* A565C 800EF29C 2442C718 */  addiu      $v0, $v0, %lo(D_race_800CC718)
/* A5660 800EF2A0 AFBF0018 */  sw         $ra, 0x18($sp)
/* A5664 800EF2A4 0C03BD10 */  jal        func_race_800EF440
/* A5668 800EF2A8 AE020000 */   sw        $v0, 0x0($s0)
/* A566C 800EF2AC 02002021 */  addu       $a0, $s0, $zero
/* A5670 800EF2B0 0C03A1AC */  jal        func_race_800E86B0
/* A5674 800EF2B4 02202821 */   addu      $a1, $s1, $zero
/* A5678 800EF2B8 8FBF0018 */  lw         $ra, 0x18($sp)
/* A567C 800EF2BC 8FB10014 */  lw         $s1, 0x14($sp)
/* A5680 800EF2C0 8FB00010 */  lw         $s0, 0x10($sp)
/* A5684 800EF2C4 03E00008 */  jr         $ra
/* A5688 800EF2C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EF2CC
/* A568C 800EF2CC AC800038 */  sw         $zero, 0x38($a0)
/* A5690 800EF2D0 AC800044 */  sw         $zero, 0x44($a0)
/* A5694 800EF2D4 AC800048 */  sw         $zero, 0x48($a0)
/* A5698 800EF2D8 AC80004C */  sw         $zero, 0x4C($a0)
/* A569C 800EF2DC AC800050 */  sw         $zero, 0x50($a0)
/* A56A0 800EF2E0 AC800040 */  sw         $zero, 0x40($a0)
/* A56A4 800EF2E4 AC800058 */  sw         $zero, 0x58($a0)
/* A56A8 800EF2E8 03E00008 */  jr         $ra
/* A56AC 800EF2EC AC80005C */   sw        $zero, 0x5C($a0)

glabel func_race_800EF2F0
/* A56B0 800EF2F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A56B4 800EF2F4 AFB1001C */  sw         $s1, 0x1C($sp)
/* A56B8 800EF2F8 00808821 */  addu       $s1, $a0, $zero
/* A56BC 800EF2FC AFB30024 */  sw         $s3, 0x24($sp)
/* A56C0 800EF300 00A09821 */  addu       $s3, $a1, $zero
/* A56C4 800EF304 AFBF0028 */  sw         $ra, 0x28($sp)
/* A56C8 800EF308 AFB20020 */  sw         $s2, 0x20($sp)
/* A56CC 800EF30C AFB00018 */  sw         $s0, 0x18($sp)
/* A56D0 800EF310 8E22000C */  lw         $v0, 0xC($s1)
/* A56D4 800EF314 10400003 */  beqz       $v0, .Lrace_800EF324
/* A56D8 800EF318 00C08021 */   addu      $s0, $a2, $zero
/* A56DC 800EF31C 0C03BD10 */  jal        func_race_800EF440
/* A56E0 800EF320 00000000 */   nop
.Lrace_800EF324:
/* A56E4 800EF324 A3A00010 */  sb         $zero, 0x10($sp)
/* A56E8 800EF328 02002021 */  addu       $a0, $s0, $zero
/* A56EC 800EF32C 0C0026F4 */  jal        func_80009BD0
/* A56F0 800EF330 24050005 */   addiu     $a1, $zero, 0x5
/* A56F4 800EF334 24120006 */  addiu      $s2, $zero, 0x6
.Lrace_800EF338:
/* A56F8 800EF338 8E020028 */  lw         $v0, 0x28($s0)
/* A56FC 800EF33C 844400A0 */  lh         $a0, 0xA0($v0)
/* A5700 800EF340 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A5704 800EF344 0040F809 */  jalr       $v0
/* A5708 800EF348 02042021 */   addu      $a0, $s0, $a0
/* A570C 800EF34C 00401821 */  addu       $v1, $v0, $zero
/* A5710 800EF350 10720023 */  beq        $v1, $s2, .Lrace_800EF3E0
/* A5714 800EF354 2402003B */   addiu     $v0, $zero, 0x3B
/* A5718 800EF358 10620016 */  beq        $v1, $v0, .Lrace_800EF3B4
/* A571C 800EF35C 24020042 */   addiu     $v0, $zero, 0x42
/* A5720 800EF360 14620018 */  bne        $v1, $v0, .Lrace_800EF3C4
/* A5724 800EF364 00002821 */   addu      $a1, $zero, $zero
/* A5728 800EF368 8E020028 */  lw         $v0, 0x28($s0)
/* A572C 800EF36C 844400A0 */  lh         $a0, 0xA0($v0)
/* A5730 800EF370 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A5734 800EF374 0040F809 */  jalr       $v0
/* A5738 800EF378 02042021 */   addu      $a0, $s0, $a0
/* A573C 800EF37C 27A40010 */  addiu      $a0, $sp, 0x10
/* A5740 800EF380 26050044 */  addiu      $a1, $s0, 0x44
/* A5744 800EF384 0C000708 */  jal        func_80001C20
/* A5748 800EF388 24060008 */   addiu     $a2, $zero, 0x8
/* A574C 800EF38C 0C0025F8 */  jal        func_800097E0
/* A5750 800EF390 02002021 */   addu      $a0, $s0, $zero
/* A5754 800EF394 02002021 */  addu       $a0, $s0, $zero
/* A5758 800EF398 0C0025F8 */  jal        func_800097E0
/* A575C 800EF39C E6200050 */   swc1      $f0, 0x50($s1)
/* A5760 800EF3A0 02002021 */  addu       $a0, $s0, $zero
/* A5764 800EF3A4 0C0025F8 */  jal        func_800097E0
/* A5768 800EF3A8 E6200048 */   swc1      $f0, 0x48($s1)
/* A576C 800EF3AC 0803BCCE */  j          .Lrace_800EF338
/* A5770 800EF3B0 E620004C */   swc1      $f0, 0x4C($s1)
.Lrace_800EF3B4:
/* A5774 800EF3B4 0C002680 */  jal        func_80009A00
/* A5778 800EF3B8 02002021 */   addu      $a0, $s0, $zero
/* A577C 800EF3BC 0803BCCE */  j          .Lrace_800EF338
/* A5780 800EF3C0 AE220008 */   sw        $v0, 0x8($s1)
.Lrace_800EF3C4:
/* A5784 800EF3C4 8E020028 */  lw         $v0, 0x28($s0)
/* A5788 800EF3C8 84440098 */  lh         $a0, 0x98($v0)
/* A578C 800EF3CC 8C42009C */  lw         $v0, 0x9C($v0)
/* A5790 800EF3D0 0040F809 */  jalr       $v0
/* A5794 800EF3D4 02042021 */   addu      $a0, $s0, $a0
/* A5798 800EF3D8 0803BCCE */  j          .Lrace_800EF338
/* A579C 800EF3DC 00000000 */   nop
.Lrace_800EF3E0:
/* A57A0 800EF3E0 8E620000 */  lw         $v0, 0x0($s3)
/* A57A4 800EF3E4 AE22003C */  sw         $v0, 0x3C($s1)
/* A57A8 800EF3E8 8E620010 */  lw         $v0, 0x10($s3)
/* A57AC 800EF3EC 27A50010 */  addiu      $a1, $sp, 0x10
/* A57B0 800EF3F0 8C4300BC */  lw         $v1, 0xBC($v0)
/* A57B4 800EF3F4 14600003 */  bnez       $v1, .Lrace_800EF404
/* A57B8 800EF3F8 244400BC */   addiu     $a0, $v0, 0xBC
/* A57BC 800EF3FC 0803BD03 */  j          .Lrace_800EF40C
/* A57C0 800EF400 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EF404:
/* A57C4 800EF404 0C016427 */  jal        func_8005909C
/* A57C8 800EF408 00000000 */   nop
.Lrace_800EF40C:
/* A57CC 800EF40C 3C054234 */  lui        $a1, (0x42340000 >> 16)
/* A57D0 800EF410 26240010 */  addiu      $a0, $s1, 0x10
/* A57D4 800EF414 0C0165E8 */  jal        func_800597A0
/* A57D8 800EF418 AE220038 */   sw        $v0, 0x38($s1)
/* A57DC 800EF41C 24020001 */  addiu      $v0, $zero, 0x1
/* A57E0 800EF420 AE22000C */  sw         $v0, 0xC($s1)
/* A57E4 800EF424 8FBF0028 */  lw         $ra, 0x28($sp)
/* A57E8 800EF428 8FB30024 */  lw         $s3, 0x24($sp)
/* A57EC 800EF42C 8FB20020 */  lw         $s2, 0x20($sp)
/* A57F0 800EF430 8FB1001C */  lw         $s1, 0x1C($sp)
/* A57F4 800EF434 8FB00018 */  lw         $s0, 0x18($sp)
/* A57F8 800EF438 03E00008 */  jr         $ra
/* A57FC 800EF43C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800EF440
/* A5800 800EF440 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5804 800EF444 AFB00010 */  sw         $s0, 0x10($sp)
/* A5808 800EF448 00808021 */  addu       $s0, $a0, $zero
/* A580C 800EF44C AFBF0014 */  sw         $ra, 0x14($sp)
/* A5810 800EF450 8E020000 */  lw         $v0, 0x0($s0)
/* A5814 800EF454 00002821 */  addu       $a1, $zero, $zero
/* A5818 800EF458 84440018 */  lh         $a0, 0x18($v0)
/* A581C 800EF45C 8C42001C */  lw         $v0, 0x1C($v0)
/* A5820 800EF460 0040F809 */  jalr       $v0
/* A5824 800EF464 02042021 */   addu      $a0, $s0, $a0
/* A5828 800EF468 0C03BCB3 */  jal        func_race_800EF2CC
/* A582C 800EF46C 02002021 */   addu      $a0, $s0, $zero
/* A5830 800EF470 0C03A1C0 */  jal        func_race_800E8700
/* A5834 800EF474 02002021 */   addu      $a0, $s0, $zero
/* A5838 800EF478 8FBF0014 */  lw         $ra, 0x14($sp)
/* A583C 800EF47C 8FB00010 */  lw         $s0, 0x10($sp)
/* A5840 800EF480 03E00008 */  jr         $ra
/* A5844 800EF484 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EF488
/* A5848 800EF488 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A584C 800EF48C AFB00028 */  sw         $s0, 0x28($sp)
/* A5850 800EF490 00808021 */  addu       $s0, $a0, $zero
/* A5854 800EF494 24020004 */  addiu      $v0, $zero, 0x4
/* A5858 800EF498 AFA20010 */  sw         $v0, 0x10($sp)
/* A585C 800EF49C 24020001 */  addiu      $v0, $zero, 0x1
/* A5860 800EF4A0 AFA20014 */  sw         $v0, 0x14($sp)
/* A5864 800EF4A4 26020010 */  addiu      $v0, $s0, 0x10
/* A5868 800EF4A8 02002821 */  addu       $a1, $s0, $zero
/* A586C 800EF4AC AFBF002C */  sw         $ra, 0x2C($sp)
/* A5870 800EF4B0 AFA00018 */  sw         $zero, 0x18($sp)
/* A5874 800EF4B4 AFA0001C */  sw         $zero, 0x1C($sp)
/* A5878 800EF4B8 AFA20020 */  sw         $v0, 0x20($sp)
/* A587C 800EF4BC 8E04003C */  lw         $a0, 0x3C($s0)
/* A5880 800EF4C0 0C04053E */  jal        func_race_801014F8
/* A5884 800EF4C4 27A60010 */   addiu     $a2, $sp, 0x10
/* A5888 800EF4C8 AE020040 */  sw         $v0, 0x40($s0)
/* A588C 800EF4CC 24020002 */  addiu      $v0, $zero, 0x2
/* A5890 800EF4D0 AE02000C */  sw         $v0, 0xC($s0)
/* A5894 800EF4D4 AE000058 */  sw         $zero, 0x58($s0)
/* A5898 800EF4D8 AE00005C */  sw         $zero, 0x5C($s0)
/* A589C 800EF4DC 8FBF002C */  lw         $ra, 0x2C($sp)
/* A58A0 800EF4E0 8FB00028 */  lw         $s0, 0x28($sp)
/* A58A4 800EF4E4 03E00008 */  jr         $ra
/* A58A8 800EF4E8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800EF4EC
/* A58AC 800EF4EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A58B0 800EF4F0 AFB00010 */  sw         $s0, 0x10($sp)
/* A58B4 800EF4F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A58B8 800EF4F8 0C03BE25 */  jal        func_race_800EF894
/* A58BC 800EF4FC 00808021 */   addu      $s0, $a0, $zero
/* A58C0 800EF500 8E020040 */  lw         $v0, 0x40($s0)
/* A58C4 800EF504 50400004 */  beql       $v0, $zero, .Lrace_800EF518
/* A58C8 800EF508 24020001 */   addiu     $v0, $zero, 0x1
/* A58CC 800EF50C AC400024 */  sw         $zero, 0x24($v0)
/* A58D0 800EF510 AE000040 */  sw         $zero, 0x40($s0)
/* A58D4 800EF514 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800EF518:
/* A58D8 800EF518 AE02000C */  sw         $v0, 0xC($s0)
/* A58DC 800EF51C AE000058 */  sw         $zero, 0x58($s0)
/* A58E0 800EF520 AE00005C */  sw         $zero, 0x5C($s0)
/* A58E4 800EF524 8FBF0014 */  lw         $ra, 0x14($sp)
/* A58E8 800EF528 8FB00010 */  lw         $s0, 0x10($sp)
/* A58EC 800EF52C 03E00008 */  jr         $ra
/* A58F0 800EF530 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EF534
/* A58F4 800EF534 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A58F8 800EF538 AFB00020 */  sw         $s0, 0x20($sp)
/* A58FC 800EF53C 00808021 */  addu       $s0, $a0, $zero
/* A5900 800EF540 AFB10024 */  sw         $s1, 0x24($sp)
/* A5904 800EF544 AFBF0028 */  sw         $ra, 0x28($sp)
/* A5908 800EF548 8E03000C */  lw         $v1, 0xC($s0)
/* A590C 800EF54C 24020001 */  addiu      $v0, $zero, 0x1
/* A5910 800EF550 1062002A */  beq        $v1, $v0, .Lrace_800EF5FC
/* A5914 800EF554 00A08821 */   addu      $s1, $a1, $zero
/* A5918 800EF558 0C03A1C4 */  jal        func_race_800E8710
/* A591C 800EF55C 00000000 */   nop
/* A5920 800EF560 02002021 */  addu       $a0, $s0, $zero
/* A5924 800EF564 0C03BDF0 */  jal        func_race_800EF7C0
/* A5928 800EF568 27A50010 */   addiu     $a1, $sp, 0x10
/* A592C 800EF56C 26040010 */  addiu      $a0, $s0, 0x10
/* A5930 800EF570 0C0165D9 */  jal        func_80059764
/* A5934 800EF574 27A50010 */   addiu     $a1, $sp, 0x10
/* A5938 800EF578 8E030054 */  lw         $v1, 0x54($s0)
/* A593C 800EF57C 1060000A */  beqz       $v1, .Lrace_800EF5A8
/* A5940 800EF580 0223102B */   sltu      $v0, $s1, $v1
/* A5944 800EF584 14400007 */  bnez       $v0, .Lrace_800EF5A4
/* A5948 800EF588 00711023 */   subu      $v0, $v1, $s1
/* A594C 800EF58C 02002021 */  addu       $a0, $s0, $zero
/* A5950 800EF590 0C03BE25 */  jal        func_race_800EF894
/* A5954 800EF594 AE000054 */   sw        $zero, 0x54($s0)
/* A5958 800EF598 AE000058 */  sw         $zero, 0x58($s0)
/* A595C 800EF59C 0803BD6A */  j          .Lrace_800EF5A8
/* A5960 800EF5A0 AE00005C */   sw        $zero, 0x5C($s0)
.Lrace_800EF5A4:
/* A5964 800EF5A4 AE020054 */  sw         $v0, 0x54($s0)
.Lrace_800EF5A8:
/* A5968 800EF5A8 8E03005C */  lw         $v1, 0x5C($s0)
/* A596C 800EF5AC 10600013 */  beqz       $v1, .Lrace_800EF5FC
/* A5970 800EF5B0 0223102B */   sltu      $v0, $s1, $v1
/* A5974 800EF5B4 14400010 */  bnez       $v0, .Lrace_800EF5F8
/* A5978 800EF5B8 00711023 */   subu      $v0, $v1, $s1
/* A597C 800EF5BC 8E030058 */  lw         $v1, 0x58($s0)
/* A5980 800EF5C0 24020001 */  addiu      $v0, $zero, 0x1
/* A5984 800EF5C4 10620006 */  beq        $v1, $v0, .Lrace_800EF5E0
/* A5988 800EF5C8 AE00005C */   sw        $zero, 0x5C($s0)
/* A598C 800EF5CC 24020002 */  addiu      $v0, $zero, 0x2
/* A5990 800EF5D0 5062000A */  beql       $v1, $v0, .Lrace_800EF5FC
/* A5994 800EF5D4 AE000058 */   sw        $zero, 0x58($s0)
/* A5998 800EF5D8 0803BD7F */  j          .Lrace_800EF5FC
/* A599C 800EF5DC 00000000 */   nop
.Lrace_800EF5E0:
/* A59A0 800EF5E0 0C03BE25 */  jal        func_race_800EF894
/* A59A4 800EF5E4 02002021 */   addu      $a0, $s0, $zero
/* A59A8 800EF5E8 24020002 */  addiu      $v0, $zero, 0x2
/* A59AC 800EF5EC AE020058 */  sw         $v0, 0x58($s0)
/* A59B0 800EF5F0 240203E8 */  addiu      $v0, $zero, 0x3E8
/* A59B4 800EF5F4 AE000054 */  sw         $zero, 0x54($s0)
.Lrace_800EF5F8:
/* A59B8 800EF5F8 AE02005C */  sw         $v0, 0x5C($s0)
.Lrace_800EF5FC:
/* A59BC 800EF5FC 8FBF0028 */  lw         $ra, 0x28($sp)
/* A59C0 800EF600 8FB10024 */  lw         $s1, 0x24($sp)
/* A59C4 800EF604 8FB00020 */  lw         $s0, 0x20($sp)
/* A59C8 800EF608 03E00008 */  jr         $ra
/* A59CC 800EF60C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800EF610
/* A59D0 800EF610 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* A59D4 800EF614 AFB00040 */  sw         $s0, 0x40($sp)
/* A59D8 800EF618 00808021 */  addu       $s0, $a0, $zero
/* A59DC 800EF61C AFBF0048 */  sw         $ra, 0x48($sp)
/* A59E0 800EF620 AFB10044 */  sw         $s1, 0x44($sp)
/* A59E4 800EF624 8E040038 */  lw         $a0, 0x38($s0)
/* A59E8 800EF628 8C82005C */  lw         $v0, 0x5C($a0)
/* A59EC 800EF62C 3C030002 */  lui        $v1, (0x20000 >> 16)
/* A59F0 800EF630 00431024 */  and        $v0, $v0, $v1
/* A59F4 800EF634 10400004 */  beqz       $v0, .Lrace_800EF648
/* A59F8 800EF638 00000000 */   nop
/* A59FC 800EF63C C48200D0 */  lwc1       $f2, 0xD0($a0)
/* A5A00 800EF640 0803BD93 */  j          .Lrace_800EF64C
/* A5A04 800EF644 00000000 */   nop
.Lrace_800EF648:
/* A5A08 800EF648 C48200B4 */  lwc1       $f2, 0xB4($a0)
.Lrace_800EF64C:
/* A5A0C 800EF64C 8E030058 */  lw         $v1, 0x58($s0)
/* A5A10 800EF650 24020002 */  addiu      $v0, $zero, 0x2
/* A5A14 800EF654 10620055 */  beq        $v1, $v0, .Lrace_800EF7AC
/* A5A18 800EF658 00000000 */   nop
/* A5A1C 800EF65C 8CA50014 */  lw         $a1, 0x14($a1)
/* A5A20 800EF660 C6000048 */  lwc1       $f0, 0x48($s0)
/* A5A24 800EF664 4600103E */  c.le.s     $f2, $f0
/* A5A28 800EF668 00000000 */  nop
/* A5A2C 800EF66C 45010006 */  bc1t       .Lrace_800EF688
/* A5A30 800EF670 24B103FC */   addiu     $s1, $a1, 0x3FC
/* A5A34 800EF674 C600004C */  lwc1       $f0, 0x4C($s0)
/* A5A38 800EF678 4602003E */  c.le.s     $f0, $f2
/* A5A3C 800EF67C 00000000 */  nop
/* A5A40 800EF680 4500004A */  bc1f       .Lrace_800EF7AC
/* A5A44 800EF684 00000000 */   nop
.Lrace_800EF688:
/* A5A48 800EF688 8CA20D04 */  lw         $v0, 0xD04($a1)
/* A5A4C 800EF68C 30420001 */  andi       $v0, $v0, 0x1
/* A5A50 800EF690 14400046 */  bnez       $v0, .Lrace_800EF7AC
/* A5A54 800EF694 00000000 */   nop
/* A5A58 800EF698 8E020044 */  lw         $v0, 0x44($s0)
/* A5A5C 800EF69C 50400005 */  beql       $v0, $zero, .Lrace_800EF6B4
/* A5A60 800EF6A0 24020001 */   addiu     $v0, $zero, 0x1
/* A5A64 800EF6A4 14450041 */  bne        $v0, $a1, .Lrace_800EF7AC
/* A5A68 800EF6A8 00000000 */   nop
/* A5A6C 800EF6AC 0803BDB1 */  j          .Lrace_800EF6C4
/* A5A70 800EF6B0 AE050044 */   sw        $a1, 0x44($s0)
.Lrace_800EF6B4:
/* A5A74 800EF6B4 AE020058 */  sw         $v0, 0x58($s0)
/* A5A78 800EF6B8 240203E8 */  addiu      $v0, $zero, 0x3E8
/* A5A7C 800EF6BC AE02005C */  sw         $v0, 0x5C($s0)
/* A5A80 800EF6C0 AE050044 */  sw         $a1, 0x44($s0)
.Lrace_800EF6C4:
/* A5A84 800EF6C4 8CA20D04 */  lw         $v0, 0xD04($a1)
/* A5A88 800EF6C8 3C032000 */  lui        $v1, (0x20000000 >> 16)
/* A5A8C 800EF6CC 00431025 */  or         $v0, $v0, $v1
/* A5A90 800EF6D0 ACA20D04 */  sw         $v0, 0xD04($a1)
/* A5A94 800EF6D4 8E020044 */  lw         $v0, 0x44($s0)
/* A5A98 800EF6D8 244403FC */  addiu      $a0, $v0, 0x3FC
/* A5A9C 800EF6DC 8C820730 */  lw         $v0, 0x730($a0)
/* A5AA0 800EF6E0 10400009 */  beqz       $v0, .Lrace_800EF708
/* A5AA4 800EF6E4 3C030004 */   lui       $v1, (0x40000 >> 16)
/* A5AA8 800EF6E8 8C8206AC */  lw         $v0, 0x6AC($a0)
/* A5AAC 800EF6EC 3C01800D */  lui        $at, %hi(D_race_800CC710)
/* A5AB0 800EF6F0 C420C710 */  lwc1       $f0, %lo(D_race_800CC710)($at)
/* A5AB4 800EF6F4 00431024 */  and        $v0, $v0, $v1
/* A5AB8 800EF6F8 1440002A */  bnez       $v0, .Lrace_800EF7A4
/* A5ABC 800EF6FC E48007D4 */   swc1      $f0, 0x7D4($a0)
/* A5AC0 800EF700 0803BDE9 */  j          .Lrace_800EF7A4
/* A5AC4 800EF704 E48007D8 */   swc1      $f0, 0x7D8($a0)
.Lrace_800EF708:
/* A5AC8 800EF708 02002021 */  addu       $a0, $s0, $zero
/* A5ACC 800EF70C 0C03BDF0 */  jal        func_race_800EF7C0
/* A5AD0 800EF710 27A50030 */   addiu     $a1, $sp, 0x30
/* A5AD4 800EF714 8E020044 */  lw         $v0, 0x44($s0)
/* A5AD8 800EF718 8C43005C */  lw         $v1, 0x5C($v0)
/* A5ADC 800EF71C 8C620024 */  lw         $v0, 0x24($v1)
/* A5AE0 800EF720 27A50020 */  addiu      $a1, $sp, 0x20
/* A5AE4 800EF724 84440010 */  lh         $a0, 0x10($v0)
/* A5AE8 800EF728 8C420014 */  lw         $v0, 0x14($v0)
/* A5AEC 800EF72C 0040F809 */  jalr       $v0
/* A5AF0 800EF730 00642021 */   addu      $a0, $v1, $a0
/* A5AF4 800EF734 27A40010 */  addiu      $a0, $sp, 0x10
/* A5AF8 800EF738 C7A40030 */  lwc1       $f4, 0x30($sp)
/* A5AFC 800EF73C C7A00020 */  lwc1       $f0, 0x20($sp)
/* A5B00 800EF740 C7A20024 */  lwc1       $f2, 0x24($sp)
/* A5B04 800EF744 46002101 */  sub.s      $f4, $f4, $f0
/* A5B08 800EF748 C7A00034 */  lwc1       $f0, 0x34($sp)
/* A5B0C 800EF74C 00802821 */  addu       $a1, $a0, $zero
/* A5B10 800EF750 46020001 */  sub.s      $f0, $f0, $f2
/* A5B14 800EF754 AFA00018 */  sw         $zero, 0x18($sp)
/* A5B18 800EF758 E7A40010 */  swc1       $f4, 0x10($sp)
/* A5B1C 800EF75C 0C000F26 */  jal        func_80003C98
/* A5B20 800EF760 E7A00014 */   swc1      $f0, 0x14($sp)
/* A5B24 800EF764 C6040050 */  lwc1       $f4, 0x50($s0)
/* A5B28 800EF768 C7A60010 */  lwc1       $f6, 0x10($sp)
/* A5B2C 800EF76C 46043182 */  mul.s      $f6, $f6, $f4
/* A5B30 800EF770 27A50010 */  addiu      $a1, $sp, 0x10
/* A5B34 800EF774 C4A20004 */  lwc1       $f2, 0x4($a1)
/* A5B38 800EF778 46041082 */  mul.s      $f2, $f2, $f4
/* A5B3C 800EF77C C4A00008 */  lwc1       $f0, 0x8($a1)
/* A5B40 800EF780 46040002 */  mul.s      $f0, $f0, $f4
/* A5B44 800EF784 E7A60010 */  swc1       $f6, 0x10($sp)
/* A5B48 800EF788 E4A20004 */  swc1       $f2, 0x4($a1)
/* A5B4C 800EF78C E4A00008 */  swc1       $f0, 0x8($a1)
/* A5B50 800EF790 8E2200CC */  lw         $v0, 0xCC($s1)
/* A5B54 800EF794 84440098 */  lh         $a0, 0x98($v0)
/* A5B58 800EF798 8C42009C */  lw         $v0, 0x9C($v0)
/* A5B5C 800EF79C 0040F809 */  jalr       $v0
/* A5B60 800EF7A0 02242021 */   addu      $a0, $s1, $a0
.Lrace_800EF7A4:
/* A5B64 800EF7A4 240201F4 */  addiu      $v0, $zero, 0x1F4
/* A5B68 800EF7A8 AE020054 */  sw         $v0, 0x54($s0)
.Lrace_800EF7AC:
/* A5B6C 800EF7AC 8FBF0048 */  lw         $ra, 0x48($sp)
/* A5B70 800EF7B0 8FB10044 */  lw         $s1, 0x44($sp)
/* A5B74 800EF7B4 8FB00040 */  lw         $s0, 0x40($sp)
/* A5B78 800EF7B8 03E00008 */  jr         $ra
/* A5B7C 800EF7BC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800EF7C0
/* A5B80 800EF7C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A5B84 800EF7C4 AFB00020 */  sw         $s0, 0x20($sp)
/* A5B88 800EF7C8 00808021 */  addu       $s0, $a0, $zero
/* A5B8C 800EF7CC AFB10024 */  sw         $s1, 0x24($sp)
/* A5B90 800EF7D0 00A08821 */  addu       $s1, $a1, $zero
/* A5B94 800EF7D4 AFBF0028 */  sw         $ra, 0x28($sp)
/* A5B98 800EF7D8 F7B40030 */  sdc1       $f20, 0x30($sp)
/* A5B9C 800EF7DC 8E020038 */  lw         $v0, 0x38($s0)
/* A5BA0 800EF7E0 8C460024 */  lw         $a2, 0x24($v0)
/* A5BA4 800EF7E4 8C430078 */  lw         $v1, 0x78($v0)
/* A5BA8 800EF7E8 C4540058 */  lwc1       $f20, 0x58($v0)
/* A5BAC 800EF7EC 84C400B8 */  lh         $a0, 0xB8($a2)
/* A5BB0 800EF7F0 C4600034 */  lwc1       $f0, 0x34($v1)
/* A5BB4 800EF7F4 00442021 */  addu       $a0, $v0, $a0
/* A5BB8 800EF7F8 8CC200BC */  lw         $v0, 0xBC($a2)
/* A5BBC 800EF7FC 4600A502 */  mul.s      $f20, $f20, $f0
/* A5BC0 800EF800 0040F809 */  jalr       $v0
/* A5BC4 800EF804 00002821 */   addu      $a1, $zero, $zero
/* A5BC8 800EF808 8C430008 */  lw         $v1, 0x8($v0)
/* A5BCC 800EF80C 00002821 */  addu       $a1, $zero, $zero
/* A5BD0 800EF810 84640038 */  lh         $a0, 0x38($v1)
/* A5BD4 800EF814 8C63003C */  lw         $v1, 0x3C($v1)
/* A5BD8 800EF818 0060F809 */  jalr       $v1
/* A5BDC 800EF81C 00442021 */   addu      $a0, $v0, $a0
/* A5BE0 800EF820 8C43000C */  lw         $v1, 0xC($v0)
/* A5BE4 800EF824 27A50010 */  addiu      $a1, $sp, 0x10
/* A5BE8 800EF828 84640088 */  lh         $a0, 0x88($v1)
/* A5BEC 800EF82C 8C63008C */  lw         $v1, 0x8C($v1)
/* A5BF0 800EF830 0060F809 */  jalr       $v1
/* A5BF4 800EF834 00442021 */   addu      $a0, $v0, $a0
/* A5BF8 800EF838 C7A40010 */  lwc1       $f4, 0x10($sp)
/* A5BFC 800EF83C 46142102 */  mul.s      $f4, $f4, $f20
/* A5C00 800EF840 27A50010 */  addiu      $a1, $sp, 0x10
/* A5C04 800EF844 C4A20004 */  lwc1       $f2, 0x4($a1)
/* A5C08 800EF848 46141082 */  mul.s      $f2, $f2, $f20
/* A5C0C 800EF84C C4A00008 */  lwc1       $f0, 0x8($a1)
/* A5C10 800EF850 46140002 */  mul.s      $f0, $f0, $f20
/* A5C14 800EF854 E7A40010 */  swc1       $f4, 0x10($sp)
/* A5C18 800EF858 E4A20004 */  swc1       $f2, 0x4($a1)
/* A5C1C 800EF85C E4A00008 */  swc1       $f0, 0x8($a1)
/* A5C20 800EF860 8E020038 */  lw         $v0, 0x38($s0)
/* A5C24 800EF864 8C430024 */  lw         $v1, 0x24($v0)
/* A5C28 800EF868 84640060 */  lh         $a0, 0x60($v1)
/* A5C2C 800EF86C 00442021 */  addu       $a0, $v0, $a0
/* A5C30 800EF870 8C620064 */  lw         $v0, 0x64($v1)
/* A5C34 800EF874 0040F809 */  jalr       $v0
/* A5C38 800EF878 02203021 */   addu      $a2, $s1, $zero
/* A5C3C 800EF87C 8FBF0028 */  lw         $ra, 0x28($sp)
/* A5C40 800EF880 8FB10024 */  lw         $s1, 0x24($sp)
/* A5C44 800EF884 8FB00020 */  lw         $s0, 0x20($sp)
/* A5C48 800EF888 D7B40030 */  ldc1       $f20, 0x30($sp)
/* A5C4C 800EF88C 03E00008 */  jr         $ra
/* A5C50 800EF890 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800EF894
/* A5C54 800EF894 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5C58 800EF898 AFB00010 */  sw         $s0, 0x10($sp)
/* A5C5C 800EF89C 00808021 */  addu       $s0, $a0, $zero
/* A5C60 800EF8A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5C64 800EF8A4 8E030044 */  lw         $v1, 0x44($s0)
/* A5C68 800EF8A8 10600019 */  beqz       $v1, .Lrace_800EF910
/* A5C6C 800EF8AC 246303FC */   addiu     $v1, $v1, 0x3FC
/* A5C70 800EF8B0 8C6200CC */  lw         $v0, 0xCC($v1)
/* A5C74 800EF8B4 844400A0 */  lh         $a0, 0xA0($v0)
/* A5C78 800EF8B8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A5C7C 800EF8BC 0040F809 */  jalr       $v0
/* A5C80 800EF8C0 00642021 */   addu      $a0, $v1, $a0
/* A5C84 800EF8C4 8E040044 */  lw         $a0, 0x44($s0)
/* A5C88 800EF8C8 3C03DFFF */  lui        $v1, (0xDFFFFFFF >> 16)
/* A5C8C 800EF8CC 8C820D04 */  lw         $v0, 0xD04($a0)
/* A5C90 800EF8D0 3463FFFF */  ori        $v1, $v1, (0xDFFFFFFF & 0xFFFF)
/* A5C94 800EF8D4 00431024 */  and        $v0, $v0, $v1
/* A5C98 800EF8D8 AC820D04 */  sw         $v0, 0xD04($a0)
/* A5C9C 800EF8DC 8E020044 */  lw         $v0, 0x44($s0)
/* A5CA0 800EF8E0 244403FC */  addiu      $a0, $v0, 0x3FC
/* A5CA4 800EF8E4 8C820730 */  lw         $v0, 0x730($a0)
/* A5CA8 800EF8E8 10400008 */  beqz       $v0, .Lrace_800EF90C
/* A5CAC 800EF8EC 3C030004 */   lui       $v1, (0x40000 >> 16)
/* A5CB0 800EF8F0 8C8206AC */  lw         $v0, 0x6AC($a0)
/* A5CB4 800EF8F4 3C01800D */  lui        $at, %hi(D_race_800CC714)
/* A5CB8 800EF8F8 C420C714 */  lwc1       $f0, %lo(D_race_800CC714)($at)
/* A5CBC 800EF8FC 00431024 */  and        $v0, $v0, $v1
/* A5CC0 800EF900 14400002 */  bnez       $v0, .Lrace_800EF90C
/* A5CC4 800EF904 E48007D4 */   swc1      $f0, 0x7D4($a0)
/* A5CC8 800EF908 E48007D8 */  swc1       $f0, 0x7D8($a0)
.Lrace_800EF90C:
/* A5CCC 800EF90C AE000044 */  sw         $zero, 0x44($s0)
.Lrace_800EF910:
/* A5CD0 800EF910 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5CD4 800EF914 8FB00010 */  lw         $s0, 0x10($sp)
/* A5CD8 800EF918 03E00008 */  jr         $ra
/* A5CDC 800EF91C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EF920
/* A5CE0 800EF920 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5CE4 800EF924 AFB00010 */  sw         $s0, 0x10($sp)
/* A5CE8 800EF928 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5CEC 800EF92C 0C03A1A4 */  jal        func_race_800E8690
/* A5CF0 800EF930 00808021 */   addu      $s0, $a0, $zero
/* A5CF4 800EF934 3C02800D */  lui        $v0, %hi(D_race_800CC7A8)
/* A5CF8 800EF938 2442C7A8 */  addiu      $v0, $v0, %lo(D_race_800CC7A8)
/* A5CFC 800EF93C 26040010 */  addiu      $a0, $s0, 0x10
/* A5D00 800EF940 0C0164A4 */  jal        func_80059290
/* A5D04 800EF944 AE020000 */   sw        $v0, 0x0($s0)
/* A5D08 800EF948 0C03BE6B */  jal        func_race_800EF9AC
/* A5D0C 800EF94C 02002021 */   addu      $a0, $s0, $zero
/* A5D10 800EF950 02001021 */  addu       $v0, $s0, $zero
/* A5D14 800EF954 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5D18 800EF958 8FB00010 */  lw         $s0, 0x10($sp)
/* A5D1C 800EF95C 03E00008 */  jr         $ra
/* A5D20 800EF960 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EF964
/* A5D24 800EF964 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A5D28 800EF968 AFB00010 */  sw         $s0, 0x10($sp)
/* A5D2C 800EF96C 00808021 */  addu       $s0, $a0, $zero
/* A5D30 800EF970 AFB10014 */  sw         $s1, 0x14($sp)
/* A5D34 800EF974 00A08821 */  addu       $s1, $a1, $zero
/* A5D38 800EF978 3C02800D */  lui        $v0, %hi(D_race_800CC7A8)
/* A5D3C 800EF97C 2442C7A8 */  addiu      $v0, $v0, %lo(D_race_800CC7A8)
/* A5D40 800EF980 AFBF0018 */  sw         $ra, 0x18($sp)
/* A5D44 800EF984 0C03BECE */  jal        func_race_800EFB38
/* A5D48 800EF988 AE020000 */   sw        $v0, 0x0($s0)
/* A5D4C 800EF98C 02002021 */  addu       $a0, $s0, $zero
/* A5D50 800EF990 0C03A1AC */  jal        func_race_800E86B0
/* A5D54 800EF994 02202821 */   addu      $a1, $s1, $zero
/* A5D58 800EF998 8FBF0018 */  lw         $ra, 0x18($sp)
/* A5D5C 800EF99C 8FB10014 */  lw         $s1, 0x14($sp)
/* A5D60 800EF9A0 8FB00010 */  lw         $s0, 0x10($sp)
/* A5D64 800EF9A4 03E00008 */  jr         $ra
/* A5D68 800EF9A8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EF9AC
/* A5D6C 800EF9AC 00002821 */  addu       $a1, $zero, $zero
/* A5D70 800EF9B0 00801821 */  addu       $v1, $a0, $zero
.Lrace_800EF9B4:
/* A5D74 800EF9B4 AC60004C */  sw         $zero, 0x4C($v1)
/* A5D78 800EF9B8 24A50001 */  addiu      $a1, $a1, 0x1
/* A5D7C 800EF9BC 2CA20003 */  sltiu      $v0, $a1, 0x3
/* A5D80 800EF9C0 1440FFFC */  bnez       $v0, .Lrace_800EF9B4
/* A5D84 800EF9C4 24630004 */   addiu     $v1, $v1, 0x4
/* A5D88 800EF9C8 24020001 */  addiu      $v0, $zero, 0x1
/* A5D8C 800EF9CC AC800040 */  sw         $zero, 0x40($a0)
/* A5D90 800EF9D0 AC800044 */  sw         $zero, 0x44($a0)
/* A5D94 800EF9D4 AC800048 */  sw         $zero, 0x48($a0)
/* A5D98 800EF9D8 AC800038 */  sw         $zero, 0x38($a0)
/* A5D9C 800EF9DC AC80003C */  sw         $zero, 0x3C($a0)
/* A5DA0 800EF9E0 03E00008 */  jr         $ra
/* A5DA4 800EF9E4 AC820058 */   sw        $v0, 0x58($a0)

glabel func_race_800EF9E8
/* A5DA8 800EF9E8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A5DAC 800EF9EC AFB10024 */  sw         $s1, 0x24($sp)
/* A5DB0 800EF9F0 00808821 */  addu       $s1, $a0, $zero
/* A5DB4 800EF9F4 AFBF0028 */  sw         $ra, 0x28($sp)
/* A5DB8 800EF9F8 AFB00020 */  sw         $s0, 0x20($sp)
/* A5DBC 800EF9FC 8E22000C */  lw         $v0, 0xC($s1)
/* A5DC0 800EFA00 10400003 */  beqz       $v0, .Lrace_800EFA10
/* A5DC4 800EFA04 00A08021 */   addu      $s0, $a1, $zero
/* A5DC8 800EFA08 0C03BECE */  jal        func_race_800EFB38
/* A5DCC 800EFA0C 00000000 */   nop
.Lrace_800EFA10:
/* A5DD0 800EFA10 24020001 */  addiu      $v0, $zero, 0x1
/* A5DD4 800EFA14 AE220008 */  sw         $v0, 0x8($s1)
/* A5DD8 800EFA18 8E02000C */  lw         $v0, 0xC($s0)
/* A5DDC 800EFA1C AE220004 */  sw         $v0, 0x4($s1)
/* A5DE0 800EFA20 8E020000 */  lw         $v0, 0x0($s0)
/* A5DE4 800EFA24 AE220038 */  sw         $v0, 0x38($s1)
/* A5DE8 800EFA28 8E04002C */  lw         $a0, 0x2C($s0)
/* A5DEC 800EFA2C 3C02800D */  lui        $v0, %hi(D_race_800CC780)
/* A5DF0 800EFA30 8C830000 */  lw         $v1, 0x0($a0)
/* A5DF4 800EFA34 14600003 */  bnez       $v1, .Lrace_800EFA44
/* A5DF8 800EFA38 2445C780 */   addiu     $a1, $v0, %lo(D_race_800CC780)
/* A5DFC 800EFA3C 0803BE93 */  j          .Lrace_800EFA4C
/* A5E00 800EFA40 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EFA44:
/* A5E04 800EFA44 0C016427 */  jal        func_8005909C
/* A5E08 800EFA48 00000000 */   nop
.Lrace_800EFA4C:
/* A5E0C 800EFA4C AE220048 */  sw         $v0, 0x48($s1)
/* A5E10 800EFA50 3C02800D */  lui        $v0, %hi(D_race_800CC788)
/* A5E14 800EFA54 8E030010 */  lw         $v1, 0x10($s0)
/* A5E18 800EFA58 2445C788 */  addiu      $a1, $v0, %lo(D_race_800CC788)
/* A5E1C 800EFA5C 8C6200B0 */  lw         $v0, 0xB0($v1)
/* A5E20 800EFA60 14400003 */  bnez       $v0, .Lrace_800EFA70
/* A5E24 800EFA64 246400B0 */   addiu     $a0, $v1, 0xB0
/* A5E28 800EFA68 0803BE9E */  j          .Lrace_800EFA78
/* A5E2C 800EFA6C 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EFA70:
/* A5E30 800EFA70 0C016427 */  jal        func_8005909C
/* A5E34 800EFA74 00000000 */   nop
.Lrace_800EFA78:
/* A5E38 800EFA78 AE220040 */  sw         $v0, 0x40($s1)
/* A5E3C 800EFA7C 3C02800D */  lui        $v0, %hi(D_race_800CC790)
/* A5E40 800EFA80 8E030010 */  lw         $v1, 0x10($s0)
/* A5E44 800EFA84 2445C790 */  addiu      $a1, $v0, %lo(D_race_800CC790)
/* A5E48 800EFA88 8C6200B0 */  lw         $v0, 0xB0($v1)
/* A5E4C 800EFA8C 14400003 */  bnez       $v0, .Lrace_800EFA9C
/* A5E50 800EFA90 246400B0 */   addiu     $a0, $v1, 0xB0
/* A5E54 800EFA94 0803BEA9 */  j          .Lrace_800EFAA4
/* A5E58 800EFA98 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EFA9C:
/* A5E5C 800EFA9C 0C016427 */  jal        func_8005909C
/* A5E60 800EFAA0 00000000 */   nop
.Lrace_800EFAA4:
/* A5E64 800EFAA4 AE220044 */  sw         $v0, 0x44($s1)
/* A5E68 800EFAA8 00002021 */  addu       $a0, $zero, $zero
/* A5E6C 800EFAAC 02202821 */  addu       $a1, $s1, $zero
.Lrace_800EFAB0:
/* A5E70 800EFAB0 2C820003 */  sltiu      $v0, $a0, 0x3
/* A5E74 800EFAB4 10400008 */  beqz       $v0, .Lrace_800EFAD8
/* A5E78 800EFAB8 00041880 */   sll       $v1, $a0, 2
/* A5E7C 800EFABC 8E220040 */  lw         $v0, 0x40($s1)
/* A5E80 800EFAC0 00431021 */  addu       $v0, $v0, $v1
/* A5E84 800EFAC4 C4400084 */  lwc1       $f0, 0x84($v0)
/* A5E88 800EFAC8 24840001 */  addiu      $a0, $a0, 0x1
/* A5E8C 800EFACC E4A0004C */  swc1       $f0, 0x4C($a1)
/* A5E90 800EFAD0 0803BEAC */  j          .Lrace_800EFAB0
/* A5E94 800EFAD4 24A50004 */   addiu     $a1, $a1, 0x4
.Lrace_800EFAD8:
/* A5E98 800EFAD8 0C03BF60 */  jal        func_race_800EFD80
/* A5E9C 800EFADC 02202021 */   addu      $a0, $s1, $zero
/* A5EA0 800EFAE0 8E230040 */  lw         $v1, 0x40($s1)
/* A5EA4 800EFAE4 8C620024 */  lw         $v0, 0x24($v1)
/* A5EA8 800EFAE8 27A50010 */  addiu      $a1, $sp, 0x10
/* A5EAC 800EFAEC 84440010 */  lh         $a0, 0x10($v0)
/* A5EB0 800EFAF0 8C420014 */  lw         $v0, 0x14($v0)
/* A5EB4 800EFAF4 0040F809 */  jalr       $v0
/* A5EB8 800EFAF8 00642021 */   addu      $a0, $v1, $a0
/* A5EBC 800EFAFC 26300010 */  addiu      $s0, $s1, 0x10
/* A5EC0 800EFB00 02002021 */  addu       $a0, $s0, $zero
/* A5EC4 800EFB04 0C0165D9 */  jal        func_80059764
/* A5EC8 800EFB08 27A50010 */   addiu     $a1, $sp, 0x10
/* A5ECC 800EFB0C 3C0543AF */  lui        $a1, (0x43AF0000 >> 16)
/* A5ED0 800EFB10 0C0165E8 */  jal        func_800597A0
/* A5ED4 800EFB14 02002021 */   addu      $a0, $s0, $zero
/* A5ED8 800EFB18 24020001 */  addiu      $v0, $zero, 0x1
/* A5EDC 800EFB1C AE220058 */  sw         $v0, 0x58($s1)
/* A5EE0 800EFB20 AE22000C */  sw         $v0, 0xC($s1)
/* A5EE4 800EFB24 8FBF0028 */  lw         $ra, 0x28($sp)
/* A5EE8 800EFB28 8FB10024 */  lw         $s1, 0x24($sp)
/* A5EEC 800EFB2C 8FB00020 */  lw         $s0, 0x20($sp)
/* A5EF0 800EFB30 03E00008 */  jr         $ra
/* A5EF4 800EFB34 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800EFB38
/* A5EF8 800EFB38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5EFC 800EFB3C AFB00010 */  sw         $s0, 0x10($sp)
/* A5F00 800EFB40 00808021 */  addu       $s0, $a0, $zero
/* A5F04 800EFB44 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5F08 800EFB48 8E020000 */  lw         $v0, 0x0($s0)
/* A5F0C 800EFB4C 00002821 */  addu       $a1, $zero, $zero
/* A5F10 800EFB50 84440018 */  lh         $a0, 0x18($v0)
/* A5F14 800EFB54 8C42001C */  lw         $v0, 0x1C($v0)
/* A5F18 800EFB58 0040F809 */  jalr       $v0
/* A5F1C 800EFB5C 02042021 */   addu      $a0, $s0, $a0
/* A5F20 800EFB60 0C03BE6B */  jal        func_race_800EF9AC
/* A5F24 800EFB64 02002021 */   addu      $a0, $s0, $zero
/* A5F28 800EFB68 0C03A1C0 */  jal        func_race_800E8700
/* A5F2C 800EFB6C 02002021 */   addu      $a0, $s0, $zero
/* A5F30 800EFB70 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5F34 800EFB74 8FB00010 */  lw         $s0, 0x10($sp)
/* A5F38 800EFB78 03E00008 */  jr         $ra
/* A5F3C 800EFB7C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EFB80
/* A5F40 800EFB80 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A5F44 800EFB84 AFB00028 */  sw         $s0, 0x28($sp)
/* A5F48 800EFB88 00808021 */  addu       $s0, $a0, $zero
/* A5F4C 800EFB8C 24020004 */  addiu      $v0, $zero, 0x4
/* A5F50 800EFB90 AFA20010 */  sw         $v0, 0x10($sp)
/* A5F54 800EFB94 24020001 */  addiu      $v0, $zero, 0x1
/* A5F58 800EFB98 AFA20014 */  sw         $v0, 0x14($sp)
/* A5F5C 800EFB9C 26020010 */  addiu      $v0, $s0, 0x10
/* A5F60 800EFBA0 02002821 */  addu       $a1, $s0, $zero
/* A5F64 800EFBA4 AFBF002C */  sw         $ra, 0x2C($sp)
/* A5F68 800EFBA8 AFA00018 */  sw         $zero, 0x18($sp)
/* A5F6C 800EFBAC AFA0001C */  sw         $zero, 0x1C($sp)
/* A5F70 800EFBB0 AFA20020 */  sw         $v0, 0x20($sp)
/* A5F74 800EFBB4 8E040038 */  lw         $a0, 0x38($s0)
/* A5F78 800EFBB8 0C04053E */  jal        func_race_801014F8
/* A5F7C 800EFBBC 27A60010 */   addiu     $a2, $sp, 0x10
/* A5F80 800EFBC0 AE02003C */  sw         $v0, 0x3C($s0)
/* A5F84 800EFBC4 24020002 */  addiu      $v0, $zero, 0x2
/* A5F88 800EFBC8 AE02000C */  sw         $v0, 0xC($s0)
/* A5F8C 800EFBCC 8FBF002C */  lw         $ra, 0x2C($sp)
/* A5F90 800EFBD0 8FB00028 */  lw         $s0, 0x28($sp)
/* A5F94 800EFBD4 03E00008 */  jr         $ra
/* A5F98 800EFBD8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800EFBDC
/* A5F9C 800EFBDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5FA0 800EFBE0 AFB00010 */  sw         $s0, 0x10($sp)
/* A5FA4 800EFBE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5FA8 800EFBE8 0C03BF60 */  jal        func_race_800EFD80
/* A5FAC 800EFBEC 00808021 */   addu      $s0, $a0, $zero
/* A5FB0 800EFBF0 8E02003C */  lw         $v0, 0x3C($s0)
/* A5FB4 800EFBF4 50400004 */  beql       $v0, $zero, .Lrace_800EFC08
/* A5FB8 800EFBF8 24020001 */   addiu     $v0, $zero, 0x1
/* A5FBC 800EFBFC AC400024 */  sw         $zero, 0x24($v0)
/* A5FC0 800EFC00 AE00003C */  sw         $zero, 0x3C($s0)
/* A5FC4 800EFC04 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800EFC08:
/* A5FC8 800EFC08 AE02000C */  sw         $v0, 0xC($s0)
/* A5FCC 800EFC0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5FD0 800EFC10 8FB00010 */  lw         $s0, 0x10($sp)
/* A5FD4 800EFC14 03E00008 */  jr         $ra
/* A5FD8 800EFC18 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EFC1C
/* A5FDC 800EFC1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A5FE0 800EFC20 AFB00010 */  sw         $s0, 0x10($sp)
/* A5FE4 800EFC24 00808021 */  addu       $s0, $a0, $zero
/* A5FE8 800EFC28 AFBF0018 */  sw         $ra, 0x18($sp)
/* A5FEC 800EFC2C AFB10014 */  sw         $s1, 0x14($sp)
/* A5FF0 800EFC30 8E02000C */  lw         $v0, 0xC($s0)
/* A5FF4 800EFC34 24110001 */  addiu      $s1, $zero, 0x1
/* A5FF8 800EFC38 10510020 */  beq        $v0, $s1, .Lrace_800EFCBC
/* A5FFC 800EFC3C 00000000 */   nop
/* A6000 800EFC40 0C03A1C4 */  jal        func_race_800E8710
/* A6004 800EFC44 00000000 */   nop
/* A6008 800EFC48 8E020058 */  lw         $v0, 0x58($s0)
/* A600C 800EFC4C 1440000D */  bnez       $v0, .Lrace_800EFC84
/* A6010 800EFC50 00000000 */   nop
/* A6014 800EFC54 8E020044 */  lw         $v0, 0x44($s0)
/* A6018 800EFC58 3C01800D */  lui        $at, %hi(D_race_800CC798)
/* A601C 800EFC5C C420C798 */  lwc1       $f0, %lo(D_race_800CC798)($at)
/* A6020 800EFC60 C4420084 */  lwc1       $f2, 0x84($v0)
/* A6024 800EFC64 46001032 */  c.eq.s     $f2, $f0
/* A6028 800EFC68 00000000 */  nop
/* A602C 800EFC6C 45000012 */  bc1f       .Lrace_800EFCB8
/* A6030 800EFC70 24020001 */   addiu     $v0, $zero, 0x1
/* A6034 800EFC74 0C03BF34 */  jal        func_race_800EFCD0
/* A6038 800EFC78 02002021 */   addu      $a0, $s0, $zero
/* A603C 800EFC7C 0803BF2E */  j          .Lrace_800EFCB8
/* A6040 800EFC80 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_800EFC84:
/* A6044 800EFC84 1451000C */  bne        $v0, $s1, .Lrace_800EFCB8
/* A6048 800EFC88 24020001 */   addiu     $v0, $zero, 0x1
/* A604C 800EFC8C 8E020040 */  lw         $v0, 0x40($s0)
/* A6050 800EFC90 3C01800D */  lui        $at, %hi(D_race_800CC79C)
/* A6054 800EFC94 C420C79C */  lwc1       $f0, %lo(D_race_800CC79C)($at)
/* A6058 800EFC98 C4420084 */  lwc1       $f2, 0x84($v0)
/* A605C 800EFC9C 46001032 */  c.eq.s     $f2, $f0
/* A6060 800EFCA0 00000000 */  nop
/* A6064 800EFCA4 45000004 */  bc1f       .Lrace_800EFCB8
/* A6068 800EFCA8 24020001 */   addiu     $v0, $zero, 0x1
/* A606C 800EFCAC 0C03BF60 */  jal        func_race_800EFD80
/* A6070 800EFCB0 02002021 */   addu      $a0, $s0, $zero
/* A6074 800EFCB4 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800EFCB8:
/* A6078 800EFCB8 AE020058 */  sw         $v0, 0x58($s0)
.Lrace_800EFCBC:
/* A607C 800EFCBC 8FBF0018 */  lw         $ra, 0x18($sp)
/* A6080 800EFCC0 8FB10014 */  lw         $s1, 0x14($sp)
/* A6084 800EFCC4 8FB00010 */  lw         $s0, 0x10($sp)
/* A6088 800EFCC8 03E00008 */  jr         $ra
/* A608C 800EFCCC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EFCD0
/* A6090 800EFCD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6094 800EFCD4 AFB00010 */  sw         $s0, 0x10($sp)
/* A6098 800EFCD8 00808021 */  addu       $s0, $a0, $zero
/* A609C 800EFCDC 00002821 */  addu       $a1, $zero, $zero
/* A60A0 800EFCE0 00A01821 */  addu       $v1, $a1, $zero
/* A60A4 800EFCE4 3C01800D */  lui        $at, %hi(D_race_800CC7A0)
/* A60A8 800EFCE8 C422C7A0 */  lwc1       $f2, %lo(D_race_800CC7A0)($at)
/* A60AC 800EFCEC AFBF0014 */  sw         $ra, 0x14($sp)
.Lrace_800EFCF0:
/* A60B0 800EFCF0 2CA20003 */  sltiu      $v0, $a1, 0x3
/* A60B4 800EFCF4 1040000E */  beqz       $v0, .Lrace_800EFD30
/* A60B8 800EFCF8 00000000 */   nop
/* A60BC 800EFCFC 8E020044 */  lw         $v0, 0x44($s0)
/* A60C0 800EFD00 10400003 */  beqz       $v0, .Lrace_800EFD10
/* A60C4 800EFD04 00431021 */   addu      $v0, $v0, $v1
/* A60C8 800EFD08 C480004C */  lwc1       $f0, 0x4C($a0)
/* A60CC 800EFD0C E4400084 */  swc1       $f0, 0x84($v0)
.Lrace_800EFD10:
/* A60D0 800EFD10 8E020040 */  lw         $v0, 0x40($s0)
/* A60D4 800EFD14 10400002 */  beqz       $v0, .Lrace_800EFD20
/* A60D8 800EFD18 00431021 */   addu      $v0, $v0, $v1
/* A60DC 800EFD1C E4420084 */  swc1       $f2, 0x84($v0)
.Lrace_800EFD20:
/* A60E0 800EFD20 24630004 */  addiu      $v1, $v1, 0x4
/* A60E4 800EFD24 24840004 */  addiu      $a0, $a0, 0x4
/* A60E8 800EFD28 0803BF3C */  j          .Lrace_800EFCF0
/* A60EC 800EFD2C 24A50001 */   addiu     $a1, $a1, 0x1
.Lrace_800EFD30:
/* A60F0 800EFD30 8E040004 */  lw         $a0, 0x4($s0)
/* A60F4 800EFD34 10800003 */  beqz       $a0, .Lrace_800EFD44
/* A60F8 800EFD38 24050023 */   addiu     $a1, $zero, 0x23
/* A60FC 800EFD3C 0C036B0B */  jal        func_race_800DAC2C
/* A6100 800EFD40 00003021 */   addu      $a2, $zero, $zero
.Lrace_800EFD44:
/* A6104 800EFD44 8E040048 */  lw         $a0, 0x48($s0)
/* A6108 800EFD48 10800009 */  beqz       $a0, .Lrace_800EFD70
/* A610C 800EFD4C 3C030001 */   lui       $v1, (0x10000 >> 16)
/* A6110 800EFD50 8C820008 */  lw         $v0, 0x8($a0)
/* A6114 800EFD54 00431025 */  or         $v0, $v0, $v1
/* A6118 800EFD58 AC820008 */  sw         $v0, 0x8($a0)
/* A611C 800EFD5C 8E040048 */  lw         $a0, 0x48($s0)
/* A6120 800EFD60 8C820008 */  lw         $v0, 0x8($a0)
/* A6124 800EFD64 3C030002 */  lui        $v1, (0x20000 >> 16)
/* A6128 800EFD68 00431025 */  or         $v0, $v0, $v1
/* A612C 800EFD6C AC820008 */  sw         $v0, 0x8($a0)
.Lrace_800EFD70:
/* A6130 800EFD70 8FBF0014 */  lw         $ra, 0x14($sp)
/* A6134 800EFD74 8FB00010 */  lw         $s0, 0x10($sp)
/* A6138 800EFD78 03E00008 */  jr         $ra
/* A613C 800EFD7C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EFD80
/* A6140 800EFD80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6144 800EFD84 AFB00010 */  sw         $s0, 0x10($sp)
/* A6148 800EFD88 00808021 */  addu       $s0, $a0, $zero
/* A614C 800EFD8C 00002821 */  addu       $a1, $zero, $zero
/* A6150 800EFD90 3C01800D */  lui        $at, %hi(D_race_800CC7A4)
/* A6154 800EFD94 C422C7A4 */  lwc1       $f2, %lo(D_race_800CC7A4)($at)
/* A6158 800EFD98 00A01821 */  addu       $v1, $a1, $zero
/* A615C 800EFD9C AFBF0014 */  sw         $ra, 0x14($sp)
.Lrace_800EFDA0:
/* A6160 800EFDA0 2CA20003 */  sltiu      $v0, $a1, 0x3
/* A6164 800EFDA4 1040000E */  beqz       $v0, .Lrace_800EFDE0
/* A6168 800EFDA8 00000000 */   nop
/* A616C 800EFDAC 8E020044 */  lw         $v0, 0x44($s0)
/* A6170 800EFDB0 10400002 */  beqz       $v0, .Lrace_800EFDBC
/* A6174 800EFDB4 00431021 */   addu      $v0, $v0, $v1
/* A6178 800EFDB8 E4420084 */  swc1       $f2, 0x84($v0)
.Lrace_800EFDBC:
/* A617C 800EFDBC 8E020040 */  lw         $v0, 0x40($s0)
/* A6180 800EFDC0 10400003 */  beqz       $v0, .Lrace_800EFDD0
/* A6184 800EFDC4 00431021 */   addu      $v0, $v0, $v1
/* A6188 800EFDC8 C480004C */  lwc1       $f0, 0x4C($a0)
/* A618C 800EFDCC E4400084 */  swc1       $f0, 0x84($v0)
.Lrace_800EFDD0:
/* A6190 800EFDD0 24840004 */  addiu      $a0, $a0, 0x4
/* A6194 800EFDD4 24630004 */  addiu      $v1, $v1, 0x4
/* A6198 800EFDD8 0803BF68 */  j          .Lrace_800EFDA0
/* A619C 800EFDDC 24A50001 */   addiu     $a1, $a1, 0x1
.Lrace_800EFDE0:
/* A61A0 800EFDE0 8E040004 */  lw         $a0, 0x4($s0)
/* A61A4 800EFDE4 10800003 */  beqz       $a0, .Lrace_800EFDF4
/* A61A8 800EFDE8 24050023 */   addiu     $a1, $zero, 0x23
/* A61AC 800EFDEC 0C036BE1 */  jal        func_race_800DAF84
/* A61B0 800EFDF0 00003021 */   addu      $a2, $zero, $zero
.Lrace_800EFDF4:
/* A61B4 800EFDF4 8E040048 */  lw         $a0, 0x48($s0)
/* A61B8 800EFDF8 1080000B */  beqz       $a0, .Lrace_800EFE28
/* A61BC 800EFDFC 3C03FFFE */   lui       $v1, (0xFFFEFFFF >> 16)
/* A61C0 800EFE00 8C820008 */  lw         $v0, 0x8($a0)
/* A61C4 800EFE04 3463FFFF */  ori        $v1, $v1, (0xFFFEFFFF & 0xFFFF)
/* A61C8 800EFE08 00431024 */  and        $v0, $v0, $v1
/* A61CC 800EFE0C AC820008 */  sw         $v0, 0x8($a0)
/* A61D0 800EFE10 8E040048 */  lw         $a0, 0x48($s0)
/* A61D4 800EFE14 3C03FFFD */  lui        $v1, (0xFFFDFFFF >> 16)
/* A61D8 800EFE18 8C820008 */  lw         $v0, 0x8($a0)
/* A61DC 800EFE1C 3463FFFF */  ori        $v1, $v1, (0xFFFDFFFF & 0xFFFF)
/* A61E0 800EFE20 00431024 */  and        $v0, $v0, $v1
/* A61E4 800EFE24 AC820008 */  sw         $v0, 0x8($a0)
.Lrace_800EFE28:
/* A61E8 800EFE28 8FBF0014 */  lw         $ra, 0x14($sp)
/* A61EC 800EFE2C 8FB00010 */  lw         $s0, 0x10($sp)
/* A61F0 800EFE30 03E00008 */  jr         $ra
/* A61F4 800EFE34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EFE38
/* A61F8 800EFE38 8CA20014 */  lw         $v0, 0x14($a1)
/* A61FC 800EFE3C 8C420D04 */  lw         $v0, 0xD04($v0)
/* A6200 800EFE40 30420001 */  andi       $v0, $v0, 0x1
/* A6204 800EFE44 54400001 */  bnel       $v0, $zero, .Lrace_800EFE4C
/* A6208 800EFE48 AC800058 */   sw        $zero, 0x58($a0)
.Lrace_800EFE4C:
/* A620C 800EFE4C 03E00008 */  jr         $ra
/* A6210 800EFE50 00000000 */   nop
