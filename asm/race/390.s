.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800EE490
/* A4850 800EE490 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4854 800EE494 AFB00010 */  sw         $s0, 0x10($sp)
/* A4858 800EE498 AFBF0014 */  sw         $ra, 0x14($sp)
/* A485C 800EE49C 0C03A1A4 */  jal        func_race_800E8690
/* A4860 800EE4A0 00808021 */   addu      $s0, $a0, $zero
/* A4864 800EE4A4 3C02800D */  lui        $v0, %hi(D_race_800CC600)
/* A4868 800EE4A8 2442C600 */  addiu      $v0, $v0, %lo(D_race_800CC600)
/* A486C 800EE4AC 02002021 */  addu       $a0, $s0, $zero
/* A4870 800EE4B0 0C03B9A8 */  jal        func_race_800EE6A0
/* A4874 800EE4B4 AE020000 */   sw        $v0, 0x0($s0)
/* A4878 800EE4B8 02001021 */  addu       $v0, $s0, $zero
/* A487C 800EE4BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4880 800EE4C0 8FB00010 */  lw         $s0, 0x10($sp)
/* A4884 800EE4C4 03E00008 */  jr         $ra
/* A4888 800EE4C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EE4CC
/* A488C 800EE4CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A4890 800EE4D0 AFB00010 */  sw         $s0, 0x10($sp)
/* A4894 800EE4D4 00808021 */  addu       $s0, $a0, $zero
/* A4898 800EE4D8 AFB10014 */  sw         $s1, 0x14($sp)
/* A489C 800EE4DC 00A08821 */  addu       $s1, $a1, $zero
/* A48A0 800EE4E0 3C02800D */  lui        $v0, %hi(D_race_800CC600)
/* A48A4 800EE4E4 2442C600 */  addiu      $v0, $v0, %lo(D_race_800CC600)
/* A48A8 800EE4E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* A48AC 800EE4EC 0C03B9A1 */  jal        func_race_800EE684
/* A48B0 800EE4F0 AE020000 */   sw        $v0, 0x0($s0)
/* A48B4 800EE4F4 02002021 */  addu       $a0, $s0, $zero
/* A48B8 800EE4F8 0C03A1AC */  jal        func_race_800E86B0
/* A48BC 800EE4FC 02202821 */   addu      $a1, $s1, $zero
/* A48C0 800EE500 8FBF0018 */  lw         $ra, 0x18($sp)
/* A48C4 800EE504 8FB10014 */  lw         $s1, 0x14($sp)
/* A48C8 800EE508 8FB00010 */  lw         $s0, 0x10($sp)
/* A48CC 800EE50C 03E00008 */  jr         $ra
/* A48D0 800EE510 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EE514
/* A48D4 800EE514 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A48D8 800EE518 AFB00010 */  sw         $s0, 0x10($sp)
/* A48DC 800EE51C 00808021 */  addu       $s0, $a0, $zero
/* A48E0 800EE520 AFBF0018 */  sw         $ra, 0x18($sp)
/* A48E4 800EE524 AFB10014 */  sw         $s1, 0x14($sp)
/* A48E8 800EE528 8E02000C */  lw         $v0, 0xC($s0)
/* A48EC 800EE52C 10400003 */  beqz       $v0, .Lrace_800EE53C
/* A48F0 800EE530 00A08821 */   addu      $s1, $a1, $zero
/* A48F4 800EE534 0C03B9A1 */  jal        func_race_800EE684
/* A48F8 800EE538 00000000 */   nop
.Lrace_800EE53C:
/* A48FC 800EE53C 2402FFFF */  addiu      $v0, $zero, -0x1
/* A4900 800EE540 AE020008 */  sw         $v0, 0x8($s0)
/* A4904 800EE544 8E22000C */  lw         $v0, 0xC($s1)
/* A4908 800EE548 AE020004 */  sw         $v0, 0x4($s0)
/* A490C 800EE54C 3C02800D */  lui        $v0, %hi(D_race_800CC5B0)
/* A4910 800EE550 8E230010 */  lw         $v1, 0x10($s1)
/* A4914 800EE554 2445C5B0 */  addiu      $a1, $v0, %lo(D_race_800CC5B0)
/* A4918 800EE558 8C6200B0 */  lw         $v0, 0xB0($v1)
/* A491C 800EE55C 14400003 */  bnez       $v0, .Lrace_800EE56C
/* A4920 800EE560 246400B0 */   addiu     $a0, $v1, 0xB0
/* A4924 800EE564 0803B95D */  j          .Lrace_800EE574
/* A4928 800EE568 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EE56C:
/* A492C 800EE56C 0C016427 */  jal        func_8005909C
/* A4930 800EE570 00000000 */   nop
.Lrace_800EE574:
/* A4934 800EE574 AE020010 */  sw         $v0, 0x10($s0)
/* A4938 800EE578 3C02800D */  lui        $v0, %hi(D_race_800CC5B8)
/* A493C 800EE57C 8E230010 */  lw         $v1, 0x10($s1)
/* A4940 800EE580 2445C5B8 */  addiu      $a1, $v0, %lo(D_race_800CC5B8)
/* A4944 800EE584 8C6200B0 */  lw         $v0, 0xB0($v1)
/* A4948 800EE588 14400003 */  bnez       $v0, .Lrace_800EE598
/* A494C 800EE58C 246400B0 */   addiu     $a0, $v1, 0xB0
/* A4950 800EE590 0803B968 */  j          .Lrace_800EE5A0
/* A4954 800EE594 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EE598:
/* A4958 800EE598 0C016427 */  jal        func_8005909C
/* A495C 800EE59C 00000000 */   nop
.Lrace_800EE5A0:
/* A4960 800EE5A0 AE020014 */  sw         $v0, 0x14($s0)
/* A4964 800EE5A4 3C02800D */  lui        $v0, %hi(D_race_800CC5C0)
/* A4968 800EE5A8 8E230010 */  lw         $v1, 0x10($s1)
/* A496C 800EE5AC 2445C5C0 */  addiu      $a1, $v0, %lo(D_race_800CC5C0)
/* A4970 800EE5B0 8C6200B0 */  lw         $v0, 0xB0($v1)
/* A4974 800EE5B4 14400003 */  bnez       $v0, .Lrace_800EE5C4
/* A4978 800EE5B8 246400B0 */   addiu     $a0, $v1, 0xB0
/* A497C 800EE5BC 0803B973 */  j          .Lrace_800EE5CC
/* A4980 800EE5C0 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EE5C4:
/* A4984 800EE5C4 0C016427 */  jal        func_8005909C
/* A4988 800EE5C8 00000000 */   nop
.Lrace_800EE5CC:
/* A498C 800EE5CC AE020018 */  sw         $v0, 0x18($s0)
/* A4990 800EE5D0 8E230010 */  lw         $v1, 0x10($s1)
/* A4994 800EE5D4 8C6200EC */  lw         $v0, 0xEC($v1)
/* A4998 800EE5D8 00002821 */  addu       $a1, $zero, $zero
/* A499C 800EE5DC 844400A0 */  lh         $a0, 0xA0($v0)
/* A49A0 800EE5E0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A49A4 800EE5E4 0040F809 */  jalr       $v0
/* A49A8 800EE5E8 00642021 */   addu      $a0, $v1, $a0
/* A49AC 800EE5EC 8C430008 */  lw         $v1, 0x8($v0)
/* A49B0 800EE5F0 24630078 */  addiu      $v1, $v1, 0x78
/* A49B4 800EE5F4 AE03001C */  sw         $v1, 0x1C($s0)
/* A49B8 800EE5F8 8C430008 */  lw         $v1, 0x8($v0)
/* A49BC 800EE5FC 3C01800D */  lui        $at, %hi(D_race_800CC5C8)
/* A49C0 800EE600 C420C5C8 */  lwc1       $f0, %lo(D_race_800CC5C8)($at)
/* A49C4 800EE604 24630060 */  addiu      $v1, $v1, 0x60
/* A49C8 800EE608 AE030020 */  sw         $v1, 0x20($s0)
/* A49CC 800EE60C 8C430008 */  lw         $v1, 0x8($v0)
/* A49D0 800EE610 8E04001C */  lw         $a0, 0x1C($s0)
/* A49D4 800EE614 24630048 */  addiu      $v1, $v1, 0x48
/* A49D8 800EE618 AE030024 */  sw         $v1, 0x24($s0)
/* A49DC 800EE61C E480000C */  swc1       $f0, 0xC($a0)
/* A49E0 800EE620 8E030020 */  lw         $v1, 0x20($s0)
/* A49E4 800EE624 3C01800D */  lui        $at, %hi(D_race_800CC5CC)
/* A49E8 800EE628 C420C5CC */  lwc1       $f0, %lo(D_race_800CC5CC)($at)
/* A49EC 800EE62C E460000C */  swc1       $f0, 0xC($v1)
/* A49F0 800EE630 8E030024 */  lw         $v1, 0x24($s0)
/* A49F4 800EE634 3C01800D */  lui        $at, %hi(D_race_800CC5D0)
/* A49F8 800EE638 C420C5D0 */  lwc1       $f0, %lo(D_race_800CC5D0)($at)
/* A49FC 800EE63C E460000C */  swc1       $f0, 0xC($v1)
/* A4A00 800EE640 8C430000 */  lw         $v1, 0x0($v0)
/* A4A04 800EE644 00002821 */  addu       $a1, $zero, $zero
/* A4A08 800EE648 AE030028 */  sw         $v1, 0x28($s0)
/* A4A0C 800EE64C 8C440004 */  lw         $a0, 0x4($v0)
/* A4A10 800EE650 8E030000 */  lw         $v1, 0x0($s0)
/* A4A14 800EE654 24020001 */  addiu      $v0, $zero, 0x1
/* A4A18 800EE658 AE02000C */  sw         $v0, 0xC($s0)
/* A4A1C 800EE65C AE04002C */  sw         $a0, 0x2C($s0)
/* A4A20 800EE660 84640010 */  lh         $a0, 0x10($v1)
/* A4A24 800EE664 8C620014 */  lw         $v0, 0x14($v1)
/* A4A28 800EE668 0040F809 */  jalr       $v0
/* A4A2C 800EE66C 02042021 */   addu      $a0, $s0, $a0
/* A4A30 800EE670 8FBF0018 */  lw         $ra, 0x18($sp)
/* A4A34 800EE674 8FB10014 */  lw         $s1, 0x14($sp)
/* A4A38 800EE678 8FB00010 */  lw         $s0, 0x10($sp)
/* A4A3C 800EE67C 03E00008 */  jr         $ra
/* A4A40 800EE680 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EE684
/* A4A44 800EE684 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4A48 800EE688 AFBF0010 */  sw         $ra, 0x10($sp)
/* A4A4C 800EE68C 0C03B9A8 */  jal        func_race_800EE6A0
/* A4A50 800EE690 00000000 */   nop
/* A4A54 800EE694 8FBF0010 */  lw         $ra, 0x10($sp)
/* A4A58 800EE698 03E00008 */  jr         $ra
/* A4A5C 800EE69C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EE6A0
/* A4A60 800EE6A0 AC800010 */  sw         $zero, 0x10($a0)
/* A4A64 800EE6A4 AC800014 */  sw         $zero, 0x14($a0)
/* A4A68 800EE6A8 AC800018 */  sw         $zero, 0x18($a0)
/* A4A6C 800EE6AC AC80001C */  sw         $zero, 0x1C($a0)
/* A4A70 800EE6B0 AC800020 */  sw         $zero, 0x20($a0)
/* A4A74 800EE6B4 AC800024 */  sw         $zero, 0x24($a0)
/* A4A78 800EE6B8 A0800030 */  sb         $zero, 0x30($a0)
/* A4A7C 800EE6BC A0800031 */  sb         $zero, 0x31($a0)
/* A4A80 800EE6C0 A0800032 */  sb         $zero, 0x32($a0)
/* A4A84 800EE6C4 A0800033 */  sb         $zero, 0x33($a0)
/* A4A88 800EE6C8 A0800034 */  sb         $zero, 0x34($a0)
/* A4A8C 800EE6CC A0800035 */  sb         $zero, 0x35($a0)
/* A4A90 800EE6D0 A0800036 */  sb         $zero, 0x36($a0)
/* A4A94 800EE6D4 AC800038 */  sw         $zero, 0x38($a0)
/* A4A98 800EE6D8 AC800028 */  sw         $zero, 0x28($a0)
/* A4A9C 800EE6DC 03E00008 */  jr         $ra
/* A4AA0 800EE6E0 AC80002C */   sw        $zero, 0x2C($a0)

glabel func_race_800EE6E4
/* A4AA4 800EE6E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4AA8 800EE6E8 AFB00010 */  sw         $s0, 0x10($sp)
/* A4AAC 800EE6EC 00808021 */  addu       $s0, $a0, $zero
/* A4AB0 800EE6F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A4AB4 800EE6F4 0C03BA8F */  jal        func_race_800EEA3C
/* A4AB8 800EE6F8 A2000036 */   sb        $zero, 0x36($s0)
/* A4ABC 800EE6FC 24020001 */  addiu      $v0, $zero, 0x1
/* A4AC0 800EE700 AE020038 */  sw         $v0, 0x38($s0)
/* A4AC4 800EE704 24020002 */  addiu      $v0, $zero, 0x2
/* A4AC8 800EE708 AE02000C */  sw         $v0, 0xC($s0)
/* A4ACC 800EE70C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4AD0 800EE710 8FB00010 */  lw         $s0, 0x10($sp)
/* A4AD4 800EE714 03E00008 */  jr         $ra
/* A4AD8 800EE718 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EE71C
/* A4ADC 800EE71C 24020001 */  addiu      $v0, $zero, 0x1
/* A4AE0 800EE720 03E00008 */  jr         $ra
/* A4AE4 800EE724 AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800EE728
/* A4AE8 800EE728 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A4AEC 800EE72C AFB00010 */  sw         $s0, 0x10($sp)
/* A4AF0 800EE730 00808021 */  addu       $s0, $a0, $zero
/* A4AF4 800EE734 AFB10014 */  sw         $s1, 0x14($sp)
/* A4AF8 800EE738 00A08821 */  addu       $s1, $a1, $zero
/* A4AFC 800EE73C AFBF001C */  sw         $ra, 0x1C($sp)
/* A4B00 800EE740 AFB20018 */  sw         $s2, 0x18($sp)
/* A4B04 800EE744 92020033 */  lbu        $v0, 0x33($s0)
/* A4B08 800EE748 12220007 */  beq        $s1, $v0, .Lrace_800EE768
/* A4B0C 800EE74C 00C09021 */   addu      $s2, $a2, $zero
/* A4B10 800EE750 92020034 */  lbu        $v0, 0x34($s0)
/* A4B14 800EE754 52220038 */  beql       $s1, $v0, .Lrace_800EE838
/* A4B18 800EE758 A2000036 */   sb        $zero, 0x36($s0)
/* A4B1C 800EE75C 92020035 */  lbu        $v0, 0x35($s0)
/* A4B20 800EE760 16220003 */  bne        $s1, $v0, .Lrace_800EE770
/* A4B24 800EE764 00000000 */   nop
.Lrace_800EE768:
/* A4B28 800EE768 0803BA0E */  j          .Lrace_800EE838
/* A4B2C 800EE76C A2000036 */   sb        $zero, 0x36($s0)
.Lrace_800EE770:
/* A4B30 800EE770 92020030 */  lbu        $v0, 0x30($s0)
/* A4B34 800EE774 16220003 */  bne        $s1, $v0, .Lrace_800EE784
/* A4B38 800EE778 24020001 */   addiu     $v0, $zero, 0x1
/* A4B3C 800EE77C 0803BA0E */  j          .Lrace_800EE838
/* A4B40 800EE780 A2020036 */   sb        $v0, 0x36($s0)
.Lrace_800EE784:
/* A4B44 800EE784 92020031 */  lbu        $v0, 0x31($s0)
/* A4B48 800EE788 16220007 */  bne        $s1, $v0, .Lrace_800EE7A8
/* A4B4C 800EE78C 24020001 */   addiu     $v0, $zero, 0x1
/* A4B50 800EE790 92030036 */  lbu        $v1, 0x36($s0)
/* A4B54 800EE794 54620029 */  bnel       $v1, $v0, .Lrace_800EE83C
/* A4B58 800EE798 2623FF38 */   addiu     $v1, $s1, -0xC8
/* A4B5C 800EE79C 34620002 */  ori        $v0, $v1, 0x2
/* A4B60 800EE7A0 0803BA0E */  j          .Lrace_800EE838
/* A4B64 800EE7A4 A2020036 */   sb        $v0, 0x36($s0)
.Lrace_800EE7A8:
/* A4B68 800EE7A8 92020032 */  lbu        $v0, 0x32($s0)
/* A4B6C 800EE7AC 16220023 */  bne        $s1, $v0, .Lrace_800EE83C
/* A4B70 800EE7B0 2623FF38 */   addiu     $v1, $s1, -0xC8
/* A4B74 800EE7B4 92030036 */  lbu        $v1, 0x36($s0)
/* A4B78 800EE7B8 24020003 */  addiu      $v0, $zero, 0x3
/* A4B7C 800EE7BC 1462001F */  bne        $v1, $v0, .Lrace_800EE83C
/* A4B80 800EE7C0 2623FF38 */   addiu     $v1, $s1, -0xC8
/* A4B84 800EE7C4 24050012 */  addiu      $a1, $zero, 0x12
/* A4B88 800EE7C8 00A03021 */  addu       $a2, $a1, $zero
/* A4B8C 800EE7CC 8E040004 */  lw         $a0, 0x4($s0)
/* A4B90 800EE7D0 0C036D74 */  jal        func_race_800DB5D0
/* A4B94 800EE7D4 00003821 */   addu      $a3, $zero, $zero
/* A4B98 800EE7D8 8E04001C */  lw         $a0, 0x1C($s0)
/* A4B9C 800EE7DC A2000036 */  sb         $zero, 0x36($s0)
/* A4BA0 800EE7E0 8C850000 */  lw         $a1, 0x0($a0)
/* A4BA4 800EE7E4 94860004 */  lhu        $a2, 0x4($a0)
/* A4BA8 800EE7E8 0C01A018 */  jal        func_80068060
/* A4BAC 800EE7EC 24070001 */   addiu     $a3, $zero, 0x1
/* A4BB0 800EE7F0 8E040020 */  lw         $a0, 0x20($s0)
/* A4BB4 800EE7F4 8C850000 */  lw         $a1, 0x0($a0)
/* A4BB8 800EE7F8 94860004 */  lhu        $a2, 0x4($a0)
/* A4BBC 800EE7FC 0C01A018 */  jal        func_80068060
/* A4BC0 800EE800 24070001 */   addiu     $a3, $zero, 0x1
/* A4BC4 800EE804 8E040024 */  lw         $a0, 0x24($s0)
/* A4BC8 800EE808 8C850000 */  lw         $a1, 0x0($a0)
/* A4BCC 800EE80C 94860004 */  lhu        $a2, 0x4($a0)
/* A4BD0 800EE810 0C01A018 */  jal        func_80068060
/* A4BD4 800EE814 24070001 */   addiu     $a3, $zero, 0x1
/* A4BD8 800EE818 02002021 */  addu       $a0, $s0, $zero
/* A4BDC 800EE81C 240209C4 */  addiu      $v0, $zero, 0x9C4
/* A4BE0 800EE820 0C03BA8F */  jal        func_race_800EEA3C
/* A4BE4 800EE824 AE020038 */   sw        $v0, 0x38($s0)
/* A4BE8 800EE828 2405001C */  addiu      $a1, $zero, 0x1C
/* A4BEC 800EE82C 8E040004 */  lw         $a0, 0x4($s0)
/* A4BF0 800EE830 0C036B0B */  jal        func_race_800DAC2C
/* A4BF4 800EE834 00003021 */   addu      $a2, $zero, $zero
.Lrace_800EE838:
/* A4BF8 800EE838 2623FF38 */  addiu      $v1, $s1, -0xC8
.Lrace_800EE83C:
/* A4BFC 800EE83C 2C62000A */  sltiu      $v0, $v1, 0xA
/* A4C00 800EE840 10400027 */  beqz       $v0, Lrace_800EE8E0
/* A4C04 800EE844 3C02800D */   lui       $v0, %hi(jtbl_race_800CC5D8)
/* A4C08 800EE848 2442C5D8 */  addiu      $v0, $v0, %lo(jtbl_race_800CC5D8)
/* A4C0C 800EE84C 00031880 */  sll        $v1, $v1, 2
/* A4C10 800EE850 00621821 */  addu       $v1, $v1, $v0
/* A4C14 800EE854 8C620000 */  lw         $v0, 0x0($v1)
/* A4C18 800EE858 00400008 */  jr         $v0
/* A4C1C 800EE85C 00000000 */   nop
glabel Lrace_800EE860
/* A4C20 800EE860 8E040004 */  lw         $a0, 0x4($s0)
/* A4C24 800EE864 0803BA35 */  j          .Lrace_800EE8D4
/* A4C28 800EE868 24050015 */   addiu     $a1, $zero, 0x15
glabel Lrace_800EE86C
/* A4C2C 800EE86C 8E040004 */  lw         $a0, 0x4($s0)
/* A4C30 800EE870 0803BA35 */  j          .Lrace_800EE8D4
/* A4C34 800EE874 2405001E */   addiu     $a1, $zero, 0x1E
glabel Lrace_800EE878
/* A4C38 800EE878 92030030 */  lbu        $v1, 0x30($s0)
/* A4C3C 800EE87C 240200C8 */  addiu      $v0, $zero, 0xC8
/* A4C40 800EE880 14620012 */  bne        $v1, $v0, .Lrace_800EE8CC
/* A4C44 800EE884 2405001D */   addiu     $a1, $zero, 0x1D
/* A4C48 800EE888 8E040004 */  lw         $a0, 0x4($s0)
/* A4C4C 800EE88C 0803BA36 */  j          .Lrace_800EE8D8
/* A4C50 800EE890 00A03021 */   addu      $a2, $a1, $zero
glabel Lrace_800EE894
/* A4C54 800EE894 92030031 */  lbu        $v1, 0x31($s0)
/* A4C58 800EE898 240200CA */  addiu      $v0, $zero, 0xCA
/* A4C5C 800EE89C 1462000B */  bne        $v1, $v0, .Lrace_800EE8CC
/* A4C60 800EE8A0 2405001D */   addiu     $a1, $zero, 0x1D
/* A4C64 800EE8A4 8E040004 */  lw         $a0, 0x4($s0)
/* A4C68 800EE8A8 0803BA36 */  j          .Lrace_800EE8D8
/* A4C6C 800EE8AC 00A03021 */   addu      $a2, $a1, $zero
glabel Lrace_800EE8B0
/* A4C70 800EE8B0 92030032 */  lbu        $v1, 0x32($s0)
/* A4C74 800EE8B4 240200CC */  addiu      $v0, $zero, 0xCC
/* A4C78 800EE8B8 14620004 */  bne        $v1, $v0, .Lrace_800EE8CC
/* A4C7C 800EE8BC 2405001D */   addiu     $a1, $zero, 0x1D
/* A4C80 800EE8C0 8E040004 */  lw         $a0, 0x4($s0)
/* A4C84 800EE8C4 0803BA36 */  j          .Lrace_800EE8D8
/* A4C88 800EE8C8 00A03021 */   addu      $a2, $a1, $zero
.Lrace_800EE8CC:
/* A4C8C 800EE8CC 8E040004 */  lw         $a0, 0x4($s0)
/* A4C90 800EE8D0 24050014 */  addiu      $a1, $zero, 0x14
.Lrace_800EE8D4:
/* A4C94 800EE8D4 00A03021 */  addu       $a2, $a1, $zero
.Lrace_800EE8D8:
/* A4C98 800EE8D8 0C036D74 */  jal        func_race_800DB5D0
/* A4C9C 800EE8DC 02403821 */   addu      $a3, $s2, $zero
glabel Lrace_800EE8E0
/* A4CA0 800EE8E0 8FBF001C */  lw         $ra, 0x1C($sp)
/* A4CA4 800EE8E4 8FB20018 */  lw         $s2, 0x18($sp)
/* A4CA8 800EE8E8 8FB10014 */  lw         $s1, 0x14($sp)
/* A4CAC 800EE8EC 8FB00010 */  lw         $s0, 0x10($sp)
/* A4CB0 800EE8F0 03E00008 */  jr         $ra
/* A4CB4 800EE8F4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EE8F8
/* A4CB8 800EE8F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4CBC 800EE8FC AFB00010 */  sw         $s0, 0x10($sp)
/* A4CC0 800EE900 00808021 */  addu       $s0, $a0, $zero
/* A4CC4 800EE904 AFBF0014 */  sw         $ra, 0x14($sp)
/* A4CC8 800EE908 8E030038 */  lw         $v1, 0x38($s0)
/* A4CCC 800EE90C 10600047 */  beqz       $v1, .Lrace_800EEA2C
/* A4CD0 800EE910 00A3102B */   sltu      $v0, $a1, $v1
/* A4CD4 800EE914 14400044 */  bnez       $v0, .Lrace_800EEA28
/* A4CD8 800EE918 00651023 */   subu      $v0, $v1, $a1
/* A4CDC 800EE91C 2405001C */  addiu      $a1, $zero, 0x1C
/* A4CE0 800EE920 8E040004 */  lw         $a0, 0x4($s0)
/* A4CE4 800EE924 00003021 */  addu       $a2, $zero, $zero
/* A4CE8 800EE928 0C036BE1 */  jal        func_race_800DAF84
/* A4CEC 800EE92C AE000038 */   sw        $zero, 0x38($s0)
/* A4CF0 800EE930 92030030 */  lbu        $v1, 0x30($s0)
/* A4CF4 800EE934 240200C8 */  addiu      $v0, $zero, 0xC8
/* A4CF8 800EE938 14620006 */  bne        $v1, $v0, .Lrace_800EE954
/* A4CFC 800EE93C 00000000 */   nop
/* A4D00 800EE940 8E04001C */  lw         $a0, 0x1C($s0)
/* A4D04 800EE944 0C01A02B */  jal        func_800680AC
/* A4D08 800EE948 00000000 */   nop
/* A4D0C 800EE94C 0803BA58 */  j          .Lrace_800EE960
/* A4D10 800EE950 00000000 */   nop
.Lrace_800EE954:
/* A4D14 800EE954 8E04001C */  lw         $a0, 0x1C($s0)
/* A4D18 800EE958 0C01A02D */  jal        func_800680B4
/* A4D1C 800EE95C 00000000 */   nop
.Lrace_800EE960:
/* A4D20 800EE960 8E04001C */  lw         $a0, 0x1C($s0)
/* A4D24 800EE964 8E060028 */  lw         $a2, 0x28($s0)
/* A4D28 800EE968 8E07002C */  lw         $a3, 0x2C($s0)
/* A4D2C 800EE96C 0C01A036 */  jal        func_800680D8
/* A4D30 800EE970 00002821 */   addu      $a1, $zero, $zero
/* A4D34 800EE974 8E04001C */  lw         $a0, 0x1C($s0)
/* A4D38 800EE978 0C01A026 */  jal        func_80068098
/* A4D3C 800EE97C 00000000 */   nop
/* A4D40 800EE980 92030031 */  lbu        $v1, 0x31($s0)
/* A4D44 800EE984 240200CA */  addiu      $v0, $zero, 0xCA
/* A4D48 800EE988 14620006 */  bne        $v1, $v0, .Lrace_800EE9A4
/* A4D4C 800EE98C 00000000 */   nop
/* A4D50 800EE990 8E040020 */  lw         $a0, 0x20($s0)
/* A4D54 800EE994 0C01A02B */  jal        func_800680AC
/* A4D58 800EE998 00000000 */   nop
/* A4D5C 800EE99C 0803BA6C */  j          .Lrace_800EE9B0
/* A4D60 800EE9A0 00000000 */   nop
.Lrace_800EE9A4:
/* A4D64 800EE9A4 8E040020 */  lw         $a0, 0x20($s0)
/* A4D68 800EE9A8 0C01A02D */  jal        func_800680B4
/* A4D6C 800EE9AC 00000000 */   nop
.Lrace_800EE9B0:
/* A4D70 800EE9B0 8E040020 */  lw         $a0, 0x20($s0)
/* A4D74 800EE9B4 8E060028 */  lw         $a2, 0x28($s0)
/* A4D78 800EE9B8 8E07002C */  lw         $a3, 0x2C($s0)
/* A4D7C 800EE9BC 0C01A036 */  jal        func_800680D8
/* A4D80 800EE9C0 00002821 */   addu      $a1, $zero, $zero
/* A4D84 800EE9C4 8E040020 */  lw         $a0, 0x20($s0)
/* A4D88 800EE9C8 0C01A026 */  jal        func_80068098
/* A4D8C 800EE9CC 00000000 */   nop
/* A4D90 800EE9D0 92030032 */  lbu        $v1, 0x32($s0)
/* A4D94 800EE9D4 240200CC */  addiu      $v0, $zero, 0xCC
/* A4D98 800EE9D8 14620006 */  bne        $v1, $v0, .Lrace_800EE9F4
/* A4D9C 800EE9DC 00000000 */   nop
/* A4DA0 800EE9E0 8E040024 */  lw         $a0, 0x24($s0)
/* A4DA4 800EE9E4 0C01A02B */  jal        func_800680AC
/* A4DA8 800EE9E8 00000000 */   nop
/* A4DAC 800EE9EC 0803BA80 */  j          .Lrace_800EEA00
/* A4DB0 800EE9F0 00000000 */   nop
.Lrace_800EE9F4:
/* A4DB4 800EE9F4 8E040024 */  lw         $a0, 0x24($s0)
/* A4DB8 800EE9F8 0C01A02D */  jal        func_800680B4
/* A4DBC 800EE9FC 00000000 */   nop
.Lrace_800EEA00:
/* A4DC0 800EEA00 8E040024 */  lw         $a0, 0x24($s0)
/* A4DC4 800EEA04 8E060028 */  lw         $a2, 0x28($s0)
/* A4DC8 800EEA08 8E07002C */  lw         $a3, 0x2C($s0)
/* A4DCC 800EEA0C 0C01A036 */  jal        func_800680D8
/* A4DD0 800EEA10 00002821 */   addu      $a1, $zero, $zero
/* A4DD4 800EEA14 8E040024 */  lw         $a0, 0x24($s0)
/* A4DD8 800EEA18 0C01A026 */  jal        func_80068098
/* A4DDC 800EEA1C 00000000 */   nop
/* A4DE0 800EEA20 0803BA8B */  j          .Lrace_800EEA2C
/* A4DE4 800EEA24 00000000 */   nop
.Lrace_800EEA28:
/* A4DE8 800EEA28 AE020038 */  sw         $v0, 0x38($s0)
.Lrace_800EEA2C:
/* A4DEC 800EEA2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4DF0 800EEA30 8FB00010 */  lw         $s0, 0x10($sp)
/* A4DF4 800EEA34 03E00008 */  jr         $ra
/* A4DF8 800EEA38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EEA3C
/* A4DFC 800EEA3C 00803021 */  addu       $a2, $a0, $zero
/* A4E00 800EEA40 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* A4E04 800EEA44 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* A4E08 800EEA48 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* A4E0C 800EEA4C 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* A4E10 800EEA50 24840001 */  addiu      $a0, $a0, 0x1
/* A4E14 800EEA54 308403FF */  andi       $a0, $a0, 0x3FF
/* A4E18 800EEA58 00041040 */  sll        $v0, $a0, 1
/* A4E1C 800EEA5C 00431021 */  addu       $v0, $v0, $v1
/* A4E20 800EEA60 94420000 */  lhu        $v0, 0x0($v0)
/* A4E24 800EEA64 30420001 */  andi       $v0, $v0, 0x1
/* A4E28 800EEA68 10400005 */  beqz       $v0, .Lrace_800EEA80
/* A4E2C 800EEA6C ACA4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a1)
/* A4E30 800EEA70 240200C8 */  addiu      $v0, $zero, 0xC8
/* A4E34 800EEA74 A0C20030 */  sb         $v0, 0x30($a2)
/* A4E38 800EEA78 0803BAA3 */  j          .Lrace_800EEA8C
/* A4E3C 800EEA7C 240200C9 */   addiu     $v0, $zero, 0xC9
.Lrace_800EEA80:
/* A4E40 800EEA80 240200C9 */  addiu      $v0, $zero, 0xC9
/* A4E44 800EEA84 A0C20030 */  sb         $v0, 0x30($a2)
/* A4E48 800EEA88 240200C8 */  addiu      $v0, $zero, 0xC8
.Lrace_800EEA8C:
/* A4E4C 800EEA8C A0C20033 */  sb         $v0, 0x33($a2)
/* A4E50 800EEA90 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* A4E54 800EEA94 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* A4E58 800EEA98 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* A4E5C 800EEA9C 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* A4E60 800EEAA0 24840001 */  addiu      $a0, $a0, 0x1
/* A4E64 800EEAA4 308403FF */  andi       $a0, $a0, 0x3FF
/* A4E68 800EEAA8 00041040 */  sll        $v0, $a0, 1
/* A4E6C 800EEAAC 00431021 */  addu       $v0, $v0, $v1
/* A4E70 800EEAB0 94420000 */  lhu        $v0, 0x0($v0)
/* A4E74 800EEAB4 30420001 */  andi       $v0, $v0, 0x1
/* A4E78 800EEAB8 10400005 */  beqz       $v0, .Lrace_800EEAD0
/* A4E7C 800EEABC ACA4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a1)
/* A4E80 800EEAC0 240200CA */  addiu      $v0, $zero, 0xCA
/* A4E84 800EEAC4 A0C20031 */  sb         $v0, 0x31($a2)
/* A4E88 800EEAC8 0803BAB7 */  j          .Lrace_800EEADC
/* A4E8C 800EEACC 240200CB */   addiu     $v0, $zero, 0xCB
.Lrace_800EEAD0:
/* A4E90 800EEAD0 240200CB */  addiu      $v0, $zero, 0xCB
/* A4E94 800EEAD4 A0C20031 */  sb         $v0, 0x31($a2)
/* A4E98 800EEAD8 240200CA */  addiu      $v0, $zero, 0xCA
.Lrace_800EEADC:
/* A4E9C 800EEADC A0C20034 */  sb         $v0, 0x34($a2)
/* A4EA0 800EEAE0 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* A4EA4 800EEAE4 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* A4EA8 800EEAE8 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* A4EAC 800EEAEC 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* A4EB0 800EEAF0 24840001 */  addiu      $a0, $a0, 0x1
/* A4EB4 800EEAF4 308403FF */  andi       $a0, $a0, 0x3FF
/* A4EB8 800EEAF8 00041040 */  sll        $v0, $a0, 1
/* A4EBC 800EEAFC 00431021 */  addu       $v0, $v0, $v1
/* A4EC0 800EEB00 94420000 */  lhu        $v0, 0x0($v0)
/* A4EC4 800EEB04 30420001 */  andi       $v0, $v0, 0x1
/* A4EC8 800EEB08 10400006 */  beqz       $v0, .Lrace_800EEB24
/* A4ECC 800EEB0C ACA4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a1)
/* A4ED0 800EEB10 240200CC */  addiu      $v0, $zero, 0xCC
/* A4ED4 800EEB14 A0C20032 */  sb         $v0, 0x32($a2)
/* A4ED8 800EEB18 240200CD */  addiu      $v0, $zero, 0xCD
/* A4EDC 800EEB1C 03E00008 */  jr         $ra
/* A4EE0 800EEB20 A0C20035 */   sb        $v0, 0x35($a2)
.Lrace_800EEB24:
/* A4EE4 800EEB24 240200CD */  addiu      $v0, $zero, 0xCD
/* A4EE8 800EEB28 A0C20032 */  sb         $v0, 0x32($a2)
/* A4EEC 800EEB2C 240200CC */  addiu      $v0, $zero, 0xCC
/* A4EF0 800EEB30 03E00008 */  jr         $ra
/* A4EF4 800EEB34 A0C20035 */   sb        $v0, 0x35($a2)
