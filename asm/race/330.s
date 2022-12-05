.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800EB720
/* A1AE0 800EB720 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A1AE4 800EB724 AFB00010 */  sw         $s0, 0x10($sp)
/* A1AE8 800EB728 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1AEC 800EB72C 0C03A1A4 */  jal        func_race_800E8690
/* A1AF0 800EB730 00808021 */   addu      $s0, $a0, $zero
/* A1AF4 800EB734 02001021 */  addu       $v0, $s0, $zero
/* A1AF8 800EB738 3C03800D */  lui        $v1, %hi(D_race_800CC208)
/* A1AFC 800EB73C 2463C208 */  addiu      $v1, $v1, %lo(D_race_800CC208)
/* A1B00 800EB740 AC430000 */  sw         $v1, 0x0($v0)
/* A1B04 800EB744 AC400010 */  sw         $zero, 0x10($v0)
/* A1B08 800EB748 AC400014 */  sw         $zero, 0x14($v0)
/* A1B0C 800EB74C AC400018 */  sw         $zero, 0x18($v0)
/* A1B10 800EB750 AC40001C */  sw         $zero, 0x1C($v0)
/* A1B14 800EB754 8FBF0014 */  lw         $ra, 0x14($sp)
/* A1B18 800EB758 8FB00010 */  lw         $s0, 0x10($sp)
/* A1B1C 800EB75C 03E00008 */  jr         $ra
/* A1B20 800EB760 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EB764
/* A1B24 800EB764 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A1B28 800EB768 AFB00010 */  sw         $s0, 0x10($sp)
/* A1B2C 800EB76C 00808021 */  addu       $s0, $a0, $zero
/* A1B30 800EB770 AFB10014 */  sw         $s1, 0x14($sp)
/* A1B34 800EB774 00A08821 */  addu       $s1, $a1, $zero
/* A1B38 800EB778 3C02800D */  lui        $v0, %hi(D_race_800CC208)
/* A1B3C 800EB77C 2442C208 */  addiu      $v0, $v0, %lo(D_race_800CC208)
/* A1B40 800EB780 AFBF0018 */  sw         $ra, 0x18($sp)
/* A1B44 800EB784 0C03AE1D */  jal        func_race_800EB874
/* A1B48 800EB788 AE020000 */   sw        $v0, 0x0($s0)
/* A1B4C 800EB78C 02002021 */  addu       $a0, $s0, $zero
/* A1B50 800EB790 0C03A1AC */  jal        func_race_800E86B0
/* A1B54 800EB794 02202821 */   addu      $a1, $s1, $zero
/* A1B58 800EB798 8FBF0018 */  lw         $ra, 0x18($sp)
/* A1B5C 800EB79C 8FB10014 */  lw         $s1, 0x14($sp)
/* A1B60 800EB7A0 8FB00010 */  lw         $s0, 0x10($sp)
/* A1B64 800EB7A4 03E00008 */  jr         $ra
/* A1B68 800EB7A8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EB7AC
/* A1B6C 800EB7AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A1B70 800EB7B0 AFB00010 */  sw         $s0, 0x10($sp)
/* A1B74 800EB7B4 00808021 */  addu       $s0, $a0, $zero
/* A1B78 800EB7B8 AFBF0018 */  sw         $ra, 0x18($sp)
/* A1B7C 800EB7BC AFB10014 */  sw         $s1, 0x14($sp)
/* A1B80 800EB7C0 8E02000C */  lw         $v0, 0xC($s0)
/* A1B84 800EB7C4 10400003 */  beqz       $v0, .Lrace_800EB7D4
/* A1B88 800EB7C8 00A08821 */   addu      $s1, $a1, $zero
/* A1B8C 800EB7CC 0C03AE1D */  jal        func_race_800EB874
/* A1B90 800EB7D0 00000000 */   nop
.Lrace_800EB7D4:
/* A1B94 800EB7D4 2402000A */  addiu      $v0, $zero, 0xA
/* A1B98 800EB7D8 AE020008 */  sw         $v0, 0x8($s0)
/* A1B9C 800EB7DC 8E22000C */  lw         $v0, 0xC($s1)
/* A1BA0 800EB7E0 AE020004 */  sw         $v0, 0x4($s0)
/* A1BA4 800EB7E4 8E22001C */  lw         $v0, 0x1C($s1)
/* A1BA8 800EB7E8 AE020014 */  sw         $v0, 0x14($s0)
/* A1BAC 800EB7EC 3C02800D */  lui        $v0, %hi(D_race_800CC1F0)
/* A1BB0 800EB7F0 8E230010 */  lw         $v1, 0x10($s1)
/* A1BB4 800EB7F4 2445C1F0 */  addiu      $a1, $v0, %lo(D_race_800CC1F0)
/* A1BB8 800EB7F8 8C6200BC */  lw         $v0, 0xBC($v1)
/* A1BBC 800EB7FC 14400003 */  bnez       $v0, .Lrace_800EB80C
/* A1BC0 800EB800 246400BC */   addiu     $a0, $v1, 0xBC
/* A1BC4 800EB804 0803AE05 */  j          .Lrace_800EB814
/* A1BC8 800EB808 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EB80C:
/* A1BCC 800EB80C 0C016427 */  jal        func_8005909C
/* A1BD0 800EB810 00000000 */   nop
.Lrace_800EB814:
/* A1BD4 800EB814 AE020010 */  sw         $v0, 0x10($s0)
/* A1BD8 800EB818 8E24002C */  lw         $a0, 0x2C($s1)
/* A1BDC 800EB81C 3C02800D */  lui        $v0, %hi(D_race_800CC1F8)
/* A1BE0 800EB820 8C830000 */  lw         $v1, 0x0($a0)
/* A1BE4 800EB824 14600003 */  bnez       $v1, .Lrace_800EB834
/* A1BE8 800EB828 2445C1F8 */   addiu     $a1, $v0, %lo(D_race_800CC1F8)
/* A1BEC 800EB82C 0803AE0F */  j          .Lrace_800EB83C
/* A1BF0 800EB830 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EB834:
/* A1BF4 800EB834 0C016427 */  jal        func_8005909C
/* A1BF8 800EB838 00000000 */   nop
.Lrace_800EB83C:
/* A1BFC 800EB83C 8E030010 */  lw         $v1, 0x10($s0)
/* A1C00 800EB840 3C04FFFE */  lui        $a0, (0xFFFEFFFF >> 16)
/* A1C04 800EB844 AE020018 */  sw         $v0, 0x18($s0)
/* A1C08 800EB848 8C62005C */  lw         $v0, 0x5C($v1)
/* A1C0C 800EB84C 3484FFFF */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
/* A1C10 800EB850 00441024 */  and        $v0, $v0, $a0
/* A1C14 800EB854 AC62005C */  sw         $v0, 0x5C($v1)
/* A1C18 800EB858 24020001 */  addiu      $v0, $zero, 0x1
/* A1C1C 800EB85C AE02000C */  sw         $v0, 0xC($s0)
/* A1C20 800EB860 8FBF0018 */  lw         $ra, 0x18($sp)
/* A1C24 800EB864 8FB10014 */  lw         $s1, 0x14($sp)
/* A1C28 800EB868 8FB00010 */  lw         $s0, 0x10($sp)
/* A1C2C 800EB86C 03E00008 */  jr         $ra
/* A1C30 800EB870 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EB874
/* A1C34 800EB874 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A1C38 800EB878 AFB00010 */  sw         $s0, 0x10($sp)
/* A1C3C 800EB87C 00808021 */  addu       $s0, $a0, $zero
/* A1C40 800EB880 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1C44 800EB884 8E020000 */  lw         $v0, 0x0($s0)
/* A1C48 800EB888 00002821 */  addu       $a1, $zero, $zero
/* A1C4C 800EB88C 84440018 */  lh         $a0, 0x18($v0)
/* A1C50 800EB890 8C42001C */  lw         $v0, 0x1C($v0)
/* A1C54 800EB894 0040F809 */  jalr       $v0
/* A1C58 800EB898 02042021 */   addu      $a0, $s0, $a0
/* A1C5C 800EB89C 02002021 */  addu       $a0, $s0, $zero
/* A1C60 800EB8A0 AC800010 */  sw         $zero, 0x10($a0)
/* A1C64 800EB8A4 AC800014 */  sw         $zero, 0x14($a0)
/* A1C68 800EB8A8 AC800018 */  sw         $zero, 0x18($a0)
/* A1C6C 800EB8AC 0C03A1C0 */  jal        func_race_800E8700
/* A1C70 800EB8B0 AC80001C */   sw        $zero, 0x1C($a0)
/* A1C74 800EB8B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A1C78 800EB8B8 8FB00010 */  lw         $s0, 0x10($sp)
/* A1C7C 800EB8BC 03E00008 */  jr         $ra
/* A1C80 800EB8C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EB8C4
/* A1C84 800EB8C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A1C88 800EB8C8 AFB00010 */  sw         $s0, 0x10($sp)
/* A1C8C 800EB8CC 00808021 */  addu       $s0, $a0, $zero
/* A1C90 800EB8D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1C94 800EB8D4 8E040010 */  lw         $a0, 0x10($s0)
/* A1C98 800EB8D8 8C82005C */  lw         $v0, 0x5C($a0)
/* A1C9C 800EB8DC 3C030001 */  lui        $v1, (0x10000 >> 16)
/* A1CA0 800EB8E0 00431025 */  or         $v0, $v0, $v1
/* A1CA4 800EB8E4 AC82005C */  sw         $v0, 0x5C($a0)
/* A1CA8 800EB8E8 8E040010 */  lw         $a0, 0x10($s0)
/* A1CAC 800EB8EC 0C01971D */  jal        func_80065C74
/* A1CB0 800EB8F0 00002821 */   addu      $a1, $zero, $zero
/* A1CB4 800EB8F4 8E040010 */  lw         $a0, 0x10($s0)
/* A1CB8 800EB8F8 3C03FFFB */  lui        $v1, (0xFFFBFFFF >> 16)
/* A1CBC 800EB8FC 8C82005C */  lw         $v0, 0x5C($a0)
/* A1CC0 800EB900 3463FFFF */  ori        $v1, $v1, (0xFFFBFFFF & 0xFFFF)
/* A1CC4 800EB904 00431024 */  and        $v0, $v0, $v1
/* A1CC8 800EB908 AC82005C */  sw         $v0, 0x5C($a0)
/* A1CCC 800EB90C 24020002 */  addiu      $v0, $zero, 0x2
/* A1CD0 800EB910 AE00001C */  sw         $zero, 0x1C($s0)
/* A1CD4 800EB914 AE02000C */  sw         $v0, 0xC($s0)
/* A1CD8 800EB918 8FBF0014 */  lw         $ra, 0x14($sp)
/* A1CDC 800EB91C 8FB00010 */  lw         $s0, 0x10($sp)
/* A1CE0 800EB920 03E00008 */  jr         $ra
/* A1CE4 800EB924 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EB928
/* A1CE8 800EB928 03E00008 */  jr         $ra
/* A1CEC 800EB92C 00000000 */   nop

glabel func_race_800EB930
/* A1CF0 800EB930 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A1CF4 800EB934 AFB00010 */  sw         $s0, 0x10($sp)
/* A1CF8 800EB938 00808021 */  addu       $s0, $a0, $zero
/* A1CFC 800EB93C AFBF0018 */  sw         $ra, 0x18($sp)
/* A1D00 800EB940 AFB10014 */  sw         $s1, 0x14($sp)
/* A1D04 800EB944 8E02000C */  lw         $v0, 0xC($s0)
/* A1D08 800EB948 24110001 */  addiu      $s1, $zero, 0x1
/* A1D0C 800EB94C 1051001F */  beq        $v0, $s1, .Lrace_800EB9CC
/* A1D10 800EB950 00000000 */   nop
/* A1D14 800EB954 0C03A1C4 */  jal        func_race_800E8710
/* A1D18 800EB958 00000000 */   nop
/* A1D1C 800EB95C 8E02001C */  lw         $v0, 0x1C($s0)
/* A1D20 800EB960 1440001A */  bnez       $v0, .Lrace_800EB9CC
/* A1D24 800EB964 00000000 */   nop
/* A1D28 800EB968 8E020010 */  lw         $v0, 0x10($s0)
/* A1D2C 800EB96C 3C01800D */  lui        $at, %hi(D_race_800CC200)
/* A1D30 800EB970 C420C200 */  lwc1       $f0, %lo(D_race_800CC200)($at)
/* A1D34 800EB974 C44200B4 */  lwc1       $f2, 0xB4($v0)
/* A1D38 800EB978 4602003C */  c.lt.s     $f0, $f2
/* A1D3C 800EB97C 00000000 */  nop
/* A1D40 800EB980 45000012 */  bc1f       .Lrace_800EB9CC
/* A1D44 800EB984 3C04FFFE */   lui       $a0, (0xFFFEFFFF >> 16)
/* A1D48 800EB988 3484FFFF */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
/* A1D4C 800EB98C 8E030018 */  lw         $v1, 0x18($s0)
/* A1D50 800EB990 3C06FFFD */  lui        $a2, (0xFFFDFFFF >> 16)
/* A1D54 800EB994 8C620008 */  lw         $v0, 0x8($v1)
/* A1D58 800EB998 34C6FFFF */  ori        $a2, $a2, (0xFFFDFFFF & 0xFFFF)
/* A1D5C 800EB99C 00441024 */  and        $v0, $v0, $a0
/* A1D60 800EB9A0 AC620008 */  sw         $v0, 0x8($v1)
/* A1D64 800EB9A4 8E030018 */  lw         $v1, 0x18($s0)
/* A1D68 800EB9A8 24050007 */  addiu      $a1, $zero, 0x7
/* A1D6C 800EB9AC 8C620008 */  lw         $v0, 0x8($v1)
/* A1D70 800EB9B0 00003821 */  addu       $a3, $zero, $zero
/* A1D74 800EB9B4 00461024 */  and        $v0, $v0, $a2
/* A1D78 800EB9B8 AC620008 */  sw         $v0, 0x8($v1)
/* A1D7C 800EB9BC 8E040004 */  lw         $a0, 0x4($s0)
/* A1D80 800EB9C0 0C036D74 */  jal        func_race_800DB5D0
/* A1D84 800EB9C4 00A03021 */   addu      $a2, $a1, $zero
/* A1D88 800EB9C8 AE11001C */  sw         $s1, 0x1C($s0)
.Lrace_800EB9CC:
/* A1D8C 800EB9CC 8FBF0018 */  lw         $ra, 0x18($sp)
/* A1D90 800EB9D0 8FB10014 */  lw         $s1, 0x14($sp)
/* A1D94 800EB9D4 8FB00010 */  lw         $s0, 0x10($sp)
/* A1D98 800EB9D8 03E00008 */  jr         $ra
/* A1D9C 800EB9DC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EB9E0
/* A1DA0 800EB9E0 03E00008 */  jr         $ra
/* A1DA4 800EB9E4 00000000 */   nop

glabel func_race_800EB9E8
/* A1DA8 800EB9E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A1DAC 800EB9EC AFB00010 */  sw         $s0, 0x10($sp)
/* A1DB0 800EB9F0 00808021 */  addu       $s0, $a0, $zero
/* A1DB4 800EB9F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1DB8 800EB9F8 8E030018 */  lw         $v1, 0x18($s0)
/* A1DBC 800EB9FC 24020001 */  addiu      $v0, $zero, 0x1
/* A1DC0 800EBA00 AE02000C */  sw         $v0, 0xC($s0)
/* A1DC4 800EBA04 AE00001C */  sw         $zero, 0x1C($s0)
/* A1DC8 800EBA08 8C620008 */  lw         $v0, 0x8($v1)
/* A1DCC 800EBA0C 3C060001 */  lui        $a2, (0x10000 >> 16)
/* A1DD0 800EBA10 00461025 */  or         $v0, $v0, $a2
/* A1DD4 800EBA14 AC620008 */  sw         $v0, 0x8($v1)
/* A1DD8 800EBA18 8E040018 */  lw         $a0, 0x18($s0)
/* A1DDC 800EBA1C 8C820008 */  lw         $v0, 0x8($a0)
/* A1DE0 800EBA20 3C030002 */  lui        $v1, (0x20000 >> 16)
/* A1DE4 800EBA24 00431025 */  or         $v0, $v0, $v1
/* A1DE8 800EBA28 AC820008 */  sw         $v0, 0x8($a0)
/* A1DEC 800EBA2C 8E030010 */  lw         $v1, 0x10($s0)
/* A1DF0 800EBA30 8C62005C */  lw         $v0, 0x5C($v1)
/* A1DF4 800EBA34 00002821 */  addu       $a1, $zero, $zero
/* A1DF8 800EBA38 00461025 */  or         $v0, $v0, $a2
/* A1DFC 800EBA3C AC62005C */  sw         $v0, 0x5C($v1)
/* A1E00 800EBA40 8E040010 */  lw         $a0, 0x10($s0)
/* A1E04 800EBA44 0C019724 */  jal        func_80065C90
/* A1E08 800EBA48 00A03021 */   addu      $a2, $a1, $zero
/* A1E0C 800EBA4C 8E030010 */  lw         $v1, 0x10($s0)
/* A1E10 800EBA50 8C620024 */  lw         $v0, 0x24($v1)
/* A1E14 800EBA54 00002821 */  addu       $a1, $zero, $zero
/* A1E18 800EBA58 844400C0 */  lh         $a0, 0xC0($v0)
/* A1E1C 800EBA5C 8C4200C4 */  lw         $v0, 0xC4($v0)
/* A1E20 800EBA60 0040F809 */  jalr       $v0
/* A1E24 800EBA64 00642021 */   addu      $a0, $v1, $a0
/* A1E28 800EBA68 8E040010 */  lw         $a0, 0x10($s0)
/* A1E2C 800EBA6C 3C03FFFE */  lui        $v1, (0xFFFEFFFF >> 16)
/* A1E30 800EBA70 8C82005C */  lw         $v0, 0x5C($a0)
/* A1E34 800EBA74 3463FFFF */  ori        $v1, $v1, (0xFFFEFFFF & 0xFFFF)
/* A1E38 800EBA78 00431024 */  and        $v0, $v0, $v1
/* A1E3C 800EBA7C AC82005C */  sw         $v0, 0x5C($a0)
/* A1E40 800EBA80 8FBF0014 */  lw         $ra, 0x14($sp)
/* A1E44 800EBA84 8FB00010 */  lw         $s0, 0x10($sp)
/* A1E48 800EBA88 03E00008 */  jr         $ra
/* A1E4C 800EBA8C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EBA90
/* A1E50 800EBA90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A1E54 800EBA94 AFB00010 */  sw         $s0, 0x10($sp)
/* A1E58 800EBA98 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1E5C 800EBA9C 0C03A1A4 */  jal        func_race_800E8690
/* A1E60 800EBAA0 00808021 */   addu      $s0, $a0, $zero
/* A1E64 800EBAA4 26040010 */  addiu      $a0, $s0, 0x10
/* A1E68 800EBAA8 3C02800D */  lui        $v0, %hi(D_race_800CC278)
/* A1E6C 800EBAAC 2442C278 */  addiu      $v0, $v0, %lo(D_race_800CC278)
/* A1E70 800EBAB0 0C045E3C */  jal        func_race_801178F0
/* A1E74 800EBAB4 AE020000 */   sw        $v0, 0x0($s0)
/* A1E78 800EBAB8 0C01955C */  jal        func_80065570
/* A1E7C 800EBABC 260400F4 */   addiu     $a0, $s0, 0xF4
/* A1E80 800EBAC0 02001021 */  addu       $v0, $s0, $zero
/* A1E84 800EBAC4 AC4001E8 */  sw         $zero, 0x1E8($v0)
/* A1E88 800EBAC8 AC4001EC */  sw         $zero, 0x1EC($v0)
/* A1E8C 800EBACC AC4001F0 */  sw         $zero, 0x1F0($v0)
/* A1E90 800EBAD0 AC4001F4 */  sw         $zero, 0x1F4($v0)
/* A1E94 800EBAD4 AC4001F8 */  sw         $zero, 0x1F8($v0)
/* A1E98 800EBAD8 AC4001FC */  sw         $zero, 0x1FC($v0)
/* A1E9C 800EBADC AC400200 */  sw         $zero, 0x200($v0)
/* A1EA0 800EBAE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A1EA4 800EBAE4 8FB00010 */  lw         $s0, 0x10($sp)
/* A1EA8 800EBAE8 03E00008 */  jr         $ra
/* A1EAC 800EBAEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EBAF0
/* A1EB0 800EBAF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A1EB4 800EBAF4 AFB00010 */  sw         $s0, 0x10($sp)
/* A1EB8 800EBAF8 00808021 */  addu       $s0, $a0, $zero
/* A1EBC 800EBAFC AFB10014 */  sw         $s1, 0x14($sp)
/* A1EC0 800EBB00 00A08821 */  addu       $s1, $a1, $zero
/* A1EC4 800EBB04 3C02800D */  lui        $v0, %hi(D_race_800CC278)
/* A1EC8 800EBB08 2442C278 */  addiu      $v0, $v0, %lo(D_race_800CC278)
/* A1ECC 800EBB0C AFBF0018 */  sw         $ra, 0x18($sp)
/* A1ED0 800EBB10 0C03AF48 */  jal        func_race_800EBD20
/* A1ED4 800EBB14 AE020000 */   sw        $v0, 0x0($s0)
/* A1ED8 800EBB18 02002021 */  addu       $a0, $s0, $zero
/* A1EDC 800EBB1C 0C03A1AC */  jal        func_race_800E86B0
/* A1EE0 800EBB20 02202821 */   addu      $a1, $s1, $zero
/* A1EE4 800EBB24 8FBF0018 */  lw         $ra, 0x18($sp)
/* A1EE8 800EBB28 8FB10014 */  lw         $s1, 0x14($sp)
/* A1EEC 800EBB2C 8FB00010 */  lw         $s0, 0x10($sp)
/* A1EF0 800EBB30 03E00008 */  jr         $ra
/* A1EF4 800EBB34 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EBB38
/* A1EF8 800EBB38 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A1EFC 800EBB3C AFB10024 */  sw         $s1, 0x24($sp)
/* A1F00 800EBB40 00808821 */  addu       $s1, $a0, $zero
/* A1F04 800EBB44 AFB20028 */  sw         $s2, 0x28($sp)
/* A1F08 800EBB48 00A09021 */  addu       $s2, $a1, $zero
/* A1F0C 800EBB4C AFBF002C */  sw         $ra, 0x2C($sp)
/* A1F10 800EBB50 AFB00020 */  sw         $s0, 0x20($sp)
/* A1F14 800EBB54 F7B40030 */  sdc1       $f20, 0x30($sp)
/* A1F18 800EBB58 8E22000C */  lw         $v0, 0xC($s1)
/* A1F1C 800EBB5C 10400003 */  beqz       $v0, .Lrace_800EBB6C
/* A1F20 800EBB60 00C08021 */   addu      $s0, $a2, $zero
/* A1F24 800EBB64 0C03AF48 */  jal        func_race_800EBD20
/* A1F28 800EBB68 00000000 */   nop
.Lrace_800EBB6C:
/* A1F2C 800EBB6C 8E42000C */  lw         $v0, 0xC($s2)
/* A1F30 800EBB70 02002021 */  addu       $a0, $s0, $zero
/* A1F34 800EBB74 AE220004 */  sw         $v0, 0x4($s1)
/* A1F38 800EBB78 8E420000 */  lw         $v0, 0x0($s2)
/* A1F3C 800EBB7C 24050005 */  addiu      $a1, $zero, 0x5
/* A1F40 800EBB80 0C0026F4 */  jal        func_80009BD0
/* A1F44 800EBB84 AE2201EC */   sw        $v0, 0x1EC($s1)
/* A1F48 800EBB88 8E020028 */  lw         $v0, 0x28($s0)
/* A1F4C 800EBB8C 844400A0 */  lh         $a0, 0xA0($v0)
/* A1F50 800EBB90 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A1F54 800EBB94 0040F809 */  jalr       $v0
/* A1F58 800EBB98 02042021 */   addu      $a0, $s0, $a0
/* A1F5C 800EBB9C 27A40018 */  addiu      $a0, $sp, 0x18
/* A1F60 800EBBA0 26050044 */  addiu      $a1, $s0, 0x44
/* A1F64 800EBBA4 0C000708 */  jal        func_80001C20
/* A1F68 800EBBA8 24060008 */   addiu     $a2, $zero, 0x8
/* A1F6C 800EBBAC 8E420010 */  lw         $v0, 0x10($s2)
/* A1F70 800EBBB0 27A50018 */  addiu      $a1, $sp, 0x18
/* A1F74 800EBBB4 8C4300BC */  lw         $v1, 0xBC($v0)
/* A1F78 800EBBB8 14600003 */  bnez       $v1, .Lrace_800EBBC8
/* A1F7C 800EBBBC 244400BC */   addiu     $a0, $v0, 0xBC
/* A1F80 800EBBC0 0803AEF4 */  j          .Lrace_800EBBD0
/* A1F84 800EBBC4 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EBBC8:
/* A1F88 800EBBC8 0C016427 */  jal        func_8005909C
/* A1F8C 800EBBCC 00000000 */   nop
.Lrace_800EBBD0:
/* A1F90 800EBBD0 AE2201E8 */  sw         $v0, 0x1E8($s1)
/* A1F94 800EBBD4 27A40018 */  addiu      $a0, $sp, 0x18
/* A1F98 800EBBD8 3C05800D */  lui        $a1, %hi(D_race_800CC270)
/* A1F9C 800EBBDC 24A5C270 */  addiu      $a1, $a1, %lo(D_race_800CC270)
/* A1FA0 800EBBE0 0C0006B2 */  jal        func_80001AC8
/* A1FA4 800EBBE4 24060002 */   addiu     $a2, $zero, 0x2
/* A1FA8 800EBBE8 14400002 */  bnez       $v0, .Lrace_800EBBF4
/* A1FAC 800EBBEC 24020001 */   addiu     $v0, $zero, 0x1
/* A1FB0 800EBBF0 AE220200 */  sw         $v0, 0x200($s1)
.Lrace_800EBBF4:
/* A1FB4 800EBBF4 0C002680 */  jal        func_80009A00
/* A1FB8 800EBBF8 02002021 */   addu      $a0, $s0, $zero
/* A1FBC 800EBBFC 02002021 */  addu       $a0, $s0, $zero
/* A1FC0 800EBC00 0C0025F8 */  jal        func_800097E0
/* A1FC4 800EBC04 AE220008 */   sw        $v0, 0x8($s1)
/* A1FC8 800EBC08 02002021 */  addu       $a0, $s0, $zero
/* A1FCC 800EBC0C 0C0025F8 */  jal        func_800097E0
/* A1FD0 800EBC10 46000506 */   mov.s     $f20, $f0
/* A1FD4 800EBC14 02002021 */  addu       $a0, $s0, $zero
/* A1FD8 800EBC18 0C0025F8 */  jal        func_800097E0
/* A1FDC 800EBC1C E62001F4 */   swc1      $f0, 0x1F4($s1)
/* A1FE0 800EBC20 02002021 */  addu       $a0, $s0, $zero
/* A1FE4 800EBC24 0C0025F8 */  jal        func_800097E0
/* A1FE8 800EBC28 E62001F8 */   swc1      $f0, 0x1F8($s1)
/* A1FEC 800EBC2C 02002021 */  addu       $a0, $s0, $zero
/* A1FF0 800EBC30 24050006 */  addiu      $a1, $zero, 0x6
/* A1FF4 800EBC34 0C0026F4 */  jal        func_80009BD0
/* A1FF8 800EBC38 E62001FC */   swc1      $f0, 0x1FC($s1)
/* A1FFC 800EBC3C 8E3001E8 */  lw         $s0, 0x1E8($s1)
/* A2000 800EBC40 0C0195AD */  jal        func_800656B4
/* A2004 800EBC44 02002021 */   addu      $a0, $s0, $zero
/* A2008 800EBC48 E61400B4 */  swc1       $f20, 0xB4($s0)
/* A200C 800EBC4C 8E2301E8 */  lw         $v1, 0x1E8($s1)
/* A2010 800EBC50 8C620024 */  lw         $v0, 0x24($v1)
/* A2014 800EBC54 00002821 */  addu       $a1, $zero, $zero
/* A2018 800EBC58 844400B8 */  lh         $a0, 0xB8($v0)
/* A201C 800EBC5C 8C4200BC */  lw         $v0, 0xBC($v0)
/* A2020 800EBC60 0040F809 */  jalr       $v0
/* A2024 800EBC64 00642021 */   addu      $a0, $v1, $a0
/* A2028 800EBC68 263000F4 */  addiu      $s0, $s1, 0xF4
/* A202C 800EBC6C 02002021 */  addu       $a0, $s0, $zero
/* A2030 800EBC70 8E2301E8 */  lw         $v1, 0x1E8($s1)
/* A2034 800EBC74 3C077CF0 */  lui        $a3, (0x7CF0BDC2 >> 16)
/* A2038 800EBC78 34E7BDC2 */  ori        $a3, $a3, (0x7CF0BDC2 & 0xFFFF)
/* A203C 800EBC7C 8C6600A8 */  lw         $a2, 0xA8($v1)
/* A2040 800EBC80 0C01957D */  jal        func_800655F4
/* A2044 800EBC84 00402821 */   addu      $a1, $v0, $zero
/* A2048 800EBC88 C62001F4 */  lwc1       $f0, 0x1F4($s1)
/* A204C 800EBC8C 3C01800D */  lui        $at, %hi(D_race_800CC274)
/* A2050 800EBC90 C424C274 */  lwc1       $f4, %lo(D_race_800CC274)($at)
/* A2054 800EBC94 46040082 */  mul.s      $f2, $f0, $f4
/* A2058 800EBC98 C62001F8 */  lwc1       $f0, 0x1F8($s1)
/* A205C 800EBC9C 46040002 */  mul.s      $f0, $f0, $f4
/* A2060 800EBCA0 4600103C */  c.lt.s     $f2, $f0
/* A2064 800EBCA4 00000000 */  nop
/* A2068 800EBCA8 45030001 */  bc1tl      .Lrace_800EBCB0
/* A206C 800EBCAC 46000086 */   mov.s     $f2, $f0
.Lrace_800EBCB0:
/* A2070 800EBCB0 C62001FC */  lwc1       $f0, 0x1FC($s1)
/* A2074 800EBCB4 46040002 */  mul.s      $f0, $f0, $f4
/* A2078 800EBCB8 4600103C */  c.lt.s     $f2, $f0
/* A207C 800EBCBC 00000000 */  nop
/* A2080 800EBCC0 45030001 */  bc1tl      .Lrace_800EBCC8
/* A2084 800EBCC4 46000086 */   mov.s     $f2, $f0
.Lrace_800EBCC8:
/* A2088 800EBCC8 44051000 */  mfc1       $a1, $f2
/* A208C 800EBCCC 0C0165E8 */  jal        func_800597A0
/* A2090 800EBCD0 02002021 */   addu      $a0, $s0, $zero
/* A2094 800EBCD4 C62001F8 */  lwc1       $f0, 0x1F8($s1)
/* A2098 800EBCD8 3C06469C */  lui        $a2, (0x469C4000 >> 16)
/* A209C 800EBCDC 34C64000 */  ori        $a2, $a2, (0x469C4000 & 0xFFFF)
/* A20A0 800EBCE0 E7A00010 */  swc1       $f0, 0x10($sp)
/* A20A4 800EBCE4 C62001FC */  lwc1       $f0, 0x1FC($s1)
/* A20A8 800EBCE8 26240010 */  addiu      $a0, $s1, 0x10
/* A20AC 800EBCEC E7A00014 */  swc1       $f0, 0x14($sp)
/* A20B0 800EBCF0 8E2701F4 */  lw         $a3, 0x1F4($s1)
/* A20B4 800EBCF4 0C045E4E */  jal        func_race_80117938
/* A20B8 800EBCF8 02002821 */   addu      $a1, $s0, $zero
/* A20BC 800EBCFC 24020001 */  addiu      $v0, $zero, 0x1
/* A20C0 800EBD00 AE22000C */  sw         $v0, 0xC($s1)
/* A20C4 800EBD04 8FBF002C */  lw         $ra, 0x2C($sp)
/* A20C8 800EBD08 8FB20028 */  lw         $s2, 0x28($sp)
/* A20CC 800EBD0C 8FB10024 */  lw         $s1, 0x24($sp)
/* A20D0 800EBD10 8FB00020 */  lw         $s0, 0x20($sp)
/* A20D4 800EBD14 D7B40030 */  ldc1       $f20, 0x30($sp)
/* A20D8 800EBD18 03E00008 */  jr         $ra
/* A20DC 800EBD1C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800EBD20
/* A20E0 800EBD20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A20E4 800EBD24 AFB00010 */  sw         $s0, 0x10($sp)
/* A20E8 800EBD28 00808021 */  addu       $s0, $a0, $zero
/* A20EC 800EBD2C AFBF0014 */  sw         $ra, 0x14($sp)
/* A20F0 800EBD30 8E020000 */  lw         $v0, 0x0($s0)
/* A20F4 800EBD34 00002821 */  addu       $a1, $zero, $zero
/* A20F8 800EBD38 84440018 */  lh         $a0, 0x18($v0)
/* A20FC 800EBD3C 8C42001C */  lw         $v0, 0x1C($v0)
/* A2100 800EBD40 0040F809 */  jalr       $v0
/* A2104 800EBD44 02042021 */   addu      $a0, $s0, $a0
/* A2108 800EBD48 260400F4 */  addiu      $a0, $s0, 0xF4
/* A210C 800EBD4C AE000200 */  sw         $zero, 0x200($s0)
/* A2110 800EBD50 AE0001F4 */  sw         $zero, 0x1F4($s0)
/* A2114 800EBD54 AE0001F8 */  sw         $zero, 0x1F8($s0)
/* A2118 800EBD58 AE0001FC */  sw         $zero, 0x1FC($s0)
/* A211C 800EBD5C AE0001E8 */  sw         $zero, 0x1E8($s0)
/* A2120 800EBD60 AE0001EC */  sw         $zero, 0x1EC($s0)
/* A2124 800EBD64 0C01958C */  jal        func_80065630
/* A2128 800EBD68 AE0001F0 */   sw        $zero, 0x1F0($s0)
/* A212C 800EBD6C 0C045B73 */  jal        func_race_80116DCC
/* A2130 800EBD70 26040010 */   addiu     $a0, $s0, 0x10
/* A2134 800EBD74 0C03A1C0 */  jal        func_race_800E8700
/* A2138 800EBD78 02002021 */   addu      $a0, $s0, $zero
/* A213C 800EBD7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A2140 800EBD80 8FB00010 */  lw         $s0, 0x10($sp)
/* A2144 800EBD84 03E00008 */  jr         $ra
/* A2148 800EBD88 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EBD8C
/* A214C 800EBD8C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A2150 800EBD90 AFB00028 */  sw         $s0, 0x28($sp)
/* A2154 800EBD94 00808021 */  addu       $s0, $a0, $zero
/* A2158 800EBD98 24020003 */  addiu      $v0, $zero, 0x3
/* A215C 800EBD9C AFA20010 */  sw         $v0, 0x10($sp)
/* A2160 800EBDA0 24020001 */  addiu      $v0, $zero, 0x1
/* A2164 800EBDA4 AFA20014 */  sw         $v0, 0x14($sp)
/* A2168 800EBDA8 26020010 */  addiu      $v0, $s0, 0x10
/* A216C 800EBDAC 02002821 */  addu       $a1, $s0, $zero
/* A2170 800EBDB0 AFBF002C */  sw         $ra, 0x2C($sp)
/* A2174 800EBDB4 AFA0001C */  sw         $zero, 0x1C($sp)
/* A2178 800EBDB8 AFA20020 */  sw         $v0, 0x20($sp)
/* A217C 800EBDBC 8E0401EC */  lw         $a0, 0x1EC($s0)
/* A2180 800EBDC0 0C04053E */  jal        func_race_801014F8
/* A2184 800EBDC4 27A60010 */   addiu     $a2, $sp, 0x10
/* A2188 800EBDC8 AE0201F0 */  sw         $v0, 0x1F0($s0)
/* A218C 800EBDCC 24020002 */  addiu      $v0, $zero, 0x2
/* A2190 800EBDD0 AE02000C */  sw         $v0, 0xC($s0)
/* A2194 800EBDD4 8FBF002C */  lw         $ra, 0x2C($sp)
/* A2198 800EBDD8 8FB00028 */  lw         $s0, 0x28($sp)
/* A219C 800EBDDC 03E00008 */  jr         $ra
/* A21A0 800EBDE0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800EBDE4
/* A21A4 800EBDE4 8C8201F0 */  lw         $v0, 0x1F0($a0)
/* A21A8 800EBDE8 50400004 */  beql       $v0, $zero, .Lrace_800EBDFC
/* A21AC 800EBDEC 24020001 */   addiu     $v0, $zero, 0x1
/* A21B0 800EBDF0 AC400024 */  sw         $zero, 0x24($v0)
/* A21B4 800EBDF4 AC8001F0 */  sw         $zero, 0x1F0($a0)
/* A21B8 800EBDF8 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800EBDFC:
/* A21BC 800EBDFC 03E00008 */  jr         $ra
/* A21C0 800EBE00 AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800EBE04
/* A21C4 800EBE04 27BDFF78 */  addiu      $sp, $sp, -0x88
/* A21C8 800EBE08 AFB10074 */  sw         $s1, 0x74($sp)
/* A21CC 800EBE0C 00808821 */  addu       $s1, $a0, $zero
/* A21D0 800EBE10 AFBF0080 */  sw         $ra, 0x80($sp)
/* A21D4 800EBE14 AFB3007C */  sw         $s3, 0x7C($sp)
/* A21D8 800EBE18 AFB20078 */  sw         $s2, 0x78($sp)
/* A21DC 800EBE1C AFB00070 */  sw         $s0, 0x70($sp)
/* A21E0 800EBE20 8E23000C */  lw         $v1, 0xC($s1)
/* A21E4 800EBE24 24020001 */  addiu      $v0, $zero, 0x1
/* A21E8 800EBE28 10620081 */  beq        $v1, $v0, .Lrace_800EC030
/* A21EC 800EBE2C 00000000 */   nop
/* A21F0 800EBE30 0C03A1C4 */  jal        func_race_800E8710
/* A21F4 800EBE34 00000000 */   nop
/* A21F8 800EBE38 00002821 */  addu       $a1, $zero, $zero
/* A21FC 800EBE3C 27B30020 */  addiu      $s3, $sp, 0x20
/* A2200 800EBE40 8E2601E8 */  lw         $a2, 0x1E8($s1)
/* A2204 800EBE44 27A20040 */  addiu      $v0, $sp, 0x40
/* A2208 800EBE48 8CC30024 */  lw         $v1, 0x24($a2)
/* A220C 800EBE4C 00409021 */  addu       $s2, $v0, $zero
/* A2210 800EBE50 846400B8 */  lh         $a0, 0xB8($v1)
/* A2214 800EBE54 8C6200BC */  lw         $v0, 0xBC($v1)
/* A2218 800EBE58 0040F809 */  jalr       $v0
/* A221C 800EBE5C 00C42021 */   addu      $a0, $a2, $a0
/* A2220 800EBE60 8C430008 */  lw         $v1, 0x8($v0)
/* A2224 800EBE64 24050001 */  addiu      $a1, $zero, 0x1
/* A2228 800EBE68 84640038 */  lh         $a0, 0x38($v1)
/* A222C 800EBE6C 8C63003C */  lw         $v1, 0x3C($v1)
/* A2230 800EBE70 0060F809 */  jalr       $v1
/* A2234 800EBE74 00442021 */   addu      $a0, $v0, $a0
/* A2238 800EBE78 00408021 */  addu       $s0, $v0, $zero
/* A223C 800EBE7C 27A50030 */  addiu      $a1, $sp, 0x30
/* A2240 800EBE80 AFA00060 */  sw         $zero, 0x60($sp)
/* A2244 800EBE84 AFA00064 */  sw         $zero, 0x64($sp)
/* A2248 800EBE88 AFA00068 */  sw         $zero, 0x68($sp)
/* A224C 800EBE8C 8E02000C */  lw         $v0, 0xC($s0)
/* A2250 800EBE90 02403021 */  addu       $a2, $s2, $zero
/* A2254 800EBE94 84440048 */  lh         $a0, 0x48($v0)
/* A2258 800EBE98 8C42004C */  lw         $v0, 0x4C($v0)
/* A225C 800EBE9C 0040F809 */  jalr       $v0
/* A2260 800EBEA0 02042021 */   addu      $a0, $s0, $a0
/* A2264 800EBEA4 27A50050 */  addiu      $a1, $sp, 0x50
.Lrace_800EBEA8:
/* A2268 800EBEA8 8FA70060 */  lw         $a3, 0x60($sp)
/* A226C 800EBEAC 8FA80064 */  lw         $t0, 0x64($sp)
/* A2270 800EBEB0 8FA90068 */  lw         $t1, 0x68($sp)
/* A2274 800EBEB4 AFA70050 */  sw         $a3, 0x50($sp)
/* A2278 800EBEB8 AFA80054 */  sw         $t0, 0x54($sp)
/* A227C 800EBEBC AFA90058 */  sw         $t1, 0x58($sp)
/* A2280 800EBEC0 8E02000C */  lw         $v0, 0xC($s0)
/* A2284 800EBEC4 27A60060 */  addiu      $a2, $sp, 0x60
/* A2288 800EBEC8 84440010 */  lh         $a0, 0x10($v0)
/* A228C 800EBECC 8C420014 */  lw         $v0, 0x14($v0)
/* A2290 800EBED0 0040F809 */  jalr       $v0
/* A2294 800EBED4 02042021 */   addu      $a0, $s0, $a0
/* A2298 800EBED8 8E220200 */  lw         $v0, 0x200($s1)
/* A229C 800EBEDC 1040001A */  beqz       $v0, .Lrace_800EBF48
/* A22A0 800EBEE0 27A50010 */   addiu     $a1, $sp, 0x10
/* A22A4 800EBEE4 8FA70030 */  lw         $a3, 0x30($sp)
/* A22A8 800EBEE8 8FA80034 */  lw         $t0, 0x34($sp)
/* A22AC 800EBEEC 8FA90038 */  lw         $t1, 0x38($sp)
/* A22B0 800EBEF0 AFA70010 */  sw         $a3, 0x10($sp)
/* A22B4 800EBEF4 AFA80014 */  sw         $t0, 0x14($sp)
/* A22B8 800EBEF8 AFA90018 */  sw         $t1, 0x18($sp)
/* A22BC 800EBEFC 8FA70040 */  lw         $a3, 0x40($sp)
/* A22C0 800EBF00 8FA80044 */  lw         $t0, 0x44($sp)
/* A22C4 800EBF04 8FA90048 */  lw         $t1, 0x48($sp)
/* A22C8 800EBF08 AFA70020 */  sw         $a3, 0x20($sp)
/* A22CC 800EBF0C AFA80024 */  sw         $t0, 0x24($sp)
/* A22D0 800EBF10 AFA90028 */  sw         $t1, 0x28($sp)
/* A22D4 800EBF14 8E02000C */  lw         $v0, 0xC($s0)
/* A22D8 800EBF18 27A60030 */  addiu      $a2, $sp, 0x30
/* A22DC 800EBF1C 84440020 */  lh         $a0, 0x20($v0)
/* A22E0 800EBF20 8C420024 */  lw         $v0, 0x24($v0)
/* A22E4 800EBF24 0040F809 */  jalr       $v0
/* A22E8 800EBF28 02042021 */   addu      $a0, $s0, $a0
/* A22EC 800EBF2C 02602821 */  addu       $a1, $s3, $zero
/* A22F0 800EBF30 8E02000C */  lw         $v0, 0xC($s0)
/* A22F4 800EBF34 02403021 */  addu       $a2, $s2, $zero
/* A22F8 800EBF38 84440020 */  lh         $a0, 0x20($v0)
/* A22FC 800EBF3C 8C420024 */  lw         $v0, 0x24($v0)
/* A2300 800EBF40 0040F809 */  jalr       $v0
/* A2304 800EBF44 02042021 */   addu      $a0, $s0, $a0
.Lrace_800EBF48:
/* A2308 800EBF48 8E100000 */  lw         $s0, 0x0($s0)
/* A230C 800EBF4C 1600FFD6 */  bnez       $s0, .Lrace_800EBEA8
/* A2310 800EBF50 27A50050 */   addiu     $a1, $sp, 0x50
/* A2314 800EBF54 8E2301E8 */  lw         $v1, 0x1E8($s1)
/* A2318 800EBF58 8C620078 */  lw         $v0, 0x78($v1)
/* A231C 800EBF5C C4600058 */  lwc1       $f0, 0x58($v1)
/* A2320 800EBF60 C4420034 */  lwc1       $f2, 0x34($v0)
/* A2324 800EBF64 46020002 */  mul.s      $f0, $f0, $f2
/* A2328 800EBF68 C7A60060 */  lwc1       $f6, 0x60($sp)
/* A232C 800EBF6C 46003182 */  mul.s      $f6, $f6, $f0
/* A2330 800EBF70 C7A40064 */  lwc1       $f4, 0x64($sp)
/* A2334 800EBF74 46002102 */  mul.s      $f4, $f4, $f0
/* A2338 800EBF78 C7A20068 */  lwc1       $f2, 0x68($sp)
/* A233C 800EBF7C 46001082 */  mul.s      $f2, $f2, $f0
/* A2340 800EBF80 27A50060 */  addiu      $a1, $sp, 0x60
/* A2344 800EBF84 E7A60060 */  swc1       $f6, 0x60($sp)
/* A2348 800EBF88 E7A40064 */  swc1       $f4, 0x64($sp)
/* A234C 800EBF8C E7A20068 */  swc1       $f2, 0x68($sp)
/* A2350 800EBF90 8E2301E8 */  lw         $v1, 0x1E8($s1)
/* A2354 800EBF94 27B20050 */  addiu      $s2, $sp, 0x50
/* A2358 800EBF98 8C620024 */  lw         $v0, 0x24($v1)
/* A235C 800EBF9C 02403021 */  addu       $a2, $s2, $zero
/* A2360 800EBFA0 84440060 */  lh         $a0, 0x60($v0)
/* A2364 800EBFA4 8C420064 */  lw         $v0, 0x64($v0)
/* A2368 800EBFA8 0040F809 */  jalr       $v0
/* A236C 800EBFAC 00642021 */   addu      $a0, $v1, $a0
/* A2370 800EBFB0 8FA70050 */  lw         $a3, 0x50($sp)
/* A2374 800EBFB4 8FA80054 */  lw         $t0, 0x54($sp)
/* A2378 800EBFB8 8FA90058 */  lw         $t1, 0x58($sp)
/* A237C 800EBFBC AE27002C */  sw         $a3, 0x2C($s1)
/* A2380 800EBFC0 AE280030 */  sw         $t0, 0x30($s1)
/* A2384 800EBFC4 AE290034 */  sw         $t1, 0x34($s1)
/* A2388 800EBFC8 8E220200 */  lw         $v0, 0x200($s1)
/* A238C 800EBFCC 10400015 */  beqz       $v0, .Lrace_800EC024
/* A2390 800EBFD0 27A50030 */   addiu     $a1, $sp, 0x30
/* A2394 800EBFD4 8E2301E8 */  lw         $v1, 0x1E8($s1)
/* A2398 800EBFD8 8C620024 */  lw         $v0, 0x24($v1)
/* A239C 800EBFDC 27A60010 */  addiu      $a2, $sp, 0x10
/* A23A0 800EBFE0 84440070 */  lh         $a0, 0x70($v0)
/* A23A4 800EBFE4 8C420074 */  lw         $v0, 0x74($v0)
/* A23A8 800EBFE8 0040F809 */  jalr       $v0
/* A23AC 800EBFEC 00642021 */   addu      $a0, $v1, $a0
/* A23B0 800EBFF0 27A50040 */  addiu      $a1, $sp, 0x40
/* A23B4 800EBFF4 8E2301E8 */  lw         $v1, 0x1E8($s1)
/* A23B8 800EBFF8 27B00020 */  addiu      $s0, $sp, 0x20
/* A23BC 800EBFFC 8C620024 */  lw         $v0, 0x24($v1)
/* A23C0 800EC000 02003021 */  addu       $a2, $s0, $zero
/* A23C4 800EC004 84440070 */  lh         $a0, 0x70($v0)
/* A23C8 800EC008 8C420074 */  lw         $v0, 0x74($v0)
/* A23CC 800EC00C 0040F809 */  jalr       $v0
/* A23D0 800EC010 00642021 */   addu      $a0, $v1, $a0
/* A23D4 800EC014 262400F4 */  addiu      $a0, $s1, 0xF4
/* A23D8 800EC018 27A50010 */  addiu      $a1, $sp, 0x10
/* A23DC 800EC01C 0C015729 */  jal        func_80055CA4
/* A23E0 800EC020 02003021 */   addu      $a2, $s0, $zero
.Lrace_800EC024:
/* A23E4 800EC024 262400F4 */  addiu      $a0, $s1, 0xF4
/* A23E8 800EC028 0C0165D9 */  jal        func_80059764
/* A23EC 800EC02C 02402821 */   addu      $a1, $s2, $zero
.Lrace_800EC030:
/* A23F0 800EC030 8FBF0080 */  lw         $ra, 0x80($sp)
/* A23F4 800EC034 8FB3007C */  lw         $s3, 0x7C($sp)
/* A23F8 800EC038 8FB20078 */  lw         $s2, 0x78($sp)
/* A23FC 800EC03C 8FB10074 */  lw         $s1, 0x74($sp)
/* A2400 800EC040 8FB00070 */  lw         $s0, 0x70($sp)
/* A2404 800EC044 03E00008 */  jr         $ra
/* A2408 800EC048 27BD0088 */   addiu     $sp, $sp, 0x88
