.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DC6F0
/* 92AB0 800DC6F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92AB4 800DC6F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 92AB8 800DC6F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 92ABC 800DC6FC 0C03592C */  jal        func_race_800D64B0
/* 92AC0 800DC700 00808021 */   addu      $s0, $a0, $zero
/* 92AC4 800DC704 02001021 */  addu       $v0, $s0, $zero
/* 92AC8 800DC708 3C03800D */  lui        $v1, %hi(D_race_800CB160)
/* 92ACC 800DC70C 2463B160 */  addiu      $v1, $v1, %lo(D_race_800CB160)
/* 92AD0 800DC710 AC43001C */  sw         $v1, 0x1C($v0)
/* 92AD4 800DC714 AC400020 */  sw         $zero, 0x20($v0)
/* 92AD8 800DC718 AC400024 */  sw         $zero, 0x24($v0)
/* 92ADC 800DC71C AC400028 */  sw         $zero, 0x28($v0)
/* 92AE0 800DC720 AC40002C */  sw         $zero, 0x2C($v0)
/* 92AE4 800DC724 A4400030 */  sh         $zero, 0x30($v0)
/* 92AE8 800DC728 A0400018 */  sb         $zero, 0x18($v0)
/* 92AEC 800DC72C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92AF0 800DC730 8FB00010 */  lw         $s0, 0x10($sp)
/* 92AF4 800DC734 03E00008 */  jr         $ra
/* 92AF8 800DC738 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DC73C
/* 92AFC 800DC73C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92B00 800DC740 AFB00010 */  sw         $s0, 0x10($sp)
/* 92B04 800DC744 00808021 */  addu       $s0, $a0, $zero
/* 92B08 800DC748 AFB10014 */  sw         $s1, 0x14($sp)
/* 92B0C 800DC74C 00A08821 */  addu       $s1, $a1, $zero
/* 92B10 800DC750 3C02800D */  lui        $v0, %hi(D_race_800CB160)
/* 92B14 800DC754 2442B160 */  addiu      $v0, $v0, %lo(D_race_800CB160)
/* 92B18 800DC758 AFBF0018 */  sw         $ra, 0x18($sp)
/* 92B1C 800DC75C 0C037234 */  jal        func_race_800DC8D0
/* 92B20 800DC760 AE02001C */   sw        $v0, 0x1C($s0)
/* 92B24 800DC764 02002021 */  addu       $a0, $s0, $zero
/* 92B28 800DC768 0C03593D */  jal        func_race_800D64F4
/* 92B2C 800DC76C 02202821 */   addu      $a1, $s1, $zero
/* 92B30 800DC770 8FBF0018 */  lw         $ra, 0x18($sp)
/* 92B34 800DC774 8FB10014 */  lw         $s1, 0x14($sp)
/* 92B38 800DC778 8FB00010 */  lw         $s0, 0x10($sp)
/* 92B3C 800DC77C 03E00008 */  jr         $ra
/* 92B40 800DC780 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DC784
/* 92B44 800DC784 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92B48 800DC788 AFB00010 */  sw         $s0, 0x10($sp)
/* 92B4C 800DC78C 00808021 */  addu       $s0, $a0, $zero
/* 92B50 800DC790 AFBF0018 */  sw         $ra, 0x18($sp)
/* 92B54 800DC794 AFB10014 */  sw         $s1, 0x14($sp)
/* 92B58 800DC798 8E020014 */  lw         $v0, 0x14($s0)
/* 92B5C 800DC79C 10400003 */  beqz       $v0, .Lrace_800DC7AC
/* 92B60 800DC7A0 00A08821 */   addu      $s1, $a1, $zero
/* 92B64 800DC7A4 0C037234 */  jal        func_race_800DC8D0
/* 92B68 800DC7A8 00000000 */   nop
.Lrace_800DC7AC:
/* 92B6C 800DC7AC 00002821 */  addu       $a1, $zero, $zero
/* 92B70 800DC7B0 02202021 */  addu       $a0, $s1, $zero
/* 92B74 800DC7B4 8E220000 */  lw         $v0, 0x0($s1)
/* 92B78 800DC7B8 02001821 */  addu       $v1, $s0, $zero
/* 92B7C 800DC7BC AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800DC7C0:
/* 92B80 800DC7C0 8C820004 */  lw         $v0, 0x4($a0)
/* 92B84 800DC7C4 24840004 */  addiu      $a0, $a0, 0x4
/* 92B88 800DC7C8 24A50001 */  addiu      $a1, $a1, 0x1
/* 92B8C 800DC7CC AC620004 */  sw         $v0, 0x4($v1)
/* 92B90 800DC7D0 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 92B94 800DC7D4 1440FFFA */  bnez       $v0, .Lrace_800DC7C0
/* 92B98 800DC7D8 24630004 */   addiu     $v1, $v1, 0x4
/* 92B9C 800DC7DC 8E220010 */  lw         $v0, 0x10($s1)
/* 92BA0 800DC7E0 AE020000 */  sw         $v0, 0x0($s0)
/* 92BA4 800DC7E4 8E220014 */  lw         $v0, 0x14($s1)
/* 92BA8 800DC7E8 AE020020 */  sw         $v0, 0x20($s0)
/* 92BAC 800DC7EC 8E220028 */  lw         $v0, 0x28($s1)
/* 92BB0 800DC7F0 10400004 */  beqz       $v0, .Lrace_800DC804
/* 92BB4 800DC7F4 00000000 */   nop
/* 92BB8 800DC7F8 92020018 */  lbu        $v0, 0x18($s0)
/* 92BBC 800DC7FC 34420001 */  ori        $v0, $v0, 0x1
/* 92BC0 800DC800 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DC804:
/* 92BC4 800DC804 8E22002C */  lw         $v0, 0x2C($s1)
/* 92BC8 800DC808 10400004 */  beqz       $v0, .Lrace_800DC81C
/* 92BCC 800DC80C 00000000 */   nop
/* 92BD0 800DC810 92020018 */  lbu        $v0, 0x18($s0)
/* 92BD4 800DC814 34420002 */  ori        $v0, $v0, 0x2
/* 92BD8 800DC818 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DC81C:
/* 92BDC 800DC81C 8E220030 */  lw         $v0, 0x30($s1)
/* 92BE0 800DC820 10400004 */  beqz       $v0, .Lrace_800DC834
/* 92BE4 800DC824 00000000 */   nop
/* 92BE8 800DC828 92020018 */  lbu        $v0, 0x18($s0)
/* 92BEC 800DC82C 34420004 */  ori        $v0, $v0, 0x4
/* 92BF0 800DC830 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DC834:
/* 92BF4 800DC834 8E220034 */  lw         $v0, 0x34($s1)
/* 92BF8 800DC838 10400004 */  beqz       $v0, .Lrace_800DC84C
/* 92BFC 800DC83C 00000000 */   nop
/* 92C00 800DC840 92020018 */  lbu        $v0, 0x18($s0)
/* 92C04 800DC844 34420008 */  ori        $v0, $v0, 0x8
/* 92C08 800DC848 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DC84C:
/* 92C0C 800DC84C 8E220020 */  lw         $v0, 0x20($s1)
/* 92C10 800DC850 8E040020 */  lw         $a0, 0x20($s0)
/* 92C14 800DC854 00021840 */  sll        $v1, $v0, 1
/* 92C18 800DC858 00621821 */  addu       $v1, $v1, $v0
/* 92C1C 800DC85C 8C820008 */  lw         $v0, 0x8($a0)
/* 92C20 800DC860 000318C0 */  sll        $v1, $v1, 3
/* 92C24 800DC864 00431021 */  addu       $v0, $v0, $v1
/* 92C28 800DC868 AE020024 */  sw         $v0, 0x24($s0)
/* 92C2C 800DC86C 8E220024 */  lw         $v0, 0x24($s1)
/* 92C30 800DC870 00021840 */  sll        $v1, $v0, 1
/* 92C34 800DC874 00621821 */  addu       $v1, $v1, $v0
/* 92C38 800DC878 8C820008 */  lw         $v0, 0x8($a0)
/* 92C3C 800DC87C 000318C0 */  sll        $v1, $v1, 3
/* 92C40 800DC880 00431021 */  addu       $v0, $v0, $v1
/* 92C44 800DC884 AE020028 */  sw         $v0, 0x28($s0)
/* 92C48 800DC888 8C420000 */  lw         $v0, 0x0($v0)
/* 92C4C 800DC88C 8E030028 */  lw         $v1, 0x28($s0)
/* 92C50 800DC890 AE02002C */  sw         $v0, 0x2C($s0)
/* 92C54 800DC894 94620004 */  lhu        $v0, 0x4($v1)
/* 92C58 800DC898 A6020030 */  sh         $v0, 0x30($s0)
/* 92C5C 800DC89C 8E220018 */  lw         $v0, 0x18($s1)
/* 92C60 800DC8A0 50400005 */  beql       $v0, $zero, .Lrace_800DC8B8
/* 92C64 800DC8A4 24020001 */   addiu     $v0, $zero, 0x1
/* 92C68 800DC8A8 AE02002C */  sw         $v0, 0x2C($s0)
/* 92C6C 800DC8AC 9622001C */  lhu        $v0, 0x1C($s1)
/* 92C70 800DC8B0 A6020030 */  sh         $v0, 0x30($s0)
/* 92C74 800DC8B4 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800DC8B8:
/* 92C78 800DC8B8 AE020014 */  sw         $v0, 0x14($s0)
/* 92C7C 800DC8BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 92C80 800DC8C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 92C84 800DC8C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 92C88 800DC8C8 03E00008 */  jr         $ra
/* 92C8C 800DC8CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DC8D0
/* 92C90 800DC8D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92C94 800DC8D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 92C98 800DC8D8 00808021 */  addu       $s0, $a0, $zero
/* 92C9C 800DC8DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 92CA0 800DC8E0 8E02001C */  lw         $v0, 0x1C($s0)
/* 92CA4 800DC8E4 84440010 */  lh         $a0, 0x10($v0)
/* 92CA8 800DC8E8 8C420014 */  lw         $v0, 0x14($v0)
/* 92CAC 800DC8EC 0040F809 */  jalr       $v0
/* 92CB0 800DC8F0 02042021 */   addu      $a0, $s0, $a0
/* 92CB4 800DC8F4 02002021 */  addu       $a0, $s0, $zero
/* 92CB8 800DC8F8 0C035951 */  jal        func_race_800D6544
/* 92CBC 800DC8FC AC800020 */   sw        $zero, 0x20($a0)
/* 92CC0 800DC900 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92CC4 800DC904 8FB00010 */  lw         $s0, 0x10($sp)
/* 92CC8 800DC908 03E00008 */  jr         $ra
/* 92CCC 800DC90C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DC910
/* 92CD0 800DC910 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92CD4 800DC914 AFB00010 */  sw         $s0, 0x10($sp)
/* 92CD8 800DC918 AFBF0014 */  sw         $ra, 0x14($sp)
/* 92CDC 800DC91C 0C03595D */  jal        func_race_800D6574
/* 92CE0 800DC920 00808021 */   addu      $s0, $a0, $zero
/* 92CE4 800DC924 8E030014 */  lw         $v1, 0x14($s0)
/* 92CE8 800DC928 24020003 */  addiu      $v0, $zero, 0x3
/* 92CEC 800DC92C 1462000F */  bne        $v1, $v0, .Lrace_800DC96C
/* 92CF0 800DC930 00000000 */   nop
/* 92CF4 800DC934 92020018 */  lbu        $v0, 0x18($s0)
/* 92CF8 800DC938 30420001 */  andi       $v0, $v0, 0x1
/* 92CFC 800DC93C 1440000B */  bnez       $v0, .Lrace_800DC96C
/* 92D00 800DC940 00000000 */   nop
/* 92D04 800DC944 8E020024 */  lw         $v0, 0x24($s0)
/* 92D08 800DC948 8C420014 */  lw         $v0, 0x14($v0)
/* 92D0C 800DC94C 30420002 */  andi       $v0, $v0, 0x2
/* 92D10 800DC950 14400006 */  bnez       $v0, .Lrace_800DC96C
/* 92D14 800DC954 00000000 */   nop
/* 92D18 800DC958 8E02001C */  lw         $v0, 0x1C($s0)
/* 92D1C 800DC95C 84440010 */  lh         $a0, 0x10($v0)
/* 92D20 800DC960 8C420014 */  lw         $v0, 0x14($v0)
/* 92D24 800DC964 0040F809 */  jalr       $v0
/* 92D28 800DC968 02042021 */   addu      $a0, $s0, $a0
.Lrace_800DC96C:
/* 92D2C 800DC96C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92D30 800DC970 8FB00010 */  lw         $s0, 0x10($sp)
/* 92D34 800DC974 03E00008 */  jr         $ra
/* 92D38 800DC978 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DC97C
/* 92D3C 800DC97C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92D40 800DC980 AFB00010 */  sw         $s0, 0x10($sp)
/* 92D44 800DC984 00808021 */  addu       $s0, $a0, $zero
/* 92D48 800DC988 AFBF0014 */  sw         $ra, 0x14($sp)
/* 92D4C 800DC98C 8E040028 */  lw         $a0, 0x28($s0)
/* 92D50 800DC990 0C01A026 */  jal        func_80068098
/* 92D54 800DC994 00000000 */   nop
/* 92D58 800DC998 8E040024 */  lw         $a0, 0x24($s0)
/* 92D5C 800DC99C 8E05002C */  lw         $a1, 0x2C($s0)
/* 92D60 800DC9A0 92070018 */  lbu        $a3, 0x18($s0)
/* 92D64 800DC9A4 96060030 */  lhu        $a2, 0x30($s0)
/* 92D68 800DC9A8 0C01A018 */  jal        func_80068060
/* 92D6C 800DC9AC 30E70001 */   andi      $a3, $a3, 0x1
/* 92D70 800DC9B0 8E040024 */  lw         $a0, 0x24($s0)
/* 92D74 800DC9B4 0C01A02B */  jal        func_800680AC
/* 92D78 800DC9B8 00000000 */   nop
/* 92D7C 800DC9BC 02002021 */  addu       $a0, $s0, $zero
/* 92D80 800DC9C0 8E050014 */  lw         $a1, 0x14($s0)
/* 92D84 800DC9C4 0C03596C */  jal        func_race_800D65B0
/* 92D88 800DC9C8 24060001 */   addiu     $a2, $zero, 0x1
/* 92D8C 800DC9CC 24020003 */  addiu      $v0, $zero, 0x3
/* 92D90 800DC9D0 AE020014 */  sw         $v0, 0x14($s0)
/* 92D94 800DC9D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92D98 800DC9D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 92D9C 800DC9DC 03E00008 */  jr         $ra
/* 92DA0 800DC9E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DC9E4
/* 92DA4 800DC9E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92DA8 800DC9E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 92DAC 800DC9EC 00808021 */  addu       $s0, $a0, $zero
/* 92DB0 800DC9F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 92DB4 800DC9F4 8E040024 */  lw         $a0, 0x24($s0)
/* 92DB8 800DC9F8 0C01A026 */  jal        func_80068098
/* 92DBC 800DC9FC 00000000 */   nop
/* 92DC0 800DCA00 8E040028 */  lw         $a0, 0x28($s0)
/* 92DC4 800DCA04 8E05002C */  lw         $a1, 0x2C($s0)
/* 92DC8 800DCA08 96060030 */  lhu        $a2, 0x30($s0)
/* 92DCC 800DCA0C 0C01A018 */  jal        func_80068060
/* 92DD0 800DCA10 24070001 */   addiu     $a3, $zero, 0x1
/* 92DD4 800DCA14 8E040028 */  lw         $a0, 0x28($s0)
/* 92DD8 800DCA18 0C01A02B */  jal        func_800680AC
/* 92DDC 800DCA1C 00000000 */   nop
/* 92DE0 800DCA20 02002021 */  addu       $a0, $s0, $zero
/* 92DE4 800DCA24 8E050014 */  lw         $a1, 0x14($s0)
/* 92DE8 800DCA28 0C03596C */  jal        func_race_800D65B0
/* 92DEC 800DCA2C 24060003 */   addiu     $a2, $zero, 0x3
/* 92DF0 800DCA30 24020001 */  addiu      $v0, $zero, 0x1
/* 92DF4 800DCA34 AE020014 */  sw         $v0, 0x14($s0)
/* 92DF8 800DCA38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92DFC 800DCA3C 8FB00010 */  lw         $s0, 0x10($sp)
/* 92E00 800DCA40 03E00008 */  jr         $ra
/* 92E04 800DCA44 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DCA48
/* 92E08 800DCA48 8C820028 */  lw         $v0, 0x28($a0)
/* 92E0C 800DCA4C 03E00008 */  jr         $ra
/* 92E10 800DCA50 00000000 */   nop

glabel func_race_800DCA54
/* 92E14 800DCA54 8C820024 */  lw         $v0, 0x24($a0)
/* 92E18 800DCA58 03E00008 */  jr         $ra
/* 92E1C 800DCA5C 00000000 */   nop

glabel func_race_800DCA60
/* 92E20 800DCA60 8C820020 */  lw         $v0, 0x20($a0)
/* 92E24 800DCA64 03E00008 */  jr         $ra
/* 92E28 800DCA68 00000000 */   nop

glabel func_race_800DCA6C
/* 92E2C 800DCA6C 03E00008 */  jr         $ra
/* 92E30 800DCA70 24020002 */   addiu     $v0, $zero, 0x2
