.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __MusIntSamplesInit
/* 135F0 800129F0 00850018 */  mult       $a0, $a1
/* 135F4 800129F4 00001812 */  mflo       $v1
/* 135F8 800129F8 00661021 */  addu       $v0, $v1, $a2
/* 135FC 800129FC 2442FFFF */  addiu      $v0, $v0, -0x1
/* 13600 80012A00 0046001B */  divu       $zero, $v0, $a2
/* 13604 80012A04 14C00002 */  bnez       $a2, .L80012A10
/* 13608 80012A08 00000000 */   nop
/* 1360C 80012A0C 0007000D */  break      7
.L80012A10:
/* 13610 80012A10 00001012 */  mflo       $v0
/* 13614 80012A14 3C03B216 */  lui        $v1, (0xB21642C9 >> 16)
/* 13618 80012A18 346342C9 */  ori        $v1, $v1, (0xB21642C9 & 0xFFFF)
/* 1361C 80012A1C 00430019 */  multu      $v0, $v1
/* 13620 80012A20 3C0551EB */  lui        $a1, (0x51EB851F >> 16)
/* 13624 80012A24 00001810 */  mfhi       $v1
/* 13628 80012A28 000311C2 */  srl        $v0, $v1, 7
/* 1362C 80012A2C 24420001 */  addiu      $v0, $v0, 0x1
/* 13630 80012A30 00021840 */  sll        $v1, $v0, 1
/* 13634 80012A34 00621821 */  addu       $v1, $v1, $v0
/* 13638 80012A38 000318C0 */  sll        $v1, $v1, 3
/* 1363C 80012A3C 00621823 */  subu       $v1, $v1, $v0
/* 13640 80012A40 000318C0 */  sll        $v1, $v1, 3
/* 13644 80012A44 00670018 */  mult       $v1, $a3
/* 13648 80012A48 34A5851F */  ori        $a1, $a1, (0x51EB851F & 0xFFFF)
/* 1364C 80012A4C 3C048004 */  lui        $a0, %hi(D_80039170)
/* 13650 80012A50 AC839170 */  sw         $v1, %lo(D_80039170)($a0)
/* 13654 80012A54 3C048004 */  lui        $a0, %hi(D_80039174)
/* 13658 80012A58 00004812 */  mflo       $t1
/* 1365C 80012A5C 2462FF48 */  addiu      $v0, $v1, -0xB8
/* 13660 80012A60 AC829174 */  sw         $v0, %lo(D_80039174)($a0)
/* 13664 80012A64 01250019 */  multu      $t1, $a1
/* 13668 80012A68 3C048004 */  lui        $a0, %hi(D_80039178)
/* 1366C 80012A6C 246200B8 */  addiu      $v0, $v1, 0xB8
/* 13670 80012A70 AC829178 */  sw         $v0, %lo(D_80039178)($a0)
/* 13674 80012A74 3C048004 */  lui        $a0, %hi(D_8003917C)
/* 13678 80012A78 00004810 */  mfhi       $t1
/* 1367C 80012A7C 00091142 */  srl        $v0, $t1, 5
/* 13680 80012A80 AC82917C */  sw         $v0, %lo(D_8003917C)($a0)
/* 13684 80012A84 244200B8 */  addiu      $v0, $v0, 0xB8
/* 13688 80012A88 03E00008 */  jr         $ra
/* 1368C 80012A8C 00621021 */   addu      $v0, $v1, $v0

glabel func_80012A90
/* 13690 80012A90 3C028004 */  lui        $v0, %hi(D_8003917C)
/* 13694 80012A94 8C43917C */  lw         $v1, %lo(D_8003917C)($v0)
/* 13698 80012A98 246200B8 */  addiu      $v0, $v1, 0xB8
/* 1369C 80012A9C 0044102B */  sltu       $v0, $v0, $a0
/* 136A0 80012AA0 10400009 */  beqz       $v0, .L80012AC8
/* 136A4 80012AA4 0083102B */   sltu      $v0, $a0, $v1
/* 136A8 80012AA8 3C038003 */  lui        $v1, %hi(only_one_flag)
/* 136AC 80012AAC 8C6209D0 */  lw         $v0, %lo(only_one_flag)($v1)
/* 136B0 80012AB0 10400011 */  beqz       $v0, .L80012AF8
/* 136B4 80012AB4 3C028004 */   lui       $v0, %hi(D_80039170)
/* 136B8 80012AB8 3C028004 */  lui        $v0, %hi(D_80039174)
/* 136BC 80012ABC 8C429174 */  lw         $v0, %lo(D_80039174)($v0)
/* 136C0 80012AC0 03E00008 */  jr         $ra
/* 136C4 80012AC4 AC6009D0 */   sw        $zero, %lo(only_one_flag)($v1)
.L80012AC8:
/* 136C8 80012AC8 10400008 */  beqz       $v0, .L80012AEC
/* 136CC 80012ACC 3C038003 */   lui       $v1, %hi(only_one_flag)
/* 136D0 80012AD0 8C6209D0 */  lw         $v0, %lo(only_one_flag)($v1)
/* 136D4 80012AD4 10400008 */  beqz       $v0, .L80012AF8
/* 136D8 80012AD8 3C028004 */   lui       $v0, %hi(D_80039170)
/* 136DC 80012ADC 3C028004 */  lui        $v0, %hi(D_80039178)
/* 136E0 80012AE0 8C429178 */  lw         $v0, %lo(D_80039178)($v0)
/* 136E4 80012AE4 03E00008 */  jr         $ra
/* 136E8 80012AE8 AC6009D0 */   sw        $zero, %lo(only_one_flag)($v1)
.L80012AEC:
/* 136EC 80012AEC 24020001 */  addiu      $v0, $zero, 0x1
/* 136F0 80012AF0 AC6209D0 */  sw         $v0, %lo(only_one_flag)($v1)
/* 136F4 80012AF4 3C028004 */  lui        $v0, %hi(D_80039170)
.L80012AF8:
/* 136F8 80012AF8 8C429170 */  lw         $v0, %lo(D_80039170)($v0)
/* 136FC 80012AFC 03E00008 */  jr         $ra
/* 13700 80012B00 00000000 */   nop
