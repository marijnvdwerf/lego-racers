.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801016B0
/* B7A70 801016B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7A74 801016B4 AFB00010 */  sw         $s0, 0x10($sp)
/* B7A78 801016B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7A7C 801016BC 0C0404CC */  jal        func_race_80101330
/* B7A80 801016C0 00808021 */   addu      $s0, $a0, $zero
/* B7A84 801016C4 02001021 */  addu       $v0, $s0, $zero
/* B7A88 801016C8 3C03800D */  lui        $v1, %hi(D_race_800CD550)
/* B7A8C 801016CC 2463D550 */  addiu      $v1, $v1, %lo(D_race_800CD550)
/* B7A90 801016D0 AC430024 */  sw         $v1, 0x24($v0)
/* B7A94 801016D4 AC400028 */  sw         $zero, 0x28($v0)
/* B7A98 801016D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7A9C 801016DC 8FB00010 */  lw         $s0, 0x10($sp)
/* B7AA0 801016E0 03E00008 */  jr         $ra
/* B7AA4 801016E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801016E8
/* B7AA8 801016E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7AAC 801016EC AFBF0010 */  sw         $ra, 0x10($sp)
/* B7AB0 801016F0 0C04052E */  jal        func_race_801014B8
/* B7AB4 801016F4 AC800028 */   sw        $zero, 0x28($a0)
/* B7AB8 801016F8 8FBF0010 */  lw         $ra, 0x10($sp)
/* B7ABC 801016FC 03E00008 */  jr         $ra
/* B7AC0 80101700 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80101704
/* B7AC4 80101704 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7AC8 80101708 AFB00010 */  sw         $s0, 0x10($sp)
/* B7ACC 8010170C AFBF0014 */  sw         $ra, 0x14($sp)
/* B7AD0 80101710 0C040580 */  jal        func_race_80101600
/* B7AD4 80101714 00808021 */   addu      $s0, $a0, $zero
/* B7AD8 80101718 0C040638 */  jal        func_race_801018E0
/* B7ADC 8010171C 02002021 */   addu      $a0, $s0, $zero
/* B7AE0 80101720 0C0405D0 */  jal        func_race_80101740
/* B7AE4 80101724 02002021 */   addu      $a0, $s0, $zero
/* B7AE8 80101728 0C0406E1 */  jal        func_race_80101B84
/* B7AEC 8010172C 02002021 */   addu      $a0, $s0, $zero
/* B7AF0 80101730 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7AF4 80101734 8FB00010 */  lw         $s0, 0x10($sp)
/* B7AF8 80101738 03E00008 */  jr         $ra
/* B7AFC 8010173C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80101740
/* B7B00 80101740 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B7B04 80101744 AFB40020 */  sw         $s4, 0x20($sp)
/* B7B08 80101748 0080A021 */  addu       $s4, $a0, $zero
/* B7B0C 8010174C AFB7002C */  sw         $s7, 0x2C($sp)
/* B7B10 80101750 24170002 */  addiu      $s7, $zero, 0x2
/* B7B14 80101754 AFB60028 */  sw         $s6, 0x28($sp)
/* B7B18 80101758 2696000C */  addiu      $s6, $s4, 0xC
/* B7B1C 8010175C AFBF0030 */  sw         $ra, 0x30($sp)
/* B7B20 80101760 AFB50024 */  sw         $s5, 0x24($sp)
/* B7B24 80101764 AFB3001C */  sw         $s3, 0x1C($sp)
/* B7B28 80101768 AFB20018 */  sw         $s2, 0x18($sp)
/* B7B2C 8010176C AFB10014 */  sw         $s1, 0x14($sp)
/* B7B30 80101770 AFB00010 */  sw         $s0, 0x10($sp)
/* B7B34 80101774 F7B60040 */  sdc1       $f22, 0x40($sp)
/* B7B38 80101778 F7B40038 */  sdc1       $f20, 0x38($sp)
/* B7B3C 8010177C 8E920028 */  lw         $s2, 0x28($s4)
/* B7B40 80101780 4480B000 */  mtc1       $zero, $f22
.Lrace_80101784:
/* B7B44 80101784 12400046 */  beqz       $s2, .Lrace_801018A0
/* B7B48 80101788 00000000 */   nop
/* B7B4C 8010178C 8E420024 */  lw         $v0, 0x24($s2)
/* B7B50 80101790 10400040 */  beqz       $v0, .Lrace_80101894
/* B7B54 80101794 00000000 */   nop
/* B7B58 80101798 8E510014 */  lw         $s1, 0x14($s2)
/* B7B5C 8010179C 8E530028 */  lw         $s3, 0x28($s2)
.Lrace_801017A0:
/* B7B60 801017A0 1260003C */  beqz       $s3, .Lrace_80101894
/* B7B64 801017A4 00000000 */   nop
/* B7B68 801017A8 8E700014 */  lw         $s0, 0x14($s3)
/* B7B6C 801017AC C620000C */  lwc1       $f0, 0xC($s1)
/* B7B70 801017B0 4616003C */  c.lt.s     $f0, $f22
/* B7B74 801017B4 00000000 */  nop
/* B7B78 801017B8 45000006 */  bc1f       .Lrace_801017D4
/* B7B7C 801017BC 0200A821 */   addu      $s5, $s0, $zero
/* B7B80 801017C0 8E220024 */  lw         $v0, 0x24($s1)
/* B7B84 801017C4 84440008 */  lh         $a0, 0x8($v0)
/* B7B88 801017C8 8C42000C */  lw         $v0, 0xC($v0)
/* B7B8C 801017CC 0040F809 */  jalr       $v0
/* B7B90 801017D0 02242021 */   addu      $a0, $s1, $a0
.Lrace_801017D4:
/* B7B94 801017D4 C600000C */  lwc1       $f0, 0xC($s0)
/* B7B98 801017D8 C6340014 */  lwc1       $f20, 0x14($s1)
/* B7B9C 801017DC 4616003C */  c.lt.s     $f0, $f22
/* B7BA0 801017E0 00000000 */  nop
/* B7BA4 801017E4 45000006 */  bc1f       .Lrace_80101800
/* B7BA8 801017E8 00000000 */   nop
/* B7BAC 801017EC 8E020024 */  lw         $v0, 0x24($s0)
/* B7BB0 801017F0 84440008 */  lh         $a0, 0x8($v0)
/* B7BB4 801017F4 8C42000C */  lw         $v0, 0xC($v0)
/* B7BB8 801017F8 0040F809 */  jalr       $v0
/* B7BBC 801017FC 02042021 */   addu      $a0, $s0, $a0
.Lrace_80101800:
/* B7BC0 80101800 C6000010 */  lwc1       $f0, 0x10($s0)
/* B7BC4 80101804 4600A03C */  c.lt.s     $f20, $f0
/* B7BC8 80101808 00000000 */  nop
/* B7BCC 8010180C 45010002 */  bc1t       .Lrace_80101818
/* B7BD0 80101810 24020001 */   addiu     $v0, $zero, 0x1
/* B7BD4 80101814 00001021 */  addu       $v0, $zero, $zero
.Lrace_80101818:
/* B7BD8 80101818 1440001E */  bnez       $v0, .Lrace_80101894
/* B7BDC 8010181C 00000000 */   nop
/* B7BE0 80101820 8E620024 */  lw         $v0, 0x24($s3)
/* B7BE4 80101824 10400018 */  beqz       $v0, .Lrace_80101888
/* B7BE8 80101828 02A02821 */   addu      $a1, $s5, $zero
/* B7BEC 8010182C 8E220024 */  lw         $v0, 0x24($s1)
/* B7BF0 80101830 84440038 */  lh         $a0, 0x38($v0)
/* B7BF4 80101834 8C42003C */  lw         $v0, 0x3C($v0)
/* B7BF8 80101838 0040F809 */  jalr       $v0
/* B7BFC 8010183C 02242021 */   addu      $a0, $s1, $a0
/* B7C00 80101840 10400011 */  beqz       $v0, .Lrace_80101888
/* B7C04 80101844 02402021 */   addu      $a0, $s2, $zero
/* B7C08 80101848 02802821 */  addu       $a1, $s4, $zero
/* B7C0C 8010184C 02C03021 */  addu       $a2, $s6, $zero
/* B7C10 80101850 AE97000C */  sw         $s7, 0xC($s4)
/* B7C14 80101854 AE91001C */  sw         $s1, 0x1C($s4)
/* B7C18 80101858 0C045AFC */  jal        func_race_80116BF0
/* B7C1C 8010185C AE950020 */   sw        $s5, 0x20($s4)
/* B7C20 80101860 8E420008 */  lw         $v0, 0x8($s2)
/* B7C24 80101864 30420004 */  andi       $v0, $v0, 0x4
/* B7C28 80101868 14400007 */  bnez       $v0, .Lrace_80101888
/* B7C2C 8010186C 02402021 */   addu      $a0, $s2, $zero
/* B7C30 80101870 02802821 */  addu       $a1, $s4, $zero
/* B7C34 80101874 02C03021 */  addu       $a2, $s6, $zero
/* B7C38 80101878 AE97000C */  sw         $s7, 0xC($s4)
/* B7C3C 8010187C AE95001C */  sw         $s5, 0x1C($s4)
/* B7C40 80101880 0C045AFC */  jal        func_race_80116BF0
/* B7C44 80101884 AE910020 */   sw        $s1, 0x20($s4)
.Lrace_80101888:
/* B7C48 80101888 8E730028 */  lw         $s3, 0x28($s3)
/* B7C4C 8010188C 080405E8 */  j          .Lrace_801017A0
/* B7C50 80101890 00000000 */   nop
.Lrace_80101894:
/* B7C54 80101894 8E520028 */  lw         $s2, 0x28($s2)
/* B7C58 80101898 080405E1 */  j          .Lrace_80101784
/* B7C5C 8010189C 00000000 */   nop
.Lrace_801018A0:
/* B7C60 801018A0 8FBF0030 */  lw         $ra, 0x30($sp)
/* B7C64 801018A4 8FB7002C */  lw         $s7, 0x2C($sp)
/* B7C68 801018A8 8FB60028 */  lw         $s6, 0x28($sp)
/* B7C6C 801018AC 8FB50024 */  lw         $s5, 0x24($sp)
/* B7C70 801018B0 8FB40020 */  lw         $s4, 0x20($sp)
/* B7C74 801018B4 8FB3001C */  lw         $s3, 0x1C($sp)
/* B7C78 801018B8 8FB20018 */  lw         $s2, 0x18($sp)
/* B7C7C 801018BC 8FB10014 */  lw         $s1, 0x14($sp)
/* B7C80 801018C0 8FB00010 */  lw         $s0, 0x10($sp)
/* B7C84 801018C4 D7B60040 */  ldc1       $f22, 0x40($sp)
/* B7C88 801018C8 D7B40038 */  ldc1       $f20, 0x38($sp)
/* B7C8C 801018CC 03E00008 */  jr         $ra
/* B7C90 801018D0 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_801018D4
/* B7C94 801018D4 8CA20014 */  lw         $v0, 0x14($a1)
/* B7C98 801018D8 03E00008 */  jr         $ra
/* B7C9C 801018DC 00000000 */   nop

glabel func_race_801018E0
/* B7CA0 801018E0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B7CA4 801018E4 AFB40020 */  sw         $s4, 0x20($sp)
/* B7CA8 801018E8 0080A021 */  addu       $s4, $a0, $zero
/* B7CAC 801018EC AFBF002C */  sw         $ra, 0x2C($sp)
/* B7CB0 801018F0 AFB60028 */  sw         $s6, 0x28($sp)
/* B7CB4 801018F4 AFB50024 */  sw         $s5, 0x24($sp)
/* B7CB8 801018F8 AFB3001C */  sw         $s3, 0x1C($sp)
/* B7CBC 801018FC AFB20018 */  sw         $s2, 0x18($sp)
/* B7CC0 80101900 AFB10014 */  sw         $s1, 0x14($sp)
/* B7CC4 80101904 AFB00010 */  sw         $s0, 0x10($sp)
/* B7CC8 80101908 F7B80040 */  sdc1       $f24, 0x40($sp)
/* B7CCC 8010190C F7B60038 */  sdc1       $f22, 0x38($sp)
/* B7CD0 80101910 F7B40030 */  sdc1       $f20, 0x30($sp)
/* B7CD4 80101914 8E850028 */  lw         $a1, 0x28($s4)
/* B7CD8 80101918 10A00073 */  beqz       $a1, .Lrace_80101AE8
/* B7CDC 8010191C 00A0B021 */   addu      $s6, $a1, $zero
/* B7CE0 80101920 8E820024 */  lw         $v0, 0x24($s4)
/* B7CE4 80101924 84440030 */  lh         $a0, 0x30($v0)
/* B7CE8 80101928 8C420034 */  lw         $v0, 0x34($v0)
/* B7CEC 8010192C 0040F809 */  jalr       $v0
/* B7CF0 80101930 02842021 */   addu      $a0, $s4, $a0
/* B7CF4 80101934 00408821 */  addu       $s1, $v0, $zero
/* B7CF8 80101938 C620000C */  lwc1       $f0, 0xC($s1)
/* B7CFC 8010193C 4480A000 */  mtc1       $zero, $f20
/* B7D00 80101940 4614003C */  c.lt.s     $f0, $f20
/* B7D04 80101944 00000000 */  nop
/* B7D08 80101948 45000007 */  bc1f       .Lrace_80101968
/* B7D0C 8010194C 4600A586 */   mov.s     $f22, $f20
/* B7D10 80101950 8E220024 */  lw         $v0, 0x24($s1)
/* B7D14 80101954 84440008 */  lh         $a0, 0x8($v0)
/* B7D18 80101958 8C42000C */  lw         $v0, 0xC($v0)
/* B7D1C 8010195C 0040F809 */  jalr       $v0
/* B7D20 80101960 02242021 */   addu      $a0, $s1, $a0
/* B7D24 80101964 4600A586 */  mov.s      $f22, $f20
.Lrace_80101968:
/* B7D28 80101968 8E820028 */  lw         $v0, 0x28($s4)
/* B7D2C 8010196C C6380010 */  lwc1       $f24, 0x10($s1)
/* B7D30 80101970 8C530028 */  lw         $s3, 0x28($v0)
.Lrace_80101974:
/* B7D34 80101974 1260005C */  beqz       $s3, .Lrace_80101AE8
/* B7D38 80101978 02602821 */   addu      $a1, $s3, $zero
/* B7D3C 8010197C 8E820024 */  lw         $v0, 0x24($s4)
/* B7D40 80101980 8E750028 */  lw         $s5, 0x28($s3)
/* B7D44 80101984 84440030 */  lh         $a0, 0x30($v0)
/* B7D48 80101988 8C420034 */  lw         $v0, 0x34($v0)
/* B7D4C 8010198C 0040F809 */  jalr       $v0
/* B7D50 80101990 02842021 */   addu      $a0, $s4, $a0
/* B7D54 80101994 00408821 */  addu       $s1, $v0, $zero
/* B7D58 80101998 C620000C */  lwc1       $f0, 0xC($s1)
/* B7D5C 8010199C 4616003C */  c.lt.s     $f0, $f22
/* B7D60 801019A0 00000000 */  nop
/* B7D64 801019A4 45000006 */  bc1f       .Lrace_801019C0
/* B7D68 801019A8 00000000 */   nop
/* B7D6C 801019AC 8E220024 */  lw         $v0, 0x24($s1)
/* B7D70 801019B0 84440008 */  lh         $a0, 0x8($v0)
/* B7D74 801019B4 8C42000C */  lw         $v0, 0xC($v0)
/* B7D78 801019B8 0040F809 */  jalr       $v0
/* B7D7C 801019BC 02242021 */   addu      $a0, $s1, $a0
.Lrace_801019C0:
/* B7D80 801019C0 C6200010 */  lwc1       $f0, 0x10($s1)
/* B7D84 801019C4 4618003C */  c.lt.s     $f0, $f24
/* B7D88 801019C8 00000000 */  nop
/* B7D8C 801019CC 45000039 */  bc1f       .Lrace_80101AB4
/* B7D90 801019D0 00000000 */   nop
/* B7D94 801019D4 12A00002 */  beqz       $s5, .Lrace_801019E0
/* B7D98 801019D8 AED50028 */   sw        $s5, 0x28($s6)
/* B7D9C 801019DC AEB60018 */  sw         $s6, 0x18($s5)
.Lrace_801019E0:
/* B7DA0 801019E0 8ED20018 */  lw         $s2, 0x18($s6)
.Lrace_801019E4:
/* B7DA4 801019E4 1240002C */  beqz       $s2, .Lrace_80101A98
/* B7DA8 801019E8 02402821 */   addu      $a1, $s2, $zero
/* B7DAC 801019EC 8E820024 */  lw         $v0, 0x24($s4)
/* B7DB0 801019F0 84440030 */  lh         $a0, 0x30($v0)
/* B7DB4 801019F4 8C420034 */  lw         $v0, 0x34($v0)
/* B7DB8 801019F8 0040F809 */  jalr       $v0
/* B7DBC 801019FC 02842021 */   addu      $a0, $s4, $a0
/* B7DC0 80101A00 C620000C */  lwc1       $f0, 0xC($s1)
/* B7DC4 80101A04 4616003C */  c.lt.s     $f0, $f22
/* B7DC8 80101A08 00000000 */  nop
/* B7DCC 80101A0C 45000006 */  bc1f       .Lrace_80101A28
/* B7DD0 80101A10 00408021 */   addu      $s0, $v0, $zero
/* B7DD4 80101A14 8E220024 */  lw         $v0, 0x24($s1)
/* B7DD8 80101A18 84440008 */  lh         $a0, 0x8($v0)
/* B7DDC 80101A1C 8C42000C */  lw         $v0, 0xC($v0)
/* B7DE0 80101A20 0040F809 */  jalr       $v0
/* B7DE4 80101A24 02242021 */   addu      $a0, $s1, $a0
.Lrace_80101A28:
/* B7DE8 80101A28 C600000C */  lwc1       $f0, 0xC($s0)
/* B7DEC 80101A2C C6340010 */  lwc1       $f20, 0x10($s1)
/* B7DF0 80101A30 4616003C */  c.lt.s     $f0, $f22
/* B7DF4 80101A34 00000000 */  nop
/* B7DF8 80101A38 45000006 */  bc1f       .Lrace_80101A54
/* B7DFC 80101A3C 00000000 */   nop
/* B7E00 80101A40 8E020024 */  lw         $v0, 0x24($s0)
/* B7E04 80101A44 84440008 */  lh         $a0, 0x8($v0)
/* B7E08 80101A48 8C42000C */  lw         $v0, 0xC($v0)
/* B7E0C 80101A4C 0040F809 */  jalr       $v0
/* B7E10 80101A50 02042021 */   addu      $a0, $s0, $a0
.Lrace_80101A54:
/* B7E14 80101A54 C6000010 */  lwc1       $f0, 0x10($s0)
/* B7E18 80101A58 4614003E */  c.le.s     $f0, $f20
/* B7E1C 80101A5C 00000000 */  nop
/* B7E20 80101A60 45010002 */  bc1t       .Lrace_80101A6C
/* B7E24 80101A64 24020001 */   addiu     $v0, $zero, 0x1
/* B7E28 80101A68 00001021 */  addu       $v0, $zero, $zero
.Lrace_80101A6C:
/* B7E2C 80101A6C 54400004 */  bnel       $v0, $zero, .Lrace_80101A80
/* B7E30 80101A70 AE720018 */   sw        $s2, 0x18($s3)
/* B7E34 80101A74 8E520018 */  lw         $s2, 0x18($s2)
/* B7E38 80101A78 08040679 */  j          .Lrace_801019E4
/* B7E3C 80101A7C 00000000 */   nop
.Lrace_80101A80:
/* B7E40 80101A80 8E420028 */  lw         $v0, 0x28($s2)
/* B7E44 80101A84 AE620028 */  sw         $v0, 0x28($s3)
/* B7E48 80101A88 8E420028 */  lw         $v0, 0x28($s2)
/* B7E4C 80101A8C AC530018 */  sw         $s3, 0x18($v0)
/* B7E50 80101A90 080406B8 */  j          .Lrace_80101AE0
/* B7E54 80101A94 AE530028 */   sw        $s3, 0x28($s2)
.Lrace_80101A98:
/* B7E58 80101A98 AE600018 */  sw         $zero, 0x18($s3)
/* B7E5C 80101A9C 8E820028 */  lw         $v0, 0x28($s4)
/* B7E60 80101AA0 AE620028 */  sw         $v0, 0x28($s3)
/* B7E64 80101AA4 8E820028 */  lw         $v0, 0x28($s4)
/* B7E68 80101AA8 AC530018 */  sw         $s3, 0x18($v0)
/* B7E6C 80101AAC 080406B8 */  j          .Lrace_80101AE0
/* B7E70 80101AB0 AE930028 */   sw        $s3, 0x28($s4)
.Lrace_80101AB4:
/* B7E74 80101AB4 C620000C */  lwc1       $f0, 0xC($s1)
/* B7E78 80101AB8 4616003C */  c.lt.s     $f0, $f22
/* B7E7C 80101ABC 00000000 */  nop
/* B7E80 80101AC0 45000006 */  bc1f       .Lrace_80101ADC
/* B7E84 80101AC4 0260B021 */   addu      $s6, $s3, $zero
/* B7E88 80101AC8 8E220024 */  lw         $v0, 0x24($s1)
/* B7E8C 80101ACC 84440008 */  lh         $a0, 0x8($v0)
/* B7E90 80101AD0 8C42000C */  lw         $v0, 0xC($v0)
/* B7E94 80101AD4 0040F809 */  jalr       $v0
/* B7E98 80101AD8 02242021 */   addu      $a0, $s1, $a0
.Lrace_80101ADC:
/* B7E9C 80101ADC C6380010 */  lwc1       $f24, 0x10($s1)
.Lrace_80101AE0:
/* B7EA0 80101AE0 0804065D */  j          .Lrace_80101974
/* B7EA4 80101AE4 02A09821 */   addu      $s3, $s5, $zero
.Lrace_80101AE8:
/* B7EA8 80101AE8 8FBF002C */  lw         $ra, 0x2C($sp)
/* B7EAC 80101AEC 8FB60028 */  lw         $s6, 0x28($sp)
/* B7EB0 80101AF0 8FB50024 */  lw         $s5, 0x24($sp)
/* B7EB4 80101AF4 8FB40020 */  lw         $s4, 0x20($sp)
/* B7EB8 80101AF8 8FB3001C */  lw         $s3, 0x1C($sp)
/* B7EBC 80101AFC 8FB20018 */  lw         $s2, 0x18($sp)
/* B7EC0 80101B00 8FB10014 */  lw         $s1, 0x14($sp)
/* B7EC4 80101B04 8FB00010 */  lw         $s0, 0x10($sp)
/* B7EC8 80101B08 D7B80040 */  ldc1       $f24, 0x40($sp)
/* B7ECC 80101B0C D7B60038 */  ldc1       $f22, 0x38($sp)
/* B7ED0 80101B10 D7B40030 */  ldc1       $f20, 0x30($sp)
/* B7ED4 80101B14 03E00008 */  jr         $ra
/* B7ED8 80101B18 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_80101B1C
/* B7EDC 80101B1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B7EE0 80101B20 AFB10014 */  sw         $s1, 0x14($sp)
/* B7EE4 80101B24 00808821 */  addu       $s1, $a0, $zero
/* B7EE8 80101B28 AFB00010 */  sw         $s0, 0x10($sp)
/* B7EEC 80101B2C AFBF0018 */  sw         $ra, 0x18($sp)
/* B7EF0 80101B30 0C040557 */  jal        func_race_8010155C
/* B7EF4 80101B34 00A08021 */   addu      $s0, $a1, $zero
/* B7EF8 80101B38 1440000D */  bnez       $v0, .Lrace_80101B70
/* B7EFC 80101B3C 24020001 */   addiu     $v0, $zero, 0x1
/* B7F00 80101B40 8E030004 */  lw         $v1, 0x4($s0)
/* B7F04 80101B44 24020002 */  addiu      $v0, $zero, 0x2
/* B7F08 80101B48 14620009 */  bne        $v1, $v0, .Lrace_80101B70
/* B7F0C 80101B4C 00001021 */   addu      $v0, $zero, $zero
/* B7F10 80101B50 8E220028 */  lw         $v0, 0x28($s1)
/* B7F14 80101B54 54400001 */  bnel       $v0, $zero, .Lrace_80101B5C
/* B7F18 80101B58 AC500018 */   sw        $s0, 0x18($v0)
.Lrace_80101B5C:
/* B7F1C 80101B5C AE000018 */  sw         $zero, 0x18($s0)
/* B7F20 80101B60 8E230028 */  lw         $v1, 0x28($s1)
/* B7F24 80101B64 24020001 */  addiu      $v0, $zero, 0x1
/* B7F28 80101B68 AE030028 */  sw         $v1, 0x28($s0)
/* B7F2C 80101B6C AE300028 */  sw         $s0, 0x28($s1)
.Lrace_80101B70:
/* B7F30 80101B70 8FBF0018 */  lw         $ra, 0x18($sp)
/* B7F34 80101B74 8FB10014 */  lw         $s1, 0x14($sp)
/* B7F38 80101B78 8FB00010 */  lw         $s0, 0x10($sp)
/* B7F3C 80101B7C 03E00008 */  jr         $ra
/* B7F40 80101B80 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80101B84
/* B7F44 80101B84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B7F48 80101B88 AFB20018 */  sw         $s2, 0x18($sp)
/* B7F4C 80101B8C 00809021 */  addu       $s2, $a0, $zero
/* B7F50 80101B90 AFB10014 */  sw         $s1, 0x14($sp)
/* B7F54 80101B94 00008821 */  addu       $s1, $zero, $zero
/* B7F58 80101B98 AFBF001C */  sw         $ra, 0x1C($sp)
/* B7F5C 80101B9C AFB00010 */  sw         $s0, 0x10($sp)
/* B7F60 80101BA0 8E450028 */  lw         $a1, 0x28($s2)
.Lrace_80101BA4:
/* B7F64 80101BA4 10A00015 */  beqz       $a1, .Lrace_80101BFC
/* B7F68 80101BA8 00000000 */   nop
/* B7F6C 80101BAC 8CA20024 */  lw         $v0, 0x24($a1)
/* B7F70 80101BB0 8CB00028 */  lw         $s0, 0x28($a1)
/* B7F74 80101BB4 5440000F */  bnel       $v0, $zero, .Lrace_80101BF4
/* B7F78 80101BB8 00A08821 */   addu      $s1, $a1, $zero
/* B7F7C 80101BBC 8E420028 */  lw         $v0, 0x28($s2)
/* B7F80 80101BC0 14450005 */  bne        $v0, $a1, .Lrace_80101BD8
/* B7F84 80101BC4 00000000 */   nop
/* B7F88 80101BC8 12000006 */  beqz       $s0, .Lrace_80101BE4
/* B7F8C 80101BCC AE500028 */   sw        $s0, 0x28($s2)
/* B7F90 80101BD0 080406F9 */  j          .Lrace_80101BE4
/* B7F94 80101BD4 AE000018 */   sw        $zero, 0x18($s0)
.Lrace_80101BD8:
/* B7F98 80101BD8 12000002 */  beqz       $s0, .Lrace_80101BE4
/* B7F9C 80101BDC AE300028 */   sw        $s0, 0x28($s1)
/* B7FA0 80101BE0 AE110018 */  sw         $s1, 0x18($s0)
.Lrace_80101BE4:
/* B7FA4 80101BE4 0C0405A4 */  jal        func_race_80101690
/* B7FA8 80101BE8 02402021 */   addu      $a0, $s2, $zero
/* B7FAC 80101BEC 080406E9 */  j          .Lrace_80101BA4
/* B7FB0 80101BF0 02002821 */   addu      $a1, $s0, $zero
.Lrace_80101BF4:
/* B7FB4 80101BF4 080406E9 */  j          .Lrace_80101BA4
/* B7FB8 80101BF8 02002821 */   addu      $a1, $s0, $zero
.Lrace_80101BFC:
/* B7FBC 80101BFC 8FBF001C */  lw         $ra, 0x1C($sp)
/* B7FC0 80101C00 8FB20018 */  lw         $s2, 0x18($sp)
/* B7FC4 80101C04 8FB10014 */  lw         $s1, 0x14($sp)
/* B7FC8 80101C08 8FB00010 */  lw         $s0, 0x10($sp)
/* B7FCC 80101C0C 03E00008 */  jr         $ra
/* B7FD0 80101C10 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80101C14
/* B7FD4 80101C14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7FD8 80101C18 AFBF0010 */  sw         $ra, 0x10($sp)
/* B7FDC 80101C1C 0C0404D3 */  jal        func_race_8010134C
/* B7FE0 80101C20 00000000 */   nop
/* B7FE4 80101C24 8FBF0010 */  lw         $ra, 0x10($sp)
/* B7FE8 80101C28 03E00008 */  jr         $ra
/* B7FEC 80101C2C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80101C30
/* B7FF0 80101C30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7FF4 80101C34 AFB00010 */  sw         $s0, 0x10($sp)
/* B7FF8 80101C38 00808021 */  addu       $s0, $a0, $zero
/* B7FFC 80101C3C AFBF0014 */  sw         $ra, 0x14($sp)
/* B8000 80101C40 0C0409A8 */  jal        func_race_801026A0
/* B8004 80101C44 26040004 */   addiu     $a0, $s0, 0x4
/* B8008 80101C48 02001021 */  addu       $v0, $s0, $zero
/* B800C 80101C4C AC400000 */  sw         $zero, 0x0($v0)
/* B8010 80101C50 AC40005C */  sw         $zero, 0x5C($v0)
/* B8014 80101C54 AC40006C */  sw         $zero, 0x6C($v0)
/* B8018 80101C58 AC400060 */  sw         $zero, 0x60($v0)
/* B801C 80101C5C AC400064 */  sw         $zero, 0x64($v0)
/* B8020 80101C60 AC400068 */  sw         $zero, 0x68($v0)
/* B8024 80101C64 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8028 80101C68 8FB00010 */  lw         $s0, 0x10($sp)
/* B802C 80101C6C 03E00008 */  jr         $ra
/* B8030 80101C70 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80101C74
/* B8034 80101C74 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B8038 80101C78 AFB10014 */  sw         $s1, 0x14($sp)
/* B803C 80101C7C 00808821 */  addu       $s1, $a0, $zero
/* B8040 80101C80 AFB00010 */  sw         $s0, 0x10($sp)
/* B8044 80101C84 AFBF0018 */  sw         $ra, 0x18($sp)
/* B8048 80101C88 0C040731 */  jal        func_race_80101CC4
/* B804C 80101C8C 00A08021 */   addu      $s0, $a1, $zero
/* B8050 80101C90 26240004 */  addiu      $a0, $s1, 0x4
/* B8054 80101C94 0C0409B9 */  jal        func_race_801026E4
/* B8058 80101C98 24050002 */   addiu     $a1, $zero, 0x2
/* B805C 80101C9C 32100001 */  andi       $s0, $s0, 0x1
/* B8060 80101CA0 12000003 */  beqz       $s0, .Lrace_80101CB0
/* B8064 80101CA4 00000000 */   nop
/* B8068 80101CA8 0C01FB5C */  jal        func_8007ED70
/* B806C 80101CAC 02202021 */   addu      $a0, $s1, $zero
.Lrace_80101CB0:
/* B8070 80101CB0 8FBF0018 */  lw         $ra, 0x18($sp)
/* B8074 80101CB4 8FB10014 */  lw         $s1, 0x14($sp)
/* B8078 80101CB8 8FB00010 */  lw         $s0, 0x10($sp)
/* B807C 80101CBC 03E00008 */  jr         $ra
/* B8080 80101CC0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80101CC4
/* B8084 80101CC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8088 80101CC8 AFB00010 */  sw         $s0, 0x10($sp)
/* B808C 80101CCC 00808021 */  addu       $s0, $a0, $zero
/* B8090 80101CD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B8094 80101CD4 0C0409CD */  jal        func_race_80102734
/* B8098 80101CD8 26040004 */   addiu     $a0, $s0, 0x4
/* B809C 80101CDC AE000000 */  sw         $zero, 0x0($s0)
/* B80A0 80101CE0 AE00005C */  sw         $zero, 0x5C($s0)
/* B80A4 80101CE4 AE00006C */  sw         $zero, 0x6C($s0)
/* B80A8 80101CE8 AE000060 */  sw         $zero, 0x60($s0)
/* B80AC 80101CEC AE000064 */  sw         $zero, 0x64($s0)
/* B80B0 80101CF0 AE000068 */  sw         $zero, 0x68($s0)
/* B80B4 80101CF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B80B8 80101CF8 8FB00010 */  lw         $s0, 0x10($sp)
/* B80BC 80101CFC 03E00008 */  jr         $ra
/* B80C0 80101D00 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80101D04
/* B80C4 80101D04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B80C8 80101D08 AFB00010 */  sw         $s0, 0x10($sp)
/* B80CC 80101D0C 00808021 */  addu       $s0, $a0, $zero
/* B80D0 80101D10 26040004 */  addiu      $a0, $s0, 0x4
/* B80D4 80101D14 AFBF0014 */  sw         $ra, 0x14($sp)
/* B80D8 80101D18 AE050000 */  sw         $a1, 0x0($s0)
/* B80DC 80101D1C 0C0409E2 */  jal        func_race_80102788
/* B80E0 80101D20 02002821 */   addu      $a1, $s0, $zero
/* B80E4 80101D24 0C04074F */  jal        func_race_80101D3C
/* B80E8 80101D28 02002021 */   addu      $a0, $s0, $zero
/* B80EC 80101D2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B80F0 80101D30 8FB00010 */  lw         $s0, 0x10($sp)
/* B80F4 80101D34 03E00008 */  jr         $ra
/* B80F8 80101D38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80101D3C
/* B80FC 80101D3C 8C820060 */  lw         $v0, 0x60($a0)
/* B8100 80101D40 2403FFFD */  addiu      $v1, $zero, -0x3
/* B8104 80101D44 AC800064 */  sw         $zero, 0x64($a0)
/* B8108 80101D48 AC800068 */  sw         $zero, 0x68($a0)
/* B810C 80101D4C 34420001 */  ori        $v0, $v0, 0x1
/* B8110 80101D50 00431024 */  and        $v0, $v0, $v1
/* B8114 80101D54 03E00008 */  jr         $ra
/* B8118 80101D58 AC820060 */   sw        $v0, 0x60($a0)

glabel func_race_80101D5C
/* B811C 80101D5C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B8120 80101D60 AFB00018 */  sw         $s0, 0x18($sp)
/* B8124 80101D64 00808021 */  addu       $s0, $a0, $zero
/* B8128 80101D68 F7B80030 */  sdc1       $f24, 0x30($sp)
/* B812C 80101D6C 3C01800D */  lui        $at, %hi(D_race_800CD590)
/* B8130 80101D70 C438D590 */  lwc1       $f24, %lo(D_race_800CD590)($at)
/* B8134 80101D74 44851000 */  mtc1       $a1, $f2
/* B8138 80101D78 468010A0 */  cvt.s.w    $f2, $f2
/* B813C 80101D7C AFBF001C */  sw         $ra, 0x1C($sp)
/* B8140 80101D80 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* B8144 80101D84 F7B60028 */  sdc1       $f22, 0x28($sp)
/* B8148 80101D88 F7B40020 */  sdc1       $f20, 0x20($sp)
/* B814C 80101D8C 8E02005C */  lw         $v0, 0x5C($s0)
/* B8150 80101D90 3C01800D */  lui        $at, %hi(D_race_800CD594)
/* B8154 80101D94 C436D594 */  lwc1       $f22, %lo(D_race_800CD594)($at)
/* B8158 80101D98 8E030000 */  lw         $v1, 0x0($s0)
/* B815C 80101D9C 3C01800D */  lui        $at, %hi(D_race_800CD598)
/* B8160 80101DA0 C420D598 */  lwc1       $f0, %lo(D_race_800CD598)($at)
/* B8164 80101DA4 30440003 */  andi       $a0, $v0, 0x3
/* B8168 80101DA8 8C620D04 */  lw         $v0, 0xD04($v1)
/* B816C 80101DAC 46001682 */  mul.s      $f26, $f2, $f0
/* B8170 80101DB0 30420080 */  andi       $v0, $v0, 0x80
/* B8174 80101DB4 1040000B */  beqz       $v0, .Lrace_80101DE4
/* B8178 80101DB8 0004202B */   sltu      $a0, $zero, $a0
/* B817C 80101DBC 24020001 */  addiu      $v0, $zero, 0x1
/* B8180 80101DC0 8C630CA0 */  lw         $v1, 0xCA0($v1)
/* B8184 80101DC4 3C01800D */  lui        $at, %hi(D_race_800CD59C)
/* B8188 80101DC8 C434D59C */  lwc1       $f20, %lo(D_race_800CD59C)($at)
/* B818C 80101DCC 1462000B */  bne        $v1, $v0, .Lrace_80101DFC
/* B8190 80101DD0 00000000 */   nop
/* B8194 80101DD4 3C01800D */  lui        $at, %hi(D_race_800CD5A0)
/* B8198 80101DD8 C434D5A0 */  lwc1       $f20, %lo(D_race_800CD5A0)($at)
/* B819C 80101DDC 0804077F */  j          .Lrace_80101DFC
/* B81A0 80101DE0 00000000 */   nop
.Lrace_80101DE4:
/* B81A4 80101DE4 3C01800D */  lui        $at, %hi(D_race_800CD5A4)
/* B81A8 80101DE8 C434D5A4 */  lwc1       $f20, %lo(D_race_800CD5A4)($at)
/* B81AC 80101DEC 50800020 */  beql       $a0, $zero, .Lrace_80101E70
/* B81B0 80101DF0 26040004 */   addiu     $a0, $s0, 0x4
/* B81B4 80101DF4 3C01800D */  lui        $at, %hi(D_race_800CD5A8)
/* B81B8 80101DF8 C434D5A8 */  lwc1       $f20, %lo(D_race_800CD5A8)($at)
.Lrace_80101DFC:
/* B81BC 80101DFC 5080001C */  beql       $a0, $zero, .Lrace_80101E70
/* B81C0 80101E00 26040004 */   addiu     $a0, $s0, 0x4
/* B81C4 80101E04 8E02005C */  lw         $v0, 0x5C($s0)
/* B81C8 80101E08 30430003 */  andi       $v1, $v0, 0x3
/* B81CC 80101E0C 24020001 */  addiu      $v0, $zero, 0x1
/* B81D0 80101E10 5462000B */  bnel       $v1, $v0, .Lrace_80101E40
/* B81D4 80101E14 24020002 */   addiu     $v0, $zero, 0x2
/* B81D8 80101E18 C602006C */  lwc1       $f2, 0x6C($s0)
/* B81DC 80101E1C 44800000 */  mtc1       $zero, $f0
/* B81E0 80101E20 4600103C */  c.lt.s     $f2, $f0
/* B81E4 80101E24 00000000 */  nop
/* B81E8 80101E28 4500005B */  bc1f       .Lrace_80101F98
/* B81EC 80101E2C 4600A106 */   mov.s     $f4, $f20
/* B81F0 80101E30 3C01800D */  lui        $at, %hi(D_race_800CD5AC)
/* B81F4 80101E34 C424D5AC */  lwc1       $f4, %lo(D_race_800CD5AC)($at)
/* B81F8 80101E38 080407E6 */  j          .Lrace_80101F98
/* B81FC 80101E3C 00000000 */   nop
.Lrace_80101E40:
/* B8200 80101E40 14620054 */  bne        $v1, $v0, .Lrace_80101F94
/* B8204 80101E44 00000000 */   nop
/* B8208 80101E48 C602006C */  lwc1       $f2, 0x6C($s0)
/* B820C 80101E4C 44800000 */  mtc1       $zero, $f0
/* B8210 80101E50 3C01800D */  lui        $at, %hi(D_race_800CD5B0)
/* B8214 80101E54 C424D5B0 */  lwc1       $f4, %lo(D_race_800CD5B0)($at)
/* B8218 80101E58 4602003C */  c.lt.s     $f0, $f2
/* B821C 80101E5C 00000000 */  nop
/* B8220 80101E60 4502004D */  bc1fl      .Lrace_80101F98
/* B8224 80101E64 4600A107 */   neg.s     $f4, $f20
/* B8228 80101E68 080407E6 */  j          .Lrace_80101F98
/* B822C 80101E6C 00000000 */   nop
.Lrace_80101E70:
/* B8230 80101E70 27A50010 */  addiu      $a1, $sp, 0x10
/* B8234 80101E74 0C0409EE */  jal        func_race_801027B8
/* B8238 80101E78 00003021 */   addu      $a2, $zero, $zero
/* B823C 80101E7C 8FA30010 */  lw         $v1, 0x10($sp)
/* B8240 80101E80 8C620098 */  lw         $v0, 0x98($v1)
/* B8244 80101E84 24050001 */  addiu      $a1, $zero, 0x1
/* B8248 80101E88 84440068 */  lh         $a0, 0x68($v0)
/* B824C 80101E8C 8C42006C */  lw         $v0, 0x6C($v0)
/* B8250 80101E90 0040F809 */  jalr       $v0
/* B8254 80101E94 00642021 */   addu      $a0, $v1, $a0
/* B8258 80101E98 3C01800D */  lui        $at, %hi(D_race_800CD5B4)
/* B825C 80101E9C C422D5B4 */  lwc1       $f2, %lo(D_race_800CD5B4)($at)
/* B8260 80101EA0 46000107 */  neg.s      $f4, $f0
/* B8264 80101EA4 4604103C */  c.lt.s     $f2, $f4
/* B8268 80101EA8 00000000 */  nop
/* B826C 80101EAC 45000003 */  bc1f       .Lrace_80101EBC
/* B8270 80101EB0 00000000 */   nop
/* B8274 80101EB4 080407B5 */  j          .Lrace_80101ED4
/* B8278 80101EB8 46001106 */   mov.s     $f4, $f2
.Lrace_80101EBC:
/* B827C 80101EBC 3C01800D */  lui        $at, %hi(D_race_800CD5B8)
/* B8280 80101EC0 C420D5B8 */  lwc1       $f0, %lo(D_race_800CD5B8)($at)
/* B8284 80101EC4 4600203C */  c.lt.s     $f4, $f0
/* B8288 80101EC8 00000000 */  nop
/* B828C 80101ECC 45030001 */  bc1tl      .Lrace_80101ED4
/* B8290 80101ED0 46000106 */   mov.s     $f4, $f0
.Lrace_80101ED4:
/* B8294 80101ED4 44801000 */  mtc1       $zero, $f2
/* B8298 80101ED8 4604103C */  c.lt.s     $f2, $f4
/* B829C 80101EDC 00000000 */  nop
/* B82A0 80101EE0 45000014 */  bc1f       .Lrace_80101F34
/* B82A4 80101EE4 00000000 */   nop
/* B82A8 80101EE8 C600006C */  lwc1       $f0, 0x6C($s0)
/* B82AC 80101EEC 4602003C */  c.lt.s     $f0, $f2
/* B82B0 80101EF0 00000000 */  nop
/* B82B4 80101EF4 45000002 */  bc1f       .Lrace_80101F00
/* B82B8 80101EF8 46002606 */   mov.s     $f24, $f4
/* B82BC 80101EFC E602006C */  swc1       $f2, 0x6C($s0)
.Lrace_80101F00:
/* B82C0 80101F00 4618C082 */  mul.s      $f2, $f24, $f24
/* B82C4 80101F04 3C01800D */  lui        $at, %hi(D_race_800CD5BC)
/* B82C8 80101F08 C420D5BC */  lwc1       $f0, %lo(D_race_800CD5BC)($at)
/* B82CC 80101F0C 46020001 */  sub.s      $f0, $f0, $f2
/* B82D0 80101F10 3C01800D */  lui        $at, %hi(D_race_800CD5C0)
/* B82D4 80101F14 C422D5C0 */  lwc1       $f2, %lo(D_race_800CD5C0)($at)
/* B82D8 80101F18 46020002 */  mul.s      $f0, $f0, $f2
/* B82DC 80101F1C 3C01800D */  lui        $at, %hi(D_race_800CD5C4)
/* B82E0 80101F20 C422D5C4 */  lwc1       $f2, %lo(D_race_800CD5C4)($at)
/* B82E4 80101F24 46020000 */  add.s      $f0, $f0, $f2
/* B82E8 80101F28 46140102 */  mul.s      $f4, $f0, $f20
/* B82EC 80101F2C 080407E6 */  j          .Lrace_80101F98
/* B82F0 80101F30 00000000 */   nop
.Lrace_80101F34:
/* B82F4 80101F34 4602203C */  c.lt.s     $f4, $f2
/* B82F8 80101F38 00000000 */  nop
/* B82FC 80101F3C 45000015 */  bc1f       .Lrace_80101F94
/* B8300 80101F40 00000000 */   nop
/* B8304 80101F44 C600006C */  lwc1       $f0, 0x6C($s0)
/* B8308 80101F48 4600103C */  c.lt.s     $f2, $f0
/* B830C 80101F4C 00000000 */  nop
/* B8310 80101F50 45000002 */  bc1f       .Lrace_80101F5C
/* B8314 80101F54 46002586 */   mov.s     $f22, $f4
/* B8318 80101F58 E602006C */  swc1       $f2, 0x6C($s0)
.Lrace_80101F5C:
/* B831C 80101F5C 4616B082 */  mul.s      $f2, $f22, $f22
/* B8320 80101F60 3C01800D */  lui        $at, %hi(D_race_800CD5C8)
/* B8324 80101F64 C420D5C8 */  lwc1       $f0, %lo(D_race_800CD5C8)($at)
/* B8328 80101F68 46020001 */  sub.s      $f0, $f0, $f2
/* B832C 80101F6C 3C01800D */  lui        $at, %hi(D_race_800CD5CC)
/* B8330 80101F70 C422D5CC */  lwc1       $f2, %lo(D_race_800CD5CC)($at)
/* B8334 80101F74 46020002 */  mul.s      $f0, $f0, $f2
/* B8338 80101F78 3C01800D */  lui        $at, %hi(D_race_800CD5D0)
/* B833C 80101F7C C422D5D0 */  lwc1       $f2, %lo(D_race_800CD5D0)($at)
/* B8340 80101F80 46020000 */  add.s      $f0, $f0, $f2
/* B8344 80101F84 4600A087 */  neg.s      $f2, $f20
/* B8348 80101F88 46020102 */  mul.s      $f4, $f0, $f2
/* B834C 80101F8C 080407E6 */  j          .Lrace_80101F98
/* B8350 80101F90 00000000 */   nop
.Lrace_80101F94:
/* B8354 80101F94 44802000 */  mtc1       $zero, $f4
.Lrace_80101F98:
/* B8358 80101F98 44801000 */  mtc1       $zero, $f2
/* B835C 80101F9C 46022032 */  c.eq.s     $f4, $f2
/* B8360 80101FA0 00000000 */  nop
/* B8364 80101FA4 45000015 */  bc1f       .Lrace_80101FFC
/* B8368 80101FA8 00000000 */   nop
/* B836C 80101FAC C600006C */  lwc1       $f0, 0x6C($s0)
/* B8370 80101FB0 4600103C */  c.lt.s     $f2, $f0
/* B8374 80101FB4 00000000 */  nop
/* B8378 80101FB8 45000005 */  bc1f       .Lrace_80101FD0
/* B837C 80101FBC 00000000 */   nop
/* B8380 80101FC0 3C01800D */  lui        $at, %hi(D_race_800CD5D4)
/* B8384 80101FC4 C424D5D4 */  lwc1       $f4, %lo(D_race_800CD5D4)($at)
/* B8388 80101FC8 080407FF */  j          .Lrace_80101FFC
/* B838C 80101FCC 46001586 */   mov.s     $f22, $f2
.Lrace_80101FD0:
/* B8390 80101FD0 4602003C */  c.lt.s     $f0, $f2
/* B8394 80101FD4 00000000 */  nop
/* B8398 80101FD8 45000005 */  bc1f       .Lrace_80101FF0
/* B839C 80101FDC 46001606 */   mov.s     $f24, $f2
/* B83A0 80101FE0 3C01800D */  lui        $at, %hi(D_race_800CD5D8)
/* B83A4 80101FE4 C424D5D8 */  lwc1       $f4, %lo(D_race_800CD5D8)($at)
/* B83A8 80101FE8 080407FF */  j          .Lrace_80101FFC
/* B83AC 80101FEC 00000000 */   nop
.Lrace_80101FF0:
/* B83B0 80101FF0 46001586 */  mov.s      $f22, $f2
/* B83B4 80101FF4 4600B606 */  mov.s      $f24, $f22
/* B83B8 80101FF8 4600B106 */  mov.s      $f4, $f22
.Lrace_80101FFC:
/* B83BC 80101FFC 461A2082 */  mul.s      $f2, $f4, $f26
/* B83C0 80102000 C600006C */  lwc1       $f0, 0x6C($s0)
/* B83C4 80102004 46020000 */  add.s      $f0, $f0, $f2
/* B83C8 80102008 4600C03C */  c.lt.s     $f24, $f0
/* B83CC 8010200C 00000000 */  nop
/* B83D0 80102010 45000003 */  bc1f       .Lrace_80102020
/* B83D4 80102014 E600006C */   swc1      $f0, 0x6C($s0)
/* B83D8 80102018 0804080C */  j          .Lrace_80102030
/* B83DC 8010201C E618006C */   swc1      $f24, 0x6C($s0)
.Lrace_80102020:
/* B83E0 80102020 4616003C */  c.lt.s     $f0, $f22
/* B83E4 80102024 00000000 */  nop
/* B83E8 80102028 45030001 */  bc1tl      .Lrace_80102030
/* B83EC 8010202C E616006C */   swc1      $f22, 0x6C($s0)
.Lrace_80102030:
/* B83F0 80102030 8E020060 */  lw         $v0, 0x60($s0)
/* B83F4 80102034 30420003 */  andi       $v0, $v0, 0x3
/* B83F8 80102038 14400005 */  bnez       $v0, .Lrace_80102050
/* B83FC 8010203C 00000000 */   nop
/* B8400 80102040 8E040000 */  lw         $a0, 0x0($s0)
/* B8404 80102044 8E05006C */  lw         $a1, 0x6C($s0)
/* B8408 80102048 0C03CC4F */  jal        func_race_800F313C
/* B840C 8010204C 24840C70 */   addiu     $a0, $a0, 0xC70
.Lrace_80102050:
/* B8410 80102050 8FBF001C */  lw         $ra, 0x1C($sp)
/* B8414 80102054 8FB00018 */  lw         $s0, 0x18($sp)
/* B8418 80102058 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* B841C 8010205C D7B80030 */  ldc1       $f24, 0x30($sp)
/* B8420 80102060 D7B60028 */  ldc1       $f22, 0x28($sp)
/* B8424 80102064 D7B40020 */  ldc1       $f20, 0x20($sp)
/* B8428 80102068 03E00008 */  jr         $ra
/* B842C 8010206C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_80102070
/* B8430 80102070 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B8434 80102074 AFB00018 */  sw         $s0, 0x18($sp)
/* B8438 80102078 00808021 */  addu       $s0, $a0, $zero
/* B843C 8010207C 26040004 */  addiu      $a0, $s0, 0x4
/* B8440 80102080 27A50010 */  addiu      $a1, $sp, 0x10
/* B8444 80102084 AFBF001C */  sw         $ra, 0x1C($sp)
/* B8448 80102088 F7B80030 */  sdc1       $f24, 0x30($sp)
/* B844C 8010208C F7B60028 */  sdc1       $f22, 0x28($sp)
/* B8450 80102090 F7B40020 */  sdc1       $f20, 0x20($sp)
/* B8454 80102094 0C0409EE */  jal        func_race_801027B8
/* B8458 80102098 24060002 */   addiu     $a2, $zero, 0x2
/* B845C 8010209C 4480A000 */  mtc1       $zero, $f20
/* B8460 801020A0 8E03005C */  lw         $v1, 0x5C($s0)
/* B8464 801020A4 4600A586 */  mov.s      $f22, $f20
/* B8468 801020A8 30620004 */  andi       $v0, $v1, 0x4
/* B846C 801020AC 10400003 */  beqz       $v0, .Lrace_801020BC
/* B8470 801020B0 4600B606 */   mov.s     $f24, $f22
/* B8474 801020B4 3C01800D */  lui        $at, %hi(D_race_800CD5DC)
/* B8478 801020B8 C438D5DC */  lwc1       $f24, %lo(D_race_800CD5DC)($at)
.Lrace_801020BC:
/* B847C 801020BC 30620008 */  andi       $v0, $v1, 0x8
/* B8480 801020C0 50400004 */  beql       $v0, $zero, .Lrace_801020D4
/* B8484 801020C4 4616C500 */   add.s     $f20, $f24, $f22
/* B8488 801020C8 3C01800D */  lui        $at, %hi(D_race_800CD5E0)
/* B848C 801020CC C436D5E0 */  lwc1       $f22, %lo(D_race_800CD5E0)($at)
/* B8490 801020D0 4616C500 */  add.s      $f20, $f24, $f22
.Lrace_801020D4:
/* B8494 801020D4 44800000 */  mtc1       $zero, $f0
/* B8498 801020D8 4614003C */  c.lt.s     $f0, $f20
/* B849C 801020DC 00000000 */  nop
/* B84A0 801020E0 45000005 */  bc1f       .Lrace_801020F8
/* B84A4 801020E4 00000000 */   nop
/* B84A8 801020E8 0C04097F */  jal        func_race_801025FC
/* B84AC 801020EC 02002021 */   addu      $a0, $s0, $zero
/* B84B0 801020F0 08040842 */  j          .Lrace_80102108
/* B84B4 801020F4 00000000 */   nop
.Lrace_801020F8:
/* B84B8 801020F8 4600A03C */  c.lt.s     $f20, $f0
/* B84BC 801020FC 00000000 */  nop
/* B84C0 80102100 45030001 */  bc1tl      .Lrace_80102108
/* B84C4 80102104 AE000068 */   sw        $zero, 0x68($s0)
.Lrace_80102108:
/* B84C8 80102108 44800000 */  mtc1       $zero, $f0
/* B84CC 8010210C 4618003C */  c.lt.s     $f0, $f24
/* B84D0 80102110 00000000 */  nop
/* B84D4 80102114 45000004 */  bc1f       .Lrace_80102128
/* B84D8 80102118 2403FFF7 */   addiu     $v1, $zero, -0x9
/* B84DC 8010211C 8E020060 */  lw         $v0, 0x60($s0)
/* B84E0 80102120 0804084C */  j          .Lrace_80102130
/* B84E4 80102124 34420008 */   ori       $v0, $v0, 0x8
.Lrace_80102128:
/* B84E8 80102128 8E020060 */  lw         $v0, 0x60($s0)
/* B84EC 8010212C 00431024 */  and        $v0, $v0, $v1
.Lrace_80102130:
/* B84F0 80102130 44801000 */  mtc1       $zero, $f2
/* B84F4 80102134 4618103C */  c.lt.s     $f2, $f24
/* B84F8 80102138 00000000 */  nop
/* B84FC 8010213C 45000024 */  bc1f       .Lrace_801021D0
/* B8500 80102140 AE020060 */   sw        $v0, 0x60($s0)
/* B8504 80102144 8E02005C */  lw         $v0, 0x5C($s0)
/* B8508 80102148 30420080 */  andi       $v0, $v0, 0x80
/* B850C 8010214C 10400020 */  beqz       $v0, .Lrace_801021D0
/* B8510 80102150 00000000 */   nop
/* B8514 80102154 8E020060 */  lw         $v0, 0x60($s0)
/* B8518 80102158 30420003 */  andi       $v0, $v0, 0x3
/* B851C 8010215C 14400023 */  bnez       $v0, .Lrace_801021EC
/* B8520 80102160 00000000 */   nop
/* B8524 80102164 C600006C */  lwc1       $f0, 0x6C($s0)
/* B8528 80102168 3C01800D */  lui        $at, %hi(D_race_800CD5E4)
/* B852C 8010216C C434D5E4 */  lwc1       $f20, %lo(D_race_800CD5E4)($at)
/* B8530 80102170 46020032 */  c.eq.s     $f0, $f2
/* B8534 80102174 00000000 */  nop
/* B8538 80102178 45010012 */  bc1t       .Lrace_801021C4
/* B853C 8010217C 00000000 */   nop
/* B8540 80102180 8E040000 */  lw         $a0, 0x0($s0)
/* B8544 80102184 8C820D04 */  lw         $v0, 0xD04($a0)
/* B8548 80102188 30420080 */  andi       $v0, $v0, 0x80
/* B854C 8010218C 14400017 */  bnez       $v0, .Lrace_801021EC
/* B8550 80102190 00000000 */   nop
/* B8554 80102194 4602B03C */  c.lt.s     $f22, $f2
/* B8558 80102198 00000000 */  nop
/* B855C 8010219C 45000005 */  bc1f       .Lrace_801021B4
/* B8560 801021A0 00000000 */   nop
/* B8564 801021A4 0C04356B */  jal        func_race_8010D5AC
/* B8568 801021A8 24050001 */   addiu     $a1, $zero, 0x1
/* B856C 801021AC 0804087B */  j          .Lrace_801021EC
/* B8570 801021B0 00000000 */   nop
.Lrace_801021B4:
/* B8574 801021B4 0C04356B */  jal        func_race_8010D5AC
/* B8578 801021B8 00002821 */   addu      $a1, $zero, $zero
/* B857C 801021BC 0804087B */  j          .Lrace_801021EC
/* B8580 801021C0 00000000 */   nop
.Lrace_801021C4:
/* B8584 801021C4 8E040000 */  lw         $a0, 0x0($s0)
/* B8588 801021C8 08040879 */  j          .Lrace_801021E4
/* B858C 801021CC 00000000 */   nop
.Lrace_801021D0:
/* B8590 801021D0 8E040000 */  lw         $a0, 0x0($s0)
/* B8594 801021D4 8C820D04 */  lw         $v0, 0xD04($a0)
/* B8598 801021D8 30420080 */  andi       $v0, $v0, 0x80
/* B859C 801021DC 10400003 */  beqz       $v0, .Lrace_801021EC
/* B85A0 801021E0 00000000 */   nop
.Lrace_801021E4:
/* B85A4 801021E4 0C0435A8 */  jal        func_race_8010D6A0
/* B85A8 801021E8 00000000 */   nop
.Lrace_801021EC:
/* B85AC 801021EC 8E020000 */  lw         $v0, 0x0($s0)
/* B85B0 801021F0 8C420D04 */  lw         $v0, 0xD04($v0)
/* B85B4 801021F4 30420080 */  andi       $v0, $v0, 0x80
/* B85B8 801021F8 1440000C */  bnez       $v0, .Lrace_8010222C
/* B85BC 801021FC 00000000 */   nop
/* B85C0 80102200 44800000 */  mtc1       $zero, $f0
/* B85C4 80102204 4600B03C */  c.lt.s     $f22, $f0
/* B85C8 80102208 00000000 */  nop
/* B85CC 8010220C 45000007 */  bc1f       .Lrace_8010222C
/* B85D0 80102210 00000000 */   nop
/* B85D4 80102214 4618003C */  c.lt.s     $f0, $f24
/* B85D8 80102218 00000000 */  nop
/* B85DC 8010221C 45000003 */  bc1f       .Lrace_8010222C
/* B85E0 80102220 00000000 */   nop
/* B85E4 80102224 3C01800D */  lui        $at, %hi(D_race_800CD5E8)
/* B85E8 80102228 C434D5E8 */  lwc1       $f20, %lo(D_race_800CD5E8)($at)
.Lrace_8010222C:
/* B85EC 8010222C 8E020060 */  lw         $v0, 0x60($s0)
/* B85F0 80102230 30420003 */  andi       $v0, $v0, 0x3
/* B85F4 80102234 14400005 */  bnez       $v0, .Lrace_8010224C
/* B85F8 80102238 00000000 */   nop
/* B85FC 8010223C 8E040000 */  lw         $a0, 0x0($s0)
/* B8600 80102240 4405A000 */  mfc1       $a1, $f20
/* B8604 80102244 0C03CD26 */  jal        func_race_800F3498
/* B8608 80102248 24840C70 */   addiu     $a0, $a0, 0xC70
.Lrace_8010224C:
/* B860C 8010224C 8FBF001C */  lw         $ra, 0x1C($sp)
/* B8610 80102250 8FB00018 */  lw         $s0, 0x18($sp)
/* B8614 80102254 D7B80030 */  ldc1       $f24, 0x30($sp)
/* B8618 80102258 D7B60028 */  ldc1       $f22, 0x28($sp)
/* B861C 8010225C D7B40020 */  ldc1       $f20, 0x20($sp)
/* B8620 80102260 03E00008 */  jr         $ra
/* B8624 80102264 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_80102268
/* B8628 80102268 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B862C 8010226C AFB00010 */  sw         $s0, 0x10($sp)
/* B8630 80102270 00808021 */  addu       $s0, $a0, $zero
/* B8634 80102274 AFBF0014 */  sw         $ra, 0x14($sp)
/* B8638 80102278 8E030064 */  lw         $v1, 0x64($s0)
/* B863C 8010227C 0065102B */  sltu       $v0, $v1, $a1
/* B8640 80102280 10400003 */  beqz       $v0, .Lrace_80102290
/* B8644 80102284 00651023 */   subu      $v0, $v1, $a1
/* B8648 80102288 080408A5 */  j          .Lrace_80102294
/* B864C 8010228C AE000064 */   sw        $zero, 0x64($s0)
.Lrace_80102290:
/* B8650 80102290 AE020064 */  sw         $v0, 0x64($s0)
.Lrace_80102294:
/* B8654 80102294 8E020068 */  lw         $v0, 0x68($s0)
/* B8658 80102298 02002021 */  addu       $a0, $s0, $zero
/* B865C 8010229C 00451021 */  addu       $v0, $v0, $a1
/* B8660 801022A0 0C040757 */  jal        func_race_80101D5C
/* B8664 801022A4 AE020068 */   sw        $v0, 0x68($s0)
/* B8668 801022A8 0C04081C */  jal        func_race_80102070
/* B866C 801022AC 02002021 */   addu      $a0, $s0, $zero
/* B8670 801022B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8674 801022B4 8FB00010 */  lw         $s0, 0x10($sp)
/* B8678 801022B8 03E00008 */  jr         $ra
/* B867C 801022BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801022C0
/* B8680 801022C0 10A00005 */  beqz       $a1, .Lrace_801022D8
/* B8684 801022C4 2403FFFE */   addiu     $v1, $zero, -0x2
/* B8688 801022C8 8C82005C */  lw         $v0, 0x5C($a0)
/* B868C 801022CC 34420001 */  ori        $v0, $v0, 0x1
/* B8690 801022D0 03E00008 */  jr         $ra
/* B8694 801022D4 AC82005C */   sw        $v0, 0x5C($a0)
.Lrace_801022D8:
/* B8698 801022D8 8C82005C */  lw         $v0, 0x5C($a0)
/* B869C 801022DC 00431024 */  and        $v0, $v0, $v1
/* B86A0 801022E0 03E00008 */  jr         $ra
/* B86A4 801022E4 AC82005C */   sw        $v0, 0x5C($a0)

glabel func_race_801022E8
/* B86A8 801022E8 10A00005 */  beqz       $a1, .Lrace_80102300
/* B86AC 801022EC 2403FFFD */   addiu     $v1, $zero, -0x3
/* B86B0 801022F0 8C82005C */  lw         $v0, 0x5C($a0)
/* B86B4 801022F4 34420002 */  ori        $v0, $v0, 0x2
/* B86B8 801022F8 03E00008 */  jr         $ra
/* B86BC 801022FC AC82005C */   sw        $v0, 0x5C($a0)
.Lrace_80102300:
/* B86C0 80102300 8C82005C */  lw         $v0, 0x5C($a0)
/* B86C4 80102304 00431024 */  and        $v0, $v0, $v1
/* B86C8 80102308 03E00008 */  jr         $ra
/* B86CC 8010230C AC82005C */   sw        $v0, 0x5C($a0)

glabel func_race_80102310
/* B86D0 80102310 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B86D4 80102314 10A00007 */  beqz       $a1, .Lrace_80102334
/* B86D8 80102318 AFBF0010 */   sw        $ra, 0x10($sp)
/* B86DC 8010231C 8C82005C */  lw         $v0, 0x5C($a0)
/* B86E0 80102320 34420004 */  ori        $v0, $v0, 0x4
/* B86E4 80102324 0C04097F */  jal        func_race_801025FC
/* B86E8 80102328 AC82005C */   sw        $v0, 0x5C($a0)
/* B86EC 8010232C 080408D2 */  j          .Lrace_80102348
/* B86F0 80102330 00000000 */   nop
.Lrace_80102334:
/* B86F4 80102334 8C82005C */  lw         $v0, 0x5C($a0)
/* B86F8 80102338 2403FFFB */  addiu      $v1, $zero, -0x5
/* B86FC 8010233C AC800068 */  sw         $zero, 0x68($a0)
/* B8700 80102340 00431024 */  and        $v0, $v0, $v1
/* B8704 80102344 AC82005C */  sw         $v0, 0x5C($a0)
.Lrace_80102348:
/* B8708 80102348 8FBF0010 */  lw         $ra, 0x10($sp)
/* B870C 8010234C 03E00008 */  jr         $ra
/* B8710 80102350 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80102354
/* B8714 80102354 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8718 80102358 AFB00010 */  sw         $s0, 0x10($sp)
/* B871C 8010235C 00808021 */  addu       $s0, $a0, $zero
/* B8720 80102360 10A0000F */  beqz       $a1, .Lrace_801023A0
/* B8724 80102364 AFBF0014 */   sw        $ra, 0x14($sp)
/* B8728 80102368 8E020000 */  lw         $v0, 0x0($s0)
/* B872C 8010236C 244303FC */  addiu      $v1, $v0, 0x3FC
/* B8730 80102370 8C6206AC */  lw         $v0, 0x6AC($v1)
/* B8734 80102374 30420002 */  andi       $v0, $v0, 0x2
/* B8738 80102378 10400006 */  beqz       $v0, .Lrace_80102394
/* B873C 8010237C 00000000 */   nop
/* B8740 80102380 8C6200CC */  lw         $v0, 0xCC($v1)
/* B8744 80102384 84440058 */  lh         $a0, 0x58($v0)
/* B8748 80102388 8C42005C */  lw         $v0, 0x5C($v0)
/* B874C 8010238C 0040F809 */  jalr       $v0
/* B8750 80102390 00642021 */   addu      $a0, $v1, $a0
.Lrace_80102394:
/* B8754 80102394 8E02005C */  lw         $v0, 0x5C($s0)
/* B8758 80102398 080408EB */  j          .Lrace_801023AC
/* B875C 8010239C 34420008 */   ori       $v0, $v0, 0x8
.Lrace_801023A0:
/* B8760 801023A0 8E02005C */  lw         $v0, 0x5C($s0)
/* B8764 801023A4 2403FFF7 */  addiu      $v1, $zero, -0x9
/* B8768 801023A8 00431024 */  and        $v0, $v0, $v1
.Lrace_801023AC:
/* B876C 801023AC AE02005C */  sw         $v0, 0x5C($s0)
/* B8770 801023B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8774 801023B4 8FB00010 */  lw         $s0, 0x10($sp)
/* B8778 801023B8 03E00008 */  jr         $ra
/* B877C 801023BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801023C0
/* B8780 801023C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8784 801023C4 00803021 */  addu       $a2, $a0, $zero
/* B8788 801023C8 AFBF0010 */  sw         $ra, 0x10($sp)
/* B878C 801023CC 8CC20060 */  lw         $v0, 0x60($a2)
/* B8790 801023D0 30420003 */  andi       $v0, $v0, 0x3
/* B8794 801023D4 1440000D */  bnez       $v0, .Lrace_8010240C
/* B8798 801023D8 00000000 */   nop
/* B879C 801023DC 10A00008 */  beqz       $a1, .Lrace_80102400
/* B87A0 801023E0 2403FFEF */   addiu     $v1, $zero, -0x11
/* B87A4 801023E4 8CC2005C */  lw         $v0, 0x5C($a2)
/* B87A8 801023E8 8CC40000 */  lw         $a0, 0x0($a2)
/* B87AC 801023EC 34420010 */  ori        $v0, $v0, 0x10
/* B87B0 801023F0 0C043347 */  jal        func_race_8010CD1C
/* B87B4 801023F4 ACC2005C */   sw        $v0, 0x5C($a2)
/* B87B8 801023F8 08040903 */  j          .Lrace_8010240C
/* B87BC 801023FC 00000000 */   nop
.Lrace_80102400:
/* B87C0 80102400 8CC2005C */  lw         $v0, 0x5C($a2)
/* B87C4 80102404 00431024 */  and        $v0, $v0, $v1
/* B87C8 80102408 ACC2005C */  sw         $v0, 0x5C($a2)
.Lrace_8010240C:
/* B87CC 8010240C 8FBF0010 */  lw         $ra, 0x10($sp)
/* B87D0 80102410 03E00008 */  jr         $ra
/* B87D4 80102414 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80102418
/* B87D8 80102418 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B87DC 8010241C AFB00010 */  sw         $s0, 0x10($sp)
/* B87E0 80102420 00808021 */  addu       $s0, $a0, $zero
/* B87E4 80102424 10A00007 */  beqz       $a1, .Lrace_80102444
/* B87E8 80102428 AFBF0014 */   sw        $ra, 0x14($sp)
/* B87EC 8010242C 8E040000 */  lw         $a0, 0x0($s0)
/* B87F0 80102430 0C04394C */  jal        func_race_8010E530
/* B87F4 80102434 00000000 */   nop
/* B87F8 80102438 8E02005C */  lw         $v0, 0x5C($s0)
/* B87FC 8010243C 08040914 */  j          .Lrace_80102450
/* B8800 80102440 34420020 */   ori       $v0, $v0, 0x20
.Lrace_80102444:
/* B8804 80102444 8E02005C */  lw         $v0, 0x5C($s0)
/* B8808 80102448 2403FFDF */  addiu      $v1, $zero, -0x21
/* B880C 8010244C 00431024 */  and        $v0, $v0, $v1
.Lrace_80102450:
/* B8810 80102450 AE02005C */  sw         $v0, 0x5C($s0)
/* B8814 80102454 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8818 80102458 8FB00010 */  lw         $s0, 0x10($sp)
/* B881C 8010245C 03E00008 */  jr         $ra
/* B8820 80102460 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80102464
/* B8824 80102464 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8828 80102468 AFB00010 */  sw         $s0, 0x10($sp)
/* B882C 8010246C 00808021 */  addu       $s0, $a0, $zero
/* B8830 80102470 10A00007 */  beqz       $a1, .Lrace_80102490
/* B8834 80102474 AFBF0014 */   sw        $ra, 0x14($sp)
/* B8838 80102478 8E040000 */  lw         $a0, 0x0($s0)
/* B883C 8010247C 0C043839 */  jal        func_race_8010E0E4
/* B8840 80102480 00000000 */   nop
/* B8844 80102484 8E02005C */  lw         $v0, 0x5C($s0)
/* B8848 80102488 08040927 */  j          .Lrace_8010249C
/* B884C 8010248C 34420040 */   ori       $v0, $v0, 0x40
.Lrace_80102490:
/* B8850 80102490 8E02005C */  lw         $v0, 0x5C($s0)
/* B8854 80102494 2403FFBF */  addiu      $v1, $zero, -0x41
/* B8858 80102498 00431024 */  and        $v0, $v0, $v1
.Lrace_8010249C:
/* B885C 8010249C AE02005C */  sw         $v0, 0x5C($s0)
/* B8860 801024A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8864 801024A4 8FB00010 */  lw         $s0, 0x10($sp)
/* B8868 801024A8 03E00008 */  jr         $ra
/* B886C 801024AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801024B0
/* B8870 801024B0 10A00005 */  beqz       $a1, .Lrace_801024C8
/* B8874 801024B4 2403FF7F */   addiu     $v1, $zero, -0x81
/* B8878 801024B8 8C82005C */  lw         $v0, 0x5C($a0)
/* B887C 801024BC 34420080 */  ori        $v0, $v0, 0x80
/* B8880 801024C0 03E00008 */  jr         $ra
/* B8884 801024C4 AC82005C */   sw        $v0, 0x5C($a0)
.Lrace_801024C8:
/* B8888 801024C8 8C82005C */  lw         $v0, 0x5C($a0)
/* B888C 801024CC 00431024 */  and        $v0, $v0, $v1
/* B8890 801024D0 03E00008 */  jr         $ra
/* B8894 801024D4 AC82005C */   sw        $v0, 0x5C($a0)

glabel func_race_801024D8
/* B8898 801024D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B889C 801024DC AFB00010 */  sw         $s0, 0x10($sp)
/* B88A0 801024E0 00808021 */  addu       $s0, $a0, $zero
/* B88A4 801024E4 10A00007 */  beqz       $a1, .Lrace_80102504
/* B88A8 801024E8 AFBF0014 */   sw        $ra, 0x14($sp)
/* B88AC 801024EC 8E040000 */  lw         $a0, 0x0($s0)
/* B88B0 801024F0 0C04396D */  jal        func_race_8010E5B4
/* B88B4 801024F4 00000000 */   nop
/* B88B8 801024F8 8E02005C */  lw         $v0, 0x5C($s0)
/* B88BC 801024FC 08040947 */  j          .Lrace_8010251C
/* B88C0 80102500 34420100 */   ori       $v0, $v0, 0x100
.Lrace_80102504:
/* B88C4 80102504 8E040000 */  lw         $a0, 0x0($s0)
/* B88C8 80102508 0C043971 */  jal        func_race_8010E5C4
/* B88CC 8010250C 00000000 */   nop
/* B88D0 80102510 8E02005C */  lw         $v0, 0x5C($s0)
/* B88D4 80102514 2403FEFF */  addiu      $v1, $zero, -0x101
/* B88D8 80102518 00431024 */  and        $v0, $v0, $v1
.Lrace_8010251C:
/* B88DC 8010251C AE02005C */  sw         $v0, 0x5C($s0)
/* B88E0 80102520 8FBF0014 */  lw         $ra, 0x14($sp)
/* B88E4 80102524 8FB00010 */  lw         $s0, 0x10($sp)
/* B88E8 80102528 03E00008 */  jr         $ra
/* B88EC 8010252C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80102530
/* B88F0 80102530 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B88F4 80102534 AFB00010 */  sw         $s0, 0x10($sp)
/* B88F8 80102538 00808021 */  addu       $s0, $a0, $zero
/* B88FC 8010253C 2402FFFE */  addiu      $v0, $zero, -0x2
/* B8900 80102540 AFBF0014 */  sw         $ra, 0x14($sp)
/* B8904 80102544 8E040060 */  lw         $a0, 0x60($s0)
/* B8908 80102548 8E030064 */  lw         $v1, 0x64($s0)
/* B890C 8010254C 00821024 */  and        $v0, $a0, $v0
/* B8910 80102550 1060000E */  beqz       $v1, .Lrace_8010258C
/* B8914 80102554 AE020060 */   sw        $v0, 0x60($s0)
/* B8918 80102558 2C62003C */  sltiu      $v0, $v1, 0x3C
/* B891C 8010255C 14400005 */  bnez       $v0, .Lrace_80102574
/* B8920 80102560 00003021 */   addu      $a2, $zero, $zero
/* B8924 80102564 8E050000 */  lw         $a1, 0x0($s0)
/* B8928 80102568 8CA40008 */  lw         $a0, 0x8($a1)
/* B892C 8010256C 0804095F */  j          .Lrace_8010257C
/* B8930 80102570 24060001 */   addiu     $a2, $zero, 0x1
.Lrace_80102574:
/* B8934 80102574 8E050000 */  lw         $a1, 0x0($s0)
/* B8938 80102578 8CA40008 */  lw         $a0, 0x8($a1)
.Lrace_8010257C:
/* B893C 8010257C 0C04B209 */  jal        func_race_8012C824
/* B8940 80102580 00000000 */   nop
/* B8944 80102584 08040967 */  j          .Lrace_8010259C
/* B8948 80102588 AE000064 */   sw        $zero, 0x64($s0)
.Lrace_8010258C:
/* B894C 8010258C 30820008 */  andi       $v0, $a0, 0x8
/* B8950 80102590 14400002 */  bnez       $v0, .Lrace_8010259C
/* B8954 80102594 24020064 */   addiu     $v0, $zero, 0x64
/* B8958 80102598 AE020064 */  sw         $v0, 0x64($s0)
.Lrace_8010259C:
/* B895C 8010259C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8960 801025A0 8FB00010 */  lw         $s0, 0x10($sp)
/* B8964 801025A4 03E00008 */  jr         $ra
/* B8968 801025A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801025AC
/* B896C 801025AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8970 801025B0 AFB00010 */  sw         $s0, 0x10($sp)
/* B8974 801025B4 00808021 */  addu       $s0, $a0, $zero
/* B8978 801025B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* B897C 801025BC 8E020060 */  lw         $v0, 0x60($s0)
/* B8980 801025C0 8E040000 */  lw         $a0, 0x0($s0)
/* B8984 801025C4 34420002 */  ori        $v0, $v0, 0x2
/* B8988 801025C8 0C04383F */  jal        func_race_8010E0FC
/* B898C 801025CC AE020060 */   sw        $v0, 0x60($s0)
/* B8990 801025D0 8E040000 */  lw         $a0, 0x0($s0)
/* B8994 801025D4 8C820D04 */  lw         $v0, 0xD04($a0)
/* B8998 801025D8 30420080 */  andi       $v0, $v0, 0x80
/* B899C 801025DC 10400003 */  beqz       $v0, .Lrace_801025EC
/* B89A0 801025E0 00000000 */   nop
/* B89A4 801025E4 0C0435A8 */  jal        func_race_8010D6A0
/* B89A8 801025E8 00000000 */   nop
.Lrace_801025EC:
/* B89AC 801025EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B89B0 801025F0 8FB00010 */  lw         $s0, 0x10($sp)
/* B89B4 801025F4 03E00008 */  jr         $ra
/* B89B8 801025F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801025FC
/* B89BC 801025FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B89C0 80102600 AFB00010 */  sw         $s0, 0x10($sp)
/* B89C4 80102604 00808021 */  addu       $s0, $a0, $zero
/* B89C8 80102608 AFBF0014 */  sw         $ra, 0x14($sp)
/* B89CC 8010260C 8E040060 */  lw         $a0, 0x60($s0)
/* B89D0 80102610 30820001 */  andi       $v0, $a0, 0x1
/* B89D4 80102614 10400008 */  beqz       $v0, .Lrace_80102638
/* B89D8 80102618 00000000 */   nop
/* B89DC 8010261C 8E020068 */  lw         $v0, 0x68($s0)
/* B89E0 80102620 2C4207D1 */  sltiu      $v0, $v0, 0x7D1
/* B89E4 80102624 14400017 */  bnez       $v0, .Lrace_80102684
/* B89E8 80102628 24020064 */   addiu     $v0, $zero, 0x64
/* B89EC 8010262C AE020064 */  sw         $v0, 0x64($s0)
/* B89F0 80102630 080409A1 */  j          .Lrace_80102684
/* B89F4 80102634 AE000068 */   sw        $zero, 0x68($s0)
.Lrace_80102638:
/* B89F8 80102638 8E030064 */  lw         $v1, 0x64($s0)
/* B89FC 8010263C 10600011 */  beqz       $v1, .Lrace_80102684
/* B8A00 80102640 30820003 */   andi      $v0, $a0, 0x3
/* B8A04 80102644 1440000F */  bnez       $v0, .Lrace_80102684
/* B8A08 80102648 2C62003C */   sltiu     $v0, $v1, 0x3C
/* B8A0C 8010264C 14400005 */  bnez       $v0, .Lrace_80102664
/* B8A10 80102650 00003021 */   addu      $a2, $zero, $zero
/* B8A14 80102654 8E050000 */  lw         $a1, 0x0($s0)
/* B8A18 80102658 8CA40008 */  lw         $a0, 0x8($a1)
/* B8A1C 8010265C 0804099B */  j          .Lrace_8010266C
/* B8A20 80102660 24060001 */   addiu     $a2, $zero, 0x1
.Lrace_80102664:
/* B8A24 80102664 8E050000 */  lw         $a1, 0x0($s0)
/* B8A28 80102668 8CA40008 */  lw         $a0, 0x8($a1)
.Lrace_8010266C:
/* B8A2C 8010266C 0C04B209 */  jal        func_race_8012C824
/* B8A30 80102670 00000000 */   nop
/* B8A34 80102674 8E040000 */  lw         $a0, 0x0($s0)
/* B8A38 80102678 0C044C7E */  jal        func_race_801131F8
/* B8A3C 8010267C 24840018 */   addiu     $a0, $a0, 0x18
/* B8A40 80102680 AE000064 */  sw         $zero, 0x64($s0)
.Lrace_80102684:
/* B8A44 80102684 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8A48 80102688 8FB00010 */  lw         $s0, 0x10($sp)
/* B8A4C 8010268C 03E00008 */  jr         $ra
/* B8A50 80102690 27BD0018 */   addiu     $sp, $sp, 0x18
