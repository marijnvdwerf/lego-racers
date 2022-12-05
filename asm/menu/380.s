.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800F53F0
/* 1134E0 800F53F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1134E4 800F53F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1134E8 800F53F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1134EC 800F53FC 0C03E578 */  jal        func_menu_800F95E0
/* 1134F0 800F5400 00808021 */   addu      $s0, $a0, $zero
/* 1134F4 800F5404 26040658 */  addiu      $a0, $s0, 0x658
/* 1134F8 800F5408 3C02800D */  lui        $v0, %hi(D_menu_800CC2C8)
/* 1134FC 800F540C 2442C2C8 */  addiu      $v0, $v0, %lo(D_menu_800CC2C8)
/* 113500 800F5410 0C03B56C */  jal        func_menu_800ED5B0
/* 113504 800F5414 AE020000 */   sw        $v0, 0x0($s0)
/* 113508 800F5418 0C01955C */  jal        func_80065570
/* 11350C 800F541C 260406A8 */   addiu     $a0, $s0, 0x6A8
/* 113510 800F5420 02001021 */  addu       $v0, $s0, $zero
/* 113514 800F5424 2403FFFF */  addiu      $v1, $zero, -0x1
/* 113518 800F5428 AC40079C */  sw         $zero, 0x79C($v0)
/* 11351C 800F542C AC4307A0 */  sw         $v1, 0x7A0($v0)
/* 113520 800F5430 AC4007AC */  sw         $zero, 0x7AC($v0)
/* 113524 800F5434 AC4007A8 */  sw         $zero, 0x7A8($v0)
/* 113528 800F5438 AC4007A4 */  sw         $zero, 0x7A4($v0)
/* 11352C 800F543C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 113530 800F5440 8FB00010 */  lw         $s0, 0x10($sp)
/* 113534 800F5444 03E00008 */  jr         $ra
/* 113538 800F5448 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F544C
/* 11353C 800F544C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 113540 800F5450 AFB00010 */  sw         $s0, 0x10($sp)
/* 113544 800F5454 00808021 */  addu       $s0, $a0, $zero
/* 113548 800F5458 AFB10014 */  sw         $s1, 0x14($sp)
/* 11354C 800F545C 00A08821 */  addu       $s1, $a1, $zero
/* 113550 800F5460 3C02800D */  lui        $v0, %hi(D_menu_800CC2C8)
/* 113554 800F5464 2442C2C8 */  addiu      $v0, $v0, %lo(D_menu_800CC2C8)
/* 113558 800F5468 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11355C 800F546C 0C03D57F */  jal        func_menu_800F55FC
/* 113560 800F5470 AE020000 */   sw        $v0, 0x0($s0)
/* 113564 800F5474 26040658 */  addiu      $a0, $s0, 0x658
/* 113568 800F5478 0C03B579 */  jal        func_menu_800ED5E4
/* 11356C 800F547C 24050002 */   addiu     $a1, $zero, 0x2
/* 113570 800F5480 02002021 */  addu       $a0, $s0, $zero
/* 113574 800F5484 0C03E58C */  jal        func_menu_800F9630
/* 113578 800F5488 02202821 */   addu      $a1, $s1, $zero
/* 11357C 800F548C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 113580 800F5490 8FB10014 */  lw         $s1, 0x14($sp)
/* 113584 800F5494 8FB00010 */  lw         $s0, 0x10($sp)
/* 113588 800F5498 03E00008 */  jr         $ra
/* 11358C 800F549C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F54A0
/* 113590 800F54A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 113594 800F54A4 AFB10014 */  sw         $s1, 0x14($sp)
/* 113598 800F54A8 00808821 */  addu       $s1, $a0, $zero
/* 11359C 800F54AC AFB20018 */  sw         $s2, 0x18($sp)
/* 1135A0 800F54B0 00A09021 */  addu       $s2, $a1, $zero
/* 1135A4 800F54B4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1135A8 800F54B8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1135AC 800F54BC AFB00010 */  sw         $s0, 0x10($sp)
/* 1135B0 800F54C0 8E220004 */  lw         $v0, 0x4($s1)
/* 1135B4 800F54C4 10400006 */  beqz       $v0, .Lmenu_800F54E0
/* 1135B8 800F54C8 00C09821 */   addu      $s3, $a2, $zero
/* 1135BC 800F54CC 8E220000 */  lw         $v0, 0x0($s1)
/* 1135C0 800F54D0 844400F0 */  lh         $a0, 0xF0($v0)
/* 1135C4 800F54D4 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 1135C8 800F54D8 0040F809 */  jalr       $v0
/* 1135CC 800F54DC 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800F54E0:
/* 1135D0 800F54E0 AE2007AC */  sw         $zero, 0x7AC($s1)
/* 1135D4 800F54E4 AE2007A8 */  sw         $zero, 0x7A8($s1)
/* 1135D8 800F54E8 AE2007A4 */  sw         $zero, 0x7A4($s1)
/* 1135DC 800F54EC 96630028 */  lhu        $v1, 0x28($s3)
/* 1135E0 800F54F0 2402001B */  addiu      $v0, $zero, 0x1B
/* 1135E4 800F54F4 14620009 */  bne        $v1, $v0, .Lmenu_800F551C
/* 1135E8 800F54F8 02202021 */   addu      $a0, $s1, $zero
/* 1135EC 800F54FC 26502CF8 */  addiu      $s0, $s2, 0x2CF8
/* 1135F0 800F5500 0C0362CC */  jal        func_menu_800D8B30
/* 1135F4 800F5504 02002021 */   addu      $a0, $s0, $zero
/* 1135F8 800F5508 10400004 */  beqz       $v0, .Lmenu_800F551C
/* 1135FC 800F550C 02202021 */   addu      $a0, $s1, $zero
/* 113600 800F5510 0C03620E */  jal        func_menu_800D8838
/* 113604 800F5514 02002021 */   addu      $a0, $s0, $zero
/* 113608 800F5518 02202021 */  addu       $a0, $s1, $zero
.Lmenu_800F551C:
/* 11360C 800F551C 02402821 */  addu       $a1, $s2, $zero
/* 113610 800F5520 0C03E5A4 */  jal        func_menu_800F9690
/* 113614 800F5524 02603021 */   addu      $a2, $s3, $zero
/* 113618 800F5528 1040002D */  beqz       $v0, .Lmenu_800F55E0
/* 11361C 800F552C 00001021 */   addu      $v0, $zero, $zero
/* 113620 800F5530 9622028C */  lhu        $v0, 0x28C($s1)
/* 113624 800F5534 2443FFEA */  addiu      $v1, $v0, -0x16
/* 113628 800F5538 2C620010 */  sltiu      $v0, $v1, 0x10
/* 11362C 800F553C 10400017 */  beqz       $v0, Lmenu_800F559C
/* 113630 800F5540 24060001 */   addiu     $a2, $zero, 0x1
/* 113634 800F5544 3C02800D */  lui        $v0, %hi(jtbl_menu_800CC210)
/* 113638 800F5548 2442C210 */  addiu      $v0, $v0, %lo(jtbl_menu_800CC210)
/* 11363C 800F554C 00031880 */  sll        $v1, $v1, 2
/* 113640 800F5550 00621821 */  addu       $v1, $v1, $v0
/* 113644 800F5554 8C620000 */  lw         $v0, 0x0($v1)
/* 113648 800F5558 00400008 */  jr         $v0
/* 11364C 800F555C 00000000 */   nop
glabel Lmenu_800F5560
/* 113650 800F5560 0803D567 */  j          Lmenu_800F559C
/* 113654 800F5564 24060002 */   addiu     $a2, $zero, 0x2
glabel Lmenu_800F5568
/* 113658 800F5568 0803D567 */  j          Lmenu_800F559C
/* 11365C 800F556C 24060003 */   addiu     $a2, $zero, 0x3
glabel Lmenu_800F5570
/* 113660 800F5570 0803D567 */  j          Lmenu_800F559C
/* 113664 800F5574 24060004 */   addiu     $a2, $zero, 0x4
glabel Lmenu_800F5578
/* 113668 800F5578 0803D567 */  j          Lmenu_800F559C
/* 11366C 800F557C 2406000B */   addiu     $a2, $zero, 0xB
glabel Lmenu_800F5580
/* 113670 800F5580 0803D567 */  j          Lmenu_800F559C
/* 113674 800F5584 2406000D */   addiu     $a2, $zero, 0xD
glabel Lmenu_800F5588
/* 113678 800F5588 0803D567 */  j          Lmenu_800F559C
/* 11367C 800F558C 2406000E */   addiu     $a2, $zero, 0xE
glabel Lmenu_800F5590
/* 113680 800F5590 0803D567 */  j          Lmenu_800F559C
/* 113684 800F5594 2406000F */   addiu     $a2, $zero, 0xF
glabel Lmenu_800F5598
/* 113688 800F5598 2406000C */  addiu      $a2, $zero, 0xC
glabel Lmenu_800F559C
/* 11368C 800F559C 02202021 */  addu       $a0, $s1, $zero
/* 113690 800F55A0 02402821 */  addu       $a1, $s2, $zero
/* 113694 800F55A4 0C04051A */  jal        func_menu_80101468
/* 113698 800F55A8 00003821 */   addu      $a3, $zero, $zero
/* 11369C 800F55AC 3C02800D */  lui        $v0, %hi(D_menu_800CC200)
/* 1136A0 800F55B0 2445C200 */  addiu      $a1, $v0, %lo(D_menu_800CC200)
/* 1136A4 800F55B4 10A00007 */  beqz       $a1, .Lmenu_800F55D4
/* 1136A8 800F55B8 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 1136AC 800F55BC 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 1136B0 800F55C0 02002021 */  addu       $a0, $s0, $zero
/* 1136B4 800F55C4 0C000708 */  jal        func_80001C20
/* 1136B8 800F55C8 24060100 */   addiu     $a2, $zero, 0x100
/* 1136BC 800F55CC 0803D577 */  j          .Lmenu_800F55DC
/* 1136C0 800F55D0 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F55D4:
/* 1136C4 800F55D4 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 1136C8 800F55D8 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F55DC:
/* 1136CC 800F55DC 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F55E0:
/* 1136D0 800F55E0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1136D4 800F55E4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1136D8 800F55E8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1136DC 800F55EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1136E0 800F55F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1136E4 800F55F4 03E00008 */  jr         $ra
/* 1136E8 800F55F8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F55FC
/* 1136EC 800F55FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1136F0 800F5600 AFB00010 */  sw         $s0, 0x10($sp)
/* 1136F4 800F5604 00808021 */  addu       $s0, $a0, $zero
/* 1136F8 800F5608 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1136FC 800F560C AFB10014 */  sw         $s1, 0x14($sp)
/* 113700 800F5610 8E020004 */  lw         $v0, 0x4($s0)
/* 113704 800F5614 10400029 */  beqz       $v0, .Lmenu_800F56BC
/* 113708 800F5618 24020001 */   addiu     $v0, $zero, 0x1
/* 11370C 800F561C 8E050354 */  lw         $a1, 0x354($s0)
/* 113710 800F5620 0C040547 */  jal        func_menu_8010151C
/* 113714 800F5624 02002021 */   addu      $a0, $s0, $zero
/* 113718 800F5628 0C04041D */  jal        func_menu_80101074
/* 11371C 800F562C 02002021 */   addu      $a0, $s0, $zero
/* 113720 800F5630 8E050354 */  lw         $a1, 0x354($s0)
/* 113724 800F5634 0C0403C1 */  jal        func_menu_80100F04
/* 113728 800F5638 02002021 */   addu      $a0, $s0, $zero
/* 11372C 800F563C 0C03B5D2 */  jal        func_menu_800ED748
/* 113730 800F5640 26040658 */   addiu     $a0, $s0, 0x658
/* 113734 800F5644 0C01958C */  jal        func_80065630
/* 113738 800F5648 260406A8 */   addiu     $a0, $s0, 0x6A8
/* 11373C 800F564C 8E05079C */  lw         $a1, 0x79C($s0)
/* 113740 800F5650 50A00009 */  beql       $a1, $zero, .Lmenu_800F5678
/* 113744 800F5654 02002021 */   addu      $a0, $s0, $zero
/* 113748 800F5658 8E0300B4 */  lw         $v1, 0xB4($s0)
/* 11374C 800F565C 8C620000 */  lw         $v0, 0x0($v1)
/* 113750 800F5660 84440098 */  lh         $a0, 0x98($v0)
/* 113754 800F5664 8C42009C */  lw         $v0, 0x9C($v0)
/* 113758 800F5668 0040F809 */  jalr       $v0
/* 11375C 800F566C 00642021 */   addu      $a0, $v1, $a0
/* 113760 800F5670 AE00079C */  sw         $zero, 0x79C($s0)
/* 113764 800F5674 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800F5678:
/* 113768 800F5678 2402FFFF */  addiu      $v0, $zero, -0x1
/* 11376C 800F567C 0C03E65F */  jal        func_menu_800F997C
/* 113770 800F5680 AE0207A0 */   sw        $v0, 0x7A0($s0)
/* 113774 800F5684 00408821 */  addu       $s1, $v0, $zero
/* 113778 800F5688 9603028C */  lhu        $v1, 0x28C($s0)
/* 11377C 800F568C 2402001B */  addiu      $v0, $zero, 0x1B
/* 113780 800F5690 1462000A */  bne        $v1, $v0, .Lmenu_800F56BC
/* 113784 800F5694 02201021 */   addu      $v0, $s1, $zero
/* 113788 800F5698 8E040354 */  lw         $a0, 0x354($s0)
/* 11378C 800F569C 0C0362CC */  jal        func_menu_800D8B30
/* 113790 800F56A0 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 113794 800F56A4 10400005 */  beqz       $v0, .Lmenu_800F56BC
/* 113798 800F56A8 02201021 */   addu      $v0, $s1, $zero
/* 11379C 800F56AC 8E040354 */  lw         $a0, 0x354($s0)
/* 1137A0 800F56B0 0C036201 */  jal        func_menu_800D8804
/* 1137A4 800F56B4 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 1137A8 800F56B8 02201021 */  addu       $v0, $s1, $zero
.Lmenu_800F56BC:
/* 1137AC 800F56BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1137B0 800F56C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1137B4 800F56C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1137B8 800F56C8 03E00008 */  jr         $ra
/* 1137BC 800F56CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F56D0
/* 1137C0 800F56D0 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* 1137C4 800F56D4 AFA400B8 */  sw         $a0, 0xB8($sp)
/* 1137C8 800F56D8 27A40040 */  addiu      $a0, $sp, 0x40
/* 1137CC 800F56DC AFBF00B4 */  sw         $ra, 0xB4($sp)
/* 1137D0 800F56E0 AFBE00B0 */  sw         $fp, 0xB0($sp)
/* 1137D4 800F56E4 AFB700AC */  sw         $s7, 0xAC($sp)
/* 1137D8 800F56E8 AFB600A8 */  sw         $s6, 0xA8($sp)
/* 1137DC 800F56EC AFB500A4 */  sw         $s5, 0xA4($sp)
/* 1137E0 800F56F0 AFB400A0 */  sw         $s4, 0xA0($sp)
/* 1137E4 800F56F4 AFB3009C */  sw         $s3, 0x9C($sp)
/* 1137E8 800F56F8 AFB20098 */  sw         $s2, 0x98($sp)
/* 1137EC 800F56FC AFB10094 */  sw         $s1, 0x94($sp)
/* 1137F0 800F5700 0C0016DC */  jal        func_80005B70
/* 1137F4 800F5704 AFB00090 */   sw        $s0, 0x90($sp)
/* 1137F8 800F5708 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 1137FC 800F570C AFA00074 */  sw         $zero, 0x74($sp)
/* 113800 800F5710 AFA00078 */  sw         $zero, 0x78($sp)
/* 113804 800F5714 AFA0007C */  sw         $zero, 0x7C($sp)
/* 113808 800F5718 AFA00080 */  sw         $zero, 0x80($sp)
/* 11380C 800F571C AFA00084 */  sw         $zero, 0x84($sp)
/* 113810 800F5720 9503028C */  lhu        $v1, 0x28C($t0)
/* 113814 800F5724 2402001C */  addiu      $v0, $zero, 0x1C
/* 113818 800F5728 1062000E */  beq        $v1, $v0, .Lmenu_800F5764
/* 11381C 800F572C 00000000 */   nop
/* 113820 800F5730 8D050354 */  lw         $a1, 0x354($t0)
/* 113824 800F5734 8CA2459C */  lw         $v0, 0x459C($a1)
/* 113828 800F5738 14400003 */  bnez       $v0, .Lmenu_800F5748
/* 11382C 800F573C 01002021 */   addu      $a0, $t0, $zero
/* 113830 800F5740 0C04042B */  jal        func_menu_801010AC
/* 113834 800F5744 00003021 */   addu      $a2, $zero, $zero
.Lmenu_800F5748:
/* 113838 800F5748 8FA900B8 */  lw         $t1, 0xB8($sp)
/* 11383C 800F574C 8D220354 */  lw         $v0, 0x354($t1)
/* 113840 800F5750 8C423CE4 */  lw         $v0, 0x3CE4($v0)
/* 113844 800F5754 14400003 */  bnez       $v0, .Lmenu_800F5764
/* 113848 800F5758 00000000 */   nop
/* 11384C 800F575C 0C040493 */  jal        func_menu_8010124C
/* 113850 800F5760 01202021 */   addu      $a0, $t1, $zero
.Lmenu_800F5764:
/* 113854 800F5764 8FAA00B8 */  lw         $t2, 0xB8($sp)
/* 113858 800F5768 9543028C */  lhu        $v1, 0x28C($t2)
/* 11385C 800F576C 2402001A */  addiu      $v0, $zero, 0x1A
/* 113860 800F5770 1462000C */  bne        $v1, $v0, .Lmenu_800F57A4
/* 113864 800F5774 00000000 */   nop
/* 113868 800F5778 8D440354 */  lw         $a0, 0x354($t2)
/* 11386C 800F577C 8C823D50 */  lw         $v0, 0x3D50($a0)
/* 113870 800F5780 10400003 */  beqz       $v0, .Lmenu_800F5790
/* 113874 800F5784 00001821 */   addu      $v1, $zero, $zero
/* 113878 800F5788 8C823D8C */  lw         $v0, 0x3D8C($a0)
/* 11387C 800F578C 0002182B */  sltu       $v1, $zero, $v0
.Lmenu_800F5790:
/* 113880 800F5790 14600004 */  bnez       $v1, .Lmenu_800F57A4
/* 113884 800F5794 00000000 */   nop
/* 113888 800F5798 8FA400B8 */  lw         $a0, 0xB8($sp)
/* 11388C 800F579C 0C0403D5 */  jal        func_menu_80100F54
/* 113890 800F57A0 24050001 */   addiu     $a1, $zero, 0x1
.Lmenu_800F57A4:
/* 113894 800F57A4 8FAB00B8 */  lw         $t3, 0xB8($sp)
/* 113898 800F57A8 27B00040 */  addiu      $s0, $sp, 0x40
/* 11389C 800F57AC 8D6400D0 */  lw         $a0, 0xD0($t3)
/* 1138A0 800F57B0 9566028C */  lhu        $a2, 0x28C($t3)
/* 1138A4 800F57B4 0C003053 */  jal        func_8000C14C
/* 1138A8 800F57B8 02002821 */   addu      $a1, $s0, $zero
/* 1138AC 800F57BC 02002021 */  addu       $a0, $s0, $zero
/* 1138B0 800F57C0 27B00030 */  addiu      $s0, $sp, 0x30
/* 1138B4 800F57C4 0C001854 */  jal        func_80006150
/* 1138B8 800F57C8 02002821 */   addu      $a1, $s0, $zero
/* 1138BC 800F57CC 27A40018 */  addiu      $a0, $sp, 0x18
/* 1138C0 800F57D0 3C05800D */  lui        $a1, %hi(D_menu_800CC250)
/* 1138C4 800F57D4 24A5C250 */  addiu      $a1, $a1, %lo(D_menu_800CC250)
/* 1138C8 800F57D8 0C006E14 */  jal        sprintf
/* 1138CC 800F57DC 02003021 */   addu      $a2, $s0, $zero
/* 1138D0 800F57E0 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 1138D4 800F57E4 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 1138D8 800F57E8 02002021 */  addu       $a0, $s0, $zero
/* 1138DC 800F57EC 27A50018 */  addiu      $a1, $sp, 0x18
/* 1138E0 800F57F0 0C000708 */  jal        func_80001C20
/* 1138E4 800F57F4 24060100 */   addiu     $a2, $zero, 0x100
/* 1138E8 800F57F8 8FA400B8 */  lw         $a0, 0xB8($sp)
/* 1138EC 800F57FC A20000FF */  sb         $zero, 0xFF($s0)
/* 1138F0 800F5800 00804021 */  addu       $t0, $a0, $zero
/* 1138F4 800F5804 25100368 */  addiu      $s0, $t0, 0x368
/* 1138F8 800F5808 9506028C */  lhu        $a2, 0x28C($t0)
/* 1138FC 800F580C 0C046ADA */  jal        func_menu_8011AB68
/* 113900 800F5810 02002821 */   addu      $a1, $s0, $zero
/* 113904 800F5814 AE0002CC */  sw         $zero, 0x2CC($s0)
/* 113908 800F5818 8E1002B0 */  lw         $s0, 0x2B0($s0)
/* 11390C 800F581C 8FA900B8 */  lw         $t1, 0xB8($sp)
/* 113910 800F5820 24030025 */  addiu      $v1, $zero, 0x25
/* 113914 800F5824 AFB00070 */  sw         $s0, 0x70($sp)
/* 113918 800F5828 9522028C */  lhu        $v0, 0x28C($t1)
/* 11391C 800F582C 8E120000 */  lw         $s2, 0x0($s0)
/* 113920 800F5830 14430010 */  bne        $v0, $v1, .Lmenu_800F5874
/* 113924 800F5834 0000A821 */   addu      $s5, $zero, $zero
/* 113928 800F5838 8D220354 */  lw         $v0, 0x354($t1)
/* 11392C 800F583C 8C442CA4 */  lw         $a0, 0x2CA4($v0)
/* 113930 800F5840 1080000D */  beqz       $a0, .Lmenu_800F5878
/* 113934 800F5844 3C13800D */   lui       $s3, %hi(D_menu_800CC264)
/* 113938 800F5848 8C420000 */  lw         $v0, 0x0($v0)
/* 11393C 800F584C AC400118 */  sw         $zero, 0x118($v0)
/* 113940 800F5850 8D220354 */  lw         $v0, 0x354($t1)
/* 113944 800F5854 8C450000 */  lw         $a1, 0x0($v0)
/* 113948 800F5858 0C03BBD1 */  jal        func_menu_800EEF44
/* 11394C 800F585C 24A5015C */   addiu     $a1, $a1, 0x15C
/* 113950 800F5860 8FAA00B8 */  lw         $t2, 0xB8($sp)
/* 113954 800F5864 8D420354 */  lw         $v0, 0x354($t2)
/* 113958 800F5868 8C420000 */  lw         $v0, 0x0($v0)
/* 11395C 800F586C A0400108 */  sb         $zero, 0x108($v0)
/* 113960 800F5870 0000A821 */  addu       $s5, $zero, $zero
.Lmenu_800F5874:
/* 113964 800F5874 3C13800D */  lui        $s3, %hi(D_menu_800CC264)
.Lmenu_800F5878:
/* 113968 800F5878 8E420018 */  lw         $v0, 0x18($s2)
/* 11396C 800F587C 02A2102B */  sltu       $v0, $s5, $v0
/* 113970 800F5880 10400038 */  beqz       $v0, .Lmenu_800F5964
/* 113974 800F5884 00151080 */   sll       $v0, $s5, 2
/* 113978 800F5888 8E43001C */  lw         $v1, 0x1C($s2)
/* 11397C 800F588C 8FAB0074 */  lw         $t3, 0x74($sp)
/* 113980 800F5890 00431021 */  addu       $v0, $v0, $v1
/* 113984 800F5894 8C500000 */  lw         $s0, 0x0($v0)
/* 113988 800F5898 15600008 */  bnez       $t3, .Lmenu_800F58BC
/* 11398C 800F589C 3C02800D */   lui       $v0, %hi(D_menu_800CC25C)
/* 113990 800F58A0 2445C25C */  addiu      $a1, $v0, %lo(D_menu_800CC25C)
/* 113994 800F58A4 8E0200BC */  lw         $v0, 0xBC($s0)
/* 113998 800F58A8 10400004 */  beqz       $v0, .Lmenu_800F58BC
/* 11399C 800F58AC 260400BC */   addiu     $a0, $s0, 0xBC
/* 1139A0 800F58B0 0C016427 */  jal        func_8005909C
/* 1139A4 800F58B4 00000000 */   nop
/* 1139A8 800F58B8 AFA20074 */  sw         $v0, 0x74($sp)
.Lmenu_800F58BC:
/* 1139AC 800F58BC 8FA80080 */  lw         $t0, 0x80($sp)
/* 1139B0 800F58C0 15000011 */  bnez       $t0, .Lmenu_800F5908
/* 1139B4 800F58C4 00000000 */   nop
/* 1139B8 800F58C8 2671C264 */  addiu      $s1, $s3, %lo(D_menu_800CC264)
/* 1139BC 800F58CC 8E0200B0 */  lw         $v0, 0xB0($s0)
/* 1139C0 800F58D0 10400004 */  beqz       $v0, .Lmenu_800F58E4
/* 1139C4 800F58D4 260400B0 */   addiu     $a0, $s0, 0xB0
/* 1139C8 800F58D8 0C016427 */  jal        func_8005909C
/* 1139CC 800F58DC 02202821 */   addu      $a1, $s1, $zero
/* 1139D0 800F58E0 AFA20080 */  sw         $v0, 0x80($sp)
.Lmenu_800F58E4:
/* 1139D4 800F58E4 8FA90080 */  lw         $t1, 0x80($sp)
/* 1139D8 800F58E8 15200007 */  bnez       $t1, .Lmenu_800F5908
/* 1139DC 800F58EC 00000000 */   nop
/* 1139E0 800F58F0 8E0200BC */  lw         $v0, 0xBC($s0)
/* 1139E4 800F58F4 10400004 */  beqz       $v0, .Lmenu_800F5908
/* 1139E8 800F58F8 260400BC */   addiu     $a0, $s0, 0xBC
/* 1139EC 800F58FC 0C016427 */  jal        func_8005909C
/* 1139F0 800F5900 02202821 */   addu      $a1, $s1, $zero
/* 1139F4 800F5904 AFA20080 */  sw         $v0, 0x80($sp)
.Lmenu_800F5908:
/* 1139F8 800F5908 8FAA007C */  lw         $t2, 0x7C($sp)
/* 1139FC 800F590C 15400008 */  bnez       $t2, .Lmenu_800F5930
/* 113A00 800F5910 3C02800D */   lui       $v0, %hi(D_menu_800CC26C)
/* 113A04 800F5914 2445C26C */  addiu      $a1, $v0, %lo(D_menu_800CC26C)
/* 113A08 800F5918 8E0200BC */  lw         $v0, 0xBC($s0)
/* 113A0C 800F591C 10400004 */  beqz       $v0, .Lmenu_800F5930
/* 113A10 800F5920 260400BC */   addiu     $a0, $s0, 0xBC
/* 113A14 800F5924 0C016427 */  jal        func_8005909C
/* 113A18 800F5928 00000000 */   nop
/* 113A1C 800F592C AFA2007C */  sw         $v0, 0x7C($sp)
.Lmenu_800F5930:
/* 113A20 800F5930 8FAB0078 */  lw         $t3, 0x78($sp)
/* 113A24 800F5934 5560FFD0 */  bnel       $t3, $zero, .Lmenu_800F5878
/* 113A28 800F5938 26B50001 */   addiu     $s5, $s5, 0x1
/* 113A2C 800F593C 3C02800D */  lui        $v0, %hi(D_menu_800CC274)
/* 113A30 800F5940 2445C274 */  addiu      $a1, $v0, %lo(D_menu_800CC274)
/* 113A34 800F5944 8E0200BC */  lw         $v0, 0xBC($s0)
/* 113A38 800F5948 10400004 */  beqz       $v0, .Lmenu_800F595C
/* 113A3C 800F594C 260400BC */   addiu     $a0, $s0, 0xBC
/* 113A40 800F5950 0C016427 */  jal        func_8005909C
/* 113A44 800F5954 00000000 */   nop
/* 113A48 800F5958 AFA20078 */  sw         $v0, 0x78($sp)
.Lmenu_800F595C:
/* 113A4C 800F595C 0803D61E */  j          .Lmenu_800F5878
/* 113A50 800F5960 26B50001 */   addiu     $s5, $s5, 0x1
.Lmenu_800F5964:
/* 113A54 800F5964 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 113A58 800F5968 9503028C */  lhu        $v1, 0x28C($t0)
/* 113A5C 800F596C 2402001C */  addiu      $v0, $zero, 0x1C
/* 113A60 800F5970 10620126 */  beq        $v1, $v0, .Lmenu_800F5E0C
/* 113A64 800F5974 2402001A */   addiu     $v0, $zero, 0x1A
/* 113A68 800F5978 8D050354 */  lw         $a1, 0x354($t0)
/* 113A6C 800F597C 8CA20000 */  lw         $v0, 0x0($a1)
/* 113A70 800F5980 8C420118 */  lw         $v0, 0x118($v0)
/* 113A74 800F5984 1040000B */  beqz       $v0, .Lmenu_800F59B4
/* 113A78 800F5988 0000A821 */   addu      $s5, $zero, $zero
/* 113A7C 800F598C 02A02021 */  addu       $a0, $s5, $zero
/* 113A80 800F5990 8CA30000 */  lw         $v1, 0x0($a1)
.Lmenu_800F5994:
/* 113A84 800F5994 8C620330 */  lw         $v0, 0x330($v1)
/* 113A88 800F5998 02A2102B */  sltu       $v0, $s5, $v0
/* 113A8C 800F599C 10400005 */  beqz       $v0, .Lmenu_800F59B4
/* 113A90 800F59A0 2484005C */   addiu     $a0, $a0, 0x5C
/* 113A94 800F59A4 00641021 */  addu       $v0, $v1, $a0
/* 113A98 800F59A8 8C420118 */  lw         $v0, 0x118($v0)
/* 113A9C 800F59AC 1440FFF9 */  bnez       $v0, .Lmenu_800F5994
/* 113AA0 800F59B0 26B50001 */   addiu     $s5, $s5, 0x1
.Lmenu_800F59B4:
/* 113AA4 800F59B4 8FA900B8 */  lw         $t1, 0xB8($sp)
/* 113AA8 800F59B8 9523028C */  lhu        $v1, 0x28C($t1)
/* 113AAC 800F59BC 2402001A */  addiu      $v0, $zero, 0x1A
/* 113AB0 800F59C0 50620001 */  beql       $v1, $v0, .Lmenu_800F59C8
/* 113AB4 800F59C4 24150001 */   addiu     $s5, $zero, 0x1
.Lmenu_800F59C8:
/* 113AB8 800F59C8 00151040 */  sll        $v0, $s5, 1
/* 113ABC 800F59CC 00551021 */  addu       $v0, $v0, $s5
/* 113AC0 800F59D0 8FAA00B8 */  lw         $t2, 0xB8($sp)
/* 113AC4 800F59D4 000210C0 */  sll        $v0, $v0, 3
/* 113AC8 800F59D8 8D440354 */  lw         $a0, 0x354($t2)
/* 113ACC 800F59DC 00551023 */  subu       $v0, $v0, $s5
/* 113AD0 800F59E0 8C860000 */  lw         $a2, 0x0($a0)
/* 113AD4 800F59E4 00022880 */  sll        $a1, $v0, 2
/* 113AD8 800F59E8 00C51821 */  addu       $v1, $a2, $a1
/* 113ADC 800F59EC 90620108 */  lbu        $v0, 0x108($v1)
/* 113AE0 800F59F0 10400007 */  beqz       $v0, .Lmenu_800F5A10
/* 113AE4 800F59F4 24A50108 */   addiu     $a1, $a1, 0x108
/* 113AE8 800F59F8 24843CBC */  addiu      $a0, $a0, 0x3CBC
/* 113AEC 800F59FC 00C52821 */  addu       $a1, $a2, $a1
/* 113AF0 800F5A00 0C011604 */  jal        func_80045810
/* 113AF4 800F5A04 27A60058 */   addiu     $a2, $sp, 0x58
/* 113AF8 800F5A08 0803D68B */  j          .Lmenu_800F5A2C
/* 113AFC 800F5A0C 27A50058 */   addiu     $a1, $sp, 0x58
.Lmenu_800F5A10:
/* 113B00 800F5A10 886B015C */  lwl        $t3, 0x15C($v1)
/* 113B04 800F5A14 986B015F */  lwr        $t3, 0x15F($v1)
/* 113B08 800F5A18 80680160 */  lb         $t0, 0x160($v1)
/* 113B0C 800F5A1C ABAB0058 */  swl        $t3, 0x58($sp)
/* 113B10 800F5A20 BBAB005B */  swr        $t3, 0x5B($sp)
/* 113B14 800F5A24 A3A8005C */  sb         $t0, 0x5C($sp)
/* 113B18 800F5A28 27A50058 */  addiu      $a1, $sp, 0x58
.Lmenu_800F5A2C:
/* 113B1C 800F5A2C 8FAB00B8 */  lw         $t3, 0xB8($sp)
/* 113B20 800F5A30 00003021 */  addu       $a2, $zero, $zero
/* 113B24 800F5A34 8D630354 */  lw         $v1, 0x354($t3)
/* 113B28 800F5A38 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 113B2C 800F5A3C AC6245AC */  sw         $v0, 0x45AC($v1)
/* 113B30 800F5A40 8D640354 */  lw         $a0, 0x354($t3)
/* 113B34 800F5A44 00C03821 */  addu       $a3, $a2, $zero
/* 113B38 800F5A48 0C037746 */  jal        func_menu_800DDD18
/* 113B3C 800F5A4C 2484459C */   addiu     $a0, $a0, 0x459C
/* 113B40 800F5A50 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 113B44 800F5A54 AD02079C */  sw         $v0, 0x79C($t0)
/* 113B48 800F5A58 8FA90074 */  lw         $t1, 0x74($sp)
/* 113B4C 800F5A5C 8D220024 */  lw         $v0, 0x24($t1)
/* 113B50 800F5A60 00002821 */  addu       $a1, $zero, $zero
/* 113B54 800F5A64 844400B8 */  lh         $a0, 0xB8($v0)
/* 113B58 800F5A68 8C4200BC */  lw         $v0, 0xBC($v0)
/* 113B5C 800F5A6C 0040F809 */  jalr       $v0
/* 113B60 800F5A70 01242021 */   addu      $a0, $t1, $a0
/* 113B64 800F5A74 8FAB0074 */  lw         $t3, 0x74($sp)
/* 113B68 800F5A78 8FAA00B8 */  lw         $t2, 0xB8($sp)
/* 113B6C 800F5A7C 8D6700A8 */  lw         $a3, 0xA8($t3)
/* 113B70 800F5A80 C5600084 */  lwc1       $f0, 0x84($t3)
/* 113B74 800F5A84 00403021 */  addu       $a2, $v0, $zero
/* 113B78 800F5A88 E7A00010 */  swc1       $f0, 0x10($sp)
/* 113B7C 800F5A8C 8D45079C */  lw         $a1, 0x79C($t2)
/* 113B80 800F5A90 0C01956B */  jal        func_800655AC
/* 113B84 800F5A94 254406A8 */   addiu     $a0, $t2, 0x6A8
/* 113B88 800F5A98 8FA80080 */  lw         $t0, 0x80($sp)
/* 113B8C 800F5A9C 11000019 */  beqz       $t0, .Lmenu_800F5B04
/* 113B90 800F5AA0 00000000 */   nop
/* 113B94 800F5AA4 8FA900B8 */  lw         $t1, 0xB8($sp)
/* 113B98 800F5AA8 8D240354 */  lw         $a0, 0x354($t1)
/* 113B9C 800F5AAC 0C0362CC */  jal        func_menu_800D8B30
/* 113BA0 800F5AB0 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 113BA4 800F5AB4 1440000F */  bnez       $v0, .Lmenu_800F5AF4
/* 113BA8 800F5AB8 27B10060 */   addiu     $s1, $sp, 0x60
/* 113BAC 800F5ABC 02202021 */  addu       $a0, $s1, $zero
/* 113BB0 800F5AC0 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 113BB4 800F5AC4 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 113BB8 800F5AC8 0C0006FA */  jal        func_80001BE8
/* 113BBC 800F5ACC 02002821 */   addu      $a1, $s0, $zero
/* 113BC0 800F5AD0 8FA400B8 */  lw         $a0, 0xB8($sp)
/* 113BC4 800F5AD4 8C850354 */  lw         $a1, 0x354($a0)
/* 113BC8 800F5AD8 0C04034B */  jal        func_menu_80100D2C
/* 113BCC 800F5ADC 24060001 */   addiu     $a2, $zero, 0x1
/* 113BD0 800F5AE0 02002021 */  addu       $a0, $s0, $zero
/* 113BD4 800F5AE4 02202821 */  addu       $a1, $s1, $zero
/* 113BD8 800F5AE8 0C000708 */  jal        func_80001C20
/* 113BDC 800F5AEC 24060100 */   addiu     $a2, $zero, 0x100
/* 113BE0 800F5AF0 A20000FF */  sb         $zero, 0xFF($s0)
.Lmenu_800F5AF4:
/* 113BE4 800F5AF4 8FA400B8 */  lw         $a0, 0xB8($sp)
/* 113BE8 800F5AF8 0C03D902 */  jal        func_menu_800F6408
/* 113BEC 800F5AFC 02A02821 */   addu      $a1, $s5, $zero
/* 113BF0 800F5B00 AFA20084 */  sw         $v0, 0x84($sp)
.Lmenu_800F5B04:
/* 113BF4 800F5B04 8FA400B8 */  lw         $a0, 0xB8($sp)
/* 113BF8 800F5B08 0C0404CB */  jal        func_menu_8010132C
/* 113BFC 800F5B0C 00000000 */   nop
/* 113C00 800F5B10 8FAA00B8 */  lw         $t2, 0xB8($sp)
/* 113C04 800F5B14 8D440354 */  lw         $a0, 0x354($t2)
/* 113C08 800F5B18 0C010B39 */  jal        func_80042CE4
/* 113C0C 800F5B1C 24843D3C */   addiu     $a0, $a0, 0x3D3C
/* 113C10 800F5B20 8FAB00B8 */  lw         $t3, 0xB8($sp)
/* 113C14 800F5B24 8D640354 */  lw         $a0, 0x354($t3)
/* 113C18 800F5B28 0C01101F */  jal        func_8004407C
/* 113C1C 800F5B2C 24843D78 */   addiu     $a0, $a0, 0x3D78
/* 113C20 800F5B30 8FA8007C */  lw         $t0, 0x7C($sp)
/* 113C24 800F5B34 15000004 */  bnez       $t0, .Lmenu_800F5B48
/* 113C28 800F5B38 00000000 */   nop
/* 113C2C 800F5B3C 8FA90078 */  lw         $t1, 0x78($sp)
/* 113C30 800F5B40 51200020 */  beql       $t1, $zero, .Lmenu_800F5BC4
/* 113C34 800F5B44 0000A821 */   addu      $s5, $zero, $zero
.Lmenu_800F5B48:
/* 113C38 800F5B48 8FAA00B8 */  lw         $t2, 0xB8($sp)
/* 113C3C 800F5B4C 254306A8 */  addiu      $v1, $t2, 0x6A8
/* 113C40 800F5B50 8C62006C */  lw         $v0, 0x6C($v1)
/* 113C44 800F5B54 14400002 */  bnez       $v0, .Lmenu_800F5B60
/* 113C48 800F5B58 00408021 */   addu      $s0, $v0, $zero
/* 113C4C 800F5B5C 8C700078 */  lw         $s0, 0x78($v1)
.Lmenu_800F5B60:
/* 113C50 800F5B60 8FAB007C */  lw         $t3, 0x7C($sp)
/* 113C54 800F5B64 1160000A */  beqz       $t3, .Lmenu_800F5B90
/* 113C58 800F5B68 00000000 */   nop
/* 113C5C 800F5B6C 8D64006C */  lw         $a0, 0x6C($t3)
/* 113C60 800F5B70 14800003 */  bnez       $a0, .Lmenu_800F5B80
/* 113C64 800F5B74 00000000 */   nop
/* 113C68 800F5B78 8FA8007C */  lw         $t0, 0x7C($sp)
/* 113C6C 800F5B7C 8D040078 */  lw         $a0, 0x78($t0)
.Lmenu_800F5B80:
/* 113C70 800F5B80 8E020008 */  lw         $v0, 0x8($s0)
/* 113C74 800F5B84 8C460004 */  lw         $a2, 0x4($v0)
/* 113C78 800F5B88 0C01543D */  jal        func_800550F4
/* 113C7C 800F5B8C 00002821 */   addu      $a1, $zero, $zero
.Lmenu_800F5B90:
/* 113C80 800F5B90 8FA90078 */  lw         $t1, 0x78($sp)
/* 113C84 800F5B94 1120000B */  beqz       $t1, .Lmenu_800F5BC4
/* 113C88 800F5B98 0000A821 */   addu      $s5, $zero, $zero
/* 113C8C 800F5B9C 8D24006C */  lw         $a0, 0x6C($t1)
/* 113C90 800F5BA0 14800003 */  bnez       $a0, .Lmenu_800F5BB0
/* 113C94 800F5BA4 00000000 */   nop
/* 113C98 800F5BA8 8FAA0078 */  lw         $t2, 0x78($sp)
/* 113C9C 800F5BAC 8D440078 */  lw         $a0, 0x78($t2)
.Lmenu_800F5BB0:
/* 113CA0 800F5BB0 8E020008 */  lw         $v0, 0x8($s0)
/* 113CA4 800F5BB4 8C460004 */  lw         $a2, 0x4($v0)
/* 113CA8 800F5BB8 0C01543D */  jal        func_800550F4
/* 113CAC 800F5BBC 00002821 */   addu      $a1, $zero, $zero
/* 113CB0 800F5BC0 0000A821 */  addu       $s5, $zero, $zero
.Lmenu_800F5BC4:
/* 113CB4 800F5BC4 8FAB00B8 */  lw         $t3, 0xB8($sp)
/* 113CB8 800F5BC8 27B10050 */  addiu      $s1, $sp, 0x50
/* 113CBC 800F5BCC AFA0008C */  sw         $zero, 0x8C($sp)
/* 113CC0 800F5BD0 256B06A8 */  addiu      $t3, $t3, 0x6A8
/* 113CC4 800F5BD4 AFAB0088 */  sw         $t3, 0x88($sp)
.Lmenu_800F5BD8:
/* 113CC8 800F5BD8 8FA80070 */  lw         $t0, 0x70($sp)
/* 113CCC 800F5BDC 8D02000C */  lw         $v0, 0xC($t0)
/* 113CD0 800F5BE0 02A2102B */  sltu       $v0, $s5, $v0
/* 113CD4 800F5BE4 10400087 */  beqz       $v0, .Lmenu_800F5E04
/* 113CD8 800F5BE8 2402001A */   addiu     $v0, $zero, 0x1A
/* 113CDC 800F5BEC 8D020010 */  lw         $v0, 0x10($t0)
/* 113CE0 800F5BF0 8FA9008C */  lw         $t1, 0x8C($sp)
/* 113CE4 800F5BF4 8FAA0074 */  lw         $t2, 0x74($sp)
/* 113CE8 800F5BF8 00499821 */  addu       $s3, $v0, $t1
/* 113CEC 800F5BFC 8E620024 */  lw         $v0, 0x24($s3)
/* 113CF0 800F5C00 144A0064 */  bne        $v0, $t2, .Lmenu_800F5D94
/* 113CF4 800F5C04 0000F021 */   addu      $fp, $zero, $zero
/* 113CF8 800F5C08 8FAB0088 */  lw         $t3, 0x88($sp)
/* 113CFC 800F5C0C 03C0B821 */  addu       $s7, $fp, $zero
/* 113D00 800F5C10 AE6B0024 */  sw         $t3, 0x24($s3)
.Lmenu_800F5C14:
/* 113D04 800F5C14 8E62005C */  lw         $v0, 0x5C($s3)
/* 113D08 800F5C18 03C2102B */  sltu       $v0, $fp, $v0
/* 113D0C 800F5C1C 10400074 */  beqz       $v0, .Lmenu_800F5DF0
/* 113D10 800F5C20 00000000 */   nop
/* 113D14 800F5C24 8E620060 */  lw         $v0, 0x60($s3)
/* 113D18 800F5C28 0057A021 */  addu       $s4, $v0, $s7
/* 113D1C 800F5C2C 8E820000 */  lw         $v0, 0x0($s4)
/* 113D20 800F5C30 8E830004 */  lw         $v1, 0x4($s4)
/* 113D24 800F5C34 8C560000 */  lw         $s6, 0x0($v0)
/* 113D28 800F5C38 94720006 */  lhu        $s2, 0x6($v1)
.Lmenu_800F5C3C:
/* 113D2C 800F5C3C 8E820004 */  lw         $v0, 0x4($s4)
/* 113D30 800F5C40 94430006 */  lhu        $v1, 0x6($v0)
/* 113D34 800F5C44 94420008 */  lhu        $v0, 0x8($v0)
/* 113D38 800F5C48 3246FFFF */  andi       $a2, $s2, 0xFFFF
/* 113D3C 800F5C4C 00621821 */  addu       $v1, $v1, $v0
/* 113D40 800F5C50 00C3182A */  slt        $v1, $a2, $v1
/* 113D44 800F5C54 1060004C */  beqz       $v1, .Lmenu_800F5D88
/* 113D48 800F5C58 02202021 */   addu      $a0, $s1, $zero
/* 113D4C 800F5C5C 3C05800D */  lui        $a1, %hi(D_menu_800CC27C)
/* 113D50 800F5C60 24A5C27C */  addiu      $a1, $a1, %lo(D_menu_800CC27C)
/* 113D54 800F5C64 000610C0 */  sll        $v0, $a2, 3
/* 113D58 800F5C68 00561021 */  addu       $v0, $v0, $s6
/* 113D5C 800F5C6C 8C420000 */  lw         $v0, 0x0($v0)
/* 113D60 800F5C70 88480014 */  lwl        $t0, 0x14($v0)
/* 113D64 800F5C74 98480017 */  lwr        $t0, 0x17($v0)
/* 113D68 800F5C78 88490018 */  lwl        $t1, 0x18($v0)
/* 113D6C 800F5C7C 9849001B */  lwr        $t1, 0x1B($v0)
/* 113D70 800F5C80 ABA80050 */  swl        $t0, 0x50($sp)
/* 113D74 800F5C84 BBA80053 */  swr        $t0, 0x53($sp)
/* 113D78 800F5C88 ABA90054 */  swl        $t1, 0x54($sp)
/* 113D7C 800F5C8C BBA90057 */  swr        $t1, 0x57($sp)
/* 113D80 800F5C90 0C0006B2 */  jal        func_80001AC8
/* 113D84 800F5C94 24060008 */   addiu     $a2, $zero, 0x8
/* 113D88 800F5C98 14400003 */  bnez       $v0, .Lmenu_800F5CA8
/* 113D8C 800F5C9C 02202021 */   addu      $a0, $s1, $zero
/* 113D90 800F5CA0 0803D751 */  j          .Lmenu_800F5D44
/* 113D94 800F5CA4 00003021 */   addu      $a2, $zero, $zero
.Lmenu_800F5CA8:
/* 113D98 800F5CA8 3C05800D */  lui        $a1, %hi(D_menu_800CC284)
/* 113D9C 800F5CAC 24A5C284 */  addiu      $a1, $a1, %lo(D_menu_800CC284)
/* 113DA0 800F5CB0 0C0006B2 */  jal        func_80001AC8
/* 113DA4 800F5CB4 24060008 */   addiu     $a2, $zero, 0x8
/* 113DA8 800F5CB8 14400003 */  bnez       $v0, .Lmenu_800F5CC8
/* 113DAC 800F5CBC 02202021 */   addu      $a0, $s1, $zero
/* 113DB0 800F5CC0 0803D751 */  j          .Lmenu_800F5D44
/* 113DB4 800F5CC4 24060001 */   addiu     $a2, $zero, 0x1
.Lmenu_800F5CC8:
/* 113DB8 800F5CC8 3C05800D */  lui        $a1, %hi(D_menu_800CC28C)
/* 113DBC 800F5CCC 24A5C28C */  addiu      $a1, $a1, %lo(D_menu_800CC28C)
/* 113DC0 800F5CD0 0C0006B2 */  jal        func_80001AC8
/* 113DC4 800F5CD4 24060008 */   addiu     $a2, $zero, 0x8
/* 113DC8 800F5CD8 14400003 */  bnez       $v0, .Lmenu_800F5CE8
/* 113DCC 800F5CDC 02202021 */   addu      $a0, $s1, $zero
/* 113DD0 800F5CE0 0803D751 */  j          .Lmenu_800F5D44
/* 113DD4 800F5CE4 24060002 */   addiu     $a2, $zero, 0x2
.Lmenu_800F5CE8:
/* 113DD8 800F5CE8 3C05800D */  lui        $a1, %hi(D_menu_800CC294)
/* 113DDC 800F5CEC 24A5C294 */  addiu      $a1, $a1, %lo(D_menu_800CC294)
/* 113DE0 800F5CF0 0C0006B2 */  jal        func_80001AC8
/* 113DE4 800F5CF4 24060008 */   addiu     $a2, $zero, 0x8
/* 113DE8 800F5CF8 14400003 */  bnez       $v0, .Lmenu_800F5D08
/* 113DEC 800F5CFC 02202021 */   addu      $a0, $s1, $zero
/* 113DF0 800F5D00 0803D751 */  j          .Lmenu_800F5D44
/* 113DF4 800F5D04 24060003 */   addiu     $a2, $zero, 0x3
.Lmenu_800F5D08:
/* 113DF8 800F5D08 3C05800D */  lui        $a1, %hi(D_menu_800CC29C)
/* 113DFC 800F5D0C 24A5C29C */  addiu      $a1, $a1, %lo(D_menu_800CC29C)
/* 113E00 800F5D10 0C0006B2 */  jal        func_80001AC8
/* 113E04 800F5D14 24060008 */   addiu     $a2, $zero, 0x8
/* 113E08 800F5D18 14400003 */  bnez       $v0, .Lmenu_800F5D28
/* 113E0C 800F5D1C 02202021 */   addu      $a0, $s1, $zero
/* 113E10 800F5D20 0803D751 */  j          .Lmenu_800F5D44
/* 113E14 800F5D24 24060004 */   addiu     $a2, $zero, 0x4
.Lmenu_800F5D28:
/* 113E18 800F5D28 3C05800D */  lui        $a1, %hi(D_menu_800CC2A0)
/* 113E1C 800F5D2C 24A5C2A0 */  addiu      $a1, $a1, %lo(D_menu_800CC2A0)
/* 113E20 800F5D30 0C0006B2 */  jal        func_80001AC8
/* 113E24 800F5D34 24060008 */   addiu     $a2, $zero, 0x8
/* 113E28 800F5D38 14400002 */  bnez       $v0, .Lmenu_800F5D44
/* 113E2C 800F5D3C 00003021 */   addu      $a2, $zero, $zero
/* 113E30 800F5D40 24060005 */  addiu      $a2, $zero, 0x5
.Lmenu_800F5D44:
/* 113E34 800F5D44 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 113E38 800F5D48 8D020354 */  lw         $v0, 0x354($t0)
/* 113E3C 800F5D4C 02203821 */  addu       $a3, $s1, $zero
/* 113E40 800F5D50 8C4245D4 */  lw         $v0, 0x45D4($v0)
/* 113E44 800F5D54 93A50059 */  lbu        $a1, 0x59($sp)
/* 113E48 800F5D58 8C440034 */  lw         $a0, 0x34($v0)
/* 113E4C 800F5D5C 0C035C51 */  jal        func_menu_800D7144
/* 113E50 800F5D60 3250FFFF */   andi      $s0, $s2, 0xFFFF
/* 113E54 800F5D64 8FA900B8 */  lw         $t1, 0xB8($sp)
/* 113E58 800F5D68 26520001 */  addiu      $s2, $s2, 0x1
/* 113E5C 800F5D6C 8D24064C */  lw         $a0, 0x64C($t1)
/* 113E60 800F5D70 0C016F2D */  jal        func_8005BCB4
/* 113E64 800F5D74 02202821 */   addu      $a1, $s1, $zero
/* 113E68 800F5D78 001080C0 */  sll        $s0, $s0, 3
/* 113E6C 800F5D7C 02168021 */  addu       $s0, $s0, $s6
/* 113E70 800F5D80 0803D70F */  j          .Lmenu_800F5C3C
/* 113E74 800F5D84 AE020000 */   sw        $v0, 0x0($s0)
.Lmenu_800F5D88:
/* 113E78 800F5D88 26F7001C */  addiu      $s7, $s7, 0x1C
/* 113E7C 800F5D8C 0803D705 */  j          .Lmenu_800F5C14
/* 113E80 800F5D90 27DE0001 */   addiu     $fp, $fp, 0x1
.Lmenu_800F5D94:
/* 113E84 800F5D94 8FAA0080 */  lw         $t2, 0x80($sp)
/* 113E88 800F5D98 144A0008 */  bne        $v0, $t2, .Lmenu_800F5DBC
/* 113E8C 800F5D9C 00000000 */   nop
/* 113E90 800F5DA0 8FAB0084 */  lw         $t3, 0x84($sp)
/* 113E94 800F5DA4 51600012 */  beql       $t3, $zero, .Lmenu_800F5DF0
/* 113E98 800F5DA8 AE600024 */   sw        $zero, 0x24($s3)
/* 113E9C 800F5DAC 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 113EA0 800F5DB0 25020658 */  addiu      $v0, $t0, 0x658
/* 113EA4 800F5DB4 0803D77C */  j          .Lmenu_800F5DF0
/* 113EA8 800F5DB8 AE620024 */   sw        $v0, 0x24($s3)
.Lmenu_800F5DBC:
/* 113EAC 800F5DBC 8FA9007C */  lw         $t1, 0x7C($sp)
/* 113EB0 800F5DC0 14490004 */  bne        $v0, $t1, .Lmenu_800F5DD4
/* 113EB4 800F5DC4 2402000A */   addiu     $v0, $zero, 0xA
/* 113EB8 800F5DC8 93A3005B */  lbu        $v1, 0x5B($sp)
/* 113EBC 800F5DCC 50620008 */  beql       $v1, $v0, .Lmenu_800F5DF0
/* 113EC0 800F5DD0 AE600024 */   sw        $zero, 0x24($s3)
.Lmenu_800F5DD4:
/* 113EC4 800F5DD4 8E620024 */  lw         $v0, 0x24($s3)
/* 113EC8 800F5DD8 8FAA0078 */  lw         $t2, 0x78($sp)
/* 113ECC 800F5DDC 144A0004 */  bne        $v0, $t2, .Lmenu_800F5DF0
/* 113ED0 800F5DE0 2402000A */   addiu     $v0, $zero, 0xA
/* 113ED4 800F5DE4 93A3005B */  lbu        $v1, 0x5B($sp)
/* 113ED8 800F5DE8 54620001 */  bnel       $v1, $v0, .Lmenu_800F5DF0
/* 113EDC 800F5DEC AE600024 */   sw        $zero, 0x24($s3)
.Lmenu_800F5DF0:
/* 113EE0 800F5DF0 8FAB008C */  lw         $t3, 0x8C($sp)
/* 113EE4 800F5DF4 26B50001 */  addiu      $s5, $s5, 0x1
/* 113EE8 800F5DF8 256B0068 */  addiu      $t3, $t3, 0x68
/* 113EEC 800F5DFC 0803D6F6 */  j          .Lmenu_800F5BD8
/* 113EF0 800F5E00 AFAB008C */   sw        $t3, 0x8C($sp)
.Lmenu_800F5E04:
/* 113EF4 800F5E04 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 113EF8 800F5E08 9503028C */  lhu        $v1, 0x28C($t0)
.Lmenu_800F5E0C:
/* 113EFC 800F5E0C 14620085 */  bne        $v1, $v0, .Lmenu_800F6024
/* 113F00 800F5E10 250404F8 */   addiu     $a0, $t0, 0x4F8
/* 113F04 800F5E14 27A50060 */  addiu      $a1, $sp, 0x60
/* 113F08 800F5E18 24030074 */  addiu      $v1, $zero, 0x74
/* 113F0C 800F5E1C 24020065 */  addiu      $v0, $zero, 0x65
/* 113F10 800F5E20 A3A20061 */  sb         $v0, 0x61($sp)
/* 113F14 800F5E24 24020078 */  addiu      $v0, $zero, 0x78
/* 113F18 800F5E28 A3A20062 */  sb         $v0, 0x62($sp)
/* 113F1C 800F5E2C 24020043 */  addiu      $v0, $zero, 0x43
/* 113F20 800F5E30 A3A20064 */  sb         $v0, 0x64($sp)
/* 113F24 800F5E34 24020052 */  addiu      $v0, $zero, 0x52
/* 113F28 800F5E38 251003EC */  addiu      $s0, $t0, 0x3EC
/* 113F2C 800F5E3C A3A30060 */  sb         $v1, 0x60($sp)
/* 113F30 800F5E40 A3A30063 */  sb         $v1, 0x63($sp)
/* 113F34 800F5E44 A3A00066 */  sb         $zero, 0x66($sp)
/* 113F38 800F5E48 0C016427 */  jal        func_8005909C
/* 113F3C 800F5E4C A3A20065 */   sb        $v0, 0x65($sp)
/* 113F40 800F5E50 8FA900B8 */  lw         $t1, 0xB8($sp)
/* 113F44 800F5E54 8D230354 */  lw         $v1, 0x354($t1)
/* 113F48 800F5E58 8C650000 */  lw         $a1, 0x0($v1)
/* 113F4C 800F5E5C 93A30064 */  lbu        $v1, 0x64($sp)
/* 113F50 800F5E60 90A40164 */  lbu        $a0, 0x164($a1)
/* 113F54 800F5E64 14830005 */  bne        $a0, $v1, .Lmenu_800F5E7C
/* 113F58 800F5E68 00403021 */   addu      $a2, $v0, $zero
/* 113F5C 800F5E6C 90A30165 */  lbu        $v1, 0x165($a1)
/* 113F60 800F5E70 93A20065 */  lbu        $v0, 0x65($sp)
/* 113F64 800F5E74 10620004 */  beq        $v1, $v0, .Lmenu_800F5E88
/* 113F68 800F5E78 2604010C */   addiu     $a0, $s0, 0x10C
.Lmenu_800F5E7C:
/* 113F6C 800F5E7C 24020001 */  addiu      $v0, $zero, 0x1
/* 113F70 800F5E80 ACC2000C */  sw         $v0, 0xC($a2)
/* 113F74 800F5E84 2604010C */  addiu      $a0, $s0, 0x10C
.Lmenu_800F5E88:
/* 113F78 800F5E88 27A50060 */  addiu      $a1, $sp, 0x60
/* 113F7C 800F5E8C 2402004B */  addiu      $v0, $zero, 0x4B
/* 113F80 800F5E90 A3A20064 */  sb         $v0, 0x64($sp)
/* 113F84 800F5E94 0C016427 */  jal        func_8005909C
/* 113F88 800F5E98 A3A20065 */   sb        $v0, 0x65($sp)
/* 113F8C 800F5E9C 8FAA00B8 */  lw         $t2, 0xB8($sp)
/* 113F90 800F5EA0 8D430354 */  lw         $v1, 0x354($t2)
/* 113F94 800F5EA4 8C650000 */  lw         $a1, 0x0($v1)
/* 113F98 800F5EA8 93A30064 */  lbu        $v1, 0x64($sp)
/* 113F9C 800F5EAC 90A40164 */  lbu        $a0, 0x164($a1)
/* 113FA0 800F5EB0 14830005 */  bne        $a0, $v1, .Lmenu_800F5EC8
/* 113FA4 800F5EB4 00403021 */   addu      $a2, $v0, $zero
/* 113FA8 800F5EB8 90A30165 */  lbu        $v1, 0x165($a1)
/* 113FAC 800F5EBC 93A20065 */  lbu        $v0, 0x65($sp)
/* 113FB0 800F5EC0 10620004 */  beq        $v1, $v0, .Lmenu_800F5ED4
/* 113FB4 800F5EC4 2604010C */   addiu     $a0, $s0, 0x10C
.Lmenu_800F5EC8:
/* 113FB8 800F5EC8 24020001 */  addiu      $v0, $zero, 0x1
/* 113FBC 800F5ECC ACC2000C */  sw         $v0, 0xC($a2)
/* 113FC0 800F5ED0 2604010C */  addiu      $a0, $s0, 0x10C
.Lmenu_800F5ED4:
/* 113FC4 800F5ED4 27A50060 */  addiu      $a1, $sp, 0x60
/* 113FC8 800F5ED8 24020042 */  addiu      $v0, $zero, 0x42
/* 113FCC 800F5EDC A3A20064 */  sb         $v0, 0x64($sp)
/* 113FD0 800F5EE0 0C016427 */  jal        func_8005909C
/* 113FD4 800F5EE4 A3A20065 */   sb        $v0, 0x65($sp)
/* 113FD8 800F5EE8 8FAB00B8 */  lw         $t3, 0xB8($sp)
/* 113FDC 800F5EEC 8D630354 */  lw         $v1, 0x354($t3)
/* 113FE0 800F5EF0 8C650000 */  lw         $a1, 0x0($v1)
/* 113FE4 800F5EF4 93A30064 */  lbu        $v1, 0x64($sp)
/* 113FE8 800F5EF8 90A40164 */  lbu        $a0, 0x164($a1)
/* 113FEC 800F5EFC 14830005 */  bne        $a0, $v1, .Lmenu_800F5F14
/* 113FF0 800F5F00 00403021 */   addu      $a2, $v0, $zero
/* 113FF4 800F5F04 90A30165 */  lbu        $v1, 0x165($a1)
/* 113FF8 800F5F08 93A20065 */  lbu        $v0, 0x65($sp)
/* 113FFC 800F5F0C 10620004 */  beq        $v1, $v0, .Lmenu_800F5F20
/* 114000 800F5F10 2604010C */   addiu     $a0, $s0, 0x10C
.Lmenu_800F5F14:
/* 114004 800F5F14 24020001 */  addiu      $v0, $zero, 0x1
/* 114008 800F5F18 ACC2000C */  sw         $v0, 0xC($a2)
/* 11400C 800F5F1C 2604010C */  addiu      $a0, $s0, 0x10C
.Lmenu_800F5F20:
/* 114010 800F5F20 27A50060 */  addiu      $a1, $sp, 0x60
/* 114014 800F5F24 2402004A */  addiu      $v0, $zero, 0x4A
/* 114018 800F5F28 A3A20064 */  sb         $v0, 0x64($sp)
/* 11401C 800F5F2C 24020054 */  addiu      $v0, $zero, 0x54
/* 114020 800F5F30 0C016427 */  jal        func_8005909C
/* 114024 800F5F34 A3A20065 */   sb        $v0, 0x65($sp)
/* 114028 800F5F38 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 11402C 800F5F3C 8D030354 */  lw         $v1, 0x354($t0)
/* 114030 800F5F40 8C650000 */  lw         $a1, 0x0($v1)
/* 114034 800F5F44 93A30064 */  lbu        $v1, 0x64($sp)
/* 114038 800F5F48 90A40164 */  lbu        $a0, 0x164($a1)
/* 11403C 800F5F4C 14830005 */  bne        $a0, $v1, .Lmenu_800F5F64
/* 114040 800F5F50 00403021 */   addu      $a2, $v0, $zero
/* 114044 800F5F54 90A30165 */  lbu        $v1, 0x165($a1)
/* 114048 800F5F58 93A20065 */  lbu        $v0, 0x65($sp)
/* 11404C 800F5F5C 10620004 */  beq        $v1, $v0, .Lmenu_800F5F70
/* 114050 800F5F60 2604010C */   addiu     $a0, $s0, 0x10C
.Lmenu_800F5F64:
/* 114054 800F5F64 24020001 */  addiu      $v0, $zero, 0x1
/* 114058 800F5F68 ACC2000C */  sw         $v0, 0xC($a2)
/* 11405C 800F5F6C 2604010C */  addiu      $a0, $s0, 0x10C
.Lmenu_800F5F70:
/* 114060 800F5F70 27A50060 */  addiu      $a1, $sp, 0x60
/* 114064 800F5F74 24020047 */  addiu      $v0, $zero, 0x47
/* 114068 800F5F78 A3A20064 */  sb         $v0, 0x64($sp)
/* 11406C 800F5F7C 2402004D */  addiu      $v0, $zero, 0x4D
/* 114070 800F5F80 0C016427 */  jal        func_8005909C
/* 114074 800F5F84 A3A20065 */   sb        $v0, 0x65($sp)
/* 114078 800F5F88 8FA900B8 */  lw         $t1, 0xB8($sp)
/* 11407C 800F5F8C 8D230354 */  lw         $v1, 0x354($t1)
/* 114080 800F5F90 8C650000 */  lw         $a1, 0x0($v1)
/* 114084 800F5F94 93A30064 */  lbu        $v1, 0x64($sp)
/* 114088 800F5F98 90A40164 */  lbu        $a0, 0x164($a1)
/* 11408C 800F5F9C 14830005 */  bne        $a0, $v1, .Lmenu_800F5FB4
/* 114090 800F5FA0 00403021 */   addu      $a2, $v0, $zero
/* 114094 800F5FA4 90A30165 */  lbu        $v1, 0x165($a1)
/* 114098 800F5FA8 93A20065 */  lbu        $v0, 0x65($sp)
/* 11409C 800F5FAC 10620004 */  beq        $v1, $v0, .Lmenu_800F5FC0
/* 1140A0 800F5FB0 2604010C */   addiu     $a0, $s0, 0x10C
.Lmenu_800F5FB4:
/* 1140A4 800F5FB4 24020001 */  addiu      $v0, $zero, 0x1
/* 1140A8 800F5FB8 ACC2000C */  sw         $v0, 0xC($a2)
/* 1140AC 800F5FBC 2604010C */  addiu      $a0, $s0, 0x10C
.Lmenu_800F5FC0:
/* 1140B0 800F5FC0 27A50060 */  addiu      $a1, $sp, 0x60
/* 1140B4 800F5FC4 24030042 */  addiu      $v1, $zero, 0x42
/* 1140B8 800F5FC8 24020056 */  addiu      $v0, $zero, 0x56
/* 1140BC 800F5FCC A3A30064 */  sb         $v1, 0x64($sp)
/* 1140C0 800F5FD0 A3A20065 */  sb         $v0, 0x65($sp)
/* 1140C4 800F5FD4 A3A30066 */  sb         $v1, 0x66($sp)
/* 1140C8 800F5FD8 0C016427 */  jal        func_8005909C
/* 1140CC 800F5FDC A3A00067 */   sb        $zero, 0x67($sp)
/* 1140D0 800F5FE0 8FAA00B8 */  lw         $t2, 0xB8($sp)
/* 1140D4 800F5FE4 8D430354 */  lw         $v1, 0x354($t2)
/* 1140D8 800F5FE8 8C650000 */  lw         $a1, 0x0($v1)
/* 1140DC 800F5FEC 93A30064 */  lbu        $v1, 0x64($sp)
/* 1140E0 800F5FF0 90A40164 */  lbu        $a0, 0x164($a1)
/* 1140E4 800F5FF4 14830009 */  bne        $a0, $v1, .Lmenu_800F601C
/* 1140E8 800F5FF8 00403021 */   addu      $a2, $v0, $zero
/* 1140EC 800F5FFC 90A30165 */  lbu        $v1, 0x165($a1)
/* 1140F0 800F6000 93A20065 */  lbu        $v0, 0x65($sp)
/* 1140F4 800F6004 14620006 */  bne        $v1, $v0, .Lmenu_800F6020
/* 1140F8 800F6008 24020001 */   addiu     $v0, $zero, 0x1
/* 1140FC 800F600C 90A30166 */  lbu        $v1, 0x166($a1)
/* 114100 800F6010 93A20066 */  lbu        $v0, 0x66($sp)
/* 114104 800F6014 10620003 */  beq        $v1, $v0, .Lmenu_800F6024
/* 114108 800F6018 00000000 */   nop
.Lmenu_800F601C:
/* 11410C 800F601C 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F6020:
/* 114110 800F6020 ACC2000C */  sw         $v0, 0xC($a2)
.Lmenu_800F6024:
/* 114114 800F6024 8FA400B8 */  lw         $a0, 0xB8($sp)
/* 114118 800F6028 0C03D81B */  jal        func_menu_800F606C
/* 11411C 800F602C 00000000 */   nop
/* 114120 800F6030 27A40040 */  addiu      $a0, $sp, 0x40
/* 114124 800F6034 0C0016E2 */  jal        func_80005B88
/* 114128 800F6038 24050002 */   addiu     $a1, $zero, 0x2
/* 11412C 800F603C 8FBF00B4 */  lw         $ra, 0xB4($sp)
/* 114130 800F6040 8FBE00B0 */  lw         $fp, 0xB0($sp)
/* 114134 800F6044 8FB700AC */  lw         $s7, 0xAC($sp)
/* 114138 800F6048 8FB600A8 */  lw         $s6, 0xA8($sp)
/* 11413C 800F604C 8FB500A4 */  lw         $s5, 0xA4($sp)
/* 114140 800F6050 8FB400A0 */  lw         $s4, 0xA0($sp)
/* 114144 800F6054 8FB3009C */  lw         $s3, 0x9C($sp)
/* 114148 800F6058 8FB20098 */  lw         $s2, 0x98($sp)
/* 11414C 800F605C 8FB10094 */  lw         $s1, 0x94($sp)
/* 114150 800F6060 8FB00090 */  lw         $s0, 0x90($sp)
/* 114154 800F6064 03E00008 */  jr         $ra
/* 114158 800F6068 27BD00B8 */   addiu     $sp, $sp, 0xB8

glabel func_menu_800F606C
/* 11415C 800F606C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 114160 800F6070 AFB10014 */  sw         $s1, 0x14($sp)
/* 114164 800F6074 00808821 */  addu       $s1, $a0, $zero
/* 114168 800F6078 AFBF001C */  sw         $ra, 0x1C($sp)
/* 11416C 800F607C AFB20018 */  sw         $s2, 0x18($sp)
/* 114170 800F6080 AFB00010 */  sw         $s0, 0x10($sp)
/* 114174 800F6084 8E240354 */  lw         $a0, 0x354($s1)
/* 114178 800F6088 9622028C */  lhu        $v0, 0x28C($s1)
/* 11417C 800F608C 2442FFEA */  addiu      $v0, $v0, -0x16
/* 114180 800F6090 2C420003 */  sltiu      $v0, $v0, 0x3
/* 114184 800F6094 10400019 */  beqz       $v0, .Lmenu_800F60FC
/* 114188 800F6098 24922624 */   addiu     $s2, $a0, 0x2624
/* 11418C 800F609C 8C850000 */  lw         $a1, 0x0($a0)
/* 114190 800F60A0 24843DAC */  addiu      $a0, $a0, 0x3DAC
/* 114194 800F60A4 0C016427 */  jal        func_8005909C
/* 114198 800F60A8 24A50031 */   addiu     $a1, $a1, 0x31
/* 11419C 800F60AC 02202021 */  addu       $a0, $s1, $zero
/* 1141A0 800F60B0 00408021 */  addu       $s0, $v0, $zero
/* 1141A4 800F60B4 0C03D846 */  jal        func_menu_800F6118
/* 1141A8 800F60B8 02002821 */   addu      $a1, $s0, $zero
/* 1141AC 800F60BC 9623028C */  lhu        $v1, 0x28C($s1)
/* 1141B0 800F60C0 2463FFEA */  addiu      $v1, $v1, -0x16
/* 1141B4 800F60C4 2C630002 */  sltiu      $v1, $v1, 0x2
/* 1141B8 800F60C8 1060000C */  beqz       $v1, .Lmenu_800F60FC
/* 1141BC 800F60CC AE2207A4 */   sw        $v0, 0x7A4($s1)
/* 1141C0 800F60D0 02202021 */  addu       $a0, $s1, $zero
/* 1141C4 800F60D4 02402821 */  addu       $a1, $s2, $zero
/* 1141C8 800F60D8 0C03D88F */  jal        func_menu_800F623C
/* 1141CC 800F60DC 02003021 */   addu      $a2, $s0, $zero
/* 1141D0 800F60E0 02202021 */  addu       $a0, $s1, $zero
/* 1141D4 800F60E4 02402821 */  addu       $a1, $s2, $zero
/* 1141D8 800F60E8 02003021 */  addu       $a2, $s0, $zero
/* 1141DC 800F60EC 0C03D85C */  jal        func_menu_800F6170
/* 1141E0 800F60F0 AE2207A8 */   sw        $v0, 0x7A8($s1)
/* 1141E4 800F60F4 0803D840 */  j          .Lmenu_800F6100
/* 1141E8 800F60F8 AE2207AC */   sw        $v0, 0x7AC($s1)
.Lmenu_800F60FC:
/* 1141EC 800F60FC 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800F6100:
/* 1141F0 800F6100 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1141F4 800F6104 8FB20018 */  lw         $s2, 0x18($sp)
/* 1141F8 800F6108 8FB10014 */  lw         $s1, 0x14($sp)
/* 1141FC 800F610C 8FB00010 */  lw         $s0, 0x10($sp)
/* 114200 800F6110 03E00008 */  jr         $ra
/* 114204 800F6114 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F6118
/* 114208 800F6118 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11420C 800F611C AFB00010 */  sw         $s0, 0x10($sp)
/* 114210 800F6120 00808021 */  addu       $s0, $a0, $zero
/* 114214 800F6124 AFBF0014 */  sw         $ra, 0x14($sp)
/* 114218 800F6128 8E040354 */  lw         $a0, 0x354($s0)
/* 11421C 800F612C 0C03B7CA */  jal        func_menu_800EDF28
/* 114220 800F6130 24843DAC */   addiu     $a0, $a0, 0x3DAC
/* 114224 800F6134 8E030354 */  lw         $v1, 0x354($s0)
/* 114228 800F6138 AC624624 */  sw         $v0, 0x4624($v1)
/* 11422C 800F613C 9602028C */  lhu        $v0, 0x28C($s0)
/* 114230 800F6140 8E030354 */  lw         $v1, 0x354($s0)
/* 114234 800F6144 2442FFEB */  addiu      $v0, $v0, -0x15
/* 114238 800F6148 AC624628 */  sw         $v0, 0x4628($v1)
/* 11423C 800F614C 8E040354 */  lw         $a0, 0x354($s0)
/* 114240 800F6150 8C834614 */  lw         $v1, 0x4614($a0)
/* 114244 800F6154 34631000 */  ori        $v1, $v1, 0x1000
/* 114248 800F6158 AC834614 */  sw         $v1, 0x4614($a0)
/* 11424C 800F615C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 114250 800F6160 8FB00010 */  lw         $s0, 0x10($sp)
/* 114254 800F6164 24020001 */  addiu      $v0, $zero, 0x1
/* 114258 800F6168 03E00008 */  jr         $ra
/* 11425C 800F616C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F6170
/* 114260 800F6170 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 114264 800F6174 AFB20020 */  sw         $s2, 0x20($sp)
/* 114268 800F6178 00809021 */  addu       $s2, $a0, $zero
/* 11426C 800F617C AFB30024 */  sw         $s3, 0x24($sp)
/* 114270 800F6180 00A09821 */  addu       $s3, $a1, $zero
/* 114274 800F6184 AFBF0028 */  sw         $ra, 0x28($sp)
/* 114278 800F6188 AFB1001C */  sw         $s1, 0x1C($sp)
/* 11427C 800F618C AFB00018 */  sw         $s0, 0x18($sp)
/* 114280 800F6190 88C7000C */  lwl        $a3, 0xC($a2)
/* 114284 800F6194 98C7000F */  lwr        $a3, 0xF($a2)
/* 114288 800F6198 88C80010 */  lwl        $t0, 0x10($a2)
/* 11428C 800F619C 98C80013 */  lwr        $t0, 0x13($a2)
/* 114290 800F61A0 ABA70010 */  swl        $a3, 0x10($sp)
/* 114294 800F61A4 BBA70013 */  swr        $a3, 0x13($sp)
/* 114298 800F61A8 ABA80014 */  swl        $t0, 0x14($sp)
/* 11429C 800F61AC BBA80017 */  swr        $t0, 0x17($sp)
/* 1142A0 800F61B0 93A20010 */  lbu        $v0, 0x10($sp)
/* 1142A4 800F61B4 10400011 */  beqz       $v0, .Lmenu_800F61FC
/* 1142A8 800F61B8 27A50010 */   addiu     $a1, $sp, 0x10
/* 1142AC 800F61BC 8E440354 */  lw         $a0, 0x354($s2)
/* 1142B0 800F61C0 0C016427 */  jal        func_8005909C
/* 1142B4 800F61C4 24843DAC */   addiu     $a0, $a0, 0x3DAC
/* 1142B8 800F61C8 8E440354 */  lw         $a0, 0x354($s2)
/* 1142BC 800F61CC 00402821 */  addu       $a1, $v0, $zero
/* 1142C0 800F61D0 0C03B7CA */  jal        func_menu_800EDF28
/* 1142C4 800F61D4 24843DAC */   addiu     $a0, $a0, 0x3DAC
/* 1142C8 800F61D8 02602021 */  addu       $a0, $s3, $zero
/* 1142CC 800F61DC 24100001 */  addiu      $s0, $zero, 0x1
/* 1142D0 800F61E0 0C03CA1E */  jal        func_menu_800F2878
/* 1142D4 800F61E4 00508004 */   sllv      $s0, $s0, $v0
/* 1142D8 800F61E8 02008821 */  addu       $s1, $s0, $zero
/* 1142DC 800F61EC 02028024 */  and        $s0, $s0, $v0
/* 1142E0 800F61F0 321000FF */  andi       $s0, $s0, 0xFF
/* 1142E4 800F61F4 12000003 */  beqz       $s0, .Lmenu_800F6204
/* 1142E8 800F61F8 02602021 */   addu      $a0, $s3, $zero
.Lmenu_800F61FC:
/* 1142EC 800F61FC 0803D888 */  j          .Lmenu_800F6220
/* 1142F0 800F6200 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F6204:
/* 1142F4 800F6204 0C03CA27 */  jal        func_menu_800F289C
/* 1142F8 800F6208 322500FF */   andi      $a1, $s1, 0xFF
/* 1142FC 800F620C 8E440354 */  lw         $a0, 0x354($s2)
/* 114300 800F6210 8C834614 */  lw         $v1, 0x4614($a0)
/* 114304 800F6214 24020001 */  addiu      $v0, $zero, 0x1
/* 114308 800F6218 34630004 */  ori        $v1, $v1, 0x4
/* 11430C 800F621C AC834614 */  sw         $v1, 0x4614($a0)
.Lmenu_800F6220:
/* 114310 800F6220 8FBF0028 */  lw         $ra, 0x28($sp)
/* 114314 800F6224 8FB30024 */  lw         $s3, 0x24($sp)
/* 114318 800F6228 8FB20020 */  lw         $s2, 0x20($sp)
/* 11431C 800F622C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 114320 800F6230 8FB00018 */  lw         $s0, 0x18($sp)
/* 114324 800F6234 03E00008 */  jr         $ra
/* 114328 800F6238 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F623C
/* 11432C 800F623C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 114330 800F6240 AFB20018 */  sw         $s2, 0x18($sp)
/* 114334 800F6244 00809021 */  addu       $s2, $a0, $zero
/* 114338 800F6248 AFB40020 */  sw         $s4, 0x20($sp)
/* 11433C 800F624C AFBF0024 */  sw         $ra, 0x24($sp)
/* 114340 800F6250 AFB3001C */  sw         $s3, 0x1C($sp)
/* 114344 800F6254 AFB10014 */  sw         $s1, 0x14($sp)
/* 114348 800F6258 AFB00010 */  sw         $s0, 0x10($sp)
/* 11434C 800F625C 9643028C */  lhu        $v1, 0x28C($s2)
/* 114350 800F6260 24020016 */  addiu      $v0, $zero, 0x16
/* 114354 800F6264 14620013 */  bne        $v1, $v0, .Lmenu_800F62B4
/* 114358 800F6268 00A0A021 */   addu      $s4, $a1, $zero
/* 11435C 800F626C 8CC60058 */  lw         $a2, 0x58($a2)
/* 114360 800F6270 2413FFFF */  addiu      $s3, $zero, -0x1
/* 114364 800F6274 10D3000F */  beq        $a2, $s3, .Lmenu_800F62B4
/* 114368 800F6278 AE4607A0 */   sw        $a2, 0x7A0($s2)
/* 11436C 800F627C 02802021 */  addu       $a0, $s4, $zero
/* 114370 800F6280 24100001 */  addiu      $s0, $zero, 0x1
/* 114374 800F6284 0C03CA0F */  jal        func_menu_800F283C
/* 114378 800F6288 00D08004 */   sllv      $s0, $s0, $a2
/* 11437C 800F628C 00501024 */  and        $v0, $v0, $s0
/* 114380 800F6290 304200FF */  andi       $v0, $v0, 0xFF
/* 114384 800F6294 14400006 */  bnez       $v0, .Lmenu_800F62B0
/* 114388 800F6298 02008821 */   addu      $s1, $s0, $zero
/* 11438C 800F629C 02802021 */  addu       $a0, $s4, $zero
/* 114390 800F62A0 0C03CA21 */  jal        func_menu_800F2884
/* 114394 800F62A4 322500FF */   andi      $a1, $s1, 0xFF
/* 114398 800F62A8 0803D8AE */  j          .Lmenu_800F62B8
/* 11439C 800F62AC 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800F62B0:
/* 1143A0 800F62B0 AE5307A0 */  sw         $s3, 0x7A0($s2)
.Lmenu_800F62B4:
/* 1143A4 800F62B4 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800F62B8:
/* 1143A8 800F62B8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1143AC 800F62BC 8FB40020 */  lw         $s4, 0x20($sp)
/* 1143B0 800F62C0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1143B4 800F62C4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1143B8 800F62C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1143BC 800F62CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1143C0 800F62D0 03E00008 */  jr         $ra
/* 1143C4 800F62D4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F62D8
/* 1143C8 800F62D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1143CC 800F62DC AFB00010 */  sw         $s0, 0x10($sp)
/* 1143D0 800F62E0 00808021 */  addu       $s0, $a0, $zero
/* 1143D4 800F62E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1143D8 800F62E8 8E040354 */  lw         $a0, 0x354($s0)
/* 1143DC 800F62EC 0C0401B4 */  jal        func_menu_801006D0
/* 1143E0 800F62F0 24840004 */   addiu     $a0, $a0, 0x4
/* 1143E4 800F62F4 8E020354 */  lw         $v0, 0x354($s0)
/* 1143E8 800F62F8 24440004 */  addiu      $a0, $v0, 0x4
/* 1143EC 800F62FC 8C820008 */  lw         $v0, 0x8($a0)
/* 1143F0 800F6300 5040000D */  beql       $v0, $zero, .Lmenu_800F6338
/* 1143F4 800F6304 AC800008 */   sw        $zero, 0x8($a0)
/* 1143F8 800F6308 0C0401BF */  jal        func_menu_801006FC
/* 1143FC 800F630C 00000000 */   nop
/* 114400 800F6310 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 114404 800F6314 24030002 */  addiu      $v1, $zero, 0x2
/* 114408 800F6318 14430004 */  bne        $v0, $v1, .Lmenu_800F632C
/* 11440C 800F631C 00000000 */   nop
/* 114410 800F6320 8E020354 */  lw         $v0, 0x354($s0)
/* 114414 800F6324 0803D8E1 */  j          .Lmenu_800F6384
/* 114418 800F6328 AC40000C */   sw        $zero, 0xC($v0)
.Lmenu_800F632C:
/* 11441C 800F632C 8E020354 */  lw         $v0, 0x354($s0)
/* 114420 800F6330 0803D8E5 */  j          .Lmenu_800F6394
/* 114424 800F6334 AC40000C */   sw        $zero, 0xC($v0)
.Lmenu_800F6338:
/* 114428 800F6338 8E0307A0 */  lw         $v1, 0x7A0($s0)
/* 11442C 800F633C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 114430 800F6340 10620009 */  beq        $v1, $v0, .Lmenu_800F6368
/* 114434 800F6344 24020006 */   addiu     $v0, $zero, 0x6
/* 114438 800F6348 14620004 */  bne        $v1, $v0, .Lmenu_800F635C
/* 11443C 800F634C 2405001B */   addiu     $a1, $zero, 0x1B
/* 114440 800F6350 8E040354 */  lw         $a0, 0x354($s0)
/* 114444 800F6354 0803D8E3 */  j          .Lmenu_800F638C
/* 114448 800F6358 00000000 */   nop
.Lmenu_800F635C:
/* 11444C 800F635C 8E040354 */  lw         $a0, 0x354($s0)
/* 114450 800F6360 0803D8E3 */  j          .Lmenu_800F638C
/* 114454 800F6364 2405001A */   addiu     $a1, $zero, 0x1A
.Lmenu_800F6368:
/* 114458 800F6368 9603028C */  lhu        $v1, 0x28C($s0)
/* 11445C 800F636C 2402001B */  addiu      $v0, $zero, 0x1B
/* 114460 800F6370 14620004 */  bne        $v1, $v0, .Lmenu_800F6384
/* 114464 800F6374 24050027 */   addiu     $a1, $zero, 0x27
/* 114468 800F6378 8E040354 */  lw         $a0, 0x354($s0)
/* 11446C 800F637C 0803D8E3 */  j          .Lmenu_800F638C
/* 114470 800F6380 00000000 */   nop
.Lmenu_800F6384:
/* 114474 800F6384 8E040354 */  lw         $a0, 0x354($s0)
/* 114478 800F6388 24050002 */  addiu      $a1, $zero, 0x2
.Lmenu_800F638C:
/* 11447C 800F638C 0C0401A6 */  jal        func_menu_80100698
/* 114480 800F6390 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800F6394:
/* 114484 800F6394 8E0207A4 */  lw         $v0, 0x7A4($s0)
/* 114488 800F6398 14400007 */  bnez       $v0, .Lmenu_800F63B8
/* 11448C 800F639C 00000000 */   nop
/* 114490 800F63A0 8E0207A8 */  lw         $v0, 0x7A8($s0)
/* 114494 800F63A4 14400004 */  bnez       $v0, .Lmenu_800F63B8
/* 114498 800F63A8 00000000 */   nop
/* 11449C 800F63AC 8E0207AC */  lw         $v0, 0x7AC($s0)
/* 1144A0 800F63B0 10400005 */  beqz       $v0, .Lmenu_800F63C8
/* 1144A4 800F63B4 00000000 */   nop
.Lmenu_800F63B8:
/* 1144A8 800F63B8 8E030354 */  lw         $v1, 0x354($s0)
/* 1144AC 800F63BC 8C624614 */  lw         $v0, 0x4614($v1)
/* 1144B0 800F63C0 34420800 */  ori        $v0, $v0, 0x800
/* 1144B4 800F63C4 AC624614 */  sw         $v0, 0x4614($v1)
.Lmenu_800F63C8:
/* 1144B8 800F63C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1144BC 800F63CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1144C0 800F63D0 03E00008 */  jr         $ra
/* 1144C4 800F63D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F63D8
/* 1144C8 800F63D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1144CC 800F63DC AFBF0010 */  sw         $ra, 0x10($sp)
/* 1144D0 800F63E0 9483028C */  lhu        $v1, 0x28C($a0)
/* 1144D4 800F63E4 24020025 */  addiu      $v0, $zero, 0x25
/* 1144D8 800F63E8 14620002 */  bne        $v1, $v0, .Lmenu_800F63F4
/* 1144DC 800F63EC 24020001 */   addiu     $v0, $zero, 0x1
/* 1144E0 800F63F0 AC820634 */  sw         $v0, 0x634($a0)
.Lmenu_800F63F4:
/* 1144E4 800F63F4 0C03E681 */  jal        func_menu_800F9A04
/* 1144E8 800F63F8 00000000 */   nop
/* 1144EC 800F63FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1144F0 800F6400 03E00008 */  jr         $ra
/* 1144F4 800F6404 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F6408
/* 1144F8 800F6408 27BDFD88 */  addiu      $sp, $sp, -0x278
/* 1144FC 800F640C AFB50264 */  sw         $s5, 0x264($sp)
/* 114500 800F6410 0080A821 */  addu       $s5, $a0, $zero
/* 114504 800F6414 AFB20258 */  sw         $s2, 0x258($sp)
/* 114508 800F6418 00009021 */  addu       $s2, $zero, $zero
/* 11450C 800F641C AFB40260 */  sw         $s4, 0x260($sp)
/* 114510 800F6420 AFBF0270 */  sw         $ra, 0x270($sp)
/* 114514 800F6424 AFB7026C */  sw         $s7, 0x26C($sp)
/* 114518 800F6428 AFB60268 */  sw         $s6, 0x268($sp)
/* 11451C 800F642C AFB3025C */  sw         $s3, 0x25C($sp)
/* 114520 800F6430 AFB10254 */  sw         $s1, 0x254($sp)
/* 114524 800F6434 AFB00250 */  sw         $s0, 0x250($sp)
/* 114528 800F6438 96A3028C */  lhu        $v1, 0x28C($s5)
/* 11452C 800F643C 2402001A */  addiu      $v0, $zero, 0x1A
/* 114530 800F6440 14620033 */  bne        $v1, $v0, .Lmenu_800F6510
/* 114534 800F6444 0240A021 */   addu      $s4, $s2, $zero
/* 114538 800F6448 8EA40354 */  lw         $a0, 0x354($s5)
/* 11453C 800F644C 8C850000 */  lw         $a1, 0x0($a0)
/* 114540 800F6450 90A20164 */  lbu        $v0, 0x164($a1)
/* 114544 800F6454 1040002E */  beqz       $v0, .Lmenu_800F6510
/* 114548 800F6458 24843CBC */   addiu     $a0, $a0, 0x3CBC
/* 11454C 800F645C 0C016427 */  jal        func_8005909C
/* 114550 800F6460 24A50164 */   addiu     $a1, $a1, 0x164
/* 114554 800F6464 2445001A */  addiu      $a1, $v0, 0x1A
/* 114558 800F6468 02408821 */  addu       $s1, $s2, $zero
/* 11455C 800F646C 27B00230 */  addiu      $s0, $sp, 0x230
/* 114560 800F6470 8EA40354 */  lw         $a0, 0x354($s5)
/* 114564 800F6474 3C17800D */  lui        $s7, %hi(D_menu_800CC2A8)
/* 114568 800F6478 0C016427 */  jal        func_8005909C
/* 11456C 800F647C 24843D78 */   addiu     $a0, $a0, 0x3D78
/* 114570 800F6480 8EA30354 */  lw         $v1, 0x354($s5)
/* 114574 800F6484 0040B021 */  addu       $s6, $v0, $zero
/* 114578 800F6488 24732178 */  addiu      $s3, $v1, 0x2178
.Lmenu_800F648C:
/* 11457C 800F648C 16800022 */  bnez       $s4, .Lmenu_800F6518
/* 114580 800F6490 00000000 */   nop
/* 114584 800F6494 8E620000 */  lw         $v0, 0x0($s3)
/* 114588 800F6498 0222102B */  sltu       $v0, $s1, $v0
/* 11458C 800F649C 10400018 */  beqz       $v0, .Lmenu_800F6500
/* 114590 800F64A0 02602021 */   addu      $a0, $s3, $zero
/* 114594 800F64A4 0C03BB67 */  jal        func_menu_800EED9C
/* 114598 800F64A8 02202821 */   addu      $a1, $s1, $zero
/* 11459C 800F64AC 00409021 */  addu       $s2, $v0, $zero
/* 1145A0 800F64B0 02402021 */  addu       $a0, $s2, $zero
/* 1145A4 800F64B4 0C03BC08 */  jal        func_menu_800EF020
/* 1145A8 800F64B8 02002821 */   addu      $a1, $s0, $zero
/* 1145AC 800F64BC 02002021 */  addu       $a0, $s0, $zero
/* 1145B0 800F64C0 26C50018 */  addiu      $a1, $s6, 0x18
/* 1145B4 800F64C4 0C0006B2 */  jal        func_80001AC8
/* 1145B8 800F64C8 24060008 */   addiu     $a2, $zero, 0x8
/* 1145BC 800F64CC 5440FFEF */  bnel       $v0, $zero, .Lmenu_800F648C
/* 1145C0 800F64D0 26310001 */   addiu     $s1, $s1, 0x1
/* 1145C4 800F64D4 02402021 */  addu       $a0, $s2, $zero
/* 1145C8 800F64D8 0C03BC1C */  jal        func_menu_800EF070
/* 1145CC 800F64DC 02002821 */   addu      $a1, $s0, $zero
/* 1145D0 800F64E0 02002021 */  addu       $a0, $s0, $zero
/* 1145D4 800F64E4 26E5C2A8 */  addiu      $a1, $s7, %lo(D_menu_800CC2A8)
/* 1145D8 800F64E8 0C0006B2 */  jal        func_80001AC8
/* 1145DC 800F64EC 24060008 */   addiu     $a2, $zero, 0x8
/* 1145E0 800F64F0 50400001 */  beql       $v0, $zero, .Lmenu_800F64F8
/* 1145E4 800F64F4 24140001 */   addiu     $s4, $zero, 0x1
.Lmenu_800F64F8:
/* 1145E8 800F64F8 0803D923 */  j          .Lmenu_800F648C
/* 1145EC 800F64FC 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800F6500:
/* 1145F0 800F6500 52800005 */  beql       $s4, $zero, .Lmenu_800F6518
/* 1145F4 800F6504 00009021 */   addu      $s2, $zero, $zero
/* 1145F8 800F6508 0803D946 */  j          .Lmenu_800F6518
/* 1145FC 800F650C 00000000 */   nop
.Lmenu_800F6510:
/* 114600 800F6510 8EA20354 */  lw         $v0, 0x354($s5)
/* 114604 800F6514 8C522CA4 */  lw         $s2, 0x2CA4($v0)
.Lmenu_800F6518:
/* 114608 800F6518 12400054 */  beqz       $s2, .Lmenu_800F666C
/* 11460C 800F651C 02402021 */   addu      $a0, $s2, $zero
/* 114610 800F6520 27B00028 */  addiu      $s0, $sp, 0x28
/* 114614 800F6524 0C03BBDE */  jal        func_menu_800EEF78
/* 114618 800F6528 02002821 */   addu      $a1, $s0, $zero
/* 11461C 800F652C 8EA40354 */  lw         $a0, 0x354($s5)
/* 114620 800F6530 02002821 */  addu       $a1, $s0, $zero
/* 114624 800F6534 0C036F3B */  jal        func_menu_800DBCEC
/* 114628 800F6538 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11462C 800F653C 8EA20354 */  lw         $v0, 0x354($s5)
/* 114630 800F6540 24442CF8 */  addiu      $a0, $v0, 0x2CF8
/* 114634 800F6544 8C8200D4 */  lw         $v0, 0xD4($a0)
/* 114638 800F6548 10400049 */  beqz       $v0, .Lmenu_800F6670
/* 11463C 800F654C 00001021 */   addu      $v0, $zero, $zero
/* 114640 800F6550 0C03699C */  jal        func_menu_800DA670
/* 114644 800F6554 00002821 */   addu      $a1, $zero, $zero
/* 114648 800F6558 24050001 */  addiu      $a1, $zero, 0x1
/* 11464C 800F655C 8EA40354 */  lw         $a0, 0x354($s5)
/* 114650 800F6560 2406007F */  addiu      $a2, $zero, 0x7F
/* 114654 800F6564 0C036A24 */  jal        func_menu_800DA890
/* 114658 800F6568 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11465C 800F656C 8EA20354 */  lw         $v0, 0x354($s5)
/* 114660 800F6570 02402021 */  addu       $a0, $s2, $zero
/* 114664 800F6574 24423D3C */  addiu      $v0, $v0, 0x3D3C
/* 114668 800F6578 AFA20010 */  sw         $v0, 0x10($sp)
/* 11466C 800F657C 8EA20354 */  lw         $v0, 0x354($s5)
/* 114670 800F6580 27B00230 */  addiu      $s0, $sp, 0x230
/* 114674 800F6584 24422CF8 */  addiu      $v0, $v0, 0x2CF8
/* 114678 800F6588 AFA20014 */  sw         $v0, 0x14($sp)
/* 11467C 800F658C 8EA20354 */  lw         $v0, 0x354($s5)
/* 114680 800F6590 02002821 */  addu       $a1, $s0, $zero
/* 114684 800F6594 AFA0001C */  sw         $zero, 0x1C($sp)
/* 114688 800F6598 24422D04 */  addiu      $v0, $v0, 0x2D04
/* 11468C 800F659C 0C03BC08 */  jal        func_menu_800EF020
/* 114690 800F65A0 AFA20018 */   sw        $v0, 0x18($sp)
/* 114694 800F65A4 27A40020 */  addiu      $a0, $sp, 0x20
/* 114698 800F65A8 02002821 */  addu       $a1, $s0, $zero
/* 11469C 800F65AC 0C000708 */  jal        func_80001C20
/* 1146A0 800F65B0 24060008 */   addiu     $a2, $zero, 0x8
/* 1146A4 800F65B4 8EA40354 */  lw         $a0, 0x354($s5)
/* 1146A8 800F65B8 02002821 */  addu       $a1, $s0, $zero
/* 1146AC 800F65BC 0C010F4E */  jal        func_80043D38
/* 1146B0 800F65C0 24843D3C */   addiu     $a0, $a0, 0x3D3C
/* 1146B4 800F65C4 1440001D */  bnez       $v0, .Lmenu_800F663C
/* 1146B8 800F65C8 26B00658 */   addiu     $s0, $s5, 0x658
/* 1146BC 800F65CC 27A40238 */  addiu      $a0, $sp, 0x238
/* 1146C0 800F65D0 3C118003 */  lui        $s1, %hi(D_8002FB34)
/* 1146C4 800F65D4 2630FB34 */  addiu      $s0, $s1, %lo(D_8002FB34)
/* 1146C8 800F65D8 0C0006FA */  jal        func_80001BE8
/* 1146CC 800F65DC 02002821 */   addu      $a1, $s0, $zero
/* 1146D0 800F65E0 3C02800D */  lui        $v0, %hi(D_menu_800CC2B0)
/* 1146D4 800F65E4 2445C2B0 */  addiu      $a1, $v0, %lo(D_menu_800CC2B0)
/* 1146D8 800F65E8 10A00005 */  beqz       $a1, .Lmenu_800F6600
/* 1146DC 800F65EC 02002021 */   addu      $a0, $s0, $zero
/* 1146E0 800F65F0 0C000708 */  jal        func_80001C20
/* 1146E4 800F65F4 24060100 */   addiu     $a2, $zero, 0x100
/* 1146E8 800F65F8 0803D981 */  j          .Lmenu_800F6604
/* 1146EC 800F65FC A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F6600:
/* 1146F0 800F6600 A220FB34 */  sb         $zero, %lo(D_8002FB34)($s1)
.Lmenu_800F6604:
/* 1146F4 800F6604 27A50230 */  addiu      $a1, $sp, 0x230
/* 1146F8 800F6608 27A60248 */  addiu      $a2, $sp, 0x248
/* 1146FC 800F660C 8EA40354 */  lw         $a0, 0x354($s5)
/* 114700 800F6610 27A7024C */  addiu      $a3, $sp, 0x24C
/* 114704 800F6614 0C010DC4 */  jal        func_80043710
/* 114708 800F6618 24843D3C */   addiu     $a0, $a0, 0x3D3C
/* 11470C 800F661C 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 114710 800F6620 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 114714 800F6624 02002021 */  addu       $a0, $s0, $zero
/* 114718 800F6628 27A50238 */  addiu      $a1, $sp, 0x238
/* 11471C 800F662C 0C000708 */  jal        func_80001C20
/* 114720 800F6630 24060100 */   addiu     $a2, $zero, 0x100
/* 114724 800F6634 A20000FF */  sb         $zero, 0xFF($s0)
/* 114728 800F6638 26B00658 */  addiu      $s0, $s5, 0x658
.Lmenu_800F663C:
/* 11472C 800F663C 02002021 */  addu       $a0, $s0, $zero
/* 114730 800F6640 0C03B5A2 */  jal        func_menu_800ED688
/* 114734 800F6644 27A50010 */   addiu     $a1, $sp, 0x10
/* 114738 800F6648 8E020034 */  lw         $v0, 0x34($s0)
/* 11473C 800F664C 3C05FFFE */  lui        $a1, (0xFFFEFFFF >> 16)
/* 114740 800F6650 8C440004 */  lw         $a0, 0x4($v0)
/* 114744 800F6654 34A5FFFF */  ori        $a1, $a1, (0xFFFEFFFF & 0xFFFF)
/* 114748 800F6658 8C83005C */  lw         $v1, 0x5C($a0)
/* 11474C 800F665C 24020001 */  addiu      $v0, $zero, 0x1
/* 114750 800F6660 00651824 */  and        $v1, $v1, $a1
/* 114754 800F6664 0803D99C */  j          .Lmenu_800F6670
/* 114758 800F6668 AC83005C */   sw        $v1, 0x5C($a0)
.Lmenu_800F666C:
/* 11475C 800F666C 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800F6670:
/* 114760 800F6670 8FBF0270 */  lw         $ra, 0x270($sp)
/* 114764 800F6674 8FB7026C */  lw         $s7, 0x26C($sp)
/* 114768 800F6678 8FB60268 */  lw         $s6, 0x268($sp)
/* 11476C 800F667C 8FB50264 */  lw         $s5, 0x264($sp)
/* 114770 800F6680 8FB40260 */  lw         $s4, 0x260($sp)
/* 114774 800F6684 8FB3025C */  lw         $s3, 0x25C($sp)
/* 114778 800F6688 8FB20258 */  lw         $s2, 0x258($sp)
/* 11477C 800F668C 8FB10254 */  lw         $s1, 0x254($sp)
/* 114780 800F6690 8FB00250 */  lw         $s0, 0x250($sp)
/* 114784 800F6694 03E00008 */  jr         $ra
/* 114788 800F6698 27BD0278 */   addiu     $sp, $sp, 0x278
