.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800CF400
/* 857C0 800CF400 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 857C4 800CF404 AFBF0010 */  sw         $ra, 0x10($sp)
/* 857C8 800CF408 8CA2002C */  lw         $v0, 0x2C($a1)
/* 857CC 800CF40C 14400005 */  bnez       $v0, .Lrace_800CF424
/* 857D0 800CF410 00000000 */   nop
/* 857D4 800CF414 0C033D0E */  jal        func_race_800CF438
/* 857D8 800CF418 00000000 */   nop
/* 857DC 800CF41C 08033D0B */  j          .Lrace_800CF42C
/* 857E0 800CF420 00000000 */   nop
.Lrace_800CF424:
/* 857E4 800CF424 0C033FEA */  jal        func_race_800CFFA8
/* 857E8 800CF428 00000000 */   nop
.Lrace_800CF42C:
/* 857EC 800CF42C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 857F0 800CF430 03E00008 */  jr         $ra
/* 857F4 800CF434 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800CF438
/* 857F8 800CF438 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* 857FC 800CF43C AFB1007C */  sw         $s1, 0x7C($sp)
/* 85800 800CF440 00A08821 */  addu       $s1, $a1, $zero
/* 85804 800CF444 AFB30084 */  sw         $s3, 0x84($sp)
/* 85808 800CF448 00009821 */  addu       $s3, $zero, $zero
/* 8580C 800CF44C AFB60090 */  sw         $s6, 0x90($sp)
/* 85810 800CF450 0260B021 */  addu       $s6, $s3, $zero
/* 85814 800CF454 AFB70094 */  sw         $s7, 0x94($sp)
/* 85818 800CF458 0260B821 */  addu       $s7, $s3, $zero
/* 8581C 800CF45C AFBF009C */  sw         $ra, 0x9C($sp)
/* 85820 800CF460 AFBE0098 */  sw         $fp, 0x98($sp)
/* 85824 800CF464 AFB5008C */  sw         $s5, 0x8C($sp)
/* 85828 800CF468 AFB40088 */  sw         $s4, 0x88($sp)
/* 8582C 800CF46C AFB20080 */  sw         $s2, 0x80($sp)
/* 85830 800CF470 AFB00078 */  sw         $s0, 0x78($sp)
/* 85834 800CF474 F7BA00B8 */  sdc1       $f26, 0xB8($sp)
/* 85838 800CF478 F7B800B0 */  sdc1       $f24, 0xB0($sp)
/* 8583C 800CF47C F7B600A8 */  sdc1       $f22, 0xA8($sp)
/* 85840 800CF480 F7B400A0 */  sdc1       $f20, 0xA0($sp)
/* 85844 800CF484 8E230018 */  lw         $v1, 0x18($s1)
/* 85848 800CF488 3C01800D */  lui        $at, %hi(D_race_800CA7D0)
/* 8584C 800CF48C C422A7D0 */  lwc1       $f2, %lo(D_race_800CA7D0)($at)
/* 85850 800CF490 8E22001C */  lw         $v0, 0x1C($s1)
/* 85854 800CF494 44830000 */  mtc1       $v1, $f0
/* 85858 800CF498 46800020 */  cvt.s.w    $f0, $f0
/* 8585C 800CF49C 10400008 */  beqz       $v0, .Lrace_800CF4C0
/* 85860 800CF4A0 46001683 */   div.s     $f26, $f2, $f0
/* 85864 800CF4A4 3C01800D */  lui        $at, %hi(D_race_800CA7D4)
/* 85868 800CF4A8 C420A7D4 */  lwc1       $f0, %lo(D_race_800CA7D4)($at)
/* 8586C 800CF4AC 461A0003 */  div.s      $f0, $f0, $f26
/* 85870 800CF4B0 4600010D */  trunc.w.s  $f4, $f0
/* 85874 800CF4B4 44022000 */  mfc1       $v0, $f4
/* 85878 800CF4B8 08033D32 */  j          .Lrace_800CF4C8
/* 8587C 800CF4BC 245E0001 */   addiu     $fp, $v0, 0x1
.Lrace_800CF4C0:
/* 85880 800CF4C0 00031042 */  srl        $v0, $v1, 1
/* 85884 800CF4C4 245EFFFF */  addiu      $fp, $v0, -0x1
.Lrace_800CF4C8:
/* 85888 800CF4C8 8E240018 */  lw         $a0, 0x18($s1)
/* 8588C 800CF4CC 03C40018 */  mult       $fp, $a0
/* 85890 800CF4D0 00001812 */  mflo       $v1
/* 85894 800CF4D4 24780002 */  addiu      $t8, $v1, 0x2
/* 85898 800CF4D8 AFB80060 */  sw         $t8, 0x60($sp)
/* 8589C 800CF4DC 8E220020 */  lw         $v0, 0x20($s1)
/* 858A0 800CF4E0 0003C040 */  sll        $t8, $v1, 1
/* 858A4 800CF4E4 14400005 */  bnez       $v0, .Lrace_800CF4FC
/* 858A8 800CF4E8 AFB80064 */   sw        $t8, 0x64($sp)
/* 858AC 800CF4EC 24630001 */  addiu      $v1, $v1, 0x1
/* 858B0 800CF4F0 AFA30060 */  sw         $v1, 0x60($sp)
/* 858B4 800CF4F4 0304C023 */  subu       $t8, $t8, $a0
/* 858B8 800CF4F8 AFB80064 */  sw         $t8, 0x64($sp)
.Lrace_800CF4FC:
/* 858BC 800CF4FC 8E220024 */  lw         $v0, 0x24($s1)
/* 858C0 800CF500 14400007 */  bnez       $v0, .Lrace_800CF520
/* 858C4 800CF504 001E1040 */   sll       $v0, $fp, 1
/* 858C8 800CF508 8FB80060 */  lw         $t8, 0x60($sp)
/* 858CC 800CF50C 2718FFFF */  addiu      $t8, $t8, -0x1
/* 858D0 800CF510 AFB80060 */  sw         $t8, 0x60($sp)
/* 858D4 800CF514 8FB80064 */  lw         $t8, 0x64($sp)
/* 858D8 800CF518 0304C023 */  subu       $t8, $t8, $a0
/* 858DC 800CF51C AFB80064 */  sw         $t8, 0x64($sp)
.Lrace_800CF520:
/* 858E0 800CF520 8E240004 */  lw         $a0, 0x4($s1)
/* 858E4 800CF524 96260030 */  lhu        $a2, 0x30($s1)
/* 858E8 800CF528 8C83003C */  lw         $v1, 0x3C($a0)
/* 858EC 800CF52C 8FB80064 */  lw         $t8, 0x64($sp)
/* 858F0 800CF530 84670048 */  lh         $a3, 0x48($v1)
/* 858F4 800CF534 24420006 */  addiu      $v0, $v0, 0x6
/* 858F8 800CF538 AFA20014 */  sw         $v0, 0x14($sp)
/* 858FC 800CF53C 24020001 */  addiu      $v0, $zero, 0x1
/* 85900 800CF540 AFB80010 */  sw         $t8, 0x10($sp)
/* 85904 800CF544 AFA20018 */  sw         $v0, 0x18($sp)
/* 85908 800CF548 8E250000 */  lw         $a1, 0x0($s1)
/* 8590C 800CF54C 8C62004C */  lw         $v0, 0x4C($v1)
/* 85910 800CF550 00872021 */  addu       $a0, $a0, $a3
/* 85914 800CF554 8FA70060 */  lw         $a3, 0x60($sp)
/* 85918 800CF558 0040F809 */  jalr       $v0
/* 8591C 800CF55C 00000000 */   nop
/* 85920 800CF560 8E220028 */  lw         $v0, 0x28($s1)
/* 85924 800CF564 10400004 */  beqz       $v0, .Lrace_800CF578
/* 85928 800CF568 24180002 */   addiu     $t8, $zero, 0x2
/* 8592C 800CF56C AFB8006C */  sw         $t8, 0x6C($sp)
/* 85930 800CF570 08033D61 */  j          .Lrace_800CF584
/* 85934 800CF574 24180001 */   addiu     $t8, $zero, 0x1
.Lrace_800CF578:
/* 85938 800CF578 24180001 */  addiu      $t8, $zero, 0x1
/* 8593C 800CF57C AFB8006C */  sw         $t8, 0x6C($sp)
/* 85940 800CF580 24180002 */  addiu      $t8, $zero, 0x2
.Lrace_800CF584:
/* 85944 800CF584 AFA00068 */  sw         $zero, 0x68($sp)
/* 85948 800CF588 AFB80070 */  sw         $t8, 0x70($sp)
/* 8594C 800CF58C 240200FF */  addiu      $v0, $zero, 0xFF
/* 85950 800CF590 A3A20050 */  sb         $v0, 0x50($sp)
/* 85954 800CF594 A3A20051 */  sb         $v0, 0x51($sp)
/* 85958 800CF598 A3A20052 */  sb         $v0, 0x52($sp)
/* 8595C 800CF59C A3A20053 */  sb         $v0, 0x53($sp)
/* 85960 800CF5A0 AFA00048 */  sw         $zero, 0x48($sp)
/* 85964 800CF5A4 AFA0004C */  sw         $zero, 0x4C($sp)
/* 85968 800CF5A8 8E230004 */  lw         $v1, 0x4($s1)
/* 8596C 800CF5AC 8C62003C */  lw         $v0, 0x3C($v1)
/* 85970 800CF5B0 27A50058 */  addiu      $a1, $sp, 0x58
/* 85974 800CF5B4 84440058 */  lh         $a0, 0x58($v0)
/* 85978 800CF5B8 8C42005C */  lw         $v0, 0x5C($v0)
/* 8597C 800CF5BC 0040F809 */  jalr       $v0
/* 85980 800CF5C0 00642021 */   addu      $a0, $v1, $a0
/* 85984 800CF5C4 8E220020 */  lw         $v0, 0x20($s1)
/* 85988 800CF5C8 10400032 */  beqz       $v0, .Lrace_800CF694
/* 8598C 800CF5CC 02602821 */   addu      $a1, $s3, $zero
/* 85990 800CF5D0 C6200008 */  lwc1       $f0, 0x8($s1)
/* 85994 800CF5D4 E7A00038 */  swc1       $f0, 0x38($sp)
/* 85998 800CF5D8 C620000C */  lwc1       $f0, 0xC($s1)
/* 8599C 800CF5DC E7A0003C */  swc1       $f0, 0x3C($sp)
/* 859A0 800CF5E0 C6220010 */  lwc1       $f2, 0x10($s1)
/* 859A4 800CF5E4 C6200014 */  lwc1       $f0, 0x14($s1)
/* 859A8 800CF5E8 46001080 */  add.s      $f2, $f2, $f0
/* 859AC 800CF5EC 8FA30058 */  lw         $v1, 0x58($sp)
/* 859B0 800CF5F0 E7A20040 */  swc1       $f2, 0x40($sp)
/* 859B4 800CF5F4 8C620008 */  lw         $v0, 0x8($v1)
/* 859B8 800CF5F8 27A60038 */  addiu      $a2, $sp, 0x38
/* 859BC 800CF5FC 84440050 */  lh         $a0, 0x50($v0)
/* 859C0 800CF600 8C420054 */  lw         $v0, 0x54($v0)
/* 859C4 800CF604 0040F809 */  jalr       $v0
/* 859C8 800CF608 00642021 */   addu      $a0, $v1, $a0
/* 859CC 800CF60C 3C01800D */  lui        $at, %hi(D_race_800CA7D8)
/* 859D0 800CF610 C420A7D8 */  lwc1       $f0, %lo(D_race_800CA7D8)($at)
/* 859D4 800CF614 AFA00028 */  sw         $zero, 0x28($sp)
/* 859D8 800CF618 AFA0002C */  sw         $zero, 0x2C($sp)
/* 859DC 800CF61C E7A00030 */  swc1       $f0, 0x30($sp)
/* 859E0 800CF620 96230030 */  lhu        $v1, 0x30($s1)
/* 859E4 800CF624 24020001 */  addiu      $v0, $zero, 0x1
/* 859E8 800CF628 14620008 */  bne        $v1, $v0, .Lrace_800CF64C
/* 859EC 800CF62C 24020002 */   addiu     $v0, $zero, 0x2
/* 859F0 800CF630 8FA30058 */  lw         $v1, 0x58($sp)
/* 859F4 800CF634 02602821 */  addu       $a1, $s3, $zero
/* 859F8 800CF638 8C620008 */  lw         $v0, 0x8($v1)
/* 859FC 800CF63C 84440068 */  lh         $a0, 0x68($v0)
/* 85A00 800CF640 8C42006C */  lw         $v0, 0x6C($v0)
/* 85A04 800CF644 08033D9A */  j          .Lrace_800CF668
/* 85A08 800CF648 27A60050 */   addiu     $a2, $sp, 0x50
.Lrace_800CF64C:
/* 85A0C 800CF64C 14620009 */  bne        $v1, $v0, .Lrace_800CF674
/* 85A10 800CF650 02602821 */   addu      $a1, $s3, $zero
/* 85A14 800CF654 8FA30058 */  lw         $v1, 0x58($sp)
/* 85A18 800CF658 8C620008 */  lw         $v0, 0x8($v1)
/* 85A1C 800CF65C 27A60028 */  addiu      $a2, $sp, 0x28
/* 85A20 800CF660 84440060 */  lh         $a0, 0x60($v0)
/* 85A24 800CF664 8C420064 */  lw         $v0, 0x64($v0)
.Lrace_800CF668:
/* 85A28 800CF668 0040F809 */  jalr       $v0
/* 85A2C 800CF66C 00642021 */   addu      $a0, $v1, $a0
/* 85A30 800CF670 02602821 */  addu       $a1, $s3, $zero
.Lrace_800CF674:
/* 85A34 800CF674 8FA30058 */  lw         $v1, 0x58($sp)
/* 85A38 800CF678 27A60048 */  addiu      $a2, $sp, 0x48
/* 85A3C 800CF67C 8C620008 */  lw         $v0, 0x8($v1)
/* 85A40 800CF680 26730001 */  addiu      $s3, $s3, 0x1
/* 85A44 800CF684 84440058 */  lh         $a0, 0x58($v0)
/* 85A48 800CF688 8C42005C */  lw         $v0, 0x5C($v0)
/* 85A4C 800CF68C 0040F809 */  jalr       $v0
/* 85A50 800CF690 00642021 */   addu      $a0, $v1, $a0
.Lrace_800CF694:
/* 85A54 800CF694 4600D586 */  mov.s      $f22, $f26
/* 85A58 800CF698 00009021 */  addu       $s2, $zero, $zero
/* 85A5C 800CF69C 27B50028 */  addiu      $s5, $sp, 0x28
.Lrace_800CF6A0:
/* 85A60 800CF6A0 025E102B */  sltu       $v0, $s2, $fp
/* 85A64 800CF6A4 10400060 */  beqz       $v0, .Lrace_800CF828
/* 85A68 800CF6A8 00000000 */   nop
/* 85A6C 800CF6AC 8E22001C */  lw         $v0, 0x1C($s1)
/* 85A70 800CF6B0 10400005 */  beqz       $v0, .Lrace_800CF6C8
/* 85A74 800CF6B4 27C2FFFF */   addiu     $v0, $fp, -0x1
/* 85A78 800CF6B8 16420003 */  bne        $s2, $v0, .Lrace_800CF6C8
/* 85A7C 800CF6BC 00000000 */   nop
/* 85A80 800CF6C0 3C01800D */  lui        $at, %hi(D_race_800CA7DC)
/* 85A84 800CF6C4 C436A7DC */  lwc1       $f22, %lo(D_race_800CA7DC)($at)
.Lrace_800CF6C8:
/* 85A88 800CF6C8 0C006BCC */  jal        cosf
/* 85A8C 800CF6CC 4600B306 */   mov.s     $f12, $f22
/* 85A90 800CF6D0 C6220014 */  lwc1       $f2, 0x14($s1)
/* 85A94 800CF6D4 46020002 */  mul.s      $f0, $f0, $f2
/* 85A98 800CF6D8 C6220010 */  lwc1       $f2, 0x10($s1)
/* 85A9C 800CF6DC 4600B306 */  mov.s      $f12, $f22
/* 85AA0 800CF6E0 46001080 */  add.s      $f2, $f2, $f0
/* 85AA4 800CF6E4 4480A000 */  mtc1       $zero, $f20
/* 85AA8 800CF6E8 00008021 */  addu       $s0, $zero, $zero
/* 85AAC 800CF6EC 0C006D60 */  jal        sinf
/* 85AB0 800CF6F0 E7A20040 */   swc1      $f2, 0x40($sp)
/* 85AB4 800CF6F4 C6220014 */  lwc1       $f2, 0x14($s1)
/* 85AB8 800CF6F8 26340008 */  addiu      $s4, $s1, 0x8
/* 85ABC 800CF6FC 46020602 */  mul.s      $f24, $f0, $f2
.Lrace_800CF700:
/* 85AC0 800CF700 8E220018 */  lw         $v0, 0x18($s1)
/* 85AC4 800CF704 0202102B */  sltu       $v0, $s0, $v0
/* 85AC8 800CF708 50400045 */  beql       $v0, $zero, .Lrace_800CF820
/* 85ACC 800CF70C 26520001 */   addiu     $s2, $s2, 0x1
/* 85AD0 800CF710 0C006BCC */  jal        cosf
/* 85AD4 800CF714 4600A306 */   mov.s     $f12, $f20
/* 85AD8 800CF718 46180002 */  mul.s      $f0, $f0, $f24
/* 85ADC 800CF71C C6220008 */  lwc1       $f2, 0x8($s1)
/* 85AE0 800CF720 46001080 */  add.s      $f2, $f2, $f0
/* 85AE4 800CF724 4600A306 */  mov.s      $f12, $f20
/* 85AE8 800CF728 0C006D60 */  jal        sinf
/* 85AEC 800CF72C E7A20038 */   swc1      $f2, 0x38($sp)
/* 85AF0 800CF730 46180002 */  mul.s      $f0, $f0, $f24
/* 85AF4 800CF734 C622000C */  lwc1       $f2, 0xC($s1)
/* 85AF8 800CF738 46001080 */  add.s      $f2, $f2, $f0
/* 85AFC 800CF73C 8FA30058 */  lw         $v1, 0x58($sp)
/* 85B00 800CF740 02602821 */  addu       $a1, $s3, $zero
/* 85B04 800CF744 E7A2003C */  swc1       $f2, 0x3C($sp)
/* 85B08 800CF748 8C620008 */  lw         $v0, 0x8($v1)
/* 85B0C 800CF74C 27A60038 */  addiu      $a2, $sp, 0x38
/* 85B10 800CF750 84440050 */  lh         $a0, 0x50($v0)
/* 85B14 800CF754 8C420054 */  lw         $v0, 0x54($v0)
/* 85B18 800CF758 0040F809 */  jalr       $v0
/* 85B1C 800CF75C 00642021 */   addu      $a0, $v1, $a0
/* 85B20 800CF760 C7A00038 */  lwc1       $f0, 0x38($sp)
/* 85B24 800CF764 C6220008 */  lwc1       $f2, 0x8($s1)
/* 85B28 800CF768 46020001 */  sub.s      $f0, $f0, $f2
/* 85B2C 800CF76C C7A2003C */  lwc1       $f2, 0x3C($sp)
/* 85B30 800CF770 E7A00028 */  swc1       $f0, 0x28($sp)
/* 85B34 800CF774 C6800004 */  lwc1       $f0, 0x4($s4)
/* 85B38 800CF778 46001081 */  sub.s      $f2, $f2, $f0
/* 85B3C 800CF77C E7A2002C */  swc1       $f2, 0x2C($sp)
/* 85B40 800CF780 C7A20040 */  lwc1       $f2, 0x40($sp)
/* 85B44 800CF784 C6800008 */  lwc1       $f0, 0x8($s4)
/* 85B48 800CF788 46001081 */  sub.s      $f2, $f2, $f0
/* 85B4C 800CF78C 02A02021 */  addu       $a0, $s5, $zero
/* 85B50 800CF790 02A02821 */  addu       $a1, $s5, $zero
/* 85B54 800CF794 461AA500 */  add.s      $f20, $f20, $f26
/* 85B58 800CF798 0C000F26 */  jal        func_80003C98
/* 85B5C 800CF79C E7A20030 */   swc1      $f2, 0x30($sp)
/* 85B60 800CF7A0 96230030 */  lhu        $v1, 0x30($s1)
/* 85B64 800CF7A4 24020001 */  addiu      $v0, $zero, 0x1
/* 85B68 800CF7A8 14620008 */  bne        $v1, $v0, .Lrace_800CF7CC
/* 85B6C 800CF7AC 24020002 */   addiu     $v0, $zero, 0x2
/* 85B70 800CF7B0 8FA30058 */  lw         $v1, 0x58($sp)
/* 85B74 800CF7B4 02602821 */  addu       $a1, $s3, $zero
/* 85B78 800CF7B8 8C620008 */  lw         $v0, 0x8($v1)
/* 85B7C 800CF7BC 84440068 */  lh         $a0, 0x68($v0)
/* 85B80 800CF7C0 8C42006C */  lw         $v0, 0x6C($v0)
/* 85B84 800CF7C4 08033DFA */  j          .Lrace_800CF7E8
/* 85B88 800CF7C8 27A60050 */   addiu     $a2, $sp, 0x50
.Lrace_800CF7CC:
/* 85B8C 800CF7CC 14620009 */  bne        $v1, $v0, .Lrace_800CF7F4
/* 85B90 800CF7D0 02602821 */   addu      $a1, $s3, $zero
/* 85B94 800CF7D4 8FA30058 */  lw         $v1, 0x58($sp)
/* 85B98 800CF7D8 8C620008 */  lw         $v0, 0x8($v1)
/* 85B9C 800CF7DC 02A03021 */  addu       $a2, $s5, $zero
/* 85BA0 800CF7E0 84440060 */  lh         $a0, 0x60($v0)
/* 85BA4 800CF7E4 8C420064 */  lw         $v0, 0x64($v0)
.Lrace_800CF7E8:
/* 85BA8 800CF7E8 0040F809 */  jalr       $v0
/* 85BAC 800CF7EC 00642021 */   addu      $a0, $v1, $a0
/* 85BB0 800CF7F0 02602821 */  addu       $a1, $s3, $zero
.Lrace_800CF7F4:
/* 85BB4 800CF7F4 27A60048 */  addiu      $a2, $sp, 0x48
/* 85BB8 800CF7F8 8FA30058 */  lw         $v1, 0x58($sp)
/* 85BBC 800CF7FC 26730001 */  addiu      $s3, $s3, 0x1
/* 85BC0 800CF800 8C620008 */  lw         $v0, 0x8($v1)
/* 85BC4 800CF804 26100001 */  addiu      $s0, $s0, 0x1
/* 85BC8 800CF808 84440058 */  lh         $a0, 0x58($v0)
/* 85BCC 800CF80C 8C42005C */  lw         $v0, 0x5C($v0)
/* 85BD0 800CF810 0040F809 */  jalr       $v0
/* 85BD4 800CF814 00642021 */   addu      $a0, $v1, $a0
/* 85BD8 800CF818 08033DC0 */  j          .Lrace_800CF700
/* 85BDC 800CF81C 00000000 */   nop
.Lrace_800CF820:
/* 85BE0 800CF820 08033DA8 */  j          .Lrace_800CF6A0
/* 85BE4 800CF824 461AB580 */   add.s     $f22, $f22, $f26
.Lrace_800CF828:
/* 85BE8 800CF828 8E220024 */  lw         $v0, 0x24($s1)
/* 85BEC 800CF82C 10400039 */  beqz       $v0, .Lrace_800CF914
/* 85BF0 800CF830 00000000 */   nop
/* 85BF4 800CF834 C6200008 */  lwc1       $f0, 0x8($s1)
/* 85BF8 800CF838 E7A00038 */  swc1       $f0, 0x38($sp)
/* 85BFC 800CF83C C620000C */  lwc1       $f0, 0xC($s1)
/* 85C00 800CF840 E7A0003C */  swc1       $f0, 0x3C($sp)
/* 85C04 800CF844 8E22001C */  lw         $v0, 0x1C($s1)
/* 85C08 800CF848 10400004 */  beqz       $v0, .Lrace_800CF85C
/* 85C0C 800CF84C 00000000 */   nop
/* 85C10 800CF850 C6200010 */  lwc1       $f0, 0x10($s1)
/* 85C14 800CF854 08033E1B */  j          .Lrace_800CF86C
/* 85C18 800CF858 E7A00040 */   swc1      $f0, 0x40($sp)
.Lrace_800CF85C:
/* 85C1C 800CF85C C6200010 */  lwc1       $f0, 0x10($s1)
/* 85C20 800CF860 C6220014 */  lwc1       $f2, 0x14($s1)
/* 85C24 800CF864 46020001 */  sub.s      $f0, $f0, $f2
/* 85C28 800CF868 E7A00040 */  swc1       $f0, 0x40($sp)
.Lrace_800CF86C:
/* 85C2C 800CF86C 8FA30058 */  lw         $v1, 0x58($sp)
/* 85C30 800CF870 02602821 */  addu       $a1, $s3, $zero
/* 85C34 800CF874 8C620008 */  lw         $v0, 0x8($v1)
/* 85C38 800CF878 27A60038 */  addiu      $a2, $sp, 0x38
/* 85C3C 800CF87C 84440050 */  lh         $a0, 0x50($v0)
/* 85C40 800CF880 8C420054 */  lw         $v0, 0x54($v0)
/* 85C44 800CF884 0040F809 */  jalr       $v0
/* 85C48 800CF888 00642021 */   addu      $a0, $v1, $a0
/* 85C4C 800CF88C 3C01800D */  lui        $at, %hi(D_race_800CA7E0)
/* 85C50 800CF890 C420A7E0 */  lwc1       $f0, %lo(D_race_800CA7E0)($at)
/* 85C54 800CF894 AFA00028 */  sw         $zero, 0x28($sp)
/* 85C58 800CF898 AFA0002C */  sw         $zero, 0x2C($sp)
/* 85C5C 800CF89C E7A00030 */  swc1       $f0, 0x30($sp)
/* 85C60 800CF8A0 96230030 */  lhu        $v1, 0x30($s1)
/* 85C64 800CF8A4 24020001 */  addiu      $v0, $zero, 0x1
/* 85C68 800CF8A8 14620008 */  bne        $v1, $v0, .Lrace_800CF8CC
/* 85C6C 800CF8AC 24020002 */   addiu     $v0, $zero, 0x2
/* 85C70 800CF8B0 8FA30058 */  lw         $v1, 0x58($sp)
/* 85C74 800CF8B4 02602821 */  addu       $a1, $s3, $zero
/* 85C78 800CF8B8 8C620008 */  lw         $v0, 0x8($v1)
/* 85C7C 800CF8BC 84440068 */  lh         $a0, 0x68($v0)
/* 85C80 800CF8C0 8C42006C */  lw         $v0, 0x6C($v0)
/* 85C84 800CF8C4 08033E3A */  j          .Lrace_800CF8E8
/* 85C88 800CF8C8 27A60050 */   addiu     $a2, $sp, 0x50
.Lrace_800CF8CC:
/* 85C8C 800CF8CC 14620009 */  bne        $v1, $v0, .Lrace_800CF8F4
/* 85C90 800CF8D0 02602821 */   addu      $a1, $s3, $zero
/* 85C94 800CF8D4 8FA30058 */  lw         $v1, 0x58($sp)
/* 85C98 800CF8D8 8C620008 */  lw         $v0, 0x8($v1)
/* 85C9C 800CF8DC 27A60028 */  addiu      $a2, $sp, 0x28
/* 85CA0 800CF8E0 84440060 */  lh         $a0, 0x60($v0)
/* 85CA4 800CF8E4 8C420064 */  lw         $v0, 0x64($v0)
.Lrace_800CF8E8:
/* 85CA8 800CF8E8 0040F809 */  jalr       $v0
/* 85CAC 800CF8EC 00642021 */   addu      $a0, $v1, $a0
/* 85CB0 800CF8F0 02602821 */  addu       $a1, $s3, $zero
.Lrace_800CF8F4:
/* 85CB4 800CF8F4 8FA30058 */  lw         $v1, 0x58($sp)
/* 85CB8 800CF8F8 27A60048 */  addiu      $a2, $sp, 0x48
/* 85CBC 800CF8FC 8C620008 */  lw         $v0, 0x8($v1)
/* 85CC0 800CF900 26730001 */  addiu      $s3, $s3, 0x1
/* 85CC4 800CF904 84440058 */  lh         $a0, 0x58($v0)
/* 85CC8 800CF908 8C42005C */  lw         $v0, 0x5C($v0)
/* 85CCC 800CF90C 0040F809 */  jalr       $v0
/* 85CD0 800CF910 00642021 */   addu      $a0, $v1, $a0
.Lrace_800CF914:
/* 85CD4 800CF914 8E230004 */  lw         $v1, 0x4($s1)
/* 85CD8 800CF918 24050001 */  addiu      $a1, $zero, 0x1
/* 85CDC 800CF91C 8C62003C */  lw         $v0, 0x3C($v1)
/* 85CE0 800CF920 00003021 */  addu       $a2, $zero, $zero
/* 85CE4 800CF924 84440060 */  lh         $a0, 0x60($v0)
/* 85CE8 800CF928 8C420064 */  lw         $v0, 0x64($v0)
/* 85CEC 800CF92C 0040F809 */  jalr       $v0
/* 85CF0 800CF930 00642021 */   addu      $a0, $v1, $a0
/* 85CF4 800CF934 3C064000 */  lui        $a2, (0x40000000 >> 16)
/* 85CF8 800CF938 8E230004 */  lw         $v1, 0x4($s1)
/* 85CFC 800CF93C 02E01021 */  addu       $v0, $s7, $zero
/* 85D00 800CF940 8C630020 */  lw         $v1, 0x20($v1)
/* 85D04 800CF944 00021080 */  sll        $v0, $v0, 2
/* 85D08 800CF948 00431021 */  addu       $v0, $v0, $v1
/* 85D0C 800CF94C AC460000 */  sw         $a2, 0x0($v0)
/* 85D10 800CF950 8E230034 */  lw         $v1, 0x34($s1)
/* 85D14 800CF954 10600007 */  beqz       $v1, .Lrace_800CF974
/* 85D18 800CF958 26F70001 */   addiu     $s7, $s7, 0x1
/* 85D1C 800CF95C 8C620004 */  lw         $v0, 0x4($v1)
/* 85D20 800CF960 8FA50064 */  lw         $a1, 0x64($sp)
/* 85D24 800CF964 84440020 */  lh         $a0, 0x20($v0)
/* 85D28 800CF968 8C420024 */  lw         $v0, 0x24($v0)
/* 85D2C 800CF96C 0040F809 */  jalr       $v0
/* 85D30 800CF970 00642021 */   addu      $a0, $v1, $a0
.Lrace_800CF974:
/* 85D34 800CF974 8E230004 */  lw         $v1, 0x4($s1)
/* 85D38 800CF978 8C62003C */  lw         $v0, 0x3C($v1)
/* 85D3C 800CF97C 27A5005C */  addiu      $a1, $sp, 0x5C
/* 85D40 800CF980 84440068 */  lh         $a0, 0x68($v0)
/* 85D44 800CF984 8C42006C */  lw         $v0, 0x6C($v0)
/* 85D48 800CF988 0040F809 */  jalr       $v0
/* 85D4C 800CF98C 00642021 */   addu      $a0, $v1, $a0
/* 85D50 800CF990 8E220020 */  lw         $v0, 0x20($s1)
/* 85D54 800CF994 1040004C */  beqz       $v0, .Lrace_800CFAC8
/* 85D58 800CF998 02E02021 */   addu      $a0, $s7, $zero
/* 85D5C 800CF99C 26F70001 */  addiu      $s7, $s7, 0x1
/* 85D60 800CF9A0 02E02821 */  addu       $a1, $s7, $zero
/* 85D64 800CF9A4 26F70001 */  addiu      $s7, $s7, 0x1
/* 85D68 800CF9A8 24120001 */  addiu      $s2, $zero, 0x1
/* 85D6C 800CF9AC 27A70020 */  addiu      $a3, $sp, 0x20
/* 85D70 800CF9B0 00161880 */  sll        $v1, $s6, 2
/* 85D74 800CF9B4 2468FFFC */  addiu      $t0, $v1, -0x4
/* 85D78 800CF9B8 00042080 */  sll        $a0, $a0, 2
/* 85D7C 800CF9BC 00052880 */  sll        $a1, $a1, 2
/* 85D80 800CF9C0 8FB80068 */  lw         $t8, 0x68($sp)
/* 85D84 800CF9C4 8E220018 */  lw         $v0, 0x18($s1)
/* 85D88 800CF9C8 8E230004 */  lw         $v1, 0x4($s1)
/* 85D8C 800CF9CC 00F85821 */  addu       $t3, $a3, $t8
/* 85D90 800CF9D0 00529821 */  addu       $s3, $v0, $s2
/* 85D94 800CF9D4 3042003F */  andi       $v0, $v0, 0x3F
/* 85D98 800CF9D8 00023400 */  sll        $a2, $v0, 16
/* 85D9C 800CF9DC 8FB8006C */  lw         $t8, 0x6C($sp)
/* 85DA0 800CF9E0 8C620020 */  lw         $v0, 0x20($v1)
/* 85DA4 800CF9E4 00F85021 */  addu       $t2, $a3, $t8
/* 85DA8 800CF9E8 8FB80070 */  lw         $t8, 0x70($sp)
/* 85DAC 800CF9EC 00822021 */  addu       $a0, $a0, $v0
/* 85DB0 800CF9F0 AC860000 */  sw         $a2, 0x0($a0)
/* 85DB4 800CF9F4 3C061000 */  lui        $a2, (0x10000000 >> 16)
/* 85DB8 800CF9F8 8E220018 */  lw         $v0, 0x18($s1)
/* 85DBC 800CF9FC 8E230004 */  lw         $v1, 0x4($s1)
/* 85DC0 800CFA00 30420FFF */  andi       $v0, $v0, 0xFFF
/* 85DC4 800CFA04 00021400 */  sll        $v0, $v0, 16
/* 85DC8 800CFA08 00463025 */  or         $a2, $v0, $a2
/* 85DCC 800CFA0C 8C620020 */  lw         $v0, 0x20($v1)
/* 85DD0 800CFA10 00F84821 */  addu       $t1, $a3, $t8
/* 85DD4 800CFA14 00A22821 */  addu       $a1, $a1, $v0
/* 85DD8 800CFA18 ACA60000 */  sw         $a2, 0x0($a1)
.Lrace_800CFA1C:
/* 85DDC 800CFA1C 8E220018 */  lw         $v0, 0x18($s1)
/* 85DE0 800CFA20 0052102B */  sltu       $v0, $v0, $s2
/* 85DE4 800CFA24 14400028 */  bnez       $v0, .Lrace_800CFAC8
/* 85DE8 800CFA28 00000000 */   nop
/* 85DEC 800CFA2C A1600001 */  sb         $zero, 0x1($t3)
/* 85DF0 800CFA30 A1520001 */  sb         $s2, 0x1($t2)
/* 85DF4 800CFA34 8E220018 */  lw         $v0, 0x18($s1)
/* 85DF8 800CFA38 16420002 */  bne        $s2, $v0, .Lrace_800CFA44
/* 85DFC 800CFA3C 26420001 */   addiu     $v0, $s2, 0x1
/* 85E00 800CFA40 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800CFA44:
/* 85E04 800CFA44 A1220001 */  sb         $v0, 0x1($t1)
/* 85E08 800CFA48 8E250034 */  lw         $a1, 0x34($s1)
/* 85E0C 800CFA4C 10A0000D */  beqz       $a1, .Lrace_800CFA84
/* 85E10 800CFA50 00162080 */   sll       $a0, $s6, 2
/* 85E14 800CFA54 8CA20008 */  lw         $v0, 0x8($a1)
/* 85E18 800CFA58 90E30001 */  lbu        $v1, 0x1($a3)
/* 85E1C 800CFA5C 00821021 */  addu       $v0, $a0, $v0
/* 85E20 800CFA60 A0430001 */  sb         $v1, 0x1($v0)
/* 85E24 800CFA64 8CA20008 */  lw         $v0, 0x8($a1)
/* 85E28 800CFA68 90E30002 */  lbu        $v1, 0x2($a3)
/* 85E2C 800CFA6C 00821021 */  addu       $v0, $a0, $v0
/* 85E30 800CFA70 A0430002 */  sb         $v1, 0x2($v0)
/* 85E34 800CFA74 8CA20008 */  lw         $v0, 0x8($a1)
/* 85E38 800CFA78 90E30003 */  lbu        $v1, 0x3($a3)
/* 85E3C 800CFA7C 00822021 */  addu       $a0, $a0, $v0
/* 85E40 800CFA80 A0830003 */  sb         $v1, 0x3($a0)
.Lrace_800CFA84:
/* 85E44 800CFA84 25080004 */  addiu      $t0, $t0, 0x4
/* 85E48 800CFA88 26D60001 */  addiu      $s6, $s6, 0x1
/* 85E4C 800CFA8C 8FA4005C */  lw         $a0, 0x5C($sp)
/* 85E50 800CFA90 26520001 */  addiu      $s2, $s2, 0x1
/* 85E54 800CFA94 8C820008 */  lw         $v0, 0x8($a0)
/* 85E58 800CFA98 90E30001 */  lbu        $v1, 0x1($a3)
/* 85E5C 800CFA9C 01021021 */  addu       $v0, $t0, $v0
/* 85E60 800CFAA0 A0430001 */  sb         $v1, 0x1($v0)
/* 85E64 800CFAA4 8C820008 */  lw         $v0, 0x8($a0)
/* 85E68 800CFAA8 90E30002 */  lbu        $v1, 0x2($a3)
/* 85E6C 800CFAAC 01021021 */  addu       $v0, $t0, $v0
/* 85E70 800CFAB0 A0430002 */  sb         $v1, 0x2($v0)
/* 85E74 800CFAB4 8C820008 */  lw         $v0, 0x8($a0)
/* 85E78 800CFAB8 90E30003 */  lbu        $v1, 0x3($a3)
/* 85E7C 800CFABC 01021021 */  addu       $v0, $t0, $v0
/* 85E80 800CFAC0 08033E87 */  j          .Lrace_800CFA1C
/* 85E84 800CFAC4 A0430003 */   sb        $v1, 0x3($v0)
.Lrace_800CFAC8:
/* 85E88 800CFAC8 8E220024 */  lw         $v0, 0x24($s1)
/* 85E8C 800CFACC 1040006F */  beqz       $v0, .Lrace_800CFC8C
/* 85E90 800CFAD0 24120001 */   addiu     $s2, $zero, 0x1
/* 85E94 800CFAD4 8E240018 */  lw         $a0, 0x18($s1)
/* 85E98 800CFAD8 02641021 */  addu       $v0, $s3, $a0
/* 85E9C 800CFADC 24420001 */  addiu      $v0, $v0, 0x1
/* 85EA0 800CFAE0 2C420021 */  sltiu      $v0, $v0, 0x21
/* 85EA4 800CFAE4 50400001 */  beql       $v0, $zero, .Lrace_800CFAEC
/* 85EA8 800CFAE8 00009821 */   addu      $s3, $zero, $zero
.Lrace_800CFAEC:
/* 85EAC 800CFAEC 27C2FFFF */  addiu      $v0, $fp, -0x1
/* 85EB0 800CFAF0 00440018 */  mult       $v0, $a0
/* 85EB4 800CFAF4 8E230020 */  lw         $v1, 0x20($s1)
/* 85EB8 800CFAF8 00008012 */  mflo       $s0
/* 85EBC 800CFAFC 54600001 */  bnel       $v1, $zero, .Lrace_800CFB04
/* 85EC0 800CFB00 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800CFB04:
/* 85EC4 800CFB04 3262003F */  andi       $v0, $s3, 0x3F
/* 85EC8 800CFB08 00023580 */  sll        $a2, $v0, 22
/* 85ECC 800CFB0C 3082003F */  andi       $v0, $a0, 0x3F
/* 85ED0 800CFB10 00021400 */  sll        $v0, $v0, 16
/* 85ED4 800CFB14 00C23025 */  or         $a2, $a2, $v0
/* 85ED8 800CFB18 3202FFFF */  andi       $v0, $s0, 0xFFFF
/* 85EDC 800CFB1C 00C23025 */  or         $a2, $a2, $v0
/* 85EE0 800CFB20 02E02021 */  addu       $a0, $s7, $zero
/* 85EE4 800CFB24 26F70001 */  addiu      $s7, $s7, 0x1
/* 85EE8 800CFB28 02E02821 */  addu       $a1, $s7, $zero
/* 85EEC 800CFB2C 26F70001 */  addiu      $s7, $s7, 0x1
/* 85EF0 800CFB30 24120001 */  addiu      $s2, $zero, 0x1
/* 85EF4 800CFB34 27A70020 */  addiu      $a3, $sp, 0x20
/* 85EF8 800CFB38 260D00FF */  addiu      $t5, $s0, 0xFF
/* 85EFC 800CFB3C 02704823 */  subu       $t1, $s3, $s0
/* 85F00 800CFB40 00161080 */  sll        $v0, $s6, 2
/* 85F04 800CFB44 2448FFFC */  addiu      $t0, $v0, -0x4
/* 85F08 800CFB48 00042080 */  sll        $a0, $a0, 2
/* 85F0C 800CFB4C 8FB80068 */  lw         $t8, 0x68($sp)
/* 85F10 800CFB50 00052880 */  sll        $a1, $a1, 2
/* 85F14 800CFB54 00F86021 */  addu       $t4, $a3, $t8
/* 85F18 800CFB58 8FB80060 */  lw         $t8, 0x60($sp)
/* 85F1C 800CFB5C 8E230004 */  lw         $v1, 0x4($s1)
/* 85F20 800CFB60 270EFFFF */  addiu      $t6, $t8, -0x1
/* 85F24 800CFB64 8FB80070 */  lw         $t8, 0x70($sp)
/* 85F28 800CFB68 8C620020 */  lw         $v0, 0x20($v1)
/* 85F2C 800CFB6C 00F85821 */  addu       $t3, $a3, $t8
/* 85F30 800CFB70 8FB8006C */  lw         $t8, 0x6C($sp)
/* 85F34 800CFB74 00822021 */  addu       $a0, $a0, $v0
/* 85F38 800CFB78 AC860000 */  sw         $a2, 0x0($a0)
/* 85F3C 800CFB7C 3C061000 */  lui        $a2, (0x10000000 >> 16)
/* 85F40 800CFB80 8E220018 */  lw         $v0, 0x18($s1)
/* 85F44 800CFB84 8E230004 */  lw         $v1, 0x4($s1)
/* 85F48 800CFB88 30420FFF */  andi       $v0, $v0, 0xFFF
/* 85F4C 800CFB8C 00021400 */  sll        $v0, $v0, 16
/* 85F50 800CFB90 00463025 */  or         $a2, $v0, $a2
/* 85F54 800CFB94 32C2FFFF */  andi       $v0, $s6, 0xFFFF
/* 85F58 800CFB98 00C23025 */  or         $a2, $a2, $v0
/* 85F5C 800CFB9C 8C620020 */  lw         $v0, 0x20($v1)
/* 85F60 800CFBA0 00F85021 */  addu       $t2, $a3, $t8
/* 85F64 800CFBA4 00A22821 */  addu       $a1, $a1, $v0
/* 85F68 800CFBA8 ACA60000 */  sw         $a2, 0x0($a1)
.Lrace_800CFBAC:
/* 85F6C 800CFBAC 8E220018 */  lw         $v0, 0x18($s1)
/* 85F70 800CFBB0 0052102B */  sltu       $v0, $v0, $s2
/* 85F74 800CFBB4 14400031 */  bnez       $v0, .Lrace_800CFC7C
/* 85F78 800CFBB8 024D1821 */   addu      $v1, $s2, $t5
/* 85F7C 800CFBBC A18E0001 */  sb         $t6, 0x1($t4)
/* 85F80 800CFBC0 A1630001 */  sb         $v1, 0x1($t3)
/* 85F84 800CFBC4 8E220018 */  lw         $v0, 0x18($s1)
/* 85F88 800CFBC8 16420002 */  bne        $s2, $v0, .Lrace_800CFBD4
/* 85F8C 800CFBCC 24620001 */   addiu     $v0, $v1, 0x1
/* 85F90 800CFBD0 02001021 */  addu       $v0, $s0, $zero
.Lrace_800CFBD4:
/* 85F94 800CFBD4 A1420001 */  sb         $v0, 0x1($t2)
/* 85F98 800CFBD8 8E250034 */  lw         $a1, 0x34($s1)
/* 85F9C 800CFBDC 10A0000D */  beqz       $a1, .Lrace_800CFC14
/* 85FA0 800CFBE0 00162080 */   sll       $a0, $s6, 2
/* 85FA4 800CFBE4 8CA20008 */  lw         $v0, 0x8($a1)
/* 85FA8 800CFBE8 90E30001 */  lbu        $v1, 0x1($a3)
/* 85FAC 800CFBEC 00821021 */  addu       $v0, $a0, $v0
/* 85FB0 800CFBF0 A0430001 */  sb         $v1, 0x1($v0)
/* 85FB4 800CFBF4 8CA20008 */  lw         $v0, 0x8($a1)
/* 85FB8 800CFBF8 90E30002 */  lbu        $v1, 0x2($a3)
/* 85FBC 800CFBFC 00821021 */  addu       $v0, $a0, $v0
/* 85FC0 800CFC00 A0430002 */  sb         $v1, 0x2($v0)
/* 85FC4 800CFC04 8CA20008 */  lw         $v0, 0x8($a1)
/* 85FC8 800CFC08 90E30003 */  lbu        $v1, 0x3($a3)
/* 85FCC 800CFC0C 00822021 */  addu       $a0, $a0, $v0
/* 85FD0 800CFC10 A0830003 */  sb         $v1, 0x3($a0)
.Lrace_800CFC14:
/* 85FD4 800CFC14 91820001 */  lbu        $v0, 0x1($t4)
/* 85FD8 800CFC18 00491021 */  addu       $v0, $v0, $t1
/* 85FDC 800CFC1C A1820001 */  sb         $v0, 0x1($t4)
/* 85FE0 800CFC20 91420001 */  lbu        $v0, 0x1($t2)
/* 85FE4 800CFC24 25080004 */  addiu      $t0, $t0, 0x4
/* 85FE8 800CFC28 00491021 */  addu       $v0, $v0, $t1
/* 85FEC 800CFC2C A1420001 */  sb         $v0, 0x1($t2)
/* 85FF0 800CFC30 91620001 */  lbu        $v0, 0x1($t3)
/* 85FF4 800CFC34 26D60001 */  addiu      $s6, $s6, 0x1
/* 85FF8 800CFC38 00491021 */  addu       $v0, $v0, $t1
/* 85FFC 800CFC3C A1620001 */  sb         $v0, 0x1($t3)
/* 86000 800CFC40 8FA4005C */  lw         $a0, 0x5C($sp)
/* 86004 800CFC44 26520001 */  addiu      $s2, $s2, 0x1
/* 86008 800CFC48 8C820008 */  lw         $v0, 0x8($a0)
/* 8600C 800CFC4C 90E30001 */  lbu        $v1, 0x1($a3)
/* 86010 800CFC50 01021021 */  addu       $v0, $t0, $v0
/* 86014 800CFC54 A0430001 */  sb         $v1, 0x1($v0)
/* 86018 800CFC58 8C820008 */  lw         $v0, 0x8($a0)
/* 8601C 800CFC5C 90E30002 */  lbu        $v1, 0x2($a3)
/* 86020 800CFC60 01021021 */  addu       $v0, $t0, $v0
/* 86024 800CFC64 A0430002 */  sb         $v1, 0x2($v0)
/* 86028 800CFC68 8C820008 */  lw         $v0, 0x8($a0)
/* 8602C 800CFC6C 90E30003 */  lbu        $v1, 0x3($a3)
/* 86030 800CFC70 01021021 */  addu       $v0, $t0, $v0
/* 86034 800CFC74 08033EEB */  j          .Lrace_800CFBAC
/* 86038 800CFC78 A0430003 */   sb        $v1, 0x3($v0)
.Lrace_800CFC7C:
/* 8603C 800CFC7C 8E230018 */  lw         $v1, 0x18($s1)
/* 86040 800CFC80 26620001 */  addiu      $v0, $s3, 0x1
/* 86044 800CFC84 00439821 */  addu       $s3, $v0, $v1
/* 86048 800CFC88 24120001 */  addiu      $s2, $zero, 0x1
.Lrace_800CFC8C:
/* 8604C 800CFC8C 8FB80068 */  lw         $t8, 0x68($sp)
/* 86050 800CFC90 27A80020 */  addiu      $t0, $sp, 0x20
/* 86054 800CFC94 01186021 */  addu       $t4, $t0, $t8
/* 86058 800CFC98 8FB8006C */  lw         $t8, 0x6C($sp)
/* 8605C 800CFC9C 00171080 */  sll        $v0, $s7, 2
/* 86060 800CFCA0 01187021 */  addu       $t6, $t0, $t8
/* 86064 800CFCA4 8FB80070 */  lw         $t8, 0x70($sp)
/* 86068 800CFCA8 244FFFFC */  addiu      $t7, $v0, -0x4
/* 8606C 800CFCAC 01186821 */  addu       $t5, $t0, $t8
.Lrace_800CFCB0:
/* 86070 800CFCB0 025E102B */  sltu       $v0, $s2, $fp
/* 86074 800CFCB4 1040009F */  beqz       $v0, .Lrace_800CFF34
/* 86078 800CFCB8 3C066000 */   lui       $a2, (0x60000000 >> 16)
/* 8607C 800CFCBC 8E240018 */  lw         $a0, 0x18($s1)
/* 86080 800CFCC0 00042840 */  sll        $a1, $a0, 1
/* 86084 800CFCC4 02651021 */  addu       $v0, $s3, $a1
/* 86088 800CFCC8 2C420021 */  sltiu      $v0, $v0, 0x21
/* 8608C 800CFCCC 50400001 */  beql       $v0, $zero, .Lrace_800CFCD4
/* 86090 800CFCD0 00009821 */   addu      $s3, $zero, $zero
.Lrace_800CFCD4:
/* 86094 800CFCD4 2642FFFF */  addiu      $v0, $s2, -0x1
/* 86098 800CFCD8 00440018 */  mult       $v0, $a0
/* 8609C 800CFCDC 8E230020 */  lw         $v1, 0x20($s1)
/* 860A0 800CFCE0 00008012 */  mflo       $s0
/* 860A4 800CFCE4 54600001 */  bnel       $v1, $zero, .Lrace_800CFCEC
/* 860A8 800CFCE8 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800CFCEC:
/* 860AC 800CFCEC 3262003F */  andi       $v0, $s3, 0x3F
/* 860B0 800CFCF0 00023580 */  sll        $a2, $v0, 22
/* 860B4 800CFCF4 24A2FFFF */  addiu      $v0, $a1, -0x1
/* 860B8 800CFCF8 3042003F */  andi       $v0, $v0, 0x3F
/* 860BC 800CFCFC 00021400 */  sll        $v0, $v0, 16
/* 860C0 800CFD00 00C23025 */  or         $a2, $a2, $v0
/* 860C4 800CFD04 3202FFFF */  andi       $v0, $s0, 0xFFFF
/* 860C8 800CFD08 00C23025 */  or         $a2, $a2, $v0
/* 860CC 800CFD0C 25EF0004 */  addiu      $t7, $t7, 0x4
/* 860D0 800CFD10 26F70002 */  addiu      $s7, $s7, 0x2
/* 860D4 800CFD14 00005821 */  addu       $t3, $zero, $zero
/* 860D8 800CFD18 02705023 */  subu       $t2, $s3, $s0
/* 860DC 800CFD1C 02004821 */  addu       $t1, $s0, $zero
/* 860E0 800CFD20 00161880 */  sll        $v1, $s6, 2
/* 860E4 800CFD24 8E220004 */  lw         $v0, 0x4($s1)
/* 860E8 800CFD28 2467FFFC */  addiu      $a3, $v1, -0x4
/* 860EC 800CFD2C 8C420020 */  lw         $v0, 0x20($v0)
/* 860F0 800CFD30 32C3FFFF */  andi       $v1, $s6, 0xFFFF
/* 860F4 800CFD34 01E21021 */  addu       $v0, $t7, $v0
/* 860F8 800CFD38 AC460000 */  sw         $a2, 0x0($v0)
/* 860FC 800CFD3C 8E220018 */  lw         $v0, 0x18($s1)
/* 86100 800CFD40 3C061000 */  lui        $a2, (0x10000000 >> 16)
/* 86104 800CFD44 00021040 */  sll        $v0, $v0, 1
/* 86108 800CFD48 30420FFF */  andi       $v0, $v0, 0xFFF
/* 8610C 800CFD4C 00021400 */  sll        $v0, $v0, 16
/* 86110 800CFD50 00463025 */  or         $a2, $v0, $a2
/* 86114 800CFD54 8E220004 */  lw         $v0, 0x4($s1)
/* 86118 800CFD58 25EF0004 */  addiu      $t7, $t7, 0x4
/* 8611C 800CFD5C 8C420020 */  lw         $v0, 0x20($v0)
/* 86120 800CFD60 00C33025 */  or         $a2, $a2, $v1
/* 86124 800CFD64 01E21021 */  addu       $v0, $t7, $v0
/* 86128 800CFD68 AC460000 */  sw         $a2, 0x0($v0)
.Lrace_800CFD6C:
/* 8612C 800CFD6C 8E220018 */  lw         $v0, 0x18($s1)
/* 86130 800CFD70 0162102B */  sltu       $v0, $t3, $v0
/* 86134 800CFD74 5040FFCE */  beql       $v0, $zero, .Lrace_800CFCB0
/* 86138 800CFD78 26520001 */   addiu     $s2, $s2, 0x1
/* 8613C 800CFD7C A1890001 */  sb         $t1, 0x1($t4)
/* 86140 800CFD80 9222001B */  lbu        $v0, 0x1B($s1)
/* 86144 800CFD84 01221821 */  addu       $v1, $t1, $v0
/* 86148 800CFD88 A1C30001 */  sb         $v1, 0x1($t6)
/* 8614C 800CFD8C 8E220018 */  lw         $v0, 0x18($s1)
/* 86150 800CFD90 2442FFFF */  addiu      $v0, $v0, -0x1
/* 86154 800CFD94 55620003 */  bnel       $t3, $v0, .Lrace_800CFDA4
/* 86158 800CFD98 24620001 */   addiu     $v0, $v1, 0x1
/* 8615C 800CFD9C 9222001B */  lbu        $v0, 0x1B($s1)
/* 86160 800CFDA0 00501021 */  addu       $v0, $v0, $s0
.Lrace_800CFDA4:
/* 86164 800CFDA4 A1A20001 */  sb         $v0, 0x1($t5)
/* 86168 800CFDA8 8E250034 */  lw         $a1, 0x34($s1)
/* 8616C 800CFDAC 10A0000D */  beqz       $a1, .Lrace_800CFDE4
/* 86170 800CFDB0 00161880 */   sll       $v1, $s6, 2
/* 86174 800CFDB4 8CA20008 */  lw         $v0, 0x8($a1)
/* 86178 800CFDB8 91040001 */  lbu        $a0, 0x1($t0)
/* 8617C 800CFDBC 00621021 */  addu       $v0, $v1, $v0
/* 86180 800CFDC0 A0440001 */  sb         $a0, 0x1($v0)
/* 86184 800CFDC4 8CA20008 */  lw         $v0, 0x8($a1)
/* 86188 800CFDC8 91040002 */  lbu        $a0, 0x2($t0)
/* 8618C 800CFDCC 00621021 */  addu       $v0, $v1, $v0
/* 86190 800CFDD0 A0440002 */  sb         $a0, 0x2($v0)
/* 86194 800CFDD4 8CA20008 */  lw         $v0, 0x8($a1)
/* 86198 800CFDD8 91040003 */  lbu        $a0, 0x3($t0)
/* 8619C 800CFDDC 00621821 */  addu       $v1, $v1, $v0
/* 861A0 800CFDE0 A0640003 */  sb         $a0, 0x3($v1)
.Lrace_800CFDE4:
/* 861A4 800CFDE4 91820001 */  lbu        $v0, 0x1($t4)
/* 861A8 800CFDE8 004A1021 */  addu       $v0, $v0, $t2
/* 861AC 800CFDEC A1820001 */  sb         $v0, 0x1($t4)
/* 861B0 800CFDF0 91C20001 */  lbu        $v0, 0x1($t6)
/* 861B4 800CFDF4 004A1021 */  addu       $v0, $v0, $t2
/* 861B8 800CFDF8 A1C20001 */  sb         $v0, 0x1($t6)
/* 861BC 800CFDFC 91A20001 */  lbu        $v0, 0x1($t5)
/* 861C0 800CFE00 004A1021 */  addu       $v0, $v0, $t2
/* 861C4 800CFE04 A1A20001 */  sb         $v0, 0x1($t5)
/* 861C8 800CFE08 8FA4005C */  lw         $a0, 0x5C($sp)
/* 861CC 800CFE0C 24E70004 */  addiu      $a3, $a3, 0x4
/* 861D0 800CFE10 8C820008 */  lw         $v0, 0x8($a0)
/* 861D4 800CFE14 91030001 */  lbu        $v1, 0x1($t0)
/* 861D8 800CFE18 00E21021 */  addu       $v0, $a3, $v0
/* 861DC 800CFE1C A0430001 */  sb         $v1, 0x1($v0)
/* 861E0 800CFE20 8C820008 */  lw         $v0, 0x8($a0)
/* 861E4 800CFE24 91030002 */  lbu        $v1, 0x2($t0)
/* 861E8 800CFE28 00E21021 */  addu       $v0, $a3, $v0
/* 861EC 800CFE2C A0430002 */  sb         $v1, 0x2($v0)
/* 861F0 800CFE30 8C820008 */  lw         $v0, 0x8($a0)
/* 861F4 800CFE34 91030003 */  lbu        $v1, 0x3($t0)
/* 861F8 800CFE38 00E21021 */  addu       $v0, $a3, $v0
/* 861FC 800CFE3C A0430003 */  sb         $v1, 0x3($v0)
/* 86200 800CFE40 A1890001 */  sb         $t1, 0x1($t4)
/* 86204 800CFE44 8E220018 */  lw         $v0, 0x18($s1)
/* 86208 800CFE48 2442FFFF */  addiu      $v0, $v0, -0x1
/* 8620C 800CFE4C 15620004 */  bne        $t3, $v0, .Lrace_800CFE60
/* 86210 800CFE50 26D60001 */   addiu     $s6, $s6, 0x1
/* 86214 800CFE54 9222001B */  lbu        $v0, 0x1B($s1)
/* 86218 800CFE58 08033F9B */  j          .Lrace_800CFE6C
/* 8621C 800CFE5C 00501021 */   addu      $v0, $v0, $s0
.Lrace_800CFE60:
/* 86220 800CFE60 9222001B */  lbu        $v0, 0x1B($s1)
/* 86224 800CFE64 01221021 */  addu       $v0, $t1, $v0
/* 86228 800CFE68 24420001 */  addiu      $v0, $v0, 0x1
.Lrace_800CFE6C:
/* 8622C 800CFE6C A1C20001 */  sb         $v0, 0x1($t6)
/* 86230 800CFE70 8E220018 */  lw         $v0, 0x18($s1)
/* 86234 800CFE74 2442FFFF */  addiu      $v0, $v0, -0x1
/* 86238 800CFE78 51620003 */  beql       $t3, $v0, .Lrace_800CFE88
/* 8623C 800CFE7C 02001021 */   addu      $v0, $s0, $zero
/* 86240 800CFE80 91820001 */  lbu        $v0, 0x1($t4)
/* 86244 800CFE84 24420001 */  addiu      $v0, $v0, 0x1
.Lrace_800CFE88:
/* 86248 800CFE88 A1A20001 */  sb         $v0, 0x1($t5)
/* 8624C 800CFE8C 8E250034 */  lw         $a1, 0x34($s1)
/* 86250 800CFE90 10A0000D */  beqz       $a1, .Lrace_800CFEC8
/* 86254 800CFE94 00161880 */   sll       $v1, $s6, 2
/* 86258 800CFE98 8CA20008 */  lw         $v0, 0x8($a1)
/* 8625C 800CFE9C 91040001 */  lbu        $a0, 0x1($t0)
/* 86260 800CFEA0 00621021 */  addu       $v0, $v1, $v0
/* 86264 800CFEA4 A0440001 */  sb         $a0, 0x1($v0)
/* 86268 800CFEA8 8CA20008 */  lw         $v0, 0x8($a1)
/* 8626C 800CFEAC 91040002 */  lbu        $a0, 0x2($t0)
/* 86270 800CFEB0 00621021 */  addu       $v0, $v1, $v0
/* 86274 800CFEB4 A0440002 */  sb         $a0, 0x2($v0)
/* 86278 800CFEB8 8CA20008 */  lw         $v0, 0x8($a1)
/* 8627C 800CFEBC 91040003 */  lbu        $a0, 0x3($t0)
/* 86280 800CFEC0 00621821 */  addu       $v1, $v1, $v0
/* 86284 800CFEC4 A0640003 */  sb         $a0, 0x3($v1)
.Lrace_800CFEC8:
/* 86288 800CFEC8 91820001 */  lbu        $v0, 0x1($t4)
/* 8628C 800CFECC 24E70004 */  addiu      $a3, $a3, 0x4
/* 86290 800CFED0 004A1021 */  addu       $v0, $v0, $t2
/* 86294 800CFED4 A1820001 */  sb         $v0, 0x1($t4)
/* 86298 800CFED8 91C20001 */  lbu        $v0, 0x1($t6)
/* 8629C 800CFEDC 26D60001 */  addiu      $s6, $s6, 0x1
/* 862A0 800CFEE0 004A1021 */  addu       $v0, $v0, $t2
/* 862A4 800CFEE4 A1C20001 */  sb         $v0, 0x1($t6)
/* 862A8 800CFEE8 91A20001 */  lbu        $v0, 0x1($t5)
/* 862AC 800CFEEC 25290001 */  addiu      $t1, $t1, 0x1
/* 862B0 800CFEF0 004A1021 */  addu       $v0, $v0, $t2
/* 862B4 800CFEF4 A1A20001 */  sb         $v0, 0x1($t5)
/* 862B8 800CFEF8 8FA4005C */  lw         $a0, 0x5C($sp)
/* 862BC 800CFEFC 256B0001 */  addiu      $t3, $t3, 0x1
/* 862C0 800CFF00 8C820008 */  lw         $v0, 0x8($a0)
/* 862C4 800CFF04 91030001 */  lbu        $v1, 0x1($t0)
/* 862C8 800CFF08 00E21021 */  addu       $v0, $a3, $v0
/* 862CC 800CFF0C A0430001 */  sb         $v1, 0x1($v0)
/* 862D0 800CFF10 8C820008 */  lw         $v0, 0x8($a0)
/* 862D4 800CFF14 91030002 */  lbu        $v1, 0x2($t0)
/* 862D8 800CFF18 00E21021 */  addu       $v0, $a3, $v0
/* 862DC 800CFF1C A0430002 */  sb         $v1, 0x2($v0)
/* 862E0 800CFF20 8C820008 */  lw         $v0, 0x8($a0)
/* 862E4 800CFF24 91030003 */  lbu        $v1, 0x3($t0)
/* 862E8 800CFF28 00E21021 */  addu       $v0, $a3, $v0
/* 862EC 800CFF2C 08033F5B */  j          .Lrace_800CFD6C
/* 862F0 800CFF30 A0430003 */   sb        $v1, 0x3($v0)
.Lrace_800CFF34:
/* 862F4 800CFF34 8E220004 */  lw         $v0, 0x4($s1)
/* 862F8 800CFF38 8C430020 */  lw         $v1, 0x20($v0)
/* 862FC 800CFF3C 00171080 */  sll        $v0, $s7, 2
/* 86300 800CFF40 00431021 */  addu       $v0, $v0, $v1
/* 86304 800CFF44 AC460000 */  sw         $a2, 0x0($v0)
/* 86308 800CFF48 8E230004 */  lw         $v1, 0x4($s1)
/* 8630C 800CFF4C 8C62003C */  lw         $v0, 0x3C($v1)
/* 86310 800CFF50 24050001 */  addiu      $a1, $zero, 0x1
/* 86314 800CFF54 84440070 */  lh         $a0, 0x70($v0)
/* 86318 800CFF58 8C420074 */  lw         $v0, 0x74($v0)
/* 8631C 800CFF5C 0040F809 */  jalr       $v0
/* 86320 800CFF60 00642021 */   addu      $a0, $v1, $a0
/* 86324 800CFF64 8FA20060 */  lw         $v0, 0x60($sp)
/* 86328 800CFF68 8FBF009C */  lw         $ra, 0x9C($sp)
/* 8632C 800CFF6C 8FBE0098 */  lw         $fp, 0x98($sp)
/* 86330 800CFF70 8FB70094 */  lw         $s7, 0x94($sp)
/* 86334 800CFF74 8FB60090 */  lw         $s6, 0x90($sp)
/* 86338 800CFF78 8FB5008C */  lw         $s5, 0x8C($sp)
/* 8633C 800CFF7C 8FB40088 */  lw         $s4, 0x88($sp)
/* 86340 800CFF80 8FB30084 */  lw         $s3, 0x84($sp)
/* 86344 800CFF84 8FB20080 */  lw         $s2, 0x80($sp)
/* 86348 800CFF88 8FB1007C */  lw         $s1, 0x7C($sp)
/* 8634C 800CFF8C 8FB00078 */  lw         $s0, 0x78($sp)
/* 86350 800CFF90 D7BA00B8 */  ldc1       $f26, 0xB8($sp)
/* 86354 800CFF94 D7B800B0 */  ldc1       $f24, 0xB0($sp)
/* 86358 800CFF98 D7B600A8 */  ldc1       $f22, 0xA8($sp)
/* 8635C 800CFF9C D7B400A0 */  ldc1       $f20, 0xA0($sp)
/* 86360 800CFFA0 03E00008 */  jr         $ra
/* 86364 800CFFA4 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_race_800CFFA8
/* 86368 800CFFA8 27BDFF30 */  addiu      $sp, $sp, -0xD0
/* 8636C 800CFFAC AFB1007C */  sw         $s1, 0x7C($sp)
/* 86370 800CFFB0 00A08821 */  addu       $s1, $a1, $zero
/* 86374 800CFFB4 AFB00078 */  sw         $s0, 0x78($sp)
/* 86378 800CFFB8 00008021 */  addu       $s0, $zero, $zero
/* 8637C 800CFFBC AFB5008C */  sw         $s5, 0x8C($sp)
/* 86380 800CFFC0 0200A821 */  addu       $s5, $s0, $zero
/* 86384 800CFFC4 AFB60090 */  sw         $s6, 0x90($sp)
/* 86388 800CFFC8 0200B021 */  addu       $s6, $s0, $zero
/* 8638C 800CFFCC AFBF009C */  sw         $ra, 0x9C($sp)
/* 86390 800CFFD0 AFBE0098 */  sw         $fp, 0x98($sp)
/* 86394 800CFFD4 AFB70094 */  sw         $s7, 0x94($sp)
/* 86398 800CFFD8 AFB40088 */  sw         $s4, 0x88($sp)
/* 8639C 800CFFDC AFB30084 */  sw         $s3, 0x84($sp)
/* 863A0 800CFFE0 AFB20080 */  sw         $s2, 0x80($sp)
/* 863A4 800CFFE4 F7BE00C8 */  sdc1       $f30, 0xC8($sp)
/* 863A8 800CFFE8 F7BC00C0 */  sdc1       $f28, 0xC0($sp)
/* 863AC 800CFFEC F7BA00B8 */  sdc1       $f26, 0xB8($sp)
/* 863B0 800CFFF0 F7B800B0 */  sdc1       $f24, 0xB0($sp)
/* 863B4 800CFFF4 F7B600A8 */  sdc1       $f22, 0xA8($sp)
/* 863B8 800CFFF8 F7B400A0 */  sdc1       $f20, 0xA0($sp)
/* 863BC 800CFFFC 8E230018 */  lw         $v1, 0x18($s1)
/* 863C0 800D0000 3C01800D */  lui        $at, %hi(D_race_800CA7E4)
/* 863C4 800D0004 C422A7E4 */  lwc1       $f2, %lo(D_race_800CA7E4)($at)
/* 863C8 800D0008 8E22001C */  lw         $v0, 0x1C($s1)
/* 863CC 800D000C 44830000 */  mtc1       $v1, $f0
/* 863D0 800D0010 46800020 */  cvt.s.w    $f0, $f0
/* 863D4 800D0014 10400008 */  beqz       $v0, .Lrace_800D0038
/* 863D8 800D0018 46001683 */   div.s     $f26, $f2, $f0
/* 863DC 800D001C 3C01800D */  lui        $at, %hi(D_race_800CA7E8)
/* 863E0 800D0020 C420A7E8 */  lwc1       $f0, %lo(D_race_800CA7E8)($at)
/* 863E4 800D0024 461A0003 */  div.s      $f0, $f0, $f26
/* 863E8 800D0028 4600010D */  trunc.w.s  $f4, $f0
/* 863EC 800D002C 44022000 */  mfc1       $v0, $f4
/* 863F0 800D0030 08034010 */  j          .Lrace_800D0040
/* 863F4 800D0034 24420001 */   addiu     $v0, $v0, 0x1
.Lrace_800D0038:
/* 863F8 800D0038 00031042 */  srl        $v0, $v1, 1
/* 863FC 800D003C 2442FFFF */  addiu      $v0, $v0, -0x1
.Lrace_800D0040:
/* 86400 800D0040 AFA20060 */  sw         $v0, 0x60($sp)
/* 86404 800D0044 8FAF0060 */  lw         $t7, 0x60($sp)
/* 86408 800D0048 8E230018 */  lw         $v1, 0x18($s1)
/* 8640C 800D004C 25E50002 */  addiu      $a1, $t7, 0x2
/* 86410 800D0050 00A30018 */  mult       $a1, $v1
/* 86414 800D0054 00004012 */  mflo       $t0
/* 86418 800D0058 00000000 */  nop
/* 8641C 800D005C 00000000 */  nop
/* 86420 800D0060 01E30018 */  mult       $t7, $v1
/* 86424 800D0064 010F4021 */  addu       $t0, $t0, $t7
/* 86428 800D0068 AFA80064 */  sw         $t0, 0x64($sp)
/* 8642C 800D006C 8E220020 */  lw         $v0, 0x20($s1)
/* 86430 800D0070 00002012 */  mflo       $a0
/* 86434 800D0074 00042040 */  sll        $a0, $a0, 1
/* 86438 800D0078 14400007 */  bnez       $v0, .Lrace_800D0098
/* 8643C 800D007C AFA40068 */   sw        $a0, 0x68($sp)
/* 86440 800D0080 01007821 */  addu       $t7, $t0, $zero
/* 86444 800D0084 01E37823 */  subu       $t7, $t7, $v1
/* 86448 800D0088 AFAF0064 */  sw         $t7, 0x64($sp)
/* 8644C 800D008C 00807821 */  addu       $t7, $a0, $zero
/* 86450 800D0090 01E37823 */  subu       $t7, $t7, $v1
/* 86454 800D0094 AFAF0068 */  sw         $t7, 0x68($sp)
.Lrace_800D0098:
/* 86458 800D0098 8E220024 */  lw         $v0, 0x24($s1)
/* 8645C 800D009C 14400007 */  bnez       $v0, .Lrace_800D00BC
/* 86460 800D00A0 00051040 */   sll       $v0, $a1, 1
/* 86464 800D00A4 8FAF0064 */  lw         $t7, 0x64($sp)
/* 86468 800D00A8 01E37823 */  subu       $t7, $t7, $v1
/* 8646C 800D00AC AFAF0064 */  sw         $t7, 0x64($sp)
/* 86470 800D00B0 8FAF0068 */  lw         $t7, 0x68($sp)
/* 86474 800D00B4 01E37823 */  subu       $t7, $t7, $v1
/* 86478 800D00B8 AFAF0068 */  sw         $t7, 0x68($sp)
.Lrace_800D00BC:
/* 8647C 800D00BC 8E240004 */  lw         $a0, 0x4($s1)
/* 86480 800D00C0 96260030 */  lhu        $a2, 0x30($s1)
/* 86484 800D00C4 8C83003C */  lw         $v1, 0x3C($a0)
/* 86488 800D00C8 8FAF0068 */  lw         $t7, 0x68($sp)
/* 8648C 800D00CC 84670048 */  lh         $a3, 0x48($v1)
/* 86490 800D00D0 24420002 */  addiu      $v0, $v0, 0x2
/* 86494 800D00D4 AFA20014 */  sw         $v0, 0x14($sp)
/* 86498 800D00D8 24020001 */  addiu      $v0, $zero, 0x1
/* 8649C 800D00DC AFAF0010 */  sw         $t7, 0x10($sp)
/* 864A0 800D00E0 AFA20018 */  sw         $v0, 0x18($sp)
/* 864A4 800D00E4 8E250000 */  lw         $a1, 0x0($s1)
/* 864A8 800D00E8 8C62004C */  lw         $v0, 0x4C($v1)
/* 864AC 800D00EC 00872021 */  addu       $a0, $a0, $a3
/* 864B0 800D00F0 8FA70064 */  lw         $a3, 0x64($sp)
/* 864B4 800D00F4 0040F809 */  jalr       $v0
/* 864B8 800D00F8 00000000 */   nop
/* 864BC 800D00FC 8E220028 */  lw         $v0, 0x28($s1)
/* 864C0 800D0100 10400004 */  beqz       $v0, .Lrace_800D0114
/* 864C4 800D0104 240F0002 */   addiu     $t7, $zero, 0x2
/* 864C8 800D0108 AFAF0070 */  sw         $t7, 0x70($sp)
/* 864CC 800D010C 08034048 */  j          .Lrace_800D0120
/* 864D0 800D0110 240F0001 */   addiu     $t7, $zero, 0x1
.Lrace_800D0114:
/* 864D4 800D0114 240F0001 */  addiu      $t7, $zero, 0x1
/* 864D8 800D0118 AFAF0070 */  sw         $t7, 0x70($sp)
/* 864DC 800D011C 240F0002 */  addiu      $t7, $zero, 0x2
.Lrace_800D0120:
/* 864E0 800D0120 AFA0006C */  sw         $zero, 0x6C($sp)
/* 864E4 800D0124 AFAF0074 */  sw         $t7, 0x74($sp)
/* 864E8 800D0128 240200FF */  addiu      $v0, $zero, 0xFF
/* 864EC 800D012C 27A50058 */  addiu      $a1, $sp, 0x58
/* 864F0 800D0130 A3A20050 */  sb         $v0, 0x50($sp)
/* 864F4 800D0134 A3A20051 */  sb         $v0, 0x51($sp)
/* 864F8 800D0138 A3A20052 */  sb         $v0, 0x52($sp)
/* 864FC 800D013C A3A20053 */  sb         $v0, 0x53($sp)
/* 86500 800D0140 8E220004 */  lw         $v0, 0x4($s1)
/* 86504 800D0144 C6200018 */  lwc1       $f0, 0x18($s1)
/* 86508 800D0148 46800020 */  cvt.s.w    $f0, $f0
/* 8650C 800D014C 8C43003C */  lw         $v1, 0x3C($v0)
/* 86510 800D0150 46000000 */  add.s      $f0, $f0, $f0
/* 86514 800D0154 84640058 */  lh         $a0, 0x58($v1)
/* 86518 800D0158 3C01800D */  lui        $at, %hi(D_race_800CA7EC)
/* 8651C 800D015C C434A7EC */  lwc1       $f20, %lo(D_race_800CA7EC)($at)
/* 86520 800D0160 00442021 */  addu       $a0, $v0, $a0
/* 86524 800D0164 8C62005C */  lw         $v0, 0x5C($v1)
/* 86528 800D0168 0040F809 */  jalr       $v0
/* 8652C 800D016C 4600A783 */   div.s     $f30, $f20, $f0
/* 86530 800D0170 8E220020 */  lw         $v0, 0x20($s1)
/* 86534 800D0174 3C01800D */  lui        $at, %hi(D_race_800CA7F0)
/* 86538 800D0178 C43CA7F0 */  lwc1       $f28, %lo(D_race_800CA7F0)($at)
/* 8653C 800D017C 1040003F */  beqz       $v0, .Lrace_800D027C
/* 86540 800D0180 4600D586 */   mov.s     $f22, $f26
/* 86544 800D0184 C6200008 */  lwc1       $f0, 0x8($s1)
/* 86548 800D0188 E7A00038 */  swc1       $f0, 0x38($sp)
/* 8654C 800D018C C620000C */  lwc1       $f0, 0xC($s1)
/* 86550 800D0190 E7A0003C */  swc1       $f0, 0x3C($sp)
/* 86554 800D0194 C6200010 */  lwc1       $f0, 0x10($s1)
/* 86558 800D0198 C6220014 */  lwc1       $f2, 0x14($s1)
/* 8655C 800D019C AFA00028 */  sw         $zero, 0x28($sp)
/* 86560 800D01A0 46020000 */  add.s      $f0, $f0, $f2
/* 86564 800D01A4 AFA0002C */  sw         $zero, 0x2C($sp)
/* 86568 800D01A8 E7B40030 */  swc1       $f20, 0x30($sp)
/* 8656C 800D01AC E7A00040 */  swc1       $f0, 0x40($sp)
/* 86570 800D01B0 8E220018 */  lw         $v0, 0x18($s1)
/* 86574 800D01B4 C7B40028 */  lwc1       $f20, 0x28($sp)
/* 86578 800D01B8 10400030 */  beqz       $v0, .Lrace_800D027C
/* 8657C 800D01BC 00009021 */   addu      $s2, $zero, $zero
.Lrace_800D01C0:
/* 86580 800D01C0 8FA30058 */  lw         $v1, 0x58($sp)
/* 86584 800D01C4 02002821 */  addu       $a1, $s0, $zero
/* 86588 800D01C8 8C620008 */  lw         $v0, 0x8($v1)
/* 8658C 800D01CC 27A60038 */  addiu      $a2, $sp, 0x38
/* 86590 800D01D0 84440050 */  lh         $a0, 0x50($v0)
/* 86594 800D01D4 8C420054 */  lw         $v0, 0x54($v0)
/* 86598 800D01D8 0040F809 */  jalr       $v0
/* 8659C 800D01DC 00642021 */   addu      $a0, $v1, $a0
/* 865A0 800D01E0 96230030 */  lhu        $v1, 0x30($s1)
/* 865A4 800D01E4 24020001 */  addiu      $v0, $zero, 0x1
/* 865A8 800D01E8 14620008 */  bne        $v1, $v0, .Lrace_800D020C
/* 865AC 800D01EC 24020002 */   addiu     $v0, $zero, 0x2
/* 865B0 800D01F0 8FA30058 */  lw         $v1, 0x58($sp)
/* 865B4 800D01F4 02002821 */  addu       $a1, $s0, $zero
/* 865B8 800D01F8 8C620008 */  lw         $v0, 0x8($v1)
/* 865BC 800D01FC 84440068 */  lh         $a0, 0x68($v0)
/* 865C0 800D0200 8C42006C */  lw         $v0, 0x6C($v0)
/* 865C4 800D0204 0803408A */  j          .Lrace_800D0228
/* 865C8 800D0208 27A60050 */   addiu     $a2, $sp, 0x50
.Lrace_800D020C:
/* 865CC 800D020C 14620008 */  bne        $v1, $v0, .Lrace_800D0230
/* 865D0 800D0210 02002821 */   addu      $a1, $s0, $zero
/* 865D4 800D0214 8FA30058 */  lw         $v1, 0x58($sp)
/* 865D8 800D0218 8C620008 */  lw         $v0, 0x8($v1)
/* 865DC 800D021C 27A60028 */  addiu      $a2, $sp, 0x28
/* 865E0 800D0220 84440060 */  lh         $a0, 0x60($v0)
/* 865E4 800D0224 8C420064 */  lw         $v0, 0x64($v0)
.Lrace_800D0228:
/* 865E8 800D0228 0040F809 */  jalr       $v0
/* 865EC 800D022C 00642021 */   addu      $a0, $v1, $a0
.Lrace_800D0230:
/* 865F0 800D0230 461CA002 */  mul.s      $f0, $f20, $f28
/* 865F4 800D0234 02002821 */  addu       $a1, $s0, $zero
/* 865F8 800D0238 27A60048 */  addiu      $a2, $sp, 0x48
/* 865FC 800D023C 8FA30058 */  lw         $v1, 0x58($sp)
/* 86600 800D0240 461E0000 */  add.s      $f0, $f0, $f30
/* 86604 800D0244 26100001 */  addiu      $s0, $s0, 0x1
/* 86608 800D0248 AFA0004C */  sw         $zero, 0x4C($sp)
/* 8660C 800D024C E7A00048 */  swc1       $f0, 0x48($sp)
/* 86610 800D0250 8C620008 */  lw         $v0, 0x8($v1)
/* 86614 800D0254 26520001 */  addiu      $s2, $s2, 0x1
/* 86618 800D0258 84440058 */  lh         $a0, 0x58($v0)
/* 8661C 800D025C 8C42005C */  lw         $v0, 0x5C($v0)
/* 86620 800D0260 0040F809 */  jalr       $v0
/* 86624 800D0264 00642021 */   addu      $a0, $v1, $a0
/* 86628 800D0268 8E220018 */  lw         $v0, 0x18($s1)
/* 8662C 800D026C 0242102B */  sltu       $v0, $s2, $v0
/* 86630 800D0270 1440FFD3 */  bnez       $v0, .Lrace_800D01C0
/* 86634 800D0274 461AA500 */   add.s     $f20, $f20, $f26
/* 86638 800D0278 4600D586 */  mov.s      $f22, $f26
.Lrace_800D027C:
/* 8663C 800D027C 00009821 */  addu       $s3, $zero, $zero
/* 86640 800D0280 27B40028 */  addiu      $s4, $sp, 0x28
/* 86644 800D0284 27BE0038 */  addiu      $fp, $sp, 0x38
/* 86648 800D0288 27B70050 */  addiu      $s7, $sp, 0x50
.Lrace_800D028C:
/* 8664C 800D028C 8FAF0060 */  lw         $t7, 0x60($sp)
/* 86650 800D0290 026F102B */  sltu       $v0, $s3, $t7
/* 86654 800D0294 104000AC */  beqz       $v0, .Lrace_800D0548
/* 86658 800D0298 00000000 */   nop
/* 8665C 800D029C 8E22001C */  lw         $v0, 0x1C($s1)
/* 86660 800D02A0 10400005 */  beqz       $v0, .Lrace_800D02B8
/* 86664 800D02A4 25E2FFFF */   addiu     $v0, $t7, -0x1
/* 86668 800D02A8 16620003 */  bne        $s3, $v0, .Lrace_800D02B8
/* 8666C 800D02AC 00000000 */   nop
/* 86670 800D02B0 3C01800D */  lui        $at, %hi(D_race_800CA7F4)
/* 86674 800D02B4 C436A7F4 */  lwc1       $f22, %lo(D_race_800CA7F4)($at)
.Lrace_800D02B8:
/* 86678 800D02B8 0C006BCC */  jal        cosf
/* 8667C 800D02BC 4600B306 */   mov.s     $f12, $f22
/* 86680 800D02C0 C6220014 */  lwc1       $f2, 0x14($s1)
/* 86684 800D02C4 46020002 */  mul.s      $f0, $f0, $f2
/* 86688 800D02C8 C6220010 */  lwc1       $f2, 0x10($s1)
/* 8668C 800D02CC 46001080 */  add.s      $f2, $f2, $f0
/* 86690 800D02D0 4600B306 */  mov.s      $f12, $f22
/* 86694 800D02D4 00009021 */  addu       $s2, $zero, $zero
/* 86698 800D02D8 0C006D60 */  jal        sinf
/* 8669C 800D02DC E7A20040 */   swc1      $f2, 0x40($sp)
/* 866A0 800D02E0 C6220014 */  lwc1       $f2, 0x14($s1)
/* 866A4 800D02E4 4480A000 */  mtc1       $zero, $f20
/* 866A8 800D02E8 46020602 */  mul.s      $f24, $f0, $f2
.Lrace_800D02EC:
/* 866AC 800D02EC 8E240018 */  lw         $a0, 0x18($s1)
/* 866B0 800D02F0 24820001 */  addiu      $v0, $a0, 0x1
/* 866B4 800D02F4 0242102B */  sltu       $v0, $s2, $v0
/* 866B8 800D02F8 10400090 */  beqz       $v0, .Lrace_800D053C
/* 866BC 800D02FC 0244102B */   sltu      $v0, $s2, $a0
/* 866C0 800D0300 10400045 */  beqz       $v0, .Lrace_800D0418
/* 866C4 800D0304 02042823 */   subu      $a1, $s0, $a0
/* 866C8 800D0308 0C006BCC */  jal        cosf
/* 866CC 800D030C 4600A306 */   mov.s     $f12, $f20
/* 866D0 800D0310 46180002 */  mul.s      $f0, $f0, $f24
/* 866D4 800D0314 C6220008 */  lwc1       $f2, 0x8($s1)
/* 866D8 800D0318 46001080 */  add.s      $f2, $f2, $f0
/* 866DC 800D031C 4600A306 */  mov.s      $f12, $f20
/* 866E0 800D0320 0C006D60 */  jal        sinf
/* 866E4 800D0324 E7A20038 */   swc1      $f2, 0x38($sp)
/* 866E8 800D0328 46180002 */  mul.s      $f0, $f0, $f24
/* 866EC 800D032C C622000C */  lwc1       $f2, 0xC($s1)
/* 866F0 800D0330 46001080 */  add.s      $f2, $f2, $f0
/* 866F4 800D0334 8FA30058 */  lw         $v1, 0x58($sp)
/* 866F8 800D0338 02002821 */  addu       $a1, $s0, $zero
/* 866FC 800D033C E7A2003C */  swc1       $f2, 0x3C($sp)
/* 86700 800D0340 8C620008 */  lw         $v0, 0x8($v1)
/* 86704 800D0344 27A60038 */  addiu      $a2, $sp, 0x38
/* 86708 800D0348 84440050 */  lh         $a0, 0x50($v0)
/* 8670C 800D034C 8C420054 */  lw         $v0, 0x54($v0)
/* 86710 800D0350 0040F809 */  jalr       $v0
/* 86714 800D0354 00642021 */   addu      $a0, $v1, $a0
/* 86718 800D0358 C7A00038 */  lwc1       $f0, 0x38($sp)
/* 8671C 800D035C C6220008 */  lwc1       $f2, 0x8($s1)
/* 86720 800D0360 46020001 */  sub.s      $f0, $f0, $f2
/* 86724 800D0364 E7A00028 */  swc1       $f0, 0x28($sp)
/* 86728 800D0368 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* 8672C 800D036C C622000C */  lwc1       $f2, 0xC($s1)
/* 86730 800D0370 46020001 */  sub.s      $f0, $f0, $f2
/* 86734 800D0374 C7A20040 */  lwc1       $f2, 0x40($sp)
/* 86738 800D0378 E7A0002C */  swc1       $f0, 0x2C($sp)
/* 8673C 800D037C C6200010 */  lwc1       $f0, 0x10($s1)
/* 86740 800D0380 46001081 */  sub.s      $f2, $f2, $f0
/* 86744 800D0384 02802021 */  addu       $a0, $s4, $zero
/* 86748 800D0388 02802821 */  addu       $a1, $s4, $zero
/* 8674C 800D038C 0C000F26 */  jal        func_80003C98
/* 86750 800D0390 E7A20030 */   swc1      $f2, 0x30($sp)
/* 86754 800D0394 240F0001 */  addiu      $t7, $zero, 0x1
/* 86758 800D0398 96230030 */  lhu        $v1, 0x30($s1)
/* 8675C 800D039C 146F0008 */  bne        $v1, $t7, .Lrace_800D03C0
/* 86760 800D03A0 461AA500 */   add.s     $f20, $f20, $f26
/* 86764 800D03A4 8FA30058 */  lw         $v1, 0x58($sp)
/* 86768 800D03A8 02002821 */  addu       $a1, $s0, $zero
/* 8676C 800D03AC 8C620008 */  lw         $v0, 0x8($v1)
/* 86770 800D03B0 84440068 */  lh         $a0, 0x68($v0)
/* 86774 800D03B4 8C42006C */  lw         $v0, 0x6C($v0)
/* 86778 800D03B8 080340F9 */  j          .Lrace_800D03E4
/* 8677C 800D03BC 27A60050 */   addiu     $a2, $sp, 0x50
.Lrace_800D03C0:
/* 86780 800D03C0 24020002 */  addiu      $v0, $zero, 0x2
/* 86784 800D03C4 5462000A */  bnel       $v1, $v0, .Lrace_800D03F0
/* 86788 800D03C8 461AA081 */   sub.s     $f2, $f20, $f26
/* 8678C 800D03CC 8FA30058 */  lw         $v1, 0x58($sp)
/* 86790 800D03D0 02002821 */  addu       $a1, $s0, $zero
/* 86794 800D03D4 8C620008 */  lw         $v0, 0x8($v1)
/* 86798 800D03D8 02803021 */  addu       $a2, $s4, $zero
/* 8679C 800D03DC 84440060 */  lh         $a0, 0x60($v0)
/* 867A0 800D03E0 8C420064 */  lw         $v0, 0x64($v0)
.Lrace_800D03E4:
/* 867A4 800D03E4 0040F809 */  jalr       $v0
/* 867A8 800D03E8 00642021 */   addu      $a0, $v1, $a0
/* 867AC 800D03EC 461AA081 */  sub.s      $f2, $f20, $f26
.Lrace_800D03F0:
/* 867B0 800D03F0 02002821 */  addu       $a1, $s0, $zero
/* 867B4 800D03F4 27A60048 */  addiu      $a2, $sp, 0x48
/* 867B8 800D03F8 461C1082 */  mul.s      $f2, $f2, $f28
/* 867BC 800D03FC 3C01800D */  lui        $at, %hi(D_race_800CA7F8)
/* 867C0 800D0400 C420A7F8 */  lwc1       $f0, %lo(D_race_800CA7F8)($at)
/* 867C4 800D0404 8FA30058 */  lw         $v1, 0x58($sp)
/* 867C8 800D0408 4600B003 */  div.s      $f0, $f22, $f0
/* 867CC 800D040C E7A0004C */  swc1       $f0, 0x4C($sp)
/* 867D0 800D0410 08034147 */  j          .Lrace_800D051C
/* 867D4 800D0414 E7A20048 */   swc1      $f2, 0x48($sp)
.Lrace_800D0418:
/* 867D8 800D0418 8FA30058 */  lw         $v1, 0x58($sp)
/* 867DC 800D041C 8C620008 */  lw         $v0, 0x8($v1)
/* 867E0 800D0420 03C03021 */  addu       $a2, $fp, $zero
/* 867E4 800D0424 84440030 */  lh         $a0, 0x30($v0)
/* 867E8 800D0428 8C420034 */  lw         $v0, 0x34($v0)
/* 867EC 800D042C 0040F809 */  jalr       $v0
/* 867F0 800D0430 00642021 */   addu      $a0, $v1, $a0
/* 867F4 800D0434 02E03021 */  addu       $a2, $s7, $zero
/* 867F8 800D0438 8FA30058 */  lw         $v1, 0x58($sp)
/* 867FC 800D043C 8E250018 */  lw         $a1, 0x18($s1)
/* 86800 800D0440 8C620008 */  lw         $v0, 0x8($v1)
/* 86804 800D0444 02052823 */  subu       $a1, $s0, $a1
/* 86808 800D0448 84440048 */  lh         $a0, 0x48($v0)
/* 8680C 800D044C 8C42004C */  lw         $v0, 0x4C($v0)
/* 86810 800D0450 0040F809 */  jalr       $v0
/* 86814 800D0454 00642021 */   addu      $a0, $v1, $a0
/* 86818 800D0458 02803021 */  addu       $a2, $s4, $zero
/* 8681C 800D045C 8FA30058 */  lw         $v1, 0x58($sp)
/* 86820 800D0460 8E250018 */  lw         $a1, 0x18($s1)
/* 86824 800D0464 8C620008 */  lw         $v0, 0x8($v1)
/* 86828 800D0468 02052823 */  subu       $a1, $s0, $a1
/* 8682C 800D046C 84440040 */  lh         $a0, 0x40($v0)
/* 86830 800D0470 8C420044 */  lw         $v0, 0x44($v0)
/* 86834 800D0474 0040F809 */  jalr       $v0
/* 86838 800D0478 00642021 */   addu      $a0, $v1, $a0
/* 8683C 800D047C 27A60048 */  addiu      $a2, $sp, 0x48
/* 86840 800D0480 8FA30058 */  lw         $v1, 0x58($sp)
/* 86844 800D0484 8E250018 */  lw         $a1, 0x18($s1)
/* 86848 800D0488 8C620008 */  lw         $v0, 0x8($v1)
/* 8684C 800D048C 02052823 */  subu       $a1, $s0, $a1
/* 86850 800D0490 84440038 */  lh         $a0, 0x38($v0)
/* 86854 800D0494 8C42003C */  lw         $v0, 0x3C($v0)
/* 86858 800D0498 0040F809 */  jalr       $v0
/* 8685C 800D049C 00642021 */   addu      $a0, $v1, $a0
/* 86860 800D04A0 3C01800D */  lui        $at, %hi(D_race_800CA7FC)
/* 86864 800D04A4 C420A7FC */  lwc1       $f0, %lo(D_race_800CA7FC)($at)
/* 86868 800D04A8 8FA30058 */  lw         $v1, 0x58($sp)
/* 8686C 800D04AC 02002821 */  addu       $a1, $s0, $zero
/* 86870 800D04B0 E7A00048 */  swc1       $f0, 0x48($sp)
/* 86874 800D04B4 8C620008 */  lw         $v0, 0x8($v1)
/* 86878 800D04B8 03C03021 */  addu       $a2, $fp, $zero
/* 8687C 800D04BC 84440050 */  lh         $a0, 0x50($v0)
/* 86880 800D04C0 8C420054 */  lw         $v0, 0x54($v0)
/* 86884 800D04C4 0040F809 */  jalr       $v0
/* 86888 800D04C8 00642021 */   addu      $a0, $v1, $a0
/* 8688C 800D04CC 96220030 */  lhu        $v0, 0x30($s1)
/* 86890 800D04D0 240F0001 */  addiu      $t7, $zero, 0x1
/* 86894 800D04D4 144F0007 */  bne        $v0, $t7, .Lrace_800D04F4
/* 86898 800D04D8 02002821 */   addu      $a1, $s0, $zero
/* 8689C 800D04DC 8FA30058 */  lw         $v1, 0x58($sp)
/* 868A0 800D04E0 8C620008 */  lw         $v0, 0x8($v1)
/* 868A4 800D04E4 84440068 */  lh         $a0, 0x68($v0)
/* 868A8 800D04E8 8C42006C */  lw         $v0, 0x6C($v0)
/* 868AC 800D04EC 08034142 */  j          .Lrace_800D0508
/* 868B0 800D04F0 02E03021 */   addu      $a2, $s7, $zero
.Lrace_800D04F4:
/* 868B4 800D04F4 8FA30058 */  lw         $v1, 0x58($sp)
/* 868B8 800D04F8 8C620008 */  lw         $v0, 0x8($v1)
/* 868BC 800D04FC 02803021 */  addu       $a2, $s4, $zero
/* 868C0 800D0500 84440060 */  lh         $a0, 0x60($v0)
/* 868C4 800D0504 8C420064 */  lw         $v0, 0x64($v0)
.Lrace_800D0508:
/* 868C8 800D0508 0040F809 */  jalr       $v0
/* 868CC 800D050C 00642021 */   addu      $a0, $v1, $a0
/* 868D0 800D0510 02002821 */  addu       $a1, $s0, $zero
/* 868D4 800D0514 8FA30058 */  lw         $v1, 0x58($sp)
/* 868D8 800D0518 27A60048 */  addiu      $a2, $sp, 0x48
.Lrace_800D051C:
/* 868DC 800D051C 8C620008 */  lw         $v0, 0x8($v1)
/* 868E0 800D0520 26100001 */  addiu      $s0, $s0, 0x1
/* 868E4 800D0524 84440058 */  lh         $a0, 0x58($v0)
/* 868E8 800D0528 8C42005C */  lw         $v0, 0x5C($v0)
/* 868EC 800D052C 0040F809 */  jalr       $v0
/* 868F0 800D0530 00642021 */   addu      $a0, $v1, $a0
/* 868F4 800D0534 080340BB */  j          .Lrace_800D02EC
/* 868F8 800D0538 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800D053C:
/* 868FC 800D053C 26730001 */  addiu      $s3, $s3, 0x1
/* 86900 800D0540 080340A3 */  j          .Lrace_800D028C
/* 86904 800D0544 461AB580 */   add.s     $f22, $f22, $f26
.Lrace_800D0548:
/* 86908 800D0548 8E220024 */  lw         $v0, 0x24($s1)
/* 8690C 800D054C 10400048 */  beqz       $v0, .Lrace_800D0670
/* 86910 800D0550 00000000 */   nop
/* 86914 800D0554 C6200008 */  lwc1       $f0, 0x8($s1)
/* 86918 800D0558 E7A00038 */  swc1       $f0, 0x38($sp)
/* 8691C 800D055C C620000C */  lwc1       $f0, 0xC($s1)
/* 86920 800D0560 E7A0003C */  swc1       $f0, 0x3C($sp)
/* 86924 800D0564 8E22001C */  lw         $v0, 0x1C($s1)
/* 86928 800D0568 10400004 */  beqz       $v0, .Lrace_800D057C
/* 8692C 800D056C 00000000 */   nop
/* 86930 800D0570 C6200010 */  lwc1       $f0, 0x10($s1)
/* 86934 800D0574 08034163 */  j          .Lrace_800D058C
/* 86938 800D0578 E7A00040 */   swc1      $f0, 0x40($sp)
.Lrace_800D057C:
/* 8693C 800D057C C6200010 */  lwc1       $f0, 0x10($s1)
/* 86940 800D0580 C6220014 */  lwc1       $f2, 0x14($s1)
/* 86944 800D0584 46020001 */  sub.s      $f0, $f0, $f2
/* 86948 800D0588 E7A00040 */  swc1       $f0, 0x40($sp)
.Lrace_800D058C:
/* 8694C 800D058C 3C01800D */  lui        $at, %hi(D_race_800CA800)
/* 86950 800D0590 C420A800 */  lwc1       $f0, %lo(D_race_800CA800)($at)
/* 86954 800D0594 AFA00028 */  sw         $zero, 0x28($sp)
/* 86958 800D0598 AFA0002C */  sw         $zero, 0x2C($sp)
/* 8695C 800D059C E7A00030 */  swc1       $f0, 0x30($sp)
/* 86960 800D05A0 8E220018 */  lw         $v0, 0x18($s1)
/* 86964 800D05A4 C7B40028 */  lwc1       $f20, 0x28($sp)
/* 86968 800D05A8 10400031 */  beqz       $v0, .Lrace_800D0670
/* 8696C 800D05AC 00009021 */   addu      $s2, $zero, $zero
.Lrace_800D05B0:
/* 86970 800D05B0 8FA30058 */  lw         $v1, 0x58($sp)
/* 86974 800D05B4 02002821 */  addu       $a1, $s0, $zero
/* 86978 800D05B8 8C620008 */  lw         $v0, 0x8($v1)
/* 8697C 800D05BC 27A60038 */  addiu      $a2, $sp, 0x38
/* 86980 800D05C0 84440050 */  lh         $a0, 0x50($v0)
/* 86984 800D05C4 8C420054 */  lw         $v0, 0x54($v0)
/* 86988 800D05C8 0040F809 */  jalr       $v0
/* 8698C 800D05CC 00642021 */   addu      $a0, $v1, $a0
/* 86990 800D05D0 96230030 */  lhu        $v1, 0x30($s1)
/* 86994 800D05D4 24020001 */  addiu      $v0, $zero, 0x1
/* 86998 800D05D8 14620008 */  bne        $v1, $v0, .Lrace_800D05FC
/* 8699C 800D05DC 24020002 */   addiu     $v0, $zero, 0x2
/* 869A0 800D05E0 8FA30058 */  lw         $v1, 0x58($sp)
/* 869A4 800D05E4 02002821 */  addu       $a1, $s0, $zero
/* 869A8 800D05E8 8C620008 */  lw         $v0, 0x8($v1)
/* 869AC 800D05EC 84440068 */  lh         $a0, 0x68($v0)
/* 869B0 800D05F0 8C42006C */  lw         $v0, 0x6C($v0)
/* 869B4 800D05F4 08034186 */  j          .Lrace_800D0618
/* 869B8 800D05F8 27A60050 */   addiu     $a2, $sp, 0x50
.Lrace_800D05FC:
/* 869BC 800D05FC 14620008 */  bne        $v1, $v0, .Lrace_800D0620
/* 869C0 800D0600 02002821 */   addu      $a1, $s0, $zero
/* 869C4 800D0604 8FA30058 */  lw         $v1, 0x58($sp)
/* 869C8 800D0608 8C620008 */  lw         $v0, 0x8($v1)
/* 869CC 800D060C 27A60028 */  addiu      $a2, $sp, 0x28
/* 869D0 800D0610 84440060 */  lh         $a0, 0x60($v0)
/* 869D4 800D0614 8C420064 */  lw         $v0, 0x64($v0)
.Lrace_800D0618:
/* 869D8 800D0618 0040F809 */  jalr       $v0
/* 869DC 800D061C 00642021 */   addu      $a0, $v1, $a0
.Lrace_800D0620:
/* 869E0 800D0620 461CA002 */  mul.s      $f0, $f20, $f28
/* 869E4 800D0624 02002821 */  addu       $a1, $s0, $zero
/* 869E8 800D0628 27A60048 */  addiu      $a2, $sp, 0x48
/* 869EC 800D062C 3C01800D */  lui        $at, %hi(D_race_800CA804)
/* 869F0 800D0630 C422A804 */  lwc1       $f2, %lo(D_race_800CA804)($at)
/* 869F4 800D0634 8FA30058 */  lw         $v1, 0x58($sp)
/* 869F8 800D0638 461E0000 */  add.s      $f0, $f0, $f30
/* 869FC 800D063C 26100001 */  addiu      $s0, $s0, 0x1
/* 86A00 800D0640 E7A2004C */  swc1       $f2, 0x4C($sp)
/* 86A04 800D0644 E7A00048 */  swc1       $f0, 0x48($sp)
/* 86A08 800D0648 8C620008 */  lw         $v0, 0x8($v1)
/* 86A0C 800D064C 26520001 */  addiu      $s2, $s2, 0x1
/* 86A10 800D0650 84440058 */  lh         $a0, 0x58($v0)
/* 86A14 800D0654 8C42005C */  lw         $v0, 0x5C($v0)
/* 86A18 800D0658 0040F809 */  jalr       $v0
/* 86A1C 800D065C 00642021 */   addu      $a0, $v1, $a0
/* 86A20 800D0660 8E220018 */  lw         $v0, 0x18($s1)
/* 86A24 800D0664 0242102B */  sltu       $v0, $s2, $v0
/* 86A28 800D0668 1440FFD1 */  bnez       $v0, .Lrace_800D05B0
/* 86A2C 800D066C 461AA500 */   add.s     $f20, $f20, $f26
.Lrace_800D0670:
/* 86A30 800D0670 8E230004 */  lw         $v1, 0x4($s1)
/* 86A34 800D0674 24050001 */  addiu      $a1, $zero, 0x1
/* 86A38 800D0678 8C62003C */  lw         $v0, 0x3C($v1)
/* 86A3C 800D067C 00003021 */  addu       $a2, $zero, $zero
/* 86A40 800D0680 84440060 */  lh         $a0, 0x60($v0)
/* 86A44 800D0684 8C420064 */  lw         $v0, 0x64($v0)
/* 86A48 800D0688 0040F809 */  jalr       $v0
/* 86A4C 800D068C 00642021 */   addu      $a0, $v1, $a0
/* 86A50 800D0690 3C064000 */  lui        $a2, (0x40000000 >> 16)
/* 86A54 800D0694 8E230004 */  lw         $v1, 0x4($s1)
/* 86A58 800D0698 02C01021 */  addu       $v0, $s6, $zero
/* 86A5C 800D069C 8C630020 */  lw         $v1, 0x20($v1)
/* 86A60 800D06A0 00021080 */  sll        $v0, $v0, 2
/* 86A64 800D06A4 00431021 */  addu       $v0, $v0, $v1
/* 86A68 800D06A8 AC460000 */  sw         $a2, 0x0($v0)
/* 86A6C 800D06AC 8E230034 */  lw         $v1, 0x34($s1)
/* 86A70 800D06B0 10600007 */  beqz       $v1, .Lrace_800D06D0
/* 86A74 800D06B4 26D60001 */   addiu     $s6, $s6, 0x1
/* 86A78 800D06B8 8C620004 */  lw         $v0, 0x4($v1)
/* 86A7C 800D06BC 8FA50068 */  lw         $a1, 0x68($sp)
/* 86A80 800D06C0 84440020 */  lh         $a0, 0x20($v0)
/* 86A84 800D06C4 8C420024 */  lw         $v0, 0x24($v0)
/* 86A88 800D06C8 0040F809 */  jalr       $v0
/* 86A8C 800D06CC 00642021 */   addu      $a0, $v1, $a0
.Lrace_800D06D0:
/* 86A90 800D06D0 8E230004 */  lw         $v1, 0x4($s1)
/* 86A94 800D06D4 8C62003C */  lw         $v0, 0x3C($v1)
/* 86A98 800D06D8 27A5005C */  addiu      $a1, $sp, 0x5C
/* 86A9C 800D06DC 84440068 */  lh         $a0, 0x68($v0)
/* 86AA0 800D06E0 8C42006C */  lw         $v0, 0x6C($v0)
/* 86AA4 800D06E4 0040F809 */  jalr       $v0
/* 86AA8 800D06E8 00642021 */   addu      $a0, $v1, $a0
/* 86AAC 800D06EC 8E220020 */  lw         $v0, 0x20($s1)
/* 86AB0 800D06F0 1040004D */  beqz       $v0, .Lrace_800D0828
/* 86AB4 800D06F4 00008021 */   addu      $s0, $zero, $zero
/* 86AB8 800D06F8 02C02021 */  addu       $a0, $s6, $zero
/* 86ABC 800D06FC 26D60001 */  addiu      $s6, $s6, 0x1
/* 86AC0 800D0700 02C02821 */  addu       $a1, $s6, $zero
/* 86AC4 800D0704 26D60001 */  addiu      $s6, $s6, 0x1
/* 86AC8 800D0708 02009821 */  addu       $s3, $s0, $zero
/* 86ACC 800D070C 27A70020 */  addiu      $a3, $sp, 0x20
/* 86AD0 800D0710 00151880 */  sll        $v1, $s5, 2
/* 86AD4 800D0714 2468FFFC */  addiu      $t0, $v1, -0x4
/* 86AD8 800D0718 00042080 */  sll        $a0, $a0, 2
/* 86ADC 800D071C 00052880 */  sll        $a1, $a1, 2
/* 86AE0 800D0720 8FAF006C */  lw         $t7, 0x6C($sp)
/* 86AE4 800D0724 8E220018 */  lw         $v0, 0x18($s1)
/* 86AE8 800D0728 8E230004 */  lw         $v1, 0x4($s1)
/* 86AEC 800D072C 00EF5821 */  addu       $t3, $a3, $t7
/* 86AF0 800D0730 00021040 */  sll        $v0, $v0, 1
/* 86AF4 800D0734 24500001 */  addiu      $s0, $v0, 0x1
/* 86AF8 800D0738 3042003F */  andi       $v0, $v0, 0x3F
/* 86AFC 800D073C 00023400 */  sll        $a2, $v0, 16
/* 86B00 800D0740 8FAF0070 */  lw         $t7, 0x70($sp)
/* 86B04 800D0744 8C620020 */  lw         $v0, 0x20($v1)
/* 86B08 800D0748 00EF5021 */  addu       $t2, $a3, $t7
/* 86B0C 800D074C 8FAF0074 */  lw         $t7, 0x74($sp)
/* 86B10 800D0750 00822021 */  addu       $a0, $a0, $v0
/* 86B14 800D0754 AC860000 */  sw         $a2, 0x0($a0)
/* 86B18 800D0758 3C061000 */  lui        $a2, (0x10000000 >> 16)
/* 86B1C 800D075C 8E220018 */  lw         $v0, 0x18($s1)
/* 86B20 800D0760 8E230004 */  lw         $v1, 0x4($s1)
/* 86B24 800D0764 30420FFF */  andi       $v0, $v0, 0xFFF
/* 86B28 800D0768 00021400 */  sll        $v0, $v0, 16
/* 86B2C 800D076C 00463025 */  or         $a2, $v0, $a2
/* 86B30 800D0770 8C620020 */  lw         $v0, 0x20($v1)
/* 86B34 800D0774 00EF4821 */  addu       $t1, $a3, $t7
/* 86B38 800D0778 00A22821 */  addu       $a1, $a1, $v0
/* 86B3C 800D077C ACA60000 */  sw         $a2, 0x0($a1)
.Lrace_800D0780:
/* 86B40 800D0780 8E220018 */  lw         $v0, 0x18($s1)
/* 86B44 800D0784 0262102B */  sltu       $v0, $s3, $v0
/* 86B48 800D0788 10400027 */  beqz       $v0, .Lrace_800D0828
/* 86B4C 800D078C 00000000 */   nop
/* 86B50 800D0790 A1730001 */  sb         $s3, 0x1($t3)
/* 86B54 800D0794 9222001B */  lbu        $v0, 0x1B($s1)
/* 86B58 800D0798 00531021 */  addu       $v0, $v0, $s3
/* 86B5C 800D079C A1420001 */  sb         $v0, 0x1($t2)
/* 86B60 800D07A0 24420001 */  addiu      $v0, $v0, 0x1
/* 86B64 800D07A4 A1220001 */  sb         $v0, 0x1($t1)
/* 86B68 800D07A8 8E250034 */  lw         $a1, 0x34($s1)
/* 86B6C 800D07AC 10A0000D */  beqz       $a1, .Lrace_800D07E4
/* 86B70 800D07B0 00152080 */   sll       $a0, $s5, 2
/* 86B74 800D07B4 8CA20008 */  lw         $v0, 0x8($a1)
/* 86B78 800D07B8 90E30001 */  lbu        $v1, 0x1($a3)
/* 86B7C 800D07BC 00821021 */  addu       $v0, $a0, $v0
/* 86B80 800D07C0 A0430001 */  sb         $v1, 0x1($v0)
/* 86B84 800D07C4 8CA20008 */  lw         $v0, 0x8($a1)
/* 86B88 800D07C8 90E30002 */  lbu        $v1, 0x2($a3)
/* 86B8C 800D07CC 00821021 */  addu       $v0, $a0, $v0
/* 86B90 800D07D0 A0430002 */  sb         $v1, 0x2($v0)
/* 86B94 800D07D4 8CA20008 */  lw         $v0, 0x8($a1)
/* 86B98 800D07D8 90E30003 */  lbu        $v1, 0x3($a3)
/* 86B9C 800D07DC 00822021 */  addu       $a0, $a0, $v0
/* 86BA0 800D07E0 A0830003 */  sb         $v1, 0x3($a0)
.Lrace_800D07E4:
/* 86BA4 800D07E4 25080004 */  addiu      $t0, $t0, 0x4
/* 86BA8 800D07E8 26B50001 */  addiu      $s5, $s5, 0x1
/* 86BAC 800D07EC 8FA4005C */  lw         $a0, 0x5C($sp)
/* 86BB0 800D07F0 26730001 */  addiu      $s3, $s3, 0x1
/* 86BB4 800D07F4 8C820008 */  lw         $v0, 0x8($a0)
/* 86BB8 800D07F8 90E30001 */  lbu        $v1, 0x1($a3)
/* 86BBC 800D07FC 01021021 */  addu       $v0, $t0, $v0
/* 86BC0 800D0800 A0430001 */  sb         $v1, 0x1($v0)
/* 86BC4 800D0804 8C820008 */  lw         $v0, 0x8($a0)
/* 86BC8 800D0808 90E30002 */  lbu        $v1, 0x2($a3)
/* 86BCC 800D080C 01021021 */  addu       $v0, $t0, $v0
/* 86BD0 800D0810 A0430002 */  sb         $v1, 0x2($v0)
/* 86BD4 800D0814 8C820008 */  lw         $v0, 0x8($a0)
/* 86BD8 800D0818 90E30003 */  lbu        $v1, 0x3($a3)
/* 86BDC 800D081C 01021021 */  addu       $v0, $t0, $v0
/* 86BE0 800D0820 080341E0 */  j          .Lrace_800D0780
/* 86BE4 800D0824 A0430003 */   sb        $v1, 0x3($v0)
.Lrace_800D0828:
/* 86BE8 800D0828 8E220024 */  lw         $v0, 0x24($s1)
/* 86BEC 800D082C 10400071 */  beqz       $v0, .Lrace_800D09F4
/* 86BF0 800D0830 24130001 */   addiu     $s3, $zero, 0x1
/* 86BF4 800D0834 8E250018 */  lw         $a1, 0x18($s1)
/* 86BF8 800D0838 00053840 */  sll        $a3, $a1, 1
/* 86BFC 800D083C 02071021 */  addu       $v0, $s0, $a3
/* 86C00 800D0840 24420001 */  addiu      $v0, $v0, 0x1
/* 86C04 800D0844 2C420021 */  sltiu      $v0, $v0, 0x21
/* 86C08 800D0848 50400001 */  beql       $v0, $zero, .Lrace_800D0850
/* 86C0C 800D084C 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D0850:
/* 86C10 800D0850 8FAF0060 */  lw         $t7, 0x60($sp)
/* 86C14 800D0854 24A20001 */  addiu      $v0, $a1, 0x1
/* 86C18 800D0858 25E4FFFF */  addiu      $a0, $t7, -0x1
/* 86C1C 800D085C 00820018 */  mult       $a0, $v0
/* 86C20 800D0860 8E230020 */  lw         $v1, 0x20($s1)
/* 86C24 800D0864 00009012 */  mflo       $s2
/* 86C28 800D0868 54600001 */  bnel       $v1, $zero, .Lrace_800D0870
/* 86C2C 800D086C 02459021 */   addu      $s2, $s2, $a1
.Lrace_800D0870:
/* 86C30 800D0870 3202003F */  andi       $v0, $s0, 0x3F
/* 86C34 800D0874 00023580 */  sll        $a2, $v0, 22
/* 86C38 800D0878 30E2003F */  andi       $v0, $a3, 0x3F
/* 86C3C 800D087C 00021400 */  sll        $v0, $v0, 16
/* 86C40 800D0880 00C23025 */  or         $a2, $a2, $v0
/* 86C44 800D0884 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* 86C48 800D0888 00C23025 */  or         $a2, $a2, $v0
/* 86C4C 800D088C 02C02021 */  addu       $a0, $s6, $zero
/* 86C50 800D0890 26D60001 */  addiu      $s6, $s6, 0x1
/* 86C54 800D0894 02C02821 */  addu       $a1, $s6, $zero
/* 86C58 800D0898 26D60001 */  addiu      $s6, $s6, 0x1
/* 86C5C 800D089C 24130001 */  addiu      $s3, $zero, 0x1
/* 86C60 800D08A0 27A70020 */  addiu      $a3, $sp, 0x20
/* 86C64 800D08A4 264D00FF */  addiu      $t5, $s2, 0xFF
/* 86C68 800D08A8 02124823 */  subu       $t1, $s0, $s2
/* 86C6C 800D08AC 00151080 */  sll        $v0, $s5, 2
/* 86C70 800D08B0 2448FFFC */  addiu      $t0, $v0, -0x4
/* 86C74 800D08B4 00042080 */  sll        $a0, $a0, 2
/* 86C78 800D08B8 00052880 */  sll        $a1, $a1, 2
/* 86C7C 800D08BC 8FAF006C */  lw         $t7, 0x6C($sp)
/* 86C80 800D08C0 8E230004 */  lw         $v1, 0x4($s1)
/* 86C84 800D08C4 00EF6021 */  addu       $t4, $a3, $t7
/* 86C88 800D08C8 8FAF0074 */  lw         $t7, 0x74($sp)
/* 86C8C 800D08CC 8C620020 */  lw         $v0, 0x20($v1)
/* 86C90 800D08D0 00EF5821 */  addu       $t3, $a3, $t7
/* 86C94 800D08D4 8FAF0070 */  lw         $t7, 0x70($sp)
/* 86C98 800D08D8 00822021 */  addu       $a0, $a0, $v0
/* 86C9C 800D08DC AC860000 */  sw         $a2, 0x0($a0)
/* 86CA0 800D08E0 3C061000 */  lui        $a2, (0x10000000 >> 16)
/* 86CA4 800D08E4 8E220018 */  lw         $v0, 0x18($s1)
/* 86CA8 800D08E8 8E230004 */  lw         $v1, 0x4($s1)
/* 86CAC 800D08EC 30420FFF */  andi       $v0, $v0, 0xFFF
/* 86CB0 800D08F0 00021400 */  sll        $v0, $v0, 16
/* 86CB4 800D08F4 00463025 */  or         $a2, $v0, $a2
/* 86CB8 800D08F8 32A2FFFF */  andi       $v0, $s5, 0xFFFF
/* 86CBC 800D08FC 00C23025 */  or         $a2, $a2, $v0
/* 86CC0 800D0900 8C620020 */  lw         $v0, 0x20($v1)
/* 86CC4 800D0904 00EF5021 */  addu       $t2, $a3, $t7
/* 86CC8 800D0908 00A22821 */  addu       $a1, $a1, $v0
/* 86CCC 800D090C ACA60000 */  sw         $a2, 0x0($a1)
.Lrace_800D0910:
/* 86CD0 800D0910 8E220018 */  lw         $v0, 0x18($s1)
/* 86CD4 800D0914 0053102B */  sltu       $v0, $v0, $s3
/* 86CD8 800D0918 14400031 */  bnez       $v0, .Lrace_800D09E0
/* 86CDC 800D091C 02531821 */   addu      $v1, $s2, $s3
/* 86CE0 800D0920 9222001B */  lbu        $v0, 0x1B($s1)
/* 86CE4 800D0924 00431021 */  addu       $v0, $v0, $v1
/* 86CE8 800D0928 A1820001 */  sb         $v0, 0x1($t4)
/* 86CEC 800D092C 026D1021 */  addu       $v0, $s3, $t5
/* 86CF0 800D0930 A1620001 */  sb         $v0, 0x1($t3)
/* 86CF4 800D0934 24420001 */  addiu      $v0, $v0, 0x1
/* 86CF8 800D0938 A1420001 */  sb         $v0, 0x1($t2)
/* 86CFC 800D093C 8E250034 */  lw         $a1, 0x34($s1)
/* 86D00 800D0940 10A0000D */  beqz       $a1, .Lrace_800D0978
/* 86D04 800D0944 00152080 */   sll       $a0, $s5, 2
/* 86D08 800D0948 8CA20008 */  lw         $v0, 0x8($a1)
/* 86D0C 800D094C 90E30001 */  lbu        $v1, 0x1($a3)
/* 86D10 800D0950 00821021 */  addu       $v0, $a0, $v0
/* 86D14 800D0954 A0430001 */  sb         $v1, 0x1($v0)
/* 86D18 800D0958 8CA20008 */  lw         $v0, 0x8($a1)
/* 86D1C 800D095C 90E30002 */  lbu        $v1, 0x2($a3)
/* 86D20 800D0960 00821021 */  addu       $v0, $a0, $v0
/* 86D24 800D0964 A0430002 */  sb         $v1, 0x2($v0)
/* 86D28 800D0968 8CA20008 */  lw         $v0, 0x8($a1)
/* 86D2C 800D096C 90E30003 */  lbu        $v1, 0x3($a3)
/* 86D30 800D0970 00822021 */  addu       $a0, $a0, $v0
/* 86D34 800D0974 A0830003 */  sb         $v1, 0x3($a0)
.Lrace_800D0978:
/* 86D38 800D0978 91820001 */  lbu        $v0, 0x1($t4)
/* 86D3C 800D097C 00491021 */  addu       $v0, $v0, $t1
/* 86D40 800D0980 A1820001 */  sb         $v0, 0x1($t4)
/* 86D44 800D0984 91420001 */  lbu        $v0, 0x1($t2)
/* 86D48 800D0988 25080004 */  addiu      $t0, $t0, 0x4
/* 86D4C 800D098C 00491021 */  addu       $v0, $v0, $t1
/* 86D50 800D0990 A1420001 */  sb         $v0, 0x1($t2)
/* 86D54 800D0994 91620001 */  lbu        $v0, 0x1($t3)
/* 86D58 800D0998 26B50001 */  addiu      $s5, $s5, 0x1
/* 86D5C 800D099C 00491021 */  addu       $v0, $v0, $t1
/* 86D60 800D09A0 A1620001 */  sb         $v0, 0x1($t3)
/* 86D64 800D09A4 8FA4005C */  lw         $a0, 0x5C($sp)
/* 86D68 800D09A8 26730001 */  addiu      $s3, $s3, 0x1
/* 86D6C 800D09AC 8C820008 */  lw         $v0, 0x8($a0)
/* 86D70 800D09B0 90E30001 */  lbu        $v1, 0x1($a3)
/* 86D74 800D09B4 01021021 */  addu       $v0, $t0, $v0
/* 86D78 800D09B8 A0430001 */  sb         $v1, 0x1($v0)
/* 86D7C 800D09BC 8C820008 */  lw         $v0, 0x8($a0)
/* 86D80 800D09C0 90E30002 */  lbu        $v1, 0x2($a3)
/* 86D84 800D09C4 01021021 */  addu       $v0, $t0, $v0
/* 86D88 800D09C8 A0430002 */  sb         $v1, 0x2($v0)
/* 86D8C 800D09CC 8C820008 */  lw         $v0, 0x8($a0)
/* 86D90 800D09D0 90E30003 */  lbu        $v1, 0x3($a3)
/* 86D94 800D09D4 01021021 */  addu       $v0, $t0, $v0
/* 86D98 800D09D8 08034244 */  j          .Lrace_800D0910
/* 86D9C 800D09DC A0430003 */   sb        $v1, 0x3($v0)
.Lrace_800D09E0:
/* 86DA0 800D09E0 8E220018 */  lw         $v0, 0x18($s1)
/* 86DA4 800D09E4 26030001 */  addiu      $v1, $s0, 0x1
/* 86DA8 800D09E8 00021040 */  sll        $v0, $v0, 1
/* 86DAC 800D09EC 00628021 */  addu       $s0, $v1, $v0
/* 86DB0 800D09F0 24130001 */  addiu      $s3, $zero, 0x1
.Lrace_800D09F4:
/* 86DB4 800D09F4 8FAF006C */  lw         $t7, 0x6C($sp)
/* 86DB8 800D09F8 27A80020 */  addiu      $t0, $sp, 0x20
/* 86DBC 800D09FC 010F5021 */  addu       $t2, $t0, $t7
/* 86DC0 800D0A00 8FAF0070 */  lw         $t7, 0x70($sp)
/* 86DC4 800D0A04 00161080 */  sll        $v0, $s6, 2
/* 86DC8 800D0A08 010F6021 */  addu       $t4, $t0, $t7
/* 86DCC 800D0A0C 8FAF0074 */  lw         $t7, 0x74($sp)
/* 86DD0 800D0A10 244EFFFC */  addiu      $t6, $v0, -0x4
/* 86DD4 800D0A14 010F5821 */  addu       $t3, $t0, $t7
.Lrace_800D0A18:
/* 86DD8 800D0A18 8FAF0060 */  lw         $t7, 0x60($sp)
/* 86DDC 800D0A1C 026F102B */  sltu       $v0, $s3, $t7
/* 86DE0 800D0A20 10400093 */  beqz       $v0, .Lrace_800D0C70
/* 86DE4 800D0A24 3C066000 */   lui       $a2, (0x60000000 >> 16)
/* 86DE8 800D0A28 8E250018 */  lw         $a1, 0x18($s1)
/* 86DEC 800D0A2C 00053840 */  sll        $a3, $a1, 1
/* 86DF0 800D0A30 02071021 */  addu       $v0, $s0, $a3
/* 86DF4 800D0A34 24420002 */  addiu      $v0, $v0, 0x2
/* 86DF8 800D0A38 2C420021 */  sltiu      $v0, $v0, 0x21
/* 86DFC 800D0A3C 50400001 */  beql       $v0, $zero, .Lrace_800D0A44
/* 86E00 800D0A40 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D0A44:
/* 86E04 800D0A44 2664FFFF */  addiu      $a0, $s3, -0x1
/* 86E08 800D0A48 24A20001 */  addiu      $v0, $a1, 0x1
/* 86E0C 800D0A4C 00820018 */  mult       $a0, $v0
/* 86E10 800D0A50 8E230020 */  lw         $v1, 0x20($s1)
/* 86E14 800D0A54 00009012 */  mflo       $s2
/* 86E18 800D0A58 54600001 */  bnel       $v1, $zero, .Lrace_800D0A60
/* 86E1C 800D0A5C 02459021 */   addu      $s2, $s2, $a1
.Lrace_800D0A60:
/* 86E20 800D0A60 3202003F */  andi       $v0, $s0, 0x3F
/* 86E24 800D0A64 00023580 */  sll        $a2, $v0, 22
/* 86E28 800D0A68 24E20001 */  addiu      $v0, $a3, 0x1
/* 86E2C 800D0A6C 3042003F */  andi       $v0, $v0, 0x3F
/* 86E30 800D0A70 00021400 */  sll        $v0, $v0, 16
/* 86E34 800D0A74 00C23025 */  or         $a2, $a2, $v0
/* 86E38 800D0A78 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* 86E3C 800D0A7C 00C23025 */  or         $a2, $a2, $v0
/* 86E40 800D0A80 25CE0004 */  addiu      $t6, $t6, 0x4
/* 86E44 800D0A84 26D60002 */  addiu      $s6, $s6, 0x2
/* 86E48 800D0A88 00006821 */  addu       $t5, $zero, $zero
/* 86E4C 800D0A8C 02124823 */  subu       $t1, $s0, $s2
/* 86E50 800D0A90 00151880 */  sll        $v1, $s5, 2
/* 86E54 800D0A94 8E220004 */  lw         $v0, 0x4($s1)
/* 86E58 800D0A98 2467FFFC */  addiu      $a3, $v1, -0x4
/* 86E5C 800D0A9C 8C420020 */  lw         $v0, 0x20($v0)
/* 86E60 800D0AA0 32A3FFFF */  andi       $v1, $s5, 0xFFFF
/* 86E64 800D0AA4 01C21021 */  addu       $v0, $t6, $v0
/* 86E68 800D0AA8 AC460000 */  sw         $a2, 0x0($v0)
/* 86E6C 800D0AAC 8E220018 */  lw         $v0, 0x18($s1)
/* 86E70 800D0AB0 3C061000 */  lui        $a2, (0x10000000 >> 16)
/* 86E74 800D0AB4 00021040 */  sll        $v0, $v0, 1
/* 86E78 800D0AB8 30420FFF */  andi       $v0, $v0, 0xFFF
/* 86E7C 800D0ABC 00021400 */  sll        $v0, $v0, 16
/* 86E80 800D0AC0 00463025 */  or         $a2, $v0, $a2
/* 86E84 800D0AC4 8E220004 */  lw         $v0, 0x4($s1)
/* 86E88 800D0AC8 25CE0004 */  addiu      $t6, $t6, 0x4
/* 86E8C 800D0ACC 8C420020 */  lw         $v0, 0x20($v0)
/* 86E90 800D0AD0 00C33025 */  or         $a2, $a2, $v1
/* 86E94 800D0AD4 01C21021 */  addu       $v0, $t6, $v0
/* 86E98 800D0AD8 AC460000 */  sw         $a2, 0x0($v0)
.Lrace_800D0ADC:
/* 86E9C 800D0ADC 8E220018 */  lw         $v0, 0x18($s1)
/* 86EA0 800D0AE0 01A2102B */  sltu       $v0, $t5, $v0
/* 86EA4 800D0AE4 10400060 */  beqz       $v0, .Lrace_800D0C68
/* 86EA8 800D0AE8 024D3021 */   addu      $a2, $s2, $t5
/* 86EAC 800D0AEC A1460001 */  sb         $a2, 0x1($t2)
/* 86EB0 800D0AF0 9222001B */  lbu        $v0, 0x1B($s1)
/* 86EB4 800D0AF4 00C21021 */  addu       $v0, $a2, $v0
/* 86EB8 800D0AF8 24430001 */  addiu      $v1, $v0, 0x1
/* 86EBC 800D0AFC 24420002 */  addiu      $v0, $v0, 0x2
/* 86EC0 800D0B00 A1830001 */  sb         $v1, 0x1($t4)
/* 86EC4 800D0B04 A1620001 */  sb         $v0, 0x1($t3)
/* 86EC8 800D0B08 8E250034 */  lw         $a1, 0x34($s1)
/* 86ECC 800D0B0C 10A0000D */  beqz       $a1, .Lrace_800D0B44
/* 86ED0 800D0B10 00151880 */   sll       $v1, $s5, 2
/* 86ED4 800D0B14 8CA20008 */  lw         $v0, 0x8($a1)
/* 86ED8 800D0B18 91040001 */  lbu        $a0, 0x1($t0)
/* 86EDC 800D0B1C 00621021 */  addu       $v0, $v1, $v0
/* 86EE0 800D0B20 A0440001 */  sb         $a0, 0x1($v0)
/* 86EE4 800D0B24 8CA20008 */  lw         $v0, 0x8($a1)
/* 86EE8 800D0B28 91040002 */  lbu        $a0, 0x2($t0)
/* 86EEC 800D0B2C 00621021 */  addu       $v0, $v1, $v0
/* 86EF0 800D0B30 A0440002 */  sb         $a0, 0x2($v0)
/* 86EF4 800D0B34 8CA20008 */  lw         $v0, 0x8($a1)
/* 86EF8 800D0B38 91040003 */  lbu        $a0, 0x3($t0)
/* 86EFC 800D0B3C 00621821 */  addu       $v1, $v1, $v0
/* 86F00 800D0B40 A0640003 */  sb         $a0, 0x3($v1)
.Lrace_800D0B44:
/* 86F04 800D0B44 91420001 */  lbu        $v0, 0x1($t2)
/* 86F08 800D0B48 00491021 */  addu       $v0, $v0, $t1
/* 86F0C 800D0B4C A1420001 */  sb         $v0, 0x1($t2)
/* 86F10 800D0B50 91820001 */  lbu        $v0, 0x1($t4)
/* 86F14 800D0B54 00491021 */  addu       $v0, $v0, $t1
/* 86F18 800D0B58 A1820001 */  sb         $v0, 0x1($t4)
/* 86F1C 800D0B5C 91620001 */  lbu        $v0, 0x1($t3)
/* 86F20 800D0B60 00491021 */  addu       $v0, $v0, $t1
/* 86F24 800D0B64 A1620001 */  sb         $v0, 0x1($t3)
/* 86F28 800D0B68 8FA4005C */  lw         $a0, 0x5C($sp)
/* 86F2C 800D0B6C 24E70004 */  addiu      $a3, $a3, 0x4
/* 86F30 800D0B70 8C820008 */  lw         $v0, 0x8($a0)
/* 86F34 800D0B74 91030001 */  lbu        $v1, 0x1($t0)
/* 86F38 800D0B78 00E21021 */  addu       $v0, $a3, $v0
/* 86F3C 800D0B7C A0430001 */  sb         $v1, 0x1($v0)
/* 86F40 800D0B80 8C820008 */  lw         $v0, 0x8($a0)
/* 86F44 800D0B84 91030002 */  lbu        $v1, 0x2($t0)
/* 86F48 800D0B88 00E21021 */  addu       $v0, $a3, $v0
/* 86F4C 800D0B8C A0430002 */  sb         $v1, 0x2($v0)
/* 86F50 800D0B90 8C820008 */  lw         $v0, 0x8($a0)
/* 86F54 800D0B94 91030003 */  lbu        $v1, 0x3($t0)
/* 86F58 800D0B98 00E21021 */  addu       $v0, $a3, $v0
/* 86F5C 800D0B9C A0430003 */  sb         $v1, 0x3($v0)
/* 86F60 800D0BA0 A1460001 */  sb         $a2, 0x1($t2)
/* 86F64 800D0BA4 9222001B */  lbu        $v0, 0x1B($s1)
/* 86F68 800D0BA8 00C21021 */  addu       $v0, $a2, $v0
/* 86F6C 800D0BAC 24420002 */  addiu      $v0, $v0, 0x2
/* 86F70 800D0BB0 A1820001 */  sb         $v0, 0x1($t4)
/* 86F74 800D0BB4 91420001 */  lbu        $v0, 0x1($t2)
/* 86F78 800D0BB8 24420001 */  addiu      $v0, $v0, 0x1
/* 86F7C 800D0BBC A1620001 */  sb         $v0, 0x1($t3)
/* 86F80 800D0BC0 8E250034 */  lw         $a1, 0x34($s1)
/* 86F84 800D0BC4 10A0000E */  beqz       $a1, .Lrace_800D0C00
/* 86F88 800D0BC8 26B50001 */   addiu     $s5, $s5, 0x1
/* 86F8C 800D0BCC 00151880 */  sll        $v1, $s5, 2
/* 86F90 800D0BD0 8CA20008 */  lw         $v0, 0x8($a1)
/* 86F94 800D0BD4 91040001 */  lbu        $a0, 0x1($t0)
/* 86F98 800D0BD8 00621021 */  addu       $v0, $v1, $v0
/* 86F9C 800D0BDC A0440001 */  sb         $a0, 0x1($v0)
/* 86FA0 800D0BE0 8CA20008 */  lw         $v0, 0x8($a1)
/* 86FA4 800D0BE4 91040002 */  lbu        $a0, 0x2($t0)
/* 86FA8 800D0BE8 00621021 */  addu       $v0, $v1, $v0
/* 86FAC 800D0BEC A0440002 */  sb         $a0, 0x2($v0)
/* 86FB0 800D0BF0 8CA20008 */  lw         $v0, 0x8($a1)
/* 86FB4 800D0BF4 91040003 */  lbu        $a0, 0x3($t0)
/* 86FB8 800D0BF8 00621821 */  addu       $v1, $v1, $v0
/* 86FBC 800D0BFC A0640003 */  sb         $a0, 0x3($v1)
.Lrace_800D0C00:
/* 86FC0 800D0C00 91420001 */  lbu        $v0, 0x1($t2)
/* 86FC4 800D0C04 00491021 */  addu       $v0, $v0, $t1
/* 86FC8 800D0C08 A1420001 */  sb         $v0, 0x1($t2)
/* 86FCC 800D0C0C 91820001 */  lbu        $v0, 0x1($t4)
/* 86FD0 800D0C10 24E70004 */  addiu      $a3, $a3, 0x4
/* 86FD4 800D0C14 00491021 */  addu       $v0, $v0, $t1
/* 86FD8 800D0C18 A1820001 */  sb         $v0, 0x1($t4)
/* 86FDC 800D0C1C 91620001 */  lbu        $v0, 0x1($t3)
/* 86FE0 800D0C20 26B50001 */  addiu      $s5, $s5, 0x1
/* 86FE4 800D0C24 00491021 */  addu       $v0, $v0, $t1
/* 86FE8 800D0C28 A1620001 */  sb         $v0, 0x1($t3)
/* 86FEC 800D0C2C 8FA4005C */  lw         $a0, 0x5C($sp)
/* 86FF0 800D0C30 25AD0001 */  addiu      $t5, $t5, 0x1
/* 86FF4 800D0C34 8C820008 */  lw         $v0, 0x8($a0)
/* 86FF8 800D0C38 91030001 */  lbu        $v1, 0x1($t0)
/* 86FFC 800D0C3C 00E21021 */  addu       $v0, $a3, $v0
/* 87000 800D0C40 A0430001 */  sb         $v1, 0x1($v0)
/* 87004 800D0C44 8C820008 */  lw         $v0, 0x8($a0)
/* 87008 800D0C48 91030002 */  lbu        $v1, 0x2($t0)
/* 8700C 800D0C4C 00E21021 */  addu       $v0, $a3, $v0
/* 87010 800D0C50 A0430002 */  sb         $v1, 0x2($v0)
/* 87014 800D0C54 8C820008 */  lw         $v0, 0x8($a0)
/* 87018 800D0C58 91030003 */  lbu        $v1, 0x3($t0)
/* 8701C 800D0C5C 00E21021 */  addu       $v0, $a3, $v0
/* 87020 800D0C60 080342B7 */  j          .Lrace_800D0ADC
/* 87024 800D0C64 A0430003 */   sb        $v1, 0x3($v0)
.Lrace_800D0C68:
/* 87028 800D0C68 08034286 */  j          .Lrace_800D0A18
/* 8702C 800D0C6C 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_800D0C70:
/* 87030 800D0C70 8E220004 */  lw         $v0, 0x4($s1)
/* 87034 800D0C74 8C430020 */  lw         $v1, 0x20($v0)
/* 87038 800D0C78 00161080 */  sll        $v0, $s6, 2
/* 8703C 800D0C7C 00431021 */  addu       $v0, $v0, $v1
/* 87040 800D0C80 AC460000 */  sw         $a2, 0x0($v0)
/* 87044 800D0C84 8E230004 */  lw         $v1, 0x4($s1)
/* 87048 800D0C88 8C62003C */  lw         $v0, 0x3C($v1)
/* 8704C 800D0C8C 24050001 */  addiu      $a1, $zero, 0x1
/* 87050 800D0C90 84440070 */  lh         $a0, 0x70($v0)
/* 87054 800D0C94 8C420074 */  lw         $v0, 0x74($v0)
/* 87058 800D0C98 0040F809 */  jalr       $v0
/* 8705C 800D0C9C 00642021 */   addu      $a0, $v1, $a0
/* 87060 800D0CA0 8FA20064 */  lw         $v0, 0x64($sp)
/* 87064 800D0CA4 8FBF009C */  lw         $ra, 0x9C($sp)
/* 87068 800D0CA8 8FBE0098 */  lw         $fp, 0x98($sp)
/* 8706C 800D0CAC 8FB70094 */  lw         $s7, 0x94($sp)
/* 87070 800D0CB0 8FB60090 */  lw         $s6, 0x90($sp)
/* 87074 800D0CB4 8FB5008C */  lw         $s5, 0x8C($sp)
/* 87078 800D0CB8 8FB40088 */  lw         $s4, 0x88($sp)
/* 8707C 800D0CBC 8FB30084 */  lw         $s3, 0x84($sp)
/* 87080 800D0CC0 8FB20080 */  lw         $s2, 0x80($sp)
/* 87084 800D0CC4 8FB1007C */  lw         $s1, 0x7C($sp)
/* 87088 800D0CC8 8FB00078 */  lw         $s0, 0x78($sp)
/* 8708C 800D0CCC D7BE00C8 */  ldc1       $f30, 0xC8($sp)
/* 87090 800D0CD0 D7BC00C0 */  ldc1       $f28, 0xC0($sp)
/* 87094 800D0CD4 D7BA00B8 */  ldc1       $f26, 0xB8($sp)
/* 87098 800D0CD8 D7B800B0 */  ldc1       $f24, 0xB0($sp)
/* 8709C 800D0CDC D7B600A8 */  ldc1       $f22, 0xA8($sp)
/* 870A0 800D0CE0 D7B400A0 */  ldc1       $f20, 0xA0($sp)
/* 870A4 800D0CE4 03E00008 */  jr         $ra
/* 870A8 800D0CE8 27BD00D0 */   addiu     $sp, $sp, 0xD0
